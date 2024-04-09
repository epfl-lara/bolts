; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101882 () Bool)

(assert start!101882)

(declare-fun res!815318 () Bool)

(declare-fun e!696604 () Bool)

(assert (=> start!101882 (=> (not res!815318) (not e!696604))))

(declare-datatypes ((array!79164 0))(
  ( (array!79165 (arr!38204 (Array (_ BitVec 32) (_ BitVec 64))) (size!38741 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79164)

(assert (=> start!101882 (= res!815318 (bvslt (size!38741 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101882 e!696604))

(declare-fun array_inv!28980 (array!79164) Bool)

(assert (=> start!101882 (array_inv!28980 a!3806)))

(assert (=> start!101882 true))

(declare-fun b!1226552 () Bool)

(declare-fun res!815321 () Bool)

(assert (=> b!1226552 (=> (not res!815321) (not e!696604))))

(declare-datatypes ((List!27155 0))(
  ( (Nil!27152) (Cons!27151 (h!28360 (_ BitVec 64)) (t!40625 List!27155)) )
))
(declare-fun acc!823 () List!27155)

(declare-fun noDuplicate!1677 (List!27155) Bool)

(assert (=> b!1226552 (= res!815321 (noDuplicate!1677 acc!823))))

(declare-fun b!1226553 () Bool)

(declare-fun res!815319 () Bool)

(assert (=> b!1226553 (=> (not res!815319) (not e!696604))))

(declare-fun contains!7070 (List!27155 (_ BitVec 64)) Bool)

(assert (=> b!1226553 (= res!815319 (not (contains!7070 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226554 () Bool)

(declare-fun res!815317 () Bool)

(assert (=> b!1226554 (=> (not res!815317) (not e!696604))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226554 (= res!815317 (validKeyInArray!0 k!2913))))

(declare-fun b!1226555 () Bool)

(assert (=> b!1226555 (= e!696604 false)))

(declare-fun lt!558776 () Bool)

(assert (=> b!1226555 (= lt!558776 (contains!7070 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226556 () Bool)

(declare-fun res!815320 () Bool)

(assert (=> b!1226556 (=> (not res!815320) (not e!696604))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1226556 (= res!815320 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38741 a!3806)) (bvslt from!3184 (size!38741 a!3806))))))

(assert (= (and start!101882 res!815318) b!1226554))

(assert (= (and b!1226554 res!815317) b!1226556))

(assert (= (and b!1226556 res!815320) b!1226552))

(assert (= (and b!1226552 res!815321) b!1226553))

(assert (= (and b!1226553 res!815319) b!1226555))

(declare-fun m!1131625 () Bool)

(assert (=> b!1226554 m!1131625))

(declare-fun m!1131627 () Bool)

(assert (=> start!101882 m!1131627))

(declare-fun m!1131629 () Bool)

(assert (=> b!1226555 m!1131629))

(declare-fun m!1131631 () Bool)

(assert (=> b!1226552 m!1131631))

(declare-fun m!1131633 () Bool)

(assert (=> b!1226553 m!1131633))

(push 1)

(assert (not b!1226555))

(assert (not b!1226552))

(assert (not b!1226553))

(assert (not start!101882))

(assert (not b!1226554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

