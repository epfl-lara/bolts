; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92894 () Bool)

(assert start!92894)

(declare-fun b!1054500 () Bool)

(declare-fun e!599155 () Bool)

(declare-fun e!599153 () Bool)

(assert (=> b!1054500 (= e!599155 e!599153)))

(declare-fun res!703550 () Bool)

(assert (=> b!1054500 (=> (not res!703550) (not e!599153))))

(declare-datatypes ((array!66502 0))(
  ( (array!66503 (arr!31979 (Array (_ BitVec 32) (_ BitVec 64))) (size!32516 (_ BitVec 32))) )
))
(declare-fun lt!465430 () array!66502)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054500 (= res!703550 (arrayContainsKey!0 lt!465430 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66502)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054500 (= lt!465430 (array!66503 (store (arr!31979 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32516 a!3488)))))

(declare-fun b!1054501 () Bool)

(declare-fun res!703557 () Bool)

(assert (=> b!1054501 (=> (not res!703557) (not e!599155))))

(declare-datatypes ((List!22422 0))(
  ( (Nil!22419) (Cons!22418 (h!23627 (_ BitVec 64)) (t!31736 List!22422)) )
))
(declare-fun arrayNoDuplicates!0 (array!66502 (_ BitVec 32) List!22422) Bool)

(assert (=> b!1054501 (= res!703557 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22419))))

(declare-fun res!703554 () Bool)

(assert (=> start!92894 (=> (not res!703554) (not e!599155))))

(assert (=> start!92894 (= res!703554 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32516 a!3488)) (bvslt (size!32516 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92894 e!599155))

(assert (=> start!92894 true))

(declare-fun array_inv!24601 (array!66502) Bool)

(assert (=> start!92894 (array_inv!24601 a!3488)))

(declare-fun b!1054502 () Bool)

(declare-fun res!703555 () Bool)

(assert (=> b!1054502 (=> (not res!703555) (not e!599155))))

(assert (=> b!1054502 (= res!703555 (= (select (arr!31979 a!3488) i!1381) k0!2747))))

(declare-fun lt!465432 () (_ BitVec 32))

(declare-fun b!1054503 () Bool)

(declare-fun e!599151 () Bool)

(assert (=> b!1054503 (= e!599151 (arrayContainsKey!0 a!3488 k0!2747 lt!465432))))

(declare-fun b!1054504 () Bool)

(declare-fun res!703549 () Bool)

(assert (=> b!1054504 (=> (not res!703549) (not e!599155))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054504 (= res!703549 (validKeyInArray!0 k0!2747))))

(declare-fun b!1054505 () Bool)

(declare-fun e!599156 () Bool)

(assert (=> b!1054505 (= e!599156 e!599151)))

(declare-fun res!703553 () Bool)

(assert (=> b!1054505 (=> res!703553 e!599151)))

(assert (=> b!1054505 (= res!703553 (bvsle lt!465432 i!1381))))

(declare-fun b!1054506 () Bool)

(declare-fun e!599152 () Bool)

(assert (=> b!1054506 (= e!599152 true)))

(assert (=> b!1054506 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34525 0))(
  ( (Unit!34526) )
))
(declare-fun lt!465431 () Unit!34525)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66502 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34525)

(assert (=> b!1054506 (= lt!465431 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465432 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1054506 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22419)))

(declare-fun lt!465433 () Unit!34525)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66502 (_ BitVec 32) (_ BitVec 32)) Unit!34525)

(assert (=> b!1054506 (= lt!465433 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054507 () Bool)

(declare-fun e!599150 () Bool)

(assert (=> b!1054507 (= e!599153 e!599150)))

(declare-fun res!703552 () Bool)

(assert (=> b!1054507 (=> (not res!703552) (not e!599150))))

(assert (=> b!1054507 (= res!703552 (not (= lt!465432 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66502 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054507 (= lt!465432 (arrayScanForKey!0 lt!465430 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054508 () Bool)

(assert (=> b!1054508 (= e!599150 (not e!599152))))

(declare-fun res!703556 () Bool)

(assert (=> b!1054508 (=> res!703556 e!599152)))

(assert (=> b!1054508 (= res!703556 (bvsle lt!465432 i!1381))))

(assert (=> b!1054508 e!599156))

(declare-fun res!703551 () Bool)

(assert (=> b!1054508 (=> (not res!703551) (not e!599156))))

(assert (=> b!1054508 (= res!703551 (= (select (store (arr!31979 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465432) k0!2747))))

(assert (= (and start!92894 res!703554) b!1054501))

(assert (= (and b!1054501 res!703557) b!1054504))

(assert (= (and b!1054504 res!703549) b!1054502))

(assert (= (and b!1054502 res!703555) b!1054500))

(assert (= (and b!1054500 res!703550) b!1054507))

(assert (= (and b!1054507 res!703552) b!1054508))

(assert (= (and b!1054508 res!703551) b!1054505))

(assert (= (and b!1054505 (not res!703553)) b!1054503))

(assert (= (and b!1054508 (not res!703556)) b!1054506))

(declare-fun m!974693 () Bool)

(assert (=> b!1054508 m!974693))

(declare-fun m!974695 () Bool)

(assert (=> b!1054508 m!974695))

(declare-fun m!974697 () Bool)

(assert (=> b!1054507 m!974697))

(declare-fun m!974699 () Bool)

(assert (=> b!1054500 m!974699))

(assert (=> b!1054500 m!974693))

(declare-fun m!974701 () Bool)

(assert (=> b!1054501 m!974701))

(declare-fun m!974703 () Bool)

(assert (=> b!1054504 m!974703))

(declare-fun m!974705 () Bool)

(assert (=> b!1054503 m!974705))

(declare-fun m!974707 () Bool)

(assert (=> b!1054502 m!974707))

(declare-fun m!974709 () Bool)

(assert (=> b!1054506 m!974709))

(declare-fun m!974711 () Bool)

(assert (=> b!1054506 m!974711))

(declare-fun m!974713 () Bool)

(assert (=> b!1054506 m!974713))

(declare-fun m!974715 () Bool)

(assert (=> b!1054506 m!974715))

(declare-fun m!974717 () Bool)

(assert (=> start!92894 m!974717))

(check-sat (not b!1054501) (not b!1054500) (not b!1054504) (not b!1054507) (not start!92894) (not b!1054503) (not b!1054506))
(check-sat)
