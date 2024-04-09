; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114164 () Bool)

(assert start!114164)

(declare-fun b!1355409 () Bool)

(declare-fun res!900453 () Bool)

(declare-fun e!769742 () Bool)

(assert (=> b!1355409 (=> (not res!900453) (not e!769742))))

(declare-datatypes ((array!92269 0))(
  ( (array!92270 (arr!44578 (Array (_ BitVec 32) (_ BitVec 64))) (size!45129 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92269)

(declare-datatypes ((List!31799 0))(
  ( (Nil!31796) (Cons!31795 (h!33004 (_ BitVec 64)) (t!46464 List!31799)) )
))
(declare-fun arrayNoDuplicates!0 (array!92269 (_ BitVec 32) List!31799) Bool)

(assert (=> b!1355409 (= res!900453 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31796))))

(declare-fun b!1355410 () Bool)

(declare-fun res!900452 () Bool)

(assert (=> b!1355410 (=> (not res!900452) (not e!769742))))

(declare-fun acc!759 () List!31799)

(declare-fun noDuplicate!2243 (List!31799) Bool)

(assert (=> b!1355410 (= res!900452 (noDuplicate!2243 acc!759))))

(declare-fun b!1355411 () Bool)

(declare-datatypes ((Unit!44498 0))(
  ( (Unit!44499) )
))
(declare-fun e!769741 () Unit!44498)

(declare-fun lt!598591 () Unit!44498)

(assert (=> b!1355411 (= e!769741 lt!598591)))

(declare-fun lt!598593 () Unit!44498)

(declare-fun lemmaListSubSeqRefl!0 (List!31799) Unit!44498)

(assert (=> b!1355411 (= lt!598593 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!773 (List!31799 List!31799) Bool)

(assert (=> b!1355411 (subseq!773 acc!759 acc!759)))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92269 List!31799 List!31799 (_ BitVec 32)) Unit!44498)

(declare-fun $colon$colon!790 (List!31799 (_ BitVec 64)) List!31799)

(assert (=> b!1355411 (= lt!598591 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!790 acc!759 (select (arr!44578 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355411 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355412 () Bool)

(declare-fun res!900447 () Bool)

(assert (=> b!1355412 (=> (not res!900447) (not e!769742))))

(assert (=> b!1355412 (= res!900447 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!900449 () Bool)

(assert (=> start!114164 (=> (not res!900449) (not e!769742))))

(assert (=> start!114164 (= res!900449 (and (bvslt (size!45129 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45129 a!3742))))))

(assert (=> start!114164 e!769742))

(assert (=> start!114164 true))

(declare-fun array_inv!33523 (array!92269) Bool)

(assert (=> start!114164 (array_inv!33523 a!3742)))

(declare-fun b!1355413 () Bool)

(declare-fun res!900444 () Bool)

(assert (=> b!1355413 (=> (not res!900444) (not e!769742))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355413 (= res!900444 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355414 () Bool)

(declare-fun res!900446 () Bool)

(assert (=> b!1355414 (=> (not res!900446) (not e!769742))))

(declare-fun contains!9364 (List!31799 (_ BitVec 64)) Bool)

(assert (=> b!1355414 (= res!900446 (not (contains!9364 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355415 () Bool)

(declare-fun e!769743 () Bool)

(assert (=> b!1355415 (= e!769742 e!769743)))

(declare-fun res!900448 () Bool)

(assert (=> b!1355415 (=> (not res!900448) (not e!769743))))

(declare-fun lt!598595 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355415 (= res!900448 (and (not (= from!3120 i!1404)) (not lt!598595) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598592 () Unit!44498)

(assert (=> b!1355415 (= lt!598592 e!769741)))

(declare-fun c!126925 () Bool)

(assert (=> b!1355415 (= c!126925 lt!598595)))

(assert (=> b!1355415 (= lt!598595 (validKeyInArray!0 (select (arr!44578 a!3742) from!3120)))))

(declare-fun b!1355416 () Bool)

(declare-fun Unit!44500 () Unit!44498)

(assert (=> b!1355416 (= e!769741 Unit!44500)))

(declare-fun b!1355417 () Bool)

(declare-fun res!900451 () Bool)

(assert (=> b!1355417 (=> (not res!900451) (not e!769742))))

(assert (=> b!1355417 (= res!900451 (not (contains!9364 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355418 () Bool)

(declare-fun res!900445 () Bool)

(assert (=> b!1355418 (=> (not res!900445) (not e!769742))))

(assert (=> b!1355418 (= res!900445 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45129 a!3742))))))

(declare-fun b!1355419 () Bool)

(declare-fun res!900450 () Bool)

(assert (=> b!1355419 (=> (not res!900450) (not e!769742))))

(assert (=> b!1355419 (= res!900450 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45129 a!3742)))))

(declare-fun b!1355420 () Bool)

(assert (=> b!1355420 (= e!769743 false)))

(declare-fun lt!598594 () Bool)

(assert (=> b!1355420 (= lt!598594 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and start!114164 res!900449) b!1355410))

(assert (= (and b!1355410 res!900452) b!1355414))

(assert (= (and b!1355414 res!900446) b!1355417))

(assert (= (and b!1355417 res!900451) b!1355409))

(assert (= (and b!1355409 res!900453) b!1355412))

(assert (= (and b!1355412 res!900447) b!1355418))

(assert (= (and b!1355418 res!900445) b!1355413))

(assert (= (and b!1355413 res!900444) b!1355419))

(assert (= (and b!1355419 res!900450) b!1355415))

(assert (= (and b!1355415 c!126925) b!1355411))

(assert (= (and b!1355415 (not c!126925)) b!1355416))

(assert (= (and b!1355415 res!900448) b!1355420))

(declare-fun m!1241617 () Bool)

(assert (=> b!1355420 m!1241617))

(declare-fun m!1241619 () Bool)

(assert (=> start!114164 m!1241619))

(declare-fun m!1241621 () Bool)

(assert (=> b!1355413 m!1241621))

(declare-fun m!1241623 () Bool)

(assert (=> b!1355409 m!1241623))

(declare-fun m!1241625 () Bool)

(assert (=> b!1355417 m!1241625))

(declare-fun m!1241627 () Bool)

(assert (=> b!1355411 m!1241627))

(declare-fun m!1241629 () Bool)

(assert (=> b!1355411 m!1241629))

(declare-fun m!1241631 () Bool)

(assert (=> b!1355411 m!1241631))

(declare-fun m!1241633 () Bool)

(assert (=> b!1355411 m!1241633))

(assert (=> b!1355411 m!1241617))

(assert (=> b!1355411 m!1241629))

(assert (=> b!1355411 m!1241631))

(declare-fun m!1241635 () Bool)

(assert (=> b!1355411 m!1241635))

(declare-fun m!1241637 () Bool)

(assert (=> b!1355410 m!1241637))

(declare-fun m!1241639 () Bool)

(assert (=> b!1355414 m!1241639))

(declare-fun m!1241641 () Bool)

(assert (=> b!1355412 m!1241641))

(assert (=> b!1355415 m!1241629))

(assert (=> b!1355415 m!1241629))

(declare-fun m!1241643 () Bool)

(assert (=> b!1355415 m!1241643))

(push 1)

