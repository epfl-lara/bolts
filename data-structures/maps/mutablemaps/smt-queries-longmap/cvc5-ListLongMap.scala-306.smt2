; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5314 () Bool)

(assert start!5314)

(declare-fun res!23029 () Bool)

(declare-fun e!24351 () Bool)

(assert (=> start!5314 (=> (not res!23029) (not e!24351))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5314 (= res!23029 (validMask!0 mask!853))))

(assert (=> start!5314 e!24351))

(assert (=> start!5314 true))

(declare-fun b!38307 () Bool)

(assert (=> b!38307 (= e!24351 (not true))))

(declare-datatypes ((array!2509 0))(
  ( (array!2510 (arr!1198 (Array (_ BitVec 32) (_ BitVec 64))) (size!1305 (_ BitVec 32))) )
))
(declare-fun lt!14139 () array!2509)

(declare-fun arrayCountValidKeys!0 (array!2509 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38307 (= (arrayCountValidKeys!0 lt!14139 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!900 0))(
  ( (Unit!901) )
))
(declare-fun lt!14140 () Unit!900)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2509 (_ BitVec 32) (_ BitVec 32)) Unit!900)

(assert (=> b!38307 (= lt!14140 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14139 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38307 (= lt!14139 (array!2510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5314 res!23029) b!38307))

(declare-fun m!30917 () Bool)

(assert (=> start!5314 m!30917))

(declare-fun m!30919 () Bool)

(assert (=> b!38307 m!30919))

(declare-fun m!30921 () Bool)

(assert (=> b!38307 m!30921))

(push 1)

(assert (not b!38307))

(assert (not start!5314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

