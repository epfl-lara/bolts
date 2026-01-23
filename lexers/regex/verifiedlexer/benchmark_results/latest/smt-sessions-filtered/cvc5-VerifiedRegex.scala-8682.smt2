; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!462294 () Bool)

(assert start!462294)

(declare-fun b!4618697 () Bool)

(declare-fun e!2880985 () Bool)

(declare-fun e!2880992 () Bool)

(assert (=> b!4618697 (= e!2880985 (not e!2880992))))

(declare-fun res!1935645 () Bool)

(assert (=> b!4618697 (=> res!1935645 e!2880992)))

(declare-datatypes ((K!12813 0))(
  ( (K!12814 (val!18521 Int)) )
))
(declare-datatypes ((V!13059 0))(
  ( (V!13060 (val!18522 Int)) )
))
(declare-datatypes ((tuple2!52306 0))(
  ( (tuple2!52307 (_1!29447 K!12813) (_2!29447 V!13059)) )
))
(declare-datatypes ((List!51553 0))(
  ( (Nil!51429) (Cons!51429 (h!57455 tuple2!52306) (t!358565 List!51553)) )
))
(declare-fun oldBucket!40 () List!51553)

(declare-fun key!4968 () K!12813)

(assert (=> b!4618697 (= res!1935645 (or (and (is-Cons!51429 oldBucket!40) (= (_1!29447 (h!57455 oldBucket!40)) key!4968)) (not (is-Cons!51429 oldBucket!40)) (= (_1!29447 (h!57455 oldBucket!40)) key!4968)))))

(declare-fun e!2880990 () Bool)

(assert (=> b!4618697 e!2880990))

(declare-fun res!1935651 () Bool)

(assert (=> b!4618697 (=> (not res!1935651) (not e!2880990))))

(declare-datatypes ((ListMap!4199 0))(
  ( (ListMap!4200 (toList!4895 List!51553)) )
))
(declare-fun lt!1774576 () ListMap!4199)

(declare-fun lt!1774582 () ListMap!4199)

(declare-fun addToMapMapFromBucket!926 (List!51553 ListMap!4199) ListMap!4199)

(assert (=> b!4618697 (= res!1935651 (= lt!1774576 (addToMapMapFromBucket!926 oldBucket!40 lt!1774582)))))

(declare-datatypes ((tuple2!52308 0))(
  ( (tuple2!52309 (_1!29448 (_ BitVec 64)) (_2!29448 List!51553)) )
))
(declare-datatypes ((List!51554 0))(
  ( (Nil!51430) (Cons!51430 (h!57456 tuple2!52308) (t!358566 List!51554)) )
))
(declare-fun extractMap!1521 (List!51554) ListMap!4199)

(assert (=> b!4618697 (= lt!1774582 (extractMap!1521 Nil!51430))))

(assert (=> b!4618697 true))

(declare-fun b!4618698 () Bool)

(declare-fun e!2880988 () Bool)

(declare-fun e!2880991 () Bool)

(assert (=> b!4618698 (= e!2880988 e!2880991)))

(declare-fun res!1935648 () Bool)

(assert (=> b!4618698 (=> (not res!1935648) (not e!2880991))))

(declare-fun contains!14407 (ListMap!4199 K!12813) Bool)

(assert (=> b!4618698 (= res!1935648 (contains!14407 lt!1774576 key!4968))))

(declare-fun lt!1774573 () List!51554)

(assert (=> b!4618698 (= lt!1774576 (extractMap!1521 lt!1774573))))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4618698 (= lt!1774573 (Cons!51430 (tuple2!52309 hash!414 oldBucket!40) Nil!51430))))

(declare-fun b!4618699 () Bool)

(declare-fun e!2880987 () Bool)

(declare-fun newBucket!224 () List!51553)

(assert (=> b!4618699 (= e!2880987 (not (= newBucket!224 Nil!51429)))))

(declare-fun b!4618700 () Bool)

(declare-fun res!1935646 () Bool)

(assert (=> b!4618700 (=> (not res!1935646) (not e!2880988))))

(declare-fun noDuplicateKeys!1465 (List!51553) Bool)

(assert (=> b!4618700 (= res!1935646 (noDuplicateKeys!1465 newBucket!224))))

(declare-fun e!2880986 () Bool)

(declare-fun tp!1341764 () Bool)

(declare-fun tp_is_empty!29153 () Bool)

(declare-fun tp_is_empty!29155 () Bool)

(declare-fun b!4618701 () Bool)

(assert (=> b!4618701 (= e!2880986 (and tp_is_empty!29153 tp_is_empty!29155 tp!1341764))))

(declare-fun b!4618702 () Bool)

(declare-fun res!1935643 () Bool)

(assert (=> b!4618702 (=> (not res!1935643) (not e!2880988))))

(declare-fun removePairForKey!1088 (List!51553 K!12813) List!51553)

(assert (=> b!4618702 (= res!1935643 (= (removePairForKey!1088 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4618703 () Bool)

(declare-fun res!1935650 () Bool)

(assert (=> b!4618703 (=> res!1935650 e!2880987)))

(declare-fun tail!8100 (List!51553) List!51553)

(assert (=> b!4618703 (= res!1935650 (not (= (removePairForKey!1088 (tail!8100 oldBucket!40) key!4968) (tail!8100 newBucket!224))))))

(declare-fun b!4618704 () Bool)

(declare-fun res!1935649 () Bool)

(assert (=> b!4618704 (=> (not res!1935649) (not e!2880985))))

(declare-datatypes ((Hashable!5862 0))(
  ( (HashableExt!5861 (__x!31565 Int)) )
))
(declare-fun hashF!1389 () Hashable!5862)

(declare-fun allKeysSameHash!1319 (List!51553 (_ BitVec 64) Hashable!5862) Bool)

(assert (=> b!4618704 (= res!1935649 (allKeysSameHash!1319 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4618705 () Bool)

(assert (=> b!4618705 (= e!2880992 e!2880987)))

(declare-fun res!1935644 () Bool)

(assert (=> b!4618705 (=> res!1935644 e!2880987)))

(declare-fun containsKey!2359 (List!51553 K!12813) Bool)

(assert (=> b!4618705 (= res!1935644 (not (containsKey!2359 (t!358565 oldBucket!40) key!4968)))))

(assert (=> b!4618705 (containsKey!2359 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!110748 0))(
  ( (Unit!110749) )
))
(declare-fun lt!1774574 () Unit!110748)

(declare-fun lemmaGetPairDefinedThenContainsKey!11 (List!51553 K!12813 Hashable!5862) Unit!110748)

(assert (=> b!4618705 (= lt!1774574 (lemmaGetPairDefinedThenContainsKey!11 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1774578 () List!51553)

(declare-datatypes ((Option!11501 0))(
  ( (None!11500) (Some!11500 (v!45578 tuple2!52306)) )
))
(declare-fun isDefined!8766 (Option!11501) Bool)

(declare-fun getPair!257 (List!51553 K!12813) Option!11501)

(assert (=> b!4618705 (isDefined!8766 (getPair!257 lt!1774578 key!4968))))

(declare-fun lambda!190193 () Int)

(declare-fun lt!1774581 () tuple2!52308)

(declare-fun lt!1774575 () Unit!110748)

(declare-fun forallContained!2986 (List!51554 Int tuple2!52308) Unit!110748)

(assert (=> b!4618705 (= lt!1774575 (forallContained!2986 lt!1774573 lambda!190193 lt!1774581))))

(declare-fun contains!14408 (List!51554 tuple2!52308) Bool)

(assert (=> b!4618705 (contains!14408 lt!1774573 lt!1774581)))

(declare-fun lt!1774572 () (_ BitVec 64))

(assert (=> b!4618705 (= lt!1774581 (tuple2!52309 lt!1774572 lt!1774578))))

(declare-fun lt!1774580 () Unit!110748)

(declare-datatypes ((ListLongMap!3485 0))(
  ( (ListLongMap!3486 (toList!4896 List!51554)) )
))
(declare-fun lt!1774579 () ListLongMap!3485)

(declare-fun lemmaGetValueImpliesTupleContained!62 (ListLongMap!3485 (_ BitVec 64) List!51553) Unit!110748)

(assert (=> b!4618705 (= lt!1774580 (lemmaGetValueImpliesTupleContained!62 lt!1774579 lt!1774572 lt!1774578))))

(declare-fun apply!12130 (ListLongMap!3485 (_ BitVec 64)) List!51553)

(assert (=> b!4618705 (= lt!1774578 (apply!12130 lt!1774579 lt!1774572))))

(declare-fun contains!14409 (ListLongMap!3485 (_ BitVec 64)) Bool)

(assert (=> b!4618705 (contains!14409 lt!1774579 lt!1774572)))

(declare-fun lt!1774583 () Unit!110748)

(declare-fun lemmaInGenMapThenLongMapContainsHash!463 (ListLongMap!3485 K!12813 Hashable!5862) Unit!110748)

(assert (=> b!4618705 (= lt!1774583 (lemmaInGenMapThenLongMapContainsHash!463 lt!1774579 key!4968 hashF!1389))))

(declare-fun lt!1774577 () Unit!110748)

(declare-fun lemmaInGenMapThenGetPairDefined!53 (ListLongMap!3485 K!12813 Hashable!5862) Unit!110748)

(assert (=> b!4618705 (= lt!1774577 (lemmaInGenMapThenGetPairDefined!53 lt!1774579 key!4968 hashF!1389))))

(assert (=> b!4618705 (= lt!1774579 (ListLongMap!3486 lt!1774573))))

(declare-fun b!4618706 () Bool)

(declare-fun res!1935647 () Bool)

(assert (=> b!4618706 (=> (not res!1935647) (not e!2880988))))

(assert (=> b!4618706 (= res!1935647 (allKeysSameHash!1319 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1341765 () Bool)

(declare-fun e!2880989 () Bool)

(declare-fun b!4618707 () Bool)

(assert (=> b!4618707 (= e!2880989 (and tp_is_empty!29153 tp_is_empty!29155 tp!1341765))))

(declare-fun res!1935641 () Bool)

(assert (=> start!462294 (=> (not res!1935641) (not e!2880988))))

(assert (=> start!462294 (= res!1935641 (noDuplicateKeys!1465 oldBucket!40))))

(assert (=> start!462294 e!2880988))

(assert (=> start!462294 true))

(assert (=> start!462294 e!2880986))

(assert (=> start!462294 tp_is_empty!29153))

(assert (=> start!462294 e!2880989))

(declare-fun b!4618708 () Bool)

(assert (=> b!4618708 (= e!2880990 (= lt!1774582 (ListMap!4200 Nil!51429)))))

(declare-fun b!4618709 () Bool)

(assert (=> b!4618709 (= e!2880991 e!2880985)))

(declare-fun res!1935642 () Bool)

(assert (=> b!4618709 (=> (not res!1935642) (not e!2880985))))

(assert (=> b!4618709 (= res!1935642 (= lt!1774572 hash!414))))

(declare-fun hash!3432 (Hashable!5862 K!12813) (_ BitVec 64))

(assert (=> b!4618709 (= lt!1774572 (hash!3432 hashF!1389 key!4968))))

(assert (= (and start!462294 res!1935641) b!4618700))

(assert (= (and b!4618700 res!1935646) b!4618702))

(assert (= (and b!4618702 res!1935643) b!4618706))

(assert (= (and b!4618706 res!1935647) b!4618698))

(assert (= (and b!4618698 res!1935648) b!4618709))

(assert (= (and b!4618709 res!1935642) b!4618704))

(assert (= (and b!4618704 res!1935649) b!4618697))

(assert (= (and b!4618697 res!1935651) b!4618708))

(assert (= (and b!4618697 (not res!1935645)) b!4618705))

(assert (= (and b!4618705 (not res!1935644)) b!4618703))

(assert (= (and b!4618703 (not res!1935650)) b!4618699))

(assert (= (and start!462294 (is-Cons!51429 oldBucket!40)) b!4618701))

(assert (= (and start!462294 (is-Cons!51429 newBucket!224)) b!4618707))

(declare-fun m!5454247 () Bool)

(assert (=> start!462294 m!5454247))

(declare-fun m!5454249 () Bool)

(assert (=> b!4618705 m!5454249))

(declare-fun m!5454251 () Bool)

(assert (=> b!4618705 m!5454251))

(declare-fun m!5454253 () Bool)

(assert (=> b!4618705 m!5454253))

(declare-fun m!5454255 () Bool)

(assert (=> b!4618705 m!5454255))

(declare-fun m!5454257 () Bool)

(assert (=> b!4618705 m!5454257))

(declare-fun m!5454259 () Bool)

(assert (=> b!4618705 m!5454259))

(declare-fun m!5454261 () Bool)

(assert (=> b!4618705 m!5454261))

(declare-fun m!5454263 () Bool)

(assert (=> b!4618705 m!5454263))

(declare-fun m!5454265 () Bool)

(assert (=> b!4618705 m!5454265))

(declare-fun m!5454267 () Bool)

(assert (=> b!4618705 m!5454267))

(declare-fun m!5454269 () Bool)

(assert (=> b!4618705 m!5454269))

(assert (=> b!4618705 m!5454257))

(declare-fun m!5454271 () Bool)

(assert (=> b!4618705 m!5454271))

(declare-fun m!5454273 () Bool)

(assert (=> b!4618709 m!5454273))

(declare-fun m!5454275 () Bool)

(assert (=> b!4618706 m!5454275))

(declare-fun m!5454277 () Bool)

(assert (=> b!4618698 m!5454277))

(declare-fun m!5454279 () Bool)

(assert (=> b!4618698 m!5454279))

(declare-fun m!5454281 () Bool)

(assert (=> b!4618702 m!5454281))

(declare-fun m!5454283 () Bool)

(assert (=> b!4618704 m!5454283))

(declare-fun m!5454285 () Bool)

(assert (=> b!4618700 m!5454285))

(declare-fun m!5454287 () Bool)

(assert (=> b!4618703 m!5454287))

(assert (=> b!4618703 m!5454287))

(declare-fun m!5454289 () Bool)

(assert (=> b!4618703 m!5454289))

(declare-fun m!5454291 () Bool)

(assert (=> b!4618703 m!5454291))

(declare-fun m!5454293 () Bool)

(assert (=> b!4618697 m!5454293))

(declare-fun m!5454295 () Bool)

(assert (=> b!4618697 m!5454295))

(push 1)

(assert (not b!4618701))

(assert (not b!4618705))

(assert (not b!4618709))

(assert tp_is_empty!29153)

(assert (not start!462294))

(assert (not b!4618706))

(assert (not b!4618702))

(assert (not b!4618703))

(assert (not b!4618707))

(assert (not b!4618698))

(assert (not b!4618697))

(assert (not b!4618700))

(assert tp_is_empty!29155)

(assert (not b!4618704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1454747 () Bool)

(assert (=> d!1454747 true))

(assert (=> d!1454747 true))

(declare-fun lambda!190199 () Int)

(declare-fun forall!10771 (List!51553 Int) Bool)

(assert (=> d!1454747 (= (allKeysSameHash!1319 oldBucket!40 hash!414 hashF!1389) (forall!10771 oldBucket!40 lambda!190199))))

(declare-fun bs!1019380 () Bool)

(assert (= bs!1019380 d!1454747))

(declare-fun m!5454347 () Bool)

(assert (=> bs!1019380 m!5454347))

(assert (=> b!4618706 d!1454747))

(declare-fun d!1454749 () Bool)

(declare-fun res!1935689 () Bool)

(declare-fun e!2881021 () Bool)

(assert (=> d!1454749 (=> res!1935689 e!2881021)))

(assert (=> d!1454749 (= res!1935689 (not (is-Cons!51429 oldBucket!40)))))

(assert (=> d!1454749 (= (noDuplicateKeys!1465 oldBucket!40) e!2881021)))

(declare-fun b!4618757 () Bool)

(declare-fun e!2881022 () Bool)

(assert (=> b!4618757 (= e!2881021 e!2881022)))

(declare-fun res!1935690 () Bool)

(assert (=> b!4618757 (=> (not res!1935690) (not e!2881022))))

(assert (=> b!4618757 (= res!1935690 (not (containsKey!2359 (t!358565 oldBucket!40) (_1!29447 (h!57455 oldBucket!40)))))))

(declare-fun b!4618758 () Bool)

(assert (=> b!4618758 (= e!2881022 (noDuplicateKeys!1465 (t!358565 oldBucket!40)))))

(assert (= (and d!1454749 (not res!1935689)) b!4618757))

(assert (= (and b!4618757 res!1935690) b!4618758))

(declare-fun m!5454349 () Bool)

(assert (=> b!4618757 m!5454349))

(declare-fun m!5454351 () Bool)

(assert (=> b!4618758 m!5454351))

(assert (=> start!462294 d!1454749))

(declare-fun d!1454751 () Bool)

(declare-fun res!1935691 () Bool)

(declare-fun e!2881023 () Bool)

(assert (=> d!1454751 (=> res!1935691 e!2881023)))

(assert (=> d!1454751 (= res!1935691 (not (is-Cons!51429 newBucket!224)))))

(assert (=> d!1454751 (= (noDuplicateKeys!1465 newBucket!224) e!2881023)))

(declare-fun b!4618759 () Bool)

(declare-fun e!2881024 () Bool)

(assert (=> b!4618759 (= e!2881023 e!2881024)))

(declare-fun res!1935692 () Bool)

(assert (=> b!4618759 (=> (not res!1935692) (not e!2881024))))

(assert (=> b!4618759 (= res!1935692 (not (containsKey!2359 (t!358565 newBucket!224) (_1!29447 (h!57455 newBucket!224)))))))

(declare-fun b!4618760 () Bool)

(assert (=> b!4618760 (= e!2881024 (noDuplicateKeys!1465 (t!358565 newBucket!224)))))

(assert (= (and d!1454751 (not res!1935691)) b!4618759))

(assert (= (and b!4618759 res!1935692) b!4618760))

(declare-fun m!5454353 () Bool)

(assert (=> b!4618759 m!5454353))

(declare-fun m!5454355 () Bool)

(assert (=> b!4618760 m!5454355))

(assert (=> b!4618700 d!1454751))

(declare-fun bs!1019384 () Bool)

(declare-fun b!4618844 () Bool)

(assert (= bs!1019384 (and b!4618844 d!1454747)))

(declare-fun lambda!190228 () Int)

(assert (=> bs!1019384 (not (= lambda!190228 lambda!190199))))

(assert (=> b!4618844 true))

(declare-fun bs!1019385 () Bool)

(declare-fun b!4618840 () Bool)

(assert (= bs!1019385 (and b!4618840 d!1454747)))

(declare-fun lambda!190229 () Int)

(assert (=> bs!1019385 (not (= lambda!190229 lambda!190199))))

(declare-fun bs!1019386 () Bool)

(assert (= bs!1019386 (and b!4618840 b!4618844)))

(assert (=> bs!1019386 (= lambda!190229 lambda!190228)))

(assert (=> b!4618840 true))

(declare-fun lambda!190230 () Int)

(assert (=> bs!1019385 (not (= lambda!190230 lambda!190199))))

(declare-fun lt!1774702 () ListMap!4199)

(assert (=> bs!1019386 (= (= lt!1774702 lt!1774582) (= lambda!190230 lambda!190228))))

(assert (=> b!4618840 (= (= lt!1774702 lt!1774582) (= lambda!190230 lambda!190229))))

(assert (=> b!4618840 true))

(declare-fun bs!1019388 () Bool)

(declare-fun d!1454753 () Bool)

(assert (= bs!1019388 (and d!1454753 d!1454747)))

(declare-fun lambda!190231 () Int)

(assert (=> bs!1019388 (not (= lambda!190231 lambda!190199))))

(declare-fun bs!1019389 () Bool)

(assert (= bs!1019389 (and d!1454753 b!4618844)))

(declare-fun lt!1774689 () ListMap!4199)

(assert (=> bs!1019389 (= (= lt!1774689 lt!1774582) (= lambda!190231 lambda!190228))))

(declare-fun bs!1019390 () Bool)

(assert (= bs!1019390 (and d!1454753 b!4618840)))

(assert (=> bs!1019390 (= (= lt!1774689 lt!1774582) (= lambda!190231 lambda!190229))))

(assert (=> bs!1019390 (= (= lt!1774689 lt!1774702) (= lambda!190231 lambda!190230))))

(assert (=> d!1454753 true))

(declare-fun e!2881081 () ListMap!4199)

(assert (=> b!4618840 (= e!2881081 lt!1774702)))

(declare-fun lt!1774701 () ListMap!4199)

(declare-fun +!1840 (ListMap!4199 tuple2!52306) ListMap!4199)

(assert (=> b!4618840 (= lt!1774701 (+!1840 lt!1774582 (h!57455 oldBucket!40)))))

(assert (=> b!4618840 (= lt!1774702 (addToMapMapFromBucket!926 (t!358565 oldBucket!40) (+!1840 lt!1774582 (h!57455 oldBucket!40))))))

(declare-fun lt!1774692 () Unit!110748)

(declare-fun call!322071 () Unit!110748)

(assert (=> b!4618840 (= lt!1774692 call!322071)))

(declare-fun call!322072 () Bool)

(assert (=> b!4618840 call!322072))

(declare-fun lt!1774703 () Unit!110748)

(assert (=> b!4618840 (= lt!1774703 lt!1774692)))

(assert (=> b!4618840 (forall!10771 (toList!4895 lt!1774701) lambda!190230)))

(declare-fun lt!1774709 () Unit!110748)

(declare-fun Unit!110752 () Unit!110748)

(assert (=> b!4618840 (= lt!1774709 Unit!110752)))

(assert (=> b!4618840 (forall!10771 (t!358565 oldBucket!40) lambda!190230)))

(declare-fun lt!1774690 () Unit!110748)

(declare-fun Unit!110753 () Unit!110748)

(assert (=> b!4618840 (= lt!1774690 Unit!110753)))

(declare-fun lt!1774693 () Unit!110748)

(declare-fun Unit!110754 () Unit!110748)

(assert (=> b!4618840 (= lt!1774693 Unit!110754)))

(declare-fun lt!1774699 () Unit!110748)

(declare-fun forallContained!2988 (List!51553 Int tuple2!52306) Unit!110748)

(assert (=> b!4618840 (= lt!1774699 (forallContained!2988 (toList!4895 lt!1774701) lambda!190230 (h!57455 oldBucket!40)))))

(assert (=> b!4618840 (contains!14407 lt!1774701 (_1!29447 (h!57455 oldBucket!40)))))

(declare-fun lt!1774691 () Unit!110748)

(declare-fun Unit!110755 () Unit!110748)

(assert (=> b!4618840 (= lt!1774691 Unit!110755)))

(assert (=> b!4618840 (contains!14407 lt!1774702 (_1!29447 (h!57455 oldBucket!40)))))

(declare-fun lt!1774695 () Unit!110748)

(declare-fun Unit!110756 () Unit!110748)

(assert (=> b!4618840 (= lt!1774695 Unit!110756)))

(assert (=> b!4618840 (forall!10771 oldBucket!40 lambda!190230)))

(declare-fun lt!1774696 () Unit!110748)

(declare-fun Unit!110757 () Unit!110748)

(assert (=> b!4618840 (= lt!1774696 Unit!110757)))

(declare-fun call!322070 () Bool)

(assert (=> b!4618840 call!322070))

(declare-fun lt!1774698 () Unit!110748)

(declare-fun Unit!110758 () Unit!110748)

(assert (=> b!4618840 (= lt!1774698 Unit!110758)))

(declare-fun lt!1774697 () Unit!110748)

(declare-fun Unit!110759 () Unit!110748)

(assert (=> b!4618840 (= lt!1774697 Unit!110759)))

(declare-fun lt!1774705 () Unit!110748)

(declare-fun addForallContainsKeyThenBeforeAdding!481 (ListMap!4199 ListMap!4199 K!12813 V!13059) Unit!110748)

(assert (=> b!4618840 (= lt!1774705 (addForallContainsKeyThenBeforeAdding!481 lt!1774582 lt!1774702 (_1!29447 (h!57455 oldBucket!40)) (_2!29447 (h!57455 oldBucket!40))))))

(assert (=> b!4618840 (forall!10771 (toList!4895 lt!1774582) lambda!190230)))

(declare-fun lt!1774704 () Unit!110748)

(assert (=> b!4618840 (= lt!1774704 lt!1774705)))

(assert (=> b!4618840 (forall!10771 (toList!4895 lt!1774582) lambda!190230)))

(declare-fun lt!1774706 () Unit!110748)

(declare-fun Unit!110760 () Unit!110748)

(assert (=> b!4618840 (= lt!1774706 Unit!110760)))

(declare-fun res!1935738 () Bool)

(assert (=> b!4618840 (= res!1935738 (forall!10771 oldBucket!40 lambda!190230))))

(declare-fun e!2881083 () Bool)

(assert (=> b!4618840 (=> (not res!1935738) (not e!2881083))))

(assert (=> b!4618840 e!2881083))

(declare-fun lt!1774707 () Unit!110748)

(declare-fun Unit!110761 () Unit!110748)

(assert (=> b!4618840 (= lt!1774707 Unit!110761)))

(declare-fun c!790686 () Bool)

(declare-fun bm!322065 () Bool)

(assert (=> bm!322065 (= call!322070 (forall!10771 (ite c!790686 (toList!4895 lt!1774582) (toList!4895 lt!1774701)) (ite c!790686 lambda!190228 lambda!190230)))))

(declare-fun b!4618841 () Bool)

(declare-fun res!1935737 () Bool)

(declare-fun e!2881082 () Bool)

(assert (=> b!4618841 (=> (not res!1935737) (not e!2881082))))

(assert (=> b!4618841 (= res!1935737 (forall!10771 (toList!4895 lt!1774582) lambda!190231))))

(declare-fun b!4618842 () Bool)

(assert (=> b!4618842 (= e!2881083 (forall!10771 (toList!4895 lt!1774582) lambda!190230))))

(declare-fun bm!322066 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!482 (ListMap!4199) Unit!110748)

(assert (=> bm!322066 (= call!322071 (lemmaContainsAllItsOwnKeys!482 lt!1774582))))

(declare-fun b!4618843 () Bool)

(declare-fun invariantList!1180 (List!51553) Bool)

(assert (=> b!4618843 (= e!2881082 (invariantList!1180 (toList!4895 lt!1774689)))))

(assert (=> b!4618844 (= e!2881081 lt!1774582)))

(declare-fun lt!1774694 () Unit!110748)

(assert (=> b!4618844 (= lt!1774694 call!322071)))

(assert (=> b!4618844 call!322072))

(declare-fun lt!1774708 () Unit!110748)

(assert (=> b!4618844 (= lt!1774708 lt!1774694)))

(assert (=> b!4618844 call!322070))

(declare-fun lt!1774700 () Unit!110748)

(declare-fun Unit!110762 () Unit!110748)

(assert (=> b!4618844 (= lt!1774700 Unit!110762)))

(assert (=> d!1454753 e!2881082))

(declare-fun res!1935739 () Bool)

(assert (=> d!1454753 (=> (not res!1935739) (not e!2881082))))

(assert (=> d!1454753 (= res!1935739 (forall!10771 oldBucket!40 lambda!190231))))

(assert (=> d!1454753 (= lt!1774689 e!2881081)))

(assert (=> d!1454753 (= c!790686 (is-Nil!51429 oldBucket!40))))

(assert (=> d!1454753 (noDuplicateKeys!1465 oldBucket!40)))

(assert (=> d!1454753 (= (addToMapMapFromBucket!926 oldBucket!40 lt!1774582) lt!1774689)))

(declare-fun bm!322067 () Bool)

(assert (=> bm!322067 (= call!322072 (forall!10771 (toList!4895 lt!1774582) (ite c!790686 lambda!190228 lambda!190229)))))

(assert (= (and d!1454753 c!790686) b!4618844))

(assert (= (and d!1454753 (not c!790686)) b!4618840))

(assert (= (and b!4618840 res!1935738) b!4618842))

(assert (= (or b!4618844 b!4618840) bm!322066))

(assert (= (or b!4618844 b!4618840) bm!322067))

(assert (= (or b!4618844 b!4618840) bm!322065))

(assert (= (and d!1454753 res!1935739) b!4618841))

(assert (= (and b!4618841 res!1935737) b!4618843))

(declare-fun m!5454411 () Bool)

(assert (=> b!4618841 m!5454411))

(declare-fun m!5454413 () Bool)

(assert (=> b!4618843 m!5454413))

(declare-fun m!5454415 () Bool)

(assert (=> d!1454753 m!5454415))

(assert (=> d!1454753 m!5454247))

(declare-fun m!5454417 () Bool)

(assert (=> bm!322067 m!5454417))

(declare-fun m!5454419 () Bool)

(assert (=> b!4618842 m!5454419))

(declare-fun m!5454421 () Bool)

(assert (=> bm!322066 m!5454421))

(declare-fun m!5454423 () Bool)

(assert (=> bm!322065 m!5454423))

(declare-fun m!5454425 () Bool)

(assert (=> b!4618840 m!5454425))

(declare-fun m!5454427 () Bool)

(assert (=> b!4618840 m!5454427))

(assert (=> b!4618840 m!5454419))

(declare-fun m!5454429 () Bool)

(assert (=> b!4618840 m!5454429))

(declare-fun m!5454431 () Bool)

(assert (=> b!4618840 m!5454431))

(declare-fun m!5454433 () Bool)

(assert (=> b!4618840 m!5454433))

(assert (=> b!4618840 m!5454433))

(declare-fun m!5454435 () Bool)

(assert (=> b!4618840 m!5454435))

(assert (=> b!4618840 m!5454425))

(declare-fun m!5454437 () Bool)

(assert (=> b!4618840 m!5454437))

(assert (=> b!4618840 m!5454419))

(declare-fun m!5454439 () Bool)

(assert (=> b!4618840 m!5454439))

(declare-fun m!5454441 () Bool)

(assert (=> b!4618840 m!5454441))

(assert (=> b!4618697 d!1454753))

(declare-fun bs!1019391 () Bool)

(declare-fun d!1454781 () Bool)

(assert (= bs!1019391 (and d!1454781 b!4618705)))

(declare-fun lambda!190234 () Int)

(assert (=> bs!1019391 (= lambda!190234 lambda!190193)))

(declare-fun lt!1774715 () ListMap!4199)

(assert (=> d!1454781 (invariantList!1180 (toList!4895 lt!1774715))))

(declare-fun e!2881086 () ListMap!4199)

(assert (=> d!1454781 (= lt!1774715 e!2881086)))

(declare-fun c!790689 () Bool)

(assert (=> d!1454781 (= c!790689 (is-Cons!51430 Nil!51430))))

(declare-fun forall!10772 (List!51554 Int) Bool)

(assert (=> d!1454781 (forall!10772 Nil!51430 lambda!190234)))

(assert (=> d!1454781 (= (extractMap!1521 Nil!51430) lt!1774715)))

(declare-fun b!4618851 () Bool)

(assert (=> b!4618851 (= e!2881086 (addToMapMapFromBucket!926 (_2!29448 (h!57456 Nil!51430)) (extractMap!1521 (t!358566 Nil!51430))))))

(declare-fun b!4618852 () Bool)

(assert (=> b!4618852 (= e!2881086 (ListMap!4200 Nil!51429))))

(assert (= (and d!1454781 c!790689) b!4618851))

(assert (= (and d!1454781 (not c!790689)) b!4618852))

(declare-fun m!5454443 () Bool)

(assert (=> d!1454781 m!5454443))

(declare-fun m!5454445 () Bool)

(assert (=> d!1454781 m!5454445))

(declare-fun m!5454447 () Bool)

(assert (=> b!4618851 m!5454447))

(assert (=> b!4618851 m!5454447))

(declare-fun m!5454449 () Bool)

(assert (=> b!4618851 m!5454449))

(assert (=> b!4618697 d!1454781))

(declare-fun b!4618861 () Bool)

(declare-fun e!2881091 () List!51553)

(assert (=> b!4618861 (= e!2881091 (t!358565 oldBucket!40))))

(declare-fun d!1454783 () Bool)

(declare-fun lt!1774718 () List!51553)

(assert (=> d!1454783 (not (containsKey!2359 lt!1774718 key!4968))))

(assert (=> d!1454783 (= lt!1774718 e!2881091)))

(declare-fun c!790694 () Bool)

(assert (=> d!1454783 (= c!790694 (and (is-Cons!51429 oldBucket!40) (= (_1!29447 (h!57455 oldBucket!40)) key!4968)))))

(assert (=> d!1454783 (noDuplicateKeys!1465 oldBucket!40)))

(assert (=> d!1454783 (= (removePairForKey!1088 oldBucket!40 key!4968) lt!1774718)))

(declare-fun b!4618864 () Bool)

(declare-fun e!2881092 () List!51553)

(assert (=> b!4618864 (= e!2881092 Nil!51429)))

(declare-fun b!4618863 () Bool)

(assert (=> b!4618863 (= e!2881092 (Cons!51429 (h!57455 oldBucket!40) (removePairForKey!1088 (t!358565 oldBucket!40) key!4968)))))

(declare-fun b!4618862 () Bool)

(assert (=> b!4618862 (= e!2881091 e!2881092)))

(declare-fun c!790695 () Bool)

(assert (=> b!4618862 (= c!790695 (is-Cons!51429 oldBucket!40))))

(assert (= (and d!1454783 c!790694) b!4618861))

(assert (= (and d!1454783 (not c!790694)) b!4618862))

(assert (= (and b!4618862 c!790695) b!4618863))

(assert (= (and b!4618862 (not c!790695)) b!4618864))

(declare-fun m!5454451 () Bool)

(assert (=> d!1454783 m!5454451))

(assert (=> d!1454783 m!5454247))

(declare-fun m!5454453 () Bool)

(assert (=> b!4618863 m!5454453))

(assert (=> b!4618702 d!1454783))

(declare-fun d!1454785 () Bool)

(declare-fun hash!3434 (Hashable!5862 K!12813) (_ BitVec 64))

(assert (=> d!1454785 (= (hash!3432 hashF!1389 key!4968) (hash!3434 hashF!1389 key!4968))))

(declare-fun bs!1019392 () Bool)

(assert (= bs!1019392 d!1454785))

(declare-fun m!5454455 () Bool)

(assert (=> bs!1019392 m!5454455))

(assert (=> b!4618709 d!1454785))

(declare-fun d!1454787 () Bool)

(declare-fun e!2881110 () Bool)

(assert (=> d!1454787 e!2881110))

(declare-fun res!1935747 () Bool)

(assert (=> d!1454787 (=> res!1935747 e!2881110)))

(declare-fun e!2881108 () Bool)

(assert (=> d!1454787 (= res!1935747 e!2881108)))

(declare-fun res!1935746 () Bool)

(assert (=> d!1454787 (=> (not res!1935746) (not e!2881108))))

(declare-fun lt!1774740 () Bool)

(assert (=> d!1454787 (= res!1935746 (not lt!1774740))))

(declare-fun lt!1774741 () Bool)

(assert (=> d!1454787 (= lt!1774740 lt!1774741)))

(declare-fun lt!1774736 () Unit!110748)

(declare-fun e!2881109 () Unit!110748)

(assert (=> d!1454787 (= lt!1774736 e!2881109)))

(declare-fun c!790704 () Bool)

(assert (=> d!1454787 (= c!790704 lt!1774741)))

(declare-fun containsKey!2361 (List!51553 K!12813) Bool)

(assert (=> d!1454787 (= lt!1774741 (containsKey!2361 (toList!4895 lt!1774576) key!4968))))

(assert (=> d!1454787 (= (contains!14407 lt!1774576 key!4968) lt!1774740)))

(declare-fun b!4618883 () Bool)

(declare-fun e!2881105 () Bool)

(assert (=> b!4618883 (= e!2881110 e!2881105)))

(declare-fun res!1935748 () Bool)

(assert (=> b!4618883 (=> (not res!1935748) (not e!2881105))))

(declare-datatypes ((Option!11503 0))(
  ( (None!11502) (Some!11502 (v!45584 V!13059)) )
))
(declare-fun isDefined!8768 (Option!11503) Bool)

(declare-fun getValueByKey!1403 (List!51553 K!12813) Option!11503)

(assert (=> b!4618883 (= res!1935748 (isDefined!8768 (getValueByKey!1403 (toList!4895 lt!1774576) key!4968)))))

(declare-fun b!4618884 () Bool)

(assert (=> b!4618884 false))

(declare-fun lt!1774739 () Unit!110748)

(declare-fun lt!1774737 () Unit!110748)

(assert (=> b!4618884 (= lt!1774739 lt!1774737)))

(assert (=> b!4618884 (containsKey!2361 (toList!4895 lt!1774576) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!630 (List!51553 K!12813) Unit!110748)

(assert (=> b!4618884 (= lt!1774737 (lemmaInGetKeysListThenContainsKey!630 (toList!4895 lt!1774576) key!4968))))

(declare-fun e!2881106 () Unit!110748)

(declare-fun Unit!110763 () Unit!110748)

(assert (=> b!4618884 (= e!2881106 Unit!110763)))

(declare-fun b!4618885 () Bool)

(assert (=> b!4618885 (= e!2881109 e!2881106)))

(declare-fun c!790703 () Bool)

(declare-fun call!322075 () Bool)

(assert (=> b!4618885 (= c!790703 call!322075)))

(declare-fun b!4618886 () Bool)

(declare-datatypes ((List!51557 0))(
  ( (Nil!51433) (Cons!51433 (h!57460 K!12813) (t!358569 List!51557)) )
))
(declare-fun e!2881107 () List!51557)

(declare-fun getKeysList!631 (List!51553) List!51557)

(assert (=> b!4618886 (= e!2881107 (getKeysList!631 (toList!4895 lt!1774576)))))

(declare-fun b!4618887 () Bool)

(declare-fun keys!18090 (ListMap!4199) List!51557)

(assert (=> b!4618887 (= e!2881107 (keys!18090 lt!1774576))))

(declare-fun b!4618888 () Bool)

(declare-fun contains!14413 (List!51557 K!12813) Bool)

(assert (=> b!4618888 (= e!2881108 (not (contains!14413 (keys!18090 lt!1774576) key!4968)))))

(declare-fun bm!322070 () Bool)

(assert (=> bm!322070 (= call!322075 (contains!14413 e!2881107 key!4968))))

(declare-fun c!790702 () Bool)

(assert (=> bm!322070 (= c!790702 c!790704)))

(declare-fun b!4618889 () Bool)

(assert (=> b!4618889 (= e!2881105 (contains!14413 (keys!18090 lt!1774576) key!4968))))

(declare-fun b!4618890 () Bool)

(declare-fun lt!1774742 () Unit!110748)

(assert (=> b!4618890 (= e!2881109 lt!1774742)))

(declare-fun lt!1774735 () Unit!110748)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1305 (List!51553 K!12813) Unit!110748)

(assert (=> b!4618890 (= lt!1774735 (lemmaContainsKeyImpliesGetValueByKeyDefined!1305 (toList!4895 lt!1774576) key!4968))))

(assert (=> b!4618890 (isDefined!8768 (getValueByKey!1403 (toList!4895 lt!1774576) key!4968))))

(declare-fun lt!1774738 () Unit!110748)

(assert (=> b!4618890 (= lt!1774738 lt!1774735)))

(declare-fun lemmaInListThenGetKeysListContains!626 (List!51553 K!12813) Unit!110748)

(assert (=> b!4618890 (= lt!1774742 (lemmaInListThenGetKeysListContains!626 (toList!4895 lt!1774576) key!4968))))

(assert (=> b!4618890 call!322075))

(declare-fun b!4618891 () Bool)

(declare-fun Unit!110764 () Unit!110748)

(assert (=> b!4618891 (= e!2881106 Unit!110764)))

(assert (= (and d!1454787 c!790704) b!4618890))

(assert (= (and d!1454787 (not c!790704)) b!4618885))

(assert (= (and b!4618885 c!790703) b!4618884))

(assert (= (and b!4618885 (not c!790703)) b!4618891))

(assert (= (or b!4618890 b!4618885) bm!322070))

(assert (= (and bm!322070 c!790702) b!4618886))

(assert (= (and bm!322070 (not c!790702)) b!4618887))

(assert (= (and d!1454787 res!1935746) b!4618888))

(assert (= (and d!1454787 (not res!1935747)) b!4618883))

(assert (= (and b!4618883 res!1935748) b!4618889))

(declare-fun m!5454457 () Bool)

(assert (=> b!4618887 m!5454457))

(assert (=> b!4618888 m!5454457))

(assert (=> b!4618888 m!5454457))

(declare-fun m!5454459 () Bool)

(assert (=> b!4618888 m!5454459))

(declare-fun m!5454461 () Bool)

(assert (=> b!4618883 m!5454461))

(assert (=> b!4618883 m!5454461))

(declare-fun m!5454463 () Bool)

(assert (=> b!4618883 m!5454463))

(declare-fun m!5454465 () Bool)

(assert (=> d!1454787 m!5454465))

(declare-fun m!5454467 () Bool)

(assert (=> bm!322070 m!5454467))

(declare-fun m!5454469 () Bool)

(assert (=> b!4618890 m!5454469))

(assert (=> b!4618890 m!5454461))

(assert (=> b!4618890 m!5454461))

(assert (=> b!4618890 m!5454463))

(declare-fun m!5454471 () Bool)

(assert (=> b!4618890 m!5454471))

(declare-fun m!5454473 () Bool)

(assert (=> b!4618886 m!5454473))

(assert (=> b!4618889 m!5454457))

(assert (=> b!4618889 m!5454457))

(assert (=> b!4618889 m!5454459))

(assert (=> b!4618884 m!5454465))

(declare-fun m!5454475 () Bool)

(assert (=> b!4618884 m!5454475))

(assert (=> b!4618698 d!1454787))

(declare-fun bs!1019393 () Bool)

(declare-fun d!1454789 () Bool)

(assert (= bs!1019393 (and d!1454789 b!4618705)))

(declare-fun lambda!190235 () Int)

(assert (=> bs!1019393 (= lambda!190235 lambda!190193)))

(declare-fun bs!1019394 () Bool)

(assert (= bs!1019394 (and d!1454789 d!1454781)))

(assert (=> bs!1019394 (= lambda!190235 lambda!190234)))

(declare-fun lt!1774743 () ListMap!4199)

(assert (=> d!1454789 (invariantList!1180 (toList!4895 lt!1774743))))

(declare-fun e!2881111 () ListMap!4199)

(assert (=> d!1454789 (= lt!1774743 e!2881111)))

(declare-fun c!790705 () Bool)

(assert (=> d!1454789 (= c!790705 (is-Cons!51430 lt!1774573))))

(assert (=> d!1454789 (forall!10772 lt!1774573 lambda!190235)))

(assert (=> d!1454789 (= (extractMap!1521 lt!1774573) lt!1774743)))

(declare-fun b!4618892 () Bool)

(assert (=> b!4618892 (= e!2881111 (addToMapMapFromBucket!926 (_2!29448 (h!57456 lt!1774573)) (extractMap!1521 (t!358566 lt!1774573))))))

(declare-fun b!4618893 () Bool)

(assert (=> b!4618893 (= e!2881111 (ListMap!4200 Nil!51429))))

(assert (= (and d!1454789 c!790705) b!4618892))

(assert (= (and d!1454789 (not c!790705)) b!4618893))

(declare-fun m!5454477 () Bool)

(assert (=> d!1454789 m!5454477))

(declare-fun m!5454479 () Bool)

(assert (=> d!1454789 m!5454479))

(declare-fun m!5454481 () Bool)

(assert (=> b!4618892 m!5454481))

(assert (=> b!4618892 m!5454481))

(declare-fun m!5454483 () Bool)

(assert (=> b!4618892 m!5454483))

(assert (=> b!4618698 d!1454789))

(declare-fun b!4618894 () Bool)

(declare-fun e!2881112 () List!51553)

(assert (=> b!4618894 (= e!2881112 (t!358565 (tail!8100 oldBucket!40)))))

(declare-fun d!1454791 () Bool)

(declare-fun lt!1774744 () List!51553)

(assert (=> d!1454791 (not (containsKey!2359 lt!1774744 key!4968))))

(assert (=> d!1454791 (= lt!1774744 e!2881112)))

(declare-fun c!790706 () Bool)

(assert (=> d!1454791 (= c!790706 (and (is-Cons!51429 (tail!8100 oldBucket!40)) (= (_1!29447 (h!57455 (tail!8100 oldBucket!40))) key!4968)))))

(assert (=> d!1454791 (noDuplicateKeys!1465 (tail!8100 oldBucket!40))))

(assert (=> d!1454791 (= (removePairForKey!1088 (tail!8100 oldBucket!40) key!4968) lt!1774744)))

(declare-fun b!4618897 () Bool)

(declare-fun e!2881113 () List!51553)

(assert (=> b!4618897 (= e!2881113 Nil!51429)))

(declare-fun b!4618896 () Bool)

(assert (=> b!4618896 (= e!2881113 (Cons!51429 (h!57455 (tail!8100 oldBucket!40)) (removePairForKey!1088 (t!358565 (tail!8100 oldBucket!40)) key!4968)))))

(declare-fun b!4618895 () Bool)

(assert (=> b!4618895 (= e!2881112 e!2881113)))

(declare-fun c!790707 () Bool)

(assert (=> b!4618895 (= c!790707 (is-Cons!51429 (tail!8100 oldBucket!40)))))

(assert (= (and d!1454791 c!790706) b!4618894))

(assert (= (and d!1454791 (not c!790706)) b!4618895))

(assert (= (and b!4618895 c!790707) b!4618896))

(assert (= (and b!4618895 (not c!790707)) b!4618897))

(declare-fun m!5454485 () Bool)

(assert (=> d!1454791 m!5454485))

(assert (=> d!1454791 m!5454287))

(declare-fun m!5454487 () Bool)

(assert (=> d!1454791 m!5454487))

(declare-fun m!5454489 () Bool)

(assert (=> b!4618896 m!5454489))

(assert (=> b!4618703 d!1454791))

(declare-fun d!1454793 () Bool)

(assert (=> d!1454793 (= (tail!8100 oldBucket!40) (t!358565 oldBucket!40))))

(assert (=> b!4618703 d!1454793))

(declare-fun d!1454795 () Bool)

(assert (=> d!1454795 (= (tail!8100 newBucket!224) (t!358565 newBucket!224))))

(assert (=> b!4618703 d!1454795))

(declare-fun d!1454797 () Bool)

(declare-fun isEmpty!28905 (Option!11501) Bool)

(assert (=> d!1454797 (= (isDefined!8766 (getPair!257 lt!1774578 key!4968)) (not (isEmpty!28905 (getPair!257 lt!1774578 key!4968))))))

(declare-fun bs!1019395 () Bool)

(assert (= bs!1019395 d!1454797))

(assert (=> bs!1019395 m!5454257))

(declare-fun m!5454491 () Bool)

(assert (=> bs!1019395 m!5454491))

(assert (=> b!4618705 d!1454797))

(declare-fun d!1454799 () Bool)

(declare-fun e!2881124 () Bool)

(assert (=> d!1454799 e!2881124))

(declare-fun res!1935760 () Bool)

(assert (=> d!1454799 (=> res!1935760 e!2881124)))

(declare-fun e!2881128 () Bool)

(assert (=> d!1454799 (= res!1935760 e!2881128)))

(declare-fun res!1935759 () Bool)

(assert (=> d!1454799 (=> (not res!1935759) (not e!2881128))))

(declare-fun lt!1774747 () Option!11501)

(assert (=> d!1454799 (= res!1935759 (isEmpty!28905 lt!1774747))))

(declare-fun e!2881125 () Option!11501)

(assert (=> d!1454799 (= lt!1774747 e!2881125)))

(declare-fun c!790713 () Bool)

(assert (=> d!1454799 (= c!790713 (and (is-Cons!51429 lt!1774578) (= (_1!29447 (h!57455 lt!1774578)) key!4968)))))

(assert (=> d!1454799 (noDuplicateKeys!1465 lt!1774578)))

(assert (=> d!1454799 (= (getPair!257 lt!1774578 key!4968) lt!1774747)))

(declare-fun b!4618914 () Bool)

(declare-fun e!2881126 () Option!11501)

(assert (=> b!4618914 (= e!2881126 (getPair!257 (t!358565 lt!1774578) key!4968))))

(declare-fun b!4618915 () Bool)

(assert (=> b!4618915 (= e!2881125 e!2881126)))

(declare-fun c!790712 () Bool)

(assert (=> b!4618915 (= c!790712 (is-Cons!51429 lt!1774578))))

(declare-fun b!4618916 () Bool)

(declare-fun e!2881127 () Bool)

(assert (=> b!4618916 (= e!2881124 e!2881127)))

(declare-fun res!1935757 () Bool)

(assert (=> b!4618916 (=> (not res!1935757) (not e!2881127))))

(assert (=> b!4618916 (= res!1935757 (isDefined!8766 lt!1774747))))

(declare-fun b!4618917 () Bool)

(assert (=> b!4618917 (= e!2881128 (not (containsKey!2359 lt!1774578 key!4968)))))

(declare-fun b!4618918 () Bool)

(assert (=> b!4618918 (= e!2881126 None!11500)))

(declare-fun b!4618919 () Bool)

(declare-fun contains!14414 (List!51553 tuple2!52306) Bool)

(declare-fun get!17008 (Option!11501) tuple2!52306)

(assert (=> b!4618919 (= e!2881127 (contains!14414 lt!1774578 (get!17008 lt!1774747)))))

(declare-fun b!4618920 () Bool)

(declare-fun res!1935758 () Bool)

(assert (=> b!4618920 (=> (not res!1935758) (not e!2881127))))

(assert (=> b!4618920 (= res!1935758 (= (_1!29447 (get!17008 lt!1774747)) key!4968))))

(declare-fun b!4618921 () Bool)

(assert (=> b!4618921 (= e!2881125 (Some!11500 (h!57455 lt!1774578)))))

(assert (= (and d!1454799 c!790713) b!4618921))

(assert (= (and d!1454799 (not c!790713)) b!4618915))

(assert (= (and b!4618915 c!790712) b!4618914))

(assert (= (and b!4618915 (not c!790712)) b!4618918))

(assert (= (and d!1454799 res!1935759) b!4618917))

(assert (= (and d!1454799 (not res!1935760)) b!4618916))

(assert (= (and b!4618916 res!1935757) b!4618920))

(assert (= (and b!4618920 res!1935758) b!4618919))

(declare-fun m!5454493 () Bool)

(assert (=> d!1454799 m!5454493))

(declare-fun m!5454495 () Bool)

(assert (=> d!1454799 m!5454495))

(declare-fun m!5454497 () Bool)

(assert (=> b!4618914 m!5454497))

(declare-fun m!5454499 () Bool)

(assert (=> b!4618916 m!5454499))

(declare-fun m!5454501 () Bool)

(assert (=> b!4618920 m!5454501))

(assert (=> b!4618919 m!5454501))

(assert (=> b!4618919 m!5454501))

(declare-fun m!5454503 () Bool)

(assert (=> b!4618919 m!5454503))

(declare-fun m!5454505 () Bool)

(assert (=> b!4618917 m!5454505))

(assert (=> b!4618705 d!1454799))

(declare-fun bs!1019396 () Bool)

(declare-fun d!1454801 () Bool)

(assert (= bs!1019396 (and d!1454801 b!4618705)))

(declare-fun lambda!190238 () Int)

(assert (=> bs!1019396 (= lambda!190238 lambda!190193)))

(declare-fun bs!1019397 () Bool)

(assert (= bs!1019397 (and d!1454801 d!1454781)))

(assert (=> bs!1019397 (= lambda!190238 lambda!190234)))

(declare-fun bs!1019398 () Bool)

(assert (= bs!1019398 (and d!1454801 d!1454789)))

(assert (=> bs!1019398 (= lambda!190238 lambda!190235)))

(assert (=> d!1454801 (contains!14409 lt!1774579 (hash!3432 hashF!1389 key!4968))))

(declare-fun lt!1774750 () Unit!110748)

(declare-fun choose!31139 (ListLongMap!3485 K!12813 Hashable!5862) Unit!110748)

(assert (=> d!1454801 (= lt!1774750 (choose!31139 lt!1774579 key!4968 hashF!1389))))

(assert (=> d!1454801 (forall!10772 (toList!4896 lt!1774579) lambda!190238)))

(assert (=> d!1454801 (= (lemmaInGenMapThenLongMapContainsHash!463 lt!1774579 key!4968 hashF!1389) lt!1774750)))

(declare-fun bs!1019399 () Bool)

(assert (= bs!1019399 d!1454801))

(assert (=> bs!1019399 m!5454273))

(assert (=> bs!1019399 m!5454273))

(declare-fun m!5454507 () Bool)

(assert (=> bs!1019399 m!5454507))

(declare-fun m!5454509 () Bool)

(assert (=> bs!1019399 m!5454509))

(declare-fun m!5454511 () Bool)

(assert (=> bs!1019399 m!5454511))

(assert (=> b!4618705 d!1454801))

(declare-fun d!1454803 () Bool)

(assert (=> d!1454803 (contains!14408 (toList!4896 lt!1774579) (tuple2!52309 lt!1774572 lt!1774578))))

(declare-fun lt!1774753 () Unit!110748)

(declare-fun choose!31140 (ListLongMap!3485 (_ BitVec 64) List!51553) Unit!110748)

(assert (=> d!1454803 (= lt!1774753 (choose!31140 lt!1774579 lt!1774572 lt!1774578))))

(assert (=> d!1454803 (contains!14409 lt!1774579 lt!1774572)))

(assert (=> d!1454803 (= (lemmaGetValueImpliesTupleContained!62 lt!1774579 lt!1774572 lt!1774578) lt!1774753)))

(declare-fun bs!1019400 () Bool)

(assert (= bs!1019400 d!1454803))

(declare-fun m!5454513 () Bool)

(assert (=> bs!1019400 m!5454513))

(declare-fun m!5454515 () Bool)

(assert (=> bs!1019400 m!5454515))

(assert (=> bs!1019400 m!5454249))

(assert (=> b!4618705 d!1454803))

(declare-fun d!1454805 () Bool)

(declare-fun lt!1774756 () Bool)

(declare-fun content!8748 (List!51554) (Set tuple2!52308))

(assert (=> d!1454805 (= lt!1774756 (set.member lt!1774581 (content!8748 lt!1774573)))))

(declare-fun e!2881134 () Bool)

(assert (=> d!1454805 (= lt!1774756 e!2881134)))

(declare-fun res!1935766 () Bool)

(assert (=> d!1454805 (=> (not res!1935766) (not e!2881134))))

(assert (=> d!1454805 (= res!1935766 (is-Cons!51430 lt!1774573))))

(assert (=> d!1454805 (= (contains!14408 lt!1774573 lt!1774581) lt!1774756)))

(declare-fun b!4618927 () Bool)

(declare-fun e!2881133 () Bool)

(assert (=> b!4618927 (= e!2881134 e!2881133)))

(declare-fun res!1935765 () Bool)

(assert (=> b!4618927 (=> res!1935765 e!2881133)))

(assert (=> b!4618927 (= res!1935765 (= (h!57456 lt!1774573) lt!1774581))))

(declare-fun b!4618928 () Bool)

(assert (=> b!4618928 (= e!2881133 (contains!14408 (t!358566 lt!1774573) lt!1774581))))

(assert (= (and d!1454805 res!1935766) b!4618927))

(assert (= (and b!4618927 (not res!1935765)) b!4618928))

(declare-fun m!5454517 () Bool)

(assert (=> d!1454805 m!5454517))

(declare-fun m!5454519 () Bool)

(assert (=> d!1454805 m!5454519))

(declare-fun m!5454521 () Bool)

(assert (=> b!4618928 m!5454521))

(assert (=> b!4618705 d!1454805))

(declare-fun d!1454807 () Bool)

(declare-fun res!1935771 () Bool)

(declare-fun e!2881139 () Bool)

(assert (=> d!1454807 (=> res!1935771 e!2881139)))

(assert (=> d!1454807 (= res!1935771 (and (is-Cons!51429 (t!358565 oldBucket!40)) (= (_1!29447 (h!57455 (t!358565 oldBucket!40))) key!4968)))))

(assert (=> d!1454807 (= (containsKey!2359 (t!358565 oldBucket!40) key!4968) e!2881139)))

(declare-fun b!4618933 () Bool)

(declare-fun e!2881140 () Bool)

(assert (=> b!4618933 (= e!2881139 e!2881140)))

(declare-fun res!1935772 () Bool)

(assert (=> b!4618933 (=> (not res!1935772) (not e!2881140))))

(assert (=> b!4618933 (= res!1935772 (is-Cons!51429 (t!358565 oldBucket!40)))))

(declare-fun b!4618934 () Bool)

(assert (=> b!4618934 (= e!2881140 (containsKey!2359 (t!358565 (t!358565 oldBucket!40)) key!4968))))

(assert (= (and d!1454807 (not res!1935771)) b!4618933))

(assert (= (and b!4618933 res!1935772) b!4618934))

(declare-fun m!5454523 () Bool)

(assert (=> b!4618934 m!5454523))

(assert (=> b!4618705 d!1454807))

(declare-fun d!1454809 () Bool)

(assert (=> d!1454809 (containsKey!2359 oldBucket!40 key!4968)))

(declare-fun lt!1774759 () Unit!110748)

(declare-fun choose!31141 (List!51553 K!12813 Hashable!5862) Unit!110748)

(assert (=> d!1454809 (= lt!1774759 (choose!31141 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1454809 (noDuplicateKeys!1465 oldBucket!40)))

(assert (=> d!1454809 (= (lemmaGetPairDefinedThenContainsKey!11 oldBucket!40 key!4968 hashF!1389) lt!1774759)))

(declare-fun bs!1019401 () Bool)

(assert (= bs!1019401 d!1454809))

(assert (=> bs!1019401 m!5454261))

(declare-fun m!5454525 () Bool)

(assert (=> bs!1019401 m!5454525))

(assert (=> bs!1019401 m!5454247))

(assert (=> b!4618705 d!1454809))

(declare-fun bs!1019406 () Bool)

(declare-fun d!1454811 () Bool)

(assert (= bs!1019406 (and d!1454811 b!4618705)))

(declare-fun lambda!190255 () Int)

(assert (=> bs!1019406 (= lambda!190255 lambda!190193)))

(declare-fun bs!1019407 () Bool)

(assert (= bs!1019407 (and d!1454811 d!1454781)))

(assert (=> bs!1019407 (= lambda!190255 lambda!190234)))

(declare-fun bs!1019408 () Bool)

(assert (= bs!1019408 (and d!1454811 d!1454789)))

(assert (=> bs!1019408 (= lambda!190255 lambda!190235)))

(declare-fun bs!1019409 () Bool)

(assert (= bs!1019409 (and d!1454811 d!1454801)))

(assert (=> bs!1019409 (= lambda!190255 lambda!190238)))

(declare-fun b!4618956 () Bool)

(declare-fun res!1935794 () Bool)

(declare-fun e!2881151 () Bool)

(assert (=> b!4618956 (=> (not res!1935794) (not e!2881151))))

(assert (=> b!4618956 (= res!1935794 (contains!14407 (extractMap!1521 (toList!4896 lt!1774579)) key!4968))))

(assert (=> d!1454811 e!2881151))

(declare-fun res!1935793 () Bool)

(assert (=> d!1454811 (=> (not res!1935793) (not e!2881151))))

(assert (=> d!1454811 (= res!1935793 (forall!10772 (toList!4896 lt!1774579) lambda!190255))))

(declare-fun lt!1774806 () Unit!110748)

(declare-fun choose!31142 (ListLongMap!3485 K!12813 Hashable!5862) Unit!110748)

(assert (=> d!1454811 (= lt!1774806 (choose!31142 lt!1774579 key!4968 hashF!1389))))

(assert (=> d!1454811 (forall!10772 (toList!4896 lt!1774579) lambda!190255)))

(assert (=> d!1454811 (= (lemmaInGenMapThenGetPairDefined!53 lt!1774579 key!4968 hashF!1389) lt!1774806)))

(declare-fun b!4618957 () Bool)

(assert (=> b!4618957 (= e!2881151 (isDefined!8766 (getPair!257 (apply!12130 lt!1774579 (hash!3432 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1774809 () Unit!110748)

(assert (=> b!4618957 (= lt!1774809 (forallContained!2986 (toList!4896 lt!1774579) lambda!190255 (tuple2!52309 (hash!3432 hashF!1389 key!4968) (apply!12130 lt!1774579 (hash!3432 hashF!1389 key!4968)))))))

(declare-fun lt!1774807 () Unit!110748)

(declare-fun lt!1774803 () Unit!110748)

(assert (=> b!4618957 (= lt!1774807 lt!1774803)))

(declare-fun lt!1774810 () (_ BitVec 64))

(declare-fun lt!1774805 () List!51553)

(assert (=> b!4618957 (contains!14408 (toList!4896 lt!1774579) (tuple2!52309 lt!1774810 lt!1774805))))

(assert (=> b!4618957 (= lt!1774803 (lemmaGetValueImpliesTupleContained!62 lt!1774579 lt!1774810 lt!1774805))))

(declare-fun e!2881152 () Bool)

(assert (=> b!4618957 e!2881152))

(declare-fun res!1935796 () Bool)

(assert (=> b!4618957 (=> (not res!1935796) (not e!2881152))))

(assert (=> b!4618957 (= res!1935796 (contains!14409 lt!1774579 lt!1774810))))

(assert (=> b!4618957 (= lt!1774805 (apply!12130 lt!1774579 (hash!3432 hashF!1389 key!4968)))))

(assert (=> b!4618957 (= lt!1774810 (hash!3432 hashF!1389 key!4968))))

(declare-fun lt!1774808 () Unit!110748)

(declare-fun lt!1774804 () Unit!110748)

(assert (=> b!4618957 (= lt!1774808 lt!1774804)))

(assert (=> b!4618957 (contains!14409 lt!1774579 (hash!3432 hashF!1389 key!4968))))

(assert (=> b!4618957 (= lt!1774804 (lemmaInGenMapThenLongMapContainsHash!463 lt!1774579 key!4968 hashF!1389))))

(declare-fun b!4618955 () Bool)

(declare-fun res!1935795 () Bool)

(assert (=> b!4618955 (=> (not res!1935795) (not e!2881151))))

(declare-fun allKeysSameHashInMap!1502 (ListLongMap!3485 Hashable!5862) Bool)

(assert (=> b!4618955 (= res!1935795 (allKeysSameHashInMap!1502 lt!1774579 hashF!1389))))

(declare-fun b!4618958 () Bool)

(declare-datatypes ((Option!11504 0))(
  ( (None!11503) (Some!11503 (v!45585 List!51553)) )
))
(declare-fun getValueByKey!1404 (List!51554 (_ BitVec 64)) Option!11504)

(assert (=> b!4618958 (= e!2881152 (= (getValueByKey!1404 (toList!4896 lt!1774579) lt!1774810) (Some!11503 lt!1774805)))))

(assert (= (and d!1454811 res!1935793) b!4618955))

(assert (= (and b!4618955 res!1935795) b!4618956))

(assert (= (and b!4618956 res!1935794) b!4618957))

(assert (= (and b!4618957 res!1935796) b!4618958))

(declare-fun m!5454559 () Bool)

(assert (=> b!4618958 m!5454559))

(declare-fun m!5454561 () Bool)

(assert (=> b!4618956 m!5454561))

(assert (=> b!4618956 m!5454561))

(declare-fun m!5454563 () Bool)

(assert (=> b!4618956 m!5454563))

(assert (=> b!4618957 m!5454273))

(declare-fun m!5454565 () Bool)

(assert (=> b!4618957 m!5454565))

(assert (=> b!4618957 m!5454263))

(declare-fun m!5454567 () Bool)

(assert (=> b!4618957 m!5454567))

(declare-fun m!5454569 () Bool)

(assert (=> b!4618957 m!5454569))

(declare-fun m!5454571 () Bool)

(assert (=> b!4618957 m!5454571))

(declare-fun m!5454573 () Bool)

(assert (=> b!4618957 m!5454573))

(assert (=> b!4618957 m!5454273))

(assert (=> b!4618957 m!5454565))

(assert (=> b!4618957 m!5454567))

(assert (=> b!4618957 m!5454273))

(assert (=> b!4618957 m!5454507))

(declare-fun m!5454575 () Bool)

(assert (=> b!4618957 m!5454575))

(declare-fun m!5454577 () Bool)

(assert (=> b!4618957 m!5454577))

(declare-fun m!5454579 () Bool)

(assert (=> b!4618955 m!5454579))

(declare-fun m!5454581 () Bool)

(assert (=> d!1454811 m!5454581))

(declare-fun m!5454583 () Bool)

(assert (=> d!1454811 m!5454583))

(assert (=> d!1454811 m!5454581))

(assert (=> b!4618705 d!1454811))

(declare-fun d!1454817 () Bool)

(declare-fun get!17009 (Option!11504) List!51553)

(assert (=> d!1454817 (= (apply!12130 lt!1774579 lt!1774572) (get!17009 (getValueByKey!1404 (toList!4896 lt!1774579) lt!1774572)))))

(declare-fun bs!1019410 () Bool)

(assert (= bs!1019410 d!1454817))

(declare-fun m!5454585 () Bool)

(assert (=> bs!1019410 m!5454585))

(assert (=> bs!1019410 m!5454585))

(declare-fun m!5454587 () Bool)

(assert (=> bs!1019410 m!5454587))

(assert (=> b!4618705 d!1454817))

(declare-fun d!1454819 () Bool)

(declare-fun e!2881157 () Bool)

(assert (=> d!1454819 e!2881157))

(declare-fun res!1935799 () Bool)

(assert (=> d!1454819 (=> res!1935799 e!2881157)))

(declare-fun lt!1774822 () Bool)

(assert (=> d!1454819 (= res!1935799 (not lt!1774822))))

(declare-fun lt!1774821 () Bool)

(assert (=> d!1454819 (= lt!1774822 lt!1774821)))

(declare-fun lt!1774820 () Unit!110748)

(declare-fun e!2881158 () Unit!110748)

(assert (=> d!1454819 (= lt!1774820 e!2881158)))

(declare-fun c!790716 () Bool)

(assert (=> d!1454819 (= c!790716 lt!1774821)))

(declare-fun containsKey!2362 (List!51554 (_ BitVec 64)) Bool)

(assert (=> d!1454819 (= lt!1774821 (containsKey!2362 (toList!4896 lt!1774579) lt!1774572))))

(assert (=> d!1454819 (= (contains!14409 lt!1774579 lt!1774572) lt!1774822)))

(declare-fun b!4618965 () Bool)

(declare-fun lt!1774819 () Unit!110748)

(assert (=> b!4618965 (= e!2881158 lt!1774819)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1306 (List!51554 (_ BitVec 64)) Unit!110748)

(assert (=> b!4618965 (= lt!1774819 (lemmaContainsKeyImpliesGetValueByKeyDefined!1306 (toList!4896 lt!1774579) lt!1774572))))

(declare-fun isDefined!8769 (Option!11504) Bool)

(assert (=> b!4618965 (isDefined!8769 (getValueByKey!1404 (toList!4896 lt!1774579) lt!1774572))))

(declare-fun b!4618966 () Bool)

(declare-fun Unit!110765 () Unit!110748)

(assert (=> b!4618966 (= e!2881158 Unit!110765)))

(declare-fun b!4618967 () Bool)

(assert (=> b!4618967 (= e!2881157 (isDefined!8769 (getValueByKey!1404 (toList!4896 lt!1774579) lt!1774572)))))

(assert (= (and d!1454819 c!790716) b!4618965))

(assert (= (and d!1454819 (not c!790716)) b!4618966))

(assert (= (and d!1454819 (not res!1935799)) b!4618967))

(declare-fun m!5454589 () Bool)

(assert (=> d!1454819 m!5454589))

(declare-fun m!5454591 () Bool)

(assert (=> b!4618965 m!5454591))

(assert (=> b!4618965 m!5454585))

(assert (=> b!4618965 m!5454585))

(declare-fun m!5454593 () Bool)

(assert (=> b!4618965 m!5454593))

(assert (=> b!4618967 m!5454585))

(assert (=> b!4618967 m!5454585))

(assert (=> b!4618967 m!5454593))

(assert (=> b!4618705 d!1454819))

(declare-fun d!1454821 () Bool)

(declare-fun dynLambda!21474 (Int tuple2!52308) Bool)

(assert (=> d!1454821 (dynLambda!21474 lambda!190193 lt!1774581)))

(declare-fun lt!1774841 () Unit!110748)

(declare-fun choose!31143 (List!51554 Int tuple2!52308) Unit!110748)

(assert (=> d!1454821 (= lt!1774841 (choose!31143 lt!1774573 lambda!190193 lt!1774581))))

(declare-fun e!2881173 () Bool)

(assert (=> d!1454821 e!2881173))

(declare-fun res!1935808 () Bool)

(assert (=> d!1454821 (=> (not res!1935808) (not e!2881173))))

(assert (=> d!1454821 (= res!1935808 (forall!10772 lt!1774573 lambda!190193))))

(assert (=> d!1454821 (= (forallContained!2986 lt!1774573 lambda!190193 lt!1774581) lt!1774841)))

(declare-fun b!4618988 () Bool)

(assert (=> b!4618988 (= e!2881173 (contains!14408 lt!1774573 lt!1774581))))

(assert (= (and d!1454821 res!1935808) b!4618988))

(declare-fun b_lambda!170583 () Bool)

(assert (=> (not b_lambda!170583) (not d!1454821)))

(declare-fun m!5454595 () Bool)

(assert (=> d!1454821 m!5454595))

(declare-fun m!5454597 () Bool)

(assert (=> d!1454821 m!5454597))

(declare-fun m!5454599 () Bool)

(assert (=> d!1454821 m!5454599))

(assert (=> b!4618988 m!5454251))

(assert (=> b!4618705 d!1454821))

(declare-fun d!1454823 () Bool)

(declare-fun res!1935809 () Bool)

(declare-fun e!2881174 () Bool)

(assert (=> d!1454823 (=> res!1935809 e!2881174)))

(assert (=> d!1454823 (= res!1935809 (and (is-Cons!51429 oldBucket!40) (= (_1!29447 (h!57455 oldBucket!40)) key!4968)))))

(assert (=> d!1454823 (= (containsKey!2359 oldBucket!40 key!4968) e!2881174)))

(declare-fun b!4618989 () Bool)

(declare-fun e!2881175 () Bool)

(assert (=> b!4618989 (= e!2881174 e!2881175)))

(declare-fun res!1935810 () Bool)

(assert (=> b!4618989 (=> (not res!1935810) (not e!2881175))))

(assert (=> b!4618989 (= res!1935810 (is-Cons!51429 oldBucket!40))))

(declare-fun b!4618990 () Bool)

(assert (=> b!4618990 (= e!2881175 (containsKey!2359 (t!358565 oldBucket!40) key!4968))))

(assert (= (and d!1454823 (not res!1935809)) b!4618989))

(assert (= (and b!4618989 res!1935810) b!4618990))

(assert (=> b!4618990 m!5454265))

(assert (=> b!4618705 d!1454823))

(declare-fun bs!1019411 () Bool)

(declare-fun d!1454825 () Bool)

(assert (= bs!1019411 (and d!1454825 d!1454753)))

(declare-fun lambda!190256 () Int)

(assert (=> bs!1019411 (not (= lambda!190256 lambda!190231))))

(declare-fun bs!1019412 () Bool)

(assert (= bs!1019412 (and d!1454825 d!1454747)))

(assert (=> bs!1019412 (= lambda!190256 lambda!190199)))

(declare-fun bs!1019413 () Bool)

(assert (= bs!1019413 (and d!1454825 b!4618844)))

(assert (=> bs!1019413 (not (= lambda!190256 lambda!190228))))

(declare-fun bs!1019414 () Bool)

(assert (= bs!1019414 (and d!1454825 b!4618840)))

(assert (=> bs!1019414 (not (= lambda!190256 lambda!190230))))

(assert (=> bs!1019414 (not (= lambda!190256 lambda!190229))))

(assert (=> d!1454825 true))

(assert (=> d!1454825 true))

(assert (=> d!1454825 (= (allKeysSameHash!1319 newBucket!224 hash!414 hashF!1389) (forall!10771 newBucket!224 lambda!190256))))

(declare-fun bs!1019415 () Bool)

(assert (= bs!1019415 d!1454825))

(declare-fun m!5454601 () Bool)

(assert (=> bs!1019415 m!5454601))

(assert (=> b!4618704 d!1454825))

(declare-fun e!2881184 () Bool)

(declare-fun tp!1341774 () Bool)

(declare-fun b!4619004 () Bool)

(assert (=> b!4619004 (= e!2881184 (and tp_is_empty!29153 tp_is_empty!29155 tp!1341774))))

(assert (=> b!4618701 (= tp!1341764 e!2881184)))

(assert (= (and b!4618701 (is-Cons!51429 (t!358565 oldBucket!40))) b!4619004))

(declare-fun tp!1341775 () Bool)

(declare-fun b!4619005 () Bool)

(declare-fun e!2881185 () Bool)

(assert (=> b!4619005 (= e!2881185 (and tp_is_empty!29153 tp_is_empty!29155 tp!1341775))))

(assert (=> b!4618707 (= tp!1341765 e!2881185)))

(assert (= (and b!4618707 (is-Cons!51429 (t!358565 newBucket!224))) b!4619005))

(declare-fun b_lambda!170585 () Bool)

(assert (= b_lambda!170583 (or b!4618705 b_lambda!170585)))

(declare-fun bs!1019416 () Bool)

(declare-fun d!1454827 () Bool)

(assert (= bs!1019416 (and d!1454827 b!4618705)))

(assert (=> bs!1019416 (= (dynLambda!21474 lambda!190193 lt!1774581) (noDuplicateKeys!1465 (_2!29448 lt!1774581)))))

(declare-fun m!5454603 () Bool)

(assert (=> bs!1019416 m!5454603))

(assert (=> d!1454821 d!1454827))

(push 1)

(assert (not b!4618842))

(assert (not d!1454811))

(assert (not d!1454753))

(assert (not b!4618757))

(assert (not d!1454783))

(assert (not b!4618840))

(assert tp_is_empty!29153)

(assert (not d!1454797))

(assert (not d!1454781))

(assert (not b!4618955))

(assert (not d!1454825))

(assert (not d!1454747))

(assert (not b!4618920))

(assert (not b!4618843))

(assert (not d!1454809))

(assert (not b!4618884))

(assert (not b!4618967))

(assert (not b!4618863))

(assert (not bm!322065))

(assert (not b!4618988))

(assert (not b!4618965))

(assert (not b!4618896))

(assert (not b!4618841))

(assert (not b!4618892))

(assert (not b!4618919))

(assert (not b!4618760))

(assert (not b!4618956))

(assert (not b!4618758))

(assert (not b!4618928))

(assert (not b!4618883))

(assert (not bm!322070))

(assert (not d!1454801))

(assert (not b!4618887))

(assert (not b!4618934))

(assert (not d!1454787))

(assert (not b!4618957))

(assert (not bm!322067))

(assert (not b_lambda!170585))

(assert (not b!4618916))

(assert (not b!4618889))

(assert (not b!4618958))

(assert (not b!4618759))

(assert (not d!1454819))

(assert (not d!1454817))

(assert tp_is_empty!29155)

(assert (not d!1454789))

(assert (not b!4619004))

(assert (not b!4618914))

(assert (not d!1454785))

(assert (not d!1454791))

(assert (not b!4619005))

(assert (not d!1454821))

(assert (not b!4618851))

(assert (not b!4618990))

(assert (not d!1454799))

(assert (not b!4618886))

(assert (not b!4618890))

(assert (not b!4618917))

(assert (not bs!1019416))

(assert (not bm!322066))

(assert (not d!1454805))

(assert (not b!4618888))

(assert (not d!1454803))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

