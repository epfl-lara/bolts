; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489490 () Bool)

(assert start!489490)

(declare-fun bs!1150540 () Bool)

(declare-fun b!4775464 () Bool)

(assert (= bs!1150540 (and b!4775464 start!489490)))

(declare-fun lambda!226541 () Int)

(declare-fun lambda!226540 () Int)

(assert (=> bs!1150540 (not (= lambda!226541 lambda!226540))))

(assert (=> b!4775464 true))

(declare-fun b!4775456 () Bool)

(declare-fun e!2981277 () Bool)

(declare-datatypes ((K!15379 0))(
  ( (K!15380 (val!20609 Int)) )
))
(declare-datatypes ((V!15625 0))(
  ( (V!15626 (val!20610 Int)) )
))
(declare-datatypes ((tuple2!56192 0))(
  ( (tuple2!56193 (_1!31390 K!15379) (_2!31390 V!15625)) )
))
(declare-datatypes ((List!53959 0))(
  ( (Nil!53835) (Cons!53835 (h!60249 tuple2!56192) (t!361409 List!53959)) )
))
(declare-datatypes ((tuple2!56194 0))(
  ( (tuple2!56195 (_1!31391 (_ BitVec 64)) (_2!31391 List!53959)) )
))
(declare-datatypes ((List!53960 0))(
  ( (Nil!53836) (Cons!53836 (h!60250 tuple2!56194) (t!361410 List!53960)) )
))
(declare-datatypes ((ListLongMap!5013 0))(
  ( (ListLongMap!5014 (toList!6595 List!53960)) )
))
(declare-fun lm!2709 () ListLongMap!5013)

(declare-fun forall!12024 (List!53960 Int) Bool)

(assert (=> b!4775456 (= e!2981277 (forall!12024 (toList!6595 lm!2709) lambda!226540))))

(declare-fun b!4775457 () Bool)

(declare-fun res!2026389 () Bool)

(declare-fun e!2981275 () Bool)

(assert (=> b!4775457 (=> (not res!2026389) (not e!2981275))))

(declare-fun key!6641 () K!15379)

(declare-fun containsKeyBiggerList!412 (List!53960 K!15379) Bool)

(assert (=> b!4775457 (= res!2026389 (containsKeyBiggerList!412 (toList!6595 lm!2709) key!6641))))

(declare-fun b!4775458 () Bool)

(declare-fun e!2981276 () Bool)

(declare-fun tp!1357062 () Bool)

(assert (=> b!4775458 (= e!2981276 tp!1357062)))

(declare-fun b!4775459 () Bool)

(declare-fun res!2026383 () Bool)

(declare-fun e!2981278 () Bool)

(assert (=> b!4775459 (=> res!2026383 e!2981278)))

(declare-fun lt!1938443 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4775459 (= res!2026383 (or (not ((_ is Cons!53836) (toList!6595 lm!2709))) (not (= (_1!31391 (h!60250 (toList!6595 lm!2709))) lt!1938443))))))

(declare-fun res!2026388 () Bool)

(assert (=> start!489490 (=> (not res!2026388) (not e!2981275))))

(assert (=> start!489490 (= res!2026388 (forall!12024 (toList!6595 lm!2709) lambda!226540))))

(assert (=> start!489490 e!2981275))

(declare-fun inv!69405 (ListLongMap!5013) Bool)

(assert (=> start!489490 (and (inv!69405 lm!2709) e!2981276)))

(assert (=> start!489490 true))

(declare-fun tp_is_empty!32953 () Bool)

(assert (=> start!489490 tp_is_empty!32953))

(declare-fun tp_is_empty!32955 () Bool)

(assert (=> start!489490 tp_is_empty!32955))

(declare-fun b!4775460 () Bool)

(declare-fun res!2026384 () Bool)

(assert (=> b!4775460 (=> (not res!2026384) (not e!2981275))))

(declare-datatypes ((Hashable!6756 0))(
  ( (HashableExt!6755 (__x!32779 Int)) )
))
(declare-fun hashF!1687 () Hashable!6756)

(declare-fun allKeysSameHashInMap!2161 (ListLongMap!5013 Hashable!6756) Bool)

(assert (=> b!4775460 (= res!2026384 (allKeysSameHashInMap!2161 lm!2709 hashF!1687))))

(declare-fun b!4775461 () Bool)

(declare-fun res!2026386 () Bool)

(assert (=> b!4775461 (=> res!2026386 e!2981277)))

(declare-fun lt!1938441 () List!53959)

(declare-fun containsKey!3731 (List!53959 K!15379) Bool)

(assert (=> b!4775461 (= res!2026386 (containsKey!3731 lt!1938441 key!6641))))

(declare-fun b!4775462 () Bool)

(declare-fun res!2026390 () Bool)

(assert (=> b!4775462 (=> res!2026390 e!2981277)))

(assert (=> b!4775462 (= res!2026390 (not (forall!12024 (toList!6595 lm!2709) lambda!226540)))))

(declare-fun b!4775463 () Bool)

(assert (=> b!4775463 (= e!2981275 (not e!2981278))))

(declare-fun res!2026385 () Bool)

(assert (=> b!4775463 (=> res!2026385 e!2981278)))

(declare-datatypes ((Option!12845 0))(
  ( (None!12844) (Some!12844 (v!48005 tuple2!56192)) )
))
(declare-fun lt!1938436 () Option!12845)

(declare-fun v!11584 () V!15625)

(declare-fun get!18251 (Option!12845) tuple2!56192)

(assert (=> b!4775463 (= res!2026385 (not (= (_2!31390 (get!18251 lt!1938436)) v!11584)))))

(declare-fun isDefined!9989 (Option!12845) Bool)

(assert (=> b!4775463 (isDefined!9989 lt!1938436)))

(declare-fun getPair!744 (List!53959 K!15379) Option!12845)

(assert (=> b!4775463 (= lt!1938436 (getPair!744 lt!1938441 key!6641))))

(declare-fun lt!1938437 () tuple2!56194)

(declare-datatypes ((Unit!138830 0))(
  ( (Unit!138831) )
))
(declare-fun lt!1938440 () Unit!138830)

(declare-fun forallContained!3981 (List!53960 Int tuple2!56194) Unit!138830)

(assert (=> b!4775463 (= lt!1938440 (forallContained!3981 (toList!6595 lm!2709) lambda!226540 lt!1938437))))

(declare-fun lt!1938433 () Unit!138830)

(declare-fun lemmaInGenMapThenGetPairDefined!518 (ListLongMap!5013 K!15379 Hashable!6756) Unit!138830)

(assert (=> b!4775463 (= lt!1938433 (lemmaInGenMapThenGetPairDefined!518 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1938438 () Unit!138830)

(assert (=> b!4775463 (= lt!1938438 (forallContained!3981 (toList!6595 lm!2709) lambda!226540 lt!1938437))))

(declare-fun contains!17304 (List!53960 tuple2!56194) Bool)

(assert (=> b!4775463 (contains!17304 (toList!6595 lm!2709) lt!1938437)))

(assert (=> b!4775463 (= lt!1938437 (tuple2!56195 lt!1938443 lt!1938441))))

(declare-fun lt!1938442 () Unit!138830)

(declare-fun lemmaGetValueImpliesTupleContained!547 (ListLongMap!5013 (_ BitVec 64) List!53959) Unit!138830)

(assert (=> b!4775463 (= lt!1938442 (lemmaGetValueImpliesTupleContained!547 lm!2709 lt!1938443 lt!1938441))))

(declare-fun apply!12819 (ListLongMap!5013 (_ BitVec 64)) List!53959)

(assert (=> b!4775463 (= lt!1938441 (apply!12819 lm!2709 lt!1938443))))

(declare-fun contains!17305 (ListLongMap!5013 (_ BitVec 64)) Bool)

(assert (=> b!4775463 (contains!17305 lm!2709 lt!1938443)))

(declare-fun hash!4728 (Hashable!6756 K!15379) (_ BitVec 64))

(assert (=> b!4775463 (= lt!1938443 (hash!4728 hashF!1687 key!6641))))

(declare-fun lt!1938439 () Unit!138830)

(declare-fun lemmaInGenMapThenLongMapContainsHash!960 (ListLongMap!5013 K!15379 Hashable!6756) Unit!138830)

(assert (=> b!4775463 (= lt!1938439 (lemmaInGenMapThenLongMapContainsHash!960 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6071 0))(
  ( (ListMap!6072 (toList!6596 List!53959)) )
))
(declare-fun contains!17306 (ListMap!6071 K!15379) Bool)

(declare-fun extractMap!2287 (List!53960) ListMap!6071)

(assert (=> b!4775463 (contains!17306 (extractMap!2287 (toList!6595 lm!2709)) key!6641)))

(declare-fun lt!1938435 () Unit!138830)

(declare-fun lemmaListContainsThenExtractedMapContains!608 (ListLongMap!5013 K!15379 Hashable!6756) Unit!138830)

(assert (=> b!4775463 (= lt!1938435 (lemmaListContainsThenExtractedMapContains!608 lm!2709 key!6641 hashF!1687))))

(assert (=> b!4775464 (= e!2981278 e!2981277)))

(declare-fun res!2026387 () Bool)

(assert (=> b!4775464 (=> res!2026387 e!2981277)))

(assert (=> b!4775464 (= res!2026387 (containsKey!3731 (_2!31391 (h!60250 (toList!6595 lm!2709))) key!6641))))

(declare-fun lt!1938434 () Unit!138830)

(assert (=> b!4775464 (= lt!1938434 (forallContained!3981 (toList!6595 lm!2709) lambda!226541 (h!60250 (toList!6595 lm!2709))))))

(assert (= (and start!489490 res!2026388) b!4775460))

(assert (= (and b!4775460 res!2026384) b!4775457))

(assert (= (and b!4775457 res!2026389) b!4775463))

(assert (= (and b!4775463 (not res!2026385)) b!4775459))

(assert (= (and b!4775459 (not res!2026383)) b!4775464))

(assert (= (and b!4775464 (not res!2026387)) b!4775462))

(assert (= (and b!4775462 (not res!2026390)) b!4775461))

(assert (= (and b!4775461 (not res!2026386)) b!4775456))

(assert (= start!489490 b!4775458))

(declare-fun m!5749866 () Bool)

(assert (=> b!4775457 m!5749866))

(declare-fun m!5749868 () Bool)

(assert (=> start!489490 m!5749868))

(declare-fun m!5749870 () Bool)

(assert (=> start!489490 m!5749870))

(declare-fun m!5749872 () Bool)

(assert (=> b!4775460 m!5749872))

(declare-fun m!5749874 () Bool)

(assert (=> b!4775461 m!5749874))

(declare-fun m!5749876 () Bool)

(assert (=> b!4775463 m!5749876))

(declare-fun m!5749878 () Bool)

(assert (=> b!4775463 m!5749878))

(declare-fun m!5749880 () Bool)

(assert (=> b!4775463 m!5749880))

(assert (=> b!4775463 m!5749880))

(declare-fun m!5749882 () Bool)

(assert (=> b!4775463 m!5749882))

(declare-fun m!5749884 () Bool)

(assert (=> b!4775463 m!5749884))

(declare-fun m!5749886 () Bool)

(assert (=> b!4775463 m!5749886))

(declare-fun m!5749888 () Bool)

(assert (=> b!4775463 m!5749888))

(declare-fun m!5749890 () Bool)

(assert (=> b!4775463 m!5749890))

(declare-fun m!5749892 () Bool)

(assert (=> b!4775463 m!5749892))

(declare-fun m!5749894 () Bool)

(assert (=> b!4775463 m!5749894))

(declare-fun m!5749896 () Bool)

(assert (=> b!4775463 m!5749896))

(assert (=> b!4775463 m!5749886))

(declare-fun m!5749898 () Bool)

(assert (=> b!4775463 m!5749898))

(declare-fun m!5749900 () Bool)

(assert (=> b!4775463 m!5749900))

(declare-fun m!5749902 () Bool)

(assert (=> b!4775463 m!5749902))

(declare-fun m!5749904 () Bool)

(assert (=> b!4775464 m!5749904))

(declare-fun m!5749906 () Bool)

(assert (=> b!4775464 m!5749906))

(assert (=> b!4775462 m!5749868))

(assert (=> b!4775456 m!5749868))

(check-sat (not b!4775460) tp_is_empty!32955 (not b!4775461) tp_is_empty!32953 (not b!4775462) (not b!4775458) (not b!4775464) (not b!4775463) (not b!4775456) (not b!4775457) (not start!489490))
(check-sat)
