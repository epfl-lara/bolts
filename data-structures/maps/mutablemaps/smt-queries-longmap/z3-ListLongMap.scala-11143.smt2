; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130254 () Bool)

(assert start!130254)

(declare-fun b!1528420 () Bool)

(declare-fun res!1046271 () Bool)

(declare-fun e!851893 () Bool)

(assert (=> b!1528420 (=> (not res!1046271) (not e!851893))))

(declare-datatypes ((array!101531 0))(
  ( (array!101532 (arr!48986 (Array (_ BitVec 32) (_ BitVec 64))) (size!49537 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101531)

(declare-datatypes ((List!35649 0))(
  ( (Nil!35646) (Cons!35645 (h!37082 (_ BitVec 64)) (t!50350 List!35649)) )
))
(declare-fun arrayNoDuplicates!0 (array!101531 (_ BitVec 32) List!35649) Bool)

(assert (=> b!1528420 (= res!1046271 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35646))))

(declare-fun b!1528422 () Bool)

(declare-fun res!1046272 () Bool)

(assert (=> b!1528422 (=> (not res!1046272) (not e!851893))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528422 (= res!1046272 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49537 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49537 a!2804))))))

(declare-fun b!1528423 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun e!851892 () Bool)

(declare-datatypes ((SeekEntryResult!13172 0))(
  ( (MissingZero!13172 (index!55082 (_ BitVec 32))) (Found!13172 (index!55083 (_ BitVec 32))) (Intermediate!13172 (undefined!13984 Bool) (index!55084 (_ BitVec 32)) (x!136782 (_ BitVec 32))) (Undefined!13172) (MissingVacant!13172 (index!55085 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101531 (_ BitVec 32)) SeekEntryResult!13172)

(assert (=> b!1528423 (= e!851892 (= (seekEntry!0 (select (arr!48986 a!2804) j!70) a!2804 mask!2512) (Found!13172 j!70)))))

(declare-fun b!1528424 () Bool)

(declare-fun e!851894 () Bool)

(assert (=> b!1528424 (= e!851893 e!851894)))

(declare-fun res!1046276 () Bool)

(assert (=> b!1528424 (=> (not res!1046276) (not e!851894))))

(declare-fun lt!661990 () SeekEntryResult!13172)

(declare-fun lt!661993 () SeekEntryResult!13172)

(assert (=> b!1528424 (= res!1046276 (= lt!661990 lt!661993))))

(assert (=> b!1528424 (= lt!661993 (Intermediate!13172 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101531 (_ BitVec 32)) SeekEntryResult!13172)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528424 (= lt!661990 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48986 a!2804) j!70) mask!2512) (select (arr!48986 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528425 () Bool)

(declare-fun res!1046274 () Bool)

(assert (=> b!1528425 (=> (not res!1046274) (not e!851894))))

(assert (=> b!1528425 (= res!1046274 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48986 a!2804) j!70) a!2804 mask!2512) lt!661993))))

(declare-fun b!1528426 () Bool)

(declare-fun e!851896 () Bool)

(assert (=> b!1528426 (= e!851894 e!851896)))

(declare-fun res!1046275 () Bool)

(assert (=> b!1528426 (=> (not res!1046275) (not e!851896))))

(declare-fun lt!661991 () (_ BitVec 64))

(declare-fun lt!661985 () array!101531)

(assert (=> b!1528426 (= res!1046275 (= lt!661990 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661991 mask!2512) lt!661991 lt!661985 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1528426 (= lt!661991 (select (store (arr!48986 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528426 (= lt!661985 (array!101532 (store (arr!48986 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49537 a!2804)))))

(declare-fun b!1528427 () Bool)

(declare-fun res!1046267 () Bool)

(assert (=> b!1528427 (=> (not res!1046267) (not e!851893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101531 (_ BitVec 32)) Bool)

(assert (=> b!1528427 (= res!1046267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528428 () Bool)

(declare-fun res!1046266 () Bool)

(assert (=> b!1528428 (=> (not res!1046266) (not e!851893))))

(assert (=> b!1528428 (= res!1046266 (and (= (size!49537 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49537 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49537 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528429 () Bool)

(declare-fun res!1046270 () Bool)

(assert (=> b!1528429 (=> (not res!1046270) (not e!851893))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528429 (= res!1046270 (validKeyInArray!0 (select (arr!48986 a!2804) i!961)))))

(declare-fun b!1528430 () Bool)

(declare-fun e!851895 () Bool)

(declare-fun e!851897 () Bool)

(assert (=> b!1528430 (= e!851895 e!851897)))

(declare-fun res!1046265 () Bool)

(assert (=> b!1528430 (=> res!1046265 e!851897)))

(declare-fun lt!661987 () SeekEntryResult!13172)

(assert (=> b!1528430 (= res!1046265 (not (= lt!661987 (Found!13172 j!70))))))

(declare-fun lt!661984 () SeekEntryResult!13172)

(declare-fun lt!661988 () SeekEntryResult!13172)

(assert (=> b!1528430 (= lt!661984 lt!661988)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101531 (_ BitVec 32)) SeekEntryResult!13172)

(assert (=> b!1528430 (= lt!661988 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661991 lt!661985 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101531 (_ BitVec 32)) SeekEntryResult!13172)

(assert (=> b!1528430 (= lt!661984 (seekEntryOrOpen!0 lt!661991 lt!661985 mask!2512))))

(declare-fun lt!661992 () SeekEntryResult!13172)

(assert (=> b!1528430 (= lt!661992 lt!661987)))

(assert (=> b!1528430 (= lt!661987 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48986 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528430 (= lt!661992 (seekEntryOrOpen!0 (select (arr!48986 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528431 () Bool)

(assert (=> b!1528431 (= e!851897 true)))

(assert (=> b!1528431 (= lt!661988 lt!661987)))

(declare-datatypes ((Unit!51084 0))(
  ( (Unit!51085) )
))
(declare-fun lt!661986 () Unit!51084)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101531 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51084)

(assert (=> b!1528431 (= lt!661986 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528432 () Bool)

(assert (=> b!1528432 (= e!851896 (not e!851895))))

(declare-fun res!1046277 () Bool)

(assert (=> b!1528432 (=> res!1046277 e!851895)))

(assert (=> b!1528432 (= res!1046277 (or (not (= (select (arr!48986 a!2804) j!70) lt!661991)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48986 a!2804) index!487) (select (arr!48986 a!2804) j!70)) (not (= (select (arr!48986 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1528432 e!851892))

(declare-fun res!1046273 () Bool)

(assert (=> b!1528432 (=> (not res!1046273) (not e!851892))))

(assert (=> b!1528432 (= res!1046273 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!661989 () Unit!51084)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101531 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51084)

(assert (=> b!1528432 (= lt!661989 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1046269 () Bool)

(assert (=> start!130254 (=> (not res!1046269) (not e!851893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130254 (= res!1046269 (validMask!0 mask!2512))))

(assert (=> start!130254 e!851893))

(assert (=> start!130254 true))

(declare-fun array_inv!37931 (array!101531) Bool)

(assert (=> start!130254 (array_inv!37931 a!2804)))

(declare-fun b!1528421 () Bool)

(declare-fun res!1046268 () Bool)

(assert (=> b!1528421 (=> (not res!1046268) (not e!851893))))

(assert (=> b!1528421 (= res!1046268 (validKeyInArray!0 (select (arr!48986 a!2804) j!70)))))

(assert (= (and start!130254 res!1046269) b!1528428))

(assert (= (and b!1528428 res!1046266) b!1528429))

(assert (= (and b!1528429 res!1046270) b!1528421))

(assert (= (and b!1528421 res!1046268) b!1528427))

(assert (= (and b!1528427 res!1046267) b!1528420))

(assert (= (and b!1528420 res!1046271) b!1528422))

(assert (= (and b!1528422 res!1046272) b!1528424))

(assert (= (and b!1528424 res!1046276) b!1528425))

(assert (= (and b!1528425 res!1046274) b!1528426))

(assert (= (and b!1528426 res!1046275) b!1528432))

(assert (= (and b!1528432 res!1046273) b!1528423))

(assert (= (and b!1528432 (not res!1046277)) b!1528430))

(assert (= (and b!1528430 (not res!1046265)) b!1528431))

(declare-fun m!1411329 () Bool)

(assert (=> b!1528429 m!1411329))

(assert (=> b!1528429 m!1411329))

(declare-fun m!1411331 () Bool)

(assert (=> b!1528429 m!1411331))

(declare-fun m!1411333 () Bool)

(assert (=> b!1528424 m!1411333))

(assert (=> b!1528424 m!1411333))

(declare-fun m!1411335 () Bool)

(assert (=> b!1528424 m!1411335))

(assert (=> b!1528424 m!1411335))

(assert (=> b!1528424 m!1411333))

(declare-fun m!1411337 () Bool)

(assert (=> b!1528424 m!1411337))

(declare-fun m!1411339 () Bool)

(assert (=> b!1528427 m!1411339))

(declare-fun m!1411341 () Bool)

(assert (=> start!130254 m!1411341))

(declare-fun m!1411343 () Bool)

(assert (=> start!130254 m!1411343))

(declare-fun m!1411345 () Bool)

(assert (=> b!1528420 m!1411345))

(declare-fun m!1411347 () Bool)

(assert (=> b!1528426 m!1411347))

(assert (=> b!1528426 m!1411347))

(declare-fun m!1411349 () Bool)

(assert (=> b!1528426 m!1411349))

(declare-fun m!1411351 () Bool)

(assert (=> b!1528426 m!1411351))

(declare-fun m!1411353 () Bool)

(assert (=> b!1528426 m!1411353))

(declare-fun m!1411355 () Bool)

(assert (=> b!1528431 m!1411355))

(assert (=> b!1528432 m!1411333))

(declare-fun m!1411357 () Bool)

(assert (=> b!1528432 m!1411357))

(declare-fun m!1411359 () Bool)

(assert (=> b!1528432 m!1411359))

(declare-fun m!1411361 () Bool)

(assert (=> b!1528432 m!1411361))

(assert (=> b!1528421 m!1411333))

(assert (=> b!1528421 m!1411333))

(declare-fun m!1411363 () Bool)

(assert (=> b!1528421 m!1411363))

(assert (=> b!1528425 m!1411333))

(assert (=> b!1528425 m!1411333))

(declare-fun m!1411365 () Bool)

(assert (=> b!1528425 m!1411365))

(assert (=> b!1528430 m!1411333))

(declare-fun m!1411367 () Bool)

(assert (=> b!1528430 m!1411367))

(assert (=> b!1528430 m!1411333))

(declare-fun m!1411369 () Bool)

(assert (=> b!1528430 m!1411369))

(declare-fun m!1411371 () Bool)

(assert (=> b!1528430 m!1411371))

(assert (=> b!1528430 m!1411333))

(declare-fun m!1411373 () Bool)

(assert (=> b!1528430 m!1411373))

(assert (=> b!1528423 m!1411333))

(assert (=> b!1528423 m!1411333))

(declare-fun m!1411375 () Bool)

(assert (=> b!1528423 m!1411375))

(check-sat (not b!1528420) (not b!1528430) (not b!1528429) (not b!1528431) (not b!1528426) (not b!1528424) (not b!1528432) (not b!1528423) (not b!1528427) (not b!1528421) (not b!1528425) (not start!130254))
(check-sat)
