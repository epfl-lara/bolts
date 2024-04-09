; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63738 () Bool)

(assert start!63738)

(declare-fun res!479969 () Bool)

(declare-fun e!402612 () Bool)

(assert (=> start!63738 (=> (not res!479969) (not e!402612))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63738 (= res!479969 (validMask!0 mask!3328))))

(assert (=> start!63738 e!402612))

(declare-datatypes ((array!40587 0))(
  ( (array!40588 (arr!19423 (Array (_ BitVec 32) (_ BitVec 64))) (size!19844 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40587)

(declare-fun array_inv!15197 (array!40587) Bool)

(assert (=> start!63738 (array_inv!15197 a!3186)))

(assert (=> start!63738 true))

(declare-fun b!717040 () Bool)

(declare-fun res!479970 () Bool)

(assert (=> b!717040 (=> (not res!479970) (not e!402612))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717040 (= res!479970 (validKeyInArray!0 (select (arr!19423 a!3186) j!159)))))

(declare-fun b!717041 () Bool)

(declare-fun res!479968 () Bool)

(assert (=> b!717041 (=> (not res!479968) (not e!402612))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!717041 (= res!479968 (validKeyInArray!0 k0!2102))))

(declare-fun b!717042 () Bool)

(declare-fun res!479966 () Bool)

(assert (=> b!717042 (=> (not res!479966) (not e!402612))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717042 (= res!479966 (and (= (size!19844 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19844 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19844 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717043 () Bool)

(assert (=> b!717043 (= e!402612 false)))

(declare-datatypes ((SeekEntryResult!7030 0))(
  ( (MissingZero!7030 (index!30487 (_ BitVec 32))) (Found!7030 (index!30488 (_ BitVec 32))) (Intermediate!7030 (undefined!7842 Bool) (index!30489 (_ BitVec 32)) (x!61539 (_ BitVec 32))) (Undefined!7030) (MissingVacant!7030 (index!30490 (_ BitVec 32))) )
))
(declare-fun lt!318977 () SeekEntryResult!7030)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40587 (_ BitVec 32)) SeekEntryResult!7030)

(assert (=> b!717043 (= lt!318977 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!717044 () Bool)

(declare-fun res!479967 () Bool)

(assert (=> b!717044 (=> (not res!479967) (not e!402612))))

(declare-fun arrayContainsKey!0 (array!40587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717044 (= res!479967 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!63738 res!479969) b!717042))

(assert (= (and b!717042 res!479966) b!717040))

(assert (= (and b!717040 res!479970) b!717041))

(assert (= (and b!717041 res!479968) b!717044))

(assert (= (and b!717044 res!479967) b!717043))

(declare-fun m!673109 () Bool)

(assert (=> b!717043 m!673109))

(declare-fun m!673111 () Bool)

(assert (=> b!717041 m!673111))

(declare-fun m!673113 () Bool)

(assert (=> start!63738 m!673113))

(declare-fun m!673115 () Bool)

(assert (=> start!63738 m!673115))

(declare-fun m!673117 () Bool)

(assert (=> b!717044 m!673117))

(declare-fun m!673119 () Bool)

(assert (=> b!717040 m!673119))

(assert (=> b!717040 m!673119))

(declare-fun m!673121 () Bool)

(assert (=> b!717040 m!673121))

(check-sat (not b!717040) (not b!717044) (not b!717043) (not start!63738) (not b!717041))
