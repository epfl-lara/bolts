; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5318 () Bool)

(assert start!5318)

(declare-fun res!23035 () Bool)

(declare-fun e!24357 () Bool)

(assert (=> start!5318 (=> (not res!23035) (not e!24357))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5318 (= res!23035 (validMask!0 mask!853))))

(assert (=> start!5318 e!24357))

(assert (=> start!5318 true))

(declare-fun b!38313 () Bool)

(assert (=> b!38313 (= e!24357 (not true))))

(declare-datatypes ((array!2513 0))(
  ( (array!2514 (arr!1200 (Array (_ BitVec 32) (_ BitVec 64))) (size!1307 (_ BitVec 32))) )
))
(declare-fun lt!14151 () array!2513)

(declare-fun arrayCountValidKeys!0 (array!2513 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38313 (= (arrayCountValidKeys!0 lt!14151 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!904 0))(
  ( (Unit!905) )
))
(declare-fun lt!14152 () Unit!904)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2513 (_ BitVec 32) (_ BitVec 32)) Unit!904)

(assert (=> b!38313 (= lt!14152 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14151 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38313 (= lt!14151 (array!2514 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5318 res!23035) b!38313))

(declare-fun m!30929 () Bool)

(assert (=> start!5318 m!30929))

(declare-fun m!30931 () Bool)

(assert (=> b!38313 m!30931))

(declare-fun m!30933 () Bool)

(assert (=> b!38313 m!30933))

(push 1)

(assert (not start!5318))

(assert (not b!38313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

