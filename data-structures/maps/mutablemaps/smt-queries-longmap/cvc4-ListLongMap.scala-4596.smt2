; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64112 () Bool)

(assert start!64112)

(declare-fun b!719802 () Bool)

(declare-fun res!482335 () Bool)

(declare-fun e!403811 () Bool)

(assert (=> b!719802 (=> (not res!482335) (not e!403811))))

(declare-datatypes ((array!40760 0))(
  ( (array!40761 (arr!19502 (Array (_ BitVec 32) (_ BitVec 64))) (size!19923 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40760)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40760 (_ BitVec 32)) Bool)

(assert (=> b!719802 (= res!482335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719803 () Bool)

(declare-fun res!482343 () Bool)

(declare-fun e!403810 () Bool)

(assert (=> b!719803 (=> (not res!482343) (not e!403810))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719803 (= res!482343 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719804 () Bool)

(declare-fun res!482341 () Bool)

(assert (=> b!719804 (=> (not res!482341) (not e!403811))))

(declare-datatypes ((List!13557 0))(
  ( (Nil!13554) (Cons!13553 (h!14601 (_ BitVec 64)) (t!19880 List!13557)) )
))
(declare-fun arrayNoDuplicates!0 (array!40760 (_ BitVec 32) List!13557) Bool)

(assert (=> b!719804 (= res!482341 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13554))))

(declare-fun res!482338 () Bool)

(assert (=> start!64112 (=> (not res!482338) (not e!403810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64112 (= res!482338 (validMask!0 mask!3328))))

(assert (=> start!64112 e!403810))

(assert (=> start!64112 true))

(declare-fun array_inv!15276 (array!40760) Bool)

(assert (=> start!64112 (array_inv!15276 a!3186)))

(declare-fun b!719805 () Bool)

(assert (=> b!719805 (= e!403811 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7109 0))(
  ( (MissingZero!7109 (index!30803 (_ BitVec 32))) (Found!7109 (index!30804 (_ BitVec 32))) (Intermediate!7109 (undefined!7921 Bool) (index!30805 (_ BitVec 32)) (x!61829 (_ BitVec 32))) (Undefined!7109) (MissingVacant!7109 (index!30806 (_ BitVec 32))) )
))
(declare-fun lt!319640 () SeekEntryResult!7109)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40760 (_ BitVec 32)) SeekEntryResult!7109)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719805 (= lt!319640 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19502 a!3186) j!159) mask!3328) (select (arr!19502 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719806 () Bool)

(declare-fun res!482342 () Bool)

(assert (=> b!719806 (=> (not res!482342) (not e!403810))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719806 (= res!482342 (and (= (size!19923 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19923 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19923 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719807 () Bool)

(declare-fun res!482336 () Bool)

(assert (=> b!719807 (=> (not res!482336) (not e!403810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719807 (= res!482336 (validKeyInArray!0 (select (arr!19502 a!3186) j!159)))))

(declare-fun b!719808 () Bool)

(assert (=> b!719808 (= e!403810 e!403811)))

(declare-fun res!482339 () Bool)

(assert (=> b!719808 (=> (not res!482339) (not e!403811))))

(declare-fun lt!319639 () SeekEntryResult!7109)

(assert (=> b!719808 (= res!482339 (or (= lt!319639 (MissingZero!7109 i!1173)) (= lt!319639 (MissingVacant!7109 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40760 (_ BitVec 32)) SeekEntryResult!7109)

(assert (=> b!719808 (= lt!319639 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719809 () Bool)

(declare-fun res!482340 () Bool)

(assert (=> b!719809 (=> (not res!482340) (not e!403810))))

(assert (=> b!719809 (= res!482340 (validKeyInArray!0 k!2102))))

(declare-fun b!719810 () Bool)

(declare-fun res!482337 () Bool)

(assert (=> b!719810 (=> (not res!482337) (not e!403811))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719810 (= res!482337 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19923 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19923 a!3186))))))

(assert (= (and start!64112 res!482338) b!719806))

(assert (= (and b!719806 res!482342) b!719807))

(assert (= (and b!719807 res!482336) b!719809))

(assert (= (and b!719809 res!482340) b!719803))

(assert (= (and b!719803 res!482343) b!719808))

(assert (= (and b!719808 res!482339) b!719802))

(assert (= (and b!719802 res!482335) b!719804))

(assert (= (and b!719804 res!482341) b!719810))

(assert (= (and b!719810 res!482337) b!719805))

(declare-fun m!675213 () Bool)

(assert (=> b!719803 m!675213))

(declare-fun m!675215 () Bool)

(assert (=> b!719802 m!675215))

(declare-fun m!675217 () Bool)

(assert (=> b!719804 m!675217))

(declare-fun m!675219 () Bool)

(assert (=> b!719805 m!675219))

(assert (=> b!719805 m!675219))

(declare-fun m!675221 () Bool)

(assert (=> b!719805 m!675221))

(assert (=> b!719805 m!675221))

(assert (=> b!719805 m!675219))

(declare-fun m!675223 () Bool)

(assert (=> b!719805 m!675223))

(assert (=> b!719807 m!675219))

(assert (=> b!719807 m!675219))

(declare-fun m!675225 () Bool)

(assert (=> b!719807 m!675225))

(declare-fun m!675227 () Bool)

(assert (=> b!719809 m!675227))

(declare-fun m!675229 () Bool)

(assert (=> b!719808 m!675229))

(declare-fun m!675231 () Bool)

(assert (=> start!64112 m!675231))

(declare-fun m!675233 () Bool)

(assert (=> start!64112 m!675233))

(push 1)

(assert (not b!719808))

(assert (not b!719802))

(assert (not b!719807))

(assert (not b!719809))

(assert (not b!719803))

(assert (not b!719805))

(assert (not start!64112))

(assert (not b!719804))

(check-sat)

