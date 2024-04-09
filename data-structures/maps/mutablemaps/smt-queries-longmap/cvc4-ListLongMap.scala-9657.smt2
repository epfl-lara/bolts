; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114120 () Bool)

(assert start!114120)

(declare-fun b!1354477 () Bool)

(declare-fun res!899646 () Bool)

(declare-fun e!769450 () Bool)

(assert (=> b!1354477 (=> (not res!899646) (not e!769450))))

(declare-datatypes ((List!31777 0))(
  ( (Nil!31774) (Cons!31773 (h!32982 (_ BitVec 64)) (t!46442 List!31777)) )
))
(declare-fun lt!598238 () List!31777)

(declare-datatypes ((array!92225 0))(
  ( (array!92226 (arr!44556 (Array (_ BitVec 32) (_ BitVec 64))) (size!45107 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92225)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92225 (_ BitVec 32) List!31777) Bool)

(assert (=> b!1354477 (= res!899646 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598238))))

(declare-fun b!1354478 () Bool)

(declare-fun res!899649 () Bool)

(declare-fun e!769451 () Bool)

(assert (=> b!1354478 (=> (not res!899649) (not e!769451))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354478 (= res!899649 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45107 a!3742))))))

(declare-fun b!1354479 () Bool)

(declare-fun e!769452 () Bool)

(assert (=> b!1354479 (= e!769452 e!769450)))

(declare-fun res!899650 () Bool)

(assert (=> b!1354479 (=> (not res!899650) (not e!769450))))

(assert (=> b!1354479 (= res!899650 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun acc!759 () List!31777)

(declare-fun $colon$colon!768 (List!31777 (_ BitVec 64)) List!31777)

(assert (=> b!1354479 (= lt!598238 ($colon$colon!768 acc!759 (select (arr!44556 a!3742) from!3120)))))

(declare-fun b!1354480 () Bool)

(declare-fun res!899656 () Bool)

(assert (=> b!1354480 (=> (not res!899656) (not e!769451))))

(declare-fun contains!9342 (List!31777 (_ BitVec 64)) Bool)

(assert (=> b!1354480 (= res!899656 (not (contains!9342 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354481 () Bool)

(declare-fun res!899651 () Bool)

(assert (=> b!1354481 (=> (not res!899651) (not e!769451))))

(assert (=> b!1354481 (= res!899651 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31774))))

(declare-fun b!1354482 () Bool)

(declare-datatypes ((Unit!44432 0))(
  ( (Unit!44433) )
))
(declare-fun e!769449 () Unit!44432)

(declare-fun lt!598234 () Unit!44432)

(assert (=> b!1354482 (= e!769449 lt!598234)))

(declare-fun lt!598236 () Unit!44432)

(declare-fun lemmaListSubSeqRefl!0 (List!31777) Unit!44432)

(assert (=> b!1354482 (= lt!598236 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!751 (List!31777 List!31777) Bool)

(assert (=> b!1354482 (subseq!751 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92225 List!31777 List!31777 (_ BitVec 32)) Unit!44432)

(assert (=> b!1354482 (= lt!598234 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!768 acc!759 (select (arr!44556 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354482 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354483 () Bool)

(assert (=> b!1354483 (= e!769450 (not (bvsle from!3120 (size!45107 a!3742))))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354483 (arrayNoDuplicates!0 (array!92226 (store (arr!44556 a!3742) i!1404 l!3587) (size!45107 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598238)))

(declare-fun lt!598233 () Unit!44432)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92225 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31777) Unit!44432)

(assert (=> b!1354483 (= lt!598233 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598238))))

(declare-fun b!1354484 () Bool)

(assert (=> b!1354484 (= e!769451 e!769452)))

(declare-fun res!899647 () Bool)

(assert (=> b!1354484 (=> (not res!899647) (not e!769452))))

(declare-fun lt!598237 () Bool)

(assert (=> b!1354484 (= res!899647 (and (not (= from!3120 i!1404)) lt!598237))))

(declare-fun lt!598235 () Unit!44432)

(assert (=> b!1354484 (= lt!598235 e!769449)))

(declare-fun c!126859 () Bool)

(assert (=> b!1354484 (= c!126859 lt!598237)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354484 (= lt!598237 (validKeyInArray!0 (select (arr!44556 a!3742) from!3120)))))

(declare-fun b!1354485 () Bool)

(declare-fun res!899645 () Bool)

(assert (=> b!1354485 (=> (not res!899645) (not e!769451))))

(assert (=> b!1354485 (= res!899645 (not (contains!9342 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354487 () Bool)

(declare-fun res!899648 () Bool)

(assert (=> b!1354487 (=> (not res!899648) (not e!769451))))

(declare-fun noDuplicate!2221 (List!31777) Bool)

(assert (=> b!1354487 (= res!899648 (noDuplicate!2221 acc!759))))

(declare-fun b!1354488 () Bool)

(declare-fun res!899644 () Bool)

(assert (=> b!1354488 (=> (not res!899644) (not e!769451))))

(assert (=> b!1354488 (= res!899644 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354489 () Bool)

(declare-fun Unit!44434 () Unit!44432)

(assert (=> b!1354489 (= e!769449 Unit!44434)))

(declare-fun b!1354490 () Bool)

(declare-fun res!899657 () Bool)

(assert (=> b!1354490 (=> (not res!899657) (not e!769450))))

(assert (=> b!1354490 (= res!899657 (not (contains!9342 lt!598238 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354491 () Bool)

(declare-fun res!899654 () Bool)

(assert (=> b!1354491 (=> (not res!899654) (not e!769450))))

(assert (=> b!1354491 (= res!899654 (not (contains!9342 lt!598238 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354492 () Bool)

(declare-fun res!899655 () Bool)

(assert (=> b!1354492 (=> (not res!899655) (not e!769451))))

(assert (=> b!1354492 (= res!899655 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354493 () Bool)

(declare-fun res!899653 () Bool)

(assert (=> b!1354493 (=> (not res!899653) (not e!769450))))

(assert (=> b!1354493 (= res!899653 (noDuplicate!2221 lt!598238))))

(declare-fun res!899652 () Bool)

(assert (=> start!114120 (=> (not res!899652) (not e!769451))))

(assert (=> start!114120 (= res!899652 (and (bvslt (size!45107 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45107 a!3742))))))

(assert (=> start!114120 e!769451))

(assert (=> start!114120 true))

(declare-fun array_inv!33501 (array!92225) Bool)

(assert (=> start!114120 (array_inv!33501 a!3742)))

(declare-fun b!1354486 () Bool)

(declare-fun res!899658 () Bool)

(assert (=> b!1354486 (=> (not res!899658) (not e!769451))))

(assert (=> b!1354486 (= res!899658 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45107 a!3742)))))

(assert (= (and start!114120 res!899652) b!1354487))

(assert (= (and b!1354487 res!899648) b!1354485))

(assert (= (and b!1354485 res!899645) b!1354480))

(assert (= (and b!1354480 res!899656) b!1354481))

(assert (= (and b!1354481 res!899651) b!1354488))

(assert (= (and b!1354488 res!899644) b!1354478))

(assert (= (and b!1354478 res!899649) b!1354492))

(assert (= (and b!1354492 res!899655) b!1354486))

(assert (= (and b!1354486 res!899658) b!1354484))

(assert (= (and b!1354484 c!126859) b!1354482))

(assert (= (and b!1354484 (not c!126859)) b!1354489))

(assert (= (and b!1354484 res!899647) b!1354479))

(assert (= (and b!1354479 res!899650) b!1354493))

(assert (= (and b!1354493 res!899653) b!1354490))

(assert (= (and b!1354490 res!899657) b!1354491))

(assert (= (and b!1354491 res!899654) b!1354477))

(assert (= (and b!1354477 res!899646) b!1354483))

(declare-fun m!1240861 () Bool)

(assert (=> b!1354487 m!1240861))

(declare-fun m!1240863 () Bool)

(assert (=> b!1354480 m!1240863))

(declare-fun m!1240865 () Bool)

(assert (=> b!1354485 m!1240865))

(declare-fun m!1240867 () Bool)

(assert (=> b!1354483 m!1240867))

(declare-fun m!1240869 () Bool)

(assert (=> b!1354483 m!1240869))

(declare-fun m!1240871 () Bool)

(assert (=> b!1354483 m!1240871))

(declare-fun m!1240873 () Bool)

(assert (=> b!1354484 m!1240873))

(assert (=> b!1354484 m!1240873))

(declare-fun m!1240875 () Bool)

(assert (=> b!1354484 m!1240875))

(assert (=> b!1354479 m!1240873))

(assert (=> b!1354479 m!1240873))

(declare-fun m!1240877 () Bool)

(assert (=> b!1354479 m!1240877))

(declare-fun m!1240879 () Bool)

(assert (=> b!1354490 m!1240879))

(declare-fun m!1240881 () Bool)

(assert (=> b!1354493 m!1240881))

(declare-fun m!1240883 () Bool)

(assert (=> b!1354477 m!1240883))

(declare-fun m!1240885 () Bool)

(assert (=> b!1354492 m!1240885))

(declare-fun m!1240887 () Bool)

(assert (=> b!1354481 m!1240887))

(declare-fun m!1240889 () Bool)

(assert (=> b!1354491 m!1240889))

(declare-fun m!1240891 () Bool)

(assert (=> b!1354488 m!1240891))

(declare-fun m!1240893 () Bool)

(assert (=> start!114120 m!1240893))

(declare-fun m!1240895 () Bool)

(assert (=> b!1354482 m!1240895))

(assert (=> b!1354482 m!1240873))

(assert (=> b!1354482 m!1240877))

(declare-fun m!1240897 () Bool)

(assert (=> b!1354482 m!1240897))

(declare-fun m!1240899 () Bool)

(assert (=> b!1354482 m!1240899))

(assert (=> b!1354482 m!1240873))

(assert (=> b!1354482 m!1240877))

(declare-fun m!1240901 () Bool)

(assert (=> b!1354482 m!1240901))

(push 1)

(assert (not b!1354493))

(assert (not b!1354488))

(assert (not start!114120))

(assert (not b!1354480))

(assert (not b!1354482))

(assert (not b!1354492))

(assert (not b!1354483))

(assert (not b!1354490))

(assert (not b!1354487))

(assert (not b!1354491))

(assert (not b!1354485))

(assert (not b!1354477))

(assert (not b!1354481))

(assert (not b!1354484))

(assert (not b!1354479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

