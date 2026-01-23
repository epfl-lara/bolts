; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!481658 () Bool)

(assert start!481658)

(declare-fun b!4728192 () Bool)

(declare-fun e!2948994 () Bool)

(declare-fun e!2948998 () Bool)

(assert (=> b!4728192 (= e!2948994 e!2948998)))

(declare-fun res!2001284 () Bool)

(assert (=> b!4728192 (=> res!2001284 e!2948998)))

(declare-datatypes ((K!14223 0))(
  ( (K!14224 (val!19649 Int)) )
))
(declare-datatypes ((V!14469 0))(
  ( (V!14470 (val!19650 Int)) )
))
(declare-datatypes ((tuple2!54510 0))(
  ( (tuple2!54511 (_1!30549 K!14223) (_2!30549 V!14469)) )
))
(declare-datatypes ((List!52994 0))(
  ( (Nil!52870) (Cons!52870 (h!59227 tuple2!54510) (t!360270 List!52994)) )
))
(declare-fun oldBucket!34 () List!52994)

(declare-fun key!4653 () K!14223)

(declare-fun containsKey!3396 (List!52994 K!14223) Bool)

(assert (=> b!4728192 (= res!2001284 (not (containsKey!3396 (t!360270 oldBucket!34) key!4653)))))

(assert (=> b!4728192 (containsKey!3396 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6398 0))(
  ( (HashableExt!6397 (__x!32101 Int)) )
))
(declare-fun hashF!1323 () Hashable!6398)

(declare-datatypes ((Unit!131205 0))(
  ( (Unit!131206) )
))
(declare-fun lt!1892374 () Unit!131205)

(declare-fun lemmaGetPairDefinedThenContainsKey!313 (List!52994 K!14223 Hashable!6398) Unit!131205)

(assert (=> b!4728192 (= lt!1892374 (lemmaGetPairDefinedThenContainsKey!313 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1892369 () List!52994)

(declare-datatypes ((Option!12382 0))(
  ( (None!12381) (Some!12381 (v!46982 tuple2!54510)) )
))
(declare-fun isDefined!9636 (Option!12382) Bool)

(declare-fun getPair!569 (List!52994 K!14223) Option!12382)

(assert (=> b!4728192 (isDefined!9636 (getPair!569 lt!1892369 key!4653))))

(declare-fun lt!1892370 () Unit!131205)

(declare-datatypes ((tuple2!54512 0))(
  ( (tuple2!54513 (_1!30550 (_ BitVec 64)) (_2!30550 List!52994)) )
))
(declare-datatypes ((List!52995 0))(
  ( (Nil!52871) (Cons!52871 (h!59228 tuple2!54512) (t!360271 List!52995)) )
))
(declare-datatypes ((ListLongMap!4477 0))(
  ( (ListLongMap!4478 (toList!5947 List!52995)) )
))
(declare-fun lm!2023 () ListLongMap!4477)

(declare-fun lt!1892367 () tuple2!54512)

(declare-fun lambda!216641 () Int)

(declare-fun forallContained!3661 (List!52995 Int tuple2!54512) Unit!131205)

(assert (=> b!4728192 (= lt!1892370 (forallContained!3661 (toList!5947 lm!2023) lambda!216641 lt!1892367))))

(declare-fun contains!16225 (List!52995 tuple2!54512) Bool)

(assert (=> b!4728192 (contains!16225 (toList!5947 lm!2023) lt!1892367)))

(declare-fun lt!1892372 () (_ BitVec 64))

(assert (=> b!4728192 (= lt!1892367 (tuple2!54513 lt!1892372 lt!1892369))))

(declare-fun lt!1892366 () Unit!131205)

(declare-fun lemmaGetValueImpliesTupleContained!374 (ListLongMap!4477 (_ BitVec 64) List!52994) Unit!131205)

(assert (=> b!4728192 (= lt!1892366 (lemmaGetValueImpliesTupleContained!374 lm!2023 lt!1892372 lt!1892369))))

(declare-fun apply!12454 (ListLongMap!4477 (_ BitVec 64)) List!52994)

(assert (=> b!4728192 (= lt!1892369 (apply!12454 lm!2023 lt!1892372))))

(declare-fun contains!16226 (ListLongMap!4477 (_ BitVec 64)) Bool)

(assert (=> b!4728192 (contains!16226 lm!2023 lt!1892372)))

(declare-fun lt!1892373 () Unit!131205)

(declare-fun lemmaInGenMapThenLongMapContainsHash!775 (ListLongMap!4477 K!14223 Hashable!6398) Unit!131205)

(assert (=> b!4728192 (= lt!1892373 (lemmaInGenMapThenLongMapContainsHash!775 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1892371 () Unit!131205)

(declare-fun lemmaInGenMapThenGetPairDefined!365 (ListLongMap!4477 K!14223 Hashable!6398) Unit!131205)

(assert (=> b!4728192 (= lt!1892371 (lemmaInGenMapThenGetPairDefined!365 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4728193 () Bool)

(declare-fun res!2001292 () Bool)

(declare-fun e!2948997 () Bool)

(assert (=> b!4728193 (=> res!2001292 e!2948997)))

(declare-fun lt!1892368 () List!52994)

(declare-fun removePairForKey!1624 (List!52994 K!14223) List!52994)

(assert (=> b!4728193 (= res!2001292 (not (= (removePairForKey!1624 (t!360270 oldBucket!34) key!4653) lt!1892368)))))

(declare-fun b!4728194 () Bool)

(assert (=> b!4728194 (= e!2948998 e!2948997)))

(declare-fun res!2001293 () Bool)

(assert (=> b!4728194 (=> res!2001293 e!2948997)))

(declare-fun tail!9034 (List!52994) List!52994)

(assert (=> b!4728194 (= res!2001293 (not (= (removePairForKey!1624 (tail!9034 oldBucket!34) key!4653) lt!1892368)))))

(declare-fun newBucket!218 () List!52994)

(assert (=> b!4728194 (= lt!1892368 (tail!9034 newBucket!218))))

(declare-fun b!4728195 () Bool)

(declare-fun e!2948999 () Bool)

(declare-datatypes ((ListMap!5311 0))(
  ( (ListMap!5312 (toList!5948 List!52994)) )
))
(declare-fun lt!1892375 () ListMap!5311)

(declare-fun addToMapMapFromBucket!1459 (List!52994 ListMap!5311) ListMap!5311)

(declare-fun extractMap!2055 (List!52995) ListMap!5311)

(assert (=> b!4728195 (= e!2948999 (= lt!1892375 (addToMapMapFromBucket!1459 (_2!30550 (h!59228 (toList!5947 lm!2023))) (extractMap!2055 (t!360271 (toList!5947 lm!2023))))))))

(declare-fun b!4728196 () Bool)

(declare-fun res!2001283 () Bool)

(declare-fun e!2949001 () Bool)

(assert (=> b!4728196 (=> (not res!2001283) (not e!2949001))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10269 (List!52995) tuple2!54512)

(assert (=> b!4728196 (= res!2001283 (= (head!10269 (toList!5947 lm!2023)) (tuple2!54513 hash!405 oldBucket!34)))))

(declare-fun res!2001289 () Bool)

(declare-fun e!2949002 () Bool)

(assert (=> start!481658 (=> (not res!2001289) (not e!2949002))))

(declare-fun forall!11621 (List!52995 Int) Bool)

(assert (=> start!481658 (= res!2001289 (forall!11621 (toList!5947 lm!2023) lambda!216641))))

(assert (=> start!481658 e!2949002))

(declare-fun e!2948993 () Bool)

(declare-fun inv!68098 (ListLongMap!4477) Bool)

(assert (=> start!481658 (and (inv!68098 lm!2023) e!2948993)))

(declare-fun tp_is_empty!31409 () Bool)

(assert (=> start!481658 tp_is_empty!31409))

(declare-fun e!2948995 () Bool)

(assert (=> start!481658 e!2948995))

(assert (=> start!481658 true))

(declare-fun e!2949000 () Bool)

(assert (=> start!481658 e!2949000))

(declare-fun tp!1348681 () Bool)

(declare-fun b!4728197 () Bool)

(declare-fun tp_is_empty!31411 () Bool)

(assert (=> b!4728197 (= e!2948995 (and tp_is_empty!31409 tp_is_empty!31411 tp!1348681))))

(declare-fun b!4728198 () Bool)

(declare-fun tp!1348680 () Bool)

(assert (=> b!4728198 (= e!2949000 (and tp_is_empty!31409 tp_is_empty!31411 tp!1348680))))

(declare-fun b!4728199 () Bool)

(declare-fun e!2948996 () Bool)

(assert (=> b!4728199 (= e!2949002 e!2948996)))

(declare-fun res!2001288 () Bool)

(assert (=> b!4728199 (=> (not res!2001288) (not e!2948996))))

(declare-fun contains!16227 (ListMap!5311 K!14223) Bool)

(assert (=> b!4728199 (= res!2001288 (contains!16227 lt!1892375 key!4653))))

(assert (=> b!4728199 (= lt!1892375 (extractMap!2055 (toList!5947 lm!2023)))))

(declare-fun b!4728200 () Bool)

(declare-fun res!2001296 () Bool)

(assert (=> b!4728200 (=> (not res!2001296) (not e!2949001))))

(assert (=> b!4728200 (= res!2001296 (is-Cons!52871 (toList!5947 lm!2023)))))

(declare-fun b!4728201 () Bool)

(declare-fun res!2001282 () Bool)

(assert (=> b!4728201 (=> (not res!2001282) (not e!2949001))))

(declare-fun allKeysSameHashInMap!1943 (ListLongMap!4477 Hashable!6398) Bool)

(assert (=> b!4728201 (= res!2001282 (allKeysSameHashInMap!1943 lm!2023 hashF!1323))))

(declare-fun b!4728202 () Bool)

(declare-fun res!2001291 () Bool)

(assert (=> b!4728202 (=> (not res!2001291) (not e!2949002))))

(declare-fun allKeysSameHash!1855 (List!52994 (_ BitVec 64) Hashable!6398) Bool)

(assert (=> b!4728202 (= res!2001291 (allKeysSameHash!1855 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4728203 () Bool)

(assert (=> b!4728203 (= e!2948996 e!2949001)))

(declare-fun res!2001294 () Bool)

(assert (=> b!4728203 (=> (not res!2001294) (not e!2949001))))

(assert (=> b!4728203 (= res!2001294 (= lt!1892372 hash!405))))

(declare-fun hash!4409 (Hashable!6398 K!14223) (_ BitVec 64))

(assert (=> b!4728203 (= lt!1892372 (hash!4409 hashF!1323 key!4653))))

(declare-fun b!4728204 () Bool)

(assert (=> b!4728204 (= e!2949001 (not e!2948994))))

(declare-fun res!2001285 () Bool)

(assert (=> b!4728204 (=> res!2001285 e!2948994)))

(assert (=> b!4728204 (= res!2001285 (or (and (is-Cons!52870 oldBucket!34) (= (_1!30549 (h!59227 oldBucket!34)) key!4653)) (not (is-Cons!52870 oldBucket!34)) (= (_1!30549 (h!59227 oldBucket!34)) key!4653)))))

(assert (=> b!4728204 e!2948999))

(declare-fun res!2001295 () Bool)

(assert (=> b!4728204 (=> (not res!2001295) (not e!2948999))))

(declare-fun tail!9035 (ListLongMap!4477) ListLongMap!4477)

(assert (=> b!4728204 (= res!2001295 (= (t!360271 (toList!5947 lm!2023)) (toList!5947 (tail!9035 lm!2023))))))

(declare-fun b!4728205 () Bool)

(declare-fun res!2001286 () Bool)

(assert (=> b!4728205 (=> (not res!2001286) (not e!2949001))))

(assert (=> b!4728205 (= res!2001286 (allKeysSameHash!1855 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4728206 () Bool)

(assert (=> b!4728206 (= e!2948997 (forall!11621 (Cons!52871 (tuple2!54513 hash!405 (t!360270 oldBucket!34)) (t!360271 (toList!5947 lm!2023))) lambda!216641))))

(declare-fun b!4728207 () Bool)

(declare-fun res!2001287 () Bool)

(assert (=> b!4728207 (=> (not res!2001287) (not e!2949002))))

(assert (=> b!4728207 (= res!2001287 (= (removePairForKey!1624 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4728208 () Bool)

(declare-fun tp!1348682 () Bool)

(assert (=> b!4728208 (= e!2948993 tp!1348682)))

(declare-fun b!4728209 () Bool)

(declare-fun res!2001290 () Bool)

(assert (=> b!4728209 (=> (not res!2001290) (not e!2949002))))

(declare-fun noDuplicateKeys!2029 (List!52994) Bool)

(assert (=> b!4728209 (= res!2001290 (noDuplicateKeys!2029 newBucket!218))))

(declare-fun b!4728210 () Bool)

(declare-fun res!2001297 () Bool)

(assert (=> b!4728210 (=> (not res!2001297) (not e!2949002))))

(assert (=> b!4728210 (= res!2001297 (noDuplicateKeys!2029 oldBucket!34))))

(assert (= (and start!481658 res!2001289) b!4728210))

(assert (= (and b!4728210 res!2001297) b!4728209))

(assert (= (and b!4728209 res!2001290) b!4728207))

(assert (= (and b!4728207 res!2001287) b!4728202))

(assert (= (and b!4728202 res!2001291) b!4728199))

(assert (= (and b!4728199 res!2001288) b!4728203))

(assert (= (and b!4728203 res!2001294) b!4728205))

(assert (= (and b!4728205 res!2001286) b!4728201))

(assert (= (and b!4728201 res!2001282) b!4728196))

(assert (= (and b!4728196 res!2001283) b!4728200))

(assert (= (and b!4728200 res!2001296) b!4728204))

(assert (= (and b!4728204 res!2001295) b!4728195))

(assert (= (and b!4728204 (not res!2001285)) b!4728192))

(assert (= (and b!4728192 (not res!2001284)) b!4728194))

(assert (= (and b!4728194 (not res!2001293)) b!4728193))

(assert (= (and b!4728193 (not res!2001292)) b!4728206))

(assert (= start!481658 b!4728208))

(assert (= (and start!481658 (is-Cons!52870 oldBucket!34)) b!4728197))

(assert (= (and start!481658 (is-Cons!52870 newBucket!218)) b!4728198))

(declare-fun m!5668735 () Bool)

(assert (=> start!481658 m!5668735))

(declare-fun m!5668737 () Bool)

(assert (=> start!481658 m!5668737))

(declare-fun m!5668739 () Bool)

(assert (=> b!4728202 m!5668739))

(declare-fun m!5668741 () Bool)

(assert (=> b!4728195 m!5668741))

(assert (=> b!4728195 m!5668741))

(declare-fun m!5668743 () Bool)

(assert (=> b!4728195 m!5668743))

(declare-fun m!5668745 () Bool)

(assert (=> b!4728204 m!5668745))

(declare-fun m!5668747 () Bool)

(assert (=> b!4728199 m!5668747))

(declare-fun m!5668749 () Bool)

(assert (=> b!4728199 m!5668749))

(declare-fun m!5668751 () Bool)

(assert (=> b!4728201 m!5668751))

(declare-fun m!5668753 () Bool)

(assert (=> b!4728193 m!5668753))

(declare-fun m!5668755 () Bool)

(assert (=> b!4728209 m!5668755))

(declare-fun m!5668757 () Bool)

(assert (=> b!4728192 m!5668757))

(declare-fun m!5668759 () Bool)

(assert (=> b!4728192 m!5668759))

(declare-fun m!5668761 () Bool)

(assert (=> b!4728192 m!5668761))

(declare-fun m!5668763 () Bool)

(assert (=> b!4728192 m!5668763))

(declare-fun m!5668765 () Bool)

(assert (=> b!4728192 m!5668765))

(declare-fun m!5668767 () Bool)

(assert (=> b!4728192 m!5668767))

(declare-fun m!5668769 () Bool)

(assert (=> b!4728192 m!5668769))

(declare-fun m!5668771 () Bool)

(assert (=> b!4728192 m!5668771))

(declare-fun m!5668773 () Bool)

(assert (=> b!4728192 m!5668773))

(declare-fun m!5668775 () Bool)

(assert (=> b!4728192 m!5668775))

(declare-fun m!5668777 () Bool)

(assert (=> b!4728192 m!5668777))

(assert (=> b!4728192 m!5668769))

(declare-fun m!5668779 () Bool)

(assert (=> b!4728192 m!5668779))

(declare-fun m!5668781 () Bool)

(assert (=> b!4728194 m!5668781))

(assert (=> b!4728194 m!5668781))

(declare-fun m!5668783 () Bool)

(assert (=> b!4728194 m!5668783))

(declare-fun m!5668785 () Bool)

(assert (=> b!4728194 m!5668785))

(declare-fun m!5668787 () Bool)

(assert (=> b!4728210 m!5668787))

(declare-fun m!5668789 () Bool)

(assert (=> b!4728207 m!5668789))

(declare-fun m!5668791 () Bool)

(assert (=> b!4728203 m!5668791))

(declare-fun m!5668793 () Bool)

(assert (=> b!4728196 m!5668793))

(declare-fun m!5668795 () Bool)

(assert (=> b!4728205 m!5668795))

(declare-fun m!5668797 () Bool)

(assert (=> b!4728206 m!5668797))

(push 1)

(assert (not b!4728198))

(assert (not b!4728193))

(assert (not b!4728204))

(assert (not b!4728199))

(assert (not b!4728209))

(assert (not b!4728207))

(assert (not start!481658))

(assert (not b!4728210))

(assert (not b!4728197))

(assert (not b!4728196))

(assert (not b!4728208))

(assert (not b!4728203))

(assert (not b!4728201))

(assert (not b!4728192))

(assert (not b!4728205))

(assert (not b!4728194))

(assert (not b!4728195))

(assert tp_is_empty!31411)

(assert tp_is_empty!31409)

(assert (not b!4728202))

(assert (not b!4728206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1506839 () Bool)

(declare-fun res!2001350 () Bool)

(declare-fun e!2949037 () Bool)

(assert (=> d!1506839 (=> res!2001350 e!2949037)))

(assert (=> d!1506839 (= res!2001350 (is-Nil!52871 (toList!5947 lm!2023)))))

(assert (=> d!1506839 (= (forall!11621 (toList!5947 lm!2023) lambda!216641) e!2949037)))

(declare-fun b!4728272 () Bool)

(declare-fun e!2949038 () Bool)

(assert (=> b!4728272 (= e!2949037 e!2949038)))

(declare-fun res!2001351 () Bool)

(assert (=> b!4728272 (=> (not res!2001351) (not e!2949038))))

(declare-fun dynLambda!21837 (Int tuple2!54512) Bool)

(assert (=> b!4728272 (= res!2001351 (dynLambda!21837 lambda!216641 (h!59228 (toList!5947 lm!2023))))))

(declare-fun b!4728273 () Bool)

(assert (=> b!4728273 (= e!2949038 (forall!11621 (t!360271 (toList!5947 lm!2023)) lambda!216641))))

(assert (= (and d!1506839 (not res!2001350)) b!4728272))

(assert (= (and b!4728272 res!2001351) b!4728273))

(declare-fun b_lambda!179933 () Bool)

(assert (=> (not b_lambda!179933) (not b!4728272)))

(declare-fun m!5668863 () Bool)

(assert (=> b!4728272 m!5668863))

(declare-fun m!5668865 () Bool)

(assert (=> b!4728273 m!5668865))

(assert (=> start!481658 d!1506839))

(declare-fun d!1506841 () Bool)

(declare-fun isStrictlySorted!759 (List!52995) Bool)

(assert (=> d!1506841 (= (inv!68098 lm!2023) (isStrictlySorted!759 (toList!5947 lm!2023)))))

(declare-fun bs!1118619 () Bool)

(assert (= bs!1118619 d!1506841))

(declare-fun m!5668867 () Bool)

(assert (=> bs!1118619 m!5668867))

(assert (=> start!481658 d!1506841))

(declare-fun b!4728283 () Bool)

(declare-fun e!2949043 () List!52994)

(declare-fun e!2949044 () List!52994)

(assert (=> b!4728283 (= e!2949043 e!2949044)))

(declare-fun c!807487 () Bool)

(assert (=> b!4728283 (= c!807487 (is-Cons!52870 oldBucket!34))))

(declare-fun b!4728285 () Bool)

(assert (=> b!4728285 (= e!2949044 Nil!52870)))

(declare-fun b!4728282 () Bool)

(assert (=> b!4728282 (= e!2949043 (t!360270 oldBucket!34))))

(declare-fun b!4728284 () Bool)

(assert (=> b!4728284 (= e!2949044 (Cons!52870 (h!59227 oldBucket!34) (removePairForKey!1624 (t!360270 oldBucket!34) key!4653)))))

(declare-fun d!1506843 () Bool)

(declare-fun lt!1892408 () List!52994)

(assert (=> d!1506843 (not (containsKey!3396 lt!1892408 key!4653))))

(assert (=> d!1506843 (= lt!1892408 e!2949043)))

(declare-fun c!807486 () Bool)

(assert (=> d!1506843 (= c!807486 (and (is-Cons!52870 oldBucket!34) (= (_1!30549 (h!59227 oldBucket!34)) key!4653)))))

(assert (=> d!1506843 (noDuplicateKeys!2029 oldBucket!34)))

(assert (=> d!1506843 (= (removePairForKey!1624 oldBucket!34 key!4653) lt!1892408)))

(assert (= (and d!1506843 c!807486) b!4728282))

(assert (= (and d!1506843 (not c!807486)) b!4728283))

(assert (= (and b!4728283 c!807487) b!4728284))

(assert (= (and b!4728283 (not c!807487)) b!4728285))

(assert (=> b!4728284 m!5668753))

(declare-fun m!5668869 () Bool)

(assert (=> d!1506843 m!5668869))

(assert (=> d!1506843 m!5668787))

(assert (=> b!4728207 d!1506843))

(declare-fun d!1506845 () Bool)

(declare-fun res!2001356 () Bool)

(declare-fun e!2949049 () Bool)

(assert (=> d!1506845 (=> res!2001356 e!2949049)))

(assert (=> d!1506845 (= res!2001356 (not (is-Cons!52870 newBucket!218)))))

(assert (=> d!1506845 (= (noDuplicateKeys!2029 newBucket!218) e!2949049)))

(declare-fun b!4728290 () Bool)

(declare-fun e!2949050 () Bool)

(assert (=> b!4728290 (= e!2949049 e!2949050)))

(declare-fun res!2001357 () Bool)

(assert (=> b!4728290 (=> (not res!2001357) (not e!2949050))))

(assert (=> b!4728290 (= res!2001357 (not (containsKey!3396 (t!360270 newBucket!218) (_1!30549 (h!59227 newBucket!218)))))))

(declare-fun b!4728291 () Bool)

(assert (=> b!4728291 (= e!2949050 (noDuplicateKeys!2029 (t!360270 newBucket!218)))))

(assert (= (and d!1506845 (not res!2001356)) b!4728290))

(assert (= (and b!4728290 res!2001357) b!4728291))

(declare-fun m!5668871 () Bool)

(assert (=> b!4728290 m!5668871))

(declare-fun m!5668873 () Bool)

(assert (=> b!4728291 m!5668873))

(assert (=> b!4728209 d!1506845))

(declare-fun d!1506847 () Bool)

(declare-fun res!2001358 () Bool)

(declare-fun e!2949051 () Bool)

(assert (=> d!1506847 (=> res!2001358 e!2949051)))

(assert (=> d!1506847 (= res!2001358 (not (is-Cons!52870 oldBucket!34)))))

(assert (=> d!1506847 (= (noDuplicateKeys!2029 oldBucket!34) e!2949051)))

(declare-fun b!4728292 () Bool)

(declare-fun e!2949052 () Bool)

(assert (=> b!4728292 (= e!2949051 e!2949052)))

(declare-fun res!2001359 () Bool)

(assert (=> b!4728292 (=> (not res!2001359) (not e!2949052))))

(assert (=> b!4728292 (= res!2001359 (not (containsKey!3396 (t!360270 oldBucket!34) (_1!30549 (h!59227 oldBucket!34)))))))

(declare-fun b!4728293 () Bool)

(assert (=> b!4728293 (= e!2949052 (noDuplicateKeys!2029 (t!360270 oldBucket!34)))))

(assert (= (and d!1506847 (not res!2001358)) b!4728292))

(assert (= (and b!4728292 res!2001359) b!4728293))

(declare-fun m!5668875 () Bool)

(assert (=> b!4728292 m!5668875))

(declare-fun m!5668877 () Bool)

(assert (=> b!4728293 m!5668877))

(assert (=> b!4728210 d!1506847))

(declare-fun b!4728312 () Bool)

(declare-fun e!2949069 () Bool)

(declare-datatypes ((List!52998 0))(
  ( (Nil!52874) (Cons!52874 (h!59232 K!14223) (t!360274 List!52998)) )
))
(declare-fun contains!16231 (List!52998 K!14223) Bool)

(declare-fun keys!18999 (ListMap!5311) List!52998)

(assert (=> b!4728312 (= e!2949069 (contains!16231 (keys!18999 lt!1892375) key!4653))))

(declare-fun b!4728313 () Bool)

(declare-fun e!2949070 () Unit!131205)

(declare-fun lt!1892429 () Unit!131205)

(assert (=> b!4728313 (= e!2949070 lt!1892429)))

(declare-fun lt!1892427 () Unit!131205)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1863 (List!52994 K!14223) Unit!131205)

(assert (=> b!4728313 (= lt!1892427 (lemmaContainsKeyImpliesGetValueByKeyDefined!1863 (toList!5948 lt!1892375) key!4653))))

(declare-datatypes ((Option!12384 0))(
  ( (None!12383) (Some!12383 (v!46988 V!14469)) )
))
(declare-fun isDefined!9638 (Option!12384) Bool)

(declare-fun getValueByKey!1972 (List!52994 K!14223) Option!12384)

(assert (=> b!4728313 (isDefined!9638 (getValueByKey!1972 (toList!5948 lt!1892375) key!4653))))

(declare-fun lt!1892426 () Unit!131205)

(assert (=> b!4728313 (= lt!1892426 lt!1892427)))

(declare-fun lemmaInListThenGetKeysListContains!955 (List!52994 K!14223) Unit!131205)

(assert (=> b!4728313 (= lt!1892429 (lemmaInListThenGetKeysListContains!955 (toList!5948 lt!1892375) key!4653))))

(declare-fun call!330760 () Bool)

(assert (=> b!4728313 call!330760))

(declare-fun b!4728314 () Bool)

(declare-fun e!2949067 () List!52998)

(assert (=> b!4728314 (= e!2949067 (keys!18999 lt!1892375))))

(declare-fun b!4728315 () Bool)

(declare-fun getKeysList!960 (List!52994) List!52998)

(assert (=> b!4728315 (= e!2949067 (getKeysList!960 (toList!5948 lt!1892375)))))

(declare-fun d!1506849 () Bool)

(declare-fun e!2949065 () Bool)

(assert (=> d!1506849 e!2949065))

(declare-fun res!2001367 () Bool)

(assert (=> d!1506849 (=> res!2001367 e!2949065)))

(declare-fun e!2949068 () Bool)

(assert (=> d!1506849 (= res!2001367 e!2949068)))

(declare-fun res!2001366 () Bool)

(assert (=> d!1506849 (=> (not res!2001366) (not e!2949068))))

(declare-fun lt!1892432 () Bool)

(assert (=> d!1506849 (= res!2001366 (not lt!1892432))))

(declare-fun lt!1892428 () Bool)

(assert (=> d!1506849 (= lt!1892432 lt!1892428)))

(declare-fun lt!1892430 () Unit!131205)

(assert (=> d!1506849 (= lt!1892430 e!2949070)))

(declare-fun c!807496 () Bool)

(assert (=> d!1506849 (= c!807496 lt!1892428)))

(declare-fun containsKey!3398 (List!52994 K!14223) Bool)

(assert (=> d!1506849 (= lt!1892428 (containsKey!3398 (toList!5948 lt!1892375) key!4653))))

(assert (=> d!1506849 (= (contains!16227 lt!1892375 key!4653) lt!1892432)))

(declare-fun b!4728316 () Bool)

(declare-fun e!2949066 () Unit!131205)

(assert (=> b!4728316 (= e!2949070 e!2949066)))

(declare-fun c!807495 () Bool)

(assert (=> b!4728316 (= c!807495 call!330760)))

(declare-fun b!4728317 () Bool)

(assert (=> b!4728317 (= e!2949068 (not (contains!16231 (keys!18999 lt!1892375) key!4653)))))

(declare-fun b!4728318 () Bool)

(assert (=> b!4728318 false))

(declare-fun lt!1892425 () Unit!131205)

(declare-fun lt!1892431 () Unit!131205)

(assert (=> b!4728318 (= lt!1892425 lt!1892431)))

(assert (=> b!4728318 (containsKey!3398 (toList!5948 lt!1892375) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!959 (List!52994 K!14223) Unit!131205)

(assert (=> b!4728318 (= lt!1892431 (lemmaInGetKeysListThenContainsKey!959 (toList!5948 lt!1892375) key!4653))))

(declare-fun Unit!131209 () Unit!131205)

(assert (=> b!4728318 (= e!2949066 Unit!131209)))

(declare-fun bm!330755 () Bool)

(assert (=> bm!330755 (= call!330760 (contains!16231 e!2949067 key!4653))))

(declare-fun c!807494 () Bool)

(assert (=> bm!330755 (= c!807494 c!807496)))

(declare-fun b!4728319 () Bool)

(assert (=> b!4728319 (= e!2949065 e!2949069)))

(declare-fun res!2001368 () Bool)

(assert (=> b!4728319 (=> (not res!2001368) (not e!2949069))))

(assert (=> b!4728319 (= res!2001368 (isDefined!9638 (getValueByKey!1972 (toList!5948 lt!1892375) key!4653)))))

(declare-fun b!4728320 () Bool)

(declare-fun Unit!131210 () Unit!131205)

(assert (=> b!4728320 (= e!2949066 Unit!131210)))

(assert (= (and d!1506849 c!807496) b!4728313))

(assert (= (and d!1506849 (not c!807496)) b!4728316))

(assert (= (and b!4728316 c!807495) b!4728318))

(assert (= (and b!4728316 (not c!807495)) b!4728320))

(assert (= (or b!4728313 b!4728316) bm!330755))

(assert (= (and bm!330755 c!807494) b!4728315))

(assert (= (and bm!330755 (not c!807494)) b!4728314))

(assert (= (and d!1506849 res!2001366) b!4728317))

(assert (= (and d!1506849 (not res!2001367)) b!4728319))

(assert (= (and b!4728319 res!2001368) b!4728312))

(declare-fun m!5668879 () Bool)

(assert (=> b!4728312 m!5668879))

(assert (=> b!4728312 m!5668879))

(declare-fun m!5668881 () Bool)

(assert (=> b!4728312 m!5668881))

(declare-fun m!5668883 () Bool)

(assert (=> b!4728319 m!5668883))

(assert (=> b!4728319 m!5668883))

(declare-fun m!5668885 () Bool)

(assert (=> b!4728319 m!5668885))

(declare-fun m!5668887 () Bool)

(assert (=> b!4728318 m!5668887))

(declare-fun m!5668889 () Bool)

(assert (=> b!4728318 m!5668889))

(assert (=> b!4728314 m!5668879))

(declare-fun m!5668891 () Bool)

(assert (=> b!4728315 m!5668891))

(assert (=> d!1506849 m!5668887))

(declare-fun m!5668893 () Bool)

(assert (=> bm!330755 m!5668893))

(assert (=> b!4728317 m!5668879))

(assert (=> b!4728317 m!5668879))

(assert (=> b!4728317 m!5668881))

(declare-fun m!5668895 () Bool)

(assert (=> b!4728313 m!5668895))

(assert (=> b!4728313 m!5668883))

(assert (=> b!4728313 m!5668883))

(assert (=> b!4728313 m!5668885))

(declare-fun m!5668897 () Bool)

(assert (=> b!4728313 m!5668897))

(assert (=> b!4728199 d!1506849))

(declare-fun bs!1118620 () Bool)

(declare-fun d!1506851 () Bool)

(assert (= bs!1118620 (and d!1506851 start!481658)))

(declare-fun lambda!216651 () Int)

(assert (=> bs!1118620 (= lambda!216651 lambda!216641)))

(declare-fun lt!1892435 () ListMap!5311)

(declare-fun invariantList!1520 (List!52994) Bool)

(assert (=> d!1506851 (invariantList!1520 (toList!5948 lt!1892435))))

(declare-fun e!2949079 () ListMap!5311)

(assert (=> d!1506851 (= lt!1892435 e!2949079)))

(declare-fun c!807499 () Bool)

(assert (=> d!1506851 (= c!807499 (is-Cons!52871 (toList!5947 lm!2023)))))

(assert (=> d!1506851 (forall!11621 (toList!5947 lm!2023) lambda!216651)))

(assert (=> d!1506851 (= (extractMap!2055 (toList!5947 lm!2023)) lt!1892435)))

(declare-fun b!4728331 () Bool)

(assert (=> b!4728331 (= e!2949079 (addToMapMapFromBucket!1459 (_2!30550 (h!59228 (toList!5947 lm!2023))) (extractMap!2055 (t!360271 (toList!5947 lm!2023)))))))

(declare-fun b!4728332 () Bool)

(assert (=> b!4728332 (= e!2949079 (ListMap!5312 Nil!52870))))

(assert (= (and d!1506851 c!807499) b!4728331))

(assert (= (and d!1506851 (not c!807499)) b!4728332))

(declare-fun m!5668903 () Bool)

(assert (=> d!1506851 m!5668903))

(declare-fun m!5668905 () Bool)

(assert (=> d!1506851 m!5668905))

(assert (=> b!4728331 m!5668741))

(assert (=> b!4728331 m!5668741))

(assert (=> b!4728331 m!5668743))

(assert (=> b!4728199 d!1506851))

(declare-fun bs!1118621 () Bool)

(declare-fun d!1506859 () Bool)

(assert (= bs!1118621 (and d!1506859 start!481658)))

(declare-fun lambda!216655 () Int)

(assert (=> bs!1118621 (not (= lambda!216655 lambda!216641))))

(declare-fun bs!1118622 () Bool)

(assert (= bs!1118622 (and d!1506859 d!1506851)))

(assert (=> bs!1118622 (not (= lambda!216655 lambda!216651))))

(assert (=> d!1506859 true))

(assert (=> d!1506859 (= (allKeysSameHashInMap!1943 lm!2023 hashF!1323) (forall!11621 (toList!5947 lm!2023) lambda!216655))))

(declare-fun bs!1118623 () Bool)

(assert (= bs!1118623 d!1506859))

(declare-fun m!5668907 () Bool)

(assert (=> bs!1118623 m!5668907))

(assert (=> b!4728201 d!1506859))

(declare-fun d!1506861 () Bool)

(declare-fun isEmpty!29193 (Option!12382) Bool)

(assert (=> d!1506861 (= (isDefined!9636 (getPair!569 lt!1892369 key!4653)) (not (isEmpty!29193 (getPair!569 lt!1892369 key!4653))))))

(declare-fun bs!1118624 () Bool)

(assert (= bs!1118624 d!1506861))

(assert (=> bs!1118624 m!5668769))

(declare-fun m!5668909 () Bool)

(assert (=> bs!1118624 m!5668909))

(assert (=> b!4728192 d!1506861))

(declare-fun d!1506863 () Bool)

(assert (=> d!1506863 (dynLambda!21837 lambda!216641 lt!1892367)))

(declare-fun lt!1892438 () Unit!131205)

(declare-fun choose!33414 (List!52995 Int tuple2!54512) Unit!131205)

(assert (=> d!1506863 (= lt!1892438 (choose!33414 (toList!5947 lm!2023) lambda!216641 lt!1892367))))

(declare-fun e!2949082 () Bool)

(assert (=> d!1506863 e!2949082))

(declare-fun res!2001377 () Bool)

(assert (=> d!1506863 (=> (not res!2001377) (not e!2949082))))

(assert (=> d!1506863 (= res!2001377 (forall!11621 (toList!5947 lm!2023) lambda!216641))))

(assert (=> d!1506863 (= (forallContained!3661 (toList!5947 lm!2023) lambda!216641 lt!1892367) lt!1892438)))

(declare-fun b!4728339 () Bool)

(assert (=> b!4728339 (= e!2949082 (contains!16225 (toList!5947 lm!2023) lt!1892367))))

(assert (= (and d!1506863 res!2001377) b!4728339))

(declare-fun b_lambda!179935 () Bool)

(assert (=> (not b_lambda!179935) (not d!1506863)))

(declare-fun m!5668913 () Bool)

(assert (=> d!1506863 m!5668913))

(declare-fun m!5668915 () Bool)

(assert (=> d!1506863 m!5668915))

(assert (=> d!1506863 m!5668735))

(assert (=> b!4728339 m!5668763))

(assert (=> b!4728192 d!1506863))

(declare-fun d!1506867 () Bool)

(declare-datatypes ((Option!12385 0))(
  ( (None!12384) (Some!12384 (v!46989 List!52994)) )
))
(declare-fun get!17739 (Option!12385) List!52994)

(declare-fun getValueByKey!1973 (List!52995 (_ BitVec 64)) Option!12385)

(assert (=> d!1506867 (= (apply!12454 lm!2023 lt!1892372) (get!17739 (getValueByKey!1973 (toList!5947 lm!2023) lt!1892372)))))

(declare-fun bs!1118627 () Bool)

(assert (= bs!1118627 d!1506867))

(declare-fun m!5668917 () Bool)

(assert (=> bs!1118627 m!5668917))

(assert (=> bs!1118627 m!5668917))

(declare-fun m!5668919 () Bool)

(assert (=> bs!1118627 m!5668919))

(assert (=> b!4728192 d!1506867))

(declare-fun bs!1118628 () Bool)

(declare-fun d!1506869 () Bool)

(assert (= bs!1118628 (and d!1506869 start!481658)))

(declare-fun lambda!216660 () Int)

(assert (=> bs!1118628 (= lambda!216660 lambda!216641)))

(declare-fun bs!1118629 () Bool)

(assert (= bs!1118629 (and d!1506869 d!1506851)))

(assert (=> bs!1118629 (= lambda!216660 lambda!216651)))

(declare-fun bs!1118630 () Bool)

(assert (= bs!1118630 (and d!1506869 d!1506859)))

(assert (=> bs!1118630 (not (= lambda!216660 lambda!216655))))

(assert (=> d!1506869 (contains!16226 lm!2023 (hash!4409 hashF!1323 key!4653))))

(declare-fun lt!1892443 () Unit!131205)

(declare-fun choose!33415 (ListLongMap!4477 K!14223 Hashable!6398) Unit!131205)

(assert (=> d!1506869 (= lt!1892443 (choose!33415 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1506869 (forall!11621 (toList!5947 lm!2023) lambda!216660)))

(assert (=> d!1506869 (= (lemmaInGenMapThenLongMapContainsHash!775 lm!2023 key!4653 hashF!1323) lt!1892443)))

(declare-fun bs!1118631 () Bool)

(assert (= bs!1118631 d!1506869))

(assert (=> bs!1118631 m!5668791))

(assert (=> bs!1118631 m!5668791))

(declare-fun m!5668921 () Bool)

(assert (=> bs!1118631 m!5668921))

(declare-fun m!5668923 () Bool)

(assert (=> bs!1118631 m!5668923))

(declare-fun m!5668925 () Bool)

(assert (=> bs!1118631 m!5668925))

(assert (=> b!4728192 d!1506869))

(declare-fun b!4728368 () Bool)

(declare-fun res!2001388 () Bool)

(declare-fun e!2949100 () Bool)

(assert (=> b!4728368 (=> (not res!2001388) (not e!2949100))))

(declare-fun lt!1892447 () Option!12382)

(declare-fun get!17740 (Option!12382) tuple2!54510)

(assert (=> b!4728368 (= res!2001388 (= (_1!30549 (get!17740 lt!1892447)) key!4653))))

(declare-fun b!4728369 () Bool)

(declare-fun e!2949101 () Bool)

(assert (=> b!4728369 (= e!2949101 e!2949100)))

(declare-fun res!2001387 () Bool)

(assert (=> b!4728369 (=> (not res!2001387) (not e!2949100))))

(assert (=> b!4728369 (= res!2001387 (isDefined!9636 lt!1892447))))

(declare-fun b!4728370 () Bool)

(declare-fun e!2949102 () Option!12382)

(assert (=> b!4728370 (= e!2949102 (getPair!569 (t!360270 lt!1892369) key!4653))))

(declare-fun b!4728371 () Bool)

(declare-fun e!2949103 () Option!12382)

(assert (=> b!4728371 (= e!2949103 e!2949102)))

(declare-fun c!807511 () Bool)

(assert (=> b!4728371 (= c!807511 (is-Cons!52870 lt!1892369))))

(declare-fun b!4728372 () Bool)

(assert (=> b!4728372 (= e!2949103 (Some!12381 (h!59227 lt!1892369)))))

(declare-fun b!4728373 () Bool)

(declare-fun contains!16232 (List!52994 tuple2!54510) Bool)

(assert (=> b!4728373 (= e!2949100 (contains!16232 lt!1892369 (get!17740 lt!1892447)))))

(declare-fun b!4728375 () Bool)

(declare-fun e!2949099 () Bool)

(assert (=> b!4728375 (= e!2949099 (not (containsKey!3396 lt!1892369 key!4653)))))

(declare-fun b!4728374 () Bool)

(assert (=> b!4728374 (= e!2949102 None!12381)))

(declare-fun d!1506871 () Bool)

(assert (=> d!1506871 e!2949101))

(declare-fun res!2001386 () Bool)

(assert (=> d!1506871 (=> res!2001386 e!2949101)))

(assert (=> d!1506871 (= res!2001386 e!2949099)))

(declare-fun res!2001389 () Bool)

(assert (=> d!1506871 (=> (not res!2001389) (not e!2949099))))

(assert (=> d!1506871 (= res!2001389 (isEmpty!29193 lt!1892447))))

(assert (=> d!1506871 (= lt!1892447 e!2949103)))

(declare-fun c!807510 () Bool)

(assert (=> d!1506871 (= c!807510 (and (is-Cons!52870 lt!1892369) (= (_1!30549 (h!59227 lt!1892369)) key!4653)))))

(assert (=> d!1506871 (noDuplicateKeys!2029 lt!1892369)))

(assert (=> d!1506871 (= (getPair!569 lt!1892369 key!4653) lt!1892447)))

(assert (= (and d!1506871 c!807510) b!4728372))

(assert (= (and d!1506871 (not c!807510)) b!4728371))

(assert (= (and b!4728371 c!807511) b!4728370))

(assert (= (and b!4728371 (not c!807511)) b!4728374))

(assert (= (and d!1506871 res!2001389) b!4728375))

(assert (= (and d!1506871 (not res!2001386)) b!4728369))

(assert (= (and b!4728369 res!2001387) b!4728368))

(assert (= (and b!4728368 res!2001388) b!4728373))

(declare-fun m!5668933 () Bool)

(assert (=> b!4728373 m!5668933))

(assert (=> b!4728373 m!5668933))

(declare-fun m!5668935 () Bool)

(assert (=> b!4728373 m!5668935))

(declare-fun m!5668937 () Bool)

(assert (=> d!1506871 m!5668937))

(declare-fun m!5668939 () Bool)

(assert (=> d!1506871 m!5668939))

(declare-fun m!5668941 () Bool)

(assert (=> b!4728375 m!5668941))

(declare-fun m!5668943 () Bool)

(assert (=> b!4728370 m!5668943))

(declare-fun m!5668945 () Bool)

(assert (=> b!4728369 m!5668945))

(assert (=> b!4728368 m!5668933))

(assert (=> b!4728192 d!1506871))

(declare-fun bs!1118632 () Bool)

(declare-fun d!1506875 () Bool)

(assert (= bs!1118632 (and d!1506875 start!481658)))

(declare-fun lambda!216667 () Int)

(assert (=> bs!1118632 (= lambda!216667 lambda!216641)))

(declare-fun bs!1118633 () Bool)

(assert (= bs!1118633 (and d!1506875 d!1506851)))

(assert (=> bs!1118633 (= lambda!216667 lambda!216651)))

(declare-fun bs!1118634 () Bool)

(assert (= bs!1118634 (and d!1506875 d!1506859)))

(assert (=> bs!1118634 (not (= lambda!216667 lambda!216655))))

(declare-fun bs!1118635 () Bool)

(assert (= bs!1118635 (and d!1506875 d!1506869)))

(assert (=> bs!1118635 (= lambda!216667 lambda!216660)))

(declare-fun b!4728402 () Bool)

(declare-fun res!2001405 () Bool)

(declare-fun e!2949120 () Bool)

(assert (=> b!4728402 (=> (not res!2001405) (not e!2949120))))

(assert (=> b!4728402 (= res!2001405 (allKeysSameHashInMap!1943 lm!2023 hashF!1323))))

(declare-fun b!4728404 () Bool)

(assert (=> b!4728404 (= e!2949120 (isDefined!9636 (getPair!569 (apply!12454 lm!2023 (hash!4409 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1892487 () Unit!131205)

(assert (=> b!4728404 (= lt!1892487 (forallContained!3661 (toList!5947 lm!2023) lambda!216667 (tuple2!54513 (hash!4409 hashF!1323 key!4653) (apply!12454 lm!2023 (hash!4409 hashF!1323 key!4653)))))))

(declare-fun lt!1892481 () Unit!131205)

(declare-fun lt!1892480 () Unit!131205)

(assert (=> b!4728404 (= lt!1892481 lt!1892480)))

(declare-fun lt!1892485 () (_ BitVec 64))

(declare-fun lt!1892482 () List!52994)

(assert (=> b!4728404 (contains!16225 (toList!5947 lm!2023) (tuple2!54513 lt!1892485 lt!1892482))))

(assert (=> b!4728404 (= lt!1892480 (lemmaGetValueImpliesTupleContained!374 lm!2023 lt!1892485 lt!1892482))))

(declare-fun e!2949121 () Bool)

(assert (=> b!4728404 e!2949121))

(declare-fun res!2001407 () Bool)

(assert (=> b!4728404 (=> (not res!2001407) (not e!2949121))))

(assert (=> b!4728404 (= res!2001407 (contains!16226 lm!2023 lt!1892485))))

(assert (=> b!4728404 (= lt!1892482 (apply!12454 lm!2023 (hash!4409 hashF!1323 key!4653)))))

(assert (=> b!4728404 (= lt!1892485 (hash!4409 hashF!1323 key!4653))))

(declare-fun lt!1892483 () Unit!131205)

(declare-fun lt!1892486 () Unit!131205)

(assert (=> b!4728404 (= lt!1892483 lt!1892486)))

(assert (=> b!4728404 (contains!16226 lm!2023 (hash!4409 hashF!1323 key!4653))))

(assert (=> b!4728404 (= lt!1892486 (lemmaInGenMapThenLongMapContainsHash!775 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4728405 () Bool)

(assert (=> b!4728405 (= e!2949121 (= (getValueByKey!1973 (toList!5947 lm!2023) lt!1892485) (Some!12384 lt!1892482)))))

(declare-fun b!4728403 () Bool)

(declare-fun res!2001406 () Bool)

(assert (=> b!4728403 (=> (not res!2001406) (not e!2949120))))

(assert (=> b!4728403 (= res!2001406 (contains!16227 (extractMap!2055 (toList!5947 lm!2023)) key!4653))))

(assert (=> d!1506875 e!2949120))

(declare-fun res!2001404 () Bool)

(assert (=> d!1506875 (=> (not res!2001404) (not e!2949120))))

(assert (=> d!1506875 (= res!2001404 (forall!11621 (toList!5947 lm!2023) lambda!216667))))

(declare-fun lt!1892484 () Unit!131205)

(declare-fun choose!33416 (ListLongMap!4477 K!14223 Hashable!6398) Unit!131205)

(assert (=> d!1506875 (= lt!1892484 (choose!33416 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1506875 (forall!11621 (toList!5947 lm!2023) lambda!216667)))

(assert (=> d!1506875 (= (lemmaInGenMapThenGetPairDefined!365 lm!2023 key!4653 hashF!1323) lt!1892484)))

(assert (= (and d!1506875 res!2001404) b!4728402))

(assert (= (and b!4728402 res!2001405) b!4728403))

(assert (= (and b!4728403 res!2001406) b!4728404))

(assert (= (and b!4728404 res!2001407) b!4728405))

(declare-fun m!5668947 () Bool)

(assert (=> b!4728405 m!5668947))

(declare-fun m!5668949 () Bool)

(assert (=> d!1506875 m!5668949))

(declare-fun m!5668951 () Bool)

(assert (=> d!1506875 m!5668951))

(assert (=> d!1506875 m!5668949))

(assert (=> b!4728403 m!5668749))

(assert (=> b!4728403 m!5668749))

(declare-fun m!5668953 () Bool)

(assert (=> b!4728403 m!5668953))

(assert (=> b!4728404 m!5668791))

(declare-fun m!5668955 () Bool)

(assert (=> b!4728404 m!5668955))

(declare-fun m!5668957 () Bool)

(assert (=> b!4728404 m!5668957))

(declare-fun m!5668959 () Bool)

(assert (=> b!4728404 m!5668959))

(declare-fun m!5668961 () Bool)

(assert (=> b!4728404 m!5668961))

(declare-fun m!5668963 () Bool)

(assert (=> b!4728404 m!5668963))

(assert (=> b!4728404 m!5668957))

(declare-fun m!5668965 () Bool)

(assert (=> b!4728404 m!5668965))

(assert (=> b!4728404 m!5668791))

(assert (=> b!4728404 m!5668955))

(assert (=> b!4728404 m!5668761))

(assert (=> b!4728404 m!5668791))

(assert (=> b!4728404 m!5668921))

(declare-fun m!5668967 () Bool)

(assert (=> b!4728404 m!5668967))

(assert (=> b!4728402 m!5668751))

(assert (=> b!4728192 d!1506875))

(declare-fun d!1506877 () Bool)

(assert (=> d!1506877 (containsKey!3396 oldBucket!34 key!4653)))

(declare-fun lt!1892490 () Unit!131205)

(declare-fun choose!33417 (List!52994 K!14223 Hashable!6398) Unit!131205)

(assert (=> d!1506877 (= lt!1892490 (choose!33417 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1506877 (noDuplicateKeys!2029 oldBucket!34)))

(assert (=> d!1506877 (= (lemmaGetPairDefinedThenContainsKey!313 oldBucket!34 key!4653 hashF!1323) lt!1892490)))

(declare-fun bs!1118636 () Bool)

(assert (= bs!1118636 d!1506877))

(assert (=> bs!1118636 m!5668775))

(declare-fun m!5668969 () Bool)

(assert (=> bs!1118636 m!5668969))

(assert (=> bs!1118636 m!5668787))

(assert (=> b!4728192 d!1506877))

(declare-fun d!1506879 () Bool)

(declare-fun e!2949133 () Bool)

(assert (=> d!1506879 e!2949133))

(declare-fun res!2001413 () Bool)

(assert (=> d!1506879 (=> res!2001413 e!2949133)))

(declare-fun lt!1892508 () Bool)

(assert (=> d!1506879 (= res!2001413 (not lt!1892508))))

(declare-fun lt!1892510 () Bool)

(assert (=> d!1506879 (= lt!1892508 lt!1892510)))

(declare-fun lt!1892507 () Unit!131205)

(declare-fun e!2949132 () Unit!131205)

(assert (=> d!1506879 (= lt!1892507 e!2949132)))

(declare-fun c!807523 () Bool)

(assert (=> d!1506879 (= c!807523 lt!1892510)))

(declare-fun containsKey!3399 (List!52995 (_ BitVec 64)) Bool)

(assert (=> d!1506879 (= lt!1892510 (containsKey!3399 (toList!5947 lm!2023) lt!1892372))))

(assert (=> d!1506879 (= (contains!16226 lm!2023 lt!1892372) lt!1892508)))

(declare-fun b!4728421 () Bool)

(declare-fun lt!1892509 () Unit!131205)

(assert (=> b!4728421 (= e!2949132 lt!1892509)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1864 (List!52995 (_ BitVec 64)) Unit!131205)

(assert (=> b!4728421 (= lt!1892509 (lemmaContainsKeyImpliesGetValueByKeyDefined!1864 (toList!5947 lm!2023) lt!1892372))))

(declare-fun isDefined!9639 (Option!12385) Bool)

(assert (=> b!4728421 (isDefined!9639 (getValueByKey!1973 (toList!5947 lm!2023) lt!1892372))))

(declare-fun b!4728422 () Bool)

(declare-fun Unit!131211 () Unit!131205)

(assert (=> b!4728422 (= e!2949132 Unit!131211)))

(declare-fun b!4728423 () Bool)

(assert (=> b!4728423 (= e!2949133 (isDefined!9639 (getValueByKey!1973 (toList!5947 lm!2023) lt!1892372)))))

(assert (= (and d!1506879 c!807523) b!4728421))

(assert (= (and d!1506879 (not c!807523)) b!4728422))

(assert (= (and d!1506879 (not res!2001413)) b!4728423))

(declare-fun m!5668991 () Bool)

(assert (=> d!1506879 m!5668991))

(declare-fun m!5668993 () Bool)

(assert (=> b!4728421 m!5668993))

(assert (=> b!4728421 m!5668917))

(assert (=> b!4728421 m!5668917))

(declare-fun m!5668995 () Bool)

(assert (=> b!4728421 m!5668995))

(assert (=> b!4728423 m!5668917))

(assert (=> b!4728423 m!5668917))

(assert (=> b!4728423 m!5668995))

(assert (=> b!4728192 d!1506879))

(declare-fun d!1506883 () Bool)

(declare-fun res!2001418 () Bool)

(declare-fun e!2949138 () Bool)

(assert (=> d!1506883 (=> res!2001418 e!2949138)))

(assert (=> d!1506883 (= res!2001418 (and (is-Cons!52870 (t!360270 oldBucket!34)) (= (_1!30549 (h!59227 (t!360270 oldBucket!34))) key!4653)))))

(assert (=> d!1506883 (= (containsKey!3396 (t!360270 oldBucket!34) key!4653) e!2949138)))

(declare-fun b!4728428 () Bool)

(declare-fun e!2949139 () Bool)

(assert (=> b!4728428 (= e!2949138 e!2949139)))

(declare-fun res!2001419 () Bool)

(assert (=> b!4728428 (=> (not res!2001419) (not e!2949139))))

(assert (=> b!4728428 (= res!2001419 (is-Cons!52870 (t!360270 oldBucket!34)))))

(declare-fun b!4728429 () Bool)

(assert (=> b!4728429 (= e!2949139 (containsKey!3396 (t!360270 (t!360270 oldBucket!34)) key!4653))))

(assert (= (and d!1506883 (not res!2001418)) b!4728428))

(assert (= (and b!4728428 res!2001419) b!4728429))

(declare-fun m!5668997 () Bool)

(assert (=> b!4728429 m!5668997))

(assert (=> b!4728192 d!1506883))

(declare-fun d!1506885 () Bool)

(declare-fun res!2001420 () Bool)

(declare-fun e!2949140 () Bool)

(assert (=> d!1506885 (=> res!2001420 e!2949140)))

(assert (=> d!1506885 (= res!2001420 (and (is-Cons!52870 oldBucket!34) (= (_1!30549 (h!59227 oldBucket!34)) key!4653)))))

(assert (=> d!1506885 (= (containsKey!3396 oldBucket!34 key!4653) e!2949140)))

(declare-fun b!4728430 () Bool)

(declare-fun e!2949141 () Bool)

(assert (=> b!4728430 (= e!2949140 e!2949141)))

(declare-fun res!2001421 () Bool)

(assert (=> b!4728430 (=> (not res!2001421) (not e!2949141))))

(assert (=> b!4728430 (= res!2001421 (is-Cons!52870 oldBucket!34))))

(declare-fun b!4728431 () Bool)

(assert (=> b!4728431 (= e!2949141 (containsKey!3396 (t!360270 oldBucket!34) key!4653))))

(assert (= (and d!1506885 (not res!2001420)) b!4728430))

(assert (= (and b!4728430 res!2001421) b!4728431))

(assert (=> b!4728431 m!5668767))

(assert (=> b!4728192 d!1506885))

(declare-fun d!1506887 () Bool)

(declare-fun lt!1892513 () Bool)

(declare-fun content!9417 (List!52995) (Set tuple2!54512))

(assert (=> d!1506887 (= lt!1892513 (set.member lt!1892367 (content!9417 (toList!5947 lm!2023))))))

(declare-fun e!2949147 () Bool)

(assert (=> d!1506887 (= lt!1892513 e!2949147)))

(declare-fun res!2001426 () Bool)

(assert (=> d!1506887 (=> (not res!2001426) (not e!2949147))))

(assert (=> d!1506887 (= res!2001426 (is-Cons!52871 (toList!5947 lm!2023)))))

(assert (=> d!1506887 (= (contains!16225 (toList!5947 lm!2023) lt!1892367) lt!1892513)))

(declare-fun b!4728436 () Bool)

(declare-fun e!2949146 () Bool)

(assert (=> b!4728436 (= e!2949147 e!2949146)))

(declare-fun res!2001427 () Bool)

(assert (=> b!4728436 (=> res!2001427 e!2949146)))

(assert (=> b!4728436 (= res!2001427 (= (h!59228 (toList!5947 lm!2023)) lt!1892367))))

(declare-fun b!4728437 () Bool)

(assert (=> b!4728437 (= e!2949146 (contains!16225 (t!360271 (toList!5947 lm!2023)) lt!1892367))))

(assert (= (and d!1506887 res!2001426) b!4728436))

(assert (= (and b!4728436 (not res!2001427)) b!4728437))

(declare-fun m!5668999 () Bool)

(assert (=> d!1506887 m!5668999))

(declare-fun m!5669001 () Bool)

(assert (=> d!1506887 m!5669001))

(declare-fun m!5669003 () Bool)

(assert (=> b!4728437 m!5669003))

(assert (=> b!4728192 d!1506887))

(declare-fun d!1506889 () Bool)

(assert (=> d!1506889 (contains!16225 (toList!5947 lm!2023) (tuple2!54513 lt!1892372 lt!1892369))))

(declare-fun lt!1892516 () Unit!131205)

(declare-fun choose!33418 (ListLongMap!4477 (_ BitVec 64) List!52994) Unit!131205)

(assert (=> d!1506889 (= lt!1892516 (choose!33418 lm!2023 lt!1892372 lt!1892369))))

(assert (=> d!1506889 (contains!16226 lm!2023 lt!1892372)))

(assert (=> d!1506889 (= (lemmaGetValueImpliesTupleContained!374 lm!2023 lt!1892372 lt!1892369) lt!1892516)))

(declare-fun bs!1118637 () Bool)

(assert (= bs!1118637 d!1506889))

(declare-fun m!5669005 () Bool)

(assert (=> bs!1118637 m!5669005))

(declare-fun m!5669007 () Bool)

(assert (=> bs!1118637 m!5669007))

(assert (=> bs!1118637 m!5668771))

(assert (=> b!4728192 d!1506889))

(declare-fun d!1506891 () Bool)

(assert (=> d!1506891 true))

(assert (=> d!1506891 true))

(declare-fun lambda!216670 () Int)

(declare-fun forall!11623 (List!52994 Int) Bool)

(assert (=> d!1506891 (= (allKeysSameHash!1855 oldBucket!34 hash!405 hashF!1323) (forall!11623 oldBucket!34 lambda!216670))))

(declare-fun bs!1118638 () Bool)

(assert (= bs!1118638 d!1506891))

(declare-fun m!5669009 () Bool)

(assert (=> bs!1118638 m!5669009))

(assert (=> b!4728202 d!1506891))

(declare-fun d!1506893 () Bool)

(declare-fun tail!9038 (List!52995) List!52995)

(assert (=> d!1506893 (= (tail!9035 lm!2023) (ListLongMap!4478 (tail!9038 (toList!5947 lm!2023))))))

(declare-fun bs!1118639 () Bool)

(assert (= bs!1118639 d!1506893))

(declare-fun m!5669011 () Bool)

(assert (=> bs!1118639 m!5669011))

(assert (=> b!4728204 d!1506893))

(declare-fun b!4728444 () Bool)

(declare-fun e!2949148 () List!52994)

(declare-fun e!2949149 () List!52994)

(assert (=> b!4728444 (= e!2949148 e!2949149)))

(declare-fun c!807525 () Bool)

(assert (=> b!4728444 (= c!807525 (is-Cons!52870 (t!360270 oldBucket!34)))))

(declare-fun b!4728446 () Bool)

(assert (=> b!4728446 (= e!2949149 Nil!52870)))

(declare-fun b!4728443 () Bool)

(assert (=> b!4728443 (= e!2949148 (t!360270 (t!360270 oldBucket!34)))))

(declare-fun b!4728445 () Bool)

(assert (=> b!4728445 (= e!2949149 (Cons!52870 (h!59227 (t!360270 oldBucket!34)) (removePairForKey!1624 (t!360270 (t!360270 oldBucket!34)) key!4653)))))

(declare-fun d!1506895 () Bool)

(declare-fun lt!1892517 () List!52994)

(assert (=> d!1506895 (not (containsKey!3396 lt!1892517 key!4653))))

(assert (=> d!1506895 (= lt!1892517 e!2949148)))

(declare-fun c!807524 () Bool)

(assert (=> d!1506895 (= c!807524 (and (is-Cons!52870 (t!360270 oldBucket!34)) (= (_1!30549 (h!59227 (t!360270 oldBucket!34))) key!4653)))))

(assert (=> d!1506895 (noDuplicateKeys!2029 (t!360270 oldBucket!34))))

(assert (=> d!1506895 (= (removePairForKey!1624 (t!360270 oldBucket!34) key!4653) lt!1892517)))

(assert (= (and d!1506895 c!807524) b!4728443))

(assert (= (and d!1506895 (not c!807524)) b!4728444))

(assert (= (and b!4728444 c!807525) b!4728445))

(assert (= (and b!4728444 (not c!807525)) b!4728446))

(declare-fun m!5669013 () Bool)

(assert (=> b!4728445 m!5669013))

(declare-fun m!5669015 () Bool)

(assert (=> d!1506895 m!5669015))

(assert (=> d!1506895 m!5668877))

(assert (=> b!4728193 d!1506895))

(declare-fun d!1506897 () Bool)

(declare-fun hash!4411 (Hashable!6398 K!14223) (_ BitVec 64))

(assert (=> d!1506897 (= (hash!4409 hashF!1323 key!4653) (hash!4411 hashF!1323 key!4653))))

(declare-fun bs!1118640 () Bool)

(assert (= bs!1118640 d!1506897))

(declare-fun m!5669017 () Bool)

(assert (=> bs!1118640 m!5669017))

(assert (=> b!4728203 d!1506897))

(declare-fun bs!1118641 () Bool)

(declare-fun d!1506899 () Bool)

(assert (= bs!1118641 (and d!1506899 d!1506891)))

(declare-fun lambda!216671 () Int)

(assert (=> bs!1118641 (= lambda!216671 lambda!216670)))

(assert (=> d!1506899 true))

(assert (=> d!1506899 true))

(assert (=> d!1506899 (= (allKeysSameHash!1855 newBucket!218 hash!405 hashF!1323) (forall!11623 newBucket!218 lambda!216671))))

(declare-fun bs!1118642 () Bool)

(assert (= bs!1118642 d!1506899))

(declare-fun m!5669019 () Bool)

(assert (=> bs!1118642 m!5669019))

(assert (=> b!4728205 d!1506899))

(declare-fun b!4728448 () Bool)

(declare-fun e!2949150 () List!52994)

(declare-fun e!2949151 () List!52994)

(assert (=> b!4728448 (= e!2949150 e!2949151)))

(declare-fun c!807527 () Bool)

(assert (=> b!4728448 (= c!807527 (is-Cons!52870 (tail!9034 oldBucket!34)))))

(declare-fun b!4728450 () Bool)

(assert (=> b!4728450 (= e!2949151 Nil!52870)))

(declare-fun b!4728447 () Bool)

(assert (=> b!4728447 (= e!2949150 (t!360270 (tail!9034 oldBucket!34)))))

(declare-fun b!4728449 () Bool)

(assert (=> b!4728449 (= e!2949151 (Cons!52870 (h!59227 (tail!9034 oldBucket!34)) (removePairForKey!1624 (t!360270 (tail!9034 oldBucket!34)) key!4653)))))

(declare-fun d!1506901 () Bool)

(declare-fun lt!1892518 () List!52994)

(assert (=> d!1506901 (not (containsKey!3396 lt!1892518 key!4653))))

(assert (=> d!1506901 (= lt!1892518 e!2949150)))

(declare-fun c!807526 () Bool)

(assert (=> d!1506901 (= c!807526 (and (is-Cons!52870 (tail!9034 oldBucket!34)) (= (_1!30549 (h!59227 (tail!9034 oldBucket!34))) key!4653)))))

(assert (=> d!1506901 (noDuplicateKeys!2029 (tail!9034 oldBucket!34))))

(assert (=> d!1506901 (= (removePairForKey!1624 (tail!9034 oldBucket!34) key!4653) lt!1892518)))

(assert (= (and d!1506901 c!807526) b!4728447))

(assert (= (and d!1506901 (not c!807526)) b!4728448))

(assert (= (and b!4728448 c!807527) b!4728449))

(assert (= (and b!4728448 (not c!807527)) b!4728450))

(declare-fun m!5669021 () Bool)

(assert (=> b!4728449 m!5669021))

(declare-fun m!5669023 () Bool)

(assert (=> d!1506901 m!5669023))

(assert (=> d!1506901 m!5668781))

(declare-fun m!5669025 () Bool)

(assert (=> d!1506901 m!5669025))

(assert (=> b!4728194 d!1506901))

(declare-fun d!1506903 () Bool)

(assert (=> d!1506903 (= (tail!9034 oldBucket!34) (t!360270 oldBucket!34))))

(assert (=> b!4728194 d!1506903))

(declare-fun d!1506905 () Bool)

(assert (=> d!1506905 (= (tail!9034 newBucket!218) (t!360270 newBucket!218))))

(assert (=> b!4728194 d!1506905))

(declare-fun d!1506907 () Bool)

(assert (=> d!1506907 (= (head!10269 (toList!5947 lm!2023)) (h!59228 (toList!5947 lm!2023)))))

(assert (=> b!4728196 d!1506907))

(declare-fun d!1506909 () Bool)

(declare-fun res!2001428 () Bool)

(declare-fun e!2949152 () Bool)

(assert (=> d!1506909 (=> res!2001428 e!2949152)))

(assert (=> d!1506909 (= res!2001428 (is-Nil!52871 (Cons!52871 (tuple2!54513 hash!405 (t!360270 oldBucket!34)) (t!360271 (toList!5947 lm!2023)))))))

(assert (=> d!1506909 (= (forall!11621 (Cons!52871 (tuple2!54513 hash!405 (t!360270 oldBucket!34)) (t!360271 (toList!5947 lm!2023))) lambda!216641) e!2949152)))

(declare-fun b!4728451 () Bool)

(declare-fun e!2949153 () Bool)

(assert (=> b!4728451 (= e!2949152 e!2949153)))

(declare-fun res!2001429 () Bool)

(assert (=> b!4728451 (=> (not res!2001429) (not e!2949153))))

(assert (=> b!4728451 (= res!2001429 (dynLambda!21837 lambda!216641 (h!59228 (Cons!52871 (tuple2!54513 hash!405 (t!360270 oldBucket!34)) (t!360271 (toList!5947 lm!2023))))))))

(declare-fun b!4728452 () Bool)

(assert (=> b!4728452 (= e!2949153 (forall!11621 (t!360271 (Cons!52871 (tuple2!54513 hash!405 (t!360270 oldBucket!34)) (t!360271 (toList!5947 lm!2023)))) lambda!216641))))

(assert (= (and d!1506909 (not res!2001428)) b!4728451))

(assert (= (and b!4728451 res!2001429) b!4728452))

(declare-fun b_lambda!179937 () Bool)

(assert (=> (not b_lambda!179937) (not b!4728451)))

(declare-fun m!5669027 () Bool)

(assert (=> b!4728451 m!5669027))

(declare-fun m!5669029 () Bool)

(assert (=> b!4728452 m!5669029))

(assert (=> b!4728206 d!1506909))

(declare-fun bs!1118656 () Bool)

(declare-fun b!4728500 () Bool)

(assert (= bs!1118656 (and b!4728500 d!1506891)))

(declare-fun lambda!216713 () Int)

(assert (=> bs!1118656 (not (= lambda!216713 lambda!216670))))

(declare-fun bs!1118657 () Bool)

(assert (= bs!1118657 (and b!4728500 d!1506899)))

(assert (=> bs!1118657 (not (= lambda!216713 lambda!216671))))

(assert (=> b!4728500 true))

(declare-fun bs!1118658 () Bool)

(declare-fun b!4728498 () Bool)

(assert (= bs!1118658 (and b!4728498 d!1506891)))

(declare-fun lambda!216714 () Int)

(assert (=> bs!1118658 (not (= lambda!216714 lambda!216670))))

(declare-fun bs!1118659 () Bool)

(assert (= bs!1118659 (and b!4728498 d!1506899)))

(assert (=> bs!1118659 (not (= lambda!216714 lambda!216671))))

(declare-fun bs!1118660 () Bool)

(assert (= bs!1118660 (and b!4728498 b!4728500)))

(assert (=> bs!1118660 (= lambda!216714 lambda!216713)))

(assert (=> b!4728498 true))

(declare-fun lambda!216715 () Int)

(assert (=> bs!1118658 (not (= lambda!216715 lambda!216670))))

(assert (=> bs!1118659 (not (= lambda!216715 lambda!216671))))

(declare-fun lt!1892601 () ListMap!5311)

(assert (=> bs!1118660 (= (= lt!1892601 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) (= lambda!216715 lambda!216713))))

(assert (=> b!4728498 (= (= lt!1892601 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) (= lambda!216715 lambda!216714))))

(assert (=> b!4728498 true))

(declare-fun bs!1118661 () Bool)

(declare-fun d!1506911 () Bool)

(assert (= bs!1118661 (and d!1506911 b!4728500)))

(declare-fun lambda!216716 () Int)

(declare-fun lt!1892604 () ListMap!5311)

(assert (=> bs!1118661 (= (= lt!1892604 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) (= lambda!216716 lambda!216713))))

(declare-fun bs!1118662 () Bool)

(assert (= bs!1118662 (and d!1506911 b!4728498)))

(assert (=> bs!1118662 (= (= lt!1892604 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) (= lambda!216716 lambda!216714))))

(assert (=> bs!1118662 (= (= lt!1892604 lt!1892601) (= lambda!216716 lambda!216715))))

(declare-fun bs!1118663 () Bool)

(assert (= bs!1118663 (and d!1506911 d!1506891)))

(assert (=> bs!1118663 (not (= lambda!216716 lambda!216670))))

(declare-fun bs!1118664 () Bool)

(assert (= bs!1118664 (and d!1506911 d!1506899)))

(assert (=> bs!1118664 (not (= lambda!216716 lambda!216671))))

(assert (=> d!1506911 true))

(declare-fun e!2949186 () ListMap!5311)

(assert (=> b!4728498 (= e!2949186 lt!1892601)))

(declare-fun lt!1892608 () ListMap!5311)

(declare-fun +!2278 (ListMap!5311 tuple2!54510) ListMap!5311)

(assert (=> b!4728498 (= lt!1892608 (+!2278 (extractMap!2055 (t!360271 (toList!5947 lm!2023))) (h!59227 (_2!30550 (h!59228 (toList!5947 lm!2023))))))))

(assert (=> b!4728498 (= lt!1892601 (addToMapMapFromBucket!1459 (t!360270 (_2!30550 (h!59228 (toList!5947 lm!2023)))) (+!2278 (extractMap!2055 (t!360271 (toList!5947 lm!2023))) (h!59227 (_2!30550 (h!59228 (toList!5947 lm!2023)))))))))

(declare-fun lt!1892603 () Unit!131205)

(declare-fun call!330770 () Unit!131205)

(assert (=> b!4728498 (= lt!1892603 call!330770)))

(assert (=> b!4728498 (forall!11623 (toList!5948 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) lambda!216714)))

(declare-fun lt!1892609 () Unit!131205)

(assert (=> b!4728498 (= lt!1892609 lt!1892603)))

(declare-fun call!330771 () Bool)

(assert (=> b!4728498 call!330771))

(declare-fun lt!1892610 () Unit!131205)

(declare-fun Unit!131212 () Unit!131205)

(assert (=> b!4728498 (= lt!1892610 Unit!131212)))

(assert (=> b!4728498 (forall!11623 (t!360270 (_2!30550 (h!59228 (toList!5947 lm!2023)))) lambda!216715)))

(declare-fun lt!1892605 () Unit!131205)

(declare-fun Unit!131213 () Unit!131205)

(assert (=> b!4728498 (= lt!1892605 Unit!131213)))

(declare-fun lt!1892612 () Unit!131205)

(declare-fun Unit!131214 () Unit!131205)

(assert (=> b!4728498 (= lt!1892612 Unit!131214)))

(declare-fun lt!1892617 () Unit!131205)

(declare-fun forallContained!3663 (List!52994 Int tuple2!54510) Unit!131205)

(assert (=> b!4728498 (= lt!1892617 (forallContained!3663 (toList!5948 lt!1892608) lambda!216715 (h!59227 (_2!30550 (h!59228 (toList!5947 lm!2023))))))))

(assert (=> b!4728498 (contains!16227 lt!1892608 (_1!30549 (h!59227 (_2!30550 (h!59228 (toList!5947 lm!2023))))))))

(declare-fun lt!1892620 () Unit!131205)

(declare-fun Unit!131215 () Unit!131205)

(assert (=> b!4728498 (= lt!1892620 Unit!131215)))

(assert (=> b!4728498 (contains!16227 lt!1892601 (_1!30549 (h!59227 (_2!30550 (h!59228 (toList!5947 lm!2023))))))))

(declare-fun lt!1892614 () Unit!131205)

(declare-fun Unit!131216 () Unit!131205)

(assert (=> b!4728498 (= lt!1892614 Unit!131216)))

(assert (=> b!4728498 (forall!11623 (_2!30550 (h!59228 (toList!5947 lm!2023))) lambda!216715)))

(declare-fun lt!1892600 () Unit!131205)

(declare-fun Unit!131217 () Unit!131205)

(assert (=> b!4728498 (= lt!1892600 Unit!131217)))

(assert (=> b!4728498 (forall!11623 (toList!5948 lt!1892608) lambda!216715)))

(declare-fun lt!1892616 () Unit!131205)

(declare-fun Unit!131218 () Unit!131205)

(assert (=> b!4728498 (= lt!1892616 Unit!131218)))

(declare-fun lt!1892599 () Unit!131205)

(declare-fun Unit!131219 () Unit!131205)

(assert (=> b!4728498 (= lt!1892599 Unit!131219)))

(declare-fun lt!1892613 () Unit!131205)

(declare-fun addForallContainsKeyThenBeforeAdding!805 (ListMap!5311 ListMap!5311 K!14223 V!14469) Unit!131205)

(assert (=> b!4728498 (= lt!1892613 (addForallContainsKeyThenBeforeAdding!805 (extractMap!2055 (t!360271 (toList!5947 lm!2023))) lt!1892601 (_1!30549 (h!59227 (_2!30550 (h!59228 (toList!5947 lm!2023))))) (_2!30549 (h!59227 (_2!30550 (h!59228 (toList!5947 lm!2023)))))))))

(assert (=> b!4728498 (forall!11623 (toList!5948 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) lambda!216715)))

(declare-fun lt!1892611 () Unit!131205)

(assert (=> b!4728498 (= lt!1892611 lt!1892613)))

(declare-fun call!330772 () Bool)

(assert (=> b!4728498 call!330772))

(declare-fun lt!1892618 () Unit!131205)

(declare-fun Unit!131220 () Unit!131205)

(assert (=> b!4728498 (= lt!1892618 Unit!131220)))

(declare-fun res!2001467 () Bool)

(assert (=> b!4728498 (= res!2001467 (forall!11623 (_2!30550 (h!59228 (toList!5947 lm!2023))) lambda!216715))))

(declare-fun e!2949187 () Bool)

(assert (=> b!4728498 (=> (not res!2001467) (not e!2949187))))

(assert (=> b!4728498 e!2949187))

(declare-fun lt!1892606 () Unit!131205)

(declare-fun Unit!131221 () Unit!131205)

(assert (=> b!4728498 (= lt!1892606 Unit!131221)))

(declare-fun e!2949188 () Bool)

(assert (=> d!1506911 e!2949188))

(declare-fun res!2001465 () Bool)

(assert (=> d!1506911 (=> (not res!2001465) (not e!2949188))))

(assert (=> d!1506911 (= res!2001465 (forall!11623 (_2!30550 (h!59228 (toList!5947 lm!2023))) lambda!216716))))

(assert (=> d!1506911 (= lt!1892604 e!2949186)))

(declare-fun c!807533 () Bool)

(assert (=> d!1506911 (= c!807533 (is-Nil!52870 (_2!30550 (h!59228 (toList!5947 lm!2023)))))))

(assert (=> d!1506911 (noDuplicateKeys!2029 (_2!30550 (h!59228 (toList!5947 lm!2023))))))

(assert (=> d!1506911 (= (addToMapMapFromBucket!1459 (_2!30550 (h!59228 (toList!5947 lm!2023))) (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) lt!1892604)))

(declare-fun bm!330765 () Bool)

(assert (=> bm!330765 (= call!330771 (forall!11623 (ite c!807533 (toList!5948 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) (toList!5948 lt!1892608)) (ite c!807533 lambda!216713 lambda!216715)))))

(declare-fun bm!330766 () Bool)

(assert (=> bm!330766 (= call!330772 (forall!11623 (toList!5948 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) (ite c!807533 lambda!216713 lambda!216715)))))

(declare-fun b!4728499 () Bool)

(assert (=> b!4728499 (= e!2949188 (invariantList!1520 (toList!5948 lt!1892604)))))

(declare-fun bm!330767 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!806 (ListMap!5311) Unit!131205)

(assert (=> bm!330767 (= call!330770 (lemmaContainsAllItsOwnKeys!806 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))))))

(assert (=> b!4728500 (= e!2949186 (extractMap!2055 (t!360271 (toList!5947 lm!2023))))))

(declare-fun lt!1892615 () Unit!131205)

(assert (=> b!4728500 (= lt!1892615 call!330770)))

(assert (=> b!4728500 call!330771))

(declare-fun lt!1892607 () Unit!131205)

(assert (=> b!4728500 (= lt!1892607 lt!1892615)))

(assert (=> b!4728500 call!330772))

(declare-fun lt!1892619 () Unit!131205)

(declare-fun Unit!131222 () Unit!131205)

(assert (=> b!4728500 (= lt!1892619 Unit!131222)))

(declare-fun b!4728501 () Bool)

(assert (=> b!4728501 (= e!2949187 (forall!11623 (toList!5948 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) lambda!216715))))

(declare-fun b!4728502 () Bool)

(declare-fun res!2001466 () Bool)

(assert (=> b!4728502 (=> (not res!2001466) (not e!2949188))))

(assert (=> b!4728502 (= res!2001466 (forall!11623 (toList!5948 (extractMap!2055 (t!360271 (toList!5947 lm!2023)))) lambda!216716))))

(assert (= (and d!1506911 c!807533) b!4728500))

(assert (= (and d!1506911 (not c!807533)) b!4728498))

(assert (= (and b!4728498 res!2001467) b!4728501))

(assert (= (or b!4728500 b!4728498) bm!330767))

(assert (= (or b!4728500 b!4728498) bm!330766))

(assert (= (or b!4728500 b!4728498) bm!330765))

(assert (= (and d!1506911 res!2001465) b!4728502))

(assert (= (and b!4728502 res!2001466) b!4728499))

(declare-fun m!5669087 () Bool)

(assert (=> b!4728502 m!5669087))

(declare-fun m!5669089 () Bool)

(assert (=> bm!330765 m!5669089))

(declare-fun m!5669091 () Bool)

(assert (=> b!4728498 m!5669091))

(declare-fun m!5669093 () Bool)

(assert (=> b!4728498 m!5669093))

(declare-fun m!5669095 () Bool)

(assert (=> b!4728498 m!5669095))

(declare-fun m!5669097 () Bool)

(assert (=> b!4728498 m!5669097))

(assert (=> b!4728498 m!5668741))

(assert (=> b!4728498 m!5669091))

(declare-fun m!5669099 () Bool)

(assert (=> b!4728498 m!5669099))

(declare-fun m!5669101 () Bool)

(assert (=> b!4728498 m!5669101))

(declare-fun m!5669103 () Bool)

(assert (=> b!4728498 m!5669103))

(declare-fun m!5669105 () Bool)

(assert (=> b!4728498 m!5669105))

(assert (=> b!4728498 m!5669105))

(declare-fun m!5669107 () Bool)

(assert (=> b!4728498 m!5669107))

(declare-fun m!5669109 () Bool)

(assert (=> b!4728498 m!5669109))

(assert (=> b!4728498 m!5668741))

(declare-fun m!5669111 () Bool)

(assert (=> b!4728498 m!5669111))

(assert (=> bm!330767 m!5668741))

(declare-fun m!5669113 () Bool)

(assert (=> bm!330767 m!5669113))

(declare-fun m!5669115 () Bool)

(assert (=> d!1506911 m!5669115))

(declare-fun m!5669117 () Bool)

(assert (=> d!1506911 m!5669117))

(assert (=> b!4728501 m!5669101))

(declare-fun m!5669119 () Bool)

(assert (=> bm!330766 m!5669119))

(declare-fun m!5669121 () Bool)

(assert (=> b!4728499 m!5669121))

(assert (=> b!4728195 d!1506911))

(declare-fun bs!1118665 () Bool)

(declare-fun d!1506933 () Bool)

(assert (= bs!1118665 (and d!1506933 d!1506869)))

(declare-fun lambda!216717 () Int)

(assert (=> bs!1118665 (= lambda!216717 lambda!216660)))

(declare-fun bs!1118666 () Bool)

(assert (= bs!1118666 (and d!1506933 d!1506859)))

(assert (=> bs!1118666 (not (= lambda!216717 lambda!216655))))

(declare-fun bs!1118667 () Bool)

(assert (= bs!1118667 (and d!1506933 d!1506851)))

(assert (=> bs!1118667 (= lambda!216717 lambda!216651)))

(declare-fun bs!1118668 () Bool)

(assert (= bs!1118668 (and d!1506933 d!1506875)))

(assert (=> bs!1118668 (= lambda!216717 lambda!216667)))

(declare-fun bs!1118669 () Bool)

(assert (= bs!1118669 (and d!1506933 start!481658)))

(assert (=> bs!1118669 (= lambda!216717 lambda!216641)))

(declare-fun lt!1892623 () ListMap!5311)

(assert (=> d!1506933 (invariantList!1520 (toList!5948 lt!1892623))))

(declare-fun e!2949199 () ListMap!5311)

(assert (=> d!1506933 (= lt!1892623 e!2949199)))

(declare-fun c!807538 () Bool)

(assert (=> d!1506933 (= c!807538 (is-Cons!52871 (t!360271 (toList!5947 lm!2023))))))

(assert (=> d!1506933 (forall!11621 (t!360271 (toList!5947 lm!2023)) lambda!216717)))

(assert (=> d!1506933 (= (extractMap!2055 (t!360271 (toList!5947 lm!2023))) lt!1892623)))

(declare-fun b!4728521 () Bool)

(assert (=> b!4728521 (= e!2949199 (addToMapMapFromBucket!1459 (_2!30550 (h!59228 (t!360271 (toList!5947 lm!2023)))) (extractMap!2055 (t!360271 (t!360271 (toList!5947 lm!2023))))))))

(declare-fun b!4728522 () Bool)

(assert (=> b!4728522 (= e!2949199 (ListMap!5312 Nil!52870))))

(assert (= (and d!1506933 c!807538) b!4728521))

(assert (= (and d!1506933 (not c!807538)) b!4728522))

(declare-fun m!5669123 () Bool)

(assert (=> d!1506933 m!5669123))

(declare-fun m!5669125 () Bool)

(assert (=> d!1506933 m!5669125))

(declare-fun m!5669127 () Bool)

(assert (=> b!4728521 m!5669127))

(assert (=> b!4728521 m!5669127))

(declare-fun m!5669129 () Bool)

(assert (=> b!4728521 m!5669129))

(assert (=> b!4728195 d!1506933))

(declare-fun b!4728535 () Bool)

(declare-fun e!2949207 () Bool)

(declare-fun tp!1348696 () Bool)

(declare-fun tp!1348697 () Bool)

(assert (=> b!4728535 (= e!2949207 (and tp!1348696 tp!1348697))))

(assert (=> b!4728208 (= tp!1348682 e!2949207)))

(assert (= (and b!4728208 (is-Cons!52871 (toList!5947 lm!2023))) b!4728535))

(declare-fun tp!1348700 () Bool)

(declare-fun e!2949210 () Bool)

(declare-fun b!4728540 () Bool)

(assert (=> b!4728540 (= e!2949210 (and tp_is_empty!31409 tp_is_empty!31411 tp!1348700))))

(assert (=> b!4728197 (= tp!1348681 e!2949210)))

(assert (= (and b!4728197 (is-Cons!52870 (t!360270 oldBucket!34))) b!4728540))

(declare-fun e!2949211 () Bool)

(declare-fun tp!1348701 () Bool)

(declare-fun b!4728541 () Bool)

(assert (=> b!4728541 (= e!2949211 (and tp_is_empty!31409 tp_is_empty!31411 tp!1348701))))

(assert (=> b!4728198 (= tp!1348680 e!2949211)))

(assert (= (and b!4728198 (is-Cons!52870 (t!360270 newBucket!218))) b!4728541))

(declare-fun b_lambda!179943 () Bool)

(assert (= b_lambda!179933 (or start!481658 b_lambda!179943)))

(declare-fun bs!1118670 () Bool)

(declare-fun d!1506937 () Bool)

(assert (= bs!1118670 (and d!1506937 start!481658)))

(assert (=> bs!1118670 (= (dynLambda!21837 lambda!216641 (h!59228 (toList!5947 lm!2023))) (noDuplicateKeys!2029 (_2!30550 (h!59228 (toList!5947 lm!2023)))))))

(assert (=> bs!1118670 m!5669117))

(assert (=> b!4728272 d!1506937))

(declare-fun b_lambda!179945 () Bool)

(assert (= b_lambda!179935 (or start!481658 b_lambda!179945)))

(declare-fun bs!1118671 () Bool)

(declare-fun d!1506939 () Bool)

(assert (= bs!1118671 (and d!1506939 start!481658)))

(assert (=> bs!1118671 (= (dynLambda!21837 lambda!216641 lt!1892367) (noDuplicateKeys!2029 (_2!30550 lt!1892367)))))

(declare-fun m!5669145 () Bool)

(assert (=> bs!1118671 m!5669145))

(assert (=> d!1506863 d!1506939))

(declare-fun b_lambda!179947 () Bool)

(assert (= b_lambda!179937 (or start!481658 b_lambda!179947)))

(declare-fun bs!1118672 () Bool)

(declare-fun d!1506941 () Bool)

(assert (= bs!1118672 (and d!1506941 start!481658)))

(assert (=> bs!1118672 (= (dynLambda!21837 lambda!216641 (h!59228 (Cons!52871 (tuple2!54513 hash!405 (t!360270 oldBucket!34)) (t!360271 (toList!5947 lm!2023))))) (noDuplicateKeys!2029 (_2!30550 (h!59228 (Cons!52871 (tuple2!54513 hash!405 (t!360270 oldBucket!34)) (t!360271 (toList!5947 lm!2023)))))))))

(declare-fun m!5669147 () Bool)

(assert (=> bs!1118672 m!5669147))

(assert (=> b!4728451 d!1506941))

(push 1)

(assert (not d!1506867))

(assert (not b!4728273))

(assert (not b!4728293))

(assert (not b!4728319))

(assert (not b!4728445))

(assert (not b!4728284))

(assert (not d!1506863))

(assert (not b!4728368))

(assert (not d!1506849))

(assert (not b!4728317))

(assert (not b!4728331))

(assert (not d!1506861))

(assert (not b!4728373))

(assert (not b!4728429))

(assert (not bs!1118670))

(assert (not d!1506877))

(assert (not d!1506899))

(assert (not b_lambda!179943))

(assert (not b!4728369))

(assert (not b!4728292))

(assert (not bs!1118671))

(assert (not b!4728402))

(assert (not d!1506895))

(assert (not b!4728437))

(assert (not d!1506893))

(assert (not b!4728521))

(assert (not b!4728375))

(assert (not b!4728431))

(assert (not bm!330755))

(assert (not d!1506889))

(assert (not b!4728423))

(assert (not d!1506859))

(assert (not b!4728339))

(assert (not bm!330765))

(assert (not d!1506843))

(assert (not b!4728498))

(assert (not d!1506897))

(assert (not b!4728421))

(assert (not b!4728541))

(assert (not b!4728315))

(assert (not d!1506841))

(assert (not b!4728313))

(assert (not b!4728499))

(assert (not d!1506901))

(assert (not b!4728404))

(assert (not b!4728312))

(assert (not b!4728502))

(assert (not b!4728314))

(assert (not d!1506887))

(assert (not d!1506933))

(assert (not b!4728403))

(assert (not b!4728501))

(assert (not b!4728291))

(assert (not b!4728318))

(assert (not d!1506891))

(assert (not b!4728405))

(assert (not d!1506875))

(assert (not b!4728290))

(assert (not b_lambda!179945))

(assert (not bs!1118672))

(assert (not bm!330767))

(assert (not d!1506879))

(assert (not b!4728370))

(assert (not b!4728540))

(assert (not d!1506851))

(assert (not d!1506871))

(assert (not d!1506869))

(assert tp_is_empty!31411)

(assert tp_is_empty!31409)

(assert (not b!4728449))

(assert (not b!4728452))

(assert (not b_lambda!179947))

(assert (not bm!330766))

(assert (not d!1506911))

(assert (not b!4728535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

