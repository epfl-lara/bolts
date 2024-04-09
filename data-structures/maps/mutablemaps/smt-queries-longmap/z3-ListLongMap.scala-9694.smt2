; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114538 () Bool)

(assert start!114538)

(declare-fun b!1358881 () Bool)

(declare-fun res!903561 () Bool)

(declare-fun e!771141 () Bool)

(assert (=> b!1358881 (=> (not res!903561) (not e!771141))))

(declare-datatypes ((List!31887 0))(
  ( (Nil!31884) (Cons!31883 (h!33092 (_ BitVec 64)) (t!46564 List!31887)) )
))
(declare-fun acc!759 () List!31887)

(declare-fun noDuplicate!2331 (List!31887) Bool)

(assert (=> b!1358881 (= res!903561 (noDuplicate!2331 acc!759))))

(declare-fun b!1358882 () Bool)

(declare-fun res!903559 () Bool)

(assert (=> b!1358882 (=> (not res!903559) (not e!771141))))

(declare-fun contains!9452 (List!31887 (_ BitVec 64)) Bool)

(assert (=> b!1358882 (= res!903559 (not (contains!9452 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358884 () Bool)

(declare-datatypes ((Unit!44681 0))(
  ( (Unit!44682) )
))
(declare-fun e!771140 () Unit!44681)

(declare-fun lt!599418 () Unit!44681)

(assert (=> b!1358884 (= e!771140 lt!599418)))

(declare-fun lt!599420 () Unit!44681)

(declare-fun lemmaListSubSeqRefl!0 (List!31887) Unit!44681)

(assert (=> b!1358884 (= lt!599420 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!843 (List!31887 List!31887) Bool)

(assert (=> b!1358884 (subseq!843 acc!759 acc!759)))

(declare-datatypes ((array!92457 0))(
  ( (array!92458 (arr!44666 (Array (_ BitVec 32) (_ BitVec 64))) (size!45217 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92457)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92457 List!31887 List!31887 (_ BitVec 32)) Unit!44681)

(declare-fun $colon$colon!848 (List!31887 (_ BitVec 64)) List!31887)

(assert (=> b!1358884 (= lt!599418 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!848 acc!759 (select (arr!44666 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92457 (_ BitVec 32) List!31887) Bool)

(assert (=> b!1358884 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358885 () Bool)

(declare-fun res!903562 () Bool)

(assert (=> b!1358885 (=> (not res!903562) (not e!771141))))

(assert (=> b!1358885 (= res!903562 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358886 () Bool)

(declare-fun res!903558 () Bool)

(assert (=> b!1358886 (=> (not res!903558) (not e!771141))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358886 (= res!903558 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45217 a!3742))))))

(declare-fun b!1358887 () Bool)

(declare-fun Unit!44683 () Unit!44681)

(assert (=> b!1358887 (= e!771140 Unit!44683)))

(declare-fun b!1358888 () Bool)

(declare-fun res!903560 () Bool)

(assert (=> b!1358888 (=> (not res!903560) (not e!771141))))

(assert (=> b!1358888 (= res!903560 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45217 a!3742)))))

(declare-fun b!1358889 () Bool)

(declare-fun res!903557 () Bool)

(assert (=> b!1358889 (=> (not res!903557) (not e!771141))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358889 (= res!903557 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358890 () Bool)

(declare-fun res!903563 () Bool)

(assert (=> b!1358890 (=> (not res!903563) (not e!771141))))

(assert (=> b!1358890 (= res!903563 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31884))))

(declare-fun b!1358891 () Bool)

(assert (=> b!1358891 (= e!771141 false)))

(declare-fun lt!599419 () Unit!44681)

(assert (=> b!1358891 (= lt!599419 e!771140)))

(declare-fun c!127105 () Bool)

(assert (=> b!1358891 (= c!127105 (validKeyInArray!0 (select (arr!44666 a!3742) from!3120)))))

(declare-fun res!903564 () Bool)

(assert (=> start!114538 (=> (not res!903564) (not e!771141))))

(assert (=> start!114538 (= res!903564 (and (bvslt (size!45217 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45217 a!3742))))))

(assert (=> start!114538 e!771141))

(assert (=> start!114538 true))

(declare-fun array_inv!33611 (array!92457) Bool)

(assert (=> start!114538 (array_inv!33611 a!3742)))

(declare-fun b!1358883 () Bool)

(declare-fun res!903556 () Bool)

(assert (=> b!1358883 (=> (not res!903556) (not e!771141))))

(assert (=> b!1358883 (= res!903556 (not (contains!9452 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114538 res!903564) b!1358881))

(assert (= (and b!1358881 res!903561) b!1358883))

(assert (= (and b!1358883 res!903556) b!1358882))

(assert (= (and b!1358882 res!903559) b!1358890))

(assert (= (and b!1358890 res!903563) b!1358885))

(assert (= (and b!1358885 res!903562) b!1358886))

(assert (= (and b!1358886 res!903558) b!1358889))

(assert (= (and b!1358889 res!903557) b!1358888))

(assert (= (and b!1358888 res!903560) b!1358891))

(assert (= (and b!1358891 c!127105) b!1358884))

(assert (= (and b!1358891 (not c!127105)) b!1358887))

(declare-fun m!1244423 () Bool)

(assert (=> b!1358881 m!1244423))

(declare-fun m!1244425 () Bool)

(assert (=> b!1358889 m!1244425))

(declare-fun m!1244427 () Bool)

(assert (=> b!1358885 m!1244427))

(declare-fun m!1244429 () Bool)

(assert (=> b!1358890 m!1244429))

(declare-fun m!1244431 () Bool)

(assert (=> b!1358891 m!1244431))

(assert (=> b!1358891 m!1244431))

(declare-fun m!1244433 () Bool)

(assert (=> b!1358891 m!1244433))

(declare-fun m!1244435 () Bool)

(assert (=> b!1358882 m!1244435))

(declare-fun m!1244437 () Bool)

(assert (=> start!114538 m!1244437))

(declare-fun m!1244439 () Bool)

(assert (=> b!1358884 m!1244439))

(assert (=> b!1358884 m!1244431))

(declare-fun m!1244441 () Bool)

(assert (=> b!1358884 m!1244441))

(declare-fun m!1244443 () Bool)

(assert (=> b!1358884 m!1244443))

(declare-fun m!1244445 () Bool)

(assert (=> b!1358884 m!1244445))

(assert (=> b!1358884 m!1244431))

(assert (=> b!1358884 m!1244441))

(declare-fun m!1244447 () Bool)

(assert (=> b!1358884 m!1244447))

(declare-fun m!1244449 () Bool)

(assert (=> b!1358883 m!1244449))

(check-sat (not start!114538) (not b!1358884) (not b!1358890) (not b!1358891) (not b!1358883) (not b!1358881) (not b!1358889) (not b!1358885) (not b!1358882))
