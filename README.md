#  Bill Splitter App

## Description
The Bill Splitter App is a simple iOS application designed to make splitting bills among friends easier. Users can input the total bill amount, specify the number of people splitting the bill, and optionally add a tip. The app then calculates each person's share of the bill, including the tip, and displays the result.

## Features
- Add the total bill amount
- Specify the number of people splitting the bill
- Choose a tip percentage (0%, 10%, or 20%)
- Calculate the split bill amount
- View the calculated results in a new screen

## Architecture
The project follows the Model-View-Controller (MVC) architecture pattern for better organization and separation of concerns. Here's a brief overview of how the architecture is implemented:

- **Model**: Represents the data and business logic of the application. This includes classes or structs responsible for calculations, such as splitting the bill and calculating the tip.

- **View**: Represents the user interface components of the application. This includes the UI elements such as buttons, labels, text fields, etc., that users interact with to input data and view results.

- **Controller**: Acts as an intermediary between the Model and the View. It receives input from the user via the View, interacts with the Model to perform calculations, and updates the View to display the results.


