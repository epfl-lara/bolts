; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64092 () Bool)

(assert start!64092)

(declare-fun b!719519 () Bool)

(declare-fun e!403722 () Bool)

(declare-fun e!403721 () Bool)

(assert (=> b!719519 (= e!403722 e!403721)))

(declare-fun res!482055 () Bool)

(assert (=> b!719519 (=> (not res!482055) (not e!403721))))

(declare-datatypes ((SeekEntryResult!7099 0))(
  ( (MissingZero!7099 (index!30763 (_ BitVec 32))) (Found!7099 (index!30764 (_ BitVec 32))) (Intermediate!7099 (undefined!7911 Bool) (index!30765 (_ BitVec 32)) (x!61795 (_ BitVec 32))) (Undefined!7099) (MissingVacant!7099 (index!30766 (_ BitVec 32))) )
))
(declare-fun lt!319592 () SeekEntryResult!7099)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719519 (= res!482055 (or (= lt!319592 (MissingZero!7099 i!1173)) (= lt!319592 (MissingVacant!7099 i!1173))))))

(declare-datatypes ((array!40740 0))(
  ( (array!40741 (arr!19492 (Array (_ BitVec 32) (_ BitVec 64))) (size!19913 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40740)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40740 (_ BitVec 32)) SeekEntryResult!7099)

(assert (=> b!719519 (= lt!319592 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719520 () Bool)

(declare-fun res!482058 () Bool)

(assert (=> b!719520 (=> (not res!482058) (not e!403721))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719520 (= res!482058 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19913 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19913 a!3186))))))

(declare-fun b!719521 () Bool)

(declare-fun res!482059 () Bool)

(assert (=> b!719521 (=> (not res!482059) (not e!403722))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!719521 (= res!482059 (and (= (size!19913 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19913 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19913 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719522 () Bool)

(declare-fun res!482057 () Bool)

(assert (=> b!719522 (=> (not res!482057) (not e!403721))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40740 (_ BitVec 32)) Bool)

(assert (=> b!719522 (= res!482057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!482061 () Bool)

(assert (=> start!64092 (=> (not res!482061) (not e!403722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64092 (= res!482061 (validMask!0 mask!3328))))

(assert (=> start!64092 e!403722))

(assert (=> start!64092 true))

(declare-fun array_inv!15266 (array!40740) Bool)

(assert (=> start!64092 (array_inv!15266 a!3186)))

(declare-fun b!719523 () Bool)

(assert (=> b!719523 (= e!403721 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19492 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsgt x!1131 resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!719524 () Bool)

(declare-fun res!482054 () Bool)

(assert (=> b!719524 (=> (not res!482054) (not e!403722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719524 (= res!482054 (validKeyInArray!0 (select (arr!19492 a!3186) j!159)))))

(declare-fun b!719525 () Bool)

(declare-fun res!482056 () Bool)

(assert (=> b!719525 (=> (not res!482056) (not e!403722))))

(declare-fun arrayContainsKey!0 (array!40740 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719525 (= res!482056 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719526 () Bool)

(declare-fun res!482060 () Bool)

(assert (=> b!719526 (=> (not res!482060) (not e!403721))))

(declare-datatypes ((List!13547 0))(
  ( (Nil!13544) (Cons!13543 (h!14591 (_ BitVec 64)) (t!19870 List!13547)) )
))
(declare-fun arrayNoDuplicates!0 (array!40740 (_ BitVec 32) List!13547) Bool)

(assert (=> b!719526 (= res!482060 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13544))))

(declare-fun b!719527 () Bool)

(declare-fun res!482052 () Bool)

(assert (=> b!719527 (=> (not res!482052) (not e!403721))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40740 (_ BitVec 32)) SeekEntryResult!7099)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719527 (= res!482052 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19492 a!3186) j!159) mask!3328) (select (arr!19492 a!3186) j!159) a!3186 mask!3328) (Intermediate!7099 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!719528 () Bool)

(declare-fun res!482053 () Bool)

(assert (=> b!719528 (=> (not res!482053) (not e!403722))))

(assert (=> b!719528 (= res!482053 (validKeyInArray!0 k0!2102))))

(assert (= (and start!64092 res!482061) b!719521))

(assert (= (and b!719521 res!482059) b!719524))

(assert (= (and b!719524 res!482054) b!719528))

(assert (= (and b!719528 res!482053) b!719525))

(assert (= (and b!719525 res!482056) b!719519))

(assert (= (and b!719519 res!482055) b!719522))

(assert (= (and b!719522 res!482057) b!719526))

(assert (= (and b!719526 res!482060) b!719520))

(assert (= (and b!719520 res!482058) b!719527))

(assert (= (and b!719527 res!482052) b!719523))

(declare-fun m!674983 () Bool)

(assert (=> b!719527 m!674983))

(assert (=> b!719527 m!674983))

(declare-fun m!674985 () Bool)

(assert (=> b!719527 m!674985))

(assert (=> b!719527 m!674985))

(assert (=> b!719527 m!674983))

(declare-fun m!674987 () Bool)

(assert (=> b!719527 m!674987))

(declare-fun m!674989 () Bool)

(assert (=> b!719528 m!674989))

(declare-fun m!674991 () Bool)

(assert (=> b!719526 m!674991))

(declare-fun m!674993 () Bool)

(assert (=> b!719523 m!674993))

(declare-fun m!674995 () Bool)

(assert (=> b!719525 m!674995))

(assert (=> b!719524 m!674983))

(assert (=> b!719524 m!674983))

(declare-fun m!674997 () Bool)

(assert (=> b!719524 m!674997))

(declare-fun m!674999 () Bool)

(assert (=> b!719522 m!674999))

(declare-fun m!675001 () Bool)

(assert (=> b!719519 m!675001))

(declare-fun m!675003 () Bool)

(assert (=> start!64092 m!675003))

(declare-fun m!675005 () Bool)

(assert (=> start!64092 m!675005))

(check-sat (not b!719526) (not b!719519) (not b!719525) (not b!719522) (not b!719524) (not start!64092) (not b!719527) (not b!719528))
(check-sat)
