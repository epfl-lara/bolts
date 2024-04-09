; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114046 () Bool)

(assert start!114046)

(declare-fun b!1352759 () Bool)

(declare-fun res!898152 () Bool)

(declare-fun e!768918 () Bool)

(assert (=> b!1352759 (=> (not res!898152) (not e!768918))))

(declare-datatypes ((List!31740 0))(
  ( (Nil!31737) (Cons!31736 (h!32945 (_ BitVec 64)) (t!46405 List!31740)) )
))
(declare-fun acc!759 () List!31740)

(declare-datatypes ((array!92151 0))(
  ( (array!92152 (arr!44519 (Array (_ BitVec 32) (_ BitVec 64))) (size!45070 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92151)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92151 (_ BitVec 32) List!31740) Bool)

(assert (=> b!1352759 (= res!898152 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352761 () Bool)

(declare-datatypes ((Unit!44321 0))(
  ( (Unit!44322) )
))
(declare-fun e!768917 () Unit!44321)

(declare-fun lt!597612 () Unit!44321)

(assert (=> b!1352761 (= e!768917 lt!597612)))

(declare-fun lt!597614 () Unit!44321)

(declare-fun lemmaListSubSeqRefl!0 (List!31740) Unit!44321)

(assert (=> b!1352761 (= lt!597614 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!714 (List!31740 List!31740) Bool)

(assert (=> b!1352761 (subseq!714 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92151 List!31740 List!31740 (_ BitVec 32)) Unit!44321)

(declare-fun $colon$colon!731 (List!31740 (_ BitVec 64)) List!31740)

(assert (=> b!1352761 (= lt!597612 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!731 acc!759 (select (arr!44519 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352761 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352762 () Bool)

(declare-fun res!898158 () Bool)

(declare-fun e!768919 () Bool)

(assert (=> b!1352762 (=> (not res!898158) (not e!768919))))

(assert (=> b!1352762 (= res!898158 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45070 a!3742)))))

(declare-fun b!1352763 () Bool)

(declare-fun res!898156 () Bool)

(assert (=> b!1352763 (=> (not res!898156) (not e!768919))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352763 (= res!898156 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352764 () Bool)

(declare-fun Unit!44323 () Unit!44321)

(assert (=> b!1352764 (= e!768917 Unit!44323)))

(declare-fun b!1352765 () Bool)

(declare-fun res!898154 () Bool)

(assert (=> b!1352765 (=> (not res!898154) (not e!768919))))

(declare-fun noDuplicate!2184 (List!31740) Bool)

(assert (=> b!1352765 (= res!898154 (noDuplicate!2184 acc!759))))

(declare-fun b!1352766 () Bool)

(declare-fun res!898150 () Bool)

(assert (=> b!1352766 (=> (not res!898150) (not e!768919))))

(assert (=> b!1352766 (= res!898150 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352767 () Bool)

(declare-fun res!898155 () Bool)

(assert (=> b!1352767 (=> (not res!898155) (not e!768919))))

(assert (=> b!1352767 (= res!898155 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31737))))

(declare-fun b!1352768 () Bool)

(assert (=> b!1352768 (= e!768919 e!768918)))

(declare-fun res!898151 () Bool)

(assert (=> b!1352768 (=> (not res!898151) (not e!768918))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352768 (= res!898151 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597613 () Unit!44321)

(assert (=> b!1352768 (= lt!597613 e!768917)))

(declare-fun c!126748 () Bool)

(assert (=> b!1352768 (= c!126748 (validKeyInArray!0 (select (arr!44519 a!3742) from!3120)))))

(declare-fun b!1352769 () Bool)

(declare-fun res!898148 () Bool)

(assert (=> b!1352769 (=> (not res!898148) (not e!768919))))

(declare-fun contains!9305 (List!31740 (_ BitVec 64)) Bool)

(assert (=> b!1352769 (= res!898148 (not (contains!9305 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352770 () Bool)

(declare-fun res!898157 () Bool)

(assert (=> b!1352770 (=> (not res!898157) (not e!768919))))

(assert (=> b!1352770 (= res!898157 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45070 a!3742))))))

(declare-fun b!1352771 () Bool)

(assert (=> b!1352771 (= e!768918 (not true))))

(assert (=> b!1352771 (arrayNoDuplicates!0 (array!92152 (store (arr!44519 a!3742) i!1404 l!3587) (size!45070 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597611 () Unit!44321)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92151 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31740) Unit!44321)

(assert (=> b!1352771 (= lt!597611 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352760 () Bool)

(declare-fun res!898153 () Bool)

(assert (=> b!1352760 (=> (not res!898153) (not e!768919))))

(assert (=> b!1352760 (= res!898153 (not (contains!9305 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!898149 () Bool)

(assert (=> start!114046 (=> (not res!898149) (not e!768919))))

(assert (=> start!114046 (= res!898149 (and (bvslt (size!45070 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45070 a!3742))))))

(assert (=> start!114046 e!768919))

(assert (=> start!114046 true))

(declare-fun array_inv!33464 (array!92151) Bool)

(assert (=> start!114046 (array_inv!33464 a!3742)))

(assert (= (and start!114046 res!898149) b!1352765))

(assert (= (and b!1352765 res!898154) b!1352760))

(assert (= (and b!1352760 res!898153) b!1352769))

(assert (= (and b!1352769 res!898148) b!1352767))

(assert (= (and b!1352767 res!898155) b!1352766))

(assert (= (and b!1352766 res!898150) b!1352770))

(assert (= (and b!1352770 res!898157) b!1352763))

(assert (= (and b!1352763 res!898156) b!1352762))

(assert (= (and b!1352762 res!898158) b!1352768))

(assert (= (and b!1352768 c!126748) b!1352761))

(assert (= (and b!1352768 (not c!126748)) b!1352764))

(assert (= (and b!1352768 res!898151) b!1352759))

(assert (= (and b!1352759 res!898152) b!1352771))

(declare-fun m!1239533 () Bool)

(assert (=> b!1352759 m!1239533))

(declare-fun m!1239535 () Bool)

(assert (=> b!1352768 m!1239535))

(assert (=> b!1352768 m!1239535))

(declare-fun m!1239537 () Bool)

(assert (=> b!1352768 m!1239537))

(declare-fun m!1239539 () Bool)

(assert (=> b!1352771 m!1239539))

(declare-fun m!1239541 () Bool)

(assert (=> b!1352771 m!1239541))

(declare-fun m!1239543 () Bool)

(assert (=> b!1352771 m!1239543))

(declare-fun m!1239545 () Bool)

(assert (=> b!1352763 m!1239545))

(declare-fun m!1239547 () Bool)

(assert (=> b!1352760 m!1239547))

(declare-fun m!1239549 () Bool)

(assert (=> b!1352769 m!1239549))

(declare-fun m!1239551 () Bool)

(assert (=> b!1352766 m!1239551))

(declare-fun m!1239553 () Bool)

(assert (=> b!1352761 m!1239553))

(assert (=> b!1352761 m!1239535))

(declare-fun m!1239555 () Bool)

(assert (=> b!1352761 m!1239555))

(declare-fun m!1239557 () Bool)

(assert (=> b!1352761 m!1239557))

(assert (=> b!1352761 m!1239533))

(assert (=> b!1352761 m!1239535))

(assert (=> b!1352761 m!1239555))

(declare-fun m!1239559 () Bool)

(assert (=> b!1352761 m!1239559))

(declare-fun m!1239561 () Bool)

(assert (=> b!1352765 m!1239561))

(declare-fun m!1239563 () Bool)

(assert (=> b!1352767 m!1239563))

(declare-fun m!1239565 () Bool)

(assert (=> start!114046 m!1239565))

(check-sat (not b!1352765) (not b!1352768) (not b!1352759) (not start!114046) (not b!1352767) (not b!1352763) (not b!1352771) (not b!1352766) (not b!1352761) (not b!1352769) (not b!1352760))
(check-sat)
