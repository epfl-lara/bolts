; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120886 () Bool)

(assert start!120886)

(declare-fun res!944339 () Bool)

(declare-fun e!795851 () Bool)

(assert (=> start!120886 (=> (not res!944339) (not e!795851))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120886 (= res!944339 (validMask!0 mask!2840))))

(assert (=> start!120886 e!795851))

(assert (=> start!120886 true))

(declare-datatypes ((array!96111 0))(
  ( (array!96112 (arr!46399 (Array (_ BitVec 32) (_ BitVec 64))) (size!46950 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96111)

(declare-fun array_inv!35344 (array!96111) Bool)

(assert (=> start!120886 (array_inv!35344 a!2901)))

(declare-fun b!1406010 () Bool)

(declare-fun e!795852 () Bool)

(assert (=> b!1406010 (= e!795852 true)))

(declare-datatypes ((SeekEntryResult!10732 0))(
  ( (MissingZero!10732 (index!45304 (_ BitVec 32))) (Found!10732 (index!45305 (_ BitVec 32))) (Intermediate!10732 (undefined!11544 Bool) (index!45306 (_ BitVec 32)) (x!126918 (_ BitVec 32))) (Undefined!10732) (MissingVacant!10732 (index!45307 (_ BitVec 32))) )
))
(declare-fun lt!619195 () SeekEntryResult!10732)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96111 (_ BitVec 32)) SeekEntryResult!10732)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406010 (= lt!619195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46399 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46399 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96112 (store (arr!46399 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46950 a!2901)) mask!2840))))

(declare-fun b!1406011 () Bool)

(declare-fun res!944337 () Bool)

(assert (=> b!1406011 (=> (not res!944337) (not e!795851))))

(declare-datatypes ((List!33098 0))(
  ( (Nil!33095) (Cons!33094 (h!34348 (_ BitVec 64)) (t!47799 List!33098)) )
))
(declare-fun arrayNoDuplicates!0 (array!96111 (_ BitVec 32) List!33098) Bool)

(assert (=> b!1406011 (= res!944337 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33095))))

(declare-fun b!1406012 () Bool)

(declare-fun res!944336 () Bool)

(assert (=> b!1406012 (=> (not res!944336) (not e!795851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406012 (= res!944336 (validKeyInArray!0 (select (arr!46399 a!2901) j!112)))))

(declare-fun b!1406013 () Bool)

(assert (=> b!1406013 (= e!795851 (not e!795852))))

(declare-fun res!944338 () Bool)

(assert (=> b!1406013 (=> res!944338 e!795852)))

(declare-fun lt!619194 () SeekEntryResult!10732)

(assert (=> b!1406013 (= res!944338 (or (not (is-Intermediate!10732 lt!619194)) (undefined!11544 lt!619194)))))

(declare-fun e!795854 () Bool)

(assert (=> b!1406013 e!795854))

(declare-fun res!944342 () Bool)

(assert (=> b!1406013 (=> (not res!944342) (not e!795854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96111 (_ BitVec 32)) Bool)

(assert (=> b!1406013 (= res!944342 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47388 0))(
  ( (Unit!47389) )
))
(declare-fun lt!619193 () Unit!47388)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47388)

(assert (=> b!1406013 (= lt!619193 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406013 (= lt!619194 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46399 a!2901) j!112) mask!2840) (select (arr!46399 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406014 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96111 (_ BitVec 32)) SeekEntryResult!10732)

(assert (=> b!1406014 (= e!795854 (= (seekEntryOrOpen!0 (select (arr!46399 a!2901) j!112) a!2901 mask!2840) (Found!10732 j!112)))))

(declare-fun b!1406015 () Bool)

(declare-fun res!944343 () Bool)

(assert (=> b!1406015 (=> (not res!944343) (not e!795851))))

(assert (=> b!1406015 (= res!944343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406016 () Bool)

(declare-fun res!944341 () Bool)

(assert (=> b!1406016 (=> (not res!944341) (not e!795851))))

(assert (=> b!1406016 (= res!944341 (and (= (size!46950 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46950 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46950 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406017 () Bool)

(declare-fun res!944340 () Bool)

(assert (=> b!1406017 (=> (not res!944340) (not e!795851))))

(assert (=> b!1406017 (= res!944340 (validKeyInArray!0 (select (arr!46399 a!2901) i!1037)))))

(assert (= (and start!120886 res!944339) b!1406016))

(assert (= (and b!1406016 res!944341) b!1406017))

(assert (= (and b!1406017 res!944340) b!1406012))

(assert (= (and b!1406012 res!944336) b!1406015))

(assert (= (and b!1406015 res!944343) b!1406011))

(assert (= (and b!1406011 res!944337) b!1406013))

(assert (= (and b!1406013 res!944342) b!1406014))

(assert (= (and b!1406013 (not res!944338)) b!1406010))

(declare-fun m!1295069 () Bool)

(assert (=> b!1406013 m!1295069))

(declare-fun m!1295071 () Bool)

(assert (=> b!1406013 m!1295071))

(assert (=> b!1406013 m!1295069))

(declare-fun m!1295073 () Bool)

(assert (=> b!1406013 m!1295073))

(assert (=> b!1406013 m!1295071))

(assert (=> b!1406013 m!1295069))

(declare-fun m!1295075 () Bool)

(assert (=> b!1406013 m!1295075))

(declare-fun m!1295077 () Bool)

(assert (=> b!1406013 m!1295077))

(assert (=> b!1406014 m!1295069))

(assert (=> b!1406014 m!1295069))

(declare-fun m!1295079 () Bool)

(assert (=> b!1406014 m!1295079))

(declare-fun m!1295081 () Bool)

(assert (=> b!1406011 m!1295081))

(declare-fun m!1295083 () Bool)

(assert (=> b!1406017 m!1295083))

(assert (=> b!1406017 m!1295083))

(declare-fun m!1295085 () Bool)

(assert (=> b!1406017 m!1295085))

(declare-fun m!1295087 () Bool)

(assert (=> b!1406015 m!1295087))

(declare-fun m!1295089 () Bool)

(assert (=> start!120886 m!1295089))

(declare-fun m!1295091 () Bool)

(assert (=> start!120886 m!1295091))

(declare-fun m!1295093 () Bool)

(assert (=> b!1406010 m!1295093))

(declare-fun m!1295095 () Bool)

(assert (=> b!1406010 m!1295095))

(assert (=> b!1406010 m!1295095))

(declare-fun m!1295097 () Bool)

(assert (=> b!1406010 m!1295097))

(assert (=> b!1406010 m!1295097))

(assert (=> b!1406010 m!1295095))

(declare-fun m!1295099 () Bool)

(assert (=> b!1406010 m!1295099))

(assert (=> b!1406012 m!1295069))

(assert (=> b!1406012 m!1295069))

(declare-fun m!1295101 () Bool)

(assert (=> b!1406012 m!1295101))

(push 1)

(assert (not b!1406017))

(assert (not b!1406014))

(assert (not b!1406013))

(assert (not b!1406012))

(assert (not b!1406011))

(assert (not b!1406010))

(assert (not start!120886))

(assert (not b!1406015))

(check-sat)

(pop 1)

