; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62406 () Bool)

(assert start!62406)

(declare-fun b!699156 () Bool)

(declare-fun res!463164 () Bool)

(declare-fun e!397064 () Bool)

(assert (=> b!699156 (=> (not res!463164) (not e!397064))))

(declare-datatypes ((List!13267 0))(
  ( (Nil!13264) (Cons!13263 (h!14308 (_ BitVec 64)) (t!19557 List!13267)) )
))
(declare-fun acc!652 () List!13267)

(declare-fun contains!3810 (List!13267 (_ BitVec 64)) Bool)

(assert (=> b!699156 (= res!463164 (not (contains!3810 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699157 () Bool)

(declare-fun res!463145 () Bool)

(assert (=> b!699157 (=> (not res!463145) (not e!397064))))

(declare-fun newAcc!49 () List!13267)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!219 (List!13267 (_ BitVec 64)) List!13267)

(assert (=> b!699157 (= res!463145 (= (-!219 newAcc!49 k!2824) acc!652))))

(declare-fun b!699158 () Bool)

(declare-fun res!463166 () Bool)

(declare-fun e!397065 () Bool)

(assert (=> b!699158 (=> (not res!463166) (not e!397065))))

(declare-fun lt!317315 () List!13267)

(assert (=> b!699158 (= res!463166 (contains!3810 lt!317315 k!2824))))

(declare-fun b!699159 () Bool)

(declare-fun res!463163 () Bool)

(assert (=> b!699159 (=> (not res!463163) (not e!397065))))

(assert (=> b!699159 (= res!463163 (not (contains!3810 lt!317315 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699160 () Bool)

(declare-fun res!463161 () Bool)

(assert (=> b!699160 (=> (not res!463161) (not e!397065))))

(declare-fun noDuplicate!1057 (List!13267) Bool)

(assert (=> b!699160 (= res!463161 (noDuplicate!1057 lt!317315))))

(declare-fun b!699161 () Bool)

(declare-fun res!463149 () Bool)

(assert (=> b!699161 (=> (not res!463149) (not e!397065))))

(declare-fun lt!317316 () List!13267)

(declare-datatypes ((array!40041 0))(
  ( (array!40042 (arr!19173 (Array (_ BitVec 32) (_ BitVec 64))) (size!19556 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40041)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40041 (_ BitVec 32) List!13267) Bool)

(assert (=> b!699161 (= res!463149 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317316))))

(declare-fun b!699162 () Bool)

(declare-fun res!463139 () Bool)

(assert (=> b!699162 (=> (not res!463139) (not e!397064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!699162 (= res!463139 (validKeyInArray!0 (select (arr!19173 a!3591) from!2969)))))

(declare-fun b!699163 () Bool)

(declare-fun res!463148 () Bool)

(assert (=> b!699163 (=> (not res!463148) (not e!397064))))

(assert (=> b!699163 (= res!463148 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19556 a!3591)))))

(declare-fun b!699164 () Bool)

(declare-fun res!463156 () Bool)

(assert (=> b!699164 (=> (not res!463156) (not e!397064))))

(declare-fun arrayContainsKey!0 (array!40041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!699164 (= res!463156 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!699165 () Bool)

(declare-fun res!463141 () Bool)

(assert (=> b!699165 (=> (not res!463141) (not e!397064))))

(assert (=> b!699165 (= res!463141 (not (contains!3810 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699166 () Bool)

(declare-fun res!463152 () Bool)

(assert (=> b!699166 (=> (not res!463152) (not e!397064))))

(assert (=> b!699166 (= res!463152 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!699167 () Bool)

(declare-fun res!463157 () Bool)

(assert (=> b!699167 (=> (not res!463157) (not e!397064))))

(declare-fun subseq!254 (List!13267 List!13267) Bool)

(assert (=> b!699167 (= res!463157 (subseq!254 acc!652 newAcc!49))))

(declare-fun b!699168 () Bool)

(declare-fun res!463147 () Bool)

(assert (=> b!699168 (=> (not res!463147) (not e!397065))))

(assert (=> b!699168 (= res!463147 (subseq!254 lt!317316 lt!317315))))

(declare-fun b!699169 () Bool)

(assert (=> b!699169 (= e!397064 e!397065)))

(declare-fun res!463143 () Bool)

(assert (=> b!699169 (=> (not res!463143) (not e!397065))))

(assert (=> b!699169 (= res!463143 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!451 (List!13267 (_ BitVec 64)) List!13267)

(assert (=> b!699169 (= lt!317315 ($colon$colon!451 newAcc!49 (select (arr!19173 a!3591) from!2969)))))

(assert (=> b!699169 (= lt!317316 ($colon$colon!451 acc!652 (select (arr!19173 a!3591) from!2969)))))

(declare-fun b!699170 () Bool)

(declare-fun res!463142 () Bool)

(assert (=> b!699170 (=> (not res!463142) (not e!397064))))

(assert (=> b!699170 (= res!463142 (contains!3810 newAcc!49 k!2824))))

(declare-fun b!699171 () Bool)

(declare-fun res!463151 () Bool)

(assert (=> b!699171 (=> (not res!463151) (not e!397065))))

(assert (=> b!699171 (= res!463151 (noDuplicate!1057 lt!317316))))

(declare-fun b!699172 () Bool)

(declare-fun res!463158 () Bool)

(assert (=> b!699172 (=> (not res!463158) (not e!397064))))

(assert (=> b!699172 (= res!463158 (noDuplicate!1057 newAcc!49))))

(declare-fun res!463160 () Bool)

(assert (=> start!62406 (=> (not res!463160) (not e!397064))))

(assert (=> start!62406 (= res!463160 (and (bvslt (size!19556 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19556 a!3591))))))

(assert (=> start!62406 e!397064))

(assert (=> start!62406 true))

(declare-fun array_inv!14947 (array!40041) Bool)

(assert (=> start!62406 (array_inv!14947 a!3591)))

(declare-fun b!699155 () Bool)

(declare-fun res!463153 () Bool)

(assert (=> b!699155 (=> (not res!463153) (not e!397065))))

(assert (=> b!699155 (= res!463153 (not (contains!3810 lt!317316 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699173 () Bool)

(assert (=> b!699173 (= e!397065 false)))

(declare-fun lt!317314 () Bool)

(assert (=> b!699173 (= lt!317314 (contains!3810 lt!317315 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!699174 () Bool)

(declare-fun res!463144 () Bool)

(assert (=> b!699174 (=> (not res!463144) (not e!397064))))

(assert (=> b!699174 (= res!463144 (noDuplicate!1057 acc!652))))

(declare-fun b!699175 () Bool)

(declare-fun res!463162 () Bool)

(assert (=> b!699175 (=> (not res!463162) (not e!397065))))

(assert (=> b!699175 (= res!463162 (not (contains!3810 lt!317316 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699176 () Bool)

(declare-fun res!463155 () Bool)

(assert (=> b!699176 (=> (not res!463155) (not e!397065))))

(assert (=> b!699176 (= res!463155 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!699177 () Bool)

(declare-fun res!463159 () Bool)

(assert (=> b!699177 (=> (not res!463159) (not e!397064))))

(assert (=> b!699177 (= res!463159 (not (contains!3810 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699178 () Bool)

(declare-fun res!463140 () Bool)

(assert (=> b!699178 (=> (not res!463140) (not e!397064))))

(assert (=> b!699178 (= res!463140 (validKeyInArray!0 k!2824))))

(declare-fun b!699179 () Bool)

(declare-fun res!463150 () Bool)

(assert (=> b!699179 (=> (not res!463150) (not e!397064))))

(assert (=> b!699179 (= res!463150 (not (contains!3810 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699180 () Bool)

(declare-fun res!463165 () Bool)

(assert (=> b!699180 (=> (not res!463165) (not e!397064))))

(assert (=> b!699180 (= res!463165 (not (contains!3810 acc!652 k!2824)))))

(declare-fun b!699181 () Bool)

(declare-fun res!463154 () Bool)

(assert (=> b!699181 (=> (not res!463154) (not e!397065))))

(assert (=> b!699181 (= res!463154 (not (contains!3810 lt!317316 k!2824)))))

(declare-fun b!699182 () Bool)

(declare-fun res!463146 () Bool)

(assert (=> b!699182 (=> (not res!463146) (not e!397065))))

(assert (=> b!699182 (= res!463146 (= (-!219 lt!317315 k!2824) lt!317316))))

(assert (= (and start!62406 res!463160) b!699174))

(assert (= (and b!699174 res!463144) b!699172))

(assert (= (and b!699172 res!463158) b!699165))

(assert (= (and b!699165 res!463141) b!699156))

(assert (= (and b!699156 res!463164) b!699164))

(assert (= (and b!699164 res!463156) b!699180))

(assert (= (and b!699180 res!463165) b!699178))

(assert (= (and b!699178 res!463140) b!699166))

(assert (= (and b!699166 res!463152) b!699167))

(assert (= (and b!699167 res!463157) b!699170))

(assert (= (and b!699170 res!463142) b!699157))

(assert (= (and b!699157 res!463145) b!699179))

(assert (= (and b!699179 res!463150) b!699177))

(assert (= (and b!699177 res!463159) b!699163))

(assert (= (and b!699163 res!463148) b!699162))

(assert (= (and b!699162 res!463139) b!699169))

(assert (= (and b!699169 res!463143) b!699171))

(assert (= (and b!699171 res!463151) b!699160))

(assert (= (and b!699160 res!463161) b!699175))

(assert (= (and b!699175 res!463162) b!699155))

(assert (= (and b!699155 res!463153) b!699176))

(assert (= (and b!699176 res!463155) b!699181))

(assert (= (and b!699181 res!463154) b!699161))

(assert (= (and b!699161 res!463149) b!699168))

(assert (= (and b!699168 res!463147) b!699158))

(assert (= (and b!699158 res!463166) b!699182))

(assert (= (and b!699182 res!463146) b!699159))

(assert (= (and b!699159 res!463163) b!699173))

(declare-fun m!659211 () Bool)

(assert (=> b!699164 m!659211))

(declare-fun m!659213 () Bool)

(assert (=> start!62406 m!659213))

(declare-fun m!659215 () Bool)

(assert (=> b!699176 m!659215))

(declare-fun m!659217 () Bool)

(assert (=> b!699179 m!659217))

(declare-fun m!659219 () Bool)

(assert (=> b!699157 m!659219))

(declare-fun m!659221 () Bool)

(assert (=> b!699172 m!659221))

(declare-fun m!659223 () Bool)

(assert (=> b!699173 m!659223))

(declare-fun m!659225 () Bool)

(assert (=> b!699156 m!659225))

(declare-fun m!659227 () Bool)

(assert (=> b!699171 m!659227))

(declare-fun m!659229 () Bool)

(assert (=> b!699166 m!659229))

(declare-fun m!659231 () Bool)

(assert (=> b!699165 m!659231))

(declare-fun m!659233 () Bool)

(assert (=> b!699177 m!659233))

(declare-fun m!659235 () Bool)

(assert (=> b!699174 m!659235))

(declare-fun m!659237 () Bool)

(assert (=> b!699160 m!659237))

(declare-fun m!659239 () Bool)

(assert (=> b!699175 m!659239))

(declare-fun m!659241 () Bool)

(assert (=> b!699180 m!659241))

(declare-fun m!659243 () Bool)

(assert (=> b!699159 m!659243))

(declare-fun m!659245 () Bool)

(assert (=> b!699170 m!659245))

(declare-fun m!659247 () Bool)

(assert (=> b!699155 m!659247))

(declare-fun m!659249 () Bool)

(assert (=> b!699167 m!659249))

(declare-fun m!659251 () Bool)

(assert (=> b!699168 m!659251))

(declare-fun m!659253 () Bool)

(assert (=> b!699162 m!659253))

(assert (=> b!699162 m!659253))

(declare-fun m!659255 () Bool)

(assert (=> b!699162 m!659255))

(assert (=> b!699169 m!659253))

(assert (=> b!699169 m!659253))

(declare-fun m!659257 () Bool)

(assert (=> b!699169 m!659257))

(assert (=> b!699169 m!659253))

(declare-fun m!659259 () Bool)

(assert (=> b!699169 m!659259))

(declare-fun m!659261 () Bool)

(assert (=> b!699158 m!659261))

(declare-fun m!659263 () Bool)

(assert (=> b!699182 m!659263))

(declare-fun m!659265 () Bool)

(assert (=> b!699181 m!659265))

(declare-fun m!659267 () Bool)

(assert (=> b!699178 m!659267))

(declare-fun m!659269 () Bool)

(assert (=> b!699161 m!659269))

(push 1)

