; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63714 () Bool)

(assert start!63714)

(declare-fun b!716860 () Bool)

(declare-fun e!402539 () Bool)

(assert (=> b!716860 (= e!402539 false)))

(declare-datatypes ((array!40563 0))(
  ( (array!40564 (arr!19411 (Array (_ BitVec 32) (_ BitVec 64))) (size!19832 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40563)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7018 0))(
  ( (MissingZero!7018 (index!30439 (_ BitVec 32))) (Found!7018 (index!30440 (_ BitVec 32))) (Intermediate!7018 (undefined!7830 Bool) (index!30441 (_ BitVec 32)) (x!61495 (_ BitVec 32))) (Undefined!7018) (MissingVacant!7018 (index!30442 (_ BitVec 32))) )
))
(declare-fun lt!318941 () SeekEntryResult!7018)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40563 (_ BitVec 32)) SeekEntryResult!7018)

(assert (=> b!716860 (= lt!318941 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!479788 () Bool)

(assert (=> start!63714 (=> (not res!479788) (not e!402539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63714 (= res!479788 (validMask!0 mask!3328))))

(assert (=> start!63714 e!402539))

(declare-fun array_inv!15185 (array!40563) Bool)

(assert (=> start!63714 (array_inv!15185 a!3186)))

(assert (=> start!63714 true))

(declare-fun b!716861 () Bool)

(declare-fun res!479789 () Bool)

(assert (=> b!716861 (=> (not res!479789) (not e!402539))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716861 (= res!479789 (validKeyInArray!0 (select (arr!19411 a!3186) j!159)))))

(declare-fun b!716862 () Bool)

(declare-fun res!479790 () Bool)

(assert (=> b!716862 (=> (not res!479790) (not e!402539))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716862 (= res!479790 (and (= (size!19832 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19832 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19832 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716863 () Bool)

(declare-fun res!479787 () Bool)

(assert (=> b!716863 (=> (not res!479787) (not e!402539))))

(declare-fun arrayContainsKey!0 (array!40563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716863 (= res!479787 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716864 () Bool)

(declare-fun res!479786 () Bool)

(assert (=> b!716864 (=> (not res!479786) (not e!402539))))

(assert (=> b!716864 (= res!479786 (validKeyInArray!0 k0!2102))))

(assert (= (and start!63714 res!479788) b!716862))

(assert (= (and b!716862 res!479790) b!716861))

(assert (= (and b!716861 res!479789) b!716864))

(assert (= (and b!716864 res!479786) b!716863))

(assert (= (and b!716863 res!479787) b!716860))

(declare-fun m!672941 () Bool)

(assert (=> b!716861 m!672941))

(assert (=> b!716861 m!672941))

(declare-fun m!672943 () Bool)

(assert (=> b!716861 m!672943))

(declare-fun m!672945 () Bool)

(assert (=> start!63714 m!672945))

(declare-fun m!672947 () Bool)

(assert (=> start!63714 m!672947))

(declare-fun m!672949 () Bool)

(assert (=> b!716863 m!672949))

(declare-fun m!672951 () Bool)

(assert (=> b!716864 m!672951))

(declare-fun m!672953 () Bool)

(assert (=> b!716860 m!672953))

(check-sat (not b!716863) (not b!716861) (not b!716864) (not b!716860) (not start!63714))
