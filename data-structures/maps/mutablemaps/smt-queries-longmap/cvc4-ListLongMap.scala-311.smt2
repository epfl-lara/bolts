; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5348 () Bool)

(assert start!5348)

(declare-fun res!23160 () Bool)

(declare-fun e!24428 () Bool)

(assert (=> start!5348 (=> (not res!23160) (not e!24428))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5348 (= res!23160 (validMask!0 mask!853))))

(assert (=> start!5348 e!24428))

(assert (=> start!5348 true))

(declare-fun b!38439 () Bool)

(declare-fun e!24429 () Bool)

(assert (=> b!38439 (= e!24429 true)))

(declare-fun lt!14295 () Bool)

(declare-datatypes ((List!1049 0))(
  ( (Nil!1046) (Cons!1045 (h!1613 (_ BitVec 64)) (t!3890 List!1049)) )
))
(declare-fun noDuplicate!20 (List!1049) Bool)

(assert (=> b!38439 (= lt!14295 (noDuplicate!20 Nil!1046))))

(declare-fun b!38437 () Bool)

(declare-fun res!23159 () Bool)

(assert (=> b!38437 (=> res!23159 e!24429)))

(declare-fun contains!491 (List!1049 (_ BitVec 64)) Bool)

(assert (=> b!38437 (= res!23159 (contains!491 Nil!1046 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38438 () Bool)

(declare-fun res!23158 () Bool)

(assert (=> b!38438 (=> res!23158 e!24429)))

(assert (=> b!38438 (= res!23158 (contains!491 Nil!1046 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38436 () Bool)

(assert (=> b!38436 (= e!24428 (not e!24429))))

(declare-fun res!23161 () Bool)

(assert (=> b!38436 (=> res!23161 e!24429)))

(assert (=> b!38436 (= res!23161 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2543 0))(
  ( (array!2544 (arr!1215 (Array (_ BitVec 32) (_ BitVec 64))) (size!1322 (_ BitVec 32))) )
))
(declare-fun lt!14294 () array!2543)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2543 (_ BitVec 32)) Bool)

(assert (=> b!38436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14294 mask!853)))

(declare-datatypes ((Unit!934 0))(
  ( (Unit!935) )
))
(declare-fun lt!14296 () Unit!934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2543 (_ BitVec 32) (_ BitVec 32)) Unit!934)

(assert (=> b!38436 (= lt!14296 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14294 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2543 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38436 (= (arrayCountValidKeys!0 lt!14294 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14293 () Unit!934)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2543 (_ BitVec 32) (_ BitVec 32)) Unit!934)

(assert (=> b!38436 (= lt!14293 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14294 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38436 (= lt!14294 (array!2544 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5348 res!23160) b!38436))

(assert (= (and b!38436 (not res!23161)) b!38437))

(assert (= (and b!38437 (not res!23159)) b!38438))

(assert (= (and b!38438 (not res!23158)) b!38439))

(declare-fun m!31099 () Bool)

(assert (=> b!38439 m!31099))

(declare-fun m!31101 () Bool)

(assert (=> b!38437 m!31101))

(declare-fun m!31103 () Bool)

(assert (=> b!38436 m!31103))

(declare-fun m!31105 () Bool)

(assert (=> b!38436 m!31105))

(declare-fun m!31107 () Bool)

(assert (=> b!38436 m!31107))

(declare-fun m!31109 () Bool)

(assert (=> b!38436 m!31109))

(declare-fun m!31111 () Bool)

(assert (=> b!38438 m!31111))

(declare-fun m!31113 () Bool)

(assert (=> start!5348 m!31113))

(push 1)

(assert (not b!38437))

(assert (not b!38439))

(assert (not b!38436))

(assert (not b!38438))

(assert (not start!5348))

(check-sat)

