; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59752 () Bool)

(assert start!59752)

(declare-fun b!659746 () Bool)

(declare-fun res!427992 () Bool)

(declare-fun e!379091 () Bool)

(assert (=> b!659746 (=> (not res!427992) (not e!379091))))

(declare-datatypes ((List!12669 0))(
  ( (Nil!12666) (Cons!12665 (h!13710 (_ BitVec 64)) (t!18905 List!12669)) )
))
(declare-fun acc!681 () List!12669)

(declare-fun contains!3212 (List!12669 (_ BitVec 64)) Bool)

(assert (=> b!659746 (= res!427992 (not (contains!3212 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!427991 () Bool)

(assert (=> start!59752 (=> (not res!427991) (not e!379091))))

(declare-datatypes ((array!38770 0))(
  ( (array!38771 (arr!18575 (Array (_ BitVec 32) (_ BitVec 64))) (size!18939 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38770)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59752 (= res!427991 (and (bvslt (size!18939 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18939 a!3626))))))

(assert (=> start!59752 e!379091))

(assert (=> start!59752 true))

(declare-fun array_inv!14349 (array!38770) Bool)

(assert (=> start!59752 (array_inv!14349 a!3626)))

(declare-fun b!659747 () Bool)

(declare-fun e!379093 () Bool)

(declare-fun e!379094 () Bool)

(assert (=> b!659747 (= e!379093 e!379094)))

(declare-fun res!427989 () Bool)

(assert (=> b!659747 (=> (not res!427989) (not e!379094))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659747 (= res!427989 (bvsle from!3004 i!1382))))

(declare-fun b!659748 () Bool)

(declare-fun res!427984 () Bool)

(assert (=> b!659748 (=> (not res!427984) (not e!379091))))

(assert (=> b!659748 (= res!427984 (bvsle #b00000000000000000000000000000000 (size!18939 a!3626)))))

(declare-fun b!659749 () Bool)

(declare-fun res!427994 () Bool)

(assert (=> b!659749 (=> (not res!427994) (not e!379091))))

(assert (=> b!659749 (= res!427994 (not (contains!3212 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659750 () Bool)

(declare-fun e!379095 () Bool)

(assert (=> b!659750 (= e!379095 (contains!3212 Nil!12666 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659751 () Bool)

(declare-fun e!379096 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!659751 (= e!379096 (contains!3212 acc!681 k!2843))))

(declare-fun b!659752 () Bool)

(assert (=> b!659752 (= e!379094 (not (contains!3212 acc!681 k!2843)))))

(declare-fun b!659753 () Bool)

(assert (=> b!659753 (= e!379091 e!379095)))

(declare-fun res!427993 () Bool)

(assert (=> b!659753 (=> res!427993 e!379095)))

(assert (=> b!659753 (= res!427993 (contains!3212 Nil!12666 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659754 () Bool)

(declare-fun res!427986 () Bool)

(assert (=> b!659754 (=> (not res!427986) (not e!379091))))

(assert (=> b!659754 (= res!427986 e!379093)))

(declare-fun res!427988 () Bool)

(assert (=> b!659754 (=> res!427988 e!379093)))

(assert (=> b!659754 (= res!427988 e!379096)))

(declare-fun res!427987 () Bool)

(assert (=> b!659754 (=> (not res!427987) (not e!379096))))

(assert (=> b!659754 (= res!427987 (bvsgt from!3004 i!1382))))

(declare-fun b!659755 () Bool)

(declare-fun res!427985 () Bool)

(assert (=> b!659755 (=> (not res!427985) (not e!379091))))

(declare-fun noDuplicate!459 (List!12669) Bool)

(assert (=> b!659755 (= res!427985 (noDuplicate!459 Nil!12666))))

(declare-fun b!659756 () Bool)

(declare-fun res!427990 () Bool)

(assert (=> b!659756 (=> (not res!427990) (not e!379091))))

(assert (=> b!659756 (= res!427990 (noDuplicate!459 acc!681))))

(assert (= (and start!59752 res!427991) b!659756))

(assert (= (and b!659756 res!427990) b!659749))

(assert (= (and b!659749 res!427994) b!659746))

(assert (= (and b!659746 res!427992) b!659754))

(assert (= (and b!659754 res!427987) b!659751))

(assert (= (and b!659754 (not res!427988)) b!659747))

(assert (= (and b!659747 res!427989) b!659752))

(assert (= (and b!659754 res!427986) b!659748))

(assert (= (and b!659748 res!427984) b!659755))

(assert (= (and b!659755 res!427985) b!659753))

(assert (= (and b!659753 (not res!427993)) b!659750))

(declare-fun m!632675 () Bool)

(assert (=> b!659749 m!632675))

(declare-fun m!632677 () Bool)

(assert (=> start!59752 m!632677))

(declare-fun m!632679 () Bool)

(assert (=> b!659746 m!632679))

(declare-fun m!632681 () Bool)

(assert (=> b!659750 m!632681))

(declare-fun m!632683 () Bool)

(assert (=> b!659752 m!632683))

(declare-fun m!632685 () Bool)

(assert (=> b!659753 m!632685))

(assert (=> b!659751 m!632683))

(declare-fun m!632687 () Bool)

(assert (=> b!659755 m!632687))

(declare-fun m!632689 () Bool)

(assert (=> b!659756 m!632689))

(push 1)

(assert (not b!659749))

(assert (not b!659746))

(assert (not b!659755))

(assert (not start!59752))

(assert (not b!659751))

(assert (not b!659750))

(assert (not b!659752))

(assert (not b!659753))

(assert (not b!659756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93049 () Bool)

(declare-fun lt!308677 () Bool)

(declare-fun content!261 (List!12669) (Set (_ BitVec 64)))

(assert (=> d!93049 (= lt!308677 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!261 Nil!12666)))))

(declare-fun e!379134 () Bool)

(assert (=> d!93049 (= lt!308677 e!379134)))

(declare-fun res!428031 () Bool)

(assert (=> d!93049 (=> (not res!428031) (not e!379134))))

(assert (=> d!93049 (= res!428031 (is-Cons!12665 Nil!12666))))

(assert (=> d!93049 (= (contains!3212 Nil!12666 #b1000000000000000000000000000000000000000000000000000000000000000) lt!308677)))

(declare-fun b!659793 () Bool)

(declare-fun e!379133 () Bool)

(assert (=> b!659793 (= e!379134 e!379133)))

(declare-fun res!428032 () Bool)

(assert (=> b!659793 (=> res!428032 e!379133)))

(assert (=> b!659793 (= res!428032 (= (h!13710 Nil!12666) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659794 () Bool)

(assert (=> b!659794 (= e!379133 (contains!3212 (t!18905 Nil!12666) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93049 res!428031) b!659793))

(assert (= (and b!659793 (not res!428032)) b!659794))

(declare-fun m!632729 () Bool)

(assert (=> d!93049 m!632729))

(declare-fun m!632731 () Bool)

(assert (=> d!93049 m!632731))

(declare-fun m!632733 () Bool)

(assert (=> b!659794 m!632733))

(assert (=> b!659750 d!93049))

(declare-fun d!93061 () Bool)

(declare-fun lt!308678 () Bool)

(assert (=> d!93061 (= lt!308678 (member k!2843 (content!261 acc!681)))))

(declare-fun e!379136 () Bool)

(assert (=> d!93061 (= lt!308678 e!379136)))

(declare-fun res!428033 () Bool)

(assert (=> d!93061 (=> (not res!428033) (not e!379136))))

(assert (=> d!93061 (= res!428033 (is-Cons!12665 acc!681))))

(assert (=> d!93061 (= (contains!3212 acc!681 k!2843) lt!308678)))

(declare-fun b!659795 () Bool)

(declare-fun e!379135 () Bool)

(assert (=> b!659795 (= e!379136 e!379135)))

(declare-fun res!428034 () Bool)

(assert (=> b!659795 (=> res!428034 e!379135)))

(assert (=> b!659795 (= res!428034 (= (h!13710 acc!681) k!2843))))

(declare-fun b!659796 () Bool)

(assert (=> b!659796 (= e!379135 (contains!3212 (t!18905 acc!681) k!2843))))

(assert (= (and d!93061 res!428033) b!659795))

(assert (= (and b!659795 (not res!428034)) b!659796))

(declare-fun m!632735 () Bool)

(assert (=> d!93061 m!632735))

(declare-fun m!632737 () Bool)

(assert (=> d!93061 m!632737))

(declare-fun m!632739 () Bool)

(assert (=> b!659796 m!632739))

(assert (=> b!659751 d!93061))

(declare-fun d!93063 () Bool)

(declare-fun res!428051 () Bool)

(declare-fun e!379153 () Bool)

(assert (=> d!93063 (=> res!428051 e!379153)))

(assert (=> d!93063 (= res!428051 (is-Nil!12666 acc!681))))

(assert (=> d!93063 (= (noDuplicate!459 acc!681) e!379153)))

(declare-fun b!659813 () Bool)

(declare-fun e!379154 () Bool)

(assert (=> b!659813 (= e!379153 e!379154)))

(declare-fun res!428052 () Bool)

(assert (=> b!659813 (=> (not res!428052) (not e!379154))))

(assert (=> b!659813 (= res!428052 (not (contains!3212 (t!18905 acc!681) (h!13710 acc!681))))))

(declare-fun b!659814 () Bool)

(assert (=> b!659814 (= e!379154 (noDuplicate!459 (t!18905 acc!681)))))

(assert (= (and d!93063 (not res!428051)) b!659813))

(assert (= (and b!659813 res!428052) b!659814))

(declare-fun m!632767 () Bool)

(assert (=> b!659813 m!632767))

(declare-fun m!632769 () Bool)

(assert (=> b!659814 m!632769))

(assert (=> b!659756 d!93063))

(declare-fun d!93077 () Bool)

(declare-fun lt!308683 () Bool)

(assert (=> d!93077 (= lt!308683 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!261 acc!681)))))

(declare-fun e!379156 () Bool)

(assert (=> d!93077 (= lt!308683 e!379156)))

(declare-fun res!428053 () Bool)

(assert (=> d!93077 (=> (not res!428053) (not e!379156))))

(assert (=> d!93077 (= res!428053 (is-Cons!12665 acc!681))))

(assert (=> d!93077 (= (contains!3212 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!308683)))

(declare-fun b!659815 () Bool)

(declare-fun e!379155 () Bool)

(assert (=> b!659815 (= e!379156 e!379155)))

(declare-fun res!428054 () Bool)

(assert (=> b!659815 (=> res!428054 e!379155)))

(assert (=> b!659815 (= res!428054 (= (h!13710 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659816 () Bool)

(assert (=> b!659816 (= e!379155 (contains!3212 (t!18905 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93077 res!428053) b!659815))

(assert (= (and b!659815 (not res!428054)) b!659816))

(assert (=> d!93077 m!632735))

(declare-fun m!632771 () Bool)

(assert (=> d!93077 m!632771))

(declare-fun m!632773 () Bool)

(assert (=> b!659816 m!632773))

(assert (=> b!659746 d!93077))

(assert (=> b!659752 d!93061))

(declare-fun d!93079 () Bool)

(assert (=> d!93079 (= (array_inv!14349 a!3626) (bvsge (size!18939 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!59752 d!93079))

(declare-fun d!93081 () Bool)

(declare-fun lt!308684 () Bool)

(assert (=> d!93081 (= lt!308684 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!261 Nil!12666)))))

(declare-fun e!379158 () Bool)

(assert (=> d!93081 (= lt!308684 e!379158)))

(declare-fun res!428055 () Bool)

(assert (=> d!93081 (=> (not res!428055) (not e!379158))))

(assert (=> d!93081 (= res!428055 (is-Cons!12665 Nil!12666))))

(assert (=> d!93081 (= (contains!3212 Nil!12666 #b0000000000000000000000000000000000000000000000000000000000000000) lt!308684)))

(declare-fun b!659817 () Bool)

(declare-fun e!379157 () Bool)

(assert (=> b!659817 (= e!379158 e!379157)))

(declare-fun res!428056 () Bool)

(assert (=> b!659817 (=> res!428056 e!379157)))

