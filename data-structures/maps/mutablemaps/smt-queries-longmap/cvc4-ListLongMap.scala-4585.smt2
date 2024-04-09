; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64046 () Bool)

(assert start!64046)

(declare-fun b!718874 () Bool)

(declare-fun res!481413 () Bool)

(declare-fun e!403514 () Bool)

(assert (=> b!718874 (=> (not res!481413) (not e!403514))))

(declare-datatypes ((array!40694 0))(
  ( (array!40695 (arr!19469 (Array (_ BitVec 32) (_ BitVec 64))) (size!19890 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40694)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!718874 (= res!481413 (and (= (size!19890 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19890 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19890 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718875 () Bool)

(declare-fun res!481414 () Bool)

(assert (=> b!718875 (=> (not res!481414) (not e!403514))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718875 (= res!481414 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718876 () Bool)

(declare-fun res!481412 () Bool)

(assert (=> b!718876 (=> (not res!481412) (not e!403514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718876 (= res!481412 (validKeyInArray!0 k!2102))))

(declare-fun b!718877 () Bool)

(declare-fun res!481408 () Bool)

(declare-fun e!403513 () Bool)

(assert (=> b!718877 (=> (not res!481408) (not e!403513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40694 (_ BitVec 32)) Bool)

(assert (=> b!718877 (= res!481408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718878 () Bool)

(declare-fun res!481409 () Bool)

(assert (=> b!718878 (=> (not res!481409) (not e!403513))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7076 0))(
  ( (MissingZero!7076 (index!30671 (_ BitVec 32))) (Found!7076 (index!30672 (_ BitVec 32))) (Intermediate!7076 (undefined!7888 Bool) (index!30673 (_ BitVec 32)) (x!61708 (_ BitVec 32))) (Undefined!7076) (MissingVacant!7076 (index!30674 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40694 (_ BitVec 32)) SeekEntryResult!7076)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718878 (= res!481409 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19469 a!3186) j!159) mask!3328) (select (arr!19469 a!3186) j!159) a!3186 mask!3328) (Intermediate!7076 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!718879 () Bool)

(assert (=> b!718879 (= e!403514 e!403513)))

(declare-fun res!481410 () Bool)

(assert (=> b!718879 (=> (not res!481410) (not e!403513))))

(declare-fun lt!319478 () SeekEntryResult!7076)

(assert (=> b!718879 (= res!481410 (or (= lt!319478 (MissingZero!7076 i!1173)) (= lt!319478 (MissingVacant!7076 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40694 (_ BitVec 32)) SeekEntryResult!7076)

(assert (=> b!718879 (= lt!319478 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!718880 () Bool)

(assert (=> b!718880 (= e!403513 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19469 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsle x!1131 resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun res!481415 () Bool)

(assert (=> start!64046 (=> (not res!481415) (not e!403514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64046 (= res!481415 (validMask!0 mask!3328))))

(assert (=> start!64046 e!403514))

(assert (=> start!64046 true))

(declare-fun array_inv!15243 (array!40694) Bool)

(assert (=> start!64046 (array_inv!15243 a!3186)))

(declare-fun b!718881 () Bool)

(declare-fun res!481407 () Bool)

(assert (=> b!718881 (=> (not res!481407) (not e!403513))))

(declare-datatypes ((List!13524 0))(
  ( (Nil!13521) (Cons!13520 (h!14568 (_ BitVec 64)) (t!19847 List!13524)) )
))
(declare-fun arrayNoDuplicates!0 (array!40694 (_ BitVec 32) List!13524) Bool)

(assert (=> b!718881 (= res!481407 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13521))))

(declare-fun b!718882 () Bool)

(declare-fun res!481411 () Bool)

(assert (=> b!718882 (=> (not res!481411) (not e!403514))))

(assert (=> b!718882 (= res!481411 (validKeyInArray!0 (select (arr!19469 a!3186) j!159)))))

(declare-fun b!718883 () Bool)

(declare-fun res!481416 () Bool)

(assert (=> b!718883 (=> (not res!481416) (not e!403513))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!718883 (= res!481416 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19890 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19890 a!3186))))))

(assert (= (and start!64046 res!481415) b!718874))

(assert (= (and b!718874 res!481413) b!718882))

(assert (= (and b!718882 res!481411) b!718876))

(assert (= (and b!718876 res!481412) b!718875))

(assert (= (and b!718875 res!481414) b!718879))

(assert (= (and b!718879 res!481410) b!718877))

(assert (= (and b!718877 res!481408) b!718881))

(assert (= (and b!718881 res!481407) b!718883))

(assert (= (and b!718883 res!481416) b!718878))

(assert (= (and b!718878 res!481409) b!718880))

(declare-fun m!674461 () Bool)

(assert (=> b!718876 m!674461))

(declare-fun m!674463 () Bool)

(assert (=> b!718882 m!674463))

(assert (=> b!718882 m!674463))

(declare-fun m!674465 () Bool)

(assert (=> b!718882 m!674465))

(declare-fun m!674467 () Bool)

(assert (=> b!718880 m!674467))

(declare-fun m!674469 () Bool)

(assert (=> start!64046 m!674469))

(declare-fun m!674471 () Bool)

(assert (=> start!64046 m!674471))

(declare-fun m!674473 () Bool)

(assert (=> b!718879 m!674473))

(declare-fun m!674475 () Bool)

(assert (=> b!718881 m!674475))

(assert (=> b!718878 m!674463))

(assert (=> b!718878 m!674463))

(declare-fun m!674477 () Bool)

(assert (=> b!718878 m!674477))

(assert (=> b!718878 m!674477))

(assert (=> b!718878 m!674463))

(declare-fun m!674479 () Bool)

(assert (=> b!718878 m!674479))

(declare-fun m!674481 () Bool)

(assert (=> b!718875 m!674481))

(declare-fun m!674483 () Bool)

(assert (=> b!718877 m!674483))

(push 1)

(assert (not b!718882))

(assert (not b!718878))

(assert (not b!718881))

(assert (not b!718879))

(assert (not b!718877))

(assert (not b!718875))

(assert (not start!64046))

(assert (not b!718876))

(check-sat)

(pop 1)

(push 1)

