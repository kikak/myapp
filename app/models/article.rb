class Article < ActiveRecord::Base
	# bude zavolan pokazde tesne pred ulozenim objektu do databaze. Bude volana privatni metoda set_perex
      before_save :set_perex

      validates_presence_of :heading, :author, :body 

      private

      # metoda nastavi perex pokud je prazdny tesne pred ulozenim. Takze do db jiz perex bude ulozen.
      def set_perex
        # self.perex = body[0..50] if perex.blank?
        # pokud perex je prazdny, nastavme jako perex prvnich 50 znaku z body.
        # toto reseni ma samozrejme mnoho chyb, muze useknout slovo apod.
        self.perex = body.split[0..19].join(' ') if perex.blank?
      end
end
