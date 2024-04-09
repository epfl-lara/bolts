; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64060 () Bool)

(assert start!64060)

(declare-fun b!719073 () Bool)

(declare-fun res!481606 () Bool)

(declare-fun e!403576 () Bool)

(assert (=> b!719073 (=> (not res!481606) (not e!403576))))

(declare-datatypes ((array!40708 0))(
  ( (array!40709 (arr!19476 (Array (_ BitVec 32) (_ BitVec 64))) (size!19897 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40708)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719073 (= res!481606 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719074 () Bool)

(declare-fun res!481612 () Bool)

(assert (=> b!719074 (=> (not res!481612) (not e!403576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719074 (= res!481612 (validKeyInArray!0 k!2102))))

(declare-fun b!719075 () Bool)

(declare-fun res!481608 () Bool)

(declare-fun e!403578 () Bool)

(assert (=> b!719075 (=> (not res!481608) (not e!403578))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40708 (_ BitVec 32)) Bool)

(assert (=> b!719075 (= res!481608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719076 () Bool)

(assert (=> b!719076 (= e!403578 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7083 0))(
  ( (MissingZero!7083 (index!30699 (_ BitVec 32))) (Found!7083 (index!30700 (_ BitVec 32))) (Intermediate!7083 (undefined!7895 Bool) (index!30701 (_ BitVec 32)) (x!61739 (_ BitVec 32))) (Undefined!7083) (MissingVacant!7083 (index!30702 (_ BitVec 32))) )
))
(declare-fun lt!319510 () SeekEntryResult!7083)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40708 (_ BitVec 32)) SeekEntryResult!7083)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719076 (= lt!319510 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19476 a!3186) j!159) mask!3328) (select (arr!19476 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719077 () Bool)

(declare-fun res!481611 () Bool)

(assert (=> b!719077 (=> (not res!481611) (not e!403576))))

(assert (=> b!719077 (= res!481611 (validKeyInArray!0 (select (arr!19476 a!3186) j!159)))))

(declare-fun b!719078 () Bool)

(declare-fun res!481613 () Bool)

(assert (=> b!719078 (=> (not res!481613) (not e!403576))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719078 (= res!481613 (and (= (size!19897 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19897 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19897 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!481614 () Bool)

(assert (=> start!64060 (=> (not res!481614) (not e!403576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64060 (= res!481614 (validMask!0 mask!3328))))

(assert (=> start!64060 e!403576))

(assert (=> start!64060 true))

(declare-fun array_inv!15250 (array!40708) Bool)

(assert (=> start!64060 (array_inv!15250 a!3186)))

(declare-fun b!719079 () Bool)

(declare-fun res!481610 () Bool)

(assert (=> b!719079 (=> (not res!481610) (not e!403578))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719079 (= res!481610 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19897 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19897 a!3186))))))

(declare-fun b!719080 () Bool)

(declare-fun res!481609 () Bool)

(assert (=> b!719080 (=> (not res!481609) (not e!403578))))

(declare-datatypes ((List!13531 0))(
  ( (Nil!13528) (Cons!13527 (h!14575 (_ BitVec 64)) (t!19854 List!13531)) )
))
(declare-fun arrayNoDuplicates!0 (array!40708 (_ BitVec 32) List!13531) Bool)

(assert (=> b!719080 (= res!481609 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13528))))

(declare-fun b!719081 () Bool)

(assert (=> b!719081 (= e!403576 e!403578)))

(declare-fun res!481607 () Bool)

(assert (=> b!719081 (=> (not res!481607) (not e!403578))))

(declare-fun lt!319511 () SeekEntryResult!7083)

(assert (=> b!719081 (= res!481607 (or (= lt!319511 (MissingZero!7083 i!1173)) (= lt!319511 (MissingVacant!7083 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40708 (_ BitVec 32)) SeekEntryResult!7083)

(assert (=> b!719081 (= lt!319511 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64060 res!481614) b!719078))

(assert (= (and b!719078 res!481613) b!719077))

(assert (= (and b!719077 res!481611) b!719074))

(assert (= (and b!719074 res!481612) b!719073))

(assert (= (and b!719073 res!481606) b!719081))

(assert (= (and b!719081 res!481607) b!719075))

(assert (= (and b!719075 res!481608) b!719080))

(assert (= (and b!719080 res!481609) b!719079))

(assert (= (and b!719079 res!481610) b!719076))

(declare-fun m!674623 () Bool)

(assert (=> start!64060 m!674623))

(declare-fun m!674625 () Bool)

(assert (=> start!64060 m!674625))

(declare-fun m!674627 () Bool)

(assert (=> b!719080 m!674627))

(declare-fun m!674629 () Bool)

(assert (=> b!719076 m!674629))

(assert (=> b!719076 m!674629))

(declare-fun m!674631 () Bool)

(assert (=> b!719076 m!674631))

(assert (=> b!719076 m!674631))

(assert (=> b!719076 m!674629))

(declare-fun m!674633 () Bool)

(assert (=> b!719076 m!674633))

(declare-fun m!674635 () Bool)

(assert (=> b!719075 m!674635))

(declare-fun m!674637 () Bool)

(assert (=> b!719074 m!674637))

(declare-fun m!674639 () Bool)

(assert (=> b!719081 m!674639))

(assert (=> b!719077 m!674629))

(assert (=> b!719077 m!674629))

(declare-fun m!674641 () Bool)

(assert (=> b!719077 m!674641))

(declare-fun m!674643 () Bool)

(assert (=> b!719073 m!674643))

(push 1)

