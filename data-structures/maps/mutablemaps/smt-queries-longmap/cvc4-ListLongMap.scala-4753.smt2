; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65600 () Bool)

(assert start!65600)

(declare-fun b!749453 () Bool)

(declare-datatypes ((array!41726 0))(
  ( (array!41727 (arr!19973 (Array (_ BitVec 32) (_ BitVec 64))) (size!20394 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41726)

(declare-datatypes ((SeekEntryResult!7580 0))(
  ( (MissingZero!7580 (index!32687 (_ BitVec 32))) (Found!7580 (index!32688 (_ BitVec 32))) (Intermediate!7580 (undefined!8392 Bool) (index!32689 (_ BitVec 32)) (x!63643 (_ BitVec 32))) (Undefined!7580) (MissingVacant!7580 (index!32690 (_ BitVec 32))) )
))
(declare-fun lt!333216 () SeekEntryResult!7580)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!418223 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41726 (_ BitVec 32)) SeekEntryResult!7580)

(assert (=> b!749453 (= e!418223 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19973 a!3186) j!159) a!3186 mask!3328) lt!333216))))

(declare-fun b!749454 () Bool)

(declare-datatypes ((Unit!25722 0))(
  ( (Unit!25723) )
))
(declare-fun e!418214 () Unit!25722)

(declare-fun Unit!25724 () Unit!25722)

(assert (=> b!749454 (= e!418214 Unit!25724)))

(assert (=> b!749454 false))

(declare-fun b!749455 () Bool)

(declare-fun e!418221 () Bool)

(declare-fun e!418224 () Bool)

(assert (=> b!749455 (= e!418221 (not e!418224))))

(declare-fun res!505809 () Bool)

(assert (=> b!749455 (=> res!505809 e!418224)))

(declare-fun lt!333221 () SeekEntryResult!7580)

(assert (=> b!749455 (= res!505809 (or (not (is-Intermediate!7580 lt!333221)) (bvslt x!1131 (x!63643 lt!333221)) (not (= x!1131 (x!63643 lt!333221))) (not (= index!1321 (index!32689 lt!333221)))))))

(declare-fun e!418219 () Bool)

(assert (=> b!749455 e!418219))

(declare-fun res!505814 () Bool)

(assert (=> b!749455 (=> (not res!505814) (not e!418219))))

(declare-fun lt!333219 () SeekEntryResult!7580)

(declare-fun lt!333217 () SeekEntryResult!7580)

(assert (=> b!749455 (= res!505814 (= lt!333219 lt!333217))))

(assert (=> b!749455 (= lt!333217 (Found!7580 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41726 (_ BitVec 32)) SeekEntryResult!7580)

(assert (=> b!749455 (= lt!333219 (seekEntryOrOpen!0 (select (arr!19973 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41726 (_ BitVec 32)) Bool)

(assert (=> b!749455 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333224 () Unit!25722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41726 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25722)

(assert (=> b!749455 (= lt!333224 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun lt!333218 () (_ BitVec 64))

(declare-fun b!749456 () Bool)

(declare-fun lt!333223 () array!41726)

(declare-fun e!418215 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41726 (_ BitVec 32)) SeekEntryResult!7580)

(assert (=> b!749456 (= e!418215 (= (seekEntryOrOpen!0 lt!333218 lt!333223 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333218 lt!333223 mask!3328)))))

(declare-fun b!749457 () Bool)

(declare-fun res!505811 () Bool)

(declare-fun e!418218 () Bool)

(assert (=> b!749457 (=> (not res!505811) (not e!418218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749457 (= res!505811 (validKeyInArray!0 (select (arr!19973 a!3186) j!159)))))

(declare-fun b!749458 () Bool)

(declare-fun res!505808 () Bool)

(assert (=> b!749458 (=> (not res!505808) (not e!418218))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!749458 (= res!505808 (validKeyInArray!0 k!2102))))

(declare-fun b!749460 () Bool)

(declare-fun res!505806 () Bool)

(assert (=> b!749460 (=> (not res!505806) (not e!418218))))

(declare-fun arrayContainsKey!0 (array!41726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749460 (= res!505806 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749461 () Bool)

(declare-fun res!505816 () Bool)

(declare-fun e!418222 () Bool)

(assert (=> b!749461 (=> (not res!505816) (not e!418222))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!749461 (= res!505816 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19973 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749462 () Bool)

(declare-fun res!505813 () Bool)

(assert (=> b!749462 (=> (not res!505813) (not e!418218))))

(assert (=> b!749462 (= res!505813 (and (= (size!20394 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20394 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20394 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749463 () Bool)

(declare-fun Unit!25725 () Unit!25722)

(assert (=> b!749463 (= e!418214 Unit!25725)))

(declare-fun b!749464 () Bool)

(assert (=> b!749464 (= e!418223 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19973 a!3186) j!159) a!3186 mask!3328) (Found!7580 j!159)))))

(declare-fun b!749465 () Bool)

(declare-fun res!505819 () Bool)

(assert (=> b!749465 (=> res!505819 e!418224)))

(assert (=> b!749465 (= res!505819 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19973 a!3186) j!159) a!3186 mask!3328) lt!333217)))))

(declare-fun b!749466 () Bool)

(declare-fun e!418216 () Bool)

(assert (=> b!749466 (= e!418218 e!418216)))

(declare-fun res!505807 () Bool)

(assert (=> b!749466 (=> (not res!505807) (not e!418216))))

(declare-fun lt!333222 () SeekEntryResult!7580)

(assert (=> b!749466 (= res!505807 (or (= lt!333222 (MissingZero!7580 i!1173)) (= lt!333222 (MissingVacant!7580 i!1173))))))

(assert (=> b!749466 (= lt!333222 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!749467 () Bool)

(declare-fun res!505817 () Bool)

(assert (=> b!749467 (=> (not res!505817) (not e!418216))))

(assert (=> b!749467 (= res!505817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749468 () Bool)

(assert (=> b!749468 (= e!418216 e!418222)))

(declare-fun res!505810 () Bool)

(assert (=> b!749468 (=> (not res!505810) (not e!418222))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749468 (= res!505810 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19973 a!3186) j!159) mask!3328) (select (arr!19973 a!3186) j!159) a!3186 mask!3328) lt!333216))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!749468 (= lt!333216 (Intermediate!7580 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749469 () Bool)

(assert (=> b!749469 (= e!418219 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19973 a!3186) j!159) a!3186 mask!3328) lt!333217))))

(declare-fun b!749470 () Bool)

(declare-fun res!505818 () Bool)

(assert (=> b!749470 (=> (not res!505818) (not e!418216))))

(assert (=> b!749470 (= res!505818 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20394 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20394 a!3186))))))

(declare-fun b!749471 () Bool)

(declare-fun res!505804 () Bool)

(assert (=> b!749471 (=> (not res!505804) (not e!418216))))

(declare-datatypes ((List!14028 0))(
  ( (Nil!14025) (Cons!14024 (h!15096 (_ BitVec 64)) (t!20351 List!14028)) )
))
(declare-fun arrayNoDuplicates!0 (array!41726 (_ BitVec 32) List!14028) Bool)

(assert (=> b!749471 (= res!505804 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14025))))

(declare-fun b!749459 () Bool)

(assert (=> b!749459 (= e!418222 e!418221)))

(declare-fun res!505821 () Bool)

(assert (=> b!749459 (=> (not res!505821) (not e!418221))))

(declare-fun lt!333214 () SeekEntryResult!7580)

(assert (=> b!749459 (= res!505821 (= lt!333214 lt!333221))))

(assert (=> b!749459 (= lt!333221 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333218 lt!333223 mask!3328))))

(assert (=> b!749459 (= lt!333214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333218 mask!3328) lt!333218 lt!333223 mask!3328))))

(assert (=> b!749459 (= lt!333218 (select (store (arr!19973 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!749459 (= lt!333223 (array!41727 (store (arr!19973 a!3186) i!1173 k!2102) (size!20394 a!3186)))))

(declare-fun res!505815 () Bool)

(assert (=> start!65600 (=> (not res!505815) (not e!418218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65600 (= res!505815 (validMask!0 mask!3328))))

(assert (=> start!65600 e!418218))

(assert (=> start!65600 true))

(declare-fun array_inv!15747 (array!41726) Bool)

(assert (=> start!65600 (array_inv!15747 a!3186)))

(declare-fun b!749472 () Bool)

(declare-fun res!505805 () Bool)

(assert (=> b!749472 (=> (not res!505805) (not e!418222))))

(assert (=> b!749472 (= res!505805 e!418223)))

(declare-fun c!82206 () Bool)

(assert (=> b!749472 (= c!82206 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749473 () Bool)

(declare-fun e!418217 () Bool)

(assert (=> b!749473 (= e!418224 e!418217)))

(declare-fun res!505812 () Bool)

(assert (=> b!749473 (=> res!505812 e!418217)))

(declare-fun lt!333220 () (_ BitVec 64))

(assert (=> b!749473 (= res!505812 (= lt!333220 lt!333218))))

(assert (=> b!749473 (= lt!333220 (select (store (arr!19973 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!749474 () Bool)

(assert (=> b!749474 (= e!418217 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!749474 e!418215))

(declare-fun res!505820 () Bool)

(assert (=> b!749474 (=> (not res!505820) (not e!418215))))

(assert (=> b!749474 (= res!505820 (= lt!333220 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333215 () Unit!25722)

(assert (=> b!749474 (= lt!333215 e!418214)))

(declare-fun c!82205 () Bool)

(assert (=> b!749474 (= c!82205 (= lt!333220 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!65600 res!505815) b!749462))

(assert (= (and b!749462 res!505813) b!749457))

(assert (= (and b!749457 res!505811) b!749458))

(assert (= (and b!749458 res!505808) b!749460))

(assert (= (and b!749460 res!505806) b!749466))

(assert (= (and b!749466 res!505807) b!749467))

(assert (= (and b!749467 res!505817) b!749471))

(assert (= (and b!749471 res!505804) b!749470))

(assert (= (and b!749470 res!505818) b!749468))

(assert (= (and b!749468 res!505810) b!749461))

(assert (= (and b!749461 res!505816) b!749472))

(assert (= (and b!749472 c!82206) b!749453))

(assert (= (and b!749472 (not c!82206)) b!749464))

(assert (= (and b!749472 res!505805) b!749459))

(assert (= (and b!749459 res!505821) b!749455))

(assert (= (and b!749455 res!505814) b!749469))

(assert (= (and b!749455 (not res!505809)) b!749465))

(assert (= (and b!749465 (not res!505819)) b!749473))

(assert (= (and b!749473 (not res!505812)) b!749474))

(assert (= (and b!749474 c!82205) b!749454))

(assert (= (and b!749474 (not c!82205)) b!749463))

(assert (= (and b!749474 res!505820) b!749456))

(declare-fun m!699129 () Bool)

(assert (=> b!749455 m!699129))

(assert (=> b!749455 m!699129))

(declare-fun m!699131 () Bool)

(assert (=> b!749455 m!699131))

(declare-fun m!699133 () Bool)

(assert (=> b!749455 m!699133))

(declare-fun m!699135 () Bool)

(assert (=> b!749455 m!699135))

(declare-fun m!699137 () Bool)

(assert (=> b!749459 m!699137))

(declare-fun m!699139 () Bool)

(assert (=> b!749459 m!699139))

(assert (=> b!749459 m!699137))

(declare-fun m!699141 () Bool)

(assert (=> b!749459 m!699141))

(declare-fun m!699143 () Bool)

(assert (=> b!749459 m!699143))

(declare-fun m!699145 () Bool)

(assert (=> b!749459 m!699145))

(declare-fun m!699147 () Bool)

(assert (=> b!749456 m!699147))

(declare-fun m!699149 () Bool)

(assert (=> b!749456 m!699149))

(declare-fun m!699151 () Bool)

(assert (=> b!749466 m!699151))

(assert (=> b!749473 m!699143))

(declare-fun m!699153 () Bool)

(assert (=> b!749473 m!699153))

(assert (=> b!749469 m!699129))

(assert (=> b!749469 m!699129))

(declare-fun m!699155 () Bool)

(assert (=> b!749469 m!699155))

(assert (=> b!749457 m!699129))

(assert (=> b!749457 m!699129))

(declare-fun m!699157 () Bool)

(assert (=> b!749457 m!699157))

(declare-fun m!699159 () Bool)

(assert (=> b!749461 m!699159))

(assert (=> b!749468 m!699129))

(assert (=> b!749468 m!699129))

(declare-fun m!699161 () Bool)

(assert (=> b!749468 m!699161))

(assert (=> b!749468 m!699161))

(assert (=> b!749468 m!699129))

(declare-fun m!699163 () Bool)

(assert (=> b!749468 m!699163))

(assert (=> b!749453 m!699129))

(assert (=> b!749453 m!699129))

(declare-fun m!699165 () Bool)

(assert (=> b!749453 m!699165))

(declare-fun m!699167 () Bool)

(assert (=> b!749471 m!699167))

(declare-fun m!699169 () Bool)

(assert (=> b!749460 m!699169))

(assert (=> b!749464 m!699129))

(assert (=> b!749464 m!699129))

(declare-fun m!699171 () Bool)

(assert (=> b!749464 m!699171))

(assert (=> b!749465 m!699129))

(assert (=> b!749465 m!699129))

(assert (=> b!749465 m!699171))

(declare-fun m!699173 () Bool)

(assert (=> start!65600 m!699173))

(declare-fun m!699175 () Bool)

(assert (=> start!65600 m!699175))

(declare-fun m!699177 () Bool)

(assert (=> b!749467 m!699177))

(declare-fun m!699179 () Bool)

(assert (=> b!749458 m!699179))

(push 1)

