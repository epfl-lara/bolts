; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128986 () Bool)

(assert start!128986)

(declare-fun b!1511469 () Bool)

(declare-fun res!1031450 () Bool)

(declare-fun e!843857 () Bool)

(assert (=> b!1511469 (=> (not res!1031450) (not e!843857))))

(declare-datatypes ((array!100755 0))(
  ( (array!100756 (arr!48610 (Array (_ BitVec 32) (_ BitVec 64))) (size!49161 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100755)

(declare-datatypes ((List!35273 0))(
  ( (Nil!35270) (Cons!35269 (h!36682 (_ BitVec 64)) (t!49974 List!35273)) )
))
(declare-fun arrayNoDuplicates!0 (array!100755 (_ BitVec 32) List!35273) Bool)

(assert (=> b!1511469 (= res!1031450 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35270))))

(declare-fun b!1511470 () Bool)

(declare-fun res!1031448 () Bool)

(assert (=> b!1511470 (=> (not res!1031448) (not e!843857))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511470 (= res!1031448 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49161 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49161 a!2804))))))

(declare-fun b!1511471 () Bool)

(declare-fun res!1031449 () Bool)

(declare-fun e!843860 () Bool)

(assert (=> b!1511471 (=> (not res!1031449) (not e!843860))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12802 0))(
  ( (MissingZero!12802 (index!53602 (_ BitVec 32))) (Found!12802 (index!53603 (_ BitVec 32))) (Intermediate!12802 (undefined!13614 Bool) (index!53604 (_ BitVec 32)) (x!135349 (_ BitVec 32))) (Undefined!12802) (MissingVacant!12802 (index!53605 (_ BitVec 32))) )
))
(declare-fun lt!655422 () SeekEntryResult!12802)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100755 (_ BitVec 32)) SeekEntryResult!12802)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511471 (= res!1031449 (= lt!655422 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48610 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48610 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100756 (store (arr!48610 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49161 a!2804)) mask!2512)))))

(declare-fun b!1511472 () Bool)

(declare-fun res!1031454 () Bool)

(assert (=> b!1511472 (=> (not res!1031454) (not e!843857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511472 (= res!1031454 (validKeyInArray!0 (select (arr!48610 a!2804) j!70)))))

(declare-fun b!1511473 () Bool)

(declare-fun res!1031444 () Bool)

(assert (=> b!1511473 (=> (not res!1031444) (not e!843857))))

(assert (=> b!1511473 (= res!1031444 (and (= (size!49161 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49161 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49161 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1031453 () Bool)

(assert (=> start!128986 (=> (not res!1031453) (not e!843857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128986 (= res!1031453 (validMask!0 mask!2512))))

(assert (=> start!128986 e!843857))

(assert (=> start!128986 true))

(declare-fun array_inv!37555 (array!100755) Bool)

(assert (=> start!128986 (array_inv!37555 a!2804)))

(declare-fun b!1511474 () Bool)

(declare-fun res!1031451 () Bool)

(assert (=> b!1511474 (=> (not res!1031451) (not e!843857))))

(assert (=> b!1511474 (= res!1031451 (validKeyInArray!0 (select (arr!48610 a!2804) i!961)))))

(declare-fun b!1511475 () Bool)

(declare-fun res!1031446 () Bool)

(assert (=> b!1511475 (=> (not res!1031446) (not e!843857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100755 (_ BitVec 32)) Bool)

(assert (=> b!1511475 (= res!1031446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511476 () Bool)

(assert (=> b!1511476 (= e!843860 (not true))))

(declare-fun e!843858 () Bool)

(assert (=> b!1511476 e!843858))

(declare-fun res!1031452 () Bool)

(assert (=> b!1511476 (=> (not res!1031452) (not e!843858))))

(assert (=> b!1511476 (= res!1031452 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50428 0))(
  ( (Unit!50429) )
))
(declare-fun lt!655421 () Unit!50428)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50428)

(assert (=> b!1511476 (= lt!655421 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511477 () Bool)

(declare-fun res!1031447 () Bool)

(assert (=> b!1511477 (=> (not res!1031447) (not e!843860))))

(declare-fun lt!655423 () SeekEntryResult!12802)

(assert (=> b!1511477 (= res!1031447 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48610 a!2804) j!70) a!2804 mask!2512) lt!655423))))

(declare-fun b!1511478 () Bool)

(assert (=> b!1511478 (= e!843857 e!843860)))

(declare-fun res!1031445 () Bool)

(assert (=> b!1511478 (=> (not res!1031445) (not e!843860))))

(assert (=> b!1511478 (= res!1031445 (= lt!655422 lt!655423))))

(assert (=> b!1511478 (= lt!655423 (Intermediate!12802 false resIndex!21 resX!21))))

(assert (=> b!1511478 (= lt!655422 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48610 a!2804) j!70) mask!2512) (select (arr!48610 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511479 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100755 (_ BitVec 32)) SeekEntryResult!12802)

(assert (=> b!1511479 (= e!843858 (= (seekEntry!0 (select (arr!48610 a!2804) j!70) a!2804 mask!2512) (Found!12802 j!70)))))

(assert (= (and start!128986 res!1031453) b!1511473))

(assert (= (and b!1511473 res!1031444) b!1511474))

(assert (= (and b!1511474 res!1031451) b!1511472))

(assert (= (and b!1511472 res!1031454) b!1511475))

(assert (= (and b!1511475 res!1031446) b!1511469))

(assert (= (and b!1511469 res!1031450) b!1511470))

(assert (= (and b!1511470 res!1031448) b!1511478))

(assert (= (and b!1511478 res!1031445) b!1511477))

(assert (= (and b!1511477 res!1031447) b!1511471))

(assert (= (and b!1511471 res!1031449) b!1511476))

(assert (= (and b!1511476 res!1031452) b!1511479))

(declare-fun m!1394229 () Bool)

(assert (=> b!1511471 m!1394229))

(declare-fun m!1394231 () Bool)

(assert (=> b!1511471 m!1394231))

(assert (=> b!1511471 m!1394231))

(declare-fun m!1394233 () Bool)

(assert (=> b!1511471 m!1394233))

(assert (=> b!1511471 m!1394233))

(assert (=> b!1511471 m!1394231))

(declare-fun m!1394235 () Bool)

(assert (=> b!1511471 m!1394235))

(declare-fun m!1394237 () Bool)

(assert (=> b!1511469 m!1394237))

(declare-fun m!1394239 () Bool)

(assert (=> b!1511479 m!1394239))

(assert (=> b!1511479 m!1394239))

(declare-fun m!1394241 () Bool)

(assert (=> b!1511479 m!1394241))

(declare-fun m!1394243 () Bool)

(assert (=> b!1511476 m!1394243))

(declare-fun m!1394245 () Bool)

(assert (=> b!1511476 m!1394245))

(assert (=> b!1511478 m!1394239))

(assert (=> b!1511478 m!1394239))

(declare-fun m!1394247 () Bool)

(assert (=> b!1511478 m!1394247))

(assert (=> b!1511478 m!1394247))

(assert (=> b!1511478 m!1394239))

(declare-fun m!1394249 () Bool)

(assert (=> b!1511478 m!1394249))

(declare-fun m!1394251 () Bool)

(assert (=> start!128986 m!1394251))

(declare-fun m!1394253 () Bool)

(assert (=> start!128986 m!1394253))

(assert (=> b!1511477 m!1394239))

(assert (=> b!1511477 m!1394239))

(declare-fun m!1394255 () Bool)

(assert (=> b!1511477 m!1394255))

(declare-fun m!1394257 () Bool)

(assert (=> b!1511475 m!1394257))

(assert (=> b!1511472 m!1394239))

(assert (=> b!1511472 m!1394239))

(declare-fun m!1394259 () Bool)

(assert (=> b!1511472 m!1394259))

(declare-fun m!1394261 () Bool)

(assert (=> b!1511474 m!1394261))

(assert (=> b!1511474 m!1394261))

(declare-fun m!1394263 () Bool)

(assert (=> b!1511474 m!1394263))

(push 1)

