; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71890 () Bool)

(assert start!71890)

(declare-fun b!834997 () Bool)

(declare-fun res!568048 () Bool)

(declare-fun e!465881 () Bool)

(assert (=> b!834997 (=> (not res!568048) (not e!465881))))

(declare-datatypes ((array!46744 0))(
  ( (array!46745 (arr!22402 (Array (_ BitVec 32) (_ BitVec 64))) (size!22823 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46744)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834997 (= res!568048 (and (bvslt (size!22823 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22823 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834998 () Bool)

(declare-fun res!568046 () Bool)

(assert (=> b!834998 (=> (not res!568046) (not e!465881))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834998 (= res!568046 (validKeyInArray!0 k!2968))))

(declare-fun res!568047 () Bool)

(assert (=> start!71890 (=> (not res!568047) (not e!465881))))

(assert (=> start!71890 (= res!568047 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22823 a!4227))))))

(assert (=> start!71890 e!465881))

(assert (=> start!71890 true))

(declare-fun array_inv!17825 (array!46744) Bool)

(assert (=> start!71890 (array_inv!17825 a!4227)))

(declare-fun b!834999 () Bool)

(assert (=> b!834999 (= e!465881 (and (not (= to!390 (size!22823 a!4227))) (bvsge to!390 (size!22823 a!4227))))))

(declare-fun b!835000 () Bool)

(declare-fun res!568045 () Bool)

(assert (=> b!835000 (=> (not res!568045) (not e!465881))))

(declare-fun arrayCountValidKeys!0 (array!46744 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835000 (= res!568045 (= (arrayCountValidKeys!0 (array!46745 (store (arr!22402 a!4227) i!1466 k!2968) (size!22823 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!835001 () Bool)

(declare-fun res!568044 () Bool)

(assert (=> b!835001 (=> (not res!568044) (not e!465881))))

(assert (=> b!835001 (= res!568044 (not (validKeyInArray!0 (select (arr!22402 a!4227) i!1466))))))

(assert (= (and start!71890 res!568047) b!835001))

(assert (= (and b!835001 res!568044) b!834998))

(assert (= (and b!834998 res!568046) b!834997))

(assert (= (and b!834997 res!568048) b!835000))

(assert (= (and b!835000 res!568045) b!834999))

(declare-fun m!780271 () Bool)

(assert (=> b!834998 m!780271))

(declare-fun m!780273 () Bool)

(assert (=> start!71890 m!780273))

(declare-fun m!780275 () Bool)

(assert (=> b!835000 m!780275))

(declare-fun m!780277 () Bool)

(assert (=> b!835000 m!780277))

(declare-fun m!780279 () Bool)

(assert (=> b!835000 m!780279))

(declare-fun m!780281 () Bool)

(assert (=> b!835001 m!780281))

(assert (=> b!835001 m!780281))

(declare-fun m!780283 () Bool)

(assert (=> b!835001 m!780283))

(push 1)

(assert (not b!834998))

(assert (not start!71890))

(assert (not b!835001))

(assert (not b!835000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

