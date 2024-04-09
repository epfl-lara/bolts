; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71982 () Bool)

(assert start!71982)

(declare-fun b!835979 () Bool)

(declare-fun res!568885 () Bool)

(declare-fun e!466391 () Bool)

(assert (=> b!835979 (=> (not res!568885) (not e!466391))))

(declare-datatypes ((array!46836 0))(
  ( (array!46837 (arr!22448 (Array (_ BitVec 32) (_ BitVec 64))) (size!22869 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46836)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835979 (= res!568885 (not (validKeyInArray!0 (select (arr!22448 a!4227) i!1466))))))

(declare-fun res!568883 () Bool)

(assert (=> start!71982 (=> (not res!568883) (not e!466391))))

(assert (=> start!71982 (= res!568883 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22869 a!4227))))))

(assert (=> start!71982 e!466391))

(assert (=> start!71982 true))

(declare-fun array_inv!17871 (array!46836) Bool)

(assert (=> start!71982 (array_inv!17871 a!4227)))

(declare-fun b!835982 () Bool)

(assert (=> b!835982 (= e!466391 false)))

(declare-fun lt!380313 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46836 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835982 (= lt!380313 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun lt!380312 () (_ BitVec 32))

(assert (=> b!835982 (= lt!380312 (arrayCountValidKeys!0 (array!46837 (store (arr!22448 a!4227) i!1466 k0!2968) (size!22869 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835980 () Bool)

(declare-fun res!568882 () Bool)

(assert (=> b!835980 (=> (not res!568882) (not e!466391))))

(assert (=> b!835980 (= res!568882 (validKeyInArray!0 k0!2968))))

(declare-fun b!835981 () Bool)

(declare-fun res!568884 () Bool)

(assert (=> b!835981 (=> (not res!568884) (not e!466391))))

(assert (=> b!835981 (= res!568884 (and (bvslt (size!22869 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22869 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71982 res!568883) b!835979))

(assert (= (and b!835979 res!568885) b!835980))

(assert (= (and b!835980 res!568882) b!835981))

(assert (= (and b!835981 res!568884) b!835982))

(declare-fun m!781491 () Bool)

(assert (=> b!835979 m!781491))

(assert (=> b!835979 m!781491))

(declare-fun m!781493 () Bool)

(assert (=> b!835979 m!781493))

(declare-fun m!781495 () Bool)

(assert (=> start!71982 m!781495))

(declare-fun m!781497 () Bool)

(assert (=> b!835982 m!781497))

(declare-fun m!781499 () Bool)

(assert (=> b!835982 m!781499))

(declare-fun m!781501 () Bool)

(assert (=> b!835982 m!781501))

(declare-fun m!781503 () Bool)

(assert (=> b!835980 m!781503))

(check-sat (not b!835982) (not b!835980) (not b!835979) (not start!71982))
(check-sat)
