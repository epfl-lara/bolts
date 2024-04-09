; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114250 () Bool)

(assert start!114250)

(declare-fun b!1356697 () Bool)

(declare-fun res!901577 () Bool)

(declare-fun e!770157 () Bool)

(assert (=> b!1356697 (=> (not res!901577) (not e!770157))))

(declare-datatypes ((List!31842 0))(
  ( (Nil!31839) (Cons!31838 (h!33047 (_ BitVec 64)) (t!46507 List!31842)) )
))
(declare-fun acc!759 () List!31842)

(declare-fun noDuplicate!2286 (List!31842) Bool)

(assert (=> b!1356697 (= res!901577 (noDuplicate!2286 acc!759))))

(declare-fun b!1356698 () Bool)

(declare-fun res!901578 () Bool)

(assert (=> b!1356698 (=> (not res!901578) (not e!770157))))

(declare-fun contains!9407 (List!31842 (_ BitVec 64)) Bool)

(assert (=> b!1356698 (= res!901578 (not (contains!9407 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356699 () Bool)

(declare-fun res!901575 () Bool)

(assert (=> b!1356699 (=> (not res!901575) (not e!770157))))

(declare-datatypes ((array!92355 0))(
  ( (array!92356 (arr!44621 (Array (_ BitVec 32) (_ BitVec 64))) (size!45172 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92355)

(declare-fun arrayNoDuplicates!0 (array!92355 (_ BitVec 32) List!31842) Bool)

(assert (=> b!1356699 (= res!901575 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31839))))

(declare-fun b!1356700 () Bool)

(declare-fun res!901574 () Bool)

(assert (=> b!1356700 (=> (not res!901574) (not e!770157))))

(assert (=> b!1356700 (= res!901574 (not (contains!9407 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356701 () Bool)

(assert (=> b!1356701 (= e!770157 false)))

(declare-fun lt!599018 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1356701 (= lt!599018 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!901576 () Bool)

(assert (=> start!114250 (=> (not res!901576) (not e!770157))))

(assert (=> start!114250 (= res!901576 (and (bvslt (size!45172 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45172 a!3742))))))

(assert (=> start!114250 e!770157))

(declare-fun array_inv!33566 (array!92355) Bool)

(assert (=> start!114250 (array_inv!33566 a!3742)))

(assert (=> start!114250 true))

(assert (= (and start!114250 res!901576) b!1356697))

(assert (= (and b!1356697 res!901577) b!1356698))

(assert (= (and b!1356698 res!901578) b!1356700))

(assert (= (and b!1356700 res!901574) b!1356699))

(assert (= (and b!1356699 res!901575) b!1356701))

(declare-fun m!1242649 () Bool)

(assert (=> b!1356698 m!1242649))

(declare-fun m!1242651 () Bool)

(assert (=> start!114250 m!1242651))

(declare-fun m!1242653 () Bool)

(assert (=> b!1356697 m!1242653))

(declare-fun m!1242655 () Bool)

(assert (=> b!1356699 m!1242655))

(declare-fun m!1242657 () Bool)

(assert (=> b!1356700 m!1242657))

(declare-fun m!1242659 () Bool)

(assert (=> b!1356701 m!1242659))

(check-sat (not b!1356699) (not start!114250) (not b!1356701) (not b!1356700) (not b!1356697) (not b!1356698))
(check-sat)
