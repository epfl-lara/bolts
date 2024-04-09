; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59890 () Bool)

(assert start!59890)

(declare-fun b!662087 () Bool)

(declare-fun res!430277 () Bool)

(declare-fun e!380143 () Bool)

(assert (=> b!662087 (=> (not res!430277) (not e!380143))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38893 0))(
  ( (array!38894 (arr!18635 (Array (_ BitVec 32) (_ BitVec 64))) (size!18999 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38893)

(assert (=> b!662087 (= res!430277 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18999 a!3626))))))

(declare-fun b!662088 () Bool)

(declare-fun res!430273 () Bool)

(assert (=> b!662088 (=> (not res!430273) (not e!380143))))

(declare-datatypes ((List!12729 0))(
  ( (Nil!12726) (Cons!12725 (h!13770 (_ BitVec 64)) (t!18965 List!12729)) )
))
(declare-fun acc!681 () List!12729)

(declare-fun contains!3272 (List!12729 (_ BitVec 64)) Bool)

(assert (=> b!662088 (= res!430273 (not (contains!3272 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662089 () Bool)

(declare-fun res!430290 () Bool)

(assert (=> b!662089 (=> (not res!430290) (not e!380143))))

(declare-fun arrayNoDuplicates!0 (array!38893 (_ BitVec 32) List!12729) Bool)

(assert (=> b!662089 (= res!430290 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12726))))

(declare-fun b!662090 () Bool)

(declare-fun e!380138 () Bool)

(assert (=> b!662090 (= e!380143 (not e!380138))))

(declare-fun res!430276 () Bool)

(assert (=> b!662090 (=> res!430276 e!380138)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662090 (= res!430276 (not (validKeyInArray!0 (select (arr!18635 a!3626) from!3004))))))

(declare-datatypes ((Unit!22986 0))(
  ( (Unit!22987) )
))
(declare-fun lt!308915 () Unit!22986)

(declare-fun e!380136 () Unit!22986)

(assert (=> b!662090 (= lt!308915 e!380136)))

(declare-fun c!76274 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662090 (= c!76274 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662090 (arrayContainsKey!0 (array!38894 (store (arr!18635 a!3626) i!1382 k!2843) (size!18999 a!3626)) k!2843 from!3004)))

(declare-fun b!662091 () Bool)

(declare-fun res!430280 () Bool)

(declare-fun e!380137 () Bool)

(assert (=> b!662091 (=> res!430280 e!380137)))

(declare-fun lt!308919 () List!12729)

(declare-fun noDuplicate!519 (List!12729) Bool)

(assert (=> b!662091 (= res!430280 (not (noDuplicate!519 lt!308919)))))

(declare-fun b!662092 () Bool)

(declare-fun res!430279 () Bool)

(assert (=> b!662092 (=> (not res!430279) (not e!380143))))

(declare-fun e!380140 () Bool)

(assert (=> b!662092 (= res!430279 e!380140)))

(declare-fun res!430288 () Bool)

(assert (=> b!662092 (=> res!430288 e!380140)))

(declare-fun e!380141 () Bool)

(assert (=> b!662092 (= res!430288 e!380141)))

(declare-fun res!430292 () Bool)

(assert (=> b!662092 (=> (not res!430292) (not e!380141))))

(assert (=> b!662092 (= res!430292 (bvsgt from!3004 i!1382))))

(declare-fun res!430278 () Bool)

(assert (=> start!59890 (=> (not res!430278) (not e!380143))))

(assert (=> start!59890 (= res!430278 (and (bvslt (size!18999 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18999 a!3626))))))

(assert (=> start!59890 e!380143))

(assert (=> start!59890 true))

(declare-fun array_inv!14409 (array!38893) Bool)

(assert (=> start!59890 (array_inv!14409 a!3626)))

(declare-fun b!662093 () Bool)

(declare-fun res!430281 () Bool)

(assert (=> b!662093 (=> (not res!430281) (not e!380143))))

(assert (=> b!662093 (= res!430281 (validKeyInArray!0 k!2843))))

(declare-fun b!662094 () Bool)

(assert (=> b!662094 (= e!380137 true)))

(declare-fun lt!308917 () Bool)

(assert (=> b!662094 (= lt!308917 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308919))))

(declare-fun lt!308916 () Unit!22986)

(declare-fun noDuplicateSubseq!10 (List!12729 List!12729) Unit!22986)

(assert (=> b!662094 (= lt!308916 (noDuplicateSubseq!10 acc!681 lt!308919))))

(declare-fun b!662095 () Bool)

(declare-fun res!430286 () Bool)

(assert (=> b!662095 (=> res!430286 e!380137)))

(assert (=> b!662095 (= res!430286 (contains!3272 lt!308919 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662096 () Bool)

(declare-fun res!430282 () Bool)

(assert (=> b!662096 (=> (not res!430282) (not e!380143))))

(assert (=> b!662096 (= res!430282 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18999 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662097 () Bool)

(declare-fun res!430284 () Bool)

(assert (=> b!662097 (=> (not res!430284) (not e!380143))))

(assert (=> b!662097 (= res!430284 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662098 () Bool)

(assert (=> b!662098 (= e!380141 (contains!3272 acc!681 k!2843))))

(declare-fun b!662099 () Bool)

(declare-fun res!430285 () Bool)

(assert (=> b!662099 (=> res!430285 e!380137)))

(assert (=> b!662099 (= res!430285 (contains!3272 lt!308919 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662100 () Bool)

(declare-fun res!430291 () Bool)

(assert (=> b!662100 (=> res!430291 e!380137)))

(declare-fun subseq!10 (List!12729 List!12729) Bool)

(assert (=> b!662100 (= res!430291 (not (subseq!10 acc!681 lt!308919)))))

(declare-fun b!662101 () Bool)

(assert (=> b!662101 (= e!380138 e!380137)))

(declare-fun res!430289 () Bool)

(assert (=> b!662101 (=> res!430289 e!380137)))

(assert (=> b!662101 (= res!430289 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!141 (List!12729 (_ BitVec 64)) List!12729)

(assert (=> b!662101 (= lt!308919 ($colon$colon!141 acc!681 (select (arr!18635 a!3626) from!3004)))))

(assert (=> b!662101 (subseq!10 acc!681 acc!681)))

(declare-fun lt!308918 () Unit!22986)

(declare-fun lemmaListSubSeqRefl!0 (List!12729) Unit!22986)

(assert (=> b!662101 (= lt!308918 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662102 () Bool)

(declare-fun e!380139 () Bool)

(assert (=> b!662102 (= e!380140 e!380139)))

(declare-fun res!430287 () Bool)

(assert (=> b!662102 (=> (not res!430287) (not e!380139))))

(assert (=> b!662102 (= res!430287 (bvsle from!3004 i!1382))))

(declare-fun b!662103 () Bool)

(declare-fun res!430275 () Bool)

(assert (=> b!662103 (=> (not res!430275) (not e!380143))))

(assert (=> b!662103 (= res!430275 (not (contains!3272 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662104 () Bool)

(declare-fun Unit!22988 () Unit!22986)

(assert (=> b!662104 (= e!380136 Unit!22988)))

(declare-fun lt!308914 () Unit!22986)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38893 (_ BitVec 64) (_ BitVec 32)) Unit!22986)

(assert (=> b!662104 (= lt!308914 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!662104 false))

(declare-fun b!662105 () Bool)

(declare-fun res!430274 () Bool)

(assert (=> b!662105 (=> (not res!430274) (not e!380143))))

(assert (=> b!662105 (= res!430274 (noDuplicate!519 acc!681))))

(declare-fun b!662106 () Bool)

(assert (=> b!662106 (= e!380139 (not (contains!3272 acc!681 k!2843)))))

(declare-fun b!662107 () Bool)

(declare-fun Unit!22989 () Unit!22986)

(assert (=> b!662107 (= e!380136 Unit!22989)))

(declare-fun b!662108 () Bool)

(declare-fun res!430283 () Bool)

(assert (=> b!662108 (=> (not res!430283) (not e!380143))))

(assert (=> b!662108 (= res!430283 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59890 res!430278) b!662105))

(assert (= (and b!662105 res!430274) b!662103))

(assert (= (and b!662103 res!430275) b!662088))

(assert (= (and b!662088 res!430273) b!662092))

(assert (= (and b!662092 res!430292) b!662098))

(assert (= (and b!662092 (not res!430288)) b!662102))

(assert (= (and b!662102 res!430287) b!662106))

(assert (= (and b!662092 res!430279) b!662089))

(assert (= (and b!662089 res!430290) b!662108))

(assert (= (and b!662108 res!430283) b!662087))

(assert (= (and b!662087 res!430277) b!662093))

(assert (= (and b!662093 res!430281) b!662097))

(assert (= (and b!662097 res!430284) b!662096))

(assert (= (and b!662096 res!430282) b!662090))

(assert (= (and b!662090 c!76274) b!662104))

(assert (= (and b!662090 (not c!76274)) b!662107))

(assert (= (and b!662090 (not res!430276)) b!662101))

(assert (= (and b!662101 (not res!430289)) b!662091))

(assert (= (and b!662091 (not res!430280)) b!662099))

(assert (= (and b!662099 (not res!430285)) b!662095))

(assert (= (and b!662095 (not res!430286)) b!662100))

(assert (= (and b!662100 (not res!430291)) b!662094))

(declare-fun m!634035 () Bool)

(assert (=> b!662105 m!634035))

(declare-fun m!634037 () Bool)

(assert (=> b!662088 m!634037))

(declare-fun m!634039 () Bool)

(assert (=> b!662104 m!634039))

(declare-fun m!634041 () Bool)

(assert (=> b!662103 m!634041))

(declare-fun m!634043 () Bool)

(assert (=> b!662098 m!634043))

(assert (=> b!662106 m!634043))

(declare-fun m!634045 () Bool)

(assert (=> b!662101 m!634045))

(assert (=> b!662101 m!634045))

(declare-fun m!634047 () Bool)

(assert (=> b!662101 m!634047))

(declare-fun m!634049 () Bool)

(assert (=> b!662101 m!634049))

(declare-fun m!634051 () Bool)

(assert (=> b!662101 m!634051))

(declare-fun m!634053 () Bool)

(assert (=> b!662100 m!634053))

(declare-fun m!634055 () Bool)

(assert (=> b!662093 m!634055))

(declare-fun m!634057 () Bool)

(assert (=> b!662094 m!634057))

(declare-fun m!634059 () Bool)

(assert (=> b!662094 m!634059))

(assert (=> b!662090 m!634045))

(declare-fun m!634061 () Bool)

(assert (=> b!662090 m!634061))

(declare-fun m!634063 () Bool)

(assert (=> b!662090 m!634063))

(assert (=> b!662090 m!634045))

(declare-fun m!634065 () Bool)

(assert (=> b!662090 m!634065))

(declare-fun m!634067 () Bool)

(assert (=> b!662090 m!634067))

(declare-fun m!634069 () Bool)

(assert (=> b!662091 m!634069))

(declare-fun m!634071 () Bool)

(assert (=> b!662095 m!634071))

(declare-fun m!634073 () Bool)

(assert (=> b!662108 m!634073))

(declare-fun m!634075 () Bool)

(assert (=> b!662099 m!634075))

(declare-fun m!634077 () Bool)

(assert (=> b!662089 m!634077))

(declare-fun m!634079 () Bool)

(assert (=> b!662097 m!634079))

(declare-fun m!634081 () Bool)

(assert (=> start!59890 m!634081))

(push 1)

