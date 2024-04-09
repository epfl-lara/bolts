; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116874 () Bool)

(assert start!116874)

(declare-fun b!1376666 () Bool)

(declare-fun res!919666 () Bool)

(declare-fun e!779845 () Bool)

(assert (=> b!1376666 (=> (not res!919666) (not e!779845))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376666 (= res!919666 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376667 () Bool)

(declare-fun res!919663 () Bool)

(declare-fun e!779844 () Bool)

(assert (=> b!1376667 (=> (not res!919663) (not e!779844))))

(declare-datatypes ((array!93461 0))(
  ( (array!93462 (arr!45129 (Array (_ BitVec 32) (_ BitVec 64))) (size!45680 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93461)

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1376667 (= res!919663 (not (validKeyInArray!0 (select (arr!45129 a!4032) to!206))))))

(declare-fun b!1376668 () Bool)

(declare-fun res!919665 () Bool)

(assert (=> b!1376668 (=> (not res!919665) (not e!779845))))

(declare-fun i!1445 () (_ BitVec 32))

(assert (=> b!1376668 (= res!919665 (and (bvslt (size!45680 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45680 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!919667 () Bool)

(assert (=> start!116874 (=> (not res!919667) (not e!779845))))

(assert (=> start!116874 (= res!919667 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45680 a!4032))))))

(assert (=> start!116874 e!779845))

(assert (=> start!116874 true))

(declare-fun array_inv!34074 (array!93461) Bool)

(assert (=> start!116874 (array_inv!34074 a!4032)))

(declare-fun b!1376669 () Bool)

(assert (=> b!1376669 (= e!779845 e!779844)))

(declare-fun res!919668 () Bool)

(assert (=> b!1376669 (=> (not res!919668) (not e!779844))))

(declare-fun lt!605301 () (_ BitVec 32))

(declare-fun lt!605302 () (_ BitVec 32))

(assert (=> b!1376669 (= res!919668 (and (= lt!605302 lt!605301) (not (= to!206 (size!45680 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93461 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376669 (= lt!605301 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376669 (= lt!605302 (arrayCountValidKeys!0 (array!93462 (store (arr!45129 a!4032) i!1445 k!2947) (size!45680 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376670 () Bool)

(declare-fun res!919664 () Bool)

(assert (=> b!1376670 (=> (not res!919664) (not e!779845))))

(assert (=> b!1376670 (= res!919664 (validKeyInArray!0 (select (arr!45129 a!4032) i!1445)))))

(declare-fun b!1376671 () Bool)

(assert (=> b!1376671 (= e!779844 (not true))))

(assert (=> b!1376671 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) lt!605301)))

(declare-datatypes ((Unit!45573 0))(
  ( (Unit!45574) )
))
(declare-fun lt!605300 () Unit!45573)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93461 (_ BitVec 32) (_ BitVec 32)) Unit!45573)

(assert (=> b!1376671 (= lt!605300 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (= (and start!116874 res!919667) b!1376670))

(assert (= (and b!1376670 res!919664) b!1376666))

(assert (= (and b!1376666 res!919666) b!1376668))

(assert (= (and b!1376668 res!919665) b!1376669))

(assert (= (and b!1376669 res!919668) b!1376667))

(assert (= (and b!1376667 res!919663) b!1376671))

(declare-fun m!1260799 () Bool)

(assert (=> b!1376670 m!1260799))

(assert (=> b!1376670 m!1260799))

(declare-fun m!1260801 () Bool)

(assert (=> b!1376670 m!1260801))

(declare-fun m!1260803 () Bool)

(assert (=> start!116874 m!1260803))

(declare-fun m!1260805 () Bool)

(assert (=> b!1376671 m!1260805))

(declare-fun m!1260807 () Bool)

(assert (=> b!1376671 m!1260807))

(declare-fun m!1260809 () Bool)

(assert (=> b!1376666 m!1260809))

(declare-fun m!1260811 () Bool)

(assert (=> b!1376669 m!1260811))

(declare-fun m!1260813 () Bool)

(assert (=> b!1376669 m!1260813))

(declare-fun m!1260815 () Bool)

(assert (=> b!1376669 m!1260815))

(declare-fun m!1260817 () Bool)

(assert (=> b!1376667 m!1260817))

(assert (=> b!1376667 m!1260817))

(declare-fun m!1260819 () Bool)

(assert (=> b!1376667 m!1260819))

(push 1)

(assert (not b!1376669))

(assert (not b!1376667))

(assert (not start!116874))

(assert (not b!1376671))

(assert (not b!1376666))

