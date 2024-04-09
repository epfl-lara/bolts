; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120818 () Bool)

(assert start!120818)

(declare-fun b!1405240 () Bool)

(declare-fun res!943567 () Bool)

(declare-fun e!795491 () Bool)

(assert (=> b!1405240 (=> (not res!943567) (not e!795491))))

(declare-datatypes ((array!96043 0))(
  ( (array!96044 (arr!46365 (Array (_ BitVec 32) (_ BitVec 64))) (size!46916 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96043)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405240 (= res!943567 (validKeyInArray!0 (select (arr!46365 a!2901) i!1037)))))

(declare-fun res!943570 () Bool)

(assert (=> start!120818 (=> (not res!943570) (not e!795491))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120818 (= res!943570 (validMask!0 mask!2840))))

(assert (=> start!120818 e!795491))

(assert (=> start!120818 true))

(declare-fun array_inv!35310 (array!96043) Bool)

(assert (=> start!120818 (array_inv!35310 a!2901)))

(declare-fun b!1405241 () Bool)

(declare-fun res!943566 () Bool)

(assert (=> b!1405241 (=> (not res!943566) (not e!795491))))

(declare-datatypes ((List!33064 0))(
  ( (Nil!33061) (Cons!33060 (h!34314 (_ BitVec 64)) (t!47765 List!33064)) )
))
(declare-fun arrayNoDuplicates!0 (array!96043 (_ BitVec 32) List!33064) Bool)

(assert (=> b!1405241 (= res!943566 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33061))))

(declare-fun b!1405242 () Bool)

(assert (=> b!1405242 (= e!795491 (not true))))

(declare-fun e!795490 () Bool)

(assert (=> b!1405242 e!795490))

(declare-fun res!943568 () Bool)

(assert (=> b!1405242 (=> (not res!943568) (not e!795490))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96043 (_ BitVec 32)) Bool)

(assert (=> b!1405242 (= res!943568 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47320 0))(
  ( (Unit!47321) )
))
(declare-fun lt!618934 () Unit!47320)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96043 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47320)

(assert (=> b!1405242 (= lt!618934 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10698 0))(
  ( (MissingZero!10698 (index!45168 (_ BitVec 32))) (Found!10698 (index!45169 (_ BitVec 32))) (Intermediate!10698 (undefined!11510 Bool) (index!45170 (_ BitVec 32)) (x!126788 (_ BitVec 32))) (Undefined!10698) (MissingVacant!10698 (index!45171 (_ BitVec 32))) )
))
(declare-fun lt!618933 () SeekEntryResult!10698)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96043 (_ BitVec 32)) SeekEntryResult!10698)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405242 (= lt!618933 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46365 a!2901) j!112) mask!2840) (select (arr!46365 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405243 () Bool)

(declare-fun res!943569 () Bool)

(assert (=> b!1405243 (=> (not res!943569) (not e!795491))))

(assert (=> b!1405243 (= res!943569 (and (= (size!46916 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46916 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46916 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405244 () Bool)

(declare-fun res!943571 () Bool)

(assert (=> b!1405244 (=> (not res!943571) (not e!795491))))

(assert (=> b!1405244 (= res!943571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405245 () Bool)

(declare-fun res!943572 () Bool)

(assert (=> b!1405245 (=> (not res!943572) (not e!795491))))

(assert (=> b!1405245 (= res!943572 (validKeyInArray!0 (select (arr!46365 a!2901) j!112)))))

(declare-fun b!1405246 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96043 (_ BitVec 32)) SeekEntryResult!10698)

(assert (=> b!1405246 (= e!795490 (= (seekEntryOrOpen!0 (select (arr!46365 a!2901) j!112) a!2901 mask!2840) (Found!10698 j!112)))))

(assert (= (and start!120818 res!943570) b!1405243))

(assert (= (and b!1405243 res!943569) b!1405240))

(assert (= (and b!1405240 res!943567) b!1405245))

(assert (= (and b!1405245 res!943572) b!1405244))

(assert (= (and b!1405244 res!943571) b!1405241))

(assert (= (and b!1405241 res!943566) b!1405242))

(assert (= (and b!1405242 res!943568) b!1405246))

(declare-fun m!1294053 () Bool)

(assert (=> b!1405244 m!1294053))

(declare-fun m!1294055 () Bool)

(assert (=> b!1405241 m!1294055))

(declare-fun m!1294057 () Bool)

(assert (=> b!1405240 m!1294057))

(assert (=> b!1405240 m!1294057))

(declare-fun m!1294059 () Bool)

(assert (=> b!1405240 m!1294059))

(declare-fun m!1294061 () Bool)

(assert (=> b!1405245 m!1294061))

(assert (=> b!1405245 m!1294061))

(declare-fun m!1294063 () Bool)

(assert (=> b!1405245 m!1294063))

(assert (=> b!1405246 m!1294061))

(assert (=> b!1405246 m!1294061))

(declare-fun m!1294065 () Bool)

(assert (=> b!1405246 m!1294065))

(declare-fun m!1294067 () Bool)

(assert (=> start!120818 m!1294067))

(declare-fun m!1294069 () Bool)

(assert (=> start!120818 m!1294069))

(assert (=> b!1405242 m!1294061))

(declare-fun m!1294071 () Bool)

(assert (=> b!1405242 m!1294071))

(assert (=> b!1405242 m!1294061))

(declare-fun m!1294073 () Bool)

(assert (=> b!1405242 m!1294073))

(assert (=> b!1405242 m!1294071))

(assert (=> b!1405242 m!1294061))

(declare-fun m!1294075 () Bool)

(assert (=> b!1405242 m!1294075))

(declare-fun m!1294077 () Bool)

(assert (=> b!1405242 m!1294077))

(push 1)

(assert (not b!1405244))

(assert (not start!120818))

(assert (not b!1405246))

(assert (not b!1405240))

(assert (not b!1405242))

(assert (not b!1405245))

(assert (not b!1405241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

