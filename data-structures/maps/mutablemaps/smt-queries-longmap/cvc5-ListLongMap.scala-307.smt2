; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5320 () Bool)

(assert start!5320)

(declare-fun res!23038 () Bool)

(declare-fun e!24360 () Bool)

(assert (=> start!5320 (=> (not res!23038) (not e!24360))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5320 (= res!23038 (validMask!0 mask!853))))

(assert (=> start!5320 e!24360))

(assert (=> start!5320 true))

(declare-fun b!38316 () Bool)

(assert (=> b!38316 (= e!24360 (not true))))

(declare-datatypes ((array!2515 0))(
  ( (array!2516 (arr!1201 (Array (_ BitVec 32) (_ BitVec 64))) (size!1308 (_ BitVec 32))) )
))
(declare-fun lt!14157 () array!2515)

(declare-fun arrayCountValidKeys!0 (array!2515 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38316 (= (arrayCountValidKeys!0 lt!14157 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!906 0))(
  ( (Unit!907) )
))
(declare-fun lt!14158 () Unit!906)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2515 (_ BitVec 32) (_ BitVec 32)) Unit!906)

(assert (=> b!38316 (= lt!14158 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14157 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38316 (= lt!14157 (array!2516 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5320 res!23038) b!38316))

(declare-fun m!30935 () Bool)

(assert (=> start!5320 m!30935))

(declare-fun m!30937 () Bool)

(assert (=> b!38316 m!30937))

(declare-fun m!30939 () Bool)

(assert (=> b!38316 m!30939))

(push 1)

(assert (not start!5320))

(assert (not b!38316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

