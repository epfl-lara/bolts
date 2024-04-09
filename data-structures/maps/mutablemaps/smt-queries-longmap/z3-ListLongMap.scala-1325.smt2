; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26520 () Bool)

(assert start!26520)

(declare-fun res!139176 () Bool)

(declare-fun e!176051 () Bool)

(assert (=> start!26520 (=> (not res!139176) (not e!176051))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26520 (= res!139176 (validMask!0 mask!3868))))

(assert (=> start!26520 e!176051))

(declare-datatypes ((array!13606 0))(
  ( (array!13607 (arr!6452 (Array (_ BitVec 32) (_ BitVec 64))) (size!6804 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13606)

(declare-fun array_inv!4406 (array!13606) Bool)

(assert (=> start!26520 (array_inv!4406 a!3325)))

(assert (=> start!26520 true))

(declare-fun b!275146 () Bool)

(declare-fun res!139177 () Bool)

(assert (=> b!275146 (=> (not res!139177) (not e!176051))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275146 (= res!139177 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275147 () Bool)

(declare-fun res!139179 () Bool)

(assert (=> b!275147 (=> (not res!139179) (not e!176051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275147 (= res!139179 (validKeyInArray!0 k0!2581))))

(declare-fun b!275148 () Bool)

(declare-fun e!176052 () Bool)

(assert (=> b!275148 (= e!176052 false)))

(declare-fun lt!137326 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13606 (_ BitVec 32)) Bool)

(assert (=> b!275148 (= lt!137326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275149 () Bool)

(assert (=> b!275149 (= e!176051 e!176052)))

(declare-fun res!139175 () Bool)

(assert (=> b!275149 (=> (not res!139175) (not e!176052))))

(declare-datatypes ((SeekEntryResult!1621 0))(
  ( (MissingZero!1621 (index!8654 (_ BitVec 32))) (Found!1621 (index!8655 (_ BitVec 32))) (Intermediate!1621 (undefined!2433 Bool) (index!8656 (_ BitVec 32)) (x!26906 (_ BitVec 32))) (Undefined!1621) (MissingVacant!1621 (index!8657 (_ BitVec 32))) )
))
(declare-fun lt!137327 () SeekEntryResult!1621)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275149 (= res!139175 (or (= lt!137327 (MissingZero!1621 i!1267)) (= lt!137327 (MissingVacant!1621 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13606 (_ BitVec 32)) SeekEntryResult!1621)

(assert (=> b!275149 (= lt!137327 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275150 () Bool)

(declare-fun res!139174 () Bool)

(assert (=> b!275150 (=> (not res!139174) (not e!176051))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275150 (= res!139174 (and (= (size!6804 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6804 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6804 a!3325))))))

(declare-fun b!275151 () Bool)

(declare-fun res!139178 () Bool)

(assert (=> b!275151 (=> (not res!139178) (not e!176051))))

(declare-datatypes ((List!4281 0))(
  ( (Nil!4278) (Cons!4277 (h!4944 (_ BitVec 64)) (t!9371 List!4281)) )
))
(declare-fun arrayNoDuplicates!0 (array!13606 (_ BitVec 32) List!4281) Bool)

(assert (=> b!275151 (= res!139178 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4278))))

(assert (= (and start!26520 res!139176) b!275150))

(assert (= (and b!275150 res!139174) b!275147))

(assert (= (and b!275147 res!139179) b!275151))

(assert (= (and b!275151 res!139178) b!275146))

(assert (= (and b!275146 res!139177) b!275149))

(assert (= (and b!275149 res!139175) b!275148))

(declare-fun m!290811 () Bool)

(assert (=> b!275148 m!290811))

(declare-fun m!290813 () Bool)

(assert (=> b!275147 m!290813))

(declare-fun m!290815 () Bool)

(assert (=> b!275146 m!290815))

(declare-fun m!290817 () Bool)

(assert (=> start!26520 m!290817))

(declare-fun m!290819 () Bool)

(assert (=> start!26520 m!290819))

(declare-fun m!290821 () Bool)

(assert (=> b!275151 m!290821))

(declare-fun m!290823 () Bool)

(assert (=> b!275149 m!290823))

(check-sat (not b!275148) (not start!26520) (not b!275147) (not b!275151) (not b!275149) (not b!275146))
(check-sat)
