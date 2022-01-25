Html.div([
    h1("Credit Application Form")
    page(
        model,
        partial=true, [   
        
        StippleUI.form(class="q-pa-md", [
            row([ 
                cell(class="st-module", [
                    numberfield("Reference No", :reference_number,
                        "outlined")
                ])

                cell([])

                cell([])

                cell([])
            ])               

            row([
                cell( [
                    numberfield("Customer No", :cust_number,
                        "outlined")
                ])

                cell([])

                cell([
                    textfield("Customer Name", :cust_name,
                        "outlined")
                ])

                cell([])
            ])

            row([
                cell(class="st-module", [
                    numberfield("Borrower No", :borrower_number,
                        "outlined")
                ])

                cell([])

                cell(class="st-module", [
                    textfield("Borrower Name", :borrower_name,
                        "outlined")
                ])

                cell([])
            ])

            row([
                cell([
                    numberfield("Check No", :check_number,
                        "outlined")
                ])

                cell([])


                cell([
                    numberfield("Check Amount", :check_amount,
                        "outlined")
                ])

                cell([])

            ])

            toggle("I accept the license and terms", :accept, wrap=StippleUI.NO_WRAPPER)

            Stipple.Html.div([
                btn("Submit", type="submit", color="primary", wrap=StippleUI.NO_WRAPPER)
                btn("Reset", type="reset", color="primary", :flat, class="q-ml-sm", wrap=StippleUI.NO_WRAPPER)
            ])    

        
        ])

    ])  

])

