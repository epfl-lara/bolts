; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62430 () Bool)

(assert start!62430)

(declare-fun b!700163 () Bool)

(declare-fun res!464148 () Bool)

(declare-fun e!397174 () Bool)

(assert (=> b!700163 (=> (not res!464148) (not e!397174))))

(declare-datatypes ((List!13279 0))(
  ( (Nil!13276) (Cons!13275 (h!14320 (_ BitVec 64)) (t!19569 List!13279)) )
))
(declare-fun newAcc!49 () List!13279)

(declare-fun contains!3822 (List!13279 (_ BitVec 64)) Bool)

(assert (=> b!700163 (= res!464148 (not (contains!3822 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700164 () Bool)

(declare-fun res!464158 () Bool)

(declare-fun e!397172 () Bool)

(assert (=> b!700164 (=> (not res!464158) (not e!397172))))

(declare-fun lt!317423 () List!13279)

(assert (=> b!700164 (= res!464158 (not (contains!3822 lt!317423 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700165 () Bool)

(assert (=> b!700165 (= e!397172 false)))

(declare-fun lt!317424 () Bool)

(assert (=> b!700165 (= lt!317424 (contains!3822 lt!317423 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!700166 () Bool)

(declare-fun res!464151 () Bool)

(assert (=> b!700166 (=> (not res!464151) (not e!397174))))

(declare-datatypes ((array!40065 0))(
  ( (array!40066 (arr!19185 (Array (_ BitVec 32) (_ BitVec 64))) (size!19568 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40065)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun acc!652 () List!13279)

(declare-fun arrayNoDuplicates!0 (array!40065 (_ BitVec 32) List!13279) Bool)

(assert (=> b!700166 (= res!464151 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!700167 () Bool)

(declare-fun res!464153 () Bool)

(assert (=> b!700167 (=> (not res!464153) (not e!397174))))

(assert (=> b!700167 (= res!464153 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19568 a!3591)))))

(declare-fun b!700168 () Bool)

(declare-fun res!464162 () Bool)

(assert (=> b!700168 (=> (not res!464162) (not e!397172))))

(declare-fun lt!317422 () List!13279)

(assert (=> b!700168 (= res!464162 (not (contains!3822 lt!317422 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700169 () Bool)

(declare-fun res!464170 () Bool)

(assert (=> b!700169 (=> (not res!464170) (not e!397172))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!231 (List!13279 (_ BitVec 64)) List!13279)

(assert (=> b!700169 (= res!464170 (= (-!231 lt!317423 k!2824) lt!317422))))

(declare-fun b!700170 () Bool)

(declare-fun res!464152 () Bool)

(assert (=> b!700170 (=> (not res!464152) (not e!397172))))

(declare-fun noDuplicate!1069 (List!13279) Bool)

(assert (=> b!700170 (= res!464152 (noDuplicate!1069 lt!317422))))

(declare-fun b!700171 () Bool)

(declare-fun res!464160 () Bool)

(assert (=> b!700171 (=> (not res!464160) (not e!397172))))

(declare-fun subseq!266 (List!13279 List!13279) Bool)

(assert (=> b!700171 (= res!464160 (subseq!266 lt!317422 lt!317423))))

(declare-fun b!700172 () Bool)

(declare-fun res!464165 () Bool)

(assert (=> b!700172 (=> (not res!464165) (not e!397172))))

(declare-fun arrayContainsKey!0 (array!40065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!700172 (= res!464165 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!700173 () Bool)

(declare-fun res!464172 () Bool)

(assert (=> b!700173 (=> (not res!464172) (not e!397172))))

(assert (=> b!700173 (= res!464172 (not (contains!3822 lt!317422 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700174 () Bool)

(declare-fun res!464164 () Bool)

(assert (=> b!700174 (=> (not res!464164) (not e!397174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!700174 (= res!464164 (validKeyInArray!0 (select (arr!19185 a!3591) from!2969)))))

(declare-fun b!700175 () Bool)

(declare-fun res!464147 () Bool)

(assert (=> b!700175 (=> (not res!464147) (not e!397174))))

(assert (=> b!700175 (= res!464147 (not (contains!3822 acc!652 k!2824)))))

(declare-fun b!700176 () Bool)

(declare-fun res!464168 () Bool)

(assert (=> b!700176 (=> (not res!464168) (not e!397174))))

(assert (=> b!700176 (= res!464168 (not (contains!3822 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700177 () Bool)

(declare-fun res!464149 () Bool)

(assert (=> b!700177 (=> (not res!464149) (not e!397172))))

(assert (=> b!700177 (= res!464149 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317422))))

(declare-fun b!700178 () Bool)

(declare-fun res!464155 () Bool)

(assert (=> b!700178 (=> (not res!464155) (not e!397174))))

(assert (=> b!700178 (= res!464155 (contains!3822 newAcc!49 k!2824))))

(declare-fun b!700179 () Bool)

(declare-fun res!464154 () Bool)

(assert (=> b!700179 (=> (not res!464154) (not e!397174))))

(assert (=> b!700179 (= res!464154 (not (contains!3822 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700180 () Bool)

(declare-fun res!464163 () Bool)

(assert (=> b!700180 (=> (not res!464163) (not e!397172))))

(assert (=> b!700180 (= res!464163 (not (contains!3822 lt!317422 k!2824)))))

(declare-fun b!700181 () Bool)

(declare-fun res!464166 () Bool)

(assert (=> b!700181 (=> (not res!464166) (not e!397174))))

(assert (=> b!700181 (= res!464166 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!700182 () Bool)

(declare-fun res!464167 () Bool)

(assert (=> b!700182 (=> (not res!464167) (not e!397172))))

(assert (=> b!700182 (= res!464167 (contains!3822 lt!317423 k!2824))))

(declare-fun b!700183 () Bool)

(declare-fun res!464173 () Bool)

(assert (=> b!700183 (=> (not res!464173) (not e!397174))))

(assert (=> b!700183 (= res!464173 (subseq!266 acc!652 newAcc!49))))

(declare-fun b!700184 () Bool)

(declare-fun res!464161 () Bool)

(assert (=> b!700184 (=> (not res!464161) (not e!397174))))

(assert (=> b!700184 (= res!464161 (= (-!231 newAcc!49 k!2824) acc!652))))

(declare-fun res!464159 () Bool)

(assert (=> start!62430 (=> (not res!464159) (not e!397174))))

(assert (=> start!62430 (= res!464159 (and (bvslt (size!19568 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19568 a!3591))))))

(assert (=> start!62430 e!397174))

(assert (=> start!62430 true))

(declare-fun array_inv!14959 (array!40065) Bool)

(assert (=> start!62430 (array_inv!14959 a!3591)))

(declare-fun b!700185 () Bool)

(declare-fun res!464169 () Bool)

(assert (=> b!700185 (=> (not res!464169) (not e!397172))))

(assert (=> b!700185 (= res!464169 (noDuplicate!1069 lt!317423))))

(declare-fun b!700186 () Bool)

(assert (=> b!700186 (= e!397174 e!397172)))

(declare-fun res!464174 () Bool)

(assert (=> b!700186 (=> (not res!464174) (not e!397172))))

(assert (=> b!700186 (= res!464174 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!463 (List!13279 (_ BitVec 64)) List!13279)

(assert (=> b!700186 (= lt!317423 ($colon$colon!463 newAcc!49 (select (arr!19185 a!3591) from!2969)))))

(assert (=> b!700186 (= lt!317422 ($colon$colon!463 acc!652 (select (arr!19185 a!3591) from!2969)))))

(declare-fun b!700187 () Bool)

(declare-fun res!464150 () Bool)

(assert (=> b!700187 (=> (not res!464150) (not e!397174))))

(assert (=> b!700187 (= res!464150 (not (contains!3822 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700188 () Bool)

(declare-fun res!464171 () Bool)

(assert (=> b!700188 (=> (not res!464171) (not e!397174))))

(assert (=> b!700188 (= res!464171 (noDuplicate!1069 acc!652))))

(declare-fun b!700189 () Bool)

(declare-fun res!464157 () Bool)

(assert (=> b!700189 (=> (not res!464157) (not e!397174))))

(assert (=> b!700189 (= res!464157 (validKeyInArray!0 k!2824))))

(declare-fun b!700190 () Bool)

(declare-fun res!464156 () Bool)

(assert (=> b!700190 (=> (not res!464156) (not e!397174))))

(assert (=> b!700190 (= res!464156 (noDuplicate!1069 newAcc!49))))

(assert (= (and start!62430 res!464159) b!700188))

(assert (= (and b!700188 res!464171) b!700190))

(assert (= (and b!700190 res!464156) b!700187))

(assert (= (and b!700187 res!464150) b!700179))

(assert (= (and b!700179 res!464154) b!700181))

(assert (= (and b!700181 res!464166) b!700175))

(assert (= (and b!700175 res!464147) b!700189))

(assert (= (and b!700189 res!464157) b!700166))

(assert (= (and b!700166 res!464151) b!700183))

(assert (= (and b!700183 res!464173) b!700178))

(assert (= (and b!700178 res!464155) b!700184))

(assert (= (and b!700184 res!464161) b!700163))

(assert (= (and b!700163 res!464148) b!700176))

(assert (= (and b!700176 res!464168) b!700167))

(assert (= (and b!700167 res!464153) b!700174))

(assert (= (and b!700174 res!464164) b!700186))

(assert (= (and b!700186 res!464174) b!700170))

(assert (= (and b!700170 res!464152) b!700185))

(assert (= (and b!700185 res!464169) b!700168))

(assert (= (and b!700168 res!464162) b!700173))

(assert (= (and b!700173 res!464172) b!700172))

(assert (= (and b!700172 res!464165) b!700180))

(assert (= (and b!700180 res!464163) b!700177))

(assert (= (and b!700177 res!464149) b!700171))

(assert (= (and b!700171 res!464160) b!700182))

(assert (= (and b!700182 res!464167) b!700169))

(assert (= (and b!700169 res!464170) b!700164))

(assert (= (and b!700164 res!464158) b!700165))

(declare-fun m!659931 () Bool)

(assert (=> b!700168 m!659931))

(declare-fun m!659933 () Bool)

(assert (=> b!700188 m!659933))

(declare-fun m!659935 () Bool)

(assert (=> b!700185 m!659935))

(declare-fun m!659937 () Bool)

(assert (=> b!700181 m!659937))

(declare-fun m!659939 () Bool)

(assert (=> b!700164 m!659939))

(declare-fun m!659941 () Bool)

(assert (=> b!700169 m!659941))

(declare-fun m!659943 () Bool)

(assert (=> b!700190 m!659943))

(declare-fun m!659945 () Bool)

(assert (=> b!700173 m!659945))

(declare-fun m!659947 () Bool)

(assert (=> b!700174 m!659947))

(assert (=> b!700174 m!659947))

(declare-fun m!659949 () Bool)

(assert (=> b!700174 m!659949))

(declare-fun m!659951 () Bool)

(assert (=> b!700171 m!659951))

(declare-fun m!659953 () Bool)

(assert (=> b!700187 m!659953))

(declare-fun m!659955 () Bool)

(assert (=> b!700179 m!659955))

(declare-fun m!659957 () Bool)

(assert (=> b!700166 m!659957))

(declare-fun m!659959 () Bool)

(assert (=> b!700172 m!659959))

(declare-fun m!659961 () Bool)

(assert (=> b!700175 m!659961))

(declare-fun m!659963 () Bool)

(assert (=> b!700183 m!659963))

(assert (=> b!700186 m!659947))

(assert (=> b!700186 m!659947))

(declare-fun m!659965 () Bool)

(assert (=> b!700186 m!659965))

(assert (=> b!700186 m!659947))

(declare-fun m!659967 () Bool)

(assert (=> b!700186 m!659967))

(declare-fun m!659969 () Bool)

(assert (=> b!700178 m!659969))

(declare-fun m!659971 () Bool)

(assert (=> start!62430 m!659971))

(declare-fun m!659973 () Bool)

(assert (=> b!700189 m!659973))

(declare-fun m!659975 () Bool)

(assert (=> b!700176 m!659975))

(declare-fun m!659977 () Bool)

(assert (=> b!700182 m!659977))

(declare-fun m!659979 () Bool)

(assert (=> b!700165 m!659979))

(declare-fun m!659981 () Bool)

(assert (=> b!700180 m!659981))

(declare-fun m!659983 () Bool)

(assert (=> b!700163 m!659983))

(declare-fun m!659985 () Bool)

(assert (=> b!700177 m!659985))

(declare-fun m!659987 () Bool)

(assert (=> b!700184 m!659987))

(declare-fun m!659989 () Bool)

(assert (=> b!700170 m!659989))

(push 1)

