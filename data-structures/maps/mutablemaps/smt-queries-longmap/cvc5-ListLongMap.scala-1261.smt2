; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26134 () Bool)

(assert start!26134)

(declare-fun b!269565 () Bool)

(declare-fun res!133774 () Bool)

(declare-fun e!173894 () Bool)

(assert (=> b!269565 (=> (not res!133774) (not e!173894))))

(declare-datatypes ((array!13220 0))(
  ( (array!13221 (arr!6259 (Array (_ BitVec 32) (_ BitVec 64))) (size!6611 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13220)

(declare-datatypes ((List!4088 0))(
  ( (Nil!4085) (Cons!4084 (h!4751 (_ BitVec 64)) (t!9178 List!4088)) )
))
(declare-fun arrayNoDuplicates!0 (array!13220 (_ BitVec 32) List!4088) Bool)

(assert (=> b!269565 (= res!133774 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4085))))

(declare-fun res!133775 () Bool)

(assert (=> start!26134 (=> (not res!133775) (not e!173894))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26134 (= res!133775 (validMask!0 mask!3868))))

(assert (=> start!26134 e!173894))

(declare-fun array_inv!4213 (array!13220) Bool)

(assert (=> start!26134 (array_inv!4213 a!3325)))

(assert (=> start!26134 true))

(declare-fun b!269566 () Bool)

(declare-fun res!133776 () Bool)

(declare-fun e!173895 () Bool)

(assert (=> b!269566 (=> (not res!133776) (not e!173895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13220 (_ BitVec 32)) Bool)

(assert (=> b!269566 (= res!133776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269567 () Bool)

(declare-fun res!133771 () Bool)

(assert (=> b!269567 (=> (not res!133771) (not e!173895))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269567 (= res!133771 (= startIndex!26 i!1267))))

(declare-fun b!269568 () Bool)

(assert (=> b!269568 (= e!173894 e!173895)))

(declare-fun res!133772 () Bool)

(assert (=> b!269568 (=> (not res!133772) (not e!173895))))

(declare-datatypes ((SeekEntryResult!1428 0))(
  ( (MissingZero!1428 (index!7882 (_ BitVec 32))) (Found!1428 (index!7883 (_ BitVec 32))) (Intermediate!1428 (undefined!2240 Bool) (index!7884 (_ BitVec 32)) (x!26201 (_ BitVec 32))) (Undefined!1428) (MissingVacant!1428 (index!7885 (_ BitVec 32))) )
))
(declare-fun lt!135271 () SeekEntryResult!1428)

(assert (=> b!269568 (= res!133772 (or (= lt!135271 (MissingZero!1428 i!1267)) (= lt!135271 (MissingVacant!1428 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13220 (_ BitVec 32)) SeekEntryResult!1428)

(assert (=> b!269568 (= lt!135271 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269569 () Bool)

(declare-fun res!133769 () Bool)

(assert (=> b!269569 (=> (not res!133769) (not e!173894))))

(declare-fun arrayContainsKey!0 (array!13220 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269569 (= res!133769 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269570 () Bool)

(declare-datatypes ((Unit!8358 0))(
  ( (Unit!8359) )
))
(declare-fun e!173893 () Unit!8358)

(declare-fun Unit!8360 () Unit!8358)

(assert (=> b!269570 (= e!173893 Unit!8360)))

(declare-fun b!269571 () Bool)

(declare-fun res!133773 () Bool)

(assert (=> b!269571 (=> (not res!133773) (not e!173894))))

(assert (=> b!269571 (= res!133773 (and (= (size!6611 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6611 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6611 a!3325))))))

(declare-fun b!269572 () Bool)

(assert (=> b!269572 (= e!173895 false)))

(declare-fun lt!135270 () Unit!8358)

(assert (=> b!269572 (= lt!135270 e!173893)))

(declare-fun c!45449 () Bool)

(assert (=> b!269572 (= c!45449 (bvslt startIndex!26 (bvsub (size!6611 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269573 () Bool)

(declare-fun res!133770 () Bool)

(assert (=> b!269573 (=> (not res!133770) (not e!173894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269573 (= res!133770 (validKeyInArray!0 k!2581))))

(declare-fun b!269574 () Bool)

(declare-fun lt!135272 () Unit!8358)

(assert (=> b!269574 (= e!173893 lt!135272)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13220 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8358)

(assert (=> b!269574 (= lt!135272 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269574 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13221 (store (arr!6259 a!3325) i!1267 k!2581) (size!6611 a!3325)) mask!3868)))

(assert (= (and start!26134 res!133775) b!269571))

(assert (= (and b!269571 res!133773) b!269573))

(assert (= (and b!269573 res!133770) b!269565))

(assert (= (and b!269565 res!133774) b!269569))

(assert (= (and b!269569 res!133769) b!269568))

(assert (= (and b!269568 res!133772) b!269566))

(assert (= (and b!269566 res!133776) b!269567))

(assert (= (and b!269567 res!133771) b!269572))

(assert (= (and b!269572 c!45449) b!269574))

(assert (= (and b!269572 (not c!45449)) b!269570))

(declare-fun m!285409 () Bool)

(assert (=> b!269568 m!285409))

(declare-fun m!285411 () Bool)

(assert (=> start!26134 m!285411))

(declare-fun m!285413 () Bool)

(assert (=> start!26134 m!285413))

(declare-fun m!285415 () Bool)

(assert (=> b!269566 m!285415))

(declare-fun m!285417 () Bool)

(assert (=> b!269565 m!285417))

(declare-fun m!285419 () Bool)

(assert (=> b!269569 m!285419))

(declare-fun m!285421 () Bool)

(assert (=> b!269573 m!285421))

(declare-fun m!285423 () Bool)

(assert (=> b!269574 m!285423))

(declare-fun m!285425 () Bool)

(assert (=> b!269574 m!285425))

(declare-fun m!285427 () Bool)

(assert (=> b!269574 m!285427))

(push 1)

