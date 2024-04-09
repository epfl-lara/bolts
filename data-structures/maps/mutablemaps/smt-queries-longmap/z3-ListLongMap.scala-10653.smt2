; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125100 () Bool)

(assert start!125100)

(declare-datatypes ((array!98465 0))(
  ( (array!98466 (arr!47516 (Array (_ BitVec 32) (_ BitVec 64))) (size!48067 (_ BitVec 32))) )
))
(declare-fun lt!637936 () array!98465)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!819020 () Bool)

(declare-fun lt!637939 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11791 0))(
  ( (MissingZero!11791 (index!49555 (_ BitVec 32))) (Found!11791 (index!49556 (_ BitVec 32))) (Intermediate!11791 (undefined!12603 Bool) (index!49557 (_ BitVec 32)) (x!131187 (_ BitVec 32))) (Undefined!11791) (MissingVacant!11791 (index!49558 (_ BitVec 32))) )
))
(declare-fun lt!637935 () SeekEntryResult!11791)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1455472 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98465 (_ BitVec 32)) SeekEntryResult!11791)

(assert (=> b!1455472 (= e!819020 (= lt!637935 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637939 lt!637936 mask!2687)))))

(declare-fun b!1455473 () Bool)

(declare-fun res!986240 () Bool)

(declare-fun e!819021 () Bool)

(assert (=> b!1455473 (=> res!986240 e!819021)))

(declare-fun lt!637937 () SeekEntryResult!11791)

(declare-fun a!2862 () array!98465)

(declare-fun lt!637933 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1455473 (= res!986240 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637933 (select (arr!47516 a!2862) j!93) a!2862 mask!2687) lt!637937)))))

(declare-fun b!1455474 () Bool)

(declare-fun res!986236 () Bool)

(declare-fun e!819017 () Bool)

(assert (=> b!1455474 (=> (not res!986236) (not e!819017))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1455474 (= res!986236 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455475 () Bool)

(declare-fun res!986235 () Bool)

(declare-fun e!819014 () Bool)

(assert (=> b!1455475 (=> (not res!986235) (not e!819014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98465 (_ BitVec 32)) Bool)

(assert (=> b!1455475 (= res!986235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1455476 () Bool)

(declare-fun e!819016 () Bool)

(assert (=> b!1455476 (= e!819016 e!819017)))

(declare-fun res!986227 () Bool)

(assert (=> b!1455476 (=> (not res!986227) (not e!819017))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1455476 (= res!986227 (= lt!637935 (Intermediate!11791 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455476 (= lt!637935 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637939 mask!2687) lt!637939 lt!637936 mask!2687))))

(assert (=> b!1455476 (= lt!637939 (select (store (arr!47516 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455477 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98465 (_ BitVec 32)) SeekEntryResult!11791)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98465 (_ BitVec 32)) SeekEntryResult!11791)

(assert (=> b!1455477 (= e!819020 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637939 lt!637936 mask!2687) (seekEntryOrOpen!0 lt!637939 lt!637936 mask!2687)))))

(declare-fun b!1455478 () Bool)

(declare-fun res!986234 () Bool)

(assert (=> b!1455478 (=> (not res!986234) (not e!819014))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1455478 (= res!986234 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48067 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48067 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48067 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455479 () Bool)

(declare-fun e!819022 () Bool)

(assert (=> b!1455479 (= e!819014 e!819022)))

(declare-fun res!986233 () Bool)

(assert (=> b!1455479 (=> (not res!986233) (not e!819022))))

(assert (=> b!1455479 (= res!986233 (= (select (store (arr!47516 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455479 (= lt!637936 (array!98466 (store (arr!47516 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48067 a!2862)))))

(declare-fun b!1455480 () Bool)

(declare-fun e!819023 () Bool)

(assert (=> b!1455480 (= e!819023 e!819021)))

(declare-fun res!986229 () Bool)

(assert (=> b!1455480 (=> res!986229 e!819021)))

(assert (=> b!1455480 (= res!986229 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637933 #b00000000000000000000000000000000) (bvsge lt!637933 (size!48067 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455480 (= lt!637933 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637938 () SeekEntryResult!11791)

(assert (=> b!1455480 (= lt!637938 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637939 lt!637936 mask!2687))))

(assert (=> b!1455480 (= lt!637938 (seekEntryOrOpen!0 lt!637939 lt!637936 mask!2687))))

(declare-fun b!1455481 () Bool)

(declare-fun res!986228 () Bool)

(assert (=> b!1455481 (=> (not res!986228) (not e!819017))))

(assert (=> b!1455481 (= res!986228 e!819020)))

(declare-fun c!134138 () Bool)

(assert (=> b!1455481 (= c!134138 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455482 () Bool)

(declare-fun res!986237 () Bool)

(assert (=> b!1455482 (=> (not res!986237) (not e!819014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455482 (= res!986237 (validKeyInArray!0 (select (arr!47516 a!2862) i!1006)))))

(declare-fun res!986241 () Bool)

(assert (=> start!125100 (=> (not res!986241) (not e!819014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125100 (= res!986241 (validMask!0 mask!2687))))

(assert (=> start!125100 e!819014))

(assert (=> start!125100 true))

(declare-fun array_inv!36461 (array!98465) Bool)

(assert (=> start!125100 (array_inv!36461 a!2862)))

(declare-fun e!819019 () Bool)

(declare-fun b!1455483 () Bool)

(assert (=> b!1455483 (= e!819019 (not (= lt!637935 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637933 lt!637939 lt!637936 mask!2687))))))

(declare-fun b!1455484 () Bool)

(declare-fun res!986230 () Bool)

(assert (=> b!1455484 (=> (not res!986230) (not e!819014))))

(assert (=> b!1455484 (= res!986230 (validKeyInArray!0 (select (arr!47516 a!2862) j!93)))))

(declare-fun b!1455485 () Bool)

(declare-fun res!986224 () Bool)

(declare-fun e!819015 () Bool)

(assert (=> b!1455485 (=> (not res!986224) (not e!819015))))

(assert (=> b!1455485 (= res!986224 (= (seekEntryOrOpen!0 (select (arr!47516 a!2862) j!93) a!2862 mask!2687) (Found!11791 j!93)))))

(declare-fun b!1455486 () Bool)

(declare-fun res!986226 () Bool)

(assert (=> b!1455486 (=> (not res!986226) (not e!819014))))

(assert (=> b!1455486 (= res!986226 (and (= (size!48067 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48067 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48067 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455487 () Bool)

(declare-fun res!986231 () Bool)

(assert (=> b!1455487 (=> (not res!986231) (not e!819014))))

(declare-datatypes ((List!34197 0))(
  ( (Nil!34194) (Cons!34193 (h!35543 (_ BitVec 64)) (t!48898 List!34197)) )
))
(declare-fun arrayNoDuplicates!0 (array!98465 (_ BitVec 32) List!34197) Bool)

(assert (=> b!1455487 (= res!986231 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34194))))

(declare-fun b!1455488 () Bool)

(declare-fun res!986238 () Bool)

(assert (=> b!1455488 (=> (not res!986238) (not e!819016))))

(assert (=> b!1455488 (= res!986238 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47516 a!2862) j!93) a!2862 mask!2687) lt!637937))))

(declare-fun b!1455489 () Bool)

(assert (=> b!1455489 (= e!819019 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637933 intermediateAfterIndex!19 lt!637939 lt!637936 mask!2687) lt!637938)))))

(declare-fun b!1455490 () Bool)

(assert (=> b!1455490 (= e!819015 (and (or (= (select (arr!47516 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47516 a!2862) intermediateBeforeIndex!19) (select (arr!47516 a!2862) j!93))) (let ((bdg!53164 (select (store (arr!47516 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47516 a!2862) index!646) bdg!53164) (= (select (arr!47516 a!2862) index!646) (select (arr!47516 a!2862) j!93))) (= (select (arr!47516 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53164 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455491 () Bool)

(assert (=> b!1455491 (= e!819017 (not e!819023))))

(declare-fun res!986232 () Bool)

(assert (=> b!1455491 (=> res!986232 e!819023)))

(assert (=> b!1455491 (= res!986232 (or (and (= (select (arr!47516 a!2862) index!646) (select (store (arr!47516 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47516 a!2862) index!646) (select (arr!47516 a!2862) j!93))) (= (select (arr!47516 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1455491 e!819015))

(declare-fun res!986225 () Bool)

(assert (=> b!1455491 (=> (not res!986225) (not e!819015))))

(assert (=> b!1455491 (= res!986225 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49026 0))(
  ( (Unit!49027) )
))
(declare-fun lt!637932 () Unit!49026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49026)

(assert (=> b!1455491 (= lt!637932 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455492 () Bool)

(assert (=> b!1455492 (= e!819022 e!819016)))

(declare-fun res!986239 () Bool)

(assert (=> b!1455492 (=> (not res!986239) (not e!819016))))

(assert (=> b!1455492 (= res!986239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47516 a!2862) j!93) mask!2687) (select (arr!47516 a!2862) j!93) a!2862 mask!2687) lt!637937))))

(assert (=> b!1455492 (= lt!637937 (Intermediate!11791 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455493 () Bool)

(assert (=> b!1455493 (= e!819021 true)))

(declare-fun lt!637934 () Bool)

(assert (=> b!1455493 (= lt!637934 e!819019)))

(declare-fun c!134137 () Bool)

(assert (=> b!1455493 (= c!134137 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!125100 res!986241) b!1455486))

(assert (= (and b!1455486 res!986226) b!1455482))

(assert (= (and b!1455482 res!986237) b!1455484))

(assert (= (and b!1455484 res!986230) b!1455475))

(assert (= (and b!1455475 res!986235) b!1455487))

(assert (= (and b!1455487 res!986231) b!1455478))

(assert (= (and b!1455478 res!986234) b!1455479))

(assert (= (and b!1455479 res!986233) b!1455492))

(assert (= (and b!1455492 res!986239) b!1455488))

(assert (= (and b!1455488 res!986238) b!1455476))

(assert (= (and b!1455476 res!986227) b!1455481))

(assert (= (and b!1455481 c!134138) b!1455472))

(assert (= (and b!1455481 (not c!134138)) b!1455477))

(assert (= (and b!1455481 res!986228) b!1455474))

(assert (= (and b!1455474 res!986236) b!1455491))

(assert (= (and b!1455491 res!986225) b!1455485))

(assert (= (and b!1455485 res!986224) b!1455490))

(assert (= (and b!1455491 (not res!986232)) b!1455480))

(assert (= (and b!1455480 (not res!986229)) b!1455473))

(assert (= (and b!1455473 (not res!986240)) b!1455493))

(assert (= (and b!1455493 c!134137) b!1455483))

(assert (= (and b!1455493 (not c!134137)) b!1455489))

(declare-fun m!1343737 () Bool)

(assert (=> b!1455491 m!1343737))

(declare-fun m!1343739 () Bool)

(assert (=> b!1455491 m!1343739))

(declare-fun m!1343741 () Bool)

(assert (=> b!1455491 m!1343741))

(declare-fun m!1343743 () Bool)

(assert (=> b!1455491 m!1343743))

(declare-fun m!1343745 () Bool)

(assert (=> b!1455491 m!1343745))

(declare-fun m!1343747 () Bool)

(assert (=> b!1455491 m!1343747))

(declare-fun m!1343749 () Bool)

(assert (=> b!1455476 m!1343749))

(assert (=> b!1455476 m!1343749))

(declare-fun m!1343751 () Bool)

(assert (=> b!1455476 m!1343751))

(assert (=> b!1455476 m!1343739))

(declare-fun m!1343753 () Bool)

(assert (=> b!1455476 m!1343753))

(assert (=> b!1455485 m!1343747))

(assert (=> b!1455485 m!1343747))

(declare-fun m!1343755 () Bool)

(assert (=> b!1455485 m!1343755))

(declare-fun m!1343757 () Bool)

(assert (=> start!125100 m!1343757))

(declare-fun m!1343759 () Bool)

(assert (=> start!125100 m!1343759))

(assert (=> b!1455479 m!1343739))

(declare-fun m!1343761 () Bool)

(assert (=> b!1455479 m!1343761))

(assert (=> b!1455473 m!1343747))

(assert (=> b!1455473 m!1343747))

(declare-fun m!1343763 () Bool)

(assert (=> b!1455473 m!1343763))

(declare-fun m!1343765 () Bool)

(assert (=> b!1455483 m!1343765))

(assert (=> b!1455492 m!1343747))

(assert (=> b!1455492 m!1343747))

(declare-fun m!1343767 () Bool)

(assert (=> b!1455492 m!1343767))

(assert (=> b!1455492 m!1343767))

(assert (=> b!1455492 m!1343747))

(declare-fun m!1343769 () Bool)

(assert (=> b!1455492 m!1343769))

(declare-fun m!1343771 () Bool)

(assert (=> b!1455489 m!1343771))

(assert (=> b!1455490 m!1343739))

(declare-fun m!1343773 () Bool)

(assert (=> b!1455490 m!1343773))

(assert (=> b!1455490 m!1343741))

(assert (=> b!1455490 m!1343743))

(assert (=> b!1455490 m!1343747))

(declare-fun m!1343775 () Bool)

(assert (=> b!1455482 m!1343775))

(assert (=> b!1455482 m!1343775))

(declare-fun m!1343777 () Bool)

(assert (=> b!1455482 m!1343777))

(declare-fun m!1343779 () Bool)

(assert (=> b!1455472 m!1343779))

(declare-fun m!1343781 () Bool)

(assert (=> b!1455477 m!1343781))

(declare-fun m!1343783 () Bool)

(assert (=> b!1455477 m!1343783))

(assert (=> b!1455488 m!1343747))

(assert (=> b!1455488 m!1343747))

(declare-fun m!1343785 () Bool)

(assert (=> b!1455488 m!1343785))

(assert (=> b!1455484 m!1343747))

(assert (=> b!1455484 m!1343747))

(declare-fun m!1343787 () Bool)

(assert (=> b!1455484 m!1343787))

(declare-fun m!1343789 () Bool)

(assert (=> b!1455480 m!1343789))

(assert (=> b!1455480 m!1343781))

(assert (=> b!1455480 m!1343783))

(declare-fun m!1343791 () Bool)

(assert (=> b!1455475 m!1343791))

(declare-fun m!1343793 () Bool)

(assert (=> b!1455487 m!1343793))

(check-sat (not b!1455476) (not b!1455485) (not b!1455484) (not b!1455489) (not b!1455488) (not b!1455482) (not b!1455477) (not b!1455492) (not b!1455487) (not b!1455475) (not b!1455491) (not b!1455472) (not b!1455483) (not b!1455480) (not start!125100) (not b!1455473))
(check-sat)
