; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129224 () Bool)

(assert start!129224)

(declare-fun b!1516215 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100993 0))(
  ( (array!100994 (arr!48729 (Array (_ BitVec 32) (_ BitVec 64))) (size!49280 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100993)

(declare-fun e!846087 () Bool)

(declare-datatypes ((SeekEntryResult!12921 0))(
  ( (MissingZero!12921 (index!54078 (_ BitVec 32))) (Found!12921 (index!54079 (_ BitVec 32))) (Intermediate!12921 (undefined!13733 Bool) (index!54080 (_ BitVec 32)) (x!135780 (_ BitVec 32))) (Undefined!12921) (MissingVacant!12921 (index!54081 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100993 (_ BitVec 32)) SeekEntryResult!12921)

(assert (=> b!1516215 (= e!846087 (= (seekEntry!0 (select (arr!48729 a!2804) j!70) a!2804 mask!2512) (Found!12921 j!70)))))

(declare-fun b!1516216 () Bool)

(declare-fun e!846089 () Bool)

(declare-fun e!846086 () Bool)

(assert (=> b!1516216 (= e!846089 e!846086)))

(declare-fun res!1036199 () Bool)

(assert (=> b!1516216 (=> (not res!1036199) (not e!846086))))

(declare-fun lt!657302 () SeekEntryResult!12921)

(declare-fun lt!657303 () SeekEntryResult!12921)

(assert (=> b!1516216 (= res!1036199 (= lt!657302 lt!657303))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1516216 (= lt!657303 (Intermediate!12921 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100993 (_ BitVec 32)) SeekEntryResult!12921)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516216 (= lt!657302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48729 a!2804) j!70) mask!2512) (select (arr!48729 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516217 () Bool)

(declare-fun res!1036191 () Bool)

(assert (=> b!1516217 (=> (not res!1036191) (not e!846089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516217 (= res!1036191 (validKeyInArray!0 (select (arr!48729 a!2804) j!70)))))

(declare-fun b!1516218 () Bool)

(declare-fun res!1036200 () Bool)

(assert (=> b!1516218 (=> (not res!1036200) (not e!846089))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1516218 (= res!1036200 (validKeyInArray!0 (select (arr!48729 a!2804) i!961)))))

(declare-fun b!1516219 () Bool)

(declare-fun res!1036192 () Bool)

(assert (=> b!1516219 (=> (not res!1036192) (not e!846089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100993 (_ BitVec 32)) Bool)

(assert (=> b!1516219 (= res!1036192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516220 () Bool)

(declare-fun res!1036193 () Bool)

(assert (=> b!1516220 (=> (not res!1036193) (not e!846086))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516220 (= res!1036193 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48729 a!2804) j!70) a!2804 mask!2512) lt!657303))))

(declare-fun b!1516221 () Bool)

(assert (=> b!1516221 (= e!846086 (not (or (not (= (select (arr!48729 a!2804) j!70) (select (store (arr!48729 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21) (bvslt mask!2512 #b00000000000000000000000000000000) (bvslt index!487 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(assert (=> b!1516221 e!846087))

(declare-fun res!1036194 () Bool)

(assert (=> b!1516221 (=> (not res!1036194) (not e!846087))))

(assert (=> b!1516221 (= res!1036194 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50666 0))(
  ( (Unit!50667) )
))
(declare-fun lt!657304 () Unit!50666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100993 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50666)

(assert (=> b!1516221 (= lt!657304 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516222 () Bool)

(declare-fun res!1036195 () Bool)

(assert (=> b!1516222 (=> (not res!1036195) (not e!846089))))

(declare-datatypes ((List!35392 0))(
  ( (Nil!35389) (Cons!35388 (h!36801 (_ BitVec 64)) (t!50093 List!35392)) )
))
(declare-fun arrayNoDuplicates!0 (array!100993 (_ BitVec 32) List!35392) Bool)

(assert (=> b!1516222 (= res!1036195 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35389))))

(declare-fun b!1516224 () Bool)

(declare-fun res!1036197 () Bool)

(assert (=> b!1516224 (=> (not res!1036197) (not e!846089))))

(assert (=> b!1516224 (= res!1036197 (and (= (size!49280 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49280 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49280 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516225 () Bool)

(declare-fun res!1036196 () Bool)

(assert (=> b!1516225 (=> (not res!1036196) (not e!846089))))

(assert (=> b!1516225 (= res!1036196 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49280 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49280 a!2804))))))

(declare-fun res!1036198 () Bool)

(assert (=> start!129224 (=> (not res!1036198) (not e!846089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129224 (= res!1036198 (validMask!0 mask!2512))))

(assert (=> start!129224 e!846089))

(assert (=> start!129224 true))

(declare-fun array_inv!37674 (array!100993) Bool)

(assert (=> start!129224 (array_inv!37674 a!2804)))

(declare-fun b!1516223 () Bool)

(declare-fun res!1036190 () Bool)

(assert (=> b!1516223 (=> (not res!1036190) (not e!846086))))

(assert (=> b!1516223 (= res!1036190 (= lt!657302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48729 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48729 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100994 (store (arr!48729 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49280 a!2804)) mask!2512)))))

(assert (= (and start!129224 res!1036198) b!1516224))

(assert (= (and b!1516224 res!1036197) b!1516218))

(assert (= (and b!1516218 res!1036200) b!1516217))

(assert (= (and b!1516217 res!1036191) b!1516219))

(assert (= (and b!1516219 res!1036192) b!1516222))

(assert (= (and b!1516222 res!1036195) b!1516225))

(assert (= (and b!1516225 res!1036196) b!1516216))

(assert (= (and b!1516216 res!1036199) b!1516220))

(assert (= (and b!1516220 res!1036193) b!1516223))

(assert (= (and b!1516223 res!1036190) b!1516221))

(assert (= (and b!1516221 res!1036194) b!1516215))

(declare-fun m!1399527 () Bool)

(assert (=> b!1516215 m!1399527))

(assert (=> b!1516215 m!1399527))

(declare-fun m!1399529 () Bool)

(assert (=> b!1516215 m!1399529))

(assert (=> b!1516217 m!1399527))

(assert (=> b!1516217 m!1399527))

(declare-fun m!1399531 () Bool)

(assert (=> b!1516217 m!1399531))

(declare-fun m!1399533 () Bool)

(assert (=> b!1516218 m!1399533))

(assert (=> b!1516218 m!1399533))

(declare-fun m!1399535 () Bool)

(assert (=> b!1516218 m!1399535))

(declare-fun m!1399537 () Bool)

(assert (=> start!129224 m!1399537))

(declare-fun m!1399539 () Bool)

(assert (=> start!129224 m!1399539))

(declare-fun m!1399541 () Bool)

(assert (=> b!1516222 m!1399541))

(assert (=> b!1516220 m!1399527))

(assert (=> b!1516220 m!1399527))

(declare-fun m!1399543 () Bool)

(assert (=> b!1516220 m!1399543))

(assert (=> b!1516216 m!1399527))

(assert (=> b!1516216 m!1399527))

(declare-fun m!1399545 () Bool)

(assert (=> b!1516216 m!1399545))

(assert (=> b!1516216 m!1399545))

(assert (=> b!1516216 m!1399527))

(declare-fun m!1399547 () Bool)

(assert (=> b!1516216 m!1399547))

(assert (=> b!1516221 m!1399527))

(declare-fun m!1399549 () Bool)

(assert (=> b!1516221 m!1399549))

(declare-fun m!1399551 () Bool)

(assert (=> b!1516221 m!1399551))

(declare-fun m!1399553 () Bool)

(assert (=> b!1516221 m!1399553))

(declare-fun m!1399555 () Bool)

(assert (=> b!1516221 m!1399555))

(declare-fun m!1399557 () Bool)

(assert (=> b!1516219 m!1399557))

(assert (=> b!1516223 m!1399551))

(assert (=> b!1516223 m!1399553))

(assert (=> b!1516223 m!1399553))

(declare-fun m!1399559 () Bool)

(assert (=> b!1516223 m!1399559))

(assert (=> b!1516223 m!1399559))

(assert (=> b!1516223 m!1399553))

(declare-fun m!1399561 () Bool)

(assert (=> b!1516223 m!1399561))

(push 1)

(assert (not b!1516217))

(assert (not b!1516221))

(assert (not b!1516222))

(assert (not b!1516218))

(assert (not b!1516219))

(assert (not start!129224))

(assert (not b!1516215))

(assert (not b!1516216))

(assert (not b!1516220))

(assert (not b!1516223))

(check-sat)

(pop 1)

(push 1)

(check-sat)

