; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59880 () Bool)

(assert start!59880)

(declare-fun res!429977 () Bool)

(declare-fun e!380017 () Bool)

(assert (=> start!59880 (=> (not res!429977) (not e!380017))))

(declare-datatypes ((array!38883 0))(
  ( (array!38884 (arr!18630 (Array (_ BitVec 32) (_ BitVec 64))) (size!18994 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38883)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59880 (= res!429977 (and (bvslt (size!18994 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18994 a!3626))))))

(assert (=> start!59880 e!380017))

(assert (=> start!59880 true))

(declare-fun array_inv!14404 (array!38883) Bool)

(assert (=> start!59880 (array_inv!14404 a!3626)))

(declare-fun b!661757 () Bool)

(declare-fun e!380021 () Bool)

(assert (=> b!661757 (= e!380021 true)))

(declare-datatypes ((List!12724 0))(
  ( (Nil!12721) (Cons!12720 (h!13765 (_ BitVec 64)) (t!18960 List!12724)) )
))
(declare-fun lt!308825 () List!12724)

(declare-fun lt!308828 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38883 (_ BitVec 32) List!12724) Bool)

(assert (=> b!661757 (= lt!308828 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308825))))

(declare-datatypes ((Unit!22966 0))(
  ( (Unit!22967) )
))
(declare-fun lt!308826 () Unit!22966)

(declare-fun acc!681 () List!12724)

(declare-fun noDuplicateSubseq!5 (List!12724 List!12724) Unit!22966)

(assert (=> b!661757 (= lt!308826 (noDuplicateSubseq!5 acc!681 lt!308825))))

(declare-fun b!661758 () Bool)

(declare-fun e!380016 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3267 (List!12724 (_ BitVec 64)) Bool)

(assert (=> b!661758 (= e!380016 (contains!3267 acc!681 k!2843))))

(declare-fun b!661759 () Bool)

(declare-fun res!429978 () Bool)

(assert (=> b!661759 (=> (not res!429978) (not e!380017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661759 (= res!429978 (validKeyInArray!0 k!2843))))

(declare-fun b!661760 () Bool)

(declare-fun res!429992 () Bool)

(assert (=> b!661760 (=> (not res!429992) (not e!380017))))

(assert (=> b!661760 (= res!429992 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12721))))

(declare-fun b!661761 () Bool)

(declare-fun res!429973 () Bool)

(assert (=> b!661761 (=> res!429973 e!380021)))

(declare-fun subseq!5 (List!12724 List!12724) Bool)

(assert (=> b!661761 (= res!429973 (not (subseq!5 acc!681 lt!308825)))))

(declare-fun b!661762 () Bool)

(declare-fun res!429976 () Bool)

(assert (=> b!661762 (=> (not res!429976) (not e!380017))))

(assert (=> b!661762 (= res!429976 (not (contains!3267 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661763 () Bool)

(declare-fun res!429988 () Bool)

(assert (=> b!661763 (=> (not res!429988) (not e!380017))))

(assert (=> b!661763 (= res!429988 (not (contains!3267 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661764 () Bool)

(declare-fun e!380018 () Bool)

(declare-fun e!380023 () Bool)

(assert (=> b!661764 (= e!380018 e!380023)))

(declare-fun res!429981 () Bool)

(assert (=> b!661764 (=> (not res!429981) (not e!380023))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!661764 (= res!429981 (bvsle from!3004 i!1382))))

(declare-fun b!661765 () Bool)

(assert (=> b!661765 (= e!380023 (not (contains!3267 acc!681 k!2843)))))

(declare-fun b!661766 () Bool)

(declare-fun e!380019 () Bool)

(assert (=> b!661766 (= e!380019 e!380021)))

(declare-fun res!429991 () Bool)

(assert (=> b!661766 (=> res!429991 e!380021)))

(assert (=> b!661766 (= res!429991 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!136 (List!12724 (_ BitVec 64)) List!12724)

(assert (=> b!661766 (= lt!308825 ($colon$colon!136 acc!681 (select (arr!18630 a!3626) from!3004)))))

(assert (=> b!661766 (subseq!5 acc!681 acc!681)))

(declare-fun lt!308827 () Unit!22966)

(declare-fun lemmaListSubSeqRefl!0 (List!12724) Unit!22966)

(assert (=> b!661766 (= lt!308827 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!661767 () Bool)

(declare-fun res!429980 () Bool)

(assert (=> b!661767 (=> (not res!429980) (not e!380017))))

(declare-fun arrayContainsKey!0 (array!38883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661767 (= res!429980 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661768 () Bool)

(declare-fun res!429987 () Bool)

(assert (=> b!661768 (=> res!429987 e!380021)))

(assert (=> b!661768 (= res!429987 (contains!3267 lt!308825 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661769 () Bool)

(declare-fun res!429990 () Bool)

(assert (=> b!661769 (=> (not res!429990) (not e!380017))))

(assert (=> b!661769 (= res!429990 e!380018)))

(declare-fun res!429974 () Bool)

(assert (=> b!661769 (=> res!429974 e!380018)))

(assert (=> b!661769 (= res!429974 e!380016)))

(declare-fun res!429986 () Bool)

(assert (=> b!661769 (=> (not res!429986) (not e!380016))))

(assert (=> b!661769 (= res!429986 (bvsgt from!3004 i!1382))))

(declare-fun b!661770 () Bool)

(assert (=> b!661770 (= e!380017 (not e!380019))))

(declare-fun res!429985 () Bool)

(assert (=> b!661770 (=> res!429985 e!380019)))

(assert (=> b!661770 (= res!429985 (not (validKeyInArray!0 (select (arr!18630 a!3626) from!3004))))))

(declare-fun lt!308829 () Unit!22966)

(declare-fun e!380020 () Unit!22966)

(assert (=> b!661770 (= lt!308829 e!380020)))

(declare-fun c!76259 () Bool)

(assert (=> b!661770 (= c!76259 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!661770 (arrayContainsKey!0 (array!38884 (store (arr!18630 a!3626) i!1382 k!2843) (size!18994 a!3626)) k!2843 from!3004)))

(declare-fun b!661771 () Bool)

(declare-fun Unit!22968 () Unit!22966)

(assert (=> b!661771 (= e!380020 Unit!22968)))

(declare-fun lt!308824 () Unit!22966)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38883 (_ BitVec 64) (_ BitVec 32)) Unit!22966)

(assert (=> b!661771 (= lt!308824 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!661771 false))

(declare-fun b!661772 () Bool)

(declare-fun res!429982 () Bool)

(assert (=> b!661772 (=> (not res!429982) (not e!380017))))

(assert (=> b!661772 (= res!429982 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18994 a!3626))))))

(declare-fun b!661773 () Bool)

(declare-fun Unit!22969 () Unit!22966)

(assert (=> b!661773 (= e!380020 Unit!22969)))

(declare-fun b!661774 () Bool)

(declare-fun res!429983 () Bool)

(assert (=> b!661774 (=> res!429983 e!380021)))

(declare-fun noDuplicate!514 (List!12724) Bool)

(assert (=> b!661774 (= res!429983 (not (noDuplicate!514 lt!308825)))))

(declare-fun b!661775 () Bool)

(declare-fun res!429984 () Bool)

(assert (=> b!661775 (=> (not res!429984) (not e!380017))))

(assert (=> b!661775 (= res!429984 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18994 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661776 () Bool)

(declare-fun res!429979 () Bool)

(assert (=> b!661776 (=> res!429979 e!380021)))

(assert (=> b!661776 (= res!429979 (contains!3267 lt!308825 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661777 () Bool)

(declare-fun res!429975 () Bool)

(assert (=> b!661777 (=> (not res!429975) (not e!380017))))

(assert (=> b!661777 (= res!429975 (noDuplicate!514 acc!681))))

(declare-fun b!661778 () Bool)

(declare-fun res!429989 () Bool)

(assert (=> b!661778 (=> (not res!429989) (not e!380017))))

(assert (=> b!661778 (= res!429989 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59880 res!429977) b!661777))

(assert (= (and b!661777 res!429975) b!661763))

(assert (= (and b!661763 res!429988) b!661762))

(assert (= (and b!661762 res!429976) b!661769))

(assert (= (and b!661769 res!429986) b!661758))

(assert (= (and b!661769 (not res!429974)) b!661764))

(assert (= (and b!661764 res!429981) b!661765))

(assert (= (and b!661769 res!429990) b!661760))

(assert (= (and b!661760 res!429992) b!661778))

(assert (= (and b!661778 res!429989) b!661772))

(assert (= (and b!661772 res!429982) b!661759))

(assert (= (and b!661759 res!429978) b!661767))

(assert (= (and b!661767 res!429980) b!661775))

(assert (= (and b!661775 res!429984) b!661770))

(assert (= (and b!661770 c!76259) b!661771))

(assert (= (and b!661770 (not c!76259)) b!661773))

(assert (= (and b!661770 (not res!429985)) b!661766))

(assert (= (and b!661766 (not res!429991)) b!661774))

(assert (= (and b!661774 (not res!429983)) b!661768))

(assert (= (and b!661768 (not res!429987)) b!661776))

(assert (= (and b!661776 (not res!429979)) b!661761))

(assert (= (and b!661761 (not res!429973)) b!661757))

(declare-fun m!633795 () Bool)

(assert (=> b!661767 m!633795))

(declare-fun m!633797 () Bool)

(assert (=> b!661763 m!633797))

(declare-fun m!633799 () Bool)

(assert (=> b!661766 m!633799))

(assert (=> b!661766 m!633799))

(declare-fun m!633801 () Bool)

(assert (=> b!661766 m!633801))

(declare-fun m!633803 () Bool)

(assert (=> b!661766 m!633803))

(declare-fun m!633805 () Bool)

(assert (=> b!661766 m!633805))

(declare-fun m!633807 () Bool)

(assert (=> b!661776 m!633807))

(declare-fun m!633809 () Bool)

(assert (=> b!661760 m!633809))

(declare-fun m!633811 () Bool)

(assert (=> b!661774 m!633811))

(declare-fun m!633813 () Bool)

(assert (=> b!661762 m!633813))

(assert (=> b!661770 m!633799))

(declare-fun m!633815 () Bool)

(assert (=> b!661770 m!633815))

(declare-fun m!633817 () Bool)

(assert (=> b!661770 m!633817))

(assert (=> b!661770 m!633799))

(declare-fun m!633819 () Bool)

(assert (=> b!661770 m!633819))

(declare-fun m!633821 () Bool)

(assert (=> b!661770 m!633821))

(declare-fun m!633823 () Bool)

(assert (=> b!661765 m!633823))

(declare-fun m!633825 () Bool)

(assert (=> b!661761 m!633825))

(declare-fun m!633827 () Bool)

(assert (=> b!661759 m!633827))

(declare-fun m!633829 () Bool)

(assert (=> b!661778 m!633829))

(assert (=> b!661758 m!633823))

(declare-fun m!633831 () Bool)

(assert (=> b!661771 m!633831))

(declare-fun m!633833 () Bool)

(assert (=> b!661777 m!633833))

(declare-fun m!633835 () Bool)

(assert (=> b!661768 m!633835))

(declare-fun m!633837 () Bool)

(assert (=> b!661757 m!633837))

(declare-fun m!633839 () Bool)

(assert (=> b!661757 m!633839))

(declare-fun m!633841 () Bool)

(assert (=> start!59880 m!633841))

(push 1)

