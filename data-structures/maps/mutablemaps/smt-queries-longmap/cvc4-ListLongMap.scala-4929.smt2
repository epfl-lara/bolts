; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67904 () Bool)

(assert start!67904)

(declare-fun b!789353 () Bool)

(declare-fun res!534799 () Bool)

(declare-fun e!438752 () Bool)

(assert (=> b!789353 (=> (not res!534799) (not e!438752))))

(declare-fun e!438750 () Bool)

(assert (=> b!789353 (= res!534799 e!438750)))

(declare-fun c!87693 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!789353 (= c!87693 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789354 () Bool)

(declare-fun res!534793 () Bool)

(assert (=> b!789354 (=> (not res!534793) (not e!438752))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42836 0))(
  ( (array!42837 (arr!20501 (Array (_ BitVec 32) (_ BitVec 64))) (size!20922 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42836)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!789354 (= res!534793 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20501 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789355 () Bool)

(declare-fun res!534794 () Bool)

(declare-fun e!438759 () Bool)

(assert (=> b!789355 (=> (not res!534794) (not e!438759))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789355 (= res!534794 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789357 () Bool)

(declare-fun res!534788 () Bool)

(assert (=> b!789357 (=> (not res!534788) (not e!438759))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789357 (= res!534788 (validKeyInArray!0 (select (arr!20501 a!3186) j!159)))))

(declare-fun b!789358 () Bool)

(declare-fun res!534789 () Bool)

(assert (=> b!789358 (=> (not res!534789) (not e!438759))))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!789358 (= res!534789 (and (= (size!20922 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20922 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20922 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789359 () Bool)

(declare-fun res!534803 () Bool)

(declare-fun e!438758 () Bool)

(assert (=> b!789359 (=> (not res!534803) (not e!438758))))

(declare-fun lt!352230 () array!42836)

(declare-fun lt!352234 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8108 0))(
  ( (MissingZero!8108 (index!34799 (_ BitVec 32))) (Found!8108 (index!34800 (_ BitVec 32))) (Intermediate!8108 (undefined!8920 Bool) (index!34801 (_ BitVec 32)) (x!65762 (_ BitVec 32))) (Undefined!8108) (MissingVacant!8108 (index!34802 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42836 (_ BitVec 32)) SeekEntryResult!8108)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42836 (_ BitVec 32)) SeekEntryResult!8108)

(assert (=> b!789359 (= res!534803 (= (seekEntryOrOpen!0 lt!352234 lt!352230 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352234 lt!352230 mask!3328)))))

(declare-fun b!789360 () Bool)

(declare-fun e!438760 () Bool)

(declare-fun e!438753 () Bool)

(assert (=> b!789360 (= e!438760 e!438753)))

(declare-fun res!534798 () Bool)

(assert (=> b!789360 (=> res!534798 e!438753)))

(declare-fun lt!352233 () (_ BitVec 64))

(assert (=> b!789360 (= res!534798 (= lt!352233 lt!352234))))

(assert (=> b!789360 (= lt!352233 (select (store (arr!20501 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!789361 () Bool)

(declare-fun lt!352236 () SeekEntryResult!8108)

(declare-fun lt!352227 () SeekEntryResult!8108)

(assert (=> b!789361 (= e!438758 (= lt!352236 lt!352227))))

(declare-fun b!789356 () Bool)

(declare-fun e!438749 () Bool)

(assert (=> b!789356 (= e!438749 e!438760)))

(declare-fun res!534790 () Bool)

(assert (=> b!789356 (=> res!534790 e!438760)))

(declare-fun lt!352226 () SeekEntryResult!8108)

(assert (=> b!789356 (= res!534790 (not (= lt!352227 lt!352226)))))

(assert (=> b!789356 (= lt!352227 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20501 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!534805 () Bool)

(assert (=> start!67904 (=> (not res!534805) (not e!438759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67904 (= res!534805 (validMask!0 mask!3328))))

(assert (=> start!67904 e!438759))

(assert (=> start!67904 true))

(declare-fun array_inv!16275 (array!42836) Bool)

(assert (=> start!67904 (array_inv!16275 a!3186)))

(declare-fun b!789362 () Bool)

(declare-fun res!534804 () Bool)

(declare-fun e!438754 () Bool)

(assert (=> b!789362 (=> (not res!534804) (not e!438754))))

(assert (=> b!789362 (= res!534804 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20922 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20922 a!3186))))))

(declare-fun b!789363 () Bool)

(assert (=> b!789363 (= e!438753 true)))

(assert (=> b!789363 e!438758))

(declare-fun res!534800 () Bool)

(assert (=> b!789363 (=> (not res!534800) (not e!438758))))

(assert (=> b!789363 (= res!534800 (= lt!352233 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27342 0))(
  ( (Unit!27343) )
))
(declare-fun lt!352237 () Unit!27342)

(declare-fun e!438751 () Unit!27342)

(assert (=> b!789363 (= lt!352237 e!438751)))

(declare-fun c!87692 () Bool)

(assert (=> b!789363 (= c!87692 (= lt!352233 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789364 () Bool)

(assert (=> b!789364 (= e!438750 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20501 a!3186) j!159) a!3186 mask!3328) (Found!8108 j!159)))))

(declare-fun b!789365 () Bool)

(declare-fun res!534792 () Bool)

(assert (=> b!789365 (=> (not res!534792) (not e!438754))))

(declare-datatypes ((List!14556 0))(
  ( (Nil!14553) (Cons!14552 (h!15678 (_ BitVec 64)) (t!20879 List!14556)) )
))
(declare-fun arrayNoDuplicates!0 (array!42836 (_ BitVec 32) List!14556) Bool)

(assert (=> b!789365 (= res!534792 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14553))))

(declare-fun b!789366 () Bool)

(declare-fun e!438755 () Bool)

(assert (=> b!789366 (= e!438755 (not e!438749))))

(declare-fun res!534801 () Bool)

(assert (=> b!789366 (=> res!534801 e!438749)))

(declare-fun lt!352231 () SeekEntryResult!8108)

(assert (=> b!789366 (= res!534801 (or (not (is-Intermediate!8108 lt!352231)) (bvslt x!1131 (x!65762 lt!352231)) (not (= x!1131 (x!65762 lt!352231))) (not (= index!1321 (index!34801 lt!352231)))))))

(declare-fun e!438757 () Bool)

(assert (=> b!789366 e!438757))

(declare-fun res!534787 () Bool)

(assert (=> b!789366 (=> (not res!534787) (not e!438757))))

(assert (=> b!789366 (= res!534787 (= lt!352236 lt!352226))))

(assert (=> b!789366 (= lt!352226 (Found!8108 j!159))))

(assert (=> b!789366 (= lt!352236 (seekEntryOrOpen!0 (select (arr!20501 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42836 (_ BitVec 32)) Bool)

(assert (=> b!789366 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352232 () Unit!27342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42836 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27342)

(assert (=> b!789366 (= lt!352232 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789367 () Bool)

(assert (=> b!789367 (= e!438757 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20501 a!3186) j!159) a!3186 mask!3328) lt!352226))))

(declare-fun b!789368 () Bool)

(assert (=> b!789368 (= e!438752 e!438755)))

(declare-fun res!534795 () Bool)

(assert (=> b!789368 (=> (not res!534795) (not e!438755))))

(declare-fun lt!352229 () SeekEntryResult!8108)

(assert (=> b!789368 (= res!534795 (= lt!352229 lt!352231))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42836 (_ BitVec 32)) SeekEntryResult!8108)

(assert (=> b!789368 (= lt!352231 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352234 lt!352230 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789368 (= lt!352229 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352234 mask!3328) lt!352234 lt!352230 mask!3328))))

(assert (=> b!789368 (= lt!352234 (select (store (arr!20501 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!789368 (= lt!352230 (array!42837 (store (arr!20501 a!3186) i!1173 k!2102) (size!20922 a!3186)))))

(declare-fun b!789369 () Bool)

(assert (=> b!789369 (= e!438754 e!438752)))

(declare-fun res!534797 () Bool)

(assert (=> b!789369 (=> (not res!534797) (not e!438752))))

(declare-fun lt!352228 () SeekEntryResult!8108)

(assert (=> b!789369 (= res!534797 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20501 a!3186) j!159) mask!3328) (select (arr!20501 a!3186) j!159) a!3186 mask!3328) lt!352228))))

(assert (=> b!789369 (= lt!352228 (Intermediate!8108 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789370 () Bool)

(declare-fun res!534796 () Bool)

(assert (=> b!789370 (=> (not res!534796) (not e!438754))))

(assert (=> b!789370 (= res!534796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789371 () Bool)

(declare-fun res!534791 () Bool)

(assert (=> b!789371 (=> (not res!534791) (not e!438759))))

(assert (=> b!789371 (= res!534791 (validKeyInArray!0 k!2102))))

(declare-fun b!789372 () Bool)

(assert (=> b!789372 (= e!438750 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20501 a!3186) j!159) a!3186 mask!3328) lt!352228))))

(declare-fun b!789373 () Bool)

(declare-fun Unit!27344 () Unit!27342)

(assert (=> b!789373 (= e!438751 Unit!27344)))

(declare-fun b!789374 () Bool)

(assert (=> b!789374 (= e!438759 e!438754)))

(declare-fun res!534802 () Bool)

(assert (=> b!789374 (=> (not res!534802) (not e!438754))))

(declare-fun lt!352235 () SeekEntryResult!8108)

(assert (=> b!789374 (= res!534802 (or (= lt!352235 (MissingZero!8108 i!1173)) (= lt!352235 (MissingVacant!8108 i!1173))))))

(assert (=> b!789374 (= lt!352235 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!789375 () Bool)

(declare-fun Unit!27345 () Unit!27342)

(assert (=> b!789375 (= e!438751 Unit!27345)))

(assert (=> b!789375 false))

(assert (= (and start!67904 res!534805) b!789358))

(assert (= (and b!789358 res!534789) b!789357))

(assert (= (and b!789357 res!534788) b!789371))

(assert (= (and b!789371 res!534791) b!789355))

(assert (= (and b!789355 res!534794) b!789374))

(assert (= (and b!789374 res!534802) b!789370))

(assert (= (and b!789370 res!534796) b!789365))

(assert (= (and b!789365 res!534792) b!789362))

(assert (= (and b!789362 res!534804) b!789369))

(assert (= (and b!789369 res!534797) b!789354))

(assert (= (and b!789354 res!534793) b!789353))

(assert (= (and b!789353 c!87693) b!789372))

(assert (= (and b!789353 (not c!87693)) b!789364))

(assert (= (and b!789353 res!534799) b!789368))

(assert (= (and b!789368 res!534795) b!789366))

(assert (= (and b!789366 res!534787) b!789367))

(assert (= (and b!789366 (not res!534801)) b!789356))

(assert (= (and b!789356 (not res!534790)) b!789360))

(assert (= (and b!789360 (not res!534798)) b!789363))

(assert (= (and b!789363 c!87692) b!789375))

(assert (= (and b!789363 (not c!87692)) b!789373))

(assert (= (and b!789363 res!534800) b!789359))

(assert (= (and b!789359 res!534803) b!789361))

(declare-fun m!730497 () Bool)

(assert (=> b!789366 m!730497))

(assert (=> b!789366 m!730497))

(declare-fun m!730499 () Bool)

(assert (=> b!789366 m!730499))

(declare-fun m!730501 () Bool)

(assert (=> b!789366 m!730501))

(declare-fun m!730503 () Bool)

(assert (=> b!789366 m!730503))

(declare-fun m!730505 () Bool)

(assert (=> b!789370 m!730505))

(assert (=> b!789369 m!730497))

(assert (=> b!789369 m!730497))

(declare-fun m!730507 () Bool)

(assert (=> b!789369 m!730507))

(assert (=> b!789369 m!730507))

(assert (=> b!789369 m!730497))

(declare-fun m!730509 () Bool)

(assert (=> b!789369 m!730509))

(assert (=> b!789357 m!730497))

(assert (=> b!789357 m!730497))

(declare-fun m!730511 () Bool)

(assert (=> b!789357 m!730511))

(declare-fun m!730513 () Bool)

(assert (=> b!789368 m!730513))

(declare-fun m!730515 () Bool)

(assert (=> b!789368 m!730515))

(assert (=> b!789368 m!730513))

(declare-fun m!730517 () Bool)

(assert (=> b!789368 m!730517))

(declare-fun m!730519 () Bool)

(assert (=> b!789368 m!730519))

(declare-fun m!730521 () Bool)

(assert (=> b!789368 m!730521))

(assert (=> b!789360 m!730517))

(declare-fun m!730523 () Bool)

(assert (=> b!789360 m!730523))

(assert (=> b!789367 m!730497))

(assert (=> b!789367 m!730497))

(declare-fun m!730525 () Bool)

(assert (=> b!789367 m!730525))

(declare-fun m!730527 () Bool)

(assert (=> start!67904 m!730527))

(declare-fun m!730529 () Bool)

(assert (=> start!67904 m!730529))

(assert (=> b!789364 m!730497))

(assert (=> b!789364 m!730497))

(declare-fun m!730531 () Bool)

(assert (=> b!789364 m!730531))

(assert (=> b!789372 m!730497))

(assert (=> b!789372 m!730497))

(declare-fun m!730533 () Bool)

(assert (=> b!789372 m!730533))

(assert (=> b!789356 m!730497))

(assert (=> b!789356 m!730497))

(assert (=> b!789356 m!730531))

(declare-fun m!730535 () Bool)

(assert (=> b!789359 m!730535))

(declare-fun m!730537 () Bool)

(assert (=> b!789359 m!730537))

(declare-fun m!730539 () Bool)

(assert (=> b!789371 m!730539))

(declare-fun m!730541 () Bool)

(assert (=> b!789355 m!730541))

(declare-fun m!730543 () Bool)

(assert (=> b!789365 m!730543))

(declare-fun m!730545 () Bool)

(assert (=> b!789374 m!730545))

(declare-fun m!730547 () Bool)

(assert (=> b!789354 m!730547))

(push 1)

