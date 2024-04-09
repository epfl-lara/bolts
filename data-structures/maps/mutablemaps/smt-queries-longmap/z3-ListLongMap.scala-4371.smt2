; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60272 () Bool)

(assert start!60272)

(declare-fun b!675295 () Bool)

(declare-fun res!441911 () Bool)

(declare-fun e!385299 () Bool)

(assert (=> b!675295 (=> (not res!441911) (not e!385299))))

(declare-datatypes ((List!12920 0))(
  ( (Nil!12917) (Cons!12916 (h!13961 (_ BitVec 64)) (t!19156 List!12920)) )
))
(declare-fun acc!681 () List!12920)

(declare-fun contains!3463 (List!12920 (_ BitVec 64)) Bool)

(assert (=> b!675295 (= res!441911 (not (contains!3463 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675296 () Bool)

(declare-fun res!441896 () Bool)

(assert (=> b!675296 (=> (not res!441896) (not e!385299))))

(assert (=> b!675296 (= res!441896 (not (contains!3463 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675297 () Bool)

(declare-fun res!441900 () Bool)

(assert (=> b!675297 (=> (not res!441900) (not e!385299))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!675297 (= res!441900 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675298 () Bool)

(declare-fun e!385303 () Bool)

(declare-fun e!385300 () Bool)

(assert (=> b!675298 (= e!385303 e!385300)))

(declare-fun res!441899 () Bool)

(assert (=> b!675298 (=> (not res!441899) (not e!385300))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675298 (= res!441899 (bvsle from!3004 i!1382))))

(declare-fun res!441898 () Bool)

(assert (=> start!60272 (=> (not res!441898) (not e!385299))))

(declare-datatypes ((array!39275 0))(
  ( (array!39276 (arr!18826 (Array (_ BitVec 32) (_ BitVec 64))) (size!19190 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39275)

(assert (=> start!60272 (= res!441898 (and (bvslt (size!19190 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19190 a!3626))))))

(assert (=> start!60272 e!385299))

(assert (=> start!60272 true))

(declare-fun array_inv!14600 (array!39275) Bool)

(assert (=> start!60272 (array_inv!14600 a!3626)))

(declare-fun b!675299 () Bool)

(declare-fun res!441914 () Bool)

(assert (=> b!675299 (=> (not res!441914) (not e!385299))))

(declare-fun arrayNoDuplicates!0 (array!39275 (_ BitVec 32) List!12920) Bool)

(assert (=> b!675299 (= res!441914 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675300 () Bool)

(declare-fun e!385301 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!675300 (= e!385301 (contains!3463 acc!681 k0!2843))))

(declare-fun b!675301 () Bool)

(declare-fun res!441912 () Bool)

(assert (=> b!675301 (=> (not res!441912) (not e!385299))))

(assert (=> b!675301 (= res!441912 e!385303)))

(declare-fun res!441901 () Bool)

(assert (=> b!675301 (=> res!441901 e!385303)))

(assert (=> b!675301 (= res!441901 e!385301)))

(declare-fun res!441913 () Bool)

(assert (=> b!675301 (=> (not res!441913) (not e!385301))))

(assert (=> b!675301 (= res!441913 (bvsgt from!3004 i!1382))))

(declare-fun b!675302 () Bool)

(declare-fun res!441910 () Bool)

(assert (=> b!675302 (=> (not res!441910) (not e!385299))))

(declare-fun e!385296 () Bool)

(assert (=> b!675302 (= res!441910 e!385296)))

(declare-fun res!441909 () Bool)

(assert (=> b!675302 (=> res!441909 e!385296)))

(declare-fun e!385302 () Bool)

(assert (=> b!675302 (= res!441909 e!385302)))

(declare-fun res!441895 () Bool)

(assert (=> b!675302 (=> (not res!441895) (not e!385302))))

(assert (=> b!675302 (= res!441895 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675303 () Bool)

(assert (=> b!675303 (= e!385300 (not (contains!3463 acc!681 k0!2843)))))

(declare-fun b!675304 () Bool)

(declare-fun e!385297 () Bool)

(assert (=> b!675304 (= e!385297 (not (contains!3463 acc!681 k0!2843)))))

(declare-fun b!675305 () Bool)

(declare-fun res!441904 () Bool)

(assert (=> b!675305 (=> (not res!441904) (not e!385299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675305 (= res!441904 (not (validKeyInArray!0 (select (arr!18826 a!3626) from!3004))))))

(declare-fun b!675306 () Bool)

(declare-fun res!441897 () Bool)

(assert (=> b!675306 (=> (not res!441897) (not e!385299))))

(declare-fun noDuplicate!710 (List!12920) Bool)

(assert (=> b!675306 (= res!441897 (noDuplicate!710 acc!681))))

(declare-fun b!675307 () Bool)

(declare-fun res!441906 () Bool)

(assert (=> b!675307 (=> (not res!441906) (not e!385299))))

(assert (=> b!675307 (= res!441906 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12917))))

(declare-fun b!675308 () Bool)

(declare-fun res!441907 () Bool)

(assert (=> b!675308 (=> (not res!441907) (not e!385299))))

(assert (=> b!675308 (= res!441907 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19190 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675309 () Bool)

(declare-fun res!441908 () Bool)

(assert (=> b!675309 (=> (not res!441908) (not e!385299))))

(assert (=> b!675309 (= res!441908 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19190 a!3626))))))

(declare-fun b!675310 () Bool)

(assert (=> b!675310 (= e!385299 false)))

(declare-fun lt!312669 () Bool)

(assert (=> b!675310 (= lt!312669 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675311 () Bool)

(assert (=> b!675311 (= e!385302 (contains!3463 acc!681 k0!2843))))

(declare-fun b!675312 () Bool)

(assert (=> b!675312 (= e!385296 e!385297)))

(declare-fun res!441905 () Bool)

(assert (=> b!675312 (=> (not res!441905) (not e!385297))))

(assert (=> b!675312 (= res!441905 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675313 () Bool)

(declare-fun res!441902 () Bool)

(assert (=> b!675313 (=> (not res!441902) (not e!385299))))

(assert (=> b!675313 (= res!441902 (validKeyInArray!0 k0!2843))))

(declare-fun b!675314 () Bool)

(declare-fun res!441903 () Bool)

(assert (=> b!675314 (=> (not res!441903) (not e!385299))))

(declare-fun arrayContainsKey!0 (array!39275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675314 (= res!441903 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!60272 res!441898) b!675306))

(assert (= (and b!675306 res!441897) b!675296))

(assert (= (and b!675296 res!441896) b!675295))

(assert (= (and b!675295 res!441911) b!675301))

(assert (= (and b!675301 res!441913) b!675300))

(assert (= (and b!675301 (not res!441901)) b!675298))

(assert (= (and b!675298 res!441899) b!675303))

(assert (= (and b!675301 res!441912) b!675307))

(assert (= (and b!675307 res!441906) b!675299))

(assert (= (and b!675299 res!441914) b!675309))

(assert (= (and b!675309 res!441908) b!675313))

(assert (= (and b!675313 res!441902) b!675314))

(assert (= (and b!675314 res!441903) b!675308))

(assert (= (and b!675308 res!441907) b!675305))

(assert (= (and b!675305 res!441904) b!675297))

(assert (= (and b!675297 res!441900) b!675302))

(assert (= (and b!675302 res!441895) b!675311))

(assert (= (and b!675302 (not res!441909)) b!675312))

(assert (= (and b!675312 res!441905) b!675304))

(assert (= (and b!675302 res!441910) b!675310))

(declare-fun m!642777 () Bool)

(assert (=> start!60272 m!642777))

(declare-fun m!642779 () Bool)

(assert (=> b!675311 m!642779))

(declare-fun m!642781 () Bool)

(assert (=> b!675295 m!642781))

(declare-fun m!642783 () Bool)

(assert (=> b!675314 m!642783))

(declare-fun m!642785 () Bool)

(assert (=> b!675306 m!642785))

(declare-fun m!642787 () Bool)

(assert (=> b!675313 m!642787))

(declare-fun m!642789 () Bool)

(assert (=> b!675307 m!642789))

(declare-fun m!642791 () Bool)

(assert (=> b!675296 m!642791))

(declare-fun m!642793 () Bool)

(assert (=> b!675305 m!642793))

(assert (=> b!675305 m!642793))

(declare-fun m!642795 () Bool)

(assert (=> b!675305 m!642795))

(assert (=> b!675303 m!642779))

(declare-fun m!642797 () Bool)

(assert (=> b!675299 m!642797))

(assert (=> b!675300 m!642779))

(declare-fun m!642799 () Bool)

(assert (=> b!675310 m!642799))

(assert (=> b!675304 m!642779))

(check-sat (not b!675296) (not b!675300) (not b!675313) (not b!675311) (not b!675306) (not b!675310) (not b!675303) (not b!675295) (not b!675305) (not b!675307) (not b!675314) (not start!60272) (not b!675299) (not b!675304))
