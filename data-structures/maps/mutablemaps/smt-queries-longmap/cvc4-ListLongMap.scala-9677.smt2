; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114240 () Bool)

(assert start!114240)

(declare-fun res!901473 () Bool)

(declare-fun e!770127 () Bool)

(assert (=> start!114240 (=> (not res!901473) (not e!770127))))

(declare-datatypes ((array!92345 0))(
  ( (array!92346 (arr!44616 (Array (_ BitVec 32) (_ BitVec 64))) (size!45167 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92345)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114240 (= res!901473 (and (bvslt (size!45167 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45167 a!3742))))))

(assert (=> start!114240 e!770127))

(declare-fun array_inv!33561 (array!92345) Bool)

(assert (=> start!114240 (array_inv!33561 a!3742)))

(assert (=> start!114240 true))

(declare-fun b!1356595 () Bool)

(declare-fun res!901474 () Bool)

(assert (=> b!1356595 (=> (not res!901474) (not e!770127))))

(declare-datatypes ((List!31837 0))(
  ( (Nil!31834) (Cons!31833 (h!33042 (_ BitVec 64)) (t!46502 List!31837)) )
))
(declare-fun arrayNoDuplicates!0 (array!92345 (_ BitVec 32) List!31837) Bool)

(assert (=> b!1356595 (= res!901474 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31834))))

(declare-fun b!1356596 () Bool)

(declare-fun res!901475 () Bool)

(assert (=> b!1356596 (=> (not res!901475) (not e!770127))))

(declare-fun acc!759 () List!31837)

(declare-fun contains!9402 (List!31837 (_ BitVec 64)) Bool)

(assert (=> b!1356596 (= res!901475 (not (contains!9402 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356597 () Bool)

(assert (=> b!1356597 (= e!770127 false)))

(declare-fun lt!599012 () Bool)

(assert (=> b!1356597 (= lt!599012 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356598 () Bool)

(declare-fun res!901472 () Bool)

(assert (=> b!1356598 (=> (not res!901472) (not e!770127))))

(assert (=> b!1356598 (= res!901472 (not (contains!9402 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356599 () Bool)

(declare-fun res!901476 () Bool)

(assert (=> b!1356599 (=> (not res!901476) (not e!770127))))

(declare-fun noDuplicate!2281 (List!31837) Bool)

(assert (=> b!1356599 (= res!901476 (noDuplicate!2281 acc!759))))

(assert (= (and start!114240 res!901473) b!1356599))

(assert (= (and b!1356599 res!901476) b!1356598))

(assert (= (and b!1356598 res!901472) b!1356596))

(assert (= (and b!1356596 res!901475) b!1356595))

(assert (= (and b!1356595 res!901474) b!1356597))

(declare-fun m!1242583 () Bool)

(assert (=> b!1356599 m!1242583))

(declare-fun m!1242585 () Bool)

(assert (=> start!114240 m!1242585))

(declare-fun m!1242587 () Bool)

(assert (=> b!1356598 m!1242587))

(declare-fun m!1242589 () Bool)

(assert (=> b!1356596 m!1242589))

(declare-fun m!1242591 () Bool)

(assert (=> b!1356597 m!1242591))

(declare-fun m!1242593 () Bool)

(assert (=> b!1356595 m!1242593))

(push 1)

(assert (not b!1356596))

(assert (not b!1356598))

(assert (not start!114240))

(assert (not b!1356597))

(assert (not b!1356599))

(assert (not b!1356595))

(check-sat)

(pop 1)

(push 1)

