; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62538 () Bool)

(assert start!62538)

(declare-fun res!468084 () Bool)

(declare-fun e!397594 () Bool)

(assert (=> start!62538 (=> (not res!468084) (not e!397594))))

(declare-datatypes ((array!40173 0))(
  ( (array!40174 (arr!19239 (Array (_ BitVec 32) (_ BitVec 64))) (size!19622 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40173)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62538 (= res!468084 (and (bvslt (size!19622 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19622 a!3591))))))

(assert (=> start!62538 e!397594))

(assert (=> start!62538 true))

(declare-fun array_inv!15013 (array!40173) Bool)

(assert (=> start!62538 (array_inv!15013 a!3591)))

(declare-fun b!704085 () Bool)

(declare-fun res!468078 () Bool)

(assert (=> b!704085 (=> (not res!468078) (not e!397594))))

(declare-datatypes ((List!13333 0))(
  ( (Nil!13330) (Cons!13329 (h!14374 (_ BitVec 64)) (t!19623 List!13333)) )
))
(declare-fun acc!652 () List!13333)

(declare-fun contains!3876 (List!13333 (_ BitVec 64)) Bool)

(assert (=> b!704085 (= res!468078 (not (contains!3876 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704086 () Bool)

(declare-fun res!468085 () Bool)

(assert (=> b!704086 (=> (not res!468085) (not e!397594))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704086 (= res!468085 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704087 () Bool)

(declare-fun res!468082 () Bool)

(assert (=> b!704087 (=> (not res!468082) (not e!397594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704087 (= res!468082 (not (validKeyInArray!0 (select (arr!19239 a!3591) from!2969))))))

(declare-fun b!704088 () Bool)

(declare-fun res!468071 () Bool)

(assert (=> b!704088 (=> (not res!468071) (not e!397594))))

(assert (=> b!704088 (= res!468071 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704089 () Bool)

(declare-fun res!468069 () Bool)

(assert (=> b!704089 (=> (not res!468069) (not e!397594))))

(assert (=> b!704089 (= res!468069 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!704090 () Bool)

(declare-fun res!468079 () Bool)

(assert (=> b!704090 (=> (not res!468079) (not e!397594))))

(declare-fun newAcc!49 () List!13333)

(declare-fun subseq!320 (List!13333 List!13333) Bool)

(assert (=> b!704090 (= res!468079 (subseq!320 acc!652 newAcc!49))))

(declare-fun b!704091 () Bool)

(declare-fun res!468086 () Bool)

(assert (=> b!704091 (=> (not res!468086) (not e!397594))))

(assert (=> b!704091 (= res!468086 (validKeyInArray!0 k!2824))))

(declare-fun b!704092 () Bool)

(declare-fun res!468077 () Bool)

(assert (=> b!704092 (=> (not res!468077) (not e!397594))))

(assert (=> b!704092 (= res!468077 (not (contains!3876 acc!652 k!2824)))))

(declare-fun b!704093 () Bool)

(declare-fun res!468080 () Bool)

(assert (=> b!704093 (=> (not res!468080) (not e!397594))))

(declare-fun noDuplicate!1123 (List!13333) Bool)

(assert (=> b!704093 (= res!468080 (noDuplicate!1123 acc!652))))

(declare-fun b!704094 () Bool)

(declare-fun res!468075 () Bool)

(assert (=> b!704094 (=> (not res!468075) (not e!397594))))

(assert (=> b!704094 (= res!468075 (not (contains!3876 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704095 () Bool)

(declare-fun res!468070 () Bool)

(assert (=> b!704095 (=> (not res!468070) (not e!397594))))

(assert (=> b!704095 (= res!468070 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19622 a!3591)))))

(declare-fun b!704096 () Bool)

(declare-fun res!468076 () Bool)

(assert (=> b!704096 (=> (not res!468076) (not e!397594))))

(assert (=> b!704096 (= res!468076 (contains!3876 newAcc!49 k!2824))))

(declare-fun b!704097 () Bool)

(declare-fun res!468073 () Bool)

(assert (=> b!704097 (=> (not res!468073) (not e!397594))))

(assert (=> b!704097 (= res!468073 (not (contains!3876 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704098 () Bool)

(declare-fun res!468074 () Bool)

(assert (=> b!704098 (=> (not res!468074) (not e!397594))))

(declare-fun -!285 (List!13333 (_ BitVec 64)) List!13333)

(assert (=> b!704098 (= res!468074 (= (-!285 newAcc!49 k!2824) acc!652))))

(declare-fun b!704099 () Bool)

(declare-fun res!468083 () Bool)

(assert (=> b!704099 (=> (not res!468083) (not e!397594))))

(declare-fun arrayNoDuplicates!0 (array!40173 (_ BitVec 32) List!13333) Bool)

(assert (=> b!704099 (= res!468083 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704100 () Bool)

(declare-fun res!468081 () Bool)

(assert (=> b!704100 (=> (not res!468081) (not e!397594))))

(assert (=> b!704100 (= res!468081 (not (contains!3876 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704101 () Bool)

(assert (=> b!704101 (= e!397594 false)))

(declare-fun lt!317778 () Bool)

(assert (=> b!704101 (= lt!317778 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704102 () Bool)

(declare-fun res!468072 () Bool)

(assert (=> b!704102 (=> (not res!468072) (not e!397594))))

(assert (=> b!704102 (= res!468072 (noDuplicate!1123 newAcc!49))))

(assert (= (and start!62538 res!468084) b!704093))

(assert (= (and b!704093 res!468080) b!704102))

(assert (= (and b!704102 res!468072) b!704085))

(assert (= (and b!704085 res!468078) b!704094))

(assert (= (and b!704094 res!468075) b!704089))

(assert (= (and b!704089 res!468069) b!704092))

(assert (= (and b!704092 res!468077) b!704091))

(assert (= (and b!704091 res!468086) b!704099))

(assert (= (and b!704099 res!468083) b!704090))

(assert (= (and b!704090 res!468079) b!704096))

(assert (= (and b!704096 res!468076) b!704098))

(assert (= (and b!704098 res!468074) b!704100))

(assert (= (and b!704100 res!468081) b!704097))

(assert (= (and b!704097 res!468073) b!704095))

(assert (= (and b!704095 res!468070) b!704087))

(assert (= (and b!704087 res!468082) b!704088))

(assert (= (and b!704088 res!468071) b!704086))

(assert (= (and b!704086 res!468085) b!704101))

(declare-fun m!662715 () Bool)

(assert (=> b!704094 m!662715))

(declare-fun m!662717 () Bool)

(assert (=> b!704102 m!662717))

(declare-fun m!662719 () Bool)

(assert (=> b!704093 m!662719))

(declare-fun m!662721 () Bool)

(assert (=> b!704092 m!662721))

(declare-fun m!662723 () Bool)

(assert (=> b!704091 m!662723))

(declare-fun m!662725 () Bool)

(assert (=> b!704090 m!662725))

(declare-fun m!662727 () Bool)

(assert (=> start!62538 m!662727))

(declare-fun m!662729 () Bool)

(assert (=> b!704089 m!662729))

(declare-fun m!662731 () Bool)

(assert (=> b!704098 m!662731))

(declare-fun m!662733 () Bool)

(assert (=> b!704100 m!662733))

(declare-fun m!662735 () Bool)

(assert (=> b!704085 m!662735))

(declare-fun m!662737 () Bool)

(assert (=> b!704097 m!662737))

(declare-fun m!662739 () Bool)

(assert (=> b!704101 m!662739))

(declare-fun m!662741 () Bool)

(assert (=> b!704096 m!662741))

(declare-fun m!662743 () Bool)

(assert (=> b!704099 m!662743))

(declare-fun m!662745 () Bool)

(assert (=> b!704087 m!662745))

(assert (=> b!704087 m!662745))

(declare-fun m!662747 () Bool)

(assert (=> b!704087 m!662747))

(declare-fun m!662749 () Bool)

(assert (=> b!704086 m!662749))

(push 1)

(assert (not b!704097))

(assert (not b!704086))

(assert (not b!704090))

(assert (not b!704091))

(assert (not b!704101))

(assert (not start!62538))

(assert (not b!704094))

(assert (not b!704085))

(assert (not b!704098))

(assert (not b!704096))

(assert (not b!704093))

(assert (not b!704102))

(assert (not b!704087))

(assert (not b!704099))

(assert (not b!704089))

(assert (not b!704100))

(assert (not b!704092))

(check-sat)

(pop 1)

