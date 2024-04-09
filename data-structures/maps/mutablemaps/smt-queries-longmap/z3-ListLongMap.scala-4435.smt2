; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61604 () Bool)

(assert start!61604)

(declare-fun b!689263 () Bool)

(declare-fun res!453992 () Bool)

(declare-fun e!392447 () Bool)

(assert (=> b!689263 (=> res!453992 e!392447)))

(declare-datatypes ((List!13112 0))(
  ( (Nil!13109) (Cons!13108 (h!14153 (_ BitVec 64)) (t!19384 List!13112)) )
))
(declare-fun lt!316118 () List!13112)

(declare-fun contains!3655 (List!13112 (_ BitVec 64)) Bool)

(assert (=> b!689263 (= res!453992 (contains!3655 lt!316118 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689264 () Bool)

(declare-fun e!392448 () Bool)

(declare-fun acc!681 () List!13112)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!689264 (= e!392448 (not (contains!3655 acc!681 k0!2843)))))

(declare-fun b!689265 () Bool)

(declare-fun e!392446 () Bool)

(assert (=> b!689265 (= e!392446 (contains!3655 lt!316118 k0!2843))))

(declare-fun b!689266 () Bool)

(declare-fun res!453979 () Bool)

(declare-fun e!392452 () Bool)

(assert (=> b!689266 (=> (not res!453979) (not e!392452))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39701 0))(
  ( (array!39702 (arr!19018 (Array (_ BitVec 32) (_ BitVec 64))) (size!19399 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39701)

(assert (=> b!689266 (= res!453979 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19399 a!3626))))))

(declare-fun b!689267 () Bool)

(declare-fun res!453980 () Bool)

(assert (=> b!689267 (=> (not res!453980) (not e!392452))))

(assert (=> b!689267 (= res!453980 (not (contains!3655 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689268 () Bool)

(declare-fun res!453978 () Bool)

(assert (=> b!689268 (=> (not res!453978) (not e!392452))))

(assert (=> b!689268 (= res!453978 (not (contains!3655 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689269 () Bool)

(declare-datatypes ((Unit!24327 0))(
  ( (Unit!24328) )
))
(declare-fun e!392443 () Unit!24327)

(declare-fun Unit!24329 () Unit!24327)

(assert (=> b!689269 (= e!392443 Unit!24329)))

(declare-fun b!689270 () Bool)

(declare-fun res!453997 () Bool)

(assert (=> b!689270 (=> (not res!453997) (not e!392452))))

(declare-fun arrayContainsKey!0 (array!39701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!689270 (= res!453997 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!689272 () Bool)

(declare-fun res!453984 () Bool)

(assert (=> b!689272 (=> (not res!453984) (not e!392452))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!689272 (= res!453984 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19399 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!689273 () Bool)

(declare-fun e!392444 () Unit!24327)

(declare-fun lt!316124 () Unit!24327)

(assert (=> b!689273 (= e!392444 lt!316124)))

(declare-fun lt!316122 () Unit!24327)

(declare-fun lemmaListSubSeqRefl!0 (List!13112) Unit!24327)

(assert (=> b!689273 (= lt!316122 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!240 (List!13112 List!13112) Bool)

(assert (=> b!689273 (subseq!240 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39701 List!13112 List!13112 (_ BitVec 32)) Unit!24327)

(declare-fun $colon$colon!404 (List!13112 (_ BitVec 64)) List!13112)

(assert (=> b!689273 (= lt!316124 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!404 acc!681 (select (arr!19018 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39701 (_ BitVec 32) List!13112) Bool)

(assert (=> b!689273 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!689274 () Bool)

(assert (=> b!689274 (= e!392447 true)))

(declare-fun lt!316120 () array!39701)

(assert (=> b!689274 (arrayNoDuplicates!0 lt!316120 (bvadd #b00000000000000000000000000000001 from!3004) lt!316118)))

(declare-fun lt!316115 () Unit!24327)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39701 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13112) Unit!24327)

(assert (=> b!689274 (= lt!316115 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316118))))

(declare-fun b!689275 () Bool)

(declare-fun res!453995 () Bool)

(assert (=> b!689275 (=> (not res!453995) (not e!392452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!689275 (= res!453995 (validKeyInArray!0 k0!2843))))

(declare-fun b!689276 () Bool)

(declare-fun res!453993 () Bool)

(assert (=> b!689276 (=> res!453993 e!392447)))

(declare-fun e!392451 () Bool)

(assert (=> b!689276 (= res!453993 e!392451)))

(declare-fun res!453991 () Bool)

(assert (=> b!689276 (=> (not res!453991) (not e!392451))))

(declare-fun e!392442 () Bool)

(assert (=> b!689276 (= res!453991 e!392442)))

(declare-fun res!453981 () Bool)

(assert (=> b!689276 (=> res!453981 e!392442)))

(assert (=> b!689276 (= res!453981 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689277 () Bool)

(assert (=> b!689277 (= e!392451 e!392446)))

(declare-fun res!453986 () Bool)

(assert (=> b!689277 (=> res!453986 e!392446)))

(assert (=> b!689277 (= res!453986 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689278 () Bool)

(declare-fun Unit!24330 () Unit!24327)

(assert (=> b!689278 (= e!392443 Unit!24330)))

(declare-fun lt!316121 () Unit!24327)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39701 (_ BitVec 64) (_ BitVec 32)) Unit!24327)

(assert (=> b!689278 (= lt!316121 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!689278 false))

(declare-fun b!689279 () Bool)

(declare-fun res!453988 () Bool)

(assert (=> b!689279 (=> (not res!453988) (not e!392452))))

(assert (=> b!689279 (= res!453988 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13109))))

(declare-fun b!689280 () Bool)

(declare-fun res!453990 () Bool)

(assert (=> b!689280 (=> res!453990 e!392447)))

(declare-fun noDuplicate!902 (List!13112) Bool)

(assert (=> b!689280 (= res!453990 (not (noDuplicate!902 lt!316118)))))

(declare-fun b!689281 () Bool)

(assert (=> b!689281 (= e!392452 (not e!392447))))

(declare-fun res!453983 () Bool)

(assert (=> b!689281 (=> res!453983 e!392447)))

(assert (=> b!689281 (= res!453983 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!689281 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316118)))

(declare-fun lt!316116 () Unit!24327)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39701 (_ BitVec 64) (_ BitVec 32) List!13112 List!13112) Unit!24327)

(assert (=> b!689281 (= lt!316116 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316118))))

(declare-fun -!205 (List!13112 (_ BitVec 64)) List!13112)

(assert (=> b!689281 (= (-!205 lt!316118 k0!2843) acc!681)))

(assert (=> b!689281 (= lt!316118 ($colon$colon!404 acc!681 k0!2843))))

(declare-fun lt!316117 () Unit!24327)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13112) Unit!24327)

(assert (=> b!689281 (= lt!316117 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!689281 (subseq!240 acc!681 acc!681)))

(declare-fun lt!316125 () Unit!24327)

(assert (=> b!689281 (= lt!316125 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689281 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316119 () Unit!24327)

(assert (=> b!689281 (= lt!316119 e!392444)))

(declare-fun c!78010 () Bool)

(assert (=> b!689281 (= c!78010 (validKeyInArray!0 (select (arr!19018 a!3626) from!3004)))))

(declare-fun lt!316123 () Unit!24327)

(assert (=> b!689281 (= lt!316123 e!392443)))

(declare-fun c!78011 () Bool)

(assert (=> b!689281 (= c!78011 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689281 (arrayContainsKey!0 lt!316120 k0!2843 from!3004)))

(assert (=> b!689281 (= lt!316120 (array!39702 (store (arr!19018 a!3626) i!1382 k0!2843) (size!19399 a!3626)))))

(declare-fun b!689282 () Bool)

(declare-fun e!392450 () Bool)

(assert (=> b!689282 (= e!392450 e!392448)))

(declare-fun res!453987 () Bool)

(assert (=> b!689282 (=> (not res!453987) (not e!392448))))

(assert (=> b!689282 (= res!453987 (bvsle from!3004 i!1382))))

(declare-fun b!689283 () Bool)

(declare-fun res!453982 () Bool)

(assert (=> b!689283 (=> (not res!453982) (not e!392452))))

(assert (=> b!689283 (= res!453982 e!392450)))

(declare-fun res!453998 () Bool)

(assert (=> b!689283 (=> res!453998 e!392450)))

(declare-fun e!392449 () Bool)

(assert (=> b!689283 (= res!453998 e!392449)))

(declare-fun res!453977 () Bool)

(assert (=> b!689283 (=> (not res!453977) (not e!392449))))

(assert (=> b!689283 (= res!453977 (bvsgt from!3004 i!1382))))

(declare-fun b!689284 () Bool)

(declare-fun res!453985 () Bool)

(assert (=> b!689284 (=> (not res!453985) (not e!392452))))

(assert (=> b!689284 (= res!453985 (noDuplicate!902 acc!681))))

(declare-fun b!689285 () Bool)

(assert (=> b!689285 (= e!392442 (not (contains!3655 lt!316118 k0!2843)))))

(declare-fun b!689286 () Bool)

(declare-fun res!453996 () Bool)

(assert (=> b!689286 (=> res!453996 e!392447)))

(assert (=> b!689286 (= res!453996 (contains!3655 lt!316118 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689287 () Bool)

(declare-fun res!453994 () Bool)

(assert (=> b!689287 (=> (not res!453994) (not e!392452))))

(assert (=> b!689287 (= res!453994 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!689288 () Bool)

(declare-fun Unit!24331 () Unit!24327)

(assert (=> b!689288 (= e!392444 Unit!24331)))

(declare-fun res!453989 () Bool)

(assert (=> start!61604 (=> (not res!453989) (not e!392452))))

(assert (=> start!61604 (= res!453989 (and (bvslt (size!19399 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19399 a!3626))))))

(assert (=> start!61604 e!392452))

(assert (=> start!61604 true))

(declare-fun array_inv!14792 (array!39701) Bool)

(assert (=> start!61604 (array_inv!14792 a!3626)))

(declare-fun b!689271 () Bool)

(assert (=> b!689271 (= e!392449 (contains!3655 acc!681 k0!2843))))

(assert (= (and start!61604 res!453989) b!689284))

(assert (= (and b!689284 res!453985) b!689267))

(assert (= (and b!689267 res!453980) b!689268))

(assert (= (and b!689268 res!453978) b!689283))

(assert (= (and b!689283 res!453977) b!689271))

(assert (= (and b!689283 (not res!453998)) b!689282))

(assert (= (and b!689282 res!453987) b!689264))

(assert (= (and b!689283 res!453982) b!689279))

(assert (= (and b!689279 res!453988) b!689287))

(assert (= (and b!689287 res!453994) b!689266))

(assert (= (and b!689266 res!453979) b!689275))

(assert (= (and b!689275 res!453995) b!689270))

(assert (= (and b!689270 res!453997) b!689272))

(assert (= (and b!689272 res!453984) b!689281))

(assert (= (and b!689281 c!78011) b!689278))

(assert (= (and b!689281 (not c!78011)) b!689269))

(assert (= (and b!689281 c!78010) b!689273))

(assert (= (and b!689281 (not c!78010)) b!689288))

(assert (= (and b!689281 (not res!453983)) b!689280))

(assert (= (and b!689280 (not res!453990)) b!689263))

(assert (= (and b!689263 (not res!453992)) b!689286))

(assert (= (and b!689286 (not res!453996)) b!689276))

(assert (= (and b!689276 (not res!453981)) b!689285))

(assert (= (and b!689276 res!453991) b!689277))

(assert (= (and b!689277 (not res!453986)) b!689265))

(assert (= (and b!689276 (not res!453993)) b!689274))

(declare-fun m!652985 () Bool)

(assert (=> b!689274 m!652985))

(declare-fun m!652987 () Bool)

(assert (=> b!689274 m!652987))

(declare-fun m!652989 () Bool)

(assert (=> b!689270 m!652989))

(declare-fun m!652991 () Bool)

(assert (=> b!689284 m!652991))

(declare-fun m!652993 () Bool)

(assert (=> b!689265 m!652993))

(declare-fun m!652995 () Bool)

(assert (=> b!689287 m!652995))

(declare-fun m!652997 () Bool)

(assert (=> b!689279 m!652997))

(declare-fun m!652999 () Bool)

(assert (=> b!689264 m!652999))

(declare-fun m!653001 () Bool)

(assert (=> b!689281 m!653001))

(declare-fun m!653003 () Bool)

(assert (=> b!689281 m!653003))

(declare-fun m!653005 () Bool)

(assert (=> b!689281 m!653005))

(declare-fun m!653007 () Bool)

(assert (=> b!689281 m!653007))

(declare-fun m!653009 () Bool)

(assert (=> b!689281 m!653009))

(declare-fun m!653011 () Bool)

(assert (=> b!689281 m!653011))

(declare-fun m!653013 () Bool)

(assert (=> b!689281 m!653013))

(declare-fun m!653015 () Bool)

(assert (=> b!689281 m!653015))

(assert (=> b!689281 m!653005))

(declare-fun m!653017 () Bool)

(assert (=> b!689281 m!653017))

(declare-fun m!653019 () Bool)

(assert (=> b!689281 m!653019))

(declare-fun m!653021 () Bool)

(assert (=> b!689281 m!653021))

(declare-fun m!653023 () Bool)

(assert (=> b!689281 m!653023))

(declare-fun m!653025 () Bool)

(assert (=> b!689281 m!653025))

(assert (=> b!689285 m!652993))

(declare-fun m!653027 () Bool)

(assert (=> b!689268 m!653027))

(declare-fun m!653029 () Bool)

(assert (=> b!689263 m!653029))

(declare-fun m!653031 () Bool)

(assert (=> b!689278 m!653031))

(declare-fun m!653033 () Bool)

(assert (=> b!689267 m!653033))

(declare-fun m!653035 () Bool)

(assert (=> b!689286 m!653035))

(assert (=> b!689271 m!652999))

(declare-fun m!653037 () Bool)

(assert (=> b!689275 m!653037))

(assert (=> b!689273 m!653003))

(assert (=> b!689273 m!653005))

(declare-fun m!653039 () Bool)

(assert (=> b!689273 m!653039))

(declare-fun m!653041 () Bool)

(assert (=> b!689273 m!653041))

(assert (=> b!689273 m!653005))

(assert (=> b!689273 m!653039))

(assert (=> b!689273 m!653013))

(assert (=> b!689273 m!653021))

(declare-fun m!653043 () Bool)

(assert (=> start!61604 m!653043))

(declare-fun m!653045 () Bool)

(assert (=> b!689280 m!653045))

(check-sat (not b!689264) (not b!689286) (not b!689284) (not b!689274) (not b!689268) (not b!689265) (not b!689270) (not b!689263) (not b!689287) (not b!689281) (not b!689271) (not start!61604) (not b!689278) (not b!689275) (not b!689273) (not b!689279) (not b!689267) (not b!689285) (not b!689280))
