; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60878 () Bool)

(assert start!60878)

(declare-fun b!682242 () Bool)

(declare-fun e!388760 () Bool)

(declare-datatypes ((List!13031 0))(
  ( (Nil!13028) (Cons!13027 (h!14072 (_ BitVec 64)) (t!19282 List!13031)) )
))
(declare-fun acc!681 () List!13031)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3574 (List!13031 (_ BitVec 64)) Bool)

(assert (=> b!682242 (= e!388760 (not (contains!3574 acc!681 k0!2843)))))

(declare-fun b!682243 () Bool)

(declare-datatypes ((Unit!23922 0))(
  ( (Unit!23923) )
))
(declare-fun e!388759 () Unit!23922)

(declare-fun Unit!23924 () Unit!23922)

(assert (=> b!682243 (= e!388759 Unit!23924)))

(declare-fun lt!313470 () Unit!23922)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39518 0))(
  ( (array!39519 (arr!18937 (Array (_ BitVec 32) (_ BitVec 64))) (size!19301 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39518)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39518 (_ BitVec 64) (_ BitVec 32)) Unit!23922)

(assert (=> b!682243 (= lt!313470 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!682243 false))

(declare-fun b!682244 () Bool)

(declare-fun e!388761 () Bool)

(assert (=> b!682244 (= e!388761 (not (not (contains!3574 acc!681 k0!2843))))))

(declare-fun subseq!159 (List!13031 List!13031) Bool)

(assert (=> b!682244 (subseq!159 acc!681 acc!681)))

(declare-fun lt!313468 () Unit!23922)

(declare-fun lemmaListSubSeqRefl!0 (List!13031) Unit!23922)

(assert (=> b!682244 (= lt!313468 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!39518 (_ BitVec 32) List!13031) Bool)

(assert (=> b!682244 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313465 () Unit!23922)

(declare-fun e!388758 () Unit!23922)

(assert (=> b!682244 (= lt!313465 e!388758)))

(declare-fun c!77285 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682244 (= c!77285 (validKeyInArray!0 (select (arr!18937 a!3626) from!3004)))))

(declare-fun lt!313466 () Unit!23922)

(assert (=> b!682244 (= lt!313466 e!388759)))

(declare-fun c!77284 () Bool)

(declare-fun arrayContainsKey!0 (array!39518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682244 (= c!77284 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682244 (arrayContainsKey!0 (array!39519 (store (arr!18937 a!3626) i!1382 k0!2843) (size!19301 a!3626)) k0!2843 from!3004)))

(declare-fun b!682245 () Bool)

(declare-fun res!448412 () Bool)

(assert (=> b!682245 (=> (not res!448412) (not e!388761))))

(assert (=> b!682245 (= res!448412 (not (contains!3574 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682246 () Bool)

(declare-fun res!448416 () Bool)

(assert (=> b!682246 (=> (not res!448416) (not e!388761))))

(assert (=> b!682246 (= res!448416 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19301 a!3626))))))

(declare-fun res!448417 () Bool)

(assert (=> start!60878 (=> (not res!448417) (not e!388761))))

(assert (=> start!60878 (= res!448417 (and (bvslt (size!19301 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19301 a!3626))))))

(assert (=> start!60878 e!388761))

(assert (=> start!60878 true))

(declare-fun array_inv!14711 (array!39518) Bool)

(assert (=> start!60878 (array_inv!14711 a!3626)))

(declare-fun b!682247 () Bool)

(declare-fun lt!313469 () Unit!23922)

(assert (=> b!682247 (= e!388758 lt!313469)))

(declare-fun lt!313467 () Unit!23922)

(assert (=> b!682247 (= lt!313467 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682247 (subseq!159 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39518 List!13031 List!13031 (_ BitVec 32)) Unit!23922)

(declare-fun $colon$colon!323 (List!13031 (_ BitVec 64)) List!13031)

(assert (=> b!682247 (= lt!313469 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!323 acc!681 (select (arr!18937 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682247 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682248 () Bool)

(declare-fun res!448409 () Bool)

(assert (=> b!682248 (=> (not res!448409) (not e!388761))))

(declare-fun e!388756 () Bool)

(assert (=> b!682248 (= res!448409 e!388756)))

(declare-fun res!448408 () Bool)

(assert (=> b!682248 (=> res!448408 e!388756)))

(declare-fun e!388762 () Bool)

(assert (=> b!682248 (= res!448408 e!388762)))

(declare-fun res!448421 () Bool)

(assert (=> b!682248 (=> (not res!448421) (not e!388762))))

(assert (=> b!682248 (= res!448421 (bvsgt from!3004 i!1382))))

(declare-fun b!682249 () Bool)

(declare-fun Unit!23925 () Unit!23922)

(assert (=> b!682249 (= e!388759 Unit!23925)))

(declare-fun b!682250 () Bool)

(declare-fun res!448411 () Bool)

(assert (=> b!682250 (=> (not res!448411) (not e!388761))))

(assert (=> b!682250 (= res!448411 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682251 () Bool)

(declare-fun res!448410 () Bool)

(assert (=> b!682251 (=> (not res!448410) (not e!388761))))

(assert (=> b!682251 (= res!448410 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13028))))

(declare-fun b!682252 () Bool)

(declare-fun res!448419 () Bool)

(assert (=> b!682252 (=> (not res!448419) (not e!388761))))

(assert (=> b!682252 (= res!448419 (validKeyInArray!0 k0!2843))))

(declare-fun b!682253 () Bool)

(declare-fun res!448420 () Bool)

(assert (=> b!682253 (=> (not res!448420) (not e!388761))))

(declare-fun noDuplicate!821 (List!13031) Bool)

(assert (=> b!682253 (= res!448420 (noDuplicate!821 acc!681))))

(declare-fun b!682254 () Bool)

(declare-fun res!448415 () Bool)

(assert (=> b!682254 (=> (not res!448415) (not e!388761))))

(assert (=> b!682254 (= res!448415 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682255 () Bool)

(assert (=> b!682255 (= e!388762 (contains!3574 acc!681 k0!2843))))

(declare-fun b!682256 () Bool)

(declare-fun res!448413 () Bool)

(assert (=> b!682256 (=> (not res!448413) (not e!388761))))

(assert (=> b!682256 (= res!448413 (not (contains!3574 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682257 () Bool)

(assert (=> b!682257 (= e!388756 e!388760)))

(declare-fun res!448418 () Bool)

(assert (=> b!682257 (=> (not res!448418) (not e!388760))))

(assert (=> b!682257 (= res!448418 (bvsle from!3004 i!1382))))

(declare-fun b!682258 () Bool)

(declare-fun Unit!23926 () Unit!23922)

(assert (=> b!682258 (= e!388758 Unit!23926)))

(declare-fun b!682259 () Bool)

(declare-fun res!448414 () Bool)

(assert (=> b!682259 (=> (not res!448414) (not e!388761))))

(assert (=> b!682259 (= res!448414 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19301 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!60878 res!448417) b!682253))

(assert (= (and b!682253 res!448420) b!682245))

(assert (= (and b!682245 res!448412) b!682256))

(assert (= (and b!682256 res!448413) b!682248))

(assert (= (and b!682248 res!448421) b!682255))

(assert (= (and b!682248 (not res!448408)) b!682257))

(assert (= (and b!682257 res!448418) b!682242))

(assert (= (and b!682248 res!448409) b!682251))

(assert (= (and b!682251 res!448410) b!682250))

(assert (= (and b!682250 res!448411) b!682246))

(assert (= (and b!682246 res!448416) b!682252))

(assert (= (and b!682252 res!448419) b!682254))

(assert (= (and b!682254 res!448415) b!682259))

(assert (= (and b!682259 res!448414) b!682244))

(assert (= (and b!682244 c!77284) b!682243))

(assert (= (and b!682244 (not c!77284)) b!682249))

(assert (= (and b!682244 c!77285) b!682247))

(assert (= (and b!682244 (not c!77285)) b!682258))

(declare-fun m!647011 () Bool)

(assert (=> b!682245 m!647011))

(declare-fun m!647013 () Bool)

(assert (=> b!682254 m!647013))

(declare-fun m!647015 () Bool)

(assert (=> start!60878 m!647015))

(declare-fun m!647017 () Bool)

(assert (=> b!682247 m!647017))

(declare-fun m!647019 () Bool)

(assert (=> b!682247 m!647019))

(declare-fun m!647021 () Bool)

(assert (=> b!682247 m!647021))

(declare-fun m!647023 () Bool)

(assert (=> b!682247 m!647023))

(assert (=> b!682247 m!647019))

(assert (=> b!682247 m!647021))

(declare-fun m!647025 () Bool)

(assert (=> b!682247 m!647025))

(declare-fun m!647027 () Bool)

(assert (=> b!682247 m!647027))

(declare-fun m!647029 () Bool)

(assert (=> b!682250 m!647029))

(declare-fun m!647031 () Bool)

(assert (=> b!682252 m!647031))

(assert (=> b!682244 m!647017))

(assert (=> b!682244 m!647019))

(declare-fun m!647033 () Bool)

(assert (=> b!682244 m!647033))

(declare-fun m!647035 () Bool)

(assert (=> b!682244 m!647035))

(assert (=> b!682244 m!647025))

(declare-fun m!647037 () Bool)

(assert (=> b!682244 m!647037))

(assert (=> b!682244 m!647019))

(declare-fun m!647039 () Bool)

(assert (=> b!682244 m!647039))

(declare-fun m!647041 () Bool)

(assert (=> b!682244 m!647041))

(assert (=> b!682244 m!647027))

(assert (=> b!682242 m!647033))

(assert (=> b!682255 m!647033))

(declare-fun m!647043 () Bool)

(assert (=> b!682253 m!647043))

(declare-fun m!647045 () Bool)

(assert (=> b!682251 m!647045))

(declare-fun m!647047 () Bool)

(assert (=> b!682256 m!647047))

(declare-fun m!647049 () Bool)

(assert (=> b!682243 m!647049))

(check-sat (not b!682245) (not b!682243) (not b!682252) (not b!682251) (not b!682254) (not b!682242) (not b!682247) (not b!682250) (not b!682255) (not start!60878) (not b!682253) (not b!682256) (not b!682244))
(check-sat)
