; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101904 () Bool)

(assert start!101904)

(declare-fun b!1226763 () Bool)

(declare-fun res!815529 () Bool)

(declare-fun e!696669 () Bool)

(assert (=> b!1226763 (=> (not res!815529) (not e!696669))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226763 (= res!815529 (validKeyInArray!0 k0!2913))))

(declare-fun b!1226764 () Bool)

(declare-fun res!815533 () Bool)

(assert (=> b!1226764 (=> (not res!815533) (not e!696669))))

(declare-datatypes ((List!27166 0))(
  ( (Nil!27163) (Cons!27162 (h!28371 (_ BitVec 64)) (t!40636 List!27166)) )
))
(declare-fun acc!823 () List!27166)

(declare-fun contains!7081 (List!27166 (_ BitVec 64)) Bool)

(assert (=> b!1226764 (= res!815533 (not (contains!7081 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!815528 () Bool)

(assert (=> start!101904 (=> (not res!815528) (not e!696669))))

(declare-datatypes ((array!79186 0))(
  ( (array!79187 (arr!38215 (Array (_ BitVec 32) (_ BitVec 64))) (size!38752 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79186)

(assert (=> start!101904 (= res!815528 (bvslt (size!38752 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101904 e!696669))

(declare-fun array_inv!28991 (array!79186) Bool)

(assert (=> start!101904 (array_inv!28991 a!3806)))

(assert (=> start!101904 true))

(declare-fun b!1226765 () Bool)

(declare-fun res!815532 () Bool)

(assert (=> b!1226765 (=> (not res!815532) (not e!696669))))

(assert (=> b!1226765 (= res!815532 (not (contains!7081 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226766 () Bool)

(declare-fun res!815534 () Bool)

(assert (=> b!1226766 (=> (not res!815534) (not e!696669))))

(declare-fun noDuplicate!1688 (List!27166) Bool)

(assert (=> b!1226766 (= res!815534 (noDuplicate!1688 acc!823))))

(declare-fun b!1226767 () Bool)

(declare-fun res!815530 () Bool)

(assert (=> b!1226767 (=> (not res!815530) (not e!696669))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1226767 (= res!815530 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38752 a!3806)) (bvslt from!3184 (size!38752 a!3806))))))

(declare-fun b!1226768 () Bool)

(assert (=> b!1226768 (= e!696669 false)))

(declare-fun lt!558800 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79186 (_ BitVec 32) List!27166) Bool)

(assert (=> b!1226768 (= lt!558800 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1226769 () Bool)

(declare-fun res!815531 () Bool)

(assert (=> b!1226769 (=> (not res!815531) (not e!696669))))

(declare-fun arrayContainsKey!0 (array!79186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226769 (= res!815531 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!101904 res!815528) b!1226763))

(assert (= (and b!1226763 res!815529) b!1226767))

(assert (= (and b!1226767 res!815530) b!1226766))

(assert (= (and b!1226766 res!815534) b!1226764))

(assert (= (and b!1226764 res!815533) b!1226765))

(assert (= (and b!1226765 res!815532) b!1226769))

(assert (= (and b!1226769 res!815531) b!1226768))

(declare-fun m!1131763 () Bool)

(assert (=> b!1226768 m!1131763))

(declare-fun m!1131765 () Bool)

(assert (=> b!1226764 m!1131765))

(declare-fun m!1131767 () Bool)

(assert (=> b!1226769 m!1131767))

(declare-fun m!1131769 () Bool)

(assert (=> b!1226763 m!1131769))

(declare-fun m!1131771 () Bool)

(assert (=> b!1226766 m!1131771))

(declare-fun m!1131773 () Bool)

(assert (=> b!1226765 m!1131773))

(declare-fun m!1131775 () Bool)

(assert (=> start!101904 m!1131775))

(check-sat (not b!1226768) (not b!1226769) (not start!101904) (not b!1226763) (not b!1226766) (not b!1226764) (not b!1226765))
(check-sat)
