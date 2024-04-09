; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67196 () Bool)

(assert start!67196)

(declare-fun b!776695 () Bool)

(declare-fun res!525624 () Bool)

(declare-fun e!432211 () Bool)

(assert (=> b!776695 (=> (not res!525624) (not e!432211))))

(declare-datatypes ((array!42506 0))(
  ( (array!42507 (arr!20345 (Array (_ BitVec 32) (_ BitVec 64))) (size!20766 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42506)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42506 (_ BitVec 32)) Bool)

(assert (=> b!776695 (= res!525624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776696 () Bool)

(declare-fun res!525634 () Bool)

(declare-fun e!432215 () Bool)

(assert (=> b!776696 (=> (not res!525634) (not e!432215))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776696 (= res!525634 (validKeyInArray!0 (select (arr!20345 a!3186) j!159)))))

(declare-fun b!776697 () Bool)

(declare-fun res!525625 () Bool)

(assert (=> b!776697 (=> (not res!525625) (not e!432211))))

(declare-datatypes ((List!14400 0))(
  ( (Nil!14397) (Cons!14396 (h!15504 (_ BitVec 64)) (t!20723 List!14400)) )
))
(declare-fun arrayNoDuplicates!0 (array!42506 (_ BitVec 32) List!14400) Bool)

(assert (=> b!776697 (= res!525625 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14397))))

(declare-fun b!776698 () Bool)

(declare-fun res!525629 () Bool)

(assert (=> b!776698 (=> (not res!525629) (not e!432211))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776698 (= res!525629 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20766 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20766 a!3186))))))

(declare-fun b!776699 () Bool)

(declare-fun e!432210 () Bool)

(assert (=> b!776699 (= e!432210 true)))

(declare-datatypes ((SeekEntryResult!7952 0))(
  ( (MissingZero!7952 (index!34175 (_ BitVec 32))) (Found!7952 (index!34176 (_ BitVec 32))) (Intermediate!7952 (undefined!8764 Bool) (index!34177 (_ BitVec 32)) (x!65136 (_ BitVec 32))) (Undefined!7952) (MissingVacant!7952 (index!34178 (_ BitVec 32))) )
))
(declare-fun lt!346080 () SeekEntryResult!7952)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42506 (_ BitVec 32)) SeekEntryResult!7952)

(assert (=> b!776699 (= lt!346080 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20345 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776700 () Bool)

(declare-fun e!432214 () Bool)

(assert (=> b!776700 (= e!432211 e!432214)))

(declare-fun res!525622 () Bool)

(assert (=> b!776700 (=> (not res!525622) (not e!432214))))

(declare-fun lt!346084 () SeekEntryResult!7952)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42506 (_ BitVec 32)) SeekEntryResult!7952)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776700 (= res!525622 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20345 a!3186) j!159) mask!3328) (select (arr!20345 a!3186) j!159) a!3186 mask!3328) lt!346084))))

(assert (=> b!776700 (= lt!346084 (Intermediate!7952 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun lt!346087 () SeekEntryResult!7952)

(declare-fun e!432216 () Bool)

(declare-fun b!776701 () Bool)

(assert (=> b!776701 (= e!432216 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20345 a!3186) j!159) a!3186 mask!3328) lt!346087))))

(declare-fun b!776702 () Bool)

(declare-fun e!432212 () Bool)

(assert (=> b!776702 (= e!432214 e!432212)))

(declare-fun res!525631 () Bool)

(assert (=> b!776702 (=> (not res!525631) (not e!432212))))

(declare-fun lt!346085 () SeekEntryResult!7952)

(declare-fun lt!346086 () SeekEntryResult!7952)

(assert (=> b!776702 (= res!525631 (= lt!346085 lt!346086))))

(declare-fun lt!346083 () array!42506)

(declare-fun lt!346082 () (_ BitVec 64))

(assert (=> b!776702 (= lt!346086 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346082 lt!346083 mask!3328))))

(assert (=> b!776702 (= lt!346085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346082 mask!3328) lt!346082 lt!346083 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!776702 (= lt!346082 (select (store (arr!20345 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!776702 (= lt!346083 (array!42507 (store (arr!20345 a!3186) i!1173 k!2102) (size!20766 a!3186)))))

(declare-fun b!776703 () Bool)

(declare-fun res!525620 () Bool)

(assert (=> b!776703 (=> (not res!525620) (not e!432215))))

(assert (=> b!776703 (= res!525620 (and (= (size!20766 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20766 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20766 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776704 () Bool)

(declare-fun e!432217 () Bool)

(assert (=> b!776704 (= e!432217 e!432216)))

(declare-fun res!525628 () Bool)

(assert (=> b!776704 (=> (not res!525628) (not e!432216))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42506 (_ BitVec 32)) SeekEntryResult!7952)

(assert (=> b!776704 (= res!525628 (= (seekEntryOrOpen!0 (select (arr!20345 a!3186) j!159) a!3186 mask!3328) lt!346087))))

(assert (=> b!776704 (= lt!346087 (Found!7952 j!159))))

(declare-fun b!776705 () Bool)

(declare-fun res!525633 () Bool)

(assert (=> b!776705 (=> (not res!525633) (not e!432214))))

(declare-fun e!432209 () Bool)

(assert (=> b!776705 (= res!525633 e!432209)))

(declare-fun c!85938 () Bool)

(assert (=> b!776705 (= c!85938 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!525627 () Bool)

(assert (=> start!67196 (=> (not res!525627) (not e!432215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67196 (= res!525627 (validMask!0 mask!3328))))

(assert (=> start!67196 e!432215))

(assert (=> start!67196 true))

(declare-fun array_inv!16119 (array!42506) Bool)

(assert (=> start!67196 (array_inv!16119 a!3186)))

(declare-fun b!776706 () Bool)

(assert (=> b!776706 (= e!432209 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20345 a!3186) j!159) a!3186 mask!3328) lt!346084))))

(declare-fun b!776707 () Bool)

(declare-fun res!525632 () Bool)

(assert (=> b!776707 (=> (not res!525632) (not e!432215))))

(assert (=> b!776707 (= res!525632 (validKeyInArray!0 k!2102))))

(declare-fun b!776708 () Bool)

(assert (=> b!776708 (= e!432209 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20345 a!3186) j!159) a!3186 mask!3328) (Found!7952 j!159)))))

(declare-fun b!776709 () Bool)

(assert (=> b!776709 (= e!432212 (not e!432210))))

(declare-fun res!525621 () Bool)

(assert (=> b!776709 (=> res!525621 e!432210)))

(assert (=> b!776709 (= res!525621 (or (not (is-Intermediate!7952 lt!346086)) (bvslt x!1131 (x!65136 lt!346086)) (not (= x!1131 (x!65136 lt!346086))) (not (= index!1321 (index!34177 lt!346086)))))))

(assert (=> b!776709 e!432217))

(declare-fun res!525623 () Bool)

(assert (=> b!776709 (=> (not res!525623) (not e!432217))))

(assert (=> b!776709 (= res!525623 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26798 0))(
  ( (Unit!26799) )
))
(declare-fun lt!346081 () Unit!26798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26798)

(assert (=> b!776709 (= lt!346081 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776710 () Bool)

(declare-fun res!525626 () Bool)

(assert (=> b!776710 (=> (not res!525626) (not e!432214))))

(assert (=> b!776710 (= res!525626 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20345 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776711 () Bool)

(declare-fun res!525630 () Bool)

(assert (=> b!776711 (=> (not res!525630) (not e!432215))))

(declare-fun arrayContainsKey!0 (array!42506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776711 (= res!525630 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776712 () Bool)

(assert (=> b!776712 (= e!432215 e!432211)))

(declare-fun res!525619 () Bool)

(assert (=> b!776712 (=> (not res!525619) (not e!432211))))

(declare-fun lt!346079 () SeekEntryResult!7952)

(assert (=> b!776712 (= res!525619 (or (= lt!346079 (MissingZero!7952 i!1173)) (= lt!346079 (MissingVacant!7952 i!1173))))))

(assert (=> b!776712 (= lt!346079 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!67196 res!525627) b!776703))

(assert (= (and b!776703 res!525620) b!776696))

(assert (= (and b!776696 res!525634) b!776707))

(assert (= (and b!776707 res!525632) b!776711))

(assert (= (and b!776711 res!525630) b!776712))

(assert (= (and b!776712 res!525619) b!776695))

(assert (= (and b!776695 res!525624) b!776697))

(assert (= (and b!776697 res!525625) b!776698))

(assert (= (and b!776698 res!525629) b!776700))

(assert (= (and b!776700 res!525622) b!776710))

(assert (= (and b!776710 res!525626) b!776705))

(assert (= (and b!776705 c!85938) b!776706))

(assert (= (and b!776705 (not c!85938)) b!776708))

(assert (= (and b!776705 res!525633) b!776702))

(assert (= (and b!776702 res!525631) b!776709))

(assert (= (and b!776709 res!525623) b!776704))

(assert (= (and b!776704 res!525628) b!776701))

(assert (= (and b!776709 (not res!525621)) b!776699))

(declare-fun m!720795 () Bool)

(assert (=> b!776712 m!720795))

(declare-fun m!720797 () Bool)

(assert (=> b!776704 m!720797))

(assert (=> b!776704 m!720797))

(declare-fun m!720799 () Bool)

(assert (=> b!776704 m!720799))

(assert (=> b!776696 m!720797))

(assert (=> b!776696 m!720797))

(declare-fun m!720801 () Bool)

(assert (=> b!776696 m!720801))

(assert (=> b!776701 m!720797))

(assert (=> b!776701 m!720797))

(declare-fun m!720803 () Bool)

(assert (=> b!776701 m!720803))

(declare-fun m!720805 () Bool)

(assert (=> b!776709 m!720805))

(declare-fun m!720807 () Bool)

(assert (=> b!776709 m!720807))

(declare-fun m!720809 () Bool)

(assert (=> start!67196 m!720809))

(declare-fun m!720811 () Bool)

(assert (=> start!67196 m!720811))

(assert (=> b!776699 m!720797))

(assert (=> b!776699 m!720797))

(declare-fun m!720813 () Bool)

(assert (=> b!776699 m!720813))

(declare-fun m!720815 () Bool)

(assert (=> b!776695 m!720815))

(declare-fun m!720817 () Bool)

(assert (=> b!776697 m!720817))

(declare-fun m!720819 () Bool)

(assert (=> b!776702 m!720819))

(declare-fun m!720821 () Bool)

(assert (=> b!776702 m!720821))

(declare-fun m!720823 () Bool)

(assert (=> b!776702 m!720823))

(assert (=> b!776702 m!720819))

(declare-fun m!720825 () Bool)

(assert (=> b!776702 m!720825))

(declare-fun m!720827 () Bool)

(assert (=> b!776702 m!720827))

(assert (=> b!776708 m!720797))

(assert (=> b!776708 m!720797))

(assert (=> b!776708 m!720813))

(assert (=> b!776706 m!720797))

(assert (=> b!776706 m!720797))

(declare-fun m!720829 () Bool)

(assert (=> b!776706 m!720829))

(declare-fun m!720831 () Bool)

(assert (=> b!776707 m!720831))

(declare-fun m!720833 () Bool)

(assert (=> b!776710 m!720833))

(declare-fun m!720835 () Bool)

(assert (=> b!776711 m!720835))

(assert (=> b!776700 m!720797))

(assert (=> b!776700 m!720797))

(declare-fun m!720837 () Bool)

(assert (=> b!776700 m!720837))

(assert (=> b!776700 m!720837))

(assert (=> b!776700 m!720797))

(declare-fun m!720839 () Bool)

(assert (=> b!776700 m!720839))

(push 1)

