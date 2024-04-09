; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64090 () Bool)

(assert start!64090)

(declare-fun b!719489 () Bool)

(declare-fun res!482030 () Bool)

(declare-fun e!403713 () Bool)

(assert (=> b!719489 (=> (not res!482030) (not e!403713))))

(declare-datatypes ((array!40738 0))(
  ( (array!40739 (arr!19491 (Array (_ BitVec 32) (_ BitVec 64))) (size!19912 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40738)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719489 (= res!482030 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719490 () Bool)

(declare-fun res!482029 () Bool)

(assert (=> b!719490 (=> (not res!482029) (not e!403713))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719490 (= res!482029 (validKeyInArray!0 k!2102))))

(declare-fun b!719491 () Bool)

(declare-fun res!482024 () Bool)

(assert (=> b!719491 (=> (not res!482024) (not e!403713))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!719491 (= res!482024 (validKeyInArray!0 (select (arr!19491 a!3186) j!159)))))

(declare-fun b!719492 () Bool)

(declare-fun res!482023 () Bool)

(declare-fun e!403711 () Bool)

(assert (=> b!719492 (=> (not res!482023) (not e!403711))))

(declare-datatypes ((List!13546 0))(
  ( (Nil!13543) (Cons!13542 (h!14590 (_ BitVec 64)) (t!19869 List!13546)) )
))
(declare-fun arrayNoDuplicates!0 (array!40738 (_ BitVec 32) List!13546) Bool)

(assert (=> b!719492 (= res!482023 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13543))))

(declare-fun b!719493 () Bool)

(assert (=> b!719493 (= e!403713 e!403711)))

(declare-fun res!482031 () Bool)

(assert (=> b!719493 (=> (not res!482031) (not e!403711))))

(declare-datatypes ((SeekEntryResult!7098 0))(
  ( (MissingZero!7098 (index!30759 (_ BitVec 32))) (Found!7098 (index!30760 (_ BitVec 32))) (Intermediate!7098 (undefined!7910 Bool) (index!30761 (_ BitVec 32)) (x!61794 (_ BitVec 32))) (Undefined!7098) (MissingVacant!7098 (index!30762 (_ BitVec 32))) )
))
(declare-fun lt!319589 () SeekEntryResult!7098)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719493 (= res!482031 (or (= lt!319589 (MissingZero!7098 i!1173)) (= lt!319589 (MissingVacant!7098 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40738 (_ BitVec 32)) SeekEntryResult!7098)

(assert (=> b!719493 (= lt!319589 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!719494 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719494 (= e!403711 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19491 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsgt x!1131 resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun res!482022 () Bool)

(assert (=> start!64090 (=> (not res!482022) (not e!403713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64090 (= res!482022 (validMask!0 mask!3328))))

(assert (=> start!64090 e!403713))

(assert (=> start!64090 true))

(declare-fun array_inv!15265 (array!40738) Bool)

(assert (=> start!64090 (array_inv!15265 a!3186)))

(declare-fun b!719495 () Bool)

(declare-fun res!482026 () Bool)

(assert (=> b!719495 (=> (not res!482026) (not e!403713))))

(assert (=> b!719495 (= res!482026 (and (= (size!19912 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19912 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19912 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719496 () Bool)

(declare-fun res!482025 () Bool)

(assert (=> b!719496 (=> (not res!482025) (not e!403711))))

(assert (=> b!719496 (= res!482025 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19912 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19912 a!3186))))))

(declare-fun b!719497 () Bool)

(declare-fun res!482027 () Bool)

(assert (=> b!719497 (=> (not res!482027) (not e!403711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40738 (_ BitVec 32)) Bool)

(assert (=> b!719497 (= res!482027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719498 () Bool)

(declare-fun res!482028 () Bool)

(assert (=> b!719498 (=> (not res!482028) (not e!403711))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40738 (_ BitVec 32)) SeekEntryResult!7098)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719498 (= res!482028 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19491 a!3186) j!159) mask!3328) (select (arr!19491 a!3186) j!159) a!3186 mask!3328) (Intermediate!7098 false resIntermediateIndex!5 resIntermediateX!5)))))

(assert (= (and start!64090 res!482022) b!719495))

(assert (= (and b!719495 res!482026) b!719491))

(assert (= (and b!719491 res!482024) b!719490))

(assert (= (and b!719490 res!482029) b!719489))

(assert (= (and b!719489 res!482030) b!719493))

(assert (= (and b!719493 res!482031) b!719497))

(assert (= (and b!719497 res!482027) b!719492))

(assert (= (and b!719492 res!482023) b!719496))

(assert (= (and b!719496 res!482025) b!719498))

(assert (= (and b!719498 res!482028) b!719494))

(declare-fun m!674959 () Bool)

(assert (=> b!719492 m!674959))

(declare-fun m!674961 () Bool)

(assert (=> b!719494 m!674961))

(declare-fun m!674963 () Bool)

(assert (=> b!719493 m!674963))

(declare-fun m!674965 () Bool)

(assert (=> b!719491 m!674965))

(assert (=> b!719491 m!674965))

(declare-fun m!674967 () Bool)

(assert (=> b!719491 m!674967))

(declare-fun m!674969 () Bool)

(assert (=> start!64090 m!674969))

(declare-fun m!674971 () Bool)

(assert (=> start!64090 m!674971))

(declare-fun m!674973 () Bool)

(assert (=> b!719497 m!674973))

(declare-fun m!674975 () Bool)

(assert (=> b!719490 m!674975))

(declare-fun m!674977 () Bool)

(assert (=> b!719489 m!674977))

(assert (=> b!719498 m!674965))

(assert (=> b!719498 m!674965))

(declare-fun m!674979 () Bool)

(assert (=> b!719498 m!674979))

(assert (=> b!719498 m!674979))

(assert (=> b!719498 m!674965))

(declare-fun m!674981 () Bool)

(assert (=> b!719498 m!674981))

(push 1)

(assert (not b!719497))

(assert (not b!719489))

(assert (not b!719490))

(assert (not b!719498))

(assert (not b!719493))

(assert (not b!719491))

(assert (not start!64090))

(assert (not b!719492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

