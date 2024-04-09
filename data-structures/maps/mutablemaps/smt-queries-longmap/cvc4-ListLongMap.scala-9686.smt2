; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114390 () Bool)

(assert start!114390)

(declare-fun b!1357697 () Bool)

(declare-fun res!902527 () Bool)

(declare-fun e!770601 () Bool)

(assert (=> b!1357697 (=> (not res!902527) (not e!770601))))

(declare-datatypes ((array!92405 0))(
  ( (array!92406 (arr!44643 (Array (_ BitVec 32) (_ BitVec 64))) (size!45194 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92405)

(declare-datatypes ((List!31864 0))(
  ( (Nil!31861) (Cons!31860 (h!33069 (_ BitVec 64)) (t!46535 List!31864)) )
))
(declare-fun arrayNoDuplicates!0 (array!92405 (_ BitVec 32) List!31864) Bool)

(assert (=> b!1357697 (= res!902527 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31861))))

(declare-fun b!1357698 () Bool)

(declare-fun res!902531 () Bool)

(assert (=> b!1357698 (=> (not res!902531) (not e!770601))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357698 (= res!902531 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45194 a!3742))))))

(declare-fun b!1357699 () Bool)

(declare-fun res!902530 () Bool)

(assert (=> b!1357699 (=> (not res!902530) (not e!770601))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1357699 (= res!902530 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45194 a!3742)))))

(declare-fun b!1357700 () Bool)

(declare-fun res!902528 () Bool)

(assert (=> b!1357700 (=> (not res!902528) (not e!770601))))

(declare-fun acc!759 () List!31864)

(declare-fun contains!9429 (List!31864 (_ BitVec 64)) Bool)

(assert (=> b!1357700 (= res!902528 (not (contains!9429 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!902536 () Bool)

(assert (=> start!114390 (=> (not res!902536) (not e!770601))))

(assert (=> start!114390 (= res!902536 (and (bvslt (size!45194 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45194 a!3742))))))

(assert (=> start!114390 e!770601))

(assert (=> start!114390 true))

(declare-fun array_inv!33588 (array!92405) Bool)

(assert (=> start!114390 (array_inv!33588 a!3742)))

(declare-fun b!1357701 () Bool)

(declare-fun e!770602 () Bool)

(assert (=> b!1357701 (= e!770601 (not e!770602))))

(declare-fun res!902534 () Bool)

(assert (=> b!1357701 (=> res!902534 e!770602)))

(assert (=> b!1357701 (= res!902534 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun lt!599158 () List!31864)

(declare-fun $colon$colon!825 (List!31864 (_ BitVec 64)) List!31864)

(assert (=> b!1357701 (= lt!599158 ($colon$colon!825 acc!759 (select (arr!44643 a!3742) from!3120)))))

(declare-fun subseq!820 (List!31864 List!31864) Bool)

(assert (=> b!1357701 (subseq!820 acc!759 acc!759)))

(declare-datatypes ((Unit!44619 0))(
  ( (Unit!44620) )
))
(declare-fun lt!599157 () Unit!44619)

(declare-fun lemmaListSubSeqRefl!0 (List!31864) Unit!44619)

(assert (=> b!1357701 (= lt!599157 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357702 () Bool)

(declare-fun res!902538 () Bool)

(assert (=> b!1357702 (=> (not res!902538) (not e!770601))))

(assert (=> b!1357702 (= res!902538 (not (contains!9429 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357703 () Bool)

(assert (=> b!1357703 (= e!770602 true)))

(declare-fun lt!599159 () Bool)

(assert (=> b!1357703 (= lt!599159 (contains!9429 lt!599158 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357704 () Bool)

(declare-fun res!902529 () Bool)

(assert (=> b!1357704 (=> (not res!902529) (not e!770601))))

(assert (=> b!1357704 (= res!902529 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357705 () Bool)

(declare-fun res!902535 () Bool)

(assert (=> b!1357705 (=> (not res!902535) (not e!770601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357705 (= res!902535 (validKeyInArray!0 (select (arr!44643 a!3742) from!3120)))))

(declare-fun b!1357706 () Bool)

(declare-fun res!902537 () Bool)

(assert (=> b!1357706 (=> (not res!902537) (not e!770601))))

(declare-fun noDuplicate!2308 (List!31864) Bool)

(assert (=> b!1357706 (= res!902537 (noDuplicate!2308 acc!759))))

(declare-fun b!1357707 () Bool)

(declare-fun res!902532 () Bool)

(assert (=> b!1357707 (=> res!902532 e!770602)))

(assert (=> b!1357707 (= res!902532 (contains!9429 lt!599158 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357708 () Bool)

(declare-fun res!902526 () Bool)

(assert (=> b!1357708 (=> (not res!902526) (not e!770601))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357708 (= res!902526 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1357709 () Bool)

(declare-fun res!902533 () Bool)

(assert (=> b!1357709 (=> res!902533 e!770602)))

(assert (=> b!1357709 (= res!902533 (not (noDuplicate!2308 lt!599158)))))

(assert (= (and start!114390 res!902536) b!1357706))

(assert (= (and b!1357706 res!902537) b!1357702))

(assert (= (and b!1357702 res!902538) b!1357700))

(assert (= (and b!1357700 res!902528) b!1357697))

(assert (= (and b!1357697 res!902527) b!1357704))

(assert (= (and b!1357704 res!902529) b!1357698))

(assert (= (and b!1357698 res!902531) b!1357708))

(assert (= (and b!1357708 res!902526) b!1357699))

(assert (= (and b!1357699 res!902530) b!1357705))

(assert (= (and b!1357705 res!902535) b!1357701))

(assert (= (and b!1357701 (not res!902534)) b!1357709))

(assert (= (and b!1357709 (not res!902533)) b!1357707))

(assert (= (and b!1357707 (not res!902532)) b!1357703))

(declare-fun m!1243411 () Bool)

(assert (=> b!1357705 m!1243411))

(assert (=> b!1357705 m!1243411))

(declare-fun m!1243413 () Bool)

(assert (=> b!1357705 m!1243413))

(declare-fun m!1243415 () Bool)

(assert (=> b!1357708 m!1243415))

(declare-fun m!1243417 () Bool)

(assert (=> b!1357697 m!1243417))

(declare-fun m!1243419 () Bool)

(assert (=> b!1357704 m!1243419))

(declare-fun m!1243421 () Bool)

(assert (=> b!1357702 m!1243421))

(declare-fun m!1243423 () Bool)

(assert (=> b!1357707 m!1243423))

(declare-fun m!1243425 () Bool)

(assert (=> b!1357709 m!1243425))

(declare-fun m!1243427 () Bool)

(assert (=> b!1357706 m!1243427))

(declare-fun m!1243429 () Bool)

(assert (=> b!1357700 m!1243429))

(declare-fun m!1243431 () Bool)

(assert (=> start!114390 m!1243431))

(declare-fun m!1243433 () Bool)

(assert (=> b!1357703 m!1243433))

(assert (=> b!1357701 m!1243411))

(assert (=> b!1357701 m!1243411))

(declare-fun m!1243435 () Bool)

(assert (=> b!1357701 m!1243435))

(declare-fun m!1243437 () Bool)

(assert (=> b!1357701 m!1243437))

(declare-fun m!1243439 () Bool)

(assert (=> b!1357701 m!1243439))

(push 1)

(assert (not b!1357703))

(assert (not b!1357708))

(assert (not b!1357702))

(assert (not b!1357709))

(assert (not b!1357700))

(assert (not b!1357697))

(assert (not b!1357704))

(assert (not b!1357707))

(assert (not b!1357705))

(assert (not b!1357701))

(assert (not b!1357706))

(assert (not start!114390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

