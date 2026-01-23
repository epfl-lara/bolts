; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296304 () Bool)

(assert start!296304)

(declare-fun b!3160569 () Bool)

(declare-fun b_free!82969 () Bool)

(declare-fun b_next!83673 () Bool)

(assert (=> b!3160569 (= b_free!82969 (not b_next!83673))))

(declare-fun tp!994160 () Bool)

(declare-fun b_and!209211 () Bool)

(assert (=> b!3160569 (= tp!994160 b_and!209211)))

(declare-fun b!3160571 () Bool)

(declare-fun b_free!82971 () Bool)

(declare-fun b_next!83675 () Bool)

(assert (=> b!3160571 (= b_free!82971 (not b_next!83675))))

(declare-fun tp!994166 () Bool)

(declare-fun b_and!209213 () Bool)

(assert (=> b!3160571 (= tp!994166 b_and!209213)))

(declare-fun b!3160567 () Bool)

(declare-fun e!1969028 () Bool)

(declare-fun e!1969024 () Bool)

(assert (=> b!3160567 (= e!1969028 e!1969024)))

(declare-fun mapNonEmpty!18710 () Bool)

(declare-fun mapRes!18710 () Bool)

(declare-fun tp!994158 () Bool)

(declare-fun tp!994165 () Bool)

(assert (=> mapNonEmpty!18710 (= mapRes!18710 (and tp!994158 tp!994165))))

(declare-datatypes ((C!19588 0))(
  ( (C!19589 (val!11830 Int)) )
))
(declare-datatypes ((Regex!9701 0))(
  ( (ElementMatch!9701 (c!531580 C!19588)) (Concat!15022 (regOne!19914 Regex!9701) (regTwo!19914 Regex!9701)) (EmptyExpr!9701) (Star!9701 (reg!10030 Regex!9701)) (EmptyLang!9701) (Union!9701 (regOne!19915 Regex!9701) (regTwo!19915 Regex!9701)) )
))
(declare-datatypes ((tuple2!34322 0))(
  ( (tuple2!34323 (_1!20293 Regex!9701) (_2!20293 C!19588)) )
))
(declare-datatypes ((tuple2!34324 0))(
  ( (tuple2!34325 (_1!20294 tuple2!34322) (_2!20294 Regex!9701)) )
))
(declare-datatypes ((array!14668 0))(
  ( (array!14669 (arr!6534 (Array (_ BitVec 32) (_ BitVec 64))) (size!26620 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4038 0))(
  ( (HashableExt!4037 (__x!22472 Int)) )
))
(declare-datatypes ((List!35529 0))(
  ( (Nil!35405) (Cons!35405 (h!40825 tuple2!34324) (t!234594 List!35529)) )
))
(declare-datatypes ((array!14670 0))(
  ( (array!14671 (arr!6535 (Array (_ BitVec 32) List!35529)) (size!26621 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8244 0))(
  ( (LongMapFixedSize!8245 (defaultEntry!4507 Int) (mask!10766 (_ BitVec 32)) (extraKeys!4371 (_ BitVec 32)) (zeroValue!4381 List!35529) (minValue!4381 List!35529) (_size!8287 (_ BitVec 32)) (_keys!4422 array!14668) (_values!4403 array!14670) (_vacant!4183 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16297 0))(
  ( (Cell!16298 (v!35021 LongMapFixedSize!8244)) )
))
(declare-datatypes ((MutLongMap!4122 0))(
  ( (LongMap!4122 (underlying!8473 Cell!16297)) (MutLongMapExt!4121 (__x!22473 Int)) )
))
(declare-datatypes ((Cell!16299 0))(
  ( (Cell!16300 (v!35022 MutLongMap!4122)) )
))
(declare-datatypes ((MutableMap!4028 0))(
  ( (MutableMapExt!4027 (__x!22474 Int)) (HashMap!4028 (underlying!8474 Cell!16299) (hashF!6070 Hashable!4038) (_size!8288 (_ BitVec 32)) (defaultValue!4199 Int)) )
))
(declare-datatypes ((Cache!326 0))(
  ( (Cache!327 (cache!4165 MutableMap!4028)) )
))
(declare-fun cache!347 () Cache!326)

(declare-fun mapRest!18710 () (Array (_ BitVec 32) List!35529))

(declare-fun mapKey!18710 () (_ BitVec 32))

(declare-fun mapValue!18710 () List!35529)

(assert (=> mapNonEmpty!18710 (= (arr!6535 (_values!4403 (v!35021 (underlying!8473 (v!35022 (underlying!8474 (cache!4165 cache!347))))))) (store mapRest!18710 mapKey!18710 mapValue!18710))))

(declare-fun tp!994164 () Bool)

(declare-fun tp!994167 () Bool)

(declare-fun e!1969031 () Bool)

(declare-fun e!1969029 () Bool)

(declare-fun array_inv!4680 (array!14668) Bool)

(declare-fun array_inv!4681 (array!14670) Bool)

(assert (=> b!3160569 (= e!1969029 (and tp!994160 tp!994167 tp!994164 (array_inv!4680 (_keys!4422 (v!35021 (underlying!8473 (v!35022 (underlying!8474 (cache!4165 cache!347))))))) (array_inv!4681 (_values!4403 (v!35021 (underlying!8473 (v!35022 (underlying!8474 (cache!4165 cache!347))))))) e!1969031))))

(declare-fun b!3160570 () Bool)

(declare-fun e!1969033 () Bool)

(declare-fun e!1969032 () Bool)

(assert (=> b!3160570 (= e!1969033 e!1969032)))

(declare-fun e!1969030 () Bool)

(assert (=> b!3160571 (= e!1969024 (and e!1969030 tp!994166))))

(declare-fun b!3160572 () Bool)

(declare-fun e!1969025 () Bool)

(declare-fun tp_is_empty!16965 () Bool)

(assert (=> b!3160572 (= e!1969025 tp_is_empty!16965)))

(declare-fun b!3160573 () Bool)

(declare-fun tp!994163 () Bool)

(assert (=> b!3160573 (= e!1969031 (and tp!994163 mapRes!18710))))

(declare-fun condMapEmpty!18710 () Bool)

(declare-fun mapDefault!18710 () List!35529)

(assert (=> b!3160573 (= condMapEmpty!18710 (= (arr!6535 (_values!4403 (v!35021 (underlying!8473 (v!35022 (underlying!8474 (cache!4165 cache!347))))))) ((as const (Array (_ BitVec 32) List!35529)) mapDefault!18710)))))

(declare-fun mapIsEmpty!18710 () Bool)

(assert (=> mapIsEmpty!18710 mapRes!18710))

(declare-fun b!3160574 () Bool)

(declare-fun res!1286926 () Bool)

(declare-fun e!1969027 () Bool)

(assert (=> b!3160574 (=> (not res!1286926) (not e!1969027))))

(declare-fun valid!3209 (Cache!326) Bool)

(assert (=> b!3160574 (= res!1286926 (valid!3209 cache!347))))

(declare-fun b!3160575 () Bool)

(declare-fun lt!1062754 () MutLongMap!4122)

(get-info :version)

(assert (=> b!3160575 (= e!1969030 (and e!1969033 ((_ is LongMap!4122) lt!1062754)))))

(assert (=> b!3160575 (= lt!1062754 (v!35022 (underlying!8474 (cache!4165 cache!347))))))

(declare-fun b!3160568 () Bool)

(declare-fun tp!994157 () Bool)

(declare-fun tp!994162 () Bool)

(assert (=> b!3160568 (= e!1969025 (and tp!994157 tp!994162))))

(declare-fun res!1286925 () Bool)

(assert (=> start!296304 (=> (not res!1286925) (not e!1969027))))

(declare-fun r!13156 () Regex!9701)

(declare-fun validRegex!4431 (Regex!9701) Bool)

(assert (=> start!296304 (= res!1286925 (validRegex!4431 r!13156))))

(assert (=> start!296304 e!1969027))

(assert (=> start!296304 e!1969025))

(declare-fun inv!48032 (Cache!326) Bool)

(assert (=> start!296304 (and (inv!48032 cache!347) e!1969028)))

(assert (=> start!296304 tp_is_empty!16965))

(declare-fun b!3160576 () Bool)

(declare-fun tp!994156 () Bool)

(declare-fun tp!994159 () Bool)

(assert (=> b!3160576 (= e!1969025 (and tp!994156 tp!994159))))

(declare-fun b!3160577 () Bool)

(assert (=> b!3160577 (= e!1969032 e!1969029)))

(declare-fun b!3160578 () Bool)

(assert (=> b!3160578 (= e!1969027 false)))

(declare-datatypes ((Option!6866 0))(
  ( (None!6865) (Some!6865 (v!35023 Regex!9701)) )
))
(declare-fun lt!1062755 () Option!6866)

(declare-fun a!2409 () C!19588)

(declare-fun get!11183 (Cache!326 Regex!9701 C!19588) Option!6866)

(assert (=> b!3160578 (= lt!1062755 (get!11183 cache!347 r!13156 a!2409))))

(declare-fun b!3160579 () Bool)

(declare-fun tp!994161 () Bool)

(assert (=> b!3160579 (= e!1969025 tp!994161)))

(assert (= (and start!296304 res!1286925) b!3160574))

(assert (= (and b!3160574 res!1286926) b!3160578))

(assert (= (and start!296304 ((_ is ElementMatch!9701) r!13156)) b!3160572))

(assert (= (and start!296304 ((_ is Concat!15022) r!13156)) b!3160576))

(assert (= (and start!296304 ((_ is Star!9701) r!13156)) b!3160579))

(assert (= (and start!296304 ((_ is Union!9701) r!13156)) b!3160568))

(assert (= (and b!3160573 condMapEmpty!18710) mapIsEmpty!18710))

(assert (= (and b!3160573 (not condMapEmpty!18710)) mapNonEmpty!18710))

(assert (= b!3160569 b!3160573))

(assert (= b!3160577 b!3160569))

(assert (= b!3160570 b!3160577))

(assert (= (and b!3160575 ((_ is LongMap!4122) (v!35022 (underlying!8474 (cache!4165 cache!347))))) b!3160570))

(assert (= b!3160571 b!3160575))

(assert (= (and b!3160567 ((_ is HashMap!4028) (cache!4165 cache!347))) b!3160571))

(assert (= start!296304 b!3160567))

(declare-fun m!3425527 () Bool)

(assert (=> b!3160578 m!3425527))

(declare-fun m!3425529 () Bool)

(assert (=> mapNonEmpty!18710 m!3425529))

(declare-fun m!3425531 () Bool)

(assert (=> b!3160574 m!3425531))

(declare-fun m!3425533 () Bool)

(assert (=> b!3160569 m!3425533))

(declare-fun m!3425535 () Bool)

(assert (=> b!3160569 m!3425535))

(declare-fun m!3425537 () Bool)

(assert (=> start!296304 m!3425537))

(declare-fun m!3425539 () Bool)

(assert (=> start!296304 m!3425539))

(check-sat (not b!3160576) (not b!3160574) (not mapNonEmpty!18710) (not b!3160578) tp_is_empty!16965 b_and!209213 (not b_next!83675) (not b!3160568) (not b!3160569) (not b!3160573) (not b!3160579) (not b_next!83673) (not start!296304) b_and!209211)
(check-sat b_and!209213 b_and!209211 (not b_next!83673) (not b_next!83675))
