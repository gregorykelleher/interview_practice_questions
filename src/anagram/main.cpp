// find any anagrams between two strings

#include <iostream>
#include <unordered_map>
#include <vector>
#include <sstream>
#include <algorithm>

std::vector<std::string> extract_words(std::string const &str)
{
  std::istringstream stream(str);
  std::string word{};
  std::vector<std::string> words;

  while (getline(stream, word, ' '))
  {
    std::sort(word.begin(), word.end());
    words.push_back(word);
  }
  return words;
}

void findAnagram(std::string const &test_word, std::vector<std::string> word_vec)
{
  for (auto const &curr_word : word_vec)
  {
    if ((curr_word.length() == test_word.length()) && (curr_word == test_word))
    {
      std::cout << "found anagram: " << curr_word << std::endl;
    }
  }
}

int main()
{
  auto word_1_vec{ extract_words("cba eba ddb") };
  auto word_2_vec{ extract_words("abc") };

  for (auto const &curr_word : word_1_vec)
  {
    findAnagram(curr_word, word_2_vec);
  }
}