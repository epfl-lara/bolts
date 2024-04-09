; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114042 () Bool)

(assert start!114042)

(declare-fun res!898084 () Bool)

(declare-fun e!768895 () Bool)

(assert (=> start!114042 (=> (not res!898084) (not e!768895))))

(declare-datatypes ((array!92147 0))(
  ( (array!92148 (arr!44517 (Array (_ BitVec 32) (_ BitVec 64))) (size!45068 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92147)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114042 (= res!898084 (and (bvslt (size!45068 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45068 a!3742))))))

(assert (=> start!114042 e!768895))

(assert (=> start!114042 true))

(declare-fun array_inv!33462 (array!92147) Bool)

(assert (=> start!114042 (array_inv!33462 a!3742)))

(declare-fun b!1352681 () Bool)

(declare-fun e!768892 () Bool)

(assert (=> b!1352681 (= e!768895 e!768892)))

(declare-fun res!898082 () Bool)

(assert (=> b!1352681 (=> (not res!898082) (not e!768892))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352681 (= res!898082 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44315 0))(
  ( (Unit!44316) )
))
(declare-fun lt!597588 () Unit!44315)

(declare-fun e!768893 () Unit!44315)

(assert (=> b!1352681 (= lt!597588 e!768893)))

(declare-fun c!126742 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352681 (= c!126742 (validKeyInArray!0 (select (arr!44517 a!3742) from!3120)))))

(declare-fun b!1352682 () Bool)

(declare-fun res!898088 () Bool)

(assert (=> b!1352682 (=> (not res!898088) (not e!768895))))

(declare-datatypes ((List!31738 0))(
  ( (Nil!31735) (Cons!31734 (h!32943 (_ BitVec 64)) (t!46403 List!31738)) )
))
(declare-fun acc!759 () List!31738)

(declare-fun noDuplicate!2182 (List!31738) Bool)

(assert (=> b!1352682 (= res!898088 (noDuplicate!2182 acc!759))))

(declare-fun b!1352683 () Bool)

(declare-fun Unit!44317 () Unit!44315)

(assert (=> b!1352683 (= e!768893 Unit!44317)))

(declare-fun b!1352684 () Bool)

(declare-fun res!898090 () Bool)

(assert (=> b!1352684 (=> (not res!898090) (not e!768895))))

(declare-fun contains!9303 (List!31738 (_ BitVec 64)) Bool)

(assert (=> b!1352684 (= res!898090 (not (contains!9303 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352685 () Bool)

(declare-fun res!898089 () Bool)

(assert (=> b!1352685 (=> (not res!898089) (not e!768895))))

(declare-fun arrayNoDuplicates!0 (array!92147 (_ BitVec 32) List!31738) Bool)

(assert (=> b!1352685 (= res!898089 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352686 () Bool)

(declare-fun res!898086 () Bool)

(assert (=> b!1352686 (=> (not res!898086) (not e!768895))))

(assert (=> b!1352686 (= res!898086 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45068 a!3742))))))

(declare-fun b!1352687 () Bool)

(declare-fun res!898087 () Bool)

(assert (=> b!1352687 (=> (not res!898087) (not e!768895))))

(assert (=> b!1352687 (= res!898087 (not (contains!9303 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352688 () Bool)

(declare-fun lt!597589 () Unit!44315)

(assert (=> b!1352688 (= e!768893 lt!597589)))

(declare-fun lt!597587 () Unit!44315)

(declare-fun lemmaListSubSeqRefl!0 (List!31738) Unit!44315)

(assert (=> b!1352688 (= lt!597587 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!712 (List!31738 List!31738) Bool)

(assert (=> b!1352688 (subseq!712 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92147 List!31738 List!31738 (_ BitVec 32)) Unit!44315)

(declare-fun $colon$colon!729 (List!31738 (_ BitVec 64)) List!31738)

(assert (=> b!1352688 (= lt!597589 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!729 acc!759 (select (arr!44517 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352688 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352689 () Bool)

(assert (=> b!1352689 (= e!768892 (not (bvsle from!3120 (size!45068 a!3742))))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1352689 (arrayNoDuplicates!0 (array!92148 (store (arr!44517 a!3742) i!1404 l!3587) (size!45068 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597590 () Unit!44315)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92147 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31738) Unit!44315)

(assert (=> b!1352689 (= lt!597590 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352690 () Bool)

(declare-fun res!898085 () Bool)

(assert (=> b!1352690 (=> (not res!898085) (not e!768895))))

(assert (=> b!1352690 (= res!898085 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45068 a!3742)))))

(declare-fun b!1352691 () Bool)

(declare-fun res!898091 () Bool)

(assert (=> b!1352691 (=> (not res!898091) (not e!768895))))

(assert (=> b!1352691 (= res!898091 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31735))))

(declare-fun b!1352692 () Bool)

(declare-fun res!898083 () Bool)

(assert (=> b!1352692 (=> (not res!898083) (not e!768892))))

(assert (=> b!1352692 (= res!898083 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352693 () Bool)

(declare-fun res!898092 () Bool)

(assert (=> b!1352693 (=> (not res!898092) (not e!768895))))

(assert (=> b!1352693 (= res!898092 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114042 res!898084) b!1352682))

(assert (= (and b!1352682 res!898088) b!1352687))

(assert (= (and b!1352687 res!898087) b!1352684))

(assert (= (and b!1352684 res!898090) b!1352691))

(assert (= (and b!1352691 res!898091) b!1352685))

(assert (= (and b!1352685 res!898089) b!1352686))

(assert (= (and b!1352686 res!898086) b!1352693))

(assert (= (and b!1352693 res!898092) b!1352690))

(assert (= (and b!1352690 res!898085) b!1352681))

(assert (= (and b!1352681 c!126742) b!1352688))

(assert (= (and b!1352681 (not c!126742)) b!1352683))

(assert (= (and b!1352681 res!898082) b!1352692))

(assert (= (and b!1352692 res!898083) b!1352689))

(declare-fun m!1239465 () Bool)

(assert (=> b!1352693 m!1239465))

(declare-fun m!1239467 () Bool)

(assert (=> b!1352684 m!1239467))

(declare-fun m!1239469 () Bool)

(assert (=> b!1352682 m!1239469))

(declare-fun m!1239471 () Bool)

(assert (=> b!1352692 m!1239471))

(declare-fun m!1239473 () Bool)

(assert (=> start!114042 m!1239473))

(declare-fun m!1239475 () Bool)

(assert (=> b!1352688 m!1239475))

(declare-fun m!1239477 () Bool)

(assert (=> b!1352688 m!1239477))

(declare-fun m!1239479 () Bool)

(assert (=> b!1352688 m!1239479))

(declare-fun m!1239481 () Bool)

(assert (=> b!1352688 m!1239481))

(assert (=> b!1352688 m!1239471))

(assert (=> b!1352688 m!1239477))

(assert (=> b!1352688 m!1239479))

(declare-fun m!1239483 () Bool)

(assert (=> b!1352688 m!1239483))

(declare-fun m!1239485 () Bool)

(assert (=> b!1352689 m!1239485))

(declare-fun m!1239487 () Bool)

(assert (=> b!1352689 m!1239487))

(declare-fun m!1239489 () Bool)

(assert (=> b!1352689 m!1239489))

(declare-fun m!1239491 () Bool)

(assert (=> b!1352687 m!1239491))

(declare-fun m!1239493 () Bool)

(assert (=> b!1352685 m!1239493))

(assert (=> b!1352681 m!1239477))

(assert (=> b!1352681 m!1239477))

(declare-fun m!1239495 () Bool)

(assert (=> b!1352681 m!1239495))

(declare-fun m!1239497 () Bool)

(assert (=> b!1352691 m!1239497))

(push 1)

(assert (not start!114042))

(assert (not b!1352684))

(assert (not b!1352691))

(assert (not b!1352682))

(assert (not b!1352681))

(assert (not b!1352687))

(assert (not b!1352688))

(assert (not b!1352689))

(assert (not b!1352692))

(assert (not b!1352693))

(assert (not b!1352685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

