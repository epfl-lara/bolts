; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61284 () Bool)

(assert start!61284)

(declare-fun b!686106 () Bool)

(declare-fun res!451448 () Bool)

(declare-fun e!390748 () Bool)

(assert (=> b!686106 (=> (not res!451448) (not e!390748))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39624 0))(
  ( (array!39625 (arr!18984 (Array (_ BitVec 32) (_ BitVec 64))) (size!19357 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39624)

(assert (=> b!686106 (= res!451448 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19357 a!3626))))))

(declare-fun b!686107 () Bool)

(declare-datatypes ((Unit!24157 0))(
  ( (Unit!24158) )
))
(declare-fun e!390746 () Unit!24157)

(declare-fun lt!314925 () Unit!24157)

(assert (=> b!686107 (= e!390746 lt!314925)))

(declare-fun lt!314926 () Unit!24157)

(declare-datatypes ((List!13078 0))(
  ( (Nil!13075) (Cons!13074 (h!14119 (_ BitVec 64)) (t!19341 List!13078)) )
))
(declare-fun acc!681 () List!13078)

(declare-fun lemmaListSubSeqRefl!0 (List!13078) Unit!24157)

(assert (=> b!686107 (= lt!314926 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!206 (List!13078 List!13078) Bool)

(assert (=> b!686107 (subseq!206 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39624 List!13078 List!13078 (_ BitVec 32)) Unit!24157)

(declare-fun $colon$colon!370 (List!13078 (_ BitVec 64)) List!13078)

(assert (=> b!686107 (= lt!314925 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!370 acc!681 (select (arr!18984 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39624 (_ BitVec 32) List!13078) Bool)

(assert (=> b!686107 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686108 () Bool)

(assert (=> b!686108 (= e!390748 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun lt!314924 () List!13078)

(assert (=> b!686108 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!314924)))

(declare-fun lt!314927 () Unit!24157)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39624 (_ BitVec 64) (_ BitVec 32) List!13078 List!13078) Unit!24157)

(assert (=> b!686108 (= lt!314927 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!314924))))

(declare-fun -!171 (List!13078 (_ BitVec 64)) List!13078)

(assert (=> b!686108 (= (-!171 lt!314924 k!2843) acc!681)))

(assert (=> b!686108 (= lt!314924 ($colon$colon!370 acc!681 k!2843))))

(declare-fun lt!314928 () Unit!24157)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13078) Unit!24157)

(assert (=> b!686108 (= lt!314928 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!686108 (subseq!206 acc!681 acc!681)))

(declare-fun lt!314921 () Unit!24157)

(assert (=> b!686108 (= lt!314921 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686108 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314922 () Unit!24157)

(assert (=> b!686108 (= lt!314922 e!390746)))

(declare-fun c!77698 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686108 (= c!77698 (validKeyInArray!0 (select (arr!18984 a!3626) from!3004)))))

(declare-fun lt!314920 () Unit!24157)

(declare-fun e!390742 () Unit!24157)

(assert (=> b!686108 (= lt!314920 e!390742)))

(declare-fun c!77699 () Bool)

(declare-fun arrayContainsKey!0 (array!39624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686108 (= c!77699 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686108 (arrayContainsKey!0 (array!39625 (store (arr!18984 a!3626) i!1382 k!2843) (size!19357 a!3626)) k!2843 from!3004)))

(declare-fun b!686109 () Bool)

(declare-fun e!390744 () Bool)

(declare-fun e!390747 () Bool)

(assert (=> b!686109 (= e!390744 e!390747)))

(declare-fun res!451449 () Bool)

(assert (=> b!686109 (=> (not res!451449) (not e!390747))))

(assert (=> b!686109 (= res!451449 (bvsle from!3004 i!1382))))

(declare-fun res!451456 () Bool)

(assert (=> start!61284 (=> (not res!451456) (not e!390748))))

(assert (=> start!61284 (= res!451456 (and (bvslt (size!19357 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19357 a!3626))))))

(assert (=> start!61284 e!390748))

(assert (=> start!61284 true))

(declare-fun array_inv!14758 (array!39624) Bool)

(assert (=> start!61284 (array_inv!14758 a!3626)))

(declare-fun b!686110 () Bool)

(declare-fun res!451450 () Bool)

(assert (=> b!686110 (=> (not res!451450) (not e!390748))))

(declare-fun noDuplicate!868 (List!13078) Bool)

(assert (=> b!686110 (= res!451450 (noDuplicate!868 acc!681))))

(declare-fun b!686111 () Bool)

(declare-fun e!390745 () Bool)

(declare-fun contains!3621 (List!13078 (_ BitVec 64)) Bool)

(assert (=> b!686111 (= e!390745 (contains!3621 acc!681 k!2843))))

(declare-fun b!686112 () Bool)

(declare-fun res!451457 () Bool)

(assert (=> b!686112 (=> (not res!451457) (not e!390748))))

(assert (=> b!686112 (= res!451457 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13075))))

(declare-fun b!686113 () Bool)

(declare-fun res!451451 () Bool)

(assert (=> b!686113 (=> (not res!451451) (not e!390748))))

(assert (=> b!686113 (= res!451451 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686114 () Bool)

(assert (=> b!686114 (= e!390747 (not (contains!3621 acc!681 k!2843)))))

(declare-fun b!686115 () Bool)

(declare-fun res!451444 () Bool)

(assert (=> b!686115 (=> (not res!451444) (not e!390748))))

(assert (=> b!686115 (= res!451444 (validKeyInArray!0 k!2843))))

(declare-fun b!686116 () Bool)

(declare-fun res!451454 () Bool)

(assert (=> b!686116 (=> (not res!451454) (not e!390748))))

(assert (=> b!686116 (= res!451454 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686117 () Bool)

(declare-fun res!451455 () Bool)

(assert (=> b!686117 (=> (not res!451455) (not e!390748))))

(assert (=> b!686117 (= res!451455 (not (contains!3621 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686118 () Bool)

(declare-fun Unit!24159 () Unit!24157)

(assert (=> b!686118 (= e!390742 Unit!24159)))

(declare-fun b!686119 () Bool)

(declare-fun res!451447 () Bool)

(assert (=> b!686119 (=> (not res!451447) (not e!390748))))

(assert (=> b!686119 (= res!451447 e!390744)))

(declare-fun res!451452 () Bool)

(assert (=> b!686119 (=> res!451452 e!390744)))

(assert (=> b!686119 (= res!451452 e!390745)))

(declare-fun res!451453 () Bool)

(assert (=> b!686119 (=> (not res!451453) (not e!390745))))

(assert (=> b!686119 (= res!451453 (bvsgt from!3004 i!1382))))

(declare-fun b!686120 () Bool)

(declare-fun Unit!24160 () Unit!24157)

(assert (=> b!686120 (= e!390742 Unit!24160)))

(declare-fun lt!314923 () Unit!24157)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39624 (_ BitVec 64) (_ BitVec 32)) Unit!24157)

(assert (=> b!686120 (= lt!314923 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!686120 false))

(declare-fun b!686121 () Bool)

(declare-fun res!451446 () Bool)

(assert (=> b!686121 (=> (not res!451446) (not e!390748))))

(assert (=> b!686121 (= res!451446 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19357 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686122 () Bool)

(declare-fun res!451445 () Bool)

(assert (=> b!686122 (=> (not res!451445) (not e!390748))))

(assert (=> b!686122 (= res!451445 (not (contains!3621 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686123 () Bool)

(declare-fun Unit!24161 () Unit!24157)

(assert (=> b!686123 (= e!390746 Unit!24161)))

(assert (= (and start!61284 res!451456) b!686110))

(assert (= (and b!686110 res!451450) b!686117))

(assert (= (and b!686117 res!451455) b!686122))

(assert (= (and b!686122 res!451445) b!686119))

(assert (= (and b!686119 res!451453) b!686111))

(assert (= (and b!686119 (not res!451452)) b!686109))

(assert (= (and b!686109 res!451449) b!686114))

(assert (= (and b!686119 res!451447) b!686112))

(assert (= (and b!686112 res!451457) b!686113))

(assert (= (and b!686113 res!451451) b!686106))

(assert (= (and b!686106 res!451448) b!686115))

(assert (= (and b!686115 res!451444) b!686116))

(assert (= (and b!686116 res!451454) b!686121))

(assert (= (and b!686121 res!451446) b!686108))

(assert (= (and b!686108 c!77699) b!686120))

(assert (= (and b!686108 (not c!77699)) b!686118))

(assert (= (and b!686108 c!77698) b!686107))

(assert (= (and b!686108 (not c!77698)) b!686123))

(declare-fun m!650283 () Bool)

(assert (=> b!686117 m!650283))

(declare-fun m!650285 () Bool)

(assert (=> b!686113 m!650285))

(declare-fun m!650287 () Bool)

(assert (=> b!686120 m!650287))

(declare-fun m!650289 () Bool)

(assert (=> b!686108 m!650289))

(declare-fun m!650291 () Bool)

(assert (=> b!686108 m!650291))

(declare-fun m!650293 () Bool)

(assert (=> b!686108 m!650293))

(declare-fun m!650295 () Bool)

(assert (=> b!686108 m!650295))

(declare-fun m!650297 () Bool)

(assert (=> b!686108 m!650297))

(declare-fun m!650299 () Bool)

(assert (=> b!686108 m!650299))

(declare-fun m!650301 () Bool)

(assert (=> b!686108 m!650301))

(declare-fun m!650303 () Bool)

(assert (=> b!686108 m!650303))

(assert (=> b!686108 m!650295))

(declare-fun m!650305 () Bool)

(assert (=> b!686108 m!650305))

(declare-fun m!650307 () Bool)

(assert (=> b!686108 m!650307))

(declare-fun m!650309 () Bool)

(assert (=> b!686108 m!650309))

(declare-fun m!650311 () Bool)

(assert (=> b!686108 m!650311))

(declare-fun m!650313 () Bool)

(assert (=> b!686108 m!650313))

(declare-fun m!650315 () Bool)

(assert (=> b!686122 m!650315))

(declare-fun m!650317 () Bool)

(assert (=> b!686116 m!650317))

(declare-fun m!650319 () Bool)

(assert (=> b!686114 m!650319))

(assert (=> b!686107 m!650293))

(assert (=> b!686107 m!650295))

(declare-fun m!650321 () Bool)

(assert (=> b!686107 m!650321))

(declare-fun m!650323 () Bool)

(assert (=> b!686107 m!650323))

(assert (=> b!686107 m!650295))

(assert (=> b!686107 m!650321))

(assert (=> b!686107 m!650301))

(assert (=> b!686107 m!650313))

(declare-fun m!650325 () Bool)

(assert (=> b!686112 m!650325))

(declare-fun m!650327 () Bool)

(assert (=> b!686115 m!650327))

(declare-fun m!650329 () Bool)

(assert (=> b!686110 m!650329))

(declare-fun m!650331 () Bool)

(assert (=> start!61284 m!650331))

(assert (=> b!686111 m!650319))

(push 1)

