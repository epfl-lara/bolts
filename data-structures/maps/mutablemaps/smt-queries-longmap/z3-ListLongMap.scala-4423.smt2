; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61280 () Bool)

(assert start!61280)

(declare-fun b!685998 () Bool)

(declare-fun e!390700 () Bool)

(declare-datatypes ((List!13076 0))(
  ( (Nil!13073) (Cons!13072 (h!14117 (_ BitVec 64)) (t!19339 List!13076)) )
))
(declare-fun acc!681 () List!13076)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3619 (List!13076 (_ BitVec 64)) Bool)

(assert (=> b!685998 (= e!390700 (contains!3619 acc!681 k0!2843))))

(declare-fun b!685999 () Bool)

(declare-datatypes ((Unit!24147 0))(
  ( (Unit!24148) )
))
(declare-fun e!390704 () Unit!24147)

(declare-fun lt!314872 () Unit!24147)

(assert (=> b!685999 (= e!390704 lt!314872)))

(declare-fun lt!314873 () Unit!24147)

(declare-fun lemmaListSubSeqRefl!0 (List!13076) Unit!24147)

(assert (=> b!685999 (= lt!314873 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!204 (List!13076 List!13076) Bool)

(assert (=> b!685999 (subseq!204 acc!681 acc!681)))

(declare-datatypes ((array!39620 0))(
  ( (array!39621 (arr!18982 (Array (_ BitVec 32) (_ BitVec 64))) (size!19355 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39620)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39620 List!13076 List!13076 (_ BitVec 32)) Unit!24147)

(declare-fun $colon$colon!368 (List!13076 (_ BitVec 64)) List!13076)

(assert (=> b!685999 (= lt!314872 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!368 acc!681 (select (arr!18982 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39620 (_ BitVec 32) List!13076) Bool)

(assert (=> b!685999 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686000 () Bool)

(declare-fun res!451367 () Bool)

(declare-fun e!390706 () Bool)

(assert (=> b!686000 (=> (not res!451367) (not e!390706))))

(assert (=> b!686000 (= res!451367 (not (contains!3619 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686001 () Bool)

(declare-fun res!451373 () Bool)

(assert (=> b!686001 (=> (not res!451373) (not e!390706))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!686001 (= res!451373 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19355 a!3626))))))

(declare-fun res!451363 () Bool)

(assert (=> start!61280 (=> (not res!451363) (not e!390706))))

(assert (=> start!61280 (= res!451363 (and (bvslt (size!19355 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19355 a!3626))))))

(assert (=> start!61280 e!390706))

(assert (=> start!61280 true))

(declare-fun array_inv!14756 (array!39620) Bool)

(assert (=> start!61280 (array_inv!14756 a!3626)))

(declare-fun b!686002 () Bool)

(declare-fun res!451362 () Bool)

(assert (=> b!686002 (=> (not res!451362) (not e!390706))))

(assert (=> b!686002 (= res!451362 (not (contains!3619 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686003 () Bool)

(declare-fun Unit!24149 () Unit!24147)

(assert (=> b!686003 (= e!390704 Unit!24149)))

(declare-fun b!686004 () Bool)

(declare-fun e!390705 () Unit!24147)

(declare-fun Unit!24150 () Unit!24147)

(assert (=> b!686004 (= e!390705 Unit!24150)))

(declare-fun b!686005 () Bool)

(declare-fun res!451366 () Bool)

(assert (=> b!686005 (=> (not res!451366) (not e!390706))))

(assert (=> b!686005 (= res!451366 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19355 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686006 () Bool)

(declare-fun res!451361 () Bool)

(assert (=> b!686006 (=> (not res!451361) (not e!390706))))

(assert (=> b!686006 (= res!451361 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13073))))

(declare-fun b!686007 () Bool)

(declare-fun res!451371 () Bool)

(assert (=> b!686007 (=> (not res!451371) (not e!390706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686007 (= res!451371 (validKeyInArray!0 k0!2843))))

(declare-fun b!686008 () Bool)

(declare-fun res!451369 () Bool)

(assert (=> b!686008 (=> (not res!451369) (not e!390706))))

(declare-fun e!390703 () Bool)

(assert (=> b!686008 (= res!451369 e!390703)))

(declare-fun res!451365 () Bool)

(assert (=> b!686008 (=> res!451365 e!390703)))

(assert (=> b!686008 (= res!451365 e!390700)))

(declare-fun res!451370 () Bool)

(assert (=> b!686008 (=> (not res!451370) (not e!390700))))

(assert (=> b!686008 (= res!451370 (bvsgt from!3004 i!1382))))

(declare-fun b!686009 () Bool)

(declare-fun res!451360 () Bool)

(assert (=> b!686009 (=> (not res!451360) (not e!390706))))

(assert (=> b!686009 (= res!451360 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686010 () Bool)

(declare-fun e!390702 () Bool)

(assert (=> b!686010 (= e!390702 (not (contains!3619 acc!681 k0!2843)))))

(declare-fun b!686011 () Bool)

(assert (=> b!686011 (= e!390706 (not true))))

(declare-fun lt!314868 () List!13076)

(assert (=> b!686011 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!314868)))

(declare-fun lt!314871 () Unit!24147)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39620 (_ BitVec 64) (_ BitVec 32) List!13076 List!13076) Unit!24147)

(assert (=> b!686011 (= lt!314871 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!314868))))

(declare-fun -!169 (List!13076 (_ BitVec 64)) List!13076)

(assert (=> b!686011 (= (-!169 lt!314868 k0!2843) acc!681)))

(assert (=> b!686011 (= lt!314868 ($colon$colon!368 acc!681 k0!2843))))

(declare-fun lt!314870 () Unit!24147)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13076) Unit!24147)

(assert (=> b!686011 (= lt!314870 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!686011 (subseq!204 acc!681 acc!681)))

(declare-fun lt!314866 () Unit!24147)

(assert (=> b!686011 (= lt!314866 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686011 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314869 () Unit!24147)

(assert (=> b!686011 (= lt!314869 e!390704)))

(declare-fun c!77687 () Bool)

(assert (=> b!686011 (= c!77687 (validKeyInArray!0 (select (arr!18982 a!3626) from!3004)))))

(declare-fun lt!314874 () Unit!24147)

(assert (=> b!686011 (= lt!314874 e!390705)))

(declare-fun c!77686 () Bool)

(declare-fun arrayContainsKey!0 (array!39620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686011 (= c!77686 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686011 (arrayContainsKey!0 (array!39621 (store (arr!18982 a!3626) i!1382 k0!2843) (size!19355 a!3626)) k0!2843 from!3004)))

(declare-fun b!686012 () Bool)

(declare-fun res!451368 () Bool)

(assert (=> b!686012 (=> (not res!451368) (not e!390706))))

(assert (=> b!686012 (= res!451368 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686013 () Bool)

(declare-fun Unit!24151 () Unit!24147)

(assert (=> b!686013 (= e!390705 Unit!24151)))

(declare-fun lt!314867 () Unit!24147)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39620 (_ BitVec 64) (_ BitVec 32)) Unit!24147)

(assert (=> b!686013 (= lt!314867 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!686013 false))

(declare-fun b!686014 () Bool)

(assert (=> b!686014 (= e!390703 e!390702)))

(declare-fun res!451364 () Bool)

(assert (=> b!686014 (=> (not res!451364) (not e!390702))))

(assert (=> b!686014 (= res!451364 (bvsle from!3004 i!1382))))

(declare-fun b!686015 () Bool)

(declare-fun res!451372 () Bool)

(assert (=> b!686015 (=> (not res!451372) (not e!390706))))

(declare-fun noDuplicate!866 (List!13076) Bool)

(assert (=> b!686015 (= res!451372 (noDuplicate!866 acc!681))))

(assert (= (and start!61280 res!451363) b!686015))

(assert (= (and b!686015 res!451372) b!686002))

(assert (= (and b!686002 res!451362) b!686000))

(assert (= (and b!686000 res!451367) b!686008))

(assert (= (and b!686008 res!451370) b!685998))

(assert (= (and b!686008 (not res!451365)) b!686014))

(assert (= (and b!686014 res!451364) b!686010))

(assert (= (and b!686008 res!451369) b!686006))

(assert (= (and b!686006 res!451361) b!686009))

(assert (= (and b!686009 res!451360) b!686001))

(assert (= (and b!686001 res!451373) b!686007))

(assert (= (and b!686007 res!451371) b!686012))

(assert (= (and b!686012 res!451368) b!686005))

(assert (= (and b!686005 res!451366) b!686011))

(assert (= (and b!686011 c!77686) b!686013))

(assert (= (and b!686011 (not c!77686)) b!686004))

(assert (= (and b!686011 c!77687) b!685999))

(assert (= (and b!686011 (not c!77687)) b!686003))

(declare-fun m!650183 () Bool)

(assert (=> b!685998 m!650183))

(declare-fun m!650185 () Bool)

(assert (=> b!686013 m!650185))

(declare-fun m!650187 () Bool)

(assert (=> start!61280 m!650187))

(assert (=> b!686010 m!650183))

(declare-fun m!650189 () Bool)

(assert (=> b!686007 m!650189))

(declare-fun m!650191 () Bool)

(assert (=> b!686011 m!650191))

(declare-fun m!650193 () Bool)

(assert (=> b!686011 m!650193))

(declare-fun m!650195 () Bool)

(assert (=> b!686011 m!650195))

(declare-fun m!650197 () Bool)

(assert (=> b!686011 m!650197))

(declare-fun m!650199 () Bool)

(assert (=> b!686011 m!650199))

(declare-fun m!650201 () Bool)

(assert (=> b!686011 m!650201))

(declare-fun m!650203 () Bool)

(assert (=> b!686011 m!650203))

(declare-fun m!650205 () Bool)

(assert (=> b!686011 m!650205))

(declare-fun m!650207 () Bool)

(assert (=> b!686011 m!650207))

(declare-fun m!650209 () Bool)

(assert (=> b!686011 m!650209))

(assert (=> b!686011 m!650193))

(declare-fun m!650211 () Bool)

(assert (=> b!686011 m!650211))

(declare-fun m!650213 () Bool)

(assert (=> b!686011 m!650213))

(declare-fun m!650215 () Bool)

(assert (=> b!686011 m!650215))

(declare-fun m!650217 () Bool)

(assert (=> b!686009 m!650217))

(declare-fun m!650219 () Bool)

(assert (=> b!686002 m!650219))

(declare-fun m!650221 () Bool)

(assert (=> b!686006 m!650221))

(assert (=> b!685999 m!650191))

(assert (=> b!685999 m!650193))

(declare-fun m!650223 () Bool)

(assert (=> b!685999 m!650223))

(declare-fun m!650225 () Bool)

(assert (=> b!685999 m!650225))

(assert (=> b!685999 m!650193))

(assert (=> b!685999 m!650223))

(assert (=> b!685999 m!650205))

(assert (=> b!685999 m!650215))

(declare-fun m!650227 () Bool)

(assert (=> b!686012 m!650227))

(declare-fun m!650229 () Bool)

(assert (=> b!686000 m!650229))

(declare-fun m!650231 () Bool)

(assert (=> b!686015 m!650231))

(check-sat (not b!686013) (not b!686007) (not b!686012) (not b!686006) (not b!686010) (not b!686015) (not b!686009) (not b!686011) (not b!685999) (not b!686000) (not b!686002) (not b!685998) (not start!61280))
