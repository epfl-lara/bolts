; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129344 () Bool)

(assert start!129344)

(declare-fun b!1518543 () Bool)

(declare-fun res!1038522 () Bool)

(declare-fun e!847159 () Bool)

(assert (=> b!1518543 (=> res!1038522 e!847159)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!658202 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12981 0))(
  ( (MissingZero!12981 (index!54318 (_ BitVec 32))) (Found!12981 (index!54319 (_ BitVec 32))) (Intermediate!12981 (undefined!13793 Bool) (index!54320 (_ BitVec 32)) (x!136000 (_ BitVec 32))) (Undefined!12981) (MissingVacant!12981 (index!54321 (_ BitVec 32))) )
))
(declare-fun lt!658199 () SeekEntryResult!12981)

(declare-datatypes ((array!101113 0))(
  ( (array!101114 (arr!48789 (Array (_ BitVec 32) (_ BitVec 64))) (size!49340 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101113)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101113 (_ BitVec 32)) SeekEntryResult!12981)

(assert (=> b!1518543 (= res!1038522 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658202 (select (arr!48789 a!2804) j!70) a!2804 mask!2512) lt!658199)))))

(declare-fun b!1518544 () Bool)

(declare-fun e!847154 () Bool)

(declare-fun e!847157 () Bool)

(assert (=> b!1518544 (= e!847154 e!847157)))

(declare-fun res!1038529 () Bool)

(assert (=> b!1518544 (=> (not res!1038529) (not e!847157))))

(declare-fun lt!658200 () SeekEntryResult!12981)

(assert (=> b!1518544 (= res!1038529 (= lt!658200 lt!658199))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1518544 (= lt!658199 (Intermediate!12981 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518544 (= lt!658200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48789 a!2804) j!70) mask!2512) (select (arr!48789 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518545 () Bool)

(declare-fun e!847156 () Bool)

(assert (=> b!1518545 (= e!847156 e!847159)))

(declare-fun res!1038526 () Bool)

(assert (=> b!1518545 (=> res!1038526 e!847159)))

(assert (=> b!1518545 (= res!1038526 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658202 #b00000000000000000000000000000000) (bvsge lt!658202 (size!49340 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518545 (= lt!658202 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1038520 () Bool)

(assert (=> start!129344 (=> (not res!1038520) (not e!847154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129344 (= res!1038520 (validMask!0 mask!2512))))

(assert (=> start!129344 e!847154))

(assert (=> start!129344 true))

(declare-fun array_inv!37734 (array!101113) Bool)

(assert (=> start!129344 (array_inv!37734 a!2804)))

(declare-fun b!1518546 () Bool)

(declare-fun e!847155 () Bool)

(assert (=> b!1518546 (= e!847155 (not e!847156))))

(declare-fun res!1038523 () Bool)

(assert (=> b!1518546 (=> res!1038523 e!847156)))

(declare-fun lt!658204 () (_ BitVec 64))

(assert (=> b!1518546 (= res!1038523 (or (not (= (select (arr!48789 a!2804) j!70) lt!658204)) (= x!534 resX!21)))))

(declare-fun e!847158 () Bool)

(assert (=> b!1518546 e!847158))

(declare-fun res!1038521 () Bool)

(assert (=> b!1518546 (=> (not res!1038521) (not e!847158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101113 (_ BitVec 32)) Bool)

(assert (=> b!1518546 (= res!1038521 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50786 0))(
  ( (Unit!50787) )
))
(declare-fun lt!658198 () Unit!50786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101113 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50786)

(assert (=> b!1518546 (= lt!658198 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518547 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101113 (_ BitVec 32)) SeekEntryResult!12981)

(assert (=> b!1518547 (= e!847158 (= (seekEntry!0 (select (arr!48789 a!2804) j!70) a!2804 mask!2512) (Found!12981 j!70)))))

(declare-fun b!1518548 () Bool)

(declare-fun res!1038519 () Bool)

(assert (=> b!1518548 (=> (not res!1038519) (not e!847154))))

(declare-datatypes ((List!35452 0))(
  ( (Nil!35449) (Cons!35448 (h!36861 (_ BitVec 64)) (t!50153 List!35452)) )
))
(declare-fun arrayNoDuplicates!0 (array!101113 (_ BitVec 32) List!35452) Bool)

(assert (=> b!1518548 (= res!1038519 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35449))))

(declare-fun b!1518549 () Bool)

(declare-fun res!1038527 () Bool)

(assert (=> b!1518549 (=> (not res!1038527) (not e!847157))))

(assert (=> b!1518549 (= res!1038527 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48789 a!2804) j!70) a!2804 mask!2512) lt!658199))))

(declare-fun b!1518550 () Bool)

(assert (=> b!1518550 (= e!847157 e!847155)))

(declare-fun res!1038525 () Bool)

(assert (=> b!1518550 (=> (not res!1038525) (not e!847155))))

(declare-fun lt!658201 () array!101113)

(assert (=> b!1518550 (= res!1038525 (= lt!658200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658204 mask!2512) lt!658204 lt!658201 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1518550 (= lt!658204 (select (store (arr!48789 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518550 (= lt!658201 (array!101114 (store (arr!48789 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49340 a!2804)))))

(declare-fun b!1518551 () Bool)

(declare-fun res!1038524 () Bool)

(assert (=> b!1518551 (=> (not res!1038524) (not e!847154))))

(assert (=> b!1518551 (= res!1038524 (and (= (size!49340 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49340 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49340 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518552 () Bool)

(declare-fun res!1038531 () Bool)

(assert (=> b!1518552 (=> (not res!1038531) (not e!847154))))

(assert (=> b!1518552 (= res!1038531 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49340 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49340 a!2804))))))

(declare-fun b!1518553 () Bool)

(assert (=> b!1518553 (= e!847159 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101113 (_ BitVec 32)) SeekEntryResult!12981)

(assert (=> b!1518553 (= (seekEntryOrOpen!0 (select (arr!48789 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658204 lt!658201 mask!2512))))

(declare-fun lt!658203 () Unit!50786)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101113 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50786)

(assert (=> b!1518553 (= lt!658203 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658202 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518554 () Bool)

(declare-fun res!1038528 () Bool)

(assert (=> b!1518554 (=> (not res!1038528) (not e!847154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518554 (= res!1038528 (validKeyInArray!0 (select (arr!48789 a!2804) i!961)))))

(declare-fun b!1518555 () Bool)

(declare-fun res!1038530 () Bool)

(assert (=> b!1518555 (=> (not res!1038530) (not e!847154))))

(assert (=> b!1518555 (= res!1038530 (validKeyInArray!0 (select (arr!48789 a!2804) j!70)))))

(declare-fun b!1518556 () Bool)

(declare-fun res!1038518 () Bool)

(assert (=> b!1518556 (=> (not res!1038518) (not e!847154))))

(assert (=> b!1518556 (= res!1038518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129344 res!1038520) b!1518551))

(assert (= (and b!1518551 res!1038524) b!1518554))

(assert (= (and b!1518554 res!1038528) b!1518555))

(assert (= (and b!1518555 res!1038530) b!1518556))

(assert (= (and b!1518556 res!1038518) b!1518548))

(assert (= (and b!1518548 res!1038519) b!1518552))

(assert (= (and b!1518552 res!1038531) b!1518544))

(assert (= (and b!1518544 res!1038529) b!1518549))

(assert (= (and b!1518549 res!1038527) b!1518550))

(assert (= (and b!1518550 res!1038525) b!1518546))

(assert (= (and b!1518546 res!1038521) b!1518547))

(assert (= (and b!1518546 (not res!1038523)) b!1518545))

(assert (= (and b!1518545 (not res!1038526)) b!1518543))

(assert (= (and b!1518543 (not res!1038522)) b!1518553))

(declare-fun m!1401923 () Bool)

(assert (=> b!1518545 m!1401923))

(declare-fun m!1401925 () Bool)

(assert (=> b!1518556 m!1401925))

(declare-fun m!1401927 () Bool)

(assert (=> b!1518548 m!1401927))

(declare-fun m!1401929 () Bool)

(assert (=> b!1518554 m!1401929))

(assert (=> b!1518554 m!1401929))

(declare-fun m!1401931 () Bool)

(assert (=> b!1518554 m!1401931))

(declare-fun m!1401933 () Bool)

(assert (=> b!1518547 m!1401933))

(assert (=> b!1518547 m!1401933))

(declare-fun m!1401935 () Bool)

(assert (=> b!1518547 m!1401935))

(assert (=> b!1518549 m!1401933))

(assert (=> b!1518549 m!1401933))

(declare-fun m!1401937 () Bool)

(assert (=> b!1518549 m!1401937))

(declare-fun m!1401939 () Bool)

(assert (=> start!129344 m!1401939))

(declare-fun m!1401941 () Bool)

(assert (=> start!129344 m!1401941))

(assert (=> b!1518555 m!1401933))

(assert (=> b!1518555 m!1401933))

(declare-fun m!1401943 () Bool)

(assert (=> b!1518555 m!1401943))

(assert (=> b!1518546 m!1401933))

(declare-fun m!1401945 () Bool)

(assert (=> b!1518546 m!1401945))

(declare-fun m!1401947 () Bool)

(assert (=> b!1518546 m!1401947))

(declare-fun m!1401949 () Bool)

(assert (=> b!1518550 m!1401949))

(assert (=> b!1518550 m!1401949))

(declare-fun m!1401951 () Bool)

(assert (=> b!1518550 m!1401951))

(declare-fun m!1401953 () Bool)

(assert (=> b!1518550 m!1401953))

(declare-fun m!1401955 () Bool)

(assert (=> b!1518550 m!1401955))

(assert (=> b!1518544 m!1401933))

(assert (=> b!1518544 m!1401933))

(declare-fun m!1401957 () Bool)

(assert (=> b!1518544 m!1401957))

(assert (=> b!1518544 m!1401957))

(assert (=> b!1518544 m!1401933))

(declare-fun m!1401959 () Bool)

(assert (=> b!1518544 m!1401959))

(assert (=> b!1518543 m!1401933))

(assert (=> b!1518543 m!1401933))

(declare-fun m!1401961 () Bool)

(assert (=> b!1518543 m!1401961))

(assert (=> b!1518553 m!1401933))

(assert (=> b!1518553 m!1401933))

(declare-fun m!1401963 () Bool)

(assert (=> b!1518553 m!1401963))

(declare-fun m!1401965 () Bool)

(assert (=> b!1518553 m!1401965))

(declare-fun m!1401967 () Bool)

(assert (=> b!1518553 m!1401967))

(push 1)

