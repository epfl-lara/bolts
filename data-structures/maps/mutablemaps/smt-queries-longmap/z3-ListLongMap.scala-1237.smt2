; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25992 () Bool)

(assert start!25992)

(declare-fun b!268067 () Bool)

(declare-fun res!132385 () Bool)

(declare-fun e!173212 () Bool)

(assert (=> b!268067 (=> (not res!132385) (not e!173212))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268067 (= res!132385 (validKeyInArray!0 k0!2581))))

(declare-fun b!268068 () Bool)

(assert (=> b!268068 (= e!173212 false)))

(declare-datatypes ((array!13078 0))(
  ( (array!13079 (arr!6188 (Array (_ BitVec 32) (_ BitVec 64))) (size!6540 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13078)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1357 0))(
  ( (MissingZero!1357 (index!7598 (_ BitVec 32))) (Found!1357 (index!7599 (_ BitVec 32))) (Intermediate!1357 (undefined!2169 Bool) (index!7600 (_ BitVec 32)) (x!25938 (_ BitVec 32))) (Undefined!1357) (MissingVacant!1357 (index!7601 (_ BitVec 32))) )
))
(declare-fun lt!134810 () SeekEntryResult!1357)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13078 (_ BitVec 32)) SeekEntryResult!1357)

(assert (=> b!268068 (= lt!134810 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268070 () Bool)

(declare-fun res!132384 () Bool)

(assert (=> b!268070 (=> (not res!132384) (not e!173212))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268070 (= res!132384 (and (= (size!6540 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6540 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6540 a!3325))))))

(declare-fun b!268071 () Bool)

(declare-fun res!132383 () Bool)

(assert (=> b!268071 (=> (not res!132383) (not e!173212))))

(declare-fun arrayContainsKey!0 (array!13078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268071 (= res!132383 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268069 () Bool)

(declare-fun res!132386 () Bool)

(assert (=> b!268069 (=> (not res!132386) (not e!173212))))

(declare-datatypes ((List!4017 0))(
  ( (Nil!4014) (Cons!4013 (h!4680 (_ BitVec 64)) (t!9107 List!4017)) )
))
(declare-fun arrayNoDuplicates!0 (array!13078 (_ BitVec 32) List!4017) Bool)

(assert (=> b!268069 (= res!132386 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4014))))

(declare-fun res!132387 () Bool)

(assert (=> start!25992 (=> (not res!132387) (not e!173212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25992 (= res!132387 (validMask!0 mask!3868))))

(assert (=> start!25992 e!173212))

(declare-fun array_inv!4142 (array!13078) Bool)

(assert (=> start!25992 (array_inv!4142 a!3325)))

(assert (=> start!25992 true))

(assert (= (and start!25992 res!132387) b!268070))

(assert (= (and b!268070 res!132384) b!268067))

(assert (= (and b!268067 res!132385) b!268069))

(assert (= (and b!268069 res!132386) b!268071))

(assert (= (and b!268071 res!132383) b!268068))

(declare-fun m!284317 () Bool)

(assert (=> b!268068 m!284317))

(declare-fun m!284319 () Bool)

(assert (=> b!268071 m!284319))

(declare-fun m!284321 () Bool)

(assert (=> b!268069 m!284321))

(declare-fun m!284323 () Bool)

(assert (=> start!25992 m!284323))

(declare-fun m!284325 () Bool)

(assert (=> start!25992 m!284325))

(declare-fun m!284327 () Bool)

(assert (=> b!268067 m!284327))

(check-sat (not b!268071) (not b!268067) (not b!268069) (not b!268068) (not start!25992))
