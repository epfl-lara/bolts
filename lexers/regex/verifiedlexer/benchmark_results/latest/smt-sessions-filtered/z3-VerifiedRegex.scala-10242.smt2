; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534014 () Bool)

(assert start!534014)

(declare-fun b!5049017 () Bool)

(declare-fun e!3152402 () Bool)

(declare-fun tp_is_empty!36875 () Bool)

(declare-fun tp!1412005 () Bool)

(assert (=> b!5049017 (= e!3152402 (and tp_is_empty!36875 tp!1412005))))

(declare-fun b!5049018 () Bool)

(declare-fun e!3152404 () Bool)

(declare-datatypes ((T!104502 0))(
  ( (T!104503 (val!23560 Int)) )
))
(declare-datatypes ((List!58470 0))(
  ( (Nil!58346) (Cons!58346 (h!64794 T!104502) (t!371109 List!58470)) )
))
(declare-fun lt!2086202 () List!58470)

(declare-fun l!2763 () List!58470)

(assert (=> b!5049018 (= e!3152404 (= lt!2086202 l!2763))))

(declare-fun lt!2086203 () List!58470)

(assert (=> b!5049018 (= lt!2086203 lt!2086202)))

(declare-datatypes ((Unit!149543 0))(
  ( (Unit!149544) )
))
(declare-fun lt!2086201 () Unit!149543)

(declare-fun lt!2086205 () Int)

(declare-fun takeSliceLemma!6 (List!58470 Int) Unit!149543)

(assert (=> b!5049018 (= lt!2086201 (takeSliceLemma!6 l!2763 lt!2086205))))

(declare-fun b!5049019 () Bool)

(declare-fun e!3152403 () Bool)

(declare-fun e!3152400 () Bool)

(assert (=> b!5049019 (= e!3152403 e!3152400)))

(declare-fun res!2150411 () Bool)

(assert (=> b!5049019 (=> (not res!2150411) (not e!3152400))))

(declare-fun i!658 () Int)

(get-info :version)

(assert (=> b!5049019 (= res!2150411 (and (<= i!658 lt!2086205) (not ((_ is Nil!58346) l!2763)) (= i!658 0)))))

(declare-fun size!38971 (List!58470) Int)

(assert (=> b!5049019 (= lt!2086205 (size!38971 l!2763))))

(declare-fun b!5049020 () Bool)

(declare-fun e!3152399 () Bool)

(declare-fun e!3152401 () Bool)

(assert (=> b!5049020 (= e!3152399 e!3152401)))

(declare-fun res!2150415 () Bool)

(assert (=> b!5049020 (=> (not res!2150415) (not e!3152401))))

(assert (=> b!5049020 (= res!2150415 (= lt!2086202 lt!2086203))))

(declare-fun take!857 (List!58470 Int) List!58470)

(assert (=> b!5049020 (= lt!2086203 (take!857 l!2763 lt!2086205))))

(declare-fun b!5049021 () Bool)

(assert (=> b!5049021 (= e!3152400 e!3152399)))

(declare-fun res!2150413 () Bool)

(assert (=> b!5049021 (=> (not res!2150413) (not e!3152399))))

(declare-fun lt!2086200 () List!58470)

(assert (=> b!5049021 (= res!2150413 (= lt!2086202 (take!857 lt!2086200 lt!2086205)))))

(declare-fun slice!887 (List!58470 Int Int) List!58470)

(assert (=> b!5049021 (= lt!2086202 (slice!887 l!2763 0 lt!2086205))))

(declare-fun drop!2670 (List!58470 Int) List!58470)

(assert (=> b!5049021 (= lt!2086200 (drop!2670 l!2763 0))))

(declare-fun res!2150410 () Bool)

(assert (=> start!534014 (=> (not res!2150410) (not e!3152403))))

(assert (=> start!534014 (= res!2150410 (<= 0 i!658))))

(assert (=> start!534014 e!3152403))

(assert (=> start!534014 true))

(assert (=> start!534014 e!3152402))

(declare-fun b!5049022 () Bool)

(assert (=> b!5049022 (= e!3152401 (not e!3152404))))

(declare-fun res!2150412 () Bool)

(assert (=> b!5049022 (=> res!2150412 e!3152404)))

(assert (=> b!5049022 (= res!2150412 (not (= l!2763 lt!2086203)))))

(assert (=> b!5049022 (= lt!2086203 l!2763)))

(declare-fun lt!2086204 () Unit!149543)

(declare-fun takeFullLemma!14 (List!58470) Unit!149543)

(assert (=> b!5049022 (= lt!2086204 (takeFullLemma!14 l!2763))))

(declare-fun b!5049023 () Bool)

(declare-fun res!2150414 () Bool)

(assert (=> b!5049023 (=> (not res!2150414) (not e!3152400))))

(assert (=> b!5049023 (= res!2150414 (= (drop!2670 l!2763 i!658) l!2763))))

(assert (= (and start!534014 res!2150410) b!5049019))

(assert (= (and b!5049019 res!2150411) b!5049023))

(assert (= (and b!5049023 res!2150414) b!5049021))

(assert (= (and b!5049021 res!2150413) b!5049020))

(assert (= (and b!5049020 res!2150415) b!5049022))

(assert (= (and b!5049022 (not res!2150412)) b!5049018))

(assert (= (and start!534014 ((_ is Cons!58346) l!2763)) b!5049017))

(declare-fun m!6084002 () Bool)

(assert (=> b!5049022 m!6084002))

(declare-fun m!6084004 () Bool)

(assert (=> b!5049023 m!6084004))

(declare-fun m!6084006 () Bool)

(assert (=> b!5049018 m!6084006))

(declare-fun m!6084008 () Bool)

(assert (=> b!5049019 m!6084008))

(declare-fun m!6084010 () Bool)

(assert (=> b!5049020 m!6084010))

(declare-fun m!6084012 () Bool)

(assert (=> b!5049021 m!6084012))

(declare-fun m!6084014 () Bool)

(assert (=> b!5049021 m!6084014))

(declare-fun m!6084016 () Bool)

(assert (=> b!5049021 m!6084016))

(check-sat tp_is_empty!36875 (not b!5049019) (not b!5049023) (not b!5049021) (not b!5049018) (not b!5049022) (not b!5049017) (not b!5049020))
(check-sat)
