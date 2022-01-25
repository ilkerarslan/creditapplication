Html.div([
    h1("Kredi Değerlendirme Formu")
    page(
        model,
        partial=true, [   
        
        StippleUI.form([
            row([ 
                cell(class="filled", [
                    numberfield("Başvuru Numarası", :reference_number)
                ])

                cell([])

                cell([])

                cell([])
            ])   

            

            row([
                cell(class="st-module", [
                    numberfield("Müşteri No", :cust_number)
                ])

                cell([])

                cell(class="st-module", [
                    textfield("Müşteri Unvanı", :cust_name)
                ])

                cell([])
            ])

            row([
                cell(class="st-module", [
                    numberfield("Borçlu No", :borrower_number)
                ])

                cell([])

                cell(class="st-module", [
                    textfield("Borçlu Unvanı", :borrower_name)
                ])

                cell([])
            ])

            row([
                cell(class="st-module", [
                    numberfield("Çek No", :check_number)
                ])

                cell([])


                cell(class="st-module", [
                    numberfield("Çek Tutarı", :check_amount)
                ])

                cell([])

            ])

            toggle("Kullanım şartlarını kabul ediyorum", :accept, wrap=StippleUI.NO_WRAPPER)

            Stipple.Html.div([
                btn("Gönder", type="submit", color="primary", wrap=StippleUI.NO_WRAPPER)
                btn("Temizle", type="reset", color="primary", :flat, class="q-ml-sm", wrap=StippleUI.NO_WRAPPER)
            ])    

        
        ])

    ])  

])

