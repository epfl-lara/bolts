; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45640 () Bool)

(assert start!45640)

(declare-fun b!502798 () Bool)

(declare-fun res!304309 () Bool)

(declare-fun e!294482 () Bool)

(assert (=> b!502798 (=> (not res!304309) (not e!294482))))

(declare-datatypes ((array!32356 0))(
  ( (array!32357 (arr!15555 (Array (_ BitVec 32) (_ BitVec 64))) (size!15919 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32356)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502798 (= res!304309 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502800 () Bool)

(declare-fun res!304312 () Bool)

(assert (=> b!502800 (=> (not res!304312) (not e!294482))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!502800 (= res!304312 (and (= (size!15919 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15919 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15919 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502801 () Bool)

(declare-datatypes ((Unit!15206 0))(
  ( (Unit!15207) )
))
(declare-fun e!294485 () Unit!15206)

(declare-fun Unit!15208 () Unit!15206)

(assert (=> b!502801 (= e!294485 Unit!15208)))

(declare-fun b!502802 () Bool)

(declare-fun res!304307 () Bool)

(declare-fun e!294480 () Bool)

(assert (=> b!502802 (=> (not res!304307) (not e!294480))))

(declare-datatypes ((List!9766 0))(
  ( (Nil!9763) (Cons!9762 (h!10639 (_ BitVec 64)) (t!16002 List!9766)) )
))
(declare-fun arrayNoDuplicates!0 (array!32356 (_ BitVec 32) List!9766) Bool)

(assert (=> b!502802 (= res!304307 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9763))))

(declare-fun b!502803 () Bool)

(declare-fun e!294486 () Bool)

(declare-fun e!294479 () Bool)

(assert (=> b!502803 (= e!294486 e!294479)))

(declare-fun res!304304 () Bool)

(assert (=> b!502803 (=> res!304304 e!294479)))

(declare-fun lt!228704 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4029 0))(
  ( (MissingZero!4029 (index!18304 (_ BitVec 32))) (Found!4029 (index!18305 (_ BitVec 32))) (Intermediate!4029 (undefined!4841 Bool) (index!18306 (_ BitVec 32)) (x!47361 (_ BitVec 32))) (Undefined!4029) (MissingVacant!4029 (index!18307 (_ BitVec 32))) )
))
(declare-fun lt!228701 () SeekEntryResult!4029)

(assert (=> b!502803 (= res!304304 (or (bvsgt (x!47361 lt!228701) #b01111111111111111111111111111110) (bvslt lt!228704 #b00000000000000000000000000000000) (bvsge lt!228704 (size!15919 a!3235)) (bvslt (index!18306 lt!228701) #b00000000000000000000000000000000) (bvsge (index!18306 lt!228701) (size!15919 a!3235)) (not (= lt!228701 (Intermediate!4029 false (index!18306 lt!228701) (x!47361 lt!228701))))))))

(assert (=> b!502803 (= (index!18306 lt!228701) i!1204)))

(declare-fun lt!228706 () Unit!15206)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32356 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15206)

(assert (=> b!502803 (= lt!228706 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228704 #b00000000000000000000000000000000 (index!18306 lt!228701) (x!47361 lt!228701) mask!3524))))

(assert (=> b!502803 (and (or (= (select (arr!15555 a!3235) (index!18306 lt!228701)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15555 a!3235) (index!18306 lt!228701)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15555 a!3235) (index!18306 lt!228701)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15555 a!3235) (index!18306 lt!228701)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228702 () Unit!15206)

(assert (=> b!502803 (= lt!228702 e!294485)))

(declare-fun c!59528 () Bool)

(assert (=> b!502803 (= c!59528 (= (select (arr!15555 a!3235) (index!18306 lt!228701)) (select (arr!15555 a!3235) j!176)))))

(assert (=> b!502803 (and (bvslt (x!47361 lt!228701) #b01111111111111111111111111111110) (or (= (select (arr!15555 a!3235) (index!18306 lt!228701)) (select (arr!15555 a!3235) j!176)) (= (select (arr!15555 a!3235) (index!18306 lt!228701)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15555 a!3235) (index!18306 lt!228701)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502804 () Bool)

(assert (=> b!502804 (= e!294479 true)))

(declare-fun lt!228700 () (_ BitVec 64))

(declare-fun lt!228705 () array!32356)

(declare-fun lt!228698 () SeekEntryResult!4029)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32356 (_ BitVec 32)) SeekEntryResult!4029)

(assert (=> b!502804 (= lt!228698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228704 lt!228700 lt!228705 mask!3524))))

(declare-fun b!502805 () Bool)

(declare-fun res!304302 () Bool)

(assert (=> b!502805 (=> res!304302 e!294479)))

(declare-fun e!294487 () Bool)

(assert (=> b!502805 (= res!304302 e!294487)))

(declare-fun res!304310 () Bool)

(assert (=> b!502805 (=> (not res!304310) (not e!294487))))

(assert (=> b!502805 (= res!304310 (bvsgt #b00000000000000000000000000000000 (x!47361 lt!228701)))))

(declare-fun b!502806 () Bool)

(declare-fun res!304303 () Bool)

(assert (=> b!502806 (=> (not res!304303) (not e!294482))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502806 (= res!304303 (validKeyInArray!0 (select (arr!15555 a!3235) j!176)))))

(declare-fun b!502807 () Bool)

(assert (=> b!502807 (= e!294480 (not e!294486))))

(declare-fun res!304301 () Bool)

(assert (=> b!502807 (=> res!304301 e!294486)))

(declare-fun lt!228699 () (_ BitVec 32))

(assert (=> b!502807 (= res!304301 (= lt!228701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228699 lt!228700 lt!228705 mask!3524)))))

(assert (=> b!502807 (= lt!228701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228704 (select (arr!15555 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502807 (= lt!228699 (toIndex!0 lt!228700 mask!3524))))

(assert (=> b!502807 (= lt!228700 (select (store (arr!15555 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502807 (= lt!228704 (toIndex!0 (select (arr!15555 a!3235) j!176) mask!3524))))

(assert (=> b!502807 (= lt!228705 (array!32357 (store (arr!15555 a!3235) i!1204 k!2280) (size!15919 a!3235)))))

(declare-fun e!294481 () Bool)

(assert (=> b!502807 e!294481))

(declare-fun res!304311 () Bool)

(assert (=> b!502807 (=> (not res!304311) (not e!294481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32356 (_ BitVec 32)) Bool)

(assert (=> b!502807 (= res!304311 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228703 () Unit!15206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32356 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15206)

(assert (=> b!502807 (= lt!228703 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502808 () Bool)

(declare-fun res!304299 () Bool)

(assert (=> b!502808 (=> (not res!304299) (not e!294480))))

(assert (=> b!502808 (= res!304299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502809 () Bool)

(assert (=> b!502809 (= e!294482 e!294480)))

(declare-fun res!304313 () Bool)

(assert (=> b!502809 (=> (not res!304313) (not e!294480))))

(declare-fun lt!228707 () SeekEntryResult!4029)

(assert (=> b!502809 (= res!304313 (or (= lt!228707 (MissingZero!4029 i!1204)) (= lt!228707 (MissingVacant!4029 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32356 (_ BitVec 32)) SeekEntryResult!4029)

(assert (=> b!502809 (= lt!228707 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!502810 () Bool)

(assert (=> b!502810 (= e!294481 (= (seekEntryOrOpen!0 (select (arr!15555 a!3235) j!176) a!3235 mask!3524) (Found!4029 j!176)))))

(declare-fun b!502811 () Bool)

(declare-fun res!304308 () Bool)

(assert (=> b!502811 (=> (not res!304308) (not e!294482))))

(assert (=> b!502811 (= res!304308 (validKeyInArray!0 k!2280))))

(declare-fun b!502812 () Bool)

(declare-fun e!294483 () Bool)

(assert (=> b!502812 (= e!294483 false)))

(declare-fun res!304300 () Bool)

(assert (=> start!45640 (=> (not res!304300) (not e!294482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45640 (= res!304300 (validMask!0 mask!3524))))

(assert (=> start!45640 e!294482))

(assert (=> start!45640 true))

(declare-fun array_inv!11329 (array!32356) Bool)

(assert (=> start!45640 (array_inv!11329 a!3235)))

(declare-fun b!502799 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32356 (_ BitVec 32)) SeekEntryResult!4029)

(assert (=> b!502799 (= e!294487 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228704 (index!18306 lt!228701) (select (arr!15555 a!3235) j!176) a!3235 mask!3524) (Found!4029 j!176))))))

(declare-fun b!502813 () Bool)

(declare-fun res!304306 () Bool)

(assert (=> b!502813 (=> res!304306 e!294486)))

(assert (=> b!502813 (= res!304306 (or (undefined!4841 lt!228701) (not (is-Intermediate!4029 lt!228701))))))

(declare-fun b!502814 () Bool)

(declare-fun Unit!15209 () Unit!15206)

(assert (=> b!502814 (= e!294485 Unit!15209)))

(declare-fun lt!228697 () Unit!15206)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32356 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15206)

(assert (=> b!502814 (= lt!228697 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228704 #b00000000000000000000000000000000 (index!18306 lt!228701) (x!47361 lt!228701) mask!3524))))

(declare-fun res!304305 () Bool)

(assert (=> b!502814 (= res!304305 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228704 lt!228700 lt!228705 mask!3524) (Intermediate!4029 false (index!18306 lt!228701) (x!47361 lt!228701))))))

(assert (=> b!502814 (=> (not res!304305) (not e!294483))))

(assert (=> b!502814 e!294483))

(assert (= (and start!45640 res!304300) b!502800))

(assert (= (and b!502800 res!304312) b!502806))

(assert (= (and b!502806 res!304303) b!502811))

(assert (= (and b!502811 res!304308) b!502798))

(assert (= (and b!502798 res!304309) b!502809))

(assert (= (and b!502809 res!304313) b!502808))

(assert (= (and b!502808 res!304299) b!502802))

(assert (= (and b!502802 res!304307) b!502807))

(assert (= (and b!502807 res!304311) b!502810))

(assert (= (and b!502807 (not res!304301)) b!502813))

(assert (= (and b!502813 (not res!304306)) b!502803))

(assert (= (and b!502803 c!59528) b!502814))

(assert (= (and b!502803 (not c!59528)) b!502801))

(assert (= (and b!502814 res!304305) b!502812))

(assert (= (and b!502803 (not res!304304)) b!502805))

(assert (= (and b!502805 res!304310) b!502799))

(assert (= (and b!502805 (not res!304302)) b!502804))

(declare-fun m!483715 () Bool)

(assert (=> b!502814 m!483715))

(declare-fun m!483717 () Bool)

(assert (=> b!502814 m!483717))

(declare-fun m!483719 () Bool)

(assert (=> start!45640 m!483719))

(declare-fun m!483721 () Bool)

(assert (=> start!45640 m!483721))

(declare-fun m!483723 () Bool)

(assert (=> b!502810 m!483723))

(assert (=> b!502810 m!483723))

(declare-fun m!483725 () Bool)

(assert (=> b!502810 m!483725))

(declare-fun m!483727 () Bool)

(assert (=> b!502811 m!483727))

(declare-fun m!483729 () Bool)

(assert (=> b!502798 m!483729))

(declare-fun m!483731 () Bool)

(assert (=> b!502807 m!483731))

(declare-fun m!483733 () Bool)

(assert (=> b!502807 m!483733))

(assert (=> b!502807 m!483723))

(declare-fun m!483735 () Bool)

(assert (=> b!502807 m!483735))

(declare-fun m!483737 () Bool)

(assert (=> b!502807 m!483737))

(assert (=> b!502807 m!483723))

(declare-fun m!483739 () Bool)

(assert (=> b!502807 m!483739))

(assert (=> b!502807 m!483723))

(declare-fun m!483741 () Bool)

(assert (=> b!502807 m!483741))

(declare-fun m!483743 () Bool)

(assert (=> b!502807 m!483743))

(declare-fun m!483745 () Bool)

(assert (=> b!502807 m!483745))

(assert (=> b!502806 m!483723))

(assert (=> b!502806 m!483723))

(declare-fun m!483747 () Bool)

(assert (=> b!502806 m!483747))

(assert (=> b!502804 m!483717))

(declare-fun m!483749 () Bool)

(assert (=> b!502808 m!483749))

(declare-fun m!483751 () Bool)

(assert (=> b!502802 m!483751))

(assert (=> b!502799 m!483723))

(assert (=> b!502799 m!483723))

(declare-fun m!483753 () Bool)

(assert (=> b!502799 m!483753))

(declare-fun m!483755 () Bool)

(assert (=> b!502803 m!483755))

(declare-fun m!483757 () Bool)

(assert (=> b!502803 m!483757))

(assert (=> b!502803 m!483723))

(declare-fun m!483759 () Bool)

(assert (=> b!502809 m!483759))

(push 1)

