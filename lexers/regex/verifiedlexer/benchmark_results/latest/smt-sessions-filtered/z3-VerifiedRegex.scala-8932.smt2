; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478896 () Bool)

(assert start!478896)

(declare-fun tp_is_empty!31159 () Bool)

(declare-fun b!4712177 () Bool)

(declare-fun tp_is_empty!31157 () Bool)

(declare-fun e!2938994 () Bool)

(declare-fun tp!1347623 () Bool)

(assert (=> b!4712177 (= e!2938994 (and tp_is_empty!31157 tp_is_empty!31159 tp!1347623))))

(declare-fun b!4712178 () Bool)

(declare-fun res!1991821 () Bool)

(declare-fun e!2939001 () Bool)

(assert (=> b!4712178 (=> (not res!1991821) (not e!2939001))))

(declare-datatypes ((K!14065 0))(
  ( (K!14066 (val!19523 Int)) )
))
(declare-datatypes ((V!14311 0))(
  ( (V!14312 (val!19524 Int)) )
))
(declare-datatypes ((tuple2!54258 0))(
  ( (tuple2!54259 (_1!30423 K!14065) (_2!30423 V!14311)) )
))
(declare-datatypes ((List!52827 0))(
  ( (Nil!52703) (Cons!52703 (h!59018 tuple2!54258) (t!360069 List!52827)) )
))
(declare-fun newBucket!218 () List!52827)

(declare-fun noDuplicateKeys!1966 (List!52827) Bool)

(assert (=> b!4712178 (= res!1991821 (noDuplicateKeys!1966 newBucket!218))))

(declare-fun b!4712179 () Bool)

(declare-fun res!1991822 () Bool)

(assert (=> b!4712179 (=> (not res!1991822) (not e!2939001))))

(declare-datatypes ((Hashable!6335 0))(
  ( (HashableExt!6334 (__x!32038 Int)) )
))
(declare-fun hashF!1323 () Hashable!6335)

(declare-fun oldBucket!34 () List!52827)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1792 (List!52827 (_ BitVec 64) Hashable!6335) Bool)

(assert (=> b!4712179 (= res!1991822 (allKeysSameHash!1792 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp!1347624 () Bool)

(declare-fun e!2938995 () Bool)

(declare-fun b!4712180 () Bool)

(assert (=> b!4712180 (= e!2938995 (and tp_is_empty!31157 tp_is_empty!31159 tp!1347624))))

(declare-fun b!4712181 () Bool)

(declare-fun res!1991826 () Bool)

(assert (=> b!4712181 (=> (not res!1991826) (not e!2939001))))

(declare-fun key!4653 () K!14065)

(declare-fun removePairForKey!1561 (List!52827 K!14065) List!52827)

(assert (=> b!4712181 (= res!1991826 (= (removePairForKey!1561 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4712182 () Bool)

(declare-fun e!2938996 () Bool)

(assert (=> b!4712182 (= e!2939001 e!2938996)))

(declare-fun res!1991824 () Bool)

(assert (=> b!4712182 (=> (not res!1991824) (not e!2938996))))

(declare-datatypes ((ListMap!5185 0))(
  ( (ListMap!5186 (toList!5821 List!52827)) )
))
(declare-fun lt!1876632 () ListMap!5185)

(declare-fun contains!16010 (ListMap!5185 K!14065) Bool)

(assert (=> b!4712182 (= res!1991824 (contains!16010 lt!1876632 key!4653))))

(declare-datatypes ((tuple2!54260 0))(
  ( (tuple2!54261 (_1!30424 (_ BitVec 64)) (_2!30424 List!52827)) )
))
(declare-datatypes ((List!52828 0))(
  ( (Nil!52704) (Cons!52704 (h!59019 tuple2!54260) (t!360070 List!52828)) )
))
(declare-datatypes ((ListLongMap!4351 0))(
  ( (ListLongMap!4352 (toList!5822 List!52828)) )
))
(declare-fun lm!2023 () ListLongMap!4351)

(declare-fun extractMap!1992 (List!52828) ListMap!5185)

(assert (=> b!4712182 (= lt!1876632 (extractMap!1992 (toList!5822 lm!2023)))))

(declare-fun e!2938999 () Bool)

(declare-fun b!4712183 () Bool)

(declare-fun tail!8877 (List!52827) List!52827)

(assert (=> b!4712183 (= e!2938999 (= (removePairForKey!1561 (tail!8877 oldBucket!34) key!4653) (tail!8877 newBucket!218)))))

(declare-fun b!4712184 () Bool)

(declare-fun e!2938997 () Bool)

(declare-fun tp!1347625 () Bool)

(assert (=> b!4712184 (= e!2938997 tp!1347625)))

(declare-fun b!4712185 () Bool)

(declare-fun e!2938998 () Bool)

(assert (=> b!4712185 (= e!2938998 e!2938999)))

(declare-fun res!1991819 () Bool)

(assert (=> b!4712185 (=> res!1991819 e!2938999)))

(declare-fun containsKey!3277 (List!52827 K!14065) Bool)

(assert (=> b!4712185 (= res!1991819 (not (containsKey!3277 (t!360069 oldBucket!34) key!4653)))))

(assert (=> b!4712185 (containsKey!3277 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!128170 0))(
  ( (Unit!128171) )
))
(declare-fun lt!1876628 () Unit!128170)

(declare-fun lemmaGetPairDefinedThenContainsKey!280 (List!52827 K!14065 Hashable!6335) Unit!128170)

(assert (=> b!4712185 (= lt!1876628 (lemmaGetPairDefinedThenContainsKey!280 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1876626 () List!52827)

(declare-datatypes ((Option!12279 0))(
  ( (None!12278) (Some!12278 (v!46809 tuple2!54258)) )
))
(declare-fun isDefined!9534 (Option!12279) Bool)

(declare-fun getPair!532 (List!52827 K!14065) Option!12279)

(assert (=> b!4712185 (isDefined!9534 (getPair!532 lt!1876626 key!4653))))

(declare-fun lambda!213031 () Int)

(declare-fun lt!1876631 () Unit!128170)

(declare-fun lt!1876629 () tuple2!54260)

(declare-fun forallContained!3572 (List!52828 Int tuple2!54260) Unit!128170)

(assert (=> b!4712185 (= lt!1876631 (forallContained!3572 (toList!5822 lm!2023) lambda!213031 lt!1876629))))

(declare-fun contains!16011 (List!52828 tuple2!54260) Bool)

(assert (=> b!4712185 (contains!16011 (toList!5822 lm!2023) lt!1876629)))

(declare-fun lt!1876630 () (_ BitVec 64))

(assert (=> b!4712185 (= lt!1876629 (tuple2!54261 lt!1876630 lt!1876626))))

(declare-fun lt!1876633 () Unit!128170)

(declare-fun lemmaGetValueImpliesTupleContained!337 (ListLongMap!4351 (_ BitVec 64) List!52827) Unit!128170)

(assert (=> b!4712185 (= lt!1876633 (lemmaGetValueImpliesTupleContained!337 lm!2023 lt!1876630 lt!1876626))))

(declare-fun apply!12415 (ListLongMap!4351 (_ BitVec 64)) List!52827)

(assert (=> b!4712185 (= lt!1876626 (apply!12415 lm!2023 lt!1876630))))

(declare-fun contains!16012 (ListLongMap!4351 (_ BitVec 64)) Bool)

(assert (=> b!4712185 (contains!16012 lm!2023 lt!1876630)))

(declare-fun lt!1876634 () Unit!128170)

(declare-fun lemmaInGenMapThenLongMapContainsHash!738 (ListLongMap!4351 K!14065 Hashable!6335) Unit!128170)

(assert (=> b!4712185 (= lt!1876634 (lemmaInGenMapThenLongMapContainsHash!738 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1876627 () Unit!128170)

(declare-fun lemmaInGenMapThenGetPairDefined!328 (ListLongMap!4351 K!14065 Hashable!6335) Unit!128170)

(assert (=> b!4712185 (= lt!1876627 (lemmaInGenMapThenGetPairDefined!328 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4712187 () Bool)

(declare-fun res!1991818 () Bool)

(declare-fun e!2939002 () Bool)

(assert (=> b!4712187 (=> (not res!1991818) (not e!2939002))))

(declare-fun allKeysSameHashInMap!1880 (ListLongMap!4351 Hashable!6335) Bool)

(assert (=> b!4712187 (= res!1991818 (allKeysSameHashInMap!1880 lm!2023 hashF!1323))))

(declare-fun b!4712188 () Bool)

(assert (=> b!4712188 (= e!2939002 (not e!2938998))))

(declare-fun res!1991829 () Bool)

(assert (=> b!4712188 (=> res!1991829 e!2938998)))

(get-info :version)

(assert (=> b!4712188 (= res!1991829 (or (and ((_ is Cons!52703) oldBucket!34) (= (_1!30423 (h!59018 oldBucket!34)) key!4653)) (not ((_ is Cons!52703) oldBucket!34)) (= (_1!30423 (h!59018 oldBucket!34)) key!4653)))))

(declare-fun e!2939000 () Bool)

(assert (=> b!4712188 e!2939000))

(declare-fun res!1991820 () Bool)

(assert (=> b!4712188 (=> (not res!1991820) (not e!2939000))))

(declare-fun tail!8878 (ListLongMap!4351) ListLongMap!4351)

(assert (=> b!4712188 (= res!1991820 (= (t!360070 (toList!5822 lm!2023)) (toList!5822 (tail!8878 lm!2023))))))

(declare-fun b!4712189 () Bool)

(declare-fun addToMapMapFromBucket!1396 (List!52827 ListMap!5185) ListMap!5185)

(assert (=> b!4712189 (= e!2939000 (= lt!1876632 (addToMapMapFromBucket!1396 (_2!30424 (h!59019 (toList!5822 lm!2023))) (extractMap!1992 (t!360070 (toList!5822 lm!2023))))))))

(declare-fun b!4712186 () Bool)

(declare-fun res!1991825 () Bool)

(assert (=> b!4712186 (=> (not res!1991825) (not e!2939002))))

(assert (=> b!4712186 (= res!1991825 (allKeysSameHash!1792 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!1991831 () Bool)

(assert (=> start!478896 (=> (not res!1991831) (not e!2939001))))

(declare-fun forall!11503 (List!52828 Int) Bool)

(assert (=> start!478896 (= res!1991831 (forall!11503 (toList!5822 lm!2023) lambda!213031))))

(assert (=> start!478896 e!2939001))

(declare-fun inv!67939 (ListLongMap!4351) Bool)

(assert (=> start!478896 (and (inv!67939 lm!2023) e!2938997)))

(assert (=> start!478896 tp_is_empty!31157))

(assert (=> start!478896 e!2938994))

(assert (=> start!478896 true))

(assert (=> start!478896 e!2938995))

(declare-fun b!4712190 () Bool)

(declare-fun res!1991827 () Bool)

(assert (=> b!4712190 (=> (not res!1991827) (not e!2939002))))

(assert (=> b!4712190 (= res!1991827 ((_ is Cons!52704) (toList!5822 lm!2023)))))

(declare-fun b!4712191 () Bool)

(declare-fun res!1991823 () Bool)

(assert (=> b!4712191 (=> (not res!1991823) (not e!2939001))))

(assert (=> b!4712191 (= res!1991823 (noDuplicateKeys!1966 oldBucket!34))))

(declare-fun b!4712192 () Bool)

(declare-fun res!1991828 () Bool)

(assert (=> b!4712192 (=> (not res!1991828) (not e!2939002))))

(declare-fun head!10166 (List!52828) tuple2!54260)

(assert (=> b!4712192 (= res!1991828 (= (head!10166 (toList!5822 lm!2023)) (tuple2!54261 hash!405 oldBucket!34)))))

(declare-fun b!4712193 () Bool)

(assert (=> b!4712193 (= e!2938996 e!2939002)))

(declare-fun res!1991830 () Bool)

(assert (=> b!4712193 (=> (not res!1991830) (not e!2939002))))

(assert (=> b!4712193 (= res!1991830 (= lt!1876630 hash!405))))

(declare-fun hash!4296 (Hashable!6335 K!14065) (_ BitVec 64))

(assert (=> b!4712193 (= lt!1876630 (hash!4296 hashF!1323 key!4653))))

(assert (= (and start!478896 res!1991831) b!4712191))

(assert (= (and b!4712191 res!1991823) b!4712178))

(assert (= (and b!4712178 res!1991821) b!4712181))

(assert (= (and b!4712181 res!1991826) b!4712179))

(assert (= (and b!4712179 res!1991822) b!4712182))

(assert (= (and b!4712182 res!1991824) b!4712193))

(assert (= (and b!4712193 res!1991830) b!4712186))

(assert (= (and b!4712186 res!1991825) b!4712187))

(assert (= (and b!4712187 res!1991818) b!4712192))

(assert (= (and b!4712192 res!1991828) b!4712190))

(assert (= (and b!4712190 res!1991827) b!4712188))

(assert (= (and b!4712188 res!1991820) b!4712189))

(assert (= (and b!4712188 (not res!1991829)) b!4712185))

(assert (= (and b!4712185 (not res!1991819)) b!4712183))

(assert (= start!478896 b!4712184))

(assert (= (and start!478896 ((_ is Cons!52703) oldBucket!34)) b!4712177))

(assert (= (and start!478896 ((_ is Cons!52703) newBucket!218)) b!4712180))

(declare-fun m!5638387 () Bool)

(assert (=> b!4712179 m!5638387))

(declare-fun m!5638389 () Bool)

(assert (=> b!4712187 m!5638389))

(declare-fun m!5638391 () Bool)

(assert (=> b!4712182 m!5638391))

(declare-fun m!5638393 () Bool)

(assert (=> b!4712182 m!5638393))

(declare-fun m!5638395 () Bool)

(assert (=> b!4712181 m!5638395))

(declare-fun m!5638397 () Bool)

(assert (=> b!4712185 m!5638397))

(declare-fun m!5638399 () Bool)

(assert (=> b!4712185 m!5638399))

(declare-fun m!5638401 () Bool)

(assert (=> b!4712185 m!5638401))

(declare-fun m!5638403 () Bool)

(assert (=> b!4712185 m!5638403))

(assert (=> b!4712185 m!5638399))

(declare-fun m!5638405 () Bool)

(assert (=> b!4712185 m!5638405))

(declare-fun m!5638407 () Bool)

(assert (=> b!4712185 m!5638407))

(declare-fun m!5638409 () Bool)

(assert (=> b!4712185 m!5638409))

(declare-fun m!5638411 () Bool)

(assert (=> b!4712185 m!5638411))

(declare-fun m!5638413 () Bool)

(assert (=> b!4712185 m!5638413))

(declare-fun m!5638415 () Bool)

(assert (=> b!4712185 m!5638415))

(declare-fun m!5638417 () Bool)

(assert (=> b!4712185 m!5638417))

(declare-fun m!5638419 () Bool)

(assert (=> b!4712185 m!5638419))

(declare-fun m!5638421 () Bool)

(assert (=> b!4712188 m!5638421))

(declare-fun m!5638423 () Bool)

(assert (=> b!4712189 m!5638423))

(assert (=> b!4712189 m!5638423))

(declare-fun m!5638425 () Bool)

(assert (=> b!4712189 m!5638425))

(declare-fun m!5638427 () Bool)

(assert (=> b!4712193 m!5638427))

(declare-fun m!5638429 () Bool)

(assert (=> b!4712192 m!5638429))

(declare-fun m!5638431 () Bool)

(assert (=> b!4712183 m!5638431))

(assert (=> b!4712183 m!5638431))

(declare-fun m!5638433 () Bool)

(assert (=> b!4712183 m!5638433))

(declare-fun m!5638435 () Bool)

(assert (=> b!4712183 m!5638435))

(declare-fun m!5638437 () Bool)

(assert (=> start!478896 m!5638437))

(declare-fun m!5638439 () Bool)

(assert (=> start!478896 m!5638439))

(declare-fun m!5638441 () Bool)

(assert (=> b!4712191 m!5638441))

(declare-fun m!5638443 () Bool)

(assert (=> b!4712186 m!5638443))

(declare-fun m!5638445 () Bool)

(assert (=> b!4712178 m!5638445))

(check-sat (not b!4712185) (not b!4712182) (not b!4712181) (not b!4712177) (not b!4712192) (not b!4712179) (not b!4712193) (not b!4712183) tp_is_empty!31159 (not b!4712184) (not b!4712186) (not b!4712180) (not b!4712178) (not b!4712189) tp_is_empty!31157 (not b!4712187) (not b!4712188) (not start!478896) (not b!4712191))
(check-sat)
(get-model)

(declare-fun d!1499419 () Bool)

(assert (=> d!1499419 true))

(assert (=> d!1499419 true))

(declare-fun lambda!213034 () Int)

(declare-fun forall!11504 (List!52827 Int) Bool)

(assert (=> d!1499419 (= (allKeysSameHash!1792 oldBucket!34 hash!405 hashF!1323) (forall!11504 oldBucket!34 lambda!213034))))

(declare-fun bs!1102529 () Bool)

(assert (= bs!1102529 d!1499419))

(declare-fun m!5638453 () Bool)

(assert (=> bs!1102529 m!5638453))

(assert (=> b!4712179 d!1499419))

(declare-fun d!1499421 () Bool)

(declare-fun res!1991842 () Bool)

(declare-fun e!2939013 () Bool)

(assert (=> d!1499421 (=> res!1991842 e!2939013)))

(assert (=> d!1499421 (= res!1991842 (not ((_ is Cons!52703) newBucket!218)))))

(assert (=> d!1499421 (= (noDuplicateKeys!1966 newBucket!218) e!2939013)))

(declare-fun b!4712208 () Bool)

(declare-fun e!2939014 () Bool)

(assert (=> b!4712208 (= e!2939013 e!2939014)))

(declare-fun res!1991843 () Bool)

(assert (=> b!4712208 (=> (not res!1991843) (not e!2939014))))

(assert (=> b!4712208 (= res!1991843 (not (containsKey!3277 (t!360069 newBucket!218) (_1!30423 (h!59018 newBucket!218)))))))

(declare-fun b!4712209 () Bool)

(assert (=> b!4712209 (= e!2939014 (noDuplicateKeys!1966 (t!360069 newBucket!218)))))

(assert (= (and d!1499421 (not res!1991842)) b!4712208))

(assert (= (and b!4712208 res!1991843) b!4712209))

(declare-fun m!5638455 () Bool)

(assert (=> b!4712208 m!5638455))

(declare-fun m!5638457 () Bool)

(assert (=> b!4712209 m!5638457))

(assert (=> b!4712178 d!1499421))

(declare-fun bs!1102533 () Bool)

(declare-fun b!4712241 () Bool)

(assert (= bs!1102533 (and b!4712241 d!1499419)))

(declare-fun lambda!213095 () Int)

(assert (=> bs!1102533 (not (= lambda!213095 lambda!213034))))

(assert (=> b!4712241 true))

(declare-fun bs!1102534 () Bool)

(declare-fun b!4712240 () Bool)

(assert (= bs!1102534 (and b!4712240 d!1499419)))

(declare-fun lambda!213096 () Int)

(assert (=> bs!1102534 (not (= lambda!213096 lambda!213034))))

(declare-fun bs!1102535 () Bool)

(assert (= bs!1102535 (and b!4712240 b!4712241)))

(assert (=> bs!1102535 (= lambda!213096 lambda!213095)))

(assert (=> b!4712240 true))

(declare-fun lambda!213097 () Int)

(assert (=> bs!1102534 (not (= lambda!213097 lambda!213034))))

(declare-fun lt!1876745 () ListMap!5185)

(assert (=> bs!1102535 (= (= lt!1876745 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) (= lambda!213097 lambda!213095))))

(assert (=> b!4712240 (= (= lt!1876745 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) (= lambda!213097 lambda!213096))))

(assert (=> b!4712240 true))

(declare-fun bs!1102536 () Bool)

(declare-fun d!1499423 () Bool)

(assert (= bs!1102536 (and d!1499423 d!1499419)))

(declare-fun lambda!213098 () Int)

(assert (=> bs!1102536 (not (= lambda!213098 lambda!213034))))

(declare-fun bs!1102537 () Bool)

(assert (= bs!1102537 (and d!1499423 b!4712241)))

(declare-fun lt!1876743 () ListMap!5185)

(assert (=> bs!1102537 (= (= lt!1876743 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) (= lambda!213098 lambda!213095))))

(declare-fun bs!1102538 () Bool)

(assert (= bs!1102538 (and d!1499423 b!4712240)))

(assert (=> bs!1102538 (= (= lt!1876743 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) (= lambda!213098 lambda!213096))))

(assert (=> bs!1102538 (= (= lt!1876743 lt!1876745) (= lambda!213098 lambda!213097))))

(assert (=> d!1499423 true))

(declare-fun bm!329464 () Bool)

(declare-fun c!804967 () Bool)

(declare-fun call!329469 () Bool)

(assert (=> bm!329464 (= call!329469 (forall!11504 (ite c!804967 (toList!5821 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) (_2!30424 (h!59019 (toList!5822 lm!2023)))) (ite c!804967 lambda!213095 lambda!213097)))))

(declare-fun bm!329465 () Bool)

(declare-fun call!329471 () Unit!128170)

(declare-fun lemmaContainsAllItsOwnKeys!767 (ListMap!5185) Unit!128170)

(assert (=> bm!329465 (= call!329471 (lemmaContainsAllItsOwnKeys!767 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))))))

(declare-fun bm!329466 () Bool)

(declare-fun lt!1876754 () ListMap!5185)

(declare-fun call!329470 () Bool)

(assert (=> bm!329466 (= call!329470 (forall!11504 (ite c!804967 (toList!5821 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) (toList!5821 lt!1876754)) (ite c!804967 lambda!213095 lambda!213097)))))

(declare-fun b!4712237 () Bool)

(declare-fun res!1991859 () Bool)

(declare-fun e!2939032 () Bool)

(assert (=> b!4712237 (=> (not res!1991859) (not e!2939032))))

(assert (=> b!4712237 (= res!1991859 (forall!11504 (toList!5821 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) lambda!213098))))

(declare-fun b!4712239 () Bool)

(declare-fun invariantList!1479 (List!52827) Bool)

(assert (=> b!4712239 (= e!2939032 (invariantList!1479 (toList!5821 lt!1876743)))))

(declare-fun e!2939031 () ListMap!5185)

(assert (=> b!4712240 (= e!2939031 lt!1876745)))

(declare-fun +!2227 (ListMap!5185 tuple2!54258) ListMap!5185)

(assert (=> b!4712240 (= lt!1876754 (+!2227 (extractMap!1992 (t!360070 (toList!5822 lm!2023))) (h!59018 (_2!30424 (h!59019 (toList!5822 lm!2023))))))))

(assert (=> b!4712240 (= lt!1876745 (addToMapMapFromBucket!1396 (t!360069 (_2!30424 (h!59019 (toList!5822 lm!2023)))) (+!2227 (extractMap!1992 (t!360070 (toList!5822 lm!2023))) (h!59018 (_2!30424 (h!59019 (toList!5822 lm!2023)))))))))

(declare-fun lt!1876760 () Unit!128170)

(assert (=> b!4712240 (= lt!1876760 call!329471)))

(assert (=> b!4712240 (forall!11504 (toList!5821 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) lambda!213096)))

(declare-fun lt!1876750 () Unit!128170)

(assert (=> b!4712240 (= lt!1876750 lt!1876760)))

(assert (=> b!4712240 call!329470))

(declare-fun lt!1876749 () Unit!128170)

(declare-fun Unit!128172 () Unit!128170)

(assert (=> b!4712240 (= lt!1876749 Unit!128172)))

(assert (=> b!4712240 (forall!11504 (t!360069 (_2!30424 (h!59019 (toList!5822 lm!2023)))) lambda!213097)))

(declare-fun lt!1876741 () Unit!128170)

(declare-fun Unit!128173 () Unit!128170)

(assert (=> b!4712240 (= lt!1876741 Unit!128173)))

(declare-fun lt!1876757 () Unit!128170)

(declare-fun Unit!128174 () Unit!128170)

(assert (=> b!4712240 (= lt!1876757 Unit!128174)))

(declare-fun lt!1876755 () Unit!128170)

(declare-fun forallContained!3573 (List!52827 Int tuple2!54258) Unit!128170)

(assert (=> b!4712240 (= lt!1876755 (forallContained!3573 (toList!5821 lt!1876754) lambda!213097 (h!59018 (_2!30424 (h!59019 (toList!5822 lm!2023))))))))

(assert (=> b!4712240 (contains!16010 lt!1876754 (_1!30423 (h!59018 (_2!30424 (h!59019 (toList!5822 lm!2023))))))))

(declare-fun lt!1876744 () Unit!128170)

(declare-fun Unit!128175 () Unit!128170)

(assert (=> b!4712240 (= lt!1876744 Unit!128175)))

(assert (=> b!4712240 (contains!16010 lt!1876745 (_1!30423 (h!59018 (_2!30424 (h!59019 (toList!5822 lm!2023))))))))

(declare-fun lt!1876740 () Unit!128170)

(declare-fun Unit!128176 () Unit!128170)

(assert (=> b!4712240 (= lt!1876740 Unit!128176)))

(assert (=> b!4712240 call!329469))

(declare-fun lt!1876756 () Unit!128170)

(declare-fun Unit!128177 () Unit!128170)

(assert (=> b!4712240 (= lt!1876756 Unit!128177)))

(assert (=> b!4712240 (forall!11504 (toList!5821 lt!1876754) lambda!213097)))

(declare-fun lt!1876751 () Unit!128170)

(declare-fun Unit!128178 () Unit!128170)

(assert (=> b!4712240 (= lt!1876751 Unit!128178)))

(declare-fun lt!1876748 () Unit!128170)

(declare-fun Unit!128179 () Unit!128170)

(assert (=> b!4712240 (= lt!1876748 Unit!128179)))

(declare-fun lt!1876758 () Unit!128170)

(declare-fun addForallContainsKeyThenBeforeAdding!766 (ListMap!5185 ListMap!5185 K!14065 V!14311) Unit!128170)

(assert (=> b!4712240 (= lt!1876758 (addForallContainsKeyThenBeforeAdding!766 (extractMap!1992 (t!360070 (toList!5822 lm!2023))) lt!1876745 (_1!30423 (h!59018 (_2!30424 (h!59019 (toList!5822 lm!2023))))) (_2!30423 (h!59018 (_2!30424 (h!59019 (toList!5822 lm!2023)))))))))

(assert (=> b!4712240 (forall!11504 (toList!5821 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) lambda!213097)))

(declare-fun lt!1876747 () Unit!128170)

(assert (=> b!4712240 (= lt!1876747 lt!1876758)))

(assert (=> b!4712240 (forall!11504 (toList!5821 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) lambda!213097)))

(declare-fun lt!1876752 () Unit!128170)

(declare-fun Unit!128180 () Unit!128170)

(assert (=> b!4712240 (= lt!1876752 Unit!128180)))

(declare-fun res!1991861 () Bool)

(assert (=> b!4712240 (= res!1991861 (forall!11504 (_2!30424 (h!59019 (toList!5822 lm!2023))) lambda!213097))))

(declare-fun e!2939030 () Bool)

(assert (=> b!4712240 (=> (not res!1991861) (not e!2939030))))

(assert (=> b!4712240 e!2939030))

(declare-fun lt!1876742 () Unit!128170)

(declare-fun Unit!128181 () Unit!128170)

(assert (=> b!4712240 (= lt!1876742 Unit!128181)))

(assert (=> b!4712241 (= e!2939031 (extractMap!1992 (t!360070 (toList!5822 lm!2023))))))

(declare-fun lt!1876746 () Unit!128170)

(assert (=> b!4712241 (= lt!1876746 call!329471)))

(assert (=> b!4712241 call!329469))

(declare-fun lt!1876753 () Unit!128170)

(assert (=> b!4712241 (= lt!1876753 lt!1876746)))

(assert (=> b!4712241 call!329470))

(declare-fun lt!1876759 () Unit!128170)

(declare-fun Unit!128182 () Unit!128170)

(assert (=> b!4712241 (= lt!1876759 Unit!128182)))

(assert (=> d!1499423 e!2939032))

(declare-fun res!1991860 () Bool)

(assert (=> d!1499423 (=> (not res!1991860) (not e!2939032))))

(assert (=> d!1499423 (= res!1991860 (forall!11504 (_2!30424 (h!59019 (toList!5822 lm!2023))) lambda!213098))))

(assert (=> d!1499423 (= lt!1876743 e!2939031)))

(assert (=> d!1499423 (= c!804967 ((_ is Nil!52703) (_2!30424 (h!59019 (toList!5822 lm!2023)))))))

(assert (=> d!1499423 (noDuplicateKeys!1966 (_2!30424 (h!59019 (toList!5822 lm!2023))))))

(assert (=> d!1499423 (= (addToMapMapFromBucket!1396 (_2!30424 (h!59019 (toList!5822 lm!2023))) (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) lt!1876743)))

(declare-fun b!4712238 () Bool)

(assert (=> b!4712238 (= e!2939030 (forall!11504 (toList!5821 (extractMap!1992 (t!360070 (toList!5822 lm!2023)))) lambda!213097))))

(assert (= (and d!1499423 c!804967) b!4712241))

(assert (= (and d!1499423 (not c!804967)) b!4712240))

(assert (= (and b!4712240 res!1991861) b!4712238))

(assert (= (or b!4712241 b!4712240) bm!329465))

(assert (= (or b!4712241 b!4712240) bm!329466))

(assert (= (or b!4712241 b!4712240) bm!329464))

(assert (= (and d!1499423 res!1991860) b!4712237))

(assert (= (and b!4712237 res!1991859) b!4712239))

(declare-fun m!5638493 () Bool)

(assert (=> d!1499423 m!5638493))

(declare-fun m!5638495 () Bool)

(assert (=> d!1499423 m!5638495))

(declare-fun m!5638497 () Bool)

(assert (=> bm!329464 m!5638497))

(declare-fun m!5638499 () Bool)

(assert (=> b!4712240 m!5638499))

(declare-fun m!5638501 () Bool)

(assert (=> b!4712240 m!5638501))

(declare-fun m!5638503 () Bool)

(assert (=> b!4712240 m!5638503))

(assert (=> b!4712240 m!5638423))

(declare-fun m!5638505 () Bool)

(assert (=> b!4712240 m!5638505))

(declare-fun m!5638507 () Bool)

(assert (=> b!4712240 m!5638507))

(declare-fun m!5638509 () Bool)

(assert (=> b!4712240 m!5638509))

(assert (=> b!4712240 m!5638423))

(declare-fun m!5638511 () Bool)

(assert (=> b!4712240 m!5638511))

(assert (=> b!4712240 m!5638505))

(declare-fun m!5638513 () Bool)

(assert (=> b!4712240 m!5638513))

(declare-fun m!5638515 () Bool)

(assert (=> b!4712240 m!5638515))

(declare-fun m!5638517 () Bool)

(assert (=> b!4712240 m!5638517))

(assert (=> b!4712240 m!5638499))

(declare-fun m!5638519 () Bool)

(assert (=> b!4712240 m!5638519))

(declare-fun m!5638521 () Bool)

(assert (=> bm!329466 m!5638521))

(declare-fun m!5638523 () Bool)

(assert (=> b!4712239 m!5638523))

(assert (=> b!4712238 m!5638499))

(assert (=> bm!329465 m!5638423))

(declare-fun m!5638525 () Bool)

(assert (=> bm!329465 m!5638525))

(declare-fun m!5638527 () Bool)

(assert (=> b!4712237 m!5638527))

(assert (=> b!4712189 d!1499423))

(declare-fun bs!1102540 () Bool)

(declare-fun d!1499427 () Bool)

(assert (= bs!1102540 (and d!1499427 start!478896)))

(declare-fun lambda!213104 () Int)

(assert (=> bs!1102540 (= lambda!213104 lambda!213031)))

(declare-fun lt!1876766 () ListMap!5185)

(assert (=> d!1499427 (invariantList!1479 (toList!5821 lt!1876766))))

(declare-fun e!2939038 () ListMap!5185)

(assert (=> d!1499427 (= lt!1876766 e!2939038)))

(declare-fun c!804973 () Bool)

(assert (=> d!1499427 (= c!804973 ((_ is Cons!52704) (t!360070 (toList!5822 lm!2023))))))

(assert (=> d!1499427 (forall!11503 (t!360070 (toList!5822 lm!2023)) lambda!213104)))

(assert (=> d!1499427 (= (extractMap!1992 (t!360070 (toList!5822 lm!2023))) lt!1876766)))

(declare-fun b!4712254 () Bool)

(assert (=> b!4712254 (= e!2939038 (addToMapMapFromBucket!1396 (_2!30424 (h!59019 (t!360070 (toList!5822 lm!2023)))) (extractMap!1992 (t!360070 (t!360070 (toList!5822 lm!2023))))))))

(declare-fun b!4712255 () Bool)

(assert (=> b!4712255 (= e!2939038 (ListMap!5186 Nil!52703))))

(assert (= (and d!1499427 c!804973) b!4712254))

(assert (= (and d!1499427 (not c!804973)) b!4712255))

(declare-fun m!5638537 () Bool)

(assert (=> d!1499427 m!5638537))

(declare-fun m!5638539 () Bool)

(assert (=> d!1499427 m!5638539))

(declare-fun m!5638541 () Bool)

(assert (=> b!4712254 m!5638541))

(assert (=> b!4712254 m!5638541))

(declare-fun m!5638543 () Bool)

(assert (=> b!4712254 m!5638543))

(assert (=> b!4712189 d!1499427))

(declare-fun d!1499431 () Bool)

(declare-fun tail!8879 (List!52828) List!52828)

(assert (=> d!1499431 (= (tail!8878 lm!2023) (ListLongMap!4352 (tail!8879 (toList!5822 lm!2023))))))

(declare-fun bs!1102541 () Bool)

(assert (= bs!1102541 d!1499431))

(declare-fun m!5638545 () Bool)

(assert (=> bs!1102541 m!5638545))

(assert (=> b!4712188 d!1499431))

(declare-fun b!4712294 () Bool)

(declare-fun e!2939067 () Unit!128170)

(declare-fun Unit!128193 () Unit!128170)

(assert (=> b!4712294 (= e!2939067 Unit!128193)))

(declare-fun b!4712295 () Bool)

(declare-fun e!2939064 () Unit!128170)

(assert (=> b!4712295 (= e!2939064 e!2939067)))

(declare-fun c!804988 () Bool)

(declare-fun call!329476 () Bool)

(assert (=> b!4712295 (= c!804988 call!329476)))

(declare-fun b!4712296 () Bool)

(declare-fun e!2939068 () Bool)

(declare-fun e!2939065 () Bool)

(assert (=> b!4712296 (= e!2939068 e!2939065)))

(declare-fun res!1991876 () Bool)

(assert (=> b!4712296 (=> (not res!1991876) (not e!2939065))))

(declare-datatypes ((Option!12280 0))(
  ( (None!12279) (Some!12279 (v!46814 V!14311)) )
))
(declare-fun isDefined!9535 (Option!12280) Bool)

(declare-fun getValueByKey!1906 (List!52827 K!14065) Option!12280)

(assert (=> b!4712296 (= res!1991876 (isDefined!9535 (getValueByKey!1906 (toList!5821 lt!1876632) key!4653)))))

(declare-fun b!4712297 () Bool)

(declare-fun e!2939066 () Bool)

(declare-datatypes ((List!52829 0))(
  ( (Nil!52705) (Cons!52705 (h!59022 K!14065) (t!360071 List!52829)) )
))
(declare-fun contains!16013 (List!52829 K!14065) Bool)

(declare-fun keys!18894 (ListMap!5185) List!52829)

(assert (=> b!4712297 (= e!2939066 (not (contains!16013 (keys!18894 lt!1876632) key!4653)))))

(declare-fun d!1499433 () Bool)

(assert (=> d!1499433 e!2939068))

(declare-fun res!1991874 () Bool)

(assert (=> d!1499433 (=> res!1991874 e!2939068)))

(assert (=> d!1499433 (= res!1991874 e!2939066)))

(declare-fun res!1991875 () Bool)

(assert (=> d!1499433 (=> (not res!1991875) (not e!2939066))))

(declare-fun lt!1876801 () Bool)

(assert (=> d!1499433 (= res!1991875 (not lt!1876801))))

(declare-fun lt!1876799 () Bool)

(assert (=> d!1499433 (= lt!1876801 lt!1876799)))

(declare-fun lt!1876803 () Unit!128170)

(assert (=> d!1499433 (= lt!1876803 e!2939064)))

(declare-fun c!804987 () Bool)

(assert (=> d!1499433 (= c!804987 lt!1876799)))

(declare-fun containsKey!3278 (List!52827 K!14065) Bool)

(assert (=> d!1499433 (= lt!1876799 (containsKey!3278 (toList!5821 lt!1876632) key!4653))))

(assert (=> d!1499433 (= (contains!16010 lt!1876632 key!4653) lt!1876801)))

(declare-fun bm!329471 () Bool)

(declare-fun e!2939063 () List!52829)

(assert (=> bm!329471 (= call!329476 (contains!16013 e!2939063 key!4653))))

(declare-fun c!804986 () Bool)

(assert (=> bm!329471 (= c!804986 c!804987)))

(declare-fun b!4712298 () Bool)

(assert (=> b!4712298 (= e!2939065 (contains!16013 (keys!18894 lt!1876632) key!4653))))

(declare-fun b!4712299 () Bool)

(assert (=> b!4712299 false))

(declare-fun lt!1876802 () Unit!128170)

(declare-fun lt!1876804 () Unit!128170)

(assert (=> b!4712299 (= lt!1876802 lt!1876804)))

(assert (=> b!4712299 (containsKey!3278 (toList!5821 lt!1876632) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!918 (List!52827 K!14065) Unit!128170)

(assert (=> b!4712299 (= lt!1876804 (lemmaInGetKeysListThenContainsKey!918 (toList!5821 lt!1876632) key!4653))))

(declare-fun Unit!128195 () Unit!128170)

(assert (=> b!4712299 (= e!2939067 Unit!128195)))

(declare-fun b!4712300 () Bool)

(declare-fun lt!1876806 () Unit!128170)

(assert (=> b!4712300 (= e!2939064 lt!1876806)))

(declare-fun lt!1876805 () Unit!128170)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1798 (List!52827 K!14065) Unit!128170)

(assert (=> b!4712300 (= lt!1876805 (lemmaContainsKeyImpliesGetValueByKeyDefined!1798 (toList!5821 lt!1876632) key!4653))))

(assert (=> b!4712300 (isDefined!9535 (getValueByKey!1906 (toList!5821 lt!1876632) key!4653))))

(declare-fun lt!1876800 () Unit!128170)

(assert (=> b!4712300 (= lt!1876800 lt!1876805)))

(declare-fun lemmaInListThenGetKeysListContains!914 (List!52827 K!14065) Unit!128170)

(assert (=> b!4712300 (= lt!1876806 (lemmaInListThenGetKeysListContains!914 (toList!5821 lt!1876632) key!4653))))

(assert (=> b!4712300 call!329476))

(declare-fun b!4712301 () Bool)

(assert (=> b!4712301 (= e!2939063 (keys!18894 lt!1876632))))

(declare-fun b!4712302 () Bool)

(declare-fun getKeysList!919 (List!52827) List!52829)

(assert (=> b!4712302 (= e!2939063 (getKeysList!919 (toList!5821 lt!1876632)))))

(assert (= (and d!1499433 c!804987) b!4712300))

(assert (= (and d!1499433 (not c!804987)) b!4712295))

(assert (= (and b!4712295 c!804988) b!4712299))

(assert (= (and b!4712295 (not c!804988)) b!4712294))

(assert (= (or b!4712300 b!4712295) bm!329471))

(assert (= (and bm!329471 c!804986) b!4712302))

(assert (= (and bm!329471 (not c!804986)) b!4712301))

(assert (= (and d!1499433 res!1991875) b!4712297))

(assert (= (and d!1499433 (not res!1991874)) b!4712296))

(assert (= (and b!4712296 res!1991876) b!4712298))

(declare-fun m!5638549 () Bool)

(assert (=> b!4712298 m!5638549))

(assert (=> b!4712298 m!5638549))

(declare-fun m!5638551 () Bool)

(assert (=> b!4712298 m!5638551))

(declare-fun m!5638553 () Bool)

(assert (=> b!4712299 m!5638553))

(declare-fun m!5638555 () Bool)

(assert (=> b!4712299 m!5638555))

(assert (=> b!4712301 m!5638549))

(assert (=> b!4712297 m!5638549))

(assert (=> b!4712297 m!5638549))

(assert (=> b!4712297 m!5638551))

(declare-fun m!5638557 () Bool)

(assert (=> b!4712296 m!5638557))

(assert (=> b!4712296 m!5638557))

(declare-fun m!5638559 () Bool)

(assert (=> b!4712296 m!5638559))

(assert (=> d!1499433 m!5638553))

(declare-fun m!5638563 () Bool)

(assert (=> b!4712300 m!5638563))

(assert (=> b!4712300 m!5638557))

(assert (=> b!4712300 m!5638557))

(assert (=> b!4712300 m!5638559))

(declare-fun m!5638567 () Bool)

(assert (=> b!4712300 m!5638567))

(declare-fun m!5638569 () Bool)

(assert (=> bm!329471 m!5638569))

(declare-fun m!5638573 () Bool)

(assert (=> b!4712302 m!5638573))

(assert (=> b!4712182 d!1499433))

(declare-fun bs!1102545 () Bool)

(declare-fun d!1499437 () Bool)

(assert (= bs!1102545 (and d!1499437 start!478896)))

(declare-fun lambda!213108 () Int)

(assert (=> bs!1102545 (= lambda!213108 lambda!213031)))

(declare-fun bs!1102546 () Bool)

(assert (= bs!1102546 (and d!1499437 d!1499427)))

(assert (=> bs!1102546 (= lambda!213108 lambda!213104)))

(declare-fun lt!1876815 () ListMap!5185)

(assert (=> d!1499437 (invariantList!1479 (toList!5821 lt!1876815))))

(declare-fun e!2939075 () ListMap!5185)

(assert (=> d!1499437 (= lt!1876815 e!2939075)))

(declare-fun c!804992 () Bool)

(assert (=> d!1499437 (= c!804992 ((_ is Cons!52704) (toList!5822 lm!2023)))))

(assert (=> d!1499437 (forall!11503 (toList!5822 lm!2023) lambda!213108)))

(assert (=> d!1499437 (= (extractMap!1992 (toList!5822 lm!2023)) lt!1876815)))

(declare-fun b!4712312 () Bool)

(assert (=> b!4712312 (= e!2939075 (addToMapMapFromBucket!1396 (_2!30424 (h!59019 (toList!5822 lm!2023))) (extractMap!1992 (t!360070 (toList!5822 lm!2023)))))))

(declare-fun b!4712313 () Bool)

(assert (=> b!4712313 (= e!2939075 (ListMap!5186 Nil!52703))))

(assert (= (and d!1499437 c!804992) b!4712312))

(assert (= (and d!1499437 (not c!804992)) b!4712313))

(declare-fun m!5638589 () Bool)

(assert (=> d!1499437 m!5638589))

(declare-fun m!5638591 () Bool)

(assert (=> d!1499437 m!5638591))

(assert (=> b!4712312 m!5638423))

(assert (=> b!4712312 m!5638423))

(assert (=> b!4712312 m!5638425))

(assert (=> b!4712182 d!1499437))

(declare-fun d!1499441 () Bool)

(declare-fun hash!4298 (Hashable!6335 K!14065) (_ BitVec 64))

(assert (=> d!1499441 (= (hash!4296 hashF!1323 key!4653) (hash!4298 hashF!1323 key!4653))))

(declare-fun bs!1102550 () Bool)

(assert (= bs!1102550 d!1499441))

(declare-fun m!5638597 () Bool)

(assert (=> bs!1102550 m!5638597))

(assert (=> b!4712193 d!1499441))

(declare-fun d!1499445 () Bool)

(assert (=> d!1499445 (= (head!10166 (toList!5822 lm!2023)) (h!59019 (toList!5822 lm!2023)))))

(assert (=> b!4712192 d!1499445))

(declare-fun d!1499447 () Bool)

(declare-fun res!1991888 () Bool)

(declare-fun e!2939085 () Bool)

(assert (=> d!1499447 (=> res!1991888 e!2939085)))

(assert (=> d!1499447 (= res!1991888 ((_ is Nil!52704) (toList!5822 lm!2023)))))

(assert (=> d!1499447 (= (forall!11503 (toList!5822 lm!2023) lambda!213031) e!2939085)))

(declare-fun b!4712324 () Bool)

(declare-fun e!2939086 () Bool)

(assert (=> b!4712324 (= e!2939085 e!2939086)))

(declare-fun res!1991889 () Bool)

(assert (=> b!4712324 (=> (not res!1991889) (not e!2939086))))

(declare-fun dynLambda!21782 (Int tuple2!54260) Bool)

(assert (=> b!4712324 (= res!1991889 (dynLambda!21782 lambda!213031 (h!59019 (toList!5822 lm!2023))))))

(declare-fun b!4712325 () Bool)

(assert (=> b!4712325 (= e!2939086 (forall!11503 (t!360070 (toList!5822 lm!2023)) lambda!213031))))

(assert (= (and d!1499447 (not res!1991888)) b!4712324))

(assert (= (and b!4712324 res!1991889) b!4712325))

(declare-fun b_lambda!177677 () Bool)

(assert (=> (not b_lambda!177677) (not b!4712324)))

(declare-fun m!5638601 () Bool)

(assert (=> b!4712324 m!5638601))

(declare-fun m!5638603 () Bool)

(assert (=> b!4712325 m!5638603))

(assert (=> start!478896 d!1499447))

(declare-fun d!1499451 () Bool)

(declare-fun isStrictlySorted!718 (List!52828) Bool)

(assert (=> d!1499451 (= (inv!67939 lm!2023) (isStrictlySorted!718 (toList!5822 lm!2023)))))

(declare-fun bs!1102552 () Bool)

(assert (= bs!1102552 d!1499451))

(declare-fun m!5638609 () Bool)

(assert (=> bs!1102552 m!5638609))

(assert (=> start!478896 d!1499451))

(declare-fun d!1499455 () Bool)

(declare-fun lt!1876822 () List!52827)

(assert (=> d!1499455 (not (containsKey!3277 lt!1876822 key!4653))))

(declare-fun e!2939093 () List!52827)

(assert (=> d!1499455 (= lt!1876822 e!2939093)))

(declare-fun c!804998 () Bool)

(assert (=> d!1499455 (= c!804998 (and ((_ is Cons!52703) oldBucket!34) (= (_1!30423 (h!59018 oldBucket!34)) key!4653)))))

(assert (=> d!1499455 (noDuplicateKeys!1966 oldBucket!34)))

(assert (=> d!1499455 (= (removePairForKey!1561 oldBucket!34 key!4653) lt!1876822)))

(declare-fun b!4712337 () Bool)

(assert (=> b!4712337 (= e!2939093 (t!360069 oldBucket!34))))

(declare-fun b!4712340 () Bool)

(declare-fun e!2939094 () List!52827)

(assert (=> b!4712340 (= e!2939094 Nil!52703)))

(declare-fun b!4712339 () Bool)

(assert (=> b!4712339 (= e!2939094 (Cons!52703 (h!59018 oldBucket!34) (removePairForKey!1561 (t!360069 oldBucket!34) key!4653)))))

(declare-fun b!4712338 () Bool)

(assert (=> b!4712338 (= e!2939093 e!2939094)))

(declare-fun c!804999 () Bool)

(assert (=> b!4712338 (= c!804999 ((_ is Cons!52703) oldBucket!34))))

(assert (= (and d!1499455 c!804998) b!4712337))

(assert (= (and d!1499455 (not c!804998)) b!4712338))

(assert (= (and b!4712338 c!804999) b!4712339))

(assert (= (and b!4712338 (not c!804999)) b!4712340))

(declare-fun m!5638619 () Bool)

(assert (=> d!1499455 m!5638619))

(assert (=> d!1499455 m!5638441))

(declare-fun m!5638621 () Bool)

(assert (=> b!4712339 m!5638621))

(assert (=> b!4712181 d!1499455))

(declare-fun d!1499463 () Bool)

(declare-fun res!1991892 () Bool)

(declare-fun e!2939095 () Bool)

(assert (=> d!1499463 (=> res!1991892 e!2939095)))

(assert (=> d!1499463 (= res!1991892 (not ((_ is Cons!52703) oldBucket!34)))))

(assert (=> d!1499463 (= (noDuplicateKeys!1966 oldBucket!34) e!2939095)))

(declare-fun b!4712341 () Bool)

(declare-fun e!2939096 () Bool)

(assert (=> b!4712341 (= e!2939095 e!2939096)))

(declare-fun res!1991893 () Bool)

(assert (=> b!4712341 (=> (not res!1991893) (not e!2939096))))

(assert (=> b!4712341 (= res!1991893 (not (containsKey!3277 (t!360069 oldBucket!34) (_1!30423 (h!59018 oldBucket!34)))))))

(declare-fun b!4712342 () Bool)

(assert (=> b!4712342 (= e!2939096 (noDuplicateKeys!1966 (t!360069 oldBucket!34)))))

(assert (= (and d!1499463 (not res!1991892)) b!4712341))

(assert (= (and b!4712341 res!1991893) b!4712342))

(declare-fun m!5638623 () Bool)

(assert (=> b!4712341 m!5638623))

(declare-fun m!5638625 () Bool)

(assert (=> b!4712342 m!5638625))

(assert (=> b!4712191 d!1499463))

(declare-fun b!4712359 () Bool)

(declare-fun e!2939111 () Bool)

(declare-fun e!2939107 () Bool)

(assert (=> b!4712359 (= e!2939111 e!2939107)))

(declare-fun res!1991902 () Bool)

(assert (=> b!4712359 (=> (not res!1991902) (not e!2939107))))

(declare-fun lt!1876828 () Option!12279)

(assert (=> b!4712359 (= res!1991902 (isDefined!9534 lt!1876828))))

(declare-fun b!4712360 () Bool)

(declare-fun e!2939110 () Option!12279)

(assert (=> b!4712360 (= e!2939110 None!12278)))

(declare-fun b!4712362 () Bool)

(assert (=> b!4712362 (= e!2939110 (getPair!532 (t!360069 lt!1876626) key!4653))))

(declare-fun b!4712363 () Bool)

(declare-fun e!2939108 () Option!12279)

(assert (=> b!4712363 (= e!2939108 e!2939110)))

(declare-fun c!805004 () Bool)

(assert (=> b!4712363 (= c!805004 ((_ is Cons!52703) lt!1876626))))

(declare-fun b!4712364 () Bool)

(declare-fun res!1991903 () Bool)

(assert (=> b!4712364 (=> (not res!1991903) (not e!2939107))))

(declare-fun get!17663 (Option!12279) tuple2!54258)

(assert (=> b!4712364 (= res!1991903 (= (_1!30423 (get!17663 lt!1876828)) key!4653))))

(declare-fun b!4712365 () Bool)

(assert (=> b!4712365 (= e!2939108 (Some!12278 (h!59018 lt!1876626)))))

(declare-fun b!4712366 () Bool)

(declare-fun e!2939109 () Bool)

(assert (=> b!4712366 (= e!2939109 (not (containsKey!3277 lt!1876626 key!4653)))))

(declare-fun b!4712361 () Bool)

(declare-fun contains!16015 (List!52827 tuple2!54258) Bool)

(assert (=> b!4712361 (= e!2939107 (contains!16015 lt!1876626 (get!17663 lt!1876828)))))

(declare-fun d!1499465 () Bool)

(assert (=> d!1499465 e!2939111))

(declare-fun res!1991905 () Bool)

(assert (=> d!1499465 (=> res!1991905 e!2939111)))

(assert (=> d!1499465 (= res!1991905 e!2939109)))

(declare-fun res!1991904 () Bool)

(assert (=> d!1499465 (=> (not res!1991904) (not e!2939109))))

(declare-fun isEmpty!29151 (Option!12279) Bool)

(assert (=> d!1499465 (= res!1991904 (isEmpty!29151 lt!1876828))))

(assert (=> d!1499465 (= lt!1876828 e!2939108)))

(declare-fun c!805005 () Bool)

(assert (=> d!1499465 (= c!805005 (and ((_ is Cons!52703) lt!1876626) (= (_1!30423 (h!59018 lt!1876626)) key!4653)))))

(assert (=> d!1499465 (noDuplicateKeys!1966 lt!1876626)))

(assert (=> d!1499465 (= (getPair!532 lt!1876626 key!4653) lt!1876828)))

(assert (= (and d!1499465 c!805005) b!4712365))

(assert (= (and d!1499465 (not c!805005)) b!4712363))

(assert (= (and b!4712363 c!805004) b!4712362))

(assert (= (and b!4712363 (not c!805004)) b!4712360))

(assert (= (and d!1499465 res!1991904) b!4712366))

(assert (= (and d!1499465 (not res!1991905)) b!4712359))

(assert (= (and b!4712359 res!1991902) b!4712364))

(assert (= (and b!4712364 res!1991903) b!4712361))

(declare-fun m!5638637 () Bool)

(assert (=> b!4712361 m!5638637))

(assert (=> b!4712361 m!5638637))

(declare-fun m!5638639 () Bool)

(assert (=> b!4712361 m!5638639))

(declare-fun m!5638641 () Bool)

(assert (=> b!4712366 m!5638641))

(declare-fun m!5638643 () Bool)

(assert (=> d!1499465 m!5638643))

(declare-fun m!5638645 () Bool)

(assert (=> d!1499465 m!5638645))

(assert (=> b!4712364 m!5638637))

(declare-fun m!5638647 () Bool)

(assert (=> b!4712362 m!5638647))

(declare-fun m!5638649 () Bool)

(assert (=> b!4712359 m!5638649))

(assert (=> b!4712185 d!1499465))

(declare-fun d!1499471 () Bool)

(declare-datatypes ((Option!12282 0))(
  ( (None!12281) (Some!12281 (v!46816 List!52827)) )
))
(declare-fun get!17664 (Option!12282) List!52827)

(declare-fun getValueByKey!1908 (List!52828 (_ BitVec 64)) Option!12282)

(assert (=> d!1499471 (= (apply!12415 lm!2023 lt!1876630) (get!17664 (getValueByKey!1908 (toList!5822 lm!2023) lt!1876630)))))

(declare-fun bs!1102562 () Bool)

(assert (= bs!1102562 d!1499471))

(declare-fun m!5638651 () Bool)

(assert (=> bs!1102562 m!5638651))

(assert (=> bs!1102562 m!5638651))

(declare-fun m!5638653 () Bool)

(assert (=> bs!1102562 m!5638653))

(assert (=> b!4712185 d!1499471))

(declare-fun d!1499473 () Bool)

(assert (=> d!1499473 (dynLambda!21782 lambda!213031 lt!1876629)))

(declare-fun lt!1876834 () Unit!128170)

(declare-fun choose!33138 (List!52828 Int tuple2!54260) Unit!128170)

(assert (=> d!1499473 (= lt!1876834 (choose!33138 (toList!5822 lm!2023) lambda!213031 lt!1876629))))

(declare-fun e!2939120 () Bool)

(assert (=> d!1499473 e!2939120))

(declare-fun res!1991914 () Bool)

(assert (=> d!1499473 (=> (not res!1991914) (not e!2939120))))

(assert (=> d!1499473 (= res!1991914 (forall!11503 (toList!5822 lm!2023) lambda!213031))))

(assert (=> d!1499473 (= (forallContained!3572 (toList!5822 lm!2023) lambda!213031 lt!1876629) lt!1876834)))

(declare-fun b!4712375 () Bool)

(assert (=> b!4712375 (= e!2939120 (contains!16011 (toList!5822 lm!2023) lt!1876629))))

(assert (= (and d!1499473 res!1991914) b!4712375))

(declare-fun b_lambda!177681 () Bool)

(assert (=> (not b_lambda!177681) (not d!1499473)))

(declare-fun m!5638661 () Bool)

(assert (=> d!1499473 m!5638661))

(declare-fun m!5638663 () Bool)

(assert (=> d!1499473 m!5638663))

(assert (=> d!1499473 m!5638437))

(assert (=> b!4712375 m!5638419))

(assert (=> b!4712185 d!1499473))

(declare-fun bs!1102563 () Bool)

(declare-fun d!1499477 () Bool)

(assert (= bs!1102563 (and d!1499477 start!478896)))

(declare-fun lambda!213115 () Int)

(assert (=> bs!1102563 (= lambda!213115 lambda!213031)))

(declare-fun bs!1102564 () Bool)

(assert (= bs!1102564 (and d!1499477 d!1499427)))

(assert (=> bs!1102564 (= lambda!213115 lambda!213104)))

(declare-fun bs!1102565 () Bool)

(assert (= bs!1102565 (and d!1499477 d!1499437)))

(assert (=> bs!1102565 (= lambda!213115 lambda!213108)))

(assert (=> d!1499477 (contains!16012 lm!2023 (hash!4296 hashF!1323 key!4653))))

(declare-fun lt!1876837 () Unit!128170)

(declare-fun choose!33139 (ListLongMap!4351 K!14065 Hashable!6335) Unit!128170)

(assert (=> d!1499477 (= lt!1876837 (choose!33139 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1499477 (forall!11503 (toList!5822 lm!2023) lambda!213115)))

(assert (=> d!1499477 (= (lemmaInGenMapThenLongMapContainsHash!738 lm!2023 key!4653 hashF!1323) lt!1876837)))

(declare-fun bs!1102566 () Bool)

(assert (= bs!1102566 d!1499477))

(assert (=> bs!1102566 m!5638427))

(assert (=> bs!1102566 m!5638427))

(declare-fun m!5638665 () Bool)

(assert (=> bs!1102566 m!5638665))

(declare-fun m!5638667 () Bool)

(assert (=> bs!1102566 m!5638667))

(declare-fun m!5638669 () Bool)

(assert (=> bs!1102566 m!5638669))

(assert (=> b!4712185 d!1499477))

(declare-fun bs!1102572 () Bool)

(declare-fun d!1499479 () Bool)

(assert (= bs!1102572 (and d!1499479 start!478896)))

(declare-fun lambda!213129 () Int)

(assert (=> bs!1102572 (= lambda!213129 lambda!213031)))

(declare-fun bs!1102573 () Bool)

(assert (= bs!1102573 (and d!1499479 d!1499427)))

(assert (=> bs!1102573 (= lambda!213129 lambda!213104)))

(declare-fun bs!1102574 () Bool)

(assert (= bs!1102574 (and d!1499479 d!1499437)))

(assert (=> bs!1102574 (= lambda!213129 lambda!213108)))

(declare-fun bs!1102575 () Bool)

(assert (= bs!1102575 (and d!1499479 d!1499477)))

(assert (=> bs!1102575 (= lambda!213129 lambda!213115)))

(declare-fun lt!1876882 () List!52827)

(declare-fun e!2939138 () Bool)

(declare-fun b!4712405 () Bool)

(declare-fun lt!1876884 () (_ BitVec 64))

(assert (=> b!4712405 (= e!2939138 (= (getValueByKey!1908 (toList!5822 lm!2023) lt!1876884) (Some!12281 lt!1876882)))))

(declare-fun e!2939137 () Bool)

(assert (=> d!1499479 e!2939137))

(declare-fun res!1991941 () Bool)

(assert (=> d!1499479 (=> (not res!1991941) (not e!2939137))))

(assert (=> d!1499479 (= res!1991941 (forall!11503 (toList!5822 lm!2023) lambda!213129))))

(declare-fun lt!1876879 () Unit!128170)

(declare-fun choose!33140 (ListLongMap!4351 K!14065 Hashable!6335) Unit!128170)

(assert (=> d!1499479 (= lt!1876879 (choose!33140 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1499479 (forall!11503 (toList!5822 lm!2023) lambda!213129)))

(assert (=> d!1499479 (= (lemmaInGenMapThenGetPairDefined!328 lm!2023 key!4653 hashF!1323) lt!1876879)))

(declare-fun b!4712402 () Bool)

(declare-fun res!1991942 () Bool)

(assert (=> b!4712402 (=> (not res!1991942) (not e!2939137))))

(assert (=> b!4712402 (= res!1991942 (allKeysSameHashInMap!1880 lm!2023 hashF!1323))))

(declare-fun b!4712404 () Bool)

(assert (=> b!4712404 (= e!2939137 (isDefined!9534 (getPair!532 (apply!12415 lm!2023 (hash!4296 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1876878 () Unit!128170)

(assert (=> b!4712404 (= lt!1876878 (forallContained!3572 (toList!5822 lm!2023) lambda!213129 (tuple2!54261 (hash!4296 hashF!1323 key!4653) (apply!12415 lm!2023 (hash!4296 hashF!1323 key!4653)))))))

(declare-fun lt!1876880 () Unit!128170)

(declare-fun lt!1876883 () Unit!128170)

(assert (=> b!4712404 (= lt!1876880 lt!1876883)))

(assert (=> b!4712404 (contains!16011 (toList!5822 lm!2023) (tuple2!54261 lt!1876884 lt!1876882))))

(assert (=> b!4712404 (= lt!1876883 (lemmaGetValueImpliesTupleContained!337 lm!2023 lt!1876884 lt!1876882))))

(assert (=> b!4712404 e!2939138))

(declare-fun res!1991943 () Bool)

(assert (=> b!4712404 (=> (not res!1991943) (not e!2939138))))

(assert (=> b!4712404 (= res!1991943 (contains!16012 lm!2023 lt!1876884))))

(assert (=> b!4712404 (= lt!1876882 (apply!12415 lm!2023 (hash!4296 hashF!1323 key!4653)))))

(assert (=> b!4712404 (= lt!1876884 (hash!4296 hashF!1323 key!4653))))

(declare-fun lt!1876881 () Unit!128170)

(declare-fun lt!1876885 () Unit!128170)

(assert (=> b!4712404 (= lt!1876881 lt!1876885)))

(assert (=> b!4712404 (contains!16012 lm!2023 (hash!4296 hashF!1323 key!4653))))

(assert (=> b!4712404 (= lt!1876885 (lemmaInGenMapThenLongMapContainsHash!738 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4712403 () Bool)

(declare-fun res!1991944 () Bool)

(assert (=> b!4712403 (=> (not res!1991944) (not e!2939137))))

(assert (=> b!4712403 (= res!1991944 (contains!16010 (extractMap!1992 (toList!5822 lm!2023)) key!4653))))

(assert (= (and d!1499479 res!1991941) b!4712402))

(assert (= (and b!4712402 res!1991942) b!4712403))

(assert (= (and b!4712403 res!1991944) b!4712404))

(assert (= (and b!4712404 res!1991943) b!4712405))

(declare-fun m!5638695 () Bool)

(assert (=> b!4712405 m!5638695))

(assert (=> b!4712404 m!5638427))

(declare-fun m!5638697 () Bool)

(assert (=> b!4712404 m!5638697))

(assert (=> b!4712404 m!5638401))

(declare-fun m!5638699 () Bool)

(assert (=> b!4712404 m!5638699))

(declare-fun m!5638701 () Bool)

(assert (=> b!4712404 m!5638701))

(declare-fun m!5638703 () Bool)

(assert (=> b!4712404 m!5638703))

(declare-fun m!5638705 () Bool)

(assert (=> b!4712404 m!5638705))

(declare-fun m!5638707 () Bool)

(assert (=> b!4712404 m!5638707))

(assert (=> b!4712404 m!5638699))

(assert (=> b!4712404 m!5638427))

(assert (=> b!4712404 m!5638707))

(assert (=> b!4712404 m!5638427))

(assert (=> b!4712404 m!5638665))

(declare-fun m!5638709 () Bool)

(assert (=> b!4712404 m!5638709))

(declare-fun m!5638711 () Bool)

(assert (=> d!1499479 m!5638711))

(declare-fun m!5638713 () Bool)

(assert (=> d!1499479 m!5638713))

(assert (=> d!1499479 m!5638711))

(assert (=> b!4712403 m!5638393))

(assert (=> b!4712403 m!5638393))

(declare-fun m!5638715 () Bool)

(assert (=> b!4712403 m!5638715))

(assert (=> b!4712402 m!5638389))

(assert (=> b!4712185 d!1499479))

(declare-fun d!1499485 () Bool)

(declare-fun lt!1876891 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9341 (List!52828) (InoxSet tuple2!54260))

(assert (=> d!1499485 (= lt!1876891 (select (content!9341 (toList!5822 lm!2023)) lt!1876629))))

(declare-fun e!2939159 () Bool)

(assert (=> d!1499485 (= lt!1876891 e!2939159)))

(declare-fun res!1991962 () Bool)

(assert (=> d!1499485 (=> (not res!1991962) (not e!2939159))))

(assert (=> d!1499485 (= res!1991962 ((_ is Cons!52704) (toList!5822 lm!2023)))))

(assert (=> d!1499485 (= (contains!16011 (toList!5822 lm!2023) lt!1876629) lt!1876891)))

(declare-fun b!4712434 () Bool)

(declare-fun e!2939158 () Bool)

(assert (=> b!4712434 (= e!2939159 e!2939158)))

(declare-fun res!1991961 () Bool)

(assert (=> b!4712434 (=> res!1991961 e!2939158)))

(assert (=> b!4712434 (= res!1991961 (= (h!59019 (toList!5822 lm!2023)) lt!1876629))))

(declare-fun b!4712435 () Bool)

(assert (=> b!4712435 (= e!2939158 (contains!16011 (t!360070 (toList!5822 lm!2023)) lt!1876629))))

(assert (= (and d!1499485 res!1991962) b!4712434))

(assert (= (and b!4712434 (not res!1991961)) b!4712435))

(declare-fun m!5638717 () Bool)

(assert (=> d!1499485 m!5638717))

(declare-fun m!5638719 () Bool)

(assert (=> d!1499485 m!5638719))

(declare-fun m!5638721 () Bool)

(assert (=> b!4712435 m!5638721))

(assert (=> b!4712185 d!1499485))

(declare-fun d!1499487 () Bool)

(assert (=> d!1499487 (containsKey!3277 oldBucket!34 key!4653)))

(declare-fun lt!1876894 () Unit!128170)

(declare-fun choose!33142 (List!52827 K!14065 Hashable!6335) Unit!128170)

(assert (=> d!1499487 (= lt!1876894 (choose!33142 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1499487 (noDuplicateKeys!1966 oldBucket!34)))

(assert (=> d!1499487 (= (lemmaGetPairDefinedThenContainsKey!280 oldBucket!34 key!4653 hashF!1323) lt!1876894)))

(declare-fun bs!1102576 () Bool)

(assert (= bs!1102576 d!1499487))

(assert (=> bs!1102576 m!5638417))

(declare-fun m!5638737 () Bool)

(assert (=> bs!1102576 m!5638737))

(assert (=> bs!1102576 m!5638441))

(assert (=> b!4712185 d!1499487))

(declare-fun d!1499491 () Bool)

(declare-fun res!1991972 () Bool)

(declare-fun e!2939169 () Bool)

(assert (=> d!1499491 (=> res!1991972 e!2939169)))

(assert (=> d!1499491 (= res!1991972 (and ((_ is Cons!52703) (t!360069 oldBucket!34)) (= (_1!30423 (h!59018 (t!360069 oldBucket!34))) key!4653)))))

(assert (=> d!1499491 (= (containsKey!3277 (t!360069 oldBucket!34) key!4653) e!2939169)))

(declare-fun b!4712445 () Bool)

(declare-fun e!2939170 () Bool)

(assert (=> b!4712445 (= e!2939169 e!2939170)))

(declare-fun res!1991973 () Bool)

(assert (=> b!4712445 (=> (not res!1991973) (not e!2939170))))

(assert (=> b!4712445 (= res!1991973 ((_ is Cons!52703) (t!360069 oldBucket!34)))))

(declare-fun b!4712446 () Bool)

(assert (=> b!4712446 (= e!2939170 (containsKey!3277 (t!360069 (t!360069 oldBucket!34)) key!4653))))

(assert (= (and d!1499491 (not res!1991972)) b!4712445))

(assert (= (and b!4712445 res!1991973) b!4712446))

(declare-fun m!5638743 () Bool)

(assert (=> b!4712446 m!5638743))

(assert (=> b!4712185 d!1499491))

(declare-fun d!1499497 () Bool)

(declare-fun res!1991974 () Bool)

(declare-fun e!2939171 () Bool)

(assert (=> d!1499497 (=> res!1991974 e!2939171)))

(assert (=> d!1499497 (= res!1991974 (and ((_ is Cons!52703) oldBucket!34) (= (_1!30423 (h!59018 oldBucket!34)) key!4653)))))

(assert (=> d!1499497 (= (containsKey!3277 oldBucket!34 key!4653) e!2939171)))

(declare-fun b!4712447 () Bool)

(declare-fun e!2939172 () Bool)

(assert (=> b!4712447 (= e!2939171 e!2939172)))

(declare-fun res!1991975 () Bool)

(assert (=> b!4712447 (=> (not res!1991975) (not e!2939172))))

(assert (=> b!4712447 (= res!1991975 ((_ is Cons!52703) oldBucket!34))))

(declare-fun b!4712448 () Bool)

(assert (=> b!4712448 (= e!2939172 (containsKey!3277 (t!360069 oldBucket!34) key!4653))))

(assert (= (and d!1499497 (not res!1991974)) b!4712447))

(assert (= (and b!4712447 res!1991975) b!4712448))

(assert (=> b!4712448 m!5638411))

(assert (=> b!4712185 d!1499497))

(declare-fun d!1499499 () Bool)

(assert (=> d!1499499 (contains!16011 (toList!5822 lm!2023) (tuple2!54261 lt!1876630 lt!1876626))))

(declare-fun lt!1876903 () Unit!128170)

(declare-fun choose!33143 (ListLongMap!4351 (_ BitVec 64) List!52827) Unit!128170)

(assert (=> d!1499499 (= lt!1876903 (choose!33143 lm!2023 lt!1876630 lt!1876626))))

(assert (=> d!1499499 (contains!16012 lm!2023 lt!1876630)))

(assert (=> d!1499499 (= (lemmaGetValueImpliesTupleContained!337 lm!2023 lt!1876630 lt!1876626) lt!1876903)))

(declare-fun bs!1102578 () Bool)

(assert (= bs!1102578 d!1499499))

(declare-fun m!5638747 () Bool)

(assert (=> bs!1102578 m!5638747))

(declare-fun m!5638749 () Bool)

(assert (=> bs!1102578 m!5638749))

(assert (=> bs!1102578 m!5638409))

(assert (=> b!4712185 d!1499499))

(declare-fun d!1499503 () Bool)

(assert (=> d!1499503 (= (isDefined!9534 (getPair!532 lt!1876626 key!4653)) (not (isEmpty!29151 (getPair!532 lt!1876626 key!4653))))))

(declare-fun bs!1102579 () Bool)

(assert (= bs!1102579 d!1499503))

(assert (=> bs!1102579 m!5638399))

(declare-fun m!5638751 () Bool)

(assert (=> bs!1102579 m!5638751))

(assert (=> b!4712185 d!1499503))

(declare-fun d!1499505 () Bool)

(declare-fun e!2939184 () Bool)

(assert (=> d!1499505 e!2939184))

(declare-fun res!1991981 () Bool)

(assert (=> d!1499505 (=> res!1991981 e!2939184)))

(declare-fun lt!1876927 () Bool)

(assert (=> d!1499505 (= res!1991981 (not lt!1876927))))

(declare-fun lt!1876926 () Bool)

(assert (=> d!1499505 (= lt!1876927 lt!1876926)))

(declare-fun lt!1876925 () Unit!128170)

(declare-fun e!2939183 () Unit!128170)

(assert (=> d!1499505 (= lt!1876925 e!2939183)))

(declare-fun c!805017 () Bool)

(assert (=> d!1499505 (= c!805017 lt!1876926)))

(declare-fun containsKey!3280 (List!52828 (_ BitVec 64)) Bool)

(assert (=> d!1499505 (= lt!1876926 (containsKey!3280 (toList!5822 lm!2023) lt!1876630))))

(assert (=> d!1499505 (= (contains!16012 lm!2023 lt!1876630) lt!1876927)))

(declare-fun b!4712465 () Bool)

(declare-fun lt!1876924 () Unit!128170)

(assert (=> b!4712465 (= e!2939183 lt!1876924)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1800 (List!52828 (_ BitVec 64)) Unit!128170)

(assert (=> b!4712465 (= lt!1876924 (lemmaContainsKeyImpliesGetValueByKeyDefined!1800 (toList!5822 lm!2023) lt!1876630))))

(declare-fun isDefined!9537 (Option!12282) Bool)

(assert (=> b!4712465 (isDefined!9537 (getValueByKey!1908 (toList!5822 lm!2023) lt!1876630))))

(declare-fun b!4712466 () Bool)

(declare-fun Unit!128198 () Unit!128170)

(assert (=> b!4712466 (= e!2939183 Unit!128198)))

(declare-fun b!4712467 () Bool)

(assert (=> b!4712467 (= e!2939184 (isDefined!9537 (getValueByKey!1908 (toList!5822 lm!2023) lt!1876630)))))

(assert (= (and d!1499505 c!805017) b!4712465))

(assert (= (and d!1499505 (not c!805017)) b!4712466))

(assert (= (and d!1499505 (not res!1991981)) b!4712467))

(declare-fun m!5638759 () Bool)

(assert (=> d!1499505 m!5638759))

(declare-fun m!5638761 () Bool)

(assert (=> b!4712465 m!5638761))

(assert (=> b!4712465 m!5638651))

(assert (=> b!4712465 m!5638651))

(declare-fun m!5638763 () Bool)

(assert (=> b!4712465 m!5638763))

(assert (=> b!4712467 m!5638651))

(assert (=> b!4712467 m!5638651))

(assert (=> b!4712467 m!5638763))

(assert (=> b!4712185 d!1499505))

(declare-fun d!1499509 () Bool)

(declare-fun lt!1876928 () List!52827)

(assert (=> d!1499509 (not (containsKey!3277 lt!1876928 key!4653))))

(declare-fun e!2939185 () List!52827)

(assert (=> d!1499509 (= lt!1876928 e!2939185)))

(declare-fun c!805018 () Bool)

(assert (=> d!1499509 (= c!805018 (and ((_ is Cons!52703) (tail!8877 oldBucket!34)) (= (_1!30423 (h!59018 (tail!8877 oldBucket!34))) key!4653)))))

(assert (=> d!1499509 (noDuplicateKeys!1966 (tail!8877 oldBucket!34))))

(assert (=> d!1499509 (= (removePairForKey!1561 (tail!8877 oldBucket!34) key!4653) lt!1876928)))

(declare-fun b!4712472 () Bool)

(assert (=> b!4712472 (= e!2939185 (t!360069 (tail!8877 oldBucket!34)))))

(declare-fun b!4712475 () Bool)

(declare-fun e!2939186 () List!52827)

(assert (=> b!4712475 (= e!2939186 Nil!52703)))

(declare-fun b!4712474 () Bool)

(assert (=> b!4712474 (= e!2939186 (Cons!52703 (h!59018 (tail!8877 oldBucket!34)) (removePairForKey!1561 (t!360069 (tail!8877 oldBucket!34)) key!4653)))))

(declare-fun b!4712473 () Bool)

(assert (=> b!4712473 (= e!2939185 e!2939186)))

(declare-fun c!805019 () Bool)

(assert (=> b!4712473 (= c!805019 ((_ is Cons!52703) (tail!8877 oldBucket!34)))))

(assert (= (and d!1499509 c!805018) b!4712472))

(assert (= (and d!1499509 (not c!805018)) b!4712473))

(assert (= (and b!4712473 c!805019) b!4712474))

(assert (= (and b!4712473 (not c!805019)) b!4712475))

(declare-fun m!5638765 () Bool)

(assert (=> d!1499509 m!5638765))

(assert (=> d!1499509 m!5638431))

(declare-fun m!5638767 () Bool)

(assert (=> d!1499509 m!5638767))

(declare-fun m!5638769 () Bool)

(assert (=> b!4712474 m!5638769))

(assert (=> b!4712183 d!1499509))

(declare-fun d!1499511 () Bool)

(assert (=> d!1499511 (= (tail!8877 oldBucket!34) (t!360069 oldBucket!34))))

(assert (=> b!4712183 d!1499511))

(declare-fun d!1499515 () Bool)

(assert (=> d!1499515 (= (tail!8877 newBucket!218) (t!360069 newBucket!218))))

(assert (=> b!4712183 d!1499515))

(declare-fun bs!1102584 () Bool)

(declare-fun d!1499517 () Bool)

(assert (= bs!1102584 (and d!1499517 d!1499427)))

(declare-fun lambda!213135 () Int)

(assert (=> bs!1102584 (not (= lambda!213135 lambda!213104))))

(declare-fun bs!1102585 () Bool)

(assert (= bs!1102585 (and d!1499517 d!1499479)))

(assert (=> bs!1102585 (not (= lambda!213135 lambda!213129))))

(declare-fun bs!1102586 () Bool)

(assert (= bs!1102586 (and d!1499517 d!1499437)))

(assert (=> bs!1102586 (not (= lambda!213135 lambda!213108))))

(declare-fun bs!1102587 () Bool)

(assert (= bs!1102587 (and d!1499517 d!1499477)))

(assert (=> bs!1102587 (not (= lambda!213135 lambda!213115))))

(declare-fun bs!1102588 () Bool)

(assert (= bs!1102588 (and d!1499517 start!478896)))

(assert (=> bs!1102588 (not (= lambda!213135 lambda!213031))))

(assert (=> d!1499517 true))

(assert (=> d!1499517 (= (allKeysSameHashInMap!1880 lm!2023 hashF!1323) (forall!11503 (toList!5822 lm!2023) lambda!213135))))

(declare-fun bs!1102589 () Bool)

(assert (= bs!1102589 d!1499517))

(declare-fun m!5638773 () Bool)

(assert (=> bs!1102589 m!5638773))

(assert (=> b!4712187 d!1499517))

(declare-fun bs!1102590 () Bool)

(declare-fun d!1499519 () Bool)

(assert (= bs!1102590 (and d!1499519 b!4712240)))

(declare-fun lambda!213136 () Int)

(assert (=> bs!1102590 (not (= lambda!213136 lambda!213097))))

(declare-fun bs!1102591 () Bool)

(assert (= bs!1102591 (and d!1499519 b!4712241)))

(assert (=> bs!1102591 (not (= lambda!213136 lambda!213095))))

(assert (=> bs!1102590 (not (= lambda!213136 lambda!213096))))

(declare-fun bs!1102592 () Bool)

(assert (= bs!1102592 (and d!1499519 d!1499423)))

(assert (=> bs!1102592 (not (= lambda!213136 lambda!213098))))

(declare-fun bs!1102593 () Bool)

(assert (= bs!1102593 (and d!1499519 d!1499419)))

(assert (=> bs!1102593 (= lambda!213136 lambda!213034)))

(assert (=> d!1499519 true))

(assert (=> d!1499519 true))

(assert (=> d!1499519 (= (allKeysSameHash!1792 newBucket!218 hash!405 hashF!1323) (forall!11504 newBucket!218 lambda!213136))))

(declare-fun bs!1102594 () Bool)

(assert (= bs!1102594 d!1499519))

(declare-fun m!5638775 () Bool)

(assert (=> bs!1102594 m!5638775))

(assert (=> b!4712186 d!1499519))

(declare-fun b!4712494 () Bool)

(declare-fun e!2939195 () Bool)

(declare-fun tp!1347630 () Bool)

(declare-fun tp!1347631 () Bool)

(assert (=> b!4712494 (= e!2939195 (and tp!1347630 tp!1347631))))

(assert (=> b!4712184 (= tp!1347625 e!2939195)))

(assert (= (and b!4712184 ((_ is Cons!52704) (toList!5822 lm!2023))) b!4712494))

(declare-fun e!2939200 () Bool)

(declare-fun tp!1347634 () Bool)

(declare-fun b!4712503 () Bool)

(assert (=> b!4712503 (= e!2939200 (and tp_is_empty!31157 tp_is_empty!31159 tp!1347634))))

(assert (=> b!4712177 (= tp!1347623 e!2939200)))

(assert (= (and b!4712177 ((_ is Cons!52703) (t!360069 oldBucket!34))) b!4712503))

(declare-fun tp!1347635 () Bool)

(declare-fun b!4712504 () Bool)

(declare-fun e!2939201 () Bool)

(assert (=> b!4712504 (= e!2939201 (and tp_is_empty!31157 tp_is_empty!31159 tp!1347635))))

(assert (=> b!4712180 (= tp!1347624 e!2939201)))

(assert (= (and b!4712180 ((_ is Cons!52703) (t!360069 newBucket!218))) b!4712504))

(declare-fun b_lambda!177685 () Bool)

(assert (= b_lambda!177677 (or start!478896 b_lambda!177685)))

(declare-fun bs!1102595 () Bool)

(declare-fun d!1499529 () Bool)

(assert (= bs!1102595 (and d!1499529 start!478896)))

(assert (=> bs!1102595 (= (dynLambda!21782 lambda!213031 (h!59019 (toList!5822 lm!2023))) (noDuplicateKeys!1966 (_2!30424 (h!59019 (toList!5822 lm!2023)))))))

(assert (=> bs!1102595 m!5638495))

(assert (=> b!4712324 d!1499529))

(declare-fun b_lambda!177687 () Bool)

(assert (= b_lambda!177681 (or start!478896 b_lambda!177687)))

(declare-fun bs!1102596 () Bool)

(declare-fun d!1499533 () Bool)

(assert (= bs!1102596 (and d!1499533 start!478896)))

(assert (=> bs!1102596 (= (dynLambda!21782 lambda!213031 lt!1876629) (noDuplicateKeys!1966 (_2!30424 lt!1876629)))))

(declare-fun m!5638791 () Bool)

(assert (=> bs!1102596 m!5638791))

(assert (=> d!1499473 d!1499533))

(check-sat (not d!1499517) (not b!4712301) (not d!1499423) (not d!1499479) (not b!4712504) (not b!4712325) (not b!4712359) (not b!4712300) (not b!4712361) (not b!4712494) (not b!4712240) (not b!4712366) (not bm!329464) (not d!1499427) (not b!4712402) tp_is_empty!31159 (not d!1499499) (not d!1499419) (not d!1499519) (not b!4712238) (not bm!329471) (not b!4712503) (not b!4712209) (not d!1499509) (not d!1499431) (not b!4712465) (not b!4712405) (not b!4712364) (not b!4712403) (not b_lambda!177687) (not b!4712342) (not b!4712446) (not b!4712208) (not d!1499437) tp_is_empty!31157 (not bs!1102596) (not b!4712474) (not d!1499433) (not b!4712448) (not b!4712297) (not d!1499477) (not d!1499503) (not b!4712312) (not b_lambda!177685) (not d!1499485) (not b!4712341) (not d!1499455) (not d!1499465) (not b!4712404) (not bs!1102595) (not d!1499451) (not b!4712239) (not b!4712467) (not b!4712375) (not d!1499487) (not b!4712435) (not d!1499441) (not d!1499505) (not b!4712298) (not b!4712339) (not bm!329466) (not d!1499473) (not b!4712362) (not b!4712254) (not d!1499471) (not b!4712302) (not b!4712299) (not b!4712296) (not b!4712237) (not bm!329465))
(check-sat)
