; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63358 () Bool)

(assert start!63358)

(declare-fun b!713084 () Bool)

(declare-fun res!476344 () Bool)

(declare-fun e!401130 () Bool)

(assert (=> b!713084 (=> (not res!476344) (not e!401130))))

(declare-datatypes ((List!13438 0))(
  ( (Nil!13435) (Cons!13434 (h!14479 (_ BitVec 64)) (t!19761 List!13438)) )
))
(declare-fun newAcc!49 () List!13438)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3981 (List!13438 (_ BitVec 64)) Bool)

(assert (=> b!713084 (= res!476344 (contains!3981 newAcc!49 k!2824))))

(declare-fun b!713085 () Bool)

(declare-fun res!476334 () Bool)

(assert (=> b!713085 (=> (not res!476334) (not e!401130))))

(declare-datatypes ((array!40416 0))(
  ( (array!40417 (arr!19344 (Array (_ BitVec 32) (_ BitVec 64))) (size!19756 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40416)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun acc!652 () List!13438)

(declare-fun arrayNoDuplicates!0 (array!40416 (_ BitVec 32) List!13438) Bool)

(assert (=> b!713085 (= res!476334 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713086 () Bool)

(declare-fun res!476346 () Bool)

(assert (=> b!713086 (=> (not res!476346) (not e!401130))))

(assert (=> b!713086 (= res!476346 (not (contains!3981 acc!652 k!2824)))))

(declare-fun res!476340 () Bool)

(assert (=> start!63358 (=> (not res!476340) (not e!401130))))

(assert (=> start!63358 (= res!476340 (and (bvslt (size!19756 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19756 a!3591))))))

(assert (=> start!63358 e!401130))

(assert (=> start!63358 true))

(declare-fun array_inv!15118 (array!40416) Bool)

(assert (=> start!63358 (array_inv!15118 a!3591)))

(declare-fun b!713087 () Bool)

(declare-fun res!476338 () Bool)

(assert (=> b!713087 (=> (not res!476338) (not e!401130))))

(declare-fun arrayContainsKey!0 (array!40416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713087 (= res!476338 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713088 () Bool)

(assert (=> b!713088 (= e!401130 false)))

(declare-fun lt!318635 () Bool)

(assert (=> b!713088 (= lt!318635 (contains!3981 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713089 () Bool)

(declare-fun res!476342 () Bool)

(assert (=> b!713089 (=> (not res!476342) (not e!401130))))

(declare-fun noDuplicate!1228 (List!13438) Bool)

(assert (=> b!713089 (= res!476342 (noDuplicate!1228 acc!652))))

(declare-fun b!713090 () Bool)

(declare-fun res!476341 () Bool)

(assert (=> b!713090 (=> (not res!476341) (not e!401130))))

(assert (=> b!713090 (= res!476341 (not (contains!3981 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713091 () Bool)

(declare-fun res!476335 () Bool)

(assert (=> b!713091 (=> (not res!476335) (not e!401130))))

(declare-fun subseq!425 (List!13438 List!13438) Bool)

(assert (=> b!713091 (= res!476335 (subseq!425 acc!652 newAcc!49))))

(declare-fun b!713092 () Bool)

(declare-fun res!476343 () Bool)

(assert (=> b!713092 (=> (not res!476343) (not e!401130))))

(assert (=> b!713092 (= res!476343 (noDuplicate!1228 newAcc!49))))

(declare-fun b!713093 () Bool)

(declare-fun res!476345 () Bool)

(assert (=> b!713093 (=> (not res!476345) (not e!401130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713093 (= res!476345 (validKeyInArray!0 k!2824))))

(declare-fun b!713094 () Bool)

(declare-fun res!476336 () Bool)

(assert (=> b!713094 (=> (not res!476336) (not e!401130))))

(assert (=> b!713094 (= res!476336 (not (contains!3981 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713095 () Bool)

(declare-fun res!476339 () Bool)

(assert (=> b!713095 (=> (not res!476339) (not e!401130))))

(declare-fun -!390 (List!13438 (_ BitVec 64)) List!13438)

(assert (=> b!713095 (= res!476339 (= (-!390 newAcc!49 k!2824) acc!652))))

(declare-fun b!713096 () Bool)

(declare-fun res!476337 () Bool)

(assert (=> b!713096 (=> (not res!476337) (not e!401130))))

(assert (=> b!713096 (= res!476337 (not (contains!3981 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63358 res!476340) b!713089))

(assert (= (and b!713089 res!476342) b!713092))

(assert (= (and b!713092 res!476343) b!713090))

(assert (= (and b!713090 res!476341) b!713096))

(assert (= (and b!713096 res!476337) b!713087))

(assert (= (and b!713087 res!476338) b!713086))

(assert (= (and b!713086 res!476346) b!713093))

(assert (= (and b!713093 res!476345) b!713085))

(assert (= (and b!713085 res!476334) b!713091))

(assert (= (and b!713091 res!476335) b!713084))

(assert (= (and b!713084 res!476344) b!713095))

(assert (= (and b!713095 res!476339) b!713094))

(assert (= (and b!713094 res!476336) b!713088))

(declare-fun m!670029 () Bool)

(assert (=> b!713091 m!670029))

(declare-fun m!670031 () Bool)

(assert (=> b!713096 m!670031))

(declare-fun m!670033 () Bool)

(assert (=> b!713089 m!670033))

(declare-fun m!670035 () Bool)

(assert (=> b!713090 m!670035))

(declare-fun m!670037 () Bool)

(assert (=> b!713092 m!670037))

(declare-fun m!670039 () Bool)

(assert (=> b!713087 m!670039))

(declare-fun m!670041 () Bool)

(assert (=> b!713084 m!670041))

(declare-fun m!670043 () Bool)

(assert (=> b!713095 m!670043))

(declare-fun m!670045 () Bool)

(assert (=> start!63358 m!670045))

(declare-fun m!670047 () Bool)

(assert (=> b!713088 m!670047))

(declare-fun m!670049 () Bool)

(assert (=> b!713086 m!670049))

(declare-fun m!670051 () Bool)

(assert (=> b!713094 m!670051))

(declare-fun m!670053 () Bool)

(assert (=> b!713093 m!670053))

(declare-fun m!670055 () Bool)

(assert (=> b!713085 m!670055))

(push 1)

(assert (not b!713094))

(assert (not b!713096))

(assert (not b!713091))

(assert (not b!713095))

(assert (not b!713088))

(assert (not b!713086))

(assert (not b!713087))

(assert (not b!713084))

(assert (not start!63358))

(assert (not b!713089))

(assert (not b!713093))

(assert (not b!713085))

(assert (not b!713090))

(assert (not b!713092))

(check-sat)

