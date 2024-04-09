; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127398 () Bool)

(assert start!127398)

(declare-fun b!1496704 () Bool)

(declare-fun e!838288 () Bool)

(assert (=> b!1496704 (= e!838288 true)))

(declare-datatypes ((SeekEntryResult!12409 0))(
  ( (MissingZero!12409 (index!52027 (_ BitVec 32))) (Found!12409 (index!52028 (_ BitVec 32))) (Intermediate!12409 (undefined!13221 Bool) (index!52029 (_ BitVec 32)) (x!133656 (_ BitVec 32))) (Undefined!12409) (MissingVacant!12409 (index!52030 (_ BitVec 32))) )
))
(declare-fun lt!652150 () SeekEntryResult!12409)

(declare-datatypes ((array!99773 0))(
  ( (array!99774 (arr!48146 (Array (_ BitVec 32) (_ BitVec 64))) (size!48697 (_ BitVec 32))) )
))
(declare-fun lt!652149 () array!99773)

(declare-fun lt!652152 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99773 (_ BitVec 32)) SeekEntryResult!12409)

(assert (=> b!1496704 (= lt!652150 (seekEntryOrOpen!0 lt!652152 lt!652149 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!50106 0))(
  ( (Unit!50107) )
))
(declare-fun lt!652151 () Unit!50106)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!652156 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99773)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50106)

(assert (=> b!1496704 (= lt!652151 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652156 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1496705 () Bool)

(declare-fun res!1018077 () Bool)

(declare-fun e!838291 () Bool)

(assert (=> b!1496705 (=> (not res!1018077) (not e!838291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99773 (_ BitVec 32)) Bool)

(assert (=> b!1496705 (= res!1018077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!838292 () Bool)

(declare-fun b!1496706 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99773 (_ BitVec 32)) SeekEntryResult!12409)

(assert (=> b!1496706 (= e!838292 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652152 lt!652149 mask!2687) (seekEntryOrOpen!0 lt!652152 lt!652149 mask!2687)))))

(declare-fun b!1496707 () Bool)

(declare-fun res!1018081 () Bool)

(declare-fun e!838290 () Bool)

(assert (=> b!1496707 (=> (not res!1018081) (not e!838290))))

(declare-fun lt!652155 () SeekEntryResult!12409)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99773 (_ BitVec 32)) SeekEntryResult!12409)

(assert (=> b!1496707 (= res!1018081 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48146 a!2862) j!93) a!2862 mask!2687) lt!652155))))

(declare-fun b!1496708 () Bool)

(declare-fun res!1018082 () Bool)

(assert (=> b!1496708 (=> (not res!1018082) (not e!838291))))

(assert (=> b!1496708 (= res!1018082 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48697 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48697 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48697 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1496709 () Bool)

(declare-fun e!838287 () Bool)

(assert (=> b!1496709 (= e!838290 e!838287)))

(declare-fun res!1018078 () Bool)

(assert (=> b!1496709 (=> (not res!1018078) (not e!838287))))

(declare-fun lt!652154 () SeekEntryResult!12409)

(assert (=> b!1496709 (= res!1018078 (= lt!652154 (Intermediate!12409 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496709 (= lt!652154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652152 mask!2687) lt!652152 lt!652149 mask!2687))))

(assert (=> b!1496709 (= lt!652152 (select (store (arr!48146 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1496710 () Bool)

(declare-fun e!838295 () Bool)

(assert (=> b!1496710 (= e!838287 (not e!838295))))

(declare-fun res!1018066 () Bool)

(assert (=> b!1496710 (=> res!1018066 e!838295)))

(assert (=> b!1496710 (= res!1018066 (or (and (= (select (arr!48146 a!2862) index!646) (select (store (arr!48146 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48146 a!2862) index!646) (select (arr!48146 a!2862) j!93))) (= (select (arr!48146 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1496710 (and (= lt!652150 (Found!12409 j!93)) (or (= (select (arr!48146 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48146 a!2862) intermediateBeforeIndex!19) (select (arr!48146 a!2862) j!93))))))

(assert (=> b!1496710 (= lt!652150 (seekEntryOrOpen!0 (select (arr!48146 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1496710 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!652153 () Unit!50106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50106)

(assert (=> b!1496710 (= lt!652153 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1496711 () Bool)

(declare-fun res!1018073 () Bool)

(assert (=> b!1496711 (=> (not res!1018073) (not e!838291))))

(declare-datatypes ((List!34827 0))(
  ( (Nil!34824) (Cons!34823 (h!36221 (_ BitVec 64)) (t!49528 List!34827)) )
))
(declare-fun arrayNoDuplicates!0 (array!99773 (_ BitVec 32) List!34827) Bool)

(assert (=> b!1496711 (= res!1018073 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34824))))

(declare-fun b!1496712 () Bool)

(declare-fun e!838294 () Bool)

(assert (=> b!1496712 (= e!838291 e!838294)))

(declare-fun res!1018080 () Bool)

(assert (=> b!1496712 (=> (not res!1018080) (not e!838294))))

(assert (=> b!1496712 (= res!1018080 (= (select (store (arr!48146 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496712 (= lt!652149 (array!99774 (store (arr!48146 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48697 a!2862)))))

(declare-fun b!1496713 () Bool)

(declare-fun res!1018074 () Bool)

(assert (=> b!1496713 (=> (not res!1018074) (not e!838287))))

(assert (=> b!1496713 (= res!1018074 e!838292)))

(declare-fun c!138857 () Bool)

(assert (=> b!1496713 (= c!138857 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1018071 () Bool)

(assert (=> start!127398 (=> (not res!1018071) (not e!838291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127398 (= res!1018071 (validMask!0 mask!2687))))

(assert (=> start!127398 e!838291))

(assert (=> start!127398 true))

(declare-fun array_inv!37091 (array!99773) Bool)

(assert (=> start!127398 (array_inv!37091 a!2862)))

(declare-fun b!1496714 () Bool)

(declare-fun res!1018072 () Bool)

(assert (=> b!1496714 (=> res!1018072 e!838288)))

(declare-fun e!838289 () Bool)

(assert (=> b!1496714 (= res!1018072 e!838289)))

(declare-fun c!138856 () Bool)

(assert (=> b!1496714 (= c!138856 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1496715 () Bool)

(assert (=> b!1496715 (= e!838295 e!838288)))

(declare-fun res!1018076 () Bool)

(assert (=> b!1496715 (=> res!1018076 e!838288)))

(assert (=> b!1496715 (= res!1018076 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652156 #b00000000000000000000000000000000) (bvsge lt!652156 (size!48697 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496715 (= lt!652156 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496716 () Bool)

(declare-fun res!1018083 () Bool)

(assert (=> b!1496716 (=> (not res!1018083) (not e!838291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496716 (= res!1018083 (validKeyInArray!0 (select (arr!48146 a!2862) i!1006)))))

(declare-fun b!1496717 () Bool)

(declare-fun res!1018079 () Bool)

(assert (=> b!1496717 (=> (not res!1018079) (not e!838291))))

(assert (=> b!1496717 (= res!1018079 (and (= (size!48697 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48697 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48697 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496718 () Bool)

(assert (=> b!1496718 (= e!838289 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652156 intermediateAfterIndex!19 lt!652152 lt!652149 mask!2687) (seekEntryOrOpen!0 lt!652152 lt!652149 mask!2687))))))

(declare-fun b!1496719 () Bool)

(assert (=> b!1496719 (= e!838292 (= lt!652154 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652152 lt!652149 mask!2687)))))

(declare-fun b!1496720 () Bool)

(declare-fun res!1018075 () Bool)

(assert (=> b!1496720 (=> (not res!1018075) (not e!838287))))

(assert (=> b!1496720 (= res!1018075 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1496721 () Bool)

(declare-fun res!1018070 () Bool)

(assert (=> b!1496721 (=> res!1018070 e!838288)))

(assert (=> b!1496721 (= res!1018070 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1496722 () Bool)

(declare-fun res!1018069 () Bool)

(assert (=> b!1496722 (=> (not res!1018069) (not e!838291))))

(assert (=> b!1496722 (= res!1018069 (validKeyInArray!0 (select (arr!48146 a!2862) j!93)))))

(declare-fun b!1496723 () Bool)

(assert (=> b!1496723 (= e!838289 (not (= lt!652154 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652156 lt!652152 lt!652149 mask!2687))))))

(declare-fun b!1496724 () Bool)

(assert (=> b!1496724 (= e!838294 e!838290)))

(declare-fun res!1018067 () Bool)

(assert (=> b!1496724 (=> (not res!1018067) (not e!838290))))

(assert (=> b!1496724 (= res!1018067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48146 a!2862) j!93) mask!2687) (select (arr!48146 a!2862) j!93) a!2862 mask!2687) lt!652155))))

(assert (=> b!1496724 (= lt!652155 (Intermediate!12409 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1496725 () Bool)

(declare-fun res!1018068 () Bool)

(assert (=> b!1496725 (=> res!1018068 e!838288)))

(assert (=> b!1496725 (= res!1018068 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652156 (select (arr!48146 a!2862) j!93) a!2862 mask!2687) lt!652155)))))

(assert (= (and start!127398 res!1018071) b!1496717))

(assert (= (and b!1496717 res!1018079) b!1496716))

(assert (= (and b!1496716 res!1018083) b!1496722))

(assert (= (and b!1496722 res!1018069) b!1496705))

(assert (= (and b!1496705 res!1018077) b!1496711))

(assert (= (and b!1496711 res!1018073) b!1496708))

(assert (= (and b!1496708 res!1018082) b!1496712))

(assert (= (and b!1496712 res!1018080) b!1496724))

(assert (= (and b!1496724 res!1018067) b!1496707))

(assert (= (and b!1496707 res!1018081) b!1496709))

(assert (= (and b!1496709 res!1018078) b!1496713))

(assert (= (and b!1496713 c!138857) b!1496719))

(assert (= (and b!1496713 (not c!138857)) b!1496706))

(assert (= (and b!1496713 res!1018074) b!1496720))

(assert (= (and b!1496720 res!1018075) b!1496710))

(assert (= (and b!1496710 (not res!1018066)) b!1496715))

(assert (= (and b!1496715 (not res!1018076)) b!1496725))

(assert (= (and b!1496725 (not res!1018068)) b!1496714))

(assert (= (and b!1496714 c!138856) b!1496723))

(assert (= (and b!1496714 (not c!138856)) b!1496718))

(assert (= (and b!1496714 (not res!1018072)) b!1496721))

(assert (= (and b!1496721 (not res!1018070)) b!1496704))

(declare-fun m!1379901 () Bool)

(assert (=> b!1496711 m!1379901))

(declare-fun m!1379903 () Bool)

(assert (=> b!1496718 m!1379903))

(declare-fun m!1379905 () Bool)

(assert (=> b!1496718 m!1379905))

(declare-fun m!1379907 () Bool)

(assert (=> b!1496706 m!1379907))

(assert (=> b!1496706 m!1379905))

(assert (=> b!1496704 m!1379905))

(declare-fun m!1379909 () Bool)

(assert (=> b!1496704 m!1379909))

(declare-fun m!1379911 () Bool)

(assert (=> start!127398 m!1379911))

(declare-fun m!1379913 () Bool)

(assert (=> start!127398 m!1379913))

(declare-fun m!1379915 () Bool)

(assert (=> b!1496719 m!1379915))

(declare-fun m!1379917 () Bool)

(assert (=> b!1496712 m!1379917))

(declare-fun m!1379919 () Bool)

(assert (=> b!1496712 m!1379919))

(declare-fun m!1379921 () Bool)

(assert (=> b!1496724 m!1379921))

(assert (=> b!1496724 m!1379921))

(declare-fun m!1379923 () Bool)

(assert (=> b!1496724 m!1379923))

(assert (=> b!1496724 m!1379923))

(assert (=> b!1496724 m!1379921))

(declare-fun m!1379925 () Bool)

(assert (=> b!1496724 m!1379925))

(declare-fun m!1379927 () Bool)

(assert (=> b!1496709 m!1379927))

(assert (=> b!1496709 m!1379927))

(declare-fun m!1379929 () Bool)

(assert (=> b!1496709 m!1379929))

(assert (=> b!1496709 m!1379917))

(declare-fun m!1379931 () Bool)

(assert (=> b!1496709 m!1379931))

(declare-fun m!1379933 () Bool)

(assert (=> b!1496705 m!1379933))

(declare-fun m!1379935 () Bool)

(assert (=> b!1496715 m!1379935))

(assert (=> b!1496725 m!1379921))

(assert (=> b!1496725 m!1379921))

(declare-fun m!1379937 () Bool)

(assert (=> b!1496725 m!1379937))

(declare-fun m!1379939 () Bool)

(assert (=> b!1496710 m!1379939))

(assert (=> b!1496710 m!1379917))

(declare-fun m!1379941 () Bool)

(assert (=> b!1496710 m!1379941))

(declare-fun m!1379943 () Bool)

(assert (=> b!1496710 m!1379943))

(declare-fun m!1379945 () Bool)

(assert (=> b!1496710 m!1379945))

(assert (=> b!1496710 m!1379921))

(declare-fun m!1379947 () Bool)

(assert (=> b!1496710 m!1379947))

(declare-fun m!1379949 () Bool)

(assert (=> b!1496710 m!1379949))

(assert (=> b!1496710 m!1379921))

(assert (=> b!1496722 m!1379921))

(assert (=> b!1496722 m!1379921))

(declare-fun m!1379951 () Bool)

(assert (=> b!1496722 m!1379951))

(declare-fun m!1379953 () Bool)

(assert (=> b!1496723 m!1379953))

(declare-fun m!1379955 () Bool)

(assert (=> b!1496716 m!1379955))

(assert (=> b!1496716 m!1379955))

(declare-fun m!1379957 () Bool)

(assert (=> b!1496716 m!1379957))

(assert (=> b!1496707 m!1379921))

(assert (=> b!1496707 m!1379921))

(declare-fun m!1379959 () Bool)

(assert (=> b!1496707 m!1379959))

(check-sat (not b!1496724) (not b!1496719) (not b!1496716) (not b!1496705) (not b!1496710) (not b!1496723) (not b!1496722) (not b!1496706) (not b!1496709) (not b!1496715) (not b!1496725) (not start!127398) (not b!1496718) (not b!1496704) (not b!1496711) (not b!1496707))
(check-sat)
