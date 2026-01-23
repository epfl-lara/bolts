; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462056 () Bool)

(assert start!462056)

(declare-fun b!4617551 () Bool)

(declare-fun e!2880251 () Bool)

(declare-datatypes ((K!12795 0))(
  ( (K!12796 (val!18507 Int)) )
))
(declare-datatypes ((V!13041 0))(
  ( (V!13042 (val!18508 Int)) )
))
(declare-datatypes ((tuple2!52278 0))(
  ( (tuple2!52279 (_1!29433 K!12795) (_2!29433 V!13041)) )
))
(declare-datatypes ((List!51533 0))(
  ( (Nil!51409) (Cons!51409 (h!57429 tuple2!52278) (t!358545 List!51533)) )
))
(declare-datatypes ((ListMap!4185 0))(
  ( (ListMap!4186 (toList!4881 List!51533)) )
))
(declare-fun lt!1773433 () ListMap!4185)

(assert (=> b!4617551 (= e!2880251 (= lt!1773433 (ListMap!4186 Nil!51409)))))

(declare-fun b!4617552 () Bool)

(declare-fun e!2880249 () Bool)

(declare-fun e!2880252 () Bool)

(assert (=> b!4617552 (= e!2880249 e!2880252)))

(declare-fun res!1934995 () Bool)

(assert (=> b!4617552 (=> res!1934995 e!2880252)))

(declare-fun oldBucket!40 () List!51533)

(declare-fun key!4968 () K!12795)

(declare-fun containsKey!2340 (List!51533 K!12795) Bool)

(assert (=> b!4617552 (= res!1934995 (not (containsKey!2340 (t!358545 oldBucket!40) key!4968)))))

(assert (=> b!4617552 (containsKey!2340 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!110650 0))(
  ( (Unit!110651) )
))
(declare-fun lt!1773435 () Unit!110650)

(declare-datatypes ((Hashable!5855 0))(
  ( (HashableExt!5854 (__x!31558 Int)) )
))
(declare-fun hashF!1389 () Hashable!5855)

(declare-fun lemmaGetPairDefinedThenContainsKey!4 (List!51533 K!12795 Hashable!5855) Unit!110650)

(assert (=> b!4617552 (= lt!1773435 (lemmaGetPairDefinedThenContainsKey!4 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1773439 () List!51533)

(declare-datatypes ((Option!11482 0))(
  ( (None!11481) (Some!11481 (v!45547 tuple2!52278)) )
))
(declare-fun isDefined!8747 (Option!11482) Bool)

(declare-fun getPair!250 (List!51533 K!12795) Option!11482)

(assert (=> b!4617552 (isDefined!8747 (getPair!250 lt!1773439 key!4968))))

(declare-datatypes ((tuple2!52280 0))(
  ( (tuple2!52281 (_1!29434 (_ BitVec 64)) (_2!29434 List!51533)) )
))
(declare-datatypes ((List!51534 0))(
  ( (Nil!51410) (Cons!51410 (h!57430 tuple2!52280) (t!358546 List!51534)) )
))
(declare-fun lt!1773440 () List!51534)

(declare-fun lambda!189872 () Int)

(declare-fun lt!1773430 () tuple2!52280)

(declare-fun lt!1773438 () Unit!110650)

(declare-fun forallContained!2973 (List!51534 Int tuple2!52280) Unit!110650)

(assert (=> b!4617552 (= lt!1773438 (forallContained!2973 lt!1773440 lambda!189872 lt!1773430))))

(declare-fun contains!14374 (List!51534 tuple2!52280) Bool)

(assert (=> b!4617552 (contains!14374 lt!1773440 lt!1773430)))

(declare-fun lt!1773431 () (_ BitVec 64))

(assert (=> b!4617552 (= lt!1773430 (tuple2!52281 lt!1773431 lt!1773439))))

(declare-fun lt!1773432 () Unit!110650)

(declare-datatypes ((ListLongMap!3471 0))(
  ( (ListLongMap!3472 (toList!4882 List!51534)) )
))
(declare-fun lt!1773434 () ListLongMap!3471)

(declare-fun lemmaGetValueImpliesTupleContained!55 (ListLongMap!3471 (_ BitVec 64) List!51533) Unit!110650)

(assert (=> b!4617552 (= lt!1773432 (lemmaGetValueImpliesTupleContained!55 lt!1773434 lt!1773431 lt!1773439))))

(declare-fun apply!12123 (ListLongMap!3471 (_ BitVec 64)) List!51533)

(assert (=> b!4617552 (= lt!1773439 (apply!12123 lt!1773434 lt!1773431))))

(declare-fun contains!14375 (ListLongMap!3471 (_ BitVec 64)) Bool)

(assert (=> b!4617552 (contains!14375 lt!1773434 lt!1773431)))

(declare-fun lt!1773437 () Unit!110650)

(declare-fun lemmaInGenMapThenLongMapContainsHash!456 (ListLongMap!3471 K!12795 Hashable!5855) Unit!110650)

(assert (=> b!4617552 (= lt!1773437 (lemmaInGenMapThenLongMapContainsHash!456 lt!1773434 key!4968 hashF!1389))))

(declare-fun lt!1773436 () Unit!110650)

(declare-fun lemmaInGenMapThenGetPairDefined!46 (ListLongMap!3471 K!12795 Hashable!5855) Unit!110650)

(assert (=> b!4617552 (= lt!1773436 (lemmaInGenMapThenGetPairDefined!46 lt!1773434 key!4968 hashF!1389))))

(assert (=> b!4617552 (= lt!1773434 (ListLongMap!3472 lt!1773440))))

(declare-fun b!4617553 () Bool)

(declare-fun e!2880253 () Bool)

(assert (=> b!4617553 (= e!2880253 (not e!2880249))))

(declare-fun res!1935003 () Bool)

(assert (=> b!4617553 (=> res!1935003 e!2880249)))

(get-info :version)

(assert (=> b!4617553 (= res!1935003 (or (and ((_ is Cons!51409) oldBucket!40) (= (_1!29433 (h!57429 oldBucket!40)) key!4968)) (not ((_ is Cons!51409) oldBucket!40)) (= (_1!29433 (h!57429 oldBucket!40)) key!4968)))))

(assert (=> b!4617553 e!2880251))

(declare-fun res!1935002 () Bool)

(assert (=> b!4617553 (=> (not res!1935002) (not e!2880251))))

(declare-fun lt!1773441 () ListMap!4185)

(declare-fun addToMapMapFromBucket!919 (List!51533 ListMap!4185) ListMap!4185)

(assert (=> b!4617553 (= res!1935002 (= lt!1773441 (addToMapMapFromBucket!919 oldBucket!40 lt!1773433)))))

(declare-fun extractMap!1514 (List!51534) ListMap!4185)

(assert (=> b!4617553 (= lt!1773433 (extractMap!1514 Nil!51410))))

(assert (=> b!4617553 true))

(declare-fun b!4617554 () Bool)

(declare-fun res!1934999 () Bool)

(declare-fun e!2880247 () Bool)

(assert (=> b!4617554 (=> (not res!1934999) (not e!2880247))))

(declare-fun newBucket!224 () List!51533)

(declare-fun noDuplicateKeys!1458 (List!51533) Bool)

(assert (=> b!4617554 (= res!1934999 (noDuplicateKeys!1458 newBucket!224))))

(declare-fun b!4617555 () Bool)

(declare-fun res!1934997 () Bool)

(assert (=> b!4617555 (=> (not res!1934997) (not e!2880247))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1312 (List!51533 (_ BitVec 64) Hashable!5855) Bool)

(assert (=> b!4617555 (= res!1934997 (allKeysSameHash!1312 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp_is_empty!29125 () Bool)

(declare-fun tp!1341698 () Bool)

(declare-fun e!2880250 () Bool)

(declare-fun tp_is_empty!29127 () Bool)

(declare-fun b!4617556 () Bool)

(assert (=> b!4617556 (= e!2880250 (and tp_is_empty!29125 tp_is_empty!29127 tp!1341698))))

(declare-fun e!2880254 () Bool)

(declare-fun tp!1341699 () Bool)

(declare-fun b!4617557 () Bool)

(assert (=> b!4617557 (= e!2880254 (and tp_is_empty!29125 tp_is_empty!29127 tp!1341699))))

(declare-fun b!4617558 () Bool)

(assert (=> b!4617558 (= e!2880252 (not (= oldBucket!40 Nil!51409)))))

(declare-fun b!4617559 () Bool)

(declare-fun res!1935000 () Bool)

(assert (=> b!4617559 (=> (not res!1935000) (not e!2880253))))

(assert (=> b!4617559 (= res!1935000 (allKeysSameHash!1312 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4617560 () Bool)

(declare-fun res!1935004 () Bool)

(assert (=> b!4617560 (=> (not res!1935004) (not e!2880247))))

(declare-fun removePairForKey!1081 (List!51533 K!12795) List!51533)

(assert (=> b!4617560 (= res!1935004 (= (removePairForKey!1081 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1934996 () Bool)

(assert (=> start!462056 (=> (not res!1934996) (not e!2880247))))

(assert (=> start!462056 (= res!1934996 (noDuplicateKeys!1458 oldBucket!40))))

(assert (=> start!462056 e!2880247))

(assert (=> start!462056 true))

(assert (=> start!462056 e!2880250))

(assert (=> start!462056 tp_is_empty!29125))

(assert (=> start!462056 e!2880254))

(declare-fun b!4617561 () Bool)

(declare-fun e!2880248 () Bool)

(assert (=> b!4617561 (= e!2880247 e!2880248)))

(declare-fun res!1934998 () Bool)

(assert (=> b!4617561 (=> (not res!1934998) (not e!2880248))))

(declare-fun contains!14376 (ListMap!4185 K!12795) Bool)

(assert (=> b!4617561 (= res!1934998 (contains!14376 lt!1773441 key!4968))))

(assert (=> b!4617561 (= lt!1773441 (extractMap!1514 lt!1773440))))

(assert (=> b!4617561 (= lt!1773440 (Cons!51410 (tuple2!52281 hash!414 oldBucket!40) Nil!51410))))

(declare-fun b!4617562 () Bool)

(assert (=> b!4617562 (= e!2880248 e!2880253)))

(declare-fun res!1935001 () Bool)

(assert (=> b!4617562 (=> (not res!1935001) (not e!2880253))))

(assert (=> b!4617562 (= res!1935001 (= lt!1773431 hash!414))))

(declare-fun hash!3419 (Hashable!5855 K!12795) (_ BitVec 64))

(assert (=> b!4617562 (= lt!1773431 (hash!3419 hashF!1389 key!4968))))

(assert (= (and start!462056 res!1934996) b!4617554))

(assert (= (and b!4617554 res!1934999) b!4617560))

(assert (= (and b!4617560 res!1935004) b!4617555))

(assert (= (and b!4617555 res!1934997) b!4617561))

(assert (= (and b!4617561 res!1934998) b!4617562))

(assert (= (and b!4617562 res!1935001) b!4617559))

(assert (= (and b!4617559 res!1935000) b!4617553))

(assert (= (and b!4617553 res!1935002) b!4617551))

(assert (= (and b!4617553 (not res!1935003)) b!4617552))

(assert (= (and b!4617552 (not res!1934995)) b!4617558))

(assert (= (and start!462056 ((_ is Cons!51409) oldBucket!40)) b!4617556))

(assert (= (and start!462056 ((_ is Cons!51409) newBucket!224)) b!4617557))

(declare-fun m!5452887 () Bool)

(assert (=> b!4617552 m!5452887))

(declare-fun m!5452889 () Bool)

(assert (=> b!4617552 m!5452889))

(declare-fun m!5452891 () Bool)

(assert (=> b!4617552 m!5452891))

(declare-fun m!5452893 () Bool)

(assert (=> b!4617552 m!5452893))

(declare-fun m!5452895 () Bool)

(assert (=> b!4617552 m!5452895))

(declare-fun m!5452897 () Bool)

(assert (=> b!4617552 m!5452897))

(declare-fun m!5452899 () Bool)

(assert (=> b!4617552 m!5452899))

(assert (=> b!4617552 m!5452891))

(declare-fun m!5452901 () Bool)

(assert (=> b!4617552 m!5452901))

(declare-fun m!5452903 () Bool)

(assert (=> b!4617552 m!5452903))

(declare-fun m!5452905 () Bool)

(assert (=> b!4617552 m!5452905))

(declare-fun m!5452907 () Bool)

(assert (=> b!4617552 m!5452907))

(declare-fun m!5452909 () Bool)

(assert (=> b!4617552 m!5452909))

(declare-fun m!5452911 () Bool)

(assert (=> b!4617562 m!5452911))

(declare-fun m!5452913 () Bool)

(assert (=> b!4617559 m!5452913))

(declare-fun m!5452915 () Bool)

(assert (=> b!4617555 m!5452915))

(declare-fun m!5452917 () Bool)

(assert (=> start!462056 m!5452917))

(declare-fun m!5452919 () Bool)

(assert (=> b!4617560 m!5452919))

(declare-fun m!5452921 () Bool)

(assert (=> b!4617553 m!5452921))

(declare-fun m!5452923 () Bool)

(assert (=> b!4617553 m!5452923))

(declare-fun m!5452925 () Bool)

(assert (=> b!4617554 m!5452925))

(declare-fun m!5452927 () Bool)

(assert (=> b!4617561 m!5452927))

(declare-fun m!5452929 () Bool)

(assert (=> b!4617561 m!5452929))

(check-sat tp_is_empty!29127 tp_is_empty!29125 (not b!4617554) (not b!4617562) (not start!462056) (not b!4617559) (not b!4617552) (not b!4617553) (not b!4617555) (not b!4617557) (not b!4617560) (not b!4617561) (not b!4617556))
(check-sat)
