; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64024 () Bool)

(assert start!64024)

(declare-fun b!718569 () Bool)

(declare-fun res!481106 () Bool)

(declare-fun e!403415 () Bool)

(assert (=> b!718569 (=> (not res!481106) (not e!403415))))

(declare-datatypes ((array!40672 0))(
  ( (array!40673 (arr!19458 (Array (_ BitVec 32) (_ BitVec 64))) (size!19879 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40672)

(declare-datatypes ((List!13513 0))(
  ( (Nil!13510) (Cons!13509 (h!14557 (_ BitVec 64)) (t!19836 List!13513)) )
))
(declare-fun arrayNoDuplicates!0 (array!40672 (_ BitVec 32) List!13513) Bool)

(assert (=> b!718569 (= res!481106 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13510))))

(declare-fun b!718570 () Bool)

(declare-fun res!481104 () Bool)

(assert (=> b!718570 (=> (not res!481104) (not e!403415))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40672 (_ BitVec 32)) Bool)

(assert (=> b!718570 (= res!481104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718571 () Bool)

(declare-fun res!481108 () Bool)

(declare-fun e!403416 () Bool)

(assert (=> b!718571 (=> (not res!481108) (not e!403416))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718571 (= res!481108 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718572 () Bool)

(declare-fun res!481110 () Bool)

(assert (=> b!718572 (=> (not res!481110) (not e!403416))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718572 (= res!481110 (and (= (size!19879 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19879 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19879 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718573 () Bool)

(assert (=> b!718573 (= e!403415 false)))

(declare-fun lt!319421 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718573 (= lt!319421 (toIndex!0 (select (arr!19458 a!3186) j!159) mask!3328))))

(declare-fun b!718574 () Bool)

(declare-fun res!481107 () Bool)

(assert (=> b!718574 (=> (not res!481107) (not e!403416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718574 (= res!481107 (validKeyInArray!0 (select (arr!19458 a!3186) j!159)))))

(declare-fun b!718575 () Bool)

(declare-fun res!481105 () Bool)

(assert (=> b!718575 (=> (not res!481105) (not e!403416))))

(assert (=> b!718575 (= res!481105 (validKeyInArray!0 k!2102))))

(declare-fun b!718577 () Bool)

(declare-fun res!481103 () Bool)

(assert (=> b!718577 (=> (not res!481103) (not e!403415))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!718577 (= res!481103 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19879 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19879 a!3186))))))

(declare-fun b!718576 () Bool)

(assert (=> b!718576 (= e!403416 e!403415)))

(declare-fun res!481109 () Bool)

(assert (=> b!718576 (=> (not res!481109) (not e!403415))))

(declare-datatypes ((SeekEntryResult!7065 0))(
  ( (MissingZero!7065 (index!30627 (_ BitVec 32))) (Found!7065 (index!30628 (_ BitVec 32))) (Intermediate!7065 (undefined!7877 Bool) (index!30629 (_ BitVec 32)) (x!61673 (_ BitVec 32))) (Undefined!7065) (MissingVacant!7065 (index!30630 (_ BitVec 32))) )
))
(declare-fun lt!319420 () SeekEntryResult!7065)

(assert (=> b!718576 (= res!481109 (or (= lt!319420 (MissingZero!7065 i!1173)) (= lt!319420 (MissingVacant!7065 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40672 (_ BitVec 32)) SeekEntryResult!7065)

(assert (=> b!718576 (= lt!319420 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!481102 () Bool)

(assert (=> start!64024 (=> (not res!481102) (not e!403416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64024 (= res!481102 (validMask!0 mask!3328))))

(assert (=> start!64024 e!403416))

(assert (=> start!64024 true))

(declare-fun array_inv!15232 (array!40672) Bool)

(assert (=> start!64024 (array_inv!15232 a!3186)))

(assert (= (and start!64024 res!481102) b!718572))

(assert (= (and b!718572 res!481110) b!718574))

(assert (= (and b!718574 res!481107) b!718575))

(assert (= (and b!718575 res!481105) b!718571))

(assert (= (and b!718571 res!481108) b!718576))

(assert (= (and b!718576 res!481109) b!718570))

(assert (= (and b!718570 res!481104) b!718569))

(assert (= (and b!718569 res!481106) b!718577))

(assert (= (and b!718577 res!481103) b!718573))

(declare-fun m!674227 () Bool)

(assert (=> b!718569 m!674227))

(declare-fun m!674229 () Bool)

(assert (=> start!64024 m!674229))

(declare-fun m!674231 () Bool)

(assert (=> start!64024 m!674231))

(declare-fun m!674233 () Bool)

(assert (=> b!718575 m!674233))

(declare-fun m!674235 () Bool)

(assert (=> b!718576 m!674235))

(declare-fun m!674237 () Bool)

(assert (=> b!718574 m!674237))

(assert (=> b!718574 m!674237))

(declare-fun m!674239 () Bool)

(assert (=> b!718574 m!674239))

(declare-fun m!674241 () Bool)

(assert (=> b!718571 m!674241))

(declare-fun m!674243 () Bool)

(assert (=> b!718570 m!674243))

(assert (=> b!718573 m!674237))

(assert (=> b!718573 m!674237))

(declare-fun m!674245 () Bool)

(assert (=> b!718573 m!674245))

(push 1)

