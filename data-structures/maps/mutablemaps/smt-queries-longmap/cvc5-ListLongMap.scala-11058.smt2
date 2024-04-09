; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129226 () Bool)

(assert start!129226)

(declare-fun b!1516248 () Bool)

(declare-fun res!1036232 () Bool)

(declare-fun e!846099 () Bool)

(assert (=> b!1516248 (=> (not res!1036232) (not e!846099))))

(declare-datatypes ((SeekEntryResult!12922 0))(
  ( (MissingZero!12922 (index!54082 (_ BitVec 32))) (Found!12922 (index!54083 (_ BitVec 32))) (Intermediate!12922 (undefined!13734 Bool) (index!54084 (_ BitVec 32)) (x!135789 (_ BitVec 32))) (Undefined!12922) (MissingVacant!12922 (index!54085 (_ BitVec 32))) )
))
(declare-fun lt!657311 () SeekEntryResult!12922)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100995 0))(
  ( (array!100996 (arr!48730 (Array (_ BitVec 32) (_ BitVec 64))) (size!49281 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100995)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100995 (_ BitVec 32)) SeekEntryResult!12922)

(assert (=> b!1516248 (= res!1036232 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48730 a!2804) j!70) a!2804 mask!2512) lt!657311))))

(declare-fun b!1516249 () Bool)

(declare-fun res!1036229 () Bool)

(declare-fun e!846098 () Bool)

(assert (=> b!1516249 (=> (not res!1036229) (not e!846098))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516249 (= res!1036229 (validKeyInArray!0 (select (arr!48730 a!2804) i!961)))))

(declare-fun b!1516250 () Bool)

(assert (=> b!1516250 (= e!846098 e!846099)))

(declare-fun res!1036231 () Bool)

(assert (=> b!1516250 (=> (not res!1036231) (not e!846099))))

(declare-fun lt!657313 () SeekEntryResult!12922)

(assert (=> b!1516250 (= res!1036231 (= lt!657313 lt!657311))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1516250 (= lt!657311 (Intermediate!12922 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516250 (= lt!657313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48730 a!2804) j!70) mask!2512) (select (arr!48730 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516251 () Bool)

(declare-fun res!1036226 () Bool)

(assert (=> b!1516251 (=> (not res!1036226) (not e!846098))))

(declare-datatypes ((List!35393 0))(
  ( (Nil!35390) (Cons!35389 (h!36802 (_ BitVec 64)) (t!50094 List!35393)) )
))
(declare-fun arrayNoDuplicates!0 (array!100995 (_ BitVec 32) List!35393) Bool)

(assert (=> b!1516251 (= res!1036226 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35390))))

(declare-fun b!1516252 () Bool)

(declare-fun res!1036223 () Bool)

(assert (=> b!1516252 (=> (not res!1036223) (not e!846099))))

(assert (=> b!1516252 (= res!1036223 (= lt!657313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48730 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48730 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100996 (store (arr!48730 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49281 a!2804)) mask!2512)))))

(declare-fun b!1516253 () Bool)

(assert (=> b!1516253 (= e!846099 (not true))))

(declare-fun e!846101 () Bool)

(assert (=> b!1516253 e!846101))

(declare-fun res!1036227 () Bool)

(assert (=> b!1516253 (=> (not res!1036227) (not e!846101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100995 (_ BitVec 32)) Bool)

(assert (=> b!1516253 (= res!1036227 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50668 0))(
  ( (Unit!50669) )
))
(declare-fun lt!657312 () Unit!50668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100995 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50668)

(assert (=> b!1516253 (= lt!657312 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516254 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100995 (_ BitVec 32)) SeekEntryResult!12922)

(assert (=> b!1516254 (= e!846101 (= (seekEntry!0 (select (arr!48730 a!2804) j!70) a!2804 mask!2512) (Found!12922 j!70)))))

(declare-fun res!1036230 () Bool)

(assert (=> start!129226 (=> (not res!1036230) (not e!846098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129226 (= res!1036230 (validMask!0 mask!2512))))

(assert (=> start!129226 e!846098))

(assert (=> start!129226 true))

(declare-fun array_inv!37675 (array!100995) Bool)

(assert (=> start!129226 (array_inv!37675 a!2804)))

(declare-fun b!1516255 () Bool)

(declare-fun res!1036233 () Bool)

(assert (=> b!1516255 (=> (not res!1036233) (not e!846098))))

(assert (=> b!1516255 (= res!1036233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516256 () Bool)

(declare-fun res!1036225 () Bool)

(assert (=> b!1516256 (=> (not res!1036225) (not e!846098))))

(assert (=> b!1516256 (= res!1036225 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49281 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49281 a!2804))))))

(declare-fun b!1516257 () Bool)

(declare-fun res!1036228 () Bool)

(assert (=> b!1516257 (=> (not res!1036228) (not e!846098))))

(assert (=> b!1516257 (= res!1036228 (and (= (size!49281 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49281 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49281 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516258 () Bool)

(declare-fun res!1036224 () Bool)

(assert (=> b!1516258 (=> (not res!1036224) (not e!846098))))

(assert (=> b!1516258 (= res!1036224 (validKeyInArray!0 (select (arr!48730 a!2804) j!70)))))

(assert (= (and start!129226 res!1036230) b!1516257))

(assert (= (and b!1516257 res!1036228) b!1516249))

(assert (= (and b!1516249 res!1036229) b!1516258))

(assert (= (and b!1516258 res!1036224) b!1516255))

(assert (= (and b!1516255 res!1036233) b!1516251))

(assert (= (and b!1516251 res!1036226) b!1516256))

(assert (= (and b!1516256 res!1036225) b!1516250))

(assert (= (and b!1516250 res!1036231) b!1516248))

(assert (= (and b!1516248 res!1036232) b!1516252))

(assert (= (and b!1516252 res!1036223) b!1516253))

(assert (= (and b!1516253 res!1036227) b!1516254))

(declare-fun m!1399563 () Bool)

(assert (=> start!129226 m!1399563))

(declare-fun m!1399565 () Bool)

(assert (=> start!129226 m!1399565))

(declare-fun m!1399567 () Bool)

(assert (=> b!1516258 m!1399567))

(assert (=> b!1516258 m!1399567))

(declare-fun m!1399569 () Bool)

(assert (=> b!1516258 m!1399569))

(declare-fun m!1399571 () Bool)

(assert (=> b!1516253 m!1399571))

(declare-fun m!1399573 () Bool)

(assert (=> b!1516253 m!1399573))

(assert (=> b!1516248 m!1399567))

(assert (=> b!1516248 m!1399567))

(declare-fun m!1399575 () Bool)

(assert (=> b!1516248 m!1399575))

(declare-fun m!1399577 () Bool)

(assert (=> b!1516252 m!1399577))

(declare-fun m!1399579 () Bool)

(assert (=> b!1516252 m!1399579))

(assert (=> b!1516252 m!1399579))

(declare-fun m!1399581 () Bool)

(assert (=> b!1516252 m!1399581))

(assert (=> b!1516252 m!1399581))

(assert (=> b!1516252 m!1399579))

(declare-fun m!1399583 () Bool)

(assert (=> b!1516252 m!1399583))

(declare-fun m!1399585 () Bool)

(assert (=> b!1516251 m!1399585))

(declare-fun m!1399587 () Bool)

(assert (=> b!1516255 m!1399587))

(assert (=> b!1516250 m!1399567))

(assert (=> b!1516250 m!1399567))

(declare-fun m!1399589 () Bool)

(assert (=> b!1516250 m!1399589))

(assert (=> b!1516250 m!1399589))

(assert (=> b!1516250 m!1399567))

(declare-fun m!1399591 () Bool)

(assert (=> b!1516250 m!1399591))

(declare-fun m!1399593 () Bool)

(assert (=> b!1516249 m!1399593))

(assert (=> b!1516249 m!1399593))

(declare-fun m!1399595 () Bool)

(assert (=> b!1516249 m!1399595))

(assert (=> b!1516254 m!1399567))

(assert (=> b!1516254 m!1399567))

(declare-fun m!1399597 () Bool)

(assert (=> b!1516254 m!1399597))

(push 1)

