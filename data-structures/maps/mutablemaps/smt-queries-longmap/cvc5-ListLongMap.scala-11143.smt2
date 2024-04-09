; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130252 () Bool)

(assert start!130252)

(declare-fun b!1528381 () Bool)

(declare-fun res!1046231 () Bool)

(declare-fun e!851871 () Bool)

(assert (=> b!1528381 (=> (not res!1046231) (not e!851871))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101529 0))(
  ( (array!101530 (arr!48985 (Array (_ BitVec 32) (_ BitVec 64))) (size!49536 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101529)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528381 (= res!1046231 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49536 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49536 a!2804))))))

(declare-fun b!1528382 () Bool)

(declare-fun e!851872 () Bool)

(assert (=> b!1528382 (= e!851872 true)))

(declare-datatypes ((SeekEntryResult!13171 0))(
  ( (MissingZero!13171 (index!55078 (_ BitVec 32))) (Found!13171 (index!55079 (_ BitVec 32))) (Intermediate!13171 (undefined!13983 Bool) (index!55080 (_ BitVec 32)) (x!136781 (_ BitVec 32))) (Undefined!13171) (MissingVacant!13171 (index!55081 (_ BitVec 32))) )
))
(declare-fun lt!661959 () SeekEntryResult!13171)

(declare-fun lt!661957 () SeekEntryResult!13171)

(assert (=> b!1528382 (= lt!661959 lt!661957)))

(declare-datatypes ((Unit!51082 0))(
  ( (Unit!51083) )
))
(declare-fun lt!661955 () Unit!51082)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101529 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51082)

(assert (=> b!1528382 (= lt!661955 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528383 () Bool)

(declare-fun e!851870 () Bool)

(declare-fun e!851876 () Bool)

(assert (=> b!1528383 (= e!851870 (not e!851876))))

(declare-fun res!1046234 () Bool)

(assert (=> b!1528383 (=> res!1046234 e!851876)))

(declare-fun lt!661958 () (_ BitVec 64))

(assert (=> b!1528383 (= res!1046234 (or (not (= (select (arr!48985 a!2804) j!70) lt!661958)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48985 a!2804) index!487) (select (arr!48985 a!2804) j!70)) (not (= (select (arr!48985 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!851874 () Bool)

(assert (=> b!1528383 e!851874))

(declare-fun res!1046229 () Bool)

(assert (=> b!1528383 (=> (not res!1046229) (not e!851874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101529 (_ BitVec 32)) Bool)

(assert (=> b!1528383 (= res!1046229 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!661954 () Unit!51082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101529 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51082)

(assert (=> b!1528383 (= lt!661954 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528384 () Bool)

(assert (=> b!1528384 (= e!851876 e!851872)))

(declare-fun res!1046238 () Bool)

(assert (=> b!1528384 (=> res!1046238 e!851872)))

(assert (=> b!1528384 (= res!1046238 (not (= lt!661957 (Found!13171 j!70))))))

(declare-fun lt!661956 () SeekEntryResult!13171)

(assert (=> b!1528384 (= lt!661956 lt!661959)))

(declare-fun lt!661963 () array!101529)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101529 (_ BitVec 32)) SeekEntryResult!13171)

(assert (=> b!1528384 (= lt!661959 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661958 lt!661963 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101529 (_ BitVec 32)) SeekEntryResult!13171)

(assert (=> b!1528384 (= lt!661956 (seekEntryOrOpen!0 lt!661958 lt!661963 mask!2512))))

(declare-fun lt!661961 () SeekEntryResult!13171)

(assert (=> b!1528384 (= lt!661961 lt!661957)))

(assert (=> b!1528384 (= lt!661957 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48985 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528384 (= lt!661961 (seekEntryOrOpen!0 (select (arr!48985 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1046227 () Bool)

(assert (=> start!130252 (=> (not res!1046227) (not e!851871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130252 (= res!1046227 (validMask!0 mask!2512))))

(assert (=> start!130252 e!851871))

(assert (=> start!130252 true))

(declare-fun array_inv!37930 (array!101529) Bool)

(assert (=> start!130252 (array_inv!37930 a!2804)))

(declare-fun b!1528385 () Bool)

(declare-fun res!1046226 () Bool)

(assert (=> b!1528385 (=> (not res!1046226) (not e!851871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528385 (= res!1046226 (validKeyInArray!0 (select (arr!48985 a!2804) i!961)))))

(declare-fun b!1528386 () Bool)

(declare-fun e!851873 () Bool)

(assert (=> b!1528386 (= e!851873 e!851870)))

(declare-fun res!1046237 () Bool)

(assert (=> b!1528386 (=> (not res!1046237) (not e!851870))))

(declare-fun lt!661960 () SeekEntryResult!13171)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101529 (_ BitVec 32)) SeekEntryResult!13171)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528386 (= res!1046237 (= lt!661960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661958 mask!2512) lt!661958 lt!661963 mask!2512)))))

(assert (=> b!1528386 (= lt!661958 (select (store (arr!48985 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528386 (= lt!661963 (array!101530 (store (arr!48985 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49536 a!2804)))))

(declare-fun b!1528387 () Bool)

(declare-fun res!1046232 () Bool)

(assert (=> b!1528387 (=> (not res!1046232) (not e!851871))))

(assert (=> b!1528387 (= res!1046232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528388 () Bool)

(declare-fun res!1046228 () Bool)

(assert (=> b!1528388 (=> (not res!1046228) (not e!851871))))

(assert (=> b!1528388 (= res!1046228 (validKeyInArray!0 (select (arr!48985 a!2804) j!70)))))

(declare-fun b!1528389 () Bool)

(assert (=> b!1528389 (= e!851871 e!851873)))

(declare-fun res!1046233 () Bool)

(assert (=> b!1528389 (=> (not res!1046233) (not e!851873))))

(declare-fun lt!661962 () SeekEntryResult!13171)

(assert (=> b!1528389 (= res!1046233 (= lt!661960 lt!661962))))

(assert (=> b!1528389 (= lt!661962 (Intermediate!13171 false resIndex!21 resX!21))))

(assert (=> b!1528389 (= lt!661960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48985 a!2804) j!70) mask!2512) (select (arr!48985 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528390 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101529 (_ BitVec 32)) SeekEntryResult!13171)

(assert (=> b!1528390 (= e!851874 (= (seekEntry!0 (select (arr!48985 a!2804) j!70) a!2804 mask!2512) (Found!13171 j!70)))))

(declare-fun b!1528391 () Bool)

(declare-fun res!1046235 () Bool)

(assert (=> b!1528391 (=> (not res!1046235) (not e!851873))))

(assert (=> b!1528391 (= res!1046235 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48985 a!2804) j!70) a!2804 mask!2512) lt!661962))))

(declare-fun b!1528392 () Bool)

(declare-fun res!1046236 () Bool)

(assert (=> b!1528392 (=> (not res!1046236) (not e!851871))))

(assert (=> b!1528392 (= res!1046236 (and (= (size!49536 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49536 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49536 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528393 () Bool)

(declare-fun res!1046230 () Bool)

(assert (=> b!1528393 (=> (not res!1046230) (not e!851871))))

(declare-datatypes ((List!35648 0))(
  ( (Nil!35645) (Cons!35644 (h!37081 (_ BitVec 64)) (t!50349 List!35648)) )
))
(declare-fun arrayNoDuplicates!0 (array!101529 (_ BitVec 32) List!35648) Bool)

(assert (=> b!1528393 (= res!1046230 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35645))))

(assert (= (and start!130252 res!1046227) b!1528392))

(assert (= (and b!1528392 res!1046236) b!1528385))

(assert (= (and b!1528385 res!1046226) b!1528388))

(assert (= (and b!1528388 res!1046228) b!1528387))

(assert (= (and b!1528387 res!1046232) b!1528393))

(assert (= (and b!1528393 res!1046230) b!1528381))

(assert (= (and b!1528381 res!1046231) b!1528389))

(assert (= (and b!1528389 res!1046233) b!1528391))

(assert (= (and b!1528391 res!1046235) b!1528386))

(assert (= (and b!1528386 res!1046237) b!1528383))

(assert (= (and b!1528383 res!1046229) b!1528390))

(assert (= (and b!1528383 (not res!1046234)) b!1528384))

(assert (= (and b!1528384 (not res!1046238)) b!1528382))

(declare-fun m!1411281 () Bool)

(assert (=> b!1528389 m!1411281))

(assert (=> b!1528389 m!1411281))

(declare-fun m!1411283 () Bool)

(assert (=> b!1528389 m!1411283))

(assert (=> b!1528389 m!1411283))

(assert (=> b!1528389 m!1411281))

(declare-fun m!1411285 () Bool)

(assert (=> b!1528389 m!1411285))

(declare-fun m!1411287 () Bool)

(assert (=> b!1528387 m!1411287))

(assert (=> b!1528391 m!1411281))

(assert (=> b!1528391 m!1411281))

(declare-fun m!1411289 () Bool)

(assert (=> b!1528391 m!1411289))

(assert (=> b!1528383 m!1411281))

(declare-fun m!1411291 () Bool)

(assert (=> b!1528383 m!1411291))

(declare-fun m!1411293 () Bool)

(assert (=> b!1528383 m!1411293))

(declare-fun m!1411295 () Bool)

(assert (=> b!1528383 m!1411295))

(declare-fun m!1411297 () Bool)

(assert (=> start!130252 m!1411297))

(declare-fun m!1411299 () Bool)

(assert (=> start!130252 m!1411299))

(assert (=> b!1528384 m!1411281))

(declare-fun m!1411301 () Bool)

(assert (=> b!1528384 m!1411301))

(assert (=> b!1528384 m!1411281))

(declare-fun m!1411303 () Bool)

(assert (=> b!1528384 m!1411303))

(declare-fun m!1411305 () Bool)

(assert (=> b!1528384 m!1411305))

(assert (=> b!1528384 m!1411281))

(declare-fun m!1411307 () Bool)

(assert (=> b!1528384 m!1411307))

(declare-fun m!1411309 () Bool)

(assert (=> b!1528393 m!1411309))

(declare-fun m!1411311 () Bool)

(assert (=> b!1528382 m!1411311))

(declare-fun m!1411313 () Bool)

(assert (=> b!1528385 m!1411313))

(assert (=> b!1528385 m!1411313))

(declare-fun m!1411315 () Bool)

(assert (=> b!1528385 m!1411315))

(assert (=> b!1528388 m!1411281))

(assert (=> b!1528388 m!1411281))

(declare-fun m!1411317 () Bool)

(assert (=> b!1528388 m!1411317))

(assert (=> b!1528390 m!1411281))

(assert (=> b!1528390 m!1411281))

(declare-fun m!1411319 () Bool)

(assert (=> b!1528390 m!1411319))

(declare-fun m!1411321 () Bool)

(assert (=> b!1528386 m!1411321))

(assert (=> b!1528386 m!1411321))

(declare-fun m!1411323 () Bool)

(assert (=> b!1528386 m!1411323))

(declare-fun m!1411325 () Bool)

(assert (=> b!1528386 m!1411325))

(declare-fun m!1411327 () Bool)

(assert (=> b!1528386 m!1411327))

(push 1)

