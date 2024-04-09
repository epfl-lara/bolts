; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115022 () Bool)

(assert start!115022)

(declare-fun b!1362868 () Bool)

(declare-fun res!906888 () Bool)

(declare-fun e!773002 () Bool)

(assert (=> b!1362868 (=> (not res!906888) (not e!773002))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92623 0))(
  ( (array!92624 (arr!44740 (Array (_ BitVec 32) (_ BitVec 64))) (size!45291 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92623)

(assert (=> b!1362868 (= res!906888 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45291 a!3742))))))

(declare-fun b!1362869 () Bool)

(declare-fun res!906883 () Bool)

(assert (=> b!1362869 (=> (not res!906883) (not e!773002))))

(declare-datatypes ((List!31961 0))(
  ( (Nil!31958) (Cons!31957 (h!33166 (_ BitVec 64)) (t!46656 List!31961)) )
))
(declare-fun acc!759 () List!31961)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92623 (_ BitVec 32) List!31961) Bool)

(assert (=> b!1362869 (= res!906883 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362870 () Bool)

(declare-fun res!906891 () Bool)

(assert (=> b!1362870 (=> (not res!906891) (not e!773002))))

(assert (=> b!1362870 (= res!906891 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31958))))

(declare-fun b!1362871 () Bool)

(declare-fun res!906886 () Bool)

(assert (=> b!1362871 (=> (not res!906886) (not e!773002))))

(declare-fun contains!9526 (List!31961 (_ BitVec 64)) Bool)

(assert (=> b!1362871 (= res!906886 (not (contains!9526 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362872 () Bool)

(declare-datatypes ((Unit!44903 0))(
  ( (Unit!44904) )
))
(declare-fun e!773001 () Unit!44903)

(declare-fun lt!600572 () Unit!44903)

(assert (=> b!1362872 (= e!773001 lt!600572)))

(declare-fun lt!600571 () Unit!44903)

(declare-fun lemmaListSubSeqRefl!0 (List!31961) Unit!44903)

(assert (=> b!1362872 (= lt!600571 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!917 (List!31961 List!31961) Bool)

(assert (=> b!1362872 (subseq!917 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92623 List!31961 List!31961 (_ BitVec 32)) Unit!44903)

(declare-fun $colon$colon!922 (List!31961 (_ BitVec 64)) List!31961)

(assert (=> b!1362872 (= lt!600572 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!922 acc!759 (select (arr!44740 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362872 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362874 () Bool)

(declare-fun res!906889 () Bool)

(assert (=> b!1362874 (=> (not res!906889) (not e!773002))))

(assert (=> b!1362874 (= res!906889 (not (contains!9526 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362875 () Bool)

(declare-fun Unit!44905 () Unit!44903)

(assert (=> b!1362875 (= e!773001 Unit!44905)))

(declare-fun b!1362876 () Bool)

(declare-fun res!906887 () Bool)

(assert (=> b!1362876 (=> (not res!906887) (not e!773002))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362876 (= res!906887 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362877 () Bool)

(declare-fun res!906885 () Bool)

(assert (=> b!1362877 (=> (not res!906885) (not e!773002))))

(assert (=> b!1362877 (= res!906885 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45291 a!3742)))))

(declare-fun b!1362878 () Bool)

(declare-fun res!906884 () Bool)

(assert (=> b!1362878 (=> (not res!906884) (not e!773002))))

(declare-fun noDuplicate!2405 (List!31961) Bool)

(assert (=> b!1362878 (= res!906884 (noDuplicate!2405 acc!759))))

(declare-fun b!1362873 () Bool)

(assert (=> b!1362873 (= e!773002 false)))

(declare-fun lt!600570 () Unit!44903)

(assert (=> b!1362873 (= lt!600570 e!773001)))

(declare-fun c!127435 () Bool)

(assert (=> b!1362873 (= c!127435 (validKeyInArray!0 (select (arr!44740 a!3742) from!3120)))))

(declare-fun res!906890 () Bool)

(assert (=> start!115022 (=> (not res!906890) (not e!773002))))

(assert (=> start!115022 (= res!906890 (and (bvslt (size!45291 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45291 a!3742))))))

(assert (=> start!115022 e!773002))

(assert (=> start!115022 true))

(declare-fun array_inv!33685 (array!92623) Bool)

(assert (=> start!115022 (array_inv!33685 a!3742)))

(assert (= (and start!115022 res!906890) b!1362878))

(assert (= (and b!1362878 res!906884) b!1362871))

(assert (= (and b!1362871 res!906886) b!1362874))

(assert (= (and b!1362874 res!906889) b!1362870))

(assert (= (and b!1362870 res!906891) b!1362869))

(assert (= (and b!1362869 res!906883) b!1362868))

(assert (= (and b!1362868 res!906888) b!1362876))

(assert (= (and b!1362876 res!906887) b!1362877))

(assert (= (and b!1362877 res!906885) b!1362873))

(assert (= (and b!1362873 c!127435) b!1362872))

(assert (= (and b!1362873 (not c!127435)) b!1362875))

(declare-fun m!1247803 () Bool)

(assert (=> b!1362878 m!1247803))

(declare-fun m!1247805 () Bool)

(assert (=> b!1362872 m!1247805))

(declare-fun m!1247807 () Bool)

(assert (=> b!1362872 m!1247807))

(declare-fun m!1247809 () Bool)

(assert (=> b!1362872 m!1247809))

(declare-fun m!1247811 () Bool)

(assert (=> b!1362872 m!1247811))

(declare-fun m!1247813 () Bool)

(assert (=> b!1362872 m!1247813))

(assert (=> b!1362872 m!1247807))

(assert (=> b!1362872 m!1247809))

(declare-fun m!1247815 () Bool)

(assert (=> b!1362872 m!1247815))

(declare-fun m!1247817 () Bool)

(assert (=> b!1362874 m!1247817))

(declare-fun m!1247819 () Bool)

(assert (=> b!1362869 m!1247819))

(declare-fun m!1247821 () Bool)

(assert (=> b!1362876 m!1247821))

(assert (=> b!1362873 m!1247807))

(assert (=> b!1362873 m!1247807))

(declare-fun m!1247823 () Bool)

(assert (=> b!1362873 m!1247823))

(declare-fun m!1247825 () Bool)

(assert (=> b!1362871 m!1247825))

(declare-fun m!1247827 () Bool)

(assert (=> start!115022 m!1247827))

(declare-fun m!1247829 () Bool)

(assert (=> b!1362870 m!1247829))

(push 1)

(assert (not b!1362870))

(assert (not b!1362873))

(assert (not b!1362878))

(assert (not b!1362872))

(assert (not b!1362874))

(assert (not b!1362869))

(assert (not b!1362876))

(assert (not b!1362871))

(assert (not start!115022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

