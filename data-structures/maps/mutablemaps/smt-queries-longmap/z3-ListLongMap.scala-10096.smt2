; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119076 () Bool)

(assert start!119076)

(declare-fun b!1389086 () Bool)

(declare-fun res!929392 () Bool)

(declare-fun e!786898 () Bool)

(assert (=> b!1389086 (=> (not res!929392) (not e!786898))))

(declare-datatypes ((array!94964 0))(
  ( (array!94965 (arr!45845 (Array (_ BitVec 32) (_ BitVec 64))) (size!46396 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94964)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389086 (= res!929392 (validKeyInArray!0 (select (arr!45845 a!2901) i!1037)))))

(declare-fun b!1389087 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1389087 (= e!786898 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!610429 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389087 (= lt!610429 (toIndex!0 (select (arr!45845 a!2901) j!112) mask!2840))))

(declare-fun b!1389088 () Bool)

(declare-fun res!929389 () Bool)

(assert (=> b!1389088 (=> (not res!929389) (not e!786898))))

(assert (=> b!1389088 (= res!929389 (and (= (size!46396 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46396 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46396 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!929393 () Bool)

(assert (=> start!119076 (=> (not res!929393) (not e!786898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119076 (= res!929393 (validMask!0 mask!2840))))

(assert (=> start!119076 e!786898))

(assert (=> start!119076 true))

(declare-fun array_inv!34790 (array!94964) Bool)

(assert (=> start!119076 (array_inv!34790 a!2901)))

(declare-fun b!1389089 () Bool)

(declare-fun res!929390 () Bool)

(assert (=> b!1389089 (=> (not res!929390) (not e!786898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94964 (_ BitVec 32)) Bool)

(assert (=> b!1389089 (= res!929390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389090 () Bool)

(declare-fun res!929391 () Bool)

(assert (=> b!1389090 (=> (not res!929391) (not e!786898))))

(assert (=> b!1389090 (= res!929391 (validKeyInArray!0 (select (arr!45845 a!2901) j!112)))))

(declare-fun b!1389091 () Bool)

(declare-fun res!929394 () Bool)

(assert (=> b!1389091 (=> (not res!929394) (not e!786898))))

(declare-datatypes ((List!32544 0))(
  ( (Nil!32541) (Cons!32540 (h!33755 (_ BitVec 64)) (t!47245 List!32544)) )
))
(declare-fun arrayNoDuplicates!0 (array!94964 (_ BitVec 32) List!32544) Bool)

(assert (=> b!1389091 (= res!929394 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32541))))

(assert (= (and start!119076 res!929393) b!1389088))

(assert (= (and b!1389088 res!929389) b!1389086))

(assert (= (and b!1389086 res!929392) b!1389090))

(assert (= (and b!1389090 res!929391) b!1389089))

(assert (= (and b!1389089 res!929390) b!1389091))

(assert (= (and b!1389091 res!929394) b!1389087))

(declare-fun m!1274819 () Bool)

(assert (=> b!1389086 m!1274819))

(assert (=> b!1389086 m!1274819))

(declare-fun m!1274821 () Bool)

(assert (=> b!1389086 m!1274821))

(declare-fun m!1274823 () Bool)

(assert (=> start!119076 m!1274823))

(declare-fun m!1274825 () Bool)

(assert (=> start!119076 m!1274825))

(declare-fun m!1274827 () Bool)

(assert (=> b!1389089 m!1274827))

(declare-fun m!1274829 () Bool)

(assert (=> b!1389091 m!1274829))

(declare-fun m!1274831 () Bool)

(assert (=> b!1389087 m!1274831))

(assert (=> b!1389087 m!1274831))

(declare-fun m!1274833 () Bool)

(assert (=> b!1389087 m!1274833))

(assert (=> b!1389090 m!1274831))

(assert (=> b!1389090 m!1274831))

(declare-fun m!1274835 () Bool)

(assert (=> b!1389090 m!1274835))

(check-sat (not b!1389089) (not b!1389091) (not b!1389087) (not b!1389090) (not b!1389086) (not start!119076))
(check-sat)
