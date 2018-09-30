base62 = (number) =>
  alphabetArray = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".split('');
  if number is 0
    return alphabetArray[0]

  hash = []
  i = 0
  while number > 0
      hash.unshift alphabetArray[number % 62]
      number = Math.floor number / 62

  hash.join ""

export default base62
