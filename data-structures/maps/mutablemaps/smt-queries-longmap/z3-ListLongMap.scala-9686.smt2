; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114388 () Bool)

(assert start!114388)

(declare-fun b!1357658 () Bool)

(declare-fun res!902497 () Bool)

(declare-fun e!770592 () Bool)

(assert (=> b!1357658 (=> (not res!902497) (not e!770592))))

(declare-datatypes ((array!92403 0))(
  ( (array!92404 (arr!44642 (Array (_ BitVec 32) (_ BitVec 64))) (size!45193 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92403)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357658 (= res!902497 (validKeyInArray!0 (select (arr!44642 a!3742) from!3120)))))

(declare-fun b!1357659 () Bool)

(declare-fun e!770591 () Bool)

(assert (=> b!1357659 (= e!770592 (not e!770591))))

(declare-fun res!902494 () Bool)

(assert (=> b!1357659 (=> res!902494 e!770591)))

(assert (=> b!1357659 (= res!902494 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31863 0))(
  ( (Nil!31860) (Cons!31859 (h!33068 (_ BitVec 64)) (t!46534 List!31863)) )
))
(declare-fun lt!599150 () List!31863)

(declare-fun acc!759 () List!31863)

(declare-fun $colon$colon!824 (List!31863 (_ BitVec 64)) List!31863)

(assert (=> b!1357659 (= lt!599150 ($colon$colon!824 acc!759 (select (arr!44642 a!3742) from!3120)))))

(declare-fun subseq!819 (List!31863 List!31863) Bool)

(assert (=> b!1357659 (subseq!819 acc!759 acc!759)))

(declare-datatypes ((Unit!44617 0))(
  ( (Unit!44618) )
))
(declare-fun lt!599149 () Unit!44617)

(declare-fun lemmaListSubSeqRefl!0 (List!31863) Unit!44617)

(assert (=> b!1357659 (= lt!599149 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357661 () Bool)

(assert (=> b!1357661 (= e!770591 true)))

(declare-fun lt!599148 () Bool)

(declare-fun contains!9428 (List!31863 (_ BitVec 64)) Bool)

(assert (=> b!1357661 (= lt!599148 (contains!9428 lt!599150 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357662 () Bool)

(declare-fun res!902491 () Bool)

(assert (=> b!1357662 (=> (not res!902491) (not e!770592))))

(declare-fun arrayNoDuplicates!0 (array!92403 (_ BitVec 32) List!31863) Bool)

(assert (=> b!1357662 (= res!902491 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357663 () Bool)

(declare-fun res!902499 () Bool)

(assert (=> b!1357663 (=> res!902499 e!770591)))

(declare-fun noDuplicate!2307 (List!31863) Bool)

(assert (=> b!1357663 (= res!902499 (not (noDuplicate!2307 lt!599150)))))

(declare-fun b!1357664 () Bool)

(declare-fun res!902495 () Bool)

(assert (=> b!1357664 (=> (not res!902495) (not e!770592))))

(assert (=> b!1357664 (= res!902495 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31860))))

(declare-fun b!1357665 () Bool)

(declare-fun res!902490 () Bool)

(assert (=> b!1357665 (=> (not res!902490) (not e!770592))))

(assert (=> b!1357665 (= res!902490 (not (contains!9428 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357666 () Bool)

(declare-fun res!902498 () Bool)

(assert (=> b!1357666 (=> (not res!902498) (not e!770592))))

(assert (=> b!1357666 (= res!902498 (noDuplicate!2307 acc!759))))

(declare-fun b!1357667 () Bool)

(declare-fun res!902487 () Bool)

(assert (=> b!1357667 (=> res!902487 e!770591)))

(assert (=> b!1357667 (= res!902487 (contains!9428 lt!599150 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357668 () Bool)

(declare-fun res!902496 () Bool)

(assert (=> b!1357668 (=> (not res!902496) (not e!770592))))

(assert (=> b!1357668 (= res!902496 (not (contains!9428 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!902488 () Bool)

(assert (=> start!114388 (=> (not res!902488) (not e!770592))))

(assert (=> start!114388 (= res!902488 (and (bvslt (size!45193 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45193 a!3742))))))

(assert (=> start!114388 e!770592))

(assert (=> start!114388 true))

(declare-fun array_inv!33587 (array!92403) Bool)

(assert (=> start!114388 (array_inv!33587 a!3742)))

(declare-fun b!1357660 () Bool)

(declare-fun res!902492 () Bool)

(assert (=> b!1357660 (=> (not res!902492) (not e!770592))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357660 (= res!902492 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45193 a!3742))))))

(declare-fun b!1357669 () Bool)

(declare-fun res!902489 () Bool)

(assert (=> b!1357669 (=> (not res!902489) (not e!770592))))

(assert (=> b!1357669 (= res!902489 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45193 a!3742)))))

(declare-fun b!1357670 () Bool)

(declare-fun res!902493 () Bool)

(assert (=> b!1357670 (=> (not res!902493) (not e!770592))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357670 (= res!902493 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114388 res!902488) b!1357666))

(assert (= (and b!1357666 res!902498) b!1357665))

(assert (= (and b!1357665 res!902490) b!1357668))

(assert (= (and b!1357668 res!902496) b!1357664))

(assert (= (and b!1357664 res!902495) b!1357662))

(assert (= (and b!1357662 res!902491) b!1357660))

(assert (= (and b!1357660 res!902492) b!1357670))

(assert (= (and b!1357670 res!902493) b!1357669))

(assert (= (and b!1357669 res!902489) b!1357658))

(assert (= (and b!1357658 res!902497) b!1357659))

(assert (= (and b!1357659 (not res!902494)) b!1357663))

(assert (= (and b!1357663 (not res!902499)) b!1357667))

(assert (= (and b!1357667 (not res!902487)) b!1357661))

(declare-fun m!1243381 () Bool)

(assert (=> b!1357667 m!1243381))

(declare-fun m!1243383 () Bool)

(assert (=> b!1357661 m!1243383))

(declare-fun m!1243385 () Bool)

(assert (=> b!1357666 m!1243385))

(declare-fun m!1243387 () Bool)

(assert (=> b!1357662 m!1243387))

(declare-fun m!1243389 () Bool)

(assert (=> b!1357658 m!1243389))

(assert (=> b!1357658 m!1243389))

(declare-fun m!1243391 () Bool)

(assert (=> b!1357658 m!1243391))

(declare-fun m!1243393 () Bool)

(assert (=> b!1357668 m!1243393))

(declare-fun m!1243395 () Bool)

(assert (=> b!1357664 m!1243395))

(declare-fun m!1243397 () Bool)

(assert (=> b!1357670 m!1243397))

(declare-fun m!1243399 () Bool)

(assert (=> b!1357665 m!1243399))

(declare-fun m!1243401 () Bool)

(assert (=> b!1357663 m!1243401))

(assert (=> b!1357659 m!1243389))

(assert (=> b!1357659 m!1243389))

(declare-fun m!1243403 () Bool)

(assert (=> b!1357659 m!1243403))

(declare-fun m!1243405 () Bool)

(assert (=> b!1357659 m!1243405))

(declare-fun m!1243407 () Bool)

(assert (=> b!1357659 m!1243407))

(declare-fun m!1243409 () Bool)

(assert (=> start!114388 m!1243409))

(check-sat (not b!1357658) (not b!1357664) (not b!1357662) (not start!114388) (not b!1357670) (not b!1357668) (not b!1357663) (not b!1357659) (not b!1357661) (not b!1357665) (not b!1357666) (not b!1357667))
