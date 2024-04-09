; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66794 () Bool)

(assert start!66794)

(declare-fun b!769565 () Bool)

(declare-datatypes ((Unit!26472 0))(
  ( (Unit!26473) )
))
(declare-fun e!428533 () Unit!26472)

(declare-fun Unit!26474 () Unit!26472)

(assert (=> b!769565 (= e!428533 Unit!26474)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42311 0))(
  ( (array!42312 (arr!20252 (Array (_ BitVec 32) (_ BitVec 64))) (size!20673 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42311)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7859 0))(
  ( (MissingZero!7859 (index!33803 (_ BitVec 32))) (Found!7859 (index!33804 (_ BitVec 32))) (Intermediate!7859 (undefined!8671 Bool) (index!33805 (_ BitVec 32)) (x!64759 (_ BitVec 32))) (Undefined!7859) (MissingVacant!7859 (index!33806 (_ BitVec 32))) )
))
(declare-fun lt!342453 () SeekEntryResult!7859)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42311 (_ BitVec 32)) SeekEntryResult!7859)

(assert (=> b!769565 (= lt!342453 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20252 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342458 () (_ BitVec 32))

(assert (=> b!769565 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342458 resIntermediateIndex!5 (select (arr!20252 a!3186) j!159) a!3186 mask!3328) (Found!7859 j!159))))

(declare-fun b!769566 () Bool)

(declare-fun e!428535 () Bool)

(declare-fun e!428531 () Bool)

(assert (=> b!769566 (= e!428535 e!428531)))

(declare-fun res!520592 () Bool)

(assert (=> b!769566 (=> (not res!520592) (not e!428531))))

(declare-fun lt!342460 () SeekEntryResult!7859)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42311 (_ BitVec 32)) SeekEntryResult!7859)

(assert (=> b!769566 (= res!520592 (= (seekEntryOrOpen!0 (select (arr!20252 a!3186) j!159) a!3186 mask!3328) lt!342460))))

(assert (=> b!769566 (= lt!342460 (Found!7859 j!159))))

(declare-fun b!769567 () Bool)

(declare-fun e!428539 () Bool)

(declare-fun e!428537 () Bool)

(assert (=> b!769567 (= e!428539 (not e!428537))))

(declare-fun res!520603 () Bool)

(assert (=> b!769567 (=> res!520603 e!428537)))

(declare-fun lt!342456 () SeekEntryResult!7859)

(assert (=> b!769567 (= res!520603 (or (not (is-Intermediate!7859 lt!342456)) (bvsge x!1131 (x!64759 lt!342456))))))

(assert (=> b!769567 e!428535))

(declare-fun res!520602 () Bool)

(assert (=> b!769567 (=> (not res!520602) (not e!428535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42311 (_ BitVec 32)) Bool)

(assert (=> b!769567 (= res!520602 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342459 () Unit!26472)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26472)

(assert (=> b!769567 (= lt!342459 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769568 () Bool)

(declare-fun res!520597 () Bool)

(declare-fun e!428530 () Bool)

(assert (=> b!769568 (=> (not res!520597) (not e!428530))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769568 (= res!520597 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20673 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20673 a!3186))))))

(declare-fun b!769569 () Bool)

(assert (=> b!769569 (= e!428537 true)))

(declare-fun lt!342454 () Unit!26472)

(assert (=> b!769569 (= lt!342454 e!428533)))

(declare-fun c!84884 () Bool)

(assert (=> b!769569 (= c!84884 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769569 (= lt!342458 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769570 () Bool)

(declare-fun e!428534 () Bool)

(assert (=> b!769570 (= e!428530 e!428534)))

(declare-fun res!520589 () Bool)

(assert (=> b!769570 (=> (not res!520589) (not e!428534))))

(declare-fun lt!342463 () SeekEntryResult!7859)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42311 (_ BitVec 32)) SeekEntryResult!7859)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769570 (= res!520589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20252 a!3186) j!159) mask!3328) (select (arr!20252 a!3186) j!159) a!3186 mask!3328) lt!342463))))

(assert (=> b!769570 (= lt!342463 (Intermediate!7859 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769571 () Bool)

(declare-fun res!520596 () Bool)

(declare-fun e!428538 () Bool)

(assert (=> b!769571 (=> (not res!520596) (not e!428538))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769571 (= res!520596 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769572 () Bool)

(declare-fun e!428536 () Bool)

(assert (=> b!769572 (= e!428536 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20252 a!3186) j!159) a!3186 mask!3328) lt!342463))))

(declare-fun b!769573 () Bool)

(assert (=> b!769573 (= e!428534 e!428539)))

(declare-fun res!520591 () Bool)

(assert (=> b!769573 (=> (not res!520591) (not e!428539))))

(declare-fun lt!342461 () SeekEntryResult!7859)

(assert (=> b!769573 (= res!520591 (= lt!342461 lt!342456))))

(declare-fun lt!342455 () (_ BitVec 64))

(declare-fun lt!342462 () array!42311)

(assert (=> b!769573 (= lt!342456 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342455 lt!342462 mask!3328))))

(assert (=> b!769573 (= lt!342461 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342455 mask!3328) lt!342455 lt!342462 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769573 (= lt!342455 (select (store (arr!20252 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769573 (= lt!342462 (array!42312 (store (arr!20252 a!3186) i!1173 k!2102) (size!20673 a!3186)))))

(declare-fun b!769574 () Bool)

(assert (=> b!769574 (= e!428536 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20252 a!3186) j!159) a!3186 mask!3328) (Found!7859 j!159)))))

(declare-fun b!769575 () Bool)

(assert (=> b!769575 (= e!428538 e!428530)))

(declare-fun res!520594 () Bool)

(assert (=> b!769575 (=> (not res!520594) (not e!428530))))

(declare-fun lt!342457 () SeekEntryResult!7859)

(assert (=> b!769575 (= res!520594 (or (= lt!342457 (MissingZero!7859 i!1173)) (= lt!342457 (MissingVacant!7859 i!1173))))))

(assert (=> b!769575 (= lt!342457 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!769576 () Bool)

(declare-fun res!520598 () Bool)

(assert (=> b!769576 (=> (not res!520598) (not e!428534))))

(assert (=> b!769576 (= res!520598 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20252 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769577 () Bool)

(declare-fun res!520600 () Bool)

(assert (=> b!769577 (=> (not res!520600) (not e!428534))))

(assert (=> b!769577 (= res!520600 e!428536)))

(declare-fun c!84885 () Bool)

(assert (=> b!769577 (= c!84885 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769578 () Bool)

(declare-fun res!520601 () Bool)

(assert (=> b!769578 (=> (not res!520601) (not e!428538))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769578 (= res!520601 (validKeyInArray!0 k!2102))))

(declare-fun b!769579 () Bool)

(declare-fun Unit!26475 () Unit!26472)

(assert (=> b!769579 (= e!428533 Unit!26475)))

(assert (=> b!769579 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342458 (select (arr!20252 a!3186) j!159) a!3186 mask!3328) lt!342463)))

(declare-fun res!520590 () Bool)

(assert (=> start!66794 (=> (not res!520590) (not e!428538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66794 (= res!520590 (validMask!0 mask!3328))))

(assert (=> start!66794 e!428538))

(assert (=> start!66794 true))

(declare-fun array_inv!16026 (array!42311) Bool)

(assert (=> start!66794 (array_inv!16026 a!3186)))

(declare-fun b!769580 () Bool)

(declare-fun res!520588 () Bool)

(assert (=> b!769580 (=> (not res!520588) (not e!428530))))

(assert (=> b!769580 (= res!520588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769581 () Bool)

(declare-fun res!520595 () Bool)

(assert (=> b!769581 (=> (not res!520595) (not e!428538))))

(assert (=> b!769581 (= res!520595 (and (= (size!20673 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20673 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20673 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769582 () Bool)

(declare-fun res!520599 () Bool)

(assert (=> b!769582 (=> (not res!520599) (not e!428538))))

(assert (=> b!769582 (= res!520599 (validKeyInArray!0 (select (arr!20252 a!3186) j!159)))))

(declare-fun b!769583 () Bool)

(declare-fun res!520593 () Bool)

(assert (=> b!769583 (=> (not res!520593) (not e!428530))))

(declare-datatypes ((List!14307 0))(
  ( (Nil!14304) (Cons!14303 (h!15402 (_ BitVec 64)) (t!20630 List!14307)) )
))
(declare-fun arrayNoDuplicates!0 (array!42311 (_ BitVec 32) List!14307) Bool)

(assert (=> b!769583 (= res!520593 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14304))))

(declare-fun b!769584 () Bool)

(assert (=> b!769584 (= e!428531 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20252 a!3186) j!159) a!3186 mask!3328) lt!342460))))

(assert (= (and start!66794 res!520590) b!769581))

(assert (= (and b!769581 res!520595) b!769582))

(assert (= (and b!769582 res!520599) b!769578))

(assert (= (and b!769578 res!520601) b!769571))

(assert (= (and b!769571 res!520596) b!769575))

(assert (= (and b!769575 res!520594) b!769580))

(assert (= (and b!769580 res!520588) b!769583))

(assert (= (and b!769583 res!520593) b!769568))

(assert (= (and b!769568 res!520597) b!769570))

(assert (= (and b!769570 res!520589) b!769576))

(assert (= (and b!769576 res!520598) b!769577))

(assert (= (and b!769577 c!84885) b!769572))

(assert (= (and b!769577 (not c!84885)) b!769574))

(assert (= (and b!769577 res!520600) b!769573))

(assert (= (and b!769573 res!520591) b!769567))

(assert (= (and b!769567 res!520602) b!769566))

(assert (= (and b!769566 res!520592) b!769584))

(assert (= (and b!769567 (not res!520603)) b!769569))

(assert (= (and b!769569 c!84884) b!769579))

(assert (= (and b!769569 (not c!84884)) b!769565))

(declare-fun m!715023 () Bool)

(assert (=> b!769569 m!715023))

(declare-fun m!715025 () Bool)

(assert (=> b!769583 m!715025))

(declare-fun m!715027 () Bool)

(assert (=> b!769580 m!715027))

(declare-fun m!715029 () Bool)

(assert (=> b!769566 m!715029))

(assert (=> b!769566 m!715029))

(declare-fun m!715031 () Bool)

(assert (=> b!769566 m!715031))

(assert (=> b!769584 m!715029))

(assert (=> b!769584 m!715029))

(declare-fun m!715033 () Bool)

(assert (=> b!769584 m!715033))

(assert (=> b!769574 m!715029))

(assert (=> b!769574 m!715029))

(declare-fun m!715035 () Bool)

(assert (=> b!769574 m!715035))

(declare-fun m!715037 () Bool)

(assert (=> b!769575 m!715037))

(assert (=> b!769579 m!715029))

(assert (=> b!769579 m!715029))

(declare-fun m!715039 () Bool)

(assert (=> b!769579 m!715039))

(assert (=> b!769570 m!715029))

(assert (=> b!769570 m!715029))

(declare-fun m!715041 () Bool)

(assert (=> b!769570 m!715041))

(assert (=> b!769570 m!715041))

(assert (=> b!769570 m!715029))

(declare-fun m!715043 () Bool)

(assert (=> b!769570 m!715043))

(assert (=> b!769572 m!715029))

(assert (=> b!769572 m!715029))

(declare-fun m!715045 () Bool)

(assert (=> b!769572 m!715045))

(declare-fun m!715047 () Bool)

(assert (=> b!769576 m!715047))

(declare-fun m!715049 () Bool)

(assert (=> b!769567 m!715049))

(declare-fun m!715051 () Bool)

(assert (=> b!769567 m!715051))

(declare-fun m!715053 () Bool)

(assert (=> b!769573 m!715053))

(declare-fun m!715055 () Bool)

(assert (=> b!769573 m!715055))

(assert (=> b!769573 m!715053))

(declare-fun m!715057 () Bool)

(assert (=> b!769573 m!715057))

(declare-fun m!715059 () Bool)

(assert (=> b!769573 m!715059))

(declare-fun m!715061 () Bool)

(assert (=> b!769573 m!715061))

(declare-fun m!715063 () Bool)

(assert (=> b!769571 m!715063))

(declare-fun m!715065 () Bool)

(assert (=> b!769578 m!715065))

(declare-fun m!715067 () Bool)

(assert (=> start!66794 m!715067))

(declare-fun m!715069 () Bool)

(assert (=> start!66794 m!715069))

(assert (=> b!769582 m!715029))

(assert (=> b!769582 m!715029))

(declare-fun m!715071 () Bool)

(assert (=> b!769582 m!715071))

(assert (=> b!769565 m!715029))

(assert (=> b!769565 m!715029))

(assert (=> b!769565 m!715035))

(assert (=> b!769565 m!715029))

(declare-fun m!715073 () Bool)

(assert (=> b!769565 m!715073))

(push 1)

