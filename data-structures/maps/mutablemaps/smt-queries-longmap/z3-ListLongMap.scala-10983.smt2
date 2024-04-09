; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128694 () Bool)

(assert start!128694)

(declare-fun res!1028079 () Bool)

(declare-fun e!842484 () Bool)

(assert (=> start!128694 (=> (not res!1028079) (not e!842484))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128694 (= res!1028079 (validMask!0 mask!2512))))

(assert (=> start!128694 e!842484))

(assert (=> start!128694 true))

(declare-datatypes ((array!100541 0))(
  ( (array!100542 (arr!48506 (Array (_ BitVec 32) (_ BitVec 64))) (size!49057 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100541)

(declare-fun array_inv!37451 (array!100541) Bool)

(assert (=> start!128694 (array_inv!37451 a!2804)))

(declare-fun b!1507892 () Bool)

(declare-fun res!1028081 () Bool)

(assert (=> b!1507892 (=> (not res!1028081) (not e!842484))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507892 (= res!1028081 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49057 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49057 a!2804))))))

(declare-fun b!1507893 () Bool)

(declare-fun res!1028084 () Bool)

(declare-fun e!842485 () Bool)

(assert (=> b!1507893 (=> (not res!1028084) (not e!842485))))

(declare-datatypes ((SeekEntryResult!12698 0))(
  ( (MissingZero!12698 (index!53186 (_ BitVec 32))) (Found!12698 (index!53187 (_ BitVec 32))) (Intermediate!12698 (undefined!13510 Bool) (index!53188 (_ BitVec 32)) (x!134953 (_ BitVec 32))) (Undefined!12698) (MissingVacant!12698 (index!53189 (_ BitVec 32))) )
))
(declare-fun lt!654466 () SeekEntryResult!12698)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100541 (_ BitVec 32)) SeekEntryResult!12698)

(assert (=> b!1507893 (= res!1028084 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48506 a!2804) j!70) a!2804 mask!2512) lt!654466))))

(declare-fun b!1507894 () Bool)

(declare-fun res!1028080 () Bool)

(assert (=> b!1507894 (=> (not res!1028080) (not e!842484))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507894 (= res!1028080 (and (= (size!49057 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49057 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49057 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507895 () Bool)

(declare-fun res!1028077 () Bool)

(assert (=> b!1507895 (=> (not res!1028077) (not e!842484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100541 (_ BitVec 32)) Bool)

(assert (=> b!1507895 (= res!1028077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507896 () Bool)

(declare-fun res!1028083 () Bool)

(assert (=> b!1507896 (=> (not res!1028083) (not e!842484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507896 (= res!1028083 (validKeyInArray!0 (select (arr!48506 a!2804) j!70)))))

(declare-fun b!1507897 () Bool)

(assert (=> b!1507897 (= e!842484 e!842485)))

(declare-fun res!1028085 () Bool)

(assert (=> b!1507897 (=> (not res!1028085) (not e!842485))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507897 (= res!1028085 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48506 a!2804) j!70) mask!2512) (select (arr!48506 a!2804) j!70) a!2804 mask!2512) lt!654466))))

(assert (=> b!1507897 (= lt!654466 (Intermediate!12698 false resIndex!21 resX!21))))

(declare-fun b!1507898 () Bool)

(assert (=> b!1507898 (= e!842485 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun b!1507899 () Bool)

(declare-fun res!1028082 () Bool)

(assert (=> b!1507899 (=> (not res!1028082) (not e!842484))))

(assert (=> b!1507899 (= res!1028082 (validKeyInArray!0 (select (arr!48506 a!2804) i!961)))))

(declare-fun b!1507900 () Bool)

(declare-fun res!1028078 () Bool)

(assert (=> b!1507900 (=> (not res!1028078) (not e!842484))))

(declare-datatypes ((List!35169 0))(
  ( (Nil!35166) (Cons!35165 (h!36572 (_ BitVec 64)) (t!49870 List!35169)) )
))
(declare-fun arrayNoDuplicates!0 (array!100541 (_ BitVec 32) List!35169) Bool)

(assert (=> b!1507900 (= res!1028078 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35166))))

(assert (= (and start!128694 res!1028079) b!1507894))

(assert (= (and b!1507894 res!1028080) b!1507899))

(assert (= (and b!1507899 res!1028082) b!1507896))

(assert (= (and b!1507896 res!1028083) b!1507895))

(assert (= (and b!1507895 res!1028077) b!1507900))

(assert (= (and b!1507900 res!1028078) b!1507892))

(assert (= (and b!1507892 res!1028081) b!1507897))

(assert (= (and b!1507897 res!1028085) b!1507893))

(assert (= (and b!1507893 res!1028084) b!1507898))

(declare-fun m!1390567 () Bool)

(assert (=> start!128694 m!1390567))

(declare-fun m!1390569 () Bool)

(assert (=> start!128694 m!1390569))

(declare-fun m!1390571 () Bool)

(assert (=> b!1507897 m!1390571))

(assert (=> b!1507897 m!1390571))

(declare-fun m!1390573 () Bool)

(assert (=> b!1507897 m!1390573))

(assert (=> b!1507897 m!1390573))

(assert (=> b!1507897 m!1390571))

(declare-fun m!1390575 () Bool)

(assert (=> b!1507897 m!1390575))

(assert (=> b!1507896 m!1390571))

(assert (=> b!1507896 m!1390571))

(declare-fun m!1390577 () Bool)

(assert (=> b!1507896 m!1390577))

(declare-fun m!1390579 () Bool)

(assert (=> b!1507895 m!1390579))

(declare-fun m!1390581 () Bool)

(assert (=> b!1507899 m!1390581))

(assert (=> b!1507899 m!1390581))

(declare-fun m!1390583 () Bool)

(assert (=> b!1507899 m!1390583))

(declare-fun m!1390585 () Bool)

(assert (=> b!1507900 m!1390585))

(assert (=> b!1507893 m!1390571))

(assert (=> b!1507893 m!1390571))

(declare-fun m!1390587 () Bool)

(assert (=> b!1507893 m!1390587))

(check-sat (not b!1507893) (not b!1507899) (not b!1507895) (not b!1507896) (not b!1507897) (not start!128694) (not b!1507900))
(check-sat)
