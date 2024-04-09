; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125236 () Bool)

(assert start!125236)

(declare-fun b!1459962 () Bool)

(declare-fun res!989903 () Bool)

(declare-fun e!821000 () Bool)

(assert (=> b!1459962 (=> (not res!989903) (not e!821000))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1459962 (= res!989903 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!639630 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11859 0))(
  ( (MissingZero!11859 (index!49827 (_ BitVec 32))) (Found!11859 (index!49828 (_ BitVec 32))) (Intermediate!11859 (undefined!12671 Bool) (index!49829 (_ BitVec 32)) (x!131439 (_ BitVec 32))) (Undefined!11859) (MissingVacant!11859 (index!49830 (_ BitVec 32))) )
))
(declare-fun lt!639633 () SeekEntryResult!11859)

(declare-fun b!1459963 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!639637 () (_ BitVec 32))

(declare-datatypes ((array!98601 0))(
  ( (array!98602 (arr!47584 (Array (_ BitVec 32) (_ BitVec 64))) (size!48135 (_ BitVec 32))) )
))
(declare-fun lt!639635 () array!98601)

(declare-fun e!820996 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98601 (_ BitVec 32)) SeekEntryResult!11859)

(assert (=> b!1459963 (= e!820996 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639637 intermediateAfterIndex!19 lt!639630 lt!639635 mask!2687) lt!639633)))))

(declare-fun b!1459965 () Bool)

(declare-fun res!989909 () Bool)

(declare-fun e!820993 () Bool)

(assert (=> b!1459965 (=> res!989909 e!820993)))

(declare-fun lt!639634 () SeekEntryResult!11859)

(declare-fun a!2862 () array!98601)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98601 (_ BitVec 32)) SeekEntryResult!11859)

(assert (=> b!1459965 (= res!989909 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639637 (select (arr!47584 a!2862) j!93) a!2862 mask!2687) lt!639634)))))

(declare-fun b!1459966 () Bool)

(declare-fun res!989912 () Bool)

(declare-fun e!820991 () Bool)

(assert (=> b!1459966 (=> (not res!989912) (not e!820991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459966 (= res!989912 (validKeyInArray!0 (select (arr!47584 a!2862) j!93)))))

(declare-fun b!1459967 () Bool)

(declare-fun e!820995 () Bool)

(declare-fun e!820997 () Bool)

(assert (=> b!1459967 (= e!820995 e!820997)))

(declare-fun res!989910 () Bool)

(assert (=> b!1459967 (=> (not res!989910) (not e!820997))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459967 (= res!989910 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47584 a!2862) j!93) mask!2687) (select (arr!47584 a!2862) j!93) a!2862 mask!2687) lt!639634))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1459967 (= lt!639634 (Intermediate!11859 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459968 () Bool)

(declare-fun res!989913 () Bool)

(assert (=> b!1459968 (=> res!989913 e!820993)))

(assert (=> b!1459968 (= res!989913 e!820996)))

(declare-fun c!134545 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1459968 (= c!134545 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459964 () Bool)

(declare-fun e!820994 () Bool)

(assert (=> b!1459964 (= e!820993 e!820994)))

(declare-fun res!989904 () Bool)

(assert (=> b!1459964 (=> res!989904 e!820994)))

(assert (=> b!1459964 (= res!989904 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!639629 () SeekEntryResult!11859)

(assert (=> b!1459964 (= lt!639629 lt!639633)))

(declare-datatypes ((Unit!49162 0))(
  ( (Unit!49163) )
))
(declare-fun lt!639632 () Unit!49162)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98601 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49162)

(assert (=> b!1459964 (= lt!639632 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639637 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!989900 () Bool)

(assert (=> start!125236 (=> (not res!989900) (not e!820991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125236 (= res!989900 (validMask!0 mask!2687))))

(assert (=> start!125236 e!820991))

(assert (=> start!125236 true))

(declare-fun array_inv!36529 (array!98601) Bool)

(assert (=> start!125236 (array_inv!36529 a!2862)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1459969 () Bool)

(declare-fun e!820999 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98601 (_ BitVec 32)) SeekEntryResult!11859)

(assert (=> b!1459969 (= e!820999 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639630 lt!639635 mask!2687) (seekEntryOrOpen!0 lt!639630 lt!639635 mask!2687)))))

(declare-fun b!1459970 () Bool)

(declare-fun res!989914 () Bool)

(assert (=> b!1459970 (=> res!989914 e!820993)))

(assert (=> b!1459970 (= res!989914 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459971 () Bool)

(declare-fun res!989906 () Bool)

(assert (=> b!1459971 (=> (not res!989906) (not e!820991))))

(assert (=> b!1459971 (= res!989906 (validKeyInArray!0 (select (arr!47584 a!2862) i!1006)))))

(declare-fun b!1459972 () Bool)

(declare-fun lt!639636 () SeekEntryResult!11859)

(assert (=> b!1459972 (= e!820996 (not (= lt!639636 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639637 lt!639630 lt!639635 mask!2687))))))

(declare-fun b!1459973 () Bool)

(declare-fun res!989902 () Bool)

(assert (=> b!1459973 (=> (not res!989902) (not e!821000))))

(assert (=> b!1459973 (= res!989902 e!820999)))

(declare-fun c!134546 () Bool)

(assert (=> b!1459973 (= c!134546 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1459974 () Bool)

(declare-fun res!989899 () Bool)

(assert (=> b!1459974 (=> (not res!989899) (not e!820991))))

(assert (=> b!1459974 (= res!989899 (and (= (size!48135 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48135 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48135 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459975 () Bool)

(assert (=> b!1459975 (= e!820994 (validKeyInArray!0 lt!639630))))

(declare-fun b!1459976 () Bool)

(declare-fun res!989908 () Bool)

(assert (=> b!1459976 (=> (not res!989908) (not e!820991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98601 (_ BitVec 32)) Bool)

(assert (=> b!1459976 (= res!989908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459977 () Bool)

(declare-fun e!820992 () Bool)

(assert (=> b!1459977 (= e!821000 (not e!820992))))

(declare-fun res!989905 () Bool)

(assert (=> b!1459977 (=> res!989905 e!820992)))

(assert (=> b!1459977 (= res!989905 (or (and (= (select (arr!47584 a!2862) index!646) (select (store (arr!47584 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47584 a!2862) index!646) (select (arr!47584 a!2862) j!93))) (= (select (arr!47584 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1459977 (and (= lt!639629 (Found!11859 j!93)) (or (= (select (arr!47584 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47584 a!2862) intermediateBeforeIndex!19) (select (arr!47584 a!2862) j!93))) (let ((bdg!53561 (select (store (arr!47584 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47584 a!2862) index!646) bdg!53561) (= (select (arr!47584 a!2862) index!646) (select (arr!47584 a!2862) j!93))) (= (select (arr!47584 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53561 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1459977 (= lt!639629 (seekEntryOrOpen!0 (select (arr!47584 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1459977 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!639631 () Unit!49162)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98601 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49162)

(assert (=> b!1459977 (= lt!639631 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459978 () Bool)

(declare-fun res!989911 () Bool)

(assert (=> b!1459978 (=> (not res!989911) (not e!820997))))

(assert (=> b!1459978 (= res!989911 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47584 a!2862) j!93) a!2862 mask!2687) lt!639634))))

(declare-fun b!1459979 () Bool)

(assert (=> b!1459979 (= e!820991 e!820995)))

(declare-fun res!989898 () Bool)

(assert (=> b!1459979 (=> (not res!989898) (not e!820995))))

(assert (=> b!1459979 (= res!989898 (= (select (store (arr!47584 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459979 (= lt!639635 (array!98602 (store (arr!47584 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48135 a!2862)))))

(declare-fun b!1459980 () Bool)

(assert (=> b!1459980 (= e!820997 e!821000)))

(declare-fun res!989916 () Bool)

(assert (=> b!1459980 (=> (not res!989916) (not e!821000))))

(assert (=> b!1459980 (= res!989916 (= lt!639636 (Intermediate!11859 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1459980 (= lt!639636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639630 mask!2687) lt!639630 lt!639635 mask!2687))))

(assert (=> b!1459980 (= lt!639630 (select (store (arr!47584 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459981 () Bool)

(assert (=> b!1459981 (= e!820999 (= lt!639636 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639630 lt!639635 mask!2687)))))

(declare-fun b!1459982 () Bool)

(declare-fun res!989907 () Bool)

(assert (=> b!1459982 (=> (not res!989907) (not e!820991))))

(declare-datatypes ((List!34265 0))(
  ( (Nil!34262) (Cons!34261 (h!35611 (_ BitVec 64)) (t!48966 List!34265)) )
))
(declare-fun arrayNoDuplicates!0 (array!98601 (_ BitVec 32) List!34265) Bool)

(assert (=> b!1459982 (= res!989907 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34262))))

(declare-fun b!1459983 () Bool)

(declare-fun res!989901 () Bool)

(assert (=> b!1459983 (=> (not res!989901) (not e!820991))))

(assert (=> b!1459983 (= res!989901 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48135 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48135 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48135 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459984 () Bool)

(assert (=> b!1459984 (= e!820992 e!820993)))

(declare-fun res!989915 () Bool)

(assert (=> b!1459984 (=> res!989915 e!820993)))

(assert (=> b!1459984 (= res!989915 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639637 #b00000000000000000000000000000000) (bvsge lt!639637 (size!48135 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459984 (= lt!639637 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1459984 (= lt!639633 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639630 lt!639635 mask!2687))))

(assert (=> b!1459984 (= lt!639633 (seekEntryOrOpen!0 lt!639630 lt!639635 mask!2687))))

(assert (= (and start!125236 res!989900) b!1459974))

(assert (= (and b!1459974 res!989899) b!1459971))

(assert (= (and b!1459971 res!989906) b!1459966))

(assert (= (and b!1459966 res!989912) b!1459976))

(assert (= (and b!1459976 res!989908) b!1459982))

(assert (= (and b!1459982 res!989907) b!1459983))

(assert (= (and b!1459983 res!989901) b!1459979))

(assert (= (and b!1459979 res!989898) b!1459967))

(assert (= (and b!1459967 res!989910) b!1459978))

(assert (= (and b!1459978 res!989911) b!1459980))

(assert (= (and b!1459980 res!989916) b!1459973))

(assert (= (and b!1459973 c!134546) b!1459981))

(assert (= (and b!1459973 (not c!134546)) b!1459969))

(assert (= (and b!1459973 res!989902) b!1459962))

(assert (= (and b!1459962 res!989903) b!1459977))

(assert (= (and b!1459977 (not res!989905)) b!1459984))

(assert (= (and b!1459984 (not res!989915)) b!1459965))

(assert (= (and b!1459965 (not res!989909)) b!1459968))

(assert (= (and b!1459968 c!134545) b!1459972))

(assert (= (and b!1459968 (not c!134545)) b!1459963))

(assert (= (and b!1459968 (not res!989913)) b!1459970))

(assert (= (and b!1459970 (not res!989914)) b!1459964))

(assert (= (and b!1459964 (not res!989904)) b!1459975))

(declare-fun m!1347723 () Bool)

(assert (=> b!1459980 m!1347723))

(assert (=> b!1459980 m!1347723))

(declare-fun m!1347725 () Bool)

(assert (=> b!1459980 m!1347725))

(declare-fun m!1347727 () Bool)

(assert (=> b!1459980 m!1347727))

(declare-fun m!1347729 () Bool)

(assert (=> b!1459980 m!1347729))

(declare-fun m!1347731 () Bool)

(assert (=> b!1459966 m!1347731))

(assert (=> b!1459966 m!1347731))

(declare-fun m!1347733 () Bool)

(assert (=> b!1459966 m!1347733))

(assert (=> b!1459967 m!1347731))

(assert (=> b!1459967 m!1347731))

(declare-fun m!1347735 () Bool)

(assert (=> b!1459967 m!1347735))

(assert (=> b!1459967 m!1347735))

(assert (=> b!1459967 m!1347731))

(declare-fun m!1347737 () Bool)

(assert (=> b!1459967 m!1347737))

(assert (=> b!1459965 m!1347731))

(assert (=> b!1459965 m!1347731))

(declare-fun m!1347739 () Bool)

(assert (=> b!1459965 m!1347739))

(declare-fun m!1347741 () Bool)

(assert (=> b!1459969 m!1347741))

(declare-fun m!1347743 () Bool)

(assert (=> b!1459969 m!1347743))

(declare-fun m!1347745 () Bool)

(assert (=> b!1459971 m!1347745))

(assert (=> b!1459971 m!1347745))

(declare-fun m!1347747 () Bool)

(assert (=> b!1459971 m!1347747))

(declare-fun m!1347749 () Bool)

(assert (=> b!1459984 m!1347749))

(assert (=> b!1459984 m!1347741))

(assert (=> b!1459984 m!1347743))

(declare-fun m!1347751 () Bool)

(assert (=> start!125236 m!1347751))

(declare-fun m!1347753 () Bool)

(assert (=> start!125236 m!1347753))

(declare-fun m!1347755 () Bool)

(assert (=> b!1459963 m!1347755))

(declare-fun m!1347757 () Bool)

(assert (=> b!1459972 m!1347757))

(declare-fun m!1347759 () Bool)

(assert (=> b!1459976 m!1347759))

(declare-fun m!1347761 () Bool)

(assert (=> b!1459981 m!1347761))

(declare-fun m!1347763 () Bool)

(assert (=> b!1459964 m!1347763))

(declare-fun m!1347765 () Bool)

(assert (=> b!1459977 m!1347765))

(assert (=> b!1459977 m!1347727))

(declare-fun m!1347767 () Bool)

(assert (=> b!1459977 m!1347767))

(declare-fun m!1347769 () Bool)

(assert (=> b!1459977 m!1347769))

(declare-fun m!1347771 () Bool)

(assert (=> b!1459977 m!1347771))

(assert (=> b!1459977 m!1347731))

(declare-fun m!1347773 () Bool)

(assert (=> b!1459977 m!1347773))

(declare-fun m!1347775 () Bool)

(assert (=> b!1459977 m!1347775))

(assert (=> b!1459977 m!1347731))

(declare-fun m!1347777 () Bool)

(assert (=> b!1459975 m!1347777))

(assert (=> b!1459979 m!1347727))

(declare-fun m!1347779 () Bool)

(assert (=> b!1459979 m!1347779))

(declare-fun m!1347781 () Bool)

(assert (=> b!1459982 m!1347781))

(assert (=> b!1459978 m!1347731))

(assert (=> b!1459978 m!1347731))

(declare-fun m!1347783 () Bool)

(assert (=> b!1459978 m!1347783))

(push 1)

