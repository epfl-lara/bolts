; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125234 () Bool)

(assert start!125234)

(declare-fun b!1459894 () Bool)

(declare-fun e!820970 () Bool)

(declare-fun e!820962 () Bool)

(assert (=> b!1459894 (= e!820970 e!820962)))

(declare-fun res!989845 () Bool)

(assert (=> b!1459894 (=> (not res!989845) (not e!820962))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11858 0))(
  ( (MissingZero!11858 (index!49823 (_ BitVec 32))) (Found!11858 (index!49824 (_ BitVec 32))) (Intermediate!11858 (undefined!12670 Bool) (index!49825 (_ BitVec 32)) (x!131430 (_ BitVec 32))) (Undefined!11858) (MissingVacant!11858 (index!49826 (_ BitVec 32))) )
))
(declare-fun lt!639607 () SeekEntryResult!11858)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1459894 (= res!989845 (= lt!639607 (Intermediate!11858 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!98599 0))(
  ( (array!98600 (arr!47583 (Array (_ BitVec 32) (_ BitVec 64))) (size!48134 (_ BitVec 32))) )
))
(declare-fun lt!639605 () array!98599)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!639609 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98599 (_ BitVec 32)) SeekEntryResult!11858)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459894 (= lt!639607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639609 mask!2687) lt!639609 lt!639605 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98599)

(assert (=> b!1459894 (= lt!639609 (select (store (arr!47583 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459895 () Bool)

(declare-fun res!989853 () Bool)

(declare-fun e!820968 () Bool)

(assert (=> b!1459895 (=> (not res!989853) (not e!820968))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1459895 (= res!989853 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48134 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48134 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48134 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459896 () Bool)

(declare-fun res!989850 () Bool)

(declare-fun e!820965 () Bool)

(assert (=> b!1459896 (=> res!989850 e!820965)))

(assert (=> b!1459896 (= res!989850 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459897 () Bool)

(declare-fun res!989849 () Bool)

(assert (=> b!1459897 (=> res!989849 e!820965)))

(declare-fun lt!639608 () SeekEntryResult!11858)

(declare-fun lt!639603 () (_ BitVec 32))

(assert (=> b!1459897 (= res!989849 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639603 (select (arr!47583 a!2862) j!93) a!2862 mask!2687) lt!639608)))))

(declare-fun b!1459898 () Bool)

(declare-fun res!989848 () Bool)

(assert (=> b!1459898 (=> (not res!989848) (not e!820962))))

(assert (=> b!1459898 (= res!989848 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459899 () Bool)

(declare-fun res!989856 () Bool)

(assert (=> b!1459899 (=> (not res!989856) (not e!820970))))

(assert (=> b!1459899 (= res!989856 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47583 a!2862) j!93) a!2862 mask!2687) lt!639608))))

(declare-fun b!1459900 () Bool)

(declare-fun res!989852 () Bool)

(assert (=> b!1459900 (=> res!989852 e!820965)))

(declare-fun e!820963 () Bool)

(assert (=> b!1459900 (= res!989852 e!820963)))

(declare-fun c!134539 () Bool)

(assert (=> b!1459900 (= c!134539 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459901 () Bool)

(declare-fun e!820966 () Bool)

(assert (=> b!1459901 (= e!820966 e!820970)))

(declare-fun res!989854 () Bool)

(assert (=> b!1459901 (=> (not res!989854) (not e!820970))))

(assert (=> b!1459901 (= res!989854 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47583 a!2862) j!93) mask!2687) (select (arr!47583 a!2862) j!93) a!2862 mask!2687) lt!639608))))

(assert (=> b!1459901 (= lt!639608 (Intermediate!11858 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459903 () Bool)

(declare-fun res!989847 () Bool)

(assert (=> b!1459903 (=> (not res!989847) (not e!820968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459903 (= res!989847 (validKeyInArray!0 (select (arr!47583 a!2862) j!93)))))

(declare-fun b!1459904 () Bool)

(declare-fun res!989844 () Bool)

(assert (=> b!1459904 (=> (not res!989844) (not e!820962))))

(declare-fun e!820969 () Bool)

(assert (=> b!1459904 (= res!989844 e!820969)))

(declare-fun c!134540 () Bool)

(assert (=> b!1459904 (= c!134540 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1459905 () Bool)

(declare-fun res!989855 () Bool)

(assert (=> b!1459905 (=> (not res!989855) (not e!820968))))

(assert (=> b!1459905 (= res!989855 (validKeyInArray!0 (select (arr!47583 a!2862) i!1006)))))

(declare-fun b!1459906 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98599 (_ BitVec 32)) SeekEntryResult!11858)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98599 (_ BitVec 32)) SeekEntryResult!11858)

(assert (=> b!1459906 (= e!820969 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639609 lt!639605 mask!2687) (seekEntryOrOpen!0 lt!639609 lt!639605 mask!2687)))))

(declare-fun lt!639602 () SeekEntryResult!11858)

(declare-fun b!1459907 () Bool)

(assert (=> b!1459907 (= e!820963 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639603 intermediateAfterIndex!19 lt!639609 lt!639605 mask!2687) lt!639602)))))

(declare-fun b!1459908 () Bool)

(declare-fun res!989843 () Bool)

(assert (=> b!1459908 (=> (not res!989843) (not e!820968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98599 (_ BitVec 32)) Bool)

(assert (=> b!1459908 (= res!989843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459909 () Bool)

(assert (=> b!1459909 (= e!820968 e!820966)))

(declare-fun res!989846 () Bool)

(assert (=> b!1459909 (=> (not res!989846) (not e!820966))))

(assert (=> b!1459909 (= res!989846 (= (select (store (arr!47583 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459909 (= lt!639605 (array!98600 (store (arr!47583 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48134 a!2862)))))

(declare-fun b!1459910 () Bool)

(declare-fun res!989842 () Bool)

(assert (=> b!1459910 (=> (not res!989842) (not e!820968))))

(declare-datatypes ((List!34264 0))(
  ( (Nil!34261) (Cons!34260 (h!35610 (_ BitVec 64)) (t!48965 List!34264)) )
))
(declare-fun arrayNoDuplicates!0 (array!98599 (_ BitVec 32) List!34264) Bool)

(assert (=> b!1459910 (= res!989842 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34261))))

(declare-fun b!1459911 () Bool)

(declare-fun e!820964 () Bool)

(assert (=> b!1459911 (= e!820964 e!820965)))

(declare-fun res!989857 () Bool)

(assert (=> b!1459911 (=> res!989857 e!820965)))

(assert (=> b!1459911 (= res!989857 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639603 #b00000000000000000000000000000000) (bvsge lt!639603 (size!48134 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459911 (= lt!639603 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1459911 (= lt!639602 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639609 lt!639605 mask!2687))))

(assert (=> b!1459911 (= lt!639602 (seekEntryOrOpen!0 lt!639609 lt!639605 mask!2687))))

(declare-fun b!1459912 () Bool)

(assert (=> b!1459912 (= e!820969 (= lt!639607 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639609 lt!639605 mask!2687)))))

(declare-fun b!1459913 () Bool)

(assert (=> b!1459913 (= e!820965 true)))

(declare-fun lt!639606 () SeekEntryResult!11858)

(assert (=> b!1459913 (= lt!639606 lt!639602)))

(declare-datatypes ((Unit!49160 0))(
  ( (Unit!49161) )
))
(declare-fun lt!639604 () Unit!49160)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49160)

(assert (=> b!1459913 (= lt!639604 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639603 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459914 () Bool)

(assert (=> b!1459914 (= e!820962 (not e!820964))))

(declare-fun res!989859 () Bool)

(assert (=> b!1459914 (=> res!989859 e!820964)))

(assert (=> b!1459914 (= res!989859 (or (and (= (select (arr!47583 a!2862) index!646) (select (store (arr!47583 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47583 a!2862) index!646) (select (arr!47583 a!2862) j!93))) (= (select (arr!47583 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1459914 (and (= lt!639606 (Found!11858 j!93)) (or (= (select (arr!47583 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47583 a!2862) intermediateBeforeIndex!19) (select (arr!47583 a!2862) j!93))) (let ((bdg!53549 (select (store (arr!47583 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47583 a!2862) index!646) bdg!53549) (= (select (arr!47583 a!2862) index!646) (select (arr!47583 a!2862) j!93))) (= (select (arr!47583 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53549 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1459914 (= lt!639606 (seekEntryOrOpen!0 (select (arr!47583 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1459914 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!639610 () Unit!49160)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49160)

(assert (=> b!1459914 (= lt!639610 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459915 () Bool)

(assert (=> b!1459915 (= e!820963 (not (= lt!639607 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639603 lt!639609 lt!639605 mask!2687))))))

(declare-fun res!989851 () Bool)

(assert (=> start!125234 (=> (not res!989851) (not e!820968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125234 (= res!989851 (validMask!0 mask!2687))))

(assert (=> start!125234 e!820968))

(assert (=> start!125234 true))

(declare-fun array_inv!36528 (array!98599) Bool)

(assert (=> start!125234 (array_inv!36528 a!2862)))

(declare-fun b!1459902 () Bool)

(declare-fun res!989858 () Bool)

(assert (=> b!1459902 (=> (not res!989858) (not e!820968))))

(assert (=> b!1459902 (= res!989858 (and (= (size!48134 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48134 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48134 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125234 res!989851) b!1459902))

(assert (= (and b!1459902 res!989858) b!1459905))

(assert (= (and b!1459905 res!989855) b!1459903))

(assert (= (and b!1459903 res!989847) b!1459908))

(assert (= (and b!1459908 res!989843) b!1459910))

(assert (= (and b!1459910 res!989842) b!1459895))

(assert (= (and b!1459895 res!989853) b!1459909))

(assert (= (and b!1459909 res!989846) b!1459901))

(assert (= (and b!1459901 res!989854) b!1459899))

(assert (= (and b!1459899 res!989856) b!1459894))

(assert (= (and b!1459894 res!989845) b!1459904))

(assert (= (and b!1459904 c!134540) b!1459912))

(assert (= (and b!1459904 (not c!134540)) b!1459906))

(assert (= (and b!1459904 res!989844) b!1459898))

(assert (= (and b!1459898 res!989848) b!1459914))

(assert (= (and b!1459914 (not res!989859)) b!1459911))

(assert (= (and b!1459911 (not res!989857)) b!1459897))

(assert (= (and b!1459897 (not res!989849)) b!1459900))

(assert (= (and b!1459900 c!134539) b!1459915))

(assert (= (and b!1459900 (not c!134539)) b!1459907))

(assert (= (and b!1459900 (not res!989852)) b!1459896))

(assert (= (and b!1459896 (not res!989850)) b!1459913))

(declare-fun m!1347663 () Bool)

(assert (=> start!125234 m!1347663))

(declare-fun m!1347665 () Bool)

(assert (=> start!125234 m!1347665))

(declare-fun m!1347667 () Bool)

(assert (=> b!1459910 m!1347667))

(declare-fun m!1347669 () Bool)

(assert (=> b!1459899 m!1347669))

(assert (=> b!1459899 m!1347669))

(declare-fun m!1347671 () Bool)

(assert (=> b!1459899 m!1347671))

(declare-fun m!1347673 () Bool)

(assert (=> b!1459914 m!1347673))

(declare-fun m!1347675 () Bool)

(assert (=> b!1459914 m!1347675))

(declare-fun m!1347677 () Bool)

(assert (=> b!1459914 m!1347677))

(declare-fun m!1347679 () Bool)

(assert (=> b!1459914 m!1347679))

(declare-fun m!1347681 () Bool)

(assert (=> b!1459914 m!1347681))

(assert (=> b!1459914 m!1347669))

(declare-fun m!1347683 () Bool)

(assert (=> b!1459914 m!1347683))

(declare-fun m!1347685 () Bool)

(assert (=> b!1459914 m!1347685))

(assert (=> b!1459914 m!1347669))

(assert (=> b!1459903 m!1347669))

(assert (=> b!1459903 m!1347669))

(declare-fun m!1347687 () Bool)

(assert (=> b!1459903 m!1347687))

(declare-fun m!1347689 () Bool)

(assert (=> b!1459908 m!1347689))

(declare-fun m!1347691 () Bool)

(assert (=> b!1459906 m!1347691))

(declare-fun m!1347693 () Bool)

(assert (=> b!1459906 m!1347693))

(assert (=> b!1459901 m!1347669))

(assert (=> b!1459901 m!1347669))

(declare-fun m!1347695 () Bool)

(assert (=> b!1459901 m!1347695))

(assert (=> b!1459901 m!1347695))

(assert (=> b!1459901 m!1347669))

(declare-fun m!1347697 () Bool)

(assert (=> b!1459901 m!1347697))

(declare-fun m!1347699 () Bool)

(assert (=> b!1459913 m!1347699))

(declare-fun m!1347701 () Bool)

(assert (=> b!1459905 m!1347701))

(assert (=> b!1459905 m!1347701))

(declare-fun m!1347703 () Bool)

(assert (=> b!1459905 m!1347703))

(declare-fun m!1347705 () Bool)

(assert (=> b!1459907 m!1347705))

(declare-fun m!1347707 () Bool)

(assert (=> b!1459911 m!1347707))

(assert (=> b!1459911 m!1347691))

(assert (=> b!1459911 m!1347693))

(declare-fun m!1347709 () Bool)

(assert (=> b!1459894 m!1347709))

(assert (=> b!1459894 m!1347709))

(declare-fun m!1347711 () Bool)

(assert (=> b!1459894 m!1347711))

(assert (=> b!1459894 m!1347675))

(declare-fun m!1347713 () Bool)

(assert (=> b!1459894 m!1347713))

(declare-fun m!1347715 () Bool)

(assert (=> b!1459912 m!1347715))

(assert (=> b!1459909 m!1347675))

(declare-fun m!1347717 () Bool)

(assert (=> b!1459909 m!1347717))

(declare-fun m!1347719 () Bool)

(assert (=> b!1459915 m!1347719))

(assert (=> b!1459897 m!1347669))

(assert (=> b!1459897 m!1347669))

(declare-fun m!1347721 () Bool)

(assert (=> b!1459897 m!1347721))

(push 1)

