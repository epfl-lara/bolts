; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26502 () Bool)

(assert start!26502)

(declare-fun b!274984 () Bool)

(declare-fun res!139012 () Bool)

(declare-fun e!175970 () Bool)

(assert (=> b!274984 (=> (not res!139012) (not e!175970))))

(declare-datatypes ((array!13588 0))(
  ( (array!13589 (arr!6443 (Array (_ BitVec 32) (_ BitVec 64))) (size!6795 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13588)

(declare-datatypes ((List!4272 0))(
  ( (Nil!4269) (Cons!4268 (h!4935 (_ BitVec 64)) (t!9362 List!4272)) )
))
(declare-fun arrayNoDuplicates!0 (array!13588 (_ BitVec 32) List!4272) Bool)

(assert (=> b!274984 (= res!139012 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4269))))

(declare-fun b!274985 () Bool)

(declare-fun res!139015 () Bool)

(assert (=> b!274985 (=> (not res!139015) (not e!175970))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274985 (= res!139015 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274986 () Bool)

(declare-fun e!175972 () Bool)

(assert (=> b!274986 (= e!175970 e!175972)))

(declare-fun res!139016 () Bool)

(assert (=> b!274986 (=> (not res!139016) (not e!175972))))

(declare-datatypes ((SeekEntryResult!1612 0))(
  ( (MissingZero!1612 (index!8618 (_ BitVec 32))) (Found!1612 (index!8619 (_ BitVec 32))) (Intermediate!1612 (undefined!2424 Bool) (index!8620 (_ BitVec 32)) (x!26873 (_ BitVec 32))) (Undefined!1612) (MissingVacant!1612 (index!8621 (_ BitVec 32))) )
))
(declare-fun lt!137272 () SeekEntryResult!1612)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274986 (= res!139016 (or (= lt!137272 (MissingZero!1612 i!1267)) (= lt!137272 (MissingVacant!1612 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13588 (_ BitVec 32)) SeekEntryResult!1612)

(assert (=> b!274986 (= lt!137272 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!139013 () Bool)

(assert (=> start!26502 (=> (not res!139013) (not e!175970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26502 (= res!139013 (validMask!0 mask!3868))))

(assert (=> start!26502 e!175970))

(declare-fun array_inv!4397 (array!13588) Bool)

(assert (=> start!26502 (array_inv!4397 a!3325)))

(assert (=> start!26502 true))

(declare-fun b!274987 () Bool)

(declare-fun res!139017 () Bool)

(assert (=> b!274987 (=> (not res!139017) (not e!175970))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274987 (= res!139017 (and (= (size!6795 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6795 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6795 a!3325))))))

(declare-fun b!274988 () Bool)

(declare-fun res!139014 () Bool)

(assert (=> b!274988 (=> (not res!139014) (not e!175970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274988 (= res!139014 (validKeyInArray!0 k0!2581))))

(declare-fun b!274989 () Bool)

(assert (=> b!274989 (= e!175972 false)))

(declare-fun lt!137273 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13588 (_ BitVec 32)) Bool)

(assert (=> b!274989 (= lt!137273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26502 res!139013) b!274987))

(assert (= (and b!274987 res!139017) b!274988))

(assert (= (and b!274988 res!139014) b!274984))

(assert (= (and b!274984 res!139012) b!274985))

(assert (= (and b!274985 res!139015) b!274986))

(assert (= (and b!274986 res!139016) b!274989))

(declare-fun m!290685 () Bool)

(assert (=> b!274989 m!290685))

(declare-fun m!290687 () Bool)

(assert (=> b!274985 m!290687))

(declare-fun m!290689 () Bool)

(assert (=> b!274986 m!290689))

(declare-fun m!290691 () Bool)

(assert (=> b!274988 m!290691))

(declare-fun m!290693 () Bool)

(assert (=> b!274984 m!290693))

(declare-fun m!290695 () Bool)

(assert (=> start!26502 m!290695))

(declare-fun m!290697 () Bool)

(assert (=> start!26502 m!290697))

(check-sat (not b!274986) (not b!274984) (not start!26502) (not b!274989) (not b!274988) (not b!274985))
(check-sat)
