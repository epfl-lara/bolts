; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120794 () Bool)

(assert start!120794)

(declare-fun b!1404988 () Bool)

(declare-fun res!943317 () Bool)

(declare-fun e!795381 () Bool)

(assert (=> b!1404988 (=> (not res!943317) (not e!795381))))

(declare-datatypes ((array!96019 0))(
  ( (array!96020 (arr!46353 (Array (_ BitVec 32) (_ BitVec 64))) (size!46904 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96019)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404988 (= res!943317 (validKeyInArray!0 (select (arr!46353 a!2901) j!112)))))

(declare-fun b!1404989 () Bool)

(assert (=> b!1404989 (= e!795381 (not true))))

(declare-fun e!795382 () Bool)

(assert (=> b!1404989 e!795382))

(declare-fun res!943314 () Bool)

(assert (=> b!1404989 (=> (not res!943314) (not e!795382))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96019 (_ BitVec 32)) Bool)

(assert (=> b!1404989 (= res!943314 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47296 0))(
  ( (Unit!47297) )
))
(declare-fun lt!618861 () Unit!47296)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96019 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47296)

(assert (=> b!1404989 (= lt!618861 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10686 0))(
  ( (MissingZero!10686 (index!45120 (_ BitVec 32))) (Found!10686 (index!45121 (_ BitVec 32))) (Intermediate!10686 (undefined!11498 Bool) (index!45122 (_ BitVec 32)) (x!126744 (_ BitVec 32))) (Undefined!10686) (MissingVacant!10686 (index!45123 (_ BitVec 32))) )
))
(declare-fun lt!618862 () SeekEntryResult!10686)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96019 (_ BitVec 32)) SeekEntryResult!10686)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404989 (= lt!618862 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46353 a!2901) j!112) mask!2840) (select (arr!46353 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404990 () Bool)

(declare-fun res!943315 () Bool)

(assert (=> b!1404990 (=> (not res!943315) (not e!795381))))

(assert (=> b!1404990 (= res!943315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404991 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96019 (_ BitVec 32)) SeekEntryResult!10686)

(assert (=> b!1404991 (= e!795382 (= (seekEntryOrOpen!0 (select (arr!46353 a!2901) j!112) a!2901 mask!2840) (Found!10686 j!112)))))

(declare-fun b!1404992 () Bool)

(declare-fun res!943318 () Bool)

(assert (=> b!1404992 (=> (not res!943318) (not e!795381))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1404992 (= res!943318 (validKeyInArray!0 (select (arr!46353 a!2901) i!1037)))))

(declare-fun b!1404993 () Bool)

(declare-fun res!943320 () Bool)

(assert (=> b!1404993 (=> (not res!943320) (not e!795381))))

(assert (=> b!1404993 (= res!943320 (and (= (size!46904 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46904 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46904 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!943316 () Bool)

(assert (=> start!120794 (=> (not res!943316) (not e!795381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120794 (= res!943316 (validMask!0 mask!2840))))

(assert (=> start!120794 e!795381))

(assert (=> start!120794 true))

(declare-fun array_inv!35298 (array!96019) Bool)

(assert (=> start!120794 (array_inv!35298 a!2901)))

(declare-fun b!1404994 () Bool)

(declare-fun res!943319 () Bool)

(assert (=> b!1404994 (=> (not res!943319) (not e!795381))))

(declare-datatypes ((List!33052 0))(
  ( (Nil!33049) (Cons!33048 (h!34302 (_ BitVec 64)) (t!47753 List!33052)) )
))
(declare-fun arrayNoDuplicates!0 (array!96019 (_ BitVec 32) List!33052) Bool)

(assert (=> b!1404994 (= res!943319 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33049))))

(assert (= (and start!120794 res!943316) b!1404993))

(assert (= (and b!1404993 res!943320) b!1404992))

(assert (= (and b!1404992 res!943318) b!1404988))

(assert (= (and b!1404988 res!943317) b!1404990))

(assert (= (and b!1404990 res!943315) b!1404994))

(assert (= (and b!1404994 res!943319) b!1404989))

(assert (= (and b!1404989 res!943314) b!1404991))

(declare-fun m!1293741 () Bool)

(assert (=> b!1404990 m!1293741))

(declare-fun m!1293743 () Bool)

(assert (=> b!1404991 m!1293743))

(assert (=> b!1404991 m!1293743))

(declare-fun m!1293745 () Bool)

(assert (=> b!1404991 m!1293745))

(declare-fun m!1293747 () Bool)

(assert (=> b!1404992 m!1293747))

(assert (=> b!1404992 m!1293747))

(declare-fun m!1293749 () Bool)

(assert (=> b!1404992 m!1293749))

(assert (=> b!1404988 m!1293743))

(assert (=> b!1404988 m!1293743))

(declare-fun m!1293751 () Bool)

(assert (=> b!1404988 m!1293751))

(declare-fun m!1293753 () Bool)

(assert (=> b!1404994 m!1293753))

(declare-fun m!1293755 () Bool)

(assert (=> start!120794 m!1293755))

(declare-fun m!1293757 () Bool)

(assert (=> start!120794 m!1293757))

(assert (=> b!1404989 m!1293743))

(declare-fun m!1293759 () Bool)

(assert (=> b!1404989 m!1293759))

(assert (=> b!1404989 m!1293743))

(declare-fun m!1293761 () Bool)

(assert (=> b!1404989 m!1293761))

(assert (=> b!1404989 m!1293759))

(assert (=> b!1404989 m!1293743))

(declare-fun m!1293763 () Bool)

(assert (=> b!1404989 m!1293763))

(declare-fun m!1293765 () Bool)

(assert (=> b!1404989 m!1293765))

(push 1)

(assert (not b!1404989))

(assert (not b!1404992))

(assert (not b!1404991))

(assert (not b!1404988))

(assert (not b!1404990))

(assert (not start!120794))

(assert (not b!1404994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

