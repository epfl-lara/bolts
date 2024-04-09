; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67734 () Bool)

(assert start!67734)

(declare-fun b!785313 () Bool)

(declare-fun res!531706 () Bool)

(declare-fun e!436615 () Bool)

(assert (=> b!785313 (=> (not res!531706) (not e!436615))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42729 0))(
  ( (array!42730 (arr!20449 (Array (_ BitVec 32) (_ BitVec 64))) (size!20870 (_ BitVec 32))) )
))
(declare-fun lt!350184 () array!42729)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!350181 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8056 0))(
  ( (MissingZero!8056 (index!34591 (_ BitVec 32))) (Found!8056 (index!34592 (_ BitVec 32))) (Intermediate!8056 (undefined!8868 Bool) (index!34593 (_ BitVec 32)) (x!65565 (_ BitVec 32))) (Undefined!8056) (MissingVacant!8056 (index!34594 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42729 (_ BitVec 32)) SeekEntryResult!8056)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42729 (_ BitVec 32)) SeekEntryResult!8056)

(assert (=> b!785313 (= res!531706 (= (seekEntryOrOpen!0 lt!350181 lt!350184 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350181 lt!350184 mask!3328)))))

(declare-fun b!785314 () Bool)

(declare-fun res!531714 () Bool)

(declare-fun e!436607 () Bool)

(assert (=> b!785314 (=> (not res!531714) (not e!436607))))

(declare-fun a!3186 () array!42729)

(declare-datatypes ((List!14504 0))(
  ( (Nil!14501) (Cons!14500 (h!15623 (_ BitVec 64)) (t!20827 List!14504)) )
))
(declare-fun arrayNoDuplicates!0 (array!42729 (_ BitVec 32) List!14504) Bool)

(assert (=> b!785314 (= res!531714 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14501))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!436611 () Bool)

(declare-fun b!785315 () Bool)

(assert (=> b!785315 (= e!436611 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20449 a!3186) j!159) a!3186 mask!3328) (Found!8056 j!159)))))

(declare-fun b!785316 () Bool)

(declare-fun e!436613 () Bool)

(declare-fun e!436608 () Bool)

(assert (=> b!785316 (= e!436613 e!436608)))

(declare-fun res!531709 () Bool)

(assert (=> b!785316 (=> res!531709 e!436608)))

(declare-fun lt!350175 () SeekEntryResult!8056)

(declare-fun lt!350179 () SeekEntryResult!8056)

(assert (=> b!785316 (= res!531709 (not (= lt!350175 lt!350179)))))

(assert (=> b!785316 (= lt!350175 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20449 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785317 () Bool)

(declare-fun res!531703 () Bool)

(assert (=> b!785317 (=> (not res!531703) (not e!436607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42729 (_ BitVec 32)) Bool)

(assert (=> b!785317 (= res!531703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785318 () Bool)

(declare-fun e!436616 () Bool)

(assert (=> b!785318 (= e!436616 true)))

(assert (=> b!785318 e!436615))

(declare-fun res!531697 () Bool)

(assert (=> b!785318 (=> (not res!531697) (not e!436615))))

(declare-fun lt!350177 () (_ BitVec 64))

(assert (=> b!785318 (= res!531697 (= lt!350177 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27134 0))(
  ( (Unit!27135) )
))
(declare-fun lt!350185 () Unit!27134)

(declare-fun e!436618 () Unit!27134)

(assert (=> b!785318 (= lt!350185 e!436618)))

(declare-fun c!87216 () Bool)

(assert (=> b!785318 (= c!87216 (= lt!350177 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!785319 () Bool)

(declare-fun Unit!27136 () Unit!27134)

(assert (=> b!785319 (= e!436618 Unit!27136)))

(declare-fun b!785320 () Bool)

(declare-fun lt!350182 () SeekEntryResult!8056)

(assert (=> b!785320 (= e!436615 (= lt!350182 lt!350175))))

(declare-fun b!785321 () Bool)

(declare-fun res!531713 () Bool)

(declare-fun e!436609 () Bool)

(assert (=> b!785321 (=> (not res!531713) (not e!436609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785321 (= res!531713 (validKeyInArray!0 (select (arr!20449 a!3186) j!159)))))

(declare-fun b!785322 () Bool)

(declare-fun res!531701 () Bool)

(assert (=> b!785322 (=> (not res!531701) (not e!436607))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!785322 (= res!531701 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20870 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20870 a!3186))))))

(declare-fun b!785323 () Bool)

(declare-fun e!436614 () Bool)

(declare-fun e!436612 () Bool)

(assert (=> b!785323 (= e!436614 e!436612)))

(declare-fun res!531710 () Bool)

(assert (=> b!785323 (=> (not res!531710) (not e!436612))))

(declare-fun lt!350176 () SeekEntryResult!8056)

(declare-fun lt!350183 () SeekEntryResult!8056)

(assert (=> b!785323 (= res!531710 (= lt!350176 lt!350183))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42729 (_ BitVec 32)) SeekEntryResult!8056)

(assert (=> b!785323 (= lt!350183 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350181 lt!350184 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785323 (= lt!350176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350181 mask!3328) lt!350181 lt!350184 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!785323 (= lt!350181 (select (store (arr!20449 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!785323 (= lt!350184 (array!42730 (store (arr!20449 a!3186) i!1173 k0!2102) (size!20870 a!3186)))))

(declare-fun b!785324 () Bool)

(assert (=> b!785324 (= e!436609 e!436607)))

(declare-fun res!531698 () Bool)

(assert (=> b!785324 (=> (not res!531698) (not e!436607))))

(declare-fun lt!350178 () SeekEntryResult!8056)

(assert (=> b!785324 (= res!531698 (or (= lt!350178 (MissingZero!8056 i!1173)) (= lt!350178 (MissingVacant!8056 i!1173))))))

(assert (=> b!785324 (= lt!350178 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!785325 () Bool)

(declare-fun res!531708 () Bool)

(assert (=> b!785325 (=> (not res!531708) (not e!436614))))

(assert (=> b!785325 (= res!531708 e!436611)))

(declare-fun c!87215 () Bool)

(assert (=> b!785325 (= c!87215 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785312 () Bool)

(declare-fun res!531707 () Bool)

(assert (=> b!785312 (=> (not res!531707) (not e!436609))))

(declare-fun arrayContainsKey!0 (array!42729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785312 (= res!531707 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!531705 () Bool)

(assert (=> start!67734 (=> (not res!531705) (not e!436609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67734 (= res!531705 (validMask!0 mask!3328))))

(assert (=> start!67734 e!436609))

(assert (=> start!67734 true))

(declare-fun array_inv!16223 (array!42729) Bool)

(assert (=> start!67734 (array_inv!16223 a!3186)))

(declare-fun b!785326 () Bool)

(declare-fun Unit!27137 () Unit!27134)

(assert (=> b!785326 (= e!436618 Unit!27137)))

(assert (=> b!785326 false))

(declare-fun b!785327 () Bool)

(declare-fun e!436610 () Bool)

(assert (=> b!785327 (= e!436610 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20449 a!3186) j!159) a!3186 mask!3328) lt!350179))))

(declare-fun b!785328 () Bool)

(declare-fun lt!350174 () SeekEntryResult!8056)

(assert (=> b!785328 (= e!436611 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20449 a!3186) j!159) a!3186 mask!3328) lt!350174))))

(declare-fun b!785329 () Bool)

(assert (=> b!785329 (= e!436607 e!436614)))

(declare-fun res!531700 () Bool)

(assert (=> b!785329 (=> (not res!531700) (not e!436614))))

(assert (=> b!785329 (= res!531700 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20449 a!3186) j!159) mask!3328) (select (arr!20449 a!3186) j!159) a!3186 mask!3328) lt!350174))))

(assert (=> b!785329 (= lt!350174 (Intermediate!8056 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785330 () Bool)

(assert (=> b!785330 (= e!436608 e!436616)))

(declare-fun res!531702 () Bool)

(assert (=> b!785330 (=> res!531702 e!436616)))

(assert (=> b!785330 (= res!531702 (= lt!350177 lt!350181))))

(assert (=> b!785330 (= lt!350177 (select (store (arr!20449 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!785331 () Bool)

(declare-fun res!531711 () Bool)

(assert (=> b!785331 (=> (not res!531711) (not e!436614))))

(assert (=> b!785331 (= res!531711 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20449 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785332 () Bool)

(declare-fun res!531712 () Bool)

(assert (=> b!785332 (=> (not res!531712) (not e!436609))))

(assert (=> b!785332 (= res!531712 (and (= (size!20870 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20870 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20870 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785333 () Bool)

(assert (=> b!785333 (= e!436612 (not e!436613))))

(declare-fun res!531699 () Bool)

(assert (=> b!785333 (=> res!531699 e!436613)))

(get-info :version)

(assert (=> b!785333 (= res!531699 (or (not ((_ is Intermediate!8056) lt!350183)) (bvslt x!1131 (x!65565 lt!350183)) (not (= x!1131 (x!65565 lt!350183))) (not (= index!1321 (index!34593 lt!350183)))))))

(assert (=> b!785333 e!436610))

(declare-fun res!531704 () Bool)

(assert (=> b!785333 (=> (not res!531704) (not e!436610))))

(assert (=> b!785333 (= res!531704 (= lt!350182 lt!350179))))

(assert (=> b!785333 (= lt!350179 (Found!8056 j!159))))

(assert (=> b!785333 (= lt!350182 (seekEntryOrOpen!0 (select (arr!20449 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!785333 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350180 () Unit!27134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42729 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27134)

(assert (=> b!785333 (= lt!350180 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785334 () Bool)

(declare-fun res!531715 () Bool)

(assert (=> b!785334 (=> (not res!531715) (not e!436609))))

(assert (=> b!785334 (= res!531715 (validKeyInArray!0 k0!2102))))

(assert (= (and start!67734 res!531705) b!785332))

(assert (= (and b!785332 res!531712) b!785321))

(assert (= (and b!785321 res!531713) b!785334))

(assert (= (and b!785334 res!531715) b!785312))

(assert (= (and b!785312 res!531707) b!785324))

(assert (= (and b!785324 res!531698) b!785317))

(assert (= (and b!785317 res!531703) b!785314))

(assert (= (and b!785314 res!531714) b!785322))

(assert (= (and b!785322 res!531701) b!785329))

(assert (= (and b!785329 res!531700) b!785331))

(assert (= (and b!785331 res!531711) b!785325))

(assert (= (and b!785325 c!87215) b!785328))

(assert (= (and b!785325 (not c!87215)) b!785315))

(assert (= (and b!785325 res!531708) b!785323))

(assert (= (and b!785323 res!531710) b!785333))

(assert (= (and b!785333 res!531704) b!785327))

(assert (= (and b!785333 (not res!531699)) b!785316))

(assert (= (and b!785316 (not res!531709)) b!785330))

(assert (= (and b!785330 (not res!531702)) b!785318))

(assert (= (and b!785318 c!87216) b!785326))

(assert (= (and b!785318 (not c!87216)) b!785319))

(assert (= (and b!785318 res!531697) b!785313))

(assert (= (and b!785313 res!531706) b!785320))

(declare-fun m!727457 () Bool)

(assert (=> b!785323 m!727457))

(declare-fun m!727459 () Bool)

(assert (=> b!785323 m!727459))

(declare-fun m!727461 () Bool)

(assert (=> b!785323 m!727461))

(assert (=> b!785323 m!727457))

(declare-fun m!727463 () Bool)

(assert (=> b!785323 m!727463))

(declare-fun m!727465 () Bool)

(assert (=> b!785323 m!727465))

(declare-fun m!727467 () Bool)

(assert (=> b!785312 m!727467))

(declare-fun m!727469 () Bool)

(assert (=> b!785327 m!727469))

(assert (=> b!785327 m!727469))

(declare-fun m!727471 () Bool)

(assert (=> b!785327 m!727471))

(assert (=> b!785330 m!727459))

(declare-fun m!727473 () Bool)

(assert (=> b!785330 m!727473))

(declare-fun m!727475 () Bool)

(assert (=> b!785314 m!727475))

(assert (=> b!785321 m!727469))

(assert (=> b!785321 m!727469))

(declare-fun m!727477 () Bool)

(assert (=> b!785321 m!727477))

(assert (=> b!785316 m!727469))

(assert (=> b!785316 m!727469))

(declare-fun m!727479 () Bool)

(assert (=> b!785316 m!727479))

(assert (=> b!785315 m!727469))

(assert (=> b!785315 m!727469))

(assert (=> b!785315 m!727479))

(declare-fun m!727481 () Bool)

(assert (=> b!785317 m!727481))

(declare-fun m!727483 () Bool)

(assert (=> b!785334 m!727483))

(assert (=> b!785333 m!727469))

(assert (=> b!785333 m!727469))

(declare-fun m!727485 () Bool)

(assert (=> b!785333 m!727485))

(declare-fun m!727487 () Bool)

(assert (=> b!785333 m!727487))

(declare-fun m!727489 () Bool)

(assert (=> b!785333 m!727489))

(assert (=> b!785329 m!727469))

(assert (=> b!785329 m!727469))

(declare-fun m!727491 () Bool)

(assert (=> b!785329 m!727491))

(assert (=> b!785329 m!727491))

(assert (=> b!785329 m!727469))

(declare-fun m!727493 () Bool)

(assert (=> b!785329 m!727493))

(declare-fun m!727495 () Bool)

(assert (=> start!67734 m!727495))

(declare-fun m!727497 () Bool)

(assert (=> start!67734 m!727497))

(declare-fun m!727499 () Bool)

(assert (=> b!785324 m!727499))

(declare-fun m!727501 () Bool)

(assert (=> b!785331 m!727501))

(declare-fun m!727503 () Bool)

(assert (=> b!785313 m!727503))

(declare-fun m!727505 () Bool)

(assert (=> b!785313 m!727505))

(assert (=> b!785328 m!727469))

(assert (=> b!785328 m!727469))

(declare-fun m!727507 () Bool)

(assert (=> b!785328 m!727507))

(check-sat (not b!785316) (not b!785321) (not b!785333) (not b!785313) (not b!785334) (not b!785317) (not start!67734) (not b!785327) (not b!785324) (not b!785329) (not b!785328) (not b!785315) (not b!785314) (not b!785312) (not b!785323))
(check-sat)
