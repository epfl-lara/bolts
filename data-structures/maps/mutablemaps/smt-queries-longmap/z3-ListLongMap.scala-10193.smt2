; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120126 () Bool)

(assert start!120126)

(declare-fun res!937065 () Bool)

(declare-fun e!791491 () Bool)

(assert (=> start!120126 (=> (not res!937065) (not e!791491))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120126 (= res!937065 (validMask!0 mask!2840))))

(assert (=> start!120126 e!791491))

(assert (=> start!120126 true))

(declare-datatypes ((array!95573 0))(
  ( (array!95574 (arr!46136 (Array (_ BitVec 32) (_ BitVec 64))) (size!46687 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95573)

(declare-fun array_inv!35081 (array!95573) Bool)

(assert (=> start!120126 (array_inv!35081 a!2901)))

(declare-fun b!1398035 () Bool)

(declare-fun res!937062 () Bool)

(assert (=> b!1398035 (=> (not res!937062) (not e!791491))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398035 (= res!937062 (validKeyInArray!0 (select (arr!46136 a!2901) j!112)))))

(declare-fun b!1398036 () Bool)

(declare-fun res!937063 () Bool)

(assert (=> b!1398036 (=> (not res!937063) (not e!791491))))

(declare-datatypes ((List!32835 0))(
  ( (Nil!32832) (Cons!32831 (h!34073 (_ BitVec 64)) (t!47536 List!32835)) )
))
(declare-fun arrayNoDuplicates!0 (array!95573 (_ BitVec 32) List!32835) Bool)

(assert (=> b!1398036 (= res!937063 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32832))))

(declare-fun b!1398037 () Bool)

(declare-fun res!937061 () Bool)

(assert (=> b!1398037 (=> (not res!937061) (not e!791491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95573 (_ BitVec 32)) Bool)

(assert (=> b!1398037 (= res!937061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398038 () Bool)

(declare-fun res!937058 () Bool)

(assert (=> b!1398038 (=> (not res!937058) (not e!791491))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1398038 (= res!937058 (validKeyInArray!0 (select (arr!46136 a!2901) i!1037)))))

(declare-fun b!1398039 () Bool)

(declare-fun res!937059 () Bool)

(assert (=> b!1398039 (=> (not res!937059) (not e!791491))))

(assert (=> b!1398039 (= res!937059 (and (= (size!46687 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46687 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46687 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398040 () Bool)

(declare-fun e!791493 () Bool)

(declare-fun e!791495 () Bool)

(assert (=> b!1398040 (= e!791493 e!791495)))

(declare-fun res!937057 () Bool)

(assert (=> b!1398040 (=> res!937057 e!791495)))

(declare-datatypes ((SeekEntryResult!10475 0))(
  ( (MissingZero!10475 (index!44270 (_ BitVec 32))) (Found!10475 (index!44271 (_ BitVec 32))) (Intermediate!10475 (undefined!11287 Bool) (index!44272 (_ BitVec 32)) (x!125924 (_ BitVec 32))) (Undefined!10475) (MissingVacant!10475 (index!44273 (_ BitVec 32))) )
))
(declare-fun lt!614660 () SeekEntryResult!10475)

(declare-fun lt!614662 () SeekEntryResult!10475)

(get-info :version)

(assert (=> b!1398040 (= res!937057 (or (= lt!614660 lt!614662) (not ((_ is Intermediate!10475) lt!614662))))))

(declare-fun lt!614658 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95573 (_ BitVec 32)) SeekEntryResult!10475)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398040 (= lt!614662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614658 mask!2840) lt!614658 (array!95574 (store (arr!46136 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46687 a!2901)) mask!2840))))

(assert (=> b!1398040 (= lt!614658 (select (store (arr!46136 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398041 () Bool)

(assert (=> b!1398041 (= e!791491 (not e!791493))))

(declare-fun res!937064 () Bool)

(assert (=> b!1398041 (=> res!937064 e!791493)))

(assert (=> b!1398041 (= res!937064 (or (not ((_ is Intermediate!10475) lt!614660)) (undefined!11287 lt!614660)))))

(declare-fun e!791494 () Bool)

(assert (=> b!1398041 e!791494))

(declare-fun res!937060 () Bool)

(assert (=> b!1398041 (=> (not res!937060) (not e!791494))))

(assert (=> b!1398041 (= res!937060 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46904 0))(
  ( (Unit!46905) )
))
(declare-fun lt!614657 () Unit!46904)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95573 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46904)

(assert (=> b!1398041 (= lt!614657 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614659 () (_ BitVec 32))

(assert (=> b!1398041 (= lt!614660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614659 (select (arr!46136 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398041 (= lt!614659 (toIndex!0 (select (arr!46136 a!2901) j!112) mask!2840))))

(declare-fun b!1398042 () Bool)

(assert (=> b!1398042 (= e!791495 (bvsge mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1398042 (and (not (undefined!11287 lt!614662)) (= (index!44272 lt!614662) i!1037) (bvslt (x!125924 lt!614662) (x!125924 lt!614660)) (= (select (store (arr!46136 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44272 lt!614662)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614661 () Unit!46904)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95573 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46904)

(assert (=> b!1398042 (= lt!614661 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614659 (x!125924 lt!614660) (index!44272 lt!614660) (x!125924 lt!614662) (index!44272 lt!614662) (undefined!11287 lt!614662) mask!2840))))

(declare-fun b!1398043 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95573 (_ BitVec 32)) SeekEntryResult!10475)

(assert (=> b!1398043 (= e!791494 (= (seekEntryOrOpen!0 (select (arr!46136 a!2901) j!112) a!2901 mask!2840) (Found!10475 j!112)))))

(assert (= (and start!120126 res!937065) b!1398039))

(assert (= (and b!1398039 res!937059) b!1398038))

(assert (= (and b!1398038 res!937058) b!1398035))

(assert (= (and b!1398035 res!937062) b!1398037))

(assert (= (and b!1398037 res!937061) b!1398036))

(assert (= (and b!1398036 res!937063) b!1398041))

(assert (= (and b!1398041 res!937060) b!1398043))

(assert (= (and b!1398041 (not res!937064)) b!1398040))

(assert (= (and b!1398040 (not res!937057)) b!1398042))

(declare-fun m!1285099 () Bool)

(assert (=> b!1398041 m!1285099))

(declare-fun m!1285101 () Bool)

(assert (=> b!1398041 m!1285101))

(assert (=> b!1398041 m!1285099))

(declare-fun m!1285103 () Bool)

(assert (=> b!1398041 m!1285103))

(assert (=> b!1398041 m!1285099))

(declare-fun m!1285105 () Bool)

(assert (=> b!1398041 m!1285105))

(declare-fun m!1285107 () Bool)

(assert (=> b!1398041 m!1285107))

(declare-fun m!1285109 () Bool)

(assert (=> b!1398042 m!1285109))

(declare-fun m!1285111 () Bool)

(assert (=> b!1398042 m!1285111))

(declare-fun m!1285113 () Bool)

(assert (=> b!1398042 m!1285113))

(declare-fun m!1285115 () Bool)

(assert (=> b!1398040 m!1285115))

(assert (=> b!1398040 m!1285109))

(assert (=> b!1398040 m!1285115))

(declare-fun m!1285117 () Bool)

(assert (=> b!1398040 m!1285117))

(declare-fun m!1285119 () Bool)

(assert (=> b!1398040 m!1285119))

(declare-fun m!1285121 () Bool)

(assert (=> b!1398036 m!1285121))

(assert (=> b!1398043 m!1285099))

(assert (=> b!1398043 m!1285099))

(declare-fun m!1285123 () Bool)

(assert (=> b!1398043 m!1285123))

(declare-fun m!1285125 () Bool)

(assert (=> start!120126 m!1285125))

(declare-fun m!1285127 () Bool)

(assert (=> start!120126 m!1285127))

(declare-fun m!1285129 () Bool)

(assert (=> b!1398038 m!1285129))

(assert (=> b!1398038 m!1285129))

(declare-fun m!1285131 () Bool)

(assert (=> b!1398038 m!1285131))

(assert (=> b!1398035 m!1285099))

(assert (=> b!1398035 m!1285099))

(declare-fun m!1285133 () Bool)

(assert (=> b!1398035 m!1285133))

(declare-fun m!1285135 () Bool)

(assert (=> b!1398037 m!1285135))

(check-sat (not b!1398043) (not b!1398036) (not b!1398042) (not b!1398038) (not b!1398041) (not start!120126) (not b!1398035) (not b!1398037) (not b!1398040))
(check-sat)
