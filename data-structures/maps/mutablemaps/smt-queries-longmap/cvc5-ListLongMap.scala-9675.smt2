; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114224 () Bool)

(assert start!114224)

(declare-fun b!1356475 () Bool)

(declare-fun res!901353 () Bool)

(declare-fun e!770079 () Bool)

(assert (=> b!1356475 (=> (not res!901353) (not e!770079))))

(declare-datatypes ((List!31829 0))(
  ( (Nil!31826) (Cons!31825 (h!33034 (_ BitVec 64)) (t!46494 List!31829)) )
))
(declare-fun acc!759 () List!31829)

(declare-fun contains!9394 (List!31829 (_ BitVec 64)) Bool)

(assert (=> b!1356475 (= res!901353 (not (contains!9394 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901354 () Bool)

(assert (=> start!114224 (=> (not res!901354) (not e!770079))))

(declare-datatypes ((array!92329 0))(
  ( (array!92330 (arr!44608 (Array (_ BitVec 32) (_ BitVec 64))) (size!45159 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92329)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114224 (= res!901354 (and (bvslt (size!45159 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45159 a!3742))))))

(assert (=> start!114224 e!770079))

(declare-fun array_inv!33553 (array!92329) Bool)

(assert (=> start!114224 (array_inv!33553 a!3742)))

(assert (=> start!114224 true))

(declare-fun b!1356476 () Bool)

(declare-fun res!901355 () Bool)

(assert (=> b!1356476 (=> (not res!901355) (not e!770079))))

(declare-fun arrayNoDuplicates!0 (array!92329 (_ BitVec 32) List!31829) Bool)

(assert (=> b!1356476 (= res!901355 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31826))))

(declare-fun b!1356477 () Bool)

(declare-fun res!901352 () Bool)

(assert (=> b!1356477 (=> (not res!901352) (not e!770079))))

(assert (=> b!1356477 (= res!901352 (not (contains!9394 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356478 () Bool)

(assert (=> b!1356478 (= e!770079 false)))

(declare-fun lt!598988 () Bool)

(assert (=> b!1356478 (= lt!598988 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356479 () Bool)

(declare-fun res!901356 () Bool)

(assert (=> b!1356479 (=> (not res!901356) (not e!770079))))

(declare-fun noDuplicate!2273 (List!31829) Bool)

(assert (=> b!1356479 (= res!901356 (noDuplicate!2273 acc!759))))

(assert (= (and start!114224 res!901354) b!1356479))

(assert (= (and b!1356479 res!901356) b!1356477))

(assert (= (and b!1356477 res!901352) b!1356475))

(assert (= (and b!1356475 res!901353) b!1356476))

(assert (= (and b!1356476 res!901355) b!1356478))

(declare-fun m!1242487 () Bool)

(assert (=> b!1356476 m!1242487))

(declare-fun m!1242489 () Bool)

(assert (=> b!1356478 m!1242489))

(declare-fun m!1242491 () Bool)

(assert (=> b!1356477 m!1242491))

(declare-fun m!1242493 () Bool)

(assert (=> b!1356475 m!1242493))

(declare-fun m!1242495 () Bool)

(assert (=> start!114224 m!1242495))

(declare-fun m!1242497 () Bool)

(assert (=> b!1356479 m!1242497))

(push 1)

(assert (not b!1356479))

(assert (not b!1356475))

(assert (not b!1356477))

(assert (not b!1356476))

(assert (not b!1356478))

(assert (not start!114224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

