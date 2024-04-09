; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116880 () Bool)

(assert start!116880)

(declare-fun b!1376728 () Bool)

(declare-fun e!779881 () Bool)

(declare-fun e!779880 () Bool)

(assert (=> b!1376728 (= e!779881 (not e!779880))))

(declare-fun res!919729 () Bool)

(assert (=> b!1376728 (=> (not res!919729) (not e!779880))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93467 0))(
  ( (array!93468 (arr!45132 (Array (_ BitVec 32) (_ BitVec 64))) (size!45683 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93467)

(assert (=> b!1376728 (= res!919729 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvslt to!206 (size!45683 a!4032))))))

(declare-fun lt!605328 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93467 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376728 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) lt!605328)))

(declare-datatypes ((Unit!45579 0))(
  ( (Unit!45580) )
))
(declare-fun lt!605327 () Unit!45579)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93467 (_ BitVec 32) (_ BitVec 32)) Unit!45579)

(assert (=> b!1376728 (= lt!605327 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!919726 () Bool)

(declare-fun e!779879 () Bool)

(assert (=> start!116880 (=> (not res!919726) (not e!779879))))

(assert (=> start!116880 (= res!919726 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45683 a!4032))))))

(assert (=> start!116880 e!779879))

(assert (=> start!116880 true))

(declare-fun array_inv!34077 (array!93467) Bool)

(assert (=> start!116880 (array_inv!34077 a!4032)))

(declare-fun b!1376729 () Bool)

(declare-fun res!919725 () Bool)

(assert (=> b!1376729 (=> (not res!919725) (not e!779879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376729 (= res!919725 (validKeyInArray!0 (select (arr!45132 a!4032) i!1445)))))

(declare-fun b!1376730 () Bool)

(declare-fun res!919727 () Bool)

(assert (=> b!1376730 (=> (not res!919727) (not e!779879))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376730 (= res!919727 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376731 () Bool)

(assert (=> b!1376731 (= e!779879 e!779881)))

(declare-fun res!919731 () Bool)

(assert (=> b!1376731 (=> (not res!919731) (not e!779881))))

(declare-fun lt!605329 () (_ BitVec 32))

(assert (=> b!1376731 (= res!919731 (and (= lt!605329 lt!605328) (not (= to!206 (size!45683 a!4032)))))))

(assert (=> b!1376731 (= lt!605328 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376731 (= lt!605329 (arrayCountValidKeys!0 (array!93468 (store (arr!45132 a!4032) i!1445 k!2947) (size!45683 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376732 () Bool)

(declare-fun res!919730 () Bool)

(assert (=> b!1376732 (=> (not res!919730) (not e!779881))))

(assert (=> b!1376732 (= res!919730 (not (validKeyInArray!0 (select (arr!45132 a!4032) to!206))))))

(declare-fun b!1376733 () Bool)

(assert (=> b!1376733 (= e!779880 (not (validKeyInArray!0 (select (store (arr!45132 a!4032) i!1445 k!2947) to!206))))))

(declare-fun b!1376734 () Bool)

(declare-fun res!919728 () Bool)

(assert (=> b!1376734 (=> (not res!919728) (not e!779879))))

(assert (=> b!1376734 (= res!919728 (and (bvslt (size!45683 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45683 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116880 res!919726) b!1376729))

(assert (= (and b!1376729 res!919725) b!1376730))

(assert (= (and b!1376730 res!919727) b!1376734))

(assert (= (and b!1376734 res!919728) b!1376731))

(assert (= (and b!1376731 res!919731) b!1376732))

(assert (= (and b!1376732 res!919730) b!1376728))

(assert (= (and b!1376728 res!919729) b!1376733))

(declare-fun m!1260873 () Bool)

(assert (=> start!116880 m!1260873))

(declare-fun m!1260875 () Bool)

(assert (=> b!1376733 m!1260875))

(declare-fun m!1260877 () Bool)

(assert (=> b!1376733 m!1260877))

(assert (=> b!1376733 m!1260877))

(declare-fun m!1260879 () Bool)

(assert (=> b!1376733 m!1260879))

(declare-fun m!1260881 () Bool)

(assert (=> b!1376732 m!1260881))

(assert (=> b!1376732 m!1260881))

(declare-fun m!1260883 () Bool)

(assert (=> b!1376732 m!1260883))

(declare-fun m!1260885 () Bool)

(assert (=> b!1376728 m!1260885))

(declare-fun m!1260887 () Bool)

(assert (=> b!1376728 m!1260887))

(declare-fun m!1260889 () Bool)

(assert (=> b!1376729 m!1260889))

(assert (=> b!1376729 m!1260889))

(declare-fun m!1260891 () Bool)

(assert (=> b!1376729 m!1260891))

(declare-fun m!1260893 () Bool)

(assert (=> b!1376730 m!1260893))

(declare-fun m!1260895 () Bool)

(assert (=> b!1376731 m!1260895))

(assert (=> b!1376731 m!1260875))

(declare-fun m!1260897 () Bool)

(assert (=> b!1376731 m!1260897))

(push 1)

(assert (not b!1376728))

(assert (not b!1376730))

(assert (not b!1376731))

(assert (not b!1376732))

(assert (not b!1376733))

(assert (not b!1376729))

(assert (not start!116880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

