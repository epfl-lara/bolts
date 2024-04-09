; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64122 () Bool)

(assert start!64122)

(declare-fun b!719962 () Bool)

(declare-fun res!482487 () Bool)

(declare-fun e!403868 () Bool)

(assert (=> b!719962 (=> (not res!482487) (not e!403868))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719962 (= res!482487 (validKeyInArray!0 k0!2102))))

(declare-fun b!719963 () Bool)

(declare-fun e!403866 () Bool)

(assert (=> b!719963 (= e!403868 e!403866)))

(declare-fun res!482496 () Bool)

(assert (=> b!719963 (=> (not res!482496) (not e!403866))))

(declare-datatypes ((SeekEntryResult!7114 0))(
  ( (MissingZero!7114 (index!30823 (_ BitVec 32))) (Found!7114 (index!30824 (_ BitVec 32))) (Intermediate!7114 (undefined!7926 Bool) (index!30825 (_ BitVec 32)) (x!61850 (_ BitVec 32))) (Undefined!7114) (MissingVacant!7114 (index!30826 (_ BitVec 32))) )
))
(declare-fun lt!319670 () SeekEntryResult!7114)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719963 (= res!482496 (or (= lt!319670 (MissingZero!7114 i!1173)) (= lt!319670 (MissingVacant!7114 i!1173))))))

(declare-datatypes ((array!40770 0))(
  ( (array!40771 (arr!19507 (Array (_ BitVec 32) (_ BitVec 64))) (size!19928 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40770)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40770 (_ BitVec 32)) SeekEntryResult!7114)

(assert (=> b!719963 (= lt!319670 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719964 () Bool)

(declare-fun res!482488 () Bool)

(assert (=> b!719964 (=> (not res!482488) (not e!403866))))

(declare-datatypes ((List!13562 0))(
  ( (Nil!13559) (Cons!13558 (h!14606 (_ BitVec 64)) (t!19885 List!13562)) )
))
(declare-fun arrayNoDuplicates!0 (array!40770 (_ BitVec 32) List!13562) Bool)

(assert (=> b!719964 (= res!482488 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13559))))

(declare-fun b!719965 () Bool)

(declare-fun lt!319669 () SeekEntryResult!7114)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!403865 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40770 (_ BitVec 32)) SeekEntryResult!7114)

(assert (=> b!719965 (= e!403865 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19507 a!3186) j!159) a!3186 mask!3328) lt!319669))))

(declare-fun b!719966 () Bool)

(declare-fun e!403867 () Bool)

(assert (=> b!719966 (= e!403867 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!719967 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40770 (_ BitVec 32)) SeekEntryResult!7114)

(assert (=> b!719967 (= e!403865 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19507 a!3186) j!159) a!3186 mask!3328) (Found!7114 j!159)))))

(declare-fun b!719968 () Bool)

(assert (=> b!719968 (= e!403866 e!403867)))

(declare-fun res!482489 () Bool)

(assert (=> b!719968 (=> (not res!482489) (not e!403867))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719968 (= res!482489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19507 a!3186) j!159) mask!3328) (select (arr!19507 a!3186) j!159) a!3186 mask!3328) lt!319669))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719968 (= lt!319669 (Intermediate!7114 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!482490 () Bool)

(assert (=> start!64122 (=> (not res!482490) (not e!403868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64122 (= res!482490 (validMask!0 mask!3328))))

(assert (=> start!64122 e!403868))

(assert (=> start!64122 true))

(declare-fun array_inv!15281 (array!40770) Bool)

(assert (=> start!64122 (array_inv!15281 a!3186)))

(declare-fun b!719969 () Bool)

(declare-fun res!482494 () Bool)

(assert (=> b!719969 (=> (not res!482494) (not e!403868))))

(assert (=> b!719969 (= res!482494 (validKeyInArray!0 (select (arr!19507 a!3186) j!159)))))

(declare-fun b!719970 () Bool)

(declare-fun res!482485 () Bool)

(assert (=> b!719970 (=> (not res!482485) (not e!403866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40770 (_ BitVec 32)) Bool)

(assert (=> b!719970 (= res!482485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719971 () Bool)

(declare-fun res!482493 () Bool)

(assert (=> b!719971 (=> (not res!482493) (not e!403867))))

(assert (=> b!719971 (= res!482493 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19507 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!719972 () Bool)

(declare-fun res!482495 () Bool)

(assert (=> b!719972 (=> (not res!482495) (not e!403866))))

(assert (=> b!719972 (= res!482495 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19928 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19928 a!3186))))))

(declare-fun b!719973 () Bool)

(declare-fun res!482492 () Bool)

(assert (=> b!719973 (=> (not res!482492) (not e!403868))))

(assert (=> b!719973 (= res!482492 (and (= (size!19928 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19928 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19928 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719974 () Bool)

(declare-fun res!482486 () Bool)

(assert (=> b!719974 (=> (not res!482486) (not e!403868))))

(declare-fun arrayContainsKey!0 (array!40770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719974 (= res!482486 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719975 () Bool)

(declare-fun res!482491 () Bool)

(assert (=> b!719975 (=> (not res!482491) (not e!403867))))

(assert (=> b!719975 (= res!482491 e!403865)))

(declare-fun c!79107 () Bool)

(assert (=> b!719975 (= c!79107 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64122 res!482490) b!719973))

(assert (= (and b!719973 res!482492) b!719969))

(assert (= (and b!719969 res!482494) b!719962))

(assert (= (and b!719962 res!482487) b!719974))

(assert (= (and b!719974 res!482486) b!719963))

(assert (= (and b!719963 res!482496) b!719970))

(assert (= (and b!719970 res!482485) b!719964))

(assert (= (and b!719964 res!482488) b!719972))

(assert (= (and b!719972 res!482495) b!719968))

(assert (= (and b!719968 res!482489) b!719971))

(assert (= (and b!719971 res!482493) b!719975))

(assert (= (and b!719975 c!79107) b!719965))

(assert (= (and b!719975 (not c!79107)) b!719967))

(assert (= (and b!719975 res!482491) b!719966))

(declare-fun m!675329 () Bool)

(assert (=> b!719974 m!675329))

(declare-fun m!675331 () Bool)

(assert (=> b!719962 m!675331))

(declare-fun m!675333 () Bool)

(assert (=> b!719967 m!675333))

(assert (=> b!719967 m!675333))

(declare-fun m!675335 () Bool)

(assert (=> b!719967 m!675335))

(declare-fun m!675337 () Bool)

(assert (=> b!719963 m!675337))

(declare-fun m!675339 () Bool)

(assert (=> b!719970 m!675339))

(declare-fun m!675341 () Bool)

(assert (=> start!64122 m!675341))

(declare-fun m!675343 () Bool)

(assert (=> start!64122 m!675343))

(declare-fun m!675345 () Bool)

(assert (=> b!719971 m!675345))

(declare-fun m!675347 () Bool)

(assert (=> b!719964 m!675347))

(assert (=> b!719969 m!675333))

(assert (=> b!719969 m!675333))

(declare-fun m!675349 () Bool)

(assert (=> b!719969 m!675349))

(assert (=> b!719968 m!675333))

(assert (=> b!719968 m!675333))

(declare-fun m!675351 () Bool)

(assert (=> b!719968 m!675351))

(assert (=> b!719968 m!675351))

(assert (=> b!719968 m!675333))

(declare-fun m!675353 () Bool)

(assert (=> b!719968 m!675353))

(assert (=> b!719965 m!675333))

(assert (=> b!719965 m!675333))

(declare-fun m!675355 () Bool)

(assert (=> b!719965 m!675355))

(check-sat (not b!719967) (not b!719969) (not b!719970) (not start!64122) (not b!719963) (not b!719964) (not b!719962) (not b!719974) (not b!719968) (not b!719965))
(check-sat)
