using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        double ttotal = 0;
        double nno1 = Convert.ToDouble(no1.SelectedValue);
        double nno2 = Convert.ToDouble(no2.SelectedValue);
        double nno3 = Convert.ToDouble(no3.SelectedValue);
        double ccost1 = Convert.ToDouble(cost1.Text);
        double ccost2 = Convert.ToDouble(cost2.Text);
        double ccost3 = Convert.ToDouble(cost3.Text);


        if (C1.Checked)
            ttotal += nno1 * ccost1 ;

        if (C2.Checked)
            ttotal += nno2 * ccost2;

        if (C3.Checked)
            ttotal += nno3 * ccost3;

               

        if (R1.SelectedValue == "1")
            L1.Text = R1.SelectedItem.Text;

        if (R1.SelectedValue == "3")
            L1.Text = R1.SelectedItem.Text;

        if (R1.SelectedValue == "5")
            L1.Text = R1.SelectedItem.Text;

        if (R1.SelectedValue == "7")
            L1.Text = R1.SelectedItem.Text;

        if (R1.SelectedValue == "10")
            L1.Text = R1.SelectedItem.Text;

         
        tt1.Text = "";

        if (LB.Items[0].Selected)
            tt1.Text = tt1.Text + "\r\n" +   LB.Items[0].Text ;
        
        if (LB.Items[1].Selected)
               tt1.Text = tt1.Text + "\r\n"  +  LB.Items[1].Text;

        if (LB.Items[2].Selected)
            tt1.Text = tt1.Text + "\r\n" + LB.Items[2].Text;

        if (LB.Items[3].Selected)
            tt1.Text = tt1.Text + "\r\n" + LB.Items[3].Text;

        tt2.Text = "";

        if (v1.Items[0].Selected)
        {
            tt2.Text = tt2.Text + "\r\n" + v1.Items[0].Value;
            ttotal += 10;
        }
            

        if (v1.Items[1].Selected)
        {
            tt2.Text = tt2.Text + "\r\n" + v1.Items[1].Value;
            ttotal += 20;
        }

        if (v1.Items[2].Selected)
        {
            tt2.Text = tt2.Text + "\r\n" + v1.Items[2].Value;
            ttotal += 30;
        }
        if (total2.Text != "")
        {
            total2.Text = "";
        }

        if ((asd1.Text == asd2.Text) && asd1.Text!=""&& asd2.Text != "")
        {
           
            total2.Text = Convert.ToString(ttotal*0.8);
           
        }


        total.Text = Convert.ToString(ttotal);
        



    }

    protected void C3_CheckedChanged(object sender, EventArgs e)
    {
        double ttotal = 0;
        double nno3 = Convert.ToDouble(no3.SelectedValue);
        double ccost3 = Convert.ToDouble(cost3.Text);
        ttotal += nno3 * ccost3;
        Label4.Text = Convert.ToString(ttotal);
    }

    protected void no2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void C1_CheckedChanged(object sender, EventArgs e)
    {
        double ttotal = 0;
        double nno1 = Convert.ToDouble(no1.SelectedValue);
        double ccost1 = Convert.ToDouble(cost1.Text);
        ttotal += nno1 * ccost1;
        Label2.Text = Convert.ToString(ttotal);
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        TextBox2.Text = TextBox1.Text;
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void no1_SelectedIndexChanged(object sender, EventArgs e)
    {
        double ttotal = 0;
        double nno1 = Convert.ToDouble(no1.SelectedValue);
        double ccost1 = Convert.ToDouble(cost1.Text);
        ttotal += nno1 * ccost1;
        Label2.Text = Convert.ToString(ttotal);
    }

    protected void cost1_TextChanged(object sender, EventArgs e)
    {
        double ttotal = 0;
        double nno1 = Convert.ToDouble(no1.SelectedValue);
        double ccost1 = Convert.ToDouble(cost1.Text);
        ttotal += nno1 * ccost1;
        Label2.Text = Convert.ToString(ttotal);
    }

    protected void C2_CheckedChanged(object sender, EventArgs e)
    {
        double ttotal = 0;
        double nno2 = Convert.ToDouble(no2.SelectedValue);
        double ccost2 = Convert.ToDouble(cost2.Text);
        ttotal += nno2 * ccost2;
        Label3.Text = Convert.ToString(ttotal);
    }

    protected void no2_SelectedIndexChanged(object sender, EventArgs e)
    {
        double ttotal = 0;
        double nno2 = Convert.ToDouble(no2.SelectedValue);
        double ccost2 = Convert.ToDouble(cost2.Text);
        ttotal += nno2 * ccost2;
        Label3.Text = Convert.ToString(ttotal);
    }

    protected void cost2_TextChanged(object sender, EventArgs e)
    {
        double ttotal = 0;
        double nno2 = Convert.ToDouble(no2.SelectedValue);
        double ccost2 = Convert.ToDouble(cost2.Text);
        ttotal += nno2 * ccost2;
        Label3.Text = Convert.ToString(ttotal);
    }

    protected void no3_SelectedIndexChanged(object sender, EventArgs e)
    {
        double ttotal = 0;
        double nno3 = Convert.ToDouble(no3.SelectedValue);
        double ccost3 = Convert.ToDouble(cost3.Text);
        ttotal += nno3 * ccost3;
        Label4.Text = Convert.ToString(ttotal);
    }

    protected void cost3_TextChanged(object sender, EventArgs e)
    {
        double ttotal = 0;
        double nno3 = Convert.ToDouble(no3.SelectedValue);
        double ccost3 = Convert.ToDouble(cost3.Text);
        ttotal += nno3 * ccost3;
        Label4.Text = Convert.ToString(ttotal);
    }

    protected void total2_TextChanged(object sender, EventArgs e)
    {

    }
}