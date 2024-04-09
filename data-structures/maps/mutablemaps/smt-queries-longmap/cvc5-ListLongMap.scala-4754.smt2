; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65602 () Bool)

(assert start!65602)

(declare-fun b!749519 () Bool)

(declare-fun res!505874 () Bool)

(declare-fun e!418250 () Bool)

(assert (=> b!749519 (=> (not res!505874) (not e!418250))))

(declare-datatypes ((array!41728 0))(
  ( (array!41729 (arr!19974 (Array (_ BitVec 32) (_ BitVec 64))) (size!20395 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41728)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749519 (= res!505874 (validKeyInArray!0 (select (arr!19974 a!3186) j!159)))))

(declare-fun lt!333251 () array!41728)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!418251 () Bool)

(declare-fun b!749520 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!333250 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7581 0))(
  ( (MissingZero!7581 (index!32691 (_ BitVec 32))) (Found!7581 (index!32692 (_ BitVec 32))) (Intermediate!7581 (undefined!8393 Bool) (index!32693 (_ BitVec 32)) (x!63652 (_ BitVec 32))) (Undefined!7581) (MissingVacant!7581 (index!32694 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41728 (_ BitVec 32)) SeekEntryResult!7581)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41728 (_ BitVec 32)) SeekEntryResult!7581)

(assert (=> b!749520 (= e!418251 (= (seekEntryOrOpen!0 lt!333250 lt!333251 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333250 lt!333251 mask!3328)))))

(declare-fun b!749521 () Bool)

(declare-datatypes ((Unit!25726 0))(
  ( (Unit!25727) )
))
(declare-fun e!418256 () Unit!25726)

(declare-fun Unit!25728 () Unit!25726)

(assert (=> b!749521 (= e!418256 Unit!25728)))

(declare-fun e!418248 () Bool)

(declare-fun b!749522 () Bool)

(declare-fun lt!333255 () SeekEntryResult!7581)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41728 (_ BitVec 32)) SeekEntryResult!7581)

(assert (=> b!749522 (= e!418248 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19974 a!3186) j!159) a!3186 mask!3328) lt!333255))))

(declare-fun b!749523 () Bool)

(declare-fun e!418257 () Bool)

(declare-fun e!418255 () Bool)

(assert (=> b!749523 (= e!418257 (not e!418255))))

(declare-fun res!505865 () Bool)

(assert (=> b!749523 (=> res!505865 e!418255)))

(declare-fun lt!333248 () SeekEntryResult!7581)

(assert (=> b!749523 (= res!505865 (or (not (is-Intermediate!7581 lt!333248)) (bvslt x!1131 (x!63652 lt!333248)) (not (= x!1131 (x!63652 lt!333248))) (not (= index!1321 (index!32693 lt!333248)))))))

(declare-fun e!418254 () Bool)

(assert (=> b!749523 e!418254))

(declare-fun res!505858 () Bool)

(assert (=> b!749523 (=> (not res!505858) (not e!418254))))

(declare-fun lt!333254 () SeekEntryResult!7581)

(declare-fun lt!333257 () SeekEntryResult!7581)

(assert (=> b!749523 (= res!505858 (= lt!333254 lt!333257))))

(assert (=> b!749523 (= lt!333257 (Found!7581 j!159))))

(assert (=> b!749523 (= lt!333254 (seekEntryOrOpen!0 (select (arr!19974 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41728 (_ BitVec 32)) Bool)

(assert (=> b!749523 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333247 () Unit!25726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41728 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25726)

(assert (=> b!749523 (= lt!333247 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749524 () Bool)

(declare-fun res!505875 () Bool)

(assert (=> b!749524 (=> res!505875 e!418255)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!749524 (= res!505875 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19974 a!3186) j!159) a!3186 mask!3328) lt!333257)))))

(declare-fun res!505869 () Bool)

(assert (=> start!65602 (=> (not res!505869) (not e!418250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65602 (= res!505869 (validMask!0 mask!3328))))

(assert (=> start!65602 e!418250))

(assert (=> start!65602 true))

(declare-fun array_inv!15748 (array!41728) Bool)

(assert (=> start!65602 (array_inv!15748 a!3186)))

(declare-fun b!749525 () Bool)

(declare-fun res!505861 () Bool)

(assert (=> b!749525 (=> (not res!505861) (not e!418250))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!749525 (= res!505861 (validKeyInArray!0 k!2102))))

(declare-fun b!749526 () Bool)

(declare-fun res!505868 () Bool)

(assert (=> b!749526 (=> (not res!505868) (not e!418250))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!749526 (= res!505868 (and (= (size!20395 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20395 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20395 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749527 () Bool)

(declare-fun res!505860 () Bool)

(declare-fun e!418249 () Bool)

(assert (=> b!749527 (=> (not res!505860) (not e!418249))))

(assert (=> b!749527 (= res!505860 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19974 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749528 () Bool)

(declare-fun res!505864 () Bool)

(declare-fun e!418252 () Bool)

(assert (=> b!749528 (=> (not res!505864) (not e!418252))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!749528 (= res!505864 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20395 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20395 a!3186))))))

(declare-fun b!749529 () Bool)

(assert (=> b!749529 (= e!418249 e!418257)))

(declare-fun res!505862 () Bool)

(assert (=> b!749529 (=> (not res!505862) (not e!418257))))

(declare-fun lt!333256 () SeekEntryResult!7581)

(assert (=> b!749529 (= res!505862 (= lt!333256 lt!333248))))

(assert (=> b!749529 (= lt!333248 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333250 lt!333251 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749529 (= lt!333256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333250 mask!3328) lt!333250 lt!333251 mask!3328))))

(assert (=> b!749529 (= lt!333250 (select (store (arr!19974 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!749529 (= lt!333251 (array!41729 (store (arr!19974 a!3186) i!1173 k!2102) (size!20395 a!3186)))))

(declare-fun b!749530 () Bool)

(assert (=> b!749530 (= e!418252 e!418249)))

(declare-fun res!505873 () Bool)

(assert (=> b!749530 (=> (not res!505873) (not e!418249))))

(assert (=> b!749530 (= res!505873 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19974 a!3186) j!159) mask!3328) (select (arr!19974 a!3186) j!159) a!3186 mask!3328) lt!333255))))

(assert (=> b!749530 (= lt!333255 (Intermediate!7581 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749531 () Bool)

(declare-fun res!505863 () Bool)

(assert (=> b!749531 (=> (not res!505863) (not e!418249))))

(assert (=> b!749531 (= res!505863 e!418248)))

(declare-fun c!82212 () Bool)

(assert (=> b!749531 (= c!82212 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749532 () Bool)

(declare-fun e!418247 () Bool)

(assert (=> b!749532 (= e!418247 true)))

(assert (=> b!749532 e!418251))

(declare-fun res!505870 () Bool)

(assert (=> b!749532 (=> (not res!505870) (not e!418251))))

(declare-fun lt!333249 () (_ BitVec 64))

(assert (=> b!749532 (= res!505870 (= lt!333249 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333252 () Unit!25726)

(assert (=> b!749532 (= lt!333252 e!418256)))

(declare-fun c!82211 () Bool)

(assert (=> b!749532 (= c!82211 (= lt!333249 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749533 () Bool)

(assert (=> b!749533 (= e!418254 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19974 a!3186) j!159) a!3186 mask!3328) lt!333257))))

(declare-fun b!749534 () Bool)

(declare-fun res!505859 () Bool)

(assert (=> b!749534 (=> (not res!505859) (not e!418252))))

(declare-datatypes ((List!14029 0))(
  ( (Nil!14026) (Cons!14025 (h!15097 (_ BitVec 64)) (t!20352 List!14029)) )
))
(declare-fun arrayNoDuplicates!0 (array!41728 (_ BitVec 32) List!14029) Bool)

(assert (=> b!749534 (= res!505859 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14026))))

(declare-fun b!749535 () Bool)

(declare-fun res!505866 () Bool)

(assert (=> b!749535 (=> (not res!505866) (not e!418250))))

(declare-fun arrayContainsKey!0 (array!41728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749535 (= res!505866 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749536 () Bool)

(assert (=> b!749536 (= e!418255 e!418247)))

(declare-fun res!505872 () Bool)

(assert (=> b!749536 (=> res!505872 e!418247)))

(assert (=> b!749536 (= res!505872 (= lt!333249 lt!333250))))

(assert (=> b!749536 (= lt!333249 (select (store (arr!19974 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!749537 () Bool)

(declare-fun Unit!25729 () Unit!25726)

(assert (=> b!749537 (= e!418256 Unit!25729)))

(assert (=> b!749537 false))

(declare-fun b!749538 () Bool)

(assert (=> b!749538 (= e!418248 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19974 a!3186) j!159) a!3186 mask!3328) (Found!7581 j!159)))))

(declare-fun b!749539 () Bool)

(assert (=> b!749539 (= e!418250 e!418252)))

(declare-fun res!505871 () Bool)

(assert (=> b!749539 (=> (not res!505871) (not e!418252))))

(declare-fun lt!333253 () SeekEntryResult!7581)

(assert (=> b!749539 (= res!505871 (or (= lt!333253 (MissingZero!7581 i!1173)) (= lt!333253 (MissingVacant!7581 i!1173))))))

(assert (=> b!749539 (= lt!333253 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!749540 () Bool)

(declare-fun res!505867 () Bool)

(assert (=> b!749540 (=> (not res!505867) (not e!418252))))

(assert (=> b!749540 (= res!505867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65602 res!505869) b!749526))

(assert (= (and b!749526 res!505868) b!749519))

(assert (= (and b!749519 res!505874) b!749525))

(assert (= (and b!749525 res!505861) b!749535))

(assert (= (and b!749535 res!505866) b!749539))

(assert (= (and b!749539 res!505871) b!749540))

(assert (= (and b!749540 res!505867) b!749534))

(assert (= (and b!749534 res!505859) b!749528))

(assert (= (and b!749528 res!505864) b!749530))

(assert (= (and b!749530 res!505873) b!749527))

(assert (= (and b!749527 res!505860) b!749531))

(assert (= (and b!749531 c!82212) b!749522))

(assert (= (and b!749531 (not c!82212)) b!749538))

(assert (= (and b!749531 res!505863) b!749529))

(assert (= (and b!749529 res!505862) b!749523))

(assert (= (and b!749523 res!505858) b!749533))

(assert (= (and b!749523 (not res!505865)) b!749524))

(assert (= (and b!749524 (not res!505875)) b!749536))

(assert (= (and b!749536 (not res!505872)) b!749532))

(assert (= (and b!749532 c!82211) b!749537))

(assert (= (and b!749532 (not c!82211)) b!749521))

(assert (= (and b!749532 res!505870) b!749520))

(declare-fun m!699181 () Bool)

(assert (=> b!749539 m!699181))

(declare-fun m!699183 () Bool)

(assert (=> b!749529 m!699183))

(declare-fun m!699185 () Bool)

(assert (=> b!749529 m!699185))

(declare-fun m!699187 () Bool)

(assert (=> b!749529 m!699187))

(declare-fun m!699189 () Bool)

(assert (=> b!749529 m!699189))

(assert (=> b!749529 m!699189))

(declare-fun m!699191 () Bool)

(assert (=> b!749529 m!699191))

(declare-fun m!699193 () Bool)

(assert (=> b!749520 m!699193))

(declare-fun m!699195 () Bool)

(assert (=> b!749520 m!699195))

(declare-fun m!699197 () Bool)

(assert (=> b!749535 m!699197))

(declare-fun m!699199 () Bool)

(assert (=> b!749523 m!699199))

(assert (=> b!749523 m!699199))

(declare-fun m!699201 () Bool)

(assert (=> b!749523 m!699201))

(declare-fun m!699203 () Bool)

(assert (=> b!749523 m!699203))

(declare-fun m!699205 () Bool)

(assert (=> b!749523 m!699205))

(assert (=> b!749538 m!699199))

(assert (=> b!749538 m!699199))

(declare-fun m!699207 () Bool)

(assert (=> b!749538 m!699207))

(assert (=> b!749524 m!699199))

(assert (=> b!749524 m!699199))

(assert (=> b!749524 m!699207))

(declare-fun m!699209 () Bool)

(assert (=> b!749527 m!699209))

(declare-fun m!699211 () Bool)

(assert (=> b!749540 m!699211))

(assert (=> b!749519 m!699199))

(assert (=> b!749519 m!699199))

(declare-fun m!699213 () Bool)

(assert (=> b!749519 m!699213))

(assert (=> b!749530 m!699199))

(assert (=> b!749530 m!699199))

(declare-fun m!699215 () Bool)

(assert (=> b!749530 m!699215))

(assert (=> b!749530 m!699215))

(assert (=> b!749530 m!699199))

(declare-fun m!699217 () Bool)

(assert (=> b!749530 m!699217))

(declare-fun m!699219 () Bool)

(assert (=> b!749525 m!699219))

(assert (=> b!749536 m!699183))

(declare-fun m!699221 () Bool)

(assert (=> b!749536 m!699221))

(declare-fun m!699223 () Bool)

(assert (=> b!749534 m!699223))

(assert (=> b!749533 m!699199))

(assert (=> b!749533 m!699199))

(declare-fun m!699225 () Bool)

(assert (=> b!749533 m!699225))

(assert (=> b!749522 m!699199))

(assert (=> b!749522 m!699199))

(declare-fun m!699227 () Bool)

(assert (=> b!749522 m!699227))

(declare-fun m!699229 () Bool)

(assert (=> start!65602 m!699229))

(declare-fun m!699231 () Bool)

(assert (=> start!65602 m!699231))

(push 1)

