; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47388 () Bool)

(assert start!47388)

(declare-fun b!520711 () Bool)

(declare-fun e!303847 () Bool)

(declare-fun e!303846 () Bool)

(assert (=> b!520711 (= e!303847 (not e!303846))))

(declare-fun res!318742 () Bool)

(assert (=> b!520711 (=> res!318742 e!303846)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!238585 () (_ BitVec 32))

(declare-fun lt!238582 () (_ BitVec 64))

(declare-datatypes ((array!33174 0))(
  ( (array!33175 (arr!15940 (Array (_ BitVec 32) (_ BitVec 64))) (size!16304 (_ BitVec 32))) )
))
(declare-fun lt!238584 () array!33174)

(declare-datatypes ((SeekEntryResult!4414 0))(
  ( (MissingZero!4414 (index!19859 (_ BitVec 32))) (Found!4414 (index!19860 (_ BitVec 32))) (Intermediate!4414 (undefined!5226 Bool) (index!19861 (_ BitVec 32)) (x!48875 (_ BitVec 32))) (Undefined!4414) (MissingVacant!4414 (index!19862 (_ BitVec 32))) )
))
(declare-fun lt!238578 () SeekEntryResult!4414)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33174 (_ BitVec 32)) SeekEntryResult!4414)

(assert (=> b!520711 (= res!318742 (= lt!238578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238585 lt!238582 lt!238584 mask!3524)))))

(declare-fun a!3235 () array!33174)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!238586 () (_ BitVec 32))

(assert (=> b!520711 (= lt!238578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238586 (select (arr!15940 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520711 (= lt!238585 (toIndex!0 lt!238582 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!520711 (= lt!238582 (select (store (arr!15940 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!520711 (= lt!238586 (toIndex!0 (select (arr!15940 a!3235) j!176) mask!3524))))

(assert (=> b!520711 (= lt!238584 (array!33175 (store (arr!15940 a!3235) i!1204 k0!2280) (size!16304 a!3235)))))

(declare-fun e!303841 () Bool)

(assert (=> b!520711 e!303841))

(declare-fun res!318741 () Bool)

(assert (=> b!520711 (=> (not res!318741) (not e!303841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33174 (_ BitVec 32)) Bool)

(assert (=> b!520711 (= res!318741 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16122 0))(
  ( (Unit!16123) )
))
(declare-fun lt!238583 () Unit!16122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16122)

(assert (=> b!520711 (= lt!238583 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!318739 () Bool)

(declare-fun e!303842 () Bool)

(assert (=> start!47388 (=> (not res!318739) (not e!303842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47388 (= res!318739 (validMask!0 mask!3524))))

(assert (=> start!47388 e!303842))

(assert (=> start!47388 true))

(declare-fun array_inv!11714 (array!33174) Bool)

(assert (=> start!47388 (array_inv!11714 a!3235)))

(declare-fun b!520712 () Bool)

(declare-fun e!303843 () Unit!16122)

(declare-fun Unit!16124 () Unit!16122)

(assert (=> b!520712 (= e!303843 Unit!16124)))

(declare-fun lt!238581 () Unit!16122)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33174 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16122)

(assert (=> b!520712 (= lt!238581 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238586 #b00000000000000000000000000000000 (index!19861 lt!238578) (x!48875 lt!238578) mask!3524))))

(declare-fun res!318736 () Bool)

(assert (=> b!520712 (= res!318736 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238586 lt!238582 lt!238584 mask!3524) (Intermediate!4414 false (index!19861 lt!238578) (x!48875 lt!238578))))))

(declare-fun e!303844 () Bool)

(assert (=> b!520712 (=> (not res!318736) (not e!303844))))

(assert (=> b!520712 e!303844))

(declare-fun b!520713 () Bool)

(declare-fun Unit!16125 () Unit!16122)

(assert (=> b!520713 (= e!303843 Unit!16125)))

(declare-fun b!520714 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33174 (_ BitVec 32)) SeekEntryResult!4414)

(assert (=> b!520714 (= e!303841 (= (seekEntryOrOpen!0 (select (arr!15940 a!3235) j!176) a!3235 mask!3524) (Found!4414 j!176)))))

(declare-fun b!520715 () Bool)

(declare-fun res!318743 () Bool)

(assert (=> b!520715 (=> (not res!318743) (not e!303842))))

(declare-fun arrayContainsKey!0 (array!33174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520715 (= res!318743 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520716 () Bool)

(declare-fun res!318737 () Bool)

(assert (=> b!520716 (=> (not res!318737) (not e!303842))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520716 (= res!318737 (validKeyInArray!0 k0!2280))))

(declare-fun b!520717 () Bool)

(assert (=> b!520717 (= e!303846 true)))

(assert (=> b!520717 (and (or (= (select (arr!15940 a!3235) (index!19861 lt!238578)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15940 a!3235) (index!19861 lt!238578)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15940 a!3235) (index!19861 lt!238578)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15940 a!3235) (index!19861 lt!238578)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238580 () Unit!16122)

(assert (=> b!520717 (= lt!238580 e!303843)))

(declare-fun c!61289 () Bool)

(assert (=> b!520717 (= c!61289 (= (select (arr!15940 a!3235) (index!19861 lt!238578)) (select (arr!15940 a!3235) j!176)))))

(assert (=> b!520717 (and (bvslt (x!48875 lt!238578) #b01111111111111111111111111111110) (or (= (select (arr!15940 a!3235) (index!19861 lt!238578)) (select (arr!15940 a!3235) j!176)) (= (select (arr!15940 a!3235) (index!19861 lt!238578)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15940 a!3235) (index!19861 lt!238578)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520718 () Bool)

(assert (=> b!520718 (= e!303842 e!303847)))

(declare-fun res!318744 () Bool)

(assert (=> b!520718 (=> (not res!318744) (not e!303847))))

(declare-fun lt!238579 () SeekEntryResult!4414)

(assert (=> b!520718 (= res!318744 (or (= lt!238579 (MissingZero!4414 i!1204)) (= lt!238579 (MissingVacant!4414 i!1204))))))

(assert (=> b!520718 (= lt!238579 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!520719 () Bool)

(declare-fun res!318740 () Bool)

(assert (=> b!520719 (=> (not res!318740) (not e!303847))))

(declare-datatypes ((List!10151 0))(
  ( (Nil!10148) (Cons!10147 (h!11069 (_ BitVec 64)) (t!16387 List!10151)) )
))
(declare-fun arrayNoDuplicates!0 (array!33174 (_ BitVec 32) List!10151) Bool)

(assert (=> b!520719 (= res!318740 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10148))))

(declare-fun b!520720 () Bool)

(declare-fun res!318738 () Bool)

(assert (=> b!520720 (=> (not res!318738) (not e!303842))))

(assert (=> b!520720 (= res!318738 (and (= (size!16304 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16304 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16304 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520721 () Bool)

(declare-fun res!318746 () Bool)

(assert (=> b!520721 (=> res!318746 e!303846)))

(get-info :version)

(assert (=> b!520721 (= res!318746 (or (undefined!5226 lt!238578) (not ((_ is Intermediate!4414) lt!238578))))))

(declare-fun b!520722 () Bool)

(assert (=> b!520722 (= e!303844 false)))

(declare-fun b!520723 () Bool)

(declare-fun res!318745 () Bool)

(assert (=> b!520723 (=> (not res!318745) (not e!303847))))

(assert (=> b!520723 (= res!318745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520724 () Bool)

(declare-fun res!318735 () Bool)

(assert (=> b!520724 (=> (not res!318735) (not e!303842))))

(assert (=> b!520724 (= res!318735 (validKeyInArray!0 (select (arr!15940 a!3235) j!176)))))

(assert (= (and start!47388 res!318739) b!520720))

(assert (= (and b!520720 res!318738) b!520724))

(assert (= (and b!520724 res!318735) b!520716))

(assert (= (and b!520716 res!318737) b!520715))

(assert (= (and b!520715 res!318743) b!520718))

(assert (= (and b!520718 res!318744) b!520723))

(assert (= (and b!520723 res!318745) b!520719))

(assert (= (and b!520719 res!318740) b!520711))

(assert (= (and b!520711 res!318741) b!520714))

(assert (= (and b!520711 (not res!318742)) b!520721))

(assert (= (and b!520721 (not res!318746)) b!520717))

(assert (= (and b!520717 c!61289) b!520712))

(assert (= (and b!520717 (not c!61289)) b!520713))

(assert (= (and b!520712 res!318736) b!520722))

(declare-fun m!501661 () Bool)

(assert (=> b!520718 m!501661))

(declare-fun m!501663 () Bool)

(assert (=> b!520715 m!501663))

(declare-fun m!501665 () Bool)

(assert (=> b!520716 m!501665))

(declare-fun m!501667 () Bool)

(assert (=> b!520712 m!501667))

(declare-fun m!501669 () Bool)

(assert (=> b!520712 m!501669))

(declare-fun m!501671 () Bool)

(assert (=> b!520719 m!501671))

(declare-fun m!501673 () Bool)

(assert (=> b!520711 m!501673))

(declare-fun m!501675 () Bool)

(assert (=> b!520711 m!501675))

(declare-fun m!501677 () Bool)

(assert (=> b!520711 m!501677))

(declare-fun m!501679 () Bool)

(assert (=> b!520711 m!501679))

(declare-fun m!501681 () Bool)

(assert (=> b!520711 m!501681))

(assert (=> b!520711 m!501679))

(declare-fun m!501683 () Bool)

(assert (=> b!520711 m!501683))

(declare-fun m!501685 () Bool)

(assert (=> b!520711 m!501685))

(declare-fun m!501687 () Bool)

(assert (=> b!520711 m!501687))

(assert (=> b!520711 m!501679))

(declare-fun m!501689 () Bool)

(assert (=> b!520711 m!501689))

(declare-fun m!501691 () Bool)

(assert (=> start!47388 m!501691))

(declare-fun m!501693 () Bool)

(assert (=> start!47388 m!501693))

(assert (=> b!520714 m!501679))

(assert (=> b!520714 m!501679))

(declare-fun m!501695 () Bool)

(assert (=> b!520714 m!501695))

(assert (=> b!520724 m!501679))

(assert (=> b!520724 m!501679))

(declare-fun m!501697 () Bool)

(assert (=> b!520724 m!501697))

(declare-fun m!501699 () Bool)

(assert (=> b!520723 m!501699))

(declare-fun m!501701 () Bool)

(assert (=> b!520717 m!501701))

(assert (=> b!520717 m!501679))

(check-sat (not b!520712) (not b!520724) (not b!520715) (not b!520723) (not b!520719) (not b!520714) (not b!520711) (not start!47388) (not b!520716) (not b!520718))
(check-sat)
