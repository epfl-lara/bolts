; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26462 () Bool)

(assert start!26462)

(declare-fun b!274512 () Bool)

(declare-fun res!138542 () Bool)

(declare-fun e!175756 () Bool)

(assert (=> b!274512 (=> (not res!138542) (not e!175756))))

(declare-datatypes ((array!13548 0))(
  ( (array!13549 (arr!6423 (Array (_ BitVec 32) (_ BitVec 64))) (size!6775 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13548)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!274512 (= res!138542 (and (= (size!6775 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6775 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6775 a!3325))))))

(declare-fun b!274513 () Bool)

(declare-fun e!175752 () Bool)

(declare-fun e!175753 () Bool)

(assert (=> b!274513 (= e!175752 e!175753)))

(declare-fun res!138548 () Bool)

(assert (=> b!274513 (=> (not res!138548) (not e!175753))))

(assert (=> b!274513 (= res!138548 (not (= startIndex!26 i!1267)))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!137041 () array!13548)

(assert (=> b!274513 (= lt!137041 (array!13549 (store (arr!6423 a!3325) i!1267 k!2581) (size!6775 a!3325)))))

(declare-fun res!138544 () Bool)

(assert (=> start!26462 (=> (not res!138544) (not e!175756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26462 (= res!138544 (validMask!0 mask!3868))))

(assert (=> start!26462 e!175756))

(declare-fun array_inv!4377 (array!13548) Bool)

(assert (=> start!26462 (array_inv!4377 a!3325)))

(assert (=> start!26462 true))

(declare-fun b!274514 () Bool)

(declare-fun res!138549 () Bool)

(assert (=> b!274514 (=> (not res!138549) (not e!175756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274514 (= res!138549 (validKeyInArray!0 k!2581))))

(declare-fun b!274515 () Bool)

(declare-fun e!175754 () Bool)

(assert (=> b!274515 (= e!175753 (not e!175754))))

(declare-fun res!138546 () Bool)

(assert (=> b!274515 (=> res!138546 e!175754)))

(assert (=> b!274515 (= res!138546 (or (bvsge startIndex!26 (bvsub (size!6775 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13548 (_ BitVec 32)) Bool)

(assert (=> b!274515 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8650 0))(
  ( (Unit!8651) )
))
(declare-fun lt!137042 () Unit!8650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8650)

(assert (=> b!274515 (= lt!137042 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1592 0))(
  ( (MissingZero!1592 (index!8538 (_ BitVec 32))) (Found!1592 (index!8539 (_ BitVec 32))) (Intermediate!1592 (undefined!2404 Bool) (index!8540 (_ BitVec 32)) (x!26797 (_ BitVec 32))) (Undefined!1592) (MissingVacant!1592 (index!8541 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13548 (_ BitVec 32)) SeekEntryResult!1592)

(assert (=> b!274515 (= (seekEntryOrOpen!0 (select (arr!6423 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6423 a!3325) i!1267 k!2581) startIndex!26) lt!137041 mask!3868))))

(declare-fun lt!137043 () Unit!8650)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13548 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8650)

(assert (=> b!274515 (= lt!137043 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4252 0))(
  ( (Nil!4249) (Cons!4248 (h!4915 (_ BitVec 64)) (t!9342 List!4252)) )
))
(declare-fun arrayNoDuplicates!0 (array!13548 (_ BitVec 32) List!4252) Bool)

(assert (=> b!274515 (arrayNoDuplicates!0 lt!137041 #b00000000000000000000000000000000 Nil!4249)))

(declare-fun lt!137040 () Unit!8650)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13548 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4252) Unit!8650)

(assert (=> b!274515 (= lt!137040 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4249))))

(declare-fun b!274516 () Bool)

(assert (=> b!274516 (= e!175754 (bvsle startIndex!26 (size!6775 a!3325)))))

(assert (=> b!274516 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!137041 mask!3868)))

(declare-fun lt!137044 () Unit!8650)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13548 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8650)

(assert (=> b!274516 (= lt!137044 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!274517 () Bool)

(declare-fun res!138545 () Bool)

(assert (=> b!274517 (=> (not res!138545) (not e!175753))))

(assert (=> b!274517 (= res!138545 (validKeyInArray!0 (select (arr!6423 a!3325) startIndex!26)))))

(declare-fun b!274518 () Bool)

(declare-fun res!138540 () Bool)

(assert (=> b!274518 (=> (not res!138540) (not e!175756))))

(declare-fun arrayContainsKey!0 (array!13548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274518 (= res!138540 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274519 () Bool)

(declare-fun res!138541 () Bool)

(assert (=> b!274519 (=> (not res!138541) (not e!175752))))

(assert (=> b!274519 (= res!138541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274520 () Bool)

(declare-fun res!138543 () Bool)

(assert (=> b!274520 (=> (not res!138543) (not e!175756))))

(assert (=> b!274520 (= res!138543 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4249))))

(declare-fun b!274521 () Bool)

(assert (=> b!274521 (= e!175756 e!175752)))

(declare-fun res!138547 () Bool)

(assert (=> b!274521 (=> (not res!138547) (not e!175752))))

(declare-fun lt!137045 () SeekEntryResult!1592)

(assert (=> b!274521 (= res!138547 (or (= lt!137045 (MissingZero!1592 i!1267)) (= lt!137045 (MissingVacant!1592 i!1267))))))

(assert (=> b!274521 (= lt!137045 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26462 res!138544) b!274512))

(assert (= (and b!274512 res!138542) b!274514))

(assert (= (and b!274514 res!138549) b!274520))

(assert (= (and b!274520 res!138543) b!274518))

(assert (= (and b!274518 res!138540) b!274521))

(assert (= (and b!274521 res!138547) b!274519))

(assert (= (and b!274519 res!138541) b!274513))

(assert (= (and b!274513 res!138548) b!274517))

(assert (= (and b!274517 res!138545) b!274515))

(assert (= (and b!274515 (not res!138546)) b!274516))

(declare-fun m!290115 () Bool)

(assert (=> b!274515 m!290115))

(declare-fun m!290117 () Bool)

(assert (=> b!274515 m!290117))

(declare-fun m!290119 () Bool)

(assert (=> b!274515 m!290119))

(declare-fun m!290121 () Bool)

(assert (=> b!274515 m!290121))

(declare-fun m!290123 () Bool)

(assert (=> b!274515 m!290123))

(declare-fun m!290125 () Bool)

(assert (=> b!274515 m!290125))

(declare-fun m!290127 () Bool)

(assert (=> b!274515 m!290127))

(declare-fun m!290129 () Bool)

(assert (=> b!274515 m!290129))

(assert (=> b!274515 m!290125))

(declare-fun m!290131 () Bool)

(assert (=> b!274515 m!290131))

(assert (=> b!274515 m!290117))

(declare-fun m!290133 () Bool)

(assert (=> b!274515 m!290133))

(assert (=> b!274513 m!290121))

(declare-fun m!290135 () Bool)

(assert (=> b!274520 m!290135))

(declare-fun m!290137 () Bool)

(assert (=> b!274514 m!290137))

(assert (=> b!274517 m!290125))

(assert (=> b!274517 m!290125))

(declare-fun m!290139 () Bool)

(assert (=> b!274517 m!290139))

(declare-fun m!290141 () Bool)

(assert (=> b!274518 m!290141))

(declare-fun m!290143 () Bool)

(assert (=> b!274521 m!290143))

(declare-fun m!290145 () Bool)

(assert (=> b!274519 m!290145))

(declare-fun m!290147 () Bool)

(assert (=> b!274516 m!290147))

(declare-fun m!290149 () Bool)

(assert (=> b!274516 m!290149))

(declare-fun m!290151 () Bool)

(assert (=> start!26462 m!290151))

(declare-fun m!290153 () Bool)

(assert (=> start!26462 m!290153))

(push 1)

(assert (not b!274518))

(assert (not b!274521))

(assert (not b!274517))

(assert (not start!26462))

(assert (not b!274520))

(assert (not b!274516))

(assert (not b!274519))

(assert (not b!274514))

(assert (not b!274515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

