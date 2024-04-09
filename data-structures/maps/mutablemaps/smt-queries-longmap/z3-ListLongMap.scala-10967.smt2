; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128514 () Bool)

(assert start!128514)

(declare-fun b!1506370 () Bool)

(declare-fun res!1026771 () Bool)

(declare-fun e!841909 () Bool)

(assert (=> b!1506370 (=> (not res!1026771) (not e!841909))))

(declare-datatypes ((array!100439 0))(
  ( (array!100440 (arr!48458 (Array (_ BitVec 32) (_ BitVec 64))) (size!49009 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100439)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100439 (_ BitVec 32)) Bool)

(assert (=> b!1506370 (= res!1026771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506371 () Bool)

(declare-fun res!1026765 () Bool)

(assert (=> b!1506371 (=> (not res!1026765) (not e!841909))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506371 (= res!1026765 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49009 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49009 a!2804))))))

(declare-fun res!1026770 () Bool)

(assert (=> start!128514 (=> (not res!1026770) (not e!841909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128514 (= res!1026770 (validMask!0 mask!2512))))

(assert (=> start!128514 e!841909))

(assert (=> start!128514 true))

(declare-fun array_inv!37403 (array!100439) Bool)

(assert (=> start!128514 (array_inv!37403 a!2804)))

(declare-fun b!1506372 () Bool)

(assert (=> b!1506372 (= e!841909 false)))

(declare-fun lt!654193 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506372 (= lt!654193 (toIndex!0 (select (arr!48458 a!2804) j!70) mask!2512))))

(declare-fun b!1506373 () Bool)

(declare-fun res!1026767 () Bool)

(assert (=> b!1506373 (=> (not res!1026767) (not e!841909))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506373 (= res!1026767 (validKeyInArray!0 (select (arr!48458 a!2804) i!961)))))

(declare-fun b!1506374 () Bool)

(declare-fun res!1026766 () Bool)

(assert (=> b!1506374 (=> (not res!1026766) (not e!841909))))

(assert (=> b!1506374 (= res!1026766 (and (= (size!49009 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49009 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49009 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506375 () Bool)

(declare-fun res!1026769 () Bool)

(assert (=> b!1506375 (=> (not res!1026769) (not e!841909))))

(assert (=> b!1506375 (= res!1026769 (validKeyInArray!0 (select (arr!48458 a!2804) j!70)))))

(declare-fun b!1506376 () Bool)

(declare-fun res!1026768 () Bool)

(assert (=> b!1506376 (=> (not res!1026768) (not e!841909))))

(declare-datatypes ((List!35121 0))(
  ( (Nil!35118) (Cons!35117 (h!36518 (_ BitVec 64)) (t!49822 List!35121)) )
))
(declare-fun arrayNoDuplicates!0 (array!100439 (_ BitVec 32) List!35121) Bool)

(assert (=> b!1506376 (= res!1026768 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35118))))

(assert (= (and start!128514 res!1026770) b!1506374))

(assert (= (and b!1506374 res!1026766) b!1506373))

(assert (= (and b!1506373 res!1026767) b!1506375))

(assert (= (and b!1506375 res!1026769) b!1506370))

(assert (= (and b!1506370 res!1026771) b!1506376))

(assert (= (and b!1506376 res!1026768) b!1506371))

(assert (= (and b!1506371 res!1026765) b!1506372))

(declare-fun m!1389375 () Bool)

(assert (=> b!1506372 m!1389375))

(assert (=> b!1506372 m!1389375))

(declare-fun m!1389377 () Bool)

(assert (=> b!1506372 m!1389377))

(declare-fun m!1389379 () Bool)

(assert (=> b!1506373 m!1389379))

(assert (=> b!1506373 m!1389379))

(declare-fun m!1389381 () Bool)

(assert (=> b!1506373 m!1389381))

(declare-fun m!1389383 () Bool)

(assert (=> b!1506376 m!1389383))

(declare-fun m!1389385 () Bool)

(assert (=> b!1506370 m!1389385))

(assert (=> b!1506375 m!1389375))

(assert (=> b!1506375 m!1389375))

(declare-fun m!1389387 () Bool)

(assert (=> b!1506375 m!1389387))

(declare-fun m!1389389 () Bool)

(assert (=> start!128514 m!1389389))

(declare-fun m!1389391 () Bool)

(assert (=> start!128514 m!1389391))

(check-sat (not start!128514) (not b!1506375) (not b!1506376) (not b!1506372) (not b!1506373) (not b!1506370))
