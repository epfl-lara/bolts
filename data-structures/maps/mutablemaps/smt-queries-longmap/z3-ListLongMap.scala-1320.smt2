; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26490 () Bool)

(assert start!26490)

(declare-fun b!274876 () Bool)

(declare-fun res!138905 () Bool)

(declare-fun e!175917 () Bool)

(assert (=> b!274876 (=> (not res!138905) (not e!175917))))

(declare-datatypes ((array!13576 0))(
  ( (array!13577 (arr!6437 (Array (_ BitVec 32) (_ BitVec 64))) (size!6789 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13576)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!274876 (= res!138905 (and (= (size!6789 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6789 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6789 a!3325))))))

(declare-fun b!274877 () Bool)

(declare-fun res!138909 () Bool)

(assert (=> b!274877 (=> (not res!138909) (not e!175917))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274877 (= res!138909 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!138907 () Bool)

(assert (=> start!26490 (=> (not res!138907) (not e!175917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26490 (= res!138907 (validMask!0 mask!3868))))

(assert (=> start!26490 e!175917))

(declare-fun array_inv!4391 (array!13576) Bool)

(assert (=> start!26490 (array_inv!4391 a!3325)))

(assert (=> start!26490 true))

(declare-fun b!274878 () Bool)

(declare-fun res!138908 () Bool)

(assert (=> b!274878 (=> (not res!138908) (not e!175917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274878 (= res!138908 (validKeyInArray!0 k0!2581))))

(declare-fun b!274879 () Bool)

(declare-fun e!175916 () Bool)

(assert (=> b!274879 (= e!175917 e!175916)))

(declare-fun res!138904 () Bool)

(assert (=> b!274879 (=> (not res!138904) (not e!175916))))

(declare-datatypes ((SeekEntryResult!1606 0))(
  ( (MissingZero!1606 (index!8594 (_ BitVec 32))) (Found!1606 (index!8595 (_ BitVec 32))) (Intermediate!1606 (undefined!2418 Bool) (index!8596 (_ BitVec 32)) (x!26851 (_ BitVec 32))) (Undefined!1606) (MissingVacant!1606 (index!8597 (_ BitVec 32))) )
))
(declare-fun lt!137236 () SeekEntryResult!1606)

(assert (=> b!274879 (= res!138904 (or (= lt!137236 (MissingZero!1606 i!1267)) (= lt!137236 (MissingVacant!1606 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13576 (_ BitVec 32)) SeekEntryResult!1606)

(assert (=> b!274879 (= lt!137236 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!274880 () Bool)

(assert (=> b!274880 (= e!175916 false)))

(declare-fun lt!137237 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13576 (_ BitVec 32)) Bool)

(assert (=> b!274880 (= lt!137237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274881 () Bool)

(declare-fun res!138906 () Bool)

(assert (=> b!274881 (=> (not res!138906) (not e!175917))))

(declare-datatypes ((List!4266 0))(
  ( (Nil!4263) (Cons!4262 (h!4929 (_ BitVec 64)) (t!9356 List!4266)) )
))
(declare-fun arrayNoDuplicates!0 (array!13576 (_ BitVec 32) List!4266) Bool)

(assert (=> b!274881 (= res!138906 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4263))))

(assert (= (and start!26490 res!138907) b!274876))

(assert (= (and b!274876 res!138905) b!274878))

(assert (= (and b!274878 res!138908) b!274881))

(assert (= (and b!274881 res!138906) b!274877))

(assert (= (and b!274877 res!138909) b!274879))

(assert (= (and b!274879 res!138904) b!274880))

(declare-fun m!290601 () Bool)

(assert (=> start!26490 m!290601))

(declare-fun m!290603 () Bool)

(assert (=> start!26490 m!290603))

(declare-fun m!290605 () Bool)

(assert (=> b!274878 m!290605))

(declare-fun m!290607 () Bool)

(assert (=> b!274879 m!290607))

(declare-fun m!290609 () Bool)

(assert (=> b!274880 m!290609))

(declare-fun m!290611 () Bool)

(assert (=> b!274877 m!290611))

(declare-fun m!290613 () Bool)

(assert (=> b!274881 m!290613))

(check-sat (not b!274879) (not b!274878) (not b!274877) (not b!274881) (not start!26490) (not b!274880))
(check-sat)
