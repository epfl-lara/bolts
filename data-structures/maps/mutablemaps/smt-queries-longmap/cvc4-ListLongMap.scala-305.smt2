; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5312 () Bool)

(assert start!5312)

(declare-fun res!23026 () Bool)

(declare-fun e!24348 () Bool)

(assert (=> start!5312 (=> (not res!23026) (not e!24348))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5312 (= res!23026 (validMask!0 mask!853))))

(assert (=> start!5312 e!24348))

(assert (=> start!5312 true))

(declare-fun b!38304 () Bool)

(assert (=> b!38304 (= e!24348 (not true))))

(declare-datatypes ((array!2507 0))(
  ( (array!2508 (arr!1197 (Array (_ BitVec 32) (_ BitVec 64))) (size!1304 (_ BitVec 32))) )
))
(declare-fun lt!14133 () array!2507)

(declare-fun arrayCountValidKeys!0 (array!2507 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38304 (= (arrayCountValidKeys!0 lt!14133 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!898 0))(
  ( (Unit!899) )
))
(declare-fun lt!14134 () Unit!898)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2507 (_ BitVec 32) (_ BitVec 32)) Unit!898)

(assert (=> b!38304 (= lt!14134 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14133 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38304 (= lt!14133 (array!2508 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5312 res!23026) b!38304))

(declare-fun m!30911 () Bool)

(assert (=> start!5312 m!30911))

(declare-fun m!30913 () Bool)

(assert (=> b!38304 m!30913))

(declare-fun m!30915 () Bool)

(assert (=> b!38304 m!30915))

(push 1)

(assert (not start!5312))

(assert (not b!38304))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

