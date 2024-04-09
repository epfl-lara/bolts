; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5350 () Bool)

(assert start!5350)

(declare-fun b!38448 () Bool)

(declare-fun e!24434 () Bool)

(declare-fun e!24435 () Bool)

(assert (=> b!38448 (= e!24434 (not e!24435))))

(declare-fun res!23171 () Bool)

(assert (=> b!38448 (=> res!23171 e!24435)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38448 (= res!23171 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2545 0))(
  ( (array!2546 (arr!1216 (Array (_ BitVec 32) (_ BitVec 64))) (size!1323 (_ BitVec 32))) )
))
(declare-fun lt!14308 () array!2545)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2545 (_ BitVec 32)) Bool)

(assert (=> b!38448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14308 mask!853)))

(declare-datatypes ((Unit!936 0))(
  ( (Unit!937) )
))
(declare-fun lt!14307 () Unit!936)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2545 (_ BitVec 32) (_ BitVec 32)) Unit!936)

(assert (=> b!38448 (= lt!14307 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14308 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2545 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38448 (= (arrayCountValidKeys!0 lt!14308 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14306 () Unit!936)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2545 (_ BitVec 32) (_ BitVec 32)) Unit!936)

(assert (=> b!38448 (= lt!14306 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14308 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38448 (= lt!14308 (array!2546 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38449 () Bool)

(declare-fun res!23173 () Bool)

(assert (=> b!38449 (=> res!23173 e!24435)))

(declare-datatypes ((List!1050 0))(
  ( (Nil!1047) (Cons!1046 (h!1614 (_ BitVec 64)) (t!3891 List!1050)) )
))
(declare-fun contains!492 (List!1050 (_ BitVec 64)) Bool)

(assert (=> b!38449 (= res!23173 (contains!492 Nil!1047 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!23172 () Bool)

(assert (=> start!5350 (=> (not res!23172) (not e!24434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5350 (= res!23172 (validMask!0 mask!853))))

(assert (=> start!5350 e!24434))

(assert (=> start!5350 true))

(declare-fun b!38451 () Bool)

(assert (=> b!38451 (= e!24435 true)))

(declare-fun lt!14305 () Bool)

(declare-fun noDuplicate!21 (List!1050) Bool)

(assert (=> b!38451 (= lt!14305 (noDuplicate!21 Nil!1047))))

(declare-fun b!38450 () Bool)

(declare-fun res!23170 () Bool)

(assert (=> b!38450 (=> res!23170 e!24435)))

(assert (=> b!38450 (= res!23170 (contains!492 Nil!1047 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5350 res!23172) b!38448))

(assert (= (and b!38448 (not res!23171)) b!38449))

(assert (= (and b!38449 (not res!23173)) b!38450))

(assert (= (and b!38450 (not res!23170)) b!38451))

(declare-fun m!31115 () Bool)

(assert (=> b!38448 m!31115))

(declare-fun m!31117 () Bool)

(assert (=> b!38448 m!31117))

(declare-fun m!31119 () Bool)

(assert (=> b!38448 m!31119))

(declare-fun m!31121 () Bool)

(assert (=> b!38448 m!31121))

(declare-fun m!31123 () Bool)

(assert (=> start!5350 m!31123))

(declare-fun m!31125 () Bool)

(assert (=> b!38451 m!31125))

(declare-fun m!31127 () Bool)

(assert (=> b!38449 m!31127))

(declare-fun m!31129 () Bool)

(assert (=> b!38450 m!31129))

(push 1)

(assert (not start!5350))

(assert (not b!38449))

(assert (not b!38448))

(assert (not b!38450))

(assert (not b!38451))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

