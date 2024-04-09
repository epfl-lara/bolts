; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63964 () Bool)

(assert start!63964)

(declare-fun b!718254 () Bool)

(declare-fun res!480880 () Bool)

(declare-fun e!403254 () Bool)

(assert (=> b!718254 (=> (not res!480880) (not e!403254))))

(declare-datatypes ((array!40657 0))(
  ( (array!40658 (arr!19452 (Array (_ BitVec 32) (_ BitVec 64))) (size!19873 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40657)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718254 (= res!480880 (validKeyInArray!0 (select (arr!19452 a!3186) j!159)))))

(declare-fun b!718255 () Bool)

(declare-fun res!480878 () Bool)

(declare-fun e!403252 () Bool)

(assert (=> b!718255 (=> (not res!480878) (not e!403252))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!718255 (= res!480878 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19873 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19873 a!3186))))))

(declare-fun b!718256 () Bool)

(declare-fun res!480881 () Bool)

(assert (=> b!718256 (=> (not res!480881) (not e!403254))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718256 (= res!480881 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718257 () Bool)

(declare-fun res!480875 () Bool)

(assert (=> b!718257 (=> (not res!480875) (not e!403254))))

(assert (=> b!718257 (= res!480875 (validKeyInArray!0 k!2102))))

(declare-fun b!718258 () Bool)

(declare-fun res!480874 () Bool)

(assert (=> b!718258 (=> (not res!480874) (not e!403254))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!718258 (= res!480874 (and (= (size!19873 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19873 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19873 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!480877 () Bool)

(assert (=> start!63964 (=> (not res!480877) (not e!403254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63964 (= res!480877 (validMask!0 mask!3328))))

(assert (=> start!63964 e!403254))

(assert (=> start!63964 true))

(declare-fun array_inv!15226 (array!40657) Bool)

(assert (=> start!63964 (array_inv!15226 a!3186)))

(declare-fun b!718259 () Bool)

(declare-fun res!480879 () Bool)

(assert (=> b!718259 (=> (not res!480879) (not e!403252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40657 (_ BitVec 32)) Bool)

(assert (=> b!718259 (= res!480879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718260 () Bool)

(assert (=> b!718260 (= e!403252 false)))

(declare-fun lt!319312 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718260 (= lt!319312 (toIndex!0 (select (arr!19452 a!3186) j!159) mask!3328))))

(declare-fun b!718261 () Bool)

(assert (=> b!718261 (= e!403254 e!403252)))

(declare-fun res!480882 () Bool)

(assert (=> b!718261 (=> (not res!480882) (not e!403252))))

(declare-datatypes ((SeekEntryResult!7059 0))(
  ( (MissingZero!7059 (index!30603 (_ BitVec 32))) (Found!7059 (index!30604 (_ BitVec 32))) (Intermediate!7059 (undefined!7871 Bool) (index!30605 (_ BitVec 32)) (x!61648 (_ BitVec 32))) (Undefined!7059) (MissingVacant!7059 (index!30606 (_ BitVec 32))) )
))
(declare-fun lt!319313 () SeekEntryResult!7059)

(assert (=> b!718261 (= res!480882 (or (= lt!319313 (MissingZero!7059 i!1173)) (= lt!319313 (MissingVacant!7059 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40657 (_ BitVec 32)) SeekEntryResult!7059)

(assert (=> b!718261 (= lt!319313 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718262 () Bool)

(declare-fun res!480876 () Bool)

(assert (=> b!718262 (=> (not res!480876) (not e!403252))))

(declare-datatypes ((List!13507 0))(
  ( (Nil!13504) (Cons!13503 (h!14548 (_ BitVec 64)) (t!19830 List!13507)) )
))
(declare-fun arrayNoDuplicates!0 (array!40657 (_ BitVec 32) List!13507) Bool)

(assert (=> b!718262 (= res!480876 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13504))))

(assert (= (and start!63964 res!480877) b!718258))

(assert (= (and b!718258 res!480874) b!718254))

(assert (= (and b!718254 res!480880) b!718257))

(assert (= (and b!718257 res!480875) b!718256))

(assert (= (and b!718256 res!480881) b!718261))

(assert (= (and b!718261 res!480882) b!718259))

(assert (= (and b!718259 res!480879) b!718262))

(assert (= (and b!718262 res!480876) b!718255))

(assert (= (and b!718255 res!480878) b!718260))

(declare-fun m!674011 () Bool)

(assert (=> b!718256 m!674011))

(declare-fun m!674013 () Bool)

(assert (=> b!718254 m!674013))

(assert (=> b!718254 m!674013))

(declare-fun m!674015 () Bool)

(assert (=> b!718254 m!674015))

(declare-fun m!674017 () Bool)

(assert (=> start!63964 m!674017))

(declare-fun m!674019 () Bool)

(assert (=> start!63964 m!674019))

(declare-fun m!674021 () Bool)

(assert (=> b!718261 m!674021))

(declare-fun m!674023 () Bool)

(assert (=> b!718259 m!674023))

(assert (=> b!718260 m!674013))

(assert (=> b!718260 m!674013))

(declare-fun m!674025 () Bool)

(assert (=> b!718260 m!674025))

(declare-fun m!674027 () Bool)

(assert (=> b!718257 m!674027))

(declare-fun m!674029 () Bool)

(assert (=> b!718262 m!674029))

(push 1)

