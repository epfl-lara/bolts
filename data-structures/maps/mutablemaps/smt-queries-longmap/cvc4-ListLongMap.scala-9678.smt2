; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114246 () Bool)

(assert start!114246)

(declare-fun b!1356664 () Bool)

(declare-fun res!901548 () Bool)

(declare-fun e!770146 () Bool)

(assert (=> b!1356664 (=> (not res!901548) (not e!770146))))

(declare-datatypes ((List!31840 0))(
  ( (Nil!31837) (Cons!31836 (h!33045 (_ BitVec 64)) (t!46505 List!31840)) )
))
(declare-fun acc!759 () List!31840)

(declare-datatypes ((array!92351 0))(
  ( (array!92352 (arr!44619 (Array (_ BitVec 32) (_ BitVec 64))) (size!45170 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92351)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92351 (_ BitVec 32) List!31840) Bool)

(assert (=> b!1356664 (= res!901548 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356665 () Bool)

(declare-fun res!901543 () Bool)

(assert (=> b!1356665 (=> (not res!901543) (not e!770146))))

(declare-fun contains!9405 (List!31840 (_ BitVec 64)) Bool)

(assert (=> b!1356665 (= res!901543 (not (contains!9405 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901544 () Bool)

(assert (=> start!114246 (=> (not res!901544) (not e!770146))))

(assert (=> start!114246 (= res!901544 (and (bvslt (size!45170 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45170 a!3742))))))

(assert (=> start!114246 e!770146))

(assert (=> start!114246 true))

(declare-fun array_inv!33564 (array!92351) Bool)

(assert (=> start!114246 (array_inv!33564 a!3742)))

(declare-fun b!1356666 () Bool)

(declare-fun res!901546 () Bool)

(assert (=> b!1356666 (=> (not res!901546) (not e!770146))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356666 (= res!901546 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45170 a!3742))))))

(declare-fun b!1356667 () Bool)

(declare-fun res!901541 () Bool)

(assert (=> b!1356667 (=> (not res!901541) (not e!770146))))

(assert (=> b!1356667 (= res!901541 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31837))))

(declare-fun b!1356668 () Bool)

(declare-fun res!901545 () Bool)

(assert (=> b!1356668 (=> (not res!901545) (not e!770146))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356668 (= res!901545 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356669 () Bool)

(assert (=> b!1356669 (= e!770146 (bvslt (bvsub (size!45170 a!3742) from!3120) #b00000000000000000000000000000000))))

(declare-fun b!1356670 () Bool)

(declare-fun res!901542 () Bool)

(assert (=> b!1356670 (=> (not res!901542) (not e!770146))))

(declare-fun noDuplicate!2284 (List!31840) Bool)

(assert (=> b!1356670 (= res!901542 (noDuplicate!2284 acc!759))))

(declare-fun b!1356671 () Bool)

(declare-fun res!901547 () Bool)

(assert (=> b!1356671 (=> (not res!901547) (not e!770146))))

(assert (=> b!1356671 (= res!901547 (not (contains!9405 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114246 res!901544) b!1356670))

(assert (= (and b!1356670 res!901542) b!1356671))

(assert (= (and b!1356671 res!901547) b!1356665))

(assert (= (and b!1356665 res!901543) b!1356667))

(assert (= (and b!1356667 res!901541) b!1356664))

(assert (= (and b!1356664 res!901548) b!1356666))

(assert (= (and b!1356666 res!901546) b!1356668))

(assert (= (and b!1356668 res!901545) b!1356669))

(declare-fun m!1242623 () Bool)

(assert (=> b!1356668 m!1242623))

(declare-fun m!1242625 () Bool)

(assert (=> b!1356665 m!1242625))

(declare-fun m!1242627 () Bool)

(assert (=> start!114246 m!1242627))

(declare-fun m!1242629 () Bool)

(assert (=> b!1356671 m!1242629))

(declare-fun m!1242631 () Bool)

(assert (=> b!1356670 m!1242631))

(declare-fun m!1242633 () Bool)

(assert (=> b!1356667 m!1242633))

(declare-fun m!1242635 () Bool)

(assert (=> b!1356664 m!1242635))

(push 1)

(assert (not b!1356665))

(assert (not b!1356668))

(assert (not b!1356670))

(assert (not b!1356667))

(assert (not b!1356664))

(assert (not b!1356671))

(assert (not start!114246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

