; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65170 () Bool)

(assert start!65170)

(declare-fun res!494812 () Bool)

(declare-fun e!411840 () Bool)

(assert (=> start!65170 (=> (not res!494812) (not e!411840))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65170 (= res!494812 (validMask!0 mask!3328))))

(assert (=> start!65170 e!411840))

(assert (=> start!65170 true))

(declare-datatypes ((array!41296 0))(
  ( (array!41297 (arr!19758 (Array (_ BitVec 32) (_ BitVec 64))) (size!20179 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41296)

(declare-fun array_inv!15532 (array!41296) Bool)

(assert (=> start!65170 (array_inv!15532 a!3186)))

(declare-fun b!736122 () Bool)

(declare-fun res!494814 () Bool)

(declare-fun e!411839 () Bool)

(assert (=> b!736122 (=> (not res!494814) (not e!411839))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!736122 (= res!494814 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20179 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20179 a!3186))))))

(declare-fun b!736123 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!411835 () Bool)

(declare-datatypes ((SeekEntryResult!7365 0))(
  ( (MissingZero!7365 (index!31827 (_ BitVec 32))) (Found!7365 (index!31828 (_ BitVec 32))) (Intermediate!7365 (undefined!8177 Bool) (index!31829 (_ BitVec 32)) (x!62860 (_ BitVec 32))) (Undefined!7365) (MissingVacant!7365 (index!31830 (_ BitVec 32))) )
))
(declare-fun lt!326457 () SeekEntryResult!7365)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41296 (_ BitVec 32)) SeekEntryResult!7365)

(assert (=> b!736123 (= e!411835 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19758 a!3186) j!159) a!3186 mask!3328) lt!326457))))

(declare-fun b!736124 () Bool)

(declare-fun res!494799 () Bool)

(declare-fun e!411837 () Bool)

(assert (=> b!736124 (=> (not res!494799) (not e!411837))))

(assert (=> b!736124 (= res!494799 e!411835)))

(declare-fun c!81043 () Bool)

(assert (=> b!736124 (= c!81043 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736125 () Bool)

(declare-fun e!411834 () Bool)

(declare-fun lt!326460 () (_ BitVec 32))

(assert (=> b!736125 (= e!411834 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326460 (select (arr!19758 a!3186) j!159) a!3186 mask!3328) lt!326457)))))

(declare-fun b!736126 () Bool)

(declare-fun res!494809 () Bool)

(assert (=> b!736126 (=> (not res!494809) (not e!411840))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736126 (= res!494809 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736127 () Bool)

(declare-fun res!494801 () Bool)

(declare-fun e!411841 () Bool)

(assert (=> b!736127 (=> res!494801 e!411841)))

(assert (=> b!736127 (= res!494801 e!411834)))

(declare-fun c!81044 () Bool)

(declare-fun lt!326454 () Bool)

(assert (=> b!736127 (= c!81044 lt!326454)))

(declare-fun b!736128 () Bool)

(assert (=> b!736128 (= e!411839 e!411837)))

(declare-fun res!494810 () Bool)

(assert (=> b!736128 (=> (not res!494810) (not e!411837))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736128 (= res!494810 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19758 a!3186) j!159) mask!3328) (select (arr!19758 a!3186) j!159) a!3186 mask!3328) lt!326457))))

(assert (=> b!736128 (= lt!326457 (Intermediate!7365 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!736129 () Bool)

(declare-datatypes ((Unit!25078 0))(
  ( (Unit!25079) )
))
(declare-fun e!411836 () Unit!25078)

(declare-fun Unit!25080 () Unit!25078)

(assert (=> b!736129 (= e!411836 Unit!25080)))

(assert (=> b!736129 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326460 (select (arr!19758 a!3186) j!159) a!3186 mask!3328) lt!326457)))

(declare-fun b!736130 () Bool)

(declare-fun lt!326455 () SeekEntryResult!7365)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41296 (_ BitVec 32)) SeekEntryResult!7365)

(assert (=> b!736130 (= e!411834 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326460 resIntermediateIndex!5 (select (arr!19758 a!3186) j!159) a!3186 mask!3328) lt!326455)))))

(declare-fun b!736131 () Bool)

(declare-fun res!494813 () Bool)

(assert (=> b!736131 (=> (not res!494813) (not e!411840))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736131 (= res!494813 (and (= (size!20179 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20179 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20179 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736132 () Bool)

(declare-fun res!494800 () Bool)

(assert (=> b!736132 (=> (not res!494800) (not e!411839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41296 (_ BitVec 32)) Bool)

(assert (=> b!736132 (= res!494800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736133 () Bool)

(assert (=> b!736133 (= e!411835 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19758 a!3186) j!159) a!3186 mask!3328) (Found!7365 j!159)))))

(declare-fun b!736134 () Bool)

(declare-fun res!494811 () Bool)

(assert (=> b!736134 (=> (not res!494811) (not e!411837))))

(assert (=> b!736134 (= res!494811 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19758 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736135 () Bool)

(declare-fun res!494802 () Bool)

(assert (=> b!736135 (=> (not res!494802) (not e!411840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736135 (= res!494802 (validKeyInArray!0 k!2102))))

(declare-fun b!736136 () Bool)

(declare-fun e!411833 () Bool)

(declare-fun e!411832 () Bool)

(assert (=> b!736136 (= e!411833 (not e!411832))))

(declare-fun res!494805 () Bool)

(assert (=> b!736136 (=> res!494805 e!411832)))

(declare-fun lt!326456 () SeekEntryResult!7365)

(assert (=> b!736136 (= res!494805 (or (not (is-Intermediate!7365 lt!326456)) (bvsge x!1131 (x!62860 lt!326456))))))

(assert (=> b!736136 (= lt!326455 (Found!7365 j!159))))

(declare-fun e!411843 () Bool)

(assert (=> b!736136 e!411843))

(declare-fun res!494803 () Bool)

(assert (=> b!736136 (=> (not res!494803) (not e!411843))))

(assert (=> b!736136 (= res!494803 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326459 () Unit!25078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41296 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25078)

(assert (=> b!736136 (= lt!326459 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736137 () Bool)

(declare-fun res!494804 () Bool)

(assert (=> b!736137 (=> (not res!494804) (not e!411840))))

(assert (=> b!736137 (= res!494804 (validKeyInArray!0 (select (arr!19758 a!3186) j!159)))))

(declare-fun b!736138 () Bool)

(declare-fun e!411842 () Bool)

(assert (=> b!736138 (= e!411843 e!411842)))

(declare-fun res!494807 () Bool)

(assert (=> b!736138 (=> (not res!494807) (not e!411842))))

(declare-fun lt!326453 () SeekEntryResult!7365)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41296 (_ BitVec 32)) SeekEntryResult!7365)

(assert (=> b!736138 (= res!494807 (= (seekEntryOrOpen!0 (select (arr!19758 a!3186) j!159) a!3186 mask!3328) lt!326453))))

(assert (=> b!736138 (= lt!326453 (Found!7365 j!159))))

(declare-fun b!736139 () Bool)

(assert (=> b!736139 (= e!411841 true)))

(declare-fun lt!326450 () array!41296)

(declare-fun lt!326452 () SeekEntryResult!7365)

(declare-fun lt!326462 () (_ BitVec 64))

(assert (=> b!736139 (= lt!326452 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326460 lt!326462 lt!326450 mask!3328))))

(declare-fun b!736140 () Bool)

(assert (=> b!736140 (= e!411832 e!411841)))

(declare-fun res!494806 () Bool)

(assert (=> b!736140 (=> res!494806 e!411841)))

(assert (=> b!736140 (= res!494806 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326460 #b00000000000000000000000000000000) (bvsge lt!326460 (size!20179 a!3186))))))

(declare-fun lt!326458 () Unit!25078)

(assert (=> b!736140 (= lt!326458 e!411836)))

(declare-fun c!81045 () Bool)

(assert (=> b!736140 (= c!81045 lt!326454)))

(assert (=> b!736140 (= lt!326454 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736140 (= lt!326460 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736141 () Bool)

(declare-fun Unit!25081 () Unit!25078)

(assert (=> b!736141 (= e!411836 Unit!25081)))

(declare-fun lt!326461 () SeekEntryResult!7365)

(assert (=> b!736141 (= lt!326461 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19758 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!736141 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326460 resIntermediateIndex!5 (select (arr!19758 a!3186) j!159) a!3186 mask!3328) lt!326455)))

(declare-fun b!736142 () Bool)

(assert (=> b!736142 (= e!411840 e!411839)))

(declare-fun res!494797 () Bool)

(assert (=> b!736142 (=> (not res!494797) (not e!411839))))

(declare-fun lt!326451 () SeekEntryResult!7365)

(assert (=> b!736142 (= res!494797 (or (= lt!326451 (MissingZero!7365 i!1173)) (= lt!326451 (MissingVacant!7365 i!1173))))))

(assert (=> b!736142 (= lt!326451 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!736143 () Bool)

(assert (=> b!736143 (= e!411842 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19758 a!3186) j!159) a!3186 mask!3328) lt!326453))))

(declare-fun b!736144 () Bool)

(assert (=> b!736144 (= e!411837 e!411833)))

(declare-fun res!494798 () Bool)

(assert (=> b!736144 (=> (not res!494798) (not e!411833))))

(declare-fun lt!326449 () SeekEntryResult!7365)

(assert (=> b!736144 (= res!494798 (= lt!326449 lt!326456))))

(assert (=> b!736144 (= lt!326456 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326462 lt!326450 mask!3328))))

(assert (=> b!736144 (= lt!326449 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326462 mask!3328) lt!326462 lt!326450 mask!3328))))

(assert (=> b!736144 (= lt!326462 (select (store (arr!19758 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!736144 (= lt!326450 (array!41297 (store (arr!19758 a!3186) i!1173 k!2102) (size!20179 a!3186)))))

(declare-fun b!736145 () Bool)

(declare-fun res!494808 () Bool)

(assert (=> b!736145 (=> (not res!494808) (not e!411839))))

(declare-datatypes ((List!13813 0))(
  ( (Nil!13810) (Cons!13809 (h!14881 (_ BitVec 64)) (t!20136 List!13813)) )
))
(declare-fun arrayNoDuplicates!0 (array!41296 (_ BitVec 32) List!13813) Bool)

(assert (=> b!736145 (= res!494808 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13810))))

(assert (= (and start!65170 res!494812) b!736131))

(assert (= (and b!736131 res!494813) b!736137))

(assert (= (and b!736137 res!494804) b!736135))

(assert (= (and b!736135 res!494802) b!736126))

(assert (= (and b!736126 res!494809) b!736142))

(assert (= (and b!736142 res!494797) b!736132))

(assert (= (and b!736132 res!494800) b!736145))

(assert (= (and b!736145 res!494808) b!736122))

(assert (= (and b!736122 res!494814) b!736128))

(assert (= (and b!736128 res!494810) b!736134))

(assert (= (and b!736134 res!494811) b!736124))

(assert (= (and b!736124 c!81043) b!736123))

(assert (= (and b!736124 (not c!81043)) b!736133))

(assert (= (and b!736124 res!494799) b!736144))

(assert (= (and b!736144 res!494798) b!736136))

(assert (= (and b!736136 res!494803) b!736138))

(assert (= (and b!736138 res!494807) b!736143))

(assert (= (and b!736136 (not res!494805)) b!736140))

(assert (= (and b!736140 c!81045) b!736129))

(assert (= (and b!736140 (not c!81045)) b!736141))

(assert (= (and b!736140 (not res!494806)) b!736127))

(assert (= (and b!736127 c!81044) b!736125))

(assert (= (and b!736127 (not c!81044)) b!736130))

(assert (= (and b!736127 (not res!494801)) b!736139))

(declare-fun m!688399 () Bool)

(assert (=> b!736133 m!688399))

(assert (=> b!736133 m!688399))

(declare-fun m!688401 () Bool)

(assert (=> b!736133 m!688401))

(declare-fun m!688403 () Bool)

(assert (=> b!736136 m!688403))

(declare-fun m!688405 () Bool)

(assert (=> b!736136 m!688405))

(assert (=> b!736130 m!688399))

(assert (=> b!736130 m!688399))

(declare-fun m!688407 () Bool)

(assert (=> b!736130 m!688407))

(declare-fun m!688409 () Bool)

(assert (=> b!736126 m!688409))

(declare-fun m!688411 () Bool)

(assert (=> b!736144 m!688411))

(declare-fun m!688413 () Bool)

(assert (=> b!736144 m!688413))

(declare-fun m!688415 () Bool)

(assert (=> b!736144 m!688415))

(declare-fun m!688417 () Bool)

(assert (=> b!736144 m!688417))

(assert (=> b!736144 m!688411))

(declare-fun m!688419 () Bool)

(assert (=> b!736144 m!688419))

(declare-fun m!688421 () Bool)

(assert (=> b!736139 m!688421))

(declare-fun m!688423 () Bool)

(assert (=> b!736142 m!688423))

(assert (=> b!736125 m!688399))

(assert (=> b!736125 m!688399))

(declare-fun m!688425 () Bool)

(assert (=> b!736125 m!688425))

(assert (=> b!736128 m!688399))

(assert (=> b!736128 m!688399))

(declare-fun m!688427 () Bool)

(assert (=> b!736128 m!688427))

(assert (=> b!736128 m!688427))

(assert (=> b!736128 m!688399))

(declare-fun m!688429 () Bool)

(assert (=> b!736128 m!688429))

(declare-fun m!688431 () Bool)

(assert (=> b!736145 m!688431))

(declare-fun m!688433 () Bool)

(assert (=> b!736132 m!688433))

(declare-fun m!688435 () Bool)

(assert (=> b!736134 m!688435))

(declare-fun m!688437 () Bool)

(assert (=> b!736140 m!688437))

(assert (=> b!736141 m!688399))

(assert (=> b!736141 m!688399))

(assert (=> b!736141 m!688401))

(assert (=> b!736141 m!688399))

(assert (=> b!736141 m!688407))

(declare-fun m!688439 () Bool)

(assert (=> b!736135 m!688439))

(assert (=> b!736137 m!688399))

(assert (=> b!736137 m!688399))

(declare-fun m!688441 () Bool)

(assert (=> b!736137 m!688441))

(assert (=> b!736138 m!688399))

(assert (=> b!736138 m!688399))

(declare-fun m!688443 () Bool)

(assert (=> b!736138 m!688443))

(assert (=> b!736143 m!688399))

(assert (=> b!736143 m!688399))

(declare-fun m!688445 () Bool)

(assert (=> b!736143 m!688445))

(assert (=> b!736129 m!688399))

(assert (=> b!736129 m!688399))

(assert (=> b!736129 m!688425))

(assert (=> b!736123 m!688399))

(assert (=> b!736123 m!688399))

(declare-fun m!688447 () Bool)

(assert (=> b!736123 m!688447))

(declare-fun m!688449 () Bool)

(assert (=> start!65170 m!688449))

(declare-fun m!688451 () Bool)

(assert (=> start!65170 m!688451))

(push 1)

