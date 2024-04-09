; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130148 () Bool)

(assert start!130148)

(declare-fun b!1527195 () Bool)

(declare-fun res!1045379 () Bool)

(declare-fun e!851230 () Bool)

(assert (=> b!1527195 (=> (not res!1045379) (not e!851230))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101488 0))(
  ( (array!101489 (arr!48966 (Array (_ BitVec 32) (_ BitVec 64))) (size!49517 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101488)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1527195 (= res!1045379 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49517 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49517 a!2804))))))

(declare-fun b!1527196 () Bool)

(declare-fun e!851227 () Bool)

(declare-fun e!851225 () Bool)

(assert (=> b!1527196 (= e!851227 e!851225)))

(declare-fun res!1045369 () Bool)

(assert (=> b!1527196 (=> res!1045369 e!851225)))

(declare-fun lt!661314 () (_ BitVec 64))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1527196 (= res!1045369 (or (not (= (select (arr!48966 a!2804) j!70) lt!661314)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48966 a!2804) index!487) (select (arr!48966 a!2804) j!70)) (not (= (select (arr!48966 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1527197 () Bool)

(declare-fun e!851229 () Bool)

(assert (=> b!1527197 (= e!851225 e!851229)))

(declare-fun res!1045370 () Bool)

(assert (=> b!1527197 (=> (not res!1045370) (not e!851229))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13152 0))(
  ( (MissingZero!13152 (index!55002 (_ BitVec 32))) (Found!13152 (index!55003 (_ BitVec 32))) (Intermediate!13152 (undefined!13964 Bool) (index!55004 (_ BitVec 32)) (x!136697 (_ BitVec 32))) (Undefined!13152) (MissingVacant!13152 (index!55005 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101488 (_ BitVec 32)) SeekEntryResult!13152)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101488 (_ BitVec 32)) SeekEntryResult!13152)

(assert (=> b!1527197 (= res!1045370 (= (seekEntryOrOpen!0 (select (arr!48966 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48966 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527198 () Bool)

(declare-fun res!1045377 () Bool)

(assert (=> b!1527198 (=> (not res!1045377) (not e!851230))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527198 (= res!1045377 (validKeyInArray!0 (select (arr!48966 a!2804) i!961)))))

(declare-fun b!1527199 () Bool)

(declare-fun res!1045374 () Bool)

(assert (=> b!1527199 (=> (not res!1045374) (not e!851230))))

(declare-datatypes ((List!35629 0))(
  ( (Nil!35626) (Cons!35625 (h!37059 (_ BitVec 64)) (t!50330 List!35629)) )
))
(declare-fun arrayNoDuplicates!0 (array!101488 (_ BitVec 32) List!35629) Bool)

(assert (=> b!1527199 (= res!1045374 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35626))))

(declare-fun b!1527201 () Bool)

(declare-fun res!1045368 () Bool)

(assert (=> b!1527201 (=> (not res!1045368) (not e!851230))))

(assert (=> b!1527201 (= res!1045368 (validKeyInArray!0 (select (arr!48966 a!2804) j!70)))))

(declare-fun lt!661312 () array!101488)

(declare-fun b!1527202 () Bool)

(assert (=> b!1527202 (= e!851229 (= (seekEntryOrOpen!0 lt!661314 lt!661312 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661314 lt!661312 mask!2512)))))

(declare-fun b!1527203 () Bool)

(declare-fun res!1045376 () Bool)

(assert (=> b!1527203 (=> (not res!1045376) (not e!851230))))

(assert (=> b!1527203 (= res!1045376 (and (= (size!49517 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49517 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49517 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527204 () Bool)

(declare-fun e!851226 () Bool)

(assert (=> b!1527204 (= e!851226 (not true))))

(assert (=> b!1527204 e!851227))

(declare-fun res!1045380 () Bool)

(assert (=> b!1527204 (=> (not res!1045380) (not e!851227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101488 (_ BitVec 32)) Bool)

(assert (=> b!1527204 (= res!1045380 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51044 0))(
  ( (Unit!51045) )
))
(declare-fun lt!661315 () Unit!51044)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51044)

(assert (=> b!1527204 (= lt!661315 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1045373 () Bool)

(assert (=> start!130148 (=> (not res!1045373) (not e!851230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130148 (= res!1045373 (validMask!0 mask!2512))))

(assert (=> start!130148 e!851230))

(assert (=> start!130148 true))

(declare-fun array_inv!37911 (array!101488) Bool)

(assert (=> start!130148 (array_inv!37911 a!2804)))

(declare-fun b!1527200 () Bool)

(declare-fun res!1045367 () Bool)

(assert (=> b!1527200 (=> (not res!1045367) (not e!851230))))

(assert (=> b!1527200 (= res!1045367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1527205 () Bool)

(declare-fun e!851231 () Bool)

(assert (=> b!1527205 (= e!851231 e!851226)))

(declare-fun res!1045375 () Bool)

(assert (=> b!1527205 (=> (not res!1045375) (not e!851226))))

(declare-fun lt!661311 () SeekEntryResult!13152)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101488 (_ BitVec 32)) SeekEntryResult!13152)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527205 (= res!1045375 (= lt!661311 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661314 mask!2512) lt!661314 lt!661312 mask!2512)))))

(assert (=> b!1527205 (= lt!661314 (select (store (arr!48966 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527205 (= lt!661312 (array!101489 (store (arr!48966 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49517 a!2804)))))

(declare-fun b!1527206 () Bool)

(declare-fun res!1045378 () Bool)

(assert (=> b!1527206 (=> (not res!1045378) (not e!851231))))

(declare-fun lt!661313 () SeekEntryResult!13152)

(assert (=> b!1527206 (= res!1045378 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48966 a!2804) j!70) a!2804 mask!2512) lt!661313))))

(declare-fun b!1527207 () Bool)

(assert (=> b!1527207 (= e!851230 e!851231)))

(declare-fun res!1045372 () Bool)

(assert (=> b!1527207 (=> (not res!1045372) (not e!851231))))

(assert (=> b!1527207 (= res!1045372 (= lt!661311 lt!661313))))

(assert (=> b!1527207 (= lt!661313 (Intermediate!13152 false resIndex!21 resX!21))))

(assert (=> b!1527207 (= lt!661311 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48966 a!2804) j!70) mask!2512) (select (arr!48966 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527208 () Bool)

(declare-fun res!1045371 () Bool)

(assert (=> b!1527208 (=> (not res!1045371) (not e!851227))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101488 (_ BitVec 32)) SeekEntryResult!13152)

(assert (=> b!1527208 (= res!1045371 (= (seekEntry!0 (select (arr!48966 a!2804) j!70) a!2804 mask!2512) (Found!13152 j!70)))))

(assert (= (and start!130148 res!1045373) b!1527203))

(assert (= (and b!1527203 res!1045376) b!1527198))

(assert (= (and b!1527198 res!1045377) b!1527201))

(assert (= (and b!1527201 res!1045368) b!1527200))

(assert (= (and b!1527200 res!1045367) b!1527199))

(assert (= (and b!1527199 res!1045374) b!1527195))

(assert (= (and b!1527195 res!1045379) b!1527207))

(assert (= (and b!1527207 res!1045372) b!1527206))

(assert (= (and b!1527206 res!1045378) b!1527205))

(assert (= (and b!1527205 res!1045375) b!1527204))

(assert (= (and b!1527204 res!1045380) b!1527208))

(assert (= (and b!1527208 res!1045371) b!1527196))

(assert (= (and b!1527196 (not res!1045369)) b!1527197))

(assert (= (and b!1527197 res!1045370) b!1527202))

(declare-fun m!1410131 () Bool)

(assert (=> b!1527200 m!1410131))

(declare-fun m!1410133 () Bool)

(assert (=> b!1527197 m!1410133))

(assert (=> b!1527197 m!1410133))

(declare-fun m!1410135 () Bool)

(assert (=> b!1527197 m!1410135))

(assert (=> b!1527197 m!1410133))

(declare-fun m!1410137 () Bool)

(assert (=> b!1527197 m!1410137))

(declare-fun m!1410139 () Bool)

(assert (=> b!1527204 m!1410139))

(declare-fun m!1410141 () Bool)

(assert (=> b!1527204 m!1410141))

(assert (=> b!1527196 m!1410133))

(declare-fun m!1410143 () Bool)

(assert (=> b!1527196 m!1410143))

(declare-fun m!1410145 () Bool)

(assert (=> b!1527202 m!1410145))

(declare-fun m!1410147 () Bool)

(assert (=> b!1527202 m!1410147))

(declare-fun m!1410149 () Bool)

(assert (=> b!1527205 m!1410149))

(assert (=> b!1527205 m!1410149))

(declare-fun m!1410151 () Bool)

(assert (=> b!1527205 m!1410151))

(declare-fun m!1410153 () Bool)

(assert (=> b!1527205 m!1410153))

(declare-fun m!1410155 () Bool)

(assert (=> b!1527205 m!1410155))

(declare-fun m!1410157 () Bool)

(assert (=> b!1527199 m!1410157))

(assert (=> b!1527206 m!1410133))

(assert (=> b!1527206 m!1410133))

(declare-fun m!1410159 () Bool)

(assert (=> b!1527206 m!1410159))

(assert (=> b!1527201 m!1410133))

(assert (=> b!1527201 m!1410133))

(declare-fun m!1410161 () Bool)

(assert (=> b!1527201 m!1410161))

(assert (=> b!1527208 m!1410133))

(assert (=> b!1527208 m!1410133))

(declare-fun m!1410163 () Bool)

(assert (=> b!1527208 m!1410163))

(assert (=> b!1527207 m!1410133))

(assert (=> b!1527207 m!1410133))

(declare-fun m!1410165 () Bool)

(assert (=> b!1527207 m!1410165))

(assert (=> b!1527207 m!1410165))

(assert (=> b!1527207 m!1410133))

(declare-fun m!1410167 () Bool)

(assert (=> b!1527207 m!1410167))

(declare-fun m!1410169 () Bool)

(assert (=> start!130148 m!1410169))

(declare-fun m!1410171 () Bool)

(assert (=> start!130148 m!1410171))

(declare-fun m!1410173 () Bool)

(assert (=> b!1527198 m!1410173))

(assert (=> b!1527198 m!1410173))

(declare-fun m!1410175 () Bool)

(assert (=> b!1527198 m!1410175))

(push 1)

