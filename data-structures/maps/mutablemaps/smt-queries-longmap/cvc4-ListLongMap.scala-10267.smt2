; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120806 () Bool)

(assert start!120806)

(declare-fun b!1405114 () Bool)

(declare-fun res!943443 () Bool)

(declare-fun e!795435 () Bool)

(assert (=> b!1405114 (=> (not res!943443) (not e!795435))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96031 0))(
  ( (array!96032 (arr!46359 (Array (_ BitVec 32) (_ BitVec 64))) (size!46910 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96031)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405114 (= res!943443 (and (= (size!46910 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46910 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46910 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405115 () Bool)

(declare-fun res!943440 () Bool)

(assert (=> b!1405115 (=> (not res!943440) (not e!795435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405115 (= res!943440 (validKeyInArray!0 (select (arr!46359 a!2901) i!1037)))))

(declare-fun b!1405116 () Bool)

(declare-fun res!943441 () Bool)

(assert (=> b!1405116 (=> (not res!943441) (not e!795435))))

(assert (=> b!1405116 (= res!943441 (validKeyInArray!0 (select (arr!46359 a!2901) j!112)))))

(declare-fun b!1405117 () Bool)

(assert (=> b!1405117 (= e!795435 (not true))))

(declare-fun e!795436 () Bool)

(assert (=> b!1405117 e!795436))

(declare-fun res!943446 () Bool)

(assert (=> b!1405117 (=> (not res!943446) (not e!795436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96031 (_ BitVec 32)) Bool)

(assert (=> b!1405117 (= res!943446 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47308 0))(
  ( (Unit!47309) )
))
(declare-fun lt!618898 () Unit!47308)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96031 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47308)

(assert (=> b!1405117 (= lt!618898 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10692 0))(
  ( (MissingZero!10692 (index!45144 (_ BitVec 32))) (Found!10692 (index!45145 (_ BitVec 32))) (Intermediate!10692 (undefined!11504 Bool) (index!45146 (_ BitVec 32)) (x!126766 (_ BitVec 32))) (Undefined!10692) (MissingVacant!10692 (index!45147 (_ BitVec 32))) )
))
(declare-fun lt!618897 () SeekEntryResult!10692)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96031 (_ BitVec 32)) SeekEntryResult!10692)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405117 (= lt!618897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46359 a!2901) j!112) mask!2840) (select (arr!46359 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405118 () Bool)

(declare-fun res!943445 () Bool)

(assert (=> b!1405118 (=> (not res!943445) (not e!795435))))

(declare-datatypes ((List!33058 0))(
  ( (Nil!33055) (Cons!33054 (h!34308 (_ BitVec 64)) (t!47759 List!33058)) )
))
(declare-fun arrayNoDuplicates!0 (array!96031 (_ BitVec 32) List!33058) Bool)

(assert (=> b!1405118 (= res!943445 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33055))))

(declare-fun b!1405119 () Bool)

(declare-fun res!943444 () Bool)

(assert (=> b!1405119 (=> (not res!943444) (not e!795435))))

(assert (=> b!1405119 (= res!943444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!943442 () Bool)

(assert (=> start!120806 (=> (not res!943442) (not e!795435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120806 (= res!943442 (validMask!0 mask!2840))))

(assert (=> start!120806 e!795435))

(assert (=> start!120806 true))

(declare-fun array_inv!35304 (array!96031) Bool)

(assert (=> start!120806 (array_inv!35304 a!2901)))

(declare-fun b!1405120 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96031 (_ BitVec 32)) SeekEntryResult!10692)

(assert (=> b!1405120 (= e!795436 (= (seekEntryOrOpen!0 (select (arr!46359 a!2901) j!112) a!2901 mask!2840) (Found!10692 j!112)))))

(assert (= (and start!120806 res!943442) b!1405114))

(assert (= (and b!1405114 res!943443) b!1405115))

(assert (= (and b!1405115 res!943440) b!1405116))

(assert (= (and b!1405116 res!943441) b!1405119))

(assert (= (and b!1405119 res!943444) b!1405118))

(assert (= (and b!1405118 res!943445) b!1405117))

(assert (= (and b!1405117 res!943446) b!1405120))

(declare-fun m!1293897 () Bool)

(assert (=> b!1405120 m!1293897))

(assert (=> b!1405120 m!1293897))

(declare-fun m!1293899 () Bool)

(assert (=> b!1405120 m!1293899))

(assert (=> b!1405116 m!1293897))

(assert (=> b!1405116 m!1293897))

(declare-fun m!1293901 () Bool)

(assert (=> b!1405116 m!1293901))

(declare-fun m!1293903 () Bool)

(assert (=> start!120806 m!1293903))

(declare-fun m!1293905 () Bool)

(assert (=> start!120806 m!1293905))

(declare-fun m!1293907 () Bool)

(assert (=> b!1405115 m!1293907))

(assert (=> b!1405115 m!1293907))

(declare-fun m!1293909 () Bool)

(assert (=> b!1405115 m!1293909))

(declare-fun m!1293911 () Bool)

(assert (=> b!1405119 m!1293911))

(assert (=> b!1405117 m!1293897))

(declare-fun m!1293913 () Bool)

(assert (=> b!1405117 m!1293913))

(assert (=> b!1405117 m!1293897))

(declare-fun m!1293915 () Bool)

(assert (=> b!1405117 m!1293915))

(assert (=> b!1405117 m!1293913))

(assert (=> b!1405117 m!1293897))

(declare-fun m!1293917 () Bool)

(assert (=> b!1405117 m!1293917))

(declare-fun m!1293919 () Bool)

(assert (=> b!1405117 m!1293919))

(declare-fun m!1293921 () Bool)

(assert (=> b!1405118 m!1293921))

(push 1)

(assert (not b!1405115))

(assert (not start!120806))

(assert (not b!1405117))

(assert (not b!1405120))

(assert (not b!1405119))

(assert (not b!1405118))

