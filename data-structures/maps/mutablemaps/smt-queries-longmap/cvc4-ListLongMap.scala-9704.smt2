; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114714 () Bool)

(assert start!114714)

(declare-fun b!1360330 () Bool)

(declare-fun res!904750 () Bool)

(declare-fun e!771784 () Bool)

(assert (=> b!1360330 (=> (not res!904750) (not e!771784))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92525 0))(
  ( (array!92526 (arr!44697 (Array (_ BitVec 32) (_ BitVec 64))) (size!45248 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92525)

(assert (=> b!1360330 (= res!904750 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45248 a!3742))))))

(declare-fun b!1360331 () Bool)

(declare-datatypes ((Unit!44774 0))(
  ( (Unit!44775) )
))
(declare-fun e!771782 () Unit!44774)

(declare-fun lt!599819 () Unit!44774)

(assert (=> b!1360331 (= e!771782 lt!599819)))

(declare-fun lt!599822 () Unit!44774)

(declare-datatypes ((List!31918 0))(
  ( (Nil!31915) (Cons!31914 (h!33123 (_ BitVec 64)) (t!46601 List!31918)) )
))
(declare-fun acc!759 () List!31918)

(declare-fun lemmaListSubSeqRefl!0 (List!31918) Unit!44774)

(assert (=> b!1360331 (= lt!599822 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!874 (List!31918 List!31918) Bool)

(assert (=> b!1360331 (subseq!874 acc!759 acc!759)))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92525 List!31918 List!31918 (_ BitVec 32)) Unit!44774)

(declare-fun $colon$colon!879 (List!31918 (_ BitVec 64)) List!31918)

(assert (=> b!1360331 (= lt!599819 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!879 acc!759 (select (arr!44697 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92525 (_ BitVec 32) List!31918) Bool)

(assert (=> b!1360331 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360332 () Bool)

(declare-fun res!904747 () Bool)

(assert (=> b!1360332 (=> (not res!904747) (not e!771784))))

(declare-fun noDuplicate!2362 (List!31918) Bool)

(assert (=> b!1360332 (= res!904747 (noDuplicate!2362 acc!759))))

(declare-fun b!1360333 () Bool)

(declare-fun res!904748 () Bool)

(assert (=> b!1360333 (=> (not res!904748) (not e!771784))))

(declare-fun contains!9483 (List!31918 (_ BitVec 64)) Bool)

(assert (=> b!1360333 (= res!904748 (not (contains!9483 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360334 () Bool)

(declare-fun res!904754 () Bool)

(assert (=> b!1360334 (=> (not res!904754) (not e!771784))))

(assert (=> b!1360334 (= res!904754 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360335 () Bool)

(declare-fun res!904753 () Bool)

(assert (=> b!1360335 (=> (not res!904753) (not e!771784))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360335 (= res!904753 (not (validKeyInArray!0 l!3587)))))

(declare-fun lt!599820 () Bool)

(declare-fun b!1360336 () Bool)

(assert (=> b!1360336 (= e!771784 (and (not (= from!3120 i!1404)) lt!599820 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599821 () Unit!44774)

(assert (=> b!1360336 (= lt!599821 e!771782)))

(declare-fun c!127234 () Bool)

(assert (=> b!1360336 (= c!127234 lt!599820)))

(assert (=> b!1360336 (= lt!599820 (validKeyInArray!0 (select (arr!44697 a!3742) from!3120)))))

(declare-fun b!1360337 () Bool)

(declare-fun Unit!44776 () Unit!44774)

(assert (=> b!1360337 (= e!771782 Unit!44776)))

(declare-fun b!1360338 () Bool)

(declare-fun res!904749 () Bool)

(assert (=> b!1360338 (=> (not res!904749) (not e!771784))))

(assert (=> b!1360338 (= res!904749 (not (contains!9483 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!904751 () Bool)

(assert (=> start!114714 (=> (not res!904751) (not e!771784))))

(assert (=> start!114714 (= res!904751 (and (bvslt (size!45248 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45248 a!3742))))))

(assert (=> start!114714 e!771784))

(assert (=> start!114714 true))

(declare-fun array_inv!33642 (array!92525) Bool)

(assert (=> start!114714 (array_inv!33642 a!3742)))

(declare-fun b!1360339 () Bool)

(declare-fun res!904752 () Bool)

(assert (=> b!1360339 (=> (not res!904752) (not e!771784))))

(assert (=> b!1360339 (= res!904752 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31915))))

(declare-fun b!1360340 () Bool)

(declare-fun res!904755 () Bool)

(assert (=> b!1360340 (=> (not res!904755) (not e!771784))))

(assert (=> b!1360340 (= res!904755 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45248 a!3742)))))

(assert (= (and start!114714 res!904751) b!1360332))

(assert (= (and b!1360332 res!904747) b!1360333))

(assert (= (and b!1360333 res!904748) b!1360338))

(assert (= (and b!1360338 res!904749) b!1360339))

(assert (= (and b!1360339 res!904752) b!1360334))

(assert (= (and b!1360334 res!904754) b!1360330))

(assert (= (and b!1360330 res!904750) b!1360335))

(assert (= (and b!1360335 res!904753) b!1360340))

(assert (= (and b!1360340 res!904755) b!1360336))

(assert (= (and b!1360336 c!127234) b!1360331))

(assert (= (and b!1360336 (not c!127234)) b!1360337))

(declare-fun m!1245645 () Bool)

(assert (=> b!1360335 m!1245645))

(declare-fun m!1245647 () Bool)

(assert (=> start!114714 m!1245647))

(declare-fun m!1245649 () Bool)

(assert (=> b!1360338 m!1245649))

(declare-fun m!1245651 () Bool)

(assert (=> b!1360333 m!1245651))

(declare-fun m!1245653 () Bool)

(assert (=> b!1360339 m!1245653))

(declare-fun m!1245655 () Bool)

(assert (=> b!1360336 m!1245655))

(assert (=> b!1360336 m!1245655))

(declare-fun m!1245657 () Bool)

(assert (=> b!1360336 m!1245657))

(declare-fun m!1245659 () Bool)

(assert (=> b!1360334 m!1245659))

(declare-fun m!1245661 () Bool)

(assert (=> b!1360331 m!1245661))

(assert (=> b!1360331 m!1245655))

(declare-fun m!1245663 () Bool)

(assert (=> b!1360331 m!1245663))

(declare-fun m!1245665 () Bool)

(assert (=> b!1360331 m!1245665))

(declare-fun m!1245667 () Bool)

(assert (=> b!1360331 m!1245667))

(assert (=> b!1360331 m!1245655))

(assert (=> b!1360331 m!1245663))

(declare-fun m!1245669 () Bool)

(assert (=> b!1360331 m!1245669))

(declare-fun m!1245671 () Bool)

(assert (=> b!1360332 m!1245671))

(push 1)

(assert (not b!1360336))

(assert (not b!1360332))

(assert (not start!114714))

(assert (not b!1360335))

(assert (not b!1360333))

(assert (not b!1360331))

(assert (not b!1360334))

