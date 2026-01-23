; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218356 () Bool)

(assert start!218356)

(declare-fun b!2241225 () Bool)

(declare-fun b_free!65097 () Bool)

(declare-fun b_next!65801 () Bool)

(assert (=> b!2241225 (= b_free!65097 (not b_next!65801))))

(declare-fun tp!706574 () Bool)

(declare-fun b_and!175117 () Bool)

(assert (=> b!2241225 (= tp!706574 b_and!175117)))

(declare-fun b!2241227 () Bool)

(declare-fun b_free!65099 () Bool)

(declare-fun b_next!65803 () Bool)

(assert (=> b!2241227 (= b_free!65099 (not b_next!65803))))

(declare-fun tp!706577 () Bool)

(declare-fun b_and!175119 () Bool)

(assert (=> b!2241227 (= tp!706577 b_and!175119)))

(declare-fun mapIsEmpty!14798 () Bool)

(declare-fun mapRes!14798 () Bool)

(assert (=> mapIsEmpty!14798 mapRes!14798))

(declare-fun b!2241219 () Bool)

(declare-fun e!1433117 () Bool)

(declare-fun e!1433119 () Bool)

(assert (=> b!2241219 (= e!1433117 e!1433119)))

(declare-fun res!957889 () Bool)

(assert (=> b!2241219 (=> (not res!957889) (not e!1433119))))

(declare-datatypes ((C!13188 0))(
  ( (C!13189 (val!7642 Int)) )
))
(declare-datatypes ((Regex!6521 0))(
  ( (ElementMatch!6521 (c!356850 C!13188)) (Concat!10859 (regOne!13554 Regex!6521) (regTwo!13554 Regex!6521)) (EmptyExpr!6521) (Star!6521 (reg!6850 Regex!6521)) (EmptyLang!6521) (Union!6521 (regOne!13555 Regex!6521) (regTwo!13555 Regex!6521)) )
))
(declare-datatypes ((List!26538 0))(
  ( (Nil!26444) (Cons!26444 (h!31845 Regex!6521) (t!199974 List!26538)) )
))
(declare-datatypes ((Context!4138 0))(
  ( (Context!4139 (exprs!2569 List!26538)) )
))
(declare-datatypes ((tuple2!25890 0))(
  ( (tuple2!25891 (_1!15455 Context!4138) (_2!15455 C!13188)) )
))
(declare-datatypes ((array!11050 0))(
  ( (array!11051 (arr!4905 (Array (_ BitVec 32) (_ BitVec 64))) (size!20686 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25892 0))(
  ( (tuple2!25893 (_1!15456 tuple2!25890) (_2!15456 (InoxSet Context!4138))) )
))
(declare-datatypes ((List!26539 0))(
  ( (Nil!26445) (Cons!26445 (h!31846 tuple2!25892) (t!199975 List!26539)) )
))
(declare-datatypes ((array!11052 0))(
  ( (array!11053 (arr!4906 (Array (_ BitVec 32) List!26539)) (size!20687 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6318 0))(
  ( (LongMapFixedSize!6319 (defaultEntry!3524 Int) (mask!7773 (_ BitVec 32)) (extraKeys!3407 (_ BitVec 32)) (zeroValue!3417 List!26539) (minValue!3417 List!26539) (_size!6365 (_ BitVec 32)) (_keys!3456 array!11050) (_values!3439 array!11052) (_vacant!3220 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12453 0))(
  ( (Cell!12454 (v!30078 LongMapFixedSize!6318)) )
))
(declare-datatypes ((MutLongMap!3159 0))(
  ( (LongMap!3159 (underlying!6519 Cell!12453)) (MutLongMapExt!3158 (__x!17703 Int)) )
))
(declare-datatypes ((Cell!12455 0))(
  ( (Cell!12456 (v!30079 MutLongMap!3159)) )
))
(declare-datatypes ((Hashable!3069 0))(
  ( (HashableExt!3068 (__x!17704 Int)) )
))
(declare-datatypes ((MutableMap!3069 0))(
  ( (MutableMapExt!3068 (__x!17705 Int)) (HashMap!3069 (underlying!6520 Cell!12455) (hashF!4992 Hashable!3069) (_size!6366 (_ BitVec 32)) (defaultValue!3231 Int)) )
))
(declare-datatypes ((CacheUp!2008 0))(
  ( (CacheUp!2009 (cache!3450 MutableMap!3069)) )
))
(declare-fun thiss!28603 () CacheUp!2008)

(declare-fun lt!834180 () tuple2!25890)

(declare-fun contains!4494 (MutableMap!3069 tuple2!25890) Bool)

(assert (=> b!2241219 (= res!957889 (contains!4494 (cache!3450 thiss!28603) lt!834180))))

(declare-fun ctx!36 () Context!4138)

(declare-fun a!922 () C!13188)

(assert (=> b!2241219 (= lt!834180 (tuple2!25891 ctx!36 a!922))))

(declare-fun b!2241220 () Bool)

(declare-fun e!1433123 () Bool)

(declare-fun e!1433121 () Bool)

(assert (=> b!2241220 (= e!1433123 e!1433121)))

(declare-fun b!2241221 () Bool)

(declare-fun e!1433120 () Bool)

(declare-fun e!1433122 () Bool)

(assert (=> b!2241221 (= e!1433120 e!1433122)))

(declare-fun res!957890 () Bool)

(assert (=> start!218356 (=> (not res!957890) (not e!1433117))))

(declare-fun validCacheMapUp!302 (MutableMap!3069) Bool)

(assert (=> start!218356 (= res!957890 (validCacheMapUp!302 (cache!3450 thiss!28603)))))

(assert (=> start!218356 e!1433117))

(declare-fun inv!35915 (CacheUp!2008) Bool)

(assert (=> start!218356 (and (inv!35915 thiss!28603) e!1433120)))

(declare-fun e!1433118 () Bool)

(declare-fun inv!35916 (Context!4138) Bool)

(assert (=> start!218356 (and (inv!35916 ctx!36) e!1433118)))

(declare-fun tp_is_empty!10263 () Bool)

(assert (=> start!218356 tp_is_empty!10263))

(declare-fun mapNonEmpty!14798 () Bool)

(declare-fun tp!706575 () Bool)

(declare-fun tp!706572 () Bool)

(assert (=> mapNonEmpty!14798 (= mapRes!14798 (and tp!706575 tp!706572))))

(declare-fun mapRest!14798 () (Array (_ BitVec 32) List!26539))

(declare-fun mapKey!14798 () (_ BitVec 32))

(declare-fun mapValue!14798 () List!26539)

(assert (=> mapNonEmpty!14798 (= (arr!4906 (_values!3439 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))) (store mapRest!14798 mapKey!14798 mapValue!14798))))

(declare-fun b!2241222 () Bool)

(declare-fun e!1433114 () Bool)

(declare-fun lt!834178 () MutLongMap!3159)

(get-info :version)

(assert (=> b!2241222 (= e!1433114 (and e!1433123 ((_ is LongMap!3159) lt!834178)))))

(assert (=> b!2241222 (= lt!834178 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))

(declare-fun b!2241223 () Bool)

(declare-fun e!1433115 () Bool)

(assert (=> b!2241223 (= e!1433121 e!1433115)))

(declare-fun b!2241224 () Bool)

(declare-fun e!1433116 () Bool)

(declare-fun tp!706578 () Bool)

(assert (=> b!2241224 (= e!1433116 (and tp!706578 mapRes!14798))))

(declare-fun condMapEmpty!14798 () Bool)

(declare-fun mapDefault!14798 () List!26539)

(assert (=> b!2241224 (= condMapEmpty!14798 (= (arr!4906 (_values!3439 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))) ((as const (Array (_ BitVec 32) List!26539)) mapDefault!14798)))))

(declare-fun tp!706576 () Bool)

(declare-fun tp!706573 () Bool)

(declare-fun array_inv!3523 (array!11050) Bool)

(declare-fun array_inv!3524 (array!11052) Bool)

(assert (=> b!2241225 (= e!1433115 (and tp!706574 tp!706576 tp!706573 (array_inv!3523 (_keys!3456 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))) (array_inv!3524 (_values!3439 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))) e!1433116))))

(declare-fun b!2241226 () Bool)

(declare-fun tp!706571 () Bool)

(assert (=> b!2241226 (= e!1433118 tp!706571)))

(assert (=> b!2241227 (= e!1433122 (and e!1433114 tp!706577))))

(declare-fun b!2241228 () Bool)

(assert (=> b!2241228 (= e!1433119 (not ((_ is HashMap!3069) (cache!3450 thiss!28603))))))

(declare-fun apply!6525 (MutableMap!3069 tuple2!25890) (InoxSet Context!4138))

(declare-fun derivationStepZipperUp!46 (Context!4138 C!13188) (InoxSet Context!4138))

(assert (=> b!2241228 (= (apply!6525 (cache!3450 thiss!28603) lt!834180) (derivationStepZipperUp!46 (_1!15455 lt!834180) (_2!15455 lt!834180)))))

(declare-fun lt!834179 () (InoxSet Context!4138))

(assert (=> b!2241228 (= lt!834179 (apply!6525 (cache!3450 thiss!28603) lt!834180))))

(declare-fun lt!834181 () (InoxSet Context!4138))

(assert (=> b!2241228 (= lt!834181 (apply!6525 (cache!3450 thiss!28603) lt!834180))))

(declare-fun lt!834183 () tuple2!25890)

(assert (=> b!2241228 (= lt!834183 lt!834180)))

(declare-fun lt!834182 () tuple2!25892)

(assert (=> b!2241228 (= lt!834182 (tuple2!25893 lt!834180 (apply!6525 (cache!3450 thiss!28603) lt!834180)))))

(declare-datatypes ((Unit!39419 0))(
  ( (Unit!39420) )
))
(declare-fun lt!834177 () Unit!39419)

(declare-fun lambda!84802 () Int)

(declare-fun lemmaForallPairsThenForLookup!37 (MutableMap!3069 tuple2!25890 Int) Unit!39419)

(assert (=> b!2241228 (= lt!834177 (lemmaForallPairsThenForLookup!37 (cache!3450 thiss!28603) lt!834180 lambda!84802))))

(assert (= (and start!218356 res!957890) b!2241219))

(assert (= (and b!2241219 res!957889) b!2241228))

(assert (= (and b!2241224 condMapEmpty!14798) mapIsEmpty!14798))

(assert (= (and b!2241224 (not condMapEmpty!14798)) mapNonEmpty!14798))

(assert (= b!2241225 b!2241224))

(assert (= b!2241223 b!2241225))

(assert (= b!2241220 b!2241223))

(assert (= (and b!2241222 ((_ is LongMap!3159) (v!30079 (underlying!6520 (cache!3450 thiss!28603))))) b!2241220))

(assert (= b!2241227 b!2241222))

(assert (= (and b!2241221 ((_ is HashMap!3069) (cache!3450 thiss!28603))) b!2241227))

(assert (= start!218356 b!2241221))

(assert (= start!218356 b!2241226))

(declare-fun m!2673486 () Bool)

(assert (=> mapNonEmpty!14798 m!2673486))

(declare-fun m!2673488 () Bool)

(assert (=> b!2241225 m!2673488))

(declare-fun m!2673490 () Bool)

(assert (=> b!2241225 m!2673490))

(declare-fun m!2673492 () Bool)

(assert (=> start!218356 m!2673492))

(declare-fun m!2673494 () Bool)

(assert (=> start!218356 m!2673494))

(declare-fun m!2673496 () Bool)

(assert (=> start!218356 m!2673496))

(declare-fun m!2673498 () Bool)

(assert (=> b!2241228 m!2673498))

(declare-fun m!2673500 () Bool)

(assert (=> b!2241228 m!2673500))

(declare-fun m!2673502 () Bool)

(assert (=> b!2241228 m!2673502))

(declare-fun m!2673504 () Bool)

(assert (=> b!2241219 m!2673504))

(check-sat (not b!2241228) b_and!175119 tp_is_empty!10263 (not start!218356) b_and!175117 (not b_next!65803) (not b_next!65801) (not b!2241224) (not mapNonEmpty!14798) (not b!2241219) (not b!2241226) (not b!2241225))
(check-sat b_and!175119 b_and!175117 (not b_next!65801) (not b_next!65803))
(get-model)

(declare-fun d!665800 () Bool)

(assert (=> d!665800 (= (array_inv!3523 (_keys!3456 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))) (bvsge (size!20686 (_keys!3456 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2241225 d!665800))

(declare-fun d!665802 () Bool)

(assert (=> d!665802 (= (array_inv!3524 (_values!3439 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))) (bvsge (size!20687 (_values!3439 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2241225 d!665802))

(declare-fun bs!454325 () Bool)

(declare-fun b!2241234 () Bool)

(assert (= bs!454325 (and b!2241234 b!2241228)))

(declare-fun lambda!84805 () Int)

(assert (=> bs!454325 (= lambda!84805 lambda!84802)))

(declare-fun d!665804 () Bool)

(declare-fun res!957895 () Bool)

(declare-fun e!1433127 () Bool)

(assert (=> d!665804 (=> (not res!957895) (not e!1433127))))

(declare-fun valid!2373 (MutableMap!3069) Bool)

(assert (=> d!665804 (= res!957895 (valid!2373 (cache!3450 thiss!28603)))))

(assert (=> d!665804 (= (validCacheMapUp!302 (cache!3450 thiss!28603)) e!1433127)))

(declare-fun b!2241233 () Bool)

(declare-fun res!957896 () Bool)

(assert (=> b!2241233 (=> (not res!957896) (not e!1433127))))

(declare-fun invariantList!390 (List!26539) Bool)

(declare-datatypes ((ListMap!877 0))(
  ( (ListMap!878 (toList!1391 List!26539)) )
))
(declare-fun map!5473 (MutableMap!3069) ListMap!877)

(assert (=> b!2241233 (= res!957896 (invariantList!390 (toList!1391 (map!5473 (cache!3450 thiss!28603)))))))

(declare-fun forall!5445 (List!26539 Int) Bool)

(assert (=> b!2241234 (= e!1433127 (forall!5445 (toList!1391 (map!5473 (cache!3450 thiss!28603))) lambda!84805))))

(assert (= (and d!665804 res!957895) b!2241233))

(assert (= (and b!2241233 res!957896) b!2241234))

(declare-fun m!2673507 () Bool)

(assert (=> d!665804 m!2673507))

(declare-fun m!2673509 () Bool)

(assert (=> b!2241233 m!2673509))

(declare-fun m!2673511 () Bool)

(assert (=> b!2241233 m!2673511))

(assert (=> b!2241234 m!2673509))

(declare-fun m!2673513 () Bool)

(assert (=> b!2241234 m!2673513))

(assert (=> start!218356 d!665804))

(declare-fun d!665806 () Bool)

(declare-fun res!957899 () Bool)

(declare-fun e!1433130 () Bool)

(assert (=> d!665806 (=> (not res!957899) (not e!1433130))))

(assert (=> d!665806 (= res!957899 ((_ is HashMap!3069) (cache!3450 thiss!28603)))))

(assert (=> d!665806 (= (inv!35915 thiss!28603) e!1433130)))

(declare-fun b!2241237 () Bool)

(assert (=> b!2241237 (= e!1433130 (validCacheMapUp!302 (cache!3450 thiss!28603)))))

(assert (= (and d!665806 res!957899) b!2241237))

(assert (=> b!2241237 m!2673492))

(assert (=> start!218356 d!665806))

(declare-fun d!665808 () Bool)

(declare-fun lambda!84808 () Int)

(declare-fun forall!5446 (List!26538 Int) Bool)

(assert (=> d!665808 (= (inv!35916 ctx!36) (forall!5446 (exprs!2569 ctx!36) lambda!84808))))

(declare-fun bs!454326 () Bool)

(assert (= bs!454326 d!665808))

(declare-fun m!2673515 () Bool)

(assert (=> bs!454326 m!2673515))

(assert (=> start!218356 d!665808))

(declare-fun b!2241250 () Bool)

(declare-fun lt!834270 () (InoxSet Context!4138))

(declare-fun e!1433137 () Bool)

(declare-datatypes ((Option!5163 0))(
  ( (None!5162) (Some!5162 (v!30080 (InoxSet Context!4138))) )
))
(declare-fun get!8004 (Option!5163) (InoxSet Context!4138))

(declare-fun getValueByKey!96 (List!26539 tuple2!25890) Option!5163)

(assert (=> b!2241250 (= e!1433137 (= lt!834270 (get!8004 (getValueByKey!96 (toList!1391 (map!5473 (cache!3450 thiss!28603))) lt!834180))))))

(declare-fun b!2241251 () Bool)

(declare-fun e!1433138 () (InoxSet Context!4138))

(declare-fun dynLambda!11543 (Int tuple2!25890) (InoxSet Context!4138))

(assert (=> b!2241251 (= e!1433138 (dynLambda!11543 (defaultValue!3231 (cache!3450 thiss!28603)) lt!834180))))

(declare-fun b!2241253 () Bool)

(assert (=> b!2241253 false))

(declare-fun lt!834252 () Unit!39419)

(declare-fun lt!834247 () Unit!39419)

(assert (=> b!2241253 (= lt!834252 lt!834247)))

(declare-datatypes ((tuple2!25894 0))(
  ( (tuple2!25895 (_1!15457 (_ BitVec 64)) (_2!15457 List!26539)) )
))
(declare-datatypes ((List!26540 0))(
  ( (Nil!26446) (Cons!26446 (h!31847 tuple2!25894) (t!199978 List!26540)) )
))
(declare-fun lt!834244 () List!26540)

(declare-fun lt!834257 () (_ BitVec 64))

(declare-fun lt!834249 () List!26539)

(declare-fun contains!4495 (List!26540 tuple2!25894) Bool)

(assert (=> b!2241253 (contains!4495 lt!834244 (tuple2!25895 lt!834257 lt!834249))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!45 (List!26540 (_ BitVec 64) List!26539) Unit!39419)

(assert (=> b!2241253 (= lt!834247 (lemmaGetValueByKeyImpliesContainsTuple!45 lt!834244 lt!834257 lt!834249))))

(declare-fun apply!6526 (MutLongMap!3159 (_ BitVec 64)) List!26539)

(assert (=> b!2241253 (= lt!834249 (apply!6526 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834257))))

(declare-datatypes ((ListLongMap!359 0))(
  ( (ListLongMap!360 (toList!1392 List!26540)) )
))
(declare-fun map!5474 (MutLongMap!3159) ListLongMap!359)

(assert (=> b!2241253 (= lt!834244 (toList!1392 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))))

(declare-fun lt!834261 () Unit!39419)

(declare-fun lt!834268 () Unit!39419)

(assert (=> b!2241253 (= lt!834261 lt!834268)))

(declare-fun lt!834251 () List!26540)

(declare-datatypes ((Option!5164 0))(
  ( (None!5163) (Some!5163 (v!30081 List!26539)) )
))
(declare-fun isDefined!4167 (Option!5164) Bool)

(declare-fun getValueByKey!97 (List!26540 (_ BitVec 64)) Option!5164)

(assert (=> b!2241253 (isDefined!4167 (getValueByKey!97 lt!834251 lt!834257))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!62 (List!26540 (_ BitVec 64)) Unit!39419)

(assert (=> b!2241253 (= lt!834268 (lemmaContainsKeyImpliesGetValueByKeyDefined!62 lt!834251 lt!834257))))

(assert (=> b!2241253 (= lt!834251 (toList!1392 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))))

(declare-fun e!1433139 () Unit!39419)

(declare-fun Unit!39421 () Unit!39419)

(assert (=> b!2241253 (= e!1433139 Unit!39421)))

(declare-fun b!2241254 () Bool)

(declare-datatypes ((Option!5165 0))(
  ( (None!5164) (Some!5164 (v!30082 tuple2!25892)) )
))
(declare-fun get!8005 (Option!5165) tuple2!25892)

(declare-fun getPair!44 (List!26539 tuple2!25890) Option!5165)

(assert (=> b!2241254 (= e!1433138 (_2!15456 (get!8005 (getPair!44 (apply!6526 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834257) lt!834180))))))

(declare-fun hash!591 (Hashable!3069 tuple2!25890) (_ BitVec 64))

(assert (=> b!2241254 (= lt!834257 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180))))

(declare-fun c!356859 () Bool)

(assert (=> b!2241254 (= c!356859 (not (contains!4495 (toList!1392 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))) (tuple2!25895 lt!834257 (apply!6526 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834257)))))))

(declare-fun lt!834253 () Unit!39419)

(assert (=> b!2241254 (= lt!834253 e!1433139)))

(declare-fun lt!834264 () Unit!39419)

(declare-fun lambda!84815 () Int)

(declare-fun forallContained!791 (List!26540 Int tuple2!25894) Unit!39419)

(assert (=> b!2241254 (= lt!834264 (forallContained!791 (toList!1392 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))) lambda!84815 (tuple2!25895 lt!834257 (apply!6526 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834257))))))

(declare-fun lt!834260 () ListLongMap!359)

(assert (=> b!2241254 (= lt!834260 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))))

(declare-fun lt!834265 () Unit!39419)

(declare-fun lemmaGetPairGetSameValueAsMap!25 (ListLongMap!359 tuple2!25890 (InoxSet Context!4138) Hashable!3069) Unit!39419)

(assert (=> b!2241254 (= lt!834265 (lemmaGetPairGetSameValueAsMap!25 lt!834260 lt!834180 (_2!15456 (get!8005 (getPair!44 (apply!6526 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834257) lt!834180))) (hashF!4992 (cache!3450 thiss!28603))))))

(declare-fun lt!834256 () Unit!39419)

(declare-fun lemmaInGenMapThenLongMapContainsHash!25 (ListLongMap!359 tuple2!25890 Hashable!3069) Unit!39419)

(assert (=> b!2241254 (= lt!834256 (lemmaInGenMapThenLongMapContainsHash!25 lt!834260 lt!834180 (hashF!4992 (cache!3450 thiss!28603))))))

(declare-fun contains!4496 (ListLongMap!359 (_ BitVec 64)) Bool)

(assert (=> b!2241254 (contains!4496 lt!834260 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180))))

(declare-fun lt!834267 () Unit!39419)

(assert (=> b!2241254 (= lt!834267 lt!834256)))

(declare-fun lt!834271 () (_ BitVec 64))

(assert (=> b!2241254 (= lt!834271 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180))))

(declare-fun lt!834250 () List!26539)

(declare-fun apply!6527 (ListLongMap!359 (_ BitVec 64)) List!26539)

(assert (=> b!2241254 (= lt!834250 (apply!6527 lt!834260 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180)))))

(declare-fun lt!834246 () Unit!39419)

(declare-fun lemmaGetValueImpliesTupleContained!26 (ListLongMap!359 (_ BitVec 64) List!26539) Unit!39419)

(assert (=> b!2241254 (= lt!834246 (lemmaGetValueImpliesTupleContained!26 lt!834260 lt!834271 lt!834250))))

(assert (=> b!2241254 (contains!4495 (toList!1392 lt!834260) (tuple2!25895 lt!834271 lt!834250))))

(declare-fun lt!834255 () Unit!39419)

(assert (=> b!2241254 (= lt!834255 lt!834246)))

(declare-fun lt!834272 () Unit!39419)

(assert (=> b!2241254 (= lt!834272 (forallContained!791 (toList!1392 lt!834260) lambda!84815 (tuple2!25895 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180) (apply!6527 lt!834260 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180)))))))

(declare-fun lt!834245 () Unit!39419)

(declare-fun lemmaInGenMapThenGetPairDefined!25 (ListLongMap!359 tuple2!25890 Hashable!3069) Unit!39419)

(assert (=> b!2241254 (= lt!834245 (lemmaInGenMapThenGetPairDefined!25 lt!834260 lt!834180 (hashF!4992 (cache!3450 thiss!28603))))))

(declare-fun lt!834258 () Unit!39419)

(assert (=> b!2241254 (= lt!834258 (lemmaInGenMapThenLongMapContainsHash!25 lt!834260 lt!834180 (hashF!4992 (cache!3450 thiss!28603))))))

(declare-fun lt!834273 () Unit!39419)

(assert (=> b!2241254 (= lt!834273 lt!834258)))

(declare-fun lt!834259 () (_ BitVec 64))

(assert (=> b!2241254 (= lt!834259 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180))))

(declare-fun lt!834262 () List!26539)

(assert (=> b!2241254 (= lt!834262 (apply!6527 lt!834260 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180)))))

(declare-fun lt!834263 () Unit!39419)

(assert (=> b!2241254 (= lt!834263 (lemmaGetValueImpliesTupleContained!26 lt!834260 lt!834259 lt!834262))))

(assert (=> b!2241254 (contains!4495 (toList!1392 lt!834260) (tuple2!25895 lt!834259 lt!834262))))

(declare-fun lt!834266 () Unit!39419)

(assert (=> b!2241254 (= lt!834266 lt!834263)))

(declare-fun lt!834254 () Unit!39419)

(assert (=> b!2241254 (= lt!834254 (forallContained!791 (toList!1392 lt!834260) lambda!84815 (tuple2!25895 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180) (apply!6527 lt!834260 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180)))))))

(declare-fun isDefined!4168 (Option!5165) Bool)

(assert (=> b!2241254 (isDefined!4168 (getPair!44 (apply!6527 lt!834260 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180)) lt!834180))))

(declare-fun lt!834269 () Unit!39419)

(assert (=> b!2241254 (= lt!834269 lt!834245)))

(declare-fun extractMap!124 (List!26540) ListMap!877)

(assert (=> b!2241254 (= (_2!15456 (get!8005 (getPair!44 (apply!6527 lt!834260 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180)) lt!834180))) (get!8004 (getValueByKey!96 (toList!1391 (extractMap!124 (toList!1392 lt!834260))) lt!834180)))))

(declare-fun lt!834248 () Unit!39419)

(assert (=> b!2241254 (= lt!834248 lt!834265)))

(declare-fun b!2241255 () Bool)

(assert (=> b!2241255 (= e!1433137 (= lt!834270 (dynLambda!11543 (defaultValue!3231 (cache!3450 thiss!28603)) lt!834180)))))

(declare-fun b!2241252 () Bool)

(declare-fun Unit!39422 () Unit!39419)

(assert (=> b!2241252 (= e!1433139 Unit!39422)))

(declare-fun d!665810 () Bool)

(assert (=> d!665810 e!1433137))

(declare-fun c!356858 () Bool)

(assert (=> d!665810 (= c!356858 (contains!4494 (cache!3450 thiss!28603) lt!834180))))

(assert (=> d!665810 (= lt!834270 e!1433138)))

(declare-fun c!356857 () Bool)

(assert (=> d!665810 (= c!356857 (not (contains!4494 (cache!3450 thiss!28603) lt!834180)))))

(assert (=> d!665810 (valid!2373 (cache!3450 thiss!28603))))

(assert (=> d!665810 (= (apply!6525 (cache!3450 thiss!28603) lt!834180) lt!834270)))

(assert (= (and d!665810 c!356857) b!2241251))

(assert (= (and d!665810 (not c!356857)) b!2241254))

(assert (= (and b!2241254 c!356859) b!2241253))

(assert (= (and b!2241254 (not c!356859)) b!2241252))

(assert (= (and d!665810 c!356858) b!2241250))

(assert (= (and d!665810 (not c!356858)) b!2241255))

(declare-fun b_lambda!71773 () Bool)

(assert (=> (not b_lambda!71773) (not b!2241251)))

(declare-fun t!199977 () Bool)

(declare-fun tb!132867 () Bool)

(assert (=> (and b!2241227 (= (defaultValue!3231 (cache!3450 thiss!28603)) (defaultValue!3231 (cache!3450 thiss!28603))) t!199977) tb!132867))

(assert (=> b!2241251 t!199977))

(declare-fun result!161856 () Bool)

(declare-fun b_and!175121 () Bool)

(assert (= b_and!175119 (and (=> t!199977 result!161856) b_and!175121)))

(declare-fun b_lambda!71775 () Bool)

(assert (=> (not b_lambda!71775) (not b!2241255)))

(assert (=> b!2241255 t!199977))

(declare-fun b_and!175123 () Bool)

(assert (= b_and!175121 (and (=> t!199977 result!161856) b_and!175123)))

(declare-fun m!2673517 () Bool)

(assert (=> b!2241255 m!2673517))

(assert (=> b!2241250 m!2673509))

(declare-fun m!2673519 () Bool)

(assert (=> b!2241250 m!2673519))

(assert (=> b!2241250 m!2673519))

(declare-fun m!2673521 () Bool)

(assert (=> b!2241250 m!2673521))

(declare-fun m!2673523 () Bool)

(assert (=> b!2241253 m!2673523))

(declare-fun m!2673525 () Bool)

(assert (=> b!2241253 m!2673525))

(declare-fun m!2673527 () Bool)

(assert (=> b!2241253 m!2673527))

(assert (=> b!2241253 m!2673523))

(declare-fun m!2673529 () Bool)

(assert (=> b!2241253 m!2673529))

(declare-fun m!2673531 () Bool)

(assert (=> b!2241253 m!2673531))

(declare-fun m!2673533 () Bool)

(assert (=> b!2241253 m!2673533))

(declare-fun m!2673535 () Bool)

(assert (=> b!2241253 m!2673535))

(assert (=> d!665810 m!2673504))

(assert (=> d!665810 m!2673507))

(declare-fun m!2673537 () Bool)

(assert (=> b!2241254 m!2673537))

(declare-fun m!2673539 () Bool)

(assert (=> b!2241254 m!2673539))

(declare-fun m!2673541 () Bool)

(assert (=> b!2241254 m!2673541))

(declare-fun m!2673543 () Bool)

(assert (=> b!2241254 m!2673543))

(declare-fun m!2673545 () Bool)

(assert (=> b!2241254 m!2673545))

(declare-fun m!2673547 () Bool)

(assert (=> b!2241254 m!2673547))

(assert (=> b!2241254 m!2673529))

(declare-fun m!2673549 () Bool)

(assert (=> b!2241254 m!2673549))

(assert (=> b!2241254 m!2673543))

(declare-fun m!2673551 () Bool)

(assert (=> b!2241254 m!2673551))

(declare-fun m!2673553 () Bool)

(assert (=> b!2241254 m!2673553))

(declare-fun m!2673555 () Bool)

(assert (=> b!2241254 m!2673555))

(declare-fun m!2673557 () Bool)

(assert (=> b!2241254 m!2673557))

(declare-fun m!2673559 () Bool)

(assert (=> b!2241254 m!2673559))

(declare-fun m!2673561 () Bool)

(assert (=> b!2241254 m!2673561))

(assert (=> b!2241254 m!2673535))

(assert (=> b!2241254 m!2673559))

(declare-fun m!2673563 () Bool)

(assert (=> b!2241254 m!2673563))

(declare-fun m!2673565 () Bool)

(assert (=> b!2241254 m!2673565))

(assert (=> b!2241254 m!2673555))

(declare-fun m!2673567 () Bool)

(assert (=> b!2241254 m!2673567))

(assert (=> b!2241254 m!2673539))

(assert (=> b!2241254 m!2673555))

(declare-fun m!2673569 () Bool)

(assert (=> b!2241254 m!2673569))

(declare-fun m!2673571 () Bool)

(assert (=> b!2241254 m!2673571))

(declare-fun m!2673573 () Bool)

(assert (=> b!2241254 m!2673573))

(assert (=> b!2241254 m!2673537))

(declare-fun m!2673575 () Bool)

(assert (=> b!2241254 m!2673575))

(declare-fun m!2673577 () Bool)

(assert (=> b!2241254 m!2673577))

(assert (=> b!2241254 m!2673535))

(assert (=> b!2241254 m!2673537))

(assert (=> b!2241254 m!2673549))

(assert (=> b!2241251 m!2673517))

(assert (=> b!2241228 d!665810))

(declare-fun b!2241266 () Bool)

(declare-fun e!1433148 () (InoxSet Context!4138))

(declare-fun e!1433146 () (InoxSet Context!4138))

(assert (=> b!2241266 (= e!1433148 e!1433146)))

(declare-fun c!356865 () Bool)

(assert (=> b!2241266 (= c!356865 ((_ is Cons!26444) (exprs!2569 (_1!15455 lt!834180))))))

(declare-fun b!2241268 () Bool)

(declare-fun call!135255 () (InoxSet Context!4138))

(assert (=> b!2241268 (= e!1433148 ((_ map or) call!135255 (derivationStepZipperUp!46 (Context!4139 (t!199974 (exprs!2569 (_1!15455 lt!834180)))) (_2!15455 lt!834180))))))

(declare-fun b!2241269 () Bool)

(assert (=> b!2241269 (= e!1433146 ((as const (Array Context!4138 Bool)) false))))

(declare-fun b!2241270 () Bool)

(assert (=> b!2241270 (= e!1433146 call!135255)))

(declare-fun bm!135250 () Bool)

(declare-fun derivationStepZipperDown!84 (Regex!6521 Context!4138 C!13188) (InoxSet Context!4138))

(assert (=> bm!135250 (= call!135255 (derivationStepZipperDown!84 (h!31845 (exprs!2569 (_1!15455 lt!834180))) (Context!4139 (t!199974 (exprs!2569 (_1!15455 lt!834180)))) (_2!15455 lt!834180)))))

(declare-fun b!2241267 () Bool)

(declare-fun e!1433147 () Bool)

(declare-fun nullable!1791 (Regex!6521) Bool)

(assert (=> b!2241267 (= e!1433147 (nullable!1791 (h!31845 (exprs!2569 (_1!15455 lt!834180)))))))

(declare-fun d!665812 () Bool)

(declare-fun c!356864 () Bool)

(assert (=> d!665812 (= c!356864 e!1433147)))

(declare-fun res!957902 () Bool)

(assert (=> d!665812 (=> (not res!957902) (not e!1433147))))

(assert (=> d!665812 (= res!957902 ((_ is Cons!26444) (exprs!2569 (_1!15455 lt!834180))))))

(assert (=> d!665812 (= (derivationStepZipperUp!46 (_1!15455 lt!834180) (_2!15455 lt!834180)) e!1433148)))

(assert (= (and d!665812 res!957902) b!2241267))

(assert (= (and d!665812 c!356864) b!2241268))

(assert (= (and d!665812 (not c!356864)) b!2241266))

(assert (= (and b!2241266 c!356865) b!2241270))

(assert (= (and b!2241266 (not c!356865)) b!2241269))

(assert (= (or b!2241268 b!2241270) bm!135250))

(declare-fun m!2673579 () Bool)

(assert (=> b!2241268 m!2673579))

(declare-fun m!2673581 () Bool)

(assert (=> bm!135250 m!2673581))

(declare-fun m!2673583 () Bool)

(assert (=> b!2241267 m!2673583))

(assert (=> b!2241228 d!665812))

(declare-fun d!665814 () Bool)

(declare-fun dynLambda!11544 (Int tuple2!25892) Bool)

(assert (=> d!665814 (dynLambda!11544 lambda!84802 (tuple2!25893 lt!834180 (apply!6525 (cache!3450 thiss!28603) lt!834180)))))

(declare-fun lt!834276 () Unit!39419)

(declare-fun choose!13142 (MutableMap!3069 tuple2!25890 Int) Unit!39419)

(assert (=> d!665814 (= lt!834276 (choose!13142 (cache!3450 thiss!28603) lt!834180 lambda!84802))))

(assert (=> d!665814 (valid!2373 (cache!3450 thiss!28603))))

(assert (=> d!665814 (= (lemmaForallPairsThenForLookup!37 (cache!3450 thiss!28603) lt!834180 lambda!84802) lt!834276)))

(declare-fun b_lambda!71777 () Bool)

(assert (=> (not b_lambda!71777) (not d!665814)))

(declare-fun bs!454327 () Bool)

(assert (= bs!454327 d!665814))

(assert (=> bs!454327 m!2673498))

(declare-fun m!2673585 () Bool)

(assert (=> bs!454327 m!2673585))

(declare-fun m!2673587 () Bool)

(assert (=> bs!454327 m!2673587))

(assert (=> bs!454327 m!2673507))

(assert (=> b!2241228 d!665814))

(declare-fun bs!454328 () Bool)

(declare-fun b!2241303 () Bool)

(assert (= bs!454328 (and b!2241303 b!2241254)))

(declare-fun lambda!84818 () Int)

(assert (=> bs!454328 (= lambda!84818 lambda!84815)))

(declare-fun b!2241293 () Bool)

(assert (=> b!2241293 false))

(declare-fun lt!834336 () Unit!39419)

(declare-fun lt!834318 () Unit!39419)

(assert (=> b!2241293 (= lt!834336 lt!834318)))

(declare-fun lt!834320 () ListLongMap!359)

(declare-fun contains!4497 (ListMap!877 tuple2!25890) Bool)

(assert (=> b!2241293 (contains!4497 (extractMap!124 (toList!1392 lt!834320)) lt!834180)))

(declare-fun lemmaInLongMapThenInGenericMap!44 (ListLongMap!359 tuple2!25890 Hashable!3069) Unit!39419)

(assert (=> b!2241293 (= lt!834318 (lemmaInLongMapThenInGenericMap!44 lt!834320 lt!834180 (hashF!4992 (cache!3450 thiss!28603))))))

(declare-fun call!135272 () ListLongMap!359)

(assert (=> b!2241293 (= lt!834320 call!135272)))

(declare-fun e!1433166 () Unit!39419)

(declare-fun Unit!39423 () Unit!39419)

(assert (=> b!2241293 (= e!1433166 Unit!39423)))

(declare-fun d!665816 () Bool)

(declare-fun lt!834335 () Bool)

(assert (=> d!665816 (= lt!834335 (contains!4497 (map!5473 (cache!3450 thiss!28603)) lt!834180))))

(declare-fun e!1433164 () Bool)

(assert (=> d!665816 (= lt!834335 e!1433164)))

(declare-fun res!957910 () Bool)

(assert (=> d!665816 (=> (not res!957910) (not e!1433164))))

(declare-fun lt!834329 () (_ BitVec 64))

(declare-fun contains!4498 (MutLongMap!3159 (_ BitVec 64)) Bool)

(assert (=> d!665816 (= res!957910 (contains!4498 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834329))))

(declare-fun lt!834328 () Unit!39419)

(declare-fun e!1433168 () Unit!39419)

(assert (=> d!665816 (= lt!834328 e!1433168)))

(declare-fun c!356874 () Bool)

(assert (=> d!665816 (= c!356874 (contains!4497 (extractMap!124 (toList!1392 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))) lt!834180))))

(declare-fun lt!834323 () Unit!39419)

(declare-fun e!1433167 () Unit!39419)

(assert (=> d!665816 (= lt!834323 e!1433167)))

(declare-fun c!356876 () Bool)

(assert (=> d!665816 (= c!356876 (contains!4498 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834329))))

(assert (=> d!665816 (= lt!834329 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180))))

(assert (=> d!665816 (valid!2373 (cache!3450 thiss!28603))))

(assert (=> d!665816 (= (contains!4494 (cache!3450 thiss!28603) lt!834180) lt!834335)))

(declare-fun bm!135263 () Bool)

(assert (=> bm!135263 (= call!135272 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))))

(declare-fun b!2241294 () Bool)

(assert (=> b!2241294 false))

(declare-fun lt!834331 () Unit!39419)

(declare-fun lt!834321 () Unit!39419)

(assert (=> b!2241294 (= lt!834331 lt!834321)))

(declare-fun lt!834317 () List!26540)

(declare-fun lt!834327 () List!26539)

(assert (=> b!2241294 (contains!4495 lt!834317 (tuple2!25895 lt!834329 lt!834327))))

(assert (=> b!2241294 (= lt!834321 (lemmaGetValueByKeyImpliesContainsTuple!45 lt!834317 lt!834329 lt!834327))))

(assert (=> b!2241294 (= lt!834327 (apply!6526 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834329))))

(assert (=> b!2241294 (= lt!834317 (toList!1392 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))))

(declare-fun lt!834324 () Unit!39419)

(declare-fun lt!834332 () Unit!39419)

(assert (=> b!2241294 (= lt!834324 lt!834332)))

(declare-fun lt!834325 () List!26540)

(assert (=> b!2241294 (isDefined!4167 (getValueByKey!97 lt!834325 lt!834329))))

(assert (=> b!2241294 (= lt!834332 (lemmaContainsKeyImpliesGetValueByKeyDefined!62 lt!834325 lt!834329))))

(assert (=> b!2241294 (= lt!834325 (toList!1392 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))))

(declare-fun lt!834326 () Unit!39419)

(declare-fun lt!834322 () Unit!39419)

(assert (=> b!2241294 (= lt!834326 lt!834322)))

(declare-fun lt!834333 () List!26540)

(declare-fun containsKey!93 (List!26540 (_ BitVec 64)) Bool)

(assert (=> b!2241294 (containsKey!93 lt!834333 lt!834329)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!45 (List!26540 (_ BitVec 64)) Unit!39419)

(assert (=> b!2241294 (= lt!834322 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!45 lt!834333 lt!834329))))

(assert (=> b!2241294 (= lt!834333 (toList!1392 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))))))

(declare-fun e!1433165 () Unit!39419)

(declare-fun Unit!39424 () Unit!39419)

(assert (=> b!2241294 (= e!1433165 Unit!39424)))

(declare-fun b!2241295 () Bool)

(declare-fun Unit!39425 () Unit!39419)

(assert (=> b!2241295 (= e!1433165 Unit!39425)))

(declare-fun bm!135264 () Bool)

(declare-fun call!135268 () (_ BitVec 64))

(assert (=> bm!135264 (= call!135268 (hash!591 (hashF!4992 (cache!3450 thiss!28603)) lt!834180))))

(declare-fun bm!135265 () Bool)

(declare-fun call!135270 () Option!5165)

(declare-fun call!135269 () List!26539)

(assert (=> bm!135265 (= call!135270 (getPair!44 call!135269 lt!834180))))

(declare-fun b!2241296 () Bool)

(assert (=> b!2241296 (= e!1433168 e!1433166)))

(declare-fun res!957909 () Bool)

(declare-fun call!135271 () Bool)

(assert (=> b!2241296 (= res!957909 call!135271)))

(declare-fun e!1433169 () Bool)

(assert (=> b!2241296 (=> (not res!957909) (not e!1433169))))

(declare-fun c!356877 () Bool)

(assert (=> b!2241296 (= c!356877 e!1433169)))

(declare-fun b!2241297 () Bool)

(declare-fun call!135273 () Bool)

(assert (=> b!2241297 (= e!1433169 call!135273)))

(declare-fun b!2241298 () Bool)

(declare-fun e!1433163 () Bool)

(assert (=> b!2241298 (= e!1433163 call!135273)))

(declare-fun bm!135266 () Bool)

(assert (=> bm!135266 (= call!135273 (isDefined!4168 call!135270))))

(declare-fun b!2241299 () Bool)

(declare-fun Unit!39426 () Unit!39419)

(assert (=> b!2241299 (= e!1433166 Unit!39426)))

(declare-fun lt!834319 () ListLongMap!359)

(declare-fun bm!135267 () Bool)

(assert (=> bm!135267 (= call!135269 (apply!6527 (ite c!356874 lt!834319 call!135272) call!135268))))

(declare-fun bm!135268 () Bool)

(assert (=> bm!135268 (= call!135271 (contains!4496 (ite c!356874 lt!834319 call!135272) call!135268))))

(declare-fun b!2241300 () Bool)

(declare-fun lt!834334 () Unit!39419)

(assert (=> b!2241300 (= e!1433168 lt!834334)))

(assert (=> b!2241300 (= lt!834319 call!135272)))

(declare-fun lemmaInGenericMapThenInLongMap!44 (ListLongMap!359 tuple2!25890 Hashable!3069) Unit!39419)

(assert (=> b!2241300 (= lt!834334 (lemmaInGenericMapThenInLongMap!44 lt!834319 lt!834180 (hashF!4992 (cache!3450 thiss!28603))))))

(declare-fun res!957911 () Bool)

(assert (=> b!2241300 (= res!957911 call!135271)))

(assert (=> b!2241300 (=> (not res!957911) (not e!1433163))))

(assert (=> b!2241300 e!1433163))

(declare-fun b!2241301 () Bool)

(declare-fun Unit!39427 () Unit!39419)

(assert (=> b!2241301 (= e!1433167 Unit!39427)))

(declare-fun b!2241302 () Bool)

(assert (=> b!2241302 (= e!1433164 (isDefined!4168 (getPair!44 (apply!6526 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834329) lt!834180)))))

(assert (=> b!2241303 (= e!1433167 (forallContained!791 (toList!1392 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))) lambda!84818 (tuple2!25895 lt!834329 (apply!6526 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834329))))))

(declare-fun c!356875 () Bool)

(assert (=> b!2241303 (= c!356875 (not (contains!4495 (toList!1392 (map!5474 (v!30079 (underlying!6520 (cache!3450 thiss!28603))))) (tuple2!25895 lt!834329 (apply!6526 (v!30079 (underlying!6520 (cache!3450 thiss!28603))) lt!834329)))))))

(declare-fun lt!834330 () Unit!39419)

(assert (=> b!2241303 (= lt!834330 e!1433165)))

(assert (= (and d!665816 c!356876) b!2241303))

(assert (= (and d!665816 (not c!356876)) b!2241301))

(assert (= (and b!2241303 c!356875) b!2241294))

(assert (= (and b!2241303 (not c!356875)) b!2241295))

(assert (= (and d!665816 c!356874) b!2241300))

(assert (= (and d!665816 (not c!356874)) b!2241296))

(assert (= (and b!2241300 res!957911) b!2241298))

(assert (= (and b!2241296 res!957909) b!2241297))

(assert (= (and b!2241296 c!356877) b!2241293))

(assert (= (and b!2241296 (not c!356877)) b!2241299))

(assert (= (or b!2241300 b!2241298 b!2241296 b!2241297) bm!135264))

(assert (= (or b!2241300 b!2241296 b!2241297 b!2241293) bm!135263))

(assert (= (or b!2241300 b!2241296) bm!135268))

(assert (= (or b!2241298 b!2241297) bm!135267))

(assert (= (or b!2241298 b!2241297) bm!135265))

(assert (= (or b!2241298 b!2241297) bm!135266))

(assert (= (and d!665816 res!957910) b!2241302))

(declare-fun m!2673589 () Bool)

(assert (=> bm!135266 m!2673589))

(assert (=> b!2241303 m!2673529))

(declare-fun m!2673591 () Bool)

(assert (=> b!2241303 m!2673591))

(declare-fun m!2673593 () Bool)

(assert (=> b!2241303 m!2673593))

(declare-fun m!2673595 () Bool)

(assert (=> b!2241303 m!2673595))

(declare-fun m!2673597 () Bool)

(assert (=> b!2241300 m!2673597))

(assert (=> b!2241302 m!2673591))

(assert (=> b!2241302 m!2673591))

(declare-fun m!2673599 () Bool)

(assert (=> b!2241302 m!2673599))

(assert (=> b!2241302 m!2673599))

(declare-fun m!2673601 () Bool)

(assert (=> b!2241302 m!2673601))

(assert (=> bm!135264 m!2673537))

(assert (=> d!665816 m!2673529))

(declare-fun m!2673603 () Bool)

(assert (=> d!665816 m!2673603))

(assert (=> d!665816 m!2673507))

(assert (=> d!665816 m!2673603))

(declare-fun m!2673605 () Bool)

(assert (=> d!665816 m!2673605))

(assert (=> d!665816 m!2673509))

(assert (=> d!665816 m!2673509))

(declare-fun m!2673607 () Bool)

(assert (=> d!665816 m!2673607))

(declare-fun m!2673609 () Bool)

(assert (=> d!665816 m!2673609))

(assert (=> d!665816 m!2673537))

(declare-fun m!2673611 () Bool)

(assert (=> bm!135265 m!2673611))

(declare-fun m!2673613 () Bool)

(assert (=> bm!135268 m!2673613))

(declare-fun m!2673615 () Bool)

(assert (=> bm!135267 m!2673615))

(declare-fun m!2673617 () Bool)

(assert (=> b!2241293 m!2673617))

(assert (=> b!2241293 m!2673617))

(declare-fun m!2673619 () Bool)

(assert (=> b!2241293 m!2673619))

(declare-fun m!2673621 () Bool)

(assert (=> b!2241293 m!2673621))

(declare-fun m!2673623 () Bool)

(assert (=> b!2241294 m!2673623))

(assert (=> b!2241294 m!2673591))

(declare-fun m!2673625 () Bool)

(assert (=> b!2241294 m!2673625))

(declare-fun m!2673627 () Bool)

(assert (=> b!2241294 m!2673627))

(declare-fun m!2673629 () Bool)

(assert (=> b!2241294 m!2673629))

(declare-fun m!2673631 () Bool)

(assert (=> b!2241294 m!2673631))

(assert (=> b!2241294 m!2673529))

(declare-fun m!2673633 () Bool)

(assert (=> b!2241294 m!2673633))

(declare-fun m!2673635 () Bool)

(assert (=> b!2241294 m!2673635))

(assert (=> b!2241294 m!2673627))

(assert (=> bm!135263 m!2673529))

(assert (=> b!2241219 d!665816))

(declare-fun e!1433177 () Bool)

(assert (=> b!2241225 (= tp!706576 e!1433177)))

(declare-fun setRes!20602 () Bool)

(declare-fun e!1433176 () Bool)

(declare-fun setNonEmpty!20602 () Bool)

(declare-fun setElem!20602 () Context!4138)

(declare-fun tp!706588 () Bool)

(assert (=> setNonEmpty!20602 (= setRes!20602 (and tp!706588 (inv!35916 setElem!20602) e!1433176))))

(declare-fun setRest!20602 () (InoxSet Context!4138))

(assert (=> setNonEmpty!20602 (= (_2!15456 (h!31846 (zeroValue!3417 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4138 Bool)) false) setElem!20602 true) setRest!20602))))

(declare-fun b!2241312 () Bool)

(declare-fun tp!706589 () Bool)

(declare-fun e!1433178 () Bool)

(assert (=> b!2241312 (= e!1433177 (and (inv!35916 (_1!15455 (_1!15456 (h!31846 (zeroValue!3417 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))))))) e!1433178 tp_is_empty!10263 setRes!20602 tp!706589))))

(declare-fun condSetEmpty!20602 () Bool)

(assert (=> b!2241312 (= condSetEmpty!20602 (= (_2!15456 (h!31846 (zeroValue!3417 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))))) ((as const (Array Context!4138 Bool)) false)))))

(declare-fun setIsEmpty!20602 () Bool)

(assert (=> setIsEmpty!20602 setRes!20602))

(declare-fun b!2241313 () Bool)

(declare-fun tp!706590 () Bool)

(assert (=> b!2241313 (= e!1433176 tp!706590)))

(declare-fun b!2241314 () Bool)

(declare-fun tp!706587 () Bool)

(assert (=> b!2241314 (= e!1433178 tp!706587)))

(assert (= b!2241312 b!2241314))

(assert (= (and b!2241312 condSetEmpty!20602) setIsEmpty!20602))

(assert (= (and b!2241312 (not condSetEmpty!20602)) setNonEmpty!20602))

(assert (= setNonEmpty!20602 b!2241313))

(assert (= (and b!2241225 ((_ is Cons!26445) (zeroValue!3417 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))))) b!2241312))

(declare-fun m!2673637 () Bool)

(assert (=> setNonEmpty!20602 m!2673637))

(declare-fun m!2673639 () Bool)

(assert (=> b!2241312 m!2673639))

(declare-fun e!1433180 () Bool)

(assert (=> b!2241225 (= tp!706573 e!1433180)))

(declare-fun setNonEmpty!20603 () Bool)

(declare-fun e!1433179 () Bool)

(declare-fun tp!706592 () Bool)

(declare-fun setElem!20603 () Context!4138)

(declare-fun setRes!20603 () Bool)

(assert (=> setNonEmpty!20603 (= setRes!20603 (and tp!706592 (inv!35916 setElem!20603) e!1433179))))

(declare-fun setRest!20603 () (InoxSet Context!4138))

(assert (=> setNonEmpty!20603 (= (_2!15456 (h!31846 (minValue!3417 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4138 Bool)) false) setElem!20603 true) setRest!20603))))

(declare-fun e!1433181 () Bool)

(declare-fun tp!706593 () Bool)

(declare-fun b!2241315 () Bool)

(assert (=> b!2241315 (= e!1433180 (and (inv!35916 (_1!15455 (_1!15456 (h!31846 (minValue!3417 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))))))) e!1433181 tp_is_empty!10263 setRes!20603 tp!706593))))

(declare-fun condSetEmpty!20603 () Bool)

(assert (=> b!2241315 (= condSetEmpty!20603 (= (_2!15456 (h!31846 (minValue!3417 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))))) ((as const (Array Context!4138 Bool)) false)))))

(declare-fun setIsEmpty!20603 () Bool)

(assert (=> setIsEmpty!20603 setRes!20603))

(declare-fun b!2241316 () Bool)

(declare-fun tp!706594 () Bool)

(assert (=> b!2241316 (= e!1433179 tp!706594)))

(declare-fun b!2241317 () Bool)

(declare-fun tp!706591 () Bool)

(assert (=> b!2241317 (= e!1433181 tp!706591)))

(assert (= b!2241315 b!2241317))

(assert (= (and b!2241315 condSetEmpty!20603) setIsEmpty!20603))

(assert (= (and b!2241315 (not condSetEmpty!20603)) setNonEmpty!20603))

(assert (= setNonEmpty!20603 b!2241316))

(assert (= (and b!2241225 ((_ is Cons!26445) (minValue!3417 (v!30078 (underlying!6519 (v!30079 (underlying!6520 (cache!3450 thiss!28603)))))))) b!2241315))

(declare-fun m!2673641 () Bool)

(assert (=> setNonEmpty!20603 m!2673641))

(declare-fun m!2673643 () Bool)

(assert (=> b!2241315 m!2673643))

(declare-fun b!2241322 () Bool)

(declare-fun e!1433184 () Bool)

(declare-fun tp!706599 () Bool)

(declare-fun tp!706600 () Bool)

(assert (=> b!2241322 (= e!1433184 (and tp!706599 tp!706600))))

(assert (=> b!2241226 (= tp!706571 e!1433184)))

(assert (= (and b!2241226 ((_ is Cons!26444) (exprs!2569 ctx!36))) b!2241322))

(declare-fun e!1433186 () Bool)

(assert (=> b!2241224 (= tp!706578 e!1433186)))

(declare-fun setNonEmpty!20604 () Bool)

(declare-fun tp!706602 () Bool)

(declare-fun setElem!20604 () Context!4138)

(declare-fun setRes!20604 () Bool)

(declare-fun e!1433185 () Bool)

(assert (=> setNonEmpty!20604 (= setRes!20604 (and tp!706602 (inv!35916 setElem!20604) e!1433185))))

(declare-fun setRest!20604 () (InoxSet Context!4138))

(assert (=> setNonEmpty!20604 (= (_2!15456 (h!31846 mapDefault!14798)) ((_ map or) (store ((as const (Array Context!4138 Bool)) false) setElem!20604 true) setRest!20604))))

(declare-fun e!1433187 () Bool)

(declare-fun tp!706603 () Bool)

(declare-fun b!2241323 () Bool)

(assert (=> b!2241323 (= e!1433186 (and (inv!35916 (_1!15455 (_1!15456 (h!31846 mapDefault!14798)))) e!1433187 tp_is_empty!10263 setRes!20604 tp!706603))))

(declare-fun condSetEmpty!20604 () Bool)

(assert (=> b!2241323 (= condSetEmpty!20604 (= (_2!15456 (h!31846 mapDefault!14798)) ((as const (Array Context!4138 Bool)) false)))))

(declare-fun setIsEmpty!20604 () Bool)

(assert (=> setIsEmpty!20604 setRes!20604))

(declare-fun b!2241324 () Bool)

(declare-fun tp!706604 () Bool)

(assert (=> b!2241324 (= e!1433185 tp!706604)))

(declare-fun b!2241325 () Bool)

(declare-fun tp!706601 () Bool)

(assert (=> b!2241325 (= e!1433187 tp!706601)))

(assert (= b!2241323 b!2241325))

(assert (= (and b!2241323 condSetEmpty!20604) setIsEmpty!20604))

(assert (= (and b!2241323 (not condSetEmpty!20604)) setNonEmpty!20604))

(assert (= setNonEmpty!20604 b!2241324))

(assert (= (and b!2241224 ((_ is Cons!26445) mapDefault!14798)) b!2241323))

(declare-fun m!2673645 () Bool)

(assert (=> setNonEmpty!20604 m!2673645))

(declare-fun m!2673647 () Bool)

(assert (=> b!2241323 m!2673647))

(declare-fun setElem!20609 () Context!4138)

(declare-fun setRes!20609 () Bool)

(declare-fun e!1433201 () Bool)

(declare-fun tp!706625 () Bool)

(declare-fun setNonEmpty!20609 () Bool)

(assert (=> setNonEmpty!20609 (= setRes!20609 (and tp!706625 (inv!35916 setElem!20609) e!1433201))))

(declare-fun mapValue!14801 () List!26539)

(declare-fun setRest!20610 () (InoxSet Context!4138))

(assert (=> setNonEmpty!20609 (= (_2!15456 (h!31846 mapValue!14801)) ((_ map or) (store ((as const (Array Context!4138 Bool)) false) setElem!20609 true) setRest!20610))))

(declare-fun b!2241340 () Bool)

(declare-fun e!1433203 () Bool)

(declare-fun tp!706624 () Bool)

(assert (=> b!2241340 (= e!1433203 tp!706624)))

(declare-fun b!2241341 () Bool)

(declare-fun e!1433200 () Bool)

(declare-fun tp!706629 () Bool)

(assert (=> b!2241341 (= e!1433200 tp!706629)))

(declare-fun mapNonEmpty!14801 () Bool)

(declare-fun mapRes!14801 () Bool)

(declare-fun tp!706631 () Bool)

(declare-fun e!1433204 () Bool)

(assert (=> mapNonEmpty!14801 (= mapRes!14801 (and tp!706631 e!1433204))))

(declare-fun mapKey!14801 () (_ BitVec 32))

(declare-fun mapRest!14801 () (Array (_ BitVec 32) List!26539))

(assert (=> mapNonEmpty!14801 (= mapRest!14798 (store mapRest!14801 mapKey!14801 mapValue!14801))))

(declare-fun tp!706630 () Bool)

(declare-fun setRes!20610 () Bool)

(declare-fun setNonEmpty!20610 () Bool)

(declare-fun setElem!20610 () Context!4138)

(declare-fun e!1433205 () Bool)

(assert (=> setNonEmpty!20610 (= setRes!20610 (and tp!706630 (inv!35916 setElem!20610) e!1433205))))

(declare-fun mapDefault!14801 () List!26539)

(declare-fun setRest!20609 () (InoxSet Context!4138))

(assert (=> setNonEmpty!20610 (= (_2!15456 (h!31846 mapDefault!14801)) ((_ map or) (store ((as const (Array Context!4138 Bool)) false) setElem!20610 true) setRest!20609))))

(declare-fun tp!706623 () Bool)

(declare-fun b!2241342 () Bool)

(declare-fun e!1433202 () Bool)

(assert (=> b!2241342 (= e!1433202 (and (inv!35916 (_1!15455 (_1!15456 (h!31846 mapDefault!14801)))) e!1433200 tp_is_empty!10263 setRes!20610 tp!706623))))

(declare-fun condSetEmpty!20609 () Bool)

(assert (=> b!2241342 (= condSetEmpty!20609 (= (_2!15456 (h!31846 mapDefault!14801)) ((as const (Array Context!4138 Bool)) false)))))

(declare-fun condMapEmpty!14801 () Bool)

(assert (=> mapNonEmpty!14798 (= condMapEmpty!14801 (= mapRest!14798 ((as const (Array (_ BitVec 32) List!26539)) mapDefault!14801)))))

(assert (=> mapNonEmpty!14798 (= tp!706575 (and e!1433202 mapRes!14801))))

(declare-fun mapIsEmpty!14801 () Bool)

(assert (=> mapIsEmpty!14801 mapRes!14801))

(declare-fun setIsEmpty!20609 () Bool)

(assert (=> setIsEmpty!20609 setRes!20609))

(declare-fun b!2241343 () Bool)

(declare-fun tp!706628 () Bool)

(assert (=> b!2241343 (= e!1433205 tp!706628)))

(declare-fun b!2241344 () Bool)

(declare-fun tp!706626 () Bool)

(assert (=> b!2241344 (= e!1433201 tp!706626)))

(declare-fun setIsEmpty!20610 () Bool)

(assert (=> setIsEmpty!20610 setRes!20610))

(declare-fun tp!706627 () Bool)

(declare-fun b!2241345 () Bool)

(assert (=> b!2241345 (= e!1433204 (and (inv!35916 (_1!15455 (_1!15456 (h!31846 mapValue!14801)))) e!1433203 tp_is_empty!10263 setRes!20609 tp!706627))))

(declare-fun condSetEmpty!20610 () Bool)

(assert (=> b!2241345 (= condSetEmpty!20610 (= (_2!15456 (h!31846 mapValue!14801)) ((as const (Array Context!4138 Bool)) false)))))

(assert (= (and mapNonEmpty!14798 condMapEmpty!14801) mapIsEmpty!14801))

(assert (= (and mapNonEmpty!14798 (not condMapEmpty!14801)) mapNonEmpty!14801))

(assert (= b!2241345 b!2241340))

(assert (= (and b!2241345 condSetEmpty!20610) setIsEmpty!20609))

(assert (= (and b!2241345 (not condSetEmpty!20610)) setNonEmpty!20609))

(assert (= setNonEmpty!20609 b!2241344))

(assert (= (and mapNonEmpty!14801 ((_ is Cons!26445) mapValue!14801)) b!2241345))

(assert (= b!2241342 b!2241341))

(assert (= (and b!2241342 condSetEmpty!20609) setIsEmpty!20610))

(assert (= (and b!2241342 (not condSetEmpty!20609)) setNonEmpty!20610))

(assert (= setNonEmpty!20610 b!2241343))

(assert (= (and mapNonEmpty!14798 ((_ is Cons!26445) mapDefault!14801)) b!2241342))

(declare-fun m!2673649 () Bool)

(assert (=> b!2241342 m!2673649))

(declare-fun m!2673651 () Bool)

(assert (=> setNonEmpty!20609 m!2673651))

(declare-fun m!2673653 () Bool)

(assert (=> mapNonEmpty!14801 m!2673653))

(declare-fun m!2673655 () Bool)

(assert (=> setNonEmpty!20610 m!2673655))

(declare-fun m!2673657 () Bool)

(assert (=> b!2241345 m!2673657))

(declare-fun e!1433207 () Bool)

(assert (=> mapNonEmpty!14798 (= tp!706572 e!1433207)))

(declare-fun setNonEmpty!20611 () Bool)

(declare-fun tp!706633 () Bool)

(declare-fun e!1433206 () Bool)

(declare-fun setRes!20611 () Bool)

(declare-fun setElem!20611 () Context!4138)

(assert (=> setNonEmpty!20611 (= setRes!20611 (and tp!706633 (inv!35916 setElem!20611) e!1433206))))

(declare-fun setRest!20611 () (InoxSet Context!4138))

(assert (=> setNonEmpty!20611 (= (_2!15456 (h!31846 mapValue!14798)) ((_ map or) (store ((as const (Array Context!4138 Bool)) false) setElem!20611 true) setRest!20611))))

(declare-fun b!2241346 () Bool)

(declare-fun e!1433208 () Bool)

(declare-fun tp!706634 () Bool)

(assert (=> b!2241346 (= e!1433207 (and (inv!35916 (_1!15455 (_1!15456 (h!31846 mapValue!14798)))) e!1433208 tp_is_empty!10263 setRes!20611 tp!706634))))

(declare-fun condSetEmpty!20611 () Bool)

(assert (=> b!2241346 (= condSetEmpty!20611 (= (_2!15456 (h!31846 mapValue!14798)) ((as const (Array Context!4138 Bool)) false)))))

(declare-fun setIsEmpty!20611 () Bool)

(assert (=> setIsEmpty!20611 setRes!20611))

(declare-fun b!2241347 () Bool)

(declare-fun tp!706635 () Bool)

(assert (=> b!2241347 (= e!1433206 tp!706635)))

(declare-fun b!2241348 () Bool)

(declare-fun tp!706632 () Bool)

(assert (=> b!2241348 (= e!1433208 tp!706632)))

(assert (= b!2241346 b!2241348))

(assert (= (and b!2241346 condSetEmpty!20611) setIsEmpty!20611))

(assert (= (and b!2241346 (not condSetEmpty!20611)) setNonEmpty!20611))

(assert (= setNonEmpty!20611 b!2241347))

(assert (= (and mapNonEmpty!14798 ((_ is Cons!26445) mapValue!14798)) b!2241346))

(declare-fun m!2673659 () Bool)

(assert (=> setNonEmpty!20611 m!2673659))

(declare-fun m!2673661 () Bool)

(assert (=> b!2241346 m!2673661))

(declare-fun b_lambda!71779 () Bool)

(assert (= b_lambda!71775 (or (and b!2241227 b_free!65099) b_lambda!71779)))

(declare-fun b_lambda!71781 () Bool)

(assert (= b_lambda!71777 (or b!2241228 b_lambda!71781)))

(declare-fun bs!454329 () Bool)

(declare-fun d!665818 () Bool)

(assert (= bs!454329 (and d!665818 b!2241228)))

(assert (=> bs!454329 (= (dynLambda!11544 lambda!84802 (tuple2!25893 lt!834180 (apply!6525 (cache!3450 thiss!28603) lt!834180))) (= (_2!15456 (tuple2!25893 lt!834180 (apply!6525 (cache!3450 thiss!28603) lt!834180))) (derivationStepZipperUp!46 (_1!15455 (_1!15456 (tuple2!25893 lt!834180 (apply!6525 (cache!3450 thiss!28603) lt!834180)))) (_2!15455 (_1!15456 (tuple2!25893 lt!834180 (apply!6525 (cache!3450 thiss!28603) lt!834180)))))))))

(declare-fun m!2673663 () Bool)

(assert (=> bs!454329 m!2673663))

(assert (=> d!665814 d!665818))

(declare-fun b_lambda!71783 () Bool)

(assert (= b_lambda!71773 (or (and b!2241227 b_free!65099) b_lambda!71783)))

(check-sat (not b!2241323) (not b!2241233) (not d!665810) (not b_lambda!71783) (not b_next!65803) (not setNonEmpty!20611) (not b!2241316) (not bm!135266) (not bm!135264) (not b!2241348) (not b!2241234) (not b!2241300) (not b_lambda!71779) (not b!2241313) (not b!2241254) (not b!2241268) (not b!2241322) (not setNonEmpty!20603) (not b!2241324) (not b!2241312) (not d!665808) (not b!2241345) (not b!2241253) (not tb!132867) (not setNonEmpty!20604) (not b!2241294) (not b!2241347) (not b!2241314) tp_is_empty!10263 (not b!2241302) (not b!2241303) (not b_lambda!71781) (not b!2241315) (not bm!135250) (not b!2241343) (not d!665814) b_and!175117 (not d!665816) (not mapNonEmpty!14801) b_and!175123 (not setNonEmpty!20610) (not b!2241342) (not b!2241344) (not b!2241325) (not b_next!65801) (not b!2241237) (not b!2241293) (not b!2241341) (not bm!135267) (not setNonEmpty!20609) (not b!2241317) (not b!2241250) (not b!2241340) (not bm!135268) (not bs!454329) (not bm!135263) (not bm!135265) (not d!665804) (not b!2241267) (not setNonEmpty!20602) (not b!2241346))
(check-sat b_and!175123 b_and!175117 (not b_next!65801) (not b_next!65803))
