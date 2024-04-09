; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5362 () Bool)

(assert start!5362)

(declare-fun b!38523 () Bool)

(declare-fun e!24470 () Bool)

(assert (=> b!38523 (= e!24470 true)))

(declare-fun lt!14378 () Bool)

(declare-datatypes ((List!1056 0))(
  ( (Nil!1053) (Cons!1052 (h!1620 (_ BitVec 64)) (t!3897 List!1056)) )
))
(declare-fun noDuplicate!27 (List!1056) Bool)

(assert (=> b!38523 (= lt!14378 (noDuplicate!27 Nil!1053))))

(declare-fun b!38520 () Bool)

(declare-fun e!24471 () Bool)

(assert (=> b!38520 (= e!24471 (not e!24470))))

(declare-fun res!23245 () Bool)

(assert (=> b!38520 (=> res!23245 e!24470)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38520 (= res!23245 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2557 0))(
  ( (array!2558 (arr!1222 (Array (_ BitVec 32) (_ BitVec 64))) (size!1329 (_ BitVec 32))) )
))
(declare-fun lt!14380 () array!2557)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2557 (_ BitVec 32)) Bool)

(assert (=> b!38520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14380 mask!853)))

(declare-datatypes ((Unit!948 0))(
  ( (Unit!949) )
))
(declare-fun lt!14377 () Unit!948)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2557 (_ BitVec 32) (_ BitVec 32)) Unit!948)

(assert (=> b!38520 (= lt!14377 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14380 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2557 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38520 (= (arrayCountValidKeys!0 lt!14380 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14379 () Unit!948)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2557 (_ BitVec 32) (_ BitVec 32)) Unit!948)

(assert (=> b!38520 (= lt!14379 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14380 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38520 (= lt!14380 (array!2558 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun res!23244 () Bool)

(assert (=> start!5362 (=> (not res!23244) (not e!24471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5362 (= res!23244 (validMask!0 mask!853))))

(assert (=> start!5362 e!24471))

(assert (=> start!5362 true))

(declare-fun b!38522 () Bool)

(declare-fun res!23242 () Bool)

(assert (=> b!38522 (=> res!23242 e!24470)))

(declare-fun contains!498 (List!1056 (_ BitVec 64)) Bool)

(assert (=> b!38522 (= res!23242 (contains!498 Nil!1053 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38521 () Bool)

(declare-fun res!23243 () Bool)

(assert (=> b!38521 (=> res!23243 e!24470)))

(assert (=> b!38521 (= res!23243 (contains!498 Nil!1053 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5362 res!23244) b!38520))

(assert (= (and b!38520 (not res!23245)) b!38521))

(assert (= (and b!38521 (not res!23243)) b!38522))

(assert (= (and b!38522 (not res!23242)) b!38523))

(declare-fun m!31211 () Bool)

(assert (=> start!5362 m!31211))

(declare-fun m!31213 () Bool)

(assert (=> b!38521 m!31213))

(declare-fun m!31215 () Bool)

(assert (=> b!38520 m!31215))

(declare-fun m!31217 () Bool)

(assert (=> b!38520 m!31217))

(declare-fun m!31219 () Bool)

(assert (=> b!38520 m!31219))

(declare-fun m!31221 () Bool)

(assert (=> b!38520 m!31221))

(declare-fun m!31223 () Bool)

(assert (=> b!38523 m!31223))

(declare-fun m!31225 () Bool)

(assert (=> b!38522 m!31225))

(push 1)

(assert (not b!38523))

(assert (not b!38520))

(assert (not b!38522))

(assert (not b!38521))

(assert (not start!5362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

