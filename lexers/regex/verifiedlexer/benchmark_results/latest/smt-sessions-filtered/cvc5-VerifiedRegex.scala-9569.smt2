; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503760 () Bool)

(assert start!503760)

(declare-fun b!4840602 () Bool)

(declare-fun res!2063668 () Bool)

(declare-fun e!3025156 () Bool)

(assert (=> b!4840602 (=> (not res!2063668) (not e!3025156))))

(declare-datatypes ((K!17132 0))(
  ( (K!17133 (val!22011 Int)) )
))
(declare-datatypes ((V!17378 0))(
  ( (V!17379 (val!22012 Int)) )
))
(declare-datatypes ((tuple2!58894 0))(
  ( (tuple2!58895 (_1!32741 K!17132) (_2!32741 V!17378)) )
))
(declare-datatypes ((List!55496 0))(
  ( (Nil!55372) (Cons!55372 (h!61807 tuple2!58894) (t!362992 List!55496)) )
))
(declare-datatypes ((tuple2!58896 0))(
  ( (tuple2!58897 (_1!32742 (_ BitVec 64)) (_2!32742 List!55496)) )
))
(declare-datatypes ((List!55497 0))(
  ( (Nil!55373) (Cons!55373 (h!61808 tuple2!58896) (t!362993 List!55497)) )
))
(declare-datatypes ((ListLongMap!6313 0))(
  ( (ListLongMap!6314 (toList!7759 List!55497)) )
))
(declare-fun lm!2671 () ListLongMap!6313)

(declare-fun key!6540 () K!17132)

(declare-fun containsKeyBiggerList!709 (List!55497 K!17132) Bool)

(assert (=> b!4840602 (= res!2063668 (containsKeyBiggerList!709 (toList!7759 lm!2671) key!6540))))

(declare-fun b!4840603 () Bool)

(declare-fun res!2063666 () Bool)

(assert (=> b!4840603 (=> (not res!2063666) (not e!3025156))))

(declare-datatypes ((Hashable!7425 0))(
  ( (HashableExt!7424 (__x!33700 Int)) )
))
(declare-fun hashF!1662 () Hashable!7425)

(declare-fun allKeysSameHashInMap!2741 (ListLongMap!6313 Hashable!7425) Bool)

(assert (=> b!4840603 (= res!2063666 (allKeysSameHashInMap!2741 lm!2671 hashF!1662))))

(declare-fun b!4840604 () Bool)

(declare-fun res!2063665 () Bool)

(assert (=> b!4840604 (=> (not res!2063665) (not e!3025156))))

(assert (=> b!4840604 (= res!2063665 (is-Cons!55373 (toList!7759 lm!2671)))))

(declare-fun b!4840605 () Bool)

(declare-fun e!3025157 () Bool)

(declare-fun tp!1363867 () Bool)

(assert (=> b!4840605 (= e!3025157 tp!1363867)))

(declare-fun b!4840606 () Bool)

(declare-fun lt!1984789 () tuple2!58894)

(declare-fun contains!19096 (List!55496 tuple2!58894) Bool)

(assert (=> b!4840606 (= e!3025156 (not (contains!19096 (_2!32742 (h!61808 (toList!7759 lm!2671))) lt!1984789)))))

(declare-fun head!10387 (List!55497) tuple2!58896)

(assert (=> b!4840606 (contains!19096 (_2!32742 (head!10387 (toList!7759 lm!2671))) lt!1984789)))

(declare-fun lt!1984787 () V!17378)

(assert (=> b!4840606 (= lt!1984789 (tuple2!58895 key!6540 lt!1984787))))

(declare-datatypes ((Unit!145018 0))(
  ( (Unit!145019) )
))
(declare-fun lt!1984788 () Unit!145018)

(declare-fun lemmaInPairListHeadThenGetValueInTuple!15 (ListLongMap!6313 K!17132 V!17378 Hashable!7425) Unit!145018)

(assert (=> b!4840606 (= lt!1984788 (lemmaInPairListHeadThenGetValueInTuple!15 lm!2671 key!6540 lt!1984787 hashF!1662))))

(declare-fun getValue!193 (List!55497 K!17132) V!17378)

(assert (=> b!4840606 (= lt!1984787 (getValue!193 (toList!7759 lm!2671) key!6540))))

(declare-fun res!2063669 () Bool)

(assert (=> start!503760 (=> (not res!2063669) (not e!3025156))))

(declare-fun lambda!240985 () Int)

(declare-fun forall!12849 (List!55497 Int) Bool)

(assert (=> start!503760 (= res!2063669 (forall!12849 (toList!7759 lm!2671) lambda!240985))))

(assert (=> start!503760 e!3025156))

(declare-fun inv!71033 (ListLongMap!6313) Bool)

(assert (=> start!503760 (and (inv!71033 lm!2671) e!3025157)))

(assert (=> start!503760 true))

(declare-fun tp_is_empty!34953 () Bool)

(assert (=> start!503760 tp_is_empty!34953))

(declare-fun b!4840601 () Bool)

(declare-fun res!2063667 () Bool)

(assert (=> b!4840601 (=> (not res!2063667) (not e!3025156))))

(declare-fun containsKey!4591 (List!55496 K!17132) Bool)

(assert (=> b!4840601 (= res!2063667 (containsKey!4591 (_2!32742 (h!61808 (toList!7759 lm!2671))) key!6540))))

(assert (= (and start!503760 res!2063669) b!4840603))

(assert (= (and b!4840603 res!2063666) b!4840602))

(assert (= (and b!4840602 res!2063668) b!4840604))

(assert (= (and b!4840604 res!2063665) b!4840601))

(assert (= (and b!4840601 res!2063667) b!4840606))

(assert (= start!503760 b!4840605))

(declare-fun m!5836278 () Bool)

(assert (=> b!4840603 m!5836278))

(declare-fun m!5836280 () Bool)

(assert (=> b!4840601 m!5836280))

(declare-fun m!5836282 () Bool)

(assert (=> b!4840606 m!5836282))

(declare-fun m!5836284 () Bool)

(assert (=> b!4840606 m!5836284))

(declare-fun m!5836286 () Bool)

(assert (=> b!4840606 m!5836286))

(declare-fun m!5836288 () Bool)

(assert (=> b!4840606 m!5836288))

(declare-fun m!5836290 () Bool)

(assert (=> b!4840606 m!5836290))

(declare-fun m!5836292 () Bool)

(assert (=> start!503760 m!5836292))

(declare-fun m!5836294 () Bool)

(assert (=> start!503760 m!5836294))

(declare-fun m!5836296 () Bool)

(assert (=> b!4840602 m!5836296))

(push 1)

(assert (not b!4840601))

(assert (not start!503760))

(assert (not b!4840603))

(assert (not b!4840606))

(assert (not b!4840605))

(assert (not b!4840602))

(assert tp_is_empty!34953)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1168379 () Bool)

(declare-fun d!1551634 () Bool)

(assert (= bs!1168379 (and d!1551634 start!503760)))

(declare-fun lambda!240991 () Int)

(assert (=> bs!1168379 (not (= lambda!240991 lambda!240985))))

(assert (=> d!1551634 true))

(assert (=> d!1551634 (= (allKeysSameHashInMap!2741 lm!2671 hashF!1662) (forall!12849 (toList!7759 lm!2671) lambda!240991))))

(declare-fun bs!1168380 () Bool)

(assert (= bs!1168380 d!1551634))

(declare-fun m!5836318 () Bool)

(assert (=> bs!1168380 m!5836318))

(assert (=> b!4840603 d!1551634))

(declare-fun d!1551636 () Bool)

(declare-fun res!2063689 () Bool)

(declare-fun e!3025168 () Bool)

(assert (=> d!1551636 (=> res!2063689 e!3025168)))

(assert (=> d!1551636 (= res!2063689 (is-Nil!55373 (toList!7759 lm!2671)))))

(assert (=> d!1551636 (= (forall!12849 (toList!7759 lm!2671) lambda!240985) e!3025168)))

(declare-fun b!4840631 () Bool)

(declare-fun e!3025169 () Bool)

(assert (=> b!4840631 (= e!3025168 e!3025169)))

(declare-fun res!2063690 () Bool)

(assert (=> b!4840631 (=> (not res!2063690) (not e!3025169))))

(declare-fun dynLambda!22299 (Int tuple2!58896) Bool)

(assert (=> b!4840631 (= res!2063690 (dynLambda!22299 lambda!240985 (h!61808 (toList!7759 lm!2671))))))

(declare-fun b!4840632 () Bool)

(assert (=> b!4840632 (= e!3025169 (forall!12849 (t!362993 (toList!7759 lm!2671)) lambda!240985))))

(assert (= (and d!1551636 (not res!2063689)) b!4840631))

(assert (= (and b!4840631 res!2063690) b!4840632))

(declare-fun b_lambda!191339 () Bool)

(assert (=> (not b_lambda!191339) (not b!4840631)))

(declare-fun m!5836320 () Bool)

(assert (=> b!4840631 m!5836320))

(declare-fun m!5836322 () Bool)

(assert (=> b!4840632 m!5836322))

(assert (=> start!503760 d!1551636))

(declare-fun d!1551638 () Bool)

(declare-fun isStrictlySorted!1044 (List!55497) Bool)

(assert (=> d!1551638 (= (inv!71033 lm!2671) (isStrictlySorted!1044 (toList!7759 lm!2671)))))

(declare-fun bs!1168381 () Bool)

(assert (= bs!1168381 d!1551638))

(declare-fun m!5836324 () Bool)

(assert (=> bs!1168381 m!5836324))

(assert (=> start!503760 d!1551638))

(declare-fun d!1551640 () Bool)

(declare-fun c!824339 () Bool)

(declare-fun e!3025175 () Bool)

(assert (=> d!1551640 (= c!824339 e!3025175)))

(declare-fun res!2063693 () Bool)

(assert (=> d!1551640 (=> (not res!2063693) (not e!3025175))))

(assert (=> d!1551640 (= res!2063693 (is-Cons!55373 (toList!7759 lm!2671)))))

(declare-fun e!3025174 () V!17378)

(assert (=> d!1551640 (= (getValue!193 (toList!7759 lm!2671) key!6540) e!3025174)))

(declare-fun b!4840641 () Bool)

(assert (=> b!4840641 (= e!3025175 (containsKey!4591 (_2!32742 (h!61808 (toList!7759 lm!2671))) key!6540))))

(declare-fun b!4840639 () Bool)

(declare-datatypes ((Option!13611 0))(
  ( (None!13610) (Some!13610 (v!49339 tuple2!58894)) )
))
(declare-fun get!18953 (Option!13611) tuple2!58894)

(declare-fun getPair!1051 (List!55496 K!17132) Option!13611)

(assert (=> b!4840639 (= e!3025174 (_2!32741 (get!18953 (getPair!1051 (_2!32742 (h!61808 (toList!7759 lm!2671))) key!6540))))))

(declare-fun b!4840640 () Bool)

(assert (=> b!4840640 (= e!3025174 (getValue!193 (t!362993 (toList!7759 lm!2671)) key!6540))))

(assert (= (and d!1551640 res!2063693) b!4840641))

(assert (= (and d!1551640 c!824339) b!4840639))

(assert (= (and d!1551640 (not c!824339)) b!4840640))

(assert (=> b!4840641 m!5836280))

(declare-fun m!5836326 () Bool)

(assert (=> b!4840639 m!5836326))

(assert (=> b!4840639 m!5836326))

(declare-fun m!5836328 () Bool)

(assert (=> b!4840639 m!5836328))

(declare-fun m!5836330 () Bool)

(assert (=> b!4840640 m!5836330))

(assert (=> b!4840606 d!1551640))

(declare-fun bs!1168382 () Bool)

(declare-fun d!1551642 () Bool)

(assert (= bs!1168382 (and d!1551642 start!503760)))

(declare-fun lambda!240994 () Int)

(assert (=> bs!1168382 (= lambda!240994 lambda!240985)))

(declare-fun bs!1168383 () Bool)

(assert (= bs!1168383 (and d!1551642 d!1551634)))

(assert (=> bs!1168383 (not (= lambda!240994 lambda!240991))))

(assert (=> d!1551642 (contains!19096 (_2!32742 (head!10387 (toList!7759 lm!2671))) (tuple2!58895 key!6540 lt!1984787))))

(declare-fun lt!1984801 () Unit!145018)

(declare-fun choose!35370 (ListLongMap!6313 K!17132 V!17378 Hashable!7425) Unit!145018)

(assert (=> d!1551642 (= lt!1984801 (choose!35370 lm!2671 key!6540 lt!1984787 hashF!1662))))

(assert (=> d!1551642 (forall!12849 (toList!7759 lm!2671) lambda!240994)))

(assert (=> d!1551642 (= (lemmaInPairListHeadThenGetValueInTuple!15 lm!2671 key!6540 lt!1984787 hashF!1662) lt!1984801)))

(declare-fun bs!1168384 () Bool)

(assert (= bs!1168384 d!1551642))

(assert (=> bs!1168384 m!5836286))

(declare-fun m!5836332 () Bool)

(assert (=> bs!1168384 m!5836332))

(declare-fun m!5836334 () Bool)

(assert (=> bs!1168384 m!5836334))

(declare-fun m!5836336 () Bool)

(assert (=> bs!1168384 m!5836336))

(assert (=> b!4840606 d!1551642))

(declare-fun d!1551646 () Bool)

(declare-fun lt!1984804 () Bool)

(declare-fun content!9853 (List!55496) (Set tuple2!58894))

(assert (=> d!1551646 (= lt!1984804 (set.member lt!1984789 (content!9853 (_2!32742 (head!10387 (toList!7759 lm!2671))))))))

(declare-fun e!3025185 () Bool)

(assert (=> d!1551646 (= lt!1984804 e!3025185)))

(declare-fun res!2063703 () Bool)

(assert (=> d!1551646 (=> (not res!2063703) (not e!3025185))))

(assert (=> d!1551646 (= res!2063703 (is-Cons!55372 (_2!32742 (head!10387 (toList!7759 lm!2671)))))))

(assert (=> d!1551646 (= (contains!19096 (_2!32742 (head!10387 (toList!7759 lm!2671))) lt!1984789) lt!1984804)))

(declare-fun b!4840650 () Bool)

(declare-fun e!3025184 () Bool)

(assert (=> b!4840650 (= e!3025185 e!3025184)))

(declare-fun res!2063702 () Bool)

(assert (=> b!4840650 (=> res!2063702 e!3025184)))

(assert (=> b!4840650 (= res!2063702 (= (h!61807 (_2!32742 (head!10387 (toList!7759 lm!2671)))) lt!1984789))))

(declare-fun b!4840651 () Bool)

(assert (=> b!4840651 (= e!3025184 (contains!19096 (t!362992 (_2!32742 (head!10387 (toList!7759 lm!2671)))) lt!1984789))))

(assert (= (and d!1551646 res!2063703) b!4840650))

(assert (= (and b!4840650 (not res!2063702)) b!4840651))

(declare-fun m!5836338 () Bool)

(assert (=> d!1551646 m!5836338))

(declare-fun m!5836340 () Bool)

(assert (=> d!1551646 m!5836340))

(declare-fun m!5836342 () Bool)

(assert (=> b!4840651 m!5836342))

(assert (=> b!4840606 d!1551646))

(declare-fun d!1551648 () Bool)

(declare-fun lt!1984805 () Bool)

(assert (=> d!1551648 (= lt!1984805 (set.member lt!1984789 (content!9853 (_2!32742 (h!61808 (toList!7759 lm!2671))))))))

(declare-fun e!3025187 () Bool)

(assert (=> d!1551648 (= lt!1984805 e!3025187)))

(declare-fun res!2063705 () Bool)

(assert (=> d!1551648 (=> (not res!2063705) (not e!3025187))))

(assert (=> d!1551648 (= res!2063705 (is-Cons!55372 (_2!32742 (h!61808 (toList!7759 lm!2671)))))))

(assert (=> d!1551648 (= (contains!19096 (_2!32742 (h!61808 (toList!7759 lm!2671))) lt!1984789) lt!1984805)))

(declare-fun b!4840652 () Bool)

(declare-fun e!3025186 () Bool)

(assert (=> b!4840652 (= e!3025187 e!3025186)))

(declare-fun res!2063704 () Bool)

(assert (=> b!4840652 (=> res!2063704 e!3025186)))

(assert (=> b!4840652 (= res!2063704 (= (h!61807 (_2!32742 (h!61808 (toList!7759 lm!2671)))) lt!1984789))))

(declare-fun b!4840653 () Bool)

(assert (=> b!4840653 (= e!3025186 (contains!19096 (t!362992 (_2!32742 (h!61808 (toList!7759 lm!2671)))) lt!1984789))))

(assert (= (and d!1551648 res!2063705) b!4840652))

(assert (= (and b!4840652 (not res!2063704)) b!4840653))

(declare-fun m!5836344 () Bool)

(assert (=> d!1551648 m!5836344))

(declare-fun m!5836346 () Bool)

(assert (=> d!1551648 m!5836346))

(declare-fun m!5836348 () Bool)

(assert (=> b!4840653 m!5836348))

(assert (=> b!4840606 d!1551648))

(declare-fun d!1551650 () Bool)

(assert (=> d!1551650 (= (head!10387 (toList!7759 lm!2671)) (h!61808 (toList!7759 lm!2671)))))

(assert (=> b!4840606 d!1551650))

(declare-fun d!1551652 () Bool)

(declare-fun res!2063714 () Bool)

(declare-fun e!3025198 () Bool)

(assert (=> d!1551652 (=> res!2063714 e!3025198)))

(declare-fun e!3025197 () Bool)

(assert (=> d!1551652 (= res!2063714 e!3025197)))

(declare-fun res!2063715 () Bool)

(assert (=> d!1551652 (=> (not res!2063715) (not e!3025197))))

(assert (=> d!1551652 (= res!2063715 (is-Cons!55373 (toList!7759 lm!2671)))))

(assert (=> d!1551652 (= (containsKeyBiggerList!709 (toList!7759 lm!2671) key!6540) e!3025198)))

(declare-fun b!4840662 () Bool)

(assert (=> b!4840662 (= e!3025197 (containsKey!4591 (_2!32742 (h!61808 (toList!7759 lm!2671))) key!6540))))

(declare-fun b!4840663 () Bool)

(declare-fun e!3025196 () Bool)

(assert (=> b!4840663 (= e!3025198 e!3025196)))

(declare-fun res!2063716 () Bool)

(assert (=> b!4840663 (=> (not res!2063716) (not e!3025196))))

(assert (=> b!4840663 (= res!2063716 (is-Cons!55373 (toList!7759 lm!2671)))))

(declare-fun b!4840664 () Bool)

(assert (=> b!4840664 (= e!3025196 (containsKeyBiggerList!709 (t!362993 (toList!7759 lm!2671)) key!6540))))

(assert (= (and d!1551652 res!2063715) b!4840662))

(assert (= (and d!1551652 (not res!2063714)) b!4840663))

(assert (= (and b!4840663 res!2063716) b!4840664))

(assert (=> b!4840662 m!5836280))

(declare-fun m!5836352 () Bool)

(assert (=> b!4840664 m!5836352))

(assert (=> b!4840602 d!1551652))

(declare-fun d!1551656 () Bool)

(declare-fun res!2063721 () Bool)

(declare-fun e!3025203 () Bool)

(assert (=> d!1551656 (=> res!2063721 e!3025203)))

(assert (=> d!1551656 (= res!2063721 (and (is-Cons!55372 (_2!32742 (h!61808 (toList!7759 lm!2671)))) (= (_1!32741 (h!61807 (_2!32742 (h!61808 (toList!7759 lm!2671))))) key!6540)))))

(assert (=> d!1551656 (= (containsKey!4591 (_2!32742 (h!61808 (toList!7759 lm!2671))) key!6540) e!3025203)))

(declare-fun b!4840669 () Bool)

(declare-fun e!3025204 () Bool)

(assert (=> b!4840669 (= e!3025203 e!3025204)))

(declare-fun res!2063722 () Bool)

(assert (=> b!4840669 (=> (not res!2063722) (not e!3025204))))

(assert (=> b!4840669 (= res!2063722 (is-Cons!55372 (_2!32742 (h!61808 (toList!7759 lm!2671)))))))

(declare-fun b!4840670 () Bool)

(assert (=> b!4840670 (= e!3025204 (containsKey!4591 (t!362992 (_2!32742 (h!61808 (toList!7759 lm!2671)))) key!6540))))

(assert (= (and d!1551656 (not res!2063721)) b!4840669))

(assert (= (and b!4840669 res!2063722) b!4840670))

(declare-fun m!5836354 () Bool)

(assert (=> b!4840670 m!5836354))

(assert (=> b!4840601 d!1551656))

(declare-fun b!4840675 () Bool)

(declare-fun e!3025207 () Bool)

(declare-fun tp!1363875 () Bool)

(declare-fun tp!1363876 () Bool)

(assert (=> b!4840675 (= e!3025207 (and tp!1363875 tp!1363876))))

(assert (=> b!4840605 (= tp!1363867 e!3025207)))

(assert (= (and b!4840605 (is-Cons!55373 (toList!7759 lm!2671))) b!4840675))

(declare-fun b_lambda!191341 () Bool)

(assert (= b_lambda!191339 (or start!503760 b_lambda!191341)))

(declare-fun bs!1168385 () Bool)

(declare-fun d!1551658 () Bool)

(assert (= bs!1168385 (and d!1551658 start!503760)))

(declare-fun noDuplicateKeys!2544 (List!55496) Bool)

(assert (=> bs!1168385 (= (dynLambda!22299 lambda!240985 (h!61808 (toList!7759 lm!2671))) (noDuplicateKeys!2544 (_2!32742 (h!61808 (toList!7759 lm!2671)))))))

(declare-fun m!5836356 () Bool)

(assert (=> bs!1168385 m!5836356))

(assert (=> b!4840631 d!1551658))

(push 1)

(assert (not b!4840641))

(assert (not b!4840662))

(assert (not b!4840653))

(assert (not b!4840675))

(assert (not d!1551634))

(assert (not b!4840670))

(assert (not b!4840651))

(assert (not d!1551646))

(assert (not d!1551638))

(assert (not bs!1168385))

(assert (not b!4840632))

(assert (not b!4840664))

(assert (not b!4840639))

(assert (not d!1551642))

(assert (not b_lambda!191341))

(assert tp_is_empty!34953)

(assert (not d!1551648))

(assert (not b!4840640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

