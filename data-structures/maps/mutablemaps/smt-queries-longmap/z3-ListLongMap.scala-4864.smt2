; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67044 () Bool)

(assert start!67044)

(declare-fun b!773716 () Bool)

(declare-fun e!430702 () Bool)

(declare-fun e!430707 () Bool)

(assert (=> b!773716 (= e!430702 e!430707)))

(declare-fun res!523429 () Bool)

(assert (=> b!773716 (=> (not res!523429) (not e!430707))))

(declare-datatypes ((SeekEntryResult!7912 0))(
  ( (MissingZero!7912 (index!34015 (_ BitVec 32))) (Found!7912 (index!34016 (_ BitVec 32))) (Intermediate!7912 (undefined!8724 Bool) (index!34017 (_ BitVec 32)) (x!64980 (_ BitVec 32))) (Undefined!7912) (MissingVacant!7912 (index!34018 (_ BitVec 32))) )
))
(declare-fun lt!344614 () SeekEntryResult!7912)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!773716 (= res!523429 (or (= lt!344614 (MissingZero!7912 i!1173)) (= lt!344614 (MissingVacant!7912 i!1173))))))

(declare-datatypes ((array!42423 0))(
  ( (array!42424 (arr!20305 (Array (_ BitVec 32) (_ BitVec 64))) (size!20726 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42423)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42423 (_ BitVec 32)) SeekEntryResult!7912)

(assert (=> b!773716 (= lt!344614 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!773717 () Bool)

(declare-fun res!523426 () Bool)

(assert (=> b!773717 (=> (not res!523426) (not e!430702))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773717 (= res!523426 (validKeyInArray!0 (select (arr!20305 a!3186) j!159)))))

(declare-fun b!773718 () Bool)

(declare-fun res!523435 () Bool)

(declare-fun e!430706 () Bool)

(assert (=> b!773718 (=> (not res!523435) (not e!430706))))

(declare-fun e!430711 () Bool)

(assert (=> b!773718 (= res!523435 e!430711)))

(declare-fun c!85547 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773718 (= c!85547 (bvsle x!1131 resIntermediateX!5))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!773719 () Bool)

(declare-fun lt!344611 () SeekEntryResult!7912)

(declare-fun e!430701 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42423 (_ BitVec 32)) SeekEntryResult!7912)

(assert (=> b!773719 (= e!430701 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344611))))

(declare-fun b!773720 () Bool)

(declare-fun e!430700 () Bool)

(assert (=> b!773720 (= e!430706 e!430700)))

(declare-fun res!523434 () Bool)

(assert (=> b!773720 (=> (not res!523434) (not e!430700))))

(declare-fun lt!344607 () SeekEntryResult!7912)

(declare-fun lt!344609 () SeekEntryResult!7912)

(assert (=> b!773720 (= res!523434 (= lt!344607 lt!344609))))

(declare-fun lt!344608 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!344604 () array!42423)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42423 (_ BitVec 32)) SeekEntryResult!7912)

(assert (=> b!773720 (= lt!344609 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344608 lt!344604 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773720 (= lt!344607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344608 mask!3328) lt!344608 lt!344604 mask!3328))))

(assert (=> b!773720 (= lt!344608 (select (store (arr!20305 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!773720 (= lt!344604 (array!42424 (store (arr!20305 a!3186) i!1173 k0!2102) (size!20726 a!3186)))))

(declare-fun b!773721 () Bool)

(declare-fun res!523430 () Bool)

(assert (=> b!773721 (=> (not res!523430) (not e!430707))))

(assert (=> b!773721 (= res!523430 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20726 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20726 a!3186))))))

(declare-fun b!773722 () Bool)

(declare-fun res!523421 () Bool)

(assert (=> b!773722 (=> (not res!523421) (not e!430702))))

(assert (=> b!773722 (= res!523421 (and (= (size!20726 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20726 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20726 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773723 () Bool)

(declare-datatypes ((Unit!26684 0))(
  ( (Unit!26685) )
))
(declare-fun e!430709 () Unit!26684)

(declare-fun Unit!26686 () Unit!26684)

(assert (=> b!773723 (= e!430709 Unit!26686)))

(declare-fun lt!344602 () (_ BitVec 32))

(declare-fun lt!344603 () SeekEntryResult!7912)

(assert (=> b!773723 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344602 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344603)))

(declare-fun b!773724 () Bool)

(declare-fun Unit!26687 () Unit!26684)

(assert (=> b!773724 (= e!430709 Unit!26687)))

(declare-fun lt!344610 () SeekEntryResult!7912)

(assert (=> b!773724 (= lt!344610 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!344612 () SeekEntryResult!7912)

(assert (=> b!773724 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344602 resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344612)))

(declare-fun b!773725 () Bool)

(declare-fun e!430708 () Bool)

(declare-fun e!430703 () Bool)

(assert (=> b!773725 (= e!430708 e!430703)))

(declare-fun res!523428 () Bool)

(assert (=> b!773725 (=> res!523428 e!430703)))

(assert (=> b!773725 (= res!523428 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!344602 #b00000000000000000000000000000000) (bvsge lt!344602 (size!20726 a!3186))))))

(declare-fun lt!344613 () Unit!26684)

(assert (=> b!773725 (= lt!344613 e!430709)))

(declare-fun c!85546 () Bool)

(declare-fun lt!344605 () Bool)

(assert (=> b!773725 (= c!85546 lt!344605)))

(assert (=> b!773725 (= lt!344605 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773725 (= lt!344602 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773726 () Bool)

(assert (=> b!773726 (= e!430711 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) (Found!7912 j!159)))))

(declare-fun b!773728 () Bool)

(declare-fun res!523422 () Bool)

(assert (=> b!773728 (=> res!523422 e!430703)))

(declare-fun e!430710 () Bool)

(assert (=> b!773728 (= res!523422 e!430710)))

(declare-fun c!85548 () Bool)

(assert (=> b!773728 (= c!85548 lt!344605)))

(declare-fun b!773729 () Bool)

(declare-fun res!523427 () Bool)

(assert (=> b!773729 (=> (not res!523427) (not e!430706))))

(assert (=> b!773729 (= res!523427 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20305 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773730 () Bool)

(assert (=> b!773730 (= e!430700 (not e!430708))))

(declare-fun res!523432 () Bool)

(assert (=> b!773730 (=> res!523432 e!430708)))

(get-info :version)

(assert (=> b!773730 (= res!523432 (or (not ((_ is Intermediate!7912) lt!344609)) (bvsge x!1131 (x!64980 lt!344609))))))

(assert (=> b!773730 (= lt!344612 (Found!7912 j!159))))

(declare-fun e!430705 () Bool)

(assert (=> b!773730 e!430705))

(declare-fun res!523433 () Bool)

(assert (=> b!773730 (=> (not res!523433) (not e!430705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42423 (_ BitVec 32)) Bool)

(assert (=> b!773730 (= res!523433 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344606 () Unit!26684)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26684)

(assert (=> b!773730 (= lt!344606 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773731 () Bool)

(assert (=> b!773731 (= e!430703 (= lt!344607 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344602 lt!344608 lt!344604 mask!3328)))))

(declare-fun b!773732 () Bool)

(assert (=> b!773732 (= e!430710 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344602 resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344612)))))

(declare-fun b!773733 () Bool)

(declare-fun res!523424 () Bool)

(assert (=> b!773733 (=> (not res!523424) (not e!430702))))

(declare-fun arrayContainsKey!0 (array!42423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773733 (= res!523424 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!773734 () Bool)

(assert (=> b!773734 (= e!430710 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344602 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344603)))))

(declare-fun b!773735 () Bool)

(declare-fun res!523423 () Bool)

(assert (=> b!773735 (=> (not res!523423) (not e!430707))))

(declare-datatypes ((List!14360 0))(
  ( (Nil!14357) (Cons!14356 (h!15461 (_ BitVec 64)) (t!20683 List!14360)) )
))
(declare-fun arrayNoDuplicates!0 (array!42423 (_ BitVec 32) List!14360) Bool)

(assert (=> b!773735 (= res!523423 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14357))))

(declare-fun b!773736 () Bool)

(declare-fun res!523425 () Bool)

(assert (=> b!773736 (=> (not res!523425) (not e!430702))))

(assert (=> b!773736 (= res!523425 (validKeyInArray!0 k0!2102))))

(declare-fun b!773737 () Bool)

(assert (=> b!773737 (= e!430707 e!430706)))

(declare-fun res!523438 () Bool)

(assert (=> b!773737 (=> (not res!523438) (not e!430706))))

(assert (=> b!773737 (= res!523438 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20305 a!3186) j!159) mask!3328) (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344603))))

(assert (=> b!773737 (= lt!344603 (Intermediate!7912 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!523431 () Bool)

(assert (=> start!67044 (=> (not res!523431) (not e!430702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67044 (= res!523431 (validMask!0 mask!3328))))

(assert (=> start!67044 e!430702))

(assert (=> start!67044 true))

(declare-fun array_inv!16079 (array!42423) Bool)

(assert (=> start!67044 (array_inv!16079 a!3186)))

(declare-fun b!773727 () Bool)

(assert (=> b!773727 (= e!430705 e!430701)))

(declare-fun res!523436 () Bool)

(assert (=> b!773727 (=> (not res!523436) (not e!430701))))

(assert (=> b!773727 (= res!523436 (= (seekEntryOrOpen!0 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344611))))

(assert (=> b!773727 (= lt!344611 (Found!7912 j!159))))

(declare-fun b!773738 () Bool)

(assert (=> b!773738 (= e!430711 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344603))))

(declare-fun b!773739 () Bool)

(declare-fun res!523437 () Bool)

(assert (=> b!773739 (=> (not res!523437) (not e!430707))))

(assert (=> b!773739 (= res!523437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!67044 res!523431) b!773722))

(assert (= (and b!773722 res!523421) b!773717))

(assert (= (and b!773717 res!523426) b!773736))

(assert (= (and b!773736 res!523425) b!773733))

(assert (= (and b!773733 res!523424) b!773716))

(assert (= (and b!773716 res!523429) b!773739))

(assert (= (and b!773739 res!523437) b!773735))

(assert (= (and b!773735 res!523423) b!773721))

(assert (= (and b!773721 res!523430) b!773737))

(assert (= (and b!773737 res!523438) b!773729))

(assert (= (and b!773729 res!523427) b!773718))

(assert (= (and b!773718 c!85547) b!773738))

(assert (= (and b!773718 (not c!85547)) b!773726))

(assert (= (and b!773718 res!523435) b!773720))

(assert (= (and b!773720 res!523434) b!773730))

(assert (= (and b!773730 res!523433) b!773727))

(assert (= (and b!773727 res!523436) b!773719))

(assert (= (and b!773730 (not res!523432)) b!773725))

(assert (= (and b!773725 c!85546) b!773723))

(assert (= (and b!773725 (not c!85546)) b!773724))

(assert (= (and b!773725 (not res!523428)) b!773728))

(assert (= (and b!773728 c!85548) b!773734))

(assert (= (and b!773728 (not c!85548)) b!773732))

(assert (= (and b!773728 (not res!523422)) b!773731))

(declare-fun m!718429 () Bool)

(assert (=> b!773730 m!718429))

(declare-fun m!718431 () Bool)

(assert (=> b!773730 m!718431))

(declare-fun m!718433 () Bool)

(assert (=> b!773731 m!718433))

(declare-fun m!718435 () Bool)

(assert (=> b!773716 m!718435))

(declare-fun m!718437 () Bool)

(assert (=> b!773737 m!718437))

(assert (=> b!773737 m!718437))

(declare-fun m!718439 () Bool)

(assert (=> b!773737 m!718439))

(assert (=> b!773737 m!718439))

(assert (=> b!773737 m!718437))

(declare-fun m!718441 () Bool)

(assert (=> b!773737 m!718441))

(declare-fun m!718443 () Bool)

(assert (=> b!773725 m!718443))

(assert (=> b!773738 m!718437))

(assert (=> b!773738 m!718437))

(declare-fun m!718445 () Bool)

(assert (=> b!773738 m!718445))

(assert (=> b!773719 m!718437))

(assert (=> b!773719 m!718437))

(declare-fun m!718447 () Bool)

(assert (=> b!773719 m!718447))

(assert (=> b!773727 m!718437))

(assert (=> b!773727 m!718437))

(declare-fun m!718449 () Bool)

(assert (=> b!773727 m!718449))

(assert (=> b!773726 m!718437))

(assert (=> b!773726 m!718437))

(declare-fun m!718451 () Bool)

(assert (=> b!773726 m!718451))

(declare-fun m!718453 () Bool)

(assert (=> b!773735 m!718453))

(assert (=> b!773724 m!718437))

(assert (=> b!773724 m!718437))

(assert (=> b!773724 m!718451))

(assert (=> b!773724 m!718437))

(declare-fun m!718455 () Bool)

(assert (=> b!773724 m!718455))

(declare-fun m!718457 () Bool)

(assert (=> b!773729 m!718457))

(declare-fun m!718459 () Bool)

(assert (=> b!773720 m!718459))

(declare-fun m!718461 () Bool)

(assert (=> b!773720 m!718461))

(declare-fun m!718463 () Bool)

(assert (=> b!773720 m!718463))

(declare-fun m!718465 () Bool)

(assert (=> b!773720 m!718465))

(assert (=> b!773720 m!718459))

(declare-fun m!718467 () Bool)

(assert (=> b!773720 m!718467))

(declare-fun m!718469 () Bool)

(assert (=> start!67044 m!718469))

(declare-fun m!718471 () Bool)

(assert (=> start!67044 m!718471))

(assert (=> b!773734 m!718437))

(assert (=> b!773734 m!718437))

(declare-fun m!718473 () Bool)

(assert (=> b!773734 m!718473))

(declare-fun m!718475 () Bool)

(assert (=> b!773739 m!718475))

(assert (=> b!773717 m!718437))

(assert (=> b!773717 m!718437))

(declare-fun m!718477 () Bool)

(assert (=> b!773717 m!718477))

(declare-fun m!718479 () Bool)

(assert (=> b!773736 m!718479))

(assert (=> b!773723 m!718437))

(assert (=> b!773723 m!718437))

(assert (=> b!773723 m!718473))

(declare-fun m!718481 () Bool)

(assert (=> b!773733 m!718481))

(assert (=> b!773732 m!718437))

(assert (=> b!773732 m!718437))

(assert (=> b!773732 m!718455))

(check-sat (not b!773732) (not b!773737) (not b!773725) (not b!773731) (not b!773734) (not b!773716) (not b!773726) (not b!773727) (not b!773736) (not b!773724) (not b!773733) (not b!773738) (not start!67044) (not b!773739) (not b!773723) (not b!773717) (not b!773735) (not b!773720) (not b!773730) (not b!773719))
(check-sat)
(get-model)

(declare-fun b!773824 () Bool)

(declare-fun c!85565 () Bool)

(declare-fun lt!344658 () (_ BitVec 64))

(assert (=> b!773824 (= c!85565 (= lt!344658 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430756 () SeekEntryResult!7912)

(declare-fun e!430754 () SeekEntryResult!7912)

(assert (=> b!773824 (= e!430756 e!430754)))

(declare-fun d!101885 () Bool)

(declare-fun lt!344659 () SeekEntryResult!7912)

(assert (=> d!101885 (and (or ((_ is Undefined!7912) lt!344659) (not ((_ is Found!7912) lt!344659)) (and (bvsge (index!34016 lt!344659) #b00000000000000000000000000000000) (bvslt (index!34016 lt!344659) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344659) ((_ is Found!7912) lt!344659) (not ((_ is MissingVacant!7912) lt!344659)) (not (= (index!34018 lt!344659) resIntermediateIndex!5)) (and (bvsge (index!34018 lt!344659) #b00000000000000000000000000000000) (bvslt (index!34018 lt!344659) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344659) (ite ((_ is Found!7912) lt!344659) (= (select (arr!20305 a!3186) (index!34016 lt!344659)) (select (arr!20305 a!3186) j!159)) (and ((_ is MissingVacant!7912) lt!344659) (= (index!34018 lt!344659) resIntermediateIndex!5) (= (select (arr!20305 a!3186) (index!34018 lt!344659)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!430755 () SeekEntryResult!7912)

(assert (=> d!101885 (= lt!344659 e!430755)))

(declare-fun c!85564 () Bool)

(assert (=> d!101885 (= c!85564 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101885 (= lt!344658 (select (arr!20305 a!3186) index!1321))))

(assert (=> d!101885 (validMask!0 mask!3328)))

(assert (=> d!101885 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344659)))

(declare-fun b!773825 () Bool)

(assert (=> b!773825 (= e!430756 (Found!7912 index!1321))))

(declare-fun b!773826 () Bool)

(assert (=> b!773826 (= e!430755 Undefined!7912)))

(declare-fun b!773827 () Bool)

(assert (=> b!773827 (= e!430755 e!430756)))

(declare-fun c!85566 () Bool)

(assert (=> b!773827 (= c!85566 (= lt!344658 (select (arr!20305 a!3186) j!159)))))

(declare-fun b!773828 () Bool)

(assert (=> b!773828 (= e!430754 (MissingVacant!7912 resIntermediateIndex!5))))

(declare-fun b!773829 () Bool)

(assert (=> b!773829 (= e!430754 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101885 c!85564) b!773826))

(assert (= (and d!101885 (not c!85564)) b!773827))

(assert (= (and b!773827 c!85566) b!773825))

(assert (= (and b!773827 (not c!85566)) b!773824))

(assert (= (and b!773824 c!85565) b!773828))

(assert (= (and b!773824 (not c!85565)) b!773829))

(declare-fun m!718537 () Bool)

(assert (=> d!101885 m!718537))

(declare-fun m!718539 () Bool)

(assert (=> d!101885 m!718539))

(declare-fun m!718541 () Bool)

(assert (=> d!101885 m!718541))

(assert (=> d!101885 m!718469))

(assert (=> b!773829 m!718443))

(assert (=> b!773829 m!718443))

(assert (=> b!773829 m!718437))

(declare-fun m!718543 () Bool)

(assert (=> b!773829 m!718543))

(assert (=> b!773724 d!101885))

(declare-fun b!773830 () Bool)

(declare-fun c!85568 () Bool)

(declare-fun lt!344660 () (_ BitVec 64))

(assert (=> b!773830 (= c!85568 (= lt!344660 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430759 () SeekEntryResult!7912)

(declare-fun e!430757 () SeekEntryResult!7912)

(assert (=> b!773830 (= e!430759 e!430757)))

(declare-fun lt!344661 () SeekEntryResult!7912)

(declare-fun d!101887 () Bool)

(assert (=> d!101887 (and (or ((_ is Undefined!7912) lt!344661) (not ((_ is Found!7912) lt!344661)) (and (bvsge (index!34016 lt!344661) #b00000000000000000000000000000000) (bvslt (index!34016 lt!344661) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344661) ((_ is Found!7912) lt!344661) (not ((_ is MissingVacant!7912) lt!344661)) (not (= (index!34018 lt!344661) resIntermediateIndex!5)) (and (bvsge (index!34018 lt!344661) #b00000000000000000000000000000000) (bvslt (index!34018 lt!344661) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344661) (ite ((_ is Found!7912) lt!344661) (= (select (arr!20305 a!3186) (index!34016 lt!344661)) (select (arr!20305 a!3186) j!159)) (and ((_ is MissingVacant!7912) lt!344661) (= (index!34018 lt!344661) resIntermediateIndex!5) (= (select (arr!20305 a!3186) (index!34018 lt!344661)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!430758 () SeekEntryResult!7912)

(assert (=> d!101887 (= lt!344661 e!430758)))

(declare-fun c!85567 () Bool)

(assert (=> d!101887 (= c!85567 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101887 (= lt!344660 (select (arr!20305 a!3186) lt!344602))))

(assert (=> d!101887 (validMask!0 mask!3328)))

(assert (=> d!101887 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344602 resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344661)))

(declare-fun b!773831 () Bool)

(assert (=> b!773831 (= e!430759 (Found!7912 lt!344602))))

(declare-fun b!773832 () Bool)

(assert (=> b!773832 (= e!430758 Undefined!7912)))

(declare-fun b!773833 () Bool)

(assert (=> b!773833 (= e!430758 e!430759)))

(declare-fun c!85569 () Bool)

(assert (=> b!773833 (= c!85569 (= lt!344660 (select (arr!20305 a!3186) j!159)))))

(declare-fun b!773834 () Bool)

(assert (=> b!773834 (= e!430757 (MissingVacant!7912 resIntermediateIndex!5))))

(declare-fun b!773835 () Bool)

(assert (=> b!773835 (= e!430757 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!344602 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101887 c!85567) b!773832))

(assert (= (and d!101887 (not c!85567)) b!773833))

(assert (= (and b!773833 c!85569) b!773831))

(assert (= (and b!773833 (not c!85569)) b!773830))

(assert (= (and b!773830 c!85568) b!773834))

(assert (= (and b!773830 (not c!85568)) b!773835))

(declare-fun m!718545 () Bool)

(assert (=> d!101887 m!718545))

(declare-fun m!718547 () Bool)

(assert (=> d!101887 m!718547))

(declare-fun m!718549 () Bool)

(assert (=> d!101887 m!718549))

(assert (=> d!101887 m!718469))

(declare-fun m!718551 () Bool)

(assert (=> b!773835 m!718551))

(assert (=> b!773835 m!718551))

(assert (=> b!773835 m!718437))

(declare-fun m!718553 () Bool)

(assert (=> b!773835 m!718553))

(assert (=> b!773724 d!101887))

(declare-fun d!101889 () Bool)

(declare-fun res!523499 () Bool)

(declare-fun e!430771 () Bool)

(assert (=> d!101889 (=> res!523499 e!430771)))

(assert (=> d!101889 (= res!523499 (bvsge #b00000000000000000000000000000000 (size!20726 a!3186)))))

(assert (=> d!101889 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14357) e!430771)))

(declare-fun b!773846 () Bool)

(declare-fun e!430770 () Bool)

(declare-fun call!35154 () Bool)

(assert (=> b!773846 (= e!430770 call!35154)))

(declare-fun b!773847 () Bool)

(assert (=> b!773847 (= e!430770 call!35154)))

(declare-fun bm!35151 () Bool)

(declare-fun c!85572 () Bool)

(assert (=> bm!35151 (= call!35154 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!85572 (Cons!14356 (select (arr!20305 a!3186) #b00000000000000000000000000000000) Nil!14357) Nil!14357)))))

(declare-fun b!773848 () Bool)

(declare-fun e!430768 () Bool)

(declare-fun contains!4095 (List!14360 (_ BitVec 64)) Bool)

(assert (=> b!773848 (= e!430768 (contains!4095 Nil!14357 (select (arr!20305 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!773849 () Bool)

(declare-fun e!430769 () Bool)

(assert (=> b!773849 (= e!430769 e!430770)))

(assert (=> b!773849 (= c!85572 (validKeyInArray!0 (select (arr!20305 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!773850 () Bool)

(assert (=> b!773850 (= e!430771 e!430769)))

(declare-fun res!523500 () Bool)

(assert (=> b!773850 (=> (not res!523500) (not e!430769))))

(assert (=> b!773850 (= res!523500 (not e!430768))))

(declare-fun res!523501 () Bool)

(assert (=> b!773850 (=> (not res!523501) (not e!430768))))

(assert (=> b!773850 (= res!523501 (validKeyInArray!0 (select (arr!20305 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101889 (not res!523499)) b!773850))

(assert (= (and b!773850 res!523501) b!773848))

(assert (= (and b!773850 res!523500) b!773849))

(assert (= (and b!773849 c!85572) b!773846))

(assert (= (and b!773849 (not c!85572)) b!773847))

(assert (= (or b!773846 b!773847) bm!35151))

(declare-fun m!718555 () Bool)

(assert (=> bm!35151 m!718555))

(declare-fun m!718557 () Bool)

(assert (=> bm!35151 m!718557))

(assert (=> b!773848 m!718555))

(assert (=> b!773848 m!718555))

(declare-fun m!718559 () Bool)

(assert (=> b!773848 m!718559))

(assert (=> b!773849 m!718555))

(assert (=> b!773849 m!718555))

(declare-fun m!718561 () Bool)

(assert (=> b!773849 m!718561))

(assert (=> b!773850 m!718555))

(assert (=> b!773850 m!718555))

(assert (=> b!773850 m!718561))

(assert (=> b!773735 d!101889))

(declare-fun d!101891 () Bool)

(assert (=> d!101891 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!773736 d!101891))

(declare-fun d!101893 () Bool)

(declare-fun lt!344664 () (_ BitVec 32))

(assert (=> d!101893 (and (bvsge lt!344664 #b00000000000000000000000000000000) (bvslt lt!344664 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101893 (= lt!344664 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101893 (validMask!0 mask!3328)))

(assert (=> d!101893 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!344664)))

(declare-fun bs!21619 () Bool)

(assert (= bs!21619 d!101893))

(declare-fun m!718563 () Bool)

(assert (=> bs!21619 m!718563))

(assert (=> bs!21619 m!718469))

(assert (=> b!773725 d!101893))

(assert (=> b!773726 d!101885))

(assert (=> b!773732 d!101887))

(declare-fun d!101895 () Bool)

(declare-fun res!523506 () Bool)

(declare-fun e!430776 () Bool)

(assert (=> d!101895 (=> res!523506 e!430776)))

(assert (=> d!101895 (= res!523506 (= (select (arr!20305 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!101895 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!430776)))

(declare-fun b!773855 () Bool)

(declare-fun e!430777 () Bool)

(assert (=> b!773855 (= e!430776 e!430777)))

(declare-fun res!523507 () Bool)

(assert (=> b!773855 (=> (not res!523507) (not e!430777))))

(assert (=> b!773855 (= res!523507 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20726 a!3186)))))

(declare-fun b!773856 () Bool)

(assert (=> b!773856 (= e!430777 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101895 (not res!523506)) b!773855))

(assert (= (and b!773855 res!523507) b!773856))

(assert (=> d!101895 m!718555))

(declare-fun m!718565 () Bool)

(assert (=> b!773856 m!718565))

(assert (=> b!773733 d!101895))

(declare-fun b!773875 () Bool)

(declare-fun e!430792 () SeekEntryResult!7912)

(assert (=> b!773875 (= e!430792 (Intermediate!7912 false lt!344602 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!773876 () Bool)

(declare-fun e!430791 () Bool)

(declare-fun e!430790 () Bool)

(assert (=> b!773876 (= e!430791 e!430790)))

(declare-fun res!523514 () Bool)

(declare-fun lt!344669 () SeekEntryResult!7912)

(assert (=> b!773876 (= res!523514 (and ((_ is Intermediate!7912) lt!344669) (not (undefined!8724 lt!344669)) (bvslt (x!64980 lt!344669) #b01111111111111111111111111111110) (bvsge (x!64980 lt!344669) #b00000000000000000000000000000000) (bvsge (x!64980 lt!344669) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!773876 (=> (not res!523514) (not e!430790))))

(declare-fun b!773877 () Bool)

(declare-fun e!430789 () SeekEntryResult!7912)

(assert (=> b!773877 (= e!430789 e!430792)))

(declare-fun c!85579 () Bool)

(declare-fun lt!344670 () (_ BitVec 64))

(assert (=> b!773877 (= c!85579 (or (= lt!344670 (select (arr!20305 a!3186) j!159)) (= (bvadd lt!344670 lt!344670) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773878 () Bool)

(assert (=> b!773878 (and (bvsge (index!34017 lt!344669) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344669) (size!20726 a!3186)))))

(declare-fun e!430788 () Bool)

(assert (=> b!773878 (= e!430788 (= (select (arr!20305 a!3186) (index!34017 lt!344669)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!773879 () Bool)

(assert (=> b!773879 (= e!430791 (bvsge (x!64980 lt!344669) #b01111111111111111111111111111110))))

(declare-fun b!773880 () Bool)

(assert (=> b!773880 (= e!430789 (Intermediate!7912 true lt!344602 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun d!101897 () Bool)

(assert (=> d!101897 e!430791))

(declare-fun c!85580 () Bool)

(assert (=> d!101897 (= c!85580 (and ((_ is Intermediate!7912) lt!344669) (undefined!8724 lt!344669)))))

(assert (=> d!101897 (= lt!344669 e!430789)))

(declare-fun c!85581 () Bool)

(assert (=> d!101897 (= c!85581 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101897 (= lt!344670 (select (arr!20305 a!3186) lt!344602))))

(assert (=> d!101897 (validMask!0 mask!3328)))

(assert (=> d!101897 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344602 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344669)))

(declare-fun b!773881 () Bool)

(assert (=> b!773881 (= e!430792 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!344602 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (select (arr!20305 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!773882 () Bool)

(assert (=> b!773882 (and (bvsge (index!34017 lt!344669) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344669) (size!20726 a!3186)))))

(declare-fun res!523515 () Bool)

(assert (=> b!773882 (= res!523515 (= (select (arr!20305 a!3186) (index!34017 lt!344669)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!773882 (=> res!523515 e!430788)))

(declare-fun b!773883 () Bool)

(assert (=> b!773883 (and (bvsge (index!34017 lt!344669) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344669) (size!20726 a!3186)))))

(declare-fun res!523516 () Bool)

(assert (=> b!773883 (= res!523516 (= (select (arr!20305 a!3186) (index!34017 lt!344669)) (select (arr!20305 a!3186) j!159)))))

(assert (=> b!773883 (=> res!523516 e!430788)))

(assert (=> b!773883 (= e!430790 e!430788)))

(assert (= (and d!101897 c!85581) b!773880))

(assert (= (and d!101897 (not c!85581)) b!773877))

(assert (= (and b!773877 c!85579) b!773875))

(assert (= (and b!773877 (not c!85579)) b!773881))

(assert (= (and d!101897 c!85580) b!773879))

(assert (= (and d!101897 (not c!85580)) b!773876))

(assert (= (and b!773876 res!523514) b!773883))

(assert (= (and b!773883 (not res!523516)) b!773882))

(assert (= (and b!773882 (not res!523515)) b!773878))

(declare-fun m!718567 () Bool)

(assert (=> b!773878 m!718567))

(assert (=> b!773883 m!718567))

(assert (=> d!101897 m!718549))

(assert (=> d!101897 m!718469))

(assert (=> b!773882 m!718567))

(assert (=> b!773881 m!718551))

(assert (=> b!773881 m!718551))

(assert (=> b!773881 m!718437))

(declare-fun m!718569 () Bool)

(assert (=> b!773881 m!718569))

(assert (=> b!773734 d!101897))

(assert (=> b!773723 d!101897))

(declare-fun b!773892 () Bool)

(declare-fun e!430801 () Bool)

(declare-fun e!430800 () Bool)

(assert (=> b!773892 (= e!430801 e!430800)))

(declare-fun c!85584 () Bool)

(assert (=> b!773892 (= c!85584 (validKeyInArray!0 (select (arr!20305 a!3186) j!159)))))

(declare-fun b!773893 () Bool)

(declare-fun call!35157 () Bool)

(assert (=> b!773893 (= e!430800 call!35157)))

(declare-fun bm!35154 () Bool)

(assert (=> bm!35154 (= call!35157 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!773894 () Bool)

(declare-fun e!430799 () Bool)

(assert (=> b!773894 (= e!430800 e!430799)))

(declare-fun lt!344677 () (_ BitVec 64))

(assert (=> b!773894 (= lt!344677 (select (arr!20305 a!3186) j!159))))

(declare-fun lt!344679 () Unit!26684)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42423 (_ BitVec 64) (_ BitVec 32)) Unit!26684)

(assert (=> b!773894 (= lt!344679 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!344677 j!159))))

(assert (=> b!773894 (arrayContainsKey!0 a!3186 lt!344677 #b00000000000000000000000000000000)))

(declare-fun lt!344678 () Unit!26684)

(assert (=> b!773894 (= lt!344678 lt!344679)))

(declare-fun res!523522 () Bool)

(assert (=> b!773894 (= res!523522 (= (seekEntryOrOpen!0 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) (Found!7912 j!159)))))

(assert (=> b!773894 (=> (not res!523522) (not e!430799))))

(declare-fun b!773895 () Bool)

(assert (=> b!773895 (= e!430799 call!35157)))

(declare-fun d!101901 () Bool)

(declare-fun res!523521 () Bool)

(assert (=> d!101901 (=> res!523521 e!430801)))

(assert (=> d!101901 (= res!523521 (bvsge j!159 (size!20726 a!3186)))))

(assert (=> d!101901 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!430801)))

(assert (= (and d!101901 (not res!523521)) b!773892))

(assert (= (and b!773892 c!85584) b!773894))

(assert (= (and b!773892 (not c!85584)) b!773893))

(assert (= (and b!773894 res!523522) b!773895))

(assert (= (or b!773895 b!773893) bm!35154))

(assert (=> b!773892 m!718437))

(assert (=> b!773892 m!718437))

(assert (=> b!773892 m!718477))

(declare-fun m!718571 () Bool)

(assert (=> bm!35154 m!718571))

(assert (=> b!773894 m!718437))

(declare-fun m!718573 () Bool)

(assert (=> b!773894 m!718573))

(declare-fun m!718575 () Bool)

(assert (=> b!773894 m!718575))

(assert (=> b!773894 m!718437))

(assert (=> b!773894 m!718449))

(assert (=> b!773730 d!101901))

(declare-fun d!101903 () Bool)

(assert (=> d!101903 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!344682 () Unit!26684)

(declare-fun choose!38 (array!42423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26684)

(assert (=> d!101903 (= lt!344682 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101903 (validMask!0 mask!3328)))

(assert (=> d!101903 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!344682)))

(declare-fun bs!21620 () Bool)

(assert (= bs!21620 d!101903))

(assert (=> bs!21620 m!718429))

(declare-fun m!718577 () Bool)

(assert (=> bs!21620 m!718577))

(assert (=> bs!21620 m!718469))

(assert (=> b!773730 d!101903))

(declare-fun b!773896 () Bool)

(declare-fun c!85586 () Bool)

(declare-fun lt!344683 () (_ BitVec 64))

(assert (=> b!773896 (= c!85586 (= lt!344683 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430804 () SeekEntryResult!7912)

(declare-fun e!430802 () SeekEntryResult!7912)

(assert (=> b!773896 (= e!430804 e!430802)))

(declare-fun d!101905 () Bool)

(declare-fun lt!344684 () SeekEntryResult!7912)

(assert (=> d!101905 (and (or ((_ is Undefined!7912) lt!344684) (not ((_ is Found!7912) lt!344684)) (and (bvsge (index!34016 lt!344684) #b00000000000000000000000000000000) (bvslt (index!34016 lt!344684) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344684) ((_ is Found!7912) lt!344684) (not ((_ is MissingVacant!7912) lt!344684)) (not (= (index!34018 lt!344684) resIntermediateIndex!5)) (and (bvsge (index!34018 lt!344684) #b00000000000000000000000000000000) (bvslt (index!34018 lt!344684) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344684) (ite ((_ is Found!7912) lt!344684) (= (select (arr!20305 a!3186) (index!34016 lt!344684)) (select (arr!20305 a!3186) j!159)) (and ((_ is MissingVacant!7912) lt!344684) (= (index!34018 lt!344684) resIntermediateIndex!5) (= (select (arr!20305 a!3186) (index!34018 lt!344684)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!430803 () SeekEntryResult!7912)

(assert (=> d!101905 (= lt!344684 e!430803)))

(declare-fun c!85585 () Bool)

(assert (=> d!101905 (= c!85585 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101905 (= lt!344683 (select (arr!20305 a!3186) resIntermediateIndex!5))))

(assert (=> d!101905 (validMask!0 mask!3328)))

(assert (=> d!101905 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344684)))

(declare-fun b!773897 () Bool)

(assert (=> b!773897 (= e!430804 (Found!7912 resIntermediateIndex!5))))

(declare-fun b!773898 () Bool)

(assert (=> b!773898 (= e!430803 Undefined!7912)))

(declare-fun b!773899 () Bool)

(assert (=> b!773899 (= e!430803 e!430804)))

(declare-fun c!85587 () Bool)

(assert (=> b!773899 (= c!85587 (= lt!344683 (select (arr!20305 a!3186) j!159)))))

(declare-fun b!773900 () Bool)

(assert (=> b!773900 (= e!430802 (MissingVacant!7912 resIntermediateIndex!5))))

(declare-fun b!773901 () Bool)

(assert (=> b!773901 (= e!430802 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20305 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101905 c!85585) b!773898))

(assert (= (and d!101905 (not c!85585)) b!773899))

(assert (= (and b!773899 c!85587) b!773897))

(assert (= (and b!773899 (not c!85587)) b!773896))

(assert (= (and b!773896 c!85586) b!773900))

(assert (= (and b!773896 (not c!85586)) b!773901))

(declare-fun m!718579 () Bool)

(assert (=> d!101905 m!718579))

(declare-fun m!718581 () Bool)

(assert (=> d!101905 m!718581))

(assert (=> d!101905 m!718457))

(assert (=> d!101905 m!718469))

(declare-fun m!718583 () Bool)

(assert (=> b!773901 m!718583))

(assert (=> b!773901 m!718583))

(assert (=> b!773901 m!718437))

(declare-fun m!718585 () Bool)

(assert (=> b!773901 m!718585))

(assert (=> b!773719 d!101905))

(declare-fun b!773902 () Bool)

(declare-fun e!430809 () SeekEntryResult!7912)

(assert (=> b!773902 (= e!430809 (Intermediate!7912 false index!1321 x!1131))))

(declare-fun b!773903 () Bool)

(declare-fun e!430808 () Bool)

(declare-fun e!430807 () Bool)

(assert (=> b!773903 (= e!430808 e!430807)))

(declare-fun res!523523 () Bool)

(declare-fun lt!344685 () SeekEntryResult!7912)

(assert (=> b!773903 (= res!523523 (and ((_ is Intermediate!7912) lt!344685) (not (undefined!8724 lt!344685)) (bvslt (x!64980 lt!344685) #b01111111111111111111111111111110) (bvsge (x!64980 lt!344685) #b00000000000000000000000000000000) (bvsge (x!64980 lt!344685) x!1131)))))

(assert (=> b!773903 (=> (not res!523523) (not e!430807))))

(declare-fun b!773904 () Bool)

(declare-fun e!430806 () SeekEntryResult!7912)

(assert (=> b!773904 (= e!430806 e!430809)))

(declare-fun c!85588 () Bool)

(declare-fun lt!344686 () (_ BitVec 64))

(assert (=> b!773904 (= c!85588 (or (= lt!344686 lt!344608) (= (bvadd lt!344686 lt!344686) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773905 () Bool)

(assert (=> b!773905 (and (bvsge (index!34017 lt!344685) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344685) (size!20726 lt!344604)))))

(declare-fun e!430805 () Bool)

(assert (=> b!773905 (= e!430805 (= (select (arr!20305 lt!344604) (index!34017 lt!344685)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!773906 () Bool)

(assert (=> b!773906 (= e!430808 (bvsge (x!64980 lt!344685) #b01111111111111111111111111111110))))

(declare-fun b!773907 () Bool)

(assert (=> b!773907 (= e!430806 (Intermediate!7912 true index!1321 x!1131))))

(declare-fun d!101907 () Bool)

(assert (=> d!101907 e!430808))

(declare-fun c!85589 () Bool)

(assert (=> d!101907 (= c!85589 (and ((_ is Intermediate!7912) lt!344685) (undefined!8724 lt!344685)))))

(assert (=> d!101907 (= lt!344685 e!430806)))

(declare-fun c!85590 () Bool)

(assert (=> d!101907 (= c!85590 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101907 (= lt!344686 (select (arr!20305 lt!344604) index!1321))))

(assert (=> d!101907 (validMask!0 mask!3328)))

(assert (=> d!101907 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344608 lt!344604 mask!3328) lt!344685)))

(declare-fun b!773908 () Bool)

(assert (=> b!773908 (= e!430809 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!344608 lt!344604 mask!3328))))

(declare-fun b!773909 () Bool)

(assert (=> b!773909 (and (bvsge (index!34017 lt!344685) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344685) (size!20726 lt!344604)))))

(declare-fun res!523524 () Bool)

(assert (=> b!773909 (= res!523524 (= (select (arr!20305 lt!344604) (index!34017 lt!344685)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!773909 (=> res!523524 e!430805)))

(declare-fun b!773910 () Bool)

(assert (=> b!773910 (and (bvsge (index!34017 lt!344685) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344685) (size!20726 lt!344604)))))

(declare-fun res!523525 () Bool)

(assert (=> b!773910 (= res!523525 (= (select (arr!20305 lt!344604) (index!34017 lt!344685)) lt!344608))))

(assert (=> b!773910 (=> res!523525 e!430805)))

(assert (=> b!773910 (= e!430807 e!430805)))

(assert (= (and d!101907 c!85590) b!773907))

(assert (= (and d!101907 (not c!85590)) b!773904))

(assert (= (and b!773904 c!85588) b!773902))

(assert (= (and b!773904 (not c!85588)) b!773908))

(assert (= (and d!101907 c!85589) b!773906))

(assert (= (and d!101907 (not c!85589)) b!773903))

(assert (= (and b!773903 res!523523) b!773910))

(assert (= (and b!773910 (not res!523525)) b!773909))

(assert (= (and b!773909 (not res!523524)) b!773905))

(declare-fun m!718587 () Bool)

(assert (=> b!773905 m!718587))

(assert (=> b!773910 m!718587))

(declare-fun m!718589 () Bool)

(assert (=> d!101907 m!718589))

(assert (=> d!101907 m!718469))

(assert (=> b!773909 m!718587))

(assert (=> b!773908 m!718443))

(assert (=> b!773908 m!718443))

(declare-fun m!718591 () Bool)

(assert (=> b!773908 m!718591))

(assert (=> b!773720 d!101907))

(declare-fun b!773911 () Bool)

(declare-fun e!430814 () SeekEntryResult!7912)

(assert (=> b!773911 (= e!430814 (Intermediate!7912 false (toIndex!0 lt!344608 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!773912 () Bool)

(declare-fun e!430813 () Bool)

(declare-fun e!430812 () Bool)

(assert (=> b!773912 (= e!430813 e!430812)))

(declare-fun res!523526 () Bool)

(declare-fun lt!344687 () SeekEntryResult!7912)

(assert (=> b!773912 (= res!523526 (and ((_ is Intermediate!7912) lt!344687) (not (undefined!8724 lt!344687)) (bvslt (x!64980 lt!344687) #b01111111111111111111111111111110) (bvsge (x!64980 lt!344687) #b00000000000000000000000000000000) (bvsge (x!64980 lt!344687) #b00000000000000000000000000000000)))))

(assert (=> b!773912 (=> (not res!523526) (not e!430812))))

(declare-fun b!773913 () Bool)

(declare-fun e!430811 () SeekEntryResult!7912)

(assert (=> b!773913 (= e!430811 e!430814)))

(declare-fun c!85591 () Bool)

(declare-fun lt!344688 () (_ BitVec 64))

(assert (=> b!773913 (= c!85591 (or (= lt!344688 lt!344608) (= (bvadd lt!344688 lt!344688) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773914 () Bool)

(assert (=> b!773914 (and (bvsge (index!34017 lt!344687) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344687) (size!20726 lt!344604)))))

(declare-fun e!430810 () Bool)

(assert (=> b!773914 (= e!430810 (= (select (arr!20305 lt!344604) (index!34017 lt!344687)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!773915 () Bool)

(assert (=> b!773915 (= e!430813 (bvsge (x!64980 lt!344687) #b01111111111111111111111111111110))))

(declare-fun b!773916 () Bool)

(assert (=> b!773916 (= e!430811 (Intermediate!7912 true (toIndex!0 lt!344608 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!101909 () Bool)

(assert (=> d!101909 e!430813))

(declare-fun c!85592 () Bool)

(assert (=> d!101909 (= c!85592 (and ((_ is Intermediate!7912) lt!344687) (undefined!8724 lt!344687)))))

(assert (=> d!101909 (= lt!344687 e!430811)))

(declare-fun c!85593 () Bool)

(assert (=> d!101909 (= c!85593 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101909 (= lt!344688 (select (arr!20305 lt!344604) (toIndex!0 lt!344608 mask!3328)))))

(assert (=> d!101909 (validMask!0 mask!3328)))

(assert (=> d!101909 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344608 mask!3328) lt!344608 lt!344604 mask!3328) lt!344687)))

(declare-fun b!773917 () Bool)

(assert (=> b!773917 (= e!430814 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!344608 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!344608 lt!344604 mask!3328))))

(declare-fun b!773918 () Bool)

(assert (=> b!773918 (and (bvsge (index!34017 lt!344687) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344687) (size!20726 lt!344604)))))

(declare-fun res!523527 () Bool)

(assert (=> b!773918 (= res!523527 (= (select (arr!20305 lt!344604) (index!34017 lt!344687)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!773918 (=> res!523527 e!430810)))

(declare-fun b!773919 () Bool)

(assert (=> b!773919 (and (bvsge (index!34017 lt!344687) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344687) (size!20726 lt!344604)))))

(declare-fun res!523528 () Bool)

(assert (=> b!773919 (= res!523528 (= (select (arr!20305 lt!344604) (index!34017 lt!344687)) lt!344608))))

(assert (=> b!773919 (=> res!523528 e!430810)))

(assert (=> b!773919 (= e!430812 e!430810)))

(assert (= (and d!101909 c!85593) b!773916))

(assert (= (and d!101909 (not c!85593)) b!773913))

(assert (= (and b!773913 c!85591) b!773911))

(assert (= (and b!773913 (not c!85591)) b!773917))

(assert (= (and d!101909 c!85592) b!773915))

(assert (= (and d!101909 (not c!85592)) b!773912))

(assert (= (and b!773912 res!523526) b!773919))

(assert (= (and b!773919 (not res!523528)) b!773918))

(assert (= (and b!773918 (not res!523527)) b!773914))

(declare-fun m!718593 () Bool)

(assert (=> b!773914 m!718593))

(assert (=> b!773919 m!718593))

(assert (=> d!101909 m!718459))

(declare-fun m!718595 () Bool)

(assert (=> d!101909 m!718595))

(assert (=> d!101909 m!718469))

(assert (=> b!773918 m!718593))

(assert (=> b!773917 m!718459))

(declare-fun m!718597 () Bool)

(assert (=> b!773917 m!718597))

(assert (=> b!773917 m!718597))

(declare-fun m!718599 () Bool)

(assert (=> b!773917 m!718599))

(assert (=> b!773720 d!101909))

(declare-fun d!101911 () Bool)

(declare-fun lt!344698 () (_ BitVec 32))

(declare-fun lt!344697 () (_ BitVec 32))

(assert (=> d!101911 (= lt!344698 (bvmul (bvxor lt!344697 (bvlshr lt!344697 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101911 (= lt!344697 ((_ extract 31 0) (bvand (bvxor lt!344608 (bvlshr lt!344608 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101911 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!523529 (let ((h!15463 ((_ extract 31 0) (bvand (bvxor lt!344608 (bvlshr lt!344608 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64986 (bvmul (bvxor h!15463 (bvlshr h!15463 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64986 (bvlshr x!64986 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!523529 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!523529 #b00000000000000000000000000000000))))))

(assert (=> d!101911 (= (toIndex!0 lt!344608 mask!3328) (bvand (bvxor lt!344698 (bvlshr lt!344698 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!773720 d!101911))

(declare-fun d!101915 () Bool)

(assert (=> d!101915 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67044 d!101915))

(declare-fun d!101919 () Bool)

(assert (=> d!101919 (= (array_inv!16079 a!3186) (bvsge (size!20726 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67044 d!101919))

(declare-fun b!773947 () Bool)

(declare-fun e!430834 () SeekEntryResult!7912)

(assert (=> b!773947 (= e!430834 (Intermediate!7912 false lt!344602 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!773948 () Bool)

(declare-fun e!430833 () Bool)

(declare-fun e!430832 () Bool)

(assert (=> b!773948 (= e!430833 e!430832)))

(declare-fun res!523539 () Bool)

(declare-fun lt!344701 () SeekEntryResult!7912)

(assert (=> b!773948 (= res!523539 (and ((_ is Intermediate!7912) lt!344701) (not (undefined!8724 lt!344701)) (bvslt (x!64980 lt!344701) #b01111111111111111111111111111110) (bvsge (x!64980 lt!344701) #b00000000000000000000000000000000) (bvsge (x!64980 lt!344701) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!773948 (=> (not res!523539) (not e!430832))))

(declare-fun b!773949 () Bool)

(declare-fun e!430831 () SeekEntryResult!7912)

(assert (=> b!773949 (= e!430831 e!430834)))

(declare-fun c!85603 () Bool)

(declare-fun lt!344702 () (_ BitVec 64))

(assert (=> b!773949 (= c!85603 (or (= lt!344702 lt!344608) (= (bvadd lt!344702 lt!344702) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773950 () Bool)

(assert (=> b!773950 (and (bvsge (index!34017 lt!344701) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344701) (size!20726 lt!344604)))))

(declare-fun e!430830 () Bool)

(assert (=> b!773950 (= e!430830 (= (select (arr!20305 lt!344604) (index!34017 lt!344701)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!773951 () Bool)

(assert (=> b!773951 (= e!430833 (bvsge (x!64980 lt!344701) #b01111111111111111111111111111110))))

(declare-fun b!773952 () Bool)

(assert (=> b!773952 (= e!430831 (Intermediate!7912 true lt!344602 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun d!101921 () Bool)

(assert (=> d!101921 e!430833))

(declare-fun c!85604 () Bool)

(assert (=> d!101921 (= c!85604 (and ((_ is Intermediate!7912) lt!344701) (undefined!8724 lt!344701)))))

(assert (=> d!101921 (= lt!344701 e!430831)))

(declare-fun c!85605 () Bool)

(assert (=> d!101921 (= c!85605 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101921 (= lt!344702 (select (arr!20305 lt!344604) lt!344602))))

(assert (=> d!101921 (validMask!0 mask!3328)))

(assert (=> d!101921 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344602 lt!344608 lt!344604 mask!3328) lt!344701)))

(declare-fun b!773953 () Bool)

(assert (=> b!773953 (= e!430834 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!344602 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) lt!344608 lt!344604 mask!3328))))

(declare-fun b!773954 () Bool)

(assert (=> b!773954 (and (bvsge (index!34017 lt!344701) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344701) (size!20726 lt!344604)))))

(declare-fun res!523540 () Bool)

(assert (=> b!773954 (= res!523540 (= (select (arr!20305 lt!344604) (index!34017 lt!344701)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!773954 (=> res!523540 e!430830)))

(declare-fun b!773955 () Bool)

(assert (=> b!773955 (and (bvsge (index!34017 lt!344701) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344701) (size!20726 lt!344604)))))

(declare-fun res!523541 () Bool)

(assert (=> b!773955 (= res!523541 (= (select (arr!20305 lt!344604) (index!34017 lt!344701)) lt!344608))))

(assert (=> b!773955 (=> res!523541 e!430830)))

(assert (=> b!773955 (= e!430832 e!430830)))

(assert (= (and d!101921 c!85605) b!773952))

(assert (= (and d!101921 (not c!85605)) b!773949))

(assert (= (and b!773949 c!85603) b!773947))

(assert (= (and b!773949 (not c!85603)) b!773953))

(assert (= (and d!101921 c!85604) b!773951))

(assert (= (and d!101921 (not c!85604)) b!773948))

(assert (= (and b!773948 res!523539) b!773955))

(assert (= (and b!773955 (not res!523541)) b!773954))

(assert (= (and b!773954 (not res!523540)) b!773950))

(declare-fun m!718609 () Bool)

(assert (=> b!773950 m!718609))

(assert (=> b!773955 m!718609))

(declare-fun m!718611 () Bool)

(assert (=> d!101921 m!718611))

(assert (=> d!101921 m!718469))

(assert (=> b!773954 m!718609))

(assert (=> b!773953 m!718551))

(assert (=> b!773953 m!718551))

(declare-fun m!718613 () Bool)

(assert (=> b!773953 m!718613))

(assert (=> b!773731 d!101921))

(declare-fun b!774007 () Bool)

(declare-fun e!430863 () SeekEntryResult!7912)

(declare-fun e!430864 () SeekEntryResult!7912)

(assert (=> b!774007 (= e!430863 e!430864)))

(declare-fun lt!344721 () (_ BitVec 64))

(declare-fun lt!344723 () SeekEntryResult!7912)

(assert (=> b!774007 (= lt!344721 (select (arr!20305 a!3186) (index!34017 lt!344723)))))

(declare-fun c!85627 () Bool)

(assert (=> b!774007 (= c!85627 (= lt!344721 k0!2102))))

(declare-fun b!774008 () Bool)

(assert (=> b!774008 (= e!430864 (Found!7912 (index!34017 lt!344723)))))

(declare-fun b!774009 () Bool)

(declare-fun e!430862 () SeekEntryResult!7912)

(assert (=> b!774009 (= e!430862 (MissingZero!7912 (index!34017 lt!344723)))))

(declare-fun b!774010 () Bool)

(declare-fun c!85628 () Bool)

(assert (=> b!774010 (= c!85628 (= lt!344721 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774010 (= e!430864 e!430862)))

(declare-fun d!101923 () Bool)

(declare-fun lt!344722 () SeekEntryResult!7912)

(assert (=> d!101923 (and (or ((_ is Undefined!7912) lt!344722) (not ((_ is Found!7912) lt!344722)) (and (bvsge (index!34016 lt!344722) #b00000000000000000000000000000000) (bvslt (index!34016 lt!344722) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344722) ((_ is Found!7912) lt!344722) (not ((_ is MissingZero!7912) lt!344722)) (and (bvsge (index!34015 lt!344722) #b00000000000000000000000000000000) (bvslt (index!34015 lt!344722) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344722) ((_ is Found!7912) lt!344722) ((_ is MissingZero!7912) lt!344722) (not ((_ is MissingVacant!7912) lt!344722)) (and (bvsge (index!34018 lt!344722) #b00000000000000000000000000000000) (bvslt (index!34018 lt!344722) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344722) (ite ((_ is Found!7912) lt!344722) (= (select (arr!20305 a!3186) (index!34016 lt!344722)) k0!2102) (ite ((_ is MissingZero!7912) lt!344722) (= (select (arr!20305 a!3186) (index!34015 lt!344722)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7912) lt!344722) (= (select (arr!20305 a!3186) (index!34018 lt!344722)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101923 (= lt!344722 e!430863)))

(declare-fun c!85629 () Bool)

(assert (=> d!101923 (= c!85629 (and ((_ is Intermediate!7912) lt!344723) (undefined!8724 lt!344723)))))

(assert (=> d!101923 (= lt!344723 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!101923 (validMask!0 mask!3328)))

(assert (=> d!101923 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!344722)))

(declare-fun b!774011 () Bool)

(assert (=> b!774011 (= e!430862 (seekKeyOrZeroReturnVacant!0 (x!64980 lt!344723) (index!34017 lt!344723) (index!34017 lt!344723) k0!2102 a!3186 mask!3328))))

(declare-fun b!774012 () Bool)

(assert (=> b!774012 (= e!430863 Undefined!7912)))

(assert (= (and d!101923 c!85629) b!774012))

(assert (= (and d!101923 (not c!85629)) b!774007))

(assert (= (and b!774007 c!85627) b!774008))

(assert (= (and b!774007 (not c!85627)) b!774010))

(assert (= (and b!774010 c!85628) b!774009))

(assert (= (and b!774010 (not c!85628)) b!774011))

(declare-fun m!718623 () Bool)

(assert (=> b!774007 m!718623))

(declare-fun m!718625 () Bool)

(assert (=> d!101923 m!718625))

(declare-fun m!718627 () Bool)

(assert (=> d!101923 m!718627))

(declare-fun m!718629 () Bool)

(assert (=> d!101923 m!718629))

(declare-fun m!718631 () Bool)

(assert (=> d!101923 m!718631))

(declare-fun m!718633 () Bool)

(assert (=> d!101923 m!718633))

(assert (=> d!101923 m!718469))

(assert (=> d!101923 m!718631))

(declare-fun m!718635 () Bool)

(assert (=> b!774011 m!718635))

(assert (=> b!773716 d!101923))

(declare-fun b!774013 () Bool)

(declare-fun e!430869 () SeekEntryResult!7912)

(assert (=> b!774013 (= e!430869 (Intermediate!7912 false (toIndex!0 (select (arr!20305 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!774014 () Bool)

(declare-fun e!430868 () Bool)

(declare-fun e!430867 () Bool)

(assert (=> b!774014 (= e!430868 e!430867)))

(declare-fun res!523552 () Bool)

(declare-fun lt!344724 () SeekEntryResult!7912)

(assert (=> b!774014 (= res!523552 (and ((_ is Intermediate!7912) lt!344724) (not (undefined!8724 lt!344724)) (bvslt (x!64980 lt!344724) #b01111111111111111111111111111110) (bvsge (x!64980 lt!344724) #b00000000000000000000000000000000) (bvsge (x!64980 lt!344724) #b00000000000000000000000000000000)))))

(assert (=> b!774014 (=> (not res!523552) (not e!430867))))

(declare-fun b!774015 () Bool)

(declare-fun e!430866 () SeekEntryResult!7912)

(assert (=> b!774015 (= e!430866 e!430869)))

(declare-fun c!85630 () Bool)

(declare-fun lt!344725 () (_ BitVec 64))

(assert (=> b!774015 (= c!85630 (or (= lt!344725 (select (arr!20305 a!3186) j!159)) (= (bvadd lt!344725 lt!344725) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774016 () Bool)

(assert (=> b!774016 (and (bvsge (index!34017 lt!344724) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344724) (size!20726 a!3186)))))

(declare-fun e!430865 () Bool)

(assert (=> b!774016 (= e!430865 (= (select (arr!20305 a!3186) (index!34017 lt!344724)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!774017 () Bool)

(assert (=> b!774017 (= e!430868 (bvsge (x!64980 lt!344724) #b01111111111111111111111111111110))))

(declare-fun b!774018 () Bool)

(assert (=> b!774018 (= e!430866 (Intermediate!7912 true (toIndex!0 (select (arr!20305 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!101927 () Bool)

(assert (=> d!101927 e!430868))

(declare-fun c!85631 () Bool)

(assert (=> d!101927 (= c!85631 (and ((_ is Intermediate!7912) lt!344724) (undefined!8724 lt!344724)))))

(assert (=> d!101927 (= lt!344724 e!430866)))

(declare-fun c!85632 () Bool)

(assert (=> d!101927 (= c!85632 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101927 (= lt!344725 (select (arr!20305 a!3186) (toIndex!0 (select (arr!20305 a!3186) j!159) mask!3328)))))

(assert (=> d!101927 (validMask!0 mask!3328)))

(assert (=> d!101927 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20305 a!3186) j!159) mask!3328) (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344724)))

(declare-fun b!774019 () Bool)

(assert (=> b!774019 (= e!430869 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20305 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20305 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774020 () Bool)

(assert (=> b!774020 (and (bvsge (index!34017 lt!344724) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344724) (size!20726 a!3186)))))

(declare-fun res!523553 () Bool)

(assert (=> b!774020 (= res!523553 (= (select (arr!20305 a!3186) (index!34017 lt!344724)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774020 (=> res!523553 e!430865)))

(declare-fun b!774021 () Bool)

(assert (=> b!774021 (and (bvsge (index!34017 lt!344724) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344724) (size!20726 a!3186)))))

(declare-fun res!523554 () Bool)

(assert (=> b!774021 (= res!523554 (= (select (arr!20305 a!3186) (index!34017 lt!344724)) (select (arr!20305 a!3186) j!159)))))

(assert (=> b!774021 (=> res!523554 e!430865)))

(assert (=> b!774021 (= e!430867 e!430865)))

(assert (= (and d!101927 c!85632) b!774018))

(assert (= (and d!101927 (not c!85632)) b!774015))

(assert (= (and b!774015 c!85630) b!774013))

(assert (= (and b!774015 (not c!85630)) b!774019))

(assert (= (and d!101927 c!85631) b!774017))

(assert (= (and d!101927 (not c!85631)) b!774014))

(assert (= (and b!774014 res!523552) b!774021))

(assert (= (and b!774021 (not res!523554)) b!774020))

(assert (= (and b!774020 (not res!523553)) b!774016))

(declare-fun m!718637 () Bool)

(assert (=> b!774016 m!718637))

(assert (=> b!774021 m!718637))

(assert (=> d!101927 m!718439))

(declare-fun m!718639 () Bool)

(assert (=> d!101927 m!718639))

(assert (=> d!101927 m!718469))

(assert (=> b!774020 m!718637))

(assert (=> b!774019 m!718439))

(declare-fun m!718641 () Bool)

(assert (=> b!774019 m!718641))

(assert (=> b!774019 m!718641))

(assert (=> b!774019 m!718437))

(declare-fun m!718643 () Bool)

(assert (=> b!774019 m!718643))

(assert (=> b!773737 d!101927))

(declare-fun d!101929 () Bool)

(declare-fun lt!344727 () (_ BitVec 32))

(declare-fun lt!344726 () (_ BitVec 32))

(assert (=> d!101929 (= lt!344727 (bvmul (bvxor lt!344726 (bvlshr lt!344726 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101929 (= lt!344726 ((_ extract 31 0) (bvand (bvxor (select (arr!20305 a!3186) j!159) (bvlshr (select (arr!20305 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101929 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!523529 (let ((h!15463 ((_ extract 31 0) (bvand (bvxor (select (arr!20305 a!3186) j!159) (bvlshr (select (arr!20305 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64986 (bvmul (bvxor h!15463 (bvlshr h!15463 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64986 (bvlshr x!64986 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!523529 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!523529 #b00000000000000000000000000000000))))))

(assert (=> d!101929 (= (toIndex!0 (select (arr!20305 a!3186) j!159) mask!3328) (bvand (bvxor lt!344727 (bvlshr lt!344727 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!773737 d!101929))

(declare-fun b!774022 () Bool)

(declare-fun e!430874 () SeekEntryResult!7912)

(assert (=> b!774022 (= e!430874 (Intermediate!7912 false index!1321 x!1131))))

(declare-fun b!774023 () Bool)

(declare-fun e!430873 () Bool)

(declare-fun e!430872 () Bool)

(assert (=> b!774023 (= e!430873 e!430872)))

(declare-fun res!523555 () Bool)

(declare-fun lt!344728 () SeekEntryResult!7912)

(assert (=> b!774023 (= res!523555 (and ((_ is Intermediate!7912) lt!344728) (not (undefined!8724 lt!344728)) (bvslt (x!64980 lt!344728) #b01111111111111111111111111111110) (bvsge (x!64980 lt!344728) #b00000000000000000000000000000000) (bvsge (x!64980 lt!344728) x!1131)))))

(assert (=> b!774023 (=> (not res!523555) (not e!430872))))

(declare-fun b!774024 () Bool)

(declare-fun e!430871 () SeekEntryResult!7912)

(assert (=> b!774024 (= e!430871 e!430874)))

(declare-fun lt!344729 () (_ BitVec 64))

(declare-fun c!85633 () Bool)

(assert (=> b!774024 (= c!85633 (or (= lt!344729 (select (arr!20305 a!3186) j!159)) (= (bvadd lt!344729 lt!344729) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774025 () Bool)

(assert (=> b!774025 (and (bvsge (index!34017 lt!344728) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344728) (size!20726 a!3186)))))

(declare-fun e!430870 () Bool)

(assert (=> b!774025 (= e!430870 (= (select (arr!20305 a!3186) (index!34017 lt!344728)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!774026 () Bool)

(assert (=> b!774026 (= e!430873 (bvsge (x!64980 lt!344728) #b01111111111111111111111111111110))))

(declare-fun b!774027 () Bool)

(assert (=> b!774027 (= e!430871 (Intermediate!7912 true index!1321 x!1131))))

(declare-fun d!101931 () Bool)

(assert (=> d!101931 e!430873))

(declare-fun c!85634 () Bool)

(assert (=> d!101931 (= c!85634 (and ((_ is Intermediate!7912) lt!344728) (undefined!8724 lt!344728)))))

(assert (=> d!101931 (= lt!344728 e!430871)))

(declare-fun c!85635 () Bool)

(assert (=> d!101931 (= c!85635 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101931 (= lt!344729 (select (arr!20305 a!3186) index!1321))))

(assert (=> d!101931 (validMask!0 mask!3328)))

(assert (=> d!101931 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344728)))

(declare-fun b!774028 () Bool)

(assert (=> b!774028 (= e!430874 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20305 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774029 () Bool)

(assert (=> b!774029 (and (bvsge (index!34017 lt!344728) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344728) (size!20726 a!3186)))))

(declare-fun res!523556 () Bool)

(assert (=> b!774029 (= res!523556 (= (select (arr!20305 a!3186) (index!34017 lt!344728)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774029 (=> res!523556 e!430870)))

(declare-fun b!774030 () Bool)

(assert (=> b!774030 (and (bvsge (index!34017 lt!344728) #b00000000000000000000000000000000) (bvslt (index!34017 lt!344728) (size!20726 a!3186)))))

(declare-fun res!523557 () Bool)

(assert (=> b!774030 (= res!523557 (= (select (arr!20305 a!3186) (index!34017 lt!344728)) (select (arr!20305 a!3186) j!159)))))

(assert (=> b!774030 (=> res!523557 e!430870)))

(assert (=> b!774030 (= e!430872 e!430870)))

(assert (= (and d!101931 c!85635) b!774027))

(assert (= (and d!101931 (not c!85635)) b!774024))

(assert (= (and b!774024 c!85633) b!774022))

(assert (= (and b!774024 (not c!85633)) b!774028))

(assert (= (and d!101931 c!85634) b!774026))

(assert (= (and d!101931 (not c!85634)) b!774023))

(assert (= (and b!774023 res!523555) b!774030))

(assert (= (and b!774030 (not res!523557)) b!774029))

(assert (= (and b!774029 (not res!523556)) b!774025))

(declare-fun m!718645 () Bool)

(assert (=> b!774025 m!718645))

(assert (=> b!774030 m!718645))

(assert (=> d!101931 m!718541))

(assert (=> d!101931 m!718469))

(assert (=> b!774029 m!718645))

(assert (=> b!774028 m!718443))

(assert (=> b!774028 m!718443))

(assert (=> b!774028 m!718437))

(declare-fun m!718647 () Bool)

(assert (=> b!774028 m!718647))

(assert (=> b!773738 d!101931))

(declare-fun b!774031 () Bool)

(declare-fun e!430876 () SeekEntryResult!7912)

(declare-fun e!430877 () SeekEntryResult!7912)

(assert (=> b!774031 (= e!430876 e!430877)))

(declare-fun lt!344730 () (_ BitVec 64))

(declare-fun lt!344732 () SeekEntryResult!7912)

(assert (=> b!774031 (= lt!344730 (select (arr!20305 a!3186) (index!34017 lt!344732)))))

(declare-fun c!85636 () Bool)

(assert (=> b!774031 (= c!85636 (= lt!344730 (select (arr!20305 a!3186) j!159)))))

(declare-fun b!774032 () Bool)

(assert (=> b!774032 (= e!430877 (Found!7912 (index!34017 lt!344732)))))

(declare-fun b!774033 () Bool)

(declare-fun e!430875 () SeekEntryResult!7912)

(assert (=> b!774033 (= e!430875 (MissingZero!7912 (index!34017 lt!344732)))))

(declare-fun b!774034 () Bool)

(declare-fun c!85637 () Bool)

(assert (=> b!774034 (= c!85637 (= lt!344730 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774034 (= e!430877 e!430875)))

(declare-fun d!101933 () Bool)

(declare-fun lt!344731 () SeekEntryResult!7912)

(assert (=> d!101933 (and (or ((_ is Undefined!7912) lt!344731) (not ((_ is Found!7912) lt!344731)) (and (bvsge (index!34016 lt!344731) #b00000000000000000000000000000000) (bvslt (index!34016 lt!344731) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344731) ((_ is Found!7912) lt!344731) (not ((_ is MissingZero!7912) lt!344731)) (and (bvsge (index!34015 lt!344731) #b00000000000000000000000000000000) (bvslt (index!34015 lt!344731) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344731) ((_ is Found!7912) lt!344731) ((_ is MissingZero!7912) lt!344731) (not ((_ is MissingVacant!7912) lt!344731)) (and (bvsge (index!34018 lt!344731) #b00000000000000000000000000000000) (bvslt (index!34018 lt!344731) (size!20726 a!3186)))) (or ((_ is Undefined!7912) lt!344731) (ite ((_ is Found!7912) lt!344731) (= (select (arr!20305 a!3186) (index!34016 lt!344731)) (select (arr!20305 a!3186) j!159)) (ite ((_ is MissingZero!7912) lt!344731) (= (select (arr!20305 a!3186) (index!34015 lt!344731)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7912) lt!344731) (= (select (arr!20305 a!3186) (index!34018 lt!344731)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101933 (= lt!344731 e!430876)))

(declare-fun c!85638 () Bool)

(assert (=> d!101933 (= c!85638 (and ((_ is Intermediate!7912) lt!344732) (undefined!8724 lt!344732)))))

(assert (=> d!101933 (= lt!344732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20305 a!3186) j!159) mask!3328) (select (arr!20305 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101933 (validMask!0 mask!3328)))

(assert (=> d!101933 (= (seekEntryOrOpen!0 (select (arr!20305 a!3186) j!159) a!3186 mask!3328) lt!344731)))

(declare-fun b!774035 () Bool)

(assert (=> b!774035 (= e!430875 (seekKeyOrZeroReturnVacant!0 (x!64980 lt!344732) (index!34017 lt!344732) (index!34017 lt!344732) (select (arr!20305 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774036 () Bool)

(assert (=> b!774036 (= e!430876 Undefined!7912)))

(assert (= (and d!101933 c!85638) b!774036))

(assert (= (and d!101933 (not c!85638)) b!774031))

(assert (= (and b!774031 c!85636) b!774032))

(assert (= (and b!774031 (not c!85636)) b!774034))

(assert (= (and b!774034 c!85637) b!774033))

(assert (= (and b!774034 (not c!85637)) b!774035))

(declare-fun m!718649 () Bool)

(assert (=> b!774031 m!718649))

(declare-fun m!718651 () Bool)

(assert (=> d!101933 m!718651))

(declare-fun m!718653 () Bool)

(assert (=> d!101933 m!718653))

(declare-fun m!718655 () Bool)

(assert (=> d!101933 m!718655))

(assert (=> d!101933 m!718439))

(assert (=> d!101933 m!718437))

(assert (=> d!101933 m!718441))

(assert (=> d!101933 m!718469))

(assert (=> d!101933 m!718437))

(assert (=> d!101933 m!718439))

(assert (=> b!774035 m!718437))

(declare-fun m!718657 () Bool)

(assert (=> b!774035 m!718657))

(assert (=> b!773727 d!101933))

(declare-fun d!101935 () Bool)

(assert (=> d!101935 (= (validKeyInArray!0 (select (arr!20305 a!3186) j!159)) (and (not (= (select (arr!20305 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20305 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!773717 d!101935))

(declare-fun b!774037 () Bool)

(declare-fun e!430880 () Bool)

(declare-fun e!430879 () Bool)

(assert (=> b!774037 (= e!430880 e!430879)))

(declare-fun c!85639 () Bool)

(assert (=> b!774037 (= c!85639 (validKeyInArray!0 (select (arr!20305 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!774038 () Bool)

(declare-fun call!35158 () Bool)

(assert (=> b!774038 (= e!430879 call!35158)))

(declare-fun bm!35155 () Bool)

(assert (=> bm!35155 (= call!35158 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!774039 () Bool)

(declare-fun e!430878 () Bool)

(assert (=> b!774039 (= e!430879 e!430878)))

(declare-fun lt!344733 () (_ BitVec 64))

(assert (=> b!774039 (= lt!344733 (select (arr!20305 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!344735 () Unit!26684)

(assert (=> b!774039 (= lt!344735 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!344733 #b00000000000000000000000000000000))))

(assert (=> b!774039 (arrayContainsKey!0 a!3186 lt!344733 #b00000000000000000000000000000000)))

(declare-fun lt!344734 () Unit!26684)

(assert (=> b!774039 (= lt!344734 lt!344735)))

(declare-fun res!523559 () Bool)

(assert (=> b!774039 (= res!523559 (= (seekEntryOrOpen!0 (select (arr!20305 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7912 #b00000000000000000000000000000000)))))

(assert (=> b!774039 (=> (not res!523559) (not e!430878))))

(declare-fun b!774040 () Bool)

(assert (=> b!774040 (= e!430878 call!35158)))

(declare-fun d!101937 () Bool)

(declare-fun res!523558 () Bool)

(assert (=> d!101937 (=> res!523558 e!430880)))

(assert (=> d!101937 (= res!523558 (bvsge #b00000000000000000000000000000000 (size!20726 a!3186)))))

(assert (=> d!101937 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!430880)))

(assert (= (and d!101937 (not res!523558)) b!774037))

(assert (= (and b!774037 c!85639) b!774039))

(assert (= (and b!774037 (not c!85639)) b!774038))

(assert (= (and b!774039 res!523559) b!774040))

(assert (= (or b!774040 b!774038) bm!35155))

(assert (=> b!774037 m!718555))

(assert (=> b!774037 m!718555))

(assert (=> b!774037 m!718561))

(declare-fun m!718659 () Bool)

(assert (=> bm!35155 m!718659))

(assert (=> b!774039 m!718555))

(declare-fun m!718661 () Bool)

(assert (=> b!774039 m!718661))

(declare-fun m!718663 () Bool)

(assert (=> b!774039 m!718663))

(assert (=> b!774039 m!718555))

(declare-fun m!718665 () Bool)

(assert (=> b!774039 m!718665))

(assert (=> b!773739 d!101937))

(check-sat (not bm!35154) (not d!101921) (not bm!35155) (not b!774019) (not d!101903) (not d!101887) (not b!773835) (not d!101893) (not d!101909) (not d!101931) (not d!101933) (not b!773848) (not b!773894) (not b!773881) (not b!773908) (not b!773856) (not d!101905) (not b!773892) (not b!773901) (not b!773953) (not b!774011) (not b!774028) (not b!773850) (not d!101897) (not b!774037) (not b!773829) (not bm!35151) (not d!101885) (not d!101923) (not b!773849) (not b!774035) (not b!773917) (not b!774039) (not d!101907) (not d!101927))
(check-sat)
