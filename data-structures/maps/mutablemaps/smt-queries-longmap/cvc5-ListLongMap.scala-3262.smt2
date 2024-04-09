; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45454 () Bool)

(assert start!45454)

(declare-fun b!499758 () Bool)

(declare-fun res!301807 () Bool)

(declare-fun e!292836 () Bool)

(assert (=> b!499758 (=> (not res!301807) (not e!292836))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499758 (= res!301807 (validKeyInArray!0 k!2280))))

(declare-fun b!499759 () Bool)

(declare-fun res!301803 () Bool)

(assert (=> b!499759 (=> (not res!301803) (not e!292836))))

(declare-datatypes ((array!32239 0))(
  ( (array!32240 (arr!15498 (Array (_ BitVec 32) (_ BitVec 64))) (size!15862 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32239)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!499759 (= res!301803 (validKeyInArray!0 (select (arr!15498 a!3235) j!176)))))

(declare-fun b!499760 () Bool)

(declare-fun e!292838 () Bool)

(assert (=> b!499760 (= e!292838 false)))

(declare-fun b!499761 () Bool)

(declare-datatypes ((Unit!14978 0))(
  ( (Unit!14979) )
))
(declare-fun e!292839 () Unit!14978)

(declare-fun Unit!14980 () Unit!14978)

(assert (=> b!499761 (= e!292839 Unit!14980)))

(declare-fun e!292841 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!499762 () Bool)

(declare-datatypes ((SeekEntryResult!3972 0))(
  ( (MissingZero!3972 (index!18070 (_ BitVec 32))) (Found!3972 (index!18071 (_ BitVec 32))) (Intermediate!3972 (undefined!4784 Bool) (index!18072 (_ BitVec 32)) (x!47140 (_ BitVec 32))) (Undefined!3972) (MissingVacant!3972 (index!18073 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32239 (_ BitVec 32)) SeekEntryResult!3972)

(assert (=> b!499762 (= e!292841 (= (seekEntryOrOpen!0 (select (arr!15498 a!3235) j!176) a!3235 mask!3524) (Found!3972 j!176)))))

(declare-fun b!499763 () Bool)

(declare-fun e!292840 () Bool)

(declare-fun e!292842 () Bool)

(assert (=> b!499763 (= e!292840 (not e!292842))))

(declare-fun res!301802 () Bool)

(assert (=> b!499763 (=> res!301802 e!292842)))

(declare-fun lt!226751 () array!32239)

(declare-fun lt!226755 () SeekEntryResult!3972)

(declare-fun lt!226757 () (_ BitVec 32))

(declare-fun lt!226760 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32239 (_ BitVec 32)) SeekEntryResult!3972)

(assert (=> b!499763 (= res!301802 (= lt!226755 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226757 lt!226760 lt!226751 mask!3524)))))

(declare-fun lt!226752 () (_ BitVec 32))

(assert (=> b!499763 (= lt!226755 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226752 (select (arr!15498 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499763 (= lt!226757 (toIndex!0 lt!226760 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499763 (= lt!226760 (select (store (arr!15498 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499763 (= lt!226752 (toIndex!0 (select (arr!15498 a!3235) j!176) mask!3524))))

(assert (=> b!499763 (= lt!226751 (array!32240 (store (arr!15498 a!3235) i!1204 k!2280) (size!15862 a!3235)))))

(assert (=> b!499763 e!292841))

(declare-fun res!301810 () Bool)

(assert (=> b!499763 (=> (not res!301810) (not e!292841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32239 (_ BitVec 32)) Bool)

(assert (=> b!499763 (= res!301810 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226758 () Unit!14978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32239 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14978)

(assert (=> b!499763 (= lt!226758 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499764 () Bool)

(declare-fun res!301806 () Bool)

(assert (=> b!499764 (=> (not res!301806) (not e!292840))))

(assert (=> b!499764 (= res!301806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499766 () Bool)

(declare-fun Unit!14981 () Unit!14978)

(assert (=> b!499766 (= e!292839 Unit!14981)))

(declare-fun lt!226756 () Unit!14978)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32239 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14978)

(assert (=> b!499766 (= lt!226756 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226752 #b00000000000000000000000000000000 (index!18072 lt!226755) (x!47140 lt!226755) mask!3524))))

(declare-fun res!301812 () Bool)

(assert (=> b!499766 (= res!301812 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226752 lt!226760 lt!226751 mask!3524) (Intermediate!3972 false (index!18072 lt!226755) (x!47140 lt!226755))))))

(assert (=> b!499766 (=> (not res!301812) (not e!292838))))

(assert (=> b!499766 e!292838))

(declare-fun b!499767 () Bool)

(declare-fun res!301809 () Bool)

(assert (=> b!499767 (=> res!301809 e!292842)))

(assert (=> b!499767 (= res!301809 (or (undefined!4784 lt!226755) (not (is-Intermediate!3972 lt!226755))))))

(declare-fun b!499768 () Bool)

(assert (=> b!499768 (= e!292836 e!292840)))

(declare-fun res!301808 () Bool)

(assert (=> b!499768 (=> (not res!301808) (not e!292840))))

(declare-fun lt!226753 () SeekEntryResult!3972)

(assert (=> b!499768 (= res!301808 (or (= lt!226753 (MissingZero!3972 i!1204)) (= lt!226753 (MissingVacant!3972 i!1204))))))

(assert (=> b!499768 (= lt!226753 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499769 () Bool)

(declare-fun res!301813 () Bool)

(assert (=> b!499769 (=> (not res!301813) (not e!292836))))

(declare-fun arrayContainsKey!0 (array!32239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499769 (= res!301813 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499770 () Bool)

(declare-fun res!301804 () Bool)

(assert (=> b!499770 (=> (not res!301804) (not e!292836))))

(assert (=> b!499770 (= res!301804 (and (= (size!15862 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15862 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15862 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499771 () Bool)

(declare-fun e!292837 () Bool)

(assert (=> b!499771 (= e!292837 true)))

(declare-fun lt!226754 () SeekEntryResult!3972)

(assert (=> b!499771 (= lt!226754 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226752 lt!226760 lt!226751 mask!3524))))

(declare-fun b!499772 () Bool)

(declare-fun res!301805 () Bool)

(assert (=> b!499772 (=> (not res!301805) (not e!292840))))

(declare-datatypes ((List!9709 0))(
  ( (Nil!9706) (Cons!9705 (h!10579 (_ BitVec 64)) (t!15945 List!9709)) )
))
(declare-fun arrayNoDuplicates!0 (array!32239 (_ BitVec 32) List!9709) Bool)

(assert (=> b!499772 (= res!301805 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9706))))

(declare-fun res!301814 () Bool)

(assert (=> start!45454 (=> (not res!301814) (not e!292836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45454 (= res!301814 (validMask!0 mask!3524))))

(assert (=> start!45454 e!292836))

(assert (=> start!45454 true))

(declare-fun array_inv!11272 (array!32239) Bool)

(assert (=> start!45454 (array_inv!11272 a!3235)))

(declare-fun b!499765 () Bool)

(assert (=> b!499765 (= e!292842 e!292837)))

(declare-fun res!301811 () Bool)

(assert (=> b!499765 (=> res!301811 e!292837)))

(assert (=> b!499765 (= res!301811 (or (bvsgt #b00000000000000000000000000000000 (x!47140 lt!226755)) (bvsgt (x!47140 lt!226755) #b01111111111111111111111111111110) (bvslt lt!226752 #b00000000000000000000000000000000) (bvsge lt!226752 (size!15862 a!3235)) (bvslt (index!18072 lt!226755) #b00000000000000000000000000000000) (bvsge (index!18072 lt!226755) (size!15862 a!3235)) (not (= lt!226755 (Intermediate!3972 false (index!18072 lt!226755) (x!47140 lt!226755))))))))

(assert (=> b!499765 (and (or (= (select (arr!15498 a!3235) (index!18072 lt!226755)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15498 a!3235) (index!18072 lt!226755)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15498 a!3235) (index!18072 lt!226755)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15498 a!3235) (index!18072 lt!226755)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226759 () Unit!14978)

(assert (=> b!499765 (= lt!226759 e!292839)))

(declare-fun c!59255 () Bool)

(assert (=> b!499765 (= c!59255 (= (select (arr!15498 a!3235) (index!18072 lt!226755)) (select (arr!15498 a!3235) j!176)))))

(assert (=> b!499765 (and (bvslt (x!47140 lt!226755) #b01111111111111111111111111111110) (or (= (select (arr!15498 a!3235) (index!18072 lt!226755)) (select (arr!15498 a!3235) j!176)) (= (select (arr!15498 a!3235) (index!18072 lt!226755)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15498 a!3235) (index!18072 lt!226755)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45454 res!301814) b!499770))

(assert (= (and b!499770 res!301804) b!499759))

(assert (= (and b!499759 res!301803) b!499758))

(assert (= (and b!499758 res!301807) b!499769))

(assert (= (and b!499769 res!301813) b!499768))

(assert (= (and b!499768 res!301808) b!499764))

(assert (= (and b!499764 res!301806) b!499772))

(assert (= (and b!499772 res!301805) b!499763))

(assert (= (and b!499763 res!301810) b!499762))

(assert (= (and b!499763 (not res!301802)) b!499767))

(assert (= (and b!499767 (not res!301809)) b!499765))

(assert (= (and b!499765 c!59255) b!499766))

(assert (= (and b!499765 (not c!59255)) b!499761))

(assert (= (and b!499766 res!301812) b!499760))

(assert (= (and b!499765 (not res!301811)) b!499771))

(declare-fun m!480961 () Bool)

(assert (=> b!499759 m!480961))

(assert (=> b!499759 m!480961))

(declare-fun m!480963 () Bool)

(assert (=> b!499759 m!480963))

(declare-fun m!480965 () Bool)

(assert (=> b!499769 m!480965))

(declare-fun m!480967 () Bool)

(assert (=> b!499764 m!480967))

(declare-fun m!480969 () Bool)

(assert (=> b!499763 m!480969))

(declare-fun m!480971 () Bool)

(assert (=> b!499763 m!480971))

(declare-fun m!480973 () Bool)

(assert (=> b!499763 m!480973))

(declare-fun m!480975 () Bool)

(assert (=> b!499763 m!480975))

(assert (=> b!499763 m!480961))

(declare-fun m!480977 () Bool)

(assert (=> b!499763 m!480977))

(assert (=> b!499763 m!480961))

(declare-fun m!480979 () Bool)

(assert (=> b!499763 m!480979))

(assert (=> b!499763 m!480961))

(declare-fun m!480981 () Bool)

(assert (=> b!499763 m!480981))

(declare-fun m!480983 () Bool)

(assert (=> b!499763 m!480983))

(declare-fun m!480985 () Bool)

(assert (=> b!499765 m!480985))

(assert (=> b!499765 m!480961))

(declare-fun m!480987 () Bool)

(assert (=> b!499768 m!480987))

(declare-fun m!480989 () Bool)

(assert (=> b!499758 m!480989))

(assert (=> b!499762 m!480961))

(assert (=> b!499762 m!480961))

(declare-fun m!480991 () Bool)

(assert (=> b!499762 m!480991))

(declare-fun m!480993 () Bool)

(assert (=> b!499766 m!480993))

(declare-fun m!480995 () Bool)

(assert (=> b!499766 m!480995))

(declare-fun m!480997 () Bool)

(assert (=> b!499772 m!480997))

(declare-fun m!480999 () Bool)

(assert (=> start!45454 m!480999))

(declare-fun m!481001 () Bool)

(assert (=> start!45454 m!481001))

(assert (=> b!499771 m!480995))

(push 1)

