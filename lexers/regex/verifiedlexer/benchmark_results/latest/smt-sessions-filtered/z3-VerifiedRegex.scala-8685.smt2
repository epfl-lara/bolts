; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462384 () Bool)

(assert start!462384)

(declare-fun b!4619321 () Bool)

(declare-fun e!2881374 () Bool)

(declare-fun e!2881379 () Bool)

(assert (=> b!4619321 (= e!2881374 e!2881379)))

(declare-fun res!1936066 () Bool)

(assert (=> b!4619321 (=> (not res!1936066) (not e!2881379))))

(declare-datatypes ((K!12830 0))(
  ( (K!12831 (val!18535 Int)) )
))
(declare-datatypes ((V!13076 0))(
  ( (V!13077 (val!18536 Int)) )
))
(declare-datatypes ((tuple2!52334 0))(
  ( (tuple2!52335 (_1!29461 K!12830) (_2!29461 V!13076)) )
))
(declare-datatypes ((List!51568 0))(
  ( (Nil!51444) (Cons!51444 (h!57472 tuple2!52334) (t!358580 List!51568)) )
))
(declare-datatypes ((ListMap!4213 0))(
  ( (ListMap!4214 (toList!4909 List!51568)) )
))
(declare-fun lt!1775172 () ListMap!4213)

(declare-fun key!4968 () K!12830)

(declare-fun contains!14431 (ListMap!4213 K!12830) Bool)

(assert (=> b!4619321 (= res!1936066 (contains!14431 lt!1775172 key!4968))))

(declare-datatypes ((tuple2!52336 0))(
  ( (tuple2!52337 (_1!29462 (_ BitVec 64)) (_2!29462 List!51568)) )
))
(declare-datatypes ((List!51569 0))(
  ( (Nil!51445) (Cons!51445 (h!57473 tuple2!52336) (t!358581 List!51569)) )
))
(declare-fun lt!1775164 () List!51569)

(declare-fun extractMap!1528 (List!51569) ListMap!4213)

(assert (=> b!4619321 (= lt!1775172 (extractMap!1528 lt!1775164))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51568)

(assert (=> b!4619321 (= lt!1775164 (Cons!51445 (tuple2!52337 hash!414 oldBucket!40) Nil!51445))))

(declare-fun tp_is_empty!29181 () Bool)

(declare-fun b!4619322 () Bool)

(declare-fun tp!1341814 () Bool)

(declare-fun tp_is_empty!29183 () Bool)

(declare-fun e!2881380 () Bool)

(assert (=> b!4619322 (= e!2881380 (and tp_is_empty!29181 tp_is_empty!29183 tp!1341814))))

(declare-fun b!4619323 () Bool)

(declare-fun e!2881373 () Bool)

(declare-fun lt!1775175 () List!51569)

(declare-fun lambda!190330 () Int)

(declare-fun forall!10778 (List!51569 Int) Bool)

(assert (=> b!4619323 (= e!2881373 (forall!10778 lt!1775175 lambda!190330))))

(assert (=> b!4619323 (contains!14431 (extractMap!1528 lt!1775175) key!4968)))

(declare-datatypes ((Hashable!5869 0))(
  ( (HashableExt!5868 (__x!31572 Int)) )
))
(declare-fun hashF!1389 () Hashable!5869)

(declare-datatypes ((Unit!110776 0))(
  ( (Unit!110777) )
))
(declare-fun lt!1775168 () Unit!110776)

(declare-datatypes ((ListLongMap!3499 0))(
  ( (ListLongMap!3500 (toList!4910 List!51569)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!290 (ListLongMap!3499 K!12830 Hashable!5869) Unit!110776)

(assert (=> b!4619323 (= lt!1775168 (lemmaListContainsThenExtractedMapContains!290 (ListLongMap!3500 lt!1775175) key!4968 hashF!1389))))

(assert (=> b!4619323 (= lt!1775175 (Cons!51445 (tuple2!52337 hash!414 (t!358580 oldBucket!40)) Nil!51445))))

(declare-fun b!4619324 () Bool)

(declare-fun e!2881377 () Bool)

(declare-fun e!2881375 () Bool)

(assert (=> b!4619324 (= e!2881377 (not e!2881375))))

(declare-fun res!1936069 () Bool)

(assert (=> b!4619324 (=> res!1936069 e!2881375)))

(get-info :version)

(assert (=> b!4619324 (= res!1936069 (or (and ((_ is Cons!51444) oldBucket!40) (= (_1!29461 (h!57472 oldBucket!40)) key!4968)) (not ((_ is Cons!51444) oldBucket!40)) (= (_1!29461 (h!57472 oldBucket!40)) key!4968)))))

(declare-fun e!2881376 () Bool)

(assert (=> b!4619324 e!2881376))

(declare-fun res!1936075 () Bool)

(assert (=> b!4619324 (=> (not res!1936075) (not e!2881376))))

(declare-fun lt!1775174 () ListMap!4213)

(declare-fun addToMapMapFromBucket!933 (List!51568 ListMap!4213) ListMap!4213)

(assert (=> b!4619324 (= res!1936075 (= lt!1775172 (addToMapMapFromBucket!933 oldBucket!40 lt!1775174)))))

(assert (=> b!4619324 (= lt!1775174 (extractMap!1528 Nil!51445))))

(assert (=> b!4619324 true))

(declare-fun e!2881378 () Bool)

(declare-fun b!4619325 () Bool)

(declare-fun tp!1341815 () Bool)

(assert (=> b!4619325 (= e!2881378 (and tp_is_empty!29181 tp_is_empty!29183 tp!1341815))))

(declare-fun b!4619326 () Bool)

(declare-fun res!1936071 () Bool)

(assert (=> b!4619326 (=> (not res!1936071) (not e!2881374))))

(declare-fun allKeysSameHash!1326 (List!51568 (_ BitVec 64) Hashable!5869) Bool)

(assert (=> b!4619326 (= res!1936071 (allKeysSameHash!1326 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4619327 () Bool)

(assert (=> b!4619327 (= e!2881379 e!2881377)))

(declare-fun res!1936074 () Bool)

(assert (=> b!4619327 (=> (not res!1936074) (not e!2881377))))

(declare-fun lt!1775165 () (_ BitVec 64))

(assert (=> b!4619327 (= res!1936074 (= lt!1775165 hash!414))))

(declare-fun hash!3440 (Hashable!5869 K!12830) (_ BitVec 64))

(assert (=> b!4619327 (= lt!1775165 (hash!3440 hashF!1389 key!4968))))

(declare-fun b!4619328 () Bool)

(declare-fun res!1936065 () Bool)

(assert (=> b!4619328 (=> (not res!1936065) (not e!2881374))))

(declare-fun newBucket!224 () List!51568)

(declare-fun removePairForKey!1095 (List!51568 K!12830) List!51568)

(assert (=> b!4619328 (= res!1936065 (= (removePairForKey!1095 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1936072 () Bool)

(assert (=> start!462384 (=> (not res!1936072) (not e!2881374))))

(declare-fun noDuplicateKeys!1472 (List!51568) Bool)

(assert (=> start!462384 (= res!1936072 (noDuplicateKeys!1472 oldBucket!40))))

(assert (=> start!462384 e!2881374))

(assert (=> start!462384 true))

(assert (=> start!462384 e!2881378))

(assert (=> start!462384 tp_is_empty!29181))

(assert (=> start!462384 e!2881380))

(declare-fun b!4619329 () Bool)

(assert (=> b!4619329 (= e!2881376 (= lt!1775174 (ListMap!4214 Nil!51444)))))

(declare-fun b!4619330 () Bool)

(declare-fun res!1936067 () Bool)

(assert (=> b!4619330 (=> (not res!1936067) (not e!2881374))))

(assert (=> b!4619330 (= res!1936067 (noDuplicateKeys!1472 newBucket!224))))

(declare-fun b!4619331 () Bool)

(declare-fun e!2881372 () Bool)

(assert (=> b!4619331 (= e!2881372 e!2881373)))

(declare-fun res!1936070 () Bool)

(assert (=> b!4619331 (=> res!1936070 e!2881373)))

(declare-fun lt!1775170 () List!51568)

(declare-fun tail!8107 (List!51568) List!51568)

(assert (=> b!4619331 (= res!1936070 (not (= (removePairForKey!1095 (tail!8107 oldBucket!40) key!4968) lt!1775170)))))

(assert (=> b!4619331 (= lt!1775170 (tail!8107 newBucket!224))))

(declare-fun b!4619332 () Bool)

(declare-fun res!1936068 () Bool)

(assert (=> b!4619332 (=> (not res!1936068) (not e!2881377))))

(assert (=> b!4619332 (= res!1936068 (allKeysSameHash!1326 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4619333 () Bool)

(assert (=> b!4619333 (= e!2881375 e!2881372)))

(declare-fun res!1936073 () Bool)

(assert (=> b!4619333 (=> res!1936073 e!2881372)))

(declare-fun containsKey!2368 (List!51568 K!12830) Bool)

(assert (=> b!4619333 (= res!1936073 (not (containsKey!2368 (t!358580 oldBucket!40) key!4968)))))

(assert (=> b!4619333 (containsKey!2368 oldBucket!40 key!4968)))

(declare-fun lt!1775161 () Unit!110776)

(declare-fun lemmaGetPairDefinedThenContainsKey!18 (List!51568 K!12830 Hashable!5869) Unit!110776)

(assert (=> b!4619333 (= lt!1775161 (lemmaGetPairDefinedThenContainsKey!18 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1775162 () List!51568)

(declare-datatypes ((Option!11510 0))(
  ( (None!11509) (Some!11509 (v!45591 tuple2!52334)) )
))
(declare-fun isDefined!8775 (Option!11510) Bool)

(declare-fun getPair!264 (List!51568 K!12830) Option!11510)

(assert (=> b!4619333 (isDefined!8775 (getPair!264 lt!1775162 key!4968))))

(declare-fun lt!1775173 () Unit!110776)

(declare-fun lt!1775167 () tuple2!52336)

(declare-fun forallContained!2994 (List!51569 Int tuple2!52336) Unit!110776)

(assert (=> b!4619333 (= lt!1775173 (forallContained!2994 lt!1775164 lambda!190330 lt!1775167))))

(declare-fun contains!14432 (List!51569 tuple2!52336) Bool)

(assert (=> b!4619333 (contains!14432 lt!1775164 lt!1775167)))

(assert (=> b!4619333 (= lt!1775167 (tuple2!52337 lt!1775165 lt!1775162))))

(declare-fun lt!1775163 () ListLongMap!3499)

(declare-fun lt!1775169 () Unit!110776)

(declare-fun lemmaGetValueImpliesTupleContained!69 (ListLongMap!3499 (_ BitVec 64) List!51568) Unit!110776)

(assert (=> b!4619333 (= lt!1775169 (lemmaGetValueImpliesTupleContained!69 lt!1775163 lt!1775165 lt!1775162))))

(declare-fun apply!12137 (ListLongMap!3499 (_ BitVec 64)) List!51568)

(assert (=> b!4619333 (= lt!1775162 (apply!12137 lt!1775163 lt!1775165))))

(declare-fun contains!14433 (ListLongMap!3499 (_ BitVec 64)) Bool)

(assert (=> b!4619333 (contains!14433 lt!1775163 lt!1775165)))

(declare-fun lt!1775171 () Unit!110776)

(declare-fun lemmaInGenMapThenLongMapContainsHash!470 (ListLongMap!3499 K!12830 Hashable!5869) Unit!110776)

(assert (=> b!4619333 (= lt!1775171 (lemmaInGenMapThenLongMapContainsHash!470 lt!1775163 key!4968 hashF!1389))))

(declare-fun lt!1775166 () Unit!110776)

(declare-fun lemmaInGenMapThenGetPairDefined!60 (ListLongMap!3499 K!12830 Hashable!5869) Unit!110776)

(assert (=> b!4619333 (= lt!1775166 (lemmaInGenMapThenGetPairDefined!60 lt!1775163 key!4968 hashF!1389))))

(assert (=> b!4619333 (= lt!1775163 (ListLongMap!3500 lt!1775164))))

(declare-fun b!4619334 () Bool)

(declare-fun res!1936076 () Bool)

(assert (=> b!4619334 (=> res!1936076 e!2881373)))

(assert (=> b!4619334 (= res!1936076 (not (= (removePairForKey!1095 (t!358580 oldBucket!40) key!4968) lt!1775170)))))

(assert (= (and start!462384 res!1936072) b!4619330))

(assert (= (and b!4619330 res!1936067) b!4619328))

(assert (= (and b!4619328 res!1936065) b!4619326))

(assert (= (and b!4619326 res!1936071) b!4619321))

(assert (= (and b!4619321 res!1936066) b!4619327))

(assert (= (and b!4619327 res!1936074) b!4619332))

(assert (= (and b!4619332 res!1936068) b!4619324))

(assert (= (and b!4619324 res!1936075) b!4619329))

(assert (= (and b!4619324 (not res!1936069)) b!4619333))

(assert (= (and b!4619333 (not res!1936073)) b!4619331))

(assert (= (and b!4619331 (not res!1936070)) b!4619334))

(assert (= (and b!4619334 (not res!1936076)) b!4619323))

(assert (= (and start!462384 ((_ is Cons!51444) oldBucket!40)) b!4619325))

(assert (= (and start!462384 ((_ is Cons!51444) newBucket!224)) b!4619322))

(declare-fun m!5454983 () Bool)

(assert (=> b!4619321 m!5454983))

(declare-fun m!5454985 () Bool)

(assert (=> b!4619321 m!5454985))

(declare-fun m!5454987 () Bool)

(assert (=> b!4619324 m!5454987))

(declare-fun m!5454989 () Bool)

(assert (=> b!4619324 m!5454989))

(declare-fun m!5454991 () Bool)

(assert (=> b!4619330 m!5454991))

(declare-fun m!5454993 () Bool)

(assert (=> b!4619334 m!5454993))

(declare-fun m!5454995 () Bool)

(assert (=> b!4619333 m!5454995))

(declare-fun m!5454997 () Bool)

(assert (=> b!4619333 m!5454997))

(declare-fun m!5454999 () Bool)

(assert (=> b!4619333 m!5454999))

(declare-fun m!5455001 () Bool)

(assert (=> b!4619333 m!5455001))

(declare-fun m!5455003 () Bool)

(assert (=> b!4619333 m!5455003))

(declare-fun m!5455005 () Bool)

(assert (=> b!4619333 m!5455005))

(declare-fun m!5455007 () Bool)

(assert (=> b!4619333 m!5455007))

(declare-fun m!5455009 () Bool)

(assert (=> b!4619333 m!5455009))

(declare-fun m!5455011 () Bool)

(assert (=> b!4619333 m!5455011))

(declare-fun m!5455013 () Bool)

(assert (=> b!4619333 m!5455013))

(declare-fun m!5455015 () Bool)

(assert (=> b!4619333 m!5455015))

(assert (=> b!4619333 m!5455011))

(declare-fun m!5455017 () Bool)

(assert (=> b!4619333 m!5455017))

(declare-fun m!5455019 () Bool)

(assert (=> b!4619327 m!5455019))

(declare-fun m!5455021 () Bool)

(assert (=> b!4619323 m!5455021))

(declare-fun m!5455023 () Bool)

(assert (=> b!4619323 m!5455023))

(assert (=> b!4619323 m!5455023))

(declare-fun m!5455025 () Bool)

(assert (=> b!4619323 m!5455025))

(declare-fun m!5455027 () Bool)

(assert (=> b!4619323 m!5455027))

(declare-fun m!5455029 () Bool)

(assert (=> b!4619332 m!5455029))

(declare-fun m!5455031 () Bool)

(assert (=> b!4619331 m!5455031))

(assert (=> b!4619331 m!5455031))

(declare-fun m!5455033 () Bool)

(assert (=> b!4619331 m!5455033))

(declare-fun m!5455035 () Bool)

(assert (=> b!4619331 m!5455035))

(declare-fun m!5455037 () Bool)

(assert (=> b!4619326 m!5455037))

(declare-fun m!5455039 () Bool)

(assert (=> b!4619328 m!5455039))

(declare-fun m!5455041 () Bool)

(assert (=> start!462384 m!5455041))

(check-sat (not b!4619331) (not b!4619325) (not b!4619327) (not b!4619324) tp_is_empty!29181 (not b!4619332) (not b!4619334) (not start!462384) (not b!4619321) tp_is_empty!29183 (not b!4619328) (not b!4619330) (not b!4619322) (not b!4619323) (not b!4619333) (not b!4619326))
(check-sat)
(get-model)

(declare-fun d!1454858 () Bool)

(assert (=> d!1454858 true))

(assert (=> d!1454858 true))

(declare-fun lambda!190336 () Int)

(declare-fun forall!10780 (List!51568 Int) Bool)

(assert (=> d!1454858 (= (allKeysSameHash!1326 oldBucket!40 hash!414 hashF!1389) (forall!10780 oldBucket!40 lambda!190336))))

(declare-fun bs!1019445 () Bool)

(assert (= bs!1019445 d!1454858))

(declare-fun m!5455045 () Bool)

(assert (=> bs!1019445 m!5455045))

(assert (=> b!4619326 d!1454858))

(declare-fun bs!1019466 () Bool)

(declare-fun b!4619451 () Bool)

(assert (= bs!1019466 (and b!4619451 d!1454858)))

(declare-fun lambda!190404 () Int)

(assert (=> bs!1019466 (not (= lambda!190404 lambda!190336))))

(assert (=> b!4619451 true))

(declare-fun bs!1019467 () Bool)

(declare-fun b!4619449 () Bool)

(assert (= bs!1019467 (and b!4619449 d!1454858)))

(declare-fun lambda!190407 () Int)

(assert (=> bs!1019467 (not (= lambda!190407 lambda!190336))))

(declare-fun bs!1019468 () Bool)

(assert (= bs!1019468 (and b!4619449 b!4619451)))

(assert (=> bs!1019468 (= lambda!190407 lambda!190404)))

(assert (=> b!4619449 true))

(declare-fun lambda!190408 () Int)

(assert (=> bs!1019467 (not (= lambda!190408 lambda!190336))))

(declare-fun lt!1775323 () ListMap!4213)

(assert (=> bs!1019468 (= (= lt!1775323 lt!1775174) (= lambda!190408 lambda!190404))))

(assert (=> b!4619449 (= (= lt!1775323 lt!1775174) (= lambda!190408 lambda!190407))))

(assert (=> b!4619449 true))

(declare-fun bs!1019469 () Bool)

(declare-fun d!1454860 () Bool)

(assert (= bs!1019469 (and d!1454860 d!1454858)))

(declare-fun lambda!190412 () Int)

(assert (=> bs!1019469 (not (= lambda!190412 lambda!190336))))

(declare-fun bs!1019470 () Bool)

(assert (= bs!1019470 (and d!1454860 b!4619451)))

(declare-fun lt!1775321 () ListMap!4213)

(assert (=> bs!1019470 (= (= lt!1775321 lt!1775174) (= lambda!190412 lambda!190404))))

(declare-fun bs!1019471 () Bool)

(assert (= bs!1019471 (and d!1454860 b!4619449)))

(assert (=> bs!1019471 (= (= lt!1775321 lt!1775174) (= lambda!190412 lambda!190407))))

(assert (=> bs!1019471 (= (= lt!1775321 lt!1775323) (= lambda!190412 lambda!190408))))

(assert (=> d!1454860 true))

(declare-fun e!2881452 () ListMap!4213)

(assert (=> b!4619449 (= e!2881452 lt!1775323)))

(declare-fun lt!1775336 () ListMap!4213)

(declare-fun +!1842 (ListMap!4213 tuple2!52334) ListMap!4213)

(assert (=> b!4619449 (= lt!1775336 (+!1842 lt!1775174 (h!57472 oldBucket!40)))))

(assert (=> b!4619449 (= lt!1775323 (addToMapMapFromBucket!933 (t!358580 oldBucket!40) (+!1842 lt!1775174 (h!57472 oldBucket!40))))))

(declare-fun lt!1775331 () Unit!110776)

(declare-fun call!322104 () Unit!110776)

(assert (=> b!4619449 (= lt!1775331 call!322104)))

(assert (=> b!4619449 (forall!10780 (toList!4909 lt!1775174) lambda!190407)))

(declare-fun lt!1775335 () Unit!110776)

(assert (=> b!4619449 (= lt!1775335 lt!1775331)))

(assert (=> b!4619449 (forall!10780 (toList!4909 lt!1775336) lambda!190408)))

(declare-fun lt!1775324 () Unit!110776)

(declare-fun Unit!110790 () Unit!110776)

(assert (=> b!4619449 (= lt!1775324 Unit!110790)))

(assert (=> b!4619449 (forall!10780 (t!358580 oldBucket!40) lambda!190408)))

(declare-fun lt!1775334 () Unit!110776)

(declare-fun Unit!110791 () Unit!110776)

(assert (=> b!4619449 (= lt!1775334 Unit!110791)))

(declare-fun lt!1775322 () Unit!110776)

(declare-fun Unit!110792 () Unit!110776)

(assert (=> b!4619449 (= lt!1775322 Unit!110792)))

(declare-fun lt!1775338 () Unit!110776)

(declare-fun forallContained!2996 (List!51568 Int tuple2!52334) Unit!110776)

(assert (=> b!4619449 (= lt!1775338 (forallContained!2996 (toList!4909 lt!1775336) lambda!190408 (h!57472 oldBucket!40)))))

(assert (=> b!4619449 (contains!14431 lt!1775336 (_1!29461 (h!57472 oldBucket!40)))))

(declare-fun lt!1775325 () Unit!110776)

(declare-fun Unit!110793 () Unit!110776)

(assert (=> b!4619449 (= lt!1775325 Unit!110793)))

(assert (=> b!4619449 (contains!14431 lt!1775323 (_1!29461 (h!57472 oldBucket!40)))))

(declare-fun lt!1775328 () Unit!110776)

(declare-fun Unit!110794 () Unit!110776)

(assert (=> b!4619449 (= lt!1775328 Unit!110794)))

(assert (=> b!4619449 (forall!10780 oldBucket!40 lambda!190408)))

(declare-fun lt!1775337 () Unit!110776)

(declare-fun Unit!110795 () Unit!110776)

(assert (=> b!4619449 (= lt!1775337 Unit!110795)))

(declare-fun call!322105 () Bool)

(assert (=> b!4619449 call!322105))

(declare-fun lt!1775320 () Unit!110776)

(declare-fun Unit!110796 () Unit!110776)

(assert (=> b!4619449 (= lt!1775320 Unit!110796)))

(declare-fun lt!1775333 () Unit!110776)

(declare-fun Unit!110797 () Unit!110776)

(assert (=> b!4619449 (= lt!1775333 Unit!110797)))

(declare-fun lt!1775319 () Unit!110776)

(declare-fun addForallContainsKeyThenBeforeAdding!483 (ListMap!4213 ListMap!4213 K!12830 V!13076) Unit!110776)

(assert (=> b!4619449 (= lt!1775319 (addForallContainsKeyThenBeforeAdding!483 lt!1775174 lt!1775323 (_1!29461 (h!57472 oldBucket!40)) (_2!29461 (h!57472 oldBucket!40))))))

(assert (=> b!4619449 (forall!10780 (toList!4909 lt!1775174) lambda!190408)))

(declare-fun lt!1775327 () Unit!110776)

(assert (=> b!4619449 (= lt!1775327 lt!1775319)))

(assert (=> b!4619449 (forall!10780 (toList!4909 lt!1775174) lambda!190408)))

(declare-fun lt!1775318 () Unit!110776)

(declare-fun Unit!110798 () Unit!110776)

(assert (=> b!4619449 (= lt!1775318 Unit!110798)))

(declare-fun res!1936131 () Bool)

(declare-fun call!322103 () Bool)

(assert (=> b!4619449 (= res!1936131 call!322103)))

(declare-fun e!2881453 () Bool)

(assert (=> b!4619449 (=> (not res!1936131) (not e!2881453))))

(assert (=> b!4619449 e!2881453))

(declare-fun lt!1775330 () Unit!110776)

(declare-fun Unit!110799 () Unit!110776)

(assert (=> b!4619449 (= lt!1775330 Unit!110799)))

(declare-fun bm!322098 () Bool)

(declare-fun c!790760 () Bool)

(assert (=> bm!322098 (= call!322105 (forall!10780 (ite c!790760 (toList!4909 lt!1775174) (toList!4909 lt!1775336)) (ite c!790760 lambda!190404 lambda!190408)))))

(declare-fun bm!322099 () Bool)

(assert (=> bm!322099 (= call!322103 (forall!10780 (ite c!790760 (toList!4909 lt!1775174) oldBucket!40) (ite c!790760 lambda!190404 lambda!190408)))))

(declare-fun b!4619450 () Bool)

(declare-fun e!2881451 () Bool)

(declare-fun invariantList!1182 (List!51568) Bool)

(assert (=> b!4619450 (= e!2881451 (invariantList!1182 (toList!4909 lt!1775321)))))

(assert (=> b!4619451 (= e!2881452 lt!1775174)))

(declare-fun lt!1775329 () Unit!110776)

(assert (=> b!4619451 (= lt!1775329 call!322104)))

(assert (=> b!4619451 call!322103))

(declare-fun lt!1775326 () Unit!110776)

(assert (=> b!4619451 (= lt!1775326 lt!1775329)))

(assert (=> b!4619451 call!322105))

(declare-fun lt!1775332 () Unit!110776)

(declare-fun Unit!110800 () Unit!110776)

(assert (=> b!4619451 (= lt!1775332 Unit!110800)))

(declare-fun b!4619452 () Bool)

(declare-fun res!1936132 () Bool)

(assert (=> b!4619452 (=> (not res!1936132) (not e!2881451))))

(assert (=> b!4619452 (= res!1936132 (forall!10780 (toList!4909 lt!1775174) lambda!190412))))

(declare-fun b!4619453 () Bool)

(assert (=> b!4619453 (= e!2881453 (forall!10780 (toList!4909 lt!1775174) lambda!190408))))

(assert (=> d!1454860 e!2881451))

(declare-fun res!1936130 () Bool)

(assert (=> d!1454860 (=> (not res!1936130) (not e!2881451))))

(assert (=> d!1454860 (= res!1936130 (forall!10780 oldBucket!40 lambda!190412))))

(assert (=> d!1454860 (= lt!1775321 e!2881452)))

(assert (=> d!1454860 (= c!790760 ((_ is Nil!51444) oldBucket!40))))

(assert (=> d!1454860 (noDuplicateKeys!1472 oldBucket!40)))

(assert (=> d!1454860 (= (addToMapMapFromBucket!933 oldBucket!40 lt!1775174) lt!1775321)))

(declare-fun bm!322100 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!484 (ListMap!4213) Unit!110776)

(assert (=> bm!322100 (= call!322104 (lemmaContainsAllItsOwnKeys!484 lt!1775174))))

(assert (= (and d!1454860 c!790760) b!4619451))

(assert (= (and d!1454860 (not c!790760)) b!4619449))

(assert (= (and b!4619449 res!1936131) b!4619453))

(assert (= (or b!4619451 b!4619449) bm!322100))

(assert (= (or b!4619451 b!4619449) bm!322099))

(assert (= (or b!4619451 b!4619449) bm!322098))

(assert (= (and d!1454860 res!1936130) b!4619452))

(assert (= (and b!4619452 res!1936132) b!4619450))

(declare-fun m!5455153 () Bool)

(assert (=> b!4619450 m!5455153))

(declare-fun m!5455155 () Bool)

(assert (=> bm!322100 m!5455155))

(declare-fun m!5455157 () Bool)

(assert (=> d!1454860 m!5455157))

(assert (=> d!1454860 m!5455041))

(declare-fun m!5455159 () Bool)

(assert (=> b!4619452 m!5455159))

(declare-fun m!5455161 () Bool)

(assert (=> b!4619449 m!5455161))

(declare-fun m!5455163 () Bool)

(assert (=> b!4619449 m!5455163))

(declare-fun m!5455165 () Bool)

(assert (=> b!4619449 m!5455165))

(declare-fun m!5455167 () Bool)

(assert (=> b!4619449 m!5455167))

(declare-fun m!5455169 () Bool)

(assert (=> b!4619449 m!5455169))

(declare-fun m!5455171 () Bool)

(assert (=> b!4619449 m!5455171))

(declare-fun m!5455173 () Bool)

(assert (=> b!4619449 m!5455173))

(declare-fun m!5455175 () Bool)

(assert (=> b!4619449 m!5455175))

(assert (=> b!4619449 m!5455161))

(declare-fun m!5455177 () Bool)

(assert (=> b!4619449 m!5455177))

(declare-fun m!5455179 () Bool)

(assert (=> b!4619449 m!5455179))

(assert (=> b!4619449 m!5455171))

(declare-fun m!5455181 () Bool)

(assert (=> b!4619449 m!5455181))

(assert (=> b!4619453 m!5455171))

(declare-fun m!5455183 () Bool)

(assert (=> bm!322099 m!5455183))

(declare-fun m!5455185 () Bool)

(assert (=> bm!322098 m!5455185))

(assert (=> b!4619324 d!1454860))

(declare-fun bs!1019475 () Bool)

(declare-fun d!1454898 () Bool)

(assert (= bs!1019475 (and d!1454898 b!4619333)))

(declare-fun lambda!190417 () Int)

(assert (=> bs!1019475 (= lambda!190417 lambda!190330)))

(declare-fun lt!1775365 () ListMap!4213)

(assert (=> d!1454898 (invariantList!1182 (toList!4909 lt!1775365))))

(declare-fun e!2881462 () ListMap!4213)

(assert (=> d!1454898 (= lt!1775365 e!2881462)))

(declare-fun c!790763 () Bool)

(assert (=> d!1454898 (= c!790763 ((_ is Cons!51445) Nil!51445))))

(assert (=> d!1454898 (forall!10778 Nil!51445 lambda!190417)))

(assert (=> d!1454898 (= (extractMap!1528 Nil!51445) lt!1775365)))

(declare-fun b!4619472 () Bool)

(assert (=> b!4619472 (= e!2881462 (addToMapMapFromBucket!933 (_2!29462 (h!57473 Nil!51445)) (extractMap!1528 (t!358581 Nil!51445))))))

(declare-fun b!4619473 () Bool)

(assert (=> b!4619473 (= e!2881462 (ListMap!4214 Nil!51444))))

(assert (= (and d!1454898 c!790763) b!4619472))

(assert (= (and d!1454898 (not c!790763)) b!4619473))

(declare-fun m!5455213 () Bool)

(assert (=> d!1454898 m!5455213))

(declare-fun m!5455215 () Bool)

(assert (=> d!1454898 m!5455215))

(declare-fun m!5455217 () Bool)

(assert (=> b!4619472 m!5455217))

(assert (=> b!4619472 m!5455217))

(declare-fun m!5455219 () Bool)

(assert (=> b!4619472 m!5455219))

(assert (=> b!4619324 d!1454898))

(declare-fun d!1454902 () Bool)

(declare-fun lt!1775368 () List!51568)

(assert (=> d!1454902 (not (containsKey!2368 lt!1775368 key!4968))))

(declare-fun e!2881467 () List!51568)

(assert (=> d!1454902 (= lt!1775368 e!2881467)))

(declare-fun c!790768 () Bool)

(assert (=> d!1454902 (= c!790768 (and ((_ is Cons!51444) (t!358580 oldBucket!40)) (= (_1!29461 (h!57472 (t!358580 oldBucket!40))) key!4968)))))

(assert (=> d!1454902 (noDuplicateKeys!1472 (t!358580 oldBucket!40))))

(assert (=> d!1454902 (= (removePairForKey!1095 (t!358580 oldBucket!40) key!4968) lt!1775368)))

(declare-fun b!4619483 () Bool)

(declare-fun e!2881468 () List!51568)

(assert (=> b!4619483 (= e!2881467 e!2881468)))

(declare-fun c!790769 () Bool)

(assert (=> b!4619483 (= c!790769 ((_ is Cons!51444) (t!358580 oldBucket!40)))))

(declare-fun b!4619485 () Bool)

(assert (=> b!4619485 (= e!2881468 Nil!51444)))

(declare-fun b!4619484 () Bool)

(assert (=> b!4619484 (= e!2881468 (Cons!51444 (h!57472 (t!358580 oldBucket!40)) (removePairForKey!1095 (t!358580 (t!358580 oldBucket!40)) key!4968)))))

(declare-fun b!4619482 () Bool)

(assert (=> b!4619482 (= e!2881467 (t!358580 (t!358580 oldBucket!40)))))

(assert (= (and d!1454902 c!790768) b!4619482))

(assert (= (and d!1454902 (not c!790768)) b!4619483))

(assert (= (and b!4619483 c!790769) b!4619484))

(assert (= (and b!4619483 (not c!790769)) b!4619485))

(declare-fun m!5455221 () Bool)

(assert (=> d!1454902 m!5455221))

(declare-fun m!5455223 () Bool)

(assert (=> d!1454902 m!5455223))

(declare-fun m!5455225 () Bool)

(assert (=> b!4619484 m!5455225))

(assert (=> b!4619334 d!1454902))

(declare-fun d!1454904 () Bool)

(declare-fun res!1936155 () Bool)

(declare-fun e!2881485 () Bool)

(assert (=> d!1454904 (=> res!1936155 e!2881485)))

(assert (=> d!1454904 (= res!1936155 ((_ is Nil!51445) lt!1775175))))

(assert (=> d!1454904 (= (forall!10778 lt!1775175 lambda!190330) e!2881485)))

(declare-fun b!4619508 () Bool)

(declare-fun e!2881486 () Bool)

(assert (=> b!4619508 (= e!2881485 e!2881486)))

(declare-fun res!1936156 () Bool)

(assert (=> b!4619508 (=> (not res!1936156) (not e!2881486))))

(declare-fun dynLambda!21476 (Int tuple2!52336) Bool)

(assert (=> b!4619508 (= res!1936156 (dynLambda!21476 lambda!190330 (h!57473 lt!1775175)))))

(declare-fun b!4619509 () Bool)

(assert (=> b!4619509 (= e!2881486 (forall!10778 (t!358581 lt!1775175) lambda!190330))))

(assert (= (and d!1454904 (not res!1936155)) b!4619508))

(assert (= (and b!4619508 res!1936156) b!4619509))

(declare-fun b_lambda!170591 () Bool)

(assert (=> (not b_lambda!170591) (not b!4619508)))

(declare-fun m!5455227 () Bool)

(assert (=> b!4619508 m!5455227))

(declare-fun m!5455229 () Bool)

(assert (=> b!4619509 m!5455229))

(assert (=> b!4619323 d!1454904))

(declare-fun b!4619562 () Bool)

(declare-fun e!2881523 () Bool)

(declare-datatypes ((List!51571 0))(
  ( (Nil!51447) (Cons!51447 (h!57477 K!12830) (t!358583 List!51571)) )
))
(declare-fun contains!14436 (List!51571 K!12830) Bool)

(declare-fun keys!18098 (ListMap!4213) List!51571)

(assert (=> b!4619562 (= e!2881523 (contains!14436 (keys!18098 (extractMap!1528 lt!1775175)) key!4968))))

(declare-fun d!1454906 () Bool)

(declare-fun e!2881526 () Bool)

(assert (=> d!1454906 e!2881526))

(declare-fun res!1936178 () Bool)

(assert (=> d!1454906 (=> res!1936178 e!2881526)))

(declare-fun e!2881524 () Bool)

(assert (=> d!1454906 (= res!1936178 e!2881524)))

(declare-fun res!1936177 () Bool)

(assert (=> d!1454906 (=> (not res!1936177) (not e!2881524))))

(declare-fun lt!1775420 () Bool)

(assert (=> d!1454906 (= res!1936177 (not lt!1775420))))

(declare-fun lt!1775426 () Bool)

(assert (=> d!1454906 (= lt!1775420 lt!1775426)))

(declare-fun lt!1775421 () Unit!110776)

(declare-fun e!2881527 () Unit!110776)

(assert (=> d!1454906 (= lt!1775421 e!2881527)))

(declare-fun c!790792 () Bool)

(assert (=> d!1454906 (= c!790792 lt!1775426)))

(declare-fun containsKey!2371 (List!51568 K!12830) Bool)

(assert (=> d!1454906 (= lt!1775426 (containsKey!2371 (toList!4909 (extractMap!1528 lt!1775175)) key!4968))))

(assert (=> d!1454906 (= (contains!14431 (extractMap!1528 lt!1775175) key!4968) lt!1775420)))

(declare-fun b!4619563 () Bool)

(declare-fun e!2881525 () List!51571)

(declare-fun getKeysList!633 (List!51568) List!51571)

(assert (=> b!4619563 (= e!2881525 (getKeysList!633 (toList!4909 (extractMap!1528 lt!1775175))))))

(declare-fun b!4619564 () Bool)

(assert (=> b!4619564 false))

(declare-fun lt!1775423 () Unit!110776)

(declare-fun lt!1775425 () Unit!110776)

(assert (=> b!4619564 (= lt!1775423 lt!1775425)))

(assert (=> b!4619564 (containsKey!2371 (toList!4909 (extractMap!1528 lt!1775175)) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!632 (List!51568 K!12830) Unit!110776)

(assert (=> b!4619564 (= lt!1775425 (lemmaInGetKeysListThenContainsKey!632 (toList!4909 (extractMap!1528 lt!1775175)) key!4968))))

(declare-fun e!2881528 () Unit!110776)

(declare-fun Unit!110803 () Unit!110776)

(assert (=> b!4619564 (= e!2881528 Unit!110803)))

(declare-fun b!4619565 () Bool)

(declare-fun lt!1775424 () Unit!110776)

(assert (=> b!4619565 (= e!2881527 lt!1775424)))

(declare-fun lt!1775422 () Unit!110776)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1309 (List!51568 K!12830) Unit!110776)

(assert (=> b!4619565 (= lt!1775422 (lemmaContainsKeyImpliesGetValueByKeyDefined!1309 (toList!4909 (extractMap!1528 lt!1775175)) key!4968))))

(declare-datatypes ((Option!11513 0))(
  ( (None!11512) (Some!11512 (v!45598 V!13076)) )
))
(declare-fun isDefined!8778 (Option!11513) Bool)

(declare-fun getValueByKey!1407 (List!51568 K!12830) Option!11513)

(assert (=> b!4619565 (isDefined!8778 (getValueByKey!1407 (toList!4909 (extractMap!1528 lt!1775175)) key!4968))))

(declare-fun lt!1775427 () Unit!110776)

(assert (=> b!4619565 (= lt!1775427 lt!1775422)))

(declare-fun lemmaInListThenGetKeysListContains!628 (List!51568 K!12830) Unit!110776)

(assert (=> b!4619565 (= lt!1775424 (lemmaInListThenGetKeysListContains!628 (toList!4909 (extractMap!1528 lt!1775175)) key!4968))))

(declare-fun call!322112 () Bool)

(assert (=> b!4619565 call!322112))

(declare-fun bm!322107 () Bool)

(assert (=> bm!322107 (= call!322112 (contains!14436 e!2881525 key!4968))))

(declare-fun c!790794 () Bool)

(assert (=> bm!322107 (= c!790794 c!790792)))

(declare-fun b!4619566 () Bool)

(assert (=> b!4619566 (= e!2881526 e!2881523)))

(declare-fun res!1936179 () Bool)

(assert (=> b!4619566 (=> (not res!1936179) (not e!2881523))))

(assert (=> b!4619566 (= res!1936179 (isDefined!8778 (getValueByKey!1407 (toList!4909 (extractMap!1528 lt!1775175)) key!4968)))))

(declare-fun b!4619567 () Bool)

(assert (=> b!4619567 (= e!2881527 e!2881528)))

(declare-fun c!790793 () Bool)

(assert (=> b!4619567 (= c!790793 call!322112)))

(declare-fun b!4619568 () Bool)

(assert (=> b!4619568 (= e!2881524 (not (contains!14436 (keys!18098 (extractMap!1528 lt!1775175)) key!4968)))))

(declare-fun b!4619569 () Bool)

(assert (=> b!4619569 (= e!2881525 (keys!18098 (extractMap!1528 lt!1775175)))))

(declare-fun b!4619570 () Bool)

(declare-fun Unit!110804 () Unit!110776)

(assert (=> b!4619570 (= e!2881528 Unit!110804)))

(assert (= (and d!1454906 c!790792) b!4619565))

(assert (= (and d!1454906 (not c!790792)) b!4619567))

(assert (= (and b!4619567 c!790793) b!4619564))

(assert (= (and b!4619567 (not c!790793)) b!4619570))

(assert (= (or b!4619565 b!4619567) bm!322107))

(assert (= (and bm!322107 c!790794) b!4619563))

(assert (= (and bm!322107 (not c!790794)) b!4619569))

(assert (= (and d!1454906 res!1936177) b!4619568))

(assert (= (and d!1454906 (not res!1936178)) b!4619566))

(assert (= (and b!4619566 res!1936179) b!4619562))

(declare-fun m!5455301 () Bool)

(assert (=> bm!322107 m!5455301))

(declare-fun m!5455303 () Bool)

(assert (=> b!4619564 m!5455303))

(declare-fun m!5455305 () Bool)

(assert (=> b!4619564 m!5455305))

(declare-fun m!5455307 () Bool)

(assert (=> b!4619566 m!5455307))

(assert (=> b!4619566 m!5455307))

(declare-fun m!5455309 () Bool)

(assert (=> b!4619566 m!5455309))

(assert (=> b!4619562 m!5455023))

(declare-fun m!5455311 () Bool)

(assert (=> b!4619562 m!5455311))

(assert (=> b!4619562 m!5455311))

(declare-fun m!5455313 () Bool)

(assert (=> b!4619562 m!5455313))

(assert (=> b!4619568 m!5455023))

(assert (=> b!4619568 m!5455311))

(assert (=> b!4619568 m!5455311))

(assert (=> b!4619568 m!5455313))

(assert (=> b!4619569 m!5455023))

(assert (=> b!4619569 m!5455311))

(declare-fun m!5455315 () Bool)

(assert (=> b!4619563 m!5455315))

(assert (=> d!1454906 m!5455303))

(declare-fun m!5455317 () Bool)

(assert (=> b!4619565 m!5455317))

(assert (=> b!4619565 m!5455307))

(assert (=> b!4619565 m!5455307))

(assert (=> b!4619565 m!5455309))

(declare-fun m!5455319 () Bool)

(assert (=> b!4619565 m!5455319))

(assert (=> b!4619323 d!1454906))

(declare-fun bs!1019485 () Bool)

(declare-fun d!1454926 () Bool)

(assert (= bs!1019485 (and d!1454926 b!4619333)))

(declare-fun lambda!190420 () Int)

(assert (=> bs!1019485 (= lambda!190420 lambda!190330)))

(declare-fun bs!1019486 () Bool)

(assert (= bs!1019486 (and d!1454926 d!1454898)))

(assert (=> bs!1019486 (= lambda!190420 lambda!190417)))

(declare-fun lt!1775428 () ListMap!4213)

(assert (=> d!1454926 (invariantList!1182 (toList!4909 lt!1775428))))

(declare-fun e!2881529 () ListMap!4213)

(assert (=> d!1454926 (= lt!1775428 e!2881529)))

(declare-fun c!790795 () Bool)

(assert (=> d!1454926 (= c!790795 ((_ is Cons!51445) lt!1775175))))

(assert (=> d!1454926 (forall!10778 lt!1775175 lambda!190420)))

(assert (=> d!1454926 (= (extractMap!1528 lt!1775175) lt!1775428)))

(declare-fun b!4619571 () Bool)

(assert (=> b!4619571 (= e!2881529 (addToMapMapFromBucket!933 (_2!29462 (h!57473 lt!1775175)) (extractMap!1528 (t!358581 lt!1775175))))))

(declare-fun b!4619572 () Bool)

(assert (=> b!4619572 (= e!2881529 (ListMap!4214 Nil!51444))))

(assert (= (and d!1454926 c!790795) b!4619571))

(assert (= (and d!1454926 (not c!790795)) b!4619572))

(declare-fun m!5455321 () Bool)

(assert (=> d!1454926 m!5455321))

(declare-fun m!5455323 () Bool)

(assert (=> d!1454926 m!5455323))

(declare-fun m!5455325 () Bool)

(assert (=> b!4619571 m!5455325))

(assert (=> b!4619571 m!5455325))

(declare-fun m!5455327 () Bool)

(assert (=> b!4619571 m!5455327))

(assert (=> b!4619323 d!1454926))

(declare-fun bs!1019496 () Bool)

(declare-fun d!1454928 () Bool)

(assert (= bs!1019496 (and d!1454928 b!4619333)))

(declare-fun lambda!190426 () Int)

(assert (=> bs!1019496 (= lambda!190426 lambda!190330)))

(declare-fun bs!1019497 () Bool)

(assert (= bs!1019497 (and d!1454928 d!1454898)))

(assert (=> bs!1019497 (= lambda!190426 lambda!190417)))

(declare-fun bs!1019498 () Bool)

(assert (= bs!1019498 (and d!1454928 d!1454926)))

(assert (=> bs!1019498 (= lambda!190426 lambda!190420)))

(assert (=> d!1454928 (contains!14431 (extractMap!1528 (toList!4910 (ListLongMap!3500 lt!1775175))) key!4968)))

(declare-fun lt!1775434 () Unit!110776)

(declare-fun choose!31149 (ListLongMap!3499 K!12830 Hashable!5869) Unit!110776)

(assert (=> d!1454928 (= lt!1775434 (choose!31149 (ListLongMap!3500 lt!1775175) key!4968 hashF!1389))))

(assert (=> d!1454928 (forall!10778 (toList!4910 (ListLongMap!3500 lt!1775175)) lambda!190426)))

(assert (=> d!1454928 (= (lemmaListContainsThenExtractedMapContains!290 (ListLongMap!3500 lt!1775175) key!4968 hashF!1389) lt!1775434)))

(declare-fun bs!1019499 () Bool)

(assert (= bs!1019499 d!1454928))

(declare-fun m!5455341 () Bool)

(assert (=> bs!1019499 m!5455341))

(assert (=> bs!1019499 m!5455341))

(declare-fun m!5455343 () Bool)

(assert (=> bs!1019499 m!5455343))

(declare-fun m!5455345 () Bool)

(assert (=> bs!1019499 m!5455345))

(declare-fun m!5455347 () Bool)

(assert (=> bs!1019499 m!5455347))

(assert (=> b!4619323 d!1454928))

(declare-fun d!1454934 () Bool)

(assert (=> d!1454934 (dynLambda!21476 lambda!190330 lt!1775167)))

(declare-fun lt!1775437 () Unit!110776)

(declare-fun choose!31150 (List!51569 Int tuple2!52336) Unit!110776)

(assert (=> d!1454934 (= lt!1775437 (choose!31150 lt!1775164 lambda!190330 lt!1775167))))

(declare-fun e!2881536 () Bool)

(assert (=> d!1454934 e!2881536))

(declare-fun res!1936182 () Bool)

(assert (=> d!1454934 (=> (not res!1936182) (not e!2881536))))

(assert (=> d!1454934 (= res!1936182 (forall!10778 lt!1775164 lambda!190330))))

(assert (=> d!1454934 (= (forallContained!2994 lt!1775164 lambda!190330 lt!1775167) lt!1775437)))

(declare-fun b!4619581 () Bool)

(assert (=> b!4619581 (= e!2881536 (contains!14432 lt!1775164 lt!1775167))))

(assert (= (and d!1454934 res!1936182) b!4619581))

(declare-fun b_lambda!170599 () Bool)

(assert (=> (not b_lambda!170599) (not d!1454934)))

(declare-fun m!5455349 () Bool)

(assert (=> d!1454934 m!5455349))

(declare-fun m!5455351 () Bool)

(assert (=> d!1454934 m!5455351))

(declare-fun m!5455353 () Bool)

(assert (=> d!1454934 m!5455353))

(assert (=> b!4619581 m!5455017))

(assert (=> b!4619333 d!1454934))

(declare-fun bs!1019500 () Bool)

(declare-fun d!1454936 () Bool)

(assert (= bs!1019500 (and d!1454936 b!4619333)))

(declare-fun lambda!190433 () Int)

(assert (=> bs!1019500 (= lambda!190433 lambda!190330)))

(declare-fun bs!1019501 () Bool)

(assert (= bs!1019501 (and d!1454936 d!1454898)))

(assert (=> bs!1019501 (= lambda!190433 lambda!190417)))

(declare-fun bs!1019502 () Bool)

(assert (= bs!1019502 (and d!1454936 d!1454926)))

(assert (=> bs!1019502 (= lambda!190433 lambda!190420)))

(declare-fun bs!1019503 () Bool)

(assert (= bs!1019503 (and d!1454936 d!1454928)))

(assert (=> bs!1019503 (= lambda!190433 lambda!190426)))

(declare-fun e!2881542 () Bool)

(declare-fun b!4619592 () Bool)

(assert (=> b!4619592 (= e!2881542 (isDefined!8775 (getPair!264 (apply!12137 lt!1775163 (hash!3440 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1775459 () Unit!110776)

(assert (=> b!4619592 (= lt!1775459 (forallContained!2994 (toList!4910 lt!1775163) lambda!190433 (tuple2!52337 (hash!3440 hashF!1389 key!4968) (apply!12137 lt!1775163 (hash!3440 hashF!1389 key!4968)))))))

(declare-fun lt!1775460 () Unit!110776)

(declare-fun lt!1775458 () Unit!110776)

(assert (=> b!4619592 (= lt!1775460 lt!1775458)))

(declare-fun lt!1775456 () (_ BitVec 64))

(declare-fun lt!1775454 () List!51568)

(assert (=> b!4619592 (contains!14432 (toList!4910 lt!1775163) (tuple2!52337 lt!1775456 lt!1775454))))

(assert (=> b!4619592 (= lt!1775458 (lemmaGetValueImpliesTupleContained!69 lt!1775163 lt!1775456 lt!1775454))))

(declare-fun e!2881541 () Bool)

(assert (=> b!4619592 e!2881541))

(declare-fun res!1936191 () Bool)

(assert (=> b!4619592 (=> (not res!1936191) (not e!2881541))))

(assert (=> b!4619592 (= res!1936191 (contains!14433 lt!1775163 lt!1775456))))

(assert (=> b!4619592 (= lt!1775454 (apply!12137 lt!1775163 (hash!3440 hashF!1389 key!4968)))))

(assert (=> b!4619592 (= lt!1775456 (hash!3440 hashF!1389 key!4968))))

(declare-fun lt!1775455 () Unit!110776)

(declare-fun lt!1775461 () Unit!110776)

(assert (=> b!4619592 (= lt!1775455 lt!1775461)))

(assert (=> b!4619592 (contains!14433 lt!1775163 (hash!3440 hashF!1389 key!4968))))

(assert (=> b!4619592 (= lt!1775461 (lemmaInGenMapThenLongMapContainsHash!470 lt!1775163 key!4968 hashF!1389))))

(declare-fun b!4619590 () Bool)

(declare-fun res!1936194 () Bool)

(assert (=> b!4619590 (=> (not res!1936194) (not e!2881542))))

(declare-fun allKeysSameHashInMap!1508 (ListLongMap!3499 Hashable!5869) Bool)

(assert (=> b!4619590 (= res!1936194 (allKeysSameHashInMap!1508 lt!1775163 hashF!1389))))

(declare-fun b!4619593 () Bool)

(declare-datatypes ((Option!11514 0))(
  ( (None!11513) (Some!11513 (v!45599 List!51568)) )
))
(declare-fun getValueByKey!1408 (List!51569 (_ BitVec 64)) Option!11514)

(assert (=> b!4619593 (= e!2881541 (= (getValueByKey!1408 (toList!4910 lt!1775163) lt!1775456) (Some!11513 lt!1775454)))))

(assert (=> d!1454936 e!2881542))

(declare-fun res!1936192 () Bool)

(assert (=> d!1454936 (=> (not res!1936192) (not e!2881542))))

(assert (=> d!1454936 (= res!1936192 (forall!10778 (toList!4910 lt!1775163) lambda!190433))))

(declare-fun lt!1775457 () Unit!110776)

(declare-fun choose!31151 (ListLongMap!3499 K!12830 Hashable!5869) Unit!110776)

(assert (=> d!1454936 (= lt!1775457 (choose!31151 lt!1775163 key!4968 hashF!1389))))

(assert (=> d!1454936 (forall!10778 (toList!4910 lt!1775163) lambda!190433)))

(assert (=> d!1454936 (= (lemmaInGenMapThenGetPairDefined!60 lt!1775163 key!4968 hashF!1389) lt!1775457)))

(declare-fun b!4619591 () Bool)

(declare-fun res!1936193 () Bool)

(assert (=> b!4619591 (=> (not res!1936193) (not e!2881542))))

(assert (=> b!4619591 (= res!1936193 (contains!14431 (extractMap!1528 (toList!4910 lt!1775163)) key!4968))))

(assert (= (and d!1454936 res!1936192) b!4619590))

(assert (= (and b!4619590 res!1936194) b!4619591))

(assert (= (and b!4619591 res!1936193) b!4619592))

(assert (= (and b!4619592 res!1936191) b!4619593))

(assert (=> b!4619592 m!5455019))

(assert (=> b!4619592 m!5455019))

(declare-fun m!5455355 () Bool)

(assert (=> b!4619592 m!5455355))

(declare-fun m!5455357 () Bool)

(assert (=> b!4619592 m!5455357))

(declare-fun m!5455359 () Bool)

(assert (=> b!4619592 m!5455359))

(declare-fun m!5455361 () Bool)

(assert (=> b!4619592 m!5455361))

(declare-fun m!5455363 () Bool)

(assert (=> b!4619592 m!5455363))

(assert (=> b!4619592 m!5455019))

(declare-fun m!5455365 () Bool)

(assert (=> b!4619592 m!5455365))

(assert (=> b!4619592 m!5455001))

(declare-fun m!5455367 () Bool)

(assert (=> b!4619592 m!5455367))

(declare-fun m!5455369 () Bool)

(assert (=> b!4619592 m!5455369))

(assert (=> b!4619592 m!5455355))

(assert (=> b!4619592 m!5455357))

(declare-fun m!5455371 () Bool)

(assert (=> d!1454936 m!5455371))

(declare-fun m!5455373 () Bool)

(assert (=> d!1454936 m!5455373))

(assert (=> d!1454936 m!5455371))

(declare-fun m!5455375 () Bool)

(assert (=> b!4619590 m!5455375))

(declare-fun m!5455377 () Bool)

(assert (=> b!4619593 m!5455377))

(declare-fun m!5455379 () Bool)

(assert (=> b!4619591 m!5455379))

(assert (=> b!4619591 m!5455379))

(declare-fun m!5455381 () Bool)

(assert (=> b!4619591 m!5455381))

(assert (=> b!4619333 d!1454936))

(declare-fun b!4619610 () Bool)

(declare-fun e!2881555 () Bool)

(assert (=> b!4619610 (= e!2881555 (not (containsKey!2368 lt!1775162 key!4968)))))

(declare-fun b!4619611 () Bool)

(declare-fun e!2881554 () Option!11510)

(assert (=> b!4619611 (= e!2881554 (Some!11509 (h!57472 lt!1775162)))))

(declare-fun b!4619612 () Bool)

(declare-fun e!2881557 () Option!11510)

(assert (=> b!4619612 (= e!2881554 e!2881557)))

(declare-fun c!790801 () Bool)

(assert (=> b!4619612 (= c!790801 ((_ is Cons!51444) lt!1775162))))

(declare-fun b!4619613 () Bool)

(declare-fun res!1936203 () Bool)

(declare-fun e!2881553 () Bool)

(assert (=> b!4619613 (=> (not res!1936203) (not e!2881553))))

(declare-fun lt!1775464 () Option!11510)

(declare-fun get!17016 (Option!11510) tuple2!52334)

(assert (=> b!4619613 (= res!1936203 (= (_1!29461 (get!17016 lt!1775464)) key!4968))))

(declare-fun b!4619614 () Bool)

(assert (=> b!4619614 (= e!2881557 None!11509)))

(declare-fun d!1454938 () Bool)

(declare-fun e!2881556 () Bool)

(assert (=> d!1454938 e!2881556))

(declare-fun res!1936206 () Bool)

(assert (=> d!1454938 (=> res!1936206 e!2881556)))

(assert (=> d!1454938 (= res!1936206 e!2881555)))

(declare-fun res!1936204 () Bool)

(assert (=> d!1454938 (=> (not res!1936204) (not e!2881555))))

(declare-fun isEmpty!28908 (Option!11510) Bool)

(assert (=> d!1454938 (= res!1936204 (isEmpty!28908 lt!1775464))))

(assert (=> d!1454938 (= lt!1775464 e!2881554)))

(declare-fun c!790800 () Bool)

(assert (=> d!1454938 (= c!790800 (and ((_ is Cons!51444) lt!1775162) (= (_1!29461 (h!57472 lt!1775162)) key!4968)))))

(assert (=> d!1454938 (noDuplicateKeys!1472 lt!1775162)))

(assert (=> d!1454938 (= (getPair!264 lt!1775162 key!4968) lt!1775464)))

(declare-fun b!4619615 () Bool)

(assert (=> b!4619615 (= e!2881557 (getPair!264 (t!358580 lt!1775162) key!4968))))

(declare-fun b!4619616 () Bool)

(assert (=> b!4619616 (= e!2881556 e!2881553)))

(declare-fun res!1936205 () Bool)

(assert (=> b!4619616 (=> (not res!1936205) (not e!2881553))))

(assert (=> b!4619616 (= res!1936205 (isDefined!8775 lt!1775464))))

(declare-fun b!4619617 () Bool)

(declare-fun contains!14437 (List!51568 tuple2!52334) Bool)

(assert (=> b!4619617 (= e!2881553 (contains!14437 lt!1775162 (get!17016 lt!1775464)))))

(assert (= (and d!1454938 c!790800) b!4619611))

(assert (= (and d!1454938 (not c!790800)) b!4619612))

(assert (= (and b!4619612 c!790801) b!4619615))

(assert (= (and b!4619612 (not c!790801)) b!4619614))

(assert (= (and d!1454938 res!1936204) b!4619610))

(assert (= (and d!1454938 (not res!1936206)) b!4619616))

(assert (= (and b!4619616 res!1936205) b!4619613))

(assert (= (and b!4619613 res!1936203) b!4619617))

(declare-fun m!5455383 () Bool)

(assert (=> b!4619613 m!5455383))

(assert (=> b!4619617 m!5455383))

(assert (=> b!4619617 m!5455383))

(declare-fun m!5455385 () Bool)

(assert (=> b!4619617 m!5455385))

(declare-fun m!5455387 () Bool)

(assert (=> d!1454938 m!5455387))

(declare-fun m!5455389 () Bool)

(assert (=> d!1454938 m!5455389))

(declare-fun m!5455391 () Bool)

(assert (=> b!4619616 m!5455391))

(declare-fun m!5455393 () Bool)

(assert (=> b!4619610 m!5455393))

(declare-fun m!5455395 () Bool)

(assert (=> b!4619615 m!5455395))

(assert (=> b!4619333 d!1454938))

(declare-fun d!1454940 () Bool)

(assert (=> d!1454940 (containsKey!2368 oldBucket!40 key!4968)))

(declare-fun lt!1775467 () Unit!110776)

(declare-fun choose!31152 (List!51568 K!12830 Hashable!5869) Unit!110776)

(assert (=> d!1454940 (= lt!1775467 (choose!31152 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1454940 (noDuplicateKeys!1472 oldBucket!40)))

(assert (=> d!1454940 (= (lemmaGetPairDefinedThenContainsKey!18 oldBucket!40 key!4968 hashF!1389) lt!1775467)))

(declare-fun bs!1019504 () Bool)

(assert (= bs!1019504 d!1454940))

(assert (=> bs!1019504 m!5454999))

(declare-fun m!5455397 () Bool)

(assert (=> bs!1019504 m!5455397))

(assert (=> bs!1019504 m!5455041))

(assert (=> b!4619333 d!1454940))

(declare-fun bs!1019505 () Bool)

(declare-fun d!1454942 () Bool)

(assert (= bs!1019505 (and d!1454942 b!4619333)))

(declare-fun lambda!190436 () Int)

(assert (=> bs!1019505 (= lambda!190436 lambda!190330)))

(declare-fun bs!1019506 () Bool)

(assert (= bs!1019506 (and d!1454942 d!1454898)))

(assert (=> bs!1019506 (= lambda!190436 lambda!190417)))

(declare-fun bs!1019507 () Bool)

(assert (= bs!1019507 (and d!1454942 d!1454928)))

(assert (=> bs!1019507 (= lambda!190436 lambda!190426)))

(declare-fun bs!1019508 () Bool)

(assert (= bs!1019508 (and d!1454942 d!1454936)))

(assert (=> bs!1019508 (= lambda!190436 lambda!190433)))

(declare-fun bs!1019509 () Bool)

(assert (= bs!1019509 (and d!1454942 d!1454926)))

(assert (=> bs!1019509 (= lambda!190436 lambda!190420)))

(assert (=> d!1454942 (contains!14433 lt!1775163 (hash!3440 hashF!1389 key!4968))))

(declare-fun lt!1775470 () Unit!110776)

(declare-fun choose!31153 (ListLongMap!3499 K!12830 Hashable!5869) Unit!110776)

(assert (=> d!1454942 (= lt!1775470 (choose!31153 lt!1775163 key!4968 hashF!1389))))

(assert (=> d!1454942 (forall!10778 (toList!4910 lt!1775163) lambda!190436)))

(assert (=> d!1454942 (= (lemmaInGenMapThenLongMapContainsHash!470 lt!1775163 key!4968 hashF!1389) lt!1775470)))

(declare-fun bs!1019510 () Bool)

(assert (= bs!1019510 d!1454942))

(assert (=> bs!1019510 m!5455019))

(assert (=> bs!1019510 m!5455019))

(assert (=> bs!1019510 m!5455365))

(declare-fun m!5455399 () Bool)

(assert (=> bs!1019510 m!5455399))

(declare-fun m!5455401 () Bool)

(assert (=> bs!1019510 m!5455401))

(assert (=> b!4619333 d!1454942))

(declare-fun d!1454944 () Bool)

(assert (=> d!1454944 (= (isDefined!8775 (getPair!264 lt!1775162 key!4968)) (not (isEmpty!28908 (getPair!264 lt!1775162 key!4968))))))

(declare-fun bs!1019511 () Bool)

(assert (= bs!1019511 d!1454944))

(assert (=> bs!1019511 m!5455011))

(declare-fun m!5455403 () Bool)

(assert (=> bs!1019511 m!5455403))

(assert (=> b!4619333 d!1454944))

(declare-fun d!1454946 () Bool)

(declare-fun res!1936211 () Bool)

(declare-fun e!2881562 () Bool)

(assert (=> d!1454946 (=> res!1936211 e!2881562)))

(assert (=> d!1454946 (= res!1936211 (and ((_ is Cons!51444) (t!358580 oldBucket!40)) (= (_1!29461 (h!57472 (t!358580 oldBucket!40))) key!4968)))))

(assert (=> d!1454946 (= (containsKey!2368 (t!358580 oldBucket!40) key!4968) e!2881562)))

(declare-fun b!4619622 () Bool)

(declare-fun e!2881563 () Bool)

(assert (=> b!4619622 (= e!2881562 e!2881563)))

(declare-fun res!1936212 () Bool)

(assert (=> b!4619622 (=> (not res!1936212) (not e!2881563))))

(assert (=> b!4619622 (= res!1936212 ((_ is Cons!51444) (t!358580 oldBucket!40)))))

(declare-fun b!4619623 () Bool)

(assert (=> b!4619623 (= e!2881563 (containsKey!2368 (t!358580 (t!358580 oldBucket!40)) key!4968))))

(assert (= (and d!1454946 (not res!1936211)) b!4619622))

(assert (= (and b!4619622 res!1936212) b!4619623))

(declare-fun m!5455405 () Bool)

(assert (=> b!4619623 m!5455405))

(assert (=> b!4619333 d!1454946))

(declare-fun d!1454948 () Bool)

(assert (=> d!1454948 (contains!14432 (toList!4910 lt!1775163) (tuple2!52337 lt!1775165 lt!1775162))))

(declare-fun lt!1775473 () Unit!110776)

(declare-fun choose!31155 (ListLongMap!3499 (_ BitVec 64) List!51568) Unit!110776)

(assert (=> d!1454948 (= lt!1775473 (choose!31155 lt!1775163 lt!1775165 lt!1775162))))

(assert (=> d!1454948 (contains!14433 lt!1775163 lt!1775165)))

(assert (=> d!1454948 (= (lemmaGetValueImpliesTupleContained!69 lt!1775163 lt!1775165 lt!1775162) lt!1775473)))

(declare-fun bs!1019512 () Bool)

(assert (= bs!1019512 d!1454948))

(declare-fun m!5455407 () Bool)

(assert (=> bs!1019512 m!5455407))

(declare-fun m!5455409 () Bool)

(assert (=> bs!1019512 m!5455409))

(assert (=> bs!1019512 m!5455005))

(assert (=> b!4619333 d!1454948))

(declare-fun d!1454950 () Bool)

(declare-fun lt!1775476 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8750 (List!51569) (InoxSet tuple2!52336))

(assert (=> d!1454950 (= lt!1775476 (select (content!8750 lt!1775164) lt!1775167))))

(declare-fun e!2881568 () Bool)

(assert (=> d!1454950 (= lt!1775476 e!2881568)))

(declare-fun res!1936218 () Bool)

(assert (=> d!1454950 (=> (not res!1936218) (not e!2881568))))

(assert (=> d!1454950 (= res!1936218 ((_ is Cons!51445) lt!1775164))))

(assert (=> d!1454950 (= (contains!14432 lt!1775164 lt!1775167) lt!1775476)))

(declare-fun b!4619629 () Bool)

(declare-fun e!2881569 () Bool)

(assert (=> b!4619629 (= e!2881568 e!2881569)))

(declare-fun res!1936217 () Bool)

(assert (=> b!4619629 (=> res!1936217 e!2881569)))

(assert (=> b!4619629 (= res!1936217 (= (h!57473 lt!1775164) lt!1775167))))

(declare-fun b!4619630 () Bool)

(assert (=> b!4619630 (= e!2881569 (contains!14432 (t!358581 lt!1775164) lt!1775167))))

(assert (= (and d!1454950 res!1936218) b!4619629))

(assert (= (and b!4619629 (not res!1936217)) b!4619630))

(declare-fun m!5455411 () Bool)

(assert (=> d!1454950 m!5455411))

(declare-fun m!5455413 () Bool)

(assert (=> d!1454950 m!5455413))

(declare-fun m!5455415 () Bool)

(assert (=> b!4619630 m!5455415))

(assert (=> b!4619333 d!1454950))

(declare-fun d!1454952 () Bool)

(declare-fun get!17017 (Option!11514) List!51568)

(assert (=> d!1454952 (= (apply!12137 lt!1775163 lt!1775165) (get!17017 (getValueByKey!1408 (toList!4910 lt!1775163) lt!1775165)))))

(declare-fun bs!1019513 () Bool)

(assert (= bs!1019513 d!1454952))

(declare-fun m!5455417 () Bool)

(assert (=> bs!1019513 m!5455417))

(assert (=> bs!1019513 m!5455417))

(declare-fun m!5455419 () Bool)

(assert (=> bs!1019513 m!5455419))

(assert (=> b!4619333 d!1454952))

(declare-fun d!1454954 () Bool)

(declare-fun e!2881575 () Bool)

(assert (=> d!1454954 e!2881575))

(declare-fun res!1936221 () Bool)

(assert (=> d!1454954 (=> res!1936221 e!2881575)))

(declare-fun lt!1775486 () Bool)

(assert (=> d!1454954 (= res!1936221 (not lt!1775486))))

(declare-fun lt!1775488 () Bool)

(assert (=> d!1454954 (= lt!1775486 lt!1775488)))

(declare-fun lt!1775487 () Unit!110776)

(declare-fun e!2881574 () Unit!110776)

(assert (=> d!1454954 (= lt!1775487 e!2881574)))

(declare-fun c!790804 () Bool)

(assert (=> d!1454954 (= c!790804 lt!1775488)))

(declare-fun containsKey!2372 (List!51569 (_ BitVec 64)) Bool)

(assert (=> d!1454954 (= lt!1775488 (containsKey!2372 (toList!4910 lt!1775163) lt!1775165))))

(assert (=> d!1454954 (= (contains!14433 lt!1775163 lt!1775165) lt!1775486)))

(declare-fun b!4619637 () Bool)

(declare-fun lt!1775485 () Unit!110776)

(assert (=> b!4619637 (= e!2881574 lt!1775485)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1310 (List!51569 (_ BitVec 64)) Unit!110776)

(assert (=> b!4619637 (= lt!1775485 (lemmaContainsKeyImpliesGetValueByKeyDefined!1310 (toList!4910 lt!1775163) lt!1775165))))

(declare-fun isDefined!8779 (Option!11514) Bool)

(assert (=> b!4619637 (isDefined!8779 (getValueByKey!1408 (toList!4910 lt!1775163) lt!1775165))))

(declare-fun b!4619638 () Bool)

(declare-fun Unit!110807 () Unit!110776)

(assert (=> b!4619638 (= e!2881574 Unit!110807)))

(declare-fun b!4619639 () Bool)

(assert (=> b!4619639 (= e!2881575 (isDefined!8779 (getValueByKey!1408 (toList!4910 lt!1775163) lt!1775165)))))

(assert (= (and d!1454954 c!790804) b!4619637))

(assert (= (and d!1454954 (not c!790804)) b!4619638))

(assert (= (and d!1454954 (not res!1936221)) b!4619639))

(declare-fun m!5455421 () Bool)

(assert (=> d!1454954 m!5455421))

(declare-fun m!5455423 () Bool)

(assert (=> b!4619637 m!5455423))

(assert (=> b!4619637 m!5455417))

(assert (=> b!4619637 m!5455417))

(declare-fun m!5455425 () Bool)

(assert (=> b!4619637 m!5455425))

(assert (=> b!4619639 m!5455417))

(assert (=> b!4619639 m!5455417))

(assert (=> b!4619639 m!5455425))

(assert (=> b!4619333 d!1454954))

(declare-fun d!1454956 () Bool)

(declare-fun res!1936222 () Bool)

(declare-fun e!2881576 () Bool)

(assert (=> d!1454956 (=> res!1936222 e!2881576)))

(assert (=> d!1454956 (= res!1936222 (and ((_ is Cons!51444) oldBucket!40) (= (_1!29461 (h!57472 oldBucket!40)) key!4968)))))

(assert (=> d!1454956 (= (containsKey!2368 oldBucket!40 key!4968) e!2881576)))

(declare-fun b!4619640 () Bool)

(declare-fun e!2881577 () Bool)

(assert (=> b!4619640 (= e!2881576 e!2881577)))

(declare-fun res!1936223 () Bool)

(assert (=> b!4619640 (=> (not res!1936223) (not e!2881577))))

(assert (=> b!4619640 (= res!1936223 ((_ is Cons!51444) oldBucket!40))))

(declare-fun b!4619641 () Bool)

(assert (=> b!4619641 (= e!2881577 (containsKey!2368 (t!358580 oldBucket!40) key!4968))))

(assert (= (and d!1454956 (not res!1936222)) b!4619640))

(assert (= (and b!4619640 res!1936223) b!4619641))

(assert (=> b!4619641 m!5455007))

(assert (=> b!4619333 d!1454956))

(declare-fun bs!1019514 () Bool)

(declare-fun d!1454958 () Bool)

(assert (= bs!1019514 (and d!1454958 b!4619451)))

(declare-fun lambda!190437 () Int)

(assert (=> bs!1019514 (not (= lambda!190437 lambda!190404))))

(declare-fun bs!1019515 () Bool)

(assert (= bs!1019515 (and d!1454958 b!4619449)))

(assert (=> bs!1019515 (not (= lambda!190437 lambda!190407))))

(declare-fun bs!1019516 () Bool)

(assert (= bs!1019516 (and d!1454958 d!1454860)))

(assert (=> bs!1019516 (not (= lambda!190437 lambda!190412))))

(assert (=> bs!1019515 (not (= lambda!190437 lambda!190408))))

(declare-fun bs!1019517 () Bool)

(assert (= bs!1019517 (and d!1454958 d!1454858)))

(assert (=> bs!1019517 (= lambda!190437 lambda!190336)))

(assert (=> d!1454958 true))

(assert (=> d!1454958 true))

(assert (=> d!1454958 (= (allKeysSameHash!1326 newBucket!224 hash!414 hashF!1389) (forall!10780 newBucket!224 lambda!190437))))

(declare-fun bs!1019518 () Bool)

(assert (= bs!1019518 d!1454958))

(declare-fun m!5455427 () Bool)

(assert (=> bs!1019518 m!5455427))

(assert (=> b!4619332 d!1454958))

(declare-fun d!1454960 () Bool)

(declare-fun res!1936228 () Bool)

(declare-fun e!2881582 () Bool)

(assert (=> d!1454960 (=> res!1936228 e!2881582)))

(assert (=> d!1454960 (= res!1936228 (not ((_ is Cons!51444) oldBucket!40)))))

(assert (=> d!1454960 (= (noDuplicateKeys!1472 oldBucket!40) e!2881582)))

(declare-fun b!4619646 () Bool)

(declare-fun e!2881583 () Bool)

(assert (=> b!4619646 (= e!2881582 e!2881583)))

(declare-fun res!1936229 () Bool)

(assert (=> b!4619646 (=> (not res!1936229) (not e!2881583))))

(assert (=> b!4619646 (= res!1936229 (not (containsKey!2368 (t!358580 oldBucket!40) (_1!29461 (h!57472 oldBucket!40)))))))

(declare-fun b!4619647 () Bool)

(assert (=> b!4619647 (= e!2881583 (noDuplicateKeys!1472 (t!358580 oldBucket!40)))))

(assert (= (and d!1454960 (not res!1936228)) b!4619646))

(assert (= (and b!4619646 res!1936229) b!4619647))

(declare-fun m!5455429 () Bool)

(assert (=> b!4619646 m!5455429))

(assert (=> b!4619647 m!5455223))

(assert (=> start!462384 d!1454960))

(declare-fun b!4619648 () Bool)

(declare-fun e!2881584 () Bool)

(assert (=> b!4619648 (= e!2881584 (contains!14436 (keys!18098 lt!1775172) key!4968))))

(declare-fun d!1454962 () Bool)

(declare-fun e!2881587 () Bool)

(assert (=> d!1454962 e!2881587))

(declare-fun res!1936231 () Bool)

(assert (=> d!1454962 (=> res!1936231 e!2881587)))

(declare-fun e!2881585 () Bool)

(assert (=> d!1454962 (= res!1936231 e!2881585)))

(declare-fun res!1936230 () Bool)

(assert (=> d!1454962 (=> (not res!1936230) (not e!2881585))))

(declare-fun lt!1775489 () Bool)

(assert (=> d!1454962 (= res!1936230 (not lt!1775489))))

(declare-fun lt!1775495 () Bool)

(assert (=> d!1454962 (= lt!1775489 lt!1775495)))

(declare-fun lt!1775490 () Unit!110776)

(declare-fun e!2881588 () Unit!110776)

(assert (=> d!1454962 (= lt!1775490 e!2881588)))

(declare-fun c!790805 () Bool)

(assert (=> d!1454962 (= c!790805 lt!1775495)))

(assert (=> d!1454962 (= lt!1775495 (containsKey!2371 (toList!4909 lt!1775172) key!4968))))

(assert (=> d!1454962 (= (contains!14431 lt!1775172 key!4968) lt!1775489)))

(declare-fun b!4619649 () Bool)

(declare-fun e!2881586 () List!51571)

(assert (=> b!4619649 (= e!2881586 (getKeysList!633 (toList!4909 lt!1775172)))))

(declare-fun b!4619650 () Bool)

(assert (=> b!4619650 false))

(declare-fun lt!1775492 () Unit!110776)

(declare-fun lt!1775494 () Unit!110776)

(assert (=> b!4619650 (= lt!1775492 lt!1775494)))

(assert (=> b!4619650 (containsKey!2371 (toList!4909 lt!1775172) key!4968)))

(assert (=> b!4619650 (= lt!1775494 (lemmaInGetKeysListThenContainsKey!632 (toList!4909 lt!1775172) key!4968))))

(declare-fun e!2881589 () Unit!110776)

(declare-fun Unit!110808 () Unit!110776)

(assert (=> b!4619650 (= e!2881589 Unit!110808)))

(declare-fun b!4619651 () Bool)

(declare-fun lt!1775493 () Unit!110776)

(assert (=> b!4619651 (= e!2881588 lt!1775493)))

(declare-fun lt!1775491 () Unit!110776)

(assert (=> b!4619651 (= lt!1775491 (lemmaContainsKeyImpliesGetValueByKeyDefined!1309 (toList!4909 lt!1775172) key!4968))))

(assert (=> b!4619651 (isDefined!8778 (getValueByKey!1407 (toList!4909 lt!1775172) key!4968))))

(declare-fun lt!1775496 () Unit!110776)

(assert (=> b!4619651 (= lt!1775496 lt!1775491)))

(assert (=> b!4619651 (= lt!1775493 (lemmaInListThenGetKeysListContains!628 (toList!4909 lt!1775172) key!4968))))

(declare-fun call!322113 () Bool)

(assert (=> b!4619651 call!322113))

(declare-fun bm!322108 () Bool)

(assert (=> bm!322108 (= call!322113 (contains!14436 e!2881586 key!4968))))

(declare-fun c!790807 () Bool)

(assert (=> bm!322108 (= c!790807 c!790805)))

(declare-fun b!4619652 () Bool)

(assert (=> b!4619652 (= e!2881587 e!2881584)))

(declare-fun res!1936232 () Bool)

(assert (=> b!4619652 (=> (not res!1936232) (not e!2881584))))

(assert (=> b!4619652 (= res!1936232 (isDefined!8778 (getValueByKey!1407 (toList!4909 lt!1775172) key!4968)))))

(declare-fun b!4619653 () Bool)

(assert (=> b!4619653 (= e!2881588 e!2881589)))

(declare-fun c!790806 () Bool)

(assert (=> b!4619653 (= c!790806 call!322113)))

(declare-fun b!4619654 () Bool)

(assert (=> b!4619654 (= e!2881585 (not (contains!14436 (keys!18098 lt!1775172) key!4968)))))

(declare-fun b!4619655 () Bool)

(assert (=> b!4619655 (= e!2881586 (keys!18098 lt!1775172))))

(declare-fun b!4619656 () Bool)

(declare-fun Unit!110809 () Unit!110776)

(assert (=> b!4619656 (= e!2881589 Unit!110809)))

(assert (= (and d!1454962 c!790805) b!4619651))

(assert (= (and d!1454962 (not c!790805)) b!4619653))

(assert (= (and b!4619653 c!790806) b!4619650))

(assert (= (and b!4619653 (not c!790806)) b!4619656))

(assert (= (or b!4619651 b!4619653) bm!322108))

(assert (= (and bm!322108 c!790807) b!4619649))

(assert (= (and bm!322108 (not c!790807)) b!4619655))

(assert (= (and d!1454962 res!1936230) b!4619654))

(assert (= (and d!1454962 (not res!1936231)) b!4619652))

(assert (= (and b!4619652 res!1936232) b!4619648))

(declare-fun m!5455431 () Bool)

(assert (=> bm!322108 m!5455431))

(declare-fun m!5455433 () Bool)

(assert (=> b!4619650 m!5455433))

(declare-fun m!5455435 () Bool)

(assert (=> b!4619650 m!5455435))

(declare-fun m!5455437 () Bool)

(assert (=> b!4619652 m!5455437))

(assert (=> b!4619652 m!5455437))

(declare-fun m!5455439 () Bool)

(assert (=> b!4619652 m!5455439))

(declare-fun m!5455441 () Bool)

(assert (=> b!4619648 m!5455441))

(assert (=> b!4619648 m!5455441))

(declare-fun m!5455443 () Bool)

(assert (=> b!4619648 m!5455443))

(assert (=> b!4619654 m!5455441))

(assert (=> b!4619654 m!5455441))

(assert (=> b!4619654 m!5455443))

(assert (=> b!4619655 m!5455441))

(declare-fun m!5455445 () Bool)

(assert (=> b!4619649 m!5455445))

(assert (=> d!1454962 m!5455433))

(declare-fun m!5455447 () Bool)

(assert (=> b!4619651 m!5455447))

(assert (=> b!4619651 m!5455437))

(assert (=> b!4619651 m!5455437))

(assert (=> b!4619651 m!5455439))

(declare-fun m!5455449 () Bool)

(assert (=> b!4619651 m!5455449))

(assert (=> b!4619321 d!1454962))

(declare-fun bs!1019519 () Bool)

(declare-fun d!1454964 () Bool)

(assert (= bs!1019519 (and d!1454964 b!4619333)))

(declare-fun lambda!190438 () Int)

(assert (=> bs!1019519 (= lambda!190438 lambda!190330)))

(declare-fun bs!1019520 () Bool)

(assert (= bs!1019520 (and d!1454964 d!1454898)))

(assert (=> bs!1019520 (= lambda!190438 lambda!190417)))

(declare-fun bs!1019521 () Bool)

(assert (= bs!1019521 (and d!1454964 d!1454928)))

(assert (=> bs!1019521 (= lambda!190438 lambda!190426)))

(declare-fun bs!1019522 () Bool)

(assert (= bs!1019522 (and d!1454964 d!1454936)))

(assert (=> bs!1019522 (= lambda!190438 lambda!190433)))

(declare-fun bs!1019523 () Bool)

(assert (= bs!1019523 (and d!1454964 d!1454942)))

(assert (=> bs!1019523 (= lambda!190438 lambda!190436)))

(declare-fun bs!1019524 () Bool)

(assert (= bs!1019524 (and d!1454964 d!1454926)))

(assert (=> bs!1019524 (= lambda!190438 lambda!190420)))

(declare-fun lt!1775497 () ListMap!4213)

(assert (=> d!1454964 (invariantList!1182 (toList!4909 lt!1775497))))

(declare-fun e!2881590 () ListMap!4213)

(assert (=> d!1454964 (= lt!1775497 e!2881590)))

(declare-fun c!790808 () Bool)

(assert (=> d!1454964 (= c!790808 ((_ is Cons!51445) lt!1775164))))

(assert (=> d!1454964 (forall!10778 lt!1775164 lambda!190438)))

(assert (=> d!1454964 (= (extractMap!1528 lt!1775164) lt!1775497)))

(declare-fun b!4619657 () Bool)

(assert (=> b!4619657 (= e!2881590 (addToMapMapFromBucket!933 (_2!29462 (h!57473 lt!1775164)) (extractMap!1528 (t!358581 lt!1775164))))))

(declare-fun b!4619658 () Bool)

(assert (=> b!4619658 (= e!2881590 (ListMap!4214 Nil!51444))))

(assert (= (and d!1454964 c!790808) b!4619657))

(assert (= (and d!1454964 (not c!790808)) b!4619658))

(declare-fun m!5455451 () Bool)

(assert (=> d!1454964 m!5455451))

(declare-fun m!5455453 () Bool)

(assert (=> d!1454964 m!5455453))

(declare-fun m!5455455 () Bool)

(assert (=> b!4619657 m!5455455))

(assert (=> b!4619657 m!5455455))

(declare-fun m!5455457 () Bool)

(assert (=> b!4619657 m!5455457))

(assert (=> b!4619321 d!1454964))

(declare-fun d!1454966 () Bool)

(declare-fun lt!1775498 () List!51568)

(assert (=> d!1454966 (not (containsKey!2368 lt!1775498 key!4968))))

(declare-fun e!2881591 () List!51568)

(assert (=> d!1454966 (= lt!1775498 e!2881591)))

(declare-fun c!790809 () Bool)

(assert (=> d!1454966 (= c!790809 (and ((_ is Cons!51444) (tail!8107 oldBucket!40)) (= (_1!29461 (h!57472 (tail!8107 oldBucket!40))) key!4968)))))

(assert (=> d!1454966 (noDuplicateKeys!1472 (tail!8107 oldBucket!40))))

(assert (=> d!1454966 (= (removePairForKey!1095 (tail!8107 oldBucket!40) key!4968) lt!1775498)))

(declare-fun b!4619660 () Bool)

(declare-fun e!2881592 () List!51568)

(assert (=> b!4619660 (= e!2881591 e!2881592)))

(declare-fun c!790810 () Bool)

(assert (=> b!4619660 (= c!790810 ((_ is Cons!51444) (tail!8107 oldBucket!40)))))

(declare-fun b!4619662 () Bool)

(assert (=> b!4619662 (= e!2881592 Nil!51444)))

(declare-fun b!4619661 () Bool)

(assert (=> b!4619661 (= e!2881592 (Cons!51444 (h!57472 (tail!8107 oldBucket!40)) (removePairForKey!1095 (t!358580 (tail!8107 oldBucket!40)) key!4968)))))

(declare-fun b!4619659 () Bool)

(assert (=> b!4619659 (= e!2881591 (t!358580 (tail!8107 oldBucket!40)))))

(assert (= (and d!1454966 c!790809) b!4619659))

(assert (= (and d!1454966 (not c!790809)) b!4619660))

(assert (= (and b!4619660 c!790810) b!4619661))

(assert (= (and b!4619660 (not c!790810)) b!4619662))

(declare-fun m!5455459 () Bool)

(assert (=> d!1454966 m!5455459))

(assert (=> d!1454966 m!5455031))

(declare-fun m!5455461 () Bool)

(assert (=> d!1454966 m!5455461))

(declare-fun m!5455463 () Bool)

(assert (=> b!4619661 m!5455463))

(assert (=> b!4619331 d!1454966))

(declare-fun d!1454968 () Bool)

(assert (=> d!1454968 (= (tail!8107 oldBucket!40) (t!358580 oldBucket!40))))

(assert (=> b!4619331 d!1454968))

(declare-fun d!1454970 () Bool)

(assert (=> d!1454970 (= (tail!8107 newBucket!224) (t!358580 newBucket!224))))

(assert (=> b!4619331 d!1454970))

(declare-fun d!1454972 () Bool)

(declare-fun res!1936233 () Bool)

(declare-fun e!2881593 () Bool)

(assert (=> d!1454972 (=> res!1936233 e!2881593)))

(assert (=> d!1454972 (= res!1936233 (not ((_ is Cons!51444) newBucket!224)))))

(assert (=> d!1454972 (= (noDuplicateKeys!1472 newBucket!224) e!2881593)))

(declare-fun b!4619663 () Bool)

(declare-fun e!2881594 () Bool)

(assert (=> b!4619663 (= e!2881593 e!2881594)))

(declare-fun res!1936234 () Bool)

(assert (=> b!4619663 (=> (not res!1936234) (not e!2881594))))

(assert (=> b!4619663 (= res!1936234 (not (containsKey!2368 (t!358580 newBucket!224) (_1!29461 (h!57472 newBucket!224)))))))

(declare-fun b!4619664 () Bool)

(assert (=> b!4619664 (= e!2881594 (noDuplicateKeys!1472 (t!358580 newBucket!224)))))

(assert (= (and d!1454972 (not res!1936233)) b!4619663))

(assert (= (and b!4619663 res!1936234) b!4619664))

(declare-fun m!5455465 () Bool)

(assert (=> b!4619663 m!5455465))

(declare-fun m!5455467 () Bool)

(assert (=> b!4619664 m!5455467))

(assert (=> b!4619330 d!1454972))

(declare-fun d!1454974 () Bool)

(declare-fun lt!1775499 () List!51568)

(assert (=> d!1454974 (not (containsKey!2368 lt!1775499 key!4968))))

(declare-fun e!2881595 () List!51568)

(assert (=> d!1454974 (= lt!1775499 e!2881595)))

(declare-fun c!790811 () Bool)

(assert (=> d!1454974 (= c!790811 (and ((_ is Cons!51444) oldBucket!40) (= (_1!29461 (h!57472 oldBucket!40)) key!4968)))))

(assert (=> d!1454974 (noDuplicateKeys!1472 oldBucket!40)))

(assert (=> d!1454974 (= (removePairForKey!1095 oldBucket!40 key!4968) lt!1775499)))

(declare-fun b!4619666 () Bool)

(declare-fun e!2881596 () List!51568)

(assert (=> b!4619666 (= e!2881595 e!2881596)))

(declare-fun c!790812 () Bool)

(assert (=> b!4619666 (= c!790812 ((_ is Cons!51444) oldBucket!40))))

(declare-fun b!4619668 () Bool)

(assert (=> b!4619668 (= e!2881596 Nil!51444)))

(declare-fun b!4619667 () Bool)

(assert (=> b!4619667 (= e!2881596 (Cons!51444 (h!57472 oldBucket!40) (removePairForKey!1095 (t!358580 oldBucket!40) key!4968)))))

(declare-fun b!4619665 () Bool)

(assert (=> b!4619665 (= e!2881595 (t!358580 oldBucket!40))))

(assert (= (and d!1454974 c!790811) b!4619665))

(assert (= (and d!1454974 (not c!790811)) b!4619666))

(assert (= (and b!4619666 c!790812) b!4619667))

(assert (= (and b!4619666 (not c!790812)) b!4619668))

(declare-fun m!5455469 () Bool)

(assert (=> d!1454974 m!5455469))

(assert (=> d!1454974 m!5455041))

(assert (=> b!4619667 m!5454993))

(assert (=> b!4619328 d!1454974))

(declare-fun d!1454976 () Bool)

(declare-fun hash!3442 (Hashable!5869 K!12830) (_ BitVec 64))

(assert (=> d!1454976 (= (hash!3440 hashF!1389 key!4968) (hash!3442 hashF!1389 key!4968))))

(declare-fun bs!1019525 () Bool)

(assert (= bs!1019525 d!1454976))

(declare-fun m!5455471 () Bool)

(assert (=> bs!1019525 m!5455471))

(assert (=> b!4619327 d!1454976))

(declare-fun b!4619673 () Bool)

(declare-fun e!2881599 () Bool)

(declare-fun tp!1341822 () Bool)

(assert (=> b!4619673 (= e!2881599 (and tp_is_empty!29181 tp_is_empty!29183 tp!1341822))))

(assert (=> b!4619325 (= tp!1341815 e!2881599)))

(assert (= (and b!4619325 ((_ is Cons!51444) (t!358580 oldBucket!40))) b!4619673))

(declare-fun e!2881600 () Bool)

(declare-fun tp!1341823 () Bool)

(declare-fun b!4619674 () Bool)

(assert (=> b!4619674 (= e!2881600 (and tp_is_empty!29181 tp_is_empty!29183 tp!1341823))))

(assert (=> b!4619322 (= tp!1341814 e!2881600)))

(assert (= (and b!4619322 ((_ is Cons!51444) (t!358580 newBucket!224))) b!4619674))

(declare-fun b_lambda!170601 () Bool)

(assert (= b_lambda!170591 (or b!4619333 b_lambda!170601)))

(declare-fun bs!1019526 () Bool)

(declare-fun d!1454978 () Bool)

(assert (= bs!1019526 (and d!1454978 b!4619333)))

(assert (=> bs!1019526 (= (dynLambda!21476 lambda!190330 (h!57473 lt!1775175)) (noDuplicateKeys!1472 (_2!29462 (h!57473 lt!1775175))))))

(declare-fun m!5455473 () Bool)

(assert (=> bs!1019526 m!5455473))

(assert (=> b!4619508 d!1454978))

(declare-fun b_lambda!170603 () Bool)

(assert (= b_lambda!170599 (or b!4619333 b_lambda!170603)))

(declare-fun bs!1019527 () Bool)

(declare-fun d!1454980 () Bool)

(assert (= bs!1019527 (and d!1454980 b!4619333)))

(assert (=> bs!1019527 (= (dynLambda!21476 lambda!190330 lt!1775167) (noDuplicateKeys!1472 (_2!29462 lt!1775167)))))

(declare-fun m!5455475 () Bool)

(assert (=> bs!1019527 m!5455475))

(assert (=> d!1454934 d!1454980))

(check-sat (not d!1454944) (not b!4619617) (not d!1454860) (not b!4619592) (not d!1454966) (not d!1454952) (not b!4619661) (not d!1454906) (not b!4619650) (not d!1454928) (not b!4619450) (not b!4619649) (not b!4619651) (not b!4619484) (not b!4619646) (not b!4619590) (not b!4619615) (not b!4619630) (not b!4619637) (not b!4619655) (not b!4619641) (not b!4619509) (not b!4619623) (not b_lambda!170601) (not b_lambda!170603) (not b!4619616) (not bm!322099) (not b!4619449) (not b!4619568) (not b!4619453) (not b!4619648) (not d!1454974) tp_is_empty!29181 (not d!1454898) (not b!4619610) (not b!4619563) (not b!4619581) (not b!4619657) (not d!1454938) (not d!1454926) (not d!1454954) (not b!4619639) (not b!4619613) (not d!1454958) (not b!4619593) (not bs!1019526) (not b!4619667) (not bs!1019527) (not d!1454902) (not b!4619565) (not d!1454976) (not b!4619673) (not b!4619569) (not d!1454934) (not b!4619591) (not bm!322098) (not b!4619564) (not d!1454936) (not bm!322108) (not d!1454964) (not b!4619674) (not b!4619566) (not b!4619664) (not b!4619562) tp_is_empty!29183 (not b!4619571) (not bm!322100) (not d!1454962) (not d!1454940) (not b!4619647) (not b!4619652) (not d!1454942) (not b!4619654) (not b!4619472) (not b!4619663) (not bm!322107) (not d!1454948) (not d!1454858) (not d!1454950) (not b!4619452))
(check-sat)
