; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129812 () Bool)

(assert start!129812)

(declare-fun b!1523220 () Bool)

(declare-fun res!1042268 () Bool)

(declare-fun e!849259 () Bool)

(assert (=> b!1523220 (=> (not res!1042268) (not e!849259))))

(declare-datatypes ((array!101335 0))(
  ( (array!101336 (arr!48894 (Array (_ BitVec 32) (_ BitVec 64))) (size!49445 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101335)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523220 (= res!1042268 (validKeyInArray!0 (select (arr!48894 a!2804) j!70)))))

(declare-fun b!1523221 () Bool)

(declare-fun res!1042270 () Bool)

(declare-fun e!849257 () Bool)

(assert (=> b!1523221 (=> (not res!1042270) (not e!849257))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13080 0))(
  ( (MissingZero!13080 (index!54714 (_ BitVec 32))) (Found!13080 (index!54715 (_ BitVec 32))) (Intermediate!13080 (undefined!13892 Bool) (index!54716 (_ BitVec 32)) (x!136409 (_ BitVec 32))) (Undefined!13080) (MissingVacant!13080 (index!54717 (_ BitVec 32))) )
))
(declare-fun lt!659850 () SeekEntryResult!13080)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101335 (_ BitVec 32)) SeekEntryResult!13080)

(assert (=> b!1523221 (= res!1042270 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48894 a!2804) j!70) a!2804 mask!2512) lt!659850))))

(declare-fun b!1523222 () Bool)

(declare-fun res!1042274 () Bool)

(assert (=> b!1523222 (=> (not res!1042274) (not e!849259))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1523222 (= res!1042274 (and (= (size!49445 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49445 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49445 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523223 () Bool)

(assert (=> b!1523223 (= e!849259 e!849257)))

(declare-fun res!1042265 () Bool)

(assert (=> b!1523223 (=> (not res!1042265) (not e!849257))))

(declare-fun lt!659851 () SeekEntryResult!13080)

(assert (=> b!1523223 (= res!1042265 (= lt!659851 lt!659850))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523223 (= lt!659850 (Intermediate!13080 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523223 (= lt!659851 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48894 a!2804) j!70) mask!2512) (select (arr!48894 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523224 () Bool)

(assert (=> b!1523224 (= e!849257 (not true))))

(declare-fun e!849260 () Bool)

(assert (=> b!1523224 e!849260))

(declare-fun res!1042272 () Bool)

(assert (=> b!1523224 (=> (not res!1042272) (not e!849260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101335 (_ BitVec 32)) Bool)

(assert (=> b!1523224 (= res!1042272 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50900 0))(
  ( (Unit!50901) )
))
(declare-fun lt!659849 () Unit!50900)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50900)

(assert (=> b!1523224 (= lt!659849 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523225 () Bool)

(declare-fun res!1042271 () Bool)

(assert (=> b!1523225 (=> (not res!1042271) (not e!849259))))

(assert (=> b!1523225 (= res!1042271 (validKeyInArray!0 (select (arr!48894 a!2804) i!961)))))

(declare-fun b!1523227 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101335 (_ BitVec 32)) SeekEntryResult!13080)

(assert (=> b!1523227 (= e!849260 (= (seekEntry!0 (select (arr!48894 a!2804) j!70) a!2804 mask!2512) (Found!13080 j!70)))))

(declare-fun b!1523228 () Bool)

(declare-fun res!1042275 () Bool)

(assert (=> b!1523228 (=> (not res!1042275) (not e!849259))))

(assert (=> b!1523228 (= res!1042275 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49445 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49445 a!2804))))))

(declare-fun b!1523229 () Bool)

(declare-fun res!1042273 () Bool)

(assert (=> b!1523229 (=> (not res!1042273) (not e!849259))))

(declare-datatypes ((List!35557 0))(
  ( (Nil!35554) (Cons!35553 (h!36978 (_ BitVec 64)) (t!50258 List!35557)) )
))
(declare-fun arrayNoDuplicates!0 (array!101335 (_ BitVec 32) List!35557) Bool)

(assert (=> b!1523229 (= res!1042273 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35554))))

(declare-fun b!1523230 () Bool)

(declare-fun res!1042269 () Bool)

(assert (=> b!1523230 (=> (not res!1042269) (not e!849259))))

(assert (=> b!1523230 (= res!1042269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523226 () Bool)

(declare-fun res!1042266 () Bool)

(assert (=> b!1523226 (=> (not res!1042266) (not e!849257))))

(assert (=> b!1523226 (= res!1042266 (= lt!659851 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48894 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48894 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101336 (store (arr!48894 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49445 a!2804)) mask!2512)))))

(declare-fun res!1042267 () Bool)

(assert (=> start!129812 (=> (not res!1042267) (not e!849259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129812 (= res!1042267 (validMask!0 mask!2512))))

(assert (=> start!129812 e!849259))

(assert (=> start!129812 true))

(declare-fun array_inv!37839 (array!101335) Bool)

(assert (=> start!129812 (array_inv!37839 a!2804)))

(assert (= (and start!129812 res!1042267) b!1523222))

(assert (= (and b!1523222 res!1042274) b!1523225))

(assert (= (and b!1523225 res!1042271) b!1523220))

(assert (= (and b!1523220 res!1042268) b!1523230))

(assert (= (and b!1523230 res!1042269) b!1523229))

(assert (= (and b!1523229 res!1042273) b!1523228))

(assert (= (and b!1523228 res!1042275) b!1523223))

(assert (= (and b!1523223 res!1042265) b!1523221))

(assert (= (and b!1523221 res!1042270) b!1523226))

(assert (= (and b!1523226 res!1042266) b!1523224))

(assert (= (and b!1523224 res!1042272) b!1523227))

(declare-fun m!1406379 () Bool)

(assert (=> b!1523223 m!1406379))

(assert (=> b!1523223 m!1406379))

(declare-fun m!1406381 () Bool)

(assert (=> b!1523223 m!1406381))

(assert (=> b!1523223 m!1406381))

(assert (=> b!1523223 m!1406379))

(declare-fun m!1406383 () Bool)

(assert (=> b!1523223 m!1406383))

(declare-fun m!1406385 () Bool)

(assert (=> b!1523230 m!1406385))

(assert (=> b!1523227 m!1406379))

(assert (=> b!1523227 m!1406379))

(declare-fun m!1406387 () Bool)

(assert (=> b!1523227 m!1406387))

(assert (=> b!1523220 m!1406379))

(assert (=> b!1523220 m!1406379))

(declare-fun m!1406389 () Bool)

(assert (=> b!1523220 m!1406389))

(declare-fun m!1406391 () Bool)

(assert (=> b!1523226 m!1406391))

(declare-fun m!1406393 () Bool)

(assert (=> b!1523226 m!1406393))

(assert (=> b!1523226 m!1406393))

(declare-fun m!1406395 () Bool)

(assert (=> b!1523226 m!1406395))

(assert (=> b!1523226 m!1406395))

(assert (=> b!1523226 m!1406393))

(declare-fun m!1406397 () Bool)

(assert (=> b!1523226 m!1406397))

(assert (=> b!1523221 m!1406379))

(assert (=> b!1523221 m!1406379))

(declare-fun m!1406399 () Bool)

(assert (=> b!1523221 m!1406399))

(declare-fun m!1406401 () Bool)

(assert (=> b!1523225 m!1406401))

(assert (=> b!1523225 m!1406401))

(declare-fun m!1406403 () Bool)

(assert (=> b!1523225 m!1406403))

(declare-fun m!1406405 () Bool)

(assert (=> b!1523229 m!1406405))

(declare-fun m!1406407 () Bool)

(assert (=> b!1523224 m!1406407))

(declare-fun m!1406409 () Bool)

(assert (=> b!1523224 m!1406409))

(declare-fun m!1406411 () Bool)

(assert (=> start!129812 m!1406411))

(declare-fun m!1406413 () Bool)

(assert (=> start!129812 m!1406413))

(push 1)

(assert (not b!1523226))

