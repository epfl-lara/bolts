; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26094 () Bool)

(assert start!26094)

(declare-fun b!268981 () Bool)

(declare-fun res!133298 () Bool)

(declare-fun e!173659 () Bool)

(assert (=> b!268981 (=> (not res!133298) (not e!173659))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268981 (= res!133298 (validKeyInArray!0 k0!2581))))

(declare-fun b!268982 () Bool)

(declare-fun e!173658 () Bool)

(assert (=> b!268982 (= e!173659 e!173658)))

(declare-fun res!133299 () Bool)

(assert (=> b!268982 (=> (not res!133299) (not e!173658))))

(declare-datatypes ((SeekEntryResult!1408 0))(
  ( (MissingZero!1408 (index!7802 (_ BitVec 32))) (Found!1408 (index!7803 (_ BitVec 32))) (Intermediate!1408 (undefined!2220 Bool) (index!7804 (_ BitVec 32)) (x!26125 (_ BitVec 32))) (Undefined!1408) (MissingVacant!1408 (index!7805 (_ BitVec 32))) )
))
(declare-fun lt!135094 () SeekEntryResult!1408)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268982 (= res!133299 (or (= lt!135094 (MissingZero!1408 i!1267)) (= lt!135094 (MissingVacant!1408 i!1267))))))

(declare-datatypes ((array!13180 0))(
  ( (array!13181 (arr!6239 (Array (_ BitVec 32) (_ BitVec 64))) (size!6591 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13180)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13180 (_ BitVec 32)) SeekEntryResult!1408)

(assert (=> b!268982 (= lt!135094 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268983 () Bool)

(declare-fun res!133300 () Bool)

(assert (=> b!268983 (=> (not res!133300) (not e!173659))))

(declare-fun arrayContainsKey!0 (array!13180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268983 (= res!133300 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268984 () Bool)

(declare-fun res!133302 () Bool)

(assert (=> b!268984 (=> (not res!133302) (not e!173659))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268984 (= res!133302 (and (= (size!6591 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6591 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6591 a!3325))))))

(declare-fun b!268986 () Bool)

(declare-fun res!133301 () Bool)

(assert (=> b!268986 (=> (not res!133301) (not e!173659))))

(declare-datatypes ((List!4068 0))(
  ( (Nil!4065) (Cons!4064 (h!4731 (_ BitVec 64)) (t!9158 List!4068)) )
))
(declare-fun arrayNoDuplicates!0 (array!13180 (_ BitVec 32) List!4068) Bool)

(assert (=> b!268986 (= res!133301 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4065))))

(declare-fun res!133297 () Bool)

(assert (=> start!26094 (=> (not res!133297) (not e!173659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26094 (= res!133297 (validMask!0 mask!3868))))

(assert (=> start!26094 e!173659))

(declare-fun array_inv!4193 (array!13180) Bool)

(assert (=> start!26094 (array_inv!4193 a!3325)))

(assert (=> start!26094 true))

(declare-fun b!268985 () Bool)

(assert (=> b!268985 (= e!173658 false)))

(declare-fun lt!135095 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13180 (_ BitVec 32)) Bool)

(assert (=> b!268985 (= lt!135095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26094 res!133297) b!268984))

(assert (= (and b!268984 res!133302) b!268981))

(assert (= (and b!268981 res!133298) b!268986))

(assert (= (and b!268986 res!133301) b!268983))

(assert (= (and b!268983 res!133300) b!268982))

(assert (= (and b!268982 res!133299) b!268985))

(declare-fun m!285021 () Bool)

(assert (=> b!268981 m!285021))

(declare-fun m!285023 () Bool)

(assert (=> b!268982 m!285023))

(declare-fun m!285025 () Bool)

(assert (=> b!268986 m!285025))

(declare-fun m!285027 () Bool)

(assert (=> b!268983 m!285027))

(declare-fun m!285029 () Bool)

(assert (=> start!26094 m!285029))

(declare-fun m!285031 () Bool)

(assert (=> start!26094 m!285031))

(declare-fun m!285033 () Bool)

(assert (=> b!268985 m!285033))

(check-sat (not b!268985) (not b!268981) (not b!268982) (not b!268986) (not b!268983) (not start!26094))
(check-sat)
