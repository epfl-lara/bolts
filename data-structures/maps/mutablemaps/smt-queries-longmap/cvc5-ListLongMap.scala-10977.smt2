; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128614 () Bool)

(assert start!128614)

(declare-fun b!1507224 () Bool)

(declare-fun res!1027515 () Bool)

(declare-fun e!842225 () Bool)

(assert (=> b!1507224 (=> (not res!1027515) (not e!842225))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100500 0))(
  ( (array!100501 (arr!48487 (Array (_ BitVec 32) (_ BitVec 64))) (size!49038 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100500)

(assert (=> b!1507224 (= res!1027515 (and (= (size!49038 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49038 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49038 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507225 () Bool)

(declare-fun res!1027519 () Bool)

(assert (=> b!1507225 (=> (not res!1027519) (not e!842225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507225 (= res!1027519 (validKeyInArray!0 (select (arr!48487 a!2804) i!961)))))

(declare-fun res!1027521 () Bool)

(assert (=> start!128614 (=> (not res!1027521) (not e!842225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128614 (= res!1027521 (validMask!0 mask!2512))))

(assert (=> start!128614 e!842225))

(assert (=> start!128614 true))

(declare-fun array_inv!37432 (array!100500) Bool)

(assert (=> start!128614 (array_inv!37432 a!2804)))

(declare-fun b!1507226 () Bool)

(declare-fun res!1027520 () Bool)

(assert (=> b!1507226 (=> (not res!1027520) (not e!842225))))

(declare-datatypes ((List!35150 0))(
  ( (Nil!35147) (Cons!35146 (h!36550 (_ BitVec 64)) (t!49851 List!35150)) )
))
(declare-fun arrayNoDuplicates!0 (array!100500 (_ BitVec 32) List!35150) Bool)

(assert (=> b!1507226 (= res!1027520 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35147))))

(declare-fun b!1507227 () Bool)

(declare-fun res!1027517 () Bool)

(assert (=> b!1507227 (=> (not res!1027517) (not e!842225))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100500 (_ BitVec 32)) Bool)

(assert (=> b!1507227 (= res!1027517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507228 () Bool)

(declare-fun res!1027518 () Bool)

(assert (=> b!1507228 (=> (not res!1027518) (not e!842225))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12679 0))(
  ( (MissingZero!12679 (index!53110 (_ BitVec 32))) (Found!12679 (index!53111 (_ BitVec 32))) (Intermediate!12679 (undefined!13491 Bool) (index!53112 (_ BitVec 32)) (x!134880 (_ BitVec 32))) (Undefined!12679) (MissingVacant!12679 (index!53113 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100500 (_ BitVec 32)) SeekEntryResult!12679)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507228 (= res!1027518 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48487 a!2804) j!70) mask!2512) (select (arr!48487 a!2804) j!70) a!2804 mask!2512) (Intermediate!12679 false resIndex!21 resX!21)))))

(declare-fun b!1507229 () Bool)

(declare-fun res!1027514 () Bool)

(assert (=> b!1507229 (=> (not res!1027514) (not e!842225))))

(assert (=> b!1507229 (= res!1027514 (validKeyInArray!0 (select (arr!48487 a!2804) j!70)))))

(declare-fun b!1507230 () Bool)

(assert (=> b!1507230 (= e!842225 false)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!654331 () SeekEntryResult!12679)

(assert (=> b!1507230 (= lt!654331 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48487 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507231 () Bool)

(declare-fun res!1027516 () Bool)

(assert (=> b!1507231 (=> (not res!1027516) (not e!842225))))

(assert (=> b!1507231 (= res!1027516 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49038 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49038 a!2804))))))

(assert (= (and start!128614 res!1027521) b!1507224))

(assert (= (and b!1507224 res!1027515) b!1507225))

(assert (= (and b!1507225 res!1027519) b!1507229))

(assert (= (and b!1507229 res!1027514) b!1507227))

(assert (= (and b!1507227 res!1027517) b!1507226))

(assert (= (and b!1507226 res!1027520) b!1507231))

(assert (= (and b!1507231 res!1027516) b!1507228))

(assert (= (and b!1507228 res!1027518) b!1507230))

(declare-fun m!1390053 () Bool)

(assert (=> b!1507229 m!1390053))

(assert (=> b!1507229 m!1390053))

(declare-fun m!1390055 () Bool)

(assert (=> b!1507229 m!1390055))

(declare-fun m!1390057 () Bool)

(assert (=> b!1507225 m!1390057))

(assert (=> b!1507225 m!1390057))

(declare-fun m!1390059 () Bool)

(assert (=> b!1507225 m!1390059))

(declare-fun m!1390061 () Bool)

(assert (=> b!1507227 m!1390061))

(declare-fun m!1390063 () Bool)

(assert (=> b!1507226 m!1390063))

(assert (=> b!1507228 m!1390053))

(assert (=> b!1507228 m!1390053))

(declare-fun m!1390065 () Bool)

(assert (=> b!1507228 m!1390065))

(assert (=> b!1507228 m!1390065))

(assert (=> b!1507228 m!1390053))

(declare-fun m!1390067 () Bool)

(assert (=> b!1507228 m!1390067))

(declare-fun m!1390069 () Bool)

(assert (=> start!128614 m!1390069))

(declare-fun m!1390071 () Bool)

(assert (=> start!128614 m!1390071))

(assert (=> b!1507230 m!1390053))

(assert (=> b!1507230 m!1390053))

(declare-fun m!1390073 () Bool)

(assert (=> b!1507230 m!1390073))

(push 1)

(assert (not b!1507228))

(assert (not b!1507226))

(assert (not b!1507229))

(assert (not start!128614))

(assert (not b!1507227))

(assert (not b!1507225))

(assert (not b!1507230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

