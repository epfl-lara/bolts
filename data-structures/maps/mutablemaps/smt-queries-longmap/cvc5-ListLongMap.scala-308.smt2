; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5326 () Bool)

(assert start!5326)

(declare-fun res!23047 () Bool)

(declare-fun e!24369 () Bool)

(assert (=> start!5326 (=> (not res!23047) (not e!24369))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5326 (= res!23047 (validMask!0 mask!853))))

(assert (=> start!5326 e!24369))

(assert (=> start!5326 true))

(declare-fun b!38325 () Bool)

(assert (=> b!38325 (= e!24369 (not true))))

(declare-datatypes ((array!2521 0))(
  ( (array!2522 (arr!1204 (Array (_ BitVec 32) (_ BitVec 64))) (size!1311 (_ BitVec 32))) )
))
(declare-fun lt!14175 () array!2521)

(declare-fun arrayCountValidKeys!0 (array!2521 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38325 (= (arrayCountValidKeys!0 lt!14175 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!912 0))(
  ( (Unit!913) )
))
(declare-fun lt!14176 () Unit!912)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2521 (_ BitVec 32) (_ BitVec 32)) Unit!912)

(assert (=> b!38325 (= lt!14176 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14175 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38325 (= lt!14175 (array!2522 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5326 res!23047) b!38325))

(declare-fun m!30953 () Bool)

(assert (=> start!5326 m!30953))

(declare-fun m!30955 () Bool)

(assert (=> b!38325 m!30955))

(declare-fun m!30957 () Bool)

(assert (=> b!38325 m!30957))

(push 1)

(assert (not b!38325))

(assert (not start!5326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

