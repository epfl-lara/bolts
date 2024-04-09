; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45822 () Bool)

(assert start!45822)

(declare-fun b!506986 () Bool)

(declare-fun res!308095 () Bool)

(declare-fun e!296715 () Bool)

(assert (=> b!506986 (=> (not res!308095) (not e!296715))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506986 (= res!308095 (validKeyInArray!0 k0!2280))))

(declare-fun res!308103 () Bool)

(assert (=> start!45822 (=> (not res!308103) (not e!296715))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45822 (= res!308103 (validMask!0 mask!3524))))

(assert (=> start!45822 e!296715))

(assert (=> start!45822 true))

(declare-datatypes ((array!32538 0))(
  ( (array!32539 (arr!15646 (Array (_ BitVec 32) (_ BitVec 64))) (size!16010 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32538)

(declare-fun array_inv!11420 (array!32538) Bool)

(assert (=> start!45822 (array_inv!11420 a!3235)))

(declare-fun b!506987 () Bool)

(declare-fun res!308102 () Bool)

(assert (=> b!506987 (=> (not res!308102) (not e!296715))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!506987 (= res!308102 (and (= (size!16010 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16010 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16010 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506988 () Bool)

(declare-fun e!296716 () Bool)

(assert (=> b!506988 (= e!296716 true)))

(declare-fun lt!231477 () array!32538)

(declare-datatypes ((SeekEntryResult!4120 0))(
  ( (MissingZero!4120 (index!18668 (_ BitVec 32))) (Found!4120 (index!18669 (_ BitVec 32))) (Intermediate!4120 (undefined!4932 Bool) (index!18670 (_ BitVec 32)) (x!47692 (_ BitVec 32))) (Undefined!4120) (MissingVacant!4120 (index!18671 (_ BitVec 32))) )
))
(declare-fun lt!231482 () SeekEntryResult!4120)

(declare-fun lt!231481 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32538 (_ BitVec 32)) SeekEntryResult!4120)

(assert (=> b!506988 (= lt!231482 (seekEntryOrOpen!0 lt!231481 lt!231477 mask!3524))))

(assert (=> b!506988 false))

(declare-fun b!506989 () Bool)

(declare-fun e!296717 () Bool)

(assert (=> b!506989 (= e!296715 e!296717)))

(declare-fun res!308096 () Bool)

(assert (=> b!506989 (=> (not res!308096) (not e!296717))))

(declare-fun lt!231475 () SeekEntryResult!4120)

(assert (=> b!506989 (= res!308096 (or (= lt!231475 (MissingZero!4120 i!1204)) (= lt!231475 (MissingVacant!4120 i!1204))))))

(assert (=> b!506989 (= lt!231475 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun e!296718 () Bool)

(declare-fun b!506990 () Bool)

(assert (=> b!506990 (= e!296718 (= (seekEntryOrOpen!0 (select (arr!15646 a!3235) j!176) a!3235 mask!3524) (Found!4120 j!176)))))

(declare-fun b!506991 () Bool)

(declare-fun e!296714 () Bool)

(assert (=> b!506991 (= e!296717 (not e!296714))))

(declare-fun res!308101 () Bool)

(assert (=> b!506991 (=> res!308101 e!296714)))

(declare-fun lt!231474 () SeekEntryResult!4120)

(declare-fun lt!231476 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32538 (_ BitVec 32)) SeekEntryResult!4120)

(assert (=> b!506991 (= res!308101 (= lt!231474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231476 lt!231481 lt!231477 mask!3524)))))

(declare-fun lt!231480 () (_ BitVec 32))

(assert (=> b!506991 (= lt!231474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231480 (select (arr!15646 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506991 (= lt!231476 (toIndex!0 lt!231481 mask!3524))))

(assert (=> b!506991 (= lt!231481 (select (store (arr!15646 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!506991 (= lt!231480 (toIndex!0 (select (arr!15646 a!3235) j!176) mask!3524))))

(assert (=> b!506991 (= lt!231477 (array!32539 (store (arr!15646 a!3235) i!1204 k0!2280) (size!16010 a!3235)))))

(assert (=> b!506991 e!296718))

(declare-fun res!308097 () Bool)

(assert (=> b!506991 (=> (not res!308097) (not e!296718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32538 (_ BitVec 32)) Bool)

(assert (=> b!506991 (= res!308097 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15520 0))(
  ( (Unit!15521) )
))
(declare-fun lt!231478 () Unit!15520)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15520)

(assert (=> b!506991 (= lt!231478 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506992 () Bool)

(assert (=> b!506992 (= e!296714 e!296716)))

(declare-fun res!308098 () Bool)

(assert (=> b!506992 (=> res!308098 e!296716)))

(declare-fun lt!231479 () Bool)

(assert (=> b!506992 (= res!308098 (or (and (not lt!231479) (undefined!4932 lt!231474)) (and (not lt!231479) (not (undefined!4932 lt!231474)))))))

(get-info :version)

(assert (=> b!506992 (= lt!231479 (not ((_ is Intermediate!4120) lt!231474)))))

(declare-fun b!506993 () Bool)

(declare-fun res!308100 () Bool)

(assert (=> b!506993 (=> (not res!308100) (not e!296715))))

(declare-fun arrayContainsKey!0 (array!32538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506993 (= res!308100 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506994 () Bool)

(declare-fun res!308104 () Bool)

(assert (=> b!506994 (=> (not res!308104) (not e!296715))))

(assert (=> b!506994 (= res!308104 (validKeyInArray!0 (select (arr!15646 a!3235) j!176)))))

(declare-fun b!506995 () Bool)

(declare-fun res!308105 () Bool)

(assert (=> b!506995 (=> (not res!308105) (not e!296717))))

(assert (=> b!506995 (= res!308105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506996 () Bool)

(declare-fun res!308099 () Bool)

(assert (=> b!506996 (=> (not res!308099) (not e!296717))))

(declare-datatypes ((List!9857 0))(
  ( (Nil!9854) (Cons!9853 (h!10730 (_ BitVec 64)) (t!16093 List!9857)) )
))
(declare-fun arrayNoDuplicates!0 (array!32538 (_ BitVec 32) List!9857) Bool)

(assert (=> b!506996 (= res!308099 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9854))))

(assert (= (and start!45822 res!308103) b!506987))

(assert (= (and b!506987 res!308102) b!506994))

(assert (= (and b!506994 res!308104) b!506986))

(assert (= (and b!506986 res!308095) b!506993))

(assert (= (and b!506993 res!308100) b!506989))

(assert (= (and b!506989 res!308096) b!506995))

(assert (= (and b!506995 res!308105) b!506996))

(assert (= (and b!506996 res!308099) b!506991))

(assert (= (and b!506991 res!308097) b!506990))

(assert (= (and b!506991 (not res!308101)) b!506992))

(assert (= (and b!506992 (not res!308098)) b!506988))

(declare-fun m!487755 () Bool)

(assert (=> b!506990 m!487755))

(assert (=> b!506990 m!487755))

(declare-fun m!487757 () Bool)

(assert (=> b!506990 m!487757))

(declare-fun m!487759 () Bool)

(assert (=> start!45822 m!487759))

(declare-fun m!487761 () Bool)

(assert (=> start!45822 m!487761))

(declare-fun m!487763 () Bool)

(assert (=> b!506986 m!487763))

(declare-fun m!487765 () Bool)

(assert (=> b!506988 m!487765))

(assert (=> b!506994 m!487755))

(assert (=> b!506994 m!487755))

(declare-fun m!487767 () Bool)

(assert (=> b!506994 m!487767))

(declare-fun m!487769 () Bool)

(assert (=> b!506993 m!487769))

(declare-fun m!487771 () Bool)

(assert (=> b!506996 m!487771))

(declare-fun m!487773 () Bool)

(assert (=> b!506991 m!487773))

(declare-fun m!487775 () Bool)

(assert (=> b!506991 m!487775))

(declare-fun m!487777 () Bool)

(assert (=> b!506991 m!487777))

(assert (=> b!506991 m!487755))

(declare-fun m!487779 () Bool)

(assert (=> b!506991 m!487779))

(declare-fun m!487781 () Bool)

(assert (=> b!506991 m!487781))

(assert (=> b!506991 m!487755))

(declare-fun m!487783 () Bool)

(assert (=> b!506991 m!487783))

(assert (=> b!506991 m!487755))

(declare-fun m!487785 () Bool)

(assert (=> b!506991 m!487785))

(declare-fun m!487787 () Bool)

(assert (=> b!506991 m!487787))

(declare-fun m!487789 () Bool)

(assert (=> b!506989 m!487789))

(declare-fun m!487791 () Bool)

(assert (=> b!506995 m!487791))

(check-sat (not b!506988) (not start!45822) (not b!506989) (not b!506993) (not b!506994) (not b!506986) (not b!506991) (not b!506990) (not b!506995) (not b!506996))
(check-sat)
