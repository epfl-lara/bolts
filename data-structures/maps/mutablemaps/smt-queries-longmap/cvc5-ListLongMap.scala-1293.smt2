; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26326 () Bool)

(assert start!26326)

(declare-fun b!272641 () Bool)

(declare-fun res!136675 () Bool)

(declare-fun e!174917 () Bool)

(assert (=> b!272641 (=> (not res!136675) (not e!174917))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272641 (= res!136675 (validKeyInArray!0 k!2581))))

(declare-fun b!272642 () Bool)

(declare-fun e!174918 () Bool)

(assert (=> b!272642 (= e!174918 (not true))))

(declare-datatypes ((array!13412 0))(
  ( (array!13413 (arr!6355 (Array (_ BitVec 32) (_ BitVec 64))) (size!6707 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13412)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((List!4184 0))(
  ( (Nil!4181) (Cons!4180 (h!4847 (_ BitVec 64)) (t!9274 List!4184)) )
))
(declare-fun arrayNoDuplicates!0 (array!13412 (_ BitVec 32) List!4184) Bool)

(assert (=> b!272642 (arrayNoDuplicates!0 (array!13413 (store (arr!6355 a!3325) i!1267 k!2581) (size!6707 a!3325)) #b00000000000000000000000000000000 Nil!4181)))

(declare-datatypes ((Unit!8514 0))(
  ( (Unit!8515) )
))
(declare-fun lt!136079 () Unit!8514)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13412 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4184) Unit!8514)

(assert (=> b!272642 (= lt!136079 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4181))))

(declare-fun b!272643 () Bool)

(assert (=> b!272643 (= e!174917 e!174918)))

(declare-fun res!136674 () Bool)

(assert (=> b!272643 (=> (not res!136674) (not e!174918))))

(declare-datatypes ((SeekEntryResult!1524 0))(
  ( (MissingZero!1524 (index!8266 (_ BitVec 32))) (Found!1524 (index!8267 (_ BitVec 32))) (Intermediate!1524 (undefined!2336 Bool) (index!8268 (_ BitVec 32)) (x!26553 (_ BitVec 32))) (Undefined!1524) (MissingVacant!1524 (index!8269 (_ BitVec 32))) )
))
(declare-fun lt!136078 () SeekEntryResult!1524)

(assert (=> b!272643 (= res!136674 (or (= lt!136078 (MissingZero!1524 i!1267)) (= lt!136078 (MissingVacant!1524 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13412 (_ BitVec 32)) SeekEntryResult!1524)

(assert (=> b!272643 (= lt!136078 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272644 () Bool)

(declare-fun res!136671 () Bool)

(assert (=> b!272644 (=> (not res!136671) (not e!174918))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272644 (= res!136671 (not (= startIndex!26 i!1267)))))

(declare-fun b!272645 () Bool)

(declare-fun res!136669 () Bool)

(assert (=> b!272645 (=> (not res!136669) (not e!174917))))

(assert (=> b!272645 (= res!136669 (and (= (size!6707 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6707 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6707 a!3325))))))

(declare-fun b!272646 () Bool)

(declare-fun res!136677 () Bool)

(assert (=> b!272646 (=> (not res!136677) (not e!174918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13412 (_ BitVec 32)) Bool)

(assert (=> b!272646 (= res!136677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272647 () Bool)

(declare-fun res!136673 () Bool)

(assert (=> b!272647 (=> (not res!136673) (not e!174917))))

(assert (=> b!272647 (= res!136673 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4181))))

(declare-fun res!136676 () Bool)

(assert (=> start!26326 (=> (not res!136676) (not e!174917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26326 (= res!136676 (validMask!0 mask!3868))))

(assert (=> start!26326 e!174917))

(declare-fun array_inv!4309 (array!13412) Bool)

(assert (=> start!26326 (array_inv!4309 a!3325)))

(assert (=> start!26326 true))

(declare-fun b!272648 () Bool)

(declare-fun res!136672 () Bool)

(assert (=> b!272648 (=> (not res!136672) (not e!174917))))

(declare-fun arrayContainsKey!0 (array!13412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272648 (= res!136672 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272649 () Bool)

(declare-fun res!136670 () Bool)

(assert (=> b!272649 (=> (not res!136670) (not e!174918))))

(assert (=> b!272649 (= res!136670 (validKeyInArray!0 (select (arr!6355 a!3325) startIndex!26)))))

(assert (= (and start!26326 res!136676) b!272645))

(assert (= (and b!272645 res!136669) b!272641))

(assert (= (and b!272641 res!136675) b!272647))

(assert (= (and b!272647 res!136673) b!272648))

(assert (= (and b!272648 res!136672) b!272643))

(assert (= (and b!272643 res!136674) b!272646))

(assert (= (and b!272646 res!136677) b!272644))

(assert (= (and b!272644 res!136671) b!272649))

(assert (= (and b!272649 res!136670) b!272642))

(declare-fun m!287755 () Bool)

(assert (=> b!272643 m!287755))

(declare-fun m!287757 () Bool)

(assert (=> b!272648 m!287757))

(declare-fun m!287759 () Bool)

(assert (=> b!272642 m!287759))

(declare-fun m!287761 () Bool)

(assert (=> b!272642 m!287761))

(declare-fun m!287763 () Bool)

(assert (=> b!272642 m!287763))

(declare-fun m!287765 () Bool)

(assert (=> b!272649 m!287765))

(assert (=> b!272649 m!287765))

(declare-fun m!287767 () Bool)

(assert (=> b!272649 m!287767))

(declare-fun m!287769 () Bool)

(assert (=> start!26326 m!287769))

(declare-fun m!287771 () Bool)

(assert (=> start!26326 m!287771))

(declare-fun m!287773 () Bool)

(assert (=> b!272646 m!287773))

(declare-fun m!287775 () Bool)

(assert (=> b!272647 m!287775))

(declare-fun m!287777 () Bool)

(assert (=> b!272641 m!287777))

(push 1)

