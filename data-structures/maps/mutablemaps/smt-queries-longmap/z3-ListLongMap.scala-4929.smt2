; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67902 () Bool)

(assert start!67902)

(declare-fun b!789284 () Bool)

(declare-fun res!534747 () Bool)

(declare-fun e!438715 () Bool)

(assert (=> b!789284 (=> (not res!534747) (not e!438715))))

(declare-datatypes ((array!42834 0))(
  ( (array!42835 (arr!20500 (Array (_ BitVec 32) (_ BitVec 64))) (size!20921 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42834)

(declare-datatypes ((List!14555 0))(
  ( (Nil!14552) (Cons!14551 (h!15677 (_ BitVec 64)) (t!20878 List!14555)) )
))
(declare-fun arrayNoDuplicates!0 (array!42834 (_ BitVec 32) List!14555) Bool)

(assert (=> b!789284 (= res!534747 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14552))))

(declare-fun b!789285 () Bool)

(declare-fun res!534730 () Bool)

(declare-fun e!438719 () Bool)

(assert (=> b!789285 (=> (not res!534730) (not e!438719))))

(declare-fun e!438723 () Bool)

(assert (=> b!789285 (= res!534730 e!438723)))

(declare-fun c!87686 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!789285 (= c!87686 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789286 () Bool)

(declare-fun res!534733 () Bool)

(declare-fun e!438717 () Bool)

(assert (=> b!789286 (=> (not res!534733) (not e!438717))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!789286 (= res!534733 (and (= (size!20921 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20921 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20921 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789287 () Bool)

(assert (=> b!789287 (= e!438715 e!438719)))

(declare-fun res!534736 () Bool)

(assert (=> b!789287 (=> (not res!534736) (not e!438719))))

(declare-datatypes ((SeekEntryResult!8107 0))(
  ( (MissingZero!8107 (index!34795 (_ BitVec 32))) (Found!8107 (index!34796 (_ BitVec 32))) (Intermediate!8107 (undefined!8919 Bool) (index!34797 (_ BitVec 32)) (x!65761 (_ BitVec 32))) (Undefined!8107) (MissingVacant!8107 (index!34798 (_ BitVec 32))) )
))
(declare-fun lt!352194 () SeekEntryResult!8107)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42834 (_ BitVec 32)) SeekEntryResult!8107)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789287 (= res!534736 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20500 a!3186) j!159) mask!3328) (select (arr!20500 a!3186) j!159) a!3186 mask!3328) lt!352194))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!789287 (= lt!352194 (Intermediate!8107 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789288 () Bool)

(declare-fun res!534731 () Bool)

(assert (=> b!789288 (=> (not res!534731) (not e!438717))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789288 (= res!534731 (validKeyInArray!0 k0!2102))))

(declare-fun b!789289 () Bool)

(declare-fun res!534737 () Bool)

(assert (=> b!789289 (=> (not res!534737) (not e!438717))))

(declare-fun arrayContainsKey!0 (array!42834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789289 (= res!534737 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789291 () Bool)

(declare-fun res!534734 () Bool)

(assert (=> b!789291 (=> (not res!534734) (not e!438717))))

(assert (=> b!789291 (= res!534734 (validKeyInArray!0 (select (arr!20500 a!3186) j!159)))))

(declare-fun b!789292 () Bool)

(declare-fun res!534745 () Bool)

(assert (=> b!789292 (=> (not res!534745) (not e!438715))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!789292 (= res!534745 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20921 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20921 a!3186))))))

(declare-fun b!789293 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42834 (_ BitVec 32)) SeekEntryResult!8107)

(assert (=> b!789293 (= e!438723 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20500 a!3186) j!159) a!3186 mask!3328) (Found!8107 j!159)))))

(declare-fun b!789294 () Bool)

(declare-fun e!438718 () Bool)

(declare-fun e!438722 () Bool)

(assert (=> b!789294 (= e!438718 e!438722)))

(declare-fun res!534743 () Bool)

(assert (=> b!789294 (=> res!534743 e!438722)))

(declare-fun lt!352196 () (_ BitVec 64))

(declare-fun lt!352190 () (_ BitVec 64))

(assert (=> b!789294 (= res!534743 (= lt!352196 lt!352190))))

(assert (=> b!789294 (= lt!352196 (select (store (arr!20500 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!789295 () Bool)

(declare-fun e!438714 () Bool)

(assert (=> b!789295 (= e!438719 e!438714)))

(declare-fun res!534740 () Bool)

(assert (=> b!789295 (=> (not res!534740) (not e!438714))))

(declare-fun lt!352191 () SeekEntryResult!8107)

(declare-fun lt!352195 () SeekEntryResult!8107)

(assert (=> b!789295 (= res!534740 (= lt!352191 lt!352195))))

(declare-fun lt!352193 () array!42834)

(assert (=> b!789295 (= lt!352195 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352190 lt!352193 mask!3328))))

(assert (=> b!789295 (= lt!352191 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352190 mask!3328) lt!352190 lt!352193 mask!3328))))

(assert (=> b!789295 (= lt!352190 (select (store (arr!20500 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!789295 (= lt!352193 (array!42835 (store (arr!20500 a!3186) i!1173 k0!2102) (size!20921 a!3186)))))

(declare-fun b!789296 () Bool)

(declare-fun e!438724 () Bool)

(assert (=> b!789296 (= e!438714 (not e!438724))))

(declare-fun res!534739 () Bool)

(assert (=> b!789296 (=> res!534739 e!438724)))

(get-info :version)

(assert (=> b!789296 (= res!534739 (or (not ((_ is Intermediate!8107) lt!352195)) (bvslt x!1131 (x!65761 lt!352195)) (not (= x!1131 (x!65761 lt!352195))) (not (= index!1321 (index!34797 lt!352195)))))))

(declare-fun e!438721 () Bool)

(assert (=> b!789296 e!438721))

(declare-fun res!534738 () Bool)

(assert (=> b!789296 (=> (not res!534738) (not e!438721))))

(declare-fun lt!352201 () SeekEntryResult!8107)

(declare-fun lt!352199 () SeekEntryResult!8107)

(assert (=> b!789296 (= res!534738 (= lt!352201 lt!352199))))

(assert (=> b!789296 (= lt!352199 (Found!8107 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42834 (_ BitVec 32)) SeekEntryResult!8107)

(assert (=> b!789296 (= lt!352201 (seekEntryOrOpen!0 (select (arr!20500 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42834 (_ BitVec 32)) Bool)

(assert (=> b!789296 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27338 0))(
  ( (Unit!27339) )
))
(declare-fun lt!352192 () Unit!27338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27338)

(assert (=> b!789296 (= lt!352192 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789297 () Bool)

(declare-fun e!438713 () Unit!27338)

(declare-fun Unit!27340 () Unit!27338)

(assert (=> b!789297 (= e!438713 Unit!27340)))

(assert (=> b!789297 false))

(declare-fun b!789298 () Bool)

(assert (=> b!789298 (= e!438723 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20500 a!3186) j!159) a!3186 mask!3328) lt!352194))))

(declare-fun b!789299 () Bool)

(declare-fun e!438716 () Bool)

(declare-fun lt!352200 () SeekEntryResult!8107)

(assert (=> b!789299 (= e!438716 (= lt!352201 lt!352200))))

(declare-fun b!789300 () Bool)

(declare-fun res!534742 () Bool)

(assert (=> b!789300 (=> (not res!534742) (not e!438715))))

(assert (=> b!789300 (= res!534742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789290 () Bool)

(assert (=> b!789290 (= e!438721 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20500 a!3186) j!159) a!3186 mask!3328) lt!352199))))

(declare-fun res!534735 () Bool)

(assert (=> start!67902 (=> (not res!534735) (not e!438717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67902 (= res!534735 (validMask!0 mask!3328))))

(assert (=> start!67902 e!438717))

(assert (=> start!67902 true))

(declare-fun array_inv!16274 (array!42834) Bool)

(assert (=> start!67902 (array_inv!16274 a!3186)))

(declare-fun b!789301 () Bool)

(assert (=> b!789301 (= e!438722 true)))

(assert (=> b!789301 e!438716))

(declare-fun res!534732 () Bool)

(assert (=> b!789301 (=> (not res!534732) (not e!438716))))

(assert (=> b!789301 (= res!534732 (= lt!352196 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!352197 () Unit!27338)

(assert (=> b!789301 (= lt!352197 e!438713)))

(declare-fun c!87687 () Bool)

(assert (=> b!789301 (= c!87687 (= lt!352196 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789302 () Bool)

(declare-fun res!534748 () Bool)

(assert (=> b!789302 (=> (not res!534748) (not e!438716))))

(assert (=> b!789302 (= res!534748 (= (seekEntryOrOpen!0 lt!352190 lt!352193 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352190 lt!352193 mask!3328)))))

(declare-fun b!789303 () Bool)

(declare-fun res!534744 () Bool)

(assert (=> b!789303 (=> (not res!534744) (not e!438719))))

(assert (=> b!789303 (= res!534744 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20500 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789304 () Bool)

(assert (=> b!789304 (= e!438717 e!438715)))

(declare-fun res!534746 () Bool)

(assert (=> b!789304 (=> (not res!534746) (not e!438715))))

(declare-fun lt!352198 () SeekEntryResult!8107)

(assert (=> b!789304 (= res!534746 (or (= lt!352198 (MissingZero!8107 i!1173)) (= lt!352198 (MissingVacant!8107 i!1173))))))

(assert (=> b!789304 (= lt!352198 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!789305 () Bool)

(declare-fun Unit!27341 () Unit!27338)

(assert (=> b!789305 (= e!438713 Unit!27341)))

(declare-fun b!789306 () Bool)

(assert (=> b!789306 (= e!438724 e!438718)))

(declare-fun res!534741 () Bool)

(assert (=> b!789306 (=> res!534741 e!438718)))

(assert (=> b!789306 (= res!534741 (not (= lt!352200 lt!352199)))))

(assert (=> b!789306 (= lt!352200 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20500 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67902 res!534735) b!789286))

(assert (= (and b!789286 res!534733) b!789291))

(assert (= (and b!789291 res!534734) b!789288))

(assert (= (and b!789288 res!534731) b!789289))

(assert (= (and b!789289 res!534737) b!789304))

(assert (= (and b!789304 res!534746) b!789300))

(assert (= (and b!789300 res!534742) b!789284))

(assert (= (and b!789284 res!534747) b!789292))

(assert (= (and b!789292 res!534745) b!789287))

(assert (= (and b!789287 res!534736) b!789303))

(assert (= (and b!789303 res!534744) b!789285))

(assert (= (and b!789285 c!87686) b!789298))

(assert (= (and b!789285 (not c!87686)) b!789293))

(assert (= (and b!789285 res!534730) b!789295))

(assert (= (and b!789295 res!534740) b!789296))

(assert (= (and b!789296 res!534738) b!789290))

(assert (= (and b!789296 (not res!534739)) b!789306))

(assert (= (and b!789306 (not res!534741)) b!789294))

(assert (= (and b!789294 (not res!534743)) b!789301))

(assert (= (and b!789301 c!87687) b!789297))

(assert (= (and b!789301 (not c!87687)) b!789305))

(assert (= (and b!789301 res!534732) b!789302))

(assert (= (and b!789302 res!534748) b!789299))

(declare-fun m!730445 () Bool)

(assert (=> b!789300 m!730445))

(declare-fun m!730447 () Bool)

(assert (=> b!789303 m!730447))

(declare-fun m!730449 () Bool)

(assert (=> b!789295 m!730449))

(declare-fun m!730451 () Bool)

(assert (=> b!789295 m!730451))

(assert (=> b!789295 m!730449))

(declare-fun m!730453 () Bool)

(assert (=> b!789295 m!730453))

(declare-fun m!730455 () Bool)

(assert (=> b!789295 m!730455))

(declare-fun m!730457 () Bool)

(assert (=> b!789295 m!730457))

(declare-fun m!730459 () Bool)

(assert (=> b!789287 m!730459))

(assert (=> b!789287 m!730459))

(declare-fun m!730461 () Bool)

(assert (=> b!789287 m!730461))

(assert (=> b!789287 m!730461))

(assert (=> b!789287 m!730459))

(declare-fun m!730463 () Bool)

(assert (=> b!789287 m!730463))

(declare-fun m!730465 () Bool)

(assert (=> b!789304 m!730465))

(assert (=> b!789290 m!730459))

(assert (=> b!789290 m!730459))

(declare-fun m!730467 () Bool)

(assert (=> b!789290 m!730467))

(assert (=> b!789298 m!730459))

(assert (=> b!789298 m!730459))

(declare-fun m!730469 () Bool)

(assert (=> b!789298 m!730469))

(assert (=> b!789294 m!730453))

(declare-fun m!730471 () Bool)

(assert (=> b!789294 m!730471))

(assert (=> b!789293 m!730459))

(assert (=> b!789293 m!730459))

(declare-fun m!730473 () Bool)

(assert (=> b!789293 m!730473))

(declare-fun m!730475 () Bool)

(assert (=> b!789302 m!730475))

(declare-fun m!730477 () Bool)

(assert (=> b!789302 m!730477))

(declare-fun m!730479 () Bool)

(assert (=> b!789289 m!730479))

(assert (=> b!789296 m!730459))

(assert (=> b!789296 m!730459))

(declare-fun m!730481 () Bool)

(assert (=> b!789296 m!730481))

(declare-fun m!730483 () Bool)

(assert (=> b!789296 m!730483))

(declare-fun m!730485 () Bool)

(assert (=> b!789296 m!730485))

(assert (=> b!789291 m!730459))

(assert (=> b!789291 m!730459))

(declare-fun m!730487 () Bool)

(assert (=> b!789291 m!730487))

(declare-fun m!730489 () Bool)

(assert (=> b!789284 m!730489))

(declare-fun m!730491 () Bool)

(assert (=> start!67902 m!730491))

(declare-fun m!730493 () Bool)

(assert (=> start!67902 m!730493))

(declare-fun m!730495 () Bool)

(assert (=> b!789288 m!730495))

(assert (=> b!789306 m!730459))

(assert (=> b!789306 m!730459))

(assert (=> b!789306 m!730473))

(check-sat (not b!789298) (not b!789288) (not b!789300) (not b!789291) (not b!789295) (not start!67902) (not b!789290) (not b!789304) (not b!789293) (not b!789287) (not b!789289) (not b!789306) (not b!789296) (not b!789284) (not b!789302))
(check-sat)
