; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115112 () Bool)

(assert start!115112)

(declare-fun b!1363664 () Bool)

(declare-datatypes ((Unit!44957 0))(
  ( (Unit!44958) )
))
(declare-fun e!773341 () Unit!44957)

(declare-fun lt!600822 () Unit!44957)

(assert (=> b!1363664 (= e!773341 lt!600822)))

(declare-fun lt!600820 () Unit!44957)

(declare-datatypes ((List!31979 0))(
  ( (Nil!31976) (Cons!31975 (h!33184 (_ BitVec 64)) (t!46677 List!31979)) )
))
(declare-fun acc!759 () List!31979)

(declare-fun lemmaListSubSeqRefl!0 (List!31979) Unit!44957)

(assert (=> b!1363664 (= lt!600820 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!935 (List!31979 List!31979) Bool)

(assert (=> b!1363664 (subseq!935 acc!759 acc!759)))

(declare-datatypes ((array!92662 0))(
  ( (array!92663 (arr!44758 (Array (_ BitVec 32) (_ BitVec 64))) (size!45309 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92662)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92662 List!31979 List!31979 (_ BitVec 32)) Unit!44957)

(declare-fun $colon$colon!940 (List!31979 (_ BitVec 64)) List!31979)

(assert (=> b!1363664 (= lt!600822 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!940 acc!759 (select (arr!44758 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92662 (_ BitVec 32) List!31979) Bool)

(assert (=> b!1363664 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363665 () Bool)

(declare-fun res!907542 () Bool)

(declare-fun e!773338 () Bool)

(assert (=> b!1363665 (=> (not res!907542) (not e!773338))))

(declare-fun contains!9544 (List!31979 (_ BitVec 64)) Bool)

(assert (=> b!1363665 (= res!907542 (not (contains!9544 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363666 () Bool)

(declare-fun res!907546 () Bool)

(declare-fun e!773339 () Bool)

(assert (=> b!1363666 (=> (not res!907546) (not e!773339))))

(assert (=> b!1363666 (= res!907546 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun res!907541 () Bool)

(assert (=> start!115112 (=> (not res!907541) (not e!773338))))

(assert (=> start!115112 (= res!907541 (and (bvslt (size!45309 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45309 a!3742))))))

(assert (=> start!115112 e!773338))

(assert (=> start!115112 true))

(declare-fun array_inv!33703 (array!92662) Bool)

(assert (=> start!115112 (array_inv!33703 a!3742)))

(declare-fun b!1363667 () Bool)

(declare-fun Unit!44959 () Unit!44957)

(assert (=> b!1363667 (= e!773341 Unit!44959)))

(declare-fun b!1363668 () Bool)

(assert (=> b!1363668 (= e!773339 (not true))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363668 (arrayNoDuplicates!0 (array!92663 (store (arr!44758 a!3742) i!1404 l!3587) (size!45309 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600823 () Unit!44957)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31979) Unit!44957)

(assert (=> b!1363668 (= lt!600823 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363669 () Bool)

(declare-fun res!907550 () Bool)

(assert (=> b!1363669 (=> (not res!907550) (not e!773338))))

(assert (=> b!1363669 (= res!907550 (not (contains!9544 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363670 () Bool)

(declare-fun res!907547 () Bool)

(assert (=> b!1363670 (=> (not res!907547) (not e!773338))))

(assert (=> b!1363670 (= res!907547 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31976))))

(declare-fun b!1363671 () Bool)

(declare-fun res!907548 () Bool)

(assert (=> b!1363671 (=> (not res!907548) (not e!773338))))

(assert (=> b!1363671 (= res!907548 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363672 () Bool)

(declare-fun res!907545 () Bool)

(assert (=> b!1363672 (=> (not res!907545) (not e!773338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363672 (= res!907545 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363673 () Bool)

(declare-fun res!907544 () Bool)

(assert (=> b!1363673 (=> (not res!907544) (not e!773338))))

(assert (=> b!1363673 (= res!907544 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45309 a!3742)))))

(declare-fun b!1363674 () Bool)

(assert (=> b!1363674 (= e!773338 e!773339)))

(declare-fun res!907543 () Bool)

(assert (=> b!1363674 (=> (not res!907543) (not e!773339))))

(declare-fun lt!600821 () Bool)

(assert (=> b!1363674 (= res!907543 (and (not (= from!3120 i!1404)) (not lt!600821) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600824 () Unit!44957)

(assert (=> b!1363674 (= lt!600824 e!773341)))

(declare-fun c!127504 () Bool)

(assert (=> b!1363674 (= c!127504 lt!600821)))

(assert (=> b!1363674 (= lt!600821 (validKeyInArray!0 (select (arr!44758 a!3742) from!3120)))))

(declare-fun b!1363675 () Bool)

(declare-fun res!907551 () Bool)

(assert (=> b!1363675 (=> (not res!907551) (not e!773338))))

(declare-fun noDuplicate!2423 (List!31979) Bool)

(assert (=> b!1363675 (= res!907551 (noDuplicate!2423 acc!759))))

(declare-fun b!1363676 () Bool)

(declare-fun res!907549 () Bool)

(assert (=> b!1363676 (=> (not res!907549) (not e!773338))))

(assert (=> b!1363676 (= res!907549 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45309 a!3742))))))

(assert (= (and start!115112 res!907541) b!1363675))

(assert (= (and b!1363675 res!907551) b!1363665))

(assert (= (and b!1363665 res!907542) b!1363669))

(assert (= (and b!1363669 res!907550) b!1363670))

(assert (= (and b!1363670 res!907547) b!1363671))

(assert (= (and b!1363671 res!907548) b!1363676))

(assert (= (and b!1363676 res!907549) b!1363672))

(assert (= (and b!1363672 res!907545) b!1363673))

(assert (= (and b!1363673 res!907544) b!1363674))

(assert (= (and b!1363674 c!127504) b!1363664))

(assert (= (and b!1363674 (not c!127504)) b!1363667))

(assert (= (and b!1363674 res!907543) b!1363666))

(assert (= (and b!1363666 res!907546) b!1363668))

(declare-fun m!1248433 () Bool)

(assert (=> b!1363670 m!1248433))

(declare-fun m!1248435 () Bool)

(assert (=> b!1363671 m!1248435))

(declare-fun m!1248437 () Bool)

(assert (=> b!1363675 m!1248437))

(declare-fun m!1248439 () Bool)

(assert (=> b!1363665 m!1248439))

(declare-fun m!1248441 () Bool)

(assert (=> start!115112 m!1248441))

(declare-fun m!1248443 () Bool)

(assert (=> b!1363674 m!1248443))

(assert (=> b!1363674 m!1248443))

(declare-fun m!1248445 () Bool)

(assert (=> b!1363674 m!1248445))

(declare-fun m!1248447 () Bool)

(assert (=> b!1363666 m!1248447))

(declare-fun m!1248449 () Bool)

(assert (=> b!1363664 m!1248449))

(assert (=> b!1363664 m!1248443))

(declare-fun m!1248451 () Bool)

(assert (=> b!1363664 m!1248451))

(declare-fun m!1248453 () Bool)

(assert (=> b!1363664 m!1248453))

(assert (=> b!1363664 m!1248447))

(assert (=> b!1363664 m!1248443))

(assert (=> b!1363664 m!1248451))

(declare-fun m!1248455 () Bool)

(assert (=> b!1363664 m!1248455))

(declare-fun m!1248457 () Bool)

(assert (=> b!1363669 m!1248457))

(declare-fun m!1248459 () Bool)

(assert (=> b!1363668 m!1248459))

(declare-fun m!1248461 () Bool)

(assert (=> b!1363668 m!1248461))

(declare-fun m!1248463 () Bool)

(assert (=> b!1363668 m!1248463))

(declare-fun m!1248465 () Bool)

(assert (=> b!1363672 m!1248465))

(push 1)

