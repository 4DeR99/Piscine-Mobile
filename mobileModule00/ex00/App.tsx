/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import {
  SafeAreaView,
  StyleSheet,
  Button,
  Text,
  useColorScheme,
  View,
} from 'react-native';

import {Colors} from 'react-native/Libraries/NewAppScreen';

function App(): React.JSX.Element {
  const isDarkMode = useColorScheme() === 'dark';

  const backgroundStyle = {
    backgroundColor: isDarkMode ? Colors.darker : Colors.lighter,
  };

  const onButtonClickHandle = () => {
    console.log('Button clicked');
  };

  return (
    <SafeAreaView style={backgroundStyle}>
      <View style={styles.containerStyle}>
        <View style={styles.textContainerStyle}>
          <Text style={styles.textStyle}>A simple text</Text>
        </View>
        <View style={styles.buttonContainerStyle}>
          <Button
            color={'#626200'}
            title={'Click me'}
            onPress={onButtonClickHandle}
          />
        </View>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  containerStyle: {
    height: '100%',
    alignItems: 'center',
    justifyContent: 'center',
  },
  textContainerStyle: {
    backgroundColor: '#626200',
    borderRadius: 10,
    padding: 10,
  },
  textStyle: {
    color: 'white',
    fontSize: 35,
  },
  buttonContainerStyle: {
    padding: 5,
    marginTop: 10,
    backgroundColor: '#f6f3f2',
    borderRadius: 30,
    shadowOffset: {width: -2, height: 4},
    shadowOpacity: 0.2,
    shadowRadius: 3,
  },
});

export default App;
