; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45244 () Bool)

(assert start!45244)

(declare-fun b!496489 () Bool)

(declare-fun res!299027 () Bool)

(declare-fun e!291129 () Bool)

(assert (=> b!496489 (=> res!299027 e!291129)))

(declare-datatypes ((SeekEntryResult!3900 0))(
  ( (MissingZero!3900 (index!17779 (_ BitVec 32))) (Found!3900 (index!17780 (_ BitVec 32))) (Intermediate!3900 (undefined!4712 Bool) (index!17781 (_ BitVec 32)) (x!46867 (_ BitVec 32))) (Undefined!3900) (MissingVacant!3900 (index!17782 (_ BitVec 32))) )
))
(declare-fun lt!224815 () SeekEntryResult!3900)

(assert (=> b!496489 (= res!299027 (or (undefined!4712 lt!224815) (not (is-Intermediate!3900 lt!224815))))))

(declare-fun b!496490 () Bool)

(declare-fun e!291127 () Bool)

(assert (=> b!496490 (= e!291127 (not e!291129))))

(declare-fun res!299029 () Bool)

(assert (=> b!496490 (=> res!299029 e!291129)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32092 0))(
  ( (array!32093 (arr!15426 (Array (_ BitVec 32) (_ BitVec 64))) (size!15790 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32092)

(declare-fun lt!224816 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32092 (_ BitVec 32)) SeekEntryResult!3900)

(assert (=> b!496490 (= res!299029 (= lt!224815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224816 (select (store (arr!15426 a!3235) i!1204 k!2280) j!176) (array!32093 (store (arr!15426 a!3235) i!1204 k!2280) (size!15790 a!3235)) mask!3524)))))

(declare-fun lt!224817 () (_ BitVec 32))

(assert (=> b!496490 (= lt!224815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224817 (select (arr!15426 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496490 (= lt!224816 (toIndex!0 (select (store (arr!15426 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496490 (= lt!224817 (toIndex!0 (select (arr!15426 a!3235) j!176) mask!3524))))

(declare-fun e!291130 () Bool)

(assert (=> b!496490 e!291130))

(declare-fun res!299031 () Bool)

(assert (=> b!496490 (=> (not res!299031) (not e!291130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32092 (_ BitVec 32)) Bool)

(assert (=> b!496490 (= res!299031 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14738 0))(
  ( (Unit!14739) )
))
(declare-fun lt!224818 () Unit!14738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32092 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14738)

(assert (=> b!496490 (= lt!224818 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!299036 () Bool)

(declare-fun e!291126 () Bool)

(assert (=> start!45244 (=> (not res!299036) (not e!291126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45244 (= res!299036 (validMask!0 mask!3524))))

(assert (=> start!45244 e!291126))

(assert (=> start!45244 true))

(declare-fun array_inv!11200 (array!32092) Bool)

(assert (=> start!45244 (array_inv!11200 a!3235)))

(declare-fun b!496491 () Bool)

(declare-fun res!299035 () Bool)

(assert (=> b!496491 (=> (not res!299035) (not e!291126))))

(declare-fun arrayContainsKey!0 (array!32092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496491 (= res!299035 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496492 () Bool)

(declare-fun res!299030 () Bool)

(assert (=> b!496492 (=> (not res!299030) (not e!291127))))

(assert (=> b!496492 (= res!299030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496493 () Bool)

(assert (=> b!496493 (= e!291126 e!291127)))

(declare-fun res!299026 () Bool)

(assert (=> b!496493 (=> (not res!299026) (not e!291127))))

(declare-fun lt!224819 () SeekEntryResult!3900)

(assert (=> b!496493 (= res!299026 (or (= lt!224819 (MissingZero!3900 i!1204)) (= lt!224819 (MissingVacant!3900 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32092 (_ BitVec 32)) SeekEntryResult!3900)

(assert (=> b!496493 (= lt!224819 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496494 () Bool)

(assert (=> b!496494 (= e!291130 (= (seekEntryOrOpen!0 (select (arr!15426 a!3235) j!176) a!3235 mask!3524) (Found!3900 j!176)))))

(declare-fun b!496495 () Bool)

(declare-fun res!299032 () Bool)

(assert (=> b!496495 (=> (not res!299032) (not e!291126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496495 (= res!299032 (validKeyInArray!0 k!2280))))

(declare-fun b!496496 () Bool)

(assert (=> b!496496 (= e!291129 true)))

(assert (=> b!496496 (and (bvslt (x!46867 lt!224815) #b01111111111111111111111111111110) (or (= (select (arr!15426 a!3235) (index!17781 lt!224815)) (select (arr!15426 a!3235) j!176)) (= (select (arr!15426 a!3235) (index!17781 lt!224815)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15426 a!3235) (index!17781 lt!224815)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496497 () Bool)

(declare-fun res!299034 () Bool)

(assert (=> b!496497 (=> (not res!299034) (not e!291127))))

(declare-datatypes ((List!9637 0))(
  ( (Nil!9634) (Cons!9633 (h!10504 (_ BitVec 64)) (t!15873 List!9637)) )
))
(declare-fun arrayNoDuplicates!0 (array!32092 (_ BitVec 32) List!9637) Bool)

(assert (=> b!496497 (= res!299034 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9634))))

(declare-fun b!496498 () Bool)

(declare-fun res!299028 () Bool)

(assert (=> b!496498 (=> (not res!299028) (not e!291126))))

(assert (=> b!496498 (= res!299028 (validKeyInArray!0 (select (arr!15426 a!3235) j!176)))))

(declare-fun b!496499 () Bool)

(declare-fun res!299033 () Bool)

(assert (=> b!496499 (=> (not res!299033) (not e!291126))))

(assert (=> b!496499 (= res!299033 (and (= (size!15790 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15790 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15790 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45244 res!299036) b!496499))

(assert (= (and b!496499 res!299033) b!496498))

(assert (= (and b!496498 res!299028) b!496495))

(assert (= (and b!496495 res!299032) b!496491))

(assert (= (and b!496491 res!299035) b!496493))

(assert (= (and b!496493 res!299026) b!496492))

(assert (= (and b!496492 res!299030) b!496497))

(assert (= (and b!496497 res!299034) b!496490))

(assert (= (and b!496490 res!299031) b!496494))

(assert (= (and b!496490 (not res!299029)) b!496489))

(assert (= (and b!496489 (not res!299027)) b!496496))

(declare-fun m!477799 () Bool)

(assert (=> b!496494 m!477799))

(assert (=> b!496494 m!477799))

(declare-fun m!477801 () Bool)

(assert (=> b!496494 m!477801))

(declare-fun m!477803 () Bool)

(assert (=> b!496495 m!477803))

(declare-fun m!477805 () Bool)

(assert (=> b!496492 m!477805))

(declare-fun m!477807 () Bool)

(assert (=> b!496491 m!477807))

(declare-fun m!477809 () Bool)

(assert (=> b!496496 m!477809))

(assert (=> b!496496 m!477799))

(declare-fun m!477811 () Bool)

(assert (=> b!496493 m!477811))

(declare-fun m!477813 () Bool)

(assert (=> start!45244 m!477813))

(declare-fun m!477815 () Bool)

(assert (=> start!45244 m!477815))

(declare-fun m!477817 () Bool)

(assert (=> b!496497 m!477817))

(declare-fun m!477819 () Bool)

(assert (=> b!496490 m!477819))

(declare-fun m!477821 () Bool)

(assert (=> b!496490 m!477821))

(declare-fun m!477823 () Bool)

(assert (=> b!496490 m!477823))

(declare-fun m!477825 () Bool)

(assert (=> b!496490 m!477825))

(assert (=> b!496490 m!477819))

(assert (=> b!496490 m!477799))

(declare-fun m!477827 () Bool)

(assert (=> b!496490 m!477827))

(assert (=> b!496490 m!477799))

(declare-fun m!477829 () Bool)

(assert (=> b!496490 m!477829))

(assert (=> b!496490 m!477819))

(declare-fun m!477831 () Bool)

(assert (=> b!496490 m!477831))

(assert (=> b!496490 m!477799))

(declare-fun m!477833 () Bool)

(assert (=> b!496490 m!477833))

(assert (=> b!496498 m!477799))

(assert (=> b!496498 m!477799))

(declare-fun m!477835 () Bool)

(assert (=> b!496498 m!477835))

(push 1)

