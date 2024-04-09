; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128846 () Bool)

(assert start!128846)

(declare-fun b!1509197 () Bool)

(declare-fun res!1029177 () Bool)

(declare-fun e!843047 () Bool)

(assert (=> b!1509197 (=> (not res!1029177) (not e!843047))))

(declare-datatypes ((array!100615 0))(
  ( (array!100616 (arr!48540 (Array (_ BitVec 32) (_ BitVec 64))) (size!49091 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100615)

(declare-datatypes ((List!35203 0))(
  ( (Nil!35200) (Cons!35199 (h!36612 (_ BitVec 64)) (t!49904 List!35203)) )
))
(declare-fun arrayNoDuplicates!0 (array!100615 (_ BitVec 32) List!35203) Bool)

(assert (=> b!1509197 (= res!1029177 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35200))))

(declare-fun b!1509198 () Bool)

(declare-fun res!1029175 () Bool)

(assert (=> b!1509198 (=> (not res!1029175) (not e!843047))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509198 (= res!1029175 (validKeyInArray!0 (select (arr!48540 a!2804) i!961)))))

(declare-fun res!1029176 () Bool)

(assert (=> start!128846 (=> (not res!1029176) (not e!843047))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128846 (= res!1029176 (validMask!0 mask!2512))))

(assert (=> start!128846 e!843047))

(assert (=> start!128846 true))

(declare-fun array_inv!37485 (array!100615) Bool)

(assert (=> start!128846 (array_inv!37485 a!2804)))

(declare-fun b!1509199 () Bool)

(declare-fun res!1029173 () Bool)

(assert (=> b!1509199 (=> (not res!1029173) (not e!843047))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509199 (= res!1029173 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49091 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49091 a!2804))))))

(declare-fun b!1509200 () Bool)

(declare-fun res!1029179 () Bool)

(assert (=> b!1509200 (=> (not res!1029179) (not e!843047))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1509200 (= res!1029179 (and (= (size!49091 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49091 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49091 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509201 () Bool)

(declare-fun e!843045 () Bool)

(assert (=> b!1509201 (= e!843045 false)))

(declare-datatypes ((SeekEntryResult!12732 0))(
  ( (MissingZero!12732 (index!53322 (_ BitVec 32))) (Found!12732 (index!53323 (_ BitVec 32))) (Intermediate!12732 (undefined!13544 Bool) (index!53324 (_ BitVec 32)) (x!135087 (_ BitVec 32))) (Undefined!12732) (MissingVacant!12732 (index!53325 (_ BitVec 32))) )
))
(declare-fun lt!654801 () SeekEntryResult!12732)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100615 (_ BitVec 32)) SeekEntryResult!12732)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509201 (= lt!654801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48540 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48540 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100616 (store (arr!48540 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49091 a!2804)) mask!2512))))

(declare-fun b!1509202 () Bool)

(assert (=> b!1509202 (= e!843047 e!843045)))

(declare-fun res!1029180 () Bool)

(assert (=> b!1509202 (=> (not res!1029180) (not e!843045))))

(declare-fun lt!654802 () SeekEntryResult!12732)

(assert (=> b!1509202 (= res!1029180 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48540 a!2804) j!70) mask!2512) (select (arr!48540 a!2804) j!70) a!2804 mask!2512) lt!654802))))

(assert (=> b!1509202 (= lt!654802 (Intermediate!12732 false resIndex!21 resX!21))))

(declare-fun b!1509203 () Bool)

(declare-fun res!1029178 () Bool)

(assert (=> b!1509203 (=> (not res!1029178) (not e!843047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100615 (_ BitVec 32)) Bool)

(assert (=> b!1509203 (= res!1029178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509204 () Bool)

(declare-fun res!1029174 () Bool)

(assert (=> b!1509204 (=> (not res!1029174) (not e!843045))))

(assert (=> b!1509204 (= res!1029174 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48540 a!2804) j!70) a!2804 mask!2512) lt!654802))))

(declare-fun b!1509205 () Bool)

(declare-fun res!1029172 () Bool)

(assert (=> b!1509205 (=> (not res!1029172) (not e!843047))))

(assert (=> b!1509205 (= res!1029172 (validKeyInArray!0 (select (arr!48540 a!2804) j!70)))))

(assert (= (and start!128846 res!1029176) b!1509200))

(assert (= (and b!1509200 res!1029179) b!1509198))

(assert (= (and b!1509198 res!1029175) b!1509205))

(assert (= (and b!1509205 res!1029172) b!1509203))

(assert (= (and b!1509203 res!1029178) b!1509197))

(assert (= (and b!1509197 res!1029177) b!1509199))

(assert (= (and b!1509199 res!1029173) b!1509202))

(assert (= (and b!1509202 res!1029180) b!1509204))

(assert (= (and b!1509204 res!1029174) b!1509201))

(declare-fun m!1391709 () Bool)

(assert (=> b!1509202 m!1391709))

(assert (=> b!1509202 m!1391709))

(declare-fun m!1391711 () Bool)

(assert (=> b!1509202 m!1391711))

(assert (=> b!1509202 m!1391711))

(assert (=> b!1509202 m!1391709))

(declare-fun m!1391713 () Bool)

(assert (=> b!1509202 m!1391713))

(assert (=> b!1509204 m!1391709))

(assert (=> b!1509204 m!1391709))

(declare-fun m!1391715 () Bool)

(assert (=> b!1509204 m!1391715))

(declare-fun m!1391717 () Bool)

(assert (=> start!128846 m!1391717))

(declare-fun m!1391719 () Bool)

(assert (=> start!128846 m!1391719))

(declare-fun m!1391721 () Bool)

(assert (=> b!1509197 m!1391721))

(declare-fun m!1391723 () Bool)

(assert (=> b!1509201 m!1391723))

(declare-fun m!1391725 () Bool)

(assert (=> b!1509201 m!1391725))

(assert (=> b!1509201 m!1391725))

(declare-fun m!1391727 () Bool)

(assert (=> b!1509201 m!1391727))

(assert (=> b!1509201 m!1391727))

(assert (=> b!1509201 m!1391725))

(declare-fun m!1391729 () Bool)

(assert (=> b!1509201 m!1391729))

(assert (=> b!1509205 m!1391709))

(assert (=> b!1509205 m!1391709))

(declare-fun m!1391731 () Bool)

(assert (=> b!1509205 m!1391731))

(declare-fun m!1391733 () Bool)

(assert (=> b!1509203 m!1391733))

(declare-fun m!1391735 () Bool)

(assert (=> b!1509198 m!1391735))

(assert (=> b!1509198 m!1391735))

(declare-fun m!1391737 () Bool)

(assert (=> b!1509198 m!1391737))

(push 1)

(assert (not b!1509203))

