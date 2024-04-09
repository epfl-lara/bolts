; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45638 () Bool)

(assert start!45638)

(declare-fun res!304262 () Bool)

(declare-fun e!294459 () Bool)

(assert (=> start!45638 (=> (not res!304262) (not e!294459))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45638 (= res!304262 (validMask!0 mask!3524))))

(assert (=> start!45638 e!294459))

(assert (=> start!45638 true))

(declare-datatypes ((array!32354 0))(
  ( (array!32355 (arr!15554 (Array (_ BitVec 32) (_ BitVec 64))) (size!15918 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32354)

(declare-fun array_inv!11328 (array!32354) Bool)

(assert (=> start!45638 (array_inv!11328 a!3235)))

(declare-fun b!502747 () Bool)

(declare-fun res!304261 () Bool)

(declare-fun e!294457 () Bool)

(assert (=> b!502747 (=> (not res!304261) (not e!294457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32354 (_ BitVec 32)) Bool)

(assert (=> b!502747 (= res!304261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502748 () Bool)

(declare-datatypes ((Unit!15202 0))(
  ( (Unit!15203) )
))
(declare-fun e!294453 () Unit!15202)

(declare-fun Unit!15204 () Unit!15202)

(assert (=> b!502748 (= e!294453 Unit!15204)))

(declare-fun b!502749 () Bool)

(declare-fun res!304263 () Bool)

(assert (=> b!502749 (=> (not res!304263) (not e!294457))))

(declare-datatypes ((List!9765 0))(
  ( (Nil!9762) (Cons!9761 (h!10638 (_ BitVec 64)) (t!16001 List!9765)) )
))
(declare-fun arrayNoDuplicates!0 (array!32354 (_ BitVec 32) List!9765) Bool)

(assert (=> b!502749 (= res!304263 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9762))))

(declare-fun lt!228667 () (_ BitVec 32))

(declare-fun e!294460 () Bool)

(declare-fun b!502750 () Bool)

(declare-datatypes ((SeekEntryResult!4028 0))(
  ( (MissingZero!4028 (index!18300 (_ BitVec 32))) (Found!4028 (index!18301 (_ BitVec 32))) (Intermediate!4028 (undefined!4840 Bool) (index!18302 (_ BitVec 32)) (x!47352 (_ BitVec 32))) (Undefined!4028) (MissingVacant!4028 (index!18303 (_ BitVec 32))) )
))
(declare-fun lt!228665 () SeekEntryResult!4028)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32354 (_ BitVec 32)) SeekEntryResult!4028)

(assert (=> b!502750 (= e!294460 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228667 (index!18302 lt!228665) (select (arr!15554 a!3235) j!176) a!3235 mask!3524) (Found!4028 j!176))))))

(declare-fun b!502751 () Bool)

(declare-fun res!304267 () Bool)

(assert (=> b!502751 (=> (not res!304267) (not e!294459))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502751 (= res!304267 (and (= (size!15918 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15918 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15918 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502752 () Bool)

(declare-fun res!304268 () Bool)

(assert (=> b!502752 (=> (not res!304268) (not e!294459))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502752 (= res!304268 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502753 () Bool)

(declare-fun res!304255 () Bool)

(assert (=> b!502753 (=> (not res!304255) (not e!294459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502753 (= res!304255 (validKeyInArray!0 k!2280))))

(declare-fun b!502754 () Bool)

(declare-fun res!304266 () Bool)

(declare-fun e!294456 () Bool)

(assert (=> b!502754 (=> res!304266 e!294456)))

(assert (=> b!502754 (= res!304266 e!294460)))

(declare-fun res!304260 () Bool)

(assert (=> b!502754 (=> (not res!304260) (not e!294460))))

(assert (=> b!502754 (= res!304260 (bvsgt #b00000000000000000000000000000000 (x!47352 lt!228665)))))

(declare-fun b!502755 () Bool)

(declare-fun e!294458 () Bool)

(assert (=> b!502755 (= e!294458 e!294456)))

(declare-fun res!304259 () Bool)

(assert (=> b!502755 (=> res!304259 e!294456)))

(assert (=> b!502755 (= res!304259 (or (bvsgt (x!47352 lt!228665) #b01111111111111111111111111111110) (bvslt lt!228667 #b00000000000000000000000000000000) (bvsge lt!228667 (size!15918 a!3235)) (bvslt (index!18302 lt!228665) #b00000000000000000000000000000000) (bvsge (index!18302 lt!228665) (size!15918 a!3235)) (not (= lt!228665 (Intermediate!4028 false (index!18302 lt!228665) (x!47352 lt!228665))))))))

(assert (=> b!502755 (= (index!18302 lt!228665) i!1204)))

(declare-fun lt!228664 () Unit!15202)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32354 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15202)

(assert (=> b!502755 (= lt!228664 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228667 #b00000000000000000000000000000000 (index!18302 lt!228665) (x!47352 lt!228665) mask!3524))))

(assert (=> b!502755 (and (or (= (select (arr!15554 a!3235) (index!18302 lt!228665)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15554 a!3235) (index!18302 lt!228665)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15554 a!3235) (index!18302 lt!228665)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15554 a!3235) (index!18302 lt!228665)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228673 () Unit!15202)

(assert (=> b!502755 (= lt!228673 e!294453)))

(declare-fun c!59525 () Bool)

(assert (=> b!502755 (= c!59525 (= (select (arr!15554 a!3235) (index!18302 lt!228665)) (select (arr!15554 a!3235) j!176)))))

(assert (=> b!502755 (and (bvslt (x!47352 lt!228665) #b01111111111111111111111111111110) (or (= (select (arr!15554 a!3235) (index!18302 lt!228665)) (select (arr!15554 a!3235) j!176)) (= (select (arr!15554 a!3235) (index!18302 lt!228665)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15554 a!3235) (index!18302 lt!228665)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502756 () Bool)

(declare-fun Unit!15205 () Unit!15202)

(assert (=> b!502756 (= e!294453 Unit!15205)))

(declare-fun lt!228666 () Unit!15202)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32354 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15202)

(assert (=> b!502756 (= lt!228666 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228667 #b00000000000000000000000000000000 (index!18302 lt!228665) (x!47352 lt!228665) mask!3524))))

(declare-fun res!304257 () Bool)

(declare-fun lt!228672 () array!32354)

(declare-fun lt!228668 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32354 (_ BitVec 32)) SeekEntryResult!4028)

(assert (=> b!502756 (= res!304257 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228667 lt!228668 lt!228672 mask!3524) (Intermediate!4028 false (index!18302 lt!228665) (x!47352 lt!228665))))))

(declare-fun e!294452 () Bool)

(assert (=> b!502756 (=> (not res!304257) (not e!294452))))

(assert (=> b!502756 e!294452))

(declare-fun b!502757 () Bool)

(assert (=> b!502757 (= e!294459 e!294457)))

(declare-fun res!304258 () Bool)

(assert (=> b!502757 (=> (not res!304258) (not e!294457))))

(declare-fun lt!228669 () SeekEntryResult!4028)

(assert (=> b!502757 (= res!304258 (or (= lt!228669 (MissingZero!4028 i!1204)) (= lt!228669 (MissingVacant!4028 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32354 (_ BitVec 32)) SeekEntryResult!4028)

(assert (=> b!502757 (= lt!228669 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!294454 () Bool)

(declare-fun b!502758 () Bool)

(assert (=> b!502758 (= e!294454 (= (seekEntryOrOpen!0 (select (arr!15554 a!3235) j!176) a!3235 mask!3524) (Found!4028 j!176)))))

(declare-fun b!502759 () Bool)

(declare-fun res!304254 () Bool)

(assert (=> b!502759 (=> res!304254 e!294458)))

(assert (=> b!502759 (= res!304254 (or (undefined!4840 lt!228665) (not (is-Intermediate!4028 lt!228665))))))

(declare-fun b!502760 () Bool)

(assert (=> b!502760 (= e!294456 true)))

(declare-fun lt!228674 () SeekEntryResult!4028)

(assert (=> b!502760 (= lt!228674 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228667 lt!228668 lt!228672 mask!3524))))

(declare-fun b!502761 () Bool)

(declare-fun res!304256 () Bool)

(assert (=> b!502761 (=> (not res!304256) (not e!294459))))

(assert (=> b!502761 (= res!304256 (validKeyInArray!0 (select (arr!15554 a!3235) j!176)))))

(declare-fun b!502762 () Bool)

(assert (=> b!502762 (= e!294457 (not e!294458))))

(declare-fun res!304264 () Bool)

(assert (=> b!502762 (=> res!304264 e!294458)))

(declare-fun lt!228671 () (_ BitVec 32))

(assert (=> b!502762 (= res!304264 (= lt!228665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228671 lt!228668 lt!228672 mask!3524)))))

(assert (=> b!502762 (= lt!228665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228667 (select (arr!15554 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502762 (= lt!228671 (toIndex!0 lt!228668 mask!3524))))

(assert (=> b!502762 (= lt!228668 (select (store (arr!15554 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502762 (= lt!228667 (toIndex!0 (select (arr!15554 a!3235) j!176) mask!3524))))

(assert (=> b!502762 (= lt!228672 (array!32355 (store (arr!15554 a!3235) i!1204 k!2280) (size!15918 a!3235)))))

(assert (=> b!502762 e!294454))

(declare-fun res!304265 () Bool)

(assert (=> b!502762 (=> (not res!304265) (not e!294454))))

(assert (=> b!502762 (= res!304265 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228670 () Unit!15202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32354 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15202)

(assert (=> b!502762 (= lt!228670 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502763 () Bool)

(assert (=> b!502763 (= e!294452 false)))

(assert (= (and start!45638 res!304262) b!502751))

(assert (= (and b!502751 res!304267) b!502761))

(assert (= (and b!502761 res!304256) b!502753))

(assert (= (and b!502753 res!304255) b!502752))

(assert (= (and b!502752 res!304268) b!502757))

(assert (= (and b!502757 res!304258) b!502747))

(assert (= (and b!502747 res!304261) b!502749))

(assert (= (and b!502749 res!304263) b!502762))

(assert (= (and b!502762 res!304265) b!502758))

(assert (= (and b!502762 (not res!304264)) b!502759))

(assert (= (and b!502759 (not res!304254)) b!502755))

(assert (= (and b!502755 c!59525) b!502756))

(assert (= (and b!502755 (not c!59525)) b!502748))

(assert (= (and b!502756 res!304257) b!502763))

(assert (= (and b!502755 (not res!304259)) b!502754))

(assert (= (and b!502754 res!304260) b!502750))

(assert (= (and b!502754 (not res!304266)) b!502760))

(declare-fun m!483669 () Bool)

(assert (=> b!502753 m!483669))

(declare-fun m!483671 () Bool)

(assert (=> b!502757 m!483671))

(declare-fun m!483673 () Bool)

(assert (=> b!502747 m!483673))

(declare-fun m!483675 () Bool)

(assert (=> start!45638 m!483675))

(declare-fun m!483677 () Bool)

(assert (=> start!45638 m!483677))

(declare-fun m!483679 () Bool)

(assert (=> b!502755 m!483679))

(declare-fun m!483681 () Bool)

(assert (=> b!502755 m!483681))

(declare-fun m!483683 () Bool)

(assert (=> b!502755 m!483683))

(assert (=> b!502750 m!483683))

(assert (=> b!502750 m!483683))

(declare-fun m!483685 () Bool)

(assert (=> b!502750 m!483685))

(declare-fun m!483687 () Bool)

(assert (=> b!502760 m!483687))

(declare-fun m!483689 () Bool)

(assert (=> b!502752 m!483689))

(declare-fun m!483691 () Bool)

(assert (=> b!502762 m!483691))

(declare-fun m!483693 () Bool)

(assert (=> b!502762 m!483693))

(assert (=> b!502762 m!483683))

(declare-fun m!483695 () Bool)

(assert (=> b!502762 m!483695))

(assert (=> b!502762 m!483683))

(declare-fun m!483697 () Bool)

(assert (=> b!502762 m!483697))

(assert (=> b!502762 m!483683))

(declare-fun m!483699 () Bool)

(assert (=> b!502762 m!483699))

(declare-fun m!483701 () Bool)

(assert (=> b!502762 m!483701))

(declare-fun m!483703 () Bool)

(assert (=> b!502762 m!483703))

(declare-fun m!483705 () Bool)

(assert (=> b!502762 m!483705))

(declare-fun m!483707 () Bool)

(assert (=> b!502749 m!483707))

(assert (=> b!502761 m!483683))

(assert (=> b!502761 m!483683))

(declare-fun m!483709 () Bool)

(assert (=> b!502761 m!483709))

(declare-fun m!483711 () Bool)

(assert (=> b!502756 m!483711))

(assert (=> b!502756 m!483687))

(assert (=> b!502758 m!483683))

(assert (=> b!502758 m!483683))

(declare-fun m!483713 () Bool)

(assert (=> b!502758 m!483713))

(push 1)

