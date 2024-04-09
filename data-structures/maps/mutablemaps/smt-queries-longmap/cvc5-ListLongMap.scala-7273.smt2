; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92892 () Bool)

(assert start!92892)

(declare-fun e!599133 () Bool)

(declare-datatypes ((array!66500 0))(
  ( (array!66501 (arr!31978 (Array (_ BitVec 32) (_ BitVec 64))) (size!32515 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66500)

(declare-fun lt!465420 () (_ BitVec 32))

(declare-fun b!1054473 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054473 (= e!599133 (arrayContainsKey!0 a!3488 k!2747 lt!465420))))

(declare-fun res!703530 () Bool)

(declare-fun e!599129 () Bool)

(assert (=> start!92892 (=> (not res!703530) (not e!599129))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!92892 (= res!703530 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32515 a!3488)) (bvslt (size!32515 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92892 e!599129))

(assert (=> start!92892 true))

(declare-fun array_inv!24600 (array!66500) Bool)

(assert (=> start!92892 (array_inv!24600 a!3488)))

(declare-fun b!1054474 () Bool)

(declare-fun e!599134 () Bool)

(declare-fun e!599131 () Bool)

(assert (=> b!1054474 (= e!599134 e!599131)))

(declare-fun res!703526 () Bool)

(assert (=> b!1054474 (=> (not res!703526) (not e!599131))))

(assert (=> b!1054474 (= res!703526 (not (= lt!465420 i!1381)))))

(declare-fun lt!465421 () array!66500)

(declare-fun arrayScanForKey!0 (array!66500 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054474 (= lt!465420 (arrayScanForKey!0 lt!465421 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054475 () Bool)

(declare-fun res!703528 () Bool)

(assert (=> b!1054475 (=> (not res!703528) (not e!599129))))

(assert (=> b!1054475 (= res!703528 (= (select (arr!31978 a!3488) i!1381) k!2747))))

(declare-fun b!1054476 () Bool)

(declare-fun e!599135 () Bool)

(assert (=> b!1054476 (= e!599135 true)))

(assert (=> b!1054476 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34523 0))(
  ( (Unit!34524) )
))
(declare-fun lt!465418 () Unit!34523)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66500 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34523)

(assert (=> b!1054476 (= lt!465418 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465420 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22421 0))(
  ( (Nil!22418) (Cons!22417 (h!23626 (_ BitVec 64)) (t!31735 List!22421)) )
))
(declare-fun arrayNoDuplicates!0 (array!66500 (_ BitVec 32) List!22421) Bool)

(assert (=> b!1054476 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22418)))

(declare-fun lt!465419 () Unit!34523)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66500 (_ BitVec 32) (_ BitVec 32)) Unit!34523)

(assert (=> b!1054476 (= lt!465419 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054477 () Bool)

(declare-fun res!703525 () Bool)

(assert (=> b!1054477 (=> (not res!703525) (not e!599129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054477 (= res!703525 (validKeyInArray!0 k!2747))))

(declare-fun b!1054478 () Bool)

(assert (=> b!1054478 (= e!599131 (not e!599135))))

(declare-fun res!703523 () Bool)

(assert (=> b!1054478 (=> res!703523 e!599135)))

(assert (=> b!1054478 (= res!703523 (bvsle lt!465420 i!1381))))

(declare-fun e!599132 () Bool)

(assert (=> b!1054478 e!599132))

(declare-fun res!703527 () Bool)

(assert (=> b!1054478 (=> (not res!703527) (not e!599132))))

(assert (=> b!1054478 (= res!703527 (= (select (store (arr!31978 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465420) k!2747))))

(declare-fun b!1054479 () Bool)

(assert (=> b!1054479 (= e!599129 e!599134)))

(declare-fun res!703522 () Bool)

(assert (=> b!1054479 (=> (not res!703522) (not e!599134))))

(assert (=> b!1054479 (= res!703522 (arrayContainsKey!0 lt!465421 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054479 (= lt!465421 (array!66501 (store (arr!31978 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32515 a!3488)))))

(declare-fun b!1054480 () Bool)

(assert (=> b!1054480 (= e!599132 e!599133)))

(declare-fun res!703524 () Bool)

(assert (=> b!1054480 (=> res!703524 e!599133)))

(assert (=> b!1054480 (= res!703524 (bvsle lt!465420 i!1381))))

(declare-fun b!1054481 () Bool)

(declare-fun res!703529 () Bool)

(assert (=> b!1054481 (=> (not res!703529) (not e!599129))))

(assert (=> b!1054481 (= res!703529 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22418))))

(assert (= (and start!92892 res!703530) b!1054481))

(assert (= (and b!1054481 res!703529) b!1054477))

(assert (= (and b!1054477 res!703525) b!1054475))

(assert (= (and b!1054475 res!703528) b!1054479))

(assert (= (and b!1054479 res!703522) b!1054474))

(assert (= (and b!1054474 res!703526) b!1054478))

(assert (= (and b!1054478 res!703527) b!1054480))

(assert (= (and b!1054480 (not res!703524)) b!1054473))

(assert (= (and b!1054478 (not res!703523)) b!1054476))

(declare-fun m!974667 () Bool)

(assert (=> b!1054477 m!974667))

(declare-fun m!974669 () Bool)

(assert (=> b!1054478 m!974669))

(declare-fun m!974671 () Bool)

(assert (=> b!1054478 m!974671))

(declare-fun m!974673 () Bool)

(assert (=> b!1054475 m!974673))

(declare-fun m!974675 () Bool)

(assert (=> b!1054473 m!974675))

(declare-fun m!974677 () Bool)

(assert (=> b!1054474 m!974677))

(declare-fun m!974679 () Bool)

(assert (=> b!1054479 m!974679))

(assert (=> b!1054479 m!974669))

(declare-fun m!974681 () Bool)

(assert (=> b!1054481 m!974681))

(declare-fun m!974683 () Bool)

(assert (=> b!1054476 m!974683))

(declare-fun m!974685 () Bool)

(assert (=> b!1054476 m!974685))

(declare-fun m!974687 () Bool)

(assert (=> b!1054476 m!974687))

(declare-fun m!974689 () Bool)

(assert (=> b!1054476 m!974689))

(declare-fun m!974691 () Bool)

(assert (=> start!92892 m!974691))

(push 1)

