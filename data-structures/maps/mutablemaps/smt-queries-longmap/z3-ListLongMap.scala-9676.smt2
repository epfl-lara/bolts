; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114232 () Bool)

(assert start!114232)

(declare-fun b!1356535 () Bool)

(declare-fun e!770103 () Bool)

(assert (=> b!1356535 (= e!770103 false)))

(declare-fun lt!599000 () Bool)

(declare-datatypes ((List!31833 0))(
  ( (Nil!31830) (Cons!31829 (h!33038 (_ BitVec 64)) (t!46498 List!31833)) )
))
(declare-fun acc!759 () List!31833)

(declare-datatypes ((array!92337 0))(
  ( (array!92338 (arr!44612 (Array (_ BitVec 32) (_ BitVec 64))) (size!45163 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92337)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92337 (_ BitVec 32) List!31833) Bool)

(assert (=> b!1356535 (= lt!599000 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!901414 () Bool)

(assert (=> start!114232 (=> (not res!901414) (not e!770103))))

(assert (=> start!114232 (= res!901414 (and (bvslt (size!45163 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45163 a!3742))))))

(assert (=> start!114232 e!770103))

(declare-fun array_inv!33557 (array!92337) Bool)

(assert (=> start!114232 (array_inv!33557 a!3742)))

(assert (=> start!114232 true))

(declare-fun b!1356536 () Bool)

(declare-fun res!901412 () Bool)

(assert (=> b!1356536 (=> (not res!901412) (not e!770103))))

(assert (=> b!1356536 (= res!901412 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31830))))

(declare-fun b!1356537 () Bool)

(declare-fun res!901416 () Bool)

(assert (=> b!1356537 (=> (not res!901416) (not e!770103))))

(declare-fun contains!9398 (List!31833 (_ BitVec 64)) Bool)

(assert (=> b!1356537 (= res!901416 (not (contains!9398 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356538 () Bool)

(declare-fun res!901415 () Bool)

(assert (=> b!1356538 (=> (not res!901415) (not e!770103))))

(assert (=> b!1356538 (= res!901415 (not (contains!9398 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356539 () Bool)

(declare-fun res!901413 () Bool)

(assert (=> b!1356539 (=> (not res!901413) (not e!770103))))

(declare-fun noDuplicate!2277 (List!31833) Bool)

(assert (=> b!1356539 (= res!901413 (noDuplicate!2277 acc!759))))

(assert (= (and start!114232 res!901414) b!1356539))

(assert (= (and b!1356539 res!901413) b!1356538))

(assert (= (and b!1356538 res!901415) b!1356537))

(assert (= (and b!1356537 res!901416) b!1356536))

(assert (= (and b!1356536 res!901412) b!1356535))

(declare-fun m!1242535 () Bool)

(assert (=> b!1356535 m!1242535))

(declare-fun m!1242537 () Bool)

(assert (=> b!1356539 m!1242537))

(declare-fun m!1242539 () Bool)

(assert (=> b!1356537 m!1242539))

(declare-fun m!1242541 () Bool)

(assert (=> b!1356536 m!1242541))

(declare-fun m!1242543 () Bool)

(assert (=> start!114232 m!1242543))

(declare-fun m!1242545 () Bool)

(assert (=> b!1356538 m!1242545))

(check-sat (not b!1356535) (not b!1356536) (not b!1356538) (not b!1356539) (not b!1356537) (not start!114232))
(check-sat)
