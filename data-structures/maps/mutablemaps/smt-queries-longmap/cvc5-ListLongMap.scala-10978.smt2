; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128620 () Bool)

(assert start!128620)

(declare-fun b!1507298 () Bool)

(declare-fun res!1027593 () Bool)

(declare-fun e!842246 () Bool)

(assert (=> b!1507298 (=> (not res!1027593) (not e!842246))))

(declare-datatypes ((array!100506 0))(
  ( (array!100507 (arr!48490 (Array (_ BitVec 32) (_ BitVec 64))) (size!49041 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100506)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507298 (= res!1027593 (validKeyInArray!0 (select (arr!48490 a!2804) i!961)))))

(declare-fun b!1507299 () Bool)

(declare-fun e!842244 () Bool)

(assert (=> b!1507299 (= e!842246 e!842244)))

(declare-fun res!1027589 () Bool)

(assert (=> b!1507299 (=> (not res!1027589) (not e!842244))))

(declare-datatypes ((SeekEntryResult!12682 0))(
  ( (MissingZero!12682 (index!53122 (_ BitVec 32))) (Found!12682 (index!53123 (_ BitVec 32))) (Intermediate!12682 (undefined!13494 Bool) (index!53124 (_ BitVec 32)) (x!134891 (_ BitVec 32))) (Undefined!12682) (MissingVacant!12682 (index!53125 (_ BitVec 32))) )
))
(declare-fun lt!654340 () SeekEntryResult!12682)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100506 (_ BitVec 32)) SeekEntryResult!12682)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507299 (= res!1027589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48490 a!2804) j!70) mask!2512) (select (arr!48490 a!2804) j!70) a!2804 mask!2512) lt!654340))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1507299 (= lt!654340 (Intermediate!12682 false resIndex!21 resX!21))))

(declare-fun b!1507300 () Bool)

(declare-fun res!1027592 () Bool)

(assert (=> b!1507300 (=> (not res!1027592) (not e!842246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100506 (_ BitVec 32)) Bool)

(assert (=> b!1507300 (= res!1027592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507301 () Bool)

(declare-fun res!1027596 () Bool)

(assert (=> b!1507301 (=> (not res!1027596) (not e!842246))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1507301 (= res!1027596 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49041 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49041 a!2804))))))

(declare-fun res!1027588 () Bool)

(assert (=> start!128620 (=> (not res!1027588) (not e!842246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128620 (= res!1027588 (validMask!0 mask!2512))))

(assert (=> start!128620 e!842246))

(assert (=> start!128620 true))

(declare-fun array_inv!37435 (array!100506) Bool)

(assert (=> start!128620 (array_inv!37435 a!2804)))

(declare-fun b!1507302 () Bool)

(declare-fun res!1027591 () Bool)

(assert (=> b!1507302 (=> (not res!1027591) (not e!842244))))

(assert (=> b!1507302 (= res!1027591 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48490 a!2804) j!70) a!2804 mask!2512) lt!654340))))

(declare-fun b!1507303 () Bool)

(declare-fun res!1027594 () Bool)

(assert (=> b!1507303 (=> (not res!1027594) (not e!842246))))

(assert (=> b!1507303 (= res!1027594 (validKeyInArray!0 (select (arr!48490 a!2804) j!70)))))

(declare-fun b!1507304 () Bool)

(declare-fun res!1027590 () Bool)

(assert (=> b!1507304 (=> (not res!1027590) (not e!842246))))

(declare-datatypes ((List!35153 0))(
  ( (Nil!35150) (Cons!35149 (h!36553 (_ BitVec 64)) (t!49854 List!35153)) )
))
(declare-fun arrayNoDuplicates!0 (array!100506 (_ BitVec 32) List!35153) Bool)

(assert (=> b!1507304 (= res!1027590 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35150))))

(declare-fun b!1507305 () Bool)

(declare-fun res!1027595 () Bool)

(assert (=> b!1507305 (=> (not res!1027595) (not e!842246))))

(assert (=> b!1507305 (= res!1027595 (and (= (size!49041 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49041 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49041 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507306 () Bool)

(assert (=> b!1507306 (= e!842244 (bvslt mask!2512 #b00000000000000000000000000000000))))

(assert (= (and start!128620 res!1027588) b!1507305))

(assert (= (and b!1507305 res!1027595) b!1507298))

(assert (= (and b!1507298 res!1027593) b!1507303))

(assert (= (and b!1507303 res!1027594) b!1507300))

(assert (= (and b!1507300 res!1027592) b!1507304))

(assert (= (and b!1507304 res!1027590) b!1507301))

(assert (= (and b!1507301 res!1027596) b!1507299))

(assert (= (and b!1507299 res!1027589) b!1507302))

(assert (= (and b!1507302 res!1027591) b!1507306))

(declare-fun m!1390119 () Bool)

(assert (=> b!1507300 m!1390119))

(declare-fun m!1390121 () Bool)

(assert (=> start!128620 m!1390121))

(declare-fun m!1390123 () Bool)

(assert (=> start!128620 m!1390123))

(declare-fun m!1390125 () Bool)

(assert (=> b!1507298 m!1390125))

(assert (=> b!1507298 m!1390125))

(declare-fun m!1390127 () Bool)

(assert (=> b!1507298 m!1390127))

(declare-fun m!1390129 () Bool)

(assert (=> b!1507302 m!1390129))

(assert (=> b!1507302 m!1390129))

(declare-fun m!1390131 () Bool)

(assert (=> b!1507302 m!1390131))

(assert (=> b!1507299 m!1390129))

(assert (=> b!1507299 m!1390129))

(declare-fun m!1390133 () Bool)

(assert (=> b!1507299 m!1390133))

(assert (=> b!1507299 m!1390133))

(assert (=> b!1507299 m!1390129))

(declare-fun m!1390135 () Bool)

(assert (=> b!1507299 m!1390135))

(assert (=> b!1507303 m!1390129))

(assert (=> b!1507303 m!1390129))

(declare-fun m!1390137 () Bool)

(assert (=> b!1507303 m!1390137))

(declare-fun m!1390139 () Bool)

(assert (=> b!1507304 m!1390139))

(push 1)

