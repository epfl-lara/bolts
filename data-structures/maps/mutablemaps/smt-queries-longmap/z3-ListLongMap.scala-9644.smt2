; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114040 () Bool)

(assert start!114040)

(declare-fun b!1352642 () Bool)

(declare-fun res!898058 () Bool)

(declare-fun e!768882 () Bool)

(assert (=> b!1352642 (=> (not res!898058) (not e!768882))))

(declare-datatypes ((List!31737 0))(
  ( (Nil!31734) (Cons!31733 (h!32942 (_ BitVec 64)) (t!46402 List!31737)) )
))
(declare-fun acc!759 () List!31737)

(declare-fun contains!9302 (List!31737 (_ BitVec 64)) Bool)

(assert (=> b!1352642 (= res!898058 (not (contains!9302 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352643 () Bool)

(declare-fun res!898050 () Bool)

(assert (=> b!1352643 (=> (not res!898050) (not e!768882))))

(assert (=> b!1352643 (= res!898050 (not (contains!9302 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352644 () Bool)

(declare-fun res!898051 () Bool)

(assert (=> b!1352644 (=> (not res!898051) (not e!768882))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352644 (= res!898051 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352645 () Bool)

(declare-datatypes ((Unit!44312 0))(
  ( (Unit!44313) )
))
(declare-fun e!768883 () Unit!44312)

(declare-fun lt!597578 () Unit!44312)

(assert (=> b!1352645 (= e!768883 lt!597578)))

(declare-fun lt!597575 () Unit!44312)

(declare-fun lemmaListSubSeqRefl!0 (List!31737) Unit!44312)

(assert (=> b!1352645 (= lt!597575 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!711 (List!31737 List!31737) Bool)

(assert (=> b!1352645 (subseq!711 acc!759 acc!759)))

(declare-datatypes ((array!92145 0))(
  ( (array!92146 (arr!44516 (Array (_ BitVec 32) (_ BitVec 64))) (size!45067 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92145)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92145 List!31737 List!31737 (_ BitVec 32)) Unit!44312)

(declare-fun $colon$colon!728 (List!31737 (_ BitVec 64)) List!31737)

(assert (=> b!1352645 (= lt!597578 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!728 acc!759 (select (arr!44516 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92145 (_ BitVec 32) List!31737) Bool)

(assert (=> b!1352645 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352646 () Bool)

(declare-fun res!898054 () Bool)

(assert (=> b!1352646 (=> (not res!898054) (not e!768882))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352646 (= res!898054 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45067 a!3742))))))

(declare-fun b!1352647 () Bool)

(declare-fun res!898057 () Bool)

(assert (=> b!1352647 (=> (not res!898057) (not e!768882))))

(assert (=> b!1352647 (= res!898057 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31734))))

(declare-fun b!1352648 () Bool)

(declare-fun res!898053 () Bool)

(declare-fun e!768880 () Bool)

(assert (=> b!1352648 (=> (not res!898053) (not e!768880))))

(assert (=> b!1352648 (= res!898053 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352649 () Bool)

(declare-fun res!898049 () Bool)

(assert (=> b!1352649 (=> (not res!898049) (not e!768882))))

(assert (=> b!1352649 (= res!898049 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45067 a!3742)))))

(declare-fun b!1352650 () Bool)

(assert (=> b!1352650 (= e!768880 (not (bvsle from!3120 (size!45067 a!3742))))))

(assert (=> b!1352650 (arrayNoDuplicates!0 (array!92146 (store (arr!44516 a!3742) i!1404 l!3587) (size!45067 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597576 () Unit!44312)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92145 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31737) Unit!44312)

(assert (=> b!1352650 (= lt!597576 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352651 () Bool)

(declare-fun Unit!44314 () Unit!44312)

(assert (=> b!1352651 (= e!768883 Unit!44314)))

(declare-fun b!1352652 () Bool)

(declare-fun res!898056 () Bool)

(assert (=> b!1352652 (=> (not res!898056) (not e!768882))))

(assert (=> b!1352652 (= res!898056 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352653 () Bool)

(declare-fun res!898052 () Bool)

(assert (=> b!1352653 (=> (not res!898052) (not e!768882))))

(declare-fun noDuplicate!2181 (List!31737) Bool)

(assert (=> b!1352653 (= res!898052 (noDuplicate!2181 acc!759))))

(declare-fun res!898059 () Bool)

(assert (=> start!114040 (=> (not res!898059) (not e!768882))))

(assert (=> start!114040 (= res!898059 (and (bvslt (size!45067 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45067 a!3742))))))

(assert (=> start!114040 e!768882))

(assert (=> start!114040 true))

(declare-fun array_inv!33461 (array!92145) Bool)

(assert (=> start!114040 (array_inv!33461 a!3742)))

(declare-fun b!1352654 () Bool)

(assert (=> b!1352654 (= e!768882 e!768880)))

(declare-fun res!898055 () Bool)

(assert (=> b!1352654 (=> (not res!898055) (not e!768880))))

(assert (=> b!1352654 (= res!898055 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597577 () Unit!44312)

(assert (=> b!1352654 (= lt!597577 e!768883)))

(declare-fun c!126739 () Bool)

(assert (=> b!1352654 (= c!126739 (validKeyInArray!0 (select (arr!44516 a!3742) from!3120)))))

(assert (= (and start!114040 res!898059) b!1352653))

(assert (= (and b!1352653 res!898052) b!1352643))

(assert (= (and b!1352643 res!898050) b!1352642))

(assert (= (and b!1352642 res!898058) b!1352647))

(assert (= (and b!1352647 res!898057) b!1352652))

(assert (= (and b!1352652 res!898056) b!1352646))

(assert (= (and b!1352646 res!898054) b!1352644))

(assert (= (and b!1352644 res!898051) b!1352649))

(assert (= (and b!1352649 res!898049) b!1352654))

(assert (= (and b!1352654 c!126739) b!1352645))

(assert (= (and b!1352654 (not c!126739)) b!1352651))

(assert (= (and b!1352654 res!898055) b!1352648))

(assert (= (and b!1352648 res!898053) b!1352650))

(declare-fun m!1239431 () Bool)

(assert (=> b!1352643 m!1239431))

(declare-fun m!1239433 () Bool)

(assert (=> b!1352650 m!1239433))

(declare-fun m!1239435 () Bool)

(assert (=> b!1352650 m!1239435))

(declare-fun m!1239437 () Bool)

(assert (=> b!1352650 m!1239437))

(declare-fun m!1239439 () Bool)

(assert (=> b!1352653 m!1239439))

(declare-fun m!1239441 () Bool)

(assert (=> b!1352654 m!1239441))

(assert (=> b!1352654 m!1239441))

(declare-fun m!1239443 () Bool)

(assert (=> b!1352654 m!1239443))

(declare-fun m!1239445 () Bool)

(assert (=> b!1352644 m!1239445))

(declare-fun m!1239447 () Bool)

(assert (=> b!1352645 m!1239447))

(assert (=> b!1352645 m!1239441))

(declare-fun m!1239449 () Bool)

(assert (=> b!1352645 m!1239449))

(declare-fun m!1239451 () Bool)

(assert (=> b!1352645 m!1239451))

(declare-fun m!1239453 () Bool)

(assert (=> b!1352645 m!1239453))

(assert (=> b!1352645 m!1239441))

(assert (=> b!1352645 m!1239449))

(declare-fun m!1239455 () Bool)

(assert (=> b!1352645 m!1239455))

(declare-fun m!1239457 () Bool)

(assert (=> start!114040 m!1239457))

(declare-fun m!1239459 () Bool)

(assert (=> b!1352652 m!1239459))

(declare-fun m!1239461 () Bool)

(assert (=> b!1352647 m!1239461))

(assert (=> b!1352648 m!1239453))

(declare-fun m!1239463 () Bool)

(assert (=> b!1352642 m!1239463))

(check-sat (not b!1352654) (not b!1352652) (not b!1352650) (not b!1352643) (not b!1352647) (not start!114040) (not b!1352648) (not b!1352653) (not b!1352642) (not b!1352645) (not b!1352644))
(check-sat)
