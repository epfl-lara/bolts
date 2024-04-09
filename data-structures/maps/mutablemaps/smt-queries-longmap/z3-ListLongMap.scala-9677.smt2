; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114238 () Bool)

(assert start!114238)

(declare-fun b!1356580 () Bool)

(declare-fun res!901458 () Bool)

(declare-fun e!770121 () Bool)

(assert (=> b!1356580 (=> (not res!901458) (not e!770121))))

(declare-datatypes ((List!31836 0))(
  ( (Nil!31833) (Cons!31832 (h!33041 (_ BitVec 64)) (t!46501 List!31836)) )
))
(declare-fun acc!759 () List!31836)

(declare-fun contains!9401 (List!31836 (_ BitVec 64)) Bool)

(assert (=> b!1356580 (= res!901458 (not (contains!9401 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901459 () Bool)

(assert (=> start!114238 (=> (not res!901459) (not e!770121))))

(declare-datatypes ((array!92343 0))(
  ( (array!92344 (arr!44615 (Array (_ BitVec 32) (_ BitVec 64))) (size!45166 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92343)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114238 (= res!901459 (and (bvslt (size!45166 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45166 a!3742))))))

(assert (=> start!114238 e!770121))

(declare-fun array_inv!33560 (array!92343) Bool)

(assert (=> start!114238 (array_inv!33560 a!3742)))

(assert (=> start!114238 true))

(declare-fun b!1356581 () Bool)

(declare-fun res!901460 () Bool)

(assert (=> b!1356581 (=> (not res!901460) (not e!770121))))

(declare-fun arrayNoDuplicates!0 (array!92343 (_ BitVec 32) List!31836) Bool)

(assert (=> b!1356581 (= res!901460 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31833))))

(declare-fun b!1356582 () Bool)

(declare-fun res!901457 () Bool)

(assert (=> b!1356582 (=> (not res!901457) (not e!770121))))

(assert (=> b!1356582 (= res!901457 (not (contains!9401 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356583 () Bool)

(assert (=> b!1356583 (= e!770121 false)))

(declare-fun lt!599009 () Bool)

(assert (=> b!1356583 (= lt!599009 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356584 () Bool)

(declare-fun res!901461 () Bool)

(assert (=> b!1356584 (=> (not res!901461) (not e!770121))))

(declare-fun noDuplicate!2280 (List!31836) Bool)

(assert (=> b!1356584 (= res!901461 (noDuplicate!2280 acc!759))))

(assert (= (and start!114238 res!901459) b!1356584))

(assert (= (and b!1356584 res!901461) b!1356582))

(assert (= (and b!1356582 res!901457) b!1356580))

(assert (= (and b!1356580 res!901458) b!1356581))

(assert (= (and b!1356581 res!901460) b!1356583))

(declare-fun m!1242571 () Bool)

(assert (=> b!1356584 m!1242571))

(declare-fun m!1242573 () Bool)

(assert (=> start!114238 m!1242573))

(declare-fun m!1242575 () Bool)

(assert (=> b!1356582 m!1242575))

(declare-fun m!1242577 () Bool)

(assert (=> b!1356583 m!1242577))

(declare-fun m!1242579 () Bool)

(assert (=> b!1356580 m!1242579))

(declare-fun m!1242581 () Bool)

(assert (=> b!1356581 m!1242581))

(check-sat (not start!114238) (not b!1356584) (not b!1356581) (not b!1356580) (not b!1356583) (not b!1356582))
(check-sat)
