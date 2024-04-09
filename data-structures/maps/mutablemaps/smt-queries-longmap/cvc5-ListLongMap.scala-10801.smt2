; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126436 () Bool)

(assert start!126436)

(declare-fun b!1481787 () Bool)

(declare-fun res!1007177 () Bool)

(declare-fun e!831035 () Bool)

(assert (=> b!1481787 (=> (not res!1007177) (not e!831035))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99372 0))(
  ( (array!99373 (arr!47959 (Array (_ BitVec 32) (_ BitVec 64))) (size!48510 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99372)

(assert (=> b!1481787 (= res!1007177 (and (= (size!48510 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48510 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48510 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481789 () Bool)

(declare-fun res!1007176 () Bool)

(declare-fun e!831037 () Bool)

(assert (=> b!1481789 (=> (not res!1007176) (not e!831037))))

(declare-datatypes ((SeekEntryResult!12222 0))(
  ( (MissingZero!12222 (index!51279 (_ BitVec 32))) (Found!12222 (index!51280 (_ BitVec 32))) (Intermediate!12222 (undefined!13034 Bool) (index!51281 (_ BitVec 32)) (x!132868 (_ BitVec 32))) (Undefined!12222) (MissingVacant!12222 (index!51282 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99372 (_ BitVec 32)) SeekEntryResult!12222)

(assert (=> b!1481789 (= res!1007176 (= (seekEntryOrOpen!0 (select (arr!47959 a!2862) j!93) a!2862 mask!2687) (Found!12222 j!93)))))

(declare-fun b!1481790 () Bool)

(declare-fun res!1007184 () Bool)

(assert (=> b!1481790 (=> (not res!1007184) (not e!831035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99372 (_ BitVec 32)) Bool)

(assert (=> b!1481790 (= res!1007184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481791 () Bool)

(declare-fun res!1007178 () Bool)

(declare-fun e!831041 () Bool)

(assert (=> b!1481791 (=> (not res!1007178) (not e!831041))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1481791 (= res!1007178 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481792 () Bool)

(declare-fun e!831038 () Bool)

(declare-fun e!831040 () Bool)

(assert (=> b!1481792 (= e!831038 e!831040)))

(declare-fun res!1007173 () Bool)

(assert (=> b!1481792 (=> (not res!1007173) (not e!831040))))

(declare-fun lt!646846 () SeekEntryResult!12222)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99372 (_ BitVec 32)) SeekEntryResult!12222)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481792 (= res!1007173 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47959 a!2862) j!93) mask!2687) (select (arr!47959 a!2862) j!93) a!2862 mask!2687) lt!646846))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1481792 (= lt!646846 (Intermediate!12222 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481793 () Bool)

(assert (=> b!1481793 (= e!831040 e!831041)))

(declare-fun res!1007171 () Bool)

(assert (=> b!1481793 (=> (not res!1007171) (not e!831041))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!646843 () SeekEntryResult!12222)

(assert (=> b!1481793 (= res!1007171 (= lt!646843 (Intermediate!12222 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646842 () (_ BitVec 64))

(declare-fun lt!646844 () array!99372)

(assert (=> b!1481793 (= lt!646843 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646842 mask!2687) lt!646842 lt!646844 mask!2687))))

(assert (=> b!1481793 (= lt!646842 (select (store (arr!47959 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481794 () Bool)

(declare-fun res!1007175 () Bool)

(assert (=> b!1481794 (=> (not res!1007175) (not e!831041))))

(declare-fun e!831036 () Bool)

(assert (=> b!1481794 (= res!1007175 e!831036)))

(declare-fun c!136832 () Bool)

(assert (=> b!1481794 (= c!136832 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481795 () Bool)

(declare-fun res!1007181 () Bool)

(assert (=> b!1481795 (=> (not res!1007181) (not e!831035))))

(declare-datatypes ((List!34640 0))(
  ( (Nil!34637) (Cons!34636 (h!36007 (_ BitVec 64)) (t!49341 List!34640)) )
))
(declare-fun arrayNoDuplicates!0 (array!99372 (_ BitVec 32) List!34640) Bool)

(assert (=> b!1481795 (= res!1007181 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34637))))

(declare-fun b!1481796 () Bool)

(declare-fun res!1007172 () Bool)

(assert (=> b!1481796 (=> (not res!1007172) (not e!831035))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1481796 (= res!1007172 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48510 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48510 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48510 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481797 () Bool)

(assert (=> b!1481797 (= e!831041 (not true))))

(assert (=> b!1481797 e!831037))

(declare-fun res!1007180 () Bool)

(assert (=> b!1481797 (=> (not res!1007180) (not e!831037))))

(assert (=> b!1481797 (= res!1007180 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49732 0))(
  ( (Unit!49733) )
))
(declare-fun lt!646845 () Unit!49732)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99372 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49732)

(assert (=> b!1481797 (= lt!646845 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481798 () Bool)

(declare-fun res!1007183 () Bool)

(assert (=> b!1481798 (=> (not res!1007183) (not e!831040))))

(assert (=> b!1481798 (= res!1007183 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47959 a!2862) j!93) a!2862 mask!2687) lt!646846))))

(declare-fun b!1481799 () Bool)

(declare-fun res!1007174 () Bool)

(assert (=> b!1481799 (=> (not res!1007174) (not e!831035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481799 (= res!1007174 (validKeyInArray!0 (select (arr!47959 a!2862) i!1006)))))

(declare-fun b!1481788 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99372 (_ BitVec 32)) SeekEntryResult!12222)

(assert (=> b!1481788 (= e!831036 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646842 lt!646844 mask!2687) (seekEntryOrOpen!0 lt!646842 lt!646844 mask!2687)))))

(declare-fun res!1007170 () Bool)

(assert (=> start!126436 (=> (not res!1007170) (not e!831035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126436 (= res!1007170 (validMask!0 mask!2687))))

(assert (=> start!126436 e!831035))

(assert (=> start!126436 true))

(declare-fun array_inv!36904 (array!99372) Bool)

(assert (=> start!126436 (array_inv!36904 a!2862)))

(declare-fun b!1481800 () Bool)

(assert (=> b!1481800 (= e!831036 (= lt!646843 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646842 lt!646844 mask!2687)))))

(declare-fun b!1481801 () Bool)

(declare-fun res!1007179 () Bool)

(assert (=> b!1481801 (=> (not res!1007179) (not e!831035))))

(assert (=> b!1481801 (= res!1007179 (validKeyInArray!0 (select (arr!47959 a!2862) j!93)))))

(declare-fun b!1481802 () Bool)

(assert (=> b!1481802 (= e!831037 (and (or (= (select (arr!47959 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47959 a!2862) intermediateBeforeIndex!19) (select (arr!47959 a!2862) j!93))) (or (and (= (select (arr!47959 a!2862) index!646) (select (store (arr!47959 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47959 a!2862) index!646) (select (arr!47959 a!2862) j!93))) (= (select (arr!47959 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47959 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1481803 () Bool)

(assert (=> b!1481803 (= e!831035 e!831038)))

(declare-fun res!1007182 () Bool)

(assert (=> b!1481803 (=> (not res!1007182) (not e!831038))))

(assert (=> b!1481803 (= res!1007182 (= (select (store (arr!47959 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481803 (= lt!646844 (array!99373 (store (arr!47959 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48510 a!2862)))))

(assert (= (and start!126436 res!1007170) b!1481787))

(assert (= (and b!1481787 res!1007177) b!1481799))

(assert (= (and b!1481799 res!1007174) b!1481801))

(assert (= (and b!1481801 res!1007179) b!1481790))

(assert (= (and b!1481790 res!1007184) b!1481795))

(assert (= (and b!1481795 res!1007181) b!1481796))

(assert (= (and b!1481796 res!1007172) b!1481803))

(assert (= (and b!1481803 res!1007182) b!1481792))

(assert (= (and b!1481792 res!1007173) b!1481798))

(assert (= (and b!1481798 res!1007183) b!1481793))

(assert (= (and b!1481793 res!1007171) b!1481794))

(assert (= (and b!1481794 c!136832) b!1481800))

(assert (= (and b!1481794 (not c!136832)) b!1481788))

(assert (= (and b!1481794 res!1007175) b!1481791))

(assert (= (and b!1481791 res!1007178) b!1481797))

(assert (= (and b!1481797 res!1007180) b!1481789))

(assert (= (and b!1481789 res!1007176) b!1481802))

(declare-fun m!1367577 () Bool)

(assert (=> b!1481798 m!1367577))

(assert (=> b!1481798 m!1367577))

(declare-fun m!1367579 () Bool)

(assert (=> b!1481798 m!1367579))

(declare-fun m!1367581 () Bool)

(assert (=> start!126436 m!1367581))

(declare-fun m!1367583 () Bool)

(assert (=> start!126436 m!1367583))

(declare-fun m!1367585 () Bool)

(assert (=> b!1481797 m!1367585))

(declare-fun m!1367587 () Bool)

(assert (=> b!1481797 m!1367587))

(declare-fun m!1367589 () Bool)

(assert (=> b!1481793 m!1367589))

(assert (=> b!1481793 m!1367589))

(declare-fun m!1367591 () Bool)

(assert (=> b!1481793 m!1367591))

(declare-fun m!1367593 () Bool)

(assert (=> b!1481793 m!1367593))

(declare-fun m!1367595 () Bool)

(assert (=> b!1481793 m!1367595))

(assert (=> b!1481789 m!1367577))

(assert (=> b!1481789 m!1367577))

(declare-fun m!1367597 () Bool)

(assert (=> b!1481789 m!1367597))

(assert (=> b!1481792 m!1367577))

(assert (=> b!1481792 m!1367577))

(declare-fun m!1367599 () Bool)

(assert (=> b!1481792 m!1367599))

(assert (=> b!1481792 m!1367599))

(assert (=> b!1481792 m!1367577))

(declare-fun m!1367601 () Bool)

(assert (=> b!1481792 m!1367601))

(declare-fun m!1367603 () Bool)

(assert (=> b!1481788 m!1367603))

(declare-fun m!1367605 () Bool)

(assert (=> b!1481788 m!1367605))

(assert (=> b!1481801 m!1367577))

(assert (=> b!1481801 m!1367577))

(declare-fun m!1367607 () Bool)

(assert (=> b!1481801 m!1367607))

(assert (=> b!1481803 m!1367593))

(declare-fun m!1367609 () Bool)

(assert (=> b!1481803 m!1367609))

(assert (=> b!1481802 m!1367593))

(declare-fun m!1367611 () Bool)

(assert (=> b!1481802 m!1367611))

(declare-fun m!1367613 () Bool)

(assert (=> b!1481802 m!1367613))

(declare-fun m!1367615 () Bool)

(assert (=> b!1481802 m!1367615))

(assert (=> b!1481802 m!1367577))

(declare-fun m!1367617 () Bool)

(assert (=> b!1481800 m!1367617))

(declare-fun m!1367619 () Bool)

(assert (=> b!1481795 m!1367619))

(declare-fun m!1367621 () Bool)

(assert (=> b!1481790 m!1367621))

(declare-fun m!1367623 () Bool)

(assert (=> b!1481799 m!1367623))

(assert (=> b!1481799 m!1367623))

(declare-fun m!1367625 () Bool)

(assert (=> b!1481799 m!1367625))

(push 1)

