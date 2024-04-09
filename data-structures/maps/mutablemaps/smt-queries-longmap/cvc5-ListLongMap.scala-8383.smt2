; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102010 () Bool)

(assert start!102010)

(declare-fun b!1227600 () Bool)

(declare-fun res!816330 () Bool)

(declare-fun e!697035 () Bool)

(assert (=> b!1227600 (=> (not res!816330) (not e!697035))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79226 0))(
  ( (array!79227 (arr!38232 (Array (_ BitVec 32) (_ BitVec 64))) (size!38769 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79226)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227600 (= res!816330 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!816329 () Bool)

(assert (=> start!102010 (=> (not res!816329) (not e!697035))))

(assert (=> start!102010 (= res!816329 (bvslt (size!38769 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102010 e!697035))

(declare-fun array_inv!29008 (array!79226) Bool)

(assert (=> start!102010 (array_inv!29008 a!3806)))

(assert (=> start!102010 true))

(declare-fun b!1227601 () Bool)

(declare-fun res!816338 () Bool)

(assert (=> b!1227601 (=> (not res!816338) (not e!697035))))

(declare-datatypes ((List!27183 0))(
  ( (Nil!27180) (Cons!27179 (h!28388 (_ BitVec 64)) (t!40653 List!27183)) )
))
(declare-fun acc!823 () List!27183)

(declare-fun noDuplicate!1705 (List!27183) Bool)

(assert (=> b!1227601 (= res!816338 (noDuplicate!1705 acc!823))))

(declare-fun b!1227602 () Bool)

(declare-fun res!816336 () Bool)

(assert (=> b!1227602 (=> (not res!816336) (not e!697035))))

(declare-fun contains!7098 (List!27183 (_ BitVec 64)) Bool)

(assert (=> b!1227602 (= res!816336 (not (contains!7098 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227603 () Bool)

(declare-fun res!816334 () Bool)

(assert (=> b!1227603 (=> (not res!816334) (not e!697035))))

(declare-fun arrayNoDuplicates!0 (array!79226 (_ BitVec 32) List!27183) Bool)

(assert (=> b!1227603 (= res!816334 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227604 () Bool)

(declare-fun res!816331 () Bool)

(declare-fun e!697036 () Bool)

(assert (=> b!1227604 (=> res!816331 e!697036)))

(assert (=> b!1227604 (= res!816331 (contains!7098 Nil!27180 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227605 () Bool)

(declare-fun res!816339 () Bool)

(assert (=> b!1227605 (=> res!816339 e!697036)))

(declare-fun subseq!485 (List!27183 List!27183) Bool)

(assert (=> b!1227605 (= res!816339 (not (subseq!485 Nil!27180 acc!823)))))

(declare-fun b!1227606 () Bool)

(declare-fun res!816341 () Bool)

(assert (=> b!1227606 (=> (not res!816341) (not e!697035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227606 (= res!816341 (validKeyInArray!0 (select (arr!38232 a!3806) from!3184)))))

(declare-fun b!1227607 () Bool)

(assert (=> b!1227607 (= e!697036 true)))

(declare-datatypes ((Unit!40604 0))(
  ( (Unit!40605) )
))
(declare-fun lt!558872 () Unit!40604)

(declare-fun noDuplicateSubseq!38 (List!27183 List!27183) Unit!40604)

(assert (=> b!1227607 (= lt!558872 (noDuplicateSubseq!38 Nil!27180 acc!823))))

(declare-fun b!1227608 () Bool)

(declare-fun res!816340 () Bool)

(assert (=> b!1227608 (=> res!816340 e!697036)))

(assert (=> b!1227608 (= res!816340 (contains!7098 Nil!27180 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227609 () Bool)

(declare-fun res!816337 () Bool)

(assert (=> b!1227609 (=> (not res!816337) (not e!697035))))

(assert (=> b!1227609 (= res!816337 (validKeyInArray!0 k!2913))))

(declare-fun b!1227610 () Bool)

(declare-fun res!816335 () Bool)

(assert (=> b!1227610 (=> (not res!816335) (not e!697035))))

(assert (=> b!1227610 (= res!816335 (not (contains!7098 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227611 () Bool)

(declare-fun res!816333 () Bool)

(assert (=> b!1227611 (=> (not res!816333) (not e!697035))))

(assert (=> b!1227611 (= res!816333 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38769 a!3806)) (bvslt from!3184 (size!38769 a!3806))))))

(declare-fun b!1227612 () Bool)

(assert (=> b!1227612 (= e!697035 (not e!697036))))

(declare-fun res!816332 () Bool)

(assert (=> b!1227612 (=> res!816332 e!697036)))

(assert (=> b!1227612 (= res!816332 (bvsgt from!3184 (size!38769 a!3806)))))

(assert (=> b!1227612 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27179 (select (arr!38232 a!3806) from!3184) acc!823))))

(assert (= (and start!102010 res!816329) b!1227609))

(assert (= (and b!1227609 res!816337) b!1227611))

(assert (= (and b!1227611 res!816333) b!1227601))

(assert (= (and b!1227601 res!816338) b!1227610))

(assert (= (and b!1227610 res!816335) b!1227602))

(assert (= (and b!1227602 res!816336) b!1227600))

(assert (= (and b!1227600 res!816330) b!1227603))

(assert (= (and b!1227603 res!816334) b!1227606))

(assert (= (and b!1227606 res!816341) b!1227612))

(assert (= (and b!1227612 (not res!816332)) b!1227604))

(assert (= (and b!1227604 (not res!816331)) b!1227608))

(assert (= (and b!1227608 (not res!816340)) b!1227605))

(assert (= (and b!1227605 (not res!816339)) b!1227607))

(declare-fun m!1132361 () Bool)

(assert (=> b!1227606 m!1132361))

(assert (=> b!1227606 m!1132361))

(declare-fun m!1132363 () Bool)

(assert (=> b!1227606 m!1132363))

(declare-fun m!1132365 () Bool)

(assert (=> b!1227608 m!1132365))

(declare-fun m!1132367 () Bool)

(assert (=> b!1227602 m!1132367))

(declare-fun m!1132369 () Bool)

(assert (=> b!1227610 m!1132369))

(declare-fun m!1132371 () Bool)

(assert (=> b!1227603 m!1132371))

(declare-fun m!1132373 () Bool)

(assert (=> b!1227604 m!1132373))

(declare-fun m!1132375 () Bool)

(assert (=> b!1227607 m!1132375))

(assert (=> b!1227612 m!1132361))

(declare-fun m!1132377 () Bool)

(assert (=> b!1227612 m!1132377))

(declare-fun m!1132379 () Bool)

(assert (=> b!1227605 m!1132379))

(declare-fun m!1132381 () Bool)

(assert (=> b!1227601 m!1132381))

(declare-fun m!1132383 () Bool)

(assert (=> b!1227609 m!1132383))

(declare-fun m!1132385 () Bool)

(assert (=> start!102010 m!1132385))

(declare-fun m!1132387 () Bool)

(assert (=> b!1227600 m!1132387))

(push 1)

(assert (not b!1227612))

(assert (not b!1227606))

(assert (not b!1227604))

(assert (not b!1227600))

(assert (not b!1227605))

(assert (not b!1227607))

(assert (not b!1227610))

(assert (not b!1227608))

(assert (not start!102010))

(assert (not b!1227601))

(assert (not b!1227602))

(assert (not b!1227603))

(assert (not b!1227609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

