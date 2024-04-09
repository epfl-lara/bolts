; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45818 () Bool)

(assert start!45818)

(declare-fun b!506920 () Bool)

(declare-fun e!296680 () Bool)

(declare-fun e!296681 () Bool)

(assert (=> b!506920 (= e!296680 e!296681)))

(declare-fun res!308029 () Bool)

(assert (=> b!506920 (=> (not res!308029) (not e!296681))))

(declare-datatypes ((SeekEntryResult!4118 0))(
  ( (MissingZero!4118 (index!18660 (_ BitVec 32))) (Found!4118 (index!18661 (_ BitVec 32))) (Intermediate!4118 (undefined!4930 Bool) (index!18662 (_ BitVec 32)) (x!47682 (_ BitVec 32))) (Undefined!4118) (MissingVacant!4118 (index!18663 (_ BitVec 32))) )
))
(declare-fun lt!231428 () SeekEntryResult!4118)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506920 (= res!308029 (or (= lt!231428 (MissingZero!4118 i!1204)) (= lt!231428 (MissingVacant!4118 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32534 0))(
  ( (array!32535 (arr!15644 (Array (_ BitVec 32) (_ BitVec 64))) (size!16008 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32534)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32534 (_ BitVec 32)) SeekEntryResult!4118)

(assert (=> b!506920 (= lt!231428 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506921 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!296683 () Bool)

(assert (=> b!506921 (= e!296683 (= (seekEntryOrOpen!0 (select (arr!15644 a!3235) j!176) a!3235 mask!3524) (Found!4118 j!176)))))

(declare-fun b!506922 () Bool)

(declare-fun e!296679 () Bool)

(assert (=> b!506922 (= e!296679 true)))

(assert (=> b!506922 false))

(declare-fun b!506923 () Bool)

(declare-fun e!296682 () Bool)

(assert (=> b!506923 (= e!296681 (not e!296682))))

(declare-fun res!308034 () Bool)

(assert (=> b!506923 (=> res!308034 e!296682)))

(declare-fun lt!231423 () (_ BitVec 32))

(declare-fun lt!231427 () SeekEntryResult!4118)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32534 (_ BitVec 32)) SeekEntryResult!4118)

(assert (=> b!506923 (= res!308034 (= lt!231427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231423 (select (store (arr!15644 a!3235) i!1204 k!2280) j!176) (array!32535 (store (arr!15644 a!3235) i!1204 k!2280) (size!16008 a!3235)) mask!3524)))))

(declare-fun lt!231425 () (_ BitVec 32))

(assert (=> b!506923 (= lt!231427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231425 (select (arr!15644 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506923 (= lt!231423 (toIndex!0 (select (store (arr!15644 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506923 (= lt!231425 (toIndex!0 (select (arr!15644 a!3235) j!176) mask!3524))))

(assert (=> b!506923 e!296683))

(declare-fun res!308032 () Bool)

(assert (=> b!506923 (=> (not res!308032) (not e!296683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32534 (_ BitVec 32)) Bool)

(assert (=> b!506923 (= res!308032 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15516 0))(
  ( (Unit!15517) )
))
(declare-fun lt!231426 () Unit!15516)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32534 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15516)

(assert (=> b!506923 (= lt!231426 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506924 () Bool)

(assert (=> b!506924 (= e!296682 e!296679)))

(declare-fun res!308030 () Bool)

(assert (=> b!506924 (=> res!308030 e!296679)))

(declare-fun lt!231424 () Bool)

(assert (=> b!506924 (= res!308030 (or (and (not lt!231424) (undefined!4930 lt!231427)) (and (not lt!231424) (not (undefined!4930 lt!231427)))))))

(assert (=> b!506924 (= lt!231424 (not (is-Intermediate!4118 lt!231427)))))

(declare-fun b!506925 () Bool)

(declare-fun res!308031 () Bool)

(assert (=> b!506925 (=> (not res!308031) (not e!296680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506925 (= res!308031 (validKeyInArray!0 (select (arr!15644 a!3235) j!176)))))

(declare-fun b!506927 () Bool)

(declare-fun res!308037 () Bool)

(assert (=> b!506927 (=> (not res!308037) (not e!296680))))

(declare-fun arrayContainsKey!0 (array!32534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506927 (= res!308037 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506928 () Bool)

(declare-fun res!308036 () Bool)

(assert (=> b!506928 (=> (not res!308036) (not e!296681))))

(declare-datatypes ((List!9855 0))(
  ( (Nil!9852) (Cons!9851 (h!10728 (_ BitVec 64)) (t!16091 List!9855)) )
))
(declare-fun arrayNoDuplicates!0 (array!32534 (_ BitVec 32) List!9855) Bool)

(assert (=> b!506928 (= res!308036 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9852))))

(declare-fun b!506929 () Bool)

(declare-fun res!308038 () Bool)

(assert (=> b!506929 (=> (not res!308038) (not e!296680))))

(assert (=> b!506929 (= res!308038 (and (= (size!16008 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16008 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16008 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506930 () Bool)

(declare-fun res!308033 () Bool)

(assert (=> b!506930 (=> (not res!308033) (not e!296681))))

(assert (=> b!506930 (= res!308033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!308035 () Bool)

(assert (=> start!45818 (=> (not res!308035) (not e!296680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45818 (= res!308035 (validMask!0 mask!3524))))

(assert (=> start!45818 e!296680))

(assert (=> start!45818 true))

(declare-fun array_inv!11418 (array!32534) Bool)

(assert (=> start!45818 (array_inv!11418 a!3235)))

(declare-fun b!506926 () Bool)

(declare-fun res!308039 () Bool)

(assert (=> b!506926 (=> (not res!308039) (not e!296680))))

(assert (=> b!506926 (= res!308039 (validKeyInArray!0 k!2280))))

(assert (= (and start!45818 res!308035) b!506929))

(assert (= (and b!506929 res!308038) b!506925))

(assert (= (and b!506925 res!308031) b!506926))

(assert (= (and b!506926 res!308039) b!506927))

(assert (= (and b!506927 res!308037) b!506920))

(assert (= (and b!506920 res!308029) b!506930))

(assert (= (and b!506930 res!308033) b!506928))

(assert (= (and b!506928 res!308036) b!506923))

(assert (= (and b!506923 res!308032) b!506921))

(assert (= (and b!506923 (not res!308034)) b!506924))

(assert (= (and b!506924 (not res!308030)) b!506922))

(declare-fun m!487681 () Bool)

(assert (=> b!506927 m!487681))

(declare-fun m!487683 () Bool)

(assert (=> b!506920 m!487683))

(declare-fun m!487685 () Bool)

(assert (=> b!506923 m!487685))

(declare-fun m!487687 () Bool)

(assert (=> b!506923 m!487687))

(declare-fun m!487689 () Bool)

(assert (=> b!506923 m!487689))

(declare-fun m!487691 () Bool)

(assert (=> b!506923 m!487691))

(declare-fun m!487693 () Bool)

(assert (=> b!506923 m!487693))

(assert (=> b!506923 m!487689))

(declare-fun m!487695 () Bool)

(assert (=> b!506923 m!487695))

(assert (=> b!506923 m!487691))

(declare-fun m!487697 () Bool)

(assert (=> b!506923 m!487697))

(assert (=> b!506923 m!487689))

(declare-fun m!487699 () Bool)

(assert (=> b!506923 m!487699))

(assert (=> b!506923 m!487691))

(declare-fun m!487701 () Bool)

(assert (=> b!506923 m!487701))

(declare-fun m!487703 () Bool)

(assert (=> b!506930 m!487703))

(assert (=> b!506921 m!487691))

(assert (=> b!506921 m!487691))

(declare-fun m!487705 () Bool)

(assert (=> b!506921 m!487705))

(declare-fun m!487707 () Bool)

(assert (=> b!506926 m!487707))

(declare-fun m!487709 () Bool)

(assert (=> start!45818 m!487709))

(declare-fun m!487711 () Bool)

(assert (=> start!45818 m!487711))

(assert (=> b!506925 m!487691))

(assert (=> b!506925 m!487691))

(declare-fun m!487713 () Bool)

(assert (=> b!506925 m!487713))

(declare-fun m!487715 () Bool)

(assert (=> b!506928 m!487715))

(push 1)

(assert (not b!506927))

(assert (not b!506930))

(assert (not b!506923))

(assert (not start!45818))

(assert (not b!506921))

(assert (not b!506925))

(assert (not b!506920))

(assert (not b!506926))

(assert (not b!506928))

(check-sat)

