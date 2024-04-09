; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114188 () Bool)

(assert start!114188)

(declare-fun b!1355841 () Bool)

(declare-fun res!900808 () Bool)

(declare-fun e!769888 () Bool)

(assert (=> b!1355841 (=> (not res!900808) (not e!769888))))

(declare-datatypes ((List!31811 0))(
  ( (Nil!31808) (Cons!31807 (h!33016 (_ BitVec 64)) (t!46476 List!31811)) )
))
(declare-fun acc!759 () List!31811)

(declare-fun contains!9376 (List!31811 (_ BitVec 64)) Bool)

(assert (=> b!1355841 (= res!900808 (not (contains!9376 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355842 () Bool)

(declare-datatypes ((Unit!44534 0))(
  ( (Unit!44535) )
))
(declare-fun e!769887 () Unit!44534)

(declare-fun Unit!44536 () Unit!44534)

(assert (=> b!1355842 (= e!769887 Unit!44536)))

(declare-fun b!1355843 () Bool)

(declare-fun res!900812 () Bool)

(assert (=> b!1355843 (=> (not res!900812) (not e!769888))))

(assert (=> b!1355843 (= res!900812 (not (contains!9376 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355844 () Bool)

(declare-fun res!900805 () Bool)

(assert (=> b!1355844 (=> (not res!900805) (not e!769888))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92293 0))(
  ( (array!92294 (arr!44590 (Array (_ BitVec 32) (_ BitVec 64))) (size!45141 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92293)

(assert (=> b!1355844 (= res!900805 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45141 a!3742)))))

(declare-fun res!900810 () Bool)

(assert (=> start!114188 (=> (not res!900810) (not e!769888))))

(assert (=> start!114188 (= res!900810 (and (bvslt (size!45141 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45141 a!3742))))))

(assert (=> start!114188 e!769888))

(assert (=> start!114188 true))

(declare-fun array_inv!33535 (array!92293) Bool)

(assert (=> start!114188 (array_inv!33535 a!3742)))

(declare-fun b!1355845 () Bool)

(declare-fun res!900804 () Bool)

(assert (=> b!1355845 (=> (not res!900804) (not e!769888))))

(declare-fun arrayNoDuplicates!0 (array!92293 (_ BitVec 32) List!31811) Bool)

(assert (=> b!1355845 (= res!900804 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355846 () Bool)

(declare-fun e!769885 () Bool)

(assert (=> b!1355846 (= e!769885 false)))

(declare-fun lt!598772 () Bool)

(assert (=> b!1355846 (= lt!598772 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355847 () Bool)

(assert (=> b!1355847 (= e!769888 e!769885)))

(declare-fun res!900807 () Bool)

(assert (=> b!1355847 (=> (not res!900807) (not e!769885))))

(declare-fun lt!598774 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355847 (= res!900807 (and (not (= from!3120 i!1404)) (not lt!598774) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598773 () Unit!44534)

(assert (=> b!1355847 (= lt!598773 e!769887)))

(declare-fun c!126961 () Bool)

(assert (=> b!1355847 (= c!126961 lt!598774)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355847 (= lt!598774 (validKeyInArray!0 (select (arr!44590 a!3742) from!3120)))))

(declare-fun b!1355848 () Bool)

(declare-fun lt!598771 () Unit!44534)

(assert (=> b!1355848 (= e!769887 lt!598771)))

(declare-fun lt!598775 () Unit!44534)

(declare-fun lemmaListSubSeqRefl!0 (List!31811) Unit!44534)

(assert (=> b!1355848 (= lt!598775 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!785 (List!31811 List!31811) Bool)

(assert (=> b!1355848 (subseq!785 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92293 List!31811 List!31811 (_ BitVec 32)) Unit!44534)

(declare-fun $colon$colon!802 (List!31811 (_ BitVec 64)) List!31811)

(assert (=> b!1355848 (= lt!598771 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!802 acc!759 (select (arr!44590 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355848 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355849 () Bool)

(declare-fun res!900809 () Bool)

(assert (=> b!1355849 (=> (not res!900809) (not e!769888))))

(declare-fun noDuplicate!2255 (List!31811) Bool)

(assert (=> b!1355849 (= res!900809 (noDuplicate!2255 acc!759))))

(declare-fun b!1355850 () Bool)

(declare-fun res!900806 () Bool)

(assert (=> b!1355850 (=> (not res!900806) (not e!769888))))

(assert (=> b!1355850 (= res!900806 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45141 a!3742))))))

(declare-fun b!1355851 () Bool)

(declare-fun res!900811 () Bool)

(assert (=> b!1355851 (=> (not res!900811) (not e!769888))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355851 (= res!900811 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355852 () Bool)

(declare-fun res!900813 () Bool)

(assert (=> b!1355852 (=> (not res!900813) (not e!769888))))

(assert (=> b!1355852 (= res!900813 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31808))))

(assert (= (and start!114188 res!900810) b!1355849))

(assert (= (and b!1355849 res!900809) b!1355841))

(assert (= (and b!1355841 res!900808) b!1355843))

(assert (= (and b!1355843 res!900812) b!1355852))

(assert (= (and b!1355852 res!900813) b!1355845))

(assert (= (and b!1355845 res!900804) b!1355850))

(assert (= (and b!1355850 res!900806) b!1355851))

(assert (= (and b!1355851 res!900811) b!1355844))

(assert (= (and b!1355844 res!900805) b!1355847))

(assert (= (and b!1355847 c!126961) b!1355848))

(assert (= (and b!1355847 (not c!126961)) b!1355842))

(assert (= (and b!1355847 res!900807) b!1355846))

(declare-fun m!1241953 () Bool)

(assert (=> b!1355851 m!1241953))

(declare-fun m!1241955 () Bool)

(assert (=> b!1355846 m!1241955))

(declare-fun m!1241957 () Bool)

(assert (=> b!1355845 m!1241957))

(declare-fun m!1241959 () Bool)

(assert (=> b!1355841 m!1241959))

(declare-fun m!1241961 () Bool)

(assert (=> b!1355849 m!1241961))

(declare-fun m!1241963 () Bool)

(assert (=> start!114188 m!1241963))

(declare-fun m!1241965 () Bool)

(assert (=> b!1355852 m!1241965))

(declare-fun m!1241967 () Bool)

(assert (=> b!1355847 m!1241967))

(assert (=> b!1355847 m!1241967))

(declare-fun m!1241969 () Bool)

(assert (=> b!1355847 m!1241969))

(declare-fun m!1241971 () Bool)

(assert (=> b!1355843 m!1241971))

(declare-fun m!1241973 () Bool)

(assert (=> b!1355848 m!1241973))

(assert (=> b!1355848 m!1241967))

(declare-fun m!1241975 () Bool)

(assert (=> b!1355848 m!1241975))

(declare-fun m!1241977 () Bool)

(assert (=> b!1355848 m!1241977))

(assert (=> b!1355848 m!1241955))

(assert (=> b!1355848 m!1241967))

(assert (=> b!1355848 m!1241975))

(declare-fun m!1241979 () Bool)

(assert (=> b!1355848 m!1241979))

(push 1)

