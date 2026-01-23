; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!434184 () Bool)

(assert start!434184)

(declare-fun b!4439025 () Bool)

(declare-fun e!2764052 () Bool)

(declare-fun e!2764047 () Bool)

(assert (=> b!4439025 (= e!2764052 e!2764047)))

(declare-fun res!1837513 () Bool)

(assert (=> b!4439025 (=> res!1837513 e!2764047)))

(declare-datatypes ((V!11361 0))(
  ( (V!11362 (val!17163 Int)) )
))
(declare-datatypes ((K!11115 0))(
  ( (K!11116 (val!17164 Int)) )
))
(declare-datatypes ((tuple2!49646 0))(
  ( (tuple2!49647 (_1!28117 K!11115) (_2!28117 V!11361)) )
))
(declare-datatypes ((List!49872 0))(
  ( (Nil!49748) (Cons!49748 (h!55465 tuple2!49646) (t!356814 List!49872)) )
))
(declare-datatypes ((tuple2!49648 0))(
  ( (tuple2!49649 (_1!28118 (_ BitVec 64)) (_2!28118 List!49872)) )
))
(declare-datatypes ((List!49873 0))(
  ( (Nil!49749) (Cons!49749 (h!55466 tuple2!49648) (t!356815 List!49873)) )
))
(declare-datatypes ((ListLongMap!2271 0))(
  ( (ListLongMap!2272 (toList!3621 List!49873)) )
))
(declare-fun lm!1616 () ListLongMap!2271)

(declare-fun lambda!156828 () Int)

(declare-fun forall!9677 (List!49873 Int) Bool)

(assert (=> b!4439025 (= res!1837513 (not (forall!9677 (toList!3621 lm!1616) lambda!156828)))))

(declare-fun b!4439026 () Bool)

(declare-fun res!1837507 () Bool)

(declare-fun e!2764049 () Bool)

(assert (=> b!4439026 (=> (not res!1837507) (not e!2764049))))

(declare-fun key!3717 () K!11115)

(declare-datatypes ((ListMap!2865 0))(
  ( (ListMap!2866 (toList!3622 List!49872)) )
))
(declare-fun contains!12307 (ListMap!2865 K!11115) Bool)

(declare-fun extractMap!878 (List!49873) ListMap!2865)

(assert (=> b!4439026 (= res!1837507 (not (contains!12307 (extractMap!878 (toList!3621 lm!1616)) key!3717)))))

(declare-fun b!4439027 () Bool)

(assert (=> b!4439027 (= e!2764049 e!2764052)))

(declare-fun res!1837508 () Bool)

(assert (=> b!4439027 (=> (not res!1837508) (not e!2764052))))

(declare-fun e!2764048 () Bool)

(assert (=> b!4439027 (= res!1837508 e!2764048)))

(declare-fun res!1837512 () Bool)

(assert (=> b!4439027 (=> res!1837512 e!2764048)))

(declare-fun e!2764050 () Bool)

(assert (=> b!4439027 (= res!1837512 e!2764050)))

(declare-fun res!1837510 () Bool)

(assert (=> b!4439027 (=> (not res!1837510) (not e!2764050))))

(declare-fun lt!1635385 () Bool)

(assert (=> b!4439027 (= res!1837510 lt!1635385)))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12308 (ListLongMap!2271 (_ BitVec 64)) Bool)

(assert (=> b!4439027 (= lt!1635385 (contains!12308 lm!1616 hash!366))))

(declare-fun newValue!93 () V!11361)

(declare-fun newBucket!194 () List!49872)

(declare-fun b!4439028 () Bool)

(declare-fun apply!11669 (ListLongMap!2271 (_ BitVec 64)) List!49872)

(assert (=> b!4439028 (= e!2764050 (= newBucket!194 (Cons!49748 (tuple2!49647 key!3717 newValue!93) (apply!11669 lm!1616 hash!366))))))

(declare-fun res!1837509 () Bool)

(assert (=> start!434184 (=> (not res!1837509) (not e!2764049))))

(assert (=> start!434184 (= res!1837509 (forall!9677 (toList!3621 lm!1616) lambda!156828))))

(assert (=> start!434184 e!2764049))

(declare-fun tp_is_empty!26513 () Bool)

(assert (=> start!434184 tp_is_empty!26513))

(declare-fun tp_is_empty!26515 () Bool)

(assert (=> start!434184 tp_is_empty!26515))

(declare-fun e!2764046 () Bool)

(assert (=> start!434184 e!2764046))

(declare-fun e!2764051 () Bool)

(declare-fun inv!65301 (ListLongMap!2271) Bool)

(assert (=> start!434184 (and (inv!65301 lm!1616) e!2764051)))

(assert (=> start!434184 true))

(declare-fun tp!1333974 () Bool)

(declare-fun b!4439029 () Bool)

(assert (=> b!4439029 (= e!2764046 (and tp_is_empty!26515 tp_is_empty!26513 tp!1333974))))

(declare-fun b!4439030 () Bool)

(declare-fun res!1837516 () Bool)

(assert (=> b!4439030 (=> (not res!1837516) (not e!2764052))))

(declare-fun noDuplicateKeys!817 (List!49872) Bool)

(assert (=> b!4439030 (= res!1837516 (noDuplicateKeys!817 newBucket!194))))

(declare-fun b!4439031 () Bool)

(declare-fun res!1837514 () Bool)

(assert (=> b!4439031 (=> (not res!1837514) (not e!2764049))))

(declare-datatypes ((Hashable!5211 0))(
  ( (HashableExt!5210 (__x!30914 Int)) )
))
(declare-fun hashF!1220 () Hashable!5211)

(declare-fun allKeysSameHash!777 (List!49872 (_ BitVec 64) Hashable!5211) Bool)

(assert (=> b!4439031 (= res!1837514 (allKeysSameHash!777 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4439032 () Bool)

(assert (=> b!4439032 (= e!2764048 (and (not lt!1635385) (= newBucket!194 (Cons!49748 (tuple2!49647 key!3717 newValue!93) Nil!49748))))))

(declare-fun b!4439033 () Bool)

(assert (=> b!4439033 (= e!2764047 (not (noDuplicateKeys!817 newBucket!194)))))

(declare-fun b!4439034 () Bool)

(declare-fun res!1837517 () Bool)

(assert (=> b!4439034 (=> (not res!1837517) (not e!2764049))))

(declare-fun allKeysSameHashInMap!923 (ListLongMap!2271 Hashable!5211) Bool)

(assert (=> b!4439034 (= res!1837517 (allKeysSameHashInMap!923 lm!1616 hashF!1220))))

(declare-fun b!4439035 () Bool)

(declare-fun tp!1333973 () Bool)

(assert (=> b!4439035 (= e!2764051 tp!1333973)))

(declare-fun b!4439036 () Bool)

(declare-fun res!1837515 () Bool)

(assert (=> b!4439036 (=> (not res!1837515) (not e!2764049))))

(declare-fun hash!2263 (Hashable!5211 K!11115) (_ BitVec 64))

(assert (=> b!4439036 (= res!1837515 (= (hash!2263 hashF!1220 key!3717) hash!366))))

(declare-fun b!4439037 () Bool)

(declare-fun res!1837511 () Bool)

(assert (=> b!4439037 (=> (not res!1837511) (not e!2764052))))

(assert (=> b!4439037 (= res!1837511 (forall!9677 (toList!3621 lm!1616) lambda!156828))))

(assert (= (and start!434184 res!1837509) b!4439034))

(assert (= (and b!4439034 res!1837517) b!4439036))

(assert (= (and b!4439036 res!1837515) b!4439031))

(assert (= (and b!4439031 res!1837514) b!4439026))

(assert (= (and b!4439026 res!1837507) b!4439027))

(assert (= (and b!4439027 res!1837510) b!4439028))

(assert (= (and b!4439027 (not res!1837512)) b!4439032))

(assert (= (and b!4439027 res!1837508) b!4439030))

(assert (= (and b!4439030 res!1837516) b!4439037))

(assert (= (and b!4439037 res!1837511) b!4439025))

(assert (= (and b!4439025 (not res!1837513)) b!4439033))

(get-info :version)

(assert (= (and start!434184 ((_ is Cons!49748) newBucket!194)) b!4439029))

(assert (= start!434184 b!4439035))

(declare-fun m!5127495 () Bool)

(assert (=> b!4439036 m!5127495))

(declare-fun m!5127497 () Bool)

(assert (=> b!4439031 m!5127497))

(declare-fun m!5127499 () Bool)

(assert (=> start!434184 m!5127499))

(declare-fun m!5127501 () Bool)

(assert (=> start!434184 m!5127501))

(assert (=> b!4439025 m!5127499))

(declare-fun m!5127503 () Bool)

(assert (=> b!4439028 m!5127503))

(assert (=> b!4439037 m!5127499))

(declare-fun m!5127505 () Bool)

(assert (=> b!4439027 m!5127505))

(declare-fun m!5127507 () Bool)

(assert (=> b!4439030 m!5127507))

(declare-fun m!5127509 () Bool)

(assert (=> b!4439026 m!5127509))

(assert (=> b!4439026 m!5127509))

(declare-fun m!5127511 () Bool)

(assert (=> b!4439026 m!5127511))

(declare-fun m!5127513 () Bool)

(assert (=> b!4439034 m!5127513))

(assert (=> b!4439033 m!5127507))

(check-sat (not b!4439034) (not b!4439033) (not b!4439031) (not b!4439030) (not b!4439035) (not start!434184) (not b!4439037) (not b!4439036) (not b!4439029) (not b!4439028) (not b!4439026) tp_is_empty!26515 (not b!4439025) (not b!4439027) tp_is_empty!26513)
(check-sat)
