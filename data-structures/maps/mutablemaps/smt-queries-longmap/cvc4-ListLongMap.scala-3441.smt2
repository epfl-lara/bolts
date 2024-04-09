; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47780 () Bool)

(assert start!47780)

(declare-fun b!525775 () Bool)

(declare-fun res!322619 () Bool)

(declare-fun e!306517 () Bool)

(assert (=> b!525775 (=> (not res!322619) (not e!306517))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525775 (= res!322619 (validKeyInArray!0 k!2280))))

(declare-fun b!525776 () Bool)

(declare-fun e!306518 () Bool)

(assert (=> b!525776 (= e!306518 false)))

(declare-fun b!525777 () Bool)

(declare-fun res!322617 () Bool)

(declare-fun e!306523 () Bool)

(assert (=> b!525777 (=> (not res!322617) (not e!306523))))

(declare-datatypes ((array!33377 0))(
  ( (array!33378 (arr!16037 (Array (_ BitVec 32) (_ BitVec 64))) (size!16401 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33377)

(declare-datatypes ((List!10248 0))(
  ( (Nil!10245) (Cons!10244 (h!11175 (_ BitVec 64)) (t!16484 List!10248)) )
))
(declare-fun arrayNoDuplicates!0 (array!33377 (_ BitVec 32) List!10248) Bool)

(assert (=> b!525777 (= res!322617 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10245))))

(declare-fun b!525778 () Bool)

(declare-datatypes ((Unit!16510 0))(
  ( (Unit!16511) )
))
(declare-fun e!306521 () Unit!16510)

(declare-fun Unit!16512 () Unit!16510)

(assert (=> b!525778 (= e!306521 Unit!16512)))

(declare-fun b!525779 () Bool)

(declare-fun res!322620 () Bool)

(assert (=> b!525779 (=> (not res!322620) (not e!306523))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33377 (_ BitVec 32)) Bool)

(assert (=> b!525779 (= res!322620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525780 () Bool)

(declare-fun res!322616 () Bool)

(assert (=> b!525780 (=> (not res!322616) (not e!306517))))

(declare-fun arrayContainsKey!0 (array!33377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525780 (= res!322616 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525782 () Bool)

(declare-fun res!322622 () Bool)

(assert (=> b!525782 (=> (not res!322622) (not e!306517))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!525782 (= res!322622 (and (= (size!16401 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16401 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16401 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525783 () Bool)

(declare-fun res!322624 () Bool)

(declare-fun e!306522 () Bool)

(assert (=> b!525783 (=> res!322624 e!306522)))

(declare-datatypes ((SeekEntryResult!4511 0))(
  ( (MissingZero!4511 (index!20256 (_ BitVec 32))) (Found!4511 (index!20257 (_ BitVec 32))) (Intermediate!4511 (undefined!5323 Bool) (index!20258 (_ BitVec 32)) (x!49255 (_ BitVec 32))) (Undefined!4511) (MissingVacant!4511 (index!20259 (_ BitVec 32))) )
))
(declare-fun lt!241741 () SeekEntryResult!4511)

(assert (=> b!525783 (= res!322624 (or (undefined!5323 lt!241741) (not (is-Intermediate!4511 lt!241741))))))

(declare-fun b!525784 () Bool)

(declare-fun Unit!16513 () Unit!16510)

(assert (=> b!525784 (= e!306521 Unit!16513)))

(declare-fun lt!241742 () (_ BitVec 32))

(declare-fun lt!241743 () Unit!16510)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33377 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16510)

(assert (=> b!525784 (= lt!241743 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241742 #b00000000000000000000000000000000 (index!20258 lt!241741) (x!49255 lt!241741) mask!3524))))

(declare-fun res!322625 () Bool)

(declare-fun lt!241738 () (_ BitVec 64))

(declare-fun lt!241744 () array!33377)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33377 (_ BitVec 32)) SeekEntryResult!4511)

(assert (=> b!525784 (= res!322625 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241742 lt!241738 lt!241744 mask!3524) (Intermediate!4511 false (index!20258 lt!241741) (x!49255 lt!241741))))))

(assert (=> b!525784 (=> (not res!322625) (not e!306518))))

(assert (=> b!525784 e!306518))

(declare-fun b!525785 () Bool)

(assert (=> b!525785 (= e!306522 true)))

(assert (=> b!525785 (= (index!20258 lt!241741) i!1204)))

(declare-fun lt!241740 () Unit!16510)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33377 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16510)

(assert (=> b!525785 (= lt!241740 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241742 #b00000000000000000000000000000000 (index!20258 lt!241741) (x!49255 lt!241741) mask!3524))))

(assert (=> b!525785 (and (or (= (select (arr!16037 a!3235) (index!20258 lt!241741)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16037 a!3235) (index!20258 lt!241741)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16037 a!3235) (index!20258 lt!241741)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16037 a!3235) (index!20258 lt!241741)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241745 () Unit!16510)

(assert (=> b!525785 (= lt!241745 e!306521)))

(declare-fun c!61886 () Bool)

(assert (=> b!525785 (= c!61886 (= (select (arr!16037 a!3235) (index!20258 lt!241741)) (select (arr!16037 a!3235) j!176)))))

(assert (=> b!525785 (and (bvslt (x!49255 lt!241741) #b01111111111111111111111111111110) (or (= (select (arr!16037 a!3235) (index!20258 lt!241741)) (select (arr!16037 a!3235) j!176)) (= (select (arr!16037 a!3235) (index!20258 lt!241741)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16037 a!3235) (index!20258 lt!241741)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525786 () Bool)

(declare-fun res!322615 () Bool)

(assert (=> b!525786 (=> (not res!322615) (not e!306517))))

(assert (=> b!525786 (= res!322615 (validKeyInArray!0 (select (arr!16037 a!3235) j!176)))))

(declare-fun b!525787 () Bool)

(assert (=> b!525787 (= e!306517 e!306523)))

(declare-fun res!322618 () Bool)

(assert (=> b!525787 (=> (not res!322618) (not e!306523))))

(declare-fun lt!241739 () SeekEntryResult!4511)

(assert (=> b!525787 (= res!322618 (or (= lt!241739 (MissingZero!4511 i!1204)) (= lt!241739 (MissingVacant!4511 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33377 (_ BitVec 32)) SeekEntryResult!4511)

(assert (=> b!525787 (= lt!241739 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525788 () Bool)

(declare-fun e!306520 () Bool)

(assert (=> b!525788 (= e!306520 (= (seekEntryOrOpen!0 (select (arr!16037 a!3235) j!176) a!3235 mask!3524) (Found!4511 j!176)))))

(declare-fun res!322621 () Bool)

(assert (=> start!47780 (=> (not res!322621) (not e!306517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47780 (= res!322621 (validMask!0 mask!3524))))

(assert (=> start!47780 e!306517))

(assert (=> start!47780 true))

(declare-fun array_inv!11811 (array!33377) Bool)

(assert (=> start!47780 (array_inv!11811 a!3235)))

(declare-fun b!525781 () Bool)

(assert (=> b!525781 (= e!306523 (not e!306522))))

(declare-fun res!322623 () Bool)

(assert (=> b!525781 (=> res!322623 e!306522)))

(declare-fun lt!241737 () (_ BitVec 32))

(assert (=> b!525781 (= res!322623 (= lt!241741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241737 lt!241738 lt!241744 mask!3524)))))

(assert (=> b!525781 (= lt!241741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241742 (select (arr!16037 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525781 (= lt!241737 (toIndex!0 lt!241738 mask!3524))))

(assert (=> b!525781 (= lt!241738 (select (store (arr!16037 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525781 (= lt!241742 (toIndex!0 (select (arr!16037 a!3235) j!176) mask!3524))))

(assert (=> b!525781 (= lt!241744 (array!33378 (store (arr!16037 a!3235) i!1204 k!2280) (size!16401 a!3235)))))

(assert (=> b!525781 e!306520))

(declare-fun res!322614 () Bool)

(assert (=> b!525781 (=> (not res!322614) (not e!306520))))

(assert (=> b!525781 (= res!322614 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241736 () Unit!16510)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33377 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16510)

(assert (=> b!525781 (= lt!241736 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47780 res!322621) b!525782))

(assert (= (and b!525782 res!322622) b!525786))

(assert (= (and b!525786 res!322615) b!525775))

(assert (= (and b!525775 res!322619) b!525780))

(assert (= (and b!525780 res!322616) b!525787))

(assert (= (and b!525787 res!322618) b!525779))

(assert (= (and b!525779 res!322620) b!525777))

(assert (= (and b!525777 res!322617) b!525781))

(assert (= (and b!525781 res!322614) b!525788))

(assert (= (and b!525781 (not res!322623)) b!525783))

(assert (= (and b!525783 (not res!322624)) b!525785))

(assert (= (and b!525785 c!61886) b!525784))

(assert (= (and b!525785 (not c!61886)) b!525778))

(assert (= (and b!525784 res!322625) b!525776))

(declare-fun m!506495 () Bool)

(assert (=> b!525787 m!506495))

(declare-fun m!506497 () Bool)

(assert (=> b!525785 m!506497))

(declare-fun m!506499 () Bool)

(assert (=> b!525785 m!506499))

(declare-fun m!506501 () Bool)

(assert (=> b!525785 m!506501))

(declare-fun m!506503 () Bool)

(assert (=> b!525779 m!506503))

(assert (=> b!525788 m!506501))

(assert (=> b!525788 m!506501))

(declare-fun m!506505 () Bool)

(assert (=> b!525788 m!506505))

(declare-fun m!506507 () Bool)

(assert (=> b!525777 m!506507))

(declare-fun m!506509 () Bool)

(assert (=> b!525780 m!506509))

(declare-fun m!506511 () Bool)

(assert (=> b!525784 m!506511))

(declare-fun m!506513 () Bool)

(assert (=> b!525784 m!506513))

(declare-fun m!506515 () Bool)

(assert (=> start!47780 m!506515))

(declare-fun m!506517 () Bool)

(assert (=> start!47780 m!506517))

(assert (=> b!525786 m!506501))

(assert (=> b!525786 m!506501))

(declare-fun m!506519 () Bool)

(assert (=> b!525786 m!506519))

(declare-fun m!506521 () Bool)

(assert (=> b!525781 m!506521))

(declare-fun m!506523 () Bool)

(assert (=> b!525781 m!506523))

(declare-fun m!506525 () Bool)

(assert (=> b!525781 m!506525))

(declare-fun m!506527 () Bool)

(assert (=> b!525781 m!506527))

(declare-fun m!506529 () Bool)

(assert (=> b!525781 m!506529))

(assert (=> b!525781 m!506501))

(declare-fun m!506531 () Bool)

(assert (=> b!525781 m!506531))

(assert (=> b!525781 m!506501))

(declare-fun m!506533 () Bool)

(assert (=> b!525781 m!506533))

(assert (=> b!525781 m!506501))

(declare-fun m!506535 () Bool)

(assert (=> b!525781 m!506535))

(declare-fun m!506537 () Bool)

(assert (=> b!525775 m!506537))

(push 1)

