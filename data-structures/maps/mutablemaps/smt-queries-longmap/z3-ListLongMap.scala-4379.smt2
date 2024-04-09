; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60320 () Bool)

(assert start!60320)

(declare-fun b!676735 () Bool)

(declare-fun res!443345 () Bool)

(declare-fun e!385875 () Bool)

(assert (=> b!676735 (=> (not res!443345) (not e!385875))))

(declare-fun e!385877 () Bool)

(assert (=> b!676735 (= res!443345 e!385877)))

(declare-fun res!443339 () Bool)

(assert (=> b!676735 (=> res!443339 e!385877)))

(declare-fun e!385874 () Bool)

(assert (=> b!676735 (= res!443339 e!385874)))

(declare-fun res!443348 () Bool)

(assert (=> b!676735 (=> (not res!443348) (not e!385874))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676735 (= res!443348 (bvsgt from!3004 i!1382))))

(declare-fun res!443344 () Bool)

(assert (=> start!60320 (=> (not res!443344) (not e!385875))))

(declare-datatypes ((array!39323 0))(
  ( (array!39324 (arr!18850 (Array (_ BitVec 32) (_ BitVec 64))) (size!19214 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39323)

(assert (=> start!60320 (= res!443344 (and (bvslt (size!19214 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19214 a!3626))))))

(assert (=> start!60320 e!385875))

(assert (=> start!60320 true))

(declare-fun array_inv!14624 (array!39323) Bool)

(assert (=> start!60320 (array_inv!14624 a!3626)))

(declare-fun b!676736 () Bool)

(declare-fun res!443340 () Bool)

(assert (=> b!676736 (=> (not res!443340) (not e!385875))))

(declare-fun e!385873 () Bool)

(assert (=> b!676736 (= res!443340 e!385873)))

(declare-fun res!443346 () Bool)

(assert (=> b!676736 (=> res!443346 e!385873)))

(declare-fun e!385872 () Bool)

(assert (=> b!676736 (= res!443346 e!385872)))

(declare-fun res!443352 () Bool)

(assert (=> b!676736 (=> (not res!443352) (not e!385872))))

(assert (=> b!676736 (= res!443352 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676737 () Bool)

(declare-fun res!443347 () Bool)

(assert (=> b!676737 (=> (not res!443347) (not e!385875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676737 (= res!443347 (not (validKeyInArray!0 (select (arr!18850 a!3626) from!3004))))))

(declare-fun b!676738 () Bool)

(declare-fun res!443341 () Bool)

(assert (=> b!676738 (=> (not res!443341) (not e!385875))))

(assert (=> b!676738 (= res!443341 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19214 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676739 () Bool)

(declare-fun res!443335 () Bool)

(assert (=> b!676739 (=> (not res!443335) (not e!385875))))

(declare-datatypes ((List!12944 0))(
  ( (Nil!12941) (Cons!12940 (h!13985 (_ BitVec 64)) (t!19180 List!12944)) )
))
(declare-fun acc!681 () List!12944)

(declare-fun contains!3487 (List!12944 (_ BitVec 64)) Bool)

(assert (=> b!676739 (= res!443335 (not (contains!3487 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676740 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!676740 (= e!385874 (contains!3487 acc!681 k0!2843))))

(declare-fun b!676741 () Bool)

(declare-fun e!385878 () Bool)

(assert (=> b!676741 (= e!385873 e!385878)))

(declare-fun res!443342 () Bool)

(assert (=> b!676741 (=> (not res!443342) (not e!385878))))

(assert (=> b!676741 (= res!443342 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676742 () Bool)

(declare-fun res!443349 () Bool)

(assert (=> b!676742 (=> (not res!443349) (not e!385875))))

(assert (=> b!676742 (= res!443349 (validKeyInArray!0 k0!2843))))

(declare-fun b!676743 () Bool)

(declare-fun res!443343 () Bool)

(assert (=> b!676743 (=> (not res!443343) (not e!385875))))

(declare-fun arrayNoDuplicates!0 (array!39323 (_ BitVec 32) List!12944) Bool)

(assert (=> b!676743 (= res!443343 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12941))))

(declare-fun b!676744 () Bool)

(declare-fun res!443337 () Bool)

(assert (=> b!676744 (=> (not res!443337) (not e!385875))))

(declare-fun arrayContainsKey!0 (array!39323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676744 (= res!443337 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676745 () Bool)

(declare-fun res!443353 () Bool)

(assert (=> b!676745 (=> (not res!443353) (not e!385875))))

(assert (=> b!676745 (= res!443353 (not (contains!3487 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676746 () Bool)

(declare-fun e!385879 () Bool)

(assert (=> b!676746 (= e!385877 e!385879)))

(declare-fun res!443351 () Bool)

(assert (=> b!676746 (=> (not res!443351) (not e!385879))))

(assert (=> b!676746 (= res!443351 (bvsle from!3004 i!1382))))

(declare-fun b!676747 () Bool)

(declare-fun res!443336 () Bool)

(assert (=> b!676747 (=> (not res!443336) (not e!385875))))

(assert (=> b!676747 (= res!443336 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19214 a!3626))))))

(declare-fun b!676748 () Bool)

(declare-fun res!443338 () Bool)

(assert (=> b!676748 (=> (not res!443338) (not e!385875))))

(assert (=> b!676748 (= res!443338 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676749 () Bool)

(assert (=> b!676749 (= e!385879 (not (contains!3487 acc!681 k0!2843)))))

(declare-fun b!676750 () Bool)

(assert (=> b!676750 (= e!385878 (not (contains!3487 acc!681 k0!2843)))))

(declare-fun b!676751 () Bool)

(assert (=> b!676751 (= e!385872 (contains!3487 acc!681 k0!2843))))

(declare-fun b!676752 () Bool)

(declare-fun res!443354 () Bool)

(assert (=> b!676752 (=> (not res!443354) (not e!385875))))

(declare-fun noDuplicate!734 (List!12944) Bool)

(assert (=> b!676752 (= res!443354 (noDuplicate!734 acc!681))))

(declare-fun b!676753 () Bool)

(assert (=> b!676753 (= e!385875 false)))

(declare-fun lt!312741 () Bool)

(assert (=> b!676753 (= lt!312741 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676754 () Bool)

(declare-fun res!443350 () Bool)

(assert (=> b!676754 (=> (not res!443350) (not e!385875))))

(assert (=> b!676754 (= res!443350 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (= (and start!60320 res!443344) b!676752))

(assert (= (and b!676752 res!443354) b!676739))

(assert (= (and b!676739 res!443335) b!676745))

(assert (= (and b!676745 res!443353) b!676735))

(assert (= (and b!676735 res!443348) b!676740))

(assert (= (and b!676735 (not res!443339)) b!676746))

(assert (= (and b!676746 res!443351) b!676749))

(assert (= (and b!676735 res!443345) b!676743))

(assert (= (and b!676743 res!443343) b!676748))

(assert (= (and b!676748 res!443338) b!676747))

(assert (= (and b!676747 res!443336) b!676742))

(assert (= (and b!676742 res!443349) b!676744))

(assert (= (and b!676744 res!443337) b!676738))

(assert (= (and b!676738 res!443341) b!676737))

(assert (= (and b!676737 res!443347) b!676754))

(assert (= (and b!676754 res!443350) b!676736))

(assert (= (and b!676736 res!443352) b!676751))

(assert (= (and b!676736 (not res!443346)) b!676741))

(assert (= (and b!676741 res!443342) b!676750))

(assert (= (and b!676736 res!443340) b!676753))

(declare-fun m!643353 () Bool)

(assert (=> b!676748 m!643353))

(declare-fun m!643355 () Bool)

(assert (=> b!676742 m!643355))

(declare-fun m!643357 () Bool)

(assert (=> b!676745 m!643357))

(declare-fun m!643359 () Bool)

(assert (=> b!676751 m!643359))

(declare-fun m!643361 () Bool)

(assert (=> b!676753 m!643361))

(assert (=> b!676740 m!643359))

(assert (=> b!676749 m!643359))

(declare-fun m!643363 () Bool)

(assert (=> b!676744 m!643363))

(assert (=> b!676750 m!643359))

(declare-fun m!643365 () Bool)

(assert (=> b!676737 m!643365))

(assert (=> b!676737 m!643365))

(declare-fun m!643367 () Bool)

(assert (=> b!676737 m!643367))

(declare-fun m!643369 () Bool)

(assert (=> b!676743 m!643369))

(declare-fun m!643371 () Bool)

(assert (=> start!60320 m!643371))

(declare-fun m!643373 () Bool)

(assert (=> b!676752 m!643373))

(declare-fun m!643375 () Bool)

(assert (=> b!676739 m!643375))

(check-sat (not b!676745) (not b!676750) (not b!676748) (not start!60320) (not b!676739) (not b!676737) (not b!676744) (not b!676749) (not b!676752) (not b!676753) (not b!676751) (not b!676743) (not b!676742) (not b!676740))
