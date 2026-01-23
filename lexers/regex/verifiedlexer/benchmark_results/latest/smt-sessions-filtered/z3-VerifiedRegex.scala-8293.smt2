; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430416 () Bool)

(assert start!430416)

(declare-fun b!4418508 () Bool)

(declare-fun res!1825763 () Bool)

(declare-fun e!2751242 () Bool)

(assert (=> b!4418508 (=> (not res!1825763) (not e!2751242))))

(declare-datatypes ((K!10870 0))(
  ( (K!10871 (val!16967 Int)) )
))
(declare-fun key!3717 () K!10870)

(declare-datatypes ((Hashable!5113 0))(
  ( (HashableExt!5112 (__x!30816 Int)) )
))
(declare-fun hashF!1220 () Hashable!5113)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2039 (Hashable!5113 K!10870) (_ BitVec 64))

(assert (=> b!4418508 (= res!1825763 (= (hash!2039 hashF!1220 key!3717) hash!366))))

(declare-fun b!4418509 () Bool)

(declare-fun res!1825748 () Bool)

(declare-fun e!2751252 () Bool)

(assert (=> b!4418509 (=> res!1825748 e!2751252)))

(declare-datatypes ((V!11116 0))(
  ( (V!11117 (val!16968 Int)) )
))
(declare-datatypes ((tuple2!49254 0))(
  ( (tuple2!49255 (_1!27921 K!10870) (_2!27921 V!11116)) )
))
(declare-datatypes ((List!49628 0))(
  ( (Nil!49504) (Cons!49504 (h!55171 tuple2!49254) (t!356566 List!49628)) )
))
(declare-datatypes ((tuple2!49256 0))(
  ( (tuple2!49257 (_1!27922 (_ BitVec 64)) (_2!27922 List!49628)) )
))
(declare-datatypes ((List!49629 0))(
  ( (Nil!49505) (Cons!49505 (h!55172 tuple2!49256) (t!356567 List!49629)) )
))
(declare-datatypes ((ListLongMap!2075 0))(
  ( (ListLongMap!2076 (toList!3425 List!49629)) )
))
(declare-fun lt!1619443 () ListLongMap!2075)

(declare-fun allKeysSameHashInMap!825 (ListLongMap!2075 Hashable!5113) Bool)

(assert (=> b!4418509 (= res!1825748 (not (allKeysSameHashInMap!825 lt!1619443 hashF!1220)))))

(declare-fun e!2751245 () Bool)

(declare-fun b!4418510 () Bool)

(declare-fun tp_is_empty!26123 () Bool)

(declare-fun tp!1332820 () Bool)

(declare-fun tp_is_empty!26121 () Bool)

(assert (=> b!4418510 (= e!2751245 (and tp_is_empty!26123 tp_is_empty!26121 tp!1332820))))

(declare-fun b!4418511 () Bool)

(declare-fun newValue!93 () V!11116)

(declare-fun lt!1619447 () Bool)

(declare-fun newBucket!194 () List!49628)

(declare-fun e!2751250 () Bool)

(assert (=> b!4418511 (= e!2751250 (and (not lt!1619447) (= newBucket!194 (Cons!49504 (tuple2!49255 key!3717 newValue!93) Nil!49504))))))

(declare-fun b!4418512 () Bool)

(declare-fun res!1825752 () Bool)

(assert (=> b!4418512 (=> (not res!1825752) (not e!2751242))))

(declare-fun lm!1616 () ListLongMap!2075)

(declare-datatypes ((ListMap!2669 0))(
  ( (ListMap!2670 (toList!3426 List!49628)) )
))
(declare-fun contains!11969 (ListMap!2669 K!10870) Bool)

(declare-fun extractMap!780 (List!49629) ListMap!2669)

(assert (=> b!4418512 (= res!1825752 (not (contains!11969 (extractMap!780 (toList!3425 lm!1616)) key!3717)))))

(declare-fun b!4418513 () Bool)

(declare-datatypes ((Unit!81108 0))(
  ( (Unit!81109) )
))
(declare-fun e!2751241 () Unit!81108)

(declare-fun Unit!81110 () Unit!81108)

(assert (=> b!4418513 (= e!2751241 Unit!81110)))

(declare-fun b!4418514 () Bool)

(declare-fun e!2751251 () Bool)

(assert (=> b!4418514 (= e!2751251 e!2751252)))

(declare-fun res!1825760 () Bool)

(assert (=> b!4418514 (=> res!1825760 e!2751252)))

(declare-fun lambda!152522 () Int)

(declare-fun forall!9509 (List!49629 Int) Bool)

(assert (=> b!4418514 (= res!1825760 (not (forall!9509 (toList!3425 lt!1619443) lambda!152522)))))

(declare-fun tail!7210 (ListLongMap!2075) ListLongMap!2075)

(assert (=> b!4418514 (= lt!1619443 (tail!7210 lm!1616))))

(declare-fun lt!1619445 () Unit!81108)

(assert (=> b!4418514 (= lt!1619445 e!2751241)))

(declare-fun c!752071 () Bool)

(declare-fun tail!7211 (List!49629) List!49629)

(assert (=> b!4418514 (= c!752071 (contains!11969 (extractMap!780 (tail!7211 (toList!3425 lm!1616))) key!3717))))

(declare-fun res!1825758 () Bool)

(assert (=> start!430416 (=> (not res!1825758) (not e!2751242))))

(assert (=> start!430416 (= res!1825758 (forall!9509 (toList!3425 lm!1616) lambda!152522))))

(assert (=> start!430416 e!2751242))

(assert (=> start!430416 tp_is_empty!26121))

(assert (=> start!430416 tp_is_empty!26123))

(assert (=> start!430416 e!2751245))

(declare-fun e!2751249 () Bool)

(declare-fun inv!65056 (ListLongMap!2075) Bool)

(assert (=> start!430416 (and (inv!65056 lm!1616) e!2751249)))

(assert (=> start!430416 true))

(declare-fun b!4418515 () Bool)

(declare-fun res!1825762 () Bool)

(declare-fun e!2751243 () Bool)

(assert (=> b!4418515 (=> (not res!1825762) (not e!2751243))))

(assert (=> b!4418515 (= res!1825762 (forall!9509 (toList!3425 lm!1616) lambda!152522))))

(declare-fun b!4418516 () Bool)

(declare-fun e!2751244 () Bool)

(assert (=> b!4418516 (= e!2751252 e!2751244)))

(declare-fun res!1825764 () Bool)

(assert (=> b!4418516 (=> res!1825764 e!2751244)))

(declare-fun e!2751247 () Bool)

(assert (=> b!4418516 (= res!1825764 e!2751247)))

(declare-fun res!1825753 () Bool)

(assert (=> b!4418516 (=> (not res!1825753) (not e!2751247))))

(declare-fun e!2751248 () Bool)

(assert (=> b!4418516 (= res!1825753 e!2751248)))

(declare-fun res!1825751 () Bool)

(assert (=> b!4418516 (=> res!1825751 e!2751248)))

(declare-fun lt!1619446 () Bool)

(assert (=> b!4418516 (= res!1825751 (not lt!1619446))))

(declare-fun contains!11970 (ListLongMap!2075 (_ BitVec 64)) Bool)

(assert (=> b!4418516 (= lt!1619446 (contains!11970 lt!1619443 hash!366))))

(declare-fun b!4418517 () Bool)

(declare-fun res!1825759 () Bool)

(assert (=> b!4418517 (=> (not res!1825759) (not e!2751242))))

(assert (=> b!4418517 (= res!1825759 (allKeysSameHashInMap!825 lm!1616 hashF!1220))))

(declare-fun b!4418518 () Bool)

(assert (=> b!4418518 (= e!2751247 (or lt!1619446 (not (= newBucket!194 (Cons!49504 (tuple2!49255 key!3717 newValue!93) Nil!49504)))))))

(declare-fun b!4418519 () Bool)

(declare-fun res!1825749 () Bool)

(assert (=> b!4418519 (=> res!1825749 e!2751252)))

(assert (=> b!4418519 (= res!1825749 (contains!11969 (extractMap!780 (toList!3425 lt!1619443)) key!3717))))

(declare-fun b!4418520 () Bool)

(assert (=> b!4418520 (= e!2751244 true)))

(declare-fun b!4418521 () Bool)

(assert (=> b!4418521 (= e!2751243 (not e!2751251))))

(declare-fun res!1825754 () Bool)

(assert (=> b!4418521 (=> res!1825754 e!2751251)))

(declare-fun lt!1619442 () ListLongMap!2075)

(assert (=> b!4418521 (= res!1825754 (not (forall!9509 (toList!3425 lt!1619442) lambda!152522)))))

(assert (=> b!4418521 (forall!9509 (toList!3425 lt!1619442) lambda!152522)))

(declare-fun +!1025 (ListLongMap!2075 tuple2!49256) ListLongMap!2075)

(assert (=> b!4418521 (= lt!1619442 (+!1025 lm!1616 (tuple2!49257 hash!366 newBucket!194)))))

(declare-fun lt!1619441 () Unit!81108)

(declare-fun addValidProp!363 (ListLongMap!2075 Int (_ BitVec 64) List!49628) Unit!81108)

(assert (=> b!4418521 (= lt!1619441 (addValidProp!363 lm!1616 lambda!152522 hash!366 newBucket!194))))

(declare-fun b!4418522 () Bool)

(declare-fun res!1825765 () Bool)

(assert (=> b!4418522 (=> (not res!1825765) (not e!2751243))))

(declare-fun noDuplicateKeys!719 (List!49628) Bool)

(assert (=> b!4418522 (= res!1825765 (noDuplicateKeys!719 newBucket!194))))

(declare-fun b!4418523 () Bool)

(declare-fun res!1825750 () Bool)

(assert (=> b!4418523 (=> (not res!1825750) (not e!2751242))))

(declare-fun allKeysSameHash!679 (List!49628 (_ BitVec 64) Hashable!5113) Bool)

(assert (=> b!4418523 (= res!1825750 (allKeysSameHash!679 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4418524 () Bool)

(declare-fun apply!11571 (ListLongMap!2075 (_ BitVec 64)) List!49628)

(assert (=> b!4418524 (= e!2751248 (not (= newBucket!194 (Cons!49504 (tuple2!49255 key!3717 newValue!93) (apply!11571 lt!1619443 hash!366)))))))

(declare-fun b!4418525 () Bool)

(declare-fun Unit!81111 () Unit!81108)

(assert (=> b!4418525 (= e!2751241 Unit!81111)))

(declare-fun lt!1619444 () Unit!81108)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!6 (ListLongMap!2075 K!10870 Hashable!5113) Unit!81108)

(assert (=> b!4418525 (= lt!1619444 (lemmaExtractTailMapContainsThenExtractMapDoes!6 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4418525 false))

(declare-fun b!4418526 () Bool)

(declare-fun tp!1332819 () Bool)

(assert (=> b!4418526 (= e!2751249 tp!1332819)))

(declare-fun b!4418527 () Bool)

(assert (=> b!4418527 (= e!2751242 e!2751243)))

(declare-fun res!1825761 () Bool)

(assert (=> b!4418527 (=> (not res!1825761) (not e!2751243))))

(assert (=> b!4418527 (= res!1825761 e!2751250)))

(declare-fun res!1825756 () Bool)

(assert (=> b!4418527 (=> res!1825756 e!2751250)))

(declare-fun e!2751246 () Bool)

(assert (=> b!4418527 (= res!1825756 e!2751246)))

(declare-fun res!1825755 () Bool)

(assert (=> b!4418527 (=> (not res!1825755) (not e!2751246))))

(assert (=> b!4418527 (= res!1825755 lt!1619447)))

(assert (=> b!4418527 (= lt!1619447 (contains!11970 lm!1616 hash!366))))

(declare-fun b!4418528 () Bool)

(declare-fun res!1825757 () Bool)

(assert (=> b!4418528 (=> res!1825757 e!2751251)))

(get-info :version)

(assert (=> b!4418528 (= res!1825757 (or (and ((_ is Cons!49505) (toList!3425 lm!1616)) (= (_1!27922 (h!55172 (toList!3425 lm!1616))) hash!366)) (not ((_ is Cons!49505) (toList!3425 lm!1616))) (= (_1!27922 (h!55172 (toList!3425 lm!1616))) hash!366)))))

(declare-fun b!4418529 () Bool)

(assert (=> b!4418529 (= e!2751246 (= newBucket!194 (Cons!49504 (tuple2!49255 key!3717 newValue!93) (apply!11571 lm!1616 hash!366))))))

(assert (= (and start!430416 res!1825758) b!4418517))

(assert (= (and b!4418517 res!1825759) b!4418508))

(assert (= (and b!4418508 res!1825763) b!4418523))

(assert (= (and b!4418523 res!1825750) b!4418512))

(assert (= (and b!4418512 res!1825752) b!4418527))

(assert (= (and b!4418527 res!1825755) b!4418529))

(assert (= (and b!4418527 (not res!1825756)) b!4418511))

(assert (= (and b!4418527 res!1825761) b!4418522))

(assert (= (and b!4418522 res!1825765) b!4418515))

(assert (= (and b!4418515 res!1825762) b!4418521))

(assert (= (and b!4418521 (not res!1825754)) b!4418528))

(assert (= (and b!4418528 (not res!1825757)) b!4418514))

(assert (= (and b!4418514 c!752071) b!4418525))

(assert (= (and b!4418514 (not c!752071)) b!4418513))

(assert (= (and b!4418514 (not res!1825760)) b!4418509))

(assert (= (and b!4418509 (not res!1825748)) b!4418519))

(assert (= (and b!4418519 (not res!1825749)) b!4418516))

(assert (= (and b!4418516 (not res!1825751)) b!4418524))

(assert (= (and b!4418516 res!1825753) b!4418518))

(assert (= (and b!4418516 (not res!1825764)) b!4418520))

(assert (= (and start!430416 ((_ is Cons!49504) newBucket!194)) b!4418510))

(assert (= start!430416 b!4418526))

(declare-fun m!5094927 () Bool)

(assert (=> b!4418516 m!5094927))

(declare-fun m!5094929 () Bool)

(assert (=> b!4418509 m!5094929))

(declare-fun m!5094931 () Bool)

(assert (=> b!4418517 m!5094931))

(declare-fun m!5094933 () Bool)

(assert (=> start!430416 m!5094933))

(declare-fun m!5094935 () Bool)

(assert (=> start!430416 m!5094935))

(declare-fun m!5094937 () Bool)

(assert (=> b!4418522 m!5094937))

(declare-fun m!5094939 () Bool)

(assert (=> b!4418512 m!5094939))

(assert (=> b!4418512 m!5094939))

(declare-fun m!5094941 () Bool)

(assert (=> b!4418512 m!5094941))

(declare-fun m!5094943 () Bool)

(assert (=> b!4418525 m!5094943))

(declare-fun m!5094945 () Bool)

(assert (=> b!4418519 m!5094945))

(assert (=> b!4418519 m!5094945))

(declare-fun m!5094947 () Bool)

(assert (=> b!4418519 m!5094947))

(declare-fun m!5094949 () Bool)

(assert (=> b!4418523 m!5094949))

(declare-fun m!5094951 () Bool)

(assert (=> b!4418527 m!5094951))

(declare-fun m!5094953 () Bool)

(assert (=> b!4418521 m!5094953))

(assert (=> b!4418521 m!5094953))

(declare-fun m!5094955 () Bool)

(assert (=> b!4418521 m!5094955))

(declare-fun m!5094957 () Bool)

(assert (=> b!4418521 m!5094957))

(declare-fun m!5094959 () Bool)

(assert (=> b!4418514 m!5094959))

(declare-fun m!5094961 () Bool)

(assert (=> b!4418514 m!5094961))

(declare-fun m!5094963 () Bool)

(assert (=> b!4418514 m!5094963))

(declare-fun m!5094965 () Bool)

(assert (=> b!4418514 m!5094965))

(assert (=> b!4418514 m!5094959))

(assert (=> b!4418514 m!5094961))

(declare-fun m!5094967 () Bool)

(assert (=> b!4418514 m!5094967))

(declare-fun m!5094969 () Bool)

(assert (=> b!4418508 m!5094969))

(assert (=> b!4418515 m!5094933))

(declare-fun m!5094971 () Bool)

(assert (=> b!4418524 m!5094971))

(declare-fun m!5094973 () Bool)

(assert (=> b!4418529 m!5094973))

(check-sat (not b!4418526) (not b!4418516) (not b!4418525) (not start!430416) (not b!4418509) (not b!4418523) (not b!4418522) (not b!4418517) (not b!4418529) (not b!4418508) (not b!4418514) (not b!4418512) (not b!4418527) (not b!4418521) (not b!4418510) tp_is_empty!26123 (not b!4418519) (not b!4418524) (not b!4418515) tp_is_empty!26121)
(check-sat)
