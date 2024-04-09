; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62404 () Bool)

(assert start!62404)

(declare-fun b!699071 () Bool)

(declare-fun res!463059 () Bool)

(declare-fun e!397056 () Bool)

(assert (=> b!699071 (=> (not res!463059) (not e!397056))))

(declare-datatypes ((List!13266 0))(
  ( (Nil!13263) (Cons!13262 (h!14307 (_ BitVec 64)) (t!19556 List!13266)) )
))
(declare-fun newAcc!49 () List!13266)

(declare-fun contains!3809 (List!13266 (_ BitVec 64)) Bool)

(assert (=> b!699071 (= res!463059 (not (contains!3809 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699072 () Bool)

(declare-fun res!463055 () Bool)

(assert (=> b!699072 (=> (not res!463055) (not e!397056))))

(declare-fun noDuplicate!1056 (List!13266) Bool)

(assert (=> b!699072 (= res!463055 (noDuplicate!1056 newAcc!49))))

(declare-fun b!699073 () Bool)

(declare-fun res!463058 () Bool)

(assert (=> b!699073 (=> (not res!463058) (not e!397056))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13266)

(declare-fun -!218 (List!13266 (_ BitVec 64)) List!13266)

(assert (=> b!699073 (= res!463058 (= (-!218 newAcc!49 k!2824) acc!652))))

(declare-fun b!699074 () Bool)

(declare-fun res!463067 () Bool)

(assert (=> b!699074 (=> (not res!463067) (not e!397056))))

(assert (=> b!699074 (= res!463067 (noDuplicate!1056 acc!652))))

(declare-fun b!699075 () Bool)

(declare-fun res!463068 () Bool)

(declare-fun e!397055 () Bool)

(assert (=> b!699075 (=> (not res!463068) (not e!397055))))

(declare-fun lt!317306 () List!13266)

(assert (=> b!699075 (= res!463068 (contains!3809 lt!317306 k!2824))))

(declare-fun b!699076 () Bool)

(assert (=> b!699076 (= e!397056 e!397055)))

(declare-fun res!463074 () Bool)

(assert (=> b!699076 (=> (not res!463074) (not e!397055))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!699076 (= res!463074 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-datatypes ((array!40039 0))(
  ( (array!40040 (arr!19172 (Array (_ BitVec 32) (_ BitVec 64))) (size!19555 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40039)

(declare-fun $colon$colon!450 (List!13266 (_ BitVec 64)) List!13266)

(assert (=> b!699076 (= lt!317306 ($colon$colon!450 newAcc!49 (select (arr!19172 a!3591) from!2969)))))

(declare-fun lt!317305 () List!13266)

(assert (=> b!699076 (= lt!317305 ($colon$colon!450 acc!652 (select (arr!19172 a!3591) from!2969)))))

(declare-fun b!699077 () Bool)

(declare-fun res!463075 () Bool)

(assert (=> b!699077 (=> (not res!463075) (not e!397056))))

(assert (=> b!699077 (= res!463075 (contains!3809 newAcc!49 k!2824))))

(declare-fun b!699078 () Bool)

(declare-fun res!463076 () Bool)

(assert (=> b!699078 (=> (not res!463076) (not e!397056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!699078 (= res!463076 (validKeyInArray!0 k!2824))))

(declare-fun b!699079 () Bool)

(declare-fun res!463073 () Bool)

(assert (=> b!699079 (=> (not res!463073) (not e!397056))))

(assert (=> b!699079 (= res!463073 (not (contains!3809 acc!652 k!2824)))))

(declare-fun b!699080 () Bool)

(declare-fun res!463082 () Bool)

(assert (=> b!699080 (=> (not res!463082) (not e!397055))))

(declare-fun subseq!253 (List!13266 List!13266) Bool)

(assert (=> b!699080 (= res!463082 (subseq!253 lt!317305 lt!317306))))

(declare-fun b!699081 () Bool)

(declare-fun res!463077 () Bool)

(assert (=> b!699081 (=> (not res!463077) (not e!397056))))

(assert (=> b!699081 (= res!463077 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19555 a!3591)))))

(declare-fun b!699083 () Bool)

(declare-fun res!463081 () Bool)

(assert (=> b!699083 (=> (not res!463081) (not e!397055))))

(declare-fun arrayContainsKey!0 (array!40039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!699083 (= res!463081 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!699084 () Bool)

(assert (=> b!699084 (= e!397055 false)))

(declare-fun lt!317307 () Bool)

(assert (=> b!699084 (= lt!317307 (contains!3809 lt!317306 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!699085 () Bool)

(declare-fun res!463065 () Bool)

(assert (=> b!699085 (=> (not res!463065) (not e!397055))))

(assert (=> b!699085 (= res!463065 (= (-!218 lt!317306 k!2824) lt!317305))))

(declare-fun b!699086 () Bool)

(declare-fun res!463056 () Bool)

(assert (=> b!699086 (=> (not res!463056) (not e!397056))))

(assert (=> b!699086 (= res!463056 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!699087 () Bool)

(declare-fun res!463069 () Bool)

(assert (=> b!699087 (=> (not res!463069) (not e!397055))))

(declare-fun arrayNoDuplicates!0 (array!40039 (_ BitVec 32) List!13266) Bool)

(assert (=> b!699087 (= res!463069 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317305))))

(declare-fun b!699088 () Bool)

(declare-fun res!463064 () Bool)

(assert (=> b!699088 (=> (not res!463064) (not e!397055))))

(assert (=> b!699088 (= res!463064 (not (contains!3809 lt!317305 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699089 () Bool)

(declare-fun res!463079 () Bool)

(assert (=> b!699089 (=> (not res!463079) (not e!397056))))

(assert (=> b!699089 (= res!463079 (validKeyInArray!0 (select (arr!19172 a!3591) from!2969)))))

(declare-fun b!699090 () Bool)

(declare-fun res!463080 () Bool)

(assert (=> b!699090 (=> (not res!463080) (not e!397056))))

(assert (=> b!699090 (= res!463080 (not (contains!3809 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699091 () Bool)

(declare-fun res!463078 () Bool)

(assert (=> b!699091 (=> (not res!463078) (not e!397056))))

(assert (=> b!699091 (= res!463078 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!699092 () Bool)

(declare-fun res!463070 () Bool)

(assert (=> b!699092 (=> (not res!463070) (not e!397056))))

(assert (=> b!699092 (= res!463070 (subseq!253 acc!652 newAcc!49))))

(declare-fun b!699093 () Bool)

(declare-fun res!463061 () Bool)

(assert (=> b!699093 (=> (not res!463061) (not e!397055))))

(assert (=> b!699093 (= res!463061 (not (contains!3809 lt!317306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699094 () Bool)

(declare-fun res!463071 () Bool)

(assert (=> b!699094 (=> (not res!463071) (not e!397056))))

(assert (=> b!699094 (= res!463071 (not (contains!3809 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!463063 () Bool)

(assert (=> start!62404 (=> (not res!463063) (not e!397056))))

(assert (=> start!62404 (= res!463063 (and (bvslt (size!19555 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19555 a!3591))))))

(assert (=> start!62404 e!397056))

(assert (=> start!62404 true))

(declare-fun array_inv!14946 (array!40039) Bool)

(assert (=> start!62404 (array_inv!14946 a!3591)))

(declare-fun b!699082 () Bool)

(declare-fun res!463062 () Bool)

(assert (=> b!699082 (=> (not res!463062) (not e!397055))))

(assert (=> b!699082 (= res!463062 (noDuplicate!1056 lt!317305))))

(declare-fun b!699095 () Bool)

(declare-fun res!463072 () Bool)

(assert (=> b!699095 (=> (not res!463072) (not e!397056))))

(assert (=> b!699095 (= res!463072 (not (contains!3809 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699096 () Bool)

(declare-fun res!463060 () Bool)

(assert (=> b!699096 (=> (not res!463060) (not e!397055))))

(assert (=> b!699096 (= res!463060 (not (contains!3809 lt!317305 k!2824)))))

(declare-fun b!699097 () Bool)

(declare-fun res!463057 () Bool)

(assert (=> b!699097 (=> (not res!463057) (not e!397055))))

(assert (=> b!699097 (= res!463057 (noDuplicate!1056 lt!317306))))

(declare-fun b!699098 () Bool)

(declare-fun res!463066 () Bool)

(assert (=> b!699098 (=> (not res!463066) (not e!397055))))

(assert (=> b!699098 (= res!463066 (not (contains!3809 lt!317305 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62404 res!463063) b!699074))

(assert (= (and b!699074 res!463067) b!699072))

(assert (= (and b!699072 res!463055) b!699090))

(assert (= (and b!699090 res!463080) b!699094))

(assert (= (and b!699094 res!463071) b!699086))

(assert (= (and b!699086 res!463056) b!699079))

(assert (= (and b!699079 res!463073) b!699078))

(assert (= (and b!699078 res!463076) b!699091))

(assert (= (and b!699091 res!463078) b!699092))

(assert (= (and b!699092 res!463070) b!699077))

(assert (= (and b!699077 res!463075) b!699073))

(assert (= (and b!699073 res!463058) b!699095))

(assert (= (and b!699095 res!463072) b!699071))

(assert (= (and b!699071 res!463059) b!699081))

(assert (= (and b!699081 res!463077) b!699089))

(assert (= (and b!699089 res!463079) b!699076))

(assert (= (and b!699076 res!463074) b!699082))

(assert (= (and b!699082 res!463062) b!699097))

(assert (= (and b!699097 res!463057) b!699088))

(assert (= (and b!699088 res!463064) b!699098))

(assert (= (and b!699098 res!463066) b!699083))

(assert (= (and b!699083 res!463081) b!699096))

(assert (= (and b!699096 res!463060) b!699087))

(assert (= (and b!699087 res!463069) b!699080))

(assert (= (and b!699080 res!463082) b!699075))

(assert (= (and b!699075 res!463068) b!699085))

(assert (= (and b!699085 res!463065) b!699093))

(assert (= (and b!699093 res!463061) b!699084))

(declare-fun m!659151 () Bool)

(assert (=> b!699090 m!659151))

(declare-fun m!659153 () Bool)

(assert (=> b!699073 m!659153))

(declare-fun m!659155 () Bool)

(assert (=> b!699078 m!659155))

(declare-fun m!659157 () Bool)

(assert (=> b!699079 m!659157))

(declare-fun m!659159 () Bool)

(assert (=> start!62404 m!659159))

(declare-fun m!659161 () Bool)

(assert (=> b!699074 m!659161))

(declare-fun m!659163 () Bool)

(assert (=> b!699093 m!659163))

(declare-fun m!659165 () Bool)

(assert (=> b!699094 m!659165))

(declare-fun m!659167 () Bool)

(assert (=> b!699086 m!659167))

(declare-fun m!659169 () Bool)

(assert (=> b!699076 m!659169))

(assert (=> b!699076 m!659169))

(declare-fun m!659171 () Bool)

(assert (=> b!699076 m!659171))

(assert (=> b!699076 m!659169))

(declare-fun m!659173 () Bool)

(assert (=> b!699076 m!659173))

(declare-fun m!659175 () Bool)

(assert (=> b!699097 m!659175))

(declare-fun m!659177 () Bool)

(assert (=> b!699088 m!659177))

(declare-fun m!659179 () Bool)

(assert (=> b!699087 m!659179))

(declare-fun m!659181 () Bool)

(assert (=> b!699077 m!659181))

(declare-fun m!659183 () Bool)

(assert (=> b!699071 m!659183))

(declare-fun m!659185 () Bool)

(assert (=> b!699096 m!659185))

(declare-fun m!659187 () Bool)

(assert (=> b!699084 m!659187))

(declare-fun m!659189 () Bool)

(assert (=> b!699085 m!659189))

(declare-fun m!659191 () Bool)

(assert (=> b!699072 m!659191))

(declare-fun m!659193 () Bool)

(assert (=> b!699095 m!659193))

(declare-fun m!659195 () Bool)

(assert (=> b!699098 m!659195))

(assert (=> b!699089 m!659169))

(assert (=> b!699089 m!659169))

(declare-fun m!659197 () Bool)

(assert (=> b!699089 m!659197))

(declare-fun m!659199 () Bool)

(assert (=> b!699082 m!659199))

(declare-fun m!659201 () Bool)

(assert (=> b!699083 m!659201))

(declare-fun m!659203 () Bool)

(assert (=> b!699092 m!659203))

(declare-fun m!659205 () Bool)

(assert (=> b!699075 m!659205))

(declare-fun m!659207 () Bool)

(assert (=> b!699091 m!659207))

(declare-fun m!659209 () Bool)

(assert (=> b!699080 m!659209))

(push 1)

