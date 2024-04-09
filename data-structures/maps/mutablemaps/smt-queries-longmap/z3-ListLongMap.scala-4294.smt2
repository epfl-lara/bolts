; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59810 () Bool)

(assert start!59810)

(declare-fun b!660354 () Bool)

(declare-fun e!379458 () Bool)

(assert (=> b!660354 (= e!379458 false)))

(declare-datatypes ((array!38813 0))(
  ( (array!38814 (arr!18595 (Array (_ BitVec 32) (_ BitVec 64))) (size!18959 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38813)

(declare-fun lt!308727 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12689 0))(
  ( (Nil!12686) (Cons!12685 (h!13730 (_ BitVec 64)) (t!18925 List!12689)) )
))
(declare-fun acc!681 () List!12689)

(declare-fun arrayNoDuplicates!0 (array!38813 (_ BitVec 32) List!12689) Bool)

(assert (=> b!660354 (= lt!308727 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660355 () Bool)

(declare-fun e!379461 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3232 (List!12689 (_ BitVec 64)) Bool)

(assert (=> b!660355 (= e!379461 (not (contains!3232 acc!681 k0!2843)))))

(declare-fun b!660356 () Bool)

(declare-fun e!379460 () Bool)

(assert (=> b!660356 (= e!379460 e!379461)))

(declare-fun res!428598 () Bool)

(assert (=> b!660356 (=> (not res!428598) (not e!379461))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660356 (= res!428598 (bvsle from!3004 i!1382))))

(declare-fun b!660357 () Bool)

(declare-fun res!428595 () Bool)

(assert (=> b!660357 (=> (not res!428595) (not e!379458))))

(assert (=> b!660357 (= res!428595 (not (contains!3232 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!428599 () Bool)

(assert (=> start!59810 (=> (not res!428599) (not e!379458))))

(assert (=> start!59810 (= res!428599 (and (bvslt (size!18959 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18959 a!3626))))))

(assert (=> start!59810 e!379458))

(assert (=> start!59810 true))

(declare-fun array_inv!14369 (array!38813) Bool)

(assert (=> start!59810 (array_inv!14369 a!3626)))

(declare-fun b!660358 () Bool)

(declare-fun res!428594 () Bool)

(assert (=> b!660358 (=> (not res!428594) (not e!379458))))

(assert (=> b!660358 (= res!428594 (not (contains!3232 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660359 () Bool)

(declare-fun res!428596 () Bool)

(assert (=> b!660359 (=> (not res!428596) (not e!379458))))

(declare-fun noDuplicate!479 (List!12689) Bool)

(assert (=> b!660359 (= res!428596 (noDuplicate!479 acc!681))))

(declare-fun b!660360 () Bool)

(declare-fun e!379459 () Bool)

(assert (=> b!660360 (= e!379459 (contains!3232 acc!681 k0!2843))))

(declare-fun b!660361 () Bool)

(declare-fun res!428597 () Bool)

(assert (=> b!660361 (=> (not res!428597) (not e!379458))))

(assert (=> b!660361 (= res!428597 e!379460)))

(declare-fun res!428600 () Bool)

(assert (=> b!660361 (=> res!428600 e!379460)))

(assert (=> b!660361 (= res!428600 e!379459)))

(declare-fun res!428592 () Bool)

(assert (=> b!660361 (=> (not res!428592) (not e!379459))))

(assert (=> b!660361 (= res!428592 (bvsgt from!3004 i!1382))))

(declare-fun b!660362 () Bool)

(declare-fun res!428593 () Bool)

(assert (=> b!660362 (=> (not res!428593) (not e!379458))))

(assert (=> b!660362 (= res!428593 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12686))))

(assert (= (and start!59810 res!428599) b!660359))

(assert (= (and b!660359 res!428596) b!660357))

(assert (= (and b!660357 res!428595) b!660358))

(assert (= (and b!660358 res!428594) b!660361))

(assert (= (and b!660361 res!428592) b!660360))

(assert (= (and b!660361 (not res!428600)) b!660356))

(assert (= (and b!660356 res!428598) b!660355))

(assert (= (and b!660361 res!428597) b!660362))

(assert (= (and b!660362 res!428593) b!660354))

(declare-fun m!633035 () Bool)

(assert (=> b!660357 m!633035))

(declare-fun m!633037 () Bool)

(assert (=> b!660355 m!633037))

(declare-fun m!633039 () Bool)

(assert (=> b!660362 m!633039))

(declare-fun m!633041 () Bool)

(assert (=> b!660354 m!633041))

(declare-fun m!633043 () Bool)

(assert (=> start!59810 m!633043))

(declare-fun m!633045 () Bool)

(assert (=> b!660359 m!633045))

(declare-fun m!633047 () Bool)

(assert (=> b!660358 m!633047))

(assert (=> b!660360 m!633037))

(check-sat (not b!660362) (not b!660360) (not b!660358) (not b!660354) (not start!59810) (not b!660357) (not b!660359) (not b!660355))
(check-sat)
