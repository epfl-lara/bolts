; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64388 () Bool)

(assert start!64388)

(declare-fun b!723719 () Bool)

(declare-fun res!485390 () Bool)

(declare-fun e!405430 () Bool)

(assert (=> b!723719 (=> (not res!485390) (not e!405430))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723719 (= res!485390 (validKeyInArray!0 k!2102))))

(declare-fun b!723720 () Bool)

(declare-fun res!485386 () Bool)

(assert (=> b!723720 (=> (not res!485386) (not e!405430))))

(declare-datatypes ((array!40922 0))(
  ( (array!40923 (arr!19580 (Array (_ BitVec 32) (_ BitVec 64))) (size!20001 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40922)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!723720 (= res!485386 (validKeyInArray!0 (select (arr!19580 a!3186) j!159)))))

(declare-fun b!723721 () Bool)

(declare-fun e!405435 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!723721 (= e!405435 (not (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun e!405429 () Bool)

(assert (=> b!723721 e!405429))

(declare-fun res!485391 () Bool)

(assert (=> b!723721 (=> (not res!485391) (not e!405429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40922 (_ BitVec 32)) Bool)

(assert (=> b!723721 (= res!485391 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24692 0))(
  ( (Unit!24693) )
))
(declare-fun lt!320764 () Unit!24692)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40922 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24692)

(assert (=> b!723721 (= lt!320764 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!405433 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!723722 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7187 0))(
  ( (MissingZero!7187 (index!31115 (_ BitVec 32))) (Found!7187 (index!31116 (_ BitVec 32))) (Intermediate!7187 (undefined!7999 Bool) (index!31117 (_ BitVec 32)) (x!62133 (_ BitVec 32))) (Undefined!7187) (MissingVacant!7187 (index!31118 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40922 (_ BitVec 32)) SeekEntryResult!7187)

(assert (=> b!723722 (= e!405433 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19580 a!3186) j!159) a!3186 mask!3328) (Found!7187 j!159)))))

(declare-fun b!723723 () Bool)

(declare-fun res!485380 () Bool)

(declare-fun e!405431 () Bool)

(assert (=> b!723723 (=> (not res!485380) (not e!405431))))

(assert (=> b!723723 (= res!485380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723724 () Bool)

(declare-fun res!485384 () Bool)

(declare-fun e!405432 () Bool)

(assert (=> b!723724 (=> (not res!485384) (not e!405432))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723724 (= res!485384 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19580 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723725 () Bool)

(declare-fun res!485382 () Bool)

(assert (=> b!723725 (=> (not res!485382) (not e!405431))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723725 (= res!485382 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20001 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20001 a!3186))))))

(declare-fun b!723726 () Bool)

(assert (=> b!723726 (= e!405432 e!405435)))

(declare-fun res!485387 () Bool)

(assert (=> b!723726 (=> (not res!485387) (not e!405435))))

(declare-fun lt!320761 () (_ BitVec 64))

(declare-fun lt!320765 () array!40922)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40922 (_ BitVec 32)) SeekEntryResult!7187)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723726 (= res!485387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320761 mask!3328) lt!320761 lt!320765 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320761 lt!320765 mask!3328)))))

(assert (=> b!723726 (= lt!320761 (select (store (arr!19580 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723726 (= lt!320765 (array!40923 (store (arr!19580 a!3186) i!1173 k!2102) (size!20001 a!3186)))))

(declare-fun res!485383 () Bool)

(assert (=> start!64388 (=> (not res!485383) (not e!405430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64388 (= res!485383 (validMask!0 mask!3328))))

(assert (=> start!64388 e!405430))

(assert (=> start!64388 true))

(declare-fun array_inv!15354 (array!40922) Bool)

(assert (=> start!64388 (array_inv!15354 a!3186)))

(declare-fun b!723727 () Bool)

(assert (=> b!723727 (= e!405431 e!405432)))

(declare-fun res!485389 () Bool)

(assert (=> b!723727 (=> (not res!485389) (not e!405432))))

(declare-fun lt!320763 () SeekEntryResult!7187)

(assert (=> b!723727 (= res!485389 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19580 a!3186) j!159) mask!3328) (select (arr!19580 a!3186) j!159) a!3186 mask!3328) lt!320763))))

(assert (=> b!723727 (= lt!320763 (Intermediate!7187 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723728 () Bool)

(assert (=> b!723728 (= e!405430 e!405431)))

(declare-fun res!485388 () Bool)

(assert (=> b!723728 (=> (not res!485388) (not e!405431))))

(declare-fun lt!320762 () SeekEntryResult!7187)

(assert (=> b!723728 (= res!485388 (or (= lt!320762 (MissingZero!7187 i!1173)) (= lt!320762 (MissingVacant!7187 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40922 (_ BitVec 32)) SeekEntryResult!7187)

(assert (=> b!723728 (= lt!320762 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723729 () Bool)

(declare-fun res!485385 () Bool)

(assert (=> b!723729 (=> (not res!485385) (not e!405430))))

(assert (=> b!723729 (= res!485385 (and (= (size!20001 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20001 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20001 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723730 () Bool)

(declare-fun res!485381 () Bool)

(assert (=> b!723730 (=> (not res!485381) (not e!405432))))

(assert (=> b!723730 (= res!485381 e!405433)))

(declare-fun c!79542 () Bool)

(assert (=> b!723730 (= c!79542 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723731 () Bool)

(declare-fun res!485379 () Bool)

(assert (=> b!723731 (=> (not res!485379) (not e!405430))))

(declare-fun arrayContainsKey!0 (array!40922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723731 (= res!485379 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723732 () Bool)

(assert (=> b!723732 (= e!405433 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19580 a!3186) j!159) a!3186 mask!3328) lt!320763))))

(declare-fun b!723733 () Bool)

(assert (=> b!723733 (= e!405429 (= (seekEntryOrOpen!0 (select (arr!19580 a!3186) j!159) a!3186 mask!3328) (Found!7187 j!159)))))

(declare-fun b!723734 () Bool)

(declare-fun res!485378 () Bool)

(assert (=> b!723734 (=> (not res!485378) (not e!405431))))

(declare-datatypes ((List!13635 0))(
  ( (Nil!13632) (Cons!13631 (h!14685 (_ BitVec 64)) (t!19958 List!13635)) )
))
(declare-fun arrayNoDuplicates!0 (array!40922 (_ BitVec 32) List!13635) Bool)

(assert (=> b!723734 (= res!485378 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13632))))

(assert (= (and start!64388 res!485383) b!723729))

(assert (= (and b!723729 res!485385) b!723720))

(assert (= (and b!723720 res!485386) b!723719))

(assert (= (and b!723719 res!485390) b!723731))

(assert (= (and b!723731 res!485379) b!723728))

(assert (= (and b!723728 res!485388) b!723723))

(assert (= (and b!723723 res!485380) b!723734))

(assert (= (and b!723734 res!485378) b!723725))

(assert (= (and b!723725 res!485382) b!723727))

(assert (= (and b!723727 res!485389) b!723724))

(assert (= (and b!723724 res!485384) b!723730))

(assert (= (and b!723730 c!79542) b!723732))

(assert (= (and b!723730 (not c!79542)) b!723722))

(assert (= (and b!723730 res!485381) b!723726))

(assert (= (and b!723726 res!485387) b!723721))

(assert (= (and b!723721 res!485391) b!723733))

(declare-fun m!678227 () Bool)

(assert (=> b!723732 m!678227))

(assert (=> b!723732 m!678227))

(declare-fun m!678229 () Bool)

(assert (=> b!723732 m!678229))

(declare-fun m!678231 () Bool)

(assert (=> start!64388 m!678231))

(declare-fun m!678233 () Bool)

(assert (=> start!64388 m!678233))

(assert (=> b!723722 m!678227))

(assert (=> b!723722 m!678227))

(declare-fun m!678235 () Bool)

(assert (=> b!723722 m!678235))

(declare-fun m!678237 () Bool)

(assert (=> b!723721 m!678237))

(declare-fun m!678239 () Bool)

(assert (=> b!723721 m!678239))

(declare-fun m!678241 () Bool)

(assert (=> b!723724 m!678241))

(assert (=> b!723727 m!678227))

(assert (=> b!723727 m!678227))

(declare-fun m!678243 () Bool)

(assert (=> b!723727 m!678243))

(assert (=> b!723727 m!678243))

(assert (=> b!723727 m!678227))

(declare-fun m!678245 () Bool)

(assert (=> b!723727 m!678245))

(declare-fun m!678247 () Bool)

(assert (=> b!723734 m!678247))

(declare-fun m!678249 () Bool)

(assert (=> b!723723 m!678249))

(declare-fun m!678251 () Bool)

(assert (=> b!723728 m!678251))

(assert (=> b!723733 m!678227))

(assert (=> b!723733 m!678227))

(declare-fun m!678253 () Bool)

(assert (=> b!723733 m!678253))

(declare-fun m!678255 () Bool)

(assert (=> b!723719 m!678255))

(assert (=> b!723720 m!678227))

(assert (=> b!723720 m!678227))

(declare-fun m!678257 () Bool)

(assert (=> b!723720 m!678257))

(declare-fun m!678259 () Bool)

(assert (=> b!723726 m!678259))

(declare-fun m!678261 () Bool)

(assert (=> b!723726 m!678261))

(declare-fun m!678263 () Bool)

(assert (=> b!723726 m!678263))

(declare-fun m!678265 () Bool)

(assert (=> b!723726 m!678265))

(assert (=> b!723726 m!678259))

(declare-fun m!678267 () Bool)

(assert (=> b!723726 m!678267))

(declare-fun m!678269 () Bool)

(assert (=> b!723731 m!678269))

(push 1)

(assert (not b!723723))

(assert (not b!723732))

(assert (not start!64388))

(assert (not b!723726))

