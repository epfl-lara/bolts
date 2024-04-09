; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130250 () Bool)

(assert start!130250)

(declare-fun b!1528342 () Bool)

(declare-fun e!851855 () Bool)

(declare-fun e!851854 () Bool)

(assert (=> b!1528342 (= e!851855 e!851854)))

(declare-fun res!1046192 () Bool)

(assert (=> b!1528342 (=> res!1046192 e!851854)))

(declare-datatypes ((SeekEntryResult!13170 0))(
  ( (MissingZero!13170 (index!55074 (_ BitVec 32))) (Found!13170 (index!55075 (_ BitVec 32))) (Intermediate!13170 (undefined!13982 Bool) (index!55076 (_ BitVec 32)) (x!136772 (_ BitVec 32))) (Undefined!13170) (MissingVacant!13170 (index!55077 (_ BitVec 32))) )
))
(declare-fun lt!661932 () SeekEntryResult!13170)

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1528342 (= res!1046192 (not (= lt!661932 (Found!13170 j!70))))))

(declare-fun lt!661929 () SeekEntryResult!13170)

(declare-fun lt!661924 () SeekEntryResult!13170)

(assert (=> b!1528342 (= lt!661929 lt!661924)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!661933 () (_ BitVec 64))

(declare-datatypes ((array!101527 0))(
  ( (array!101528 (arr!48984 (Array (_ BitVec 32) (_ BitVec 64))) (size!49535 (_ BitVec 32))) )
))
(declare-fun lt!661930 () array!101527)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101527 (_ BitVec 32)) SeekEntryResult!13170)

(assert (=> b!1528342 (= lt!661924 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661933 lt!661930 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101527 (_ BitVec 32)) SeekEntryResult!13170)

(assert (=> b!1528342 (= lt!661929 (seekEntryOrOpen!0 lt!661933 lt!661930 mask!2512))))

(declare-fun lt!661925 () SeekEntryResult!13170)

(assert (=> b!1528342 (= lt!661925 lt!661932)))

(declare-fun a!2804 () array!101527)

(assert (=> b!1528342 (= lt!661932 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48984 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528342 (= lt!661925 (seekEntryOrOpen!0 (select (arr!48984 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528343 () Bool)

(declare-fun res!1046187 () Bool)

(declare-fun e!851852 () Bool)

(assert (=> b!1528343 (=> (not res!1046187) (not e!851852))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528343 (= res!1046187 (validKeyInArray!0 (select (arr!48984 a!2804) i!961)))))

(declare-fun b!1528344 () Bool)

(declare-fun res!1046195 () Bool)

(assert (=> b!1528344 (=> (not res!1046195) (not e!851852))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528344 (= res!1046195 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49535 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49535 a!2804))))))

(declare-fun b!1528345 () Bool)

(declare-fun e!851849 () Bool)

(assert (=> b!1528345 (= e!851849 (not e!851855))))

(declare-fun res!1046196 () Bool)

(assert (=> b!1528345 (=> res!1046196 e!851855)))

(assert (=> b!1528345 (= res!1046196 (or (not (= (select (arr!48984 a!2804) j!70) lt!661933)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48984 a!2804) index!487) (select (arr!48984 a!2804) j!70)) (not (= (select (arr!48984 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!851850 () Bool)

(assert (=> b!1528345 e!851850))

(declare-fun res!1046198 () Bool)

(assert (=> b!1528345 (=> (not res!1046198) (not e!851850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101527 (_ BitVec 32)) Bool)

(assert (=> b!1528345 (= res!1046198 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51080 0))(
  ( (Unit!51081) )
))
(declare-fun lt!661926 () Unit!51080)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101527 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51080)

(assert (=> b!1528345 (= lt!661926 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528346 () Bool)

(declare-fun res!1046193 () Bool)

(assert (=> b!1528346 (=> (not res!1046193) (not e!851852))))

(assert (=> b!1528346 (= res!1046193 (and (= (size!49535 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49535 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49535 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528347 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101527 (_ BitVec 32)) SeekEntryResult!13170)

(assert (=> b!1528347 (= e!851850 (= (seekEntry!0 (select (arr!48984 a!2804) j!70) a!2804 mask!2512) (Found!13170 j!70)))))

(declare-fun res!1046199 () Bool)

(assert (=> start!130250 (=> (not res!1046199) (not e!851852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130250 (= res!1046199 (validMask!0 mask!2512))))

(assert (=> start!130250 e!851852))

(assert (=> start!130250 true))

(declare-fun array_inv!37929 (array!101527) Bool)

(assert (=> start!130250 (array_inv!37929 a!2804)))

(declare-fun b!1528348 () Bool)

(declare-fun res!1046188 () Bool)

(assert (=> b!1528348 (=> (not res!1046188) (not e!851852))))

(declare-datatypes ((List!35647 0))(
  ( (Nil!35644) (Cons!35643 (h!37080 (_ BitVec 64)) (t!50348 List!35647)) )
))
(declare-fun arrayNoDuplicates!0 (array!101527 (_ BitVec 32) List!35647) Bool)

(assert (=> b!1528348 (= res!1046188 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35644))))

(declare-fun b!1528349 () Bool)

(declare-fun res!1046197 () Bool)

(assert (=> b!1528349 (=> (not res!1046197) (not e!851852))))

(assert (=> b!1528349 (= res!1046197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528350 () Bool)

(assert (=> b!1528350 (= e!851854 true)))

(assert (=> b!1528350 (= lt!661924 lt!661932)))

(declare-fun lt!661927 () Unit!51080)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101527 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51080)

(assert (=> b!1528350 (= lt!661927 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528351 () Bool)

(declare-fun res!1046190 () Bool)

(declare-fun e!851851 () Bool)

(assert (=> b!1528351 (=> (not res!1046190) (not e!851851))))

(declare-fun lt!661931 () SeekEntryResult!13170)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101527 (_ BitVec 32)) SeekEntryResult!13170)

(assert (=> b!1528351 (= res!1046190 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48984 a!2804) j!70) a!2804 mask!2512) lt!661931))))

(declare-fun b!1528352 () Bool)

(assert (=> b!1528352 (= e!851851 e!851849)))

(declare-fun res!1046189 () Bool)

(assert (=> b!1528352 (=> (not res!1046189) (not e!851849))))

(declare-fun lt!661928 () SeekEntryResult!13170)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528352 (= res!1046189 (= lt!661928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661933 mask!2512) lt!661933 lt!661930 mask!2512)))))

(assert (=> b!1528352 (= lt!661933 (select (store (arr!48984 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528352 (= lt!661930 (array!101528 (store (arr!48984 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49535 a!2804)))))

(declare-fun b!1528353 () Bool)

(declare-fun res!1046194 () Bool)

(assert (=> b!1528353 (=> (not res!1046194) (not e!851852))))

(assert (=> b!1528353 (= res!1046194 (validKeyInArray!0 (select (arr!48984 a!2804) j!70)))))

(declare-fun b!1528354 () Bool)

(assert (=> b!1528354 (= e!851852 e!851851)))

(declare-fun res!1046191 () Bool)

(assert (=> b!1528354 (=> (not res!1046191) (not e!851851))))

(assert (=> b!1528354 (= res!1046191 (= lt!661928 lt!661931))))

(assert (=> b!1528354 (= lt!661931 (Intermediate!13170 false resIndex!21 resX!21))))

(assert (=> b!1528354 (= lt!661928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48984 a!2804) j!70) mask!2512) (select (arr!48984 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130250 res!1046199) b!1528346))

(assert (= (and b!1528346 res!1046193) b!1528343))

(assert (= (and b!1528343 res!1046187) b!1528353))

(assert (= (and b!1528353 res!1046194) b!1528349))

(assert (= (and b!1528349 res!1046197) b!1528348))

(assert (= (and b!1528348 res!1046188) b!1528344))

(assert (= (and b!1528344 res!1046195) b!1528354))

(assert (= (and b!1528354 res!1046191) b!1528351))

(assert (= (and b!1528351 res!1046190) b!1528352))

(assert (= (and b!1528352 res!1046189) b!1528345))

(assert (= (and b!1528345 res!1046198) b!1528347))

(assert (= (and b!1528345 (not res!1046196)) b!1528342))

(assert (= (and b!1528342 (not res!1046192)) b!1528350))

(declare-fun m!1411233 () Bool)

(assert (=> b!1528349 m!1411233))

(declare-fun m!1411235 () Bool)

(assert (=> b!1528348 m!1411235))

(declare-fun m!1411237 () Bool)

(assert (=> b!1528351 m!1411237))

(assert (=> b!1528351 m!1411237))

(declare-fun m!1411239 () Bool)

(assert (=> b!1528351 m!1411239))

(assert (=> b!1528353 m!1411237))

(assert (=> b!1528353 m!1411237))

(declare-fun m!1411241 () Bool)

(assert (=> b!1528353 m!1411241))

(assert (=> b!1528345 m!1411237))

(declare-fun m!1411243 () Bool)

(assert (=> b!1528345 m!1411243))

(declare-fun m!1411245 () Bool)

(assert (=> b!1528345 m!1411245))

(declare-fun m!1411247 () Bool)

(assert (=> b!1528345 m!1411247))

(assert (=> b!1528354 m!1411237))

(assert (=> b!1528354 m!1411237))

(declare-fun m!1411249 () Bool)

(assert (=> b!1528354 m!1411249))

(assert (=> b!1528354 m!1411249))

(assert (=> b!1528354 m!1411237))

(declare-fun m!1411251 () Bool)

(assert (=> b!1528354 m!1411251))

(declare-fun m!1411253 () Bool)

(assert (=> b!1528352 m!1411253))

(assert (=> b!1528352 m!1411253))

(declare-fun m!1411255 () Bool)

(assert (=> b!1528352 m!1411255))

(declare-fun m!1411257 () Bool)

(assert (=> b!1528352 m!1411257))

(declare-fun m!1411259 () Bool)

(assert (=> b!1528352 m!1411259))

(declare-fun m!1411261 () Bool)

(assert (=> start!130250 m!1411261))

(declare-fun m!1411263 () Bool)

(assert (=> start!130250 m!1411263))

(assert (=> b!1528342 m!1411237))

(declare-fun m!1411265 () Bool)

(assert (=> b!1528342 m!1411265))

(assert (=> b!1528342 m!1411237))

(declare-fun m!1411267 () Bool)

(assert (=> b!1528342 m!1411267))

(declare-fun m!1411269 () Bool)

(assert (=> b!1528342 m!1411269))

(assert (=> b!1528342 m!1411237))

(declare-fun m!1411271 () Bool)

(assert (=> b!1528342 m!1411271))

(assert (=> b!1528347 m!1411237))

(assert (=> b!1528347 m!1411237))

(declare-fun m!1411273 () Bool)

(assert (=> b!1528347 m!1411273))

(declare-fun m!1411275 () Bool)

(assert (=> b!1528343 m!1411275))

(assert (=> b!1528343 m!1411275))

(declare-fun m!1411277 () Bool)

(assert (=> b!1528343 m!1411277))

(declare-fun m!1411279 () Bool)

(assert (=> b!1528350 m!1411279))

(push 1)

