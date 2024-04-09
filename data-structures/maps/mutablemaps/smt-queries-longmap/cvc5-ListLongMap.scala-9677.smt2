; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114236 () Bool)

(assert start!114236)

(declare-fun b!1356565 () Bool)

(declare-fun res!901446 () Bool)

(declare-fun e!770116 () Bool)

(assert (=> b!1356565 (=> (not res!901446) (not e!770116))))

(declare-datatypes ((List!31835 0))(
  ( (Nil!31832) (Cons!31831 (h!33040 (_ BitVec 64)) (t!46500 List!31835)) )
))
(declare-fun acc!759 () List!31835)

(declare-fun contains!9400 (List!31835 (_ BitVec 64)) Bool)

(assert (=> b!1356565 (= res!901446 (not (contains!9400 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901445 () Bool)

(assert (=> start!114236 (=> (not res!901445) (not e!770116))))

(declare-datatypes ((array!92341 0))(
  ( (array!92342 (arr!44614 (Array (_ BitVec 32) (_ BitVec 64))) (size!45165 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92341)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114236 (= res!901445 (and (bvslt (size!45165 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45165 a!3742))))))

(assert (=> start!114236 e!770116))

(declare-fun array_inv!33559 (array!92341) Bool)

(assert (=> start!114236 (array_inv!33559 a!3742)))

(assert (=> start!114236 true))

(declare-fun b!1356566 () Bool)

(assert (=> b!1356566 (= e!770116 false)))

(declare-fun lt!599006 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92341 (_ BitVec 32) List!31835) Bool)

(assert (=> b!1356566 (= lt!599006 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356567 () Bool)

(declare-fun res!901444 () Bool)

(assert (=> b!1356567 (=> (not res!901444) (not e!770116))))

(assert (=> b!1356567 (= res!901444 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31832))))

(declare-fun b!1356568 () Bool)

(declare-fun res!901443 () Bool)

(assert (=> b!1356568 (=> (not res!901443) (not e!770116))))

(declare-fun noDuplicate!2279 (List!31835) Bool)

(assert (=> b!1356568 (= res!901443 (noDuplicate!2279 acc!759))))

(declare-fun b!1356569 () Bool)

(declare-fun res!901442 () Bool)

(assert (=> b!1356569 (=> (not res!901442) (not e!770116))))

(assert (=> b!1356569 (= res!901442 (not (contains!9400 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114236 res!901445) b!1356568))

(assert (= (and b!1356568 res!901443) b!1356565))

(assert (= (and b!1356565 res!901446) b!1356569))

(assert (= (and b!1356569 res!901442) b!1356567))

(assert (= (and b!1356567 res!901444) b!1356566))

(declare-fun m!1242559 () Bool)

(assert (=> b!1356568 m!1242559))

(declare-fun m!1242561 () Bool)

(assert (=> start!114236 m!1242561))

(declare-fun m!1242563 () Bool)

(assert (=> b!1356569 m!1242563))

(declare-fun m!1242565 () Bool)

(assert (=> b!1356567 m!1242565))

(declare-fun m!1242567 () Bool)

(assert (=> b!1356565 m!1242567))

(declare-fun m!1242569 () Bool)

(assert (=> b!1356566 m!1242569))

(push 1)

(assert (not b!1356566))

(assert (not b!1356568))

(assert (not start!114236))

(assert (not b!1356569))

(assert (not b!1356565))

(assert (not b!1356567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

