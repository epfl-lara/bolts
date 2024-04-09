; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130562 () Bool)

(assert start!130562)

(declare-fun b!1531662 () Bool)

(declare-fun e!853461 () Bool)

(assert (=> b!1531662 (= e!853461 true)))

(declare-fun lt!663305 () (_ BitVec 64))

(declare-datatypes ((array!101668 0))(
  ( (array!101669 (arr!49050 (Array (_ BitVec 32) (_ BitVec 64))) (size!49601 (_ BitVec 32))) )
))
(declare-fun lt!663302 () array!101668)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun a!2804 () array!101668)

(declare-datatypes ((SeekEntryResult!13236 0))(
  ( (MissingZero!13236 (index!55338 (_ BitVec 32))) (Found!13236 (index!55339 (_ BitVec 32))) (Intermediate!13236 (undefined!14048 Bool) (index!55340 (_ BitVec 32)) (x!137041 (_ BitVec 32))) (Undefined!13236) (MissingVacant!13236 (index!55341 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101668 (_ BitVec 32)) SeekEntryResult!13236)

(assert (=> b!1531662 (= (seekEntryOrOpen!0 (select (arr!49050 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663305 lt!663302 mask!2512))))

(declare-datatypes ((Unit!51212 0))(
  ( (Unit!51213) )
))
(declare-fun lt!663306 () Unit!51212)

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lt!663304 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101668 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51212)

(assert (=> b!1531662 (= lt!663306 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663304 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1531663 () Bool)

(declare-fun res!1048940 () Bool)

(declare-fun e!853458 () Bool)

(assert (=> b!1531663 (=> (not res!1048940) (not e!853458))))

(assert (=> b!1531663 (= res!1048940 (and (= (size!49601 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49601 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49601 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531665 () Bool)

(declare-fun res!1048941 () Bool)

(assert (=> b!1531665 (=> (not res!1048941) (not e!853458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531665 (= res!1048941 (validKeyInArray!0 (select (arr!49050 a!2804) j!70)))))

(declare-fun b!1531666 () Bool)

(declare-fun e!853460 () Bool)

(declare-fun e!853457 () Bool)

(assert (=> b!1531666 (= e!853460 (not e!853457))))

(declare-fun res!1048944 () Bool)

(assert (=> b!1531666 (=> res!1048944 e!853457)))

(assert (=> b!1531666 (= res!1048944 (or (not (= (select (arr!49050 a!2804) j!70) lt!663305)) (= x!534 resX!21)))))

(declare-fun e!853459 () Bool)

(assert (=> b!1531666 e!853459))

(declare-fun res!1048942 () Bool)

(assert (=> b!1531666 (=> (not res!1048942) (not e!853459))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101668 (_ BitVec 32)) Bool)

(assert (=> b!1531666 (= res!1048942 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!663301 () Unit!51212)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101668 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51212)

(assert (=> b!1531666 (= lt!663301 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531667 () Bool)

(assert (=> b!1531667 (= e!853457 e!853461)))

(declare-fun res!1048949 () Bool)

(assert (=> b!1531667 (=> res!1048949 e!853461)))

(assert (=> b!1531667 (= res!1048949 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663304 #b00000000000000000000000000000000) (bvsge lt!663304 (size!49601 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531667 (= lt!663304 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531668 () Bool)

(declare-fun e!853463 () Bool)

(assert (=> b!1531668 (= e!853463 e!853460)))

(declare-fun res!1048945 () Bool)

(assert (=> b!1531668 (=> (not res!1048945) (not e!853460))))

(declare-fun lt!663307 () SeekEntryResult!13236)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101668 (_ BitVec 32)) SeekEntryResult!13236)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531668 (= res!1048945 (= lt!663307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663305 mask!2512) lt!663305 lt!663302 mask!2512)))))

(assert (=> b!1531668 (= lt!663305 (select (store (arr!49050 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531668 (= lt!663302 (array!101669 (store (arr!49050 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49601 a!2804)))))

(declare-fun b!1531669 () Bool)

(declare-fun res!1048947 () Bool)

(assert (=> b!1531669 (=> (not res!1048947) (not e!853458))))

(assert (=> b!1531669 (= res!1048947 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49601 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49601 a!2804))))))

(declare-fun b!1531670 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101668 (_ BitVec 32)) SeekEntryResult!13236)

(assert (=> b!1531670 (= e!853459 (= (seekEntry!0 (select (arr!49050 a!2804) j!70) a!2804 mask!2512) (Found!13236 j!70)))))

(declare-fun b!1531671 () Bool)

(declare-fun res!1048946 () Bool)

(assert (=> b!1531671 (=> res!1048946 e!853461)))

(declare-fun lt!663303 () SeekEntryResult!13236)

(assert (=> b!1531671 (= res!1048946 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663304 (select (arr!49050 a!2804) j!70) a!2804 mask!2512) lt!663303)))))

(declare-fun b!1531672 () Bool)

(declare-fun res!1048953 () Bool)

(assert (=> b!1531672 (=> (not res!1048953) (not e!853458))))

(assert (=> b!1531672 (= res!1048953 (validKeyInArray!0 (select (arr!49050 a!2804) i!961)))))

(declare-fun b!1531673 () Bool)

(declare-fun res!1048950 () Bool)

(assert (=> b!1531673 (=> (not res!1048950) (not e!853458))))

(assert (=> b!1531673 (= res!1048950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1048952 () Bool)

(assert (=> start!130562 (=> (not res!1048952) (not e!853458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130562 (= res!1048952 (validMask!0 mask!2512))))

(assert (=> start!130562 e!853458))

(assert (=> start!130562 true))

(declare-fun array_inv!37995 (array!101668) Bool)

(assert (=> start!130562 (array_inv!37995 a!2804)))

(declare-fun b!1531664 () Bool)

(declare-fun res!1048951 () Bool)

(assert (=> b!1531664 (=> (not res!1048951) (not e!853458))))

(declare-datatypes ((List!35713 0))(
  ( (Nil!35710) (Cons!35709 (h!37155 (_ BitVec 64)) (t!50414 List!35713)) )
))
(declare-fun arrayNoDuplicates!0 (array!101668 (_ BitVec 32) List!35713) Bool)

(assert (=> b!1531664 (= res!1048951 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35710))))

(declare-fun b!1531674 () Bool)

(declare-fun res!1048943 () Bool)

(assert (=> b!1531674 (=> (not res!1048943) (not e!853463))))

(assert (=> b!1531674 (= res!1048943 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49050 a!2804) j!70) a!2804 mask!2512) lt!663303))))

(declare-fun b!1531675 () Bool)

(assert (=> b!1531675 (= e!853458 e!853463)))

(declare-fun res!1048948 () Bool)

(assert (=> b!1531675 (=> (not res!1048948) (not e!853463))))

(assert (=> b!1531675 (= res!1048948 (= lt!663307 lt!663303))))

(assert (=> b!1531675 (= lt!663303 (Intermediate!13236 false resIndex!21 resX!21))))

(assert (=> b!1531675 (= lt!663307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49050 a!2804) j!70) mask!2512) (select (arr!49050 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130562 res!1048952) b!1531663))

(assert (= (and b!1531663 res!1048940) b!1531672))

(assert (= (and b!1531672 res!1048953) b!1531665))

(assert (= (and b!1531665 res!1048941) b!1531673))

(assert (= (and b!1531673 res!1048950) b!1531664))

(assert (= (and b!1531664 res!1048951) b!1531669))

(assert (= (and b!1531669 res!1048947) b!1531675))

(assert (= (and b!1531675 res!1048948) b!1531674))

(assert (= (and b!1531674 res!1048943) b!1531668))

(assert (= (and b!1531668 res!1048945) b!1531666))

(assert (= (and b!1531666 res!1048942) b!1531670))

(assert (= (and b!1531666 (not res!1048944)) b!1531667))

(assert (= (and b!1531667 (not res!1048949)) b!1531671))

(assert (= (and b!1531671 (not res!1048946)) b!1531662))

(declare-fun m!1414373 () Bool)

(assert (=> b!1531673 m!1414373))

(declare-fun m!1414375 () Bool)

(assert (=> b!1531675 m!1414375))

(assert (=> b!1531675 m!1414375))

(declare-fun m!1414377 () Bool)

(assert (=> b!1531675 m!1414377))

(assert (=> b!1531675 m!1414377))

(assert (=> b!1531675 m!1414375))

(declare-fun m!1414379 () Bool)

(assert (=> b!1531675 m!1414379))

(assert (=> b!1531662 m!1414375))

(assert (=> b!1531662 m!1414375))

(declare-fun m!1414381 () Bool)

(assert (=> b!1531662 m!1414381))

(declare-fun m!1414383 () Bool)

(assert (=> b!1531662 m!1414383))

(declare-fun m!1414385 () Bool)

(assert (=> b!1531662 m!1414385))

(declare-fun m!1414387 () Bool)

(assert (=> b!1531672 m!1414387))

(assert (=> b!1531672 m!1414387))

(declare-fun m!1414389 () Bool)

(assert (=> b!1531672 m!1414389))

(assert (=> b!1531674 m!1414375))

(assert (=> b!1531674 m!1414375))

(declare-fun m!1414391 () Bool)

(assert (=> b!1531674 m!1414391))

(assert (=> b!1531666 m!1414375))

(declare-fun m!1414393 () Bool)

(assert (=> b!1531666 m!1414393))

(declare-fun m!1414395 () Bool)

(assert (=> b!1531666 m!1414395))

(assert (=> b!1531671 m!1414375))

(assert (=> b!1531671 m!1414375))

(declare-fun m!1414397 () Bool)

(assert (=> b!1531671 m!1414397))

(assert (=> b!1531670 m!1414375))

(assert (=> b!1531670 m!1414375))

(declare-fun m!1414399 () Bool)

(assert (=> b!1531670 m!1414399))

(declare-fun m!1414401 () Bool)

(assert (=> start!130562 m!1414401))

(declare-fun m!1414403 () Bool)

(assert (=> start!130562 m!1414403))

(assert (=> b!1531665 m!1414375))

(assert (=> b!1531665 m!1414375))

(declare-fun m!1414405 () Bool)

(assert (=> b!1531665 m!1414405))

(declare-fun m!1414407 () Bool)

(assert (=> b!1531667 m!1414407))

(declare-fun m!1414409 () Bool)

(assert (=> b!1531668 m!1414409))

(assert (=> b!1531668 m!1414409))

(declare-fun m!1414411 () Bool)

(assert (=> b!1531668 m!1414411))

(declare-fun m!1414413 () Bool)

(assert (=> b!1531668 m!1414413))

(declare-fun m!1414415 () Bool)

(assert (=> b!1531668 m!1414415))

(declare-fun m!1414417 () Bool)

(assert (=> b!1531664 m!1414417))

(push 1)

