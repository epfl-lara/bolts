; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118910 () Bool)

(assert start!118910)

(declare-fun b!1388428 () Bool)

(declare-fun e!786548 () Bool)

(declare-datatypes ((array!94906 0))(
  ( (array!94907 (arr!45822 (Array (_ BitVec 32) (_ BitVec 64))) (size!46373 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94906)

(assert (=> b!1388428 (= e!786548 (bvsgt #b00000000000000000000000000000000 (size!46373 a!2901)))))

(declare-fun res!928818 () Bool)

(assert (=> start!118910 (=> (not res!928818) (not e!786548))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118910 (= res!928818 (validMask!0 mask!2840))))

(assert (=> start!118910 e!786548))

(assert (=> start!118910 true))

(declare-fun array_inv!34767 (array!94906) Bool)

(assert (=> start!118910 (array_inv!34767 a!2901)))

(declare-fun b!1388426 () Bool)

(declare-fun res!928820 () Bool)

(assert (=> b!1388426 (=> (not res!928820) (not e!786548))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388426 (= res!928820 (validKeyInArray!0 (select (arr!45822 a!2901) i!1037)))))

(declare-fun b!1388427 () Bool)

(declare-fun res!928819 () Bool)

(assert (=> b!1388427 (=> (not res!928819) (not e!786548))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388427 (= res!928819 (validKeyInArray!0 (select (arr!45822 a!2901) j!112)))))

(declare-fun b!1388425 () Bool)

(declare-fun res!928821 () Bool)

(assert (=> b!1388425 (=> (not res!928821) (not e!786548))))

(assert (=> b!1388425 (= res!928821 (and (= (size!46373 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46373 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46373 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!118910 res!928818) b!1388425))

(assert (= (and b!1388425 res!928821) b!1388426))

(assert (= (and b!1388426 res!928820) b!1388427))

(assert (= (and b!1388427 res!928819) b!1388428))

(declare-fun m!1274237 () Bool)

(assert (=> start!118910 m!1274237))

(declare-fun m!1274239 () Bool)

(assert (=> start!118910 m!1274239))

(declare-fun m!1274241 () Bool)

(assert (=> b!1388426 m!1274241))

(assert (=> b!1388426 m!1274241))

(declare-fun m!1274243 () Bool)

(assert (=> b!1388426 m!1274243))

(declare-fun m!1274245 () Bool)

(assert (=> b!1388427 m!1274245))

(assert (=> b!1388427 m!1274245))

(declare-fun m!1274247 () Bool)

(assert (=> b!1388427 m!1274247))

(push 1)

(assert (not b!1388426))

(assert (not b!1388427))

(assert (not start!118910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

