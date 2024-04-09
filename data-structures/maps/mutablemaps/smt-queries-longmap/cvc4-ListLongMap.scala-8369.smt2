; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101858 () Bool)

(assert start!101858)

(declare-fun res!815123 () Bool)

(declare-fun e!696531 () Bool)

(assert (=> start!101858 (=> (not res!815123) (not e!696531))))

(declare-datatypes ((array!79140 0))(
  ( (array!79141 (arr!38192 (Array (_ BitVec 32) (_ BitVec 64))) (size!38729 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79140)

(assert (=> start!101858 (= res!815123 (bvslt (size!38729 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101858 e!696531))

(declare-fun array_inv!28968 (array!79140) Bool)

(assert (=> start!101858 (array_inv!28968 a!3806)))

(assert (=> start!101858 true))

(declare-fun b!1226353 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1226353 (= e!696531 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-fun b!1226354 () Bool)

(declare-fun res!815119 () Bool)

(assert (=> b!1226354 (=> (not res!815119) (not e!696531))))

(declare-datatypes ((List!27143 0))(
  ( (Nil!27140) (Cons!27139 (h!28348 (_ BitVec 64)) (t!40613 List!27143)) )
))
(declare-fun acc!823 () List!27143)

(declare-fun contains!7058 (List!27143 (_ BitVec 64)) Bool)

(assert (=> b!1226354 (= res!815119 (not (contains!7058 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226355 () Bool)

(declare-fun res!815121 () Bool)

(assert (=> b!1226355 (=> (not res!815121) (not e!696531))))

(assert (=> b!1226355 (= res!815121 (not (contains!7058 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226356 () Bool)

(declare-fun res!815122 () Bool)

(assert (=> b!1226356 (=> (not res!815122) (not e!696531))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226356 (= res!815122 (validKeyInArray!0 k!2913))))

(declare-fun b!1226357 () Bool)

(declare-fun res!815120 () Bool)

(assert (=> b!1226357 (=> (not res!815120) (not e!696531))))

(declare-fun noDuplicate!1665 (List!27143) Bool)

(assert (=> b!1226357 (= res!815120 (noDuplicate!1665 acc!823))))

(declare-fun b!1226358 () Bool)

(declare-fun res!815118 () Bool)

(assert (=> b!1226358 (=> (not res!815118) (not e!696531))))

(assert (=> b!1226358 (= res!815118 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38729 a!3806)) (bvslt from!3184 (size!38729 a!3806))))))

(assert (= (and start!101858 res!815123) b!1226356))

(assert (= (and b!1226356 res!815122) b!1226358))

(assert (= (and b!1226358 res!815118) b!1226357))

(assert (= (and b!1226357 res!815120) b!1226355))

(assert (= (and b!1226355 res!815121) b!1226354))

(assert (= (and b!1226354 res!815119) b!1226353))

(declare-fun m!1131499 () Bool)

(assert (=> b!1226357 m!1131499))

(declare-fun m!1131501 () Bool)

(assert (=> b!1226354 m!1131501))

(declare-fun m!1131503 () Bool)

(assert (=> start!101858 m!1131503))

(declare-fun m!1131505 () Bool)

(assert (=> b!1226355 m!1131505))

(declare-fun m!1131507 () Bool)

(assert (=> b!1226356 m!1131507))

(push 1)

(assert (not b!1226357))

(assert (not b!1226356))

(assert (not b!1226354))

(assert (not b!1226355))

(assert (not start!101858))

(check-sat)

(pop 1)

