; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120452 () Bool)

(assert start!120452)

(declare-fun b!1401720 () Bool)

(declare-fun e!793750 () Bool)

(assert (=> b!1401720 (= e!793750 true)))

(declare-datatypes ((SeekEntryResult!10575 0))(
  ( (MissingZero!10575 (index!44676 (_ BitVec 32))) (Found!10575 (index!44677 (_ BitVec 32))) (Intermediate!10575 (undefined!11387 Bool) (index!44678 (_ BitVec 32)) (x!126309 (_ BitVec 32))) (Undefined!10575) (MissingVacant!10575 (index!44679 (_ BitVec 32))) )
))
(declare-fun lt!617143 () SeekEntryResult!10575)

(declare-fun lt!617140 () (_ BitVec 32))

(declare-fun lt!617141 () (_ BitVec 64))

(declare-datatypes ((array!95779 0))(
  ( (array!95780 (arr!46236 (Array (_ BitVec 32) (_ BitVec 64))) (size!46787 (_ BitVec 32))) )
))
(declare-fun lt!617136 () array!95779)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95779 (_ BitVec 32)) SeekEntryResult!10575)

(assert (=> b!1401720 (= lt!617143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617140 lt!617141 lt!617136 mask!2840))))

(declare-fun b!1401721 () Bool)

(declare-fun res!940348 () Bool)

(declare-fun e!793754 () Bool)

(assert (=> b!1401721 (=> (not res!940348) (not e!793754))))

(declare-fun a!2901 () array!95779)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401721 (= res!940348 (validKeyInArray!0 (select (arr!46236 a!2901) i!1037)))))

(declare-fun e!793749 () Bool)

(declare-fun b!1401722 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95779 (_ BitVec 32)) SeekEntryResult!10575)

(assert (=> b!1401722 (= e!793749 (= (seekEntryOrOpen!0 (select (arr!46236 a!2901) j!112) a!2901 mask!2840) (Found!10575 j!112)))))

(declare-fun res!940342 () Bool)

(assert (=> start!120452 (=> (not res!940342) (not e!793754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120452 (= res!940342 (validMask!0 mask!2840))))

(assert (=> start!120452 e!793754))

(assert (=> start!120452 true))

(declare-fun array_inv!35181 (array!95779) Bool)

(assert (=> start!120452 (array_inv!35181 a!2901)))

(declare-fun b!1401723 () Bool)

(declare-fun res!940344 () Bool)

(assert (=> b!1401723 (=> (not res!940344) (not e!793754))))

(declare-datatypes ((List!32935 0))(
  ( (Nil!32932) (Cons!32931 (h!34179 (_ BitVec 64)) (t!47636 List!32935)) )
))
(declare-fun arrayNoDuplicates!0 (array!95779 (_ BitVec 32) List!32935) Bool)

(assert (=> b!1401723 (= res!940344 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32932))))

(declare-fun b!1401724 () Bool)

(declare-fun e!793753 () Bool)

(declare-fun e!793748 () Bool)

(assert (=> b!1401724 (= e!793753 e!793748)))

(declare-fun res!940345 () Bool)

(assert (=> b!1401724 (=> res!940345 e!793748)))

(declare-fun lt!617139 () SeekEntryResult!10575)

(declare-fun lt!617138 () SeekEntryResult!10575)

(assert (=> b!1401724 (= res!940345 (or (= lt!617139 lt!617138) (not (is-Intermediate!10575 lt!617138))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401724 (= lt!617138 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617141 mask!2840) lt!617141 lt!617136 mask!2840))))

(assert (=> b!1401724 (= lt!617141 (select (store (arr!46236 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401724 (= lt!617136 (array!95780 (store (arr!46236 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46787 a!2901)))))

(declare-fun b!1401725 () Bool)

(assert (=> b!1401725 (= e!793754 (not e!793753))))

(declare-fun res!940343 () Bool)

(assert (=> b!1401725 (=> res!940343 e!793753)))

(assert (=> b!1401725 (= res!940343 (or (not (is-Intermediate!10575 lt!617139)) (undefined!11387 lt!617139)))))

(assert (=> b!1401725 e!793749))

(declare-fun res!940350 () Bool)

(assert (=> b!1401725 (=> (not res!940350) (not e!793749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95779 (_ BitVec 32)) Bool)

(assert (=> b!1401725 (= res!940350 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47104 0))(
  ( (Unit!47105) )
))
(declare-fun lt!617142 () Unit!47104)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47104)

(assert (=> b!1401725 (= lt!617142 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401725 (= lt!617139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617140 (select (arr!46236 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401725 (= lt!617140 (toIndex!0 (select (arr!46236 a!2901) j!112) mask!2840))))

(declare-fun b!1401726 () Bool)

(declare-fun res!940347 () Bool)

(assert (=> b!1401726 (=> (not res!940347) (not e!793754))))

(assert (=> b!1401726 (= res!940347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401727 () Bool)

(declare-fun res!940346 () Bool)

(assert (=> b!1401727 (=> (not res!940346) (not e!793754))))

(assert (=> b!1401727 (= res!940346 (and (= (size!46787 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46787 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46787 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401728 () Bool)

(declare-fun res!940340 () Bool)

(assert (=> b!1401728 (=> (not res!940340) (not e!793754))))

(assert (=> b!1401728 (= res!940340 (validKeyInArray!0 (select (arr!46236 a!2901) j!112)))))

(declare-fun b!1401729 () Bool)

(assert (=> b!1401729 (= e!793748 e!793750)))

(declare-fun res!940349 () Bool)

(assert (=> b!1401729 (=> res!940349 e!793750)))

(assert (=> b!1401729 (= res!940349 (or (bvslt (x!126309 lt!617139) #b00000000000000000000000000000000) (bvsgt (x!126309 lt!617139) #b01111111111111111111111111111110) (bvslt (x!126309 lt!617138) #b00000000000000000000000000000000) (bvsgt (x!126309 lt!617138) #b01111111111111111111111111111110) (bvslt lt!617140 #b00000000000000000000000000000000) (bvsge lt!617140 (size!46787 a!2901)) (bvslt (index!44678 lt!617139) #b00000000000000000000000000000000) (bvsge (index!44678 lt!617139) (size!46787 a!2901)) (bvslt (index!44678 lt!617138) #b00000000000000000000000000000000) (bvsge (index!44678 lt!617138) (size!46787 a!2901)) (not (= lt!617139 (Intermediate!10575 false (index!44678 lt!617139) (x!126309 lt!617139)))) (not (= lt!617138 (Intermediate!10575 false (index!44678 lt!617138) (x!126309 lt!617138))))))))

(declare-fun e!793752 () Bool)

(assert (=> b!1401729 e!793752))

(declare-fun res!940341 () Bool)

(assert (=> b!1401729 (=> (not res!940341) (not e!793752))))

(assert (=> b!1401729 (= res!940341 (and (not (undefined!11387 lt!617138)) (= (index!44678 lt!617138) i!1037) (bvslt (x!126309 lt!617138) (x!126309 lt!617139)) (= (select (store (arr!46236 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44678 lt!617138)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!617137 () Unit!47104)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47104)

(assert (=> b!1401729 (= lt!617137 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617140 (x!126309 lt!617139) (index!44678 lt!617139) (x!126309 lt!617138) (index!44678 lt!617138) (undefined!11387 lt!617138) mask!2840))))

(declare-fun b!1401730 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95779 (_ BitVec 32)) SeekEntryResult!10575)

(assert (=> b!1401730 (= e!793752 (= (seekEntryOrOpen!0 lt!617141 lt!617136 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126309 lt!617138) (index!44678 lt!617138) (index!44678 lt!617138) (select (arr!46236 a!2901) j!112) lt!617136 mask!2840)))))

(assert (= (and start!120452 res!940342) b!1401727))

(assert (= (and b!1401727 res!940346) b!1401721))

(assert (= (and b!1401721 res!940348) b!1401728))

(assert (= (and b!1401728 res!940340) b!1401726))

(assert (= (and b!1401726 res!940347) b!1401723))

(assert (= (and b!1401723 res!940344) b!1401725))

(assert (= (and b!1401725 res!940350) b!1401722))

(assert (= (and b!1401725 (not res!940343)) b!1401724))

(assert (= (and b!1401724 (not res!940345)) b!1401729))

(assert (= (and b!1401729 res!940341) b!1401730))

(assert (= (and b!1401729 (not res!940349)) b!1401720))

(declare-fun m!1289685 () Bool)

(assert (=> b!1401730 m!1289685))

(declare-fun m!1289687 () Bool)

(assert (=> b!1401730 m!1289687))

(assert (=> b!1401730 m!1289687))

(declare-fun m!1289689 () Bool)

(assert (=> b!1401730 m!1289689))

(declare-fun m!1289691 () Bool)

(assert (=> b!1401726 m!1289691))

(declare-fun m!1289693 () Bool)

(assert (=> b!1401724 m!1289693))

(assert (=> b!1401724 m!1289693))

(declare-fun m!1289695 () Bool)

(assert (=> b!1401724 m!1289695))

(declare-fun m!1289697 () Bool)

(assert (=> b!1401724 m!1289697))

(declare-fun m!1289699 () Bool)

(assert (=> b!1401724 m!1289699))

(declare-fun m!1289701 () Bool)

(assert (=> start!120452 m!1289701))

(declare-fun m!1289703 () Bool)

(assert (=> start!120452 m!1289703))

(declare-fun m!1289705 () Bool)

(assert (=> b!1401723 m!1289705))

(assert (=> b!1401729 m!1289697))

(declare-fun m!1289707 () Bool)

(assert (=> b!1401729 m!1289707))

(declare-fun m!1289709 () Bool)

(assert (=> b!1401729 m!1289709))

(declare-fun m!1289711 () Bool)

(assert (=> b!1401720 m!1289711))

(assert (=> b!1401722 m!1289687))

(assert (=> b!1401722 m!1289687))

(declare-fun m!1289713 () Bool)

(assert (=> b!1401722 m!1289713))

(assert (=> b!1401728 m!1289687))

(assert (=> b!1401728 m!1289687))

(declare-fun m!1289715 () Bool)

(assert (=> b!1401728 m!1289715))

(assert (=> b!1401725 m!1289687))

(declare-fun m!1289717 () Bool)

(assert (=> b!1401725 m!1289717))

(assert (=> b!1401725 m!1289687))

(assert (=> b!1401725 m!1289687))

(declare-fun m!1289719 () Bool)

(assert (=> b!1401725 m!1289719))

(declare-fun m!1289721 () Bool)

(assert (=> b!1401725 m!1289721))

(declare-fun m!1289723 () Bool)

(assert (=> b!1401725 m!1289723))

(declare-fun m!1289725 () Bool)

(assert (=> b!1401721 m!1289725))

(assert (=> b!1401721 m!1289725))

(declare-fun m!1289727 () Bool)

(assert (=> b!1401721 m!1289727))

(push 1)

