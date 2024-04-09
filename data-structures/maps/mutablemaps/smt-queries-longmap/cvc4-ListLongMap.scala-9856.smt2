; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116868 () Bool)

(assert start!116868)

(declare-fun b!1376611 () Bool)

(declare-fun res!919610 () Bool)

(declare-fun e!779818 () Bool)

(assert (=> b!1376611 (=> (not res!919610) (not e!779818))))

(declare-datatypes ((array!93455 0))(
  ( (array!93456 (arr!45126 (Array (_ BitVec 32) (_ BitVec 64))) (size!45677 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93455)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376611 (= res!919610 (validKeyInArray!0 (select (arr!45126 a!4032) i!1445)))))

(declare-fun b!1376612 () Bool)

(declare-fun res!919614 () Bool)

(assert (=> b!1376612 (=> (not res!919614) (not e!779818))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93455 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376612 (= res!919614 (= (arrayCountValidKeys!0 (array!93456 (store (arr!45126 a!4032) i!1445 k!2947) (size!45677 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun res!919609 () Bool)

(assert (=> start!116868 (=> (not res!919609) (not e!779818))))

(assert (=> start!116868 (= res!919609 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45677 a!4032))))))

(assert (=> start!116868 e!779818))

(assert (=> start!116868 true))

(declare-fun array_inv!34071 (array!93455) Bool)

(assert (=> start!116868 (array_inv!34071 a!4032)))

(declare-fun b!1376613 () Bool)

(declare-fun res!919612 () Bool)

(assert (=> b!1376613 (=> (not res!919612) (not e!779818))))

(assert (=> b!1376613 (= res!919612 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376614 () Bool)

(declare-fun res!919608 () Bool)

(assert (=> b!1376614 (=> (not res!919608) (not e!779818))))

(assert (=> b!1376614 (= res!919608 (not (= to!206 (size!45677 a!4032))))))

(declare-fun b!1376615 () Bool)

(declare-fun res!919613 () Bool)

(assert (=> b!1376615 (=> (not res!919613) (not e!779818))))

(assert (=> b!1376615 (= res!919613 (and (bvslt (size!45677 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45677 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376616 () Bool)

(declare-fun res!919611 () Bool)

(assert (=> b!1376616 (=> (not res!919611) (not e!779818))))

(assert (=> b!1376616 (= res!919611 (not (validKeyInArray!0 (select (arr!45126 a!4032) to!206))))))

(declare-fun b!1376617 () Bool)

(assert (=> b!1376617 (= e!779818 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvsge to!206 (size!45677 a!4032))))))

(assert (= (and start!116868 res!919609) b!1376611))

(assert (= (and b!1376611 res!919610) b!1376613))

(assert (= (and b!1376613 res!919612) b!1376615))

(assert (= (and b!1376615 res!919613) b!1376612))

(assert (= (and b!1376612 res!919614) b!1376614))

(assert (= (and b!1376614 res!919608) b!1376616))

(assert (= (and b!1376616 res!919611) b!1376617))

(declare-fun m!1260737 () Bool)

(assert (=> b!1376613 m!1260737))

(declare-fun m!1260739 () Bool)

(assert (=> b!1376612 m!1260739))

(declare-fun m!1260741 () Bool)

(assert (=> b!1376612 m!1260741))

(declare-fun m!1260743 () Bool)

(assert (=> b!1376612 m!1260743))

(declare-fun m!1260745 () Bool)

(assert (=> b!1376611 m!1260745))

(assert (=> b!1376611 m!1260745))

(declare-fun m!1260747 () Bool)

(assert (=> b!1376611 m!1260747))

(declare-fun m!1260749 () Bool)

(assert (=> start!116868 m!1260749))

(declare-fun m!1260751 () Bool)

(assert (=> b!1376616 m!1260751))

(assert (=> b!1376616 m!1260751))

(declare-fun m!1260753 () Bool)

(assert (=> b!1376616 m!1260753))

(push 1)

(assert (not b!1376611))

(assert (not start!116868))

(assert (not b!1376613))

(assert (not b!1376612))

(assert (not b!1376616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

