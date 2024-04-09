; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102726 () Bool)

(assert start!102726)

(declare-fun res!822493 () Bool)

(declare-fun e!700054 () Bool)

(assert (=> start!102726 (=> (not res!822493) (not e!700054))))

(declare-datatypes ((array!79557 0))(
  ( (array!79558 (arr!38384 (Array (_ BitVec 32) (_ BitVec 64))) (size!38921 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79557)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102726 (= res!822493 (and (bvslt (size!38921 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38921 a!3835))))))

(assert (=> start!102726 e!700054))

(declare-fun array_inv!29160 (array!79557) Bool)

(assert (=> start!102726 (array_inv!29160 a!3835)))

(assert (=> start!102726 true))

(declare-fun b!1234201 () Bool)

(declare-fun res!822494 () Bool)

(assert (=> b!1234201 (=> (not res!822494) (not e!700054))))

(declare-datatypes ((List!27335 0))(
  ( (Nil!27332) (Cons!27331 (h!28540 (_ BitVec 64)) (t!40805 List!27335)) )
))
(declare-fun acc!846 () List!27335)

(declare-fun noDuplicate!1857 (List!27335) Bool)

(assert (=> b!1234201 (= res!822494 (noDuplicate!1857 acc!846))))

(declare-fun b!1234202 () Bool)

(declare-fun res!822492 () Bool)

(assert (=> b!1234202 (=> (not res!822492) (not e!700054))))

(declare-fun contains!7250 (List!27335 (_ BitVec 64)) Bool)

(assert (=> b!1234202 (= res!822492 (not (contains!7250 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234203 () Bool)

(assert (=> b!1234203 (= e!700054 false)))

(declare-fun lt!559765 () Bool)

(assert (=> b!1234203 (= lt!559765 (contains!7250 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102726 res!822493) b!1234201))

(assert (= (and b!1234201 res!822494) b!1234202))

(assert (= (and b!1234202 res!822492) b!1234203))

(declare-fun m!1138257 () Bool)

(assert (=> start!102726 m!1138257))

(declare-fun m!1138259 () Bool)

(assert (=> b!1234201 m!1138259))

(declare-fun m!1138261 () Bool)

(assert (=> b!1234202 m!1138261))

(declare-fun m!1138263 () Bool)

(assert (=> b!1234203 m!1138263))

(push 1)

(assert (not b!1234201))

(assert (not b!1234202))

(assert (not b!1234203))

(assert (not start!102726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

