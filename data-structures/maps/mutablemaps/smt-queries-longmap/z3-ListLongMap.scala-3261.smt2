; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45450 () Bool)

(assert start!45450)

(declare-fun b!499668 () Bool)

(declare-fun res!301730 () Bool)

(declare-fun e!292788 () Bool)

(assert (=> b!499668 (=> (not res!301730) (not e!292788))))

(declare-datatypes ((array!32235 0))(
  ( (array!32236 (arr!15496 (Array (_ BitVec 32) (_ BitVec 64))) (size!15860 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32235)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499668 (= res!301730 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499669 () Bool)

(declare-fun res!301726 () Bool)

(assert (=> b!499669 (=> (not res!301726) (not e!292788))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!499669 (= res!301726 (and (= (size!15860 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15860 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15860 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499670 () Bool)

(declare-fun res!301735 () Bool)

(declare-fun e!292791 () Bool)

(assert (=> b!499670 (=> res!301735 e!292791)))

(declare-datatypes ((SeekEntryResult!3970 0))(
  ( (MissingZero!3970 (index!18062 (_ BitVec 32))) (Found!3970 (index!18063 (_ BitVec 32))) (Intermediate!3970 (undefined!4782 Bool) (index!18064 (_ BitVec 32)) (x!47130 (_ BitVec 32))) (Undefined!3970) (MissingVacant!3970 (index!18065 (_ BitVec 32))) )
))
(declare-fun lt!226700 () SeekEntryResult!3970)

(get-info :version)

(assert (=> b!499670 (= res!301735 (or (undefined!4782 lt!226700) (not ((_ is Intermediate!3970) lt!226700))))))

(declare-fun b!499671 () Bool)

(declare-fun res!301733 () Bool)

(assert (=> b!499671 (=> (not res!301733) (not e!292788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499671 (= res!301733 (validKeyInArray!0 k0!2280))))

(declare-fun b!499672 () Bool)

(declare-fun e!292795 () Bool)

(assert (=> b!499672 (= e!292795 false)))

(declare-fun b!499673 () Bool)

(declare-fun e!292792 () Bool)

(assert (=> b!499673 (= e!292792 (not e!292791))))

(declare-fun res!301734 () Bool)

(assert (=> b!499673 (=> res!301734 e!292791)))

(declare-fun lt!226694 () (_ BitVec 64))

(declare-fun lt!226698 () array!32235)

(declare-fun lt!226696 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32235 (_ BitVec 32)) SeekEntryResult!3970)

(assert (=> b!499673 (= res!301734 (= lt!226700 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226696 lt!226694 lt!226698 mask!3524)))))

(declare-fun lt!226693 () (_ BitVec 32))

(assert (=> b!499673 (= lt!226700 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226693 (select (arr!15496 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499673 (= lt!226696 (toIndex!0 lt!226694 mask!3524))))

(assert (=> b!499673 (= lt!226694 (select (store (arr!15496 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!499673 (= lt!226693 (toIndex!0 (select (arr!15496 a!3235) j!176) mask!3524))))

(assert (=> b!499673 (= lt!226698 (array!32236 (store (arr!15496 a!3235) i!1204 k0!2280) (size!15860 a!3235)))))

(declare-fun e!292789 () Bool)

(assert (=> b!499673 e!292789))

(declare-fun res!301732 () Bool)

(assert (=> b!499673 (=> (not res!301732) (not e!292789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32235 (_ BitVec 32)) Bool)

(assert (=> b!499673 (= res!301732 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14970 0))(
  ( (Unit!14971) )
))
(declare-fun lt!226691 () Unit!14970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32235 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14970)

(assert (=> b!499673 (= lt!226691 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499675 () Bool)

(declare-fun e!292793 () Bool)

(assert (=> b!499675 (= e!292793 true)))

(declare-fun lt!226695 () SeekEntryResult!3970)

(assert (=> b!499675 (= lt!226695 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226693 lt!226694 lt!226698 mask!3524))))

(declare-fun b!499676 () Bool)

(declare-fun res!301731 () Bool)

(assert (=> b!499676 (=> (not res!301731) (not e!292788))))

(assert (=> b!499676 (= res!301731 (validKeyInArray!0 (select (arr!15496 a!3235) j!176)))))

(declare-fun b!499677 () Bool)

(assert (=> b!499677 (= e!292788 e!292792)))

(declare-fun res!301724 () Bool)

(assert (=> b!499677 (=> (not res!301724) (not e!292792))))

(declare-fun lt!226699 () SeekEntryResult!3970)

(assert (=> b!499677 (= res!301724 (or (= lt!226699 (MissingZero!3970 i!1204)) (= lt!226699 (MissingVacant!3970 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32235 (_ BitVec 32)) SeekEntryResult!3970)

(assert (=> b!499677 (= lt!226699 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!499678 () Bool)

(assert (=> b!499678 (= e!292791 e!292793)))

(declare-fun res!301727 () Bool)

(assert (=> b!499678 (=> res!301727 e!292793)))

(assert (=> b!499678 (= res!301727 (or (bvsgt #b00000000000000000000000000000000 (x!47130 lt!226700)) (bvsgt (x!47130 lt!226700) #b01111111111111111111111111111110) (bvslt lt!226693 #b00000000000000000000000000000000) (bvsge lt!226693 (size!15860 a!3235)) (bvslt (index!18064 lt!226700) #b00000000000000000000000000000000) (bvsge (index!18064 lt!226700) (size!15860 a!3235)) (not (= lt!226700 (Intermediate!3970 false (index!18064 lt!226700) (x!47130 lt!226700))))))))

(assert (=> b!499678 (and (or (= (select (arr!15496 a!3235) (index!18064 lt!226700)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15496 a!3235) (index!18064 lt!226700)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15496 a!3235) (index!18064 lt!226700)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15496 a!3235) (index!18064 lt!226700)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226697 () Unit!14970)

(declare-fun e!292790 () Unit!14970)

(assert (=> b!499678 (= lt!226697 e!292790)))

(declare-fun c!59249 () Bool)

(assert (=> b!499678 (= c!59249 (= (select (arr!15496 a!3235) (index!18064 lt!226700)) (select (arr!15496 a!3235) j!176)))))

(assert (=> b!499678 (and (bvslt (x!47130 lt!226700) #b01111111111111111111111111111110) (or (= (select (arr!15496 a!3235) (index!18064 lt!226700)) (select (arr!15496 a!3235) j!176)) (= (select (arr!15496 a!3235) (index!18064 lt!226700)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15496 a!3235) (index!18064 lt!226700)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499679 () Bool)

(declare-fun Unit!14972 () Unit!14970)

(assert (=> b!499679 (= e!292790 Unit!14972)))

(declare-fun lt!226692 () Unit!14970)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32235 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14970)

(assert (=> b!499679 (= lt!226692 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226693 #b00000000000000000000000000000000 (index!18064 lt!226700) (x!47130 lt!226700) mask!3524))))

(declare-fun res!301736 () Bool)

(assert (=> b!499679 (= res!301736 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226693 lt!226694 lt!226698 mask!3524) (Intermediate!3970 false (index!18064 lt!226700) (x!47130 lt!226700))))))

(assert (=> b!499679 (=> (not res!301736) (not e!292795))))

(assert (=> b!499679 e!292795))

(declare-fun b!499680 () Bool)

(assert (=> b!499680 (= e!292789 (= (seekEntryOrOpen!0 (select (arr!15496 a!3235) j!176) a!3235 mask!3524) (Found!3970 j!176)))))

(declare-fun b!499674 () Bool)

(declare-fun res!301729 () Bool)

(assert (=> b!499674 (=> (not res!301729) (not e!292792))))

(assert (=> b!499674 (= res!301729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!301728 () Bool)

(assert (=> start!45450 (=> (not res!301728) (not e!292788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45450 (= res!301728 (validMask!0 mask!3524))))

(assert (=> start!45450 e!292788))

(assert (=> start!45450 true))

(declare-fun array_inv!11270 (array!32235) Bool)

(assert (=> start!45450 (array_inv!11270 a!3235)))

(declare-fun b!499681 () Bool)

(declare-fun res!301725 () Bool)

(assert (=> b!499681 (=> (not res!301725) (not e!292792))))

(declare-datatypes ((List!9707 0))(
  ( (Nil!9704) (Cons!9703 (h!10577 (_ BitVec 64)) (t!15943 List!9707)) )
))
(declare-fun arrayNoDuplicates!0 (array!32235 (_ BitVec 32) List!9707) Bool)

(assert (=> b!499681 (= res!301725 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9704))))

(declare-fun b!499682 () Bool)

(declare-fun Unit!14973 () Unit!14970)

(assert (=> b!499682 (= e!292790 Unit!14973)))

(assert (= (and start!45450 res!301728) b!499669))

(assert (= (and b!499669 res!301726) b!499676))

(assert (= (and b!499676 res!301731) b!499671))

(assert (= (and b!499671 res!301733) b!499668))

(assert (= (and b!499668 res!301730) b!499677))

(assert (= (and b!499677 res!301724) b!499674))

(assert (= (and b!499674 res!301729) b!499681))

(assert (= (and b!499681 res!301725) b!499673))

(assert (= (and b!499673 res!301732) b!499680))

(assert (= (and b!499673 (not res!301734)) b!499670))

(assert (= (and b!499670 (not res!301735)) b!499678))

(assert (= (and b!499678 c!59249) b!499679))

(assert (= (and b!499678 (not c!59249)) b!499682))

(assert (= (and b!499679 res!301736) b!499672))

(assert (= (and b!499678 (not res!301727)) b!499675))

(declare-fun m!480877 () Bool)

(assert (=> b!499673 m!480877))

(declare-fun m!480879 () Bool)

(assert (=> b!499673 m!480879))

(declare-fun m!480881 () Bool)

(assert (=> b!499673 m!480881))

(declare-fun m!480883 () Bool)

(assert (=> b!499673 m!480883))

(declare-fun m!480885 () Bool)

(assert (=> b!499673 m!480885))

(declare-fun m!480887 () Bool)

(assert (=> b!499673 m!480887))

(declare-fun m!480889 () Bool)

(assert (=> b!499673 m!480889))

(assert (=> b!499673 m!480883))

(declare-fun m!480891 () Bool)

(assert (=> b!499673 m!480891))

(assert (=> b!499673 m!480883))

(declare-fun m!480893 () Bool)

(assert (=> b!499673 m!480893))

(declare-fun m!480895 () Bool)

(assert (=> b!499681 m!480895))

(declare-fun m!480897 () Bool)

(assert (=> b!499679 m!480897))

(declare-fun m!480899 () Bool)

(assert (=> b!499679 m!480899))

(declare-fun m!480901 () Bool)

(assert (=> b!499671 m!480901))

(declare-fun m!480903 () Bool)

(assert (=> b!499677 m!480903))

(declare-fun m!480905 () Bool)

(assert (=> start!45450 m!480905))

(declare-fun m!480907 () Bool)

(assert (=> start!45450 m!480907))

(declare-fun m!480909 () Bool)

(assert (=> b!499668 m!480909))

(declare-fun m!480911 () Bool)

(assert (=> b!499674 m!480911))

(assert (=> b!499680 m!480883))

(assert (=> b!499680 m!480883))

(declare-fun m!480913 () Bool)

(assert (=> b!499680 m!480913))

(assert (=> b!499676 m!480883))

(assert (=> b!499676 m!480883))

(declare-fun m!480915 () Bool)

(assert (=> b!499676 m!480915))

(assert (=> b!499675 m!480899))

(declare-fun m!480917 () Bool)

(assert (=> b!499678 m!480917))

(assert (=> b!499678 m!480883))

(check-sat (not start!45450) (not b!499681) (not b!499677) (not b!499671) (not b!499674) (not b!499680) (not b!499679) (not b!499668) (not b!499673) (not b!499676) (not b!499675))
(check-sat)
