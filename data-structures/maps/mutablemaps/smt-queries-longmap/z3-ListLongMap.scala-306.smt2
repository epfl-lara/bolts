; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5316 () Bool)

(assert start!5316)

(declare-fun res!23032 () Bool)

(declare-fun e!24354 () Bool)

(assert (=> start!5316 (=> (not res!23032) (not e!24354))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5316 (= res!23032 (validMask!0 mask!853))))

(assert (=> start!5316 e!24354))

(assert (=> start!5316 true))

(declare-fun b!38310 () Bool)

(assert (=> b!38310 (= e!24354 (not true))))

(declare-datatypes ((array!2511 0))(
  ( (array!2512 (arr!1199 (Array (_ BitVec 32) (_ BitVec 64))) (size!1306 (_ BitVec 32))) )
))
(declare-fun lt!14145 () array!2511)

(declare-fun arrayCountValidKeys!0 (array!2511 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38310 (= (arrayCountValidKeys!0 lt!14145 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!902 0))(
  ( (Unit!903) )
))
(declare-fun lt!14146 () Unit!902)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2511 (_ BitVec 32) (_ BitVec 32)) Unit!902)

(assert (=> b!38310 (= lt!14146 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14145 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38310 (= lt!14145 (array!2512 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5316 res!23032) b!38310))

(declare-fun m!30923 () Bool)

(assert (=> start!5316 m!30923))

(declare-fun m!30925 () Bool)

(assert (=> b!38310 m!30925))

(declare-fun m!30927 () Bool)

(assert (=> b!38310 m!30927))

(check-sat (not start!5316) (not b!38310))
(check-sat)
