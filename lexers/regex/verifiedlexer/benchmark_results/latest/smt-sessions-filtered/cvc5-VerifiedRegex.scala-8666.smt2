; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!461510 () Bool)

(assert start!461510)

(declare-fun b!4614131 () Bool)

(declare-fun e!2878131 () Bool)

(declare-fun e!2878125 () Bool)

(assert (=> b!4614131 (= e!2878131 e!2878125)))

(declare-fun res!1932853 () Bool)

(assert (=> b!4614131 (=> res!1932853 e!2878125)))

(declare-datatypes ((K!12733 0))(
  ( (K!12734 (val!18457 Int)) )
))
(declare-datatypes ((V!12979 0))(
  ( (V!12980 (val!18458 Int)) )
))
(declare-datatypes ((tuple2!52178 0))(
  ( (tuple2!52179 (_1!29383 K!12733) (_2!29383 V!12979)) )
))
(declare-datatypes ((List!51469 0))(
  ( (Nil!51345) (Cons!51345 (h!57351 tuple2!52178) (t!358467 List!51469)) )
))
(declare-datatypes ((ListMap!4135 0))(
  ( (ListMap!4136 (toList!4831 List!51469)) )
))
(declare-fun lt!1769254 () ListMap!4135)

(declare-fun lt!1769249 () ListMap!4135)

(declare-fun key!4968 () K!12733)

(declare-fun -!523 (ListMap!4135 K!12733) ListMap!4135)

(assert (=> b!4614131 (= res!1932853 (not (= (-!523 lt!1769249 key!4968) lt!1769254)))))

(declare-fun oldBucket!40 () List!51469)

(declare-fun +!1818 (ListMap!4135 tuple2!52178) ListMap!4135)

(assert (=> b!4614131 (= (-!523 (+!1818 lt!1769254 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40)))) key!4968) lt!1769254)))

(declare-datatypes ((Unit!109758 0))(
  ( (Unit!109759) )
))
(declare-fun lt!1769244 () Unit!109758)

(declare-fun addThenRemoveForNewKeyIsSame!6 (ListMap!4135 K!12733 V!12979) Unit!109758)

(assert (=> b!4614131 (= lt!1769244 (addThenRemoveForNewKeyIsSame!6 lt!1769254 key!4968 (_2!29383 (h!57351 oldBucket!40))))))

(declare-fun tp_is_empty!29027 () Bool)

(declare-fun b!4614133 () Bool)

(declare-fun tp_is_empty!29025 () Bool)

(declare-fun e!2878129 () Bool)

(declare-fun tp!1341492 () Bool)

(assert (=> b!4614133 (= e!2878129 (and tp_is_empty!29025 tp_is_empty!29027 tp!1341492))))

(declare-fun b!4614134 () Bool)

(declare-fun res!1932850 () Bool)

(declare-fun e!2878123 () Bool)

(assert (=> b!4614134 (=> res!1932850 e!2878123)))

(declare-fun lt!1769247 () List!51469)

(declare-fun containsKey!2307 (List!51469 K!12733) Bool)

(assert (=> b!4614134 (= res!1932850 (containsKey!2307 lt!1769247 key!4968))))

(declare-fun b!4614135 () Bool)

(declare-fun res!1932852 () Bool)

(assert (=> b!4614135 (=> res!1932852 e!2878123)))

(declare-fun lt!1769253 () ListMap!4135)

(assert (=> b!4614135 (= res!1932852 (not (= lt!1769254 lt!1769253)))))

(declare-fun b!4614136 () Bool)

(declare-fun res!1932858 () Bool)

(declare-fun e!2878130 () Bool)

(assert (=> b!4614136 (=> (not res!1932858) (not e!2878130))))

(declare-fun newBucket!224 () List!51469)

(declare-fun removePairForKey!1056 (List!51469 K!12733) List!51469)

(assert (=> b!4614136 (= res!1932858 (= (removePairForKey!1056 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4614137 () Bool)

(declare-fun e!2878132 () Bool)

(declare-fun e!2878128 () Bool)

(assert (=> b!4614137 (= e!2878132 e!2878128)))

(declare-fun res!1932859 () Bool)

(assert (=> b!4614137 (=> res!1932859 e!2878128)))

(assert (=> b!4614137 (= res!1932859 (not (= lt!1769247 newBucket!224)))))

(declare-fun tail!8080 (List!51469) List!51469)

(assert (=> b!4614137 (= lt!1769247 (tail!8080 oldBucket!40))))

(declare-fun b!4614138 () Bool)

(declare-fun e!2878127 () Bool)

(assert (=> b!4614138 (= e!2878127 e!2878123)))

(declare-fun res!1932846 () Bool)

(assert (=> b!4614138 (=> res!1932846 e!2878123)))

(declare-fun lt!1769252 () ListMap!4135)

(declare-fun eq!776 (ListMap!4135 ListMap!4135) Bool)

(assert (=> b!4614138 (= res!1932846 (not (eq!776 lt!1769249 lt!1769252)))))

(declare-fun addToMapMapFromBucket!894 (List!51469 ListMap!4135) ListMap!4135)

(assert (=> b!4614138 (= lt!1769252 (addToMapMapFromBucket!894 oldBucket!40 (ListMap!4136 Nil!51345)))))

(assert (=> b!4614138 (= lt!1769249 (+!1818 lt!1769254 (h!57351 oldBucket!40)))))

(declare-fun lt!1769250 () tuple2!52178)

(assert (=> b!4614138 (eq!776 (addToMapMapFromBucket!894 (Cons!51345 lt!1769250 lt!1769247) (ListMap!4136 Nil!51345)) (+!1818 lt!1769254 lt!1769250))))

(declare-fun lt!1769245 () Unit!109758)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!27 (tuple2!52178 List!51469 ListMap!4135) Unit!109758)

(assert (=> b!4614138 (= lt!1769245 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!27 lt!1769250 lt!1769247 (ListMap!4136 Nil!51345)))))

(declare-fun head!9593 (List!51469) tuple2!52178)

(assert (=> b!4614138 (= lt!1769250 (head!9593 oldBucket!40))))

(declare-fun b!4614139 () Bool)

(declare-fun res!1932860 () Bool)

(assert (=> b!4614139 (=> (not res!1932860) (not e!2878130))))

(declare-fun noDuplicateKeys!1433 (List!51469) Bool)

(assert (=> b!4614139 (= res!1932860 (noDuplicateKeys!1433 newBucket!224))))

(declare-fun b!4614140 () Bool)

(declare-fun res!1932861 () Bool)

(assert (=> b!4614140 (=> (not res!1932861) (not e!2878130))))

(declare-datatypes ((Hashable!5830 0))(
  ( (HashableExt!5829 (__x!31533 Int)) )
))
(declare-fun hashF!1389 () Hashable!5830)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1287 (List!51469 (_ BitVec 64) Hashable!5830) Bool)

(assert (=> b!4614140 (= res!1932861 (allKeysSameHash!1287 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4614141 () Bool)

(declare-fun e!2878121 () Bool)

(declare-fun lt!1769255 () ListMap!4135)

(assert (=> b!4614141 (= e!2878121 (= lt!1769255 (ListMap!4136 Nil!51345)))))

(declare-fun b!4614142 () Bool)

(assert (=> b!4614142 (= e!2878123 e!2878131)))

(declare-fun res!1932855 () Bool)

(assert (=> b!4614142 (=> res!1932855 e!2878131)))

(declare-fun contains!14311 (ListMap!4135 K!12733) Bool)

(assert (=> b!4614142 (= res!1932855 (contains!14311 lt!1769254 key!4968))))

(assert (=> b!4614142 (not (contains!14311 lt!1769253 key!4968))))

(declare-fun lt!1769251 () Unit!109758)

(declare-datatypes ((tuple2!52180 0))(
  ( (tuple2!52181 (_1!29384 (_ BitVec 64)) (_2!29384 List!51469)) )
))
(declare-datatypes ((List!51470 0))(
  ( (Nil!51346) (Cons!51346 (h!57352 tuple2!52180) (t!358468 List!51470)) )
))
(declare-fun lt!1769246 () List!51470)

(declare-datatypes ((ListLongMap!3421 0))(
  ( (ListLongMap!3422 (toList!4832 List!51470)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!347 (ListLongMap!3421 K!12733 Hashable!5830) Unit!109758)

(assert (=> b!4614142 (= lt!1769251 (lemmaNotInItsHashBucketThenNotInMap!347 (ListLongMap!3422 lt!1769246) key!4968 hashF!1389))))

(declare-fun b!4614143 () Bool)

(declare-fun lt!1769256 () List!51470)

(declare-fun lambda!188945 () Int)

(declare-fun forall!10727 (List!51470 Int) Bool)

(assert (=> b!4614143 (= e!2878125 (forall!10727 lt!1769256 lambda!188945))))

(declare-fun b!4614144 () Bool)

(declare-fun e!2878122 () Bool)

(assert (=> b!4614144 (= e!2878128 e!2878122)))

(declare-fun res!1932851 () Bool)

(assert (=> b!4614144 (=> res!1932851 e!2878122)))

(declare-fun extractMap!1489 (List!51470) ListMap!4135)

(assert (=> b!4614144 (= res!1932851 (not (= lt!1769253 (extractMap!1489 (Cons!51346 (tuple2!52181 hash!414 newBucket!224) Nil!51346)))))))

(assert (=> b!4614144 (= lt!1769253 (extractMap!1489 lt!1769246))))

(assert (=> b!4614144 (= lt!1769246 (Cons!51346 (tuple2!52181 hash!414 lt!1769247) Nil!51346))))

(declare-fun b!4614132 () Bool)

(declare-fun res!1932849 () Bool)

(declare-fun e!2878124 () Bool)

(assert (=> b!4614132 (=> (not res!1932849) (not e!2878124))))

(assert (=> b!4614132 (= res!1932849 (allKeysSameHash!1287 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1932862 () Bool)

(assert (=> start!461510 (=> (not res!1932862) (not e!2878130))))

(assert (=> start!461510 (= res!1932862 (noDuplicateKeys!1433 oldBucket!40))))

(assert (=> start!461510 e!2878130))

(assert (=> start!461510 true))

(declare-fun e!2878126 () Bool)

(assert (=> start!461510 e!2878126))

(assert (=> start!461510 tp_is_empty!29025))

(assert (=> start!461510 e!2878129))

(declare-fun b!4614145 () Bool)

(assert (=> b!4614145 (= e!2878130 e!2878124)))

(declare-fun res!1932857 () Bool)

(assert (=> b!4614145 (=> (not res!1932857) (not e!2878124))))

(declare-fun lt!1769248 () ListMap!4135)

(assert (=> b!4614145 (= res!1932857 (contains!14311 lt!1769248 key!4968))))

(assert (=> b!4614145 (= lt!1769248 (extractMap!1489 lt!1769256))))

(assert (=> b!4614145 (= lt!1769256 (Cons!51346 (tuple2!52181 hash!414 oldBucket!40) Nil!51346))))

(declare-fun tp!1341493 () Bool)

(declare-fun b!4614146 () Bool)

(assert (=> b!4614146 (= e!2878126 (and tp_is_empty!29025 tp_is_empty!29027 tp!1341493))))

(declare-fun b!4614147 () Bool)

(assert (=> b!4614147 (= e!2878122 e!2878127)))

(declare-fun res!1932856 () Bool)

(assert (=> b!4614147 (=> res!1932856 e!2878127)))

(assert (=> b!4614147 (= res!1932856 (not (= lt!1769254 (addToMapMapFromBucket!894 newBucket!224 (ListMap!4136 Nil!51345)))))))

(assert (=> b!4614147 (= lt!1769254 (addToMapMapFromBucket!894 lt!1769247 (ListMap!4136 Nil!51345)))))

(declare-fun b!4614148 () Bool)

(assert (=> b!4614148 (= e!2878124 (not e!2878132))))

(declare-fun res!1932854 () Bool)

(assert (=> b!4614148 (=> res!1932854 e!2878132)))

(assert (=> b!4614148 (= res!1932854 (or (not (is-Cons!51345 oldBucket!40)) (not (= (_1!29383 (h!57351 oldBucket!40)) key!4968))))))

(assert (=> b!4614148 e!2878121))

(declare-fun res!1932848 () Bool)

(assert (=> b!4614148 (=> (not res!1932848) (not e!2878121))))

(assert (=> b!4614148 (= res!1932848 (= lt!1769248 (addToMapMapFromBucket!894 oldBucket!40 lt!1769255)))))

(assert (=> b!4614148 (= lt!1769255 (extractMap!1489 Nil!51346))))

(assert (=> b!4614148 true))

(declare-fun b!4614149 () Bool)

(declare-fun res!1932847 () Bool)

(assert (=> b!4614149 (=> res!1932847 e!2878125)))

(assert (=> b!4614149 (= res!1932847 (not (= lt!1769248 lt!1769252)))))

(declare-fun b!4614150 () Bool)

(declare-fun res!1932845 () Bool)

(assert (=> b!4614150 (=> (not res!1932845) (not e!2878124))))

(declare-fun hash!3380 (Hashable!5830 K!12733) (_ BitVec 64))

(assert (=> b!4614150 (= res!1932845 (= (hash!3380 hashF!1389 key!4968) hash!414))))

(assert (= (and start!461510 res!1932862) b!4614139))

(assert (= (and b!4614139 res!1932860) b!4614136))

(assert (= (and b!4614136 res!1932858) b!4614140))

(assert (= (and b!4614140 res!1932861) b!4614145))

(assert (= (and b!4614145 res!1932857) b!4614150))

(assert (= (and b!4614150 res!1932845) b!4614132))

(assert (= (and b!4614132 res!1932849) b!4614148))

(assert (= (and b!4614148 res!1932848) b!4614141))

(assert (= (and b!4614148 (not res!1932854)) b!4614137))

(assert (= (and b!4614137 (not res!1932859)) b!4614144))

(assert (= (and b!4614144 (not res!1932851)) b!4614147))

(assert (= (and b!4614147 (not res!1932856)) b!4614138))

(assert (= (and b!4614138 (not res!1932846)) b!4614134))

(assert (= (and b!4614134 (not res!1932850)) b!4614135))

(assert (= (and b!4614135 (not res!1932852)) b!4614142))

(assert (= (and b!4614142 (not res!1932855)) b!4614131))

(assert (= (and b!4614131 (not res!1932853)) b!4614149))

(assert (= (and b!4614149 (not res!1932847)) b!4614143))

(assert (= (and start!461510 (is-Cons!51345 oldBucket!40)) b!4614146))

(assert (= (and start!461510 (is-Cons!51345 newBucket!224)) b!4614133))

(declare-fun m!5446143 () Bool)

(assert (=> b!4614137 m!5446143))

(declare-fun m!5446145 () Bool)

(assert (=> b!4614136 m!5446145))

(declare-fun m!5446147 () Bool)

(assert (=> b!4614144 m!5446147))

(declare-fun m!5446149 () Bool)

(assert (=> b!4614144 m!5446149))

(declare-fun m!5446151 () Bool)

(assert (=> b!4614131 m!5446151))

(declare-fun m!5446153 () Bool)

(assert (=> b!4614131 m!5446153))

(assert (=> b!4614131 m!5446153))

(declare-fun m!5446155 () Bool)

(assert (=> b!4614131 m!5446155))

(declare-fun m!5446157 () Bool)

(assert (=> b!4614131 m!5446157))

(declare-fun m!5446159 () Bool)

(assert (=> b!4614147 m!5446159))

(declare-fun m!5446161 () Bool)

(assert (=> b!4614147 m!5446161))

(declare-fun m!5446163 () Bool)

(assert (=> b!4614139 m!5446163))

(declare-fun m!5446165 () Bool)

(assert (=> b!4614140 m!5446165))

(declare-fun m!5446167 () Bool)

(assert (=> b!4614143 m!5446167))

(declare-fun m!5446169 () Bool)

(assert (=> start!461510 m!5446169))

(declare-fun m!5446171 () Bool)

(assert (=> b!4614145 m!5446171))

(declare-fun m!5446173 () Bool)

(assert (=> b!4614145 m!5446173))

(declare-fun m!5446175 () Bool)

(assert (=> b!4614142 m!5446175))

(declare-fun m!5446177 () Bool)

(assert (=> b!4614142 m!5446177))

(declare-fun m!5446179 () Bool)

(assert (=> b!4614142 m!5446179))

(declare-fun m!5446181 () Bool)

(assert (=> b!4614150 m!5446181))

(declare-fun m!5446183 () Bool)

(assert (=> b!4614148 m!5446183))

(declare-fun m!5446185 () Bool)

(assert (=> b!4614148 m!5446185))

(declare-fun m!5446187 () Bool)

(assert (=> b!4614138 m!5446187))

(declare-fun m!5446189 () Bool)

(assert (=> b!4614138 m!5446189))

(declare-fun m!5446191 () Bool)

(assert (=> b!4614138 m!5446191))

(declare-fun m!5446193 () Bool)

(assert (=> b!4614138 m!5446193))

(declare-fun m!5446195 () Bool)

(assert (=> b!4614138 m!5446195))

(assert (=> b!4614138 m!5446187))

(declare-fun m!5446197 () Bool)

(assert (=> b!4614138 m!5446197))

(declare-fun m!5446199 () Bool)

(assert (=> b!4614138 m!5446199))

(declare-fun m!5446201 () Bool)

(assert (=> b!4614138 m!5446201))

(assert (=> b!4614138 m!5446197))

(declare-fun m!5446203 () Bool)

(assert (=> b!4614132 m!5446203))

(declare-fun m!5446205 () Bool)

(assert (=> b!4614134 m!5446205))

(push 1)

(assert (not b!4614140))

(assert (not b!4614138))

(assert (not start!461510))

(assert tp_is_empty!29025)

(assert (not b!4614139))

(assert (not b!4614134))

(assert (not b!4614131))

(assert (not b!4614132))

(assert (not b!4614147))

(assert (not b!4614146))

(assert (not b!4614145))

(assert (not b!4614143))

(assert (not b!4614150))

(assert (not b!4614142))

(assert tp_is_empty!29027)

(assert (not b!4614144))

(assert (not b!4614133))

(assert (not b!4614137))

(assert (not b!4614148))

(assert (not b!4614136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1453415 () Bool)

(assert (=> d!1453415 (= (tail!8080 oldBucket!40) (t!358467 oldBucket!40))))

(assert (=> b!4614137 d!1453415))

(declare-fun b!4614235 () Bool)

(assert (=> b!4614235 true))

(declare-fun bs!1016898 () Bool)

(declare-fun b!4614231 () Bool)

(assert (= bs!1016898 (and b!4614231 b!4614235)))

(declare-fun lambda!188978 () Int)

(declare-fun lambda!188977 () Int)

(assert (=> bs!1016898 (= lambda!188978 lambda!188977)))

(assert (=> b!4614231 true))

(declare-fun lt!1769369 () ListMap!4135)

(declare-fun lambda!188979 () Int)

(assert (=> bs!1016898 (= (= lt!1769369 lt!1769255) (= lambda!188979 lambda!188977))))

(assert (=> b!4614231 (= (= lt!1769369 lt!1769255) (= lambda!188979 lambda!188978))))

(assert (=> b!4614231 true))

(declare-fun bs!1016900 () Bool)

(declare-fun d!1453417 () Bool)

(assert (= bs!1016900 (and d!1453417 b!4614235)))

(declare-fun lambda!188980 () Int)

(declare-fun lt!1769358 () ListMap!4135)

(assert (=> bs!1016900 (= (= lt!1769358 lt!1769255) (= lambda!188980 lambda!188977))))

(declare-fun bs!1016901 () Bool)

(assert (= bs!1016901 (and d!1453417 b!4614231)))

(assert (=> bs!1016901 (= (= lt!1769358 lt!1769255) (= lambda!188980 lambda!188978))))

(assert (=> bs!1016901 (= (= lt!1769358 lt!1769369) (= lambda!188980 lambda!188979))))

(assert (=> d!1453417 true))

(declare-fun c!790005 () Bool)

(declare-fun bm!321629 () Bool)

(declare-fun call!321636 () Bool)

(declare-fun forall!10729 (List!51469 Int) Bool)

(assert (=> bm!321629 (= call!321636 (forall!10729 (ite c!790005 (toList!4831 lt!1769255) oldBucket!40) (ite c!790005 lambda!188977 lambda!188979)))))

(declare-fun e!2878182 () ListMap!4135)

(assert (=> b!4614231 (= e!2878182 lt!1769369)))

(declare-fun lt!1769357 () ListMap!4135)

(assert (=> b!4614231 (= lt!1769357 (+!1818 lt!1769255 (h!57351 oldBucket!40)))))

(assert (=> b!4614231 (= lt!1769369 (addToMapMapFromBucket!894 (t!358467 oldBucket!40) (+!1818 lt!1769255 (h!57351 oldBucket!40))))))

(declare-fun lt!1769366 () Unit!109758)

(declare-fun call!321635 () Unit!109758)

(assert (=> b!4614231 (= lt!1769366 call!321635)))

(assert (=> b!4614231 (forall!10729 (toList!4831 lt!1769255) lambda!188978)))

(declare-fun lt!1769356 () Unit!109758)

(assert (=> b!4614231 (= lt!1769356 lt!1769366)))

(assert (=> b!4614231 (forall!10729 (toList!4831 lt!1769357) lambda!188979)))

(declare-fun lt!1769370 () Unit!109758)

(declare-fun Unit!109762 () Unit!109758)

(assert (=> b!4614231 (= lt!1769370 Unit!109762)))

(assert (=> b!4614231 (forall!10729 (t!358467 oldBucket!40) lambda!188979)))

(declare-fun lt!1769367 () Unit!109758)

(declare-fun Unit!109763 () Unit!109758)

(assert (=> b!4614231 (= lt!1769367 Unit!109763)))

(declare-fun lt!1769364 () Unit!109758)

(declare-fun Unit!109764 () Unit!109758)

(assert (=> b!4614231 (= lt!1769364 Unit!109764)))

(declare-fun lt!1769368 () Unit!109758)

(declare-fun forallContained!2954 (List!51469 Int tuple2!52178) Unit!109758)

(assert (=> b!4614231 (= lt!1769368 (forallContained!2954 (toList!4831 lt!1769357) lambda!188979 (h!57351 oldBucket!40)))))

(assert (=> b!4614231 (contains!14311 lt!1769357 (_1!29383 (h!57351 oldBucket!40)))))

(declare-fun lt!1769355 () Unit!109758)

(declare-fun Unit!109765 () Unit!109758)

(assert (=> b!4614231 (= lt!1769355 Unit!109765)))

(assert (=> b!4614231 (contains!14311 lt!1769369 (_1!29383 (h!57351 oldBucket!40)))))

(declare-fun lt!1769373 () Unit!109758)

(declare-fun Unit!109766 () Unit!109758)

(assert (=> b!4614231 (= lt!1769373 Unit!109766)))

(assert (=> b!4614231 (forall!10729 oldBucket!40 lambda!188979)))

(declare-fun lt!1769363 () Unit!109758)

(declare-fun Unit!109767 () Unit!109758)

(assert (=> b!4614231 (= lt!1769363 Unit!109767)))

(assert (=> b!4614231 (forall!10729 (toList!4831 lt!1769357) lambda!188979)))

(declare-fun lt!1769365 () Unit!109758)

(declare-fun Unit!109768 () Unit!109758)

(assert (=> b!4614231 (= lt!1769365 Unit!109768)))

(declare-fun lt!1769372 () Unit!109758)

(declare-fun Unit!109769 () Unit!109758)

(assert (=> b!4614231 (= lt!1769372 Unit!109769)))

(declare-fun lt!1769359 () Unit!109758)

(declare-fun addForallContainsKeyThenBeforeAdding!461 (ListMap!4135 ListMap!4135 K!12733 V!12979) Unit!109758)

(assert (=> b!4614231 (= lt!1769359 (addForallContainsKeyThenBeforeAdding!461 lt!1769255 lt!1769369 (_1!29383 (h!57351 oldBucket!40)) (_2!29383 (h!57351 oldBucket!40))))))

(assert (=> b!4614231 (forall!10729 (toList!4831 lt!1769255) lambda!188979)))

(declare-fun lt!1769371 () Unit!109758)

(assert (=> b!4614231 (= lt!1769371 lt!1769359)))

(declare-fun call!321634 () Bool)

(assert (=> b!4614231 call!321634))

(declare-fun lt!1769360 () Unit!109758)

(declare-fun Unit!109770 () Unit!109758)

(assert (=> b!4614231 (= lt!1769360 Unit!109770)))

(declare-fun res!1932935 () Bool)

(assert (=> b!4614231 (= res!1932935 call!321636)))

(declare-fun e!2878184 () Bool)

(assert (=> b!4614231 (=> (not res!1932935) (not e!2878184))))

(assert (=> b!4614231 e!2878184))

(declare-fun lt!1769374 () Unit!109758)

(declare-fun Unit!109771 () Unit!109758)

(assert (=> b!4614231 (= lt!1769374 Unit!109771)))

(declare-fun b!4614232 () Bool)

(declare-fun e!2878183 () Bool)

(declare-fun invariantList!1160 (List!51469) Bool)

(assert (=> b!4614232 (= e!2878183 (invariantList!1160 (toList!4831 lt!1769358)))))

(declare-fun b!4614233 () Bool)

(assert (=> b!4614233 (= e!2878184 (forall!10729 (toList!4831 lt!1769255) lambda!188979))))

(declare-fun b!4614234 () Bool)

(declare-fun res!1932933 () Bool)

(assert (=> b!4614234 (=> (not res!1932933) (not e!2878183))))

(assert (=> b!4614234 (= res!1932933 (forall!10729 (toList!4831 lt!1769255) lambda!188980))))

(declare-fun bm!321630 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!462 (ListMap!4135) Unit!109758)

(assert (=> bm!321630 (= call!321635 (lemmaContainsAllItsOwnKeys!462 lt!1769255))))

(declare-fun bm!321631 () Bool)

(assert (=> bm!321631 (= call!321634 (forall!10729 (toList!4831 lt!1769255) (ite c!790005 lambda!188977 lambda!188979)))))

(assert (=> d!1453417 e!2878183))

(declare-fun res!1932934 () Bool)

(assert (=> d!1453417 (=> (not res!1932934) (not e!2878183))))

(assert (=> d!1453417 (= res!1932934 (forall!10729 oldBucket!40 lambda!188980))))

(assert (=> d!1453417 (= lt!1769358 e!2878182)))

(assert (=> d!1453417 (= c!790005 (is-Nil!51345 oldBucket!40))))

(assert (=> d!1453417 (noDuplicateKeys!1433 oldBucket!40)))

(assert (=> d!1453417 (= (addToMapMapFromBucket!894 oldBucket!40 lt!1769255) lt!1769358)))

(assert (=> b!4614235 (= e!2878182 lt!1769255)))

(declare-fun lt!1769362 () Unit!109758)

(assert (=> b!4614235 (= lt!1769362 call!321635)))

(assert (=> b!4614235 call!321636))

(declare-fun lt!1769361 () Unit!109758)

(assert (=> b!4614235 (= lt!1769361 lt!1769362)))

(assert (=> b!4614235 call!321634))

(declare-fun lt!1769354 () Unit!109758)

(declare-fun Unit!109772 () Unit!109758)

(assert (=> b!4614235 (= lt!1769354 Unit!109772)))

(assert (= (and d!1453417 c!790005) b!4614235))

(assert (= (and d!1453417 (not c!790005)) b!4614231))

(assert (= (and b!4614231 res!1932935) b!4614233))

(assert (= (or b!4614235 b!4614231) bm!321630))

(assert (= (or b!4614235 b!4614231) bm!321629))

(assert (= (or b!4614235 b!4614231) bm!321631))

(assert (= (and d!1453417 res!1932934) b!4614234))

(assert (= (and b!4614234 res!1932933) b!4614232))

(declare-fun m!5446311 () Bool)

(assert (=> b!4614232 m!5446311))

(declare-fun m!5446313 () Bool)

(assert (=> d!1453417 m!5446313))

(assert (=> d!1453417 m!5446169))

(declare-fun m!5446315 () Bool)

(assert (=> b!4614233 m!5446315))

(declare-fun m!5446317 () Bool)

(assert (=> bm!321631 m!5446317))

(declare-fun m!5446319 () Bool)

(assert (=> bm!321629 m!5446319))

(declare-fun m!5446321 () Bool)

(assert (=> b!4614231 m!5446321))

(declare-fun m!5446323 () Bool)

(assert (=> b!4614231 m!5446323))

(declare-fun m!5446325 () Bool)

(assert (=> b!4614231 m!5446325))

(assert (=> b!4614231 m!5446321))

(declare-fun m!5446327 () Bool)

(assert (=> b!4614231 m!5446327))

(declare-fun m!5446329 () Bool)

(assert (=> b!4614231 m!5446329))

(declare-fun m!5446331 () Bool)

(assert (=> b!4614231 m!5446331))

(declare-fun m!5446333 () Bool)

(assert (=> b!4614231 m!5446333))

(declare-fun m!5446335 () Bool)

(assert (=> b!4614231 m!5446335))

(assert (=> b!4614231 m!5446329))

(declare-fun m!5446337 () Bool)

(assert (=> b!4614231 m!5446337))

(declare-fun m!5446339 () Bool)

(assert (=> b!4614231 m!5446339))

(assert (=> b!4614231 m!5446315))

(declare-fun m!5446341 () Bool)

(assert (=> bm!321630 m!5446341))

(declare-fun m!5446343 () Bool)

(assert (=> b!4614234 m!5446343))

(assert (=> b!4614148 d!1453417))

(declare-fun bs!1016902 () Bool)

(declare-fun d!1453429 () Bool)

(assert (= bs!1016902 (and d!1453429 b!4614143)))

(declare-fun lambda!188983 () Int)

(assert (=> bs!1016902 (= lambda!188983 lambda!188945)))

(declare-fun lt!1769380 () ListMap!4135)

(assert (=> d!1453429 (invariantList!1160 (toList!4831 lt!1769380))))

(declare-fun e!2878199 () ListMap!4135)

(assert (=> d!1453429 (= lt!1769380 e!2878199)))

(declare-fun c!790008 () Bool)

(assert (=> d!1453429 (= c!790008 (is-Cons!51346 Nil!51346))))

(assert (=> d!1453429 (forall!10727 Nil!51346 lambda!188983)))

(assert (=> d!1453429 (= (extractMap!1489 Nil!51346) lt!1769380)))

(declare-fun b!4614254 () Bool)

(assert (=> b!4614254 (= e!2878199 (addToMapMapFromBucket!894 (_2!29384 (h!57352 Nil!51346)) (extractMap!1489 (t!358468 Nil!51346))))))

(declare-fun b!4614255 () Bool)

(assert (=> b!4614255 (= e!2878199 (ListMap!4136 Nil!51345))))

(assert (= (and d!1453429 c!790008) b!4614254))

(assert (= (and d!1453429 (not c!790008)) b!4614255))

(declare-fun m!5446351 () Bool)

(assert (=> d!1453429 m!5446351))

(declare-fun m!5446353 () Bool)

(assert (=> d!1453429 m!5446353))

(declare-fun m!5446355 () Bool)

(assert (=> b!4614254 m!5446355))

(assert (=> b!4614254 m!5446355))

(declare-fun m!5446357 () Bool)

(assert (=> b!4614254 m!5446357))

(assert (=> b!4614148 d!1453429))

(declare-fun d!1453435 () Bool)

(assert (=> d!1453435 (= (head!9593 oldBucket!40) (h!57351 oldBucket!40))))

(assert (=> b!4614138 d!1453435))

(declare-fun d!1453437 () Bool)

(declare-fun content!8714 (List!51469) (Set tuple2!52178))

(assert (=> d!1453437 (= (eq!776 (addToMapMapFromBucket!894 (Cons!51345 lt!1769250 lt!1769247) (ListMap!4136 Nil!51345)) (+!1818 lt!1769254 lt!1769250)) (= (content!8714 (toList!4831 (addToMapMapFromBucket!894 (Cons!51345 lt!1769250 lt!1769247) (ListMap!4136 Nil!51345)))) (content!8714 (toList!4831 (+!1818 lt!1769254 lt!1769250)))))))

(declare-fun bs!1016903 () Bool)

(assert (= bs!1016903 d!1453437))

(declare-fun m!5446359 () Bool)

(assert (=> bs!1016903 m!5446359))

(declare-fun m!5446361 () Bool)

(assert (=> bs!1016903 m!5446361))

(assert (=> b!4614138 d!1453437))

(declare-fun d!1453439 () Bool)

(declare-fun e!2878202 () Bool)

(assert (=> d!1453439 e!2878202))

(declare-fun res!1932952 () Bool)

(assert (=> d!1453439 (=> (not res!1932952) (not e!2878202))))

(declare-fun lt!1769391 () ListMap!4135)

(assert (=> d!1453439 (= res!1932952 (contains!14311 lt!1769391 (_1!29383 (h!57351 oldBucket!40))))))

(declare-fun lt!1769392 () List!51469)

(assert (=> d!1453439 (= lt!1769391 (ListMap!4136 lt!1769392))))

(declare-fun lt!1769390 () Unit!109758)

(declare-fun lt!1769389 () Unit!109758)

(assert (=> d!1453439 (= lt!1769390 lt!1769389)))

(declare-datatypes ((Option!11463 0))(
  ( (None!11462) (Some!11462 (v!45528 V!12979)) )
))
(declare-fun getValueByKey!1377 (List!51469 K!12733) Option!11463)

(assert (=> d!1453439 (= (getValueByKey!1377 lt!1769392 (_1!29383 (h!57351 oldBucket!40))) (Some!11462 (_2!29383 (h!57351 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!813 (List!51469 K!12733 V!12979) Unit!109758)

(assert (=> d!1453439 (= lt!1769389 (lemmaContainsTupThenGetReturnValue!813 lt!1769392 (_1!29383 (h!57351 oldBucket!40)) (_2!29383 (h!57351 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!321 (List!51469 K!12733 V!12979) List!51469)

(assert (=> d!1453439 (= lt!1769392 (insertNoDuplicatedKeys!321 (toList!4831 lt!1769254) (_1!29383 (h!57351 oldBucket!40)) (_2!29383 (h!57351 oldBucket!40))))))

(assert (=> d!1453439 (= (+!1818 lt!1769254 (h!57351 oldBucket!40)) lt!1769391)))

(declare-fun b!4614260 () Bool)

(declare-fun res!1932953 () Bool)

(assert (=> b!4614260 (=> (not res!1932953) (not e!2878202))))

(assert (=> b!4614260 (= res!1932953 (= (getValueByKey!1377 (toList!4831 lt!1769391) (_1!29383 (h!57351 oldBucket!40))) (Some!11462 (_2!29383 (h!57351 oldBucket!40)))))))

(declare-fun b!4614261 () Bool)

(declare-fun contains!14313 (List!51469 tuple2!52178) Bool)

(assert (=> b!4614261 (= e!2878202 (contains!14313 (toList!4831 lt!1769391) (h!57351 oldBucket!40)))))

(assert (= (and d!1453439 res!1932952) b!4614260))

(assert (= (and b!4614260 res!1932953) b!4614261))

(declare-fun m!5446363 () Bool)

(assert (=> d!1453439 m!5446363))

(declare-fun m!5446365 () Bool)

(assert (=> d!1453439 m!5446365))

(declare-fun m!5446367 () Bool)

(assert (=> d!1453439 m!5446367))

(declare-fun m!5446369 () Bool)

(assert (=> d!1453439 m!5446369))

(declare-fun m!5446371 () Bool)

(assert (=> b!4614260 m!5446371))

(declare-fun m!5446373 () Bool)

(assert (=> b!4614261 m!5446373))

(assert (=> b!4614138 d!1453439))

(declare-fun d!1453441 () Bool)

(assert (=> d!1453441 (= (eq!776 lt!1769249 lt!1769252) (= (content!8714 (toList!4831 lt!1769249)) (content!8714 (toList!4831 lt!1769252))))))

(declare-fun bs!1016904 () Bool)

(assert (= bs!1016904 d!1453441))

(declare-fun m!5446375 () Bool)

(assert (=> bs!1016904 m!5446375))

(declare-fun m!5446377 () Bool)

(assert (=> bs!1016904 m!5446377))

(assert (=> b!4614138 d!1453441))

(declare-fun bs!1016905 () Bool)

(declare-fun b!4614266 () Bool)

(assert (= bs!1016905 (and b!4614266 b!4614235)))

(declare-fun lambda!188984 () Int)

(assert (=> bs!1016905 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188984 lambda!188977))))

(declare-fun bs!1016906 () Bool)

(assert (= bs!1016906 (and b!4614266 b!4614231)))

(assert (=> bs!1016906 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188984 lambda!188978))))

(assert (=> bs!1016906 (= (= (ListMap!4136 Nil!51345) lt!1769369) (= lambda!188984 lambda!188979))))

(declare-fun bs!1016907 () Bool)

(assert (= bs!1016907 (and b!4614266 d!1453417)))

(assert (=> bs!1016907 (= (= (ListMap!4136 Nil!51345) lt!1769358) (= lambda!188984 lambda!188980))))

(assert (=> b!4614266 true))

(declare-fun bs!1016908 () Bool)

(declare-fun b!4614262 () Bool)

(assert (= bs!1016908 (and b!4614262 b!4614231)))

(declare-fun lambda!188985 () Int)

(assert (=> bs!1016908 (= (= (ListMap!4136 Nil!51345) lt!1769369) (= lambda!188985 lambda!188979))))

(declare-fun bs!1016909 () Bool)

(assert (= bs!1016909 (and b!4614262 d!1453417)))

(assert (=> bs!1016909 (= (= (ListMap!4136 Nil!51345) lt!1769358) (= lambda!188985 lambda!188980))))

(assert (=> bs!1016908 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188985 lambda!188978))))

(declare-fun bs!1016910 () Bool)

(assert (= bs!1016910 (and b!4614262 b!4614266)))

(assert (=> bs!1016910 (= lambda!188985 lambda!188984)))

(declare-fun bs!1016911 () Bool)

(assert (= bs!1016911 (and b!4614262 b!4614235)))

(assert (=> bs!1016911 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188985 lambda!188977))))

(assert (=> b!4614262 true))

(declare-fun lt!1769408 () ListMap!4135)

(declare-fun lambda!188986 () Int)

(assert (=> b!4614262 (= (= lt!1769408 (ListMap!4136 Nil!51345)) (= lambda!188986 lambda!188985))))

(assert (=> bs!1016908 (= (= lt!1769408 lt!1769369) (= lambda!188986 lambda!188979))))

(assert (=> bs!1016909 (= (= lt!1769408 lt!1769358) (= lambda!188986 lambda!188980))))

(assert (=> bs!1016908 (= (= lt!1769408 lt!1769255) (= lambda!188986 lambda!188978))))

(assert (=> bs!1016910 (= (= lt!1769408 (ListMap!4136 Nil!51345)) (= lambda!188986 lambda!188984))))

(assert (=> bs!1016911 (= (= lt!1769408 lt!1769255) (= lambda!188986 lambda!188977))))

(assert (=> b!4614262 true))

(declare-fun bs!1016912 () Bool)

(declare-fun d!1453443 () Bool)

(assert (= bs!1016912 (and d!1453443 b!4614262)))

(declare-fun lt!1769397 () ListMap!4135)

(declare-fun lambda!188987 () Int)

(assert (=> bs!1016912 (= (= lt!1769397 (ListMap!4136 Nil!51345)) (= lambda!188987 lambda!188985))))

(declare-fun bs!1016913 () Bool)

(assert (= bs!1016913 (and d!1453443 b!4614231)))

(assert (=> bs!1016913 (= (= lt!1769397 lt!1769369) (= lambda!188987 lambda!188979))))

(declare-fun bs!1016914 () Bool)

(assert (= bs!1016914 (and d!1453443 d!1453417)))

(assert (=> bs!1016914 (= (= lt!1769397 lt!1769358) (= lambda!188987 lambda!188980))))

(assert (=> bs!1016913 (= (= lt!1769397 lt!1769255) (= lambda!188987 lambda!188978))))

(declare-fun bs!1016915 () Bool)

(assert (= bs!1016915 (and d!1453443 b!4614266)))

(assert (=> bs!1016915 (= (= lt!1769397 (ListMap!4136 Nil!51345)) (= lambda!188987 lambda!188984))))

(assert (=> bs!1016912 (= (= lt!1769397 lt!1769408) (= lambda!188987 lambda!188986))))

(declare-fun bs!1016916 () Bool)

(assert (= bs!1016916 (and d!1453443 b!4614235)))

(assert (=> bs!1016916 (= (= lt!1769397 lt!1769255) (= lambda!188987 lambda!188977))))

(assert (=> d!1453443 true))

(declare-fun bm!321632 () Bool)

(declare-fun c!790009 () Bool)

(declare-fun call!321639 () Bool)

(assert (=> bm!321632 (= call!321639 (forall!10729 (ite c!790009 (toList!4831 (ListMap!4136 Nil!51345)) oldBucket!40) (ite c!790009 lambda!188984 lambda!188986)))))

(declare-fun e!2878203 () ListMap!4135)

(assert (=> b!4614262 (= e!2878203 lt!1769408)))

(declare-fun lt!1769396 () ListMap!4135)

(assert (=> b!4614262 (= lt!1769396 (+!1818 (ListMap!4136 Nil!51345) (h!57351 oldBucket!40)))))

(assert (=> b!4614262 (= lt!1769408 (addToMapMapFromBucket!894 (t!358467 oldBucket!40) (+!1818 (ListMap!4136 Nil!51345) (h!57351 oldBucket!40))))))

(declare-fun lt!1769405 () Unit!109758)

(declare-fun call!321638 () Unit!109758)

(assert (=> b!4614262 (= lt!1769405 call!321638)))

(assert (=> b!4614262 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188985)))

(declare-fun lt!1769395 () Unit!109758)

(assert (=> b!4614262 (= lt!1769395 lt!1769405)))

(assert (=> b!4614262 (forall!10729 (toList!4831 lt!1769396) lambda!188986)))

(declare-fun lt!1769409 () Unit!109758)

(declare-fun Unit!109773 () Unit!109758)

(assert (=> b!4614262 (= lt!1769409 Unit!109773)))

(assert (=> b!4614262 (forall!10729 (t!358467 oldBucket!40) lambda!188986)))

(declare-fun lt!1769406 () Unit!109758)

(declare-fun Unit!109774 () Unit!109758)

(assert (=> b!4614262 (= lt!1769406 Unit!109774)))

(declare-fun lt!1769403 () Unit!109758)

(declare-fun Unit!109775 () Unit!109758)

(assert (=> b!4614262 (= lt!1769403 Unit!109775)))

(declare-fun lt!1769407 () Unit!109758)

(assert (=> b!4614262 (= lt!1769407 (forallContained!2954 (toList!4831 lt!1769396) lambda!188986 (h!57351 oldBucket!40)))))

(assert (=> b!4614262 (contains!14311 lt!1769396 (_1!29383 (h!57351 oldBucket!40)))))

(declare-fun lt!1769394 () Unit!109758)

(declare-fun Unit!109776 () Unit!109758)

(assert (=> b!4614262 (= lt!1769394 Unit!109776)))

(assert (=> b!4614262 (contains!14311 lt!1769408 (_1!29383 (h!57351 oldBucket!40)))))

(declare-fun lt!1769412 () Unit!109758)

(declare-fun Unit!109777 () Unit!109758)

(assert (=> b!4614262 (= lt!1769412 Unit!109777)))

(assert (=> b!4614262 (forall!10729 oldBucket!40 lambda!188986)))

(declare-fun lt!1769402 () Unit!109758)

(declare-fun Unit!109778 () Unit!109758)

(assert (=> b!4614262 (= lt!1769402 Unit!109778)))

(assert (=> b!4614262 (forall!10729 (toList!4831 lt!1769396) lambda!188986)))

(declare-fun lt!1769404 () Unit!109758)

(declare-fun Unit!109779 () Unit!109758)

(assert (=> b!4614262 (= lt!1769404 Unit!109779)))

(declare-fun lt!1769411 () Unit!109758)

(declare-fun Unit!109780 () Unit!109758)

(assert (=> b!4614262 (= lt!1769411 Unit!109780)))

(declare-fun lt!1769398 () Unit!109758)

(assert (=> b!4614262 (= lt!1769398 (addForallContainsKeyThenBeforeAdding!461 (ListMap!4136 Nil!51345) lt!1769408 (_1!29383 (h!57351 oldBucket!40)) (_2!29383 (h!57351 oldBucket!40))))))

(assert (=> b!4614262 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188986)))

(declare-fun lt!1769410 () Unit!109758)

(assert (=> b!4614262 (= lt!1769410 lt!1769398)))

(declare-fun call!321637 () Bool)

(assert (=> b!4614262 call!321637))

(declare-fun lt!1769399 () Unit!109758)

(declare-fun Unit!109781 () Unit!109758)

(assert (=> b!4614262 (= lt!1769399 Unit!109781)))

(declare-fun res!1932956 () Bool)

(assert (=> b!4614262 (= res!1932956 call!321639)))

(declare-fun e!2878205 () Bool)

(assert (=> b!4614262 (=> (not res!1932956) (not e!2878205))))

(assert (=> b!4614262 e!2878205))

(declare-fun lt!1769413 () Unit!109758)

(declare-fun Unit!109782 () Unit!109758)

(assert (=> b!4614262 (= lt!1769413 Unit!109782)))

(declare-fun b!4614263 () Bool)

(declare-fun e!2878204 () Bool)

(assert (=> b!4614263 (= e!2878204 (invariantList!1160 (toList!4831 lt!1769397)))))

(declare-fun b!4614264 () Bool)

(assert (=> b!4614264 (= e!2878205 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188986))))

(declare-fun b!4614265 () Bool)

(declare-fun res!1932954 () Bool)

(assert (=> b!4614265 (=> (not res!1932954) (not e!2878204))))

(assert (=> b!4614265 (= res!1932954 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188987))))

(declare-fun bm!321633 () Bool)

(assert (=> bm!321633 (= call!321638 (lemmaContainsAllItsOwnKeys!462 (ListMap!4136 Nil!51345)))))

(declare-fun bm!321634 () Bool)

(assert (=> bm!321634 (= call!321637 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) (ite c!790009 lambda!188984 lambda!188986)))))

(assert (=> d!1453443 e!2878204))

(declare-fun res!1932955 () Bool)

(assert (=> d!1453443 (=> (not res!1932955) (not e!2878204))))

(assert (=> d!1453443 (= res!1932955 (forall!10729 oldBucket!40 lambda!188987))))

(assert (=> d!1453443 (= lt!1769397 e!2878203)))

(assert (=> d!1453443 (= c!790009 (is-Nil!51345 oldBucket!40))))

(assert (=> d!1453443 (noDuplicateKeys!1433 oldBucket!40)))

(assert (=> d!1453443 (= (addToMapMapFromBucket!894 oldBucket!40 (ListMap!4136 Nil!51345)) lt!1769397)))

(assert (=> b!4614266 (= e!2878203 (ListMap!4136 Nil!51345))))

(declare-fun lt!1769401 () Unit!109758)

(assert (=> b!4614266 (= lt!1769401 call!321638)))

(assert (=> b!4614266 call!321639))

(declare-fun lt!1769400 () Unit!109758)

(assert (=> b!4614266 (= lt!1769400 lt!1769401)))

(assert (=> b!4614266 call!321637))

(declare-fun lt!1769393 () Unit!109758)

(declare-fun Unit!109783 () Unit!109758)

(assert (=> b!4614266 (= lt!1769393 Unit!109783)))

(assert (= (and d!1453443 c!790009) b!4614266))

(assert (= (and d!1453443 (not c!790009)) b!4614262))

(assert (= (and b!4614262 res!1932956) b!4614264))

(assert (= (or b!4614266 b!4614262) bm!321633))

(assert (= (or b!4614266 b!4614262) bm!321632))

(assert (= (or b!4614266 b!4614262) bm!321634))

(assert (= (and d!1453443 res!1932955) b!4614265))

(assert (= (and b!4614265 res!1932954) b!4614263))

(declare-fun m!5446379 () Bool)

(assert (=> b!4614263 m!5446379))

(declare-fun m!5446381 () Bool)

(assert (=> d!1453443 m!5446381))

(assert (=> d!1453443 m!5446169))

(declare-fun m!5446383 () Bool)

(assert (=> b!4614264 m!5446383))

(declare-fun m!5446385 () Bool)

(assert (=> bm!321634 m!5446385))

(declare-fun m!5446387 () Bool)

(assert (=> bm!321632 m!5446387))

(declare-fun m!5446389 () Bool)

(assert (=> b!4614262 m!5446389))

(declare-fun m!5446391 () Bool)

(assert (=> b!4614262 m!5446391))

(declare-fun m!5446393 () Bool)

(assert (=> b!4614262 m!5446393))

(assert (=> b!4614262 m!5446389))

(declare-fun m!5446395 () Bool)

(assert (=> b!4614262 m!5446395))

(declare-fun m!5446397 () Bool)

(assert (=> b!4614262 m!5446397))

(declare-fun m!5446399 () Bool)

(assert (=> b!4614262 m!5446399))

(declare-fun m!5446401 () Bool)

(assert (=> b!4614262 m!5446401))

(declare-fun m!5446403 () Bool)

(assert (=> b!4614262 m!5446403))

(assert (=> b!4614262 m!5446397))

(declare-fun m!5446405 () Bool)

(assert (=> b!4614262 m!5446405))

(declare-fun m!5446407 () Bool)

(assert (=> b!4614262 m!5446407))

(assert (=> b!4614262 m!5446383))

(declare-fun m!5446409 () Bool)

(assert (=> bm!321633 m!5446409))

(declare-fun m!5446411 () Bool)

(assert (=> b!4614265 m!5446411))

(assert (=> b!4614138 d!1453443))

(declare-fun bs!1016917 () Bool)

(declare-fun b!4614271 () Bool)

(assert (= bs!1016917 (and b!4614271 b!4614262)))

(declare-fun lambda!188988 () Int)

(assert (=> bs!1016917 (= lambda!188988 lambda!188985)))

(declare-fun bs!1016918 () Bool)

(assert (= bs!1016918 (and b!4614271 b!4614231)))

(assert (=> bs!1016918 (= (= (ListMap!4136 Nil!51345) lt!1769369) (= lambda!188988 lambda!188979))))

(declare-fun bs!1016919 () Bool)

(assert (= bs!1016919 (and b!4614271 d!1453443)))

(assert (=> bs!1016919 (= (= (ListMap!4136 Nil!51345) lt!1769397) (= lambda!188988 lambda!188987))))

(declare-fun bs!1016920 () Bool)

(assert (= bs!1016920 (and b!4614271 d!1453417)))

(assert (=> bs!1016920 (= (= (ListMap!4136 Nil!51345) lt!1769358) (= lambda!188988 lambda!188980))))

(assert (=> bs!1016918 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188988 lambda!188978))))

(declare-fun bs!1016921 () Bool)

(assert (= bs!1016921 (and b!4614271 b!4614266)))

(assert (=> bs!1016921 (= lambda!188988 lambda!188984)))

(assert (=> bs!1016917 (= (= (ListMap!4136 Nil!51345) lt!1769408) (= lambda!188988 lambda!188986))))

(declare-fun bs!1016922 () Bool)

(assert (= bs!1016922 (and b!4614271 b!4614235)))

(assert (=> bs!1016922 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188988 lambda!188977))))

(assert (=> b!4614271 true))

(declare-fun bs!1016923 () Bool)

(declare-fun b!4614267 () Bool)

(assert (= bs!1016923 (and b!4614267 b!4614262)))

(declare-fun lambda!188989 () Int)

(assert (=> bs!1016923 (= lambda!188989 lambda!188985)))

(declare-fun bs!1016924 () Bool)

(assert (= bs!1016924 (and b!4614267 b!4614231)))

(assert (=> bs!1016924 (= (= (ListMap!4136 Nil!51345) lt!1769369) (= lambda!188989 lambda!188979))))

(declare-fun bs!1016925 () Bool)

(assert (= bs!1016925 (and b!4614267 d!1453443)))

(assert (=> bs!1016925 (= (= (ListMap!4136 Nil!51345) lt!1769397) (= lambda!188989 lambda!188987))))

(assert (=> bs!1016924 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188989 lambda!188978))))

(declare-fun bs!1016926 () Bool)

(assert (= bs!1016926 (and b!4614267 b!4614266)))

(assert (=> bs!1016926 (= lambda!188989 lambda!188984)))

(declare-fun bs!1016927 () Bool)

(assert (= bs!1016927 (and b!4614267 b!4614271)))

(assert (=> bs!1016927 (= lambda!188989 lambda!188988)))

(declare-fun bs!1016928 () Bool)

(assert (= bs!1016928 (and b!4614267 d!1453417)))

(assert (=> bs!1016928 (= (= (ListMap!4136 Nil!51345) lt!1769358) (= lambda!188989 lambda!188980))))

(assert (=> bs!1016923 (= (= (ListMap!4136 Nil!51345) lt!1769408) (= lambda!188989 lambda!188986))))

(declare-fun bs!1016929 () Bool)

(assert (= bs!1016929 (and b!4614267 b!4614235)))

(assert (=> bs!1016929 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188989 lambda!188977))))

(assert (=> b!4614267 true))

(declare-fun lt!1769429 () ListMap!4135)

(declare-fun lambda!188990 () Int)

(assert (=> bs!1016923 (= (= lt!1769429 (ListMap!4136 Nil!51345)) (= lambda!188990 lambda!188985))))

(assert (=> bs!1016924 (= (= lt!1769429 lt!1769369) (= lambda!188990 lambda!188979))))

(assert (=> bs!1016925 (= (= lt!1769429 lt!1769397) (= lambda!188990 lambda!188987))))

(assert (=> b!4614267 (= (= lt!1769429 (ListMap!4136 Nil!51345)) (= lambda!188990 lambda!188989))))

(assert (=> bs!1016924 (= (= lt!1769429 lt!1769255) (= lambda!188990 lambda!188978))))

(assert (=> bs!1016926 (= (= lt!1769429 (ListMap!4136 Nil!51345)) (= lambda!188990 lambda!188984))))

(assert (=> bs!1016927 (= (= lt!1769429 (ListMap!4136 Nil!51345)) (= lambda!188990 lambda!188988))))

(assert (=> bs!1016928 (= (= lt!1769429 lt!1769358) (= lambda!188990 lambda!188980))))

(assert (=> bs!1016923 (= (= lt!1769429 lt!1769408) (= lambda!188990 lambda!188986))))

(assert (=> bs!1016929 (= (= lt!1769429 lt!1769255) (= lambda!188990 lambda!188977))))

(assert (=> b!4614267 true))

(declare-fun bs!1016930 () Bool)

(declare-fun d!1453445 () Bool)

(assert (= bs!1016930 (and d!1453445 b!4614262)))

(declare-fun lt!1769418 () ListMap!4135)

(declare-fun lambda!188991 () Int)

(assert (=> bs!1016930 (= (= lt!1769418 (ListMap!4136 Nil!51345)) (= lambda!188991 lambda!188985))))

(declare-fun bs!1016931 () Bool)

(assert (= bs!1016931 (and d!1453445 b!4614231)))

(assert (=> bs!1016931 (= (= lt!1769418 lt!1769369) (= lambda!188991 lambda!188979))))

(declare-fun bs!1016932 () Bool)

(assert (= bs!1016932 (and d!1453445 d!1453443)))

(assert (=> bs!1016932 (= (= lt!1769418 lt!1769397) (= lambda!188991 lambda!188987))))

(declare-fun bs!1016933 () Bool)

(assert (= bs!1016933 (and d!1453445 b!4614267)))

(assert (=> bs!1016933 (= (= lt!1769418 (ListMap!4136 Nil!51345)) (= lambda!188991 lambda!188989))))

(assert (=> bs!1016931 (= (= lt!1769418 lt!1769255) (= lambda!188991 lambda!188978))))

(declare-fun bs!1016934 () Bool)

(assert (= bs!1016934 (and d!1453445 b!4614266)))

(assert (=> bs!1016934 (= (= lt!1769418 (ListMap!4136 Nil!51345)) (= lambda!188991 lambda!188984))))

(assert (=> bs!1016933 (= (= lt!1769418 lt!1769429) (= lambda!188991 lambda!188990))))

(declare-fun bs!1016935 () Bool)

(assert (= bs!1016935 (and d!1453445 b!4614271)))

(assert (=> bs!1016935 (= (= lt!1769418 (ListMap!4136 Nil!51345)) (= lambda!188991 lambda!188988))))

(declare-fun bs!1016936 () Bool)

(assert (= bs!1016936 (and d!1453445 d!1453417)))

(assert (=> bs!1016936 (= (= lt!1769418 lt!1769358) (= lambda!188991 lambda!188980))))

(assert (=> bs!1016930 (= (= lt!1769418 lt!1769408) (= lambda!188991 lambda!188986))))

(declare-fun bs!1016937 () Bool)

(assert (= bs!1016937 (and d!1453445 b!4614235)))

(assert (=> bs!1016937 (= (= lt!1769418 lt!1769255) (= lambda!188991 lambda!188977))))

(assert (=> d!1453445 true))

(declare-fun call!321642 () Bool)

(declare-fun c!790010 () Bool)

(declare-fun bm!321635 () Bool)

(assert (=> bm!321635 (= call!321642 (forall!10729 (ite c!790010 (toList!4831 (ListMap!4136 Nil!51345)) (Cons!51345 lt!1769250 lt!1769247)) (ite c!790010 lambda!188988 lambda!188990)))))

(declare-fun e!2878206 () ListMap!4135)

(assert (=> b!4614267 (= e!2878206 lt!1769429)))

(declare-fun lt!1769417 () ListMap!4135)

(assert (=> b!4614267 (= lt!1769417 (+!1818 (ListMap!4136 Nil!51345) (h!57351 (Cons!51345 lt!1769250 lt!1769247))))))

(assert (=> b!4614267 (= lt!1769429 (addToMapMapFromBucket!894 (t!358467 (Cons!51345 lt!1769250 lt!1769247)) (+!1818 (ListMap!4136 Nil!51345) (h!57351 (Cons!51345 lt!1769250 lt!1769247)))))))

(declare-fun lt!1769426 () Unit!109758)

(declare-fun call!321641 () Unit!109758)

(assert (=> b!4614267 (= lt!1769426 call!321641)))

(assert (=> b!4614267 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188989)))

(declare-fun lt!1769416 () Unit!109758)

(assert (=> b!4614267 (= lt!1769416 lt!1769426)))

(assert (=> b!4614267 (forall!10729 (toList!4831 lt!1769417) lambda!188990)))

(declare-fun lt!1769430 () Unit!109758)

(declare-fun Unit!109784 () Unit!109758)

(assert (=> b!4614267 (= lt!1769430 Unit!109784)))

(assert (=> b!4614267 (forall!10729 (t!358467 (Cons!51345 lt!1769250 lt!1769247)) lambda!188990)))

(declare-fun lt!1769427 () Unit!109758)

(declare-fun Unit!109785 () Unit!109758)

(assert (=> b!4614267 (= lt!1769427 Unit!109785)))

(declare-fun lt!1769424 () Unit!109758)

(declare-fun Unit!109786 () Unit!109758)

(assert (=> b!4614267 (= lt!1769424 Unit!109786)))

(declare-fun lt!1769428 () Unit!109758)

(assert (=> b!4614267 (= lt!1769428 (forallContained!2954 (toList!4831 lt!1769417) lambda!188990 (h!57351 (Cons!51345 lt!1769250 lt!1769247))))))

(assert (=> b!4614267 (contains!14311 lt!1769417 (_1!29383 (h!57351 (Cons!51345 lt!1769250 lt!1769247))))))

(declare-fun lt!1769415 () Unit!109758)

(declare-fun Unit!109787 () Unit!109758)

(assert (=> b!4614267 (= lt!1769415 Unit!109787)))

(assert (=> b!4614267 (contains!14311 lt!1769429 (_1!29383 (h!57351 (Cons!51345 lt!1769250 lt!1769247))))))

(declare-fun lt!1769433 () Unit!109758)

(declare-fun Unit!109788 () Unit!109758)

(assert (=> b!4614267 (= lt!1769433 Unit!109788)))

(assert (=> b!4614267 (forall!10729 (Cons!51345 lt!1769250 lt!1769247) lambda!188990)))

(declare-fun lt!1769423 () Unit!109758)

(declare-fun Unit!109789 () Unit!109758)

(assert (=> b!4614267 (= lt!1769423 Unit!109789)))

(assert (=> b!4614267 (forall!10729 (toList!4831 lt!1769417) lambda!188990)))

(declare-fun lt!1769425 () Unit!109758)

(declare-fun Unit!109790 () Unit!109758)

(assert (=> b!4614267 (= lt!1769425 Unit!109790)))

(declare-fun lt!1769432 () Unit!109758)

(declare-fun Unit!109791 () Unit!109758)

(assert (=> b!4614267 (= lt!1769432 Unit!109791)))

(declare-fun lt!1769419 () Unit!109758)

(assert (=> b!4614267 (= lt!1769419 (addForallContainsKeyThenBeforeAdding!461 (ListMap!4136 Nil!51345) lt!1769429 (_1!29383 (h!57351 (Cons!51345 lt!1769250 lt!1769247))) (_2!29383 (h!57351 (Cons!51345 lt!1769250 lt!1769247)))))))

(assert (=> b!4614267 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188990)))

(declare-fun lt!1769431 () Unit!109758)

(assert (=> b!4614267 (= lt!1769431 lt!1769419)))

(declare-fun call!321640 () Bool)

(assert (=> b!4614267 call!321640))

(declare-fun lt!1769420 () Unit!109758)

(declare-fun Unit!109792 () Unit!109758)

(assert (=> b!4614267 (= lt!1769420 Unit!109792)))

(declare-fun res!1932959 () Bool)

(assert (=> b!4614267 (= res!1932959 call!321642)))

(declare-fun e!2878208 () Bool)

(assert (=> b!4614267 (=> (not res!1932959) (not e!2878208))))

(assert (=> b!4614267 e!2878208))

(declare-fun lt!1769434 () Unit!109758)

(declare-fun Unit!109793 () Unit!109758)

(assert (=> b!4614267 (= lt!1769434 Unit!109793)))

(declare-fun b!4614268 () Bool)

(declare-fun e!2878207 () Bool)

(assert (=> b!4614268 (= e!2878207 (invariantList!1160 (toList!4831 lt!1769418)))))

(declare-fun b!4614269 () Bool)

(assert (=> b!4614269 (= e!2878208 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188990))))

(declare-fun b!4614270 () Bool)

(declare-fun res!1932957 () Bool)

(assert (=> b!4614270 (=> (not res!1932957) (not e!2878207))))

(assert (=> b!4614270 (= res!1932957 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188991))))

(declare-fun bm!321636 () Bool)

(assert (=> bm!321636 (= call!321641 (lemmaContainsAllItsOwnKeys!462 (ListMap!4136 Nil!51345)))))

(declare-fun bm!321637 () Bool)

(assert (=> bm!321637 (= call!321640 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) (ite c!790010 lambda!188988 lambda!188990)))))

(assert (=> d!1453445 e!2878207))

(declare-fun res!1932958 () Bool)

(assert (=> d!1453445 (=> (not res!1932958) (not e!2878207))))

(assert (=> d!1453445 (= res!1932958 (forall!10729 (Cons!51345 lt!1769250 lt!1769247) lambda!188991))))

(assert (=> d!1453445 (= lt!1769418 e!2878206)))

(assert (=> d!1453445 (= c!790010 (is-Nil!51345 (Cons!51345 lt!1769250 lt!1769247)))))

(assert (=> d!1453445 (noDuplicateKeys!1433 (Cons!51345 lt!1769250 lt!1769247))))

(assert (=> d!1453445 (= (addToMapMapFromBucket!894 (Cons!51345 lt!1769250 lt!1769247) (ListMap!4136 Nil!51345)) lt!1769418)))

(assert (=> b!4614271 (= e!2878206 (ListMap!4136 Nil!51345))))

(declare-fun lt!1769422 () Unit!109758)

(assert (=> b!4614271 (= lt!1769422 call!321641)))

(assert (=> b!4614271 call!321642))

(declare-fun lt!1769421 () Unit!109758)

(assert (=> b!4614271 (= lt!1769421 lt!1769422)))

(assert (=> b!4614271 call!321640))

(declare-fun lt!1769414 () Unit!109758)

(declare-fun Unit!109794 () Unit!109758)

(assert (=> b!4614271 (= lt!1769414 Unit!109794)))

(assert (= (and d!1453445 c!790010) b!4614271))

(assert (= (and d!1453445 (not c!790010)) b!4614267))

(assert (= (and b!4614267 res!1932959) b!4614269))

(assert (= (or b!4614271 b!4614267) bm!321636))

(assert (= (or b!4614271 b!4614267) bm!321635))

(assert (= (or b!4614271 b!4614267) bm!321637))

(assert (= (and d!1453445 res!1932958) b!4614270))

(assert (= (and b!4614270 res!1932957) b!4614268))

(declare-fun m!5446413 () Bool)

(assert (=> b!4614268 m!5446413))

(declare-fun m!5446415 () Bool)

(assert (=> d!1453445 m!5446415))

(declare-fun m!5446417 () Bool)

(assert (=> d!1453445 m!5446417))

(declare-fun m!5446419 () Bool)

(assert (=> b!4614269 m!5446419))

(declare-fun m!5446421 () Bool)

(assert (=> bm!321637 m!5446421))

(declare-fun m!5446423 () Bool)

(assert (=> bm!321635 m!5446423))

(declare-fun m!5446425 () Bool)

(assert (=> b!4614267 m!5446425))

(declare-fun m!5446427 () Bool)

(assert (=> b!4614267 m!5446427))

(declare-fun m!5446429 () Bool)

(assert (=> b!4614267 m!5446429))

(assert (=> b!4614267 m!5446425))

(declare-fun m!5446431 () Bool)

(assert (=> b!4614267 m!5446431))

(declare-fun m!5446433 () Bool)

(assert (=> b!4614267 m!5446433))

(declare-fun m!5446435 () Bool)

(assert (=> b!4614267 m!5446435))

(declare-fun m!5446437 () Bool)

(assert (=> b!4614267 m!5446437))

(declare-fun m!5446439 () Bool)

(assert (=> b!4614267 m!5446439))

(assert (=> b!4614267 m!5446433))

(declare-fun m!5446441 () Bool)

(assert (=> b!4614267 m!5446441))

(declare-fun m!5446443 () Bool)

(assert (=> b!4614267 m!5446443))

(assert (=> b!4614267 m!5446419))

(assert (=> bm!321636 m!5446409))

(declare-fun m!5446445 () Bool)

(assert (=> b!4614270 m!5446445))

(assert (=> b!4614138 d!1453445))

(declare-fun d!1453447 () Bool)

(assert (=> d!1453447 (eq!776 (addToMapMapFromBucket!894 (Cons!51345 lt!1769250 lt!1769247) (ListMap!4136 Nil!51345)) (+!1818 (addToMapMapFromBucket!894 lt!1769247 (ListMap!4136 Nil!51345)) lt!1769250))))

(declare-fun lt!1769437 () Unit!109758)

(declare-fun choose!31058 (tuple2!52178 List!51469 ListMap!4135) Unit!109758)

(assert (=> d!1453447 (= lt!1769437 (choose!31058 lt!1769250 lt!1769247 (ListMap!4136 Nil!51345)))))

(assert (=> d!1453447 (noDuplicateKeys!1433 lt!1769247)))

(assert (=> d!1453447 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!27 lt!1769250 lt!1769247 (ListMap!4136 Nil!51345)) lt!1769437)))

(declare-fun bs!1016938 () Bool)

(assert (= bs!1016938 d!1453447))

(declare-fun m!5446447 () Bool)

(assert (=> bs!1016938 m!5446447))

(assert (=> bs!1016938 m!5446187))

(declare-fun m!5446449 () Bool)

(assert (=> bs!1016938 m!5446449))

(declare-fun m!5446451 () Bool)

(assert (=> bs!1016938 m!5446451))

(assert (=> bs!1016938 m!5446161))

(assert (=> bs!1016938 m!5446449))

(assert (=> bs!1016938 m!5446187))

(declare-fun m!5446453 () Bool)

(assert (=> bs!1016938 m!5446453))

(assert (=> bs!1016938 m!5446161))

(assert (=> b!4614138 d!1453447))

(declare-fun d!1453449 () Bool)

(declare-fun e!2878209 () Bool)

(assert (=> d!1453449 e!2878209))

(declare-fun res!1932960 () Bool)

(assert (=> d!1453449 (=> (not res!1932960) (not e!2878209))))

(declare-fun lt!1769440 () ListMap!4135)

(assert (=> d!1453449 (= res!1932960 (contains!14311 lt!1769440 (_1!29383 lt!1769250)))))

(declare-fun lt!1769441 () List!51469)

(assert (=> d!1453449 (= lt!1769440 (ListMap!4136 lt!1769441))))

(declare-fun lt!1769439 () Unit!109758)

(declare-fun lt!1769438 () Unit!109758)

(assert (=> d!1453449 (= lt!1769439 lt!1769438)))

(assert (=> d!1453449 (= (getValueByKey!1377 lt!1769441 (_1!29383 lt!1769250)) (Some!11462 (_2!29383 lt!1769250)))))

(assert (=> d!1453449 (= lt!1769438 (lemmaContainsTupThenGetReturnValue!813 lt!1769441 (_1!29383 lt!1769250) (_2!29383 lt!1769250)))))

(assert (=> d!1453449 (= lt!1769441 (insertNoDuplicatedKeys!321 (toList!4831 lt!1769254) (_1!29383 lt!1769250) (_2!29383 lt!1769250)))))

(assert (=> d!1453449 (= (+!1818 lt!1769254 lt!1769250) lt!1769440)))

(declare-fun b!4614272 () Bool)

(declare-fun res!1932961 () Bool)

(assert (=> b!4614272 (=> (not res!1932961) (not e!2878209))))

(assert (=> b!4614272 (= res!1932961 (= (getValueByKey!1377 (toList!4831 lt!1769440) (_1!29383 lt!1769250)) (Some!11462 (_2!29383 lt!1769250))))))

(declare-fun b!4614273 () Bool)

(assert (=> b!4614273 (= e!2878209 (contains!14313 (toList!4831 lt!1769440) lt!1769250))))

(assert (= (and d!1453449 res!1932960) b!4614272))

(assert (= (and b!4614272 res!1932961) b!4614273))

(declare-fun m!5446455 () Bool)

(assert (=> d!1453449 m!5446455))

(declare-fun m!5446457 () Bool)

(assert (=> d!1453449 m!5446457))

(declare-fun m!5446459 () Bool)

(assert (=> d!1453449 m!5446459))

(declare-fun m!5446461 () Bool)

(assert (=> d!1453449 m!5446461))

(declare-fun m!5446463 () Bool)

(assert (=> b!4614272 m!5446463))

(declare-fun m!5446465 () Bool)

(assert (=> b!4614273 m!5446465))

(assert (=> b!4614138 d!1453449))

(declare-fun d!1453451 () Bool)

(declare-fun res!1932966 () Bool)

(declare-fun e!2878214 () Bool)

(assert (=> d!1453451 (=> res!1932966 e!2878214)))

(assert (=> d!1453451 (= res!1932966 (not (is-Cons!51345 newBucket!224)))))

(assert (=> d!1453451 (= (noDuplicateKeys!1433 newBucket!224) e!2878214)))

(declare-fun b!4614278 () Bool)

(declare-fun e!2878215 () Bool)

(assert (=> b!4614278 (= e!2878214 e!2878215)))

(declare-fun res!1932967 () Bool)

(assert (=> b!4614278 (=> (not res!1932967) (not e!2878215))))

(assert (=> b!4614278 (= res!1932967 (not (containsKey!2307 (t!358467 newBucket!224) (_1!29383 (h!57351 newBucket!224)))))))

(declare-fun b!4614279 () Bool)

(assert (=> b!4614279 (= e!2878215 (noDuplicateKeys!1433 (t!358467 newBucket!224)))))

(assert (= (and d!1453451 (not res!1932966)) b!4614278))

(assert (= (and b!4614278 res!1932967) b!4614279))

(declare-fun m!5446467 () Bool)

(assert (=> b!4614278 m!5446467))

(declare-fun m!5446469 () Bool)

(assert (=> b!4614279 m!5446469))

(assert (=> b!4614139 d!1453451))

(declare-fun d!1453453 () Bool)

(declare-fun hash!3382 (Hashable!5830 K!12733) (_ BitVec 64))

(assert (=> d!1453453 (= (hash!3380 hashF!1389 key!4968) (hash!3382 hashF!1389 key!4968))))

(declare-fun bs!1016939 () Bool)

(assert (= bs!1016939 d!1453453))

(declare-fun m!5446471 () Bool)

(assert (=> bs!1016939 m!5446471))

(assert (=> b!4614150 d!1453453))

(declare-fun bm!321640 () Bool)

(declare-fun call!321645 () Bool)

(declare-datatypes ((List!51473 0))(
  ( (Nil!51349) (Cons!51349 (h!57356 K!12733) (t!358472 List!51473)) )
))
(declare-fun e!2878230 () List!51473)

(declare-fun contains!14314 (List!51473 K!12733) Bool)

(assert (=> bm!321640 (= call!321645 (contains!14314 e!2878230 key!4968))))

(declare-fun c!790018 () Bool)

(declare-fun c!790017 () Bool)

(assert (=> bm!321640 (= c!790018 c!790017)))

(declare-fun b!4614298 () Bool)

(declare-fun e!2878228 () Unit!109758)

(declare-fun Unit!109795 () Unit!109758)

(assert (=> b!4614298 (= e!2878228 Unit!109795)))

(declare-fun b!4614299 () Bool)

(declare-fun e!2878232 () Bool)

(declare-fun e!2878229 () Bool)

(assert (=> b!4614299 (= e!2878232 e!2878229)))

(declare-fun res!1932975 () Bool)

(assert (=> b!4614299 (=> (not res!1932975) (not e!2878229))))

(declare-fun isDefined!8728 (Option!11463) Bool)

(assert (=> b!4614299 (= res!1932975 (isDefined!8728 (getValueByKey!1377 (toList!4831 lt!1769248) key!4968)))))

(declare-fun b!4614300 () Bool)

(declare-fun keys!18038 (ListMap!4135) List!51473)

(assert (=> b!4614300 (= e!2878230 (keys!18038 lt!1769248))))

(declare-fun d!1453455 () Bool)

(assert (=> d!1453455 e!2878232))

(declare-fun res!1932976 () Bool)

(assert (=> d!1453455 (=> res!1932976 e!2878232)))

(declare-fun e!2878231 () Bool)

(assert (=> d!1453455 (= res!1932976 e!2878231)))

(declare-fun res!1932974 () Bool)

(assert (=> d!1453455 (=> (not res!1932974) (not e!2878231))))

(declare-fun lt!1769463 () Bool)

(assert (=> d!1453455 (= res!1932974 (not lt!1769463))))

(declare-fun lt!1769460 () Bool)

(assert (=> d!1453455 (= lt!1769463 lt!1769460)))

(declare-fun lt!1769464 () Unit!109758)

(declare-fun e!2878233 () Unit!109758)

(assert (=> d!1453455 (= lt!1769464 e!2878233)))

(assert (=> d!1453455 (= c!790017 lt!1769460)))

(declare-fun containsKey!2309 (List!51469 K!12733) Bool)

(assert (=> d!1453455 (= lt!1769460 (containsKey!2309 (toList!4831 lt!1769248) key!4968))))

(assert (=> d!1453455 (= (contains!14311 lt!1769248 key!4968) lt!1769463)))

(declare-fun b!4614301 () Bool)

(assert (=> b!4614301 (= e!2878229 (contains!14314 (keys!18038 lt!1769248) key!4968))))

(declare-fun b!4614302 () Bool)

(assert (=> b!4614302 false))

(declare-fun lt!1769465 () Unit!109758)

(declare-fun lt!1769459 () Unit!109758)

(assert (=> b!4614302 (= lt!1769465 lt!1769459)))

(assert (=> b!4614302 (containsKey!2309 (toList!4831 lt!1769248) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!610 (List!51469 K!12733) Unit!109758)

(assert (=> b!4614302 (= lt!1769459 (lemmaInGetKeysListThenContainsKey!610 (toList!4831 lt!1769248) key!4968))))

(declare-fun Unit!109796 () Unit!109758)

(assert (=> b!4614302 (= e!2878228 Unit!109796)))

(declare-fun b!4614303 () Bool)

(declare-fun getKeysList!611 (List!51469) List!51473)

(assert (=> b!4614303 (= e!2878230 (getKeysList!611 (toList!4831 lt!1769248)))))

(declare-fun b!4614304 () Bool)

(declare-fun lt!1769462 () Unit!109758)

(assert (=> b!4614304 (= e!2878233 lt!1769462)))

(declare-fun lt!1769458 () Unit!109758)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1279 (List!51469 K!12733) Unit!109758)

(assert (=> b!4614304 (= lt!1769458 (lemmaContainsKeyImpliesGetValueByKeyDefined!1279 (toList!4831 lt!1769248) key!4968))))

(assert (=> b!4614304 (isDefined!8728 (getValueByKey!1377 (toList!4831 lt!1769248) key!4968))))

(declare-fun lt!1769461 () Unit!109758)

(assert (=> b!4614304 (= lt!1769461 lt!1769458)))

(declare-fun lemmaInListThenGetKeysListContains!606 (List!51469 K!12733) Unit!109758)

(assert (=> b!4614304 (= lt!1769462 (lemmaInListThenGetKeysListContains!606 (toList!4831 lt!1769248) key!4968))))

(assert (=> b!4614304 call!321645))

(declare-fun b!4614305 () Bool)

(assert (=> b!4614305 (= e!2878231 (not (contains!14314 (keys!18038 lt!1769248) key!4968)))))

(declare-fun b!4614306 () Bool)

(assert (=> b!4614306 (= e!2878233 e!2878228)))

(declare-fun c!790019 () Bool)

(assert (=> b!4614306 (= c!790019 call!321645)))

(assert (= (and d!1453455 c!790017) b!4614304))

(assert (= (and d!1453455 (not c!790017)) b!4614306))

(assert (= (and b!4614306 c!790019) b!4614302))

(assert (= (and b!4614306 (not c!790019)) b!4614298))

(assert (= (or b!4614304 b!4614306) bm!321640))

(assert (= (and bm!321640 c!790018) b!4614303))

(assert (= (and bm!321640 (not c!790018)) b!4614300))

(assert (= (and d!1453455 res!1932974) b!4614305))

(assert (= (and d!1453455 (not res!1932976)) b!4614299))

(assert (= (and b!4614299 res!1932975) b!4614301))

(declare-fun m!5446473 () Bool)

(assert (=> b!4614301 m!5446473))

(assert (=> b!4614301 m!5446473))

(declare-fun m!5446475 () Bool)

(assert (=> b!4614301 m!5446475))

(declare-fun m!5446477 () Bool)

(assert (=> b!4614303 m!5446477))

(assert (=> b!4614300 m!5446473))

(declare-fun m!5446479 () Bool)

(assert (=> b!4614304 m!5446479))

(declare-fun m!5446481 () Bool)

(assert (=> b!4614304 m!5446481))

(assert (=> b!4614304 m!5446481))

(declare-fun m!5446483 () Bool)

(assert (=> b!4614304 m!5446483))

(declare-fun m!5446485 () Bool)

(assert (=> b!4614304 m!5446485))

(assert (=> b!4614305 m!5446473))

(assert (=> b!4614305 m!5446473))

(assert (=> b!4614305 m!5446475))

(declare-fun m!5446487 () Bool)

(assert (=> d!1453455 m!5446487))

(declare-fun m!5446489 () Bool)

(assert (=> bm!321640 m!5446489))

(assert (=> b!4614299 m!5446481))

(assert (=> b!4614299 m!5446481))

(assert (=> b!4614299 m!5446483))

(assert (=> b!4614302 m!5446487))

(declare-fun m!5446491 () Bool)

(assert (=> b!4614302 m!5446491))

(assert (=> b!4614145 d!1453455))

(declare-fun bs!1016940 () Bool)

(declare-fun d!1453457 () Bool)

(assert (= bs!1016940 (and d!1453457 b!4614143)))

(declare-fun lambda!188992 () Int)

(assert (=> bs!1016940 (= lambda!188992 lambda!188945)))

(declare-fun bs!1016941 () Bool)

(assert (= bs!1016941 (and d!1453457 d!1453429)))

(assert (=> bs!1016941 (= lambda!188992 lambda!188983)))

(declare-fun lt!1769466 () ListMap!4135)

(assert (=> d!1453457 (invariantList!1160 (toList!4831 lt!1769466))))

(declare-fun e!2878234 () ListMap!4135)

(assert (=> d!1453457 (= lt!1769466 e!2878234)))

(declare-fun c!790020 () Bool)

(assert (=> d!1453457 (= c!790020 (is-Cons!51346 lt!1769256))))

(assert (=> d!1453457 (forall!10727 lt!1769256 lambda!188992)))

(assert (=> d!1453457 (= (extractMap!1489 lt!1769256) lt!1769466)))

(declare-fun b!4614307 () Bool)

(assert (=> b!4614307 (= e!2878234 (addToMapMapFromBucket!894 (_2!29384 (h!57352 lt!1769256)) (extractMap!1489 (t!358468 lt!1769256))))))

(declare-fun b!4614308 () Bool)

(assert (=> b!4614308 (= e!2878234 (ListMap!4136 Nil!51345))))

(assert (= (and d!1453457 c!790020) b!4614307))

(assert (= (and d!1453457 (not c!790020)) b!4614308))

(declare-fun m!5446493 () Bool)

(assert (=> d!1453457 m!5446493))

(declare-fun m!5446495 () Bool)

(assert (=> d!1453457 m!5446495))

(declare-fun m!5446497 () Bool)

(assert (=> b!4614307 m!5446497))

(assert (=> b!4614307 m!5446497))

(declare-fun m!5446499 () Bool)

(assert (=> b!4614307 m!5446499))

(assert (=> b!4614145 d!1453457))

(declare-fun b!4614320 () Bool)

(declare-fun e!2878239 () List!51469)

(assert (=> b!4614320 (= e!2878239 Nil!51345)))

(declare-fun b!4614319 () Bool)

(assert (=> b!4614319 (= e!2878239 (Cons!51345 (h!57351 oldBucket!40) (removePairForKey!1056 (t!358467 oldBucket!40) key!4968)))))

(declare-fun b!4614317 () Bool)

(declare-fun e!2878240 () List!51469)

(assert (=> b!4614317 (= e!2878240 (t!358467 oldBucket!40))))

(declare-fun d!1453459 () Bool)

(declare-fun lt!1769469 () List!51469)

(assert (=> d!1453459 (not (containsKey!2307 lt!1769469 key!4968))))

(assert (=> d!1453459 (= lt!1769469 e!2878240)))

(declare-fun c!790025 () Bool)

(assert (=> d!1453459 (= c!790025 (and (is-Cons!51345 oldBucket!40) (= (_1!29383 (h!57351 oldBucket!40)) key!4968)))))

(assert (=> d!1453459 (noDuplicateKeys!1433 oldBucket!40)))

(assert (=> d!1453459 (= (removePairForKey!1056 oldBucket!40 key!4968) lt!1769469)))

(declare-fun b!4614318 () Bool)

(assert (=> b!4614318 (= e!2878240 e!2878239)))

(declare-fun c!790026 () Bool)

(assert (=> b!4614318 (= c!790026 (is-Cons!51345 oldBucket!40))))

(assert (= (and d!1453459 c!790025) b!4614317))

(assert (= (and d!1453459 (not c!790025)) b!4614318))

(assert (= (and b!4614318 c!790026) b!4614319))

(assert (= (and b!4614318 (not c!790026)) b!4614320))

(declare-fun m!5446501 () Bool)

(assert (=> b!4614319 m!5446501))

(declare-fun m!5446503 () Bool)

(assert (=> d!1453459 m!5446503))

(assert (=> d!1453459 m!5446169))

(assert (=> b!4614136 d!1453459))

(declare-fun bs!1016942 () Bool)

(declare-fun b!4614325 () Bool)

(assert (= bs!1016942 (and b!4614325 b!4614262)))

(declare-fun lambda!188993 () Int)

(assert (=> bs!1016942 (= lambda!188993 lambda!188985)))

(declare-fun bs!1016943 () Bool)

(assert (= bs!1016943 (and b!4614325 b!4614231)))

(assert (=> bs!1016943 (= (= (ListMap!4136 Nil!51345) lt!1769369) (= lambda!188993 lambda!188979))))

(declare-fun bs!1016944 () Bool)

(assert (= bs!1016944 (and b!4614325 d!1453443)))

(assert (=> bs!1016944 (= (= (ListMap!4136 Nil!51345) lt!1769397) (= lambda!188993 lambda!188987))))

(declare-fun bs!1016945 () Bool)

(assert (= bs!1016945 (and b!4614325 b!4614267)))

(assert (=> bs!1016945 (= lambda!188993 lambda!188989)))

(assert (=> bs!1016943 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188993 lambda!188978))))

(declare-fun bs!1016946 () Bool)

(assert (= bs!1016946 (and b!4614325 b!4614266)))

(assert (=> bs!1016946 (= lambda!188993 lambda!188984)))

(declare-fun bs!1016947 () Bool)

(assert (= bs!1016947 (and b!4614325 d!1453445)))

(assert (=> bs!1016947 (= (= (ListMap!4136 Nil!51345) lt!1769418) (= lambda!188993 lambda!188991))))

(assert (=> bs!1016945 (= (= (ListMap!4136 Nil!51345) lt!1769429) (= lambda!188993 lambda!188990))))

(declare-fun bs!1016948 () Bool)

(assert (= bs!1016948 (and b!4614325 b!4614271)))

(assert (=> bs!1016948 (= lambda!188993 lambda!188988)))

(declare-fun bs!1016949 () Bool)

(assert (= bs!1016949 (and b!4614325 d!1453417)))

(assert (=> bs!1016949 (= (= (ListMap!4136 Nil!51345) lt!1769358) (= lambda!188993 lambda!188980))))

(assert (=> bs!1016942 (= (= (ListMap!4136 Nil!51345) lt!1769408) (= lambda!188993 lambda!188986))))

(declare-fun bs!1016950 () Bool)

(assert (= bs!1016950 (and b!4614325 b!4614235)))

(assert (=> bs!1016950 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188993 lambda!188977))))

(assert (=> b!4614325 true))

(declare-fun bs!1016951 () Bool)

(declare-fun b!4614321 () Bool)

(assert (= bs!1016951 (and b!4614321 b!4614262)))

(declare-fun lambda!188994 () Int)

(assert (=> bs!1016951 (= lambda!188994 lambda!188985)))

(declare-fun bs!1016952 () Bool)

(assert (= bs!1016952 (and b!4614321 b!4614231)))

(assert (=> bs!1016952 (= (= (ListMap!4136 Nil!51345) lt!1769369) (= lambda!188994 lambda!188979))))

(declare-fun bs!1016953 () Bool)

(assert (= bs!1016953 (and b!4614321 d!1453443)))

(assert (=> bs!1016953 (= (= (ListMap!4136 Nil!51345) lt!1769397) (= lambda!188994 lambda!188987))))

(declare-fun bs!1016954 () Bool)

(assert (= bs!1016954 (and b!4614321 b!4614267)))

(assert (=> bs!1016954 (= lambda!188994 lambda!188989)))

(assert (=> bs!1016952 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188994 lambda!188978))))

(declare-fun bs!1016955 () Bool)

(assert (= bs!1016955 (and b!4614321 b!4614266)))

(assert (=> bs!1016955 (= lambda!188994 lambda!188984)))

(declare-fun bs!1016956 () Bool)

(assert (= bs!1016956 (and b!4614321 d!1453445)))

(assert (=> bs!1016956 (= (= (ListMap!4136 Nil!51345) lt!1769418) (= lambda!188994 lambda!188991))))

(assert (=> bs!1016954 (= (= (ListMap!4136 Nil!51345) lt!1769429) (= lambda!188994 lambda!188990))))

(declare-fun bs!1016957 () Bool)

(assert (= bs!1016957 (and b!4614321 b!4614271)))

(assert (=> bs!1016957 (= lambda!188994 lambda!188988)))

(declare-fun bs!1016958 () Bool)

(assert (= bs!1016958 (and b!4614321 d!1453417)))

(assert (=> bs!1016958 (= (= (ListMap!4136 Nil!51345) lt!1769358) (= lambda!188994 lambda!188980))))

(declare-fun bs!1016959 () Bool)

(assert (= bs!1016959 (and b!4614321 b!4614325)))

(assert (=> bs!1016959 (= lambda!188994 lambda!188993)))

(assert (=> bs!1016951 (= (= (ListMap!4136 Nil!51345) lt!1769408) (= lambda!188994 lambda!188986))))

(declare-fun bs!1016960 () Bool)

(assert (= bs!1016960 (and b!4614321 b!4614235)))

(assert (=> bs!1016960 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188994 lambda!188977))))

(assert (=> b!4614321 true))

(declare-fun lt!1769485 () ListMap!4135)

(declare-fun lambda!188995 () Int)

(assert (=> bs!1016951 (= (= lt!1769485 (ListMap!4136 Nil!51345)) (= lambda!188995 lambda!188985))))

(assert (=> bs!1016952 (= (= lt!1769485 lt!1769369) (= lambda!188995 lambda!188979))))

(assert (=> bs!1016953 (= (= lt!1769485 lt!1769397) (= lambda!188995 lambda!188987))))

(assert (=> bs!1016952 (= (= lt!1769485 lt!1769255) (= lambda!188995 lambda!188978))))

(assert (=> bs!1016955 (= (= lt!1769485 (ListMap!4136 Nil!51345)) (= lambda!188995 lambda!188984))))

(assert (=> bs!1016956 (= (= lt!1769485 lt!1769418) (= lambda!188995 lambda!188991))))

(assert (=> bs!1016954 (= (= lt!1769485 lt!1769429) (= lambda!188995 lambda!188990))))

(assert (=> bs!1016957 (= (= lt!1769485 (ListMap!4136 Nil!51345)) (= lambda!188995 lambda!188988))))

(assert (=> bs!1016958 (= (= lt!1769485 lt!1769358) (= lambda!188995 lambda!188980))))

(assert (=> bs!1016959 (= (= lt!1769485 (ListMap!4136 Nil!51345)) (= lambda!188995 lambda!188993))))

(assert (=> bs!1016954 (= (= lt!1769485 (ListMap!4136 Nil!51345)) (= lambda!188995 lambda!188989))))

(assert (=> b!4614321 (= (= lt!1769485 (ListMap!4136 Nil!51345)) (= lambda!188995 lambda!188994))))

(assert (=> bs!1016951 (= (= lt!1769485 lt!1769408) (= lambda!188995 lambda!188986))))

(assert (=> bs!1016960 (= (= lt!1769485 lt!1769255) (= lambda!188995 lambda!188977))))

(assert (=> b!4614321 true))

(declare-fun bs!1016961 () Bool)

(declare-fun d!1453461 () Bool)

(assert (= bs!1016961 (and d!1453461 b!4614262)))

(declare-fun lt!1769474 () ListMap!4135)

(declare-fun lambda!188996 () Int)

(assert (=> bs!1016961 (= (= lt!1769474 (ListMap!4136 Nil!51345)) (= lambda!188996 lambda!188985))))

(declare-fun bs!1016962 () Bool)

(assert (= bs!1016962 (and d!1453461 b!4614231)))

(assert (=> bs!1016962 (= (= lt!1769474 lt!1769369) (= lambda!188996 lambda!188979))))

(declare-fun bs!1016963 () Bool)

(assert (= bs!1016963 (and d!1453461 d!1453443)))

(assert (=> bs!1016963 (= (= lt!1769474 lt!1769397) (= lambda!188996 lambda!188987))))

(assert (=> bs!1016962 (= (= lt!1769474 lt!1769255) (= lambda!188996 lambda!188978))))

(declare-fun bs!1016964 () Bool)

(assert (= bs!1016964 (and d!1453461 b!4614266)))

(assert (=> bs!1016964 (= (= lt!1769474 (ListMap!4136 Nil!51345)) (= lambda!188996 lambda!188984))))

(declare-fun bs!1016965 () Bool)

(assert (= bs!1016965 (and d!1453461 d!1453445)))

(assert (=> bs!1016965 (= (= lt!1769474 lt!1769418) (= lambda!188996 lambda!188991))))

(declare-fun bs!1016966 () Bool)

(assert (= bs!1016966 (and d!1453461 b!4614267)))

(assert (=> bs!1016966 (= (= lt!1769474 lt!1769429) (= lambda!188996 lambda!188990))))

(declare-fun bs!1016967 () Bool)

(assert (= bs!1016967 (and d!1453461 b!4614321)))

(assert (=> bs!1016967 (= (= lt!1769474 lt!1769485) (= lambda!188996 lambda!188995))))

(declare-fun bs!1016968 () Bool)

(assert (= bs!1016968 (and d!1453461 b!4614271)))

(assert (=> bs!1016968 (= (= lt!1769474 (ListMap!4136 Nil!51345)) (= lambda!188996 lambda!188988))))

(declare-fun bs!1016969 () Bool)

(assert (= bs!1016969 (and d!1453461 d!1453417)))

(assert (=> bs!1016969 (= (= lt!1769474 lt!1769358) (= lambda!188996 lambda!188980))))

(declare-fun bs!1016970 () Bool)

(assert (= bs!1016970 (and d!1453461 b!4614325)))

(assert (=> bs!1016970 (= (= lt!1769474 (ListMap!4136 Nil!51345)) (= lambda!188996 lambda!188993))))

(assert (=> bs!1016966 (= (= lt!1769474 (ListMap!4136 Nil!51345)) (= lambda!188996 lambda!188989))))

(assert (=> bs!1016967 (= (= lt!1769474 (ListMap!4136 Nil!51345)) (= lambda!188996 lambda!188994))))

(assert (=> bs!1016961 (= (= lt!1769474 lt!1769408) (= lambda!188996 lambda!188986))))

(declare-fun bs!1016971 () Bool)

(assert (= bs!1016971 (and d!1453461 b!4614235)))

(assert (=> bs!1016971 (= (= lt!1769474 lt!1769255) (= lambda!188996 lambda!188977))))

(assert (=> d!1453461 true))

(declare-fun bm!321641 () Bool)

(declare-fun call!321648 () Bool)

(declare-fun c!790027 () Bool)

(assert (=> bm!321641 (= call!321648 (forall!10729 (ite c!790027 (toList!4831 (ListMap!4136 Nil!51345)) newBucket!224) (ite c!790027 lambda!188993 lambda!188995)))))

(declare-fun e!2878241 () ListMap!4135)

(assert (=> b!4614321 (= e!2878241 lt!1769485)))

(declare-fun lt!1769473 () ListMap!4135)

(assert (=> b!4614321 (= lt!1769473 (+!1818 (ListMap!4136 Nil!51345) (h!57351 newBucket!224)))))

(assert (=> b!4614321 (= lt!1769485 (addToMapMapFromBucket!894 (t!358467 newBucket!224) (+!1818 (ListMap!4136 Nil!51345) (h!57351 newBucket!224))))))

(declare-fun lt!1769482 () Unit!109758)

(declare-fun call!321647 () Unit!109758)

(assert (=> b!4614321 (= lt!1769482 call!321647)))

(assert (=> b!4614321 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188994)))

(declare-fun lt!1769472 () Unit!109758)

(assert (=> b!4614321 (= lt!1769472 lt!1769482)))

(assert (=> b!4614321 (forall!10729 (toList!4831 lt!1769473) lambda!188995)))

(declare-fun lt!1769486 () Unit!109758)

(declare-fun Unit!109797 () Unit!109758)

(assert (=> b!4614321 (= lt!1769486 Unit!109797)))

(assert (=> b!4614321 (forall!10729 (t!358467 newBucket!224) lambda!188995)))

(declare-fun lt!1769483 () Unit!109758)

(declare-fun Unit!109798 () Unit!109758)

(assert (=> b!4614321 (= lt!1769483 Unit!109798)))

(declare-fun lt!1769480 () Unit!109758)

(declare-fun Unit!109799 () Unit!109758)

(assert (=> b!4614321 (= lt!1769480 Unit!109799)))

(declare-fun lt!1769484 () Unit!109758)

(assert (=> b!4614321 (= lt!1769484 (forallContained!2954 (toList!4831 lt!1769473) lambda!188995 (h!57351 newBucket!224)))))

(assert (=> b!4614321 (contains!14311 lt!1769473 (_1!29383 (h!57351 newBucket!224)))))

(declare-fun lt!1769471 () Unit!109758)

(declare-fun Unit!109800 () Unit!109758)

(assert (=> b!4614321 (= lt!1769471 Unit!109800)))

(assert (=> b!4614321 (contains!14311 lt!1769485 (_1!29383 (h!57351 newBucket!224)))))

(declare-fun lt!1769489 () Unit!109758)

(declare-fun Unit!109801 () Unit!109758)

(assert (=> b!4614321 (= lt!1769489 Unit!109801)))

(assert (=> b!4614321 (forall!10729 newBucket!224 lambda!188995)))

(declare-fun lt!1769479 () Unit!109758)

(declare-fun Unit!109802 () Unit!109758)

(assert (=> b!4614321 (= lt!1769479 Unit!109802)))

(assert (=> b!4614321 (forall!10729 (toList!4831 lt!1769473) lambda!188995)))

(declare-fun lt!1769481 () Unit!109758)

(declare-fun Unit!109803 () Unit!109758)

(assert (=> b!4614321 (= lt!1769481 Unit!109803)))

(declare-fun lt!1769488 () Unit!109758)

(declare-fun Unit!109804 () Unit!109758)

(assert (=> b!4614321 (= lt!1769488 Unit!109804)))

(declare-fun lt!1769475 () Unit!109758)

(assert (=> b!4614321 (= lt!1769475 (addForallContainsKeyThenBeforeAdding!461 (ListMap!4136 Nil!51345) lt!1769485 (_1!29383 (h!57351 newBucket!224)) (_2!29383 (h!57351 newBucket!224))))))

(assert (=> b!4614321 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188995)))

(declare-fun lt!1769487 () Unit!109758)

(assert (=> b!4614321 (= lt!1769487 lt!1769475)))

(declare-fun call!321646 () Bool)

(assert (=> b!4614321 call!321646))

(declare-fun lt!1769476 () Unit!109758)

(declare-fun Unit!109805 () Unit!109758)

(assert (=> b!4614321 (= lt!1769476 Unit!109805)))

(declare-fun res!1932979 () Bool)

(assert (=> b!4614321 (= res!1932979 call!321648)))

(declare-fun e!2878243 () Bool)

(assert (=> b!4614321 (=> (not res!1932979) (not e!2878243))))

(assert (=> b!4614321 e!2878243))

(declare-fun lt!1769490 () Unit!109758)

(declare-fun Unit!109806 () Unit!109758)

(assert (=> b!4614321 (= lt!1769490 Unit!109806)))

(declare-fun b!4614322 () Bool)

(declare-fun e!2878242 () Bool)

(assert (=> b!4614322 (= e!2878242 (invariantList!1160 (toList!4831 lt!1769474)))))

(declare-fun b!4614323 () Bool)

(assert (=> b!4614323 (= e!2878243 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188995))))

(declare-fun b!4614324 () Bool)

(declare-fun res!1932977 () Bool)

(assert (=> b!4614324 (=> (not res!1932977) (not e!2878242))))

(assert (=> b!4614324 (= res!1932977 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188996))))

(declare-fun bm!321642 () Bool)

(assert (=> bm!321642 (= call!321647 (lemmaContainsAllItsOwnKeys!462 (ListMap!4136 Nil!51345)))))

(declare-fun bm!321643 () Bool)

(assert (=> bm!321643 (= call!321646 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) (ite c!790027 lambda!188993 lambda!188995)))))

(assert (=> d!1453461 e!2878242))

(declare-fun res!1932978 () Bool)

(assert (=> d!1453461 (=> (not res!1932978) (not e!2878242))))

(assert (=> d!1453461 (= res!1932978 (forall!10729 newBucket!224 lambda!188996))))

(assert (=> d!1453461 (= lt!1769474 e!2878241)))

(assert (=> d!1453461 (= c!790027 (is-Nil!51345 newBucket!224))))

(assert (=> d!1453461 (noDuplicateKeys!1433 newBucket!224)))

(assert (=> d!1453461 (= (addToMapMapFromBucket!894 newBucket!224 (ListMap!4136 Nil!51345)) lt!1769474)))

(assert (=> b!4614325 (= e!2878241 (ListMap!4136 Nil!51345))))

(declare-fun lt!1769478 () Unit!109758)

(assert (=> b!4614325 (= lt!1769478 call!321647)))

(assert (=> b!4614325 call!321648))

(declare-fun lt!1769477 () Unit!109758)

(assert (=> b!4614325 (= lt!1769477 lt!1769478)))

(assert (=> b!4614325 call!321646))

(declare-fun lt!1769470 () Unit!109758)

(declare-fun Unit!109807 () Unit!109758)

(assert (=> b!4614325 (= lt!1769470 Unit!109807)))

(assert (= (and d!1453461 c!790027) b!4614325))

(assert (= (and d!1453461 (not c!790027)) b!4614321))

(assert (= (and b!4614321 res!1932979) b!4614323))

(assert (= (or b!4614325 b!4614321) bm!321642))

(assert (= (or b!4614325 b!4614321) bm!321641))

(assert (= (or b!4614325 b!4614321) bm!321643))

(assert (= (and d!1453461 res!1932978) b!4614324))

(assert (= (and b!4614324 res!1932977) b!4614322))

(declare-fun m!5446505 () Bool)

(assert (=> b!4614322 m!5446505))

(declare-fun m!5446507 () Bool)

(assert (=> d!1453461 m!5446507))

(assert (=> d!1453461 m!5446163))

(declare-fun m!5446509 () Bool)

(assert (=> b!4614323 m!5446509))

(declare-fun m!5446511 () Bool)

(assert (=> bm!321643 m!5446511))

(declare-fun m!5446513 () Bool)

(assert (=> bm!321641 m!5446513))

(declare-fun m!5446515 () Bool)

(assert (=> b!4614321 m!5446515))

(declare-fun m!5446517 () Bool)

(assert (=> b!4614321 m!5446517))

(declare-fun m!5446519 () Bool)

(assert (=> b!4614321 m!5446519))

(assert (=> b!4614321 m!5446515))

(declare-fun m!5446521 () Bool)

(assert (=> b!4614321 m!5446521))

(declare-fun m!5446523 () Bool)

(assert (=> b!4614321 m!5446523))

(declare-fun m!5446525 () Bool)

(assert (=> b!4614321 m!5446525))

(declare-fun m!5446527 () Bool)

(assert (=> b!4614321 m!5446527))

(declare-fun m!5446529 () Bool)

(assert (=> b!4614321 m!5446529))

(assert (=> b!4614321 m!5446523))

(declare-fun m!5446531 () Bool)

(assert (=> b!4614321 m!5446531))

(declare-fun m!5446533 () Bool)

(assert (=> b!4614321 m!5446533))

(assert (=> b!4614321 m!5446509))

(assert (=> bm!321642 m!5446409))

(declare-fun m!5446535 () Bool)

(assert (=> b!4614324 m!5446535))

(assert (=> b!4614147 d!1453461))

(declare-fun bs!1016972 () Bool)

(declare-fun b!4614330 () Bool)

(assert (= bs!1016972 (and b!4614330 b!4614262)))

(declare-fun lambda!188997 () Int)

(assert (=> bs!1016972 (= lambda!188997 lambda!188985)))

(declare-fun bs!1016973 () Bool)

(assert (= bs!1016973 (and b!4614330 b!4614231)))

(assert (=> bs!1016973 (= (= (ListMap!4136 Nil!51345) lt!1769369) (= lambda!188997 lambda!188979))))

(declare-fun bs!1016974 () Bool)

(assert (= bs!1016974 (and b!4614330 d!1453443)))

(assert (=> bs!1016974 (= (= (ListMap!4136 Nil!51345) lt!1769397) (= lambda!188997 lambda!188987))))

(assert (=> bs!1016973 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188997 lambda!188978))))

(declare-fun bs!1016975 () Bool)

(assert (= bs!1016975 (and b!4614330 b!4614266)))

(assert (=> bs!1016975 (= lambda!188997 lambda!188984)))

(declare-fun bs!1016976 () Bool)

(assert (= bs!1016976 (and b!4614330 d!1453445)))

(assert (=> bs!1016976 (= (= (ListMap!4136 Nil!51345) lt!1769418) (= lambda!188997 lambda!188991))))

(declare-fun bs!1016977 () Bool)

(assert (= bs!1016977 (and b!4614330 d!1453461)))

(assert (=> bs!1016977 (= (= (ListMap!4136 Nil!51345) lt!1769474) (= lambda!188997 lambda!188996))))

(declare-fun bs!1016978 () Bool)

(assert (= bs!1016978 (and b!4614330 b!4614267)))

(assert (=> bs!1016978 (= (= (ListMap!4136 Nil!51345) lt!1769429) (= lambda!188997 lambda!188990))))

(declare-fun bs!1016979 () Bool)

(assert (= bs!1016979 (and b!4614330 b!4614321)))

(assert (=> bs!1016979 (= (= (ListMap!4136 Nil!51345) lt!1769485) (= lambda!188997 lambda!188995))))

(declare-fun bs!1016980 () Bool)

(assert (= bs!1016980 (and b!4614330 b!4614271)))

(assert (=> bs!1016980 (= lambda!188997 lambda!188988)))

(declare-fun bs!1016981 () Bool)

(assert (= bs!1016981 (and b!4614330 d!1453417)))

(assert (=> bs!1016981 (= (= (ListMap!4136 Nil!51345) lt!1769358) (= lambda!188997 lambda!188980))))

(declare-fun bs!1016982 () Bool)

(assert (= bs!1016982 (and b!4614330 b!4614325)))

(assert (=> bs!1016982 (= lambda!188997 lambda!188993)))

(assert (=> bs!1016978 (= lambda!188997 lambda!188989)))

(assert (=> bs!1016979 (= lambda!188997 lambda!188994)))

(assert (=> bs!1016972 (= (= (ListMap!4136 Nil!51345) lt!1769408) (= lambda!188997 lambda!188986))))

(declare-fun bs!1016983 () Bool)

(assert (= bs!1016983 (and b!4614330 b!4614235)))

(assert (=> bs!1016983 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188997 lambda!188977))))

(assert (=> b!4614330 true))

(declare-fun bs!1016984 () Bool)

(declare-fun b!4614326 () Bool)

(assert (= bs!1016984 (and b!4614326 b!4614262)))

(declare-fun lambda!188998 () Int)

(assert (=> bs!1016984 (= lambda!188998 lambda!188985)))

(declare-fun bs!1016985 () Bool)

(assert (= bs!1016985 (and b!4614326 d!1453443)))

(assert (=> bs!1016985 (= (= (ListMap!4136 Nil!51345) lt!1769397) (= lambda!188998 lambda!188987))))

(declare-fun bs!1016986 () Bool)

(assert (= bs!1016986 (and b!4614326 b!4614231)))

(assert (=> bs!1016986 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188998 lambda!188978))))

(declare-fun bs!1016987 () Bool)

(assert (= bs!1016987 (and b!4614326 b!4614266)))

(assert (=> bs!1016987 (= lambda!188998 lambda!188984)))

(declare-fun bs!1016988 () Bool)

(assert (= bs!1016988 (and b!4614326 d!1453445)))

(assert (=> bs!1016988 (= (= (ListMap!4136 Nil!51345) lt!1769418) (= lambda!188998 lambda!188991))))

(declare-fun bs!1016989 () Bool)

(assert (= bs!1016989 (and b!4614326 d!1453461)))

(assert (=> bs!1016989 (= (= (ListMap!4136 Nil!51345) lt!1769474) (= lambda!188998 lambda!188996))))

(declare-fun bs!1016990 () Bool)

(assert (= bs!1016990 (and b!4614326 b!4614267)))

(assert (=> bs!1016990 (= (= (ListMap!4136 Nil!51345) lt!1769429) (= lambda!188998 lambda!188990))))

(declare-fun bs!1016991 () Bool)

(assert (= bs!1016991 (and b!4614326 b!4614321)))

(assert (=> bs!1016991 (= (= (ListMap!4136 Nil!51345) lt!1769485) (= lambda!188998 lambda!188995))))

(declare-fun bs!1016992 () Bool)

(assert (= bs!1016992 (and b!4614326 b!4614330)))

(assert (=> bs!1016992 (= lambda!188998 lambda!188997)))

(assert (=> bs!1016986 (= (= (ListMap!4136 Nil!51345) lt!1769369) (= lambda!188998 lambda!188979))))

(declare-fun bs!1016993 () Bool)

(assert (= bs!1016993 (and b!4614326 b!4614271)))

(assert (=> bs!1016993 (= lambda!188998 lambda!188988)))

(declare-fun bs!1016994 () Bool)

(assert (= bs!1016994 (and b!4614326 d!1453417)))

(assert (=> bs!1016994 (= (= (ListMap!4136 Nil!51345) lt!1769358) (= lambda!188998 lambda!188980))))

(declare-fun bs!1016995 () Bool)

(assert (= bs!1016995 (and b!4614326 b!4614325)))

(assert (=> bs!1016995 (= lambda!188998 lambda!188993)))

(assert (=> bs!1016990 (= lambda!188998 lambda!188989)))

(assert (=> bs!1016991 (= lambda!188998 lambda!188994)))

(assert (=> bs!1016984 (= (= (ListMap!4136 Nil!51345) lt!1769408) (= lambda!188998 lambda!188986))))

(declare-fun bs!1016996 () Bool)

(assert (= bs!1016996 (and b!4614326 b!4614235)))

(assert (=> bs!1016996 (= (= (ListMap!4136 Nil!51345) lt!1769255) (= lambda!188998 lambda!188977))))

(assert (=> b!4614326 true))

(declare-fun lt!1769506 () ListMap!4135)

(declare-fun lambda!188999 () Int)

(assert (=> bs!1016984 (= (= lt!1769506 (ListMap!4136 Nil!51345)) (= lambda!188999 lambda!188985))))

(assert (=> bs!1016985 (= (= lt!1769506 lt!1769397) (= lambda!188999 lambda!188987))))

(assert (=> bs!1016986 (= (= lt!1769506 lt!1769255) (= lambda!188999 lambda!188978))))

(assert (=> bs!1016987 (= (= lt!1769506 (ListMap!4136 Nil!51345)) (= lambda!188999 lambda!188984))))

(assert (=> bs!1016988 (= (= lt!1769506 lt!1769418) (= lambda!188999 lambda!188991))))

(assert (=> bs!1016990 (= (= lt!1769506 lt!1769429) (= lambda!188999 lambda!188990))))

(assert (=> bs!1016991 (= (= lt!1769506 lt!1769485) (= lambda!188999 lambda!188995))))

(assert (=> bs!1016992 (= (= lt!1769506 (ListMap!4136 Nil!51345)) (= lambda!188999 lambda!188997))))

(assert (=> bs!1016986 (= (= lt!1769506 lt!1769369) (= lambda!188999 lambda!188979))))

(assert (=> bs!1016993 (= (= lt!1769506 (ListMap!4136 Nil!51345)) (= lambda!188999 lambda!188988))))

(assert (=> bs!1016994 (= (= lt!1769506 lt!1769358) (= lambda!188999 lambda!188980))))

(assert (=> bs!1016995 (= (= lt!1769506 (ListMap!4136 Nil!51345)) (= lambda!188999 lambda!188993))))

(assert (=> bs!1016990 (= (= lt!1769506 (ListMap!4136 Nil!51345)) (= lambda!188999 lambda!188989))))

(assert (=> bs!1016991 (= (= lt!1769506 (ListMap!4136 Nil!51345)) (= lambda!188999 lambda!188994))))

(assert (=> b!4614326 (= (= lt!1769506 (ListMap!4136 Nil!51345)) (= lambda!188999 lambda!188998))))

(assert (=> bs!1016989 (= (= lt!1769506 lt!1769474) (= lambda!188999 lambda!188996))))

(assert (=> bs!1016984 (= (= lt!1769506 lt!1769408) (= lambda!188999 lambda!188986))))

(assert (=> bs!1016996 (= (= lt!1769506 lt!1769255) (= lambda!188999 lambda!188977))))

(assert (=> b!4614326 true))

(declare-fun bs!1016997 () Bool)

(declare-fun d!1453463 () Bool)

(assert (= bs!1016997 (and d!1453463 b!4614262)))

(declare-fun lt!1769495 () ListMap!4135)

(declare-fun lambda!189000 () Int)

(assert (=> bs!1016997 (= (= lt!1769495 (ListMap!4136 Nil!51345)) (= lambda!189000 lambda!188985))))

(declare-fun bs!1016998 () Bool)

(assert (= bs!1016998 (and d!1453463 d!1453443)))

(assert (=> bs!1016998 (= (= lt!1769495 lt!1769397) (= lambda!189000 lambda!188987))))

(declare-fun bs!1016999 () Bool)

(assert (= bs!1016999 (and d!1453463 b!4614326)))

(assert (=> bs!1016999 (= (= lt!1769495 lt!1769506) (= lambda!189000 lambda!188999))))

(declare-fun bs!1017000 () Bool)

(assert (= bs!1017000 (and d!1453463 b!4614231)))

(assert (=> bs!1017000 (= (= lt!1769495 lt!1769255) (= lambda!189000 lambda!188978))))

(declare-fun bs!1017001 () Bool)

(assert (= bs!1017001 (and d!1453463 b!4614266)))

(assert (=> bs!1017001 (= (= lt!1769495 (ListMap!4136 Nil!51345)) (= lambda!189000 lambda!188984))))

(declare-fun bs!1017002 () Bool)

(assert (= bs!1017002 (and d!1453463 d!1453445)))

(assert (=> bs!1017002 (= (= lt!1769495 lt!1769418) (= lambda!189000 lambda!188991))))

(declare-fun bs!1017003 () Bool)

(assert (= bs!1017003 (and d!1453463 b!4614267)))

(assert (=> bs!1017003 (= (= lt!1769495 lt!1769429) (= lambda!189000 lambda!188990))))

(declare-fun bs!1017004 () Bool)

(assert (= bs!1017004 (and d!1453463 b!4614321)))

(assert (=> bs!1017004 (= (= lt!1769495 lt!1769485) (= lambda!189000 lambda!188995))))

(declare-fun bs!1017005 () Bool)

(assert (= bs!1017005 (and d!1453463 b!4614330)))

(assert (=> bs!1017005 (= (= lt!1769495 (ListMap!4136 Nil!51345)) (= lambda!189000 lambda!188997))))

(assert (=> bs!1017000 (= (= lt!1769495 lt!1769369) (= lambda!189000 lambda!188979))))

(declare-fun bs!1017006 () Bool)

(assert (= bs!1017006 (and d!1453463 b!4614271)))

(assert (=> bs!1017006 (= (= lt!1769495 (ListMap!4136 Nil!51345)) (= lambda!189000 lambda!188988))))

(declare-fun bs!1017007 () Bool)

(assert (= bs!1017007 (and d!1453463 d!1453417)))

(assert (=> bs!1017007 (= (= lt!1769495 lt!1769358) (= lambda!189000 lambda!188980))))

(declare-fun bs!1017008 () Bool)

(assert (= bs!1017008 (and d!1453463 b!4614325)))

(assert (=> bs!1017008 (= (= lt!1769495 (ListMap!4136 Nil!51345)) (= lambda!189000 lambda!188993))))

(assert (=> bs!1017003 (= (= lt!1769495 (ListMap!4136 Nil!51345)) (= lambda!189000 lambda!188989))))

(assert (=> bs!1017004 (= (= lt!1769495 (ListMap!4136 Nil!51345)) (= lambda!189000 lambda!188994))))

(assert (=> bs!1016999 (= (= lt!1769495 (ListMap!4136 Nil!51345)) (= lambda!189000 lambda!188998))))

(declare-fun bs!1017009 () Bool)

(assert (= bs!1017009 (and d!1453463 d!1453461)))

(assert (=> bs!1017009 (= (= lt!1769495 lt!1769474) (= lambda!189000 lambda!188996))))

(assert (=> bs!1016997 (= (= lt!1769495 lt!1769408) (= lambda!189000 lambda!188986))))

(declare-fun bs!1017010 () Bool)

(assert (= bs!1017010 (and d!1453463 b!4614235)))

(assert (=> bs!1017010 (= (= lt!1769495 lt!1769255) (= lambda!189000 lambda!188977))))

(assert (=> d!1453463 true))

(declare-fun c!790028 () Bool)

(declare-fun bm!321644 () Bool)

(declare-fun call!321651 () Bool)

(assert (=> bm!321644 (= call!321651 (forall!10729 (ite c!790028 (toList!4831 (ListMap!4136 Nil!51345)) lt!1769247) (ite c!790028 lambda!188997 lambda!188999)))))

(declare-fun e!2878244 () ListMap!4135)

(assert (=> b!4614326 (= e!2878244 lt!1769506)))

(declare-fun lt!1769494 () ListMap!4135)

(assert (=> b!4614326 (= lt!1769494 (+!1818 (ListMap!4136 Nil!51345) (h!57351 lt!1769247)))))

(assert (=> b!4614326 (= lt!1769506 (addToMapMapFromBucket!894 (t!358467 lt!1769247) (+!1818 (ListMap!4136 Nil!51345) (h!57351 lt!1769247))))))

(declare-fun lt!1769503 () Unit!109758)

(declare-fun call!321650 () Unit!109758)

(assert (=> b!4614326 (= lt!1769503 call!321650)))

(assert (=> b!4614326 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188998)))

(declare-fun lt!1769493 () Unit!109758)

(assert (=> b!4614326 (= lt!1769493 lt!1769503)))

(assert (=> b!4614326 (forall!10729 (toList!4831 lt!1769494) lambda!188999)))

(declare-fun lt!1769507 () Unit!109758)

(declare-fun Unit!109808 () Unit!109758)

(assert (=> b!4614326 (= lt!1769507 Unit!109808)))

(assert (=> b!4614326 (forall!10729 (t!358467 lt!1769247) lambda!188999)))

(declare-fun lt!1769504 () Unit!109758)

(declare-fun Unit!109809 () Unit!109758)

(assert (=> b!4614326 (= lt!1769504 Unit!109809)))

(declare-fun lt!1769501 () Unit!109758)

(declare-fun Unit!109810 () Unit!109758)

(assert (=> b!4614326 (= lt!1769501 Unit!109810)))

(declare-fun lt!1769505 () Unit!109758)

(assert (=> b!4614326 (= lt!1769505 (forallContained!2954 (toList!4831 lt!1769494) lambda!188999 (h!57351 lt!1769247)))))

(assert (=> b!4614326 (contains!14311 lt!1769494 (_1!29383 (h!57351 lt!1769247)))))

(declare-fun lt!1769492 () Unit!109758)

(declare-fun Unit!109811 () Unit!109758)

(assert (=> b!4614326 (= lt!1769492 Unit!109811)))

(assert (=> b!4614326 (contains!14311 lt!1769506 (_1!29383 (h!57351 lt!1769247)))))

(declare-fun lt!1769510 () Unit!109758)

(declare-fun Unit!109812 () Unit!109758)

(assert (=> b!4614326 (= lt!1769510 Unit!109812)))

(assert (=> b!4614326 (forall!10729 lt!1769247 lambda!188999)))

(declare-fun lt!1769500 () Unit!109758)

(declare-fun Unit!109813 () Unit!109758)

(assert (=> b!4614326 (= lt!1769500 Unit!109813)))

(assert (=> b!4614326 (forall!10729 (toList!4831 lt!1769494) lambda!188999)))

(declare-fun lt!1769502 () Unit!109758)

(declare-fun Unit!109814 () Unit!109758)

(assert (=> b!4614326 (= lt!1769502 Unit!109814)))

(declare-fun lt!1769509 () Unit!109758)

(declare-fun Unit!109815 () Unit!109758)

(assert (=> b!4614326 (= lt!1769509 Unit!109815)))

(declare-fun lt!1769496 () Unit!109758)

(assert (=> b!4614326 (= lt!1769496 (addForallContainsKeyThenBeforeAdding!461 (ListMap!4136 Nil!51345) lt!1769506 (_1!29383 (h!57351 lt!1769247)) (_2!29383 (h!57351 lt!1769247))))))

(assert (=> b!4614326 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188999)))

(declare-fun lt!1769508 () Unit!109758)

(assert (=> b!4614326 (= lt!1769508 lt!1769496)))

(declare-fun call!321649 () Bool)

(assert (=> b!4614326 call!321649))

(declare-fun lt!1769497 () Unit!109758)

(declare-fun Unit!109816 () Unit!109758)

(assert (=> b!4614326 (= lt!1769497 Unit!109816)))

(declare-fun res!1932982 () Bool)

(assert (=> b!4614326 (= res!1932982 call!321651)))

(declare-fun e!2878246 () Bool)

(assert (=> b!4614326 (=> (not res!1932982) (not e!2878246))))

(assert (=> b!4614326 e!2878246))

(declare-fun lt!1769511 () Unit!109758)

(declare-fun Unit!109817 () Unit!109758)

(assert (=> b!4614326 (= lt!1769511 Unit!109817)))

(declare-fun b!4614327 () Bool)

(declare-fun e!2878245 () Bool)

(assert (=> b!4614327 (= e!2878245 (invariantList!1160 (toList!4831 lt!1769495)))))

(declare-fun b!4614328 () Bool)

(assert (=> b!4614328 (= e!2878246 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!188999))))

(declare-fun b!4614329 () Bool)

(declare-fun res!1932980 () Bool)

(assert (=> b!4614329 (=> (not res!1932980) (not e!2878245))))

(assert (=> b!4614329 (= res!1932980 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) lambda!189000))))

(declare-fun bm!321645 () Bool)

(assert (=> bm!321645 (= call!321650 (lemmaContainsAllItsOwnKeys!462 (ListMap!4136 Nil!51345)))))

(declare-fun bm!321646 () Bool)

(assert (=> bm!321646 (= call!321649 (forall!10729 (toList!4831 (ListMap!4136 Nil!51345)) (ite c!790028 lambda!188997 lambda!188999)))))

(assert (=> d!1453463 e!2878245))

(declare-fun res!1932981 () Bool)

(assert (=> d!1453463 (=> (not res!1932981) (not e!2878245))))

(assert (=> d!1453463 (= res!1932981 (forall!10729 lt!1769247 lambda!189000))))

(assert (=> d!1453463 (= lt!1769495 e!2878244)))

(assert (=> d!1453463 (= c!790028 (is-Nil!51345 lt!1769247))))

(assert (=> d!1453463 (noDuplicateKeys!1433 lt!1769247)))

(assert (=> d!1453463 (= (addToMapMapFromBucket!894 lt!1769247 (ListMap!4136 Nil!51345)) lt!1769495)))

(assert (=> b!4614330 (= e!2878244 (ListMap!4136 Nil!51345))))

(declare-fun lt!1769499 () Unit!109758)

(assert (=> b!4614330 (= lt!1769499 call!321650)))

(assert (=> b!4614330 call!321651))

(declare-fun lt!1769498 () Unit!109758)

(assert (=> b!4614330 (= lt!1769498 lt!1769499)))

(assert (=> b!4614330 call!321649))

(declare-fun lt!1769491 () Unit!109758)

(declare-fun Unit!109818 () Unit!109758)

(assert (=> b!4614330 (= lt!1769491 Unit!109818)))

(assert (= (and d!1453463 c!790028) b!4614330))

(assert (= (and d!1453463 (not c!790028)) b!4614326))

(assert (= (and b!4614326 res!1932982) b!4614328))

(assert (= (or b!4614330 b!4614326) bm!321645))

(assert (= (or b!4614330 b!4614326) bm!321644))

(assert (= (or b!4614330 b!4614326) bm!321646))

(assert (= (and d!1453463 res!1932981) b!4614329))

(assert (= (and b!4614329 res!1932980) b!4614327))

(declare-fun m!5446537 () Bool)

(assert (=> b!4614327 m!5446537))

(declare-fun m!5446539 () Bool)

(assert (=> d!1453463 m!5446539))

(assert (=> d!1453463 m!5446453))

(declare-fun m!5446541 () Bool)

(assert (=> b!4614328 m!5446541))

(declare-fun m!5446543 () Bool)

(assert (=> bm!321646 m!5446543))

(declare-fun m!5446545 () Bool)

(assert (=> bm!321644 m!5446545))

(declare-fun m!5446547 () Bool)

(assert (=> b!4614326 m!5446547))

(declare-fun m!5446549 () Bool)

(assert (=> b!4614326 m!5446549))

(declare-fun m!5446551 () Bool)

(assert (=> b!4614326 m!5446551))

(assert (=> b!4614326 m!5446547))

(declare-fun m!5446553 () Bool)

(assert (=> b!4614326 m!5446553))

(declare-fun m!5446555 () Bool)

(assert (=> b!4614326 m!5446555))

(declare-fun m!5446557 () Bool)

(assert (=> b!4614326 m!5446557))

(declare-fun m!5446559 () Bool)

(assert (=> b!4614326 m!5446559))

(declare-fun m!5446561 () Bool)

(assert (=> b!4614326 m!5446561))

(assert (=> b!4614326 m!5446555))

(declare-fun m!5446563 () Bool)

(assert (=> b!4614326 m!5446563))

(declare-fun m!5446565 () Bool)

(assert (=> b!4614326 m!5446565))

(assert (=> b!4614326 m!5446541))

(assert (=> bm!321645 m!5446409))

(declare-fun m!5446567 () Bool)

(assert (=> b!4614329 m!5446567))

(assert (=> b!4614147 d!1453463))

(declare-fun bs!1017011 () Bool)

(declare-fun d!1453465 () Bool)

(assert (= bs!1017011 (and d!1453465 b!4614262)))

(declare-fun lambda!189003 () Int)

(assert (=> bs!1017011 (not (= lambda!189003 lambda!188985))))

(declare-fun bs!1017012 () Bool)

(assert (= bs!1017012 (and d!1453465 d!1453443)))

(assert (=> bs!1017012 (not (= lambda!189003 lambda!188987))))

(declare-fun bs!1017013 () Bool)

(assert (= bs!1017013 (and d!1453465 b!4614326)))

(assert (=> bs!1017013 (not (= lambda!189003 lambda!188999))))

(declare-fun bs!1017014 () Bool)

(assert (= bs!1017014 (and d!1453465 d!1453463)))

(assert (=> bs!1017014 (not (= lambda!189003 lambda!189000))))

(declare-fun bs!1017015 () Bool)

(assert (= bs!1017015 (and d!1453465 b!4614231)))

(assert (=> bs!1017015 (not (= lambda!189003 lambda!188978))))

(declare-fun bs!1017016 () Bool)

(assert (= bs!1017016 (and d!1453465 b!4614266)))

(assert (=> bs!1017016 (not (= lambda!189003 lambda!188984))))

(declare-fun bs!1017017 () Bool)

(assert (= bs!1017017 (and d!1453465 d!1453445)))

(assert (=> bs!1017017 (not (= lambda!189003 lambda!188991))))

(declare-fun bs!1017018 () Bool)

(assert (= bs!1017018 (and d!1453465 b!4614267)))

(assert (=> bs!1017018 (not (= lambda!189003 lambda!188990))))

(declare-fun bs!1017019 () Bool)

(assert (= bs!1017019 (and d!1453465 b!4614321)))

(assert (=> bs!1017019 (not (= lambda!189003 lambda!188995))))

(declare-fun bs!1017020 () Bool)

(assert (= bs!1017020 (and d!1453465 b!4614330)))

(assert (=> bs!1017020 (not (= lambda!189003 lambda!188997))))

(assert (=> bs!1017015 (not (= lambda!189003 lambda!188979))))

(declare-fun bs!1017021 () Bool)

(assert (= bs!1017021 (and d!1453465 b!4614271)))

(assert (=> bs!1017021 (not (= lambda!189003 lambda!188988))))

(declare-fun bs!1017022 () Bool)

(assert (= bs!1017022 (and d!1453465 d!1453417)))

(assert (=> bs!1017022 (not (= lambda!189003 lambda!188980))))

(declare-fun bs!1017023 () Bool)

(assert (= bs!1017023 (and d!1453465 b!4614325)))

(assert (=> bs!1017023 (not (= lambda!189003 lambda!188993))))

(assert (=> bs!1017018 (not (= lambda!189003 lambda!188989))))

(assert (=> bs!1017019 (not (= lambda!189003 lambda!188994))))

(assert (=> bs!1017013 (not (= lambda!189003 lambda!188998))))

(declare-fun bs!1017024 () Bool)

(assert (= bs!1017024 (and d!1453465 d!1453461)))

(assert (=> bs!1017024 (not (= lambda!189003 lambda!188996))))

(assert (=> bs!1017011 (not (= lambda!189003 lambda!188986))))

(declare-fun bs!1017025 () Bool)

(assert (= bs!1017025 (and d!1453465 b!4614235)))

(assert (=> bs!1017025 (not (= lambda!189003 lambda!188977))))

(assert (=> d!1453465 true))

(assert (=> d!1453465 true))

(assert (=> d!1453465 (= (allKeysSameHash!1287 newBucket!224 hash!414 hashF!1389) (forall!10729 newBucket!224 lambda!189003))))

(declare-fun bs!1017026 () Bool)

(assert (= bs!1017026 d!1453465))

(declare-fun m!5446569 () Bool)

(assert (=> bs!1017026 m!5446569))

(assert (=> b!4614132 d!1453465))

(declare-fun d!1453467 () Bool)

(declare-fun res!1932987 () Bool)

(declare-fun e!2878251 () Bool)

(assert (=> d!1453467 (=> res!1932987 e!2878251)))

(assert (=> d!1453467 (= res!1932987 (is-Nil!51346 lt!1769256))))

(assert (=> d!1453467 (= (forall!10727 lt!1769256 lambda!188945) e!2878251)))

(declare-fun b!4614339 () Bool)

(declare-fun e!2878252 () Bool)

(assert (=> b!4614339 (= e!2878251 e!2878252)))

(declare-fun res!1932988 () Bool)

(assert (=> b!4614339 (=> (not res!1932988) (not e!2878252))))

(declare-fun dynLambda!21455 (Int tuple2!52180) Bool)

(assert (=> b!4614339 (= res!1932988 (dynLambda!21455 lambda!188945 (h!57352 lt!1769256)))))

(declare-fun b!4614340 () Bool)

(assert (=> b!4614340 (= e!2878252 (forall!10727 (t!358468 lt!1769256) lambda!188945))))

(assert (= (and d!1453467 (not res!1932987)) b!4614339))

(assert (= (and b!4614339 res!1932988) b!4614340))

(declare-fun b_lambda!170503 () Bool)

(assert (=> (not b_lambda!170503) (not b!4614339)))

(declare-fun m!5446571 () Bool)

(assert (=> b!4614339 m!5446571))

(declare-fun m!5446573 () Bool)

(assert (=> b!4614340 m!5446573))

(assert (=> b!4614143 d!1453467))

(declare-fun bs!1017027 () Bool)

(declare-fun d!1453469 () Bool)

(assert (= bs!1017027 (and d!1453469 b!4614143)))

(declare-fun lambda!189004 () Int)

(assert (=> bs!1017027 (= lambda!189004 lambda!188945)))

(declare-fun bs!1017028 () Bool)

(assert (= bs!1017028 (and d!1453469 d!1453429)))

(assert (=> bs!1017028 (= lambda!189004 lambda!188983)))

(declare-fun bs!1017029 () Bool)

(assert (= bs!1017029 (and d!1453469 d!1453457)))

(assert (=> bs!1017029 (= lambda!189004 lambda!188992)))

(declare-fun lt!1769512 () ListMap!4135)

(assert (=> d!1453469 (invariantList!1160 (toList!4831 lt!1769512))))

(declare-fun e!2878253 () ListMap!4135)

(assert (=> d!1453469 (= lt!1769512 e!2878253)))

(declare-fun c!790029 () Bool)

(assert (=> d!1453469 (= c!790029 (is-Cons!51346 (Cons!51346 (tuple2!52181 hash!414 newBucket!224) Nil!51346)))))

(assert (=> d!1453469 (forall!10727 (Cons!51346 (tuple2!52181 hash!414 newBucket!224) Nil!51346) lambda!189004)))

(assert (=> d!1453469 (= (extractMap!1489 (Cons!51346 (tuple2!52181 hash!414 newBucket!224) Nil!51346)) lt!1769512)))

(declare-fun b!4614341 () Bool)

(assert (=> b!4614341 (= e!2878253 (addToMapMapFromBucket!894 (_2!29384 (h!57352 (Cons!51346 (tuple2!52181 hash!414 newBucket!224) Nil!51346))) (extractMap!1489 (t!358468 (Cons!51346 (tuple2!52181 hash!414 newBucket!224) Nil!51346)))))))

(declare-fun b!4614342 () Bool)

(assert (=> b!4614342 (= e!2878253 (ListMap!4136 Nil!51345))))

(assert (= (and d!1453469 c!790029) b!4614341))

(assert (= (and d!1453469 (not c!790029)) b!4614342))

(declare-fun m!5446575 () Bool)

(assert (=> d!1453469 m!5446575))

(declare-fun m!5446577 () Bool)

(assert (=> d!1453469 m!5446577))

(declare-fun m!5446579 () Bool)

(assert (=> b!4614341 m!5446579))

(assert (=> b!4614341 m!5446579))

(declare-fun m!5446581 () Bool)

(assert (=> b!4614341 m!5446581))

(assert (=> b!4614144 d!1453469))

(declare-fun bs!1017030 () Bool)

(declare-fun d!1453471 () Bool)

(assert (= bs!1017030 (and d!1453471 b!4614143)))

(declare-fun lambda!189005 () Int)

(assert (=> bs!1017030 (= lambda!189005 lambda!188945)))

(declare-fun bs!1017031 () Bool)

(assert (= bs!1017031 (and d!1453471 d!1453429)))

(assert (=> bs!1017031 (= lambda!189005 lambda!188983)))

(declare-fun bs!1017032 () Bool)

(assert (= bs!1017032 (and d!1453471 d!1453457)))

(assert (=> bs!1017032 (= lambda!189005 lambda!188992)))

(declare-fun bs!1017033 () Bool)

(assert (= bs!1017033 (and d!1453471 d!1453469)))

(assert (=> bs!1017033 (= lambda!189005 lambda!189004)))

(declare-fun lt!1769513 () ListMap!4135)

(assert (=> d!1453471 (invariantList!1160 (toList!4831 lt!1769513))))

(declare-fun e!2878254 () ListMap!4135)

(assert (=> d!1453471 (= lt!1769513 e!2878254)))

(declare-fun c!790030 () Bool)

(assert (=> d!1453471 (= c!790030 (is-Cons!51346 lt!1769246))))

(assert (=> d!1453471 (forall!10727 lt!1769246 lambda!189005)))

(assert (=> d!1453471 (= (extractMap!1489 lt!1769246) lt!1769513)))

(declare-fun b!4614343 () Bool)

(assert (=> b!4614343 (= e!2878254 (addToMapMapFromBucket!894 (_2!29384 (h!57352 lt!1769246)) (extractMap!1489 (t!358468 lt!1769246))))))

(declare-fun b!4614344 () Bool)

(assert (=> b!4614344 (= e!2878254 (ListMap!4136 Nil!51345))))

(assert (= (and d!1453471 c!790030) b!4614343))

(assert (= (and d!1453471 (not c!790030)) b!4614344))

(declare-fun m!5446583 () Bool)

(assert (=> d!1453471 m!5446583))

(declare-fun m!5446585 () Bool)

(assert (=> d!1453471 m!5446585))

(declare-fun m!5446587 () Bool)

(assert (=> b!4614343 m!5446587))

(assert (=> b!4614343 m!5446587))

(declare-fun m!5446589 () Bool)

(assert (=> b!4614343 m!5446589))

(assert (=> b!4614144 d!1453471))

(declare-fun d!1453473 () Bool)

(declare-fun res!1932993 () Bool)

(declare-fun e!2878259 () Bool)

(assert (=> d!1453473 (=> res!1932993 e!2878259)))

(assert (=> d!1453473 (= res!1932993 (and (is-Cons!51345 lt!1769247) (= (_1!29383 (h!57351 lt!1769247)) key!4968)))))

(assert (=> d!1453473 (= (containsKey!2307 lt!1769247 key!4968) e!2878259)))

(declare-fun b!4614349 () Bool)

(declare-fun e!2878260 () Bool)

(assert (=> b!4614349 (= e!2878259 e!2878260)))

(declare-fun res!1932994 () Bool)

(assert (=> b!4614349 (=> (not res!1932994) (not e!2878260))))

(assert (=> b!4614349 (= res!1932994 (is-Cons!51345 lt!1769247))))

(declare-fun b!4614350 () Bool)

(assert (=> b!4614350 (= e!2878260 (containsKey!2307 (t!358467 lt!1769247) key!4968))))

(assert (= (and d!1453473 (not res!1932993)) b!4614349))

(assert (= (and b!4614349 res!1932994) b!4614350))

(declare-fun m!5446591 () Bool)

(assert (=> b!4614350 m!5446591))

(assert (=> b!4614134 d!1453473))

(declare-fun d!1453475 () Bool)

(declare-fun res!1932995 () Bool)

(declare-fun e!2878261 () Bool)

(assert (=> d!1453475 (=> res!1932995 e!2878261)))

(assert (=> d!1453475 (= res!1932995 (not (is-Cons!51345 oldBucket!40)))))

(assert (=> d!1453475 (= (noDuplicateKeys!1433 oldBucket!40) e!2878261)))

(declare-fun b!4614351 () Bool)

(declare-fun e!2878262 () Bool)

(assert (=> b!4614351 (= e!2878261 e!2878262)))

(declare-fun res!1932996 () Bool)

(assert (=> b!4614351 (=> (not res!1932996) (not e!2878262))))

(assert (=> b!4614351 (= res!1932996 (not (containsKey!2307 (t!358467 oldBucket!40) (_1!29383 (h!57351 oldBucket!40)))))))

(declare-fun b!4614352 () Bool)

(assert (=> b!4614352 (= e!2878262 (noDuplicateKeys!1433 (t!358467 oldBucket!40)))))

(assert (= (and d!1453475 (not res!1932995)) b!4614351))

(assert (= (and b!4614351 res!1932996) b!4614352))

(declare-fun m!5446593 () Bool)

(assert (=> b!4614351 m!5446593))

(declare-fun m!5446595 () Bool)

(assert (=> b!4614352 m!5446595))

(assert (=> start!461510 d!1453475))

(declare-fun bs!1017034 () Bool)

(declare-fun d!1453477 () Bool)

(assert (= bs!1017034 (and d!1453477 b!4614262)))

(declare-fun lambda!189006 () Int)

(assert (=> bs!1017034 (not (= lambda!189006 lambda!188985))))

(declare-fun bs!1017035 () Bool)

(assert (= bs!1017035 (and d!1453477 d!1453443)))

(assert (=> bs!1017035 (not (= lambda!189006 lambda!188987))))

(declare-fun bs!1017036 () Bool)

(assert (= bs!1017036 (and d!1453477 b!4614326)))

(assert (=> bs!1017036 (not (= lambda!189006 lambda!188999))))

(declare-fun bs!1017037 () Bool)

(assert (= bs!1017037 (and d!1453477 d!1453465)))

(assert (=> bs!1017037 (= lambda!189006 lambda!189003)))

(declare-fun bs!1017038 () Bool)

(assert (= bs!1017038 (and d!1453477 d!1453463)))

(assert (=> bs!1017038 (not (= lambda!189006 lambda!189000))))

(declare-fun bs!1017039 () Bool)

(assert (= bs!1017039 (and d!1453477 b!4614231)))

(assert (=> bs!1017039 (not (= lambda!189006 lambda!188978))))

(declare-fun bs!1017040 () Bool)

(assert (= bs!1017040 (and d!1453477 b!4614266)))

(assert (=> bs!1017040 (not (= lambda!189006 lambda!188984))))

(declare-fun bs!1017041 () Bool)

(assert (= bs!1017041 (and d!1453477 d!1453445)))

(assert (=> bs!1017041 (not (= lambda!189006 lambda!188991))))

(declare-fun bs!1017042 () Bool)

(assert (= bs!1017042 (and d!1453477 b!4614267)))

(assert (=> bs!1017042 (not (= lambda!189006 lambda!188990))))

(declare-fun bs!1017043 () Bool)

(assert (= bs!1017043 (and d!1453477 b!4614321)))

(assert (=> bs!1017043 (not (= lambda!189006 lambda!188995))))

(declare-fun bs!1017044 () Bool)

(assert (= bs!1017044 (and d!1453477 b!4614330)))

(assert (=> bs!1017044 (not (= lambda!189006 lambda!188997))))

(assert (=> bs!1017039 (not (= lambda!189006 lambda!188979))))

(declare-fun bs!1017045 () Bool)

(assert (= bs!1017045 (and d!1453477 b!4614271)))

(assert (=> bs!1017045 (not (= lambda!189006 lambda!188988))))

(declare-fun bs!1017046 () Bool)

(assert (= bs!1017046 (and d!1453477 d!1453417)))

(assert (=> bs!1017046 (not (= lambda!189006 lambda!188980))))

(declare-fun bs!1017047 () Bool)

(assert (= bs!1017047 (and d!1453477 b!4614325)))

(assert (=> bs!1017047 (not (= lambda!189006 lambda!188993))))

(assert (=> bs!1017042 (not (= lambda!189006 lambda!188989))))

(assert (=> bs!1017043 (not (= lambda!189006 lambda!188994))))

(assert (=> bs!1017036 (not (= lambda!189006 lambda!188998))))

(declare-fun bs!1017048 () Bool)

(assert (= bs!1017048 (and d!1453477 d!1453461)))

(assert (=> bs!1017048 (not (= lambda!189006 lambda!188996))))

(assert (=> bs!1017034 (not (= lambda!189006 lambda!188986))))

(declare-fun bs!1017049 () Bool)

(assert (= bs!1017049 (and d!1453477 b!4614235)))

(assert (=> bs!1017049 (not (= lambda!189006 lambda!188977))))

(assert (=> d!1453477 true))

(assert (=> d!1453477 true))

(assert (=> d!1453477 (= (allKeysSameHash!1287 oldBucket!40 hash!414 hashF!1389) (forall!10729 oldBucket!40 lambda!189006))))

(declare-fun bs!1017050 () Bool)

(assert (= bs!1017050 d!1453477))

(declare-fun m!5446597 () Bool)

(assert (=> bs!1017050 m!5446597))

(assert (=> b!4614140 d!1453477))

(declare-fun d!1453479 () Bool)

(declare-fun e!2878265 () Bool)

(assert (=> d!1453479 e!2878265))

(declare-fun res!1932999 () Bool)

(assert (=> d!1453479 (=> (not res!1932999) (not e!2878265))))

(declare-fun lt!1769516 () ListMap!4135)

(assert (=> d!1453479 (= res!1932999 (not (contains!14311 lt!1769516 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!236 (List!51469 K!12733) List!51469)

(assert (=> d!1453479 (= lt!1769516 (ListMap!4136 (removePresrvNoDuplicatedKeys!236 (toList!4831 lt!1769249) key!4968)))))

(assert (=> d!1453479 (= (-!523 lt!1769249 key!4968) lt!1769516)))

(declare-fun b!4614355 () Bool)

(declare-fun content!8716 (List!51473) (Set K!12733))

(assert (=> b!4614355 (= e!2878265 (= (set.minus (content!8716 (keys!18038 lt!1769249)) (set.insert key!4968 (as set.empty (Set K!12733)))) (content!8716 (keys!18038 lt!1769516))))))

(assert (= (and d!1453479 res!1932999) b!4614355))

(declare-fun m!5446599 () Bool)

(assert (=> d!1453479 m!5446599))

(declare-fun m!5446601 () Bool)

(assert (=> d!1453479 m!5446601))

(declare-fun m!5446603 () Bool)

(assert (=> b!4614355 m!5446603))

(declare-fun m!5446605 () Bool)

(assert (=> b!4614355 m!5446605))

(declare-fun m!5446607 () Bool)

(assert (=> b!4614355 m!5446607))

(assert (=> b!4614355 m!5446603))

(assert (=> b!4614355 m!5446607))

(declare-fun m!5446609 () Bool)

(assert (=> b!4614355 m!5446609))

(declare-fun m!5446611 () Bool)

(assert (=> b!4614355 m!5446611))

(assert (=> b!4614131 d!1453479))

(declare-fun d!1453481 () Bool)

(declare-fun e!2878266 () Bool)

(assert (=> d!1453481 e!2878266))

(declare-fun res!1933000 () Bool)

(assert (=> d!1453481 (=> (not res!1933000) (not e!2878266))))

(declare-fun lt!1769517 () ListMap!4135)

(assert (=> d!1453481 (= res!1933000 (not (contains!14311 lt!1769517 key!4968)))))

(assert (=> d!1453481 (= lt!1769517 (ListMap!4136 (removePresrvNoDuplicatedKeys!236 (toList!4831 (+!1818 lt!1769254 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40))))) key!4968)))))

(assert (=> d!1453481 (= (-!523 (+!1818 lt!1769254 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40)))) key!4968) lt!1769517)))

(declare-fun b!4614356 () Bool)

(assert (=> b!4614356 (= e!2878266 (= (set.minus (content!8716 (keys!18038 (+!1818 lt!1769254 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40)))))) (set.insert key!4968 (as set.empty (Set K!12733)))) (content!8716 (keys!18038 lt!1769517))))))

(assert (= (and d!1453481 res!1933000) b!4614356))

(declare-fun m!5446613 () Bool)

(assert (=> d!1453481 m!5446613))

(declare-fun m!5446615 () Bool)

(assert (=> d!1453481 m!5446615))

(declare-fun m!5446617 () Bool)

(assert (=> b!4614356 m!5446617))

(declare-fun m!5446619 () Bool)

(assert (=> b!4614356 m!5446619))

(declare-fun m!5446621 () Bool)

(assert (=> b!4614356 m!5446621))

(assert (=> b!4614356 m!5446153))

(assert (=> b!4614356 m!5446617))

(assert (=> b!4614356 m!5446621))

(declare-fun m!5446623 () Bool)

(assert (=> b!4614356 m!5446623))

(assert (=> b!4614356 m!5446611))

(assert (=> b!4614131 d!1453481))

(declare-fun d!1453483 () Bool)

(declare-fun e!2878267 () Bool)

(assert (=> d!1453483 e!2878267))

(declare-fun res!1933001 () Bool)

(assert (=> d!1453483 (=> (not res!1933001) (not e!2878267))))

(declare-fun lt!1769520 () ListMap!4135)

(assert (=> d!1453483 (= res!1933001 (contains!14311 lt!1769520 (_1!29383 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40))))))))

(declare-fun lt!1769521 () List!51469)

(assert (=> d!1453483 (= lt!1769520 (ListMap!4136 lt!1769521))))

(declare-fun lt!1769519 () Unit!109758)

(declare-fun lt!1769518 () Unit!109758)

(assert (=> d!1453483 (= lt!1769519 lt!1769518)))

(assert (=> d!1453483 (= (getValueByKey!1377 lt!1769521 (_1!29383 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40))))) (Some!11462 (_2!29383 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40))))))))

(assert (=> d!1453483 (= lt!1769518 (lemmaContainsTupThenGetReturnValue!813 lt!1769521 (_1!29383 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40)))) (_2!29383 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40))))))))

(assert (=> d!1453483 (= lt!1769521 (insertNoDuplicatedKeys!321 (toList!4831 lt!1769254) (_1!29383 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40)))) (_2!29383 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40))))))))

(assert (=> d!1453483 (= (+!1818 lt!1769254 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40)))) lt!1769520)))

(declare-fun b!4614357 () Bool)

(declare-fun res!1933002 () Bool)

(assert (=> b!4614357 (=> (not res!1933002) (not e!2878267))))

(assert (=> b!4614357 (= res!1933002 (= (getValueByKey!1377 (toList!4831 lt!1769520) (_1!29383 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40))))) (Some!11462 (_2!29383 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40)))))))))

(declare-fun b!4614358 () Bool)

(assert (=> b!4614358 (= e!2878267 (contains!14313 (toList!4831 lt!1769520) (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40)))))))

(assert (= (and d!1453483 res!1933001) b!4614357))

(assert (= (and b!4614357 res!1933002) b!4614358))

(declare-fun m!5446625 () Bool)

(assert (=> d!1453483 m!5446625))

(declare-fun m!5446627 () Bool)

(assert (=> d!1453483 m!5446627))

(declare-fun m!5446629 () Bool)

(assert (=> d!1453483 m!5446629))

(declare-fun m!5446631 () Bool)

(assert (=> d!1453483 m!5446631))

(declare-fun m!5446633 () Bool)

(assert (=> b!4614357 m!5446633))

(declare-fun m!5446635 () Bool)

(assert (=> b!4614358 m!5446635))

(assert (=> b!4614131 d!1453483))

(declare-fun d!1453485 () Bool)

(assert (=> d!1453485 (= (-!523 (+!1818 lt!1769254 (tuple2!52179 key!4968 (_2!29383 (h!57351 oldBucket!40)))) key!4968) lt!1769254)))

(declare-fun lt!1769524 () Unit!109758)

(declare-fun choose!31060 (ListMap!4135 K!12733 V!12979) Unit!109758)

(assert (=> d!1453485 (= lt!1769524 (choose!31060 lt!1769254 key!4968 (_2!29383 (h!57351 oldBucket!40))))))

(assert (=> d!1453485 (not (contains!14311 lt!1769254 key!4968))))

(assert (=> d!1453485 (= (addThenRemoveForNewKeyIsSame!6 lt!1769254 key!4968 (_2!29383 (h!57351 oldBucket!40))) lt!1769524)))

(declare-fun bs!1017051 () Bool)

(assert (= bs!1017051 d!1453485))

(assert (=> bs!1017051 m!5446153))

(assert (=> bs!1017051 m!5446153))

(assert (=> bs!1017051 m!5446155))

(declare-fun m!5446637 () Bool)

(assert (=> bs!1017051 m!5446637))

(assert (=> bs!1017051 m!5446175))

(assert (=> b!4614131 d!1453485))

(declare-fun bm!321647 () Bool)

(declare-fun call!321652 () Bool)

(declare-fun e!2878270 () List!51473)

(assert (=> bm!321647 (= call!321652 (contains!14314 e!2878270 key!4968))))

(declare-fun c!790032 () Bool)

(declare-fun c!790031 () Bool)

(assert (=> bm!321647 (= c!790032 c!790031)))

(declare-fun b!4614359 () Bool)

(declare-fun e!2878268 () Unit!109758)

(declare-fun Unit!109831 () Unit!109758)

(assert (=> b!4614359 (= e!2878268 Unit!109831)))

(declare-fun b!4614360 () Bool)

(declare-fun e!2878272 () Bool)

(declare-fun e!2878269 () Bool)

(assert (=> b!4614360 (= e!2878272 e!2878269)))

(declare-fun res!1933004 () Bool)

(assert (=> b!4614360 (=> (not res!1933004) (not e!2878269))))

(assert (=> b!4614360 (= res!1933004 (isDefined!8728 (getValueByKey!1377 (toList!4831 lt!1769254) key!4968)))))

(declare-fun b!4614361 () Bool)

(assert (=> b!4614361 (= e!2878270 (keys!18038 lt!1769254))))

(declare-fun d!1453487 () Bool)

(assert (=> d!1453487 e!2878272))

(declare-fun res!1933005 () Bool)

(assert (=> d!1453487 (=> res!1933005 e!2878272)))

(declare-fun e!2878271 () Bool)

(assert (=> d!1453487 (= res!1933005 e!2878271)))

(declare-fun res!1933003 () Bool)

(assert (=> d!1453487 (=> (not res!1933003) (not e!2878271))))

(declare-fun lt!1769530 () Bool)

(assert (=> d!1453487 (= res!1933003 (not lt!1769530))))

(declare-fun lt!1769527 () Bool)

(assert (=> d!1453487 (= lt!1769530 lt!1769527)))

(declare-fun lt!1769531 () Unit!109758)

(declare-fun e!2878273 () Unit!109758)

(assert (=> d!1453487 (= lt!1769531 e!2878273)))

(assert (=> d!1453487 (= c!790031 lt!1769527)))

(assert (=> d!1453487 (= lt!1769527 (containsKey!2309 (toList!4831 lt!1769254) key!4968))))

(assert (=> d!1453487 (= (contains!14311 lt!1769254 key!4968) lt!1769530)))

(declare-fun b!4614362 () Bool)

(assert (=> b!4614362 (= e!2878269 (contains!14314 (keys!18038 lt!1769254) key!4968))))

(declare-fun b!4614363 () Bool)

(assert (=> b!4614363 false))

(declare-fun lt!1769532 () Unit!109758)

(declare-fun lt!1769526 () Unit!109758)

(assert (=> b!4614363 (= lt!1769532 lt!1769526)))

(assert (=> b!4614363 (containsKey!2309 (toList!4831 lt!1769254) key!4968)))

(assert (=> b!4614363 (= lt!1769526 (lemmaInGetKeysListThenContainsKey!610 (toList!4831 lt!1769254) key!4968))))

(declare-fun Unit!109832 () Unit!109758)

(assert (=> b!4614363 (= e!2878268 Unit!109832)))

(declare-fun b!4614364 () Bool)

(assert (=> b!4614364 (= e!2878270 (getKeysList!611 (toList!4831 lt!1769254)))))

(declare-fun b!4614365 () Bool)

(declare-fun lt!1769529 () Unit!109758)

(assert (=> b!4614365 (= e!2878273 lt!1769529)))

(declare-fun lt!1769525 () Unit!109758)

(assert (=> b!4614365 (= lt!1769525 (lemmaContainsKeyImpliesGetValueByKeyDefined!1279 (toList!4831 lt!1769254) key!4968))))

(assert (=> b!4614365 (isDefined!8728 (getValueByKey!1377 (toList!4831 lt!1769254) key!4968))))

(declare-fun lt!1769528 () Unit!109758)

(assert (=> b!4614365 (= lt!1769528 lt!1769525)))

(assert (=> b!4614365 (= lt!1769529 (lemmaInListThenGetKeysListContains!606 (toList!4831 lt!1769254) key!4968))))

(assert (=> b!4614365 call!321652))

(declare-fun b!4614366 () Bool)

(assert (=> b!4614366 (= e!2878271 (not (contains!14314 (keys!18038 lt!1769254) key!4968)))))

(declare-fun b!4614367 () Bool)

(assert (=> b!4614367 (= e!2878273 e!2878268)))

(declare-fun c!790033 () Bool)

(assert (=> b!4614367 (= c!790033 call!321652)))

(assert (= (and d!1453487 c!790031) b!4614365))

(assert (= (and d!1453487 (not c!790031)) b!4614367))

(assert (= (and b!4614367 c!790033) b!4614363))

(assert (= (and b!4614367 (not c!790033)) b!4614359))

(assert (= (or b!4614365 b!4614367) bm!321647))

(assert (= (and bm!321647 c!790032) b!4614364))

(assert (= (and bm!321647 (not c!790032)) b!4614361))

(assert (= (and d!1453487 res!1933003) b!4614366))

(assert (= (and d!1453487 (not res!1933005)) b!4614360))

(assert (= (and b!4614360 res!1933004) b!4614362))

(declare-fun m!5446639 () Bool)

(assert (=> b!4614362 m!5446639))

(assert (=> b!4614362 m!5446639))

(declare-fun m!5446641 () Bool)

(assert (=> b!4614362 m!5446641))

(declare-fun m!5446643 () Bool)

(assert (=> b!4614364 m!5446643))

(assert (=> b!4614361 m!5446639))

(declare-fun m!5446645 () Bool)

(assert (=> b!4614365 m!5446645))

(declare-fun m!5446647 () Bool)

(assert (=> b!4614365 m!5446647))

(assert (=> b!4614365 m!5446647))

(declare-fun m!5446649 () Bool)

(assert (=> b!4614365 m!5446649))

(declare-fun m!5446651 () Bool)

(assert (=> b!4614365 m!5446651))

(assert (=> b!4614366 m!5446639))

(assert (=> b!4614366 m!5446639))

(assert (=> b!4614366 m!5446641))

(declare-fun m!5446653 () Bool)

(assert (=> d!1453487 m!5446653))

(declare-fun m!5446655 () Bool)

(assert (=> bm!321647 m!5446655))

(assert (=> b!4614360 m!5446647))

(assert (=> b!4614360 m!5446647))

(assert (=> b!4614360 m!5446649))

(assert (=> b!4614363 m!5446653))

(declare-fun m!5446657 () Bool)

(assert (=> b!4614363 m!5446657))

(assert (=> b!4614142 d!1453487))

(declare-fun bm!321648 () Bool)

(declare-fun call!321653 () Bool)

(declare-fun e!2878276 () List!51473)

(assert (=> bm!321648 (= call!321653 (contains!14314 e!2878276 key!4968))))

(declare-fun c!790035 () Bool)

(declare-fun c!790034 () Bool)

(assert (=> bm!321648 (= c!790035 c!790034)))

(declare-fun b!4614368 () Bool)

(declare-fun e!2878274 () Unit!109758)

(declare-fun Unit!109834 () Unit!109758)

(assert (=> b!4614368 (= e!2878274 Unit!109834)))

(declare-fun b!4614369 () Bool)

(declare-fun e!2878278 () Bool)

(declare-fun e!2878275 () Bool)

(assert (=> b!4614369 (= e!2878278 e!2878275)))

(declare-fun res!1933007 () Bool)

(assert (=> b!4614369 (=> (not res!1933007) (not e!2878275))))

(assert (=> b!4614369 (= res!1933007 (isDefined!8728 (getValueByKey!1377 (toList!4831 lt!1769253) key!4968)))))

(declare-fun b!4614370 () Bool)

(assert (=> b!4614370 (= e!2878276 (keys!18038 lt!1769253))))

(declare-fun d!1453489 () Bool)

(assert (=> d!1453489 e!2878278))

(declare-fun res!1933008 () Bool)

(assert (=> d!1453489 (=> res!1933008 e!2878278)))

(declare-fun e!2878277 () Bool)

(assert (=> d!1453489 (= res!1933008 e!2878277)))

(declare-fun res!1933006 () Bool)

(assert (=> d!1453489 (=> (not res!1933006) (not e!2878277))))

(declare-fun lt!1769538 () Bool)

(assert (=> d!1453489 (= res!1933006 (not lt!1769538))))

(declare-fun lt!1769535 () Bool)

(assert (=> d!1453489 (= lt!1769538 lt!1769535)))

(declare-fun lt!1769539 () Unit!109758)

(declare-fun e!2878279 () Unit!109758)

(assert (=> d!1453489 (= lt!1769539 e!2878279)))

(assert (=> d!1453489 (= c!790034 lt!1769535)))

(assert (=> d!1453489 (= lt!1769535 (containsKey!2309 (toList!4831 lt!1769253) key!4968))))

(assert (=> d!1453489 (= (contains!14311 lt!1769253 key!4968) lt!1769538)))

(declare-fun b!4614371 () Bool)

(assert (=> b!4614371 (= e!2878275 (contains!14314 (keys!18038 lt!1769253) key!4968))))

(declare-fun b!4614372 () Bool)

(assert (=> b!4614372 false))

(declare-fun lt!1769540 () Unit!109758)

(declare-fun lt!1769534 () Unit!109758)

(assert (=> b!4614372 (= lt!1769540 lt!1769534)))

(assert (=> b!4614372 (containsKey!2309 (toList!4831 lt!1769253) key!4968)))

(assert (=> b!4614372 (= lt!1769534 (lemmaInGetKeysListThenContainsKey!610 (toList!4831 lt!1769253) key!4968))))

(declare-fun Unit!109835 () Unit!109758)

(assert (=> b!4614372 (= e!2878274 Unit!109835)))

(declare-fun b!4614373 () Bool)

(assert (=> b!4614373 (= e!2878276 (getKeysList!611 (toList!4831 lt!1769253)))))

(declare-fun b!4614374 () Bool)

(declare-fun lt!1769537 () Unit!109758)

(assert (=> b!4614374 (= e!2878279 lt!1769537)))

(declare-fun lt!1769533 () Unit!109758)

(assert (=> b!4614374 (= lt!1769533 (lemmaContainsKeyImpliesGetValueByKeyDefined!1279 (toList!4831 lt!1769253) key!4968))))

(assert (=> b!4614374 (isDefined!8728 (getValueByKey!1377 (toList!4831 lt!1769253) key!4968))))

(declare-fun lt!1769536 () Unit!109758)

(assert (=> b!4614374 (= lt!1769536 lt!1769533)))

(assert (=> b!4614374 (= lt!1769537 (lemmaInListThenGetKeysListContains!606 (toList!4831 lt!1769253) key!4968))))

(assert (=> b!4614374 call!321653))

(declare-fun b!4614375 () Bool)

(assert (=> b!4614375 (= e!2878277 (not (contains!14314 (keys!18038 lt!1769253) key!4968)))))

(declare-fun b!4614376 () Bool)

(assert (=> b!4614376 (= e!2878279 e!2878274)))

(declare-fun c!790036 () Bool)

(assert (=> b!4614376 (= c!790036 call!321653)))

(assert (= (and d!1453489 c!790034) b!4614374))

(assert (= (and d!1453489 (not c!790034)) b!4614376))

(assert (= (and b!4614376 c!790036) b!4614372))

(assert (= (and b!4614376 (not c!790036)) b!4614368))

(assert (= (or b!4614374 b!4614376) bm!321648))

(assert (= (and bm!321648 c!790035) b!4614373))

(assert (= (and bm!321648 (not c!790035)) b!4614370))

(assert (= (and d!1453489 res!1933006) b!4614375))

(assert (= (and d!1453489 (not res!1933008)) b!4614369))

(assert (= (and b!4614369 res!1933007) b!4614371))

(declare-fun m!5446659 () Bool)

(assert (=> b!4614371 m!5446659))

(assert (=> b!4614371 m!5446659))

(declare-fun m!5446661 () Bool)

(assert (=> b!4614371 m!5446661))

(declare-fun m!5446663 () Bool)

(assert (=> b!4614373 m!5446663))

(assert (=> b!4614370 m!5446659))

(declare-fun m!5446665 () Bool)

(assert (=> b!4614374 m!5446665))

(declare-fun m!5446667 () Bool)

(assert (=> b!4614374 m!5446667))

(assert (=> b!4614374 m!5446667))

(declare-fun m!5446669 () Bool)

(assert (=> b!4614374 m!5446669))

(declare-fun m!5446671 () Bool)

(assert (=> b!4614374 m!5446671))

(assert (=> b!4614375 m!5446659))

(assert (=> b!4614375 m!5446659))

(assert (=> b!4614375 m!5446661))

(declare-fun m!5446673 () Bool)

(assert (=> d!1453489 m!5446673))

(declare-fun m!5446675 () Bool)

(assert (=> bm!321648 m!5446675))

(assert (=> b!4614369 m!5446667))

(assert (=> b!4614369 m!5446667))

(assert (=> b!4614369 m!5446669))

(assert (=> b!4614372 m!5446673))

(declare-fun m!5446677 () Bool)

(assert (=> b!4614372 m!5446677))

(assert (=> b!4614142 d!1453489))

(declare-fun bs!1017052 () Bool)

(declare-fun d!1453491 () Bool)

(assert (= bs!1017052 (and d!1453491 d!1453429)))

(declare-fun lambda!189011 () Int)

(assert (=> bs!1017052 (= lambda!189011 lambda!188983)))

(declare-fun bs!1017053 () Bool)

(assert (= bs!1017053 (and d!1453491 b!4614143)))

(assert (=> bs!1017053 (= lambda!189011 lambda!188945)))

(declare-fun bs!1017054 () Bool)

(assert (= bs!1017054 (and d!1453491 d!1453471)))

(assert (=> bs!1017054 (= lambda!189011 lambda!189005)))

(declare-fun bs!1017055 () Bool)

(assert (= bs!1017055 (and d!1453491 d!1453457)))

(assert (=> bs!1017055 (= lambda!189011 lambda!188992)))

(declare-fun bs!1017056 () Bool)

(assert (= bs!1017056 (and d!1453491 d!1453469)))

(assert (=> bs!1017056 (= lambda!189011 lambda!189004)))

(assert (=> d!1453491 (not (contains!14311 (extractMap!1489 (toList!4832 (ListLongMap!3422 lt!1769246))) key!4968))))

(declare-fun lt!1769549 () Unit!109758)

(declare-fun choose!31061 (ListLongMap!3421 K!12733 Hashable!5830) Unit!109758)

(assert (=> d!1453491 (= lt!1769549 (choose!31061 (ListLongMap!3422 lt!1769246) key!4968 hashF!1389))))

(assert (=> d!1453491 (forall!10727 (toList!4832 (ListLongMap!3422 lt!1769246)) lambda!189011)))

(assert (=> d!1453491 (= (lemmaNotInItsHashBucketThenNotInMap!347 (ListLongMap!3422 lt!1769246) key!4968 hashF!1389) lt!1769549)))

(declare-fun bs!1017057 () Bool)

(assert (= bs!1017057 d!1453491))

(declare-fun m!5446679 () Bool)

(assert (=> bs!1017057 m!5446679))

(assert (=> bs!1017057 m!5446679))

(declare-fun m!5446681 () Bool)

(assert (=> bs!1017057 m!5446681))

(declare-fun m!5446683 () Bool)

(assert (=> bs!1017057 m!5446683))

(declare-fun m!5446685 () Bool)

(assert (=> bs!1017057 m!5446685))

(assert (=> b!4614142 d!1453491))

(declare-fun e!2878284 () Bool)

(declare-fun tp!1341502 () Bool)

(declare-fun b!4614385 () Bool)

(assert (=> b!4614385 (= e!2878284 (and tp_is_empty!29025 tp_is_empty!29027 tp!1341502))))

(assert (=> b!4614133 (= tp!1341492 e!2878284)))

(assert (= (and b!4614133 (is-Cons!51345 (t!358467 newBucket!224))) b!4614385))

(declare-fun e!2878285 () Bool)

(declare-fun b!4614386 () Bool)

(declare-fun tp!1341503 () Bool)

(assert (=> b!4614386 (= e!2878285 (and tp_is_empty!29025 tp_is_empty!29027 tp!1341503))))

(assert (=> b!4614146 (= tp!1341493 e!2878285)))

(assert (= (and b!4614146 (is-Cons!51345 (t!358467 oldBucket!40))) b!4614386))

(declare-fun b_lambda!170505 () Bool)

(assert (= b_lambda!170503 (or b!4614143 b_lambda!170505)))

(declare-fun bs!1017058 () Bool)

(declare-fun d!1453493 () Bool)

(assert (= bs!1017058 (and d!1453493 b!4614143)))

(assert (=> bs!1017058 (= (dynLambda!21455 lambda!188945 (h!57352 lt!1769256)) (noDuplicateKeys!1433 (_2!29384 (h!57352 lt!1769256))))))

(declare-fun m!5446687 () Bool)

(assert (=> bs!1017058 m!5446687))

(assert (=> b!4614339 d!1453493))

(push 1)

(assert (not b!4614366))

(assert tp_is_empty!29027)

(assert tp_is_empty!29025)

(assert (not bm!321646))

(assert (not b!4614269))

(assert (not b!4614343))

(assert (not b!4614300))

(assert (not bm!321636))

(assert (not b!4614234))

(assert (not d!1453447))

(assert (not d!1453417))

(assert (not b!4614364))

(assert (not d!1453445))

(assert (not d!1453437))

(assert (not b!4614322))

(assert (not d!1453439))

(assert (not b!4614299))

(assert (not b!4614365))

(assert (not b!4614267))

(assert (not d!1453491))

(assert (not b!4614328))

(assert (not b!4614372))

(assert (not b!4614301))

(assert (not b!4614233))

(assert (not bm!321630))

(assert (not b!4614278))

(assert (not b!4614375))

(assert (not b!4614272))

(assert (not b!4614341))

(assert (not b!4614326))

(assert (not d!1453449))

(assert (not d!1453485))

(assert (not d!1453465))

(assert (not d!1453457))

(assert (not b!4614356))

(assert (not b!4614357))

(assert (not b!4614304))

(assert (not b!4614386))

(assert (not b!4614361))

(assert (not b!4614273))

(assert (not b!4614324))

(assert (not bm!321647))

(assert (not bm!321645))

(assert (not b!4614329))

(assert (not d!1453487))

(assert (not bm!321642))

(assert (not d!1453453))

(assert (not b!4614373))

(assert (not d!1453479))

(assert (not b!4614262))

(assert (not b!4614362))

(assert (not b!4614305))

(assert (not b!4614268))

(assert (not b!4614370))

(assert (not d!1453461))

(assert (not b!4614363))

(assert (not b!4614352))

(assert (not b!4614385))

(assert (not d!1453455))

(assert (not b!4614350))

(assert (not bm!321637))

(assert (not d!1453489))

(assert (not bs!1017058))

(assert (not b!4614371))

(assert (not b!4614279))

(assert (not b!4614231))

(assert (not d!1453459))

(assert (not b!4614319))

(assert (not b!4614302))

(assert (not d!1453463))

(assert (not bm!321635))

(assert (not d!1453429))

(assert (not b!4614263))

(assert (not b!4614374))

(assert (not b!4614358))

(assert (not b!4614369))

(assert (not d!1453477))

(assert (not d!1453469))

(assert (not b!4614351))

(assert (not d!1453483))

(assert (not bm!321633))

(assert (not b!4614232))

(assert (not bm!321632))

(assert (not b!4614327))

(assert (not b!4614261))

(assert (not bm!321641))

(assert (not bm!321644))

(assert (not d!1453481))

(assert (not b!4614321))

(assert (not bm!321643))

(assert (not b!4614270))

(assert (not b!4614323))

(assert (not b!4614355))

(assert (not bm!321634))

(assert (not b_lambda!170505))

(assert (not b!4614254))

(assert (not b!4614265))

(assert (not b!4614307))

(assert (not d!1453441))

(assert (not bm!321640))

(assert (not b!4614260))

(assert (not bm!321631))

(assert (not bm!321629))

(assert (not b!4614360))

(assert (not b!4614340))

(assert (not d!1453443))

(assert (not b!4614303))

(assert (not bm!321648))

(assert (not b!4614264))

(assert (not d!1453471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

