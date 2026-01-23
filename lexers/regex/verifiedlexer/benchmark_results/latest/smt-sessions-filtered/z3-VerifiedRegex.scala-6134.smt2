; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297314 () Bool)

(assert start!297314)

(declare-fun b!3175005 () Bool)

(declare-fun b_free!83441 () Bool)

(declare-fun b_next!84145 () Bool)

(assert (=> b!3175005 (= b_free!83441 (not b_next!84145))))

(declare-fun tp!1003858 () Bool)

(declare-fun b_and!209735 () Bool)

(assert (=> b!3175005 (= tp!1003858 b_and!209735)))

(declare-fun b!3175010 () Bool)

(declare-fun b_free!83443 () Bool)

(declare-fun b_next!84147 () Bool)

(assert (=> b!3175010 (= b_free!83443 (not b_next!84147))))

(declare-fun tp!1003857 () Bool)

(declare-fun b_and!209737 () Bool)

(assert (=> b!3175010 (= tp!1003857 b_and!209737)))

(declare-fun e!1977595 () Bool)

(declare-fun e!1977596 () Bool)

(assert (=> b!3175005 (= e!1977595 (and e!1977596 tp!1003858))))

(declare-fun b!3175006 () Bool)

(declare-fun res!1290015 () Bool)

(declare-fun e!1977598 () Bool)

(assert (=> b!3175006 (=> (not res!1290015) (not e!1977598))))

(declare-datatypes ((C!19824 0))(
  ( (C!19825 (val!11948 Int)) )
))
(declare-datatypes ((Regex!9819 0))(
  ( (ElementMatch!9819 (c!533576 C!19824)) (Concat!15140 (regOne!20150 Regex!9819) (regTwo!20150 Regex!9819)) (EmptyExpr!9819) (Star!9819 (reg!10148 Regex!9819)) (EmptyLang!9819) (Union!9819 (regOne!20151 Regex!9819) (regTwo!20151 Regex!9819)) )
))
(declare-fun r!4705 () Regex!9819)

(declare-datatypes ((tuple2!34950 0))(
  ( (tuple2!34951 (_1!20607 Regex!9819) (_2!20607 C!19824)) )
))
(declare-datatypes ((tuple2!34952 0))(
  ( (tuple2!34953 (_1!20608 tuple2!34950) (_2!20608 Regex!9819)) )
))
(declare-datatypes ((List!35673 0))(
  ( (Nil!35549) (Cons!35549 (h!40969 tuple2!34952) (t!234764 List!35673)) )
))
(declare-datatypes ((array!15220 0))(
  ( (array!15221 (arr!6770 (Array (_ BitVec 32) (_ BitVec 64))) (size!26856 (_ BitVec 32))) )
))
(declare-datatypes ((array!15222 0))(
  ( (array!15223 (arr!6771 (Array (_ BitVec 32) List!35673)) (size!26857 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8480 0))(
  ( (LongMapFixedSize!8481 (defaultEntry!4625 Int) (mask!10943 (_ BitVec 32)) (extraKeys!4489 (_ BitVec 32)) (zeroValue!4499 List!35673) (minValue!4499 List!35673) (_size!8523 (_ BitVec 32)) (_keys!4540 array!15220) (_values!4521 array!15222) (_vacant!4301 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16769 0))(
  ( (Cell!16770 (v!35344 LongMapFixedSize!8480)) )
))
(declare-datatypes ((MutLongMap!4240 0))(
  ( (LongMap!4240 (underlying!8709 Cell!16769)) (MutLongMapExt!4239 (__x!22826 Int)) )
))
(declare-datatypes ((Cell!16771 0))(
  ( (Cell!16772 (v!35345 MutLongMap!4240)) )
))
(declare-datatypes ((Hashable!4156 0))(
  ( (HashableExt!4155 (__x!22827 Int)) )
))
(declare-datatypes ((MutableMap!4146 0))(
  ( (MutableMapExt!4145 (__x!22828 Int)) (HashMap!4146 (underlying!8710 Cell!16771) (hashF!6188 Hashable!4156) (_size!8524 (_ BitVec 32)) (defaultValue!4317 Int)) )
))
(declare-datatypes ((Cache!562 0))(
  ( (Cache!563 (cache!4292 MutableMap!4146)) )
))
(declare-fun thiss!28445 () Cache!562)

(declare-fun c!6979 () C!19824)

(declare-fun contains!6271 (MutableMap!4146 tuple2!34950) Bool)

(assert (=> b!3175006 (= res!1290015 (contains!6271 (cache!4292 thiss!28445) (tuple2!34951 r!4705 c!6979)))))

(declare-fun mapIsEmpty!19193 () Bool)

(declare-fun mapRes!19193 () Bool)

(assert (=> mapIsEmpty!19193 mapRes!19193))

(declare-fun b!3175007 () Bool)

(declare-fun res!1290018 () Bool)

(assert (=> b!3175007 (=> (not res!1290018) (not e!1977598))))

(get-info :version)

(assert (=> b!3175007 (= res!1290018 ((_ is HashMap!4146) (cache!4292 thiss!28445)))))

(declare-fun b!3175008 () Bool)

(declare-fun e!1977594 () Bool)

(assert (=> b!3175008 (= e!1977594 e!1977595)))

(declare-fun e!1977592 () Bool)

(declare-fun tp!1003859 () Bool)

(declare-fun e!1977593 () Bool)

(declare-fun tp!1003851 () Bool)

(declare-fun array_inv!4862 (array!15220) Bool)

(declare-fun array_inv!4863 (array!15222) Bool)

(assert (=> b!3175010 (= e!1977592 (and tp!1003857 tp!1003859 tp!1003851 (array_inv!4862 (_keys!4540 (v!35344 (underlying!8709 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))) (array_inv!4863 (_values!4521 (v!35344 (underlying!8709 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))) e!1977593))))

(declare-fun b!3175011 () Bool)

(declare-fun e!1977597 () Bool)

(declare-fun tp!1003856 () Bool)

(declare-fun tp!1003854 () Bool)

(assert (=> b!3175011 (= e!1977597 (and tp!1003856 tp!1003854))))

(declare-fun b!3175012 () Bool)

(declare-fun tp!1003850 () Bool)

(assert (=> b!3175012 (= e!1977597 tp!1003850)))

(declare-fun b!3175013 () Bool)

(declare-fun tp!1003853 () Bool)

(declare-fun tp!1003855 () Bool)

(assert (=> b!3175013 (= e!1977597 (and tp!1003853 tp!1003855))))

(declare-fun b!3175014 () Bool)

(declare-fun e!1977591 () Bool)

(declare-fun lt!1067669 () MutLongMap!4240)

(assert (=> b!3175014 (= e!1977596 (and e!1977591 ((_ is LongMap!4240) lt!1067669)))))

(assert (=> b!3175014 (= lt!1067669 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))

(declare-fun res!1290017 () Bool)

(assert (=> start!297314 (=> (not res!1290017) (not e!1977598))))

(declare-fun validCacheMap!115 (MutableMap!4146) Bool)

(assert (=> start!297314 (= res!1290017 (validCacheMap!115 (cache!4292 thiss!28445)))))

(assert (=> start!297314 e!1977598))

(declare-fun inv!48295 (Cache!562) Bool)

(assert (=> start!297314 (and (inv!48295 thiss!28445) e!1977594)))

(assert (=> start!297314 e!1977597))

(declare-fun tp_is_empty!17201 () Bool)

(assert (=> start!297314 tp_is_empty!17201))

(declare-fun b!3175009 () Bool)

(declare-fun tp!1003852 () Bool)

(assert (=> b!3175009 (= e!1977593 (and tp!1003852 mapRes!19193))))

(declare-fun condMapEmpty!19193 () Bool)

(declare-fun mapDefault!19193 () List!35673)

(assert (=> b!3175009 (= condMapEmpty!19193 (= (arr!6771 (_values!4521 (v!35344 (underlying!8709 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35673)) mapDefault!19193)))))

(declare-fun b!3175015 () Bool)

(assert (=> b!3175015 (= e!1977597 tp_is_empty!17201)))

(declare-fun b!3175016 () Bool)

(declare-fun e!1977599 () Bool)

(assert (=> b!3175016 (= e!1977599 e!1977592)))

(declare-fun b!3175017 () Bool)

(declare-fun res!1290016 () Bool)

(assert (=> b!3175017 (=> (not res!1290016) (not e!1977598))))

(declare-fun validRegex!4520 (Regex!9819) Bool)

(assert (=> b!3175017 (= res!1290016 (validRegex!4520 r!4705))))

(declare-fun b!3175018 () Bool)

(assert (=> b!3175018 (= e!1977591 e!1977599)))

(declare-fun mapNonEmpty!19193 () Bool)

(declare-fun tp!1003860 () Bool)

(declare-fun tp!1003849 () Bool)

(assert (=> mapNonEmpty!19193 (= mapRes!19193 (and tp!1003860 tp!1003849))))

(declare-fun mapRest!19193 () (Array (_ BitVec 32) List!35673))

(declare-fun mapValue!19193 () List!35673)

(declare-fun mapKey!19193 () (_ BitVec 32))

(assert (=> mapNonEmpty!19193 (= (arr!6771 (_values!4521 (v!35344 (underlying!8709 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))) (store mapRest!19193 mapKey!19193 mapValue!19193))))

(declare-fun b!3175019 () Bool)

(declare-fun valid!3295 (MutableMap!4146) Bool)

(assert (=> b!3175019 (= e!1977598 (not (valid!3295 (cache!4292 thiss!28445))))))

(assert (= (and start!297314 res!1290017) b!3175017))

(assert (= (and b!3175017 res!1290016) b!3175006))

(assert (= (and b!3175006 res!1290015) b!3175007))

(assert (= (and b!3175007 res!1290018) b!3175019))

(assert (= (and b!3175009 condMapEmpty!19193) mapIsEmpty!19193))

(assert (= (and b!3175009 (not condMapEmpty!19193)) mapNonEmpty!19193))

(assert (= b!3175010 b!3175009))

(assert (= b!3175016 b!3175010))

(assert (= b!3175018 b!3175016))

(assert (= (and b!3175014 ((_ is LongMap!4240) (v!35345 (underlying!8710 (cache!4292 thiss!28445))))) b!3175018))

(assert (= b!3175005 b!3175014))

(assert (= (and b!3175008 ((_ is HashMap!4146) (cache!4292 thiss!28445))) b!3175005))

(assert (= start!297314 b!3175008))

(assert (= (and start!297314 ((_ is ElementMatch!9819) r!4705)) b!3175015))

(assert (= (and start!297314 ((_ is Concat!15140) r!4705)) b!3175013))

(assert (= (and start!297314 ((_ is Star!9819) r!4705)) b!3175012))

(assert (= (and start!297314 ((_ is Union!9819) r!4705)) b!3175011))

(declare-fun m!3432001 () Bool)

(assert (=> b!3175017 m!3432001))

(declare-fun m!3432003 () Bool)

(assert (=> mapNonEmpty!19193 m!3432003))

(declare-fun m!3432005 () Bool)

(assert (=> b!3175010 m!3432005))

(declare-fun m!3432007 () Bool)

(assert (=> b!3175010 m!3432007))

(declare-fun m!3432009 () Bool)

(assert (=> start!297314 m!3432009))

(declare-fun m!3432011 () Bool)

(assert (=> start!297314 m!3432011))

(declare-fun m!3432013 () Bool)

(assert (=> b!3175006 m!3432013))

(declare-fun m!3432015 () Bool)

(assert (=> b!3175019 m!3432015))

(check-sat b_and!209735 (not b_next!84147) (not b!3175017) (not b!3175011) (not b!3175013) (not start!297314) tp_is_empty!17201 (not b!3175019) (not b_next!84145) (not b!3175012) (not mapNonEmpty!19193) (not b!3175009) b_and!209737 (not b!3175010) (not b!3175006))
(check-sat b_and!209737 b_and!209735 (not b_next!84147) (not b_next!84145))
(get-model)

(declare-fun d!869471 () Bool)

(declare-fun res!1290025 () Bool)

(declare-fun e!1977604 () Bool)

(assert (=> d!869471 (=> (not res!1290025) (not e!1977604))))

(assert (=> d!869471 (= res!1290025 (valid!3295 (cache!4292 thiss!28445)))))

(assert (=> d!869471 (= (validCacheMap!115 (cache!4292 thiss!28445)) e!1977604)))

(declare-fun b!3175026 () Bool)

(declare-fun res!1290026 () Bool)

(assert (=> b!3175026 (=> (not res!1290026) (not e!1977604))))

(declare-fun invariantList!505 (List!35673) Bool)

(declare-datatypes ((ListMap!1367 0))(
  ( (ListMap!1368 (toList!2109 List!35673)) )
))
(declare-fun map!7994 (MutableMap!4146) ListMap!1367)

(assert (=> b!3175026 (= res!1290026 (invariantList!505 (toList!2109 (map!7994 (cache!4292 thiss!28445)))))))

(declare-fun b!3175027 () Bool)

(declare-fun lambda!116180 () Int)

(declare-fun forall!7190 (List!35673 Int) Bool)

(assert (=> b!3175027 (= e!1977604 (forall!7190 (toList!2109 (map!7994 (cache!4292 thiss!28445))) lambda!116180))))

(assert (= (and d!869471 res!1290025) b!3175026))

(assert (= (and b!3175026 res!1290026) b!3175027))

(assert (=> d!869471 m!3432015))

(declare-fun m!3432018 () Bool)

(assert (=> b!3175026 m!3432018))

(declare-fun m!3432020 () Bool)

(assert (=> b!3175026 m!3432020))

(assert (=> b!3175027 m!3432018))

(declare-fun m!3432022 () Bool)

(assert (=> b!3175027 m!3432022))

(assert (=> start!297314 d!869471))

(declare-fun d!869473 () Bool)

(declare-fun res!1290029 () Bool)

(declare-fun e!1977607 () Bool)

(assert (=> d!869473 (=> (not res!1290029) (not e!1977607))))

(assert (=> d!869473 (= res!1290029 ((_ is HashMap!4146) (cache!4292 thiss!28445)))))

(assert (=> d!869473 (= (inv!48295 thiss!28445) e!1977607)))

(declare-fun b!3175030 () Bool)

(assert (=> b!3175030 (= e!1977607 (validCacheMap!115 (cache!4292 thiss!28445)))))

(assert (= (and d!869473 res!1290029) b!3175030))

(assert (=> b!3175030 m!3432009))

(assert (=> start!297314 d!869473))

(declare-fun b!3175049 () Bool)

(declare-fun e!1977622 () Bool)

(declare-fun call!230807 () Bool)

(assert (=> b!3175049 (= e!1977622 call!230807)))

(declare-fun b!3175050 () Bool)

(declare-fun e!1977623 () Bool)

(assert (=> b!3175050 (= e!1977623 e!1977622)))

(declare-fun res!1290042 () Bool)

(declare-fun nullable!3373 (Regex!9819) Bool)

(assert (=> b!3175050 (= res!1290042 (not (nullable!3373 (reg!10148 r!4705))))))

(assert (=> b!3175050 (=> (not res!1290042) (not e!1977622))))

(declare-fun d!869475 () Bool)

(declare-fun res!1290041 () Bool)

(declare-fun e!1977624 () Bool)

(assert (=> d!869475 (=> res!1290041 e!1977624)))

(assert (=> d!869475 (= res!1290041 ((_ is ElementMatch!9819) r!4705))))

(assert (=> d!869475 (= (validRegex!4520 r!4705) e!1977624)))

(declare-fun b!3175051 () Bool)

(declare-fun e!1977628 () Bool)

(declare-fun e!1977625 () Bool)

(assert (=> b!3175051 (= e!1977628 e!1977625)))

(declare-fun res!1290044 () Bool)

(assert (=> b!3175051 (=> (not res!1290044) (not e!1977625))))

(declare-fun call!230808 () Bool)

(assert (=> b!3175051 (= res!1290044 call!230808)))

(declare-fun b!3175052 () Bool)

(declare-fun res!1290043 () Bool)

(declare-fun e!1977627 () Bool)

(assert (=> b!3175052 (=> (not res!1290043) (not e!1977627))))

(assert (=> b!3175052 (= res!1290043 call!230808)))

(declare-fun e!1977626 () Bool)

(assert (=> b!3175052 (= e!1977626 e!1977627)))

(declare-fun b!3175053 () Bool)

(declare-fun call!230809 () Bool)

(assert (=> b!3175053 (= e!1977627 call!230809)))

(declare-fun b!3175054 () Bool)

(assert (=> b!3175054 (= e!1977624 e!1977623)))

(declare-fun c!533582 () Bool)

(assert (=> b!3175054 (= c!533582 ((_ is Star!9819) r!4705))))

(declare-fun b!3175055 () Bool)

(assert (=> b!3175055 (= e!1977625 call!230809)))

(declare-fun bm!230802 () Bool)

(declare-fun c!533581 () Bool)

(assert (=> bm!230802 (= call!230807 (validRegex!4520 (ite c!533582 (reg!10148 r!4705) (ite c!533581 (regOne!20151 r!4705) (regOne!20150 r!4705)))))))

(declare-fun bm!230803 () Bool)

(assert (=> bm!230803 (= call!230809 (validRegex!4520 (ite c!533581 (regTwo!20151 r!4705) (regTwo!20150 r!4705))))))

(declare-fun b!3175056 () Bool)

(declare-fun res!1290040 () Bool)

(assert (=> b!3175056 (=> res!1290040 e!1977628)))

(assert (=> b!3175056 (= res!1290040 (not ((_ is Concat!15140) r!4705)))))

(assert (=> b!3175056 (= e!1977626 e!1977628)))

(declare-fun bm!230804 () Bool)

(assert (=> bm!230804 (= call!230808 call!230807)))

(declare-fun b!3175057 () Bool)

(assert (=> b!3175057 (= e!1977623 e!1977626)))

(assert (=> b!3175057 (= c!533581 ((_ is Union!9819) r!4705))))

(assert (= (and d!869475 (not res!1290041)) b!3175054))

(assert (= (and b!3175054 c!533582) b!3175050))

(assert (= (and b!3175054 (not c!533582)) b!3175057))

(assert (= (and b!3175050 res!1290042) b!3175049))

(assert (= (and b!3175057 c!533581) b!3175052))

(assert (= (and b!3175057 (not c!533581)) b!3175056))

(assert (= (and b!3175052 res!1290043) b!3175053))

(assert (= (and b!3175056 (not res!1290040)) b!3175051))

(assert (= (and b!3175051 res!1290044) b!3175055))

(assert (= (or b!3175053 b!3175055) bm!230803))

(assert (= (or b!3175052 b!3175051) bm!230804))

(assert (= (or b!3175049 bm!230804) bm!230802))

(declare-fun m!3432024 () Bool)

(assert (=> b!3175050 m!3432024))

(declare-fun m!3432026 () Bool)

(assert (=> bm!230802 m!3432026))

(declare-fun m!3432028 () Bool)

(assert (=> bm!230803 m!3432028))

(assert (=> b!3175017 d!869475))

(declare-fun d!869477 () Bool)

(declare-fun res!1290049 () Bool)

(declare-fun e!1977631 () Bool)

(assert (=> d!869477 (=> (not res!1290049) (not e!1977631))))

(declare-fun valid!3296 (MutLongMap!4240) Bool)

(assert (=> d!869477 (= res!1290049 (valid!3296 (v!35345 (underlying!8710 (cache!4292 thiss!28445)))))))

(assert (=> d!869477 (= (valid!3295 (cache!4292 thiss!28445)) e!1977631)))

(declare-fun b!3175062 () Bool)

(declare-fun res!1290050 () Bool)

(assert (=> b!3175062 (=> (not res!1290050) (not e!1977631))))

(declare-fun lambda!116183 () Int)

(declare-datatypes ((tuple2!34954 0))(
  ( (tuple2!34955 (_1!20609 (_ BitVec 64)) (_2!20609 List!35673)) )
))
(declare-datatypes ((List!35674 0))(
  ( (Nil!35550) (Cons!35550 (h!40970 tuple2!34954) (t!234765 List!35674)) )
))
(declare-fun forall!7191 (List!35674 Int) Bool)

(declare-datatypes ((ListLongMap!763 0))(
  ( (ListLongMap!764 (toList!2110 List!35674)) )
))
(declare-fun map!7995 (MutLongMap!4240) ListLongMap!763)

(assert (=> b!3175062 (= res!1290050 (forall!7191 (toList!2110 (map!7995 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))) lambda!116183))))

(declare-fun b!3175063 () Bool)

(declare-fun allKeysSameHashInMap!250 (ListLongMap!763 Hashable!4156) Bool)

(assert (=> b!3175063 (= e!1977631 (allKeysSameHashInMap!250 (map!7995 (v!35345 (underlying!8710 (cache!4292 thiss!28445)))) (hashF!6188 (cache!4292 thiss!28445))))))

(assert (= (and d!869477 res!1290049) b!3175062))

(assert (= (and b!3175062 res!1290050) b!3175063))

(declare-fun m!3432030 () Bool)

(assert (=> d!869477 m!3432030))

(declare-fun m!3432032 () Bool)

(assert (=> b!3175062 m!3432032))

(declare-fun m!3432034 () Bool)

(assert (=> b!3175062 m!3432034))

(assert (=> b!3175063 m!3432032))

(assert (=> b!3175063 m!3432032))

(declare-fun m!3432036 () Bool)

(assert (=> b!3175063 m!3432036))

(assert (=> b!3175019 d!869477))

(declare-fun bs!539669 () Bool)

(declare-fun b!3175091 () Bool)

(assert (= bs!539669 (and b!3175091 b!3175062)))

(declare-fun lambda!116186 () Int)

(assert (=> bs!539669 (= lambda!116186 lambda!116183)))

(declare-fun b!3175086 () Bool)

(declare-fun e!1977652 () Bool)

(declare-fun call!230826 () Bool)

(assert (=> b!3175086 (= e!1977652 call!230826)))

(declare-fun b!3175087 () Bool)

(declare-datatypes ((Unit!50052 0))(
  ( (Unit!50053) )
))
(declare-fun e!1977650 () Unit!50052)

(declare-fun lt!1067711 () Unit!50052)

(assert (=> b!3175087 (= e!1977650 lt!1067711)))

(declare-fun lt!1067715 () ListLongMap!763)

(declare-fun call!230823 () ListLongMap!763)

(assert (=> b!3175087 (= lt!1067715 call!230823)))

(declare-fun lemmaInGenericMapThenInLongMap!108 (ListLongMap!763 tuple2!34950 Hashable!4156) Unit!50052)

(assert (=> b!3175087 (= lt!1067711 (lemmaInGenericMapThenInLongMap!108 lt!1067715 (tuple2!34951 r!4705 c!6979) (hashF!6188 (cache!4292 thiss!28445))))))

(declare-fun res!1290057 () Bool)

(declare-fun call!230827 () Bool)

(assert (=> b!3175087 (= res!1290057 call!230827)))

(assert (=> b!3175087 (=> (not res!1290057) (not e!1977652))))

(assert (=> b!3175087 e!1977652))

(declare-fun b!3175088 () Bool)

(declare-fun e!1977646 () Unit!50052)

(declare-fun Unit!50054 () Unit!50052)

(assert (=> b!3175088 (= e!1977646 Unit!50054)))

(declare-fun b!3175089 () Bool)

(declare-fun e!1977651 () Unit!50052)

(declare-fun Unit!50055 () Unit!50052)

(assert (=> b!3175089 (= e!1977651 Unit!50055)))

(declare-fun b!3175090 () Bool)

(declare-fun e!1977649 () Bool)

(assert (=> b!3175090 (= e!1977649 call!230826)))

(declare-fun lt!1067721 () (_ BitVec 64))

(declare-fun forallContained!1086 (List!35674 Int tuple2!34954) Unit!50052)

(declare-fun apply!7997 (MutLongMap!4240 (_ BitVec 64)) List!35673)

(assert (=> b!3175091 (= e!1977651 (forallContained!1086 (toList!2110 (map!7995 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))) lambda!116186 (tuple2!34955 lt!1067721 (apply!7997 (v!35345 (underlying!8710 (cache!4292 thiss!28445))) lt!1067721))))))

(declare-fun c!533592 () Bool)

(declare-fun contains!6272 (List!35674 tuple2!34954) Bool)

(assert (=> b!3175091 (= c!533592 (not (contains!6272 (toList!2110 (map!7995 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))) (tuple2!34955 lt!1067721 (apply!7997 (v!35345 (underlying!8710 (cache!4292 thiss!28445))) lt!1067721)))))))

(declare-fun lt!1067717 () Unit!50052)

(declare-fun e!1977647 () Unit!50052)

(assert (=> b!3175091 (= lt!1067717 e!1977647)))

(declare-fun call!230824 () (_ BitVec 64))

(declare-fun bm!230817 () Bool)

(declare-fun hash!821 (Hashable!4156 tuple2!34950) (_ BitVec 64))

(assert (=> bm!230817 (= call!230824 (hash!821 (hashF!6188 (cache!4292 thiss!28445)) (tuple2!34951 r!4705 c!6979)))))

(declare-fun d!869479 () Bool)

(declare-fun lt!1067726 () Bool)

(declare-fun contains!6273 (ListMap!1367 tuple2!34950) Bool)

(assert (=> d!869479 (= lt!1067726 (contains!6273 (map!7994 (cache!4292 thiss!28445)) (tuple2!34951 r!4705 c!6979)))))

(declare-fun e!1977648 () Bool)

(assert (=> d!869479 (= lt!1067726 e!1977648)))

(declare-fun res!1290058 () Bool)

(assert (=> d!869479 (=> (not res!1290058) (not e!1977648))))

(declare-fun contains!6274 (MutLongMap!4240 (_ BitVec 64)) Bool)

(assert (=> d!869479 (= res!1290058 (contains!6274 (v!35345 (underlying!8710 (cache!4292 thiss!28445))) lt!1067721))))

(declare-fun lt!1067713 () Unit!50052)

(assert (=> d!869479 (= lt!1067713 e!1977650)))

(declare-fun c!533593 () Bool)

(declare-fun extractMap!251 (List!35674) ListMap!1367)

(assert (=> d!869479 (= c!533593 (contains!6273 (extractMap!251 (toList!2110 (map!7995 (v!35345 (underlying!8710 (cache!4292 thiss!28445)))))) (tuple2!34951 r!4705 c!6979)))))

(declare-fun lt!1067725 () Unit!50052)

(assert (=> d!869479 (= lt!1067725 e!1977651)))

(declare-fun c!533594 () Bool)

(assert (=> d!869479 (= c!533594 (contains!6274 (v!35345 (underlying!8710 (cache!4292 thiss!28445))) lt!1067721))))

(assert (=> d!869479 (= lt!1067721 (hash!821 (hashF!6188 (cache!4292 thiss!28445)) (tuple2!34951 r!4705 c!6979)))))

(assert (=> d!869479 (valid!3295 (cache!4292 thiss!28445))))

(assert (=> d!869479 (= (contains!6271 (cache!4292 thiss!28445) (tuple2!34951 r!4705 c!6979)) lt!1067726)))

(declare-fun bm!230818 () Bool)

(declare-datatypes ((Option!6945 0))(
  ( (None!6944) (Some!6944 (v!35346 tuple2!34952)) )
))
(declare-fun call!230822 () Option!6945)

(declare-fun call!230825 () List!35673)

(declare-fun getPair!108 (List!35673 tuple2!34950) Option!6945)

(assert (=> bm!230818 (= call!230822 (getPair!108 call!230825 (tuple2!34951 r!4705 c!6979)))))

(declare-fun bm!230819 () Bool)

(declare-fun isDefined!5451 (Option!6945) Bool)

(assert (=> bm!230819 (= call!230826 (isDefined!5451 call!230822))))

(declare-fun b!3175092 () Bool)

(assert (=> b!3175092 false))

(declare-fun lt!1067719 () Unit!50052)

(declare-fun lt!1067718 () Unit!50052)

(assert (=> b!3175092 (= lt!1067719 lt!1067718)))

(declare-fun lt!1067712 () ListLongMap!763)

(assert (=> b!3175092 (contains!6273 (extractMap!251 (toList!2110 lt!1067712)) (tuple2!34951 r!4705 c!6979))))

(declare-fun lemmaInLongMapThenInGenericMap!108 (ListLongMap!763 tuple2!34950 Hashable!4156) Unit!50052)

(assert (=> b!3175092 (= lt!1067718 (lemmaInLongMapThenInGenericMap!108 lt!1067712 (tuple2!34951 r!4705 c!6979) (hashF!6188 (cache!4292 thiss!28445))))))

(assert (=> b!3175092 (= lt!1067712 call!230823)))

(declare-fun Unit!50056 () Unit!50052)

(assert (=> b!3175092 (= e!1977646 Unit!50056)))

(declare-fun b!3175093 () Bool)

(declare-fun Unit!50057 () Unit!50052)

(assert (=> b!3175093 (= e!1977647 Unit!50057)))

(declare-fun bm!230820 () Bool)

(assert (=> bm!230820 (= call!230823 (map!7995 (v!35345 (underlying!8710 (cache!4292 thiss!28445)))))))

(declare-fun bm!230821 () Bool)

(declare-fun contains!6275 (ListLongMap!763 (_ BitVec 64)) Bool)

(assert (=> bm!230821 (= call!230827 (contains!6275 (ite c!533593 lt!1067715 call!230823) call!230824))))

(declare-fun bm!230822 () Bool)

(declare-fun apply!7998 (ListLongMap!763 (_ BitVec 64)) List!35673)

(assert (=> bm!230822 (= call!230825 (apply!7998 (ite c!533593 lt!1067715 call!230823) call!230824))))

(declare-fun b!3175094 () Bool)

(assert (=> b!3175094 (= e!1977650 e!1977646)))

(declare-fun res!1290059 () Bool)

(assert (=> b!3175094 (= res!1290059 call!230827)))

(assert (=> b!3175094 (=> (not res!1290059) (not e!1977649))))

(declare-fun c!533591 () Bool)

(assert (=> b!3175094 (= c!533591 e!1977649)))

(declare-fun b!3175095 () Bool)

(assert (=> b!3175095 false))

(declare-fun lt!1067727 () Unit!50052)

(declare-fun lt!1067720 () Unit!50052)

(assert (=> b!3175095 (= lt!1067727 lt!1067720)))

(declare-fun lt!1067723 () List!35674)

(declare-fun lt!1067722 () List!35673)

(assert (=> b!3175095 (contains!6272 lt!1067723 (tuple2!34955 lt!1067721 lt!1067722))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!114 (List!35674 (_ BitVec 64) List!35673) Unit!50052)

(assert (=> b!3175095 (= lt!1067720 (lemmaGetValueByKeyImpliesContainsTuple!114 lt!1067723 lt!1067721 lt!1067722))))

(assert (=> b!3175095 (= lt!1067722 (apply!7997 (v!35345 (underlying!8710 (cache!4292 thiss!28445))) lt!1067721))))

(assert (=> b!3175095 (= lt!1067723 (toList!2110 (map!7995 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))))

(declare-fun lt!1067716 () Unit!50052)

(declare-fun lt!1067714 () Unit!50052)

(assert (=> b!3175095 (= lt!1067716 lt!1067714)))

(declare-fun lt!1067728 () List!35674)

(declare-datatypes ((Option!6946 0))(
  ( (None!6945) (Some!6945 (v!35347 List!35673)) )
))
(declare-fun isDefined!5452 (Option!6946) Bool)

(declare-fun getValueByKey!198 (List!35674 (_ BitVec 64)) Option!6946)

(assert (=> b!3175095 (isDefined!5452 (getValueByKey!198 lt!1067728 lt!1067721))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!142 (List!35674 (_ BitVec 64)) Unit!50052)

(assert (=> b!3175095 (= lt!1067714 (lemmaContainsKeyImpliesGetValueByKeyDefined!142 lt!1067728 lt!1067721))))

(assert (=> b!3175095 (= lt!1067728 (toList!2110 (map!7995 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))))

(declare-fun lt!1067710 () Unit!50052)

(declare-fun lt!1067724 () Unit!50052)

(assert (=> b!3175095 (= lt!1067710 lt!1067724)))

(declare-fun lt!1067729 () List!35674)

(declare-fun containsKey!210 (List!35674 (_ BitVec 64)) Bool)

(assert (=> b!3175095 (containsKey!210 lt!1067729 lt!1067721)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!109 (List!35674 (_ BitVec 64)) Unit!50052)

(assert (=> b!3175095 (= lt!1067724 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!109 lt!1067729 lt!1067721))))

(assert (=> b!3175095 (= lt!1067729 (toList!2110 (map!7995 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))))

(declare-fun Unit!50058 () Unit!50052)

(assert (=> b!3175095 (= e!1977647 Unit!50058)))

(declare-fun b!3175096 () Bool)

(assert (=> b!3175096 (= e!1977648 (isDefined!5451 (getPair!108 (apply!7997 (v!35345 (underlying!8710 (cache!4292 thiss!28445))) lt!1067721) (tuple2!34951 r!4705 c!6979))))))

(assert (= (and d!869479 c!533594) b!3175091))

(assert (= (and d!869479 (not c!533594)) b!3175089))

(assert (= (and b!3175091 c!533592) b!3175095))

(assert (= (and b!3175091 (not c!533592)) b!3175093))

(assert (= (and d!869479 c!533593) b!3175087))

(assert (= (and d!869479 (not c!533593)) b!3175094))

(assert (= (and b!3175087 res!1290057) b!3175086))

(assert (= (and b!3175094 res!1290059) b!3175090))

(assert (= (and b!3175094 c!533591) b!3175092))

(assert (= (and b!3175094 (not c!533591)) b!3175088))

(assert (= (or b!3175087 b!3175094 b!3175090 b!3175092) bm!230820))

(assert (= (or b!3175087 b!3175086 b!3175094 b!3175090) bm!230817))

(assert (= (or b!3175087 b!3175094) bm!230821))

(assert (= (or b!3175086 b!3175090) bm!230822))

(assert (= (or b!3175086 b!3175090) bm!230818))

(assert (= (or b!3175086 b!3175090) bm!230819))

(assert (= (and d!869479 res!1290058) b!3175096))

(declare-fun m!3432038 () Bool)

(assert (=> bm!230821 m!3432038))

(assert (=> b!3175091 m!3432032))

(declare-fun m!3432040 () Bool)

(assert (=> b!3175091 m!3432040))

(declare-fun m!3432042 () Bool)

(assert (=> b!3175091 m!3432042))

(declare-fun m!3432044 () Bool)

(assert (=> b!3175091 m!3432044))

(declare-fun m!3432046 () Bool)

(assert (=> bm!230819 m!3432046))

(declare-fun m!3432048 () Bool)

(assert (=> bm!230818 m!3432048))

(declare-fun m!3432050 () Bool)

(assert (=> bm!230817 m!3432050))

(declare-fun m!3432052 () Bool)

(assert (=> bm!230822 m!3432052))

(assert (=> b!3175096 m!3432040))

(assert (=> b!3175096 m!3432040))

(declare-fun m!3432054 () Bool)

(assert (=> b!3175096 m!3432054))

(assert (=> b!3175096 m!3432054))

(declare-fun m!3432056 () Bool)

(assert (=> b!3175096 m!3432056))

(assert (=> b!3175095 m!3432040))

(declare-fun m!3432058 () Bool)

(assert (=> b!3175095 m!3432058))

(assert (=> b!3175095 m!3432032))

(declare-fun m!3432060 () Bool)

(assert (=> b!3175095 m!3432060))

(declare-fun m!3432062 () Bool)

(assert (=> b!3175095 m!3432062))

(assert (=> b!3175095 m!3432062))

(declare-fun m!3432064 () Bool)

(assert (=> b!3175095 m!3432064))

(declare-fun m!3432066 () Bool)

(assert (=> b!3175095 m!3432066))

(declare-fun m!3432068 () Bool)

(assert (=> b!3175095 m!3432068))

(declare-fun m!3432070 () Bool)

(assert (=> b!3175095 m!3432070))

(declare-fun m!3432072 () Bool)

(assert (=> b!3175092 m!3432072))

(assert (=> b!3175092 m!3432072))

(declare-fun m!3432074 () Bool)

(assert (=> b!3175092 m!3432074))

(declare-fun m!3432076 () Bool)

(assert (=> b!3175092 m!3432076))

(declare-fun m!3432078 () Bool)

(assert (=> d!869479 m!3432078))

(assert (=> d!869479 m!3432018))

(assert (=> d!869479 m!3432015))

(assert (=> d!869479 m!3432050))

(assert (=> d!869479 m!3432032))

(declare-fun m!3432080 () Bool)

(assert (=> d!869479 m!3432080))

(declare-fun m!3432082 () Bool)

(assert (=> d!869479 m!3432082))

(assert (=> d!869479 m!3432018))

(declare-fun m!3432084 () Bool)

(assert (=> d!869479 m!3432084))

(assert (=> d!869479 m!3432080))

(declare-fun m!3432086 () Bool)

(assert (=> b!3175087 m!3432086))

(assert (=> bm!230820 m!3432032))

(assert (=> b!3175006 d!869479))

(declare-fun d!869481 () Bool)

(assert (=> d!869481 (= (array_inv!4862 (_keys!4540 (v!35344 (underlying!8709 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))) (bvsge (size!26856 (_keys!4540 (v!35344 (underlying!8709 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3175010 d!869481))

(declare-fun d!869483 () Bool)

(assert (=> d!869483 (= (array_inv!4863 (_values!4521 (v!35344 (underlying!8709 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))) (bvsge (size!26857 (_values!4521 (v!35344 (underlying!8709 (v!35345 (underlying!8710 (cache!4292 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3175010 d!869483))

(declare-fun b!3175110 () Bool)

(declare-fun e!1977655 () Bool)

(declare-fun tp!1003873 () Bool)

(declare-fun tp!1003874 () Bool)

(assert (=> b!3175110 (= e!1977655 (and tp!1003873 tp!1003874))))

(declare-fun b!3175109 () Bool)

(declare-fun tp!1003871 () Bool)

(assert (=> b!3175109 (= e!1977655 tp!1003871)))

(assert (=> b!3175012 (= tp!1003850 e!1977655)))

(declare-fun b!3175107 () Bool)

(assert (=> b!3175107 (= e!1977655 tp_is_empty!17201)))

(declare-fun b!3175108 () Bool)

(declare-fun tp!1003875 () Bool)

(declare-fun tp!1003872 () Bool)

(assert (=> b!3175108 (= e!1977655 (and tp!1003875 tp!1003872))))

(assert (= (and b!3175012 ((_ is ElementMatch!9819) (reg!10148 r!4705))) b!3175107))

(assert (= (and b!3175012 ((_ is Concat!15140) (reg!10148 r!4705))) b!3175108))

(assert (= (and b!3175012 ((_ is Star!9819) (reg!10148 r!4705))) b!3175109))

(assert (= (and b!3175012 ((_ is Union!9819) (reg!10148 r!4705))) b!3175110))

(declare-fun b!3175114 () Bool)

(declare-fun e!1977656 () Bool)

(declare-fun tp!1003878 () Bool)

(declare-fun tp!1003879 () Bool)

(assert (=> b!3175114 (= e!1977656 (and tp!1003878 tp!1003879))))

(declare-fun b!3175113 () Bool)

(declare-fun tp!1003876 () Bool)

(assert (=> b!3175113 (= e!1977656 tp!1003876)))

(assert (=> b!3175011 (= tp!1003856 e!1977656)))

(declare-fun b!3175111 () Bool)

(assert (=> b!3175111 (= e!1977656 tp_is_empty!17201)))

(declare-fun b!3175112 () Bool)

(declare-fun tp!1003880 () Bool)

(declare-fun tp!1003877 () Bool)

(assert (=> b!3175112 (= e!1977656 (and tp!1003880 tp!1003877))))

(assert (= (and b!3175011 ((_ is ElementMatch!9819) (regOne!20151 r!4705))) b!3175111))

(assert (= (and b!3175011 ((_ is Concat!15140) (regOne!20151 r!4705))) b!3175112))

(assert (= (and b!3175011 ((_ is Star!9819) (regOne!20151 r!4705))) b!3175113))

(assert (= (and b!3175011 ((_ is Union!9819) (regOne!20151 r!4705))) b!3175114))

(declare-fun b!3175118 () Bool)

(declare-fun e!1977657 () Bool)

(declare-fun tp!1003883 () Bool)

(declare-fun tp!1003884 () Bool)

(assert (=> b!3175118 (= e!1977657 (and tp!1003883 tp!1003884))))

(declare-fun b!3175117 () Bool)

(declare-fun tp!1003881 () Bool)

(assert (=> b!3175117 (= e!1977657 tp!1003881)))

(assert (=> b!3175011 (= tp!1003854 e!1977657)))

(declare-fun b!3175115 () Bool)

(assert (=> b!3175115 (= e!1977657 tp_is_empty!17201)))

(declare-fun b!3175116 () Bool)

(declare-fun tp!1003885 () Bool)

(declare-fun tp!1003882 () Bool)

(assert (=> b!3175116 (= e!1977657 (and tp!1003885 tp!1003882))))

(assert (= (and b!3175011 ((_ is ElementMatch!9819) (regTwo!20151 r!4705))) b!3175115))

(assert (= (and b!3175011 ((_ is Concat!15140) (regTwo!20151 r!4705))) b!3175116))

(assert (= (and b!3175011 ((_ is Star!9819) (regTwo!20151 r!4705))) b!3175117))

(assert (= (and b!3175011 ((_ is Union!9819) (regTwo!20151 r!4705))) b!3175118))

(declare-fun b!3175122 () Bool)

(declare-fun e!1977658 () Bool)

(declare-fun tp!1003888 () Bool)

(declare-fun tp!1003889 () Bool)

(assert (=> b!3175122 (= e!1977658 (and tp!1003888 tp!1003889))))

(declare-fun b!3175121 () Bool)

(declare-fun tp!1003886 () Bool)

(assert (=> b!3175121 (= e!1977658 tp!1003886)))

(assert (=> b!3175013 (= tp!1003853 e!1977658)))

(declare-fun b!3175119 () Bool)

(assert (=> b!3175119 (= e!1977658 tp_is_empty!17201)))

(declare-fun b!3175120 () Bool)

(declare-fun tp!1003890 () Bool)

(declare-fun tp!1003887 () Bool)

(assert (=> b!3175120 (= e!1977658 (and tp!1003890 tp!1003887))))

(assert (= (and b!3175013 ((_ is ElementMatch!9819) (regOne!20150 r!4705))) b!3175119))

(assert (= (and b!3175013 ((_ is Concat!15140) (regOne!20150 r!4705))) b!3175120))

(assert (= (and b!3175013 ((_ is Star!9819) (regOne!20150 r!4705))) b!3175121))

(assert (= (and b!3175013 ((_ is Union!9819) (regOne!20150 r!4705))) b!3175122))

(declare-fun b!3175126 () Bool)

(declare-fun e!1977659 () Bool)

(declare-fun tp!1003893 () Bool)

(declare-fun tp!1003894 () Bool)

(assert (=> b!3175126 (= e!1977659 (and tp!1003893 tp!1003894))))

(declare-fun b!3175125 () Bool)

(declare-fun tp!1003891 () Bool)

(assert (=> b!3175125 (= e!1977659 tp!1003891)))

(assert (=> b!3175013 (= tp!1003855 e!1977659)))

(declare-fun b!3175123 () Bool)

(assert (=> b!3175123 (= e!1977659 tp_is_empty!17201)))

(declare-fun b!3175124 () Bool)

(declare-fun tp!1003895 () Bool)

(declare-fun tp!1003892 () Bool)

(assert (=> b!3175124 (= e!1977659 (and tp!1003895 tp!1003892))))

(assert (= (and b!3175013 ((_ is ElementMatch!9819) (regTwo!20150 r!4705))) b!3175123))

(assert (= (and b!3175013 ((_ is Concat!15140) (regTwo!20150 r!4705))) b!3175124))

(assert (= (and b!3175013 ((_ is Star!9819) (regTwo!20150 r!4705))) b!3175125))

(assert (= (and b!3175013 ((_ is Union!9819) (regTwo!20150 r!4705))) b!3175126))

(declare-fun tp!1003904 () Bool)

(declare-fun tp!1003903 () Bool)

(declare-fun b!3175131 () Bool)

(declare-fun e!1977662 () Bool)

(declare-fun tp!1003902 () Bool)

(assert (=> b!3175131 (= e!1977662 (and tp!1003902 tp_is_empty!17201 tp!1003903 tp!1003904))))

(assert (=> b!3175009 (= tp!1003852 e!1977662)))

(assert (= (and b!3175009 ((_ is Cons!35549) mapDefault!19193)) b!3175131))

(declare-fun condMapEmpty!19196 () Bool)

(declare-fun mapDefault!19196 () List!35673)

(assert (=> mapNonEmpty!19193 (= condMapEmpty!19196 (= mapRest!19193 ((as const (Array (_ BitVec 32) List!35673)) mapDefault!19196)))))

(declare-fun e!1977668 () Bool)

(declare-fun mapRes!19196 () Bool)

(assert (=> mapNonEmpty!19193 (= tp!1003860 (and e!1977668 mapRes!19196))))

(declare-fun mapNonEmpty!19196 () Bool)

(declare-fun tp!1003921 () Bool)

(declare-fun e!1977667 () Bool)

(assert (=> mapNonEmpty!19196 (= mapRes!19196 (and tp!1003921 e!1977667))))

(declare-fun mapValue!19196 () List!35673)

(declare-fun mapRest!19196 () (Array (_ BitVec 32) List!35673))

(declare-fun mapKey!19196 () (_ BitVec 32))

(assert (=> mapNonEmpty!19196 (= mapRest!19193 (store mapRest!19196 mapKey!19196 mapValue!19196))))

(declare-fun b!3175139 () Bool)

(declare-fun tp!1003923 () Bool)

(declare-fun tp!1003924 () Bool)

(declare-fun tp!1003920 () Bool)

(assert (=> b!3175139 (= e!1977668 (and tp!1003920 tp_is_empty!17201 tp!1003923 tp!1003924))))

(declare-fun tp!1003919 () Bool)

(declare-fun tp!1003925 () Bool)

(declare-fun tp!1003922 () Bool)

(declare-fun b!3175138 () Bool)

(assert (=> b!3175138 (= e!1977667 (and tp!1003922 tp_is_empty!17201 tp!1003919 tp!1003925))))

(declare-fun mapIsEmpty!19196 () Bool)

(assert (=> mapIsEmpty!19196 mapRes!19196))

(assert (= (and mapNonEmpty!19193 condMapEmpty!19196) mapIsEmpty!19196))

(assert (= (and mapNonEmpty!19193 (not condMapEmpty!19196)) mapNonEmpty!19196))

(assert (= (and mapNonEmpty!19196 ((_ is Cons!35549) mapValue!19196)) b!3175138))

(assert (= (and mapNonEmpty!19193 ((_ is Cons!35549) mapDefault!19196)) b!3175139))

(declare-fun m!3432088 () Bool)

(assert (=> mapNonEmpty!19196 m!3432088))

(declare-fun tp!1003927 () Bool)

(declare-fun tp!1003928 () Bool)

(declare-fun tp!1003926 () Bool)

(declare-fun b!3175140 () Bool)

(declare-fun e!1977669 () Bool)

(assert (=> b!3175140 (= e!1977669 (and tp!1003926 tp_is_empty!17201 tp!1003927 tp!1003928))))

(assert (=> mapNonEmpty!19193 (= tp!1003849 e!1977669)))

(assert (= (and mapNonEmpty!19193 ((_ is Cons!35549) mapValue!19193)) b!3175140))

(declare-fun tp!1003929 () Bool)

(declare-fun e!1977670 () Bool)

(declare-fun tp!1003931 () Bool)

(declare-fun tp!1003930 () Bool)

(declare-fun b!3175141 () Bool)

(assert (=> b!3175141 (= e!1977670 (and tp!1003929 tp_is_empty!17201 tp!1003930 tp!1003931))))

(assert (=> b!3175010 (= tp!1003859 e!1977670)))

(assert (= (and b!3175010 ((_ is Cons!35549) (zeroValue!4499 (v!35344 (underlying!8709 (v!35345 (underlying!8710 (cache!4292 thiss!28445)))))))) b!3175141))

(declare-fun tp!1003932 () Bool)

(declare-fun tp!1003934 () Bool)

(declare-fun tp!1003933 () Bool)

(declare-fun e!1977671 () Bool)

(declare-fun b!3175142 () Bool)

(assert (=> b!3175142 (= e!1977671 (and tp!1003932 tp_is_empty!17201 tp!1003933 tp!1003934))))

(assert (=> b!3175010 (= tp!1003851 e!1977671)))

(assert (= (and b!3175010 ((_ is Cons!35549) (minValue!4499 (v!35344 (underlying!8709 (v!35345 (underlying!8710 (cache!4292 thiss!28445)))))))) b!3175142))

(check-sat (not bm!230821) b_and!209737 (not b!3175126) (not bm!230822) (not d!869477) (not b!3175139) (not b!3175030) (not b!3175050) (not d!869471) (not b!3175087) (not b!3175091) (not mapNonEmpty!19196) (not b!3175140) b_and!209735 (not b!3175118) (not b!3175116) (not b!3175026) (not b!3175125) (not b!3175113) (not bm!230819) (not b_next!84147) (not b!3175122) (not b!3175027) (not b!3175138) (not b!3175142) (not b!3175096) (not b!3175108) (not b!3175095) (not bm!230803) (not b!3175124) (not b!3175110) (not b!3175114) (not b!3175109) (not b!3175120) (not b!3175141) (not bm!230820) (not b!3175121) (not d!869479) (not bm!230817) (not bm!230802) (not b!3175112) tp_is_empty!17201 (not b!3175131) (not b_next!84145) (not b!3175062) (not b!3175092) (not bm!230818) (not b!3175063) (not b!3175117))
(check-sat b_and!209737 b_and!209735 (not b_next!84147) (not b_next!84145))
