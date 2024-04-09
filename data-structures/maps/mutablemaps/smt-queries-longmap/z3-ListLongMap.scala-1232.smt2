; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25962 () Bool)

(assert start!25962)

(declare-fun b!267838 () Bool)

(declare-fun res!132156 () Bool)

(declare-fun e!173122 () Bool)

(assert (=> b!267838 (=> (not res!132156) (not e!173122))))

(declare-datatypes ((array!13048 0))(
  ( (array!13049 (arr!6173 (Array (_ BitVec 32) (_ BitVec 64))) (size!6525 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13048)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!267838 (= res!132156 (and (= (size!6525 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6525 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6525 a!3325))))))

(declare-fun b!267839 () Bool)

(declare-fun res!132158 () Bool)

(assert (=> b!267839 (=> (not res!132158) (not e!173122))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1342 0))(
  ( (MissingZero!1342 (index!7538 (_ BitVec 32))) (Found!1342 (index!7539 (_ BitVec 32))) (Intermediate!1342 (undefined!2154 Bool) (index!7540 (_ BitVec 32)) (x!25883 (_ BitVec 32))) (Undefined!1342) (MissingVacant!1342 (index!7541 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13048 (_ BitVec 32)) SeekEntryResult!1342)

(assert (=> b!267839 (= res!132158 (not (= (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868) (MissingZero!1342 i!1267))))))

(declare-fun b!267840 () Bool)

(declare-fun res!132155 () Bool)

(assert (=> b!267840 (=> (not res!132155) (not e!173122))))

(declare-fun arrayContainsKey!0 (array!13048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267840 (= res!132155 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267841 () Bool)

(declare-fun res!132159 () Bool)

(assert (=> b!267841 (=> (not res!132159) (not e!173122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267841 (= res!132159 (validKeyInArray!0 k0!2581))))

(declare-fun b!267842 () Bool)

(declare-fun res!132154 () Bool)

(assert (=> b!267842 (=> (not res!132154) (not e!173122))))

(declare-datatypes ((List!4002 0))(
  ( (Nil!3999) (Cons!3998 (h!4665 (_ BitVec 64)) (t!9092 List!4002)) )
))
(declare-fun arrayNoDuplicates!0 (array!13048 (_ BitVec 32) List!4002) Bool)

(assert (=> b!267842 (= res!132154 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3999))))

(declare-fun b!267843 () Bool)

(assert (=> b!267843 (= e!173122 (bvslt mask!3868 #b00000000000000000000000000000000))))

(declare-fun res!132157 () Bool)

(assert (=> start!25962 (=> (not res!132157) (not e!173122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25962 (= res!132157 (validMask!0 mask!3868))))

(assert (=> start!25962 e!173122))

(declare-fun array_inv!4127 (array!13048) Bool)

(assert (=> start!25962 (array_inv!4127 a!3325)))

(assert (=> start!25962 true))

(assert (= (and start!25962 res!132157) b!267838))

(assert (= (and b!267838 res!132156) b!267841))

(assert (= (and b!267841 res!132159) b!267842))

(assert (= (and b!267842 res!132154) b!267840))

(assert (= (and b!267840 res!132155) b!267839))

(assert (= (and b!267839 res!132158) b!267843))

(declare-fun m!284137 () Bool)

(assert (=> b!267841 m!284137))

(declare-fun m!284139 () Bool)

(assert (=> start!25962 m!284139))

(declare-fun m!284141 () Bool)

(assert (=> start!25962 m!284141))

(declare-fun m!284143 () Bool)

(assert (=> b!267842 m!284143))

(declare-fun m!284145 () Bool)

(assert (=> b!267840 m!284145))

(declare-fun m!284147 () Bool)

(assert (=> b!267839 m!284147))

(check-sat (not b!267840) (not start!25962) (not b!267842) (not b!267839) (not b!267841))
(check-sat)
