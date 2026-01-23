; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!434188 () Bool)

(assert start!434188)

(declare-fun b!4439133 () Bool)

(declare-fun e!2764103 () Bool)

(declare-datatypes ((K!11120 0))(
  ( (K!11121 (val!17167 Int)) )
))
(declare-datatypes ((V!11366 0))(
  ( (V!11367 (val!17168 Int)) )
))
(declare-datatypes ((tuple2!49654 0))(
  ( (tuple2!49655 (_1!28121 K!11120) (_2!28121 V!11366)) )
))
(declare-datatypes ((List!49876 0))(
  ( (Nil!49752) (Cons!49752 (h!55469 tuple2!49654) (t!356818 List!49876)) )
))
(declare-fun lt!1635440 () List!49876)

(declare-fun key!3717 () K!11120)

(declare-fun containsKey!1219 (List!49876 K!11120) Bool)

(assert (=> b!4439133 (= e!2764103 (not (containsKey!1219 lt!1635440 key!3717)))))

(declare-fun res!1837612 () Bool)

(declare-fun e!2764098 () Bool)

(assert (=> start!434188 (=> (not res!1837612) (not e!2764098))))

(declare-datatypes ((tuple2!49656 0))(
  ( (tuple2!49657 (_1!28122 (_ BitVec 64)) (_2!28122 List!49876)) )
))
(declare-datatypes ((List!49877 0))(
  ( (Nil!49753) (Cons!49753 (h!55470 tuple2!49656) (t!356819 List!49877)) )
))
(declare-datatypes ((ListLongMap!2275 0))(
  ( (ListLongMap!2276 (toList!3625 List!49877)) )
))
(declare-fun lm!1616 () ListLongMap!2275)

(declare-fun lambda!156846 () Int)

(declare-fun forall!9679 (List!49877 Int) Bool)

(assert (=> start!434188 (= res!1837612 (forall!9679 (toList!3625 lm!1616) lambda!156846))))

(assert (=> start!434188 e!2764098))

(declare-fun tp_is_empty!26521 () Bool)

(assert (=> start!434188 tp_is_empty!26521))

(declare-fun tp_is_empty!26523 () Bool)

(assert (=> start!434188 tp_is_empty!26523))

(declare-fun e!2764099 () Bool)

(assert (=> start!434188 e!2764099))

(declare-fun e!2764102 () Bool)

(declare-fun inv!65306 (ListLongMap!2275) Bool)

(assert (=> start!434188 (and (inv!65306 lm!1616) e!2764102)))

(assert (=> start!434188 true))

(declare-fun b!4439134 () Bool)

(declare-fun e!2764106 () Bool)

(assert (=> b!4439134 (= e!2764098 e!2764106)))

(declare-fun res!1837605 () Bool)

(assert (=> b!4439134 (=> (not res!1837605) (not e!2764106))))

(declare-fun e!2764105 () Bool)

(assert (=> b!4439134 (= res!1837605 e!2764105)))

(declare-fun res!1837607 () Bool)

(assert (=> b!4439134 (=> res!1837607 e!2764105)))

(declare-fun e!2764101 () Bool)

(assert (=> b!4439134 (= res!1837607 e!2764101)))

(declare-fun res!1837614 () Bool)

(assert (=> b!4439134 (=> (not res!1837614) (not e!2764101))))

(declare-fun lt!1635438 () Bool)

(assert (=> b!4439134 (= res!1837614 (not lt!1635438))))

(declare-fun lt!1635444 () Bool)

(assert (=> b!4439134 (= lt!1635438 (not lt!1635444))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12311 (ListLongMap!2275 (_ BitVec 64)) Bool)

(assert (=> b!4439134 (= lt!1635444 (contains!12311 lm!1616 hash!366))))

(declare-fun b!4439135 () Bool)

(declare-fun res!1837604 () Bool)

(declare-fun e!2764100 () Bool)

(assert (=> b!4439135 (=> res!1837604 e!2764100)))

(declare-fun lt!1635445 () ListLongMap!2275)

(declare-fun tail!7351 (List!49877) List!49877)

(assert (=> b!4439135 (= res!1837604 (not (= (tail!7351 (toList!3625 lt!1635445)) (t!356819 (toList!3625 lm!1616)))))))

(declare-fun b!4439136 () Bool)

(declare-fun res!1837619 () Bool)

(assert (=> b!4439136 (=> (not res!1837619) (not e!2764098))))

(declare-datatypes ((ListMap!2869 0))(
  ( (ListMap!2870 (toList!3626 List!49876)) )
))
(declare-fun contains!12312 (ListMap!2869 K!11120) Bool)

(declare-fun extractMap!880 (List!49877) ListMap!2869)

(assert (=> b!4439136 (= res!1837619 (not (contains!12312 (extractMap!880 (toList!3625 lm!1616)) key!3717)))))

(declare-fun newValue!93 () V!11366)

(declare-fun b!4439137 () Bool)

(declare-fun newBucket!194 () List!49876)

(declare-fun apply!11671 (ListLongMap!2275 (_ BitVec 64)) List!49876)

(assert (=> b!4439137 (= e!2764101 (= newBucket!194 (Cons!49752 (tuple2!49655 key!3717 newValue!93) (apply!11671 lm!1616 hash!366))))))

(declare-fun b!4439138 () Bool)

(declare-fun res!1837611 () Bool)

(assert (=> b!4439138 (=> (not res!1837611) (not e!2764106))))

(assert (=> b!4439138 (= res!1837611 (forall!9679 (toList!3625 lm!1616) lambda!156846))))

(declare-fun b!4439139 () Bool)

(declare-fun res!1837615 () Bool)

(assert (=> b!4439139 (=> (not res!1837615) (not e!2764098))))

(declare-datatypes ((Hashable!5213 0))(
  ( (HashableExt!5212 (__x!30916 Int)) )
))
(declare-fun hashF!1220 () Hashable!5213)

(declare-fun allKeysSameHashInMap!925 (ListLongMap!2275 Hashable!5213) Bool)

(assert (=> b!4439139 (= res!1837615 (allKeysSameHashInMap!925 lm!1616 hashF!1220))))

(declare-fun b!4439140 () Bool)

(declare-fun e!2764104 () Bool)

(assert (=> b!4439140 (= e!2764104 e!2764103)))

(declare-fun res!1837608 () Bool)

(assert (=> b!4439140 (=> res!1837608 e!2764103)))

(declare-fun lt!1635442 () tuple2!49654)

(assert (=> b!4439140 (= res!1837608 (not (= newBucket!194 (Cons!49752 lt!1635442 lt!1635440))))))

(assert (=> b!4439140 (= lt!1635440 (apply!11671 lm!1616 hash!366))))

(assert (=> b!4439140 (= lt!1635442 (tuple2!49655 key!3717 newValue!93))))

(declare-fun b!4439141 () Bool)

(declare-fun res!1837618 () Bool)

(assert (=> b!4439141 (=> (not res!1837618) (not e!2764098))))

(declare-fun allKeysSameHash!779 (List!49876 (_ BitVec 64) Hashable!5213) Bool)

(assert (=> b!4439141 (= res!1837618 (allKeysSameHash!779 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4439142 () Bool)

(assert (=> b!4439142 (= e!2764105 (and (not lt!1635444) (= newBucket!194 (Cons!49752 (tuple2!49655 key!3717 newValue!93) Nil!49752))))))

(declare-fun b!4439143 () Bool)

(assert (=> b!4439143 (= e!2764106 (not e!2764100))))

(declare-fun res!1837609 () Bool)

(assert (=> b!4439143 (=> res!1837609 e!2764100)))

(assert (=> b!4439143 (= res!1837609 (not (forall!9679 (toList!3625 lt!1635445) lambda!156846)))))

(assert (=> b!4439143 (forall!9679 (toList!3625 lt!1635445) lambda!156846)))

(declare-fun lt!1635436 () tuple2!49656)

(declare-fun +!1196 (ListLongMap!2275 tuple2!49656) ListLongMap!2275)

(assert (=> b!4439143 (= lt!1635445 (+!1196 lm!1616 lt!1635436))))

(assert (=> b!4439143 (= lt!1635436 (tuple2!49657 hash!366 newBucket!194))))

(declare-datatypes ((Unit!83762 0))(
  ( (Unit!83763) )
))
(declare-fun lt!1635443 () Unit!83762)

(declare-fun addValidProp!457 (ListLongMap!2275 Int (_ BitVec 64) List!49876) Unit!83762)

(assert (=> b!4439143 (= lt!1635443 (addValidProp!457 lm!1616 lambda!156846 hash!366 newBucket!194))))

(declare-fun b!4439144 () Bool)

(declare-fun res!1837606 () Bool)

(assert (=> b!4439144 (=> (not res!1837606) (not e!2764098))))

(declare-fun hash!2265 (Hashable!5213 K!11120) (_ BitVec 64))

(assert (=> b!4439144 (= res!1837606 (= (hash!2265 hashF!1220 key!3717) hash!366))))

(declare-fun b!4439145 () Bool)

(assert (=> b!4439145 (= e!2764100 e!2764104)))

(declare-fun res!1837613 () Bool)

(assert (=> b!4439145 (=> res!1837613 e!2764104)))

(declare-fun lt!1635441 () ListMap!2869)

(declare-fun lt!1635439 () ListMap!2869)

(assert (=> b!4439145 (= res!1837613 (not (= lt!1635441 lt!1635439)))))

(declare-fun lt!1635437 () ListMap!2869)

(declare-fun addToMapMapFromBucket!437 (List!49876 ListMap!2869) ListMap!2869)

(assert (=> b!4439145 (= lt!1635439 (addToMapMapFromBucket!437 newBucket!194 lt!1635437))))

(assert (=> b!4439145 (= lt!1635441 (extractMap!880 (toList!3625 lt!1635445)))))

(assert (=> b!4439145 (= lt!1635437 (extractMap!880 (t!356819 (toList!3625 lm!1616))))))

(declare-fun b!4439146 () Bool)

(declare-fun res!1837617 () Bool)

(assert (=> b!4439146 (=> res!1837617 e!2764103)))

(declare-fun +!1197 (ListMap!2869 tuple2!49654) ListMap!2869)

(assert (=> b!4439146 (= res!1837617 (not (= lt!1635439 (addToMapMapFromBucket!437 lt!1635440 (+!1197 lt!1635437 lt!1635442)))))))

(declare-fun b!4439147 () Bool)

(declare-fun tp!1333986 () Bool)

(assert (=> b!4439147 (= e!2764102 tp!1333986)))

(declare-fun b!4439148 () Bool)

(declare-fun res!1837616 () Bool)

(assert (=> b!4439148 (=> res!1837616 e!2764100)))

(get-info :version)

(assert (=> b!4439148 (= res!1837616 (or (not ((_ is Cons!49753) (toList!3625 lm!1616))) (not (= (_1!28122 (h!55470 (toList!3625 lm!1616))) hash!366)) lt!1635438))))

(declare-fun b!4439149 () Bool)

(declare-fun res!1837603 () Bool)

(assert (=> b!4439149 (=> (not res!1837603) (not e!2764106))))

(declare-fun noDuplicateKeys!819 (List!49876) Bool)

(assert (=> b!4439149 (= res!1837603 (noDuplicateKeys!819 newBucket!194))))

(declare-fun tp!1333985 () Bool)

(declare-fun b!4439150 () Bool)

(assert (=> b!4439150 (= e!2764099 (and tp_is_empty!26523 tp_is_empty!26521 tp!1333985))))

(declare-fun b!4439151 () Bool)

(declare-fun res!1837610 () Bool)

(assert (=> b!4439151 (=> res!1837610 e!2764100)))

(declare-fun head!9282 (List!49877) tuple2!49656)

(assert (=> b!4439151 (= res!1837610 (not (= (head!9282 (toList!3625 lt!1635445)) lt!1635436)))))

(assert (= (and start!434188 res!1837612) b!4439139))

(assert (= (and b!4439139 res!1837615) b!4439144))

(assert (= (and b!4439144 res!1837606) b!4439141))

(assert (= (and b!4439141 res!1837618) b!4439136))

(assert (= (and b!4439136 res!1837619) b!4439134))

(assert (= (and b!4439134 res!1837614) b!4439137))

(assert (= (and b!4439134 (not res!1837607)) b!4439142))

(assert (= (and b!4439134 res!1837605) b!4439149))

(assert (= (and b!4439149 res!1837603) b!4439138))

(assert (= (and b!4439138 res!1837611) b!4439143))

(assert (= (and b!4439143 (not res!1837609)) b!4439148))

(assert (= (and b!4439148 (not res!1837616)) b!4439151))

(assert (= (and b!4439151 (not res!1837610)) b!4439135))

(assert (= (and b!4439135 (not res!1837604)) b!4439145))

(assert (= (and b!4439145 (not res!1837613)) b!4439140))

(assert (= (and b!4439140 (not res!1837608)) b!4439146))

(assert (= (and b!4439146 (not res!1837617)) b!4439133))

(assert (= (and start!434188 ((_ is Cons!49752) newBucket!194)) b!4439150))

(assert (= start!434188 b!4439147))

(declare-fun m!5127557 () Bool)

(assert (=> b!4439151 m!5127557))

(declare-fun m!5127559 () Bool)

(assert (=> b!4439149 m!5127559))

(declare-fun m!5127561 () Bool)

(assert (=> b!4439137 m!5127561))

(declare-fun m!5127563 () Bool)

(assert (=> b!4439146 m!5127563))

(assert (=> b!4439146 m!5127563))

(declare-fun m!5127565 () Bool)

(assert (=> b!4439146 m!5127565))

(declare-fun m!5127567 () Bool)

(assert (=> start!434188 m!5127567))

(declare-fun m!5127569 () Bool)

(assert (=> start!434188 m!5127569))

(declare-fun m!5127571 () Bool)

(assert (=> b!4439141 m!5127571))

(declare-fun m!5127573 () Bool)

(assert (=> b!4439143 m!5127573))

(assert (=> b!4439143 m!5127573))

(declare-fun m!5127575 () Bool)

(assert (=> b!4439143 m!5127575))

(declare-fun m!5127577 () Bool)

(assert (=> b!4439143 m!5127577))

(declare-fun m!5127579 () Bool)

(assert (=> b!4439134 m!5127579))

(assert (=> b!4439140 m!5127561))

(declare-fun m!5127581 () Bool)

(assert (=> b!4439133 m!5127581))

(declare-fun m!5127583 () Bool)

(assert (=> b!4439135 m!5127583))

(declare-fun m!5127585 () Bool)

(assert (=> b!4439145 m!5127585))

(declare-fun m!5127587 () Bool)

(assert (=> b!4439145 m!5127587))

(declare-fun m!5127589 () Bool)

(assert (=> b!4439145 m!5127589))

(assert (=> b!4439138 m!5127567))

(declare-fun m!5127591 () Bool)

(assert (=> b!4439139 m!5127591))

(declare-fun m!5127593 () Bool)

(assert (=> b!4439144 m!5127593))

(declare-fun m!5127595 () Bool)

(assert (=> b!4439136 m!5127595))

(assert (=> b!4439136 m!5127595))

(declare-fun m!5127597 () Bool)

(assert (=> b!4439136 m!5127597))

(check-sat (not b!4439140) (not b!4439139) (not b!4439146) (not b!4439138) (not b!4439141) (not b!4439134) (not b!4439136) (not b!4439150) (not b!4439137) (not b!4439145) (not start!434188) tp_is_empty!26523 (not b!4439143) (not b!4439151) (not b!4439149) (not b!4439144) tp_is_empty!26521 (not b!4439133) (not b!4439135) (not b!4439147))
(check-sat)
(get-model)

(declare-fun d!1347548 () Bool)

(declare-fun res!1837624 () Bool)

(declare-fun e!2764111 () Bool)

(assert (=> d!1347548 (=> res!1837624 e!2764111)))

(assert (=> d!1347548 (= res!1837624 ((_ is Nil!49753) (toList!3625 lm!1616)))))

(assert (=> d!1347548 (= (forall!9679 (toList!3625 lm!1616) lambda!156846) e!2764111)))

(declare-fun b!4439156 () Bool)

(declare-fun e!2764112 () Bool)

(assert (=> b!4439156 (= e!2764111 e!2764112)))

(declare-fun res!1837625 () Bool)

(assert (=> b!4439156 (=> (not res!1837625) (not e!2764112))))

(declare-fun dynLambda!20901 (Int tuple2!49656) Bool)

(assert (=> b!4439156 (= res!1837625 (dynLambda!20901 lambda!156846 (h!55470 (toList!3625 lm!1616))))))

(declare-fun b!4439157 () Bool)

(assert (=> b!4439157 (= e!2764112 (forall!9679 (t!356819 (toList!3625 lm!1616)) lambda!156846))))

(assert (= (and d!1347548 (not res!1837624)) b!4439156))

(assert (= (and b!4439156 res!1837625) b!4439157))

(declare-fun b_lambda!144897 () Bool)

(assert (=> (not b_lambda!144897) (not b!4439156)))

(declare-fun m!5127599 () Bool)

(assert (=> b!4439156 m!5127599))

(declare-fun m!5127601 () Bool)

(assert (=> b!4439157 m!5127601))

(assert (=> b!4439138 d!1347548))

(declare-fun d!1347552 () Bool)

(declare-datatypes ((Option!10787 0))(
  ( (None!10786) (Some!10786 (v!44014 List!49876)) )
))
(declare-fun get!16225 (Option!10787) List!49876)

(declare-fun getValueByKey!773 (List!49877 (_ BitVec 64)) Option!10787)

(assert (=> d!1347552 (= (apply!11671 lm!1616 hash!366) (get!16225 (getValueByKey!773 (toList!3625 lm!1616) hash!366)))))

(declare-fun bs!763845 () Bool)

(assert (= bs!763845 d!1347552))

(declare-fun m!5127603 () Bool)

(assert (=> bs!763845 m!5127603))

(assert (=> bs!763845 m!5127603))

(declare-fun m!5127605 () Bool)

(assert (=> bs!763845 m!5127605))

(assert (=> b!4439137 d!1347552))

(assert (=> start!434188 d!1347548))

(declare-fun d!1347554 () Bool)

(declare-fun isStrictlySorted!263 (List!49877) Bool)

(assert (=> d!1347554 (= (inv!65306 lm!1616) (isStrictlySorted!263 (toList!3625 lm!1616)))))

(declare-fun bs!763846 () Bool)

(assert (= bs!763846 d!1347554))

(declare-fun m!5127607 () Bool)

(assert (=> bs!763846 m!5127607))

(assert (=> start!434188 d!1347554))

(declare-fun bs!763847 () Bool)

(declare-fun d!1347556 () Bool)

(assert (= bs!763847 (and d!1347556 start!434188)))

(declare-fun lambda!156849 () Int)

(assert (=> bs!763847 (not (= lambda!156849 lambda!156846))))

(assert (=> d!1347556 true))

(assert (=> d!1347556 (= (allKeysSameHashInMap!925 lm!1616 hashF!1220) (forall!9679 (toList!3625 lm!1616) lambda!156849))))

(declare-fun bs!763848 () Bool)

(assert (= bs!763848 d!1347556))

(declare-fun m!5127609 () Bool)

(assert (=> bs!763848 m!5127609))

(assert (=> b!4439139 d!1347556))

(declare-fun d!1347558 () Bool)

(declare-fun res!1837639 () Bool)

(declare-fun e!2764135 () Bool)

(assert (=> d!1347558 (=> res!1837639 e!2764135)))

(assert (=> d!1347558 (= res!1837639 (not ((_ is Cons!49752) newBucket!194)))))

(assert (=> d!1347558 (= (noDuplicateKeys!819 newBucket!194) e!2764135)))

(declare-fun b!4439191 () Bool)

(declare-fun e!2764136 () Bool)

(assert (=> b!4439191 (= e!2764135 e!2764136)))

(declare-fun res!1837640 () Bool)

(assert (=> b!4439191 (=> (not res!1837640) (not e!2764136))))

(assert (=> b!4439191 (= res!1837640 (not (containsKey!1219 (t!356818 newBucket!194) (_1!28121 (h!55469 newBucket!194)))))))

(declare-fun b!4439192 () Bool)

(assert (=> b!4439192 (= e!2764136 (noDuplicateKeys!819 (t!356818 newBucket!194)))))

(assert (= (and d!1347558 (not res!1837639)) b!4439191))

(assert (= (and b!4439191 res!1837640) b!4439192))

(declare-fun m!5127631 () Bool)

(assert (=> b!4439191 m!5127631))

(declare-fun m!5127633 () Bool)

(assert (=> b!4439192 m!5127633))

(assert (=> b!4439149 d!1347558))

(declare-fun d!1347562 () Bool)

(assert (=> d!1347562 (= (head!9282 (toList!3625 lt!1635445)) (h!55470 (toList!3625 lt!1635445)))))

(assert (=> b!4439151 d!1347562))

(assert (=> b!4439140 d!1347552))

(declare-fun d!1347564 () Bool)

(assert (=> d!1347564 true))

(assert (=> d!1347564 true))

(declare-fun lambda!156852 () Int)

(declare-fun forall!9681 (List!49876 Int) Bool)

(assert (=> d!1347564 (= (allKeysSameHash!779 newBucket!194 hash!366 hashF!1220) (forall!9681 newBucket!194 lambda!156852))))

(declare-fun bs!763849 () Bool)

(assert (= bs!763849 d!1347564))

(declare-fun m!5127635 () Bool)

(assert (=> bs!763849 m!5127635))

(assert (=> b!4439141 d!1347564))

(declare-fun d!1347566 () Bool)

(declare-fun res!1837641 () Bool)

(declare-fun e!2764137 () Bool)

(assert (=> d!1347566 (=> res!1837641 e!2764137)))

(assert (=> d!1347566 (= res!1837641 ((_ is Nil!49753) (toList!3625 lt!1635445)))))

(assert (=> d!1347566 (= (forall!9679 (toList!3625 lt!1635445) lambda!156846) e!2764137)))

(declare-fun b!4439197 () Bool)

(declare-fun e!2764138 () Bool)

(assert (=> b!4439197 (= e!2764137 e!2764138)))

(declare-fun res!1837642 () Bool)

(assert (=> b!4439197 (=> (not res!1837642) (not e!2764138))))

(assert (=> b!4439197 (= res!1837642 (dynLambda!20901 lambda!156846 (h!55470 (toList!3625 lt!1635445))))))

(declare-fun b!4439198 () Bool)

(assert (=> b!4439198 (= e!2764138 (forall!9679 (t!356819 (toList!3625 lt!1635445)) lambda!156846))))

(assert (= (and d!1347566 (not res!1837641)) b!4439197))

(assert (= (and b!4439197 res!1837642) b!4439198))

(declare-fun b_lambda!144899 () Bool)

(assert (=> (not b_lambda!144899) (not b!4439197)))

(declare-fun m!5127637 () Bool)

(assert (=> b!4439197 m!5127637))

(declare-fun m!5127639 () Bool)

(assert (=> b!4439198 m!5127639))

(assert (=> b!4439143 d!1347566))

(declare-fun d!1347568 () Bool)

(declare-fun e!2764156 () Bool)

(assert (=> d!1347568 e!2764156))

(declare-fun res!1837660 () Bool)

(assert (=> d!1347568 (=> (not res!1837660) (not e!2764156))))

(declare-fun lt!1635483 () ListLongMap!2275)

(assert (=> d!1347568 (= res!1837660 (contains!12311 lt!1635483 (_1!28122 lt!1635436)))))

(declare-fun lt!1635481 () List!49877)

(assert (=> d!1347568 (= lt!1635483 (ListLongMap!2276 lt!1635481))))

(declare-fun lt!1635484 () Unit!83762)

(declare-fun lt!1635482 () Unit!83762)

(assert (=> d!1347568 (= lt!1635484 lt!1635482)))

(assert (=> d!1347568 (= (getValueByKey!773 lt!1635481 (_1!28122 lt!1635436)) (Some!10786 (_2!28122 lt!1635436)))))

(declare-fun lemmaContainsTupThenGetReturnValue!503 (List!49877 (_ BitVec 64) List!49876) Unit!83762)

(assert (=> d!1347568 (= lt!1635482 (lemmaContainsTupThenGetReturnValue!503 lt!1635481 (_1!28122 lt!1635436) (_2!28122 lt!1635436)))))

(declare-fun insertStrictlySorted!289 (List!49877 (_ BitVec 64) List!49876) List!49877)

(assert (=> d!1347568 (= lt!1635481 (insertStrictlySorted!289 (toList!3625 lm!1616) (_1!28122 lt!1635436) (_2!28122 lt!1635436)))))

(assert (=> d!1347568 (= (+!1196 lm!1616 lt!1635436) lt!1635483)))

(declare-fun b!4439227 () Bool)

(declare-fun res!1837659 () Bool)

(assert (=> b!4439227 (=> (not res!1837659) (not e!2764156))))

(assert (=> b!4439227 (= res!1837659 (= (getValueByKey!773 (toList!3625 lt!1635483) (_1!28122 lt!1635436)) (Some!10786 (_2!28122 lt!1635436))))))

(declare-fun b!4439228 () Bool)

(declare-fun contains!12315 (List!49877 tuple2!49656) Bool)

(assert (=> b!4439228 (= e!2764156 (contains!12315 (toList!3625 lt!1635483) lt!1635436))))

(assert (= (and d!1347568 res!1837660) b!4439227))

(assert (= (and b!4439227 res!1837659) b!4439228))

(declare-fun m!5127663 () Bool)

(assert (=> d!1347568 m!5127663))

(declare-fun m!5127665 () Bool)

(assert (=> d!1347568 m!5127665))

(declare-fun m!5127667 () Bool)

(assert (=> d!1347568 m!5127667))

(declare-fun m!5127669 () Bool)

(assert (=> d!1347568 m!5127669))

(declare-fun m!5127671 () Bool)

(assert (=> b!4439227 m!5127671))

(declare-fun m!5127673 () Bool)

(assert (=> b!4439228 m!5127673))

(assert (=> b!4439143 d!1347568))

(declare-fun d!1347588 () Bool)

(assert (=> d!1347588 (forall!9679 (toList!3625 (+!1196 lm!1616 (tuple2!49657 hash!366 newBucket!194))) lambda!156846)))

(declare-fun lt!1635487 () Unit!83762)

(declare-fun choose!28192 (ListLongMap!2275 Int (_ BitVec 64) List!49876) Unit!83762)

(assert (=> d!1347588 (= lt!1635487 (choose!28192 lm!1616 lambda!156846 hash!366 newBucket!194))))

(declare-fun e!2764159 () Bool)

(assert (=> d!1347588 e!2764159))

(declare-fun res!1837663 () Bool)

(assert (=> d!1347588 (=> (not res!1837663) (not e!2764159))))

(assert (=> d!1347588 (= res!1837663 (forall!9679 (toList!3625 lm!1616) lambda!156846))))

(assert (=> d!1347588 (= (addValidProp!457 lm!1616 lambda!156846 hash!366 newBucket!194) lt!1635487)))

(declare-fun b!4439232 () Bool)

(assert (=> b!4439232 (= e!2764159 (dynLambda!20901 lambda!156846 (tuple2!49657 hash!366 newBucket!194)))))

(assert (= (and d!1347588 res!1837663) b!4439232))

(declare-fun b_lambda!144903 () Bool)

(assert (=> (not b_lambda!144903) (not b!4439232)))

(declare-fun m!5127675 () Bool)

(assert (=> d!1347588 m!5127675))

(declare-fun m!5127677 () Bool)

(assert (=> d!1347588 m!5127677))

(declare-fun m!5127679 () Bool)

(assert (=> d!1347588 m!5127679))

(assert (=> d!1347588 m!5127567))

(declare-fun m!5127681 () Bool)

(assert (=> b!4439232 m!5127681))

(assert (=> b!4439143 d!1347588))

(declare-fun d!1347590 () Bool)

(declare-fun e!2764164 () Bool)

(assert (=> d!1347590 e!2764164))

(declare-fun res!1837666 () Bool)

(assert (=> d!1347590 (=> res!1837666 e!2764164)))

(declare-fun lt!1635499 () Bool)

(assert (=> d!1347590 (= res!1837666 (not lt!1635499))))

(declare-fun lt!1635497 () Bool)

(assert (=> d!1347590 (= lt!1635499 lt!1635497)))

(declare-fun lt!1635496 () Unit!83762)

(declare-fun e!2764165 () Unit!83762)

(assert (=> d!1347590 (= lt!1635496 e!2764165)))

(declare-fun c!755596 () Bool)

(assert (=> d!1347590 (= c!755596 lt!1635497)))

(declare-fun containsKey!1222 (List!49877 (_ BitVec 64)) Bool)

(assert (=> d!1347590 (= lt!1635497 (containsKey!1222 (toList!3625 lm!1616) hash!366))))

(assert (=> d!1347590 (= (contains!12311 lm!1616 hash!366) lt!1635499)))

(declare-fun b!4439239 () Bool)

(declare-fun lt!1635498 () Unit!83762)

(assert (=> b!4439239 (= e!2764165 lt!1635498)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!682 (List!49877 (_ BitVec 64)) Unit!83762)

(assert (=> b!4439239 (= lt!1635498 (lemmaContainsKeyImpliesGetValueByKeyDefined!682 (toList!3625 lm!1616) hash!366))))

(declare-fun isDefined!8079 (Option!10787) Bool)

(assert (=> b!4439239 (isDefined!8079 (getValueByKey!773 (toList!3625 lm!1616) hash!366))))

(declare-fun b!4439240 () Bool)

(declare-fun Unit!83789 () Unit!83762)

(assert (=> b!4439240 (= e!2764165 Unit!83789)))

(declare-fun b!4439241 () Bool)

(assert (=> b!4439241 (= e!2764164 (isDefined!8079 (getValueByKey!773 (toList!3625 lm!1616) hash!366)))))

(assert (= (and d!1347590 c!755596) b!4439239))

(assert (= (and d!1347590 (not c!755596)) b!4439240))

(assert (= (and d!1347590 (not res!1837666)) b!4439241))

(declare-fun m!5127683 () Bool)

(assert (=> d!1347590 m!5127683))

(declare-fun m!5127685 () Bool)

(assert (=> b!4439239 m!5127685))

(assert (=> b!4439239 m!5127603))

(assert (=> b!4439239 m!5127603))

(declare-fun m!5127687 () Bool)

(assert (=> b!4439239 m!5127687))

(assert (=> b!4439241 m!5127603))

(assert (=> b!4439241 m!5127603))

(assert (=> b!4439241 m!5127687))

(assert (=> b!4439134 d!1347590))

(declare-fun d!1347592 () Bool)

(declare-fun res!1837671 () Bool)

(declare-fun e!2764170 () Bool)

(assert (=> d!1347592 (=> res!1837671 e!2764170)))

(assert (=> d!1347592 (= res!1837671 (and ((_ is Cons!49752) lt!1635440) (= (_1!28121 (h!55469 lt!1635440)) key!3717)))))

(assert (=> d!1347592 (= (containsKey!1219 lt!1635440 key!3717) e!2764170)))

(declare-fun b!4439246 () Bool)

(declare-fun e!2764171 () Bool)

(assert (=> b!4439246 (= e!2764170 e!2764171)))

(declare-fun res!1837672 () Bool)

(assert (=> b!4439246 (=> (not res!1837672) (not e!2764171))))

(assert (=> b!4439246 (= res!1837672 ((_ is Cons!49752) lt!1635440))))

(declare-fun b!4439247 () Bool)

(assert (=> b!4439247 (= e!2764171 (containsKey!1219 (t!356818 lt!1635440) key!3717))))

(assert (= (and d!1347592 (not res!1837671)) b!4439246))

(assert (= (and b!4439246 res!1837672) b!4439247))

(declare-fun m!5127689 () Bool)

(assert (=> b!4439247 m!5127689))

(assert (=> b!4439133 d!1347592))

(declare-fun d!1347594 () Bool)

(declare-fun hash!2267 (Hashable!5213 K!11120) (_ BitVec 64))

(assert (=> d!1347594 (= (hash!2265 hashF!1220 key!3717) (hash!2267 hashF!1220 key!3717))))

(declare-fun bs!763857 () Bool)

(assert (= bs!763857 d!1347594))

(declare-fun m!5127691 () Bool)

(assert (=> bs!763857 m!5127691))

(assert (=> b!4439144 d!1347594))

(declare-fun d!1347596 () Bool)

(assert (=> d!1347596 (= (tail!7351 (toList!3625 lt!1635445)) (t!356819 (toList!3625 lt!1635445)))))

(assert (=> b!4439135 d!1347596))

(declare-fun bs!763890 () Bool)

(declare-fun b!4439330 () Bool)

(assert (= bs!763890 (and b!4439330 d!1347564)))

(declare-fun lambda!156928 () Int)

(assert (=> bs!763890 (not (= lambda!156928 lambda!156852))))

(assert (=> b!4439330 true))

(declare-fun bs!763891 () Bool)

(declare-fun b!4439328 () Bool)

(assert (= bs!763891 (and b!4439328 d!1347564)))

(declare-fun lambda!156929 () Int)

(assert (=> bs!763891 (not (= lambda!156929 lambda!156852))))

(declare-fun bs!763892 () Bool)

(assert (= bs!763892 (and b!4439328 b!4439330)))

(assert (=> bs!763892 (= lambda!156929 lambda!156928)))

(assert (=> b!4439328 true))

(declare-fun lambda!156930 () Int)

(assert (=> bs!763891 (not (= lambda!156930 lambda!156852))))

(declare-fun lt!1635679 () ListMap!2869)

(assert (=> bs!763892 (= (= lt!1635679 (+!1197 lt!1635437 lt!1635442)) (= lambda!156930 lambda!156928))))

(assert (=> b!4439328 (= (= lt!1635679 (+!1197 lt!1635437 lt!1635442)) (= lambda!156930 lambda!156929))))

(assert (=> b!4439328 true))

(declare-fun bs!763893 () Bool)

(declare-fun d!1347598 () Bool)

(assert (= bs!763893 (and d!1347598 d!1347564)))

(declare-fun lambda!156931 () Int)

(assert (=> bs!763893 (not (= lambda!156931 lambda!156852))))

(declare-fun bs!763894 () Bool)

(assert (= bs!763894 (and d!1347598 b!4439330)))

(declare-fun lt!1635686 () ListMap!2869)

(assert (=> bs!763894 (= (= lt!1635686 (+!1197 lt!1635437 lt!1635442)) (= lambda!156931 lambda!156928))))

(declare-fun bs!763895 () Bool)

(assert (= bs!763895 (and d!1347598 b!4439328)))

(assert (=> bs!763895 (= (= lt!1635686 (+!1197 lt!1635437 lt!1635442)) (= lambda!156931 lambda!156929))))

(assert (=> bs!763895 (= (= lt!1635686 lt!1635679) (= lambda!156931 lambda!156930))))

(assert (=> d!1347598 true))

(declare-fun bm!308935 () Bool)

(declare-fun c!755608 () Bool)

(declare-fun call!308942 () Bool)

(assert (=> bm!308935 (= call!308942 (forall!9681 (ite c!755608 (toList!3626 (+!1197 lt!1635437 lt!1635442)) lt!1635440) (ite c!755608 lambda!156928 lambda!156930)))))

(declare-fun e!2764222 () ListMap!2869)

(assert (=> b!4439328 (= e!2764222 lt!1635679)))

(declare-fun lt!1635682 () ListMap!2869)

(assert (=> b!4439328 (= lt!1635682 (+!1197 (+!1197 lt!1635437 lt!1635442) (h!55469 lt!1635440)))))

(assert (=> b!4439328 (= lt!1635679 (addToMapMapFromBucket!437 (t!356818 lt!1635440) (+!1197 (+!1197 lt!1635437 lt!1635442) (h!55469 lt!1635440))))))

(declare-fun lt!1635674 () Unit!83762)

(declare-fun call!308940 () Unit!83762)

(assert (=> b!4439328 (= lt!1635674 call!308940)))

(assert (=> b!4439328 (forall!9681 (toList!3626 (+!1197 lt!1635437 lt!1635442)) lambda!156929)))

(declare-fun lt!1635671 () Unit!83762)

(assert (=> b!4439328 (= lt!1635671 lt!1635674)))

(assert (=> b!4439328 (forall!9681 (toList!3626 lt!1635682) lambda!156930)))

(declare-fun lt!1635687 () Unit!83762)

(declare-fun Unit!83790 () Unit!83762)

(assert (=> b!4439328 (= lt!1635687 Unit!83790)))

(assert (=> b!4439328 (forall!9681 (t!356818 lt!1635440) lambda!156930)))

(declare-fun lt!1635678 () Unit!83762)

(declare-fun Unit!83791 () Unit!83762)

(assert (=> b!4439328 (= lt!1635678 Unit!83791)))

(declare-fun lt!1635668 () Unit!83762)

(declare-fun Unit!83792 () Unit!83762)

(assert (=> b!4439328 (= lt!1635668 Unit!83792)))

(declare-fun lt!1635681 () Unit!83762)

(declare-fun forallContained!2139 (List!49876 Int tuple2!49654) Unit!83762)

(assert (=> b!4439328 (= lt!1635681 (forallContained!2139 (toList!3626 lt!1635682) lambda!156930 (h!55469 lt!1635440)))))

(assert (=> b!4439328 (contains!12312 lt!1635682 (_1!28121 (h!55469 lt!1635440)))))

(declare-fun lt!1635680 () Unit!83762)

(declare-fun Unit!83793 () Unit!83762)

(assert (=> b!4439328 (= lt!1635680 Unit!83793)))

(assert (=> b!4439328 (contains!12312 lt!1635679 (_1!28121 (h!55469 lt!1635440)))))

(declare-fun lt!1635684 () Unit!83762)

(declare-fun Unit!83794 () Unit!83762)

(assert (=> b!4439328 (= lt!1635684 Unit!83794)))

(assert (=> b!4439328 (forall!9681 lt!1635440 lambda!156930)))

(declare-fun lt!1635673 () Unit!83762)

(declare-fun Unit!83795 () Unit!83762)

(assert (=> b!4439328 (= lt!1635673 Unit!83795)))

(assert (=> b!4439328 (forall!9681 (toList!3626 lt!1635682) lambda!156930)))

(declare-fun lt!1635675 () Unit!83762)

(declare-fun Unit!83796 () Unit!83762)

(assert (=> b!4439328 (= lt!1635675 Unit!83796)))

(declare-fun lt!1635672 () Unit!83762)

(declare-fun Unit!83797 () Unit!83762)

(assert (=> b!4439328 (= lt!1635672 Unit!83797)))

(declare-fun lt!1635669 () Unit!83762)

(declare-fun addForallContainsKeyThenBeforeAdding!203 (ListMap!2869 ListMap!2869 K!11120 V!11366) Unit!83762)

(assert (=> b!4439328 (= lt!1635669 (addForallContainsKeyThenBeforeAdding!203 (+!1197 lt!1635437 lt!1635442) lt!1635679 (_1!28121 (h!55469 lt!1635440)) (_2!28121 (h!55469 lt!1635440))))))

(assert (=> b!4439328 (forall!9681 (toList!3626 (+!1197 lt!1635437 lt!1635442)) lambda!156930)))

(declare-fun lt!1635685 () Unit!83762)

(assert (=> b!4439328 (= lt!1635685 lt!1635669)))

(assert (=> b!4439328 (forall!9681 (toList!3626 (+!1197 lt!1635437 lt!1635442)) lambda!156930)))

(declare-fun lt!1635670 () Unit!83762)

(declare-fun Unit!83798 () Unit!83762)

(assert (=> b!4439328 (= lt!1635670 Unit!83798)))

(declare-fun res!1837718 () Bool)

(assert (=> b!4439328 (= res!1837718 call!308942)))

(declare-fun e!2764221 () Bool)

(assert (=> b!4439328 (=> (not res!1837718) (not e!2764221))))

(assert (=> b!4439328 e!2764221))

(declare-fun lt!1635677 () Unit!83762)

(declare-fun Unit!83799 () Unit!83762)

(assert (=> b!4439328 (= lt!1635677 Unit!83799)))

(declare-fun b!4439329 () Bool)

(declare-fun e!2764223 () Bool)

(declare-fun invariantList!836 (List!49876) Bool)

(assert (=> b!4439329 (= e!2764223 (invariantList!836 (toList!3626 lt!1635686)))))

(declare-fun call!308941 () Bool)

(declare-fun bm!308936 () Bool)

(assert (=> bm!308936 (= call!308941 (forall!9681 (toList!3626 (+!1197 lt!1635437 lt!1635442)) (ite c!755608 lambda!156928 lambda!156930)))))

(assert (=> b!4439330 (= e!2764222 (+!1197 lt!1635437 lt!1635442))))

(declare-fun lt!1635676 () Unit!83762)

(assert (=> b!4439330 (= lt!1635676 call!308940)))

(assert (=> b!4439330 call!308941))

(declare-fun lt!1635667 () Unit!83762)

(assert (=> b!4439330 (= lt!1635667 lt!1635676)))

(assert (=> b!4439330 call!308942))

(declare-fun lt!1635683 () Unit!83762)

(declare-fun Unit!83800 () Unit!83762)

(assert (=> b!4439330 (= lt!1635683 Unit!83800)))

(declare-fun bm!308937 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!203 (ListMap!2869) Unit!83762)

(assert (=> bm!308937 (= call!308940 (lemmaContainsAllItsOwnKeys!203 (+!1197 lt!1635437 lt!1635442)))))

(declare-fun b!4439331 () Bool)

(declare-fun res!1837719 () Bool)

(assert (=> b!4439331 (=> (not res!1837719) (not e!2764223))))

(assert (=> b!4439331 (= res!1837719 (forall!9681 (toList!3626 (+!1197 lt!1635437 lt!1635442)) lambda!156931))))

(declare-fun b!4439327 () Bool)

(assert (=> b!4439327 (= e!2764221 call!308941)))

(assert (=> d!1347598 e!2764223))

(declare-fun res!1837717 () Bool)

(assert (=> d!1347598 (=> (not res!1837717) (not e!2764223))))

(assert (=> d!1347598 (= res!1837717 (forall!9681 lt!1635440 lambda!156931))))

(assert (=> d!1347598 (= lt!1635686 e!2764222)))

(assert (=> d!1347598 (= c!755608 ((_ is Nil!49752) lt!1635440))))

(assert (=> d!1347598 (noDuplicateKeys!819 lt!1635440)))

(assert (=> d!1347598 (= (addToMapMapFromBucket!437 lt!1635440 (+!1197 lt!1635437 lt!1635442)) lt!1635686)))

(assert (= (and d!1347598 c!755608) b!4439330))

(assert (= (and d!1347598 (not c!755608)) b!4439328))

(assert (= (and b!4439328 res!1837718) b!4439327))

(assert (= (or b!4439330 b!4439328) bm!308937))

(assert (= (or b!4439330 b!4439328) bm!308935))

(assert (= (or b!4439330 b!4439327) bm!308936))

(assert (= (and d!1347598 res!1837717) b!4439331))

(assert (= (and b!4439331 res!1837719) b!4439329))

(declare-fun m!5127829 () Bool)

(assert (=> b!4439329 m!5127829))

(declare-fun m!5127831 () Bool)

(assert (=> b!4439328 m!5127831))

(declare-fun m!5127833 () Bool)

(assert (=> b!4439328 m!5127833))

(declare-fun m!5127835 () Bool)

(assert (=> b!4439328 m!5127835))

(declare-fun m!5127837 () Bool)

(assert (=> b!4439328 m!5127837))

(declare-fun m!5127839 () Bool)

(assert (=> b!4439328 m!5127839))

(declare-fun m!5127841 () Bool)

(assert (=> b!4439328 m!5127841))

(assert (=> b!4439328 m!5127841))

(assert (=> b!4439328 m!5127563))

(declare-fun m!5127843 () Bool)

(assert (=> b!4439328 m!5127843))

(declare-fun m!5127845 () Bool)

(assert (=> b!4439328 m!5127845))

(declare-fun m!5127847 () Bool)

(assert (=> b!4439328 m!5127847))

(assert (=> b!4439328 m!5127563))

(assert (=> b!4439328 m!5127835))

(declare-fun m!5127849 () Bool)

(assert (=> b!4439328 m!5127849))

(declare-fun m!5127851 () Bool)

(assert (=> b!4439328 m!5127851))

(assert (=> b!4439328 m!5127839))

(declare-fun m!5127853 () Bool)

(assert (=> d!1347598 m!5127853))

(declare-fun m!5127855 () Bool)

(assert (=> d!1347598 m!5127855))

(declare-fun m!5127857 () Bool)

(assert (=> b!4439331 m!5127857))

(declare-fun m!5127859 () Bool)

(assert (=> bm!308936 m!5127859))

(declare-fun m!5127861 () Bool)

(assert (=> bm!308935 m!5127861))

(assert (=> bm!308937 m!5127563))

(declare-fun m!5127863 () Bool)

(assert (=> bm!308937 m!5127863))

(assert (=> b!4439146 d!1347598))

(declare-fun d!1347626 () Bool)

(declare-fun e!2764226 () Bool)

(assert (=> d!1347626 e!2764226))

(declare-fun res!1837724 () Bool)

(assert (=> d!1347626 (=> (not res!1837724) (not e!2764226))))

(declare-fun lt!1635698 () ListMap!2869)

(assert (=> d!1347626 (= res!1837724 (contains!12312 lt!1635698 (_1!28121 lt!1635442)))))

(declare-fun lt!1635696 () List!49876)

(assert (=> d!1347626 (= lt!1635698 (ListMap!2870 lt!1635696))))

(declare-fun lt!1635699 () Unit!83762)

(declare-fun lt!1635697 () Unit!83762)

(assert (=> d!1347626 (= lt!1635699 lt!1635697)))

(declare-datatypes ((Option!10788 0))(
  ( (None!10787) (Some!10787 (v!44015 V!11366)) )
))
(declare-fun getValueByKey!774 (List!49876 K!11120) Option!10788)

(assert (=> d!1347626 (= (getValueByKey!774 lt!1635696 (_1!28121 lt!1635442)) (Some!10787 (_2!28121 lt!1635442)))))

(declare-fun lemmaContainsTupThenGetReturnValue!505 (List!49876 K!11120 V!11366) Unit!83762)

(assert (=> d!1347626 (= lt!1635697 (lemmaContainsTupThenGetReturnValue!505 lt!1635696 (_1!28121 lt!1635442) (_2!28121 lt!1635442)))))

(declare-fun insertNoDuplicatedKeys!223 (List!49876 K!11120 V!11366) List!49876)

(assert (=> d!1347626 (= lt!1635696 (insertNoDuplicatedKeys!223 (toList!3626 lt!1635437) (_1!28121 lt!1635442) (_2!28121 lt!1635442)))))

(assert (=> d!1347626 (= (+!1197 lt!1635437 lt!1635442) lt!1635698)))

(declare-fun b!4439338 () Bool)

(declare-fun res!1837725 () Bool)

(assert (=> b!4439338 (=> (not res!1837725) (not e!2764226))))

(assert (=> b!4439338 (= res!1837725 (= (getValueByKey!774 (toList!3626 lt!1635698) (_1!28121 lt!1635442)) (Some!10787 (_2!28121 lt!1635442))))))

(declare-fun b!4439339 () Bool)

(declare-fun contains!12317 (List!49876 tuple2!49654) Bool)

(assert (=> b!4439339 (= e!2764226 (contains!12317 (toList!3626 lt!1635698) lt!1635442))))

(assert (= (and d!1347626 res!1837724) b!4439338))

(assert (= (and b!4439338 res!1837725) b!4439339))

(declare-fun m!5127865 () Bool)

(assert (=> d!1347626 m!5127865))

(declare-fun m!5127867 () Bool)

(assert (=> d!1347626 m!5127867))

(declare-fun m!5127869 () Bool)

(assert (=> d!1347626 m!5127869))

(declare-fun m!5127871 () Bool)

(assert (=> d!1347626 m!5127871))

(declare-fun m!5127873 () Bool)

(assert (=> b!4439338 m!5127873))

(declare-fun m!5127875 () Bool)

(assert (=> b!4439339 m!5127875))

(assert (=> b!4439146 d!1347626))

(declare-fun bs!763896 () Bool)

(declare-fun b!4439343 () Bool)

(assert (= bs!763896 (and b!4439343 b!4439328)))

(declare-fun lambda!156932 () Int)

(assert (=> bs!763896 (= (= lt!1635437 lt!1635679) (= lambda!156932 lambda!156930))))

(declare-fun bs!763897 () Bool)

(assert (= bs!763897 (and b!4439343 b!4439330)))

(assert (=> bs!763897 (= (= lt!1635437 (+!1197 lt!1635437 lt!1635442)) (= lambda!156932 lambda!156928))))

(declare-fun bs!763898 () Bool)

(assert (= bs!763898 (and b!4439343 d!1347598)))

(assert (=> bs!763898 (= (= lt!1635437 lt!1635686) (= lambda!156932 lambda!156931))))

(assert (=> bs!763896 (= (= lt!1635437 (+!1197 lt!1635437 lt!1635442)) (= lambda!156932 lambda!156929))))

(declare-fun bs!763899 () Bool)

(assert (= bs!763899 (and b!4439343 d!1347564)))

(assert (=> bs!763899 (not (= lambda!156932 lambda!156852))))

(assert (=> b!4439343 true))

(declare-fun bs!763900 () Bool)

(declare-fun b!4439341 () Bool)

(assert (= bs!763900 (and b!4439341 b!4439328)))

(declare-fun lambda!156933 () Int)

(assert (=> bs!763900 (= (= lt!1635437 lt!1635679) (= lambda!156933 lambda!156930))))

(declare-fun bs!763901 () Bool)

(assert (= bs!763901 (and b!4439341 b!4439330)))

(assert (=> bs!763901 (= (= lt!1635437 (+!1197 lt!1635437 lt!1635442)) (= lambda!156933 lambda!156928))))

(declare-fun bs!763902 () Bool)

(assert (= bs!763902 (and b!4439341 b!4439343)))

(assert (=> bs!763902 (= lambda!156933 lambda!156932)))

(declare-fun bs!763903 () Bool)

(assert (= bs!763903 (and b!4439341 d!1347598)))

(assert (=> bs!763903 (= (= lt!1635437 lt!1635686) (= lambda!156933 lambda!156931))))

(assert (=> bs!763900 (= (= lt!1635437 (+!1197 lt!1635437 lt!1635442)) (= lambda!156933 lambda!156929))))

(declare-fun bs!763904 () Bool)

(assert (= bs!763904 (and b!4439341 d!1347564)))

(assert (=> bs!763904 (not (= lambda!156933 lambda!156852))))

(assert (=> b!4439341 true))

(declare-fun lambda!156934 () Int)

(declare-fun lt!1635712 () ListMap!2869)

(assert (=> bs!763900 (= (= lt!1635712 lt!1635679) (= lambda!156934 lambda!156930))))

(assert (=> bs!763901 (= (= lt!1635712 (+!1197 lt!1635437 lt!1635442)) (= lambda!156934 lambda!156928))))

(assert (=> b!4439341 (= (= lt!1635712 lt!1635437) (= lambda!156934 lambda!156933))))

(assert (=> bs!763902 (= (= lt!1635712 lt!1635437) (= lambda!156934 lambda!156932))))

(assert (=> bs!763903 (= (= lt!1635712 lt!1635686) (= lambda!156934 lambda!156931))))

(assert (=> bs!763900 (= (= lt!1635712 (+!1197 lt!1635437 lt!1635442)) (= lambda!156934 lambda!156929))))

(assert (=> bs!763904 (not (= lambda!156934 lambda!156852))))

(assert (=> b!4439341 true))

(declare-fun bs!763905 () Bool)

(declare-fun d!1347628 () Bool)

(assert (= bs!763905 (and d!1347628 b!4439328)))

(declare-fun lt!1635719 () ListMap!2869)

(declare-fun lambda!156935 () Int)

(assert (=> bs!763905 (= (= lt!1635719 lt!1635679) (= lambda!156935 lambda!156930))))

(declare-fun bs!763906 () Bool)

(assert (= bs!763906 (and d!1347628 b!4439330)))

(assert (=> bs!763906 (= (= lt!1635719 (+!1197 lt!1635437 lt!1635442)) (= lambda!156935 lambda!156928))))

(declare-fun bs!763907 () Bool)

(assert (= bs!763907 (and d!1347628 b!4439341)))

(assert (=> bs!763907 (= (= lt!1635719 lt!1635712) (= lambda!156935 lambda!156934))))

(assert (=> bs!763907 (= (= lt!1635719 lt!1635437) (= lambda!156935 lambda!156933))))

(declare-fun bs!763908 () Bool)

(assert (= bs!763908 (and d!1347628 b!4439343)))

(assert (=> bs!763908 (= (= lt!1635719 lt!1635437) (= lambda!156935 lambda!156932))))

(declare-fun bs!763909 () Bool)

(assert (= bs!763909 (and d!1347628 d!1347598)))

(assert (=> bs!763909 (= (= lt!1635719 lt!1635686) (= lambda!156935 lambda!156931))))

(assert (=> bs!763905 (= (= lt!1635719 (+!1197 lt!1635437 lt!1635442)) (= lambda!156935 lambda!156929))))

(declare-fun bs!763910 () Bool)

(assert (= bs!763910 (and d!1347628 d!1347564)))

(assert (=> bs!763910 (not (= lambda!156935 lambda!156852))))

(assert (=> d!1347628 true))

(declare-fun c!755609 () Bool)

(declare-fun bm!308938 () Bool)

(declare-fun call!308945 () Bool)

(assert (=> bm!308938 (= call!308945 (forall!9681 (ite c!755609 (toList!3626 lt!1635437) newBucket!194) (ite c!755609 lambda!156932 lambda!156934)))))

(declare-fun e!2764228 () ListMap!2869)

(assert (=> b!4439341 (= e!2764228 lt!1635712)))

(declare-fun lt!1635715 () ListMap!2869)

(assert (=> b!4439341 (= lt!1635715 (+!1197 lt!1635437 (h!55469 newBucket!194)))))

(assert (=> b!4439341 (= lt!1635712 (addToMapMapFromBucket!437 (t!356818 newBucket!194) (+!1197 lt!1635437 (h!55469 newBucket!194))))))

(declare-fun lt!1635707 () Unit!83762)

(declare-fun call!308943 () Unit!83762)

(assert (=> b!4439341 (= lt!1635707 call!308943)))

(assert (=> b!4439341 (forall!9681 (toList!3626 lt!1635437) lambda!156933)))

(declare-fun lt!1635704 () Unit!83762)

(assert (=> b!4439341 (= lt!1635704 lt!1635707)))

(assert (=> b!4439341 (forall!9681 (toList!3626 lt!1635715) lambda!156934)))

(declare-fun lt!1635720 () Unit!83762)

(declare-fun Unit!83801 () Unit!83762)

(assert (=> b!4439341 (= lt!1635720 Unit!83801)))

(assert (=> b!4439341 (forall!9681 (t!356818 newBucket!194) lambda!156934)))

(declare-fun lt!1635711 () Unit!83762)

(declare-fun Unit!83802 () Unit!83762)

(assert (=> b!4439341 (= lt!1635711 Unit!83802)))

(declare-fun lt!1635701 () Unit!83762)

(declare-fun Unit!83803 () Unit!83762)

(assert (=> b!4439341 (= lt!1635701 Unit!83803)))

(declare-fun lt!1635714 () Unit!83762)

(assert (=> b!4439341 (= lt!1635714 (forallContained!2139 (toList!3626 lt!1635715) lambda!156934 (h!55469 newBucket!194)))))

(assert (=> b!4439341 (contains!12312 lt!1635715 (_1!28121 (h!55469 newBucket!194)))))

(declare-fun lt!1635713 () Unit!83762)

(declare-fun Unit!83804 () Unit!83762)

(assert (=> b!4439341 (= lt!1635713 Unit!83804)))

(assert (=> b!4439341 (contains!12312 lt!1635712 (_1!28121 (h!55469 newBucket!194)))))

(declare-fun lt!1635717 () Unit!83762)

(declare-fun Unit!83805 () Unit!83762)

(assert (=> b!4439341 (= lt!1635717 Unit!83805)))

(assert (=> b!4439341 (forall!9681 newBucket!194 lambda!156934)))

(declare-fun lt!1635706 () Unit!83762)

(declare-fun Unit!83806 () Unit!83762)

(assert (=> b!4439341 (= lt!1635706 Unit!83806)))

(assert (=> b!4439341 (forall!9681 (toList!3626 lt!1635715) lambda!156934)))

(declare-fun lt!1635708 () Unit!83762)

(declare-fun Unit!83807 () Unit!83762)

(assert (=> b!4439341 (= lt!1635708 Unit!83807)))

(declare-fun lt!1635705 () Unit!83762)

(declare-fun Unit!83808 () Unit!83762)

(assert (=> b!4439341 (= lt!1635705 Unit!83808)))

(declare-fun lt!1635702 () Unit!83762)

(assert (=> b!4439341 (= lt!1635702 (addForallContainsKeyThenBeforeAdding!203 lt!1635437 lt!1635712 (_1!28121 (h!55469 newBucket!194)) (_2!28121 (h!55469 newBucket!194))))))

(assert (=> b!4439341 (forall!9681 (toList!3626 lt!1635437) lambda!156934)))

(declare-fun lt!1635718 () Unit!83762)

(assert (=> b!4439341 (= lt!1635718 lt!1635702)))

(assert (=> b!4439341 (forall!9681 (toList!3626 lt!1635437) lambda!156934)))

(declare-fun lt!1635703 () Unit!83762)

(declare-fun Unit!83809 () Unit!83762)

(assert (=> b!4439341 (= lt!1635703 Unit!83809)))

(declare-fun res!1837727 () Bool)

(assert (=> b!4439341 (= res!1837727 call!308945)))

(declare-fun e!2764227 () Bool)

(assert (=> b!4439341 (=> (not res!1837727) (not e!2764227))))

(assert (=> b!4439341 e!2764227))

(declare-fun lt!1635710 () Unit!83762)

(declare-fun Unit!83810 () Unit!83762)

(assert (=> b!4439341 (= lt!1635710 Unit!83810)))

(declare-fun b!4439342 () Bool)

(declare-fun e!2764229 () Bool)

(assert (=> b!4439342 (= e!2764229 (invariantList!836 (toList!3626 lt!1635719)))))

(declare-fun call!308944 () Bool)

(declare-fun bm!308939 () Bool)

(assert (=> bm!308939 (= call!308944 (forall!9681 (toList!3626 lt!1635437) (ite c!755609 lambda!156932 lambda!156934)))))

(assert (=> b!4439343 (= e!2764228 lt!1635437)))

(declare-fun lt!1635709 () Unit!83762)

(assert (=> b!4439343 (= lt!1635709 call!308943)))

(assert (=> b!4439343 call!308944))

(declare-fun lt!1635700 () Unit!83762)

(assert (=> b!4439343 (= lt!1635700 lt!1635709)))

(assert (=> b!4439343 call!308945))

(declare-fun lt!1635716 () Unit!83762)

(declare-fun Unit!83811 () Unit!83762)

(assert (=> b!4439343 (= lt!1635716 Unit!83811)))

(declare-fun bm!308940 () Bool)

(assert (=> bm!308940 (= call!308943 (lemmaContainsAllItsOwnKeys!203 lt!1635437))))

(declare-fun b!4439344 () Bool)

(declare-fun res!1837728 () Bool)

(assert (=> b!4439344 (=> (not res!1837728) (not e!2764229))))

(assert (=> b!4439344 (= res!1837728 (forall!9681 (toList!3626 lt!1635437) lambda!156935))))

(declare-fun b!4439340 () Bool)

(assert (=> b!4439340 (= e!2764227 call!308944)))

(assert (=> d!1347628 e!2764229))

(declare-fun res!1837726 () Bool)

(assert (=> d!1347628 (=> (not res!1837726) (not e!2764229))))

(assert (=> d!1347628 (= res!1837726 (forall!9681 newBucket!194 lambda!156935))))

(assert (=> d!1347628 (= lt!1635719 e!2764228)))

(assert (=> d!1347628 (= c!755609 ((_ is Nil!49752) newBucket!194))))

(assert (=> d!1347628 (noDuplicateKeys!819 newBucket!194)))

(assert (=> d!1347628 (= (addToMapMapFromBucket!437 newBucket!194 lt!1635437) lt!1635719)))

(assert (= (and d!1347628 c!755609) b!4439343))

(assert (= (and d!1347628 (not c!755609)) b!4439341))

(assert (= (and b!4439341 res!1837727) b!4439340))

(assert (= (or b!4439343 b!4439341) bm!308940))

(assert (= (or b!4439343 b!4439341) bm!308938))

(assert (= (or b!4439343 b!4439340) bm!308939))

(assert (= (and d!1347628 res!1837726) b!4439344))

(assert (= (and b!4439344 res!1837728) b!4439342))

(declare-fun m!5127877 () Bool)

(assert (=> b!4439342 m!5127877))

(declare-fun m!5127879 () Bool)

(assert (=> b!4439341 m!5127879))

(declare-fun m!5127881 () Bool)

(assert (=> b!4439341 m!5127881))

(declare-fun m!5127883 () Bool)

(assert (=> b!4439341 m!5127883))

(declare-fun m!5127885 () Bool)

(assert (=> b!4439341 m!5127885))

(declare-fun m!5127887 () Bool)

(assert (=> b!4439341 m!5127887))

(declare-fun m!5127889 () Bool)

(assert (=> b!4439341 m!5127889))

(assert (=> b!4439341 m!5127889))

(declare-fun m!5127891 () Bool)

(assert (=> b!4439341 m!5127891))

(declare-fun m!5127893 () Bool)

(assert (=> b!4439341 m!5127893))

(declare-fun m!5127895 () Bool)

(assert (=> b!4439341 m!5127895))

(assert (=> b!4439341 m!5127883))

(declare-fun m!5127897 () Bool)

(assert (=> b!4439341 m!5127897))

(declare-fun m!5127899 () Bool)

(assert (=> b!4439341 m!5127899))

(assert (=> b!4439341 m!5127887))

(declare-fun m!5127901 () Bool)

(assert (=> d!1347628 m!5127901))

(assert (=> d!1347628 m!5127559))

(declare-fun m!5127903 () Bool)

(assert (=> b!4439344 m!5127903))

(declare-fun m!5127905 () Bool)

(assert (=> bm!308939 m!5127905))

(declare-fun m!5127907 () Bool)

(assert (=> bm!308938 m!5127907))

(declare-fun m!5127909 () Bool)

(assert (=> bm!308940 m!5127909))

(assert (=> b!4439145 d!1347628))

(declare-fun bs!763911 () Bool)

(declare-fun d!1347630 () Bool)

(assert (= bs!763911 (and d!1347630 start!434188)))

(declare-fun lambda!156938 () Int)

(assert (=> bs!763911 (= lambda!156938 lambda!156846)))

(declare-fun bs!763912 () Bool)

(assert (= bs!763912 (and d!1347630 d!1347556)))

(assert (=> bs!763912 (not (= lambda!156938 lambda!156849))))

(declare-fun lt!1635723 () ListMap!2869)

(assert (=> d!1347630 (invariantList!836 (toList!3626 lt!1635723))))

(declare-fun e!2764232 () ListMap!2869)

(assert (=> d!1347630 (= lt!1635723 e!2764232)))

(declare-fun c!755612 () Bool)

(assert (=> d!1347630 (= c!755612 ((_ is Cons!49753) (toList!3625 lt!1635445)))))

(assert (=> d!1347630 (forall!9679 (toList!3625 lt!1635445) lambda!156938)))

(assert (=> d!1347630 (= (extractMap!880 (toList!3625 lt!1635445)) lt!1635723)))

(declare-fun b!4439349 () Bool)

(assert (=> b!4439349 (= e!2764232 (addToMapMapFromBucket!437 (_2!28122 (h!55470 (toList!3625 lt!1635445))) (extractMap!880 (t!356819 (toList!3625 lt!1635445)))))))

(declare-fun b!4439350 () Bool)

(assert (=> b!4439350 (= e!2764232 (ListMap!2870 Nil!49752))))

(assert (= (and d!1347630 c!755612) b!4439349))

(assert (= (and d!1347630 (not c!755612)) b!4439350))

(declare-fun m!5127911 () Bool)

(assert (=> d!1347630 m!5127911))

(declare-fun m!5127913 () Bool)

(assert (=> d!1347630 m!5127913))

(declare-fun m!5127915 () Bool)

(assert (=> b!4439349 m!5127915))

(assert (=> b!4439349 m!5127915))

(declare-fun m!5127917 () Bool)

(assert (=> b!4439349 m!5127917))

(assert (=> b!4439145 d!1347630))

(declare-fun bs!763913 () Bool)

(declare-fun d!1347632 () Bool)

(assert (= bs!763913 (and d!1347632 start!434188)))

(declare-fun lambda!156939 () Int)

(assert (=> bs!763913 (= lambda!156939 lambda!156846)))

(declare-fun bs!763914 () Bool)

(assert (= bs!763914 (and d!1347632 d!1347556)))

(assert (=> bs!763914 (not (= lambda!156939 lambda!156849))))

(declare-fun bs!763915 () Bool)

(assert (= bs!763915 (and d!1347632 d!1347630)))

(assert (=> bs!763915 (= lambda!156939 lambda!156938)))

(declare-fun lt!1635724 () ListMap!2869)

(assert (=> d!1347632 (invariantList!836 (toList!3626 lt!1635724))))

(declare-fun e!2764233 () ListMap!2869)

(assert (=> d!1347632 (= lt!1635724 e!2764233)))

(declare-fun c!755613 () Bool)

(assert (=> d!1347632 (= c!755613 ((_ is Cons!49753) (t!356819 (toList!3625 lm!1616))))))

(assert (=> d!1347632 (forall!9679 (t!356819 (toList!3625 lm!1616)) lambda!156939)))

(assert (=> d!1347632 (= (extractMap!880 (t!356819 (toList!3625 lm!1616))) lt!1635724)))

(declare-fun b!4439351 () Bool)

(assert (=> b!4439351 (= e!2764233 (addToMapMapFromBucket!437 (_2!28122 (h!55470 (t!356819 (toList!3625 lm!1616)))) (extractMap!880 (t!356819 (t!356819 (toList!3625 lm!1616))))))))

(declare-fun b!4439352 () Bool)

(assert (=> b!4439352 (= e!2764233 (ListMap!2870 Nil!49752))))

(assert (= (and d!1347632 c!755613) b!4439351))

(assert (= (and d!1347632 (not c!755613)) b!4439352))

(declare-fun m!5127919 () Bool)

(assert (=> d!1347632 m!5127919))

(declare-fun m!5127921 () Bool)

(assert (=> d!1347632 m!5127921))

(declare-fun m!5127923 () Bool)

(assert (=> b!4439351 m!5127923))

(assert (=> b!4439351 m!5127923))

(declare-fun m!5127925 () Bool)

(assert (=> b!4439351 m!5127925))

(assert (=> b!4439145 d!1347632))

(declare-fun b!4439371 () Bool)

(declare-datatypes ((List!49879 0))(
  ( (Nil!49755) (Cons!49755 (h!55474 K!11120) (t!356821 List!49879)) )
))
(declare-fun e!2764250 () List!49879)

(declare-fun keys!17033 (ListMap!2869) List!49879)

(assert (=> b!4439371 (= e!2764250 (keys!17033 (extractMap!880 (toList!3625 lm!1616))))))

(declare-fun b!4439372 () Bool)

(declare-fun e!2764247 () Unit!83762)

(declare-fun e!2764246 () Unit!83762)

(assert (=> b!4439372 (= e!2764247 e!2764246)))

(declare-fun c!755622 () Bool)

(declare-fun call!308948 () Bool)

(assert (=> b!4439372 (= c!755622 call!308948)))

(declare-fun b!4439373 () Bool)

(declare-fun getKeysList!283 (List!49876) List!49879)

(assert (=> b!4439373 (= e!2764250 (getKeysList!283 (toList!3626 (extractMap!880 (toList!3625 lm!1616)))))))

(declare-fun bm!308943 () Bool)

(declare-fun contains!12318 (List!49879 K!11120) Bool)

(assert (=> bm!308943 (= call!308948 (contains!12318 e!2764250 key!3717))))

(declare-fun c!755620 () Bool)

(declare-fun c!755621 () Bool)

(assert (=> bm!308943 (= c!755620 c!755621)))

(declare-fun b!4439375 () Bool)

(declare-fun lt!1635743 () Unit!83762)

(assert (=> b!4439375 (= e!2764247 lt!1635743)))

(declare-fun lt!1635742 () Unit!83762)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!683 (List!49876 K!11120) Unit!83762)

(assert (=> b!4439375 (= lt!1635742 (lemmaContainsKeyImpliesGetValueByKeyDefined!683 (toList!3626 (extractMap!880 (toList!3625 lm!1616))) key!3717))))

(declare-fun isDefined!8080 (Option!10788) Bool)

(assert (=> b!4439375 (isDefined!8080 (getValueByKey!774 (toList!3626 (extractMap!880 (toList!3625 lm!1616))) key!3717))))

(declare-fun lt!1635746 () Unit!83762)

(assert (=> b!4439375 (= lt!1635746 lt!1635742)))

(declare-fun lemmaInListThenGetKeysListContains!280 (List!49876 K!11120) Unit!83762)

(assert (=> b!4439375 (= lt!1635743 (lemmaInListThenGetKeysListContains!280 (toList!3626 (extractMap!880 (toList!3625 lm!1616))) key!3717))))

(assert (=> b!4439375 call!308948))

(declare-fun b!4439376 () Bool)

(declare-fun e!2764248 () Bool)

(declare-fun e!2764251 () Bool)

(assert (=> b!4439376 (= e!2764248 e!2764251)))

(declare-fun res!1837736 () Bool)

(assert (=> b!4439376 (=> (not res!1837736) (not e!2764251))))

(assert (=> b!4439376 (= res!1837736 (isDefined!8080 (getValueByKey!774 (toList!3626 (extractMap!880 (toList!3625 lm!1616))) key!3717)))))

(declare-fun b!4439377 () Bool)

(declare-fun e!2764249 () Bool)

(assert (=> b!4439377 (= e!2764249 (not (contains!12318 (keys!17033 (extractMap!880 (toList!3625 lm!1616))) key!3717)))))

(declare-fun b!4439374 () Bool)

(declare-fun Unit!83812 () Unit!83762)

(assert (=> b!4439374 (= e!2764246 Unit!83812)))

(declare-fun d!1347634 () Bool)

(assert (=> d!1347634 e!2764248))

(declare-fun res!1837737 () Bool)

(assert (=> d!1347634 (=> res!1837737 e!2764248)))

(assert (=> d!1347634 (= res!1837737 e!2764249)))

(declare-fun res!1837735 () Bool)

(assert (=> d!1347634 (=> (not res!1837735) (not e!2764249))))

(declare-fun lt!1635744 () Bool)

(assert (=> d!1347634 (= res!1837735 (not lt!1635744))))

(declare-fun lt!1635748 () Bool)

(assert (=> d!1347634 (= lt!1635744 lt!1635748)))

(declare-fun lt!1635747 () Unit!83762)

(assert (=> d!1347634 (= lt!1635747 e!2764247)))

(assert (=> d!1347634 (= c!755621 lt!1635748)))

(declare-fun containsKey!1223 (List!49876 K!11120) Bool)

(assert (=> d!1347634 (= lt!1635748 (containsKey!1223 (toList!3626 (extractMap!880 (toList!3625 lm!1616))) key!3717))))

(assert (=> d!1347634 (= (contains!12312 (extractMap!880 (toList!3625 lm!1616)) key!3717) lt!1635744)))

(declare-fun b!4439378 () Bool)

(assert (=> b!4439378 (= e!2764251 (contains!12318 (keys!17033 (extractMap!880 (toList!3625 lm!1616))) key!3717))))

(declare-fun b!4439379 () Bool)

(assert (=> b!4439379 false))

(declare-fun lt!1635741 () Unit!83762)

(declare-fun lt!1635745 () Unit!83762)

(assert (=> b!4439379 (= lt!1635741 lt!1635745)))

(assert (=> b!4439379 (containsKey!1223 (toList!3626 (extractMap!880 (toList!3625 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!281 (List!49876 K!11120) Unit!83762)

(assert (=> b!4439379 (= lt!1635745 (lemmaInGetKeysListThenContainsKey!281 (toList!3626 (extractMap!880 (toList!3625 lm!1616))) key!3717))))

(declare-fun Unit!83813 () Unit!83762)

(assert (=> b!4439379 (= e!2764246 Unit!83813)))

(assert (= (and d!1347634 c!755621) b!4439375))

(assert (= (and d!1347634 (not c!755621)) b!4439372))

(assert (= (and b!4439372 c!755622) b!4439379))

(assert (= (and b!4439372 (not c!755622)) b!4439374))

(assert (= (or b!4439375 b!4439372) bm!308943))

(assert (= (and bm!308943 c!755620) b!4439373))

(assert (= (and bm!308943 (not c!755620)) b!4439371))

(assert (= (and d!1347634 res!1837735) b!4439377))

(assert (= (and d!1347634 (not res!1837737)) b!4439376))

(assert (= (and b!4439376 res!1837736) b!4439378))

(assert (=> b!4439371 m!5127595))

(declare-fun m!5127927 () Bool)

(assert (=> b!4439371 m!5127927))

(assert (=> b!4439378 m!5127595))

(assert (=> b!4439378 m!5127927))

(assert (=> b!4439378 m!5127927))

(declare-fun m!5127929 () Bool)

(assert (=> b!4439378 m!5127929))

(declare-fun m!5127931 () Bool)

(assert (=> b!4439373 m!5127931))

(declare-fun m!5127933 () Bool)

(assert (=> b!4439375 m!5127933))

(declare-fun m!5127935 () Bool)

(assert (=> b!4439375 m!5127935))

(assert (=> b!4439375 m!5127935))

(declare-fun m!5127937 () Bool)

(assert (=> b!4439375 m!5127937))

(declare-fun m!5127939 () Bool)

(assert (=> b!4439375 m!5127939))

(declare-fun m!5127941 () Bool)

(assert (=> bm!308943 m!5127941))

(declare-fun m!5127943 () Bool)

(assert (=> d!1347634 m!5127943))

(assert (=> b!4439376 m!5127935))

(assert (=> b!4439376 m!5127935))

(assert (=> b!4439376 m!5127937))

(assert (=> b!4439377 m!5127595))

(assert (=> b!4439377 m!5127927))

(assert (=> b!4439377 m!5127927))

(assert (=> b!4439377 m!5127929))

(assert (=> b!4439379 m!5127943))

(declare-fun m!5127945 () Bool)

(assert (=> b!4439379 m!5127945))

(assert (=> b!4439136 d!1347634))

(declare-fun bs!763916 () Bool)

(declare-fun d!1347636 () Bool)

(assert (= bs!763916 (and d!1347636 start!434188)))

(declare-fun lambda!156940 () Int)

(assert (=> bs!763916 (= lambda!156940 lambda!156846)))

(declare-fun bs!763917 () Bool)

(assert (= bs!763917 (and d!1347636 d!1347556)))

(assert (=> bs!763917 (not (= lambda!156940 lambda!156849))))

(declare-fun bs!763918 () Bool)

(assert (= bs!763918 (and d!1347636 d!1347630)))

(assert (=> bs!763918 (= lambda!156940 lambda!156938)))

(declare-fun bs!763919 () Bool)

(assert (= bs!763919 (and d!1347636 d!1347632)))

(assert (=> bs!763919 (= lambda!156940 lambda!156939)))

(declare-fun lt!1635749 () ListMap!2869)

(assert (=> d!1347636 (invariantList!836 (toList!3626 lt!1635749))))

(declare-fun e!2764252 () ListMap!2869)

(assert (=> d!1347636 (= lt!1635749 e!2764252)))

(declare-fun c!755623 () Bool)

(assert (=> d!1347636 (= c!755623 ((_ is Cons!49753) (toList!3625 lm!1616)))))

(assert (=> d!1347636 (forall!9679 (toList!3625 lm!1616) lambda!156940)))

(assert (=> d!1347636 (= (extractMap!880 (toList!3625 lm!1616)) lt!1635749)))

(declare-fun b!4439380 () Bool)

(assert (=> b!4439380 (= e!2764252 (addToMapMapFromBucket!437 (_2!28122 (h!55470 (toList!3625 lm!1616))) (extractMap!880 (t!356819 (toList!3625 lm!1616)))))))

(declare-fun b!4439381 () Bool)

(assert (=> b!4439381 (= e!2764252 (ListMap!2870 Nil!49752))))

(assert (= (and d!1347636 c!755623) b!4439380))

(assert (= (and d!1347636 (not c!755623)) b!4439381))

(declare-fun m!5127947 () Bool)

(assert (=> d!1347636 m!5127947))

(declare-fun m!5127949 () Bool)

(assert (=> d!1347636 m!5127949))

(assert (=> b!4439380 m!5127589))

(assert (=> b!4439380 m!5127589))

(declare-fun m!5127951 () Bool)

(assert (=> b!4439380 m!5127951))

(assert (=> b!4439136 d!1347636))

(declare-fun b!4439386 () Bool)

(declare-fun tp!1333998 () Bool)

(declare-fun e!2764255 () Bool)

(assert (=> b!4439386 (= e!2764255 (and tp_is_empty!26523 tp_is_empty!26521 tp!1333998))))

(assert (=> b!4439150 (= tp!1333985 e!2764255)))

(assert (= (and b!4439150 ((_ is Cons!49752) (t!356818 newBucket!194))) b!4439386))

(declare-fun b!4439391 () Bool)

(declare-fun e!2764258 () Bool)

(declare-fun tp!1334003 () Bool)

(declare-fun tp!1334004 () Bool)

(assert (=> b!4439391 (= e!2764258 (and tp!1334003 tp!1334004))))

(assert (=> b!4439147 (= tp!1333986 e!2764258)))

(assert (= (and b!4439147 ((_ is Cons!49753) (toList!3625 lm!1616))) b!4439391))

(declare-fun b_lambda!144915 () Bool)

(assert (= b_lambda!144903 (or start!434188 b_lambda!144915)))

(declare-fun bs!763920 () Bool)

(declare-fun d!1347638 () Bool)

(assert (= bs!763920 (and d!1347638 start!434188)))

(assert (=> bs!763920 (= (dynLambda!20901 lambda!156846 (tuple2!49657 hash!366 newBucket!194)) (noDuplicateKeys!819 (_2!28122 (tuple2!49657 hash!366 newBucket!194))))))

(declare-fun m!5127953 () Bool)

(assert (=> bs!763920 m!5127953))

(assert (=> b!4439232 d!1347638))

(declare-fun b_lambda!144917 () Bool)

(assert (= b_lambda!144899 (or start!434188 b_lambda!144917)))

(declare-fun bs!763921 () Bool)

(declare-fun d!1347640 () Bool)

(assert (= bs!763921 (and d!1347640 start!434188)))

(assert (=> bs!763921 (= (dynLambda!20901 lambda!156846 (h!55470 (toList!3625 lt!1635445))) (noDuplicateKeys!819 (_2!28122 (h!55470 (toList!3625 lt!1635445)))))))

(declare-fun m!5127955 () Bool)

(assert (=> bs!763921 m!5127955))

(assert (=> b!4439197 d!1347640))

(declare-fun b_lambda!144919 () Bool)

(assert (= b_lambda!144897 (or start!434188 b_lambda!144919)))

(declare-fun bs!763922 () Bool)

(declare-fun d!1347642 () Bool)

(assert (= bs!763922 (and d!1347642 start!434188)))

(assert (=> bs!763922 (= (dynLambda!20901 lambda!156846 (h!55470 (toList!3625 lm!1616))) (noDuplicateKeys!819 (_2!28122 (h!55470 (toList!3625 lm!1616)))))))

(declare-fun m!5127957 () Bool)

(assert (=> bs!763922 m!5127957))

(assert (=> b!4439156 d!1347642))

(check-sat tp_is_empty!26523 (not b!4439192) (not b!4439198) (not b!4439377) (not d!1347588) (not b!4439380) (not bm!308939) (not d!1347556) (not bm!308936) (not bm!308938) (not bs!763920) (not d!1347598) (not b!4439338) (not bs!763922) (not b!4439241) (not b!4439227) (not d!1347636) (not bm!308940) (not b!4439379) (not b!4439191) (not b!4439376) (not b!4439239) (not b!4439373) (not b!4439375) (not b!4439247) (not d!1347568) (not b!4439351) (not b!4439349) (not b!4439378) (not b!4439228) (not b!4439329) (not bm!308937) (not d!1347634) (not bm!308943) (not d!1347564) (not d!1347552) (not d!1347632) (not b_lambda!144919) (not b_lambda!144917) (not b_lambda!144915) (not b!4439391) (not d!1347630) (not b!4439342) (not b!4439371) (not d!1347590) (not b!4439331) (not d!1347554) tp_is_empty!26521 (not b!4439344) (not d!1347626) (not d!1347628) (not b!4439157) (not b!4439341) (not b!4439386) (not bm!308935) (not d!1347594) (not b!4439328) (not bs!763921) (not b!4439339))
(check-sat)
