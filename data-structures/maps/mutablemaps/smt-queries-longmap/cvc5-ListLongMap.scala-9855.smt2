; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116858 () Bool)

(assert start!116858)

(declare-fun res!919508 () Bool)

(declare-fun e!779774 () Bool)

(assert (=> start!116858 (=> (not res!919508) (not e!779774))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93445 0))(
  ( (array!93446 (arr!45121 (Array (_ BitVec 32) (_ BitVec 64))) (size!45672 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93445)

(assert (=> start!116858 (= res!919508 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45672 a!4032))))))

(assert (=> start!116858 e!779774))

(assert (=> start!116858 true))

(declare-fun array_inv!34066 (array!93445) Bool)

(assert (=> start!116858 (array_inv!34066 a!4032)))

(declare-fun b!1376506 () Bool)

(declare-fun res!919503 () Bool)

(declare-fun e!779777 () Bool)

(assert (=> b!1376506 (=> (not res!919503) (not e!779777))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376506 (= res!919503 (validKeyInArray!0 (select (arr!45121 a!4032) to!206)))))

(declare-fun b!1376507 () Bool)

(declare-fun e!779775 () Bool)

(assert (=> b!1376507 (= e!779777 (not e!779775))))

(declare-fun res!919505 () Bool)

(assert (=> b!1376507 (=> (not res!919505) (not e!779775))))

(assert (=> b!1376507 (= res!919505 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvslt to!206 (size!45672 a!4032))))))

(declare-fun lt!605257 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93445 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376507 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (bvadd #b00000000000000000000000000000001 lt!605257))))

(declare-datatypes ((Unit!45563 0))(
  ( (Unit!45564) )
))
(declare-fun lt!605256 () Unit!45563)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93445 (_ BitVec 32) (_ BitVec 32)) Unit!45563)

(assert (=> b!1376507 (= lt!605256 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376508 () Bool)

(declare-fun res!919504 () Bool)

(assert (=> b!1376508 (=> (not res!919504) (not e!779774))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376508 (= res!919504 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376509 () Bool)

(assert (=> b!1376509 (= e!779774 e!779777)))

(declare-fun res!919507 () Bool)

(assert (=> b!1376509 (=> (not res!919507) (not e!779777))))

(declare-fun lt!605255 () (_ BitVec 32))

(assert (=> b!1376509 (= res!919507 (and (= lt!605255 lt!605257) (not (= to!206 (size!45672 a!4032)))))))

(assert (=> b!1376509 (= lt!605257 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376509 (= lt!605255 (arrayCountValidKeys!0 (array!93446 (store (arr!45121 a!4032) i!1445 k!2947) (size!45672 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376510 () Bool)

(declare-fun res!919509 () Bool)

(assert (=> b!1376510 (=> (not res!919509) (not e!779774))))

(assert (=> b!1376510 (= res!919509 (and (bvslt (size!45672 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45672 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376511 () Bool)

(assert (=> b!1376511 (= e!779775 (validKeyInArray!0 (select (store (arr!45121 a!4032) i!1445 k!2947) to!206)))))

(declare-fun b!1376512 () Bool)

(declare-fun res!919506 () Bool)

(assert (=> b!1376512 (=> (not res!919506) (not e!779774))))

(assert (=> b!1376512 (= res!919506 (validKeyInArray!0 (select (arr!45121 a!4032) i!1445)))))

(assert (= (and start!116858 res!919508) b!1376512))

(assert (= (and b!1376512 res!919506) b!1376508))

(assert (= (and b!1376508 res!919504) b!1376510))

(assert (= (and b!1376510 res!919509) b!1376509))

(assert (= (and b!1376509 res!919507) b!1376506))

(assert (= (and b!1376506 res!919503) b!1376507))

(assert (= (and b!1376507 res!919505) b!1376511))

(declare-fun m!1260623 () Bool)

(assert (=> b!1376511 m!1260623))

(declare-fun m!1260625 () Bool)

(assert (=> b!1376511 m!1260625))

(assert (=> b!1376511 m!1260625))

(declare-fun m!1260627 () Bool)

(assert (=> b!1376511 m!1260627))

(declare-fun m!1260629 () Bool)

(assert (=> b!1376507 m!1260629))

(declare-fun m!1260631 () Bool)

(assert (=> b!1376507 m!1260631))

(declare-fun m!1260633 () Bool)

(assert (=> b!1376512 m!1260633))

(assert (=> b!1376512 m!1260633))

(declare-fun m!1260635 () Bool)

(assert (=> b!1376512 m!1260635))

(declare-fun m!1260637 () Bool)

(assert (=> start!116858 m!1260637))

(declare-fun m!1260639 () Bool)

(assert (=> b!1376508 m!1260639))

(declare-fun m!1260641 () Bool)

(assert (=> b!1376509 m!1260641))

(assert (=> b!1376509 m!1260623))

(declare-fun m!1260643 () Bool)

(assert (=> b!1376509 m!1260643))

(declare-fun m!1260645 () Bool)

(assert (=> b!1376506 m!1260645))

(assert (=> b!1376506 m!1260645))

(declare-fun m!1260647 () Bool)

(assert (=> b!1376506 m!1260647))

(push 1)

(assert (not b!1376509))

(assert (not start!116858))

(assert (not b!1376512))

(assert (not b!1376506))

(assert (not b!1376507))

(assert (not b!1376508))

(assert (not b!1376511))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

