; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66478 () Bool)

(assert start!66478)

(declare-fun b!765532 () Bool)

(declare-fun e!426369 () Bool)

(declare-fun e!426370 () Bool)

(assert (=> b!765532 (= e!426369 e!426370)))

(declare-fun res!517920 () Bool)

(assert (=> b!765532 (=> (not res!517920) (not e!426370))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42210 0))(
  ( (array!42211 (arr!20206 (Array (_ BitVec 32) (_ BitVec 64))) (size!20627 (_ BitVec 32))) )
))
(declare-fun lt!340576 () array!42210)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!340573 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7813 0))(
  ( (MissingZero!7813 (index!33619 (_ BitVec 32))) (Found!7813 (index!33620 (_ BitVec 32))) (Intermediate!7813 (undefined!8625 Bool) (index!33621 (_ BitVec 32)) (x!64556 (_ BitVec 32))) (Undefined!7813) (MissingVacant!7813 (index!33622 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42210 (_ BitVec 32)) SeekEntryResult!7813)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765532 (= res!517920 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340573 mask!3328) lt!340573 lt!340576 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340573 lt!340576 mask!3328)))))

(declare-fun a!3186 () array!42210)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!765532 (= lt!340573 (select (store (arr!20206 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!765532 (= lt!340576 (array!42211 (store (arr!20206 a!3186) i!1173 k0!2102) (size!20627 a!3186)))))

(declare-fun b!765533 () Bool)

(declare-fun res!517927 () Bool)

(declare-fun e!426372 () Bool)

(assert (=> b!765533 (=> (not res!517927) (not e!426372))))

(declare-fun arrayContainsKey!0 (array!42210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765533 (= res!517927 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765534 () Bool)

(declare-fun res!517921 () Bool)

(assert (=> b!765534 (=> (not res!517921) (not e!426372))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765534 (= res!517921 (validKeyInArray!0 (select (arr!20206 a!3186) j!159)))))

(declare-fun b!765535 () Bool)

(declare-fun res!517922 () Bool)

(declare-fun e!426368 () Bool)

(assert (=> b!765535 (=> (not res!517922) (not e!426368))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!765535 (= res!517922 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20627 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20627 a!3186))))))

(declare-fun b!765537 () Bool)

(declare-fun e!426371 () Bool)

(declare-fun e!426374 () Bool)

(assert (=> b!765537 (= e!426371 e!426374)))

(declare-fun res!517919 () Bool)

(assert (=> b!765537 (=> (not res!517919) (not e!426374))))

(declare-fun lt!340571 () SeekEntryResult!7813)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42210 (_ BitVec 32)) SeekEntryResult!7813)

(assert (=> b!765537 (= res!517919 (= (seekEntryOrOpen!0 (select (arr!20206 a!3186) j!159) a!3186 mask!3328) lt!340571))))

(assert (=> b!765537 (= lt!340571 (Found!7813 j!159))))

(declare-fun b!765538 () Bool)

(declare-fun res!517929 () Bool)

(assert (=> b!765538 (=> (not res!517929) (not e!426368))))

(declare-datatypes ((List!14261 0))(
  ( (Nil!14258) (Cons!14257 (h!15347 (_ BitVec 64)) (t!20584 List!14261)) )
))
(declare-fun arrayNoDuplicates!0 (array!42210 (_ BitVec 32) List!14261) Bool)

(assert (=> b!765538 (= res!517929 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14258))))

(declare-fun b!765539 () Bool)

(declare-fun res!517916 () Bool)

(assert (=> b!765539 (=> (not res!517916) (not e!426369))))

(declare-fun e!426367 () Bool)

(assert (=> b!765539 (= res!517916 e!426367)))

(declare-fun c!84198 () Bool)

(assert (=> b!765539 (= c!84198 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!765540 () Bool)

(declare-fun res!517917 () Bool)

(assert (=> b!765540 (=> (not res!517917) (not e!426372))))

(assert (=> b!765540 (= res!517917 (validKeyInArray!0 k0!2102))))

(declare-fun b!765541 () Bool)

(declare-fun lt!340574 () SeekEntryResult!7813)

(assert (=> b!765541 (= e!426367 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20206 a!3186) j!159) a!3186 mask!3328) lt!340574))))

(declare-fun b!765542 () Bool)

(declare-fun res!517923 () Bool)

(assert (=> b!765542 (=> (not res!517923) (not e!426369))))

(assert (=> b!765542 (= res!517923 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20206 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765543 () Bool)

(declare-fun res!517926 () Bool)

(assert (=> b!765543 (=> (not res!517926) (not e!426368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42210 (_ BitVec 32)) Bool)

(assert (=> b!765543 (= res!517926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!765544 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42210 (_ BitVec 32)) SeekEntryResult!7813)

(assert (=> b!765544 (= e!426367 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20206 a!3186) j!159) a!3186 mask!3328) (Found!7813 j!159)))))

(declare-fun b!765545 () Bool)

(assert (=> b!765545 (= e!426368 e!426369)))

(declare-fun res!517928 () Bool)

(assert (=> b!765545 (=> (not res!517928) (not e!426369))))

(assert (=> b!765545 (= res!517928 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20206 a!3186) j!159) mask!3328) (select (arr!20206 a!3186) j!159) a!3186 mask!3328) lt!340574))))

(assert (=> b!765545 (= lt!340574 (Intermediate!7813 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765546 () Bool)

(assert (=> b!765546 (= e!426374 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20206 a!3186) j!159) a!3186 mask!3328) lt!340571))))

(declare-fun res!517915 () Bool)

(assert (=> start!66478 (=> (not res!517915) (not e!426372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66478 (= res!517915 (validMask!0 mask!3328))))

(assert (=> start!66478 e!426372))

(assert (=> start!66478 true))

(declare-fun array_inv!15980 (array!42210) Bool)

(assert (=> start!66478 (array_inv!15980 a!3186)))

(declare-fun b!765536 () Bool)

(assert (=> b!765536 (= e!426370 (not true))))

(assert (=> b!765536 e!426371))

(declare-fun res!517918 () Bool)

(assert (=> b!765536 (=> (not res!517918) (not e!426371))))

(assert (=> b!765536 (= res!517918 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26352 0))(
  ( (Unit!26353) )
))
(declare-fun lt!340572 () Unit!26352)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42210 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26352)

(assert (=> b!765536 (= lt!340572 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765547 () Bool)

(assert (=> b!765547 (= e!426372 e!426368)))

(declare-fun res!517925 () Bool)

(assert (=> b!765547 (=> (not res!517925) (not e!426368))))

(declare-fun lt!340575 () SeekEntryResult!7813)

(assert (=> b!765547 (= res!517925 (or (= lt!340575 (MissingZero!7813 i!1173)) (= lt!340575 (MissingVacant!7813 i!1173))))))

(assert (=> b!765547 (= lt!340575 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!765548 () Bool)

(declare-fun res!517924 () Bool)

(assert (=> b!765548 (=> (not res!517924) (not e!426372))))

(assert (=> b!765548 (= res!517924 (and (= (size!20627 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20627 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20627 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66478 res!517915) b!765548))

(assert (= (and b!765548 res!517924) b!765534))

(assert (= (and b!765534 res!517921) b!765540))

(assert (= (and b!765540 res!517917) b!765533))

(assert (= (and b!765533 res!517927) b!765547))

(assert (= (and b!765547 res!517925) b!765543))

(assert (= (and b!765543 res!517926) b!765538))

(assert (= (and b!765538 res!517929) b!765535))

(assert (= (and b!765535 res!517922) b!765545))

(assert (= (and b!765545 res!517928) b!765542))

(assert (= (and b!765542 res!517923) b!765539))

(assert (= (and b!765539 c!84198) b!765541))

(assert (= (and b!765539 (not c!84198)) b!765544))

(assert (= (and b!765539 res!517916) b!765532))

(assert (= (and b!765532 res!517920) b!765536))

(assert (= (and b!765536 res!517918) b!765537))

(assert (= (and b!765537 res!517919) b!765546))

(declare-fun m!711681 () Bool)

(assert (=> b!765546 m!711681))

(assert (=> b!765546 m!711681))

(declare-fun m!711683 () Bool)

(assert (=> b!765546 m!711683))

(declare-fun m!711685 () Bool)

(assert (=> b!765547 m!711685))

(declare-fun m!711687 () Bool)

(assert (=> start!66478 m!711687))

(declare-fun m!711689 () Bool)

(assert (=> start!66478 m!711689))

(assert (=> b!765534 m!711681))

(assert (=> b!765534 m!711681))

(declare-fun m!711691 () Bool)

(assert (=> b!765534 m!711691))

(assert (=> b!765541 m!711681))

(assert (=> b!765541 m!711681))

(declare-fun m!711693 () Bool)

(assert (=> b!765541 m!711693))

(declare-fun m!711695 () Bool)

(assert (=> b!765538 m!711695))

(declare-fun m!711697 () Bool)

(assert (=> b!765533 m!711697))

(declare-fun m!711699 () Bool)

(assert (=> b!765536 m!711699))

(declare-fun m!711701 () Bool)

(assert (=> b!765536 m!711701))

(assert (=> b!765544 m!711681))

(assert (=> b!765544 m!711681))

(declare-fun m!711703 () Bool)

(assert (=> b!765544 m!711703))

(assert (=> b!765545 m!711681))

(assert (=> b!765545 m!711681))

(declare-fun m!711705 () Bool)

(assert (=> b!765545 m!711705))

(assert (=> b!765545 m!711705))

(assert (=> b!765545 m!711681))

(declare-fun m!711707 () Bool)

(assert (=> b!765545 m!711707))

(declare-fun m!711709 () Bool)

(assert (=> b!765532 m!711709))

(declare-fun m!711711 () Bool)

(assert (=> b!765532 m!711711))

(assert (=> b!765532 m!711709))

(declare-fun m!711713 () Bool)

(assert (=> b!765532 m!711713))

(declare-fun m!711715 () Bool)

(assert (=> b!765532 m!711715))

(declare-fun m!711717 () Bool)

(assert (=> b!765532 m!711717))

(declare-fun m!711719 () Bool)

(assert (=> b!765543 m!711719))

(declare-fun m!711721 () Bool)

(assert (=> b!765542 m!711721))

(assert (=> b!765537 m!711681))

(assert (=> b!765537 m!711681))

(declare-fun m!711723 () Bool)

(assert (=> b!765537 m!711723))

(declare-fun m!711725 () Bool)

(assert (=> b!765540 m!711725))

(check-sat (not b!765546) (not b!765534) (not start!66478) (not b!765547) (not b!765544) (not b!765540) (not b!765543) (not b!765541) (not b!765538) (not b!765533) (not b!765545) (not b!765537) (not b!765532) (not b!765536))
(check-sat)
