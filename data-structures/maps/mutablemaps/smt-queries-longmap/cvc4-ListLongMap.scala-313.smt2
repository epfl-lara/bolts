; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5360 () Bool)

(assert start!5360)

(declare-fun res!23232 () Bool)

(declare-fun e!24464 () Bool)

(assert (=> start!5360 (=> (not res!23232) (not e!24464))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5360 (= res!23232 (validMask!0 mask!853))))

(assert (=> start!5360 e!24464))

(assert (=> start!5360 true))

(declare-fun b!38510 () Bool)

(declare-fun res!23231 () Bool)

(declare-fun e!24465 () Bool)

(assert (=> b!38510 (=> res!23231 e!24465)))

(declare-datatypes ((List!1055 0))(
  ( (Nil!1052) (Cons!1051 (h!1619 (_ BitVec 64)) (t!3896 List!1055)) )
))
(declare-fun contains!497 (List!1055 (_ BitVec 64)) Bool)

(assert (=> b!38510 (= res!23231 (contains!497 Nil!1052 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38509 () Bool)

(declare-fun res!23230 () Bool)

(assert (=> b!38509 (=> res!23230 e!24465)))

(assert (=> b!38509 (= res!23230 (contains!497 Nil!1052 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38508 () Bool)

(assert (=> b!38508 (= e!24464 (not e!24465))))

(declare-fun res!23233 () Bool)

(assert (=> b!38508 (=> res!23233 e!24465)))

(assert (=> b!38508 (= res!23233 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2555 0))(
  ( (array!2556 (arr!1221 (Array (_ BitVec 32) (_ BitVec 64))) (size!1328 (_ BitVec 32))) )
))
(declare-fun lt!14365 () array!2555)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2555 (_ BitVec 32)) Bool)

(assert (=> b!38508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14365 mask!853)))

(declare-datatypes ((Unit!946 0))(
  ( (Unit!947) )
))
(declare-fun lt!14368 () Unit!946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2555 (_ BitVec 32) (_ BitVec 32)) Unit!946)

(assert (=> b!38508 (= lt!14368 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14365 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2555 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38508 (= (arrayCountValidKeys!0 lt!14365 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14366 () Unit!946)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2555 (_ BitVec 32) (_ BitVec 32)) Unit!946)

(assert (=> b!38508 (= lt!14366 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14365 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38508 (= lt!14365 (array!2556 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38511 () Bool)

(assert (=> b!38511 (= e!24465 true)))

(declare-fun lt!14367 () Bool)

(declare-fun noDuplicate!26 (List!1055) Bool)

(assert (=> b!38511 (= lt!14367 (noDuplicate!26 Nil!1052))))

(assert (= (and start!5360 res!23232) b!38508))

(assert (= (and b!38508 (not res!23233)) b!38509))

(assert (= (and b!38509 (not res!23230)) b!38510))

(assert (= (and b!38510 (not res!23231)) b!38511))

(declare-fun m!31195 () Bool)

(assert (=> start!5360 m!31195))

(declare-fun m!31197 () Bool)

(assert (=> b!38508 m!31197))

(declare-fun m!31199 () Bool)

(assert (=> b!38508 m!31199))

(declare-fun m!31201 () Bool)

(assert (=> b!38508 m!31201))

(declare-fun m!31203 () Bool)

(assert (=> b!38508 m!31203))

(declare-fun m!31205 () Bool)

(assert (=> b!38511 m!31205))

(declare-fun m!31207 () Bool)

(assert (=> b!38510 m!31207))

(declare-fun m!31209 () Bool)

(assert (=> b!38509 m!31209))

(push 1)

(assert (not b!38510))

(assert (not start!5360))

(assert (not b!38508))

(assert (not b!38511))

(assert (not b!38509))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

