; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114026 () Bool)

(assert start!114026)

(declare-fun res!897834 () Bool)

(declare-fun e!768797 () Bool)

(assert (=> start!114026 (=> (not res!897834) (not e!768797))))

(declare-datatypes ((array!92131 0))(
  ( (array!92132 (arr!44509 (Array (_ BitVec 32) (_ BitVec 64))) (size!45060 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92131)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114026 (= res!897834 (and (bvslt (size!45060 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45060 a!3742))))))

(assert (=> start!114026 e!768797))

(assert (=> start!114026 true))

(declare-fun array_inv!33454 (array!92131) Bool)

(assert (=> start!114026 (array_inv!33454 a!3742)))

(declare-fun b!1352385 () Bool)

(declare-datatypes ((Unit!44291 0))(
  ( (Unit!44292) )
))
(declare-fun e!768798 () Unit!44291)

(declare-fun lt!597494 () Unit!44291)

(assert (=> b!1352385 (= e!768798 lt!597494)))

(declare-fun lt!597492 () Unit!44291)

(declare-datatypes ((List!31730 0))(
  ( (Nil!31727) (Cons!31726 (h!32935 (_ BitVec 64)) (t!46395 List!31730)) )
))
(declare-fun acc!759 () List!31730)

(declare-fun lemmaListSubSeqRefl!0 (List!31730) Unit!44291)

(assert (=> b!1352385 (= lt!597492 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!704 (List!31730 List!31730) Bool)

(assert (=> b!1352385 (subseq!704 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92131 List!31730 List!31730 (_ BitVec 32)) Unit!44291)

(declare-fun $colon$colon!721 (List!31730 (_ BitVec 64)) List!31730)

(assert (=> b!1352385 (= lt!597494 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!721 acc!759 (select (arr!44509 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92131 (_ BitVec 32) List!31730) Bool)

(assert (=> b!1352385 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352386 () Bool)

(declare-fun res!897836 () Bool)

(assert (=> b!1352386 (=> (not res!897836) (not e!768797))))

(declare-fun contains!9295 (List!31730 (_ BitVec 64)) Bool)

(assert (=> b!1352386 (= res!897836 (not (contains!9295 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352387 () Bool)

(declare-fun Unit!44293 () Unit!44291)

(assert (=> b!1352387 (= e!768798 Unit!44293)))

(declare-fun b!1352388 () Bool)

(declare-fun res!897839 () Bool)

(assert (=> b!1352388 (=> (not res!897839) (not e!768797))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352388 (= res!897839 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45060 a!3742))))))

(declare-fun b!1352389 () Bool)

(declare-fun res!897843 () Bool)

(assert (=> b!1352389 (=> (not res!897843) (not e!768797))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352389 (= res!897843 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352390 () Bool)

(declare-fun res!897840 () Bool)

(assert (=> b!1352390 (=> (not res!897840) (not e!768797))))

(assert (=> b!1352390 (= res!897840 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45060 a!3742)))))

(declare-fun b!1352391 () Bool)

(declare-fun res!897837 () Bool)

(assert (=> b!1352391 (=> (not res!897837) (not e!768797))))

(assert (=> b!1352391 (= res!897837 (not (contains!9295 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352392 () Bool)

(declare-fun res!897842 () Bool)

(assert (=> b!1352392 (=> (not res!897842) (not e!768797))))

(assert (=> b!1352392 (= res!897842 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31727))))

(declare-fun b!1352393 () Bool)

(declare-fun res!897838 () Bool)

(assert (=> b!1352393 (=> (not res!897838) (not e!768797))))

(assert (=> b!1352393 (= res!897838 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352394 () Bool)

(declare-fun e!768799 () Bool)

(assert (=> b!1352394 (= e!768799 false)))

(declare-fun lt!597491 () Bool)

(assert (=> b!1352394 (= lt!597491 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352395 () Bool)

(assert (=> b!1352395 (= e!768797 e!768799)))

(declare-fun res!897835 () Bool)

(assert (=> b!1352395 (=> (not res!897835) (not e!768799))))

(assert (=> b!1352395 (= res!897835 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597493 () Unit!44291)

(assert (=> b!1352395 (= lt!597493 e!768798)))

(declare-fun c!126718 () Bool)

(assert (=> b!1352395 (= c!126718 (validKeyInArray!0 (select (arr!44509 a!3742) from!3120)))))

(declare-fun b!1352396 () Bool)

(declare-fun res!897841 () Bool)

(assert (=> b!1352396 (=> (not res!897841) (not e!768797))))

(declare-fun noDuplicate!2174 (List!31730) Bool)

(assert (=> b!1352396 (= res!897841 (noDuplicate!2174 acc!759))))

(assert (= (and start!114026 res!897834) b!1352396))

(assert (= (and b!1352396 res!897841) b!1352391))

(assert (= (and b!1352391 res!897837) b!1352386))

(assert (= (and b!1352386 res!897836) b!1352392))

(assert (= (and b!1352392 res!897842) b!1352393))

(assert (= (and b!1352393 res!897838) b!1352388))

(assert (= (and b!1352388 res!897839) b!1352389))

(assert (= (and b!1352389 res!897843) b!1352390))

(assert (= (and b!1352390 res!897840) b!1352395))

(assert (= (and b!1352395 c!126718) b!1352385))

(assert (= (and b!1352395 (not c!126718)) b!1352387))

(assert (= (and b!1352395 res!897835) b!1352394))

(declare-fun m!1239229 () Bool)

(assert (=> b!1352385 m!1239229))

(declare-fun m!1239231 () Bool)

(assert (=> b!1352385 m!1239231))

(declare-fun m!1239233 () Bool)

(assert (=> b!1352385 m!1239233))

(declare-fun m!1239235 () Bool)

(assert (=> b!1352385 m!1239235))

(declare-fun m!1239237 () Bool)

(assert (=> b!1352385 m!1239237))

(assert (=> b!1352385 m!1239231))

(assert (=> b!1352385 m!1239233))

(declare-fun m!1239239 () Bool)

(assert (=> b!1352385 m!1239239))

(declare-fun m!1239241 () Bool)

(assert (=> b!1352392 m!1239241))

(assert (=> b!1352394 m!1239237))

(declare-fun m!1239243 () Bool)

(assert (=> b!1352393 m!1239243))

(declare-fun m!1239245 () Bool)

(assert (=> b!1352389 m!1239245))

(declare-fun m!1239247 () Bool)

(assert (=> b!1352396 m!1239247))

(declare-fun m!1239249 () Bool)

(assert (=> start!114026 m!1239249))

(declare-fun m!1239251 () Bool)

(assert (=> b!1352391 m!1239251))

(declare-fun m!1239253 () Bool)

(assert (=> b!1352386 m!1239253))

(assert (=> b!1352395 m!1239231))

(assert (=> b!1352395 m!1239231))

(declare-fun m!1239255 () Bool)

(assert (=> b!1352395 m!1239255))

(push 1)

