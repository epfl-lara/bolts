; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125060 () Bool)

(assert start!125060)

(declare-fun b!1454152 () Bool)

(declare-fun res!985146 () Bool)

(declare-fun e!818419 () Bool)

(assert (=> b!1454152 (=> (not res!985146) (not e!818419))))

(declare-datatypes ((array!98425 0))(
  ( (array!98426 (arr!47496 (Array (_ BitVec 32) (_ BitVec 64))) (size!48047 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98425)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98425 (_ BitVec 32)) Bool)

(assert (=> b!1454152 (= res!985146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454153 () Bool)

(declare-fun res!985160 () Bool)

(declare-fun e!818415 () Bool)

(assert (=> b!1454153 (=> (not res!985160) (not e!818415))))

(declare-fun e!818414 () Bool)

(assert (=> b!1454153 (= res!985160 e!818414)))

(declare-fun c!134017 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1454153 (= c!134017 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1454154 () Bool)

(declare-fun e!818416 () Bool)

(assert (=> b!1454154 (= e!818415 (not e!818416))))

(declare-fun res!985159 () Bool)

(assert (=> b!1454154 (=> res!985159 e!818416)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1454154 (= res!985159 (or (and (= (select (arr!47496 a!2862) index!646) (select (store (arr!47496 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47496 a!2862) index!646) (select (arr!47496 a!2862) j!93))) (= (select (arr!47496 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!818422 () Bool)

(assert (=> b!1454154 e!818422))

(declare-fun res!985152 () Bool)

(assert (=> b!1454154 (=> (not res!985152) (not e!818422))))

(assert (=> b!1454154 (= res!985152 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48986 0))(
  ( (Unit!48987) )
))
(declare-fun lt!637454 () Unit!48986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98425 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48986)

(assert (=> b!1454154 (= lt!637454 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!637452 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11771 0))(
  ( (MissingZero!11771 (index!49475 (_ BitVec 32))) (Found!11771 (index!49476 (_ BitVec 32))) (Intermediate!11771 (undefined!12583 Bool) (index!49477 (_ BitVec 32)) (x!131111 (_ BitVec 32))) (Undefined!11771) (MissingVacant!11771 (index!49478 (_ BitVec 32))) )
))
(declare-fun lt!637458 () SeekEntryResult!11771)

(declare-fun lt!637459 () array!98425)

(declare-fun e!818417 () Bool)

(declare-fun lt!637457 () (_ BitVec 64))

(declare-fun b!1454155 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98425 (_ BitVec 32)) SeekEntryResult!11771)

(assert (=> b!1454155 (= e!818417 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637452 intermediateAfterIndex!19 lt!637457 lt!637459 mask!2687) lt!637458)))))

(declare-fun res!985151 () Bool)

(assert (=> start!125060 (=> (not res!985151) (not e!818419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125060 (= res!985151 (validMask!0 mask!2687))))

(assert (=> start!125060 e!818419))

(assert (=> start!125060 true))

(declare-fun array_inv!36441 (array!98425) Bool)

(assert (=> start!125060 (array_inv!36441 a!2862)))

(declare-fun b!1454156 () Bool)

(declare-fun res!985156 () Bool)

(declare-fun e!818418 () Bool)

(assert (=> b!1454156 (=> (not res!985156) (not e!818418))))

(declare-fun lt!637453 () SeekEntryResult!11771)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98425 (_ BitVec 32)) SeekEntryResult!11771)

(assert (=> b!1454156 (= res!985156 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47496 a!2862) j!93) a!2862 mask!2687) lt!637453))))

(declare-fun b!1454157 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98425 (_ BitVec 32)) SeekEntryResult!11771)

(assert (=> b!1454157 (= e!818414 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637457 lt!637459 mask!2687) (seekEntryOrOpen!0 lt!637457 lt!637459 mask!2687)))))

(declare-fun b!1454158 () Bool)

(declare-fun e!818420 () Bool)

(assert (=> b!1454158 (= e!818419 e!818420)))

(declare-fun res!985144 () Bool)

(assert (=> b!1454158 (=> (not res!985144) (not e!818420))))

(assert (=> b!1454158 (= res!985144 (= (select (store (arr!47496 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454158 (= lt!637459 (array!98426 (store (arr!47496 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48047 a!2862)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1454159 () Bool)

(assert (=> b!1454159 (= e!818422 (and (or (= (select (arr!47496 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47496 a!2862) intermediateBeforeIndex!19) (select (arr!47496 a!2862) j!93))) (let ((bdg!53041 (select (store (arr!47496 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47496 a!2862) index!646) bdg!53041) (= (select (arr!47496 a!2862) index!646) (select (arr!47496 a!2862) j!93))) (= (select (arr!47496 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53041 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454160 () Bool)

(assert (=> b!1454160 (= e!818420 e!818418)))

(declare-fun res!985147 () Bool)

(assert (=> b!1454160 (=> (not res!985147) (not e!818418))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454160 (= res!985147 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47496 a!2862) j!93) mask!2687) (select (arr!47496 a!2862) j!93) a!2862 mask!2687) lt!637453))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1454160 (= lt!637453 (Intermediate!11771 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454161 () Bool)

(declare-fun res!985150 () Bool)

(declare-fun e!818421 () Bool)

(assert (=> b!1454161 (=> res!985150 e!818421)))

(assert (=> b!1454161 (= res!985150 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637452 (select (arr!47496 a!2862) j!93) a!2862 mask!2687) lt!637453)))))

(declare-fun b!1454162 () Bool)

(declare-fun res!985155 () Bool)

(assert (=> b!1454162 (=> (not res!985155) (not e!818419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454162 (= res!985155 (validKeyInArray!0 (select (arr!47496 a!2862) j!93)))))

(declare-fun b!1454163 () Bool)

(declare-fun res!985161 () Bool)

(assert (=> b!1454163 (=> (not res!985161) (not e!818422))))

(assert (=> b!1454163 (= res!985161 (= (seekEntryOrOpen!0 (select (arr!47496 a!2862) j!93) a!2862 mask!2687) (Found!11771 j!93)))))

(declare-fun b!1454164 () Bool)

(declare-fun res!985149 () Bool)

(assert (=> b!1454164 (=> (not res!985149) (not e!818419))))

(declare-datatypes ((List!34177 0))(
  ( (Nil!34174) (Cons!34173 (h!35523 (_ BitVec 64)) (t!48878 List!34177)) )
))
(declare-fun arrayNoDuplicates!0 (array!98425 (_ BitVec 32) List!34177) Bool)

(assert (=> b!1454164 (= res!985149 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34174))))

(declare-fun lt!637455 () SeekEntryResult!11771)

(declare-fun b!1454165 () Bool)

(assert (=> b!1454165 (= e!818417 (not (= lt!637455 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637452 lt!637457 lt!637459 mask!2687))))))

(declare-fun b!1454166 () Bool)

(assert (=> b!1454166 (= e!818416 e!818421)))

(declare-fun res!985145 () Bool)

(assert (=> b!1454166 (=> res!985145 e!818421)))

(assert (=> b!1454166 (= res!985145 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637452 #b00000000000000000000000000000000) (bvsge lt!637452 (size!48047 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454166 (= lt!637452 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1454166 (= lt!637458 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637457 lt!637459 mask!2687))))

(assert (=> b!1454166 (= lt!637458 (seekEntryOrOpen!0 lt!637457 lt!637459 mask!2687))))

(declare-fun b!1454167 () Bool)

(declare-fun res!985153 () Bool)

(assert (=> b!1454167 (=> (not res!985153) (not e!818419))))

(assert (=> b!1454167 (= res!985153 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48047 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48047 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48047 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454168 () Bool)

(declare-fun res!985154 () Bool)

(assert (=> b!1454168 (=> (not res!985154) (not e!818419))))

(assert (=> b!1454168 (= res!985154 (validKeyInArray!0 (select (arr!47496 a!2862) i!1006)))))

(declare-fun b!1454169 () Bool)

(declare-fun res!985157 () Bool)

(assert (=> b!1454169 (=> (not res!985157) (not e!818415))))

(assert (=> b!1454169 (= res!985157 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454170 () Bool)

(assert (=> b!1454170 (= e!818418 e!818415)))

(declare-fun res!985148 () Bool)

(assert (=> b!1454170 (=> (not res!985148) (not e!818415))))

(assert (=> b!1454170 (= res!985148 (= lt!637455 (Intermediate!11771 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1454170 (= lt!637455 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637457 mask!2687) lt!637457 lt!637459 mask!2687))))

(assert (=> b!1454170 (= lt!637457 (select (store (arr!47496 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454171 () Bool)

(declare-fun res!985158 () Bool)

(assert (=> b!1454171 (=> (not res!985158) (not e!818419))))

(assert (=> b!1454171 (= res!985158 (and (= (size!48047 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48047 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48047 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454172 () Bool)

(assert (=> b!1454172 (= e!818421 true)))

(declare-fun lt!637456 () Bool)

(assert (=> b!1454172 (= lt!637456 e!818417)))

(declare-fun c!134018 () Bool)

(assert (=> b!1454172 (= c!134018 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454173 () Bool)

(assert (=> b!1454173 (= e!818414 (= lt!637455 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637457 lt!637459 mask!2687)))))

(assert (= (and start!125060 res!985151) b!1454171))

(assert (= (and b!1454171 res!985158) b!1454168))

(assert (= (and b!1454168 res!985154) b!1454162))

(assert (= (and b!1454162 res!985155) b!1454152))

(assert (= (and b!1454152 res!985146) b!1454164))

(assert (= (and b!1454164 res!985149) b!1454167))

(assert (= (and b!1454167 res!985153) b!1454158))

(assert (= (and b!1454158 res!985144) b!1454160))

(assert (= (and b!1454160 res!985147) b!1454156))

(assert (= (and b!1454156 res!985156) b!1454170))

(assert (= (and b!1454170 res!985148) b!1454153))

(assert (= (and b!1454153 c!134017) b!1454173))

(assert (= (and b!1454153 (not c!134017)) b!1454157))

(assert (= (and b!1454153 res!985160) b!1454169))

(assert (= (and b!1454169 res!985157) b!1454154))

(assert (= (and b!1454154 res!985152) b!1454163))

(assert (= (and b!1454163 res!985161) b!1454159))

(assert (= (and b!1454154 (not res!985159)) b!1454166))

(assert (= (and b!1454166 (not res!985145)) b!1454161))

(assert (= (and b!1454161 (not res!985150)) b!1454172))

(assert (= (and b!1454172 c!134018) b!1454165))

(assert (= (and b!1454172 (not c!134018)) b!1454155))

(declare-fun m!1342577 () Bool)

(assert (=> b!1454155 m!1342577))

(declare-fun m!1342579 () Bool)

(assert (=> b!1454158 m!1342579))

(declare-fun m!1342581 () Bool)

(assert (=> b!1454158 m!1342581))

(declare-fun m!1342583 () Bool)

(assert (=> b!1454164 m!1342583))

(declare-fun m!1342585 () Bool)

(assert (=> b!1454162 m!1342585))

(assert (=> b!1454162 m!1342585))

(declare-fun m!1342587 () Bool)

(assert (=> b!1454162 m!1342587))

(declare-fun m!1342589 () Bool)

(assert (=> start!125060 m!1342589))

(declare-fun m!1342591 () Bool)

(assert (=> start!125060 m!1342591))

(assert (=> b!1454156 m!1342585))

(assert (=> b!1454156 m!1342585))

(declare-fun m!1342593 () Bool)

(assert (=> b!1454156 m!1342593))

(assert (=> b!1454161 m!1342585))

(assert (=> b!1454161 m!1342585))

(declare-fun m!1342595 () Bool)

(assert (=> b!1454161 m!1342595))

(declare-fun m!1342597 () Bool)

(assert (=> b!1454166 m!1342597))

(declare-fun m!1342599 () Bool)

(assert (=> b!1454166 m!1342599))

(declare-fun m!1342601 () Bool)

(assert (=> b!1454166 m!1342601))

(declare-fun m!1342603 () Bool)

(assert (=> b!1454152 m!1342603))

(declare-fun m!1342605 () Bool)

(assert (=> b!1454168 m!1342605))

(assert (=> b!1454168 m!1342605))

(declare-fun m!1342607 () Bool)

(assert (=> b!1454168 m!1342607))

(assert (=> b!1454163 m!1342585))

(assert (=> b!1454163 m!1342585))

(declare-fun m!1342609 () Bool)

(assert (=> b!1454163 m!1342609))

(assert (=> b!1454159 m!1342579))

(declare-fun m!1342611 () Bool)

(assert (=> b!1454159 m!1342611))

(declare-fun m!1342613 () Bool)

(assert (=> b!1454159 m!1342613))

(declare-fun m!1342615 () Bool)

(assert (=> b!1454159 m!1342615))

(assert (=> b!1454159 m!1342585))

(declare-fun m!1342617 () Bool)

(assert (=> b!1454154 m!1342617))

(assert (=> b!1454154 m!1342579))

(assert (=> b!1454154 m!1342613))

(assert (=> b!1454154 m!1342615))

(declare-fun m!1342619 () Bool)

(assert (=> b!1454154 m!1342619))

(assert (=> b!1454154 m!1342585))

(assert (=> b!1454160 m!1342585))

(assert (=> b!1454160 m!1342585))

(declare-fun m!1342621 () Bool)

(assert (=> b!1454160 m!1342621))

(assert (=> b!1454160 m!1342621))

(assert (=> b!1454160 m!1342585))

(declare-fun m!1342623 () Bool)

(assert (=> b!1454160 m!1342623))

(declare-fun m!1342625 () Bool)

(assert (=> b!1454173 m!1342625))

(assert (=> b!1454157 m!1342599))

(assert (=> b!1454157 m!1342601))

(declare-fun m!1342627 () Bool)

(assert (=> b!1454170 m!1342627))

(assert (=> b!1454170 m!1342627))

(declare-fun m!1342629 () Bool)

(assert (=> b!1454170 m!1342629))

(assert (=> b!1454170 m!1342579))

(declare-fun m!1342631 () Bool)

(assert (=> b!1454170 m!1342631))

(declare-fun m!1342633 () Bool)

(assert (=> b!1454165 m!1342633))

(push 1)

