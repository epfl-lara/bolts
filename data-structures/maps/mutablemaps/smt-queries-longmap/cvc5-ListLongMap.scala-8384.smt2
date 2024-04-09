; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102016 () Bool)

(assert start!102016)

(declare-fun b!1227717 () Bool)

(declare-fun res!816450 () Bool)

(declare-fun e!697063 () Bool)

(assert (=> b!1227717 (=> (not res!816450) (not e!697063))))

(declare-datatypes ((array!79232 0))(
  ( (array!79233 (arr!38235 (Array (_ BitVec 32) (_ BitVec 64))) (size!38772 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79232)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79232 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227717 (= res!816450 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227718 () Bool)

(declare-fun res!816449 () Bool)

(declare-fun e!697061 () Bool)

(assert (=> b!1227718 (=> res!816449 e!697061)))

(declare-datatypes ((List!27186 0))(
  ( (Nil!27183) (Cons!27182 (h!28391 (_ BitVec 64)) (t!40656 List!27186)) )
))
(declare-fun contains!7101 (List!27186 (_ BitVec 64)) Bool)

(assert (=> b!1227718 (= res!816449 (contains!7101 Nil!27183 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227719 () Bool)

(declare-fun res!816447 () Bool)

(assert (=> b!1227719 (=> (not res!816447) (not e!697063))))

(declare-fun acc!823 () List!27186)

(declare-fun noDuplicate!1708 (List!27186) Bool)

(assert (=> b!1227719 (= res!816447 (noDuplicate!1708 acc!823))))

(declare-fun b!1227720 () Bool)

(declare-fun res!816456 () Bool)

(assert (=> b!1227720 (=> (not res!816456) (not e!697063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227720 (= res!816456 (validKeyInArray!0 (select (arr!38235 a!3806) from!3184)))))

(declare-fun res!816457 () Bool)

(assert (=> start!102016 (=> (not res!816457) (not e!697063))))

(assert (=> start!102016 (= res!816457 (bvslt (size!38772 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102016 e!697063))

(declare-fun array_inv!29011 (array!79232) Bool)

(assert (=> start!102016 (array_inv!29011 a!3806)))

(assert (=> start!102016 true))

(declare-fun b!1227721 () Bool)

(declare-fun res!816453 () Bool)

(assert (=> b!1227721 (=> (not res!816453) (not e!697063))))

(assert (=> b!1227721 (= res!816453 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38772 a!3806)) (bvslt from!3184 (size!38772 a!3806))))))

(declare-fun b!1227722 () Bool)

(assert (=> b!1227722 (= e!697061 true)))

(declare-datatypes ((Unit!40610 0))(
  ( (Unit!40611) )
))
(declare-fun lt!558881 () Unit!40610)

(declare-fun noDuplicateSubseq!41 (List!27186 List!27186) Unit!40610)

(assert (=> b!1227722 (= lt!558881 (noDuplicateSubseq!41 Nil!27183 acc!823))))

(declare-fun b!1227723 () Bool)

(declare-fun res!816446 () Bool)

(assert (=> b!1227723 (=> (not res!816446) (not e!697063))))

(assert (=> b!1227723 (= res!816446 (not (contains!7101 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227724 () Bool)

(declare-fun res!816448 () Bool)

(assert (=> b!1227724 (=> res!816448 e!697061)))

(assert (=> b!1227724 (= res!816448 (contains!7101 Nil!27183 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227725 () Bool)

(declare-fun res!816454 () Bool)

(assert (=> b!1227725 (=> res!816454 e!697061)))

(declare-fun subseq!488 (List!27186 List!27186) Bool)

(assert (=> b!1227725 (= res!816454 (not (subseq!488 Nil!27183 acc!823)))))

(declare-fun b!1227726 () Bool)

(assert (=> b!1227726 (= e!697063 (not e!697061))))

(declare-fun res!816451 () Bool)

(assert (=> b!1227726 (=> res!816451 e!697061)))

(assert (=> b!1227726 (= res!816451 (bvsgt from!3184 (size!38772 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79232 (_ BitVec 32) List!27186) Bool)

(assert (=> b!1227726 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27182 (select (arr!38235 a!3806) from!3184) acc!823))))

(declare-fun b!1227727 () Bool)

(declare-fun res!816458 () Bool)

(assert (=> b!1227727 (=> (not res!816458) (not e!697063))))

(assert (=> b!1227727 (= res!816458 (validKeyInArray!0 k!2913))))

(declare-fun b!1227728 () Bool)

(declare-fun res!816455 () Bool)

(assert (=> b!1227728 (=> (not res!816455) (not e!697063))))

(assert (=> b!1227728 (= res!816455 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227729 () Bool)

(declare-fun res!816452 () Bool)

(assert (=> b!1227729 (=> (not res!816452) (not e!697063))))

(assert (=> b!1227729 (= res!816452 (not (contains!7101 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102016 res!816457) b!1227727))

(assert (= (and b!1227727 res!816458) b!1227721))

(assert (= (and b!1227721 res!816453) b!1227719))

(assert (= (and b!1227719 res!816447) b!1227723))

(assert (= (and b!1227723 res!816446) b!1227729))

(assert (= (and b!1227729 res!816452) b!1227717))

(assert (= (and b!1227717 res!816450) b!1227728))

(assert (= (and b!1227728 res!816455) b!1227720))

(assert (= (and b!1227720 res!816456) b!1227726))

(assert (= (and b!1227726 (not res!816451)) b!1227718))

(assert (= (and b!1227718 (not res!816449)) b!1227724))

(assert (= (and b!1227724 (not res!816448)) b!1227725))

(assert (= (and b!1227725 (not res!816454)) b!1227722))

(declare-fun m!1132445 () Bool)

(assert (=> b!1227727 m!1132445))

(declare-fun m!1132447 () Bool)

(assert (=> b!1227719 m!1132447))

(declare-fun m!1132449 () Bool)

(assert (=> b!1227726 m!1132449))

(declare-fun m!1132451 () Bool)

(assert (=> b!1227726 m!1132451))

(assert (=> b!1227720 m!1132449))

(assert (=> b!1227720 m!1132449))

(declare-fun m!1132453 () Bool)

(assert (=> b!1227720 m!1132453))

(declare-fun m!1132455 () Bool)

(assert (=> b!1227722 m!1132455))

(declare-fun m!1132457 () Bool)

(assert (=> b!1227725 m!1132457))

(declare-fun m!1132459 () Bool)

(assert (=> b!1227724 m!1132459))

(declare-fun m!1132461 () Bool)

(assert (=> b!1227729 m!1132461))

(declare-fun m!1132463 () Bool)

(assert (=> b!1227717 m!1132463))

(declare-fun m!1132465 () Bool)

(assert (=> b!1227728 m!1132465))

(declare-fun m!1132467 () Bool)

(assert (=> b!1227723 m!1132467))

(declare-fun m!1132469 () Bool)

(assert (=> start!102016 m!1132469))

(declare-fun m!1132471 () Bool)

(assert (=> b!1227718 m!1132471))

(push 1)

(assert (not b!1227729))

(assert (not b!1227725))

(assert (not b!1227724))

(assert (not b!1227726))

(assert (not b!1227727))

(assert (not b!1227719))

(assert (not b!1227722))

(assert (not b!1227728))

(assert (not b!1227718))

(assert (not b!1227720))

(assert (not b!1227723))

(assert (not b!1227717))

(assert (not start!102016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

