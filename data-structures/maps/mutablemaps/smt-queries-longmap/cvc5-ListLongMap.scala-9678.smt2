; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114242 () Bool)

(assert start!114242)

(declare-fun res!901498 () Bool)

(declare-fun e!770134 () Bool)

(assert (=> start!114242 (=> (not res!901498) (not e!770134))))

(declare-datatypes ((array!92347 0))(
  ( (array!92348 (arr!44617 (Array (_ BitVec 32) (_ BitVec 64))) (size!45168 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92347)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114242 (= res!901498 (and (bvslt (size!45168 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45168 a!3742))))))

(assert (=> start!114242 e!770134))

(assert (=> start!114242 true))

(declare-fun array_inv!33562 (array!92347) Bool)

(assert (=> start!114242 (array_inv!33562 a!3742)))

(declare-fun b!1356616 () Bool)

(declare-fun res!901499 () Bool)

(assert (=> b!1356616 (=> (not res!901499) (not e!770134))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356616 (= res!901499 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356617 () Bool)

(declare-fun res!901500 () Bool)

(assert (=> b!1356617 (=> (not res!901500) (not e!770134))))

(declare-datatypes ((List!31838 0))(
  ( (Nil!31835) (Cons!31834 (h!33043 (_ BitVec 64)) (t!46503 List!31838)) )
))
(declare-fun acc!759 () List!31838)

(declare-fun noDuplicate!2282 (List!31838) Bool)

(assert (=> b!1356617 (= res!901500 (noDuplicate!2282 acc!759))))

(declare-fun b!1356618 () Bool)

(declare-fun res!901494 () Bool)

(assert (=> b!1356618 (=> (not res!901494) (not e!770134))))

(declare-fun contains!9403 (List!31838 (_ BitVec 64)) Bool)

(assert (=> b!1356618 (= res!901494 (not (contains!9403 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356619 () Bool)

(declare-fun res!901493 () Bool)

(assert (=> b!1356619 (=> (not res!901493) (not e!770134))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356619 (= res!901493 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45168 a!3742))))))

(declare-fun b!1356620 () Bool)

(declare-fun res!901495 () Bool)

(assert (=> b!1356620 (=> (not res!901495) (not e!770134))))

(declare-fun arrayNoDuplicates!0 (array!92347 (_ BitVec 32) List!31838) Bool)

(assert (=> b!1356620 (= res!901495 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31835))))

(declare-fun b!1356621 () Bool)

(declare-fun res!901497 () Bool)

(assert (=> b!1356621 (=> (not res!901497) (not e!770134))))

(assert (=> b!1356621 (= res!901497 (not (contains!9403 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356622 () Bool)

(declare-fun res!901496 () Bool)

(assert (=> b!1356622 (=> (not res!901496) (not e!770134))))

(assert (=> b!1356622 (= res!901496 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356623 () Bool)

(assert (=> b!1356623 (= e!770134 (bvslt (bvsub (size!45168 a!3742) from!3120) #b00000000000000000000000000000000))))

(assert (= (and start!114242 res!901498) b!1356617))

(assert (= (and b!1356617 res!901500) b!1356618))

(assert (= (and b!1356618 res!901494) b!1356621))

(assert (= (and b!1356621 res!901497) b!1356620))

(assert (= (and b!1356620 res!901495) b!1356622))

(assert (= (and b!1356622 res!901496) b!1356619))

(assert (= (and b!1356619 res!901493) b!1356616))

(assert (= (and b!1356616 res!901499) b!1356623))

(declare-fun m!1242595 () Bool)

(assert (=> b!1356621 m!1242595))

(declare-fun m!1242597 () Bool)

(assert (=> b!1356620 m!1242597))

(declare-fun m!1242599 () Bool)

(assert (=> b!1356622 m!1242599))

(declare-fun m!1242601 () Bool)

(assert (=> start!114242 m!1242601))

(declare-fun m!1242603 () Bool)

(assert (=> b!1356618 m!1242603))

(declare-fun m!1242605 () Bool)

(assert (=> b!1356617 m!1242605))

(declare-fun m!1242607 () Bool)

(assert (=> b!1356616 m!1242607))

(push 1)

(assert (not b!1356622))

(assert (not b!1356621))

(assert (not b!1356616))

(assert (not b!1356618))

(assert (not b!1356620))

(assert (not start!114242))

(assert (not b!1356617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

