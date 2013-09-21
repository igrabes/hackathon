class PlayerMlb < ActiveRecord::Base
   attr_accessible :sports_data_id,  :first_name,  :preferred_first,  :last_name,  :preferred_last,  :bat_hand,  :throw_hand,  :weight,  :height,
     :birthdate,  :birthstate,  :birthcountry,  :highschool,  :college, 
     :pro_debut,  :position,  :ab,  :ap,  :avg,  :lob,  :pcount,  :rbi,  :error,  :abhr,  
     :bip,  :babip,  :bbk,  :bbpa,  :gofo,  :iso,  :obp,  :ops,  :seca,  :slg,  :tb,  :xbh,
     :h,  :s,  :d,  :t,  :hr,  :bb,  :ibb,  :hbp,  :unearned,  :earned,  :total,  :klook,  :kswing,  
     :ktotal,  :ball,  :iball,  :dirtball,  :foul,  :po,  :fo,  :fidp,  :go,  :gidp,  :lo,  
     :lidp,  :sacfly,  :sachit,  :caught,  :stolen,  :start,  :play,  :finish,  :complete,
      :ip_1, :ip_2, :bf, :era, :k9, :whip, :win, :loss, :saves, :qstart, :shutout
end
