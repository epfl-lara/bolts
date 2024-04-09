; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114702 () Bool)

(assert start!114702)

(declare-fun b!1360132 () Bool)

(declare-fun res!904587 () Bool)

(declare-fun e!771729 () Bool)

(assert (=> b!1360132 (=> (not res!904587) (not e!771729))))

(declare-datatypes ((List!31912 0))(
  ( (Nil!31909) (Cons!31908 (h!33117 (_ BitVec 64)) (t!46595 List!31912)) )
))
(declare-fun acc!759 () List!31912)

(declare-fun noDuplicate!2356 (List!31912) Bool)

(assert (=> b!1360132 (= res!904587 (noDuplicate!2356 acc!759))))

(declare-fun b!1360133 () Bool)

(declare-fun res!904591 () Bool)

(assert (=> b!1360133 (=> (not res!904591) (not e!771729))))

(declare-fun contains!9477 (List!31912 (_ BitVec 64)) Bool)

(assert (=> b!1360133 (= res!904591 (not (contains!9477 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360134 () Bool)

(assert (=> b!1360134 (= e!771729 false)))

(declare-datatypes ((Unit!44756 0))(
  ( (Unit!44757) )
))
(declare-fun lt!599759 () Unit!44756)

(declare-fun e!771730 () Unit!44756)

(assert (=> b!1360134 (= lt!599759 e!771730)))

(declare-fun c!127216 () Bool)

(declare-datatypes ((array!92513 0))(
  ( (array!92514 (arr!44691 (Array (_ BitVec 32) (_ BitVec 64))) (size!45242 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92513)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360134 (= c!127216 (validKeyInArray!0 (select (arr!44691 a!3742) from!3120)))))

(declare-fun b!1360136 () Bool)

(declare-fun res!904588 () Bool)

(assert (=> b!1360136 (=> (not res!904588) (not e!771729))))

(declare-fun arrayNoDuplicates!0 (array!92513 (_ BitVec 32) List!31912) Bool)

(assert (=> b!1360136 (= res!904588 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360137 () Bool)

(declare-fun Unit!44758 () Unit!44756)

(assert (=> b!1360137 (= e!771730 Unit!44758)))

(declare-fun b!1360138 () Bool)

(declare-fun res!904586 () Bool)

(assert (=> b!1360138 (=> (not res!904586) (not e!771729))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1360138 (= res!904586 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360139 () Bool)

(declare-fun res!904593 () Bool)

(assert (=> b!1360139 (=> (not res!904593) (not e!771729))))

(assert (=> b!1360139 (= res!904593 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45242 a!3742)))))

(declare-fun b!1360140 () Bool)

(declare-fun lt!599758 () Unit!44756)

(assert (=> b!1360140 (= e!771730 lt!599758)))

(declare-fun lt!599757 () Unit!44756)

(declare-fun lemmaListSubSeqRefl!0 (List!31912) Unit!44756)

(assert (=> b!1360140 (= lt!599757 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!868 (List!31912 List!31912) Bool)

(assert (=> b!1360140 (subseq!868 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92513 List!31912 List!31912 (_ BitVec 32)) Unit!44756)

(declare-fun $colon$colon!873 (List!31912 (_ BitVec 64)) List!31912)

(assert (=> b!1360140 (= lt!599758 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!873 acc!759 (select (arr!44691 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360140 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!904592 () Bool)

(assert (=> start!114702 (=> (not res!904592) (not e!771729))))

(assert (=> start!114702 (= res!904592 (and (bvslt (size!45242 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45242 a!3742))))))

(assert (=> start!114702 e!771729))

(assert (=> start!114702 true))

(declare-fun array_inv!33636 (array!92513) Bool)

(assert (=> start!114702 (array_inv!33636 a!3742)))

(declare-fun b!1360135 () Bool)

(declare-fun res!904585 () Bool)

(assert (=> b!1360135 (=> (not res!904585) (not e!771729))))

(assert (=> b!1360135 (= res!904585 (not (contains!9477 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360141 () Bool)

(declare-fun res!904589 () Bool)

(assert (=> b!1360141 (=> (not res!904589) (not e!771729))))

(assert (=> b!1360141 (= res!904589 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31909))))

(declare-fun b!1360142 () Bool)

(declare-fun res!904590 () Bool)

(assert (=> b!1360142 (=> (not res!904590) (not e!771729))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360142 (= res!904590 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45242 a!3742))))))

(assert (= (and start!114702 res!904592) b!1360132))

(assert (= (and b!1360132 res!904587) b!1360133))

(assert (= (and b!1360133 res!904591) b!1360135))

(assert (= (and b!1360135 res!904585) b!1360141))

(assert (= (and b!1360141 res!904589) b!1360136))

(assert (= (and b!1360136 res!904588) b!1360142))

(assert (= (and b!1360142 res!904590) b!1360138))

(assert (= (and b!1360138 res!904586) b!1360139))

(assert (= (and b!1360139 res!904593) b!1360134))

(assert (= (and b!1360134 c!127216) b!1360140))

(assert (= (and b!1360134 (not c!127216)) b!1360137))

(declare-fun m!1245477 () Bool)

(assert (=> b!1360132 m!1245477))

(declare-fun m!1245479 () Bool)

(assert (=> b!1360133 m!1245479))

(declare-fun m!1245481 () Bool)

(assert (=> start!114702 m!1245481))

(declare-fun m!1245483 () Bool)

(assert (=> b!1360134 m!1245483))

(assert (=> b!1360134 m!1245483))

(declare-fun m!1245485 () Bool)

(assert (=> b!1360134 m!1245485))

(declare-fun m!1245487 () Bool)

(assert (=> b!1360135 m!1245487))

(declare-fun m!1245489 () Bool)

(assert (=> b!1360136 m!1245489))

(declare-fun m!1245491 () Bool)

(assert (=> b!1360140 m!1245491))

(assert (=> b!1360140 m!1245483))

(declare-fun m!1245493 () Bool)

(assert (=> b!1360140 m!1245493))

(declare-fun m!1245495 () Bool)

(assert (=> b!1360140 m!1245495))

(declare-fun m!1245497 () Bool)

(assert (=> b!1360140 m!1245497))

(assert (=> b!1360140 m!1245483))

(assert (=> b!1360140 m!1245493))

(declare-fun m!1245499 () Bool)

(assert (=> b!1360140 m!1245499))

(declare-fun m!1245501 () Bool)

(assert (=> b!1360138 m!1245501))

(declare-fun m!1245503 () Bool)

(assert (=> b!1360141 m!1245503))

(push 1)

(assert (not b!1360132))

(assert (not b!1360134))

(assert (not b!1360133))

(assert (not b!1360136))

(assert (not b!1360141))

(assert (not start!114702))

(assert (not b!1360138))

(assert (not b!1360140))

(assert (not b!1360135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

