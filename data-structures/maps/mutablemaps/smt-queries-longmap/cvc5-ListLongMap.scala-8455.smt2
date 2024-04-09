; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102902 () Bool)

(assert start!102902)

(declare-fun b!1236296 () Bool)

(declare-fun res!824393 () Bool)

(declare-fun e!700809 () Bool)

(assert (=> b!1236296 (=> (not res!824393) (not e!700809))))

(declare-datatypes ((List!27399 0))(
  ( (Nil!27396) (Cons!27395 (h!28604 (_ BitVec 64)) (t!40869 List!27399)) )
))
(declare-fun acc!846 () List!27399)

(declare-fun noDuplicate!1921 (List!27399) Bool)

(assert (=> b!1236296 (= res!824393 (noDuplicate!1921 acc!846))))

(declare-fun res!824391 () Bool)

(assert (=> start!102902 (=> (not res!824391) (not e!700809))))

(declare-datatypes ((array!79688 0))(
  ( (array!79689 (arr!38448 (Array (_ BitVec 32) (_ BitVec 64))) (size!38985 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79688)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102902 (= res!824391 (and (bvslt (size!38985 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38985 a!3835))))))

(assert (=> start!102902 e!700809))

(declare-fun array_inv!29224 (array!79688) Bool)

(assert (=> start!102902 (array_inv!29224 a!3835)))

(assert (=> start!102902 true))

(declare-fun b!1236297 () Bool)

(assert (=> b!1236297 (= e!700809 false)))

(declare-fun lt!560728 () Bool)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7314 (List!27399 (_ BitVec 64)) Bool)

(assert (=> b!1236297 (= lt!560728 (contains!7314 acc!846 k!2925))))

(declare-fun b!1236298 () Bool)

(declare-fun res!824390 () Bool)

(assert (=> b!1236298 (=> (not res!824390) (not e!700809))))

(assert (=> b!1236298 (= res!824390 (not (contains!7314 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236299 () Bool)

(declare-fun res!824389 () Bool)

(assert (=> b!1236299 (=> (not res!824389) (not e!700809))))

(assert (=> b!1236299 (= res!824389 (not (contains!7314 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236300 () Bool)

(declare-fun res!824392 () Bool)

(assert (=> b!1236300 (=> (not res!824392) (not e!700809))))

(declare-fun arrayNoDuplicates!0 (array!79688 (_ BitVec 32) List!27399) Bool)

(assert (=> b!1236300 (= res!824392 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(assert (= (and start!102902 res!824391) b!1236296))

(assert (= (and b!1236296 res!824393) b!1236298))

(assert (= (and b!1236298 res!824390) b!1236299))

(assert (= (and b!1236299 res!824389) b!1236300))

(assert (= (and b!1236300 res!824392) b!1236297))

(declare-fun m!1140179 () Bool)

(assert (=> b!1236297 m!1140179))

(declare-fun m!1140181 () Bool)

(assert (=> b!1236300 m!1140181))

(declare-fun m!1140183 () Bool)

(assert (=> b!1236296 m!1140183))

(declare-fun m!1140185 () Bool)

(assert (=> b!1236299 m!1140185))

(declare-fun m!1140187 () Bool)

(assert (=> b!1236298 m!1140187))

(declare-fun m!1140189 () Bool)

(assert (=> start!102902 m!1140189))

(push 1)

(assert (not b!1236300))

(assert (not b!1236299))

(assert (not b!1236296))

(assert (not start!102902))

(assert (not b!1236298))

(assert (not b!1236297))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

