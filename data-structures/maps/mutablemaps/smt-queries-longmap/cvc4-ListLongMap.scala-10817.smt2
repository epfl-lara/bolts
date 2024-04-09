; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126596 () Bool)

(assert start!126596)

(declare-fun res!1009966 () Bool)

(declare-fun e!832643 () Bool)

(assert (=> start!126596 (=> (not res!1009966) (not e!832643))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126596 (= res!1009966 (validMask!0 mask!2687))))

(assert (=> start!126596 e!832643))

(assert (=> start!126596 true))

(declare-datatypes ((array!99475 0))(
  ( (array!99476 (arr!48009 (Array (_ BitVec 32) (_ BitVec 64))) (size!48560 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99475)

(declare-fun array_inv!36954 (array!99475) Bool)

(assert (=> start!126596 (array_inv!36954 a!2862)))

(declare-fun b!1485155 () Bool)

(declare-fun res!1009965 () Bool)

(declare-fun e!832642 () Bool)

(assert (=> b!1485155 (=> (not res!1009965) (not e!832642))))

(declare-fun e!832649 () Bool)

(assert (=> b!1485155 (= res!1009965 e!832649)))

(declare-fun c!137120 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1485155 (= c!137120 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485156 () Bool)

(declare-fun e!832641 () Bool)

(assert (=> b!1485156 (= e!832643 e!832641)))

(declare-fun res!1009975 () Bool)

(assert (=> b!1485156 (=> (not res!1009975) (not e!832641))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1485156 (= res!1009975 (= (select (store (arr!48009 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647970 () array!99475)

(assert (=> b!1485156 (= lt!647970 (array!99476 (store (arr!48009 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48560 a!2862)))))

(declare-fun lt!647965 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1485157 () Bool)

(declare-datatypes ((SeekEntryResult!12272 0))(
  ( (MissingZero!12272 (index!51479 (_ BitVec 32))) (Found!12272 (index!51480 (_ BitVec 32))) (Intermediate!12272 (undefined!13084 Bool) (index!51481 (_ BitVec 32)) (x!133055 (_ BitVec 32))) (Undefined!12272) (MissingVacant!12272 (index!51482 (_ BitVec 32))) )
))
(declare-fun lt!647968 () SeekEntryResult!12272)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99475 (_ BitVec 32)) SeekEntryResult!12272)

(assert (=> b!1485157 (= e!832649 (= lt!647968 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647965 lt!647970 mask!2687)))))

(declare-fun b!1485158 () Bool)

(declare-fun e!832646 () Bool)

(assert (=> b!1485158 (= e!832641 e!832646)))

(declare-fun res!1009983 () Bool)

(assert (=> b!1485158 (=> (not res!1009983) (not e!832646))))

(declare-fun lt!647971 () SeekEntryResult!12272)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485158 (= res!1009983 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48009 a!2862) j!93) mask!2687) (select (arr!48009 a!2862) j!93) a!2862 mask!2687) lt!647971))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1485158 (= lt!647971 (Intermediate!12272 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485159 () Bool)

(declare-fun res!1009972 () Bool)

(assert (=> b!1485159 (=> (not res!1009972) (not e!832646))))

(assert (=> b!1485159 (= res!1009972 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48009 a!2862) j!93) a!2862 mask!2687) lt!647971))))

(declare-fun b!1485160 () Bool)

(declare-fun e!832644 () Bool)

(assert (=> b!1485160 (= e!832644 (and (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110)))))

(declare-fun lt!647966 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485160 (= lt!647966 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485161 () Bool)

(declare-fun res!1009971 () Bool)

(assert (=> b!1485161 (=> (not res!1009971) (not e!832643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485161 (= res!1009971 (validKeyInArray!0 (select (arr!48009 a!2862) j!93)))))

(declare-fun b!1485162 () Bool)

(declare-fun e!832648 () Bool)

(declare-fun e!832647 () Bool)

(assert (=> b!1485162 (= e!832648 e!832647)))

(declare-fun res!1009980 () Bool)

(assert (=> b!1485162 (=> res!1009980 e!832647)))

(declare-fun lt!647967 () (_ BitVec 64))

(assert (=> b!1485162 (= res!1009980 (or (and (= (select (arr!48009 a!2862) index!646) lt!647967) (= (select (arr!48009 a!2862) index!646) (select (arr!48009 a!2862) j!93))) (= (select (arr!48009 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485162 (= lt!647967 (select (store (arr!48009 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1485163 () Bool)

(declare-fun res!1009968 () Bool)

(assert (=> b!1485163 (=> (not res!1009968) (not e!832643))))

(assert (=> b!1485163 (= res!1009968 (and (= (size!48560 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48560 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48560 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1485164 () Bool)

(assert (=> b!1485164 (= e!832642 (not e!832644))))

(declare-fun res!1009982 () Bool)

(assert (=> b!1485164 (=> res!1009982 e!832644)))

(assert (=> b!1485164 (= res!1009982 (or (and (= (select (arr!48009 a!2862) index!646) (select (store (arr!48009 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48009 a!2862) index!646) (select (arr!48009 a!2862) j!93))) (= (select (arr!48009 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485164 e!832648))

(declare-fun res!1009969 () Bool)

(assert (=> b!1485164 (=> (not res!1009969) (not e!832648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99475 (_ BitVec 32)) Bool)

(assert (=> b!1485164 (= res!1009969 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49832 0))(
  ( (Unit!49833) )
))
(declare-fun lt!647969 () Unit!49832)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99475 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49832)

(assert (=> b!1485164 (= lt!647969 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485165 () Bool)

(declare-fun res!1009967 () Bool)

(assert (=> b!1485165 (=> (not res!1009967) (not e!832643))))

(declare-datatypes ((List!34690 0))(
  ( (Nil!34687) (Cons!34686 (h!36060 (_ BitVec 64)) (t!49391 List!34690)) )
))
(declare-fun arrayNoDuplicates!0 (array!99475 (_ BitVec 32) List!34690) Bool)

(assert (=> b!1485165 (= res!1009967 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34687))))

(declare-fun b!1485166 () Bool)

(declare-fun res!1009973 () Bool)

(assert (=> b!1485166 (=> (not res!1009973) (not e!832642))))

(assert (=> b!1485166 (= res!1009973 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485167 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99475 (_ BitVec 32)) SeekEntryResult!12272)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99475 (_ BitVec 32)) SeekEntryResult!12272)

(assert (=> b!1485167 (= e!832649 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647965 lt!647970 mask!2687) (seekEntryOrOpen!0 lt!647965 lt!647970 mask!2687)))))

(declare-fun b!1485168 () Bool)

(declare-fun res!1009979 () Bool)

(assert (=> b!1485168 (=> (not res!1009979) (not e!832643))))

(assert (=> b!1485168 (= res!1009979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485169 () Bool)

(declare-fun e!832640 () Bool)

(assert (=> b!1485169 (= e!832647 e!832640)))

(declare-fun res!1009976 () Bool)

(assert (=> b!1485169 (=> (not res!1009976) (not e!832640))))

(assert (=> b!1485169 (= res!1009976 (and (= index!646 intermediateAfterIndex!19) (= lt!647967 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485170 () Bool)

(declare-fun res!1009981 () Bool)

(assert (=> b!1485170 (=> (not res!1009981) (not e!832643))))

(assert (=> b!1485170 (= res!1009981 (validKeyInArray!0 (select (arr!48009 a!2862) i!1006)))))

(declare-fun b!1485171 () Bool)

(assert (=> b!1485171 (= e!832646 e!832642)))

(declare-fun res!1009970 () Bool)

(assert (=> b!1485171 (=> (not res!1009970) (not e!832642))))

(assert (=> b!1485171 (= res!1009970 (= lt!647968 (Intermediate!12272 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1485171 (= lt!647968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647965 mask!2687) lt!647965 lt!647970 mask!2687))))

(assert (=> b!1485171 (= lt!647965 (select (store (arr!48009 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485172 () Bool)

(declare-fun res!1009974 () Bool)

(assert (=> b!1485172 (=> (not res!1009974) (not e!832643))))

(assert (=> b!1485172 (= res!1009974 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48560 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48560 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48560 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485173 () Bool)

(declare-fun res!1009977 () Bool)

(assert (=> b!1485173 (=> (not res!1009977) (not e!832648))))

(assert (=> b!1485173 (= res!1009977 (= (seekEntryOrOpen!0 (select (arr!48009 a!2862) j!93) a!2862 mask!2687) (Found!12272 j!93)))))

(declare-fun b!1485174 () Bool)

(assert (=> b!1485174 (= e!832640 (= (seekEntryOrOpen!0 lt!647965 lt!647970 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647965 lt!647970 mask!2687)))))

(declare-fun b!1485175 () Bool)

(declare-fun res!1009978 () Bool)

(assert (=> b!1485175 (=> (not res!1009978) (not e!832648))))

(assert (=> b!1485175 (= res!1009978 (or (= (select (arr!48009 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48009 a!2862) intermediateBeforeIndex!19) (select (arr!48009 a!2862) j!93))))))

(assert (= (and start!126596 res!1009966) b!1485163))

(assert (= (and b!1485163 res!1009968) b!1485170))

(assert (= (and b!1485170 res!1009981) b!1485161))

(assert (= (and b!1485161 res!1009971) b!1485168))

(assert (= (and b!1485168 res!1009979) b!1485165))

(assert (= (and b!1485165 res!1009967) b!1485172))

(assert (= (and b!1485172 res!1009974) b!1485156))

(assert (= (and b!1485156 res!1009975) b!1485158))

(assert (= (and b!1485158 res!1009983) b!1485159))

(assert (= (and b!1485159 res!1009972) b!1485171))

(assert (= (and b!1485171 res!1009970) b!1485155))

(assert (= (and b!1485155 c!137120) b!1485157))

(assert (= (and b!1485155 (not c!137120)) b!1485167))

(assert (= (and b!1485155 res!1009965) b!1485166))

(assert (= (and b!1485166 res!1009973) b!1485164))

(assert (= (and b!1485164 res!1009969) b!1485173))

(assert (= (and b!1485173 res!1009977) b!1485175))

(assert (= (and b!1485175 res!1009978) b!1485162))

(assert (= (and b!1485162 (not res!1009980)) b!1485169))

(assert (= (and b!1485169 res!1009976) b!1485174))

(assert (= (and b!1485164 (not res!1009982)) b!1485160))

(declare-fun m!1370381 () Bool)

(assert (=> b!1485165 m!1370381))

(declare-fun m!1370383 () Bool)

(assert (=> b!1485168 m!1370383))

(declare-fun m!1370385 () Bool)

(assert (=> b!1485158 m!1370385))

(assert (=> b!1485158 m!1370385))

(declare-fun m!1370387 () Bool)

(assert (=> b!1485158 m!1370387))

(assert (=> b!1485158 m!1370387))

(assert (=> b!1485158 m!1370385))

(declare-fun m!1370389 () Bool)

(assert (=> b!1485158 m!1370389))

(declare-fun m!1370391 () Bool)

(assert (=> b!1485160 m!1370391))

(declare-fun m!1370393 () Bool)

(assert (=> b!1485156 m!1370393))

(declare-fun m!1370395 () Bool)

(assert (=> b!1485156 m!1370395))

(declare-fun m!1370397 () Bool)

(assert (=> b!1485164 m!1370397))

(assert (=> b!1485164 m!1370393))

(declare-fun m!1370399 () Bool)

(assert (=> b!1485164 m!1370399))

(declare-fun m!1370401 () Bool)

(assert (=> b!1485164 m!1370401))

(declare-fun m!1370403 () Bool)

(assert (=> b!1485164 m!1370403))

(assert (=> b!1485164 m!1370385))

(declare-fun m!1370405 () Bool)

(assert (=> b!1485157 m!1370405))

(assert (=> b!1485173 m!1370385))

(assert (=> b!1485173 m!1370385))

(declare-fun m!1370407 () Bool)

(assert (=> b!1485173 m!1370407))

(assert (=> b!1485159 m!1370385))

(assert (=> b!1485159 m!1370385))

(declare-fun m!1370409 () Bool)

(assert (=> b!1485159 m!1370409))

(declare-fun m!1370411 () Bool)

(assert (=> b!1485174 m!1370411))

(declare-fun m!1370413 () Bool)

(assert (=> b!1485174 m!1370413))

(declare-fun m!1370415 () Bool)

(assert (=> b!1485175 m!1370415))

(assert (=> b!1485175 m!1370385))

(assert (=> b!1485161 m!1370385))

(assert (=> b!1485161 m!1370385))

(declare-fun m!1370417 () Bool)

(assert (=> b!1485161 m!1370417))

(declare-fun m!1370419 () Bool)

(assert (=> b!1485170 m!1370419))

(assert (=> b!1485170 m!1370419))

(declare-fun m!1370421 () Bool)

(assert (=> b!1485170 m!1370421))

(assert (=> b!1485162 m!1370401))

(assert (=> b!1485162 m!1370385))

(assert (=> b!1485162 m!1370393))

(assert (=> b!1485162 m!1370399))

(declare-fun m!1370423 () Bool)

(assert (=> b!1485171 m!1370423))

(assert (=> b!1485171 m!1370423))

(declare-fun m!1370425 () Bool)

(assert (=> b!1485171 m!1370425))

(assert (=> b!1485171 m!1370393))

(declare-fun m!1370427 () Bool)

(assert (=> b!1485171 m!1370427))

(assert (=> b!1485167 m!1370413))

(assert (=> b!1485167 m!1370411))

(declare-fun m!1370429 () Bool)

(assert (=> start!126596 m!1370429))

(declare-fun m!1370431 () Bool)

(assert (=> start!126596 m!1370431))

(push 1)

(assert (not b!1485157))

(assert (not b!1485164))

(assert (not b!1485170))

(assert (not b!1485158))

(assert (not b!1485171))

(assert (not b!1485168))

(assert (not start!126596))

(assert (not b!1485167))

(assert (not b!1485173))

(assert (not b!1485161))

(assert (not b!1485165))

(assert (not b!1485160))

(assert (not b!1485174))

(assert (not b!1485159))

(check-sat)

