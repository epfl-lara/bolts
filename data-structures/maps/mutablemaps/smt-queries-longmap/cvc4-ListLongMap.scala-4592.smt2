; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64088 () Bool)

(assert start!64088)

(declare-fun b!719460 () Bool)

(declare-fun res!481994 () Bool)

(declare-fun e!403702 () Bool)

(assert (=> b!719460 (=> (not res!481994) (not e!403702))))

(declare-datatypes ((array!40736 0))(
  ( (array!40737 (arr!19490 (Array (_ BitVec 32) (_ BitVec 64))) (size!19911 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40736)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719460 (= res!481994 (validKeyInArray!0 (select (arr!19490 a!3186) j!159)))))

(declare-fun b!719461 () Bool)

(declare-fun res!482001 () Bool)

(declare-fun e!403703 () Bool)

(assert (=> b!719461 (=> (not res!482001) (not e!403703))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719461 (= res!482001 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19911 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19911 a!3186))))))

(declare-fun b!719462 () Bool)

(declare-fun res!481999 () Bool)

(assert (=> b!719462 (=> (not res!481999) (not e!403703))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40736 (_ BitVec 32)) Bool)

(assert (=> b!719462 (= res!481999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719463 () Bool)

(declare-fun res!481995 () Bool)

(assert (=> b!719463 (=> (not res!481995) (not e!403703))))

(declare-datatypes ((List!13545 0))(
  ( (Nil!13542) (Cons!13541 (h!14589 (_ BitVec 64)) (t!19868 List!13545)) )
))
(declare-fun arrayNoDuplicates!0 (array!40736 (_ BitVec 32) List!13545) Bool)

(assert (=> b!719463 (= res!481995 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13542))))

(declare-fun res!481998 () Bool)

(assert (=> start!64088 (=> (not res!481998) (not e!403702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64088 (= res!481998 (validMask!0 mask!3328))))

(assert (=> start!64088 e!403702))

(assert (=> start!64088 true))

(declare-fun array_inv!15264 (array!40736) Bool)

(assert (=> start!64088 (array_inv!15264 a!3186)))

(declare-fun b!719464 () Bool)

(declare-fun res!481996 () Bool)

(assert (=> b!719464 (=> (not res!481996) (not e!403702))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719464 (= res!481996 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719465 () Bool)

(assert (=> b!719465 (= e!403702 e!403703)))

(declare-fun res!481997 () Bool)

(assert (=> b!719465 (=> (not res!481997) (not e!403703))))

(declare-datatypes ((SeekEntryResult!7097 0))(
  ( (MissingZero!7097 (index!30755 (_ BitVec 32))) (Found!7097 (index!30756 (_ BitVec 32))) (Intermediate!7097 (undefined!7909 Bool) (index!30757 (_ BitVec 32)) (x!61785 (_ BitVec 32))) (Undefined!7097) (MissingVacant!7097 (index!30758 (_ BitVec 32))) )
))
(declare-fun lt!319585 () SeekEntryResult!7097)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719465 (= res!481997 (or (= lt!319585 (MissingZero!7097 i!1173)) (= lt!319585 (MissingVacant!7097 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40736 (_ BitVec 32)) SeekEntryResult!7097)

(assert (=> b!719465 (= lt!319585 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719466 () Bool)

(declare-fun res!481993 () Bool)

(assert (=> b!719466 (=> (not res!481993) (not e!403702))))

(assert (=> b!719466 (= res!481993 (and (= (size!19911 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19911 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19911 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719467 () Bool)

(assert (=> b!719467 (= e!403703 false)))

(declare-fun lt!319586 () SeekEntryResult!7097)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40736 (_ BitVec 32)) SeekEntryResult!7097)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719467 (= lt!319586 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19490 a!3186) j!159) mask!3328) (select (arr!19490 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719468 () Bool)

(declare-fun res!482000 () Bool)

(assert (=> b!719468 (=> (not res!482000) (not e!403702))))

(assert (=> b!719468 (= res!482000 (validKeyInArray!0 k!2102))))

(assert (= (and start!64088 res!481998) b!719466))

(assert (= (and b!719466 res!481993) b!719460))

(assert (= (and b!719460 res!481994) b!719468))

(assert (= (and b!719468 res!482000) b!719464))

(assert (= (and b!719464 res!481996) b!719465))

(assert (= (and b!719465 res!481997) b!719462))

(assert (= (and b!719462 res!481999) b!719463))

(assert (= (and b!719463 res!481995) b!719461))

(assert (= (and b!719461 res!482001) b!719467))

(declare-fun m!674937 () Bool)

(assert (=> b!719464 m!674937))

(declare-fun m!674939 () Bool)

(assert (=> b!719463 m!674939))

(declare-fun m!674941 () Bool)

(assert (=> b!719462 m!674941))

(declare-fun m!674943 () Bool)

(assert (=> start!64088 m!674943))

(declare-fun m!674945 () Bool)

(assert (=> start!64088 m!674945))

(declare-fun m!674947 () Bool)

(assert (=> b!719467 m!674947))

(assert (=> b!719467 m!674947))

(declare-fun m!674949 () Bool)

(assert (=> b!719467 m!674949))

(assert (=> b!719467 m!674949))

(assert (=> b!719467 m!674947))

(declare-fun m!674951 () Bool)

(assert (=> b!719467 m!674951))

(declare-fun m!674953 () Bool)

(assert (=> b!719465 m!674953))

(declare-fun m!674955 () Bool)

(assert (=> b!719468 m!674955))

(assert (=> b!719460 m!674947))

(assert (=> b!719460 m!674947))

(declare-fun m!674957 () Bool)

(assert (=> b!719460 m!674957))

(push 1)

(assert (not b!719460))

(assert (not b!719465))

(assert (not b!719467))

(assert (not b!719464))

(assert (not b!719462))

(assert (not b!719463))

(assert (not b!719468))

(assert (not start!64088))

