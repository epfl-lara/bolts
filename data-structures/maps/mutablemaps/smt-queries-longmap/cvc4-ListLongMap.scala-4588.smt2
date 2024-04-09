; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64064 () Bool)

(assert start!64064)

(declare-fun b!719127 () Bool)

(declare-fun res!481668 () Bool)

(declare-fun e!403596 () Bool)

(assert (=> b!719127 (=> (not res!481668) (not e!403596))))

(declare-datatypes ((array!40712 0))(
  ( (array!40713 (arr!19478 (Array (_ BitVec 32) (_ BitVec 64))) (size!19899 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40712)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40712 (_ BitVec 32)) Bool)

(assert (=> b!719127 (= res!481668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719128 () Bool)

(declare-fun res!481665 () Bool)

(assert (=> b!719128 (=> (not res!481665) (not e!403596))))

(declare-datatypes ((List!13533 0))(
  ( (Nil!13530) (Cons!13529 (h!14577 (_ BitVec 64)) (t!19856 List!13533)) )
))
(declare-fun arrayNoDuplicates!0 (array!40712 (_ BitVec 32) List!13533) Bool)

(assert (=> b!719128 (= res!481665 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13530))))

(declare-fun b!719129 () Bool)

(declare-fun e!403595 () Bool)

(assert (=> b!719129 (= e!403595 e!403596)))

(declare-fun res!481660 () Bool)

(assert (=> b!719129 (=> (not res!481660) (not e!403596))))

(declare-datatypes ((SeekEntryResult!7085 0))(
  ( (MissingZero!7085 (index!30707 (_ BitVec 32))) (Found!7085 (index!30708 (_ BitVec 32))) (Intermediate!7085 (undefined!7897 Bool) (index!30709 (_ BitVec 32)) (x!61741 (_ BitVec 32))) (Undefined!7085) (MissingVacant!7085 (index!30710 (_ BitVec 32))) )
))
(declare-fun lt!319522 () SeekEntryResult!7085)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719129 (= res!481660 (or (= lt!319522 (MissingZero!7085 i!1173)) (= lt!319522 (MissingVacant!7085 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40712 (_ BitVec 32)) SeekEntryResult!7085)

(assert (=> b!719129 (= lt!319522 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719130 () Bool)

(declare-fun res!481662 () Bool)

(assert (=> b!719130 (=> (not res!481662) (not e!403595))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!719130 (= res!481662 (and (= (size!19899 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19899 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19899 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!481666 () Bool)

(assert (=> start!64064 (=> (not res!481666) (not e!403595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64064 (= res!481666 (validMask!0 mask!3328))))

(assert (=> start!64064 e!403595))

(assert (=> start!64064 true))

(declare-fun array_inv!15252 (array!40712) Bool)

(assert (=> start!64064 (array_inv!15252 a!3186)))

(declare-fun b!719131 () Bool)

(declare-fun res!481661 () Bool)

(assert (=> b!719131 (=> (not res!481661) (not e!403595))))

(declare-fun arrayContainsKey!0 (array!40712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719131 (= res!481661 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719132 () Bool)

(declare-fun res!481667 () Bool)

(assert (=> b!719132 (=> (not res!481667) (not e!403595))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719132 (= res!481667 (validKeyInArray!0 k!2102))))

(declare-fun b!719133 () Bool)

(declare-fun res!481663 () Bool)

(assert (=> b!719133 (=> (not res!481663) (not e!403596))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719133 (= res!481663 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19899 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19899 a!3186))))))

(declare-fun b!719134 () Bool)

(declare-fun res!481664 () Bool)

(assert (=> b!719134 (=> (not res!481664) (not e!403595))))

(assert (=> b!719134 (= res!481664 (validKeyInArray!0 (select (arr!19478 a!3186) j!159)))))

(declare-fun b!719135 () Bool)

(assert (=> b!719135 (= e!403596 false)))

(declare-fun lt!319523 () SeekEntryResult!7085)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40712 (_ BitVec 32)) SeekEntryResult!7085)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719135 (= lt!319523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19478 a!3186) j!159) mask!3328) (select (arr!19478 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!64064 res!481666) b!719130))

(assert (= (and b!719130 res!481662) b!719134))

(assert (= (and b!719134 res!481664) b!719132))

(assert (= (and b!719132 res!481667) b!719131))

(assert (= (and b!719131 res!481661) b!719129))

(assert (= (and b!719129 res!481660) b!719127))

(assert (= (and b!719127 res!481668) b!719128))

(assert (= (and b!719128 res!481665) b!719133))

(assert (= (and b!719133 res!481663) b!719135))

(declare-fun m!674667 () Bool)

(assert (=> b!719127 m!674667))

(declare-fun m!674669 () Bool)

(assert (=> b!719129 m!674669))

(declare-fun m!674671 () Bool)

(assert (=> b!719132 m!674671))

(declare-fun m!674673 () Bool)

(assert (=> b!719134 m!674673))

(assert (=> b!719134 m!674673))

(declare-fun m!674675 () Bool)

(assert (=> b!719134 m!674675))

(declare-fun m!674677 () Bool)

(assert (=> b!719131 m!674677))

(declare-fun m!674679 () Bool)

(assert (=> b!719128 m!674679))

(assert (=> b!719135 m!674673))

(assert (=> b!719135 m!674673))

(declare-fun m!674681 () Bool)

(assert (=> b!719135 m!674681))

(assert (=> b!719135 m!674681))

(assert (=> b!719135 m!674673))

(declare-fun m!674683 () Bool)

(assert (=> b!719135 m!674683))

(declare-fun m!674685 () Bool)

(assert (=> start!64064 m!674685))

(declare-fun m!674687 () Bool)

(assert (=> start!64064 m!674687))

(push 1)

(assert (not b!719128))

(assert (not b!719129))

(assert (not b!719127))

(assert (not b!719134))

(assert (not b!719131))

(assert (not b!719132))

(assert (not start!64064))

(assert (not b!719135))

