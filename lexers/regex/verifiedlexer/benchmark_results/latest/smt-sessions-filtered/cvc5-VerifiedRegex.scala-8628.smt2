; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!460406 () Bool)

(assert start!460406)

(declare-fun b!4606553 () Bool)

(declare-fun res!1927873 () Bool)

(declare-fun e!2873419 () Bool)

(assert (=> b!4606553 (=> res!1927873 e!2873419)))

(declare-datatypes ((K!12543 0))(
  ( (K!12544 (val!18305 Int)) )
))
(declare-datatypes ((V!12789 0))(
  ( (V!12790 (val!18306 Int)) )
))
(declare-datatypes ((tuple2!51878 0))(
  ( (tuple2!51879 (_1!29233 K!12543) (_2!29233 V!12789)) )
))
(declare-datatypes ((List!51299 0))(
  ( (Nil!51175) (Cons!51175 (h!57159 tuple2!51878) (t!358293 List!51299)) )
))
(declare-datatypes ((tuple2!51880 0))(
  ( (tuple2!51881 (_1!29234 (_ BitVec 64)) (_2!29234 List!51299)) )
))
(declare-datatypes ((List!51300 0))(
  ( (Nil!51176) (Cons!51176 (h!57160 tuple2!51880) (t!358294 List!51300)) )
))
(declare-datatypes ((ListLongMap!3361 0))(
  ( (ListLongMap!3362 (toList!4729 List!51300)) )
))
(declare-fun lm!1477 () ListLongMap!3361)

(declare-fun lt!1763832 () tuple2!51880)

(declare-fun contains!14169 (List!51300 tuple2!51880) Bool)

(assert (=> b!4606553 (= res!1927873 (not (contains!14169 (t!358294 (toList!4729 lm!1477)) lt!1763832)))))

(declare-fun b!4606554 () Bool)

(declare-fun e!2873413 () Bool)

(assert (=> b!4606554 (= e!2873419 e!2873413)))

(declare-fun res!1927867 () Bool)

(assert (=> b!4606554 (=> res!1927867 e!2873413)))

(declare-fun lt!1763833 () Bool)

(assert (=> b!4606554 (= res!1927867 lt!1763833)))

(declare-datatypes ((Unit!109011 0))(
  ( (Unit!109012) )
))
(declare-fun lt!1763829 () Unit!109011)

(declare-fun e!2873418 () Unit!109011)

(assert (=> b!4606554 (= lt!1763829 e!2873418)))

(declare-fun c!789111 () Bool)

(assert (=> b!4606554 (= c!789111 lt!1763833)))

(declare-fun lt!1763831 () List!51299)

(declare-fun key!3287 () K!12543)

(declare-fun containsKey!2232 (List!51299 K!12543) Bool)

(assert (=> b!4606554 (= lt!1763833 (not (containsKey!2232 lt!1763831 key!3287)))))

(declare-fun b!4606555 () Bool)

(declare-fun Unit!109013 () Unit!109011)

(assert (=> b!4606555 (= e!2873418 Unit!109013)))

(declare-fun b!4606556 () Bool)

(declare-fun res!1927875 () Bool)

(declare-fun e!2873414 () Bool)

(assert (=> b!4606556 (=> (not res!1927875) (not e!2873414))))

(declare-datatypes ((ListMap!3991 0))(
  ( (ListMap!3992 (toList!4730 List!51299)) )
))
(declare-fun contains!14170 (ListMap!3991 K!12543) Bool)

(declare-fun extractMap!1417 (List!51300) ListMap!3991)

(assert (=> b!4606556 (= res!1927875 (contains!14170 (extractMap!1417 (toList!4729 lm!1477)) key!3287))))

(declare-fun res!1927877 () Bool)

(assert (=> start!460406 (=> (not res!1927877) (not e!2873414))))

(declare-fun lambda!187623 () Int)

(declare-fun forall!10668 (List!51300 Int) Bool)

(assert (=> start!460406 (= res!1927877 (forall!10668 (toList!4729 lm!1477) lambda!187623))))

(assert (=> start!460406 e!2873414))

(assert (=> start!460406 true))

(declare-fun e!2873411 () Bool)

(declare-fun inv!66728 (ListLongMap!3361) Bool)

(assert (=> start!460406 (and (inv!66728 lm!1477) e!2873411)))

(declare-fun tp_is_empty!28721 () Bool)

(assert (=> start!460406 tp_is_empty!28721))

(declare-fun e!2873420 () Bool)

(assert (=> start!460406 e!2873420))

(declare-fun b!4606557 () Bool)

(declare-fun Unit!109014 () Unit!109011)

(assert (=> b!4606557 (= e!2873418 Unit!109014)))

(declare-datatypes ((Hashable!5756 0))(
  ( (HashableExt!5755 (__x!31459 Int)) )
))
(declare-fun hashF!1107 () Hashable!5756)

(declare-fun lt!1763835 () Unit!109011)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!321 (ListLongMap!3361 K!12543 Hashable!5756) Unit!109011)

(assert (=> b!4606557 (= lt!1763835 (lemmaNotInItsHashBucketThenNotInMap!321 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4606557 false))

(declare-fun b!4606558 () Bool)

(declare-fun e!2873415 () Bool)

(declare-fun e!2873416 () Bool)

(assert (=> b!4606558 (= e!2873415 e!2873416)))

(declare-fun res!1927876 () Bool)

(assert (=> b!4606558 (=> res!1927876 e!2873416)))

(assert (=> b!4606558 (= res!1927876 (not (contains!14170 (extractMap!1417 (t!358294 (toList!4729 lm!1477))) key!3287)))))

(declare-fun lt!1763827 () ListLongMap!3361)

(assert (=> b!4606558 (contains!14170 (extractMap!1417 (toList!4729 lt!1763827)) key!3287)))

(declare-fun lt!1763824 () Unit!109011)

(declare-fun lemmaListContainsThenExtractedMapContains!269 (ListLongMap!3361 K!12543 Hashable!5756) Unit!109011)

(assert (=> b!4606558 (= lt!1763824 (lemmaListContainsThenExtractedMapContains!269 lt!1763827 key!3287 hashF!1107))))

(declare-fun b!4606559 () Bool)

(declare-fun tp!1340878 () Bool)

(assert (=> b!4606559 (= e!2873411 tp!1340878)))

(declare-fun b!4606560 () Bool)

(assert (=> b!4606560 (= e!2873413 e!2873415)))

(declare-fun res!1927874 () Bool)

(assert (=> b!4606560 (=> res!1927874 e!2873415)))

(declare-fun containsKeyBiggerList!297 (List!51300 K!12543) Bool)

(assert (=> b!4606560 (= res!1927874 (not (containsKeyBiggerList!297 (t!358294 (toList!4729 lm!1477)) key!3287)))))

(assert (=> b!4606560 (containsKeyBiggerList!297 (toList!4729 lt!1763827) key!3287)))

(declare-fun lt!1763834 () Unit!109011)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!167 (ListLongMap!3361 K!12543 Hashable!5756) Unit!109011)

(assert (=> b!4606560 (= lt!1763834 (lemmaInLongMapThenContainsKeyBiggerList!167 lt!1763827 key!3287 hashF!1107))))

(declare-fun b!4606561 () Bool)

(declare-fun res!1927869 () Bool)

(assert (=> b!4606561 (=> (not res!1927869) (not e!2873414))))

(declare-fun allKeysSameHashInMap!1468 (ListLongMap!3361 Hashable!5756) Bool)

(assert (=> b!4606561 (= res!1927869 (allKeysSameHashInMap!1468 lm!1477 hashF!1107))))

(declare-fun tp!1340879 () Bool)

(declare-fun tp_is_empty!28723 () Bool)

(declare-fun b!4606562 () Bool)

(assert (=> b!4606562 (= e!2873420 (and tp_is_empty!28721 tp_is_empty!28723 tp!1340879))))

(declare-fun b!4606563 () Bool)

(declare-fun e!2873412 () Bool)

(assert (=> b!4606563 (= e!2873412 e!2873419)))

(declare-fun res!1927880 () Bool)

(assert (=> b!4606563 (=> res!1927880 e!2873419)))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!14171 (ListLongMap!3361 (_ BitVec 64)) Bool)

(assert (=> b!4606563 (= res!1927880 (not (contains!14171 lt!1763827 hash!344)))))

(declare-fun tail!8009 (ListLongMap!3361) ListLongMap!3361)

(assert (=> b!4606563 (= lt!1763827 (tail!8009 lm!1477))))

(declare-fun b!4606564 () Bool)

(declare-fun res!1927878 () Bool)

(assert (=> b!4606564 (=> res!1927878 e!2873419)))

(declare-fun apply!12094 (ListLongMap!3361 (_ BitVec 64)) List!51299)

(assert (=> b!4606564 (= res!1927878 (not (= (apply!12094 lt!1763827 hash!344) lt!1763831)))))

(declare-fun b!4606565 () Bool)

(assert (=> b!4606565 (= e!2873416 (forall!10668 (toList!4729 lt!1763827) lambda!187623))))

(declare-fun b!4606566 () Bool)

(declare-fun e!2873417 () Bool)

(assert (=> b!4606566 (= e!2873414 e!2873417)))

(declare-fun res!1927870 () Bool)

(assert (=> b!4606566 (=> (not res!1927870) (not e!2873417))))

(declare-fun lt!1763830 () (_ BitVec 64))

(assert (=> b!4606566 (= res!1927870 (= lt!1763830 hash!344))))

(declare-fun hash!3287 (Hashable!5756 K!12543) (_ BitVec 64))

(assert (=> b!4606566 (= lt!1763830 (hash!3287 hashF!1107 key!3287))))

(declare-fun b!4606567 () Bool)

(declare-fun res!1927872 () Bool)

(assert (=> b!4606567 (=> res!1927872 e!2873412)))

(declare-fun newBucket!178 () List!51299)

(declare-fun noDuplicateKeys!1357 (List!51299) Bool)

(assert (=> b!4606567 (= res!1927872 (not (noDuplicateKeys!1357 newBucket!178)))))

(declare-fun b!4606568 () Bool)

(declare-fun res!1927868 () Bool)

(assert (=> b!4606568 (=> (not res!1927868) (not e!2873417))))

(declare-fun allKeysSameHash!1213 (List!51299 (_ BitVec 64) Hashable!5756) Bool)

(assert (=> b!4606568 (= res!1927868 (allKeysSameHash!1213 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4606569 () Bool)

(assert (=> b!4606569 (= e!2873417 (not e!2873412))))

(declare-fun res!1927871 () Bool)

(assert (=> b!4606569 (=> res!1927871 e!2873412)))

(declare-fun removePairForKey!982 (List!51299 K!12543) List!51299)

(assert (=> b!4606569 (= res!1927871 (not (= newBucket!178 (removePairForKey!982 lt!1763831 key!3287))))))

(declare-fun lt!1763825 () Unit!109011)

(declare-fun forallContained!2914 (List!51300 Int tuple2!51880) Unit!109011)

(assert (=> b!4606569 (= lt!1763825 (forallContained!2914 (toList!4729 lm!1477) lambda!187623 lt!1763832))))

(assert (=> b!4606569 (contains!14169 (toList!4729 lm!1477) lt!1763832)))

(assert (=> b!4606569 (= lt!1763832 (tuple2!51881 hash!344 lt!1763831))))

(declare-fun lt!1763826 () Unit!109011)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!867 (List!51300 (_ BitVec 64) List!51299) Unit!109011)

(assert (=> b!4606569 (= lt!1763826 (lemmaGetValueByKeyImpliesContainsTuple!867 (toList!4729 lm!1477) hash!344 lt!1763831))))

(assert (=> b!4606569 (= lt!1763831 (apply!12094 lm!1477 hash!344))))

(assert (=> b!4606569 (contains!14171 lm!1477 lt!1763830)))

(declare-fun lt!1763828 () Unit!109011)

(declare-fun lemmaInGenMapThenLongMapContainsHash!431 (ListLongMap!3361 K!12543 Hashable!5756) Unit!109011)

(assert (=> b!4606569 (= lt!1763828 (lemmaInGenMapThenLongMapContainsHash!431 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4606570 () Bool)

(declare-fun res!1927879 () Bool)

(assert (=> b!4606570 (=> res!1927879 e!2873412)))

(assert (=> b!4606570 (= res!1927879 (or (is-Nil!51176 (toList!4729 lm!1477)) (= (_1!29234 (h!57160 (toList!4729 lm!1477))) hash!344)))))

(assert (= (and start!460406 res!1927877) b!4606561))

(assert (= (and b!4606561 res!1927869) b!4606556))

(assert (= (and b!4606556 res!1927875) b!4606566))

(assert (= (and b!4606566 res!1927870) b!4606568))

(assert (= (and b!4606568 res!1927868) b!4606569))

(assert (= (and b!4606569 (not res!1927871)) b!4606567))

(assert (= (and b!4606567 (not res!1927872)) b!4606570))

(assert (= (and b!4606570 (not res!1927879)) b!4606563))

(assert (= (and b!4606563 (not res!1927880)) b!4606564))

(assert (= (and b!4606564 (not res!1927878)) b!4606553))

(assert (= (and b!4606553 (not res!1927873)) b!4606554))

(assert (= (and b!4606554 c!789111) b!4606557))

(assert (= (and b!4606554 (not c!789111)) b!4606555))

(assert (= (and b!4606554 (not res!1927867)) b!4606560))

(assert (= (and b!4606560 (not res!1927874)) b!4606558))

(assert (= (and b!4606558 (not res!1927876)) b!4606565))

(assert (= start!460406 b!4606559))

(assert (= (and start!460406 (is-Cons!51175 newBucket!178)) b!4606562))

(declare-fun m!5435997 () Bool)

(assert (=> b!4606553 m!5435997))

(declare-fun m!5435999 () Bool)

(assert (=> b!4606561 m!5435999))

(declare-fun m!5436001 () Bool)

(assert (=> b!4606567 m!5436001))

(declare-fun m!5436003 () Bool)

(assert (=> b!4606557 m!5436003))

(declare-fun m!5436005 () Bool)

(assert (=> b!4606556 m!5436005))

(assert (=> b!4606556 m!5436005))

(declare-fun m!5436007 () Bool)

(assert (=> b!4606556 m!5436007))

(declare-fun m!5436009 () Bool)

(assert (=> b!4606558 m!5436009))

(assert (=> b!4606558 m!5436009))

(declare-fun m!5436011 () Bool)

(assert (=> b!4606558 m!5436011))

(declare-fun m!5436013 () Bool)

(assert (=> b!4606558 m!5436013))

(declare-fun m!5436015 () Bool)

(assert (=> b!4606558 m!5436015))

(assert (=> b!4606558 m!5436013))

(declare-fun m!5436017 () Bool)

(assert (=> b!4606558 m!5436017))

(declare-fun m!5436019 () Bool)

(assert (=> start!460406 m!5436019))

(declare-fun m!5436021 () Bool)

(assert (=> start!460406 m!5436021))

(declare-fun m!5436023 () Bool)

(assert (=> b!4606560 m!5436023))

(declare-fun m!5436025 () Bool)

(assert (=> b!4606560 m!5436025))

(declare-fun m!5436027 () Bool)

(assert (=> b!4606560 m!5436027))

(declare-fun m!5436029 () Bool)

(assert (=> b!4606554 m!5436029))

(declare-fun m!5436031 () Bool)

(assert (=> b!4606568 m!5436031))

(declare-fun m!5436033 () Bool)

(assert (=> b!4606569 m!5436033))

(declare-fun m!5436035 () Bool)

(assert (=> b!4606569 m!5436035))

(declare-fun m!5436037 () Bool)

(assert (=> b!4606569 m!5436037))

(declare-fun m!5436039 () Bool)

(assert (=> b!4606569 m!5436039))

(declare-fun m!5436041 () Bool)

(assert (=> b!4606569 m!5436041))

(declare-fun m!5436043 () Bool)

(assert (=> b!4606569 m!5436043))

(declare-fun m!5436045 () Bool)

(assert (=> b!4606569 m!5436045))

(declare-fun m!5436047 () Bool)

(assert (=> b!4606565 m!5436047))

(declare-fun m!5436049 () Bool)

(assert (=> b!4606566 m!5436049))

(declare-fun m!5436051 () Bool)

(assert (=> b!4606564 m!5436051))

(declare-fun m!5436053 () Bool)

(assert (=> b!4606563 m!5436053))

(declare-fun m!5436055 () Bool)

(assert (=> b!4606563 m!5436055))

(push 1)

(assert (not b!4606563))

(assert (not b!4606553))

(assert (not b!4606569))

(assert (not b!4606554))

(assert (not b!4606556))

(assert (not b!4606559))

(assert (not b!4606566))

(assert (not b!4606561))

(assert (not b!4606568))

(assert (not b!4606567))

(assert (not b!4606565))

(assert (not b!4606557))

(assert (not b!4606558))

(assert tp_is_empty!28721)

(assert (not b!4606562))

(assert tp_is_empty!28723)

(assert (not b!4606560))

(assert (not b!4606564))

(assert (not start!460406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1014500 () Bool)

(declare-fun d!1451177 () Bool)

(assert (= bs!1014500 (and d!1451177 start!460406)))

(declare-fun lambda!187633 () Int)

(assert (=> bs!1014500 (not (= lambda!187633 lambda!187623))))

(assert (=> d!1451177 true))

(assert (=> d!1451177 (= (allKeysSameHashInMap!1468 lm!1477 hashF!1107) (forall!10668 (toList!4729 lm!1477) lambda!187633))))

(declare-fun bs!1014501 () Bool)

(assert (= bs!1014501 d!1451177))

(declare-fun m!5436117 () Bool)

(assert (=> bs!1014501 m!5436117))

(assert (=> b!4606561 d!1451177))

(declare-fun d!1451179 () Bool)

(declare-fun e!2873456 () Bool)

(assert (=> d!1451179 e!2873456))

(declare-fun res!1927925 () Bool)

(assert (=> d!1451179 (=> res!1927925 e!2873456)))

(declare-fun lt!1763882 () Bool)

(assert (=> d!1451179 (= res!1927925 (not lt!1763882))))

(declare-fun lt!1763881 () Bool)

(assert (=> d!1451179 (= lt!1763882 lt!1763881)))

(declare-fun lt!1763883 () Unit!109011)

(declare-fun e!2873455 () Unit!109011)

(assert (=> d!1451179 (= lt!1763883 e!2873455)))

(declare-fun c!789117 () Bool)

(assert (=> d!1451179 (= c!789117 lt!1763881)))

(declare-fun containsKey!2234 (List!51300 (_ BitVec 64)) Bool)

(assert (=> d!1451179 (= lt!1763881 (containsKey!2234 (toList!4729 lt!1763827) hash!344))))

(assert (=> d!1451179 (= (contains!14171 lt!1763827 hash!344) lt!1763882)))

(declare-fun b!4606633 () Bool)

(declare-fun lt!1763880 () Unit!109011)

(assert (=> b!4606633 (= e!2873455 lt!1763880)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1251 (List!51300 (_ BitVec 64)) Unit!109011)

(assert (=> b!4606633 (= lt!1763880 (lemmaContainsKeyImpliesGetValueByKeyDefined!1251 (toList!4729 lt!1763827) hash!344))))

(declare-datatypes ((Option!11429 0))(
  ( (None!11428) (Some!11428 (v!45468 List!51299)) )
))
(declare-fun isDefined!8697 (Option!11429) Bool)

(declare-fun getValueByKey!1347 (List!51300 (_ BitVec 64)) Option!11429)

(assert (=> b!4606633 (isDefined!8697 (getValueByKey!1347 (toList!4729 lt!1763827) hash!344))))

(declare-fun b!4606634 () Bool)

(declare-fun Unit!109019 () Unit!109011)

(assert (=> b!4606634 (= e!2873455 Unit!109019)))

(declare-fun b!4606635 () Bool)

(assert (=> b!4606635 (= e!2873456 (isDefined!8697 (getValueByKey!1347 (toList!4729 lt!1763827) hash!344)))))

(assert (= (and d!1451179 c!789117) b!4606633))

(assert (= (and d!1451179 (not c!789117)) b!4606634))

(assert (= (and d!1451179 (not res!1927925)) b!4606635))

(declare-fun m!5436119 () Bool)

(assert (=> d!1451179 m!5436119))

(declare-fun m!5436121 () Bool)

(assert (=> b!4606633 m!5436121))

(declare-fun m!5436123 () Bool)

(assert (=> b!4606633 m!5436123))

(assert (=> b!4606633 m!5436123))

(declare-fun m!5436125 () Bool)

(assert (=> b!4606633 m!5436125))

(assert (=> b!4606635 m!5436123))

(assert (=> b!4606635 m!5436123))

(assert (=> b!4606635 m!5436125))

(assert (=> b!4606563 d!1451179))

(declare-fun d!1451181 () Bool)

(declare-fun tail!8011 (List!51300) List!51300)

(assert (=> d!1451181 (= (tail!8009 lm!1477) (ListLongMap!3362 (tail!8011 (toList!4729 lm!1477))))))

(declare-fun bs!1014502 () Bool)

(assert (= bs!1014502 d!1451181))

(declare-fun m!5436127 () Bool)

(assert (=> bs!1014502 m!5436127))

(assert (=> b!4606563 d!1451181))

(declare-fun d!1451183 () Bool)

(declare-fun lt!1763886 () Bool)

(declare-fun content!8687 (List!51300) (Set tuple2!51880))

(assert (=> d!1451183 (= lt!1763886 (set.member lt!1763832 (content!8687 (toList!4729 lm!1477))))))

(declare-fun e!2873462 () Bool)

(assert (=> d!1451183 (= lt!1763886 e!2873462)))

(declare-fun res!1927931 () Bool)

(assert (=> d!1451183 (=> (not res!1927931) (not e!2873462))))

(assert (=> d!1451183 (= res!1927931 (is-Cons!51176 (toList!4729 lm!1477)))))

(assert (=> d!1451183 (= (contains!14169 (toList!4729 lm!1477) lt!1763832) lt!1763886)))

(declare-fun b!4606640 () Bool)

(declare-fun e!2873461 () Bool)

(assert (=> b!4606640 (= e!2873462 e!2873461)))

(declare-fun res!1927930 () Bool)

(assert (=> b!4606640 (=> res!1927930 e!2873461)))

(assert (=> b!4606640 (= res!1927930 (= (h!57160 (toList!4729 lm!1477)) lt!1763832))))

(declare-fun b!4606641 () Bool)

(assert (=> b!4606641 (= e!2873461 (contains!14169 (t!358294 (toList!4729 lm!1477)) lt!1763832))))

(assert (= (and d!1451183 res!1927931) b!4606640))

(assert (= (and b!4606640 (not res!1927930)) b!4606641))

(declare-fun m!5436129 () Bool)

(assert (=> d!1451183 m!5436129))

(declare-fun m!5436131 () Bool)

(assert (=> d!1451183 m!5436131))

(assert (=> b!4606641 m!5435997))

(assert (=> b!4606569 d!1451183))

(declare-fun bs!1014503 () Bool)

(declare-fun d!1451185 () Bool)

(assert (= bs!1014503 (and d!1451185 start!460406)))

(declare-fun lambda!187636 () Int)

(assert (=> bs!1014503 (= lambda!187636 lambda!187623)))

(declare-fun bs!1014504 () Bool)

(assert (= bs!1014504 (and d!1451185 d!1451177)))

(assert (=> bs!1014504 (not (= lambda!187636 lambda!187633))))

(assert (=> d!1451185 (contains!14171 lm!1477 (hash!3287 hashF!1107 key!3287))))

(declare-fun lt!1763889 () Unit!109011)

(declare-fun choose!30968 (ListLongMap!3361 K!12543 Hashable!5756) Unit!109011)

(assert (=> d!1451185 (= lt!1763889 (choose!30968 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1451185 (forall!10668 (toList!4729 lm!1477) lambda!187636)))

(assert (=> d!1451185 (= (lemmaInGenMapThenLongMapContainsHash!431 lm!1477 key!3287 hashF!1107) lt!1763889)))

(declare-fun bs!1014505 () Bool)

(assert (= bs!1014505 d!1451185))

(assert (=> bs!1014505 m!5436049))

(assert (=> bs!1014505 m!5436049))

(declare-fun m!5436133 () Bool)

(assert (=> bs!1014505 m!5436133))

(declare-fun m!5436135 () Bool)

(assert (=> bs!1014505 m!5436135))

(declare-fun m!5436137 () Bool)

(assert (=> bs!1014505 m!5436137))

(assert (=> b!4606569 d!1451185))

(declare-fun d!1451189 () Bool)

(declare-fun dynLambda!21427 (Int tuple2!51880) Bool)

(assert (=> d!1451189 (dynLambda!21427 lambda!187623 lt!1763832)))

(declare-fun lt!1763892 () Unit!109011)

(declare-fun choose!30969 (List!51300 Int tuple2!51880) Unit!109011)

(assert (=> d!1451189 (= lt!1763892 (choose!30969 (toList!4729 lm!1477) lambda!187623 lt!1763832))))

(declare-fun e!2873465 () Bool)

(assert (=> d!1451189 e!2873465))

(declare-fun res!1927934 () Bool)

(assert (=> d!1451189 (=> (not res!1927934) (not e!2873465))))

(assert (=> d!1451189 (= res!1927934 (forall!10668 (toList!4729 lm!1477) lambda!187623))))

(assert (=> d!1451189 (= (forallContained!2914 (toList!4729 lm!1477) lambda!187623 lt!1763832) lt!1763892)))

(declare-fun b!4606644 () Bool)

(assert (=> b!4606644 (= e!2873465 (contains!14169 (toList!4729 lm!1477) lt!1763832))))

(assert (= (and d!1451189 res!1927934) b!4606644))

(declare-fun b_lambda!170077 () Bool)

(assert (=> (not b_lambda!170077) (not d!1451189)))

(declare-fun m!5436139 () Bool)

(assert (=> d!1451189 m!5436139))

(declare-fun m!5436141 () Bool)

(assert (=> d!1451189 m!5436141))

(assert (=> d!1451189 m!5436019))

(assert (=> b!4606644 m!5436041))

(assert (=> b!4606569 d!1451189))

(declare-fun d!1451191 () Bool)

(declare-fun get!16928 (Option!11429) List!51299)

(assert (=> d!1451191 (= (apply!12094 lm!1477 hash!344) (get!16928 (getValueByKey!1347 (toList!4729 lm!1477) hash!344)))))

(declare-fun bs!1014506 () Bool)

(assert (= bs!1014506 d!1451191))

(declare-fun m!5436143 () Bool)

(assert (=> bs!1014506 m!5436143))

(assert (=> bs!1014506 m!5436143))

(declare-fun m!5436145 () Bool)

(assert (=> bs!1014506 m!5436145))

(assert (=> b!4606569 d!1451191))

(declare-fun b!4606655 () Bool)

(declare-fun e!2873471 () List!51299)

(assert (=> b!4606655 (= e!2873471 (Cons!51175 (h!57159 lt!1763831) (removePairForKey!982 (t!358293 lt!1763831) key!3287)))))

(declare-fun b!4606654 () Bool)

(declare-fun e!2873470 () List!51299)

(assert (=> b!4606654 (= e!2873470 e!2873471)))

(declare-fun c!789123 () Bool)

(assert (=> b!4606654 (= c!789123 (is-Cons!51175 lt!1763831))))

(declare-fun b!4606653 () Bool)

(assert (=> b!4606653 (= e!2873470 (t!358293 lt!1763831))))

(declare-fun b!4606656 () Bool)

(assert (=> b!4606656 (= e!2873471 Nil!51175)))

(declare-fun d!1451193 () Bool)

(declare-fun lt!1763895 () List!51299)

(assert (=> d!1451193 (not (containsKey!2232 lt!1763895 key!3287))))

(assert (=> d!1451193 (= lt!1763895 e!2873470)))

(declare-fun c!789122 () Bool)

(assert (=> d!1451193 (= c!789122 (and (is-Cons!51175 lt!1763831) (= (_1!29233 (h!57159 lt!1763831)) key!3287)))))

(assert (=> d!1451193 (noDuplicateKeys!1357 lt!1763831)))

(assert (=> d!1451193 (= (removePairForKey!982 lt!1763831 key!3287) lt!1763895)))

(assert (= (and d!1451193 c!789122) b!4606653))

(assert (= (and d!1451193 (not c!789122)) b!4606654))

(assert (= (and b!4606654 c!789123) b!4606655))

(assert (= (and b!4606654 (not c!789123)) b!4606656))

(declare-fun m!5436151 () Bool)

(assert (=> b!4606655 m!5436151))

(declare-fun m!5436153 () Bool)

(assert (=> d!1451193 m!5436153))

(declare-fun m!5436155 () Bool)

(assert (=> d!1451193 m!5436155))

(assert (=> b!4606569 d!1451193))

(declare-fun d!1451197 () Bool)

(declare-fun e!2873473 () Bool)

(assert (=> d!1451197 e!2873473))

(declare-fun res!1927935 () Bool)

(assert (=> d!1451197 (=> res!1927935 e!2873473)))

(declare-fun lt!1763898 () Bool)

(assert (=> d!1451197 (= res!1927935 (not lt!1763898))))

(declare-fun lt!1763897 () Bool)

(assert (=> d!1451197 (= lt!1763898 lt!1763897)))

(declare-fun lt!1763899 () Unit!109011)

(declare-fun e!2873472 () Unit!109011)

(assert (=> d!1451197 (= lt!1763899 e!2873472)))

(declare-fun c!789124 () Bool)

(assert (=> d!1451197 (= c!789124 lt!1763897)))

(assert (=> d!1451197 (= lt!1763897 (containsKey!2234 (toList!4729 lm!1477) lt!1763830))))

(assert (=> d!1451197 (= (contains!14171 lm!1477 lt!1763830) lt!1763898)))

(declare-fun b!4606657 () Bool)

(declare-fun lt!1763896 () Unit!109011)

(assert (=> b!4606657 (= e!2873472 lt!1763896)))

(assert (=> b!4606657 (= lt!1763896 (lemmaContainsKeyImpliesGetValueByKeyDefined!1251 (toList!4729 lm!1477) lt!1763830))))

(assert (=> b!4606657 (isDefined!8697 (getValueByKey!1347 (toList!4729 lm!1477) lt!1763830))))

(declare-fun b!4606658 () Bool)

(declare-fun Unit!109020 () Unit!109011)

(assert (=> b!4606658 (= e!2873472 Unit!109020)))

(declare-fun b!4606659 () Bool)

(assert (=> b!4606659 (= e!2873473 (isDefined!8697 (getValueByKey!1347 (toList!4729 lm!1477) lt!1763830)))))

(assert (= (and d!1451197 c!789124) b!4606657))

(assert (= (and d!1451197 (not c!789124)) b!4606658))

(assert (= (and d!1451197 (not res!1927935)) b!4606659))

(declare-fun m!5436157 () Bool)

(assert (=> d!1451197 m!5436157))

(declare-fun m!5436159 () Bool)

(assert (=> b!4606657 m!5436159))

(declare-fun m!5436161 () Bool)

(assert (=> b!4606657 m!5436161))

(assert (=> b!4606657 m!5436161))

(declare-fun m!5436163 () Bool)

(assert (=> b!4606657 m!5436163))

(assert (=> b!4606659 m!5436161))

(assert (=> b!4606659 m!5436161))

(assert (=> b!4606659 m!5436163))

(assert (=> b!4606569 d!1451197))

(declare-fun d!1451199 () Bool)

(assert (=> d!1451199 (contains!14169 (toList!4729 lm!1477) (tuple2!51881 hash!344 lt!1763831))))

(declare-fun lt!1763902 () Unit!109011)

(declare-fun choose!30970 (List!51300 (_ BitVec 64) List!51299) Unit!109011)

(assert (=> d!1451199 (= lt!1763902 (choose!30970 (toList!4729 lm!1477) hash!344 lt!1763831))))

(declare-fun e!2873476 () Bool)

(assert (=> d!1451199 e!2873476))

(declare-fun res!1927938 () Bool)

(assert (=> d!1451199 (=> (not res!1927938) (not e!2873476))))

(declare-fun isStrictlySorted!558 (List!51300) Bool)

(assert (=> d!1451199 (= res!1927938 (isStrictlySorted!558 (toList!4729 lm!1477)))))

(assert (=> d!1451199 (= (lemmaGetValueByKeyImpliesContainsTuple!867 (toList!4729 lm!1477) hash!344 lt!1763831) lt!1763902)))

(declare-fun b!4606662 () Bool)

(assert (=> b!4606662 (= e!2873476 (= (getValueByKey!1347 (toList!4729 lm!1477) hash!344) (Some!11428 lt!1763831)))))

(assert (= (and d!1451199 res!1927938) b!4606662))

(declare-fun m!5436165 () Bool)

(assert (=> d!1451199 m!5436165))

(declare-fun m!5436167 () Bool)

(assert (=> d!1451199 m!5436167))

(declare-fun m!5436169 () Bool)

(assert (=> d!1451199 m!5436169))

(assert (=> b!4606662 m!5436143))

(assert (=> b!4606569 d!1451199))

(declare-fun d!1451201 () Bool)

(declare-fun res!1927943 () Bool)

(declare-fun e!2873481 () Bool)

(assert (=> d!1451201 (=> res!1927943 e!2873481)))

(assert (=> d!1451201 (= res!1927943 (is-Nil!51176 (toList!4729 lm!1477)))))

(assert (=> d!1451201 (= (forall!10668 (toList!4729 lm!1477) lambda!187623) e!2873481)))

(declare-fun b!4606667 () Bool)

(declare-fun e!2873482 () Bool)

(assert (=> b!4606667 (= e!2873481 e!2873482)))

(declare-fun res!1927944 () Bool)

(assert (=> b!4606667 (=> (not res!1927944) (not e!2873482))))

(assert (=> b!4606667 (= res!1927944 (dynLambda!21427 lambda!187623 (h!57160 (toList!4729 lm!1477))))))

(declare-fun b!4606668 () Bool)

(assert (=> b!4606668 (= e!2873482 (forall!10668 (t!358294 (toList!4729 lm!1477)) lambda!187623))))

(assert (= (and d!1451201 (not res!1927943)) b!4606667))

(assert (= (and b!4606667 res!1927944) b!4606668))

(declare-fun b_lambda!170079 () Bool)

(assert (=> (not b_lambda!170079) (not b!4606667)))

(declare-fun m!5436171 () Bool)

(assert (=> b!4606667 m!5436171))

(declare-fun m!5436173 () Bool)

(assert (=> b!4606668 m!5436173))

(assert (=> start!460406 d!1451201))

(declare-fun d!1451203 () Bool)

(assert (=> d!1451203 (= (inv!66728 lm!1477) (isStrictlySorted!558 (toList!4729 lm!1477)))))

(declare-fun bs!1014508 () Bool)

(assert (= bs!1014508 d!1451203))

(assert (=> bs!1014508 m!5436169))

(assert (=> start!460406 d!1451203))

(declare-fun d!1451205 () Bool)

(declare-fun res!1927953 () Bool)

(declare-fun e!2873491 () Bool)

(assert (=> d!1451205 (=> res!1927953 e!2873491)))

(declare-fun e!2873490 () Bool)

(assert (=> d!1451205 (= res!1927953 e!2873490)))

(declare-fun res!1927952 () Bool)

(assert (=> d!1451205 (=> (not res!1927952) (not e!2873490))))

(assert (=> d!1451205 (= res!1927952 (is-Cons!51176 (t!358294 (toList!4729 lm!1477))))))

(assert (=> d!1451205 (= (containsKeyBiggerList!297 (t!358294 (toList!4729 lm!1477)) key!3287) e!2873491)))

(declare-fun b!4606675 () Bool)

(assert (=> b!4606675 (= e!2873490 (containsKey!2232 (_2!29234 (h!57160 (t!358294 (toList!4729 lm!1477)))) key!3287))))

(declare-fun b!4606676 () Bool)

(declare-fun e!2873489 () Bool)

(assert (=> b!4606676 (= e!2873491 e!2873489)))

(declare-fun res!1927951 () Bool)

(assert (=> b!4606676 (=> (not res!1927951) (not e!2873489))))

(assert (=> b!4606676 (= res!1927951 (is-Cons!51176 (t!358294 (toList!4729 lm!1477))))))

(declare-fun b!4606677 () Bool)

(assert (=> b!4606677 (= e!2873489 (containsKeyBiggerList!297 (t!358294 (t!358294 (toList!4729 lm!1477))) key!3287))))

(assert (= (and d!1451205 res!1927952) b!4606675))

(assert (= (and d!1451205 (not res!1927953)) b!4606676))

(assert (= (and b!4606676 res!1927951) b!4606677))

(declare-fun m!5436175 () Bool)

(assert (=> b!4606675 m!5436175))

(declare-fun m!5436177 () Bool)

(assert (=> b!4606677 m!5436177))

(assert (=> b!4606560 d!1451205))

(declare-fun d!1451207 () Bool)

(declare-fun res!1927956 () Bool)

(declare-fun e!2873494 () Bool)

(assert (=> d!1451207 (=> res!1927956 e!2873494)))

(declare-fun e!2873493 () Bool)

(assert (=> d!1451207 (= res!1927956 e!2873493)))

(declare-fun res!1927955 () Bool)

(assert (=> d!1451207 (=> (not res!1927955) (not e!2873493))))

(assert (=> d!1451207 (= res!1927955 (is-Cons!51176 (toList!4729 lt!1763827)))))

(assert (=> d!1451207 (= (containsKeyBiggerList!297 (toList!4729 lt!1763827) key!3287) e!2873494)))

(declare-fun b!4606678 () Bool)

(assert (=> b!4606678 (= e!2873493 (containsKey!2232 (_2!29234 (h!57160 (toList!4729 lt!1763827))) key!3287))))

(declare-fun b!4606679 () Bool)

(declare-fun e!2873492 () Bool)

(assert (=> b!4606679 (= e!2873494 e!2873492)))

(declare-fun res!1927954 () Bool)

(assert (=> b!4606679 (=> (not res!1927954) (not e!2873492))))

(assert (=> b!4606679 (= res!1927954 (is-Cons!51176 (toList!4729 lt!1763827)))))

(declare-fun b!4606680 () Bool)

(assert (=> b!4606680 (= e!2873492 (containsKeyBiggerList!297 (t!358294 (toList!4729 lt!1763827)) key!3287))))

(assert (= (and d!1451207 res!1927955) b!4606678))

(assert (= (and d!1451207 (not res!1927956)) b!4606679))

(assert (= (and b!4606679 res!1927954) b!4606680))

(declare-fun m!5436179 () Bool)

(assert (=> b!4606678 m!5436179))

(declare-fun m!5436181 () Bool)

(assert (=> b!4606680 m!5436181))

(assert (=> b!4606560 d!1451207))

(declare-fun bs!1014509 () Bool)

(declare-fun d!1451209 () Bool)

(assert (= bs!1014509 (and d!1451209 start!460406)))

(declare-fun lambda!187639 () Int)

(assert (=> bs!1014509 (= lambda!187639 lambda!187623)))

(declare-fun bs!1014510 () Bool)

(assert (= bs!1014510 (and d!1451209 d!1451177)))

(assert (=> bs!1014510 (not (= lambda!187639 lambda!187633))))

(declare-fun bs!1014511 () Bool)

(assert (= bs!1014511 (and d!1451209 d!1451185)))

(assert (=> bs!1014511 (= lambda!187639 lambda!187636)))

(assert (=> d!1451209 (containsKeyBiggerList!297 (toList!4729 lt!1763827) key!3287)))

(declare-fun lt!1763905 () Unit!109011)

(declare-fun choose!30971 (ListLongMap!3361 K!12543 Hashable!5756) Unit!109011)

(assert (=> d!1451209 (= lt!1763905 (choose!30971 lt!1763827 key!3287 hashF!1107))))

(assert (=> d!1451209 (forall!10668 (toList!4729 lt!1763827) lambda!187639)))

(assert (=> d!1451209 (= (lemmaInLongMapThenContainsKeyBiggerList!167 lt!1763827 key!3287 hashF!1107) lt!1763905)))

(declare-fun bs!1014512 () Bool)

(assert (= bs!1014512 d!1451209))

(assert (=> bs!1014512 m!5436025))

(declare-fun m!5436183 () Bool)

(assert (=> bs!1014512 m!5436183))

(declare-fun m!5436185 () Bool)

(assert (=> bs!1014512 m!5436185))

(assert (=> b!4606560 d!1451209))

(declare-fun d!1451211 () Bool)

(declare-fun res!1927961 () Bool)

(declare-fun e!2873499 () Bool)

(assert (=> d!1451211 (=> res!1927961 e!2873499)))

(assert (=> d!1451211 (= res!1927961 (not (is-Cons!51175 newBucket!178)))))

(assert (=> d!1451211 (= (noDuplicateKeys!1357 newBucket!178) e!2873499)))

(declare-fun b!4606685 () Bool)

(declare-fun e!2873500 () Bool)

(assert (=> b!4606685 (= e!2873499 e!2873500)))

(declare-fun res!1927962 () Bool)

(assert (=> b!4606685 (=> (not res!1927962) (not e!2873500))))

(assert (=> b!4606685 (= res!1927962 (not (containsKey!2232 (t!358293 newBucket!178) (_1!29233 (h!57159 newBucket!178)))))))

(declare-fun b!4606686 () Bool)

(assert (=> b!4606686 (= e!2873500 (noDuplicateKeys!1357 (t!358293 newBucket!178)))))

(assert (= (and d!1451211 (not res!1927961)) b!4606685))

(assert (= (and b!4606685 res!1927962) b!4606686))

(declare-fun m!5436187 () Bool)

(assert (=> b!4606685 m!5436187))

(declare-fun m!5436189 () Bool)

(assert (=> b!4606686 m!5436189))

(assert (=> b!4606567 d!1451211))

(declare-fun b!4606717 () Bool)

(declare-fun e!2873519 () Bool)

(declare-datatypes ((List!51303 0))(
  ( (Nil!51179) (Cons!51179 (h!57164 K!12543) (t!358297 List!51303)) )
))
(declare-fun contains!14175 (List!51303 K!12543) Bool)

(declare-fun keys!17942 (ListMap!3991) List!51303)

(assert (=> b!4606717 (= e!2873519 (contains!14175 (keys!17942 (extractMap!1417 (toList!4729 lm!1477))) key!3287))))

(declare-fun b!4606718 () Bool)

(declare-fun e!2873521 () Unit!109011)

(declare-fun e!2873522 () Unit!109011)

(assert (=> b!4606718 (= e!2873521 e!2873522)))

(declare-fun c!789137 () Bool)

(declare-fun call!321326 () Bool)

(assert (=> b!4606718 (= c!789137 call!321326)))

(declare-fun b!4606719 () Bool)

(assert (=> b!4606719 false))

(declare-fun lt!1763942 () Unit!109011)

(declare-fun lt!1763944 () Unit!109011)

(assert (=> b!4606719 (= lt!1763942 lt!1763944)))

(declare-fun containsKey!2235 (List!51299 K!12543) Bool)

(assert (=> b!4606719 (containsKey!2235 (toList!4730 (extractMap!1417 (toList!4729 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!590 (List!51299 K!12543) Unit!109011)

(assert (=> b!4606719 (= lt!1763944 (lemmaInGetKeysListThenContainsKey!590 (toList!4730 (extractMap!1417 (toList!4729 lm!1477))) key!3287))))

(declare-fun Unit!109021 () Unit!109011)

(assert (=> b!4606719 (= e!2873522 Unit!109021)))

(declare-fun b!4606720 () Bool)

(declare-fun e!2873524 () List!51303)

(assert (=> b!4606720 (= e!2873524 (keys!17942 (extractMap!1417 (toList!4729 lm!1477))))))

(declare-fun b!4606721 () Bool)

(declare-fun e!2873523 () Bool)

(assert (=> b!4606721 (= e!2873523 (not (contains!14175 (keys!17942 (extractMap!1417 (toList!4729 lm!1477))) key!3287)))))

(declare-fun bm!321321 () Bool)

(assert (=> bm!321321 (= call!321326 (contains!14175 e!2873524 key!3287))))

(declare-fun c!789139 () Bool)

(declare-fun c!789138 () Bool)

(assert (=> bm!321321 (= c!789139 c!789138)))

(declare-fun b!4606722 () Bool)

(declare-fun lt!1763940 () Unit!109011)

(assert (=> b!4606722 (= e!2873521 lt!1763940)))

(declare-fun lt!1763943 () Unit!109011)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1252 (List!51299 K!12543) Unit!109011)

(assert (=> b!4606722 (= lt!1763943 (lemmaContainsKeyImpliesGetValueByKeyDefined!1252 (toList!4730 (extractMap!1417 (toList!4729 lm!1477))) key!3287))))

(declare-datatypes ((Option!11430 0))(
  ( (None!11429) (Some!11429 (v!45469 V!12789)) )
))
(declare-fun isDefined!8698 (Option!11430) Bool)

(declare-fun getValueByKey!1348 (List!51299 K!12543) Option!11430)

(assert (=> b!4606722 (isDefined!8698 (getValueByKey!1348 (toList!4730 (extractMap!1417 (toList!4729 lm!1477))) key!3287))))

(declare-fun lt!1763941 () Unit!109011)

(assert (=> b!4606722 (= lt!1763941 lt!1763943)))

(declare-fun lemmaInListThenGetKeysListContains!587 (List!51299 K!12543) Unit!109011)

(assert (=> b!4606722 (= lt!1763940 (lemmaInListThenGetKeysListContains!587 (toList!4730 (extractMap!1417 (toList!4729 lm!1477))) key!3287))))

(assert (=> b!4606722 call!321326))

(declare-fun d!1451213 () Bool)

(declare-fun e!2873520 () Bool)

(assert (=> d!1451213 e!2873520))

(declare-fun res!1927969 () Bool)

(assert (=> d!1451213 (=> res!1927969 e!2873520)))

(assert (=> d!1451213 (= res!1927969 e!2873523)))

(declare-fun res!1927971 () Bool)

(assert (=> d!1451213 (=> (not res!1927971) (not e!2873523))))

(declare-fun lt!1763939 () Bool)

(assert (=> d!1451213 (= res!1927971 (not lt!1763939))))

(declare-fun lt!1763945 () Bool)

(assert (=> d!1451213 (= lt!1763939 lt!1763945)))

(declare-fun lt!1763938 () Unit!109011)

(assert (=> d!1451213 (= lt!1763938 e!2873521)))

(assert (=> d!1451213 (= c!789138 lt!1763945)))

(assert (=> d!1451213 (= lt!1763945 (containsKey!2235 (toList!4730 (extractMap!1417 (toList!4729 lm!1477))) key!3287))))

(assert (=> d!1451213 (= (contains!14170 (extractMap!1417 (toList!4729 lm!1477)) key!3287) lt!1763939)))

(declare-fun b!4606723 () Bool)

(assert (=> b!4606723 (= e!2873520 e!2873519)))

(declare-fun res!1927970 () Bool)

(assert (=> b!4606723 (=> (not res!1927970) (not e!2873519))))

(assert (=> b!4606723 (= res!1927970 (isDefined!8698 (getValueByKey!1348 (toList!4730 (extractMap!1417 (toList!4729 lm!1477))) key!3287)))))

(declare-fun b!4606724 () Bool)

(declare-fun getKeysList!591 (List!51299) List!51303)

(assert (=> b!4606724 (= e!2873524 (getKeysList!591 (toList!4730 (extractMap!1417 (toList!4729 lm!1477)))))))

(declare-fun b!4606725 () Bool)

(declare-fun Unit!109022 () Unit!109011)

(assert (=> b!4606725 (= e!2873522 Unit!109022)))

(assert (= (and d!1451213 c!789138) b!4606722))

(assert (= (and d!1451213 (not c!789138)) b!4606718))

(assert (= (and b!4606718 c!789137) b!4606719))

(assert (= (and b!4606718 (not c!789137)) b!4606725))

(assert (= (or b!4606722 b!4606718) bm!321321))

(assert (= (and bm!321321 c!789139) b!4606724))

(assert (= (and bm!321321 (not c!789139)) b!4606720))

(assert (= (and d!1451213 res!1927971) b!4606721))

(assert (= (and d!1451213 (not res!1927969)) b!4606723))

(assert (= (and b!4606723 res!1927970) b!4606717))

(declare-fun m!5436191 () Bool)

(assert (=> bm!321321 m!5436191))

(declare-fun m!5436193 () Bool)

(assert (=> d!1451213 m!5436193))

(declare-fun m!5436195 () Bool)

(assert (=> b!4606723 m!5436195))

(assert (=> b!4606723 m!5436195))

(declare-fun m!5436197 () Bool)

(assert (=> b!4606723 m!5436197))

(assert (=> b!4606719 m!5436193))

(declare-fun m!5436199 () Bool)

(assert (=> b!4606719 m!5436199))

(declare-fun m!5436201 () Bool)

(assert (=> b!4606722 m!5436201))

(assert (=> b!4606722 m!5436195))

(assert (=> b!4606722 m!5436195))

(assert (=> b!4606722 m!5436197))

(declare-fun m!5436203 () Bool)

(assert (=> b!4606722 m!5436203))

(assert (=> b!4606721 m!5436005))

(declare-fun m!5436205 () Bool)

(assert (=> b!4606721 m!5436205))

(assert (=> b!4606721 m!5436205))

(declare-fun m!5436207 () Bool)

(assert (=> b!4606721 m!5436207))

(assert (=> b!4606720 m!5436005))

(assert (=> b!4606720 m!5436205))

(declare-fun m!5436209 () Bool)

(assert (=> b!4606724 m!5436209))

(assert (=> b!4606717 m!5436005))

(assert (=> b!4606717 m!5436205))

(assert (=> b!4606717 m!5436205))

(assert (=> b!4606717 m!5436207))

(assert (=> b!4606556 d!1451213))

(declare-fun bs!1014513 () Bool)

(declare-fun d!1451215 () Bool)

(assert (= bs!1014513 (and d!1451215 start!460406)))

(declare-fun lambda!187642 () Int)

(assert (=> bs!1014513 (= lambda!187642 lambda!187623)))

(declare-fun bs!1014514 () Bool)

(assert (= bs!1014514 (and d!1451215 d!1451177)))

(assert (=> bs!1014514 (not (= lambda!187642 lambda!187633))))

(declare-fun bs!1014515 () Bool)

(assert (= bs!1014515 (and d!1451215 d!1451185)))

(assert (=> bs!1014515 (= lambda!187642 lambda!187636)))

(declare-fun bs!1014516 () Bool)

(assert (= bs!1014516 (and d!1451215 d!1451209)))

(assert (=> bs!1014516 (= lambda!187642 lambda!187639)))

(declare-fun lt!1763956 () ListMap!3991)

(declare-fun invariantList!1142 (List!51299) Bool)

(assert (=> d!1451215 (invariantList!1142 (toList!4730 lt!1763956))))

(declare-fun e!2873539 () ListMap!3991)

(assert (=> d!1451215 (= lt!1763956 e!2873539)))

(declare-fun c!789145 () Bool)

(assert (=> d!1451215 (= c!789145 (is-Cons!51176 (toList!4729 lm!1477)))))

(assert (=> d!1451215 (forall!10668 (toList!4729 lm!1477) lambda!187642)))

(assert (=> d!1451215 (= (extractMap!1417 (toList!4729 lm!1477)) lt!1763956)))

(declare-fun b!4606745 () Bool)

(declare-fun addToMapMapFromBucket!834 (List!51299 ListMap!3991) ListMap!3991)

(assert (=> b!4606745 (= e!2873539 (addToMapMapFromBucket!834 (_2!29234 (h!57160 (toList!4729 lm!1477))) (extractMap!1417 (t!358294 (toList!4729 lm!1477)))))))

(declare-fun b!4606746 () Bool)

(assert (=> b!4606746 (= e!2873539 (ListMap!3992 Nil!51175))))

(assert (= (and d!1451215 c!789145) b!4606745))

(assert (= (and d!1451215 (not c!789145)) b!4606746))

(declare-fun m!5436231 () Bool)

(assert (=> d!1451215 m!5436231))

(declare-fun m!5436233 () Bool)

(assert (=> d!1451215 m!5436233))

(assert (=> b!4606745 m!5436013))

(assert (=> b!4606745 m!5436013))

(declare-fun m!5436235 () Bool)

(assert (=> b!4606745 m!5436235))

(assert (=> b!4606556 d!1451215))

(declare-fun b!4606747 () Bool)

(declare-fun e!2873540 () Bool)

(assert (=> b!4606747 (= e!2873540 (contains!14175 (keys!17942 (extractMap!1417 (t!358294 (toList!4729 lm!1477)))) key!3287))))

(declare-fun b!4606748 () Bool)

(declare-fun e!2873542 () Unit!109011)

(declare-fun e!2873543 () Unit!109011)

(assert (=> b!4606748 (= e!2873542 e!2873543)))

(declare-fun c!789146 () Bool)

(declare-fun call!321328 () Bool)

(assert (=> b!4606748 (= c!789146 call!321328)))

(declare-fun b!4606749 () Bool)

(assert (=> b!4606749 false))

(declare-fun lt!1763961 () Unit!109011)

(declare-fun lt!1763963 () Unit!109011)

(assert (=> b!4606749 (= lt!1763961 lt!1763963)))

(assert (=> b!4606749 (containsKey!2235 (toList!4730 (extractMap!1417 (t!358294 (toList!4729 lm!1477)))) key!3287)))

(assert (=> b!4606749 (= lt!1763963 (lemmaInGetKeysListThenContainsKey!590 (toList!4730 (extractMap!1417 (t!358294 (toList!4729 lm!1477)))) key!3287))))

(declare-fun Unit!109023 () Unit!109011)

(assert (=> b!4606749 (= e!2873543 Unit!109023)))

(declare-fun b!4606750 () Bool)

(declare-fun e!2873545 () List!51303)

(assert (=> b!4606750 (= e!2873545 (keys!17942 (extractMap!1417 (t!358294 (toList!4729 lm!1477)))))))

(declare-fun b!4606751 () Bool)

(declare-fun e!2873544 () Bool)

(assert (=> b!4606751 (= e!2873544 (not (contains!14175 (keys!17942 (extractMap!1417 (t!358294 (toList!4729 lm!1477)))) key!3287)))))

(declare-fun bm!321323 () Bool)

(assert (=> bm!321323 (= call!321328 (contains!14175 e!2873545 key!3287))))

(declare-fun c!789148 () Bool)

(declare-fun c!789147 () Bool)

(assert (=> bm!321323 (= c!789148 c!789147)))

(declare-fun b!4606752 () Bool)

(declare-fun lt!1763959 () Unit!109011)

(assert (=> b!4606752 (= e!2873542 lt!1763959)))

(declare-fun lt!1763962 () Unit!109011)

(assert (=> b!4606752 (= lt!1763962 (lemmaContainsKeyImpliesGetValueByKeyDefined!1252 (toList!4730 (extractMap!1417 (t!358294 (toList!4729 lm!1477)))) key!3287))))

(assert (=> b!4606752 (isDefined!8698 (getValueByKey!1348 (toList!4730 (extractMap!1417 (t!358294 (toList!4729 lm!1477)))) key!3287))))

(declare-fun lt!1763960 () Unit!109011)

(assert (=> b!4606752 (= lt!1763960 lt!1763962)))

(assert (=> b!4606752 (= lt!1763959 (lemmaInListThenGetKeysListContains!587 (toList!4730 (extractMap!1417 (t!358294 (toList!4729 lm!1477)))) key!3287))))

(assert (=> b!4606752 call!321328))

(declare-fun d!1451219 () Bool)

(declare-fun e!2873541 () Bool)

(assert (=> d!1451219 e!2873541))

(declare-fun res!1927981 () Bool)

(assert (=> d!1451219 (=> res!1927981 e!2873541)))

(assert (=> d!1451219 (= res!1927981 e!2873544)))

(declare-fun res!1927983 () Bool)

(assert (=> d!1451219 (=> (not res!1927983) (not e!2873544))))

(declare-fun lt!1763958 () Bool)

(assert (=> d!1451219 (= res!1927983 (not lt!1763958))))

(declare-fun lt!1763964 () Bool)

(assert (=> d!1451219 (= lt!1763958 lt!1763964)))

(declare-fun lt!1763957 () Unit!109011)

(assert (=> d!1451219 (= lt!1763957 e!2873542)))

(assert (=> d!1451219 (= c!789147 lt!1763964)))

(assert (=> d!1451219 (= lt!1763964 (containsKey!2235 (toList!4730 (extractMap!1417 (t!358294 (toList!4729 lm!1477)))) key!3287))))

(assert (=> d!1451219 (= (contains!14170 (extractMap!1417 (t!358294 (toList!4729 lm!1477))) key!3287) lt!1763958)))

(declare-fun b!4606753 () Bool)

(assert (=> b!4606753 (= e!2873541 e!2873540)))

(declare-fun res!1927982 () Bool)

(assert (=> b!4606753 (=> (not res!1927982) (not e!2873540))))

(assert (=> b!4606753 (= res!1927982 (isDefined!8698 (getValueByKey!1348 (toList!4730 (extractMap!1417 (t!358294 (toList!4729 lm!1477)))) key!3287)))))

(declare-fun b!4606754 () Bool)

(assert (=> b!4606754 (= e!2873545 (getKeysList!591 (toList!4730 (extractMap!1417 (t!358294 (toList!4729 lm!1477))))))))

(declare-fun b!4606755 () Bool)

(declare-fun Unit!109024 () Unit!109011)

(assert (=> b!4606755 (= e!2873543 Unit!109024)))

(assert (= (and d!1451219 c!789147) b!4606752))

(assert (= (and d!1451219 (not c!789147)) b!4606748))

(assert (= (and b!4606748 c!789146) b!4606749))

(assert (= (and b!4606748 (not c!789146)) b!4606755))

(assert (= (or b!4606752 b!4606748) bm!321323))

(assert (= (and bm!321323 c!789148) b!4606754))

(assert (= (and bm!321323 (not c!789148)) b!4606750))

(assert (= (and d!1451219 res!1927983) b!4606751))

(assert (= (and d!1451219 (not res!1927981)) b!4606753))

(assert (= (and b!4606753 res!1927982) b!4606747))

(declare-fun m!5436237 () Bool)

(assert (=> bm!321323 m!5436237))

(declare-fun m!5436239 () Bool)

(assert (=> d!1451219 m!5436239))

(declare-fun m!5436241 () Bool)

(assert (=> b!4606753 m!5436241))

(assert (=> b!4606753 m!5436241))

(declare-fun m!5436243 () Bool)

(assert (=> b!4606753 m!5436243))

(assert (=> b!4606749 m!5436239))

(declare-fun m!5436245 () Bool)

(assert (=> b!4606749 m!5436245))

(declare-fun m!5436247 () Bool)

(assert (=> b!4606752 m!5436247))

(assert (=> b!4606752 m!5436241))

(assert (=> b!4606752 m!5436241))

(assert (=> b!4606752 m!5436243))

(declare-fun m!5436249 () Bool)

(assert (=> b!4606752 m!5436249))

(assert (=> b!4606751 m!5436013))

(declare-fun m!5436251 () Bool)

(assert (=> b!4606751 m!5436251))

(assert (=> b!4606751 m!5436251))

(declare-fun m!5436253 () Bool)

(assert (=> b!4606751 m!5436253))

(assert (=> b!4606750 m!5436013))

(assert (=> b!4606750 m!5436251))

(declare-fun m!5436255 () Bool)

(assert (=> b!4606754 m!5436255))

(assert (=> b!4606747 m!5436013))

(assert (=> b!4606747 m!5436251))

(assert (=> b!4606747 m!5436251))

(assert (=> b!4606747 m!5436253))

(assert (=> b!4606558 d!1451219))

(declare-fun bs!1014517 () Bool)

(declare-fun d!1451221 () Bool)

(assert (= bs!1014517 (and d!1451221 d!1451209)))

(declare-fun lambda!187643 () Int)

(assert (=> bs!1014517 (= lambda!187643 lambda!187639)))

(declare-fun bs!1014518 () Bool)

(assert (= bs!1014518 (and d!1451221 d!1451177)))

(assert (=> bs!1014518 (not (= lambda!187643 lambda!187633))))

(declare-fun bs!1014519 () Bool)

(assert (= bs!1014519 (and d!1451221 d!1451185)))

(assert (=> bs!1014519 (= lambda!187643 lambda!187636)))

(declare-fun bs!1014520 () Bool)

(assert (= bs!1014520 (and d!1451221 start!460406)))

(assert (=> bs!1014520 (= lambda!187643 lambda!187623)))

(declare-fun bs!1014521 () Bool)

(assert (= bs!1014521 (and d!1451221 d!1451215)))

(assert (=> bs!1014521 (= lambda!187643 lambda!187642)))

(declare-fun lt!1763965 () ListMap!3991)

(assert (=> d!1451221 (invariantList!1142 (toList!4730 lt!1763965))))

(declare-fun e!2873546 () ListMap!3991)

(assert (=> d!1451221 (= lt!1763965 e!2873546)))

(declare-fun c!789149 () Bool)

(assert (=> d!1451221 (= c!789149 (is-Cons!51176 (t!358294 (toList!4729 lm!1477))))))

(assert (=> d!1451221 (forall!10668 (t!358294 (toList!4729 lm!1477)) lambda!187643)))

(assert (=> d!1451221 (= (extractMap!1417 (t!358294 (toList!4729 lm!1477))) lt!1763965)))

(declare-fun b!4606756 () Bool)

(assert (=> b!4606756 (= e!2873546 (addToMapMapFromBucket!834 (_2!29234 (h!57160 (t!358294 (toList!4729 lm!1477)))) (extractMap!1417 (t!358294 (t!358294 (toList!4729 lm!1477))))))))

(declare-fun b!4606757 () Bool)

(assert (=> b!4606757 (= e!2873546 (ListMap!3992 Nil!51175))))

(assert (= (and d!1451221 c!789149) b!4606756))

(assert (= (and d!1451221 (not c!789149)) b!4606757))

(declare-fun m!5436257 () Bool)

(assert (=> d!1451221 m!5436257))

(declare-fun m!5436259 () Bool)

(assert (=> d!1451221 m!5436259))

(declare-fun m!5436261 () Bool)

(assert (=> b!4606756 m!5436261))

(assert (=> b!4606756 m!5436261))

(declare-fun m!5436263 () Bool)

(assert (=> b!4606756 m!5436263))

(assert (=> b!4606558 d!1451221))

(declare-fun b!4606758 () Bool)

(declare-fun e!2873547 () Bool)

(assert (=> b!4606758 (= e!2873547 (contains!14175 (keys!17942 (extractMap!1417 (toList!4729 lt!1763827))) key!3287))))

(declare-fun b!4606759 () Bool)

(declare-fun e!2873549 () Unit!109011)

(declare-fun e!2873550 () Unit!109011)

(assert (=> b!4606759 (= e!2873549 e!2873550)))

(declare-fun c!789150 () Bool)

(declare-fun call!321329 () Bool)

(assert (=> b!4606759 (= c!789150 call!321329)))

(declare-fun b!4606760 () Bool)

(assert (=> b!4606760 false))

(declare-fun lt!1763970 () Unit!109011)

(declare-fun lt!1763972 () Unit!109011)

(assert (=> b!4606760 (= lt!1763970 lt!1763972)))

(assert (=> b!4606760 (containsKey!2235 (toList!4730 (extractMap!1417 (toList!4729 lt!1763827))) key!3287)))

(assert (=> b!4606760 (= lt!1763972 (lemmaInGetKeysListThenContainsKey!590 (toList!4730 (extractMap!1417 (toList!4729 lt!1763827))) key!3287))))

(declare-fun Unit!109025 () Unit!109011)

(assert (=> b!4606760 (= e!2873550 Unit!109025)))

(declare-fun b!4606761 () Bool)

(declare-fun e!2873552 () List!51303)

(assert (=> b!4606761 (= e!2873552 (keys!17942 (extractMap!1417 (toList!4729 lt!1763827))))))

(declare-fun b!4606762 () Bool)

(declare-fun e!2873551 () Bool)

(assert (=> b!4606762 (= e!2873551 (not (contains!14175 (keys!17942 (extractMap!1417 (toList!4729 lt!1763827))) key!3287)))))

(declare-fun bm!321324 () Bool)

(assert (=> bm!321324 (= call!321329 (contains!14175 e!2873552 key!3287))))

(declare-fun c!789152 () Bool)

(declare-fun c!789151 () Bool)

(assert (=> bm!321324 (= c!789152 c!789151)))

(declare-fun b!4606763 () Bool)

(declare-fun lt!1763968 () Unit!109011)

(assert (=> b!4606763 (= e!2873549 lt!1763968)))

(declare-fun lt!1763971 () Unit!109011)

(assert (=> b!4606763 (= lt!1763971 (lemmaContainsKeyImpliesGetValueByKeyDefined!1252 (toList!4730 (extractMap!1417 (toList!4729 lt!1763827))) key!3287))))

(assert (=> b!4606763 (isDefined!8698 (getValueByKey!1348 (toList!4730 (extractMap!1417 (toList!4729 lt!1763827))) key!3287))))

(declare-fun lt!1763969 () Unit!109011)

(assert (=> b!4606763 (= lt!1763969 lt!1763971)))

(assert (=> b!4606763 (= lt!1763968 (lemmaInListThenGetKeysListContains!587 (toList!4730 (extractMap!1417 (toList!4729 lt!1763827))) key!3287))))

(assert (=> b!4606763 call!321329))

(declare-fun d!1451223 () Bool)

(declare-fun e!2873548 () Bool)

(assert (=> d!1451223 e!2873548))

(declare-fun res!1927984 () Bool)

(assert (=> d!1451223 (=> res!1927984 e!2873548)))

(assert (=> d!1451223 (= res!1927984 e!2873551)))

(declare-fun res!1927986 () Bool)

(assert (=> d!1451223 (=> (not res!1927986) (not e!2873551))))

(declare-fun lt!1763967 () Bool)

(assert (=> d!1451223 (= res!1927986 (not lt!1763967))))

(declare-fun lt!1763973 () Bool)

(assert (=> d!1451223 (= lt!1763967 lt!1763973)))

(declare-fun lt!1763966 () Unit!109011)

(assert (=> d!1451223 (= lt!1763966 e!2873549)))

(assert (=> d!1451223 (= c!789151 lt!1763973)))

(assert (=> d!1451223 (= lt!1763973 (containsKey!2235 (toList!4730 (extractMap!1417 (toList!4729 lt!1763827))) key!3287))))

(assert (=> d!1451223 (= (contains!14170 (extractMap!1417 (toList!4729 lt!1763827)) key!3287) lt!1763967)))

(declare-fun b!4606764 () Bool)

(assert (=> b!4606764 (= e!2873548 e!2873547)))

(declare-fun res!1927985 () Bool)

(assert (=> b!4606764 (=> (not res!1927985) (not e!2873547))))

(assert (=> b!4606764 (= res!1927985 (isDefined!8698 (getValueByKey!1348 (toList!4730 (extractMap!1417 (toList!4729 lt!1763827))) key!3287)))))

(declare-fun b!4606765 () Bool)

(assert (=> b!4606765 (= e!2873552 (getKeysList!591 (toList!4730 (extractMap!1417 (toList!4729 lt!1763827)))))))

(declare-fun b!4606766 () Bool)

(declare-fun Unit!109026 () Unit!109011)

(assert (=> b!4606766 (= e!2873550 Unit!109026)))

(assert (= (and d!1451223 c!789151) b!4606763))

(assert (= (and d!1451223 (not c!789151)) b!4606759))

(assert (= (and b!4606759 c!789150) b!4606760))

(assert (= (and b!4606759 (not c!789150)) b!4606766))

(assert (= (or b!4606763 b!4606759) bm!321324))

(assert (= (and bm!321324 c!789152) b!4606765))

(assert (= (and bm!321324 (not c!789152)) b!4606761))

(assert (= (and d!1451223 res!1927986) b!4606762))

(assert (= (and d!1451223 (not res!1927984)) b!4606764))

(assert (= (and b!4606764 res!1927985) b!4606758))

(declare-fun m!5436265 () Bool)

(assert (=> bm!321324 m!5436265))

(declare-fun m!5436267 () Bool)

(assert (=> d!1451223 m!5436267))

(declare-fun m!5436269 () Bool)

(assert (=> b!4606764 m!5436269))

(assert (=> b!4606764 m!5436269))

(declare-fun m!5436271 () Bool)

(assert (=> b!4606764 m!5436271))

(assert (=> b!4606760 m!5436267))

(declare-fun m!5436273 () Bool)

(assert (=> b!4606760 m!5436273))

(declare-fun m!5436275 () Bool)

(assert (=> b!4606763 m!5436275))

(assert (=> b!4606763 m!5436269))

(assert (=> b!4606763 m!5436269))

(assert (=> b!4606763 m!5436271))

(declare-fun m!5436277 () Bool)

(assert (=> b!4606763 m!5436277))

(assert (=> b!4606762 m!5436009))

(declare-fun m!5436279 () Bool)

(assert (=> b!4606762 m!5436279))

(assert (=> b!4606762 m!5436279))

(declare-fun m!5436281 () Bool)

(assert (=> b!4606762 m!5436281))

(assert (=> b!4606761 m!5436009))

(assert (=> b!4606761 m!5436279))

(declare-fun m!5436283 () Bool)

(assert (=> b!4606765 m!5436283))

(assert (=> b!4606758 m!5436009))

(assert (=> b!4606758 m!5436279))

(assert (=> b!4606758 m!5436279))

(assert (=> b!4606758 m!5436281))

(assert (=> b!4606558 d!1451223))

(declare-fun bs!1014522 () Bool)

(declare-fun d!1451225 () Bool)

(assert (= bs!1014522 (and d!1451225 d!1451209)))

(declare-fun lambda!187646 () Int)

(assert (=> bs!1014522 (= lambda!187646 lambda!187639)))

(declare-fun bs!1014523 () Bool)

(assert (= bs!1014523 (and d!1451225 d!1451177)))

(assert (=> bs!1014523 (not (= lambda!187646 lambda!187633))))

(declare-fun bs!1014524 () Bool)

(assert (= bs!1014524 (and d!1451225 d!1451221)))

(assert (=> bs!1014524 (= lambda!187646 lambda!187643)))

(declare-fun bs!1014525 () Bool)

(assert (= bs!1014525 (and d!1451225 d!1451185)))

(assert (=> bs!1014525 (= lambda!187646 lambda!187636)))

(declare-fun bs!1014526 () Bool)

(assert (= bs!1014526 (and d!1451225 start!460406)))

(assert (=> bs!1014526 (= lambda!187646 lambda!187623)))

(declare-fun bs!1014527 () Bool)

(assert (= bs!1014527 (and d!1451225 d!1451215)))

(assert (=> bs!1014527 (= lambda!187646 lambda!187642)))

(assert (=> d!1451225 (contains!14170 (extractMap!1417 (toList!4729 lt!1763827)) key!3287)))

(declare-fun lt!1763976 () Unit!109011)

(declare-fun choose!30972 (ListLongMap!3361 K!12543 Hashable!5756) Unit!109011)

(assert (=> d!1451225 (= lt!1763976 (choose!30972 lt!1763827 key!3287 hashF!1107))))

(assert (=> d!1451225 (forall!10668 (toList!4729 lt!1763827) lambda!187646)))

(assert (=> d!1451225 (= (lemmaListContainsThenExtractedMapContains!269 lt!1763827 key!3287 hashF!1107) lt!1763976)))

(declare-fun bs!1014528 () Bool)

(assert (= bs!1014528 d!1451225))

(assert (=> bs!1014528 m!5436009))

(assert (=> bs!1014528 m!5436009))

(assert (=> bs!1014528 m!5436011))

(declare-fun m!5436285 () Bool)

(assert (=> bs!1014528 m!5436285))

(declare-fun m!5436287 () Bool)

(assert (=> bs!1014528 m!5436287))

(assert (=> b!4606558 d!1451225))

(declare-fun bs!1014529 () Bool)

(declare-fun d!1451227 () Bool)

(assert (= bs!1014529 (and d!1451227 d!1451209)))

(declare-fun lambda!187647 () Int)

(assert (=> bs!1014529 (= lambda!187647 lambda!187639)))

(declare-fun bs!1014530 () Bool)

(assert (= bs!1014530 (and d!1451227 d!1451177)))

(assert (=> bs!1014530 (not (= lambda!187647 lambda!187633))))

(declare-fun bs!1014531 () Bool)

(assert (= bs!1014531 (and d!1451227 d!1451185)))

(assert (=> bs!1014531 (= lambda!187647 lambda!187636)))

(declare-fun bs!1014532 () Bool)

(assert (= bs!1014532 (and d!1451227 start!460406)))

(assert (=> bs!1014532 (= lambda!187647 lambda!187623)))

(declare-fun bs!1014533 () Bool)

(assert (= bs!1014533 (and d!1451227 d!1451215)))

(assert (=> bs!1014533 (= lambda!187647 lambda!187642)))

(declare-fun bs!1014534 () Bool)

(assert (= bs!1014534 (and d!1451227 d!1451225)))

(assert (=> bs!1014534 (= lambda!187647 lambda!187646)))

(declare-fun bs!1014535 () Bool)

(assert (= bs!1014535 (and d!1451227 d!1451221)))

(assert (=> bs!1014535 (= lambda!187647 lambda!187643)))

(declare-fun lt!1763977 () ListMap!3991)

(assert (=> d!1451227 (invariantList!1142 (toList!4730 lt!1763977))))

(declare-fun e!2873553 () ListMap!3991)

(assert (=> d!1451227 (= lt!1763977 e!2873553)))

(declare-fun c!789153 () Bool)

(assert (=> d!1451227 (= c!789153 (is-Cons!51176 (toList!4729 lt!1763827)))))

(assert (=> d!1451227 (forall!10668 (toList!4729 lt!1763827) lambda!187647)))

(assert (=> d!1451227 (= (extractMap!1417 (toList!4729 lt!1763827)) lt!1763977)))

(declare-fun b!4606767 () Bool)

(assert (=> b!4606767 (= e!2873553 (addToMapMapFromBucket!834 (_2!29234 (h!57160 (toList!4729 lt!1763827))) (extractMap!1417 (t!358294 (toList!4729 lt!1763827)))))))

(declare-fun b!4606768 () Bool)

(assert (=> b!4606768 (= e!2873553 (ListMap!3992 Nil!51175))))

(assert (= (and d!1451227 c!789153) b!4606767))

(assert (= (and d!1451227 (not c!789153)) b!4606768))

(declare-fun m!5436289 () Bool)

(assert (=> d!1451227 m!5436289))

(declare-fun m!5436291 () Bool)

(assert (=> d!1451227 m!5436291))

(declare-fun m!5436293 () Bool)

(assert (=> b!4606767 m!5436293))

(assert (=> b!4606767 m!5436293))

(declare-fun m!5436295 () Bool)

(assert (=> b!4606767 m!5436295))

(assert (=> b!4606558 d!1451227))

(declare-fun bs!1014536 () Bool)

(declare-fun d!1451229 () Bool)

(assert (= bs!1014536 (and d!1451229 d!1451209)))

(declare-fun lambda!187652 () Int)

(assert (=> bs!1014536 (= lambda!187652 lambda!187639)))

(declare-fun bs!1014537 () Bool)

(assert (= bs!1014537 (and d!1451229 d!1451177)))

(assert (=> bs!1014537 (not (= lambda!187652 lambda!187633))))

(declare-fun bs!1014538 () Bool)

(assert (= bs!1014538 (and d!1451229 d!1451185)))

(assert (=> bs!1014538 (= lambda!187652 lambda!187636)))

(declare-fun bs!1014539 () Bool)

(assert (= bs!1014539 (and d!1451229 start!460406)))

(assert (=> bs!1014539 (= lambda!187652 lambda!187623)))

(declare-fun bs!1014540 () Bool)

(assert (= bs!1014540 (and d!1451229 d!1451215)))

(assert (=> bs!1014540 (= lambda!187652 lambda!187642)))

(declare-fun bs!1014541 () Bool)

(assert (= bs!1014541 (and d!1451229 d!1451225)))

(assert (=> bs!1014541 (= lambda!187652 lambda!187646)))

(declare-fun bs!1014542 () Bool)

(assert (= bs!1014542 (and d!1451229 d!1451221)))

(assert (=> bs!1014542 (= lambda!187652 lambda!187643)))

(declare-fun bs!1014543 () Bool)

(assert (= bs!1014543 (and d!1451229 d!1451227)))

(assert (=> bs!1014543 (= lambda!187652 lambda!187647)))

(assert (=> d!1451229 (not (contains!14170 (extractMap!1417 (toList!4729 lm!1477)) key!3287))))

(declare-fun lt!1763982 () Unit!109011)

(declare-fun choose!30973 (ListLongMap!3361 K!12543 Hashable!5756) Unit!109011)

(assert (=> d!1451229 (= lt!1763982 (choose!30973 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1451229 (forall!10668 (toList!4729 lm!1477) lambda!187652)))

(assert (=> d!1451229 (= (lemmaNotInItsHashBucketThenNotInMap!321 lm!1477 key!3287 hashF!1107) lt!1763982)))

(declare-fun bs!1014544 () Bool)

(assert (= bs!1014544 d!1451229))

(assert (=> bs!1014544 m!5436005))

(assert (=> bs!1014544 m!5436005))

(assert (=> bs!1014544 m!5436007))

(declare-fun m!5436297 () Bool)

(assert (=> bs!1014544 m!5436297))

(declare-fun m!5436299 () Bool)

(assert (=> bs!1014544 m!5436299))

(assert (=> b!4606557 d!1451229))

(declare-fun d!1451231 () Bool)

(assert (=> d!1451231 true))

(assert (=> d!1451231 true))

(declare-fun lambda!187656 () Int)

(declare-fun forall!10670 (List!51299 Int) Bool)

(assert (=> d!1451231 (= (allKeysSameHash!1213 newBucket!178 hash!344 hashF!1107) (forall!10670 newBucket!178 lambda!187656))))

(declare-fun bs!1014546 () Bool)

(assert (= bs!1014546 d!1451231))

(declare-fun m!5436303 () Bool)

(assert (=> bs!1014546 m!5436303))

(assert (=> b!4606568 d!1451231))

(declare-fun d!1451233 () Bool)

(declare-fun res!1927991 () Bool)

(declare-fun e!2873561 () Bool)

(assert (=> d!1451233 (=> res!1927991 e!2873561)))

(assert (=> d!1451233 (= res!1927991 (and (is-Cons!51175 lt!1763831) (= (_1!29233 (h!57159 lt!1763831)) key!3287)))))

(assert (=> d!1451233 (= (containsKey!2232 lt!1763831 key!3287) e!2873561)))

(declare-fun b!4606783 () Bool)

(declare-fun e!2873562 () Bool)

(assert (=> b!4606783 (= e!2873561 e!2873562)))

(declare-fun res!1927992 () Bool)

(assert (=> b!4606783 (=> (not res!1927992) (not e!2873562))))

(assert (=> b!4606783 (= res!1927992 (is-Cons!51175 lt!1763831))))

(declare-fun b!4606784 () Bool)

(assert (=> b!4606784 (= e!2873562 (containsKey!2232 (t!358293 lt!1763831) key!3287))))

(assert (= (and d!1451233 (not res!1927991)) b!4606783))

(assert (= (and b!4606783 res!1927992) b!4606784))

(declare-fun m!5436311 () Bool)

(assert (=> b!4606784 m!5436311))

(assert (=> b!4606554 d!1451233))

(declare-fun d!1451237 () Bool)

(declare-fun lt!1763984 () Bool)

(assert (=> d!1451237 (= lt!1763984 (set.member lt!1763832 (content!8687 (t!358294 (toList!4729 lm!1477)))))))

(declare-fun e!2873564 () Bool)

(assert (=> d!1451237 (= lt!1763984 e!2873564)))

(declare-fun res!1927994 () Bool)

(assert (=> d!1451237 (=> (not res!1927994) (not e!2873564))))

(assert (=> d!1451237 (= res!1927994 (is-Cons!51176 (t!358294 (toList!4729 lm!1477))))))

(assert (=> d!1451237 (= (contains!14169 (t!358294 (toList!4729 lm!1477)) lt!1763832) lt!1763984)))

(declare-fun b!4606785 () Bool)

(declare-fun e!2873563 () Bool)

(assert (=> b!4606785 (= e!2873564 e!2873563)))

(declare-fun res!1927993 () Bool)

(assert (=> b!4606785 (=> res!1927993 e!2873563)))

(assert (=> b!4606785 (= res!1927993 (= (h!57160 (t!358294 (toList!4729 lm!1477))) lt!1763832))))

(declare-fun b!4606786 () Bool)

(assert (=> b!4606786 (= e!2873563 (contains!14169 (t!358294 (t!358294 (toList!4729 lm!1477))) lt!1763832))))

(assert (= (and d!1451237 res!1927994) b!4606785))

(assert (= (and b!4606785 (not res!1927993)) b!4606786))

(declare-fun m!5436313 () Bool)

(assert (=> d!1451237 m!5436313))

(declare-fun m!5436315 () Bool)

(assert (=> d!1451237 m!5436315))

(declare-fun m!5436317 () Bool)

(assert (=> b!4606786 m!5436317))

(assert (=> b!4606553 d!1451237))

(declare-fun d!1451239 () Bool)

(assert (=> d!1451239 (= (apply!12094 lt!1763827 hash!344) (get!16928 (getValueByKey!1347 (toList!4729 lt!1763827) hash!344)))))

(declare-fun bs!1014547 () Bool)

(assert (= bs!1014547 d!1451239))

(assert (=> bs!1014547 m!5436123))

(assert (=> bs!1014547 m!5436123))

(declare-fun m!5436319 () Bool)

(assert (=> bs!1014547 m!5436319))

(assert (=> b!4606564 d!1451239))

(declare-fun d!1451241 () Bool)

(declare-fun hash!3289 (Hashable!5756 K!12543) (_ BitVec 64))

(assert (=> d!1451241 (= (hash!3287 hashF!1107 key!3287) (hash!3289 hashF!1107 key!3287))))

(declare-fun bs!1014548 () Bool)

(assert (= bs!1014548 d!1451241))

(declare-fun m!5436321 () Bool)

(assert (=> bs!1014548 m!5436321))

(assert (=> b!4606566 d!1451241))

(declare-fun d!1451243 () Bool)

(declare-fun res!1927995 () Bool)

(declare-fun e!2873565 () Bool)

(assert (=> d!1451243 (=> res!1927995 e!2873565)))

(assert (=> d!1451243 (= res!1927995 (is-Nil!51176 (toList!4729 lt!1763827)))))

(assert (=> d!1451243 (= (forall!10668 (toList!4729 lt!1763827) lambda!187623) e!2873565)))

(declare-fun b!4606787 () Bool)

(declare-fun e!2873566 () Bool)

(assert (=> b!4606787 (= e!2873565 e!2873566)))

(declare-fun res!1927996 () Bool)

(assert (=> b!4606787 (=> (not res!1927996) (not e!2873566))))

(assert (=> b!4606787 (= res!1927996 (dynLambda!21427 lambda!187623 (h!57160 (toList!4729 lt!1763827))))))

(declare-fun b!4606788 () Bool)

(assert (=> b!4606788 (= e!2873566 (forall!10668 (t!358294 (toList!4729 lt!1763827)) lambda!187623))))

(assert (= (and d!1451243 (not res!1927995)) b!4606787))

(assert (= (and b!4606787 res!1927996) b!4606788))

(declare-fun b_lambda!170081 () Bool)

(assert (=> (not b_lambda!170081) (not b!4606787)))

(declare-fun m!5436323 () Bool)

(assert (=> b!4606787 m!5436323))

(declare-fun m!5436325 () Bool)

(assert (=> b!4606788 m!5436325))

(assert (=> b!4606565 d!1451243))

(declare-fun e!2873569 () Bool)

(declare-fun tp!1340888 () Bool)

(declare-fun b!4606793 () Bool)

(assert (=> b!4606793 (= e!2873569 (and tp_is_empty!28721 tp_is_empty!28723 tp!1340888))))

(assert (=> b!4606562 (= tp!1340879 e!2873569)))

(assert (= (and b!4606562 (is-Cons!51175 (t!358293 newBucket!178))) b!4606793))

(declare-fun b!4606798 () Bool)

(declare-fun e!2873572 () Bool)

(declare-fun tp!1340893 () Bool)

(declare-fun tp!1340894 () Bool)

(assert (=> b!4606798 (= e!2873572 (and tp!1340893 tp!1340894))))

(assert (=> b!4606559 (= tp!1340878 e!2873572)))

(assert (= (and b!4606559 (is-Cons!51176 (toList!4729 lm!1477))) b!4606798))

(declare-fun b_lambda!170083 () Bool)

(assert (= b_lambda!170081 (or start!460406 b_lambda!170083)))

(declare-fun bs!1014549 () Bool)

(declare-fun d!1451245 () Bool)

(assert (= bs!1014549 (and d!1451245 start!460406)))

(assert (=> bs!1014549 (= (dynLambda!21427 lambda!187623 (h!57160 (toList!4729 lt!1763827))) (noDuplicateKeys!1357 (_2!29234 (h!57160 (toList!4729 lt!1763827)))))))

(declare-fun m!5436327 () Bool)

(assert (=> bs!1014549 m!5436327))

(assert (=> b!4606787 d!1451245))

(declare-fun b_lambda!170085 () Bool)

(assert (= b_lambda!170077 (or start!460406 b_lambda!170085)))

(declare-fun bs!1014550 () Bool)

(declare-fun d!1451247 () Bool)

(assert (= bs!1014550 (and d!1451247 start!460406)))

(assert (=> bs!1014550 (= (dynLambda!21427 lambda!187623 lt!1763832) (noDuplicateKeys!1357 (_2!29234 lt!1763832)))))

(declare-fun m!5436329 () Bool)

(assert (=> bs!1014550 m!5436329))

(assert (=> d!1451189 d!1451247))

(declare-fun b_lambda!170087 () Bool)

(assert (= b_lambda!170079 (or start!460406 b_lambda!170087)))

(declare-fun bs!1014551 () Bool)

(declare-fun d!1451249 () Bool)

(assert (= bs!1014551 (and d!1451249 start!460406)))

(assert (=> bs!1014551 (= (dynLambda!21427 lambda!187623 (h!57160 (toList!4729 lm!1477))) (noDuplicateKeys!1357 (_2!29234 (h!57160 (toList!4729 lm!1477)))))))

(declare-fun m!5436331 () Bool)

(assert (=> bs!1014551 m!5436331))

(assert (=> b!4606667 d!1451249))

(push 1)

(assert (not b!4606675))

(assert (not b!4606798))

(assert (not b!4606753))

(assert (not bm!321323))

(assert (not b!4606722))

(assert (not b!4606765))

(assert (not b!4606659))

(assert (not b_lambda!170087))

(assert (not d!1451223))

(assert (not bm!321324))

(assert (not b!4606758))

(assert (not b!4606633))

(assert (not b!4606641))

(assert (not b!4606745))

(assert (not d!1451179))

(assert (not d!1451177))

(assert (not b!4606719))

(assert (not b!4606680))

(assert (not b!4606678))

(assert (not d!1451237))

(assert (not d!1451241))

(assert (not d!1451199))

(assert tp_is_empty!28721)

(assert tp_is_empty!28723)

(assert (not b!4606686))

(assert (not d!1451189))

(assert (not d!1451185))

(assert (not b!4606761))

(assert (not b!4606668))

(assert (not b!4606750))

(assert (not b!4606749))

(assert (not b!4606764))

(assert (not b!4606721))

(assert (not d!1451221))

(assert (not d!1451225))

(assert (not b!4606786))

(assert (not b!4606752))

(assert (not bm!321321))

(assert (not b!4606767))

(assert (not d!1451231))

(assert (not b!4606655))

(assert (not b!4606677))

(assert (not b!4606762))

(assert (not b!4606747))

(assert (not b!4606685))

(assert (not b_lambda!170083))

(assert (not d!1451209))

(assert (not b_lambda!170085))

(assert (not bs!1014550))

(assert (not b!4606657))

(assert (not d!1451191))

(assert (not b!4606723))

(assert (not b!4606662))

(assert (not bs!1014549))

(assert (not b!4606754))

(assert (not d!1451219))

(assert (not b!4606763))

(assert (not b!4606784))

(assert (not b!4606756))

(assert (not b!4606751))

(assert (not b!4606717))

(assert (not d!1451203))

(assert (not d!1451193))

(assert (not b!4606635))

(assert (not d!1451239))

(assert (not d!1451197))

(assert (not d!1451213))

(assert (not d!1451227))

(assert (not b!4606760))

(assert (not b!4606720))

(assert (not bs!1014551))

(assert (not d!1451229))

(assert (not d!1451181))

(assert (not b!4606788))

(assert (not b!4606644))

(assert (not d!1451183))

(assert (not d!1451215))

(assert (not b!4606793))

(assert (not b!4606724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

