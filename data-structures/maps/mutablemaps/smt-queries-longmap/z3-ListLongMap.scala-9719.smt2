; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115024 () Bool)

(assert start!115024)

(declare-fun b!1362901 () Bool)

(declare-fun res!906915 () Bool)

(declare-fun e!773010 () Bool)

(assert (=> b!1362901 (=> (not res!906915) (not e!773010))))

(declare-datatypes ((array!92625 0))(
  ( (array!92626 (arr!44741 (Array (_ BitVec 32) (_ BitVec 64))) (size!45292 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92625)

(declare-datatypes ((List!31962 0))(
  ( (Nil!31959) (Cons!31958 (h!33167 (_ BitVec 64)) (t!46657 List!31962)) )
))
(declare-fun arrayNoDuplicates!0 (array!92625 (_ BitVec 32) List!31962) Bool)

(assert (=> b!1362901 (= res!906915 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31959))))

(declare-fun b!1362902 () Bool)

(declare-fun res!906916 () Bool)

(assert (=> b!1362902 (=> (not res!906916) (not e!773010))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1362902 (= res!906916 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45292 a!3742)))))

(declare-fun b!1362903 () Bool)

(declare-fun res!906913 () Bool)

(assert (=> b!1362903 (=> (not res!906913) (not e!773010))))

(declare-fun acc!759 () List!31962)

(assert (=> b!1362903 (= res!906913 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!906910 () Bool)

(assert (=> start!115024 (=> (not res!906910) (not e!773010))))

(assert (=> start!115024 (= res!906910 (and (bvslt (size!45292 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45292 a!3742))))))

(assert (=> start!115024 e!773010))

(assert (=> start!115024 true))

(declare-fun array_inv!33686 (array!92625) Bool)

(assert (=> start!115024 (array_inv!33686 a!3742)))

(declare-fun b!1362904 () Bool)

(declare-fun res!906917 () Bool)

(assert (=> b!1362904 (=> (not res!906917) (not e!773010))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362904 (= res!906917 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45292 a!3742))))))

(declare-fun b!1362905 () Bool)

(declare-fun res!906918 () Bool)

(assert (=> b!1362905 (=> (not res!906918) (not e!773010))))

(declare-fun noDuplicate!2406 (List!31962) Bool)

(assert (=> b!1362905 (= res!906918 (noDuplicate!2406 acc!759))))

(declare-fun b!1362906 () Bool)

(assert (=> b!1362906 (= e!773010 false)))

(declare-datatypes ((Unit!44906 0))(
  ( (Unit!44907) )
))
(declare-fun lt!600580 () Unit!44906)

(declare-fun e!773009 () Unit!44906)

(assert (=> b!1362906 (= lt!600580 e!773009)))

(declare-fun c!127438 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362906 (= c!127438 (validKeyInArray!0 (select (arr!44741 a!3742) from!3120)))))

(declare-fun b!1362907 () Bool)

(declare-fun Unit!44908 () Unit!44906)

(assert (=> b!1362907 (= e!773009 Unit!44908)))

(declare-fun b!1362908 () Bool)

(declare-fun res!906914 () Bool)

(assert (=> b!1362908 (=> (not res!906914) (not e!773010))))

(declare-fun contains!9527 (List!31962 (_ BitVec 64)) Bool)

(assert (=> b!1362908 (= res!906914 (not (contains!9527 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362909 () Bool)

(declare-fun lt!600581 () Unit!44906)

(assert (=> b!1362909 (= e!773009 lt!600581)))

(declare-fun lt!600579 () Unit!44906)

(declare-fun lemmaListSubSeqRefl!0 (List!31962) Unit!44906)

(assert (=> b!1362909 (= lt!600579 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!918 (List!31962 List!31962) Bool)

(assert (=> b!1362909 (subseq!918 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92625 List!31962 List!31962 (_ BitVec 32)) Unit!44906)

(declare-fun $colon$colon!923 (List!31962 (_ BitVec 64)) List!31962)

(assert (=> b!1362909 (= lt!600581 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!923 acc!759 (select (arr!44741 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362909 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362910 () Bool)

(declare-fun res!906912 () Bool)

(assert (=> b!1362910 (=> (not res!906912) (not e!773010))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362910 (= res!906912 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362911 () Bool)

(declare-fun res!906911 () Bool)

(assert (=> b!1362911 (=> (not res!906911) (not e!773010))))

(assert (=> b!1362911 (= res!906911 (not (contains!9527 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115024 res!906910) b!1362905))

(assert (= (and b!1362905 res!906918) b!1362911))

(assert (= (and b!1362911 res!906911) b!1362908))

(assert (= (and b!1362908 res!906914) b!1362901))

(assert (= (and b!1362901 res!906915) b!1362903))

(assert (= (and b!1362903 res!906913) b!1362904))

(assert (= (and b!1362904 res!906917) b!1362910))

(assert (= (and b!1362910 res!906912) b!1362902))

(assert (= (and b!1362902 res!906916) b!1362906))

(assert (= (and b!1362906 c!127438) b!1362909))

(assert (= (and b!1362906 (not c!127438)) b!1362907))

(declare-fun m!1247831 () Bool)

(assert (=> b!1362906 m!1247831))

(assert (=> b!1362906 m!1247831))

(declare-fun m!1247833 () Bool)

(assert (=> b!1362906 m!1247833))

(declare-fun m!1247835 () Bool)

(assert (=> b!1362911 m!1247835))

(declare-fun m!1247837 () Bool)

(assert (=> start!115024 m!1247837))

(declare-fun m!1247839 () Bool)

(assert (=> b!1362909 m!1247839))

(assert (=> b!1362909 m!1247831))

(declare-fun m!1247841 () Bool)

(assert (=> b!1362909 m!1247841))

(declare-fun m!1247843 () Bool)

(assert (=> b!1362909 m!1247843))

(declare-fun m!1247845 () Bool)

(assert (=> b!1362909 m!1247845))

(assert (=> b!1362909 m!1247831))

(assert (=> b!1362909 m!1247841))

(declare-fun m!1247847 () Bool)

(assert (=> b!1362909 m!1247847))

(declare-fun m!1247849 () Bool)

(assert (=> b!1362910 m!1247849))

(declare-fun m!1247851 () Bool)

(assert (=> b!1362908 m!1247851))

(declare-fun m!1247853 () Bool)

(assert (=> b!1362901 m!1247853))

(declare-fun m!1247855 () Bool)

(assert (=> b!1362903 m!1247855))

(declare-fun m!1247857 () Bool)

(assert (=> b!1362905 m!1247857))

(check-sat (not b!1362903) (not b!1362901) (not start!115024) (not b!1362908) (not b!1362911) (not b!1362906) (not b!1362909) (not b!1362910) (not b!1362905))
