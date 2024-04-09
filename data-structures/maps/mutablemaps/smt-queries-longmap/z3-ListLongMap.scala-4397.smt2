; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60500 () Bool)

(assert start!60500)

(declare-fun b!679412 () Bool)

(declare-datatypes ((Unit!23786 0))(
  ( (Unit!23787) )
))
(declare-fun e!387091 () Unit!23786)

(declare-fun Unit!23788 () Unit!23786)

(assert (=> b!679412 (= e!387091 Unit!23788)))

(declare-fun b!679413 () Bool)

(declare-fun res!445949 () Bool)

(declare-fun e!387090 () Bool)

(assert (=> b!679413 (=> (not res!445949) (not e!387090))))

(declare-datatypes ((List!12998 0))(
  ( (Nil!12995) (Cons!12994 (h!14039 (_ BitVec 64)) (t!19234 List!12998)) )
))
(declare-fun acc!681 () List!12998)

(declare-fun contains!3541 (List!12998 (_ BitVec 64)) Bool)

(assert (=> b!679413 (= res!445949 (not (contains!3541 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679414 () Bool)

(declare-fun res!445939 () Bool)

(assert (=> b!679414 (=> (not res!445939) (not e!387090))))

(declare-datatypes ((array!39437 0))(
  ( (array!39438 (arr!18904 (Array (_ BitVec 32) (_ BitVec 64))) (size!19268 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39437)

(declare-fun arrayNoDuplicates!0 (array!39437 (_ BitVec 32) List!12998) Bool)

(assert (=> b!679414 (= res!445939 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12995))))

(declare-fun b!679415 () Bool)

(declare-fun res!445943 () Bool)

(assert (=> b!679415 (=> (not res!445943) (not e!387090))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679415 (= res!445943 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19268 a!3626))))))

(declare-fun res!445941 () Bool)

(assert (=> start!60500 (=> (not res!445941) (not e!387090))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60500 (= res!445941 (and (bvslt (size!19268 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19268 a!3626))))))

(assert (=> start!60500 e!387090))

(assert (=> start!60500 true))

(declare-fun array_inv!14678 (array!39437) Bool)

(assert (=> start!60500 (array_inv!14678 a!3626)))

(declare-fun b!679416 () Bool)

(assert (=> b!679416 (= e!387090 (not true))))

(declare-fun lt!312885 () Unit!23786)

(assert (=> b!679416 (= lt!312885 e!387091)))

(declare-fun c!77105 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679416 (= c!77105 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679416 (arrayContainsKey!0 (array!39438 (store (arr!18904 a!3626) i!1382 k0!2843) (size!19268 a!3626)) k0!2843 from!3004)))

(declare-fun b!679417 () Bool)

(declare-fun res!445947 () Bool)

(assert (=> b!679417 (=> (not res!445947) (not e!387090))))

(assert (=> b!679417 (= res!445947 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679418 () Bool)

(declare-fun Unit!23789 () Unit!23786)

(assert (=> b!679418 (= e!387091 Unit!23789)))

(declare-fun lt!312884 () Unit!23786)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39437 (_ BitVec 64) (_ BitVec 32)) Unit!23786)

(assert (=> b!679418 (= lt!312884 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!679418 false))

(declare-fun b!679419 () Bool)

(declare-fun res!445944 () Bool)

(assert (=> b!679419 (=> (not res!445944) (not e!387090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679419 (= res!445944 (validKeyInArray!0 k0!2843))))

(declare-fun b!679420 () Bool)

(declare-fun e!387086 () Bool)

(assert (=> b!679420 (= e!387086 (not (contains!3541 acc!681 k0!2843)))))

(declare-fun b!679421 () Bool)

(declare-fun res!445938 () Bool)

(assert (=> b!679421 (=> (not res!445938) (not e!387090))))

(declare-fun e!387087 () Bool)

(assert (=> b!679421 (= res!445938 e!387087)))

(declare-fun res!445946 () Bool)

(assert (=> b!679421 (=> res!445946 e!387087)))

(declare-fun e!387088 () Bool)

(assert (=> b!679421 (= res!445946 e!387088)))

(declare-fun res!445945 () Bool)

(assert (=> b!679421 (=> (not res!445945) (not e!387088))))

(assert (=> b!679421 (= res!445945 (bvsgt from!3004 i!1382))))

(declare-fun b!679422 () Bool)

(assert (=> b!679422 (= e!387088 (contains!3541 acc!681 k0!2843))))

(declare-fun b!679423 () Bool)

(assert (=> b!679423 (= e!387087 e!387086)))

(declare-fun res!445937 () Bool)

(assert (=> b!679423 (=> (not res!445937) (not e!387086))))

(assert (=> b!679423 (= res!445937 (bvsle from!3004 i!1382))))

(declare-fun b!679424 () Bool)

(declare-fun res!445942 () Bool)

(assert (=> b!679424 (=> (not res!445942) (not e!387090))))

(assert (=> b!679424 (= res!445942 (not (contains!3541 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679425 () Bool)

(declare-fun res!445936 () Bool)

(assert (=> b!679425 (=> (not res!445936) (not e!387090))))

(assert (=> b!679425 (= res!445936 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679426 () Bool)

(declare-fun res!445940 () Bool)

(assert (=> b!679426 (=> (not res!445940) (not e!387090))))

(declare-fun noDuplicate!788 (List!12998) Bool)

(assert (=> b!679426 (= res!445940 (noDuplicate!788 acc!681))))

(declare-fun b!679427 () Bool)

(declare-fun res!445948 () Bool)

(assert (=> b!679427 (=> (not res!445948) (not e!387090))))

(assert (=> b!679427 (= res!445948 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19268 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!60500 res!445941) b!679426))

(assert (= (and b!679426 res!445940) b!679413))

(assert (= (and b!679413 res!445949) b!679424))

(assert (= (and b!679424 res!445942) b!679421))

(assert (= (and b!679421 res!445945) b!679422))

(assert (= (and b!679421 (not res!445946)) b!679423))

(assert (= (and b!679423 res!445937) b!679420))

(assert (= (and b!679421 res!445938) b!679414))

(assert (= (and b!679414 res!445939) b!679417))

(assert (= (and b!679417 res!445947) b!679415))

(assert (= (and b!679415 res!445943) b!679419))

(assert (= (and b!679419 res!445944) b!679425))

(assert (= (and b!679425 res!445936) b!679427))

(assert (= (and b!679427 res!445948) b!679416))

(assert (= (and b!679416 c!77105) b!679418))

(assert (= (and b!679416 (not c!77105)) b!679412))

(declare-fun m!644819 () Bool)

(assert (=> b!679426 m!644819))

(declare-fun m!644821 () Bool)

(assert (=> b!679416 m!644821))

(declare-fun m!644823 () Bool)

(assert (=> b!679416 m!644823))

(declare-fun m!644825 () Bool)

(assert (=> b!679416 m!644825))

(declare-fun m!644827 () Bool)

(assert (=> b!679419 m!644827))

(declare-fun m!644829 () Bool)

(assert (=> b!679417 m!644829))

(declare-fun m!644831 () Bool)

(assert (=> b!679420 m!644831))

(declare-fun m!644833 () Bool)

(assert (=> b!679425 m!644833))

(declare-fun m!644835 () Bool)

(assert (=> start!60500 m!644835))

(assert (=> b!679422 m!644831))

(declare-fun m!644837 () Bool)

(assert (=> b!679424 m!644837))

(declare-fun m!644839 () Bool)

(assert (=> b!679414 m!644839))

(declare-fun m!644841 () Bool)

(assert (=> b!679418 m!644841))

(declare-fun m!644843 () Bool)

(assert (=> b!679413 m!644843))

(check-sat (not b!679422) (not b!679413) (not b!679417) (not b!679425) (not b!679416) (not b!679424) (not start!60500) (not b!679418) (not b!679414) (not b!679426) (not b!679420) (not b!679419))
(check-sat)
