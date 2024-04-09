; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65776 () Bool)

(assert start!65776)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41902 0))(
  ( (array!41903 (arr!20061 (Array (_ BitVec 32) (_ BitVec 64))) (size!20482 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41902)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!421293 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7668 0))(
  ( (MissingZero!7668 (index!33039 (_ BitVec 32))) (Found!7668 (index!33040 (_ BitVec 32))) (Intermediate!7668 (undefined!8480 Bool) (index!33041 (_ BitVec 32)) (x!63971 (_ BitVec 32))) (Undefined!7668) (MissingVacant!7668 (index!33042 (_ BitVec 32))) )
))
(declare-fun lt!336302 () SeekEntryResult!7668)

(declare-fun b!755434 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41902 (_ BitVec 32)) SeekEntryResult!7668)

(assert (=> b!755434 (= e!421293 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20061 a!3186) j!159) a!3186 mask!3328) lt!336302))))

(declare-fun e!421296 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!755435 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!755435 (= e!421296 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20061 a!3186) j!159) a!3186 mask!3328) (Found!7668 j!159)))))

(declare-fun b!755436 () Bool)

(declare-datatypes ((Unit!26074 0))(
  ( (Unit!26075) )
))
(declare-fun e!421299 () Unit!26074)

(declare-fun Unit!26076 () Unit!26074)

(assert (=> b!755436 (= e!421299 Unit!26076)))

(assert (=> b!755436 false))

(declare-fun b!755437 () Bool)

(declare-fun res!510745 () Bool)

(declare-fun e!421302 () Bool)

(assert (=> b!755437 (=> (not res!510745) (not e!421302))))

(assert (=> b!755437 (= res!510745 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20482 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20482 a!3186))))))

(declare-fun b!755438 () Bool)

(declare-fun res!510744 () Bool)

(assert (=> b!755438 (=> (not res!510744) (not e!421302))))

(declare-datatypes ((List!14116 0))(
  ( (Nil!14113) (Cons!14112 (h!15184 (_ BitVec 64)) (t!20439 List!14116)) )
))
(declare-fun arrayNoDuplicates!0 (array!41902 (_ BitVec 32) List!14116) Bool)

(assert (=> b!755438 (= res!510744 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14113))))

(declare-fun b!755439 () Bool)

(declare-fun res!510747 () Bool)

(declare-fun e!421291 () Bool)

(assert (=> b!755439 (=> (not res!510747) (not e!421291))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755439 (= res!510747 (and (= (size!20482 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20482 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20482 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!755440 () Bool)

(declare-fun Unit!26077 () Unit!26074)

(assert (=> b!755440 (= e!421299 Unit!26077)))

(declare-fun b!755441 () Bool)

(declare-fun res!510741 () Bool)

(declare-fun e!421294 () Bool)

(assert (=> b!755441 (=> (not res!510741) (not e!421294))))

(assert (=> b!755441 (= res!510741 e!421296)))

(declare-fun c!82733 () Bool)

(assert (=> b!755441 (= c!82733 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755442 () Bool)

(declare-fun e!421300 () Bool)

(declare-fun e!421295 () Bool)

(assert (=> b!755442 (= e!421300 e!421295)))

(declare-fun res!510732 () Bool)

(assert (=> b!755442 (=> res!510732 e!421295)))

(declare-fun lt!336300 () SeekEntryResult!7668)

(assert (=> b!755442 (= res!510732 (not (= lt!336300 lt!336302)))))

(assert (=> b!755442 (= lt!336300 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20061 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755443 () Bool)

(declare-fun res!510739 () Bool)

(assert (=> b!755443 (=> (not res!510739) (not e!421291))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755443 (= res!510739 (validKeyInArray!0 k!2102))))

(declare-fun b!755444 () Bool)

(assert (=> b!755444 (= e!421302 e!421294)))

(declare-fun res!510743 () Bool)

(assert (=> b!755444 (=> (not res!510743) (not e!421294))))

(declare-fun lt!336295 () SeekEntryResult!7668)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41902 (_ BitVec 32)) SeekEntryResult!7668)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755444 (= res!510743 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20061 a!3186) j!159) mask!3328) (select (arr!20061 a!3186) j!159) a!3186 mask!3328) lt!336295))))

(assert (=> b!755444 (= lt!336295 (Intermediate!7668 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!510738 () Bool)

(assert (=> start!65776 (=> (not res!510738) (not e!421291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65776 (= res!510738 (validMask!0 mask!3328))))

(assert (=> start!65776 e!421291))

(assert (=> start!65776 true))

(declare-fun array_inv!15835 (array!41902) Bool)

(assert (=> start!65776 (array_inv!15835 a!3186)))

(declare-fun b!755445 () Bool)

(declare-fun e!421301 () Bool)

(assert (=> b!755445 (= e!421301 (not e!421300))))

(declare-fun res!510733 () Bool)

(assert (=> b!755445 (=> res!510733 e!421300)))

(declare-fun lt!336297 () SeekEntryResult!7668)

(assert (=> b!755445 (= res!510733 (or (not (is-Intermediate!7668 lt!336297)) (bvslt x!1131 (x!63971 lt!336297)) (not (= x!1131 (x!63971 lt!336297))) (not (= index!1321 (index!33041 lt!336297)))))))

(assert (=> b!755445 e!421293))

(declare-fun res!510736 () Bool)

(assert (=> b!755445 (=> (not res!510736) (not e!421293))))

(declare-fun lt!336301 () SeekEntryResult!7668)

(assert (=> b!755445 (= res!510736 (= lt!336301 lt!336302))))

(assert (=> b!755445 (= lt!336302 (Found!7668 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41902 (_ BitVec 32)) SeekEntryResult!7668)

(assert (=> b!755445 (= lt!336301 (seekEntryOrOpen!0 (select (arr!20061 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41902 (_ BitVec 32)) Bool)

(assert (=> b!755445 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336294 () Unit!26074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41902 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26074)

(assert (=> b!755445 (= lt!336294 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755446 () Bool)

(declare-fun e!421297 () Bool)

(assert (=> b!755446 (= e!421295 e!421297)))

(declare-fun res!510734 () Bool)

(assert (=> b!755446 (=> res!510734 e!421297)))

(declare-fun lt!336299 () (_ BitVec 64))

(declare-fun lt!336293 () (_ BitVec 64))

(assert (=> b!755446 (= res!510734 (= lt!336299 lt!336293))))

(assert (=> b!755446 (= lt!336299 (select (store (arr!20061 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!755447 () Bool)

(assert (=> b!755447 (= e!421291 e!421302)))

(declare-fun res!510737 () Bool)

(assert (=> b!755447 (=> (not res!510737) (not e!421302))))

(declare-fun lt!336292 () SeekEntryResult!7668)

(assert (=> b!755447 (= res!510737 (or (= lt!336292 (MissingZero!7668 i!1173)) (= lt!336292 (MissingVacant!7668 i!1173))))))

(assert (=> b!755447 (= lt!336292 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!755448 () Bool)

(declare-fun res!510740 () Bool)

(assert (=> b!755448 (=> (not res!510740) (not e!421291))))

(declare-fun arrayContainsKey!0 (array!41902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755448 (= res!510740 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755449 () Bool)

(declare-fun res!510746 () Bool)

(assert (=> b!755449 (=> (not res!510746) (not e!421302))))

(assert (=> b!755449 (= res!510746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755450 () Bool)

(declare-fun res!510730 () Bool)

(assert (=> b!755450 (=> (not res!510730) (not e!421291))))

(assert (=> b!755450 (= res!510730 (validKeyInArray!0 (select (arr!20061 a!3186) j!159)))))

(declare-fun b!755451 () Bool)

(assert (=> b!755451 (= e!421296 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20061 a!3186) j!159) a!3186 mask!3328) lt!336295))))

(declare-fun b!755452 () Bool)

(assert (=> b!755452 (= e!421294 e!421301)))

(declare-fun res!510729 () Bool)

(assert (=> b!755452 (=> (not res!510729) (not e!421301))))

(declare-fun lt!336291 () SeekEntryResult!7668)

(assert (=> b!755452 (= res!510729 (= lt!336291 lt!336297))))

(declare-fun lt!336298 () array!41902)

(assert (=> b!755452 (= lt!336297 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336293 lt!336298 mask!3328))))

(assert (=> b!755452 (= lt!336291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336293 mask!3328) lt!336293 lt!336298 mask!3328))))

(assert (=> b!755452 (= lt!336293 (select (store (arr!20061 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!755452 (= lt!336298 (array!41903 (store (arr!20061 a!3186) i!1173 k!2102) (size!20482 a!3186)))))

(declare-fun b!755453 () Bool)

(declare-fun res!510742 () Bool)

(declare-fun e!421298 () Bool)

(assert (=> b!755453 (=> (not res!510742) (not e!421298))))

(assert (=> b!755453 (= res!510742 (= (seekEntryOrOpen!0 lt!336293 lt!336298 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336293 lt!336298 mask!3328)))))

(declare-fun b!755454 () Bool)

(declare-fun res!510731 () Bool)

(assert (=> b!755454 (=> (not res!510731) (not e!421294))))

(assert (=> b!755454 (= res!510731 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20061 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755455 () Bool)

(assert (=> b!755455 (= e!421298 (= lt!336301 lt!336300))))

(declare-fun b!755456 () Bool)

(assert (=> b!755456 (= e!421297 true)))

(assert (=> b!755456 e!421298))

(declare-fun res!510735 () Bool)

(assert (=> b!755456 (=> (not res!510735) (not e!421298))))

(assert (=> b!755456 (= res!510735 (= lt!336299 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336296 () Unit!26074)

(assert (=> b!755456 (= lt!336296 e!421299)))

(declare-fun c!82734 () Bool)

(assert (=> b!755456 (= c!82734 (= lt!336299 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!65776 res!510738) b!755439))

(assert (= (and b!755439 res!510747) b!755450))

(assert (= (and b!755450 res!510730) b!755443))

(assert (= (and b!755443 res!510739) b!755448))

(assert (= (and b!755448 res!510740) b!755447))

(assert (= (and b!755447 res!510737) b!755449))

(assert (= (and b!755449 res!510746) b!755438))

(assert (= (and b!755438 res!510744) b!755437))

(assert (= (and b!755437 res!510745) b!755444))

(assert (= (and b!755444 res!510743) b!755454))

(assert (= (and b!755454 res!510731) b!755441))

(assert (= (and b!755441 c!82733) b!755451))

(assert (= (and b!755441 (not c!82733)) b!755435))

(assert (= (and b!755441 res!510741) b!755452))

(assert (= (and b!755452 res!510729) b!755445))

(assert (= (and b!755445 res!510736) b!755434))

(assert (= (and b!755445 (not res!510733)) b!755442))

(assert (= (and b!755442 (not res!510732)) b!755446))

(assert (= (and b!755446 (not res!510734)) b!755456))

(assert (= (and b!755456 c!82734) b!755436))

(assert (= (and b!755456 (not c!82734)) b!755440))

(assert (= (and b!755456 res!510735) b!755453))

(assert (= (and b!755453 res!510742) b!755455))

(declare-fun m!703705 () Bool)

(assert (=> b!755438 m!703705))

(declare-fun m!703707 () Bool)

(assert (=> b!755445 m!703707))

(assert (=> b!755445 m!703707))

(declare-fun m!703709 () Bool)

(assert (=> b!755445 m!703709))

(declare-fun m!703711 () Bool)

(assert (=> b!755445 m!703711))

(declare-fun m!703713 () Bool)

(assert (=> b!755445 m!703713))

(assert (=> b!755444 m!703707))

(assert (=> b!755444 m!703707))

(declare-fun m!703715 () Bool)

(assert (=> b!755444 m!703715))

(assert (=> b!755444 m!703715))

(assert (=> b!755444 m!703707))

(declare-fun m!703717 () Bool)

(assert (=> b!755444 m!703717))

(declare-fun m!703719 () Bool)

(assert (=> b!755453 m!703719))

(declare-fun m!703721 () Bool)

(assert (=> b!755453 m!703721))

(declare-fun m!703723 () Bool)

(assert (=> b!755443 m!703723))

(declare-fun m!703725 () Bool)

(assert (=> b!755449 m!703725))

(declare-fun m!703727 () Bool)

(assert (=> b!755448 m!703727))

(assert (=> b!755450 m!703707))

(assert (=> b!755450 m!703707))

(declare-fun m!703729 () Bool)

(assert (=> b!755450 m!703729))

(declare-fun m!703731 () Bool)

(assert (=> b!755447 m!703731))

(declare-fun m!703733 () Bool)

(assert (=> start!65776 m!703733))

(declare-fun m!703735 () Bool)

(assert (=> start!65776 m!703735))

(declare-fun m!703737 () Bool)

(assert (=> b!755446 m!703737))

(declare-fun m!703739 () Bool)

(assert (=> b!755446 m!703739))

(declare-fun m!703741 () Bool)

(assert (=> b!755452 m!703741))

(assert (=> b!755452 m!703737))

(declare-fun m!703743 () Bool)

(assert (=> b!755452 m!703743))

(declare-fun m!703745 () Bool)

(assert (=> b!755452 m!703745))

(assert (=> b!755452 m!703741))

(declare-fun m!703747 () Bool)

(assert (=> b!755452 m!703747))

(assert (=> b!755434 m!703707))

(assert (=> b!755434 m!703707))

(declare-fun m!703749 () Bool)

(assert (=> b!755434 m!703749))

(assert (=> b!755442 m!703707))

(assert (=> b!755442 m!703707))

(declare-fun m!703751 () Bool)

(assert (=> b!755442 m!703751))

(assert (=> b!755451 m!703707))

(assert (=> b!755451 m!703707))

(declare-fun m!703753 () Bool)

(assert (=> b!755451 m!703753))

(declare-fun m!703755 () Bool)

(assert (=> b!755454 m!703755))

(assert (=> b!755435 m!703707))

(assert (=> b!755435 m!703707))

(assert (=> b!755435 m!703751))

(push 1)

