; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102314 () Bool)

(assert start!102314)

(declare-fun b!1230952 () Bool)

(declare-fun res!819523 () Bool)

(declare-fun e!698335 () Bool)

(assert (=> b!1230952 (=> (not res!819523) (not e!698335))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79395 0))(
  ( (array!79396 (arr!38312 (Array (_ BitVec 32) (_ BitVec 64))) (size!38849 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79395)

(assert (=> b!1230952 (= res!819523 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38849 a!3806)) (bvslt from!3184 (size!38849 a!3806))))))

(declare-fun b!1230953 () Bool)

(declare-fun res!819521 () Bool)

(assert (=> b!1230953 (=> (not res!819521) (not e!698335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230953 (= res!819521 (validKeyInArray!0 (select (arr!38312 a!3806) from!3184)))))

(declare-fun b!1230954 () Bool)

(declare-fun res!819524 () Bool)

(assert (=> b!1230954 (=> (not res!819524) (not e!698335))))

(declare-datatypes ((List!27263 0))(
  ( (Nil!27260) (Cons!27259 (h!28468 (_ BitVec 64)) (t!40733 List!27263)) )
))
(declare-fun acc!823 () List!27263)

(declare-fun contains!7178 (List!27263 (_ BitVec 64)) Bool)

(assert (=> b!1230954 (= res!819524 (not (contains!7178 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!819519 () Bool)

(assert (=> start!102314 (=> (not res!819519) (not e!698335))))

(assert (=> start!102314 (= res!819519 (bvslt (size!38849 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102314 e!698335))

(declare-fun array_inv!29088 (array!79395) Bool)

(assert (=> start!102314 (array_inv!29088 a!3806)))

(assert (=> start!102314 true))

(declare-fun b!1230955 () Bool)

(declare-fun res!819520 () Bool)

(assert (=> b!1230955 (=> (not res!819520) (not e!698335))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1230955 (= res!819520 (validKeyInArray!0 k!2913))))

(declare-fun b!1230956 () Bool)

(assert (=> b!1230956 (= e!698335 (not true))))

(declare-fun arrayNoDuplicates!0 (array!79395 (_ BitVec 32) List!27263) Bool)

(assert (=> b!1230956 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27259 (select (arr!38312 a!3806) from!3184) acc!823))))

(declare-fun b!1230957 () Bool)

(declare-fun res!819526 () Bool)

(assert (=> b!1230957 (=> (not res!819526) (not e!698335))))

(assert (=> b!1230957 (= res!819526 (not (contains!7178 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230958 () Bool)

(declare-fun res!819527 () Bool)

(assert (=> b!1230958 (=> (not res!819527) (not e!698335))))

(assert (=> b!1230958 (= res!819527 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230959 () Bool)

(declare-fun res!819522 () Bool)

(assert (=> b!1230959 (=> (not res!819522) (not e!698335))))

(declare-fun arrayContainsKey!0 (array!79395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230959 (= res!819522 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230960 () Bool)

(declare-fun res!819525 () Bool)

(assert (=> b!1230960 (=> (not res!819525) (not e!698335))))

(declare-fun noDuplicate!1785 (List!27263) Bool)

(assert (=> b!1230960 (= res!819525 (noDuplicate!1785 acc!823))))

(assert (= (and start!102314 res!819519) b!1230955))

(assert (= (and b!1230955 res!819520) b!1230952))

(assert (= (and b!1230952 res!819523) b!1230960))

(assert (= (and b!1230960 res!819525) b!1230957))

(assert (= (and b!1230957 res!819526) b!1230954))

(assert (= (and b!1230954 res!819524) b!1230959))

(assert (= (and b!1230959 res!819522) b!1230958))

(assert (= (and b!1230958 res!819527) b!1230953))

(assert (= (and b!1230953 res!819521) b!1230956))

(declare-fun m!1135281 () Bool)

(assert (=> b!1230953 m!1135281))

(assert (=> b!1230953 m!1135281))

(declare-fun m!1135283 () Bool)

(assert (=> b!1230953 m!1135283))

(assert (=> b!1230956 m!1135281))

(declare-fun m!1135285 () Bool)

(assert (=> b!1230956 m!1135285))

(declare-fun m!1135287 () Bool)

(assert (=> b!1230960 m!1135287))

(declare-fun m!1135289 () Bool)

(assert (=> b!1230959 m!1135289))

(declare-fun m!1135291 () Bool)

(assert (=> b!1230958 m!1135291))

(declare-fun m!1135293 () Bool)

(assert (=> b!1230955 m!1135293))

(declare-fun m!1135295 () Bool)

(assert (=> b!1230957 m!1135295))

(declare-fun m!1135297 () Bool)

(assert (=> start!102314 m!1135297))

(declare-fun m!1135299 () Bool)

(assert (=> b!1230954 m!1135299))

(push 1)

(assert (not start!102314))

(assert (not b!1230960))

(assert (not b!1230955))

(assert (not b!1230958))

(assert (not b!1230956))

(assert (not b!1230953))

(assert (not b!1230954))

(assert (not b!1230957))

(assert (not b!1230959))

(check-sat)

(pop 1)

