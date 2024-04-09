; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26026 () Bool)

(assert start!26026)

(declare-fun b!268369 () Bool)

(declare-fun res!132688 () Bool)

(declare-fun e!173353 () Bool)

(assert (=> b!268369 (=> (not res!132688) (not e!173353))))

(declare-datatypes ((array!13112 0))(
  ( (array!13113 (arr!6205 (Array (_ BitVec 32) (_ BitVec 64))) (size!6557 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13112)

(declare-datatypes ((List!4034 0))(
  ( (Nil!4031) (Cons!4030 (h!4697 (_ BitVec 64)) (t!9124 List!4034)) )
))
(declare-fun arrayNoDuplicates!0 (array!13112 (_ BitVec 32) List!4034) Bool)

(assert (=> b!268369 (= res!132688 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4031))))

(declare-fun b!268370 () Bool)

(declare-fun res!132690 () Bool)

(assert (=> b!268370 (=> (not res!132690) (not e!173353))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268370 (= res!132690 (validKeyInArray!0 k!2581))))

(declare-fun b!268371 () Bool)

(declare-fun res!132685 () Bool)

(assert (=> b!268371 (=> (not res!132685) (not e!173353))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268371 (= res!132685 (and (= (size!6557 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6557 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6557 a!3325))))))

(declare-fun b!268372 () Bool)

(declare-fun e!173352 () Bool)

(assert (=> b!268372 (= e!173353 e!173352)))

(declare-fun res!132687 () Bool)

(assert (=> b!268372 (=> (not res!132687) (not e!173352))))

(declare-datatypes ((SeekEntryResult!1374 0))(
  ( (MissingZero!1374 (index!7666 (_ BitVec 32))) (Found!1374 (index!7667 (_ BitVec 32))) (Intermediate!1374 (undefined!2186 Bool) (index!7668 (_ BitVec 32)) (x!26003 (_ BitVec 32))) (Undefined!1374) (MissingVacant!1374 (index!7669 (_ BitVec 32))) )
))
(declare-fun lt!134890 () SeekEntryResult!1374)

(assert (=> b!268372 (= res!132687 (or (= lt!134890 (MissingZero!1374 i!1267)) (= lt!134890 (MissingVacant!1374 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13112 (_ BitVec 32)) SeekEntryResult!1374)

(assert (=> b!268372 (= lt!134890 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!132689 () Bool)

(assert (=> start!26026 (=> (not res!132689) (not e!173353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26026 (= res!132689 (validMask!0 mask!3868))))

(assert (=> start!26026 e!173353))

(declare-fun array_inv!4159 (array!13112) Bool)

(assert (=> start!26026 (array_inv!4159 a!3325)))

(assert (=> start!26026 true))

(declare-fun b!268373 () Bool)

(declare-fun res!132686 () Bool)

(assert (=> b!268373 (=> (not res!132686) (not e!173353))))

(declare-fun arrayContainsKey!0 (array!13112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268373 (= res!132686 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268374 () Bool)

(assert (=> b!268374 (= e!173352 false)))

(declare-fun lt!134891 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13112 (_ BitVec 32)) Bool)

(assert (=> b!268374 (= lt!134891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26026 res!132689) b!268371))

(assert (= (and b!268371 res!132685) b!268370))

(assert (= (and b!268370 res!132690) b!268369))

(assert (= (and b!268369 res!132688) b!268373))

(assert (= (and b!268373 res!132686) b!268372))

(assert (= (and b!268372 res!132687) b!268374))

(declare-fun m!284545 () Bool)

(assert (=> b!268374 m!284545))

(declare-fun m!284547 () Bool)

(assert (=> b!268372 m!284547))

(declare-fun m!284549 () Bool)

(assert (=> b!268370 m!284549))

(declare-fun m!284551 () Bool)

(assert (=> b!268373 m!284551))

(declare-fun m!284553 () Bool)

(assert (=> start!26026 m!284553))

(declare-fun m!284555 () Bool)

(assert (=> start!26026 m!284555))

(declare-fun m!284557 () Bool)

(assert (=> b!268369 m!284557))

(push 1)

(assert (not b!268369))

