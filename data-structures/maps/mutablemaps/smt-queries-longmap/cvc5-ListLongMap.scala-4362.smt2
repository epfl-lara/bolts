; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60216 () Bool)

(assert start!60216)

(declare-fun res!439958 () Bool)

(declare-fun e!384451 () Bool)

(assert (=> start!60216 (=> (not res!439958) (not e!384451))))

(declare-datatypes ((array!39219 0))(
  ( (array!39220 (arr!18798 (Array (_ BitVec 32) (_ BitVec 64))) (size!19162 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39219)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60216 (= res!439958 (and (bvslt (size!19162 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19162 a!3626))))))

(assert (=> start!60216 e!384451))

(assert (=> start!60216 true))

(declare-fun array_inv!14572 (array!39219) Bool)

(assert (=> start!60216 (array_inv!14572 a!3626)))

(declare-fun b!673213 () Bool)

(declare-fun res!439937 () Bool)

(declare-fun e!384445 () Bool)

(assert (=> b!673213 (=> (not res!439937) (not e!384445))))

(declare-datatypes ((List!12892 0))(
  ( (Nil!12889) (Cons!12888 (h!13933 (_ BitVec 64)) (t!19128 List!12892)) )
))
(declare-fun lt!312404 () List!12892)

(declare-fun contains!3435 (List!12892 (_ BitVec 64)) Bool)

(assert (=> b!673213 (= res!439937 (not (contains!3435 lt!312404 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673214 () Bool)

(declare-fun res!439952 () Bool)

(assert (=> b!673214 (=> (not res!439952) (not e!384451))))

(declare-fun acc!681 () List!12892)

(assert (=> b!673214 (= res!439952 (not (contains!3435 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673215 () Bool)

(declare-fun res!439941 () Bool)

(assert (=> b!673215 (=> (not res!439941) (not e!384451))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673215 (= res!439941 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19162 a!3626))))))

(declare-fun b!673216 () Bool)

(declare-fun res!439954 () Bool)

(assert (=> b!673216 (=> (not res!439954) (not e!384451))))

(assert (=> b!673216 (= res!439954 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19162 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!673217 () Bool)

(declare-fun e!384441 () Bool)

(declare-fun e!384444 () Bool)

(assert (=> b!673217 (= e!384441 e!384444)))

(declare-fun res!439936 () Bool)

(assert (=> b!673217 (=> (not res!439936) (not e!384444))))

(assert (=> b!673217 (= res!439936 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673218 () Bool)

(declare-fun res!439953 () Bool)

(assert (=> b!673218 (=> (not res!439953) (not e!384451))))

(declare-fun arrayNoDuplicates!0 (array!39219 (_ BitVec 32) List!12892) Bool)

(assert (=> b!673218 (= res!439953 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673219 () Bool)

(declare-fun res!439943 () Bool)

(assert (=> b!673219 (=> (not res!439943) (not e!384445))))

(assert (=> b!673219 (= res!439943 (not (contains!3435 lt!312404 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673220 () Bool)

(assert (=> b!673220 (= e!384445 false)))

(declare-fun lt!312402 () Bool)

(assert (=> b!673220 (= lt!312402 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312404))))

(declare-fun b!673221 () Bool)

(declare-fun res!439949 () Bool)

(assert (=> b!673221 (=> (not res!439949) (not e!384445))))

(declare-fun noDuplicate!682 (List!12892) Bool)

(assert (=> b!673221 (= res!439949 (noDuplicate!682 lt!312404))))

(declare-fun b!673222 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!673222 (= e!384444 (not (contains!3435 lt!312404 k!2843)))))

(declare-fun b!673223 () Bool)

(declare-fun res!439948 () Bool)

(assert (=> b!673223 (=> (not res!439948) (not e!384451))))

(assert (=> b!673223 (= res!439948 (not (contains!3435 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673224 () Bool)

(declare-fun res!439947 () Bool)

(assert (=> b!673224 (=> (not res!439947) (not e!384451))))

(assert (=> b!673224 (= res!439947 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12889))))

(declare-fun b!673225 () Bool)

(declare-fun res!439940 () Bool)

(assert (=> b!673225 (=> (not res!439940) (not e!384445))))

(assert (=> b!673225 (= res!439940 e!384441)))

(declare-fun res!439938 () Bool)

(assert (=> b!673225 (=> res!439938 e!384441)))

(declare-fun e!384450 () Bool)

(assert (=> b!673225 (= res!439938 e!384450)))

(declare-fun res!439945 () Bool)

(assert (=> b!673225 (=> (not res!439945) (not e!384450))))

(assert (=> b!673225 (= res!439945 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673226 () Bool)

(declare-datatypes ((Unit!23656 0))(
  ( (Unit!23657) )
))
(declare-fun e!384443 () Unit!23656)

(declare-fun Unit!23658 () Unit!23656)

(assert (=> b!673226 (= e!384443 Unit!23658)))

(declare-fun arrayContainsKey!0 (array!39219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673226 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312405 () Unit!23656)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39219 (_ BitVec 64) (_ BitVec 32)) Unit!23656)

(assert (=> b!673226 (= lt!312405 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!673226 false))

(declare-fun b!673227 () Bool)

(declare-fun e!384442 () Bool)

(assert (=> b!673227 (= e!384442 (not (contains!3435 acc!681 k!2843)))))

(declare-fun b!673228 () Bool)

(declare-fun e!384449 () Bool)

(assert (=> b!673228 (= e!384449 e!384442)))

(declare-fun res!439955 () Bool)

(assert (=> b!673228 (=> (not res!439955) (not e!384442))))

(assert (=> b!673228 (= res!439955 (bvsle from!3004 i!1382))))

(declare-fun b!673229 () Bool)

(declare-fun res!439942 () Bool)

(assert (=> b!673229 (=> (not res!439942) (not e!384451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673229 (= res!439942 (validKeyInArray!0 (select (arr!18798 a!3626) from!3004)))))

(declare-fun b!673230 () Bool)

(declare-fun res!439951 () Bool)

(assert (=> b!673230 (=> (not res!439951) (not e!384451))))

(assert (=> b!673230 (= res!439951 (noDuplicate!682 acc!681))))

(declare-fun b!673231 () Bool)

(declare-fun res!439956 () Bool)

(assert (=> b!673231 (=> (not res!439956) (not e!384451))))

(assert (=> b!673231 (= res!439956 (validKeyInArray!0 k!2843))))

(declare-fun b!673232 () Bool)

(declare-fun res!439939 () Bool)

(assert (=> b!673232 (=> (not res!439939) (not e!384451))))

(assert (=> b!673232 (= res!439939 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673233 () Bool)

(declare-fun e!384448 () Bool)

(assert (=> b!673233 (= e!384448 (contains!3435 acc!681 k!2843))))

(declare-fun b!673234 () Bool)

(assert (=> b!673234 (= e!384450 (contains!3435 lt!312404 k!2843))))

(declare-fun b!673235 () Bool)

(declare-fun e!384446 () Bool)

(assert (=> b!673235 (= e!384451 e!384446)))

(declare-fun res!439944 () Bool)

(assert (=> b!673235 (=> (not res!439944) (not e!384446))))

(assert (=> b!673235 (= res!439944 (not (= (select (arr!18798 a!3626) from!3004) k!2843)))))

(declare-fun lt!312403 () Unit!23656)

(assert (=> b!673235 (= lt!312403 e!384443)))

(declare-fun c!77006 () Bool)

(assert (=> b!673235 (= c!77006 (= (select (arr!18798 a!3626) from!3004) k!2843))))

(declare-fun b!673236 () Bool)

(assert (=> b!673236 (= e!384446 e!384445)))

(declare-fun res!439957 () Bool)

(assert (=> b!673236 (=> (not res!439957) (not e!384445))))

(assert (=> b!673236 (= res!439957 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!283 (List!12892 (_ BitVec 64)) List!12892)

(assert (=> b!673236 (= lt!312404 ($colon$colon!283 acc!681 (select (arr!18798 a!3626) from!3004)))))

(declare-fun b!673237 () Bool)

(declare-fun Unit!23659 () Unit!23656)

(assert (=> b!673237 (= e!384443 Unit!23659)))

(declare-fun b!673238 () Bool)

(declare-fun res!439950 () Bool)

(assert (=> b!673238 (=> (not res!439950) (not e!384451))))

(assert (=> b!673238 (= res!439950 e!384449)))

(declare-fun res!439946 () Bool)

(assert (=> b!673238 (=> res!439946 e!384449)))

(assert (=> b!673238 (= res!439946 e!384448)))

(declare-fun res!439935 () Bool)

(assert (=> b!673238 (=> (not res!439935) (not e!384448))))

(assert (=> b!673238 (= res!439935 (bvsgt from!3004 i!1382))))

(assert (= (and start!60216 res!439958) b!673230))

(assert (= (and b!673230 res!439951) b!673223))

(assert (= (and b!673223 res!439948) b!673214))

(assert (= (and b!673214 res!439952) b!673238))

(assert (= (and b!673238 res!439935) b!673233))

(assert (= (and b!673238 (not res!439946)) b!673228))

(assert (= (and b!673228 res!439955) b!673227))

(assert (= (and b!673238 res!439950) b!673224))

(assert (= (and b!673224 res!439947) b!673218))

(assert (= (and b!673218 res!439953) b!673215))

(assert (= (and b!673215 res!439941) b!673231))

(assert (= (and b!673231 res!439956) b!673232))

(assert (= (and b!673232 res!439939) b!673216))

(assert (= (and b!673216 res!439954) b!673229))

(assert (= (and b!673229 res!439942) b!673235))

(assert (= (and b!673235 c!77006) b!673226))

(assert (= (and b!673235 (not c!77006)) b!673237))

(assert (= (and b!673235 res!439944) b!673236))

(assert (= (and b!673236 res!439957) b!673221))

(assert (= (and b!673221 res!439949) b!673219))

(assert (= (and b!673219 res!439943) b!673213))

(assert (= (and b!673213 res!439937) b!673225))

(assert (= (and b!673225 res!439945) b!673234))

(assert (= (and b!673225 (not res!439938)) b!673217))

(assert (= (and b!673217 res!439936) b!673222))

(assert (= (and b!673225 res!439940) b!673220))

(declare-fun m!641739 () Bool)

(assert (=> b!673232 m!641739))

(declare-fun m!641741 () Bool)

(assert (=> b!673233 m!641741))

(declare-fun m!641743 () Bool)

(assert (=> b!673219 m!641743))

(declare-fun m!641745 () Bool)

(assert (=> start!60216 m!641745))

(declare-fun m!641747 () Bool)

(assert (=> b!673220 m!641747))

(declare-fun m!641749 () Bool)

(assert (=> b!673231 m!641749))

(declare-fun m!641751 () Bool)

(assert (=> b!673236 m!641751))

(assert (=> b!673236 m!641751))

(declare-fun m!641753 () Bool)

(assert (=> b!673236 m!641753))

(declare-fun m!641755 () Bool)

(assert (=> b!673223 m!641755))

(assert (=> b!673229 m!641751))

(assert (=> b!673229 m!641751))

(declare-fun m!641757 () Bool)

(assert (=> b!673229 m!641757))

(declare-fun m!641759 () Bool)

(assert (=> b!673221 m!641759))

(assert (=> b!673235 m!641751))

(declare-fun m!641761 () Bool)

(assert (=> b!673224 m!641761))

(declare-fun m!641763 () Bool)

(assert (=> b!673218 m!641763))

(declare-fun m!641765 () Bool)

(assert (=> b!673213 m!641765))

(assert (=> b!673227 m!641741))

(declare-fun m!641767 () Bool)

(assert (=> b!673230 m!641767))

(declare-fun m!641769 () Bool)

(assert (=> b!673222 m!641769))

(declare-fun m!641771 () Bool)

(assert (=> b!673214 m!641771))

(assert (=> b!673234 m!641769))

(declare-fun m!641773 () Bool)

(assert (=> b!673226 m!641773))

(declare-fun m!641775 () Bool)

(assert (=> b!673226 m!641775))

(push 1)

