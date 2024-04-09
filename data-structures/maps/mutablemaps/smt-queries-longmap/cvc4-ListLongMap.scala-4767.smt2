; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65684 () Bool)

(assert start!65684)

(declare-fun b!752260 () Bool)

(declare-fun res!508121 () Bool)

(declare-fun e!419642 () Bool)

(assert (=> b!752260 (=> (not res!508121) (not e!419642))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41810 0))(
  ( (array!41811 (arr!20015 (Array (_ BitVec 32) (_ BitVec 64))) (size!20436 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41810)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752260 (= res!508121 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20436 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20436 a!3186))))))

(declare-fun b!752261 () Bool)

(declare-fun res!508122 () Bool)

(declare-fun e!419645 () Bool)

(assert (=> b!752261 (=> (not res!508122) (not e!419645))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!752261 (= res!508122 (and (= (size!20436 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20436 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20436 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!508107 () Bool)

(assert (=> start!65684 (=> (not res!508107) (not e!419645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65684 (= res!508107 (validMask!0 mask!3328))))

(assert (=> start!65684 e!419645))

(assert (=> start!65684 true))

(declare-fun array_inv!15789 (array!41810) Bool)

(assert (=> start!65684 (array_inv!15789 a!3186)))

(declare-fun b!752262 () Bool)

(declare-fun res!508125 () Bool)

(assert (=> b!752262 (=> (not res!508125) (not e!419642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41810 (_ BitVec 32)) Bool)

(assert (=> b!752262 (= res!508125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752263 () Bool)

(declare-datatypes ((SeekEntryResult!7622 0))(
  ( (MissingZero!7622 (index!32855 (_ BitVec 32))) (Found!7622 (index!32856 (_ BitVec 32))) (Intermediate!7622 (undefined!8434 Bool) (index!32857 (_ BitVec 32)) (x!63797 (_ BitVec 32))) (Undefined!7622) (MissingVacant!7622 (index!32858 (_ BitVec 32))) )
))
(declare-fun lt!334644 () SeekEntryResult!7622)

(declare-fun e!419644 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41810 (_ BitVec 32)) SeekEntryResult!7622)

(assert (=> b!752263 (= e!419644 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20015 a!3186) j!159) a!3186 mask!3328) lt!334644))))

(declare-fun b!752264 () Bool)

(declare-fun res!508113 () Bool)

(assert (=> b!752264 (=> (not res!508113) (not e!419645))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752264 (= res!508113 (validKeyInArray!0 k!2102))))

(declare-fun b!752265 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41810 (_ BitVec 32)) SeekEntryResult!7622)

(assert (=> b!752265 (= e!419644 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20015 a!3186) j!159) a!3186 mask!3328) (Found!7622 j!159)))))

(declare-fun b!752266 () Bool)

(declare-fun e!419636 () Bool)

(declare-fun e!419641 () Bool)

(assert (=> b!752266 (= e!419636 (not e!419641))))

(declare-fun res!508118 () Bool)

(assert (=> b!752266 (=> res!508118 e!419641)))

(declare-fun lt!334640 () SeekEntryResult!7622)

(assert (=> b!752266 (= res!508118 (or (not (is-Intermediate!7622 lt!334640)) (bvslt x!1131 (x!63797 lt!334640)) (not (= x!1131 (x!63797 lt!334640))) (not (= index!1321 (index!32857 lt!334640)))))))

(declare-fun e!419646 () Bool)

(assert (=> b!752266 e!419646))

(declare-fun res!508112 () Bool)

(assert (=> b!752266 (=> (not res!508112) (not e!419646))))

(declare-fun lt!334645 () SeekEntryResult!7622)

(declare-fun lt!334638 () SeekEntryResult!7622)

(assert (=> b!752266 (= res!508112 (= lt!334645 lt!334638))))

(assert (=> b!752266 (= lt!334638 (Found!7622 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41810 (_ BitVec 32)) SeekEntryResult!7622)

(assert (=> b!752266 (= lt!334645 (seekEntryOrOpen!0 (select (arr!20015 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!752266 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25890 0))(
  ( (Unit!25891) )
))
(declare-fun lt!334637 () Unit!25890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41810 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25890)

(assert (=> b!752266 (= lt!334637 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752267 () Bool)

(declare-fun res!508108 () Bool)

(declare-fun e!419638 () Bool)

(assert (=> b!752267 (=> (not res!508108) (not e!419638))))

(assert (=> b!752267 (= res!508108 e!419644)))

(declare-fun c!82457 () Bool)

(assert (=> b!752267 (= c!82457 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752268 () Bool)

(declare-fun e!419635 () Bool)

(declare-fun lt!334643 () SeekEntryResult!7622)

(assert (=> b!752268 (= e!419635 (= lt!334645 lt!334643))))

(declare-fun b!752269 () Bool)

(assert (=> b!752269 (= e!419638 e!419636)))

(declare-fun res!508110 () Bool)

(assert (=> b!752269 (=> (not res!508110) (not e!419636))))

(declare-fun lt!334639 () SeekEntryResult!7622)

(assert (=> b!752269 (= res!508110 (= lt!334639 lt!334640))))

(declare-fun lt!334635 () array!41810)

(declare-fun lt!334642 () (_ BitVec 64))

(assert (=> b!752269 (= lt!334640 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334642 lt!334635 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752269 (= lt!334639 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334642 mask!3328) lt!334642 lt!334635 mask!3328))))

(assert (=> b!752269 (= lt!334642 (select (store (arr!20015 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!752269 (= lt!334635 (array!41811 (store (arr!20015 a!3186) i!1173 k!2102) (size!20436 a!3186)))))

(declare-fun b!752270 () Bool)

(assert (=> b!752270 (= e!419646 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20015 a!3186) j!159) a!3186 mask!3328) lt!334638))))

(declare-fun b!752271 () Bool)

(declare-fun res!508115 () Bool)

(assert (=> b!752271 (=> (not res!508115) (not e!419642))))

(declare-datatypes ((List!14070 0))(
  ( (Nil!14067) (Cons!14066 (h!15138 (_ BitVec 64)) (t!20393 List!14070)) )
))
(declare-fun arrayNoDuplicates!0 (array!41810 (_ BitVec 32) List!14070) Bool)

(assert (=> b!752271 (= res!508115 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14067))))

(declare-fun b!752272 () Bool)

(assert (=> b!752272 (= e!419642 e!419638)))

(declare-fun res!508124 () Bool)

(assert (=> b!752272 (=> (not res!508124) (not e!419638))))

(assert (=> b!752272 (= res!508124 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20015 a!3186) j!159) mask!3328) (select (arr!20015 a!3186) j!159) a!3186 mask!3328) lt!334644))))

(assert (=> b!752272 (= lt!334644 (Intermediate!7622 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752273 () Bool)

(declare-fun res!508120 () Bool)

(assert (=> b!752273 (=> (not res!508120) (not e!419638))))

(assert (=> b!752273 (= res!508120 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20015 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752274 () Bool)

(declare-fun e!419639 () Bool)

(assert (=> b!752274 (= e!419641 e!419639)))

(declare-fun res!508119 () Bool)

(assert (=> b!752274 (=> res!508119 e!419639)))

(assert (=> b!752274 (= res!508119 (not (= lt!334643 lt!334638)))))

(assert (=> b!752274 (= lt!334643 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20015 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752275 () Bool)

(declare-fun e!419640 () Unit!25890)

(declare-fun Unit!25892 () Unit!25890)

(assert (=> b!752275 (= e!419640 Unit!25892)))

(declare-fun b!752276 () Bool)

(declare-fun res!508123 () Bool)

(assert (=> b!752276 (=> (not res!508123) (not e!419645))))

(assert (=> b!752276 (= res!508123 (validKeyInArray!0 (select (arr!20015 a!3186) j!159)))))

(declare-fun b!752277 () Bool)

(assert (=> b!752277 (= e!419645 e!419642)))

(declare-fun res!508111 () Bool)

(assert (=> b!752277 (=> (not res!508111) (not e!419642))))

(declare-fun lt!334646 () SeekEntryResult!7622)

(assert (=> b!752277 (= res!508111 (or (= lt!334646 (MissingZero!7622 i!1173)) (= lt!334646 (MissingVacant!7622 i!1173))))))

(assert (=> b!752277 (= lt!334646 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!752278 () Bool)

(declare-fun Unit!25893 () Unit!25890)

(assert (=> b!752278 (= e!419640 Unit!25893)))

(assert (=> b!752278 false))

(declare-fun b!752279 () Bool)

(declare-fun e!419637 () Bool)

(assert (=> b!752279 (= e!419639 e!419637)))

(declare-fun res!508109 () Bool)

(assert (=> b!752279 (=> res!508109 e!419637)))

(declare-fun lt!334641 () (_ BitVec 64))

(assert (=> b!752279 (= res!508109 (= lt!334641 lt!334642))))

(assert (=> b!752279 (= lt!334641 (select (store (arr!20015 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!752280 () Bool)

(assert (=> b!752280 (= e!419637 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!752280 e!419635))

(declare-fun res!508116 () Bool)

(assert (=> b!752280 (=> (not res!508116) (not e!419635))))

(assert (=> b!752280 (= res!508116 (= lt!334641 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334636 () Unit!25890)

(assert (=> b!752280 (= lt!334636 e!419640)))

(declare-fun c!82458 () Bool)

(assert (=> b!752280 (= c!82458 (= lt!334641 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752281 () Bool)

(declare-fun res!508114 () Bool)

(assert (=> b!752281 (=> (not res!508114) (not e!419635))))

(assert (=> b!752281 (= res!508114 (= (seekEntryOrOpen!0 lt!334642 lt!334635 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334642 lt!334635 mask!3328)))))

(declare-fun b!752282 () Bool)

(declare-fun res!508117 () Bool)

(assert (=> b!752282 (=> (not res!508117) (not e!419645))))

(declare-fun arrayContainsKey!0 (array!41810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752282 (= res!508117 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65684 res!508107) b!752261))

(assert (= (and b!752261 res!508122) b!752276))

(assert (= (and b!752276 res!508123) b!752264))

(assert (= (and b!752264 res!508113) b!752282))

(assert (= (and b!752282 res!508117) b!752277))

(assert (= (and b!752277 res!508111) b!752262))

(assert (= (and b!752262 res!508125) b!752271))

(assert (= (and b!752271 res!508115) b!752260))

(assert (= (and b!752260 res!508121) b!752272))

(assert (= (and b!752272 res!508124) b!752273))

(assert (= (and b!752273 res!508120) b!752267))

(assert (= (and b!752267 c!82457) b!752263))

(assert (= (and b!752267 (not c!82457)) b!752265))

(assert (= (and b!752267 res!508108) b!752269))

(assert (= (and b!752269 res!508110) b!752266))

(assert (= (and b!752266 res!508112) b!752270))

(assert (= (and b!752266 (not res!508118)) b!752274))

(assert (= (and b!752274 (not res!508119)) b!752279))

(assert (= (and b!752279 (not res!508109)) b!752280))

(assert (= (and b!752280 c!82458) b!752278))

(assert (= (and b!752280 (not c!82458)) b!752275))

(assert (= (and b!752280 res!508116) b!752281))

(assert (= (and b!752281 res!508114) b!752268))

(declare-fun m!701313 () Bool)

(assert (=> b!752273 m!701313))

(declare-fun m!701315 () Bool)

(assert (=> b!752279 m!701315))

(declare-fun m!701317 () Bool)

(assert (=> b!752279 m!701317))

(declare-fun m!701319 () Bool)

(assert (=> b!752263 m!701319))

(assert (=> b!752263 m!701319))

(declare-fun m!701321 () Bool)

(assert (=> b!752263 m!701321))

(declare-fun m!701323 () Bool)

(assert (=> b!752269 m!701323))

(assert (=> b!752269 m!701323))

(declare-fun m!701325 () Bool)

(assert (=> b!752269 m!701325))

(declare-fun m!701327 () Bool)

(assert (=> b!752269 m!701327))

(assert (=> b!752269 m!701315))

(declare-fun m!701329 () Bool)

(assert (=> b!752269 m!701329))

(declare-fun m!701331 () Bool)

(assert (=> b!752262 m!701331))

(declare-fun m!701333 () Bool)

(assert (=> b!752277 m!701333))

(declare-fun m!701335 () Bool)

(assert (=> b!752271 m!701335))

(assert (=> b!752276 m!701319))

(assert (=> b!752276 m!701319))

(declare-fun m!701337 () Bool)

(assert (=> b!752276 m!701337))

(declare-fun m!701339 () Bool)

(assert (=> b!752264 m!701339))

(assert (=> b!752272 m!701319))

(assert (=> b!752272 m!701319))

(declare-fun m!701341 () Bool)

(assert (=> b!752272 m!701341))

(assert (=> b!752272 m!701341))

(assert (=> b!752272 m!701319))

(declare-fun m!701343 () Bool)

(assert (=> b!752272 m!701343))

(assert (=> b!752265 m!701319))

(assert (=> b!752265 m!701319))

(declare-fun m!701345 () Bool)

(assert (=> b!752265 m!701345))

(assert (=> b!752270 m!701319))

(assert (=> b!752270 m!701319))

(declare-fun m!701347 () Bool)

(assert (=> b!752270 m!701347))

(declare-fun m!701349 () Bool)

(assert (=> b!752281 m!701349))

(declare-fun m!701351 () Bool)

(assert (=> b!752281 m!701351))

(assert (=> b!752274 m!701319))

(assert (=> b!752274 m!701319))

(assert (=> b!752274 m!701345))

(declare-fun m!701353 () Bool)

(assert (=> b!752282 m!701353))

(declare-fun m!701355 () Bool)

(assert (=> start!65684 m!701355))

(declare-fun m!701357 () Bool)

(assert (=> start!65684 m!701357))

(assert (=> b!752266 m!701319))

(assert (=> b!752266 m!701319))

(declare-fun m!701359 () Bool)

(assert (=> b!752266 m!701359))

(declare-fun m!701361 () Bool)

(assert (=> b!752266 m!701361))

(declare-fun m!701363 () Bool)

(assert (=> b!752266 m!701363))

(push 1)

(assert (not b!752277))

(assert (not b!752276))

(assert (not b!752264))

(assert (not b!752269))

(assert (not b!752270))

(assert (not b!752265))

(assert (not b!752282))

(assert (not b!752266))

(assert (not start!65684))

(assert (not b!752281))

(assert (not b!752274))

(assert (not b!752262))

(assert (not b!752272))

(assert (not b!752271))

(assert (not b!752263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

