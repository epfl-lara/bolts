; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102202 () Bool)

(assert start!102202)

(declare-fun b!1229735 () Bool)

(declare-fun res!818329 () Bool)

(declare-fun e!697939 () Bool)

(assert (=> b!1229735 (=> (not res!818329) (not e!697939))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229735 (= res!818329 (validKeyInArray!0 k!2913))))

(declare-fun b!1229736 () Bool)

(declare-fun res!818336 () Bool)

(assert (=> b!1229736 (=> (not res!818336) (not e!697939))))

(declare-datatypes ((array!79316 0))(
  ( (array!79317 (arr!38274 (Array (_ BitVec 32) (_ BitVec 64))) (size!38811 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79316)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1229736 (= res!818336 (validKeyInArray!0 (select (arr!38274 a!3806) from!3184)))))

(declare-fun b!1229737 () Bool)

(declare-fun e!697942 () Bool)

(assert (=> b!1229737 (= e!697939 (not e!697942))))

(declare-fun res!818333 () Bool)

(assert (=> b!1229737 (=> res!818333 e!697942)))

(assert (=> b!1229737 (= res!818333 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27225 0))(
  ( (Nil!27222) (Cons!27221 (h!28430 (_ BitVec 64)) (t!40695 List!27225)) )
))
(declare-fun lt!559199 () List!27225)

(assert (=> b!1229737 (= lt!559199 (Cons!27221 (select (arr!38274 a!3806) from!3184) Nil!27222))))

(declare-fun e!697941 () Bool)

(assert (=> b!1229737 e!697941))

(declare-fun res!818330 () Bool)

(assert (=> b!1229737 (=> (not res!818330) (not e!697941))))

(declare-fun arrayNoDuplicates!0 (array!79316 (_ BitVec 32) List!27225) Bool)

(assert (=> b!1229737 (= res!818330 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27222))))

(declare-datatypes ((Unit!40688 0))(
  ( (Unit!40689) )
))
(declare-fun lt!559198 () Unit!40688)

(declare-fun acc!823 () List!27225)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79316 List!27225 List!27225 (_ BitVec 32)) Unit!40688)

(assert (=> b!1229737 (= lt!559198 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27222 from!3184))))

(assert (=> b!1229737 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27221 (select (arr!38274 a!3806) from!3184) acc!823))))

(declare-fun res!818327 () Bool)

(assert (=> start!102202 (=> (not res!818327) (not e!697939))))

(assert (=> start!102202 (= res!818327 (bvslt (size!38811 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102202 e!697939))

(declare-fun array_inv!29050 (array!79316) Bool)

(assert (=> start!102202 (array_inv!29050 a!3806)))

(assert (=> start!102202 true))

(declare-fun b!1229738 () Bool)

(declare-fun res!818331 () Bool)

(assert (=> b!1229738 (=> (not res!818331) (not e!697939))))

(declare-fun contains!7140 (List!27225 (_ BitVec 64)) Bool)

(assert (=> b!1229738 (= res!818331 (not (contains!7140 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229739 () Bool)

(assert (=> b!1229739 (= e!697942 true)))

(declare-fun lt!559197 () Bool)

(assert (=> b!1229739 (= lt!559197 (contains!7140 lt!559199 (select (arr!38274 a!3806) from!3184)))))

(declare-fun b!1229740 () Bool)

(declare-fun res!818339 () Bool)

(assert (=> b!1229740 (=> (not res!818339) (not e!697939))))

(assert (=> b!1229740 (= res!818339 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229741 () Bool)

(declare-fun res!818337 () Bool)

(assert (=> b!1229741 (=> (not res!818337) (not e!697939))))

(assert (=> b!1229741 (= res!818337 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38811 a!3806)) (bvslt from!3184 (size!38811 a!3806))))))

(declare-fun b!1229742 () Bool)

(declare-fun res!818338 () Bool)

(assert (=> b!1229742 (=> (not res!818338) (not e!697939))))

(declare-fun noDuplicate!1747 (List!27225) Bool)

(assert (=> b!1229742 (= res!818338 (noDuplicate!1747 acc!823))))

(declare-fun b!1229743 () Bool)

(declare-fun res!818334 () Bool)

(assert (=> b!1229743 (=> res!818334 e!697942)))

(assert (=> b!1229743 (= res!818334 (contains!7140 lt!559199 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229744 () Bool)

(declare-fun res!818335 () Bool)

(assert (=> b!1229744 (=> (not res!818335) (not e!697939))))

(declare-fun arrayContainsKey!0 (array!79316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229744 (= res!818335 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229745 () Bool)

(declare-fun res!818328 () Bool)

(assert (=> b!1229745 (=> (not res!818328) (not e!697939))))

(assert (=> b!1229745 (= res!818328 (not (contains!7140 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229746 () Bool)

(assert (=> b!1229746 (= e!697941 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27221 (select (arr!38274 a!3806) from!3184) Nil!27222)))))

(declare-fun b!1229747 () Bool)

(declare-fun res!818332 () Bool)

(assert (=> b!1229747 (=> res!818332 e!697942)))

(assert (=> b!1229747 (= res!818332 (not (noDuplicate!1747 lt!559199)))))

(declare-fun b!1229748 () Bool)

(declare-fun res!818326 () Bool)

(assert (=> b!1229748 (=> res!818326 e!697942)))

(assert (=> b!1229748 (= res!818326 (contains!7140 lt!559199 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102202 res!818327) b!1229735))

(assert (= (and b!1229735 res!818329) b!1229741))

(assert (= (and b!1229741 res!818337) b!1229742))

(assert (= (and b!1229742 res!818338) b!1229738))

(assert (= (and b!1229738 res!818331) b!1229745))

(assert (= (and b!1229745 res!818328) b!1229744))

(assert (= (and b!1229744 res!818335) b!1229740))

(assert (= (and b!1229740 res!818339) b!1229736))

(assert (= (and b!1229736 res!818336) b!1229737))

(assert (= (and b!1229737 res!818330) b!1229746))

(assert (= (and b!1229737 (not res!818333)) b!1229747))

(assert (= (and b!1229747 (not res!818332)) b!1229743))

(assert (= (and b!1229743 (not res!818334)) b!1229748))

(assert (= (and b!1229748 (not res!818326)) b!1229739))

(declare-fun m!1134299 () Bool)

(assert (=> b!1229739 m!1134299))

(assert (=> b!1229739 m!1134299))

(declare-fun m!1134301 () Bool)

(assert (=> b!1229739 m!1134301))

(assert (=> b!1229737 m!1134299))

(declare-fun m!1134303 () Bool)

(assert (=> b!1229737 m!1134303))

(declare-fun m!1134305 () Bool)

(assert (=> b!1229737 m!1134305))

(declare-fun m!1134307 () Bool)

(assert (=> b!1229737 m!1134307))

(declare-fun m!1134309 () Bool)

(assert (=> start!102202 m!1134309))

(assert (=> b!1229736 m!1134299))

(assert (=> b!1229736 m!1134299))

(declare-fun m!1134311 () Bool)

(assert (=> b!1229736 m!1134311))

(declare-fun m!1134313 () Bool)

(assert (=> b!1229744 m!1134313))

(declare-fun m!1134315 () Bool)

(assert (=> b!1229742 m!1134315))

(declare-fun m!1134317 () Bool)

(assert (=> b!1229745 m!1134317))

(assert (=> b!1229746 m!1134299))

(declare-fun m!1134319 () Bool)

(assert (=> b!1229746 m!1134319))

(declare-fun m!1134321 () Bool)

(assert (=> b!1229738 m!1134321))

(declare-fun m!1134323 () Bool)

(assert (=> b!1229740 m!1134323))

(declare-fun m!1134325 () Bool)

(assert (=> b!1229747 m!1134325))

(declare-fun m!1134327 () Bool)

(assert (=> b!1229735 m!1134327))

(declare-fun m!1134329 () Bool)

(assert (=> b!1229743 m!1134329))

(declare-fun m!1134331 () Bool)

(assert (=> b!1229748 m!1134331))

(push 1)

(assert (not b!1229739))

(assert (not b!1229747))

(assert (not b!1229744))

(assert (not b!1229737))

(assert (not b!1229742))

(assert (not b!1229736))

(assert (not b!1229740))

(assert (not b!1229746))

(assert (not b!1229743))

(assert (not b!1229745))

(assert (not b!1229738))

(assert (not start!102202))

(assert (not b!1229735))

(assert (not b!1229748))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

