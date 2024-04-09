; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102718 () Bool)

(assert start!102718)

(declare-fun res!822458 () Bool)

(declare-fun e!700029 () Bool)

(assert (=> start!102718 (=> (not res!822458) (not e!700029))))

(declare-datatypes ((array!79549 0))(
  ( (array!79550 (arr!38380 (Array (_ BitVec 32) (_ BitVec 64))) (size!38917 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79549)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102718 (= res!822458 (and (bvslt (size!38917 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38917 a!3835))))))

(assert (=> start!102718 e!700029))

(declare-fun array_inv!29156 (array!79549) Bool)

(assert (=> start!102718 (array_inv!29156 a!3835)))

(assert (=> start!102718 true))

(declare-fun b!1234165 () Bool)

(declare-fun res!822457 () Bool)

(assert (=> b!1234165 (=> (not res!822457) (not e!700029))))

(declare-datatypes ((List!27331 0))(
  ( (Nil!27328) (Cons!27327 (h!28536 (_ BitVec 64)) (t!40801 List!27331)) )
))
(declare-fun acc!846 () List!27331)

(declare-fun noDuplicate!1853 (List!27331) Bool)

(assert (=> b!1234165 (= res!822457 (noDuplicate!1853 acc!846))))

(declare-fun b!1234166 () Bool)

(declare-fun res!822456 () Bool)

(assert (=> b!1234166 (=> (not res!822456) (not e!700029))))

(declare-fun contains!7246 (List!27331 (_ BitVec 64)) Bool)

(assert (=> b!1234166 (= res!822456 (not (contains!7246 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234167 () Bool)

(assert (=> b!1234167 (= e!700029 false)))

(declare-fun lt!559753 () Bool)

(assert (=> b!1234167 (= lt!559753 (contains!7246 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102718 res!822458) b!1234165))

(assert (= (and b!1234165 res!822457) b!1234166))

(assert (= (and b!1234166 res!822456) b!1234167))

(declare-fun m!1138225 () Bool)

(assert (=> start!102718 m!1138225))

(declare-fun m!1138227 () Bool)

(assert (=> b!1234165 m!1138227))

(declare-fun m!1138229 () Bool)

(assert (=> b!1234166 m!1138229))

(declare-fun m!1138231 () Bool)

(assert (=> b!1234167 m!1138231))

(check-sat (not b!1234165) (not start!102718) (not b!1234166) (not b!1234167))
(check-sat)
