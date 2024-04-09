; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45604 () Bool)

(assert start!45604)

(declare-fun b!501880 () Bool)

(declare-fun e!293998 () Bool)

(declare-fun e!293997 () Bool)

(assert (=> b!501880 (= e!293998 e!293997)))

(declare-fun res!303498 () Bool)

(assert (=> b!501880 (=> res!303498 e!293997)))

(declare-datatypes ((SeekEntryResult!4011 0))(
  ( (MissingZero!4011 (index!18232 (_ BitVec 32))) (Found!4011 (index!18233 (_ BitVec 32))) (Intermediate!4011 (undefined!4823 Bool) (index!18234 (_ BitVec 32)) (x!47295 (_ BitVec 32))) (Undefined!4011) (MissingVacant!4011 (index!18235 (_ BitVec 32))) )
))
(declare-fun lt!228104 () SeekEntryResult!4011)

(declare-fun lt!228109 () (_ BitVec 32))

(declare-datatypes ((array!32320 0))(
  ( (array!32321 (arr!15537 (Array (_ BitVec 32) (_ BitVec 64))) (size!15901 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32320)

(assert (=> b!501880 (= res!303498 (or (bvsgt (x!47295 lt!228104) #b01111111111111111111111111111110) (bvslt lt!228109 #b00000000000000000000000000000000) (bvsge lt!228109 (size!15901 a!3235)) (bvslt (index!18234 lt!228104) #b00000000000000000000000000000000) (bvsge (index!18234 lt!228104) (size!15901 a!3235)) (not (= lt!228104 (Intermediate!4011 false (index!18234 lt!228104) (x!47295 lt!228104))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!501880 (= (index!18234 lt!228104) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((Unit!15134 0))(
  ( (Unit!15135) )
))
(declare-fun lt!228105 () Unit!15134)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32320 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15134)

(assert (=> b!501880 (= lt!228105 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228109 #b00000000000000000000000000000000 (index!18234 lt!228104) (x!47295 lt!228104) mask!3524))))

(assert (=> b!501880 (and (or (= (select (arr!15537 a!3235) (index!18234 lt!228104)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15537 a!3235) (index!18234 lt!228104)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15537 a!3235) (index!18234 lt!228104)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15537 a!3235) (index!18234 lt!228104)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228108 () Unit!15134)

(declare-fun e!294000 () Unit!15134)

(assert (=> b!501880 (= lt!228108 e!294000)))

(declare-fun c!59474 () Bool)

(assert (=> b!501880 (= c!59474 (= (select (arr!15537 a!3235) (index!18234 lt!228104)) (select (arr!15537 a!3235) j!176)))))

(assert (=> b!501880 (and (bvslt (x!47295 lt!228104) #b01111111111111111111111111111110) (or (= (select (arr!15537 a!3235) (index!18234 lt!228104)) (select (arr!15537 a!3235) j!176)) (= (select (arr!15537 a!3235) (index!18234 lt!228104)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15537 a!3235) (index!18234 lt!228104)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501881 () Bool)

(declare-fun Unit!15136 () Unit!15134)

(assert (=> b!501881 (= e!294000 Unit!15136)))

(declare-fun lt!228103 () Unit!15134)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32320 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15134)

(assert (=> b!501881 (= lt!228103 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228109 #b00000000000000000000000000000000 (index!18234 lt!228104) (x!47295 lt!228104) mask!3524))))

(declare-fun lt!228111 () (_ BitVec 64))

(declare-fun lt!228113 () array!32320)

(declare-fun res!303496 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32320 (_ BitVec 32)) SeekEntryResult!4011)

(assert (=> b!501881 (= res!303496 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228109 lt!228111 lt!228113 mask!3524) (Intermediate!4011 false (index!18234 lt!228104) (x!47295 lt!228104))))))

(declare-fun e!294001 () Bool)

(assert (=> b!501881 (=> (not res!303496) (not e!294001))))

(assert (=> b!501881 e!294001))

(declare-fun res!303489 () Bool)

(declare-fun e!293995 () Bool)

(assert (=> start!45604 (=> (not res!303489) (not e!293995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45604 (= res!303489 (validMask!0 mask!3524))))

(assert (=> start!45604 e!293995))

(assert (=> start!45604 true))

(declare-fun array_inv!11311 (array!32320) Bool)

(assert (=> start!45604 (array_inv!11311 a!3235)))

(declare-fun b!501882 () Bool)

(declare-fun res!303492 () Bool)

(declare-fun e!293996 () Bool)

(assert (=> b!501882 (=> (not res!303492) (not e!293996))))

(declare-datatypes ((List!9748 0))(
  ( (Nil!9745) (Cons!9744 (h!10621 (_ BitVec 64)) (t!15984 List!9748)) )
))
(declare-fun arrayNoDuplicates!0 (array!32320 (_ BitVec 32) List!9748) Bool)

(assert (=> b!501882 (= res!303492 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9745))))

(declare-fun b!501883 () Bool)

(declare-fun res!303491 () Bool)

(assert (=> b!501883 (=> (not res!303491) (not e!293995))))

(assert (=> b!501883 (= res!303491 (and (= (size!15901 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15901 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15901 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501884 () Bool)

(assert (=> b!501884 (= e!293996 (not e!293998))))

(declare-fun res!303493 () Bool)

(assert (=> b!501884 (=> res!303493 e!293998)))

(declare-fun lt!228110 () (_ BitVec 32))

(assert (=> b!501884 (= res!303493 (= lt!228104 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228110 lt!228111 lt!228113 mask!3524)))))

(assert (=> b!501884 (= lt!228104 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228109 (select (arr!15537 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501884 (= lt!228110 (toIndex!0 lt!228111 mask!3524))))

(assert (=> b!501884 (= lt!228111 (select (store (arr!15537 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!501884 (= lt!228109 (toIndex!0 (select (arr!15537 a!3235) j!176) mask!3524))))

(assert (=> b!501884 (= lt!228113 (array!32321 (store (arr!15537 a!3235) i!1204 k!2280) (size!15901 a!3235)))))

(declare-fun e!293999 () Bool)

(assert (=> b!501884 e!293999))

(declare-fun res!303499 () Bool)

(assert (=> b!501884 (=> (not res!303499) (not e!293999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32320 (_ BitVec 32)) Bool)

(assert (=> b!501884 (= res!303499 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228112 () Unit!15134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32320 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15134)

(assert (=> b!501884 (= lt!228112 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501885 () Bool)

(declare-fun Unit!15137 () Unit!15134)

(assert (=> b!501885 (= e!294000 Unit!15137)))

(declare-fun b!501886 () Bool)

(declare-fun res!303500 () Bool)

(assert (=> b!501886 (=> res!303500 e!293998)))

(assert (=> b!501886 (= res!303500 (or (undefined!4823 lt!228104) (not (is-Intermediate!4011 lt!228104))))))

(declare-fun b!501887 () Bool)

(declare-fun res!303501 () Bool)

(assert (=> b!501887 (=> (not res!303501) (not e!293995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501887 (= res!303501 (validKeyInArray!0 k!2280))))

(declare-fun b!501888 () Bool)

(declare-fun res!303503 () Bool)

(assert (=> b!501888 (=> (not res!303503) (not e!293995))))

(declare-fun arrayContainsKey!0 (array!32320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501888 (= res!303503 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501889 () Bool)

(declare-fun res!303502 () Bool)

(assert (=> b!501889 (=> res!303502 e!293997)))

(declare-fun e!293994 () Bool)

(assert (=> b!501889 (= res!303502 e!293994)))

(declare-fun res!303490 () Bool)

(assert (=> b!501889 (=> (not res!303490) (not e!293994))))

(assert (=> b!501889 (= res!303490 (bvsgt #b00000000000000000000000000000000 (x!47295 lt!228104)))))

(declare-fun b!501890 () Bool)

(assert (=> b!501890 (= e!293997 true)))

(declare-fun lt!228106 () SeekEntryResult!4011)

(assert (=> b!501890 (= lt!228106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228109 lt!228111 lt!228113 mask!3524))))

(declare-fun b!501891 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32320 (_ BitVec 32)) SeekEntryResult!4011)

(assert (=> b!501891 (= e!293999 (= (seekEntryOrOpen!0 (select (arr!15537 a!3235) j!176) a!3235 mask!3524) (Found!4011 j!176)))))

(declare-fun b!501892 () Bool)

(declare-fun res!303497 () Bool)

(assert (=> b!501892 (=> (not res!303497) (not e!293996))))

(assert (=> b!501892 (= res!303497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501893 () Bool)

(assert (=> b!501893 (= e!294001 false)))

(declare-fun b!501894 () Bool)

(assert (=> b!501894 (= e!293995 e!293996)))

(declare-fun res!303495 () Bool)

(assert (=> b!501894 (=> (not res!303495) (not e!293996))))

(declare-fun lt!228107 () SeekEntryResult!4011)

(assert (=> b!501894 (= res!303495 (or (= lt!228107 (MissingZero!4011 i!1204)) (= lt!228107 (MissingVacant!4011 i!1204))))))

(assert (=> b!501894 (= lt!228107 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!501895 () Bool)

(declare-fun res!303494 () Bool)

(assert (=> b!501895 (=> (not res!303494) (not e!293995))))

(assert (=> b!501895 (= res!303494 (validKeyInArray!0 (select (arr!15537 a!3235) j!176)))))

(declare-fun b!501896 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32320 (_ BitVec 32)) SeekEntryResult!4011)

(assert (=> b!501896 (= e!293994 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228109 (index!18234 lt!228104) (select (arr!15537 a!3235) j!176) a!3235 mask!3524) (Found!4011 j!176))))))

(assert (= (and start!45604 res!303489) b!501883))

(assert (= (and b!501883 res!303491) b!501895))

(assert (= (and b!501895 res!303494) b!501887))

(assert (= (and b!501887 res!303501) b!501888))

(assert (= (and b!501888 res!303503) b!501894))

(assert (= (and b!501894 res!303495) b!501892))

(assert (= (and b!501892 res!303497) b!501882))

(assert (= (and b!501882 res!303492) b!501884))

(assert (= (and b!501884 res!303499) b!501891))

(assert (= (and b!501884 (not res!303493)) b!501886))

(assert (= (and b!501886 (not res!303500)) b!501880))

(assert (= (and b!501880 c!59474) b!501881))

(assert (= (and b!501880 (not c!59474)) b!501885))

(assert (= (and b!501881 res!303496) b!501893))

(assert (= (and b!501880 (not res!303498)) b!501889))

(assert (= (and b!501889 res!303490) b!501896))

(assert (= (and b!501889 (not res!303502)) b!501890))

(declare-fun m!482887 () Bool)

(assert (=> b!501880 m!482887))

(declare-fun m!482889 () Bool)

(assert (=> b!501880 m!482889))

(declare-fun m!482891 () Bool)

(assert (=> b!501880 m!482891))

(assert (=> b!501896 m!482891))

(assert (=> b!501896 m!482891))

(declare-fun m!482893 () Bool)

(assert (=> b!501896 m!482893))

(declare-fun m!482895 () Bool)

(assert (=> b!501888 m!482895))

(declare-fun m!482897 () Bool)

(assert (=> start!45604 m!482897))

(declare-fun m!482899 () Bool)

(assert (=> start!45604 m!482899))

(declare-fun m!482901 () Bool)

(assert (=> b!501887 m!482901))

(declare-fun m!482903 () Bool)

(assert (=> b!501894 m!482903))

(declare-fun m!482905 () Bool)

(assert (=> b!501890 m!482905))

(declare-fun m!482907 () Bool)

(assert (=> b!501882 m!482907))

(assert (=> b!501891 m!482891))

(assert (=> b!501891 m!482891))

(declare-fun m!482909 () Bool)

(assert (=> b!501891 m!482909))

(declare-fun m!482911 () Bool)

(assert (=> b!501892 m!482911))

(declare-fun m!482913 () Bool)

(assert (=> b!501881 m!482913))

(assert (=> b!501881 m!482905))

(assert (=> b!501895 m!482891))

(assert (=> b!501895 m!482891))

(declare-fun m!482915 () Bool)

(assert (=> b!501895 m!482915))

(declare-fun m!482917 () Bool)

(assert (=> b!501884 m!482917))

(declare-fun m!482919 () Bool)

(assert (=> b!501884 m!482919))

(declare-fun m!482921 () Bool)

(assert (=> b!501884 m!482921))

(declare-fun m!482923 () Bool)

(assert (=> b!501884 m!482923))

(assert (=> b!501884 m!482891))

(declare-fun m!482925 () Bool)

(assert (=> b!501884 m!482925))

(declare-fun m!482927 () Bool)

(assert (=> b!501884 m!482927))

(assert (=> b!501884 m!482891))

(declare-fun m!482929 () Bool)

(assert (=> b!501884 m!482929))

(assert (=> b!501884 m!482891))

(declare-fun m!482931 () Bool)

(assert (=> b!501884 m!482931))

(push 1)

