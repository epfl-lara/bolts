; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436248 () Bool)

(assert start!436248)

(declare-fun b!4453755 () Bool)

(declare-fun res!1845905 () Bool)

(declare-fun e!2773389 () Bool)

(assert (=> b!4453755 (=> res!1845905 e!2773389)))

(declare-datatypes ((V!11541 0))(
  ( (V!11542 (val!17307 Int)) )
))
(declare-datatypes ((K!11295 0))(
  ( (K!11296 (val!17308 Int)) )
))
(declare-datatypes ((tuple2!49934 0))(
  ( (tuple2!49935 (_1!28261 K!11295) (_2!28261 V!11541)) )
))
(declare-datatypes ((List!50045 0))(
  ( (Nil!49921) (Cons!49921 (h!55666 tuple2!49934) (t!356995 List!50045)) )
))
(declare-datatypes ((tuple2!49936 0))(
  ( (tuple2!49937 (_1!28262 (_ BitVec 64)) (_2!28262 List!50045)) )
))
(declare-datatypes ((List!50046 0))(
  ( (Nil!49922) (Cons!49922 (h!55667 tuple2!49936) (t!356996 List!50046)) )
))
(declare-datatypes ((ListLongMap!2415 0))(
  ( (ListLongMap!2416 (toList!3761 List!50046)) )
))
(declare-fun lt!1645497 () ListLongMap!2415)

(declare-datatypes ((Hashable!5283 0))(
  ( (HashableExt!5282 (__x!30986 Int)) )
))
(declare-fun hashF!1304 () Hashable!5283)

(declare-fun allKeysSameHashInMap!995 (ListLongMap!2415 Hashable!5283) Bool)

(assert (=> b!4453755 (= res!1845905 (not (allKeysSameHashInMap!995 lt!1645497 hashF!1304)))))

(declare-fun b!4453756 () Bool)

(declare-fun res!1845906 () Bool)

(assert (=> b!4453756 (=> res!1845906 e!2773389)))

(declare-fun lm!1837 () ListLongMap!2415)

(declare-fun noDuplicateKeys!883 (List!50045) Bool)

(assert (=> b!4453756 (= res!1845906 (not (noDuplicateKeys!883 (_2!28262 (h!55667 (toList!3761 lm!1837))))))))

(declare-fun b!4453757 () Bool)

(declare-fun lambda!159545 () Int)

(declare-fun forall!9785 (List!50046 Int) Bool)

(assert (=> b!4453757 (= e!2773389 (forall!9785 (toList!3761 lm!1837) lambda!159545))))

(declare-datatypes ((ListMap!3001 0))(
  ( (ListMap!3002 (toList!3762 List!50045)) )
))
(declare-fun lt!1645496 () ListMap!3001)

(declare-fun key!4369 () K!11295)

(declare-fun contains!12496 (ListMap!3001 K!11295) Bool)

(assert (=> b!4453757 (contains!12496 lt!1645496 key!4369)))

(declare-datatypes ((Unit!85712 0))(
  ( (Unit!85713) )
))
(declare-fun lt!1645495 () Unit!85712)

(declare-fun lemmaAddToMapMaintainsContains!2 (ListLongMap!2415 K!11295 List!50045 Hashable!5283) Unit!85712)

(assert (=> b!4453757 (= lt!1645495 (lemmaAddToMapMaintainsContains!2 lt!1645497 key!4369 (_2!28262 (h!55667 (toList!3761 lm!1837))) hashF!1304))))

(declare-fun b!4453758 () Bool)

(declare-fun res!1845911 () Bool)

(declare-fun e!2773390 () Bool)

(assert (=> b!4453758 (=> (not res!1845911) (not e!2773390))))

(assert (=> b!4453758 (= res!1845911 (allKeysSameHashInMap!995 lm!1837 hashF!1304))))

(declare-fun b!4453759 () Bool)

(declare-fun e!2773388 () Bool)

(assert (=> b!4453759 (= e!2773388 (not e!2773389))))

(declare-fun res!1845907 () Bool)

(assert (=> b!4453759 (=> res!1845907 e!2773389)))

(assert (=> b!4453759 (= res!1845907 (not (forall!9785 (toList!3761 lt!1645497) lambda!159545)))))

(declare-fun lt!1645498 () ListMap!3001)

(assert (=> b!4453759 (= lt!1645498 lt!1645496)))

(declare-fun lt!1645499 () ListMap!3001)

(declare-fun addToMapMapFromBucket!482 (List!50045 ListMap!3001) ListMap!3001)

(assert (=> b!4453759 (= lt!1645496 (addToMapMapFromBucket!482 (_2!28262 (h!55667 (toList!3761 lm!1837))) lt!1645499))))

(declare-fun extractMap!946 (List!50046) ListMap!3001)

(assert (=> b!4453759 (= lt!1645498 (extractMap!946 (toList!3761 lm!1837)))))

(declare-fun b!4453760 () Bool)

(assert (=> b!4453760 (= e!2773390 e!2773388)))

(declare-fun res!1845904 () Bool)

(assert (=> b!4453760 (=> (not res!1845904) (not e!2773388))))

(assert (=> b!4453760 (= res!1845904 (contains!12496 lt!1645499 key!4369))))

(assert (=> b!4453760 (= lt!1645499 (extractMap!946 (toList!3761 lt!1645497)))))

(declare-fun tail!7451 (ListLongMap!2415) ListLongMap!2415)

(assert (=> b!4453760 (= lt!1645497 (tail!7451 lm!1837))))

(declare-fun b!4453761 () Bool)

(declare-fun e!2773387 () Bool)

(declare-fun tp!1334735 () Bool)

(assert (=> b!4453761 (= e!2773387 tp!1334735)))

(declare-fun b!4453762 () Bool)

(declare-fun res!1845908 () Bool)

(assert (=> b!4453762 (=> (not res!1845908) (not e!2773388))))

(get-info :version)

(assert (=> b!4453762 (= res!1845908 ((_ is Cons!49922) (toList!3761 lm!1837)))))

(declare-fun res!1845909 () Bool)

(assert (=> start!436248 (=> (not res!1845909) (not e!2773390))))

(assert (=> start!436248 (= res!1845909 (forall!9785 (toList!3761 lm!1837) lambda!159545))))

(assert (=> start!436248 e!2773390))

(declare-fun inv!65481 (ListLongMap!2415) Bool)

(assert (=> start!436248 (and (inv!65481 lm!1837) e!2773387)))

(assert (=> start!436248 true))

(declare-fun tp_is_empty!26759 () Bool)

(assert (=> start!436248 tp_is_empty!26759))

(declare-fun b!4453763 () Bool)

(declare-fun res!1845910 () Bool)

(assert (=> b!4453763 (=> (not res!1845910) (not e!2773390))))

(declare-fun isEmpty!28433 (List!50046) Bool)

(assert (=> b!4453763 (= res!1845910 (not (isEmpty!28433 (toList!3761 lm!1837))))))

(assert (= (and start!436248 res!1845909) b!4453758))

(assert (= (and b!4453758 res!1845911) b!4453763))

(assert (= (and b!4453763 res!1845910) b!4453760))

(assert (= (and b!4453760 res!1845904) b!4453762))

(assert (= (and b!4453762 res!1845908) b!4453759))

(assert (= (and b!4453759 (not res!1845907)) b!4453755))

(assert (= (and b!4453755 (not res!1845905)) b!4453756))

(assert (= (and b!4453756 (not res!1845906)) b!4453757))

(assert (= start!436248 b!4453761))

(declare-fun m!5154499 () Bool)

(assert (=> b!4453758 m!5154499))

(declare-fun m!5154501 () Bool)

(assert (=> b!4453756 m!5154501))

(declare-fun m!5154503 () Bool)

(assert (=> b!4453757 m!5154503))

(declare-fun m!5154505 () Bool)

(assert (=> b!4453757 m!5154505))

(declare-fun m!5154507 () Bool)

(assert (=> b!4453757 m!5154507))

(declare-fun m!5154509 () Bool)

(assert (=> b!4453755 m!5154509))

(declare-fun m!5154511 () Bool)

(assert (=> b!4453760 m!5154511))

(declare-fun m!5154513 () Bool)

(assert (=> b!4453760 m!5154513))

(declare-fun m!5154515 () Bool)

(assert (=> b!4453760 m!5154515))

(assert (=> start!436248 m!5154503))

(declare-fun m!5154517 () Bool)

(assert (=> start!436248 m!5154517))

(declare-fun m!5154519 () Bool)

(assert (=> b!4453759 m!5154519))

(declare-fun m!5154521 () Bool)

(assert (=> b!4453759 m!5154521))

(declare-fun m!5154523 () Bool)

(assert (=> b!4453759 m!5154523))

(declare-fun m!5154525 () Bool)

(assert (=> b!4453763 m!5154525))

(check-sat (not b!4453763) (not b!4453761) (not b!4453756) (not b!4453757) (not start!436248) (not b!4453759) tp_is_empty!26759 (not b!4453760) (not b!4453755) (not b!4453758))
(check-sat)
