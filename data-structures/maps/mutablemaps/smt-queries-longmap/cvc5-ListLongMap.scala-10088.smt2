; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118906 () Bool)

(assert start!118906)

(declare-fun b!1388401 () Bool)

(declare-fun res!928796 () Bool)

(declare-fun e!786536 () Bool)

(assert (=> b!1388401 (=> (not res!928796) (not e!786536))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!94902 0))(
  ( (array!94903 (arr!45820 (Array (_ BitVec 32) (_ BitVec 64))) (size!46371 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94902)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388401 (= res!928796 (and (= (size!46371 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46371 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46371 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388403 () Bool)

(declare-fun res!928797 () Bool)

(assert (=> b!1388403 (=> (not res!928797) (not e!786536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388403 (= res!928797 (validKeyInArray!0 (select (arr!45820 a!2901) j!112)))))

(declare-fun res!928795 () Bool)

(assert (=> start!118906 (=> (not res!928795) (not e!786536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118906 (= res!928795 (validMask!0 mask!2840))))

(assert (=> start!118906 e!786536))

(assert (=> start!118906 true))

(declare-fun array_inv!34765 (array!94902) Bool)

(assert (=> start!118906 (array_inv!34765 a!2901)))

(declare-fun b!1388404 () Bool)

(assert (=> b!1388404 (= e!786536 (bvsgt #b00000000000000000000000000000000 (size!46371 a!2901)))))

(declare-fun b!1388402 () Bool)

(declare-fun res!928794 () Bool)

(assert (=> b!1388402 (=> (not res!928794) (not e!786536))))

(assert (=> b!1388402 (= res!928794 (validKeyInArray!0 (select (arr!45820 a!2901) i!1037)))))

(assert (= (and start!118906 res!928795) b!1388401))

(assert (= (and b!1388401 res!928796) b!1388402))

(assert (= (and b!1388402 res!928794) b!1388403))

(assert (= (and b!1388403 res!928797) b!1388404))

(declare-fun m!1274213 () Bool)

(assert (=> b!1388403 m!1274213))

(assert (=> b!1388403 m!1274213))

(declare-fun m!1274215 () Bool)

(assert (=> b!1388403 m!1274215))

(declare-fun m!1274217 () Bool)

(assert (=> start!118906 m!1274217))

(declare-fun m!1274219 () Bool)

(assert (=> start!118906 m!1274219))

(declare-fun m!1274221 () Bool)

(assert (=> b!1388402 m!1274221))

(assert (=> b!1388402 m!1274221))

(declare-fun m!1274223 () Bool)

(assert (=> b!1388402 m!1274223))

(push 1)

(assert (not start!118906))

(assert (not b!1388402))

(assert (not b!1388403))

(check-sat)

