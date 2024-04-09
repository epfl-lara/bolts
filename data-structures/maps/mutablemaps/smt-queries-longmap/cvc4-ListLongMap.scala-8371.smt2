; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101870 () Bool)

(assert start!101870)

(declare-fun b!1226444 () Bool)

(declare-fun res!815210 () Bool)

(declare-fun e!696567 () Bool)

(assert (=> b!1226444 (=> (not res!815210) (not e!696567))))

(declare-datatypes ((List!27149 0))(
  ( (Nil!27146) (Cons!27145 (h!28354 (_ BitVec 64)) (t!40619 List!27149)) )
))
(declare-fun acc!823 () List!27149)

(declare-fun contains!7064 (List!27149 (_ BitVec 64)) Bool)

(assert (=> b!1226444 (= res!815210 (not (contains!7064 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226445 () Bool)

(declare-fun res!815211 () Bool)

(assert (=> b!1226445 (=> (not res!815211) (not e!696567))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79152 0))(
  ( (array!79153 (arr!38198 (Array (_ BitVec 32) (_ BitVec 64))) (size!38735 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79152)

(assert (=> b!1226445 (= res!815211 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38735 a!3806)) (bvslt from!3184 (size!38735 a!3806))))))

(declare-fun res!815209 () Bool)

(assert (=> start!101870 (=> (not res!815209) (not e!696567))))

(assert (=> start!101870 (= res!815209 (bvslt (size!38735 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101870 e!696567))

(declare-fun array_inv!28974 (array!79152) Bool)

(assert (=> start!101870 (array_inv!28974 a!3806)))

(assert (=> start!101870 true))

(declare-fun b!1226446 () Bool)

(declare-fun res!815213 () Bool)

(assert (=> b!1226446 (=> (not res!815213) (not e!696567))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226446 (= res!815213 (validKeyInArray!0 k!2913))))

(declare-fun b!1226447 () Bool)

(assert (=> b!1226447 (= e!696567 false)))

(declare-fun lt!558767 () Bool)

(assert (=> b!1226447 (= lt!558767 (contains!7064 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226448 () Bool)

(declare-fun res!815212 () Bool)

(assert (=> b!1226448 (=> (not res!815212) (not e!696567))))

(declare-fun noDuplicate!1671 (List!27149) Bool)

(assert (=> b!1226448 (= res!815212 (noDuplicate!1671 acc!823))))

(assert (= (and start!101870 res!815209) b!1226446))

(assert (= (and b!1226446 res!815213) b!1226445))

(assert (= (and b!1226445 res!815211) b!1226448))

(assert (= (and b!1226448 res!815212) b!1226444))

(assert (= (and b!1226444 res!815210) b!1226447))

(declare-fun m!1131559 () Bool)

(assert (=> start!101870 m!1131559))

(declare-fun m!1131561 () Bool)

(assert (=> b!1226444 m!1131561))

(declare-fun m!1131563 () Bool)

(assert (=> b!1226446 m!1131563))

(declare-fun m!1131565 () Bool)

(assert (=> b!1226447 m!1131565))

(declare-fun m!1131567 () Bool)

(assert (=> b!1226448 m!1131567))

(push 1)

(assert (not b!1226447))

(assert (not b!1226444))

(assert (not b!1226446))

(assert (not start!101870))

(assert (not b!1226448))

(check-sat)

