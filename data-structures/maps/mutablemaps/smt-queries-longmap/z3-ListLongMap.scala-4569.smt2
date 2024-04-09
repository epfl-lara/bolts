; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63732 () Bool)

(assert start!63732)

(declare-fun b!716995 () Bool)

(declare-fun res!479925 () Bool)

(declare-fun e!402594 () Bool)

(assert (=> b!716995 (=> (not res!479925) (not e!402594))))

(declare-datatypes ((array!40581 0))(
  ( (array!40582 (arr!19420 (Array (_ BitVec 32) (_ BitVec 64))) (size!19841 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40581)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716995 (= res!479925 (and (= (size!19841 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19841 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19841 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716996 () Bool)

(declare-fun res!479924 () Bool)

(assert (=> b!716996 (=> (not res!479924) (not e!402594))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716996 (= res!479924 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!479922 () Bool)

(assert (=> start!63732 (=> (not res!479922) (not e!402594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63732 (= res!479922 (validMask!0 mask!3328))))

(assert (=> start!63732 e!402594))

(declare-fun array_inv!15194 (array!40581) Bool)

(assert (=> start!63732 (array_inv!15194 a!3186)))

(assert (=> start!63732 true))

(declare-fun b!716997 () Bool)

(assert (=> b!716997 (= e!402594 false)))

(declare-datatypes ((SeekEntryResult!7027 0))(
  ( (MissingZero!7027 (index!30475 (_ BitVec 32))) (Found!7027 (index!30476 (_ BitVec 32))) (Intermediate!7027 (undefined!7839 Bool) (index!30477 (_ BitVec 32)) (x!61528 (_ BitVec 32))) (Undefined!7027) (MissingVacant!7027 (index!30478 (_ BitVec 32))) )
))
(declare-fun lt!318968 () SeekEntryResult!7027)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40581 (_ BitVec 32)) SeekEntryResult!7027)

(assert (=> b!716997 (= lt!318968 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!716998 () Bool)

(declare-fun res!479923 () Bool)

(assert (=> b!716998 (=> (not res!479923) (not e!402594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716998 (= res!479923 (validKeyInArray!0 k0!2102))))

(declare-fun b!716999 () Bool)

(declare-fun res!479921 () Bool)

(assert (=> b!716999 (=> (not res!479921) (not e!402594))))

(assert (=> b!716999 (= res!479921 (validKeyInArray!0 (select (arr!19420 a!3186) j!159)))))

(assert (= (and start!63732 res!479922) b!716995))

(assert (= (and b!716995 res!479925) b!716999))

(assert (= (and b!716999 res!479921) b!716998))

(assert (= (and b!716998 res!479923) b!716996))

(assert (= (and b!716996 res!479924) b!716997))

(declare-fun m!673067 () Bool)

(assert (=> b!716997 m!673067))

(declare-fun m!673069 () Bool)

(assert (=> b!716998 m!673069))

(declare-fun m!673071 () Bool)

(assert (=> b!716996 m!673071))

(declare-fun m!673073 () Bool)

(assert (=> b!716999 m!673073))

(assert (=> b!716999 m!673073))

(declare-fun m!673075 () Bool)

(assert (=> b!716999 m!673075))

(declare-fun m!673077 () Bool)

(assert (=> start!63732 m!673077))

(declare-fun m!673079 () Bool)

(assert (=> start!63732 m!673079))

(check-sat (not start!63732) (not b!716998) (not b!716996) (not b!716999) (not b!716997))
