; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5354 () Bool)

(assert start!5354)

(declare-fun b!38475 () Bool)

(declare-fun e!24447 () Bool)

(assert (=> b!38475 (= e!24447 true)))

(declare-fun lt!14330 () Bool)

(declare-datatypes ((List!1052 0))(
  ( (Nil!1049) (Cons!1048 (h!1616 (_ BitVec 64)) (t!3893 List!1052)) )
))
(declare-fun noDuplicate!23 (List!1052) Bool)

(assert (=> b!38475 (= lt!14330 (noDuplicate!23 Nil!1049))))

(declare-fun b!38472 () Bool)

(declare-fun e!24446 () Bool)

(assert (=> b!38472 (= e!24446 (not e!24447))))

(declare-fun res!23197 () Bool)

(assert (=> b!38472 (=> res!23197 e!24447)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38472 (= res!23197 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2549 0))(
  ( (array!2550 (arr!1218 (Array (_ BitVec 32) (_ BitVec 64))) (size!1325 (_ BitVec 32))) )
))
(declare-fun lt!14331 () array!2549)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2549 (_ BitVec 32)) Bool)

(assert (=> b!38472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14331 mask!853)))

(declare-datatypes ((Unit!940 0))(
  ( (Unit!941) )
))
(declare-fun lt!14329 () Unit!940)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2549 (_ BitVec 32) (_ BitVec 32)) Unit!940)

(assert (=> b!38472 (= lt!14329 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14331 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2549 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38472 (= (arrayCountValidKeys!0 lt!14331 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14332 () Unit!940)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2549 (_ BitVec 32) (_ BitVec 32)) Unit!940)

(assert (=> b!38472 (= lt!14332 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14331 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38472 (= lt!14331 (array!2550 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38473 () Bool)

(declare-fun res!23195 () Bool)

(assert (=> b!38473 (=> res!23195 e!24447)))

(declare-fun contains!494 (List!1052 (_ BitVec 64)) Bool)

(assert (=> b!38473 (= res!23195 (contains!494 Nil!1049 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!23196 () Bool)

(assert (=> start!5354 (=> (not res!23196) (not e!24446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5354 (= res!23196 (validMask!0 mask!853))))

(assert (=> start!5354 e!24446))

(assert (=> start!5354 true))

(declare-fun b!38474 () Bool)

(declare-fun res!23194 () Bool)

(assert (=> b!38474 (=> res!23194 e!24447)))

(assert (=> b!38474 (= res!23194 (contains!494 Nil!1049 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5354 res!23196) b!38472))

(assert (= (and b!38472 (not res!23197)) b!38473))

(assert (= (and b!38473 (not res!23195)) b!38474))

(assert (= (and b!38474 (not res!23194)) b!38475))

(declare-fun m!31147 () Bool)

(assert (=> b!38472 m!31147))

(declare-fun m!31149 () Bool)

(assert (=> b!38472 m!31149))

(declare-fun m!31151 () Bool)

(assert (=> b!38472 m!31151))

(declare-fun m!31153 () Bool)

(assert (=> b!38472 m!31153))

(declare-fun m!31155 () Bool)

(assert (=> b!38473 m!31155))

(declare-fun m!31157 () Bool)

(assert (=> b!38474 m!31157))

(declare-fun m!31159 () Bool)

(assert (=> start!5354 m!31159))

(declare-fun m!31161 () Bool)

(assert (=> b!38475 m!31161))

(push 1)

(assert (not b!38472))

(assert (not b!38474))

(assert (not b!38473))

(assert (not b!38475))

(assert (not start!5354))

(check-sat)

