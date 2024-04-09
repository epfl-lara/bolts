; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60006 () Bool)

(assert start!60006)

(declare-fun b!665984 () Bool)

(declare-fun res!433572 () Bool)

(declare-fun e!381486 () Bool)

(assert (=> b!665984 (=> res!433572 e!381486)))

(declare-datatypes ((List!12787 0))(
  ( (Nil!12784) (Cons!12783 (h!13828 (_ BitVec 64)) (t!19023 List!12787)) )
))
(declare-fun acc!681 () List!12787)

(declare-fun lt!310271 () List!12787)

(declare-fun subseq!68 (List!12787 List!12787) Bool)

(assert (=> b!665984 (= res!433572 (not (subseq!68 acc!681 lt!310271)))))

(declare-fun b!665985 () Bool)

(declare-datatypes ((Unit!23260 0))(
  ( (Unit!23261) )
))
(declare-fun e!381488 () Unit!23260)

(declare-fun Unit!23262 () Unit!23260)

(assert (=> b!665985 (= e!381488 Unit!23262)))

(declare-fun lt!310266 () Unit!23260)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39009 0))(
  ( (array!39010 (arr!18693 (Array (_ BitVec 32) (_ BitVec 64))) (size!19057 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39009)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39009 (_ BitVec 64) (_ BitVec 32)) Unit!23260)

(assert (=> b!665985 (= lt!310266 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!665985 false))

(declare-fun b!665986 () Bool)

(declare-fun res!433581 () Bool)

(declare-fun e!381483 () Bool)

(assert (=> b!665986 (=> (not res!433581) (not e!381483))))

(declare-fun arrayContainsKey!0 (array!39009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665986 (= res!433581 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665987 () Bool)

(declare-fun res!433576 () Bool)

(assert (=> b!665987 (=> (not res!433576) (not e!381483))))

(declare-fun contains!3330 (List!12787 (_ BitVec 64)) Bool)

(assert (=> b!665987 (= res!433576 (not (contains!3330 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665988 () Bool)

(declare-fun res!433585 () Bool)

(assert (=> b!665988 (=> (not res!433585) (not e!381483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665988 (= res!433585 (validKeyInArray!0 k!2843))))

(declare-fun b!665989 () Bool)

(declare-fun Unit!23263 () Unit!23260)

(assert (=> b!665989 (= e!381488 Unit!23263)))

(declare-fun b!665990 () Bool)

(declare-fun res!433586 () Bool)

(assert (=> b!665990 (=> (not res!433586) (not e!381483))))

(declare-fun arrayNoDuplicates!0 (array!39009 (_ BitVec 32) List!12787) Bool)

(assert (=> b!665990 (= res!433586 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665991 () Bool)

(declare-fun e!381489 () Bool)

(assert (=> b!665991 (= e!381489 (contains!3330 acc!681 k!2843))))

(declare-fun b!665992 () Bool)

(assert (=> b!665992 (= e!381483 (not e!381486))))

(declare-fun res!433574 () Bool)

(assert (=> b!665992 (=> res!433574 e!381486)))

(assert (=> b!665992 (= res!433574 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!66 (List!12787 (_ BitVec 64)) List!12787)

(assert (=> b!665992 (= (-!66 lt!310271 k!2843) acc!681)))

(declare-fun $colon$colon!199 (List!12787 (_ BitVec 64)) List!12787)

(assert (=> b!665992 (= lt!310271 ($colon$colon!199 acc!681 k!2843))))

(declare-fun lt!310270 () Unit!23260)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12787) Unit!23260)

(assert (=> b!665992 (= lt!310270 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!665992 (subseq!68 acc!681 acc!681)))

(declare-fun lt!310264 () Unit!23260)

(declare-fun lemmaListSubSeqRefl!0 (List!12787) Unit!23260)

(assert (=> b!665992 (= lt!310264 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665992 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310265 () Unit!23260)

(declare-fun e!381490 () Unit!23260)

(assert (=> b!665992 (= lt!310265 e!381490)))

(declare-fun c!76576 () Bool)

(assert (=> b!665992 (= c!76576 (validKeyInArray!0 (select (arr!18693 a!3626) from!3004)))))

(declare-fun lt!310267 () Unit!23260)

(assert (=> b!665992 (= lt!310267 e!381488)))

(declare-fun c!76577 () Bool)

(declare-fun lt!310272 () Bool)

(assert (=> b!665992 (= c!76577 lt!310272)))

(assert (=> b!665992 (= lt!310272 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!665992 (arrayContainsKey!0 (array!39010 (store (arr!18693 a!3626) i!1382 k!2843) (size!19057 a!3626)) k!2843 from!3004)))

(declare-fun b!665993 () Bool)

(declare-fun res!433569 () Bool)

(assert (=> b!665993 (=> res!433569 e!381486)))

(assert (=> b!665993 (= res!433569 lt!310272)))

(declare-fun b!665994 () Bool)

(declare-fun Unit!23264 () Unit!23260)

(assert (=> b!665994 (= e!381490 Unit!23264)))

(declare-fun b!665995 () Bool)

(declare-fun res!433567 () Bool)

(assert (=> b!665995 (=> (not res!433567) (not e!381483))))

(assert (=> b!665995 (= res!433567 (not (contains!3330 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665996 () Bool)

(declare-fun res!433582 () Bool)

(assert (=> b!665996 (=> res!433582 e!381486)))

(assert (=> b!665996 (= res!433582 (not (contains!3330 lt!310271 k!2843)))))

(declare-fun b!665998 () Bool)

(declare-fun res!433584 () Bool)

(assert (=> b!665998 (=> (not res!433584) (not e!381483))))

(assert (=> b!665998 (= res!433584 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19057 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665999 () Bool)

(declare-fun res!433575 () Bool)

(assert (=> b!665999 (=> (not res!433575) (not e!381483))))

(assert (=> b!665999 (= res!433575 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12784))))

(declare-fun b!666000 () Bool)

(declare-fun res!433580 () Bool)

(assert (=> b!666000 (=> (not res!433580) (not e!381483))))

(declare-fun e!381485 () Bool)

(assert (=> b!666000 (= res!433580 e!381485)))

(declare-fun res!433573 () Bool)

(assert (=> b!666000 (=> res!433573 e!381485)))

(assert (=> b!666000 (= res!433573 e!381489)))

(declare-fun res!433571 () Bool)

(assert (=> b!666000 (=> (not res!433571) (not e!381489))))

(assert (=> b!666000 (= res!433571 (bvsgt from!3004 i!1382))))

(declare-fun b!666001 () Bool)

(declare-fun res!433566 () Bool)

(assert (=> b!666001 (=> res!433566 e!381486)))

(declare-fun noDuplicate!577 (List!12787) Bool)

(assert (=> b!666001 (= res!433566 (not (noDuplicate!577 lt!310271)))))

(declare-fun b!666002 () Bool)

(declare-fun e!381484 () Bool)

(assert (=> b!666002 (= e!381484 (not (contains!3330 acc!681 k!2843)))))

(declare-fun b!666003 () Bool)

(declare-fun res!433583 () Bool)

(assert (=> b!666003 (=> res!433583 e!381486)))

(assert (=> b!666003 (= res!433583 (contains!3330 lt!310271 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666004 () Bool)

(declare-fun lt!310263 () Unit!23260)

(assert (=> b!666004 (= e!381490 lt!310263)))

(declare-fun lt!310268 () Unit!23260)

(assert (=> b!666004 (= lt!310268 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666004 (subseq!68 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39009 List!12787 List!12787 (_ BitVec 32)) Unit!23260)

(assert (=> b!666004 (= lt!310263 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!199 acc!681 (select (arr!18693 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666004 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666005 () Bool)

(declare-fun res!433579 () Bool)

(assert (=> b!666005 (=> res!433579 e!381486)))

(assert (=> b!666005 (= res!433579 (contains!3330 acc!681 k!2843))))

(declare-fun b!666006 () Bool)

(assert (=> b!666006 (= e!381486 true)))

(declare-fun lt!310269 () Bool)

(assert (=> b!666006 (= lt!310269 (contains!3330 lt!310271 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666007 () Bool)

(declare-fun res!433578 () Bool)

(assert (=> b!666007 (=> (not res!433578) (not e!381483))))

(assert (=> b!666007 (= res!433578 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19057 a!3626))))))

(declare-fun b!666008 () Bool)

(declare-fun res!433577 () Bool)

(assert (=> b!666008 (=> (not res!433577) (not e!381483))))

(assert (=> b!666008 (= res!433577 (noDuplicate!577 acc!681))))

(declare-fun b!665997 () Bool)

(assert (=> b!665997 (= e!381485 e!381484)))

(declare-fun res!433570 () Bool)

(assert (=> b!665997 (=> (not res!433570) (not e!381484))))

(assert (=> b!665997 (= res!433570 (bvsle from!3004 i!1382))))

(declare-fun res!433568 () Bool)

(assert (=> start!60006 (=> (not res!433568) (not e!381483))))

(assert (=> start!60006 (= res!433568 (and (bvslt (size!19057 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19057 a!3626))))))

(assert (=> start!60006 e!381483))

(assert (=> start!60006 true))

(declare-fun array_inv!14467 (array!39009) Bool)

(assert (=> start!60006 (array_inv!14467 a!3626)))

(assert (= (and start!60006 res!433568) b!666008))

(assert (= (and b!666008 res!433577) b!665987))

(assert (= (and b!665987 res!433576) b!665995))

(assert (= (and b!665995 res!433567) b!666000))

(assert (= (and b!666000 res!433571) b!665991))

(assert (= (and b!666000 (not res!433573)) b!665997))

(assert (= (and b!665997 res!433570) b!666002))

(assert (= (and b!666000 res!433580) b!665999))

(assert (= (and b!665999 res!433575) b!665990))

(assert (= (and b!665990 res!433586) b!666007))

(assert (= (and b!666007 res!433578) b!665988))

(assert (= (and b!665988 res!433585) b!665986))

(assert (= (and b!665986 res!433581) b!665998))

(assert (= (and b!665998 res!433584) b!665992))

(assert (= (and b!665992 c!76577) b!665985))

(assert (= (and b!665992 (not c!76577)) b!665989))

(assert (= (and b!665992 c!76576) b!666004))

(assert (= (and b!665992 (not c!76576)) b!665994))

(assert (= (and b!665992 (not res!433574)) b!666001))

(assert (= (and b!666001 (not res!433566)) b!665993))

(assert (= (and b!665993 (not res!433569)) b!666005))

(assert (= (and b!666005 (not res!433579)) b!665984))

(assert (= (and b!665984 (not res!433572)) b!665996))

(assert (= (and b!665996 (not res!433582)) b!666003))

(assert (= (and b!666003 (not res!433583)) b!666006))

(declare-fun m!636915 () Bool)

(assert (=> b!666004 m!636915))

(declare-fun m!636917 () Bool)

(assert (=> b!666004 m!636917))

(declare-fun m!636919 () Bool)

(assert (=> b!666004 m!636919))

(declare-fun m!636921 () Bool)

(assert (=> b!666004 m!636921))

(assert (=> b!666004 m!636917))

(assert (=> b!666004 m!636919))

(declare-fun m!636923 () Bool)

(assert (=> b!666004 m!636923))

(declare-fun m!636925 () Bool)

(assert (=> b!666004 m!636925))

(declare-fun m!636927 () Bool)

(assert (=> b!665987 m!636927))

(declare-fun m!636929 () Bool)

(assert (=> b!665985 m!636929))

(declare-fun m!636931 () Bool)

(assert (=> b!665991 m!636931))

(assert (=> b!666002 m!636931))

(assert (=> b!665992 m!636915))

(assert (=> b!665992 m!636917))

(declare-fun m!636933 () Bool)

(assert (=> b!665992 m!636933))

(assert (=> b!665992 m!636923))

(declare-fun m!636935 () Bool)

(assert (=> b!665992 m!636935))

(declare-fun m!636937 () Bool)

(assert (=> b!665992 m!636937))

(assert (=> b!665992 m!636917))

(declare-fun m!636939 () Bool)

(assert (=> b!665992 m!636939))

(declare-fun m!636941 () Bool)

(assert (=> b!665992 m!636941))

(declare-fun m!636943 () Bool)

(assert (=> b!665992 m!636943))

(declare-fun m!636945 () Bool)

(assert (=> b!665992 m!636945))

(assert (=> b!665992 m!636925))

(declare-fun m!636947 () Bool)

(assert (=> b!665996 m!636947))

(assert (=> b!666005 m!636931))

(declare-fun m!636949 () Bool)

(assert (=> b!666008 m!636949))

(declare-fun m!636951 () Bool)

(assert (=> b!665999 m!636951))

(declare-fun m!636953 () Bool)

(assert (=> b!665990 m!636953))

(declare-fun m!636955 () Bool)

(assert (=> b!666006 m!636955))

(declare-fun m!636957 () Bool)

(assert (=> b!665986 m!636957))

(declare-fun m!636959 () Bool)

(assert (=> b!665984 m!636959))

(declare-fun m!636961 () Bool)

(assert (=> b!666003 m!636961))

(declare-fun m!636963 () Bool)

(assert (=> start!60006 m!636963))

(declare-fun m!636965 () Bool)

(assert (=> b!665995 m!636965))

(declare-fun m!636967 () Bool)

(assert (=> b!665988 m!636967))

(declare-fun m!636969 () Bool)

(assert (=> b!666001 m!636969))

(push 1)

(assert (not b!665996))

(assert (not b!666008))

(assert (not b!665995))

(assert (not b!665992))

(assert (not b!665987))

(assert (not b!666005))

(assert (not b!665999))

(assert (not start!60006))

(assert (not b!665991))

(assert (not b!665984))

(assert (not b!665990))

(assert (not b!665988))

(assert (not b!666002))

(assert (not b!665985))

(assert (not b!666003))

(assert (not b!666004))

(assert (not b!666001))

(assert (not b!666006))

(assert (not b!665986))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

