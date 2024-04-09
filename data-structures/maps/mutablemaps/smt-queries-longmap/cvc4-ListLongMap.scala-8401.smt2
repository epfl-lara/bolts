; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102230 () Bool)

(assert start!102230)

(declare-fun b!1230219 () Bool)

(declare-fun res!818815 () Bool)

(declare-fun e!698083 () Bool)

(assert (=> b!1230219 (=> (not res!818815) (not e!698083))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79344 0))(
  ( (array!79345 (arr!38288 (Array (_ BitVec 32) (_ BitVec 64))) (size!38825 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79344)

(assert (=> b!1230219 (= res!818815 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38825 a!3806)) (bvslt from!3184 (size!38825 a!3806))))))

(declare-fun b!1230220 () Bool)

(declare-fun res!818812 () Bool)

(assert (=> b!1230220 (=> (not res!818812) (not e!698083))))

(declare-datatypes ((List!27239 0))(
  ( (Nil!27236) (Cons!27235 (h!28444 (_ BitVec 64)) (t!40709 List!27239)) )
))
(declare-fun acc!823 () List!27239)

(declare-fun contains!7154 (List!27239 (_ BitVec 64)) Bool)

(assert (=> b!1230220 (= res!818812 (not (contains!7154 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230221 () Bool)

(declare-fun res!818813 () Bool)

(assert (=> b!1230221 (=> (not res!818813) (not e!698083))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230221 (= res!818813 (validKeyInArray!0 k!2913))))

(declare-fun b!1230222 () Bool)

(assert (=> b!1230222 (= e!698083 (not true))))

(declare-fun arrayContainsKey!0 (array!79344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230222 (not (arrayContainsKey!0 a!3806 (select (arr!38288 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40716 0))(
  ( (Unit!40717) )
))
(declare-fun lt!559298 () Unit!40716)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79344 (_ BitVec 32) (_ BitVec 64) List!27239) Unit!40716)

(assert (=> b!1230222 (= lt!559298 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38288 a!3806) from!3184) (Cons!27235 (select (arr!38288 a!3806) from!3184) Nil!27236)))))

(declare-fun e!698082 () Bool)

(assert (=> b!1230222 e!698082))

(declare-fun res!818810 () Bool)

(assert (=> b!1230222 (=> (not res!818810) (not e!698082))))

(declare-fun arrayNoDuplicates!0 (array!79344 (_ BitVec 32) List!27239) Bool)

(assert (=> b!1230222 (= res!818810 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27236))))

(declare-fun lt!559297 () Unit!40716)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79344 List!27239 List!27239 (_ BitVec 32)) Unit!40716)

(assert (=> b!1230222 (= lt!559297 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27236 from!3184))))

(assert (=> b!1230222 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27235 (select (arr!38288 a!3806) from!3184) acc!823))))

(declare-fun b!1230223 () Bool)

(declare-fun res!818818 () Bool)

(assert (=> b!1230223 (=> (not res!818818) (not e!698083))))

(assert (=> b!1230223 (= res!818818 (validKeyInArray!0 (select (arr!38288 a!3806) from!3184)))))

(declare-fun b!1230224 () Bool)

(assert (=> b!1230224 (= e!698082 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27235 (select (arr!38288 a!3806) from!3184) Nil!27236)))))

(declare-fun b!1230225 () Bool)

(declare-fun res!818817 () Bool)

(assert (=> b!1230225 (=> (not res!818817) (not e!698083))))

(assert (=> b!1230225 (= res!818817 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!818819 () Bool)

(assert (=> start!102230 (=> (not res!818819) (not e!698083))))

(assert (=> start!102230 (= res!818819 (bvslt (size!38825 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102230 e!698083))

(declare-fun array_inv!29064 (array!79344) Bool)

(assert (=> start!102230 (array_inv!29064 a!3806)))

(assert (=> start!102230 true))

(declare-fun b!1230226 () Bool)

(declare-fun res!818816 () Bool)

(assert (=> b!1230226 (=> (not res!818816) (not e!698083))))

(assert (=> b!1230226 (= res!818816 (not (contains!7154 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230227 () Bool)

(declare-fun res!818814 () Bool)

(assert (=> b!1230227 (=> (not res!818814) (not e!698083))))

(declare-fun noDuplicate!1761 (List!27239) Bool)

(assert (=> b!1230227 (= res!818814 (noDuplicate!1761 acc!823))))

(declare-fun b!1230228 () Bool)

(declare-fun res!818811 () Bool)

(assert (=> b!1230228 (=> (not res!818811) (not e!698083))))

(assert (=> b!1230228 (= res!818811 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102230 res!818819) b!1230221))

(assert (= (and b!1230221 res!818813) b!1230219))

(assert (= (and b!1230219 res!818815) b!1230227))

(assert (= (and b!1230227 res!818814) b!1230220))

(assert (= (and b!1230220 res!818812) b!1230226))

(assert (= (and b!1230226 res!818816) b!1230228))

(assert (= (and b!1230228 res!818811) b!1230225))

(assert (= (and b!1230225 res!818817) b!1230223))

(assert (= (and b!1230223 res!818818) b!1230222))

(assert (= (and b!1230222 res!818810) b!1230224))

(declare-fun m!1134743 () Bool)

(assert (=> b!1230225 m!1134743))

(declare-fun m!1134745 () Bool)

(assert (=> b!1230228 m!1134745))

(declare-fun m!1134747 () Bool)

(assert (=> b!1230222 m!1134747))

(declare-fun m!1134749 () Bool)

(assert (=> b!1230222 m!1134749))

(declare-fun m!1134751 () Bool)

(assert (=> b!1230222 m!1134751))

(declare-fun m!1134753 () Bool)

(assert (=> b!1230222 m!1134753))

(assert (=> b!1230222 m!1134751))

(declare-fun m!1134755 () Bool)

(assert (=> b!1230222 m!1134755))

(assert (=> b!1230222 m!1134751))

(declare-fun m!1134757 () Bool)

(assert (=> b!1230222 m!1134757))

(declare-fun m!1134759 () Bool)

(assert (=> start!102230 m!1134759))

(declare-fun m!1134761 () Bool)

(assert (=> b!1230226 m!1134761))

(assert (=> b!1230223 m!1134751))

(assert (=> b!1230223 m!1134751))

(declare-fun m!1134763 () Bool)

(assert (=> b!1230223 m!1134763))

(assert (=> b!1230224 m!1134751))

(declare-fun m!1134765 () Bool)

(assert (=> b!1230224 m!1134765))

(declare-fun m!1134767 () Bool)

(assert (=> b!1230220 m!1134767))

(declare-fun m!1134769 () Bool)

(assert (=> b!1230227 m!1134769))

(declare-fun m!1134771 () Bool)

(assert (=> b!1230221 m!1134771))

(push 1)

(assert (not b!1230226))

(assert (not b!1230220))

(assert (not b!1230221))

(assert (not b!1230228))

(assert (not b!1230225))

(assert (not b!1230227))

(assert (not start!102230))

(assert (not b!1230224))

(assert (not b!1230222))

(assert (not b!1230223))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

