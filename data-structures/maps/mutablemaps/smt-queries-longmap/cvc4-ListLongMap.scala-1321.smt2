; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26498 () Bool)

(assert start!26498)

(declare-fun b!274948 () Bool)

(declare-fun res!138976 () Bool)

(declare-fun e!175954 () Bool)

(assert (=> b!274948 (=> (not res!138976) (not e!175954))))

(declare-datatypes ((array!13584 0))(
  ( (array!13585 (arr!6441 (Array (_ BitVec 32) (_ BitVec 64))) (size!6793 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13584)

(declare-datatypes ((List!4270 0))(
  ( (Nil!4267) (Cons!4266 (h!4933 (_ BitVec 64)) (t!9360 List!4270)) )
))
(declare-fun arrayNoDuplicates!0 (array!13584 (_ BitVec 32) List!4270) Bool)

(assert (=> b!274948 (= res!138976 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4267))))

(declare-fun b!274949 () Bool)

(declare-fun res!138981 () Bool)

(assert (=> b!274949 (=> (not res!138981) (not e!175954))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274949 (= res!138981 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274950 () Bool)

(declare-fun res!138977 () Bool)

(assert (=> b!274950 (=> (not res!138977) (not e!175954))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!274950 (= res!138977 (and (= (size!6793 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6793 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6793 a!3325))))))

(declare-fun b!274951 () Bool)

(declare-fun e!175952 () Bool)

(assert (=> b!274951 (= e!175954 e!175952)))

(declare-fun res!138979 () Bool)

(assert (=> b!274951 (=> (not res!138979) (not e!175952))))

(declare-datatypes ((SeekEntryResult!1610 0))(
  ( (MissingZero!1610 (index!8610 (_ BitVec 32))) (Found!1610 (index!8611 (_ BitVec 32))) (Intermediate!1610 (undefined!2422 Bool) (index!8612 (_ BitVec 32)) (x!26863 (_ BitVec 32))) (Undefined!1610) (MissingVacant!1610 (index!8613 (_ BitVec 32))) )
))
(declare-fun lt!137260 () SeekEntryResult!1610)

(assert (=> b!274951 (= res!138979 (or (= lt!137260 (MissingZero!1610 i!1267)) (= lt!137260 (MissingVacant!1610 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13584 (_ BitVec 32)) SeekEntryResult!1610)

(assert (=> b!274951 (= lt!137260 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274952 () Bool)

(declare-fun res!138980 () Bool)

(assert (=> b!274952 (=> (not res!138980) (not e!175954))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274952 (= res!138980 (validKeyInArray!0 k!2581))))

(declare-fun b!274953 () Bool)

(assert (=> b!274953 (= e!175952 false)))

(declare-fun lt!137261 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13584 (_ BitVec 32)) Bool)

(assert (=> b!274953 (= lt!137261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!138978 () Bool)

(assert (=> start!26498 (=> (not res!138978) (not e!175954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26498 (= res!138978 (validMask!0 mask!3868))))

(assert (=> start!26498 e!175954))

(declare-fun array_inv!4395 (array!13584) Bool)

(assert (=> start!26498 (array_inv!4395 a!3325)))

(assert (=> start!26498 true))

(assert (= (and start!26498 res!138978) b!274950))

(assert (= (and b!274950 res!138977) b!274952))

(assert (= (and b!274952 res!138980) b!274948))

(assert (= (and b!274948 res!138976) b!274949))

(assert (= (and b!274949 res!138981) b!274951))

(assert (= (and b!274951 res!138979) b!274953))

(declare-fun m!290657 () Bool)

(assert (=> b!274952 m!290657))

(declare-fun m!290659 () Bool)

(assert (=> b!274953 m!290659))

(declare-fun m!290661 () Bool)

(assert (=> b!274949 m!290661))

(declare-fun m!290663 () Bool)

(assert (=> b!274951 m!290663))

(declare-fun m!290665 () Bool)

(assert (=> start!26498 m!290665))

(declare-fun m!290667 () Bool)

(assert (=> start!26498 m!290667))

(declare-fun m!290669 () Bool)

(assert (=> b!274948 m!290669))

(push 1)

(assert (not b!274949))

(assert (not b!274948))

(assert (not start!26498))

(assert (not b!274951))

(assert (not b!274952))

(assert (not b!274953))

(check-sat)

