; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62042 () Bool)

(assert start!62042)

(declare-fun b!693616 () Bool)

(declare-fun res!457882 () Bool)

(declare-fun e!394666 () Bool)

(assert (=> b!693616 (=> (not res!457882) (not e!394666))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!693616 (= res!457882 (validKeyInArray!0 k0!2843))))

(declare-fun b!693617 () Bool)

(declare-fun e!394667 () Bool)

(declare-datatypes ((List!13172 0))(
  ( (Nil!13169) (Cons!13168 (h!14213 (_ BitVec 64)) (t!19459 List!13172)) )
))
(declare-fun acc!681 () List!13172)

(declare-fun contains!3715 (List!13172 (_ BitVec 64)) Bool)

(assert (=> b!693617 (= e!394667 (not (contains!3715 acc!681 k0!2843)))))

(declare-fun b!693618 () Bool)

(declare-fun res!457886 () Bool)

(assert (=> b!693618 (=> (not res!457886) (not e!394666))))

(assert (=> b!693618 (= res!457886 (not (contains!3715 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693619 () Bool)

(declare-fun res!457894 () Bool)

(assert (=> b!693619 (=> (not res!457894) (not e!394666))))

(declare-datatypes ((array!39839 0))(
  ( (array!39840 (arr!19078 (Array (_ BitVec 32) (_ BitVec 64))) (size!19461 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39839)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!693619 (= res!457894 (validKeyInArray!0 (select (arr!19078 a!3626) from!3004)))))

(declare-fun b!693620 () Bool)

(declare-fun res!457893 () Bool)

(assert (=> b!693620 (=> (not res!457893) (not e!394666))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!693620 (= res!457893 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19461 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!693621 () Bool)

(declare-fun e!394663 () Bool)

(assert (=> b!693621 (= e!394663 false)))

(declare-fun lt!316752 () List!13172)

(declare-fun lt!316753 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39839 (_ BitVec 32) List!13172) Bool)

(assert (=> b!693621 (= lt!316753 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316752))))

(declare-fun b!693622 () Bool)

(declare-fun e!394664 () Bool)

(assert (=> b!693622 (= e!394664 (contains!3715 acc!681 k0!2843))))

(declare-fun b!693623 () Bool)

(declare-fun e!394669 () Bool)

(assert (=> b!693623 (= e!394669 (not (contains!3715 lt!316752 k0!2843)))))

(declare-fun b!693624 () Bool)

(declare-fun res!457897 () Bool)

(assert (=> b!693624 (=> (not res!457897) (not e!394666))))

(assert (=> b!693624 (= res!457897 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13169))))

(declare-fun b!693625 () Bool)

(declare-fun res!457883 () Bool)

(assert (=> b!693625 (=> (not res!457883) (not e!394666))))

(assert (=> b!693625 (= res!457883 (not (contains!3715 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693626 () Bool)

(declare-fun res!457880 () Bool)

(assert (=> b!693626 (=> (not res!457880) (not e!394666))))

(assert (=> b!693626 (= res!457880 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!693627 () Bool)

(declare-fun e!394665 () Bool)

(assert (=> b!693627 (= e!394666 e!394665)))

(declare-fun res!457878 () Bool)

(assert (=> b!693627 (=> (not res!457878) (not e!394665))))

(assert (=> b!693627 (= res!457878 (not (= (select (arr!19078 a!3626) from!3004) k0!2843)))))

(declare-datatypes ((Unit!24482 0))(
  ( (Unit!24483) )
))
(declare-fun lt!316755 () Unit!24482)

(declare-fun e!394668 () Unit!24482)

(assert (=> b!693627 (= lt!316755 e!394668)))

(declare-fun c!78236 () Bool)

(assert (=> b!693627 (= c!78236 (= (select (arr!19078 a!3626) from!3004) k0!2843))))

(declare-fun b!693629 () Bool)

(declare-fun e!394660 () Bool)

(assert (=> b!693629 (= e!394660 e!394667)))

(declare-fun res!457889 () Bool)

(assert (=> b!693629 (=> (not res!457889) (not e!394667))))

(assert (=> b!693629 (= res!457889 (bvsle from!3004 i!1382))))

(declare-fun b!693630 () Bool)

(declare-fun res!457891 () Bool)

(assert (=> b!693630 (=> (not res!457891) (not e!394666))))

(assert (=> b!693630 (= res!457891 e!394660)))

(declare-fun res!457879 () Bool)

(assert (=> b!693630 (=> res!457879 e!394660)))

(assert (=> b!693630 (= res!457879 e!394664)))

(declare-fun res!457899 () Bool)

(assert (=> b!693630 (=> (not res!457899) (not e!394664))))

(assert (=> b!693630 (= res!457899 (bvsgt from!3004 i!1382))))

(declare-fun b!693631 () Bool)

(declare-fun e!394659 () Bool)

(assert (=> b!693631 (= e!394659 (contains!3715 lt!316752 k0!2843))))

(declare-fun b!693632 () Bool)

(declare-fun res!457900 () Bool)

(assert (=> b!693632 (=> (not res!457900) (not e!394663))))

(declare-fun e!394661 () Bool)

(assert (=> b!693632 (= res!457900 e!394661)))

(declare-fun res!457901 () Bool)

(assert (=> b!693632 (=> res!457901 e!394661)))

(assert (=> b!693632 (= res!457901 e!394659)))

(declare-fun res!457892 () Bool)

(assert (=> b!693632 (=> (not res!457892) (not e!394659))))

(assert (=> b!693632 (= res!457892 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693633 () Bool)

(declare-fun res!457890 () Bool)

(assert (=> b!693633 (=> (not res!457890) (not e!394663))))

(assert (=> b!693633 (= res!457890 (not (contains!3715 lt!316752 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693634 () Bool)

(declare-fun res!457884 () Bool)

(assert (=> b!693634 (=> (not res!457884) (not e!394666))))

(declare-fun noDuplicate!962 (List!13172) Bool)

(assert (=> b!693634 (= res!457884 (noDuplicate!962 acc!681))))

(declare-fun b!693635 () Bool)

(declare-fun res!457885 () Bool)

(assert (=> b!693635 (=> (not res!457885) (not e!394666))))

(assert (=> b!693635 (= res!457885 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19461 a!3626))))))

(declare-fun b!693636 () Bool)

(declare-fun Unit!24484 () Unit!24482)

(assert (=> b!693636 (= e!394668 Unit!24484)))

(declare-fun arrayContainsKey!0 (array!39839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!693636 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316754 () Unit!24482)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39839 (_ BitVec 64) (_ BitVec 32)) Unit!24482)

(assert (=> b!693636 (= lt!316754 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!693636 false))

(declare-fun b!693637 () Bool)

(assert (=> b!693637 (= e!394665 e!394663)))

(declare-fun res!457895 () Bool)

(assert (=> b!693637 (=> (not res!457895) (not e!394663))))

(assert (=> b!693637 (= res!457895 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!425 (List!13172 (_ BitVec 64)) List!13172)

(assert (=> b!693637 (= lt!316752 ($colon$colon!425 acc!681 (select (arr!19078 a!3626) from!3004)))))

(declare-fun b!693638 () Bool)

(assert (=> b!693638 (= e!394661 e!394669)))

(declare-fun res!457888 () Bool)

(assert (=> b!693638 (=> (not res!457888) (not e!394669))))

(assert (=> b!693638 (= res!457888 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!457896 () Bool)

(assert (=> start!62042 (=> (not res!457896) (not e!394666))))

(assert (=> start!62042 (= res!457896 (and (bvslt (size!19461 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19461 a!3626))))))

(assert (=> start!62042 e!394666))

(assert (=> start!62042 true))

(declare-fun array_inv!14852 (array!39839) Bool)

(assert (=> start!62042 (array_inv!14852 a!3626)))

(declare-fun b!693628 () Bool)

(declare-fun res!457887 () Bool)

(assert (=> b!693628 (=> (not res!457887) (not e!394666))))

(assert (=> b!693628 (= res!457887 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!693639 () Bool)

(declare-fun res!457881 () Bool)

(assert (=> b!693639 (=> (not res!457881) (not e!394663))))

(assert (=> b!693639 (= res!457881 (noDuplicate!962 lt!316752))))

(declare-fun b!693640 () Bool)

(declare-fun res!457898 () Bool)

(assert (=> b!693640 (=> (not res!457898) (not e!394663))))

(assert (=> b!693640 (= res!457898 (not (contains!3715 lt!316752 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693641 () Bool)

(declare-fun Unit!24485 () Unit!24482)

(assert (=> b!693641 (= e!394668 Unit!24485)))

(assert (= (and start!62042 res!457896) b!693634))

(assert (= (and b!693634 res!457884) b!693625))

(assert (= (and b!693625 res!457883) b!693618))

(assert (= (and b!693618 res!457886) b!693630))

(assert (= (and b!693630 res!457899) b!693622))

(assert (= (and b!693630 (not res!457879)) b!693629))

(assert (= (and b!693629 res!457889) b!693617))

(assert (= (and b!693630 res!457891) b!693624))

(assert (= (and b!693624 res!457897) b!693626))

(assert (= (and b!693626 res!457880) b!693635))

(assert (= (and b!693635 res!457885) b!693616))

(assert (= (and b!693616 res!457882) b!693628))

(assert (= (and b!693628 res!457887) b!693620))

(assert (= (and b!693620 res!457893) b!693619))

(assert (= (and b!693619 res!457894) b!693627))

(assert (= (and b!693627 c!78236) b!693636))

(assert (= (and b!693627 (not c!78236)) b!693641))

(assert (= (and b!693627 res!457878) b!693637))

(assert (= (and b!693637 res!457895) b!693639))

(assert (= (and b!693639 res!457881) b!693633))

(assert (= (and b!693633 res!457890) b!693640))

(assert (= (and b!693640 res!457898) b!693632))

(assert (= (and b!693632 res!457892) b!693631))

(assert (= (and b!693632 (not res!457901)) b!693638))

(assert (= (and b!693638 res!457888) b!693623))

(assert (= (and b!693632 res!457900) b!693621))

(declare-fun m!655829 () Bool)

(assert (=> start!62042 m!655829))

(declare-fun m!655831 () Bool)

(assert (=> b!693616 m!655831))

(declare-fun m!655833 () Bool)

(assert (=> b!693633 m!655833))

(declare-fun m!655835 () Bool)

(assert (=> b!693640 m!655835))

(declare-fun m!655837 () Bool)

(assert (=> b!693621 m!655837))

(declare-fun m!655839 () Bool)

(assert (=> b!693627 m!655839))

(declare-fun m!655841 () Bool)

(assert (=> b!693625 m!655841))

(assert (=> b!693619 m!655839))

(assert (=> b!693619 m!655839))

(declare-fun m!655843 () Bool)

(assert (=> b!693619 m!655843))

(declare-fun m!655845 () Bool)

(assert (=> b!693623 m!655845))

(declare-fun m!655847 () Bool)

(assert (=> b!693636 m!655847))

(declare-fun m!655849 () Bool)

(assert (=> b!693636 m!655849))

(declare-fun m!655851 () Bool)

(assert (=> b!693626 m!655851))

(declare-fun m!655853 () Bool)

(assert (=> b!693634 m!655853))

(declare-fun m!655855 () Bool)

(assert (=> b!693622 m!655855))

(assert (=> b!693631 m!655845))

(declare-fun m!655857 () Bool)

(assert (=> b!693624 m!655857))

(assert (=> b!693637 m!655839))

(assert (=> b!693637 m!655839))

(declare-fun m!655859 () Bool)

(assert (=> b!693637 m!655859))

(assert (=> b!693617 m!655855))

(declare-fun m!655861 () Bool)

(assert (=> b!693618 m!655861))

(declare-fun m!655863 () Bool)

(assert (=> b!693628 m!655863))

(declare-fun m!655865 () Bool)

(assert (=> b!693639 m!655865))

(check-sat (not b!693624) (not b!693640) (not b!693622) (not b!693617) (not start!62042) (not b!693636) (not b!693619) (not b!693625) (not b!693639) (not b!693628) (not b!693616) (not b!693626) (not b!693631) (not b!693623) (not b!693633) (not b!693634) (not b!693618) (not b!693637) (not b!693621))
(check-sat)
