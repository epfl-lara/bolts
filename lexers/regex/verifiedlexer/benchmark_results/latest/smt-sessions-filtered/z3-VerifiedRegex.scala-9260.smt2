; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!491398 () Bool)

(assert start!491398)

(declare-fun b!4782974 () Bool)

(declare-fun e!2986160 () Bool)

(declare-datatypes ((K!15589 0))(
  ( (K!15590 (val!20777 Int)) )
))
(declare-datatypes ((V!15835 0))(
  ( (V!15836 (val!20778 Int)) )
))
(declare-datatypes ((tuple2!56528 0))(
  ( (tuple2!56529 (_1!31558 K!15589) (_2!31558 V!15835)) )
))
(declare-datatypes ((Option!12956 0))(
  ( (None!12955) (Some!12955 (v!48182 tuple2!56528)) )
))
(declare-fun lt!1945163 () Option!12956)

(declare-fun v!11584 () V!15835)

(declare-fun get!18380 (Option!12956) tuple2!56528)

(assert (=> b!4782974 (= e!2986160 (= (_2!31558 (get!18380 lt!1945163)) v!11584))))

(declare-fun isDefined!10099 (Option!12956) Bool)

(assert (=> b!4782974 (isDefined!10099 lt!1945163)))

(declare-datatypes ((List!54149 0))(
  ( (Nil!54025) (Cons!54025 (h!60445 tuple2!56528) (t!361599 List!54149)) )
))
(declare-fun lt!1945167 () List!54149)

(declare-fun key!6641 () K!15589)

(declare-fun getPair!812 (List!54149 K!15589) Option!12956)

(assert (=> b!4782974 (= lt!1945163 (getPair!812 lt!1945167 key!6641))))

(declare-fun lambda!228601 () Int)

(declare-datatypes ((tuple2!56530 0))(
  ( (tuple2!56531 (_1!31559 (_ BitVec 64)) (_2!31559 List!54149)) )
))
(declare-datatypes ((List!54150 0))(
  ( (Nil!54026) (Cons!54026 (h!60446 tuple2!56530) (t!361600 List!54150)) )
))
(declare-datatypes ((ListLongMap!5181 0))(
  ( (ListLongMap!5182 (toList!6759 List!54150)) )
))
(declare-fun lt!1945162 () ListLongMap!5181)

(declare-datatypes ((Unit!139346 0))(
  ( (Unit!139347) )
))
(declare-fun lt!1945174 () Unit!139346)

(declare-fun lt!1945157 () tuple2!56530)

(declare-fun forallContained!4080 (List!54150 Int tuple2!56530) Unit!139346)

(assert (=> b!4782974 (= lt!1945174 (forallContained!4080 (toList!6759 lt!1945162) lambda!228601 lt!1945157))))

(declare-datatypes ((Hashable!6840 0))(
  ( (HashableExt!6839 (__x!32863 Int)) )
))
(declare-fun hashF!1687 () Hashable!6840)

(declare-fun lt!1945169 () Unit!139346)

(declare-fun lemmaInGenMapThenGetPairDefined!586 (ListLongMap!5181 K!15589 Hashable!6840) Unit!139346)

(assert (=> b!4782974 (= lt!1945169 (lemmaInGenMapThenGetPairDefined!586 lt!1945162 key!6641 hashF!1687))))

(declare-fun lt!1945165 () Unit!139346)

(assert (=> b!4782974 (= lt!1945165 (forallContained!4080 (toList!6759 lt!1945162) lambda!228601 lt!1945157))))

(declare-fun contains!17574 (List!54150 tuple2!56530) Bool)

(assert (=> b!4782974 (contains!17574 (toList!6759 lt!1945162) lt!1945157)))

(declare-fun lt!1945161 () (_ BitVec 64))

(assert (=> b!4782974 (= lt!1945157 (tuple2!56531 lt!1945161 lt!1945167))))

(declare-fun lt!1945160 () Unit!139346)

(declare-fun lemmaGetValueImpliesTupleContained!619 (ListLongMap!5181 (_ BitVec 64) List!54149) Unit!139346)

(assert (=> b!4782974 (= lt!1945160 (lemmaGetValueImpliesTupleContained!619 lt!1945162 lt!1945161 lt!1945167))))

(declare-fun apply!12895 (ListLongMap!5181 (_ BitVec 64)) List!54149)

(assert (=> b!4782974 (= lt!1945167 (apply!12895 lt!1945162 lt!1945161))))

(declare-fun contains!17575 (ListLongMap!5181 (_ BitVec 64)) Bool)

(assert (=> b!4782974 (contains!17575 lt!1945162 lt!1945161)))

(declare-fun lt!1945170 () Unit!139346)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1036 (ListLongMap!5181 K!15589 Hashable!6840) Unit!139346)

(assert (=> b!4782974 (= lt!1945170 (lemmaInGenMapThenLongMapContainsHash!1036 lt!1945162 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6231 0))(
  ( (ListMap!6232 (toList!6760 List!54149)) )
))
(declare-fun contains!17576 (ListMap!6231 K!15589) Bool)

(declare-fun extractMap!2367 (List!54150) ListMap!6231)

(assert (=> b!4782974 (contains!17576 (extractMap!2367 (toList!6759 lt!1945162)) key!6641)))

(declare-fun lt!1945176 () Unit!139346)

(declare-fun lemmaListContainsThenExtractedMapContains!688 (ListLongMap!5181 K!15589 Hashable!6840) Unit!139346)

(assert (=> b!4782974 (= lt!1945176 (lemmaListContainsThenExtractedMapContains!688 lt!1945162 key!6641 hashF!1687))))

(declare-fun b!4782975 () Bool)

(declare-fun e!2986156 () Bool)

(assert (=> b!4782975 (= e!2986156 e!2986160)))

(declare-fun res!2031162 () Bool)

(assert (=> b!4782975 (=> res!2031162 e!2986160)))

(declare-fun forall!12136 (List!54150 Int) Bool)

(assert (=> b!4782975 (= res!2031162 (not (forall!12136 (toList!6759 lt!1945162) lambda!228601)))))

(declare-fun lm!2709 () ListLongMap!5181)

(declare-fun tail!9200 (ListLongMap!5181) ListLongMap!5181)

(assert (=> b!4782975 (= lt!1945162 (tail!9200 lm!2709))))

(declare-fun containsKeyBiggerList!496 (List!54150 K!15589) Bool)

(declare-fun tail!9201 (List!54150) List!54150)

(assert (=> b!4782975 (containsKeyBiggerList!496 (tail!9201 (toList!6759 lm!2709)) key!6641)))

(declare-fun lt!1945175 () Unit!139346)

(declare-fun lemmaInBiggerListButNotHeadThenTail!20 (ListLongMap!5181 K!15589 Hashable!6840) Unit!139346)

(assert (=> b!4782975 (= lt!1945175 (lemmaInBiggerListButNotHeadThenTail!20 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4782976 () Bool)

(declare-fun res!2031165 () Bool)

(declare-fun e!2986157 () Bool)

(assert (=> b!4782976 (=> (not res!2031165) (not e!2986157))))

(assert (=> b!4782976 (= res!2031165 (containsKeyBiggerList!496 (toList!6759 lm!2709) key!6641))))

(declare-fun b!4782977 () Bool)

(declare-fun e!2986159 () Bool)

(assert (=> b!4782977 (= e!2986157 (not e!2986159))))

(declare-fun res!2031169 () Bool)

(assert (=> b!4782977 (=> res!2031169 e!2986159)))

(declare-fun lt!1945173 () Option!12956)

(assert (=> b!4782977 (= res!2031169 (not (= (_2!31558 (get!18380 lt!1945173)) v!11584)))))

(assert (=> b!4782977 (isDefined!10099 lt!1945173)))

(declare-fun lt!1945158 () List!54149)

(assert (=> b!4782977 (= lt!1945173 (getPair!812 lt!1945158 key!6641))))

(declare-fun lt!1945164 () Unit!139346)

(declare-fun lt!1945171 () tuple2!56530)

(assert (=> b!4782977 (= lt!1945164 (forallContained!4080 (toList!6759 lm!2709) lambda!228601 lt!1945171))))

(declare-fun lt!1945159 () Unit!139346)

(assert (=> b!4782977 (= lt!1945159 (lemmaInGenMapThenGetPairDefined!586 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1945166 () Unit!139346)

(assert (=> b!4782977 (= lt!1945166 (forallContained!4080 (toList!6759 lm!2709) lambda!228601 lt!1945171))))

(assert (=> b!4782977 (contains!17574 (toList!6759 lm!2709) lt!1945171)))

(assert (=> b!4782977 (= lt!1945171 (tuple2!56531 lt!1945161 lt!1945158))))

(declare-fun lt!1945177 () Unit!139346)

(assert (=> b!4782977 (= lt!1945177 (lemmaGetValueImpliesTupleContained!619 lm!2709 lt!1945161 lt!1945158))))

(assert (=> b!4782977 (= lt!1945158 (apply!12895 lm!2709 lt!1945161))))

(assert (=> b!4782977 (contains!17575 lm!2709 lt!1945161)))

(declare-fun hash!4841 (Hashable!6840 K!15589) (_ BitVec 64))

(assert (=> b!4782977 (= lt!1945161 (hash!4841 hashF!1687 key!6641))))

(declare-fun lt!1945172 () Unit!139346)

(assert (=> b!4782977 (= lt!1945172 (lemmaInGenMapThenLongMapContainsHash!1036 lm!2709 key!6641 hashF!1687))))

(assert (=> b!4782977 (contains!17576 (extractMap!2367 (toList!6759 lm!2709)) key!6641)))

(declare-fun lt!1945168 () Unit!139346)

(assert (=> b!4782977 (= lt!1945168 (lemmaListContainsThenExtractedMapContains!688 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4782978 () Bool)

(declare-fun res!2031166 () Bool)

(assert (=> b!4782978 (=> res!2031166 e!2986160)))

(declare-fun allKeysSameHashInMap!2245 (ListLongMap!5181 Hashable!6840) Bool)

(assert (=> b!4782978 (= res!2031166 (not (allKeysSameHashInMap!2245 lt!1945162 hashF!1687)))))

(declare-fun res!2031168 () Bool)

(assert (=> start!491398 (=> (not res!2031168) (not e!2986157))))

(assert (=> start!491398 (= res!2031168 (forall!12136 (toList!6759 lm!2709) lambda!228601))))

(assert (=> start!491398 e!2986157))

(declare-fun e!2986158 () Bool)

(declare-fun inv!69615 (ListLongMap!5181) Bool)

(assert (=> start!491398 (and (inv!69615 lm!2709) e!2986158)))

(assert (=> start!491398 true))

(declare-fun tp_is_empty!33261 () Bool)

(assert (=> start!491398 tp_is_empty!33261))

(declare-fun tp_is_empty!33263 () Bool)

(assert (=> start!491398 tp_is_empty!33263))

(declare-fun b!4782973 () Bool)

(declare-fun res!2031163 () Bool)

(assert (=> b!4782973 (=> res!2031163 e!2986159)))

(get-info :version)

(assert (=> b!4782973 (= res!2031163 (or (and ((_ is Cons!54026) (toList!6759 lm!2709)) (= (_1!31559 (h!60446 (toList!6759 lm!2709))) lt!1945161)) (not ((_ is Cons!54026) (toList!6759 lm!2709)))))))

(declare-fun b!4782979 () Bool)

(declare-fun res!2031164 () Bool)

(assert (=> b!4782979 (=> (not res!2031164) (not e!2986157))))

(assert (=> b!4782979 (= res!2031164 (allKeysSameHashInMap!2245 lm!2709 hashF!1687))))

(declare-fun b!4782980 () Bool)

(assert (=> b!4782980 (= e!2986159 e!2986156)))

(declare-fun res!2031170 () Bool)

(assert (=> b!4782980 (=> res!2031170 e!2986156)))

(declare-fun containsKey!3831 (List!54149 K!15589) Bool)

(assert (=> b!4782980 (= res!2031170 (containsKey!3831 (_2!31559 (h!60446 (toList!6759 lm!2709))) key!6641))))

(assert (=> b!4782980 (not (containsKey!3831 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709)))) key!6641))))

(declare-fun lt!1945156 () Unit!139346)

(declare-fun lemmaNotSameHashThenCannotContainKey!194 (ListLongMap!5181 K!15589 (_ BitVec 64) Hashable!6840) Unit!139346)

(assert (=> b!4782980 (= lt!1945156 (lemmaNotSameHashThenCannotContainKey!194 lm!2709 key!6641 (_1!31559 (h!60446 (toList!6759 lm!2709))) hashF!1687))))

(declare-fun b!4782981 () Bool)

(declare-fun tp!1357524 () Bool)

(assert (=> b!4782981 (= e!2986158 tp!1357524)))

(declare-fun b!4782982 () Bool)

(declare-fun res!2031167 () Bool)

(assert (=> b!4782982 (=> res!2031167 e!2986160)))

(assert (=> b!4782982 (= res!2031167 (not (containsKeyBiggerList!496 (toList!6759 lt!1945162) key!6641)))))

(assert (= (and start!491398 res!2031168) b!4782979))

(assert (= (and b!4782979 res!2031164) b!4782976))

(assert (= (and b!4782976 res!2031165) b!4782977))

(assert (= (and b!4782977 (not res!2031169)) b!4782973))

(assert (= (and b!4782973 (not res!2031163)) b!4782980))

(assert (= (and b!4782980 (not res!2031170)) b!4782975))

(assert (= (and b!4782975 (not res!2031162)) b!4782978))

(assert (= (and b!4782978 (not res!2031166)) b!4782982))

(assert (= (and b!4782982 (not res!2031167)) b!4782974))

(assert (= start!491398 b!4782981))

(declare-fun m!5760606 () Bool)

(assert (=> b!4782975 m!5760606))

(declare-fun m!5760608 () Bool)

(assert (=> b!4782975 m!5760608))

(assert (=> b!4782975 m!5760608))

(declare-fun m!5760610 () Bool)

(assert (=> b!4782975 m!5760610))

(declare-fun m!5760612 () Bool)

(assert (=> b!4782975 m!5760612))

(declare-fun m!5760614 () Bool)

(assert (=> b!4782975 m!5760614))

(declare-fun m!5760616 () Bool)

(assert (=> b!4782978 m!5760616))

(declare-fun m!5760618 () Bool)

(assert (=> b!4782979 m!5760618))

(declare-fun m!5760620 () Bool)

(assert (=> start!491398 m!5760620))

(declare-fun m!5760622 () Bool)

(assert (=> start!491398 m!5760622))

(declare-fun m!5760624 () Bool)

(assert (=> b!4782980 m!5760624))

(declare-fun m!5760626 () Bool)

(assert (=> b!4782980 m!5760626))

(assert (=> b!4782980 m!5760626))

(declare-fun m!5760628 () Bool)

(assert (=> b!4782980 m!5760628))

(declare-fun m!5760630 () Bool)

(assert (=> b!4782980 m!5760630))

(declare-fun m!5760632 () Bool)

(assert (=> b!4782982 m!5760632))

(declare-fun m!5760634 () Bool)

(assert (=> b!4782974 m!5760634))

(declare-fun m!5760636 () Bool)

(assert (=> b!4782974 m!5760636))

(assert (=> b!4782974 m!5760636))

(declare-fun m!5760638 () Bool)

(assert (=> b!4782974 m!5760638))

(declare-fun m!5760640 () Bool)

(assert (=> b!4782974 m!5760640))

(declare-fun m!5760642 () Bool)

(assert (=> b!4782974 m!5760642))

(declare-fun m!5760644 () Bool)

(assert (=> b!4782974 m!5760644))

(declare-fun m!5760646 () Bool)

(assert (=> b!4782974 m!5760646))

(declare-fun m!5760648 () Bool)

(assert (=> b!4782974 m!5760648))

(assert (=> b!4782974 m!5760640))

(declare-fun m!5760650 () Bool)

(assert (=> b!4782974 m!5760650))

(declare-fun m!5760652 () Bool)

(assert (=> b!4782974 m!5760652))

(declare-fun m!5760654 () Bool)

(assert (=> b!4782974 m!5760654))

(declare-fun m!5760656 () Bool)

(assert (=> b!4782974 m!5760656))

(declare-fun m!5760658 () Bool)

(assert (=> b!4782974 m!5760658))

(declare-fun m!5760660 () Bool)

(assert (=> b!4782976 m!5760660))

(declare-fun m!5760662 () Bool)

(assert (=> b!4782977 m!5760662))

(declare-fun m!5760664 () Bool)

(assert (=> b!4782977 m!5760664))

(declare-fun m!5760666 () Bool)

(assert (=> b!4782977 m!5760666))

(declare-fun m!5760668 () Bool)

(assert (=> b!4782977 m!5760668))

(declare-fun m!5760670 () Bool)

(assert (=> b!4782977 m!5760670))

(declare-fun m!5760672 () Bool)

(assert (=> b!4782977 m!5760672))

(declare-fun m!5760674 () Bool)

(assert (=> b!4782977 m!5760674))

(declare-fun m!5760676 () Bool)

(assert (=> b!4782977 m!5760676))

(declare-fun m!5760678 () Bool)

(assert (=> b!4782977 m!5760678))

(declare-fun m!5760680 () Bool)

(assert (=> b!4782977 m!5760680))

(declare-fun m!5760682 () Bool)

(assert (=> b!4782977 m!5760682))

(assert (=> b!4782977 m!5760674))

(declare-fun m!5760684 () Bool)

(assert (=> b!4782977 m!5760684))

(declare-fun m!5760686 () Bool)

(assert (=> b!4782977 m!5760686))

(assert (=> b!4782977 m!5760670))

(declare-fun m!5760688 () Bool)

(assert (=> b!4782977 m!5760688))

(check-sat (not b!4782982) (not b!4782976) (not b!4782975) (not b!4782977) (not b!4782980) (not b!4782974) (not b!4782981) tp_is_empty!33263 (not b!4782979) (not start!491398) (not b!4782978) tp_is_empty!33261)
(check-sat)
(get-model)

(declare-fun d!1529435 () Bool)

(declare-fun dynLambda!22020 (Int tuple2!56530) Bool)

(assert (=> d!1529435 (dynLambda!22020 lambda!228601 lt!1945157)))

(declare-fun lt!1945180 () Unit!139346)

(declare-fun choose!34324 (List!54150 Int tuple2!56530) Unit!139346)

(assert (=> d!1529435 (= lt!1945180 (choose!34324 (toList!6759 lt!1945162) lambda!228601 lt!1945157))))

(declare-fun e!2986163 () Bool)

(assert (=> d!1529435 e!2986163))

(declare-fun res!2031173 () Bool)

(assert (=> d!1529435 (=> (not res!2031173) (not e!2986163))))

(assert (=> d!1529435 (= res!2031173 (forall!12136 (toList!6759 lt!1945162) lambda!228601))))

(assert (=> d!1529435 (= (forallContained!4080 (toList!6759 lt!1945162) lambda!228601 lt!1945157) lt!1945180)))

(declare-fun b!4782985 () Bool)

(assert (=> b!4782985 (= e!2986163 (contains!17574 (toList!6759 lt!1945162) lt!1945157))))

(assert (= (and d!1529435 res!2031173) b!4782985))

(declare-fun b_lambda!185835 () Bool)

(assert (=> (not b_lambda!185835) (not d!1529435)))

(declare-fun m!5760690 () Bool)

(assert (=> d!1529435 m!5760690))

(declare-fun m!5760692 () Bool)

(assert (=> d!1529435 m!5760692))

(assert (=> d!1529435 m!5760606))

(assert (=> b!4782985 m!5760658))

(assert (=> b!4782974 d!1529435))

(declare-fun b!4783002 () Bool)

(declare-fun e!2986177 () Option!12956)

(assert (=> b!4783002 (= e!2986177 (getPair!812 (t!361599 lt!1945167) key!6641))))

(declare-fun b!4783003 () Bool)

(declare-fun e!2986175 () Bool)

(assert (=> b!4783003 (= e!2986175 (not (containsKey!3831 lt!1945167 key!6641)))))

(declare-fun b!4783004 () Bool)

(declare-fun e!2986178 () Bool)

(declare-fun lt!1945183 () Option!12956)

(declare-fun contains!17577 (List!54149 tuple2!56528) Bool)

(assert (=> b!4783004 (= e!2986178 (contains!17577 lt!1945167 (get!18380 lt!1945183)))))

(declare-fun b!4783005 () Bool)

(declare-fun res!2031182 () Bool)

(assert (=> b!4783005 (=> (not res!2031182) (not e!2986178))))

(assert (=> b!4783005 (= res!2031182 (= (_1!31558 (get!18380 lt!1945183)) key!6641))))

(declare-fun b!4783006 () Bool)

(declare-fun e!2986176 () Bool)

(assert (=> b!4783006 (= e!2986176 e!2986178)))

(declare-fun res!2031183 () Bool)

(assert (=> b!4783006 (=> (not res!2031183) (not e!2986178))))

(assert (=> b!4783006 (= res!2031183 (isDefined!10099 lt!1945183))))

(declare-fun d!1529437 () Bool)

(assert (=> d!1529437 e!2986176))

(declare-fun res!2031185 () Bool)

(assert (=> d!1529437 (=> res!2031185 e!2986176)))

(assert (=> d!1529437 (= res!2031185 e!2986175)))

(declare-fun res!2031184 () Bool)

(assert (=> d!1529437 (=> (not res!2031184) (not e!2986175))))

(declare-fun isEmpty!29367 (Option!12956) Bool)

(assert (=> d!1529437 (= res!2031184 (isEmpty!29367 lt!1945183))))

(declare-fun e!2986174 () Option!12956)

(assert (=> d!1529437 (= lt!1945183 e!2986174)))

(declare-fun c!815355 () Bool)

(assert (=> d!1529437 (= c!815355 (and ((_ is Cons!54025) lt!1945167) (= (_1!31558 (h!60445 lt!1945167)) key!6641)))))

(declare-fun noDuplicateKeys!2298 (List!54149) Bool)

(assert (=> d!1529437 (noDuplicateKeys!2298 lt!1945167)))

(assert (=> d!1529437 (= (getPair!812 lt!1945167 key!6641) lt!1945183)))

(declare-fun b!4783007 () Bool)

(assert (=> b!4783007 (= e!2986177 None!12955)))

(declare-fun b!4783008 () Bool)

(assert (=> b!4783008 (= e!2986174 e!2986177)))

(declare-fun c!815354 () Bool)

(assert (=> b!4783008 (= c!815354 ((_ is Cons!54025) lt!1945167))))

(declare-fun b!4783009 () Bool)

(assert (=> b!4783009 (= e!2986174 (Some!12955 (h!60445 lt!1945167)))))

(assert (= (and d!1529437 c!815355) b!4783009))

(assert (= (and d!1529437 (not c!815355)) b!4783008))

(assert (= (and b!4783008 c!815354) b!4783002))

(assert (= (and b!4783008 (not c!815354)) b!4783007))

(assert (= (and d!1529437 res!2031184) b!4783003))

(assert (= (and d!1529437 (not res!2031185)) b!4783006))

(assert (= (and b!4783006 res!2031183) b!4783005))

(assert (= (and b!4783005 res!2031182) b!4783004))

(declare-fun m!5760694 () Bool)

(assert (=> b!4783002 m!5760694))

(declare-fun m!5760696 () Bool)

(assert (=> b!4783005 m!5760696))

(declare-fun m!5760698 () Bool)

(assert (=> b!4783006 m!5760698))

(assert (=> b!4783004 m!5760696))

(assert (=> b!4783004 m!5760696))

(declare-fun m!5760700 () Bool)

(assert (=> b!4783004 m!5760700))

(declare-fun m!5760702 () Bool)

(assert (=> d!1529437 m!5760702))

(declare-fun m!5760704 () Bool)

(assert (=> d!1529437 m!5760704))

(declare-fun m!5760706 () Bool)

(assert (=> b!4783003 m!5760706))

(assert (=> b!4782974 d!1529437))

(declare-fun bs!1152354 () Bool)

(declare-fun d!1529439 () Bool)

(assert (= bs!1152354 (and d!1529439 start!491398)))

(declare-fun lambda!228604 () Int)

(assert (=> bs!1152354 (= lambda!228604 lambda!228601)))

(declare-fun lt!1945186 () ListMap!6231)

(declare-fun invariantList!1700 (List!54149) Bool)

(assert (=> d!1529439 (invariantList!1700 (toList!6760 lt!1945186))))

(declare-fun e!2986181 () ListMap!6231)

(assert (=> d!1529439 (= lt!1945186 e!2986181)))

(declare-fun c!815358 () Bool)

(assert (=> d!1529439 (= c!815358 ((_ is Cons!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529439 (forall!12136 (toList!6759 lt!1945162) lambda!228604)))

(assert (=> d!1529439 (= (extractMap!2367 (toList!6759 lt!1945162)) lt!1945186)))

(declare-fun b!4783014 () Bool)

(declare-fun addToMapMapFromBucket!1665 (List!54149 ListMap!6231) ListMap!6231)

(assert (=> b!4783014 (= e!2986181 (addToMapMapFromBucket!1665 (_2!31559 (h!60446 (toList!6759 lt!1945162))) (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))))))

(declare-fun b!4783015 () Bool)

(assert (=> b!4783015 (= e!2986181 (ListMap!6232 Nil!54025))))

(assert (= (and d!1529439 c!815358) b!4783014))

(assert (= (and d!1529439 (not c!815358)) b!4783015))

(declare-fun m!5760708 () Bool)

(assert (=> d!1529439 m!5760708))

(declare-fun m!5760710 () Bool)

(assert (=> d!1529439 m!5760710))

(declare-fun m!5760712 () Bool)

(assert (=> b!4783014 m!5760712))

(assert (=> b!4783014 m!5760712))

(declare-fun m!5760714 () Bool)

(assert (=> b!4783014 m!5760714))

(assert (=> b!4782974 d!1529439))

(declare-fun bs!1152363 () Bool)

(declare-fun d!1529443 () Bool)

(assert (= bs!1152363 (and d!1529443 start!491398)))

(declare-fun lambda!228617 () Int)

(assert (=> bs!1152363 (= lambda!228617 lambda!228601)))

(declare-fun bs!1152364 () Bool)

(assert (= bs!1152364 (and d!1529443 d!1529439)))

(assert (=> bs!1152364 (= lambda!228617 lambda!228604)))

(declare-fun b!4783075 () Bool)

(declare-fun res!2031226 () Bool)

(declare-fun e!2986225 () Bool)

(assert (=> b!4783075 (=> (not res!2031226) (not e!2986225))))

(assert (=> b!4783075 (= res!2031226 (allKeysSameHashInMap!2245 lt!1945162 hashF!1687))))

(declare-fun b!4783076 () Bool)

(declare-fun res!2031227 () Bool)

(assert (=> b!4783076 (=> (not res!2031227) (not e!2986225))))

(assert (=> b!4783076 (= res!2031227 (contains!17576 (extractMap!2367 (toList!6759 lt!1945162)) key!6641))))

(declare-fun b!4783077 () Bool)

(assert (=> b!4783077 (= e!2986225 (isDefined!10099 (getPair!812 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1945237 () Unit!139346)

(assert (=> b!4783077 (= lt!1945237 (forallContained!4080 (toList!6759 lt!1945162) lambda!228617 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))))))

(declare-fun lt!1945240 () Unit!139346)

(declare-fun lt!1945242 () Unit!139346)

(assert (=> b!4783077 (= lt!1945240 lt!1945242)))

(declare-fun lt!1945241 () (_ BitVec 64))

(declare-fun lt!1945239 () List!54149)

(assert (=> b!4783077 (contains!17574 (toList!6759 lt!1945162) (tuple2!56531 lt!1945241 lt!1945239))))

(assert (=> b!4783077 (= lt!1945242 (lemmaGetValueImpliesTupleContained!619 lt!1945162 lt!1945241 lt!1945239))))

(declare-fun e!2986226 () Bool)

(assert (=> b!4783077 e!2986226))

(declare-fun res!2031224 () Bool)

(assert (=> b!4783077 (=> (not res!2031224) (not e!2986226))))

(assert (=> b!4783077 (= res!2031224 (contains!17575 lt!1945162 lt!1945241))))

(assert (=> b!4783077 (= lt!1945239 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))))

(assert (=> b!4783077 (= lt!1945241 (hash!4841 hashF!1687 key!6641))))

(declare-fun lt!1945236 () Unit!139346)

(declare-fun lt!1945238 () Unit!139346)

(assert (=> b!4783077 (= lt!1945236 lt!1945238)))

(assert (=> b!4783077 (contains!17575 lt!1945162 (hash!4841 hashF!1687 key!6641))))

(assert (=> b!4783077 (= lt!1945238 (lemmaInGenMapThenLongMapContainsHash!1036 lt!1945162 key!6641 hashF!1687))))

(assert (=> d!1529443 e!2986225))

(declare-fun res!2031225 () Bool)

(assert (=> d!1529443 (=> (not res!2031225) (not e!2986225))))

(assert (=> d!1529443 (= res!2031225 (forall!12136 (toList!6759 lt!1945162) lambda!228617))))

(declare-fun lt!1945243 () Unit!139346)

(declare-fun choose!34325 (ListLongMap!5181 K!15589 Hashable!6840) Unit!139346)

(assert (=> d!1529443 (= lt!1945243 (choose!34325 lt!1945162 key!6641 hashF!1687))))

(assert (=> d!1529443 (forall!12136 (toList!6759 lt!1945162) lambda!228617)))

(assert (=> d!1529443 (= (lemmaInGenMapThenGetPairDefined!586 lt!1945162 key!6641 hashF!1687) lt!1945243)))

(declare-fun b!4783078 () Bool)

(declare-datatypes ((Option!12957 0))(
  ( (None!12956) (Some!12956 (v!48187 List!54149)) )
))
(declare-fun getValueByKey!2292 (List!54150 (_ BitVec 64)) Option!12957)

(assert (=> b!4783078 (= e!2986226 (= (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945241) (Some!12956 lt!1945239)))))

(assert (= (and d!1529443 res!2031225) b!4783075))

(assert (= (and b!4783075 res!2031226) b!4783076))

(assert (= (and b!4783076 res!2031227) b!4783077))

(assert (= (and b!4783077 res!2031224) b!4783078))

(declare-fun m!5760762 () Bool)

(assert (=> d!1529443 m!5760762))

(declare-fun m!5760764 () Bool)

(assert (=> d!1529443 m!5760764))

(assert (=> d!1529443 m!5760762))

(assert (=> b!4783075 m!5760616))

(declare-fun m!5760766 () Bool)

(assert (=> b!4783077 m!5760766))

(declare-fun m!5760768 () Bool)

(assert (=> b!4783077 m!5760768))

(declare-fun m!5760770 () Bool)

(assert (=> b!4783077 m!5760770))

(assert (=> b!4783077 m!5760676))

(declare-fun m!5760772 () Bool)

(assert (=> b!4783077 m!5760772))

(declare-fun m!5760774 () Bool)

(assert (=> b!4783077 m!5760774))

(declare-fun m!5760776 () Bool)

(assert (=> b!4783077 m!5760776))

(assert (=> b!4783077 m!5760676))

(declare-fun m!5760778 () Bool)

(assert (=> b!4783077 m!5760778))

(assert (=> b!4783077 m!5760766))

(assert (=> b!4783077 m!5760676))

(assert (=> b!4783077 m!5760778))

(declare-fun m!5760780 () Bool)

(assert (=> b!4783077 m!5760780))

(assert (=> b!4783077 m!5760648))

(declare-fun m!5760782 () Bool)

(assert (=> b!4783078 m!5760782))

(assert (=> b!4783076 m!5760640))

(assert (=> b!4783076 m!5760640))

(assert (=> b!4783076 m!5760650))

(assert (=> b!4782974 d!1529443))

(declare-fun d!1529465 () Bool)

(assert (=> d!1529465 (= (isDefined!10099 lt!1945163) (not (isEmpty!29367 lt!1945163)))))

(declare-fun bs!1152365 () Bool)

(assert (= bs!1152365 d!1529465))

(declare-fun m!5760784 () Bool)

(assert (=> bs!1152365 m!5760784))

(assert (=> b!4782974 d!1529465))

(declare-fun d!1529467 () Bool)

(assert (=> d!1529467 (= (get!18380 lt!1945163) (v!48182 lt!1945163))))

(assert (=> b!4782974 d!1529467))

(declare-fun bs!1152370 () Bool)

(declare-fun d!1529469 () Bool)

(assert (= bs!1152370 (and d!1529469 start!491398)))

(declare-fun lambda!228623 () Int)

(assert (=> bs!1152370 (= lambda!228623 lambda!228601)))

(declare-fun bs!1152371 () Bool)

(assert (= bs!1152371 (and d!1529469 d!1529439)))

(assert (=> bs!1152371 (= lambda!228623 lambda!228604)))

(declare-fun bs!1152372 () Bool)

(assert (= bs!1152372 (and d!1529469 d!1529443)))

(assert (=> bs!1152372 (= lambda!228623 lambda!228617)))

(assert (=> d!1529469 (contains!17576 (extractMap!2367 (toList!6759 lt!1945162)) key!6641)))

(declare-fun lt!1945249 () Unit!139346)

(declare-fun choose!34327 (ListLongMap!5181 K!15589 Hashable!6840) Unit!139346)

(assert (=> d!1529469 (= lt!1945249 (choose!34327 lt!1945162 key!6641 hashF!1687))))

(assert (=> d!1529469 (forall!12136 (toList!6759 lt!1945162) lambda!228623)))

(assert (=> d!1529469 (= (lemmaListContainsThenExtractedMapContains!688 lt!1945162 key!6641 hashF!1687) lt!1945249)))

(declare-fun bs!1152373 () Bool)

(assert (= bs!1152373 d!1529469))

(assert (=> bs!1152373 m!5760640))

(assert (=> bs!1152373 m!5760640))

(assert (=> bs!1152373 m!5760650))

(declare-fun m!5760792 () Bool)

(assert (=> bs!1152373 m!5760792))

(declare-fun m!5760794 () Bool)

(assert (=> bs!1152373 m!5760794))

(assert (=> b!4782974 d!1529469))

(declare-fun d!1529473 () Bool)

(assert (=> d!1529473 (contains!17574 (toList!6759 lt!1945162) (tuple2!56531 lt!1945161 lt!1945167))))

(declare-fun lt!1945255 () Unit!139346)

(declare-fun choose!34328 (ListLongMap!5181 (_ BitVec 64) List!54149) Unit!139346)

(assert (=> d!1529473 (= lt!1945255 (choose!34328 lt!1945162 lt!1945161 lt!1945167))))

(assert (=> d!1529473 (contains!17575 lt!1945162 lt!1945161)))

(assert (=> d!1529473 (= (lemmaGetValueImpliesTupleContained!619 lt!1945162 lt!1945161 lt!1945167) lt!1945255)))

(declare-fun bs!1152378 () Bool)

(assert (= bs!1152378 d!1529473))

(declare-fun m!5760804 () Bool)

(assert (=> bs!1152378 m!5760804))

(declare-fun m!5760806 () Bool)

(assert (=> bs!1152378 m!5760806))

(assert (=> bs!1152378 m!5760644))

(assert (=> b!4782974 d!1529473))

(declare-fun d!1529477 () Bool)

(declare-fun e!2986254 () Bool)

(assert (=> d!1529477 e!2986254))

(declare-fun res!2031242 () Bool)

(assert (=> d!1529477 (=> res!2031242 e!2986254)))

(declare-fun e!2986253 () Bool)

(assert (=> d!1529477 (= res!2031242 e!2986253)))

(declare-fun res!2031244 () Bool)

(assert (=> d!1529477 (=> (not res!2031244) (not e!2986253))))

(declare-fun lt!1945282 () Bool)

(assert (=> d!1529477 (= res!2031244 (not lt!1945282))))

(declare-fun lt!1945281 () Bool)

(assert (=> d!1529477 (= lt!1945282 lt!1945281)))

(declare-fun lt!1945277 () Unit!139346)

(declare-fun e!2986252 () Unit!139346)

(assert (=> d!1529477 (= lt!1945277 e!2986252)))

(declare-fun c!815381 () Bool)

(assert (=> d!1529477 (= c!815381 lt!1945281)))

(declare-fun containsKey!3832 (List!54149 K!15589) Bool)

(assert (=> d!1529477 (= lt!1945281 (containsKey!3832 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))

(assert (=> d!1529477 (= (contains!17576 (extractMap!2367 (toList!6759 lt!1945162)) key!6641) lt!1945282)))

(declare-fun b!4783120 () Bool)

(declare-datatypes ((List!54151 0))(
  ( (Nil!54027) (Cons!54027 (h!60447 K!15589) (t!361601 List!54151)) )
))
(declare-fun e!2986256 () List!54151)

(declare-fun keys!19685 (ListMap!6231) List!54151)

(assert (=> b!4783120 (= e!2986256 (keys!19685 (extractMap!2367 (toList!6759 lt!1945162))))))

(declare-fun b!4783121 () Bool)

(declare-fun e!2986257 () Unit!139346)

(declare-fun Unit!139348 () Unit!139346)

(assert (=> b!4783121 (= e!2986257 Unit!139348)))

(declare-fun b!4783122 () Bool)

(assert (=> b!4783122 false))

(declare-fun lt!1945279 () Unit!139346)

(declare-fun lt!1945284 () Unit!139346)

(assert (=> b!4783122 (= lt!1945279 lt!1945284)))

(assert (=> b!4783122 (containsKey!3832 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1046 (List!54149 K!15589) Unit!139346)

(assert (=> b!4783122 (= lt!1945284 (lemmaInGetKeysListThenContainsKey!1046 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))

(declare-fun Unit!139349 () Unit!139346)

(assert (=> b!4783122 (= e!2986257 Unit!139349)))

(declare-fun b!4783123 () Bool)

(declare-fun contains!17578 (List!54151 K!15589) Bool)

(assert (=> b!4783123 (= e!2986253 (not (contains!17578 (keys!19685 (extractMap!2367 (toList!6759 lt!1945162))) key!6641)))))

(declare-fun b!4783124 () Bool)

(declare-fun e!2986255 () Bool)

(assert (=> b!4783124 (= e!2986255 (contains!17578 (keys!19685 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))

(declare-fun b!4783125 () Bool)

(declare-fun lt!1945280 () Unit!139346)

(assert (=> b!4783125 (= e!2986252 lt!1945280)))

(declare-fun lt!1945278 () Unit!139346)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2085 (List!54149 K!15589) Unit!139346)

(assert (=> b!4783125 (= lt!1945278 (lemmaContainsKeyImpliesGetValueByKeyDefined!2085 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))

(declare-datatypes ((Option!12958 0))(
  ( (None!12957) (Some!12957 (v!48188 V!15835)) )
))
(declare-fun isDefined!10100 (Option!12958) Bool)

(declare-fun getValueByKey!2293 (List!54149 K!15589) Option!12958)

(assert (=> b!4783125 (isDefined!10100 (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))

(declare-fun lt!1945283 () Unit!139346)

(assert (=> b!4783125 (= lt!1945283 lt!1945278)))

(declare-fun lemmaInListThenGetKeysListContains!1041 (List!54149 K!15589) Unit!139346)

(assert (=> b!4783125 (= lt!1945280 (lemmaInListThenGetKeysListContains!1041 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))

(declare-fun call!334778 () Bool)

(assert (=> b!4783125 call!334778))

(declare-fun b!4783126 () Bool)

(declare-fun getKeysList!1046 (List!54149) List!54151)

(assert (=> b!4783126 (= e!2986256 (getKeysList!1046 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))))))

(declare-fun bm!334773 () Bool)

(assert (=> bm!334773 (= call!334778 (contains!17578 e!2986256 key!6641))))

(declare-fun c!815382 () Bool)

(assert (=> bm!334773 (= c!815382 c!815381)))

(declare-fun b!4783127 () Bool)

(assert (=> b!4783127 (= e!2986252 e!2986257)))

(declare-fun c!815383 () Bool)

(assert (=> b!4783127 (= c!815383 call!334778)))

(declare-fun b!4783128 () Bool)

(assert (=> b!4783128 (= e!2986254 e!2986255)))

(declare-fun res!2031243 () Bool)

(assert (=> b!4783128 (=> (not res!2031243) (not e!2986255))))

(assert (=> b!4783128 (= res!2031243 (isDefined!10100 (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641)))))

(assert (= (and d!1529477 c!815381) b!4783125))

(assert (= (and d!1529477 (not c!815381)) b!4783127))

(assert (= (and b!4783127 c!815383) b!4783122))

(assert (= (and b!4783127 (not c!815383)) b!4783121))

(assert (= (or b!4783125 b!4783127) bm!334773))

(assert (= (and bm!334773 c!815382) b!4783126))

(assert (= (and bm!334773 (not c!815382)) b!4783120))

(assert (= (and d!1529477 res!2031244) b!4783123))

(assert (= (and d!1529477 (not res!2031242)) b!4783128))

(assert (= (and b!4783128 res!2031243) b!4783124))

(declare-fun m!5760816 () Bool)

(assert (=> b!4783126 m!5760816))

(assert (=> b!4783124 m!5760640))

(declare-fun m!5760818 () Bool)

(assert (=> b!4783124 m!5760818))

(assert (=> b!4783124 m!5760818))

(declare-fun m!5760820 () Bool)

(assert (=> b!4783124 m!5760820))

(declare-fun m!5760822 () Bool)

(assert (=> d!1529477 m!5760822))

(declare-fun m!5760824 () Bool)

(assert (=> b!4783128 m!5760824))

(assert (=> b!4783128 m!5760824))

(declare-fun m!5760826 () Bool)

(assert (=> b!4783128 m!5760826))

(assert (=> b!4783120 m!5760640))

(assert (=> b!4783120 m!5760818))

(assert (=> b!4783123 m!5760640))

(assert (=> b!4783123 m!5760818))

(assert (=> b!4783123 m!5760818))

(assert (=> b!4783123 m!5760820))

(declare-fun m!5760828 () Bool)

(assert (=> bm!334773 m!5760828))

(assert (=> b!4783122 m!5760822))

(declare-fun m!5760830 () Bool)

(assert (=> b!4783122 m!5760830))

(declare-fun m!5760832 () Bool)

(assert (=> b!4783125 m!5760832))

(assert (=> b!4783125 m!5760824))

(assert (=> b!4783125 m!5760824))

(assert (=> b!4783125 m!5760826))

(declare-fun m!5760834 () Bool)

(assert (=> b!4783125 m!5760834))

(assert (=> b!4782974 d!1529477))

(declare-fun d!1529483 () Bool)

(declare-fun get!18381 (Option!12957) List!54149)

(assert (=> d!1529483 (= (apply!12895 lt!1945162 lt!1945161) (get!18381 (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945161)))))

(declare-fun bs!1152386 () Bool)

(assert (= bs!1152386 d!1529483))

(declare-fun m!5760836 () Bool)

(assert (=> bs!1152386 m!5760836))

(assert (=> bs!1152386 m!5760836))

(declare-fun m!5760838 () Bool)

(assert (=> bs!1152386 m!5760838))

(assert (=> b!4782974 d!1529483))

(declare-fun bs!1152387 () Bool)

(declare-fun d!1529485 () Bool)

(assert (= bs!1152387 (and d!1529485 start!491398)))

(declare-fun lambda!228632 () Int)

(assert (=> bs!1152387 (= lambda!228632 lambda!228601)))

(declare-fun bs!1152388 () Bool)

(assert (= bs!1152388 (and d!1529485 d!1529439)))

(assert (=> bs!1152388 (= lambda!228632 lambda!228604)))

(declare-fun bs!1152389 () Bool)

(assert (= bs!1152389 (and d!1529485 d!1529443)))

(assert (=> bs!1152389 (= lambda!228632 lambda!228617)))

(declare-fun bs!1152390 () Bool)

(assert (= bs!1152390 (and d!1529485 d!1529469)))

(assert (=> bs!1152390 (= lambda!228632 lambda!228623)))

(assert (=> d!1529485 (contains!17575 lt!1945162 (hash!4841 hashF!1687 key!6641))))

(declare-fun lt!1945288 () Unit!139346)

(declare-fun choose!34330 (ListLongMap!5181 K!15589 Hashable!6840) Unit!139346)

(assert (=> d!1529485 (= lt!1945288 (choose!34330 lt!1945162 key!6641 hashF!1687))))

(assert (=> d!1529485 (forall!12136 (toList!6759 lt!1945162) lambda!228632)))

(assert (=> d!1529485 (= (lemmaInGenMapThenLongMapContainsHash!1036 lt!1945162 key!6641 hashF!1687) lt!1945288)))

(declare-fun bs!1152391 () Bool)

(assert (= bs!1152391 d!1529485))

(assert (=> bs!1152391 m!5760676))

(assert (=> bs!1152391 m!5760676))

(assert (=> bs!1152391 m!5760772))

(declare-fun m!5760854 () Bool)

(assert (=> bs!1152391 m!5760854))

(declare-fun m!5760856 () Bool)

(assert (=> bs!1152391 m!5760856))

(assert (=> b!4782974 d!1529485))

(declare-fun d!1529489 () Bool)

(declare-fun lt!1945291 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9659 (List!54150) (InoxSet tuple2!56530))

(assert (=> d!1529489 (= lt!1945291 (select (content!9659 (toList!6759 lt!1945162)) lt!1945157))))

(declare-fun e!2986267 () Bool)

(assert (=> d!1529489 (= lt!1945291 e!2986267)))

(declare-fun res!2031254 () Bool)

(assert (=> d!1529489 (=> (not res!2031254) (not e!2986267))))

(assert (=> d!1529489 (= res!2031254 ((_ is Cons!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529489 (= (contains!17574 (toList!6759 lt!1945162) lt!1945157) lt!1945291)))

(declare-fun b!4783141 () Bool)

(declare-fun e!2986268 () Bool)

(assert (=> b!4783141 (= e!2986267 e!2986268)))

(declare-fun res!2031253 () Bool)

(assert (=> b!4783141 (=> res!2031253 e!2986268)))

(assert (=> b!4783141 (= res!2031253 (= (h!60446 (toList!6759 lt!1945162)) lt!1945157))))

(declare-fun b!4783142 () Bool)

(assert (=> b!4783142 (= e!2986268 (contains!17574 (t!361600 (toList!6759 lt!1945162)) lt!1945157))))

(assert (= (and d!1529489 res!2031254) b!4783141))

(assert (= (and b!4783141 (not res!2031253)) b!4783142))

(declare-fun m!5760858 () Bool)

(assert (=> d!1529489 m!5760858))

(declare-fun m!5760860 () Bool)

(assert (=> d!1529489 m!5760860))

(declare-fun m!5760862 () Bool)

(assert (=> b!4783142 m!5760862))

(assert (=> b!4782974 d!1529489))

(declare-fun d!1529491 () Bool)

(declare-fun e!2986273 () Bool)

(assert (=> d!1529491 e!2986273))

(declare-fun res!2031257 () Bool)

(assert (=> d!1529491 (=> res!2031257 e!2986273)))

(declare-fun lt!1945303 () Bool)

(assert (=> d!1529491 (= res!2031257 (not lt!1945303))))

(declare-fun lt!1945300 () Bool)

(assert (=> d!1529491 (= lt!1945303 lt!1945300)))

(declare-fun lt!1945301 () Unit!139346)

(declare-fun e!2986274 () Unit!139346)

(assert (=> d!1529491 (= lt!1945301 e!2986274)))

(declare-fun c!815388 () Bool)

(assert (=> d!1529491 (= c!815388 lt!1945300)))

(declare-fun containsKey!3834 (List!54150 (_ BitVec 64)) Bool)

(assert (=> d!1529491 (= lt!1945300 (containsKey!3834 (toList!6759 lt!1945162) lt!1945161))))

(assert (=> d!1529491 (= (contains!17575 lt!1945162 lt!1945161) lt!1945303)))

(declare-fun b!4783149 () Bool)

(declare-fun lt!1945302 () Unit!139346)

(assert (=> b!4783149 (= e!2986274 lt!1945302)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2087 (List!54150 (_ BitVec 64)) Unit!139346)

(assert (=> b!4783149 (= lt!1945302 (lemmaContainsKeyImpliesGetValueByKeyDefined!2087 (toList!6759 lt!1945162) lt!1945161))))

(declare-fun isDefined!10102 (Option!12957) Bool)

(assert (=> b!4783149 (isDefined!10102 (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945161))))

(declare-fun b!4783150 () Bool)

(declare-fun Unit!139352 () Unit!139346)

(assert (=> b!4783150 (= e!2986274 Unit!139352)))

(declare-fun b!4783151 () Bool)

(assert (=> b!4783151 (= e!2986273 (isDefined!10102 (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945161)))))

(assert (= (and d!1529491 c!815388) b!4783149))

(assert (= (and d!1529491 (not c!815388)) b!4783150))

(assert (= (and d!1529491 (not res!2031257)) b!4783151))

(declare-fun m!5760864 () Bool)

(assert (=> d!1529491 m!5760864))

(declare-fun m!5760866 () Bool)

(assert (=> b!4783149 m!5760866))

(assert (=> b!4783149 m!5760836))

(assert (=> b!4783149 m!5760836))

(declare-fun m!5760868 () Bool)

(assert (=> b!4783149 m!5760868))

(assert (=> b!4783151 m!5760836))

(assert (=> b!4783151 m!5760836))

(assert (=> b!4783151 m!5760868))

(assert (=> b!4782974 d!1529491))

(declare-fun bs!1152392 () Bool)

(declare-fun d!1529493 () Bool)

(assert (= bs!1152392 (and d!1529493 d!1529443)))

(declare-fun lambda!228635 () Int)

(assert (=> bs!1152392 (not (= lambda!228635 lambda!228617))))

(declare-fun bs!1152393 () Bool)

(assert (= bs!1152393 (and d!1529493 d!1529469)))

(assert (=> bs!1152393 (not (= lambda!228635 lambda!228623))))

(declare-fun bs!1152394 () Bool)

(assert (= bs!1152394 (and d!1529493 d!1529485)))

(assert (=> bs!1152394 (not (= lambda!228635 lambda!228632))))

(declare-fun bs!1152395 () Bool)

(assert (= bs!1152395 (and d!1529493 d!1529439)))

(assert (=> bs!1152395 (not (= lambda!228635 lambda!228604))))

(declare-fun bs!1152396 () Bool)

(assert (= bs!1152396 (and d!1529493 start!491398)))

(assert (=> bs!1152396 (not (= lambda!228635 lambda!228601))))

(assert (=> d!1529493 true))

(assert (=> d!1529493 (= (allKeysSameHashInMap!2245 lm!2709 hashF!1687) (forall!12136 (toList!6759 lm!2709) lambda!228635))))

(declare-fun bs!1152397 () Bool)

(assert (= bs!1152397 d!1529493))

(declare-fun m!5760870 () Bool)

(assert (=> bs!1152397 m!5760870))

(assert (=> b!4782979 d!1529493))

(declare-fun bs!1152398 () Bool)

(declare-fun d!1529495 () Bool)

(assert (= bs!1152398 (and d!1529495 d!1529443)))

(declare-fun lambda!228638 () Int)

(assert (=> bs!1152398 (= lambda!228638 lambda!228617)))

(declare-fun bs!1152399 () Bool)

(assert (= bs!1152399 (and d!1529495 d!1529469)))

(assert (=> bs!1152399 (= lambda!228638 lambda!228623)))

(declare-fun bs!1152400 () Bool)

(assert (= bs!1152400 (and d!1529495 d!1529485)))

(assert (=> bs!1152400 (= lambda!228638 lambda!228632)))

(declare-fun bs!1152401 () Bool)

(assert (= bs!1152401 (and d!1529495 d!1529493)))

(assert (=> bs!1152401 (not (= lambda!228638 lambda!228635))))

(declare-fun bs!1152402 () Bool)

(assert (= bs!1152402 (and d!1529495 d!1529439)))

(assert (=> bs!1152402 (= lambda!228638 lambda!228604)))

(declare-fun bs!1152403 () Bool)

(assert (= bs!1152403 (and d!1529495 start!491398)))

(assert (=> bs!1152403 (= lambda!228638 lambda!228601)))

(assert (=> d!1529495 (containsKeyBiggerList!496 (tail!9201 (toList!6759 lm!2709)) key!6641)))

(declare-fun lt!1945306 () Unit!139346)

(declare-fun choose!34331 (ListLongMap!5181 K!15589 Hashable!6840) Unit!139346)

(assert (=> d!1529495 (= lt!1945306 (choose!34331 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529495 (forall!12136 (toList!6759 lm!2709) lambda!228638)))

(assert (=> d!1529495 (= (lemmaInBiggerListButNotHeadThenTail!20 lm!2709 key!6641 hashF!1687) lt!1945306)))

(declare-fun bs!1152404 () Bool)

(assert (= bs!1152404 d!1529495))

(assert (=> bs!1152404 m!5760608))

(assert (=> bs!1152404 m!5760608))

(assert (=> bs!1152404 m!5760610))

(declare-fun m!5760872 () Bool)

(assert (=> bs!1152404 m!5760872))

(declare-fun m!5760874 () Bool)

(assert (=> bs!1152404 m!5760874))

(assert (=> b!4782975 d!1529495))

(declare-fun d!1529497 () Bool)

(declare-fun res!2031262 () Bool)

(declare-fun e!2986279 () Bool)

(assert (=> d!1529497 (=> res!2031262 e!2986279)))

(assert (=> d!1529497 (= res!2031262 ((_ is Nil!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529497 (= (forall!12136 (toList!6759 lt!1945162) lambda!228601) e!2986279)))

(declare-fun b!4783158 () Bool)

(declare-fun e!2986280 () Bool)

(assert (=> b!4783158 (= e!2986279 e!2986280)))

(declare-fun res!2031263 () Bool)

(assert (=> b!4783158 (=> (not res!2031263) (not e!2986280))))

(assert (=> b!4783158 (= res!2031263 (dynLambda!22020 lambda!228601 (h!60446 (toList!6759 lt!1945162))))))

(declare-fun b!4783159 () Bool)

(assert (=> b!4783159 (= e!2986280 (forall!12136 (t!361600 (toList!6759 lt!1945162)) lambda!228601))))

(assert (= (and d!1529497 (not res!2031262)) b!4783158))

(assert (= (and b!4783158 res!2031263) b!4783159))

(declare-fun b_lambda!185839 () Bool)

(assert (=> (not b_lambda!185839) (not b!4783158)))

(declare-fun m!5760876 () Bool)

(assert (=> b!4783158 m!5760876))

(declare-fun m!5760878 () Bool)

(assert (=> b!4783159 m!5760878))

(assert (=> b!4782975 d!1529497))

(declare-fun d!1529499 () Bool)

(assert (=> d!1529499 (= (tail!9201 (toList!6759 lm!2709)) (t!361600 (toList!6759 lm!2709)))))

(assert (=> b!4782975 d!1529499))

(declare-fun d!1529501 () Bool)

(assert (=> d!1529501 (= (tail!9200 lm!2709) (ListLongMap!5182 (tail!9201 (toList!6759 lm!2709))))))

(declare-fun bs!1152405 () Bool)

(assert (= bs!1152405 d!1529501))

(assert (=> bs!1152405 m!5760608))

(assert (=> b!4782975 d!1529501))

(declare-fun d!1529503 () Bool)

(declare-fun res!2031272 () Bool)

(declare-fun e!2986288 () Bool)

(assert (=> d!1529503 (=> res!2031272 e!2986288)))

(declare-fun e!2986287 () Bool)

(assert (=> d!1529503 (= res!2031272 e!2986287)))

(declare-fun res!2031270 () Bool)

(assert (=> d!1529503 (=> (not res!2031270) (not e!2986287))))

(assert (=> d!1529503 (= res!2031270 ((_ is Cons!54026) (tail!9201 (toList!6759 lm!2709))))))

(assert (=> d!1529503 (= (containsKeyBiggerList!496 (tail!9201 (toList!6759 lm!2709)) key!6641) e!2986288)))

(declare-fun b!4783166 () Bool)

(assert (=> b!4783166 (= e!2986287 (containsKey!3831 (_2!31559 (h!60446 (tail!9201 (toList!6759 lm!2709)))) key!6641))))

(declare-fun b!4783167 () Bool)

(declare-fun e!2986289 () Bool)

(assert (=> b!4783167 (= e!2986288 e!2986289)))

(declare-fun res!2031271 () Bool)

(assert (=> b!4783167 (=> (not res!2031271) (not e!2986289))))

(assert (=> b!4783167 (= res!2031271 ((_ is Cons!54026) (tail!9201 (toList!6759 lm!2709))))))

(declare-fun b!4783168 () Bool)

(assert (=> b!4783168 (= e!2986289 (containsKeyBiggerList!496 (t!361600 (tail!9201 (toList!6759 lm!2709))) key!6641))))

(assert (= (and d!1529503 res!2031270) b!4783166))

(assert (= (and d!1529503 (not res!2031272)) b!4783167))

(assert (= (and b!4783167 res!2031271) b!4783168))

(declare-fun m!5760880 () Bool)

(assert (=> b!4783166 m!5760880))

(declare-fun m!5760882 () Bool)

(assert (=> b!4783168 m!5760882))

(assert (=> b!4782975 d!1529503))

(declare-fun d!1529505 () Bool)

(declare-fun res!2031277 () Bool)

(declare-fun e!2986294 () Bool)

(assert (=> d!1529505 (=> res!2031277 e!2986294)))

(assert (=> d!1529505 (= res!2031277 (and ((_ is Cons!54025) (_2!31559 (h!60446 (toList!6759 lm!2709)))) (= (_1!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lm!2709))))) key!6641)))))

(assert (=> d!1529505 (= (containsKey!3831 (_2!31559 (h!60446 (toList!6759 lm!2709))) key!6641) e!2986294)))

(declare-fun b!4783173 () Bool)

(declare-fun e!2986295 () Bool)

(assert (=> b!4783173 (= e!2986294 e!2986295)))

(declare-fun res!2031278 () Bool)

(assert (=> b!4783173 (=> (not res!2031278) (not e!2986295))))

(assert (=> b!4783173 (= res!2031278 ((_ is Cons!54025) (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(declare-fun b!4783174 () Bool)

(assert (=> b!4783174 (= e!2986295 (containsKey!3831 (t!361599 (_2!31559 (h!60446 (toList!6759 lm!2709)))) key!6641))))

(assert (= (and d!1529505 (not res!2031277)) b!4783173))

(assert (= (and b!4783173 res!2031278) b!4783174))

(declare-fun m!5760884 () Bool)

(assert (=> b!4783174 m!5760884))

(assert (=> b!4782980 d!1529505))

(declare-fun d!1529507 () Bool)

(declare-fun res!2031279 () Bool)

(declare-fun e!2986296 () Bool)

(assert (=> d!1529507 (=> res!2031279 e!2986296)))

(assert (=> d!1529507 (= res!2031279 (and ((_ is Cons!54025) (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709))))) (= (_1!31558 (h!60445 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709)))))) key!6641)))))

(assert (=> d!1529507 (= (containsKey!3831 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709)))) key!6641) e!2986296)))

(declare-fun b!4783175 () Bool)

(declare-fun e!2986297 () Bool)

(assert (=> b!4783175 (= e!2986296 e!2986297)))

(declare-fun res!2031280 () Bool)

(assert (=> b!4783175 (=> (not res!2031280) (not e!2986297))))

(assert (=> b!4783175 (= res!2031280 ((_ is Cons!54025) (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709))))))))

(declare-fun b!4783176 () Bool)

(assert (=> b!4783176 (= e!2986297 (containsKey!3831 (t!361599 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709))))) key!6641))))

(assert (= (and d!1529507 (not res!2031279)) b!4783175))

(assert (= (and b!4783175 res!2031280) b!4783176))

(declare-fun m!5760886 () Bool)

(assert (=> b!4783176 m!5760886))

(assert (=> b!4782980 d!1529507))

(declare-fun d!1529509 () Bool)

(assert (=> d!1529509 (= (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709)))) (get!18381 (getValueByKey!2292 (toList!6759 lm!2709) (_1!31559 (h!60446 (toList!6759 lm!2709))))))))

(declare-fun bs!1152406 () Bool)

(assert (= bs!1152406 d!1529509))

(declare-fun m!5760888 () Bool)

(assert (=> bs!1152406 m!5760888))

(assert (=> bs!1152406 m!5760888))

(declare-fun m!5760890 () Bool)

(assert (=> bs!1152406 m!5760890))

(assert (=> b!4782980 d!1529509))

(declare-fun bs!1152407 () Bool)

(declare-fun d!1529511 () Bool)

(assert (= bs!1152407 (and d!1529511 d!1529443)))

(declare-fun lambda!228647 () Int)

(assert (=> bs!1152407 (= lambda!228647 lambda!228617)))

(declare-fun bs!1152408 () Bool)

(assert (= bs!1152408 (and d!1529511 d!1529495)))

(assert (=> bs!1152408 (= lambda!228647 lambda!228638)))

(declare-fun bs!1152409 () Bool)

(assert (= bs!1152409 (and d!1529511 d!1529469)))

(assert (=> bs!1152409 (= lambda!228647 lambda!228623)))

(declare-fun bs!1152410 () Bool)

(assert (= bs!1152410 (and d!1529511 d!1529485)))

(assert (=> bs!1152410 (= lambda!228647 lambda!228632)))

(declare-fun bs!1152411 () Bool)

(assert (= bs!1152411 (and d!1529511 d!1529493)))

(assert (=> bs!1152411 (not (= lambda!228647 lambda!228635))))

(declare-fun bs!1152412 () Bool)

(assert (= bs!1152412 (and d!1529511 d!1529439)))

(assert (=> bs!1152412 (= lambda!228647 lambda!228604)))

(declare-fun bs!1152413 () Bool)

(assert (= bs!1152413 (and d!1529511 start!491398)))

(assert (=> bs!1152413 (= lambda!228647 lambda!228601)))

(assert (=> d!1529511 (not (containsKey!3831 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709)))) key!6641))))

(declare-fun lt!1945325 () Unit!139346)

(declare-fun choose!34333 (ListLongMap!5181 K!15589 (_ BitVec 64) Hashable!6840) Unit!139346)

(assert (=> d!1529511 (= lt!1945325 (choose!34333 lm!2709 key!6641 (_1!31559 (h!60446 (toList!6759 lm!2709))) hashF!1687))))

(assert (=> d!1529511 (forall!12136 (toList!6759 lm!2709) lambda!228647)))

(assert (=> d!1529511 (= (lemmaNotSameHashThenCannotContainKey!194 lm!2709 key!6641 (_1!31559 (h!60446 (toList!6759 lm!2709))) hashF!1687) lt!1945325)))

(declare-fun bs!1152414 () Bool)

(assert (= bs!1152414 d!1529511))

(assert (=> bs!1152414 m!5760626))

(assert (=> bs!1152414 m!5760626))

(assert (=> bs!1152414 m!5760628))

(declare-fun m!5760892 () Bool)

(assert (=> bs!1152414 m!5760892))

(declare-fun m!5760894 () Bool)

(assert (=> bs!1152414 m!5760894))

(assert (=> b!4782980 d!1529511))

(declare-fun d!1529513 () Bool)

(declare-fun res!2031289 () Bool)

(declare-fun e!2986302 () Bool)

(assert (=> d!1529513 (=> res!2031289 e!2986302)))

(assert (=> d!1529513 (= res!2031289 ((_ is Nil!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529513 (= (forall!12136 (toList!6759 lm!2709) lambda!228601) e!2986302)))

(declare-fun b!4783185 () Bool)

(declare-fun e!2986303 () Bool)

(assert (=> b!4783185 (= e!2986302 e!2986303)))

(declare-fun res!2031290 () Bool)

(assert (=> b!4783185 (=> (not res!2031290) (not e!2986303))))

(assert (=> b!4783185 (= res!2031290 (dynLambda!22020 lambda!228601 (h!60446 (toList!6759 lm!2709))))))

(declare-fun b!4783186 () Bool)

(assert (=> b!4783186 (= e!2986303 (forall!12136 (t!361600 (toList!6759 lm!2709)) lambda!228601))))

(assert (= (and d!1529513 (not res!2031289)) b!4783185))

(assert (= (and b!4783185 res!2031290) b!4783186))

(declare-fun b_lambda!185841 () Bool)

(assert (=> (not b_lambda!185841) (not b!4783185)))

(declare-fun m!5760896 () Bool)

(assert (=> b!4783185 m!5760896))

(declare-fun m!5760898 () Bool)

(assert (=> b!4783186 m!5760898))

(assert (=> start!491398 d!1529513))

(declare-fun d!1529515 () Bool)

(declare-fun isStrictlySorted!852 (List!54150) Bool)

(assert (=> d!1529515 (= (inv!69615 lm!2709) (isStrictlySorted!852 (toList!6759 lm!2709)))))

(declare-fun bs!1152415 () Bool)

(assert (= bs!1152415 d!1529515))

(declare-fun m!5760900 () Bool)

(assert (=> bs!1152415 m!5760900))

(assert (=> start!491398 d!1529515))

(declare-fun d!1529517 () Bool)

(declare-fun res!2031293 () Bool)

(declare-fun e!2986305 () Bool)

(assert (=> d!1529517 (=> res!2031293 e!2986305)))

(declare-fun e!2986304 () Bool)

(assert (=> d!1529517 (= res!2031293 e!2986304)))

(declare-fun res!2031291 () Bool)

(assert (=> d!1529517 (=> (not res!2031291) (not e!2986304))))

(assert (=> d!1529517 (= res!2031291 ((_ is Cons!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529517 (= (containsKeyBiggerList!496 (toList!6759 lt!1945162) key!6641) e!2986305)))

(declare-fun b!4783187 () Bool)

(assert (=> b!4783187 (= e!2986304 (containsKey!3831 (_2!31559 (h!60446 (toList!6759 lt!1945162))) key!6641))))

(declare-fun b!4783188 () Bool)

(declare-fun e!2986306 () Bool)

(assert (=> b!4783188 (= e!2986305 e!2986306)))

(declare-fun res!2031292 () Bool)

(assert (=> b!4783188 (=> (not res!2031292) (not e!2986306))))

(assert (=> b!4783188 (= res!2031292 ((_ is Cons!54026) (toList!6759 lt!1945162)))))

(declare-fun b!4783189 () Bool)

(assert (=> b!4783189 (= e!2986306 (containsKeyBiggerList!496 (t!361600 (toList!6759 lt!1945162)) key!6641))))

(assert (= (and d!1529517 res!2031291) b!4783187))

(assert (= (and d!1529517 (not res!2031293)) b!4783188))

(assert (= (and b!4783188 res!2031292) b!4783189))

(declare-fun m!5760902 () Bool)

(assert (=> b!4783187 m!5760902))

(declare-fun m!5760904 () Bool)

(assert (=> b!4783189 m!5760904))

(assert (=> b!4782982 d!1529517))

(declare-fun d!1529519 () Bool)

(declare-fun res!2031296 () Bool)

(declare-fun e!2986308 () Bool)

(assert (=> d!1529519 (=> res!2031296 e!2986308)))

(declare-fun e!2986307 () Bool)

(assert (=> d!1529519 (= res!2031296 e!2986307)))

(declare-fun res!2031294 () Bool)

(assert (=> d!1529519 (=> (not res!2031294) (not e!2986307))))

(assert (=> d!1529519 (= res!2031294 ((_ is Cons!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529519 (= (containsKeyBiggerList!496 (toList!6759 lm!2709) key!6641) e!2986308)))

(declare-fun b!4783190 () Bool)

(assert (=> b!4783190 (= e!2986307 (containsKey!3831 (_2!31559 (h!60446 (toList!6759 lm!2709))) key!6641))))

(declare-fun b!4783191 () Bool)

(declare-fun e!2986309 () Bool)

(assert (=> b!4783191 (= e!2986308 e!2986309)))

(declare-fun res!2031295 () Bool)

(assert (=> b!4783191 (=> (not res!2031295) (not e!2986309))))

(assert (=> b!4783191 (= res!2031295 ((_ is Cons!54026) (toList!6759 lm!2709)))))

(declare-fun b!4783192 () Bool)

(assert (=> b!4783192 (= e!2986309 (containsKeyBiggerList!496 (t!361600 (toList!6759 lm!2709)) key!6641))))

(assert (= (and d!1529519 res!2031294) b!4783190))

(assert (= (and d!1529519 (not res!2031296)) b!4783191))

(assert (= (and b!4783191 res!2031295) b!4783192))

(assert (=> b!4783190 m!5760624))

(declare-fun m!5760906 () Bool)

(assert (=> b!4783192 m!5760906))

(assert (=> b!4782976 d!1529519))

(declare-fun bs!1152416 () Bool)

(declare-fun d!1529521 () Bool)

(assert (= bs!1152416 (and d!1529521 d!1529443)))

(declare-fun lambda!228648 () Int)

(assert (=> bs!1152416 (not (= lambda!228648 lambda!228617))))

(declare-fun bs!1152418 () Bool)

(assert (= bs!1152418 (and d!1529521 d!1529511)))

(assert (=> bs!1152418 (not (= lambda!228648 lambda!228647))))

(declare-fun bs!1152420 () Bool)

(assert (= bs!1152420 (and d!1529521 d!1529495)))

(assert (=> bs!1152420 (not (= lambda!228648 lambda!228638))))

(declare-fun bs!1152422 () Bool)

(assert (= bs!1152422 (and d!1529521 d!1529469)))

(assert (=> bs!1152422 (not (= lambda!228648 lambda!228623))))

(declare-fun bs!1152424 () Bool)

(assert (= bs!1152424 (and d!1529521 d!1529485)))

(assert (=> bs!1152424 (not (= lambda!228648 lambda!228632))))

(declare-fun bs!1152426 () Bool)

(assert (= bs!1152426 (and d!1529521 d!1529493)))

(assert (=> bs!1152426 (= lambda!228648 lambda!228635)))

(declare-fun bs!1152428 () Bool)

(assert (= bs!1152428 (and d!1529521 d!1529439)))

(assert (=> bs!1152428 (not (= lambda!228648 lambda!228604))))

(declare-fun bs!1152429 () Bool)

(assert (= bs!1152429 (and d!1529521 start!491398)))

(assert (=> bs!1152429 (not (= lambda!228648 lambda!228601))))

(assert (=> d!1529521 true))

(assert (=> d!1529521 (= (allKeysSameHashInMap!2245 lt!1945162 hashF!1687) (forall!12136 (toList!6759 lt!1945162) lambda!228648))))

(declare-fun bs!1152430 () Bool)

(assert (= bs!1152430 d!1529521))

(declare-fun m!5760908 () Bool)

(assert (=> bs!1152430 m!5760908))

(assert (=> b!4782978 d!1529521))

(declare-fun bs!1152431 () Bool)

(declare-fun d!1529523 () Bool)

(assert (= bs!1152431 (and d!1529523 d!1529443)))

(declare-fun lambda!228650 () Int)

(assert (=> bs!1152431 (= lambda!228650 lambda!228617)))

(declare-fun bs!1152432 () Bool)

(assert (= bs!1152432 (and d!1529523 d!1529511)))

(assert (=> bs!1152432 (= lambda!228650 lambda!228647)))

(declare-fun bs!1152433 () Bool)

(assert (= bs!1152433 (and d!1529523 d!1529495)))

(assert (=> bs!1152433 (= lambda!228650 lambda!228638)))

(declare-fun bs!1152434 () Bool)

(assert (= bs!1152434 (and d!1529523 d!1529469)))

(assert (=> bs!1152434 (= lambda!228650 lambda!228623)))

(declare-fun bs!1152435 () Bool)

(assert (= bs!1152435 (and d!1529523 d!1529521)))

(assert (=> bs!1152435 (not (= lambda!228650 lambda!228648))))

(declare-fun bs!1152436 () Bool)

(assert (= bs!1152436 (and d!1529523 d!1529485)))

(assert (=> bs!1152436 (= lambda!228650 lambda!228632)))

(declare-fun bs!1152437 () Bool)

(assert (= bs!1152437 (and d!1529523 d!1529493)))

(assert (=> bs!1152437 (not (= lambda!228650 lambda!228635))))

(declare-fun bs!1152438 () Bool)

(assert (= bs!1152438 (and d!1529523 d!1529439)))

(assert (=> bs!1152438 (= lambda!228650 lambda!228604)))

(declare-fun bs!1152439 () Bool)

(assert (= bs!1152439 (and d!1529523 start!491398)))

(assert (=> bs!1152439 (= lambda!228650 lambda!228601)))

(assert (=> d!1529523 (contains!17576 (extractMap!2367 (toList!6759 lm!2709)) key!6641)))

(declare-fun lt!1945334 () Unit!139346)

(assert (=> d!1529523 (= lt!1945334 (choose!34327 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529523 (forall!12136 (toList!6759 lm!2709) lambda!228650)))

(assert (=> d!1529523 (= (lemmaListContainsThenExtractedMapContains!688 lm!2709 key!6641 hashF!1687) lt!1945334)))

(declare-fun bs!1152440 () Bool)

(assert (= bs!1152440 d!1529523))

(assert (=> bs!1152440 m!5760670))

(assert (=> bs!1152440 m!5760670))

(assert (=> bs!1152440 m!5760688))

(declare-fun m!5760916 () Bool)

(assert (=> bs!1152440 m!5760916))

(declare-fun m!5760918 () Bool)

(assert (=> bs!1152440 m!5760918))

(assert (=> b!4782977 d!1529523))

(declare-fun d!1529525 () Bool)

(assert (=> d!1529525 (= (isDefined!10099 lt!1945173) (not (isEmpty!29367 lt!1945173)))))

(declare-fun bs!1152441 () Bool)

(assert (= bs!1152441 d!1529525))

(declare-fun m!5760922 () Bool)

(assert (=> bs!1152441 m!5760922))

(assert (=> b!4782977 d!1529525))

(declare-fun d!1529527 () Bool)

(declare-fun e!2986314 () Bool)

(assert (=> d!1529527 e!2986314))

(declare-fun res!2031301 () Bool)

(assert (=> d!1529527 (=> res!2031301 e!2986314)))

(declare-fun e!2986313 () Bool)

(assert (=> d!1529527 (= res!2031301 e!2986313)))

(declare-fun res!2031303 () Bool)

(assert (=> d!1529527 (=> (not res!2031303) (not e!2986313))))

(declare-fun lt!1945340 () Bool)

(assert (=> d!1529527 (= res!2031303 (not lt!1945340))))

(declare-fun lt!1945339 () Bool)

(assert (=> d!1529527 (= lt!1945340 lt!1945339)))

(declare-fun lt!1945335 () Unit!139346)

(declare-fun e!2986312 () Unit!139346)

(assert (=> d!1529527 (= lt!1945335 e!2986312)))

(declare-fun c!815389 () Bool)

(assert (=> d!1529527 (= c!815389 lt!1945339)))

(assert (=> d!1529527 (= lt!1945339 (containsKey!3832 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))

(assert (=> d!1529527 (= (contains!17576 (extractMap!2367 (toList!6759 lm!2709)) key!6641) lt!1945340)))

(declare-fun b!4783197 () Bool)

(declare-fun e!2986316 () List!54151)

(assert (=> b!4783197 (= e!2986316 (keys!19685 (extractMap!2367 (toList!6759 lm!2709))))))

(declare-fun b!4783198 () Bool)

(declare-fun e!2986317 () Unit!139346)

(declare-fun Unit!139353 () Unit!139346)

(assert (=> b!4783198 (= e!2986317 Unit!139353)))

(declare-fun b!4783199 () Bool)

(assert (=> b!4783199 false))

(declare-fun lt!1945337 () Unit!139346)

(declare-fun lt!1945342 () Unit!139346)

(assert (=> b!4783199 (= lt!1945337 lt!1945342)))

(assert (=> b!4783199 (containsKey!3832 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641)))

(assert (=> b!4783199 (= lt!1945342 (lemmaInGetKeysListThenContainsKey!1046 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))

(declare-fun Unit!139354 () Unit!139346)

(assert (=> b!4783199 (= e!2986317 Unit!139354)))

(declare-fun b!4783200 () Bool)

(assert (=> b!4783200 (= e!2986313 (not (contains!17578 (keys!19685 (extractMap!2367 (toList!6759 lm!2709))) key!6641)))))

(declare-fun b!4783201 () Bool)

(declare-fun e!2986315 () Bool)

(assert (=> b!4783201 (= e!2986315 (contains!17578 (keys!19685 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))

(declare-fun b!4783202 () Bool)

(declare-fun lt!1945338 () Unit!139346)

(assert (=> b!4783202 (= e!2986312 lt!1945338)))

(declare-fun lt!1945336 () Unit!139346)

(assert (=> b!4783202 (= lt!1945336 (lemmaContainsKeyImpliesGetValueByKeyDefined!2085 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))

(assert (=> b!4783202 (isDefined!10100 (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))

(declare-fun lt!1945341 () Unit!139346)

(assert (=> b!4783202 (= lt!1945341 lt!1945336)))

(assert (=> b!4783202 (= lt!1945338 (lemmaInListThenGetKeysListContains!1041 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))

(declare-fun call!334779 () Bool)

(assert (=> b!4783202 call!334779))

(declare-fun b!4783203 () Bool)

(assert (=> b!4783203 (= e!2986316 (getKeysList!1046 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))))

(declare-fun bm!334774 () Bool)

(assert (=> bm!334774 (= call!334779 (contains!17578 e!2986316 key!6641))))

(declare-fun c!815390 () Bool)

(assert (=> bm!334774 (= c!815390 c!815389)))

(declare-fun b!4783204 () Bool)

(assert (=> b!4783204 (= e!2986312 e!2986317)))

(declare-fun c!815391 () Bool)

(assert (=> b!4783204 (= c!815391 call!334779)))

(declare-fun b!4783205 () Bool)

(assert (=> b!4783205 (= e!2986314 e!2986315)))

(declare-fun res!2031302 () Bool)

(assert (=> b!4783205 (=> (not res!2031302) (not e!2986315))))

(assert (=> b!4783205 (= res!2031302 (isDefined!10100 (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641)))))

(assert (= (and d!1529527 c!815389) b!4783202))

(assert (= (and d!1529527 (not c!815389)) b!4783204))

(assert (= (and b!4783204 c!815391) b!4783199))

(assert (= (and b!4783204 (not c!815391)) b!4783198))

(assert (= (or b!4783202 b!4783204) bm!334774))

(assert (= (and bm!334774 c!815390) b!4783203))

(assert (= (and bm!334774 (not c!815390)) b!4783197))

(assert (= (and d!1529527 res!2031303) b!4783200))

(assert (= (and d!1529527 (not res!2031301)) b!4783205))

(assert (= (and b!4783205 res!2031302) b!4783201))

(declare-fun m!5760936 () Bool)

(assert (=> b!4783203 m!5760936))

(assert (=> b!4783201 m!5760670))

(declare-fun m!5760938 () Bool)

(assert (=> b!4783201 m!5760938))

(assert (=> b!4783201 m!5760938))

(declare-fun m!5760940 () Bool)

(assert (=> b!4783201 m!5760940))

(declare-fun m!5760942 () Bool)

(assert (=> d!1529527 m!5760942))

(declare-fun m!5760944 () Bool)

(assert (=> b!4783205 m!5760944))

(assert (=> b!4783205 m!5760944))

(declare-fun m!5760946 () Bool)

(assert (=> b!4783205 m!5760946))

(assert (=> b!4783197 m!5760670))

(assert (=> b!4783197 m!5760938))

(assert (=> b!4783200 m!5760670))

(assert (=> b!4783200 m!5760938))

(assert (=> b!4783200 m!5760938))

(assert (=> b!4783200 m!5760940))

(declare-fun m!5760948 () Bool)

(assert (=> bm!334774 m!5760948))

(assert (=> b!4783199 m!5760942))

(declare-fun m!5760950 () Bool)

(assert (=> b!4783199 m!5760950))

(declare-fun m!5760952 () Bool)

(assert (=> b!4783202 m!5760952))

(assert (=> b!4783202 m!5760944))

(assert (=> b!4783202 m!5760944))

(assert (=> b!4783202 m!5760946))

(declare-fun m!5760954 () Bool)

(assert (=> b!4783202 m!5760954))

(assert (=> b!4782977 d!1529527))

(declare-fun bs!1152442 () Bool)

(declare-fun d!1529533 () Bool)

(assert (= bs!1152442 (and d!1529533 d!1529443)))

(declare-fun lambda!228651 () Int)

(assert (=> bs!1152442 (= lambda!228651 lambda!228617)))

(declare-fun bs!1152443 () Bool)

(assert (= bs!1152443 (and d!1529533 d!1529511)))

(assert (=> bs!1152443 (= lambda!228651 lambda!228647)))

(declare-fun bs!1152444 () Bool)

(assert (= bs!1152444 (and d!1529533 d!1529495)))

(assert (=> bs!1152444 (= lambda!228651 lambda!228638)))

(declare-fun bs!1152445 () Bool)

(assert (= bs!1152445 (and d!1529533 d!1529469)))

(assert (=> bs!1152445 (= lambda!228651 lambda!228623)))

(declare-fun bs!1152446 () Bool)

(assert (= bs!1152446 (and d!1529533 d!1529521)))

(assert (=> bs!1152446 (not (= lambda!228651 lambda!228648))))

(declare-fun bs!1152447 () Bool)

(assert (= bs!1152447 (and d!1529533 d!1529485)))

(assert (=> bs!1152447 (= lambda!228651 lambda!228632)))

(declare-fun bs!1152448 () Bool)

(assert (= bs!1152448 (and d!1529533 d!1529493)))

(assert (=> bs!1152448 (not (= lambda!228651 lambda!228635))))

(declare-fun bs!1152449 () Bool)

(assert (= bs!1152449 (and d!1529533 d!1529523)))

(assert (=> bs!1152449 (= lambda!228651 lambda!228650)))

(declare-fun bs!1152450 () Bool)

(assert (= bs!1152450 (and d!1529533 d!1529439)))

(assert (=> bs!1152450 (= lambda!228651 lambda!228604)))

(declare-fun bs!1152451 () Bool)

(assert (= bs!1152451 (and d!1529533 start!491398)))

(assert (=> bs!1152451 (= lambda!228651 lambda!228601)))

(declare-fun b!4783206 () Bool)

(declare-fun res!2031306 () Bool)

(declare-fun e!2986318 () Bool)

(assert (=> b!4783206 (=> (not res!2031306) (not e!2986318))))

(assert (=> b!4783206 (= res!2031306 (allKeysSameHashInMap!2245 lm!2709 hashF!1687))))

(declare-fun b!4783207 () Bool)

(declare-fun res!2031307 () Bool)

(assert (=> b!4783207 (=> (not res!2031307) (not e!2986318))))

(assert (=> b!4783207 (= res!2031307 (contains!17576 (extractMap!2367 (toList!6759 lm!2709)) key!6641))))

(declare-fun b!4783208 () Bool)

(assert (=> b!4783208 (= e!2986318 (isDefined!10099 (getPair!812 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1945344 () Unit!139346)

(assert (=> b!4783208 (= lt!1945344 (forallContained!4080 (toList!6759 lm!2709) lambda!228651 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))))))

(declare-fun lt!1945347 () Unit!139346)

(declare-fun lt!1945349 () Unit!139346)

(assert (=> b!4783208 (= lt!1945347 lt!1945349)))

(declare-fun lt!1945348 () (_ BitVec 64))

(declare-fun lt!1945346 () List!54149)

(assert (=> b!4783208 (contains!17574 (toList!6759 lm!2709) (tuple2!56531 lt!1945348 lt!1945346))))

(assert (=> b!4783208 (= lt!1945349 (lemmaGetValueImpliesTupleContained!619 lm!2709 lt!1945348 lt!1945346))))

(declare-fun e!2986319 () Bool)

(assert (=> b!4783208 e!2986319))

(declare-fun res!2031304 () Bool)

(assert (=> b!4783208 (=> (not res!2031304) (not e!2986319))))

(assert (=> b!4783208 (= res!2031304 (contains!17575 lm!2709 lt!1945348))))

(assert (=> b!4783208 (= lt!1945346 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))))

(assert (=> b!4783208 (= lt!1945348 (hash!4841 hashF!1687 key!6641))))

(declare-fun lt!1945343 () Unit!139346)

(declare-fun lt!1945345 () Unit!139346)

(assert (=> b!4783208 (= lt!1945343 lt!1945345)))

(assert (=> b!4783208 (contains!17575 lm!2709 (hash!4841 hashF!1687 key!6641))))

(assert (=> b!4783208 (= lt!1945345 (lemmaInGenMapThenLongMapContainsHash!1036 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529533 e!2986318))

(declare-fun res!2031305 () Bool)

(assert (=> d!1529533 (=> (not res!2031305) (not e!2986318))))

(assert (=> d!1529533 (= res!2031305 (forall!12136 (toList!6759 lm!2709) lambda!228651))))

(declare-fun lt!1945350 () Unit!139346)

(assert (=> d!1529533 (= lt!1945350 (choose!34325 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529533 (forall!12136 (toList!6759 lm!2709) lambda!228651)))

(assert (=> d!1529533 (= (lemmaInGenMapThenGetPairDefined!586 lm!2709 key!6641 hashF!1687) lt!1945350)))

(declare-fun b!4783209 () Bool)

(assert (=> b!4783209 (= e!2986319 (= (getValueByKey!2292 (toList!6759 lm!2709) lt!1945348) (Some!12956 lt!1945346)))))

(assert (= (and d!1529533 res!2031305) b!4783206))

(assert (= (and b!4783206 res!2031306) b!4783207))

(assert (= (and b!4783207 res!2031307) b!4783208))

(assert (= (and b!4783208 res!2031304) b!4783209))

(declare-fun m!5760960 () Bool)

(assert (=> d!1529533 m!5760960))

(declare-fun m!5760962 () Bool)

(assert (=> d!1529533 m!5760962))

(assert (=> d!1529533 m!5760960))

(assert (=> b!4783206 m!5760618))

(declare-fun m!5760964 () Bool)

(assert (=> b!4783208 m!5760964))

(declare-fun m!5760966 () Bool)

(assert (=> b!4783208 m!5760966))

(declare-fun m!5760968 () Bool)

(assert (=> b!4783208 m!5760968))

(assert (=> b!4783208 m!5760676))

(declare-fun m!5760970 () Bool)

(assert (=> b!4783208 m!5760970))

(declare-fun m!5760972 () Bool)

(assert (=> b!4783208 m!5760972))

(declare-fun m!5760974 () Bool)

(assert (=> b!4783208 m!5760974))

(assert (=> b!4783208 m!5760676))

(declare-fun m!5760976 () Bool)

(assert (=> b!4783208 m!5760976))

(assert (=> b!4783208 m!5760964))

(assert (=> b!4783208 m!5760676))

(assert (=> b!4783208 m!5760976))

(declare-fun m!5760978 () Bool)

(assert (=> b!4783208 m!5760978))

(assert (=> b!4783208 m!5760680))

(declare-fun m!5760980 () Bool)

(assert (=> b!4783209 m!5760980))

(assert (=> b!4783207 m!5760670))

(assert (=> b!4783207 m!5760670))

(assert (=> b!4783207 m!5760688))

(assert (=> b!4782977 d!1529533))

(declare-fun d!1529537 () Bool)

(assert (=> d!1529537 (contains!17574 (toList!6759 lm!2709) (tuple2!56531 lt!1945161 lt!1945158))))

(declare-fun lt!1945354 () Unit!139346)

(assert (=> d!1529537 (= lt!1945354 (choose!34328 lm!2709 lt!1945161 lt!1945158))))

(assert (=> d!1529537 (contains!17575 lm!2709 lt!1945161)))

(assert (=> d!1529537 (= (lemmaGetValueImpliesTupleContained!619 lm!2709 lt!1945161 lt!1945158) lt!1945354)))

(declare-fun bs!1152452 () Bool)

(assert (= bs!1152452 d!1529537))

(declare-fun m!5760982 () Bool)

(assert (=> bs!1152452 m!5760982))

(declare-fun m!5760984 () Bool)

(assert (=> bs!1152452 m!5760984))

(assert (=> bs!1152452 m!5760662))

(assert (=> b!4782977 d!1529537))

(declare-fun b!4783213 () Bool)

(declare-fun e!2986326 () Option!12956)

(assert (=> b!4783213 (= e!2986326 (getPair!812 (t!361599 lt!1945158) key!6641))))

(declare-fun b!4783214 () Bool)

(declare-fun e!2986324 () Bool)

(assert (=> b!4783214 (= e!2986324 (not (containsKey!3831 lt!1945158 key!6641)))))

(declare-fun b!4783215 () Bool)

(declare-fun e!2986327 () Bool)

(declare-fun lt!1945355 () Option!12956)

(assert (=> b!4783215 (= e!2986327 (contains!17577 lt!1945158 (get!18380 lt!1945355)))))

(declare-fun b!4783216 () Bool)

(declare-fun res!2031311 () Bool)

(assert (=> b!4783216 (=> (not res!2031311) (not e!2986327))))

(assert (=> b!4783216 (= res!2031311 (= (_1!31558 (get!18380 lt!1945355)) key!6641))))

(declare-fun b!4783217 () Bool)

(declare-fun e!2986325 () Bool)

(assert (=> b!4783217 (= e!2986325 e!2986327)))

(declare-fun res!2031312 () Bool)

(assert (=> b!4783217 (=> (not res!2031312) (not e!2986327))))

(assert (=> b!4783217 (= res!2031312 (isDefined!10099 lt!1945355))))

(declare-fun d!1529539 () Bool)

(assert (=> d!1529539 e!2986325))

(declare-fun res!2031314 () Bool)

(assert (=> d!1529539 (=> res!2031314 e!2986325)))

(assert (=> d!1529539 (= res!2031314 e!2986324)))

(declare-fun res!2031313 () Bool)

(assert (=> d!1529539 (=> (not res!2031313) (not e!2986324))))

(assert (=> d!1529539 (= res!2031313 (isEmpty!29367 lt!1945355))))

(declare-fun e!2986323 () Option!12956)

(assert (=> d!1529539 (= lt!1945355 e!2986323)))

(declare-fun c!815393 () Bool)

(assert (=> d!1529539 (= c!815393 (and ((_ is Cons!54025) lt!1945158) (= (_1!31558 (h!60445 lt!1945158)) key!6641)))))

(assert (=> d!1529539 (noDuplicateKeys!2298 lt!1945158)))

(assert (=> d!1529539 (= (getPair!812 lt!1945158 key!6641) lt!1945355)))

(declare-fun b!4783218 () Bool)

(assert (=> b!4783218 (= e!2986326 None!12955)))

(declare-fun b!4783219 () Bool)

(assert (=> b!4783219 (= e!2986323 e!2986326)))

(declare-fun c!815392 () Bool)

(assert (=> b!4783219 (= c!815392 ((_ is Cons!54025) lt!1945158))))

(declare-fun b!4783220 () Bool)

(assert (=> b!4783220 (= e!2986323 (Some!12955 (h!60445 lt!1945158)))))

(assert (= (and d!1529539 c!815393) b!4783220))

(assert (= (and d!1529539 (not c!815393)) b!4783219))

(assert (= (and b!4783219 c!815392) b!4783213))

(assert (= (and b!4783219 (not c!815392)) b!4783218))

(assert (= (and d!1529539 res!2031313) b!4783214))

(assert (= (and d!1529539 (not res!2031314)) b!4783217))

(assert (= (and b!4783217 res!2031312) b!4783216))

(assert (= (and b!4783216 res!2031311) b!4783215))

(declare-fun m!5760986 () Bool)

(assert (=> b!4783213 m!5760986))

(declare-fun m!5760988 () Bool)

(assert (=> b!4783216 m!5760988))

(declare-fun m!5760990 () Bool)

(assert (=> b!4783217 m!5760990))

(assert (=> b!4783215 m!5760988))

(assert (=> b!4783215 m!5760988))

(declare-fun m!5760992 () Bool)

(assert (=> b!4783215 m!5760992))

(declare-fun m!5760994 () Bool)

(assert (=> d!1529539 m!5760994))

(declare-fun m!5760996 () Bool)

(assert (=> d!1529539 m!5760996))

(declare-fun m!5760998 () Bool)

(assert (=> b!4783214 m!5760998))

(assert (=> b!4782977 d!1529539))

(declare-fun d!1529541 () Bool)

(declare-fun hash!4844 (Hashable!6840 K!15589) (_ BitVec 64))

(assert (=> d!1529541 (= (hash!4841 hashF!1687 key!6641) (hash!4844 hashF!1687 key!6641))))

(declare-fun bs!1152453 () Bool)

(assert (= bs!1152453 d!1529541))

(declare-fun m!5761000 () Bool)

(assert (=> bs!1152453 m!5761000))

(assert (=> b!4782977 d!1529541))

(declare-fun d!1529543 () Bool)

(declare-fun lt!1945356 () Bool)

(assert (=> d!1529543 (= lt!1945356 (select (content!9659 (toList!6759 lm!2709)) lt!1945171))))

(declare-fun e!2986328 () Bool)

(assert (=> d!1529543 (= lt!1945356 e!2986328)))

(declare-fun res!2031316 () Bool)

(assert (=> d!1529543 (=> (not res!2031316) (not e!2986328))))

(assert (=> d!1529543 (= res!2031316 ((_ is Cons!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529543 (= (contains!17574 (toList!6759 lm!2709) lt!1945171) lt!1945356)))

(declare-fun b!4783221 () Bool)

(declare-fun e!2986329 () Bool)

(assert (=> b!4783221 (= e!2986328 e!2986329)))

(declare-fun res!2031315 () Bool)

(assert (=> b!4783221 (=> res!2031315 e!2986329)))

(assert (=> b!4783221 (= res!2031315 (= (h!60446 (toList!6759 lm!2709)) lt!1945171))))

(declare-fun b!4783222 () Bool)

(assert (=> b!4783222 (= e!2986329 (contains!17574 (t!361600 (toList!6759 lm!2709)) lt!1945171))))

(assert (= (and d!1529543 res!2031316) b!4783221))

(assert (= (and b!4783221 (not res!2031315)) b!4783222))

(declare-fun m!5761002 () Bool)

(assert (=> d!1529543 m!5761002))

(declare-fun m!5761004 () Bool)

(assert (=> d!1529543 m!5761004))

(declare-fun m!5761006 () Bool)

(assert (=> b!4783222 m!5761006))

(assert (=> b!4782977 d!1529543))

(declare-fun d!1529545 () Bool)

(assert (=> d!1529545 (dynLambda!22020 lambda!228601 lt!1945171)))

(declare-fun lt!1945357 () Unit!139346)

(assert (=> d!1529545 (= lt!1945357 (choose!34324 (toList!6759 lm!2709) lambda!228601 lt!1945171))))

(declare-fun e!2986330 () Bool)

(assert (=> d!1529545 e!2986330))

(declare-fun res!2031317 () Bool)

(assert (=> d!1529545 (=> (not res!2031317) (not e!2986330))))

(assert (=> d!1529545 (= res!2031317 (forall!12136 (toList!6759 lm!2709) lambda!228601))))

(assert (=> d!1529545 (= (forallContained!4080 (toList!6759 lm!2709) lambda!228601 lt!1945171) lt!1945357)))

(declare-fun b!4783223 () Bool)

(assert (=> b!4783223 (= e!2986330 (contains!17574 (toList!6759 lm!2709) lt!1945171))))

(assert (= (and d!1529545 res!2031317) b!4783223))

(declare-fun b_lambda!185845 () Bool)

(assert (=> (not b_lambda!185845) (not d!1529545)))

(declare-fun m!5761008 () Bool)

(assert (=> d!1529545 m!5761008))

(declare-fun m!5761010 () Bool)

(assert (=> d!1529545 m!5761010))

(assert (=> d!1529545 m!5760620))

(assert (=> b!4783223 m!5760672))

(assert (=> b!4782977 d!1529545))

(declare-fun d!1529547 () Bool)

(assert (=> d!1529547 (= (get!18380 lt!1945173) (v!48182 lt!1945173))))

(assert (=> b!4782977 d!1529547))

(declare-fun bs!1152454 () Bool)

(declare-fun d!1529549 () Bool)

(assert (= bs!1152454 (and d!1529549 d!1529443)))

(declare-fun lambda!228652 () Int)

(assert (=> bs!1152454 (= lambda!228652 lambda!228617)))

(declare-fun bs!1152455 () Bool)

(assert (= bs!1152455 (and d!1529549 d!1529511)))

(assert (=> bs!1152455 (= lambda!228652 lambda!228647)))

(declare-fun bs!1152456 () Bool)

(assert (= bs!1152456 (and d!1529549 d!1529495)))

(assert (=> bs!1152456 (= lambda!228652 lambda!228638)))

(declare-fun bs!1152457 () Bool)

(assert (= bs!1152457 (and d!1529549 d!1529533)))

(assert (=> bs!1152457 (= lambda!228652 lambda!228651)))

(declare-fun bs!1152458 () Bool)

(assert (= bs!1152458 (and d!1529549 d!1529469)))

(assert (=> bs!1152458 (= lambda!228652 lambda!228623)))

(declare-fun bs!1152459 () Bool)

(assert (= bs!1152459 (and d!1529549 d!1529521)))

(assert (=> bs!1152459 (not (= lambda!228652 lambda!228648))))

(declare-fun bs!1152460 () Bool)

(assert (= bs!1152460 (and d!1529549 d!1529485)))

(assert (=> bs!1152460 (= lambda!228652 lambda!228632)))

(declare-fun bs!1152461 () Bool)

(assert (= bs!1152461 (and d!1529549 d!1529493)))

(assert (=> bs!1152461 (not (= lambda!228652 lambda!228635))))

(declare-fun bs!1152462 () Bool)

(assert (= bs!1152462 (and d!1529549 d!1529523)))

(assert (=> bs!1152462 (= lambda!228652 lambda!228650)))

(declare-fun bs!1152463 () Bool)

(assert (= bs!1152463 (and d!1529549 d!1529439)))

(assert (=> bs!1152463 (= lambda!228652 lambda!228604)))

(declare-fun bs!1152464 () Bool)

(assert (= bs!1152464 (and d!1529549 start!491398)))

(assert (=> bs!1152464 (= lambda!228652 lambda!228601)))

(declare-fun lt!1945358 () ListMap!6231)

(assert (=> d!1529549 (invariantList!1700 (toList!6760 lt!1945358))))

(declare-fun e!2986331 () ListMap!6231)

(assert (=> d!1529549 (= lt!1945358 e!2986331)))

(declare-fun c!815394 () Bool)

(assert (=> d!1529549 (= c!815394 ((_ is Cons!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529549 (forall!12136 (toList!6759 lm!2709) lambda!228652)))

(assert (=> d!1529549 (= (extractMap!2367 (toList!6759 lm!2709)) lt!1945358)))

(declare-fun b!4783224 () Bool)

(assert (=> b!4783224 (= e!2986331 (addToMapMapFromBucket!1665 (_2!31559 (h!60446 (toList!6759 lm!2709))) (extractMap!2367 (t!361600 (toList!6759 lm!2709)))))))

(declare-fun b!4783225 () Bool)

(assert (=> b!4783225 (= e!2986331 (ListMap!6232 Nil!54025))))

(assert (= (and d!1529549 c!815394) b!4783224))

(assert (= (and d!1529549 (not c!815394)) b!4783225))

(declare-fun m!5761012 () Bool)

(assert (=> d!1529549 m!5761012))

(declare-fun m!5761014 () Bool)

(assert (=> d!1529549 m!5761014))

(declare-fun m!5761016 () Bool)

(assert (=> b!4783224 m!5761016))

(assert (=> b!4783224 m!5761016))

(declare-fun m!5761018 () Bool)

(assert (=> b!4783224 m!5761018))

(assert (=> b!4782977 d!1529549))

(declare-fun bs!1152465 () Bool)

(declare-fun d!1529551 () Bool)

(assert (= bs!1152465 (and d!1529551 d!1529443)))

(declare-fun lambda!228653 () Int)

(assert (=> bs!1152465 (= lambda!228653 lambda!228617)))

(declare-fun bs!1152466 () Bool)

(assert (= bs!1152466 (and d!1529551 d!1529511)))

(assert (=> bs!1152466 (= lambda!228653 lambda!228647)))

(declare-fun bs!1152467 () Bool)

(assert (= bs!1152467 (and d!1529551 d!1529495)))

(assert (=> bs!1152467 (= lambda!228653 lambda!228638)))

(declare-fun bs!1152468 () Bool)

(assert (= bs!1152468 (and d!1529551 d!1529549)))

(assert (=> bs!1152468 (= lambda!228653 lambda!228652)))

(declare-fun bs!1152469 () Bool)

(assert (= bs!1152469 (and d!1529551 d!1529533)))

(assert (=> bs!1152469 (= lambda!228653 lambda!228651)))

(declare-fun bs!1152470 () Bool)

(assert (= bs!1152470 (and d!1529551 d!1529469)))

(assert (=> bs!1152470 (= lambda!228653 lambda!228623)))

(declare-fun bs!1152471 () Bool)

(assert (= bs!1152471 (and d!1529551 d!1529521)))

(assert (=> bs!1152471 (not (= lambda!228653 lambda!228648))))

(declare-fun bs!1152472 () Bool)

(assert (= bs!1152472 (and d!1529551 d!1529485)))

(assert (=> bs!1152472 (= lambda!228653 lambda!228632)))

(declare-fun bs!1152473 () Bool)

(assert (= bs!1152473 (and d!1529551 d!1529493)))

(assert (=> bs!1152473 (not (= lambda!228653 lambda!228635))))

(declare-fun bs!1152474 () Bool)

(assert (= bs!1152474 (and d!1529551 d!1529523)))

(assert (=> bs!1152474 (= lambda!228653 lambda!228650)))

(declare-fun bs!1152475 () Bool)

(assert (= bs!1152475 (and d!1529551 d!1529439)))

(assert (=> bs!1152475 (= lambda!228653 lambda!228604)))

(declare-fun bs!1152476 () Bool)

(assert (= bs!1152476 (and d!1529551 start!491398)))

(assert (=> bs!1152476 (= lambda!228653 lambda!228601)))

(assert (=> d!1529551 (contains!17575 lm!2709 (hash!4841 hashF!1687 key!6641))))

(declare-fun lt!1945367 () Unit!139346)

(assert (=> d!1529551 (= lt!1945367 (choose!34330 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529551 (forall!12136 (toList!6759 lm!2709) lambda!228653)))

(assert (=> d!1529551 (= (lemmaInGenMapThenLongMapContainsHash!1036 lm!2709 key!6641 hashF!1687) lt!1945367)))

(declare-fun bs!1152477 () Bool)

(assert (= bs!1152477 d!1529551))

(assert (=> bs!1152477 m!5760676))

(assert (=> bs!1152477 m!5760676))

(assert (=> bs!1152477 m!5760970))

(declare-fun m!5761024 () Bool)

(assert (=> bs!1152477 m!5761024))

(declare-fun m!5761028 () Bool)

(assert (=> bs!1152477 m!5761028))

(assert (=> b!4782977 d!1529551))

(declare-fun d!1529553 () Bool)

(assert (=> d!1529553 (= (apply!12895 lm!2709 lt!1945161) (get!18381 (getValueByKey!2292 (toList!6759 lm!2709) lt!1945161)))))

(declare-fun bs!1152478 () Bool)

(assert (= bs!1152478 d!1529553))

(declare-fun m!5761030 () Bool)

(assert (=> bs!1152478 m!5761030))

(assert (=> bs!1152478 m!5761030))

(declare-fun m!5761032 () Bool)

(assert (=> bs!1152478 m!5761032))

(assert (=> b!4782977 d!1529553))

(declare-fun d!1529557 () Bool)

(declare-fun e!2986341 () Bool)

(assert (=> d!1529557 e!2986341))

(declare-fun res!2031324 () Bool)

(assert (=> d!1529557 (=> res!2031324 e!2986341)))

(declare-fun lt!1945375 () Bool)

(assert (=> d!1529557 (= res!2031324 (not lt!1945375))))

(declare-fun lt!1945372 () Bool)

(assert (=> d!1529557 (= lt!1945375 lt!1945372)))

(declare-fun lt!1945373 () Unit!139346)

(declare-fun e!2986342 () Unit!139346)

(assert (=> d!1529557 (= lt!1945373 e!2986342)))

(declare-fun c!815398 () Bool)

(assert (=> d!1529557 (= c!815398 lt!1945372)))

(assert (=> d!1529557 (= lt!1945372 (containsKey!3834 (toList!6759 lm!2709) lt!1945161))))

(assert (=> d!1529557 (= (contains!17575 lm!2709 lt!1945161) lt!1945375)))

(declare-fun b!4783238 () Bool)

(declare-fun lt!1945374 () Unit!139346)

(assert (=> b!4783238 (= e!2986342 lt!1945374)))

(assert (=> b!4783238 (= lt!1945374 (lemmaContainsKeyImpliesGetValueByKeyDefined!2087 (toList!6759 lm!2709) lt!1945161))))

(assert (=> b!4783238 (isDefined!10102 (getValueByKey!2292 (toList!6759 lm!2709) lt!1945161))))

(declare-fun b!4783239 () Bool)

(declare-fun Unit!139358 () Unit!139346)

(assert (=> b!4783239 (= e!2986342 Unit!139358)))

(declare-fun b!4783240 () Bool)

(assert (=> b!4783240 (= e!2986341 (isDefined!10102 (getValueByKey!2292 (toList!6759 lm!2709) lt!1945161)))))

(assert (= (and d!1529557 c!815398) b!4783238))

(assert (= (and d!1529557 (not c!815398)) b!4783239))

(assert (= (and d!1529557 (not res!2031324)) b!4783240))

(declare-fun m!5761038 () Bool)

(assert (=> d!1529557 m!5761038))

(declare-fun m!5761040 () Bool)

(assert (=> b!4783238 m!5761040))

(assert (=> b!4783238 m!5761030))

(assert (=> b!4783238 m!5761030))

(declare-fun m!5761042 () Bool)

(assert (=> b!4783238 m!5761042))

(assert (=> b!4783240 m!5761030))

(assert (=> b!4783240 m!5761030))

(assert (=> b!4783240 m!5761042))

(assert (=> b!4782977 d!1529557))

(declare-fun b!4783245 () Bool)

(declare-fun e!2986345 () Bool)

(declare-fun tp!1357529 () Bool)

(declare-fun tp!1357530 () Bool)

(assert (=> b!4783245 (= e!2986345 (and tp!1357529 tp!1357530))))

(assert (=> b!4782981 (= tp!1357524 e!2986345)))

(assert (= (and b!4782981 ((_ is Cons!54026) (toList!6759 lm!2709))) b!4783245))

(declare-fun b_lambda!185847 () Bool)

(assert (= b_lambda!185839 (or start!491398 b_lambda!185847)))

(declare-fun bs!1152487 () Bool)

(declare-fun d!1529563 () Bool)

(assert (= bs!1152487 (and d!1529563 start!491398)))

(assert (=> bs!1152487 (= (dynLambda!22020 lambda!228601 (h!60446 (toList!6759 lt!1945162))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))

(declare-fun m!5761048 () Bool)

(assert (=> bs!1152487 m!5761048))

(assert (=> b!4783158 d!1529563))

(declare-fun b_lambda!185849 () Bool)

(assert (= b_lambda!185841 (or start!491398 b_lambda!185849)))

(declare-fun bs!1152488 () Bool)

(declare-fun d!1529565 () Bool)

(assert (= bs!1152488 (and d!1529565 start!491398)))

(assert (=> bs!1152488 (= (dynLambda!22020 lambda!228601 (h!60446 (toList!6759 lm!2709))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(declare-fun m!5761052 () Bool)

(assert (=> bs!1152488 m!5761052))

(assert (=> b!4783185 d!1529565))

(declare-fun b_lambda!185851 () Bool)

(assert (= b_lambda!185835 (or start!491398 b_lambda!185851)))

(declare-fun bs!1152489 () Bool)

(declare-fun d!1529569 () Bool)

(assert (= bs!1152489 (and d!1529569 start!491398)))

(assert (=> bs!1152489 (= (dynLambda!22020 lambda!228601 lt!1945157) (noDuplicateKeys!2298 (_2!31559 lt!1945157)))))

(declare-fun m!5761054 () Bool)

(assert (=> bs!1152489 m!5761054))

(assert (=> d!1529435 d!1529569))

(declare-fun b_lambda!185853 () Bool)

(assert (= b_lambda!185845 (or start!491398 b_lambda!185853)))

(declare-fun bs!1152490 () Bool)

(declare-fun d!1529571 () Bool)

(assert (= bs!1152490 (and d!1529571 start!491398)))

(assert (=> bs!1152490 (= (dynLambda!22020 lambda!228601 lt!1945171) (noDuplicateKeys!2298 (_2!31559 lt!1945171)))))

(declare-fun m!5761056 () Bool)

(assert (=> bs!1152490 m!5761056))

(assert (=> d!1529545 d!1529571))

(check-sat (not b!4783077) (not d!1529473) (not d!1529551) (not d!1529443) (not b!4783187) (not b!4783166) (not b!4783123) (not d!1529511) (not bm!334773) (not d!1529539) (not b!4783190) (not b!4783128) (not b!4783014) (not b!4783151) (not d!1529537) (not d!1529527) (not b!4783213) (not d!1529533) (not b!4783120) (not b!4783168) (not b!4783201) (not b!4783159) (not b!4783006) (not b!4783124) (not b!4782985) (not b!4783186) (not b!4783223) (not d!1529549) (not d!1529485) (not b!4783199) (not b!4783174) (not b!4783076) (not b!4783217) (not b!4783214) (not d!1529523) (not bs!1152488) (not d!1529509) (not b!4783222) (not b!4783202) (not b!4783215) (not d!1529501) (not d!1529493) (not b_lambda!185847) (not b!4783209) (not b!4783208) (not d!1529495) (not b!4783206) (not b!4783125) (not b!4783122) (not b!4783005) (not b!4783245) (not d!1529545) (not d!1529483) (not b!4783004) (not b!4783240) (not b!4783216) (not d!1529477) tp_is_empty!33263 (not b!4783207) (not d!1529521) (not b!4783200) (not d!1529469) (not d!1529465) (not b!4783192) (not b!4783176) (not b!4783203) (not b!4783075) (not b_lambda!185851) (not d!1529491) (not d!1529541) (not b!4783002) (not d!1529543) (not d!1529525) (not b!4783238) (not b!4783126) (not b!4783142) (not d!1529557) (not d!1529553) (not b!4783197) (not b_lambda!185853) (not bs!1152487) (not b!4783149) (not d!1529515) (not bs!1152489) (not d!1529489) (not d!1529435) (not b!4783189) (not b_lambda!185849) (not bs!1152490) (not d!1529437) (not b!4783003) (not b!4783224) tp_is_empty!33261 (not b!4783205) (not b!4783078) (not bm!334774) (not d!1529439))
(check-sat)
(get-model)

(assert (=> d!1529511 d!1529507))

(assert (=> d!1529511 d!1529509))

(declare-fun d!1529619 () Bool)

(assert (=> d!1529619 (not (containsKey!3831 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709)))) key!6641))))

(assert (=> d!1529619 true))

(declare-fun _$39!397 () Unit!139346)

(assert (=> d!1529619 (= (choose!34333 lm!2709 key!6641 (_1!31559 (h!60446 (toList!6759 lm!2709))) hashF!1687) _$39!397)))

(declare-fun bs!1152554 () Bool)

(assert (= bs!1152554 d!1529619))

(assert (=> bs!1152554 m!5760626))

(assert (=> bs!1152554 m!5760626))

(assert (=> bs!1152554 m!5760628))

(assert (=> d!1529511 d!1529619))

(declare-fun d!1529621 () Bool)

(declare-fun res!2031353 () Bool)

(declare-fun e!2986381 () Bool)

(assert (=> d!1529621 (=> res!2031353 e!2986381)))

(assert (=> d!1529621 (= res!2031353 ((_ is Nil!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529621 (= (forall!12136 (toList!6759 lm!2709) lambda!228647) e!2986381)))

(declare-fun b!4783293 () Bool)

(declare-fun e!2986382 () Bool)

(assert (=> b!4783293 (= e!2986381 e!2986382)))

(declare-fun res!2031354 () Bool)

(assert (=> b!4783293 (=> (not res!2031354) (not e!2986382))))

(assert (=> b!4783293 (= res!2031354 (dynLambda!22020 lambda!228647 (h!60446 (toList!6759 lm!2709))))))

(declare-fun b!4783294 () Bool)

(assert (=> b!4783294 (= e!2986382 (forall!12136 (t!361600 (toList!6759 lm!2709)) lambda!228647))))

(assert (= (and d!1529621 (not res!2031353)) b!4783293))

(assert (= (and b!4783293 res!2031354) b!4783294))

(declare-fun b_lambda!185867 () Bool)

(assert (=> (not b_lambda!185867) (not b!4783293)))

(declare-fun m!5761182 () Bool)

(assert (=> b!4783293 m!5761182))

(declare-fun m!5761184 () Bool)

(assert (=> b!4783294 m!5761184))

(assert (=> d!1529511 d!1529621))

(declare-fun d!1529623 () Bool)

(declare-fun res!2031359 () Bool)

(declare-fun e!2986387 () Bool)

(assert (=> d!1529623 (=> res!2031359 e!2986387)))

(assert (=> d!1529623 (= res!2031359 (and ((_ is Cons!54025) (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (= (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) key!6641)))))

(assert (=> d!1529623 (= (containsKey!3832 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641) e!2986387)))

(declare-fun b!4783299 () Bool)

(declare-fun e!2986388 () Bool)

(assert (=> b!4783299 (= e!2986387 e!2986388)))

(declare-fun res!2031360 () Bool)

(assert (=> b!4783299 (=> (not res!2031360) (not e!2986388))))

(assert (=> b!4783299 (= res!2031360 ((_ is Cons!54025) (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))))))

(declare-fun b!4783300 () Bool)

(assert (=> b!4783300 (= e!2986388 (containsKey!3832 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) key!6641))))

(assert (= (and d!1529623 (not res!2031359)) b!4783299))

(assert (= (and b!4783299 res!2031360) b!4783300))

(declare-fun m!5761186 () Bool)

(assert (=> b!4783300 m!5761186))

(assert (=> d!1529477 d!1529623))

(declare-fun d!1529625 () Bool)

(declare-fun lt!1945408 () Bool)

(declare-fun content!9660 (List!54151) (InoxSet K!15589))

(assert (=> d!1529625 (= lt!1945408 (select (content!9660 (keys!19685 (extractMap!2367 (toList!6759 lm!2709)))) key!6641))))

(declare-fun e!2986394 () Bool)

(assert (=> d!1529625 (= lt!1945408 e!2986394)))

(declare-fun res!2031365 () Bool)

(assert (=> d!1529625 (=> (not res!2031365) (not e!2986394))))

(assert (=> d!1529625 (= res!2031365 ((_ is Cons!54027) (keys!19685 (extractMap!2367 (toList!6759 lm!2709)))))))

(assert (=> d!1529625 (= (contains!17578 (keys!19685 (extractMap!2367 (toList!6759 lm!2709))) key!6641) lt!1945408)))

(declare-fun b!4783305 () Bool)

(declare-fun e!2986393 () Bool)

(assert (=> b!4783305 (= e!2986394 e!2986393)))

(declare-fun res!2031366 () Bool)

(assert (=> b!4783305 (=> res!2031366 e!2986393)))

(assert (=> b!4783305 (= res!2031366 (= (h!60447 (keys!19685 (extractMap!2367 (toList!6759 lm!2709)))) key!6641))))

(declare-fun b!4783306 () Bool)

(assert (=> b!4783306 (= e!2986393 (contains!17578 (t!361601 (keys!19685 (extractMap!2367 (toList!6759 lm!2709)))) key!6641))))

(assert (= (and d!1529625 res!2031365) b!4783305))

(assert (= (and b!4783305 (not res!2031366)) b!4783306))

(assert (=> d!1529625 m!5760938))

(declare-fun m!5761188 () Bool)

(assert (=> d!1529625 m!5761188))

(declare-fun m!5761190 () Bool)

(assert (=> d!1529625 m!5761190))

(declare-fun m!5761192 () Bool)

(assert (=> b!4783306 m!5761192))

(assert (=> b!4783201 d!1529625))

(declare-fun b!4783314 () Bool)

(assert (=> b!4783314 true))

(declare-fun d!1529627 () Bool)

(declare-fun e!2986397 () Bool)

(assert (=> d!1529627 e!2986397))

(declare-fun res!2031373 () Bool)

(assert (=> d!1529627 (=> (not res!2031373) (not e!2986397))))

(declare-fun lt!1945411 () List!54151)

(declare-fun noDuplicate!902 (List!54151) Bool)

(assert (=> d!1529627 (= res!2031373 (noDuplicate!902 lt!1945411))))

(assert (=> d!1529627 (= lt!1945411 (getKeysList!1046 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))))

(assert (=> d!1529627 (= (keys!19685 (extractMap!2367 (toList!6759 lm!2709))) lt!1945411)))

(declare-fun b!4783313 () Bool)

(declare-fun res!2031375 () Bool)

(assert (=> b!4783313 (=> (not res!2031375) (not e!2986397))))

(declare-fun length!660 (List!54151) Int)

(declare-fun length!661 (List!54149) Int)

(assert (=> b!4783313 (= res!2031375 (= (length!660 lt!1945411) (length!661 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))))))

(declare-fun res!2031374 () Bool)

(assert (=> b!4783314 (=> (not res!2031374) (not e!2986397))))

(declare-fun lambda!228666 () Int)

(declare-fun forall!12137 (List!54151 Int) Bool)

(assert (=> b!4783314 (= res!2031374 (forall!12137 lt!1945411 lambda!228666))))

(declare-fun b!4783315 () Bool)

(declare-fun lambda!228667 () Int)

(declare-fun map!12183 (List!54149 Int) List!54151)

(assert (=> b!4783315 (= e!2986397 (= (content!9660 lt!1945411) (content!9660 (map!12183 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) lambda!228667))))))

(assert (= (and d!1529627 res!2031373) b!4783313))

(assert (= (and b!4783313 res!2031375) b!4783314))

(assert (= (and b!4783314 res!2031374) b!4783315))

(declare-fun m!5761194 () Bool)

(assert (=> d!1529627 m!5761194))

(assert (=> d!1529627 m!5760936))

(declare-fun m!5761196 () Bool)

(assert (=> b!4783313 m!5761196))

(declare-fun m!5761198 () Bool)

(assert (=> b!4783313 m!5761198))

(declare-fun m!5761200 () Bool)

(assert (=> b!4783314 m!5761200))

(declare-fun m!5761202 () Bool)

(assert (=> b!4783315 m!5761202))

(declare-fun m!5761204 () Bool)

(assert (=> b!4783315 m!5761204))

(assert (=> b!4783315 m!5761204))

(declare-fun m!5761206 () Bool)

(assert (=> b!4783315 m!5761206))

(assert (=> b!4783201 d!1529627))

(declare-fun d!1529629 () Bool)

(declare-fun res!2031376 () Bool)

(declare-fun e!2986398 () Bool)

(assert (=> d!1529629 (=> res!2031376 e!2986398)))

(assert (=> d!1529629 (= res!2031376 (and ((_ is Cons!54025) (t!361599 (_2!31559 (h!60446 (toList!6759 lm!2709))))) (= (_1!31558 (h!60445 (t!361599 (_2!31559 (h!60446 (toList!6759 lm!2709)))))) key!6641)))))

(assert (=> d!1529629 (= (containsKey!3831 (t!361599 (_2!31559 (h!60446 (toList!6759 lm!2709)))) key!6641) e!2986398)))

(declare-fun b!4783318 () Bool)

(declare-fun e!2986399 () Bool)

(assert (=> b!4783318 (= e!2986398 e!2986399)))

(declare-fun res!2031377 () Bool)

(assert (=> b!4783318 (=> (not res!2031377) (not e!2986399))))

(assert (=> b!4783318 (= res!2031377 ((_ is Cons!54025) (t!361599 (_2!31559 (h!60446 (toList!6759 lm!2709))))))))

(declare-fun b!4783319 () Bool)

(assert (=> b!4783319 (= e!2986399 (containsKey!3831 (t!361599 (t!361599 (_2!31559 (h!60446 (toList!6759 lm!2709))))) key!6641))))

(assert (= (and d!1529629 (not res!2031376)) b!4783318))

(assert (= (and b!4783318 res!2031377) b!4783319))

(declare-fun m!5761208 () Bool)

(assert (=> b!4783319 m!5761208))

(assert (=> b!4783174 d!1529629))

(assert (=> d!1529523 d!1529527))

(assert (=> d!1529523 d!1529549))

(declare-fun d!1529631 () Bool)

(assert (=> d!1529631 (contains!17576 (extractMap!2367 (toList!6759 lm!2709)) key!6641)))

(assert (=> d!1529631 true))

(declare-fun _$34!931 () Unit!139346)

(assert (=> d!1529631 (= (choose!34327 lm!2709 key!6641 hashF!1687) _$34!931)))

(declare-fun bs!1152555 () Bool)

(assert (= bs!1152555 d!1529631))

(assert (=> bs!1152555 m!5760670))

(assert (=> bs!1152555 m!5760670))

(assert (=> bs!1152555 m!5760688))

(assert (=> d!1529523 d!1529631))

(declare-fun d!1529633 () Bool)

(declare-fun res!2031378 () Bool)

(declare-fun e!2986400 () Bool)

(assert (=> d!1529633 (=> res!2031378 e!2986400)))

(assert (=> d!1529633 (= res!2031378 ((_ is Nil!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529633 (= (forall!12136 (toList!6759 lm!2709) lambda!228650) e!2986400)))

(declare-fun b!4783320 () Bool)

(declare-fun e!2986401 () Bool)

(assert (=> b!4783320 (= e!2986400 e!2986401)))

(declare-fun res!2031379 () Bool)

(assert (=> b!4783320 (=> (not res!2031379) (not e!2986401))))

(assert (=> b!4783320 (= res!2031379 (dynLambda!22020 lambda!228650 (h!60446 (toList!6759 lm!2709))))))

(declare-fun b!4783321 () Bool)

(assert (=> b!4783321 (= e!2986401 (forall!12136 (t!361600 (toList!6759 lm!2709)) lambda!228650))))

(assert (= (and d!1529633 (not res!2031378)) b!4783320))

(assert (= (and b!4783320 res!2031379) b!4783321))

(declare-fun b_lambda!185869 () Bool)

(assert (=> (not b_lambda!185869) (not b!4783320)))

(declare-fun m!5761210 () Bool)

(assert (=> b!4783320 m!5761210))

(declare-fun m!5761212 () Bool)

(assert (=> b!4783321 m!5761212))

(assert (=> d!1529523 d!1529633))

(assert (=> d!1529501 d!1529499))

(assert (=> b!4783122 d!1529623))

(declare-fun d!1529635 () Bool)

(assert (=> d!1529635 (containsKey!3832 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641)))

(declare-fun lt!1945414 () Unit!139346)

(declare-fun choose!34338 (List!54149 K!15589) Unit!139346)

(assert (=> d!1529635 (= lt!1945414 (choose!34338 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))

(assert (=> d!1529635 (invariantList!1700 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))))

(assert (=> d!1529635 (= (lemmaInGetKeysListThenContainsKey!1046 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641) lt!1945414)))

(declare-fun bs!1152556 () Bool)

(assert (= bs!1152556 d!1529635))

(assert (=> bs!1152556 m!5760822))

(declare-fun m!5761214 () Bool)

(assert (=> bs!1152556 m!5761214))

(declare-fun m!5761216 () Bool)

(assert (=> bs!1152556 m!5761216))

(assert (=> b!4783122 d!1529635))

(declare-fun d!1529637 () Bool)

(declare-fun res!2031380 () Bool)

(declare-fun e!2986402 () Bool)

(assert (=> d!1529637 (=> res!2031380 e!2986402)))

(assert (=> d!1529637 (= res!2031380 ((_ is Nil!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529637 (= (forall!12136 (toList!6759 lt!1945162) lambda!228648) e!2986402)))

(declare-fun b!4783322 () Bool)

(declare-fun e!2986403 () Bool)

(assert (=> b!4783322 (= e!2986402 e!2986403)))

(declare-fun res!2031381 () Bool)

(assert (=> b!4783322 (=> (not res!2031381) (not e!2986403))))

(assert (=> b!4783322 (= res!2031381 (dynLambda!22020 lambda!228648 (h!60446 (toList!6759 lt!1945162))))))

(declare-fun b!4783323 () Bool)

(assert (=> b!4783323 (= e!2986403 (forall!12136 (t!361600 (toList!6759 lt!1945162)) lambda!228648))))

(assert (= (and d!1529637 (not res!2031380)) b!4783322))

(assert (= (and b!4783322 res!2031381) b!4783323))

(declare-fun b_lambda!185871 () Bool)

(assert (=> (not b_lambda!185871) (not b!4783322)))

(declare-fun m!5761218 () Bool)

(assert (=> b!4783322 m!5761218))

(declare-fun m!5761220 () Bool)

(assert (=> b!4783323 m!5761220))

(assert (=> d!1529521 d!1529637))

(declare-fun d!1529639 () Bool)

(declare-fun lt!1945415 () Bool)

(assert (=> d!1529639 (= lt!1945415 (select (content!9660 (keys!19685 (extractMap!2367 (toList!6759 lt!1945162)))) key!6641))))

(declare-fun e!2986405 () Bool)

(assert (=> d!1529639 (= lt!1945415 e!2986405)))

(declare-fun res!2031382 () Bool)

(assert (=> d!1529639 (=> (not res!2031382) (not e!2986405))))

(assert (=> d!1529639 (= res!2031382 ((_ is Cons!54027) (keys!19685 (extractMap!2367 (toList!6759 lt!1945162)))))))

(assert (=> d!1529639 (= (contains!17578 (keys!19685 (extractMap!2367 (toList!6759 lt!1945162))) key!6641) lt!1945415)))

(declare-fun b!4783324 () Bool)

(declare-fun e!2986404 () Bool)

(assert (=> b!4783324 (= e!2986405 e!2986404)))

(declare-fun res!2031383 () Bool)

(assert (=> b!4783324 (=> res!2031383 e!2986404)))

(assert (=> b!4783324 (= res!2031383 (= (h!60447 (keys!19685 (extractMap!2367 (toList!6759 lt!1945162)))) key!6641))))

(declare-fun b!4783325 () Bool)

(assert (=> b!4783325 (= e!2986404 (contains!17578 (t!361601 (keys!19685 (extractMap!2367 (toList!6759 lt!1945162)))) key!6641))))

(assert (= (and d!1529639 res!2031382) b!4783324))

(assert (= (and b!4783324 (not res!2031383)) b!4783325))

(assert (=> d!1529639 m!5760818))

(declare-fun m!5761222 () Bool)

(assert (=> d!1529639 m!5761222))

(declare-fun m!5761224 () Bool)

(assert (=> d!1529639 m!5761224))

(declare-fun m!5761226 () Bool)

(assert (=> b!4783325 m!5761226))

(assert (=> b!4783124 d!1529639))

(declare-fun bs!1152557 () Bool)

(declare-fun b!4783327 () Bool)

(assert (= bs!1152557 (and b!4783327 b!4783314)))

(declare-fun lambda!228668 () Int)

(assert (=> bs!1152557 (= (= (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= lambda!228668 lambda!228666))))

(assert (=> b!4783327 true))

(declare-fun bs!1152558 () Bool)

(declare-fun b!4783328 () Bool)

(assert (= bs!1152558 (and b!4783328 b!4783315)))

(declare-fun lambda!228669 () Int)

(assert (=> bs!1152558 (= lambda!228669 lambda!228667)))

(declare-fun d!1529641 () Bool)

(declare-fun e!2986406 () Bool)

(assert (=> d!1529641 e!2986406))

(declare-fun res!2031384 () Bool)

(assert (=> d!1529641 (=> (not res!2031384) (not e!2986406))))

(declare-fun lt!1945416 () List!54151)

(assert (=> d!1529641 (= res!2031384 (noDuplicate!902 lt!1945416))))

(assert (=> d!1529641 (= lt!1945416 (getKeysList!1046 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))))))

(assert (=> d!1529641 (= (keys!19685 (extractMap!2367 (toList!6759 lt!1945162))) lt!1945416)))

(declare-fun b!4783326 () Bool)

(declare-fun res!2031386 () Bool)

(assert (=> b!4783326 (=> (not res!2031386) (not e!2986406))))

(assert (=> b!4783326 (= res!2031386 (= (length!660 lt!1945416) (length!661 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))))))

(declare-fun res!2031385 () Bool)

(assert (=> b!4783327 (=> (not res!2031385) (not e!2986406))))

(assert (=> b!4783327 (= res!2031385 (forall!12137 lt!1945416 lambda!228668))))

(assert (=> b!4783328 (= e!2986406 (= (content!9660 lt!1945416) (content!9660 (map!12183 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) lambda!228669))))))

(assert (= (and d!1529641 res!2031384) b!4783326))

(assert (= (and b!4783326 res!2031386) b!4783327))

(assert (= (and b!4783327 res!2031385) b!4783328))

(declare-fun m!5761228 () Bool)

(assert (=> d!1529641 m!5761228))

(assert (=> d!1529641 m!5760816))

(declare-fun m!5761230 () Bool)

(assert (=> b!4783326 m!5761230))

(declare-fun m!5761232 () Bool)

(assert (=> b!4783326 m!5761232))

(declare-fun m!5761234 () Bool)

(assert (=> b!4783327 m!5761234))

(declare-fun m!5761236 () Bool)

(assert (=> b!4783328 m!5761236))

(declare-fun m!5761238 () Bool)

(assert (=> b!4783328 m!5761238))

(assert (=> b!4783328 m!5761238))

(declare-fun m!5761240 () Bool)

(assert (=> b!4783328 m!5761240))

(assert (=> b!4783124 d!1529641))

(assert (=> b!4783120 d!1529641))

(declare-fun d!1529643 () Bool)

(assert (=> d!1529643 (= (isEmpty!29367 lt!1945183) (not ((_ is Some!12955) lt!1945183)))))

(assert (=> d!1529437 d!1529643))

(declare-fun d!1529645 () Bool)

(declare-fun res!2031391 () Bool)

(declare-fun e!2986411 () Bool)

(assert (=> d!1529645 (=> res!2031391 e!2986411)))

(assert (=> d!1529645 (= res!2031391 (not ((_ is Cons!54025) lt!1945167)))))

(assert (=> d!1529645 (= (noDuplicateKeys!2298 lt!1945167) e!2986411)))

(declare-fun b!4783333 () Bool)

(declare-fun e!2986412 () Bool)

(assert (=> b!4783333 (= e!2986411 e!2986412)))

(declare-fun res!2031392 () Bool)

(assert (=> b!4783333 (=> (not res!2031392) (not e!2986412))))

(assert (=> b!4783333 (= res!2031392 (not (containsKey!3831 (t!361599 lt!1945167) (_1!31558 (h!60445 lt!1945167)))))))

(declare-fun b!4783334 () Bool)

(assert (=> b!4783334 (= e!2986412 (noDuplicateKeys!2298 (t!361599 lt!1945167)))))

(assert (= (and d!1529645 (not res!2031391)) b!4783333))

(assert (= (and b!4783333 res!2031392) b!4783334))

(declare-fun m!5761242 () Bool)

(assert (=> b!4783333 m!5761242))

(declare-fun m!5761244 () Bool)

(assert (=> b!4783334 m!5761244))

(assert (=> d!1529437 d!1529645))

(declare-fun d!1529647 () Bool)

(declare-fun res!2031393 () Bool)

(declare-fun e!2986413 () Bool)

(assert (=> d!1529647 (=> res!2031393 e!2986413)))

(assert (=> d!1529647 (= res!2031393 (and ((_ is Cons!54025) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) key!6641)))))

(assert (=> d!1529647 (= (containsKey!3832 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641) e!2986413)))

(declare-fun b!4783335 () Bool)

(declare-fun e!2986414 () Bool)

(assert (=> b!4783335 (= e!2986413 e!2986414)))

(declare-fun res!2031394 () Bool)

(assert (=> b!4783335 (=> (not res!2031394) (not e!2986414))))

(assert (=> b!4783335 (= res!2031394 ((_ is Cons!54025) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))))

(declare-fun b!4783336 () Bool)

(assert (=> b!4783336 (= e!2986414 (containsKey!3832 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) key!6641))))

(assert (= (and d!1529647 (not res!2031393)) b!4783335))

(assert (= (and b!4783335 res!2031394) b!4783336))

(declare-fun m!5761246 () Bool)

(assert (=> b!4783336 m!5761246))

(assert (=> b!4783199 d!1529647))

(declare-fun d!1529649 () Bool)

(assert (=> d!1529649 (containsKey!3832 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641)))

(declare-fun lt!1945417 () Unit!139346)

(assert (=> d!1529649 (= lt!1945417 (choose!34338 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))

(assert (=> d!1529649 (invariantList!1700 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))))

(assert (=> d!1529649 (= (lemmaInGetKeysListThenContainsKey!1046 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641) lt!1945417)))

(declare-fun bs!1152559 () Bool)

(assert (= bs!1152559 d!1529649))

(assert (=> bs!1152559 m!5760942))

(declare-fun m!5761248 () Bool)

(assert (=> bs!1152559 m!5761248))

(declare-fun m!5761250 () Bool)

(assert (=> bs!1152559 m!5761250))

(assert (=> b!4783199 d!1529649))

(declare-fun d!1529651 () Bool)

(declare-fun lt!1945418 () Bool)

(assert (=> d!1529651 (= lt!1945418 (select (content!9659 (t!361600 (toList!6759 lm!2709))) lt!1945171))))

(declare-fun e!2986415 () Bool)

(assert (=> d!1529651 (= lt!1945418 e!2986415)))

(declare-fun res!2031396 () Bool)

(assert (=> d!1529651 (=> (not res!2031396) (not e!2986415))))

(assert (=> d!1529651 (= res!2031396 ((_ is Cons!54026) (t!361600 (toList!6759 lm!2709))))))

(assert (=> d!1529651 (= (contains!17574 (t!361600 (toList!6759 lm!2709)) lt!1945171) lt!1945418)))

(declare-fun b!4783337 () Bool)

(declare-fun e!2986416 () Bool)

(assert (=> b!4783337 (= e!2986415 e!2986416)))

(declare-fun res!2031395 () Bool)

(assert (=> b!4783337 (=> res!2031395 e!2986416)))

(assert (=> b!4783337 (= res!2031395 (= (h!60446 (t!361600 (toList!6759 lm!2709))) lt!1945171))))

(declare-fun b!4783338 () Bool)

(assert (=> b!4783338 (= e!2986416 (contains!17574 (t!361600 (t!361600 (toList!6759 lm!2709))) lt!1945171))))

(assert (= (and d!1529651 res!2031396) b!4783337))

(assert (= (and b!4783337 (not res!2031395)) b!4783338))

(declare-fun m!5761252 () Bool)

(assert (=> d!1529651 m!5761252))

(declare-fun m!5761254 () Bool)

(assert (=> d!1529651 m!5761254))

(declare-fun m!5761256 () Bool)

(assert (=> b!4783338 m!5761256))

(assert (=> b!4783222 d!1529651))

(assert (=> b!4783075 d!1529521))

(declare-fun d!1529653 () Bool)

(assert (=> d!1529653 (isDefined!10102 (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945161))))

(declare-fun lt!1945421 () Unit!139346)

(declare-fun choose!34339 (List!54150 (_ BitVec 64)) Unit!139346)

(assert (=> d!1529653 (= lt!1945421 (choose!34339 (toList!6759 lt!1945162) lt!1945161))))

(declare-fun e!2986419 () Bool)

(assert (=> d!1529653 e!2986419))

(declare-fun res!2031399 () Bool)

(assert (=> d!1529653 (=> (not res!2031399) (not e!2986419))))

(assert (=> d!1529653 (= res!2031399 (isStrictlySorted!852 (toList!6759 lt!1945162)))))

(assert (=> d!1529653 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2087 (toList!6759 lt!1945162) lt!1945161) lt!1945421)))

(declare-fun b!4783341 () Bool)

(assert (=> b!4783341 (= e!2986419 (containsKey!3834 (toList!6759 lt!1945162) lt!1945161))))

(assert (= (and d!1529653 res!2031399) b!4783341))

(assert (=> d!1529653 m!5760836))

(assert (=> d!1529653 m!5760836))

(assert (=> d!1529653 m!5760868))

(declare-fun m!5761258 () Bool)

(assert (=> d!1529653 m!5761258))

(declare-fun m!5761260 () Bool)

(assert (=> d!1529653 m!5761260))

(assert (=> b!4783341 m!5760864))

(assert (=> b!4783149 d!1529653))

(declare-fun d!1529655 () Bool)

(declare-fun isEmpty!29369 (Option!12957) Bool)

(assert (=> d!1529655 (= (isDefined!10102 (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945161)) (not (isEmpty!29369 (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945161))))))

(declare-fun bs!1152560 () Bool)

(assert (= bs!1152560 d!1529655))

(assert (=> bs!1152560 m!5760836))

(declare-fun m!5761262 () Bool)

(assert (=> bs!1152560 m!5761262))

(assert (=> b!4783149 d!1529655))

(declare-fun d!1529657 () Bool)

(declare-fun c!815410 () Bool)

(assert (=> d!1529657 (= c!815410 (and ((_ is Cons!54026) (toList!6759 lt!1945162)) (= (_1!31559 (h!60446 (toList!6759 lt!1945162))) lt!1945161)))))

(declare-fun e!2986424 () Option!12957)

(assert (=> d!1529657 (= (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945161) e!2986424)))

(declare-fun b!4783350 () Bool)

(assert (=> b!4783350 (= e!2986424 (Some!12956 (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))

(declare-fun b!4783353 () Bool)

(declare-fun e!2986425 () Option!12957)

(assert (=> b!4783353 (= e!2986425 None!12956)))

(declare-fun b!4783352 () Bool)

(assert (=> b!4783352 (= e!2986425 (getValueByKey!2292 (t!361600 (toList!6759 lt!1945162)) lt!1945161))))

(declare-fun b!4783351 () Bool)

(assert (=> b!4783351 (= e!2986424 e!2986425)))

(declare-fun c!815411 () Bool)

(assert (=> b!4783351 (= c!815411 (and ((_ is Cons!54026) (toList!6759 lt!1945162)) (not (= (_1!31559 (h!60446 (toList!6759 lt!1945162))) lt!1945161))))))

(assert (= (and d!1529657 c!815410) b!4783350))

(assert (= (and d!1529657 (not c!815410)) b!4783351))

(assert (= (and b!4783351 c!815411) b!4783352))

(assert (= (and b!4783351 (not c!815411)) b!4783353))

(declare-fun m!5761264 () Bool)

(assert (=> b!4783352 m!5761264))

(assert (=> b!4783149 d!1529657))

(declare-fun d!1529659 () Bool)

(assert (=> d!1529659 (dynLambda!22020 lambda!228617 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641))))))

(declare-fun lt!1945422 () Unit!139346)

(assert (=> d!1529659 (= lt!1945422 (choose!34324 (toList!6759 lt!1945162) lambda!228617 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))))))

(declare-fun e!2986426 () Bool)

(assert (=> d!1529659 e!2986426))

(declare-fun res!2031400 () Bool)

(assert (=> d!1529659 (=> (not res!2031400) (not e!2986426))))

(assert (=> d!1529659 (= res!2031400 (forall!12136 (toList!6759 lt!1945162) lambda!228617))))

(assert (=> d!1529659 (= (forallContained!4080 (toList!6759 lt!1945162) lambda!228617 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))) lt!1945422)))

(declare-fun b!4783354 () Bool)

(assert (=> b!4783354 (= e!2986426 (contains!17574 (toList!6759 lt!1945162) (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))))))

(assert (= (and d!1529659 res!2031400) b!4783354))

(declare-fun b_lambda!185873 () Bool)

(assert (=> (not b_lambda!185873) (not d!1529659)))

(declare-fun m!5761266 () Bool)

(assert (=> d!1529659 m!5761266))

(declare-fun m!5761268 () Bool)

(assert (=> d!1529659 m!5761268))

(assert (=> d!1529659 m!5760762))

(declare-fun m!5761270 () Bool)

(assert (=> b!4783354 m!5761270))

(assert (=> b!4783077 d!1529659))

(declare-fun d!1529661 () Bool)

(assert (=> d!1529661 (= (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)) (get!18381 (getValueByKey!2292 (toList!6759 lt!1945162) (hash!4841 hashF!1687 key!6641))))))

(declare-fun bs!1152561 () Bool)

(assert (= bs!1152561 d!1529661))

(assert (=> bs!1152561 m!5760676))

(declare-fun m!5761272 () Bool)

(assert (=> bs!1152561 m!5761272))

(assert (=> bs!1152561 m!5761272))

(declare-fun m!5761274 () Bool)

(assert (=> bs!1152561 m!5761274))

(assert (=> b!4783077 d!1529661))

(declare-fun d!1529663 () Bool)

(declare-fun e!2986427 () Bool)

(assert (=> d!1529663 e!2986427))

(declare-fun res!2031401 () Bool)

(assert (=> d!1529663 (=> res!2031401 e!2986427)))

(declare-fun lt!1945426 () Bool)

(assert (=> d!1529663 (= res!2031401 (not lt!1945426))))

(declare-fun lt!1945423 () Bool)

(assert (=> d!1529663 (= lt!1945426 lt!1945423)))

(declare-fun lt!1945424 () Unit!139346)

(declare-fun e!2986428 () Unit!139346)

(assert (=> d!1529663 (= lt!1945424 e!2986428)))

(declare-fun c!815412 () Bool)

(assert (=> d!1529663 (= c!815412 lt!1945423)))

(assert (=> d!1529663 (= lt!1945423 (containsKey!3834 (toList!6759 lt!1945162) (hash!4841 hashF!1687 key!6641)))))

(assert (=> d!1529663 (= (contains!17575 lt!1945162 (hash!4841 hashF!1687 key!6641)) lt!1945426)))

(declare-fun b!4783355 () Bool)

(declare-fun lt!1945425 () Unit!139346)

(assert (=> b!4783355 (= e!2986428 lt!1945425)))

(assert (=> b!4783355 (= lt!1945425 (lemmaContainsKeyImpliesGetValueByKeyDefined!2087 (toList!6759 lt!1945162) (hash!4841 hashF!1687 key!6641)))))

(assert (=> b!4783355 (isDefined!10102 (getValueByKey!2292 (toList!6759 lt!1945162) (hash!4841 hashF!1687 key!6641)))))

(declare-fun b!4783356 () Bool)

(declare-fun Unit!139360 () Unit!139346)

(assert (=> b!4783356 (= e!2986428 Unit!139360)))

(declare-fun b!4783357 () Bool)

(assert (=> b!4783357 (= e!2986427 (isDefined!10102 (getValueByKey!2292 (toList!6759 lt!1945162) (hash!4841 hashF!1687 key!6641))))))

(assert (= (and d!1529663 c!815412) b!4783355))

(assert (= (and d!1529663 (not c!815412)) b!4783356))

(assert (= (and d!1529663 (not res!2031401)) b!4783357))

(assert (=> d!1529663 m!5760676))

(declare-fun m!5761276 () Bool)

(assert (=> d!1529663 m!5761276))

(assert (=> b!4783355 m!5760676))

(declare-fun m!5761278 () Bool)

(assert (=> b!4783355 m!5761278))

(assert (=> b!4783355 m!5760676))

(assert (=> b!4783355 m!5761272))

(assert (=> b!4783355 m!5761272))

(declare-fun m!5761280 () Bool)

(assert (=> b!4783355 m!5761280))

(assert (=> b!4783357 m!5760676))

(assert (=> b!4783357 m!5761272))

(assert (=> b!4783357 m!5761272))

(assert (=> b!4783357 m!5761280))

(assert (=> b!4783077 d!1529663))

(declare-fun e!2986432 () Option!12956)

(declare-fun b!4783358 () Bool)

(assert (=> b!4783358 (= e!2986432 (getPair!812 (t!361599 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641))) key!6641))))

(declare-fun e!2986430 () Bool)

(declare-fun b!4783359 () Bool)

(assert (=> b!4783359 (= e!2986430 (not (containsKey!3831 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1945427 () Option!12956)

(declare-fun b!4783360 () Bool)

(declare-fun e!2986433 () Bool)

(assert (=> b!4783360 (= e!2986433 (contains!17577 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)) (get!18380 lt!1945427)))))

(declare-fun b!4783361 () Bool)

(declare-fun res!2031402 () Bool)

(assert (=> b!4783361 (=> (not res!2031402) (not e!2986433))))

(assert (=> b!4783361 (= res!2031402 (= (_1!31558 (get!18380 lt!1945427)) key!6641))))

(declare-fun b!4783362 () Bool)

(declare-fun e!2986431 () Bool)

(assert (=> b!4783362 (= e!2986431 e!2986433)))

(declare-fun res!2031403 () Bool)

(assert (=> b!4783362 (=> (not res!2031403) (not e!2986433))))

(assert (=> b!4783362 (= res!2031403 (isDefined!10099 lt!1945427))))

(declare-fun d!1529665 () Bool)

(assert (=> d!1529665 e!2986431))

(declare-fun res!2031405 () Bool)

(assert (=> d!1529665 (=> res!2031405 e!2986431)))

(assert (=> d!1529665 (= res!2031405 e!2986430)))

(declare-fun res!2031404 () Bool)

(assert (=> d!1529665 (=> (not res!2031404) (not e!2986430))))

(assert (=> d!1529665 (= res!2031404 (isEmpty!29367 lt!1945427))))

(declare-fun e!2986429 () Option!12956)

(assert (=> d!1529665 (= lt!1945427 e!2986429)))

(declare-fun c!815414 () Bool)

(assert (=> d!1529665 (= c!815414 (and ((_ is Cons!54025) (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641))) (= (_1!31558 (h!60445 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))) key!6641)))))

(assert (=> d!1529665 (noDuplicateKeys!2298 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))))

(assert (=> d!1529665 (= (getPair!812 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)) key!6641) lt!1945427)))

(declare-fun b!4783363 () Bool)

(assert (=> b!4783363 (= e!2986432 None!12955)))

(declare-fun b!4783364 () Bool)

(assert (=> b!4783364 (= e!2986429 e!2986432)))

(declare-fun c!815413 () Bool)

(assert (=> b!4783364 (= c!815413 ((_ is Cons!54025) (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641))))))

(declare-fun b!4783365 () Bool)

(assert (=> b!4783365 (= e!2986429 (Some!12955 (h!60445 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))))))

(assert (= (and d!1529665 c!815414) b!4783365))

(assert (= (and d!1529665 (not c!815414)) b!4783364))

(assert (= (and b!4783364 c!815413) b!4783358))

(assert (= (and b!4783364 (not c!815413)) b!4783363))

(assert (= (and d!1529665 res!2031404) b!4783359))

(assert (= (and d!1529665 (not res!2031405)) b!4783362))

(assert (= (and b!4783362 res!2031403) b!4783361))

(assert (= (and b!4783361 res!2031402) b!4783360))

(declare-fun m!5761282 () Bool)

(assert (=> b!4783358 m!5761282))

(declare-fun m!5761284 () Bool)

(assert (=> b!4783361 m!5761284))

(declare-fun m!5761286 () Bool)

(assert (=> b!4783362 m!5761286))

(assert (=> b!4783360 m!5761284))

(assert (=> b!4783360 m!5760778))

(assert (=> b!4783360 m!5761284))

(declare-fun m!5761288 () Bool)

(assert (=> b!4783360 m!5761288))

(declare-fun m!5761290 () Bool)

(assert (=> d!1529665 m!5761290))

(assert (=> d!1529665 m!5760778))

(declare-fun m!5761292 () Bool)

(assert (=> d!1529665 m!5761292))

(assert (=> b!4783359 m!5760778))

(declare-fun m!5761294 () Bool)

(assert (=> b!4783359 m!5761294))

(assert (=> b!4783077 d!1529665))

(declare-fun d!1529667 () Bool)

(assert (=> d!1529667 (= (isDefined!10099 (getPair!812 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)) key!6641)) (not (isEmpty!29367 (getPair!812 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)) key!6641))))))

(declare-fun bs!1152562 () Bool)

(assert (= bs!1152562 d!1529667))

(assert (=> bs!1152562 m!5760766))

(declare-fun m!5761296 () Bool)

(assert (=> bs!1152562 m!5761296))

(assert (=> b!4783077 d!1529667))

(declare-fun d!1529669 () Bool)

(assert (=> d!1529669 (contains!17574 (toList!6759 lt!1945162) (tuple2!56531 lt!1945241 lt!1945239))))

(declare-fun lt!1945428 () Unit!139346)

(assert (=> d!1529669 (= lt!1945428 (choose!34328 lt!1945162 lt!1945241 lt!1945239))))

(assert (=> d!1529669 (contains!17575 lt!1945162 lt!1945241)))

(assert (=> d!1529669 (= (lemmaGetValueImpliesTupleContained!619 lt!1945162 lt!1945241 lt!1945239) lt!1945428)))

(declare-fun bs!1152563 () Bool)

(assert (= bs!1152563 d!1529669))

(assert (=> bs!1152563 m!5760776))

(declare-fun m!5761298 () Bool)

(assert (=> bs!1152563 m!5761298))

(assert (=> bs!1152563 m!5760774))

(assert (=> b!4783077 d!1529669))

(assert (=> b!4783077 d!1529541))

(declare-fun d!1529671 () Bool)

(declare-fun e!2986434 () Bool)

(assert (=> d!1529671 e!2986434))

(declare-fun res!2031406 () Bool)

(assert (=> d!1529671 (=> res!2031406 e!2986434)))

(declare-fun lt!1945432 () Bool)

(assert (=> d!1529671 (= res!2031406 (not lt!1945432))))

(declare-fun lt!1945429 () Bool)

(assert (=> d!1529671 (= lt!1945432 lt!1945429)))

(declare-fun lt!1945430 () Unit!139346)

(declare-fun e!2986435 () Unit!139346)

(assert (=> d!1529671 (= lt!1945430 e!2986435)))

(declare-fun c!815415 () Bool)

(assert (=> d!1529671 (= c!815415 lt!1945429)))

(assert (=> d!1529671 (= lt!1945429 (containsKey!3834 (toList!6759 lt!1945162) lt!1945241))))

(assert (=> d!1529671 (= (contains!17575 lt!1945162 lt!1945241) lt!1945432)))

(declare-fun b!4783366 () Bool)

(declare-fun lt!1945431 () Unit!139346)

(assert (=> b!4783366 (= e!2986435 lt!1945431)))

(assert (=> b!4783366 (= lt!1945431 (lemmaContainsKeyImpliesGetValueByKeyDefined!2087 (toList!6759 lt!1945162) lt!1945241))))

(assert (=> b!4783366 (isDefined!10102 (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945241))))

(declare-fun b!4783367 () Bool)

(declare-fun Unit!139361 () Unit!139346)

(assert (=> b!4783367 (= e!2986435 Unit!139361)))

(declare-fun b!4783368 () Bool)

(assert (=> b!4783368 (= e!2986434 (isDefined!10102 (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945241)))))

(assert (= (and d!1529671 c!815415) b!4783366))

(assert (= (and d!1529671 (not c!815415)) b!4783367))

(assert (= (and d!1529671 (not res!2031406)) b!4783368))

(declare-fun m!5761300 () Bool)

(assert (=> d!1529671 m!5761300))

(declare-fun m!5761302 () Bool)

(assert (=> b!4783366 m!5761302))

(assert (=> b!4783366 m!5760782))

(assert (=> b!4783366 m!5760782))

(declare-fun m!5761304 () Bool)

(assert (=> b!4783366 m!5761304))

(assert (=> b!4783368 m!5760782))

(assert (=> b!4783368 m!5760782))

(assert (=> b!4783368 m!5761304))

(assert (=> b!4783077 d!1529671))

(declare-fun d!1529673 () Bool)

(declare-fun lt!1945433 () Bool)

(assert (=> d!1529673 (= lt!1945433 (select (content!9659 (toList!6759 lt!1945162)) (tuple2!56531 lt!1945241 lt!1945239)))))

(declare-fun e!2986436 () Bool)

(assert (=> d!1529673 (= lt!1945433 e!2986436)))

(declare-fun res!2031408 () Bool)

(assert (=> d!1529673 (=> (not res!2031408) (not e!2986436))))

(assert (=> d!1529673 (= res!2031408 ((_ is Cons!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529673 (= (contains!17574 (toList!6759 lt!1945162) (tuple2!56531 lt!1945241 lt!1945239)) lt!1945433)))

(declare-fun b!4783369 () Bool)

(declare-fun e!2986437 () Bool)

(assert (=> b!4783369 (= e!2986436 e!2986437)))

(declare-fun res!2031407 () Bool)

(assert (=> b!4783369 (=> res!2031407 e!2986437)))

(assert (=> b!4783369 (= res!2031407 (= (h!60446 (toList!6759 lt!1945162)) (tuple2!56531 lt!1945241 lt!1945239)))))

(declare-fun b!4783370 () Bool)

(assert (=> b!4783370 (= e!2986437 (contains!17574 (t!361600 (toList!6759 lt!1945162)) (tuple2!56531 lt!1945241 lt!1945239)))))

(assert (= (and d!1529673 res!2031408) b!4783369))

(assert (= (and b!4783369 (not res!2031407)) b!4783370))

(assert (=> d!1529673 m!5760858))

(declare-fun m!5761306 () Bool)

(assert (=> d!1529673 m!5761306))

(declare-fun m!5761308 () Bool)

(assert (=> b!4783370 m!5761308))

(assert (=> b!4783077 d!1529673))

(assert (=> b!4783077 d!1529485))

(assert (=> b!4783151 d!1529655))

(assert (=> b!4783151 d!1529657))

(declare-fun bs!1152564 () Bool)

(declare-fun b!4783394 () Bool)

(assert (= bs!1152564 (and b!4783394 b!4783314)))

(declare-fun lambda!228678 () Int)

(assert (=> bs!1152564 (= (= (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= lambda!228678 lambda!228666))))

(declare-fun bs!1152565 () Bool)

(assert (= bs!1152565 (and b!4783394 b!4783327)))

(assert (=> bs!1152565 (= (= (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (= lambda!228678 lambda!228668))))

(assert (=> b!4783394 true))

(declare-fun bs!1152566 () Bool)

(declare-fun b!4783397 () Bool)

(assert (= bs!1152566 (and b!4783397 b!4783314)))

(declare-fun lambda!228679 () Int)

(assert (=> bs!1152566 (= (= (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= lambda!228679 lambda!228666))))

(declare-fun bs!1152567 () Bool)

(assert (= bs!1152567 (and b!4783397 b!4783327)))

(assert (=> bs!1152567 (= (= (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (= lambda!228679 lambda!228668))))

(declare-fun bs!1152568 () Bool)

(assert (= bs!1152568 (and b!4783397 b!4783394)))

(assert (=> bs!1152568 (= (= (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) (= lambda!228679 lambda!228678))))

(assert (=> b!4783397 true))

(declare-fun bs!1152569 () Bool)

(declare-fun b!4783392 () Bool)

(assert (= bs!1152569 (and b!4783392 b!4783314)))

(declare-fun lambda!228680 () Int)

(assert (=> bs!1152569 (= lambda!228680 lambda!228666)))

(declare-fun bs!1152570 () Bool)

(assert (= bs!1152570 (and b!4783392 b!4783327)))

(assert (=> bs!1152570 (= (= (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (= lambda!228680 lambda!228668))))

(declare-fun bs!1152571 () Bool)

(assert (= bs!1152571 (and b!4783392 b!4783394)))

(assert (=> bs!1152571 (= (= (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) (= lambda!228680 lambda!228678))))

(declare-fun bs!1152572 () Bool)

(assert (= bs!1152572 (and b!4783392 b!4783397)))

(assert (=> bs!1152572 (= (= (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))) (= lambda!228680 lambda!228679))))

(assert (=> b!4783392 true))

(declare-fun bs!1152573 () Bool)

(declare-fun b!4783389 () Bool)

(assert (= bs!1152573 (and b!4783389 b!4783315)))

(declare-fun lambda!228681 () Int)

(assert (=> bs!1152573 (= lambda!228681 lambda!228667)))

(declare-fun bs!1152574 () Bool)

(assert (= bs!1152574 (and b!4783389 b!4783328)))

(assert (=> bs!1152574 (= lambda!228681 lambda!228669)))

(declare-fun b!4783390 () Bool)

(declare-fun e!2986446 () Unit!139346)

(declare-fun Unit!139362 () Unit!139346)

(assert (=> b!4783390 (= e!2986446 Unit!139362)))

(declare-fun b!4783391 () Bool)

(declare-fun e!2986449 () Unit!139346)

(declare-fun Unit!139363 () Unit!139346)

(assert (=> b!4783391 (= e!2986449 Unit!139363)))

(declare-fun res!2031415 () Bool)

(declare-fun e!2986447 () Bool)

(assert (=> b!4783392 (=> (not res!2031415) (not e!2986447))))

(declare-fun lt!1945451 () List!54151)

(assert (=> b!4783392 (= res!2031415 (forall!12137 lt!1945451 lambda!228680))))

(declare-fun b!4783393 () Bool)

(declare-fun e!2986448 () List!54151)

(assert (=> b!4783393 (= e!2986448 Nil!54027)))

(assert (=> b!4783394 false))

(declare-fun lt!1945454 () Unit!139346)

(declare-fun forallContained!4081 (List!54151 Int K!15589) Unit!139346)

(assert (=> b!4783394 (= lt!1945454 (forallContained!4081 (getKeysList!1046 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) lambda!228678 (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))))))

(declare-fun Unit!139364 () Unit!139346)

(assert (=> b!4783394 (= e!2986449 Unit!139364)))

(declare-fun b!4783395 () Bool)

(declare-fun res!2031416 () Bool)

(assert (=> b!4783395 (=> (not res!2031416) (not e!2986447))))

(assert (=> b!4783395 (= res!2031416 (= (length!660 lt!1945451) (length!661 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))))))

(assert (=> b!4783389 (= e!2986447 (= (content!9660 lt!1945451) (content!9660 (map!12183 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) lambda!228681))))))

(declare-fun d!1529675 () Bool)

(assert (=> d!1529675 e!2986447))

(declare-fun res!2031417 () Bool)

(assert (=> d!1529675 (=> (not res!2031417) (not e!2986447))))

(assert (=> d!1529675 (= res!2031417 (noDuplicate!902 lt!1945451))))

(assert (=> d!1529675 (= lt!1945451 e!2986448)))

(declare-fun c!815424 () Bool)

(assert (=> d!1529675 (= c!815424 ((_ is Cons!54025) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))))

(assert (=> d!1529675 (invariantList!1700 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))))

(assert (=> d!1529675 (= (getKeysList!1046 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) lt!1945451)))

(declare-fun b!4783396 () Bool)

(assert (=> b!4783396 false))

(declare-fun Unit!139365 () Unit!139346)

(assert (=> b!4783396 (= e!2986446 Unit!139365)))

(assert (=> b!4783397 (= e!2986448 (Cons!54027 (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) (getKeysList!1046 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))))))

(declare-fun c!815422 () Bool)

(assert (=> b!4783397 (= c!815422 (containsKey!3832 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))))))

(declare-fun lt!1945450 () Unit!139346)

(assert (=> b!4783397 (= lt!1945450 e!2986446)))

(declare-fun c!815423 () Bool)

(assert (=> b!4783397 (= c!815423 (contains!17578 (getKeysList!1046 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))))))

(declare-fun lt!1945453 () Unit!139346)

(assert (=> b!4783397 (= lt!1945453 e!2986449)))

(declare-fun lt!1945448 () List!54151)

(assert (=> b!4783397 (= lt!1945448 (getKeysList!1046 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))))))

(declare-fun lt!1945449 () Unit!139346)

(declare-fun lemmaForallContainsAddHeadPreserves!319 (List!54149 List!54151 tuple2!56528) Unit!139346)

(assert (=> b!4783397 (= lt!1945449 (lemmaForallContainsAddHeadPreserves!319 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) lt!1945448 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))))))

(assert (=> b!4783397 (forall!12137 lt!1945448 lambda!228679)))

(declare-fun lt!1945452 () Unit!139346)

(assert (=> b!4783397 (= lt!1945452 lt!1945449)))

(assert (= (and d!1529675 c!815424) b!4783397))

(assert (= (and d!1529675 (not c!815424)) b!4783393))

(assert (= (and b!4783397 c!815422) b!4783396))

(assert (= (and b!4783397 (not c!815422)) b!4783390))

(assert (= (and b!4783397 c!815423) b!4783394))

(assert (= (and b!4783397 (not c!815423)) b!4783391))

(assert (= (and d!1529675 res!2031417) b!4783395))

(assert (= (and b!4783395 res!2031416) b!4783392))

(assert (= (and b!4783392 res!2031415) b!4783389))

(declare-fun m!5761310 () Bool)

(assert (=> d!1529675 m!5761310))

(assert (=> d!1529675 m!5761250))

(declare-fun m!5761312 () Bool)

(assert (=> b!4783394 m!5761312))

(assert (=> b!4783394 m!5761312))

(declare-fun m!5761314 () Bool)

(assert (=> b!4783394 m!5761314))

(declare-fun m!5761316 () Bool)

(assert (=> b!4783395 m!5761316))

(assert (=> b!4783395 m!5761198))

(declare-fun m!5761318 () Bool)

(assert (=> b!4783392 m!5761318))

(assert (=> b!4783397 m!5761312))

(declare-fun m!5761320 () Bool)

(assert (=> b!4783397 m!5761320))

(declare-fun m!5761322 () Bool)

(assert (=> b!4783397 m!5761322))

(declare-fun m!5761324 () Bool)

(assert (=> b!4783397 m!5761324))

(declare-fun m!5761326 () Bool)

(assert (=> b!4783397 m!5761326))

(assert (=> b!4783397 m!5761312))

(declare-fun m!5761328 () Bool)

(assert (=> b!4783389 m!5761328))

(declare-fun m!5761330 () Bool)

(assert (=> b!4783389 m!5761330))

(assert (=> b!4783389 m!5761330))

(declare-fun m!5761332 () Bool)

(assert (=> b!4783389 m!5761332))

(assert (=> b!4783203 d!1529675))

(assert (=> d!1529495 d!1529503))

(assert (=> d!1529495 d!1529499))

(declare-fun d!1529677 () Bool)

(assert (=> d!1529677 (containsKeyBiggerList!496 (tail!9201 (toList!6759 lm!2709)) key!6641)))

(assert (=> d!1529677 true))

(declare-fun _$37!377 () Unit!139346)

(assert (=> d!1529677 (= (choose!34331 lm!2709 key!6641 hashF!1687) _$37!377)))

(declare-fun bs!1152575 () Bool)

(assert (= bs!1152575 d!1529677))

(assert (=> bs!1152575 m!5760608))

(assert (=> bs!1152575 m!5760608))

(assert (=> bs!1152575 m!5760610))

(assert (=> d!1529495 d!1529677))

(declare-fun d!1529679 () Bool)

(declare-fun res!2031418 () Bool)

(declare-fun e!2986450 () Bool)

(assert (=> d!1529679 (=> res!2031418 e!2986450)))

(assert (=> d!1529679 (= res!2031418 ((_ is Nil!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529679 (= (forall!12136 (toList!6759 lm!2709) lambda!228638) e!2986450)))

(declare-fun b!4783400 () Bool)

(declare-fun e!2986451 () Bool)

(assert (=> b!4783400 (= e!2986450 e!2986451)))

(declare-fun res!2031419 () Bool)

(assert (=> b!4783400 (=> (not res!2031419) (not e!2986451))))

(assert (=> b!4783400 (= res!2031419 (dynLambda!22020 lambda!228638 (h!60446 (toList!6759 lm!2709))))))

(declare-fun b!4783401 () Bool)

(assert (=> b!4783401 (= e!2986451 (forall!12136 (t!361600 (toList!6759 lm!2709)) lambda!228638))))

(assert (= (and d!1529679 (not res!2031418)) b!4783400))

(assert (= (and b!4783400 res!2031419) b!4783401))

(declare-fun b_lambda!185875 () Bool)

(assert (=> (not b_lambda!185875) (not b!4783400)))

(declare-fun m!5761334 () Bool)

(assert (=> b!4783400 m!5761334))

(declare-fun m!5761336 () Bool)

(assert (=> b!4783401 m!5761336))

(assert (=> d!1529495 d!1529679))

(declare-fun bs!1152576 () Bool)

(declare-fun b!4783407 () Bool)

(assert (= bs!1152576 (and b!4783407 b!4783327)))

(declare-fun lambda!228682 () Int)

(assert (=> bs!1152576 (= (= (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (= lambda!228682 lambda!228668))))

(declare-fun bs!1152577 () Bool)

(assert (= bs!1152577 (and b!4783407 b!4783314)))

(assert (=> bs!1152577 (= (= (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= lambda!228682 lambda!228666))))

(declare-fun bs!1152578 () Bool)

(assert (= bs!1152578 (and b!4783407 b!4783397)))

(assert (=> bs!1152578 (= (= (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))) (= lambda!228682 lambda!228679))))

(declare-fun bs!1152579 () Bool)

(assert (= bs!1152579 (and b!4783407 b!4783392)))

(assert (=> bs!1152579 (= (= (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= lambda!228682 lambda!228680))))

(declare-fun bs!1152580 () Bool)

(assert (= bs!1152580 (and b!4783407 b!4783394)))

(assert (=> bs!1152580 (= (= (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) (= lambda!228682 lambda!228678))))

(assert (=> b!4783407 true))

(declare-fun bs!1152581 () Bool)

(declare-fun b!4783410 () Bool)

(assert (= bs!1152581 (and b!4783410 b!4783327)))

(declare-fun lambda!228683 () Int)

(assert (=> bs!1152581 (= (= (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (= lambda!228683 lambda!228668))))

(declare-fun bs!1152582 () Bool)

(assert (= bs!1152582 (and b!4783410 b!4783314)))

(assert (=> bs!1152582 (= (= (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= lambda!228683 lambda!228666))))

(declare-fun bs!1152583 () Bool)

(assert (= bs!1152583 (and b!4783410 b!4783397)))

(assert (=> bs!1152583 (= (= (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))) (= lambda!228683 lambda!228679))))

(declare-fun bs!1152584 () Bool)

(assert (= bs!1152584 (and b!4783410 b!4783407)))

(assert (=> bs!1152584 (= (= (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) (= lambda!228683 lambda!228682))))

(declare-fun bs!1152585 () Bool)

(assert (= bs!1152585 (and b!4783410 b!4783392)))

(assert (=> bs!1152585 (= (= (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= lambda!228683 lambda!228680))))

(declare-fun bs!1152586 () Bool)

(assert (= bs!1152586 (and b!4783410 b!4783394)))

(assert (=> bs!1152586 (= (= (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) (= lambda!228683 lambda!228678))))

(assert (=> b!4783410 true))

(declare-fun bs!1152587 () Bool)

(declare-fun b!4783405 () Bool)

(assert (= bs!1152587 (and b!4783405 b!4783327)))

(declare-fun lambda!228684 () Int)

(assert (=> bs!1152587 (= lambda!228684 lambda!228668)))

(declare-fun bs!1152588 () Bool)

(assert (= bs!1152588 (and b!4783405 b!4783410)))

(assert (=> bs!1152588 (= (= (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))))) (= lambda!228684 lambda!228683))))

(declare-fun bs!1152589 () Bool)

(assert (= bs!1152589 (and b!4783405 b!4783314)))

(assert (=> bs!1152589 (= (= (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= lambda!228684 lambda!228666))))

(declare-fun bs!1152590 () Bool)

(assert (= bs!1152590 (and b!4783405 b!4783397)))

(assert (=> bs!1152590 (= (= (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) (Cons!54025 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))) (= lambda!228684 lambda!228679))))

(declare-fun bs!1152591 () Bool)

(assert (= bs!1152591 (and b!4783405 b!4783407)))

(assert (=> bs!1152591 (= (= (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) (= lambda!228684 lambda!228682))))

(declare-fun bs!1152592 () Bool)

(assert (= bs!1152592 (and b!4783405 b!4783392)))

(assert (=> bs!1152592 (= (= (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= lambda!228684 lambda!228680))))

(declare-fun bs!1152593 () Bool)

(assert (= bs!1152593 (and b!4783405 b!4783394)))

(assert (=> bs!1152593 (= (= (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) (= lambda!228684 lambda!228678))))

(assert (=> b!4783405 true))

(declare-fun bs!1152594 () Bool)

(declare-fun b!4783402 () Bool)

(assert (= bs!1152594 (and b!4783402 b!4783315)))

(declare-fun lambda!228685 () Int)

(assert (=> bs!1152594 (= lambda!228685 lambda!228667)))

(declare-fun bs!1152595 () Bool)

(assert (= bs!1152595 (and b!4783402 b!4783328)))

(assert (=> bs!1152595 (= lambda!228685 lambda!228669)))

(declare-fun bs!1152596 () Bool)

(assert (= bs!1152596 (and b!4783402 b!4783389)))

(assert (=> bs!1152596 (= lambda!228685 lambda!228681)))

(declare-fun b!4783403 () Bool)

(declare-fun e!2986452 () Unit!139346)

(declare-fun Unit!139366 () Unit!139346)

(assert (=> b!4783403 (= e!2986452 Unit!139366)))

(declare-fun b!4783404 () Bool)

(declare-fun e!2986455 () Unit!139346)

(declare-fun Unit!139367 () Unit!139346)

(assert (=> b!4783404 (= e!2986455 Unit!139367)))

(declare-fun res!2031420 () Bool)

(declare-fun e!2986453 () Bool)

(assert (=> b!4783405 (=> (not res!2031420) (not e!2986453))))

(declare-fun lt!1945458 () List!54151)

(assert (=> b!4783405 (= res!2031420 (forall!12137 lt!1945458 lambda!228684))))

(declare-fun b!4783406 () Bool)

(declare-fun e!2986454 () List!54151)

(assert (=> b!4783406 (= e!2986454 Nil!54027)))

(assert (=> b!4783407 false))

(declare-fun lt!1945461 () Unit!139346)

(assert (=> b!4783407 (= lt!1945461 (forallContained!4081 (getKeysList!1046 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) lambda!228682 (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))))))))

(declare-fun Unit!139368 () Unit!139346)

(assert (=> b!4783407 (= e!2986455 Unit!139368)))

(declare-fun b!4783408 () Bool)

(declare-fun res!2031421 () Bool)

(assert (=> b!4783408 (=> (not res!2031421) (not e!2986453))))

(assert (=> b!4783408 (= res!2031421 (= (length!660 lt!1945458) (length!661 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))))))

(assert (=> b!4783402 (= e!2986453 (= (content!9660 lt!1945458) (content!9660 (map!12183 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) lambda!228685))))))

(declare-fun d!1529681 () Bool)

(assert (=> d!1529681 e!2986453))

(declare-fun res!2031422 () Bool)

(assert (=> d!1529681 (=> (not res!2031422) (not e!2986453))))

(assert (=> d!1529681 (= res!2031422 (noDuplicate!902 lt!1945458))))

(assert (=> d!1529681 (= lt!1945458 e!2986454)))

(declare-fun c!815427 () Bool)

(assert (=> d!1529681 (= c!815427 ((_ is Cons!54025) (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))))))

(assert (=> d!1529681 (invariantList!1700 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))))

(assert (=> d!1529681 (= (getKeysList!1046 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) lt!1945458)))

(declare-fun b!4783409 () Bool)

(assert (=> b!4783409 false))

(declare-fun Unit!139369 () Unit!139346)

(assert (=> b!4783409 (= e!2986452 Unit!139369)))

(assert (=> b!4783410 (= e!2986454 (Cons!54027 (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) (getKeysList!1046 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))))))))

(declare-fun c!815425 () Bool)

(assert (=> b!4783410 (= c!815425 (containsKey!3832 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))))))))

(declare-fun lt!1945457 () Unit!139346)

(assert (=> b!4783410 (= lt!1945457 e!2986452)))

(declare-fun c!815426 () Bool)

(assert (=> b!4783410 (= c!815426 (contains!17578 (getKeysList!1046 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))))))))

(declare-fun lt!1945460 () Unit!139346)

(assert (=> b!4783410 (= lt!1945460 e!2986455)))

(declare-fun lt!1945455 () List!54151)

(assert (=> b!4783410 (= lt!1945455 (getKeysList!1046 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))))))

(declare-fun lt!1945456 () Unit!139346)

(assert (=> b!4783410 (= lt!1945456 (lemmaForallContainsAddHeadPreserves!319 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) lt!1945455 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))))))

(assert (=> b!4783410 (forall!12137 lt!1945455 lambda!228683)))

(declare-fun lt!1945459 () Unit!139346)

(assert (=> b!4783410 (= lt!1945459 lt!1945456)))

(assert (= (and d!1529681 c!815427) b!4783410))

(assert (= (and d!1529681 (not c!815427)) b!4783406))

(assert (= (and b!4783410 c!815425) b!4783409))

(assert (= (and b!4783410 (not c!815425)) b!4783403))

(assert (= (and b!4783410 c!815426) b!4783407))

(assert (= (and b!4783410 (not c!815426)) b!4783404))

(assert (= (and d!1529681 res!2031422) b!4783408))

(assert (= (and b!4783408 res!2031421) b!4783405))

(assert (= (and b!4783405 res!2031420) b!4783402))

(declare-fun m!5761338 () Bool)

(assert (=> d!1529681 m!5761338))

(assert (=> d!1529681 m!5761216))

(declare-fun m!5761340 () Bool)

(assert (=> b!4783407 m!5761340))

(assert (=> b!4783407 m!5761340))

(declare-fun m!5761342 () Bool)

(assert (=> b!4783407 m!5761342))

(declare-fun m!5761344 () Bool)

(assert (=> b!4783408 m!5761344))

(assert (=> b!4783408 m!5761232))

(declare-fun m!5761346 () Bool)

(assert (=> b!4783405 m!5761346))

(assert (=> b!4783410 m!5761340))

(declare-fun m!5761348 () Bool)

(assert (=> b!4783410 m!5761348))

(declare-fun m!5761350 () Bool)

(assert (=> b!4783410 m!5761350))

(declare-fun m!5761352 () Bool)

(assert (=> b!4783410 m!5761352))

(declare-fun m!5761354 () Bool)

(assert (=> b!4783410 m!5761354))

(assert (=> b!4783410 m!5761340))

(declare-fun m!5761356 () Bool)

(assert (=> b!4783402 m!5761356))

(declare-fun m!5761358 () Bool)

(assert (=> b!4783402 m!5761358))

(assert (=> b!4783402 m!5761358))

(declare-fun m!5761360 () Bool)

(assert (=> b!4783402 m!5761360))

(assert (=> b!4783126 d!1529681))

(assert (=> b!4783206 d!1529493))

(declare-fun b!4783422 () Bool)

(assert (=> b!4783422 true))

(declare-fun bs!1152597 () Bool)

(declare-fun b!4783421 () Bool)

(assert (= bs!1152597 (and b!4783421 b!4783422)))

(declare-fun lambda!228715 () Int)

(declare-fun lambda!228714 () Int)

(assert (=> bs!1152597 (= lambda!228715 lambda!228714)))

(assert (=> b!4783421 true))

(declare-fun lambda!228716 () Int)

(declare-fun lt!1945511 () ListMap!6231)

(assert (=> bs!1152597 (= (= lt!1945511 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228716 lambda!228714))))

(assert (=> b!4783421 (= (= lt!1945511 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228716 lambda!228715))))

(assert (=> b!4783421 true))

(declare-fun bs!1152598 () Bool)

(declare-fun d!1529683 () Bool)

(assert (= bs!1152598 (and d!1529683 b!4783422)))

(declare-fun lt!1945512 () ListMap!6231)

(declare-fun lambda!228717 () Int)

(assert (=> bs!1152598 (= (= lt!1945512 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228717 lambda!228714))))

(declare-fun bs!1152599 () Bool)

(assert (= bs!1152599 (and d!1529683 b!4783421)))

(assert (=> bs!1152599 (= (= lt!1945512 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228717 lambda!228715))))

(assert (=> bs!1152599 (= (= lt!1945512 lt!1945511) (= lambda!228717 lambda!228716))))

(assert (=> d!1529683 true))

(declare-fun e!2986464 () ListMap!6231)

(assert (=> b!4783421 (= e!2986464 lt!1945511)))

(declare-fun lt!1945513 () ListMap!6231)

(declare-fun +!2470 (ListMap!6231 tuple2!56528) ListMap!6231)

(assert (=> b!4783421 (= lt!1945513 (+!2470 (extractMap!2367 (t!361600 (toList!6759 lm!2709))) (h!60445 (_2!31559 (h!60446 (toList!6759 lm!2709))))))))

(assert (=> b!4783421 (= lt!1945511 (addToMapMapFromBucket!1665 (t!361599 (_2!31559 (h!60446 (toList!6759 lm!2709)))) (+!2470 (extractMap!2367 (t!361600 (toList!6759 lm!2709))) (h!60445 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))))

(declare-fun lt!1945518 () Unit!139346)

(declare-fun call!334787 () Unit!139346)

(assert (=> b!4783421 (= lt!1945518 call!334787)))

(declare-fun forall!12138 (List!54149 Int) Bool)

(assert (=> b!4783421 (forall!12138 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) lambda!228715)))

(declare-fun lt!1945524 () Unit!139346)

(assert (=> b!4783421 (= lt!1945524 lt!1945518)))

(assert (=> b!4783421 (forall!12138 (toList!6760 lt!1945513) lambda!228716)))

(declare-fun lt!1945521 () Unit!139346)

(declare-fun Unit!139370 () Unit!139346)

(assert (=> b!4783421 (= lt!1945521 Unit!139370)))

(assert (=> b!4783421 (forall!12138 (t!361599 (_2!31559 (h!60446 (toList!6759 lm!2709)))) lambda!228716)))

(declare-fun lt!1945509 () Unit!139346)

(declare-fun Unit!139371 () Unit!139346)

(assert (=> b!4783421 (= lt!1945509 Unit!139371)))

(declare-fun lt!1945519 () Unit!139346)

(declare-fun Unit!139372 () Unit!139346)

(assert (=> b!4783421 (= lt!1945519 Unit!139372)))

(declare-fun lt!1945507 () Unit!139346)

(declare-fun forallContained!4082 (List!54149 Int tuple2!56528) Unit!139346)

(assert (=> b!4783421 (= lt!1945507 (forallContained!4082 (toList!6760 lt!1945513) lambda!228716 (h!60445 (_2!31559 (h!60446 (toList!6759 lm!2709))))))))

(assert (=> b!4783421 (contains!17576 lt!1945513 (_1!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lm!2709))))))))

(declare-fun lt!1945505 () Unit!139346)

(declare-fun Unit!139373 () Unit!139346)

(assert (=> b!4783421 (= lt!1945505 Unit!139373)))

(assert (=> b!4783421 (contains!17576 lt!1945511 (_1!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lm!2709))))))))

(declare-fun lt!1945515 () Unit!139346)

(declare-fun Unit!139374 () Unit!139346)

(assert (=> b!4783421 (= lt!1945515 Unit!139374)))

(declare-fun call!334788 () Bool)

(assert (=> b!4783421 call!334788))

(declare-fun lt!1945514 () Unit!139346)

(declare-fun Unit!139375 () Unit!139346)

(assert (=> b!4783421 (= lt!1945514 Unit!139375)))

(assert (=> b!4783421 (forall!12138 (toList!6760 lt!1945513) lambda!228716)))

(declare-fun lt!1945517 () Unit!139346)

(declare-fun Unit!139376 () Unit!139346)

(assert (=> b!4783421 (= lt!1945517 Unit!139376)))

(declare-fun lt!1945523 () Unit!139346)

(declare-fun Unit!139377 () Unit!139346)

(assert (=> b!4783421 (= lt!1945523 Unit!139377)))

(declare-fun lt!1945508 () Unit!139346)

(declare-fun addForallContainsKeyThenBeforeAdding!925 (ListMap!6231 ListMap!6231 K!15589 V!15835) Unit!139346)

(assert (=> b!4783421 (= lt!1945508 (addForallContainsKeyThenBeforeAdding!925 (extractMap!2367 (t!361600 (toList!6759 lm!2709))) lt!1945511 (_1!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lm!2709))))) (_2!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))))

(assert (=> b!4783421 (forall!12138 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) lambda!228716)))

(declare-fun lt!1945522 () Unit!139346)

(assert (=> b!4783421 (= lt!1945522 lt!1945508)))

(assert (=> b!4783421 (forall!12138 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) lambda!228716)))

(declare-fun lt!1945504 () Unit!139346)

(declare-fun Unit!139378 () Unit!139346)

(assert (=> b!4783421 (= lt!1945504 Unit!139378)))

(declare-fun res!2031431 () Bool)

(assert (=> b!4783421 (= res!2031431 (forall!12138 (_2!31559 (h!60446 (toList!6759 lm!2709))) lambda!228716))))

(declare-fun e!2986463 () Bool)

(assert (=> b!4783421 (=> (not res!2031431) (not e!2986463))))

(assert (=> b!4783421 e!2986463))

(declare-fun lt!1945506 () Unit!139346)

(declare-fun Unit!139379 () Unit!139346)

(assert (=> b!4783421 (= lt!1945506 Unit!139379)))

(assert (=> b!4783422 (= e!2986464 (extractMap!2367 (t!361600 (toList!6759 lm!2709))))))

(declare-fun lt!1945510 () Unit!139346)

(assert (=> b!4783422 (= lt!1945510 call!334787)))

(assert (=> b!4783422 call!334788))

(declare-fun lt!1945520 () Unit!139346)

(assert (=> b!4783422 (= lt!1945520 lt!1945510)))

(declare-fun call!334789 () Bool)

(assert (=> b!4783422 call!334789))

(declare-fun lt!1945516 () Unit!139346)

(declare-fun Unit!139380 () Unit!139346)

(assert (=> b!4783422 (= lt!1945516 Unit!139380)))

(declare-fun bm!334782 () Bool)

(declare-fun c!815430 () Bool)

(assert (=> bm!334782 (= call!334789 (forall!12138 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (ite c!815430 lambda!228714 lambda!228716)))))

(declare-fun bm!334783 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!926 (ListMap!6231) Unit!139346)

(assert (=> bm!334783 (= call!334787 (lemmaContainsAllItsOwnKeys!926 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))))))

(declare-fun bm!334784 () Bool)

(assert (=> bm!334784 (= call!334788 (forall!12138 (ite c!815430 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (_2!31559 (h!60446 (toList!6759 lm!2709)))) (ite c!815430 lambda!228714 lambda!228716)))))

(declare-fun b!4783424 () Bool)

(declare-fun e!2986462 () Bool)

(assert (=> b!4783424 (= e!2986462 (invariantList!1700 (toList!6760 lt!1945512)))))

(declare-fun b!4783425 () Bool)

(declare-fun res!2031429 () Bool)

(assert (=> b!4783425 (=> (not res!2031429) (not e!2986462))))

(assert (=> b!4783425 (= res!2031429 (forall!12138 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) lambda!228717))))

(declare-fun b!4783423 () Bool)

(assert (=> b!4783423 (= e!2986463 call!334789)))

(assert (=> d!1529683 e!2986462))

(declare-fun res!2031430 () Bool)

(assert (=> d!1529683 (=> (not res!2031430) (not e!2986462))))

(assert (=> d!1529683 (= res!2031430 (forall!12138 (_2!31559 (h!60446 (toList!6759 lm!2709))) lambda!228717))))

(assert (=> d!1529683 (= lt!1945512 e!2986464)))

(assert (=> d!1529683 (= c!815430 ((_ is Nil!54025) (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(assert (=> d!1529683 (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lm!2709))))))

(assert (=> d!1529683 (= (addToMapMapFromBucket!1665 (_2!31559 (h!60446 (toList!6759 lm!2709))) (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) lt!1945512)))

(assert (= (and d!1529683 c!815430) b!4783422))

(assert (= (and d!1529683 (not c!815430)) b!4783421))

(assert (= (and b!4783421 res!2031431) b!4783423))

(assert (= (or b!4783422 b!4783421) bm!334783))

(assert (= (or b!4783422 b!4783421) bm!334784))

(assert (= (or b!4783422 b!4783423) bm!334782))

(assert (= (and d!1529683 res!2031430) b!4783425))

(assert (= (and b!4783425 res!2031429) b!4783424))

(declare-fun m!5761362 () Bool)

(assert (=> b!4783425 m!5761362))

(declare-fun m!5761364 () Bool)

(assert (=> bm!334784 m!5761364))

(assert (=> bm!334783 m!5761016))

(declare-fun m!5761366 () Bool)

(assert (=> bm!334783 m!5761366))

(declare-fun m!5761368 () Bool)

(assert (=> b!4783424 m!5761368))

(declare-fun m!5761370 () Bool)

(assert (=> b!4783421 m!5761370))

(declare-fun m!5761372 () Bool)

(assert (=> b!4783421 m!5761372))

(declare-fun m!5761374 () Bool)

(assert (=> b!4783421 m!5761374))

(declare-fun m!5761376 () Bool)

(assert (=> b!4783421 m!5761376))

(declare-fun m!5761378 () Bool)

(assert (=> b!4783421 m!5761378))

(declare-fun m!5761380 () Bool)

(assert (=> b!4783421 m!5761380))

(declare-fun m!5761382 () Bool)

(assert (=> b!4783421 m!5761382))

(declare-fun m!5761384 () Bool)

(assert (=> b!4783421 m!5761384))

(assert (=> b!4783421 m!5761016))

(declare-fun m!5761386 () Bool)

(assert (=> b!4783421 m!5761386))

(declare-fun m!5761388 () Bool)

(assert (=> b!4783421 m!5761388))

(declare-fun m!5761390 () Bool)

(assert (=> b!4783421 m!5761390))

(assert (=> b!4783421 m!5761390))

(assert (=> b!4783421 m!5761016))

(assert (=> b!4783421 m!5761376))

(assert (=> b!4783421 m!5761388))

(declare-fun m!5761392 () Bool)

(assert (=> d!1529683 m!5761392))

(assert (=> d!1529683 m!5761052))

(declare-fun m!5761394 () Bool)

(assert (=> bm!334782 m!5761394))

(assert (=> b!4783224 d!1529683))

(declare-fun bs!1152600 () Bool)

(declare-fun d!1529685 () Bool)

(assert (= bs!1152600 (and d!1529685 d!1529443)))

(declare-fun lambda!228718 () Int)

(assert (=> bs!1152600 (= lambda!228718 lambda!228617)))

(declare-fun bs!1152601 () Bool)

(assert (= bs!1152601 (and d!1529685 d!1529511)))

(assert (=> bs!1152601 (= lambda!228718 lambda!228647)))

(declare-fun bs!1152602 () Bool)

(assert (= bs!1152602 (and d!1529685 d!1529495)))

(assert (=> bs!1152602 (= lambda!228718 lambda!228638)))

(declare-fun bs!1152603 () Bool)

(assert (= bs!1152603 (and d!1529685 d!1529549)))

(assert (=> bs!1152603 (= lambda!228718 lambda!228652)))

(declare-fun bs!1152604 () Bool)

(assert (= bs!1152604 (and d!1529685 d!1529533)))

(assert (=> bs!1152604 (= lambda!228718 lambda!228651)))

(declare-fun bs!1152605 () Bool)

(assert (= bs!1152605 (and d!1529685 d!1529469)))

(assert (=> bs!1152605 (= lambda!228718 lambda!228623)))

(declare-fun bs!1152606 () Bool)

(assert (= bs!1152606 (and d!1529685 d!1529485)))

(assert (=> bs!1152606 (= lambda!228718 lambda!228632)))

(declare-fun bs!1152607 () Bool)

(assert (= bs!1152607 (and d!1529685 d!1529493)))

(assert (=> bs!1152607 (not (= lambda!228718 lambda!228635))))

(declare-fun bs!1152608 () Bool)

(assert (= bs!1152608 (and d!1529685 d!1529523)))

(assert (=> bs!1152608 (= lambda!228718 lambda!228650)))

(declare-fun bs!1152609 () Bool)

(assert (= bs!1152609 (and d!1529685 d!1529439)))

(assert (=> bs!1152609 (= lambda!228718 lambda!228604)))

(declare-fun bs!1152610 () Bool)

(assert (= bs!1152610 (and d!1529685 start!491398)))

(assert (=> bs!1152610 (= lambda!228718 lambda!228601)))

(declare-fun bs!1152611 () Bool)

(assert (= bs!1152611 (and d!1529685 d!1529521)))

(assert (=> bs!1152611 (not (= lambda!228718 lambda!228648))))

(declare-fun bs!1152612 () Bool)

(assert (= bs!1152612 (and d!1529685 d!1529551)))

(assert (=> bs!1152612 (= lambda!228718 lambda!228653)))

(declare-fun lt!1945525 () ListMap!6231)

(assert (=> d!1529685 (invariantList!1700 (toList!6760 lt!1945525))))

(declare-fun e!2986465 () ListMap!6231)

(assert (=> d!1529685 (= lt!1945525 e!2986465)))

(declare-fun c!815431 () Bool)

(assert (=> d!1529685 (= c!815431 ((_ is Cons!54026) (t!361600 (toList!6759 lm!2709))))))

(assert (=> d!1529685 (forall!12136 (t!361600 (toList!6759 lm!2709)) lambda!228718)))

(assert (=> d!1529685 (= (extractMap!2367 (t!361600 (toList!6759 lm!2709))) lt!1945525)))

(declare-fun b!4783428 () Bool)

(assert (=> b!4783428 (= e!2986465 (addToMapMapFromBucket!1665 (_2!31559 (h!60446 (t!361600 (toList!6759 lm!2709)))) (extractMap!2367 (t!361600 (t!361600 (toList!6759 lm!2709))))))))

(declare-fun b!4783429 () Bool)

(assert (=> b!4783429 (= e!2986465 (ListMap!6232 Nil!54025))))

(assert (= (and d!1529685 c!815431) b!4783428))

(assert (= (and d!1529685 (not c!815431)) b!4783429))

(declare-fun m!5761396 () Bool)

(assert (=> d!1529685 m!5761396))

(declare-fun m!5761398 () Bool)

(assert (=> d!1529685 m!5761398))

(declare-fun m!5761400 () Bool)

(assert (=> b!4783428 m!5761400))

(assert (=> b!4783428 m!5761400))

(declare-fun m!5761402 () Bool)

(assert (=> b!4783428 m!5761402))

(assert (=> b!4783224 d!1529685))

(declare-fun d!1529687 () Bool)

(declare-fun choose!34340 (Hashable!6840 K!15589) (_ BitVec 64))

(assert (=> d!1529687 (= (hash!4844 hashF!1687 key!6641) (choose!34340 hashF!1687 key!6641))))

(declare-fun bs!1152613 () Bool)

(assert (= bs!1152613 d!1529687))

(declare-fun m!5761404 () Bool)

(assert (=> bs!1152613 m!5761404))

(assert (=> d!1529541 d!1529687))

(declare-fun d!1529689 () Bool)

(declare-fun lt!1945528 () Bool)

(declare-fun content!9661 (List!54149) (InoxSet tuple2!56528))

(assert (=> d!1529689 (= lt!1945528 (select (content!9661 lt!1945158) (get!18380 lt!1945355)))))

(declare-fun e!2986470 () Bool)

(assert (=> d!1529689 (= lt!1945528 e!2986470)))

(declare-fun res!2031437 () Bool)

(assert (=> d!1529689 (=> (not res!2031437) (not e!2986470))))

(assert (=> d!1529689 (= res!2031437 ((_ is Cons!54025) lt!1945158))))

(assert (=> d!1529689 (= (contains!17577 lt!1945158 (get!18380 lt!1945355)) lt!1945528)))

(declare-fun b!4783434 () Bool)

(declare-fun e!2986471 () Bool)

(assert (=> b!4783434 (= e!2986470 e!2986471)))

(declare-fun res!2031436 () Bool)

(assert (=> b!4783434 (=> res!2031436 e!2986471)))

(assert (=> b!4783434 (= res!2031436 (= (h!60445 lt!1945158) (get!18380 lt!1945355)))))

(declare-fun b!4783435 () Bool)

(assert (=> b!4783435 (= e!2986471 (contains!17577 (t!361599 lt!1945158) (get!18380 lt!1945355)))))

(assert (= (and d!1529689 res!2031437) b!4783434))

(assert (= (and b!4783434 (not res!2031436)) b!4783435))

(declare-fun m!5761406 () Bool)

(assert (=> d!1529689 m!5761406))

(assert (=> d!1529689 m!5760988))

(declare-fun m!5761408 () Bool)

(assert (=> d!1529689 m!5761408))

(assert (=> b!4783435 m!5760988))

(declare-fun m!5761410 () Bool)

(assert (=> b!4783435 m!5761410))

(assert (=> b!4783215 d!1529689))

(declare-fun d!1529691 () Bool)

(assert (=> d!1529691 (= (get!18380 lt!1945355) (v!48182 lt!1945355))))

(assert (=> b!4783215 d!1529691))

(assert (=> b!4782985 d!1529489))

(declare-fun d!1529693 () Bool)

(declare-fun c!815432 () Bool)

(assert (=> d!1529693 (= c!815432 (and ((_ is Cons!54026) (toList!6759 lt!1945162)) (= (_1!31559 (h!60446 (toList!6759 lt!1945162))) lt!1945241)))))

(declare-fun e!2986472 () Option!12957)

(assert (=> d!1529693 (= (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945241) e!2986472)))

(declare-fun b!4783436 () Bool)

(assert (=> b!4783436 (= e!2986472 (Some!12956 (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))

(declare-fun b!4783439 () Bool)

(declare-fun e!2986473 () Option!12957)

(assert (=> b!4783439 (= e!2986473 None!12956)))

(declare-fun b!4783438 () Bool)

(assert (=> b!4783438 (= e!2986473 (getValueByKey!2292 (t!361600 (toList!6759 lt!1945162)) lt!1945241))))

(declare-fun b!4783437 () Bool)

(assert (=> b!4783437 (= e!2986472 e!2986473)))

(declare-fun c!815433 () Bool)

(assert (=> b!4783437 (= c!815433 (and ((_ is Cons!54026) (toList!6759 lt!1945162)) (not (= (_1!31559 (h!60446 (toList!6759 lt!1945162))) lt!1945241))))))

(assert (= (and d!1529693 c!815432) b!4783436))

(assert (= (and d!1529693 (not c!815432)) b!4783437))

(assert (= (and b!4783437 c!815433) b!4783438))

(assert (= (and b!4783437 (not c!815433)) b!4783439))

(declare-fun m!5761412 () Bool)

(assert (=> b!4783438 m!5761412))

(assert (=> b!4783078 d!1529693))

(declare-fun d!1529695 () Bool)

(declare-fun res!2031442 () Bool)

(declare-fun e!2986478 () Bool)

(assert (=> d!1529695 (=> res!2031442 e!2986478)))

(assert (=> d!1529695 (= res!2031442 (or ((_ is Nil!54026) (toList!6759 lm!2709)) ((_ is Nil!54026) (t!361600 (toList!6759 lm!2709)))))))

(assert (=> d!1529695 (= (isStrictlySorted!852 (toList!6759 lm!2709)) e!2986478)))

(declare-fun b!4783444 () Bool)

(declare-fun e!2986479 () Bool)

(assert (=> b!4783444 (= e!2986478 e!2986479)))

(declare-fun res!2031443 () Bool)

(assert (=> b!4783444 (=> (not res!2031443) (not e!2986479))))

(assert (=> b!4783444 (= res!2031443 (bvslt (_1!31559 (h!60446 (toList!6759 lm!2709))) (_1!31559 (h!60446 (t!361600 (toList!6759 lm!2709))))))))

(declare-fun b!4783445 () Bool)

(assert (=> b!4783445 (= e!2986479 (isStrictlySorted!852 (t!361600 (toList!6759 lm!2709))))))

(assert (= (and d!1529695 (not res!2031442)) b!4783444))

(assert (= (and b!4783444 res!2031443) b!4783445))

(declare-fun m!5761414 () Bool)

(assert (=> b!4783445 m!5761414))

(assert (=> d!1529515 d!1529695))

(declare-fun d!1529697 () Bool)

(declare-fun res!2031448 () Bool)

(declare-fun e!2986484 () Bool)

(assert (=> d!1529697 (=> res!2031448 e!2986484)))

(assert (=> d!1529697 (= res!2031448 (and ((_ is Cons!54026) (toList!6759 lm!2709)) (= (_1!31559 (h!60446 (toList!6759 lm!2709))) lt!1945161)))))

(assert (=> d!1529697 (= (containsKey!3834 (toList!6759 lm!2709) lt!1945161) e!2986484)))

(declare-fun b!4783450 () Bool)

(declare-fun e!2986485 () Bool)

(assert (=> b!4783450 (= e!2986484 e!2986485)))

(declare-fun res!2031449 () Bool)

(assert (=> b!4783450 (=> (not res!2031449) (not e!2986485))))

(assert (=> b!4783450 (= res!2031449 (and (or (not ((_ is Cons!54026) (toList!6759 lm!2709))) (bvsle (_1!31559 (h!60446 (toList!6759 lm!2709))) lt!1945161)) ((_ is Cons!54026) (toList!6759 lm!2709)) (bvslt (_1!31559 (h!60446 (toList!6759 lm!2709))) lt!1945161)))))

(declare-fun b!4783451 () Bool)

(assert (=> b!4783451 (= e!2986485 (containsKey!3834 (t!361600 (toList!6759 lm!2709)) lt!1945161))))

(assert (= (and d!1529697 (not res!2031448)) b!4783450))

(assert (= (and b!4783450 res!2031449) b!4783451))

(declare-fun m!5761416 () Bool)

(assert (=> b!4783451 m!5761416))

(assert (=> d!1529557 d!1529697))

(declare-fun d!1529699 () Bool)

(declare-fun lt!1945529 () Bool)

(assert (=> d!1529699 (= lt!1945529 (select (content!9659 (toList!6759 lm!2709)) (tuple2!56531 lt!1945161 lt!1945158)))))

(declare-fun e!2986486 () Bool)

(assert (=> d!1529699 (= lt!1945529 e!2986486)))

(declare-fun res!2031451 () Bool)

(assert (=> d!1529699 (=> (not res!2031451) (not e!2986486))))

(assert (=> d!1529699 (= res!2031451 ((_ is Cons!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529699 (= (contains!17574 (toList!6759 lm!2709) (tuple2!56531 lt!1945161 lt!1945158)) lt!1945529)))

(declare-fun b!4783452 () Bool)

(declare-fun e!2986487 () Bool)

(assert (=> b!4783452 (= e!2986486 e!2986487)))

(declare-fun res!2031450 () Bool)

(assert (=> b!4783452 (=> res!2031450 e!2986487)))

(assert (=> b!4783452 (= res!2031450 (= (h!60446 (toList!6759 lm!2709)) (tuple2!56531 lt!1945161 lt!1945158)))))

(declare-fun b!4783453 () Bool)

(assert (=> b!4783453 (= e!2986487 (contains!17574 (t!361600 (toList!6759 lm!2709)) (tuple2!56531 lt!1945161 lt!1945158)))))

(assert (= (and d!1529699 res!2031451) b!4783452))

(assert (= (and b!4783452 (not res!2031450)) b!4783453))

(assert (=> d!1529699 m!5761002))

(declare-fun m!5761418 () Bool)

(assert (=> d!1529699 m!5761418))

(declare-fun m!5761420 () Bool)

(assert (=> b!4783453 m!5761420))

(assert (=> d!1529537 d!1529699))

(declare-fun d!1529701 () Bool)

(assert (=> d!1529701 (contains!17574 (toList!6759 lm!2709) (tuple2!56531 lt!1945161 lt!1945158))))

(assert (=> d!1529701 true))

(declare-fun _$41!505 () Unit!139346)

(assert (=> d!1529701 (= (choose!34328 lm!2709 lt!1945161 lt!1945158) _$41!505)))

(declare-fun bs!1152614 () Bool)

(assert (= bs!1152614 d!1529701))

(assert (=> bs!1152614 m!5760982))

(assert (=> d!1529537 d!1529701))

(assert (=> d!1529537 d!1529557))

(declare-fun b!4783455 () Bool)

(declare-fun e!2986491 () Option!12956)

(assert (=> b!4783455 (= e!2986491 (getPair!812 (t!361599 (t!361599 lt!1945158)) key!6641))))

(declare-fun b!4783456 () Bool)

(declare-fun e!2986489 () Bool)

(assert (=> b!4783456 (= e!2986489 (not (containsKey!3831 (t!361599 lt!1945158) key!6641)))))

(declare-fun b!4783457 () Bool)

(declare-fun e!2986492 () Bool)

(declare-fun lt!1945530 () Option!12956)

(assert (=> b!4783457 (= e!2986492 (contains!17577 (t!361599 lt!1945158) (get!18380 lt!1945530)))))

(declare-fun b!4783458 () Bool)

(declare-fun res!2031452 () Bool)

(assert (=> b!4783458 (=> (not res!2031452) (not e!2986492))))

(assert (=> b!4783458 (= res!2031452 (= (_1!31558 (get!18380 lt!1945530)) key!6641))))

(declare-fun b!4783459 () Bool)

(declare-fun e!2986490 () Bool)

(assert (=> b!4783459 (= e!2986490 e!2986492)))

(declare-fun res!2031453 () Bool)

(assert (=> b!4783459 (=> (not res!2031453) (not e!2986492))))

(assert (=> b!4783459 (= res!2031453 (isDefined!10099 lt!1945530))))

(declare-fun d!1529703 () Bool)

(assert (=> d!1529703 e!2986490))

(declare-fun res!2031455 () Bool)

(assert (=> d!1529703 (=> res!2031455 e!2986490)))

(assert (=> d!1529703 (= res!2031455 e!2986489)))

(declare-fun res!2031454 () Bool)

(assert (=> d!1529703 (=> (not res!2031454) (not e!2986489))))

(assert (=> d!1529703 (= res!2031454 (isEmpty!29367 lt!1945530))))

(declare-fun e!2986488 () Option!12956)

(assert (=> d!1529703 (= lt!1945530 e!2986488)))

(declare-fun c!815435 () Bool)

(assert (=> d!1529703 (= c!815435 (and ((_ is Cons!54025) (t!361599 lt!1945158)) (= (_1!31558 (h!60445 (t!361599 lt!1945158))) key!6641)))))

(assert (=> d!1529703 (noDuplicateKeys!2298 (t!361599 lt!1945158))))

(assert (=> d!1529703 (= (getPair!812 (t!361599 lt!1945158) key!6641) lt!1945530)))

(declare-fun b!4783460 () Bool)

(assert (=> b!4783460 (= e!2986491 None!12955)))

(declare-fun b!4783461 () Bool)

(assert (=> b!4783461 (= e!2986488 e!2986491)))

(declare-fun c!815434 () Bool)

(assert (=> b!4783461 (= c!815434 ((_ is Cons!54025) (t!361599 lt!1945158)))))

(declare-fun b!4783462 () Bool)

(assert (=> b!4783462 (= e!2986488 (Some!12955 (h!60445 (t!361599 lt!1945158))))))

(assert (= (and d!1529703 c!815435) b!4783462))

(assert (= (and d!1529703 (not c!815435)) b!4783461))

(assert (= (and b!4783461 c!815434) b!4783455))

(assert (= (and b!4783461 (not c!815434)) b!4783460))

(assert (= (and d!1529703 res!2031454) b!4783456))

(assert (= (and d!1529703 (not res!2031455)) b!4783459))

(assert (= (and b!4783459 res!2031453) b!4783458))

(assert (= (and b!4783458 res!2031452) b!4783457))

(declare-fun m!5761422 () Bool)

(assert (=> b!4783455 m!5761422))

(declare-fun m!5761424 () Bool)

(assert (=> b!4783458 m!5761424))

(declare-fun m!5761426 () Bool)

(assert (=> b!4783459 m!5761426))

(assert (=> b!4783457 m!5761424))

(assert (=> b!4783457 m!5761424))

(declare-fun m!5761428 () Bool)

(assert (=> b!4783457 m!5761428))

(declare-fun m!5761430 () Bool)

(assert (=> d!1529703 m!5761430))

(declare-fun m!5761432 () Bool)

(assert (=> d!1529703 m!5761432))

(declare-fun m!5761434 () Bool)

(assert (=> b!4783456 m!5761434))

(assert (=> b!4783213 d!1529703))

(declare-fun d!1529705 () Bool)

(declare-fun res!2031456 () Bool)

(declare-fun e!2986493 () Bool)

(assert (=> d!1529705 (=> res!2031456 e!2986493)))

(assert (=> d!1529705 (= res!2031456 (not ((_ is Cons!54025) (_2!31559 (h!60446 (toList!6759 lt!1945162))))))))

(assert (=> d!1529705 (= (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lt!1945162)))) e!2986493)))

(declare-fun b!4783463 () Bool)

(declare-fun e!2986494 () Bool)

(assert (=> b!4783463 (= e!2986493 e!2986494)))

(declare-fun res!2031457 () Bool)

(assert (=> b!4783463 (=> (not res!2031457) (not e!2986494))))

(assert (=> b!4783463 (= res!2031457 (not (containsKey!3831 (t!361599 (_2!31559 (h!60446 (toList!6759 lt!1945162)))) (_1!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lt!1945162))))))))))

(declare-fun b!4783464 () Bool)

(assert (=> b!4783464 (= e!2986494 (noDuplicateKeys!2298 (t!361599 (_2!31559 (h!60446 (toList!6759 lt!1945162))))))))

(assert (= (and d!1529705 (not res!2031456)) b!4783463))

(assert (= (and b!4783463 res!2031457) b!4783464))

(declare-fun m!5761436 () Bool)

(assert (=> b!4783463 m!5761436))

(declare-fun m!5761438 () Bool)

(assert (=> b!4783464 m!5761438))

(assert (=> bs!1152487 d!1529705))

(declare-fun d!1529707 () Bool)

(assert (=> d!1529707 (dynLambda!22020 lambda!228601 lt!1945157)))

(assert (=> d!1529707 true))

(declare-fun _$7!2357 () Unit!139346)

(assert (=> d!1529707 (= (choose!34324 (toList!6759 lt!1945162) lambda!228601 lt!1945157) _$7!2357)))

(declare-fun b_lambda!185877 () Bool)

(assert (=> (not b_lambda!185877) (not d!1529707)))

(declare-fun bs!1152615 () Bool)

(assert (= bs!1152615 d!1529707))

(assert (=> bs!1152615 m!5760690))

(assert (=> d!1529435 d!1529707))

(assert (=> d!1529435 d!1529497))

(assert (=> b!4783197 d!1529627))

(declare-fun d!1529709 () Bool)

(assert (=> d!1529709 (= (isEmpty!29367 lt!1945355) (not ((_ is Some!12955) lt!1945355)))))

(assert (=> d!1529539 d!1529709))

(declare-fun d!1529711 () Bool)

(declare-fun res!2031458 () Bool)

(declare-fun e!2986495 () Bool)

(assert (=> d!1529711 (=> res!2031458 e!2986495)))

(assert (=> d!1529711 (= res!2031458 (not ((_ is Cons!54025) lt!1945158)))))

(assert (=> d!1529711 (= (noDuplicateKeys!2298 lt!1945158) e!2986495)))

(declare-fun b!4783465 () Bool)

(declare-fun e!2986496 () Bool)

(assert (=> b!4783465 (= e!2986495 e!2986496)))

(declare-fun res!2031459 () Bool)

(assert (=> b!4783465 (=> (not res!2031459) (not e!2986496))))

(assert (=> b!4783465 (= res!2031459 (not (containsKey!3831 (t!361599 lt!1945158) (_1!31558 (h!60445 lt!1945158)))))))

(declare-fun b!4783466 () Bool)

(assert (=> b!4783466 (= e!2986496 (noDuplicateKeys!2298 (t!361599 lt!1945158)))))

(assert (= (and d!1529711 (not res!2031458)) b!4783465))

(assert (= (and b!4783465 res!2031459) b!4783466))

(declare-fun m!5761440 () Bool)

(assert (=> b!4783465 m!5761440))

(assert (=> b!4783466 m!5761432))

(assert (=> d!1529539 d!1529711))

(declare-fun d!1529713 () Bool)

(assert (=> d!1529713 (= (isDefined!10099 lt!1945183) (not (isEmpty!29367 lt!1945183)))))

(declare-fun bs!1152616 () Bool)

(assert (= bs!1152616 d!1529713))

(assert (=> bs!1152616 m!5760702))

(assert (=> b!4783006 d!1529713))

(declare-fun d!1529715 () Bool)

(declare-fun res!2031460 () Bool)

(declare-fun e!2986497 () Bool)

(assert (=> d!1529715 (=> res!2031460 e!2986497)))

(assert (=> d!1529715 (= res!2031460 ((_ is Nil!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529715 (= (forall!12136 (toList!6759 lm!2709) lambda!228651) e!2986497)))

(declare-fun b!4783467 () Bool)

(declare-fun e!2986498 () Bool)

(assert (=> b!4783467 (= e!2986497 e!2986498)))

(declare-fun res!2031461 () Bool)

(assert (=> b!4783467 (=> (not res!2031461) (not e!2986498))))

(assert (=> b!4783467 (= res!2031461 (dynLambda!22020 lambda!228651 (h!60446 (toList!6759 lm!2709))))))

(declare-fun b!4783468 () Bool)

(assert (=> b!4783468 (= e!2986498 (forall!12136 (t!361600 (toList!6759 lm!2709)) lambda!228651))))

(assert (= (and d!1529715 (not res!2031460)) b!4783467))

(assert (= (and b!4783467 res!2031461) b!4783468))

(declare-fun b_lambda!185879 () Bool)

(assert (=> (not b_lambda!185879) (not b!4783467)))

(declare-fun m!5761442 () Bool)

(assert (=> b!4783467 m!5761442))

(declare-fun m!5761444 () Bool)

(assert (=> b!4783468 m!5761444))

(assert (=> d!1529533 d!1529715))

(declare-fun bs!1152617 () Bool)

(declare-fun d!1529717 () Bool)

(assert (= bs!1152617 (and d!1529717 d!1529443)))

(declare-fun lambda!228721 () Int)

(assert (=> bs!1152617 (= lambda!228721 lambda!228617)))

(declare-fun bs!1152618 () Bool)

(assert (= bs!1152618 (and d!1529717 d!1529511)))

(assert (=> bs!1152618 (= lambda!228721 lambda!228647)))

(declare-fun bs!1152619 () Bool)

(assert (= bs!1152619 (and d!1529717 d!1529495)))

(assert (=> bs!1152619 (= lambda!228721 lambda!228638)))

(declare-fun bs!1152620 () Bool)

(assert (= bs!1152620 (and d!1529717 d!1529549)))

(assert (=> bs!1152620 (= lambda!228721 lambda!228652)))

(declare-fun bs!1152621 () Bool)

(assert (= bs!1152621 (and d!1529717 d!1529533)))

(assert (=> bs!1152621 (= lambda!228721 lambda!228651)))

(declare-fun bs!1152622 () Bool)

(assert (= bs!1152622 (and d!1529717 d!1529469)))

(assert (=> bs!1152622 (= lambda!228721 lambda!228623)))

(declare-fun bs!1152623 () Bool)

(assert (= bs!1152623 (and d!1529717 d!1529485)))

(assert (=> bs!1152623 (= lambda!228721 lambda!228632)))

(declare-fun bs!1152624 () Bool)

(assert (= bs!1152624 (and d!1529717 d!1529685)))

(assert (=> bs!1152624 (= lambda!228721 lambda!228718)))

(declare-fun bs!1152625 () Bool)

(assert (= bs!1152625 (and d!1529717 d!1529493)))

(assert (=> bs!1152625 (not (= lambda!228721 lambda!228635))))

(declare-fun bs!1152626 () Bool)

(assert (= bs!1152626 (and d!1529717 d!1529523)))

(assert (=> bs!1152626 (= lambda!228721 lambda!228650)))

(declare-fun bs!1152627 () Bool)

(assert (= bs!1152627 (and d!1529717 d!1529439)))

(assert (=> bs!1152627 (= lambda!228721 lambda!228604)))

(declare-fun bs!1152628 () Bool)

(assert (= bs!1152628 (and d!1529717 start!491398)))

(assert (=> bs!1152628 (= lambda!228721 lambda!228601)))

(declare-fun bs!1152629 () Bool)

(assert (= bs!1152629 (and d!1529717 d!1529521)))

(assert (=> bs!1152629 (not (= lambda!228721 lambda!228648))))

(declare-fun bs!1152630 () Bool)

(assert (= bs!1152630 (and d!1529717 d!1529551)))

(assert (=> bs!1152630 (= lambda!228721 lambda!228653)))

(assert (=> d!1529717 (isDefined!10099 (getPair!812 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)) key!6641))))

(declare-fun lt!1945551 () Unit!139346)

(assert (=> d!1529717 (= lt!1945551 (forallContained!4080 (toList!6759 lm!2709) lambda!228721 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))))))

(declare-fun lt!1945548 () Unit!139346)

(declare-fun lt!1945547 () Unit!139346)

(assert (=> d!1529717 (= lt!1945548 lt!1945547)))

(declare-fun lt!1945545 () (_ BitVec 64))

(declare-fun lt!1945549 () List!54149)

(assert (=> d!1529717 (contains!17574 (toList!6759 lm!2709) (tuple2!56531 lt!1945545 lt!1945549))))

(assert (=> d!1529717 (= lt!1945547 (lemmaGetValueImpliesTupleContained!619 lm!2709 lt!1945545 lt!1945549))))

(assert (=> d!1529717 (= lt!1945549 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))))

(assert (=> d!1529717 (= lt!1945545 (hash!4841 hashF!1687 key!6641))))

(declare-fun lt!1945550 () Unit!139346)

(declare-fun lt!1945546 () Unit!139346)

(assert (=> d!1529717 (= lt!1945550 lt!1945546)))

(assert (=> d!1529717 (contains!17575 lm!2709 (hash!4841 hashF!1687 key!6641))))

(assert (=> d!1529717 (= lt!1945546 (lemmaInGenMapThenLongMapContainsHash!1036 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529717 true))

(declare-fun _$25!337 () Unit!139346)

(assert (=> d!1529717 (= (choose!34325 lm!2709 key!6641 hashF!1687) _$25!337)))

(declare-fun bs!1152631 () Bool)

(assert (= bs!1152631 d!1529717))

(declare-fun m!5761446 () Bool)

(assert (=> bs!1152631 m!5761446))

(assert (=> bs!1152631 m!5760964))

(assert (=> bs!1152631 m!5760966))

(assert (=> bs!1152631 m!5760676))

(assert (=> bs!1152631 m!5760976))

(declare-fun m!5761448 () Bool)

(assert (=> bs!1152631 m!5761448))

(declare-fun m!5761450 () Bool)

(assert (=> bs!1152631 m!5761450))

(assert (=> bs!1152631 m!5760976))

(assert (=> bs!1152631 m!5760964))

(assert (=> bs!1152631 m!5760676))

(assert (=> bs!1152631 m!5760970))

(assert (=> bs!1152631 m!5760680))

(assert (=> bs!1152631 m!5760676))

(assert (=> d!1529533 d!1529717))

(declare-fun d!1529719 () Bool)

(declare-fun res!2031462 () Bool)

(declare-fun e!2986499 () Bool)

(assert (=> d!1529719 (=> res!2031462 e!2986499)))

(assert (=> d!1529719 (= res!2031462 (not ((_ is Cons!54025) (_2!31559 lt!1945171))))))

(assert (=> d!1529719 (= (noDuplicateKeys!2298 (_2!31559 lt!1945171)) e!2986499)))

(declare-fun b!4783469 () Bool)

(declare-fun e!2986500 () Bool)

(assert (=> b!4783469 (= e!2986499 e!2986500)))

(declare-fun res!2031463 () Bool)

(assert (=> b!4783469 (=> (not res!2031463) (not e!2986500))))

(assert (=> b!4783469 (= res!2031463 (not (containsKey!3831 (t!361599 (_2!31559 lt!1945171)) (_1!31558 (h!60445 (_2!31559 lt!1945171))))))))

(declare-fun b!4783470 () Bool)

(assert (=> b!4783470 (= e!2986500 (noDuplicateKeys!2298 (t!361599 (_2!31559 lt!1945171))))))

(assert (= (and d!1529719 (not res!2031462)) b!4783469))

(assert (= (and b!4783469 res!2031463) b!4783470))

(declare-fun m!5761452 () Bool)

(assert (=> b!4783469 m!5761452))

(declare-fun m!5761454 () Bool)

(assert (=> b!4783470 m!5761454))

(assert (=> bs!1152490 d!1529719))

(declare-fun d!1529721 () Bool)

(declare-fun res!2031464 () Bool)

(declare-fun e!2986501 () Bool)

(assert (=> d!1529721 (=> res!2031464 e!2986501)))

(assert (=> d!1529721 (= res!2031464 (and ((_ is Cons!54026) (toList!6759 lt!1945162)) (= (_1!31559 (h!60446 (toList!6759 lt!1945162))) lt!1945161)))))

(assert (=> d!1529721 (= (containsKey!3834 (toList!6759 lt!1945162) lt!1945161) e!2986501)))

(declare-fun b!4783471 () Bool)

(declare-fun e!2986502 () Bool)

(assert (=> b!4783471 (= e!2986501 e!2986502)))

(declare-fun res!2031465 () Bool)

(assert (=> b!4783471 (=> (not res!2031465) (not e!2986502))))

(assert (=> b!4783471 (= res!2031465 (and (or (not ((_ is Cons!54026) (toList!6759 lt!1945162))) (bvsle (_1!31559 (h!60446 (toList!6759 lt!1945162))) lt!1945161)) ((_ is Cons!54026) (toList!6759 lt!1945162)) (bvslt (_1!31559 (h!60446 (toList!6759 lt!1945162))) lt!1945161)))))

(declare-fun b!4783472 () Bool)

(assert (=> b!4783472 (= e!2986502 (containsKey!3834 (t!361600 (toList!6759 lt!1945162)) lt!1945161))))

(assert (= (and d!1529721 (not res!2031464)) b!4783471))

(assert (= (and b!4783471 res!2031465) b!4783472))

(declare-fun m!5761456 () Bool)

(assert (=> b!4783472 m!5761456))

(assert (=> d!1529491 d!1529721))

(assert (=> b!4783208 d!1529551))

(declare-fun d!1529723 () Bool)

(assert (=> d!1529723 (= (isDefined!10099 (getPair!812 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)) key!6641)) (not (isEmpty!29367 (getPair!812 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)) key!6641))))))

(declare-fun bs!1152632 () Bool)

(assert (= bs!1152632 d!1529723))

(assert (=> bs!1152632 m!5760964))

(declare-fun m!5761458 () Bool)

(assert (=> bs!1152632 m!5761458))

(assert (=> b!4783208 d!1529723))

(declare-fun d!1529725 () Bool)

(assert (=> d!1529725 (contains!17574 (toList!6759 lm!2709) (tuple2!56531 lt!1945348 lt!1945346))))

(declare-fun lt!1945552 () Unit!139346)

(assert (=> d!1529725 (= lt!1945552 (choose!34328 lm!2709 lt!1945348 lt!1945346))))

(assert (=> d!1529725 (contains!17575 lm!2709 lt!1945348)))

(assert (=> d!1529725 (= (lemmaGetValueImpliesTupleContained!619 lm!2709 lt!1945348 lt!1945346) lt!1945552)))

(declare-fun bs!1152633 () Bool)

(assert (= bs!1152633 d!1529725))

(assert (=> bs!1152633 m!5760974))

(declare-fun m!5761460 () Bool)

(assert (=> bs!1152633 m!5761460))

(assert (=> bs!1152633 m!5760972))

(assert (=> b!4783208 d!1529725))

(declare-fun d!1529727 () Bool)

(declare-fun e!2986503 () Bool)

(assert (=> d!1529727 e!2986503))

(declare-fun res!2031466 () Bool)

(assert (=> d!1529727 (=> res!2031466 e!2986503)))

(declare-fun lt!1945556 () Bool)

(assert (=> d!1529727 (= res!2031466 (not lt!1945556))))

(declare-fun lt!1945553 () Bool)

(assert (=> d!1529727 (= lt!1945556 lt!1945553)))

(declare-fun lt!1945554 () Unit!139346)

(declare-fun e!2986504 () Unit!139346)

(assert (=> d!1529727 (= lt!1945554 e!2986504)))

(declare-fun c!815436 () Bool)

(assert (=> d!1529727 (= c!815436 lt!1945553)))

(assert (=> d!1529727 (= lt!1945553 (containsKey!3834 (toList!6759 lm!2709) (hash!4841 hashF!1687 key!6641)))))

(assert (=> d!1529727 (= (contains!17575 lm!2709 (hash!4841 hashF!1687 key!6641)) lt!1945556)))

(declare-fun b!4783473 () Bool)

(declare-fun lt!1945555 () Unit!139346)

(assert (=> b!4783473 (= e!2986504 lt!1945555)))

(assert (=> b!4783473 (= lt!1945555 (lemmaContainsKeyImpliesGetValueByKeyDefined!2087 (toList!6759 lm!2709) (hash!4841 hashF!1687 key!6641)))))

(assert (=> b!4783473 (isDefined!10102 (getValueByKey!2292 (toList!6759 lm!2709) (hash!4841 hashF!1687 key!6641)))))

(declare-fun b!4783474 () Bool)

(declare-fun Unit!139381 () Unit!139346)

(assert (=> b!4783474 (= e!2986504 Unit!139381)))

(declare-fun b!4783475 () Bool)

(assert (=> b!4783475 (= e!2986503 (isDefined!10102 (getValueByKey!2292 (toList!6759 lm!2709) (hash!4841 hashF!1687 key!6641))))))

(assert (= (and d!1529727 c!815436) b!4783473))

(assert (= (and d!1529727 (not c!815436)) b!4783474))

(assert (= (and d!1529727 (not res!2031466)) b!4783475))

(assert (=> d!1529727 m!5760676))

(declare-fun m!5761462 () Bool)

(assert (=> d!1529727 m!5761462))

(assert (=> b!4783473 m!5760676))

(declare-fun m!5761464 () Bool)

(assert (=> b!4783473 m!5761464))

(assert (=> b!4783473 m!5760676))

(declare-fun m!5761466 () Bool)

(assert (=> b!4783473 m!5761466))

(assert (=> b!4783473 m!5761466))

(declare-fun m!5761468 () Bool)

(assert (=> b!4783473 m!5761468))

(assert (=> b!4783475 m!5760676))

(assert (=> b!4783475 m!5761466))

(assert (=> b!4783475 m!5761466))

(assert (=> b!4783475 m!5761468))

(assert (=> b!4783208 d!1529727))

(declare-fun d!1529729 () Bool)

(declare-fun lt!1945557 () Bool)

(assert (=> d!1529729 (= lt!1945557 (select (content!9659 (toList!6759 lm!2709)) (tuple2!56531 lt!1945348 lt!1945346)))))

(declare-fun e!2986505 () Bool)

(assert (=> d!1529729 (= lt!1945557 e!2986505)))

(declare-fun res!2031468 () Bool)

(assert (=> d!1529729 (=> (not res!2031468) (not e!2986505))))

(assert (=> d!1529729 (= res!2031468 ((_ is Cons!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529729 (= (contains!17574 (toList!6759 lm!2709) (tuple2!56531 lt!1945348 lt!1945346)) lt!1945557)))

(declare-fun b!4783476 () Bool)

(declare-fun e!2986506 () Bool)

(assert (=> b!4783476 (= e!2986505 e!2986506)))

(declare-fun res!2031467 () Bool)

(assert (=> b!4783476 (=> res!2031467 e!2986506)))

(assert (=> b!4783476 (= res!2031467 (= (h!60446 (toList!6759 lm!2709)) (tuple2!56531 lt!1945348 lt!1945346)))))

(declare-fun b!4783477 () Bool)

(assert (=> b!4783477 (= e!2986506 (contains!17574 (t!361600 (toList!6759 lm!2709)) (tuple2!56531 lt!1945348 lt!1945346)))))

(assert (= (and d!1529729 res!2031468) b!4783476))

(assert (= (and b!4783476 (not res!2031467)) b!4783477))

(assert (=> d!1529729 m!5761002))

(declare-fun m!5761470 () Bool)

(assert (=> d!1529729 m!5761470))

(declare-fun m!5761472 () Bool)

(assert (=> b!4783477 m!5761472))

(assert (=> b!4783208 d!1529729))

(declare-fun d!1529731 () Bool)

(declare-fun e!2986507 () Bool)

(assert (=> d!1529731 e!2986507))

(declare-fun res!2031469 () Bool)

(assert (=> d!1529731 (=> res!2031469 e!2986507)))

(declare-fun lt!1945561 () Bool)

(assert (=> d!1529731 (= res!2031469 (not lt!1945561))))

(declare-fun lt!1945558 () Bool)

(assert (=> d!1529731 (= lt!1945561 lt!1945558)))

(declare-fun lt!1945559 () Unit!139346)

(declare-fun e!2986508 () Unit!139346)

(assert (=> d!1529731 (= lt!1945559 e!2986508)))

(declare-fun c!815437 () Bool)

(assert (=> d!1529731 (= c!815437 lt!1945558)))

(assert (=> d!1529731 (= lt!1945558 (containsKey!3834 (toList!6759 lm!2709) lt!1945348))))

(assert (=> d!1529731 (= (contains!17575 lm!2709 lt!1945348) lt!1945561)))

(declare-fun b!4783478 () Bool)

(declare-fun lt!1945560 () Unit!139346)

(assert (=> b!4783478 (= e!2986508 lt!1945560)))

(assert (=> b!4783478 (= lt!1945560 (lemmaContainsKeyImpliesGetValueByKeyDefined!2087 (toList!6759 lm!2709) lt!1945348))))

(assert (=> b!4783478 (isDefined!10102 (getValueByKey!2292 (toList!6759 lm!2709) lt!1945348))))

(declare-fun b!4783479 () Bool)

(declare-fun Unit!139382 () Unit!139346)

(assert (=> b!4783479 (= e!2986508 Unit!139382)))

(declare-fun b!4783480 () Bool)

(assert (=> b!4783480 (= e!2986507 (isDefined!10102 (getValueByKey!2292 (toList!6759 lm!2709) lt!1945348)))))

(assert (= (and d!1529731 c!815437) b!4783478))

(assert (= (and d!1529731 (not c!815437)) b!4783479))

(assert (= (and d!1529731 (not res!2031469)) b!4783480))

(declare-fun m!5761474 () Bool)

(assert (=> d!1529731 m!5761474))

(declare-fun m!5761476 () Bool)

(assert (=> b!4783478 m!5761476))

(assert (=> b!4783478 m!5760980))

(assert (=> b!4783478 m!5760980))

(declare-fun m!5761478 () Bool)

(assert (=> b!4783478 m!5761478))

(assert (=> b!4783480 m!5760980))

(assert (=> b!4783480 m!5760980))

(assert (=> b!4783480 m!5761478))

(assert (=> b!4783208 d!1529731))

(declare-fun d!1529733 () Bool)

(assert (=> d!1529733 (= (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)) (get!18381 (getValueByKey!2292 (toList!6759 lm!2709) (hash!4841 hashF!1687 key!6641))))))

(declare-fun bs!1152634 () Bool)

(assert (= bs!1152634 d!1529733))

(assert (=> bs!1152634 m!5760676))

(assert (=> bs!1152634 m!5761466))

(assert (=> bs!1152634 m!5761466))

(declare-fun m!5761480 () Bool)

(assert (=> bs!1152634 m!5761480))

(assert (=> b!4783208 d!1529733))

(declare-fun d!1529735 () Bool)

(assert (=> d!1529735 (dynLambda!22020 lambda!228651 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641))))))

(declare-fun lt!1945562 () Unit!139346)

(assert (=> d!1529735 (= lt!1945562 (choose!34324 (toList!6759 lm!2709) lambda!228651 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))))))

(declare-fun e!2986509 () Bool)

(assert (=> d!1529735 e!2986509))

(declare-fun res!2031470 () Bool)

(assert (=> d!1529735 (=> (not res!2031470) (not e!2986509))))

(assert (=> d!1529735 (= res!2031470 (forall!12136 (toList!6759 lm!2709) lambda!228651))))

(assert (=> d!1529735 (= (forallContained!4080 (toList!6759 lm!2709) lambda!228651 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))) lt!1945562)))

(declare-fun b!4783481 () Bool)

(assert (=> b!4783481 (= e!2986509 (contains!17574 (toList!6759 lm!2709) (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))))))

(assert (= (and d!1529735 res!2031470) b!4783481))

(declare-fun b_lambda!185881 () Bool)

(assert (=> (not b_lambda!185881) (not d!1529735)))

(declare-fun m!5761482 () Bool)

(assert (=> d!1529735 m!5761482))

(declare-fun m!5761484 () Bool)

(assert (=> d!1529735 m!5761484))

(assert (=> d!1529735 m!5760960))

(declare-fun m!5761486 () Bool)

(assert (=> b!4783481 m!5761486))

(assert (=> b!4783208 d!1529735))

(declare-fun e!2986513 () Option!12956)

(declare-fun b!4783482 () Bool)

(assert (=> b!4783482 (= e!2986513 (getPair!812 (t!361599 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641))) key!6641))))

(declare-fun e!2986511 () Bool)

(declare-fun b!4783483 () Bool)

(assert (=> b!4783483 (= e!2986511 (not (containsKey!3831 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)) key!6641)))))

(declare-fun b!4783484 () Bool)

(declare-fun lt!1945563 () Option!12956)

(declare-fun e!2986514 () Bool)

(assert (=> b!4783484 (= e!2986514 (contains!17577 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)) (get!18380 lt!1945563)))))

(declare-fun b!4783485 () Bool)

(declare-fun res!2031471 () Bool)

(assert (=> b!4783485 (=> (not res!2031471) (not e!2986514))))

(assert (=> b!4783485 (= res!2031471 (= (_1!31558 (get!18380 lt!1945563)) key!6641))))

(declare-fun b!4783486 () Bool)

(declare-fun e!2986512 () Bool)

(assert (=> b!4783486 (= e!2986512 e!2986514)))

(declare-fun res!2031472 () Bool)

(assert (=> b!4783486 (=> (not res!2031472) (not e!2986514))))

(assert (=> b!4783486 (= res!2031472 (isDefined!10099 lt!1945563))))

(declare-fun d!1529737 () Bool)

(assert (=> d!1529737 e!2986512))

(declare-fun res!2031474 () Bool)

(assert (=> d!1529737 (=> res!2031474 e!2986512)))

(assert (=> d!1529737 (= res!2031474 e!2986511)))

(declare-fun res!2031473 () Bool)

(assert (=> d!1529737 (=> (not res!2031473) (not e!2986511))))

(assert (=> d!1529737 (= res!2031473 (isEmpty!29367 lt!1945563))))

(declare-fun e!2986510 () Option!12956)

(assert (=> d!1529737 (= lt!1945563 e!2986510)))

(declare-fun c!815439 () Bool)

(assert (=> d!1529737 (= c!815439 (and ((_ is Cons!54025) (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641))) (= (_1!31558 (h!60445 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))) key!6641)))))

(assert (=> d!1529737 (noDuplicateKeys!2298 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))))

(assert (=> d!1529737 (= (getPair!812 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)) key!6641) lt!1945563)))

(declare-fun b!4783487 () Bool)

(assert (=> b!4783487 (= e!2986513 None!12955)))

(declare-fun b!4783488 () Bool)

(assert (=> b!4783488 (= e!2986510 e!2986513)))

(declare-fun c!815438 () Bool)

(assert (=> b!4783488 (= c!815438 ((_ is Cons!54025) (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641))))))

(declare-fun b!4783489 () Bool)

(assert (=> b!4783489 (= e!2986510 (Some!12955 (h!60445 (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))))))

(assert (= (and d!1529737 c!815439) b!4783489))

(assert (= (and d!1529737 (not c!815439)) b!4783488))

(assert (= (and b!4783488 c!815438) b!4783482))

(assert (= (and b!4783488 (not c!815438)) b!4783487))

(assert (= (and d!1529737 res!2031473) b!4783483))

(assert (= (and d!1529737 (not res!2031474)) b!4783486))

(assert (= (and b!4783486 res!2031472) b!4783485))

(assert (= (and b!4783485 res!2031471) b!4783484))

(declare-fun m!5761488 () Bool)

(assert (=> b!4783482 m!5761488))

(declare-fun m!5761490 () Bool)

(assert (=> b!4783485 m!5761490))

(declare-fun m!5761492 () Bool)

(assert (=> b!4783486 m!5761492))

(assert (=> b!4783484 m!5761490))

(assert (=> b!4783484 m!5760976))

(assert (=> b!4783484 m!5761490))

(declare-fun m!5761494 () Bool)

(assert (=> b!4783484 m!5761494))

(declare-fun m!5761496 () Bool)

(assert (=> d!1529737 m!5761496))

(assert (=> d!1529737 m!5760976))

(declare-fun m!5761498 () Bool)

(assert (=> d!1529737 m!5761498))

(assert (=> b!4783483 m!5760976))

(declare-fun m!5761500 () Bool)

(assert (=> b!4783483 m!5761500))

(assert (=> b!4783208 d!1529737))

(assert (=> b!4783208 d!1529541))

(declare-fun b!4783490 () Bool)

(declare-fun e!2986518 () Option!12956)

(assert (=> b!4783490 (= e!2986518 (getPair!812 (t!361599 (t!361599 lt!1945167)) key!6641))))

(declare-fun b!4783491 () Bool)

(declare-fun e!2986516 () Bool)

(assert (=> b!4783491 (= e!2986516 (not (containsKey!3831 (t!361599 lt!1945167) key!6641)))))

(declare-fun b!4783492 () Bool)

(declare-fun e!2986519 () Bool)

(declare-fun lt!1945564 () Option!12956)

(assert (=> b!4783492 (= e!2986519 (contains!17577 (t!361599 lt!1945167) (get!18380 lt!1945564)))))

(declare-fun b!4783493 () Bool)

(declare-fun res!2031475 () Bool)

(assert (=> b!4783493 (=> (not res!2031475) (not e!2986519))))

(assert (=> b!4783493 (= res!2031475 (= (_1!31558 (get!18380 lt!1945564)) key!6641))))

(declare-fun b!4783494 () Bool)

(declare-fun e!2986517 () Bool)

(assert (=> b!4783494 (= e!2986517 e!2986519)))

(declare-fun res!2031476 () Bool)

(assert (=> b!4783494 (=> (not res!2031476) (not e!2986519))))

(assert (=> b!4783494 (= res!2031476 (isDefined!10099 lt!1945564))))

(declare-fun d!1529739 () Bool)

(assert (=> d!1529739 e!2986517))

(declare-fun res!2031478 () Bool)

(assert (=> d!1529739 (=> res!2031478 e!2986517)))

(assert (=> d!1529739 (= res!2031478 e!2986516)))

(declare-fun res!2031477 () Bool)

(assert (=> d!1529739 (=> (not res!2031477) (not e!2986516))))

(assert (=> d!1529739 (= res!2031477 (isEmpty!29367 lt!1945564))))

(declare-fun e!2986515 () Option!12956)

(assert (=> d!1529739 (= lt!1945564 e!2986515)))

(declare-fun c!815441 () Bool)

(assert (=> d!1529739 (= c!815441 (and ((_ is Cons!54025) (t!361599 lt!1945167)) (= (_1!31558 (h!60445 (t!361599 lt!1945167))) key!6641)))))

(assert (=> d!1529739 (noDuplicateKeys!2298 (t!361599 lt!1945167))))

(assert (=> d!1529739 (= (getPair!812 (t!361599 lt!1945167) key!6641) lt!1945564)))

(declare-fun b!4783495 () Bool)

(assert (=> b!4783495 (= e!2986518 None!12955)))

(declare-fun b!4783496 () Bool)

(assert (=> b!4783496 (= e!2986515 e!2986518)))

(declare-fun c!815440 () Bool)

(assert (=> b!4783496 (= c!815440 ((_ is Cons!54025) (t!361599 lt!1945167)))))

(declare-fun b!4783497 () Bool)

(assert (=> b!4783497 (= e!2986515 (Some!12955 (h!60445 (t!361599 lt!1945167))))))

(assert (= (and d!1529739 c!815441) b!4783497))

(assert (= (and d!1529739 (not c!815441)) b!4783496))

(assert (= (and b!4783496 c!815440) b!4783490))

(assert (= (and b!4783496 (not c!815440)) b!4783495))

(assert (= (and d!1529739 res!2031477) b!4783491))

(assert (= (and d!1529739 (not res!2031478)) b!4783494))

(assert (= (and b!4783494 res!2031476) b!4783493))

(assert (= (and b!4783493 res!2031475) b!4783492))

(declare-fun m!5761502 () Bool)

(assert (=> b!4783490 m!5761502))

(declare-fun m!5761504 () Bool)

(assert (=> b!4783493 m!5761504))

(declare-fun m!5761506 () Bool)

(assert (=> b!4783494 m!5761506))

(assert (=> b!4783492 m!5761504))

(assert (=> b!4783492 m!5761504))

(declare-fun m!5761508 () Bool)

(assert (=> b!4783492 m!5761508))

(declare-fun m!5761510 () Bool)

(assert (=> d!1529739 m!5761510))

(assert (=> d!1529739 m!5761244))

(declare-fun m!5761512 () Bool)

(assert (=> b!4783491 m!5761512))

(assert (=> b!4783002 d!1529739))

(declare-fun d!1529741 () Bool)

(assert (=> d!1529741 (= (isDefined!10099 lt!1945355) (not (isEmpty!29367 lt!1945355)))))

(declare-fun bs!1152635 () Bool)

(assert (= bs!1152635 d!1529741))

(assert (=> bs!1152635 m!5760994))

(assert (=> b!4783217 d!1529741))

(declare-fun d!1529743 () Bool)

(declare-fun lt!1945565 () Bool)

(assert (=> d!1529743 (= lt!1945565 (select (content!9661 lt!1945167) (get!18380 lt!1945183)))))

(declare-fun e!2986520 () Bool)

(assert (=> d!1529743 (= lt!1945565 e!2986520)))

(declare-fun res!2031480 () Bool)

(assert (=> d!1529743 (=> (not res!2031480) (not e!2986520))))

(assert (=> d!1529743 (= res!2031480 ((_ is Cons!54025) lt!1945167))))

(assert (=> d!1529743 (= (contains!17577 lt!1945167 (get!18380 lt!1945183)) lt!1945565)))

(declare-fun b!4783498 () Bool)

(declare-fun e!2986521 () Bool)

(assert (=> b!4783498 (= e!2986520 e!2986521)))

(declare-fun res!2031479 () Bool)

(assert (=> b!4783498 (=> res!2031479 e!2986521)))

(assert (=> b!4783498 (= res!2031479 (= (h!60445 lt!1945167) (get!18380 lt!1945183)))))

(declare-fun b!4783499 () Bool)

(assert (=> b!4783499 (= e!2986521 (contains!17577 (t!361599 lt!1945167) (get!18380 lt!1945183)))))

(assert (= (and d!1529743 res!2031480) b!4783498))

(assert (= (and b!4783498 (not res!2031479)) b!4783499))

(declare-fun m!5761514 () Bool)

(assert (=> d!1529743 m!5761514))

(assert (=> d!1529743 m!5760696))

(declare-fun m!5761516 () Bool)

(assert (=> d!1529743 m!5761516))

(assert (=> b!4783499 m!5760696))

(declare-fun m!5761518 () Bool)

(assert (=> b!4783499 m!5761518))

(assert (=> b!4783004 d!1529743))

(declare-fun d!1529745 () Bool)

(assert (=> d!1529745 (= (get!18380 lt!1945183) (v!48182 lt!1945183))))

(assert (=> b!4783004 d!1529745))

(assert (=> d!1529469 d!1529477))

(assert (=> d!1529469 d!1529439))

(declare-fun d!1529747 () Bool)

(assert (=> d!1529747 (contains!17576 (extractMap!2367 (toList!6759 lt!1945162)) key!6641)))

(assert (=> d!1529747 true))

(declare-fun _$34!932 () Unit!139346)

(assert (=> d!1529747 (= (choose!34327 lt!1945162 key!6641 hashF!1687) _$34!932)))

(declare-fun bs!1152636 () Bool)

(assert (= bs!1152636 d!1529747))

(assert (=> bs!1152636 m!5760640))

(assert (=> bs!1152636 m!5760640))

(assert (=> bs!1152636 m!5760650))

(assert (=> d!1529469 d!1529747))

(declare-fun d!1529749 () Bool)

(declare-fun res!2031481 () Bool)

(declare-fun e!2986522 () Bool)

(assert (=> d!1529749 (=> res!2031481 e!2986522)))

(assert (=> d!1529749 (= res!2031481 ((_ is Nil!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529749 (= (forall!12136 (toList!6759 lt!1945162) lambda!228623) e!2986522)))

(declare-fun b!4783500 () Bool)

(declare-fun e!2986523 () Bool)

(assert (=> b!4783500 (= e!2986522 e!2986523)))

(declare-fun res!2031482 () Bool)

(assert (=> b!4783500 (=> (not res!2031482) (not e!2986523))))

(assert (=> b!4783500 (= res!2031482 (dynLambda!22020 lambda!228623 (h!60446 (toList!6759 lt!1945162))))))

(declare-fun b!4783501 () Bool)

(assert (=> b!4783501 (= e!2986523 (forall!12136 (t!361600 (toList!6759 lt!1945162)) lambda!228623))))

(assert (= (and d!1529749 (not res!2031481)) b!4783500))

(assert (= (and b!4783500 res!2031482) b!4783501))

(declare-fun b_lambda!185883 () Bool)

(assert (=> (not b_lambda!185883) (not b!4783500)))

(declare-fun m!5761520 () Bool)

(assert (=> b!4783500 m!5761520))

(declare-fun m!5761522 () Bool)

(assert (=> b!4783501 m!5761522))

(assert (=> d!1529469 d!1529749))

(declare-fun d!1529751 () Bool)

(declare-fun noDuplicatedKeys!424 (List!54149) Bool)

(assert (=> d!1529751 (= (invariantList!1700 (toList!6760 lt!1945186)) (noDuplicatedKeys!424 (toList!6760 lt!1945186)))))

(declare-fun bs!1152637 () Bool)

(assert (= bs!1152637 d!1529751))

(declare-fun m!5761524 () Bool)

(assert (=> bs!1152637 m!5761524))

(assert (=> d!1529439 d!1529751))

(declare-fun d!1529753 () Bool)

(declare-fun res!2031483 () Bool)

(declare-fun e!2986524 () Bool)

(assert (=> d!1529753 (=> res!2031483 e!2986524)))

(assert (=> d!1529753 (= res!2031483 ((_ is Nil!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529753 (= (forall!12136 (toList!6759 lt!1945162) lambda!228604) e!2986524)))

(declare-fun b!4783502 () Bool)

(declare-fun e!2986525 () Bool)

(assert (=> b!4783502 (= e!2986524 e!2986525)))

(declare-fun res!2031484 () Bool)

(assert (=> b!4783502 (=> (not res!2031484) (not e!2986525))))

(assert (=> b!4783502 (= res!2031484 (dynLambda!22020 lambda!228604 (h!60446 (toList!6759 lt!1945162))))))

(declare-fun b!4783503 () Bool)

(assert (=> b!4783503 (= e!2986525 (forall!12136 (t!361600 (toList!6759 lt!1945162)) lambda!228604))))

(assert (= (and d!1529753 (not res!2031483)) b!4783502))

(assert (= (and b!4783502 res!2031484) b!4783503))

(declare-fun b_lambda!185885 () Bool)

(assert (=> (not b_lambda!185885) (not b!4783502)))

(declare-fun m!5761526 () Bool)

(assert (=> b!4783502 m!5761526))

(declare-fun m!5761528 () Bool)

(assert (=> b!4783503 m!5761528))

(assert (=> d!1529439 d!1529753))

(assert (=> b!4783200 d!1529625))

(assert (=> b!4783200 d!1529627))

(declare-fun d!1529755 () Bool)

(assert (=> d!1529755 (isDefined!10100 (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))

(declare-fun lt!1945568 () Unit!139346)

(declare-fun choose!34341 (List!54149 K!15589) Unit!139346)

(assert (=> d!1529755 (= lt!1945568 (choose!34341 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))

(assert (=> d!1529755 (invariantList!1700 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))))

(assert (=> d!1529755 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2085 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641) lt!1945568)))

(declare-fun bs!1152638 () Bool)

(assert (= bs!1152638 d!1529755))

(assert (=> bs!1152638 m!5760944))

(assert (=> bs!1152638 m!5760944))

(assert (=> bs!1152638 m!5760946))

(declare-fun m!5761530 () Bool)

(assert (=> bs!1152638 m!5761530))

(assert (=> bs!1152638 m!5761250))

(assert (=> b!4783202 d!1529755))

(declare-fun d!1529757 () Bool)

(declare-fun isEmpty!29370 (Option!12958) Bool)

(assert (=> d!1529757 (= (isDefined!10100 (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641)) (not (isEmpty!29370 (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))))

(declare-fun bs!1152639 () Bool)

(assert (= bs!1152639 d!1529757))

(assert (=> bs!1152639 m!5760944))

(declare-fun m!5761532 () Bool)

(assert (=> bs!1152639 m!5761532))

(assert (=> b!4783202 d!1529757))

(declare-fun b!4783512 () Bool)

(declare-fun e!2986530 () Option!12958)

(assert (=> b!4783512 (= e!2986530 (Some!12957 (_2!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))))))))

(declare-fun b!4783514 () Bool)

(declare-fun e!2986531 () Option!12958)

(assert (=> b!4783514 (= e!2986531 (getValueByKey!2293 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) key!6641))))

(declare-fun d!1529759 () Bool)

(declare-fun c!815446 () Bool)

(assert (=> d!1529759 (= c!815446 (and ((_ is Cons!54025) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (= (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) key!6641)))))

(assert (=> d!1529759 (= (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641) e!2986530)))

(declare-fun b!4783513 () Bool)

(assert (=> b!4783513 (= e!2986530 e!2986531)))

(declare-fun c!815447 () Bool)

(assert (=> b!4783513 (= c!815447 (and ((_ is Cons!54025) (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) (not (= (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))) key!6641))))))

(declare-fun b!4783515 () Bool)

(assert (=> b!4783515 (= e!2986531 None!12957)))

(assert (= (and d!1529759 c!815446) b!4783512))

(assert (= (and d!1529759 (not c!815446)) b!4783513))

(assert (= (and b!4783513 c!815447) b!4783514))

(assert (= (and b!4783513 (not c!815447)) b!4783515))

(declare-fun m!5761534 () Bool)

(assert (=> b!4783514 m!5761534))

(assert (=> b!4783202 d!1529759))

(declare-fun d!1529761 () Bool)

(assert (=> d!1529761 (contains!17578 (getKeysList!1046 (toList!6760 (extractMap!2367 (toList!6759 lm!2709)))) key!6641)))

(declare-fun lt!1945571 () Unit!139346)

(declare-fun choose!34342 (List!54149 K!15589) Unit!139346)

(assert (=> d!1529761 (= lt!1945571 (choose!34342 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641))))

(assert (=> d!1529761 (invariantList!1700 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))))))

(assert (=> d!1529761 (= (lemmaInListThenGetKeysListContains!1041 (toList!6760 (extractMap!2367 (toList!6759 lm!2709))) key!6641) lt!1945571)))

(declare-fun bs!1152640 () Bool)

(assert (= bs!1152640 d!1529761))

(assert (=> bs!1152640 m!5760936))

(assert (=> bs!1152640 m!5760936))

(declare-fun m!5761536 () Bool)

(assert (=> bs!1152640 m!5761536))

(declare-fun m!5761538 () Bool)

(assert (=> bs!1152640 m!5761538))

(assert (=> bs!1152640 m!5761250))

(assert (=> b!4783202 d!1529761))

(declare-fun d!1529763 () Bool)

(declare-fun res!2031485 () Bool)

(declare-fun e!2986532 () Bool)

(assert (=> d!1529763 (=> res!2031485 e!2986532)))

(assert (=> d!1529763 (= res!2031485 ((_ is Nil!54026) (t!361600 (toList!6759 lm!2709))))))

(assert (=> d!1529763 (= (forall!12136 (t!361600 (toList!6759 lm!2709)) lambda!228601) e!2986532)))

(declare-fun b!4783516 () Bool)

(declare-fun e!2986533 () Bool)

(assert (=> b!4783516 (= e!2986532 e!2986533)))

(declare-fun res!2031486 () Bool)

(assert (=> b!4783516 (=> (not res!2031486) (not e!2986533))))

(assert (=> b!4783516 (= res!2031486 (dynLambda!22020 lambda!228601 (h!60446 (t!361600 (toList!6759 lm!2709)))))))

(declare-fun b!4783517 () Bool)

(assert (=> b!4783517 (= e!2986533 (forall!12136 (t!361600 (t!361600 (toList!6759 lm!2709))) lambda!228601))))

(assert (= (and d!1529763 (not res!2031485)) b!4783516))

(assert (= (and b!4783516 res!2031486) b!4783517))

(declare-fun b_lambda!185887 () Bool)

(assert (=> (not b_lambda!185887) (not b!4783516)))

(declare-fun m!5761540 () Bool)

(assert (=> b!4783516 m!5761540))

(declare-fun m!5761542 () Bool)

(assert (=> b!4783517 m!5761542))

(assert (=> b!4783186 d!1529763))

(assert (=> b!4783123 d!1529639))

(assert (=> b!4783123 d!1529641))

(declare-fun d!1529765 () Bool)

(declare-fun c!815450 () Bool)

(assert (=> d!1529765 (= c!815450 ((_ is Nil!54026) (toList!6759 lt!1945162)))))

(declare-fun e!2986536 () (InoxSet tuple2!56530))

(assert (=> d!1529765 (= (content!9659 (toList!6759 lt!1945162)) e!2986536)))

(declare-fun b!4783522 () Bool)

(assert (=> b!4783522 (= e!2986536 ((as const (Array tuple2!56530 Bool)) false))))

(declare-fun b!4783523 () Bool)

(assert (=> b!4783523 (= e!2986536 ((_ map or) (store ((as const (Array tuple2!56530 Bool)) false) (h!60446 (toList!6759 lt!1945162)) true) (content!9659 (t!361600 (toList!6759 lt!1945162)))))))

(assert (= (and d!1529765 c!815450) b!4783522))

(assert (= (and d!1529765 (not c!815450)) b!4783523))

(declare-fun m!5761544 () Bool)

(assert (=> b!4783523 m!5761544))

(declare-fun m!5761546 () Bool)

(assert (=> b!4783523 m!5761546))

(assert (=> d!1529489 d!1529765))

(declare-fun bs!1152641 () Bool)

(declare-fun b!4783525 () Bool)

(assert (= bs!1152641 (and b!4783525 b!4783422)))

(declare-fun lambda!228722 () Int)

(assert (=> bs!1152641 (= (= (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228722 lambda!228714))))

(declare-fun bs!1152642 () Bool)

(assert (= bs!1152642 (and b!4783525 b!4783421)))

(assert (=> bs!1152642 (= (= (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228722 lambda!228715))))

(assert (=> bs!1152642 (= (= (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) lt!1945511) (= lambda!228722 lambda!228716))))

(declare-fun bs!1152643 () Bool)

(assert (= bs!1152643 (and b!4783525 d!1529683)))

(assert (=> bs!1152643 (= (= (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) lt!1945512) (= lambda!228722 lambda!228717))))

(assert (=> b!4783525 true))

(declare-fun bs!1152644 () Bool)

(declare-fun b!4783524 () Bool)

(assert (= bs!1152644 (and b!4783524 b!4783421)))

(declare-fun lambda!228723 () Int)

(assert (=> bs!1152644 (= (= (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228723 lambda!228715))))

(declare-fun bs!1152645 () Bool)

(assert (= bs!1152645 (and b!4783524 d!1529683)))

(assert (=> bs!1152645 (= (= (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) lt!1945512) (= lambda!228723 lambda!228717))))

(assert (=> bs!1152644 (= (= (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) lt!1945511) (= lambda!228723 lambda!228716))))

(declare-fun bs!1152646 () Bool)

(assert (= bs!1152646 (and b!4783524 b!4783422)))

(assert (=> bs!1152646 (= (= (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228723 lambda!228714))))

(declare-fun bs!1152647 () Bool)

(assert (= bs!1152647 (and b!4783524 b!4783525)))

(assert (=> bs!1152647 (= lambda!228723 lambda!228722)))

(assert (=> b!4783524 true))

(declare-fun lambda!228724 () Int)

(declare-fun lt!1945579 () ListMap!6231)

(assert (=> bs!1152644 (= (= lt!1945579 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228724 lambda!228715))))

(assert (=> bs!1152645 (= (= lt!1945579 lt!1945512) (= lambda!228724 lambda!228717))))

(assert (=> bs!1152644 (= (= lt!1945579 lt!1945511) (= lambda!228724 lambda!228716))))

(assert (=> bs!1152646 (= (= lt!1945579 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228724 lambda!228714))))

(assert (=> b!4783524 (= (= lt!1945579 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) (= lambda!228724 lambda!228723))))

(assert (=> bs!1152647 (= (= lt!1945579 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) (= lambda!228724 lambda!228722))))

(assert (=> b!4783524 true))

(declare-fun bs!1152648 () Bool)

(declare-fun d!1529767 () Bool)

(assert (= bs!1152648 (and d!1529767 b!4783421)))

(declare-fun lambda!228725 () Int)

(declare-fun lt!1945580 () ListMap!6231)

(assert (=> bs!1152648 (= (= lt!1945580 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228725 lambda!228715))))

(declare-fun bs!1152649 () Bool)

(assert (= bs!1152649 (and d!1529767 b!4783524)))

(assert (=> bs!1152649 (= (= lt!1945580 lt!1945579) (= lambda!228725 lambda!228724))))

(declare-fun bs!1152650 () Bool)

(assert (= bs!1152650 (and d!1529767 d!1529683)))

(assert (=> bs!1152650 (= (= lt!1945580 lt!1945512) (= lambda!228725 lambda!228717))))

(assert (=> bs!1152648 (= (= lt!1945580 lt!1945511) (= lambda!228725 lambda!228716))))

(declare-fun bs!1152651 () Bool)

(assert (= bs!1152651 (and d!1529767 b!4783422)))

(assert (=> bs!1152651 (= (= lt!1945580 (extractMap!2367 (t!361600 (toList!6759 lm!2709)))) (= lambda!228725 lambda!228714))))

(assert (=> bs!1152649 (= (= lt!1945580 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) (= lambda!228725 lambda!228723))))

(declare-fun bs!1152652 () Bool)

(assert (= bs!1152652 (and d!1529767 b!4783525)))

(assert (=> bs!1152652 (= (= lt!1945580 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) (= lambda!228725 lambda!228722))))

(assert (=> d!1529767 true))

(declare-fun e!2986539 () ListMap!6231)

(assert (=> b!4783524 (= e!2986539 lt!1945579)))

(declare-fun lt!1945581 () ListMap!6231)

(assert (=> b!4783524 (= lt!1945581 (+!2470 (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) (h!60445 (_2!31559 (h!60446 (toList!6759 lt!1945162))))))))

(assert (=> b!4783524 (= lt!1945579 (addToMapMapFromBucket!1665 (t!361599 (_2!31559 (h!60446 (toList!6759 lt!1945162)))) (+!2470 (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) (h!60445 (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))))

(declare-fun lt!1945586 () Unit!139346)

(declare-fun call!334790 () Unit!139346)

(assert (=> b!4783524 (= lt!1945586 call!334790)))

(assert (=> b!4783524 (forall!12138 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) lambda!228723)))

(declare-fun lt!1945592 () Unit!139346)

(assert (=> b!4783524 (= lt!1945592 lt!1945586)))

(assert (=> b!4783524 (forall!12138 (toList!6760 lt!1945581) lambda!228724)))

(declare-fun lt!1945589 () Unit!139346)

(declare-fun Unit!139383 () Unit!139346)

(assert (=> b!4783524 (= lt!1945589 Unit!139383)))

(assert (=> b!4783524 (forall!12138 (t!361599 (_2!31559 (h!60446 (toList!6759 lt!1945162)))) lambda!228724)))

(declare-fun lt!1945577 () Unit!139346)

(declare-fun Unit!139384 () Unit!139346)

(assert (=> b!4783524 (= lt!1945577 Unit!139384)))

(declare-fun lt!1945587 () Unit!139346)

(declare-fun Unit!139385 () Unit!139346)

(assert (=> b!4783524 (= lt!1945587 Unit!139385)))

(declare-fun lt!1945575 () Unit!139346)

(assert (=> b!4783524 (= lt!1945575 (forallContained!4082 (toList!6760 lt!1945581) lambda!228724 (h!60445 (_2!31559 (h!60446 (toList!6759 lt!1945162))))))))

(assert (=> b!4783524 (contains!17576 lt!1945581 (_1!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lt!1945162))))))))

(declare-fun lt!1945573 () Unit!139346)

(declare-fun Unit!139387 () Unit!139346)

(assert (=> b!4783524 (= lt!1945573 Unit!139387)))

(assert (=> b!4783524 (contains!17576 lt!1945579 (_1!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lt!1945162))))))))

(declare-fun lt!1945583 () Unit!139346)

(declare-fun Unit!139388 () Unit!139346)

(assert (=> b!4783524 (= lt!1945583 Unit!139388)))

(declare-fun call!334791 () Bool)

(assert (=> b!4783524 call!334791))

(declare-fun lt!1945582 () Unit!139346)

(declare-fun Unit!139389 () Unit!139346)

(assert (=> b!4783524 (= lt!1945582 Unit!139389)))

(assert (=> b!4783524 (forall!12138 (toList!6760 lt!1945581) lambda!228724)))

(declare-fun lt!1945585 () Unit!139346)

(declare-fun Unit!139390 () Unit!139346)

(assert (=> b!4783524 (= lt!1945585 Unit!139390)))

(declare-fun lt!1945591 () Unit!139346)

(declare-fun Unit!139391 () Unit!139346)

(assert (=> b!4783524 (= lt!1945591 Unit!139391)))

(declare-fun lt!1945576 () Unit!139346)

(assert (=> b!4783524 (= lt!1945576 (addForallContainsKeyThenBeforeAdding!925 (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) lt!1945579 (_1!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lt!1945162))))) (_2!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))))

(assert (=> b!4783524 (forall!12138 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) lambda!228724)))

(declare-fun lt!1945590 () Unit!139346)

(assert (=> b!4783524 (= lt!1945590 lt!1945576)))

(assert (=> b!4783524 (forall!12138 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) lambda!228724)))

(declare-fun lt!1945572 () Unit!139346)

(declare-fun Unit!139392 () Unit!139346)

(assert (=> b!4783524 (= lt!1945572 Unit!139392)))

(declare-fun res!2031489 () Bool)

(assert (=> b!4783524 (= res!2031489 (forall!12138 (_2!31559 (h!60446 (toList!6759 lt!1945162))) lambda!228724))))

(declare-fun e!2986538 () Bool)

(assert (=> b!4783524 (=> (not res!2031489) (not e!2986538))))

(assert (=> b!4783524 e!2986538))

(declare-fun lt!1945574 () Unit!139346)

(declare-fun Unit!139393 () Unit!139346)

(assert (=> b!4783524 (= lt!1945574 Unit!139393)))

(assert (=> b!4783525 (= e!2986539 (extractMap!2367 (t!361600 (toList!6759 lt!1945162))))))

(declare-fun lt!1945578 () Unit!139346)

(assert (=> b!4783525 (= lt!1945578 call!334790)))

(assert (=> b!4783525 call!334791))

(declare-fun lt!1945588 () Unit!139346)

(assert (=> b!4783525 (= lt!1945588 lt!1945578)))

(declare-fun call!334792 () Bool)

(assert (=> b!4783525 call!334792))

(declare-fun lt!1945584 () Unit!139346)

(declare-fun Unit!139394 () Unit!139346)

(assert (=> b!4783525 (= lt!1945584 Unit!139394)))

(declare-fun bm!334785 () Bool)

(declare-fun c!815451 () Bool)

(assert (=> bm!334785 (= call!334792 (forall!12138 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) (ite c!815451 lambda!228722 lambda!228724)))))

(declare-fun bm!334786 () Bool)

(assert (=> bm!334786 (= call!334790 (lemmaContainsAllItsOwnKeys!926 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))))))

(declare-fun bm!334787 () Bool)

(assert (=> bm!334787 (= call!334791 (forall!12138 (ite c!815451 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) (_2!31559 (h!60446 (toList!6759 lt!1945162)))) (ite c!815451 lambda!228722 lambda!228724)))))

(declare-fun b!4783527 () Bool)

(declare-fun e!2986537 () Bool)

(assert (=> b!4783527 (= e!2986537 (invariantList!1700 (toList!6760 lt!1945580)))))

(declare-fun b!4783528 () Bool)

(declare-fun res!2031487 () Bool)

(assert (=> b!4783528 (=> (not res!2031487) (not e!2986537))))

(assert (=> b!4783528 (= res!2031487 (forall!12138 (toList!6760 (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) lambda!228725))))

(declare-fun b!4783526 () Bool)

(assert (=> b!4783526 (= e!2986538 call!334792)))

(assert (=> d!1529767 e!2986537))

(declare-fun res!2031488 () Bool)

(assert (=> d!1529767 (=> (not res!2031488) (not e!2986537))))

(assert (=> d!1529767 (= res!2031488 (forall!12138 (_2!31559 (h!60446 (toList!6759 lt!1945162))) lambda!228725))))

(assert (=> d!1529767 (= lt!1945580 e!2986539)))

(assert (=> d!1529767 (= c!815451 ((_ is Nil!54025) (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))

(assert (=> d!1529767 (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lt!1945162))))))

(assert (=> d!1529767 (= (addToMapMapFromBucket!1665 (_2!31559 (h!60446 (toList!6759 lt!1945162))) (extractMap!2367 (t!361600 (toList!6759 lt!1945162)))) lt!1945580)))

(assert (= (and d!1529767 c!815451) b!4783525))

(assert (= (and d!1529767 (not c!815451)) b!4783524))

(assert (= (and b!4783524 res!2031489) b!4783526))

(assert (= (or b!4783525 b!4783524) bm!334786))

(assert (= (or b!4783525 b!4783524) bm!334787))

(assert (= (or b!4783525 b!4783526) bm!334785))

(assert (= (and d!1529767 res!2031488) b!4783528))

(assert (= (and b!4783528 res!2031487) b!4783527))

(declare-fun m!5761548 () Bool)

(assert (=> b!4783528 m!5761548))

(declare-fun m!5761550 () Bool)

(assert (=> bm!334787 m!5761550))

(assert (=> bm!334786 m!5760712))

(declare-fun m!5761552 () Bool)

(assert (=> bm!334786 m!5761552))

(declare-fun m!5761554 () Bool)

(assert (=> b!4783527 m!5761554))

(declare-fun m!5761556 () Bool)

(assert (=> b!4783524 m!5761556))

(declare-fun m!5761558 () Bool)

(assert (=> b!4783524 m!5761558))

(declare-fun m!5761560 () Bool)

(assert (=> b!4783524 m!5761560))

(declare-fun m!5761562 () Bool)

(assert (=> b!4783524 m!5761562))

(declare-fun m!5761564 () Bool)

(assert (=> b!4783524 m!5761564))

(declare-fun m!5761566 () Bool)

(assert (=> b!4783524 m!5761566))

(declare-fun m!5761568 () Bool)

(assert (=> b!4783524 m!5761568))

(declare-fun m!5761570 () Bool)

(assert (=> b!4783524 m!5761570))

(assert (=> b!4783524 m!5760712))

(declare-fun m!5761572 () Bool)

(assert (=> b!4783524 m!5761572))

(declare-fun m!5761574 () Bool)

(assert (=> b!4783524 m!5761574))

(declare-fun m!5761576 () Bool)

(assert (=> b!4783524 m!5761576))

(assert (=> b!4783524 m!5761576))

(assert (=> b!4783524 m!5760712))

(assert (=> b!4783524 m!5761562))

(assert (=> b!4783524 m!5761574))

(declare-fun m!5761578 () Bool)

(assert (=> d!1529767 m!5761578))

(assert (=> d!1529767 m!5761048))

(declare-fun m!5761580 () Bool)

(assert (=> bm!334785 m!5761580))

(assert (=> b!4783014 d!1529767))

(declare-fun bs!1152653 () Bool)

(declare-fun d!1529769 () Bool)

(assert (= bs!1152653 (and d!1529769 d!1529443)))

(declare-fun lambda!228726 () Int)

(assert (=> bs!1152653 (= lambda!228726 lambda!228617)))

(declare-fun bs!1152654 () Bool)

(assert (= bs!1152654 (and d!1529769 d!1529511)))

(assert (=> bs!1152654 (= lambda!228726 lambda!228647)))

(declare-fun bs!1152655 () Bool)

(assert (= bs!1152655 (and d!1529769 d!1529495)))

(assert (=> bs!1152655 (= lambda!228726 lambda!228638)))

(declare-fun bs!1152656 () Bool)

(assert (= bs!1152656 (and d!1529769 d!1529549)))

(assert (=> bs!1152656 (= lambda!228726 lambda!228652)))

(declare-fun bs!1152657 () Bool)

(assert (= bs!1152657 (and d!1529769 d!1529533)))

(assert (=> bs!1152657 (= lambda!228726 lambda!228651)))

(declare-fun bs!1152658 () Bool)

(assert (= bs!1152658 (and d!1529769 d!1529469)))

(assert (=> bs!1152658 (= lambda!228726 lambda!228623)))

(declare-fun bs!1152659 () Bool)

(assert (= bs!1152659 (and d!1529769 d!1529485)))

(assert (=> bs!1152659 (= lambda!228726 lambda!228632)))

(declare-fun bs!1152660 () Bool)

(assert (= bs!1152660 (and d!1529769 d!1529685)))

(assert (=> bs!1152660 (= lambda!228726 lambda!228718)))

(declare-fun bs!1152661 () Bool)

(assert (= bs!1152661 (and d!1529769 d!1529493)))

(assert (=> bs!1152661 (not (= lambda!228726 lambda!228635))))

(declare-fun bs!1152662 () Bool)

(assert (= bs!1152662 (and d!1529769 d!1529523)))

(assert (=> bs!1152662 (= lambda!228726 lambda!228650)))

(declare-fun bs!1152663 () Bool)

(assert (= bs!1152663 (and d!1529769 d!1529439)))

(assert (=> bs!1152663 (= lambda!228726 lambda!228604)))

(declare-fun bs!1152664 () Bool)

(assert (= bs!1152664 (and d!1529769 start!491398)))

(assert (=> bs!1152664 (= lambda!228726 lambda!228601)))

(declare-fun bs!1152665 () Bool)

(assert (= bs!1152665 (and d!1529769 d!1529717)))

(assert (=> bs!1152665 (= lambda!228726 lambda!228721)))

(declare-fun bs!1152666 () Bool)

(assert (= bs!1152666 (and d!1529769 d!1529521)))

(assert (=> bs!1152666 (not (= lambda!228726 lambda!228648))))

(declare-fun bs!1152667 () Bool)

(assert (= bs!1152667 (and d!1529769 d!1529551)))

(assert (=> bs!1152667 (= lambda!228726 lambda!228653)))

(declare-fun lt!1945593 () ListMap!6231)

(assert (=> d!1529769 (invariantList!1700 (toList!6760 lt!1945593))))

(declare-fun e!2986540 () ListMap!6231)

(assert (=> d!1529769 (= lt!1945593 e!2986540)))

(declare-fun c!815452 () Bool)

(assert (=> d!1529769 (= c!815452 ((_ is Cons!54026) (t!361600 (toList!6759 lt!1945162))))))

(assert (=> d!1529769 (forall!12136 (t!361600 (toList!6759 lt!1945162)) lambda!228726)))

(assert (=> d!1529769 (= (extractMap!2367 (t!361600 (toList!6759 lt!1945162))) lt!1945593)))

(declare-fun b!4783529 () Bool)

(assert (=> b!4783529 (= e!2986540 (addToMapMapFromBucket!1665 (_2!31559 (h!60446 (t!361600 (toList!6759 lt!1945162)))) (extractMap!2367 (t!361600 (t!361600 (toList!6759 lt!1945162))))))))

(declare-fun b!4783530 () Bool)

(assert (=> b!4783530 (= e!2986540 (ListMap!6232 Nil!54025))))

(assert (= (and d!1529769 c!815452) b!4783529))

(assert (= (and d!1529769 (not c!815452)) b!4783530))

(declare-fun m!5761582 () Bool)

(assert (=> d!1529769 m!5761582))

(declare-fun m!5761584 () Bool)

(assert (=> d!1529769 m!5761584))

(declare-fun m!5761586 () Bool)

(assert (=> b!4783529 m!5761586))

(assert (=> b!4783529 m!5761586))

(declare-fun m!5761588 () Bool)

(assert (=> b!4783529 m!5761588))

(assert (=> b!4783014 d!1529769))

(assert (=> b!4783190 d!1529505))

(declare-fun d!1529771 () Bool)

(assert (=> d!1529771 (= (isDefined!10102 (getValueByKey!2292 (toList!6759 lm!2709) lt!1945161)) (not (isEmpty!29369 (getValueByKey!2292 (toList!6759 lm!2709) lt!1945161))))))

(declare-fun bs!1152668 () Bool)

(assert (= bs!1152668 d!1529771))

(assert (=> bs!1152668 m!5761030))

(declare-fun m!5761590 () Bool)

(assert (=> bs!1152668 m!5761590))

(assert (=> b!4783240 d!1529771))

(declare-fun d!1529773 () Bool)

(declare-fun c!815453 () Bool)

(assert (=> d!1529773 (= c!815453 (and ((_ is Cons!54026) (toList!6759 lm!2709)) (= (_1!31559 (h!60446 (toList!6759 lm!2709))) lt!1945161)))))

(declare-fun e!2986541 () Option!12957)

(assert (=> d!1529773 (= (getValueByKey!2292 (toList!6759 lm!2709) lt!1945161) e!2986541)))

(declare-fun b!4783531 () Bool)

(assert (=> b!4783531 (= e!2986541 (Some!12956 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(declare-fun b!4783534 () Bool)

(declare-fun e!2986542 () Option!12957)

(assert (=> b!4783534 (= e!2986542 None!12956)))

(declare-fun b!4783533 () Bool)

(assert (=> b!4783533 (= e!2986542 (getValueByKey!2292 (t!361600 (toList!6759 lm!2709)) lt!1945161))))

(declare-fun b!4783532 () Bool)

(assert (=> b!4783532 (= e!2986541 e!2986542)))

(declare-fun c!815454 () Bool)

(assert (=> b!4783532 (= c!815454 (and ((_ is Cons!54026) (toList!6759 lm!2709)) (not (= (_1!31559 (h!60446 (toList!6759 lm!2709))) lt!1945161))))))

(assert (= (and d!1529773 c!815453) b!4783531))

(assert (= (and d!1529773 (not c!815453)) b!4783532))

(assert (= (and b!4783532 c!815454) b!4783533))

(assert (= (and b!4783532 (not c!815454)) b!4783534))

(declare-fun m!5761592 () Bool)

(assert (=> b!4783533 m!5761592))

(assert (=> b!4783240 d!1529773))

(declare-fun d!1529775 () Bool)

(declare-fun res!2031492 () Bool)

(declare-fun e!2986544 () Bool)

(assert (=> d!1529775 (=> res!2031492 e!2986544)))

(declare-fun e!2986543 () Bool)

(assert (=> d!1529775 (= res!2031492 e!2986543)))

(declare-fun res!2031490 () Bool)

(assert (=> d!1529775 (=> (not res!2031490) (not e!2986543))))

(assert (=> d!1529775 (= res!2031490 ((_ is Cons!54026) (t!361600 (toList!6759 lm!2709))))))

(assert (=> d!1529775 (= (containsKeyBiggerList!496 (t!361600 (toList!6759 lm!2709)) key!6641) e!2986544)))

(declare-fun b!4783535 () Bool)

(assert (=> b!4783535 (= e!2986543 (containsKey!3831 (_2!31559 (h!60446 (t!361600 (toList!6759 lm!2709)))) key!6641))))

(declare-fun b!4783536 () Bool)

(declare-fun e!2986545 () Bool)

(assert (=> b!4783536 (= e!2986544 e!2986545)))

(declare-fun res!2031491 () Bool)

(assert (=> b!4783536 (=> (not res!2031491) (not e!2986545))))

(assert (=> b!4783536 (= res!2031491 ((_ is Cons!54026) (t!361600 (toList!6759 lm!2709))))))

(declare-fun b!4783537 () Bool)

(assert (=> b!4783537 (= e!2986545 (containsKeyBiggerList!496 (t!361600 (t!361600 (toList!6759 lm!2709))) key!6641))))

(assert (= (and d!1529775 res!2031490) b!4783535))

(assert (= (and d!1529775 (not res!2031492)) b!4783536))

(assert (= (and b!4783536 res!2031491) b!4783537))

(declare-fun m!5761594 () Bool)

(assert (=> b!4783535 m!5761594))

(declare-fun m!5761596 () Bool)

(assert (=> b!4783537 m!5761596))

(assert (=> b!4783192 d!1529775))

(declare-fun d!1529777 () Bool)

(declare-fun lt!1945594 () Bool)

(assert (=> d!1529777 (= lt!1945594 (select (content!9659 (toList!6759 lt!1945162)) (tuple2!56531 lt!1945161 lt!1945167)))))

(declare-fun e!2986546 () Bool)

(assert (=> d!1529777 (= lt!1945594 e!2986546)))

(declare-fun res!2031494 () Bool)

(assert (=> d!1529777 (=> (not res!2031494) (not e!2986546))))

(assert (=> d!1529777 (= res!2031494 ((_ is Cons!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529777 (= (contains!17574 (toList!6759 lt!1945162) (tuple2!56531 lt!1945161 lt!1945167)) lt!1945594)))

(declare-fun b!4783538 () Bool)

(declare-fun e!2986547 () Bool)

(assert (=> b!4783538 (= e!2986546 e!2986547)))

(declare-fun res!2031493 () Bool)

(assert (=> b!4783538 (=> res!2031493 e!2986547)))

(assert (=> b!4783538 (= res!2031493 (= (h!60446 (toList!6759 lt!1945162)) (tuple2!56531 lt!1945161 lt!1945167)))))

(declare-fun b!4783539 () Bool)

(assert (=> b!4783539 (= e!2986547 (contains!17574 (t!361600 (toList!6759 lt!1945162)) (tuple2!56531 lt!1945161 lt!1945167)))))

(assert (= (and d!1529777 res!2031494) b!4783538))

(assert (= (and b!4783538 (not res!2031493)) b!4783539))

(assert (=> d!1529777 m!5760858))

(declare-fun m!5761598 () Bool)

(assert (=> d!1529777 m!5761598))

(declare-fun m!5761600 () Bool)

(assert (=> b!4783539 m!5761600))

(assert (=> d!1529473 d!1529777))

(declare-fun d!1529779 () Bool)

(assert (=> d!1529779 (contains!17574 (toList!6759 lt!1945162) (tuple2!56531 lt!1945161 lt!1945167))))

(assert (=> d!1529779 true))

(declare-fun _$41!506 () Unit!139346)

(assert (=> d!1529779 (= (choose!34328 lt!1945162 lt!1945161 lt!1945167) _$41!506)))

(declare-fun bs!1152669 () Bool)

(assert (= bs!1152669 d!1529779))

(assert (=> bs!1152669 m!5760804))

(assert (=> d!1529473 d!1529779))

(assert (=> d!1529473 d!1529491))

(declare-fun d!1529781 () Bool)

(declare-fun c!815455 () Bool)

(assert (=> d!1529781 (= c!815455 ((_ is Nil!54026) (toList!6759 lm!2709)))))

(declare-fun e!2986548 () (InoxSet tuple2!56530))

(assert (=> d!1529781 (= (content!9659 (toList!6759 lm!2709)) e!2986548)))

(declare-fun b!4783540 () Bool)

(assert (=> b!4783540 (= e!2986548 ((as const (Array tuple2!56530 Bool)) false))))

(declare-fun b!4783541 () Bool)

(assert (=> b!4783541 (= e!2986548 ((_ map or) (store ((as const (Array tuple2!56530 Bool)) false) (h!60446 (toList!6759 lm!2709)) true) (content!9659 (t!361600 (toList!6759 lm!2709)))))))

(assert (= (and d!1529781 c!815455) b!4783540))

(assert (= (and d!1529781 (not c!815455)) b!4783541))

(declare-fun m!5761602 () Bool)

(assert (=> b!4783541 m!5761602))

(assert (=> b!4783541 m!5761252))

(assert (=> d!1529543 d!1529781))

(declare-fun d!1529783 () Bool)

(declare-fun res!2031497 () Bool)

(declare-fun e!2986550 () Bool)

(assert (=> d!1529783 (=> res!2031497 e!2986550)))

(declare-fun e!2986549 () Bool)

(assert (=> d!1529783 (= res!2031497 e!2986549)))

(declare-fun res!2031495 () Bool)

(assert (=> d!1529783 (=> (not res!2031495) (not e!2986549))))

(assert (=> d!1529783 (= res!2031495 ((_ is Cons!54026) (t!361600 (toList!6759 lt!1945162))))))

(assert (=> d!1529783 (= (containsKeyBiggerList!496 (t!361600 (toList!6759 lt!1945162)) key!6641) e!2986550)))

(declare-fun b!4783542 () Bool)

(assert (=> b!4783542 (= e!2986549 (containsKey!3831 (_2!31559 (h!60446 (t!361600 (toList!6759 lt!1945162)))) key!6641))))

(declare-fun b!4783543 () Bool)

(declare-fun e!2986551 () Bool)

(assert (=> b!4783543 (= e!2986550 e!2986551)))

(declare-fun res!2031496 () Bool)

(assert (=> b!4783543 (=> (not res!2031496) (not e!2986551))))

(assert (=> b!4783543 (= res!2031496 ((_ is Cons!54026) (t!361600 (toList!6759 lt!1945162))))))

(declare-fun b!4783544 () Bool)

(assert (=> b!4783544 (= e!2986551 (containsKeyBiggerList!496 (t!361600 (t!361600 (toList!6759 lt!1945162))) key!6641))))

(assert (= (and d!1529783 res!2031495) b!4783542))

(assert (= (and d!1529783 (not res!2031497)) b!4783543))

(assert (= (and b!4783543 res!2031496) b!4783544))

(declare-fun m!5761604 () Bool)

(assert (=> b!4783542 m!5761604))

(declare-fun m!5761606 () Bool)

(assert (=> b!4783544 m!5761606))

(assert (=> b!4783189 d!1529783))

(assert (=> b!4783205 d!1529757))

(assert (=> b!4783205 d!1529759))

(declare-fun d!1529785 () Bool)

(declare-fun lt!1945595 () Bool)

(assert (=> d!1529785 (= lt!1945595 (select (content!9660 e!2986256) key!6641))))

(declare-fun e!2986553 () Bool)

(assert (=> d!1529785 (= lt!1945595 e!2986553)))

(declare-fun res!2031498 () Bool)

(assert (=> d!1529785 (=> (not res!2031498) (not e!2986553))))

(assert (=> d!1529785 (= res!2031498 ((_ is Cons!54027) e!2986256))))

(assert (=> d!1529785 (= (contains!17578 e!2986256 key!6641) lt!1945595)))

(declare-fun b!4783545 () Bool)

(declare-fun e!2986552 () Bool)

(assert (=> b!4783545 (= e!2986553 e!2986552)))

(declare-fun res!2031499 () Bool)

(assert (=> b!4783545 (=> res!2031499 e!2986552)))

(assert (=> b!4783545 (= res!2031499 (= (h!60447 e!2986256) key!6641))))

(declare-fun b!4783546 () Bool)

(assert (=> b!4783546 (= e!2986552 (contains!17578 (t!361601 e!2986256) key!6641))))

(assert (= (and d!1529785 res!2031498) b!4783545))

(assert (= (and b!4783545 (not res!2031499)) b!4783546))

(declare-fun m!5761608 () Bool)

(assert (=> d!1529785 m!5761608))

(declare-fun m!5761610 () Bool)

(assert (=> d!1529785 m!5761610))

(declare-fun m!5761612 () Bool)

(assert (=> b!4783546 m!5761612))

(assert (=> bm!334773 d!1529785))

(declare-fun d!1529787 () Bool)

(declare-fun lt!1945596 () Bool)

(assert (=> d!1529787 (= lt!1945596 (select (content!9659 (t!361600 (toList!6759 lt!1945162))) lt!1945157))))

(declare-fun e!2986554 () Bool)

(assert (=> d!1529787 (= lt!1945596 e!2986554)))

(declare-fun res!2031501 () Bool)

(assert (=> d!1529787 (=> (not res!2031501) (not e!2986554))))

(assert (=> d!1529787 (= res!2031501 ((_ is Cons!54026) (t!361600 (toList!6759 lt!1945162))))))

(assert (=> d!1529787 (= (contains!17574 (t!361600 (toList!6759 lt!1945162)) lt!1945157) lt!1945596)))

(declare-fun b!4783547 () Bool)

(declare-fun e!2986555 () Bool)

(assert (=> b!4783547 (= e!2986554 e!2986555)))

(declare-fun res!2031500 () Bool)

(assert (=> b!4783547 (=> res!2031500 e!2986555)))

(assert (=> b!4783547 (= res!2031500 (= (h!60446 (t!361600 (toList!6759 lt!1945162))) lt!1945157))))

(declare-fun b!4783548 () Bool)

(assert (=> b!4783548 (= e!2986555 (contains!17574 (t!361600 (t!361600 (toList!6759 lt!1945162))) lt!1945157))))

(assert (= (and d!1529787 res!2031501) b!4783547))

(assert (= (and b!4783547 (not res!2031500)) b!4783548))

(assert (=> d!1529787 m!5761546))

(declare-fun m!5761614 () Bool)

(assert (=> d!1529787 m!5761614))

(declare-fun m!5761616 () Bool)

(assert (=> b!4783548 m!5761616))

(assert (=> b!4783142 d!1529787))

(declare-fun d!1529789 () Bool)

(declare-fun res!2031502 () Bool)

(declare-fun e!2986556 () Bool)

(assert (=> d!1529789 (=> res!2031502 e!2986556)))

(assert (=> d!1529789 (= res!2031502 (not ((_ is Cons!54025) (_2!31559 (h!60446 (toList!6759 lm!2709))))))))

(assert (=> d!1529789 (= (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lm!2709)))) e!2986556)))

(declare-fun b!4783549 () Bool)

(declare-fun e!2986557 () Bool)

(assert (=> b!4783549 (= e!2986556 e!2986557)))

(declare-fun res!2031503 () Bool)

(assert (=> b!4783549 (=> (not res!2031503) (not e!2986557))))

(assert (=> b!4783549 (= res!2031503 (not (containsKey!3831 (t!361599 (_2!31559 (h!60446 (toList!6759 lm!2709)))) (_1!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lm!2709))))))))))

(declare-fun b!4783550 () Bool)

(assert (=> b!4783550 (= e!2986557 (noDuplicateKeys!2298 (t!361599 (_2!31559 (h!60446 (toList!6759 lm!2709))))))))

(assert (= (and d!1529789 (not res!2031502)) b!4783549))

(assert (= (and b!4783549 res!2031503) b!4783550))

(declare-fun m!5761618 () Bool)

(assert (=> b!4783549 m!5761618))

(declare-fun m!5761620 () Bool)

(assert (=> b!4783550 m!5761620))

(assert (=> bs!1152488 d!1529789))

(declare-fun d!1529791 () Bool)

(assert (=> d!1529791 (= (isDefined!10100 (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641)) (not (isEmpty!29370 (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))))

(declare-fun bs!1152670 () Bool)

(assert (= bs!1152670 d!1529791))

(assert (=> bs!1152670 m!5760824))

(declare-fun m!5761622 () Bool)

(assert (=> bs!1152670 m!5761622))

(assert (=> b!4783128 d!1529791))

(declare-fun b!4783551 () Bool)

(declare-fun e!2986558 () Option!12958)

(assert (=> b!4783551 (= e!2986558 (Some!12957 (_2!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))))))))

(declare-fun b!4783553 () Bool)

(declare-fun e!2986559 () Option!12958)

(assert (=> b!4783553 (= e!2986559 (getValueByKey!2293 (t!361599 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) key!6641))))

(declare-fun d!1529793 () Bool)

(declare-fun c!815456 () Bool)

(assert (=> d!1529793 (= c!815456 (and ((_ is Cons!54025) (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (= (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) key!6641)))))

(assert (=> d!1529793 (= (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641) e!2986558)))

(declare-fun b!4783552 () Bool)

(assert (=> b!4783552 (= e!2986558 e!2986559)))

(declare-fun c!815457 () Bool)

(assert (=> b!4783552 (= c!815457 (and ((_ is Cons!54025) (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) (not (= (_1!31558 (h!60445 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))) key!6641))))))

(declare-fun b!4783554 () Bool)

(assert (=> b!4783554 (= e!2986559 None!12957)))

(assert (= (and d!1529793 c!815456) b!4783551))

(assert (= (and d!1529793 (not c!815456)) b!4783552))

(assert (= (and b!4783552 c!815457) b!4783553))

(assert (= (and b!4783552 (not c!815457)) b!4783554))

(declare-fun m!5761624 () Bool)

(assert (=> b!4783553 m!5761624))

(assert (=> b!4783128 d!1529793))

(declare-fun d!1529795 () Bool)

(assert (=> d!1529795 (= (invariantList!1700 (toList!6760 lt!1945358)) (noDuplicatedKeys!424 (toList!6760 lt!1945358)))))

(declare-fun bs!1152671 () Bool)

(assert (= bs!1152671 d!1529795))

(declare-fun m!5761626 () Bool)

(assert (=> bs!1152671 m!5761626))

(assert (=> d!1529549 d!1529795))

(declare-fun d!1529797 () Bool)

(declare-fun res!2031504 () Bool)

(declare-fun e!2986560 () Bool)

(assert (=> d!1529797 (=> res!2031504 e!2986560)))

(assert (=> d!1529797 (= res!2031504 ((_ is Nil!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529797 (= (forall!12136 (toList!6759 lm!2709) lambda!228652) e!2986560)))

(declare-fun b!4783555 () Bool)

(declare-fun e!2986561 () Bool)

(assert (=> b!4783555 (= e!2986560 e!2986561)))

(declare-fun res!2031505 () Bool)

(assert (=> b!4783555 (=> (not res!2031505) (not e!2986561))))

(assert (=> b!4783555 (= res!2031505 (dynLambda!22020 lambda!228652 (h!60446 (toList!6759 lm!2709))))))

(declare-fun b!4783556 () Bool)

(assert (=> b!4783556 (= e!2986561 (forall!12136 (t!361600 (toList!6759 lm!2709)) lambda!228652))))

(assert (= (and d!1529797 (not res!2031504)) b!4783555))

(assert (= (and b!4783555 res!2031505) b!4783556))

(declare-fun b_lambda!185889 () Bool)

(assert (=> (not b_lambda!185889) (not b!4783555)))

(declare-fun m!5761628 () Bool)

(assert (=> b!4783555 m!5761628))

(declare-fun m!5761630 () Bool)

(assert (=> b!4783556 m!5761630))

(assert (=> d!1529549 d!1529797))

(assert (=> b!4783076 d!1529477))

(assert (=> b!4783076 d!1529439))

(declare-fun d!1529799 () Bool)

(assert (=> d!1529799 (isDefined!10100 (getValueByKey!2293 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))

(declare-fun lt!1945597 () Unit!139346)

(assert (=> d!1529799 (= lt!1945597 (choose!34341 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))

(assert (=> d!1529799 (invariantList!1700 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))))

(assert (=> d!1529799 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2085 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641) lt!1945597)))

(declare-fun bs!1152672 () Bool)

(assert (= bs!1152672 d!1529799))

(assert (=> bs!1152672 m!5760824))

(assert (=> bs!1152672 m!5760824))

(assert (=> bs!1152672 m!5760826))

(declare-fun m!5761632 () Bool)

(assert (=> bs!1152672 m!5761632))

(assert (=> bs!1152672 m!5761216))

(assert (=> b!4783125 d!1529799))

(assert (=> b!4783125 d!1529791))

(assert (=> b!4783125 d!1529793))

(declare-fun d!1529801 () Bool)

(assert (=> d!1529801 (contains!17578 (getKeysList!1046 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162)))) key!6641)))

(declare-fun lt!1945598 () Unit!139346)

(assert (=> d!1529801 (= lt!1945598 (choose!34342 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641))))

(assert (=> d!1529801 (invariantList!1700 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))))))

(assert (=> d!1529801 (= (lemmaInListThenGetKeysListContains!1041 (toList!6760 (extractMap!2367 (toList!6759 lt!1945162))) key!6641) lt!1945598)))

(declare-fun bs!1152673 () Bool)

(assert (= bs!1152673 d!1529801))

(assert (=> bs!1152673 m!5760816))

(assert (=> bs!1152673 m!5760816))

(declare-fun m!5761634 () Bool)

(assert (=> bs!1152673 m!5761634))

(declare-fun m!5761636 () Bool)

(assert (=> bs!1152673 m!5761636))

(assert (=> bs!1152673 m!5761216))

(assert (=> b!4783125 d!1529801))

(declare-fun d!1529803 () Bool)

(assert (=> d!1529803 (= (isEmpty!29367 lt!1945173) (not ((_ is Some!12955) lt!1945173)))))

(assert (=> d!1529525 d!1529803))

(declare-fun d!1529805 () Bool)

(declare-fun res!2031506 () Bool)

(declare-fun e!2986562 () Bool)

(assert (=> d!1529805 (=> res!2031506 e!2986562)))

(assert (=> d!1529805 (= res!2031506 (and ((_ is Cons!54025) (_2!31559 (h!60446 (toList!6759 lt!1945162)))) (= (_1!31558 (h!60445 (_2!31559 (h!60446 (toList!6759 lt!1945162))))) key!6641)))))

(assert (=> d!1529805 (= (containsKey!3831 (_2!31559 (h!60446 (toList!6759 lt!1945162))) key!6641) e!2986562)))

(declare-fun b!4783557 () Bool)

(declare-fun e!2986563 () Bool)

(assert (=> b!4783557 (= e!2986562 e!2986563)))

(declare-fun res!2031507 () Bool)

(assert (=> b!4783557 (=> (not res!2031507) (not e!2986563))))

(assert (=> b!4783557 (= res!2031507 ((_ is Cons!54025) (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))

(declare-fun b!4783558 () Bool)

(assert (=> b!4783558 (= e!2986563 (containsKey!3831 (t!361599 (_2!31559 (h!60446 (toList!6759 lt!1945162)))) key!6641))))

(assert (= (and d!1529805 (not res!2031506)) b!4783557))

(assert (= (and b!4783557 res!2031507) b!4783558))

(declare-fun m!5761638 () Bool)

(assert (=> b!4783558 m!5761638))

(assert (=> b!4783187 d!1529805))

(declare-fun d!1529807 () Bool)

(declare-fun lt!1945599 () Bool)

(assert (=> d!1529807 (= lt!1945599 (select (content!9660 e!2986316) key!6641))))

(declare-fun e!2986565 () Bool)

(assert (=> d!1529807 (= lt!1945599 e!2986565)))

(declare-fun res!2031508 () Bool)

(assert (=> d!1529807 (=> (not res!2031508) (not e!2986565))))

(assert (=> d!1529807 (= res!2031508 ((_ is Cons!54027) e!2986316))))

(assert (=> d!1529807 (= (contains!17578 e!2986316 key!6641) lt!1945599)))

(declare-fun b!4783559 () Bool)

(declare-fun e!2986564 () Bool)

(assert (=> b!4783559 (= e!2986565 e!2986564)))

(declare-fun res!2031509 () Bool)

(assert (=> b!4783559 (=> res!2031509 e!2986564)))

(assert (=> b!4783559 (= res!2031509 (= (h!60447 e!2986316) key!6641))))

(declare-fun b!4783560 () Bool)

(assert (=> b!4783560 (= e!2986564 (contains!17578 (t!361601 e!2986316) key!6641))))

(assert (= (and d!1529807 res!2031508) b!4783559))

(assert (= (and b!4783559 (not res!2031509)) b!4783560))

(declare-fun m!5761640 () Bool)

(assert (=> d!1529807 m!5761640))

(declare-fun m!5761642 () Bool)

(assert (=> d!1529807 m!5761642))

(declare-fun m!5761644 () Bool)

(assert (=> b!4783560 m!5761644))

(assert (=> bm!334774 d!1529807))

(declare-fun d!1529809 () Bool)

(declare-fun res!2031510 () Bool)

(declare-fun e!2986566 () Bool)

(assert (=> d!1529809 (=> res!2031510 e!2986566)))

(assert (=> d!1529809 (= res!2031510 (and ((_ is Cons!54025) lt!1945158) (= (_1!31558 (h!60445 lt!1945158)) key!6641)))))

(assert (=> d!1529809 (= (containsKey!3831 lt!1945158 key!6641) e!2986566)))

(declare-fun b!4783561 () Bool)

(declare-fun e!2986567 () Bool)

(assert (=> b!4783561 (= e!2986566 e!2986567)))

(declare-fun res!2031511 () Bool)

(assert (=> b!4783561 (=> (not res!2031511) (not e!2986567))))

(assert (=> b!4783561 (= res!2031511 ((_ is Cons!54025) lt!1945158))))

(declare-fun b!4783562 () Bool)

(assert (=> b!4783562 (= e!2986567 (containsKey!3831 (t!361599 lt!1945158) key!6641))))

(assert (= (and d!1529809 (not res!2031510)) b!4783561))

(assert (= (and b!4783561 res!2031511) b!4783562))

(assert (=> b!4783562 m!5761434))

(assert (=> b!4783214 d!1529809))

(assert (=> d!1529527 d!1529647))

(declare-fun d!1529811 () Bool)

(declare-fun res!2031512 () Bool)

(declare-fun e!2986568 () Bool)

(assert (=> d!1529811 (=> res!2031512 e!2986568)))

(assert (=> d!1529811 (= res!2031512 (and ((_ is Cons!54025) (t!361599 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709)))))) (= (_1!31558 (h!60445 (t!361599 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709))))))) key!6641)))))

(assert (=> d!1529811 (= (containsKey!3831 (t!361599 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709))))) key!6641) e!2986568)))

(declare-fun b!4783563 () Bool)

(declare-fun e!2986569 () Bool)

(assert (=> b!4783563 (= e!2986568 e!2986569)))

(declare-fun res!2031513 () Bool)

(assert (=> b!4783563 (=> (not res!2031513) (not e!2986569))))

(assert (=> b!4783563 (= res!2031513 ((_ is Cons!54025) (t!361599 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709)))))))))

(declare-fun b!4783564 () Bool)

(assert (=> b!4783564 (= e!2986569 (containsKey!3831 (t!361599 (t!361599 (apply!12895 lm!2709 (_1!31559 (h!60446 (toList!6759 lm!2709)))))) key!6641))))

(assert (= (and d!1529811 (not res!2031512)) b!4783563))

(assert (= (and b!4783563 res!2031513) b!4783564))

(declare-fun m!5761646 () Bool)

(assert (=> b!4783564 m!5761646))

(assert (=> b!4783176 d!1529811))

(declare-fun d!1529813 () Bool)

(declare-fun res!2031514 () Bool)

(declare-fun e!2986570 () Bool)

(assert (=> d!1529813 (=> res!2031514 e!2986570)))

(assert (=> d!1529813 (= res!2031514 (not ((_ is Cons!54025) (_2!31559 lt!1945157))))))

(assert (=> d!1529813 (= (noDuplicateKeys!2298 (_2!31559 lt!1945157)) e!2986570)))

(declare-fun b!4783565 () Bool)

(declare-fun e!2986571 () Bool)

(assert (=> b!4783565 (= e!2986570 e!2986571)))

(declare-fun res!2031515 () Bool)

(assert (=> b!4783565 (=> (not res!2031515) (not e!2986571))))

(assert (=> b!4783565 (= res!2031515 (not (containsKey!3831 (t!361599 (_2!31559 lt!1945157)) (_1!31558 (h!60445 (_2!31559 lt!1945157))))))))

(declare-fun b!4783566 () Bool)

(assert (=> b!4783566 (= e!2986571 (noDuplicateKeys!2298 (t!361599 (_2!31559 lt!1945157))))))

(assert (= (and d!1529813 (not res!2031514)) b!4783565))

(assert (= (and b!4783565 res!2031515) b!4783566))

(declare-fun m!5761648 () Bool)

(assert (=> b!4783565 m!5761648))

(declare-fun m!5761650 () Bool)

(assert (=> b!4783566 m!5761650))

(assert (=> bs!1152489 d!1529813))

(assert (=> b!4783216 d!1529691))

(assert (=> b!4783207 d!1529527))

(assert (=> b!4783207 d!1529549))

(declare-fun d!1529815 () Bool)

(assert (=> d!1529815 (= (get!18381 (getValueByKey!2292 (toList!6759 lm!2709) lt!1945161)) (v!48187 (getValueByKey!2292 (toList!6759 lm!2709) lt!1945161)))))

(assert (=> d!1529553 d!1529815))

(assert (=> d!1529553 d!1529773))

(declare-fun d!1529817 () Bool)

(assert (=> d!1529817 (= (get!18381 (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945161)) (v!48187 (getValueByKey!2292 (toList!6759 lt!1945162) lt!1945161)))))

(assert (=> d!1529483 d!1529817))

(assert (=> d!1529483 d!1529657))

(declare-fun d!1529819 () Bool)

(declare-fun res!2031516 () Bool)

(declare-fun e!2986572 () Bool)

(assert (=> d!1529819 (=> res!2031516 e!2986572)))

(assert (=> d!1529819 (= res!2031516 ((_ is Nil!54026) (t!361600 (toList!6759 lt!1945162))))))

(assert (=> d!1529819 (= (forall!12136 (t!361600 (toList!6759 lt!1945162)) lambda!228601) e!2986572)))

(declare-fun b!4783567 () Bool)

(declare-fun e!2986573 () Bool)

(assert (=> b!4783567 (= e!2986572 e!2986573)))

(declare-fun res!2031517 () Bool)

(assert (=> b!4783567 (=> (not res!2031517) (not e!2986573))))

(assert (=> b!4783567 (= res!2031517 (dynLambda!22020 lambda!228601 (h!60446 (t!361600 (toList!6759 lt!1945162)))))))

(declare-fun b!4783568 () Bool)

(assert (=> b!4783568 (= e!2986573 (forall!12136 (t!361600 (t!361600 (toList!6759 lt!1945162))) lambda!228601))))

(assert (= (and d!1529819 (not res!2031516)) b!4783567))

(assert (= (and b!4783567 res!2031517) b!4783568))

(declare-fun b_lambda!185891 () Bool)

(assert (=> (not b_lambda!185891) (not b!4783567)))

(declare-fun m!5761652 () Bool)

(assert (=> b!4783567 m!5761652))

(declare-fun m!5761654 () Bool)

(assert (=> b!4783568 m!5761654))

(assert (=> b!4783159 d!1529819))

(assert (=> b!4783005 d!1529745))

(assert (=> d!1529551 d!1529727))

(assert (=> d!1529551 d!1529541))

(declare-fun d!1529821 () Bool)

(assert (=> d!1529821 (contains!17575 lm!2709 (hash!4841 hashF!1687 key!6641))))

(assert (=> d!1529821 true))

(declare-fun _$27!1614 () Unit!139346)

(assert (=> d!1529821 (= (choose!34330 lm!2709 key!6641 hashF!1687) _$27!1614)))

(declare-fun bs!1152675 () Bool)

(assert (= bs!1152675 d!1529821))

(assert (=> bs!1152675 m!5760676))

(assert (=> bs!1152675 m!5760676))

(assert (=> bs!1152675 m!5760970))

(assert (=> d!1529551 d!1529821))

(declare-fun d!1529827 () Bool)

(declare-fun res!2031519 () Bool)

(declare-fun e!2986576 () Bool)

(assert (=> d!1529827 (=> res!2031519 e!2986576)))

(assert (=> d!1529827 (= res!2031519 ((_ is Nil!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529827 (= (forall!12136 (toList!6759 lm!2709) lambda!228653) e!2986576)))

(declare-fun b!4783572 () Bool)

(declare-fun e!2986577 () Bool)

(assert (=> b!4783572 (= e!2986576 e!2986577)))

(declare-fun res!2031520 () Bool)

(assert (=> b!4783572 (=> (not res!2031520) (not e!2986577))))

(assert (=> b!4783572 (= res!2031520 (dynLambda!22020 lambda!228653 (h!60446 (toList!6759 lm!2709))))))

(declare-fun b!4783573 () Bool)

(assert (=> b!4783573 (= e!2986577 (forall!12136 (t!361600 (toList!6759 lm!2709)) lambda!228653))))

(assert (= (and d!1529827 (not res!2031519)) b!4783572))

(assert (= (and b!4783572 res!2031520) b!4783573))

(declare-fun b_lambda!185893 () Bool)

(assert (=> (not b_lambda!185893) (not b!4783572)))

(declare-fun m!5761658 () Bool)

(assert (=> b!4783572 m!5761658))

(declare-fun m!5761660 () Bool)

(assert (=> b!4783573 m!5761660))

(assert (=> d!1529551 d!1529827))

(assert (=> b!4783223 d!1529543))

(declare-fun d!1529829 () Bool)

(assert (=> d!1529829 (isDefined!10102 (getValueByKey!2292 (toList!6759 lm!2709) lt!1945161))))

(declare-fun lt!1945604 () Unit!139346)

(assert (=> d!1529829 (= lt!1945604 (choose!34339 (toList!6759 lm!2709) lt!1945161))))

(declare-fun e!2986578 () Bool)

(assert (=> d!1529829 e!2986578))

(declare-fun res!2031521 () Bool)

(assert (=> d!1529829 (=> (not res!2031521) (not e!2986578))))

(assert (=> d!1529829 (= res!2031521 (isStrictlySorted!852 (toList!6759 lm!2709)))))

(assert (=> d!1529829 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2087 (toList!6759 lm!2709) lt!1945161) lt!1945604)))

(declare-fun b!4783574 () Bool)

(assert (=> b!4783574 (= e!2986578 (containsKey!3834 (toList!6759 lm!2709) lt!1945161))))

(assert (= (and d!1529829 res!2031521) b!4783574))

(assert (=> d!1529829 m!5761030))

(assert (=> d!1529829 m!5761030))

(assert (=> d!1529829 m!5761042))

(declare-fun m!5761670 () Bool)

(assert (=> d!1529829 m!5761670))

(assert (=> d!1529829 m!5760900))

(assert (=> b!4783574 m!5761038))

(assert (=> b!4783238 d!1529829))

(assert (=> b!4783238 d!1529771))

(assert (=> b!4783238 d!1529773))

(assert (=> d!1529485 d!1529663))

(assert (=> d!1529485 d!1529541))

(declare-fun d!1529833 () Bool)

(assert (=> d!1529833 (contains!17575 lt!1945162 (hash!4841 hashF!1687 key!6641))))

(assert (=> d!1529833 true))

(declare-fun _$27!1615 () Unit!139346)

(assert (=> d!1529833 (= (choose!34330 lt!1945162 key!6641 hashF!1687) _$27!1615)))

(declare-fun bs!1152676 () Bool)

(assert (= bs!1152676 d!1529833))

(assert (=> bs!1152676 m!5760676))

(assert (=> bs!1152676 m!5760676))

(assert (=> bs!1152676 m!5760772))

(assert (=> d!1529485 d!1529833))

(declare-fun d!1529835 () Bool)

(declare-fun res!2031523 () Bool)

(declare-fun e!2986580 () Bool)

(assert (=> d!1529835 (=> res!2031523 e!2986580)))

(assert (=> d!1529835 (= res!2031523 ((_ is Nil!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529835 (= (forall!12136 (toList!6759 lt!1945162) lambda!228632) e!2986580)))

(declare-fun b!4783576 () Bool)

(declare-fun e!2986581 () Bool)

(assert (=> b!4783576 (= e!2986580 e!2986581)))

(declare-fun res!2031524 () Bool)

(assert (=> b!4783576 (=> (not res!2031524) (not e!2986581))))

(assert (=> b!4783576 (= res!2031524 (dynLambda!22020 lambda!228632 (h!60446 (toList!6759 lt!1945162))))))

(declare-fun b!4783577 () Bool)

(assert (=> b!4783577 (= e!2986581 (forall!12136 (t!361600 (toList!6759 lt!1945162)) lambda!228632))))

(assert (= (and d!1529835 (not res!2031523)) b!4783576))

(assert (= (and b!4783576 res!2031524) b!4783577))

(declare-fun b_lambda!185897 () Bool)

(assert (=> (not b_lambda!185897) (not b!4783576)))

(declare-fun m!5761676 () Bool)

(assert (=> b!4783576 m!5761676))

(declare-fun m!5761680 () Bool)

(assert (=> b!4783577 m!5761680))

(assert (=> d!1529485 d!1529835))

(declare-fun d!1529839 () Bool)

(declare-fun res!2031525 () Bool)

(declare-fun e!2986582 () Bool)

(assert (=> d!1529839 (=> res!2031525 e!2986582)))

(assert (=> d!1529839 (= res!2031525 (and ((_ is Cons!54025) lt!1945167) (= (_1!31558 (h!60445 lt!1945167)) key!6641)))))

(assert (=> d!1529839 (= (containsKey!3831 lt!1945167 key!6641) e!2986582)))

(declare-fun b!4783578 () Bool)

(declare-fun e!2986583 () Bool)

(assert (=> b!4783578 (= e!2986582 e!2986583)))

(declare-fun res!2031526 () Bool)

(assert (=> b!4783578 (=> (not res!2031526) (not e!2986583))))

(assert (=> b!4783578 (= res!2031526 ((_ is Cons!54025) lt!1945167))))

(declare-fun b!4783579 () Bool)

(assert (=> b!4783579 (= e!2986583 (containsKey!3831 (t!361599 lt!1945167) key!6641))))

(assert (= (and d!1529839 (not res!2031525)) b!4783578))

(assert (= (and b!4783578 res!2031526) b!4783579))

(assert (=> b!4783579 m!5761512))

(assert (=> b!4783003 d!1529839))

(declare-fun d!1529841 () Bool)

(declare-fun c!815459 () Bool)

(assert (=> d!1529841 (= c!815459 (and ((_ is Cons!54026) (toList!6759 lm!2709)) (= (_1!31559 (h!60446 (toList!6759 lm!2709))) lt!1945348)))))

(declare-fun e!2986586 () Option!12957)

(assert (=> d!1529841 (= (getValueByKey!2292 (toList!6759 lm!2709) lt!1945348) e!2986586)))

(declare-fun b!4783582 () Bool)

(assert (=> b!4783582 (= e!2986586 (Some!12956 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(declare-fun b!4783585 () Bool)

(declare-fun e!2986587 () Option!12957)

(assert (=> b!4783585 (= e!2986587 None!12956)))

(declare-fun b!4783584 () Bool)

(assert (=> b!4783584 (= e!2986587 (getValueByKey!2292 (t!361600 (toList!6759 lm!2709)) lt!1945348))))

(declare-fun b!4783583 () Bool)

(assert (=> b!4783583 (= e!2986586 e!2986587)))

(declare-fun c!815460 () Bool)

(assert (=> b!4783583 (= c!815460 (and ((_ is Cons!54026) (toList!6759 lm!2709)) (not (= (_1!31559 (h!60446 (toList!6759 lm!2709))) lt!1945348))))))

(assert (= (and d!1529841 c!815459) b!4783582))

(assert (= (and d!1529841 (not c!815459)) b!4783583))

(assert (= (and b!4783583 c!815460) b!4783584))

(assert (= (and b!4783583 (not c!815460)) b!4783585))

(declare-fun m!5761686 () Bool)

(assert (=> b!4783584 m!5761686))

(assert (=> b!4783209 d!1529841))

(declare-fun d!1529845 () Bool)

(assert (=> d!1529845 (dynLambda!22020 lambda!228601 lt!1945171)))

(assert (=> d!1529845 true))

(declare-fun _$7!2358 () Unit!139346)

(assert (=> d!1529845 (= (choose!34324 (toList!6759 lm!2709) lambda!228601 lt!1945171) _$7!2358)))

(declare-fun b_lambda!185899 () Bool)

(assert (=> (not b_lambda!185899) (not d!1529845)))

(declare-fun bs!1152678 () Bool)

(assert (= bs!1152678 d!1529845))

(assert (=> bs!1152678 m!5761008))

(assert (=> d!1529545 d!1529845))

(assert (=> d!1529545 d!1529513))

(declare-fun d!1529849 () Bool)

(declare-fun res!2031529 () Bool)

(declare-fun e!2986588 () Bool)

(assert (=> d!1529849 (=> res!2031529 e!2986588)))

(assert (=> d!1529849 (= res!2031529 ((_ is Nil!54026) (toList!6759 lt!1945162)))))

(assert (=> d!1529849 (= (forall!12136 (toList!6759 lt!1945162) lambda!228617) e!2986588)))

(declare-fun b!4783586 () Bool)

(declare-fun e!2986589 () Bool)

(assert (=> b!4783586 (= e!2986588 e!2986589)))

(declare-fun res!2031530 () Bool)

(assert (=> b!4783586 (=> (not res!2031530) (not e!2986589))))

(assert (=> b!4783586 (= res!2031530 (dynLambda!22020 lambda!228617 (h!60446 (toList!6759 lt!1945162))))))

(declare-fun b!4783587 () Bool)

(assert (=> b!4783587 (= e!2986589 (forall!12136 (t!361600 (toList!6759 lt!1945162)) lambda!228617))))

(assert (= (and d!1529849 (not res!2031529)) b!4783586))

(assert (= (and b!4783586 res!2031530) b!4783587))

(declare-fun b_lambda!185901 () Bool)

(assert (=> (not b_lambda!185901) (not b!4783586)))

(declare-fun m!5761692 () Bool)

(assert (=> b!4783586 m!5761692))

(declare-fun m!5761694 () Bool)

(assert (=> b!4783587 m!5761694))

(assert (=> d!1529443 d!1529849))

(declare-fun bs!1152680 () Bool)

(declare-fun d!1529853 () Bool)

(assert (= bs!1152680 (and d!1529853 d!1529443)))

(declare-fun lambda!228727 () Int)

(assert (=> bs!1152680 (= lambda!228727 lambda!228617)))

(declare-fun bs!1152681 () Bool)

(assert (= bs!1152681 (and d!1529853 d!1529511)))

(assert (=> bs!1152681 (= lambda!228727 lambda!228647)))

(declare-fun bs!1152682 () Bool)

(assert (= bs!1152682 (and d!1529853 d!1529495)))

(assert (=> bs!1152682 (= lambda!228727 lambda!228638)))

(declare-fun bs!1152683 () Bool)

(assert (= bs!1152683 (and d!1529853 d!1529549)))

(assert (=> bs!1152683 (= lambda!228727 lambda!228652)))

(declare-fun bs!1152684 () Bool)

(assert (= bs!1152684 (and d!1529853 d!1529533)))

(assert (=> bs!1152684 (= lambda!228727 lambda!228651)))

(declare-fun bs!1152685 () Bool)

(assert (= bs!1152685 (and d!1529853 d!1529469)))

(assert (=> bs!1152685 (= lambda!228727 lambda!228623)))

(declare-fun bs!1152686 () Bool)

(assert (= bs!1152686 (and d!1529853 d!1529685)))

(assert (=> bs!1152686 (= lambda!228727 lambda!228718)))

(declare-fun bs!1152687 () Bool)

(assert (= bs!1152687 (and d!1529853 d!1529493)))

(assert (=> bs!1152687 (not (= lambda!228727 lambda!228635))))

(declare-fun bs!1152688 () Bool)

(assert (= bs!1152688 (and d!1529853 d!1529523)))

(assert (=> bs!1152688 (= lambda!228727 lambda!228650)))

(declare-fun bs!1152689 () Bool)

(assert (= bs!1152689 (and d!1529853 d!1529439)))

(assert (=> bs!1152689 (= lambda!228727 lambda!228604)))

(declare-fun bs!1152690 () Bool)

(assert (= bs!1152690 (and d!1529853 start!491398)))

(assert (=> bs!1152690 (= lambda!228727 lambda!228601)))

(declare-fun bs!1152691 () Bool)

(assert (= bs!1152691 (and d!1529853 d!1529717)))

(assert (=> bs!1152691 (= lambda!228727 lambda!228721)))

(declare-fun bs!1152692 () Bool)

(assert (= bs!1152692 (and d!1529853 d!1529521)))

(assert (=> bs!1152692 (not (= lambda!228727 lambda!228648))))

(declare-fun bs!1152693 () Bool)

(assert (= bs!1152693 (and d!1529853 d!1529551)))

(assert (=> bs!1152693 (= lambda!228727 lambda!228653)))

(declare-fun bs!1152694 () Bool)

(assert (= bs!1152694 (and d!1529853 d!1529769)))

(assert (=> bs!1152694 (= lambda!228727 lambda!228726)))

(declare-fun bs!1152695 () Bool)

(assert (= bs!1152695 (and d!1529853 d!1529485)))

(assert (=> bs!1152695 (= lambda!228727 lambda!228632)))

(assert (=> d!1529853 (isDefined!10099 (getPair!812 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)) key!6641))))

(declare-fun lt!1945615 () Unit!139346)

(assert (=> d!1529853 (= lt!1945615 (forallContained!4080 (toList!6759 lt!1945162) lambda!228727 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))))))

(declare-fun lt!1945612 () Unit!139346)

(declare-fun lt!1945611 () Unit!139346)

(assert (=> d!1529853 (= lt!1945612 lt!1945611)))

(declare-fun lt!1945609 () (_ BitVec 64))

(declare-fun lt!1945613 () List!54149)

(assert (=> d!1529853 (contains!17574 (toList!6759 lt!1945162) (tuple2!56531 lt!1945609 lt!1945613))))

(assert (=> d!1529853 (= lt!1945611 (lemmaGetValueImpliesTupleContained!619 lt!1945162 lt!1945609 lt!1945613))))

(assert (=> d!1529853 (= lt!1945613 (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))))

(assert (=> d!1529853 (= lt!1945609 (hash!4841 hashF!1687 key!6641))))

(declare-fun lt!1945614 () Unit!139346)

(declare-fun lt!1945610 () Unit!139346)

(assert (=> d!1529853 (= lt!1945614 lt!1945610)))

(assert (=> d!1529853 (contains!17575 lt!1945162 (hash!4841 hashF!1687 key!6641))))

(assert (=> d!1529853 (= lt!1945610 (lemmaInGenMapThenLongMapContainsHash!1036 lt!1945162 key!6641 hashF!1687))))

(assert (=> d!1529853 true))

(declare-fun _$25!338 () Unit!139346)

(assert (=> d!1529853 (= (choose!34325 lt!1945162 key!6641 hashF!1687) _$25!338)))

(declare-fun bs!1152696 () Bool)

(assert (= bs!1152696 d!1529853))

(declare-fun m!5761716 () Bool)

(assert (=> bs!1152696 m!5761716))

(assert (=> bs!1152696 m!5760766))

(assert (=> bs!1152696 m!5760768))

(assert (=> bs!1152696 m!5760676))

(assert (=> bs!1152696 m!5760778))

(declare-fun m!5761718 () Bool)

(assert (=> bs!1152696 m!5761718))

(declare-fun m!5761720 () Bool)

(assert (=> bs!1152696 m!5761720))

(assert (=> bs!1152696 m!5760778))

(assert (=> bs!1152696 m!5760766))

(assert (=> bs!1152696 m!5760676))

(assert (=> bs!1152696 m!5760772))

(assert (=> bs!1152696 m!5760648))

(assert (=> bs!1152696 m!5760676))

(assert (=> d!1529443 d!1529853))

(declare-fun d!1529859 () Bool)

(declare-fun res!2031536 () Bool)

(declare-fun e!2986597 () Bool)

(assert (=> d!1529859 (=> res!2031536 e!2986597)))

(assert (=> d!1529859 (= res!2031536 (and ((_ is Cons!54025) (_2!31559 (h!60446 (tail!9201 (toList!6759 lm!2709))))) (= (_1!31558 (h!60445 (_2!31559 (h!60446 (tail!9201 (toList!6759 lm!2709)))))) key!6641)))))

(assert (=> d!1529859 (= (containsKey!3831 (_2!31559 (h!60446 (tail!9201 (toList!6759 lm!2709)))) key!6641) e!2986597)))

(declare-fun b!4783599 () Bool)

(declare-fun e!2986598 () Bool)

(assert (=> b!4783599 (= e!2986597 e!2986598)))

(declare-fun res!2031537 () Bool)

(assert (=> b!4783599 (=> (not res!2031537) (not e!2986598))))

(assert (=> b!4783599 (= res!2031537 ((_ is Cons!54025) (_2!31559 (h!60446 (tail!9201 (toList!6759 lm!2709))))))))

(declare-fun b!4783600 () Bool)

(assert (=> b!4783600 (= e!2986598 (containsKey!3831 (t!361599 (_2!31559 (h!60446 (tail!9201 (toList!6759 lm!2709))))) key!6641))))

(assert (= (and d!1529859 (not res!2031536)) b!4783599))

(assert (= (and b!4783599 res!2031537) b!4783600))

(declare-fun m!5761724 () Bool)

(assert (=> b!4783600 m!5761724))

(assert (=> b!4783166 d!1529859))

(declare-fun d!1529863 () Bool)

(declare-fun res!2031538 () Bool)

(declare-fun e!2986599 () Bool)

(assert (=> d!1529863 (=> res!2031538 e!2986599)))

(assert (=> d!1529863 (= res!2031538 ((_ is Nil!54026) (toList!6759 lm!2709)))))

(assert (=> d!1529863 (= (forall!12136 (toList!6759 lm!2709) lambda!228635) e!2986599)))

(declare-fun b!4783601 () Bool)

(declare-fun e!2986600 () Bool)

(assert (=> b!4783601 (= e!2986599 e!2986600)))

(declare-fun res!2031539 () Bool)

(assert (=> b!4783601 (=> (not res!2031539) (not e!2986600))))

(assert (=> b!4783601 (= res!2031539 (dynLambda!22020 lambda!228635 (h!60446 (toList!6759 lm!2709))))))

(declare-fun b!4783602 () Bool)

(assert (=> b!4783602 (= e!2986600 (forall!12136 (t!361600 (toList!6759 lm!2709)) lambda!228635))))

(assert (= (and d!1529863 (not res!2031538)) b!4783601))

(assert (= (and b!4783601 res!2031539) b!4783602))

(declare-fun b_lambda!185903 () Bool)

(assert (=> (not b_lambda!185903) (not b!4783601)))

(declare-fun m!5761726 () Bool)

(assert (=> b!4783601 m!5761726))

(declare-fun m!5761728 () Bool)

(assert (=> b!4783602 m!5761728))

(assert (=> d!1529493 d!1529863))

(declare-fun d!1529865 () Bool)

(declare-fun res!2031542 () Bool)

(declare-fun e!2986602 () Bool)

(assert (=> d!1529865 (=> res!2031542 e!2986602)))

(declare-fun e!2986601 () Bool)

(assert (=> d!1529865 (= res!2031542 e!2986601)))

(declare-fun res!2031540 () Bool)

(assert (=> d!1529865 (=> (not res!2031540) (not e!2986601))))

(assert (=> d!1529865 (= res!2031540 ((_ is Cons!54026) (t!361600 (tail!9201 (toList!6759 lm!2709)))))))

(assert (=> d!1529865 (= (containsKeyBiggerList!496 (t!361600 (tail!9201 (toList!6759 lm!2709))) key!6641) e!2986602)))

(declare-fun b!4783603 () Bool)

(assert (=> b!4783603 (= e!2986601 (containsKey!3831 (_2!31559 (h!60446 (t!361600 (tail!9201 (toList!6759 lm!2709))))) key!6641))))

(declare-fun b!4783604 () Bool)

(declare-fun e!2986603 () Bool)

(assert (=> b!4783604 (= e!2986602 e!2986603)))

(declare-fun res!2031541 () Bool)

(assert (=> b!4783604 (=> (not res!2031541) (not e!2986603))))

(assert (=> b!4783604 (= res!2031541 ((_ is Cons!54026) (t!361600 (tail!9201 (toList!6759 lm!2709)))))))

(declare-fun b!4783605 () Bool)

(assert (=> b!4783605 (= e!2986603 (containsKeyBiggerList!496 (t!361600 (t!361600 (tail!9201 (toList!6759 lm!2709)))) key!6641))))

(assert (= (and d!1529865 res!2031540) b!4783603))

(assert (= (and d!1529865 (not res!2031542)) b!4783604))

(assert (= (and b!4783604 res!2031541) b!4783605))

(declare-fun m!5761730 () Bool)

(assert (=> b!4783603 m!5761730))

(declare-fun m!5761732 () Bool)

(assert (=> b!4783605 m!5761732))

(assert (=> b!4783168 d!1529865))

(declare-fun d!1529867 () Bool)

(assert (=> d!1529867 (= (isEmpty!29367 lt!1945163) (not ((_ is Some!12955) lt!1945163)))))

(assert (=> d!1529465 d!1529867))

(declare-fun d!1529869 () Bool)

(assert (=> d!1529869 (= (get!18381 (getValueByKey!2292 (toList!6759 lm!2709) (_1!31559 (h!60446 (toList!6759 lm!2709))))) (v!48187 (getValueByKey!2292 (toList!6759 lm!2709) (_1!31559 (h!60446 (toList!6759 lm!2709))))))))

(assert (=> d!1529509 d!1529869))

(declare-fun d!1529871 () Bool)

(declare-fun c!815464 () Bool)

(assert (=> d!1529871 (= c!815464 (and ((_ is Cons!54026) (toList!6759 lm!2709)) (= (_1!31559 (h!60446 (toList!6759 lm!2709))) (_1!31559 (h!60446 (toList!6759 lm!2709))))))))

(declare-fun e!2986604 () Option!12957)

(assert (=> d!1529871 (= (getValueByKey!2292 (toList!6759 lm!2709) (_1!31559 (h!60446 (toList!6759 lm!2709)))) e!2986604)))

(declare-fun b!4783606 () Bool)

(assert (=> b!4783606 (= e!2986604 (Some!12956 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(declare-fun b!4783609 () Bool)

(declare-fun e!2986605 () Option!12957)

(assert (=> b!4783609 (= e!2986605 None!12956)))

(declare-fun b!4783608 () Bool)

(assert (=> b!4783608 (= e!2986605 (getValueByKey!2292 (t!361600 (toList!6759 lm!2709)) (_1!31559 (h!60446 (toList!6759 lm!2709)))))))

(declare-fun b!4783607 () Bool)

(assert (=> b!4783607 (= e!2986604 e!2986605)))

(declare-fun c!815465 () Bool)

(assert (=> b!4783607 (= c!815465 (and ((_ is Cons!54026) (toList!6759 lm!2709)) (not (= (_1!31559 (h!60446 (toList!6759 lm!2709))) (_1!31559 (h!60446 (toList!6759 lm!2709)))))))))

(assert (= (and d!1529871 c!815464) b!4783606))

(assert (= (and d!1529871 (not c!815464)) b!4783607))

(assert (= (and b!4783607 c!815465) b!4783608))

(assert (= (and b!4783607 (not c!815465)) b!4783609))

(declare-fun m!5761734 () Bool)

(assert (=> b!4783608 m!5761734))

(assert (=> d!1529509 d!1529871))

(declare-fun e!2986612 () Bool)

(declare-fun tp!1357539 () Bool)

(declare-fun b!4783622 () Bool)

(assert (=> b!4783622 (= e!2986612 (and tp_is_empty!33261 tp_is_empty!33263 tp!1357539))))

(assert (=> b!4783245 (= tp!1357529 e!2986612)))

(assert (= (and b!4783245 ((_ is Cons!54025) (_2!31559 (h!60446 (toList!6759 lm!2709))))) b!4783622))

(declare-fun b!4783623 () Bool)

(declare-fun e!2986613 () Bool)

(declare-fun tp!1357540 () Bool)

(declare-fun tp!1357541 () Bool)

(assert (=> b!4783623 (= e!2986613 (and tp!1357540 tp!1357541))))

(assert (=> b!4783245 (= tp!1357530 e!2986613)))

(assert (= (and b!4783245 ((_ is Cons!54026) (t!361600 (toList!6759 lm!2709)))) b!4783623))

(declare-fun b_lambda!185905 () Bool)

(assert (= b_lambda!185897 (or d!1529485 b_lambda!185905)))

(declare-fun bs!1152698 () Bool)

(declare-fun d!1529873 () Bool)

(assert (= bs!1152698 (and d!1529873 d!1529485)))

(assert (=> bs!1152698 (= (dynLambda!22020 lambda!228632 (h!60446 (toList!6759 lt!1945162))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))

(assert (=> bs!1152698 m!5761048))

(assert (=> b!4783576 d!1529873))

(declare-fun b_lambda!185907 () Bool)

(assert (= b_lambda!185877 (or start!491398 b_lambda!185907)))

(assert (=> d!1529707 d!1529569))

(declare-fun b_lambda!185909 () Bool)

(assert (= b_lambda!185881 (or d!1529533 b_lambda!185909)))

(declare-fun bs!1152699 () Bool)

(declare-fun d!1529877 () Bool)

(assert (= bs!1152699 (and d!1529877 d!1529533)))

(assert (=> bs!1152699 (= (dynLambda!22020 lambda!228651 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641)))) (noDuplicateKeys!2298 (_2!31559 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lm!2709 (hash!4841 hashF!1687 key!6641))))))))

(declare-fun m!5761738 () Bool)

(assert (=> bs!1152699 m!5761738))

(assert (=> d!1529735 d!1529877))

(declare-fun b_lambda!185911 () Bool)

(assert (= b_lambda!185901 (or d!1529443 b_lambda!185911)))

(declare-fun bs!1152700 () Bool)

(declare-fun d!1529879 () Bool)

(assert (= bs!1152700 (and d!1529879 d!1529443)))

(assert (=> bs!1152700 (= (dynLambda!22020 lambda!228617 (h!60446 (toList!6759 lt!1945162))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))

(assert (=> bs!1152700 m!5761048))

(assert (=> b!4783586 d!1529879))

(declare-fun b_lambda!185913 () Bool)

(assert (= b_lambda!185875 (or d!1529495 b_lambda!185913)))

(declare-fun bs!1152701 () Bool)

(declare-fun d!1529881 () Bool)

(assert (= bs!1152701 (and d!1529881 d!1529495)))

(assert (=> bs!1152701 (= (dynLambda!22020 lambda!228638 (h!60446 (toList!6759 lm!2709))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(assert (=> bs!1152701 m!5761052))

(assert (=> b!4783400 d!1529881))

(declare-fun b_lambda!185915 () Bool)

(assert (= b_lambda!185869 (or d!1529523 b_lambda!185915)))

(declare-fun bs!1152702 () Bool)

(declare-fun d!1529883 () Bool)

(assert (= bs!1152702 (and d!1529883 d!1529523)))

(assert (=> bs!1152702 (= (dynLambda!22020 lambda!228650 (h!60446 (toList!6759 lm!2709))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(assert (=> bs!1152702 m!5761052))

(assert (=> b!4783320 d!1529883))

(declare-fun b_lambda!185917 () Bool)

(assert (= b_lambda!185891 (or start!491398 b_lambda!185917)))

(declare-fun bs!1152703 () Bool)

(declare-fun d!1529885 () Bool)

(assert (= bs!1152703 (and d!1529885 start!491398)))

(assert (=> bs!1152703 (= (dynLambda!22020 lambda!228601 (h!60446 (t!361600 (toList!6759 lt!1945162)))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (t!361600 (toList!6759 lt!1945162))))))))

(declare-fun m!5761740 () Bool)

(assert (=> bs!1152703 m!5761740))

(assert (=> b!4783567 d!1529885))

(declare-fun b_lambda!185919 () Bool)

(assert (= b_lambda!185889 (or d!1529549 b_lambda!185919)))

(declare-fun bs!1152704 () Bool)

(declare-fun d!1529887 () Bool)

(assert (= bs!1152704 (and d!1529887 d!1529549)))

(assert (=> bs!1152704 (= (dynLambda!22020 lambda!228652 (h!60446 (toList!6759 lm!2709))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(assert (=> bs!1152704 m!5761052))

(assert (=> b!4783555 d!1529887))

(declare-fun b_lambda!185921 () Bool)

(assert (= b_lambda!185879 (or d!1529533 b_lambda!185921)))

(declare-fun bs!1152705 () Bool)

(declare-fun d!1529889 () Bool)

(assert (= bs!1152705 (and d!1529889 d!1529533)))

(assert (=> bs!1152705 (= (dynLambda!22020 lambda!228651 (h!60446 (toList!6759 lm!2709))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(assert (=> bs!1152705 m!5761052))

(assert (=> b!4783467 d!1529889))

(declare-fun b_lambda!185923 () Bool)

(assert (= b_lambda!185867 (or d!1529511 b_lambda!185923)))

(declare-fun bs!1152706 () Bool)

(declare-fun d!1529891 () Bool)

(assert (= bs!1152706 (and d!1529891 d!1529511)))

(assert (=> bs!1152706 (= (dynLambda!22020 lambda!228647 (h!60446 (toList!6759 lm!2709))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(assert (=> bs!1152706 m!5761052))

(assert (=> b!4783293 d!1529891))

(declare-fun b_lambda!185925 () Bool)

(assert (= b_lambda!185887 (or start!491398 b_lambda!185925)))

(declare-fun bs!1152707 () Bool)

(declare-fun d!1529893 () Bool)

(assert (= bs!1152707 (and d!1529893 start!491398)))

(assert (=> bs!1152707 (= (dynLambda!22020 lambda!228601 (h!60446 (t!361600 (toList!6759 lm!2709)))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (t!361600 (toList!6759 lm!2709))))))))

(declare-fun m!5761742 () Bool)

(assert (=> bs!1152707 m!5761742))

(assert (=> b!4783516 d!1529893))

(declare-fun b_lambda!185927 () Bool)

(assert (= b_lambda!185873 (or d!1529443 b_lambda!185927)))

(declare-fun bs!1152708 () Bool)

(declare-fun d!1529895 () Bool)

(assert (= bs!1152708 (and d!1529895 d!1529443)))

(assert (=> bs!1152708 (= (dynLambda!22020 lambda!228617 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641)))) (noDuplicateKeys!2298 (_2!31559 (tuple2!56531 (hash!4841 hashF!1687 key!6641) (apply!12895 lt!1945162 (hash!4841 hashF!1687 key!6641))))))))

(declare-fun m!5761744 () Bool)

(assert (=> bs!1152708 m!5761744))

(assert (=> d!1529659 d!1529895))

(declare-fun b_lambda!185929 () Bool)

(assert (= b_lambda!185885 (or d!1529439 b_lambda!185929)))

(declare-fun bs!1152709 () Bool)

(declare-fun d!1529897 () Bool)

(assert (= bs!1152709 (and d!1529897 d!1529439)))

(assert (=> bs!1152709 (= (dynLambda!22020 lambda!228604 (h!60446 (toList!6759 lt!1945162))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))

(assert (=> bs!1152709 m!5761048))

(assert (=> b!4783502 d!1529897))

(declare-fun b_lambda!185931 () Bool)

(assert (= b_lambda!185871 (or d!1529521 b_lambda!185931)))

(declare-fun bs!1152710 () Bool)

(declare-fun d!1529899 () Bool)

(assert (= bs!1152710 (and d!1529899 d!1529521)))

(declare-fun allKeysSameHash!1943 (List!54149 (_ BitVec 64) Hashable!6840) Bool)

(assert (=> bs!1152710 (= (dynLambda!22020 lambda!228648 (h!60446 (toList!6759 lt!1945162))) (allKeysSameHash!1943 (_2!31559 (h!60446 (toList!6759 lt!1945162))) (_1!31559 (h!60446 (toList!6759 lt!1945162))) hashF!1687))))

(declare-fun m!5761746 () Bool)

(assert (=> bs!1152710 m!5761746))

(assert (=> b!4783322 d!1529899))

(declare-fun b_lambda!185933 () Bool)

(assert (= b_lambda!185903 (or d!1529493 b_lambda!185933)))

(declare-fun bs!1152711 () Bool)

(declare-fun d!1529901 () Bool)

(assert (= bs!1152711 (and d!1529901 d!1529493)))

(assert (=> bs!1152711 (= (dynLambda!22020 lambda!228635 (h!60446 (toList!6759 lm!2709))) (allKeysSameHash!1943 (_2!31559 (h!60446 (toList!6759 lm!2709))) (_1!31559 (h!60446 (toList!6759 lm!2709))) hashF!1687))))

(declare-fun m!5761748 () Bool)

(assert (=> bs!1152711 m!5761748))

(assert (=> b!4783601 d!1529901))

(declare-fun b_lambda!185935 () Bool)

(assert (= b_lambda!185899 (or start!491398 b_lambda!185935)))

(assert (=> d!1529845 d!1529571))

(declare-fun b_lambda!185937 () Bool)

(assert (= b_lambda!185893 (or d!1529551 b_lambda!185937)))

(declare-fun bs!1152712 () Bool)

(declare-fun d!1529903 () Bool)

(assert (= bs!1152712 (and d!1529903 d!1529551)))

(assert (=> bs!1152712 (= (dynLambda!22020 lambda!228653 (h!60446 (toList!6759 lm!2709))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lm!2709)))))))

(assert (=> bs!1152712 m!5761052))

(assert (=> b!4783572 d!1529903))

(declare-fun b_lambda!185939 () Bool)

(assert (= b_lambda!185883 (or d!1529469 b_lambda!185939)))

(declare-fun bs!1152713 () Bool)

(declare-fun d!1529905 () Bool)

(assert (= bs!1152713 (and d!1529905 d!1529469)))

(assert (=> bs!1152713 (= (dynLambda!22020 lambda!228623 (h!60446 (toList!6759 lt!1945162))) (noDuplicateKeys!2298 (_2!31559 (h!60446 (toList!6759 lt!1945162)))))))

(assert (=> bs!1152713 m!5761048))

(assert (=> b!4783500 d!1529905))

(check-sat (not bm!334782) (not d!1529755) (not b!4783477) (not b!4783314) (not b!4783323) (not b!4783401) (not b!4783548) (not b!4783435) (not d!1529733) (not b!4783568) (not b!4783328) (not b!4783306) (not bs!1152712) (not b!4783352) (not b!4783574) (not b!4783541) (not b!4783465) (not b!4783425) (not b!4783480) (not bs!1152701) (not d!1529795) (not b_lambda!185931) (not d!1529757) (not d!1529703) (not b!4783394) (not d!1529743) (not b_lambda!185937) (not b_lambda!185919) (not b!4783464) (not d!1529799) (not b!4783456) (not b!4783407) (not d!1529829) (not b_lambda!185915) (not b!4783366) (not b!4783565) (not bm!334784) (not b!4783355) (not d!1529701) (not bs!1152702) (not b!4783623) (not b!4783485) (not d!1529737) (not b!4783562) (not b!4783605) (not d!1529665) (not b!4783523) (not d!1529681) (not b!4783424) (not b!4783558) (not d!1529761) (not b!4783514) (not d!1529677) (not b!4783358) (not b!4783389) (not b!4783608) (not bs!1152707) (not bm!334786) (not b!4783544) (not b!4783459) (not d!1529731) (not d!1529769) (not bs!1152705) (not bs!1152704) (not b!4783560) (not b!4783359) (not b_lambda!185939) (not d!1529641) (not d!1529631) (not d!1529807) (not b!4783553) (not d!1529689) (not b!4783473) (not b!4783573) (not b!4783527) (not d!1529667) (not b!4783395) (not b_lambda!185927) (not d!1529619) (not d!1529669) (not d!1529723) (not b!4783481) (not b_lambda!185847) (not d!1529821) (not bm!334783) (not bs!1152698) (not b_lambda!185935) (not b!4783537) (not d!1529663) (not d!1529741) (not b!4783370) (not b!4783579) (not b!4783528) (not bm!334787) (not b!4783501) (not bs!1152709) (not b!4783336) (not bs!1152703) (not bs!1152713) (not b!4783354) (not b!4783327) (not d!1529833) (not b!4783313) (not d!1529747) (not b!4783535) (not b!4783326) (not d!1529767) (not d!1529785) (not b!4783524) (not b!4783362) (not b!4783491) (not b!4783451) (not d!1529687) (not b!4783368) (not b!4783549) (not b!4783360) (not b!4783483) (not b!4783294) (not b!4783392) (not d!1529673) (not b!4783587) (not b!4783405) (not d!1529627) (not b!4783466) (not b!4783490) tp_is_empty!33263 (not b!4783482) (not bs!1152710) (not d!1529725) (not d!1529661) (not b!4783494) (not d!1529699) (not b!4783402) (not b!4783333) (not b!4783556) (not b!4783445) (not b!4783458) (not b!4783499) (not b!4783325) (not b!4783603) (not b!4783602) (not b_lambda!185921) (not d!1529777) (not b!4783542) (not b!4783428) (not b!4783334) (not b!4783438) (not b!4783577) (not d!1529639) (not b_lambda!185911) (not b!4783486) (not d!1529713) (not d!1529771) (not b_lambda!185851) (not d!1529625) (not b!4783421) (not b!4783550) (not b!4783300) (not b!4783457) (not b!4783478) (not b!4783529) (not d!1529659) (not b!4783321) (not b_lambda!185905) (not bm!334785) (not b_lambda!185925) (not b!4783463) (not d!1529651) (not b!4783566) (not d!1529735) (not b_lambda!185929) (not b!4783469) (not b!4783455) (not d!1529653) (not d!1529751) (not b!4783410) (not b!4783357) (not d!1529649) (not d!1529739) (not bs!1152708) (not d!1529635) (not b_lambda!185909) (not b!4783533) (not b!4783492) (not b!4783517) (not b!4783397) (not b!4783503) (not d!1529683) (not d!1529655) (not b_lambda!185853) (not b!4783315) (not b!4783408) (not b!4783584) (not b_lambda!185913) (not b!4783546) (not b!4783564) (not d!1529717) (not b!4783600) (not bs!1152699) (not b!4783319) (not b!4783338) (not b!4783622) (not bs!1152706) (not b!4783539) (not b_lambda!185849) (not bs!1152700) (not b!4783472) (not b!4783468) (not b!4783470) (not d!1529671) (not d!1529675) (not b_lambda!185907) (not b!4783475) (not d!1529791) tp_is_empty!33261 (not b_lambda!185933) (not b_lambda!185923) (not b!4783453) (not b!4783493) (not bs!1152711) (not b!4783361) (not b!4783341) (not d!1529853) (not b!4783484) (not b_lambda!185917) (not d!1529729) (not d!1529727) (not d!1529801) (not d!1529779) (not d!1529787) (not d!1529685))
(check-sat)
