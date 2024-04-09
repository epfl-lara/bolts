; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115032 () Bool)

(assert start!115032)

(declare-fun b!1363033 () Bool)

(declare-fun res!907025 () Bool)

(declare-fun e!773047 () Bool)

(assert (=> b!1363033 (=> (not res!907025) (not e!773047))))

(declare-datatypes ((array!92633 0))(
  ( (array!92634 (arr!44745 (Array (_ BitVec 32) (_ BitVec 64))) (size!45296 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92633)

(declare-datatypes ((List!31966 0))(
  ( (Nil!31963) (Cons!31962 (h!33171 (_ BitVec 64)) (t!46661 List!31966)) )
))
(declare-fun arrayNoDuplicates!0 (array!92633 (_ BitVec 32) List!31966) Bool)

(assert (=> b!1363033 (= res!907025 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31963))))

(declare-fun b!1363034 () Bool)

(assert (=> b!1363034 (= e!773047 false)))

(declare-datatypes ((Unit!44918 0))(
  ( (Unit!44919) )
))
(declare-fun lt!600615 () Unit!44918)

(declare-fun e!773045 () Unit!44918)

(assert (=> b!1363034 (= lt!600615 e!773045)))

(declare-fun c!127450 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363034 (= c!127450 (validKeyInArray!0 (select (arr!44745 a!3742) from!3120)))))

(declare-fun b!1363035 () Bool)

(declare-fun Unit!44920 () Unit!44918)

(assert (=> b!1363035 (= e!773045 Unit!44920)))

(declare-fun b!1363037 () Bool)

(declare-fun res!907022 () Bool)

(assert (=> b!1363037 (=> (not res!907022) (not e!773047))))

(declare-fun acc!759 () List!31966)

(declare-fun contains!9531 (List!31966 (_ BitVec 64)) Bool)

(assert (=> b!1363037 (= res!907022 (not (contains!9531 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363038 () Bool)

(declare-fun res!907021 () Bool)

(assert (=> b!1363038 (=> (not res!907021) (not e!773047))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1363038 (= res!907021 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363039 () Bool)

(declare-fun res!907019 () Bool)

(assert (=> b!1363039 (=> (not res!907019) (not e!773047))))

(assert (=> b!1363039 (= res!907019 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45296 a!3742)))))

(declare-fun b!1363040 () Bool)

(declare-fun lt!600616 () Unit!44918)

(assert (=> b!1363040 (= e!773045 lt!600616)))

(declare-fun lt!600617 () Unit!44918)

(declare-fun lemmaListSubSeqRefl!0 (List!31966) Unit!44918)

(assert (=> b!1363040 (= lt!600617 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!922 (List!31966 List!31966) Bool)

(assert (=> b!1363040 (subseq!922 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92633 List!31966 List!31966 (_ BitVec 32)) Unit!44918)

(declare-fun $colon$colon!927 (List!31966 (_ BitVec 64)) List!31966)

(assert (=> b!1363040 (= lt!600616 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!927 acc!759 (select (arr!44745 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363040 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363041 () Bool)

(declare-fun res!907026 () Bool)

(assert (=> b!1363041 (=> (not res!907026) (not e!773047))))

(declare-fun noDuplicate!2410 (List!31966) Bool)

(assert (=> b!1363041 (= res!907026 (noDuplicate!2410 acc!759))))

(declare-fun b!1363036 () Bool)

(declare-fun res!907023 () Bool)

(assert (=> b!1363036 (=> (not res!907023) (not e!773047))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363036 (= res!907023 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45296 a!3742))))))

(declare-fun res!907018 () Bool)

(assert (=> start!115032 (=> (not res!907018) (not e!773047))))

(assert (=> start!115032 (= res!907018 (and (bvslt (size!45296 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45296 a!3742))))))

(assert (=> start!115032 e!773047))

(assert (=> start!115032 true))

(declare-fun array_inv!33690 (array!92633) Bool)

(assert (=> start!115032 (array_inv!33690 a!3742)))

(declare-fun b!1363042 () Bool)

(declare-fun res!907024 () Bool)

(assert (=> b!1363042 (=> (not res!907024) (not e!773047))))

(assert (=> b!1363042 (= res!907024 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363043 () Bool)

(declare-fun res!907020 () Bool)

(assert (=> b!1363043 (=> (not res!907020) (not e!773047))))

(assert (=> b!1363043 (= res!907020 (not (contains!9531 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115032 res!907018) b!1363041))

(assert (= (and b!1363041 res!907026) b!1363037))

(assert (= (and b!1363037 res!907022) b!1363043))

(assert (= (and b!1363043 res!907020) b!1363033))

(assert (= (and b!1363033 res!907025) b!1363042))

(assert (= (and b!1363042 res!907024) b!1363036))

(assert (= (and b!1363036 res!907023) b!1363038))

(assert (= (and b!1363038 res!907021) b!1363039))

(assert (= (and b!1363039 res!907019) b!1363034))

(assert (= (and b!1363034 c!127450) b!1363040))

(assert (= (and b!1363034 (not c!127450)) b!1363035))

(declare-fun m!1247943 () Bool)

(assert (=> b!1363038 m!1247943))

(declare-fun m!1247945 () Bool)

(assert (=> b!1363034 m!1247945))

(assert (=> b!1363034 m!1247945))

(declare-fun m!1247947 () Bool)

(assert (=> b!1363034 m!1247947))

(declare-fun m!1247949 () Bool)

(assert (=> b!1363042 m!1247949))

(declare-fun m!1247951 () Bool)

(assert (=> start!115032 m!1247951))

(declare-fun m!1247953 () Bool)

(assert (=> b!1363040 m!1247953))

(assert (=> b!1363040 m!1247945))

(declare-fun m!1247955 () Bool)

(assert (=> b!1363040 m!1247955))

(declare-fun m!1247957 () Bool)

(assert (=> b!1363040 m!1247957))

(declare-fun m!1247959 () Bool)

(assert (=> b!1363040 m!1247959))

(assert (=> b!1363040 m!1247945))

(assert (=> b!1363040 m!1247955))

(declare-fun m!1247961 () Bool)

(assert (=> b!1363040 m!1247961))

(declare-fun m!1247963 () Bool)

(assert (=> b!1363037 m!1247963))

(declare-fun m!1247965 () Bool)

(assert (=> b!1363033 m!1247965))

(declare-fun m!1247967 () Bool)

(assert (=> b!1363041 m!1247967))

(declare-fun m!1247969 () Bool)

(assert (=> b!1363043 m!1247969))

(push 1)

(assert (not b!1363033))

(assert (not b!1363038))

(assert (not b!1363042))

(assert (not b!1363037))

(assert (not b!1363041))

(assert (not b!1363040))

(assert (not b!1363043))

(assert (not start!115032))

(assert (not b!1363034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

