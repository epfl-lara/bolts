; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218226 () Bool)

(assert start!218226)

(declare-fun b!2239985 () Bool)

(declare-fun b_free!65017 () Bool)

(declare-fun b_next!65721 () Bool)

(assert (=> b!2239985 (= b_free!65017 (not b_next!65721))))

(declare-fun tp!705726 () Bool)

(declare-fun b_and!175029 () Bool)

(assert (=> b!2239985 (= tp!705726 b_and!175029)))

(declare-fun b!2239981 () Bool)

(declare-fun b_free!65019 () Bool)

(declare-fun b_next!65723 () Bool)

(assert (=> b!2239981 (= b_free!65019 (not b_next!65723))))

(declare-fun tp!705729 () Bool)

(declare-fun b_and!175031 () Bool)

(assert (=> b!2239981 (= tp!705729 b_and!175031)))

(declare-fun res!957595 () Bool)

(declare-fun e!1432033 () Bool)

(assert (=> start!218226 (=> (not res!957595) (not e!1432033))))

(declare-datatypes ((C!13148 0))(
  ( (C!13149 (val!7622 Int)) )
))
(declare-datatypes ((Regex!6501 0))(
  ( (ElementMatch!6501 (c!356734 C!13148)) (Concat!10839 (regOne!13514 Regex!6501) (regTwo!13514 Regex!6501)) (EmptyExpr!6501) (Star!6501 (reg!6830 Regex!6501)) (EmptyLang!6501) (Union!6501 (regOne!13515 Regex!6501) (regTwo!13515 Regex!6501)) )
))
(declare-datatypes ((List!26493 0))(
  ( (Nil!26399) (Cons!26399 (h!31800 Regex!6501) (t!199925 List!26493)) )
))
(declare-datatypes ((Context!4098 0))(
  ( (Context!4099 (exprs!2549 List!26493)) )
))
(declare-datatypes ((tuple3!4074 0))(
  ( (tuple3!4075 (_1!15410 Regex!6501) (_2!15410 Context!4098) (_3!2507 C!13148)) )
))
(declare-datatypes ((Hashable!3049 0))(
  ( (HashableExt!3048 (__x!17643 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25806 0))(
  ( (tuple2!25807 (_1!15411 tuple3!4074) (_2!15411 (InoxSet Context!4098))) )
))
(declare-datatypes ((List!26494 0))(
  ( (Nil!26400) (Cons!26400 (h!31801 tuple2!25806) (t!199926 List!26494)) )
))
(declare-datatypes ((array!10960 0))(
  ( (array!10961 (arr!4865 (Array (_ BitVec 32) List!26494)) (size!20646 (_ BitVec 32))) )
))
(declare-datatypes ((array!10962 0))(
  ( (array!10963 (arr!4866 (Array (_ BitVec 32) (_ BitVec 64))) (size!20647 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6278 0))(
  ( (LongMapFixedSize!6279 (defaultEntry!3504 Int) (mask!7743 (_ BitVec 32)) (extraKeys!3387 (_ BitVec 32)) (zeroValue!3397 List!26494) (minValue!3397 List!26494) (_size!6325 (_ BitVec 32)) (_keys!3436 array!10962) (_values!3419 array!10960) (_vacant!3200 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12373 0))(
  ( (Cell!12374 (v!30023 LongMapFixedSize!6278)) )
))
(declare-datatypes ((MutLongMap!3139 0))(
  ( (LongMap!3139 (underlying!6479 Cell!12373)) (MutLongMapExt!3138 (__x!17644 Int)) )
))
(declare-datatypes ((Cell!12375 0))(
  ( (Cell!12376 (v!30024 MutLongMap!3139)) )
))
(declare-datatypes ((MutableMap!3049 0))(
  ( (MutableMapExt!3048 (__x!17645 Int)) (HashMap!3049 (underlying!6480 Cell!12375) (hashF!4972 Hashable!3049) (_size!6326 (_ BitVec 32)) (defaultValue!3211 Int)) )
))
(declare-datatypes ((CacheDown!2144 0))(
  ( (CacheDown!2145 (cache!3430 MutableMap!3049)) )
))
(declare-fun thiss!28743 () CacheDown!2144)

(declare-fun validCacheMapDown!342 (MutableMap!3049) Bool)

(assert (=> start!218226 (= res!957595 (validCacheMapDown!342 (cache!3430 thiss!28743)))))

(assert (=> start!218226 e!1432033))

(declare-fun e!1432035 () Bool)

(declare-fun inv!35855 (CacheDown!2144) Bool)

(assert (=> start!218226 (and (inv!35855 thiss!28743) e!1432035)))

(declare-fun e!1432036 () Bool)

(assert (=> start!218226 e!1432036))

(declare-fun ctx!48 () Context!4098)

(declare-fun e!1432029 () Bool)

(declare-fun inv!35856 (Context!4098) Bool)

(assert (=> start!218226 (and (inv!35856 ctx!48) e!1432029)))

(declare-fun tp_is_empty!10223 () Bool)

(assert (=> start!218226 tp_is_empty!10223))

(declare-fun b!2239970 () Bool)

(declare-fun e!1432030 () Bool)

(declare-fun e!1432031 () Bool)

(assert (=> b!2239970 (= e!1432030 e!1432031)))

(declare-fun b!2239971 () Bool)

(declare-fun tp!705734 () Bool)

(declare-fun tp!705732 () Bool)

(assert (=> b!2239971 (= e!1432036 (and tp!705734 tp!705732))))

(declare-fun b!2239972 () Bool)

(declare-fun lambda!84707 () Int)

(declare-fun forall!5432 (List!26494 Int) Bool)

(declare-datatypes ((ListMap!865 0))(
  ( (ListMap!866 (toList!1380 List!26494)) )
))
(declare-fun map!5452 (MutableMap!3049) ListMap!865)

(assert (=> b!2239972 (= e!1432033 (not (forall!5432 (toList!1380 (map!5452 (cache!3430 thiss!28743))) lambda!84707)))))

(declare-fun b!2239973 () Bool)

(declare-fun tp!705727 () Bool)

(declare-fun tp!705735 () Bool)

(assert (=> b!2239973 (= e!1432036 (and tp!705727 tp!705735))))

(declare-fun b!2239974 () Bool)

(declare-fun e!1432039 () Bool)

(assert (=> b!2239974 (= e!1432031 e!1432039)))

(declare-fun b!2239975 () Bool)

(declare-fun res!957598 () Bool)

(assert (=> b!2239975 (=> (not res!957598) (not e!1432033))))

(get-info :version)

(assert (=> b!2239975 (= res!957598 ((_ is HashMap!3049) (cache!3430 thiss!28743)))))

(declare-fun b!2239976 () Bool)

(declare-fun res!957596 () Bool)

(assert (=> b!2239976 (=> (not res!957596) (not e!1432033))))

(declare-fun valid!2364 (MutableMap!3049) Bool)

(assert (=> b!2239976 (= res!957596 (valid!2364 (cache!3430 thiss!28743)))))

(declare-fun b!2239977 () Bool)

(declare-fun tp!705724 () Bool)

(assert (=> b!2239977 (= e!1432036 tp!705724)))

(declare-fun mapIsEmpty!14723 () Bool)

(declare-fun mapRes!14723 () Bool)

(assert (=> mapIsEmpty!14723 mapRes!14723))

(declare-fun b!2239978 () Bool)

(declare-fun e!1432037 () Bool)

(declare-fun lt!833442 () MutLongMap!3139)

(assert (=> b!2239978 (= e!1432037 (and e!1432030 ((_ is LongMap!3139) lt!833442)))))

(assert (=> b!2239978 (= lt!833442 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))

(declare-fun b!2239979 () Bool)

(declare-fun e!1432038 () Bool)

(assert (=> b!2239979 (= e!1432035 e!1432038)))

(declare-fun b!2239980 () Bool)

(assert (=> b!2239980 (= e!1432036 tp_is_empty!10223)))

(assert (=> b!2239981 (= e!1432038 (and e!1432037 tp!705729))))

(declare-fun b!2239982 () Bool)

(declare-fun tp!705730 () Bool)

(assert (=> b!2239982 (= e!1432029 tp!705730)))

(declare-fun b!2239983 () Bool)

(declare-fun res!957597 () Bool)

(assert (=> b!2239983 (=> (not res!957597) (not e!1432033))))

(declare-fun r!4750 () Regex!6501)

(declare-fun a!970 () C!13148)

(declare-fun contains!4458 (MutableMap!3049 tuple3!4074) Bool)

(assert (=> b!2239983 (= res!957597 (contains!4458 (cache!3430 thiss!28743) (tuple3!4075 r!4750 ctx!48 a!970)))))

(declare-fun mapNonEmpty!14723 () Bool)

(declare-fun tp!705733 () Bool)

(declare-fun tp!705731 () Bool)

(assert (=> mapNonEmpty!14723 (= mapRes!14723 (and tp!705733 tp!705731))))

(declare-fun mapKey!14723 () (_ BitVec 32))

(declare-fun mapValue!14723 () List!26494)

(declare-fun mapRest!14723 () (Array (_ BitVec 32) List!26494))

(assert (=> mapNonEmpty!14723 (= (arr!4865 (_values!3419 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))) (store mapRest!14723 mapKey!14723 mapValue!14723))))

(declare-fun b!2239984 () Bool)

(declare-fun e!1432034 () Bool)

(declare-fun tp!705736 () Bool)

(assert (=> b!2239984 (= e!1432034 (and tp!705736 mapRes!14723))))

(declare-fun condMapEmpty!14723 () Bool)

(declare-fun mapDefault!14723 () List!26494)

(assert (=> b!2239984 (= condMapEmpty!14723 (= (arr!4865 (_values!3419 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26494)) mapDefault!14723)))))

(declare-fun tp!705728 () Bool)

(declare-fun tp!705725 () Bool)

(declare-fun array_inv!3491 (array!10962) Bool)

(declare-fun array_inv!3492 (array!10960) Bool)

(assert (=> b!2239985 (= e!1432039 (and tp!705726 tp!705728 tp!705725 (array_inv!3491 (_keys!3436 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))) (array_inv!3492 (_values!3419 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))) e!1432034))))

(assert (= (and start!218226 res!957595) b!2239983))

(assert (= (and b!2239983 res!957597) b!2239975))

(assert (= (and b!2239975 res!957598) b!2239976))

(assert (= (and b!2239976 res!957596) b!2239972))

(assert (= (and b!2239984 condMapEmpty!14723) mapIsEmpty!14723))

(assert (= (and b!2239984 (not condMapEmpty!14723)) mapNonEmpty!14723))

(assert (= b!2239985 b!2239984))

(assert (= b!2239974 b!2239985))

(assert (= b!2239970 b!2239974))

(assert (= (and b!2239978 ((_ is LongMap!3139) (v!30024 (underlying!6480 (cache!3430 thiss!28743))))) b!2239970))

(assert (= b!2239981 b!2239978))

(assert (= (and b!2239979 ((_ is HashMap!3049) (cache!3430 thiss!28743))) b!2239981))

(assert (= start!218226 b!2239979))

(assert (= (and start!218226 ((_ is ElementMatch!6501) r!4750)) b!2239980))

(assert (= (and start!218226 ((_ is Concat!10839) r!4750)) b!2239971))

(assert (= (and start!218226 ((_ is Star!6501) r!4750)) b!2239977))

(assert (= (and start!218226 ((_ is Union!6501) r!4750)) b!2239973))

(assert (= start!218226 b!2239982))

(declare-fun m!2672477 () Bool)

(assert (=> b!2239972 m!2672477))

(declare-fun m!2672479 () Bool)

(assert (=> b!2239972 m!2672479))

(declare-fun m!2672481 () Bool)

(assert (=> start!218226 m!2672481))

(declare-fun m!2672483 () Bool)

(assert (=> start!218226 m!2672483))

(declare-fun m!2672485 () Bool)

(assert (=> start!218226 m!2672485))

(declare-fun m!2672487 () Bool)

(assert (=> b!2239985 m!2672487))

(declare-fun m!2672489 () Bool)

(assert (=> b!2239985 m!2672489))

(declare-fun m!2672491 () Bool)

(assert (=> b!2239983 m!2672491))

(declare-fun m!2672493 () Bool)

(assert (=> b!2239976 m!2672493))

(declare-fun m!2672495 () Bool)

(assert (=> mapNonEmpty!14723 m!2672495))

(check-sat (not b!2239982) (not b!2239973) (not b_next!65721) (not b!2239983) (not b!2239985) (not b!2239977) (not b!2239984) (not start!218226) b_and!175031 (not b!2239971) (not mapNonEmpty!14723) (not b_next!65723) b_and!175029 (not b!2239976) tp_is_empty!10223 (not b!2239972))
(check-sat b_and!175029 b_and!175031 (not b_next!65723) (not b_next!65721))
(get-model)

(declare-fun bm!135167 () Bool)

(declare-fun call!135177 () Bool)

(declare-datatypes ((Option!5148 0))(
  ( (None!5147) (Some!5147 (v!30025 tuple2!25806)) )
))
(declare-fun call!135173 () Option!5148)

(declare-fun isDefined!4156 (Option!5148) Bool)

(assert (=> bm!135167 (= call!135177 (isDefined!4156 call!135173))))

(declare-fun b!2240008 () Bool)

(declare-datatypes ((Unit!39370 0))(
  ( (Unit!39371) )
))
(declare-fun e!1432059 () Unit!39370)

(declare-fun Unit!39372 () Unit!39370)

(assert (=> b!2240008 (= e!1432059 Unit!39372)))

(declare-fun b!2240009 () Bool)

(declare-fun e!1432056 () Unit!39370)

(declare-fun lt!833495 () Unit!39370)

(assert (=> b!2240009 (= e!1432056 lt!833495)))

(declare-datatypes ((tuple2!25808 0))(
  ( (tuple2!25809 (_1!15412 (_ BitVec 64)) (_2!15412 List!26494)) )
))
(declare-datatypes ((List!26495 0))(
  ( (Nil!26401) (Cons!26401 (h!31802 tuple2!25808) (t!199927 List!26495)) )
))
(declare-datatypes ((ListLongMap!349 0))(
  ( (ListLongMap!350 (toList!1381 List!26495)) )
))
(declare-fun lt!833496 () ListLongMap!349)

(declare-fun call!135174 () ListLongMap!349)

(assert (=> b!2240009 (= lt!833496 call!135174)))

(declare-fun lemmaInGenericMapThenInLongMap!39 (ListLongMap!349 tuple3!4074 Hashable!3049) Unit!39370)

(assert (=> b!2240009 (= lt!833495 (lemmaInGenericMapThenInLongMap!39 lt!833496 (tuple3!4075 r!4750 ctx!48 a!970) (hashF!4972 (cache!3430 thiss!28743))))))

(declare-fun res!957607 () Bool)

(declare-fun call!135172 () Bool)

(assert (=> b!2240009 (= res!957607 call!135172)))

(declare-fun e!1432055 () Bool)

(assert (=> b!2240009 (=> (not res!957607) (not e!1432055))))

(assert (=> b!2240009 e!1432055))

(declare-fun call!135176 () (_ BitVec 64))

(declare-fun bm!135168 () Bool)

(declare-fun hash!586 (Hashable!3049 tuple3!4074) (_ BitVec 64))

(assert (=> bm!135168 (= call!135176 (hash!586 (hashF!4972 (cache!3430 thiss!28743)) (tuple3!4075 r!4750 ctx!48 a!970)))))

(declare-fun b!2240010 () Bool)

(assert (=> b!2240010 false))

(declare-fun lt!833483 () Unit!39370)

(declare-fun lt!833499 () Unit!39370)

(assert (=> b!2240010 (= lt!833483 lt!833499)))

(declare-fun lt!833501 () ListLongMap!349)

(declare-fun contains!4459 (ListMap!865 tuple3!4074) Bool)

(declare-fun extractMap!119 (List!26495) ListMap!865)

(assert (=> b!2240010 (contains!4459 (extractMap!119 (toList!1381 lt!833501)) (tuple3!4075 r!4750 ctx!48 a!970))))

(declare-fun lemmaInLongMapThenInGenericMap!39 (ListLongMap!349 tuple3!4074 Hashable!3049) Unit!39370)

(assert (=> b!2240010 (= lt!833499 (lemmaInLongMapThenInGenericMap!39 lt!833501 (tuple3!4075 r!4750 ctx!48 a!970) (hashF!4972 (cache!3430 thiss!28743))))))

(assert (=> b!2240010 (= lt!833501 call!135174)))

(declare-fun e!1432060 () Unit!39370)

(declare-fun Unit!39373 () Unit!39370)

(assert (=> b!2240010 (= e!1432060 Unit!39373)))

(declare-fun b!2240011 () Bool)

(declare-fun lt!833489 () (_ BitVec 64))

(declare-fun lambda!84710 () Int)

(declare-fun forallContained!786 (List!26495 Int tuple2!25808) Unit!39370)

(declare-fun map!5453 (MutLongMap!3139) ListLongMap!349)

(declare-fun apply!6509 (MutLongMap!3139 (_ BitVec 64)) List!26494)

(assert (=> b!2240011 (= e!1432059 (forallContained!786 (toList!1381 (map!5453 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))) lambda!84710 (tuple2!25809 lt!833489 (apply!6509 (v!30024 (underlying!6480 (cache!3430 thiss!28743))) lt!833489))))))

(declare-fun c!356746 () Bool)

(declare-fun contains!4460 (List!26495 tuple2!25808) Bool)

(assert (=> b!2240011 (= c!356746 (not (contains!4460 (toList!1381 (map!5453 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))) (tuple2!25809 lt!833489 (apply!6509 (v!30024 (underlying!6480 (cache!3430 thiss!28743))) lt!833489)))))))

(declare-fun lt!833485 () Unit!39370)

(declare-fun e!1432058 () Unit!39370)

(assert (=> b!2240011 (= lt!833485 e!1432058)))

(declare-fun bm!135169 () Bool)

(assert (=> bm!135169 (= call!135174 (map!5453 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))

(declare-fun bm!135170 () Bool)

(declare-fun call!135175 () List!26494)

(declare-fun getPair!39 (List!26494 tuple3!4074) Option!5148)

(assert (=> bm!135170 (= call!135173 (getPair!39 call!135175 (tuple3!4075 r!4750 ctx!48 a!970)))))

(declare-fun lt!833494 () Bool)

(declare-fun d!665698 () Bool)

(assert (=> d!665698 (= lt!833494 (contains!4459 (map!5452 (cache!3430 thiss!28743)) (tuple3!4075 r!4750 ctx!48 a!970)))))

(declare-fun e!1432057 () Bool)

(assert (=> d!665698 (= lt!833494 e!1432057)))

(declare-fun res!957605 () Bool)

(assert (=> d!665698 (=> (not res!957605) (not e!1432057))))

(declare-fun contains!4461 (MutLongMap!3139 (_ BitVec 64)) Bool)

(assert (=> d!665698 (= res!957605 (contains!4461 (v!30024 (underlying!6480 (cache!3430 thiss!28743))) lt!833489))))

(declare-fun lt!833490 () Unit!39370)

(assert (=> d!665698 (= lt!833490 e!1432056)))

(declare-fun c!356743 () Bool)

(assert (=> d!665698 (= c!356743 (contains!4459 (extractMap!119 (toList!1381 (map!5453 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))) (tuple3!4075 r!4750 ctx!48 a!970)))))

(declare-fun lt!833492 () Unit!39370)

(assert (=> d!665698 (= lt!833492 e!1432059)))

(declare-fun c!356744 () Bool)

(assert (=> d!665698 (= c!356744 (contains!4461 (v!30024 (underlying!6480 (cache!3430 thiss!28743))) lt!833489))))

(assert (=> d!665698 (= lt!833489 (hash!586 (hashF!4972 (cache!3430 thiss!28743)) (tuple3!4075 r!4750 ctx!48 a!970)))))

(assert (=> d!665698 (valid!2364 (cache!3430 thiss!28743))))

(assert (=> d!665698 (= (contains!4458 (cache!3430 thiss!28743) (tuple3!4075 r!4750 ctx!48 a!970)) lt!833494)))

(declare-fun b!2240012 () Bool)

(assert (=> b!2240012 (= e!1432057 (isDefined!4156 (getPair!39 (apply!6509 (v!30024 (underlying!6480 (cache!3430 thiss!28743))) lt!833489) (tuple3!4075 r!4750 ctx!48 a!970))))))

(declare-fun b!2240013 () Bool)

(assert (=> b!2240013 (= e!1432056 e!1432060)))

(declare-fun res!957606 () Bool)

(assert (=> b!2240013 (= res!957606 call!135172)))

(declare-fun e!1432054 () Bool)

(assert (=> b!2240013 (=> (not res!957606) (not e!1432054))))

(declare-fun c!356745 () Bool)

(assert (=> b!2240013 (= c!356745 e!1432054)))

(declare-fun bm!135171 () Bool)

(declare-fun apply!6510 (ListLongMap!349 (_ BitVec 64)) List!26494)

(assert (=> bm!135171 (= call!135175 (apply!6510 (ite c!356743 lt!833496 call!135174) call!135176))))

(declare-fun bm!135172 () Bool)

(declare-fun contains!4462 (ListLongMap!349 (_ BitVec 64)) Bool)

(assert (=> bm!135172 (= call!135172 (contains!4462 (ite c!356743 lt!833496 call!135174) call!135176))))

(declare-fun b!2240014 () Bool)

(assert (=> b!2240014 false))

(declare-fun lt!833487 () Unit!39370)

(declare-fun lt!833488 () Unit!39370)

(assert (=> b!2240014 (= lt!833487 lt!833488)))

(declare-fun lt!833486 () List!26495)

(declare-fun lt!833500 () List!26494)

(assert (=> b!2240014 (contains!4460 lt!833486 (tuple2!25809 lt!833489 lt!833500))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!40 (List!26495 (_ BitVec 64) List!26494) Unit!39370)

(assert (=> b!2240014 (= lt!833488 (lemmaGetValueByKeyImpliesContainsTuple!40 lt!833486 lt!833489 lt!833500))))

(assert (=> b!2240014 (= lt!833500 (apply!6509 (v!30024 (underlying!6480 (cache!3430 thiss!28743))) lt!833489))))

(assert (=> b!2240014 (= lt!833486 (toList!1381 (map!5453 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))))

(declare-fun lt!833502 () Unit!39370)

(declare-fun lt!833497 () Unit!39370)

(assert (=> b!2240014 (= lt!833502 lt!833497)))

(declare-fun lt!833493 () List!26495)

(declare-datatypes ((Option!5149 0))(
  ( (None!5148) (Some!5148 (v!30026 List!26494)) )
))
(declare-fun isDefined!4157 (Option!5149) Bool)

(declare-fun getValueByKey!89 (List!26495 (_ BitVec 64)) Option!5149)

(assert (=> b!2240014 (isDefined!4157 (getValueByKey!89 lt!833493 lt!833489))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!57 (List!26495 (_ BitVec 64)) Unit!39370)

(assert (=> b!2240014 (= lt!833497 (lemmaContainsKeyImpliesGetValueByKeyDefined!57 lt!833493 lt!833489))))

(assert (=> b!2240014 (= lt!833493 (toList!1381 (map!5453 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))))

(declare-fun lt!833498 () Unit!39370)

(declare-fun lt!833491 () Unit!39370)

(assert (=> b!2240014 (= lt!833498 lt!833491)))

(declare-fun lt!833484 () List!26495)

(declare-fun containsKey!88 (List!26495 (_ BitVec 64)) Bool)

(assert (=> b!2240014 (containsKey!88 lt!833484 lt!833489)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!40 (List!26495 (_ BitVec 64)) Unit!39370)

(assert (=> b!2240014 (= lt!833491 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!40 lt!833484 lt!833489))))

(assert (=> b!2240014 (= lt!833484 (toList!1381 (map!5453 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))))

(declare-fun Unit!39374 () Unit!39370)

(assert (=> b!2240014 (= e!1432058 Unit!39374)))

(declare-fun b!2240015 () Bool)

(declare-fun Unit!39375 () Unit!39370)

(assert (=> b!2240015 (= e!1432058 Unit!39375)))

(declare-fun b!2240016 () Bool)

(declare-fun Unit!39376 () Unit!39370)

(assert (=> b!2240016 (= e!1432060 Unit!39376)))

(declare-fun b!2240017 () Bool)

(assert (=> b!2240017 (= e!1432054 call!135177)))

(declare-fun b!2240018 () Bool)

(assert (=> b!2240018 (= e!1432055 call!135177)))

(assert (= (and d!665698 c!356744) b!2240011))

(assert (= (and d!665698 (not c!356744)) b!2240008))

(assert (= (and b!2240011 c!356746) b!2240014))

(assert (= (and b!2240011 (not c!356746)) b!2240015))

(assert (= (and d!665698 c!356743) b!2240009))

(assert (= (and d!665698 (not c!356743)) b!2240013))

(assert (= (and b!2240009 res!957607) b!2240018))

(assert (= (and b!2240013 res!957606) b!2240017))

(assert (= (and b!2240013 c!356745) b!2240010))

(assert (= (and b!2240013 (not c!356745)) b!2240016))

(assert (= (or b!2240009 b!2240013 b!2240017 b!2240010) bm!135169))

(assert (= (or b!2240009 b!2240018 b!2240013 b!2240017) bm!135168))

(assert (= (or b!2240009 b!2240013) bm!135172))

(assert (= (or b!2240018 b!2240017) bm!135171))

(assert (= (or b!2240018 b!2240017) bm!135170))

(assert (= (or b!2240018 b!2240017) bm!135167))

(assert (= (and d!665698 res!957605) b!2240012))

(declare-fun m!2672497 () Bool)

(assert (=> b!2240014 m!2672497))

(declare-fun m!2672499 () Bool)

(assert (=> b!2240014 m!2672499))

(declare-fun m!2672501 () Bool)

(assert (=> b!2240014 m!2672501))

(declare-fun m!2672503 () Bool)

(assert (=> b!2240014 m!2672503))

(declare-fun m!2672505 () Bool)

(assert (=> b!2240014 m!2672505))

(declare-fun m!2672507 () Bool)

(assert (=> b!2240014 m!2672507))

(assert (=> b!2240014 m!2672499))

(declare-fun m!2672509 () Bool)

(assert (=> b!2240014 m!2672509))

(declare-fun m!2672511 () Bool)

(assert (=> b!2240014 m!2672511))

(declare-fun m!2672513 () Bool)

(assert (=> b!2240014 m!2672513))

(declare-fun m!2672515 () Bool)

(assert (=> b!2240009 m!2672515))

(declare-fun m!2672517 () Bool)

(assert (=> bm!135172 m!2672517))

(declare-fun m!2672519 () Bool)

(assert (=> b!2240010 m!2672519))

(assert (=> b!2240010 m!2672519))

(declare-fun m!2672521 () Bool)

(assert (=> b!2240010 m!2672521))

(declare-fun m!2672523 () Bool)

(assert (=> b!2240010 m!2672523))

(declare-fun m!2672525 () Bool)

(assert (=> bm!135170 m!2672525))

(declare-fun m!2672527 () Bool)

(assert (=> bm!135167 m!2672527))

(assert (=> bm!135169 m!2672503))

(declare-fun m!2672529 () Bool)

(assert (=> bm!135168 m!2672529))

(declare-fun m!2672531 () Bool)

(assert (=> d!665698 m!2672531))

(assert (=> d!665698 m!2672477))

(assert (=> d!665698 m!2672493))

(assert (=> d!665698 m!2672529))

(assert (=> d!665698 m!2672477))

(declare-fun m!2672533 () Bool)

(assert (=> d!665698 m!2672533))

(declare-fun m!2672535 () Bool)

(assert (=> d!665698 m!2672535))

(assert (=> d!665698 m!2672503))

(assert (=> d!665698 m!2672535))

(declare-fun m!2672537 () Bool)

(assert (=> d!665698 m!2672537))

(assert (=> b!2240012 m!2672511))

(assert (=> b!2240012 m!2672511))

(declare-fun m!2672539 () Bool)

(assert (=> b!2240012 m!2672539))

(assert (=> b!2240012 m!2672539))

(declare-fun m!2672541 () Bool)

(assert (=> b!2240012 m!2672541))

(assert (=> b!2240011 m!2672503))

(assert (=> b!2240011 m!2672511))

(declare-fun m!2672543 () Bool)

(assert (=> b!2240011 m!2672543))

(declare-fun m!2672545 () Bool)

(assert (=> b!2240011 m!2672545))

(declare-fun m!2672547 () Bool)

(assert (=> bm!135171 m!2672547))

(assert (=> b!2239983 d!665698))

(declare-fun d!665700 () Bool)

(declare-fun res!957612 () Bool)

(declare-fun e!1432065 () Bool)

(assert (=> d!665700 (=> res!957612 e!1432065)))

(assert (=> d!665700 (= res!957612 ((_ is Nil!26400) (toList!1380 (map!5452 (cache!3430 thiss!28743)))))))

(assert (=> d!665700 (= (forall!5432 (toList!1380 (map!5452 (cache!3430 thiss!28743))) lambda!84707) e!1432065)))

(declare-fun b!2240023 () Bool)

(declare-fun e!1432066 () Bool)

(assert (=> b!2240023 (= e!1432065 e!1432066)))

(declare-fun res!957613 () Bool)

(assert (=> b!2240023 (=> (not res!957613) (not e!1432066))))

(declare-fun dynLambda!11540 (Int tuple2!25806) Bool)

(assert (=> b!2240023 (= res!957613 (dynLambda!11540 lambda!84707 (h!31801 (toList!1380 (map!5452 (cache!3430 thiss!28743))))))))

(declare-fun b!2240024 () Bool)

(assert (=> b!2240024 (= e!1432066 (forall!5432 (t!199926 (toList!1380 (map!5452 (cache!3430 thiss!28743)))) lambda!84707))))

(assert (= (and d!665700 (not res!957612)) b!2240023))

(assert (= (and b!2240023 res!957613) b!2240024))

(declare-fun b_lambda!71753 () Bool)

(assert (=> (not b_lambda!71753) (not b!2240023)))

(declare-fun m!2672549 () Bool)

(assert (=> b!2240023 m!2672549))

(declare-fun m!2672551 () Bool)

(assert (=> b!2240024 m!2672551))

(assert (=> b!2239972 d!665700))

(declare-fun d!665702 () Bool)

(declare-fun lt!833505 () ListMap!865)

(declare-fun invariantList!385 (List!26494) Bool)

(assert (=> d!665702 (invariantList!385 (toList!1380 lt!833505))))

(assert (=> d!665702 (= lt!833505 (extractMap!119 (toList!1381 (map!5453 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))))

(assert (=> d!665702 (valid!2364 (cache!3430 thiss!28743))))

(assert (=> d!665702 (= (map!5452 (cache!3430 thiss!28743)) lt!833505)))

(declare-fun bs!454288 () Bool)

(assert (= bs!454288 d!665702))

(declare-fun m!2672553 () Bool)

(assert (=> bs!454288 m!2672553))

(assert (=> bs!454288 m!2672503))

(assert (=> bs!454288 m!2672535))

(assert (=> bs!454288 m!2672493))

(assert (=> b!2239972 d!665702))

(declare-fun bs!454289 () Bool)

(declare-fun b!2240032 () Bool)

(assert (= bs!454289 (and b!2240032 b!2239972)))

(declare-fun lambda!84713 () Int)

(assert (=> bs!454289 (= lambda!84713 lambda!84707)))

(declare-fun d!665704 () Bool)

(declare-fun res!957620 () Bool)

(declare-fun e!1432071 () Bool)

(assert (=> d!665704 (=> (not res!957620) (not e!1432071))))

(assert (=> d!665704 (= res!957620 (valid!2364 (cache!3430 thiss!28743)))))

(assert (=> d!665704 (= (validCacheMapDown!342 (cache!3430 thiss!28743)) e!1432071)))

(declare-fun b!2240031 () Bool)

(declare-fun res!957621 () Bool)

(assert (=> b!2240031 (=> (not res!957621) (not e!1432071))))

(assert (=> b!2240031 (= res!957621 (invariantList!385 (toList!1380 (map!5452 (cache!3430 thiss!28743)))))))

(assert (=> b!2240032 (= e!1432071 (forall!5432 (toList!1380 (map!5452 (cache!3430 thiss!28743))) lambda!84713))))

(assert (= (and d!665704 res!957620) b!2240031))

(assert (= (and b!2240031 res!957621) b!2240032))

(assert (=> d!665704 m!2672493))

(assert (=> b!2240031 m!2672477))

(declare-fun m!2672556 () Bool)

(assert (=> b!2240031 m!2672556))

(assert (=> b!2240032 m!2672477))

(declare-fun m!2672558 () Bool)

(assert (=> b!2240032 m!2672558))

(assert (=> start!218226 d!665704))

(declare-fun d!665706 () Bool)

(declare-fun res!957624 () Bool)

(declare-fun e!1432074 () Bool)

(assert (=> d!665706 (=> (not res!957624) (not e!1432074))))

(assert (=> d!665706 (= res!957624 ((_ is HashMap!3049) (cache!3430 thiss!28743)))))

(assert (=> d!665706 (= (inv!35855 thiss!28743) e!1432074)))

(declare-fun b!2240035 () Bool)

(assert (=> b!2240035 (= e!1432074 (validCacheMapDown!342 (cache!3430 thiss!28743)))))

(assert (= (and d!665706 res!957624) b!2240035))

(assert (=> b!2240035 m!2672481))

(assert (=> start!218226 d!665706))

(declare-fun d!665708 () Bool)

(declare-fun lambda!84716 () Int)

(declare-fun forall!5433 (List!26493 Int) Bool)

(assert (=> d!665708 (= (inv!35856 ctx!48) (forall!5433 (exprs!2549 ctx!48) lambda!84716))))

(declare-fun bs!454290 () Bool)

(assert (= bs!454290 d!665708))

(declare-fun m!2672560 () Bool)

(assert (=> bs!454290 m!2672560))

(assert (=> start!218226 d!665708))

(declare-fun bs!454291 () Bool)

(declare-fun b!2240040 () Bool)

(assert (= bs!454291 (and b!2240040 b!2240011)))

(declare-fun lambda!84719 () Int)

(assert (=> bs!454291 (= lambda!84719 lambda!84710)))

(declare-fun d!665710 () Bool)

(declare-fun res!957629 () Bool)

(declare-fun e!1432077 () Bool)

(assert (=> d!665710 (=> (not res!957629) (not e!1432077))))

(declare-fun valid!2365 (MutLongMap!3139) Bool)

(assert (=> d!665710 (= res!957629 (valid!2365 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))

(assert (=> d!665710 (= (valid!2364 (cache!3430 thiss!28743)) e!1432077)))

(declare-fun res!957630 () Bool)

(assert (=> b!2240040 (=> (not res!957630) (not e!1432077))))

(declare-fun forall!5434 (List!26495 Int) Bool)

(assert (=> b!2240040 (= res!957630 (forall!5434 (toList!1381 (map!5453 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))) lambda!84719))))

(declare-fun b!2240041 () Bool)

(declare-fun allKeysSameHashInMap!114 (ListLongMap!349 Hashable!3049) Bool)

(assert (=> b!2240041 (= e!1432077 (allKeysSameHashInMap!114 (map!5453 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))) (hashF!4972 (cache!3430 thiss!28743))))))

(assert (= (and d!665710 res!957629) b!2240040))

(assert (= (and b!2240040 res!957630) b!2240041))

(declare-fun m!2672562 () Bool)

(assert (=> d!665710 m!2672562))

(assert (=> b!2240040 m!2672503))

(declare-fun m!2672564 () Bool)

(assert (=> b!2240040 m!2672564))

(assert (=> b!2240041 m!2672503))

(assert (=> b!2240041 m!2672503))

(declare-fun m!2672566 () Bool)

(assert (=> b!2240041 m!2672566))

(assert (=> b!2239976 d!665710))

(declare-fun d!665712 () Bool)

(assert (=> d!665712 (= (array_inv!3491 (_keys!3436 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))) (bvsge (size!20647 (_keys!3436 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2239985 d!665712))

(declare-fun d!665714 () Bool)

(assert (=> d!665714 (= (array_inv!3492 (_values!3419 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))) (bvsge (size!20646 (_values!3419 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2239985 d!665714))

(declare-fun b!2240056 () Bool)

(declare-fun e!1432091 () Bool)

(declare-fun tp!705765 () Bool)

(assert (=> b!2240056 (= e!1432091 tp!705765)))

(declare-fun b!2240057 () Bool)

(declare-fun e!1432092 () Bool)

(declare-fun tp!705763 () Bool)

(assert (=> b!2240057 (= e!1432092 tp!705763)))

(declare-fun mapIsEmpty!14726 () Bool)

(declare-fun mapRes!14726 () Bool)

(assert (=> mapIsEmpty!14726 mapRes!14726))

(declare-fun setIsEmpty!20544 () Bool)

(declare-fun setRes!20544 () Bool)

(assert (=> setIsEmpty!20544 setRes!20544))

(declare-fun setNonEmpty!20544 () Bool)

(declare-fun setElem!20544 () Context!4098)

(declare-fun setRes!20545 () Bool)

(declare-fun tp!705762 () Bool)

(assert (=> setNonEmpty!20544 (= setRes!20545 (and tp!705762 (inv!35856 setElem!20544) e!1432092))))

(declare-fun mapValue!14726 () List!26494)

(declare-fun setRest!20544 () (InoxSet Context!4098))

(assert (=> setNonEmpty!20544 (= (_2!15411 (h!31801 mapValue!14726)) ((_ map or) (store ((as const (Array Context!4098 Bool)) false) setElem!20544 true) setRest!20544))))

(declare-fun mapNonEmpty!14726 () Bool)

(declare-fun tp!705764 () Bool)

(declare-fun e!1432090 () Bool)

(assert (=> mapNonEmpty!14726 (= mapRes!14726 (and tp!705764 e!1432090))))

(declare-fun mapKey!14726 () (_ BitVec 32))

(declare-fun mapRest!14726 () (Array (_ BitVec 32) List!26494))

(assert (=> mapNonEmpty!14726 (= mapRest!14723 (store mapRest!14726 mapKey!14726 mapValue!14726))))

(declare-fun tp!705766 () Bool)

(declare-fun setNonEmpty!20545 () Bool)

(declare-fun setElem!20545 () Context!4098)

(declare-fun e!1432093 () Bool)

(assert (=> setNonEmpty!20545 (= setRes!20544 (and tp!705766 (inv!35856 setElem!20545) e!1432093))))

(declare-fun mapDefault!14726 () List!26494)

(declare-fun setRest!20545 () (InoxSet Context!4098))

(assert (=> setNonEmpty!20545 (= (_2!15411 (h!31801 mapDefault!14726)) ((_ map or) (store ((as const (Array Context!4098 Bool)) false) setElem!20545 true) setRest!20545))))

(declare-fun b!2240059 () Bool)

(declare-fun tp!705767 () Bool)

(declare-fun e!1432094 () Bool)

(declare-fun tp!705759 () Bool)

(assert (=> b!2240059 (= e!1432094 (and tp!705759 (inv!35856 (_2!15410 (_1!15411 (h!31801 mapDefault!14726)))) e!1432091 tp_is_empty!10223 setRes!20544 tp!705767))))

(declare-fun condSetEmpty!20544 () Bool)

(assert (=> b!2240059 (= condSetEmpty!20544 (= (_2!15411 (h!31801 mapDefault!14726)) ((as const (Array Context!4098 Bool)) false)))))

(declare-fun setIsEmpty!20545 () Bool)

(assert (=> setIsEmpty!20545 setRes!20545))

(declare-fun b!2240058 () Bool)

(declare-fun tp!705761 () Bool)

(assert (=> b!2240058 (= e!1432093 tp!705761)))

(declare-fun condMapEmpty!14726 () Bool)

(assert (=> mapNonEmpty!14723 (= condMapEmpty!14726 (= mapRest!14723 ((as const (Array (_ BitVec 32) List!26494)) mapDefault!14726)))))

(assert (=> mapNonEmpty!14723 (= tp!705733 (and e!1432094 mapRes!14726))))

(declare-fun tp!705768 () Bool)

(declare-fun b!2240060 () Bool)

(declare-fun tp!705769 () Bool)

(declare-fun e!1432095 () Bool)

(assert (=> b!2240060 (= e!1432090 (and tp!705769 (inv!35856 (_2!15410 (_1!15411 (h!31801 mapValue!14726)))) e!1432095 tp_is_empty!10223 setRes!20545 tp!705768))))

(declare-fun condSetEmpty!20545 () Bool)

(assert (=> b!2240060 (= condSetEmpty!20545 (= (_2!15411 (h!31801 mapValue!14726)) ((as const (Array Context!4098 Bool)) false)))))

(declare-fun b!2240061 () Bool)

(declare-fun tp!705760 () Bool)

(assert (=> b!2240061 (= e!1432095 tp!705760)))

(assert (= (and mapNonEmpty!14723 condMapEmpty!14726) mapIsEmpty!14726))

(assert (= (and mapNonEmpty!14723 (not condMapEmpty!14726)) mapNonEmpty!14726))

(assert (= b!2240060 b!2240061))

(assert (= (and b!2240060 condSetEmpty!20545) setIsEmpty!20545))

(assert (= (and b!2240060 (not condSetEmpty!20545)) setNonEmpty!20544))

(assert (= setNonEmpty!20544 b!2240057))

(assert (= (and mapNonEmpty!14726 ((_ is Cons!26400) mapValue!14726)) b!2240060))

(assert (= b!2240059 b!2240056))

(assert (= (and b!2240059 condSetEmpty!20544) setIsEmpty!20544))

(assert (= (and b!2240059 (not condSetEmpty!20544)) setNonEmpty!20545))

(assert (= setNonEmpty!20545 b!2240058))

(assert (= (and mapNonEmpty!14723 ((_ is Cons!26400) mapDefault!14726)) b!2240059))

(declare-fun m!2672568 () Bool)

(assert (=> setNonEmpty!20544 m!2672568))

(declare-fun m!2672570 () Bool)

(assert (=> b!2240059 m!2672570))

(declare-fun m!2672572 () Bool)

(assert (=> b!2240060 m!2672572))

(declare-fun m!2672574 () Bool)

(assert (=> mapNonEmpty!14726 m!2672574))

(declare-fun m!2672576 () Bool)

(assert (=> setNonEmpty!20545 m!2672576))

(declare-fun e!1432103 () Bool)

(declare-fun e!1432102 () Bool)

(declare-fun tp!705781 () Bool)

(declare-fun b!2240070 () Bool)

(declare-fun tp!705784 () Bool)

(declare-fun setRes!20548 () Bool)

(assert (=> b!2240070 (= e!1432103 (and tp!705781 (inv!35856 (_2!15410 (_1!15411 (h!31801 mapValue!14723)))) e!1432102 tp_is_empty!10223 setRes!20548 tp!705784))))

(declare-fun condSetEmpty!20548 () Bool)

(assert (=> b!2240070 (= condSetEmpty!20548 (= (_2!15411 (h!31801 mapValue!14723)) ((as const (Array Context!4098 Bool)) false)))))

(declare-fun setElem!20548 () Context!4098)

(declare-fun setNonEmpty!20548 () Bool)

(declare-fun e!1432104 () Bool)

(declare-fun tp!705783 () Bool)

(assert (=> setNonEmpty!20548 (= setRes!20548 (and tp!705783 (inv!35856 setElem!20548) e!1432104))))

(declare-fun setRest!20548 () (InoxSet Context!4098))

(assert (=> setNonEmpty!20548 (= (_2!15411 (h!31801 mapValue!14723)) ((_ map or) (store ((as const (Array Context!4098 Bool)) false) setElem!20548 true) setRest!20548))))

(assert (=> mapNonEmpty!14723 (= tp!705731 e!1432103)))

(declare-fun b!2240071 () Bool)

(declare-fun tp!705782 () Bool)

(assert (=> b!2240071 (= e!1432104 tp!705782)))

(declare-fun setIsEmpty!20548 () Bool)

(assert (=> setIsEmpty!20548 setRes!20548))

(declare-fun b!2240072 () Bool)

(declare-fun tp!705780 () Bool)

(assert (=> b!2240072 (= e!1432102 tp!705780)))

(assert (= b!2240070 b!2240072))

(assert (= (and b!2240070 condSetEmpty!20548) setIsEmpty!20548))

(assert (= (and b!2240070 (not condSetEmpty!20548)) setNonEmpty!20548))

(assert (= setNonEmpty!20548 b!2240071))

(assert (= (and mapNonEmpty!14723 ((_ is Cons!26400) mapValue!14723)) b!2240070))

(declare-fun m!2672578 () Bool)

(assert (=> b!2240070 m!2672578))

(declare-fun m!2672580 () Bool)

(assert (=> setNonEmpty!20548 m!2672580))

(declare-fun b!2240086 () Bool)

(declare-fun e!1432107 () Bool)

(declare-fun tp!705795 () Bool)

(declare-fun tp!705796 () Bool)

(assert (=> b!2240086 (= e!1432107 (and tp!705795 tp!705796))))

(assert (=> b!2239973 (= tp!705727 e!1432107)))

(declare-fun b!2240084 () Bool)

(declare-fun tp!705799 () Bool)

(declare-fun tp!705798 () Bool)

(assert (=> b!2240084 (= e!1432107 (and tp!705799 tp!705798))))

(declare-fun b!2240085 () Bool)

(declare-fun tp!705797 () Bool)

(assert (=> b!2240085 (= e!1432107 tp!705797)))

(declare-fun b!2240083 () Bool)

(assert (=> b!2240083 (= e!1432107 tp_is_empty!10223)))

(assert (= (and b!2239973 ((_ is ElementMatch!6501) (regOne!13515 r!4750))) b!2240083))

(assert (= (and b!2239973 ((_ is Concat!10839) (regOne!13515 r!4750))) b!2240084))

(assert (= (and b!2239973 ((_ is Star!6501) (regOne!13515 r!4750))) b!2240085))

(assert (= (and b!2239973 ((_ is Union!6501) (regOne!13515 r!4750))) b!2240086))

(declare-fun b!2240090 () Bool)

(declare-fun e!1432108 () Bool)

(declare-fun tp!705800 () Bool)

(declare-fun tp!705801 () Bool)

(assert (=> b!2240090 (= e!1432108 (and tp!705800 tp!705801))))

(assert (=> b!2239973 (= tp!705735 e!1432108)))

(declare-fun b!2240088 () Bool)

(declare-fun tp!705804 () Bool)

(declare-fun tp!705803 () Bool)

(assert (=> b!2240088 (= e!1432108 (and tp!705804 tp!705803))))

(declare-fun b!2240089 () Bool)

(declare-fun tp!705802 () Bool)

(assert (=> b!2240089 (= e!1432108 tp!705802)))

(declare-fun b!2240087 () Bool)

(assert (=> b!2240087 (= e!1432108 tp_is_empty!10223)))

(assert (= (and b!2239973 ((_ is ElementMatch!6501) (regTwo!13515 r!4750))) b!2240087))

(assert (= (and b!2239973 ((_ is Concat!10839) (regTwo!13515 r!4750))) b!2240088))

(assert (= (and b!2239973 ((_ is Star!6501) (regTwo!13515 r!4750))) b!2240089))

(assert (= (and b!2239973 ((_ is Union!6501) (regTwo!13515 r!4750))) b!2240090))

(declare-fun b!2240095 () Bool)

(declare-fun e!1432111 () Bool)

(declare-fun tp!705809 () Bool)

(declare-fun tp!705810 () Bool)

(assert (=> b!2240095 (= e!1432111 (and tp!705809 tp!705810))))

(assert (=> b!2239982 (= tp!705730 e!1432111)))

(assert (= (and b!2239982 ((_ is Cons!26399) (exprs!2549 ctx!48))) b!2240095))

(declare-fun b!2240099 () Bool)

(declare-fun e!1432112 () Bool)

(declare-fun tp!705811 () Bool)

(declare-fun tp!705812 () Bool)

(assert (=> b!2240099 (= e!1432112 (and tp!705811 tp!705812))))

(assert (=> b!2239977 (= tp!705724 e!1432112)))

(declare-fun b!2240097 () Bool)

(declare-fun tp!705815 () Bool)

(declare-fun tp!705814 () Bool)

(assert (=> b!2240097 (= e!1432112 (and tp!705815 tp!705814))))

(declare-fun b!2240098 () Bool)

(declare-fun tp!705813 () Bool)

(assert (=> b!2240098 (= e!1432112 tp!705813)))

(declare-fun b!2240096 () Bool)

(assert (=> b!2240096 (= e!1432112 tp_is_empty!10223)))

(assert (= (and b!2239977 ((_ is ElementMatch!6501) (reg!6830 r!4750))) b!2240096))

(assert (= (and b!2239977 ((_ is Concat!10839) (reg!6830 r!4750))) b!2240097))

(assert (= (and b!2239977 ((_ is Star!6501) (reg!6830 r!4750))) b!2240098))

(assert (= (and b!2239977 ((_ is Union!6501) (reg!6830 r!4750))) b!2240099))

(declare-fun b!2240103 () Bool)

(declare-fun e!1432113 () Bool)

(declare-fun tp!705816 () Bool)

(declare-fun tp!705817 () Bool)

(assert (=> b!2240103 (= e!1432113 (and tp!705816 tp!705817))))

(assert (=> b!2239971 (= tp!705734 e!1432113)))

(declare-fun b!2240101 () Bool)

(declare-fun tp!705820 () Bool)

(declare-fun tp!705819 () Bool)

(assert (=> b!2240101 (= e!1432113 (and tp!705820 tp!705819))))

(declare-fun b!2240102 () Bool)

(declare-fun tp!705818 () Bool)

(assert (=> b!2240102 (= e!1432113 tp!705818)))

(declare-fun b!2240100 () Bool)

(assert (=> b!2240100 (= e!1432113 tp_is_empty!10223)))

(assert (= (and b!2239971 ((_ is ElementMatch!6501) (regOne!13514 r!4750))) b!2240100))

(assert (= (and b!2239971 ((_ is Concat!10839) (regOne!13514 r!4750))) b!2240101))

(assert (= (and b!2239971 ((_ is Star!6501) (regOne!13514 r!4750))) b!2240102))

(assert (= (and b!2239971 ((_ is Union!6501) (regOne!13514 r!4750))) b!2240103))

(declare-fun b!2240107 () Bool)

(declare-fun e!1432114 () Bool)

(declare-fun tp!705821 () Bool)

(declare-fun tp!705822 () Bool)

(assert (=> b!2240107 (= e!1432114 (and tp!705821 tp!705822))))

(assert (=> b!2239971 (= tp!705732 e!1432114)))

(declare-fun b!2240105 () Bool)

(declare-fun tp!705825 () Bool)

(declare-fun tp!705824 () Bool)

(assert (=> b!2240105 (= e!1432114 (and tp!705825 tp!705824))))

(declare-fun b!2240106 () Bool)

(declare-fun tp!705823 () Bool)

(assert (=> b!2240106 (= e!1432114 tp!705823)))

(declare-fun b!2240104 () Bool)

(assert (=> b!2240104 (= e!1432114 tp_is_empty!10223)))

(assert (= (and b!2239971 ((_ is ElementMatch!6501) (regTwo!13514 r!4750))) b!2240104))

(assert (= (and b!2239971 ((_ is Concat!10839) (regTwo!13514 r!4750))) b!2240105))

(assert (= (and b!2239971 ((_ is Star!6501) (regTwo!13514 r!4750))) b!2240106))

(assert (= (and b!2239971 ((_ is Union!6501) (regTwo!13514 r!4750))) b!2240107))

(declare-fun e!1432116 () Bool)

(declare-fun b!2240108 () Bool)

(declare-fun tp!705827 () Bool)

(declare-fun setRes!20549 () Bool)

(declare-fun e!1432115 () Bool)

(declare-fun tp!705830 () Bool)

(assert (=> b!2240108 (= e!1432116 (and tp!705827 (inv!35856 (_2!15410 (_1!15411 (h!31801 (zeroValue!3397 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))))) e!1432115 tp_is_empty!10223 setRes!20549 tp!705830))))

(declare-fun condSetEmpty!20549 () Bool)

(assert (=> b!2240108 (= condSetEmpty!20549 (= (_2!15411 (h!31801 (zeroValue!3397 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))) ((as const (Array Context!4098 Bool)) false)))))

(declare-fun setElem!20549 () Context!4098)

(declare-fun tp!705829 () Bool)

(declare-fun e!1432117 () Bool)

(declare-fun setNonEmpty!20549 () Bool)

(assert (=> setNonEmpty!20549 (= setRes!20549 (and tp!705829 (inv!35856 setElem!20549) e!1432117))))

(declare-fun setRest!20549 () (InoxSet Context!4098))

(assert (=> setNonEmpty!20549 (= (_2!15411 (h!31801 (zeroValue!3397 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4098 Bool)) false) setElem!20549 true) setRest!20549))))

(assert (=> b!2239985 (= tp!705728 e!1432116)))

(declare-fun b!2240109 () Bool)

(declare-fun tp!705828 () Bool)

(assert (=> b!2240109 (= e!1432117 tp!705828)))

(declare-fun setIsEmpty!20549 () Bool)

(assert (=> setIsEmpty!20549 setRes!20549))

(declare-fun b!2240110 () Bool)

(declare-fun tp!705826 () Bool)

(assert (=> b!2240110 (= e!1432115 tp!705826)))

(assert (= b!2240108 b!2240110))

(assert (= (and b!2240108 condSetEmpty!20549) setIsEmpty!20549))

(assert (= (and b!2240108 (not condSetEmpty!20549)) setNonEmpty!20549))

(assert (= setNonEmpty!20549 b!2240109))

(assert (= (and b!2239985 ((_ is Cons!26400) (zeroValue!3397 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))) b!2240108))

(declare-fun m!2672582 () Bool)

(assert (=> b!2240108 m!2672582))

(declare-fun m!2672584 () Bool)

(assert (=> setNonEmpty!20549 m!2672584))

(declare-fun b!2240111 () Bool)

(declare-fun e!1432119 () Bool)

(declare-fun e!1432118 () Bool)

(declare-fun setRes!20550 () Bool)

(declare-fun tp!705832 () Bool)

(declare-fun tp!705835 () Bool)

(assert (=> b!2240111 (= e!1432119 (and tp!705832 (inv!35856 (_2!15410 (_1!15411 (h!31801 (minValue!3397 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))))) e!1432118 tp_is_empty!10223 setRes!20550 tp!705835))))

(declare-fun condSetEmpty!20550 () Bool)

(assert (=> b!2240111 (= condSetEmpty!20550 (= (_2!15411 (h!31801 (minValue!3397 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))) ((as const (Array Context!4098 Bool)) false)))))

(declare-fun setElem!20550 () Context!4098)

(declare-fun setNonEmpty!20550 () Bool)

(declare-fun e!1432120 () Bool)

(declare-fun tp!705834 () Bool)

(assert (=> setNonEmpty!20550 (= setRes!20550 (and tp!705834 (inv!35856 setElem!20550) e!1432120))))

(declare-fun setRest!20550 () (InoxSet Context!4098))

(assert (=> setNonEmpty!20550 (= (_2!15411 (h!31801 (minValue!3397 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4098 Bool)) false) setElem!20550 true) setRest!20550))))

(assert (=> b!2239985 (= tp!705725 e!1432119)))

(declare-fun b!2240112 () Bool)

(declare-fun tp!705833 () Bool)

(assert (=> b!2240112 (= e!1432120 tp!705833)))

(declare-fun setIsEmpty!20550 () Bool)

(assert (=> setIsEmpty!20550 setRes!20550))

(declare-fun b!2240113 () Bool)

(declare-fun tp!705831 () Bool)

(assert (=> b!2240113 (= e!1432118 tp!705831)))

(assert (= b!2240111 b!2240113))

(assert (= (and b!2240111 condSetEmpty!20550) setIsEmpty!20550))

(assert (= (and b!2240111 (not condSetEmpty!20550)) setNonEmpty!20550))

(assert (= setNonEmpty!20550 b!2240112))

(assert (= (and b!2239985 ((_ is Cons!26400) (minValue!3397 (v!30023 (underlying!6479 (v!30024 (underlying!6480 (cache!3430 thiss!28743)))))))) b!2240111))

(declare-fun m!2672586 () Bool)

(assert (=> b!2240111 m!2672586))

(declare-fun m!2672588 () Bool)

(assert (=> setNonEmpty!20550 m!2672588))

(declare-fun tp!705840 () Bool)

(declare-fun e!1432122 () Bool)

(declare-fun b!2240114 () Bool)

(declare-fun e!1432121 () Bool)

(declare-fun setRes!20551 () Bool)

(declare-fun tp!705837 () Bool)

(assert (=> b!2240114 (= e!1432122 (and tp!705837 (inv!35856 (_2!15410 (_1!15411 (h!31801 mapDefault!14723)))) e!1432121 tp_is_empty!10223 setRes!20551 tp!705840))))

(declare-fun condSetEmpty!20551 () Bool)

(assert (=> b!2240114 (= condSetEmpty!20551 (= (_2!15411 (h!31801 mapDefault!14723)) ((as const (Array Context!4098 Bool)) false)))))

(declare-fun e!1432123 () Bool)

(declare-fun setNonEmpty!20551 () Bool)

(declare-fun setElem!20551 () Context!4098)

(declare-fun tp!705839 () Bool)

(assert (=> setNonEmpty!20551 (= setRes!20551 (and tp!705839 (inv!35856 setElem!20551) e!1432123))))

(declare-fun setRest!20551 () (InoxSet Context!4098))

(assert (=> setNonEmpty!20551 (= (_2!15411 (h!31801 mapDefault!14723)) ((_ map or) (store ((as const (Array Context!4098 Bool)) false) setElem!20551 true) setRest!20551))))

(assert (=> b!2239984 (= tp!705736 e!1432122)))

(declare-fun b!2240115 () Bool)

(declare-fun tp!705838 () Bool)

(assert (=> b!2240115 (= e!1432123 tp!705838)))

(declare-fun setIsEmpty!20551 () Bool)

(assert (=> setIsEmpty!20551 setRes!20551))

(declare-fun b!2240116 () Bool)

(declare-fun tp!705836 () Bool)

(assert (=> b!2240116 (= e!1432121 tp!705836)))

(assert (= b!2240114 b!2240116))

(assert (= (and b!2240114 condSetEmpty!20551) setIsEmpty!20551))

(assert (= (and b!2240114 (not condSetEmpty!20551)) setNonEmpty!20551))

(assert (= setNonEmpty!20551 b!2240115))

(assert (= (and b!2239984 ((_ is Cons!26400) mapDefault!14723)) b!2240114))

(declare-fun m!2672590 () Bool)

(assert (=> b!2240114 m!2672590))

(declare-fun m!2672592 () Bool)

(assert (=> setNonEmpty!20551 m!2672592))

(declare-fun b_lambda!71755 () Bool)

(assert (= b_lambda!71753 (or b!2239972 b_lambda!71755)))

(declare-fun bs!454292 () Bool)

(declare-fun d!665716 () Bool)

(assert (= bs!454292 (and d!665716 b!2239972)))

(declare-fun res!957631 () Bool)

(declare-fun e!1432124 () Bool)

(assert (=> bs!454292 (=> (not res!957631) (not e!1432124))))

(declare-fun validRegex!2443 (Regex!6501) Bool)

(assert (=> bs!454292 (= res!957631 (validRegex!2443 (_1!15410 (_1!15411 (h!31801 (toList!1380 (map!5452 (cache!3430 thiss!28743))))))))))

(assert (=> bs!454292 (= (dynLambda!11540 lambda!84707 (h!31801 (toList!1380 (map!5452 (cache!3430 thiss!28743))))) e!1432124)))

(declare-fun b!2240117 () Bool)

(declare-fun derivationStepZipperDown!80 (Regex!6501 Context!4098 C!13148) (InoxSet Context!4098))

(assert (=> b!2240117 (= e!1432124 (= (_2!15411 (h!31801 (toList!1380 (map!5452 (cache!3430 thiss!28743))))) (derivationStepZipperDown!80 (_1!15410 (_1!15411 (h!31801 (toList!1380 (map!5452 (cache!3430 thiss!28743)))))) (_2!15410 (_1!15411 (h!31801 (toList!1380 (map!5452 (cache!3430 thiss!28743)))))) (_3!2507 (_1!15411 (h!31801 (toList!1380 (map!5452 (cache!3430 thiss!28743)))))))))))

(assert (= (and bs!454292 res!957631) b!2240117))

(declare-fun m!2672594 () Bool)

(assert (=> bs!454292 m!2672594))

(declare-fun m!2672596 () Bool)

(assert (=> b!2240117 m!2672596))

(assert (=> b!2240023 d!665716))

(check-sat (not b!2240103) (not bm!135170) (not setNonEmpty!20548) (not mapNonEmpty!14726) (not d!665698) (not b_lambda!71755) (not b!2240105) (not setNonEmpty!20549) (not b!2240010) (not b!2240040) (not b!2240099) tp_is_empty!10223 (not b!2240071) (not setNonEmpty!20550) (not setNonEmpty!20544) (not b!2240058) (not b!2240106) (not b!2240024) (not b!2240097) (not setNonEmpty!20551) b_and!175031 (not b!2240070) (not b!2240085) (not b!2240110) (not b!2240109) (not b!2240072) (not b_next!65721) (not b!2240057) (not bm!135171) (not b!2240115) (not d!665702) (not b!2240116) (not bs!454292) (not b!2240101) (not b!2240095) (not b!2240098) (not b!2240112) (not b!2240090) (not b!2240108) (not b!2240056) (not b!2240009) (not d!665704) (not b!2240014) (not b!2240102) (not bm!135169) (not b!2240088) (not b!2240012) (not b!2240011) (not b!2240041) (not b!2240059) (not b!2240061) (not d!665710) (not b!2240031) (not b!2240107) (not d!665708) (not b!2240113) (not b!2240114) (not setNonEmpty!20545) (not b!2240084) (not bm!135167) (not b!2240117) (not b_next!65723) (not b!2240032) b_and!175029 (not b!2240035) (not b!2240089) (not b!2240111) (not b!2240060) (not bm!135168) (not b!2240086) (not bm!135172))
(check-sat b_and!175029 b_and!175031 (not b_next!65723) (not b_next!65721))
