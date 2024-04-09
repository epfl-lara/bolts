; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115002 () Bool)

(assert start!115002)

(declare-fun b!1362538 () Bool)

(declare-fun res!906621 () Bool)

(declare-fun e!772912 () Bool)

(assert (=> b!1362538 (=> (not res!906621) (not e!772912))))

(declare-datatypes ((array!92603 0))(
  ( (array!92604 (arr!44730 (Array (_ BitVec 32) (_ BitVec 64))) (size!45281 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92603)

(declare-datatypes ((List!31951 0))(
  ( (Nil!31948) (Cons!31947 (h!33156 (_ BitVec 64)) (t!46646 List!31951)) )
))
(declare-fun arrayNoDuplicates!0 (array!92603 (_ BitVec 32) List!31951) Bool)

(assert (=> b!1362538 (= res!906621 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31948))))

(declare-fun b!1362539 () Bool)

(declare-fun res!906614 () Bool)

(assert (=> b!1362539 (=> (not res!906614) (not e!772912))))

(declare-fun acc!759 () List!31951)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1362539 (= res!906614 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362540 () Bool)

(declare-fun res!906613 () Bool)

(assert (=> b!1362540 (=> (not res!906613) (not e!772912))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362540 (= res!906613 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45281 a!3742))))))

(declare-fun b!1362541 () Bool)

(declare-fun res!906617 () Bool)

(assert (=> b!1362541 (=> (not res!906617) (not e!772912))))

(declare-fun noDuplicate!2395 (List!31951) Bool)

(assert (=> b!1362541 (= res!906617 (noDuplicate!2395 acc!759))))

(declare-fun b!1362542 () Bool)

(declare-fun res!906620 () Bool)

(assert (=> b!1362542 (=> (not res!906620) (not e!772912))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362542 (= res!906620 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362543 () Bool)

(declare-fun res!906616 () Bool)

(assert (=> b!1362543 (=> (not res!906616) (not e!772912))))

(declare-fun contains!9516 (List!31951 (_ BitVec 64)) Bool)

(assert (=> b!1362543 (= res!906616 (not (contains!9516 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!906619 () Bool)

(assert (=> start!115002 (=> (not res!906619) (not e!772912))))

(assert (=> start!115002 (= res!906619 (and (bvslt (size!45281 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45281 a!3742))))))

(assert (=> start!115002 e!772912))

(assert (=> start!115002 true))

(declare-fun array_inv!33675 (array!92603) Bool)

(assert (=> start!115002 (array_inv!33675 a!3742)))

(declare-fun b!1362544 () Bool)

(declare-fun res!906618 () Bool)

(assert (=> b!1362544 (=> (not res!906618) (not e!772912))))

(assert (=> b!1362544 (= res!906618 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45281 a!3742)))))

(declare-fun b!1362545 () Bool)

(declare-fun res!906615 () Bool)

(assert (=> b!1362545 (=> (not res!906615) (not e!772912))))

(assert (=> b!1362545 (= res!906615 (not (contains!9516 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362546 () Bool)

(declare-datatypes ((Unit!44873 0))(
  ( (Unit!44874) )
))
(declare-fun e!772910 () Unit!44873)

(declare-fun lt!600471 () Unit!44873)

(assert (=> b!1362546 (= e!772910 lt!600471)))

(declare-fun lt!600472 () Unit!44873)

(declare-fun lemmaListSubSeqRefl!0 (List!31951) Unit!44873)

(assert (=> b!1362546 (= lt!600472 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!907 (List!31951 List!31951) Bool)

(assert (=> b!1362546 (subseq!907 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92603 List!31951 List!31951 (_ BitVec 32)) Unit!44873)

(declare-fun $colon$colon!912 (List!31951 (_ BitVec 64)) List!31951)

(assert (=> b!1362546 (= lt!600471 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!912 acc!759 (select (arr!44730 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362546 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362547 () Bool)

(assert (=> b!1362547 (= e!772912 false)))

(declare-fun lt!600473 () Unit!44873)

(assert (=> b!1362547 (= lt!600473 e!772910)))

(declare-fun c!127405 () Bool)

(assert (=> b!1362547 (= c!127405 (validKeyInArray!0 (select (arr!44730 a!3742) from!3120)))))

(declare-fun b!1362548 () Bool)

(declare-fun Unit!44875 () Unit!44873)

(assert (=> b!1362548 (= e!772910 Unit!44875)))

(assert (= (and start!115002 res!906619) b!1362541))

(assert (= (and b!1362541 res!906617) b!1362545))

(assert (= (and b!1362545 res!906615) b!1362543))

(assert (= (and b!1362543 res!906616) b!1362538))

(assert (= (and b!1362538 res!906621) b!1362539))

(assert (= (and b!1362539 res!906614) b!1362540))

(assert (= (and b!1362540 res!906613) b!1362542))

(assert (= (and b!1362542 res!906620) b!1362544))

(assert (= (and b!1362544 res!906618) b!1362547))

(assert (= (and b!1362547 c!127405) b!1362546))

(assert (= (and b!1362547 (not c!127405)) b!1362548))

(declare-fun m!1247523 () Bool)

(assert (=> b!1362543 m!1247523))

(declare-fun m!1247525 () Bool)

(assert (=> b!1362538 m!1247525))

(declare-fun m!1247527 () Bool)

(assert (=> b!1362541 m!1247527))

(declare-fun m!1247529 () Bool)

(assert (=> b!1362545 m!1247529))

(declare-fun m!1247531 () Bool)

(assert (=> start!115002 m!1247531))

(declare-fun m!1247533 () Bool)

(assert (=> b!1362542 m!1247533))

(declare-fun m!1247535 () Bool)

(assert (=> b!1362547 m!1247535))

(assert (=> b!1362547 m!1247535))

(declare-fun m!1247537 () Bool)

(assert (=> b!1362547 m!1247537))

(declare-fun m!1247539 () Bool)

(assert (=> b!1362546 m!1247539))

(assert (=> b!1362546 m!1247535))

(declare-fun m!1247541 () Bool)

(assert (=> b!1362546 m!1247541))

(declare-fun m!1247543 () Bool)

(assert (=> b!1362546 m!1247543))

(declare-fun m!1247545 () Bool)

(assert (=> b!1362546 m!1247545))

(assert (=> b!1362546 m!1247535))

(assert (=> b!1362546 m!1247541))

(declare-fun m!1247547 () Bool)

(assert (=> b!1362546 m!1247547))

(declare-fun m!1247549 () Bool)

(assert (=> b!1362539 m!1247549))

(push 1)

(assert (not start!115002))

(assert (not b!1362539))

(assert (not b!1362545))

(assert (not b!1362547))

(assert (not b!1362546))

(assert (not b!1362543))

(assert (not b!1362542))

(assert (not b!1362541))

(assert (not b!1362538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

