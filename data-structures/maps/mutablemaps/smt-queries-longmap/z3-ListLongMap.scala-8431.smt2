; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102712 () Bool)

(assert start!102712)

(declare-fun res!822431 () Bool)

(declare-fun e!700011 () Bool)

(assert (=> start!102712 (=> (not res!822431) (not e!700011))))

(declare-datatypes ((array!79543 0))(
  ( (array!79544 (arr!38377 (Array (_ BitVec 32) (_ BitVec 64))) (size!38914 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79543)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102712 (= res!822431 (and (bvslt (size!38914 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38914 a!3835))))))

(assert (=> start!102712 e!700011))

(declare-fun array_inv!29153 (array!79543) Bool)

(assert (=> start!102712 (array_inv!29153 a!3835)))

(assert (=> start!102712 true))

(declare-fun b!1234138 () Bool)

(declare-fun res!822429 () Bool)

(assert (=> b!1234138 (=> (not res!822429) (not e!700011))))

(declare-datatypes ((List!27328 0))(
  ( (Nil!27325) (Cons!27324 (h!28533 (_ BitVec 64)) (t!40798 List!27328)) )
))
(declare-fun acc!846 () List!27328)

(declare-fun noDuplicate!1850 (List!27328) Bool)

(assert (=> b!1234138 (= res!822429 (noDuplicate!1850 acc!846))))

(declare-fun b!1234139 () Bool)

(declare-fun res!822430 () Bool)

(assert (=> b!1234139 (=> (not res!822430) (not e!700011))))

(declare-fun contains!7243 (List!27328 (_ BitVec 64)) Bool)

(assert (=> b!1234139 (= res!822430 (not (contains!7243 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234140 () Bool)

(assert (=> b!1234140 (= e!700011 false)))

(declare-fun lt!559744 () Bool)

(assert (=> b!1234140 (= lt!559744 (contains!7243 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102712 res!822431) b!1234138))

(assert (= (and b!1234138 res!822429) b!1234139))

(assert (= (and b!1234139 res!822430) b!1234140))

(declare-fun m!1138201 () Bool)

(assert (=> start!102712 m!1138201))

(declare-fun m!1138203 () Bool)

(assert (=> b!1234138 m!1138203))

(declare-fun m!1138205 () Bool)

(assert (=> b!1234139 m!1138205))

(declare-fun m!1138207 () Bool)

(assert (=> b!1234140 m!1138207))

(check-sat (not b!1234140) (not start!102712) (not b!1234139) (not b!1234138))
