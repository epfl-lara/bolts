; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5330 () Bool)

(assert start!5330)

(declare-fun res!23053 () Bool)

(declare-fun e!24375 () Bool)

(assert (=> start!5330 (=> (not res!23053) (not e!24375))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5330 (= res!23053 (validMask!0 mask!853))))

(assert (=> start!5330 e!24375))

(assert (=> start!5330 true))

(declare-fun b!38331 () Bool)

(assert (=> b!38331 (= e!24375 (not true))))

(declare-datatypes ((array!2525 0))(
  ( (array!2526 (arr!1206 (Array (_ BitVec 32) (_ BitVec 64))) (size!1313 (_ BitVec 32))) )
))
(declare-fun lt!14187 () array!2525)

(declare-fun arrayCountValidKeys!0 (array!2525 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38331 (= (arrayCountValidKeys!0 lt!14187 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!916 0))(
  ( (Unit!917) )
))
(declare-fun lt!14188 () Unit!916)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2525 (_ BitVec 32) (_ BitVec 32)) Unit!916)

(assert (=> b!38331 (= lt!14188 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14187 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38331 (= lt!14187 (array!2526 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5330 res!23053) b!38331))

(declare-fun m!30965 () Bool)

(assert (=> start!5330 m!30965))

(declare-fun m!30967 () Bool)

(assert (=> b!38331 m!30967))

(declare-fun m!30969 () Bool)

(assert (=> b!38331 m!30969))

(push 1)

(assert (not b!38331))

(assert (not start!5330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

