; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67736 () Bool)

(assert start!67736)

(declare-fun b!785381 () Bool)

(declare-fun e!436646 () Bool)

(declare-fun e!436652 () Bool)

(assert (=> b!785381 (= e!436646 e!436652)))

(declare-fun res!531756 () Bool)

(assert (=> b!785381 (=> (not res!531756) (not e!436652))))

(declare-datatypes ((SeekEntryResult!8057 0))(
  ( (MissingZero!8057 (index!34595 (_ BitVec 32))) (Found!8057 (index!34596 (_ BitVec 32))) (Intermediate!8057 (undefined!8869 Bool) (index!34597 (_ BitVec 32)) (x!65566 (_ BitVec 32))) (Undefined!8057) (MissingVacant!8057 (index!34598 (_ BitVec 32))) )
))
(declare-fun lt!350214 () SeekEntryResult!8057)

(declare-fun lt!350211 () SeekEntryResult!8057)

(assert (=> b!785381 (= res!531756 (= lt!350214 lt!350211))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42731 0))(
  ( (array!42732 (arr!20450 (Array (_ BitVec 32) (_ BitVec 64))) (size!20871 (_ BitVec 32))) )
))
(declare-fun lt!350216 () array!42731)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!350210 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42731 (_ BitVec 32)) SeekEntryResult!8057)

(assert (=> b!785381 (= lt!350211 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350210 lt!350216 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785381 (= lt!350214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350210 mask!3328) lt!350210 lt!350216 mask!3328))))

(declare-fun a!3186 () array!42731)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!785381 (= lt!350210 (select (store (arr!20450 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!785381 (= lt!350216 (array!42732 (store (arr!20450 a!3186) i!1173 k!2102) (size!20871 a!3186)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!785382 () Bool)

(declare-fun e!436649 () Bool)

(declare-fun lt!350217 () SeekEntryResult!8057)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42731 (_ BitVec 32)) SeekEntryResult!8057)

(assert (=> b!785382 (= e!436649 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20450 a!3186) j!159) a!3186 mask!3328) lt!350217))))

(declare-fun e!436645 () Bool)

(declare-fun lt!350213 () SeekEntryResult!8057)

(declare-fun b!785383 () Bool)

(assert (=> b!785383 (= e!436645 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20450 a!3186) j!159) a!3186 mask!3328) lt!350213))))

(declare-fun b!785384 () Bool)

(declare-fun res!531772 () Bool)

(assert (=> b!785384 (=> (not res!531772) (not e!436646))))

(assert (=> b!785384 (= res!531772 e!436645)))

(declare-fun c!87221 () Bool)

(assert (=> b!785384 (= c!87221 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785385 () Bool)

(declare-fun res!531761 () Bool)

(assert (=> b!785385 (=> (not res!531761) (not e!436646))))

(assert (=> b!785385 (= res!531761 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20450 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785386 () Bool)

(declare-fun res!531763 () Bool)

(declare-fun e!436653 () Bool)

(assert (=> b!785386 (=> (not res!531763) (not e!436653))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785386 (= res!531763 (validKeyInArray!0 (select (arr!20450 a!3186) j!159)))))

(declare-fun b!785387 () Bool)

(declare-fun e!436644 () Bool)

(declare-fun e!436648 () Bool)

(assert (=> b!785387 (= e!436644 e!436648)))

(declare-fun res!531770 () Bool)

(assert (=> b!785387 (=> res!531770 e!436648)))

(declare-fun lt!350219 () SeekEntryResult!8057)

(assert (=> b!785387 (= res!531770 (not (= lt!350219 lt!350217)))))

(assert (=> b!785387 (= lt!350219 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20450 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785388 () Bool)

(declare-datatypes ((Unit!27138 0))(
  ( (Unit!27139) )
))
(declare-fun e!436654 () Unit!27138)

(declare-fun Unit!27140 () Unit!27138)

(assert (=> b!785388 (= e!436654 Unit!27140)))

(declare-fun b!785389 () Bool)

(declare-fun res!531771 () Bool)

(declare-fun e!436647 () Bool)

(assert (=> b!785389 (=> (not res!531771) (not e!436647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42731 (_ BitVec 32)) Bool)

(assert (=> b!785389 (= res!531771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785390 () Bool)

(declare-fun e!436651 () Bool)

(assert (=> b!785390 (= e!436648 e!436651)))

(declare-fun res!531754 () Bool)

(assert (=> b!785390 (=> res!531754 e!436651)))

(declare-fun lt!350220 () (_ BitVec 64))

(assert (=> b!785390 (= res!531754 (= lt!350220 lt!350210))))

(assert (=> b!785390 (= lt!350220 (select (store (arr!20450 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!785391 () Bool)

(declare-fun res!531757 () Bool)

(assert (=> b!785391 (=> (not res!531757) (not e!436653))))

(declare-fun arrayContainsKey!0 (array!42731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785391 (= res!531757 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785392 () Bool)

(assert (=> b!785392 (= e!436653 e!436647)))

(declare-fun res!531767 () Bool)

(assert (=> b!785392 (=> (not res!531767) (not e!436647))))

(declare-fun lt!350218 () SeekEntryResult!8057)

(assert (=> b!785392 (= res!531767 (or (= lt!350218 (MissingZero!8057 i!1173)) (= lt!350218 (MissingVacant!8057 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42731 (_ BitVec 32)) SeekEntryResult!8057)

(assert (=> b!785392 (= lt!350218 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!785393 () Bool)

(declare-fun e!436643 () Bool)

(declare-fun lt!350212 () SeekEntryResult!8057)

(assert (=> b!785393 (= e!436643 (= lt!350212 lt!350219))))

(declare-fun b!785394 () Bool)

(declare-fun res!531759 () Bool)

(assert (=> b!785394 (=> (not res!531759) (not e!436643))))

(assert (=> b!785394 (= res!531759 (= (seekEntryOrOpen!0 lt!350210 lt!350216 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350210 lt!350216 mask!3328)))))

(declare-fun b!785395 () Bool)

(declare-fun res!531768 () Bool)

(assert (=> b!785395 (=> (not res!531768) (not e!436653))))

(assert (=> b!785395 (= res!531768 (and (= (size!20871 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20871 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20871 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785396 () Bool)

(declare-fun res!531755 () Bool)

(assert (=> b!785396 (=> (not res!531755) (not e!436647))))

(assert (=> b!785396 (= res!531755 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20871 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20871 a!3186))))))

(declare-fun b!785397 () Bool)

(assert (=> b!785397 (= e!436651 true)))

(assert (=> b!785397 e!436643))

(declare-fun res!531769 () Bool)

(assert (=> b!785397 (=> (not res!531769) (not e!436643))))

(assert (=> b!785397 (= res!531769 (= lt!350220 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350221 () Unit!27138)

(assert (=> b!785397 (= lt!350221 e!436654)))

(declare-fun c!87222 () Bool)

(assert (=> b!785397 (= c!87222 (= lt!350220 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!531765 () Bool)

(assert (=> start!67736 (=> (not res!531765) (not e!436653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67736 (= res!531765 (validMask!0 mask!3328))))

(assert (=> start!67736 e!436653))

(assert (=> start!67736 true))

(declare-fun array_inv!16224 (array!42731) Bool)

(assert (=> start!67736 (array_inv!16224 a!3186)))

(declare-fun b!785398 () Bool)

(declare-fun res!531760 () Bool)

(assert (=> b!785398 (=> (not res!531760) (not e!436653))))

(assert (=> b!785398 (= res!531760 (validKeyInArray!0 k!2102))))

(declare-fun b!785399 () Bool)

(declare-fun Unit!27141 () Unit!27138)

(assert (=> b!785399 (= e!436654 Unit!27141)))

(assert (=> b!785399 false))

(declare-fun b!785400 () Bool)

(assert (=> b!785400 (= e!436647 e!436646)))

(declare-fun res!531758 () Bool)

(assert (=> b!785400 (=> (not res!531758) (not e!436646))))

(assert (=> b!785400 (= res!531758 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20450 a!3186) j!159) mask!3328) (select (arr!20450 a!3186) j!159) a!3186 mask!3328) lt!350213))))

(assert (=> b!785400 (= lt!350213 (Intermediate!8057 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785401 () Bool)

(assert (=> b!785401 (= e!436645 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20450 a!3186) j!159) a!3186 mask!3328) (Found!8057 j!159)))))

(declare-fun b!785402 () Bool)

(declare-fun res!531764 () Bool)

(assert (=> b!785402 (=> (not res!531764) (not e!436647))))

(declare-datatypes ((List!14505 0))(
  ( (Nil!14502) (Cons!14501 (h!15624 (_ BitVec 64)) (t!20828 List!14505)) )
))
(declare-fun arrayNoDuplicates!0 (array!42731 (_ BitVec 32) List!14505) Bool)

(assert (=> b!785402 (= res!531764 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14502))))

(declare-fun b!785403 () Bool)

(assert (=> b!785403 (= e!436652 (not e!436644))))

(declare-fun res!531762 () Bool)

(assert (=> b!785403 (=> res!531762 e!436644)))

(assert (=> b!785403 (= res!531762 (or (not (is-Intermediate!8057 lt!350211)) (bvslt x!1131 (x!65566 lt!350211)) (not (= x!1131 (x!65566 lt!350211))) (not (= index!1321 (index!34597 lt!350211)))))))

(assert (=> b!785403 e!436649))

(declare-fun res!531766 () Bool)

(assert (=> b!785403 (=> (not res!531766) (not e!436649))))

(assert (=> b!785403 (= res!531766 (= lt!350212 lt!350217))))

(assert (=> b!785403 (= lt!350217 (Found!8057 j!159))))

(assert (=> b!785403 (= lt!350212 (seekEntryOrOpen!0 (select (arr!20450 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!785403 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350215 () Unit!27138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42731 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27138)

(assert (=> b!785403 (= lt!350215 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67736 res!531765) b!785395))

(assert (= (and b!785395 res!531768) b!785386))

(assert (= (and b!785386 res!531763) b!785398))

(assert (= (and b!785398 res!531760) b!785391))

(assert (= (and b!785391 res!531757) b!785392))

(assert (= (and b!785392 res!531767) b!785389))

(assert (= (and b!785389 res!531771) b!785402))

(assert (= (and b!785402 res!531764) b!785396))

(assert (= (and b!785396 res!531755) b!785400))

(assert (= (and b!785400 res!531758) b!785385))

(assert (= (and b!785385 res!531761) b!785384))

(assert (= (and b!785384 c!87221) b!785383))

(assert (= (and b!785384 (not c!87221)) b!785401))

(assert (= (and b!785384 res!531772) b!785381))

(assert (= (and b!785381 res!531756) b!785403))

(assert (= (and b!785403 res!531766) b!785382))

(assert (= (and b!785403 (not res!531762)) b!785387))

(assert (= (and b!785387 (not res!531770)) b!785390))

(assert (= (and b!785390 (not res!531754)) b!785397))

(assert (= (and b!785397 c!87222) b!785399))

(assert (= (and b!785397 (not c!87222)) b!785388))

(assert (= (and b!785397 res!531769) b!785394))

(assert (= (and b!785394 res!531759) b!785393))

(declare-fun m!727509 () Bool)

(assert (=> b!785403 m!727509))

(assert (=> b!785403 m!727509))

(declare-fun m!727511 () Bool)

(assert (=> b!785403 m!727511))

(declare-fun m!727513 () Bool)

(assert (=> b!785403 m!727513))

(declare-fun m!727515 () Bool)

(assert (=> b!785403 m!727515))

(assert (=> b!785383 m!727509))

(assert (=> b!785383 m!727509))

(declare-fun m!727517 () Bool)

(assert (=> b!785383 m!727517))

(assert (=> b!785386 m!727509))

(assert (=> b!785386 m!727509))

(declare-fun m!727519 () Bool)

(assert (=> b!785386 m!727519))

(declare-fun m!727521 () Bool)

(assert (=> start!67736 m!727521))

(declare-fun m!727523 () Bool)

(assert (=> start!67736 m!727523))

(declare-fun m!727525 () Bool)

(assert (=> b!785389 m!727525))

(declare-fun m!727527 () Bool)

(assert (=> b!785390 m!727527))

(declare-fun m!727529 () Bool)

(assert (=> b!785390 m!727529))

(declare-fun m!727531 () Bool)

(assert (=> b!785392 m!727531))

(declare-fun m!727533 () Bool)

(assert (=> b!785402 m!727533))

(assert (=> b!785401 m!727509))

(assert (=> b!785401 m!727509))

(declare-fun m!727535 () Bool)

(assert (=> b!785401 m!727535))

(declare-fun m!727537 () Bool)

(assert (=> b!785394 m!727537))

(declare-fun m!727539 () Bool)

(assert (=> b!785394 m!727539))

(declare-fun m!727541 () Bool)

(assert (=> b!785385 m!727541))

(assert (=> b!785400 m!727509))

(assert (=> b!785400 m!727509))

(declare-fun m!727543 () Bool)

(assert (=> b!785400 m!727543))

(assert (=> b!785400 m!727543))

(assert (=> b!785400 m!727509))

(declare-fun m!727545 () Bool)

(assert (=> b!785400 m!727545))

(declare-fun m!727547 () Bool)

(assert (=> b!785391 m!727547))

(declare-fun m!727549 () Bool)

(assert (=> b!785398 m!727549))

(declare-fun m!727551 () Bool)

(assert (=> b!785381 m!727551))

(declare-fun m!727553 () Bool)

(assert (=> b!785381 m!727553))

(assert (=> b!785381 m!727527))

(declare-fun m!727555 () Bool)

(assert (=> b!785381 m!727555))

(declare-fun m!727557 () Bool)

(assert (=> b!785381 m!727557))

(assert (=> b!785381 m!727551))

(assert (=> b!785382 m!727509))

(assert (=> b!785382 m!727509))

(declare-fun m!727559 () Bool)

(assert (=> b!785382 m!727559))

(assert (=> b!785387 m!727509))

(assert (=> b!785387 m!727509))

(assert (=> b!785387 m!727535))

(push 1)

