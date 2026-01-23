; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437526 () Bool)

(assert start!437526)

(declare-fun b!4461586 () Bool)

(declare-fun res!1850311 () Bool)

(declare-fun e!2778204 () Bool)

(assert (=> b!4461586 (=> (not res!1850311) (not e!2778204))))

(declare-datatypes ((K!11623 0))(
  ( (K!11624 (val!17569 Int)) )
))
(declare-datatypes ((V!11869 0))(
  ( (V!11870 (val!17570 Int)) )
))
(declare-datatypes ((tuple2!50406 0))(
  ( (tuple2!50407 (_1!28497 K!11623) (_2!28497 V!11869)) )
))
(declare-datatypes ((List!50329 0))(
  ( (Nil!50205) (Cons!50205 (h!55950 tuple2!50406) (t!357279 List!50329)) )
))
(declare-datatypes ((tuple2!50408 0))(
  ( (tuple2!50409 (_1!28498 (_ BitVec 64)) (_2!28498 List!50329)) )
))
(declare-datatypes ((List!50330 0))(
  ( (Nil!50206) (Cons!50206 (h!55951 tuple2!50408) (t!357280 List!50330)) )
))
(declare-datatypes ((ListLongMap!2625 0))(
  ( (ListLongMap!2626 (toList!3993 List!50330)) )
))
(declare-fun lm!1477 () ListLongMap!2625)

(declare-fun key!3287 () K!11623)

(declare-datatypes ((ListMap!3255 0))(
  ( (ListMap!3256 (toList!3994 List!50329)) )
))
(declare-fun contains!12715 (ListMap!3255 K!11623) Bool)

(declare-fun extractMap!1049 (List!50330) ListMap!3255)

(assert (=> b!4461586 (= res!1850311 (contains!12715 (extractMap!1049 (toList!3993 lm!1477)) key!3287))))

(declare-fun b!4461587 () Bool)

(declare-fun e!2778205 () Bool)

(declare-fun lt!1652613 () List!50329)

(declare-fun noDuplicateKeys!993 (List!50329) Bool)

(assert (=> b!4461587 (= e!2778205 (not (noDuplicateKeys!993 lt!1652613)))))

(declare-fun lt!1652617 () tuple2!50408)

(declare-datatypes ((Unit!86864 0))(
  ( (Unit!86865) )
))
(declare-fun lt!1652616 () Unit!86864)

(declare-fun lambda!161898 () Int)

(declare-fun forallContained!2210 (List!50330 Int tuple2!50408) Unit!86864)

(assert (=> b!4461587 (= lt!1652616 (forallContained!2210 (toList!3993 lm!1477) lambda!161898 lt!1652617))))

(declare-fun contains!12716 (List!50330 tuple2!50408) Bool)

(assert (=> b!4461587 (contains!12716 (toList!3993 lm!1477) lt!1652617)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4461587 (= lt!1652617 (tuple2!50409 hash!344 lt!1652613))))

(declare-fun lt!1652614 () Unit!86864)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!505 (List!50330 (_ BitVec 64) List!50329) Unit!86864)

(assert (=> b!4461587 (= lt!1652614 (lemmaGetValueByKeyImpliesContainsTuple!505 (toList!3993 lm!1477) hash!344 lt!1652613))))

(declare-fun apply!11730 (ListLongMap!2625 (_ BitVec 64)) List!50329)

(assert (=> b!4461587 (= lt!1652613 (apply!11730 lm!1477 hash!344))))

(declare-fun lt!1652615 () (_ BitVec 64))

(declare-fun contains!12717 (ListLongMap!2625 (_ BitVec 64)) Bool)

(assert (=> b!4461587 (contains!12717 lm!1477 lt!1652615)))

(declare-datatypes ((Hashable!5388 0))(
  ( (HashableExt!5387 (__x!31091 Int)) )
))
(declare-fun hashF!1107 () Hashable!5388)

(declare-fun lt!1652618 () Unit!86864)

(declare-fun lemmaInGenMapThenLongMapContainsHash!67 (ListLongMap!2625 K!11623 Hashable!5388) Unit!86864)

(assert (=> b!4461587 (= lt!1652618 (lemmaInGenMapThenLongMapContainsHash!67 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4461588 () Bool)

(declare-fun res!1850312 () Bool)

(assert (=> b!4461588 (=> (not res!1850312) (not e!2778205))))

(declare-fun newBucket!178 () List!50329)

(declare-fun allKeysSameHash!847 (List!50329 (_ BitVec 64) Hashable!5388) Bool)

(assert (=> b!4461588 (= res!1850312 (allKeysSameHash!847 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1850310 () Bool)

(assert (=> start!437526 (=> (not res!1850310) (not e!2778204))))

(declare-fun forall!9933 (List!50330 Int) Bool)

(assert (=> start!437526 (= res!1850310 (forall!9933 (toList!3993 lm!1477) lambda!161898))))

(assert (=> start!437526 e!2778204))

(assert (=> start!437526 true))

(declare-fun e!2778202 () Bool)

(declare-fun inv!65808 (ListLongMap!2625) Bool)

(assert (=> start!437526 (and (inv!65808 lm!1477) e!2778202)))

(declare-fun tp_is_empty!27249 () Bool)

(assert (=> start!437526 tp_is_empty!27249))

(declare-fun e!2778203 () Bool)

(assert (=> start!437526 e!2778203))

(declare-fun b!4461589 () Bool)

(declare-fun tp!1335845 () Bool)

(assert (=> b!4461589 (= e!2778202 tp!1335845)))

(declare-fun b!4461590 () Bool)

(assert (=> b!4461590 (= e!2778204 e!2778205)))

(declare-fun res!1850308 () Bool)

(assert (=> b!4461590 (=> (not res!1850308) (not e!2778205))))

(assert (=> b!4461590 (= res!1850308 (= lt!1652615 hash!344))))

(declare-fun hash!2375 (Hashable!5388 K!11623) (_ BitVec 64))

(assert (=> b!4461590 (= lt!1652615 (hash!2375 hashF!1107 key!3287))))

(declare-fun b!4461591 () Bool)

(declare-fun res!1850309 () Bool)

(assert (=> b!4461591 (=> (not res!1850309) (not e!2778204))))

(declare-fun allKeysSameHashInMap!1100 (ListLongMap!2625 Hashable!5388) Bool)

(assert (=> b!4461591 (= res!1850309 (allKeysSameHashInMap!1100 lm!1477 hashF!1107))))

(declare-fun b!4461592 () Bool)

(declare-fun tp!1335844 () Bool)

(declare-fun tp_is_empty!27251 () Bool)

(assert (=> b!4461592 (= e!2778203 (and tp_is_empty!27249 tp_is_empty!27251 tp!1335844))))

(assert (= (and start!437526 res!1850310) b!4461591))

(assert (= (and b!4461591 res!1850309) b!4461586))

(assert (= (and b!4461586 res!1850311) b!4461590))

(assert (= (and b!4461590 res!1850308) b!4461588))

(assert (= (and b!4461588 res!1850312) b!4461587))

(assert (= start!437526 b!4461589))

(assert (= (and start!437526 (is-Cons!50205 newBucket!178)) b!4461592))

(declare-fun m!5164581 () Bool)

(assert (=> b!4461590 m!5164581))

(declare-fun m!5164583 () Bool)

(assert (=> b!4461588 m!5164583))

(declare-fun m!5164585 () Bool)

(assert (=> b!4461591 m!5164585))

(declare-fun m!5164587 () Bool)

(assert (=> b!4461587 m!5164587))

(declare-fun m!5164589 () Bool)

(assert (=> b!4461587 m!5164589))

(declare-fun m!5164591 () Bool)

(assert (=> b!4461587 m!5164591))

(declare-fun m!5164593 () Bool)

(assert (=> b!4461587 m!5164593))

(declare-fun m!5164595 () Bool)

(assert (=> b!4461587 m!5164595))

(declare-fun m!5164597 () Bool)

(assert (=> b!4461587 m!5164597))

(declare-fun m!5164599 () Bool)

(assert (=> b!4461587 m!5164599))

(declare-fun m!5164601 () Bool)

(assert (=> b!4461586 m!5164601))

(assert (=> b!4461586 m!5164601))

(declare-fun m!5164603 () Bool)

(assert (=> b!4461586 m!5164603))

(declare-fun m!5164605 () Bool)

(assert (=> start!437526 m!5164605))

(declare-fun m!5164607 () Bool)

(assert (=> start!437526 m!5164607))

(push 1)

(assert (not b!4461588))

(assert tp_is_empty!27249)

(assert (not b!4461591))

(assert (not b!4461592))

(assert (not b!4461590))

(assert (not start!437526))

(assert (not b!4461589))

(assert tp_is_empty!27251)

(assert (not b!4461586))

(assert (not b!4461587))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1360271 () Bool)

(assert (=> d!1360271 true))

(assert (=> d!1360271 true))

(declare-fun lambda!161906 () Int)

(declare-fun forall!9935 (List!50329 Int) Bool)

(assert (=> d!1360271 (= (allKeysSameHash!847 newBucket!178 hash!344 hashF!1107) (forall!9935 newBucket!178 lambda!161906))))

(declare-fun bs!791518 () Bool)

(assert (= bs!791518 d!1360271))

(declare-fun m!5164637 () Bool)

(assert (=> bs!791518 m!5164637))

(assert (=> b!4461588 d!1360271))

(declare-fun d!1360273 () Bool)

(declare-fun res!1850332 () Bool)

(declare-fun e!2778222 () Bool)

(assert (=> d!1360273 (=> res!1850332 e!2778222)))

(assert (=> d!1360273 (= res!1850332 (is-Nil!50206 (toList!3993 lm!1477)))))

(assert (=> d!1360273 (= (forall!9933 (toList!3993 lm!1477) lambda!161898) e!2778222)))

(declare-fun b!4461622 () Bool)

(declare-fun e!2778223 () Bool)

(assert (=> b!4461622 (= e!2778222 e!2778223)))

(declare-fun res!1850333 () Bool)

(assert (=> b!4461622 (=> (not res!1850333) (not e!2778223))))

(declare-fun dynLambda!20986 (Int tuple2!50408) Bool)

(assert (=> b!4461622 (= res!1850333 (dynLambda!20986 lambda!161898 (h!55951 (toList!3993 lm!1477))))))

(declare-fun b!4461623 () Bool)

(assert (=> b!4461623 (= e!2778223 (forall!9933 (t!357280 (toList!3993 lm!1477)) lambda!161898))))

(assert (= (and d!1360273 (not res!1850332)) b!4461622))

(assert (= (and b!4461622 res!1850333) b!4461623))

(declare-fun b_lambda!147757 () Bool)

(assert (=> (not b_lambda!147757) (not b!4461622)))

(declare-fun m!5164639 () Bool)

(assert (=> b!4461622 m!5164639))

(declare-fun m!5164641 () Bool)

(assert (=> b!4461623 m!5164641))

(assert (=> start!437526 d!1360273))

(declare-fun d!1360275 () Bool)

(declare-fun isStrictlySorted!323 (List!50330) Bool)

(assert (=> d!1360275 (= (inv!65808 lm!1477) (isStrictlySorted!323 (toList!3993 lm!1477)))))

(declare-fun bs!791519 () Bool)

(assert (= bs!791519 d!1360275))

(declare-fun m!5164643 () Bool)

(assert (=> bs!791519 m!5164643))

(assert (=> start!437526 d!1360275))

(declare-fun d!1360277 () Bool)

(declare-fun hash!2377 (Hashable!5388 K!11623) (_ BitVec 64))

(assert (=> d!1360277 (= (hash!2375 hashF!1107 key!3287) (hash!2377 hashF!1107 key!3287))))

(declare-fun bs!791520 () Bool)

(assert (= bs!791520 d!1360277))

(declare-fun m!5164645 () Bool)

(assert (=> bs!791520 m!5164645))

(assert (=> b!4461590 d!1360277))

(declare-fun b!4461646 () Bool)

(declare-fun e!2778240 () Unit!86864)

(declare-fun lt!1652655 () Unit!86864)

(assert (=> b!4461646 (= e!2778240 lt!1652655)))

(declare-fun lt!1652654 () Unit!86864)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!780 (List!50329 K!11623) Unit!86864)

(assert (=> b!4461646 (= lt!1652654 (lemmaContainsKeyImpliesGetValueByKeyDefined!780 (toList!3994 (extractMap!1049 (toList!3993 lm!1477))) key!3287))))

(declare-datatypes ((Option!10889 0))(
  ( (None!10888) (Some!10888 (v!44150 V!11869)) )
))
(declare-fun isDefined!8177 (Option!10889) Bool)

(declare-fun getValueByKey!875 (List!50329 K!11623) Option!10889)

(assert (=> b!4461646 (isDefined!8177 (getValueByKey!875 (toList!3994 (extractMap!1049 (toList!3993 lm!1477))) key!3287))))

(declare-fun lt!1652659 () Unit!86864)

(assert (=> b!4461646 (= lt!1652659 lt!1652654)))

(declare-fun lemmaInListThenGetKeysListContains!353 (List!50329 K!11623) Unit!86864)

(assert (=> b!4461646 (= lt!1652655 (lemmaInListThenGetKeysListContains!353 (toList!3994 (extractMap!1049 (toList!3993 lm!1477))) key!3287))))

(declare-fun call!310631 () Bool)

(assert (=> b!4461646 call!310631))

(declare-fun bm!310626 () Bool)

(declare-datatypes ((List!50333 0))(
  ( (Nil!50209) (Cons!50209 (h!55956 K!11623) (t!357283 List!50333)) )
))
(declare-fun e!2778239 () List!50333)

(declare-fun contains!12721 (List!50333 K!11623) Bool)

(assert (=> bm!310626 (= call!310631 (contains!12721 e!2778239 key!3287))))

(declare-fun c!759258 () Bool)

(declare-fun c!759259 () Bool)

(assert (=> bm!310626 (= c!759258 c!759259)))

(declare-fun b!4461647 () Bool)

(declare-fun e!2778236 () Bool)

(declare-fun keys!17314 (ListMap!3255) List!50333)

(assert (=> b!4461647 (= e!2778236 (contains!12721 (keys!17314 (extractMap!1049 (toList!3993 lm!1477))) key!3287))))

(declare-fun d!1360279 () Bool)

(declare-fun e!2778238 () Bool)

(assert (=> d!1360279 e!2778238))

(declare-fun res!1850342 () Bool)

(assert (=> d!1360279 (=> res!1850342 e!2778238)))

(declare-fun e!2778241 () Bool)

(assert (=> d!1360279 (= res!1850342 e!2778241)))

(declare-fun res!1850340 () Bool)

(assert (=> d!1360279 (=> (not res!1850340) (not e!2778241))))

(declare-fun lt!1652660 () Bool)

(assert (=> d!1360279 (= res!1850340 (not lt!1652660))))

(declare-fun lt!1652657 () Bool)

(assert (=> d!1360279 (= lt!1652660 lt!1652657)))

(declare-fun lt!1652658 () Unit!86864)

(assert (=> d!1360279 (= lt!1652658 e!2778240)))

(assert (=> d!1360279 (= c!759259 lt!1652657)))

(declare-fun containsKey!1406 (List!50329 K!11623) Bool)

(assert (=> d!1360279 (= lt!1652657 (containsKey!1406 (toList!3994 (extractMap!1049 (toList!3993 lm!1477))) key!3287))))

(assert (=> d!1360279 (= (contains!12715 (extractMap!1049 (toList!3993 lm!1477)) key!3287) lt!1652660)))

(declare-fun b!4461648 () Bool)

(declare-fun getKeysList!357 (List!50329) List!50333)

(assert (=> b!4461648 (= e!2778239 (getKeysList!357 (toList!3994 (extractMap!1049 (toList!3993 lm!1477)))))))

(declare-fun b!4461649 () Bool)

(assert (=> b!4461649 (= e!2778238 e!2778236)))

(declare-fun res!1850341 () Bool)

(assert (=> b!4461649 (=> (not res!1850341) (not e!2778236))))

(assert (=> b!4461649 (= res!1850341 (isDefined!8177 (getValueByKey!875 (toList!3994 (extractMap!1049 (toList!3993 lm!1477))) key!3287)))))

(declare-fun b!4461650 () Bool)

(declare-fun e!2778237 () Unit!86864)

(assert (=> b!4461650 (= e!2778240 e!2778237)))

(declare-fun c!759257 () Bool)

(assert (=> b!4461650 (= c!759257 call!310631)))

(declare-fun b!4461651 () Bool)

(assert (=> b!4461651 (= e!2778241 (not (contains!12721 (keys!17314 (extractMap!1049 (toList!3993 lm!1477))) key!3287)))))

(declare-fun b!4461652 () Bool)

(assert (=> b!4461652 (= e!2778239 (keys!17314 (extractMap!1049 (toList!3993 lm!1477))))))

(declare-fun b!4461653 () Bool)

(assert (=> b!4461653 false))

(declare-fun lt!1652656 () Unit!86864)

(declare-fun lt!1652653 () Unit!86864)

(assert (=> b!4461653 (= lt!1652656 lt!1652653)))

(assert (=> b!4461653 (containsKey!1406 (toList!3994 (extractMap!1049 (toList!3993 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!356 (List!50329 K!11623) Unit!86864)

(assert (=> b!4461653 (= lt!1652653 (lemmaInGetKeysListThenContainsKey!356 (toList!3994 (extractMap!1049 (toList!3993 lm!1477))) key!3287))))

(declare-fun Unit!86868 () Unit!86864)

(assert (=> b!4461653 (= e!2778237 Unit!86868)))

(declare-fun b!4461654 () Bool)

(declare-fun Unit!86869 () Unit!86864)

(assert (=> b!4461654 (= e!2778237 Unit!86869)))

(assert (= (and d!1360279 c!759259) b!4461646))

(assert (= (and d!1360279 (not c!759259)) b!4461650))

(assert (= (and b!4461650 c!759257) b!4461653))

(assert (= (and b!4461650 (not c!759257)) b!4461654))

(assert (= (or b!4461646 b!4461650) bm!310626))

(assert (= (and bm!310626 c!759258) b!4461648))

(assert (= (and bm!310626 (not c!759258)) b!4461652))

(assert (= (and d!1360279 res!1850340) b!4461651))

(assert (= (and d!1360279 (not res!1850342)) b!4461649))

(assert (= (and b!4461649 res!1850341) b!4461647))

(declare-fun m!5164649 () Bool)

(assert (=> b!4461649 m!5164649))

(assert (=> b!4461649 m!5164649))

(declare-fun m!5164651 () Bool)

(assert (=> b!4461649 m!5164651))

(declare-fun m!5164653 () Bool)

(assert (=> b!4461653 m!5164653))

(declare-fun m!5164655 () Bool)

(assert (=> b!4461653 m!5164655))

(declare-fun m!5164657 () Bool)

(assert (=> b!4461646 m!5164657))

(assert (=> b!4461646 m!5164649))

(assert (=> b!4461646 m!5164649))

(assert (=> b!4461646 m!5164651))

(declare-fun m!5164659 () Bool)

(assert (=> b!4461646 m!5164659))

(assert (=> b!4461652 m!5164601))

(declare-fun m!5164661 () Bool)

(assert (=> b!4461652 m!5164661))

(declare-fun m!5164663 () Bool)

(assert (=> b!4461648 m!5164663))

(assert (=> b!4461651 m!5164601))

(assert (=> b!4461651 m!5164661))

(assert (=> b!4461651 m!5164661))

(declare-fun m!5164665 () Bool)

(assert (=> b!4461651 m!5164665))

(assert (=> b!4461647 m!5164601))

(assert (=> b!4461647 m!5164661))

(assert (=> b!4461647 m!5164661))

(assert (=> b!4461647 m!5164665))

(assert (=> d!1360279 m!5164653))

(declare-fun m!5164667 () Bool)

(assert (=> bm!310626 m!5164667))

(assert (=> b!4461586 d!1360279))

(declare-fun bs!791525 () Bool)

(declare-fun d!1360285 () Bool)

(assert (= bs!791525 (and d!1360285 start!437526)))

(declare-fun lambda!161915 () Int)

(assert (=> bs!791525 (= lambda!161915 lambda!161898)))

(declare-fun lt!1652666 () ListMap!3255)

(declare-fun invariantList!910 (List!50329) Bool)

(assert (=> d!1360285 (invariantList!910 (toList!3994 lt!1652666))))

(declare-fun e!2778248 () ListMap!3255)

(assert (=> d!1360285 (= lt!1652666 e!2778248)))

(declare-fun c!759262 () Bool)

(assert (=> d!1360285 (= c!759262 (is-Cons!50206 (toList!3993 lm!1477)))))

(assert (=> d!1360285 (forall!9933 (toList!3993 lm!1477) lambda!161915)))

(assert (=> d!1360285 (= (extractMap!1049 (toList!3993 lm!1477)) lt!1652666)))

(declare-fun b!4461663 () Bool)

(declare-fun addToMapMapFromBucket!572 (List!50329 ListMap!3255) ListMap!3255)

(assert (=> b!4461663 (= e!2778248 (addToMapMapFromBucket!572 (_2!28498 (h!55951 (toList!3993 lm!1477))) (extractMap!1049 (t!357280 (toList!3993 lm!1477)))))))

(declare-fun b!4461664 () Bool)

(assert (=> b!4461664 (= e!2778248 (ListMap!3256 Nil!50205))))

(assert (= (and d!1360285 c!759262) b!4461663))

(assert (= (and d!1360285 (not c!759262)) b!4461664))

(declare-fun m!5164679 () Bool)

(assert (=> d!1360285 m!5164679))

(declare-fun m!5164681 () Bool)

(assert (=> d!1360285 m!5164681))

(declare-fun m!5164683 () Bool)

(assert (=> b!4461663 m!5164683))

(assert (=> b!4461663 m!5164683))

(declare-fun m!5164685 () Bool)

(assert (=> b!4461663 m!5164685))

(assert (=> b!4461586 d!1360285))

(declare-fun bs!791526 () Bool)

(declare-fun d!1360291 () Bool)

(assert (= bs!791526 (and d!1360291 start!437526)))

(declare-fun lambda!161918 () Int)

(assert (=> bs!791526 (not (= lambda!161918 lambda!161898))))

(declare-fun bs!791527 () Bool)

(assert (= bs!791527 (and d!1360291 d!1360285)))

(assert (=> bs!791527 (not (= lambda!161918 lambda!161915))))

(assert (=> d!1360291 true))

(assert (=> d!1360291 (= (allKeysSameHashInMap!1100 lm!1477 hashF!1107) (forall!9933 (toList!3993 lm!1477) lambda!161918))))

(declare-fun bs!791528 () Bool)

(assert (= bs!791528 d!1360291))

(declare-fun m!5164691 () Bool)

(assert (=> bs!791528 m!5164691))

(assert (=> b!4461591 d!1360291))

(declare-fun bs!791529 () Bool)

(declare-fun d!1360295 () Bool)

(assert (= bs!791529 (and d!1360295 start!437526)))

(declare-fun lambda!161921 () Int)

(assert (=> bs!791529 (= lambda!161921 lambda!161898)))

(declare-fun bs!791530 () Bool)

(assert (= bs!791530 (and d!1360295 d!1360285)))

(assert (=> bs!791530 (= lambda!161921 lambda!161915)))

(declare-fun bs!791531 () Bool)

(assert (= bs!791531 (and d!1360295 d!1360291)))

(assert (=> bs!791531 (not (= lambda!161921 lambda!161918))))

(assert (=> d!1360295 (contains!12717 lm!1477 (hash!2375 hashF!1107 key!3287))))

(declare-fun lt!1652671 () Unit!86864)

(declare-fun choose!28413 (ListLongMap!2625 K!11623 Hashable!5388) Unit!86864)

(assert (=> d!1360295 (= lt!1652671 (choose!28413 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1360295 (forall!9933 (toList!3993 lm!1477) lambda!161921)))

(assert (=> d!1360295 (= (lemmaInGenMapThenLongMapContainsHash!67 lm!1477 key!3287 hashF!1107) lt!1652671)))

(declare-fun bs!791532 () Bool)

(assert (= bs!791532 d!1360295))

(assert (=> bs!791532 m!5164581))

(assert (=> bs!791532 m!5164581))

(declare-fun m!5164693 () Bool)

(assert (=> bs!791532 m!5164693))

(declare-fun m!5164695 () Bool)

(assert (=> bs!791532 m!5164695))

(declare-fun m!5164697 () Bool)

(assert (=> bs!791532 m!5164697))

(assert (=> b!4461587 d!1360295))

(declare-fun d!1360297 () Bool)

(declare-datatypes ((Option!10890 0))(
  ( (None!10889) (Some!10889 (v!44151 List!50329)) )
))
(declare-fun get!16349 (Option!10890) List!50329)

(declare-fun getValueByKey!876 (List!50330 (_ BitVec 64)) Option!10890)

(assert (=> d!1360297 (= (apply!11730 lm!1477 hash!344) (get!16349 (getValueByKey!876 (toList!3993 lm!1477) hash!344)))))

(declare-fun bs!791533 () Bool)

(assert (= bs!791533 d!1360297))

(declare-fun m!5164705 () Bool)

(assert (=> bs!791533 m!5164705))

(assert (=> bs!791533 m!5164705))

(declare-fun m!5164707 () Bool)

(assert (=> bs!791533 m!5164707))

(assert (=> b!4461587 d!1360297))

(declare-fun d!1360301 () Bool)

(declare-fun lt!1652675 () Bool)

(declare-fun content!8054 (List!50330) (Set tuple2!50408))

(assert (=> d!1360301 (= lt!1652675 (set.member lt!1652617 (content!8054 (toList!3993 lm!1477))))))

(declare-fun e!2778261 () Bool)

(assert (=> d!1360301 (= lt!1652675 e!2778261)))

(declare-fun res!1850360 () Bool)

(assert (=> d!1360301 (=> (not res!1850360) (not e!2778261))))

(assert (=> d!1360301 (= res!1850360 (is-Cons!50206 (toList!3993 lm!1477)))))

(assert (=> d!1360301 (= (contains!12716 (toList!3993 lm!1477) lt!1652617) lt!1652675)))

(declare-fun b!4461679 () Bool)

(declare-fun e!2778262 () Bool)

(assert (=> b!4461679 (= e!2778261 e!2778262)))

(declare-fun res!1850359 () Bool)

(assert (=> b!4461679 (=> res!1850359 e!2778262)))

(assert (=> b!4461679 (= res!1850359 (= (h!55951 (toList!3993 lm!1477)) lt!1652617))))

(declare-fun b!4461680 () Bool)

(assert (=> b!4461680 (= e!2778262 (contains!12716 (t!357280 (toList!3993 lm!1477)) lt!1652617))))

(assert (= (and d!1360301 res!1850360) b!4461679))

(assert (= (and b!4461679 (not res!1850359)) b!4461680))

(declare-fun m!5164709 () Bool)

(assert (=> d!1360301 m!5164709))

(declare-fun m!5164711 () Bool)

(assert (=> d!1360301 m!5164711))

(declare-fun m!5164713 () Bool)

(assert (=> b!4461680 m!5164713))

(assert (=> b!4461587 d!1360301))

(declare-fun d!1360303 () Bool)

(declare-fun e!2778270 () Bool)

(assert (=> d!1360303 e!2778270))

(declare-fun res!1850366 () Bool)

(assert (=> d!1360303 (=> res!1850366 e!2778270)))

(declare-fun lt!1652688 () Bool)

(assert (=> d!1360303 (= res!1850366 (not lt!1652688))))

(declare-fun lt!1652687 () Bool)

(assert (=> d!1360303 (= lt!1652688 lt!1652687)))

(declare-fun lt!1652690 () Unit!86864)

(declare-fun e!2778271 () Unit!86864)

(assert (=> d!1360303 (= lt!1652690 e!2778271)))

(declare-fun c!759265 () Bool)

(assert (=> d!1360303 (= c!759265 lt!1652687)))

(declare-fun containsKey!1407 (List!50330 (_ BitVec 64)) Bool)

(assert (=> d!1360303 (= lt!1652687 (containsKey!1407 (toList!3993 lm!1477) lt!1652615))))

(assert (=> d!1360303 (= (contains!12717 lm!1477 lt!1652615) lt!1652688)))

(declare-fun b!4461690 () Bool)

(declare-fun lt!1652689 () Unit!86864)

(assert (=> b!4461690 (= e!2778271 lt!1652689)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!781 (List!50330 (_ BitVec 64)) Unit!86864)

(assert (=> b!4461690 (= lt!1652689 (lemmaContainsKeyImpliesGetValueByKeyDefined!781 (toList!3993 lm!1477) lt!1652615))))

(declare-fun isDefined!8178 (Option!10890) Bool)

(assert (=> b!4461690 (isDefined!8178 (getValueByKey!876 (toList!3993 lm!1477) lt!1652615))))

(declare-fun b!4461691 () Bool)

(declare-fun Unit!86870 () Unit!86864)

(assert (=> b!4461691 (= e!2778271 Unit!86870)))

(declare-fun b!4461692 () Bool)

(assert (=> b!4461692 (= e!2778270 (isDefined!8178 (getValueByKey!876 (toList!3993 lm!1477) lt!1652615)))))

(assert (= (and d!1360303 c!759265) b!4461690))

(assert (= (and d!1360303 (not c!759265)) b!4461691))

(assert (= (and d!1360303 (not res!1850366)) b!4461692))

(declare-fun m!5164719 () Bool)

(assert (=> d!1360303 m!5164719))

(declare-fun m!5164721 () Bool)

(assert (=> b!4461690 m!5164721))

(declare-fun m!5164723 () Bool)

(assert (=> b!4461690 m!5164723))

(assert (=> b!4461690 m!5164723))

(declare-fun m!5164725 () Bool)

(assert (=> b!4461690 m!5164725))

(assert (=> b!4461692 m!5164723))

(assert (=> b!4461692 m!5164723))

(assert (=> b!4461692 m!5164725))

(assert (=> b!4461587 d!1360303))

(declare-fun d!1360307 () Bool)

(assert (=> d!1360307 (contains!12716 (toList!3993 lm!1477) (tuple2!50409 hash!344 lt!1652613))))

(declare-fun lt!1652693 () Unit!86864)

(declare-fun choose!28414 (List!50330 (_ BitVec 64) List!50329) Unit!86864)

(assert (=> d!1360307 (= lt!1652693 (choose!28414 (toList!3993 lm!1477) hash!344 lt!1652613))))

(declare-fun e!2778274 () Bool)

(assert (=> d!1360307 e!2778274))

(declare-fun res!1850369 () Bool)

(assert (=> d!1360307 (=> (not res!1850369) (not e!2778274))))

(assert (=> d!1360307 (= res!1850369 (isStrictlySorted!323 (toList!3993 lm!1477)))))

(assert (=> d!1360307 (= (lemmaGetValueByKeyImpliesContainsTuple!505 (toList!3993 lm!1477) hash!344 lt!1652613) lt!1652693)))

(declare-fun b!4461695 () Bool)

(assert (=> b!4461695 (= e!2778274 (= (getValueByKey!876 (toList!3993 lm!1477) hash!344) (Some!10889 lt!1652613)))))

(assert (= (and d!1360307 res!1850369) b!4461695))

(declare-fun m!5164727 () Bool)

(assert (=> d!1360307 m!5164727))

(declare-fun m!5164729 () Bool)

(assert (=> d!1360307 m!5164729))

(assert (=> d!1360307 m!5164643))

(assert (=> b!4461695 m!5164705))

(assert (=> b!4461587 d!1360307))

(declare-fun d!1360309 () Bool)

(declare-fun res!1850376 () Bool)

(declare-fun e!2778281 () Bool)

(assert (=> d!1360309 (=> res!1850376 e!2778281)))

(assert (=> d!1360309 (= res!1850376 (not (is-Cons!50205 lt!1652613)))))

(assert (=> d!1360309 (= (noDuplicateKeys!993 lt!1652613) e!2778281)))

(declare-fun b!4461702 () Bool)

(declare-fun e!2778282 () Bool)

(assert (=> b!4461702 (= e!2778281 e!2778282)))

(declare-fun res!1850377 () Bool)

(assert (=> b!4461702 (=> (not res!1850377) (not e!2778282))))

(declare-fun containsKey!1408 (List!50329 K!11623) Bool)

(assert (=> b!4461702 (= res!1850377 (not (containsKey!1408 (t!357279 lt!1652613) (_1!28497 (h!55950 lt!1652613)))))))

(declare-fun b!4461703 () Bool)

(assert (=> b!4461703 (= e!2778282 (noDuplicateKeys!993 (t!357279 lt!1652613)))))

(assert (= (and d!1360309 (not res!1850376)) b!4461702))

(assert (= (and b!4461702 res!1850377) b!4461703))

(declare-fun m!5164731 () Bool)

(assert (=> b!4461702 m!5164731))

(declare-fun m!5164733 () Bool)

(assert (=> b!4461703 m!5164733))

(assert (=> b!4461587 d!1360309))

(declare-fun d!1360311 () Bool)

(assert (=> d!1360311 (dynLambda!20986 lambda!161898 lt!1652617)))

(declare-fun lt!1652699 () Unit!86864)

(declare-fun choose!28415 (List!50330 Int tuple2!50408) Unit!86864)

(assert (=> d!1360311 (= lt!1652699 (choose!28415 (toList!3993 lm!1477) lambda!161898 lt!1652617))))

(declare-fun e!2778286 () Bool)

(assert (=> d!1360311 e!2778286))

(declare-fun res!1850381 () Bool)

(assert (=> d!1360311 (=> (not res!1850381) (not e!2778286))))

(assert (=> d!1360311 (= res!1850381 (forall!9933 (toList!3993 lm!1477) lambda!161898))))

(assert (=> d!1360311 (= (forallContained!2210 (toList!3993 lm!1477) lambda!161898 lt!1652617) lt!1652699)))

(declare-fun b!4461707 () Bool)

(assert (=> b!4461707 (= e!2778286 (contains!12716 (toList!3993 lm!1477) lt!1652617))))

(assert (= (and d!1360311 res!1850381) b!4461707))

(declare-fun b_lambda!147761 () Bool)

(assert (=> (not b_lambda!147761) (not d!1360311)))

(declare-fun m!5164741 () Bool)

(assert (=> d!1360311 m!5164741))

(declare-fun m!5164743 () Bool)

(assert (=> d!1360311 m!5164743))

(assert (=> d!1360311 m!5164605))

(assert (=> b!4461707 m!5164593))

(assert (=> b!4461587 d!1360311))

(declare-fun b!4461712 () Bool)

(declare-fun e!2778289 () Bool)

(declare-fun tp!1335856 () Bool)

(declare-fun tp!1335857 () Bool)

(assert (=> b!4461712 (= e!2778289 (and tp!1335856 tp!1335857))))

(assert (=> b!4461589 (= tp!1335845 e!2778289)))

(assert (= (and b!4461589 (is-Cons!50206 (toList!3993 lm!1477))) b!4461712))

(declare-fun tp!1335860 () Bool)

(declare-fun e!2778292 () Bool)

(declare-fun b!4461717 () Bool)

(assert (=> b!4461717 (= e!2778292 (and tp_is_empty!27249 tp_is_empty!27251 tp!1335860))))

(assert (=> b!4461592 (= tp!1335844 e!2778292)))

(assert (= (and b!4461592 (is-Cons!50205 (t!357279 newBucket!178))) b!4461717))

(declare-fun b_lambda!147763 () Bool)

(assert (= b_lambda!147761 (or start!437526 b_lambda!147763)))

(declare-fun bs!791534 () Bool)

(declare-fun d!1360315 () Bool)

(assert (= bs!791534 (and d!1360315 start!437526)))

(assert (=> bs!791534 (= (dynLambda!20986 lambda!161898 lt!1652617) (noDuplicateKeys!993 (_2!28498 lt!1652617)))))

(declare-fun m!5164745 () Bool)

(assert (=> bs!791534 m!5164745))

(assert (=> d!1360311 d!1360315))

(declare-fun b_lambda!147765 () Bool)

(assert (= b_lambda!147757 (or start!437526 b_lambda!147765)))

(declare-fun bs!791535 () Bool)

(declare-fun d!1360317 () Bool)

(assert (= bs!791535 (and d!1360317 start!437526)))

(assert (=> bs!791535 (= (dynLambda!20986 lambda!161898 (h!55951 (toList!3993 lm!1477))) (noDuplicateKeys!993 (_2!28498 (h!55951 (toList!3993 lm!1477)))))))

(declare-fun m!5164747 () Bool)

(assert (=> bs!791535 m!5164747))

(assert (=> b!4461622 d!1360317))

(push 1)

(assert (not d!1360303))

(assert (not b!4461649))

(assert (not b!4461690))

(assert (not d!1360271))

(assert tp_is_empty!27249)

(assert (not bs!791534))

(assert (not bm!310626))

(assert (not b!4461646))

(assert (not b!4461707))

(assert (not d!1360277))

(assert (not d!1360307))

(assert (not b!4461703))

(assert (not b!4461680))

(assert (not b!4461648))

(assert (not b!4461652))

(assert (not d!1360297))

(assert (not b!4461651))

(assert (not b!4461653))

(assert (not d!1360295))

(assert (not b_lambda!147763))

(assert (not d!1360279))

(assert tp_is_empty!27251)

(assert (not b!4461663))

(assert (not d!1360301))

(assert (not bs!791535))

(assert (not d!1360291))

(assert (not b_lambda!147765))

(assert (not b!4461695))

(assert (not d!1360311))

(assert (not b!4461712))

(assert (not b!4461647))

(assert (not b!4461717))

(assert (not b!4461623))

(assert (not d!1360275))

(assert (not d!1360285))

(assert (not b!4461702))

(assert (not b!4461692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

