; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102706 () Bool)

(assert start!102706)

(declare-fun b!1234107 () Bool)

(declare-fun res!822400 () Bool)

(declare-fun e!699993 () Bool)

(assert (=> b!1234107 (=> (not res!822400) (not e!699993))))

(declare-datatypes ((List!27325 0))(
  ( (Nil!27322) (Cons!27321 (h!28530 (_ BitVec 64)) (t!40795 List!27325)) )
))
(declare-fun acc!846 () List!27325)

(declare-fun noDuplicate!1847 (List!27325) Bool)

(assert (=> b!1234107 (= res!822400 (noDuplicate!1847 acc!846))))

(declare-fun b!1234110 () Bool)

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79537 0))(
  ( (array!79538 (arr!38374 (Array (_ BitVec 32) (_ BitVec 64))) (size!38911 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79537)

(assert (=> b!1234110 (= e!699993 (bvsgt from!3213 (size!38911 a!3835)))))

(declare-fun b!1234108 () Bool)

(declare-fun res!822399 () Bool)

(assert (=> b!1234108 (=> (not res!822399) (not e!699993))))

(declare-fun contains!7240 (List!27325 (_ BitVec 64)) Bool)

(assert (=> b!1234108 (= res!822399 (not (contains!7240 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!822398 () Bool)

(assert (=> start!102706 (=> (not res!822398) (not e!699993))))

(assert (=> start!102706 (= res!822398 (and (bvslt (size!38911 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38911 a!3835))))))

(assert (=> start!102706 e!699993))

(declare-fun array_inv!29150 (array!79537) Bool)

(assert (=> start!102706 (array_inv!29150 a!3835)))

(assert (=> start!102706 true))

(declare-fun b!1234109 () Bool)

(declare-fun res!822401 () Bool)

(assert (=> b!1234109 (=> (not res!822401) (not e!699993))))

(assert (=> b!1234109 (= res!822401 (not (contains!7240 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102706 res!822398) b!1234107))

(assert (= (and b!1234107 res!822400) b!1234108))

(assert (= (and b!1234108 res!822399) b!1234109))

(assert (= (and b!1234109 res!822401) b!1234110))

(declare-fun m!1138177 () Bool)

(assert (=> b!1234107 m!1138177))

(declare-fun m!1138179 () Bool)

(assert (=> b!1234108 m!1138179))

(declare-fun m!1138181 () Bool)

(assert (=> start!102706 m!1138181))

(declare-fun m!1138183 () Bool)

(assert (=> b!1234109 m!1138183))

(check-sat (not b!1234107) (not start!102706) (not b!1234108) (not b!1234109))
(check-sat)
