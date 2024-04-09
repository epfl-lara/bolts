; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5346 () Bool)

(assert start!5346)

(declare-fun b!38426 () Bool)

(declare-fun res!23147 () Bool)

(declare-fun e!24422 () Bool)

(assert (=> b!38426 (=> res!23147 e!24422)))

(declare-datatypes ((List!1048 0))(
  ( (Nil!1045) (Cons!1044 (h!1612 (_ BitVec 64)) (t!3889 List!1048)) )
))
(declare-fun contains!490 (List!1048 (_ BitVec 64)) Bool)

(assert (=> b!38426 (= res!23147 (contains!490 Nil!1045 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38425 () Bool)

(declare-fun res!23148 () Bool)

(assert (=> b!38425 (=> res!23148 e!24422)))

(assert (=> b!38425 (= res!23148 (contains!490 Nil!1045 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38427 () Bool)

(assert (=> b!38427 (= e!24422 true)))

(declare-fun lt!14281 () Bool)

(declare-fun noDuplicate!19 (List!1048) Bool)

(assert (=> b!38427 (= lt!14281 (noDuplicate!19 Nil!1045))))

(declare-fun b!38424 () Bool)

(declare-fun e!24423 () Bool)

(assert (=> b!38424 (= e!24423 (not e!24422))))

(declare-fun res!23149 () Bool)

(assert (=> b!38424 (=> res!23149 e!24422)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38424 (= res!23149 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2541 0))(
  ( (array!2542 (arr!1214 (Array (_ BitVec 32) (_ BitVec 64))) (size!1321 (_ BitVec 32))) )
))
(declare-fun lt!14282 () array!2541)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2541 (_ BitVec 32)) Bool)

(assert (=> b!38424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14282 mask!853)))

(declare-datatypes ((Unit!932 0))(
  ( (Unit!933) )
))
(declare-fun lt!14284 () Unit!932)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2541 (_ BitVec 32) (_ BitVec 32)) Unit!932)

(assert (=> b!38424 (= lt!14284 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14282 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2541 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38424 (= (arrayCountValidKeys!0 lt!14282 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14283 () Unit!932)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2541 (_ BitVec 32) (_ BitVec 32)) Unit!932)

(assert (=> b!38424 (= lt!14283 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14282 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38424 (= lt!14282 (array!2542 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun res!23146 () Bool)

(assert (=> start!5346 (=> (not res!23146) (not e!24423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5346 (= res!23146 (validMask!0 mask!853))))

(assert (=> start!5346 e!24423))

(assert (=> start!5346 true))

(assert (= (and start!5346 res!23146) b!38424))

(assert (= (and b!38424 (not res!23149)) b!38425))

(assert (= (and b!38425 (not res!23148)) b!38426))

(assert (= (and b!38426 (not res!23147)) b!38427))

(declare-fun m!31083 () Bool)

(assert (=> start!5346 m!31083))

(declare-fun m!31085 () Bool)

(assert (=> b!38425 m!31085))

(declare-fun m!31087 () Bool)

(assert (=> b!38424 m!31087))

(declare-fun m!31089 () Bool)

(assert (=> b!38424 m!31089))

(declare-fun m!31091 () Bool)

(assert (=> b!38424 m!31091))

(declare-fun m!31093 () Bool)

(assert (=> b!38424 m!31093))

(declare-fun m!31095 () Bool)

(assert (=> b!38426 m!31095))

(declare-fun m!31097 () Bool)

(assert (=> b!38427 m!31097))

(check-sat (not b!38425) (not b!38427) (not b!38424) (not start!5346) (not b!38426))
(check-sat)
