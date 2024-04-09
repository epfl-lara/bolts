; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47438 () Bool)

(assert start!47438)

(declare-fun b!521761 () Bool)

(declare-fun e!304371 () Bool)

(declare-fun e!304369 () Bool)

(assert (=> b!521761 (= e!304371 (not e!304369))))

(declare-fun res!319635 () Bool)

(assert (=> b!521761 (=> res!319635 e!304369)))

(declare-fun lt!239257 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4439 0))(
  ( (MissingZero!4439 (index!19959 (_ BitVec 32))) (Found!4439 (index!19960 (_ BitVec 32))) (Intermediate!4439 (undefined!5251 Bool) (index!19961 (_ BitVec 32)) (x!48964 (_ BitVec 32))) (Undefined!4439) (MissingVacant!4439 (index!19962 (_ BitVec 32))) )
))
(declare-fun lt!239258 () SeekEntryResult!4439)

(declare-fun lt!239259 () (_ BitVec 64))

(declare-datatypes ((array!33224 0))(
  ( (array!33225 (arr!15965 (Array (_ BitVec 32) (_ BitVec 64))) (size!16329 (_ BitVec 32))) )
))
(declare-fun lt!239253 () array!33224)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33224 (_ BitVec 32)) SeekEntryResult!4439)

(assert (=> b!521761 (= res!319635 (= lt!239258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239257 lt!239259 lt!239253 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!239260 () (_ BitVec 32))

(declare-fun a!3235 () array!33224)

(assert (=> b!521761 (= lt!239258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239260 (select (arr!15965 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521761 (= lt!239257 (toIndex!0 lt!239259 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521761 (= lt!239259 (select (store (arr!15965 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521761 (= lt!239260 (toIndex!0 (select (arr!15965 a!3235) j!176) mask!3524))))

(assert (=> b!521761 (= lt!239253 (array!33225 (store (arr!15965 a!3235) i!1204 k!2280) (size!16329 a!3235)))))

(declare-fun e!304367 () Bool)

(assert (=> b!521761 e!304367))

(declare-fun res!319638 () Bool)

(assert (=> b!521761 (=> (not res!319638) (not e!304367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33224 (_ BitVec 32)) Bool)

(assert (=> b!521761 (= res!319638 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16222 0))(
  ( (Unit!16223) )
))
(declare-fun lt!239256 () Unit!16222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33224 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16222)

(assert (=> b!521761 (= lt!239256 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521762 () Bool)

(declare-fun res!319643 () Bool)

(assert (=> b!521762 (=> (not res!319643) (not e!304371))))

(assert (=> b!521762 (= res!319643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!319640 () Bool)

(declare-fun e!304366 () Bool)

(assert (=> start!47438 (=> (not res!319640) (not e!304366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47438 (= res!319640 (validMask!0 mask!3524))))

(assert (=> start!47438 e!304366))

(assert (=> start!47438 true))

(declare-fun array_inv!11739 (array!33224) Bool)

(assert (=> start!47438 (array_inv!11739 a!3235)))

(declare-fun b!521763 () Bool)

(declare-fun e!304372 () Bool)

(assert (=> b!521763 (= e!304372 false)))

(declare-fun b!521764 () Bool)

(declare-fun res!319642 () Bool)

(assert (=> b!521764 (=> (not res!319642) (not e!304371))))

(declare-datatypes ((List!10176 0))(
  ( (Nil!10173) (Cons!10172 (h!11094 (_ BitVec 64)) (t!16412 List!10176)) )
))
(declare-fun arrayNoDuplicates!0 (array!33224 (_ BitVec 32) List!10176) Bool)

(assert (=> b!521764 (= res!319642 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10173))))

(declare-fun b!521765 () Bool)

(declare-fun res!319645 () Bool)

(assert (=> b!521765 (=> (not res!319645) (not e!304366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521765 (= res!319645 (validKeyInArray!0 (select (arr!15965 a!3235) j!176)))))

(declare-fun b!521766 () Bool)

(declare-fun res!319639 () Bool)

(assert (=> b!521766 (=> (not res!319639) (not e!304366))))

(assert (=> b!521766 (= res!319639 (and (= (size!16329 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16329 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16329 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521767 () Bool)

(declare-fun e!304370 () Unit!16222)

(declare-fun Unit!16224 () Unit!16222)

(assert (=> b!521767 (= e!304370 Unit!16224)))

(declare-fun lt!239261 () Unit!16222)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33224 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16222)

(assert (=> b!521767 (= lt!239261 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239260 #b00000000000000000000000000000000 (index!19961 lt!239258) (x!48964 lt!239258) mask!3524))))

(declare-fun res!319637 () Bool)

(assert (=> b!521767 (= res!319637 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239260 lt!239259 lt!239253 mask!3524) (Intermediate!4439 false (index!19961 lt!239258) (x!48964 lt!239258))))))

(assert (=> b!521767 (=> (not res!319637) (not e!304372))))

(assert (=> b!521767 e!304372))

(declare-fun b!521768 () Bool)

(declare-fun Unit!16225 () Unit!16222)

(assert (=> b!521768 (= e!304370 Unit!16225)))

(declare-fun b!521769 () Bool)

(declare-fun res!319646 () Bool)

(assert (=> b!521769 (=> (not res!319646) (not e!304366))))

(assert (=> b!521769 (= res!319646 (validKeyInArray!0 k!2280))))

(declare-fun b!521770 () Bool)

(declare-fun res!319636 () Bool)

(assert (=> b!521770 (=> (not res!319636) (not e!304366))))

(declare-fun arrayContainsKey!0 (array!33224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521770 (= res!319636 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521771 () Bool)

(declare-fun res!319644 () Bool)

(assert (=> b!521771 (=> res!319644 e!304369)))

(assert (=> b!521771 (= res!319644 (or (undefined!5251 lt!239258) (not (is-Intermediate!4439 lt!239258))))))

(declare-fun b!521772 () Bool)

(assert (=> b!521772 (= e!304366 e!304371)))

(declare-fun res!319641 () Bool)

(assert (=> b!521772 (=> (not res!319641) (not e!304371))))

(declare-fun lt!239254 () SeekEntryResult!4439)

(assert (=> b!521772 (= res!319641 (or (= lt!239254 (MissingZero!4439 i!1204)) (= lt!239254 (MissingVacant!4439 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33224 (_ BitVec 32)) SeekEntryResult!4439)

(assert (=> b!521772 (= lt!239254 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521773 () Bool)

(assert (=> b!521773 (= e!304367 (= (seekEntryOrOpen!0 (select (arr!15965 a!3235) j!176) a!3235 mask!3524) (Found!4439 j!176)))))

(declare-fun b!521774 () Bool)

(assert (=> b!521774 (= e!304369 true)))

(assert (=> b!521774 (and (or (= (select (arr!15965 a!3235) (index!19961 lt!239258)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15965 a!3235) (index!19961 lt!239258)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15965 a!3235) (index!19961 lt!239258)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15965 a!3235) (index!19961 lt!239258)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239255 () Unit!16222)

(assert (=> b!521774 (= lt!239255 e!304370)))

(declare-fun c!61364 () Bool)

(assert (=> b!521774 (= c!61364 (= (select (arr!15965 a!3235) (index!19961 lt!239258)) (select (arr!15965 a!3235) j!176)))))

(assert (=> b!521774 (and (bvslt (x!48964 lt!239258) #b01111111111111111111111111111110) (or (= (select (arr!15965 a!3235) (index!19961 lt!239258)) (select (arr!15965 a!3235) j!176)) (= (select (arr!15965 a!3235) (index!19961 lt!239258)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15965 a!3235) (index!19961 lt!239258)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47438 res!319640) b!521766))

(assert (= (and b!521766 res!319639) b!521765))

(assert (= (and b!521765 res!319645) b!521769))

(assert (= (and b!521769 res!319646) b!521770))

(assert (= (and b!521770 res!319636) b!521772))

(assert (= (and b!521772 res!319641) b!521762))

(assert (= (and b!521762 res!319643) b!521764))

(assert (= (and b!521764 res!319642) b!521761))

(assert (= (and b!521761 res!319638) b!521773))

(assert (= (and b!521761 (not res!319635)) b!521771))

(assert (= (and b!521771 (not res!319644)) b!521774))

(assert (= (and b!521774 c!61364) b!521767))

(assert (= (and b!521774 (not c!61364)) b!521768))

(assert (= (and b!521767 res!319637) b!521763))

(declare-fun m!502711 () Bool)

(assert (=> b!521770 m!502711))

(declare-fun m!502713 () Bool)

(assert (=> b!521773 m!502713))

(assert (=> b!521773 m!502713))

(declare-fun m!502715 () Bool)

(assert (=> b!521773 m!502715))

(declare-fun m!502717 () Bool)

(assert (=> b!521774 m!502717))

(assert (=> b!521774 m!502713))

(declare-fun m!502719 () Bool)

(assert (=> b!521764 m!502719))

(assert (=> b!521765 m!502713))

(assert (=> b!521765 m!502713))

(declare-fun m!502721 () Bool)

(assert (=> b!521765 m!502721))

(declare-fun m!502723 () Bool)

(assert (=> b!521772 m!502723))

(declare-fun m!502725 () Bool)

(assert (=> b!521762 m!502725))

(declare-fun m!502727 () Bool)

(assert (=> b!521769 m!502727))

(declare-fun m!502729 () Bool)

(assert (=> start!47438 m!502729))

(declare-fun m!502731 () Bool)

(assert (=> start!47438 m!502731))

(declare-fun m!502733 () Bool)

(assert (=> b!521767 m!502733))

(declare-fun m!502735 () Bool)

(assert (=> b!521767 m!502735))

(assert (=> b!521761 m!502713))

(declare-fun m!502737 () Bool)

(assert (=> b!521761 m!502737))

(declare-fun m!502739 () Bool)

(assert (=> b!521761 m!502739))

(declare-fun m!502741 () Bool)

(assert (=> b!521761 m!502741))

(declare-fun m!502743 () Bool)

(assert (=> b!521761 m!502743))

(assert (=> b!521761 m!502713))

(declare-fun m!502745 () Bool)

(assert (=> b!521761 m!502745))

(assert (=> b!521761 m!502713))

(declare-fun m!502747 () Bool)

(assert (=> b!521761 m!502747))

(declare-fun m!502749 () Bool)

(assert (=> b!521761 m!502749))

(declare-fun m!502751 () Bool)

(assert (=> b!521761 m!502751))

(push 1)

