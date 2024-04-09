; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62046 () Bool)

(assert start!62046)

(declare-fun b!693772 () Bool)

(declare-fun res!458028 () Bool)

(declare-fun e!394726 () Bool)

(assert (=> b!693772 (=> (not res!458028) (not e!394726))))

(declare-datatypes ((List!13174 0))(
  ( (Nil!13171) (Cons!13170 (h!14215 (_ BitVec 64)) (t!19461 List!13174)) )
))
(declare-fun acc!681 () List!13174)

(declare-fun contains!3717 (List!13174 (_ BitVec 64)) Bool)

(assert (=> b!693772 (= res!458028 (not (contains!3717 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693773 () Bool)

(declare-fun res!458025 () Bool)

(declare-fun e!394733 () Bool)

(assert (=> b!693773 (=> (not res!458025) (not e!394733))))

(declare-fun e!394725 () Bool)

(assert (=> b!693773 (= res!458025 e!394725)))

(declare-fun res!458038 () Bool)

(assert (=> b!693773 (=> res!458038 e!394725)))

(declare-fun e!394735 () Bool)

(assert (=> b!693773 (= res!458038 e!394735)))

(declare-fun res!458036 () Bool)

(assert (=> b!693773 (=> (not res!458036) (not e!394735))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!693773 (= res!458036 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693774 () Bool)

(declare-fun res!458041 () Bool)

(assert (=> b!693774 (=> (not res!458041) (not e!394726))))

(declare-fun e!394727 () Bool)

(assert (=> b!693774 (= res!458041 e!394727)))

(declare-fun res!458033 () Bool)

(assert (=> b!693774 (=> res!458033 e!394727)))

(declare-fun e!394734 () Bool)

(assert (=> b!693774 (= res!458033 e!394734)))

(declare-fun res!458045 () Bool)

(assert (=> b!693774 (=> (not res!458045) (not e!394734))))

(assert (=> b!693774 (= res!458045 (bvsgt from!3004 i!1382))))

(declare-fun b!693775 () Bool)

(declare-datatypes ((Unit!24490 0))(
  ( (Unit!24491) )
))
(declare-fun e!394732 () Unit!24490)

(declare-fun Unit!24492 () Unit!24490)

(assert (=> b!693775 (= e!394732 Unit!24492)))

(declare-fun b!693776 () Bool)

(declare-fun e!394728 () Bool)

(assert (=> b!693776 (= e!394728 e!394733)))

(declare-fun res!458024 () Bool)

(assert (=> b!693776 (=> (not res!458024) (not e!394733))))

(assert (=> b!693776 (= res!458024 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!316778 () List!13174)

(declare-datatypes ((array!39843 0))(
  ( (array!39844 (arr!19080 (Array (_ BitVec 32) (_ BitVec 64))) (size!19463 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39843)

(declare-fun $colon$colon!427 (List!13174 (_ BitVec 64)) List!13174)

(assert (=> b!693776 (= lt!316778 ($colon$colon!427 acc!681 (select (arr!19080 a!3626) from!3004)))))

(declare-fun res!458027 () Bool)

(assert (=> start!62046 (=> (not res!458027) (not e!394726))))

(assert (=> start!62046 (= res!458027 (and (bvslt (size!19463 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19463 a!3626))))))

(assert (=> start!62046 e!394726))

(assert (=> start!62046 true))

(declare-fun array_inv!14854 (array!39843) Bool)

(assert (=> start!62046 (array_inv!14854 a!3626)))

(declare-fun b!693777 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!693777 (= e!394734 (contains!3717 acc!681 k!2843))))

(declare-fun b!693778 () Bool)

(declare-fun res!458040 () Bool)

(assert (=> b!693778 (=> (not res!458040) (not e!394733))))

(assert (=> b!693778 (= res!458040 (not (contains!3717 lt!316778 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693779 () Bool)

(declare-fun res!458042 () Bool)

(assert (=> b!693779 (=> (not res!458042) (not e!394733))))

(declare-fun noDuplicate!964 (List!13174) Bool)

(assert (=> b!693779 (= res!458042 (noDuplicate!964 lt!316778))))

(declare-fun b!693780 () Bool)

(assert (=> b!693780 (= e!394735 (contains!3717 lt!316778 k!2843))))

(declare-fun b!693781 () Bool)

(declare-fun res!458026 () Bool)

(assert (=> b!693781 (=> (not res!458026) (not e!394726))))

(assert (=> b!693781 (= res!458026 (noDuplicate!964 acc!681))))

(declare-fun b!693782 () Bool)

(declare-fun res!458035 () Bool)

(assert (=> b!693782 (=> (not res!458035) (not e!394726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!693782 (= res!458035 (validKeyInArray!0 k!2843))))

(declare-fun b!693783 () Bool)

(declare-fun res!458022 () Bool)

(assert (=> b!693783 (=> (not res!458022) (not e!394726))))

(assert (=> b!693783 (= res!458022 (validKeyInArray!0 (select (arr!19080 a!3626) from!3004)))))

(declare-fun b!693784 () Bool)

(declare-fun res!458037 () Bool)

(assert (=> b!693784 (=> (not res!458037) (not e!394726))))

(assert (=> b!693784 (= res!458037 (not (contains!3717 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693785 () Bool)

(declare-fun e!394730 () Bool)

(assert (=> b!693785 (= e!394727 e!394730)))

(declare-fun res!458044 () Bool)

(assert (=> b!693785 (=> (not res!458044) (not e!394730))))

(assert (=> b!693785 (= res!458044 (bvsle from!3004 i!1382))))

(declare-fun b!693786 () Bool)

(declare-fun res!458034 () Bool)

(assert (=> b!693786 (=> (not res!458034) (not e!394726))))

(assert (=> b!693786 (= res!458034 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19463 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!693787 () Bool)

(assert (=> b!693787 (= e!394730 (not (contains!3717 acc!681 k!2843)))))

(declare-fun b!693788 () Bool)

(declare-fun Unit!24493 () Unit!24490)

(assert (=> b!693788 (= e!394732 Unit!24493)))

(declare-fun arrayContainsKey!0 (array!39843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!693788 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316776 () Unit!24490)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39843 (_ BitVec 64) (_ BitVec 32)) Unit!24490)

(assert (=> b!693788 (= lt!316776 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!693788 false))

(declare-fun b!693789 () Bool)

(declare-fun e!394731 () Bool)

(assert (=> b!693789 (= e!394725 e!394731)))

(declare-fun res!458039 () Bool)

(assert (=> b!693789 (=> (not res!458039) (not e!394731))))

(assert (=> b!693789 (= res!458039 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693790 () Bool)

(declare-fun res!458043 () Bool)

(assert (=> b!693790 (=> (not res!458043) (not e!394733))))

(assert (=> b!693790 (= res!458043 (not (contains!3717 lt!316778 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693791 () Bool)

(assert (=> b!693791 (= e!394733 false)))

(declare-fun lt!316777 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39843 (_ BitVec 32) List!13174) Bool)

(assert (=> b!693791 (= lt!316777 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316778))))

(declare-fun b!693792 () Bool)

(assert (=> b!693792 (= e!394731 (not (contains!3717 lt!316778 k!2843)))))

(declare-fun b!693793 () Bool)

(assert (=> b!693793 (= e!394726 e!394728)))

(declare-fun res!458023 () Bool)

(assert (=> b!693793 (=> (not res!458023) (not e!394728))))

(assert (=> b!693793 (= res!458023 (not (= (select (arr!19080 a!3626) from!3004) k!2843)))))

(declare-fun lt!316779 () Unit!24490)

(assert (=> b!693793 (= lt!316779 e!394732)))

(declare-fun c!78242 () Bool)

(assert (=> b!693793 (= c!78242 (= (select (arr!19080 a!3626) from!3004) k!2843))))

(declare-fun b!693794 () Bool)

(declare-fun res!458032 () Bool)

(assert (=> b!693794 (=> (not res!458032) (not e!394726))))

(assert (=> b!693794 (= res!458032 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!693795 () Bool)

(declare-fun res!458030 () Bool)

(assert (=> b!693795 (=> (not res!458030) (not e!394726))))

(assert (=> b!693795 (= res!458030 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19463 a!3626))))))

(declare-fun b!693796 () Bool)

(declare-fun res!458031 () Bool)

(assert (=> b!693796 (=> (not res!458031) (not e!394726))))

(assert (=> b!693796 (= res!458031 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13171))))

(declare-fun b!693797 () Bool)

(declare-fun res!458029 () Bool)

(assert (=> b!693797 (=> (not res!458029) (not e!394726))))

(assert (=> b!693797 (= res!458029 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!62046 res!458027) b!693781))

(assert (= (and b!693781 res!458026) b!693784))

(assert (= (and b!693784 res!458037) b!693772))

(assert (= (and b!693772 res!458028) b!693774))

(assert (= (and b!693774 res!458045) b!693777))

(assert (= (and b!693774 (not res!458033)) b!693785))

(assert (= (and b!693785 res!458044) b!693787))

(assert (= (and b!693774 res!458041) b!693796))

(assert (= (and b!693796 res!458031) b!693794))

(assert (= (and b!693794 res!458032) b!693795))

(assert (= (and b!693795 res!458030) b!693782))

(assert (= (and b!693782 res!458035) b!693797))

(assert (= (and b!693797 res!458029) b!693786))

(assert (= (and b!693786 res!458034) b!693783))

(assert (= (and b!693783 res!458022) b!693793))

(assert (= (and b!693793 c!78242) b!693788))

(assert (= (and b!693793 (not c!78242)) b!693775))

(assert (= (and b!693793 res!458023) b!693776))

(assert (= (and b!693776 res!458024) b!693779))

(assert (= (and b!693779 res!458042) b!693790))

(assert (= (and b!693790 res!458043) b!693778))

(assert (= (and b!693778 res!458040) b!693773))

(assert (= (and b!693773 res!458036) b!693780))

(assert (= (and b!693773 (not res!458038)) b!693789))

(assert (= (and b!693789 res!458039) b!693792))

(assert (= (and b!693773 res!458025) b!693791))

(declare-fun m!655905 () Bool)

(assert (=> b!693791 m!655905))

(declare-fun m!655907 () Bool)

(assert (=> b!693792 m!655907))

(declare-fun m!655909 () Bool)

(assert (=> b!693787 m!655909))

(assert (=> b!693780 m!655907))

(declare-fun m!655911 () Bool)

(assert (=> b!693793 m!655911))

(declare-fun m!655913 () Bool)

(assert (=> b!693784 m!655913))

(declare-fun m!655915 () Bool)

(assert (=> b!693796 m!655915))

(declare-fun m!655917 () Bool)

(assert (=> b!693772 m!655917))

(declare-fun m!655919 () Bool)

(assert (=> b!693788 m!655919))

(declare-fun m!655921 () Bool)

(assert (=> b!693788 m!655921))

(declare-fun m!655923 () Bool)

(assert (=> start!62046 m!655923))

(declare-fun m!655925 () Bool)

(assert (=> b!693781 m!655925))

(declare-fun m!655927 () Bool)

(assert (=> b!693790 m!655927))

(assert (=> b!693783 m!655911))

(assert (=> b!693783 m!655911))

(declare-fun m!655929 () Bool)

(assert (=> b!693783 m!655929))

(declare-fun m!655931 () Bool)

(assert (=> b!693794 m!655931))

(assert (=> b!693776 m!655911))

(assert (=> b!693776 m!655911))

(declare-fun m!655933 () Bool)

(assert (=> b!693776 m!655933))

(assert (=> b!693777 m!655909))

(declare-fun m!655935 () Bool)

(assert (=> b!693778 m!655935))

(declare-fun m!655937 () Bool)

(assert (=> b!693797 m!655937))

(declare-fun m!655939 () Bool)

(assert (=> b!693782 m!655939))

(declare-fun m!655941 () Bool)

(assert (=> b!693779 m!655941))

(push 1)

