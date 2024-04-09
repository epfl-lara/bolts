; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47390 () Bool)

(assert start!47390)

(declare-fun b!520753 () Bool)

(declare-fun e!303867 () Bool)

(assert (=> b!520753 (= e!303867 true)))

(declare-datatypes ((array!33176 0))(
  ( (array!33177 (arr!15941 (Array (_ BitVec 32) (_ BitVec 64))) (size!16305 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33176)

(declare-datatypes ((SeekEntryResult!4415 0))(
  ( (MissingZero!4415 (index!19863 (_ BitVec 32))) (Found!4415 (index!19864 (_ BitVec 32))) (Intermediate!4415 (undefined!5227 Bool) (index!19865 (_ BitVec 32)) (x!48876 (_ BitVec 32))) (Undefined!4415) (MissingVacant!4415 (index!19866 (_ BitVec 32))) )
))
(declare-fun lt!238609 () SeekEntryResult!4415)

(assert (=> b!520753 (and (or (= (select (arr!15941 a!3235) (index!19865 lt!238609)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15941 a!3235) (index!19865 lt!238609)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15941 a!3235) (index!19865 lt!238609)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15941 a!3235) (index!19865 lt!238609)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16126 0))(
  ( (Unit!16127) )
))
(declare-fun lt!238611 () Unit!16126)

(declare-fun e!303865 () Unit!16126)

(assert (=> b!520753 (= lt!238611 e!303865)))

(declare-fun c!61292 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!520753 (= c!61292 (= (select (arr!15941 a!3235) (index!19865 lt!238609)) (select (arr!15941 a!3235) j!176)))))

(assert (=> b!520753 (and (bvslt (x!48876 lt!238609) #b01111111111111111111111111111110) (or (= (select (arr!15941 a!3235) (index!19865 lt!238609)) (select (arr!15941 a!3235) j!176)) (= (select (arr!15941 a!3235) (index!19865 lt!238609)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15941 a!3235) (index!19865 lt!238609)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520754 () Bool)

(declare-fun res!318781 () Bool)

(declare-fun e!303864 () Bool)

(assert (=> b!520754 (=> (not res!318781) (not e!303864))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520754 (= res!318781 (validKeyInArray!0 (select (arr!15941 a!3235) j!176)))))

(declare-fun b!520756 () Bool)

(declare-fun res!318772 () Bool)

(assert (=> b!520756 (=> (not res!318772) (not e!303864))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!520756 (= res!318772 (validKeyInArray!0 k!2280))))

(declare-fun b!520757 () Bool)

(declare-fun e!303866 () Bool)

(assert (=> b!520757 (= e!303864 e!303866)))

(declare-fun res!318776 () Bool)

(assert (=> b!520757 (=> (not res!318776) (not e!303866))))

(declare-fun lt!238605 () SeekEntryResult!4415)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!520757 (= res!318776 (or (= lt!238605 (MissingZero!4415 i!1204)) (= lt!238605 (MissingVacant!4415 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33176 (_ BitVec 32)) SeekEntryResult!4415)

(assert (=> b!520757 (= lt!238605 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!520758 () Bool)

(declare-fun Unit!16128 () Unit!16126)

(assert (=> b!520758 (= e!303865 Unit!16128)))

(declare-fun b!520759 () Bool)

(declare-fun res!318778 () Bool)

(assert (=> b!520759 (=> (not res!318778) (not e!303864))))

(assert (=> b!520759 (= res!318778 (and (= (size!16305 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16305 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16305 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520760 () Bool)

(assert (=> b!520760 (= e!303866 (not e!303867))))

(declare-fun res!318773 () Bool)

(assert (=> b!520760 (=> res!318773 e!303867)))

(declare-fun lt!238606 () array!33176)

(declare-fun lt!238607 () (_ BitVec 32))

(declare-fun lt!238610 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33176 (_ BitVec 32)) SeekEntryResult!4415)

(assert (=> b!520760 (= res!318773 (= lt!238609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238607 lt!238610 lt!238606 mask!3524)))))

(declare-fun lt!238608 () (_ BitVec 32))

(assert (=> b!520760 (= lt!238609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238608 (select (arr!15941 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520760 (= lt!238607 (toIndex!0 lt!238610 mask!3524))))

(assert (=> b!520760 (= lt!238610 (select (store (arr!15941 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!520760 (= lt!238608 (toIndex!0 (select (arr!15941 a!3235) j!176) mask!3524))))

(assert (=> b!520760 (= lt!238606 (array!33177 (store (arr!15941 a!3235) i!1204 k!2280) (size!16305 a!3235)))))

(declare-fun e!303863 () Bool)

(assert (=> b!520760 e!303863))

(declare-fun res!318775 () Bool)

(assert (=> b!520760 (=> (not res!318775) (not e!303863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33176 (_ BitVec 32)) Bool)

(assert (=> b!520760 (= res!318775 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238612 () Unit!16126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33176 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16126)

(assert (=> b!520760 (= lt!238612 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520761 () Bool)

(declare-fun Unit!16129 () Unit!16126)

(assert (=> b!520761 (= e!303865 Unit!16129)))

(declare-fun lt!238613 () Unit!16126)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33176 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16126)

(assert (=> b!520761 (= lt!238613 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238608 #b00000000000000000000000000000000 (index!19865 lt!238609) (x!48876 lt!238609) mask!3524))))

(declare-fun res!318779 () Bool)

(assert (=> b!520761 (= res!318779 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238608 lt!238610 lt!238606 mask!3524) (Intermediate!4415 false (index!19865 lt!238609) (x!48876 lt!238609))))))

(declare-fun e!303868 () Bool)

(assert (=> b!520761 (=> (not res!318779) (not e!303868))))

(assert (=> b!520761 e!303868))

(declare-fun b!520762 () Bool)

(declare-fun res!318771 () Bool)

(assert (=> b!520762 (=> (not res!318771) (not e!303864))))

(declare-fun arrayContainsKey!0 (array!33176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520762 (= res!318771 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520763 () Bool)

(assert (=> b!520763 (= e!303868 false)))

(declare-fun b!520764 () Bool)

(declare-fun res!318777 () Bool)

(assert (=> b!520764 (=> (not res!318777) (not e!303866))))

(assert (=> b!520764 (= res!318777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520765 () Bool)

(assert (=> b!520765 (= e!303863 (= (seekEntryOrOpen!0 (select (arr!15941 a!3235) j!176) a!3235 mask!3524) (Found!4415 j!176)))))

(declare-fun b!520766 () Bool)

(declare-fun res!318780 () Bool)

(assert (=> b!520766 (=> (not res!318780) (not e!303866))))

(declare-datatypes ((List!10152 0))(
  ( (Nil!10149) (Cons!10148 (h!11070 (_ BitVec 64)) (t!16388 List!10152)) )
))
(declare-fun arrayNoDuplicates!0 (array!33176 (_ BitVec 32) List!10152) Bool)

(assert (=> b!520766 (= res!318780 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10149))))

(declare-fun b!520755 () Bool)

(declare-fun res!318782 () Bool)

(assert (=> b!520755 (=> res!318782 e!303867)))

(assert (=> b!520755 (= res!318782 (or (undefined!5227 lt!238609) (not (is-Intermediate!4415 lt!238609))))))

(declare-fun res!318774 () Bool)

(assert (=> start!47390 (=> (not res!318774) (not e!303864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47390 (= res!318774 (validMask!0 mask!3524))))

(assert (=> start!47390 e!303864))

(assert (=> start!47390 true))

(declare-fun array_inv!11715 (array!33176) Bool)

(assert (=> start!47390 (array_inv!11715 a!3235)))

(assert (= (and start!47390 res!318774) b!520759))

(assert (= (and b!520759 res!318778) b!520754))

(assert (= (and b!520754 res!318781) b!520756))

(assert (= (and b!520756 res!318772) b!520762))

(assert (= (and b!520762 res!318771) b!520757))

(assert (= (and b!520757 res!318776) b!520764))

(assert (= (and b!520764 res!318777) b!520766))

(assert (= (and b!520766 res!318780) b!520760))

(assert (= (and b!520760 res!318775) b!520765))

(assert (= (and b!520760 (not res!318773)) b!520755))

(assert (= (and b!520755 (not res!318782)) b!520753))

(assert (= (and b!520753 c!61292) b!520761))

(assert (= (and b!520753 (not c!61292)) b!520758))

(assert (= (and b!520761 res!318779) b!520763))

(declare-fun m!501703 () Bool)

(assert (=> b!520765 m!501703))

(assert (=> b!520765 m!501703))

(declare-fun m!501705 () Bool)

(assert (=> b!520765 m!501705))

(declare-fun m!501707 () Bool)

(assert (=> b!520766 m!501707))

(assert (=> b!520754 m!501703))

(assert (=> b!520754 m!501703))

(declare-fun m!501709 () Bool)

(assert (=> b!520754 m!501709))

(declare-fun m!501711 () Bool)

(assert (=> b!520757 m!501711))

(declare-fun m!501713 () Bool)

(assert (=> b!520761 m!501713))

(declare-fun m!501715 () Bool)

(assert (=> b!520761 m!501715))

(assert (=> b!520760 m!501703))

(declare-fun m!501717 () Bool)

(assert (=> b!520760 m!501717))

(declare-fun m!501719 () Bool)

(assert (=> b!520760 m!501719))

(declare-fun m!501721 () Bool)

(assert (=> b!520760 m!501721))

(declare-fun m!501723 () Bool)

(assert (=> b!520760 m!501723))

(declare-fun m!501725 () Bool)

(assert (=> b!520760 m!501725))

(assert (=> b!520760 m!501703))

(declare-fun m!501727 () Bool)

(assert (=> b!520760 m!501727))

(assert (=> b!520760 m!501703))

(declare-fun m!501729 () Bool)

(assert (=> b!520760 m!501729))

(declare-fun m!501731 () Bool)

(assert (=> b!520760 m!501731))

(declare-fun m!501733 () Bool)

(assert (=> b!520762 m!501733))

(declare-fun m!501735 () Bool)

(assert (=> b!520756 m!501735))

(declare-fun m!501737 () Bool)

(assert (=> b!520753 m!501737))

(assert (=> b!520753 m!501703))

(declare-fun m!501739 () Bool)

(assert (=> start!47390 m!501739))

(declare-fun m!501741 () Bool)

(assert (=> start!47390 m!501741))

(declare-fun m!501743 () Bool)

(assert (=> b!520764 m!501743))

(push 1)

