; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60158 () Bool)

(assert start!60158)

(declare-fun b!671081 () Bool)

(declare-fun res!437966 () Bool)

(declare-fun e!383564 () Bool)

(assert (=> b!671081 (=> (not res!437966) (not e!383564))))

(declare-datatypes ((array!39161 0))(
  ( (array!39162 (arr!18769 (Array (_ BitVec 32) (_ BitVec 64))) (size!19133 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39161)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671081 (= res!437966 (validKeyInArray!0 (select (arr!18769 a!3626) from!3004)))))

(declare-fun b!671082 () Bool)

(declare-fun res!437955 () Bool)

(assert (=> b!671082 (=> (not res!437955) (not e!383564))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671082 (= res!437955 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671083 () Bool)

(declare-fun e!383566 () Bool)

(declare-fun e!383563 () Bool)

(assert (=> b!671083 (= e!383566 e!383563)))

(declare-fun res!437953 () Bool)

(assert (=> b!671083 (=> (not res!437953) (not e!383563))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671083 (= res!437953 (bvsle from!3004 i!1382))))

(declare-fun b!671084 () Bool)

(declare-datatypes ((List!12863 0))(
  ( (Nil!12860) (Cons!12859 (h!13904 (_ BitVec 64)) (t!19099 List!12863)) )
))
(declare-fun acc!681 () List!12863)

(declare-fun contains!3406 (List!12863 (_ BitVec 64)) Bool)

(assert (=> b!671084 (= e!383563 (not (contains!3406 acc!681 k0!2843)))))

(declare-fun b!671085 () Bool)

(declare-fun res!437964 () Bool)

(assert (=> b!671085 (=> (not res!437964) (not e!383564))))

(assert (=> b!671085 (= res!437964 e!383566)))

(declare-fun res!437957 () Bool)

(assert (=> b!671085 (=> res!437957 e!383566)))

(declare-fun e!383562 () Bool)

(assert (=> b!671085 (= res!437957 e!383562)))

(declare-fun res!437963 () Bool)

(assert (=> b!671085 (=> (not res!437963) (not e!383562))))

(assert (=> b!671085 (= res!437963 (bvsgt from!3004 i!1382))))

(declare-fun res!437952 () Bool)

(assert (=> start!60158 (=> (not res!437952) (not e!383564))))

(assert (=> start!60158 (= res!437952 (and (bvslt (size!19133 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19133 a!3626))))))

(assert (=> start!60158 e!383564))

(assert (=> start!60158 true))

(declare-fun array_inv!14543 (array!39161) Bool)

(assert (=> start!60158 (array_inv!14543 a!3626)))

(declare-fun b!671086 () Bool)

(declare-fun res!437962 () Bool)

(assert (=> b!671086 (=> (not res!437962) (not e!383564))))

(assert (=> b!671086 (= res!437962 (not (contains!3406 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671087 () Bool)

(declare-fun res!437961 () Bool)

(assert (=> b!671087 (=> (not res!437961) (not e!383564))))

(declare-fun arrayNoDuplicates!0 (array!39161 (_ BitVec 32) List!12863) Bool)

(assert (=> b!671087 (= res!437961 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671088 () Bool)

(declare-fun res!437954 () Bool)

(assert (=> b!671088 (=> (not res!437954) (not e!383564))))

(assert (=> b!671088 (= res!437954 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12860))))

(declare-fun b!671089 () Bool)

(declare-fun res!437960 () Bool)

(assert (=> b!671089 (=> (not res!437960) (not e!383564))))

(assert (=> b!671089 (= res!437960 (= (select (arr!18769 a!3626) from!3004) k0!2843))))

(declare-fun b!671090 () Bool)

(declare-fun res!437965 () Bool)

(assert (=> b!671090 (=> (not res!437965) (not e!383564))))

(assert (=> b!671090 (= res!437965 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19133 a!3626))))))

(declare-fun b!671091 () Bool)

(declare-fun res!437951 () Bool)

(assert (=> b!671091 (=> (not res!437951) (not e!383564))))

(assert (=> b!671091 (= res!437951 (not (contains!3406 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671092 () Bool)

(declare-fun res!437956 () Bool)

(assert (=> b!671092 (=> (not res!437956) (not e!383564))))

(assert (=> b!671092 (= res!437956 (validKeyInArray!0 k0!2843))))

(declare-fun b!671093 () Bool)

(declare-fun res!437958 () Bool)

(assert (=> b!671093 (=> (not res!437958) (not e!383564))))

(declare-fun noDuplicate!653 (List!12863) Bool)

(assert (=> b!671093 (= res!437958 (noDuplicate!653 acc!681))))

(declare-fun b!671094 () Bool)

(assert (=> b!671094 (= e!383562 (contains!3406 acc!681 k0!2843))))

(declare-fun b!671095 () Bool)

(declare-fun res!437959 () Bool)

(assert (=> b!671095 (=> (not res!437959) (not e!383564))))

(assert (=> b!671095 (= res!437959 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19133 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671096 () Bool)

(assert (=> b!671096 (= e!383564 (not true))))

(assert (=> b!671096 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(assert (= (and start!60158 res!437952) b!671093))

(assert (= (and b!671093 res!437958) b!671086))

(assert (= (and b!671086 res!437962) b!671091))

(assert (= (and b!671091 res!437951) b!671085))

(assert (= (and b!671085 res!437963) b!671094))

(assert (= (and b!671085 (not res!437957)) b!671083))

(assert (= (and b!671083 res!437953) b!671084))

(assert (= (and b!671085 res!437964) b!671088))

(assert (= (and b!671088 res!437954) b!671087))

(assert (= (and b!671087 res!437961) b!671090))

(assert (= (and b!671090 res!437965) b!671092))

(assert (= (and b!671092 res!437956) b!671082))

(assert (= (and b!671082 res!437955) b!671095))

(assert (= (and b!671095 res!437959) b!671081))

(assert (= (and b!671081 res!437966) b!671089))

(assert (= (and b!671089 res!437960) b!671096))

(declare-fun m!640707 () Bool)

(assert (=> b!671084 m!640707))

(declare-fun m!640709 () Bool)

(assert (=> b!671088 m!640709))

(declare-fun m!640711 () Bool)

(assert (=> b!671093 m!640711))

(declare-fun m!640713 () Bool)

(assert (=> b!671092 m!640713))

(declare-fun m!640715 () Bool)

(assert (=> b!671081 m!640715))

(assert (=> b!671081 m!640715))

(declare-fun m!640717 () Bool)

(assert (=> b!671081 m!640717))

(declare-fun m!640719 () Bool)

(assert (=> b!671082 m!640719))

(declare-fun m!640721 () Bool)

(assert (=> b!671087 m!640721))

(declare-fun m!640723 () Bool)

(assert (=> b!671086 m!640723))

(assert (=> b!671089 m!640715))

(assert (=> b!671094 m!640707))

(declare-fun m!640725 () Bool)

(assert (=> b!671096 m!640725))

(declare-fun m!640727 () Bool)

(assert (=> b!671091 m!640727))

(declare-fun m!640729 () Bool)

(assert (=> start!60158 m!640729))

(check-sat (not b!671084) (not b!671092) (not b!671091) (not b!671088) (not b!671096) (not b!671094) (not start!60158) (not b!671081) (not b!671086) (not b!671093) (not b!671087) (not b!671082))
(check-sat)
