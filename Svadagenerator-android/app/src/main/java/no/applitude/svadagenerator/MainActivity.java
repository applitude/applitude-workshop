package no.applitude.svadagenerator;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import java.util.Random;

public class MainActivity extends AppCompatActivity {
    final String[][] svadaArray = {{"Gitt", "Under hensyntagen til", "I lys av", "Vedrørende", "Grunnet", "I betraktning av", "Forutsatt"},
            {"en integrert", "en optimal", "en sømløs", "en implisitt", "en proaktiv", "en betydelig", "en økt"},
            {"målsetting", "effekt", "struktur", "agenda", "tidshorisont", "overveielse", "mobilitet"},
            {"synliggjøres", "tas det høyde for", "iverksettes", "identifiseres", "initieres", "lokaliseres", "kommuniseres"},
            {"potensialet", "risikofaktorene", "fokus", "synergieffekten", "incitamentet", "forankringen", "insentivene"},
            {"innenfor rammen av", "som en følge av", "for så vidt gjelder", "med henblikk på", "i forhold til", "hva angår", "parallelt med"},
            {"en samlet vurdering", "forholdene", "konseptet", "ressurssituasjonen", "tilgjengeliggjøringen", "føringene", "evalueringen"}
    };
    private TextView svadaText;
    Random random;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        svadaText = (TextView)findViewById(R.id.svadaText);
        random = new Random();

    }

    public void onClick(View v){
        String txt = "";
        for(int i=0; i<svadaArray.length; i++) {
            if(i > 0){
                txt += " ";
            }
            int length = svadaArray[i].length;
            txt += svadaArray[i][random.nextInt(length)];
        }
        txt += ".";
        svadaText.setText(txt);
    }
}
