; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71892 () Bool)

(assert start!71892)

(declare-fun b!835012 () Bool)

(declare-fun e!465887 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(declare-datatypes ((array!46746 0))(
  ( (array!46747 (arr!22403 (Array (_ BitVec 32) (_ BitVec 64))) (size!22824 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46746)

(assert (=> b!835012 (= e!465887 (and (not (= to!390 (size!22824 a!4227))) (bvsge to!390 (size!22824 a!4227))))))

(declare-fun b!835013 () Bool)

(declare-fun res!568063 () Bool)

(assert (=> b!835013 (=> (not res!568063) (not e!465887))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835013 (= res!568063 (validKeyInArray!0 k0!2968))))

(declare-fun b!835014 () Bool)

(declare-fun res!568062 () Bool)

(assert (=> b!835014 (=> (not res!568062) (not e!465887))))

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> b!835014 (= res!568062 (not (validKeyInArray!0 (select (arr!22403 a!4227) i!1466))))))

(declare-fun res!568060 () Bool)

(assert (=> start!71892 (=> (not res!568060) (not e!465887))))

(assert (=> start!71892 (= res!568060 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22824 a!4227))))))

(assert (=> start!71892 e!465887))

(assert (=> start!71892 true))

(declare-fun array_inv!17826 (array!46746) Bool)

(assert (=> start!71892 (array_inv!17826 a!4227)))

(declare-fun b!835015 () Bool)

(declare-fun res!568059 () Bool)

(assert (=> b!835015 (=> (not res!568059) (not e!465887))))

(declare-fun arrayCountValidKeys!0 (array!46746 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835015 (= res!568059 (= (arrayCountValidKeys!0 (array!46747 (store (arr!22403 a!4227) i!1466 k0!2968) (size!22824 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!835016 () Bool)

(declare-fun res!568061 () Bool)

(assert (=> b!835016 (=> (not res!568061) (not e!465887))))

(assert (=> b!835016 (= res!568061 (and (bvslt (size!22824 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22824 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71892 res!568060) b!835014))

(assert (= (and b!835014 res!568062) b!835013))

(assert (= (and b!835013 res!568063) b!835016))

(assert (= (and b!835016 res!568061) b!835015))

(assert (= (and b!835015 res!568059) b!835012))

(declare-fun m!780285 () Bool)

(assert (=> b!835013 m!780285))

(declare-fun m!780287 () Bool)

(assert (=> b!835014 m!780287))

(assert (=> b!835014 m!780287))

(declare-fun m!780289 () Bool)

(assert (=> b!835014 m!780289))

(declare-fun m!780291 () Bool)

(assert (=> start!71892 m!780291))

(declare-fun m!780293 () Bool)

(assert (=> b!835015 m!780293))

(declare-fun m!780295 () Bool)

(assert (=> b!835015 m!780295))

(declare-fun m!780297 () Bool)

(assert (=> b!835015 m!780297))

(check-sat (not b!835015) (not b!835014) (not start!71892) (not b!835013))
(check-sat)
