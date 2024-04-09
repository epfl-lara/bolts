; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130560 () Bool)

(assert start!130560)

(declare-fun b!1531620 () Bool)

(declare-fun e!853440 () Bool)

(declare-fun e!853436 () Bool)

(assert (=> b!1531620 (= e!853440 e!853436)))

(declare-fun res!1048899 () Bool)

(assert (=> b!1531620 (=> res!1048899 e!853436)))

(declare-fun lt!663280 () (_ BitVec 32))

(declare-datatypes ((array!101666 0))(
  ( (array!101667 (arr!49049 (Array (_ BitVec 32) (_ BitVec 64))) (size!49600 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101666)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1531620 (= res!1048899 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663280 #b00000000000000000000000000000000) (bvsge lt!663280 (size!49600 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531620 (= lt!663280 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531621 () Bool)

(declare-fun res!1048902 () Bool)

(declare-fun e!853438 () Bool)

(assert (=> b!1531621 (=> (not res!1048902) (not e!853438))))

(declare-datatypes ((List!35712 0))(
  ( (Nil!35709) (Cons!35708 (h!37154 (_ BitVec 64)) (t!50413 List!35712)) )
))
(declare-fun arrayNoDuplicates!0 (array!101666 (_ BitVec 32) List!35712) Bool)

(assert (=> b!1531621 (= res!1048902 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35709))))

(declare-fun b!1531622 () Bool)

(declare-fun res!1048908 () Bool)

(declare-fun e!853442 () Bool)

(assert (=> b!1531622 (=> (not res!1048908) (not e!853442))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13235 0))(
  ( (MissingZero!13235 (index!55334 (_ BitVec 32))) (Found!13235 (index!55335 (_ BitVec 32))) (Intermediate!13235 (undefined!14047 Bool) (index!55336 (_ BitVec 32)) (x!137040 (_ BitVec 32))) (Undefined!13235) (MissingVacant!13235 (index!55337 (_ BitVec 32))) )
))
(declare-fun lt!663281 () SeekEntryResult!13235)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101666 (_ BitVec 32)) SeekEntryResult!13235)

(assert (=> b!1531622 (= res!1048908 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49049 a!2804) j!70) a!2804 mask!2512) lt!663281))))

(declare-fun res!1048898 () Bool)

(assert (=> start!130560 (=> (not res!1048898) (not e!853438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130560 (= res!1048898 (validMask!0 mask!2512))))

(assert (=> start!130560 e!853438))

(assert (=> start!130560 true))

(declare-fun array_inv!37994 (array!101666) Bool)

(assert (=> start!130560 (array_inv!37994 a!2804)))

(declare-fun b!1531623 () Bool)

(declare-fun res!1048907 () Bool)

(assert (=> b!1531623 (=> (not res!1048907) (not e!853438))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1531623 (= res!1048907 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49600 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49600 a!2804))))))

(declare-fun b!1531624 () Bool)

(declare-fun res!1048901 () Bool)

(assert (=> b!1531624 (=> (not res!1048901) (not e!853438))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1531624 (= res!1048901 (and (= (size!49600 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49600 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49600 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531625 () Bool)

(declare-fun res!1048904 () Bool)

(assert (=> b!1531625 (=> (not res!1048904) (not e!853438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531625 (= res!1048904 (validKeyInArray!0 (select (arr!49049 a!2804) i!961)))))

(declare-fun b!1531626 () Bool)

(assert (=> b!1531626 (= e!853436 true)))

(declare-fun lt!663284 () (_ BitVec 64))

(declare-fun lt!663286 () array!101666)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101666 (_ BitVec 32)) SeekEntryResult!13235)

(assert (=> b!1531626 (= (seekEntryOrOpen!0 (select (arr!49049 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663284 lt!663286 mask!2512))))

(declare-datatypes ((Unit!51210 0))(
  ( (Unit!51211) )
))
(declare-fun lt!663283 () Unit!51210)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101666 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51210)

(assert (=> b!1531626 (= lt!663283 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663280 resX!21 resIndex!21 mask!2512))))

(declare-fun e!853437 () Bool)

(declare-fun b!1531627 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101666 (_ BitVec 32)) SeekEntryResult!13235)

(assert (=> b!1531627 (= e!853437 (= (seekEntry!0 (select (arr!49049 a!2804) j!70) a!2804 mask!2512) (Found!13235 j!70)))))

(declare-fun b!1531628 () Bool)

(declare-fun res!1048906 () Bool)

(assert (=> b!1531628 (=> res!1048906 e!853436)))

(assert (=> b!1531628 (= res!1048906 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663280 (select (arr!49049 a!2804) j!70) a!2804 mask!2512) lt!663281)))))

(declare-fun b!1531629 () Bool)

(declare-fun res!1048905 () Bool)

(assert (=> b!1531629 (=> (not res!1048905) (not e!853438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101666 (_ BitVec 32)) Bool)

(assert (=> b!1531629 (= res!1048905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531630 () Bool)

(declare-fun e!853441 () Bool)

(assert (=> b!1531630 (= e!853442 e!853441)))

(declare-fun res!1048903 () Bool)

(assert (=> b!1531630 (=> (not res!1048903) (not e!853441))))

(declare-fun lt!663285 () SeekEntryResult!13235)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531630 (= res!1048903 (= lt!663285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663284 mask!2512) lt!663284 lt!663286 mask!2512)))))

(assert (=> b!1531630 (= lt!663284 (select (store (arr!49049 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531630 (= lt!663286 (array!101667 (store (arr!49049 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49600 a!2804)))))

(declare-fun b!1531631 () Bool)

(declare-fun res!1048911 () Bool)

(assert (=> b!1531631 (=> (not res!1048911) (not e!853438))))

(assert (=> b!1531631 (= res!1048911 (validKeyInArray!0 (select (arr!49049 a!2804) j!70)))))

(declare-fun b!1531632 () Bool)

(assert (=> b!1531632 (= e!853438 e!853442)))

(declare-fun res!1048900 () Bool)

(assert (=> b!1531632 (=> (not res!1048900) (not e!853442))))

(assert (=> b!1531632 (= res!1048900 (= lt!663285 lt!663281))))

(assert (=> b!1531632 (= lt!663281 (Intermediate!13235 false resIndex!21 resX!21))))

(assert (=> b!1531632 (= lt!663285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49049 a!2804) j!70) mask!2512) (select (arr!49049 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531633 () Bool)

(assert (=> b!1531633 (= e!853441 (not e!853440))))

(declare-fun res!1048909 () Bool)

(assert (=> b!1531633 (=> res!1048909 e!853440)))

(assert (=> b!1531633 (= res!1048909 (or (not (= (select (arr!49049 a!2804) j!70) lt!663284)) (= x!534 resX!21)))))

(assert (=> b!1531633 e!853437))

(declare-fun res!1048910 () Bool)

(assert (=> b!1531633 (=> (not res!1048910) (not e!853437))))

(assert (=> b!1531633 (= res!1048910 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!663282 () Unit!51210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101666 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51210)

(assert (=> b!1531633 (= lt!663282 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130560 res!1048898) b!1531624))

(assert (= (and b!1531624 res!1048901) b!1531625))

(assert (= (and b!1531625 res!1048904) b!1531631))

(assert (= (and b!1531631 res!1048911) b!1531629))

(assert (= (and b!1531629 res!1048905) b!1531621))

(assert (= (and b!1531621 res!1048902) b!1531623))

(assert (= (and b!1531623 res!1048907) b!1531632))

(assert (= (and b!1531632 res!1048900) b!1531622))

(assert (= (and b!1531622 res!1048908) b!1531630))

(assert (= (and b!1531630 res!1048903) b!1531633))

(assert (= (and b!1531633 res!1048910) b!1531627))

(assert (= (and b!1531633 (not res!1048909)) b!1531620))

(assert (= (and b!1531620 (not res!1048899)) b!1531628))

(assert (= (and b!1531628 (not res!1048906)) b!1531626))

(declare-fun m!1414327 () Bool)

(assert (=> b!1531629 m!1414327))

(declare-fun m!1414329 () Bool)

(assert (=> start!130560 m!1414329))

(declare-fun m!1414331 () Bool)

(assert (=> start!130560 m!1414331))

(declare-fun m!1414333 () Bool)

(assert (=> b!1531621 m!1414333))

(declare-fun m!1414335 () Bool)

(assert (=> b!1531628 m!1414335))

(assert (=> b!1531628 m!1414335))

(declare-fun m!1414337 () Bool)

(assert (=> b!1531628 m!1414337))

(assert (=> b!1531627 m!1414335))

(assert (=> b!1531627 m!1414335))

(declare-fun m!1414339 () Bool)

(assert (=> b!1531627 m!1414339))

(assert (=> b!1531626 m!1414335))

(assert (=> b!1531626 m!1414335))

(declare-fun m!1414341 () Bool)

(assert (=> b!1531626 m!1414341))

(declare-fun m!1414343 () Bool)

(assert (=> b!1531626 m!1414343))

(declare-fun m!1414345 () Bool)

(assert (=> b!1531626 m!1414345))

(declare-fun m!1414347 () Bool)

(assert (=> b!1531625 m!1414347))

(assert (=> b!1531625 m!1414347))

(declare-fun m!1414349 () Bool)

(assert (=> b!1531625 m!1414349))

(declare-fun m!1414351 () Bool)

(assert (=> b!1531620 m!1414351))

(declare-fun m!1414353 () Bool)

(assert (=> b!1531630 m!1414353))

(assert (=> b!1531630 m!1414353))

(declare-fun m!1414355 () Bool)

(assert (=> b!1531630 m!1414355))

(declare-fun m!1414357 () Bool)

(assert (=> b!1531630 m!1414357))

(declare-fun m!1414359 () Bool)

(assert (=> b!1531630 m!1414359))

(assert (=> b!1531632 m!1414335))

(assert (=> b!1531632 m!1414335))

(declare-fun m!1414361 () Bool)

(assert (=> b!1531632 m!1414361))

(assert (=> b!1531632 m!1414361))

(assert (=> b!1531632 m!1414335))

(declare-fun m!1414363 () Bool)

(assert (=> b!1531632 m!1414363))

(assert (=> b!1531633 m!1414335))

(declare-fun m!1414365 () Bool)

(assert (=> b!1531633 m!1414365))

(declare-fun m!1414367 () Bool)

(assert (=> b!1531633 m!1414367))

(assert (=> b!1531622 m!1414335))

(assert (=> b!1531622 m!1414335))

(declare-fun m!1414369 () Bool)

(assert (=> b!1531622 m!1414369))

(assert (=> b!1531631 m!1414335))

(assert (=> b!1531631 m!1414335))

(declare-fun m!1414371 () Bool)

(assert (=> b!1531631 m!1414371))

(check-sat (not b!1531631) (not b!1531621) (not b!1531629) (not start!130560) (not b!1531633) (not b!1531630) (not b!1531632) (not b!1531627) (not b!1531626) (not b!1531625) (not b!1531628) (not b!1531620) (not b!1531622))
(check-sat)
