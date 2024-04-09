; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64100 () Bool)

(assert start!64100)

(declare-fun b!719631 () Bool)

(declare-fun res!482165 () Bool)

(declare-fun e!403758 () Bool)

(assert (=> b!719631 (=> (not res!482165) (not e!403758))))

(declare-datatypes ((array!40748 0))(
  ( (array!40749 (arr!19496 (Array (_ BitVec 32) (_ BitVec 64))) (size!19917 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40748)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719631 (= res!482165 (validKeyInArray!0 (select (arr!19496 a!3186) j!159)))))

(declare-fun res!482172 () Bool)

(assert (=> start!64100 (=> (not res!482172) (not e!403758))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64100 (= res!482172 (validMask!0 mask!3328))))

(assert (=> start!64100 e!403758))

(assert (=> start!64100 true))

(declare-fun array_inv!15270 (array!40748) Bool)

(assert (=> start!64100 (array_inv!15270 a!3186)))

(declare-fun b!719632 () Bool)

(declare-fun e!403757 () Bool)

(assert (=> b!719632 (= e!403757 false)))

(declare-datatypes ((SeekEntryResult!7103 0))(
  ( (MissingZero!7103 (index!30779 (_ BitVec 32))) (Found!7103 (index!30780 (_ BitVec 32))) (Intermediate!7103 (undefined!7915 Bool) (index!30781 (_ BitVec 32)) (x!61807 (_ BitVec 32))) (Undefined!7103) (MissingVacant!7103 (index!30782 (_ BitVec 32))) )
))
(declare-fun lt!319613 () SeekEntryResult!7103)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40748 (_ BitVec 32)) SeekEntryResult!7103)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719632 (= lt!319613 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19496 a!3186) j!159) mask!3328) (select (arr!19496 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719633 () Bool)

(declare-fun res!482169 () Bool)

(assert (=> b!719633 (=> (not res!482169) (not e!403757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40748 (_ BitVec 32)) Bool)

(assert (=> b!719633 (= res!482169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719634 () Bool)

(declare-fun res!482168 () Bool)

(assert (=> b!719634 (=> (not res!482168) (not e!403758))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719634 (= res!482168 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719635 () Bool)

(declare-fun res!482167 () Bool)

(assert (=> b!719635 (=> (not res!482167) (not e!403758))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719635 (= res!482167 (and (= (size!19917 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19917 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19917 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719636 () Bool)

(declare-fun res!482171 () Bool)

(assert (=> b!719636 (=> (not res!482171) (not e!403757))))

(declare-datatypes ((List!13551 0))(
  ( (Nil!13548) (Cons!13547 (h!14595 (_ BitVec 64)) (t!19874 List!13551)) )
))
(declare-fun arrayNoDuplicates!0 (array!40748 (_ BitVec 32) List!13551) Bool)

(assert (=> b!719636 (= res!482171 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13548))))

(declare-fun b!719637 () Bool)

(declare-fun res!482166 () Bool)

(assert (=> b!719637 (=> (not res!482166) (not e!403757))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719637 (= res!482166 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19917 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19917 a!3186))))))

(declare-fun b!719638 () Bool)

(declare-fun res!482170 () Bool)

(assert (=> b!719638 (=> (not res!482170) (not e!403758))))

(assert (=> b!719638 (= res!482170 (validKeyInArray!0 k!2102))))

(declare-fun b!719639 () Bool)

(assert (=> b!719639 (= e!403758 e!403757)))

(declare-fun res!482164 () Bool)

(assert (=> b!719639 (=> (not res!482164) (not e!403757))))

(declare-fun lt!319612 () SeekEntryResult!7103)

(assert (=> b!719639 (= res!482164 (or (= lt!319612 (MissingZero!7103 i!1173)) (= lt!319612 (MissingVacant!7103 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40748 (_ BitVec 32)) SeekEntryResult!7103)

(assert (=> b!719639 (= lt!319612 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64100 res!482172) b!719635))

(assert (= (and b!719635 res!482167) b!719631))

(assert (= (and b!719631 res!482165) b!719638))

(assert (= (and b!719638 res!482170) b!719634))

(assert (= (and b!719634 res!482168) b!719639))

(assert (= (and b!719639 res!482164) b!719633))

(assert (= (and b!719633 res!482169) b!719636))

(assert (= (and b!719636 res!482171) b!719637))

(assert (= (and b!719637 res!482166) b!719632))

(declare-fun m!675075 () Bool)

(assert (=> b!719631 m!675075))

(assert (=> b!719631 m!675075))

(declare-fun m!675077 () Bool)

(assert (=> b!719631 m!675077))

(declare-fun m!675079 () Bool)

(assert (=> b!719639 m!675079))

(assert (=> b!719632 m!675075))

(assert (=> b!719632 m!675075))

(declare-fun m!675081 () Bool)

(assert (=> b!719632 m!675081))

(assert (=> b!719632 m!675081))

(assert (=> b!719632 m!675075))

(declare-fun m!675083 () Bool)

(assert (=> b!719632 m!675083))

(declare-fun m!675085 () Bool)

(assert (=> start!64100 m!675085))

(declare-fun m!675087 () Bool)

(assert (=> start!64100 m!675087))

(declare-fun m!675089 () Bool)

(assert (=> b!719633 m!675089))

(declare-fun m!675091 () Bool)

(assert (=> b!719634 m!675091))

(declare-fun m!675093 () Bool)

(assert (=> b!719638 m!675093))

(declare-fun m!675095 () Bool)

(assert (=> b!719636 m!675095))

(push 1)

(assert (not b!719633))

(assert (not b!719634))

(assert (not b!719632))

(assert (not b!719639))

(assert (not start!64100))

(assert (not b!719638))

(assert (not b!719636))

(assert (not b!719631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

