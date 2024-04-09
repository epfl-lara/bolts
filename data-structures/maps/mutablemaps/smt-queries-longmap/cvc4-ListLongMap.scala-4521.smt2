; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62614 () Bool)

(assert start!62614)

(declare-fun b!706097 () Bool)

(declare-fun res!470087 () Bool)

(declare-fun e!397822 () Bool)

(assert (=> b!706097 (=> (not res!470087) (not e!397822))))

(declare-datatypes ((List!13371 0))(
  ( (Nil!13368) (Cons!13367 (h!14412 (_ BitVec 64)) (t!19661 List!13371)) )
))
(declare-fun acc!652 () List!13371)

(declare-fun newAcc!49 () List!13371)

(declare-fun subseq!358 (List!13371 List!13371) Bool)

(assert (=> b!706097 (= res!470087 (subseq!358 acc!652 newAcc!49))))

(declare-fun b!706098 () Bool)

(declare-fun res!470084 () Bool)

(assert (=> b!706098 (=> (not res!470084) (not e!397822))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!323 (List!13371 (_ BitVec 64)) List!13371)

(assert (=> b!706098 (= res!470084 (= (-!323 newAcc!49 k!2824) acc!652))))

(declare-fun b!706099 () Bool)

(declare-fun res!470085 () Bool)

(assert (=> b!706099 (=> (not res!470085) (not e!397822))))

(declare-datatypes ((array!40249 0))(
  ( (array!40250 (arr!19277 (Array (_ BitVec 32) (_ BitVec 64))) (size!19660 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40249)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706099 (= res!470085 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706100 () Bool)

(declare-fun res!470092 () Bool)

(assert (=> b!706100 (=> (not res!470092) (not e!397822))))

(declare-fun contains!3914 (List!13371 (_ BitVec 64)) Bool)

(assert (=> b!706100 (= res!470092 (not (contains!3914 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706101 () Bool)

(declare-fun res!470081 () Bool)

(assert (=> b!706101 (=> (not res!470081) (not e!397822))))

(assert (=> b!706101 (= res!470081 (not (contains!3914 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!470089 () Bool)

(assert (=> start!62614 (=> (not res!470089) (not e!397822))))

(assert (=> start!62614 (= res!470089 (and (bvslt (size!19660 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19660 a!3591))))))

(assert (=> start!62614 e!397822))

(assert (=> start!62614 true))

(declare-fun array_inv!15051 (array!40249) Bool)

(assert (=> start!62614 (array_inv!15051 a!3591)))

(declare-fun b!706102 () Bool)

(declare-fun res!470093 () Bool)

(assert (=> b!706102 (=> (not res!470093) (not e!397822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706102 (= res!470093 (validKeyInArray!0 k!2824))))

(declare-fun b!706103 () Bool)

(declare-fun res!470088 () Bool)

(assert (=> b!706103 (=> (not res!470088) (not e!397822))))

(declare-fun arrayNoDuplicates!0 (array!40249 (_ BitVec 32) List!13371) Bool)

(assert (=> b!706103 (= res!470088 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706104 () Bool)

(declare-fun res!470090 () Bool)

(assert (=> b!706104 (=> (not res!470090) (not e!397822))))

(declare-fun noDuplicate!1161 (List!13371) Bool)

(assert (=> b!706104 (= res!470090 (noDuplicate!1161 newAcc!49))))

(declare-fun b!706105 () Bool)

(declare-fun res!470082 () Bool)

(assert (=> b!706105 (=> (not res!470082) (not e!397822))))

(assert (=> b!706105 (= res!470082 (contains!3914 newAcc!49 k!2824))))

(declare-fun b!706106 () Bool)

(declare-fun res!470086 () Bool)

(assert (=> b!706106 (=> (not res!470086) (not e!397822))))

(assert (=> b!706106 (= res!470086 (not (contains!3914 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706107 () Bool)

(assert (=> b!706107 (= e!397822 false)))

(declare-fun lt!317883 () Bool)

(assert (=> b!706107 (= lt!317883 (contains!3914 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706108 () Bool)

(declare-fun res!470091 () Bool)

(assert (=> b!706108 (=> (not res!470091) (not e!397822))))

(assert (=> b!706108 (= res!470091 (not (contains!3914 acc!652 k!2824)))))

(declare-fun b!706109 () Bool)

(declare-fun res!470083 () Bool)

(assert (=> b!706109 (=> (not res!470083) (not e!397822))))

(assert (=> b!706109 (= res!470083 (noDuplicate!1161 acc!652))))

(assert (= (and start!62614 res!470089) b!706109))

(assert (= (and b!706109 res!470083) b!706104))

(assert (= (and b!706104 res!470090) b!706101))

(assert (= (and b!706101 res!470081) b!706100))

(assert (= (and b!706100 res!470092) b!706099))

(assert (= (and b!706099 res!470085) b!706108))

(assert (= (and b!706108 res!470091) b!706102))

(assert (= (and b!706102 res!470093) b!706103))

(assert (= (and b!706103 res!470088) b!706097))

(assert (= (and b!706097 res!470087) b!706105))

(assert (= (and b!706105 res!470082) b!706098))

(assert (= (and b!706098 res!470084) b!706106))

(assert (= (and b!706106 res!470086) b!706107))

(declare-fun m!664091 () Bool)

(assert (=> start!62614 m!664091))

(declare-fun m!664093 () Bool)

(assert (=> b!706100 m!664093))

(declare-fun m!664095 () Bool)

(assert (=> b!706097 m!664095))

(declare-fun m!664097 () Bool)

(assert (=> b!706105 m!664097))

(declare-fun m!664099 () Bool)

(assert (=> b!706103 m!664099))

(declare-fun m!664101 () Bool)

(assert (=> b!706109 m!664101))

(declare-fun m!664103 () Bool)

(assert (=> b!706107 m!664103))

(declare-fun m!664105 () Bool)

(assert (=> b!706098 m!664105))

(declare-fun m!664107 () Bool)

(assert (=> b!706106 m!664107))

(declare-fun m!664109 () Bool)

(assert (=> b!706099 m!664109))

(declare-fun m!664111 () Bool)

(assert (=> b!706104 m!664111))

(declare-fun m!664113 () Bool)

(assert (=> b!706102 m!664113))

(declare-fun m!664115 () Bool)

(assert (=> b!706101 m!664115))

(declare-fun m!664117 () Bool)

(assert (=> b!706108 m!664117))

(push 1)

(assert (not b!706100))

(assert (not b!706098))

(assert (not b!706109))

(assert (not b!706107))

(assert (not b!706097))

(assert (not b!706102))

(assert (not b!706103))

(assert (not b!706104))

(assert (not b!706106))

(assert (not start!62614))

(assert (not b!706105))

(assert (not b!706101))

(assert (not b!706108))

(assert (not b!706099))

(check-sat)

(pop 1)

