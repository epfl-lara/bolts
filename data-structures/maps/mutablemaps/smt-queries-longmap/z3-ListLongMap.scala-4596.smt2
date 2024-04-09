; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64110 () Bool)

(assert start!64110)

(declare-fun b!719775 () Bool)

(declare-fun res!482314 () Bool)

(declare-fun e!403803 () Bool)

(assert (=> b!719775 (=> (not res!482314) (not e!403803))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719775 (= res!482314 (validKeyInArray!0 k0!2102))))

(declare-fun b!719776 () Bool)

(declare-fun res!482316 () Bool)

(assert (=> b!719776 (=> (not res!482316) (not e!403803))))

(declare-datatypes ((array!40758 0))(
  ( (array!40759 (arr!19501 (Array (_ BitVec 32) (_ BitVec 64))) (size!19922 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40758)

(declare-fun arrayContainsKey!0 (array!40758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719776 (= res!482316 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719777 () Bool)

(declare-fun res!482313 () Bool)

(assert (=> b!719777 (=> (not res!482313) (not e!403803))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!719777 (= res!482313 (and (= (size!19922 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19922 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19922 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719778 () Bool)

(declare-fun res!482312 () Bool)

(declare-fun e!403802 () Bool)

(assert (=> b!719778 (=> (not res!482312) (not e!403802))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719778 (= res!482312 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19922 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19922 a!3186))))))

(declare-fun b!719779 () Bool)

(declare-fun res!482311 () Bool)

(assert (=> b!719779 (=> (not res!482311) (not e!403802))))

(declare-datatypes ((List!13556 0))(
  ( (Nil!13553) (Cons!13552 (h!14600 (_ BitVec 64)) (t!19879 List!13556)) )
))
(declare-fun arrayNoDuplicates!0 (array!40758 (_ BitVec 32) List!13556) Bool)

(assert (=> b!719779 (= res!482311 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13553))))

(declare-fun res!482315 () Bool)

(assert (=> start!64110 (=> (not res!482315) (not e!403803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64110 (= res!482315 (validMask!0 mask!3328))))

(assert (=> start!64110 e!403803))

(assert (=> start!64110 true))

(declare-fun array_inv!15275 (array!40758) Bool)

(assert (=> start!64110 (array_inv!15275 a!3186)))

(declare-fun b!719780 () Bool)

(assert (=> b!719780 (= e!403803 e!403802)))

(declare-fun res!482308 () Bool)

(assert (=> b!719780 (=> (not res!482308) (not e!403802))))

(declare-datatypes ((SeekEntryResult!7108 0))(
  ( (MissingZero!7108 (index!30799 (_ BitVec 32))) (Found!7108 (index!30800 (_ BitVec 32))) (Intermediate!7108 (undefined!7920 Bool) (index!30801 (_ BitVec 32)) (x!61828 (_ BitVec 32))) (Undefined!7108) (MissingVacant!7108 (index!30802 (_ BitVec 32))) )
))
(declare-fun lt!319633 () SeekEntryResult!7108)

(assert (=> b!719780 (= res!482308 (or (= lt!319633 (MissingZero!7108 i!1173)) (= lt!319633 (MissingVacant!7108 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40758 (_ BitVec 32)) SeekEntryResult!7108)

(assert (=> b!719780 (= lt!319633 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719781 () Bool)

(declare-fun res!482309 () Bool)

(assert (=> b!719781 (=> (not res!482309) (not e!403802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40758 (_ BitVec 32)) Bool)

(assert (=> b!719781 (= res!482309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719782 () Bool)

(declare-fun res!482310 () Bool)

(assert (=> b!719782 (=> (not res!482310) (not e!403803))))

(assert (=> b!719782 (= res!482310 (validKeyInArray!0 (select (arr!19501 a!3186) j!159)))))

(declare-fun b!719783 () Bool)

(assert (=> b!719783 (= e!403802 false)))

(declare-fun lt!319634 () SeekEntryResult!7108)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40758 (_ BitVec 32)) SeekEntryResult!7108)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719783 (= lt!319634 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19501 a!3186) j!159) mask!3328) (select (arr!19501 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!64110 res!482315) b!719777))

(assert (= (and b!719777 res!482313) b!719782))

(assert (= (and b!719782 res!482310) b!719775))

(assert (= (and b!719775 res!482314) b!719776))

(assert (= (and b!719776 res!482316) b!719780))

(assert (= (and b!719780 res!482308) b!719781))

(assert (= (and b!719781 res!482309) b!719779))

(assert (= (and b!719779 res!482311) b!719778))

(assert (= (and b!719778 res!482312) b!719783))

(declare-fun m!675191 () Bool)

(assert (=> b!719781 m!675191))

(declare-fun m!675193 () Bool)

(assert (=> b!719783 m!675193))

(assert (=> b!719783 m!675193))

(declare-fun m!675195 () Bool)

(assert (=> b!719783 m!675195))

(assert (=> b!719783 m!675195))

(assert (=> b!719783 m!675193))

(declare-fun m!675197 () Bool)

(assert (=> b!719783 m!675197))

(declare-fun m!675199 () Bool)

(assert (=> b!719779 m!675199))

(declare-fun m!675201 () Bool)

(assert (=> b!719780 m!675201))

(declare-fun m!675203 () Bool)

(assert (=> b!719776 m!675203))

(declare-fun m!675205 () Bool)

(assert (=> start!64110 m!675205))

(declare-fun m!675207 () Bool)

(assert (=> start!64110 m!675207))

(assert (=> b!719782 m!675193))

(assert (=> b!719782 m!675193))

(declare-fun m!675209 () Bool)

(assert (=> b!719782 m!675209))

(declare-fun m!675211 () Bool)

(assert (=> b!719775 m!675211))

(check-sat (not b!719776) (not b!719775) (not b!719783) (not b!719779) (not b!719780) (not start!64110) (not b!719782) (not b!719781))
(check-sat)
