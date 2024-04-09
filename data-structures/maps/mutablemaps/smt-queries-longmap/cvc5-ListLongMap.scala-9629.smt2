; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113948 () Bool)

(assert start!113948)

(declare-fun b!1350825 () Bool)

(declare-fun res!896407 () Bool)

(declare-fun e!768382 () Bool)

(assert (=> b!1350825 (=> (not res!896407) (not e!768382))))

(declare-datatypes ((List!31691 0))(
  ( (Nil!31688) (Cons!31687 (h!32896 (_ BitVec 64)) (t!46356 List!31691)) )
))
(declare-fun acc!759 () List!31691)

(declare-datatypes ((array!92053 0))(
  ( (array!92054 (arr!44470 (Array (_ BitVec 32) (_ BitVec 64))) (size!45021 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92053)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92053 (_ BitVec 32) List!31691) Bool)

(assert (=> b!1350825 (= res!896407 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1350826 () Bool)

(declare-fun res!896412 () Bool)

(assert (=> b!1350826 (=> (not res!896412) (not e!768382))))

(assert (=> b!1350826 (= res!896412 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45021 a!3742)))))

(declare-fun res!896411 () Bool)

(assert (=> start!113948 (=> (not res!896411) (not e!768382))))

(assert (=> start!113948 (= res!896411 (and (bvslt (size!45021 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45021 a!3742))))))

(assert (=> start!113948 e!768382))

(assert (=> start!113948 true))

(declare-fun array_inv!33415 (array!92053) Bool)

(assert (=> start!113948 (array_inv!33415 a!3742)))

(declare-fun b!1350827 () Bool)

(declare-fun res!896410 () Bool)

(assert (=> b!1350827 (=> (not res!896410) (not e!768382))))

(declare-fun noDuplicate!2135 (List!31691) Bool)

(assert (=> b!1350827 (= res!896410 (noDuplicate!2135 acc!759))))

(declare-fun b!1350828 () Bool)

(declare-fun e!768381 () Bool)

(assert (=> b!1350828 (= e!768381 true)))

(declare-fun lt!597025 () List!31691)

(declare-fun lt!597024 () Bool)

(assert (=> b!1350828 (= lt!597024 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597025))))

(declare-datatypes ((Unit!44192 0))(
  ( (Unit!44193) )
))
(declare-fun lt!597023 () Unit!44192)

(declare-fun noDuplicateSubseq!116 (List!31691 List!31691) Unit!44192)

(assert (=> b!1350828 (= lt!597023 (noDuplicateSubseq!116 acc!759 lt!597025))))

(declare-fun b!1350829 () Bool)

(declare-fun res!896409 () Bool)

(assert (=> b!1350829 (=> (not res!896409) (not e!768382))))

(assert (=> b!1350829 (= res!896409 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31688))))

(declare-fun b!1350830 () Bool)

(declare-fun res!896416 () Bool)

(assert (=> b!1350830 (=> (not res!896416) (not e!768382))))

(declare-fun contains!9256 (List!31691 (_ BitVec 64)) Bool)

(assert (=> b!1350830 (= res!896416 (not (contains!9256 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350831 () Bool)

(declare-fun res!896417 () Bool)

(assert (=> b!1350831 (=> res!896417 e!768381)))

(assert (=> b!1350831 (= res!896417 (contains!9256 lt!597025 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350832 () Bool)

(declare-fun res!896415 () Bool)

(assert (=> b!1350832 (=> (not res!896415) (not e!768382))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1350832 (= res!896415 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45021 a!3742))))))

(declare-fun b!1350833 () Bool)

(assert (=> b!1350833 (= e!768382 (not e!768381))))

(declare-fun res!896418 () Bool)

(assert (=> b!1350833 (=> res!896418 e!768381)))

(assert (=> b!1350833 (= res!896418 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!682 (List!31691 (_ BitVec 64)) List!31691)

(assert (=> b!1350833 (= lt!597025 ($colon$colon!682 acc!759 (select (arr!44470 a!3742) from!3120)))))

(declare-fun subseq!665 (List!31691 List!31691) Bool)

(assert (=> b!1350833 (subseq!665 acc!759 acc!759)))

(declare-fun lt!597026 () Unit!44192)

(declare-fun lemmaListSubSeqRefl!0 (List!31691) Unit!44192)

(assert (=> b!1350833 (= lt!597026 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1350834 () Bool)

(declare-fun res!896406 () Bool)

(assert (=> b!1350834 (=> res!896406 e!768381)))

(assert (=> b!1350834 (= res!896406 (contains!9256 lt!597025 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350835 () Bool)

(declare-fun res!896414 () Bool)

(assert (=> b!1350835 (=> (not res!896414) (not e!768382))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1350835 (= res!896414 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1350836 () Bool)

(declare-fun res!896404 () Bool)

(assert (=> b!1350836 (=> res!896404 e!768381)))

(assert (=> b!1350836 (= res!896404 (not (subseq!665 acc!759 lt!597025)))))

(declare-fun b!1350837 () Bool)

(declare-fun res!896408 () Bool)

(assert (=> b!1350837 (=> (not res!896408) (not e!768382))))

(assert (=> b!1350837 (= res!896408 (not (contains!9256 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350838 () Bool)

(declare-fun res!896413 () Bool)

(assert (=> b!1350838 (=> (not res!896413) (not e!768382))))

(assert (=> b!1350838 (= res!896413 (validKeyInArray!0 (select (arr!44470 a!3742) from!3120)))))

(declare-fun b!1350839 () Bool)

(declare-fun res!896405 () Bool)

(assert (=> b!1350839 (=> res!896405 e!768381)))

(assert (=> b!1350839 (= res!896405 (not (noDuplicate!2135 lt!597025)))))

(assert (= (and start!113948 res!896411) b!1350827))

(assert (= (and b!1350827 res!896410) b!1350830))

(assert (= (and b!1350830 res!896416) b!1350837))

(assert (= (and b!1350837 res!896408) b!1350829))

(assert (= (and b!1350829 res!896409) b!1350825))

(assert (= (and b!1350825 res!896407) b!1350832))

(assert (= (and b!1350832 res!896415) b!1350835))

(assert (= (and b!1350835 res!896414) b!1350826))

(assert (= (and b!1350826 res!896412) b!1350838))

(assert (= (and b!1350838 res!896413) b!1350833))

(assert (= (and b!1350833 (not res!896418)) b!1350839))

(assert (= (and b!1350839 (not res!896405)) b!1350831))

(assert (= (and b!1350831 (not res!896417)) b!1350834))

(assert (= (and b!1350834 (not res!896406)) b!1350836))

(assert (= (and b!1350836 (not res!896404)) b!1350828))

(declare-fun m!1237993 () Bool)

(assert (=> b!1350825 m!1237993))

(declare-fun m!1237995 () Bool)

(assert (=> b!1350827 m!1237995))

(declare-fun m!1237997 () Bool)

(assert (=> b!1350835 m!1237997))

(declare-fun m!1237999 () Bool)

(assert (=> start!113948 m!1237999))

(declare-fun m!1238001 () Bool)

(assert (=> b!1350830 m!1238001))

(declare-fun m!1238003 () Bool)

(assert (=> b!1350829 m!1238003))

(declare-fun m!1238005 () Bool)

(assert (=> b!1350839 m!1238005))

(declare-fun m!1238007 () Bool)

(assert (=> b!1350838 m!1238007))

(assert (=> b!1350838 m!1238007))

(declare-fun m!1238009 () Bool)

(assert (=> b!1350838 m!1238009))

(declare-fun m!1238011 () Bool)

(assert (=> b!1350836 m!1238011))

(declare-fun m!1238013 () Bool)

(assert (=> b!1350834 m!1238013))

(declare-fun m!1238015 () Bool)

(assert (=> b!1350831 m!1238015))

(declare-fun m!1238017 () Bool)

(assert (=> b!1350837 m!1238017))

(declare-fun m!1238019 () Bool)

(assert (=> b!1350828 m!1238019))

(declare-fun m!1238021 () Bool)

(assert (=> b!1350828 m!1238021))

(assert (=> b!1350833 m!1238007))

(assert (=> b!1350833 m!1238007))

(declare-fun m!1238023 () Bool)

(assert (=> b!1350833 m!1238023))

(declare-fun m!1238025 () Bool)

(assert (=> b!1350833 m!1238025))

(declare-fun m!1238027 () Bool)

(assert (=> b!1350833 m!1238027))

(push 1)

(assert (not start!113948))

(assert (not b!1350825))

(assert (not b!1350839))

(assert (not b!1350828))

(assert (not b!1350831))

(assert (not b!1350838))

(assert (not b!1350833))

(assert (not b!1350836))

(assert (not b!1350834))

(assert (not b!1350827))

(assert (not b!1350830))

(assert (not b!1350829))

(assert (not b!1350835))

(assert (not b!1350837))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

