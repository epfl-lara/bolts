; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26096 () Bool)

(assert start!26096)

(declare-fun b!268999 () Bool)

(declare-fun e!173667 () Bool)

(assert (=> b!268999 (= e!173667 false)))

(declare-fun lt!135101 () Bool)

(declare-datatypes ((array!13182 0))(
  ( (array!13183 (arr!6240 (Array (_ BitVec 32) (_ BitVec 64))) (size!6592 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13182)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13182 (_ BitVec 32)) Bool)

(assert (=> b!268999 (= lt!135101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269000 () Bool)

(declare-fun e!173666 () Bool)

(assert (=> b!269000 (= e!173666 e!173667)))

(declare-fun res!133315 () Bool)

(assert (=> b!269000 (=> (not res!133315) (not e!173667))))

(declare-datatypes ((SeekEntryResult!1409 0))(
  ( (MissingZero!1409 (index!7806 (_ BitVec 32))) (Found!1409 (index!7807 (_ BitVec 32))) (Intermediate!1409 (undefined!2221 Bool) (index!7808 (_ BitVec 32)) (x!26126 (_ BitVec 32))) (Undefined!1409) (MissingVacant!1409 (index!7809 (_ BitVec 32))) )
))
(declare-fun lt!135100 () SeekEntryResult!1409)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269000 (= res!133315 (or (= lt!135100 (MissingZero!1409 i!1267)) (= lt!135100 (MissingVacant!1409 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13182 (_ BitVec 32)) SeekEntryResult!1409)

(assert (=> b!269000 (= lt!135100 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269001 () Bool)

(declare-fun res!133320 () Bool)

(assert (=> b!269001 (=> (not res!133320) (not e!173666))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!269001 (= res!133320 (and (= (size!6592 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6592 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6592 a!3325))))))

(declare-fun res!133319 () Bool)

(assert (=> start!26096 (=> (not res!133319) (not e!173666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26096 (= res!133319 (validMask!0 mask!3868))))

(assert (=> start!26096 e!173666))

(declare-fun array_inv!4194 (array!13182) Bool)

(assert (=> start!26096 (array_inv!4194 a!3325)))

(assert (=> start!26096 true))

(declare-fun b!269002 () Bool)

(declare-fun res!133318 () Bool)

(assert (=> b!269002 (=> (not res!133318) (not e!173666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269002 (= res!133318 (validKeyInArray!0 k!2581))))

(declare-fun b!269003 () Bool)

(declare-fun res!133317 () Bool)

(assert (=> b!269003 (=> (not res!133317) (not e!173666))))

(declare-fun arrayContainsKey!0 (array!13182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269003 (= res!133317 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269004 () Bool)

(declare-fun res!133316 () Bool)

(assert (=> b!269004 (=> (not res!133316) (not e!173666))))

(declare-datatypes ((List!4069 0))(
  ( (Nil!4066) (Cons!4065 (h!4732 (_ BitVec 64)) (t!9159 List!4069)) )
))
(declare-fun arrayNoDuplicates!0 (array!13182 (_ BitVec 32) List!4069) Bool)

(assert (=> b!269004 (= res!133316 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4066))))

(assert (= (and start!26096 res!133319) b!269001))

(assert (= (and b!269001 res!133320) b!269002))

(assert (= (and b!269002 res!133318) b!269004))

(assert (= (and b!269004 res!133316) b!269003))

(assert (= (and b!269003 res!133317) b!269000))

(assert (= (and b!269000 res!133315) b!268999))

(declare-fun m!285035 () Bool)

(assert (=> start!26096 m!285035))

(declare-fun m!285037 () Bool)

(assert (=> start!26096 m!285037))

(declare-fun m!285039 () Bool)

(assert (=> b!269003 m!285039))

(declare-fun m!285041 () Bool)

(assert (=> b!269000 m!285041))

(declare-fun m!285043 () Bool)

(assert (=> b!268999 m!285043))

(declare-fun m!285045 () Bool)

(assert (=> b!269004 m!285045))

(declare-fun m!285047 () Bool)

(assert (=> b!269002 m!285047))

(push 1)

(assert (not b!268999))

(assert (not b!269002))

(assert (not b!269004))

(assert (not b!269000))

(assert (not b!269003))

(assert (not start!26096))

(check-sat)

