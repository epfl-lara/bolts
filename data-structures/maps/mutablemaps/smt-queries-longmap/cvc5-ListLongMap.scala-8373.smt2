; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101878 () Bool)

(assert start!101878)

(declare-fun b!1226522 () Bool)

(declare-fun res!815288 () Bool)

(declare-fun e!696591 () Bool)

(assert (=> b!1226522 (=> (not res!815288) (not e!696591))))

(declare-datatypes ((List!27153 0))(
  ( (Nil!27150) (Cons!27149 (h!28358 (_ BitVec 64)) (t!40623 List!27153)) )
))
(declare-fun acc!823 () List!27153)

(declare-fun contains!7068 (List!27153 (_ BitVec 64)) Bool)

(assert (=> b!1226522 (= res!815288 (not (contains!7068 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226523 () Bool)

(declare-fun res!815289 () Bool)

(assert (=> b!1226523 (=> (not res!815289) (not e!696591))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226523 (= res!815289 (validKeyInArray!0 k!2913))))

(declare-fun b!1226524 () Bool)

(declare-fun res!815290 () Bool)

(assert (=> b!1226524 (=> (not res!815290) (not e!696591))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79160 0))(
  ( (array!79161 (arr!38202 (Array (_ BitVec 32) (_ BitVec 64))) (size!38739 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79160)

(assert (=> b!1226524 (= res!815290 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38739 a!3806)) (bvslt from!3184 (size!38739 a!3806))))))

(declare-fun b!1226525 () Bool)

(declare-fun res!815287 () Bool)

(assert (=> b!1226525 (=> (not res!815287) (not e!696591))))

(declare-fun noDuplicate!1675 (List!27153) Bool)

(assert (=> b!1226525 (= res!815287 (noDuplicate!1675 acc!823))))

(declare-fun res!815291 () Bool)

(assert (=> start!101878 (=> (not res!815291) (not e!696591))))

(assert (=> start!101878 (= res!815291 (bvslt (size!38739 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101878 e!696591))

(declare-fun array_inv!28978 (array!79160) Bool)

(assert (=> start!101878 (array_inv!28978 a!3806)))

(assert (=> start!101878 true))

(declare-fun b!1226526 () Bool)

(assert (=> b!1226526 (= e!696591 false)))

(declare-fun lt!558770 () Bool)

(assert (=> b!1226526 (= lt!558770 (contains!7068 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!101878 res!815291) b!1226523))

(assert (= (and b!1226523 res!815289) b!1226524))

(assert (= (and b!1226524 res!815290) b!1226525))

(assert (= (and b!1226525 res!815287) b!1226522))

(assert (= (and b!1226522 res!815288) b!1226526))

(declare-fun m!1131605 () Bool)

(assert (=> b!1226522 m!1131605))

(declare-fun m!1131607 () Bool)

(assert (=> b!1226525 m!1131607))

(declare-fun m!1131609 () Bool)

(assert (=> b!1226526 m!1131609))

(declare-fun m!1131611 () Bool)

(assert (=> start!101878 m!1131611))

(declare-fun m!1131613 () Bool)

(assert (=> b!1226523 m!1131613))

(push 1)

(assert (not b!1226522))

(assert (not b!1226525))

(assert (not b!1226526))

(assert (not start!101878))

(assert (not b!1226523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

