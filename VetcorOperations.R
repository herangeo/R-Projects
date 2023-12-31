#1.Create a vector named sales_data
sales_data <- c(400,650,556,778,100,65);sales_data

#2.Calculate the total annual sales
totalannualsales = sum(sales_data)
cat("Total Annual Sales : $",totalannualsales)

#3.Compute the monthly average sales
avg= totalannualsales/12
cat("Montly Average Sales : $",avg)

#4.Determine the month with the highest sales and the lowest sales
month <- c("January", "February", "March", "April", "May", "June", "July", "August", "Septemb
er", "October"," November", "December")
salesmaxindex= order(sales_data,decreasing = TRUE)[1]
cat("Month with Highest Sales :",month[salesmaxindex]," with Sales :$",sales_data[salesmaxindex])

salesminindex=order(sales_data,decreasing = FALSE)[1]
cat("Month with Lowest Sales :",month[salesminindex]," with Sales :$",sales_data[salesminindex])

#5.Increase the sales figure for the third month (March) by 10%.
sales_data[3]=sales_data[3]+(sales_data[3]*.1)
cat("Increased sales figure for the third month by 10% :$",sales_data[3])

#6.Sort the sales_data vector in ascending order and create a new vector named sorted_sales.
sorted_sales = sort(sales_data)
cat("Sorted Sales data : ",sorted_sales)

#7.Sort the sales_data vector in descending order and create a new vector named reverse_sorted_sales.
reverse_sorted_sales=sort(sales_data,decreasing = TRUE)
cat("Reverse Sorted Sales Data : ",reverse_sorted_sales)

#8.Calculate the median sales value from the sorted_sales vector.
median_of_sales_data = median(sorted_sales)
cat("Median of Sales Data :",median_of_sales_data)

