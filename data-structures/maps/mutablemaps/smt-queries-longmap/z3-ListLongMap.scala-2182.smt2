; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36436 () Bool)

(assert start!36436)

(declare-fun b!364105 () Bool)

(declare-fun res!203419 () Bool)

(declare-fun e!222926 () Bool)

(assert (=> b!364105 (=> (not res!203419) (not e!222926))))

(declare-datatypes ((array!20678 0))(
  ( (array!20679 (arr!9815 (Array (_ BitVec 32) (_ BitVec 64))) (size!10167 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20678)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364105 (= res!203419 (not (validKeyInArray!0 (select (arr!9815 a!4289) i!1472))))))

(declare-fun res!203418 () Bool)

(assert (=> start!36436 (=> (not res!203418) (not e!222926))))

(assert (=> start!36436 (= res!203418 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10167 a!4289))))))

(assert (=> start!36436 e!222926))

(assert (=> start!36436 true))

(declare-fun array_inv!7253 (array!20678) Bool)

(assert (=> start!36436 (array_inv!7253 a!4289)))

(declare-fun b!364106 () Bool)

(declare-fun res!203417 () Bool)

(assert (=> b!364106 (=> (not res!203417) (not e!222926))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!364106 (= res!203417 (validKeyInArray!0 k0!2974))))

(declare-fun b!364107 () Bool)

(declare-fun res!203416 () Bool)

(assert (=> b!364107 (=> (not res!203416) (not e!222926))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364107 (= res!203416 (and (bvslt (size!10167 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10167 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364108 () Bool)

(assert (=> b!364108 (= e!222926 false)))

(declare-fun lt!168418 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20678 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364108 (= lt!168418 (arrayCountValidKeys!0 (array!20679 (store (arr!9815 a!4289) i!1472 k0!2974) (size!10167 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168419 () (_ BitVec 32))

(assert (=> b!364108 (= lt!168419 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (= (and start!36436 res!203418) b!364105))

(assert (= (and b!364105 res!203419) b!364106))

(assert (= (and b!364106 res!203417) b!364107))

(assert (= (and b!364107 res!203416) b!364108))

(declare-fun m!361647 () Bool)

(assert (=> b!364105 m!361647))

(assert (=> b!364105 m!361647))

(declare-fun m!361649 () Bool)

(assert (=> b!364105 m!361649))

(declare-fun m!361651 () Bool)

(assert (=> start!36436 m!361651))

(declare-fun m!361653 () Bool)

(assert (=> b!364106 m!361653))

(declare-fun m!361655 () Bool)

(assert (=> b!364108 m!361655))

(declare-fun m!361657 () Bool)

(assert (=> b!364108 m!361657))

(declare-fun m!361659 () Bool)

(assert (=> b!364108 m!361659))

(check-sat (not b!364106) (not b!364105) (not start!36436) (not b!364108))
