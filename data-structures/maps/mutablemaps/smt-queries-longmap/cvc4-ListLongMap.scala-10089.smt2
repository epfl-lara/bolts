; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118916 () Bool)

(assert start!118916)

(declare-fun b!1388469 () Bool)

(declare-fun res!928864 () Bool)

(declare-fun e!786566 () Bool)

(assert (=> b!1388469 (=> (not res!928864) (not e!786566))))

(declare-datatypes ((array!94912 0))(
  ( (array!94913 (arr!45825 (Array (_ BitVec 32) (_ BitVec 64))) (size!46376 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94912)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94912 (_ BitVec 32)) Bool)

(assert (=> b!1388469 (= res!928864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!928863 () Bool)

(assert (=> start!118916 (=> (not res!928863) (not e!786566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118916 (= res!928863 (validMask!0 mask!2840))))

(assert (=> start!118916 e!786566))

(assert (=> start!118916 true))

(declare-fun array_inv!34770 (array!94912) Bool)

(assert (=> start!118916 (array_inv!34770 a!2901)))

(declare-fun b!1388470 () Bool)

(declare-fun res!928862 () Bool)

(assert (=> b!1388470 (=> (not res!928862) (not e!786566))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388470 (= res!928862 (and (= (size!46376 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46376 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46376 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388471 () Bool)

(assert (=> b!1388471 (= e!786566 (bvsgt #b00000000000000000000000000000000 (size!46376 a!2901)))))

(declare-fun b!1388472 () Bool)

(declare-fun res!928866 () Bool)

(assert (=> b!1388472 (=> (not res!928866) (not e!786566))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388472 (= res!928866 (validKeyInArray!0 (select (arr!45825 a!2901) j!112)))))

(declare-fun b!1388473 () Bool)

(declare-fun res!928865 () Bool)

(assert (=> b!1388473 (=> (not res!928865) (not e!786566))))

(assert (=> b!1388473 (= res!928865 (validKeyInArray!0 (select (arr!45825 a!2901) i!1037)))))

(assert (= (and start!118916 res!928863) b!1388470))

(assert (= (and b!1388470 res!928862) b!1388473))

(assert (= (and b!1388473 res!928865) b!1388472))

(assert (= (and b!1388472 res!928866) b!1388469))

(assert (= (and b!1388469 res!928864) b!1388471))

(declare-fun m!1274277 () Bool)

(assert (=> b!1388469 m!1274277))

(declare-fun m!1274279 () Bool)

(assert (=> start!118916 m!1274279))

(declare-fun m!1274281 () Bool)

(assert (=> start!118916 m!1274281))

(declare-fun m!1274283 () Bool)

(assert (=> b!1388472 m!1274283))

(assert (=> b!1388472 m!1274283))

(declare-fun m!1274285 () Bool)

(assert (=> b!1388472 m!1274285))

(declare-fun m!1274287 () Bool)

(assert (=> b!1388473 m!1274287))

(assert (=> b!1388473 m!1274287))

(declare-fun m!1274289 () Bool)

(assert (=> b!1388473 m!1274289))

(push 1)

(assert (not b!1388469))

(assert (not start!118916))

(assert (not b!1388472))

(assert (not b!1388473))

(check-sat)

(pop 1)

