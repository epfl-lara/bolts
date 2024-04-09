; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45236 () Bool)

(assert start!45236)

(declare-fun b!496357 () Bool)

(declare-fun res!298899 () Bool)

(declare-fun e!291069 () Bool)

(assert (=> b!496357 (=> (not res!298899) (not e!291069))))

(declare-datatypes ((array!32084 0))(
  ( (array!32085 (arr!15422 (Array (_ BitVec 32) (_ BitVec 64))) (size!15786 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32084)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32084 (_ BitVec 32)) Bool)

(assert (=> b!496357 (= res!298899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496359 () Bool)

(declare-fun e!291070 () Bool)

(assert (=> b!496359 (= e!291070 e!291069)))

(declare-fun res!298895 () Bool)

(assert (=> b!496359 (=> (not res!298895) (not e!291069))))

(declare-datatypes ((SeekEntryResult!3896 0))(
  ( (MissingZero!3896 (index!17763 (_ BitVec 32))) (Found!3896 (index!17764 (_ BitVec 32))) (Intermediate!3896 (undefined!4708 Bool) (index!17765 (_ BitVec 32)) (x!46847 (_ BitVec 32))) (Undefined!3896) (MissingVacant!3896 (index!17766 (_ BitVec 32))) )
))
(declare-fun lt!224756 () SeekEntryResult!3896)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496359 (= res!298895 (or (= lt!224756 (MissingZero!3896 i!1204)) (= lt!224756 (MissingVacant!3896 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32084 (_ BitVec 32)) SeekEntryResult!3896)

(assert (=> b!496359 (= lt!224756 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496360 () Bool)

(declare-fun res!298903 () Bool)

(assert (=> b!496360 (=> (not res!298903) (not e!291070))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496360 (= res!298903 (validKeyInArray!0 k!2280))))

(declare-fun b!496361 () Bool)

(declare-fun res!298904 () Bool)

(assert (=> b!496361 (=> (not res!298904) (not e!291070))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496361 (= res!298904 (validKeyInArray!0 (select (arr!15422 a!3235) j!176)))))

(declare-fun b!496362 () Bool)

(declare-fun res!298894 () Bool)

(assert (=> b!496362 (=> (not res!298894) (not e!291070))))

(declare-fun arrayContainsKey!0 (array!32084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496362 (= res!298894 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun e!291067 () Bool)

(declare-fun b!496363 () Bool)

(assert (=> b!496363 (= e!291067 (= (seekEntryOrOpen!0 (select (arr!15422 a!3235) j!176) a!3235 mask!3524) (Found!3896 j!176)))))

(declare-fun b!496358 () Bool)

(declare-fun res!298902 () Bool)

(assert (=> b!496358 (=> (not res!298902) (not e!291069))))

(declare-datatypes ((List!9633 0))(
  ( (Nil!9630) (Cons!9629 (h!10500 (_ BitVec 64)) (t!15869 List!9633)) )
))
(declare-fun arrayNoDuplicates!0 (array!32084 (_ BitVec 32) List!9633) Bool)

(assert (=> b!496358 (= res!298902 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9630))))

(declare-fun res!298898 () Bool)

(assert (=> start!45236 (=> (not res!298898) (not e!291070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45236 (= res!298898 (validMask!0 mask!3524))))

(assert (=> start!45236 e!291070))

(assert (=> start!45236 true))

(declare-fun array_inv!11196 (array!32084) Bool)

(assert (=> start!45236 (array_inv!11196 a!3235)))

(declare-fun b!496364 () Bool)

(declare-fun res!298900 () Bool)

(assert (=> b!496364 (=> (not res!298900) (not e!291070))))

(assert (=> b!496364 (= res!298900 (and (= (size!15786 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15786 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15786 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496365 () Bool)

(declare-fun res!298901 () Bool)

(declare-fun e!291066 () Bool)

(assert (=> b!496365 (=> res!298901 e!291066)))

(declare-fun lt!224755 () SeekEntryResult!3896)

(assert (=> b!496365 (= res!298901 (or (undefined!4708 lt!224755) (not (is-Intermediate!3896 lt!224755))))))

(declare-fun b!496366 () Bool)

(assert (=> b!496366 (= e!291066 true)))

(assert (=> b!496366 (and (bvslt (x!46847 lt!224755) #b01111111111111111111111111111110) (or (= (select (arr!15422 a!3235) (index!17765 lt!224755)) (select (arr!15422 a!3235) j!176)) (= (select (arr!15422 a!3235) (index!17765 lt!224755)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15422 a!3235) (index!17765 lt!224755)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496367 () Bool)

(assert (=> b!496367 (= e!291069 (not e!291066))))

(declare-fun res!298896 () Bool)

(assert (=> b!496367 (=> res!298896 e!291066)))

(declare-fun lt!224757 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32084 (_ BitVec 32)) SeekEntryResult!3896)

(assert (=> b!496367 (= res!298896 (= lt!224755 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224757 (select (store (arr!15422 a!3235) i!1204 k!2280) j!176) (array!32085 (store (arr!15422 a!3235) i!1204 k!2280) (size!15786 a!3235)) mask!3524)))))

(declare-fun lt!224758 () (_ BitVec 32))

(assert (=> b!496367 (= lt!224755 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224758 (select (arr!15422 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496367 (= lt!224757 (toIndex!0 (select (store (arr!15422 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496367 (= lt!224758 (toIndex!0 (select (arr!15422 a!3235) j!176) mask!3524))))

(assert (=> b!496367 e!291067))

(declare-fun res!298897 () Bool)

(assert (=> b!496367 (=> (not res!298897) (not e!291067))))

(assert (=> b!496367 (= res!298897 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14730 0))(
  ( (Unit!14731) )
))
(declare-fun lt!224759 () Unit!14730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32084 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14730)

(assert (=> b!496367 (= lt!224759 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45236 res!298898) b!496364))

(assert (= (and b!496364 res!298900) b!496361))

(assert (= (and b!496361 res!298904) b!496360))

(assert (= (and b!496360 res!298903) b!496362))

(assert (= (and b!496362 res!298894) b!496359))

(assert (= (and b!496359 res!298895) b!496357))

(assert (= (and b!496357 res!298899) b!496358))

(assert (= (and b!496358 res!298902) b!496367))

(assert (= (and b!496367 res!298897) b!496363))

(assert (= (and b!496367 (not res!298896)) b!496365))

(assert (= (and b!496365 (not res!298901)) b!496366))

(declare-fun m!477647 () Bool)

(assert (=> b!496361 m!477647))

(assert (=> b!496361 m!477647))

(declare-fun m!477649 () Bool)

(assert (=> b!496361 m!477649))

(declare-fun m!477651 () Bool)

(assert (=> b!496360 m!477651))

(declare-fun m!477653 () Bool)

(assert (=> b!496366 m!477653))

(assert (=> b!496366 m!477647))

(declare-fun m!477655 () Bool)

(assert (=> start!45236 m!477655))

(declare-fun m!477657 () Bool)

(assert (=> start!45236 m!477657))

(declare-fun m!477659 () Bool)

(assert (=> b!496359 m!477659))

(declare-fun m!477661 () Bool)

(assert (=> b!496357 m!477661))

(declare-fun m!477663 () Bool)

(assert (=> b!496367 m!477663))

(declare-fun m!477665 () Bool)

(assert (=> b!496367 m!477665))

(assert (=> b!496367 m!477665))

(declare-fun m!477667 () Bool)

(assert (=> b!496367 m!477667))

(assert (=> b!496367 m!477647))

(declare-fun m!477669 () Bool)

(assert (=> b!496367 m!477669))

(assert (=> b!496367 m!477647))

(declare-fun m!477671 () Bool)

(assert (=> b!496367 m!477671))

(assert (=> b!496367 m!477665))

(declare-fun m!477673 () Bool)

(assert (=> b!496367 m!477673))

(declare-fun m!477675 () Bool)

(assert (=> b!496367 m!477675))

(assert (=> b!496367 m!477647))

(declare-fun m!477677 () Bool)

(assert (=> b!496367 m!477677))

(declare-fun m!477679 () Bool)

(assert (=> b!496362 m!477679))

(assert (=> b!496363 m!477647))

(assert (=> b!496363 m!477647))

(declare-fun m!477681 () Bool)

(assert (=> b!496363 m!477681))

(declare-fun m!477683 () Bool)

(assert (=> b!496358 m!477683))

(push 1)

