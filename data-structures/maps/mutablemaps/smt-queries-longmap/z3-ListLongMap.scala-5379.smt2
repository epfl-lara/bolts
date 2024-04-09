; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71898 () Bool)

(assert start!71898)

(declare-fun res!568118 () Bool)

(declare-fun e!465905 () Bool)

(assert (=> start!71898 (=> (not res!568118) (not e!465905))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46752 0))(
  ( (array!46753 (arr!22406 (Array (_ BitVec 32) (_ BitVec 64))) (size!22827 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46752)

(assert (=> start!71898 (= res!568118 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22827 a!4227))))))

(assert (=> start!71898 e!465905))

(assert (=> start!71898 true))

(declare-fun array_inv!17829 (array!46752) Bool)

(assert (=> start!71898 (array_inv!17829 a!4227)))

(declare-fun b!835067 () Bool)

(declare-fun res!568117 () Bool)

(assert (=> b!835067 (=> (not res!568117) (not e!465905))))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835067 (= res!568117 (validKeyInArray!0 (select (arr!22406 a!4227) to!390)))))

(declare-fun b!835068 () Bool)

(assert (=> b!835068 (= e!465905 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvsge to!390 (size!22827 a!4227))))))

(declare-fun b!835069 () Bool)

(declare-fun res!568116 () Bool)

(assert (=> b!835069 (=> (not res!568116) (not e!465905))))

(assert (=> b!835069 (= res!568116 (and (bvslt (size!22827 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22827 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835070 () Bool)

(declare-fun res!568115 () Bool)

(assert (=> b!835070 (=> (not res!568115) (not e!465905))))

(assert (=> b!835070 (= res!568115 (not (validKeyInArray!0 (select (arr!22406 a!4227) i!1466))))))

(declare-fun b!835071 () Bool)

(declare-fun res!568114 () Bool)

(assert (=> b!835071 (=> (not res!568114) (not e!465905))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!835071 (= res!568114 (validKeyInArray!0 k0!2968))))

(declare-fun b!835072 () Bool)

(declare-fun res!568120 () Bool)

(assert (=> b!835072 (=> (not res!568120) (not e!465905))))

(assert (=> b!835072 (= res!568120 (not (= to!390 (size!22827 a!4227))))))

(declare-fun b!835073 () Bool)

(declare-fun res!568119 () Bool)

(assert (=> b!835073 (=> (not res!568119) (not e!465905))))

(declare-fun arrayCountValidKeys!0 (array!46752 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835073 (= res!568119 (= (arrayCountValidKeys!0 (array!46753 (store (arr!22406 a!4227) i!1466 k0!2968) (size!22827 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(assert (= (and start!71898 res!568118) b!835070))

(assert (= (and b!835070 res!568115) b!835071))

(assert (= (and b!835071 res!568114) b!835069))

(assert (= (and b!835069 res!568116) b!835073))

(assert (= (and b!835073 res!568119) b!835072))

(assert (= (and b!835072 res!568120) b!835067))

(assert (= (and b!835067 res!568117) b!835068))

(declare-fun m!780331 () Bool)

(assert (=> b!835070 m!780331))

(assert (=> b!835070 m!780331))

(declare-fun m!780333 () Bool)

(assert (=> b!835070 m!780333))

(declare-fun m!780335 () Bool)

(assert (=> b!835073 m!780335))

(declare-fun m!780337 () Bool)

(assert (=> b!835073 m!780337))

(declare-fun m!780339 () Bool)

(assert (=> b!835073 m!780339))

(declare-fun m!780341 () Bool)

(assert (=> b!835071 m!780341))

(declare-fun m!780343 () Bool)

(assert (=> b!835067 m!780343))

(assert (=> b!835067 m!780343))

(declare-fun m!780345 () Bool)

(assert (=> b!835067 m!780345))

(declare-fun m!780347 () Bool)

(assert (=> start!71898 m!780347))

(check-sat (not b!835071) (not b!835070) (not b!835067) (not b!835073) (not start!71898))
(check-sat)
