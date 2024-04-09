; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118908 () Bool)

(assert start!118908)

(declare-fun b!1388413 () Bool)

(declare-fun res!928809 () Bool)

(declare-fun e!786541 () Bool)

(assert (=> b!1388413 (=> (not res!928809) (not e!786541))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!94904 0))(
  ( (array!94905 (arr!45821 (Array (_ BitVec 32) (_ BitVec 64))) (size!46372 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94904)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388413 (= res!928809 (and (= (size!46372 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46372 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46372 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388416 () Bool)

(assert (=> b!1388416 (= e!786541 (bvsgt #b00000000000000000000000000000000 (size!46372 a!2901)))))

(declare-fun b!1388415 () Bool)

(declare-fun res!928808 () Bool)

(assert (=> b!1388415 (=> (not res!928808) (not e!786541))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388415 (= res!928808 (validKeyInArray!0 (select (arr!45821 a!2901) j!112)))))

(declare-fun b!1388414 () Bool)

(declare-fun res!928807 () Bool)

(assert (=> b!1388414 (=> (not res!928807) (not e!786541))))

(assert (=> b!1388414 (= res!928807 (validKeyInArray!0 (select (arr!45821 a!2901) i!1037)))))

(declare-fun res!928806 () Bool)

(assert (=> start!118908 (=> (not res!928806) (not e!786541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118908 (= res!928806 (validMask!0 mask!2840))))

(assert (=> start!118908 e!786541))

(assert (=> start!118908 true))

(declare-fun array_inv!34766 (array!94904) Bool)

(assert (=> start!118908 (array_inv!34766 a!2901)))

(assert (= (and start!118908 res!928806) b!1388413))

(assert (= (and b!1388413 res!928809) b!1388414))

(assert (= (and b!1388414 res!928807) b!1388415))

(assert (= (and b!1388415 res!928808) b!1388416))

(declare-fun m!1274225 () Bool)

(assert (=> b!1388415 m!1274225))

(assert (=> b!1388415 m!1274225))

(declare-fun m!1274227 () Bool)

(assert (=> b!1388415 m!1274227))

(declare-fun m!1274229 () Bool)

(assert (=> b!1388414 m!1274229))

(assert (=> b!1388414 m!1274229))

(declare-fun m!1274231 () Bool)

(assert (=> b!1388414 m!1274231))

(declare-fun m!1274233 () Bool)

(assert (=> start!118908 m!1274233))

(declare-fun m!1274235 () Bool)

(assert (=> start!118908 m!1274235))

(check-sat (not b!1388415) (not start!118908) (not b!1388414))
(check-sat)
