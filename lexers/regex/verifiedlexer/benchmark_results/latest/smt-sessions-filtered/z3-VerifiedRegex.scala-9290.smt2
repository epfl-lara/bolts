; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!493214 () Bool)

(assert start!493214)

(declare-datatypes ((K!15739 0))(
  ( (K!15740 (val!20897 Int)) )
))
(declare-datatypes ((V!15985 0))(
  ( (V!15986 (val!20898 Int)) )
))
(declare-datatypes ((tuple2!56768 0))(
  ( (tuple2!56769 (_1!31678 K!15739) (_2!31678 V!15985)) )
))
(declare-datatypes ((List!54293 0))(
  ( (Nil!54169) (Cons!54169 (h!60593 tuple2!56768) (t!361743 List!54293)) )
))
(declare-datatypes ((tuple2!56770 0))(
  ( (tuple2!56771 (_1!31679 (_ BitVec 64)) (_2!31679 List!54293)) )
))
(declare-datatypes ((List!54294 0))(
  ( (Nil!54170) (Cons!54170 (h!60594 tuple2!56770) (t!361744 List!54294)) )
))
(declare-datatypes ((ListLongMap!5301 0))(
  ( (ListLongMap!5302 (toList!6879 List!54294)) )
))
(declare-fun lt!1950345 () ListLongMap!5301)

(declare-fun e!2991426 () Bool)

(declare-fun lt!1950346 () (_ BitVec 64))

(declare-fun key!5896 () K!15739)

(declare-fun b!4791035 () Bool)

(declare-datatypes ((Option!13063 0))(
  ( (None!13062) (Some!13062 (v!48341 tuple2!56768)) )
))
(declare-fun isDefined!10205 (Option!13063) Bool)

(declare-fun getPair!872 (List!54293 K!15739) Option!13063)

(declare-fun apply!12961 (ListLongMap!5301 (_ BitVec 64)) List!54293)

(assert (=> b!4791035 (= e!2991426 (isDefined!10205 (getPair!872 (apply!12961 lt!1950345 lt!1950346) key!5896)))))

(declare-fun b!4791036 () Bool)

(declare-datatypes ((Unit!139853 0))(
  ( (Unit!139854) )
))
(declare-fun e!2991424 () Unit!139853)

(declare-fun Unit!139855 () Unit!139853)

(assert (=> b!4791036 (= e!2991424 Unit!139855)))

(declare-fun res!2036102 () Bool)

(declare-fun e!2991425 () Bool)

(assert (=> start!493214 (=> (not res!2036102) (not e!2991425))))

(declare-fun lm!2473 () ListLongMap!5301)

(declare-fun lambda!230309 () Int)

(declare-fun forall!12225 (List!54294 Int) Bool)

(assert (=> start!493214 (= res!2036102 (forall!12225 (toList!6879 lm!2473) lambda!230309))))

(assert (=> start!493214 e!2991425))

(declare-fun e!2991427 () Bool)

(declare-fun inv!69765 (ListLongMap!5301) Bool)

(assert (=> start!493214 (and (inv!69765 lm!2473) e!2991427)))

(assert (=> start!493214 true))

(declare-fun tp_is_empty!33481 () Bool)

(assert (=> start!493214 tp_is_empty!33481))

(declare-fun tp_is_empty!33483 () Bool)

(assert (=> start!493214 tp_is_empty!33483))

(declare-fun b!4791037 () Bool)

(declare-fun lt!1950341 () Unit!139853)

(assert (=> b!4791037 (= e!2991424 lt!1950341)))

(declare-datatypes ((Hashable!6900 0))(
  ( (HashableExt!6899 (__x!32923 Int)) )
))
(declare-fun hashF!1559 () Hashable!6900)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!26 (ListLongMap!5301 K!15739 Hashable!6900) Unit!139853)

(assert (=> b!4791037 (= lt!1950341 (lemmaHashNotInLongMapThenNotInGenerated!26 lt!1950345 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6351 0))(
  ( (ListMap!6352 (toList!6880 List!54293)) )
))
(declare-fun contains!17774 (ListMap!6351 K!15739) Bool)

(declare-fun extractMap!2427 (List!54294) ListMap!6351)

(assert (=> b!4791037 (not (contains!17774 (extractMap!2427 (toList!6879 lt!1950345)) key!5896))))

(declare-fun b!4791038 () Bool)

(declare-fun res!2036108 () Bool)

(assert (=> b!4791038 (=> (not res!2036108) (not e!2991425))))

(assert (=> b!4791038 (= res!2036108 (contains!17774 (extractMap!2427 (toList!6879 lm!2473)) key!5896))))

(declare-fun b!4791039 () Bool)

(declare-fun e!2991423 () Bool)

(assert (=> b!4791039 (= e!2991423 true)))

(declare-fun b!4791040 () Bool)

(declare-fun e!2991428 () Bool)

(assert (=> b!4791040 (= e!2991428 (isDefined!10205 (getPair!872 (apply!12961 lm!2473 lt!1950346) key!5896)))))

(declare-fun b!4791041 () Bool)

(declare-fun e!2991430 () Bool)

(assert (=> b!4791041 (= e!2991430 e!2991423)))

(declare-fun res!2036109 () Bool)

(assert (=> b!4791041 (=> res!2036109 e!2991423)))

(declare-fun value!3111 () V!15985)

(declare-fun getValue!96 (List!54294 K!15739) V!15985)

(assert (=> b!4791041 (= res!2036109 (not (= (getValue!96 (toList!6879 lt!1950345) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!550 (List!54294 K!15739) Bool)

(assert (=> b!4791041 (containsKeyBiggerList!550 (toList!6879 lt!1950345) key!5896)))

(declare-fun lt!1950343 () Unit!139853)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!290 (ListLongMap!5301 K!15739 Hashable!6900) Unit!139853)

(assert (=> b!4791041 (= lt!1950343 (lemmaInLongMapThenContainsKeyBiggerList!290 lt!1950345 key!5896 hashF!1559))))

(assert (=> b!4791041 e!2991426))

(declare-fun res!2036105 () Bool)

(assert (=> b!4791041 (=> (not res!2036105) (not e!2991426))))

(declare-fun lt!1950342 () Bool)

(assert (=> b!4791041 (= res!2036105 (not lt!1950342))))

(declare-fun lt!1950340 () Unit!139853)

(declare-fun lemmaInGenericMapThenInLongMap!304 (ListLongMap!5301 K!15739 Hashable!6900) Unit!139853)

(assert (=> b!4791041 (= lt!1950340 (lemmaInGenericMapThenInLongMap!304 lt!1950345 key!5896 hashF!1559))))

(declare-fun b!4791042 () Bool)

(declare-fun res!2036106 () Bool)

(assert (=> b!4791042 (=> (not res!2036106) (not e!2991425))))

(declare-fun allKeysSameHashInMap!2305 (ListLongMap!5301 Hashable!6900) Bool)

(assert (=> b!4791042 (= res!2036106 (allKeysSameHashInMap!2305 lm!2473 hashF!1559))))

(declare-fun b!4791043 () Bool)

(declare-fun tp!1357918 () Bool)

(assert (=> b!4791043 (= e!2991427 tp!1357918)))

(declare-fun b!4791044 () Bool)

(declare-fun e!2991429 () Bool)

(assert (=> b!4791044 (= e!2991425 (not e!2991429))))

(declare-fun res!2036110 () Bool)

(assert (=> b!4791044 (=> res!2036110 e!2991429)))

(assert (=> b!4791044 (= res!2036110 (not (= (getValue!96 (toList!6879 lm!2473) key!5896) value!3111)))))

(assert (=> b!4791044 (containsKeyBiggerList!550 (toList!6879 lm!2473) key!5896)))

(declare-fun lt!1950349 () Unit!139853)

(assert (=> b!4791044 (= lt!1950349 (lemmaInLongMapThenContainsKeyBiggerList!290 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4791044 e!2991428))

(declare-fun res!2036101 () Bool)

(assert (=> b!4791044 (=> (not res!2036101) (not e!2991428))))

(declare-fun contains!17775 (ListLongMap!5301 (_ BitVec 64)) Bool)

(assert (=> b!4791044 (= res!2036101 (contains!17775 lm!2473 lt!1950346))))

(declare-fun hash!4930 (Hashable!6900 K!15739) (_ BitVec 64))

(assert (=> b!4791044 (= lt!1950346 (hash!4930 hashF!1559 key!5896))))

(declare-fun lt!1950347 () Unit!139853)

(assert (=> b!4791044 (= lt!1950347 (lemmaInGenericMapThenInLongMap!304 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791045 () Bool)

(assert (=> b!4791045 (= e!2991429 e!2991430)))

(declare-fun res!2036100 () Bool)

(assert (=> b!4791045 (=> res!2036100 e!2991430)))

(assert (=> b!4791045 (= res!2036100 (not (forall!12225 (toList!6879 lt!1950345) lambda!230309)))))

(assert (=> b!4791045 (contains!17774 (extractMap!2427 (toList!6879 lt!1950345)) key!5896)))

(declare-fun lt!1950348 () Unit!139853)

(declare-fun lemmaListContainsThenExtractedMapContains!700 (ListLongMap!5301 K!15739 Hashable!6900) Unit!139853)

(assert (=> b!4791045 (= lt!1950348 (lemmaListContainsThenExtractedMapContains!700 lt!1950345 key!5896 hashF!1559))))

(declare-fun lt!1950344 () Unit!139853)

(assert (=> b!4791045 (= lt!1950344 e!2991424)))

(declare-fun c!816603 () Bool)

(assert (=> b!4791045 (= c!816603 lt!1950342)))

(assert (=> b!4791045 (= lt!1950342 (not (contains!17775 lt!1950345 lt!1950346)))))

(declare-fun tail!9253 (ListLongMap!5301) ListLongMap!5301)

(assert (=> b!4791045 (= lt!1950345 (tail!9253 lm!2473))))

(declare-fun b!4791046 () Bool)

(declare-fun res!2036107 () Bool)

(assert (=> b!4791046 (=> res!2036107 e!2991429)))

(get-info :version)

(assert (=> b!4791046 (= res!2036107 (not ((_ is Cons!54170) (toList!6879 lm!2473))))))

(declare-fun b!4791047 () Bool)

(declare-fun res!2036104 () Bool)

(assert (=> b!4791047 (=> res!2036104 e!2991430)))

(assert (=> b!4791047 (= res!2036104 (not (allKeysSameHashInMap!2305 lt!1950345 hashF!1559)))))

(declare-fun b!4791048 () Bool)

(declare-fun res!2036103 () Bool)

(assert (=> b!4791048 (=> res!2036103 e!2991429)))

(declare-fun containsKey!3926 (List!54293 K!15739) Bool)

(assert (=> b!4791048 (= res!2036103 (containsKey!3926 (_2!31679 (h!60594 (toList!6879 lm!2473))) key!5896))))

(assert (= (and start!493214 res!2036102) b!4791042))

(assert (= (and b!4791042 res!2036106) b!4791038))

(assert (= (and b!4791038 res!2036108) b!4791044))

(assert (= (and b!4791044 res!2036101) b!4791040))

(assert (= (and b!4791044 (not res!2036110)) b!4791046))

(assert (= (and b!4791046 (not res!2036107)) b!4791048))

(assert (= (and b!4791048 (not res!2036103)) b!4791045))

(assert (= (and b!4791045 c!816603) b!4791037))

(assert (= (and b!4791045 (not c!816603)) b!4791036))

(assert (= (and b!4791045 (not res!2036100)) b!4791047))

(assert (= (and b!4791047 (not res!2036104)) b!4791041))

(assert (= (and b!4791041 res!2036105) b!4791035))

(assert (= (and b!4791041 (not res!2036109)) b!4791039))

(assert (= start!493214 b!4791043))

(declare-fun m!5771330 () Bool)

(assert (=> b!4791041 m!5771330))

(declare-fun m!5771332 () Bool)

(assert (=> b!4791041 m!5771332))

(declare-fun m!5771334 () Bool)

(assert (=> b!4791041 m!5771334))

(declare-fun m!5771336 () Bool)

(assert (=> b!4791041 m!5771336))

(declare-fun m!5771338 () Bool)

(assert (=> b!4791044 m!5771338))

(declare-fun m!5771340 () Bool)

(assert (=> b!4791044 m!5771340))

(declare-fun m!5771342 () Bool)

(assert (=> b!4791044 m!5771342))

(declare-fun m!5771344 () Bool)

(assert (=> b!4791044 m!5771344))

(declare-fun m!5771346 () Bool)

(assert (=> b!4791044 m!5771346))

(declare-fun m!5771348 () Bool)

(assert (=> b!4791044 m!5771348))

(declare-fun m!5771350 () Bool)

(assert (=> b!4791047 m!5771350))

(declare-fun m!5771352 () Bool)

(assert (=> b!4791038 m!5771352))

(assert (=> b!4791038 m!5771352))

(declare-fun m!5771354 () Bool)

(assert (=> b!4791038 m!5771354))

(declare-fun m!5771356 () Bool)

(assert (=> b!4791045 m!5771356))

(declare-fun m!5771358 () Bool)

(assert (=> b!4791045 m!5771358))

(declare-fun m!5771360 () Bool)

(assert (=> b!4791045 m!5771360))

(declare-fun m!5771362 () Bool)

(assert (=> b!4791045 m!5771362))

(declare-fun m!5771364 () Bool)

(assert (=> b!4791045 m!5771364))

(declare-fun m!5771366 () Bool)

(assert (=> b!4791045 m!5771366))

(assert (=> b!4791045 m!5771360))

(declare-fun m!5771368 () Bool)

(assert (=> b!4791037 m!5771368))

(assert (=> b!4791037 m!5771360))

(assert (=> b!4791037 m!5771360))

(assert (=> b!4791037 m!5771362))

(declare-fun m!5771370 () Bool)

(assert (=> b!4791048 m!5771370))

(declare-fun m!5771372 () Bool)

(assert (=> b!4791042 m!5771372))

(declare-fun m!5771374 () Bool)

(assert (=> start!493214 m!5771374))

(declare-fun m!5771376 () Bool)

(assert (=> start!493214 m!5771376))

(declare-fun m!5771378 () Bool)

(assert (=> b!4791035 m!5771378))

(assert (=> b!4791035 m!5771378))

(declare-fun m!5771380 () Bool)

(assert (=> b!4791035 m!5771380))

(assert (=> b!4791035 m!5771380))

(declare-fun m!5771382 () Bool)

(assert (=> b!4791035 m!5771382))

(declare-fun m!5771384 () Bool)

(assert (=> b!4791040 m!5771384))

(assert (=> b!4791040 m!5771384))

(declare-fun m!5771386 () Bool)

(assert (=> b!4791040 m!5771386))

(assert (=> b!4791040 m!5771386))

(declare-fun m!5771388 () Bool)

(assert (=> b!4791040 m!5771388))

(check-sat (not b!4791035) (not b!4791037) (not b!4791040) (not start!493214) (not b!4791044) (not b!4791038) (not b!4791043) tp_is_empty!33483 (not b!4791042) (not b!4791045) (not b!4791047) (not b!4791048) tp_is_empty!33481 (not b!4791041))
(check-sat)
