; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45598 () Bool)

(assert start!45598)

(declare-fun b!501727 () Bool)

(declare-fun e!293915 () Bool)

(declare-fun e!293912 () Bool)

(assert (=> b!501727 (= e!293915 e!293912)))

(declare-fun res!303356 () Bool)

(assert (=> b!501727 (=> (not res!303356) (not e!293912))))

(declare-datatypes ((SeekEntryResult!4008 0))(
  ( (MissingZero!4008 (index!18220 (_ BitVec 32))) (Found!4008 (index!18221 (_ BitVec 32))) (Intermediate!4008 (undefined!4820 Bool) (index!18222 (_ BitVec 32)) (x!47284 (_ BitVec 32))) (Undefined!4008) (MissingVacant!4008 (index!18223 (_ BitVec 32))) )
))
(declare-fun lt!228013 () SeekEntryResult!4008)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!501727 (= res!303356 (or (= lt!228013 (MissingZero!4008 i!1204)) (= lt!228013 (MissingVacant!4008 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32314 0))(
  ( (array!32315 (arr!15534 (Array (_ BitVec 32) (_ BitVec 64))) (size!15898 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32314)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32314 (_ BitVec 32)) SeekEntryResult!4008)

(assert (=> b!501727 (= lt!228013 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!501728 () Bool)

(declare-fun lt!228006 () (_ BitVec 32))

(declare-fun e!293916 () Bool)

(declare-fun lt!228012 () SeekEntryResult!4008)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32314 (_ BitVec 32)) SeekEntryResult!4008)

(assert (=> b!501728 (= e!293916 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228006 (index!18222 lt!228012) (select (arr!15534 a!3235) j!176) a!3235 mask!3524) (Found!4008 j!176))))))

(declare-fun res!303362 () Bool)

(assert (=> start!45598 (=> (not res!303362) (not e!293915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45598 (= res!303362 (validMask!0 mask!3524))))

(assert (=> start!45598 e!293915))

(assert (=> start!45598 true))

(declare-fun array_inv!11308 (array!32314) Bool)

(assert (=> start!45598 (array_inv!11308 a!3235)))

(declare-fun b!501729 () Bool)

(declare-fun res!303366 () Bool)

(assert (=> b!501729 (=> (not res!303366) (not e!293912))))

(declare-datatypes ((List!9745 0))(
  ( (Nil!9742) (Cons!9741 (h!10618 (_ BitVec 64)) (t!15981 List!9745)) )
))
(declare-fun arrayNoDuplicates!0 (array!32314 (_ BitVec 32) List!9745) Bool)

(assert (=> b!501729 (= res!303366 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9742))))

(declare-fun b!501730 () Bool)

(declare-fun e!293919 () Bool)

(assert (=> b!501730 (= e!293919 false)))

(declare-fun b!501731 () Bool)

(declare-fun res!303354 () Bool)

(assert (=> b!501731 (=> (not res!303354) (not e!293915))))

(declare-fun arrayContainsKey!0 (array!32314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501731 (= res!303354 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501732 () Bool)

(declare-fun e!293918 () Bool)

(assert (=> b!501732 (= e!293918 true)))

(declare-fun lt!228010 () SeekEntryResult!4008)

(declare-fun lt!228005 () array!32314)

(declare-fun lt!228008 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32314 (_ BitVec 32)) SeekEntryResult!4008)

(assert (=> b!501732 (= lt!228010 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228006 lt!228008 lt!228005 mask!3524))))

(declare-fun b!501733 () Bool)

(declare-fun res!303358 () Bool)

(assert (=> b!501733 (=> (not res!303358) (not e!293915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501733 (= res!303358 (validKeyInArray!0 k!2280))))

(declare-fun b!501734 () Bool)

(declare-datatypes ((Unit!15122 0))(
  ( (Unit!15123) )
))
(declare-fun e!293913 () Unit!15122)

(declare-fun Unit!15124 () Unit!15122)

(assert (=> b!501734 (= e!293913 Unit!15124)))

(declare-fun b!501735 () Bool)

(declare-fun res!303355 () Bool)

(assert (=> b!501735 (=> res!303355 e!293918)))

(assert (=> b!501735 (= res!303355 e!293916)))

(declare-fun res!303359 () Bool)

(assert (=> b!501735 (=> (not res!303359) (not e!293916))))

(assert (=> b!501735 (= res!303359 (bvsgt #b00000000000000000000000000000000 (x!47284 lt!228012)))))

(declare-fun b!501736 () Bool)

(declare-fun res!303365 () Bool)

(assert (=> b!501736 (=> (not res!303365) (not e!293915))))

(assert (=> b!501736 (= res!303365 (validKeyInArray!0 (select (arr!15534 a!3235) j!176)))))

(declare-fun e!293920 () Bool)

(declare-fun b!501737 () Bool)

(assert (=> b!501737 (= e!293920 (= (seekEntryOrOpen!0 (select (arr!15534 a!3235) j!176) a!3235 mask!3524) (Found!4008 j!176)))))

(declare-fun b!501738 () Bool)

(declare-fun res!303360 () Bool)

(assert (=> b!501738 (=> (not res!303360) (not e!293912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32314 (_ BitVec 32)) Bool)

(assert (=> b!501738 (= res!303360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501739 () Bool)

(declare-fun e!293914 () Bool)

(assert (=> b!501739 (= e!293912 (not e!293914))))

(declare-fun res!303364 () Bool)

(assert (=> b!501739 (=> res!303364 e!293914)))

(declare-fun lt!228007 () (_ BitVec 32))

(assert (=> b!501739 (= res!303364 (= lt!228012 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228007 lt!228008 lt!228005 mask!3524)))))

(assert (=> b!501739 (= lt!228012 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228006 (select (arr!15534 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501739 (= lt!228007 (toIndex!0 lt!228008 mask!3524))))

(assert (=> b!501739 (= lt!228008 (select (store (arr!15534 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!501739 (= lt!228006 (toIndex!0 (select (arr!15534 a!3235) j!176) mask!3524))))

(assert (=> b!501739 (= lt!228005 (array!32315 (store (arr!15534 a!3235) i!1204 k!2280) (size!15898 a!3235)))))

(assert (=> b!501739 e!293920))

(declare-fun res!303361 () Bool)

(assert (=> b!501739 (=> (not res!303361) (not e!293920))))

(assert (=> b!501739 (= res!303361 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228009 () Unit!15122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32314 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15122)

(assert (=> b!501739 (= lt!228009 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501740 () Bool)

(declare-fun res!303357 () Bool)

(assert (=> b!501740 (=> res!303357 e!293914)))

(assert (=> b!501740 (= res!303357 (or (undefined!4820 lt!228012) (not (is-Intermediate!4008 lt!228012))))))

(declare-fun b!501741 () Bool)

(declare-fun Unit!15125 () Unit!15122)

(assert (=> b!501741 (= e!293913 Unit!15125)))

(declare-fun lt!228014 () Unit!15122)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32314 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15122)

(assert (=> b!501741 (= lt!228014 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228006 #b00000000000000000000000000000000 (index!18222 lt!228012) (x!47284 lt!228012) mask!3524))))

(declare-fun res!303368 () Bool)

(assert (=> b!501741 (= res!303368 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228006 lt!228008 lt!228005 mask!3524) (Intermediate!4008 false (index!18222 lt!228012) (x!47284 lt!228012))))))

(assert (=> b!501741 (=> (not res!303368) (not e!293919))))

(assert (=> b!501741 e!293919))

(declare-fun b!501742 () Bool)

(declare-fun res!303363 () Bool)

(assert (=> b!501742 (=> (not res!303363) (not e!293915))))

(assert (=> b!501742 (= res!303363 (and (= (size!15898 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15898 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15898 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501743 () Bool)

(assert (=> b!501743 (= e!293914 e!293918)))

(declare-fun res!303367 () Bool)

(assert (=> b!501743 (=> res!303367 e!293918)))

(assert (=> b!501743 (= res!303367 (or (bvsgt (x!47284 lt!228012) #b01111111111111111111111111111110) (bvslt lt!228006 #b00000000000000000000000000000000) (bvsge lt!228006 (size!15898 a!3235)) (bvslt (index!18222 lt!228012) #b00000000000000000000000000000000) (bvsge (index!18222 lt!228012) (size!15898 a!3235)) (not (= lt!228012 (Intermediate!4008 false (index!18222 lt!228012) (x!47284 lt!228012))))))))

(assert (=> b!501743 (= (index!18222 lt!228012) i!1204)))

(declare-fun lt!228004 () Unit!15122)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32314 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15122)

(assert (=> b!501743 (= lt!228004 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228006 #b00000000000000000000000000000000 (index!18222 lt!228012) (x!47284 lt!228012) mask!3524))))

(assert (=> b!501743 (and (or (= (select (arr!15534 a!3235) (index!18222 lt!228012)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15534 a!3235) (index!18222 lt!228012)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15534 a!3235) (index!18222 lt!228012)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15534 a!3235) (index!18222 lt!228012)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228011 () Unit!15122)

(assert (=> b!501743 (= lt!228011 e!293913)))

(declare-fun c!59465 () Bool)

(assert (=> b!501743 (= c!59465 (= (select (arr!15534 a!3235) (index!18222 lt!228012)) (select (arr!15534 a!3235) j!176)))))

(assert (=> b!501743 (and (bvslt (x!47284 lt!228012) #b01111111111111111111111111111110) (or (= (select (arr!15534 a!3235) (index!18222 lt!228012)) (select (arr!15534 a!3235) j!176)) (= (select (arr!15534 a!3235) (index!18222 lt!228012)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15534 a!3235) (index!18222 lt!228012)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45598 res!303362) b!501742))

(assert (= (and b!501742 res!303363) b!501736))

(assert (= (and b!501736 res!303365) b!501733))

(assert (= (and b!501733 res!303358) b!501731))

(assert (= (and b!501731 res!303354) b!501727))

(assert (= (and b!501727 res!303356) b!501738))

(assert (= (and b!501738 res!303360) b!501729))

(assert (= (and b!501729 res!303366) b!501739))

(assert (= (and b!501739 res!303361) b!501737))

(assert (= (and b!501739 (not res!303364)) b!501740))

(assert (= (and b!501740 (not res!303357)) b!501743))

(assert (= (and b!501743 c!59465) b!501741))

(assert (= (and b!501743 (not c!59465)) b!501734))

(assert (= (and b!501741 res!303368) b!501730))

(assert (= (and b!501743 (not res!303367)) b!501735))

(assert (= (and b!501735 res!303359) b!501728))

(assert (= (and b!501735 (not res!303355)) b!501732))

(declare-fun m!482749 () Bool)

(assert (=> b!501733 m!482749))

(declare-fun m!482751 () Bool)

(assert (=> b!501732 m!482751))

(declare-fun m!482753 () Bool)

(assert (=> b!501736 m!482753))

(assert (=> b!501736 m!482753))

(declare-fun m!482755 () Bool)

(assert (=> b!501736 m!482755))

(declare-fun m!482757 () Bool)

(assert (=> b!501741 m!482757))

(assert (=> b!501741 m!482751))

(declare-fun m!482759 () Bool)

(assert (=> start!45598 m!482759))

(declare-fun m!482761 () Bool)

(assert (=> start!45598 m!482761))

(assert (=> b!501737 m!482753))

(assert (=> b!501737 m!482753))

(declare-fun m!482763 () Bool)

(assert (=> b!501737 m!482763))

(declare-fun m!482765 () Bool)

(assert (=> b!501729 m!482765))

(assert (=> b!501728 m!482753))

(assert (=> b!501728 m!482753))

(declare-fun m!482767 () Bool)

(assert (=> b!501728 m!482767))

(declare-fun m!482769 () Bool)

(assert (=> b!501739 m!482769))

(declare-fun m!482771 () Bool)

(assert (=> b!501739 m!482771))

(declare-fun m!482773 () Bool)

(assert (=> b!501739 m!482773))

(assert (=> b!501739 m!482753))

(declare-fun m!482775 () Bool)

(assert (=> b!501739 m!482775))

(assert (=> b!501739 m!482753))

(declare-fun m!482777 () Bool)

(assert (=> b!501739 m!482777))

(declare-fun m!482779 () Bool)

(assert (=> b!501739 m!482779))

(assert (=> b!501739 m!482753))

(declare-fun m!482781 () Bool)

(assert (=> b!501739 m!482781))

(declare-fun m!482783 () Bool)

(assert (=> b!501739 m!482783))

(declare-fun m!482785 () Bool)

(assert (=> b!501727 m!482785))

(declare-fun m!482787 () Bool)

(assert (=> b!501731 m!482787))

(declare-fun m!482789 () Bool)

(assert (=> b!501738 m!482789))

(declare-fun m!482791 () Bool)

(assert (=> b!501743 m!482791))

(declare-fun m!482793 () Bool)

(assert (=> b!501743 m!482793))

(assert (=> b!501743 m!482753))

(push 1)

