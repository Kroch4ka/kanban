import defaultTheme from 'tailwindcss/defaultTheme'
import tailwindCssPrimeUi from 'tailwindcss-primeui'

/** @type {import('tailwindcss').Config} */
export default {
  content: [],
  purge: ['./index.html', './src/**/*.{vue,js,ts,jsx,tsx}'],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Poppins', ...defaultTheme.fontFamily.sans]
      },
      colors: {
        gray: {
          DEFAULT: '#828FA3',
          light: '#F4F7FD',
          lighter: '#E4EBFA'
        },
        primary: '#635FC7'
      }
    }
  },
  plugins: [tailwindCssPrimeUi],
}
