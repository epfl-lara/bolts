; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65398 () Bool)

(assert start!65398)

(declare-fun b!743553 () Bool)

(declare-fun e!415440 () Bool)

(declare-fun e!415437 () Bool)

(assert (=> b!743553 (= e!415440 e!415437)))

(declare-fun res!500763 () Bool)

(assert (=> b!743553 (=> (not res!500763) (not e!415437))))

(declare-datatypes ((SeekEntryResult!7479 0))(
  ( (MissingZero!7479 (index!32283 (_ BitVec 32))) (Found!7479 (index!32284 (_ BitVec 32))) (Intermediate!7479 (undefined!8291 Bool) (index!32285 (_ BitVec 32)) (x!63278 (_ BitVec 32))) (Undefined!7479) (MissingVacant!7479 (index!32286 (_ BitVec 32))) )
))
(declare-fun lt!330317 () SeekEntryResult!7479)

(declare-fun lt!330315 () SeekEntryResult!7479)

(assert (=> b!743553 (= res!500763 (= lt!330317 lt!330315))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!330316 () (_ BitVec 64))

(declare-datatypes ((array!41524 0))(
  ( (array!41525 (arr!19872 (Array (_ BitVec 32) (_ BitVec 64))) (size!20293 (_ BitVec 32))) )
))
(declare-fun lt!330311 () array!41524)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41524 (_ BitVec 32)) SeekEntryResult!7479)

(assert (=> b!743553 (= lt!330315 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330316 lt!330311 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743553 (= lt!330317 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330316 mask!3328) lt!330316 lt!330311 mask!3328))))

(declare-fun a!3186 () array!41524)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!743553 (= lt!330316 (select (store (arr!19872 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!743553 (= lt!330311 (array!41525 (store (arr!19872 a!3186) i!1173 k!2102) (size!20293 a!3186)))))

(declare-fun b!743554 () Bool)

(declare-fun res!500768 () Bool)

(declare-fun e!415439 () Bool)

(assert (=> b!743554 (=> (not res!500768) (not e!415439))))

(declare-fun arrayContainsKey!0 (array!41524 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743554 (= res!500768 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743555 () Bool)

(declare-fun res!500764 () Bool)

(assert (=> b!743555 (=> (not res!500764) (not e!415439))))

(assert (=> b!743555 (= res!500764 (and (= (size!20293 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20293 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20293 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743556 () Bool)

(declare-fun res!500767 () Bool)

(assert (=> b!743556 (=> (not res!500767) (not e!415439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743556 (= res!500767 (validKeyInArray!0 k!2102))))

(declare-fun b!743557 () Bool)

(declare-fun res!500773 () Bool)

(declare-fun e!415436 () Bool)

(assert (=> b!743557 (=> (not res!500773) (not e!415436))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743557 (= res!500773 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20293 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20293 a!3186))))))

(declare-fun b!743558 () Bool)

(declare-fun e!415438 () Bool)

(declare-fun lt!330310 () SeekEntryResult!7479)

(assert (=> b!743558 (= e!415438 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19872 a!3186) j!159) a!3186 mask!3328) lt!330310))))

(declare-fun res!500772 () Bool)

(assert (=> start!65398 (=> (not res!500772) (not e!415439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65398 (= res!500772 (validMask!0 mask!3328))))

(assert (=> start!65398 e!415439))

(assert (=> start!65398 true))

(declare-fun array_inv!15646 (array!41524) Bool)

(assert (=> start!65398 (array_inv!15646 a!3186)))

(declare-fun b!743559 () Bool)

(declare-fun res!500766 () Bool)

(assert (=> b!743559 (=> (not res!500766) (not e!415436))))

(declare-datatypes ((List!13927 0))(
  ( (Nil!13924) (Cons!13923 (h!14995 (_ BitVec 64)) (t!20250 List!13927)) )
))
(declare-fun arrayNoDuplicates!0 (array!41524 (_ BitVec 32) List!13927) Bool)

(assert (=> b!743559 (= res!500766 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13924))))

(declare-fun b!743560 () Bool)

(declare-fun res!500761 () Bool)

(assert (=> b!743560 (=> (not res!500761) (not e!415436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41524 (_ BitVec 32)) Bool)

(assert (=> b!743560 (= res!500761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743561 () Bool)

(assert (=> b!743561 (= e!415436 e!415440)))

(declare-fun res!500762 () Bool)

(assert (=> b!743561 (=> (not res!500762) (not e!415440))))

(assert (=> b!743561 (= res!500762 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19872 a!3186) j!159) mask!3328) (select (arr!19872 a!3186) j!159) a!3186 mask!3328) lt!330310))))

(assert (=> b!743561 (= lt!330310 (Intermediate!7479 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743562 () Bool)

(declare-fun res!500774 () Bool)

(assert (=> b!743562 (=> (not res!500774) (not e!415440))))

(assert (=> b!743562 (= res!500774 e!415438)))

(declare-fun c!81777 () Bool)

(assert (=> b!743562 (= c!81777 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743563 () Bool)

(declare-fun res!500760 () Bool)

(assert (=> b!743563 (=> (not res!500760) (not e!415440))))

(assert (=> b!743563 (= res!500760 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19872 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743564 () Bool)

(declare-fun res!500770 () Bool)

(assert (=> b!743564 (=> (not res!500770) (not e!415439))))

(assert (=> b!743564 (= res!500770 (validKeyInArray!0 (select (arr!19872 a!3186) j!159)))))

(declare-fun b!743565 () Bool)

(declare-fun e!415435 () Bool)

(declare-fun e!415442 () Bool)

(assert (=> b!743565 (= e!415435 e!415442)))

(declare-fun res!500771 () Bool)

(assert (=> b!743565 (=> (not res!500771) (not e!415442))))

(declare-fun lt!330314 () SeekEntryResult!7479)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41524 (_ BitVec 32)) SeekEntryResult!7479)

(assert (=> b!743565 (= res!500771 (= (seekEntryOrOpen!0 (select (arr!19872 a!3186) j!159) a!3186 mask!3328) lt!330314))))

(assert (=> b!743565 (= lt!330314 (Found!7479 j!159))))

(declare-fun b!743566 () Bool)

(declare-fun e!415443 () Bool)

(assert (=> b!743566 (= e!415437 (not e!415443))))

(declare-fun res!500765 () Bool)

(assert (=> b!743566 (=> res!500765 e!415443)))

(assert (=> b!743566 (= res!500765 (or (not (is-Intermediate!7479 lt!330315)) (bvslt x!1131 (x!63278 lt!330315)) (not (= x!1131 (x!63278 lt!330315))) (not (= index!1321 (index!32285 lt!330315)))))))

(assert (=> b!743566 e!415435))

(declare-fun res!500769 () Bool)

(assert (=> b!743566 (=> (not res!500769) (not e!415435))))

(assert (=> b!743566 (= res!500769 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25438 0))(
  ( (Unit!25439) )
))
(declare-fun lt!330309 () Unit!25438)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41524 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25438)

(assert (=> b!743566 (= lt!330309 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743567 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41524 (_ BitVec 32)) SeekEntryResult!7479)

(assert (=> b!743567 (= e!415442 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19872 a!3186) j!159) a!3186 mask!3328) lt!330314))))

(declare-fun b!743568 () Bool)

(assert (=> b!743568 (= e!415438 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19872 a!3186) j!159) a!3186 mask!3328) (Found!7479 j!159)))))

(declare-fun b!743569 () Bool)

(assert (=> b!743569 (= e!415443 true)))

(declare-fun lt!330312 () SeekEntryResult!7479)

(assert (=> b!743569 (= lt!330312 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19872 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!743570 () Bool)

(assert (=> b!743570 (= e!415439 e!415436)))

(declare-fun res!500775 () Bool)

(assert (=> b!743570 (=> (not res!500775) (not e!415436))))

(declare-fun lt!330313 () SeekEntryResult!7479)

(assert (=> b!743570 (= res!500775 (or (= lt!330313 (MissingZero!7479 i!1173)) (= lt!330313 (MissingVacant!7479 i!1173))))))

(assert (=> b!743570 (= lt!330313 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65398 res!500772) b!743555))

(assert (= (and b!743555 res!500764) b!743564))

(assert (= (and b!743564 res!500770) b!743556))

(assert (= (and b!743556 res!500767) b!743554))

(assert (= (and b!743554 res!500768) b!743570))

(assert (= (and b!743570 res!500775) b!743560))

(assert (= (and b!743560 res!500761) b!743559))

(assert (= (and b!743559 res!500766) b!743557))

(assert (= (and b!743557 res!500773) b!743561))

(assert (= (and b!743561 res!500762) b!743563))

(assert (= (and b!743563 res!500760) b!743562))

(assert (= (and b!743562 c!81777) b!743558))

(assert (= (and b!743562 (not c!81777)) b!743568))

(assert (= (and b!743562 res!500774) b!743553))

(assert (= (and b!743553 res!500763) b!743566))

(assert (= (and b!743566 res!500769) b!743565))

(assert (= (and b!743565 res!500771) b!743567))

(assert (= (and b!743566 (not res!500765)) b!743569))

(declare-fun m!694297 () Bool)

(assert (=> start!65398 m!694297))

(declare-fun m!694299 () Bool)

(assert (=> start!65398 m!694299))

(declare-fun m!694301 () Bool)

(assert (=> b!743553 m!694301))

(declare-fun m!694303 () Bool)

(assert (=> b!743553 m!694303))

(declare-fun m!694305 () Bool)

(assert (=> b!743553 m!694305))

(assert (=> b!743553 m!694301))

(declare-fun m!694307 () Bool)

(assert (=> b!743553 m!694307))

(declare-fun m!694309 () Bool)

(assert (=> b!743553 m!694309))

(declare-fun m!694311 () Bool)

(assert (=> b!743568 m!694311))

(assert (=> b!743568 m!694311))

(declare-fun m!694313 () Bool)

(assert (=> b!743568 m!694313))

(declare-fun m!694315 () Bool)

(assert (=> b!743559 m!694315))

(assert (=> b!743558 m!694311))

(assert (=> b!743558 m!694311))

(declare-fun m!694317 () Bool)

(assert (=> b!743558 m!694317))

(declare-fun m!694319 () Bool)

(assert (=> b!743563 m!694319))

(assert (=> b!743565 m!694311))

(assert (=> b!743565 m!694311))

(declare-fun m!694321 () Bool)

(assert (=> b!743565 m!694321))

(declare-fun m!694323 () Bool)

(assert (=> b!743556 m!694323))

(declare-fun m!694325 () Bool)

(assert (=> b!743554 m!694325))

(declare-fun m!694327 () Bool)

(assert (=> b!743570 m!694327))

(assert (=> b!743561 m!694311))

(assert (=> b!743561 m!694311))

(declare-fun m!694329 () Bool)

(assert (=> b!743561 m!694329))

(assert (=> b!743561 m!694329))

(assert (=> b!743561 m!694311))

(declare-fun m!694331 () Bool)

(assert (=> b!743561 m!694331))

(declare-fun m!694333 () Bool)

(assert (=> b!743566 m!694333))

(declare-fun m!694335 () Bool)

(assert (=> b!743566 m!694335))

(assert (=> b!743569 m!694311))

(assert (=> b!743569 m!694311))

(assert (=> b!743569 m!694313))

(assert (=> b!743564 m!694311))

(assert (=> b!743564 m!694311))

(declare-fun m!694337 () Bool)

(assert (=> b!743564 m!694337))

(assert (=> b!743567 m!694311))

(assert (=> b!743567 m!694311))

(declare-fun m!694339 () Bool)

(assert (=> b!743567 m!694339))

(declare-fun m!694341 () Bool)

(assert (=> b!743560 m!694341))

(push 1)

