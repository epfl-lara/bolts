; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!492458 () Bool)

(assert start!492458)

(declare-fun bs!1153785 () Bool)

(declare-fun b!4787568 () Bool)

(assert (= bs!1153785 (and b!4787568 start!492458)))

(declare-fun lambda!229588 () Int)

(declare-fun lambda!229587 () Int)

(assert (=> bs!1153785 (not (= lambda!229588 lambda!229587))))

(assert (=> b!4787568 true))

(assert (=> b!4787568 true))

(assert (=> b!4787568 true))

(declare-fun b!4787567 () Bool)

(declare-fun res!2034012 () Bool)

(declare-fun e!2989225 () Bool)

(assert (=> b!4787567 (=> (not res!2034012) (not e!2989225))))

(declare-datatypes ((K!15674 0))(
  ( (K!15675 (val!20845 Int)) )
))
(declare-datatypes ((V!15920 0))(
  ( (V!15921 (val!20846 Int)) )
))
(declare-datatypes ((tuple2!56664 0))(
  ( (tuple2!56665 (_1!31626 K!15674) (_2!31626 V!15920)) )
))
(declare-datatypes ((List!54233 0))(
  ( (Nil!54109) (Cons!54109 (h!60533 tuple2!56664) (t!361683 List!54233)) )
))
(declare-datatypes ((tuple2!56666 0))(
  ( (tuple2!56667 (_1!31627 (_ BitVec 64)) (_2!31627 List!54233)) )
))
(declare-datatypes ((List!54234 0))(
  ( (Nil!54110) (Cons!54110 (h!60534 tuple2!56666) (t!361684 List!54234)) )
))
(declare-datatypes ((ListLongMap!5249 0))(
  ( (ListLongMap!5250 (toList!6827 List!54234)) )
))
(declare-fun lm!2473 () ListLongMap!5249)

(declare-datatypes ((Hashable!6874 0))(
  ( (HashableExt!6873 (__x!32897 Int)) )
))
(declare-fun hashF!1559 () Hashable!6874)

(declare-fun allKeysSameHashInMap!2279 (ListLongMap!5249 Hashable!6874) Bool)

(assert (=> b!4787567 (= res!2034012 (allKeysSameHashInMap!2279 lm!2473 hashF!1559))))

(declare-fun res!2034018 () Bool)

(assert (=> start!492458 (=> (not res!2034018) (not e!2989225))))

(declare-fun forall!12184 (List!54234 Int) Bool)

(assert (=> start!492458 (= res!2034018 (forall!12184 (toList!6827 lm!2473) lambda!229587))))

(assert (=> start!492458 e!2989225))

(declare-fun e!2989222 () Bool)

(declare-fun inv!69700 (ListLongMap!5249) Bool)

(assert (=> start!492458 (and (inv!69700 lm!2473) e!2989222)))

(assert (=> start!492458 true))

(declare-fun tp_is_empty!33377 () Bool)

(assert (=> start!492458 tp_is_empty!33377))

(declare-fun tp_is_empty!33379 () Bool)

(assert (=> start!492458 tp_is_empty!33379))

(declare-fun e!2989218 () Bool)

(declare-fun e!2989226 () Bool)

(assert (=> b!4787568 (= e!2989218 e!2989226)))

(declare-fun res!2034022 () Bool)

(assert (=> b!4787568 (=> res!2034022 e!2989226)))

(declare-fun noDuplicateKeys!2317 (List!54233) Bool)

(assert (=> b!4787568 (= res!2034022 (not (noDuplicateKeys!2317 (_2!31627 (h!60534 (toList!6827 lm!2473))))))))

(declare-datatypes ((ListMap!6299 0))(
  ( (ListMap!6300 (toList!6828 List!54233)) )
))
(declare-fun lt!1948266 () ListMap!6299)

(declare-fun extractMap!2401 (List!54234) ListMap!6299)

(assert (=> b!4787568 (= lt!1948266 (extractMap!2401 (t!361684 (toList!6827 lm!2473))))))

(declare-fun lt!1948263 () ListLongMap!5249)

(declare-fun key!5896 () K!15674)

(declare-fun contains!17699 (ListMap!6299 K!15674) Bool)

(assert (=> b!4787568 (not (contains!17699 (extractMap!2401 (toList!6827 lt!1948263)) key!5896))))

(declare-datatypes ((Unit!139593 0))(
  ( (Unit!139594) )
))
(declare-fun lt!1948261 () Unit!139593)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!8 (ListLongMap!5249 K!15674 Hashable!6874) Unit!139593)

(assert (=> b!4787568 (= lt!1948261 (lemmaHashNotInLongMapThenNotInGenerated!8 lt!1948263 key!5896 hashF!1559))))

(declare-fun tail!9223 (ListLongMap!5249) ListLongMap!5249)

(assert (=> b!4787568 (= lt!1948263 (tail!9223 lm!2473))))

(declare-fun lambda!229589 () Int)

(declare-fun lt!1948268 () Unit!139593)

(declare-fun lt!1948270 () tuple2!56664)

(declare-fun forallContained!4131 (List!54233 Int tuple2!56664) Unit!139593)

(assert (=> b!4787568 (= lt!1948268 (forallContained!4131 (_2!31627 (h!60534 (toList!6827 lm!2473))) lambda!229589 lt!1948270))))

(declare-fun value!3111 () V!15920)

(assert (=> b!4787568 (= lt!1948270 (tuple2!56665 key!5896 value!3111))))

(declare-fun lt!1948262 () Unit!139593)

(declare-fun forallContained!4132 (List!54234 Int tuple2!56666) Unit!139593)

(assert (=> b!4787568 (= lt!1948262 (forallContained!4132 (toList!6827 lm!2473) lambda!229588 (h!60534 (toList!6827 lm!2473))))))

(declare-fun b!4787569 () Bool)

(declare-fun e!2989223 () Bool)

(declare-fun lt!1948264 () (_ BitVec 64))

(declare-datatypes ((Option!13021 0))(
  ( (None!13020) (Some!13020 (v!48283 tuple2!56664)) )
))
(declare-fun isDefined!10163 (Option!13021) Bool)

(declare-fun getPair!846 (List!54233 K!15674) Option!13021)

(declare-fun apply!12934 (ListLongMap!5249 (_ BitVec 64)) List!54233)

(assert (=> b!4787569 (= e!2989223 (isDefined!10163 (getPair!846 (apply!12934 lm!2473 lt!1948264) key!5896)))))

(declare-fun b!4787570 () Bool)

(declare-fun e!2989224 () Bool)

(declare-fun e!2989219 () Bool)

(assert (=> b!4787570 (= e!2989224 e!2989219)))

(declare-fun res!2034019 () Bool)

(assert (=> b!4787570 (=> res!2034019 e!2989219)))

(declare-fun contains!17700 (List!54233 tuple2!56664) Bool)

(assert (=> b!4787570 (= res!2034019 (not (contains!17700 (_2!31627 (h!60534 (toList!6827 lm!2473))) lt!1948270)))))

(declare-fun b!4787571 () Bool)

(declare-fun e!2989221 () Bool)

(assert (=> b!4787571 (= e!2989226 e!2989221)))

(declare-fun res!2034013 () Bool)

(assert (=> b!4787571 (=> res!2034013 e!2989221)))

(declare-fun lt!1948265 () ListMap!6299)

(assert (=> b!4787571 (= res!2034013 (not (contains!17699 lt!1948265 key!5896)))))

(declare-fun addToMapMapFromBucket!1686 (List!54233 ListMap!6299) ListMap!6299)

(assert (=> b!4787571 (= lt!1948265 (addToMapMapFromBucket!1686 (_2!31627 (h!60534 (toList!6827 lm!2473))) lt!1948266))))

(declare-fun b!4787572 () Bool)

(declare-fun e!2989220 () Bool)

(assert (=> b!4787572 (= e!2989220 true)))

(declare-fun lt!1948267 () V!15920)

(declare-fun apply!12935 (ListMap!6299 K!15674) V!15920)

(assert (=> b!4787572 (= lt!1948267 (apply!12935 lt!1948266 key!5896))))

(declare-fun b!4787573 () Bool)

(declare-fun e!2989217 () Bool)

(assert (=> b!4787573 (= e!2989217 true)))

(assert (=> b!4787573 (= (apply!12935 lt!1948265 key!5896) value!3111)))

(declare-fun lt!1948259 () Unit!139593)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!4 (List!54233 ListMap!6299 K!15674 V!15920) Unit!139593)

(assert (=> b!4787573 (= lt!1948259 (lemmaAddToMapFromBucketMaintainsMapping!4 (_2!31627 (h!60534 (toList!6827 lm!2473))) lt!1948266 key!5896 value!3111))))

(declare-fun b!4787574 () Bool)

(assert (=> b!4787574 (= e!2989221 e!2989217)))

(declare-fun res!2034011 () Bool)

(assert (=> b!4787574 (=> res!2034011 e!2989217)))

(assert (=> b!4787574 (= res!2034011 e!2989224)))

(declare-fun res!2034014 () Bool)

(assert (=> b!4787574 (=> (not res!2034014) (not e!2989224))))

(assert (=> b!4787574 (= res!2034014 e!2989220)))

(declare-fun res!2034020 () Bool)

(assert (=> b!4787574 (=> res!2034020 e!2989220)))

(declare-fun lt!1948271 () Bool)

(assert (=> b!4787574 (= res!2034020 (not lt!1948271))))

(assert (=> b!4787574 (= lt!1948271 (contains!17699 lt!1948266 key!5896))))

(declare-fun b!4787575 () Bool)

(declare-fun res!2034017 () Bool)

(assert (=> b!4787575 (=> res!2034017 e!2989218)))

(get-info :version)

(assert (=> b!4787575 (= res!2034017 (not ((_ is Cons!54110) (toList!6827 lm!2473))))))

(declare-fun b!4787576 () Bool)

(assert (=> b!4787576 (= e!2989219 lt!1948271)))

(declare-fun b!4787577 () Bool)

(declare-fun res!2034015 () Bool)

(assert (=> b!4787577 (=> res!2034015 e!2989218)))

(declare-fun containsKey!3884 (List!54233 K!15674) Bool)

(assert (=> b!4787577 (= res!2034015 (not (containsKey!3884 (_2!31627 (h!60534 (toList!6827 lm!2473))) key!5896)))))

(declare-fun b!4787578 () Bool)

(assert (=> b!4787578 (= e!2989225 (not e!2989218))))

(declare-fun res!2034021 () Bool)

(assert (=> b!4787578 (=> res!2034021 e!2989218)))

(declare-fun getValue!70 (List!54234 K!15674) V!15920)

(assert (=> b!4787578 (= res!2034021 (not (= (getValue!70 (toList!6827 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!524 (List!54234 K!15674) Bool)

(assert (=> b!4787578 (containsKeyBiggerList!524 (toList!6827 lm!2473) key!5896)))

(declare-fun lt!1948269 () Unit!139593)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!264 (ListLongMap!5249 K!15674 Hashable!6874) Unit!139593)

(assert (=> b!4787578 (= lt!1948269 (lemmaInLongMapThenContainsKeyBiggerList!264 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4787578 e!2989223))

(declare-fun res!2034016 () Bool)

(assert (=> b!4787578 (=> (not res!2034016) (not e!2989223))))

(declare-fun contains!17701 (ListLongMap!5249 (_ BitVec 64)) Bool)

(assert (=> b!4787578 (= res!2034016 (contains!17701 lm!2473 lt!1948264))))

(declare-fun hash!4896 (Hashable!6874 K!15674) (_ BitVec 64))

(assert (=> b!4787578 (= lt!1948264 (hash!4896 hashF!1559 key!5896))))

(declare-fun lt!1948260 () Unit!139593)

(declare-fun lemmaInGenericMapThenInLongMap!278 (ListLongMap!5249 K!15674 Hashable!6874) Unit!139593)

(assert (=> b!4787578 (= lt!1948260 (lemmaInGenericMapThenInLongMap!278 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4787579 () Bool)

(declare-fun tp!1357752 () Bool)

(assert (=> b!4787579 (= e!2989222 tp!1357752)))

(declare-fun b!4787580 () Bool)

(declare-fun res!2034010 () Bool)

(assert (=> b!4787580 (=> (not res!2034010) (not e!2989225))))

(assert (=> b!4787580 (= res!2034010 (contains!17699 (extractMap!2401 (toList!6827 lm!2473)) key!5896))))

(assert (= (and start!492458 res!2034018) b!4787567))

(assert (= (and b!4787567 res!2034012) b!4787580))

(assert (= (and b!4787580 res!2034010) b!4787578))

(assert (= (and b!4787578 res!2034016) b!4787569))

(assert (= (and b!4787578 (not res!2034021)) b!4787575))

(assert (= (and b!4787575 (not res!2034017)) b!4787577))

(assert (= (and b!4787577 (not res!2034015)) b!4787568))

(assert (= (and b!4787568 (not res!2034022)) b!4787571))

(assert (= (and b!4787571 (not res!2034013)) b!4787574))

(assert (= (and b!4787574 (not res!2034020)) b!4787572))

(assert (= (and b!4787574 res!2034014) b!4787570))

(assert (= (and b!4787570 (not res!2034019)) b!4787576))

(assert (= (and b!4787574 (not res!2034011)) b!4787573))

(assert (= start!492458 b!4787579))

(declare-fun m!5766906 () Bool)

(assert (=> b!4787570 m!5766906))

(declare-fun m!5766908 () Bool)

(assert (=> b!4787572 m!5766908))

(declare-fun m!5766910 () Bool)

(assert (=> b!4787568 m!5766910))

(declare-fun m!5766912 () Bool)

(assert (=> b!4787568 m!5766912))

(declare-fun m!5766914 () Bool)

(assert (=> b!4787568 m!5766914))

(declare-fun m!5766916 () Bool)

(assert (=> b!4787568 m!5766916))

(declare-fun m!5766918 () Bool)

(assert (=> b!4787568 m!5766918))

(assert (=> b!4787568 m!5766910))

(declare-fun m!5766920 () Bool)

(assert (=> b!4787568 m!5766920))

(declare-fun m!5766922 () Bool)

(assert (=> b!4787568 m!5766922))

(declare-fun m!5766924 () Bool)

(assert (=> b!4787568 m!5766924))

(declare-fun m!5766926 () Bool)

(assert (=> b!4787577 m!5766926))

(declare-fun m!5766928 () Bool)

(assert (=> b!4787567 m!5766928))

(declare-fun m!5766930 () Bool)

(assert (=> b!4787580 m!5766930))

(assert (=> b!4787580 m!5766930))

(declare-fun m!5766932 () Bool)

(assert (=> b!4787580 m!5766932))

(declare-fun m!5766934 () Bool)

(assert (=> b!4787571 m!5766934))

(declare-fun m!5766936 () Bool)

(assert (=> b!4787571 m!5766936))

(declare-fun m!5766938 () Bool)

(assert (=> b!4787573 m!5766938))

(declare-fun m!5766940 () Bool)

(assert (=> b!4787573 m!5766940))

(declare-fun m!5766942 () Bool)

(assert (=> b!4787569 m!5766942))

(assert (=> b!4787569 m!5766942))

(declare-fun m!5766944 () Bool)

(assert (=> b!4787569 m!5766944))

(assert (=> b!4787569 m!5766944))

(declare-fun m!5766946 () Bool)

(assert (=> b!4787569 m!5766946))

(declare-fun m!5766948 () Bool)

(assert (=> start!492458 m!5766948))

(declare-fun m!5766950 () Bool)

(assert (=> start!492458 m!5766950))

(declare-fun m!5766952 () Bool)

(assert (=> b!4787574 m!5766952))

(declare-fun m!5766954 () Bool)

(assert (=> b!4787578 m!5766954))

(declare-fun m!5766956 () Bool)

(assert (=> b!4787578 m!5766956))

(declare-fun m!5766958 () Bool)

(assert (=> b!4787578 m!5766958))

(declare-fun m!5766960 () Bool)

(assert (=> b!4787578 m!5766960))

(declare-fun m!5766962 () Bool)

(assert (=> b!4787578 m!5766962))

(declare-fun m!5766964 () Bool)

(assert (=> b!4787578 m!5766964))

(check-sat (not b!4787567) (not start!492458) (not b!4787568) tp_is_empty!33379 (not b!4787570) (not b!4787573) tp_is_empty!33377 (not b!4787574) (not b!4787571) (not b!4787569) (not b!4787579) (not b!4787580) (not b!4787572) (not b!4787577) (not b!4787578))
(check-sat)
