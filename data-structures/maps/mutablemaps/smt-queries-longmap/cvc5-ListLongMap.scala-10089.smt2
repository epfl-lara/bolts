; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118912 () Bool)

(assert start!118912)

(declare-fun b!1388439 () Bool)

(declare-fun res!928833 () Bool)

(declare-fun e!786553 () Bool)

(assert (=> b!1388439 (=> (not res!928833) (not e!786553))))

(declare-datatypes ((array!94908 0))(
  ( (array!94909 (arr!45823 (Array (_ BitVec 32) (_ BitVec 64))) (size!46374 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94908)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94908 (_ BitVec 32)) Bool)

(assert (=> b!1388439 (= res!928833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1388440 () Bool)

(declare-fun res!928836 () Bool)

(assert (=> b!1388440 (=> (not res!928836) (not e!786553))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388440 (= res!928836 (validKeyInArray!0 (select (arr!45823 a!2901) i!1037)))))

(declare-fun b!1388441 () Bool)

(assert (=> b!1388441 (= e!786553 (bvsgt #b00000000000000000000000000000000 (size!46374 a!2901)))))

(declare-fun res!928835 () Bool)

(assert (=> start!118912 (=> (not res!928835) (not e!786553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118912 (= res!928835 (validMask!0 mask!2840))))

(assert (=> start!118912 e!786553))

(assert (=> start!118912 true))

(declare-fun array_inv!34768 (array!94908) Bool)

(assert (=> start!118912 (array_inv!34768 a!2901)))

(declare-fun b!1388442 () Bool)

(declare-fun res!928832 () Bool)

(assert (=> b!1388442 (=> (not res!928832) (not e!786553))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388442 (= res!928832 (and (= (size!46374 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46374 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46374 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388443 () Bool)

(declare-fun res!928834 () Bool)

(assert (=> b!1388443 (=> (not res!928834) (not e!786553))))

(assert (=> b!1388443 (= res!928834 (validKeyInArray!0 (select (arr!45823 a!2901) j!112)))))

(assert (= (and start!118912 res!928835) b!1388442))

(assert (= (and b!1388442 res!928832) b!1388440))

(assert (= (and b!1388440 res!928836) b!1388443))

(assert (= (and b!1388443 res!928834) b!1388439))

(assert (= (and b!1388439 res!928833) b!1388441))

(declare-fun m!1274249 () Bool)

(assert (=> b!1388439 m!1274249))

(declare-fun m!1274251 () Bool)

(assert (=> b!1388440 m!1274251))

(assert (=> b!1388440 m!1274251))

(declare-fun m!1274253 () Bool)

(assert (=> b!1388440 m!1274253))

(declare-fun m!1274255 () Bool)

(assert (=> start!118912 m!1274255))

(declare-fun m!1274257 () Bool)

(assert (=> start!118912 m!1274257))

(declare-fun m!1274259 () Bool)

(assert (=> b!1388443 m!1274259))

(assert (=> b!1388443 m!1274259))

(declare-fun m!1274261 () Bool)

(assert (=> b!1388443 m!1274261))

(push 1)

(assert (not b!1388440))

(assert (not b!1388443))

(assert (not start!118912))

(assert (not b!1388439))

