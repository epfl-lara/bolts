; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114166 () Bool)

(assert start!114166)

(declare-fun b!1355445 () Bool)

(declare-fun res!900483 () Bool)

(declare-fun e!769756 () Bool)

(assert (=> b!1355445 (=> (not res!900483) (not e!769756))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355445 (= res!900483 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355446 () Bool)

(declare-datatypes ((Unit!44501 0))(
  ( (Unit!44502) )
))
(declare-fun e!769754 () Unit!44501)

(declare-fun Unit!44503 () Unit!44501)

(assert (=> b!1355446 (= e!769754 Unit!44503)))

(declare-fun b!1355447 () Bool)

(declare-fun res!900481 () Bool)

(assert (=> b!1355447 (=> (not res!900481) (not e!769756))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92271 0))(
  ( (array!92272 (arr!44579 (Array (_ BitVec 32) (_ BitVec 64))) (size!45130 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92271)

(assert (=> b!1355447 (= res!900481 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45130 a!3742))))))

(declare-fun b!1355448 () Bool)

(declare-fun res!900482 () Bool)

(assert (=> b!1355448 (=> (not res!900482) (not e!769756))))

(declare-datatypes ((List!31800 0))(
  ( (Nil!31797) (Cons!31796 (h!33005 (_ BitVec 64)) (t!46465 List!31800)) )
))
(declare-fun arrayNoDuplicates!0 (array!92271 (_ BitVec 32) List!31800) Bool)

(assert (=> b!1355448 (= res!900482 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31797))))

(declare-fun b!1355449 () Bool)

(declare-fun res!900476 () Bool)

(assert (=> b!1355449 (=> (not res!900476) (not e!769756))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1355449 (= res!900476 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45130 a!3742)))))

(declare-fun b!1355450 () Bool)

(declare-fun res!900479 () Bool)

(assert (=> b!1355450 (=> (not res!900479) (not e!769756))))

(declare-fun acc!759 () List!31800)

(declare-fun contains!9365 (List!31800 (_ BitVec 64)) Bool)

(assert (=> b!1355450 (= res!900479 (not (contains!9365 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355451 () Bool)

(declare-fun res!900474 () Bool)

(assert (=> b!1355451 (=> (not res!900474) (not e!769756))))

(declare-fun noDuplicate!2244 (List!31800) Bool)

(assert (=> b!1355451 (= res!900474 (noDuplicate!2244 acc!759))))

(declare-fun b!1355453 () Bool)

(declare-fun e!769755 () Bool)

(assert (=> b!1355453 (= e!769756 e!769755)))

(declare-fun res!900475 () Bool)

(assert (=> b!1355453 (=> (not res!900475) (not e!769755))))

(declare-fun lt!598608 () Bool)

(assert (=> b!1355453 (= res!900475 (and (not (= from!3120 i!1404)) (not lt!598608) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598606 () Unit!44501)

(assert (=> b!1355453 (= lt!598606 e!769754)))

(declare-fun c!126928 () Bool)

(assert (=> b!1355453 (= c!126928 lt!598608)))

(assert (=> b!1355453 (= lt!598608 (validKeyInArray!0 (select (arr!44579 a!3742) from!3120)))))

(declare-fun b!1355454 () Bool)

(declare-fun res!900480 () Bool)

(assert (=> b!1355454 (=> (not res!900480) (not e!769756))))

(assert (=> b!1355454 (= res!900480 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355455 () Bool)

(declare-fun res!900477 () Bool)

(assert (=> b!1355455 (=> (not res!900477) (not e!769756))))

(assert (=> b!1355455 (= res!900477 (not (contains!9365 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355456 () Bool)

(declare-fun lt!598607 () Unit!44501)

(assert (=> b!1355456 (= e!769754 lt!598607)))

(declare-fun lt!598610 () Unit!44501)

(declare-fun lemmaListSubSeqRefl!0 (List!31800) Unit!44501)

(assert (=> b!1355456 (= lt!598610 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!774 (List!31800 List!31800) Bool)

(assert (=> b!1355456 (subseq!774 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92271 List!31800 List!31800 (_ BitVec 32)) Unit!44501)

(declare-fun $colon$colon!791 (List!31800 (_ BitVec 64)) List!31800)

(assert (=> b!1355456 (= lt!598607 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!791 acc!759 (select (arr!44579 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355456 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!900478 () Bool)

(assert (=> start!114166 (=> (not res!900478) (not e!769756))))

(assert (=> start!114166 (= res!900478 (and (bvslt (size!45130 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45130 a!3742))))))

(assert (=> start!114166 e!769756))

(assert (=> start!114166 true))

(declare-fun array_inv!33524 (array!92271) Bool)

(assert (=> start!114166 (array_inv!33524 a!3742)))

(declare-fun b!1355452 () Bool)

(assert (=> b!1355452 (= e!769755 false)))

(declare-fun lt!598609 () Bool)

(assert (=> b!1355452 (= lt!598609 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and start!114166 res!900478) b!1355451))

(assert (= (and b!1355451 res!900474) b!1355450))

(assert (= (and b!1355450 res!900479) b!1355455))

(assert (= (and b!1355455 res!900477) b!1355448))

(assert (= (and b!1355448 res!900482) b!1355454))

(assert (= (and b!1355454 res!900480) b!1355447))

(assert (= (and b!1355447 res!900481) b!1355445))

(assert (= (and b!1355445 res!900483) b!1355449))

(assert (= (and b!1355449 res!900476) b!1355453))

(assert (= (and b!1355453 c!126928) b!1355456))

(assert (= (and b!1355453 (not c!126928)) b!1355446))

(assert (= (and b!1355453 res!900475) b!1355452))

(declare-fun m!1241645 () Bool)

(assert (=> start!114166 m!1241645))

(declare-fun m!1241647 () Bool)

(assert (=> b!1355452 m!1241647))

(declare-fun m!1241649 () Bool)

(assert (=> b!1355454 m!1241649))

(declare-fun m!1241651 () Bool)

(assert (=> b!1355456 m!1241651))

(declare-fun m!1241653 () Bool)

(assert (=> b!1355456 m!1241653))

(declare-fun m!1241655 () Bool)

(assert (=> b!1355456 m!1241655))

(declare-fun m!1241657 () Bool)

(assert (=> b!1355456 m!1241657))

(assert (=> b!1355456 m!1241647))

(assert (=> b!1355456 m!1241653))

(assert (=> b!1355456 m!1241655))

(declare-fun m!1241659 () Bool)

(assert (=> b!1355456 m!1241659))

(declare-fun m!1241661 () Bool)

(assert (=> b!1355445 m!1241661))

(declare-fun m!1241663 () Bool)

(assert (=> b!1355448 m!1241663))

(declare-fun m!1241665 () Bool)

(assert (=> b!1355450 m!1241665))

(declare-fun m!1241667 () Bool)

(assert (=> b!1355451 m!1241667))

(assert (=> b!1355453 m!1241653))

(assert (=> b!1355453 m!1241653))

(declare-fun m!1241669 () Bool)

(assert (=> b!1355453 m!1241669))

(declare-fun m!1241671 () Bool)

(assert (=> b!1355455 m!1241671))

(check-sat (not b!1355452) (not b!1355450) (not b!1355451) (not b!1355453) (not b!1355454) (not b!1355448) (not b!1355445) (not start!114166) (not b!1355455) (not b!1355456))
(check-sat)
