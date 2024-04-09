; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5328 () Bool)

(assert start!5328)

(declare-fun res!23050 () Bool)

(declare-fun e!24372 () Bool)

(assert (=> start!5328 (=> (not res!23050) (not e!24372))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5328 (= res!23050 (validMask!0 mask!853))))

(assert (=> start!5328 e!24372))

(assert (=> start!5328 true))

(declare-fun b!38328 () Bool)

(assert (=> b!38328 (= e!24372 (not true))))

(declare-datatypes ((array!2523 0))(
  ( (array!2524 (arr!1205 (Array (_ BitVec 32) (_ BitVec 64))) (size!1312 (_ BitVec 32))) )
))
(declare-fun lt!14181 () array!2523)

(declare-fun arrayCountValidKeys!0 (array!2523 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38328 (= (arrayCountValidKeys!0 lt!14181 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!914 0))(
  ( (Unit!915) )
))
(declare-fun lt!14182 () Unit!914)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2523 (_ BitVec 32) (_ BitVec 32)) Unit!914)

(assert (=> b!38328 (= lt!14182 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14181 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38328 (= lt!14181 (array!2524 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5328 res!23050) b!38328))

(declare-fun m!30959 () Bool)

(assert (=> start!5328 m!30959))

(declare-fun m!30961 () Bool)

(assert (=> b!38328 m!30961))

(declare-fun m!30963 () Bool)

(assert (=> b!38328 m!30963))

(check-sat (not start!5328) (not b!38328))
(check-sat)
