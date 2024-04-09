; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59924 () Bool)

(assert start!59924)

(declare-fun b!663189 () Bool)

(declare-datatypes ((Unit!23055 0))(
  ( (Unit!23056) )
))
(declare-fun e!380544 () Unit!23055)

(declare-fun Unit!23057 () Unit!23055)

(assert (=> b!663189 (= e!380544 Unit!23057)))

(declare-fun b!663190 () Bool)

(declare-fun res!431263 () Bool)

(declare-fun e!380541 () Bool)

(assert (=> b!663190 (=> (not res!431263) (not e!380541))))

(declare-datatypes ((array!38927 0))(
  ( (array!38928 (arr!18652 (Array (_ BitVec 32) (_ BitVec 64))) (size!19016 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38927)

(declare-datatypes ((List!12746 0))(
  ( (Nil!12743) (Cons!12742 (h!13787 (_ BitVec 64)) (t!18982 List!12746)) )
))
(declare-fun arrayNoDuplicates!0 (array!38927 (_ BitVec 32) List!12746) Bool)

(assert (=> b!663190 (= res!431263 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12743))))

(declare-fun b!663191 () Bool)

(declare-fun e!380539 () Bool)

(declare-fun acc!681 () List!12746)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3289 (List!12746 (_ BitVec 64)) Bool)

(assert (=> b!663191 (= e!380539 (not (contains!3289 acc!681 k0!2843)))))

(declare-fun b!663192 () Bool)

(declare-fun res!431268 () Bool)

(assert (=> b!663192 (=> (not res!431268) (not e!380541))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663192 (= res!431268 (validKeyInArray!0 k0!2843))))

(declare-fun b!663193 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!663193 (= e!380541 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun lt!309217 () Unit!23055)

(assert (=> b!663193 (= lt!309217 e!380544)))

(declare-fun c!76331 () Bool)

(assert (=> b!663193 (= c!76331 (validKeyInArray!0 (select (arr!18652 a!3626) from!3004)))))

(declare-fun lt!309218 () Unit!23055)

(declare-fun e!380545 () Unit!23055)

(assert (=> b!663193 (= lt!309218 e!380545)))

(declare-fun c!76330 () Bool)

(declare-fun arrayContainsKey!0 (array!38927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663193 (= c!76330 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663193 (arrayContainsKey!0 (array!38928 (store (arr!18652 a!3626) i!1382 k0!2843) (size!19016 a!3626)) k0!2843 from!3004)))

(declare-fun b!663194 () Bool)

(declare-fun res!431271 () Bool)

(assert (=> b!663194 (=> (not res!431271) (not e!380541))))

(assert (=> b!663194 (= res!431271 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663195 () Bool)

(declare-fun res!431270 () Bool)

(assert (=> b!663195 (=> (not res!431270) (not e!380541))))

(declare-fun noDuplicate!536 (List!12746) Bool)

(assert (=> b!663195 (= res!431270 (noDuplicate!536 acc!681))))

(declare-fun b!663196 () Bool)

(declare-fun res!431276 () Bool)

(assert (=> b!663196 (=> (not res!431276) (not e!380541))))

(assert (=> b!663196 (= res!431276 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19016 a!3626))))))

(declare-fun b!663197 () Bool)

(declare-fun e!380542 () Bool)

(assert (=> b!663197 (= e!380542 (contains!3289 acc!681 k0!2843))))

(declare-fun b!663198 () Bool)

(declare-fun res!431266 () Bool)

(assert (=> b!663198 (=> (not res!431266) (not e!380541))))

(declare-fun e!380540 () Bool)

(assert (=> b!663198 (= res!431266 e!380540)))

(declare-fun res!431273 () Bool)

(assert (=> b!663198 (=> res!431273 e!380540)))

(assert (=> b!663198 (= res!431273 e!380542)))

(declare-fun res!431267 () Bool)

(assert (=> b!663198 (=> (not res!431267) (not e!380542))))

(assert (=> b!663198 (= res!431267 (bvsgt from!3004 i!1382))))

(declare-fun res!431272 () Bool)

(assert (=> start!59924 (=> (not res!431272) (not e!380541))))

(assert (=> start!59924 (= res!431272 (and (bvslt (size!19016 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19016 a!3626))))))

(assert (=> start!59924 e!380541))

(assert (=> start!59924 true))

(declare-fun array_inv!14426 (array!38927) Bool)

(assert (=> start!59924 (array_inv!14426 a!3626)))

(declare-fun b!663199 () Bool)

(declare-fun Unit!23058 () Unit!23055)

(assert (=> b!663199 (= e!380545 Unit!23058)))

(declare-fun b!663200 () Bool)

(declare-fun res!431275 () Bool)

(assert (=> b!663200 (=> (not res!431275) (not e!380541))))

(assert (=> b!663200 (= res!431275 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19016 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663201 () Bool)

(assert (=> b!663201 (= e!380540 e!380539)))

(declare-fun res!431265 () Bool)

(assert (=> b!663201 (=> (not res!431265) (not e!380539))))

(assert (=> b!663201 (= res!431265 (bvsle from!3004 i!1382))))

(declare-fun b!663202 () Bool)

(declare-fun Unit!23059 () Unit!23055)

(assert (=> b!663202 (= e!380545 Unit!23059)))

(declare-fun lt!309219 () Unit!23055)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38927 (_ BitVec 64) (_ BitVec 32)) Unit!23055)

(assert (=> b!663202 (= lt!309219 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!663202 false))

(declare-fun b!663203 () Bool)

(declare-fun res!431274 () Bool)

(assert (=> b!663203 (=> (not res!431274) (not e!380541))))

(assert (=> b!663203 (= res!431274 (not (contains!3289 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663204 () Bool)

(declare-fun res!431264 () Bool)

(assert (=> b!663204 (=> (not res!431264) (not e!380541))))

(assert (=> b!663204 (= res!431264 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663205 () Bool)

(declare-fun lt!309215 () Unit!23055)

(assert (=> b!663205 (= e!380544 lt!309215)))

(declare-fun lt!309216 () Unit!23055)

(declare-fun lemmaListSubSeqRefl!0 (List!12746) Unit!23055)

(assert (=> b!663205 (= lt!309216 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!27 (List!12746 List!12746) Bool)

(assert (=> b!663205 (subseq!27 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38927 List!12746 List!12746 (_ BitVec 32)) Unit!23055)

(declare-fun $colon$colon!158 (List!12746 (_ BitVec 64)) List!12746)

(assert (=> b!663205 (= lt!309215 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!158 acc!681 (select (arr!18652 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663205 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663206 () Bool)

(declare-fun res!431269 () Bool)

(assert (=> b!663206 (=> (not res!431269) (not e!380541))))

(assert (=> b!663206 (= res!431269 (not (contains!3289 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59924 res!431272) b!663195))

(assert (= (and b!663195 res!431270) b!663203))

(assert (= (and b!663203 res!431274) b!663206))

(assert (= (and b!663206 res!431269) b!663198))

(assert (= (and b!663198 res!431267) b!663197))

(assert (= (and b!663198 (not res!431273)) b!663201))

(assert (= (and b!663201 res!431265) b!663191))

(assert (= (and b!663198 res!431266) b!663190))

(assert (= (and b!663190 res!431263) b!663194))

(assert (= (and b!663194 res!431271) b!663196))

(assert (= (and b!663196 res!431276) b!663192))

(assert (= (and b!663192 res!431268) b!663204))

(assert (= (and b!663204 res!431264) b!663200))

(assert (= (and b!663200 res!431275) b!663193))

(assert (= (and b!663193 c!76330) b!663202))

(assert (= (and b!663193 (not c!76330)) b!663199))

(assert (= (and b!663193 c!76331) b!663205))

(assert (= (and b!663193 (not c!76331)) b!663189))

(declare-fun m!634843 () Bool)

(assert (=> b!663193 m!634843))

(declare-fun m!634845 () Bool)

(assert (=> b!663193 m!634845))

(declare-fun m!634847 () Bool)

(assert (=> b!663193 m!634847))

(assert (=> b!663193 m!634843))

(declare-fun m!634849 () Bool)

(assert (=> b!663193 m!634849))

(declare-fun m!634851 () Bool)

(assert (=> b!663193 m!634851))

(declare-fun m!634853 () Bool)

(assert (=> b!663195 m!634853))

(declare-fun m!634855 () Bool)

(assert (=> b!663202 m!634855))

(declare-fun m!634857 () Bool)

(assert (=> b!663203 m!634857))

(declare-fun m!634859 () Bool)

(assert (=> b!663206 m!634859))

(declare-fun m!634861 () Bool)

(assert (=> b!663191 m!634861))

(declare-fun m!634863 () Bool)

(assert (=> start!59924 m!634863))

(declare-fun m!634865 () Bool)

(assert (=> b!663192 m!634865))

(declare-fun m!634867 () Bool)

(assert (=> b!663194 m!634867))

(declare-fun m!634869 () Bool)

(assert (=> b!663190 m!634869))

(assert (=> b!663197 m!634861))

(declare-fun m!634871 () Bool)

(assert (=> b!663204 m!634871))

(declare-fun m!634873 () Bool)

(assert (=> b!663205 m!634873))

(assert (=> b!663205 m!634843))

(declare-fun m!634875 () Bool)

(assert (=> b!663205 m!634875))

(declare-fun m!634877 () Bool)

(assert (=> b!663205 m!634877))

(assert (=> b!663205 m!634843))

(assert (=> b!663205 m!634875))

(declare-fun m!634879 () Bool)

(assert (=> b!663205 m!634879))

(declare-fun m!634881 () Bool)

(assert (=> b!663205 m!634881))

(check-sat (not b!663192) (not b!663194) (not b!663205) (not b!663191) (not b!663204) (not start!59924) (not b!663206) (not b!663190) (not b!663195) (not b!663197) (not b!663203) (not b!663202) (not b!663193))
(check-sat)
