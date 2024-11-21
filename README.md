# Bulk PDF to HTML Conversion Script

## Description

The **Bulk PDF to HTML Conversion Script** is a shell script designed to automate the process of converting multiple PDF files into HTML format in bulk. It uses the `pyamihtmlx` tool to perform the conversion. This script scans the specified input directory for PDF files, and for each file, it creates a subdirectory within the output directory and saves the converted HTML content there. 

The script is particularly useful for handling large collections of PDFs and converting them all at once, without the need to manually convert each file.

### Key Features:
- Automatically processes all `.pdf` files in a specified input directory.
- Creates individual subdirectories for each PDF file inside the output directory.
- Converts each PDF file to HTML using the `pyamihtmlx` tool.
- Saves the output HTML files with the same name as the input PDF, inside their respective directories.
- Easy to customize for different input and output directories.

### Benefits:
- **Time-saving**: Batch process hundreds or thousands of PDF files at once.
- **Automation**: Once set up, it runs without further intervention, making it ideal for large-scale conversions.
- **Simplicity**: The script is simple and easy to use, requiring minimal setup and knowledge of shell scripting.

## Prerequisites

Before running the script, ensure the following:

- **Bash**: The script is designed to run in a Unix-like environment (Linux, macOS, WSL).
- **pyamihtmlx**: The `pyamihtmlx` tool must be installed and available in your system's `PATH` for PDF to HTML conversion.

To install `pyamihtmlx`, follow the instructions in its [official documentation](https://pypi.org/project/pyamihtmlx/).

## Files and Directories

- **input_dir**: The directory containing the PDF files you wish to convert. By default, this is set to `./test/`.
- **output_dir**: The directory where the converted HTML files will be saved. By default, this is set to `./html_output/`.

## Installation

1. **Install `pyamihtmlx`**: Ensure that the `pyamihtmlx` tool is installed on your system and accessible from the command line. Follow the installation instructions in its official documentation.
   
2. **Prepare Your Files**:
   - Place the PDF files you want to convert into the `input_dir` (default directory is `./test/`).
   
3. **Clone or Download the Repository**:
   - Clone or download this repository to your local machine containing the script.

4. **Navigate to the Script Directory**:
   - Open a terminal and change to the directory containing the script:

   ```bash
   cd /path/to/your/script/directory
   ```

## Usage

To run the script:

1. **Ensure Your PDF Files Are Ready**:
   - Place all the PDF files you want to convert into the `input_dir` (default is `./test/`).
   
2. **Run the Script**:
   - Execute the script by running the following command in your terminal:

   ```bash
   bash convert_pdfs_to_html.sh
   ```

### Script Behavior

- The script will loop through all `.pdf` files in the `input_dir` (default is `./test/`).
- For each PDF file, the script will:
  - Create a folder inside the `output_dir` named after the PDF file.
  - Convert the PDF to HTML format using the `pyamihtmlx` tool.
  - Save the HTML file inside the corresponding subdirectory.

## Example

### Directory Structure Before Running the Script:

```bash
/test
    document1.pdf
    document2.pdf
    document3.pdf

/convert_pdfs_to_html.sh
```

### Running the Script:

```bash
bash convert_pdfs_to_html.sh
```

### Directory Structure After Running the Script:

```bash
/html_output
    /document1.pdf/
        index.html
    /document2.pdf/
        index.html
    /document3.pdf/
        index.html
```

Each PDF file will be converted into an HTML file inside its own folder.

## Customizing the Script

You can customize the script by modifying the following variables in the `convert_pdfs_to_html.sh` file:

- **input_dir**: The directory where your PDF files are located. You can change it like so:

  ```bash
  input_dir="./your_custom_input_directory/"
  ```

- **output_dir**: The directory where the converted HTML files will be stored. Change it like this:

  ```bash
  output_dir="./your_custom_output_directory/"
  ```

## Troubleshooting

- **Error: `pyamihtmlx` not found**  
  This indicates that the `pyamihtmlx` tool is not installed or is not available in your system's `PATH`. Please install it or verify your installation.

- **Error: Permission Denied**  
  If you encounter a "permission denied" error, make sure the script has execution permissions. Run the following command to give it execute permission:

  ```bash
  chmod +x convert_pdfs_to_html.sh
  ```

- **Missing Input Directory**  
  Ensure the `input_dir` exists and contains the PDF files before running the script. The script will not work if the input directory is empty.

- **Error during Conversion**  
  If the conversion fails for any PDF, make sure the `pyamihtmlx` tool is working correctly by testing it with a single PDF file. Also, ensure your system has the necessary dependencies for `pyamihtmlx`.

## License

This script is open-source and available under the MIT License. You are free to modify and distribute it according to the terms of the license.
```

---

This `README.md` is now properly formatted in Markdown with all the relevant sections. You can copy and paste this directly into your `README.md` file. Let me know if you need any further adjustments!
