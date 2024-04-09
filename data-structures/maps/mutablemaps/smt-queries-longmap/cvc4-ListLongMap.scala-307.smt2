; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5324 () Bool)

(assert start!5324)

(declare-fun res!23044 () Bool)

(declare-fun e!24366 () Bool)

(assert (=> start!5324 (=> (not res!23044) (not e!24366))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5324 (= res!23044 (validMask!0 mask!853))))

(assert (=> start!5324 e!24366))

(assert (=> start!5324 true))

(declare-fun b!38322 () Bool)

(assert (=> b!38322 (= e!24366 (not true))))

(declare-datatypes ((array!2519 0))(
  ( (array!2520 (arr!1203 (Array (_ BitVec 32) (_ BitVec 64))) (size!1310 (_ BitVec 32))) )
))
(declare-fun lt!14169 () array!2519)

(declare-fun arrayCountValidKeys!0 (array!2519 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38322 (= (arrayCountValidKeys!0 lt!14169 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!910 0))(
  ( (Unit!911) )
))
(declare-fun lt!14170 () Unit!910)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2519 (_ BitVec 32) (_ BitVec 32)) Unit!910)

(assert (=> b!38322 (= lt!14170 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14169 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38322 (= lt!14169 (array!2520 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5324 res!23044) b!38322))

(declare-fun m!30947 () Bool)

(assert (=> start!5324 m!30947))

(declare-fun m!30949 () Bool)

(assert (=> b!38322 m!30949))

(declare-fun m!30951 () Bool)

(assert (=> b!38322 m!30951))

(push 1)

(assert (not start!5324))

(assert (not b!38322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

