; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26486 () Bool)

(assert start!26486)

(declare-fun b!274837 () Bool)

(declare-fun res!138865 () Bool)

(declare-fun e!175898 () Bool)

(assert (=> b!274837 (=> (not res!138865) (not e!175898))))

(declare-datatypes ((array!13572 0))(
  ( (array!13573 (arr!6435 (Array (_ BitVec 32) (_ BitVec 64))) (size!6787 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13572)

(declare-datatypes ((List!4264 0))(
  ( (Nil!4261) (Cons!4260 (h!4927 (_ BitVec 64)) (t!9354 List!4264)) )
))
(declare-fun arrayNoDuplicates!0 (array!13572 (_ BitVec 32) List!4264) Bool)

(assert (=> b!274837 (= res!138865 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4261))))

(declare-fun b!274838 () Bool)

(declare-fun e!175900 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274838 (= e!175900 (not (or (bvslt startIndex!26 (bvsub (size!6787 a!3325) #b00000000000000000000000000000001)) (bvsle startIndex!26 (size!6787 a!3325)))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13572 (_ BitVec 32)) Bool)

(assert (=> b!274838 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8674 0))(
  ( (Unit!8675) )
))
(declare-fun lt!137223 () Unit!8674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8674)

(assert (=> b!274838 (= lt!137223 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!137225 () array!13572)

(declare-datatypes ((SeekEntryResult!1604 0))(
  ( (MissingZero!1604 (index!8586 (_ BitVec 32))) (Found!1604 (index!8587 (_ BitVec 32))) (Intermediate!1604 (undefined!2416 Bool) (index!8588 (_ BitVec 32)) (x!26841 (_ BitVec 32))) (Undefined!1604) (MissingVacant!1604 (index!8589 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13572 (_ BitVec 32)) SeekEntryResult!1604)

(assert (=> b!274838 (= (seekEntryOrOpen!0 (select (arr!6435 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6435 a!3325) i!1267 k!2581) startIndex!26) lt!137225 mask!3868))))

(declare-fun lt!137222 () Unit!8674)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13572 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8674)

(assert (=> b!274838 (= lt!137222 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!274838 (arrayNoDuplicates!0 lt!137225 #b00000000000000000000000000000000 Nil!4261)))

(declare-fun lt!137224 () Unit!8674)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13572 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4264) Unit!8674)

(assert (=> b!274838 (= lt!137224 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4261))))

(declare-fun b!274839 () Bool)

(declare-fun res!138870 () Bool)

(declare-fun e!175899 () Bool)

(assert (=> b!274839 (=> (not res!138870) (not e!175899))))

(assert (=> b!274839 (= res!138870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274840 () Bool)

(declare-fun res!138871 () Bool)

(assert (=> b!274840 (=> (not res!138871) (not e!175900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274840 (= res!138871 (validKeyInArray!0 (select (arr!6435 a!3325) startIndex!26)))))

(declare-fun b!274842 () Bool)

(declare-fun res!138867 () Bool)

(assert (=> b!274842 (=> (not res!138867) (not e!175898))))

(assert (=> b!274842 (= res!138867 (validKeyInArray!0 k!2581))))

(declare-fun b!274843 () Bool)

(assert (=> b!274843 (= e!175899 e!175900)))

(declare-fun res!138872 () Bool)

(assert (=> b!274843 (=> (not res!138872) (not e!175900))))

(assert (=> b!274843 (= res!138872 (not (= startIndex!26 i!1267)))))

(assert (=> b!274843 (= lt!137225 (array!13573 (store (arr!6435 a!3325) i!1267 k!2581) (size!6787 a!3325)))))

(declare-fun b!274844 () Bool)

(assert (=> b!274844 (= e!175898 e!175899)))

(declare-fun res!138869 () Bool)

(assert (=> b!274844 (=> (not res!138869) (not e!175899))))

(declare-fun lt!137221 () SeekEntryResult!1604)

(assert (=> b!274844 (= res!138869 (or (= lt!137221 (MissingZero!1604 i!1267)) (= lt!137221 (MissingVacant!1604 i!1267))))))

(assert (=> b!274844 (= lt!137221 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274845 () Bool)

(declare-fun res!138868 () Bool)

(assert (=> b!274845 (=> (not res!138868) (not e!175898))))

(declare-fun arrayContainsKey!0 (array!13572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274845 (= res!138868 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!138866 () Bool)

(assert (=> start!26486 (=> (not res!138866) (not e!175898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26486 (= res!138866 (validMask!0 mask!3868))))

(assert (=> start!26486 e!175898))

(declare-fun array_inv!4389 (array!13572) Bool)

(assert (=> start!26486 (array_inv!4389 a!3325)))

(assert (=> start!26486 true))

(declare-fun b!274841 () Bool)

(declare-fun res!138873 () Bool)

(assert (=> b!274841 (=> (not res!138873) (not e!175898))))

(assert (=> b!274841 (= res!138873 (and (= (size!6787 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6787 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6787 a!3325))))))

(assert (= (and start!26486 res!138866) b!274841))

(assert (= (and b!274841 res!138873) b!274842))

(assert (= (and b!274842 res!138867) b!274837))

(assert (= (and b!274837 res!138865) b!274845))

(assert (= (and b!274845 res!138868) b!274844))

(assert (= (and b!274844 res!138869) b!274839))

(assert (= (and b!274839 res!138870) b!274843))

(assert (= (and b!274843 res!138872) b!274840))

(assert (= (and b!274840 res!138871) b!274838))

(declare-fun m!290551 () Bool)

(assert (=> b!274842 m!290551))

(declare-fun m!290553 () Bool)

(assert (=> b!274843 m!290553))

(declare-fun m!290555 () Bool)

(assert (=> b!274837 m!290555))

(declare-fun m!290557 () Bool)

(assert (=> b!274844 m!290557))

(declare-fun m!290559 () Bool)

(assert (=> start!26486 m!290559))

(declare-fun m!290561 () Bool)

(assert (=> start!26486 m!290561))

(declare-fun m!290563 () Bool)

(assert (=> b!274845 m!290563))

(declare-fun m!290565 () Bool)

(assert (=> b!274838 m!290565))

(declare-fun m!290567 () Bool)

(assert (=> b!274838 m!290567))

(declare-fun m!290569 () Bool)

(assert (=> b!274838 m!290569))

(assert (=> b!274838 m!290553))

(declare-fun m!290571 () Bool)

(assert (=> b!274838 m!290571))

(declare-fun m!290573 () Bool)

(assert (=> b!274838 m!290573))

(declare-fun m!290575 () Bool)

(assert (=> b!274838 m!290575))

(declare-fun m!290577 () Bool)

(assert (=> b!274838 m!290577))

(assert (=> b!274838 m!290573))

(declare-fun m!290579 () Bool)

(assert (=> b!274838 m!290579))

(assert (=> b!274838 m!290567))

(declare-fun m!290581 () Bool)

(assert (=> b!274838 m!290581))

(declare-fun m!290583 () Bool)

(assert (=> b!274839 m!290583))

(assert (=> b!274840 m!290573))

(assert (=> b!274840 m!290573))

(declare-fun m!290585 () Bool)

(assert (=> b!274840 m!290585))

(push 1)

(assert (not b!274844))

(assert (not b!274842))

(assert (not b!274838))

(assert (not start!26486))

(assert (not b!274845))

(assert (not b!274837))

(assert (not b!274839))

(assert (not b!274840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

