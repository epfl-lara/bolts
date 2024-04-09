; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102892 () Bool)

(assert start!102892)

(declare-fun b!1236221 () Bool)

(declare-fun res!824315 () Bool)

(declare-fun e!700779 () Bool)

(assert (=> b!1236221 (=> (not res!824315) (not e!700779))))

(declare-datatypes ((List!27394 0))(
  ( (Nil!27391) (Cons!27390 (h!28599 (_ BitVec 64)) (t!40864 List!27394)) )
))
(declare-fun acc!846 () List!27394)

(declare-fun contains!7309 (List!27394 (_ BitVec 64)) Bool)

(assert (=> b!1236221 (= res!824315 (not (contains!7309 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236222 () Bool)

(declare-fun res!824316 () Bool)

(assert (=> b!1236222 (=> (not res!824316) (not e!700779))))

(assert (=> b!1236222 (= res!824316 (not (contains!7309 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824318 () Bool)

(assert (=> start!102892 (=> (not res!824318) (not e!700779))))

(declare-datatypes ((array!79678 0))(
  ( (array!79679 (arr!38443 (Array (_ BitVec 32) (_ BitVec 64))) (size!38980 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79678)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102892 (= res!824318 (and (bvslt (size!38980 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38980 a!3835))))))

(assert (=> start!102892 e!700779))

(declare-fun array_inv!29219 (array!79678) Bool)

(assert (=> start!102892 (array_inv!29219 a!3835)))

(assert (=> start!102892 true))

(declare-fun b!1236223 () Bool)

(assert (=> b!1236223 (= e!700779 false)))

(declare-fun lt!560713 () Bool)

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1236223 (= lt!560713 (contains!7309 acc!846 k0!2925))))

(declare-fun b!1236224 () Bool)

(declare-fun res!824314 () Bool)

(assert (=> b!1236224 (=> (not res!824314) (not e!700779))))

(declare-fun arrayNoDuplicates!0 (array!79678 (_ BitVec 32) List!27394) Bool)

(assert (=> b!1236224 (= res!824314 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236225 () Bool)

(declare-fun res!824317 () Bool)

(assert (=> b!1236225 (=> (not res!824317) (not e!700779))))

(declare-fun noDuplicate!1916 (List!27394) Bool)

(assert (=> b!1236225 (= res!824317 (noDuplicate!1916 acc!846))))

(assert (= (and start!102892 res!824318) b!1236225))

(assert (= (and b!1236225 res!824317) b!1236221))

(assert (= (and b!1236221 res!824315) b!1236222))

(assert (= (and b!1236222 res!824316) b!1236224))

(assert (= (and b!1236224 res!824314) b!1236223))

(declare-fun m!1140119 () Bool)

(assert (=> b!1236222 m!1140119))

(declare-fun m!1140121 () Bool)

(assert (=> b!1236224 m!1140121))

(declare-fun m!1140123 () Bool)

(assert (=> b!1236221 m!1140123))

(declare-fun m!1140125 () Bool)

(assert (=> start!102892 m!1140125))

(declare-fun m!1140127 () Bool)

(assert (=> b!1236225 m!1140127))

(declare-fun m!1140129 () Bool)

(assert (=> b!1236223 m!1140129))

(check-sat (not b!1236223) (not b!1236221) (not b!1236224) (not start!102892) (not b!1236225) (not b!1236222))
