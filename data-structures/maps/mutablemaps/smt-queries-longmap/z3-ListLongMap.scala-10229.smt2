; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120468 () Bool)

(assert start!120468)

(declare-fun b!1401984 () Bool)

(declare-fun res!940605 () Bool)

(declare-fun e!793918 () Bool)

(assert (=> b!1401984 (=> (not res!940605) (not e!793918))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95795 0))(
  ( (array!95796 (arr!46244 (Array (_ BitVec 32) (_ BitVec 64))) (size!46795 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95795)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1401984 (= res!940605 (and (= (size!46795 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46795 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46795 a!2901)) (not (= i!1037 j!112))))))

(declare-fun lt!617335 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10583 0))(
  ( (MissingZero!10583 (index!44708 (_ BitVec 32))) (Found!10583 (index!44709 (_ BitVec 32))) (Intermediate!10583 (undefined!11395 Bool) (index!44710 (_ BitVec 32)) (x!126341 (_ BitVec 32))) (Undefined!10583) (MissingVacant!10583 (index!44711 (_ BitVec 32))) )
))
(declare-fun lt!617328 () SeekEntryResult!10583)

(declare-fun lt!617329 () array!95795)

(declare-fun b!1401985 () Bool)

(declare-fun e!793916 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95795 (_ BitVec 32)) SeekEntryResult!10583)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95795 (_ BitVec 32)) SeekEntryResult!10583)

(assert (=> b!1401985 (= e!793916 (= (seekEntryOrOpen!0 lt!617335 lt!617329 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126341 lt!617328) (index!44710 lt!617328) (index!44710 lt!617328) (select (arr!46244 a!2901) j!112) lt!617329 mask!2840)))))

(declare-fun b!1401986 () Bool)

(declare-fun e!793919 () Bool)

(assert (=> b!1401986 (= e!793919 true)))

(declare-fun lt!617333 () (_ BitVec 32))

(declare-fun lt!617332 () SeekEntryResult!10583)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95795 (_ BitVec 32)) SeekEntryResult!10583)

(assert (=> b!1401986 (= lt!617332 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617333 lt!617335 lt!617329 mask!2840))))

(declare-fun b!1401987 () Bool)

(declare-fun res!940604 () Bool)

(assert (=> b!1401987 (=> (not res!940604) (not e!793918))))

(declare-datatypes ((List!32943 0))(
  ( (Nil!32940) (Cons!32939 (h!34187 (_ BitVec 64)) (t!47644 List!32943)) )
))
(declare-fun arrayNoDuplicates!0 (array!95795 (_ BitVec 32) List!32943) Bool)

(assert (=> b!1401987 (= res!940604 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32940))))

(declare-fun b!1401988 () Bool)

(declare-fun res!940613 () Bool)

(assert (=> b!1401988 (=> (not res!940613) (not e!793918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401988 (= res!940613 (validKeyInArray!0 (select (arr!46244 a!2901) i!1037)))))

(declare-fun b!1401990 () Bool)

(declare-fun res!940606 () Bool)

(assert (=> b!1401990 (=> (not res!940606) (not e!793918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95795 (_ BitVec 32)) Bool)

(assert (=> b!1401990 (= res!940606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401991 () Bool)

(declare-fun e!793917 () Bool)

(assert (=> b!1401991 (= e!793917 (= (seekEntryOrOpen!0 (select (arr!46244 a!2901) j!112) a!2901 mask!2840) (Found!10583 j!112)))))

(declare-fun b!1401992 () Bool)

(declare-fun res!940614 () Bool)

(assert (=> b!1401992 (=> (not res!940614) (not e!793918))))

(assert (=> b!1401992 (= res!940614 (validKeyInArray!0 (select (arr!46244 a!2901) j!112)))))

(declare-fun res!940607 () Bool)

(assert (=> start!120468 (=> (not res!940607) (not e!793918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120468 (= res!940607 (validMask!0 mask!2840))))

(assert (=> start!120468 e!793918))

(assert (=> start!120468 true))

(declare-fun array_inv!35189 (array!95795) Bool)

(assert (=> start!120468 (array_inv!35189 a!2901)))

(declare-fun b!1401989 () Bool)

(declare-fun e!793920 () Bool)

(assert (=> b!1401989 (= e!793920 e!793919)))

(declare-fun res!940609 () Bool)

(assert (=> b!1401989 (=> res!940609 e!793919)))

(declare-fun lt!617334 () SeekEntryResult!10583)

(assert (=> b!1401989 (= res!940609 (or (bvslt (x!126341 lt!617334) #b00000000000000000000000000000000) (bvsgt (x!126341 lt!617334) #b01111111111111111111111111111110) (bvslt (x!126341 lt!617328) #b00000000000000000000000000000000) (bvsgt (x!126341 lt!617328) #b01111111111111111111111111111110) (bvslt lt!617333 #b00000000000000000000000000000000) (bvsge lt!617333 (size!46795 a!2901)) (bvslt (index!44710 lt!617334) #b00000000000000000000000000000000) (bvsge (index!44710 lt!617334) (size!46795 a!2901)) (bvslt (index!44710 lt!617328) #b00000000000000000000000000000000) (bvsge (index!44710 lt!617328) (size!46795 a!2901)) (not (= lt!617334 (Intermediate!10583 false (index!44710 lt!617334) (x!126341 lt!617334)))) (not (= lt!617328 (Intermediate!10583 false (index!44710 lt!617328) (x!126341 lt!617328))))))))

(assert (=> b!1401989 e!793916))

(declare-fun res!940610 () Bool)

(assert (=> b!1401989 (=> (not res!940610) (not e!793916))))

(assert (=> b!1401989 (= res!940610 (and (not (undefined!11395 lt!617328)) (= (index!44710 lt!617328) i!1037) (bvslt (x!126341 lt!617328) (x!126341 lt!617334)) (= (select (store (arr!46244 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44710 lt!617328)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47120 0))(
  ( (Unit!47121) )
))
(declare-fun lt!617330 () Unit!47120)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47120)

(assert (=> b!1401989 (= lt!617330 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617333 (x!126341 lt!617334) (index!44710 lt!617334) (x!126341 lt!617328) (index!44710 lt!617328) (undefined!11395 lt!617328) mask!2840))))

(declare-fun b!1401993 () Bool)

(declare-fun e!793921 () Bool)

(assert (=> b!1401993 (= e!793921 e!793920)))

(declare-fun res!940611 () Bool)

(assert (=> b!1401993 (=> res!940611 e!793920)))

(get-info :version)

(assert (=> b!1401993 (= res!940611 (or (= lt!617334 lt!617328) (not ((_ is Intermediate!10583) lt!617328))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401993 (= lt!617328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617335 mask!2840) lt!617335 lt!617329 mask!2840))))

(assert (=> b!1401993 (= lt!617335 (select (store (arr!46244 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401993 (= lt!617329 (array!95796 (store (arr!46244 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46795 a!2901)))))

(declare-fun b!1401994 () Bool)

(assert (=> b!1401994 (= e!793918 (not e!793921))))

(declare-fun res!940612 () Bool)

(assert (=> b!1401994 (=> res!940612 e!793921)))

(assert (=> b!1401994 (= res!940612 (or (not ((_ is Intermediate!10583) lt!617334)) (undefined!11395 lt!617334)))))

(assert (=> b!1401994 e!793917))

(declare-fun res!940608 () Bool)

(assert (=> b!1401994 (=> (not res!940608) (not e!793917))))

(assert (=> b!1401994 (= res!940608 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!617331 () Unit!47120)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47120)

(assert (=> b!1401994 (= lt!617331 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401994 (= lt!617334 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617333 (select (arr!46244 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401994 (= lt!617333 (toIndex!0 (select (arr!46244 a!2901) j!112) mask!2840))))

(assert (= (and start!120468 res!940607) b!1401984))

(assert (= (and b!1401984 res!940605) b!1401988))

(assert (= (and b!1401988 res!940613) b!1401992))

(assert (= (and b!1401992 res!940614) b!1401990))

(assert (= (and b!1401990 res!940606) b!1401987))

(assert (= (and b!1401987 res!940604) b!1401994))

(assert (= (and b!1401994 res!940608) b!1401991))

(assert (= (and b!1401994 (not res!940612)) b!1401993))

(assert (= (and b!1401993 (not res!940611)) b!1401989))

(assert (= (and b!1401989 res!940610) b!1401985))

(assert (= (and b!1401989 (not res!940609)) b!1401986))

(declare-fun m!1290037 () Bool)

(assert (=> b!1401992 m!1290037))

(assert (=> b!1401992 m!1290037))

(declare-fun m!1290039 () Bool)

(assert (=> b!1401992 m!1290039))

(declare-fun m!1290041 () Bool)

(assert (=> b!1401988 m!1290041))

(assert (=> b!1401988 m!1290041))

(declare-fun m!1290043 () Bool)

(assert (=> b!1401988 m!1290043))

(declare-fun m!1290045 () Bool)

(assert (=> b!1401989 m!1290045))

(declare-fun m!1290047 () Bool)

(assert (=> b!1401989 m!1290047))

(declare-fun m!1290049 () Bool)

(assert (=> b!1401989 m!1290049))

(declare-fun m!1290051 () Bool)

(assert (=> b!1401985 m!1290051))

(assert (=> b!1401985 m!1290037))

(assert (=> b!1401985 m!1290037))

(declare-fun m!1290053 () Bool)

(assert (=> b!1401985 m!1290053))

(declare-fun m!1290055 () Bool)

(assert (=> b!1401986 m!1290055))

(assert (=> b!1401991 m!1290037))

(assert (=> b!1401991 m!1290037))

(declare-fun m!1290057 () Bool)

(assert (=> b!1401991 m!1290057))

(declare-fun m!1290059 () Bool)

(assert (=> b!1401987 m!1290059))

(declare-fun m!1290061 () Bool)

(assert (=> b!1401990 m!1290061))

(assert (=> b!1401994 m!1290037))

(declare-fun m!1290063 () Bool)

(assert (=> b!1401994 m!1290063))

(assert (=> b!1401994 m!1290037))

(declare-fun m!1290065 () Bool)

(assert (=> b!1401994 m!1290065))

(assert (=> b!1401994 m!1290037))

(declare-fun m!1290067 () Bool)

(assert (=> b!1401994 m!1290067))

(declare-fun m!1290069 () Bool)

(assert (=> b!1401994 m!1290069))

(declare-fun m!1290071 () Bool)

(assert (=> start!120468 m!1290071))

(declare-fun m!1290073 () Bool)

(assert (=> start!120468 m!1290073))

(declare-fun m!1290075 () Bool)

(assert (=> b!1401993 m!1290075))

(assert (=> b!1401993 m!1290075))

(declare-fun m!1290077 () Bool)

(assert (=> b!1401993 m!1290077))

(assert (=> b!1401993 m!1290045))

(declare-fun m!1290079 () Bool)

(assert (=> b!1401993 m!1290079))

(check-sat (not b!1401987) (not b!1401990) (not b!1401994) (not b!1401988) (not b!1401993) (not b!1401991) (not b!1401992) (not b!1401986) (not start!120468) (not b!1401989) (not b!1401985))
(check-sat)
