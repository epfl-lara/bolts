; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65132 () Bool)

(assert start!65132)

(declare-fun b!734804 () Bool)

(declare-fun res!493791 () Bool)

(declare-fun e!411168 () Bool)

(assert (=> b!734804 (=> (not res!493791) (not e!411168))))

(declare-datatypes ((array!41258 0))(
  ( (array!41259 (arr!19739 (Array (_ BitVec 32) (_ BitVec 64))) (size!20160 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41258)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!734804 (= res!493791 (and (= (size!20160 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20160 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20160 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!734805 () Bool)

(declare-fun res!493781 () Bool)

(declare-fun e!411171 () Bool)

(assert (=> b!734805 (=> (not res!493781) (not e!411171))))

(declare-fun e!411174 () Bool)

(assert (=> b!734805 (= res!493781 e!411174)))

(declare-fun c!80892 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!734805 (= c!80892 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!734806 () Bool)

(declare-fun e!411177 () Bool)

(assert (=> b!734806 (= e!411177 e!411171)))

(declare-fun res!493790 () Bool)

(assert (=> b!734806 (=> (not res!493790) (not e!411171))))

(declare-datatypes ((SeekEntryResult!7346 0))(
  ( (MissingZero!7346 (index!31751 (_ BitVec 32))) (Found!7346 (index!31752 (_ BitVec 32))) (Intermediate!7346 (undefined!8158 Bool) (index!31753 (_ BitVec 32)) (x!62785 (_ BitVec 32))) (Undefined!7346) (MissingVacant!7346 (index!31754 (_ BitVec 32))) )
))
(declare-fun lt!325695 () SeekEntryResult!7346)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41258 (_ BitVec 32)) SeekEntryResult!7346)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734806 (= res!493790 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19739 a!3186) j!159) mask!3328) (select (arr!19739 a!3186) j!159) a!3186 mask!3328) lt!325695))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!734806 (= lt!325695 (Intermediate!7346 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!734807 () Bool)

(declare-fun res!493793 () Bool)

(assert (=> b!734807 (=> (not res!493793) (not e!411177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41258 (_ BitVec 32)) Bool)

(assert (=> b!734807 (= res!493793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!734808 () Bool)

(declare-fun res!493792 () Bool)

(assert (=> b!734808 (=> (not res!493792) (not e!411168))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!734808 (= res!493792 (validKeyInArray!0 k!2102))))

(declare-fun b!734809 () Bool)

(declare-fun e!411170 () Bool)

(assert (=> b!734809 (= e!411170 true)))

(declare-fun lt!325700 () SeekEntryResult!7346)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41258 (_ BitVec 32)) SeekEntryResult!7346)

(assert (=> b!734809 (= lt!325700 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19739 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734810 () Bool)

(declare-fun e!411169 () Bool)

(declare-fun e!411172 () Bool)

(assert (=> b!734810 (= e!411169 e!411172)))

(declare-fun res!493782 () Bool)

(assert (=> b!734810 (=> (not res!493782) (not e!411172))))

(declare-fun lt!325698 () SeekEntryResult!7346)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41258 (_ BitVec 32)) SeekEntryResult!7346)

(assert (=> b!734810 (= res!493782 (= (seekEntryOrOpen!0 (select (arr!19739 a!3186) j!159) a!3186 mask!3328) lt!325698))))

(assert (=> b!734810 (= lt!325698 (Found!7346 j!159))))

(declare-fun b!734812 () Bool)

(assert (=> b!734812 (= e!411174 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19739 a!3186) j!159) a!3186 mask!3328) (Found!7346 j!159)))))

(declare-fun b!734813 () Bool)

(declare-fun res!493786 () Bool)

(assert (=> b!734813 (=> (not res!493786) (not e!411168))))

(declare-fun arrayContainsKey!0 (array!41258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!734813 (= res!493786 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!734814 () Bool)

(declare-fun e!411173 () Bool)

(declare-fun e!411176 () Bool)

(assert (=> b!734814 (= e!411173 (not e!411176))))

(declare-fun res!493784 () Bool)

(assert (=> b!734814 (=> res!493784 e!411176)))

(declare-fun lt!325693 () SeekEntryResult!7346)

(assert (=> b!734814 (= res!493784 (or (not (is-Intermediate!7346 lt!325693)) (bvsge x!1131 (x!62785 lt!325693))))))

(assert (=> b!734814 e!411169))

(declare-fun res!493783 () Bool)

(assert (=> b!734814 (=> (not res!493783) (not e!411169))))

(assert (=> b!734814 (= res!493783 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25010 0))(
  ( (Unit!25011) )
))
(declare-fun lt!325696 () Unit!25010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41258 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25010)

(assert (=> b!734814 (= lt!325696 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!734815 () Bool)

(declare-fun res!493797 () Bool)

(assert (=> b!734815 (=> (not res!493797) (not e!411171))))

(assert (=> b!734815 (= res!493797 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19739 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734816 () Bool)

(assert (=> b!734816 (= e!411172 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19739 a!3186) j!159) a!3186 mask!3328) lt!325698))))

(declare-fun b!734817 () Bool)

(assert (=> b!734817 (= e!411176 e!411170)))

(declare-fun res!493789 () Bool)

(assert (=> b!734817 (=> res!493789 e!411170)))

(assert (=> b!734817 (= res!493789 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!325699 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734817 (= lt!325699 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!734818 () Bool)

(declare-fun res!493788 () Bool)

(assert (=> b!734818 (=> (not res!493788) (not e!411177))))

(declare-datatypes ((List!13794 0))(
  ( (Nil!13791) (Cons!13790 (h!14862 (_ BitVec 64)) (t!20117 List!13794)) )
))
(declare-fun arrayNoDuplicates!0 (array!41258 (_ BitVec 32) List!13794) Bool)

(assert (=> b!734818 (= res!493788 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13791))))

(declare-fun b!734819 () Bool)

(declare-fun res!493785 () Bool)

(assert (=> b!734819 (=> (not res!493785) (not e!411168))))

(assert (=> b!734819 (= res!493785 (validKeyInArray!0 (select (arr!19739 a!3186) j!159)))))

(declare-fun b!734820 () Bool)

(declare-fun res!493794 () Bool)

(assert (=> b!734820 (=> (not res!493794) (not e!411177))))

(assert (=> b!734820 (= res!493794 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20160 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20160 a!3186))))))

(declare-fun res!493795 () Bool)

(assert (=> start!65132 (=> (not res!493795) (not e!411168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65132 (= res!493795 (validMask!0 mask!3328))))

(assert (=> start!65132 e!411168))

(assert (=> start!65132 true))

(declare-fun array_inv!15513 (array!41258) Bool)

(assert (=> start!65132 (array_inv!15513 a!3186)))

(declare-fun b!734811 () Bool)

(assert (=> b!734811 (= e!411168 e!411177)))

(declare-fun res!493787 () Bool)

(assert (=> b!734811 (=> (not res!493787) (not e!411177))))

(declare-fun lt!325691 () SeekEntryResult!7346)

(assert (=> b!734811 (= res!493787 (or (= lt!325691 (MissingZero!7346 i!1173)) (= lt!325691 (MissingVacant!7346 i!1173))))))

(assert (=> b!734811 (= lt!325691 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!734821 () Bool)

(assert (=> b!734821 (= e!411174 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19739 a!3186) j!159) a!3186 mask!3328) lt!325695))))

(declare-fun b!734822 () Bool)

(assert (=> b!734822 (= e!411171 e!411173)))

(declare-fun res!493796 () Bool)

(assert (=> b!734822 (=> (not res!493796) (not e!411173))))

(declare-fun lt!325697 () SeekEntryResult!7346)

(assert (=> b!734822 (= res!493796 (= lt!325697 lt!325693))))

(declare-fun lt!325692 () array!41258)

(declare-fun lt!325694 () (_ BitVec 64))

(assert (=> b!734822 (= lt!325693 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325694 lt!325692 mask!3328))))

(assert (=> b!734822 (= lt!325697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325694 mask!3328) lt!325694 lt!325692 mask!3328))))

(assert (=> b!734822 (= lt!325694 (select (store (arr!19739 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!734822 (= lt!325692 (array!41259 (store (arr!19739 a!3186) i!1173 k!2102) (size!20160 a!3186)))))

(assert (= (and start!65132 res!493795) b!734804))

(assert (= (and b!734804 res!493791) b!734819))

(assert (= (and b!734819 res!493785) b!734808))

(assert (= (and b!734808 res!493792) b!734813))

(assert (= (and b!734813 res!493786) b!734811))

(assert (= (and b!734811 res!493787) b!734807))

(assert (= (and b!734807 res!493793) b!734818))

(assert (= (and b!734818 res!493788) b!734820))

(assert (= (and b!734820 res!493794) b!734806))

(assert (= (and b!734806 res!493790) b!734815))

(assert (= (and b!734815 res!493797) b!734805))

(assert (= (and b!734805 c!80892) b!734821))

(assert (= (and b!734805 (not c!80892)) b!734812))

(assert (= (and b!734805 res!493781) b!734822))

(assert (= (and b!734822 res!493796) b!734814))

(assert (= (and b!734814 res!493783) b!734810))

(assert (= (and b!734810 res!493782) b!734816))

(assert (= (and b!734814 (not res!493784)) b!734817))

(assert (= (and b!734817 (not res!493789)) b!734809))

(declare-fun m!687397 () Bool)

(assert (=> b!734815 m!687397))

(declare-fun m!687399 () Bool)

(assert (=> b!734806 m!687399))

(assert (=> b!734806 m!687399))

(declare-fun m!687401 () Bool)

(assert (=> b!734806 m!687401))

(assert (=> b!734806 m!687401))

(assert (=> b!734806 m!687399))

(declare-fun m!687403 () Bool)

(assert (=> b!734806 m!687403))

(declare-fun m!687405 () Bool)

(assert (=> b!734817 m!687405))

(declare-fun m!687407 () Bool)

(assert (=> b!734807 m!687407))

(declare-fun m!687409 () Bool)

(assert (=> b!734808 m!687409))

(assert (=> b!734810 m!687399))

(assert (=> b!734810 m!687399))

(declare-fun m!687411 () Bool)

(assert (=> b!734810 m!687411))

(declare-fun m!687413 () Bool)

(assert (=> b!734811 m!687413))

(declare-fun m!687415 () Bool)

(assert (=> b!734813 m!687415))

(assert (=> b!734819 m!687399))

(assert (=> b!734819 m!687399))

(declare-fun m!687417 () Bool)

(assert (=> b!734819 m!687417))

(assert (=> b!734821 m!687399))

(assert (=> b!734821 m!687399))

(declare-fun m!687419 () Bool)

(assert (=> b!734821 m!687419))

(declare-fun m!687421 () Bool)

(assert (=> b!734822 m!687421))

(declare-fun m!687423 () Bool)

(assert (=> b!734822 m!687423))

(declare-fun m!687425 () Bool)

(assert (=> b!734822 m!687425))

(declare-fun m!687427 () Bool)

(assert (=> b!734822 m!687427))

(assert (=> b!734822 m!687427))

(declare-fun m!687429 () Bool)

(assert (=> b!734822 m!687429))

(declare-fun m!687431 () Bool)

(assert (=> b!734818 m!687431))

(assert (=> b!734809 m!687399))

(assert (=> b!734809 m!687399))

(declare-fun m!687433 () Bool)

(assert (=> b!734809 m!687433))

(declare-fun m!687435 () Bool)

(assert (=> b!734814 m!687435))

(declare-fun m!687437 () Bool)

(assert (=> b!734814 m!687437))

(declare-fun m!687439 () Bool)

(assert (=> start!65132 m!687439))

(declare-fun m!687441 () Bool)

(assert (=> start!65132 m!687441))

(assert (=> b!734812 m!687399))

(assert (=> b!734812 m!687399))

(assert (=> b!734812 m!687433))

(assert (=> b!734816 m!687399))

(assert (=> b!734816 m!687399))

(declare-fun m!687443 () Bool)

(assert (=> b!734816 m!687443))

(push 1)

