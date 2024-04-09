; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62624 () Bool)

(assert start!62624)

(declare-fun b!706293 () Bool)

(declare-fun res!470285 () Bool)

(declare-fun e!397851 () Bool)

(assert (=> b!706293 (=> (not res!470285) (not e!397851))))

(declare-datatypes ((array!40259 0))(
  ( (array!40260 (arr!19282 (Array (_ BitVec 32) (_ BitVec 64))) (size!19665 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40259)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13376 0))(
  ( (Nil!13373) (Cons!13372 (h!14417 (_ BitVec 64)) (t!19666 List!13376)) )
))
(declare-fun acc!652 () List!13376)

(declare-fun arrayNoDuplicates!0 (array!40259 (_ BitVec 32) List!13376) Bool)

(assert (=> b!706293 (= res!470285 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706294 () Bool)

(declare-fun res!470282 () Bool)

(assert (=> b!706294 (=> (not res!470282) (not e!397851))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706294 (= res!470282 (validKeyInArray!0 k0!2824))))

(declare-fun b!706295 () Bool)

(declare-fun res!470284 () Bool)

(assert (=> b!706295 (=> (not res!470284) (not e!397851))))

(declare-fun newAcc!49 () List!13376)

(declare-fun contains!3919 (List!13376 (_ BitVec 64)) Bool)

(assert (=> b!706295 (= res!470284 (contains!3919 newAcc!49 k0!2824))))

(declare-fun b!706296 () Bool)

(declare-fun res!470288 () Bool)

(assert (=> b!706296 (=> (not res!470288) (not e!397851))))

(declare-fun arrayContainsKey!0 (array!40259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706296 (= res!470288 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!706297 () Bool)

(declare-fun res!470277 () Bool)

(assert (=> b!706297 (=> (not res!470277) (not e!397851))))

(declare-fun noDuplicate!1166 (List!13376) Bool)

(assert (=> b!706297 (= res!470277 (noDuplicate!1166 newAcc!49))))

(declare-fun b!706298 () Bool)

(declare-fun res!470286 () Bool)

(assert (=> b!706298 (=> (not res!470286) (not e!397851))))

(assert (=> b!706298 (= res!470286 (not (contains!3919 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706299 () Bool)

(assert (=> b!706299 (= e!397851 false)))

(declare-fun lt!317898 () Bool)

(assert (=> b!706299 (= lt!317898 (contains!3919 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706300 () Bool)

(declare-fun res!470276 () Bool)

(assert (=> b!706300 (=> (not res!470276) (not e!397851))))

(declare-fun -!328 (List!13376 (_ BitVec 64)) List!13376)

(assert (=> b!706300 (= res!470276 (= (-!328 newAcc!49 k0!2824) acc!652))))

(declare-fun b!706301 () Bool)

(declare-fun res!470283 () Bool)

(assert (=> b!706301 (=> (not res!470283) (not e!397851))))

(assert (=> b!706301 (= res!470283 (not (contains!3919 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706302 () Bool)

(declare-fun res!470279 () Bool)

(assert (=> b!706302 (=> (not res!470279) (not e!397851))))

(assert (=> b!706302 (= res!470279 (not (contains!3919 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706292 () Bool)

(declare-fun res!470280 () Bool)

(assert (=> b!706292 (=> (not res!470280) (not e!397851))))

(declare-fun subseq!363 (List!13376 List!13376) Bool)

(assert (=> b!706292 (= res!470280 (subseq!363 acc!652 newAcc!49))))

(declare-fun res!470278 () Bool)

(assert (=> start!62624 (=> (not res!470278) (not e!397851))))

(assert (=> start!62624 (= res!470278 (and (bvslt (size!19665 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19665 a!3591))))))

(assert (=> start!62624 e!397851))

(assert (=> start!62624 true))

(declare-fun array_inv!15056 (array!40259) Bool)

(assert (=> start!62624 (array_inv!15056 a!3591)))

(declare-fun b!706303 () Bool)

(declare-fun res!470281 () Bool)

(assert (=> b!706303 (=> (not res!470281) (not e!397851))))

(assert (=> b!706303 (= res!470281 (noDuplicate!1166 acc!652))))

(declare-fun b!706304 () Bool)

(declare-fun res!470287 () Bool)

(assert (=> b!706304 (=> (not res!470287) (not e!397851))))

(assert (=> b!706304 (= res!470287 (not (contains!3919 acc!652 k0!2824)))))

(assert (= (and start!62624 res!470278) b!706303))

(assert (= (and b!706303 res!470281) b!706297))

(assert (= (and b!706297 res!470277) b!706302))

(assert (= (and b!706302 res!470279) b!706298))

(assert (= (and b!706298 res!470286) b!706296))

(assert (= (and b!706296 res!470288) b!706304))

(assert (= (and b!706304 res!470287) b!706294))

(assert (= (and b!706294 res!470282) b!706293))

(assert (= (and b!706293 res!470285) b!706292))

(assert (= (and b!706292 res!470280) b!706295))

(assert (= (and b!706295 res!470284) b!706300))

(assert (= (and b!706300 res!470276) b!706301))

(assert (= (and b!706301 res!470283) b!706299))

(declare-fun m!664231 () Bool)

(assert (=> b!706293 m!664231))

(declare-fun m!664233 () Bool)

(assert (=> b!706299 m!664233))

(declare-fun m!664235 () Bool)

(assert (=> start!62624 m!664235))

(declare-fun m!664237 () Bool)

(assert (=> b!706294 m!664237))

(declare-fun m!664239 () Bool)

(assert (=> b!706297 m!664239))

(declare-fun m!664241 () Bool)

(assert (=> b!706300 m!664241))

(declare-fun m!664243 () Bool)

(assert (=> b!706303 m!664243))

(declare-fun m!664245 () Bool)

(assert (=> b!706298 m!664245))

(declare-fun m!664247 () Bool)

(assert (=> b!706304 m!664247))

(declare-fun m!664249 () Bool)

(assert (=> b!706295 m!664249))

(declare-fun m!664251 () Bool)

(assert (=> b!706292 m!664251))

(declare-fun m!664253 () Bool)

(assert (=> b!706301 m!664253))

(declare-fun m!664255 () Bool)

(assert (=> b!706296 m!664255))

(declare-fun m!664257 () Bool)

(assert (=> b!706302 m!664257))

(check-sat (not b!706295) (not b!706297) (not b!706296) (not b!706299) (not b!706298) (not b!706293) (not start!62624) (not b!706294) (not b!706301) (not b!706302) (not b!706304) (not b!706292) (not b!706303) (not b!706300))
(check-sat)
