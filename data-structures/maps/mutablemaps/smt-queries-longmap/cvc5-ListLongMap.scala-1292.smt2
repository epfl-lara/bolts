; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26320 () Bool)

(assert start!26320)

(declare-fun b!272560 () Bool)

(declare-fun e!174891 () Bool)

(assert (=> b!272560 (= e!174891 (not true))))

(declare-datatypes ((array!13406 0))(
  ( (array!13407 (arr!6352 (Array (_ BitVec 32) (_ BitVec 64))) (size!6704 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13406)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4181 0))(
  ( (Nil!4178) (Cons!4177 (h!4844 (_ BitVec 64)) (t!9271 List!4181)) )
))
(declare-fun arrayNoDuplicates!0 (array!13406 (_ BitVec 32) List!4181) Bool)

(assert (=> b!272560 (arrayNoDuplicates!0 (array!13407 (store (arr!6352 a!3325) i!1267 k!2581) (size!6704 a!3325)) #b00000000000000000000000000000000 Nil!4178)))

(declare-datatypes ((Unit!8508 0))(
  ( (Unit!8509) )
))
(declare-fun lt!136060 () Unit!8508)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13406 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4181) Unit!8508)

(assert (=> b!272560 (= lt!136060 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4178))))

(declare-fun b!272561 () Bool)

(declare-fun res!136589 () Bool)

(assert (=> b!272561 (=> (not res!136589) (not e!174891))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272561 (= res!136589 (not (= startIndex!26 i!1267)))))

(declare-fun b!272562 () Bool)

(declare-fun res!136593 () Bool)

(assert (=> b!272562 (=> (not res!136593) (not e!174891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272562 (= res!136593 (validKeyInArray!0 (select (arr!6352 a!3325) startIndex!26)))))

(declare-fun b!272563 () Bool)

(declare-fun res!136595 () Bool)

(declare-fun e!174890 () Bool)

(assert (=> b!272563 (=> (not res!136595) (not e!174890))))

(assert (=> b!272563 (= res!136595 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4178))))

(declare-fun b!272564 () Bool)

(assert (=> b!272564 (= e!174890 e!174891)))

(declare-fun res!136594 () Bool)

(assert (=> b!272564 (=> (not res!136594) (not e!174891))))

(declare-datatypes ((SeekEntryResult!1521 0))(
  ( (MissingZero!1521 (index!8254 (_ BitVec 32))) (Found!1521 (index!8255 (_ BitVec 32))) (Intermediate!1521 (undefined!2333 Bool) (index!8256 (_ BitVec 32)) (x!26542 (_ BitVec 32))) (Undefined!1521) (MissingVacant!1521 (index!8257 (_ BitVec 32))) )
))
(declare-fun lt!136061 () SeekEntryResult!1521)

(assert (=> b!272564 (= res!136594 (or (= lt!136061 (MissingZero!1521 i!1267)) (= lt!136061 (MissingVacant!1521 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13406 (_ BitVec 32)) SeekEntryResult!1521)

(assert (=> b!272564 (= lt!136061 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272565 () Bool)

(declare-fun res!136591 () Bool)

(assert (=> b!272565 (=> (not res!136591) (not e!174890))))

(assert (=> b!272565 (= res!136591 (and (= (size!6704 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6704 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6704 a!3325))))))

(declare-fun res!136590 () Bool)

(assert (=> start!26320 (=> (not res!136590) (not e!174890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26320 (= res!136590 (validMask!0 mask!3868))))

(assert (=> start!26320 e!174890))

(declare-fun array_inv!4306 (array!13406) Bool)

(assert (=> start!26320 (array_inv!4306 a!3325)))

(assert (=> start!26320 true))

(declare-fun b!272566 () Bool)

(declare-fun res!136588 () Bool)

(assert (=> b!272566 (=> (not res!136588) (not e!174890))))

(declare-fun arrayContainsKey!0 (array!13406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272566 (= res!136588 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272567 () Bool)

(declare-fun res!136592 () Bool)

(assert (=> b!272567 (=> (not res!136592) (not e!174891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13406 (_ BitVec 32)) Bool)

(assert (=> b!272567 (= res!136592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272568 () Bool)

(declare-fun res!136596 () Bool)

(assert (=> b!272568 (=> (not res!136596) (not e!174890))))

(assert (=> b!272568 (= res!136596 (validKeyInArray!0 k!2581))))

(assert (= (and start!26320 res!136590) b!272565))

(assert (= (and b!272565 res!136591) b!272568))

(assert (= (and b!272568 res!136596) b!272563))

(assert (= (and b!272563 res!136595) b!272566))

(assert (= (and b!272566 res!136588) b!272564))

(assert (= (and b!272564 res!136594) b!272567))

(assert (= (and b!272567 res!136592) b!272561))

(assert (= (and b!272561 res!136589) b!272562))

(assert (= (and b!272562 res!136593) b!272560))

(declare-fun m!287683 () Bool)

(assert (=> b!272568 m!287683))

(declare-fun m!287685 () Bool)

(assert (=> b!272563 m!287685))

(declare-fun m!287687 () Bool)

(assert (=> b!272562 m!287687))

(assert (=> b!272562 m!287687))

(declare-fun m!287689 () Bool)

(assert (=> b!272562 m!287689))

(declare-fun m!287691 () Bool)

(assert (=> start!26320 m!287691))

(declare-fun m!287693 () Bool)

(assert (=> start!26320 m!287693))

(declare-fun m!287695 () Bool)

(assert (=> b!272567 m!287695))

(declare-fun m!287697 () Bool)

(assert (=> b!272560 m!287697))

(declare-fun m!287699 () Bool)

(assert (=> b!272560 m!287699))

(declare-fun m!287701 () Bool)

(assert (=> b!272560 m!287701))

(declare-fun m!287703 () Bool)

(assert (=> b!272564 m!287703))

(declare-fun m!287705 () Bool)

(assert (=> b!272566 m!287705))

(push 1)

