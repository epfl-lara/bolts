; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63518 () Bool)

(assert start!63518)

(declare-fun res!478075 () Bool)

(declare-fun e!401729 () Bool)

(assert (=> start!63518 (=> (not res!478075) (not e!401729))))

(declare-datatypes ((array!40486 0))(
  ( (array!40487 (arr!19376 (Array (_ BitVec 32) (_ BitVec 64))) (size!19792 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40486)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63518 (= res!478075 (and (bvslt (size!19792 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19792 a!3591))))))

(assert (=> start!63518 e!401729))

(assert (=> start!63518 true))

(declare-fun array_inv!15150 (array!40486) Bool)

(assert (=> start!63518 (array_inv!15150 a!3591)))

(declare-fun b!714939 () Bool)

(declare-fun res!478088 () Bool)

(assert (=> b!714939 (=> (not res!478088) (not e!401729))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714939 (= res!478088 (validKeyInArray!0 k!2824))))

(declare-fun b!714940 () Bool)

(declare-fun res!478087 () Bool)

(assert (=> b!714940 (=> (not res!478087) (not e!401729))))

(assert (=> b!714940 (= res!478087 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19792 a!3591)))))

(declare-fun b!714941 () Bool)

(declare-fun res!478077 () Bool)

(assert (=> b!714941 (=> (not res!478077) (not e!401729))))

(declare-datatypes ((List!13470 0))(
  ( (Nil!13467) (Cons!13466 (h!14511 (_ BitVec 64)) (t!19793 List!13470)) )
))
(declare-fun acc!652 () List!13470)

(declare-fun contains!4013 (List!13470 (_ BitVec 64)) Bool)

(assert (=> b!714941 (= res!478077 (not (contains!4013 acc!652 k!2824)))))

(declare-fun b!714942 () Bool)

(declare-fun res!478092 () Bool)

(assert (=> b!714942 (=> (not res!478092) (not e!401729))))

(declare-fun noDuplicate!1260 (List!13470) Bool)

(assert (=> b!714942 (= res!478092 (noDuplicate!1260 acc!652))))

(declare-fun b!714943 () Bool)

(declare-fun res!478079 () Bool)

(assert (=> b!714943 (=> (not res!478079) (not e!401729))))

(declare-fun arrayContainsKey!0 (array!40486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714943 (= res!478079 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!714944 () Bool)

(declare-fun res!478076 () Bool)

(assert (=> b!714944 (=> (not res!478076) (not e!401729))))

(assert (=> b!714944 (= res!478076 (not (contains!4013 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714945 () Bool)

(declare-fun res!478091 () Bool)

(assert (=> b!714945 (=> (not res!478091) (not e!401729))))

(assert (=> b!714945 (= res!478091 (not (contains!4013 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714946 () Bool)

(declare-fun res!478080 () Bool)

(assert (=> b!714946 (=> (not res!478080) (not e!401729))))

(assert (=> b!714946 (= res!478080 (not (validKeyInArray!0 (select (arr!19376 a!3591) from!2969))))))

(declare-fun b!714947 () Bool)

(declare-fun res!478090 () Bool)

(assert (=> b!714947 (=> (not res!478090) (not e!401729))))

(declare-fun arrayNoDuplicates!0 (array!40486 (_ BitVec 32) List!13470) Bool)

(assert (=> b!714947 (= res!478090 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!714948 () Bool)

(declare-fun res!478084 () Bool)

(assert (=> b!714948 (=> (not res!478084) (not e!401729))))

(declare-fun newAcc!49 () List!13470)

(assert (=> b!714948 (= res!478084 (contains!4013 newAcc!49 k!2824))))

(declare-fun b!714949 () Bool)

(declare-fun res!478086 () Bool)

(assert (=> b!714949 (=> (not res!478086) (not e!401729))))

(assert (=> b!714949 (= res!478086 (noDuplicate!1260 newAcc!49))))

(declare-fun b!714950 () Bool)

(declare-fun res!478089 () Bool)

(assert (=> b!714950 (=> (not res!478089) (not e!401729))))

(declare-fun -!422 (List!13470 (_ BitVec 64)) List!13470)

(assert (=> b!714950 (= res!478089 (= (-!422 newAcc!49 k!2824) acc!652))))

(declare-fun b!714951 () Bool)

(declare-fun res!478081 () Bool)

(assert (=> b!714951 (=> (not res!478081) (not e!401729))))

(declare-fun subseq!457 (List!13470 List!13470) Bool)

(assert (=> b!714951 (= res!478081 (subseq!457 acc!652 newAcc!49))))

(declare-fun b!714952 () Bool)

(assert (=> b!714952 (= e!401729 false)))

(declare-fun lt!318770 () Bool)

(assert (=> b!714952 (= lt!318770 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!714953 () Bool)

(declare-fun res!478078 () Bool)

(assert (=> b!714953 (=> (not res!478078) (not e!401729))))

(assert (=> b!714953 (= res!478078 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!714954 () Bool)

(declare-fun res!478082 () Bool)

(assert (=> b!714954 (=> (not res!478082) (not e!401729))))

(assert (=> b!714954 (= res!478082 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!714955 () Bool)

(declare-fun res!478085 () Bool)

(assert (=> b!714955 (=> (not res!478085) (not e!401729))))

(assert (=> b!714955 (= res!478085 (not (contains!4013 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714956 () Bool)

(declare-fun res!478083 () Bool)

(assert (=> b!714956 (=> (not res!478083) (not e!401729))))

(assert (=> b!714956 (= res!478083 (not (contains!4013 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63518 res!478075) b!714942))

(assert (= (and b!714942 res!478092) b!714949))

(assert (= (and b!714949 res!478086) b!714944))

(assert (= (and b!714944 res!478076) b!714945))

(assert (= (and b!714945 res!478091) b!714954))

(assert (= (and b!714954 res!478082) b!714941))

(assert (= (and b!714941 res!478077) b!714939))

(assert (= (and b!714939 res!478088) b!714947))

(assert (= (and b!714947 res!478090) b!714951))

(assert (= (and b!714951 res!478081) b!714948))

(assert (= (and b!714948 res!478084) b!714950))

(assert (= (and b!714950 res!478089) b!714956))

(assert (= (and b!714956 res!478083) b!714955))

(assert (= (and b!714955 res!478085) b!714940))

(assert (= (and b!714940 res!478087) b!714946))

(assert (= (and b!714946 res!478080) b!714953))

(assert (= (and b!714953 res!478078) b!714943))

(assert (= (and b!714943 res!478079) b!714952))

(declare-fun m!671373 () Bool)

(assert (=> b!714955 m!671373))

(declare-fun m!671375 () Bool)

(assert (=> b!714954 m!671375))

(declare-fun m!671377 () Bool)

(assert (=> b!714948 m!671377))

(declare-fun m!671379 () Bool)

(assert (=> b!714943 m!671379))

(declare-fun m!671381 () Bool)

(assert (=> b!714952 m!671381))

(declare-fun m!671383 () Bool)

(assert (=> b!714942 m!671383))

(declare-fun m!671385 () Bool)

(assert (=> b!714947 m!671385))

(declare-fun m!671387 () Bool)

(assert (=> b!714945 m!671387))

(declare-fun m!671389 () Bool)

(assert (=> b!714949 m!671389))

(declare-fun m!671391 () Bool)

(assert (=> b!714939 m!671391))

(declare-fun m!671393 () Bool)

(assert (=> b!714941 m!671393))

(declare-fun m!671395 () Bool)

(assert (=> b!714951 m!671395))

(declare-fun m!671397 () Bool)

(assert (=> b!714944 m!671397))

(declare-fun m!671399 () Bool)

(assert (=> start!63518 m!671399))

(declare-fun m!671401 () Bool)

(assert (=> b!714946 m!671401))

(assert (=> b!714946 m!671401))

(declare-fun m!671403 () Bool)

(assert (=> b!714946 m!671403))

(declare-fun m!671405 () Bool)

(assert (=> b!714950 m!671405))

(declare-fun m!671407 () Bool)

(assert (=> b!714956 m!671407))

(push 1)

(assert (not b!714942))

(assert (not b!714945))

(assert (not b!714951))

(assert (not b!714950))

(assert (not b!714949))

(assert (not b!714947))

(assert (not b!714943))

(assert (not b!714952))

(assert (not b!714939))

(assert (not b!714946))

(assert (not b!714954))

(assert (not start!63518))

(assert (not b!714956))

(assert (not b!714941))

(assert (not b!714944))

(assert (not b!714955))

(assert (not b!714948))

(check-sat)

