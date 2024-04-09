; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102486 () Bool)

(assert start!102486)

(declare-fun b!1232217 () Bool)

(declare-fun e!698968 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1232217 (= e!698968 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000)))))

(declare-fun e!698966 () Bool)

(assert (=> b!1232217 e!698966))

(declare-fun res!820701 () Bool)

(assert (=> b!1232217 (=> (not res!820701) (not e!698966))))

(declare-datatypes ((array!79456 0))(
  ( (array!79457 (arr!38338 (Array (_ BitVec 32) (_ BitVec 64))) (size!38875 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79456)

(declare-datatypes ((List!27289 0))(
  ( (Nil!27286) (Cons!27285 (h!28494 (_ BitVec 64)) (t!40759 List!27289)) )
))
(declare-fun arrayNoDuplicates!0 (array!79456 (_ BitVec 32) List!27289) Bool)

(assert (=> b!1232217 (= res!820701 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27286))))

(declare-fun acc!823 () List!27289)

(declare-datatypes ((Unit!40756 0))(
  ( (Unit!40757) )
))
(declare-fun lt!559445 () Unit!40756)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79456 List!27289 List!27289 (_ BitVec 32)) Unit!40756)

(assert (=> b!1232217 (= lt!559445 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27286 from!3184))))

(assert (=> b!1232217 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27285 (select (arr!38338 a!3806) from!3184) acc!823))))

(declare-fun b!1232218 () Bool)

(declare-fun res!820709 () Bool)

(assert (=> b!1232218 (=> (not res!820709) (not e!698968))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232218 (= res!820709 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232219 () Bool)

(declare-fun res!820700 () Bool)

(assert (=> b!1232219 (=> (not res!820700) (not e!698968))))

(declare-fun noDuplicate!1811 (List!27289) Bool)

(assert (=> b!1232219 (= res!820700 (noDuplicate!1811 acc!823))))

(declare-fun b!1232221 () Bool)

(declare-fun res!820705 () Bool)

(assert (=> b!1232221 (=> (not res!820705) (not e!698968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232221 (= res!820705 (validKeyInArray!0 k0!2913))))

(declare-fun b!1232222 () Bool)

(declare-fun res!820706 () Bool)

(assert (=> b!1232222 (=> (not res!820706) (not e!698968))))

(assert (=> b!1232222 (= res!820706 (validKeyInArray!0 (select (arr!38338 a!3806) from!3184)))))

(declare-fun b!1232223 () Bool)

(declare-fun res!820704 () Bool)

(assert (=> b!1232223 (=> (not res!820704) (not e!698968))))

(assert (=> b!1232223 (= res!820704 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232224 () Bool)

(assert (=> b!1232224 (= e!698966 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27285 (select (arr!38338 a!3806) from!3184) Nil!27286)))))

(declare-fun b!1232225 () Bool)

(declare-fun res!820707 () Bool)

(assert (=> b!1232225 (=> (not res!820707) (not e!698968))))

(declare-fun contains!7204 (List!27289 (_ BitVec 64)) Bool)

(assert (=> b!1232225 (= res!820707 (not (contains!7204 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232226 () Bool)

(declare-fun res!820702 () Bool)

(assert (=> b!1232226 (=> (not res!820702) (not e!698968))))

(assert (=> b!1232226 (= res!820702 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38875 a!3806)) (bvslt from!3184 (size!38875 a!3806))))))

(declare-fun res!820708 () Bool)

(assert (=> start!102486 (=> (not res!820708) (not e!698968))))

(assert (=> start!102486 (= res!820708 (bvslt (size!38875 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102486 e!698968))

(declare-fun array_inv!29114 (array!79456) Bool)

(assert (=> start!102486 (array_inv!29114 a!3806)))

(assert (=> start!102486 true))

(declare-fun b!1232220 () Bool)

(declare-fun res!820703 () Bool)

(assert (=> b!1232220 (=> (not res!820703) (not e!698968))))

(assert (=> b!1232220 (= res!820703 (not (contains!7204 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102486 res!820708) b!1232221))

(assert (= (and b!1232221 res!820705) b!1232226))

(assert (= (and b!1232226 res!820702) b!1232219))

(assert (= (and b!1232219 res!820700) b!1232220))

(assert (= (and b!1232220 res!820703) b!1232225))

(assert (= (and b!1232225 res!820707) b!1232218))

(assert (= (and b!1232218 res!820709) b!1232223))

(assert (= (and b!1232223 res!820704) b!1232222))

(assert (= (and b!1232222 res!820706) b!1232217))

(assert (= (and b!1232217 res!820701) b!1232224))

(declare-fun m!1136299 () Bool)

(assert (=> b!1232224 m!1136299))

(declare-fun m!1136301 () Bool)

(assert (=> b!1232224 m!1136301))

(declare-fun m!1136303 () Bool)

(assert (=> b!1232217 m!1136303))

(declare-fun m!1136305 () Bool)

(assert (=> b!1232217 m!1136305))

(assert (=> b!1232217 m!1136299))

(declare-fun m!1136307 () Bool)

(assert (=> b!1232217 m!1136307))

(assert (=> b!1232222 m!1136299))

(assert (=> b!1232222 m!1136299))

(declare-fun m!1136309 () Bool)

(assert (=> b!1232222 m!1136309))

(declare-fun m!1136311 () Bool)

(assert (=> b!1232223 m!1136311))

(declare-fun m!1136313 () Bool)

(assert (=> b!1232218 m!1136313))

(declare-fun m!1136315 () Bool)

(assert (=> b!1232221 m!1136315))

(declare-fun m!1136317 () Bool)

(assert (=> b!1232220 m!1136317))

(declare-fun m!1136319 () Bool)

(assert (=> b!1232219 m!1136319))

(declare-fun m!1136321 () Bool)

(assert (=> b!1232225 m!1136321))

(declare-fun m!1136323 () Bool)

(assert (=> start!102486 m!1136323))

(check-sat (not b!1232221) (not start!102486) (not b!1232220) (not b!1232218) (not b!1232223) (not b!1232222) (not b!1232217) (not b!1232219) (not b!1232225) (not b!1232224))
(check-sat)
