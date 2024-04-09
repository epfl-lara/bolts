; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26200 () Bool)

(assert start!26200)

(declare-fun b!270588 () Bool)

(declare-fun e!174350 () Bool)

(declare-fun e!174352 () Bool)

(assert (=> b!270588 (= e!174350 e!174352)))

(declare-fun res!134619 () Bool)

(assert (=> b!270588 (=> (not res!134619) (not e!174352))))

(declare-datatypes ((SeekEntryResult!1461 0))(
  ( (MissingZero!1461 (index!8014 (_ BitVec 32))) (Found!1461 (index!8015 (_ BitVec 32))) (Intermediate!1461 (undefined!2273 Bool) (index!8016 (_ BitVec 32)) (x!26322 (_ BitVec 32))) (Undefined!1461) (MissingVacant!1461 (index!8017 (_ BitVec 32))) )
))
(declare-fun lt!135701 () SeekEntryResult!1461)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270588 (= res!134619 (or (= lt!135701 (MissingZero!1461 i!1267)) (= lt!135701 (MissingVacant!1461 i!1267))))))

(declare-datatypes ((array!13286 0))(
  ( (array!13287 (arr!6292 (Array (_ BitVec 32) (_ BitVec 64))) (size!6644 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13286)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13286 (_ BitVec 32)) SeekEntryResult!1461)

(assert (=> b!270588 (= lt!135701 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270589 () Bool)

(declare-fun res!134623 () Bool)

(assert (=> b!270589 (=> (not res!134623) (not e!174352))))

(assert (=> b!270589 (= res!134623 (and (bvslt (size!6644 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6644 a!3325))))))

(declare-fun b!270590 () Bool)

(declare-fun res!134620 () Bool)

(assert (=> b!270590 (=> (not res!134620) (not e!174352))))

(declare-datatypes ((List!4121 0))(
  ( (Nil!4118) (Cons!4117 (h!4784 (_ BitVec 64)) (t!9211 List!4121)) )
))
(declare-fun contains!1930 (List!4121 (_ BitVec 64)) Bool)

(assert (=> b!270590 (= res!134620 (not (contains!1930 Nil!4118 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270591 () Bool)

(declare-fun res!134628 () Bool)

(assert (=> b!270591 (=> (not res!134628) (not e!174350))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!270591 (= res!134628 (and (= (size!6644 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6644 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6644 a!3325))))))

(declare-fun b!270592 () Bool)

(declare-fun res!134622 () Bool)

(assert (=> b!270592 (=> (not res!134622) (not e!174352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270592 (= res!134622 (validKeyInArray!0 (select (arr!6292 a!3325) startIndex!26)))))

(declare-fun res!134618 () Bool)

(assert (=> start!26200 (=> (not res!134618) (not e!174350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26200 (= res!134618 (validMask!0 mask!3868))))

(assert (=> start!26200 e!174350))

(declare-fun array_inv!4246 (array!13286) Bool)

(assert (=> start!26200 (array_inv!4246 a!3325)))

(assert (=> start!26200 true))

(declare-fun b!270593 () Bool)

(declare-fun res!134626 () Bool)

(assert (=> b!270593 (=> (not res!134626) (not e!174352))))

(declare-fun noDuplicate!119 (List!4121) Bool)

(assert (=> b!270593 (= res!134626 (noDuplicate!119 Nil!4118))))

(declare-fun b!270594 () Bool)

(declare-fun res!134616 () Bool)

(assert (=> b!270594 (=> (not res!134616) (not e!174350))))

(declare-fun arrayNoDuplicates!0 (array!13286 (_ BitVec 32) List!4121) Bool)

(assert (=> b!270594 (= res!134616 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4118))))

(declare-fun b!270595 () Bool)

(declare-fun res!134617 () Bool)

(assert (=> b!270595 (=> (not res!134617) (not e!174352))))

(assert (=> b!270595 (= res!134617 (not (contains!1930 Nil!4118 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270596 () Bool)

(declare-fun res!134621 () Bool)

(assert (=> b!270596 (=> (not res!134621) (not e!174350))))

(assert (=> b!270596 (= res!134621 (validKeyInArray!0 k!2581))))

(declare-fun b!270597 () Bool)

(declare-fun res!134627 () Bool)

(assert (=> b!270597 (=> (not res!134627) (not e!174352))))

(assert (=> b!270597 (= res!134627 (not (= startIndex!26 i!1267)))))

(declare-fun b!270598 () Bool)

(declare-fun res!134624 () Bool)

(assert (=> b!270598 (=> (not res!134624) (not e!174350))))

(declare-fun arrayContainsKey!0 (array!13286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270598 (= res!134624 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270599 () Bool)

(assert (=> b!270599 (= e!174352 false)))

(declare-fun lt!135700 () Bool)

(assert (=> b!270599 (= lt!135700 (contains!1930 Nil!4118 k!2581))))

(declare-fun b!270600 () Bool)

(declare-fun res!134625 () Bool)

(assert (=> b!270600 (=> (not res!134625) (not e!174352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13286 (_ BitVec 32)) Bool)

(assert (=> b!270600 (= res!134625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26200 res!134618) b!270591))

(assert (= (and b!270591 res!134628) b!270596))

(assert (= (and b!270596 res!134621) b!270594))

(assert (= (and b!270594 res!134616) b!270598))

(assert (= (and b!270598 res!134624) b!270588))

(assert (= (and b!270588 res!134619) b!270600))

(assert (= (and b!270600 res!134625) b!270597))

(assert (= (and b!270597 res!134627) b!270592))

(assert (= (and b!270592 res!134622) b!270589))

(assert (= (and b!270589 res!134623) b!270593))

(assert (= (and b!270593 res!134626) b!270590))

(assert (= (and b!270590 res!134620) b!270595))

(assert (= (and b!270595 res!134617) b!270599))

(declare-fun m!286183 () Bool)

(assert (=> b!270594 m!286183))

(declare-fun m!286185 () Bool)

(assert (=> b!270596 m!286185))

(declare-fun m!286187 () Bool)

(assert (=> b!270600 m!286187))

(declare-fun m!286189 () Bool)

(assert (=> b!270595 m!286189))

(declare-fun m!286191 () Bool)

(assert (=> b!270593 m!286191))

(declare-fun m!286193 () Bool)

(assert (=> b!270590 m!286193))

(declare-fun m!286195 () Bool)

(assert (=> b!270588 m!286195))

(declare-fun m!286197 () Bool)

(assert (=> b!270592 m!286197))

(assert (=> b!270592 m!286197))

(declare-fun m!286199 () Bool)

(assert (=> b!270592 m!286199))

(declare-fun m!286201 () Bool)

(assert (=> b!270598 m!286201))

(declare-fun m!286203 () Bool)

(assert (=> start!26200 m!286203))

(declare-fun m!286205 () Bool)

(assert (=> start!26200 m!286205))

(declare-fun m!286207 () Bool)

(assert (=> b!270599 m!286207))

(push 1)

