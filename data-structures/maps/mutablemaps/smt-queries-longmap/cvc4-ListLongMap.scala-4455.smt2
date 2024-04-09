; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62044 () Bool)

(assert start!62044)

(declare-fun b!693694 () Bool)

(declare-fun res!457959 () Bool)

(declare-fun e!394692 () Bool)

(assert (=> b!693694 (=> (not res!457959) (not e!394692))))

(declare-datatypes ((List!13173 0))(
  ( (Nil!13170) (Cons!13169 (h!14214 (_ BitVec 64)) (t!19460 List!13173)) )
))
(declare-fun lt!316767 () List!13173)

(declare-fun contains!3716 (List!13173 (_ BitVec 64)) Bool)

(assert (=> b!693694 (= res!457959 (not (contains!3716 lt!316767 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693695 () Bool)

(declare-fun res!457956 () Bool)

(declare-fun e!394701 () Bool)

(assert (=> b!693695 (=> (not res!457956) (not e!394701))))

(declare-fun acc!681 () List!13173)

(assert (=> b!693695 (= res!457956 (not (contains!3716 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693696 () Bool)

(declare-fun res!457958 () Bool)

(assert (=> b!693696 (=> (not res!457958) (not e!394701))))

(declare-datatypes ((array!39841 0))(
  ( (array!39842 (arr!19079 (Array (_ BitVec 32) (_ BitVec 64))) (size!19462 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39841)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39841 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!693696 (= res!457958 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!693697 () Bool)

(declare-fun e!394697 () Bool)

(assert (=> b!693697 (= e!394697 e!394692)))

(declare-fun res!457953 () Bool)

(assert (=> b!693697 (=> (not res!457953) (not e!394692))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!693697 (= res!457953 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!426 (List!13173 (_ BitVec 64)) List!13173)

(assert (=> b!693697 (= lt!316767 ($colon$colon!426 acc!681 (select (arr!19079 a!3626) from!3004)))))

(declare-fun res!457955 () Bool)

(assert (=> start!62044 (=> (not res!457955) (not e!394701))))

(assert (=> start!62044 (= res!457955 (and (bvslt (size!19462 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19462 a!3626))))))

(assert (=> start!62044 e!394701))

(assert (=> start!62044 true))

(declare-fun array_inv!14853 (array!39841) Bool)

(assert (=> start!62044 (array_inv!14853 a!3626)))

(declare-fun b!693698 () Bool)

(declare-fun e!394698 () Bool)

(assert (=> b!693698 (= e!394698 (not (contains!3716 lt!316767 k!2843)))))

(declare-fun b!693699 () Bool)

(declare-fun res!457972 () Bool)

(assert (=> b!693699 (=> (not res!457972) (not e!394692))))

(declare-fun noDuplicate!963 (List!13173) Bool)

(assert (=> b!693699 (= res!457972 (noDuplicate!963 lt!316767))))

(declare-fun b!693700 () Bool)

(declare-fun res!457961 () Bool)

(assert (=> b!693700 (=> (not res!457961) (not e!394701))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!693700 (= res!457961 (validKeyInArray!0 (select (arr!19079 a!3626) from!3004)))))

(declare-fun b!693701 () Bool)

(declare-fun res!457966 () Bool)

(assert (=> b!693701 (=> (not res!457966) (not e!394701))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!693701 (= res!457966 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19462 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!693702 () Bool)

(declare-fun res!457973 () Bool)

(assert (=> b!693702 (=> (not res!457973) (not e!394701))))

(declare-fun e!394693 () Bool)

(assert (=> b!693702 (= res!457973 e!394693)))

(declare-fun res!457963 () Bool)

(assert (=> b!693702 (=> res!457963 e!394693)))

(declare-fun e!394694 () Bool)

(assert (=> b!693702 (= res!457963 e!394694)))

(declare-fun res!457960 () Bool)

(assert (=> b!693702 (=> (not res!457960) (not e!394694))))

(assert (=> b!693702 (= res!457960 (bvsgt from!3004 i!1382))))

(declare-fun b!693703 () Bool)

(declare-fun res!457970 () Bool)

(assert (=> b!693703 (=> (not res!457970) (not e!394701))))

(assert (=> b!693703 (= res!457970 (not (contains!3716 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693704 () Bool)

(declare-fun res!457965 () Bool)

(assert (=> b!693704 (=> (not res!457965) (not e!394692))))

(assert (=> b!693704 (= res!457965 (not (contains!3716 lt!316767 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693705 () Bool)

(declare-fun e!394695 () Bool)

(assert (=> b!693705 (= e!394695 e!394698)))

(declare-fun res!457962 () Bool)

(assert (=> b!693705 (=> (not res!457962) (not e!394698))))

(assert (=> b!693705 (= res!457962 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693706 () Bool)

(declare-fun e!394700 () Bool)

(assert (=> b!693706 (= e!394693 e!394700)))

(declare-fun res!457954 () Bool)

(assert (=> b!693706 (=> (not res!457954) (not e!394700))))

(assert (=> b!693706 (= res!457954 (bvsle from!3004 i!1382))))

(declare-fun b!693707 () Bool)

(assert (=> b!693707 (= e!394701 e!394697)))

(declare-fun res!457967 () Bool)

(assert (=> b!693707 (=> (not res!457967) (not e!394697))))

(assert (=> b!693707 (= res!457967 (not (= (select (arr!19079 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!24486 0))(
  ( (Unit!24487) )
))
(declare-fun lt!316765 () Unit!24486)

(declare-fun e!394696 () Unit!24486)

(assert (=> b!693707 (= lt!316765 e!394696)))

(declare-fun c!78239 () Bool)

(assert (=> b!693707 (= c!78239 (= (select (arr!19079 a!3626) from!3004) k!2843))))

(declare-fun b!693708 () Bool)

(declare-fun Unit!24488 () Unit!24486)

(assert (=> b!693708 (= e!394696 Unit!24488)))

(assert (=> b!693708 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316766 () Unit!24486)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39841 (_ BitVec 64) (_ BitVec 32)) Unit!24486)

(assert (=> b!693708 (= lt!316766 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!693708 false))

(declare-fun b!693709 () Bool)

(declare-fun Unit!24489 () Unit!24486)

(assert (=> b!693709 (= e!394696 Unit!24489)))

(declare-fun b!693710 () Bool)

(assert (=> b!693710 (= e!394692 false)))

(declare-fun lt!316764 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39841 (_ BitVec 32) List!13173) Bool)

(assert (=> b!693710 (= lt!316764 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316767))))

(declare-fun b!693711 () Bool)

(declare-fun res!457951 () Bool)

(assert (=> b!693711 (=> (not res!457951) (not e!394701))))

(assert (=> b!693711 (= res!457951 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13170))))

(declare-fun b!693712 () Bool)

(declare-fun res!457952 () Bool)

(assert (=> b!693712 (=> (not res!457952) (not e!394701))))

(assert (=> b!693712 (= res!457952 (validKeyInArray!0 k!2843))))

(declare-fun b!693713 () Bool)

(declare-fun e!394699 () Bool)

(assert (=> b!693713 (= e!394699 (contains!3716 lt!316767 k!2843))))

(declare-fun b!693714 () Bool)

(assert (=> b!693714 (= e!394694 (contains!3716 acc!681 k!2843))))

(declare-fun b!693715 () Bool)

(declare-fun res!457964 () Bool)

(assert (=> b!693715 (=> (not res!457964) (not e!394701))))

(assert (=> b!693715 (= res!457964 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19462 a!3626))))))

(declare-fun b!693716 () Bool)

(assert (=> b!693716 (= e!394700 (not (contains!3716 acc!681 k!2843)))))

(declare-fun b!693717 () Bool)

(declare-fun res!457968 () Bool)

(assert (=> b!693717 (=> (not res!457968) (not e!394701))))

(assert (=> b!693717 (= res!457968 (noDuplicate!963 acc!681))))

(declare-fun b!693718 () Bool)

(declare-fun res!457969 () Bool)

(assert (=> b!693718 (=> (not res!457969) (not e!394692))))

(assert (=> b!693718 (= res!457969 e!394695)))

(declare-fun res!457971 () Bool)

(assert (=> b!693718 (=> res!457971 e!394695)))

(assert (=> b!693718 (= res!457971 e!394699)))

(declare-fun res!457957 () Bool)

(assert (=> b!693718 (=> (not res!457957) (not e!394699))))

(assert (=> b!693718 (= res!457957 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693719 () Bool)

(declare-fun res!457950 () Bool)

(assert (=> b!693719 (=> (not res!457950) (not e!394701))))

(assert (=> b!693719 (= res!457950 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!62044 res!457955) b!693717))

(assert (= (and b!693717 res!457968) b!693695))

(assert (= (and b!693695 res!457956) b!693703))

(assert (= (and b!693703 res!457970) b!693702))

(assert (= (and b!693702 res!457960) b!693714))

(assert (= (and b!693702 (not res!457963)) b!693706))

(assert (= (and b!693706 res!457954) b!693716))

(assert (= (and b!693702 res!457973) b!693711))

(assert (= (and b!693711 res!457951) b!693719))

(assert (= (and b!693719 res!457950) b!693715))

(assert (= (and b!693715 res!457964) b!693712))

(assert (= (and b!693712 res!457952) b!693696))

(assert (= (and b!693696 res!457958) b!693701))

(assert (= (and b!693701 res!457966) b!693700))

(assert (= (and b!693700 res!457961) b!693707))

(assert (= (and b!693707 c!78239) b!693708))

(assert (= (and b!693707 (not c!78239)) b!693709))

(assert (= (and b!693707 res!457967) b!693697))

(assert (= (and b!693697 res!457953) b!693699))

(assert (= (and b!693699 res!457972) b!693694))

(assert (= (and b!693694 res!457959) b!693704))

(assert (= (and b!693704 res!457965) b!693718))

(assert (= (and b!693718 res!457957) b!693713))

(assert (= (and b!693718 (not res!457971)) b!693705))

(assert (= (and b!693705 res!457962) b!693698))

(assert (= (and b!693718 res!457969) b!693710))

(declare-fun m!655867 () Bool)

(assert (=> b!693696 m!655867))

(declare-fun m!655869 () Bool)

(assert (=> b!693714 m!655869))

(declare-fun m!655871 () Bool)

(assert (=> b!693698 m!655871))

(declare-fun m!655873 () Bool)

(assert (=> b!693717 m!655873))

(declare-fun m!655875 () Bool)

(assert (=> start!62044 m!655875))

(declare-fun m!655877 () Bool)

(assert (=> b!693697 m!655877))

(assert (=> b!693697 m!655877))

(declare-fun m!655879 () Bool)

(assert (=> b!693697 m!655879))

(declare-fun m!655881 () Bool)

(assert (=> b!693719 m!655881))

(declare-fun m!655883 () Bool)

(assert (=> b!693704 m!655883))

(declare-fun m!655885 () Bool)

(assert (=> b!693711 m!655885))

(assert (=> b!693700 m!655877))

(assert (=> b!693700 m!655877))

(declare-fun m!655887 () Bool)

(assert (=> b!693700 m!655887))

(declare-fun m!655889 () Bool)

(assert (=> b!693710 m!655889))

(declare-fun m!655891 () Bool)

(assert (=> b!693712 m!655891))

(assert (=> b!693713 m!655871))

(assert (=> b!693707 m!655877))

(assert (=> b!693716 m!655869))

(declare-fun m!655893 () Bool)

(assert (=> b!693703 m!655893))

(declare-fun m!655895 () Bool)

(assert (=> b!693695 m!655895))

(declare-fun m!655897 () Bool)

(assert (=> b!693708 m!655897))

(declare-fun m!655899 () Bool)

(assert (=> b!693708 m!655899))

(declare-fun m!655901 () Bool)

(assert (=> b!693699 m!655901))

(declare-fun m!655903 () Bool)

(assert (=> b!693694 m!655903))

(push 1)

