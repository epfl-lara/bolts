; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!495638 () Bool)

(assert start!495638)

(declare-fun b!4801528 () Bool)

(declare-datatypes ((Unit!140771 0))(
  ( (Unit!140772) )
))
(declare-fun e!2998432 () Unit!140771)

(declare-fun lt!1956876 () Unit!140771)

(assert (=> b!4801528 (= e!2998432 lt!1956876)))

(declare-datatypes ((Hashable!6964 0))(
  ( (HashableExt!6963 (__x!32987 Int)) )
))
(declare-fun hashF!1559 () Hashable!6964)

(declare-datatypes ((K!15899 0))(
  ( (K!15900 (val!21025 Int)) )
))
(declare-datatypes ((V!16145 0))(
  ( (V!16146 (val!21026 Int)) )
))
(declare-datatypes ((tuple2!57024 0))(
  ( (tuple2!57025 (_1!31806 K!15899) (_2!31806 V!16145)) )
))
(declare-datatypes ((List!54452 0))(
  ( (Nil!54328) (Cons!54328 (h!60760 tuple2!57024) (t!361902 List!54452)) )
))
(declare-datatypes ((tuple2!57026 0))(
  ( (tuple2!57027 (_1!31807 (_ BitVec 64)) (_2!31807 List!54452)) )
))
(declare-datatypes ((List!54453 0))(
  ( (Nil!54329) (Cons!54329 (h!60761 tuple2!57026) (t!361903 List!54453)) )
))
(declare-datatypes ((ListLongMap!5429 0))(
  ( (ListLongMap!5430 (toList!7007 List!54453)) )
))
(declare-fun lt!1956879 () ListLongMap!5429)

(declare-fun key!5896 () K!15899)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!62 (ListLongMap!5429 K!15899 Hashable!6964) Unit!140771)

(assert (=> b!4801528 (= lt!1956876 (lemmaHashNotInLongMapThenNotInGenerated!62 lt!1956879 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6479 0))(
  ( (ListMap!6480 (toList!7008 List!54452)) )
))
(declare-fun contains!17982 (ListMap!6479 K!15899) Bool)

(declare-fun extractMap!2491 (List!54453) ListMap!6479)

(assert (=> b!4801528 (not (contains!17982 (extractMap!2491 (toList!7007 lt!1956879)) key!5896))))

(declare-fun b!4801529 () Bool)

(declare-fun e!2998431 () Bool)

(declare-fun e!2998434 () Bool)

(assert (=> b!4801529 (= e!2998431 (not e!2998434))))

(declare-fun res!2042230 () Bool)

(assert (=> b!4801529 (=> res!2042230 e!2998434)))

(declare-fun lm!2473 () ListLongMap!5429)

(declare-fun value!3111 () V!16145)

(declare-fun getValue!152 (List!54453 K!15899) V!16145)

(assert (=> b!4801529 (= res!2042230 (not (= (getValue!152 (toList!7007 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!606 (List!54453 K!15899) Bool)

(assert (=> b!4801529 (containsKeyBiggerList!606 (toList!7007 lm!2473) key!5896)))

(declare-fun lt!1956881 () Unit!140771)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!346 (ListLongMap!5429 K!15899 Hashable!6964) Unit!140771)

(assert (=> b!4801529 (= lt!1956881 (lemmaInLongMapThenContainsKeyBiggerList!346 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2998430 () Bool)

(assert (=> b!4801529 e!2998430))

(declare-fun res!2042234 () Bool)

(assert (=> b!4801529 (=> (not res!2042234) (not e!2998430))))

(declare-fun lt!1956878 () (_ BitVec 64))

(declare-fun contains!17983 (ListLongMap!5429 (_ BitVec 64)) Bool)

(assert (=> b!4801529 (= res!2042234 (contains!17983 lm!2473 lt!1956878))))

(declare-fun hash!5022 (Hashable!6964 K!15899) (_ BitVec 64))

(assert (=> b!4801529 (= lt!1956878 (hash!5022 hashF!1559 key!5896))))

(declare-fun lt!1956883 () Unit!140771)

(declare-fun lemmaInGenericMapThenInLongMap!368 (ListLongMap!5429 K!15899 Hashable!6964) Unit!140771)

(assert (=> b!4801529 (= lt!1956883 (lemmaInGenericMapThenInLongMap!368 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4801530 () Bool)

(declare-fun res!2042232 () Bool)

(assert (=> b!4801530 (=> res!2042232 e!2998434)))

(get-info :version)

(assert (=> b!4801530 (= res!2042232 (not ((_ is Cons!54329) (toList!7007 lm!2473))))))

(declare-fun res!2042233 () Bool)

(assert (=> start!495638 (=> (not res!2042233) (not e!2998431))))

(declare-fun lambda!232531 () Int)

(declare-fun forall!12335 (List!54453 Int) Bool)

(assert (=> start!495638 (= res!2042233 (forall!12335 (toList!7007 lm!2473) lambda!232531))))

(assert (=> start!495638 e!2998431))

(declare-fun e!2998429 () Bool)

(declare-fun inv!69925 (ListLongMap!5429) Bool)

(assert (=> start!495638 (and (inv!69925 lm!2473) e!2998429)))

(assert (=> start!495638 true))

(declare-fun tp_is_empty!33717 () Bool)

(assert (=> start!495638 tp_is_empty!33717))

(declare-fun tp_is_empty!33719 () Bool)

(assert (=> start!495638 tp_is_empty!33719))

(declare-fun b!4801531 () Bool)

(declare-fun Unit!140773 () Unit!140771)

(assert (=> b!4801531 (= e!2998432 Unit!140773)))

(declare-fun b!4801532 () Bool)

(declare-datatypes ((Option!13188 0))(
  ( (None!13187) (Some!13187 (v!48516 tuple2!57024)) )
))
(declare-fun isDefined!10329 (Option!13188) Bool)

(declare-fun getPair!936 (List!54452 K!15899) Option!13188)

(declare-fun apply!13037 (ListLongMap!5429 (_ BitVec 64)) List!54452)

(assert (=> b!4801532 (= e!2998430 (isDefined!10329 (getPair!936 (apply!13037 lm!2473 lt!1956878) key!5896)))))

(declare-fun b!4801533 () Bool)

(declare-fun res!2042227 () Bool)

(assert (=> b!4801533 (=> (not res!2042227) (not e!2998431))))

(assert (=> b!4801533 (= res!2042227 (contains!17982 (extractMap!2491 (toList!7007 lm!2473)) key!5896))))

(declare-fun b!4801534 () Bool)

(declare-fun e!2998433 () Bool)

(assert (=> b!4801534 (= e!2998434 e!2998433)))

(declare-fun res!2042231 () Bool)

(assert (=> b!4801534 (=> res!2042231 e!2998433)))

(assert (=> b!4801534 (= res!2042231 (not (forall!12335 (toList!7007 lt!1956879) lambda!232531)))))

(assert (=> b!4801534 (contains!17982 (extractMap!2491 (toList!7007 lt!1956879)) key!5896)))

(declare-fun lt!1956880 () Unit!140771)

(declare-fun lemmaListContainsThenExtractedMapContains!714 (ListLongMap!5429 K!15899 Hashable!6964) Unit!140771)

(assert (=> b!4801534 (= lt!1956880 (lemmaListContainsThenExtractedMapContains!714 lt!1956879 key!5896 hashF!1559))))

(declare-fun lt!1956877 () Unit!140771)

(assert (=> b!4801534 (= lt!1956877 e!2998432)))

(declare-fun c!818417 () Bool)

(assert (=> b!4801534 (= c!818417 (not (contains!17983 lt!1956879 lt!1956878)))))

(declare-fun tail!9330 (ListLongMap!5429) ListLongMap!5429)

(assert (=> b!4801534 (= lt!1956879 (tail!9330 lm!2473))))

(declare-fun b!4801535 () Bool)

(declare-fun tp!1358402 () Bool)

(assert (=> b!4801535 (= e!2998429 tp!1358402)))

(declare-fun b!4801536 () Bool)

(declare-fun res!2042229 () Bool)

(assert (=> b!4801536 (=> (not res!2042229) (not e!2998431))))

(declare-fun allKeysSameHashInMap!2369 (ListLongMap!5429 Hashable!6964) Bool)

(assert (=> b!4801536 (= res!2042229 (allKeysSameHashInMap!2369 lm!2473 hashF!1559))))

(declare-fun b!4801537 () Bool)

(declare-fun res!2042228 () Bool)

(assert (=> b!4801537 (=> res!2042228 e!2998434)))

(declare-fun containsKey!4038 (List!54452 K!15899) Bool)

(assert (=> b!4801537 (= res!2042228 (containsKey!4038 (_2!31807 (h!60761 (toList!7007 lm!2473))) key!5896))))

(declare-fun b!4801538 () Bool)

(assert (=> b!4801538 (= e!2998433 true)))

(declare-fun lt!1956882 () Bool)

(assert (=> b!4801538 (= lt!1956882 (allKeysSameHashInMap!2369 lt!1956879 hashF!1559))))

(assert (= (and start!495638 res!2042233) b!4801536))

(assert (= (and b!4801536 res!2042229) b!4801533))

(assert (= (and b!4801533 res!2042227) b!4801529))

(assert (= (and b!4801529 res!2042234) b!4801532))

(assert (= (and b!4801529 (not res!2042230)) b!4801530))

(assert (= (and b!4801530 (not res!2042232)) b!4801537))

(assert (= (and b!4801537 (not res!2042228)) b!4801534))

(assert (= (and b!4801534 c!818417) b!4801528))

(assert (= (and b!4801534 (not c!818417)) b!4801531))

(assert (= (and b!4801534 (not res!2042231)) b!4801538))

(assert (= start!495638 b!4801535))

(declare-fun m!5785608 () Bool)

(assert (=> b!4801532 m!5785608))

(assert (=> b!4801532 m!5785608))

(declare-fun m!5785610 () Bool)

(assert (=> b!4801532 m!5785610))

(assert (=> b!4801532 m!5785610))

(declare-fun m!5785612 () Bool)

(assert (=> b!4801532 m!5785612))

(declare-fun m!5785614 () Bool)

(assert (=> b!4801538 m!5785614))

(declare-fun m!5785616 () Bool)

(assert (=> b!4801533 m!5785616))

(assert (=> b!4801533 m!5785616))

(declare-fun m!5785618 () Bool)

(assert (=> b!4801533 m!5785618))

(declare-fun m!5785620 () Bool)

(assert (=> b!4801534 m!5785620))

(declare-fun m!5785622 () Bool)

(assert (=> b!4801534 m!5785622))

(declare-fun m!5785624 () Bool)

(assert (=> b!4801534 m!5785624))

(declare-fun m!5785626 () Bool)

(assert (=> b!4801534 m!5785626))

(declare-fun m!5785628 () Bool)

(assert (=> b!4801534 m!5785628))

(declare-fun m!5785630 () Bool)

(assert (=> b!4801534 m!5785630))

(assert (=> b!4801534 m!5785620))

(declare-fun m!5785632 () Bool)

(assert (=> b!4801536 m!5785632))

(declare-fun m!5785634 () Bool)

(assert (=> b!4801529 m!5785634))

(declare-fun m!5785636 () Bool)

(assert (=> b!4801529 m!5785636))

(declare-fun m!5785638 () Bool)

(assert (=> b!4801529 m!5785638))

(declare-fun m!5785640 () Bool)

(assert (=> b!4801529 m!5785640))

(declare-fun m!5785642 () Bool)

(assert (=> b!4801529 m!5785642))

(declare-fun m!5785644 () Bool)

(assert (=> b!4801529 m!5785644))

(declare-fun m!5785646 () Bool)

(assert (=> b!4801528 m!5785646))

(assert (=> b!4801528 m!5785620))

(assert (=> b!4801528 m!5785620))

(assert (=> b!4801528 m!5785622))

(declare-fun m!5785648 () Bool)

(assert (=> b!4801537 m!5785648))

(declare-fun m!5785650 () Bool)

(assert (=> start!495638 m!5785650))

(declare-fun m!5785652 () Bool)

(assert (=> start!495638 m!5785652))

(check-sat (not b!4801532) (not b!4801535) tp_is_empty!33717 (not start!495638) tp_is_empty!33719 (not b!4801536) (not b!4801537) (not b!4801534) (not b!4801538) (not b!4801528) (not b!4801529) (not b!4801533))
(check-sat)
