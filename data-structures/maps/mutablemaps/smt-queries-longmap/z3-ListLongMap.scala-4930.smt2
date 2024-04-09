; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67908 () Bool)

(assert start!67908)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42840 0))(
  ( (array!42841 (arr!20503 (Array (_ BitVec 32) (_ BitVec 64))) (size!20924 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42840)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!438826 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!789486 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8110 0))(
  ( (MissingZero!8110 (index!34807 (_ BitVec 32))) (Found!8110 (index!34808 (_ BitVec 32))) (Intermediate!8110 (undefined!8922 Bool) (index!34809 (_ BitVec 32)) (x!65772 (_ BitVec 32))) (Undefined!8110) (MissingVacant!8110 (index!34810 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42840 (_ BitVec 32)) SeekEntryResult!8110)

(assert (=> b!789486 (= e!438826 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20503 a!3186) j!159) a!3186 mask!3328) (Found!8110 j!159)))))

(declare-fun b!789487 () Bool)

(declare-fun e!438823 () Bool)

(declare-fun e!438824 () Bool)

(assert (=> b!789487 (= e!438823 e!438824)))

(declare-fun res!534901 () Bool)

(assert (=> b!789487 (=> (not res!534901) (not e!438824))))

(declare-fun lt!352318 () SeekEntryResult!8110)

(declare-fun lt!352320 () SeekEntryResult!8110)

(assert (=> b!789487 (= res!534901 (= lt!352318 lt!352320))))

(declare-fun lt!352319 () array!42840)

(declare-fun lt!352321 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42840 (_ BitVec 32)) SeekEntryResult!8110)

(assert (=> b!789487 (= lt!352320 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352321 lt!352319 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789487 (= lt!352318 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352321 mask!3328) lt!352321 lt!352319 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!789487 (= lt!352321 (select (store (arr!20503 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!789487 (= lt!352319 (array!42841 (store (arr!20503 a!3186) i!1173 k0!2102) (size!20924 a!3186)))))

(declare-fun res!534906 () Bool)

(declare-fun e!438821 () Bool)

(assert (=> start!67908 (=> (not res!534906) (not e!438821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67908 (= res!534906 (validMask!0 mask!3328))))

(assert (=> start!67908 e!438821))

(assert (=> start!67908 true))

(declare-fun array_inv!16277 (array!42840) Bool)

(assert (=> start!67908 (array_inv!16277 a!3186)))

(declare-fun b!789488 () Bool)

(declare-fun e!438822 () Bool)

(declare-fun e!438825 () Bool)

(assert (=> b!789488 (= e!438822 e!438825)))

(declare-fun res!534904 () Bool)

(assert (=> b!789488 (=> res!534904 e!438825)))

(declare-fun lt!352317 () (_ BitVec 64))

(assert (=> b!789488 (= res!534904 (= lt!352317 lt!352321))))

(assert (=> b!789488 (= lt!352317 (select (store (arr!20503 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!789489 () Bool)

(declare-datatypes ((Unit!27350 0))(
  ( (Unit!27351) )
))
(declare-fun e!438831 () Unit!27350)

(declare-fun Unit!27352 () Unit!27350)

(assert (=> b!789489 (= e!438831 Unit!27352)))

(declare-fun e!438832 () Bool)

(declare-fun b!789490 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!352325 () SeekEntryResult!8110)

(assert (=> b!789490 (= e!438832 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20503 a!3186) j!159) a!3186 mask!3328) lt!352325))))

(declare-fun b!789491 () Bool)

(declare-fun res!534896 () Bool)

(declare-fun e!438827 () Bool)

(assert (=> b!789491 (=> (not res!534896) (not e!438827))))

(declare-datatypes ((List!14558 0))(
  ( (Nil!14555) (Cons!14554 (h!15680 (_ BitVec 64)) (t!20881 List!14558)) )
))
(declare-fun arrayNoDuplicates!0 (array!42840 (_ BitVec 32) List!14558) Bool)

(assert (=> b!789491 (= res!534896 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14555))))

(declare-fun b!789492 () Bool)

(declare-fun res!534903 () Bool)

(assert (=> b!789492 (=> (not res!534903) (not e!438821))))

(declare-fun arrayContainsKey!0 (array!42840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789492 (= res!534903 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789493 () Bool)

(declare-fun res!534897 () Bool)

(assert (=> b!789493 (=> (not res!534897) (not e!438823))))

(assert (=> b!789493 (= res!534897 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20503 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789494 () Bool)

(declare-fun e!438828 () Bool)

(assert (=> b!789494 (= e!438825 e!438828)))

(declare-fun res!534913 () Bool)

(assert (=> b!789494 (=> res!534913 e!438828)))

(assert (=> b!789494 (= res!534913 (or (not (= (select (arr!20503 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352323 () SeekEntryResult!8110)

(declare-fun lt!352327 () SeekEntryResult!8110)

(declare-fun lt!352322 () SeekEntryResult!8110)

(declare-fun lt!352315 () SeekEntryResult!8110)

(assert (=> b!789494 (and (= lt!352323 lt!352315) (= lt!352322 lt!352327))))

(assert (=> b!789494 (= lt!352315 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352321 lt!352319 mask!3328))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42840 (_ BitVec 32)) SeekEntryResult!8110)

(assert (=> b!789494 (= lt!352323 (seekEntryOrOpen!0 lt!352321 lt!352319 mask!3328))))

(assert (=> b!789494 (= lt!352317 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352324 () Unit!27350)

(assert (=> b!789494 (= lt!352324 e!438831)))

(declare-fun c!87705 () Bool)

(assert (=> b!789494 (= c!87705 (= lt!352317 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789495 () Bool)

(assert (=> b!789495 (= e!438828 true)))

(assert (=> b!789495 (= lt!352315 lt!352327)))

(declare-fun lt!352313 () Unit!27350)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42840 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27350)

(assert (=> b!789495 (= lt!352313 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k0!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!789496 () Bool)

(assert (=> b!789496 (= e!438821 e!438827)))

(declare-fun res!534905 () Bool)

(assert (=> b!789496 (=> (not res!534905) (not e!438827))))

(declare-fun lt!352326 () SeekEntryResult!8110)

(assert (=> b!789496 (= res!534905 (or (= lt!352326 (MissingZero!8110 i!1173)) (= lt!352326 (MissingVacant!8110 i!1173))))))

(assert (=> b!789496 (= lt!352326 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!789497 () Bool)

(declare-fun res!534902 () Bool)

(assert (=> b!789497 (=> (not res!534902) (not e!438821))))

(assert (=> b!789497 (= res!534902 (and (= (size!20924 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20924 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20924 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789498 () Bool)

(declare-fun e!438830 () Bool)

(assert (=> b!789498 (= e!438830 e!438822)))

(declare-fun res!534900 () Bool)

(assert (=> b!789498 (=> res!534900 e!438822)))

(assert (=> b!789498 (= res!534900 (not (= lt!352327 lt!352325)))))

(assert (=> b!789498 (= lt!352327 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20503 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!789499 () Bool)

(declare-fun res!534907 () Bool)

(assert (=> b!789499 (=> (not res!534907) (not e!438827))))

(assert (=> b!789499 (= res!534907 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20924 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20924 a!3186))))))

(declare-fun b!789500 () Bool)

(declare-fun res!534911 () Bool)

(assert (=> b!789500 (=> (not res!534911) (not e!438823))))

(assert (=> b!789500 (= res!534911 e!438826)))

(declare-fun c!87704 () Bool)

(assert (=> b!789500 (= c!87704 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789501 () Bool)

(assert (=> b!789501 (= e!438827 e!438823)))

(declare-fun res!534910 () Bool)

(assert (=> b!789501 (=> (not res!534910) (not e!438823))))

(declare-fun lt!352314 () SeekEntryResult!8110)

(assert (=> b!789501 (= res!534910 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20503 a!3186) j!159) mask!3328) (select (arr!20503 a!3186) j!159) a!3186 mask!3328) lt!352314))))

(assert (=> b!789501 (= lt!352314 (Intermediate!8110 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789502 () Bool)

(declare-fun res!534908 () Bool)

(assert (=> b!789502 (=> (not res!534908) (not e!438827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42840 (_ BitVec 32)) Bool)

(assert (=> b!789502 (= res!534908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789503 () Bool)

(declare-fun Unit!27353 () Unit!27350)

(assert (=> b!789503 (= e!438831 Unit!27353)))

(assert (=> b!789503 false))

(declare-fun b!789504 () Bool)

(assert (=> b!789504 (= e!438826 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20503 a!3186) j!159) a!3186 mask!3328) lt!352314))))

(declare-fun b!789505 () Bool)

(declare-fun res!534909 () Bool)

(assert (=> b!789505 (=> (not res!534909) (not e!438821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789505 (= res!534909 (validKeyInArray!0 (select (arr!20503 a!3186) j!159)))))

(declare-fun b!789506 () Bool)

(declare-fun res!534912 () Bool)

(assert (=> b!789506 (=> (not res!534912) (not e!438821))))

(assert (=> b!789506 (= res!534912 (validKeyInArray!0 k0!2102))))

(declare-fun b!789507 () Bool)

(assert (=> b!789507 (= e!438824 (not e!438830))))

(declare-fun res!534898 () Bool)

(assert (=> b!789507 (=> res!534898 e!438830)))

(get-info :version)

(assert (=> b!789507 (= res!534898 (or (not ((_ is Intermediate!8110) lt!352320)) (bvslt x!1131 (x!65772 lt!352320)) (not (= x!1131 (x!65772 lt!352320))) (not (= index!1321 (index!34809 lt!352320)))))))

(assert (=> b!789507 e!438832))

(declare-fun res!534899 () Bool)

(assert (=> b!789507 (=> (not res!534899) (not e!438832))))

(assert (=> b!789507 (= res!534899 (= lt!352322 lt!352325))))

(assert (=> b!789507 (= lt!352325 (Found!8110 j!159))))

(assert (=> b!789507 (= lt!352322 (seekEntryOrOpen!0 (select (arr!20503 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!789507 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352316 () Unit!27350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42840 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27350)

(assert (=> b!789507 (= lt!352316 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67908 res!534906) b!789497))

(assert (= (and b!789497 res!534902) b!789505))

(assert (= (and b!789505 res!534909) b!789506))

(assert (= (and b!789506 res!534912) b!789492))

(assert (= (and b!789492 res!534903) b!789496))

(assert (= (and b!789496 res!534905) b!789502))

(assert (= (and b!789502 res!534908) b!789491))

(assert (= (and b!789491 res!534896) b!789499))

(assert (= (and b!789499 res!534907) b!789501))

(assert (= (and b!789501 res!534910) b!789493))

(assert (= (and b!789493 res!534897) b!789500))

(assert (= (and b!789500 c!87704) b!789504))

(assert (= (and b!789500 (not c!87704)) b!789486))

(assert (= (and b!789500 res!534911) b!789487))

(assert (= (and b!789487 res!534901) b!789507))

(assert (= (and b!789507 res!534899) b!789490))

(assert (= (and b!789507 (not res!534898)) b!789498))

(assert (= (and b!789498 (not res!534900)) b!789488))

(assert (= (and b!789488 (not res!534904)) b!789494))

(assert (= (and b!789494 c!87705) b!789503))

(assert (= (and b!789494 (not c!87705)) b!789489))

(assert (= (and b!789494 (not res!534913)) b!789495))

(declare-fun m!730605 () Bool)

(assert (=> b!789487 m!730605))

(declare-fun m!730607 () Bool)

(assert (=> b!789487 m!730607))

(declare-fun m!730609 () Bool)

(assert (=> b!789487 m!730609))

(assert (=> b!789487 m!730607))

(declare-fun m!730611 () Bool)

(assert (=> b!789487 m!730611))

(declare-fun m!730613 () Bool)

(assert (=> b!789487 m!730613))

(declare-fun m!730615 () Bool)

(assert (=> start!67908 m!730615))

(declare-fun m!730617 () Bool)

(assert (=> start!67908 m!730617))

(declare-fun m!730619 () Bool)

(assert (=> b!789491 m!730619))

(declare-fun m!730621 () Bool)

(assert (=> b!789495 m!730621))

(declare-fun m!730623 () Bool)

(assert (=> b!789507 m!730623))

(assert (=> b!789507 m!730623))

(declare-fun m!730625 () Bool)

(assert (=> b!789507 m!730625))

(declare-fun m!730627 () Bool)

(assert (=> b!789507 m!730627))

(declare-fun m!730629 () Bool)

(assert (=> b!789507 m!730629))

(declare-fun m!730631 () Bool)

(assert (=> b!789493 m!730631))

(assert (=> b!789486 m!730623))

(assert (=> b!789486 m!730623))

(declare-fun m!730633 () Bool)

(assert (=> b!789486 m!730633))

(declare-fun m!730635 () Bool)

(assert (=> b!789506 m!730635))

(declare-fun m!730637 () Bool)

(assert (=> b!789502 m!730637))

(assert (=> b!789504 m!730623))

(assert (=> b!789504 m!730623))

(declare-fun m!730639 () Bool)

(assert (=> b!789504 m!730639))

(assert (=> b!789488 m!730611))

(declare-fun m!730641 () Bool)

(assert (=> b!789488 m!730641))

(assert (=> b!789501 m!730623))

(assert (=> b!789501 m!730623))

(declare-fun m!730643 () Bool)

(assert (=> b!789501 m!730643))

(assert (=> b!789501 m!730643))

(assert (=> b!789501 m!730623))

(declare-fun m!730645 () Bool)

(assert (=> b!789501 m!730645))

(declare-fun m!730647 () Bool)

(assert (=> b!789494 m!730647))

(declare-fun m!730649 () Bool)

(assert (=> b!789494 m!730649))

(declare-fun m!730651 () Bool)

(assert (=> b!789494 m!730651))

(assert (=> b!789498 m!730623))

(assert (=> b!789498 m!730623))

(assert (=> b!789498 m!730633))

(assert (=> b!789490 m!730623))

(assert (=> b!789490 m!730623))

(declare-fun m!730653 () Bool)

(assert (=> b!789490 m!730653))

(declare-fun m!730655 () Bool)

(assert (=> b!789492 m!730655))

(declare-fun m!730657 () Bool)

(assert (=> b!789496 m!730657))

(assert (=> b!789505 m!730623))

(assert (=> b!789505 m!730623))

(declare-fun m!730659 () Bool)

(assert (=> b!789505 m!730659))

(check-sat (not b!789502) (not b!789491) (not b!789501) (not b!789505) (not b!789494) (not start!67908) (not b!789492) (not b!789487) (not b!789498) (not b!789495) (not b!789490) (not b!789504) (not b!789496) (not b!789486) (not b!789506) (not b!789507))
(check-sat)
