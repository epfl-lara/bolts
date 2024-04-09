; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71884 () Bool)

(assert start!71884)

(declare-fun b!834952 () Bool)

(declare-fun res!568002 () Bool)

(declare-fun e!465862 () Bool)

(assert (=> b!834952 (=> (not res!568002) (not e!465862))))

(declare-datatypes ((array!46738 0))(
  ( (array!46739 (arr!22399 (Array (_ BitVec 32) (_ BitVec 64))) (size!22820 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46738)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834952 (= res!568002 (not (validKeyInArray!0 (select (arr!22399 a!4227) i!1466))))))

(declare-fun b!834953 () Bool)

(declare-fun res!568001 () Bool)

(assert (=> b!834953 (=> (not res!568001) (not e!465862))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46738 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834953 (= res!568001 (= (arrayCountValidKeys!0 (array!46739 (store (arr!22399 a!4227) i!1466 k!2968) (size!22820 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!834954 () Bool)

(assert (=> b!834954 (= e!465862 (bvslt (bvsub (bvadd #b00000000000000000000000000000001 (size!22820 a!4227)) to!390) #b00000000000000000000000000000000))))

(declare-fun b!834955 () Bool)

(declare-fun res!568003 () Bool)

(assert (=> b!834955 (=> (not res!568003) (not e!465862))))

(assert (=> b!834955 (= res!568003 (and (bvslt (size!22820 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22820 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834956 () Bool)

(declare-fun res!567999 () Bool)

(assert (=> b!834956 (=> (not res!567999) (not e!465862))))

(assert (=> b!834956 (= res!567999 (validKeyInArray!0 k!2968))))

(declare-fun res!568000 () Bool)

(assert (=> start!71884 (=> (not res!568000) (not e!465862))))

(assert (=> start!71884 (= res!568000 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22820 a!4227))))))

(assert (=> start!71884 e!465862))

(assert (=> start!71884 true))

(declare-fun array_inv!17822 (array!46738) Bool)

(assert (=> start!71884 (array_inv!17822 a!4227)))

(assert (= (and start!71884 res!568000) b!834952))

(assert (= (and b!834952 res!568002) b!834956))

(assert (= (and b!834956 res!567999) b!834955))

(assert (= (and b!834955 res!568003) b!834953))

(assert (= (and b!834953 res!568001) b!834954))

(declare-fun m!780229 () Bool)

(assert (=> b!834952 m!780229))

(assert (=> b!834952 m!780229))

(declare-fun m!780231 () Bool)

(assert (=> b!834952 m!780231))

(declare-fun m!780233 () Bool)

(assert (=> b!834953 m!780233))

(declare-fun m!780235 () Bool)

(assert (=> b!834953 m!780235))

(declare-fun m!780237 () Bool)

(assert (=> b!834953 m!780237))

(declare-fun m!780239 () Bool)

(assert (=> b!834956 m!780239))

(declare-fun m!780241 () Bool)

(assert (=> start!71884 m!780241))

(push 1)

(assert (not b!834953))

(assert (not b!834952))

(assert (not start!71884))

(assert (not b!834956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

