; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!430238 () Bool)

(assert start!430238)

(declare-fun b!4417448 () Bool)

(declare-fun res!1825103 () Bool)

(declare-fun e!2750616 () Bool)

(assert (=> b!4417448 (=> (not res!1825103) (not e!2750616))))

(declare-datatypes ((K!10853 0))(
  ( (K!10854 (val!16953 Int)) )
))
(declare-fun key!3717 () K!10853)

(declare-datatypes ((Hashable!5106 0))(
  ( (HashableExt!5105 (__x!30809 Int)) )
))
(declare-fun hashF!1220 () Hashable!5106)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2030 (Hashable!5106 K!10853) (_ BitVec 64))

(assert (=> b!4417448 (= res!1825103 (= (hash!2030 hashF!1220 key!3717) hash!366))))

(declare-fun b!4417449 () Bool)

(declare-fun e!2750613 () Bool)

(assert (=> b!4417449 (= e!2750613 true)))

(declare-fun b!4417450 () Bool)

(declare-fun res!1825104 () Bool)

(assert (=> b!4417450 (=> res!1825104 e!2750613)))

(declare-datatypes ((V!11099 0))(
  ( (V!11100 (val!16954 Int)) )
))
(declare-datatypes ((tuple2!49226 0))(
  ( (tuple2!49227 (_1!27907 K!10853) (_2!27907 V!11099)) )
))
(declare-datatypes ((List!49612 0))(
  ( (Nil!49488) (Cons!49488 (h!55153 tuple2!49226) (t!356550 List!49612)) )
))
(declare-datatypes ((tuple2!49228 0))(
  ( (tuple2!49229 (_1!27908 (_ BitVec 64)) (_2!27908 List!49612)) )
))
(declare-datatypes ((List!49613 0))(
  ( (Nil!49489) (Cons!49489 (h!55154 tuple2!49228) (t!356551 List!49613)) )
))
(declare-datatypes ((ListLongMap!2061 0))(
  ( (ListLongMap!2062 (toList!3411 List!49613)) )
))
(declare-fun lm!1616 () ListLongMap!2061)

(declare-datatypes ((ListMap!2655 0))(
  ( (ListMap!2656 (toList!3412 List!49612)) )
))
(declare-fun contains!11951 (ListMap!2655 K!10853) Bool)

(declare-fun extractMap!773 (List!49613) ListMap!2655)

(declare-fun tail!7198 (ListLongMap!2061) ListLongMap!2061)

(assert (=> b!4417450 (= res!1825104 (not (contains!11951 (extractMap!773 (toList!3411 (tail!7198 lm!1616))) key!3717)))))

(declare-fun b!4417451 () Bool)

(declare-fun res!1825096 () Bool)

(assert (=> b!4417451 (=> res!1825096 e!2750613)))

(declare-fun tail!7199 (List!49613) List!49613)

(assert (=> b!4417451 (= res!1825096 (not (contains!11951 (extractMap!773 (tail!7199 (toList!3411 lm!1616))) key!3717)))))

(declare-fun b!4417452 () Bool)

(declare-fun e!2750617 () Bool)

(assert (=> b!4417452 (= e!2750616 e!2750617)))

(declare-fun res!1825099 () Bool)

(assert (=> b!4417452 (=> (not res!1825099) (not e!2750617))))

(declare-fun e!2750615 () Bool)

(assert (=> b!4417452 (= res!1825099 e!2750615)))

(declare-fun res!1825100 () Bool)

(assert (=> b!4417452 (=> res!1825100 e!2750615)))

(declare-fun e!2750614 () Bool)

(assert (=> b!4417452 (= res!1825100 e!2750614)))

(declare-fun res!1825098 () Bool)

(assert (=> b!4417452 (=> (not res!1825098) (not e!2750614))))

(declare-fun lt!1618887 () Bool)

(assert (=> b!4417452 (= res!1825098 lt!1618887)))

(declare-fun contains!11952 (ListLongMap!2061 (_ BitVec 64)) Bool)

(assert (=> b!4417452 (= lt!1618887 (contains!11952 lm!1616 hash!366))))

(declare-fun b!4417453 () Bool)

(declare-fun res!1825093 () Bool)

(assert (=> b!4417453 (=> (not res!1825093) (not e!2750616))))

(declare-fun allKeysSameHashInMap!818 (ListLongMap!2061 Hashable!5106) Bool)

(assert (=> b!4417453 (= res!1825093 (allKeysSameHashInMap!818 lm!1616 hashF!1220))))

(declare-fun b!4417454 () Bool)

(declare-fun res!1825102 () Bool)

(assert (=> b!4417454 (=> res!1825102 e!2750613)))

(declare-fun lambda!152295 () Int)

(declare-fun forall!9498 (List!49613 Int) Bool)

(assert (=> b!4417454 (= res!1825102 (not (forall!9498 (toList!3411 lm!1616) lambda!152295)))))

(declare-fun b!4417455 () Bool)

(declare-fun e!2750618 () Bool)

(declare-fun tp!1332751 () Bool)

(assert (=> b!4417455 (= e!2750618 tp!1332751)))

(declare-fun b!4417456 () Bool)

(declare-fun res!1825095 () Bool)

(assert (=> b!4417456 (=> (not res!1825095) (not e!2750617))))

(declare-fun newBucket!194 () List!49612)

(declare-fun noDuplicateKeys!712 (List!49612) Bool)

(assert (=> b!4417456 (= res!1825095 (noDuplicateKeys!712 newBucket!194))))

(declare-fun res!1825101 () Bool)

(assert (=> start!430238 (=> (not res!1825101) (not e!2750616))))

(assert (=> start!430238 (= res!1825101 (forall!9498 (toList!3411 lm!1616) lambda!152295))))

(assert (=> start!430238 e!2750616))

(declare-fun tp_is_empty!26093 () Bool)

(assert (=> start!430238 tp_is_empty!26093))

(declare-fun tp_is_empty!26095 () Bool)

(assert (=> start!430238 tp_is_empty!26095))

(declare-fun e!2750619 () Bool)

(assert (=> start!430238 e!2750619))

(declare-fun inv!65040 (ListLongMap!2061) Bool)

(assert (=> start!430238 (and (inv!65040 lm!1616) e!2750618)))

(assert (=> start!430238 true))

(declare-fun newValue!93 () V!11099)

(declare-fun b!4417457 () Bool)

(assert (=> b!4417457 (= e!2750615 (and (not lt!1618887) (= newBucket!194 (Cons!49488 (tuple2!49227 key!3717 newValue!93) Nil!49488))))))

(declare-fun b!4417458 () Bool)

(declare-fun res!1825097 () Bool)

(assert (=> b!4417458 (=> (not res!1825097) (not e!2750616))))

(assert (=> b!4417458 (= res!1825097 (not (contains!11951 (extractMap!773 (toList!3411 lm!1616)) key!3717)))))

(declare-fun b!4417459 () Bool)

(declare-fun res!1825092 () Bool)

(assert (=> b!4417459 (=> res!1825092 e!2750613)))

(declare-fun isEmpty!28306 (List!49613) Bool)

(assert (=> b!4417459 (= res!1825092 (isEmpty!28306 (toList!3411 lm!1616)))))

(declare-fun tp!1332752 () Bool)

(declare-fun b!4417460 () Bool)

(assert (=> b!4417460 (= e!2750619 (and tp_is_empty!26095 tp_is_empty!26093 tp!1332752))))

(declare-fun b!4417461 () Bool)

(declare-fun res!1825094 () Bool)

(assert (=> b!4417461 (=> res!1825094 e!2750613)))

(assert (=> b!4417461 (= res!1825094 (or (and (is-Cons!49489 (toList!3411 lm!1616)) (= (_1!27908 (h!55154 (toList!3411 lm!1616))) hash!366)) (not (is-Cons!49489 (toList!3411 lm!1616))) (= (_1!27908 (h!55154 (toList!3411 lm!1616))) hash!366)))))

(declare-fun b!4417462 () Bool)

(declare-fun apply!11564 (ListLongMap!2061 (_ BitVec 64)) List!49612)

(assert (=> b!4417462 (= e!2750614 (= newBucket!194 (Cons!49488 (tuple2!49227 key!3717 newValue!93) (apply!11564 lm!1616 hash!366))))))

(declare-fun b!4417463 () Bool)

(declare-fun res!1825091 () Bool)

(assert (=> b!4417463 (=> (not res!1825091) (not e!2750616))))

(declare-fun allKeysSameHash!672 (List!49612 (_ BitVec 64) Hashable!5106) Bool)

(assert (=> b!4417463 (= res!1825091 (allKeysSameHash!672 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4417464 () Bool)

(declare-fun res!1825090 () Bool)

(assert (=> b!4417464 (=> (not res!1825090) (not e!2750617))))

(assert (=> b!4417464 (= res!1825090 (forall!9498 (toList!3411 lm!1616) lambda!152295))))

(declare-fun b!4417465 () Bool)

(assert (=> b!4417465 (= e!2750617 (not e!2750613))))

(declare-fun res!1825105 () Bool)

(assert (=> b!4417465 (=> res!1825105 e!2750613)))

(declare-fun lt!1618888 () ListLongMap!2061)

(assert (=> b!4417465 (= res!1825105 (not (forall!9498 (toList!3411 lt!1618888) lambda!152295)))))

(assert (=> b!4417465 (forall!9498 (toList!3411 lt!1618888) lambda!152295)))

(declare-fun +!1016 (ListLongMap!2061 tuple2!49228) ListLongMap!2061)

(assert (=> b!4417465 (= lt!1618888 (+!1016 lm!1616 (tuple2!49229 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!81012 0))(
  ( (Unit!81013) )
))
(declare-fun lt!1618886 () Unit!81012)

(declare-fun addValidProp!356 (ListLongMap!2061 Int (_ BitVec 64) List!49612) Unit!81012)

(assert (=> b!4417465 (= lt!1618886 (addValidProp!356 lm!1616 lambda!152295 hash!366 newBucket!194))))

(assert (= (and start!430238 res!1825101) b!4417453))

(assert (= (and b!4417453 res!1825093) b!4417448))

(assert (= (and b!4417448 res!1825103) b!4417463))

(assert (= (and b!4417463 res!1825091) b!4417458))

(assert (= (and b!4417458 res!1825097) b!4417452))

(assert (= (and b!4417452 res!1825098) b!4417462))

(assert (= (and b!4417452 (not res!1825100)) b!4417457))

(assert (= (and b!4417452 res!1825099) b!4417456))

(assert (= (and b!4417456 res!1825095) b!4417464))

(assert (= (and b!4417464 res!1825090) b!4417465))

(assert (= (and b!4417465 (not res!1825105)) b!4417461))

(assert (= (and b!4417461 (not res!1825094)) b!4417451))

(assert (= (and b!4417451 (not res!1825096)) b!4417454))

(assert (= (and b!4417454 (not res!1825102)) b!4417459))

(assert (= (and b!4417459 (not res!1825092)) b!4417450))

(assert (= (and b!4417450 (not res!1825104)) b!4417449))

(assert (= (and start!430238 (is-Cons!49488 newBucket!194)) b!4417460))

(assert (= start!430238 b!4417455))

(declare-fun m!5093751 () Bool)

(assert (=> b!4417458 m!5093751))

(assert (=> b!4417458 m!5093751))

(declare-fun m!5093753 () Bool)

(assert (=> b!4417458 m!5093753))

(declare-fun m!5093755 () Bool)

(assert (=> b!4417465 m!5093755))

(assert (=> b!4417465 m!5093755))

(declare-fun m!5093757 () Bool)

(assert (=> b!4417465 m!5093757))

(declare-fun m!5093759 () Bool)

(assert (=> b!4417465 m!5093759))

(declare-fun m!5093761 () Bool)

(assert (=> b!4417448 m!5093761))

(declare-fun m!5093763 () Bool)

(assert (=> b!4417462 m!5093763))

(declare-fun m!5093765 () Bool)

(assert (=> b!4417459 m!5093765))

(declare-fun m!5093767 () Bool)

(assert (=> b!4417456 m!5093767))

(declare-fun m!5093769 () Bool)

(assert (=> b!4417450 m!5093769))

(declare-fun m!5093771 () Bool)

(assert (=> b!4417450 m!5093771))

(assert (=> b!4417450 m!5093771))

(declare-fun m!5093773 () Bool)

(assert (=> b!4417450 m!5093773))

(declare-fun m!5093775 () Bool)

(assert (=> b!4417463 m!5093775))

(declare-fun m!5093777 () Bool)

(assert (=> b!4417454 m!5093777))

(declare-fun m!5093779 () Bool)

(assert (=> b!4417453 m!5093779))

(declare-fun m!5093781 () Bool)

(assert (=> b!4417451 m!5093781))

(assert (=> b!4417451 m!5093781))

(declare-fun m!5093783 () Bool)

(assert (=> b!4417451 m!5093783))

(assert (=> b!4417451 m!5093783))

(declare-fun m!5093785 () Bool)

(assert (=> b!4417451 m!5093785))

(assert (=> b!4417464 m!5093777))

(declare-fun m!5093787 () Bool)

(assert (=> b!4417452 m!5093787))

(assert (=> start!430238 m!5093777))

(declare-fun m!5093789 () Bool)

(assert (=> start!430238 m!5093789))

(push 1)

(assert (not b!4417450))

(assert (not b!4417463))

(assert tp_is_empty!26095)

(assert (not b!4417453))

(assert (not b!4417455))

(assert (not b!4417451))

(assert (not b!4417458))

(assert (not b!4417459))

(assert (not b!4417460))

(assert (not b!4417464))

(assert (not b!4417456))

(assert (not b!4417452))

(assert (not b!4417448))

(assert (not start!430238))

(assert (not b!4417462))

(assert tp_is_empty!26093)

(assert (not b!4417465))

(assert (not b!4417454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

