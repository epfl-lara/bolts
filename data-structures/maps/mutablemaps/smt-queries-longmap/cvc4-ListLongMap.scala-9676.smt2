; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114234 () Bool)

(assert start!114234)

(declare-fun res!901429 () Bool)

(declare-fun e!770109 () Bool)

(assert (=> start!114234 (=> (not res!901429) (not e!770109))))

(declare-datatypes ((array!92339 0))(
  ( (array!92340 (arr!44613 (Array (_ BitVec 32) (_ BitVec 64))) (size!45164 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92339)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114234 (= res!901429 (and (bvslt (size!45164 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45164 a!3742))))))

(assert (=> start!114234 e!770109))

(declare-fun array_inv!33558 (array!92339) Bool)

(assert (=> start!114234 (array_inv!33558 a!3742)))

(assert (=> start!114234 true))

(declare-fun b!1356550 () Bool)

(declare-fun res!901431 () Bool)

(assert (=> b!1356550 (=> (not res!901431) (not e!770109))))

(declare-datatypes ((List!31834 0))(
  ( (Nil!31831) (Cons!31830 (h!33039 (_ BitVec 64)) (t!46499 List!31834)) )
))
(declare-fun arrayNoDuplicates!0 (array!92339 (_ BitVec 32) List!31834) Bool)

(assert (=> b!1356550 (= res!901431 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31831))))

(declare-fun b!1356551 () Bool)

(declare-fun res!901427 () Bool)

(assert (=> b!1356551 (=> (not res!901427) (not e!770109))))

(declare-fun acc!759 () List!31834)

(declare-fun noDuplicate!2278 (List!31834) Bool)

(assert (=> b!1356551 (= res!901427 (noDuplicate!2278 acc!759))))

(declare-fun b!1356552 () Bool)

(declare-fun res!901430 () Bool)

(assert (=> b!1356552 (=> (not res!901430) (not e!770109))))

(declare-fun contains!9399 (List!31834 (_ BitVec 64)) Bool)

(assert (=> b!1356552 (= res!901430 (not (contains!9399 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356553 () Bool)

(declare-fun res!901428 () Bool)

(assert (=> b!1356553 (=> (not res!901428) (not e!770109))))

(assert (=> b!1356553 (= res!901428 (not (contains!9399 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356554 () Bool)

(assert (=> b!1356554 (= e!770109 false)))

(declare-fun lt!599003 () Bool)

(assert (=> b!1356554 (= lt!599003 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114234 res!901429) b!1356551))

(assert (= (and b!1356551 res!901427) b!1356553))

(assert (= (and b!1356553 res!901428) b!1356552))

(assert (= (and b!1356552 res!901430) b!1356550))

(assert (= (and b!1356550 res!901431) b!1356554))

(declare-fun m!1242547 () Bool)

(assert (=> start!114234 m!1242547))

(declare-fun m!1242549 () Bool)

(assert (=> b!1356553 m!1242549))

(declare-fun m!1242551 () Bool)

(assert (=> b!1356552 m!1242551))

(declare-fun m!1242553 () Bool)

(assert (=> b!1356551 m!1242553))

(declare-fun m!1242555 () Bool)

(assert (=> b!1356554 m!1242555))

(declare-fun m!1242557 () Bool)

(assert (=> b!1356550 m!1242557))

(push 1)

(assert (not b!1356551))

(assert (not b!1356554))

(assert (not start!114234))

(assert (not b!1356552))

(assert (not b!1356550))

(assert (not b!1356553))

(check-sat)

