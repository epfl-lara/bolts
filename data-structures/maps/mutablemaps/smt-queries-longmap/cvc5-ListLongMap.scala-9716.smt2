; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115004 () Bool)

(assert start!115004)

(declare-fun b!1362571 () Bool)

(declare-fun res!906648 () Bool)

(declare-fun e!772921 () Bool)

(assert (=> b!1362571 (=> (not res!906648) (not e!772921))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362571 (= res!906648 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362572 () Bool)

(declare-datatypes ((Unit!44876 0))(
  ( (Unit!44877) )
))
(declare-fun e!772920 () Unit!44876)

(declare-fun lt!600483 () Unit!44876)

(assert (=> b!1362572 (= e!772920 lt!600483)))

(declare-fun lt!600482 () Unit!44876)

(declare-datatypes ((List!31952 0))(
  ( (Nil!31949) (Cons!31948 (h!33157 (_ BitVec 64)) (t!46647 List!31952)) )
))
(declare-fun acc!759 () List!31952)

(declare-fun lemmaListSubSeqRefl!0 (List!31952) Unit!44876)

(assert (=> b!1362572 (= lt!600482 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!908 (List!31952 List!31952) Bool)

(assert (=> b!1362572 (subseq!908 acc!759 acc!759)))

(declare-datatypes ((array!92605 0))(
  ( (array!92606 (arr!44731 (Array (_ BitVec 32) (_ BitVec 64))) (size!45282 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92605)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92605 List!31952 List!31952 (_ BitVec 32)) Unit!44876)

(declare-fun $colon$colon!913 (List!31952 (_ BitVec 64)) List!31952)

(assert (=> b!1362572 (= lt!600483 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!913 acc!759 (select (arr!44731 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92605 (_ BitVec 32) List!31952) Bool)

(assert (=> b!1362572 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362573 () Bool)

(declare-fun res!906643 () Bool)

(assert (=> b!1362573 (=> (not res!906643) (not e!772921))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362573 (= res!906643 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45282 a!3742))))))

(declare-fun b!1362574 () Bool)

(declare-fun res!906644 () Bool)

(assert (=> b!1362574 (=> (not res!906644) (not e!772921))))

(declare-fun noDuplicate!2396 (List!31952) Bool)

(assert (=> b!1362574 (= res!906644 (noDuplicate!2396 acc!759))))

(declare-fun b!1362576 () Bool)

(declare-fun res!906645 () Bool)

(assert (=> b!1362576 (=> (not res!906645) (not e!772921))))

(declare-fun contains!9517 (List!31952 (_ BitVec 64)) Bool)

(assert (=> b!1362576 (= res!906645 (not (contains!9517 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!600485 () Bool)

(declare-fun b!1362577 () Bool)

(assert (=> b!1362577 (= e!772921 (and (not (= from!3120 i!1404)) (not lt!600485) (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600484 () Unit!44876)

(assert (=> b!1362577 (= lt!600484 e!772920)))

(declare-fun c!127408 () Bool)

(assert (=> b!1362577 (= c!127408 lt!600485)))

(assert (=> b!1362577 (= lt!600485 (validKeyInArray!0 (select (arr!44731 a!3742) from!3120)))))

(declare-fun b!1362578 () Bool)

(declare-fun res!906642 () Bool)

(assert (=> b!1362578 (=> (not res!906642) (not e!772921))))

(assert (=> b!1362578 (= res!906642 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31949))))

(declare-fun b!1362579 () Bool)

(declare-fun res!906646 () Bool)

(assert (=> b!1362579 (=> (not res!906646) (not e!772921))))

(assert (=> b!1362579 (= res!906646 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45282 a!3742)))))

(declare-fun res!906647 () Bool)

(assert (=> start!115004 (=> (not res!906647) (not e!772921))))

(assert (=> start!115004 (= res!906647 (and (bvslt (size!45282 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45282 a!3742))))))

(assert (=> start!115004 e!772921))

(assert (=> start!115004 true))

(declare-fun array_inv!33676 (array!92605) Bool)

(assert (=> start!115004 (array_inv!33676 a!3742)))

(declare-fun b!1362575 () Bool)

(declare-fun res!906640 () Bool)

(assert (=> b!1362575 (=> (not res!906640) (not e!772921))))

(assert (=> b!1362575 (= res!906640 (not (contains!9517 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362580 () Bool)

(declare-fun res!906641 () Bool)

(assert (=> b!1362580 (=> (not res!906641) (not e!772921))))

(assert (=> b!1362580 (= res!906641 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362581 () Bool)

(declare-fun Unit!44878 () Unit!44876)

(assert (=> b!1362581 (= e!772920 Unit!44878)))

(assert (= (and start!115004 res!906647) b!1362574))

(assert (= (and b!1362574 res!906644) b!1362575))

(assert (= (and b!1362575 res!906640) b!1362576))

(assert (= (and b!1362576 res!906645) b!1362578))

(assert (= (and b!1362578 res!906642) b!1362580))

(assert (= (and b!1362580 res!906641) b!1362573))

(assert (= (and b!1362573 res!906643) b!1362571))

(assert (= (and b!1362571 res!906648) b!1362579))

(assert (= (and b!1362579 res!906646) b!1362577))

(assert (= (and b!1362577 c!127408) b!1362572))

(assert (= (and b!1362577 (not c!127408)) b!1362581))

(declare-fun m!1247551 () Bool)

(assert (=> b!1362578 m!1247551))

(declare-fun m!1247553 () Bool)

(assert (=> b!1362574 m!1247553))

(declare-fun m!1247555 () Bool)

(assert (=> b!1362571 m!1247555))

(declare-fun m!1247557 () Bool)

(assert (=> b!1362575 m!1247557))

(declare-fun m!1247559 () Bool)

(assert (=> b!1362577 m!1247559))

(assert (=> b!1362577 m!1247559))

(declare-fun m!1247561 () Bool)

(assert (=> b!1362577 m!1247561))

(declare-fun m!1247563 () Bool)

(assert (=> b!1362576 m!1247563))

(declare-fun m!1247565 () Bool)

(assert (=> start!115004 m!1247565))

(declare-fun m!1247567 () Bool)

(assert (=> b!1362580 m!1247567))

(declare-fun m!1247569 () Bool)

(assert (=> b!1362572 m!1247569))

(assert (=> b!1362572 m!1247559))

(declare-fun m!1247571 () Bool)

(assert (=> b!1362572 m!1247571))

(declare-fun m!1247573 () Bool)

(assert (=> b!1362572 m!1247573))

(declare-fun m!1247575 () Bool)

(assert (=> b!1362572 m!1247575))

(assert (=> b!1362572 m!1247559))

(assert (=> b!1362572 m!1247571))

(declare-fun m!1247577 () Bool)

(assert (=> b!1362572 m!1247577))

(push 1)

