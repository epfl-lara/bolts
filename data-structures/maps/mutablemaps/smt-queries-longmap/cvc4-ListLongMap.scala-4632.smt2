; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64514 () Bool)

(assert start!64514)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40985 0))(
  ( (array!40986 (arr!19610 (Array (_ BitVec 32) (_ BitVec 64))) (size!20031 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40985)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7217 0))(
  ( (MissingZero!7217 (index!31235 (_ BitVec 32))) (Found!7217 (index!31236 (_ BitVec 32))) (Intermediate!7217 (undefined!8029 Bool) (index!31237 (_ BitVec 32)) (x!62252 (_ BitVec 32))) (Undefined!7217) (MissingVacant!7217 (index!31238 (_ BitVec 32))) )
))
(declare-fun lt!321406 () SeekEntryResult!7217)

(declare-fun e!406341 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!725593 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40985 (_ BitVec 32)) SeekEntryResult!7217)

(assert (=> b!725593 (= e!406341 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19610 a!3186) j!159) a!3186 mask!3328) lt!321406))))

(declare-fun b!725594 () Bool)

(declare-fun res!486811 () Bool)

(declare-fun e!406342 () Bool)

(assert (=> b!725594 (=> (not res!486811) (not e!406342))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!725594 (= res!486811 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20031 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20031 a!3186))))))

(declare-fun b!725596 () Bool)

(declare-fun e!406337 () Bool)

(declare-fun lt!321405 () SeekEntryResult!7217)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40985 (_ BitVec 32)) SeekEntryResult!7217)

(assert (=> b!725596 (= e!406337 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19610 a!3186) j!159) a!3186 mask!3328) lt!321405))))

(declare-fun b!725597 () Bool)

(declare-fun res!486807 () Bool)

(declare-fun e!406338 () Bool)

(assert (=> b!725597 (=> (not res!486807) (not e!406338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725597 (= res!486807 (validKeyInArray!0 (select (arr!19610 a!3186) j!159)))))

(declare-fun b!725598 () Bool)

(assert (=> b!725598 (= e!406337 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19610 a!3186) j!159) a!3186 mask!3328) (Found!7217 j!159)))))

(declare-fun b!725599 () Bool)

(declare-fun res!486800 () Bool)

(assert (=> b!725599 (=> (not res!486800) (not e!406338))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725599 (= res!486800 (and (= (size!20031 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20031 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20031 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725600 () Bool)

(declare-fun res!486799 () Bool)

(assert (=> b!725600 (=> (not res!486799) (not e!406338))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!725600 (= res!486799 (validKeyInArray!0 k!2102))))

(declare-fun b!725601 () Bool)

(declare-fun res!486802 () Bool)

(assert (=> b!725601 (=> (not res!486802) (not e!406338))))

(declare-fun arrayContainsKey!0 (array!40985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725601 (= res!486802 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725602 () Bool)

(assert (=> b!725602 (= e!406338 e!406342)))

(declare-fun res!486801 () Bool)

(assert (=> b!725602 (=> (not res!486801) (not e!406342))))

(declare-fun lt!321410 () SeekEntryResult!7217)

(assert (=> b!725602 (= res!486801 (or (= lt!321410 (MissingZero!7217 i!1173)) (= lt!321410 (MissingVacant!7217 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40985 (_ BitVec 32)) SeekEntryResult!7217)

(assert (=> b!725602 (= lt!321410 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725603 () Bool)

(declare-fun e!406339 () Bool)

(assert (=> b!725603 (= e!406339 (not (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun e!406344 () Bool)

(assert (=> b!725603 e!406344))

(declare-fun res!486804 () Bool)

(assert (=> b!725603 (=> (not res!486804) (not e!406344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40985 (_ BitVec 32)) Bool)

(assert (=> b!725603 (= res!486804 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24752 0))(
  ( (Unit!24753) )
))
(declare-fun lt!321409 () Unit!24752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40985 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24752)

(assert (=> b!725603 (= lt!321409 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725595 () Bool)

(declare-fun res!486812 () Bool)

(assert (=> b!725595 (=> (not res!486812) (not e!406342))))

(assert (=> b!725595 (= res!486812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!486813 () Bool)

(assert (=> start!64514 (=> (not res!486813) (not e!406338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64514 (= res!486813 (validMask!0 mask!3328))))

(assert (=> start!64514 e!406338))

(assert (=> start!64514 true))

(declare-fun array_inv!15384 (array!40985) Bool)

(assert (=> start!64514 (array_inv!15384 a!3186)))

(declare-fun b!725604 () Bool)

(declare-fun res!486810 () Bool)

(declare-fun e!406343 () Bool)

(assert (=> b!725604 (=> (not res!486810) (not e!406343))))

(assert (=> b!725604 (= res!486810 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19610 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725605 () Bool)

(declare-fun res!486806 () Bool)

(assert (=> b!725605 (=> (not res!486806) (not e!406343))))

(assert (=> b!725605 (= res!486806 e!406337)))

(declare-fun c!79770 () Bool)

(assert (=> b!725605 (= c!79770 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725606 () Bool)

(assert (=> b!725606 (= e!406342 e!406343)))

(declare-fun res!486809 () Bool)

(assert (=> b!725606 (=> (not res!486809) (not e!406343))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725606 (= res!486809 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19610 a!3186) j!159) mask!3328) (select (arr!19610 a!3186) j!159) a!3186 mask!3328) lt!321405))))

(assert (=> b!725606 (= lt!321405 (Intermediate!7217 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725607 () Bool)

(assert (=> b!725607 (= e!406343 e!406339)))

(declare-fun res!486803 () Bool)

(assert (=> b!725607 (=> (not res!486803) (not e!406339))))

(declare-fun lt!321408 () array!40985)

(declare-fun lt!321407 () (_ BitVec 64))

(assert (=> b!725607 (= res!486803 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321407 mask!3328) lt!321407 lt!321408 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321407 lt!321408 mask!3328)))))

(assert (=> b!725607 (= lt!321407 (select (store (arr!19610 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725607 (= lt!321408 (array!40986 (store (arr!19610 a!3186) i!1173 k!2102) (size!20031 a!3186)))))

(declare-fun b!725608 () Bool)

(assert (=> b!725608 (= e!406344 e!406341)))

(declare-fun res!486808 () Bool)

(assert (=> b!725608 (=> (not res!486808) (not e!406341))))

(assert (=> b!725608 (= res!486808 (= (seekEntryOrOpen!0 (select (arr!19610 a!3186) j!159) a!3186 mask!3328) lt!321406))))

(assert (=> b!725608 (= lt!321406 (Found!7217 j!159))))

(declare-fun b!725609 () Bool)

(declare-fun res!486805 () Bool)

(assert (=> b!725609 (=> (not res!486805) (not e!406342))))

(declare-datatypes ((List!13665 0))(
  ( (Nil!13662) (Cons!13661 (h!14718 (_ BitVec 64)) (t!19988 List!13665)) )
))
(declare-fun arrayNoDuplicates!0 (array!40985 (_ BitVec 32) List!13665) Bool)

(assert (=> b!725609 (= res!486805 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13662))))

(assert (= (and start!64514 res!486813) b!725599))

(assert (= (and b!725599 res!486800) b!725597))

(assert (= (and b!725597 res!486807) b!725600))

(assert (= (and b!725600 res!486799) b!725601))

(assert (= (and b!725601 res!486802) b!725602))

(assert (= (and b!725602 res!486801) b!725595))

(assert (= (and b!725595 res!486812) b!725609))

(assert (= (and b!725609 res!486805) b!725594))

(assert (= (and b!725594 res!486811) b!725606))

(assert (= (and b!725606 res!486809) b!725604))

(assert (= (and b!725604 res!486810) b!725605))

(assert (= (and b!725605 c!79770) b!725596))

(assert (= (and b!725605 (not c!79770)) b!725598))

(assert (= (and b!725605 res!486806) b!725607))

(assert (= (and b!725607 res!486803) b!725603))

(assert (= (and b!725603 res!486804) b!725608))

(assert (= (and b!725608 res!486808) b!725593))

(declare-fun m!679827 () Bool)

(assert (=> b!725608 m!679827))

(assert (=> b!725608 m!679827))

(declare-fun m!679829 () Bool)

(assert (=> b!725608 m!679829))

(declare-fun m!679831 () Bool)

(assert (=> b!725607 m!679831))

(declare-fun m!679833 () Bool)

(assert (=> b!725607 m!679833))

(declare-fun m!679835 () Bool)

(assert (=> b!725607 m!679835))

(declare-fun m!679837 () Bool)

(assert (=> b!725607 m!679837))

(declare-fun m!679839 () Bool)

(assert (=> b!725607 m!679839))

(assert (=> b!725607 m!679833))

(assert (=> b!725598 m!679827))

(assert (=> b!725598 m!679827))

(declare-fun m!679841 () Bool)

(assert (=> b!725598 m!679841))

(assert (=> b!725596 m!679827))

(assert (=> b!725596 m!679827))

(declare-fun m!679843 () Bool)

(assert (=> b!725596 m!679843))

(assert (=> b!725597 m!679827))

(assert (=> b!725597 m!679827))

(declare-fun m!679845 () Bool)

(assert (=> b!725597 m!679845))

(declare-fun m!679847 () Bool)

(assert (=> b!725600 m!679847))

(declare-fun m!679849 () Bool)

(assert (=> b!725603 m!679849))

(declare-fun m!679851 () Bool)

(assert (=> b!725603 m!679851))

(declare-fun m!679853 () Bool)

(assert (=> b!725595 m!679853))

(declare-fun m!679855 () Bool)

(assert (=> b!725609 m!679855))

(declare-fun m!679857 () Bool)

(assert (=> b!725604 m!679857))

(assert (=> b!725606 m!679827))

(assert (=> b!725606 m!679827))

(declare-fun m!679859 () Bool)

(assert (=> b!725606 m!679859))

(assert (=> b!725606 m!679859))

(assert (=> b!725606 m!679827))

(declare-fun m!679861 () Bool)

(assert (=> b!725606 m!679861))

(declare-fun m!679863 () Bool)

(assert (=> b!725602 m!679863))

(assert (=> b!725593 m!679827))

(assert (=> b!725593 m!679827))

(declare-fun m!679865 () Bool)

(assert (=> b!725593 m!679865))

(declare-fun m!679867 () Bool)

(assert (=> b!725601 m!679867))

(declare-fun m!679869 () Bool)

(assert (=> start!64514 m!679869))

(declare-fun m!679871 () Bool)

(assert (=> start!64514 m!679871))

(push 1)

(assert (not b!725593))

(assert (not b!725596))

(assert (not b!725603))

(assert (not b!725601))

(assert (not b!725600))

(assert (not start!64514))

(assert (not b!725602))

(assert (not b!725597))

(assert (not b!725608))

(assert (not b!725607))

(assert (not b!725595))

(assert (not b!725606))

(assert (not b!725598))

(assert (not b!725609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

