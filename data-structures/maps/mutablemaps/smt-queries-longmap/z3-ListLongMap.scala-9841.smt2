; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116776 () Bool)

(assert start!116776)

(declare-datatypes ((array!93363 0))(
  ( (array!93364 (arr!45080 (Array (_ BitVec 32) (_ BitVec 64))) (size!45631 (_ BitVec 32))) )
))
(declare-fun lt!604734 () array!93363)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun bm!65750 () Bool)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun call!65753 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93363 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65750 (= call!65753 (arrayCountValidKeys!0 lt!604734 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!918794 () Bool)

(declare-fun e!779370 () Bool)

(assert (=> start!116776 (=> (not res!918794) (not e!779370))))

(declare-fun a!4032 () array!93363)

(assert (=> start!116776 (= res!918794 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45631 a!4032))))))

(assert (=> start!116776 e!779370))

(assert (=> start!116776 true))

(declare-fun array_inv!34025 (array!93363) Bool)

(assert (=> start!116776 (array_inv!34025 a!4032)))

(declare-fun b!1375695 () Bool)

(declare-datatypes ((Unit!45523 0))(
  ( (Unit!45524) )
))
(declare-fun e!779372 () Unit!45523)

(declare-fun lt!604741 () Unit!45523)

(assert (=> b!1375695 (= e!779372 lt!604741)))

(declare-fun lt!604739 () Unit!45523)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93363 (_ BitVec 32) (_ BitVec 32)) Unit!45523)

(assert (=> b!1375695 (= lt!604739 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65754 () (_ BitVec 32))

(declare-fun lt!604733 () (_ BitVec 32))

(assert (=> b!1375695 (= call!65754 lt!604733)))

(assert (=> b!1375695 (= lt!604741 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604734 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604735 () (_ BitVec 32))

(assert (=> b!1375695 (= call!65753 lt!604735)))

(declare-fun b!1375696 () Bool)

(declare-fun lt!604737 () Unit!45523)

(assert (=> b!1375696 (= e!779372 lt!604737)))

(declare-fun lt!604736 () Unit!45523)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93363 (_ BitVec 32) (_ BitVec 32)) Unit!45523)

(assert (=> b!1375696 (= lt!604736 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375696 (= call!65754 (bvadd #b00000000000000000000000000000001 lt!604733))))

(assert (=> b!1375696 (= lt!604737 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604734 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375696 (= call!65753 (bvadd #b00000000000000000000000000000001 lt!604735))))

(declare-fun bm!65751 () Bool)

(assert (=> bm!65751 (= call!65754 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375697 () Bool)

(declare-fun res!918792 () Bool)

(assert (=> b!1375697 (=> (not res!918792) (not e!779370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375697 (= res!918792 (validKeyInArray!0 (select (arr!45080 a!4032) i!1445)))))

(declare-fun b!1375698 () Bool)

(declare-fun res!918790 () Bool)

(assert (=> b!1375698 (=> (not res!918790) (not e!779370))))

(assert (=> b!1375698 (= res!918790 (and (bvslt (size!45631 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45631 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375699 () Bool)

(declare-fun res!918795 () Bool)

(assert (=> b!1375699 (=> (not res!918795) (not e!779370))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1375699 (= res!918795 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1375700 () Bool)

(declare-fun e!779369 () Bool)

(declare-fun e!779368 () Bool)

(assert (=> b!1375700 (= e!779369 e!779368)))

(declare-fun res!918791 () Bool)

(assert (=> b!1375700 (=> (not res!918791) (not e!779368))))

(assert (=> b!1375700 (= res!918791 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45631 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604738 () Unit!45523)

(assert (=> b!1375700 (= lt!604738 e!779372)))

(declare-fun c!127895 () Bool)

(assert (=> b!1375700 (= c!127895 (validKeyInArray!0 (select (arr!45080 a!4032) to!206)))))

(declare-fun b!1375701 () Bool)

(assert (=> b!1375701 (= e!779370 e!779369)))

(declare-fun res!918793 () Bool)

(assert (=> b!1375701 (=> (not res!918793) (not e!779369))))

(assert (=> b!1375701 (= res!918793 (and (= lt!604735 lt!604733) (not (= to!206 (size!45631 a!4032)))))))

(assert (=> b!1375701 (= lt!604733 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375701 (= lt!604735 (arrayCountValidKeys!0 lt!604734 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375701 (= lt!604734 (array!93364 (store (arr!45080 a!4032) i!1445 k0!2947) (size!45631 a!4032)))))

(declare-fun b!1375702 () Bool)

(assert (=> b!1375702 (= e!779368 false)))

(declare-fun lt!604740 () (_ BitVec 32))

(assert (=> b!1375702 (= lt!604740 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604732 () (_ BitVec 32))

(assert (=> b!1375702 (= lt!604732 (arrayCountValidKeys!0 lt!604734 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116776 res!918794) b!1375697))

(assert (= (and b!1375697 res!918792) b!1375699))

(assert (= (and b!1375699 res!918795) b!1375698))

(assert (= (and b!1375698 res!918790) b!1375701))

(assert (= (and b!1375701 res!918793) b!1375700))

(assert (= (and b!1375700 c!127895) b!1375696))

(assert (= (and b!1375700 (not c!127895)) b!1375695))

(assert (= (or b!1375696 b!1375695) bm!65750))

(assert (= (or b!1375696 b!1375695) bm!65751))

(assert (= (and b!1375700 res!918791) b!1375702))

(declare-fun m!1259669 () Bool)

(assert (=> b!1375695 m!1259669))

(declare-fun m!1259671 () Bool)

(assert (=> b!1375695 m!1259671))

(declare-fun m!1259673 () Bool)

(assert (=> b!1375699 m!1259673))

(declare-fun m!1259675 () Bool)

(assert (=> bm!65751 m!1259675))

(declare-fun m!1259677 () Bool)

(assert (=> bm!65750 m!1259677))

(declare-fun m!1259679 () Bool)

(assert (=> b!1375700 m!1259679))

(assert (=> b!1375700 m!1259679))

(declare-fun m!1259681 () Bool)

(assert (=> b!1375700 m!1259681))

(declare-fun m!1259683 () Bool)

(assert (=> b!1375697 m!1259683))

(assert (=> b!1375697 m!1259683))

(declare-fun m!1259685 () Bool)

(assert (=> b!1375697 m!1259685))

(assert (=> b!1375702 m!1259675))

(assert (=> b!1375702 m!1259677))

(declare-fun m!1259687 () Bool)

(assert (=> b!1375696 m!1259687))

(declare-fun m!1259689 () Bool)

(assert (=> b!1375696 m!1259689))

(declare-fun m!1259691 () Bool)

(assert (=> start!116776 m!1259691))

(declare-fun m!1259693 () Bool)

(assert (=> b!1375701 m!1259693))

(declare-fun m!1259695 () Bool)

(assert (=> b!1375701 m!1259695))

(declare-fun m!1259697 () Bool)

(assert (=> b!1375701 m!1259697))

(check-sat (not b!1375696) (not b!1375702) (not b!1375701) (not bm!65751) (not b!1375695) (not b!1375700) (not b!1375697) (not start!116776) (not b!1375699) (not bm!65750))
(check-sat)
