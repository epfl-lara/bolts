; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5342 () Bool)

(assert start!5342)

(declare-fun b!38400 () Bool)

(declare-fun e!24411 () Bool)

(declare-fun e!24410 () Bool)

(assert (=> b!38400 (= e!24411 (not e!24410))))

(declare-fun res!23125 () Bool)

(assert (=> b!38400 (=> res!23125 e!24410)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38400 (= res!23125 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2537 0))(
  ( (array!2538 (arr!1212 (Array (_ BitVec 32) (_ BitVec 64))) (size!1319 (_ BitVec 32))) )
))
(declare-fun lt!14257 () array!2537)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2537 (_ BitVec 32)) Bool)

(assert (=> b!38400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14257 mask!853)))

(declare-datatypes ((Unit!928 0))(
  ( (Unit!929) )
))
(declare-fun lt!14258 () Unit!928)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2537 (_ BitVec 32) (_ BitVec 32)) Unit!928)

(assert (=> b!38400 (= lt!14258 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14257 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2537 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38400 (= (arrayCountValidKeys!0 lt!14257 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14260 () Unit!928)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2537 (_ BitVec 32) (_ BitVec 32)) Unit!928)

(assert (=> b!38400 (= lt!14260 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14257 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38400 (= lt!14257 (array!2538 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38402 () Bool)

(declare-fun res!23122 () Bool)

(assert (=> b!38402 (=> res!23122 e!24410)))

(declare-datatypes ((List!1046 0))(
  ( (Nil!1043) (Cons!1042 (h!1610 (_ BitVec 64)) (t!3887 List!1046)) )
))
(declare-fun contains!488 (List!1046 (_ BitVec 64)) Bool)

(assert (=> b!38402 (= res!23122 (contains!488 Nil!1043 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38401 () Bool)

(declare-fun res!23124 () Bool)

(assert (=> b!38401 (=> res!23124 e!24410)))

(assert (=> b!38401 (= res!23124 (contains!488 Nil!1043 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!23123 () Bool)

(assert (=> start!5342 (=> (not res!23123) (not e!24411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5342 (= res!23123 (validMask!0 mask!853))))

(assert (=> start!5342 e!24411))

(assert (=> start!5342 true))

(declare-fun b!38403 () Bool)

(assert (=> b!38403 (= e!24410 true)))

(declare-fun lt!14259 () Bool)

(declare-fun noDuplicate!17 (List!1046) Bool)

(assert (=> b!38403 (= lt!14259 (noDuplicate!17 Nil!1043))))

(assert (= (and start!5342 res!23123) b!38400))

(assert (= (and b!38400 (not res!23125)) b!38401))

(assert (= (and b!38401 (not res!23124)) b!38402))

(assert (= (and b!38402 (not res!23122)) b!38403))

(declare-fun m!31051 () Bool)

(assert (=> b!38402 m!31051))

(declare-fun m!31053 () Bool)

(assert (=> b!38403 m!31053))

(declare-fun m!31055 () Bool)

(assert (=> b!38400 m!31055))

(declare-fun m!31057 () Bool)

(assert (=> b!38400 m!31057))

(declare-fun m!31059 () Bool)

(assert (=> b!38400 m!31059))

(declare-fun m!31061 () Bool)

(assert (=> b!38400 m!31061))

(declare-fun m!31063 () Bool)

(assert (=> b!38401 m!31063))

(declare-fun m!31065 () Bool)

(assert (=> start!5342 m!31065))

(push 1)

(assert (not start!5342))

(assert (not b!38401))

(assert (not b!38403))

(assert (not b!38400))

(assert (not b!38402))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

