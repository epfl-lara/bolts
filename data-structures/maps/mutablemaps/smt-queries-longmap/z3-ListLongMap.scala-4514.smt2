; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62570 () Bool)

(assert start!62570)

(declare-fun b!704950 () Bool)

(declare-fun res!468942 () Bool)

(declare-fun e!397690 () Bool)

(assert (=> b!704950 (=> (not res!468942) (not e!397690))))

(declare-datatypes ((List!13349 0))(
  ( (Nil!13346) (Cons!13345 (h!14390 (_ BitVec 64)) (t!19639 List!13349)) )
))
(declare-fun acc!652 () List!13349)

(declare-fun contains!3892 (List!13349 (_ BitVec 64)) Bool)

(assert (=> b!704950 (= res!468942 (not (contains!3892 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704951 () Bool)

(declare-fun res!468950 () Bool)

(assert (=> b!704951 (=> (not res!468950) (not e!397690))))

(declare-datatypes ((array!40205 0))(
  ( (array!40206 (arr!19255 (Array (_ BitVec 32) (_ BitVec 64))) (size!19638 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40205)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704951 (= res!468950 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!704952 () Bool)

(declare-fun res!468933 () Bool)

(assert (=> b!704952 (=> (not res!468933) (not e!397690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704952 (= res!468933 (validKeyInArray!0 k0!2824))))

(declare-fun b!704953 () Bool)

(declare-fun res!468939 () Bool)

(assert (=> b!704953 (=> (not res!468939) (not e!397690))))

(assert (=> b!704953 (= res!468939 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704954 () Bool)

(declare-fun res!468949 () Bool)

(assert (=> b!704954 (=> (not res!468949) (not e!397690))))

(declare-fun noDuplicate!1139 (List!13349) Bool)

(assert (=> b!704954 (= res!468949 (noDuplicate!1139 acc!652))))

(declare-fun b!704955 () Bool)

(declare-fun res!468946 () Bool)

(assert (=> b!704955 (=> (not res!468946) (not e!397690))))

(declare-fun newAcc!49 () List!13349)

(assert (=> b!704955 (= res!468946 (not (contains!3892 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704956 () Bool)

(declare-fun res!468948 () Bool)

(assert (=> b!704956 (=> (not res!468948) (not e!397690))))

(assert (=> b!704956 (= res!468948 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704957 () Bool)

(declare-fun res!468938 () Bool)

(assert (=> b!704957 (=> (not res!468938) (not e!397690))))

(declare-fun arrayNoDuplicates!0 (array!40205 (_ BitVec 32) List!13349) Bool)

(assert (=> b!704957 (= res!468938 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704958 () Bool)

(declare-fun res!468945 () Bool)

(assert (=> b!704958 (=> (not res!468945) (not e!397690))))

(assert (=> b!704958 (= res!468945 (not (validKeyInArray!0 (select (arr!19255 a!3591) from!2969))))))

(declare-fun b!704959 () Bool)

(declare-fun res!468947 () Bool)

(assert (=> b!704959 (=> (not res!468947) (not e!397690))))

(assert (=> b!704959 (= res!468947 (not (contains!3892 acc!652 k0!2824)))))

(declare-fun res!468940 () Bool)

(assert (=> start!62570 (=> (not res!468940) (not e!397690))))

(assert (=> start!62570 (= res!468940 (and (bvslt (size!19638 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19638 a!3591))))))

(assert (=> start!62570 e!397690))

(assert (=> start!62570 true))

(declare-fun array_inv!15029 (array!40205) Bool)

(assert (=> start!62570 (array_inv!15029 a!3591)))

(declare-fun b!704949 () Bool)

(declare-fun res!468943 () Bool)

(assert (=> b!704949 (=> (not res!468943) (not e!397690))))

(assert (=> b!704949 (= res!468943 (not (contains!3892 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704960 () Bool)

(declare-fun res!468936 () Bool)

(assert (=> b!704960 (=> (not res!468936) (not e!397690))))

(assert (=> b!704960 (= res!468936 (contains!3892 newAcc!49 k0!2824))))

(declare-fun b!704961 () Bool)

(declare-fun res!468944 () Bool)

(assert (=> b!704961 (=> (not res!468944) (not e!397690))))

(assert (=> b!704961 (= res!468944 (not (contains!3892 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704962 () Bool)

(declare-fun res!468934 () Bool)

(assert (=> b!704962 (=> (not res!468934) (not e!397690))))

(assert (=> b!704962 (= res!468934 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19638 a!3591)))))

(declare-fun b!704963 () Bool)

(declare-fun res!468935 () Bool)

(assert (=> b!704963 (=> (not res!468935) (not e!397690))))

(assert (=> b!704963 (= res!468935 (noDuplicate!1139 newAcc!49))))

(declare-fun b!704964 () Bool)

(declare-fun res!468937 () Bool)

(assert (=> b!704964 (=> (not res!468937) (not e!397690))))

(declare-fun subseq!336 (List!13349 List!13349) Bool)

(assert (=> b!704964 (= res!468937 (subseq!336 acc!652 newAcc!49))))

(declare-fun b!704965 () Bool)

(declare-fun res!468941 () Bool)

(assert (=> b!704965 (=> (not res!468941) (not e!397690))))

(declare-fun -!301 (List!13349 (_ BitVec 64)) List!13349)

(assert (=> b!704965 (= res!468941 (= (-!301 newAcc!49 k0!2824) acc!652))))

(declare-fun b!704966 () Bool)

(assert (=> b!704966 (= e!397690 false)))

(declare-fun lt!317826 () Bool)

(assert (=> b!704966 (= lt!317826 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(assert (= (and start!62570 res!468940) b!704954))

(assert (= (and b!704954 res!468949) b!704963))

(assert (= (and b!704963 res!468935) b!704949))

(assert (= (and b!704949 res!468943) b!704950))

(assert (= (and b!704950 res!468942) b!704951))

(assert (= (and b!704951 res!468950) b!704959))

(assert (= (and b!704959 res!468947) b!704952))

(assert (= (and b!704952 res!468933) b!704957))

(assert (= (and b!704957 res!468938) b!704964))

(assert (= (and b!704964 res!468937) b!704960))

(assert (= (and b!704960 res!468936) b!704965))

(assert (= (and b!704965 res!468941) b!704955))

(assert (= (and b!704955 res!468946) b!704961))

(assert (= (and b!704961 res!468944) b!704962))

(assert (= (and b!704962 res!468934) b!704958))

(assert (= (and b!704958 res!468945) b!704953))

(assert (= (and b!704953 res!468939) b!704956))

(assert (= (and b!704956 res!468948) b!704966))

(declare-fun m!663291 () Bool)

(assert (=> b!704955 m!663291))

(declare-fun m!663293 () Bool)

(assert (=> b!704961 m!663293))

(declare-fun m!663295 () Bool)

(assert (=> b!704959 m!663295))

(declare-fun m!663297 () Bool)

(assert (=> b!704950 m!663297))

(declare-fun m!663299 () Bool)

(assert (=> b!704963 m!663299))

(declare-fun m!663301 () Bool)

(assert (=> b!704954 m!663301))

(declare-fun m!663303 () Bool)

(assert (=> b!704956 m!663303))

(declare-fun m!663305 () Bool)

(assert (=> b!704964 m!663305))

(declare-fun m!663307 () Bool)

(assert (=> b!704949 m!663307))

(declare-fun m!663309 () Bool)

(assert (=> b!704960 m!663309))

(declare-fun m!663311 () Bool)

(assert (=> b!704958 m!663311))

(assert (=> b!704958 m!663311))

(declare-fun m!663313 () Bool)

(assert (=> b!704958 m!663313))

(declare-fun m!663315 () Bool)

(assert (=> b!704952 m!663315))

(declare-fun m!663317 () Bool)

(assert (=> start!62570 m!663317))

(declare-fun m!663319 () Bool)

(assert (=> b!704966 m!663319))

(declare-fun m!663321 () Bool)

(assert (=> b!704957 m!663321))

(declare-fun m!663323 () Bool)

(assert (=> b!704951 m!663323))

(declare-fun m!663325 () Bool)

(assert (=> b!704965 m!663325))

(check-sat (not b!704956) (not b!704955) (not b!704960) (not b!704957) (not b!704959) (not b!704964) (not b!704949) (not start!62570) (not b!704966) (not b!704958) (not b!704950) (not b!704963) (not b!704954) (not b!704965) (not b!704951) (not b!704952) (not b!704961))
(check-sat)
