; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36118 () Bool)

(assert start!36118)

(declare-fun b!362068 () Bool)

(declare-fun e!221779 () Bool)

(assert (=> b!362068 (= e!221779 false)))

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun lt!166603 () (_ BitVec 32))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-datatypes ((array!20396 0))(
  ( (array!20397 (arr!9677 (Array (_ BitVec 32) (_ BitVec 64))) (size!10029 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20396)

(declare-fun arrayCountValidKeys!0 (array!20396 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362068 (= lt!166603 (arrayCountValidKeys!0 (array!20397 (store (arr!9677 a!4337) i!1478 k0!2980) (size!10029 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166604 () (_ BitVec 32))

(assert (=> b!362068 (= lt!166604 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362065 () Bool)

(declare-fun res!201509 () Bool)

(assert (=> b!362065 (=> (not res!201509) (not e!221779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362065 (= res!201509 (not (validKeyInArray!0 (select (arr!9677 a!4337) i!1478))))))

(declare-fun b!362067 () Bool)

(declare-fun res!201510 () Bool)

(assert (=> b!362067 (=> (not res!201510) (not e!221779))))

(assert (=> b!362067 (= res!201510 (and (bvslt (size!10029 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10029 a!4337))))))

(declare-fun b!362066 () Bool)

(declare-fun res!201508 () Bool)

(assert (=> b!362066 (=> (not res!201508) (not e!221779))))

(assert (=> b!362066 (= res!201508 (validKeyInArray!0 k0!2980))))

(declare-fun res!201511 () Bool)

(assert (=> start!36118 (=> (not res!201511) (not e!221779))))

(assert (=> start!36118 (= res!201511 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10029 a!4337))))))

(assert (=> start!36118 e!221779))

(assert (=> start!36118 true))

(declare-fun array_inv!7115 (array!20396) Bool)

(assert (=> start!36118 (array_inv!7115 a!4337)))

(assert (= (and start!36118 res!201511) b!362065))

(assert (= (and b!362065 res!201509) b!362066))

(assert (= (and b!362066 res!201508) b!362067))

(assert (= (and b!362067 res!201510) b!362068))

(declare-fun m!358617 () Bool)

(assert (=> b!362068 m!358617))

(declare-fun m!358619 () Bool)

(assert (=> b!362068 m!358619))

(declare-fun m!358621 () Bool)

(assert (=> b!362068 m!358621))

(declare-fun m!358623 () Bool)

(assert (=> b!362065 m!358623))

(assert (=> b!362065 m!358623))

(declare-fun m!358625 () Bool)

(assert (=> b!362065 m!358625))

(declare-fun m!358627 () Bool)

(assert (=> b!362066 m!358627))

(declare-fun m!358629 () Bool)

(assert (=> start!36118 m!358629))

(check-sat (not start!36118) (not b!362065) (not b!362066) (not b!362068))
