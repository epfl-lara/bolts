; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114170 () Bool)

(assert start!114170)

(declare-fun b!1355517 () Bool)

(declare-fun e!769777 () Bool)

(declare-fun e!769779 () Bool)

(assert (=> b!1355517 (= e!769777 e!769779)))

(declare-fun res!900541 () Bool)

(assert (=> b!1355517 (=> (not res!900541) (not e!769779))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!598637 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355517 (= res!900541 (and (not (= from!3120 i!1404)) (not lt!598637) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44507 0))(
  ( (Unit!44508) )
))
(declare-fun lt!598636 () Unit!44507)

(declare-fun e!769778 () Unit!44507)

(assert (=> b!1355517 (= lt!598636 e!769778)))

(declare-fun c!126934 () Bool)

(assert (=> b!1355517 (= c!126934 lt!598637)))

(declare-datatypes ((array!92275 0))(
  ( (array!92276 (arr!44581 (Array (_ BitVec 32) (_ BitVec 64))) (size!45132 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92275)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355517 (= lt!598637 (validKeyInArray!0 (select (arr!44581 a!3742) from!3120)))))

(declare-fun b!1355518 () Bool)

(declare-fun res!900535 () Bool)

(assert (=> b!1355518 (=> (not res!900535) (not e!769777))))

(declare-datatypes ((List!31802 0))(
  ( (Nil!31799) (Cons!31798 (h!33007 (_ BitVec 64)) (t!46467 List!31802)) )
))
(declare-fun arrayNoDuplicates!0 (array!92275 (_ BitVec 32) List!31802) Bool)

(assert (=> b!1355518 (= res!900535 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31799))))

(declare-fun b!1355519 () Bool)

(declare-fun res!900536 () Bool)

(assert (=> b!1355519 (=> (not res!900536) (not e!769777))))

(assert (=> b!1355519 (= res!900536 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45132 a!3742)))))

(declare-fun b!1355520 () Bool)

(declare-fun res!900540 () Bool)

(assert (=> b!1355520 (=> (not res!900540) (not e!769777))))

(declare-fun acc!759 () List!31802)

(assert (=> b!1355520 (= res!900540 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355521 () Bool)

(declare-fun Unit!44509 () Unit!44507)

(assert (=> b!1355521 (= e!769778 Unit!44509)))

(declare-fun b!1355522 () Bool)

(declare-fun res!900539 () Bool)

(assert (=> b!1355522 (=> (not res!900539) (not e!769777))))

(declare-fun contains!9367 (List!31802 (_ BitVec 64)) Bool)

(assert (=> b!1355522 (= res!900539 (not (contains!9367 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355523 () Bool)

(declare-fun res!900534 () Bool)

(assert (=> b!1355523 (=> (not res!900534) (not e!769777))))

(assert (=> b!1355523 (= res!900534 (not (contains!9367 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355524 () Bool)

(declare-fun res!900543 () Bool)

(assert (=> b!1355524 (=> (not res!900543) (not e!769777))))

(declare-fun noDuplicate!2246 (List!31802) Bool)

(assert (=> b!1355524 (= res!900543 (noDuplicate!2246 acc!759))))

(declare-fun b!1355525 () Bool)

(declare-fun lt!598639 () Unit!44507)

(assert (=> b!1355525 (= e!769778 lt!598639)))

(declare-fun lt!598638 () Unit!44507)

(declare-fun lemmaListSubSeqRefl!0 (List!31802) Unit!44507)

(assert (=> b!1355525 (= lt!598638 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!776 (List!31802 List!31802) Bool)

(assert (=> b!1355525 (subseq!776 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92275 List!31802 List!31802 (_ BitVec 32)) Unit!44507)

(declare-fun $colon$colon!793 (List!31802 (_ BitVec 64)) List!31802)

(assert (=> b!1355525 (= lt!598639 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!793 acc!759 (select (arr!44581 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355525 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355526 () Bool)

(declare-fun res!900538 () Bool)

(assert (=> b!1355526 (=> (not res!900538) (not e!769777))))

(assert (=> b!1355526 (= res!900538 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45132 a!3742))))))

(declare-fun b!1355527 () Bool)

(assert (=> b!1355527 (= e!769779 false)))

(declare-fun lt!598640 () Bool)

(assert (=> b!1355527 (= lt!598640 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355528 () Bool)

(declare-fun res!900542 () Bool)

(assert (=> b!1355528 (=> (not res!900542) (not e!769777))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355528 (= res!900542 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!900537 () Bool)

(assert (=> start!114170 (=> (not res!900537) (not e!769777))))

(assert (=> start!114170 (= res!900537 (and (bvslt (size!45132 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45132 a!3742))))))

(assert (=> start!114170 e!769777))

(assert (=> start!114170 true))

(declare-fun array_inv!33526 (array!92275) Bool)

(assert (=> start!114170 (array_inv!33526 a!3742)))

(assert (= (and start!114170 res!900537) b!1355524))

(assert (= (and b!1355524 res!900543) b!1355523))

(assert (= (and b!1355523 res!900534) b!1355522))

(assert (= (and b!1355522 res!900539) b!1355518))

(assert (= (and b!1355518 res!900535) b!1355520))

(assert (= (and b!1355520 res!900540) b!1355526))

(assert (= (and b!1355526 res!900538) b!1355528))

(assert (= (and b!1355528 res!900542) b!1355519))

(assert (= (and b!1355519 res!900536) b!1355517))

(assert (= (and b!1355517 c!126934) b!1355525))

(assert (= (and b!1355517 (not c!126934)) b!1355521))

(assert (= (and b!1355517 res!900541) b!1355527))

(declare-fun m!1241701 () Bool)

(assert (=> start!114170 m!1241701))

(declare-fun m!1241703 () Bool)

(assert (=> b!1355523 m!1241703))

(declare-fun m!1241705 () Bool)

(assert (=> b!1355522 m!1241705))

(declare-fun m!1241707 () Bool)

(assert (=> b!1355518 m!1241707))

(declare-fun m!1241709 () Bool)

(assert (=> b!1355525 m!1241709))

(declare-fun m!1241711 () Bool)

(assert (=> b!1355525 m!1241711))

(declare-fun m!1241713 () Bool)

(assert (=> b!1355525 m!1241713))

(declare-fun m!1241715 () Bool)

(assert (=> b!1355525 m!1241715))

(declare-fun m!1241717 () Bool)

(assert (=> b!1355525 m!1241717))

(assert (=> b!1355525 m!1241711))

(assert (=> b!1355525 m!1241713))

(declare-fun m!1241719 () Bool)

(assert (=> b!1355525 m!1241719))

(assert (=> b!1355517 m!1241711))

(assert (=> b!1355517 m!1241711))

(declare-fun m!1241721 () Bool)

(assert (=> b!1355517 m!1241721))

(assert (=> b!1355527 m!1241717))

(declare-fun m!1241723 () Bool)

(assert (=> b!1355520 m!1241723))

(declare-fun m!1241725 () Bool)

(assert (=> b!1355528 m!1241725))

(declare-fun m!1241727 () Bool)

(assert (=> b!1355524 m!1241727))

(push 1)

