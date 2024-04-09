; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62428 () Bool)

(assert start!62428)

(declare-fun b!700079 () Bool)

(declare-fun res!464081 () Bool)

(declare-fun e!397163 () Bool)

(assert (=> b!700079 (=> (not res!464081) (not e!397163))))

(declare-datatypes ((List!13278 0))(
  ( (Nil!13275) (Cons!13274 (h!14319 (_ BitVec 64)) (t!19568 List!13278)) )
))
(declare-fun newAcc!49 () List!13278)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13278)

(declare-fun -!230 (List!13278 (_ BitVec 64)) List!13278)

(assert (=> b!700079 (= res!464081 (= (-!230 newAcc!49 k!2824) acc!652))))

(declare-fun b!700080 () Bool)

(declare-fun res!464064 () Bool)

(declare-fun e!397165 () Bool)

(assert (=> b!700080 (=> (not res!464064) (not e!397165))))

(declare-fun lt!317413 () List!13278)

(declare-fun noDuplicate!1068 (List!13278) Bool)

(assert (=> b!700080 (= res!464064 (noDuplicate!1068 lt!317413))))

(declare-fun b!700081 () Bool)

(declare-fun res!464067 () Bool)

(assert (=> b!700081 (=> (not res!464067) (not e!397163))))

(assert (=> b!700081 (= res!464067 (noDuplicate!1068 acc!652))))

(declare-fun b!700082 () Bool)

(declare-fun res!464090 () Bool)

(assert (=> b!700082 (=> (not res!464090) (not e!397163))))

(declare-fun contains!3821 (List!13278 (_ BitVec 64)) Bool)

(assert (=> b!700082 (= res!464090 (not (contains!3821 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700083 () Bool)

(declare-fun res!464071 () Bool)

(assert (=> b!700083 (=> (not res!464071) (not e!397163))))

(assert (=> b!700083 (= res!464071 (contains!3821 newAcc!49 k!2824))))

(declare-fun b!700084 () Bool)

(declare-fun res!464079 () Bool)

(assert (=> b!700084 (=> (not res!464079) (not e!397163))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40063 0))(
  ( (array!40064 (arr!19184 (Array (_ BitVec 32) (_ BitVec 64))) (size!19567 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40063)

(assert (=> b!700084 (= res!464079 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19567 a!3591)))))

(declare-fun b!700085 () Bool)

(declare-fun res!464063 () Bool)

(assert (=> b!700085 (=> (not res!464063) (not e!397163))))

(assert (=> b!700085 (= res!464063 (not (contains!3821 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700086 () Bool)

(declare-fun res!464077 () Bool)

(assert (=> b!700086 (=> (not res!464077) (not e!397163))))

(assert (=> b!700086 (= res!464077 (not (contains!3821 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700087 () Bool)

(declare-fun res!464072 () Bool)

(assert (=> b!700087 (=> (not res!464072) (not e!397165))))

(declare-fun lt!317415 () List!13278)

(assert (=> b!700087 (= res!464072 (not (contains!3821 lt!317415 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700088 () Bool)

(declare-fun res!464065 () Bool)

(assert (=> b!700088 (=> (not res!464065) (not e!397165))))

(assert (=> b!700088 (= res!464065 (= (-!230 lt!317413 k!2824) lt!317415))))

(declare-fun res!464073 () Bool)

(assert (=> start!62428 (=> (not res!464073) (not e!397163))))

(assert (=> start!62428 (= res!464073 (and (bvslt (size!19567 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19567 a!3591))))))

(assert (=> start!62428 e!397163))

(assert (=> start!62428 true))

(declare-fun array_inv!14958 (array!40063) Bool)

(assert (=> start!62428 (array_inv!14958 a!3591)))

(declare-fun b!700089 () Bool)

(assert (=> b!700089 (= e!397165 false)))

(declare-fun lt!317414 () Bool)

(assert (=> b!700089 (= lt!317414 (contains!3821 lt!317413 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!700090 () Bool)

(declare-fun res!464080 () Bool)

(assert (=> b!700090 (=> (not res!464080) (not e!397165))))

(declare-fun arrayContainsKey!0 (array!40063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!700090 (= res!464080 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!700091 () Bool)

(declare-fun res!464068 () Bool)

(assert (=> b!700091 (=> (not res!464068) (not e!397163))))

(assert (=> b!700091 (= res!464068 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!700092 () Bool)

(declare-fun res!464085 () Bool)

(assert (=> b!700092 (=> (not res!464085) (not e!397163))))

(declare-fun subseq!265 (List!13278 List!13278) Bool)

(assert (=> b!700092 (= res!464085 (subseq!265 acc!652 newAcc!49))))

(declare-fun b!700093 () Bool)

(declare-fun res!464082 () Bool)

(assert (=> b!700093 (=> (not res!464082) (not e!397163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!700093 (= res!464082 (validKeyInArray!0 k!2824))))

(declare-fun b!700094 () Bool)

(declare-fun res!464088 () Bool)

(assert (=> b!700094 (=> (not res!464088) (not e!397165))))

(assert (=> b!700094 (= res!464088 (contains!3821 lt!317413 k!2824))))

(declare-fun b!700095 () Bool)

(assert (=> b!700095 (= e!397163 e!397165)))

(declare-fun res!464075 () Bool)

(assert (=> b!700095 (=> (not res!464075) (not e!397165))))

(assert (=> b!700095 (= res!464075 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!462 (List!13278 (_ BitVec 64)) List!13278)

(assert (=> b!700095 (= lt!317413 ($colon$colon!462 newAcc!49 (select (arr!19184 a!3591) from!2969)))))

(assert (=> b!700095 (= lt!317415 ($colon$colon!462 acc!652 (select (arr!19184 a!3591) from!2969)))))

(declare-fun b!700096 () Bool)

(declare-fun res!464070 () Bool)

(assert (=> b!700096 (=> (not res!464070) (not e!397163))))

(assert (=> b!700096 (= res!464070 (not (contains!3821 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700097 () Bool)

(declare-fun res!464084 () Bool)

(assert (=> b!700097 (=> (not res!464084) (not e!397163))))

(assert (=> b!700097 (= res!464084 (noDuplicate!1068 newAcc!49))))

(declare-fun b!700098 () Bool)

(declare-fun res!464069 () Bool)

(assert (=> b!700098 (=> (not res!464069) (not e!397163))))

(declare-fun arrayNoDuplicates!0 (array!40063 (_ BitVec 32) List!13278) Bool)

(assert (=> b!700098 (= res!464069 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!700099 () Bool)

(declare-fun res!464074 () Bool)

(assert (=> b!700099 (=> (not res!464074) (not e!397165))))

(assert (=> b!700099 (= res!464074 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317415))))

(declare-fun b!700100 () Bool)

(declare-fun res!464078 () Bool)

(assert (=> b!700100 (=> (not res!464078) (not e!397165))))

(assert (=> b!700100 (= res!464078 (noDuplicate!1068 lt!317415))))

(declare-fun b!700101 () Bool)

(declare-fun res!464066 () Bool)

(assert (=> b!700101 (=> (not res!464066) (not e!397165))))

(assert (=> b!700101 (= res!464066 (subseq!265 lt!317415 lt!317413))))

(declare-fun b!700102 () Bool)

(declare-fun res!464087 () Bool)

(assert (=> b!700102 (=> (not res!464087) (not e!397165))))

(assert (=> b!700102 (= res!464087 (not (contains!3821 lt!317413 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700103 () Bool)

(declare-fun res!464089 () Bool)

(assert (=> b!700103 (=> (not res!464089) (not e!397163))))

(assert (=> b!700103 (= res!464089 (not (contains!3821 acc!652 k!2824)))))

(declare-fun b!700104 () Bool)

(declare-fun res!464086 () Bool)

(assert (=> b!700104 (=> (not res!464086) (not e!397165))))

(assert (=> b!700104 (= res!464086 (not (contains!3821 lt!317415 k!2824)))))

(declare-fun b!700105 () Bool)

(declare-fun res!464083 () Bool)

(assert (=> b!700105 (=> (not res!464083) (not e!397165))))

(assert (=> b!700105 (= res!464083 (not (contains!3821 lt!317415 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700106 () Bool)

(declare-fun res!464076 () Bool)

(assert (=> b!700106 (=> (not res!464076) (not e!397163))))

(assert (=> b!700106 (= res!464076 (validKeyInArray!0 (select (arr!19184 a!3591) from!2969)))))

(assert (= (and start!62428 res!464073) b!700081))

(assert (= (and b!700081 res!464067) b!700097))

(assert (= (and b!700097 res!464084) b!700096))

(assert (= (and b!700096 res!464070) b!700085))

(assert (= (and b!700085 res!464063) b!700091))

(assert (= (and b!700091 res!464068) b!700103))

(assert (= (and b!700103 res!464089) b!700093))

(assert (= (and b!700093 res!464082) b!700098))

(assert (= (and b!700098 res!464069) b!700092))

(assert (= (and b!700092 res!464085) b!700083))

(assert (= (and b!700083 res!464071) b!700079))

(assert (= (and b!700079 res!464081) b!700086))

(assert (= (and b!700086 res!464077) b!700082))

(assert (= (and b!700082 res!464090) b!700084))

(assert (= (and b!700084 res!464079) b!700106))

(assert (= (and b!700106 res!464076) b!700095))

(assert (= (and b!700095 res!464075) b!700100))

(assert (= (and b!700100 res!464078) b!700080))

(assert (= (and b!700080 res!464064) b!700087))

(assert (= (and b!700087 res!464072) b!700105))

(assert (= (and b!700105 res!464083) b!700090))

(assert (= (and b!700090 res!464080) b!700104))

(assert (= (and b!700104 res!464086) b!700099))

(assert (= (and b!700099 res!464074) b!700101))

(assert (= (and b!700101 res!464066) b!700094))

(assert (= (and b!700094 res!464088) b!700088))

(assert (= (and b!700088 res!464065) b!700102))

(assert (= (and b!700102 res!464087) b!700089))

(declare-fun m!659871 () Bool)

(assert (=> b!700100 m!659871))

(declare-fun m!659873 () Bool)

(assert (=> b!700082 m!659873))

(declare-fun m!659875 () Bool)

(assert (=> b!700097 m!659875))

(declare-fun m!659877 () Bool)

(assert (=> b!700095 m!659877))

(assert (=> b!700095 m!659877))

(declare-fun m!659879 () Bool)

(assert (=> b!700095 m!659879))

(assert (=> b!700095 m!659877))

(declare-fun m!659881 () Bool)

(assert (=> b!700095 m!659881))

(declare-fun m!659883 () Bool)

(assert (=> b!700104 m!659883))

(declare-fun m!659885 () Bool)

(assert (=> start!62428 m!659885))

(declare-fun m!659887 () Bool)

(assert (=> b!700099 m!659887))

(declare-fun m!659889 () Bool)

(assert (=> b!700102 m!659889))

(declare-fun m!659891 () Bool)

(assert (=> b!700096 m!659891))

(declare-fun m!659893 () Bool)

(assert (=> b!700083 m!659893))

(declare-fun m!659895 () Bool)

(assert (=> b!700088 m!659895))

(declare-fun m!659897 () Bool)

(assert (=> b!700094 m!659897))

(declare-fun m!659899 () Bool)

(assert (=> b!700081 m!659899))

(declare-fun m!659901 () Bool)

(assert (=> b!700101 m!659901))

(declare-fun m!659903 () Bool)

(assert (=> b!700079 m!659903))

(declare-fun m!659905 () Bool)

(assert (=> b!700087 m!659905))

(declare-fun m!659907 () Bool)

(assert (=> b!700098 m!659907))

(declare-fun m!659909 () Bool)

(assert (=> b!700105 m!659909))

(declare-fun m!659911 () Bool)

(assert (=> b!700103 m!659911))

(declare-fun m!659913 () Bool)

(assert (=> b!700080 m!659913))

(declare-fun m!659915 () Bool)

(assert (=> b!700091 m!659915))

(declare-fun m!659917 () Bool)

(assert (=> b!700089 m!659917))

(declare-fun m!659919 () Bool)

(assert (=> b!700093 m!659919))

(assert (=> b!700106 m!659877))

(assert (=> b!700106 m!659877))

(declare-fun m!659921 () Bool)

(assert (=> b!700106 m!659921))

(declare-fun m!659923 () Bool)

(assert (=> b!700086 m!659923))

(declare-fun m!659925 () Bool)

(assert (=> b!700085 m!659925))

(declare-fun m!659927 () Bool)

(assert (=> b!700090 m!659927))

(declare-fun m!659929 () Bool)

(assert (=> b!700092 m!659929))

(push 1)

