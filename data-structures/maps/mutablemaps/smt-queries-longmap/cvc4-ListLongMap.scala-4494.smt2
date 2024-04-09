; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62452 () Bool)

(assert start!62452)

(declare-fun b!701087 () Bool)

(declare-fun res!465092 () Bool)

(declare-fun e!397271 () Bool)

(assert (=> b!701087 (=> (not res!465092) (not e!397271))))

(declare-datatypes ((List!13290 0))(
  ( (Nil!13287) (Cons!13286 (h!14331 (_ BitVec 64)) (t!19580 List!13290)) )
))
(declare-fun lt!317521 () List!13290)

(declare-fun contains!3833 (List!13290 (_ BitVec 64)) Bool)

(assert (=> b!701087 (= res!465092 (not (contains!3833 lt!317521 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701088 () Bool)

(declare-fun res!465085 () Bool)

(declare-fun e!397272 () Bool)

(assert (=> b!701088 (=> (not res!465085) (not e!397272))))

(declare-fun acc!652 () List!13290)

(assert (=> b!701088 (= res!465085 (not (contains!3833 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701089 () Bool)

(declare-fun res!465078 () Bool)

(assert (=> b!701089 (=> (not res!465078) (not e!397271))))

(declare-fun lt!317523 () List!13290)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!242 (List!13290 (_ BitVec 64)) List!13290)

(assert (=> b!701089 (= res!465078 (= (-!242 lt!317521 k!2824) lt!317523))))

(declare-fun b!701090 () Bool)

(declare-fun res!465072 () Bool)

(assert (=> b!701090 (=> (not res!465072) (not e!397272))))

(declare-fun newAcc!49 () List!13290)

(declare-fun subseq!277 (List!13290 List!13290) Bool)

(assert (=> b!701090 (= res!465072 (subseq!277 acc!652 newAcc!49))))

(declare-fun b!701091 () Bool)

(declare-fun res!465088 () Bool)

(assert (=> b!701091 (=> (not res!465088) (not e!397272))))

(declare-fun noDuplicate!1080 (List!13290) Bool)

(assert (=> b!701091 (= res!465088 (noDuplicate!1080 acc!652))))

(declare-fun b!701092 () Bool)

(declare-fun res!465098 () Bool)

(assert (=> b!701092 (=> (not res!465098) (not e!397271))))

(declare-datatypes ((array!40087 0))(
  ( (array!40088 (arr!19196 (Array (_ BitVec 32) (_ BitVec 64))) (size!19579 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40087)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40087 (_ BitVec 32) List!13290) Bool)

(assert (=> b!701092 (= res!465098 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317523))))

(declare-fun b!701093 () Bool)

(assert (=> b!701093 (= e!397271 false)))

(declare-fun lt!317522 () Bool)

(assert (=> b!701093 (= lt!317522 (contains!3833 lt!317521 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!701094 () Bool)

(declare-fun res!465071 () Bool)

(assert (=> b!701094 (=> (not res!465071) (not e!397272))))

(assert (=> b!701094 (= res!465071 (= (-!242 newAcc!49 k!2824) acc!652))))

(declare-fun b!701095 () Bool)

(declare-fun res!465095 () Bool)

(assert (=> b!701095 (=> (not res!465095) (not e!397272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!701095 (= res!465095 (validKeyInArray!0 (select (arr!19196 a!3591) from!2969)))))

(declare-fun res!465080 () Bool)

(assert (=> start!62452 (=> (not res!465080) (not e!397272))))

(assert (=> start!62452 (= res!465080 (and (bvslt (size!19579 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19579 a!3591))))))

(assert (=> start!62452 e!397272))

(assert (=> start!62452 true))

(declare-fun array_inv!14970 (array!40087) Bool)

(assert (=> start!62452 (array_inv!14970 a!3591)))

(declare-fun b!701096 () Bool)

(declare-fun res!465087 () Bool)

(assert (=> b!701096 (=> (not res!465087) (not e!397271))))

(assert (=> b!701096 (= res!465087 (not (contains!3833 lt!317523 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701097 () Bool)

(declare-fun res!465086 () Bool)

(assert (=> b!701097 (=> (not res!465086) (not e!397272))))

(declare-fun arrayContainsKey!0 (array!40087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!701097 (= res!465086 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!701098 () Bool)

(declare-fun res!465077 () Bool)

(assert (=> b!701098 (=> (not res!465077) (not e!397271))))

(assert (=> b!701098 (= res!465077 (not (contains!3833 lt!317523 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701099 () Bool)

(declare-fun res!465074 () Bool)

(assert (=> b!701099 (=> (not res!465074) (not e!397271))))

(assert (=> b!701099 (= res!465074 (noDuplicate!1080 lt!317523))))

(declare-fun b!701100 () Bool)

(declare-fun res!465097 () Bool)

(assert (=> b!701100 (=> (not res!465097) (not e!397271))))

(assert (=> b!701100 (= res!465097 (noDuplicate!1080 lt!317521))))

(declare-fun b!701101 () Bool)

(declare-fun res!465083 () Bool)

(assert (=> b!701101 (=> (not res!465083) (not e!397272))))

(assert (=> b!701101 (= res!465083 (not (contains!3833 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701102 () Bool)

(declare-fun res!465082 () Bool)

(assert (=> b!701102 (=> (not res!465082) (not e!397272))))

(assert (=> b!701102 (= res!465082 (not (contains!3833 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701103 () Bool)

(declare-fun res!465075 () Bool)

(assert (=> b!701103 (=> (not res!465075) (not e!397271))))

(assert (=> b!701103 (= res!465075 (contains!3833 lt!317521 k!2824))))

(declare-fun b!701104 () Bool)

(declare-fun res!465089 () Bool)

(assert (=> b!701104 (=> (not res!465089) (not e!397272))))

(assert (=> b!701104 (= res!465089 (not (contains!3833 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701105 () Bool)

(declare-fun res!465073 () Bool)

(assert (=> b!701105 (=> (not res!465073) (not e!397272))))

(assert (=> b!701105 (= res!465073 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!701106 () Bool)

(declare-fun res!465076 () Bool)

(assert (=> b!701106 (=> (not res!465076) (not e!397272))))

(assert (=> b!701106 (= res!465076 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19579 a!3591)))))

(declare-fun b!701107 () Bool)

(declare-fun res!465093 () Bool)

(assert (=> b!701107 (=> (not res!465093) (not e!397272))))

(assert (=> b!701107 (= res!465093 (validKeyInArray!0 k!2824))))

(declare-fun b!701108 () Bool)

(declare-fun res!465081 () Bool)

(assert (=> b!701108 (=> (not res!465081) (not e!397271))))

(assert (=> b!701108 (= res!465081 (not (contains!3833 lt!317523 k!2824)))))

(declare-fun b!701109 () Bool)

(declare-fun res!465096 () Bool)

(assert (=> b!701109 (=> (not res!465096) (not e!397272))))

(assert (=> b!701109 (= res!465096 (noDuplicate!1080 newAcc!49))))

(declare-fun b!701110 () Bool)

(assert (=> b!701110 (= e!397272 e!397271)))

(declare-fun res!465084 () Bool)

(assert (=> b!701110 (=> (not res!465084) (not e!397271))))

(assert (=> b!701110 (= res!465084 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!474 (List!13290 (_ BitVec 64)) List!13290)

(assert (=> b!701110 (= lt!317521 ($colon$colon!474 newAcc!49 (select (arr!19196 a!3591) from!2969)))))

(assert (=> b!701110 (= lt!317523 ($colon$colon!474 acc!652 (select (arr!19196 a!3591) from!2969)))))

(declare-fun b!701111 () Bool)

(declare-fun res!465091 () Bool)

(assert (=> b!701111 (=> (not res!465091) (not e!397272))))

(assert (=> b!701111 (= res!465091 (not (contains!3833 acc!652 k!2824)))))

(declare-fun b!701112 () Bool)

(declare-fun res!465094 () Bool)

(assert (=> b!701112 (=> (not res!465094) (not e!397271))))

(assert (=> b!701112 (= res!465094 (subseq!277 lt!317523 lt!317521))))

(declare-fun b!701113 () Bool)

(declare-fun res!465090 () Bool)

(assert (=> b!701113 (=> (not res!465090) (not e!397272))))

(assert (=> b!701113 (= res!465090 (contains!3833 newAcc!49 k!2824))))

(declare-fun b!701114 () Bool)

(declare-fun res!465079 () Bool)

(assert (=> b!701114 (=> (not res!465079) (not e!397271))))

(assert (=> b!701114 (= res!465079 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and start!62452 res!465080) b!701091))

(assert (= (and b!701091 res!465088) b!701109))

(assert (= (and b!701109 res!465096) b!701101))

(assert (= (and b!701101 res!465083) b!701088))

(assert (= (and b!701088 res!465085) b!701097))

(assert (= (and b!701097 res!465086) b!701111))

(assert (= (and b!701111 res!465091) b!701107))

(assert (= (and b!701107 res!465093) b!701105))

(assert (= (and b!701105 res!465073) b!701090))

(assert (= (and b!701090 res!465072) b!701113))

(assert (= (and b!701113 res!465090) b!701094))

(assert (= (and b!701094 res!465071) b!701102))

(assert (= (and b!701102 res!465082) b!701104))

(assert (= (and b!701104 res!465089) b!701106))

(assert (= (and b!701106 res!465076) b!701095))

(assert (= (and b!701095 res!465095) b!701110))

(assert (= (and b!701110 res!465084) b!701099))

(assert (= (and b!701099 res!465074) b!701100))

(assert (= (and b!701100 res!465097) b!701098))

(assert (= (and b!701098 res!465077) b!701096))

(assert (= (and b!701096 res!465087) b!701114))

(assert (= (and b!701114 res!465079) b!701108))

(assert (= (and b!701108 res!465081) b!701092))

(assert (= (and b!701092 res!465098) b!701112))

(assert (= (and b!701112 res!465094) b!701103))

(assert (= (and b!701103 res!465075) b!701089))

(assert (= (and b!701089 res!465078) b!701087))

(assert (= (and b!701087 res!465092) b!701093))

(declare-fun m!660591 () Bool)

(assert (=> b!701090 m!660591))

(declare-fun m!660593 () Bool)

(assert (=> b!701087 m!660593))

(declare-fun m!660595 () Bool)

(assert (=> b!701102 m!660595))

(declare-fun m!660597 () Bool)

(assert (=> b!701108 m!660597))

(declare-fun m!660599 () Bool)

(assert (=> b!701088 m!660599))

(declare-fun m!660601 () Bool)

(assert (=> b!701099 m!660601))

(declare-fun m!660603 () Bool)

(assert (=> b!701091 m!660603))

(declare-fun m!660605 () Bool)

(assert (=> b!701093 m!660605))

(declare-fun m!660607 () Bool)

(assert (=> b!701094 m!660607))

(declare-fun m!660609 () Bool)

(assert (=> b!701101 m!660609))

(declare-fun m!660611 () Bool)

(assert (=> b!701100 m!660611))

(declare-fun m!660613 () Bool)

(assert (=> b!701109 m!660613))

(declare-fun m!660615 () Bool)

(assert (=> b!701089 m!660615))

(declare-fun m!660617 () Bool)

(assert (=> b!701103 m!660617))

(declare-fun m!660619 () Bool)

(assert (=> b!701095 m!660619))

(assert (=> b!701095 m!660619))

(declare-fun m!660621 () Bool)

(assert (=> b!701095 m!660621))

(declare-fun m!660623 () Bool)

(assert (=> b!701113 m!660623))

(declare-fun m!660625 () Bool)

(assert (=> b!701092 m!660625))

(declare-fun m!660627 () Bool)

(assert (=> b!701111 m!660627))

(declare-fun m!660629 () Bool)

(assert (=> b!701114 m!660629))

(declare-fun m!660631 () Bool)

(assert (=> b!701104 m!660631))

(declare-fun m!660633 () Bool)

(assert (=> b!701107 m!660633))

(declare-fun m!660635 () Bool)

(assert (=> b!701098 m!660635))

(declare-fun m!660637 () Bool)

(assert (=> start!62452 m!660637))

(declare-fun m!660639 () Bool)

(assert (=> b!701097 m!660639))

(declare-fun m!660641 () Bool)

(assert (=> b!701112 m!660641))

(declare-fun m!660643 () Bool)

(assert (=> b!701105 m!660643))

(assert (=> b!701110 m!660619))

(assert (=> b!701110 m!660619))

(declare-fun m!660645 () Bool)

(assert (=> b!701110 m!660645))

(assert (=> b!701110 m!660619))

(declare-fun m!660647 () Bool)

(assert (=> b!701110 m!660647))

(declare-fun m!660649 () Bool)

(assert (=> b!701096 m!660649))

(push 1)

(assert (not b!701105))

(assert (not b!701111))

(assert (not b!701095))

(assert (not b!701093))

(assert (not b!701101))

(assert (not b!701100))

(assert (not b!701107))

