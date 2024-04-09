; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114228 () Bool)

(assert start!114228)

(declare-fun b!1356505 () Bool)

(declare-fun res!901384 () Bool)

(declare-fun e!770092 () Bool)

(assert (=> b!1356505 (=> (not res!901384) (not e!770092))))

(declare-datatypes ((List!31831 0))(
  ( (Nil!31828) (Cons!31827 (h!33036 (_ BitVec 64)) (t!46496 List!31831)) )
))
(declare-fun acc!759 () List!31831)

(declare-fun noDuplicate!2275 (List!31831) Bool)

(assert (=> b!1356505 (= res!901384 (noDuplicate!2275 acc!759))))

(declare-fun b!1356506 () Bool)

(assert (=> b!1356506 (= e!770092 false)))

(declare-fun lt!598994 () Bool)

(declare-datatypes ((array!92333 0))(
  ( (array!92334 (arr!44610 (Array (_ BitVec 32) (_ BitVec 64))) (size!45161 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92333)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92333 (_ BitVec 32) List!31831) Bool)

(assert (=> b!1356506 (= lt!598994 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356507 () Bool)

(declare-fun res!901383 () Bool)

(assert (=> b!1356507 (=> (not res!901383) (not e!770092))))

(declare-fun contains!9396 (List!31831 (_ BitVec 64)) Bool)

(assert (=> b!1356507 (= res!901383 (not (contains!9396 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901385 () Bool)

(assert (=> start!114228 (=> (not res!901385) (not e!770092))))

(assert (=> start!114228 (= res!901385 (and (bvslt (size!45161 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45161 a!3742))))))

(assert (=> start!114228 e!770092))

(declare-fun array_inv!33555 (array!92333) Bool)

(assert (=> start!114228 (array_inv!33555 a!3742)))

(assert (=> start!114228 true))

(declare-fun b!1356508 () Bool)

(declare-fun res!901386 () Bool)

(assert (=> b!1356508 (=> (not res!901386) (not e!770092))))

(assert (=> b!1356508 (= res!901386 (not (contains!9396 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356509 () Bool)

(declare-fun res!901382 () Bool)

(assert (=> b!1356509 (=> (not res!901382) (not e!770092))))

(assert (=> b!1356509 (= res!901382 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31828))))

(assert (= (and start!114228 res!901385) b!1356505))

(assert (= (and b!1356505 res!901384) b!1356508))

(assert (= (and b!1356508 res!901386) b!1356507))

(assert (= (and b!1356507 res!901383) b!1356509))

(assert (= (and b!1356509 res!901382) b!1356506))

(declare-fun m!1242511 () Bool)

(assert (=> b!1356507 m!1242511))

(declare-fun m!1242513 () Bool)

(assert (=> b!1356506 m!1242513))

(declare-fun m!1242515 () Bool)

(assert (=> b!1356505 m!1242515))

(declare-fun m!1242517 () Bool)

(assert (=> b!1356509 m!1242517))

(declare-fun m!1242519 () Bool)

(assert (=> start!114228 m!1242519))

(declare-fun m!1242521 () Bool)

(assert (=> b!1356508 m!1242521))

(push 1)

(assert (not b!1356506))

(assert (not start!114228))

(assert (not b!1356508))

(assert (not b!1356507))

(assert (not b!1356509))

(assert (not b!1356505))

(check-sat)

