; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60356 () Bool)

(assert start!60356)

(declare-fun b!677733 () Bool)

(declare-fun e!386265 () Bool)

(declare-fun e!386266 () Bool)

(assert (=> b!677733 (= e!386265 e!386266)))

(declare-fun res!444335 () Bool)

(assert (=> b!677733 (=> (not res!444335) (not e!386266))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677733 (= res!444335 (bvsle from!3004 i!1382))))

(declare-fun b!677734 () Bool)

(declare-fun e!386262 () Bool)

(assert (=> b!677734 (= e!386262 false)))

(declare-fun lt!312786 () Bool)

(declare-datatypes ((array!39359 0))(
  ( (array!39360 (arr!18868 (Array (_ BitVec 32) (_ BitVec 64))) (size!19232 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39359)

(declare-datatypes ((List!12962 0))(
  ( (Nil!12959) (Cons!12958 (h!14003 (_ BitVec 64)) (t!19198 List!12962)) )
))
(declare-fun acc!681 () List!12962)

(declare-fun arrayNoDuplicates!0 (array!39359 (_ BitVec 32) List!12962) Bool)

(assert (=> b!677734 (= lt!312786 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677735 () Bool)

(declare-fun res!444338 () Bool)

(assert (=> b!677735 (=> (not res!444338) (not e!386262))))

(assert (=> b!677735 (= res!444338 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12959))))

(declare-fun res!444336 () Bool)

(assert (=> start!60356 (=> (not res!444336) (not e!386262))))

(assert (=> start!60356 (= res!444336 (and (bvslt (size!19232 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19232 a!3626))))))

(assert (=> start!60356 e!386262))

(assert (=> start!60356 true))

(declare-fun array_inv!14642 (array!39359) Bool)

(assert (=> start!60356 (array_inv!14642 a!3626)))

(declare-fun b!677736 () Bool)

(declare-fun res!444333 () Bool)

(assert (=> b!677736 (=> (not res!444333) (not e!386262))))

(declare-fun contains!3505 (List!12962 (_ BitVec 64)) Bool)

(assert (=> b!677736 (= res!444333 (not (contains!3505 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677737 () Bool)

(declare-fun res!444339 () Bool)

(assert (=> b!677737 (=> (not res!444339) (not e!386262))))

(assert (=> b!677737 (= res!444339 (not (contains!3505 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677738 () Bool)

(declare-fun e!386264 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!677738 (= e!386264 (contains!3505 acc!681 k0!2843))))

(declare-fun b!677739 () Bool)

(declare-fun res!444340 () Bool)

(assert (=> b!677739 (=> (not res!444340) (not e!386262))))

(declare-fun noDuplicate!752 (List!12962) Bool)

(assert (=> b!677739 (= res!444340 (noDuplicate!752 acc!681))))

(declare-fun b!677740 () Bool)

(declare-fun res!444341 () Bool)

(assert (=> b!677740 (=> (not res!444341) (not e!386262))))

(assert (=> b!677740 (= res!444341 e!386265)))

(declare-fun res!444337 () Bool)

(assert (=> b!677740 (=> res!444337 e!386265)))

(assert (=> b!677740 (= res!444337 e!386264)))

(declare-fun res!444334 () Bool)

(assert (=> b!677740 (=> (not res!444334) (not e!386264))))

(assert (=> b!677740 (= res!444334 (bvsgt from!3004 i!1382))))

(declare-fun b!677741 () Bool)

(assert (=> b!677741 (= e!386266 (not (contains!3505 acc!681 k0!2843)))))

(assert (= (and start!60356 res!444336) b!677739))

(assert (= (and b!677739 res!444340) b!677736))

(assert (= (and b!677736 res!444333) b!677737))

(assert (= (and b!677737 res!444339) b!677740))

(assert (= (and b!677740 res!444334) b!677738))

(assert (= (and b!677740 (not res!444337)) b!677733))

(assert (= (and b!677733 res!444335) b!677741))

(assert (= (and b!677740 res!444341) b!677735))

(assert (= (and b!677735 res!444338) b!677734))

(declare-fun m!643829 () Bool)

(assert (=> b!677735 m!643829))

(declare-fun m!643831 () Bool)

(assert (=> b!677739 m!643831))

(declare-fun m!643833 () Bool)

(assert (=> b!677738 m!643833))

(declare-fun m!643835 () Bool)

(assert (=> b!677734 m!643835))

(declare-fun m!643837 () Bool)

(assert (=> b!677737 m!643837))

(assert (=> b!677741 m!643833))

(declare-fun m!643839 () Bool)

(assert (=> b!677736 m!643839))

(declare-fun m!643841 () Bool)

(assert (=> start!60356 m!643841))

(check-sat (not b!677738) (not b!677739) (not b!677741) (not start!60356) (not b!677736) (not b!677734) (not b!677737) (not b!677735))
(check-sat)
