; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5344 () Bool)

(assert start!5344)

(declare-fun b!38414 () Bool)

(declare-fun res!23134 () Bool)

(declare-fun e!24417 () Bool)

(assert (=> b!38414 (=> res!23134 e!24417)))

(declare-datatypes ((List!1047 0))(
  ( (Nil!1044) (Cons!1043 (h!1611 (_ BitVec 64)) (t!3888 List!1047)) )
))
(declare-fun contains!489 (List!1047 (_ BitVec 64)) Bool)

(assert (=> b!38414 (= res!23134 (contains!489 Nil!1044 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38412 () Bool)

(declare-fun e!24416 () Bool)

(assert (=> b!38412 (= e!24416 (not e!24417))))

(declare-fun res!23135 () Bool)

(assert (=> b!38412 (=> res!23135 e!24417)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38412 (= res!23135 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2539 0))(
  ( (array!2540 (arr!1213 (Array (_ BitVec 32) (_ BitVec 64))) (size!1320 (_ BitVec 32))) )
))
(declare-fun lt!14269 () array!2539)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2539 (_ BitVec 32)) Bool)

(assert (=> b!38412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14269 mask!853)))

(declare-datatypes ((Unit!930 0))(
  ( (Unit!931) )
))
(declare-fun lt!14270 () Unit!930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2539 (_ BitVec 32) (_ BitVec 32)) Unit!930)

(assert (=> b!38412 (= lt!14270 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14269 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2539 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38412 (= (arrayCountValidKeys!0 lt!14269 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14272 () Unit!930)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2539 (_ BitVec 32) (_ BitVec 32)) Unit!930)

(assert (=> b!38412 (= lt!14272 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14269 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38412 (= lt!14269 (array!2540 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38415 () Bool)

(assert (=> b!38415 (= e!24417 true)))

(declare-fun lt!14271 () Bool)

(declare-fun noDuplicate!18 (List!1047) Bool)

(assert (=> b!38415 (= lt!14271 (noDuplicate!18 Nil!1044))))

(declare-fun b!38413 () Bool)

(declare-fun res!23137 () Bool)

(assert (=> b!38413 (=> res!23137 e!24417)))

(assert (=> b!38413 (= res!23137 (contains!489 Nil!1044 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!23136 () Bool)

(assert (=> start!5344 (=> (not res!23136) (not e!24416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5344 (= res!23136 (validMask!0 mask!853))))

(assert (=> start!5344 e!24416))

(assert (=> start!5344 true))

(assert (= (and start!5344 res!23136) b!38412))

(assert (= (and b!38412 (not res!23135)) b!38413))

(assert (= (and b!38413 (not res!23137)) b!38414))

(assert (= (and b!38414 (not res!23134)) b!38415))

(declare-fun m!31067 () Bool)

(assert (=> b!38412 m!31067))

(declare-fun m!31069 () Bool)

(assert (=> b!38412 m!31069))

(declare-fun m!31071 () Bool)

(assert (=> b!38412 m!31071))

(declare-fun m!31073 () Bool)

(assert (=> b!38412 m!31073))

(declare-fun m!31075 () Bool)

(assert (=> b!38413 m!31075))

(declare-fun m!31077 () Bool)

(assert (=> b!38415 m!31077))

(declare-fun m!31079 () Bool)

(assert (=> start!5344 m!31079))

(declare-fun m!31081 () Bool)

(assert (=> b!38414 m!31081))

(push 1)

(assert (not start!5344))

(assert (not b!38413))

(assert (not b!38414))

(assert (not b!38412))

(assert (not b!38415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

