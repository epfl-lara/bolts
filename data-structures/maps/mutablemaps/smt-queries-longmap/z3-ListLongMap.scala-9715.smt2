; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115000 () Bool)

(assert start!115000)

(declare-fun b!1362505 () Bool)

(declare-datatypes ((Unit!44870 0))(
  ( (Unit!44871) )
))
(declare-fun e!772902 () Unit!44870)

(declare-fun lt!600462 () Unit!44870)

(assert (=> b!1362505 (= e!772902 lt!600462)))

(declare-fun lt!600463 () Unit!44870)

(declare-datatypes ((List!31950 0))(
  ( (Nil!31947) (Cons!31946 (h!33155 (_ BitVec 64)) (t!46645 List!31950)) )
))
(declare-fun acc!759 () List!31950)

(declare-fun lemmaListSubSeqRefl!0 (List!31950) Unit!44870)

(assert (=> b!1362505 (= lt!600463 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!906 (List!31950 List!31950) Bool)

(assert (=> b!1362505 (subseq!906 acc!759 acc!759)))

(declare-datatypes ((array!92601 0))(
  ( (array!92602 (arr!44729 (Array (_ BitVec 32) (_ BitVec 64))) (size!45280 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92601)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92601 List!31950 List!31950 (_ BitVec 32)) Unit!44870)

(declare-fun $colon$colon!911 (List!31950 (_ BitVec 64)) List!31950)

(assert (=> b!1362505 (= lt!600462 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!911 acc!759 (select (arr!44729 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92601 (_ BitVec 32) List!31950) Bool)

(assert (=> b!1362505 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362506 () Bool)

(declare-fun res!906593 () Bool)

(declare-fun e!772901 () Bool)

(assert (=> b!1362506 (=> (not res!906593) (not e!772901))))

(declare-fun contains!9515 (List!31950 (_ BitVec 64)) Bool)

(assert (=> b!1362506 (= res!906593 (not (contains!9515 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!906589 () Bool)

(assert (=> start!115000 (=> (not res!906589) (not e!772901))))

(assert (=> start!115000 (= res!906589 (and (bvslt (size!45280 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45280 a!3742))))))

(assert (=> start!115000 e!772901))

(assert (=> start!115000 true))

(declare-fun array_inv!33674 (array!92601) Bool)

(assert (=> start!115000 (array_inv!33674 a!3742)))

(declare-fun b!1362507 () Bool)

(declare-fun res!906592 () Bool)

(assert (=> b!1362507 (=> (not res!906592) (not e!772901))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362507 (= res!906592 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362508 () Bool)

(declare-fun res!906586 () Bool)

(assert (=> b!1362508 (=> (not res!906586) (not e!772901))))

(assert (=> b!1362508 (= res!906586 (not (contains!9515 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362509 () Bool)

(declare-fun Unit!44872 () Unit!44870)

(assert (=> b!1362509 (= e!772902 Unit!44872)))

(declare-fun b!1362510 () Bool)

(declare-fun res!906590 () Bool)

(assert (=> b!1362510 (=> (not res!906590) (not e!772901))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362510 (= res!906590 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45280 a!3742))))))

(declare-fun b!1362511 () Bool)

(declare-fun res!906594 () Bool)

(assert (=> b!1362511 (=> (not res!906594) (not e!772901))))

(assert (=> b!1362511 (= res!906594 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31947))))

(declare-fun b!1362512 () Bool)

(assert (=> b!1362512 (= e!772901 false)))

(declare-fun lt!600464 () Unit!44870)

(assert (=> b!1362512 (= lt!600464 e!772902)))

(declare-fun c!127402 () Bool)

(assert (=> b!1362512 (= c!127402 (validKeyInArray!0 (select (arr!44729 a!3742) from!3120)))))

(declare-fun b!1362513 () Bool)

(declare-fun res!906588 () Bool)

(assert (=> b!1362513 (=> (not res!906588) (not e!772901))))

(declare-fun noDuplicate!2394 (List!31950) Bool)

(assert (=> b!1362513 (= res!906588 (noDuplicate!2394 acc!759))))

(declare-fun b!1362514 () Bool)

(declare-fun res!906591 () Bool)

(assert (=> b!1362514 (=> (not res!906591) (not e!772901))))

(assert (=> b!1362514 (= res!906591 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45280 a!3742)))))

(declare-fun b!1362515 () Bool)

(declare-fun res!906587 () Bool)

(assert (=> b!1362515 (=> (not res!906587) (not e!772901))))

(assert (=> b!1362515 (= res!906587 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!115000 res!906589) b!1362513))

(assert (= (and b!1362513 res!906588) b!1362506))

(assert (= (and b!1362506 res!906593) b!1362508))

(assert (= (and b!1362508 res!906586) b!1362511))

(assert (= (and b!1362511 res!906594) b!1362515))

(assert (= (and b!1362515 res!906587) b!1362510))

(assert (= (and b!1362510 res!906590) b!1362507))

(assert (= (and b!1362507 res!906592) b!1362514))

(assert (= (and b!1362514 res!906591) b!1362512))

(assert (= (and b!1362512 c!127402) b!1362505))

(assert (= (and b!1362512 (not c!127402)) b!1362509))

(declare-fun m!1247495 () Bool)

(assert (=> b!1362505 m!1247495))

(declare-fun m!1247497 () Bool)

(assert (=> b!1362505 m!1247497))

(declare-fun m!1247499 () Bool)

(assert (=> b!1362505 m!1247499))

(declare-fun m!1247501 () Bool)

(assert (=> b!1362505 m!1247501))

(declare-fun m!1247503 () Bool)

(assert (=> b!1362505 m!1247503))

(assert (=> b!1362505 m!1247497))

(assert (=> b!1362505 m!1247499))

(declare-fun m!1247505 () Bool)

(assert (=> b!1362505 m!1247505))

(declare-fun m!1247507 () Bool)

(assert (=> b!1362506 m!1247507))

(declare-fun m!1247509 () Bool)

(assert (=> b!1362513 m!1247509))

(declare-fun m!1247511 () Bool)

(assert (=> b!1362515 m!1247511))

(declare-fun m!1247513 () Bool)

(assert (=> b!1362508 m!1247513))

(declare-fun m!1247515 () Bool)

(assert (=> start!115000 m!1247515))

(declare-fun m!1247517 () Bool)

(assert (=> b!1362511 m!1247517))

(assert (=> b!1362512 m!1247497))

(assert (=> b!1362512 m!1247497))

(declare-fun m!1247519 () Bool)

(assert (=> b!1362512 m!1247519))

(declare-fun m!1247521 () Bool)

(assert (=> b!1362507 m!1247521))

(check-sat (not b!1362508) (not b!1362512) (not b!1362513) (not b!1362506) (not b!1362507) (not start!115000) (not b!1362511) (not b!1362505) (not b!1362515))
