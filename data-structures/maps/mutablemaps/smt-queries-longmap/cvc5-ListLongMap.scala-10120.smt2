; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119308 () Bool)

(assert start!119308)

(declare-fun b!1390765 () Bool)

(declare-fun res!930892 () Bool)

(declare-fun e!787623 () Bool)

(assert (=> b!1390765 (=> (not res!930892) (not e!787623))))

(declare-datatypes ((array!95112 0))(
  ( (array!95113 (arr!45916 (Array (_ BitVec 32) (_ BitVec 64))) (size!46467 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95112)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390765 (= res!930892 (validKeyInArray!0 (select (arr!45916 a!2901) j!112)))))

(declare-fun b!1390766 () Bool)

(assert (=> b!1390766 (= e!787623 (not true))))

(declare-fun e!787625 () Bool)

(assert (=> b!1390766 e!787625))

(declare-fun res!930891 () Bool)

(assert (=> b!1390766 (=> (not res!930891) (not e!787625))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95112 (_ BitVec 32)) Bool)

(assert (=> b!1390766 (= res!930891 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46464 0))(
  ( (Unit!46465) )
))
(declare-fun lt!610924 () Unit!46464)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95112 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46464)

(assert (=> b!1390766 (= lt!610924 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10255 0))(
  ( (MissingZero!10255 (index!43390 (_ BitVec 32))) (Found!10255 (index!43391 (_ BitVec 32))) (Intermediate!10255 (undefined!11067 Bool) (index!43392 (_ BitVec 32)) (x!125078 (_ BitVec 32))) (Undefined!10255) (MissingVacant!10255 (index!43393 (_ BitVec 32))) )
))
(declare-fun lt!610923 () SeekEntryResult!10255)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95112 (_ BitVec 32)) SeekEntryResult!10255)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390766 (= lt!610923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45916 a!2901) j!112) mask!2840) (select (arr!45916 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390767 () Bool)

(declare-fun res!930888 () Bool)

(assert (=> b!1390767 (=> (not res!930888) (not e!787623))))

(declare-datatypes ((List!32615 0))(
  ( (Nil!32612) (Cons!32611 (h!33832 (_ BitVec 64)) (t!47316 List!32615)) )
))
(declare-fun arrayNoDuplicates!0 (array!95112 (_ BitVec 32) List!32615) Bool)

(assert (=> b!1390767 (= res!930888 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32612))))

(declare-fun res!930893 () Bool)

(assert (=> start!119308 (=> (not res!930893) (not e!787623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119308 (= res!930893 (validMask!0 mask!2840))))

(assert (=> start!119308 e!787623))

(assert (=> start!119308 true))

(declare-fun array_inv!34861 (array!95112) Bool)

(assert (=> start!119308 (array_inv!34861 a!2901)))

(declare-fun b!1390768 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95112 (_ BitVec 32)) SeekEntryResult!10255)

(assert (=> b!1390768 (= e!787625 (= (seekEntryOrOpen!0 (select (arr!45916 a!2901) j!112) a!2901 mask!2840) (Found!10255 j!112)))))

(declare-fun b!1390769 () Bool)

(declare-fun res!930889 () Bool)

(assert (=> b!1390769 (=> (not res!930889) (not e!787623))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390769 (= res!930889 (validKeyInArray!0 (select (arr!45916 a!2901) i!1037)))))

(declare-fun b!1390770 () Bool)

(declare-fun res!930894 () Bool)

(assert (=> b!1390770 (=> (not res!930894) (not e!787623))))

(assert (=> b!1390770 (= res!930894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390771 () Bool)

(declare-fun res!930890 () Bool)

(assert (=> b!1390771 (=> (not res!930890) (not e!787623))))

(assert (=> b!1390771 (= res!930890 (and (= (size!46467 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46467 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46467 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119308 res!930893) b!1390771))

(assert (= (and b!1390771 res!930890) b!1390769))

(assert (= (and b!1390769 res!930889) b!1390765))

(assert (= (and b!1390765 res!930892) b!1390770))

(assert (= (and b!1390770 res!930894) b!1390767))

(assert (= (and b!1390767 res!930888) b!1390766))

(assert (= (and b!1390766 res!930891) b!1390768))

(declare-fun m!1276613 () Bool)

(assert (=> b!1390770 m!1276613))

(declare-fun m!1276615 () Bool)

(assert (=> b!1390769 m!1276615))

(assert (=> b!1390769 m!1276615))

(declare-fun m!1276617 () Bool)

(assert (=> b!1390769 m!1276617))

(declare-fun m!1276619 () Bool)

(assert (=> b!1390765 m!1276619))

(assert (=> b!1390765 m!1276619))

(declare-fun m!1276621 () Bool)

(assert (=> b!1390765 m!1276621))

(declare-fun m!1276623 () Bool)

(assert (=> start!119308 m!1276623))

(declare-fun m!1276625 () Bool)

(assert (=> start!119308 m!1276625))

(assert (=> b!1390768 m!1276619))

(assert (=> b!1390768 m!1276619))

(declare-fun m!1276627 () Bool)

(assert (=> b!1390768 m!1276627))

(assert (=> b!1390766 m!1276619))

(declare-fun m!1276629 () Bool)

(assert (=> b!1390766 m!1276629))

(assert (=> b!1390766 m!1276619))

(declare-fun m!1276631 () Bool)

(assert (=> b!1390766 m!1276631))

(assert (=> b!1390766 m!1276629))

(assert (=> b!1390766 m!1276619))

(declare-fun m!1276633 () Bool)

(assert (=> b!1390766 m!1276633))

(declare-fun m!1276635 () Bool)

(assert (=> b!1390766 m!1276635))

(declare-fun m!1276637 () Bool)

(assert (=> b!1390767 m!1276637))

(push 1)

(assert (not start!119308))

(assert (not b!1390766))

(assert (not b!1390768))

(assert (not b!1390770))

(assert (not b!1390765))

(assert (not b!1390767))

(assert (not b!1390769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

