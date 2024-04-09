; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102832 () Bool)

(assert start!102832)

(declare-fun res!823582 () Bool)

(declare-fun e!700432 () Bool)

(assert (=> start!102832 (=> (not res!823582) (not e!700432))))

(declare-datatypes ((array!79618 0))(
  ( (array!79619 (arr!38413 (Array (_ BitVec 32) (_ BitVec 64))) (size!38950 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79618)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102832 (= res!823582 (and (bvslt (size!38950 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38950 a!3835))))))

(assert (=> start!102832 e!700432))

(declare-fun array_inv!29189 (array!79618) Bool)

(assert (=> start!102832 (array_inv!29189 a!3835)))

(assert (=> start!102832 true))

(declare-fun b!1235319 () Bool)

(declare-fun res!823584 () Bool)

(assert (=> b!1235319 (=> (not res!823584) (not e!700432))))

(assert (=> b!1235319 (= res!823584 (not (= from!3213 (bvsub (size!38950 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235320 () Bool)

(declare-fun res!823588 () Bool)

(assert (=> b!1235320 (=> (not res!823588) (not e!700432))))

(declare-datatypes ((List!27364 0))(
  ( (Nil!27361) (Cons!27360 (h!28569 (_ BitVec 64)) (t!40834 List!27364)) )
))
(declare-fun acc!846 () List!27364)

(declare-fun arrayNoDuplicates!0 (array!79618 (_ BitVec 32) List!27364) Bool)

(assert (=> b!1235320 (= res!823588 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235321 () Bool)

(declare-datatypes ((Unit!40871 0))(
  ( (Unit!40872) )
))
(declare-fun e!700431 () Unit!40871)

(declare-fun Unit!40873 () Unit!40871)

(assert (=> b!1235321 (= e!700431 Unit!40873)))

(declare-fun b!1235322 () Bool)

(declare-fun res!823587 () Bool)

(assert (=> b!1235322 (=> (not res!823587) (not e!700432))))

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7279 (List!27364 (_ BitVec 64)) Bool)

(assert (=> b!1235322 (= res!823587 (contains!7279 acc!846 k0!2925))))

(declare-fun b!1235323 () Bool)

(declare-fun res!823589 () Bool)

(assert (=> b!1235323 (=> (not res!823589) (not e!700432))))

(assert (=> b!1235323 (= res!823589 (not (contains!7279 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235324 () Bool)

(declare-fun res!823583 () Bool)

(assert (=> b!1235324 (=> (not res!823583) (not e!700432))))

(assert (=> b!1235324 (= res!823583 (not (contains!7279 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235325 () Bool)

(declare-fun e!700429 () Bool)

(assert (=> b!1235325 (= e!700429 false)))

(declare-fun lt!560202 () Bool)

(assert (=> b!1235325 (= lt!560202 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235326 () Bool)

(assert (=> b!1235326 (= e!700432 e!700429)))

(declare-fun res!823586 () Bool)

(assert (=> b!1235326 (=> (not res!823586) (not e!700429))))

(assert (=> b!1235326 (= res!823586 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38950 a!3835))))))

(declare-fun lt!560199 () Unit!40871)

(assert (=> b!1235326 (= lt!560199 e!700431)))

(declare-fun c!120731 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235326 (= c!120731 (validKeyInArray!0 (select (arr!38413 a!3835) from!3213)))))

(declare-fun b!1235327 () Bool)

(declare-fun lt!560201 () Unit!40871)

(assert (=> b!1235327 (= e!700431 lt!560201)))

(declare-fun lt!560198 () List!27364)

(assert (=> b!1235327 (= lt!560198 (Cons!27360 (select (arr!38413 a!3835) from!3213) acc!846))))

(declare-fun lt!560203 () Unit!40871)

(declare-fun lemmaListSubSeqRefl!0 (List!27364) Unit!40871)

(assert (=> b!1235327 (= lt!560203 (lemmaListSubSeqRefl!0 lt!560198))))

(declare-fun subseq!534 (List!27364 List!27364) Bool)

(assert (=> b!1235327 (subseq!534 lt!560198 lt!560198)))

(declare-fun lt!560200 () Unit!40871)

(declare-fun subseqTail!27 (List!27364 List!27364) Unit!40871)

(assert (=> b!1235327 (= lt!560200 (subseqTail!27 lt!560198 lt!560198))))

(assert (=> b!1235327 (subseq!534 acc!846 lt!560198)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79618 List!27364 List!27364 (_ BitVec 32)) Unit!40871)

(assert (=> b!1235327 (= lt!560201 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560198 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235327 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235328 () Bool)

(declare-fun res!823585 () Bool)

(assert (=> b!1235328 (=> (not res!823585) (not e!700432))))

(declare-fun noDuplicate!1886 (List!27364) Bool)

(assert (=> b!1235328 (= res!823585 (noDuplicate!1886 acc!846))))

(assert (= (and start!102832 res!823582) b!1235328))

(assert (= (and b!1235328 res!823585) b!1235323))

(assert (= (and b!1235323 res!823589) b!1235324))

(assert (= (and b!1235324 res!823583) b!1235320))

(assert (= (and b!1235320 res!823588) b!1235322))

(assert (= (and b!1235322 res!823587) b!1235319))

(assert (= (and b!1235319 res!823584) b!1235326))

(assert (= (and b!1235326 c!120731) b!1235327))

(assert (= (and b!1235326 (not c!120731)) b!1235321))

(assert (= (and b!1235326 res!823586) b!1235325))

(declare-fun m!1139259 () Bool)

(assert (=> b!1235325 m!1139259))

(declare-fun m!1139261 () Bool)

(assert (=> start!102832 m!1139261))

(declare-fun m!1139263 () Bool)

(assert (=> b!1235324 m!1139263))

(declare-fun m!1139265 () Bool)

(assert (=> b!1235320 m!1139265))

(declare-fun m!1139267 () Bool)

(assert (=> b!1235323 m!1139267))

(declare-fun m!1139269 () Bool)

(assert (=> b!1235326 m!1139269))

(assert (=> b!1235326 m!1139269))

(declare-fun m!1139271 () Bool)

(assert (=> b!1235326 m!1139271))

(declare-fun m!1139273 () Bool)

(assert (=> b!1235328 m!1139273))

(declare-fun m!1139275 () Bool)

(assert (=> b!1235322 m!1139275))

(declare-fun m!1139277 () Bool)

(assert (=> b!1235327 m!1139277))

(declare-fun m!1139279 () Bool)

(assert (=> b!1235327 m!1139279))

(declare-fun m!1139281 () Bool)

(assert (=> b!1235327 m!1139281))

(declare-fun m!1139283 () Bool)

(assert (=> b!1235327 m!1139283))

(declare-fun m!1139285 () Bool)

(assert (=> b!1235327 m!1139285))

(assert (=> b!1235327 m!1139259))

(assert (=> b!1235327 m!1139269))

(check-sat (not b!1235324) (not b!1235327) (not start!102832) (not b!1235325) (not b!1235323) (not b!1235322) (not b!1235326) (not b!1235328) (not b!1235320))
(check-sat)
