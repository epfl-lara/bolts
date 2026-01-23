; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489770 () Bool)

(assert start!489770)

(declare-fun b!4777009 () Bool)

(declare-fun res!2027535 () Bool)

(declare-fun e!2982169 () Bool)

(assert (=> b!4777009 (=> (not res!2027535) (not e!2982169))))

(declare-datatypes ((K!15464 0))(
  ( (K!15465 (val!20677 Int)) )
))
(declare-datatypes ((V!15710 0))(
  ( (V!15711 (val!20678 Int)) )
))
(declare-datatypes ((tuple2!56328 0))(
  ( (tuple2!56329 (_1!31458 K!15464) (_2!31458 V!15710)) )
))
(declare-datatypes ((List!54029 0))(
  ( (Nil!53905) (Cons!53905 (h!60319 tuple2!56328) (t!361479 List!54029)) )
))
(declare-datatypes ((tuple2!56330 0))(
  ( (tuple2!56331 (_1!31459 (_ BitVec 64)) (_2!31459 List!54029)) )
))
(declare-datatypes ((List!54030 0))(
  ( (Nil!53906) (Cons!53906 (h!60320 tuple2!56330) (t!361480 List!54030)) )
))
(declare-datatypes ((ListLongMap!5081 0))(
  ( (ListLongMap!5082 (toList!6663 List!54030)) )
))
(declare-fun lm!2709 () ListLongMap!5081)

(declare-datatypes ((Hashable!6790 0))(
  ( (HashableExt!6789 (__x!32813 Int)) )
))
(declare-fun hashF!1687 () Hashable!6790)

(declare-fun allKeysSameHashInMap!2195 (ListLongMap!5081 Hashable!6790) Bool)

(assert (=> b!4777009 (= res!2027535 (allKeysSameHashInMap!2195 lm!2709 hashF!1687))))

(declare-fun b!4777010 () Bool)

(declare-fun res!2027534 () Bool)

(assert (=> b!4777010 (=> (not res!2027534) (not e!2982169))))

(declare-fun key!6641 () K!15464)

(declare-fun containsKeyBiggerList!446 (List!54030 K!15464) Bool)

(assert (=> b!4777010 (= res!2027534 (containsKeyBiggerList!446 (toList!6663 lm!2709) key!6641))))

(declare-fun res!2027537 () Bool)

(assert (=> start!489770 (=> (not res!2027537) (not e!2982169))))

(declare-fun lambda!227083 () Int)

(declare-fun forall!12062 (List!54030 Int) Bool)

(assert (=> start!489770 (= res!2027537 (forall!12062 (toList!6663 lm!2709) lambda!227083))))

(assert (=> start!489770 e!2982169))

(declare-fun e!2982168 () Bool)

(declare-fun inv!69490 (ListLongMap!5081) Bool)

(assert (=> start!489770 (and (inv!69490 lm!2709) e!2982168)))

(assert (=> start!489770 true))

(declare-fun tp_is_empty!33089 () Bool)

(assert (=> start!489770 tp_is_empty!33089))

(declare-fun tp_is_empty!33091 () Bool)

(assert (=> start!489770 tp_is_empty!33091))

(declare-fun b!4777011 () Bool)

(declare-fun tp!1357186 () Bool)

(assert (=> b!4777011 (= e!2982168 tp!1357186)))

(declare-fun b!4777012 () Bool)

(declare-fun res!2027538 () Bool)

(declare-fun e!2982170 () Bool)

(assert (=> b!4777012 (=> res!2027538 e!2982170)))

(declare-fun lt!1940371 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4777012 (= res!2027538 (or (and ((_ is Cons!53906) (toList!6663 lm!2709)) (= (_1!31459 (h!60320 (toList!6663 lm!2709))) lt!1940371)) (not ((_ is Cons!53906) (toList!6663 lm!2709)))))))

(declare-fun b!4777013 () Bool)

(assert (=> b!4777013 (= e!2982169 (not e!2982170))))

(declare-fun res!2027536 () Bool)

(assert (=> b!4777013 (=> res!2027536 e!2982170)))

(declare-datatypes ((Option!12883 0))(
  ( (None!12882) (Some!12882 (v!48051 tuple2!56328)) )
))
(declare-fun lt!1940379 () Option!12883)

(declare-fun v!11584 () V!15710)

(declare-fun get!18304 (Option!12883) tuple2!56328)

(assert (=> b!4777013 (= res!2027536 (not (= (_2!31458 (get!18304 lt!1940379)) v!11584)))))

(declare-fun isDefined!10027 (Option!12883) Bool)

(assert (=> b!4777013 (isDefined!10027 lt!1940379)))

(declare-fun lt!1940369 () List!54029)

(declare-fun getPair!778 (List!54029 K!15464) Option!12883)

(assert (=> b!4777013 (= lt!1940379 (getPair!778 lt!1940369 key!6641))))

(declare-datatypes ((Unit!138938 0))(
  ( (Unit!138939) )
))
(declare-fun lt!1940373 () Unit!138938)

(declare-fun lt!1940372 () tuple2!56330)

(declare-fun forallContained!4019 (List!54030 Int tuple2!56330) Unit!138938)

(assert (=> b!4777013 (= lt!1940373 (forallContained!4019 (toList!6663 lm!2709) lambda!227083 lt!1940372))))

(declare-fun lt!1940375 () Unit!138938)

(declare-fun lemmaInGenMapThenGetPairDefined!552 (ListLongMap!5081 K!15464 Hashable!6790) Unit!138938)

(assert (=> b!4777013 (= lt!1940375 (lemmaInGenMapThenGetPairDefined!552 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1940376 () Unit!138938)

(assert (=> b!4777013 (= lt!1940376 (forallContained!4019 (toList!6663 lm!2709) lambda!227083 lt!1940372))))

(declare-fun contains!17410 (List!54030 tuple2!56330) Bool)

(assert (=> b!4777013 (contains!17410 (toList!6663 lm!2709) lt!1940372)))

(assert (=> b!4777013 (= lt!1940372 (tuple2!56331 lt!1940371 lt!1940369))))

(declare-fun lt!1940378 () Unit!138938)

(declare-fun lemmaGetValueImpliesTupleContained!581 (ListLongMap!5081 (_ BitVec 64) List!54029) Unit!138938)

(assert (=> b!4777013 (= lt!1940378 (lemmaGetValueImpliesTupleContained!581 lm!2709 lt!1940371 lt!1940369))))

(declare-fun apply!12853 (ListLongMap!5081 (_ BitVec 64)) List!54029)

(assert (=> b!4777013 (= lt!1940369 (apply!12853 lm!2709 lt!1940371))))

(declare-fun contains!17411 (ListLongMap!5081 (_ BitVec 64)) Bool)

(assert (=> b!4777013 (contains!17411 lm!2709 lt!1940371)))

(declare-fun hash!4768 (Hashable!6790 K!15464) (_ BitVec 64))

(assert (=> b!4777013 (= lt!1940371 (hash!4768 hashF!1687 key!6641))))

(declare-fun lt!1940377 () Unit!138938)

(declare-fun lemmaInGenMapThenLongMapContainsHash!994 (ListLongMap!5081 K!15464 Hashable!6790) Unit!138938)

(assert (=> b!4777013 (= lt!1940377 (lemmaInGenMapThenLongMapContainsHash!994 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6139 0))(
  ( (ListMap!6140 (toList!6664 List!54029)) )
))
(declare-fun contains!17412 (ListMap!6139 K!15464) Bool)

(declare-fun extractMap!2321 (List!54030) ListMap!6139)

(assert (=> b!4777013 (contains!17412 (extractMap!2321 (toList!6663 lm!2709)) key!6641)))

(declare-fun lt!1940370 () Unit!138938)

(declare-fun lemmaListContainsThenExtractedMapContains!642 (ListLongMap!5081 K!15464 Hashable!6790) Unit!138938)

(assert (=> b!4777013 (= lt!1940370 (lemmaListContainsThenExtractedMapContains!642 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4777014 () Bool)

(declare-fun containsKey!3763 (List!54029 K!15464) Bool)

(assert (=> b!4777014 (= e!2982170 (not (containsKey!3763 (_2!31459 (h!60320 (toList!6663 lm!2709))) key!6641)))))

(assert (=> b!4777014 (not (containsKey!3763 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709)))) key!6641))))

(declare-fun lt!1940374 () Unit!138938)

(declare-fun lemmaNotSameHashThenCannotContainKey!180 (ListLongMap!5081 K!15464 (_ BitVec 64) Hashable!6790) Unit!138938)

(assert (=> b!4777014 (= lt!1940374 (lemmaNotSameHashThenCannotContainKey!180 lm!2709 key!6641 (_1!31459 (h!60320 (toList!6663 lm!2709))) hashF!1687))))

(assert (= (and start!489770 res!2027537) b!4777009))

(assert (= (and b!4777009 res!2027535) b!4777010))

(assert (= (and b!4777010 res!2027534) b!4777013))

(assert (= (and b!4777013 (not res!2027536)) b!4777012))

(assert (= (and b!4777012 (not res!2027538)) b!4777014))

(assert (= start!489770 b!4777011))

(declare-fun m!5752544 () Bool)

(assert (=> b!4777009 m!5752544))

(declare-fun m!5752546 () Bool)

(assert (=> b!4777014 m!5752546))

(declare-fun m!5752548 () Bool)

(assert (=> b!4777014 m!5752548))

(assert (=> b!4777014 m!5752548))

(declare-fun m!5752550 () Bool)

(assert (=> b!4777014 m!5752550))

(declare-fun m!5752552 () Bool)

(assert (=> b!4777014 m!5752552))

(declare-fun m!5752554 () Bool)

(assert (=> b!4777013 m!5752554))

(declare-fun m!5752556 () Bool)

(assert (=> b!4777013 m!5752556))

(declare-fun m!5752558 () Bool)

(assert (=> b!4777013 m!5752558))

(declare-fun m!5752560 () Bool)

(assert (=> b!4777013 m!5752560))

(declare-fun m!5752562 () Bool)

(assert (=> b!4777013 m!5752562))

(declare-fun m!5752564 () Bool)

(assert (=> b!4777013 m!5752564))

(declare-fun m!5752566 () Bool)

(assert (=> b!4777013 m!5752566))

(declare-fun m!5752568 () Bool)

(assert (=> b!4777013 m!5752568))

(assert (=> b!4777013 m!5752560))

(declare-fun m!5752570 () Bool)

(assert (=> b!4777013 m!5752570))

(declare-fun m!5752572 () Bool)

(assert (=> b!4777013 m!5752572))

(declare-fun m!5752574 () Bool)

(assert (=> b!4777013 m!5752574))

(assert (=> b!4777013 m!5752572))

(declare-fun m!5752576 () Bool)

(assert (=> b!4777013 m!5752576))

(declare-fun m!5752578 () Bool)

(assert (=> b!4777013 m!5752578))

(declare-fun m!5752580 () Bool)

(assert (=> b!4777013 m!5752580))

(declare-fun m!5752582 () Bool)

(assert (=> start!489770 m!5752582))

(declare-fun m!5752584 () Bool)

(assert (=> start!489770 m!5752584))

(declare-fun m!5752586 () Bool)

(assert (=> b!4777010 m!5752586))

(check-sat (not start!489770) (not b!4777010) tp_is_empty!33091 (not b!4777011) (not b!4777013) tp_is_empty!33089 (not b!4777014) (not b!4777009))
(check-sat)
(get-model)

(declare-fun d!1526528 () Bool)

(declare-fun res!2027552 () Bool)

(declare-fun e!2982187 () Bool)

(assert (=> d!1526528 (=> res!2027552 e!2982187)))

(assert (=> d!1526528 (= res!2027552 ((_ is Nil!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526528 (= (forall!12062 (toList!6663 lm!2709) lambda!227083) e!2982187)))

(declare-fun b!4777034 () Bool)

(declare-fun e!2982188 () Bool)

(assert (=> b!4777034 (= e!2982187 e!2982188)))

(declare-fun res!2027553 () Bool)

(assert (=> b!4777034 (=> (not res!2027553) (not e!2982188))))

(declare-fun dynLambda!21994 (Int tuple2!56330) Bool)

(assert (=> b!4777034 (= res!2027553 (dynLambda!21994 lambda!227083 (h!60320 (toList!6663 lm!2709))))))

(declare-fun b!4777035 () Bool)

(assert (=> b!4777035 (= e!2982188 (forall!12062 (t!361480 (toList!6663 lm!2709)) lambda!227083))))

(assert (= (and d!1526528 (not res!2027552)) b!4777034))

(assert (= (and b!4777034 res!2027553) b!4777035))

(declare-fun b_lambda!185047 () Bool)

(assert (=> (not b_lambda!185047) (not b!4777034)))

(declare-fun m!5752602 () Bool)

(assert (=> b!4777034 m!5752602))

(declare-fun m!5752604 () Bool)

(assert (=> b!4777035 m!5752604))

(assert (=> start!489770 d!1526528))

(declare-fun d!1526532 () Bool)

(declare-fun isStrictlySorted!834 (List!54030) Bool)

(assert (=> d!1526532 (= (inv!69490 lm!2709) (isStrictlySorted!834 (toList!6663 lm!2709)))))

(declare-fun bs!1150777 () Bool)

(assert (= bs!1150777 d!1526532))

(declare-fun m!5752606 () Bool)

(assert (=> bs!1150777 m!5752606))

(assert (=> start!489770 d!1526532))

(declare-fun d!1526534 () Bool)

(declare-fun res!2027561 () Bool)

(declare-fun e!2982197 () Bool)

(assert (=> d!1526534 (=> res!2027561 e!2982197)))

(declare-fun e!2982195 () Bool)

(assert (=> d!1526534 (= res!2027561 e!2982195)))

(declare-fun res!2027562 () Bool)

(assert (=> d!1526534 (=> (not res!2027562) (not e!2982195))))

(assert (=> d!1526534 (= res!2027562 ((_ is Cons!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526534 (= (containsKeyBiggerList!446 (toList!6663 lm!2709) key!6641) e!2982197)))

(declare-fun b!4777042 () Bool)

(assert (=> b!4777042 (= e!2982195 (containsKey!3763 (_2!31459 (h!60320 (toList!6663 lm!2709))) key!6641))))

(declare-fun b!4777043 () Bool)

(declare-fun e!2982196 () Bool)

(assert (=> b!4777043 (= e!2982197 e!2982196)))

(declare-fun res!2027560 () Bool)

(assert (=> b!4777043 (=> (not res!2027560) (not e!2982196))))

(assert (=> b!4777043 (= res!2027560 ((_ is Cons!53906) (toList!6663 lm!2709)))))

(declare-fun b!4777044 () Bool)

(assert (=> b!4777044 (= e!2982196 (containsKeyBiggerList!446 (t!361480 (toList!6663 lm!2709)) key!6641))))

(assert (= (and d!1526534 res!2027562) b!4777042))

(assert (= (and d!1526534 (not res!2027561)) b!4777043))

(assert (= (and b!4777043 res!2027560) b!4777044))

(assert (=> b!4777042 m!5752546))

(declare-fun m!5752608 () Bool)

(assert (=> b!4777044 m!5752608))

(assert (=> b!4777010 d!1526534))

(declare-fun bs!1150778 () Bool)

(declare-fun d!1526536 () Bool)

(assert (= bs!1150778 (and d!1526536 start!489770)))

(declare-fun lambda!227086 () Int)

(assert (=> bs!1150778 (not (= lambda!227086 lambda!227083))))

(assert (=> d!1526536 true))

(assert (=> d!1526536 (= (allKeysSameHashInMap!2195 lm!2709 hashF!1687) (forall!12062 (toList!6663 lm!2709) lambda!227086))))

(declare-fun bs!1150779 () Bool)

(assert (= bs!1150779 d!1526536))

(declare-fun m!5752610 () Bool)

(assert (=> bs!1150779 m!5752610))

(assert (=> b!4777009 d!1526536))

(declare-fun d!1526538 () Bool)

(declare-fun res!2027567 () Bool)

(declare-fun e!2982202 () Bool)

(assert (=> d!1526538 (=> res!2027567 e!2982202)))

(assert (=> d!1526538 (= res!2027567 (and ((_ is Cons!53905) (_2!31459 (h!60320 (toList!6663 lm!2709)))) (= (_1!31458 (h!60319 (_2!31459 (h!60320 (toList!6663 lm!2709))))) key!6641)))))

(assert (=> d!1526538 (= (containsKey!3763 (_2!31459 (h!60320 (toList!6663 lm!2709))) key!6641) e!2982202)))

(declare-fun b!4777051 () Bool)

(declare-fun e!2982203 () Bool)

(assert (=> b!4777051 (= e!2982202 e!2982203)))

(declare-fun res!2027568 () Bool)

(assert (=> b!4777051 (=> (not res!2027568) (not e!2982203))))

(assert (=> b!4777051 (= res!2027568 ((_ is Cons!53905) (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(declare-fun b!4777052 () Bool)

(assert (=> b!4777052 (= e!2982203 (containsKey!3763 (t!361479 (_2!31459 (h!60320 (toList!6663 lm!2709)))) key!6641))))

(assert (= (and d!1526538 (not res!2027567)) b!4777051))

(assert (= (and b!4777051 res!2027568) b!4777052))

(declare-fun m!5752612 () Bool)

(assert (=> b!4777052 m!5752612))

(assert (=> b!4777014 d!1526538))

(declare-fun d!1526540 () Bool)

(declare-fun res!2027569 () Bool)

(declare-fun e!2982204 () Bool)

(assert (=> d!1526540 (=> res!2027569 e!2982204)))

(assert (=> d!1526540 (= res!2027569 (and ((_ is Cons!53905) (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709))))) (= (_1!31458 (h!60319 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709)))))) key!6641)))))

(assert (=> d!1526540 (= (containsKey!3763 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709)))) key!6641) e!2982204)))

(declare-fun b!4777053 () Bool)

(declare-fun e!2982205 () Bool)

(assert (=> b!4777053 (= e!2982204 e!2982205)))

(declare-fun res!2027570 () Bool)

(assert (=> b!4777053 (=> (not res!2027570) (not e!2982205))))

(assert (=> b!4777053 (= res!2027570 ((_ is Cons!53905) (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709))))))))

(declare-fun b!4777054 () Bool)

(assert (=> b!4777054 (= e!2982205 (containsKey!3763 (t!361479 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709))))) key!6641))))

(assert (= (and d!1526540 (not res!2027569)) b!4777053))

(assert (= (and b!4777053 res!2027570) b!4777054))

(declare-fun m!5752614 () Bool)

(assert (=> b!4777054 m!5752614))

(assert (=> b!4777014 d!1526540))

(declare-fun d!1526542 () Bool)

(declare-datatypes ((Option!12885 0))(
  ( (None!12884) (Some!12884 (v!48057 List!54029)) )
))
(declare-fun get!18305 (Option!12885) List!54029)

(declare-fun getValueByKey!2254 (List!54030 (_ BitVec 64)) Option!12885)

(assert (=> d!1526542 (= (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709)))) (get!18305 (getValueByKey!2254 (toList!6663 lm!2709) (_1!31459 (h!60320 (toList!6663 lm!2709))))))))

(declare-fun bs!1150780 () Bool)

(assert (= bs!1150780 d!1526542))

(declare-fun m!5752616 () Bool)

(assert (=> bs!1150780 m!5752616))

(assert (=> bs!1150780 m!5752616))

(declare-fun m!5752618 () Bool)

(assert (=> bs!1150780 m!5752618))

(assert (=> b!4777014 d!1526542))

(declare-fun bs!1150781 () Bool)

(declare-fun d!1526544 () Bool)

(assert (= bs!1150781 (and d!1526544 start!489770)))

(declare-fun lambda!227089 () Int)

(assert (=> bs!1150781 (= lambda!227089 lambda!227083)))

(declare-fun bs!1150782 () Bool)

(assert (= bs!1150782 (and d!1526544 d!1526536)))

(assert (=> bs!1150782 (not (= lambda!227089 lambda!227086))))

(assert (=> d!1526544 (not (containsKey!3763 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709)))) key!6641))))

(declare-fun lt!1940413 () Unit!138938)

(declare-fun choose!34157 (ListLongMap!5081 K!15464 (_ BitVec 64) Hashable!6790) Unit!138938)

(assert (=> d!1526544 (= lt!1940413 (choose!34157 lm!2709 key!6641 (_1!31459 (h!60320 (toList!6663 lm!2709))) hashF!1687))))

(assert (=> d!1526544 (forall!12062 (toList!6663 lm!2709) lambda!227089)))

(assert (=> d!1526544 (= (lemmaNotSameHashThenCannotContainKey!180 lm!2709 key!6641 (_1!31459 (h!60320 (toList!6663 lm!2709))) hashF!1687) lt!1940413)))

(declare-fun bs!1150783 () Bool)

(assert (= bs!1150783 d!1526544))

(assert (=> bs!1150783 m!5752548))

(assert (=> bs!1150783 m!5752548))

(assert (=> bs!1150783 m!5752550))

(declare-fun m!5752620 () Bool)

(assert (=> bs!1150783 m!5752620))

(declare-fun m!5752622 () Bool)

(assert (=> bs!1150783 m!5752622))

(assert (=> b!4777014 d!1526544))

(declare-fun d!1526546 () Bool)

(declare-fun isEmpty!29327 (Option!12883) Bool)

(assert (=> d!1526546 (= (isDefined!10027 lt!1940379) (not (isEmpty!29327 lt!1940379)))))

(declare-fun bs!1150784 () Bool)

(assert (= bs!1150784 d!1526546))

(declare-fun m!5752624 () Bool)

(assert (=> bs!1150784 m!5752624))

(assert (=> b!4777013 d!1526546))

(declare-fun d!1526548 () Bool)

(declare-fun lt!1940424 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9621 (List!54030) (InoxSet tuple2!56330))

(assert (=> d!1526548 (= lt!1940424 (select (content!9621 (toList!6663 lm!2709)) lt!1940372))))

(declare-fun e!2982229 () Bool)

(assert (=> d!1526548 (= lt!1940424 e!2982229)))

(declare-fun res!2027585 () Bool)

(assert (=> d!1526548 (=> (not res!2027585) (not e!2982229))))

(assert (=> d!1526548 (= res!2027585 ((_ is Cons!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526548 (= (contains!17410 (toList!6663 lm!2709) lt!1940372) lt!1940424)))

(declare-fun b!4777086 () Bool)

(declare-fun e!2982228 () Bool)

(assert (=> b!4777086 (= e!2982229 e!2982228)))

(declare-fun res!2027584 () Bool)

(assert (=> b!4777086 (=> res!2027584 e!2982228)))

(assert (=> b!4777086 (= res!2027584 (= (h!60320 (toList!6663 lm!2709)) lt!1940372))))

(declare-fun b!4777087 () Bool)

(assert (=> b!4777087 (= e!2982228 (contains!17410 (t!361480 (toList!6663 lm!2709)) lt!1940372))))

(assert (= (and d!1526548 res!2027585) b!4777086))

(assert (= (and b!4777086 (not res!2027584)) b!4777087))

(declare-fun m!5752646 () Bool)

(assert (=> d!1526548 m!5752646))

(declare-fun m!5752648 () Bool)

(assert (=> d!1526548 m!5752648))

(declare-fun m!5752650 () Bool)

(assert (=> b!4777087 m!5752650))

(assert (=> b!4777013 d!1526548))

(declare-fun bs!1150787 () Bool)

(declare-fun d!1526552 () Bool)

(assert (= bs!1150787 (and d!1526552 start!489770)))

(declare-fun lambda!227092 () Int)

(assert (=> bs!1150787 (= lambda!227092 lambda!227083)))

(declare-fun bs!1150788 () Bool)

(assert (= bs!1150788 (and d!1526552 d!1526536)))

(assert (=> bs!1150788 (not (= lambda!227092 lambda!227086))))

(declare-fun bs!1150789 () Bool)

(assert (= bs!1150789 (and d!1526552 d!1526544)))

(assert (=> bs!1150789 (= lambda!227092 lambda!227089)))

(assert (=> d!1526552 (contains!17412 (extractMap!2321 (toList!6663 lm!2709)) key!6641)))

(declare-fun lt!1940433 () Unit!138938)

(declare-fun choose!34158 (ListLongMap!5081 K!15464 Hashable!6790) Unit!138938)

(assert (=> d!1526552 (= lt!1940433 (choose!34158 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526552 (forall!12062 (toList!6663 lm!2709) lambda!227092)))

(assert (=> d!1526552 (= (lemmaListContainsThenExtractedMapContains!642 lm!2709 key!6641 hashF!1687) lt!1940433)))

(declare-fun bs!1150790 () Bool)

(assert (= bs!1150790 d!1526552))

(assert (=> bs!1150790 m!5752572))

(assert (=> bs!1150790 m!5752572))

(assert (=> bs!1150790 m!5752574))

(declare-fun m!5752672 () Bool)

(assert (=> bs!1150790 m!5752672))

(declare-fun m!5752674 () Bool)

(assert (=> bs!1150790 m!5752674))

(assert (=> b!4777013 d!1526552))

(declare-fun d!1526560 () Bool)

(assert (=> d!1526560 (= (get!18304 lt!1940379) (v!48051 lt!1940379))))

(assert (=> b!4777013 d!1526560))

(declare-fun b!4777129 () Bool)

(declare-fun e!2982258 () Bool)

(declare-fun e!2982256 () Bool)

(assert (=> b!4777129 (= e!2982258 e!2982256)))

(declare-fun res!2027607 () Bool)

(assert (=> b!4777129 (=> (not res!2027607) (not e!2982256))))

(declare-fun lt!1940436 () Option!12883)

(assert (=> b!4777129 (= res!2027607 (isDefined!10027 lt!1940436))))

(declare-fun b!4777130 () Bool)

(declare-fun res!2027609 () Bool)

(assert (=> b!4777130 (=> (not res!2027609) (not e!2982256))))

(assert (=> b!4777130 (= res!2027609 (= (_1!31458 (get!18304 lt!1940436)) key!6641))))

(declare-fun b!4777131 () Bool)

(declare-fun e!2982259 () Option!12883)

(declare-fun e!2982255 () Option!12883)

(assert (=> b!4777131 (= e!2982259 e!2982255)))

(declare-fun c!814457 () Bool)

(assert (=> b!4777131 (= c!814457 ((_ is Cons!53905) lt!1940369))))

(declare-fun b!4777133 () Bool)

(assert (=> b!4777133 (= e!2982255 (getPair!778 (t!361479 lt!1940369) key!6641))))

(declare-fun b!4777134 () Bool)

(assert (=> b!4777134 (= e!2982255 None!12882)))

(declare-fun b!4777135 () Bool)

(assert (=> b!4777135 (= e!2982259 (Some!12882 (h!60319 lt!1940369)))))

(declare-fun b!4777136 () Bool)

(declare-fun contains!17415 (List!54029 tuple2!56328) Bool)

(assert (=> b!4777136 (= e!2982256 (contains!17415 lt!1940369 (get!18304 lt!1940436)))))

(declare-fun b!4777132 () Bool)

(declare-fun e!2982257 () Bool)

(assert (=> b!4777132 (= e!2982257 (not (containsKey!3763 lt!1940369 key!6641)))))

(declare-fun d!1526562 () Bool)

(assert (=> d!1526562 e!2982258))

(declare-fun res!2027608 () Bool)

(assert (=> d!1526562 (=> res!2027608 e!2982258)))

(assert (=> d!1526562 (= res!2027608 e!2982257)))

(declare-fun res!2027606 () Bool)

(assert (=> d!1526562 (=> (not res!2027606) (not e!2982257))))

(assert (=> d!1526562 (= res!2027606 (isEmpty!29327 lt!1940436))))

(assert (=> d!1526562 (= lt!1940436 e!2982259)))

(declare-fun c!814456 () Bool)

(assert (=> d!1526562 (= c!814456 (and ((_ is Cons!53905) lt!1940369) (= (_1!31458 (h!60319 lt!1940369)) key!6641)))))

(declare-fun noDuplicateKeys!2281 (List!54029) Bool)

(assert (=> d!1526562 (noDuplicateKeys!2281 lt!1940369)))

(assert (=> d!1526562 (= (getPair!778 lt!1940369 key!6641) lt!1940436)))

(assert (= (and d!1526562 c!814456) b!4777135))

(assert (= (and d!1526562 (not c!814456)) b!4777131))

(assert (= (and b!4777131 c!814457) b!4777133))

(assert (= (and b!4777131 (not c!814457)) b!4777134))

(assert (= (and d!1526562 res!2027606) b!4777132))

(assert (= (and d!1526562 (not res!2027608)) b!4777129))

(assert (= (and b!4777129 res!2027607) b!4777130))

(assert (= (and b!4777130 res!2027609) b!4777136))

(declare-fun m!5752676 () Bool)

(assert (=> b!4777129 m!5752676))

(declare-fun m!5752678 () Bool)

(assert (=> b!4777133 m!5752678))

(declare-fun m!5752680 () Bool)

(assert (=> b!4777132 m!5752680))

(declare-fun m!5752682 () Bool)

(assert (=> b!4777130 m!5752682))

(declare-fun m!5752684 () Bool)

(assert (=> d!1526562 m!5752684))

(declare-fun m!5752686 () Bool)

(assert (=> d!1526562 m!5752686))

(assert (=> b!4777136 m!5752682))

(assert (=> b!4777136 m!5752682))

(declare-fun m!5752688 () Bool)

(assert (=> b!4777136 m!5752688))

(assert (=> b!4777013 d!1526562))

(declare-fun b!4777161 () Bool)

(declare-fun e!2982280 () Unit!138938)

(declare-fun e!2982275 () Unit!138938)

(assert (=> b!4777161 (= e!2982280 e!2982275)))

(declare-fun c!814468 () Bool)

(declare-fun call!334594 () Bool)

(assert (=> b!4777161 (= c!814468 call!334594)))

(declare-fun b!4777163 () Bool)

(declare-fun e!2982276 () Bool)

(declare-datatypes ((List!54032 0))(
  ( (Nil!53908) (Cons!53908 (h!60322 K!15464) (t!361482 List!54032)) )
))
(declare-fun contains!17416 (List!54032 K!15464) Bool)

(declare-fun keys!19614 (ListMap!6139) List!54032)

(assert (=> b!4777163 (= e!2982276 (contains!17416 (keys!19614 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))

(declare-fun b!4777164 () Bool)

(assert (=> b!4777164 false))

(declare-fun lt!1940463 () Unit!138938)

(declare-fun lt!1940465 () Unit!138938)

(assert (=> b!4777164 (= lt!1940463 lt!1940465)))

(declare-fun containsKey!3766 (List!54029 K!15464) Bool)

(assert (=> b!4777164 (containsKey!3766 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1027 (List!54029 K!15464) Unit!138938)

(assert (=> b!4777164 (= lt!1940465 (lemmaInGetKeysListThenContainsKey!1027 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))

(declare-fun Unit!138943 () Unit!138938)

(assert (=> b!4777164 (= e!2982275 Unit!138943)))

(declare-fun b!4777165 () Bool)

(declare-fun e!2982277 () Bool)

(assert (=> b!4777165 (= e!2982277 (not (contains!17416 (keys!19614 (extractMap!2321 (toList!6663 lm!2709))) key!6641)))))

(declare-fun bm!334589 () Bool)

(declare-fun e!2982279 () List!54032)

(assert (=> bm!334589 (= call!334594 (contains!17416 e!2982279 key!6641))))

(declare-fun c!814469 () Bool)

(declare-fun c!814467 () Bool)

(assert (=> bm!334589 (= c!814469 c!814467)))

(declare-fun b!4777166 () Bool)

(declare-fun getKeysList!1028 (List!54029) List!54032)

(assert (=> b!4777166 (= e!2982279 (getKeysList!1028 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))))

(declare-fun b!4777167 () Bool)

(declare-fun lt!1940462 () Unit!138938)

(assert (=> b!4777167 (= e!2982280 lt!1940462)))

(declare-fun lt!1940464 () Unit!138938)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2049 (List!54029 K!15464) Unit!138938)

(assert (=> b!4777167 (= lt!1940464 (lemmaContainsKeyImpliesGetValueByKeyDefined!2049 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))

(declare-datatypes ((Option!12887 0))(
  ( (None!12886) (Some!12886 (v!48059 V!15710)) )
))
(declare-fun isDefined!10030 (Option!12887) Bool)

(declare-fun getValueByKey!2256 (List!54029 K!15464) Option!12887)

(assert (=> b!4777167 (isDefined!10030 (getValueByKey!2256 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))

(declare-fun lt!1940468 () Unit!138938)

(assert (=> b!4777167 (= lt!1940468 lt!1940464)))

(declare-fun lemmaInListThenGetKeysListContains!1023 (List!54029 K!15464) Unit!138938)

(assert (=> b!4777167 (= lt!1940462 (lemmaInListThenGetKeysListContains!1023 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))

(assert (=> b!4777167 call!334594))

(declare-fun b!4777168 () Bool)

(assert (=> b!4777168 (= e!2982279 (keys!19614 (extractMap!2321 (toList!6663 lm!2709))))))

(declare-fun b!4777169 () Bool)

(declare-fun Unit!138944 () Unit!138938)

(assert (=> b!4777169 (= e!2982275 Unit!138944)))

(declare-fun d!1526564 () Bool)

(declare-fun e!2982278 () Bool)

(assert (=> d!1526564 e!2982278))

(declare-fun res!2027617 () Bool)

(assert (=> d!1526564 (=> res!2027617 e!2982278)))

(assert (=> d!1526564 (= res!2027617 e!2982277)))

(declare-fun res!2027618 () Bool)

(assert (=> d!1526564 (=> (not res!2027618) (not e!2982277))))

(declare-fun lt!1940467 () Bool)

(assert (=> d!1526564 (= res!2027618 (not lt!1940467))))

(declare-fun lt!1940461 () Bool)

(assert (=> d!1526564 (= lt!1940467 lt!1940461)))

(declare-fun lt!1940466 () Unit!138938)

(assert (=> d!1526564 (= lt!1940466 e!2982280)))

(assert (=> d!1526564 (= c!814467 lt!1940461)))

(assert (=> d!1526564 (= lt!1940461 (containsKey!3766 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))

(assert (=> d!1526564 (= (contains!17412 (extractMap!2321 (toList!6663 lm!2709)) key!6641) lt!1940467)))

(declare-fun b!4777162 () Bool)

(assert (=> b!4777162 (= e!2982278 e!2982276)))

(declare-fun res!2027616 () Bool)

(assert (=> b!4777162 (=> (not res!2027616) (not e!2982276))))

(assert (=> b!4777162 (= res!2027616 (isDefined!10030 (getValueByKey!2256 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641)))))

(assert (= (and d!1526564 c!814467) b!4777167))

(assert (= (and d!1526564 (not c!814467)) b!4777161))

(assert (= (and b!4777161 c!814468) b!4777164))

(assert (= (and b!4777161 (not c!814468)) b!4777169))

(assert (= (or b!4777167 b!4777161) bm!334589))

(assert (= (and bm!334589 c!814469) b!4777166))

(assert (= (and bm!334589 (not c!814469)) b!4777168))

(assert (= (and d!1526564 res!2027618) b!4777165))

(assert (= (and d!1526564 (not res!2027617)) b!4777162))

(assert (= (and b!4777162 res!2027616) b!4777163))

(declare-fun m!5752704 () Bool)

(assert (=> b!4777167 m!5752704))

(declare-fun m!5752706 () Bool)

(assert (=> b!4777167 m!5752706))

(assert (=> b!4777167 m!5752706))

(declare-fun m!5752708 () Bool)

(assert (=> b!4777167 m!5752708))

(declare-fun m!5752710 () Bool)

(assert (=> b!4777167 m!5752710))

(declare-fun m!5752712 () Bool)

(assert (=> d!1526564 m!5752712))

(assert (=> b!4777165 m!5752572))

(declare-fun m!5752714 () Bool)

(assert (=> b!4777165 m!5752714))

(assert (=> b!4777165 m!5752714))

(declare-fun m!5752716 () Bool)

(assert (=> b!4777165 m!5752716))

(assert (=> b!4777164 m!5752712))

(declare-fun m!5752718 () Bool)

(assert (=> b!4777164 m!5752718))

(assert (=> b!4777168 m!5752572))

(assert (=> b!4777168 m!5752714))

(declare-fun m!5752720 () Bool)

(assert (=> b!4777166 m!5752720))

(assert (=> b!4777162 m!5752706))

(assert (=> b!4777162 m!5752706))

(assert (=> b!4777162 m!5752708))

(assert (=> b!4777163 m!5752572))

(assert (=> b!4777163 m!5752714))

(assert (=> b!4777163 m!5752714))

(assert (=> b!4777163 m!5752716))

(declare-fun m!5752726 () Bool)

(assert (=> bm!334589 m!5752726))

(assert (=> b!4777013 d!1526564))

(declare-fun d!1526572 () Bool)

(declare-fun hash!4772 (Hashable!6790 K!15464) (_ BitVec 64))

(assert (=> d!1526572 (= (hash!4768 hashF!1687 key!6641) (hash!4772 hashF!1687 key!6641))))

(declare-fun bs!1150799 () Bool)

(assert (= bs!1150799 d!1526572))

(declare-fun m!5752728 () Bool)

(assert (=> bs!1150799 m!5752728))

(assert (=> b!4777013 d!1526572))

(declare-fun d!1526574 () Bool)

(assert (=> d!1526574 (contains!17410 (toList!6663 lm!2709) (tuple2!56331 lt!1940371 lt!1940369))))

(declare-fun lt!1940474 () Unit!138938)

(declare-fun choose!34164 (ListLongMap!5081 (_ BitVec 64) List!54029) Unit!138938)

(assert (=> d!1526574 (= lt!1940474 (choose!34164 lm!2709 lt!1940371 lt!1940369))))

(assert (=> d!1526574 (contains!17411 lm!2709 lt!1940371)))

(assert (=> d!1526574 (= (lemmaGetValueImpliesTupleContained!581 lm!2709 lt!1940371 lt!1940369) lt!1940474)))

(declare-fun bs!1150802 () Bool)

(assert (= bs!1150802 d!1526574))

(declare-fun m!5752734 () Bool)

(assert (=> bs!1150802 m!5752734))

(declare-fun m!5752736 () Bool)

(assert (=> bs!1150802 m!5752736))

(assert (=> bs!1150802 m!5752578))

(assert (=> b!4777013 d!1526574))

(declare-fun bs!1150803 () Bool)

(declare-fun d!1526580 () Bool)

(assert (= bs!1150803 (and d!1526580 start!489770)))

(declare-fun lambda!227104 () Int)

(assert (=> bs!1150803 (= lambda!227104 lambda!227083)))

(declare-fun bs!1150804 () Bool)

(assert (= bs!1150804 (and d!1526580 d!1526536)))

(assert (=> bs!1150804 (not (= lambda!227104 lambda!227086))))

(declare-fun bs!1150805 () Bool)

(assert (= bs!1150805 (and d!1526580 d!1526544)))

(assert (=> bs!1150805 (= lambda!227104 lambda!227089)))

(declare-fun bs!1150806 () Bool)

(assert (= bs!1150806 (and d!1526580 d!1526552)))

(assert (=> bs!1150806 (= lambda!227104 lambda!227092)))

(declare-fun lt!1940478 () ListMap!6139)

(declare-fun invariantList!1684 (List!54029) Bool)

(assert (=> d!1526580 (invariantList!1684 (toList!6664 lt!1940478))))

(declare-fun e!2982286 () ListMap!6139)

(assert (=> d!1526580 (= lt!1940478 e!2982286)))

(declare-fun c!814472 () Bool)

(assert (=> d!1526580 (= c!814472 ((_ is Cons!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526580 (forall!12062 (toList!6663 lm!2709) lambda!227104)))

(assert (=> d!1526580 (= (extractMap!2321 (toList!6663 lm!2709)) lt!1940478)))

(declare-fun b!4777178 () Bool)

(declare-fun addToMapMapFromBucket!1649 (List!54029 ListMap!6139) ListMap!6139)

(assert (=> b!4777178 (= e!2982286 (addToMapMapFromBucket!1649 (_2!31459 (h!60320 (toList!6663 lm!2709))) (extractMap!2321 (t!361480 (toList!6663 lm!2709)))))))

(declare-fun b!4777179 () Bool)

(assert (=> b!4777179 (= e!2982286 (ListMap!6140 Nil!53905))))

(assert (= (and d!1526580 c!814472) b!4777178))

(assert (= (and d!1526580 (not c!814472)) b!4777179))

(declare-fun m!5752742 () Bool)

(assert (=> d!1526580 m!5752742))

(declare-fun m!5752744 () Bool)

(assert (=> d!1526580 m!5752744))

(declare-fun m!5752746 () Bool)

(assert (=> b!4777178 m!5752746))

(assert (=> b!4777178 m!5752746))

(declare-fun m!5752748 () Bool)

(assert (=> b!4777178 m!5752748))

(assert (=> b!4777013 d!1526580))

(declare-fun bs!1150807 () Bool)

(declare-fun d!1526584 () Bool)

(assert (= bs!1150807 (and d!1526584 start!489770)))

(declare-fun lambda!227107 () Int)

(assert (=> bs!1150807 (= lambda!227107 lambda!227083)))

(declare-fun bs!1150808 () Bool)

(assert (= bs!1150808 (and d!1526584 d!1526544)))

(assert (=> bs!1150808 (= lambda!227107 lambda!227089)))

(declare-fun bs!1150809 () Bool)

(assert (= bs!1150809 (and d!1526584 d!1526536)))

(assert (=> bs!1150809 (not (= lambda!227107 lambda!227086))))

(declare-fun bs!1150810 () Bool)

(assert (= bs!1150810 (and d!1526584 d!1526580)))

(assert (=> bs!1150810 (= lambda!227107 lambda!227104)))

(declare-fun bs!1150811 () Bool)

(assert (= bs!1150811 (and d!1526584 d!1526552)))

(assert (=> bs!1150811 (= lambda!227107 lambda!227092)))

(assert (=> d!1526584 (contains!17411 lm!2709 (hash!4768 hashF!1687 key!6641))))

(declare-fun lt!1940481 () Unit!138938)

(declare-fun choose!34165 (ListLongMap!5081 K!15464 Hashable!6790) Unit!138938)

(assert (=> d!1526584 (= lt!1940481 (choose!34165 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526584 (forall!12062 (toList!6663 lm!2709) lambda!227107)))

(assert (=> d!1526584 (= (lemmaInGenMapThenLongMapContainsHash!994 lm!2709 key!6641 hashF!1687) lt!1940481)))

(declare-fun bs!1150812 () Bool)

(assert (= bs!1150812 d!1526584))

(assert (=> bs!1150812 m!5752580))

(assert (=> bs!1150812 m!5752580))

(declare-fun m!5752750 () Bool)

(assert (=> bs!1150812 m!5752750))

(declare-fun m!5752752 () Bool)

(assert (=> bs!1150812 m!5752752))

(declare-fun m!5752754 () Bool)

(assert (=> bs!1150812 m!5752754))

(assert (=> b!4777013 d!1526584))

(declare-fun d!1526586 () Bool)

(declare-fun e!2982292 () Bool)

(assert (=> d!1526586 e!2982292))

(declare-fun res!2027624 () Bool)

(assert (=> d!1526586 (=> res!2027624 e!2982292)))

(declare-fun lt!1940493 () Bool)

(assert (=> d!1526586 (= res!2027624 (not lt!1940493))))

(declare-fun lt!1940490 () Bool)

(assert (=> d!1526586 (= lt!1940493 lt!1940490)))

(declare-fun lt!1940492 () Unit!138938)

(declare-fun e!2982291 () Unit!138938)

(assert (=> d!1526586 (= lt!1940492 e!2982291)))

(declare-fun c!814475 () Bool)

(assert (=> d!1526586 (= c!814475 lt!1940490)))

(declare-fun containsKey!3767 (List!54030 (_ BitVec 64)) Bool)

(assert (=> d!1526586 (= lt!1940490 (containsKey!3767 (toList!6663 lm!2709) lt!1940371))))

(assert (=> d!1526586 (= (contains!17411 lm!2709 lt!1940371) lt!1940493)))

(declare-fun b!4777186 () Bool)

(declare-fun lt!1940491 () Unit!138938)

(assert (=> b!4777186 (= e!2982291 lt!1940491)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2050 (List!54030 (_ BitVec 64)) Unit!138938)

(assert (=> b!4777186 (= lt!1940491 (lemmaContainsKeyImpliesGetValueByKeyDefined!2050 (toList!6663 lm!2709) lt!1940371))))

(declare-fun isDefined!10031 (Option!12885) Bool)

(assert (=> b!4777186 (isDefined!10031 (getValueByKey!2254 (toList!6663 lm!2709) lt!1940371))))

(declare-fun b!4777187 () Bool)

(declare-fun Unit!138945 () Unit!138938)

(assert (=> b!4777187 (= e!2982291 Unit!138945)))

(declare-fun b!4777188 () Bool)

(assert (=> b!4777188 (= e!2982292 (isDefined!10031 (getValueByKey!2254 (toList!6663 lm!2709) lt!1940371)))))

(assert (= (and d!1526586 c!814475) b!4777186))

(assert (= (and d!1526586 (not c!814475)) b!4777187))

(assert (= (and d!1526586 (not res!2027624)) b!4777188))

(declare-fun m!5752756 () Bool)

(assert (=> d!1526586 m!5752756))

(declare-fun m!5752758 () Bool)

(assert (=> b!4777186 m!5752758))

(declare-fun m!5752760 () Bool)

(assert (=> b!4777186 m!5752760))

(assert (=> b!4777186 m!5752760))

(declare-fun m!5752762 () Bool)

(assert (=> b!4777186 m!5752762))

(assert (=> b!4777188 m!5752760))

(assert (=> b!4777188 m!5752760))

(assert (=> b!4777188 m!5752762))

(assert (=> b!4777013 d!1526586))

(declare-fun d!1526588 () Bool)

(assert (=> d!1526588 (= (apply!12853 lm!2709 lt!1940371) (get!18305 (getValueByKey!2254 (toList!6663 lm!2709) lt!1940371)))))

(declare-fun bs!1150813 () Bool)

(assert (= bs!1150813 d!1526588))

(assert (=> bs!1150813 m!5752760))

(assert (=> bs!1150813 m!5752760))

(declare-fun m!5752764 () Bool)

(assert (=> bs!1150813 m!5752764))

(assert (=> b!4777013 d!1526588))

(declare-fun bs!1150826 () Bool)

(declare-fun d!1526590 () Bool)

(assert (= bs!1150826 (and d!1526590 start!489770)))

(declare-fun lambda!227124 () Int)

(assert (=> bs!1150826 (= lambda!227124 lambda!227083)))

(declare-fun bs!1150827 () Bool)

(assert (= bs!1150827 (and d!1526590 d!1526544)))

(assert (=> bs!1150827 (= lambda!227124 lambda!227089)))

(declare-fun bs!1150828 () Bool)

(assert (= bs!1150828 (and d!1526590 d!1526536)))

(assert (=> bs!1150828 (not (= lambda!227124 lambda!227086))))

(declare-fun bs!1150829 () Bool)

(assert (= bs!1150829 (and d!1526590 d!1526584)))

(assert (=> bs!1150829 (= lambda!227124 lambda!227107)))

(declare-fun bs!1150830 () Bool)

(assert (= bs!1150830 (and d!1526590 d!1526580)))

(assert (=> bs!1150830 (= lambda!227124 lambda!227104)))

(declare-fun bs!1150831 () Bool)

(assert (= bs!1150831 (and d!1526590 d!1526552)))

(assert (=> bs!1150831 (= lambda!227124 lambda!227092)))

(declare-fun e!2982326 () Bool)

(declare-fun b!4777234 () Bool)

(assert (=> b!4777234 (= e!2982326 (isDefined!10027 (getPair!778 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1940543 () Unit!138938)

(assert (=> b!4777234 (= lt!1940543 (forallContained!4019 (toList!6663 lm!2709) lambda!227124 (tuple2!56331 (hash!4768 hashF!1687 key!6641) (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))))))

(declare-fun lt!1940544 () Unit!138938)

(declare-fun lt!1940538 () Unit!138938)

(assert (=> b!4777234 (= lt!1940544 lt!1940538)))

(declare-fun lt!1940537 () (_ BitVec 64))

(declare-fun lt!1940542 () List!54029)

(assert (=> b!4777234 (contains!17410 (toList!6663 lm!2709) (tuple2!56331 lt!1940537 lt!1940542))))

(assert (=> b!4777234 (= lt!1940538 (lemmaGetValueImpliesTupleContained!581 lm!2709 lt!1940537 lt!1940542))))

(declare-fun e!2982327 () Bool)

(assert (=> b!4777234 e!2982327))

(declare-fun res!2027668 () Bool)

(assert (=> b!4777234 (=> (not res!2027668) (not e!2982327))))

(assert (=> b!4777234 (= res!2027668 (contains!17411 lm!2709 lt!1940537))))

(assert (=> b!4777234 (= lt!1940542 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))))

(assert (=> b!4777234 (= lt!1940537 (hash!4768 hashF!1687 key!6641))))

(declare-fun lt!1940540 () Unit!138938)

(declare-fun lt!1940541 () Unit!138938)

(assert (=> b!4777234 (= lt!1940540 lt!1940541)))

(assert (=> b!4777234 (contains!17411 lm!2709 (hash!4768 hashF!1687 key!6641))))

(assert (=> b!4777234 (= lt!1940541 (lemmaInGenMapThenLongMapContainsHash!994 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4777233 () Bool)

(declare-fun res!2027671 () Bool)

(assert (=> b!4777233 (=> (not res!2027671) (not e!2982326))))

(assert (=> b!4777233 (= res!2027671 (contains!17412 (extractMap!2321 (toList!6663 lm!2709)) key!6641))))

(declare-fun b!4777232 () Bool)

(declare-fun res!2027669 () Bool)

(assert (=> b!4777232 (=> (not res!2027669) (not e!2982326))))

(assert (=> b!4777232 (= res!2027669 (allKeysSameHashInMap!2195 lm!2709 hashF!1687))))

(assert (=> d!1526590 e!2982326))

(declare-fun res!2027670 () Bool)

(assert (=> d!1526590 (=> (not res!2027670) (not e!2982326))))

(assert (=> d!1526590 (= res!2027670 (forall!12062 (toList!6663 lm!2709) lambda!227124))))

(declare-fun lt!1940539 () Unit!138938)

(declare-fun choose!34167 (ListLongMap!5081 K!15464 Hashable!6790) Unit!138938)

(assert (=> d!1526590 (= lt!1940539 (choose!34167 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526590 (forall!12062 (toList!6663 lm!2709) lambda!227124)))

(assert (=> d!1526590 (= (lemmaInGenMapThenGetPairDefined!552 lm!2709 key!6641 hashF!1687) lt!1940539)))

(declare-fun b!4777235 () Bool)

(assert (=> b!4777235 (= e!2982327 (= (getValueByKey!2254 (toList!6663 lm!2709) lt!1940537) (Some!12884 lt!1940542)))))

(assert (= (and d!1526590 res!2027670) b!4777232))

(assert (= (and b!4777232 res!2027669) b!4777233))

(assert (= (and b!4777233 res!2027671) b!4777234))

(assert (= (and b!4777234 res!2027668) b!4777235))

(declare-fun m!5752806 () Bool)

(assert (=> b!4777235 m!5752806))

(assert (=> b!4777233 m!5752572))

(assert (=> b!4777233 m!5752572))

(assert (=> b!4777233 m!5752574))

(assert (=> b!4777232 m!5752544))

(declare-fun m!5752808 () Bool)

(assert (=> d!1526590 m!5752808))

(declare-fun m!5752810 () Bool)

(assert (=> d!1526590 m!5752810))

(assert (=> d!1526590 m!5752808))

(declare-fun m!5752812 () Bool)

(assert (=> b!4777234 m!5752812))

(assert (=> b!4777234 m!5752580))

(declare-fun m!5752814 () Bool)

(assert (=> b!4777234 m!5752814))

(declare-fun m!5752816 () Bool)

(assert (=> b!4777234 m!5752816))

(declare-fun m!5752818 () Bool)

(assert (=> b!4777234 m!5752818))

(assert (=> b!4777234 m!5752580))

(declare-fun m!5752820 () Bool)

(assert (=> b!4777234 m!5752820))

(assert (=> b!4777234 m!5752814))

(assert (=> b!4777234 m!5752816))

(declare-fun m!5752822 () Bool)

(assert (=> b!4777234 m!5752822))

(declare-fun m!5752824 () Bool)

(assert (=> b!4777234 m!5752824))

(assert (=> b!4777234 m!5752580))

(assert (=> b!4777234 m!5752750))

(assert (=> b!4777234 m!5752570))

(assert (=> b!4777013 d!1526590))

(declare-fun d!1526608 () Bool)

(assert (=> d!1526608 (dynLambda!21994 lambda!227083 lt!1940372)))

(declare-fun lt!1940547 () Unit!138938)

(declare-fun choose!34168 (List!54030 Int tuple2!56330) Unit!138938)

(assert (=> d!1526608 (= lt!1940547 (choose!34168 (toList!6663 lm!2709) lambda!227083 lt!1940372))))

(declare-fun e!2982333 () Bool)

(assert (=> d!1526608 e!2982333))

(declare-fun res!2027674 () Bool)

(assert (=> d!1526608 (=> (not res!2027674) (not e!2982333))))

(assert (=> d!1526608 (= res!2027674 (forall!12062 (toList!6663 lm!2709) lambda!227083))))

(assert (=> d!1526608 (= (forallContained!4019 (toList!6663 lm!2709) lambda!227083 lt!1940372) lt!1940547)))

(declare-fun b!4777245 () Bool)

(assert (=> b!4777245 (= e!2982333 (contains!17410 (toList!6663 lm!2709) lt!1940372))))

(assert (= (and d!1526608 res!2027674) b!4777245))

(declare-fun b_lambda!185057 () Bool)

(assert (=> (not b_lambda!185057) (not d!1526608)))

(declare-fun m!5752832 () Bool)

(assert (=> d!1526608 m!5752832))

(declare-fun m!5752834 () Bool)

(assert (=> d!1526608 m!5752834))

(assert (=> d!1526608 m!5752582))

(assert (=> b!4777245 m!5752562))

(assert (=> b!4777013 d!1526608))

(declare-fun b!4777250 () Bool)

(declare-fun e!2982336 () Bool)

(declare-fun tp!1357197 () Bool)

(declare-fun tp!1357198 () Bool)

(assert (=> b!4777250 (= e!2982336 (and tp!1357197 tp!1357198))))

(assert (=> b!4777011 (= tp!1357186 e!2982336)))

(assert (= (and b!4777011 ((_ is Cons!53906) (toList!6663 lm!2709))) b!4777250))

(declare-fun b_lambda!185059 () Bool)

(assert (= b_lambda!185057 (or start!489770 b_lambda!185059)))

(declare-fun bs!1150841 () Bool)

(declare-fun d!1526614 () Bool)

(assert (= bs!1150841 (and d!1526614 start!489770)))

(assert (=> bs!1150841 (= (dynLambda!21994 lambda!227083 lt!1940372) (noDuplicateKeys!2281 (_2!31459 lt!1940372)))))

(declare-fun m!5752836 () Bool)

(assert (=> bs!1150841 m!5752836))

(assert (=> d!1526608 d!1526614))

(declare-fun b_lambda!185061 () Bool)

(assert (= b_lambda!185047 (or start!489770 b_lambda!185061)))

(declare-fun bs!1150842 () Bool)

(declare-fun d!1526616 () Bool)

(assert (= bs!1150842 (and d!1526616 start!489770)))

(assert (=> bs!1150842 (= (dynLambda!21994 lambda!227083 (h!60320 (toList!6663 lm!2709))) (noDuplicateKeys!2281 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(declare-fun m!5752838 () Bool)

(assert (=> bs!1150842 m!5752838))

(assert (=> b!4777034 d!1526616))

(check-sat (not b!4777054) (not d!1526548) (not b!4777186) (not b!4777162) (not d!1526572) (not d!1526532) (not b!4777245) (not b!4777232) (not b!4777052) (not b!4777188) (not b!4777136) (not d!1526552) (not d!1526580) (not d!1526546) (not b_lambda!185059) (not d!1526542) (not b!4777168) (not b!4777042) (not b!4777167) (not d!1526574) (not d!1526586) (not b!4777178) (not b!4777233) (not b!4777165) (not d!1526562) (not b!4777087) (not b!4777166) (not b!4777035) (not d!1526536) (not d!1526608) (not b_lambda!185061) (not b!4777132) (not b!4777044) (not b!4777163) tp_is_empty!33091 (not b!4777234) (not b!4777164) (not bs!1150842) (not d!1526584) (not d!1526588) (not d!1526590) tp_is_empty!33089 (not d!1526564) (not b!4777130) (not b!4777129) (not bs!1150841) (not d!1526544) (not bm!334589) (not b!4777250) (not b!4777133) (not b!4777235))
(check-sat)
(get-model)

(declare-fun d!1526618 () Bool)

(declare-fun lt!1940548 () Bool)

(assert (=> d!1526618 (= lt!1940548 (select (content!9621 (t!361480 (toList!6663 lm!2709))) lt!1940372))))

(declare-fun e!2982338 () Bool)

(assert (=> d!1526618 (= lt!1940548 e!2982338)))

(declare-fun res!2027676 () Bool)

(assert (=> d!1526618 (=> (not res!2027676) (not e!2982338))))

(assert (=> d!1526618 (= res!2027676 ((_ is Cons!53906) (t!361480 (toList!6663 lm!2709))))))

(assert (=> d!1526618 (= (contains!17410 (t!361480 (toList!6663 lm!2709)) lt!1940372) lt!1940548)))

(declare-fun b!4777251 () Bool)

(declare-fun e!2982337 () Bool)

(assert (=> b!4777251 (= e!2982338 e!2982337)))

(declare-fun res!2027675 () Bool)

(assert (=> b!4777251 (=> res!2027675 e!2982337)))

(assert (=> b!4777251 (= res!2027675 (= (h!60320 (t!361480 (toList!6663 lm!2709))) lt!1940372))))

(declare-fun b!4777252 () Bool)

(assert (=> b!4777252 (= e!2982337 (contains!17410 (t!361480 (t!361480 (toList!6663 lm!2709))) lt!1940372))))

(assert (= (and d!1526618 res!2027676) b!4777251))

(assert (= (and b!4777251 (not res!2027675)) b!4777252))

(declare-fun m!5752840 () Bool)

(assert (=> d!1526618 m!5752840))

(declare-fun m!5752842 () Bool)

(assert (=> d!1526618 m!5752842))

(declare-fun m!5752844 () Bool)

(assert (=> b!4777252 m!5752844))

(assert (=> b!4777087 d!1526618))

(declare-fun d!1526620 () Bool)

(declare-fun isEmpty!29329 (Option!12885) Bool)

(assert (=> d!1526620 (= (isDefined!10031 (getValueByKey!2254 (toList!6663 lm!2709) lt!1940371)) (not (isEmpty!29329 (getValueByKey!2254 (toList!6663 lm!2709) lt!1940371))))))

(declare-fun bs!1150843 () Bool)

(assert (= bs!1150843 d!1526620))

(assert (=> bs!1150843 m!5752760))

(declare-fun m!5752846 () Bool)

(assert (=> bs!1150843 m!5752846))

(assert (=> b!4777188 d!1526620))

(declare-fun b!4777261 () Bool)

(declare-fun e!2982343 () Option!12885)

(assert (=> b!4777261 (= e!2982343 (Some!12884 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(declare-fun b!4777264 () Bool)

(declare-fun e!2982344 () Option!12885)

(assert (=> b!4777264 (= e!2982344 None!12884)))

(declare-fun d!1526622 () Bool)

(declare-fun c!814480 () Bool)

(assert (=> d!1526622 (= c!814480 (and ((_ is Cons!53906) (toList!6663 lm!2709)) (= (_1!31459 (h!60320 (toList!6663 lm!2709))) lt!1940371)))))

(assert (=> d!1526622 (= (getValueByKey!2254 (toList!6663 lm!2709) lt!1940371) e!2982343)))

(declare-fun b!4777262 () Bool)

(assert (=> b!4777262 (= e!2982343 e!2982344)))

(declare-fun c!814481 () Bool)

(assert (=> b!4777262 (= c!814481 (and ((_ is Cons!53906) (toList!6663 lm!2709)) (not (= (_1!31459 (h!60320 (toList!6663 lm!2709))) lt!1940371))))))

(declare-fun b!4777263 () Bool)

(assert (=> b!4777263 (= e!2982344 (getValueByKey!2254 (t!361480 (toList!6663 lm!2709)) lt!1940371))))

(assert (= (and d!1526622 c!814480) b!4777261))

(assert (= (and d!1526622 (not c!814480)) b!4777262))

(assert (= (and b!4777262 c!814481) b!4777263))

(assert (= (and b!4777262 (not c!814481)) b!4777264))

(declare-fun m!5752848 () Bool)

(assert (=> b!4777263 m!5752848))

(assert (=> b!4777188 d!1526622))

(declare-fun d!1526624 () Bool)

(declare-fun e!2982346 () Bool)

(assert (=> d!1526624 e!2982346))

(declare-fun res!2027677 () Bool)

(assert (=> d!1526624 (=> res!2027677 e!2982346)))

(declare-fun lt!1940552 () Bool)

(assert (=> d!1526624 (= res!2027677 (not lt!1940552))))

(declare-fun lt!1940549 () Bool)

(assert (=> d!1526624 (= lt!1940552 lt!1940549)))

(declare-fun lt!1940551 () Unit!138938)

(declare-fun e!2982345 () Unit!138938)

(assert (=> d!1526624 (= lt!1940551 e!2982345)))

(declare-fun c!814482 () Bool)

(assert (=> d!1526624 (= c!814482 lt!1940549)))

(assert (=> d!1526624 (= lt!1940549 (containsKey!3767 (toList!6663 lm!2709) (hash!4768 hashF!1687 key!6641)))))

(assert (=> d!1526624 (= (contains!17411 lm!2709 (hash!4768 hashF!1687 key!6641)) lt!1940552)))

(declare-fun b!4777265 () Bool)

(declare-fun lt!1940550 () Unit!138938)

(assert (=> b!4777265 (= e!2982345 lt!1940550)))

(assert (=> b!4777265 (= lt!1940550 (lemmaContainsKeyImpliesGetValueByKeyDefined!2050 (toList!6663 lm!2709) (hash!4768 hashF!1687 key!6641)))))

(assert (=> b!4777265 (isDefined!10031 (getValueByKey!2254 (toList!6663 lm!2709) (hash!4768 hashF!1687 key!6641)))))

(declare-fun b!4777266 () Bool)

(declare-fun Unit!138946 () Unit!138938)

(assert (=> b!4777266 (= e!2982345 Unit!138946)))

(declare-fun b!4777267 () Bool)

(assert (=> b!4777267 (= e!2982346 (isDefined!10031 (getValueByKey!2254 (toList!6663 lm!2709) (hash!4768 hashF!1687 key!6641))))))

(assert (= (and d!1526624 c!814482) b!4777265))

(assert (= (and d!1526624 (not c!814482)) b!4777266))

(assert (= (and d!1526624 (not res!2027677)) b!4777267))

(assert (=> d!1526624 m!5752580))

(declare-fun m!5752850 () Bool)

(assert (=> d!1526624 m!5752850))

(assert (=> b!4777265 m!5752580))

(declare-fun m!5752852 () Bool)

(assert (=> b!4777265 m!5752852))

(assert (=> b!4777265 m!5752580))

(declare-fun m!5752854 () Bool)

(assert (=> b!4777265 m!5752854))

(assert (=> b!4777265 m!5752854))

(declare-fun m!5752856 () Bool)

(assert (=> b!4777265 m!5752856))

(assert (=> b!4777267 m!5752580))

(assert (=> b!4777267 m!5752854))

(assert (=> b!4777267 m!5752854))

(assert (=> b!4777267 m!5752856))

(assert (=> d!1526584 d!1526624))

(assert (=> d!1526584 d!1526572))

(declare-fun d!1526626 () Bool)

(assert (=> d!1526626 (contains!17411 lm!2709 (hash!4768 hashF!1687 key!6641))))

(assert (=> d!1526626 true))

(declare-fun _$27!1578 () Unit!138938)

(assert (=> d!1526626 (= (choose!34165 lm!2709 key!6641 hashF!1687) _$27!1578)))

(declare-fun bs!1150844 () Bool)

(assert (= bs!1150844 d!1526626))

(assert (=> bs!1150844 m!5752580))

(assert (=> bs!1150844 m!5752580))

(assert (=> bs!1150844 m!5752750))

(assert (=> d!1526584 d!1526626))

(declare-fun d!1526628 () Bool)

(declare-fun res!2027678 () Bool)

(declare-fun e!2982347 () Bool)

(assert (=> d!1526628 (=> res!2027678 e!2982347)))

(assert (=> d!1526628 (= res!2027678 ((_ is Nil!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526628 (= (forall!12062 (toList!6663 lm!2709) lambda!227107) e!2982347)))

(declare-fun b!4777268 () Bool)

(declare-fun e!2982348 () Bool)

(assert (=> b!4777268 (= e!2982347 e!2982348)))

(declare-fun res!2027679 () Bool)

(assert (=> b!4777268 (=> (not res!2027679) (not e!2982348))))

(assert (=> b!4777268 (= res!2027679 (dynLambda!21994 lambda!227107 (h!60320 (toList!6663 lm!2709))))))

(declare-fun b!4777269 () Bool)

(assert (=> b!4777269 (= e!2982348 (forall!12062 (t!361480 (toList!6663 lm!2709)) lambda!227107))))

(assert (= (and d!1526628 (not res!2027678)) b!4777268))

(assert (= (and b!4777268 res!2027679) b!4777269))

(declare-fun b_lambda!185063 () Bool)

(assert (=> (not b_lambda!185063) (not b!4777268)))

(declare-fun m!5752858 () Bool)

(assert (=> b!4777268 m!5752858))

(declare-fun m!5752860 () Bool)

(assert (=> b!4777269 m!5752860))

(assert (=> d!1526584 d!1526628))

(declare-fun d!1526630 () Bool)

(declare-fun res!2027680 () Bool)

(declare-fun e!2982349 () Bool)

(assert (=> d!1526630 (=> res!2027680 e!2982349)))

(assert (=> d!1526630 (= res!2027680 ((_ is Nil!53906) (t!361480 (toList!6663 lm!2709))))))

(assert (=> d!1526630 (= (forall!12062 (t!361480 (toList!6663 lm!2709)) lambda!227083) e!2982349)))

(declare-fun b!4777270 () Bool)

(declare-fun e!2982350 () Bool)

(assert (=> b!4777270 (= e!2982349 e!2982350)))

(declare-fun res!2027681 () Bool)

(assert (=> b!4777270 (=> (not res!2027681) (not e!2982350))))

(assert (=> b!4777270 (= res!2027681 (dynLambda!21994 lambda!227083 (h!60320 (t!361480 (toList!6663 lm!2709)))))))

(declare-fun b!4777271 () Bool)

(assert (=> b!4777271 (= e!2982350 (forall!12062 (t!361480 (t!361480 (toList!6663 lm!2709))) lambda!227083))))

(assert (= (and d!1526630 (not res!2027680)) b!4777270))

(assert (= (and b!4777270 res!2027681) b!4777271))

(declare-fun b_lambda!185065 () Bool)

(assert (=> (not b_lambda!185065) (not b!4777270)))

(declare-fun m!5752862 () Bool)

(assert (=> b!4777270 m!5752862))

(declare-fun m!5752864 () Bool)

(assert (=> b!4777271 m!5752864))

(assert (=> b!4777035 d!1526630))

(declare-fun b!4777290 () Bool)

(assert (=> b!4777290 true))

(declare-fun bs!1150845 () Bool)

(declare-fun b!4777297 () Bool)

(assert (= bs!1150845 (and b!4777297 b!4777290)))

(declare-fun lambda!227137 () Int)

(declare-fun lambda!227136 () Int)

(assert (=> bs!1150845 (= (= (Cons!53905 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))) (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))) (= lambda!227137 lambda!227136))))

(assert (=> b!4777297 true))

(declare-fun bs!1150846 () Bool)

(declare-fun b!4777293 () Bool)

(assert (= bs!1150846 (and b!4777293 b!4777290)))

(declare-fun lambda!227138 () Int)

(assert (=> bs!1150846 (= (= (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))) (= lambda!227138 lambda!227136))))

(declare-fun bs!1150847 () Bool)

(assert (= bs!1150847 (and b!4777293 b!4777297)))

(assert (=> bs!1150847 (= (= (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) (Cons!53905 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))) (= lambda!227138 lambda!227137))))

(assert (=> b!4777293 true))

(assert (=> b!4777290 false))

(declare-fun lt!1940570 () Unit!138938)

(declare-fun forallContained!4020 (List!54032 Int K!15464) Unit!138938)

(assert (=> b!4777290 (= lt!1940570 (forallContained!4020 (getKeysList!1028 (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))) lambda!227136 (_1!31458 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))))))

(declare-fun e!2982361 () Unit!138938)

(declare-fun Unit!138947 () Unit!138938)

(assert (=> b!4777290 (= e!2982361 Unit!138947)))

(declare-fun b!4777291 () Bool)

(declare-fun res!2027688 () Bool)

(declare-fun e!2982359 () Bool)

(assert (=> b!4777291 (=> (not res!2027688) (not e!2982359))))

(declare-fun lt!1940568 () List!54032)

(declare-fun length!636 (List!54032) Int)

(declare-fun length!637 (List!54029) Int)

(assert (=> b!4777291 (= res!2027688 (= (length!636 lt!1940568) (length!637 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))))))

(declare-fun b!4777292 () Bool)

(declare-fun e!2982362 () List!54032)

(assert (=> b!4777292 (= e!2982362 Nil!53908)))

(declare-fun res!2027690 () Bool)

(assert (=> b!4777293 (=> (not res!2027690) (not e!2982359))))

(declare-fun forall!12063 (List!54032 Int) Bool)

(assert (=> b!4777293 (= res!2027690 (forall!12063 lt!1940568 lambda!227138))))

(declare-fun b!4777294 () Bool)

(assert (=> b!4777294 false))

(declare-fun e!2982360 () Unit!138938)

(declare-fun Unit!138948 () Unit!138938)

(assert (=> b!4777294 (= e!2982360 Unit!138948)))

(declare-fun lambda!227139 () Int)

(declare-fun b!4777295 () Bool)

(declare-fun content!9622 (List!54032) (InoxSet K!15464))

(declare-fun map!12146 (List!54029 Int) List!54032)

(assert (=> b!4777295 (= e!2982359 (= (content!9622 lt!1940568) (content!9622 (map!12146 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) lambda!227139))))))

(declare-fun b!4777296 () Bool)

(declare-fun Unit!138949 () Unit!138938)

(assert (=> b!4777296 (= e!2982361 Unit!138949)))

(assert (=> b!4777297 (= e!2982362 (Cons!53908 (_1!31458 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))) (getKeysList!1028 (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))))))

(declare-fun c!814489 () Bool)

(assert (=> b!4777297 (= c!814489 (containsKey!3766 (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) (_1!31458 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))))))

(declare-fun lt!1940567 () Unit!138938)

(assert (=> b!4777297 (= lt!1940567 e!2982360)))

(declare-fun c!814490 () Bool)

(assert (=> b!4777297 (= c!814490 (contains!17416 (getKeysList!1028 (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))) (_1!31458 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))))))

(declare-fun lt!1940571 () Unit!138938)

(assert (=> b!4777297 (= lt!1940571 e!2982361)))

(declare-fun lt!1940573 () List!54032)

(assert (=> b!4777297 (= lt!1940573 (getKeysList!1028 (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))))))

(declare-fun lt!1940572 () Unit!138938)

(declare-fun lemmaForallContainsAddHeadPreserves!308 (List!54029 List!54032 tuple2!56328) Unit!138938)

(assert (=> b!4777297 (= lt!1940572 (lemmaForallContainsAddHeadPreserves!308 (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) lt!1940573 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))))))

(assert (=> b!4777297 (forall!12063 lt!1940573 lambda!227137)))

(declare-fun lt!1940569 () Unit!138938)

(assert (=> b!4777297 (= lt!1940569 lt!1940572)))

(declare-fun b!4777298 () Bool)

(declare-fun Unit!138950 () Unit!138938)

(assert (=> b!4777298 (= e!2982360 Unit!138950)))

(declare-fun d!1526632 () Bool)

(assert (=> d!1526632 e!2982359))

(declare-fun res!2027689 () Bool)

(assert (=> d!1526632 (=> (not res!2027689) (not e!2982359))))

(declare-fun noDuplicate!890 (List!54032) Bool)

(assert (=> d!1526632 (= res!2027689 (noDuplicate!890 lt!1940568))))

(assert (=> d!1526632 (= lt!1940568 e!2982362)))

(declare-fun c!814491 () Bool)

(assert (=> d!1526632 (= c!814491 ((_ is Cons!53905) (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))))

(assert (=> d!1526632 (invariantList!1684 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))))

(assert (=> d!1526632 (= (getKeysList!1028 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) lt!1940568)))

(assert (= (and d!1526632 c!814491) b!4777297))

(assert (= (and d!1526632 (not c!814491)) b!4777292))

(assert (= (and b!4777297 c!814489) b!4777294))

(assert (= (and b!4777297 (not c!814489)) b!4777298))

(assert (= (and b!4777297 c!814490) b!4777290))

(assert (= (and b!4777297 (not c!814490)) b!4777296))

(assert (= (and d!1526632 res!2027689) b!4777291))

(assert (= (and b!4777291 res!2027688) b!4777293))

(assert (= (and b!4777293 res!2027690) b!4777295))

(declare-fun m!5752866 () Bool)

(assert (=> d!1526632 m!5752866))

(declare-fun m!5752868 () Bool)

(assert (=> d!1526632 m!5752868))

(declare-fun m!5752870 () Bool)

(assert (=> b!4777295 m!5752870))

(declare-fun m!5752872 () Bool)

(assert (=> b!4777295 m!5752872))

(assert (=> b!4777295 m!5752872))

(declare-fun m!5752874 () Bool)

(assert (=> b!4777295 m!5752874))

(declare-fun m!5752876 () Bool)

(assert (=> b!4777297 m!5752876))

(declare-fun m!5752878 () Bool)

(assert (=> b!4777297 m!5752878))

(declare-fun m!5752880 () Bool)

(assert (=> b!4777297 m!5752880))

(declare-fun m!5752882 () Bool)

(assert (=> b!4777297 m!5752882))

(assert (=> b!4777297 m!5752876))

(declare-fun m!5752884 () Bool)

(assert (=> b!4777297 m!5752884))

(assert (=> b!4777290 m!5752876))

(assert (=> b!4777290 m!5752876))

(declare-fun m!5752886 () Bool)

(assert (=> b!4777290 m!5752886))

(declare-fun m!5752888 () Bool)

(assert (=> b!4777291 m!5752888))

(declare-fun m!5752890 () Bool)

(assert (=> b!4777291 m!5752890))

(declare-fun m!5752892 () Bool)

(assert (=> b!4777293 m!5752892))

(assert (=> b!4777166 d!1526632))

(declare-fun d!1526634 () Bool)

(assert (=> d!1526634 (= (isEmpty!29327 lt!1940379) (not ((_ is Some!12882) lt!1940379)))))

(assert (=> d!1526546 d!1526634))

(declare-fun d!1526636 () Bool)

(declare-fun lt!1940576 () Bool)

(assert (=> d!1526636 (= lt!1940576 (select (content!9622 e!2982279) key!6641))))

(declare-fun e!2982367 () Bool)

(assert (=> d!1526636 (= lt!1940576 e!2982367)))

(declare-fun res!2027696 () Bool)

(assert (=> d!1526636 (=> (not res!2027696) (not e!2982367))))

(assert (=> d!1526636 (= res!2027696 ((_ is Cons!53908) e!2982279))))

(assert (=> d!1526636 (= (contains!17416 e!2982279 key!6641) lt!1940576)))

(declare-fun b!4777305 () Bool)

(declare-fun e!2982368 () Bool)

(assert (=> b!4777305 (= e!2982367 e!2982368)))

(declare-fun res!2027695 () Bool)

(assert (=> b!4777305 (=> res!2027695 e!2982368)))

(assert (=> b!4777305 (= res!2027695 (= (h!60322 e!2982279) key!6641))))

(declare-fun b!4777306 () Bool)

(assert (=> b!4777306 (= e!2982368 (contains!17416 (t!361482 e!2982279) key!6641))))

(assert (= (and d!1526636 res!2027696) b!4777305))

(assert (= (and b!4777305 (not res!2027695)) b!4777306))

(declare-fun m!5752894 () Bool)

(assert (=> d!1526636 m!5752894))

(declare-fun m!5752896 () Bool)

(assert (=> d!1526636 m!5752896))

(declare-fun m!5752898 () Bool)

(assert (=> b!4777306 m!5752898))

(assert (=> bm!334589 d!1526636))

(declare-fun d!1526638 () Bool)

(declare-fun res!2027701 () Bool)

(declare-fun e!2982373 () Bool)

(assert (=> d!1526638 (=> res!2027701 e!2982373)))

(assert (=> d!1526638 (= res!2027701 (not ((_ is Cons!53905) (_2!31459 lt!1940372))))))

(assert (=> d!1526638 (= (noDuplicateKeys!2281 (_2!31459 lt!1940372)) e!2982373)))

(declare-fun b!4777311 () Bool)

(declare-fun e!2982374 () Bool)

(assert (=> b!4777311 (= e!2982373 e!2982374)))

(declare-fun res!2027702 () Bool)

(assert (=> b!4777311 (=> (not res!2027702) (not e!2982374))))

(assert (=> b!4777311 (= res!2027702 (not (containsKey!3763 (t!361479 (_2!31459 lt!1940372)) (_1!31458 (h!60319 (_2!31459 lt!1940372))))))))

(declare-fun b!4777312 () Bool)

(assert (=> b!4777312 (= e!2982374 (noDuplicateKeys!2281 (t!361479 (_2!31459 lt!1940372))))))

(assert (= (and d!1526638 (not res!2027701)) b!4777311))

(assert (= (and b!4777311 res!2027702) b!4777312))

(declare-fun m!5752900 () Bool)

(assert (=> b!4777311 m!5752900))

(declare-fun m!5752902 () Bool)

(assert (=> b!4777312 m!5752902))

(assert (=> bs!1150841 d!1526638))

(assert (=> b!4777042 d!1526538))

(declare-fun d!1526642 () Bool)

(declare-fun res!2027703 () Bool)

(declare-fun e!2982375 () Bool)

(assert (=> d!1526642 (=> res!2027703 e!2982375)))

(assert (=> d!1526642 (= res!2027703 (and ((_ is Cons!53905) (t!361479 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709)))))) (= (_1!31458 (h!60319 (t!361479 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709))))))) key!6641)))))

(assert (=> d!1526642 (= (containsKey!3763 (t!361479 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709))))) key!6641) e!2982375)))

(declare-fun b!4777313 () Bool)

(declare-fun e!2982376 () Bool)

(assert (=> b!4777313 (= e!2982375 e!2982376)))

(declare-fun res!2027704 () Bool)

(assert (=> b!4777313 (=> (not res!2027704) (not e!2982376))))

(assert (=> b!4777313 (= res!2027704 ((_ is Cons!53905) (t!361479 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709)))))))))

(declare-fun b!4777314 () Bool)

(assert (=> b!4777314 (= e!2982376 (containsKey!3763 (t!361479 (t!361479 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709)))))) key!6641))))

(assert (= (and d!1526642 (not res!2027703)) b!4777313))

(assert (= (and b!4777313 res!2027704) b!4777314))

(declare-fun m!5752904 () Bool)

(assert (=> b!4777314 m!5752904))

(assert (=> b!4777054 d!1526642))

(declare-fun bs!1150850 () Bool)

(declare-fun b!4777333 () Bool)

(assert (= bs!1150850 (and b!4777333 b!4777290)))

(declare-fun lambda!227144 () Int)

(assert (=> bs!1150850 (= (= (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))) (= lambda!227144 lambda!227136))))

(declare-fun bs!1150851 () Bool)

(assert (= bs!1150851 (and b!4777333 b!4777297)))

(assert (=> bs!1150851 (= (= (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) (Cons!53905 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))) (= lambda!227144 lambda!227137))))

(declare-fun bs!1150852 () Bool)

(assert (= bs!1150852 (and b!4777333 b!4777293)))

(assert (=> bs!1150852 (= lambda!227144 lambda!227138)))

(assert (=> b!4777333 true))

(declare-fun bs!1150853 () Bool)

(declare-fun b!4777334 () Bool)

(assert (= bs!1150853 (and b!4777334 b!4777295)))

(declare-fun lambda!227145 () Int)

(assert (=> bs!1150853 (= lambda!227145 lambda!227139)))

(declare-fun d!1526644 () Bool)

(declare-fun e!2982389 () Bool)

(assert (=> d!1526644 e!2982389))

(declare-fun res!2027721 () Bool)

(assert (=> d!1526644 (=> (not res!2027721) (not e!2982389))))

(declare-fun lt!1940583 () List!54032)

(assert (=> d!1526644 (= res!2027721 (noDuplicate!890 lt!1940583))))

(assert (=> d!1526644 (= lt!1940583 (getKeysList!1028 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))))

(assert (=> d!1526644 (= (keys!19614 (extractMap!2321 (toList!6663 lm!2709))) lt!1940583)))

(declare-fun b!4777332 () Bool)

(declare-fun res!2027722 () Bool)

(assert (=> b!4777332 (=> (not res!2027722) (not e!2982389))))

(assert (=> b!4777332 (= res!2027722 (= (length!636 lt!1940583) (length!637 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))))))

(declare-fun res!2027720 () Bool)

(assert (=> b!4777333 (=> (not res!2027720) (not e!2982389))))

(assert (=> b!4777333 (= res!2027720 (forall!12063 lt!1940583 lambda!227144))))

(assert (=> b!4777334 (= e!2982389 (= (content!9622 lt!1940583) (content!9622 (map!12146 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) lambda!227145))))))

(assert (= (and d!1526644 res!2027721) b!4777332))

(assert (= (and b!4777332 res!2027722) b!4777333))

(assert (= (and b!4777333 res!2027720) b!4777334))

(declare-fun m!5752924 () Bool)

(assert (=> d!1526644 m!5752924))

(assert (=> d!1526644 m!5752720))

(declare-fun m!5752926 () Bool)

(assert (=> b!4777332 m!5752926))

(assert (=> b!4777332 m!5752890))

(declare-fun m!5752928 () Bool)

(assert (=> b!4777333 m!5752928))

(declare-fun m!5752930 () Bool)

(assert (=> b!4777334 m!5752930))

(declare-fun m!5752932 () Bool)

(assert (=> b!4777334 m!5752932))

(assert (=> b!4777334 m!5752932))

(declare-fun m!5752934 () Bool)

(assert (=> b!4777334 m!5752934))

(assert (=> b!4777168 d!1526644))

(declare-fun d!1526658 () Bool)

(assert (=> d!1526658 (isDefined!10030 (getValueByKey!2256 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))

(declare-fun lt!1940586 () Unit!138938)

(declare-fun choose!34169 (List!54029 K!15464) Unit!138938)

(assert (=> d!1526658 (= lt!1940586 (choose!34169 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))

(assert (=> d!1526658 (invariantList!1684 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))))

(assert (=> d!1526658 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2049 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641) lt!1940586)))

(declare-fun bs!1150854 () Bool)

(assert (= bs!1150854 d!1526658))

(assert (=> bs!1150854 m!5752706))

(assert (=> bs!1150854 m!5752706))

(assert (=> bs!1150854 m!5752708))

(declare-fun m!5752944 () Bool)

(assert (=> bs!1150854 m!5752944))

(assert (=> bs!1150854 m!5752868))

(assert (=> b!4777167 d!1526658))

(declare-fun d!1526666 () Bool)

(declare-fun isEmpty!29330 (Option!12887) Bool)

(assert (=> d!1526666 (= (isDefined!10030 (getValueByKey!2256 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641)) (not (isEmpty!29330 (getValueByKey!2256 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))))

(declare-fun bs!1150857 () Bool)

(assert (= bs!1150857 d!1526666))

(assert (=> bs!1150857 m!5752706))

(declare-fun m!5752948 () Bool)

(assert (=> bs!1150857 m!5752948))

(assert (=> b!4777167 d!1526666))

(declare-fun b!4777358 () Bool)

(declare-fun e!2982406 () Option!12887)

(declare-fun e!2982407 () Option!12887)

(assert (=> b!4777358 (= e!2982406 e!2982407)))

(declare-fun c!814498 () Bool)

(assert (=> b!4777358 (= c!814498 (and ((_ is Cons!53905) (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) (not (= (_1!31458 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))) key!6641))))))

(declare-fun b!4777357 () Bool)

(assert (=> b!4777357 (= e!2982406 (Some!12886 (_2!31458 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))))))

(declare-fun d!1526672 () Bool)

(declare-fun c!814497 () Bool)

(assert (=> d!1526672 (= c!814497 (and ((_ is Cons!53905) (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) (= (_1!31458 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))) key!6641)))))

(assert (=> d!1526672 (= (getValueByKey!2256 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641) e!2982406)))

(declare-fun b!4777360 () Bool)

(assert (=> b!4777360 (= e!2982407 None!12886)))

(declare-fun b!4777359 () Bool)

(assert (=> b!4777359 (= e!2982407 (getValueByKey!2256 (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) key!6641))))

(assert (= (and d!1526672 c!814497) b!4777357))

(assert (= (and d!1526672 (not c!814497)) b!4777358))

(assert (= (and b!4777358 c!814498) b!4777359))

(assert (= (and b!4777358 (not c!814498)) b!4777360))

(declare-fun m!5752950 () Bool)

(assert (=> b!4777359 m!5752950))

(assert (=> b!4777167 d!1526672))

(declare-fun d!1526674 () Bool)

(assert (=> d!1526674 (contains!17416 (getKeysList!1028 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) key!6641)))

(declare-fun lt!1940589 () Unit!138938)

(declare-fun choose!34170 (List!54029 K!15464) Unit!138938)

(assert (=> d!1526674 (= lt!1940589 (choose!34170 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))

(assert (=> d!1526674 (invariantList!1684 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))))

(assert (=> d!1526674 (= (lemmaInListThenGetKeysListContains!1023 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641) lt!1940589)))

(declare-fun bs!1150858 () Bool)

(assert (= bs!1150858 d!1526674))

(assert (=> bs!1150858 m!5752720))

(assert (=> bs!1150858 m!5752720))

(declare-fun m!5752952 () Bool)

(assert (=> bs!1150858 m!5752952))

(declare-fun m!5752954 () Bool)

(assert (=> bs!1150858 m!5752954))

(assert (=> bs!1150858 m!5752868))

(assert (=> b!4777167 d!1526674))

(assert (=> b!4777162 d!1526666))

(assert (=> b!4777162 d!1526672))

(declare-fun d!1526676 () Bool)

(declare-fun choose!34172 (Hashable!6790 K!15464) (_ BitVec 64))

(assert (=> d!1526676 (= (hash!4772 hashF!1687 key!6641) (choose!34172 hashF!1687 key!6641))))

(declare-fun bs!1150859 () Bool)

(assert (= bs!1150859 d!1526676))

(declare-fun m!5752956 () Bool)

(assert (=> bs!1150859 m!5752956))

(assert (=> d!1526572 d!1526676))

(declare-fun d!1526678 () Bool)

(declare-fun res!2027735 () Bool)

(declare-fun e!2982408 () Bool)

(assert (=> d!1526678 (=> res!2027735 e!2982408)))

(assert (=> d!1526678 (= res!2027735 ((_ is Nil!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526678 (= (forall!12062 (toList!6663 lm!2709) lambda!227124) e!2982408)))

(declare-fun b!4777361 () Bool)

(declare-fun e!2982409 () Bool)

(assert (=> b!4777361 (= e!2982408 e!2982409)))

(declare-fun res!2027736 () Bool)

(assert (=> b!4777361 (=> (not res!2027736) (not e!2982409))))

(assert (=> b!4777361 (= res!2027736 (dynLambda!21994 lambda!227124 (h!60320 (toList!6663 lm!2709))))))

(declare-fun b!4777362 () Bool)

(assert (=> b!4777362 (= e!2982409 (forall!12062 (t!361480 (toList!6663 lm!2709)) lambda!227124))))

(assert (= (and d!1526678 (not res!2027735)) b!4777361))

(assert (= (and b!4777361 res!2027736) b!4777362))

(declare-fun b_lambda!185073 () Bool)

(assert (=> (not b_lambda!185073) (not b!4777361)))

(declare-fun m!5752958 () Bool)

(assert (=> b!4777361 m!5752958))

(declare-fun m!5752960 () Bool)

(assert (=> b!4777362 m!5752960))

(assert (=> d!1526590 d!1526678))

(declare-fun bs!1150863 () Bool)

(declare-fun d!1526680 () Bool)

(assert (= bs!1150863 (and d!1526680 start!489770)))

(declare-fun lambda!227148 () Int)

(assert (=> bs!1150863 (= lambda!227148 lambda!227083)))

(declare-fun bs!1150864 () Bool)

(assert (= bs!1150864 (and d!1526680 d!1526544)))

(assert (=> bs!1150864 (= lambda!227148 lambda!227089)))

(declare-fun bs!1150865 () Bool)

(assert (= bs!1150865 (and d!1526680 d!1526590)))

(assert (=> bs!1150865 (= lambda!227148 lambda!227124)))

(declare-fun bs!1150866 () Bool)

(assert (= bs!1150866 (and d!1526680 d!1526536)))

(assert (=> bs!1150866 (not (= lambda!227148 lambda!227086))))

(declare-fun bs!1150867 () Bool)

(assert (= bs!1150867 (and d!1526680 d!1526584)))

(assert (=> bs!1150867 (= lambda!227148 lambda!227107)))

(declare-fun bs!1150868 () Bool)

(assert (= bs!1150868 (and d!1526680 d!1526580)))

(assert (=> bs!1150868 (= lambda!227148 lambda!227104)))

(declare-fun bs!1150869 () Bool)

(assert (= bs!1150869 (and d!1526680 d!1526552)))

(assert (=> bs!1150869 (= lambda!227148 lambda!227092)))

(assert (=> d!1526680 (isDefined!10027 (getPair!778 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)) key!6641))))

(declare-fun lt!1940608 () Unit!138938)

(assert (=> d!1526680 (= lt!1940608 (forallContained!4019 (toList!6663 lm!2709) lambda!227148 (tuple2!56331 (hash!4768 hashF!1687 key!6641) (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))))))

(declare-fun lt!1940607 () Unit!138938)

(declare-fun lt!1940613 () Unit!138938)

(assert (=> d!1526680 (= lt!1940607 lt!1940613)))

(declare-fun lt!1940610 () (_ BitVec 64))

(declare-fun lt!1940609 () List!54029)

(assert (=> d!1526680 (contains!17410 (toList!6663 lm!2709) (tuple2!56331 lt!1940610 lt!1940609))))

(assert (=> d!1526680 (= lt!1940613 (lemmaGetValueImpliesTupleContained!581 lm!2709 lt!1940610 lt!1940609))))

(assert (=> d!1526680 (= lt!1940609 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))))

(assert (=> d!1526680 (= lt!1940610 (hash!4768 hashF!1687 key!6641))))

(declare-fun lt!1940611 () Unit!138938)

(declare-fun lt!1940612 () Unit!138938)

(assert (=> d!1526680 (= lt!1940611 lt!1940612)))

(assert (=> d!1526680 (contains!17411 lm!2709 (hash!4768 hashF!1687 key!6641))))

(assert (=> d!1526680 (= lt!1940612 (lemmaInGenMapThenLongMapContainsHash!994 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526680 true))

(declare-fun _$25!307 () Unit!138938)

(assert (=> d!1526680 (= (choose!34167 lm!2709 key!6641 hashF!1687) _$25!307)))

(declare-fun bs!1150870 () Bool)

(assert (= bs!1150870 d!1526680))

(declare-fun m!5752990 () Bool)

(assert (=> bs!1150870 m!5752990))

(assert (=> bs!1150870 m!5752580))

(assert (=> bs!1150870 m!5752750))

(assert (=> bs!1150870 m!5752814))

(assert (=> bs!1150870 m!5752816))

(assert (=> bs!1150870 m!5752570))

(declare-fun m!5752994 () Bool)

(assert (=> bs!1150870 m!5752994))

(assert (=> bs!1150870 m!5752580))

(assert (=> bs!1150870 m!5752814))

(assert (=> bs!1150870 m!5752580))

(assert (=> bs!1150870 m!5752816))

(assert (=> bs!1150870 m!5752818))

(declare-fun m!5753000 () Bool)

(assert (=> bs!1150870 m!5753000))

(assert (=> d!1526590 d!1526680))

(declare-fun d!1526708 () Bool)

(assert (=> d!1526708 (isDefined!10031 (getValueByKey!2254 (toList!6663 lm!2709) lt!1940371))))

(declare-fun lt!1940617 () Unit!138938)

(declare-fun choose!34174 (List!54030 (_ BitVec 64)) Unit!138938)

(assert (=> d!1526708 (= lt!1940617 (choose!34174 (toList!6663 lm!2709) lt!1940371))))

(declare-fun e!2982429 () Bool)

(assert (=> d!1526708 e!2982429))

(declare-fun res!2027753 () Bool)

(assert (=> d!1526708 (=> (not res!2027753) (not e!2982429))))

(assert (=> d!1526708 (= res!2027753 (isStrictlySorted!834 (toList!6663 lm!2709)))))

(assert (=> d!1526708 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2050 (toList!6663 lm!2709) lt!1940371) lt!1940617)))

(declare-fun b!4777385 () Bool)

(assert (=> b!4777385 (= e!2982429 (containsKey!3767 (toList!6663 lm!2709) lt!1940371))))

(assert (= (and d!1526708 res!2027753) b!4777385))

(assert (=> d!1526708 m!5752760))

(assert (=> d!1526708 m!5752760))

(assert (=> d!1526708 m!5752762))

(declare-fun m!5753002 () Bool)

(assert (=> d!1526708 m!5753002))

(assert (=> d!1526708 m!5752606))

(assert (=> b!4777385 m!5752756))

(assert (=> b!4777186 d!1526708))

(assert (=> b!4777186 d!1526620))

(assert (=> b!4777186 d!1526622))

(declare-fun d!1526710 () Bool)

(declare-fun lt!1940618 () Bool)

(assert (=> d!1526710 (= lt!1940618 (select (content!9622 (keys!19614 (extractMap!2321 (toList!6663 lm!2709)))) key!6641))))

(declare-fun e!2982430 () Bool)

(assert (=> d!1526710 (= lt!1940618 e!2982430)))

(declare-fun res!2027755 () Bool)

(assert (=> d!1526710 (=> (not res!2027755) (not e!2982430))))

(assert (=> d!1526710 (= res!2027755 ((_ is Cons!53908) (keys!19614 (extractMap!2321 (toList!6663 lm!2709)))))))

(assert (=> d!1526710 (= (contains!17416 (keys!19614 (extractMap!2321 (toList!6663 lm!2709))) key!6641) lt!1940618)))

(declare-fun b!4777386 () Bool)

(declare-fun e!2982431 () Bool)

(assert (=> b!4777386 (= e!2982430 e!2982431)))

(declare-fun res!2027754 () Bool)

(assert (=> b!4777386 (=> res!2027754 e!2982431)))

(assert (=> b!4777386 (= res!2027754 (= (h!60322 (keys!19614 (extractMap!2321 (toList!6663 lm!2709)))) key!6641))))

(declare-fun b!4777387 () Bool)

(assert (=> b!4777387 (= e!2982431 (contains!17416 (t!361482 (keys!19614 (extractMap!2321 (toList!6663 lm!2709)))) key!6641))))

(assert (= (and d!1526710 res!2027755) b!4777386))

(assert (= (and b!4777386 (not res!2027754)) b!4777387))

(assert (=> d!1526710 m!5752714))

(declare-fun m!5753004 () Bool)

(assert (=> d!1526710 m!5753004))

(declare-fun m!5753006 () Bool)

(assert (=> d!1526710 m!5753006))

(declare-fun m!5753008 () Bool)

(assert (=> b!4777387 m!5753008))

(assert (=> b!4777165 d!1526710))

(assert (=> b!4777165 d!1526644))

(declare-fun d!1526712 () Bool)

(declare-fun res!2027760 () Bool)

(declare-fun e!2982436 () Bool)

(assert (=> d!1526712 (=> res!2027760 e!2982436)))

(assert (=> d!1526712 (= res!2027760 (and ((_ is Cons!53905) (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) (= (_1!31458 (h!60319 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))) key!6641)))))

(assert (=> d!1526712 (= (containsKey!3766 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641) e!2982436)))

(declare-fun b!4777392 () Bool)

(declare-fun e!2982437 () Bool)

(assert (=> b!4777392 (= e!2982436 e!2982437)))

(declare-fun res!2027761 () Bool)

(assert (=> b!4777392 (=> (not res!2027761) (not e!2982437))))

(assert (=> b!4777392 (= res!2027761 ((_ is Cons!53905) (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))))))

(declare-fun b!4777393 () Bool)

(assert (=> b!4777393 (= e!2982437 (containsKey!3766 (t!361479 (toList!6664 (extractMap!2321 (toList!6663 lm!2709)))) key!6641))))

(assert (= (and d!1526712 (not res!2027760)) b!4777392))

(assert (= (and b!4777392 res!2027761) b!4777393))

(declare-fun m!5753010 () Bool)

(assert (=> b!4777393 m!5753010))

(assert (=> b!4777164 d!1526712))

(declare-fun d!1526714 () Bool)

(assert (=> d!1526714 (containsKey!3766 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641)))

(declare-fun lt!1940635 () Unit!138938)

(declare-fun choose!34175 (List!54029 K!15464) Unit!138938)

(assert (=> d!1526714 (= lt!1940635 (choose!34175 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641))))

(assert (=> d!1526714 (invariantList!1684 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))))))

(assert (=> d!1526714 (= (lemmaInGetKeysListThenContainsKey!1027 (toList!6664 (extractMap!2321 (toList!6663 lm!2709))) key!6641) lt!1940635)))

(declare-fun bs!1150871 () Bool)

(assert (= bs!1150871 d!1526714))

(assert (=> bs!1150871 m!5752712))

(declare-fun m!5753012 () Bool)

(assert (=> bs!1150871 m!5753012))

(assert (=> bs!1150871 m!5752868))

(assert (=> b!4777164 d!1526714))

(assert (=> d!1526544 d!1526540))

(assert (=> d!1526544 d!1526542))

(declare-fun d!1526716 () Bool)

(assert (=> d!1526716 (not (containsKey!3763 (apply!12853 lm!2709 (_1!31459 (h!60320 (toList!6663 lm!2709)))) key!6641))))

(assert (=> d!1526716 true))

(declare-fun _$39!388 () Unit!138938)

(assert (=> d!1526716 (= (choose!34157 lm!2709 key!6641 (_1!31459 (h!60320 (toList!6663 lm!2709))) hashF!1687) _$39!388)))

(declare-fun bs!1150872 () Bool)

(assert (= bs!1150872 d!1526716))

(assert (=> bs!1150872 m!5752548))

(assert (=> bs!1150872 m!5752548))

(assert (=> bs!1150872 m!5752550))

(assert (=> d!1526544 d!1526716))

(declare-fun d!1526718 () Bool)

(declare-fun res!2027762 () Bool)

(declare-fun e!2982438 () Bool)

(assert (=> d!1526718 (=> res!2027762 e!2982438)))

(assert (=> d!1526718 (= res!2027762 ((_ is Nil!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526718 (= (forall!12062 (toList!6663 lm!2709) lambda!227089) e!2982438)))

(declare-fun b!4777394 () Bool)

(declare-fun e!2982439 () Bool)

(assert (=> b!4777394 (= e!2982438 e!2982439)))

(declare-fun res!2027763 () Bool)

(assert (=> b!4777394 (=> (not res!2027763) (not e!2982439))))

(assert (=> b!4777394 (= res!2027763 (dynLambda!21994 lambda!227089 (h!60320 (toList!6663 lm!2709))))))

(declare-fun b!4777395 () Bool)

(assert (=> b!4777395 (= e!2982439 (forall!12062 (t!361480 (toList!6663 lm!2709)) lambda!227089))))

(assert (= (and d!1526718 (not res!2027762)) b!4777394))

(assert (= (and b!4777394 res!2027763) b!4777395))

(declare-fun b_lambda!185083 () Bool)

(assert (=> (not b_lambda!185083) (not b!4777394)))

(declare-fun m!5753014 () Bool)

(assert (=> b!4777394 m!5753014))

(declare-fun m!5753016 () Bool)

(assert (=> b!4777395 m!5753016))

(assert (=> d!1526544 d!1526718))

(assert (=> b!4777163 d!1526710))

(assert (=> b!4777163 d!1526644))

(declare-fun d!1526720 () Bool)

(assert (=> d!1526720 (= (get!18305 (getValueByKey!2254 (toList!6663 lm!2709) lt!1940371)) (v!48057 (getValueByKey!2254 (toList!6663 lm!2709) lt!1940371)))))

(assert (=> d!1526588 d!1526720))

(assert (=> d!1526588 d!1526622))

(declare-fun b!4777396 () Bool)

(declare-fun e!2982440 () Option!12885)

(assert (=> b!4777396 (= e!2982440 (Some!12884 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(declare-fun b!4777399 () Bool)

(declare-fun e!2982441 () Option!12885)

(assert (=> b!4777399 (= e!2982441 None!12884)))

(declare-fun d!1526722 () Bool)

(declare-fun c!814502 () Bool)

(assert (=> d!1526722 (= c!814502 (and ((_ is Cons!53906) (toList!6663 lm!2709)) (= (_1!31459 (h!60320 (toList!6663 lm!2709))) lt!1940537)))))

(assert (=> d!1526722 (= (getValueByKey!2254 (toList!6663 lm!2709) lt!1940537) e!2982440)))

(declare-fun b!4777397 () Bool)

(assert (=> b!4777397 (= e!2982440 e!2982441)))

(declare-fun c!814503 () Bool)

(assert (=> b!4777397 (= c!814503 (and ((_ is Cons!53906) (toList!6663 lm!2709)) (not (= (_1!31459 (h!60320 (toList!6663 lm!2709))) lt!1940537))))))

(declare-fun b!4777398 () Bool)

(assert (=> b!4777398 (= e!2982441 (getValueByKey!2254 (t!361480 (toList!6663 lm!2709)) lt!1940537))))

(assert (= (and d!1526722 c!814502) b!4777396))

(assert (= (and d!1526722 (not c!814502)) b!4777397))

(assert (= (and b!4777397 c!814503) b!4777398))

(assert (= (and b!4777397 (not c!814503)) b!4777399))

(declare-fun m!5753018 () Bool)

(assert (=> b!4777398 m!5753018))

(assert (=> b!4777235 d!1526722))

(declare-fun d!1526724 () Bool)

(assert (=> d!1526724 (dynLambda!21994 lambda!227083 lt!1940372)))

(assert (=> d!1526724 true))

(declare-fun _$7!2326 () Unit!138938)

(assert (=> d!1526724 (= (choose!34168 (toList!6663 lm!2709) lambda!227083 lt!1940372) _$7!2326)))

(declare-fun b_lambda!185085 () Bool)

(assert (=> (not b_lambda!185085) (not d!1526724)))

(declare-fun bs!1150881 () Bool)

(assert (= bs!1150881 d!1526724))

(assert (=> bs!1150881 m!5752832))

(assert (=> d!1526608 d!1526724))

(assert (=> d!1526608 d!1526528))

(declare-fun b!4777400 () Bool)

(declare-fun e!2982445 () Bool)

(declare-fun e!2982443 () Bool)

(assert (=> b!4777400 (= e!2982445 e!2982443)))

(declare-fun res!2027765 () Bool)

(assert (=> b!4777400 (=> (not res!2027765) (not e!2982443))))

(declare-fun lt!1940643 () Option!12883)

(assert (=> b!4777400 (= res!2027765 (isDefined!10027 lt!1940643))))

(declare-fun b!4777401 () Bool)

(declare-fun res!2027767 () Bool)

(assert (=> b!4777401 (=> (not res!2027767) (not e!2982443))))

(assert (=> b!4777401 (= res!2027767 (= (_1!31458 (get!18304 lt!1940643)) key!6641))))

(declare-fun b!4777402 () Bool)

(declare-fun e!2982446 () Option!12883)

(declare-fun e!2982442 () Option!12883)

(assert (=> b!4777402 (= e!2982446 e!2982442)))

(declare-fun c!814505 () Bool)

(assert (=> b!4777402 (= c!814505 ((_ is Cons!53905) (t!361479 lt!1940369)))))

(declare-fun b!4777404 () Bool)

(assert (=> b!4777404 (= e!2982442 (getPair!778 (t!361479 (t!361479 lt!1940369)) key!6641))))

(declare-fun b!4777405 () Bool)

(assert (=> b!4777405 (= e!2982442 None!12882)))

(declare-fun b!4777406 () Bool)

(assert (=> b!4777406 (= e!2982446 (Some!12882 (h!60319 (t!361479 lt!1940369))))))

(declare-fun b!4777407 () Bool)

(assert (=> b!4777407 (= e!2982443 (contains!17415 (t!361479 lt!1940369) (get!18304 lt!1940643)))))

(declare-fun b!4777403 () Bool)

(declare-fun e!2982444 () Bool)

(assert (=> b!4777403 (= e!2982444 (not (containsKey!3763 (t!361479 lt!1940369) key!6641)))))

(declare-fun d!1526728 () Bool)

(assert (=> d!1526728 e!2982445))

(declare-fun res!2027766 () Bool)

(assert (=> d!1526728 (=> res!2027766 e!2982445)))

(assert (=> d!1526728 (= res!2027766 e!2982444)))

(declare-fun res!2027764 () Bool)

(assert (=> d!1526728 (=> (not res!2027764) (not e!2982444))))

(assert (=> d!1526728 (= res!2027764 (isEmpty!29327 lt!1940643))))

(assert (=> d!1526728 (= lt!1940643 e!2982446)))

(declare-fun c!814504 () Bool)

(assert (=> d!1526728 (= c!814504 (and ((_ is Cons!53905) (t!361479 lt!1940369)) (= (_1!31458 (h!60319 (t!361479 lt!1940369))) key!6641)))))

(assert (=> d!1526728 (noDuplicateKeys!2281 (t!361479 lt!1940369))))

(assert (=> d!1526728 (= (getPair!778 (t!361479 lt!1940369) key!6641) lt!1940643)))

(assert (= (and d!1526728 c!814504) b!4777406))

(assert (= (and d!1526728 (not c!814504)) b!4777402))

(assert (= (and b!4777402 c!814505) b!4777404))

(assert (= (and b!4777402 (not c!814505)) b!4777405))

(assert (= (and d!1526728 res!2027764) b!4777403))

(assert (= (and d!1526728 (not res!2027766)) b!4777400))

(assert (= (and b!4777400 res!2027765) b!4777401))

(assert (= (and b!4777401 res!2027767) b!4777407))

(declare-fun m!5753026 () Bool)

(assert (=> b!4777400 m!5753026))

(declare-fun m!5753028 () Bool)

(assert (=> b!4777404 m!5753028))

(declare-fun m!5753030 () Bool)

(assert (=> b!4777403 m!5753030))

(declare-fun m!5753032 () Bool)

(assert (=> b!4777401 m!5753032))

(declare-fun m!5753034 () Bool)

(assert (=> d!1526728 m!5753034))

(declare-fun m!5753036 () Bool)

(assert (=> d!1526728 m!5753036))

(assert (=> b!4777407 m!5753032))

(assert (=> b!4777407 m!5753032))

(declare-fun m!5753038 () Bool)

(assert (=> b!4777407 m!5753038))

(assert (=> b!4777133 d!1526728))

(assert (=> b!4777245 d!1526548))

(declare-fun d!1526730 () Bool)

(declare-fun res!2027768 () Bool)

(declare-fun e!2982447 () Bool)

(assert (=> d!1526730 (=> res!2027768 e!2982447)))

(assert (=> d!1526730 (= res!2027768 (and ((_ is Cons!53905) (t!361479 (_2!31459 (h!60320 (toList!6663 lm!2709))))) (= (_1!31458 (h!60319 (t!361479 (_2!31459 (h!60320 (toList!6663 lm!2709)))))) key!6641)))))

(assert (=> d!1526730 (= (containsKey!3763 (t!361479 (_2!31459 (h!60320 (toList!6663 lm!2709)))) key!6641) e!2982447)))

(declare-fun b!4777408 () Bool)

(declare-fun e!2982448 () Bool)

(assert (=> b!4777408 (= e!2982447 e!2982448)))

(declare-fun res!2027769 () Bool)

(assert (=> b!4777408 (=> (not res!2027769) (not e!2982448))))

(assert (=> b!4777408 (= res!2027769 ((_ is Cons!53905) (t!361479 (_2!31459 (h!60320 (toList!6663 lm!2709))))))))

(declare-fun b!4777409 () Bool)

(assert (=> b!4777409 (= e!2982448 (containsKey!3763 (t!361479 (t!361479 (_2!31459 (h!60320 (toList!6663 lm!2709))))) key!6641))))

(assert (= (and d!1526730 (not res!2027768)) b!4777408))

(assert (= (and b!4777408 res!2027769) b!4777409))

(declare-fun m!5753040 () Bool)

(assert (=> b!4777409 m!5753040))

(assert (=> b!4777052 d!1526730))

(assert (=> d!1526564 d!1526712))

(declare-fun d!1526732 () Bool)

(assert (=> d!1526732 (= (isEmpty!29327 lt!1940436) (not ((_ is Some!12882) lt!1940436)))))

(assert (=> d!1526562 d!1526732))

(declare-fun d!1526734 () Bool)

(declare-fun res!2027774 () Bool)

(declare-fun e!2982453 () Bool)

(assert (=> d!1526734 (=> res!2027774 e!2982453)))

(assert (=> d!1526734 (= res!2027774 (not ((_ is Cons!53905) lt!1940369)))))

(assert (=> d!1526734 (= (noDuplicateKeys!2281 lt!1940369) e!2982453)))

(declare-fun b!4777414 () Bool)

(declare-fun e!2982454 () Bool)

(assert (=> b!4777414 (= e!2982453 e!2982454)))

(declare-fun res!2027775 () Bool)

(assert (=> b!4777414 (=> (not res!2027775) (not e!2982454))))

(assert (=> b!4777414 (= res!2027775 (not (containsKey!3763 (t!361479 lt!1940369) (_1!31458 (h!60319 lt!1940369)))))))

(declare-fun b!4777415 () Bool)

(assert (=> b!4777415 (= e!2982454 (noDuplicateKeys!2281 (t!361479 lt!1940369)))))

(assert (= (and d!1526734 (not res!2027774)) b!4777414))

(assert (= (and b!4777414 res!2027775) b!4777415))

(declare-fun m!5753042 () Bool)

(assert (=> b!4777414 m!5753042))

(assert (=> b!4777415 m!5753036))

(assert (=> d!1526562 d!1526734))

(declare-fun d!1526736 () Bool)

(declare-fun lt!1940650 () Bool)

(declare-fun content!9624 (List!54029) (InoxSet tuple2!56328))

(assert (=> d!1526736 (= lt!1940650 (select (content!9624 lt!1940369) (get!18304 lt!1940436)))))

(declare-fun e!2982464 () Bool)

(assert (=> d!1526736 (= lt!1940650 e!2982464)))

(declare-fun res!2027785 () Bool)

(assert (=> d!1526736 (=> (not res!2027785) (not e!2982464))))

(assert (=> d!1526736 (= res!2027785 ((_ is Cons!53905) lt!1940369))))

(assert (=> d!1526736 (= (contains!17415 lt!1940369 (get!18304 lt!1940436)) lt!1940650)))

(declare-fun b!4777424 () Bool)

(declare-fun e!2982463 () Bool)

(assert (=> b!4777424 (= e!2982464 e!2982463)))

(declare-fun res!2027784 () Bool)

(assert (=> b!4777424 (=> res!2027784 e!2982463)))

(assert (=> b!4777424 (= res!2027784 (= (h!60319 lt!1940369) (get!18304 lt!1940436)))))

(declare-fun b!4777425 () Bool)

(assert (=> b!4777425 (= e!2982463 (contains!17415 (t!361479 lt!1940369) (get!18304 lt!1940436)))))

(assert (= (and d!1526736 res!2027785) b!4777424))

(assert (= (and b!4777424 (not res!2027784)) b!4777425))

(declare-fun m!5753056 () Bool)

(assert (=> d!1526736 m!5753056))

(assert (=> d!1526736 m!5752682))

(declare-fun m!5753058 () Bool)

(assert (=> d!1526736 m!5753058))

(assert (=> b!4777425 m!5752682))

(declare-fun m!5753060 () Bool)

(assert (=> b!4777425 m!5753060))

(assert (=> b!4777136 d!1526736))

(declare-fun d!1526742 () Bool)

(assert (=> d!1526742 (= (get!18304 lt!1940436) (v!48051 lt!1940436))))

(assert (=> b!4777136 d!1526742))

(assert (=> b!4777130 d!1526742))

(declare-fun d!1526744 () Bool)

(assert (=> d!1526744 (= (get!18305 (getValueByKey!2254 (toList!6663 lm!2709) (_1!31459 (h!60320 (toList!6663 lm!2709))))) (v!48057 (getValueByKey!2254 (toList!6663 lm!2709) (_1!31459 (h!60320 (toList!6663 lm!2709))))))))

(assert (=> d!1526542 d!1526744))

(declare-fun b!4777426 () Bool)

(declare-fun e!2982465 () Option!12885)

(assert (=> b!4777426 (= e!2982465 (Some!12884 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(declare-fun b!4777429 () Bool)

(declare-fun e!2982466 () Option!12885)

(assert (=> b!4777429 (= e!2982466 None!12884)))

(declare-fun d!1526746 () Bool)

(declare-fun c!814506 () Bool)

(assert (=> d!1526746 (= c!814506 (and ((_ is Cons!53906) (toList!6663 lm!2709)) (= (_1!31459 (h!60320 (toList!6663 lm!2709))) (_1!31459 (h!60320 (toList!6663 lm!2709))))))))

(assert (=> d!1526746 (= (getValueByKey!2254 (toList!6663 lm!2709) (_1!31459 (h!60320 (toList!6663 lm!2709)))) e!2982465)))

(declare-fun b!4777427 () Bool)

(assert (=> b!4777427 (= e!2982465 e!2982466)))

(declare-fun c!814507 () Bool)

(assert (=> b!4777427 (= c!814507 (and ((_ is Cons!53906) (toList!6663 lm!2709)) (not (= (_1!31459 (h!60320 (toList!6663 lm!2709))) (_1!31459 (h!60320 (toList!6663 lm!2709)))))))))

(declare-fun b!4777428 () Bool)

(assert (=> b!4777428 (= e!2982466 (getValueByKey!2254 (t!361480 (toList!6663 lm!2709)) (_1!31459 (h!60320 (toList!6663 lm!2709)))))))

(assert (= (and d!1526746 c!814506) b!4777426))

(assert (= (and d!1526746 (not c!814506)) b!4777427))

(assert (= (and b!4777427 c!814507) b!4777428))

(assert (= (and b!4777427 (not c!814507)) b!4777429))

(declare-fun m!5753062 () Bool)

(assert (=> b!4777428 m!5753062))

(assert (=> d!1526542 d!1526746))

(declare-fun d!1526748 () Bool)

(declare-fun noDuplicatedKeys!413 (List!54029) Bool)

(assert (=> d!1526748 (= (invariantList!1684 (toList!6664 lt!1940478)) (noDuplicatedKeys!413 (toList!6664 lt!1940478)))))

(declare-fun bs!1150882 () Bool)

(assert (= bs!1150882 d!1526748))

(declare-fun m!5753064 () Bool)

(assert (=> bs!1150882 m!5753064))

(assert (=> d!1526580 d!1526748))

(declare-fun d!1526750 () Bool)

(declare-fun res!2027786 () Bool)

(declare-fun e!2982467 () Bool)

(assert (=> d!1526750 (=> res!2027786 e!2982467)))

(assert (=> d!1526750 (= res!2027786 ((_ is Nil!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526750 (= (forall!12062 (toList!6663 lm!2709) lambda!227104) e!2982467)))

(declare-fun b!4777430 () Bool)

(declare-fun e!2982468 () Bool)

(assert (=> b!4777430 (= e!2982467 e!2982468)))

(declare-fun res!2027787 () Bool)

(assert (=> b!4777430 (=> (not res!2027787) (not e!2982468))))

(assert (=> b!4777430 (= res!2027787 (dynLambda!21994 lambda!227104 (h!60320 (toList!6663 lm!2709))))))

(declare-fun b!4777431 () Bool)

(assert (=> b!4777431 (= e!2982468 (forall!12062 (t!361480 (toList!6663 lm!2709)) lambda!227104))))

(assert (= (and d!1526750 (not res!2027786)) b!4777430))

(assert (= (and b!4777430 res!2027787) b!4777431))

(declare-fun b_lambda!185087 () Bool)

(assert (=> (not b_lambda!185087) (not b!4777430)))

(declare-fun m!5753066 () Bool)

(assert (=> b!4777430 m!5753066))

(declare-fun m!5753068 () Bool)

(assert (=> b!4777431 m!5753068))

(assert (=> d!1526580 d!1526750))

(declare-fun b!4777540 () Bool)

(assert (=> b!4777540 true))

(declare-fun bs!1150896 () Bool)

(declare-fun b!4777544 () Bool)

(assert (= bs!1150896 (and b!4777544 b!4777540)))

(declare-fun lambda!227199 () Int)

(declare-fun lambda!227198 () Int)

(assert (=> bs!1150896 (= lambda!227199 lambda!227198)))

(assert (=> b!4777544 true))

(declare-fun lambda!227200 () Int)

(declare-fun lt!1940738 () ListMap!6139)

(assert (=> bs!1150896 (= (= lt!1940738 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) (= lambda!227200 lambda!227198))))

(assert (=> b!4777544 (= (= lt!1940738 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) (= lambda!227200 lambda!227199))))

(assert (=> b!4777544 true))

(declare-fun bs!1150897 () Bool)

(declare-fun d!1526752 () Bool)

(assert (= bs!1150897 (and d!1526752 b!4777540)))

(declare-fun lt!1940730 () ListMap!6139)

(declare-fun lambda!227201 () Int)

(assert (=> bs!1150897 (= (= lt!1940730 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) (= lambda!227201 lambda!227198))))

(declare-fun bs!1150898 () Bool)

(assert (= bs!1150898 (and d!1526752 b!4777544)))

(assert (=> bs!1150898 (= (= lt!1940730 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) (= lambda!227201 lambda!227199))))

(assert (=> bs!1150898 (= (= lt!1940730 lt!1940738) (= lambda!227201 lambda!227200))))

(assert (=> d!1526752 true))

(declare-fun e!2982531 () ListMap!6139)

(assert (=> b!4777540 (= e!2982531 (extractMap!2321 (t!361480 (toList!6663 lm!2709))))))

(declare-fun lt!1940740 () Unit!138938)

(declare-fun call!334601 () Unit!138938)

(assert (=> b!4777540 (= lt!1940740 call!334601)))

(declare-fun call!334602 () Bool)

(assert (=> b!4777540 call!334602))

(declare-fun lt!1940748 () Unit!138938)

(assert (=> b!4777540 (= lt!1940748 lt!1940740)))

(declare-fun call!334603 () Bool)

(assert (=> b!4777540 call!334603))

(declare-fun lt!1940745 () Unit!138938)

(declare-fun Unit!138952 () Unit!138938)

(assert (=> b!4777540 (= lt!1940745 Unit!138952)))

(declare-fun bm!334596 () Bool)

(declare-fun lt!1940732 () ListMap!6139)

(declare-fun c!814535 () Bool)

(declare-fun forall!12065 (List!54029 Int) Bool)

(assert (=> bm!334596 (= call!334603 (forall!12065 (ite c!814535 (toList!6664 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) (toList!6664 lt!1940732)) (ite c!814535 lambda!227198 lambda!227200)))))

(declare-fun b!4777541 () Bool)

(declare-fun e!2982532 () Bool)

(assert (=> b!4777541 (= e!2982532 (forall!12065 (toList!6664 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) lambda!227200))))

(declare-fun bm!334597 () Bool)

(assert (=> bm!334597 (= call!334602 (forall!12065 (ite c!814535 (toList!6664 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) (toList!6664 lt!1940732)) (ite c!814535 lambda!227198 lambda!227200)))))

(declare-fun b!4777542 () Bool)

(declare-fun res!2027838 () Bool)

(declare-fun e!2982530 () Bool)

(assert (=> b!4777542 (=> (not res!2027838) (not e!2982530))))

(assert (=> b!4777542 (= res!2027838 (forall!12065 (toList!6664 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) lambda!227201))))

(declare-fun b!4777543 () Bool)

(assert (=> b!4777543 (= e!2982530 (invariantList!1684 (toList!6664 lt!1940730)))))

(assert (=> b!4777544 (= e!2982531 lt!1940738)))

(declare-fun +!2458 (ListMap!6139 tuple2!56328) ListMap!6139)

(assert (=> b!4777544 (= lt!1940732 (+!2458 (extractMap!2321 (t!361480 (toList!6663 lm!2709))) (h!60319 (_2!31459 (h!60320 (toList!6663 lm!2709))))))))

(assert (=> b!4777544 (= lt!1940738 (addToMapMapFromBucket!1649 (t!361479 (_2!31459 (h!60320 (toList!6663 lm!2709)))) (+!2458 (extractMap!2321 (t!361480 (toList!6663 lm!2709))) (h!60319 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))))

(declare-fun lt!1940733 () Unit!138938)

(assert (=> b!4777544 (= lt!1940733 call!334601)))

(assert (=> b!4777544 (forall!12065 (toList!6664 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) lambda!227199)))

(declare-fun lt!1940731 () Unit!138938)

(assert (=> b!4777544 (= lt!1940731 lt!1940733)))

(assert (=> b!4777544 call!334603))

(declare-fun lt!1940744 () Unit!138938)

(declare-fun Unit!138954 () Unit!138938)

(assert (=> b!4777544 (= lt!1940744 Unit!138954)))

(assert (=> b!4777544 (forall!12065 (t!361479 (_2!31459 (h!60320 (toList!6663 lm!2709)))) lambda!227200)))

(declare-fun lt!1940737 () Unit!138938)

(declare-fun Unit!138956 () Unit!138938)

(assert (=> b!4777544 (= lt!1940737 Unit!138956)))

(declare-fun lt!1940739 () Unit!138938)

(declare-fun Unit!138957 () Unit!138938)

(assert (=> b!4777544 (= lt!1940739 Unit!138957)))

(declare-fun lt!1940728 () Unit!138938)

(declare-fun forallContained!4022 (List!54029 Int tuple2!56328) Unit!138938)

(assert (=> b!4777544 (= lt!1940728 (forallContained!4022 (toList!6664 lt!1940732) lambda!227200 (h!60319 (_2!31459 (h!60320 (toList!6663 lm!2709))))))))

(assert (=> b!4777544 (contains!17412 lt!1940732 (_1!31458 (h!60319 (_2!31459 (h!60320 (toList!6663 lm!2709))))))))

(declare-fun lt!1940734 () Unit!138938)

(declare-fun Unit!138959 () Unit!138938)

(assert (=> b!4777544 (= lt!1940734 Unit!138959)))

(assert (=> b!4777544 (contains!17412 lt!1940738 (_1!31458 (h!60319 (_2!31459 (h!60320 (toList!6663 lm!2709))))))))

(declare-fun lt!1940746 () Unit!138938)

(declare-fun Unit!138960 () Unit!138938)

(assert (=> b!4777544 (= lt!1940746 Unit!138960)))

(assert (=> b!4777544 (forall!12065 (_2!31459 (h!60320 (toList!6663 lm!2709))) lambda!227200)))

(declare-fun lt!1940735 () Unit!138938)

(declare-fun Unit!138961 () Unit!138938)

(assert (=> b!4777544 (= lt!1940735 Unit!138961)))

(assert (=> b!4777544 call!334602))

(declare-fun lt!1940736 () Unit!138938)

(declare-fun Unit!138962 () Unit!138938)

(assert (=> b!4777544 (= lt!1940736 Unit!138962)))

(declare-fun lt!1940743 () Unit!138938)

(declare-fun Unit!138963 () Unit!138938)

(assert (=> b!4777544 (= lt!1940743 Unit!138963)))

(declare-fun lt!1940747 () Unit!138938)

(declare-fun addForallContainsKeyThenBeforeAdding!913 (ListMap!6139 ListMap!6139 K!15464 V!15710) Unit!138938)

(assert (=> b!4777544 (= lt!1940747 (addForallContainsKeyThenBeforeAdding!913 (extractMap!2321 (t!361480 (toList!6663 lm!2709))) lt!1940738 (_1!31458 (h!60319 (_2!31459 (h!60320 (toList!6663 lm!2709))))) (_2!31458 (h!60319 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))))

(assert (=> b!4777544 (forall!12065 (toList!6664 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) lambda!227200)))

(declare-fun lt!1940741 () Unit!138938)

(assert (=> b!4777544 (= lt!1940741 lt!1940747)))

(assert (=> b!4777544 (forall!12065 (toList!6664 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) lambda!227200)))

(declare-fun lt!1940729 () Unit!138938)

(declare-fun Unit!138965 () Unit!138938)

(assert (=> b!4777544 (= lt!1940729 Unit!138965)))

(declare-fun res!2027837 () Bool)

(assert (=> b!4777544 (= res!2027837 (forall!12065 (_2!31459 (h!60320 (toList!6663 lm!2709))) lambda!227200))))

(assert (=> b!4777544 (=> (not res!2027837) (not e!2982532))))

(assert (=> b!4777544 e!2982532))

(declare-fun lt!1940742 () Unit!138938)

(declare-fun Unit!138966 () Unit!138938)

(assert (=> b!4777544 (= lt!1940742 Unit!138966)))

(assert (=> d!1526752 e!2982530))

(declare-fun res!2027839 () Bool)

(assert (=> d!1526752 (=> (not res!2027839) (not e!2982530))))

(assert (=> d!1526752 (= res!2027839 (forall!12065 (_2!31459 (h!60320 (toList!6663 lm!2709))) lambda!227201))))

(assert (=> d!1526752 (= lt!1940730 e!2982531)))

(assert (=> d!1526752 (= c!814535 ((_ is Nil!53905) (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(assert (=> d!1526752 (noDuplicateKeys!2281 (_2!31459 (h!60320 (toList!6663 lm!2709))))))

(assert (=> d!1526752 (= (addToMapMapFromBucket!1649 (_2!31459 (h!60320 (toList!6663 lm!2709))) (extractMap!2321 (t!361480 (toList!6663 lm!2709)))) lt!1940730)))

(declare-fun bm!334598 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!914 (ListMap!6139) Unit!138938)

(assert (=> bm!334598 (= call!334601 (lemmaContainsAllItsOwnKeys!914 (extractMap!2321 (t!361480 (toList!6663 lm!2709)))))))

(assert (= (and d!1526752 c!814535) b!4777540))

(assert (= (and d!1526752 (not c!814535)) b!4777544))

(assert (= (and b!4777544 res!2027837) b!4777541))

(assert (= (or b!4777540 b!4777544) bm!334598))

(assert (= (or b!4777540 b!4777544) bm!334596))

(assert (= (or b!4777540 b!4777544) bm!334597))

(assert (= (and d!1526752 res!2027839) b!4777542))

(assert (= (and b!4777542 res!2027838) b!4777543))

(declare-fun m!5753160 () Bool)

(assert (=> bm!334596 m!5753160))

(declare-fun m!5753162 () Bool)

(assert (=> b!4777541 m!5753162))

(assert (=> bm!334597 m!5753160))

(declare-fun m!5753164 () Bool)

(assert (=> b!4777542 m!5753164))

(declare-fun m!5753166 () Bool)

(assert (=> d!1526752 m!5753166))

(assert (=> d!1526752 m!5752838))

(assert (=> bm!334598 m!5752746))

(declare-fun m!5753168 () Bool)

(assert (=> bm!334598 m!5753168))

(declare-fun m!5753170 () Bool)

(assert (=> b!4777543 m!5753170))

(declare-fun m!5753172 () Bool)

(assert (=> b!4777544 m!5753172))

(declare-fun m!5753174 () Bool)

(assert (=> b!4777544 m!5753174))

(assert (=> b!4777544 m!5753162))

(declare-fun m!5753176 () Bool)

(assert (=> b!4777544 m!5753176))

(declare-fun m!5753178 () Bool)

(assert (=> b!4777544 m!5753178))

(declare-fun m!5753180 () Bool)

(assert (=> b!4777544 m!5753180))

(assert (=> b!4777544 m!5752746))

(declare-fun m!5753182 () Bool)

(assert (=> b!4777544 m!5753182))

(declare-fun m!5753184 () Bool)

(assert (=> b!4777544 m!5753184))

(assert (=> b!4777544 m!5752746))

(assert (=> b!4777544 m!5753178))

(assert (=> b!4777544 m!5753162))

(declare-fun m!5753186 () Bool)

(assert (=> b!4777544 m!5753186))

(declare-fun m!5753188 () Bool)

(assert (=> b!4777544 m!5753188))

(assert (=> b!4777544 m!5753172))

(assert (=> b!4777178 d!1526752))

(declare-fun bs!1150899 () Bool)

(declare-fun d!1526794 () Bool)

(assert (= bs!1150899 (and d!1526794 start!489770)))

(declare-fun lambda!227202 () Int)

(assert (=> bs!1150899 (= lambda!227202 lambda!227083)))

(declare-fun bs!1150900 () Bool)

(assert (= bs!1150900 (and d!1526794 d!1526680)))

(assert (=> bs!1150900 (= lambda!227202 lambda!227148)))

(declare-fun bs!1150901 () Bool)

(assert (= bs!1150901 (and d!1526794 d!1526544)))

(assert (=> bs!1150901 (= lambda!227202 lambda!227089)))

(declare-fun bs!1150902 () Bool)

(assert (= bs!1150902 (and d!1526794 d!1526590)))

(assert (=> bs!1150902 (= lambda!227202 lambda!227124)))

(declare-fun bs!1150903 () Bool)

(assert (= bs!1150903 (and d!1526794 d!1526536)))

(assert (=> bs!1150903 (not (= lambda!227202 lambda!227086))))

(declare-fun bs!1150904 () Bool)

(assert (= bs!1150904 (and d!1526794 d!1526584)))

(assert (=> bs!1150904 (= lambda!227202 lambda!227107)))

(declare-fun bs!1150905 () Bool)

(assert (= bs!1150905 (and d!1526794 d!1526580)))

(assert (=> bs!1150905 (= lambda!227202 lambda!227104)))

(declare-fun bs!1150906 () Bool)

(assert (= bs!1150906 (and d!1526794 d!1526552)))

(assert (=> bs!1150906 (= lambda!227202 lambda!227092)))

(declare-fun lt!1940749 () ListMap!6139)

(assert (=> d!1526794 (invariantList!1684 (toList!6664 lt!1940749))))

(declare-fun e!2982533 () ListMap!6139)

(assert (=> d!1526794 (= lt!1940749 e!2982533)))

(declare-fun c!814536 () Bool)

(assert (=> d!1526794 (= c!814536 ((_ is Cons!53906) (t!361480 (toList!6663 lm!2709))))))

(assert (=> d!1526794 (forall!12062 (t!361480 (toList!6663 lm!2709)) lambda!227202)))

(assert (=> d!1526794 (= (extractMap!2321 (t!361480 (toList!6663 lm!2709))) lt!1940749)))

(declare-fun b!4777547 () Bool)

(assert (=> b!4777547 (= e!2982533 (addToMapMapFromBucket!1649 (_2!31459 (h!60320 (t!361480 (toList!6663 lm!2709)))) (extractMap!2321 (t!361480 (t!361480 (toList!6663 lm!2709))))))))

(declare-fun b!4777548 () Bool)

(assert (=> b!4777548 (= e!2982533 (ListMap!6140 Nil!53905))))

(assert (= (and d!1526794 c!814536) b!4777547))

(assert (= (and d!1526794 (not c!814536)) b!4777548))

(declare-fun m!5753190 () Bool)

(assert (=> d!1526794 m!5753190))

(declare-fun m!5753192 () Bool)

(assert (=> d!1526794 m!5753192))

(declare-fun m!5753194 () Bool)

(assert (=> b!4777547 m!5753194))

(assert (=> b!4777547 m!5753194))

(declare-fun m!5753196 () Bool)

(assert (=> b!4777547 m!5753196))

(assert (=> b!4777178 d!1526794))

(declare-fun d!1526796 () Bool)

(assert (=> d!1526796 (= (isDefined!10027 lt!1940436) (not (isEmpty!29327 lt!1940436)))))

(declare-fun bs!1150907 () Bool)

(assert (= bs!1150907 d!1526796))

(assert (=> bs!1150907 m!5752684))

(assert (=> b!4777129 d!1526796))

(declare-fun d!1526798 () Bool)

(declare-fun res!2027844 () Bool)

(declare-fun e!2982538 () Bool)

(assert (=> d!1526798 (=> res!2027844 e!2982538)))

(assert (=> d!1526798 (= res!2027844 (and ((_ is Cons!53906) (toList!6663 lm!2709)) (= (_1!31459 (h!60320 (toList!6663 lm!2709))) lt!1940371)))))

(assert (=> d!1526798 (= (containsKey!3767 (toList!6663 lm!2709) lt!1940371) e!2982538)))

(declare-fun b!4777553 () Bool)

(declare-fun e!2982539 () Bool)

(assert (=> b!4777553 (= e!2982538 e!2982539)))

(declare-fun res!2027845 () Bool)

(assert (=> b!4777553 (=> (not res!2027845) (not e!2982539))))

(assert (=> b!4777553 (= res!2027845 (and (or (not ((_ is Cons!53906) (toList!6663 lm!2709))) (bvsle (_1!31459 (h!60320 (toList!6663 lm!2709))) lt!1940371)) ((_ is Cons!53906) (toList!6663 lm!2709)) (bvslt (_1!31459 (h!60320 (toList!6663 lm!2709))) lt!1940371)))))

(declare-fun b!4777554 () Bool)

(assert (=> b!4777554 (= e!2982539 (containsKey!3767 (t!361480 (toList!6663 lm!2709)) lt!1940371))))

(assert (= (and d!1526798 (not res!2027844)) b!4777553))

(assert (= (and b!4777553 res!2027845) b!4777554))

(declare-fun m!5753198 () Bool)

(assert (=> b!4777554 m!5753198))

(assert (=> d!1526586 d!1526798))

(declare-fun d!1526800 () Bool)

(declare-fun res!2027847 () Bool)

(declare-fun e!2982542 () Bool)

(assert (=> d!1526800 (=> res!2027847 e!2982542)))

(declare-fun e!2982540 () Bool)

(assert (=> d!1526800 (= res!2027847 e!2982540)))

(declare-fun res!2027848 () Bool)

(assert (=> d!1526800 (=> (not res!2027848) (not e!2982540))))

(assert (=> d!1526800 (= res!2027848 ((_ is Cons!53906) (t!361480 (toList!6663 lm!2709))))))

(assert (=> d!1526800 (= (containsKeyBiggerList!446 (t!361480 (toList!6663 lm!2709)) key!6641) e!2982542)))

(declare-fun b!4777555 () Bool)

(assert (=> b!4777555 (= e!2982540 (containsKey!3763 (_2!31459 (h!60320 (t!361480 (toList!6663 lm!2709)))) key!6641))))

(declare-fun b!4777556 () Bool)

(declare-fun e!2982541 () Bool)

(assert (=> b!4777556 (= e!2982542 e!2982541)))

(declare-fun res!2027846 () Bool)

(assert (=> b!4777556 (=> (not res!2027846) (not e!2982541))))

(assert (=> b!4777556 (= res!2027846 ((_ is Cons!53906) (t!361480 (toList!6663 lm!2709))))))

(declare-fun b!4777557 () Bool)

(assert (=> b!4777557 (= e!2982541 (containsKeyBiggerList!446 (t!361480 (t!361480 (toList!6663 lm!2709))) key!6641))))

(assert (= (and d!1526800 res!2027848) b!4777555))

(assert (= (and d!1526800 (not res!2027847)) b!4777556))

(assert (= (and b!4777556 res!2027846) b!4777557))

(declare-fun m!5753200 () Bool)

(assert (=> b!4777555 m!5753200))

(declare-fun m!5753202 () Bool)

(assert (=> b!4777557 m!5753202))

(assert (=> b!4777044 d!1526800))

(assert (=> b!4777234 d!1526584))

(declare-fun d!1526802 () Bool)

(assert (=> d!1526802 (= (isDefined!10027 (getPair!778 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)) key!6641)) (not (isEmpty!29327 (getPair!778 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)) key!6641))))))

(declare-fun bs!1150908 () Bool)

(assert (= bs!1150908 d!1526802))

(assert (=> bs!1150908 m!5752816))

(declare-fun m!5753204 () Bool)

(assert (=> bs!1150908 m!5753204))

(assert (=> b!4777234 d!1526802))

(assert (=> b!4777234 d!1526624))

(declare-fun d!1526804 () Bool)

(assert (=> d!1526804 (dynLambda!21994 lambda!227124 (tuple2!56331 (hash!4768 hashF!1687 key!6641) (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641))))))

(declare-fun lt!1940750 () Unit!138938)

(assert (=> d!1526804 (= lt!1940750 (choose!34168 (toList!6663 lm!2709) lambda!227124 (tuple2!56331 (hash!4768 hashF!1687 key!6641) (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))))))

(declare-fun e!2982543 () Bool)

(assert (=> d!1526804 e!2982543))

(declare-fun res!2027849 () Bool)

(assert (=> d!1526804 (=> (not res!2027849) (not e!2982543))))

(assert (=> d!1526804 (= res!2027849 (forall!12062 (toList!6663 lm!2709) lambda!227124))))

(assert (=> d!1526804 (= (forallContained!4019 (toList!6663 lm!2709) lambda!227124 (tuple2!56331 (hash!4768 hashF!1687 key!6641) (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))) lt!1940750)))

(declare-fun b!4777558 () Bool)

(assert (=> b!4777558 (= e!2982543 (contains!17410 (toList!6663 lm!2709) (tuple2!56331 (hash!4768 hashF!1687 key!6641) (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))))))

(assert (= (and d!1526804 res!2027849) b!4777558))

(declare-fun b_lambda!185091 () Bool)

(assert (=> (not b_lambda!185091) (not d!1526804)))

(declare-fun m!5753206 () Bool)

(assert (=> d!1526804 m!5753206))

(declare-fun m!5753208 () Bool)

(assert (=> d!1526804 m!5753208))

(assert (=> d!1526804 m!5752808))

(declare-fun m!5753210 () Bool)

(assert (=> b!4777558 m!5753210))

(assert (=> b!4777234 d!1526804))

(declare-fun d!1526806 () Bool)

(assert (=> d!1526806 (= (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)) (get!18305 (getValueByKey!2254 (toList!6663 lm!2709) (hash!4768 hashF!1687 key!6641))))))

(declare-fun bs!1150909 () Bool)

(assert (= bs!1150909 d!1526806))

(assert (=> bs!1150909 m!5752580))

(assert (=> bs!1150909 m!5752854))

(assert (=> bs!1150909 m!5752854))

(declare-fun m!5753212 () Bool)

(assert (=> bs!1150909 m!5753212))

(assert (=> b!4777234 d!1526806))

(declare-fun b!4777559 () Bool)

(declare-fun e!2982547 () Bool)

(declare-fun e!2982545 () Bool)

(assert (=> b!4777559 (= e!2982547 e!2982545)))

(declare-fun res!2027851 () Bool)

(assert (=> b!4777559 (=> (not res!2027851) (not e!2982545))))

(declare-fun lt!1940751 () Option!12883)

(assert (=> b!4777559 (= res!2027851 (isDefined!10027 lt!1940751))))

(declare-fun b!4777560 () Bool)

(declare-fun res!2027853 () Bool)

(assert (=> b!4777560 (=> (not res!2027853) (not e!2982545))))

(assert (=> b!4777560 (= res!2027853 (= (_1!31458 (get!18304 lt!1940751)) key!6641))))

(declare-fun b!4777561 () Bool)

(declare-fun e!2982548 () Option!12883)

(declare-fun e!2982544 () Option!12883)

(assert (=> b!4777561 (= e!2982548 e!2982544)))

(declare-fun c!814538 () Bool)

(assert (=> b!4777561 (= c!814538 ((_ is Cons!53905) (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641))))))

(declare-fun b!4777563 () Bool)

(assert (=> b!4777563 (= e!2982544 (getPair!778 (t!361479 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641))) key!6641))))

(declare-fun b!4777564 () Bool)

(assert (=> b!4777564 (= e!2982544 None!12882)))

(declare-fun b!4777565 () Bool)

(assert (=> b!4777565 (= e!2982548 (Some!12882 (h!60319 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))))))

(declare-fun b!4777566 () Bool)

(assert (=> b!4777566 (= e!2982545 (contains!17415 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)) (get!18304 lt!1940751)))))

(declare-fun e!2982546 () Bool)

(declare-fun b!4777562 () Bool)

(assert (=> b!4777562 (= e!2982546 (not (containsKey!3763 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)) key!6641)))))

(declare-fun d!1526808 () Bool)

(assert (=> d!1526808 e!2982547))

(declare-fun res!2027852 () Bool)

(assert (=> d!1526808 (=> res!2027852 e!2982547)))

(assert (=> d!1526808 (= res!2027852 e!2982546)))

(declare-fun res!2027850 () Bool)

(assert (=> d!1526808 (=> (not res!2027850) (not e!2982546))))

(assert (=> d!1526808 (= res!2027850 (isEmpty!29327 lt!1940751))))

(assert (=> d!1526808 (= lt!1940751 e!2982548)))

(declare-fun c!814537 () Bool)

(assert (=> d!1526808 (= c!814537 (and ((_ is Cons!53905) (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641))) (= (_1!31458 (h!60319 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))) key!6641)))))

(assert (=> d!1526808 (noDuplicateKeys!2281 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))))

(assert (=> d!1526808 (= (getPair!778 (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)) key!6641) lt!1940751)))

(assert (= (and d!1526808 c!814537) b!4777565))

(assert (= (and d!1526808 (not c!814537)) b!4777561))

(assert (= (and b!4777561 c!814538) b!4777563))

(assert (= (and b!4777561 (not c!814538)) b!4777564))

(assert (= (and d!1526808 res!2027850) b!4777562))

(assert (= (and d!1526808 (not res!2027852)) b!4777559))

(assert (= (and b!4777559 res!2027851) b!4777560))

(assert (= (and b!4777560 res!2027853) b!4777566))

(declare-fun m!5753214 () Bool)

(assert (=> b!4777559 m!5753214))

(declare-fun m!5753216 () Bool)

(assert (=> b!4777563 m!5753216))

(assert (=> b!4777562 m!5752814))

(declare-fun m!5753218 () Bool)

(assert (=> b!4777562 m!5753218))

(declare-fun m!5753220 () Bool)

(assert (=> b!4777560 m!5753220))

(declare-fun m!5753222 () Bool)

(assert (=> d!1526808 m!5753222))

(assert (=> d!1526808 m!5752814))

(declare-fun m!5753224 () Bool)

(assert (=> d!1526808 m!5753224))

(assert (=> b!4777566 m!5753220))

(assert (=> b!4777566 m!5752814))

(assert (=> b!4777566 m!5753220))

(declare-fun m!5753226 () Bool)

(assert (=> b!4777566 m!5753226))

(assert (=> b!4777234 d!1526808))

(assert (=> b!4777234 d!1526572))

(declare-fun lt!1940752 () Bool)

(declare-fun d!1526810 () Bool)

(assert (=> d!1526810 (= lt!1940752 (select (content!9621 (toList!6663 lm!2709)) (tuple2!56331 lt!1940537 lt!1940542)))))

(declare-fun e!2982550 () Bool)

(assert (=> d!1526810 (= lt!1940752 e!2982550)))

(declare-fun res!2027855 () Bool)

(assert (=> d!1526810 (=> (not res!2027855) (not e!2982550))))

(assert (=> d!1526810 (= res!2027855 ((_ is Cons!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526810 (= (contains!17410 (toList!6663 lm!2709) (tuple2!56331 lt!1940537 lt!1940542)) lt!1940752)))

(declare-fun b!4777567 () Bool)

(declare-fun e!2982549 () Bool)

(assert (=> b!4777567 (= e!2982550 e!2982549)))

(declare-fun res!2027854 () Bool)

(assert (=> b!4777567 (=> res!2027854 e!2982549)))

(assert (=> b!4777567 (= res!2027854 (= (h!60320 (toList!6663 lm!2709)) (tuple2!56331 lt!1940537 lt!1940542)))))

(declare-fun b!4777568 () Bool)

(assert (=> b!4777568 (= e!2982549 (contains!17410 (t!361480 (toList!6663 lm!2709)) (tuple2!56331 lt!1940537 lt!1940542)))))

(assert (= (and d!1526810 res!2027855) b!4777567))

(assert (= (and b!4777567 (not res!2027854)) b!4777568))

(assert (=> d!1526810 m!5752646))

(declare-fun m!5753228 () Bool)

(assert (=> d!1526810 m!5753228))

(declare-fun m!5753230 () Bool)

(assert (=> b!4777568 m!5753230))

(assert (=> b!4777234 d!1526810))

(declare-fun d!1526812 () Bool)

(assert (=> d!1526812 (contains!17410 (toList!6663 lm!2709) (tuple2!56331 lt!1940537 lt!1940542))))

(declare-fun lt!1940753 () Unit!138938)

(assert (=> d!1526812 (= lt!1940753 (choose!34164 lm!2709 lt!1940537 lt!1940542))))

(assert (=> d!1526812 (contains!17411 lm!2709 lt!1940537)))

(assert (=> d!1526812 (= (lemmaGetValueImpliesTupleContained!581 lm!2709 lt!1940537 lt!1940542) lt!1940753)))

(declare-fun bs!1150910 () Bool)

(assert (= bs!1150910 d!1526812))

(assert (=> bs!1150910 m!5752824))

(declare-fun m!5753232 () Bool)

(assert (=> bs!1150910 m!5753232))

(assert (=> bs!1150910 m!5752820))

(assert (=> b!4777234 d!1526812))

(declare-fun d!1526814 () Bool)

(declare-fun e!2982552 () Bool)

(assert (=> d!1526814 e!2982552))

(declare-fun res!2027856 () Bool)

(assert (=> d!1526814 (=> res!2027856 e!2982552)))

(declare-fun lt!1940757 () Bool)

(assert (=> d!1526814 (= res!2027856 (not lt!1940757))))

(declare-fun lt!1940754 () Bool)

(assert (=> d!1526814 (= lt!1940757 lt!1940754)))

(declare-fun lt!1940756 () Unit!138938)

(declare-fun e!2982551 () Unit!138938)

(assert (=> d!1526814 (= lt!1940756 e!2982551)))

(declare-fun c!814539 () Bool)

(assert (=> d!1526814 (= c!814539 lt!1940754)))

(assert (=> d!1526814 (= lt!1940754 (containsKey!3767 (toList!6663 lm!2709) lt!1940537))))

(assert (=> d!1526814 (= (contains!17411 lm!2709 lt!1940537) lt!1940757)))

(declare-fun b!4777569 () Bool)

(declare-fun lt!1940755 () Unit!138938)

(assert (=> b!4777569 (= e!2982551 lt!1940755)))

(assert (=> b!4777569 (= lt!1940755 (lemmaContainsKeyImpliesGetValueByKeyDefined!2050 (toList!6663 lm!2709) lt!1940537))))

(assert (=> b!4777569 (isDefined!10031 (getValueByKey!2254 (toList!6663 lm!2709) lt!1940537))))

(declare-fun b!4777570 () Bool)

(declare-fun Unit!138967 () Unit!138938)

(assert (=> b!4777570 (= e!2982551 Unit!138967)))

(declare-fun b!4777571 () Bool)

(assert (=> b!4777571 (= e!2982552 (isDefined!10031 (getValueByKey!2254 (toList!6663 lm!2709) lt!1940537)))))

(assert (= (and d!1526814 c!814539) b!4777569))

(assert (= (and d!1526814 (not c!814539)) b!4777570))

(assert (= (and d!1526814 (not res!2027856)) b!4777571))

(declare-fun m!5753234 () Bool)

(assert (=> d!1526814 m!5753234))

(declare-fun m!5753236 () Bool)

(assert (=> b!4777569 m!5753236))

(assert (=> b!4777569 m!5752806))

(assert (=> b!4777569 m!5752806))

(declare-fun m!5753238 () Bool)

(assert (=> b!4777569 m!5753238))

(assert (=> b!4777571 m!5752806))

(assert (=> b!4777571 m!5752806))

(assert (=> b!4777571 m!5753238))

(assert (=> b!4777234 d!1526814))

(declare-fun d!1526816 () Bool)

(declare-fun res!2027857 () Bool)

(declare-fun e!2982553 () Bool)

(assert (=> d!1526816 (=> res!2027857 e!2982553)))

(assert (=> d!1526816 (= res!2027857 ((_ is Nil!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526816 (= (forall!12062 (toList!6663 lm!2709) lambda!227086) e!2982553)))

(declare-fun b!4777572 () Bool)

(declare-fun e!2982554 () Bool)

(assert (=> b!4777572 (= e!2982553 e!2982554)))

(declare-fun res!2027858 () Bool)

(assert (=> b!4777572 (=> (not res!2027858) (not e!2982554))))

(assert (=> b!4777572 (= res!2027858 (dynLambda!21994 lambda!227086 (h!60320 (toList!6663 lm!2709))))))

(declare-fun b!4777573 () Bool)

(assert (=> b!4777573 (= e!2982554 (forall!12062 (t!361480 (toList!6663 lm!2709)) lambda!227086))))

(assert (= (and d!1526816 (not res!2027857)) b!4777572))

(assert (= (and b!4777572 res!2027858) b!4777573))

(declare-fun b_lambda!185093 () Bool)

(assert (=> (not b_lambda!185093) (not b!4777572)))

(declare-fun m!5753240 () Bool)

(assert (=> b!4777572 m!5753240))

(declare-fun m!5753242 () Bool)

(assert (=> b!4777573 m!5753242))

(assert (=> d!1526536 d!1526816))

(declare-fun d!1526818 () Bool)

(declare-fun res!2027859 () Bool)

(declare-fun e!2982555 () Bool)

(assert (=> d!1526818 (=> res!2027859 e!2982555)))

(assert (=> d!1526818 (= res!2027859 (and ((_ is Cons!53905) lt!1940369) (= (_1!31458 (h!60319 lt!1940369)) key!6641)))))

(assert (=> d!1526818 (= (containsKey!3763 lt!1940369 key!6641) e!2982555)))

(declare-fun b!4777574 () Bool)

(declare-fun e!2982556 () Bool)

(assert (=> b!4777574 (= e!2982555 e!2982556)))

(declare-fun res!2027860 () Bool)

(assert (=> b!4777574 (=> (not res!2027860) (not e!2982556))))

(assert (=> b!4777574 (= res!2027860 ((_ is Cons!53905) lt!1940369))))

(declare-fun b!4777575 () Bool)

(assert (=> b!4777575 (= e!2982556 (containsKey!3763 (t!361479 lt!1940369) key!6641))))

(assert (= (and d!1526818 (not res!2027859)) b!4777574))

(assert (= (and b!4777574 res!2027860) b!4777575))

(assert (=> b!4777575 m!5753030))

(assert (=> b!4777132 d!1526818))

(assert (=> d!1526552 d!1526564))

(assert (=> d!1526552 d!1526580))

(declare-fun d!1526820 () Bool)

(assert (=> d!1526820 (contains!17412 (extractMap!2321 (toList!6663 lm!2709)) key!6641)))

(assert (=> d!1526820 true))

(declare-fun _$34!898 () Unit!138938)

(assert (=> d!1526820 (= (choose!34158 lm!2709 key!6641 hashF!1687) _$34!898)))

(declare-fun bs!1150911 () Bool)

(assert (= bs!1150911 d!1526820))

(assert (=> bs!1150911 m!5752572))

(assert (=> bs!1150911 m!5752572))

(assert (=> bs!1150911 m!5752574))

(assert (=> d!1526552 d!1526820))

(declare-fun d!1526822 () Bool)

(declare-fun res!2027861 () Bool)

(declare-fun e!2982557 () Bool)

(assert (=> d!1526822 (=> res!2027861 e!2982557)))

(assert (=> d!1526822 (= res!2027861 ((_ is Nil!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526822 (= (forall!12062 (toList!6663 lm!2709) lambda!227092) e!2982557)))

(declare-fun b!4777576 () Bool)

(declare-fun e!2982558 () Bool)

(assert (=> b!4777576 (= e!2982557 e!2982558)))

(declare-fun res!2027862 () Bool)

(assert (=> b!4777576 (=> (not res!2027862) (not e!2982558))))

(assert (=> b!4777576 (= res!2027862 (dynLambda!21994 lambda!227092 (h!60320 (toList!6663 lm!2709))))))

(declare-fun b!4777577 () Bool)

(assert (=> b!4777577 (= e!2982558 (forall!12062 (t!361480 (toList!6663 lm!2709)) lambda!227092))))

(assert (= (and d!1526822 (not res!2027861)) b!4777576))

(assert (= (and b!4777576 res!2027862) b!4777577))

(declare-fun b_lambda!185095 () Bool)

(assert (=> (not b_lambda!185095) (not b!4777576)))

(declare-fun m!5753244 () Bool)

(assert (=> b!4777576 m!5753244))

(declare-fun m!5753246 () Bool)

(assert (=> b!4777577 m!5753246))

(assert (=> d!1526552 d!1526822))

(assert (=> b!4777233 d!1526564))

(assert (=> b!4777233 d!1526580))

(declare-fun d!1526824 () Bool)

(declare-fun res!2027867 () Bool)

(declare-fun e!2982563 () Bool)

(assert (=> d!1526824 (=> res!2027867 e!2982563)))

(assert (=> d!1526824 (= res!2027867 (or ((_ is Nil!53906) (toList!6663 lm!2709)) ((_ is Nil!53906) (t!361480 (toList!6663 lm!2709)))))))

(assert (=> d!1526824 (= (isStrictlySorted!834 (toList!6663 lm!2709)) e!2982563)))

(declare-fun b!4777582 () Bool)

(declare-fun e!2982564 () Bool)

(assert (=> b!4777582 (= e!2982563 e!2982564)))

(declare-fun res!2027868 () Bool)

(assert (=> b!4777582 (=> (not res!2027868) (not e!2982564))))

(assert (=> b!4777582 (= res!2027868 (bvslt (_1!31459 (h!60320 (toList!6663 lm!2709))) (_1!31459 (h!60320 (t!361480 (toList!6663 lm!2709))))))))

(declare-fun b!4777583 () Bool)

(assert (=> b!4777583 (= e!2982564 (isStrictlySorted!834 (t!361480 (toList!6663 lm!2709))))))

(assert (= (and d!1526824 (not res!2027867)) b!4777582))

(assert (= (and b!4777582 res!2027868) b!4777583))

(declare-fun m!5753248 () Bool)

(assert (=> b!4777583 m!5753248))

(assert (=> d!1526532 d!1526824))

(declare-fun d!1526826 () Bool)

(declare-fun c!814542 () Bool)

(assert (=> d!1526826 (= c!814542 ((_ is Nil!53906) (toList!6663 lm!2709)))))

(declare-fun e!2982567 () (InoxSet tuple2!56330))

(assert (=> d!1526826 (= (content!9621 (toList!6663 lm!2709)) e!2982567)))

(declare-fun b!4777588 () Bool)

(assert (=> b!4777588 (= e!2982567 ((as const (Array tuple2!56330 Bool)) false))))

(declare-fun b!4777589 () Bool)

(assert (=> b!4777589 (= e!2982567 ((_ map or) (store ((as const (Array tuple2!56330 Bool)) false) (h!60320 (toList!6663 lm!2709)) true) (content!9621 (t!361480 (toList!6663 lm!2709)))))))

(assert (= (and d!1526826 c!814542) b!4777588))

(assert (= (and d!1526826 (not c!814542)) b!4777589))

(declare-fun m!5753250 () Bool)

(assert (=> b!4777589 m!5753250))

(assert (=> b!4777589 m!5752840))

(assert (=> d!1526548 d!1526826))

(declare-fun d!1526828 () Bool)

(declare-fun lt!1940758 () Bool)

(assert (=> d!1526828 (= lt!1940758 (select (content!9621 (toList!6663 lm!2709)) (tuple2!56331 lt!1940371 lt!1940369)))))

(declare-fun e!2982569 () Bool)

(assert (=> d!1526828 (= lt!1940758 e!2982569)))

(declare-fun res!2027870 () Bool)

(assert (=> d!1526828 (=> (not res!2027870) (not e!2982569))))

(assert (=> d!1526828 (= res!2027870 ((_ is Cons!53906) (toList!6663 lm!2709)))))

(assert (=> d!1526828 (= (contains!17410 (toList!6663 lm!2709) (tuple2!56331 lt!1940371 lt!1940369)) lt!1940758)))

(declare-fun b!4777590 () Bool)

(declare-fun e!2982568 () Bool)

(assert (=> b!4777590 (= e!2982569 e!2982568)))

(declare-fun res!2027869 () Bool)

(assert (=> b!4777590 (=> res!2027869 e!2982568)))

(assert (=> b!4777590 (= res!2027869 (= (h!60320 (toList!6663 lm!2709)) (tuple2!56331 lt!1940371 lt!1940369)))))

(declare-fun b!4777591 () Bool)

(assert (=> b!4777591 (= e!2982568 (contains!17410 (t!361480 (toList!6663 lm!2709)) (tuple2!56331 lt!1940371 lt!1940369)))))

(assert (= (and d!1526828 res!2027870) b!4777590))

(assert (= (and b!4777590 (not res!2027869)) b!4777591))

(assert (=> d!1526828 m!5752646))

(declare-fun m!5753252 () Bool)

(assert (=> d!1526828 m!5753252))

(declare-fun m!5753254 () Bool)

(assert (=> b!4777591 m!5753254))

(assert (=> d!1526574 d!1526828))

(declare-fun d!1526830 () Bool)

(assert (=> d!1526830 (contains!17410 (toList!6663 lm!2709) (tuple2!56331 lt!1940371 lt!1940369))))

(assert (=> d!1526830 true))

(declare-fun _$41!478 () Unit!138938)

(assert (=> d!1526830 (= (choose!34164 lm!2709 lt!1940371 lt!1940369) _$41!478)))

(declare-fun bs!1150912 () Bool)

(assert (= bs!1150912 d!1526830))

(assert (=> bs!1150912 m!5752734))

(assert (=> d!1526574 d!1526830))

(assert (=> d!1526574 d!1526586))

(declare-fun d!1526832 () Bool)

(declare-fun res!2027871 () Bool)

(declare-fun e!2982570 () Bool)

(assert (=> d!1526832 (=> res!2027871 e!2982570)))

(assert (=> d!1526832 (= res!2027871 (not ((_ is Cons!53905) (_2!31459 (h!60320 (toList!6663 lm!2709))))))))

(assert (=> d!1526832 (= (noDuplicateKeys!2281 (_2!31459 (h!60320 (toList!6663 lm!2709)))) e!2982570)))

(declare-fun b!4777593 () Bool)

(declare-fun e!2982571 () Bool)

(assert (=> b!4777593 (= e!2982570 e!2982571)))

(declare-fun res!2027872 () Bool)

(assert (=> b!4777593 (=> (not res!2027872) (not e!2982571))))

(assert (=> b!4777593 (= res!2027872 (not (containsKey!3763 (t!361479 (_2!31459 (h!60320 (toList!6663 lm!2709)))) (_1!31458 (h!60319 (_2!31459 (h!60320 (toList!6663 lm!2709))))))))))

(declare-fun b!4777594 () Bool)

(assert (=> b!4777594 (= e!2982571 (noDuplicateKeys!2281 (t!361479 (_2!31459 (h!60320 (toList!6663 lm!2709))))))))

(assert (= (and d!1526832 (not res!2027871)) b!4777593))

(assert (= (and b!4777593 res!2027872) b!4777594))

(declare-fun m!5753256 () Bool)

(assert (=> b!4777593 m!5753256))

(declare-fun m!5753258 () Bool)

(assert (=> b!4777594 m!5753258))

(assert (=> bs!1150842 d!1526832))

(assert (=> b!4777232 d!1526536))

(declare-fun tp!1357201 () Bool)

(declare-fun b!4777601 () Bool)

(declare-fun e!2982574 () Bool)

(assert (=> b!4777601 (= e!2982574 (and tp_is_empty!33089 tp_is_empty!33091 tp!1357201))))

(assert (=> b!4777250 (= tp!1357197 e!2982574)))

(assert (= (and b!4777250 ((_ is Cons!53905) (_2!31459 (h!60320 (toList!6663 lm!2709))))) b!4777601))

(declare-fun b!4777602 () Bool)

(declare-fun e!2982575 () Bool)

(declare-fun tp!1357202 () Bool)

(declare-fun tp!1357203 () Bool)

(assert (=> b!4777602 (= e!2982575 (and tp!1357202 tp!1357203))))

(assert (=> b!4777250 (= tp!1357198 e!2982575)))

(assert (= (and b!4777250 ((_ is Cons!53906) (t!361480 (toList!6663 lm!2709)))) b!4777602))

(declare-fun b_lambda!185097 () Bool)

(assert (= b_lambda!185087 (or d!1526580 b_lambda!185097)))

(declare-fun bs!1150913 () Bool)

(declare-fun d!1526834 () Bool)

(assert (= bs!1150913 (and d!1526834 d!1526580)))

(assert (=> bs!1150913 (= (dynLambda!21994 lambda!227104 (h!60320 (toList!6663 lm!2709))) (noDuplicateKeys!2281 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(assert (=> bs!1150913 m!5752838))

(assert (=> b!4777430 d!1526834))

(declare-fun b_lambda!185099 () Bool)

(assert (= b_lambda!185093 (or d!1526536 b_lambda!185099)))

(declare-fun bs!1150914 () Bool)

(declare-fun d!1526836 () Bool)

(assert (= bs!1150914 (and d!1526836 d!1526536)))

(declare-fun allKeysSameHash!1932 (List!54029 (_ BitVec 64) Hashable!6790) Bool)

(assert (=> bs!1150914 (= (dynLambda!21994 lambda!227086 (h!60320 (toList!6663 lm!2709))) (allKeysSameHash!1932 (_2!31459 (h!60320 (toList!6663 lm!2709))) (_1!31459 (h!60320 (toList!6663 lm!2709))) hashF!1687))))

(declare-fun m!5753260 () Bool)

(assert (=> bs!1150914 m!5753260))

(assert (=> b!4777572 d!1526836))

(declare-fun b_lambda!185101 () Bool)

(assert (= b_lambda!185095 (or d!1526552 b_lambda!185101)))

(declare-fun bs!1150915 () Bool)

(declare-fun d!1526838 () Bool)

(assert (= bs!1150915 (and d!1526838 d!1526552)))

(assert (=> bs!1150915 (= (dynLambda!21994 lambda!227092 (h!60320 (toList!6663 lm!2709))) (noDuplicateKeys!2281 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(assert (=> bs!1150915 m!5752838))

(assert (=> b!4777576 d!1526838))

(declare-fun b_lambda!185103 () Bool)

(assert (= b_lambda!185083 (or d!1526544 b_lambda!185103)))

(declare-fun bs!1150916 () Bool)

(declare-fun d!1526840 () Bool)

(assert (= bs!1150916 (and d!1526840 d!1526544)))

(assert (=> bs!1150916 (= (dynLambda!21994 lambda!227089 (h!60320 (toList!6663 lm!2709))) (noDuplicateKeys!2281 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(assert (=> bs!1150916 m!5752838))

(assert (=> b!4777394 d!1526840))

(declare-fun b_lambda!185105 () Bool)

(assert (= b_lambda!185065 (or start!489770 b_lambda!185105)))

(declare-fun bs!1150917 () Bool)

(declare-fun d!1526842 () Bool)

(assert (= bs!1150917 (and d!1526842 start!489770)))

(assert (=> bs!1150917 (= (dynLambda!21994 lambda!227083 (h!60320 (t!361480 (toList!6663 lm!2709)))) (noDuplicateKeys!2281 (_2!31459 (h!60320 (t!361480 (toList!6663 lm!2709))))))))

(declare-fun m!5753262 () Bool)

(assert (=> bs!1150917 m!5753262))

(assert (=> b!4777270 d!1526842))

(declare-fun b_lambda!185107 () Bool)

(assert (= b_lambda!185073 (or d!1526590 b_lambda!185107)))

(declare-fun bs!1150918 () Bool)

(declare-fun d!1526844 () Bool)

(assert (= bs!1150918 (and d!1526844 d!1526590)))

(assert (=> bs!1150918 (= (dynLambda!21994 lambda!227124 (h!60320 (toList!6663 lm!2709))) (noDuplicateKeys!2281 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(assert (=> bs!1150918 m!5752838))

(assert (=> b!4777361 d!1526844))

(declare-fun b_lambda!185109 () Bool)

(assert (= b_lambda!185091 (or d!1526590 b_lambda!185109)))

(declare-fun bs!1150919 () Bool)

(declare-fun d!1526846 () Bool)

(assert (= bs!1150919 (and d!1526846 d!1526590)))

(assert (=> bs!1150919 (= (dynLambda!21994 lambda!227124 (tuple2!56331 (hash!4768 hashF!1687 key!6641) (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641)))) (noDuplicateKeys!2281 (_2!31459 (tuple2!56331 (hash!4768 hashF!1687 key!6641) (apply!12853 lm!2709 (hash!4768 hashF!1687 key!6641))))))))

(declare-fun m!5753264 () Bool)

(assert (=> bs!1150919 m!5753264))

(assert (=> d!1526804 d!1526846))

(declare-fun b_lambda!185111 () Bool)

(assert (= b_lambda!185063 (or d!1526584 b_lambda!185111)))

(declare-fun bs!1150920 () Bool)

(declare-fun d!1526848 () Bool)

(assert (= bs!1150920 (and d!1526848 d!1526584)))

(assert (=> bs!1150920 (= (dynLambda!21994 lambda!227107 (h!60320 (toList!6663 lm!2709))) (noDuplicateKeys!2281 (_2!31459 (h!60320 (toList!6663 lm!2709)))))))

(assert (=> bs!1150920 m!5752838))

(assert (=> b!4777268 d!1526848))

(declare-fun b_lambda!185113 () Bool)

(assert (= b_lambda!185085 (or start!489770 b_lambda!185113)))

(assert (=> d!1526724 d!1526614))

(check-sat (not d!1526748) (not b!4777295) (not d!1526820) (not bs!1150917) (not b!4777297) (not d!1526806) (not b!4777311) (not bs!1150919) (not b!4777306) (not b!4777569) (not b!4777362) (not d!1526676) (not b!4777314) (not b!4777602) (not d!1526666) (not d!1526620) (not b_lambda!185111) (not b!4777401) (not d!1526658) (not d!1526812) (not d!1526804) (not b_lambda!185059) (not b!4777543) (not b!4777573) (not b!4777568) (not bs!1150913) (not b!4777591) (not b!4777312) (not b!4777431) (not bm!334596) (not bs!1150916) (not b!4777541) (not bm!334598) (not b!4777403) (not d!1526796) (not d!1526618) (not b!4777395) (not d!1526808) (not b!4777589) (not b!4777290) (not b_lambda!185113) (not d!1526794) (not bm!334597) (not b!4777252) (not b!4777583) (not b!4777393) (not d!1526814) (not b!4777387) (not b!4777409) (not d!1526624) (not b!4777542) (not d!1526752) (not d!1526674) (not b_lambda!185061) (not b!4777414) (not d!1526828) (not b!4777263) (not b!4777269) (not b!4777385) (not bs!1150914) (not b!4777566) tp_is_empty!33091 (not b!4777544) (not b!4777563) (not b!4777562) (not b!4777398) (not d!1526802) (not b!4777559) (not b_lambda!185097) (not d!1526728) (not b!4777601) (not b!4777555) (not d!1526810) (not b!4777547) (not b!4777554) (not b!4777271) (not b!4777265) (not d!1526716) (not b!4777407) (not b!4777594) (not d!1526636) (not b!4777333) (not b_lambda!185107) (not b!4777404) (not b!4777334) (not b!4777593) (not d!1526736) (not d!1526680) (not b!4777415) (not d!1526644) (not b!4777577) (not bs!1150918) tp_is_empty!33089 (not b!4777425) (not b_lambda!185103) (not d!1526714) (not b_lambda!185099) (not b!4777332) (not b!4777560) (not d!1526710) (not b!4777558) (not b!4777293) (not b!4777575) (not b!4777359) (not b_lambda!185105) (not b_lambda!185101) (not d!1526632) (not b_lambda!185109) (not b!4777571) (not d!1526830) (not b!4777428) (not bs!1150920) (not b!4777291) (not b!4777557) (not bs!1150915) (not b!4777400) (not d!1526626) (not b!4777267) (not d!1526708))
(check-sat)
