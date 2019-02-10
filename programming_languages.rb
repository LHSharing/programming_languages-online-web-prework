require 'pry'
=begin
def reformat_languages(languages)
hash = {}
#binding.pry
  languages.each do |k,v|
    v.map do |lang,type|
      type.each do |attribute,handling|
        binding.pry
       hash[lang] = {}
    #  hash[lang][:]
      #{type,style}[]

    end
   end
  end
  hash
end
=end
#reformat_languages reformats ruby properly
#     Failure/Error: ruby.each { |k,v| expect(result[:ruby][k]).to eq(v) }

=begin
It should match the following format:
{
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}


=end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, v|
    v.each do |language, data|
      data.each do |type, info|
#binding.pry
        if new_hash[language] == nil
          new_hash[language]= { type=> info, :style => [style]}
#binding.pry

        else
          new_hash[language][:style] << style
binding.pry
        end
      end
    end
  end
    return new_hash
end

#put pry under and see how new_hash evolves
#if it exists we update it , if not we create it --- line #66-#70 if else
