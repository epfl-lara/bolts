; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5356 () Bool)

(assert start!5356)

(declare-fun b!38485 () Bool)

(declare-fun res!23207 () Bool)

(declare-fun e!24452 () Bool)

(assert (=> b!38485 (=> res!23207 e!24452)))

(declare-datatypes ((List!1053 0))(
  ( (Nil!1050) (Cons!1049 (h!1617 (_ BitVec 64)) (t!3894 List!1053)) )
))
(declare-fun contains!495 (List!1053 (_ BitVec 64)) Bool)

(assert (=> b!38485 (= res!23207 (contains!495 Nil!1050 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38486 () Bool)

(declare-fun res!23209 () Bool)

(assert (=> b!38486 (=> res!23209 e!24452)))

(assert (=> b!38486 (= res!23209 (contains!495 Nil!1050 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38484 () Bool)

(declare-fun e!24453 () Bool)

(assert (=> b!38484 (= e!24453 (not e!24452))))

(declare-fun res!23206 () Bool)

(assert (=> b!38484 (=> res!23206 e!24452)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38484 (= res!23206 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2551 0))(
  ( (array!2552 (arr!1219 (Array (_ BitVec 32) (_ BitVec 64))) (size!1326 (_ BitVec 32))) )
))
(declare-fun lt!14341 () array!2551)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2551 (_ BitVec 32)) Bool)

(assert (=> b!38484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14341 mask!853)))

(declare-datatypes ((Unit!942 0))(
  ( (Unit!943) )
))
(declare-fun lt!14343 () Unit!942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2551 (_ BitVec 32) (_ BitVec 32)) Unit!942)

(assert (=> b!38484 (= lt!14343 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14341 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2551 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38484 (= (arrayCountValidKeys!0 lt!14341 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14342 () Unit!942)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2551 (_ BitVec 32) (_ BitVec 32)) Unit!942)

(assert (=> b!38484 (= lt!14342 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14341 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38484 (= lt!14341 (array!2552 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38487 () Bool)

(assert (=> b!38487 (= e!24452 true)))

(declare-fun lt!14344 () Bool)

(declare-fun noDuplicate!24 (List!1053) Bool)

(assert (=> b!38487 (= lt!14344 (noDuplicate!24 Nil!1050))))

(declare-fun res!23208 () Bool)

(assert (=> start!5356 (=> (not res!23208) (not e!24453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5356 (= res!23208 (validMask!0 mask!853))))

(assert (=> start!5356 e!24453))

(assert (=> start!5356 true))

(assert (= (and start!5356 res!23208) b!38484))

(assert (= (and b!38484 (not res!23206)) b!38485))

(assert (= (and b!38485 (not res!23207)) b!38486))

(assert (= (and b!38486 (not res!23209)) b!38487))

(declare-fun m!31163 () Bool)

(assert (=> b!38487 m!31163))

(declare-fun m!31165 () Bool)

(assert (=> b!38484 m!31165))

(declare-fun m!31167 () Bool)

(assert (=> b!38484 m!31167))

(declare-fun m!31169 () Bool)

(assert (=> b!38484 m!31169))

(declare-fun m!31171 () Bool)

(assert (=> b!38484 m!31171))

(declare-fun m!31173 () Bool)

(assert (=> b!38486 m!31173))

(declare-fun m!31175 () Bool)

(assert (=> b!38485 m!31175))

(declare-fun m!31177 () Bool)

(assert (=> start!5356 m!31177))

(push 1)

(assert (not b!38484))

(assert (not start!5356))

(assert (not b!38487))

(assert (not b!38485))

(assert (not b!38486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

