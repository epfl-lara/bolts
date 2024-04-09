; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61568 () Bool)

(assert start!61568)

(declare-fun res!452834 () Bool)

(declare-fun e!391857 () Bool)

(assert (=> start!61568 (=> (not res!452834) (not e!391857))))

(declare-datatypes ((array!39665 0))(
  ( (array!39666 (arr!19000 (Array (_ BitVec 32) (_ BitVec 64))) (size!19381 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39665)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!61568 (= res!452834 (and (bvslt (size!19381 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19381 a!3626))))))

(assert (=> start!61568 e!391857))

(assert (=> start!61568 true))

(declare-fun array_inv!14774 (array!39665) Bool)

(assert (=> start!61568 (array_inv!14774 a!3626)))

(declare-fun b!687899 () Bool)

(declare-datatypes ((Unit!24237 0))(
  ( (Unit!24238) )
))
(declare-fun e!391849 () Unit!24237)

(declare-fun Unit!24239 () Unit!24237)

(assert (=> b!687899 (= e!391849 Unit!24239)))

(declare-fun b!687900 () Bool)

(declare-fun e!391850 () Bool)

(declare-datatypes ((List!13094 0))(
  ( (Nil!13091) (Cons!13090 (h!14135 (_ BitVec 64)) (t!19366 List!13094)) )
))
(declare-fun lt!315581 () List!13094)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3637 (List!13094 (_ BitVec 64)) Bool)

(assert (=> b!687900 (= e!391850 (not (contains!3637 lt!315581 k0!2843)))))

(declare-fun b!687901 () Bool)

(declare-fun res!452849 () Bool)

(assert (=> b!687901 (=> (not res!452849) (not e!391857))))

(declare-fun acc!681 () List!13094)

(declare-fun noDuplicate!884 (List!13094) Bool)

(assert (=> b!687901 (= res!452849 (noDuplicate!884 acc!681))))

(declare-fun b!687902 () Bool)

(declare-fun e!391851 () Bool)

(assert (=> b!687902 (= e!391851 e!391850)))

(declare-fun res!452842 () Bool)

(assert (=> b!687902 (=> (not res!452842) (not e!391850))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!687902 (= res!452842 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687903 () Bool)

(declare-fun e!391854 () Unit!24237)

(declare-fun Unit!24240 () Unit!24237)

(assert (=> b!687903 (= e!391854 Unit!24240)))

(declare-fun lt!315579 () Unit!24237)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39665 (_ BitVec 64) (_ BitVec 32)) Unit!24237)

(assert (=> b!687903 (= lt!315579 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!687903 false))

(declare-fun b!687904 () Bool)

(declare-fun Unit!24241 () Unit!24237)

(assert (=> b!687904 (= e!391854 Unit!24241)))

(declare-fun b!687905 () Bool)

(declare-fun res!452839 () Bool)

(declare-fun e!391855 () Bool)

(assert (=> b!687905 (=> res!452839 e!391855)))

(assert (=> b!687905 (= res!452839 (not (noDuplicate!884 lt!315581)))))

(declare-fun b!687906 () Bool)

(declare-fun res!452833 () Bool)

(assert (=> b!687906 (=> (not res!452833) (not e!391857))))

(declare-fun arrayContainsKey!0 (array!39665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!687906 (= res!452833 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!687907 () Bool)

(declare-fun res!452836 () Bool)

(assert (=> b!687907 (=> res!452836 e!391855)))

(assert (=> b!687907 (= res!452836 (contains!3637 lt!315581 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687908 () Bool)

(declare-fun res!452846 () Bool)

(assert (=> b!687908 (=> (not res!452846) (not e!391857))))

(assert (=> b!687908 (= res!452846 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19381 a!3626))))))

(declare-fun b!687909 () Bool)

(assert (=> b!687909 (= e!391855 true)))

(declare-fun lt!315583 () Bool)

(assert (=> b!687909 (= lt!315583 e!391851)))

(declare-fun res!452835 () Bool)

(assert (=> b!687909 (=> res!452835 e!391851)))

(declare-fun e!391852 () Bool)

(assert (=> b!687909 (= res!452835 e!391852)))

(declare-fun res!452831 () Bool)

(assert (=> b!687909 (=> (not res!452831) (not e!391852))))

(assert (=> b!687909 (= res!452831 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687910 () Bool)

(declare-fun res!452840 () Bool)

(assert (=> b!687910 (=> (not res!452840) (not e!391857))))

(declare-fun arrayNoDuplicates!0 (array!39665 (_ BitVec 32) List!13094) Bool)

(assert (=> b!687910 (= res!452840 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!687911 () Bool)

(declare-fun lt!315582 () Unit!24237)

(assert (=> b!687911 (= e!391849 lt!315582)))

(declare-fun lt!315586 () Unit!24237)

(declare-fun lemmaListSubSeqRefl!0 (List!13094) Unit!24237)

(assert (=> b!687911 (= lt!315586 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!222 (List!13094 List!13094) Bool)

(assert (=> b!687911 (subseq!222 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39665 List!13094 List!13094 (_ BitVec 32)) Unit!24237)

(declare-fun $colon$colon!386 (List!13094 (_ BitVec 64)) List!13094)

(assert (=> b!687911 (= lt!315582 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!386 acc!681 (select (arr!19000 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687911 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!687912 () Bool)

(declare-fun e!391853 () Bool)

(assert (=> b!687912 (= e!391853 (not (contains!3637 acc!681 k0!2843)))))

(declare-fun b!687913 () Bool)

(declare-fun res!452847 () Bool)

(assert (=> b!687913 (=> (not res!452847) (not e!391857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!687913 (= res!452847 (validKeyInArray!0 k0!2843))))

(declare-fun b!687914 () Bool)

(declare-fun res!452845 () Bool)

(assert (=> b!687914 (=> (not res!452845) (not e!391857))))

(assert (=> b!687914 (= res!452845 (not (contains!3637 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687915 () Bool)

(declare-fun res!452848 () Bool)

(assert (=> b!687915 (=> res!452848 e!391855)))

(assert (=> b!687915 (= res!452848 (contains!3637 lt!315581 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687916 () Bool)

(declare-fun e!391858 () Bool)

(assert (=> b!687916 (= e!391858 e!391853)))

(declare-fun res!452841 () Bool)

(assert (=> b!687916 (=> (not res!452841) (not e!391853))))

(assert (=> b!687916 (= res!452841 (bvsle from!3004 i!1382))))

(declare-fun b!687917 () Bool)

(declare-fun e!391856 () Bool)

(assert (=> b!687917 (= e!391856 (contains!3637 acc!681 k0!2843))))

(declare-fun b!687918 () Bool)

(assert (=> b!687918 (= e!391857 (not e!391855))))

(declare-fun res!452843 () Bool)

(assert (=> b!687918 (=> res!452843 e!391855)))

(assert (=> b!687918 (= res!452843 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!687918 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315581)))

(declare-fun lt!315588 () Unit!24237)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39665 (_ BitVec 64) (_ BitVec 32) List!13094 List!13094) Unit!24237)

(assert (=> b!687918 (= lt!315588 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315581))))

(declare-fun -!187 (List!13094 (_ BitVec 64)) List!13094)

(assert (=> b!687918 (= (-!187 lt!315581 k0!2843) acc!681)))

(assert (=> b!687918 (= lt!315581 ($colon$colon!386 acc!681 k0!2843))))

(declare-fun lt!315584 () Unit!24237)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13094) Unit!24237)

(assert (=> b!687918 (= lt!315584 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!687918 (subseq!222 acc!681 acc!681)))

(declare-fun lt!315580 () Unit!24237)

(assert (=> b!687918 (= lt!315580 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!687918 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315585 () Unit!24237)

(assert (=> b!687918 (= lt!315585 e!391849)))

(declare-fun c!77903 () Bool)

(assert (=> b!687918 (= c!77903 (validKeyInArray!0 (select (arr!19000 a!3626) from!3004)))))

(declare-fun lt!315587 () Unit!24237)

(assert (=> b!687918 (= lt!315587 e!391854)))

(declare-fun c!77902 () Bool)

(assert (=> b!687918 (= c!77902 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687918 (arrayContainsKey!0 (array!39666 (store (arr!19000 a!3626) i!1382 k0!2843) (size!19381 a!3626)) k0!2843 from!3004)))

(declare-fun b!687919 () Bool)

(declare-fun res!452829 () Bool)

(assert (=> b!687919 (=> (not res!452829) (not e!391857))))

(assert (=> b!687919 (= res!452829 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19381 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!687920 () Bool)

(assert (=> b!687920 (= e!391852 (contains!3637 lt!315581 k0!2843))))

(declare-fun b!687921 () Bool)

(declare-fun res!452838 () Bool)

(assert (=> b!687921 (=> (not res!452838) (not e!391857))))

(assert (=> b!687921 (= res!452838 e!391858)))

(declare-fun res!452837 () Bool)

(assert (=> b!687921 (=> res!452837 e!391858)))

(assert (=> b!687921 (= res!452837 e!391856)))

(declare-fun res!452830 () Bool)

(assert (=> b!687921 (=> (not res!452830) (not e!391856))))

(assert (=> b!687921 (= res!452830 (bvsgt from!3004 i!1382))))

(declare-fun b!687922 () Bool)

(declare-fun res!452832 () Bool)

(assert (=> b!687922 (=> (not res!452832) (not e!391857))))

(assert (=> b!687922 (= res!452832 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13091))))

(declare-fun b!687923 () Bool)

(declare-fun res!452844 () Bool)

(assert (=> b!687923 (=> (not res!452844) (not e!391857))))

(assert (=> b!687923 (= res!452844 (not (contains!3637 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61568 res!452834) b!687901))

(assert (= (and b!687901 res!452849) b!687923))

(assert (= (and b!687923 res!452844) b!687914))

(assert (= (and b!687914 res!452845) b!687921))

(assert (= (and b!687921 res!452830) b!687917))

(assert (= (and b!687921 (not res!452837)) b!687916))

(assert (= (and b!687916 res!452841) b!687912))

(assert (= (and b!687921 res!452838) b!687922))

(assert (= (and b!687922 res!452832) b!687910))

(assert (= (and b!687910 res!452840) b!687908))

(assert (= (and b!687908 res!452846) b!687913))

(assert (= (and b!687913 res!452847) b!687906))

(assert (= (and b!687906 res!452833) b!687919))

(assert (= (and b!687919 res!452829) b!687918))

(assert (= (and b!687918 c!77902) b!687903))

(assert (= (and b!687918 (not c!77902)) b!687904))

(assert (= (and b!687918 c!77903) b!687911))

(assert (= (and b!687918 (not c!77903)) b!687899))

(assert (= (and b!687918 (not res!452843)) b!687905))

(assert (= (and b!687905 (not res!452839)) b!687907))

(assert (= (and b!687907 (not res!452836)) b!687915))

(assert (= (and b!687915 (not res!452848)) b!687909))

(assert (= (and b!687909 res!452831) b!687920))

(assert (= (and b!687909 (not res!452835)) b!687902))

(assert (= (and b!687902 res!452842) b!687900))

(declare-fun m!651937 () Bool)

(assert (=> b!687912 m!651937))

(declare-fun m!651939 () Bool)

(assert (=> b!687918 m!651939))

(declare-fun m!651941 () Bool)

(assert (=> b!687918 m!651941))

(declare-fun m!651943 () Bool)

(assert (=> b!687918 m!651943))

(declare-fun m!651945 () Bool)

(assert (=> b!687918 m!651945))

(declare-fun m!651947 () Bool)

(assert (=> b!687918 m!651947))

(declare-fun m!651949 () Bool)

(assert (=> b!687918 m!651949))

(declare-fun m!651951 () Bool)

(assert (=> b!687918 m!651951))

(assert (=> b!687918 m!651941))

(declare-fun m!651953 () Bool)

(assert (=> b!687918 m!651953))

(declare-fun m!651955 () Bool)

(assert (=> b!687918 m!651955))

(declare-fun m!651957 () Bool)

(assert (=> b!687918 m!651957))

(declare-fun m!651959 () Bool)

(assert (=> b!687918 m!651959))

(declare-fun m!651961 () Bool)

(assert (=> b!687918 m!651961))

(declare-fun m!651963 () Bool)

(assert (=> b!687918 m!651963))

(assert (=> b!687917 m!651937))

(declare-fun m!651965 () Bool)

(assert (=> b!687923 m!651965))

(declare-fun m!651967 () Bool)

(assert (=> b!687920 m!651967))

(declare-fun m!651969 () Bool)

(assert (=> b!687907 m!651969))

(declare-fun m!651971 () Bool)

(assert (=> b!687922 m!651971))

(declare-fun m!651973 () Bool)

(assert (=> b!687910 m!651973))

(declare-fun m!651975 () Bool)

(assert (=> b!687915 m!651975))

(assert (=> b!687900 m!651967))

(declare-fun m!651977 () Bool)

(assert (=> b!687903 m!651977))

(declare-fun m!651979 () Bool)

(assert (=> b!687914 m!651979))

(declare-fun m!651981 () Bool)

(assert (=> b!687906 m!651981))

(declare-fun m!651983 () Bool)

(assert (=> b!687913 m!651983))

(declare-fun m!651985 () Bool)

(assert (=> b!687905 m!651985))

(declare-fun m!651987 () Bool)

(assert (=> b!687901 m!651987))

(declare-fun m!651989 () Bool)

(assert (=> start!61568 m!651989))

(assert (=> b!687911 m!651939))

(assert (=> b!687911 m!651941))

(declare-fun m!651991 () Bool)

(assert (=> b!687911 m!651991))

(declare-fun m!651993 () Bool)

(assert (=> b!687911 m!651993))

(assert (=> b!687911 m!651941))

(assert (=> b!687911 m!651991))

(assert (=> b!687911 m!651959))

(assert (=> b!687911 m!651963))

(check-sat (not b!687903) (not b!687901) (not b!687905) (not b!687907) (not b!687923) (not b!687911) (not b!687917) (not b!687918) (not b!687906) (not b!687915) (not b!687913) (not b!687912) (not b!687920) (not b!687900) (not start!61568) (not b!687914) (not b!687910) (not b!687922))
