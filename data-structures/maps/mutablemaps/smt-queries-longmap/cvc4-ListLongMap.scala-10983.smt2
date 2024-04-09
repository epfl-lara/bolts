; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128696 () Bool)

(assert start!128696)

(declare-fun b!1507919 () Bool)

(declare-fun res!1028105 () Bool)

(declare-fun e!842493 () Bool)

(assert (=> b!1507919 (=> (not res!1028105) (not e!842493))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100543 0))(
  ( (array!100544 (arr!48507 (Array (_ BitVec 32) (_ BitVec 64))) (size!49058 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100543)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507919 (= res!1028105 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49058 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49058 a!2804))))))

(declare-fun b!1507920 () Bool)

(declare-fun res!1028108 () Bool)

(assert (=> b!1507920 (=> (not res!1028108) (not e!842493))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507920 (= res!1028108 (validKeyInArray!0 (select (arr!48507 a!2804) j!70)))))

(declare-fun b!1507921 () Bool)

(declare-fun e!842494 () Bool)

(assert (=> b!1507921 (= e!842493 e!842494)))

(declare-fun res!1028111 () Bool)

(assert (=> b!1507921 (=> (not res!1028111) (not e!842494))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12699 0))(
  ( (MissingZero!12699 (index!53190 (_ BitVec 32))) (Found!12699 (index!53191 (_ BitVec 32))) (Intermediate!12699 (undefined!13511 Bool) (index!53192 (_ BitVec 32)) (x!134954 (_ BitVec 32))) (Undefined!12699) (MissingVacant!12699 (index!53193 (_ BitVec 32))) )
))
(declare-fun lt!654469 () SeekEntryResult!12699)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100543 (_ BitVec 32)) SeekEntryResult!12699)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507921 (= res!1028111 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48507 a!2804) j!70) mask!2512) (select (arr!48507 a!2804) j!70) a!2804 mask!2512) lt!654469))))

(assert (=> b!1507921 (= lt!654469 (Intermediate!12699 false resIndex!21 resX!21))))

(declare-fun b!1507922 () Bool)

(declare-fun res!1028109 () Bool)

(assert (=> b!1507922 (=> (not res!1028109) (not e!842493))))

(declare-datatypes ((List!35170 0))(
  ( (Nil!35167) (Cons!35166 (h!36573 (_ BitVec 64)) (t!49871 List!35170)) )
))
(declare-fun arrayNoDuplicates!0 (array!100543 (_ BitVec 32) List!35170) Bool)

(assert (=> b!1507922 (= res!1028109 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35167))))

(declare-fun b!1507923 () Bool)

(assert (=> b!1507923 (= e!842494 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun res!1028107 () Bool)

(assert (=> start!128696 (=> (not res!1028107) (not e!842493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128696 (= res!1028107 (validMask!0 mask!2512))))

(assert (=> start!128696 e!842493))

(assert (=> start!128696 true))

(declare-fun array_inv!37452 (array!100543) Bool)

(assert (=> start!128696 (array_inv!37452 a!2804)))

(declare-fun b!1507924 () Bool)

(declare-fun res!1028106 () Bool)

(assert (=> b!1507924 (=> (not res!1028106) (not e!842493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100543 (_ BitVec 32)) Bool)

(assert (=> b!1507924 (= res!1028106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507925 () Bool)

(declare-fun res!1028104 () Bool)

(assert (=> b!1507925 (=> (not res!1028104) (not e!842493))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507925 (= res!1028104 (validKeyInArray!0 (select (arr!48507 a!2804) i!961)))))

(declare-fun b!1507926 () Bool)

(declare-fun res!1028112 () Bool)

(assert (=> b!1507926 (=> (not res!1028112) (not e!842493))))

(assert (=> b!1507926 (= res!1028112 (and (= (size!49058 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49058 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49058 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507927 () Bool)

(declare-fun res!1028110 () Bool)

(assert (=> b!1507927 (=> (not res!1028110) (not e!842494))))

(assert (=> b!1507927 (= res!1028110 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48507 a!2804) j!70) a!2804 mask!2512) lt!654469))))

(assert (= (and start!128696 res!1028107) b!1507926))

(assert (= (and b!1507926 res!1028112) b!1507925))

(assert (= (and b!1507925 res!1028104) b!1507920))

(assert (= (and b!1507920 res!1028108) b!1507924))

(assert (= (and b!1507924 res!1028106) b!1507922))

(assert (= (and b!1507922 res!1028109) b!1507919))

(assert (= (and b!1507919 res!1028105) b!1507921))

(assert (= (and b!1507921 res!1028111) b!1507927))

(assert (= (and b!1507927 res!1028110) b!1507923))

(declare-fun m!1390589 () Bool)

(assert (=> start!128696 m!1390589))

(declare-fun m!1390591 () Bool)

(assert (=> start!128696 m!1390591))

(declare-fun m!1390593 () Bool)

(assert (=> b!1507920 m!1390593))

(assert (=> b!1507920 m!1390593))

(declare-fun m!1390595 () Bool)

(assert (=> b!1507920 m!1390595))

(declare-fun m!1390597 () Bool)

(assert (=> b!1507922 m!1390597))

(declare-fun m!1390599 () Bool)

(assert (=> b!1507925 m!1390599))

(assert (=> b!1507925 m!1390599))

(declare-fun m!1390601 () Bool)

(assert (=> b!1507925 m!1390601))

(declare-fun m!1390603 () Bool)

(assert (=> b!1507924 m!1390603))

(assert (=> b!1507921 m!1390593))

(assert (=> b!1507921 m!1390593))

(declare-fun m!1390605 () Bool)

(assert (=> b!1507921 m!1390605))

(assert (=> b!1507921 m!1390605))

(assert (=> b!1507921 m!1390593))

(declare-fun m!1390607 () Bool)

(assert (=> b!1507921 m!1390607))

(assert (=> b!1507927 m!1390593))

(assert (=> b!1507927 m!1390593))

(declare-fun m!1390609 () Bool)

(assert (=> b!1507927 m!1390609))

(push 1)

(assert (not b!1507920))

(assert (not b!1507925))

(assert (not start!128696))

(assert (not b!1507924))

(assert (not b!1507927))

(assert (not b!1507921))

(assert (not b!1507922))

(check-sat)

(pop 1)

