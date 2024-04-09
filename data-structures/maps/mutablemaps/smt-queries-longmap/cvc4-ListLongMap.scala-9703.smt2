; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114708 () Bool)

(assert start!114708)

(declare-fun b!1360231 () Bool)

(declare-datatypes ((Unit!44765 0))(
  ( (Unit!44766) )
))
(declare-fun e!771757 () Unit!44765)

(declare-fun Unit!44767 () Unit!44765)

(assert (=> b!1360231 (= e!771757 Unit!44767)))

(declare-fun b!1360232 () Bool)

(declare-fun res!904674 () Bool)

(declare-fun e!771756 () Bool)

(assert (=> b!1360232 (=> (not res!904674) (not e!771756))))

(declare-datatypes ((array!92519 0))(
  ( (array!92520 (arr!44694 (Array (_ BitVec 32) (_ BitVec 64))) (size!45245 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92519)

(declare-datatypes ((List!31915 0))(
  ( (Nil!31912) (Cons!31911 (h!33120 (_ BitVec 64)) (t!46598 List!31915)) )
))
(declare-fun arrayNoDuplicates!0 (array!92519 (_ BitVec 32) List!31915) Bool)

(assert (=> b!1360232 (= res!904674 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31912))))

(declare-fun b!1360233 () Bool)

(assert (=> b!1360233 (= e!771756 false)))

(declare-fun lt!599786 () Unit!44765)

(assert (=> b!1360233 (= lt!599786 e!771757)))

(declare-fun c!127225 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360233 (= c!127225 (validKeyInArray!0 (select (arr!44694 a!3742) from!3120)))))

(declare-fun b!1360234 () Bool)

(declare-fun res!904666 () Bool)

(assert (=> b!1360234 (=> (not res!904666) (not e!771756))))

(declare-fun acc!759 () List!31915)

(declare-fun contains!9480 (List!31915 (_ BitVec 64)) Bool)

(assert (=> b!1360234 (= res!904666 (not (contains!9480 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360235 () Bool)

(declare-fun lt!599785 () Unit!44765)

(assert (=> b!1360235 (= e!771757 lt!599785)))

(declare-fun lt!599784 () Unit!44765)

(declare-fun lemmaListSubSeqRefl!0 (List!31915) Unit!44765)

(assert (=> b!1360235 (= lt!599784 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!871 (List!31915 List!31915) Bool)

(assert (=> b!1360235 (subseq!871 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92519 List!31915 List!31915 (_ BitVec 32)) Unit!44765)

(declare-fun $colon$colon!876 (List!31915 (_ BitVec 64)) List!31915)

(assert (=> b!1360235 (= lt!599785 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!876 acc!759 (select (arr!44694 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360235 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360236 () Bool)

(declare-fun res!904667 () Bool)

(assert (=> b!1360236 (=> (not res!904667) (not e!771756))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360236 (= res!904667 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45245 a!3742))))))

(declare-fun b!1360237 () Bool)

(declare-fun res!904673 () Bool)

(assert (=> b!1360237 (=> (not res!904673) (not e!771756))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1360237 (= res!904673 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!904670 () Bool)

(assert (=> start!114708 (=> (not res!904670) (not e!771756))))

(assert (=> start!114708 (= res!904670 (and (bvslt (size!45245 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45245 a!3742))))))

(assert (=> start!114708 e!771756))

(assert (=> start!114708 true))

(declare-fun array_inv!33639 (array!92519) Bool)

(assert (=> start!114708 (array_inv!33639 a!3742)))

(declare-fun b!1360238 () Bool)

(declare-fun res!904669 () Bool)

(assert (=> b!1360238 (=> (not res!904669) (not e!771756))))

(assert (=> b!1360238 (= res!904669 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45245 a!3742)))))

(declare-fun b!1360239 () Bool)

(declare-fun res!904671 () Bool)

(assert (=> b!1360239 (=> (not res!904671) (not e!771756))))

(declare-fun noDuplicate!2359 (List!31915) Bool)

(assert (=> b!1360239 (= res!904671 (noDuplicate!2359 acc!759))))

(declare-fun b!1360240 () Bool)

(declare-fun res!904672 () Bool)

(assert (=> b!1360240 (=> (not res!904672) (not e!771756))))

(assert (=> b!1360240 (= res!904672 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360241 () Bool)

(declare-fun res!904668 () Bool)

(assert (=> b!1360241 (=> (not res!904668) (not e!771756))))

(assert (=> b!1360241 (= res!904668 (not (contains!9480 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114708 res!904670) b!1360239))

(assert (= (and b!1360239 res!904671) b!1360241))

(assert (= (and b!1360241 res!904668) b!1360234))

(assert (= (and b!1360234 res!904666) b!1360232))

(assert (= (and b!1360232 res!904674) b!1360240))

(assert (= (and b!1360240 res!904672) b!1360236))

(assert (= (and b!1360236 res!904667) b!1360237))

(assert (= (and b!1360237 res!904673) b!1360238))

(assert (= (and b!1360238 res!904669) b!1360233))

(assert (= (and b!1360233 c!127225) b!1360235))

(assert (= (and b!1360233 (not c!127225)) b!1360231))

(declare-fun m!1245561 () Bool)

(assert (=> b!1360232 m!1245561))

(declare-fun m!1245563 () Bool)

(assert (=> b!1360233 m!1245563))

(assert (=> b!1360233 m!1245563))

(declare-fun m!1245565 () Bool)

(assert (=> b!1360233 m!1245565))

(declare-fun m!1245567 () Bool)

(assert (=> b!1360240 m!1245567))

(declare-fun m!1245569 () Bool)

(assert (=> b!1360235 m!1245569))

(assert (=> b!1360235 m!1245563))

(declare-fun m!1245571 () Bool)

(assert (=> b!1360235 m!1245571))

(declare-fun m!1245573 () Bool)

(assert (=> b!1360235 m!1245573))

(declare-fun m!1245575 () Bool)

(assert (=> b!1360235 m!1245575))

(assert (=> b!1360235 m!1245563))

(assert (=> b!1360235 m!1245571))

(declare-fun m!1245577 () Bool)

(assert (=> b!1360235 m!1245577))

(declare-fun m!1245579 () Bool)

(assert (=> b!1360237 m!1245579))

(declare-fun m!1245581 () Bool)

(assert (=> b!1360239 m!1245581))

(declare-fun m!1245583 () Bool)

(assert (=> b!1360234 m!1245583))

(declare-fun m!1245585 () Bool)

(assert (=> start!114708 m!1245585))

(declare-fun m!1245587 () Bool)

(assert (=> b!1360241 m!1245587))

(push 1)

(assert (not b!1360234))

(assert (not b!1360241))

(assert (not b!1360240))

(assert (not start!114708))

(assert (not b!1360233))

(assert (not b!1360239))

(assert (not b!1360237))

(assert (not b!1360232))

(assert (not b!1360235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

