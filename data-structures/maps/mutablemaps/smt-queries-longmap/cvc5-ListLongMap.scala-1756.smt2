; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32142 () Bool)

(assert start!32142)

(declare-fun b!320055 () Bool)

(declare-fun res!174459 () Bool)

(declare-fun e!198648 () Bool)

(assert (=> b!320055 (=> (not res!174459) (not e!198648))))

(declare-datatypes ((array!16373 0))(
  ( (array!16374 (arr!7744 (Array (_ BitVec 32) (_ BitVec 64))) (size!8096 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16373)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2886 0))(
  ( (MissingZero!2886 (index!13720 (_ BitVec 32))) (Found!2886 (index!13721 (_ BitVec 32))) (Intermediate!2886 (undefined!3698 Bool) (index!13722 (_ BitVec 32)) (x!31958 (_ BitVec 32))) (Undefined!2886) (MissingVacant!2886 (index!13723 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16373 (_ BitVec 32)) SeekEntryResult!2886)

(assert (=> b!320055 (= res!174459 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2886 i!1250)))))

(declare-fun b!320056 () Bool)

(declare-fun res!174460 () Bool)

(assert (=> b!320056 (=> (not res!174460) (not e!198648))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16373 (_ BitVec 32)) SeekEntryResult!2886)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320056 (= res!174460 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2886 false resIndex!58 resX!58)))))

(declare-fun b!320057 () Bool)

(declare-fun res!174462 () Bool)

(assert (=> b!320057 (=> (not res!174462) (not e!198648))))

(declare-fun arrayContainsKey!0 (array!16373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320057 (= res!174462 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!174457 () Bool)

(assert (=> start!32142 (=> (not res!174457) (not e!198648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32142 (= res!174457 (validMask!0 mask!3777))))

(assert (=> start!32142 e!198648))

(declare-fun array_inv!5698 (array!16373) Bool)

(assert (=> start!32142 (array_inv!5698 a!3305)))

(assert (=> start!32142 true))

(declare-fun b!320058 () Bool)

(declare-fun res!174456 () Bool)

(assert (=> b!320058 (=> (not res!174456) (not e!198648))))

(assert (=> b!320058 (= res!174456 (and (= (size!8096 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8096 a!3305))))))

(declare-fun b!320059 () Bool)

(declare-fun res!174458 () Bool)

(assert (=> b!320059 (=> (not res!174458) (not e!198648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320059 (= res!174458 (validKeyInArray!0 k!2497))))

(declare-fun b!320060 () Bool)

(declare-fun res!174461 () Bool)

(assert (=> b!320060 (=> (not res!174461) (not e!198648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16373 (_ BitVec 32)) Bool)

(assert (=> b!320060 (= res!174461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!320061 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!320061 (= e!198648 (and (= (select (arr!7744 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8096 a!3305)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(assert (= (and start!32142 res!174457) b!320058))

(assert (= (and b!320058 res!174456) b!320059))

(assert (= (and b!320059 res!174458) b!320057))

(assert (= (and b!320057 res!174462) b!320055))

(assert (= (and b!320055 res!174459) b!320060))

(assert (= (and b!320060 res!174461) b!320056))

(assert (= (and b!320056 res!174460) b!320061))

(declare-fun m!328501 () Bool)

(assert (=> start!32142 m!328501))

(declare-fun m!328503 () Bool)

(assert (=> start!32142 m!328503))

(declare-fun m!328505 () Bool)

(assert (=> b!320060 m!328505))

(declare-fun m!328507 () Bool)

(assert (=> b!320056 m!328507))

(assert (=> b!320056 m!328507))

(declare-fun m!328509 () Bool)

(assert (=> b!320056 m!328509))

(declare-fun m!328511 () Bool)

(assert (=> b!320057 m!328511))

(declare-fun m!328513 () Bool)

(assert (=> b!320055 m!328513))

(declare-fun m!328515 () Bool)

(assert (=> b!320061 m!328515))

(declare-fun m!328517 () Bool)

(assert (=> b!320059 m!328517))

(push 1)

