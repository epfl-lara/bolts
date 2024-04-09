; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63744 () Bool)

(assert start!63744)

(declare-fun b!717085 () Bool)

(declare-fun res!480014 () Bool)

(declare-fun e!402630 () Bool)

(assert (=> b!717085 (=> (not res!480014) (not e!402630))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717085 (= res!480014 (validKeyInArray!0 k0!2102))))

(declare-datatypes ((array!40593 0))(
  ( (array!40594 (arr!19426 (Array (_ BitVec 32) (_ BitVec 64))) (size!19847 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40593)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun b!717086 () Bool)

(declare-datatypes ((SeekEntryResult!7033 0))(
  ( (MissingZero!7033 (index!30499 (_ BitVec 32))) (Found!7033 (index!30500 (_ BitVec 32))) (Intermediate!7033 (undefined!7845 Bool) (index!30501 (_ BitVec 32)) (x!61550 (_ BitVec 32))) (Undefined!7033) (MissingVacant!7033 (index!30502 (_ BitVec 32))) )
))
(declare-fun lt!318986 () SeekEntryResult!7033)

(assert (=> b!717086 (= e!402630 (and (or (= lt!318986 (MissingZero!7033 i!1173)) (= lt!318986 (MissingVacant!7033 i!1173))) (bvsgt #b00000000000000000000000000000000 (size!19847 a!3186))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40593 (_ BitVec 32)) SeekEntryResult!7033)

(assert (=> b!717086 (= lt!318986 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!717087 () Bool)

(declare-fun res!480011 () Bool)

(assert (=> b!717087 (=> (not res!480011) (not e!402630))))

(declare-fun arrayContainsKey!0 (array!40593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717087 (= res!480011 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717088 () Bool)

(declare-fun res!480013 () Bool)

(assert (=> b!717088 (=> (not res!480013) (not e!402630))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!717088 (= res!480013 (validKeyInArray!0 (select (arr!19426 a!3186) j!159)))))

(declare-fun b!717089 () Bool)

(declare-fun res!480012 () Bool)

(assert (=> b!717089 (=> (not res!480012) (not e!402630))))

(assert (=> b!717089 (= res!480012 (and (= (size!19847 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19847 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19847 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!480015 () Bool)

(assert (=> start!63744 (=> (not res!480015) (not e!402630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63744 (= res!480015 (validMask!0 mask!3328))))

(assert (=> start!63744 e!402630))

(declare-fun array_inv!15200 (array!40593) Bool)

(assert (=> start!63744 (array_inv!15200 a!3186)))

(assert (=> start!63744 true))

(assert (= (and start!63744 res!480015) b!717089))

(assert (= (and b!717089 res!480012) b!717088))

(assert (= (and b!717088 res!480013) b!717085))

(assert (= (and b!717085 res!480014) b!717087))

(assert (= (and b!717087 res!480011) b!717086))

(declare-fun m!673151 () Bool)

(assert (=> start!63744 m!673151))

(declare-fun m!673153 () Bool)

(assert (=> start!63744 m!673153))

(declare-fun m!673155 () Bool)

(assert (=> b!717085 m!673155))

(declare-fun m!673157 () Bool)

(assert (=> b!717086 m!673157))

(declare-fun m!673159 () Bool)

(assert (=> b!717088 m!673159))

(assert (=> b!717088 m!673159))

(declare-fun m!673161 () Bool)

(assert (=> b!717088 m!673161))

(declare-fun m!673163 () Bool)

(assert (=> b!717087 m!673163))

(check-sat (not b!717087) (not b!717088) (not start!63744) (not b!717086) (not b!717085))
(check-sat)
