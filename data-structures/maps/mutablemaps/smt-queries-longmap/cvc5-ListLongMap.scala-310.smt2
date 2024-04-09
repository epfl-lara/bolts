; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5338 () Bool)

(assert start!5338)

(declare-fun b!38379 () Bool)

(declare-fun e!24399 () Bool)

(assert (=> b!38379 (= e!24399 true)))

(declare-fun lt!14236 () Bool)

(declare-datatypes ((List!1044 0))(
  ( (Nil!1041) (Cons!1040 (h!1608 (_ BitVec 64)) (t!3885 List!1044)) )
))
(declare-fun noDuplicate!15 (List!1044) Bool)

(assert (=> b!38379 (= lt!14236 (noDuplicate!15 Nil!1041))))

(declare-fun res!23099 () Bool)

(declare-fun e!24398 () Bool)

(assert (=> start!5338 (=> (not res!23099) (not e!24398))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5338 (= res!23099 (validMask!0 mask!853))))

(assert (=> start!5338 e!24398))

(assert (=> start!5338 true))

(declare-fun b!38378 () Bool)

(declare-fun res!23098 () Bool)

(assert (=> b!38378 (=> res!23098 e!24399)))

(declare-fun contains!486 (List!1044 (_ BitVec 64)) Bool)

(assert (=> b!38378 (= res!23098 (contains!486 Nil!1041 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38377 () Bool)

(declare-fun res!23100 () Bool)

(assert (=> b!38377 (=> res!23100 e!24399)))

(assert (=> b!38377 (= res!23100 (contains!486 Nil!1041 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38376 () Bool)

(assert (=> b!38376 (= e!24398 (not e!24399))))

(declare-fun res!23101 () Bool)

(assert (=> b!38376 (=> res!23101 e!24399)))

(assert (=> b!38376 (= res!23101 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2533 0))(
  ( (array!2534 (arr!1210 (Array (_ BitVec 32) (_ BitVec 64))) (size!1317 (_ BitVec 32))) )
))
(declare-fun lt!14234 () array!2533)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2533 (_ BitVec 32)) Bool)

(assert (=> b!38376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14234 mask!853)))

(declare-datatypes ((Unit!924 0))(
  ( (Unit!925) )
))
(declare-fun lt!14233 () Unit!924)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2533 (_ BitVec 32) (_ BitVec 32)) Unit!924)

(assert (=> b!38376 (= lt!14233 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14234 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2533 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38376 (= (arrayCountValidKeys!0 lt!14234 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14235 () Unit!924)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2533 (_ BitVec 32) (_ BitVec 32)) Unit!924)

(assert (=> b!38376 (= lt!14235 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14234 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38376 (= lt!14234 (array!2534 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5338 res!23099) b!38376))

(assert (= (and b!38376 (not res!23101)) b!38377))

(assert (= (and b!38377 (not res!23100)) b!38378))

(assert (= (and b!38378 (not res!23098)) b!38379))

(declare-fun m!31019 () Bool)

(assert (=> b!38377 m!31019))

(declare-fun m!31021 () Bool)

(assert (=> start!5338 m!31021))

(declare-fun m!31023 () Bool)

(assert (=> b!38378 m!31023))

(declare-fun m!31025 () Bool)

(assert (=> b!38379 m!31025))

(declare-fun m!31027 () Bool)

(assert (=> b!38376 m!31027))

(declare-fun m!31029 () Bool)

(assert (=> b!38376 m!31029))

(declare-fun m!31031 () Bool)

(assert (=> b!38376 m!31031))

(declare-fun m!31033 () Bool)

(assert (=> b!38376 m!31033))

(push 1)

(assert (not b!38376))

(assert (not b!38378))

(assert (not b!38377))

(assert (not b!38379))

(assert (not start!5338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

