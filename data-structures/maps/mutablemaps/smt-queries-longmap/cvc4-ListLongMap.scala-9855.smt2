; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116862 () Bool)

(assert start!116862)

(declare-fun b!1376548 () Bool)

(declare-fun e!779799 () Bool)

(declare-fun e!779800 () Bool)

(assert (=> b!1376548 (= e!779799 e!779800)))

(declare-fun res!919545 () Bool)

(assert (=> b!1376548 (=> (not res!919545) (not e!779800))))

(declare-fun lt!605274 () (_ BitVec 32))

(declare-fun lt!605273 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93449 0))(
  ( (array!93450 (arr!45123 (Array (_ BitVec 32) (_ BitVec 64))) (size!45674 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93449)

(assert (=> b!1376548 (= res!919545 (and (= lt!605274 lt!605273) (not (= to!206 (size!45674 a!4032)))))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93449 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376548 (= lt!605273 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376548 (= lt!605274 (arrayCountValidKeys!0 (array!93450 (store (arr!45123 a!4032) i!1445 k!2947) (size!45674 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!919546 () Bool)

(assert (=> start!116862 (=> (not res!919546) (not e!779799))))

(assert (=> start!116862 (= res!919546 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45674 a!4032))))))

(assert (=> start!116862 e!779799))

(assert (=> start!116862 true))

(declare-fun array_inv!34068 (array!93449) Bool)

(assert (=> start!116862 (array_inv!34068 a!4032)))

(declare-fun b!1376549 () Bool)

(declare-fun e!779798 () Bool)

(assert (=> b!1376549 (= e!779800 (not e!779798))))

(declare-fun res!919550 () Bool)

(assert (=> b!1376549 (=> (not res!919550) (not e!779798))))

(assert (=> b!1376549 (= res!919550 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvslt to!206 (size!45674 a!4032))))))

(assert (=> b!1376549 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (bvadd #b00000000000000000000000000000001 lt!605273))))

(declare-datatypes ((Unit!45567 0))(
  ( (Unit!45568) )
))
(declare-fun lt!605275 () Unit!45567)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93449 (_ BitVec 32) (_ BitVec 32)) Unit!45567)

(assert (=> b!1376549 (= lt!605275 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376550 () Bool)

(declare-fun res!919548 () Bool)

(assert (=> b!1376550 (=> (not res!919548) (not e!779800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376550 (= res!919548 (validKeyInArray!0 (select (arr!45123 a!4032) to!206)))))

(declare-fun b!1376551 () Bool)

(declare-fun res!919551 () Bool)

(assert (=> b!1376551 (=> (not res!919551) (not e!779799))))

(assert (=> b!1376551 (= res!919551 (and (bvslt (size!45674 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45674 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376552 () Bool)

(assert (=> b!1376552 (= e!779798 (validKeyInArray!0 (select (store (arr!45123 a!4032) i!1445 k!2947) to!206)))))

(declare-fun b!1376553 () Bool)

(declare-fun res!919547 () Bool)

(assert (=> b!1376553 (=> (not res!919547) (not e!779799))))

(assert (=> b!1376553 (= res!919547 (validKeyInArray!0 (select (arr!45123 a!4032) i!1445)))))

(declare-fun b!1376554 () Bool)

(declare-fun res!919549 () Bool)

(assert (=> b!1376554 (=> (not res!919549) (not e!779799))))

(assert (=> b!1376554 (= res!919549 (not (validKeyInArray!0 k!2947)))))

(assert (= (and start!116862 res!919546) b!1376553))

(assert (= (and b!1376553 res!919547) b!1376554))

(assert (= (and b!1376554 res!919549) b!1376551))

(assert (= (and b!1376551 res!919551) b!1376548))

(assert (= (and b!1376548 res!919545) b!1376550))

(assert (= (and b!1376550 res!919548) b!1376549))

(assert (= (and b!1376549 res!919550) b!1376552))

(declare-fun m!1260675 () Bool)

(assert (=> start!116862 m!1260675))

(declare-fun m!1260677 () Bool)

(assert (=> b!1376553 m!1260677))

(assert (=> b!1376553 m!1260677))

(declare-fun m!1260679 () Bool)

(assert (=> b!1376553 m!1260679))

(declare-fun m!1260681 () Bool)

(assert (=> b!1376552 m!1260681))

(declare-fun m!1260683 () Bool)

(assert (=> b!1376552 m!1260683))

(assert (=> b!1376552 m!1260683))

(declare-fun m!1260685 () Bool)

(assert (=> b!1376552 m!1260685))

(declare-fun m!1260687 () Bool)

(assert (=> b!1376554 m!1260687))

(declare-fun m!1260689 () Bool)

(assert (=> b!1376548 m!1260689))

(assert (=> b!1376548 m!1260681))

(declare-fun m!1260691 () Bool)

(assert (=> b!1376548 m!1260691))

(declare-fun m!1260693 () Bool)

(assert (=> b!1376549 m!1260693))

(declare-fun m!1260695 () Bool)

(assert (=> b!1376549 m!1260695))

(declare-fun m!1260697 () Bool)

(assert (=> b!1376550 m!1260697))

(assert (=> b!1376550 m!1260697))

(declare-fun m!1260699 () Bool)

(assert (=> b!1376550 m!1260699))

(push 1)

(assert (not b!1376552))

(assert (not b!1376554))

(assert (not b!1376548))

(assert (not b!1376553))

(assert (not b!1376549))

(assert (not b!1376550))

(assert (not start!116862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

