; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125090 () Bool)

(assert start!125090)

(declare-fun b!1455142 () Bool)

(declare-fun e!818868 () Bool)

(declare-fun e!818871 () Bool)

(assert (=> b!1455142 (= e!818868 e!818871)))

(declare-fun res!985968 () Bool)

(assert (=> b!1455142 (=> (not res!985968) (not e!818871))))

(declare-datatypes ((SeekEntryResult!11786 0))(
  ( (MissingZero!11786 (index!49535 (_ BitVec 32))) (Found!11786 (index!49536 (_ BitVec 32))) (Intermediate!11786 (undefined!12598 Bool) (index!49537 (_ BitVec 32)) (x!131166 (_ BitVec 32))) (Undefined!11786) (MissingVacant!11786 (index!49538 (_ BitVec 32))) )
))
(declare-fun lt!637816 () SeekEntryResult!11786)

(declare-datatypes ((array!98455 0))(
  ( (array!98456 (arr!47511 (Array (_ BitVec 32) (_ BitVec 64))) (size!48062 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98455)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98455 (_ BitVec 32)) SeekEntryResult!11786)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455142 (= res!985968 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47511 a!2862) j!93) mask!2687) (select (arr!47511 a!2862) j!93) a!2862 mask!2687) lt!637816))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1455142 (= lt!637816 (Intermediate!11786 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455143 () Bool)

(declare-fun res!985963 () Bool)

(declare-fun e!818869 () Bool)

(assert (=> b!1455143 (=> (not res!985963) (not e!818869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455143 (= res!985963 (validKeyInArray!0 (select (arr!47511 a!2862) j!93)))))

(declare-fun b!1455144 () Bool)

(assert (=> b!1455144 (= e!818869 e!818868)))

(declare-fun res!985964 () Bool)

(assert (=> b!1455144 (=> (not res!985964) (not e!818868))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1455144 (= res!985964 (= (select (store (arr!47511 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!637814 () array!98455)

(assert (=> b!1455144 (= lt!637814 (array!98456 (store (arr!47511 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48062 a!2862)))))

(declare-fun b!1455146 () Bool)

(declare-fun res!985970 () Bool)

(assert (=> b!1455146 (=> (not res!985970) (not e!818869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98455 (_ BitVec 32)) Bool)

(assert (=> b!1455146 (= res!985970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!818873 () Bool)

(declare-fun lt!637815 () (_ BitVec 64))

(declare-fun b!1455147 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98455 (_ BitVec 32)) SeekEntryResult!11786)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98455 (_ BitVec 32)) SeekEntryResult!11786)

(assert (=> b!1455147 (= e!818873 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637815 lt!637814 mask!2687) (seekEntryOrOpen!0 lt!637815 lt!637814 mask!2687)))))

(declare-fun b!1455148 () Bool)

(declare-fun res!985967 () Bool)

(assert (=> b!1455148 (=> (not res!985967) (not e!818869))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1455148 (= res!985967 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48062 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48062 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48062 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455149 () Bool)

(declare-fun e!818864 () Bool)

(assert (=> b!1455149 (= e!818864 true)))

(declare-fun lt!637819 () Bool)

(declare-fun e!818870 () Bool)

(assert (=> b!1455149 (= lt!637819 e!818870)))

(declare-fun c!134108 () Bool)

(assert (=> b!1455149 (= c!134108 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455150 () Bool)

(declare-fun res!985971 () Bool)

(declare-fun e!818865 () Bool)

(assert (=> b!1455150 (=> (not res!985971) (not e!818865))))

(assert (=> b!1455150 (= res!985971 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455151 () Bool)

(declare-fun e!818867 () Bool)

(assert (=> b!1455151 (= e!818865 (not e!818867))))

(declare-fun res!985960 () Bool)

(assert (=> b!1455151 (=> res!985960 e!818867)))

(assert (=> b!1455151 (= res!985960 (or (and (= (select (arr!47511 a!2862) index!646) (select (store (arr!47511 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47511 a!2862) index!646) (select (arr!47511 a!2862) j!93))) (= (select (arr!47511 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!818872 () Bool)

(assert (=> b!1455151 e!818872))

(declare-fun res!985958 () Bool)

(assert (=> b!1455151 (=> (not res!985958) (not e!818872))))

(assert (=> b!1455151 (= res!985958 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49016 0))(
  ( (Unit!49017) )
))
(declare-fun lt!637817 () Unit!49016)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98455 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49016)

(assert (=> b!1455151 (= lt!637817 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455152 () Bool)

(declare-fun res!985955 () Bool)

(assert (=> b!1455152 (=> (not res!985955) (not e!818871))))

(assert (=> b!1455152 (= res!985955 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47511 a!2862) j!93) a!2862 mask!2687) lt!637816))))

(declare-fun b!1455153 () Bool)

(declare-fun res!985954 () Bool)

(assert (=> b!1455153 (=> (not res!985954) (not e!818869))))

(assert (=> b!1455153 (= res!985954 (validKeyInArray!0 (select (arr!47511 a!2862) i!1006)))))

(declare-fun b!1455154 () Bool)

(declare-fun res!985956 () Bool)

(assert (=> b!1455154 (=> (not res!985956) (not e!818869))))

(declare-datatypes ((List!34192 0))(
  ( (Nil!34189) (Cons!34188 (h!35538 (_ BitVec 64)) (t!48893 List!34192)) )
))
(declare-fun arrayNoDuplicates!0 (array!98455 (_ BitVec 32) List!34192) Bool)

(assert (=> b!1455154 (= res!985956 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34189))))

(declare-fun lt!637818 () SeekEntryResult!11786)

(declare-fun b!1455155 () Bool)

(declare-fun lt!637812 () (_ BitVec 32))

(assert (=> b!1455155 (= e!818870 (not (= lt!637818 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637812 lt!637815 lt!637814 mask!2687))))))

(declare-fun res!985965 () Bool)

(assert (=> start!125090 (=> (not res!985965) (not e!818869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125090 (= res!985965 (validMask!0 mask!2687))))

(assert (=> start!125090 e!818869))

(assert (=> start!125090 true))

(declare-fun array_inv!36456 (array!98455) Bool)

(assert (=> start!125090 (array_inv!36456 a!2862)))

(declare-fun b!1455145 () Bool)

(declare-fun res!985962 () Bool)

(assert (=> b!1455145 (=> (not res!985962) (not e!818872))))

(assert (=> b!1455145 (= res!985962 (= (seekEntryOrOpen!0 (select (arr!47511 a!2862) j!93) a!2862 mask!2687) (Found!11786 j!93)))))

(declare-fun b!1455156 () Bool)

(declare-fun res!985969 () Bool)

(assert (=> b!1455156 (=> (not res!985969) (not e!818869))))

(assert (=> b!1455156 (= res!985969 (and (= (size!48062 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48062 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48062 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455157 () Bool)

(assert (=> b!1455157 (= e!818871 e!818865)))

(declare-fun res!985966 () Bool)

(assert (=> b!1455157 (=> (not res!985966) (not e!818865))))

(assert (=> b!1455157 (= res!985966 (= lt!637818 (Intermediate!11786 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1455157 (= lt!637818 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637815 mask!2687) lt!637815 lt!637814 mask!2687))))

(assert (=> b!1455157 (= lt!637815 (select (store (arr!47511 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455158 () Bool)

(assert (=> b!1455158 (= e!818867 e!818864)))

(declare-fun res!985959 () Bool)

(assert (=> b!1455158 (=> res!985959 e!818864)))

(assert (=> b!1455158 (= res!985959 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637812 #b00000000000000000000000000000000) (bvsge lt!637812 (size!48062 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455158 (= lt!637812 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637813 () SeekEntryResult!11786)

(assert (=> b!1455158 (= lt!637813 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637815 lt!637814 mask!2687))))

(assert (=> b!1455158 (= lt!637813 (seekEntryOrOpen!0 lt!637815 lt!637814 mask!2687))))

(declare-fun b!1455159 () Bool)

(assert (=> b!1455159 (= e!818872 (and (or (= (select (arr!47511 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47511 a!2862) intermediateBeforeIndex!19) (select (arr!47511 a!2862) j!93))) (let ((bdg!53131 (select (store (arr!47511 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47511 a!2862) index!646) bdg!53131) (= (select (arr!47511 a!2862) index!646) (select (arr!47511 a!2862) j!93))) (= (select (arr!47511 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53131 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455160 () Bool)

(assert (=> b!1455160 (= e!818873 (= lt!637818 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637815 lt!637814 mask!2687)))))

(declare-fun b!1455161 () Bool)

(declare-fun res!985961 () Bool)

(assert (=> b!1455161 (=> res!985961 e!818864)))

(assert (=> b!1455161 (= res!985961 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637812 (select (arr!47511 a!2862) j!93) a!2862 mask!2687) lt!637816)))))

(declare-fun b!1455162 () Bool)

(assert (=> b!1455162 (= e!818870 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637812 intermediateAfterIndex!19 lt!637815 lt!637814 mask!2687) lt!637813)))))

(declare-fun b!1455163 () Bool)

(declare-fun res!985957 () Bool)

(assert (=> b!1455163 (=> (not res!985957) (not e!818865))))

(assert (=> b!1455163 (= res!985957 e!818873)))

(declare-fun c!134107 () Bool)

(assert (=> b!1455163 (= c!134107 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!125090 res!985965) b!1455156))

(assert (= (and b!1455156 res!985969) b!1455153))

(assert (= (and b!1455153 res!985954) b!1455143))

(assert (= (and b!1455143 res!985963) b!1455146))

(assert (= (and b!1455146 res!985970) b!1455154))

(assert (= (and b!1455154 res!985956) b!1455148))

(assert (= (and b!1455148 res!985967) b!1455144))

(assert (= (and b!1455144 res!985964) b!1455142))

(assert (= (and b!1455142 res!985968) b!1455152))

(assert (= (and b!1455152 res!985955) b!1455157))

(assert (= (and b!1455157 res!985966) b!1455163))

(assert (= (and b!1455163 c!134107) b!1455160))

(assert (= (and b!1455163 (not c!134107)) b!1455147))

(assert (= (and b!1455163 res!985957) b!1455150))

(assert (= (and b!1455150 res!985971) b!1455151))

(assert (= (and b!1455151 res!985958) b!1455145))

(assert (= (and b!1455145 res!985962) b!1455159))

(assert (= (and b!1455151 (not res!985960)) b!1455158))

(assert (= (and b!1455158 (not res!985959)) b!1455161))

(assert (= (and b!1455161 (not res!985961)) b!1455149))

(assert (= (and b!1455149 c!134108) b!1455155))

(assert (= (and b!1455149 (not c!134108)) b!1455162))

(declare-fun m!1343447 () Bool)

(assert (=> b!1455157 m!1343447))

(assert (=> b!1455157 m!1343447))

(declare-fun m!1343449 () Bool)

(assert (=> b!1455157 m!1343449))

(declare-fun m!1343451 () Bool)

(assert (=> b!1455157 m!1343451))

(declare-fun m!1343453 () Bool)

(assert (=> b!1455157 m!1343453))

(declare-fun m!1343455 () Bool)

(assert (=> b!1455142 m!1343455))

(assert (=> b!1455142 m!1343455))

(declare-fun m!1343457 () Bool)

(assert (=> b!1455142 m!1343457))

(assert (=> b!1455142 m!1343457))

(assert (=> b!1455142 m!1343455))

(declare-fun m!1343459 () Bool)

(assert (=> b!1455142 m!1343459))

(declare-fun m!1343461 () Bool)

(assert (=> b!1455160 m!1343461))

(assert (=> b!1455161 m!1343455))

(assert (=> b!1455161 m!1343455))

(declare-fun m!1343463 () Bool)

(assert (=> b!1455161 m!1343463))

(declare-fun m!1343465 () Bool)

(assert (=> b!1455154 m!1343465))

(declare-fun m!1343467 () Bool)

(assert (=> b!1455162 m!1343467))

(assert (=> b!1455143 m!1343455))

(assert (=> b!1455143 m!1343455))

(declare-fun m!1343469 () Bool)

(assert (=> b!1455143 m!1343469))

(declare-fun m!1343471 () Bool)

(assert (=> b!1455158 m!1343471))

(declare-fun m!1343473 () Bool)

(assert (=> b!1455158 m!1343473))

(declare-fun m!1343475 () Bool)

(assert (=> b!1455158 m!1343475))

(assert (=> b!1455144 m!1343451))

(declare-fun m!1343477 () Bool)

(assert (=> b!1455144 m!1343477))

(declare-fun m!1343479 () Bool)

(assert (=> b!1455151 m!1343479))

(assert (=> b!1455151 m!1343451))

(declare-fun m!1343481 () Bool)

(assert (=> b!1455151 m!1343481))

(declare-fun m!1343483 () Bool)

(assert (=> b!1455151 m!1343483))

(declare-fun m!1343485 () Bool)

(assert (=> b!1455151 m!1343485))

(assert (=> b!1455151 m!1343455))

(declare-fun m!1343487 () Bool)

(assert (=> b!1455146 m!1343487))

(assert (=> b!1455152 m!1343455))

(assert (=> b!1455152 m!1343455))

(declare-fun m!1343489 () Bool)

(assert (=> b!1455152 m!1343489))

(assert (=> b!1455145 m!1343455))

(assert (=> b!1455145 m!1343455))

(declare-fun m!1343491 () Bool)

(assert (=> b!1455145 m!1343491))

(declare-fun m!1343493 () Bool)

(assert (=> b!1455153 m!1343493))

(assert (=> b!1455153 m!1343493))

(declare-fun m!1343495 () Bool)

(assert (=> b!1455153 m!1343495))

(assert (=> b!1455159 m!1343451))

(declare-fun m!1343497 () Bool)

(assert (=> b!1455159 m!1343497))

(assert (=> b!1455159 m!1343481))

(assert (=> b!1455159 m!1343483))

(assert (=> b!1455159 m!1343455))

(declare-fun m!1343499 () Bool)

(assert (=> b!1455155 m!1343499))

(assert (=> b!1455147 m!1343473))

(assert (=> b!1455147 m!1343475))

(declare-fun m!1343501 () Bool)

(assert (=> start!125090 m!1343501))

(declare-fun m!1343503 () Bool)

(assert (=> start!125090 m!1343503))

(push 1)

