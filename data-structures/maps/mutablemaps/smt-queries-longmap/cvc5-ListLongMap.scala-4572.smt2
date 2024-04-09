; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63748 () Bool)

(assert start!63748)

(declare-fun b!717119 () Bool)

(declare-fun res!480047 () Bool)

(declare-fun e!402645 () Bool)

(assert (=> b!717119 (=> (not res!480047) (not e!402645))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717119 (= res!480047 (validKeyInArray!0 k!2102))))

(declare-fun b!717120 () Bool)

(declare-fun e!402643 () Bool)

(declare-datatypes ((array!40597 0))(
  ( (array!40598 (arr!19428 (Array (_ BitVec 32) (_ BitVec 64))) (size!19849 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40597)

(assert (=> b!717120 (= e!402643 (bvsgt #b00000000000000000000000000000000 (size!19849 a!3186)))))

(declare-fun b!717121 () Bool)

(declare-fun res!480050 () Bool)

(assert (=> b!717121 (=> (not res!480050) (not e!402645))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!717121 (= res!480050 (and (= (size!19849 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19849 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19849 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717122 () Bool)

(declare-fun res!480046 () Bool)

(assert (=> b!717122 (=> (not res!480046) (not e!402643))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40597 (_ BitVec 32)) Bool)

(assert (=> b!717122 (= res!480046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!480048 () Bool)

(assert (=> start!63748 (=> (not res!480048) (not e!402645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63748 (= res!480048 (validMask!0 mask!3328))))

(assert (=> start!63748 e!402645))

(declare-fun array_inv!15202 (array!40597) Bool)

(assert (=> start!63748 (array_inv!15202 a!3186)))

(assert (=> start!63748 true))

(declare-fun b!717123 () Bool)

(declare-fun res!480051 () Bool)

(assert (=> b!717123 (=> (not res!480051) (not e!402645))))

(declare-fun arrayContainsKey!0 (array!40597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717123 (= res!480051 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717124 () Bool)

(assert (=> b!717124 (= e!402645 e!402643)))

(declare-fun res!480045 () Bool)

(assert (=> b!717124 (=> (not res!480045) (not e!402643))))

(declare-datatypes ((SeekEntryResult!7035 0))(
  ( (MissingZero!7035 (index!30507 (_ BitVec 32))) (Found!7035 (index!30508 (_ BitVec 32))) (Intermediate!7035 (undefined!7847 Bool) (index!30509 (_ BitVec 32)) (x!61560 (_ BitVec 32))) (Undefined!7035) (MissingVacant!7035 (index!30510 (_ BitVec 32))) )
))
(declare-fun lt!318992 () SeekEntryResult!7035)

(assert (=> b!717124 (= res!480045 (or (= lt!318992 (MissingZero!7035 i!1173)) (= lt!318992 (MissingVacant!7035 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40597 (_ BitVec 32)) SeekEntryResult!7035)

(assert (=> b!717124 (= lt!318992 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717125 () Bool)

(declare-fun res!480049 () Bool)

(assert (=> b!717125 (=> (not res!480049) (not e!402645))))

(assert (=> b!717125 (= res!480049 (validKeyInArray!0 (select (arr!19428 a!3186) j!159)))))

(assert (= (and start!63748 res!480048) b!717121))

(assert (= (and b!717121 res!480050) b!717125))

(assert (= (and b!717125 res!480049) b!717119))

(assert (= (and b!717119 res!480047) b!717123))

(assert (= (and b!717123 res!480051) b!717124))

(assert (= (and b!717124 res!480045) b!717122))

(assert (= (and b!717122 res!480046) b!717120))

(declare-fun m!673179 () Bool)

(assert (=> b!717124 m!673179))

(declare-fun m!673181 () Bool)

(assert (=> b!717123 m!673181))

(declare-fun m!673183 () Bool)

(assert (=> b!717119 m!673183))

(declare-fun m!673185 () Bool)

(assert (=> b!717125 m!673185))

(assert (=> b!717125 m!673185))

(declare-fun m!673187 () Bool)

(assert (=> b!717125 m!673187))

(declare-fun m!673189 () Bool)

(assert (=> b!717122 m!673189))

(declare-fun m!673191 () Bool)

(assert (=> start!63748 m!673191))

(declare-fun m!673193 () Bool)

(assert (=> start!63748 m!673193))

(push 1)

