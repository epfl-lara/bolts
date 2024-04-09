; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5310 () Bool)

(assert start!5310)

(declare-fun res!23023 () Bool)

(declare-fun e!24345 () Bool)

(assert (=> start!5310 (=> (not res!23023) (not e!24345))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5310 (= res!23023 (validMask!0 mask!853))))

(assert (=> start!5310 e!24345))

(assert (=> start!5310 true))

(declare-fun b!38301 () Bool)

(assert (=> b!38301 (= e!24345 (not true))))

(declare-datatypes ((array!2505 0))(
  ( (array!2506 (arr!1196 (Array (_ BitVec 32) (_ BitVec 64))) (size!1303 (_ BitVec 32))) )
))
(declare-fun lt!14127 () array!2505)

(declare-fun arrayCountValidKeys!0 (array!2505 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38301 (= (arrayCountValidKeys!0 lt!14127 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!896 0))(
  ( (Unit!897) )
))
(declare-fun lt!14128 () Unit!896)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2505 (_ BitVec 32) (_ BitVec 32)) Unit!896)

(assert (=> b!38301 (= lt!14128 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14127 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38301 (= lt!14127 (array!2506 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5310 res!23023) b!38301))

(declare-fun m!30905 () Bool)

(assert (=> start!5310 m!30905))

(declare-fun m!30907 () Bool)

(assert (=> b!38301 m!30907))

(declare-fun m!30909 () Bool)

(assert (=> b!38301 m!30909))

(check-sat (not start!5310) (not b!38301))
(check-sat)
