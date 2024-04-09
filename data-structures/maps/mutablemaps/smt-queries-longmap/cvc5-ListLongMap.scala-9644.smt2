; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114038 () Bool)

(assert start!114038)

(declare-fun b!1352603 () Bool)

(declare-datatypes ((Unit!44309 0))(
  ( (Unit!44310) )
))
(declare-fun e!768870 () Unit!44309)

(declare-fun lt!597564 () Unit!44309)

(assert (=> b!1352603 (= e!768870 lt!597564)))

(declare-fun lt!597566 () Unit!44309)

(declare-datatypes ((List!31736 0))(
  ( (Nil!31733) (Cons!31732 (h!32941 (_ BitVec 64)) (t!46401 List!31736)) )
))
(declare-fun acc!759 () List!31736)

(declare-fun lemmaListSubSeqRefl!0 (List!31736) Unit!44309)

(assert (=> b!1352603 (= lt!597566 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!710 (List!31736 List!31736) Bool)

(assert (=> b!1352603 (subseq!710 acc!759 acc!759)))

(declare-datatypes ((array!92143 0))(
  ( (array!92144 (arr!44515 (Array (_ BitVec 32) (_ BitVec 64))) (size!45066 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92143)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92143 List!31736 List!31736 (_ BitVec 32)) Unit!44309)

(declare-fun $colon$colon!727 (List!31736 (_ BitVec 64)) List!31736)

(assert (=> b!1352603 (= lt!597564 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!727 acc!759 (select (arr!44515 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92143 (_ BitVec 32) List!31736) Bool)

(assert (=> b!1352603 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352604 () Bool)

(declare-fun res!898026 () Bool)

(declare-fun e!768871 () Bool)

(assert (=> b!1352604 (=> (not res!898026) (not e!768871))))

(declare-fun contains!9301 (List!31736 (_ BitVec 64)) Bool)

(assert (=> b!1352604 (= res!898026 (not (contains!9301 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352605 () Bool)

(declare-fun res!898018 () Bool)

(assert (=> b!1352605 (=> (not res!898018) (not e!768871))))

(assert (=> b!1352605 (= res!898018 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31733))))

(declare-fun b!1352606 () Bool)

(declare-fun Unit!44311 () Unit!44309)

(assert (=> b!1352606 (= e!768870 Unit!44311)))

(declare-fun b!1352607 () Bool)

(declare-fun e!768868 () Bool)

(assert (=> b!1352607 (= e!768868 (not (bvsle from!3120 (size!45066 a!3742))))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352607 (arrayNoDuplicates!0 (array!92144 (store (arr!44515 a!3742) i!1404 l!3587) (size!45066 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597565 () Unit!44309)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92143 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31736) Unit!44309)

(assert (=> b!1352607 (= lt!597565 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352608 () Bool)

(declare-fun res!898020 () Bool)

(assert (=> b!1352608 (=> (not res!898020) (not e!768868))))

(assert (=> b!1352608 (= res!898020 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352609 () Bool)

(declare-fun res!898021 () Bool)

(assert (=> b!1352609 (=> (not res!898021) (not e!768871))))

(assert (=> b!1352609 (= res!898021 (not (contains!9301 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352610 () Bool)

(declare-fun res!898017 () Bool)

(assert (=> b!1352610 (=> (not res!898017) (not e!768871))))

(assert (=> b!1352610 (= res!898017 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45066 a!3742))))))

(declare-fun b!1352611 () Bool)

(declare-fun res!898022 () Bool)

(assert (=> b!1352611 (=> (not res!898022) (not e!768871))))

(declare-fun noDuplicate!2180 (List!31736) Bool)

(assert (=> b!1352611 (= res!898022 (noDuplicate!2180 acc!759))))

(declare-fun b!1352612 () Bool)

(declare-fun res!898025 () Bool)

(assert (=> b!1352612 (=> (not res!898025) (not e!768871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352612 (= res!898025 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352613 () Bool)

(declare-fun res!898024 () Bool)

(assert (=> b!1352613 (=> (not res!898024) (not e!768871))))

(assert (=> b!1352613 (= res!898024 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45066 a!3742)))))

(declare-fun b!1352614 () Bool)

(assert (=> b!1352614 (= e!768871 e!768868)))

(declare-fun res!898023 () Bool)

(assert (=> b!1352614 (=> (not res!898023) (not e!768868))))

(assert (=> b!1352614 (= res!898023 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597563 () Unit!44309)

(assert (=> b!1352614 (= lt!597563 e!768870)))

(declare-fun c!126736 () Bool)

(assert (=> b!1352614 (= c!126736 (validKeyInArray!0 (select (arr!44515 a!3742) from!3120)))))

(declare-fun b!1352615 () Bool)

(declare-fun res!898019 () Bool)

(assert (=> b!1352615 (=> (not res!898019) (not e!768871))))

(assert (=> b!1352615 (= res!898019 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!898016 () Bool)

(assert (=> start!114038 (=> (not res!898016) (not e!768871))))

(assert (=> start!114038 (= res!898016 (and (bvslt (size!45066 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45066 a!3742))))))

(assert (=> start!114038 e!768871))

(assert (=> start!114038 true))

(declare-fun array_inv!33460 (array!92143) Bool)

(assert (=> start!114038 (array_inv!33460 a!3742)))

(assert (= (and start!114038 res!898016) b!1352611))

(assert (= (and b!1352611 res!898022) b!1352609))

(assert (= (and b!1352609 res!898021) b!1352604))

(assert (= (and b!1352604 res!898026) b!1352605))

(assert (= (and b!1352605 res!898018) b!1352615))

(assert (= (and b!1352615 res!898019) b!1352610))

(assert (= (and b!1352610 res!898017) b!1352612))

(assert (= (and b!1352612 res!898025) b!1352613))

(assert (= (and b!1352613 res!898024) b!1352614))

(assert (= (and b!1352614 c!126736) b!1352603))

(assert (= (and b!1352614 (not c!126736)) b!1352606))

(assert (= (and b!1352614 res!898023) b!1352608))

(assert (= (and b!1352608 res!898020) b!1352607))

(declare-fun m!1239397 () Bool)

(assert (=> b!1352615 m!1239397))

(declare-fun m!1239399 () Bool)

(assert (=> b!1352603 m!1239399))

(declare-fun m!1239401 () Bool)

(assert (=> b!1352603 m!1239401))

(declare-fun m!1239403 () Bool)

(assert (=> b!1352603 m!1239403))

(declare-fun m!1239405 () Bool)

(assert (=> b!1352603 m!1239405))

(declare-fun m!1239407 () Bool)

(assert (=> b!1352603 m!1239407))

(assert (=> b!1352603 m!1239401))

(assert (=> b!1352603 m!1239403))

(declare-fun m!1239409 () Bool)

(assert (=> b!1352603 m!1239409))

(declare-fun m!1239411 () Bool)

(assert (=> b!1352612 m!1239411))

(declare-fun m!1239413 () Bool)

(assert (=> b!1352607 m!1239413))

(declare-fun m!1239415 () Bool)

(assert (=> b!1352607 m!1239415))

(declare-fun m!1239417 () Bool)

(assert (=> b!1352607 m!1239417))

(declare-fun m!1239419 () Bool)

(assert (=> start!114038 m!1239419))

(declare-fun m!1239421 () Bool)

(assert (=> b!1352611 m!1239421))

(declare-fun m!1239423 () Bool)

(assert (=> b!1352604 m!1239423))

(assert (=> b!1352614 m!1239401))

(assert (=> b!1352614 m!1239401))

(declare-fun m!1239425 () Bool)

(assert (=> b!1352614 m!1239425))

(assert (=> b!1352608 m!1239407))

(declare-fun m!1239427 () Bool)

(assert (=> b!1352609 m!1239427))

(declare-fun m!1239429 () Bool)

(assert (=> b!1352605 m!1239429))

(push 1)

(assert (not b!1352612))

(assert (not b!1352609))

(assert (not b!1352605))

(assert (not b!1352611))

(assert (not b!1352603))

(assert (not b!1352607))

(assert (not b!1352604))

(assert (not start!114038))

(assert (not b!1352614))

(assert (not b!1352608))

(assert (not b!1352615))

(check-sat)

(pop 1)

(push 1)

(check-sat)

