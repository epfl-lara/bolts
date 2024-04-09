; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129172 () Bool)

(assert start!129172)

(declare-fun b!1515244 () Bool)

(declare-fun e!845610 () Bool)

(declare-fun e!845613 () Bool)

(assert (=> b!1515244 (= e!845610 e!845613)))

(declare-fun res!1035220 () Bool)

(assert (=> b!1515244 (=> (not res!1035220) (not e!845613))))

(declare-datatypes ((SeekEntryResult!12895 0))(
  ( (MissingZero!12895 (index!53974 (_ BitVec 32))) (Found!12895 (index!53975 (_ BitVec 32))) (Intermediate!12895 (undefined!13707 Bool) (index!53976 (_ BitVec 32)) (x!135690 (_ BitVec 32))) (Undefined!12895) (MissingVacant!12895 (index!53977 (_ BitVec 32))) )
))
(declare-fun lt!656712 () SeekEntryResult!12895)

(declare-fun lt!656710 () SeekEntryResult!12895)

(assert (=> b!1515244 (= res!1035220 (= lt!656712 lt!656710))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1515244 (= lt!656710 (Intermediate!12895 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100941 0))(
  ( (array!100942 (arr!48703 (Array (_ BitVec 32) (_ BitVec 64))) (size!49254 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100941)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100941 (_ BitVec 32)) SeekEntryResult!12895)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515244 (= lt!656712 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48703 a!2804) j!70) mask!2512) (select (arr!48703 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515245 () Bool)

(declare-fun res!1035223 () Bool)

(assert (=> b!1515245 (=> (not res!1035223) (not e!845610))))

(declare-datatypes ((List!35366 0))(
  ( (Nil!35363) (Cons!35362 (h!36775 (_ BitVec 64)) (t!50067 List!35366)) )
))
(declare-fun arrayNoDuplicates!0 (array!100941 (_ BitVec 32) List!35366) Bool)

(assert (=> b!1515245 (= res!1035223 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35363))))

(declare-fun b!1515246 () Bool)

(declare-fun res!1035224 () Bool)

(assert (=> b!1515246 (=> (not res!1035224) (not e!845610))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515246 (= res!1035224 (validKeyInArray!0 (select (arr!48703 a!2804) i!961)))))

(declare-fun b!1515247 () Bool)

(declare-fun res!1035225 () Bool)

(assert (=> b!1515247 (=> (not res!1035225) (not e!845610))))

(assert (=> b!1515247 (= res!1035225 (validKeyInArray!0 (select (arr!48703 a!2804) j!70)))))

(declare-fun b!1515248 () Bool)

(declare-fun e!845615 () Bool)

(declare-fun e!845614 () Bool)

(assert (=> b!1515248 (= e!845615 (not e!845614))))

(declare-fun res!1035230 () Bool)

(assert (=> b!1515248 (=> res!1035230 e!845614)))

(declare-fun lt!656708 () (_ BitVec 64))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1515248 (= res!1035230 (or (not (= (select (arr!48703 a!2804) j!70) lt!656708)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48703 a!2804) index!487) (select (arr!48703 a!2804) j!70)) (not (= (select (arr!48703 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845611 () Bool)

(assert (=> b!1515248 e!845611))

(declare-fun res!1035227 () Bool)

(assert (=> b!1515248 (=> (not res!1035227) (not e!845611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100941 (_ BitVec 32)) Bool)

(assert (=> b!1515248 (= res!1035227 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50614 0))(
  ( (Unit!50615) )
))
(declare-fun lt!656705 () Unit!50614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100941 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50614)

(assert (=> b!1515248 (= lt!656705 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515249 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100941 (_ BitVec 32)) SeekEntryResult!12895)

(assert (=> b!1515249 (= e!845611 (= (seekEntry!0 (select (arr!48703 a!2804) j!70) a!2804 mask!2512) (Found!12895 j!70)))))

(declare-fun b!1515250 () Bool)

(assert (=> b!1515250 (= e!845613 e!845615)))

(declare-fun res!1035221 () Bool)

(assert (=> b!1515250 (=> (not res!1035221) (not e!845615))))

(declare-fun lt!656709 () array!100941)

(assert (=> b!1515250 (= res!1035221 (= lt!656712 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656708 mask!2512) lt!656708 lt!656709 mask!2512)))))

(assert (=> b!1515250 (= lt!656708 (select (store (arr!48703 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515250 (= lt!656709 (array!100942 (store (arr!48703 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49254 a!2804)))))

(declare-fun b!1515251 () Bool)

(declare-fun res!1035222 () Bool)

(assert (=> b!1515251 (=> (not res!1035222) (not e!845610))))

(assert (=> b!1515251 (= res!1035222 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49254 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49254 a!2804))))))

(declare-fun b!1515252 () Bool)

(declare-fun res!1035229 () Bool)

(assert (=> b!1515252 (=> (not res!1035229) (not e!845613))))

(assert (=> b!1515252 (= res!1035229 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48703 a!2804) j!70) a!2804 mask!2512) lt!656710))))

(declare-fun res!1035219 () Bool)

(assert (=> start!129172 (=> (not res!1035219) (not e!845610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129172 (= res!1035219 (validMask!0 mask!2512))))

(assert (=> start!129172 e!845610))

(assert (=> start!129172 true))

(declare-fun array_inv!37648 (array!100941) Bool)

(assert (=> start!129172 (array_inv!37648 a!2804)))

(declare-fun b!1515253 () Bool)

(declare-fun e!845612 () Bool)

(assert (=> b!1515253 (= e!845612 true)))

(declare-fun lt!656707 () SeekEntryResult!12895)

(declare-fun lt!656704 () SeekEntryResult!12895)

(assert (=> b!1515253 (= lt!656707 lt!656704)))

(declare-fun lt!656713 () Unit!50614)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100941 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50614)

(assert (=> b!1515253 (= lt!656713 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515254 () Bool)

(declare-fun res!1035231 () Bool)

(assert (=> b!1515254 (=> (not res!1035231) (not e!845610))))

(assert (=> b!1515254 (= res!1035231 (and (= (size!49254 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49254 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49254 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515255 () Bool)

(assert (=> b!1515255 (= e!845614 e!845612)))

(declare-fun res!1035226 () Bool)

(assert (=> b!1515255 (=> res!1035226 e!845612)))

(assert (=> b!1515255 (= res!1035226 (not (= lt!656704 (Found!12895 j!70))))))

(declare-fun lt!656706 () SeekEntryResult!12895)

(assert (=> b!1515255 (= lt!656706 lt!656707)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100941 (_ BitVec 32)) SeekEntryResult!12895)

(assert (=> b!1515255 (= lt!656707 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656708 lt!656709 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100941 (_ BitVec 32)) SeekEntryResult!12895)

(assert (=> b!1515255 (= lt!656706 (seekEntryOrOpen!0 lt!656708 lt!656709 mask!2512))))

(declare-fun lt!656711 () SeekEntryResult!12895)

(assert (=> b!1515255 (= lt!656711 lt!656704)))

(assert (=> b!1515255 (= lt!656704 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48703 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515255 (= lt!656711 (seekEntryOrOpen!0 (select (arr!48703 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515256 () Bool)

(declare-fun res!1035228 () Bool)

(assert (=> b!1515256 (=> (not res!1035228) (not e!845610))))

(assert (=> b!1515256 (= res!1035228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129172 res!1035219) b!1515254))

(assert (= (and b!1515254 res!1035231) b!1515246))

(assert (= (and b!1515246 res!1035224) b!1515247))

(assert (= (and b!1515247 res!1035225) b!1515256))

(assert (= (and b!1515256 res!1035228) b!1515245))

(assert (= (and b!1515245 res!1035223) b!1515251))

(assert (= (and b!1515251 res!1035222) b!1515244))

(assert (= (and b!1515244 res!1035220) b!1515252))

(assert (= (and b!1515252 res!1035229) b!1515250))

(assert (= (and b!1515250 res!1035221) b!1515248))

(assert (= (and b!1515248 res!1035227) b!1515249))

(assert (= (and b!1515248 (not res!1035230)) b!1515255))

(assert (= (and b!1515255 (not res!1035226)) b!1515253))

(declare-fun m!1398369 () Bool)

(assert (=> b!1515256 m!1398369))

(declare-fun m!1398371 () Bool)

(assert (=> b!1515252 m!1398371))

(assert (=> b!1515252 m!1398371))

(declare-fun m!1398373 () Bool)

(assert (=> b!1515252 m!1398373))

(declare-fun m!1398375 () Bool)

(assert (=> b!1515245 m!1398375))

(declare-fun m!1398377 () Bool)

(assert (=> b!1515250 m!1398377))

(assert (=> b!1515250 m!1398377))

(declare-fun m!1398379 () Bool)

(assert (=> b!1515250 m!1398379))

(declare-fun m!1398381 () Bool)

(assert (=> b!1515250 m!1398381))

(declare-fun m!1398383 () Bool)

(assert (=> b!1515250 m!1398383))

(assert (=> b!1515249 m!1398371))

(assert (=> b!1515249 m!1398371))

(declare-fun m!1398385 () Bool)

(assert (=> b!1515249 m!1398385))

(assert (=> b!1515244 m!1398371))

(assert (=> b!1515244 m!1398371))

(declare-fun m!1398387 () Bool)

(assert (=> b!1515244 m!1398387))

(assert (=> b!1515244 m!1398387))

(assert (=> b!1515244 m!1398371))

(declare-fun m!1398389 () Bool)

(assert (=> b!1515244 m!1398389))

(declare-fun m!1398391 () Bool)

(assert (=> b!1515253 m!1398391))

(assert (=> b!1515255 m!1398371))

(declare-fun m!1398393 () Bool)

(assert (=> b!1515255 m!1398393))

(assert (=> b!1515255 m!1398371))

(declare-fun m!1398395 () Bool)

(assert (=> b!1515255 m!1398395))

(declare-fun m!1398397 () Bool)

(assert (=> b!1515255 m!1398397))

(assert (=> b!1515255 m!1398371))

(declare-fun m!1398399 () Bool)

(assert (=> b!1515255 m!1398399))

(declare-fun m!1398401 () Bool)

(assert (=> b!1515246 m!1398401))

(assert (=> b!1515246 m!1398401))

(declare-fun m!1398403 () Bool)

(assert (=> b!1515246 m!1398403))

(assert (=> b!1515247 m!1398371))

(assert (=> b!1515247 m!1398371))

(declare-fun m!1398405 () Bool)

(assert (=> b!1515247 m!1398405))

(declare-fun m!1398407 () Bool)

(assert (=> start!129172 m!1398407))

(declare-fun m!1398409 () Bool)

(assert (=> start!129172 m!1398409))

(assert (=> b!1515248 m!1398371))

(declare-fun m!1398411 () Bool)

(assert (=> b!1515248 m!1398411))

(declare-fun m!1398413 () Bool)

(assert (=> b!1515248 m!1398413))

(declare-fun m!1398415 () Bool)

(assert (=> b!1515248 m!1398415))

(push 1)

