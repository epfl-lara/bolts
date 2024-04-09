; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114020 () Bool)

(assert start!114020)

(declare-fun b!1352277 () Bool)

(declare-fun res!897749 () Bool)

(declare-fun e!768763 () Bool)

(assert (=> b!1352277 (=> (not res!897749) (not e!768763))))

(declare-datatypes ((array!92125 0))(
  ( (array!92126 (arr!44506 (Array (_ BitVec 32) (_ BitVec 64))) (size!45057 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92125)

(declare-datatypes ((List!31727 0))(
  ( (Nil!31724) (Cons!31723 (h!32932 (_ BitVec 64)) (t!46392 List!31727)) )
))
(declare-fun arrayNoDuplicates!0 (array!92125 (_ BitVec 32) List!31727) Bool)

(assert (=> b!1352277 (= res!897749 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31724))))

(declare-fun b!1352278 () Bool)

(declare-fun res!897746 () Bool)

(assert (=> b!1352278 (=> (not res!897746) (not e!768763))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352278 (= res!897746 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45057 a!3742))))))

(declare-fun b!1352279 () Bool)

(declare-fun res!897753 () Bool)

(assert (=> b!1352279 (=> (not res!897753) (not e!768763))))

(declare-fun acc!759 () List!31727)

(declare-fun contains!9292 (List!31727 (_ BitVec 64)) Bool)

(assert (=> b!1352279 (= res!897753 (not (contains!9292 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!897748 () Bool)

(assert (=> start!114020 (=> (not res!897748) (not e!768763))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114020 (= res!897748 (and (bvslt (size!45057 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45057 a!3742))))))

(assert (=> start!114020 e!768763))

(assert (=> start!114020 true))

(declare-fun array_inv!33451 (array!92125) Bool)

(assert (=> start!114020 (array_inv!33451 a!3742)))

(declare-fun b!1352280 () Bool)

(declare-fun res!897744 () Bool)

(assert (=> b!1352280 (=> (not res!897744) (not e!768763))))

(assert (=> b!1352280 (= res!897744 (not (contains!9292 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352281 () Bool)

(declare-fun res!897751 () Bool)

(assert (=> b!1352281 (=> (not res!897751) (not e!768763))))

(assert (=> b!1352281 (= res!897751 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352282 () Bool)

(declare-fun res!897750 () Bool)

(assert (=> b!1352282 (=> (not res!897750) (not e!768763))))

(declare-fun noDuplicate!2171 (List!31727) Bool)

(assert (=> b!1352282 (= res!897750 (noDuplicate!2171 acc!759))))

(declare-fun b!1352283 () Bool)

(declare-datatypes ((Unit!44282 0))(
  ( (Unit!44283) )
))
(declare-fun e!768760 () Unit!44282)

(declare-fun lt!597458 () Unit!44282)

(assert (=> b!1352283 (= e!768760 lt!597458)))

(declare-fun lt!597455 () Unit!44282)

(declare-fun lemmaListSubSeqRefl!0 (List!31727) Unit!44282)

(assert (=> b!1352283 (= lt!597455 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!701 (List!31727 List!31727) Bool)

(assert (=> b!1352283 (subseq!701 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92125 List!31727 List!31727 (_ BitVec 32)) Unit!44282)

(declare-fun $colon$colon!718 (List!31727 (_ BitVec 64)) List!31727)

(assert (=> b!1352283 (= lt!597458 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!718 acc!759 (select (arr!44506 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352283 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352284 () Bool)

(declare-fun e!768762 () Bool)

(assert (=> b!1352284 (= e!768763 e!768762)))

(declare-fun res!897745 () Bool)

(assert (=> b!1352284 (=> (not res!897745) (not e!768762))))

(assert (=> b!1352284 (= res!897745 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597457 () Unit!44282)

(assert (=> b!1352284 (= lt!597457 e!768760)))

(declare-fun c!126709 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352284 (= c!126709 (validKeyInArray!0 (select (arr!44506 a!3742) from!3120)))))

(declare-fun b!1352285 () Bool)

(assert (=> b!1352285 (= e!768762 false)))

(declare-fun lt!597456 () Bool)

(assert (=> b!1352285 (= lt!597456 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352286 () Bool)

(declare-fun res!897747 () Bool)

(assert (=> b!1352286 (=> (not res!897747) (not e!768763))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1352286 (= res!897747 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352287 () Bool)

(declare-fun res!897752 () Bool)

(assert (=> b!1352287 (=> (not res!897752) (not e!768763))))

(assert (=> b!1352287 (= res!897752 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45057 a!3742)))))

(declare-fun b!1352288 () Bool)

(declare-fun Unit!44284 () Unit!44282)

(assert (=> b!1352288 (= e!768760 Unit!44284)))

(assert (= (and start!114020 res!897748) b!1352282))

(assert (= (and b!1352282 res!897750) b!1352280))

(assert (= (and b!1352280 res!897744) b!1352279))

(assert (= (and b!1352279 res!897753) b!1352277))

(assert (= (and b!1352277 res!897749) b!1352281))

(assert (= (and b!1352281 res!897751) b!1352278))

(assert (= (and b!1352278 res!897746) b!1352286))

(assert (= (and b!1352286 res!897747) b!1352287))

(assert (= (and b!1352287 res!897752) b!1352284))

(assert (= (and b!1352284 c!126709) b!1352283))

(assert (= (and b!1352284 (not c!126709)) b!1352288))

(assert (= (and b!1352284 res!897745) b!1352285))

(declare-fun m!1239145 () Bool)

(assert (=> b!1352280 m!1239145))

(declare-fun m!1239147 () Bool)

(assert (=> b!1352284 m!1239147))

(assert (=> b!1352284 m!1239147))

(declare-fun m!1239149 () Bool)

(assert (=> b!1352284 m!1239149))

(declare-fun m!1239151 () Bool)

(assert (=> b!1352281 m!1239151))

(declare-fun m!1239153 () Bool)

(assert (=> b!1352286 m!1239153))

(declare-fun m!1239155 () Bool)

(assert (=> b!1352282 m!1239155))

(declare-fun m!1239157 () Bool)

(assert (=> b!1352279 m!1239157))

(declare-fun m!1239159 () Bool)

(assert (=> b!1352285 m!1239159))

(declare-fun m!1239161 () Bool)

(assert (=> b!1352283 m!1239161))

(assert (=> b!1352283 m!1239147))

(declare-fun m!1239163 () Bool)

(assert (=> b!1352283 m!1239163))

(declare-fun m!1239165 () Bool)

(assert (=> b!1352283 m!1239165))

(assert (=> b!1352283 m!1239159))

(assert (=> b!1352283 m!1239147))

(assert (=> b!1352283 m!1239163))

(declare-fun m!1239167 () Bool)

(assert (=> b!1352283 m!1239167))

(declare-fun m!1239169 () Bool)

(assert (=> b!1352277 m!1239169))

(declare-fun m!1239171 () Bool)

(assert (=> start!114020 m!1239171))

(push 1)

