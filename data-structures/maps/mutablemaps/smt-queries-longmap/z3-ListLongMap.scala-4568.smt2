; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63726 () Bool)

(assert start!63726)

(declare-fun b!716950 () Bool)

(declare-fun e!402576 () Bool)

(assert (=> b!716950 (= e!402576 false)))

(declare-datatypes ((SeekEntryResult!7024 0))(
  ( (MissingZero!7024 (index!30463 (_ BitVec 32))) (Found!7024 (index!30464 (_ BitVec 32))) (Intermediate!7024 (undefined!7836 Bool) (index!30465 (_ BitVec 32)) (x!61517 (_ BitVec 32))) (Undefined!7024) (MissingVacant!7024 (index!30466 (_ BitVec 32))) )
))
(declare-fun lt!318959 () SeekEntryResult!7024)

(declare-datatypes ((array!40575 0))(
  ( (array!40576 (arr!19417 (Array (_ BitVec 32) (_ BitVec 64))) (size!19838 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40575)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40575 (_ BitVec 32)) SeekEntryResult!7024)

(assert (=> b!716950 (= lt!318959 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!716951 () Bool)

(declare-fun res!479879 () Bool)

(assert (=> b!716951 (=> (not res!479879) (not e!402576))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716951 (= res!479879 (and (= (size!19838 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19838 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19838 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716952 () Bool)

(declare-fun res!479878 () Bool)

(assert (=> b!716952 (=> (not res!479878) (not e!402576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716952 (= res!479878 (validKeyInArray!0 (select (arr!19417 a!3186) j!159)))))

(declare-fun b!716953 () Bool)

(declare-fun res!479880 () Bool)

(assert (=> b!716953 (=> (not res!479880) (not e!402576))))

(assert (=> b!716953 (= res!479880 (validKeyInArray!0 k0!2102))))

(declare-fun res!479877 () Bool)

(assert (=> start!63726 (=> (not res!479877) (not e!402576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63726 (= res!479877 (validMask!0 mask!3328))))

(assert (=> start!63726 e!402576))

(declare-fun array_inv!15191 (array!40575) Bool)

(assert (=> start!63726 (array_inv!15191 a!3186)))

(assert (=> start!63726 true))

(declare-fun b!716954 () Bool)

(declare-fun res!479876 () Bool)

(assert (=> b!716954 (=> (not res!479876) (not e!402576))))

(declare-fun arrayContainsKey!0 (array!40575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716954 (= res!479876 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!63726 res!479877) b!716951))

(assert (= (and b!716951 res!479879) b!716952))

(assert (= (and b!716952 res!479878) b!716953))

(assert (= (and b!716953 res!479880) b!716954))

(assert (= (and b!716954 res!479876) b!716950))

(declare-fun m!673025 () Bool)

(assert (=> b!716954 m!673025))

(declare-fun m!673027 () Bool)

(assert (=> start!63726 m!673027))

(declare-fun m!673029 () Bool)

(assert (=> start!63726 m!673029))

(declare-fun m!673031 () Bool)

(assert (=> b!716952 m!673031))

(assert (=> b!716952 m!673031))

(declare-fun m!673033 () Bool)

(assert (=> b!716952 m!673033))

(declare-fun m!673035 () Bool)

(assert (=> b!716953 m!673035))

(declare-fun m!673037 () Bool)

(assert (=> b!716950 m!673037))

(check-sat (not b!716950) (not b!716954) (not b!716953) (not start!63726) (not b!716952))
