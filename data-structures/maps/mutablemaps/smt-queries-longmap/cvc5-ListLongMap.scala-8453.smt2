; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102890 () Bool)

(assert start!102890)

(declare-fun b!1236206 () Bool)

(declare-fun res!824303 () Bool)

(declare-fun e!700773 () Bool)

(assert (=> b!1236206 (=> (not res!824303) (not e!700773))))

(declare-datatypes ((List!27393 0))(
  ( (Nil!27390) (Cons!27389 (h!28598 (_ BitVec 64)) (t!40863 List!27393)) )
))
(declare-fun acc!846 () List!27393)

(declare-fun contains!7308 (List!27393 (_ BitVec 64)) Bool)

(assert (=> b!1236206 (= res!824303 (not (contains!7308 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824302 () Bool)

(assert (=> start!102890 (=> (not res!824302) (not e!700773))))

(declare-datatypes ((array!79676 0))(
  ( (array!79677 (arr!38442 (Array (_ BitVec 32) (_ BitVec 64))) (size!38979 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79676)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102890 (= res!824302 (and (bvslt (size!38979 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38979 a!3835))))))

(assert (=> start!102890 e!700773))

(declare-fun array_inv!29218 (array!79676) Bool)

(assert (=> start!102890 (array_inv!29218 a!3835)))

(assert (=> start!102890 true))

(declare-fun b!1236207 () Bool)

(declare-fun res!824299 () Bool)

(assert (=> b!1236207 (=> (not res!824299) (not e!700773))))

(declare-fun noDuplicate!1915 (List!27393) Bool)

(assert (=> b!1236207 (= res!824299 (noDuplicate!1915 acc!846))))

(declare-fun b!1236208 () Bool)

(declare-fun res!824300 () Bool)

(assert (=> b!1236208 (=> (not res!824300) (not e!700773))))

(assert (=> b!1236208 (= res!824300 (not (contains!7308 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236209 () Bool)

(assert (=> b!1236209 (= e!700773 false)))

(declare-fun lt!560710 () Bool)

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236209 (= lt!560710 (contains!7308 acc!846 k!2925))))

(declare-fun b!1236210 () Bool)

(declare-fun res!824301 () Bool)

(assert (=> b!1236210 (=> (not res!824301) (not e!700773))))

(declare-fun arrayNoDuplicates!0 (array!79676 (_ BitVec 32) List!27393) Bool)

(assert (=> b!1236210 (= res!824301 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(assert (= (and start!102890 res!824302) b!1236207))

(assert (= (and b!1236207 res!824299) b!1236208))

(assert (= (and b!1236208 res!824300) b!1236206))

(assert (= (and b!1236206 res!824303) b!1236210))

(assert (= (and b!1236210 res!824301) b!1236209))

(declare-fun m!1140107 () Bool)

(assert (=> b!1236210 m!1140107))

(declare-fun m!1140109 () Bool)

(assert (=> b!1236208 m!1140109))

(declare-fun m!1140111 () Bool)

(assert (=> b!1236209 m!1140111))

(declare-fun m!1140113 () Bool)

(assert (=> start!102890 m!1140113))

(declare-fun m!1140115 () Bool)

(assert (=> b!1236206 m!1140115))

(declare-fun m!1140117 () Bool)

(assert (=> b!1236207 m!1140117))

(push 1)

(assert (not b!1236210))

(assert (not b!1236208))

(assert (not start!102890))

(assert (not b!1236206))

(assert (not b!1236209))

(assert (not b!1236207))

(check-sat)

(pop 1)

