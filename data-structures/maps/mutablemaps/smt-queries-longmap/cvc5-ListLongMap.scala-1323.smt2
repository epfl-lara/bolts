; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26506 () Bool)

(assert start!26506)

(declare-fun res!139050 () Bool)

(declare-fun e!175989 () Bool)

(assert (=> start!26506 (=> (not res!139050) (not e!175989))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26506 (= res!139050 (validMask!0 mask!3868))))

(assert (=> start!26506 e!175989))

(declare-datatypes ((array!13592 0))(
  ( (array!13593 (arr!6445 (Array (_ BitVec 32) (_ BitVec 64))) (size!6797 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13592)

(declare-fun array_inv!4399 (array!13592) Bool)

(assert (=> start!26506 (array_inv!4399 a!3325)))

(assert (=> start!26506 true))

(declare-fun b!275020 () Bool)

(declare-fun res!139053 () Bool)

(assert (=> b!275020 (=> (not res!139053) (not e!175989))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275020 (= res!139053 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275021 () Bool)

(declare-fun res!139049 () Bool)

(assert (=> b!275021 (=> (not res!139049) (not e!175989))))

(declare-datatypes ((List!4274 0))(
  ( (Nil!4271) (Cons!4270 (h!4937 (_ BitVec 64)) (t!9364 List!4274)) )
))
(declare-fun arrayNoDuplicates!0 (array!13592 (_ BitVec 32) List!4274) Bool)

(assert (=> b!275021 (= res!139049 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4271))))

(declare-fun b!275022 () Bool)

(declare-fun e!175990 () Bool)

(assert (=> b!275022 (= e!175990 false)))

(declare-fun lt!137285 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13592 (_ BitVec 32)) Bool)

(assert (=> b!275022 (= lt!137285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275023 () Bool)

(declare-fun res!139052 () Bool)

(assert (=> b!275023 (=> (not res!139052) (not e!175989))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275023 (= res!139052 (and (= (size!6797 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6797 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6797 a!3325))))))

(declare-fun b!275024 () Bool)

(assert (=> b!275024 (= e!175989 e!175990)))

(declare-fun res!139051 () Bool)

(assert (=> b!275024 (=> (not res!139051) (not e!175990))))

(declare-datatypes ((SeekEntryResult!1614 0))(
  ( (MissingZero!1614 (index!8626 (_ BitVec 32))) (Found!1614 (index!8627 (_ BitVec 32))) (Intermediate!1614 (undefined!2426 Bool) (index!8628 (_ BitVec 32)) (x!26883 (_ BitVec 32))) (Undefined!1614) (MissingVacant!1614 (index!8629 (_ BitVec 32))) )
))
(declare-fun lt!137284 () SeekEntryResult!1614)

(assert (=> b!275024 (= res!139051 (or (= lt!137284 (MissingZero!1614 i!1267)) (= lt!137284 (MissingVacant!1614 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13592 (_ BitVec 32)) SeekEntryResult!1614)

(assert (=> b!275024 (= lt!137284 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275025 () Bool)

(declare-fun res!139048 () Bool)

(assert (=> b!275025 (=> (not res!139048) (not e!175989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275025 (= res!139048 (validKeyInArray!0 k!2581))))

(assert (= (and start!26506 res!139050) b!275023))

(assert (= (and b!275023 res!139052) b!275025))

(assert (= (and b!275025 res!139048) b!275021))

(assert (= (and b!275021 res!139049) b!275020))

(assert (= (and b!275020 res!139053) b!275024))

(assert (= (and b!275024 res!139051) b!275022))

(declare-fun m!290713 () Bool)

(assert (=> b!275020 m!290713))

(declare-fun m!290715 () Bool)

(assert (=> b!275024 m!290715))

(declare-fun m!290717 () Bool)

(assert (=> b!275022 m!290717))

(declare-fun m!290719 () Bool)

(assert (=> b!275021 m!290719))

(declare-fun m!290721 () Bool)

(assert (=> b!275025 m!290721))

(declare-fun m!290723 () Bool)

(assert (=> start!26506 m!290723))

(declare-fun m!290725 () Bool)

(assert (=> start!26506 m!290725))

(push 1)

(assert (not b!275022))

(assert (not b!275020))

(assert (not start!26506))

(assert (not b!275024))

