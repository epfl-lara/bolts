; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71886 () Bool)

(assert start!71886)

(declare-fun b!834968 () Bool)

(declare-fun res!568015 () Bool)

(declare-fun e!465868 () Bool)

(assert (=> b!834968 (=> (not res!568015) (not e!465868))))

(declare-datatypes ((array!46740 0))(
  ( (array!46741 (arr!22400 (Array (_ BitVec 32) (_ BitVec 64))) (size!22821 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46740)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834968 (= res!568015 (not (validKeyInArray!0 (select (arr!22400 a!4227) i!1466))))))

(declare-fun b!834969 () Bool)

(declare-fun res!568014 () Bool)

(assert (=> b!834969 (=> (not res!568014) (not e!465868))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834969 (= res!568014 (and (bvslt (size!22821 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22821 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834970 () Bool)

(declare-fun res!568018 () Bool)

(assert (=> b!834970 (=> (not res!568018) (not e!465868))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!46740 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834970 (= res!568018 (= (arrayCountValidKeys!0 (array!46741 (store (arr!22400 a!4227) i!1466 k0!2968) (size!22821 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!834971 () Bool)

(assert (=> b!834971 (= e!465868 (bvslt (bvsub (bvadd #b00000000000000000000000000000001 (size!22821 a!4227)) to!390) #b00000000000000000000000000000000))))

(declare-fun b!834967 () Bool)

(declare-fun res!568016 () Bool)

(assert (=> b!834967 (=> (not res!568016) (not e!465868))))

(assert (=> b!834967 (= res!568016 (validKeyInArray!0 k0!2968))))

(declare-fun res!568017 () Bool)

(assert (=> start!71886 (=> (not res!568017) (not e!465868))))

(assert (=> start!71886 (= res!568017 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22821 a!4227))))))

(assert (=> start!71886 e!465868))

(assert (=> start!71886 true))

(declare-fun array_inv!17823 (array!46740) Bool)

(assert (=> start!71886 (array_inv!17823 a!4227)))

(assert (= (and start!71886 res!568017) b!834968))

(assert (= (and b!834968 res!568015) b!834967))

(assert (= (and b!834967 res!568016) b!834969))

(assert (= (and b!834969 res!568014) b!834970))

(assert (= (and b!834970 res!568018) b!834971))

(declare-fun m!780243 () Bool)

(assert (=> b!834968 m!780243))

(assert (=> b!834968 m!780243))

(declare-fun m!780245 () Bool)

(assert (=> b!834968 m!780245))

(declare-fun m!780247 () Bool)

(assert (=> b!834970 m!780247))

(declare-fun m!780249 () Bool)

(assert (=> b!834970 m!780249))

(declare-fun m!780251 () Bool)

(assert (=> b!834970 m!780251))

(declare-fun m!780253 () Bool)

(assert (=> b!834967 m!780253))

(declare-fun m!780255 () Bool)

(assert (=> start!71886 m!780255))

(check-sat (not b!834970) (not b!834968) (not b!834967) (not start!71886))
(check-sat)
