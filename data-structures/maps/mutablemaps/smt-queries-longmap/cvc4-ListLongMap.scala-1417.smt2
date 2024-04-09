; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27542 () Bool)

(assert start!27542)

(declare-fun b!284455 () Bool)

(declare-fun e!180445 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14181 0))(
  ( (array!14182 (arr!6729 (Array (_ BitVec 32) (_ BitVec 64))) (size!7081 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14181)

(assert (=> b!284455 (= e!180445 (and (bvslt startIndex!26 (bvsub (size!7081 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!284456 () Bool)

(declare-fun res!147007 () Bool)

(assert (=> b!284456 (=> (not res!147007) (not e!180445))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284456 (= res!147007 (not (= startIndex!26 i!1267)))))

(declare-fun b!284457 () Bool)

(declare-fun res!147004 () Bool)

(declare-fun e!180443 () Bool)

(assert (=> b!284457 (=> (not res!147004) (not e!180443))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284457 (= res!147004 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!147008 () Bool)

(assert (=> start!27542 (=> (not res!147008) (not e!180443))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27542 (= res!147008 (validMask!0 mask!3868))))

(assert (=> start!27542 e!180443))

(declare-fun array_inv!4683 (array!14181) Bool)

(assert (=> start!27542 (array_inv!4683 a!3325)))

(assert (=> start!27542 true))

(declare-fun b!284458 () Bool)

(declare-fun res!147005 () Bool)

(assert (=> b!284458 (=> (not res!147005) (not e!180445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284458 (= res!147005 (not (validKeyInArray!0 (select (arr!6729 a!3325) startIndex!26))))))

(declare-fun b!284459 () Bool)

(declare-fun res!147006 () Bool)

(assert (=> b!284459 (=> (not res!147006) (not e!180443))))

(assert (=> b!284459 (= res!147006 (validKeyInArray!0 k!2581))))

(declare-fun b!284460 () Bool)

(assert (=> b!284460 (= e!180443 e!180445)))

(declare-fun res!147003 () Bool)

(assert (=> b!284460 (=> (not res!147003) (not e!180445))))

(declare-datatypes ((SeekEntryResult!1898 0))(
  ( (MissingZero!1898 (index!9762 (_ BitVec 32))) (Found!1898 (index!9763 (_ BitVec 32))) (Intermediate!1898 (undefined!2710 Bool) (index!9764 (_ BitVec 32)) (x!27937 (_ BitVec 32))) (Undefined!1898) (MissingVacant!1898 (index!9765 (_ BitVec 32))) )
))
(declare-fun lt!140546 () SeekEntryResult!1898)

(assert (=> b!284460 (= res!147003 (or (= lt!140546 (MissingZero!1898 i!1267)) (= lt!140546 (MissingVacant!1898 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14181 (_ BitVec 32)) SeekEntryResult!1898)

(assert (=> b!284460 (= lt!140546 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284461 () Bool)

(declare-fun res!147009 () Bool)

(assert (=> b!284461 (=> (not res!147009) (not e!180443))))

(declare-datatypes ((List!4558 0))(
  ( (Nil!4555) (Cons!4554 (h!5227 (_ BitVec 64)) (t!9648 List!4558)) )
))
(declare-fun arrayNoDuplicates!0 (array!14181 (_ BitVec 32) List!4558) Bool)

(assert (=> b!284461 (= res!147009 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4555))))

(declare-fun b!284462 () Bool)

(declare-fun res!147001 () Bool)

(assert (=> b!284462 (=> (not res!147001) (not e!180445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14181 (_ BitVec 32)) Bool)

(assert (=> b!284462 (= res!147001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284463 () Bool)

(declare-fun res!147002 () Bool)

(assert (=> b!284463 (=> (not res!147002) (not e!180443))))

(assert (=> b!284463 (= res!147002 (and (= (size!7081 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7081 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7081 a!3325))))))

(assert (= (and start!27542 res!147008) b!284463))

(assert (= (and b!284463 res!147002) b!284459))

(assert (= (and b!284459 res!147006) b!284461))

(assert (= (and b!284461 res!147009) b!284457))

(assert (= (and b!284457 res!147004) b!284460))

(assert (= (and b!284460 res!147003) b!284462))

(assert (= (and b!284462 res!147001) b!284456))

(assert (= (and b!284456 res!147007) b!284458))

(assert (= (and b!284458 res!147005) b!284455))

(declare-fun m!299497 () Bool)

(assert (=> b!284461 m!299497))

(declare-fun m!299499 () Bool)

(assert (=> b!284457 m!299499))

(declare-fun m!299501 () Bool)

(assert (=> start!27542 m!299501))

(declare-fun m!299503 () Bool)

(assert (=> start!27542 m!299503))

(declare-fun m!299505 () Bool)

(assert (=> b!284459 m!299505))

(declare-fun m!299507 () Bool)

(assert (=> b!284462 m!299507))

(declare-fun m!299509 () Bool)

(assert (=> b!284460 m!299509))

(declare-fun m!299511 () Bool)

(assert (=> b!284458 m!299511))

(assert (=> b!284458 m!299511))

(declare-fun m!299513 () Bool)

(assert (=> b!284458 m!299513))

(push 1)

(assert (not b!284461))

(assert (not b!284457))

(assert (not b!284459))

(assert (not b!284462))

(assert (not start!27542))

(assert (not b!284460))

(assert (not b!284458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

