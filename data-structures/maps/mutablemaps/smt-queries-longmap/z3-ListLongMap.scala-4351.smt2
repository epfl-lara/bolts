; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60152 () Bool)

(assert start!60152)

(declare-fun b!670937 () Bool)

(declare-fun e!383519 () Bool)

(declare-fun e!383520 () Bool)

(assert (=> b!670937 (= e!383519 e!383520)))

(declare-fun res!437822 () Bool)

(assert (=> b!670937 (=> (not res!437822) (not e!383520))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670937 (= res!437822 (bvsle from!3004 i!1382))))

(declare-fun b!670938 () Bool)

(declare-fun res!437814 () Bool)

(declare-fun e!383518 () Bool)

(assert (=> b!670938 (=> (not res!437814) (not e!383518))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670938 (= res!437814 (validKeyInArray!0 k0!2843))))

(declare-fun b!670939 () Bool)

(declare-fun res!437813 () Bool)

(assert (=> b!670939 (=> (not res!437813) (not e!383518))))

(declare-datatypes ((List!12860 0))(
  ( (Nil!12857) (Cons!12856 (h!13901 (_ BitVec 64)) (t!19096 List!12860)) )
))
(declare-fun acc!681 () List!12860)

(declare-fun noDuplicate!650 (List!12860) Bool)

(assert (=> b!670939 (= res!437813 (noDuplicate!650 acc!681))))

(declare-fun b!670940 () Bool)

(declare-fun res!437820 () Bool)

(assert (=> b!670940 (=> (not res!437820) (not e!383518))))

(declare-fun contains!3403 (List!12860 (_ BitVec 64)) Bool)

(assert (=> b!670940 (= res!437820 (not (contains!3403 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670941 () Bool)

(assert (=> b!670941 (= e!383520 (not (contains!3403 acc!681 k0!2843)))))

(declare-fun b!670942 () Bool)

(assert (=> b!670942 (= e!383518 (not true))))

(declare-datatypes ((array!39155 0))(
  ( (array!39156 (arr!18766 (Array (_ BitVec 32) (_ BitVec 64))) (size!19130 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39155)

(declare-fun arrayContainsKey!0 (array!39155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670942 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun b!670943 () Bool)

(declare-fun res!437816 () Bool)

(assert (=> b!670943 (=> (not res!437816) (not e!383518))))

(declare-fun arrayNoDuplicates!0 (array!39155 (_ BitVec 32) List!12860) Bool)

(assert (=> b!670943 (= res!437816 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670944 () Bool)

(declare-fun res!437819 () Bool)

(assert (=> b!670944 (=> (not res!437819) (not e!383518))))

(assert (=> b!670944 (= res!437819 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670945 () Bool)

(declare-fun res!437817 () Bool)

(assert (=> b!670945 (=> (not res!437817) (not e!383518))))

(assert (=> b!670945 (= res!437817 (validKeyInArray!0 (select (arr!18766 a!3626) from!3004)))))

(declare-fun b!670946 () Bool)

(declare-fun res!437807 () Bool)

(assert (=> b!670946 (=> (not res!437807) (not e!383518))))

(assert (=> b!670946 (= res!437807 (= (select (arr!18766 a!3626) from!3004) k0!2843))))

(declare-fun b!670947 () Bool)

(declare-fun res!437809 () Bool)

(assert (=> b!670947 (=> (not res!437809) (not e!383518))))

(assert (=> b!670947 (= res!437809 e!383519)))

(declare-fun res!437810 () Bool)

(assert (=> b!670947 (=> res!437810 e!383519)))

(declare-fun e!383517 () Bool)

(assert (=> b!670947 (= res!437810 e!383517)))

(declare-fun res!437811 () Bool)

(assert (=> b!670947 (=> (not res!437811) (not e!383517))))

(assert (=> b!670947 (= res!437811 (bvsgt from!3004 i!1382))))

(declare-fun res!437812 () Bool)

(assert (=> start!60152 (=> (not res!437812) (not e!383518))))

(assert (=> start!60152 (= res!437812 (and (bvslt (size!19130 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19130 a!3626))))))

(assert (=> start!60152 e!383518))

(assert (=> start!60152 true))

(declare-fun array_inv!14540 (array!39155) Bool)

(assert (=> start!60152 (array_inv!14540 a!3626)))

(declare-fun b!670948 () Bool)

(assert (=> b!670948 (= e!383517 (contains!3403 acc!681 k0!2843))))

(declare-fun b!670949 () Bool)

(declare-fun res!437818 () Bool)

(assert (=> b!670949 (=> (not res!437818) (not e!383518))))

(assert (=> b!670949 (= res!437818 (not (contains!3403 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670950 () Bool)

(declare-fun res!437815 () Bool)

(assert (=> b!670950 (=> (not res!437815) (not e!383518))))

(assert (=> b!670950 (= res!437815 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12857))))

(declare-fun b!670951 () Bool)

(declare-fun res!437821 () Bool)

(assert (=> b!670951 (=> (not res!437821) (not e!383518))))

(assert (=> b!670951 (= res!437821 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19130 a!3626))))))

(declare-fun b!670952 () Bool)

(declare-fun res!437808 () Bool)

(assert (=> b!670952 (=> (not res!437808) (not e!383518))))

(assert (=> b!670952 (= res!437808 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19130 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!60152 res!437812) b!670939))

(assert (= (and b!670939 res!437813) b!670940))

(assert (= (and b!670940 res!437820) b!670949))

(assert (= (and b!670949 res!437818) b!670947))

(assert (= (and b!670947 res!437811) b!670948))

(assert (= (and b!670947 (not res!437810)) b!670937))

(assert (= (and b!670937 res!437822) b!670941))

(assert (= (and b!670947 res!437809) b!670950))

(assert (= (and b!670950 res!437815) b!670943))

(assert (= (and b!670943 res!437816) b!670951))

(assert (= (and b!670951 res!437821) b!670938))

(assert (= (and b!670938 res!437814) b!670944))

(assert (= (and b!670944 res!437819) b!670952))

(assert (= (and b!670952 res!437808) b!670945))

(assert (= (and b!670945 res!437817) b!670946))

(assert (= (and b!670946 res!437807) b!670942))

(declare-fun m!640635 () Bool)

(assert (=> b!670940 m!640635))

(declare-fun m!640637 () Bool)

(assert (=> start!60152 m!640637))

(declare-fun m!640639 () Bool)

(assert (=> b!670944 m!640639))

(declare-fun m!640641 () Bool)

(assert (=> b!670946 m!640641))

(declare-fun m!640643 () Bool)

(assert (=> b!670949 m!640643))

(assert (=> b!670945 m!640641))

(assert (=> b!670945 m!640641))

(declare-fun m!640645 () Bool)

(assert (=> b!670945 m!640645))

(declare-fun m!640647 () Bool)

(assert (=> b!670942 m!640647))

(declare-fun m!640649 () Bool)

(assert (=> b!670938 m!640649))

(declare-fun m!640651 () Bool)

(assert (=> b!670939 m!640651))

(declare-fun m!640653 () Bool)

(assert (=> b!670950 m!640653))

(declare-fun m!640655 () Bool)

(assert (=> b!670948 m!640655))

(assert (=> b!670941 m!640655))

(declare-fun m!640657 () Bool)

(assert (=> b!670943 m!640657))

(check-sat (not b!670940) (not b!670944) (not start!60152) (not b!670939) (not b!670945) (not b!670942) (not b!670950) (not b!670938) (not b!670948) (not b!670943) (not b!670941) (not b!670949))
(check-sat)
