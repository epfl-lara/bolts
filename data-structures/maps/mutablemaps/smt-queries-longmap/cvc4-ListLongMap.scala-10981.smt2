; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128684 () Bool)

(assert start!128684)

(declare-fun b!1507767 () Bool)

(declare-fun res!1027957 () Bool)

(declare-fun e!842449 () Bool)

(assert (=> b!1507767 (=> (not res!1027957) (not e!842449))))

(declare-datatypes ((array!100531 0))(
  ( (array!100532 (arr!48501 (Array (_ BitVec 32) (_ BitVec 64))) (size!49052 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100531)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507767 (= res!1027957 (validKeyInArray!0 (select (arr!48501 a!2804) j!70)))))

(declare-fun b!1507768 () Bool)

(declare-fun res!1027959 () Bool)

(assert (=> b!1507768 (=> (not res!1027959) (not e!842449))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507768 (= res!1027959 (validKeyInArray!0 (select (arr!48501 a!2804) i!961)))))

(declare-fun b!1507770 () Bool)

(declare-fun res!1027952 () Bool)

(assert (=> b!1507770 (=> (not res!1027952) (not e!842449))))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1507770 (= res!1027952 (and (= (size!49052 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49052 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49052 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507771 () Bool)

(declare-fun res!1027955 () Bool)

(assert (=> b!1507771 (=> (not res!1027955) (not e!842449))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507771 (= res!1027955 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49052 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49052 a!2804))))))

(declare-fun b!1507772 () Bool)

(declare-fun res!1027958 () Bool)

(assert (=> b!1507772 (=> (not res!1027958) (not e!842449))))

(declare-datatypes ((SeekEntryResult!12693 0))(
  ( (MissingZero!12693 (index!53166 (_ BitVec 32))) (Found!12693 (index!53167 (_ BitVec 32))) (Intermediate!12693 (undefined!13505 Bool) (index!53168 (_ BitVec 32)) (x!134932 (_ BitVec 32))) (Undefined!12693) (MissingVacant!12693 (index!53169 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100531 (_ BitVec 32)) SeekEntryResult!12693)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507772 (= res!1027958 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48501 a!2804) j!70) mask!2512) (select (arr!48501 a!2804) j!70) a!2804 mask!2512) (Intermediate!12693 false resIndex!21 resX!21)))))

(declare-fun b!1507773 () Bool)

(assert (=> b!1507773 (= e!842449 false)))

(declare-fun lt!654451 () SeekEntryResult!12693)

(assert (=> b!1507773 (= lt!654451 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48501 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507774 () Bool)

(declare-fun res!1027954 () Bool)

(assert (=> b!1507774 (=> (not res!1027954) (not e!842449))))

(declare-datatypes ((List!35164 0))(
  ( (Nil!35161) (Cons!35160 (h!36567 (_ BitVec 64)) (t!49865 List!35164)) )
))
(declare-fun arrayNoDuplicates!0 (array!100531 (_ BitVec 32) List!35164) Bool)

(assert (=> b!1507774 (= res!1027954 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35161))))

(declare-fun res!1027953 () Bool)

(assert (=> start!128684 (=> (not res!1027953) (not e!842449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128684 (= res!1027953 (validMask!0 mask!2512))))

(assert (=> start!128684 e!842449))

(assert (=> start!128684 true))

(declare-fun array_inv!37446 (array!100531) Bool)

(assert (=> start!128684 (array_inv!37446 a!2804)))

(declare-fun b!1507769 () Bool)

(declare-fun res!1027956 () Bool)

(assert (=> b!1507769 (=> (not res!1027956) (not e!842449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100531 (_ BitVec 32)) Bool)

(assert (=> b!1507769 (= res!1027956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128684 res!1027953) b!1507770))

(assert (= (and b!1507770 res!1027952) b!1507768))

(assert (= (and b!1507768 res!1027959) b!1507767))

(assert (= (and b!1507767 res!1027957) b!1507769))

(assert (= (and b!1507769 res!1027956) b!1507774))

(assert (= (and b!1507774 res!1027954) b!1507771))

(assert (= (and b!1507771 res!1027955) b!1507772))

(assert (= (and b!1507772 res!1027958) b!1507773))

(declare-fun m!1390457 () Bool)

(assert (=> b!1507774 m!1390457))

(declare-fun m!1390459 () Bool)

(assert (=> b!1507772 m!1390459))

(assert (=> b!1507772 m!1390459))

(declare-fun m!1390461 () Bool)

(assert (=> b!1507772 m!1390461))

(assert (=> b!1507772 m!1390461))

(assert (=> b!1507772 m!1390459))

(declare-fun m!1390463 () Bool)

(assert (=> b!1507772 m!1390463))

(declare-fun m!1390465 () Bool)

(assert (=> start!128684 m!1390465))

(declare-fun m!1390467 () Bool)

(assert (=> start!128684 m!1390467))

(declare-fun m!1390469 () Bool)

(assert (=> b!1507768 m!1390469))

(assert (=> b!1507768 m!1390469))

(declare-fun m!1390471 () Bool)

(assert (=> b!1507768 m!1390471))

(assert (=> b!1507767 m!1390459))

(assert (=> b!1507767 m!1390459))

(declare-fun m!1390473 () Bool)

(assert (=> b!1507767 m!1390473))

(declare-fun m!1390475 () Bool)

(assert (=> b!1507769 m!1390475))

(assert (=> b!1507773 m!1390459))

(assert (=> b!1507773 m!1390459))

(declare-fun m!1390477 () Bool)

(assert (=> b!1507773 m!1390477))

(push 1)

(assert (not b!1507767))

(assert (not b!1507773))

(assert (not b!1507772))

(assert (not start!128684))

(assert (not b!1507769))

(assert (not b!1507768))

(assert (not b!1507774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

