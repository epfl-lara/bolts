; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5322 () Bool)

(assert start!5322)

(declare-fun res!23041 () Bool)

(declare-fun e!24363 () Bool)

(assert (=> start!5322 (=> (not res!23041) (not e!24363))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5322 (= res!23041 (validMask!0 mask!853))))

(assert (=> start!5322 e!24363))

(assert (=> start!5322 true))

(declare-fun b!38319 () Bool)

(assert (=> b!38319 (= e!24363 (not true))))

(declare-datatypes ((array!2517 0))(
  ( (array!2518 (arr!1202 (Array (_ BitVec 32) (_ BitVec 64))) (size!1309 (_ BitVec 32))) )
))
(declare-fun lt!14163 () array!2517)

(declare-fun arrayCountValidKeys!0 (array!2517 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38319 (= (arrayCountValidKeys!0 lt!14163 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!908 0))(
  ( (Unit!909) )
))
(declare-fun lt!14164 () Unit!908)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2517 (_ BitVec 32) (_ BitVec 32)) Unit!908)

(assert (=> b!38319 (= lt!14164 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14163 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38319 (= lt!14163 (array!2518 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5322 res!23041) b!38319))

(declare-fun m!30941 () Bool)

(assert (=> start!5322 m!30941))

(declare-fun m!30943 () Bool)

(assert (=> b!38319 m!30943))

(declare-fun m!30945 () Bool)

(assert (=> b!38319 m!30945))

(check-sat (not b!38319) (not start!5322))
