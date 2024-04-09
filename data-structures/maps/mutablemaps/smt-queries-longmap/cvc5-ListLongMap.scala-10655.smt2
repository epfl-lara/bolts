; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125110 () Bool)

(assert start!125110)

(declare-fun res!986505 () Bool)

(declare-fun e!819165 () Bool)

(assert (=> start!125110 (=> (not res!986505) (not e!819165))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125110 (= res!986505 (validMask!0 mask!2687))))

(assert (=> start!125110 e!819165))

(assert (=> start!125110 true))

(declare-datatypes ((array!98475 0))(
  ( (array!98476 (arr!47521 (Array (_ BitVec 32) (_ BitVec 64))) (size!48072 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98475)

(declare-fun array_inv!36466 (array!98475) Bool)

(assert (=> start!125110 (array_inv!36466 a!2862)))

(declare-fun b!1455802 () Bool)

(declare-fun res!986507 () Bool)

(declare-fun e!819164 () Bool)

(assert (=> b!1455802 (=> (not res!986507) (not e!819164))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1455802 (= res!986507 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455803 () Bool)

(declare-fun res!986502 () Bool)

(declare-fun e!819172 () Bool)

(assert (=> b!1455803 (=> (not res!986502) (not e!819172))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11796 0))(
  ( (MissingZero!11796 (index!49575 (_ BitVec 32))) (Found!11796 (index!49576 (_ BitVec 32))) (Intermediate!11796 (undefined!12608 Bool) (index!49577 (_ BitVec 32)) (x!131208 (_ BitVec 32))) (Undefined!11796) (MissingVacant!11796 (index!49578 (_ BitVec 32))) )
))
(declare-fun lt!638053 () SeekEntryResult!11796)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98475 (_ BitVec 32)) SeekEntryResult!11796)

(assert (=> b!1455803 (= res!986502 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47521 a!2862) j!93) a!2862 mask!2687) lt!638053))))

(declare-fun e!819171 () Bool)

(declare-fun lt!638055 () array!98475)

(declare-fun lt!638058 () SeekEntryResult!11796)

(declare-fun b!1455804 () Bool)

(declare-fun lt!638052 () (_ BitVec 32))

(declare-fun lt!638059 () (_ BitVec 64))

(assert (=> b!1455804 (= e!819171 (not (= lt!638058 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638052 lt!638059 lt!638055 mask!2687))))))

(declare-fun b!1455805 () Bool)

(declare-fun res!986497 () Bool)

(assert (=> b!1455805 (=> (not res!986497) (not e!819165))))

(assert (=> b!1455805 (= res!986497 (and (= (size!48072 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48072 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48072 a!2862)) (not (= i!1006 j!93))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!819166 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1455806 () Bool)

(assert (=> b!1455806 (= e!819166 (and (or (= (select (arr!47521 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47521 a!2862) intermediateBeforeIndex!19) (select (arr!47521 a!2862) j!93))) (let ((bdg!53197 (select (store (arr!47521 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47521 a!2862) index!646) bdg!53197) (= (select (arr!47521 a!2862) index!646) (select (arr!47521 a!2862) j!93))) (= (select (arr!47521 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53197 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455807 () Bool)

(declare-fun e!819170 () Bool)

(assert (=> b!1455807 (= e!819164 (not e!819170))))

(declare-fun res!986501 () Bool)

(assert (=> b!1455807 (=> res!986501 e!819170)))

(assert (=> b!1455807 (= res!986501 (or (and (= (select (arr!47521 a!2862) index!646) (select (store (arr!47521 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47521 a!2862) index!646) (select (arr!47521 a!2862) j!93))) (= (select (arr!47521 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1455807 e!819166))

(declare-fun res!986499 () Bool)

(assert (=> b!1455807 (=> (not res!986499) (not e!819166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98475 (_ BitVec 32)) Bool)

(assert (=> b!1455807 (= res!986499 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49036 0))(
  ( (Unit!49037) )
))
(declare-fun lt!638054 () Unit!49036)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98475 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49036)

(assert (=> b!1455807 (= lt!638054 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455808 () Bool)

(declare-fun res!986509 () Bool)

(declare-fun e!819173 () Bool)

(assert (=> b!1455808 (=> res!986509 e!819173)))

(assert (=> b!1455808 (= res!986509 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638052 (select (arr!47521 a!2862) j!93) a!2862 mask!2687) lt!638053)))))

(declare-fun b!1455809 () Bool)

(declare-fun res!986494 () Bool)

(assert (=> b!1455809 (=> (not res!986494) (not e!819165))))

(declare-datatypes ((List!34202 0))(
  ( (Nil!34199) (Cons!34198 (h!35548 (_ BitVec 64)) (t!48903 List!34202)) )
))
(declare-fun arrayNoDuplicates!0 (array!98475 (_ BitVec 32) List!34202) Bool)

(assert (=> b!1455809 (= res!986494 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34199))))

(declare-fun b!1455810 () Bool)

(assert (=> b!1455810 (= e!819172 e!819164)))

(declare-fun res!986506 () Bool)

(assert (=> b!1455810 (=> (not res!986506) (not e!819164))))

(assert (=> b!1455810 (= res!986506 (= lt!638058 (Intermediate!11796 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455810 (= lt!638058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638059 mask!2687) lt!638059 lt!638055 mask!2687))))

(assert (=> b!1455810 (= lt!638059 (select (store (arr!47521 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455811 () Bool)

(declare-fun e!819169 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98475 (_ BitVec 32)) SeekEntryResult!11796)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98475 (_ BitVec 32)) SeekEntryResult!11796)

(assert (=> b!1455811 (= e!819169 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638059 lt!638055 mask!2687) (seekEntryOrOpen!0 lt!638059 lt!638055 mask!2687)))))

(declare-fun b!1455812 () Bool)

(assert (=> b!1455812 (= e!819169 (= lt!638058 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638059 lt!638055 mask!2687)))))

(declare-fun lt!638057 () SeekEntryResult!11796)

(declare-fun b!1455813 () Bool)

(assert (=> b!1455813 (= e!819171 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638052 intermediateAfterIndex!19 lt!638059 lt!638055 mask!2687) lt!638057)))))

(declare-fun b!1455814 () Bool)

(declare-fun res!986503 () Bool)

(assert (=> b!1455814 (=> (not res!986503) (not e!819164))))

(assert (=> b!1455814 (= res!986503 e!819169)))

(declare-fun c!134167 () Bool)

(assert (=> b!1455814 (= c!134167 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455815 () Bool)

(assert (=> b!1455815 (= e!819173 true)))

(declare-fun lt!638056 () Bool)

(assert (=> b!1455815 (= lt!638056 e!819171)))

(declare-fun c!134168 () Bool)

(assert (=> b!1455815 (= c!134168 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455816 () Bool)

(declare-fun res!986508 () Bool)

(assert (=> b!1455816 (=> (not res!986508) (not e!819166))))

(assert (=> b!1455816 (= res!986508 (= (seekEntryOrOpen!0 (select (arr!47521 a!2862) j!93) a!2862 mask!2687) (Found!11796 j!93)))))

(declare-fun b!1455817 () Bool)

(declare-fun e!819167 () Bool)

(assert (=> b!1455817 (= e!819165 e!819167)))

(declare-fun res!986504 () Bool)

(assert (=> b!1455817 (=> (not res!986504) (not e!819167))))

(assert (=> b!1455817 (= res!986504 (= (select (store (arr!47521 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455817 (= lt!638055 (array!98476 (store (arr!47521 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48072 a!2862)))))

(declare-fun b!1455818 () Bool)

(assert (=> b!1455818 (= e!819167 e!819172)))

(declare-fun res!986511 () Bool)

(assert (=> b!1455818 (=> (not res!986511) (not e!819172))))

(assert (=> b!1455818 (= res!986511 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47521 a!2862) j!93) mask!2687) (select (arr!47521 a!2862) j!93) a!2862 mask!2687) lt!638053))))

(assert (=> b!1455818 (= lt!638053 (Intermediate!11796 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455819 () Bool)

(declare-fun res!986495 () Bool)

(assert (=> b!1455819 (=> (not res!986495) (not e!819165))))

(assert (=> b!1455819 (= res!986495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1455820 () Bool)

(assert (=> b!1455820 (= e!819170 e!819173)))

(declare-fun res!986496 () Bool)

(assert (=> b!1455820 (=> res!986496 e!819173)))

(assert (=> b!1455820 (= res!986496 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638052 #b00000000000000000000000000000000) (bvsge lt!638052 (size!48072 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455820 (= lt!638052 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1455820 (= lt!638057 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638059 lt!638055 mask!2687))))

(assert (=> b!1455820 (= lt!638057 (seekEntryOrOpen!0 lt!638059 lt!638055 mask!2687))))

(declare-fun b!1455821 () Bool)

(declare-fun res!986498 () Bool)

(assert (=> b!1455821 (=> (not res!986498) (not e!819165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455821 (= res!986498 (validKeyInArray!0 (select (arr!47521 a!2862) j!93)))))

(declare-fun b!1455822 () Bool)

(declare-fun res!986500 () Bool)

(assert (=> b!1455822 (=> (not res!986500) (not e!819165))))

(assert (=> b!1455822 (= res!986500 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48072 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48072 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48072 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455823 () Bool)

(declare-fun res!986510 () Bool)

(assert (=> b!1455823 (=> (not res!986510) (not e!819165))))

(assert (=> b!1455823 (= res!986510 (validKeyInArray!0 (select (arr!47521 a!2862) i!1006)))))

(assert (= (and start!125110 res!986505) b!1455805))

(assert (= (and b!1455805 res!986497) b!1455823))

(assert (= (and b!1455823 res!986510) b!1455821))

(assert (= (and b!1455821 res!986498) b!1455819))

(assert (= (and b!1455819 res!986495) b!1455809))

(assert (= (and b!1455809 res!986494) b!1455822))

(assert (= (and b!1455822 res!986500) b!1455817))

(assert (= (and b!1455817 res!986504) b!1455818))

(assert (= (and b!1455818 res!986511) b!1455803))

(assert (= (and b!1455803 res!986502) b!1455810))

(assert (= (and b!1455810 res!986506) b!1455814))

(assert (= (and b!1455814 c!134167) b!1455812))

(assert (= (and b!1455814 (not c!134167)) b!1455811))

(assert (= (and b!1455814 res!986503) b!1455802))

(assert (= (and b!1455802 res!986507) b!1455807))

(assert (= (and b!1455807 res!986499) b!1455816))

(assert (= (and b!1455816 res!986508) b!1455806))

(assert (= (and b!1455807 (not res!986501)) b!1455820))

(assert (= (and b!1455820 (not res!986496)) b!1455808))

(assert (= (and b!1455808 (not res!986509)) b!1455815))

(assert (= (and b!1455815 c!134168) b!1455804))

(assert (= (and b!1455815 (not c!134168)) b!1455813))

(declare-fun m!1344027 () Bool)

(assert (=> b!1455804 m!1344027))

(declare-fun m!1344029 () Bool)

(assert (=> b!1455819 m!1344029))

(declare-fun m!1344031 () Bool)

(assert (=> b!1455806 m!1344031))

(declare-fun m!1344033 () Bool)

(assert (=> b!1455806 m!1344033))

(declare-fun m!1344035 () Bool)

(assert (=> b!1455806 m!1344035))

(declare-fun m!1344037 () Bool)

(assert (=> b!1455806 m!1344037))

(declare-fun m!1344039 () Bool)

(assert (=> b!1455806 m!1344039))

(declare-fun m!1344041 () Bool)

(assert (=> b!1455809 m!1344041))

(assert (=> b!1455817 m!1344031))

(declare-fun m!1344043 () Bool)

(assert (=> b!1455817 m!1344043))

(declare-fun m!1344045 () Bool)

(assert (=> b!1455813 m!1344045))

(declare-fun m!1344047 () Bool)

(assert (=> b!1455823 m!1344047))

(assert (=> b!1455823 m!1344047))

(declare-fun m!1344049 () Bool)

(assert (=> b!1455823 m!1344049))

(declare-fun m!1344051 () Bool)

(assert (=> b!1455807 m!1344051))

(assert (=> b!1455807 m!1344031))

(assert (=> b!1455807 m!1344035))

(assert (=> b!1455807 m!1344037))

(declare-fun m!1344053 () Bool)

(assert (=> b!1455807 m!1344053))

(assert (=> b!1455807 m!1344039))

(declare-fun m!1344055 () Bool)

(assert (=> b!1455812 m!1344055))

(assert (=> b!1455821 m!1344039))

(assert (=> b!1455821 m!1344039))

(declare-fun m!1344057 () Bool)

(assert (=> b!1455821 m!1344057))

(declare-fun m!1344059 () Bool)

(assert (=> b!1455810 m!1344059))

(assert (=> b!1455810 m!1344059))

(declare-fun m!1344061 () Bool)

(assert (=> b!1455810 m!1344061))

(assert (=> b!1455810 m!1344031))

(declare-fun m!1344063 () Bool)

(assert (=> b!1455810 m!1344063))

(assert (=> b!1455808 m!1344039))

(assert (=> b!1455808 m!1344039))

(declare-fun m!1344065 () Bool)

(assert (=> b!1455808 m!1344065))

(assert (=> b!1455803 m!1344039))

(assert (=> b!1455803 m!1344039))

(declare-fun m!1344067 () Bool)

(assert (=> b!1455803 m!1344067))

(declare-fun m!1344069 () Bool)

(assert (=> b!1455811 m!1344069))

(declare-fun m!1344071 () Bool)

(assert (=> b!1455811 m!1344071))

(assert (=> b!1455816 m!1344039))

(assert (=> b!1455816 m!1344039))

(declare-fun m!1344073 () Bool)

(assert (=> b!1455816 m!1344073))

(declare-fun m!1344075 () Bool)

(assert (=> start!125110 m!1344075))

(declare-fun m!1344077 () Bool)

(assert (=> start!125110 m!1344077))

(assert (=> b!1455818 m!1344039))

(assert (=> b!1455818 m!1344039))

(declare-fun m!1344079 () Bool)

(assert (=> b!1455818 m!1344079))

(assert (=> b!1455818 m!1344079))

(assert (=> b!1455818 m!1344039))

(declare-fun m!1344081 () Bool)

(assert (=> b!1455818 m!1344081))

(declare-fun m!1344083 () Bool)

(assert (=> b!1455820 m!1344083))

(assert (=> b!1455820 m!1344069))

(assert (=> b!1455820 m!1344071))

(push 1)

