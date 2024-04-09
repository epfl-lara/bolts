; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65638 () Bool)

(assert start!65638)

(declare-fun b!750707 () Bool)

(declare-fun res!506846 () Bool)

(declare-fun e!418847 () Bool)

(assert (=> b!750707 (=> (not res!506846) (not e!418847))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41764 0))(
  ( (array!41765 (arr!19992 (Array (_ BitVec 32) (_ BitVec 64))) (size!20413 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41764)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750707 (= res!506846 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20413 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20413 a!3186))))))

(declare-fun b!750708 () Bool)

(declare-fun res!506838 () Bool)

(assert (=> b!750708 (=> (not res!506838) (not e!418847))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41764 (_ BitVec 32)) Bool)

(assert (=> b!750708 (= res!506838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750709 () Bool)

(declare-datatypes ((Unit!25798 0))(
  ( (Unit!25799) )
))
(declare-fun e!418842 () Unit!25798)

(declare-fun Unit!25800 () Unit!25798)

(assert (=> b!750709 (= e!418842 Unit!25800)))

(declare-fun b!750710 () Bool)

(declare-fun e!418843 () Bool)

(declare-fun e!418841 () Bool)

(assert (=> b!750710 (= e!418843 e!418841)))

(declare-fun res!506845 () Bool)

(assert (=> b!750710 (=> (not res!506845) (not e!418841))))

(declare-datatypes ((SeekEntryResult!7599 0))(
  ( (MissingZero!7599 (index!32763 (_ BitVec 32))) (Found!7599 (index!32764 (_ BitVec 32))) (Intermediate!7599 (undefined!8411 Bool) (index!32765 (_ BitVec 32)) (x!63718 (_ BitVec 32))) (Undefined!7599) (MissingVacant!7599 (index!32766 (_ BitVec 32))) )
))
(declare-fun lt!333844 () SeekEntryResult!7599)

(declare-fun lt!333842 () SeekEntryResult!7599)

(assert (=> b!750710 (= res!506845 (= lt!333844 lt!333842))))

(declare-fun lt!333846 () array!41764)

(declare-fun lt!333841 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41764 (_ BitVec 32)) SeekEntryResult!7599)

(assert (=> b!750710 (= lt!333842 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333841 lt!333846 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750710 (= lt!333844 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333841 mask!3328) lt!333841 lt!333846 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!750710 (= lt!333841 (select (store (arr!19992 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!750710 (= lt!333846 (array!41765 (store (arr!19992 a!3186) i!1173 k!2102) (size!20413 a!3186)))))

(declare-fun e!418844 () Bool)

(declare-fun b!750711 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41764 (_ BitVec 32)) SeekEntryResult!7599)

(assert (=> b!750711 (= e!418844 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19992 a!3186) j!159) a!3186 mask!3328) (Found!7599 j!159)))))

(declare-fun b!750712 () Bool)

(declare-fun res!506839 () Bool)

(assert (=> b!750712 (=> (not res!506839) (not e!418843))))

(assert (=> b!750712 (= res!506839 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19992 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750713 () Bool)

(assert (=> b!750713 (= e!418847 e!418843)))

(declare-fun res!506844 () Bool)

(assert (=> b!750713 (=> (not res!506844) (not e!418843))))

(declare-fun lt!333847 () SeekEntryResult!7599)

(assert (=> b!750713 (= res!506844 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19992 a!3186) j!159) mask!3328) (select (arr!19992 a!3186) j!159) a!3186 mask!3328) lt!333847))))

(assert (=> b!750713 (= lt!333847 (Intermediate!7599 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750714 () Bool)

(declare-fun res!506835 () Bool)

(declare-fun e!418846 () Bool)

(assert (=> b!750714 (=> res!506835 e!418846)))

(declare-fun lt!333848 () SeekEntryResult!7599)

(assert (=> b!750714 (= res!506835 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19992 a!3186) j!159) a!3186 mask!3328) lt!333848)))))

(declare-fun b!750715 () Bool)

(declare-fun e!418848 () Bool)

(assert (=> b!750715 (= e!418848 true)))

(declare-fun e!418849 () Bool)

(assert (=> b!750715 e!418849))

(declare-fun res!506833 () Bool)

(assert (=> b!750715 (=> (not res!506833) (not e!418849))))

(declare-fun lt!333850 () (_ BitVec 64))

(assert (=> b!750715 (= res!506833 (= lt!333850 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333845 () Unit!25798)

(assert (=> b!750715 (= lt!333845 e!418842)))

(declare-fun c!82320 () Bool)

(assert (=> b!750715 (= c!82320 (= lt!333850 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750716 () Bool)

(declare-fun res!506841 () Bool)

(declare-fun e!418851 () Bool)

(assert (=> b!750716 (=> (not res!506841) (not e!418851))))

(declare-fun arrayContainsKey!0 (array!41764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750716 (= res!506841 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750717 () Bool)

(declare-fun res!506834 () Bool)

(assert (=> b!750717 (=> (not res!506834) (not e!418843))))

(assert (=> b!750717 (= res!506834 e!418844)))

(declare-fun c!82319 () Bool)

(assert (=> b!750717 (= c!82319 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750718 () Bool)

(declare-fun res!506842 () Bool)

(assert (=> b!750718 (=> (not res!506842) (not e!418851))))

(assert (=> b!750718 (= res!506842 (and (= (size!20413 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20413 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20413 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!418845 () Bool)

(declare-fun b!750719 () Bool)

(assert (=> b!750719 (= e!418845 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19992 a!3186) j!159) a!3186 mask!3328) lt!333848))))

(declare-fun b!750720 () Bool)

(assert (=> b!750720 (= e!418846 e!418848)))

(declare-fun res!506837 () Bool)

(assert (=> b!750720 (=> res!506837 e!418848)))

(assert (=> b!750720 (= res!506837 (= lt!333850 lt!333841))))

(assert (=> b!750720 (= lt!333850 (select (store (arr!19992 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!750721 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41764 (_ BitVec 32)) SeekEntryResult!7599)

(assert (=> b!750721 (= e!418849 (= (seekEntryOrOpen!0 lt!333841 lt!333846 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333841 lt!333846 mask!3328)))))

(declare-fun b!750722 () Bool)

(assert (=> b!750722 (= e!418841 (not e!418846))))

(declare-fun res!506836 () Bool)

(assert (=> b!750722 (=> res!506836 e!418846)))

(assert (=> b!750722 (= res!506836 (or (not (is-Intermediate!7599 lt!333842)) (bvslt x!1131 (x!63718 lt!333842)) (not (= x!1131 (x!63718 lt!333842))) (not (= index!1321 (index!32765 lt!333842)))))))

(assert (=> b!750722 e!418845))

(declare-fun res!506847 () Bool)

(assert (=> b!750722 (=> (not res!506847) (not e!418845))))

(declare-fun lt!333851 () SeekEntryResult!7599)

(assert (=> b!750722 (= res!506847 (= lt!333851 lt!333848))))

(assert (=> b!750722 (= lt!333848 (Found!7599 j!159))))

(assert (=> b!750722 (= lt!333851 (seekEntryOrOpen!0 (select (arr!19992 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!750722 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333849 () Unit!25798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41764 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25798)

(assert (=> b!750722 (= lt!333849 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750723 () Bool)

(assert (=> b!750723 (= e!418851 e!418847)))

(declare-fun res!506840 () Bool)

(assert (=> b!750723 (=> (not res!506840) (not e!418847))))

(declare-fun lt!333843 () SeekEntryResult!7599)

(assert (=> b!750723 (= res!506840 (or (= lt!333843 (MissingZero!7599 i!1173)) (= lt!333843 (MissingVacant!7599 i!1173))))))

(assert (=> b!750723 (= lt!333843 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!750724 () Bool)

(declare-fun Unit!25801 () Unit!25798)

(assert (=> b!750724 (= e!418842 Unit!25801)))

(assert (=> b!750724 false))

(declare-fun b!750725 () Bool)

(declare-fun res!506843 () Bool)

(assert (=> b!750725 (=> (not res!506843) (not e!418851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750725 (= res!506843 (validKeyInArray!0 k!2102))))

(declare-fun res!506831 () Bool)

(assert (=> start!65638 (=> (not res!506831) (not e!418851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65638 (= res!506831 (validMask!0 mask!3328))))

(assert (=> start!65638 e!418851))

(assert (=> start!65638 true))

(declare-fun array_inv!15766 (array!41764) Bool)

(assert (=> start!65638 (array_inv!15766 a!3186)))

(declare-fun b!750726 () Bool)

(assert (=> b!750726 (= e!418844 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19992 a!3186) j!159) a!3186 mask!3328) lt!333847))))

(declare-fun b!750727 () Bool)

(declare-fun res!506832 () Bool)

(assert (=> b!750727 (=> (not res!506832) (not e!418847))))

(declare-datatypes ((List!14047 0))(
  ( (Nil!14044) (Cons!14043 (h!15115 (_ BitVec 64)) (t!20370 List!14047)) )
))
(declare-fun arrayNoDuplicates!0 (array!41764 (_ BitVec 32) List!14047) Bool)

(assert (=> b!750727 (= res!506832 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14044))))

(declare-fun b!750728 () Bool)

(declare-fun res!506830 () Bool)

(assert (=> b!750728 (=> (not res!506830) (not e!418851))))

(assert (=> b!750728 (= res!506830 (validKeyInArray!0 (select (arr!19992 a!3186) j!159)))))

(assert (= (and start!65638 res!506831) b!750718))

(assert (= (and b!750718 res!506842) b!750728))

(assert (= (and b!750728 res!506830) b!750725))

(assert (= (and b!750725 res!506843) b!750716))

(assert (= (and b!750716 res!506841) b!750723))

(assert (= (and b!750723 res!506840) b!750708))

(assert (= (and b!750708 res!506838) b!750727))

(assert (= (and b!750727 res!506832) b!750707))

(assert (= (and b!750707 res!506846) b!750713))

(assert (= (and b!750713 res!506844) b!750712))

(assert (= (and b!750712 res!506839) b!750717))

(assert (= (and b!750717 c!82319) b!750726))

(assert (= (and b!750717 (not c!82319)) b!750711))

(assert (= (and b!750717 res!506834) b!750710))

(assert (= (and b!750710 res!506845) b!750722))

(assert (= (and b!750722 res!506847) b!750719))

(assert (= (and b!750722 (not res!506836)) b!750714))

(assert (= (and b!750714 (not res!506835)) b!750720))

(assert (= (and b!750720 (not res!506837)) b!750715))

(assert (= (and b!750715 c!82320) b!750724))

(assert (= (and b!750715 (not c!82320)) b!750709))

(assert (= (and b!750715 res!506833) b!750721))

(declare-fun m!700117 () Bool)

(assert (=> b!750710 m!700117))

(declare-fun m!700119 () Bool)

(assert (=> b!750710 m!700119))

(declare-fun m!700121 () Bool)

(assert (=> b!750710 m!700121))

(declare-fun m!700123 () Bool)

(assert (=> b!750710 m!700123))

(assert (=> b!750710 m!700117))

(declare-fun m!700125 () Bool)

(assert (=> b!750710 m!700125))

(declare-fun m!700127 () Bool)

(assert (=> b!750711 m!700127))

(assert (=> b!750711 m!700127))

(declare-fun m!700129 () Bool)

(assert (=> b!750711 m!700129))

(assert (=> b!750722 m!700127))

(assert (=> b!750722 m!700127))

(declare-fun m!700131 () Bool)

(assert (=> b!750722 m!700131))

(declare-fun m!700133 () Bool)

(assert (=> b!750722 m!700133))

(declare-fun m!700135 () Bool)

(assert (=> b!750722 m!700135))

(declare-fun m!700137 () Bool)

(assert (=> b!750721 m!700137))

(declare-fun m!700139 () Bool)

(assert (=> b!750721 m!700139))

(declare-fun m!700141 () Bool)

(assert (=> b!750727 m!700141))

(assert (=> b!750726 m!700127))

(assert (=> b!750726 m!700127))

(declare-fun m!700143 () Bool)

(assert (=> b!750726 m!700143))

(assert (=> b!750720 m!700121))

(declare-fun m!700145 () Bool)

(assert (=> b!750720 m!700145))

(declare-fun m!700147 () Bool)

(assert (=> b!750708 m!700147))

(assert (=> b!750713 m!700127))

(assert (=> b!750713 m!700127))

(declare-fun m!700149 () Bool)

(assert (=> b!750713 m!700149))

(assert (=> b!750713 m!700149))

(assert (=> b!750713 m!700127))

(declare-fun m!700151 () Bool)

(assert (=> b!750713 m!700151))

(assert (=> b!750714 m!700127))

(assert (=> b!750714 m!700127))

(assert (=> b!750714 m!700129))

(declare-fun m!700153 () Bool)

(assert (=> b!750712 m!700153))

(declare-fun m!700155 () Bool)

(assert (=> start!65638 m!700155))

(declare-fun m!700157 () Bool)

(assert (=> start!65638 m!700157))

(assert (=> b!750728 m!700127))

(assert (=> b!750728 m!700127))

(declare-fun m!700159 () Bool)

(assert (=> b!750728 m!700159))

(declare-fun m!700161 () Bool)

(assert (=> b!750725 m!700161))

(declare-fun m!700163 () Bool)

(assert (=> b!750723 m!700163))

(declare-fun m!700165 () Bool)

(assert (=> b!750716 m!700165))

(assert (=> b!750719 m!700127))

(assert (=> b!750719 m!700127))

(declare-fun m!700167 () Bool)

(assert (=> b!750719 m!700167))

(push 1)

