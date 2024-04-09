; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126550 () Bool)

(assert start!126550)

(declare-fun b!1483706 () Bool)

(declare-fun e!831953 () Bool)

(declare-fun e!831952 () Bool)

(assert (=> b!1483706 (= e!831953 e!831952)))

(declare-fun res!1008661 () Bool)

(assert (=> b!1483706 (=> res!1008661 e!831952)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99429 0))(
  ( (array!99430 (arr!47986 (Array (_ BitVec 32) (_ BitVec 64))) (size!48537 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99429)

(declare-fun lt!647485 () (_ BitVec 64))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1483706 (= res!1008661 (or (and (= (select (arr!47986 a!2862) index!646) lt!647485) (= (select (arr!47986 a!2862) index!646) (select (arr!47986 a!2862) j!93))) (= (select (arr!47986 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1483706 (= lt!647485 (select (store (arr!47986 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483707 () Bool)

(declare-fun res!1008666 () Bool)

(assert (=> b!1483707 (=> (not res!1008666) (not e!831953))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12249 0))(
  ( (MissingZero!12249 (index!51387 (_ BitVec 32))) (Found!12249 (index!51388 (_ BitVec 32))) (Intermediate!12249 (undefined!13061 Bool) (index!51389 (_ BitVec 32)) (x!132976 (_ BitVec 32))) (Undefined!12249) (MissingVacant!12249 (index!51390 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99429 (_ BitVec 32)) SeekEntryResult!12249)

(assert (=> b!1483707 (= res!1008666 (= (seekEntryOrOpen!0 (select (arr!47986 a!2862) j!93) a!2862 mask!2687) (Found!12249 j!93)))))

(declare-fun lt!647484 () (_ BitVec 64))

(declare-fun e!831956 () Bool)

(declare-fun b!1483708 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!647483 () array!99429)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99429 (_ BitVec 32)) SeekEntryResult!12249)

(assert (=> b!1483708 (= e!831956 (= (seekEntryOrOpen!0 lt!647484 lt!647483 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647484 lt!647483 mask!2687)))))

(declare-fun b!1483709 () Bool)

(declare-fun res!1008663 () Bool)

(declare-fun e!831951 () Bool)

(assert (=> b!1483709 (=> (not res!1008663) (not e!831951))))

(declare-datatypes ((List!34667 0))(
  ( (Nil!34664) (Cons!34663 (h!36037 (_ BitVec 64)) (t!49368 List!34667)) )
))
(declare-fun arrayNoDuplicates!0 (array!99429 (_ BitVec 32) List!34667) Bool)

(assert (=> b!1483709 (= res!1008663 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34664))))

(declare-fun lt!647482 () SeekEntryResult!12249)

(declare-fun e!831950 () Bool)

(declare-fun b!1483710 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99429 (_ BitVec 32)) SeekEntryResult!12249)

(assert (=> b!1483710 (= e!831950 (= lt!647482 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647484 lt!647483 mask!2687)))))

(declare-fun b!1483711 () Bool)

(declare-fun e!831959 () Bool)

(declare-fun e!831955 () Bool)

(assert (=> b!1483711 (= e!831959 e!831955)))

(declare-fun res!1008657 () Bool)

(assert (=> b!1483711 (=> (not res!1008657) (not e!831955))))

(assert (=> b!1483711 (= res!1008657 (= lt!647482 (Intermediate!12249 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483711 (= lt!647482 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647484 mask!2687) lt!647484 lt!647483 mask!2687))))

(assert (=> b!1483711 (= lt!647484 (select (store (arr!47986 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483712 () Bool)

(assert (=> b!1483712 (= e!831950 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647484 lt!647483 mask!2687) (seekEntryOrOpen!0 lt!647484 lt!647483 mask!2687)))))

(declare-fun b!1483713 () Bool)

(declare-fun res!1008654 () Bool)

(assert (=> b!1483713 (=> (not res!1008654) (not e!831951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483713 (= res!1008654 (validKeyInArray!0 (select (arr!47986 a!2862) j!93)))))

(declare-fun b!1483715 () Bool)

(declare-fun e!831958 () Bool)

(assert (=> b!1483715 (= e!831955 (not e!831958))))

(declare-fun res!1008662 () Bool)

(assert (=> b!1483715 (=> res!1008662 e!831958)))

(assert (=> b!1483715 (= res!1008662 (or (and (= (select (arr!47986 a!2862) index!646) (select (store (arr!47986 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47986 a!2862) index!646) (select (arr!47986 a!2862) j!93))) (= (select (arr!47986 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483715 e!831953))

(declare-fun res!1008668 () Bool)

(assert (=> b!1483715 (=> (not res!1008668) (not e!831953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99429 (_ BitVec 32)) Bool)

(assert (=> b!1483715 (= res!1008668 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49786 0))(
  ( (Unit!49787) )
))
(declare-fun lt!647486 () Unit!49786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99429 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49786)

(assert (=> b!1483715 (= lt!647486 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483716 () Bool)

(declare-fun res!1008658 () Bool)

(assert (=> b!1483716 (=> (not res!1008658) (not e!831953))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1483716 (= res!1008658 (or (= (select (arr!47986 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47986 a!2862) intermediateBeforeIndex!19) (select (arr!47986 a!2862) j!93))))))

(declare-fun b!1483717 () Bool)

(declare-fun res!1008659 () Bool)

(assert (=> b!1483717 (=> (not res!1008659) (not e!831951))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483717 (= res!1008659 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48537 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48537 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48537 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483718 () Bool)

(assert (=> b!1483718 (= e!831958 true)))

(declare-fun lt!647488 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483718 (= lt!647488 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483719 () Bool)

(declare-fun res!1008669 () Bool)

(assert (=> b!1483719 (=> (not res!1008669) (not e!831959))))

(declare-fun lt!647487 () SeekEntryResult!12249)

(assert (=> b!1483719 (= res!1008669 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47986 a!2862) j!93) a!2862 mask!2687) lt!647487))))

(declare-fun b!1483720 () Bool)

(assert (=> b!1483720 (= e!831952 e!831956)))

(declare-fun res!1008672 () Bool)

(assert (=> b!1483720 (=> (not res!1008672) (not e!831956))))

(assert (=> b!1483720 (= res!1008672 (and (= index!646 intermediateAfterIndex!19) (= lt!647485 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483721 () Bool)

(declare-fun res!1008670 () Bool)

(assert (=> b!1483721 (=> (not res!1008670) (not e!831951))))

(assert (=> b!1483721 (= res!1008670 (and (= (size!48537 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48537 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48537 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483722 () Bool)

(declare-fun e!831957 () Bool)

(assert (=> b!1483722 (= e!831957 e!831959)))

(declare-fun res!1008665 () Bool)

(assert (=> b!1483722 (=> (not res!1008665) (not e!831959))))

(assert (=> b!1483722 (= res!1008665 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47986 a!2862) j!93) mask!2687) (select (arr!47986 a!2862) j!93) a!2862 mask!2687) lt!647487))))

(assert (=> b!1483722 (= lt!647487 (Intermediate!12249 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483723 () Bool)

(declare-fun res!1008664 () Bool)

(assert (=> b!1483723 (=> (not res!1008664) (not e!831955))))

(assert (=> b!1483723 (= res!1008664 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483724 () Bool)

(declare-fun res!1008667 () Bool)

(assert (=> b!1483724 (=> (not res!1008667) (not e!831955))))

(assert (=> b!1483724 (= res!1008667 e!831950)))

(declare-fun c!137051 () Bool)

(assert (=> b!1483724 (= c!137051 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483725 () Bool)

(assert (=> b!1483725 (= e!831951 e!831957)))

(declare-fun res!1008660 () Bool)

(assert (=> b!1483725 (=> (not res!1008660) (not e!831957))))

(assert (=> b!1483725 (= res!1008660 (= (select (store (arr!47986 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483725 (= lt!647483 (array!99430 (store (arr!47986 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48537 a!2862)))))

(declare-fun b!1483726 () Bool)

(declare-fun res!1008655 () Bool)

(assert (=> b!1483726 (=> (not res!1008655) (not e!831951))))

(assert (=> b!1483726 (= res!1008655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483714 () Bool)

(declare-fun res!1008656 () Bool)

(assert (=> b!1483714 (=> (not res!1008656) (not e!831951))))

(assert (=> b!1483714 (= res!1008656 (validKeyInArray!0 (select (arr!47986 a!2862) i!1006)))))

(declare-fun res!1008671 () Bool)

(assert (=> start!126550 (=> (not res!1008671) (not e!831951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126550 (= res!1008671 (validMask!0 mask!2687))))

(assert (=> start!126550 e!831951))

(assert (=> start!126550 true))

(declare-fun array_inv!36931 (array!99429) Bool)

(assert (=> start!126550 (array_inv!36931 a!2862)))

(assert (= (and start!126550 res!1008671) b!1483721))

(assert (= (and b!1483721 res!1008670) b!1483714))

(assert (= (and b!1483714 res!1008656) b!1483713))

(assert (= (and b!1483713 res!1008654) b!1483726))

(assert (= (and b!1483726 res!1008655) b!1483709))

(assert (= (and b!1483709 res!1008663) b!1483717))

(assert (= (and b!1483717 res!1008659) b!1483725))

(assert (= (and b!1483725 res!1008660) b!1483722))

(assert (= (and b!1483722 res!1008665) b!1483719))

(assert (= (and b!1483719 res!1008669) b!1483711))

(assert (= (and b!1483711 res!1008657) b!1483724))

(assert (= (and b!1483724 c!137051) b!1483710))

(assert (= (and b!1483724 (not c!137051)) b!1483712))

(assert (= (and b!1483724 res!1008667) b!1483723))

(assert (= (and b!1483723 res!1008664) b!1483715))

(assert (= (and b!1483715 res!1008668) b!1483707))

(assert (= (and b!1483707 res!1008666) b!1483716))

(assert (= (and b!1483716 res!1008658) b!1483706))

(assert (= (and b!1483706 (not res!1008661)) b!1483720))

(assert (= (and b!1483720 res!1008672) b!1483708))

(assert (= (and b!1483715 (not res!1008662)) b!1483718))

(declare-fun m!1369185 () Bool)

(assert (=> b!1483716 m!1369185))

(declare-fun m!1369187 () Bool)

(assert (=> b!1483716 m!1369187))

(declare-fun m!1369189 () Bool)

(assert (=> b!1483715 m!1369189))

(declare-fun m!1369191 () Bool)

(assert (=> b!1483715 m!1369191))

(declare-fun m!1369193 () Bool)

(assert (=> b!1483715 m!1369193))

(declare-fun m!1369195 () Bool)

(assert (=> b!1483715 m!1369195))

(declare-fun m!1369197 () Bool)

(assert (=> b!1483715 m!1369197))

(assert (=> b!1483715 m!1369187))

(declare-fun m!1369199 () Bool)

(assert (=> b!1483718 m!1369199))

(declare-fun m!1369201 () Bool)

(assert (=> b!1483711 m!1369201))

(assert (=> b!1483711 m!1369201))

(declare-fun m!1369203 () Bool)

(assert (=> b!1483711 m!1369203))

(assert (=> b!1483711 m!1369191))

(declare-fun m!1369205 () Bool)

(assert (=> b!1483711 m!1369205))

(declare-fun m!1369207 () Bool)

(assert (=> b!1483708 m!1369207))

(declare-fun m!1369209 () Bool)

(assert (=> b!1483708 m!1369209))

(declare-fun m!1369211 () Bool)

(assert (=> b!1483726 m!1369211))

(assert (=> b!1483719 m!1369187))

(assert (=> b!1483719 m!1369187))

(declare-fun m!1369213 () Bool)

(assert (=> b!1483719 m!1369213))

(assert (=> b!1483713 m!1369187))

(assert (=> b!1483713 m!1369187))

(declare-fun m!1369215 () Bool)

(assert (=> b!1483713 m!1369215))

(declare-fun m!1369217 () Bool)

(assert (=> b!1483710 m!1369217))

(assert (=> b!1483706 m!1369195))

(assert (=> b!1483706 m!1369187))

(assert (=> b!1483706 m!1369191))

(assert (=> b!1483706 m!1369193))

(declare-fun m!1369219 () Bool)

(assert (=> start!126550 m!1369219))

(declare-fun m!1369221 () Bool)

(assert (=> start!126550 m!1369221))

(assert (=> b!1483712 m!1369209))

(assert (=> b!1483712 m!1369207))

(declare-fun m!1369223 () Bool)

(assert (=> b!1483714 m!1369223))

(assert (=> b!1483714 m!1369223))

(declare-fun m!1369225 () Bool)

(assert (=> b!1483714 m!1369225))

(assert (=> b!1483725 m!1369191))

(declare-fun m!1369227 () Bool)

(assert (=> b!1483725 m!1369227))

(declare-fun m!1369229 () Bool)

(assert (=> b!1483709 m!1369229))

(assert (=> b!1483722 m!1369187))

(assert (=> b!1483722 m!1369187))

(declare-fun m!1369231 () Bool)

(assert (=> b!1483722 m!1369231))

(assert (=> b!1483722 m!1369231))

(assert (=> b!1483722 m!1369187))

(declare-fun m!1369233 () Bool)

(assert (=> b!1483722 m!1369233))

(assert (=> b!1483707 m!1369187))

(assert (=> b!1483707 m!1369187))

(declare-fun m!1369235 () Bool)

(assert (=> b!1483707 m!1369235))

(push 1)

