; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502842 () Bool)

(assert start!502842)

(declare-fun b!4836143 () Bool)

(declare-fun res!2060693 () Bool)

(declare-fun e!3022328 () Bool)

(assert (=> b!4836143 (=> (not res!2060693) (not e!3022328))))

(declare-datatypes ((K!16972 0))(
  ( (K!16973 (val!21883 Int)) )
))
(declare-datatypes ((V!17218 0))(
  ( (V!17219 (val!21884 Int)) )
))
(declare-datatypes ((tuple2!58638 0))(
  ( (tuple2!58639 (_1!32613 K!16972) (_2!32613 V!17218)) )
))
(declare-datatypes ((List!55352 0))(
  ( (Nil!55228) (Cons!55228 (h!61663 tuple2!58638) (t!362848 List!55352)) )
))
(declare-datatypes ((tuple2!58640 0))(
  ( (tuple2!58641 (_1!32614 (_ BitVec 64)) (_2!32614 List!55352)) )
))
(declare-datatypes ((List!55353 0))(
  ( (Nil!55229) (Cons!55229 (h!61664 tuple2!58640) (t!362849 List!55353)) )
))
(declare-datatypes ((ListLongMap!6185 0))(
  ( (ListLongMap!6186 (toList!7649 List!55353)) )
))
(declare-fun lm!2671 () ListLongMap!6185)

(declare-fun key!6540 () K!16972)

(declare-fun containsKey!4511 (List!55352 K!16972) Bool)

(assert (=> b!4836143 (= res!2060693 (containsKey!4511 (_2!32614 (h!61664 (toList!7649 lm!2671))) key!6540))))

(declare-fun b!4836144 () Bool)

(declare-fun res!2060694 () Bool)

(assert (=> b!4836144 (=> (not res!2060694) (not e!3022328))))

(declare-fun containsKeyBiggerList!645 (List!55353 K!16972) Bool)

(assert (=> b!4836144 (= res!2060694 (containsKeyBiggerList!645 (toList!7649 lm!2671) key!6540))))

(declare-fun b!4836145 () Bool)

(declare-fun res!2060698 () Bool)

(assert (=> b!4836145 (=> (not res!2060698) (not e!3022328))))

(declare-datatypes ((Hashable!7361 0))(
  ( (HashableExt!7360 (__x!33636 Int)) )
))
(declare-fun hashF!1662 () Hashable!7361)

(declare-fun allKeysSameHashInMap!2677 (ListLongMap!6185 Hashable!7361) Bool)

(assert (=> b!4836145 (= res!2060698 (allKeysSameHashInMap!2677 lm!2671 hashF!1662))))

(declare-fun b!4836146 () Bool)

(declare-fun res!2060695 () Bool)

(assert (=> b!4836146 (=> (not res!2060695) (not e!3022328))))

(assert (=> b!4836146 (= res!2060695 (is-Cons!55229 (toList!7649 lm!2671)))))

(declare-fun b!4836147 () Bool)

(declare-fun e!3022327 () Bool)

(declare-fun lt!1981687 () tuple2!58638)

(declare-fun contains!19032 (List!55352 tuple2!58638) Bool)

(assert (=> b!4836147 (= e!3022327 (contains!19032 (_2!32614 (h!61664 (toList!7649 lm!2671))) lt!1981687))))

(declare-fun res!2060697 () Bool)

(assert (=> start!502842 (=> (not res!2060697) (not e!3022328))))

(declare-fun lambda!239472 () Int)

(declare-fun forall!12761 (List!55353 Int) Bool)

(assert (=> start!502842 (= res!2060697 (forall!12761 (toList!7649 lm!2671) lambda!239472))))

(assert (=> start!502842 e!3022328))

(declare-fun e!3022329 () Bool)

(declare-fun inv!70873 (ListLongMap!6185) Bool)

(assert (=> start!502842 (and (inv!70873 lm!2671) e!3022329)))

(assert (=> start!502842 true))

(declare-fun tp_is_empty!34821 () Bool)

(assert (=> start!502842 tp_is_empty!34821))

(declare-fun b!4836148 () Bool)

(declare-fun noDuplicateKeys!2514 (List!55352) Bool)

(assert (=> b!4836148 (= e!3022328 (not (noDuplicateKeys!2514 (_2!32614 (h!61664 (toList!7649 lm!2671))))))))

(declare-datatypes ((ListMap!7007 0))(
  ( (ListMap!7008 (toList!7650 List!55352)) )
))
(declare-fun lt!1981688 () ListMap!7007)

(declare-fun extractMap!2723 (List!55353) ListMap!7007)

(assert (=> b!4836148 (= lt!1981688 (extractMap!2723 (t!362849 (toList!7649 lm!2671))))))

(assert (=> b!4836148 e!3022327))

(declare-fun res!2060696 () Bool)

(assert (=> b!4836148 (=> (not res!2060696) (not e!3022327))))

(declare-fun head!10369 (List!55353) tuple2!58640)

(assert (=> b!4836148 (= res!2060696 (contains!19032 (_2!32614 (head!10369 (toList!7649 lm!2671))) lt!1981687))))

(declare-fun lt!1981686 () V!17218)

(assert (=> b!4836148 (= lt!1981687 (tuple2!58639 key!6540 lt!1981686))))

(declare-datatypes ((Unit!144596 0))(
  ( (Unit!144597) )
))
(declare-fun lt!1981689 () Unit!144596)

(declare-fun lemmaInPairListHeadThenGetValueInTuple!5 (ListLongMap!6185 K!16972 V!17218 Hashable!7361) Unit!144596)

(assert (=> b!4836148 (= lt!1981689 (lemmaInPairListHeadThenGetValueInTuple!5 lm!2671 key!6540 lt!1981686 hashF!1662))))

(declare-fun getValue!175 (List!55353 K!16972) V!17218)

(assert (=> b!4836148 (= lt!1981686 (getValue!175 (toList!7649 lm!2671) key!6540))))

(declare-fun b!4836149 () Bool)

(declare-fun tp!1363449 () Bool)

(assert (=> b!4836149 (= e!3022329 tp!1363449)))

(assert (= (and start!502842 res!2060697) b!4836145))

(assert (= (and b!4836145 res!2060698) b!4836144))

(assert (= (and b!4836144 res!2060694) b!4836146))

(assert (= (and b!4836146 res!2060695) b!4836143))

(assert (= (and b!4836143 res!2060693) b!4836148))

(assert (= (and b!4836148 res!2060696) b!4836147))

(assert (= start!502842 b!4836149))

(declare-fun m!5831382 () Bool)

(assert (=> b!4836145 m!5831382))

(declare-fun m!5831384 () Bool)

(assert (=> b!4836147 m!5831384))

(declare-fun m!5831386 () Bool)

(assert (=> b!4836143 m!5831386))

(declare-fun m!5831388 () Bool)

(assert (=> start!502842 m!5831388))

(declare-fun m!5831390 () Bool)

(assert (=> start!502842 m!5831390))

(declare-fun m!5831392 () Bool)

(assert (=> b!4836148 m!5831392))

(declare-fun m!5831394 () Bool)

(assert (=> b!4836148 m!5831394))

(declare-fun m!5831396 () Bool)

(assert (=> b!4836148 m!5831396))

(declare-fun m!5831398 () Bool)

(assert (=> b!4836148 m!5831398))

(declare-fun m!5831400 () Bool)

(assert (=> b!4836148 m!5831400))

(declare-fun m!5831402 () Bool)

(assert (=> b!4836148 m!5831402))

(declare-fun m!5831404 () Bool)

(assert (=> b!4836144 m!5831404))

(push 1)

(assert (not start!502842))

(assert tp_is_empty!34821)

(assert (not b!4836144))

(assert (not b!4836149))

(assert (not b!4836145))

(assert (not b!4836148))

(assert (not b!4836147))

(assert (not b!4836143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550370 () Bool)

(declare-fun res!2060723 () Bool)

(declare-fun e!3022345 () Bool)

(assert (=> d!1550370 (=> res!2060723 e!3022345)))

(declare-fun e!3022346 () Bool)

(assert (=> d!1550370 (= res!2060723 e!3022346)))

(declare-fun res!2060725 () Bool)

(assert (=> d!1550370 (=> (not res!2060725) (not e!3022346))))

(assert (=> d!1550370 (= res!2060725 (is-Cons!55229 (toList!7649 lm!2671)))))

(assert (=> d!1550370 (= (containsKeyBiggerList!645 (toList!7649 lm!2671) key!6540) e!3022345)))

(declare-fun b!4836177 () Bool)

(assert (=> b!4836177 (= e!3022346 (containsKey!4511 (_2!32614 (h!61664 (toList!7649 lm!2671))) key!6540))))

(declare-fun b!4836178 () Bool)

(declare-fun e!3022347 () Bool)

(assert (=> b!4836178 (= e!3022345 e!3022347)))

(declare-fun res!2060724 () Bool)

(assert (=> b!4836178 (=> (not res!2060724) (not e!3022347))))

(assert (=> b!4836178 (= res!2060724 (is-Cons!55229 (toList!7649 lm!2671)))))

(declare-fun b!4836179 () Bool)

(assert (=> b!4836179 (= e!3022347 (containsKeyBiggerList!645 (t!362849 (toList!7649 lm!2671)) key!6540))))

(assert (= (and d!1550370 res!2060725) b!4836177))

(assert (= (and d!1550370 (not res!2060723)) b!4836178))

(assert (= (and b!4836178 res!2060724) b!4836179))

(assert (=> b!4836177 m!5831386))

(declare-fun m!5831430 () Bool)

(assert (=> b!4836179 m!5831430))

(assert (=> b!4836144 d!1550370))

(declare-fun d!1550372 () Bool)

(declare-fun res!2060730 () Bool)

(declare-fun e!3022352 () Bool)

(assert (=> d!1550372 (=> res!2060730 e!3022352)))

(assert (=> d!1550372 (= res!2060730 (is-Nil!55229 (toList!7649 lm!2671)))))

(assert (=> d!1550372 (= (forall!12761 (toList!7649 lm!2671) lambda!239472) e!3022352)))

(declare-fun b!4836184 () Bool)

(declare-fun e!3022353 () Bool)

(assert (=> b!4836184 (= e!3022352 e!3022353)))

(declare-fun res!2060731 () Bool)

(assert (=> b!4836184 (=> (not res!2060731) (not e!3022353))))

(declare-fun dynLambda!22262 (Int tuple2!58640) Bool)

(assert (=> b!4836184 (= res!2060731 (dynLambda!22262 lambda!239472 (h!61664 (toList!7649 lm!2671))))))

(declare-fun b!4836185 () Bool)

(assert (=> b!4836185 (= e!3022353 (forall!12761 (t!362849 (toList!7649 lm!2671)) lambda!239472))))

(assert (= (and d!1550372 (not res!2060730)) b!4836184))

(assert (= (and b!4836184 res!2060731) b!4836185))

(declare-fun b_lambda!191043 () Bool)

(assert (=> (not b_lambda!191043) (not b!4836184)))

(declare-fun m!5831432 () Bool)

(assert (=> b!4836184 m!5831432))

(declare-fun m!5831434 () Bool)

(assert (=> b!4836185 m!5831434))

(assert (=> start!502842 d!1550372))

(declare-fun d!1550374 () Bool)

(declare-fun isStrictlySorted!1014 (List!55353) Bool)

(assert (=> d!1550374 (= (inv!70873 lm!2671) (isStrictlySorted!1014 (toList!7649 lm!2671)))))

(declare-fun bs!1167482 () Bool)

(assert (= bs!1167482 d!1550374))

(declare-fun m!5831436 () Bool)

(assert (=> bs!1167482 m!5831436))

(assert (=> start!502842 d!1550374))

(declare-fun bs!1167483 () Bool)

(declare-fun d!1550376 () Bool)

(assert (= bs!1167483 (and d!1550376 start!502842)))

(declare-fun lambda!239478 () Int)

(assert (=> bs!1167483 (not (= lambda!239478 lambda!239472))))

(assert (=> d!1550376 true))

(assert (=> d!1550376 (= (allKeysSameHashInMap!2677 lm!2671 hashF!1662) (forall!12761 (toList!7649 lm!2671) lambda!239478))))

(declare-fun bs!1167484 () Bool)

(assert (= bs!1167484 d!1550376))

(declare-fun m!5831438 () Bool)

(assert (=> bs!1167484 m!5831438))

(assert (=> b!4836145 d!1550376))

(declare-fun d!1550378 () Bool)

(declare-fun lt!1981704 () Bool)

(declare-fun content!9844 (List!55352) (Set tuple2!58638))

(assert (=> d!1550378 (= lt!1981704 (set.member lt!1981687 (content!9844 (_2!32614 (h!61664 (toList!7649 lm!2671))))))))

(declare-fun e!3022358 () Bool)

(assert (=> d!1550378 (= lt!1981704 e!3022358)))

(declare-fun res!2060736 () Bool)

(assert (=> d!1550378 (=> (not res!2060736) (not e!3022358))))

(assert (=> d!1550378 (= res!2060736 (is-Cons!55228 (_2!32614 (h!61664 (toList!7649 lm!2671)))))))

(assert (=> d!1550378 (= (contains!19032 (_2!32614 (h!61664 (toList!7649 lm!2671))) lt!1981687) lt!1981704)))

(declare-fun b!4836192 () Bool)

(declare-fun e!3022359 () Bool)

(assert (=> b!4836192 (= e!3022358 e!3022359)))

(declare-fun res!2060737 () Bool)

(assert (=> b!4836192 (=> res!2060737 e!3022359)))

(assert (=> b!4836192 (= res!2060737 (= (h!61663 (_2!32614 (h!61664 (toList!7649 lm!2671)))) lt!1981687))))

(declare-fun b!4836193 () Bool)

(assert (=> b!4836193 (= e!3022359 (contains!19032 (t!362848 (_2!32614 (h!61664 (toList!7649 lm!2671)))) lt!1981687))))

(assert (= (and d!1550378 res!2060736) b!4836192))

(assert (= (and b!4836192 (not res!2060737)) b!4836193))

(declare-fun m!5831440 () Bool)

(assert (=> d!1550378 m!5831440))

(declare-fun m!5831442 () Bool)

(assert (=> d!1550378 m!5831442))

(declare-fun m!5831444 () Bool)

(assert (=> b!4836193 m!5831444))

(assert (=> b!4836147 d!1550378))

(declare-fun d!1550380 () Bool)

(declare-fun res!2060742 () Bool)

(declare-fun e!3022364 () Bool)

(assert (=> d!1550380 (=> res!2060742 e!3022364)))

(assert (=> d!1550380 (= res!2060742 (and (is-Cons!55228 (_2!32614 (h!61664 (toList!7649 lm!2671)))) (= (_1!32613 (h!61663 (_2!32614 (h!61664 (toList!7649 lm!2671))))) key!6540)))))

(assert (=> d!1550380 (= (containsKey!4511 (_2!32614 (h!61664 (toList!7649 lm!2671))) key!6540) e!3022364)))

(declare-fun b!4836198 () Bool)

(declare-fun e!3022365 () Bool)

(assert (=> b!4836198 (= e!3022364 e!3022365)))

(declare-fun res!2060743 () Bool)

(assert (=> b!4836198 (=> (not res!2060743) (not e!3022365))))

(assert (=> b!4836198 (= res!2060743 (is-Cons!55228 (_2!32614 (h!61664 (toList!7649 lm!2671)))))))

(declare-fun b!4836199 () Bool)

(assert (=> b!4836199 (= e!3022365 (containsKey!4511 (t!362848 (_2!32614 (h!61664 (toList!7649 lm!2671)))) key!6540))))

(assert (= (and d!1550380 (not res!2060742)) b!4836198))

(assert (= (and b!4836198 res!2060743) b!4836199))

(declare-fun m!5831446 () Bool)

(assert (=> b!4836199 m!5831446))

(assert (=> b!4836143 d!1550380))

(declare-fun bs!1167485 () Bool)

(declare-fun d!1550384 () Bool)

(assert (= bs!1167485 (and d!1550384 start!502842)))

(declare-fun lambda!239481 () Int)

(assert (=> bs!1167485 (= lambda!239481 lambda!239472)))

(declare-fun bs!1167486 () Bool)

(assert (= bs!1167486 (and d!1550384 d!1550376)))

(assert (=> bs!1167486 (not (= lambda!239481 lambda!239478))))

(assert (=> d!1550384 (contains!19032 (_2!32614 (head!10369 (toList!7649 lm!2671))) (tuple2!58639 key!6540 lt!1981686))))

(declare-fun lt!1981707 () Unit!144596)

(declare-fun choose!35328 (ListLongMap!6185 K!16972 V!17218 Hashable!7361) Unit!144596)

(assert (=> d!1550384 (= lt!1981707 (choose!35328 lm!2671 key!6540 lt!1981686 hashF!1662))))

(assert (=> d!1550384 (forall!12761 (toList!7649 lm!2671) lambda!239481)))

(assert (=> d!1550384 (= (lemmaInPairListHeadThenGetValueInTuple!5 lm!2671 key!6540 lt!1981686 hashF!1662) lt!1981707)))

(declare-fun bs!1167487 () Bool)

(assert (= bs!1167487 d!1550384))

(assert (=> bs!1167487 m!5831396))

(declare-fun m!5831448 () Bool)

(assert (=> bs!1167487 m!5831448))

(declare-fun m!5831450 () Bool)

(assert (=> bs!1167487 m!5831450))

(declare-fun m!5831452 () Bool)

(assert (=> bs!1167487 m!5831452))

(assert (=> b!4836148 d!1550384))

(declare-fun d!1550386 () Bool)

(assert (=> d!1550386 (= (head!10369 (toList!7649 lm!2671)) (h!61664 (toList!7649 lm!2671)))))

(assert (=> b!4836148 d!1550386))

(declare-fun d!1550388 () Bool)

(declare-fun res!2060748 () Bool)

(declare-fun e!3022370 () Bool)

(assert (=> d!1550388 (=> res!2060748 e!3022370)))

(assert (=> d!1550388 (= res!2060748 (not (is-Cons!55228 (_2!32614 (h!61664 (toList!7649 lm!2671))))))))

(assert (=> d!1550388 (= (noDuplicateKeys!2514 (_2!32614 (h!61664 (toList!7649 lm!2671)))) e!3022370)))

(declare-fun b!4836204 () Bool)

(declare-fun e!3022371 () Bool)

(assert (=> b!4836204 (= e!3022370 e!3022371)))

(declare-fun res!2060749 () Bool)

(assert (=> b!4836204 (=> (not res!2060749) (not e!3022371))))

(assert (=> b!4836204 (= res!2060749 (not (containsKey!4511 (t!362848 (_2!32614 (h!61664 (toList!7649 lm!2671)))) (_1!32613 (h!61663 (_2!32614 (h!61664 (toList!7649 lm!2671))))))))))

(declare-fun b!4836205 () Bool)

(assert (=> b!4836205 (= e!3022371 (noDuplicateKeys!2514 (t!362848 (_2!32614 (h!61664 (toList!7649 lm!2671))))))))

(assert (= (and d!1550388 (not res!2060748)) b!4836204))

(assert (= (and b!4836204 res!2060749) b!4836205))

(declare-fun m!5831454 () Bool)

(assert (=> b!4836204 m!5831454))

(declare-fun m!5831456 () Bool)

(assert (=> b!4836205 m!5831456))

(assert (=> b!4836148 d!1550388))

(declare-fun d!1550390 () Bool)

(declare-fun c!823856 () Bool)

(declare-fun e!3022377 () Bool)

(assert (=> d!1550390 (= c!823856 e!3022377)))

(declare-fun res!2060752 () Bool)

(assert (=> d!1550390 (=> (not res!2060752) (not e!3022377))))

(assert (=> d!1550390 (= res!2060752 (is-Cons!55229 (toList!7649 lm!2671)))))

(declare-fun e!3022376 () V!17218)

(assert (=> d!1550390 (= (getValue!175 (toList!7649 lm!2671) key!6540) e!3022376)))

(declare-fun b!4836214 () Bool)

(assert (=> b!4836214 (= e!3022377 (containsKey!4511 (_2!32614 (h!61664 (toList!7649 lm!2671))) key!6540))))

(declare-fun b!4836212 () Bool)

(declare-datatypes ((Option!13584 0))(
  ( (None!13583) (Some!13583 (v!49294 tuple2!58638)) )
))
(declare-fun get!18908 (Option!13584) tuple2!58638)

(declare-fun getPair!1046 (List!55352 K!16972) Option!13584)

(assert (=> b!4836212 (= e!3022376 (_2!32613 (get!18908 (getPair!1046 (_2!32614 (h!61664 (toList!7649 lm!2671))) key!6540))))))

(declare-fun b!4836213 () Bool)

(assert (=> b!4836213 (= e!3022376 (getValue!175 (t!362849 (toList!7649 lm!2671)) key!6540))))

(assert (= (and d!1550390 res!2060752) b!4836214))

(assert (= (and d!1550390 c!823856) b!4836212))

(assert (= (and d!1550390 (not c!823856)) b!4836213))

(assert (=> b!4836214 m!5831386))

(declare-fun m!5831462 () Bool)

(assert (=> b!4836212 m!5831462))

(assert (=> b!4836212 m!5831462))

(declare-fun m!5831466 () Bool)

(assert (=> b!4836212 m!5831466))

(declare-fun m!5831468 () Bool)

(assert (=> b!4836213 m!5831468))

(assert (=> b!4836148 d!1550390))

(declare-fun bs!1167490 () Bool)

(declare-fun d!1550394 () Bool)

(assert (= bs!1167490 (and d!1550394 start!502842)))

(declare-fun lambda!239487 () Int)

(assert (=> bs!1167490 (= lambda!239487 lambda!239472)))

(declare-fun bs!1167491 () Bool)

(assert (= bs!1167491 (and d!1550394 d!1550376)))

(assert (=> bs!1167491 (not (= lambda!239487 lambda!239478))))

(declare-fun bs!1167492 () Bool)

(assert (= bs!1167492 (and d!1550394 d!1550384)))

(assert (=> bs!1167492 (= lambda!239487 lambda!239481)))

(declare-fun lt!1981716 () ListMap!7007)

(declare-fun invariantList!1851 (List!55352) Bool)

(assert (=> d!1550394 (invariantList!1851 (toList!7650 lt!1981716))))

(declare-fun e!3022390 () ListMap!7007)

(assert (=> d!1550394 (= lt!1981716 e!3022390)))

(declare-fun c!823859 () Bool)

(assert (=> d!1550394 (= c!823859 (is-Cons!55229 (t!362849 (toList!7649 lm!2671))))))

(assert (=> d!1550394 (forall!12761 (t!362849 (toList!7649 lm!2671)) lambda!239487)))

(assert (=> d!1550394 (= (extractMap!2723 (t!362849 (toList!7649 lm!2671))) lt!1981716)))

(declare-fun b!4836229 () Bool)

(declare-fun addToMapMapFromBucket!1864 (List!55352 ListMap!7007) ListMap!7007)

(assert (=> b!4836229 (= e!3022390 (addToMapMapFromBucket!1864 (_2!32614 (h!61664 (t!362849 (toList!7649 lm!2671)))) (extractMap!2723 (t!362849 (t!362849 (toList!7649 lm!2671))))))))

(declare-fun b!4836230 () Bool)

(assert (=> b!4836230 (= e!3022390 (ListMap!7008 Nil!55228))))

(assert (= (and d!1550394 c!823859) b!4836229))

(assert (= (and d!1550394 (not c!823859)) b!4836230))

(declare-fun m!5831476 () Bool)

(assert (=> d!1550394 m!5831476))

(declare-fun m!5831478 () Bool)

(assert (=> d!1550394 m!5831478))

(declare-fun m!5831480 () Bool)

(assert (=> b!4836229 m!5831480))

(assert (=> b!4836229 m!5831480))

(declare-fun m!5831482 () Bool)

(assert (=> b!4836229 m!5831482))

(assert (=> b!4836148 d!1550394))

(declare-fun d!1550400 () Bool)

(declare-fun lt!1981717 () Bool)

(assert (=> d!1550400 (= lt!1981717 (set.member lt!1981687 (content!9844 (_2!32614 (head!10369 (toList!7649 lm!2671))))))))

(declare-fun e!3022393 () Bool)

(assert (=> d!1550400 (= lt!1981717 e!3022393)))

(declare-fun res!2060765 () Bool)

(assert (=> d!1550400 (=> (not res!2060765) (not e!3022393))))

(assert (=> d!1550400 (= res!2060765 (is-Cons!55228 (_2!32614 (head!10369 (toList!7649 lm!2671)))))))

(assert (=> d!1550400 (= (contains!19032 (_2!32614 (head!10369 (toList!7649 lm!2671))) lt!1981687) lt!1981717)))

(declare-fun b!4836233 () Bool)

(declare-fun e!3022394 () Bool)

(assert (=> b!4836233 (= e!3022393 e!3022394)))

(declare-fun res!2060766 () Bool)

(assert (=> b!4836233 (=> res!2060766 e!3022394)))

(assert (=> b!4836233 (= res!2060766 (= (h!61663 (_2!32614 (head!10369 (toList!7649 lm!2671)))) lt!1981687))))

(declare-fun b!4836234 () Bool)

(assert (=> b!4836234 (= e!3022394 (contains!19032 (t!362848 (_2!32614 (head!10369 (toList!7649 lm!2671)))) lt!1981687))))

(assert (= (and d!1550400 res!2060765) b!4836233))

(assert (= (and b!4836233 (not res!2060766)) b!4836234))

(declare-fun m!5831484 () Bool)

(assert (=> d!1550400 m!5831484))

(declare-fun m!5831486 () Bool)

(assert (=> d!1550400 m!5831486))

(declare-fun m!5831488 () Bool)

(assert (=> b!4836234 m!5831488))

(assert (=> b!4836148 d!1550400))

(declare-fun b!4836239 () Bool)

(declare-fun e!3022397 () Bool)

(declare-fun tp!1363457 () Bool)

(declare-fun tp!1363458 () Bool)

(assert (=> b!4836239 (= e!3022397 (and tp!1363457 tp!1363458))))

(assert (=> b!4836149 (= tp!1363449 e!3022397)))

(assert (= (and b!4836149 (is-Cons!55229 (toList!7649 lm!2671))) b!4836239))

(declare-fun b_lambda!191045 () Bool)

(assert (= b_lambda!191043 (or start!502842 b_lambda!191045)))

(declare-fun bs!1167493 () Bool)

(declare-fun d!1550404 () Bool)

(assert (= bs!1167493 (and d!1550404 start!502842)))

(assert (=> bs!1167493 (= (dynLambda!22262 lambda!239472 (h!61664 (toList!7649 lm!2671))) (noDuplicateKeys!2514 (_2!32614 (h!61664 (toList!7649 lm!2671)))))))

(assert (=> bs!1167493 m!5831394))

(assert (=> b!4836184 d!1550404))

(push 1)

(assert tp_is_empty!34821)

(assert (not b!4836229))

(assert (not b!4836199))

(assert (not b!4836205))

(assert (not b!4836185))

(assert (not b!4836193))

(assert (not bs!1167493))

(assert (not d!1550378))

(assert (not b!4836212))

(assert (not b!4836239))

(assert (not d!1550384))

(assert (not d!1550394))

(assert (not d!1550400))

(assert (not b!4836204))

(assert (not d!1550376))

(assert (not b!4836179))

(assert (not d!1550374))

(assert (not b_lambda!191045))

(assert (not b!4836214))

(assert (not b!4836177))

(assert (not b!4836234))

(assert (not b!4836213))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

