; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63960 () Bool)

(assert start!63960)

(declare-fun b!718200 () Bool)

(declare-fun e!403235 () Bool)

(declare-fun e!403236 () Bool)

(assert (=> b!718200 (= e!403235 e!403236)))

(declare-fun res!480821 () Bool)

(assert (=> b!718200 (=> (not res!480821) (not e!403236))))

(declare-datatypes ((SeekEntryResult!7057 0))(
  ( (MissingZero!7057 (index!30595 (_ BitVec 32))) (Found!7057 (index!30596 (_ BitVec 32))) (Intermediate!7057 (undefined!7869 Bool) (index!30597 (_ BitVec 32)) (x!61638 (_ BitVec 32))) (Undefined!7057) (MissingVacant!7057 (index!30598 (_ BitVec 32))) )
))
(declare-fun lt!319300 () SeekEntryResult!7057)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718200 (= res!480821 (or (= lt!319300 (MissingZero!7057 i!1173)) (= lt!319300 (MissingVacant!7057 i!1173))))))

(declare-datatypes ((array!40653 0))(
  ( (array!40654 (arr!19450 (Array (_ BitVec 32) (_ BitVec 64))) (size!19871 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40653)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40653 (_ BitVec 32)) SeekEntryResult!7057)

(assert (=> b!718200 (= lt!319300 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!718201 () Bool)

(declare-fun res!480826 () Bool)

(assert (=> b!718201 (=> (not res!480826) (not e!403235))))

(declare-fun arrayContainsKey!0 (array!40653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718201 (= res!480826 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718202 () Bool)

(declare-fun res!480822 () Bool)

(assert (=> b!718202 (=> (not res!480822) (not e!403235))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718202 (= res!480822 (validKeyInArray!0 (select (arr!19450 a!3186) j!159)))))

(declare-fun b!718203 () Bool)

(declare-fun res!480820 () Bool)

(assert (=> b!718203 (=> (not res!480820) (not e!403236))))

(declare-datatypes ((List!13505 0))(
  ( (Nil!13502) (Cons!13501 (h!14546 (_ BitVec 64)) (t!19828 List!13505)) )
))
(declare-fun arrayNoDuplicates!0 (array!40653 (_ BitVec 32) List!13505) Bool)

(assert (=> b!718203 (= res!480820 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13502))))

(declare-fun b!718204 () Bool)

(declare-fun res!480824 () Bool)

(assert (=> b!718204 (=> (not res!480824) (not e!403236))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!718204 (= res!480824 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19871 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19871 a!3186))))))

(declare-fun b!718205 () Bool)

(declare-fun res!480827 () Bool)

(assert (=> b!718205 (=> (not res!480827) (not e!403235))))

(assert (=> b!718205 (= res!480827 (validKeyInArray!0 k0!2102))))

(declare-fun b!718206 () Bool)

(assert (=> b!718206 (= e!403236 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!319301 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718206 (= lt!319301 (toIndex!0 (select (arr!19450 a!3186) j!159) mask!3328))))

(declare-fun b!718208 () Bool)

(declare-fun res!480823 () Bool)

(assert (=> b!718208 (=> (not res!480823) (not e!403236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40653 (_ BitVec 32)) Bool)

(assert (=> b!718208 (= res!480823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718207 () Bool)

(declare-fun res!480828 () Bool)

(assert (=> b!718207 (=> (not res!480828) (not e!403235))))

(assert (=> b!718207 (= res!480828 (and (= (size!19871 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19871 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19871 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!480825 () Bool)

(assert (=> start!63960 (=> (not res!480825) (not e!403235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63960 (= res!480825 (validMask!0 mask!3328))))

(assert (=> start!63960 e!403235))

(assert (=> start!63960 true))

(declare-fun array_inv!15224 (array!40653) Bool)

(assert (=> start!63960 (array_inv!15224 a!3186)))

(assert (= (and start!63960 res!480825) b!718207))

(assert (= (and b!718207 res!480828) b!718202))

(assert (= (and b!718202 res!480822) b!718205))

(assert (= (and b!718205 res!480827) b!718201))

(assert (= (and b!718201 res!480826) b!718200))

(assert (= (and b!718200 res!480821) b!718208))

(assert (= (and b!718208 res!480823) b!718203))

(assert (= (and b!718203 res!480820) b!718204))

(assert (= (and b!718204 res!480824) b!718206))

(declare-fun m!673971 () Bool)

(assert (=> b!718206 m!673971))

(assert (=> b!718206 m!673971))

(declare-fun m!673973 () Bool)

(assert (=> b!718206 m!673973))

(declare-fun m!673975 () Bool)

(assert (=> b!718201 m!673975))

(declare-fun m!673977 () Bool)

(assert (=> b!718200 m!673977))

(assert (=> b!718202 m!673971))

(assert (=> b!718202 m!673971))

(declare-fun m!673979 () Bool)

(assert (=> b!718202 m!673979))

(declare-fun m!673981 () Bool)

(assert (=> b!718208 m!673981))

(declare-fun m!673983 () Bool)

(assert (=> start!63960 m!673983))

(declare-fun m!673985 () Bool)

(assert (=> start!63960 m!673985))

(declare-fun m!673987 () Bool)

(assert (=> b!718205 m!673987))

(declare-fun m!673989 () Bool)

(assert (=> b!718203 m!673989))

(check-sat (not b!718203) (not b!718205) (not b!718201) (not b!718206) (not start!63960) (not b!718200) (not b!718208) (not b!718202))
(check-sat)
