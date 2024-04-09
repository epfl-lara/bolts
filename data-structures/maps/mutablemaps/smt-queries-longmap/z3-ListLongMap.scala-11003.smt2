; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128898 () Bool)

(assert start!128898)

(declare-fun b!1510008 () Bool)

(declare-fun res!1029992 () Bool)

(declare-fun e!843323 () Bool)

(assert (=> b!1510008 (=> (not res!1029992) (not e!843323))))

(declare-datatypes ((array!100667 0))(
  ( (array!100668 (arr!48566 (Array (_ BitVec 32) (_ BitVec 64))) (size!49117 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100667)

(declare-datatypes ((List!35229 0))(
  ( (Nil!35226) (Cons!35225 (h!36638 (_ BitVec 64)) (t!49930 List!35229)) )
))
(declare-fun arrayNoDuplicates!0 (array!100667 (_ BitVec 32) List!35229) Bool)

(assert (=> b!1510008 (= res!1029992 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35226))))

(declare-fun b!1510009 () Bool)

(declare-fun res!1029984 () Bool)

(declare-fun e!843320 () Bool)

(assert (=> b!1510009 (=> (not res!1029984) (not e!843320))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12758 0))(
  ( (MissingZero!12758 (index!53426 (_ BitVec 32))) (Found!12758 (index!53427 (_ BitVec 32))) (Intermediate!12758 (undefined!13570 Bool) (index!53428 (_ BitVec 32)) (x!135185 (_ BitVec 32))) (Undefined!12758) (MissingVacant!12758 (index!53429 (_ BitVec 32))) )
))
(declare-fun lt!655027 () SeekEntryResult!12758)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100667 (_ BitVec 32)) SeekEntryResult!12758)

(assert (=> b!1510009 (= res!1029984 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48566 a!2804) j!70) a!2804 mask!2512) lt!655027))))

(declare-fun b!1510010 () Bool)

(declare-fun res!1029988 () Bool)

(assert (=> b!1510010 (=> (not res!1029988) (not e!843323))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510010 (= res!1029988 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49117 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49117 a!2804))))))

(declare-fun res!1029985 () Bool)

(assert (=> start!128898 (=> (not res!1029985) (not e!843323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128898 (= res!1029985 (validMask!0 mask!2512))))

(assert (=> start!128898 e!843323))

(assert (=> start!128898 true))

(declare-fun array_inv!37511 (array!100667) Bool)

(assert (=> start!128898 (array_inv!37511 a!2804)))

(declare-fun b!1510011 () Bool)

(assert (=> b!1510011 (= e!843323 e!843320)))

(declare-fun res!1029990 () Bool)

(assert (=> b!1510011 (=> (not res!1029990) (not e!843320))))

(declare-fun lt!655025 () SeekEntryResult!12758)

(assert (=> b!1510011 (= res!1029990 (= lt!655025 lt!655027))))

(assert (=> b!1510011 (= lt!655027 (Intermediate!12758 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510011 (= lt!655025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48566 a!2804) j!70) mask!2512) (select (arr!48566 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510012 () Bool)

(declare-fun res!1029987 () Bool)

(assert (=> b!1510012 (=> (not res!1029987) (not e!843323))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1510012 (= res!1029987 (and (= (size!49117 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49117 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49117 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510013 () Bool)

(declare-fun res!1029991 () Bool)

(assert (=> b!1510013 (=> (not res!1029991) (not e!843323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510013 (= res!1029991 (validKeyInArray!0 (select (arr!48566 a!2804) i!961)))))

(declare-fun b!1510014 () Bool)

(assert (=> b!1510014 (= e!843320 (not true))))

(declare-fun e!843322 () Bool)

(assert (=> b!1510014 e!843322))

(declare-fun res!1029993 () Bool)

(assert (=> b!1510014 (=> (not res!1029993) (not e!843322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100667 (_ BitVec 32)) Bool)

(assert (=> b!1510014 (= res!1029993 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50340 0))(
  ( (Unit!50341) )
))
(declare-fun lt!655026 () Unit!50340)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50340)

(assert (=> b!1510014 (= lt!655026 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510015 () Bool)

(declare-fun res!1029983 () Bool)

(assert (=> b!1510015 (=> (not res!1029983) (not e!843323))))

(assert (=> b!1510015 (= res!1029983 (validKeyInArray!0 (select (arr!48566 a!2804) j!70)))))

(declare-fun b!1510016 () Bool)

(declare-fun res!1029989 () Bool)

(assert (=> b!1510016 (=> (not res!1029989) (not e!843323))))

(assert (=> b!1510016 (= res!1029989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510017 () Bool)

(declare-fun res!1029986 () Bool)

(assert (=> b!1510017 (=> (not res!1029986) (not e!843320))))

(assert (=> b!1510017 (= res!1029986 (= lt!655025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48566 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48566 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100668 (store (arr!48566 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49117 a!2804)) mask!2512)))))

(declare-fun b!1510018 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100667 (_ BitVec 32)) SeekEntryResult!12758)

(assert (=> b!1510018 (= e!843322 (= (seekEntry!0 (select (arr!48566 a!2804) j!70) a!2804 mask!2512) (Found!12758 j!70)))))

(assert (= (and start!128898 res!1029985) b!1510012))

(assert (= (and b!1510012 res!1029987) b!1510013))

(assert (= (and b!1510013 res!1029991) b!1510015))

(assert (= (and b!1510015 res!1029983) b!1510016))

(assert (= (and b!1510016 res!1029989) b!1510008))

(assert (= (and b!1510008 res!1029992) b!1510010))

(assert (= (and b!1510010 res!1029988) b!1510011))

(assert (= (and b!1510011 res!1029990) b!1510009))

(assert (= (and b!1510009 res!1029984) b!1510017))

(assert (= (and b!1510017 res!1029986) b!1510014))

(assert (= (and b!1510014 res!1029993) b!1510018))

(declare-fun m!1392609 () Bool)

(assert (=> b!1510015 m!1392609))

(assert (=> b!1510015 m!1392609))

(declare-fun m!1392611 () Bool)

(assert (=> b!1510015 m!1392611))

(declare-fun m!1392613 () Bool)

(assert (=> b!1510008 m!1392613))

(declare-fun m!1392615 () Bool)

(assert (=> b!1510016 m!1392615))

(assert (=> b!1510018 m!1392609))

(assert (=> b!1510018 m!1392609))

(declare-fun m!1392617 () Bool)

(assert (=> b!1510018 m!1392617))

(declare-fun m!1392619 () Bool)

(assert (=> start!128898 m!1392619))

(declare-fun m!1392621 () Bool)

(assert (=> start!128898 m!1392621))

(declare-fun m!1392623 () Bool)

(assert (=> b!1510014 m!1392623))

(declare-fun m!1392625 () Bool)

(assert (=> b!1510014 m!1392625))

(assert (=> b!1510009 m!1392609))

(assert (=> b!1510009 m!1392609))

(declare-fun m!1392627 () Bool)

(assert (=> b!1510009 m!1392627))

(declare-fun m!1392629 () Bool)

(assert (=> b!1510013 m!1392629))

(assert (=> b!1510013 m!1392629))

(declare-fun m!1392631 () Bool)

(assert (=> b!1510013 m!1392631))

(assert (=> b!1510011 m!1392609))

(assert (=> b!1510011 m!1392609))

(declare-fun m!1392633 () Bool)

(assert (=> b!1510011 m!1392633))

(assert (=> b!1510011 m!1392633))

(assert (=> b!1510011 m!1392609))

(declare-fun m!1392635 () Bool)

(assert (=> b!1510011 m!1392635))

(declare-fun m!1392637 () Bool)

(assert (=> b!1510017 m!1392637))

(declare-fun m!1392639 () Bool)

(assert (=> b!1510017 m!1392639))

(assert (=> b!1510017 m!1392639))

(declare-fun m!1392641 () Bool)

(assert (=> b!1510017 m!1392641))

(assert (=> b!1510017 m!1392641))

(assert (=> b!1510017 m!1392639))

(declare-fun m!1392643 () Bool)

(assert (=> b!1510017 m!1392643))

(check-sat (not b!1510008) (not b!1510011) (not b!1510018) (not b!1510014) (not b!1510013) (not b!1510015) (not b!1510017) (not b!1510009) (not start!128898) (not b!1510016))
(check-sat)
