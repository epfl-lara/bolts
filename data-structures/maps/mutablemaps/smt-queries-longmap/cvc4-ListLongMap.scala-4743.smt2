; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65540 () Bool)

(assert start!65540)

(declare-fun res!504261 () Bool)

(declare-fun e!417365 () Bool)

(assert (=> start!65540 (=> (not res!504261) (not e!417365))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65540 (= res!504261 (validMask!0 mask!3328))))

(assert (=> start!65540 e!417365))

(assert (=> start!65540 true))

(declare-datatypes ((array!41666 0))(
  ( (array!41667 (arr!19943 (Array (_ BitVec 32) (_ BitVec 64))) (size!20364 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41666)

(declare-fun array_inv!15717 (array!41666) Bool)

(assert (=> start!65540 (array_inv!15717 a!3186)))

(declare-fun b!747536 () Bool)

(declare-datatypes ((Unit!25602 0))(
  ( (Unit!25603) )
))
(declare-fun e!417360 () Unit!25602)

(declare-fun Unit!25604 () Unit!25602)

(assert (=> b!747536 (= e!417360 Unit!25604)))

(declare-fun b!747537 () Bool)

(declare-fun res!504247 () Bool)

(declare-fun e!417368 () Bool)

(assert (=> b!747537 (=> res!504247 e!417368)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!332304 () (_ BitVec 64))

(assert (=> b!747537 (= res!504247 (= (select (store (arr!19943 a!3186) i!1173 k!2102) index!1321) lt!332304))))

(declare-fun b!747538 () Bool)

(declare-fun res!504253 () Bool)

(assert (=> b!747538 (=> (not res!504253) (not e!417365))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!747538 (= res!504253 (and (= (size!20364 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20364 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20364 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747539 () Bool)

(declare-fun res!504251 () Bool)

(declare-fun e!417366 () Bool)

(assert (=> b!747539 (=> (not res!504251) (not e!417366))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747539 (= res!504251 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20364 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20364 a!3186))))))

(declare-fun b!747540 () Bool)

(assert (=> b!747540 (= e!417365 e!417366)))

(declare-fun res!504249 () Bool)

(assert (=> b!747540 (=> (not res!504249) (not e!417366))))

(declare-datatypes ((SeekEntryResult!7550 0))(
  ( (MissingZero!7550 (index!32567 (_ BitVec 32))) (Found!7550 (index!32568 (_ BitVec 32))) (Intermediate!7550 (undefined!8362 Bool) (index!32569 (_ BitVec 32)) (x!63533 (_ BitVec 32))) (Undefined!7550) (MissingVacant!7550 (index!32570 (_ BitVec 32))) )
))
(declare-fun lt!332300 () SeekEntryResult!7550)

(assert (=> b!747540 (= res!504249 (or (= lt!332300 (MissingZero!7550 i!1173)) (= lt!332300 (MissingVacant!7550 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41666 (_ BitVec 32)) SeekEntryResult!7550)

(assert (=> b!747540 (= lt!332300 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!747541 () Bool)

(declare-fun res!504255 () Bool)

(declare-fun e!417361 () Bool)

(assert (=> b!747541 (=> (not res!504255) (not e!417361))))

(declare-fun e!417367 () Bool)

(assert (=> b!747541 (= res!504255 e!417367)))

(declare-fun c!82025 () Bool)

(assert (=> b!747541 (= c!82025 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!332298 () SeekEntryResult!7550)

(declare-fun b!747542 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41666 (_ BitVec 32)) SeekEntryResult!7550)

(assert (=> b!747542 (= e!417367 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19943 a!3186) j!159) a!3186 mask!3328) lt!332298))))

(declare-fun b!747543 () Bool)

(declare-fun e!417369 () Bool)

(declare-fun lt!332306 () SeekEntryResult!7550)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41666 (_ BitVec 32)) SeekEntryResult!7550)

(assert (=> b!747543 (= e!417369 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19943 a!3186) j!159) a!3186 mask!3328) lt!332306))))

(declare-fun b!747544 () Bool)

(declare-fun res!504256 () Bool)

(assert (=> b!747544 (=> (not res!504256) (not e!417366))))

(declare-datatypes ((List!13998 0))(
  ( (Nil!13995) (Cons!13994 (h!15066 (_ BitVec 64)) (t!20321 List!13998)) )
))
(declare-fun arrayNoDuplicates!0 (array!41666 (_ BitVec 32) List!13998) Bool)

(assert (=> b!747544 (= res!504256 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13995))))

(declare-fun b!747545 () Bool)

(declare-fun res!504263 () Bool)

(assert (=> b!747545 (=> (not res!504263) (not e!417366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41666 (_ BitVec 32)) Bool)

(assert (=> b!747545 (= res!504263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747546 () Bool)

(declare-fun e!417363 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747546 (= e!417363 (validKeyInArray!0 lt!332304))))

(declare-fun b!747547 () Bool)

(assert (=> b!747547 (= e!417366 e!417361)))

(declare-fun res!504250 () Bool)

(assert (=> b!747547 (=> (not res!504250) (not e!417361))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747547 (= res!504250 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19943 a!3186) j!159) mask!3328) (select (arr!19943 a!3186) j!159) a!3186 mask!3328) lt!332298))))

(assert (=> b!747547 (= lt!332298 (Intermediate!7550 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747548 () Bool)

(assert (=> b!747548 (= e!417368 e!417363)))

(declare-fun res!504260 () Bool)

(assert (=> b!747548 (=> res!504260 e!417363)))

(assert (=> b!747548 (= res!504260 (bvslt mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!747548 (= (select (store (arr!19943 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332297 () Unit!25602)

(assert (=> b!747548 (= lt!332297 e!417360)))

(declare-fun c!82026 () Bool)

(assert (=> b!747548 (= c!82026 (= (select (store (arr!19943 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747549 () Bool)

(declare-fun e!417364 () Bool)

(assert (=> b!747549 (= e!417364 (not e!417368))))

(declare-fun res!504248 () Bool)

(assert (=> b!747549 (=> res!504248 e!417368)))

(declare-fun lt!332299 () SeekEntryResult!7550)

(assert (=> b!747549 (= res!504248 (or (not (is-Intermediate!7550 lt!332299)) (bvslt x!1131 (x!63533 lt!332299)) (not (= x!1131 (x!63533 lt!332299))) (not (= index!1321 (index!32569 lt!332299)))))))

(assert (=> b!747549 e!417369))

(declare-fun res!504252 () Bool)

(assert (=> b!747549 (=> (not res!504252) (not e!417369))))

(declare-fun lt!332303 () SeekEntryResult!7550)

(assert (=> b!747549 (= res!504252 (= lt!332303 lt!332306))))

(assert (=> b!747549 (= lt!332306 (Found!7550 j!159))))

(assert (=> b!747549 (= lt!332303 (seekEntryOrOpen!0 (select (arr!19943 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747549 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332301 () Unit!25602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41666 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25602)

(assert (=> b!747549 (= lt!332301 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747550 () Bool)

(declare-fun res!504258 () Bool)

(assert (=> b!747550 (=> (not res!504258) (not e!417365))))

(assert (=> b!747550 (= res!504258 (validKeyInArray!0 (select (arr!19943 a!3186) j!159)))))

(declare-fun b!747551 () Bool)

(declare-fun res!504262 () Bool)

(assert (=> b!747551 (=> res!504262 e!417368)))

(assert (=> b!747551 (= res!504262 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19943 a!3186) j!159) a!3186 mask!3328) lt!332306)))))

(declare-fun b!747552 () Bool)

(declare-fun Unit!25605 () Unit!25602)

(assert (=> b!747552 (= e!417360 Unit!25605)))

(assert (=> b!747552 false))

(declare-fun b!747553 () Bool)

(assert (=> b!747553 (= e!417361 e!417364)))

(declare-fun res!504257 () Bool)

(assert (=> b!747553 (=> (not res!504257) (not e!417364))))

(declare-fun lt!332305 () SeekEntryResult!7550)

(assert (=> b!747553 (= res!504257 (= lt!332305 lt!332299))))

(declare-fun lt!332302 () array!41666)

(assert (=> b!747553 (= lt!332299 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332304 lt!332302 mask!3328))))

(assert (=> b!747553 (= lt!332305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332304 mask!3328) lt!332304 lt!332302 mask!3328))))

(assert (=> b!747553 (= lt!332304 (select (store (arr!19943 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747553 (= lt!332302 (array!41667 (store (arr!19943 a!3186) i!1173 k!2102) (size!20364 a!3186)))))

(declare-fun b!747554 () Bool)

(declare-fun res!504264 () Bool)

(assert (=> b!747554 (=> (not res!504264) (not e!417365))))

(assert (=> b!747554 (= res!504264 (validKeyInArray!0 k!2102))))

(declare-fun b!747555 () Bool)

(declare-fun res!504254 () Bool)

(assert (=> b!747555 (=> (not res!504254) (not e!417365))))

(declare-fun arrayContainsKey!0 (array!41666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747555 (= res!504254 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747556 () Bool)

(declare-fun res!504259 () Bool)

(assert (=> b!747556 (=> (not res!504259) (not e!417361))))

(assert (=> b!747556 (= res!504259 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19943 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747557 () Bool)

(assert (=> b!747557 (= e!417367 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19943 a!3186) j!159) a!3186 mask!3328) (Found!7550 j!159)))))

(assert (= (and start!65540 res!504261) b!747538))

(assert (= (and b!747538 res!504253) b!747550))

(assert (= (and b!747550 res!504258) b!747554))

(assert (= (and b!747554 res!504264) b!747555))

(assert (= (and b!747555 res!504254) b!747540))

(assert (= (and b!747540 res!504249) b!747545))

(assert (= (and b!747545 res!504263) b!747544))

(assert (= (and b!747544 res!504256) b!747539))

(assert (= (and b!747539 res!504251) b!747547))

(assert (= (and b!747547 res!504250) b!747556))

(assert (= (and b!747556 res!504259) b!747541))

(assert (= (and b!747541 c!82025) b!747542))

(assert (= (and b!747541 (not c!82025)) b!747557))

(assert (= (and b!747541 res!504255) b!747553))

(assert (= (and b!747553 res!504257) b!747549))

(assert (= (and b!747549 res!504252) b!747543))

(assert (= (and b!747549 (not res!504248)) b!747551))

(assert (= (and b!747551 (not res!504262)) b!747537))

(assert (= (and b!747537 (not res!504247)) b!747548))

(assert (= (and b!747548 c!82026) b!747552))

(assert (= (and b!747548 (not c!82026)) b!747536))

(assert (= (and b!747548 (not res!504260)) b!747546))

(declare-fun m!697661 () Bool)

(assert (=> b!747546 m!697661))

(declare-fun m!697663 () Bool)

(assert (=> b!747549 m!697663))

(assert (=> b!747549 m!697663))

(declare-fun m!697665 () Bool)

(assert (=> b!747549 m!697665))

(declare-fun m!697667 () Bool)

(assert (=> b!747549 m!697667))

(declare-fun m!697669 () Bool)

(assert (=> b!747549 m!697669))

(declare-fun m!697671 () Bool)

(assert (=> b!747555 m!697671))

(declare-fun m!697673 () Bool)

(assert (=> b!747544 m!697673))

(assert (=> b!747547 m!697663))

(assert (=> b!747547 m!697663))

(declare-fun m!697675 () Bool)

(assert (=> b!747547 m!697675))

(assert (=> b!747547 m!697675))

(assert (=> b!747547 m!697663))

(declare-fun m!697677 () Bool)

(assert (=> b!747547 m!697677))

(assert (=> b!747557 m!697663))

(assert (=> b!747557 m!697663))

(declare-fun m!697679 () Bool)

(assert (=> b!747557 m!697679))

(declare-fun m!697681 () Bool)

(assert (=> b!747537 m!697681))

(declare-fun m!697683 () Bool)

(assert (=> b!747537 m!697683))

(declare-fun m!697685 () Bool)

(assert (=> b!747556 m!697685))

(assert (=> b!747551 m!697663))

(assert (=> b!747551 m!697663))

(assert (=> b!747551 m!697679))

(declare-fun m!697687 () Bool)

(assert (=> start!65540 m!697687))

(declare-fun m!697689 () Bool)

(assert (=> start!65540 m!697689))

(assert (=> b!747550 m!697663))

(assert (=> b!747550 m!697663))

(declare-fun m!697691 () Bool)

(assert (=> b!747550 m!697691))

(assert (=> b!747548 m!697681))

(assert (=> b!747548 m!697683))

(declare-fun m!697693 () Bool)

(assert (=> b!747554 m!697693))

(declare-fun m!697695 () Bool)

(assert (=> b!747545 m!697695))

(assert (=> b!747542 m!697663))

(assert (=> b!747542 m!697663))

(declare-fun m!697697 () Bool)

(assert (=> b!747542 m!697697))

(assert (=> b!747553 m!697681))

(declare-fun m!697699 () Bool)

(assert (=> b!747553 m!697699))

(assert (=> b!747553 m!697699))

(declare-fun m!697701 () Bool)

(assert (=> b!747553 m!697701))

(declare-fun m!697703 () Bool)

(assert (=> b!747553 m!697703))

(declare-fun m!697705 () Bool)

(assert (=> b!747553 m!697705))

(declare-fun m!697707 () Bool)

(assert (=> b!747540 m!697707))

(assert (=> b!747543 m!697663))

(assert (=> b!747543 m!697663))

(declare-fun m!697709 () Bool)

(assert (=> b!747543 m!697709))

(push 1)

