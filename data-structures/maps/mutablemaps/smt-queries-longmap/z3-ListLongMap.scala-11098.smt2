; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129644 () Bool)

(assert start!129644)

(declare-fun b!1521443 () Bool)

(declare-fun res!1040807 () Bool)

(declare-fun e!848524 () Bool)

(assert (=> b!1521443 (=> (not res!1040807) (not e!848524))))

(declare-datatypes ((array!101246 0))(
  ( (array!101247 (arr!48851 (Array (_ BitVec 32) (_ BitVec 64))) (size!49402 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101246)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101246 (_ BitVec 32)) Bool)

(assert (=> b!1521443 (= res!1040807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521444 () Bool)

(declare-fun e!848525 () Bool)

(assert (=> b!1521444 (= e!848524 e!848525)))

(declare-fun res!1040805 () Bool)

(assert (=> b!1521444 (=> (not res!1040805) (not e!848525))))

(declare-datatypes ((SeekEntryResult!13037 0))(
  ( (MissingZero!13037 (index!54542 (_ BitVec 32))) (Found!13037 (index!54543 (_ BitVec 32))) (Intermediate!13037 (undefined!13849 Bool) (index!54544 (_ BitVec 32)) (x!136244 (_ BitVec 32))) (Undefined!13037) (MissingVacant!13037 (index!54545 (_ BitVec 32))) )
))
(declare-fun lt!659301 () SeekEntryResult!13037)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101246 (_ BitVec 32)) SeekEntryResult!13037)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521444 (= res!1040805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48851 a!2804) j!70) mask!2512) (select (arr!48851 a!2804) j!70) a!2804 mask!2512) lt!659301))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1521444 (= lt!659301 (Intermediate!13037 false resIndex!21 resX!21))))

(declare-fun b!1521445 () Bool)

(declare-fun res!1040803 () Bool)

(assert (=> b!1521445 (=> (not res!1040803) (not e!848524))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521445 (= res!1040803 (validKeyInArray!0 (select (arr!48851 a!2804) i!961)))))

(declare-fun b!1521446 () Bool)

(declare-fun res!1040804 () Bool)

(assert (=> b!1521446 (=> (not res!1040804) (not e!848525))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1521446 (= res!1040804 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48851 a!2804) j!70) a!2804 mask!2512) lt!659301))))

(declare-fun res!1040806 () Bool)

(assert (=> start!129644 (=> (not res!1040806) (not e!848524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129644 (= res!1040806 (validMask!0 mask!2512))))

(assert (=> start!129644 e!848524))

(assert (=> start!129644 true))

(declare-fun array_inv!37796 (array!101246) Bool)

(assert (=> start!129644 (array_inv!37796 a!2804)))

(declare-fun b!1521447 () Bool)

(declare-fun res!1040810 () Bool)

(assert (=> b!1521447 (=> (not res!1040810) (not e!848524))))

(assert (=> b!1521447 (= res!1040810 (and (= (size!49402 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49402 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49402 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521448 () Bool)

(assert (=> b!1521448 (= e!848525 false)))

(declare-fun lt!659302 () (_ BitVec 32))

(assert (=> b!1521448 (= lt!659302 (toIndex!0 (select (store (arr!48851 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1521449 () Bool)

(declare-fun res!1040811 () Bool)

(assert (=> b!1521449 (=> (not res!1040811) (not e!848524))))

(assert (=> b!1521449 (= res!1040811 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49402 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49402 a!2804))))))

(declare-fun b!1521450 () Bool)

(declare-fun res!1040808 () Bool)

(assert (=> b!1521450 (=> (not res!1040808) (not e!848524))))

(assert (=> b!1521450 (= res!1040808 (validKeyInArray!0 (select (arr!48851 a!2804) j!70)))))

(declare-fun b!1521451 () Bool)

(declare-fun res!1040809 () Bool)

(assert (=> b!1521451 (=> (not res!1040809) (not e!848524))))

(declare-datatypes ((List!35514 0))(
  ( (Nil!35511) (Cons!35510 (h!36932 (_ BitVec 64)) (t!50215 List!35514)) )
))
(declare-fun arrayNoDuplicates!0 (array!101246 (_ BitVec 32) List!35514) Bool)

(assert (=> b!1521451 (= res!1040809 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35511))))

(assert (= (and start!129644 res!1040806) b!1521447))

(assert (= (and b!1521447 res!1040810) b!1521445))

(assert (= (and b!1521445 res!1040803) b!1521450))

(assert (= (and b!1521450 res!1040808) b!1521443))

(assert (= (and b!1521443 res!1040807) b!1521451))

(assert (= (and b!1521451 res!1040809) b!1521449))

(assert (= (and b!1521449 res!1040811) b!1521444))

(assert (= (and b!1521444 res!1040805) b!1521446))

(assert (= (and b!1521446 res!1040804) b!1521448))

(declare-fun m!1404585 () Bool)

(assert (=> b!1521448 m!1404585))

(declare-fun m!1404587 () Bool)

(assert (=> b!1521448 m!1404587))

(assert (=> b!1521448 m!1404587))

(declare-fun m!1404589 () Bool)

(assert (=> b!1521448 m!1404589))

(declare-fun m!1404591 () Bool)

(assert (=> start!129644 m!1404591))

(declare-fun m!1404593 () Bool)

(assert (=> start!129644 m!1404593))

(declare-fun m!1404595 () Bool)

(assert (=> b!1521451 m!1404595))

(declare-fun m!1404597 () Bool)

(assert (=> b!1521446 m!1404597))

(assert (=> b!1521446 m!1404597))

(declare-fun m!1404599 () Bool)

(assert (=> b!1521446 m!1404599))

(assert (=> b!1521444 m!1404597))

(assert (=> b!1521444 m!1404597))

(declare-fun m!1404601 () Bool)

(assert (=> b!1521444 m!1404601))

(assert (=> b!1521444 m!1404601))

(assert (=> b!1521444 m!1404597))

(declare-fun m!1404603 () Bool)

(assert (=> b!1521444 m!1404603))

(assert (=> b!1521450 m!1404597))

(assert (=> b!1521450 m!1404597))

(declare-fun m!1404605 () Bool)

(assert (=> b!1521450 m!1404605))

(declare-fun m!1404607 () Bool)

(assert (=> b!1521443 m!1404607))

(declare-fun m!1404609 () Bool)

(assert (=> b!1521445 m!1404609))

(assert (=> b!1521445 m!1404609))

(declare-fun m!1404611 () Bool)

(assert (=> b!1521445 m!1404611))

(check-sat (not b!1521451) (not b!1521450) (not start!129644) (not b!1521443) (not b!1521445) (not b!1521446) (not b!1521444) (not b!1521448))
(check-sat)
