SELECT
    YEAR(Order_Date) AS Order_Year,
    MONTH(Order_Date) AS Order_Month,

    COUNT(*) AS Total_Orders,

    SUM(Delivered_Sales_GHS)
        AS Delivered_Sales_GHS,

    SUM(Estimated_Contribution_GHS)
        AS Estimated_Contribution_GHS

FROM dbo.Beyond_Revenue_Cleaned_Orders

GROUP BY
    YEAR(Order_Date),
    MONTH(Order_Date)

ORDER BY
    Order_Year,
    Order_Month;