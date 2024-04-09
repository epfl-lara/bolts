; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5308 () Bool)

(assert start!5308)

(declare-fun res!23020 () Bool)

(declare-fun e!24342 () Bool)

(assert (=> start!5308 (=> (not res!23020) (not e!24342))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5308 (= res!23020 (validMask!0 mask!853))))

(assert (=> start!5308 e!24342))

(assert (=> start!5308 true))

(declare-fun b!38298 () Bool)

(assert (=> b!38298 (= e!24342 (not true))))

(declare-datatypes ((array!2503 0))(
  ( (array!2504 (arr!1195 (Array (_ BitVec 32) (_ BitVec 64))) (size!1302 (_ BitVec 32))) )
))
(declare-fun lt!14121 () array!2503)

(declare-fun arrayCountValidKeys!0 (array!2503 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38298 (= (arrayCountValidKeys!0 lt!14121 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!894 0))(
  ( (Unit!895) )
))
(declare-fun lt!14122 () Unit!894)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2503 (_ BitVec 32) (_ BitVec 32)) Unit!894)

(assert (=> b!38298 (= lt!14122 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14121 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38298 (= lt!14121 (array!2504 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5308 res!23020) b!38298))

(declare-fun m!30899 () Bool)

(assert (=> start!5308 m!30899))

(declare-fun m!30901 () Bool)

(assert (=> b!38298 m!30901))

(declare-fun m!30903 () Bool)

(assert (=> b!38298 m!30903))

(push 1)

(assert (not start!5308))

(assert (not b!38298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

