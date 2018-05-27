import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import edu.cmu.sphinx.api.Configuration;
import edu.cmu.sphinx.api.LiveSpeechRecognizer;
import edu.cmu.sphinx.api.SpeechResult;
import edu.cmu.sphinx.api.StreamSpeechRecognizer;


public class Main {

	public static void main(String[] args) throws Exception {

		Configuration configuration = new Configuration();

		configuration.setAcousticModelPath("resource:/edu/cmu/sphinx/models/en-us/en-us");
		configuration.setDictionaryPath("resource:/edu/cmu/sphinx/models/en-us/cmudict-en-us.dict");
		configuration.setLanguageModelPath("resource:/edu/cmu/sphinx/models/en-us/en-us.lm.bin");


		
		StreamSpeech(configuration);
//		LiveSpeech(configuration);
		
	}
	
	private static void StreamSpeech(Configuration configuration) throws IOException {
		StreamSpeechRecognizer recognizer = new StreamSpeechRecognizer(configuration);
		InputStream stream = new FileInputStream(new File("Resource//bug02.wav"));
		
		recognizer.startRecognition(stream);
		SpeechResult result;
		while ((result = recognizer.getResult()) != null) {
			String hypothesis = result.getHypothesis();
			System.out.format("Hypothesis: %s\n", hypothesis);
			String phonemes = result.getResult().getBestPronunciationResult();
			System.out.format("Phonemes: %s\n", phonemes);
		}
	
		recognizer.stopRecognition();
		
	}

	private static void LiveSpeech(Configuration configuration) throws IOException
	{
		LiveSpeechRecognizer recognizer = new LiveSpeechRecognizer(configuration);
		// Start recognition process pruning previously cached data.
		recognizer.startRecognition(true);
		
		System.out.println("Live Speech starts now");
		
		while(true) {
			SpeechResult result = recognizer.getResult();
			String utterance = result.getHypothesis();
			
			if(utterance.startsWith("exit")) {
				System.out.println("Live Speech ends now");
				break;
			}
			else {
				System.out.println("Hypothesis: " + utterance);
			}
		}
		
		
		// Pause recognition process. It can be resumed then with startRecognition(false).
		recognizer.stopRecognition();		
	}
}
