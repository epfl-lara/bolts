; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125350 () Bool)

(assert start!125350)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98715 0))(
  ( (array!98716 (arr!47641 (Array (_ BitVec 32) (_ BitVec 64))) (size!48192 (_ BitVec 32))) )
))
(declare-fun lt!640773 () array!98715)

(declare-fun lt!640771 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1463551 () Bool)

(declare-datatypes ((SeekEntryResult!11916 0))(
  ( (MissingZero!11916 (index!50055 (_ BitVec 32))) (Found!11916 (index!50056 (_ BitVec 32))) (Intermediate!11916 (undefined!12728 Bool) (index!50057 (_ BitVec 32)) (x!131648 (_ BitVec 32))) (Undefined!11916) (MissingVacant!11916 (index!50058 (_ BitVec 32))) )
))
(declare-fun lt!640769 () SeekEntryResult!11916)

(declare-fun e!822598 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98715 (_ BitVec 32)) SeekEntryResult!11916)

(assert (=> b!1463551 (= e!822598 (= lt!640769 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640771 lt!640773 mask!2687)))))

(declare-fun b!1463552 () Bool)

(declare-fun e!822601 () Bool)

(declare-fun e!822602 () Bool)

(assert (=> b!1463552 (= e!822601 e!822602)))

(declare-fun res!992888 () Bool)

(assert (=> b!1463552 (=> res!992888 e!822602)))

(declare-fun a!2862 () array!98715)

(declare-fun lt!640768 () (_ BitVec 32))

(assert (=> b!1463552 (= res!992888 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640768 #b00000000000000000000000000000000) (bvsge lt!640768 (size!48192 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463552 (= lt!640768 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1463553 () Bool)

(declare-fun e!822600 () Bool)

(assert (=> b!1463553 (= e!822600 (not e!822601))))

(declare-fun res!992881 () Bool)

(assert (=> b!1463553 (=> res!992881 e!822601)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1463553 (= res!992881 (or (and (= (select (arr!47641 a!2862) index!646) (select (store (arr!47641 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47641 a!2862) index!646) (select (arr!47641 a!2862) j!93))) (= (select (arr!47641 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822599 () Bool)

(assert (=> b!1463553 e!822599))

(declare-fun res!992891 () Bool)

(assert (=> b!1463553 (=> (not res!992891) (not e!822599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98715 (_ BitVec 32)) Bool)

(assert (=> b!1463553 (= res!992891 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49276 0))(
  ( (Unit!49277) )
))
(declare-fun lt!640772 () Unit!49276)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98715 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49276)

(assert (=> b!1463553 (= lt!640772 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463554 () Bool)

(assert (=> b!1463554 (= e!822602 true)))

(declare-fun lt!640774 () Bool)

(declare-fun e!822595 () Bool)

(assert (=> b!1463554 (= lt!640774 e!822595)))

(declare-fun c!134852 () Bool)

(assert (=> b!1463554 (= c!134852 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463555 () Bool)

(declare-fun res!992877 () Bool)

(declare-fun e!822597 () Bool)

(assert (=> b!1463555 (=> (not res!992877) (not e!822597))))

(assert (=> b!1463555 (= res!992877 (and (= (size!48192 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48192 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48192 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!992886 () Bool)

(assert (=> start!125350 (=> (not res!992886) (not e!822597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125350 (= res!992886 (validMask!0 mask!2687))))

(assert (=> start!125350 e!822597))

(assert (=> start!125350 true))

(declare-fun array_inv!36586 (array!98715) Bool)

(assert (=> start!125350 (array_inv!36586 a!2862)))

(declare-fun b!1463556 () Bool)

(assert (=> b!1463556 (= e!822595 (not (= lt!640769 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640768 lt!640771 lt!640773 mask!2687))))))

(declare-fun b!1463557 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98715 (_ BitVec 32)) SeekEntryResult!11916)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98715 (_ BitVec 32)) SeekEntryResult!11916)

(assert (=> b!1463557 (= e!822595 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640768 intermediateAfterIndex!19 lt!640771 lt!640773 mask!2687) (seekEntryOrOpen!0 lt!640771 lt!640773 mask!2687))))))

(declare-fun b!1463558 () Bool)

(declare-fun e!822596 () Bool)

(assert (=> b!1463558 (= e!822597 e!822596)))

(declare-fun res!992887 () Bool)

(assert (=> b!1463558 (=> (not res!992887) (not e!822596))))

(assert (=> b!1463558 (= res!992887 (= (select (store (arr!47641 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1463558 (= lt!640773 (array!98716 (store (arr!47641 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48192 a!2862)))))

(declare-fun b!1463559 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1463559 (= e!822599 (or (= (select (arr!47641 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47641 a!2862) intermediateBeforeIndex!19) (select (arr!47641 a!2862) j!93))))))

(declare-fun b!1463560 () Bool)

(declare-fun res!992875 () Bool)

(assert (=> b!1463560 (=> (not res!992875) (not e!822597))))

(declare-datatypes ((List!34322 0))(
  ( (Nil!34319) (Cons!34318 (h!35668 (_ BitVec 64)) (t!49023 List!34322)) )
))
(declare-fun arrayNoDuplicates!0 (array!98715 (_ BitVec 32) List!34322) Bool)

(assert (=> b!1463560 (= res!992875 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34319))))

(declare-fun b!1463561 () Bool)

(declare-fun res!992882 () Bool)

(assert (=> b!1463561 (=> (not res!992882) (not e!822599))))

(assert (=> b!1463561 (= res!992882 (= (seekEntryOrOpen!0 (select (arr!47641 a!2862) j!93) a!2862 mask!2687) (Found!11916 j!93)))))

(declare-fun b!1463562 () Bool)

(declare-fun e!822593 () Bool)

(assert (=> b!1463562 (= e!822593 e!822600)))

(declare-fun res!992892 () Bool)

(assert (=> b!1463562 (=> (not res!992892) (not e!822600))))

(assert (=> b!1463562 (= res!992892 (= lt!640769 (Intermediate!11916 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463562 (= lt!640769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640771 mask!2687) lt!640771 lt!640773 mask!2687))))

(assert (=> b!1463562 (= lt!640771 (select (store (arr!47641 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463563 () Bool)

(declare-fun res!992876 () Bool)

(assert (=> b!1463563 (=> res!992876 e!822602)))

(declare-fun lt!640770 () SeekEntryResult!11916)

(assert (=> b!1463563 (= res!992876 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640768 (select (arr!47641 a!2862) j!93) a!2862 mask!2687) lt!640770)))))

(declare-fun b!1463564 () Bool)

(declare-fun res!992890 () Bool)

(assert (=> b!1463564 (=> (not res!992890) (not e!822600))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463564 (= res!992890 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463565 () Bool)

(declare-fun res!992878 () Bool)

(assert (=> b!1463565 (=> (not res!992878) (not e!822597))))

(assert (=> b!1463565 (= res!992878 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48192 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48192 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48192 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463566 () Bool)

(assert (=> b!1463566 (= e!822596 e!822593)))

(declare-fun res!992883 () Bool)

(assert (=> b!1463566 (=> (not res!992883) (not e!822593))))

(assert (=> b!1463566 (= res!992883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47641 a!2862) j!93) mask!2687) (select (arr!47641 a!2862) j!93) a!2862 mask!2687) lt!640770))))

(assert (=> b!1463566 (= lt!640770 (Intermediate!11916 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463567 () Bool)

(declare-fun res!992880 () Bool)

(assert (=> b!1463567 (=> (not res!992880) (not e!822597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463567 (= res!992880 (validKeyInArray!0 (select (arr!47641 a!2862) j!93)))))

(declare-fun b!1463568 () Bool)

(declare-fun res!992885 () Bool)

(assert (=> b!1463568 (=> (not res!992885) (not e!822600))))

(assert (=> b!1463568 (= res!992885 e!822598)))

(declare-fun c!134851 () Bool)

(assert (=> b!1463568 (= c!134851 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463569 () Bool)

(assert (=> b!1463569 (= e!822598 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640771 lt!640773 mask!2687) (seekEntryOrOpen!0 lt!640771 lt!640773 mask!2687)))))

(declare-fun b!1463570 () Bool)

(declare-fun res!992879 () Bool)

(assert (=> b!1463570 (=> (not res!992879) (not e!822597))))

(assert (=> b!1463570 (= res!992879 (validKeyInArray!0 (select (arr!47641 a!2862) i!1006)))))

(declare-fun b!1463571 () Bool)

(declare-fun res!992884 () Bool)

(assert (=> b!1463571 (=> (not res!992884) (not e!822593))))

(assert (=> b!1463571 (= res!992884 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47641 a!2862) j!93) a!2862 mask!2687) lt!640770))))

(declare-fun b!1463572 () Bool)

(declare-fun res!992889 () Bool)

(assert (=> b!1463572 (=> (not res!992889) (not e!822597))))

(assert (=> b!1463572 (= res!992889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125350 res!992886) b!1463555))

(assert (= (and b!1463555 res!992877) b!1463570))

(assert (= (and b!1463570 res!992879) b!1463567))

(assert (= (and b!1463567 res!992880) b!1463572))

(assert (= (and b!1463572 res!992889) b!1463560))

(assert (= (and b!1463560 res!992875) b!1463565))

(assert (= (and b!1463565 res!992878) b!1463558))

(assert (= (and b!1463558 res!992887) b!1463566))

(assert (= (and b!1463566 res!992883) b!1463571))

(assert (= (and b!1463571 res!992884) b!1463562))

(assert (= (and b!1463562 res!992892) b!1463568))

(assert (= (and b!1463568 c!134851) b!1463551))

(assert (= (and b!1463568 (not c!134851)) b!1463569))

(assert (= (and b!1463568 res!992885) b!1463564))

(assert (= (and b!1463564 res!992890) b!1463553))

(assert (= (and b!1463553 res!992891) b!1463561))

(assert (= (and b!1463561 res!992882) b!1463559))

(assert (= (and b!1463553 (not res!992881)) b!1463552))

(assert (= (and b!1463552 (not res!992888)) b!1463563))

(assert (= (and b!1463563 (not res!992876)) b!1463554))

(assert (= (and b!1463554 c!134852) b!1463556))

(assert (= (and b!1463554 (not c!134852)) b!1463557))

(declare-fun m!1350921 () Bool)

(assert (=> b!1463558 m!1350921))

(declare-fun m!1350923 () Bool)

(assert (=> b!1463558 m!1350923))

(declare-fun m!1350925 () Bool)

(assert (=> b!1463556 m!1350925))

(declare-fun m!1350927 () Bool)

(assert (=> b!1463559 m!1350927))

(declare-fun m!1350929 () Bool)

(assert (=> b!1463559 m!1350929))

(declare-fun m!1350931 () Bool)

(assert (=> b!1463557 m!1350931))

(declare-fun m!1350933 () Bool)

(assert (=> b!1463557 m!1350933))

(declare-fun m!1350935 () Bool)

(assert (=> b!1463553 m!1350935))

(assert (=> b!1463553 m!1350921))

(declare-fun m!1350937 () Bool)

(assert (=> b!1463553 m!1350937))

(declare-fun m!1350939 () Bool)

(assert (=> b!1463553 m!1350939))

(declare-fun m!1350941 () Bool)

(assert (=> b!1463553 m!1350941))

(assert (=> b!1463553 m!1350929))

(assert (=> b!1463571 m!1350929))

(assert (=> b!1463571 m!1350929))

(declare-fun m!1350943 () Bool)

(assert (=> b!1463571 m!1350943))

(assert (=> b!1463561 m!1350929))

(assert (=> b!1463561 m!1350929))

(declare-fun m!1350945 () Bool)

(assert (=> b!1463561 m!1350945))

(declare-fun m!1350947 () Bool)

(assert (=> b!1463551 m!1350947))

(declare-fun m!1350949 () Bool)

(assert (=> b!1463569 m!1350949))

(assert (=> b!1463569 m!1350933))

(assert (=> b!1463563 m!1350929))

(assert (=> b!1463563 m!1350929))

(declare-fun m!1350951 () Bool)

(assert (=> b!1463563 m!1350951))

(declare-fun m!1350953 () Bool)

(assert (=> b!1463560 m!1350953))

(declare-fun m!1350955 () Bool)

(assert (=> b!1463562 m!1350955))

(assert (=> b!1463562 m!1350955))

(declare-fun m!1350957 () Bool)

(assert (=> b!1463562 m!1350957))

(assert (=> b!1463562 m!1350921))

(declare-fun m!1350959 () Bool)

(assert (=> b!1463562 m!1350959))

(declare-fun m!1350961 () Bool)

(assert (=> b!1463572 m!1350961))

(declare-fun m!1350963 () Bool)

(assert (=> b!1463570 m!1350963))

(assert (=> b!1463570 m!1350963))

(declare-fun m!1350965 () Bool)

(assert (=> b!1463570 m!1350965))

(declare-fun m!1350967 () Bool)

(assert (=> b!1463552 m!1350967))

(declare-fun m!1350969 () Bool)

(assert (=> start!125350 m!1350969))

(declare-fun m!1350971 () Bool)

(assert (=> start!125350 m!1350971))

(assert (=> b!1463567 m!1350929))

(assert (=> b!1463567 m!1350929))

(declare-fun m!1350973 () Bool)

(assert (=> b!1463567 m!1350973))

(assert (=> b!1463566 m!1350929))

(assert (=> b!1463566 m!1350929))

(declare-fun m!1350975 () Bool)

(assert (=> b!1463566 m!1350975))

(assert (=> b!1463566 m!1350975))

(assert (=> b!1463566 m!1350929))

(declare-fun m!1350977 () Bool)

(assert (=> b!1463566 m!1350977))

(push 1)

