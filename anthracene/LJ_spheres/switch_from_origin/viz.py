import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import argparse

def process_csv(file_path):
    # Read the CSV data
    df = pd.read_csv(file_path)
    
    # Extract distance from filename
    df['Distance (nm)'] = df['Filename'].str.extract(r'_(\d+)\.xvg$').astype(float) / 1000
    
    # Melt the DataFrame to have lambda as a single column
    df_melted = df.melt(id_vars=['Filename', 'Distance (nm)'], 
                        value_vars=['ΔH λ to 0.0000', 'ΔH λ to 0.1000', 'ΔH λ to 0.2000', 'ΔH λ to 0.3000', 'ΔH λ to 0.4000', 'ΔH λ to 0.5000', 
                                    'ΔH λ to 0.6000', 'ΔH λ to 0.7000', 'ΔH λ to 0.8000', 'ΔH λ to 0.9000', 'ΔH λ to 1.0000'],
                        var_name='Lambda', value_name='Energy')
    
    # Convert lambda to numerical values
    df_melted['Lambda'] = df_melted['Lambda'].str.extract(r'(\d\.\d+)').astype(float)
    
    return df_melted

def plot_data(df_melted, save_path=None):
    # Create a plot for each lambda value
    lambda_values = df_melted['Lambda'].unique()
    
    for lambda_val in lambda_values:
        plt.figure(figsize=(12, 8))
        df_subset = df_melted[df_melted['Lambda'] == lambda_val]
        plt.plot(df_subset['Distance (nm)'], df_subset['Energy'], marker='o', linestyle='-')
        plt.xlabel('Distance (nm)')
        plt.ylabel('Free Energy (kJ/mol)')
        plt.title(f'Free Energy vs. Distance for Lambda = {lambda_val:.3f}')
        plt.grid(True)
        if save_path:
            plt.savefig(f'{save_path}_lambda_{lambda_val:.3f}.png')
        else:
            plt.show()

def main():
    parser = argparse.ArgumentParser(description='Process CSV data and plot Free Energy vs. Distance for each Lambda.')
    parser.add_argument('csv_file', type=str, help='Path to the CSV file containing the energy data')
    parser.add_argument('--save_path', type=str, help='Path to save the plot images', default=None)
    
    args = parser.parse_args()
    
    # Process the CSV file
    df_melted = process_csv(args.csv_file)
    
    # Plot the data
    plot_data(df_melted, save_path=args.save_path)

if __name__ == '__main__':
    main()

