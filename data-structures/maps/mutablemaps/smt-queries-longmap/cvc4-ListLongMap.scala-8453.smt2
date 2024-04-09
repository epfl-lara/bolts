; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102894 () Bool)

(assert start!102894)

(declare-fun b!1236236 () Bool)

(declare-fun res!824332 () Bool)

(declare-fun e!700785 () Bool)

(assert (=> b!1236236 (=> (not res!824332) (not e!700785))))

(declare-datatypes ((List!27395 0))(
  ( (Nil!27392) (Cons!27391 (h!28600 (_ BitVec 64)) (t!40865 List!27395)) )
))
(declare-fun acc!846 () List!27395)

(declare-fun contains!7310 (List!27395 (_ BitVec 64)) Bool)

(assert (=> b!1236236 (= res!824332 (not (contains!7310 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236237 () Bool)

(declare-fun res!824331 () Bool)

(assert (=> b!1236237 (=> (not res!824331) (not e!700785))))

(declare-datatypes ((array!79680 0))(
  ( (array!79681 (arr!38444 (Array (_ BitVec 32) (_ BitVec 64))) (size!38981 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79680)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79680 (_ BitVec 32) List!27395) Bool)

(assert (=> b!1236237 (= res!824331 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236238 () Bool)

(assert (=> b!1236238 (= e!700785 false)))

(declare-fun lt!560716 () Bool)

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236238 (= lt!560716 (contains!7310 acc!846 k!2925))))

(declare-fun b!1236239 () Bool)

(declare-fun res!824329 () Bool)

(assert (=> b!1236239 (=> (not res!824329) (not e!700785))))

(assert (=> b!1236239 (= res!824329 (not (contains!7310 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824330 () Bool)

(assert (=> start!102894 (=> (not res!824330) (not e!700785))))

(assert (=> start!102894 (= res!824330 (and (bvslt (size!38981 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38981 a!3835))))))

(assert (=> start!102894 e!700785))

(declare-fun array_inv!29220 (array!79680) Bool)

(assert (=> start!102894 (array_inv!29220 a!3835)))

(assert (=> start!102894 true))

(declare-fun b!1236240 () Bool)

(declare-fun res!824333 () Bool)

(assert (=> b!1236240 (=> (not res!824333) (not e!700785))))

(declare-fun noDuplicate!1917 (List!27395) Bool)

(assert (=> b!1236240 (= res!824333 (noDuplicate!1917 acc!846))))

(assert (= (and start!102894 res!824330) b!1236240))

(assert (= (and b!1236240 res!824333) b!1236239))

(assert (= (and b!1236239 res!824329) b!1236236))

(assert (= (and b!1236236 res!824332) b!1236237))

(assert (= (and b!1236237 res!824331) b!1236238))

(declare-fun m!1140131 () Bool)

(assert (=> b!1236240 m!1140131))

(declare-fun m!1140133 () Bool)

(assert (=> b!1236237 m!1140133))

(declare-fun m!1140135 () Bool)

(assert (=> start!102894 m!1140135))

(declare-fun m!1140137 () Bool)

(assert (=> b!1236239 m!1140137))

(declare-fun m!1140139 () Bool)

(assert (=> b!1236236 m!1140139))

(declare-fun m!1140141 () Bool)

(assert (=> b!1236238 m!1140141))

(push 1)

(assert (not b!1236238))

(assert (not start!102894))

(assert (not b!1236237))

(assert (not b!1236240))

(assert (not b!1236239))

(assert (not b!1236236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

