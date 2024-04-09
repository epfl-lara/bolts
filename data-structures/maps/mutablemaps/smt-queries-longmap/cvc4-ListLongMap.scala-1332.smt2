; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26564 () Bool)

(assert start!26564)

(declare-fun res!139603 () Bool)

(declare-fun e!176251 () Bool)

(assert (=> start!26564 (=> (not res!139603) (not e!176251))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26564 (= res!139603 (validMask!0 mask!3868))))

(assert (=> start!26564 e!176251))

(declare-datatypes ((array!13650 0))(
  ( (array!13651 (arr!6474 (Array (_ BitVec 32) (_ BitVec 64))) (size!6826 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13650)

(declare-fun array_inv!4428 (array!13650) Bool)

(assert (=> start!26564 (array_inv!4428 a!3325)))

(assert (=> start!26564 true))

(declare-fun b!275574 () Bool)

(declare-fun res!139607 () Bool)

(declare-fun e!176249 () Bool)

(assert (=> b!275574 (=> (not res!139607) (not e!176249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13650 (_ BitVec 32)) Bool)

(assert (=> b!275574 (= res!139607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275575 () Bool)

(declare-fun res!139606 () Bool)

(assert (=> b!275575 (=> (not res!139606) (not e!176249))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275575 (= res!139606 (and (bvslt startIndex!26 (bvsub (size!6826 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!275576 () Bool)

(declare-fun res!139608 () Bool)

(assert (=> b!275576 (=> (not res!139608) (not e!176251))))

(declare-datatypes ((List!4303 0))(
  ( (Nil!4300) (Cons!4299 (h!4966 (_ BitVec 64)) (t!9393 List!4303)) )
))
(declare-fun arrayNoDuplicates!0 (array!13650 (_ BitVec 32) List!4303) Bool)

(assert (=> b!275576 (= res!139608 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4300))))

(declare-fun b!275577 () Bool)

(declare-fun res!139609 () Bool)

(assert (=> b!275577 (=> (not res!139609) (not e!176251))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13650 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275577 (= res!139609 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275578 () Bool)

(declare-fun res!139611 () Bool)

(assert (=> b!275578 (=> (not res!139611) (not e!176249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275578 (= res!139611 (not (validKeyInArray!0 (select (arr!6474 a!3325) startIndex!26))))))

(declare-fun b!275579 () Bool)

(declare-fun res!139610 () Bool)

(assert (=> b!275579 (=> (not res!139610) (not e!176251))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275579 (= res!139610 (and (= (size!6826 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6826 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6826 a!3325))))))

(declare-fun b!275580 () Bool)

(declare-fun res!139604 () Bool)

(assert (=> b!275580 (=> (not res!139604) (not e!176249))))

(assert (=> b!275580 (= res!139604 (not (= startIndex!26 i!1267)))))

(declare-fun b!275581 () Bool)

(assert (=> b!275581 (= e!176249 (not true))))

(assert (=> b!275581 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13651 (store (arr!6474 a!3325) i!1267 k!2581) (size!6826 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8680 0))(
  ( (Unit!8681) )
))
(declare-fun lt!137459 () Unit!8680)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13650 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8680)

(assert (=> b!275581 (= lt!137459 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275582 () Bool)

(assert (=> b!275582 (= e!176251 e!176249)))

(declare-fun res!139605 () Bool)

(assert (=> b!275582 (=> (not res!139605) (not e!176249))))

(declare-datatypes ((SeekEntryResult!1643 0))(
  ( (MissingZero!1643 (index!8742 (_ BitVec 32))) (Found!1643 (index!8743 (_ BitVec 32))) (Intermediate!1643 (undefined!2455 Bool) (index!8744 (_ BitVec 32)) (x!26984 (_ BitVec 32))) (Undefined!1643) (MissingVacant!1643 (index!8745 (_ BitVec 32))) )
))
(declare-fun lt!137458 () SeekEntryResult!1643)

(assert (=> b!275582 (= res!139605 (or (= lt!137458 (MissingZero!1643 i!1267)) (= lt!137458 (MissingVacant!1643 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13650 (_ BitVec 32)) SeekEntryResult!1643)

(assert (=> b!275582 (= lt!137458 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275583 () Bool)

(declare-fun res!139602 () Bool)

(assert (=> b!275583 (=> (not res!139602) (not e!176251))))

(assert (=> b!275583 (= res!139602 (validKeyInArray!0 k!2581))))

(assert (= (and start!26564 res!139603) b!275579))

(assert (= (and b!275579 res!139610) b!275583))

(assert (= (and b!275583 res!139602) b!275576))

(assert (= (and b!275576 res!139608) b!275577))

(assert (= (and b!275577 res!139609) b!275582))

(assert (= (and b!275582 res!139605) b!275574))

(assert (= (and b!275574 res!139607) b!275580))

(assert (= (and b!275580 res!139604) b!275578))

(assert (= (and b!275578 res!139611) b!275575))

(assert (= (and b!275575 res!139606) b!275581))

(declare-fun m!291139 () Bool)

(assert (=> b!275577 m!291139))

(declare-fun m!291141 () Bool)

(assert (=> b!275581 m!291141))

(declare-fun m!291143 () Bool)

(assert (=> b!275581 m!291143))

(declare-fun m!291145 () Bool)

(assert (=> b!275581 m!291145))

(declare-fun m!291147 () Bool)

(assert (=> b!275578 m!291147))

(assert (=> b!275578 m!291147))

(declare-fun m!291149 () Bool)

(assert (=> b!275578 m!291149))

(declare-fun m!291151 () Bool)

(assert (=> b!275582 m!291151))

(declare-fun m!291153 () Bool)

(assert (=> b!275574 m!291153))

(declare-fun m!291155 () Bool)

(assert (=> start!26564 m!291155))

(declare-fun m!291157 () Bool)

(assert (=> start!26564 m!291157))

(declare-fun m!291159 () Bool)

(assert (=> b!275583 m!291159))

(declare-fun m!291161 () Bool)

(assert (=> b!275576 m!291161))

(push 1)

(assert (not b!275583))

(assert (not b!275576))

(assert (not b!275574))

(assert (not b!275581))

(assert (not b!275582))

