; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120802 () Bool)

(assert start!120802)

(declare-fun b!1405072 () Bool)

(declare-fun res!943403 () Bool)

(declare-fun e!795417 () Bool)

(assert (=> b!1405072 (=> (not res!943403) (not e!795417))))

(declare-datatypes ((array!96027 0))(
  ( (array!96028 (arr!46357 (Array (_ BitVec 32) (_ BitVec 64))) (size!46908 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96027)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96027 (_ BitVec 32)) Bool)

(assert (=> b!1405072 (= res!943403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!943402 () Bool)

(assert (=> start!120802 (=> (not res!943402) (not e!795417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120802 (= res!943402 (validMask!0 mask!2840))))

(assert (=> start!120802 e!795417))

(assert (=> start!120802 true))

(declare-fun array_inv!35302 (array!96027) Bool)

(assert (=> start!120802 (array_inv!35302 a!2901)))

(declare-fun b!1405073 () Bool)

(assert (=> b!1405073 (= e!795417 (not true))))

(declare-fun e!795419 () Bool)

(assert (=> b!1405073 e!795419))

(declare-fun res!943399 () Bool)

(assert (=> b!1405073 (=> (not res!943399) (not e!795419))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405073 (= res!943399 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47304 0))(
  ( (Unit!47305) )
))
(declare-fun lt!618886 () Unit!47304)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47304)

(assert (=> b!1405073 (= lt!618886 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10690 0))(
  ( (MissingZero!10690 (index!45136 (_ BitVec 32))) (Found!10690 (index!45137 (_ BitVec 32))) (Intermediate!10690 (undefined!11502 Bool) (index!45138 (_ BitVec 32)) (x!126764 (_ BitVec 32))) (Undefined!10690) (MissingVacant!10690 (index!45139 (_ BitVec 32))) )
))
(declare-fun lt!618885 () SeekEntryResult!10690)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96027 (_ BitVec 32)) SeekEntryResult!10690)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405073 (= lt!618885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46357 a!2901) j!112) mask!2840) (select (arr!46357 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405074 () Bool)

(declare-fun res!943404 () Bool)

(assert (=> b!1405074 (=> (not res!943404) (not e!795417))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405074 (= res!943404 (validKeyInArray!0 (select (arr!46357 a!2901) i!1037)))))

(declare-fun b!1405075 () Bool)

(declare-fun res!943398 () Bool)

(assert (=> b!1405075 (=> (not res!943398) (not e!795417))))

(declare-datatypes ((List!33056 0))(
  ( (Nil!33053) (Cons!33052 (h!34306 (_ BitVec 64)) (t!47757 List!33056)) )
))
(declare-fun arrayNoDuplicates!0 (array!96027 (_ BitVec 32) List!33056) Bool)

(assert (=> b!1405075 (= res!943398 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33053))))

(declare-fun b!1405076 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96027 (_ BitVec 32)) SeekEntryResult!10690)

(assert (=> b!1405076 (= e!795419 (= (seekEntryOrOpen!0 (select (arr!46357 a!2901) j!112) a!2901 mask!2840) (Found!10690 j!112)))))

(declare-fun b!1405077 () Bool)

(declare-fun res!943401 () Bool)

(assert (=> b!1405077 (=> (not res!943401) (not e!795417))))

(assert (=> b!1405077 (= res!943401 (and (= (size!46908 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46908 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46908 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405078 () Bool)

(declare-fun res!943400 () Bool)

(assert (=> b!1405078 (=> (not res!943400) (not e!795417))))

(assert (=> b!1405078 (= res!943400 (validKeyInArray!0 (select (arr!46357 a!2901) j!112)))))

(assert (= (and start!120802 res!943402) b!1405077))

(assert (= (and b!1405077 res!943401) b!1405074))

(assert (= (and b!1405074 res!943404) b!1405078))

(assert (= (and b!1405078 res!943400) b!1405072))

(assert (= (and b!1405072 res!943403) b!1405075))

(assert (= (and b!1405075 res!943398) b!1405073))

(assert (= (and b!1405073 res!943399) b!1405076))

(declare-fun m!1293845 () Bool)

(assert (=> start!120802 m!1293845))

(declare-fun m!1293847 () Bool)

(assert (=> start!120802 m!1293847))

(declare-fun m!1293849 () Bool)

(assert (=> b!1405073 m!1293849))

(declare-fun m!1293851 () Bool)

(assert (=> b!1405073 m!1293851))

(assert (=> b!1405073 m!1293849))

(declare-fun m!1293853 () Bool)

(assert (=> b!1405073 m!1293853))

(assert (=> b!1405073 m!1293851))

(assert (=> b!1405073 m!1293849))

(declare-fun m!1293855 () Bool)

(assert (=> b!1405073 m!1293855))

(declare-fun m!1293857 () Bool)

(assert (=> b!1405073 m!1293857))

(assert (=> b!1405076 m!1293849))

(assert (=> b!1405076 m!1293849))

(declare-fun m!1293859 () Bool)

(assert (=> b!1405076 m!1293859))

(declare-fun m!1293861 () Bool)

(assert (=> b!1405075 m!1293861))

(declare-fun m!1293863 () Bool)

(assert (=> b!1405074 m!1293863))

(assert (=> b!1405074 m!1293863))

(declare-fun m!1293865 () Bool)

(assert (=> b!1405074 m!1293865))

(declare-fun m!1293867 () Bool)

(assert (=> b!1405072 m!1293867))

(assert (=> b!1405078 m!1293849))

(assert (=> b!1405078 m!1293849))

(declare-fun m!1293869 () Bool)

(assert (=> b!1405078 m!1293869))

(push 1)

(assert (not b!1405072))

(assert (not b!1405075))

(assert (not b!1405074))

(assert (not b!1405073))

(assert (not start!120802))

(assert (not b!1405076))

(assert (not b!1405078))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

