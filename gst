def calculate_gst(amount, gst_rate, mode="exclusive"):
    if mode == "exclusive":
        gst = (amount * gst_rate) / 100
        cgst = sgst = gst / 2
        total = amount + gst
    elif mode == "inclusive":
        gst = amount - (amount * 100) / (100 + gst_rate)
        cgst = sgst = gst / 2
        amount = amount - gst
        total = amount + gst
    return cgst, sgst, gst, total

# Example usage
amount = 1000
gst_rate = 18  # Example GST rate
mode = "exclusive"
cgst, sgst, gst, total = calculate_gst(amount, gst_rate, mode)
print(f"CGST: {cgst}, SGST: {sgst}, GST: {gst}, Total: {total}")