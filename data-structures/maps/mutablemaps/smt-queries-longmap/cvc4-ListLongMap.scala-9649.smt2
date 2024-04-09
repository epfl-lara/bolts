; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114072 () Bool)

(assert start!114072)

(declare-fun b!1353317 () Bool)

(declare-fun res!898630 () Bool)

(declare-fun e!769092 () Bool)

(assert (=> b!1353317 (=> (not res!898630) (not e!769092))))

(declare-datatypes ((List!31753 0))(
  ( (Nil!31750) (Cons!31749 (h!32958 (_ BitVec 64)) (t!46418 List!31753)) )
))
(declare-fun acc!759 () List!31753)

(declare-fun noDuplicate!2197 (List!31753) Bool)

(assert (=> b!1353317 (= res!898630 (noDuplicate!2197 acc!759))))

(declare-fun b!1353318 () Bool)

(declare-fun res!898640 () Bool)

(assert (=> b!1353318 (=> (not res!898640) (not e!769092))))

(declare-datatypes ((array!92177 0))(
  ( (array!92178 (arr!44532 (Array (_ BitVec 32) (_ BitVec 64))) (size!45083 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92177)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92177 (_ BitVec 32) List!31753) Bool)

(assert (=> b!1353318 (= res!898640 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353319 () Bool)

(declare-fun res!898636 () Bool)

(declare-fun e!769091 () Bool)

(assert (=> b!1353319 (=> (not res!898636) (not e!769091))))

(declare-fun lt!597805 () List!31753)

(declare-fun contains!9318 (List!31753 (_ BitVec 64)) Bool)

(assert (=> b!1353319 (= res!898636 (not (contains!9318 lt!597805 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353320 () Bool)

(declare-datatypes ((Unit!44360 0))(
  ( (Unit!44361) )
))
(declare-fun e!769090 () Unit!44360)

(declare-fun Unit!44362 () Unit!44360)

(assert (=> b!1353320 (= e!769090 Unit!44362)))

(declare-fun b!1353321 () Bool)

(declare-fun res!898633 () Bool)

(assert (=> b!1353321 (=> (not res!898633) (not e!769092))))

(assert (=> b!1353321 (= res!898633 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31750))))

(declare-fun b!1353322 () Bool)

(declare-fun e!769089 () Bool)

(assert (=> b!1353322 (= e!769092 e!769089)))

(declare-fun res!898641 () Bool)

(assert (=> b!1353322 (=> (not res!898641) (not e!769089))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-fun lt!597806 () Bool)

(assert (=> b!1353322 (= res!898641 (and (not (= from!3120 i!1404)) lt!597806))))

(declare-fun lt!597802 () Unit!44360)

(assert (=> b!1353322 (= lt!597802 e!769090)))

(declare-fun c!126787 () Bool)

(assert (=> b!1353322 (= c!126787 lt!597806)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353322 (= lt!597806 (validKeyInArray!0 (select (arr!44532 a!3742) from!3120)))))

(declare-fun b!1353323 () Bool)

(declare-fun res!898637 () Bool)

(assert (=> b!1353323 (=> (not res!898637) (not e!769092))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353323 (= res!898637 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!898629 () Bool)

(assert (=> start!114072 (=> (not res!898629) (not e!769092))))

(assert (=> start!114072 (= res!898629 (and (bvslt (size!45083 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45083 a!3742))))))

(assert (=> start!114072 e!769092))

(assert (=> start!114072 true))

(declare-fun array_inv!33477 (array!92177) Bool)

(assert (=> start!114072 (array_inv!33477 a!3742)))

(declare-fun b!1353324 () Bool)

(declare-fun res!898638 () Bool)

(assert (=> b!1353324 (=> (not res!898638) (not e!769092))))

(assert (=> b!1353324 (= res!898638 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45083 a!3742)))))

(declare-fun b!1353325 () Bool)

(declare-fun lt!597801 () Unit!44360)

(assert (=> b!1353325 (= e!769090 lt!597801)))

(declare-fun lt!597803 () Unit!44360)

(declare-fun lemmaListSubSeqRefl!0 (List!31753) Unit!44360)

(assert (=> b!1353325 (= lt!597803 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!727 (List!31753 List!31753) Bool)

(assert (=> b!1353325 (subseq!727 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92177 List!31753 List!31753 (_ BitVec 32)) Unit!44360)

(declare-fun $colon$colon!744 (List!31753 (_ BitVec 64)) List!31753)

(assert (=> b!1353325 (= lt!597801 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!744 acc!759 (select (arr!44532 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353325 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353326 () Bool)

(assert (=> b!1353326 (= e!769091 false)))

(declare-fun lt!597804 () Bool)

(assert (=> b!1353326 (= lt!597804 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597805))))

(declare-fun b!1353327 () Bool)

(declare-fun res!898639 () Bool)

(assert (=> b!1353327 (=> (not res!898639) (not e!769091))))

(assert (=> b!1353327 (= res!898639 (not (contains!9318 lt!597805 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353328 () Bool)

(declare-fun res!898631 () Bool)

(assert (=> b!1353328 (=> (not res!898631) (not e!769092))))

(assert (=> b!1353328 (= res!898631 (not (contains!9318 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353329 () Bool)

(assert (=> b!1353329 (= e!769089 e!769091)))

(declare-fun res!898635 () Bool)

(assert (=> b!1353329 (=> (not res!898635) (not e!769091))))

(assert (=> b!1353329 (= res!898635 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1353329 (= lt!597805 ($colon$colon!744 acc!759 (select (arr!44532 a!3742) from!3120)))))

(declare-fun b!1353330 () Bool)

(declare-fun res!898634 () Bool)

(assert (=> b!1353330 (=> (not res!898634) (not e!769092))))

(assert (=> b!1353330 (= res!898634 (not (contains!9318 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353331 () Bool)

(declare-fun res!898628 () Bool)

(assert (=> b!1353331 (=> (not res!898628) (not e!769091))))

(assert (=> b!1353331 (= res!898628 (noDuplicate!2197 lt!597805))))

(declare-fun b!1353332 () Bool)

(declare-fun res!898632 () Bool)

(assert (=> b!1353332 (=> (not res!898632) (not e!769092))))

(assert (=> b!1353332 (= res!898632 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45083 a!3742))))))

(assert (= (and start!114072 res!898629) b!1353317))

(assert (= (and b!1353317 res!898630) b!1353328))

(assert (= (and b!1353328 res!898631) b!1353330))

(assert (= (and b!1353330 res!898634) b!1353321))

(assert (= (and b!1353321 res!898633) b!1353318))

(assert (= (and b!1353318 res!898640) b!1353332))

(assert (= (and b!1353332 res!898632) b!1353323))

(assert (= (and b!1353323 res!898637) b!1353324))

(assert (= (and b!1353324 res!898638) b!1353322))

(assert (= (and b!1353322 c!126787) b!1353325))

(assert (= (and b!1353322 (not c!126787)) b!1353320))

(assert (= (and b!1353322 res!898641) b!1353329))

(assert (= (and b!1353329 res!898635) b!1353331))

(assert (= (and b!1353331 res!898628) b!1353327))

(assert (= (and b!1353327 res!898639) b!1353319))

(assert (= (and b!1353319 res!898636) b!1353326))

(declare-fun m!1239985 () Bool)

(assert (=> start!114072 m!1239985))

(declare-fun m!1239987 () Bool)

(assert (=> b!1353318 m!1239987))

(declare-fun m!1239989 () Bool)

(assert (=> b!1353330 m!1239989))

(declare-fun m!1239991 () Bool)

(assert (=> b!1353328 m!1239991))

(declare-fun m!1239993 () Bool)

(assert (=> b!1353325 m!1239993))

(declare-fun m!1239995 () Bool)

(assert (=> b!1353325 m!1239995))

(declare-fun m!1239997 () Bool)

(assert (=> b!1353325 m!1239997))

(declare-fun m!1239999 () Bool)

(assert (=> b!1353325 m!1239999))

(declare-fun m!1240001 () Bool)

(assert (=> b!1353325 m!1240001))

(assert (=> b!1353325 m!1239995))

(assert (=> b!1353325 m!1239997))

(declare-fun m!1240003 () Bool)

(assert (=> b!1353325 m!1240003))

(declare-fun m!1240005 () Bool)

(assert (=> b!1353327 m!1240005))

(declare-fun m!1240007 () Bool)

(assert (=> b!1353321 m!1240007))

(declare-fun m!1240009 () Bool)

(assert (=> b!1353326 m!1240009))

(assert (=> b!1353322 m!1239995))

(assert (=> b!1353322 m!1239995))

(declare-fun m!1240011 () Bool)

(assert (=> b!1353322 m!1240011))

(declare-fun m!1240013 () Bool)

(assert (=> b!1353319 m!1240013))

(declare-fun m!1240015 () Bool)

(assert (=> b!1353331 m!1240015))

(declare-fun m!1240017 () Bool)

(assert (=> b!1353317 m!1240017))

(declare-fun m!1240019 () Bool)

(assert (=> b!1353323 m!1240019))

(assert (=> b!1353329 m!1239995))

(assert (=> b!1353329 m!1239995))

(assert (=> b!1353329 m!1239997))

(push 1)

(assert (not b!1353317))

(assert (not b!1353323))

(assert (not b!1353329))

(assert (not b!1353319))

(assert (not b!1353327))

(assert (not b!1353325))

(assert (not b!1353331))

(assert (not b!1353322))

(assert (not b!1353328))

(assert (not b!1353321))

(assert (not b!1353326))

(assert (not b!1353330))

(assert (not b!1353318))

(assert (not start!114072))

(check-sat)

