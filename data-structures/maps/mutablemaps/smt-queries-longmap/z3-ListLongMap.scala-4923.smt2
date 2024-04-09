; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67800 () Bool)

(assert start!67800)

(declare-fun b!787589 () Bool)

(declare-fun e!437797 () Bool)

(declare-fun e!437800 () Bool)

(assert (=> b!787589 (= e!437797 e!437800)))

(declare-fun res!533592 () Bool)

(assert (=> b!787589 (=> (not res!533592) (not e!437800))))

(declare-datatypes ((SeekEntryResult!8089 0))(
  ( (MissingZero!8089 (index!34723 (_ BitVec 32))) (Found!8089 (index!34724 (_ BitVec 32))) (Intermediate!8089 (undefined!8901 Bool) (index!34725 (_ BitVec 32)) (x!65686 (_ BitVec 32))) (Undefined!8089) (MissingVacant!8089 (index!34726 (_ BitVec 32))) )
))
(declare-fun lt!351367 () SeekEntryResult!8089)

(declare-fun lt!351372 () SeekEntryResult!8089)

(assert (=> b!787589 (= res!533592 (= lt!351367 lt!351372))))

(declare-fun lt!351373 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!42795 0))(
  ( (array!42796 (arr!20482 (Array (_ BitVec 32) (_ BitVec 64))) (size!20903 (_ BitVec 32))) )
))
(declare-fun lt!351365 () array!42795)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42795 (_ BitVec 32)) SeekEntryResult!8089)

(assert (=> b!787589 (= lt!351372 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351373 lt!351365 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787589 (= lt!351367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351373 mask!3328) lt!351373 lt!351365 mask!3328))))

(declare-fun a!3186 () array!42795)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!787589 (= lt!351373 (select (store (arr!20482 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!787589 (= lt!351365 (array!42796 (store (arr!20482 a!3186) i!1173 k0!2102) (size!20903 a!3186)))))

(declare-fun e!437803 () Bool)

(declare-fun b!787590 () Bool)

(declare-fun lt!351371 () SeekEntryResult!8089)

(assert (=> b!787590 (= e!437803 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20482 a!3186) j!159) a!3186 mask!3328) lt!351371))))

(declare-fun b!787591 () Bool)

(declare-fun e!437805 () Bool)

(declare-fun e!437802 () Bool)

(assert (=> b!787591 (= e!437805 e!437802)))

(declare-fun res!533584 () Bool)

(assert (=> b!787591 (=> res!533584 e!437802)))

(declare-fun lt!351369 () SeekEntryResult!8089)

(declare-fun lt!351362 () SeekEntryResult!8089)

(assert (=> b!787591 (= res!533584 (not (= lt!351369 lt!351362)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42795 (_ BitVec 32)) SeekEntryResult!8089)

(assert (=> b!787591 (= lt!351369 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20482 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787592 () Bool)

(assert (=> b!787592 (= e!437800 (not e!437805))))

(declare-fun res!533578 () Bool)

(assert (=> b!787592 (=> res!533578 e!437805)))

(get-info :version)

(assert (=> b!787592 (= res!533578 (or (not ((_ is Intermediate!8089) lt!351372)) (bvslt x!1131 (x!65686 lt!351372)) (not (= x!1131 (x!65686 lt!351372))) (not (= index!1321 (index!34725 lt!351372)))))))

(declare-fun e!437799 () Bool)

(assert (=> b!787592 e!437799))

(declare-fun res!533596 () Bool)

(assert (=> b!787592 (=> (not res!533596) (not e!437799))))

(declare-fun lt!351363 () SeekEntryResult!8089)

(assert (=> b!787592 (= res!533596 (= lt!351363 lt!351362))))

(assert (=> b!787592 (= lt!351362 (Found!8089 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42795 (_ BitVec 32)) SeekEntryResult!8089)

(assert (=> b!787592 (= lt!351363 (seekEntryOrOpen!0 (select (arr!20482 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42795 (_ BitVec 32)) Bool)

(assert (=> b!787592 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27266 0))(
  ( (Unit!27267) )
))
(declare-fun lt!351370 () Unit!27266)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27266)

(assert (=> b!787592 (= lt!351370 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787593 () Bool)

(declare-fun res!533583 () Bool)

(assert (=> b!787593 (=> (not res!533583) (not e!437797))))

(assert (=> b!787593 (= res!533583 e!437803)))

(declare-fun c!87413 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787593 (= c!87413 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787594 () Bool)

(declare-fun e!437796 () Unit!27266)

(declare-fun Unit!27268 () Unit!27266)

(assert (=> b!787594 (= e!437796 Unit!27268)))

(declare-fun b!787595 () Bool)

(declare-fun res!533585 () Bool)

(declare-fun e!437804 () Bool)

(assert (=> b!787595 (=> (not res!533585) (not e!437804))))

(assert (=> b!787595 (= res!533585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787596 () Bool)

(declare-fun res!533587 () Bool)

(assert (=> b!787596 (=> (not res!533587) (not e!437804))))

(assert (=> b!787596 (= res!533587 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20903 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20903 a!3186))))))

(declare-fun b!787597 () Bool)

(declare-fun e!437795 () Bool)

(assert (=> b!787597 (= e!437802 e!437795)))

(declare-fun res!533586 () Bool)

(assert (=> b!787597 (=> res!533586 e!437795)))

(declare-fun lt!351368 () (_ BitVec 64))

(assert (=> b!787597 (= res!533586 (= lt!351368 lt!351373))))

(assert (=> b!787597 (= lt!351368 (select (store (arr!20482 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!787598 () Bool)

(declare-fun res!533591 () Bool)

(declare-fun e!437798 () Bool)

(assert (=> b!787598 (=> (not res!533591) (not e!437798))))

(assert (=> b!787598 (= res!533591 (= (seekEntryOrOpen!0 lt!351373 lt!351365 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351373 lt!351365 mask!3328)))))

(declare-fun b!787599 () Bool)

(declare-fun res!533589 () Bool)

(declare-fun e!437806 () Bool)

(assert (=> b!787599 (=> (not res!533589) (not e!437806))))

(declare-fun arrayContainsKey!0 (array!42795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787599 (= res!533589 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787600 () Bool)

(assert (=> b!787600 (= e!437799 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20482 a!3186) j!159) a!3186 mask!3328) lt!351362))))

(declare-fun b!787601 () Bool)

(assert (=> b!787601 (= e!437798 (= lt!351363 lt!351369))))

(declare-fun b!787602 () Bool)

(assert (=> b!787602 (= e!437806 e!437804)))

(declare-fun res!533595 () Bool)

(assert (=> b!787602 (=> (not res!533595) (not e!437804))))

(declare-fun lt!351364 () SeekEntryResult!8089)

(assert (=> b!787602 (= res!533595 (or (= lt!351364 (MissingZero!8089 i!1173)) (= lt!351364 (MissingVacant!8089 i!1173))))))

(assert (=> b!787602 (= lt!351364 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!787604 () Bool)

(declare-fun res!533579 () Bool)

(assert (=> b!787604 (=> (not res!533579) (not e!437806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787604 (= res!533579 (validKeyInArray!0 k0!2102))))

(declare-fun b!787603 () Bool)

(declare-fun res!533588 () Bool)

(assert (=> b!787603 (=> (not res!533588) (not e!437806))))

(assert (=> b!787603 (= res!533588 (and (= (size!20903 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20903 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20903 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!533593 () Bool)

(assert (=> start!67800 (=> (not res!533593) (not e!437806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67800 (= res!533593 (validMask!0 mask!3328))))

(assert (=> start!67800 e!437806))

(assert (=> start!67800 true))

(declare-fun array_inv!16256 (array!42795) Bool)

(assert (=> start!67800 (array_inv!16256 a!3186)))

(declare-fun b!787605 () Bool)

(declare-fun res!533590 () Bool)

(assert (=> b!787605 (=> (not res!533590) (not e!437806))))

(assert (=> b!787605 (= res!533590 (validKeyInArray!0 (select (arr!20482 a!3186) j!159)))))

(declare-fun b!787606 () Bool)

(declare-fun Unit!27269 () Unit!27266)

(assert (=> b!787606 (= e!437796 Unit!27269)))

(assert (=> b!787606 false))

(declare-fun b!787607 () Bool)

(assert (=> b!787607 (= e!437804 e!437797)))

(declare-fun res!533582 () Bool)

(assert (=> b!787607 (=> (not res!533582) (not e!437797))))

(assert (=> b!787607 (= res!533582 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20482 a!3186) j!159) mask!3328) (select (arr!20482 a!3186) j!159) a!3186 mask!3328) lt!351371))))

(assert (=> b!787607 (= lt!351371 (Intermediate!8089 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787608 () Bool)

(declare-fun res!533580 () Bool)

(assert (=> b!787608 (=> (not res!533580) (not e!437797))))

(assert (=> b!787608 (= res!533580 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20482 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787609 () Bool)

(assert (=> b!787609 (= e!437803 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20482 a!3186) j!159) a!3186 mask!3328) (Found!8089 j!159)))))

(declare-fun b!787610 () Bool)

(assert (=> b!787610 (= e!437795 true)))

(assert (=> b!787610 e!437798))

(declare-fun res!533581 () Bool)

(assert (=> b!787610 (=> (not res!533581) (not e!437798))))

(assert (=> b!787610 (= res!533581 (= lt!351368 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351366 () Unit!27266)

(assert (=> b!787610 (= lt!351366 e!437796)))

(declare-fun c!87414 () Bool)

(assert (=> b!787610 (= c!87414 (= lt!351368 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787611 () Bool)

(declare-fun res!533594 () Bool)

(assert (=> b!787611 (=> (not res!533594) (not e!437804))))

(declare-datatypes ((List!14537 0))(
  ( (Nil!14534) (Cons!14533 (h!15656 (_ BitVec 64)) (t!20860 List!14537)) )
))
(declare-fun arrayNoDuplicates!0 (array!42795 (_ BitVec 32) List!14537) Bool)

(assert (=> b!787611 (= res!533594 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14534))))

(assert (= (and start!67800 res!533593) b!787603))

(assert (= (and b!787603 res!533588) b!787605))

(assert (= (and b!787605 res!533590) b!787604))

(assert (= (and b!787604 res!533579) b!787599))

(assert (= (and b!787599 res!533589) b!787602))

(assert (= (and b!787602 res!533595) b!787595))

(assert (= (and b!787595 res!533585) b!787611))

(assert (= (and b!787611 res!533594) b!787596))

(assert (= (and b!787596 res!533587) b!787607))

(assert (= (and b!787607 res!533582) b!787608))

(assert (= (and b!787608 res!533580) b!787593))

(assert (= (and b!787593 c!87413) b!787590))

(assert (= (and b!787593 (not c!87413)) b!787609))

(assert (= (and b!787593 res!533583) b!787589))

(assert (= (and b!787589 res!533592) b!787592))

(assert (= (and b!787592 res!533596) b!787600))

(assert (= (and b!787592 (not res!533578)) b!787591))

(assert (= (and b!787591 (not res!533584)) b!787597))

(assert (= (and b!787597 (not res!533586)) b!787610))

(assert (= (and b!787610 c!87414) b!787606))

(assert (= (and b!787610 (not c!87414)) b!787594))

(assert (= (and b!787610 res!533581) b!787598))

(assert (= (and b!787598 res!533591) b!787601))

(declare-fun m!729173 () Bool)

(assert (=> b!787611 m!729173))

(declare-fun m!729175 () Bool)

(assert (=> b!787591 m!729175))

(assert (=> b!787591 m!729175))

(declare-fun m!729177 () Bool)

(assert (=> b!787591 m!729177))

(assert (=> b!787600 m!729175))

(assert (=> b!787600 m!729175))

(declare-fun m!729179 () Bool)

(assert (=> b!787600 m!729179))

(assert (=> b!787592 m!729175))

(assert (=> b!787592 m!729175))

(declare-fun m!729181 () Bool)

(assert (=> b!787592 m!729181))

(declare-fun m!729183 () Bool)

(assert (=> b!787592 m!729183))

(declare-fun m!729185 () Bool)

(assert (=> b!787592 m!729185))

(declare-fun m!729187 () Bool)

(assert (=> b!787608 m!729187))

(declare-fun m!729189 () Bool)

(assert (=> b!787598 m!729189))

(declare-fun m!729191 () Bool)

(assert (=> b!787598 m!729191))

(declare-fun m!729193 () Bool)

(assert (=> b!787604 m!729193))

(assert (=> b!787605 m!729175))

(assert (=> b!787605 m!729175))

(declare-fun m!729195 () Bool)

(assert (=> b!787605 m!729195))

(assert (=> b!787590 m!729175))

(assert (=> b!787590 m!729175))

(declare-fun m!729197 () Bool)

(assert (=> b!787590 m!729197))

(assert (=> b!787609 m!729175))

(assert (=> b!787609 m!729175))

(assert (=> b!787609 m!729177))

(declare-fun m!729199 () Bool)

(assert (=> b!787589 m!729199))

(assert (=> b!787589 m!729199))

(declare-fun m!729201 () Bool)

(assert (=> b!787589 m!729201))

(declare-fun m!729203 () Bool)

(assert (=> b!787589 m!729203))

(declare-fun m!729205 () Bool)

(assert (=> b!787589 m!729205))

(declare-fun m!729207 () Bool)

(assert (=> b!787589 m!729207))

(declare-fun m!729209 () Bool)

(assert (=> b!787599 m!729209))

(assert (=> b!787607 m!729175))

(assert (=> b!787607 m!729175))

(declare-fun m!729211 () Bool)

(assert (=> b!787607 m!729211))

(assert (=> b!787607 m!729211))

(assert (=> b!787607 m!729175))

(declare-fun m!729213 () Bool)

(assert (=> b!787607 m!729213))

(assert (=> b!787597 m!729203))

(declare-fun m!729215 () Bool)

(assert (=> b!787597 m!729215))

(declare-fun m!729217 () Bool)

(assert (=> b!787602 m!729217))

(declare-fun m!729219 () Bool)

(assert (=> b!787595 m!729219))

(declare-fun m!729221 () Bool)

(assert (=> start!67800 m!729221))

(declare-fun m!729223 () Bool)

(assert (=> start!67800 m!729223))

(check-sat (not b!787598) (not b!787595) (not b!787607) (not b!787604) (not b!787599) (not b!787591) (not b!787600) (not b!787589) (not b!787592) (not b!787602) (not b!787609) (not b!787590) (not b!787611) (not b!787605) (not start!67800))
(check-sat)
