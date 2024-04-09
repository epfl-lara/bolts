; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119132 () Bool)

(assert start!119132)

(declare-fun b!1389347 () Bool)

(declare-fun e!787022 () Bool)

(assert (=> b!1389347 (= e!787022 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!94987 0))(
  ( (array!94988 (arr!45855 (Array (_ BitVec 32) (_ BitVec 64))) (size!46406 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94987)

(declare-fun lt!610504 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389347 (= lt!610504 (toIndex!0 (select (arr!45855 a!2901) j!112) mask!2840))))

(declare-fun b!1389348 () Bool)

(declare-fun res!929621 () Bool)

(assert (=> b!1389348 (=> (not res!929621) (not e!787022))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389348 (= res!929621 (validKeyInArray!0 (select (arr!45855 a!2901) i!1037)))))

(declare-fun b!1389349 () Bool)

(declare-fun res!929622 () Bool)

(assert (=> b!1389349 (=> (not res!929622) (not e!787022))))

(declare-datatypes ((List!32554 0))(
  ( (Nil!32551) (Cons!32550 (h!33768 (_ BitVec 64)) (t!47255 List!32554)) )
))
(declare-fun arrayNoDuplicates!0 (array!94987 (_ BitVec 32) List!32554) Bool)

(assert (=> b!1389349 (= res!929622 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32551))))

(declare-fun b!1389350 () Bool)

(declare-fun res!929617 () Bool)

(assert (=> b!1389350 (=> (not res!929617) (not e!787022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94987 (_ BitVec 32)) Bool)

(assert (=> b!1389350 (= res!929617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!929620 () Bool)

(assert (=> start!119132 (=> (not res!929620) (not e!787022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119132 (= res!929620 (validMask!0 mask!2840))))

(assert (=> start!119132 e!787022))

(assert (=> start!119132 true))

(declare-fun array_inv!34800 (array!94987) Bool)

(assert (=> start!119132 (array_inv!34800 a!2901)))

(declare-fun b!1389351 () Bool)

(declare-fun res!929619 () Bool)

(assert (=> b!1389351 (=> (not res!929619) (not e!787022))))

(assert (=> b!1389351 (= res!929619 (validKeyInArray!0 (select (arr!45855 a!2901) j!112)))))

(declare-fun b!1389352 () Bool)

(declare-fun res!929618 () Bool)

(assert (=> b!1389352 (=> (not res!929618) (not e!787022))))

(assert (=> b!1389352 (= res!929618 (and (= (size!46406 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46406 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46406 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119132 res!929620) b!1389352))

(assert (= (and b!1389352 res!929618) b!1389348))

(assert (= (and b!1389348 res!929621) b!1389351))

(assert (= (and b!1389351 res!929619) b!1389350))

(assert (= (and b!1389350 res!929617) b!1389349))

(assert (= (and b!1389349 res!929622) b!1389347))

(declare-fun m!1275047 () Bool)

(assert (=> b!1389351 m!1275047))

(assert (=> b!1389351 m!1275047))

(declare-fun m!1275049 () Bool)

(assert (=> b!1389351 m!1275049))

(declare-fun m!1275051 () Bool)

(assert (=> b!1389349 m!1275051))

(declare-fun m!1275053 () Bool)

(assert (=> b!1389350 m!1275053))

(declare-fun m!1275055 () Bool)

(assert (=> b!1389348 m!1275055))

(assert (=> b!1389348 m!1275055))

(declare-fun m!1275057 () Bool)

(assert (=> b!1389348 m!1275057))

(assert (=> b!1389347 m!1275047))

(assert (=> b!1389347 m!1275047))

(declare-fun m!1275059 () Bool)

(assert (=> b!1389347 m!1275059))

(declare-fun m!1275061 () Bool)

(assert (=> start!119132 m!1275061))

(declare-fun m!1275063 () Bool)

(assert (=> start!119132 m!1275063))

(push 1)

(assert (not b!1389347))

(assert (not b!1389348))

(assert (not b!1389350))

(assert (not start!119132))

(assert (not b!1389351))

(assert (not b!1389349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

