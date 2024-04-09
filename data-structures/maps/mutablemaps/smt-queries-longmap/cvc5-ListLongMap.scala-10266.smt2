; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120796 () Bool)

(assert start!120796)

(declare-fun b!1405009 () Bool)

(declare-fun res!943340 () Bool)

(declare-fun e!795391 () Bool)

(assert (=> b!1405009 (=> (not res!943340) (not e!795391))))

(declare-datatypes ((array!96021 0))(
  ( (array!96022 (arr!46354 (Array (_ BitVec 32) (_ BitVec 64))) (size!46905 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96021)

(declare-datatypes ((List!33053 0))(
  ( (Nil!33050) (Cons!33049 (h!34303 (_ BitVec 64)) (t!47754 List!33053)) )
))
(declare-fun arrayNoDuplicates!0 (array!96021 (_ BitVec 32) List!33053) Bool)

(assert (=> b!1405009 (= res!943340 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33050))))

(declare-fun b!1405010 () Bool)

(declare-fun res!943337 () Bool)

(assert (=> b!1405010 (=> (not res!943337) (not e!795391))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405010 (= res!943337 (validKeyInArray!0 (select (arr!46354 a!2901) j!112)))))

(declare-fun res!943335 () Bool)

(assert (=> start!120796 (=> (not res!943335) (not e!795391))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120796 (= res!943335 (validMask!0 mask!2840))))

(assert (=> start!120796 e!795391))

(assert (=> start!120796 true))

(declare-fun array_inv!35299 (array!96021) Bool)

(assert (=> start!120796 (array_inv!35299 a!2901)))

(declare-fun b!1405011 () Bool)

(declare-fun res!943338 () Bool)

(assert (=> b!1405011 (=> (not res!943338) (not e!795391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96021 (_ BitVec 32)) Bool)

(assert (=> b!1405011 (= res!943338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405012 () Bool)

(assert (=> b!1405012 (= e!795391 (not true))))

(declare-fun e!795392 () Bool)

(assert (=> b!1405012 e!795392))

(declare-fun res!943336 () Bool)

(assert (=> b!1405012 (=> (not res!943336) (not e!795392))))

(assert (=> b!1405012 (= res!943336 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47298 0))(
  ( (Unit!47299) )
))
(declare-fun lt!618867 () Unit!47298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96021 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47298)

(assert (=> b!1405012 (= lt!618867 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10687 0))(
  ( (MissingZero!10687 (index!45124 (_ BitVec 32))) (Found!10687 (index!45125 (_ BitVec 32))) (Intermediate!10687 (undefined!11499 Bool) (index!45126 (_ BitVec 32)) (x!126753 (_ BitVec 32))) (Undefined!10687) (MissingVacant!10687 (index!45127 (_ BitVec 32))) )
))
(declare-fun lt!618868 () SeekEntryResult!10687)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96021 (_ BitVec 32)) SeekEntryResult!10687)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405012 (= lt!618868 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46354 a!2901) j!112) mask!2840) (select (arr!46354 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405013 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96021 (_ BitVec 32)) SeekEntryResult!10687)

(assert (=> b!1405013 (= e!795392 (= (seekEntryOrOpen!0 (select (arr!46354 a!2901) j!112) a!2901 mask!2840) (Found!10687 j!112)))))

(declare-fun b!1405014 () Bool)

(declare-fun res!943341 () Bool)

(assert (=> b!1405014 (=> (not res!943341) (not e!795391))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405014 (= res!943341 (validKeyInArray!0 (select (arr!46354 a!2901) i!1037)))))

(declare-fun b!1405015 () Bool)

(declare-fun res!943339 () Bool)

(assert (=> b!1405015 (=> (not res!943339) (not e!795391))))

(assert (=> b!1405015 (= res!943339 (and (= (size!46905 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46905 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46905 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120796 res!943335) b!1405015))

(assert (= (and b!1405015 res!943339) b!1405014))

(assert (= (and b!1405014 res!943341) b!1405010))

(assert (= (and b!1405010 res!943337) b!1405011))

(assert (= (and b!1405011 res!943338) b!1405009))

(assert (= (and b!1405009 res!943340) b!1405012))

(assert (= (and b!1405012 res!943336) b!1405013))

(declare-fun m!1293767 () Bool)

(assert (=> b!1405012 m!1293767))

(declare-fun m!1293769 () Bool)

(assert (=> b!1405012 m!1293769))

(assert (=> b!1405012 m!1293767))

(declare-fun m!1293771 () Bool)

(assert (=> b!1405012 m!1293771))

(assert (=> b!1405012 m!1293769))

(assert (=> b!1405012 m!1293767))

(declare-fun m!1293773 () Bool)

(assert (=> b!1405012 m!1293773))

(declare-fun m!1293775 () Bool)

(assert (=> b!1405012 m!1293775))

(declare-fun m!1293777 () Bool)

(assert (=> start!120796 m!1293777))

(declare-fun m!1293779 () Bool)

(assert (=> start!120796 m!1293779))

(declare-fun m!1293781 () Bool)

(assert (=> b!1405014 m!1293781))

(assert (=> b!1405014 m!1293781))

(declare-fun m!1293783 () Bool)

(assert (=> b!1405014 m!1293783))

(assert (=> b!1405010 m!1293767))

(assert (=> b!1405010 m!1293767))

(declare-fun m!1293785 () Bool)

(assert (=> b!1405010 m!1293785))

(assert (=> b!1405013 m!1293767))

(assert (=> b!1405013 m!1293767))

(declare-fun m!1293787 () Bool)

(assert (=> b!1405013 m!1293787))

(declare-fun m!1293789 () Bool)

(assert (=> b!1405011 m!1293789))

(declare-fun m!1293791 () Bool)

(assert (=> b!1405009 m!1293791))

(push 1)

(assert (not b!1405010))

(assert (not b!1405013))

(assert (not b!1405011))

(assert (not b!1405014))

(assert (not start!120796))

(assert (not b!1405009))

(assert (not b!1405012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

