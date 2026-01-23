; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297354 () Bool)

(assert start!297354)

(declare-fun b!3175462 () Bool)

(declare-fun b_free!83457 () Bool)

(declare-fun b_next!84161 () Bool)

(assert (=> b!3175462 (= b_free!83457 (not b_next!84161))))

(declare-fun tp!1004146 () Bool)

(declare-fun b_and!209751 () Bool)

(assert (=> b!3175462 (= tp!1004146 b_and!209751)))

(declare-fun b!3175464 () Bool)

(declare-fun b_free!83459 () Bool)

(declare-fun b_next!84163 () Bool)

(assert (=> b!3175464 (= b_free!83459 (not b_next!84163))))

(declare-fun tp!1004142 () Bool)

(declare-fun b_and!209753 () Bool)

(assert (=> b!3175464 (= tp!1004142 b_and!209753)))

(declare-fun b!3175452 () Bool)

(declare-fun e!1977885 () Bool)

(declare-fun e!1977882 () Bool)

(declare-datatypes ((C!19832 0))(
  ( (C!19833 (val!11952 Int)) )
))
(declare-datatypes ((Regex!9823 0))(
  ( (ElementMatch!9823 (c!533616 C!19832)) (Concat!15144 (regOne!20158 Regex!9823) (regTwo!20158 Regex!9823)) (EmptyExpr!9823) (Star!9823 (reg!10152 Regex!9823)) (EmptyLang!9823) (Union!9823 (regOne!20159 Regex!9823) (regTwo!20159 Regex!9823)) )
))
(declare-datatypes ((tuple2!34970 0))(
  ( (tuple2!34971 (_1!20617 Regex!9823) (_2!20617 C!19832)) )
))
(declare-datatypes ((tuple2!34972 0))(
  ( (tuple2!34973 (_1!20618 tuple2!34970) (_2!20618 Regex!9823)) )
))
(declare-datatypes ((List!35679 0))(
  ( (Nil!35555) (Cons!35555 (h!40975 tuple2!34972) (t!234770 List!35679)) )
))
(declare-datatypes ((array!15240 0))(
  ( (array!15241 (arr!6778 (Array (_ BitVec 32) (_ BitVec 64))) (size!26864 (_ BitVec 32))) )
))
(declare-datatypes ((array!15242 0))(
  ( (array!15243 (arr!6779 (Array (_ BitVec 32) List!35679)) (size!26865 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8488 0))(
  ( (LongMapFixedSize!8489 (defaultEntry!4629 Int) (mask!10949 (_ BitVec 32)) (extraKeys!4493 (_ BitVec 32)) (zeroValue!4503 List!35679) (minValue!4503 List!35679) (_size!8531 (_ BitVec 32)) (_keys!4544 array!15240) (_values!4525 array!15242) (_vacant!4305 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16785 0))(
  ( (Cell!16786 (v!35356 LongMapFixedSize!8488)) )
))
(declare-datatypes ((MutLongMap!4244 0))(
  ( (LongMap!4244 (underlying!8717 Cell!16785)) (MutLongMapExt!4243 (__x!22838 Int)) )
))
(declare-fun lt!1067819 () MutLongMap!4244)

(get-info :version)

(assert (=> b!3175452 (= e!1977885 (and e!1977882 ((_ is LongMap!4244) lt!1067819)))))

(declare-datatypes ((Cell!16787 0))(
  ( (Cell!16788 (v!35357 MutLongMap!4244)) )
))
(declare-datatypes ((Hashable!4160 0))(
  ( (HashableExt!4159 (__x!22839 Int)) )
))
(declare-datatypes ((MutableMap!4150 0))(
  ( (MutableMapExt!4149 (__x!22840 Int)) (HashMap!4150 (underlying!8718 Cell!16787) (hashF!6192 Hashable!4160) (_size!8532 (_ BitVec 32)) (defaultValue!4321 Int)) )
))
(declare-datatypes ((Cache!570 0))(
  ( (Cache!571 (cache!4296 MutableMap!4150)) )
))
(declare-fun thiss!28445 () Cache!570)

(assert (=> b!3175452 (= lt!1067819 (v!35357 (underlying!8718 (cache!4296 thiss!28445))))))

(declare-fun b!3175453 () Bool)

(declare-fun e!1977887 () Bool)

(declare-fun e!1977889 () Bool)

(assert (=> b!3175453 (= e!1977887 e!1977889)))

(declare-fun b!3175454 () Bool)

(declare-fun e!1977890 () Bool)

(assert (=> b!3175454 (= e!1977882 e!1977890)))

(declare-fun b!3175456 () Bool)

(declare-fun e!1977880 () Bool)

(declare-fun e!1977881 () Bool)

(assert (=> b!3175456 (= e!1977880 e!1977881)))

(declare-fun res!1290168 () Bool)

(assert (=> b!3175456 (=> (not res!1290168) (not e!1977881))))

(declare-fun lt!1067821 () tuple2!34970)

(declare-fun contains!6283 (MutableMap!4150 tuple2!34970) Bool)

(assert (=> b!3175456 (= res!1290168 (contains!6283 (cache!4296 thiss!28445) lt!1067821))))

(declare-fun r!4705 () Regex!9823)

(declare-fun c!6979 () C!19832)

(assert (=> b!3175456 (= lt!1067821 (tuple2!34971 r!4705 c!6979))))

(declare-fun b!3175457 () Bool)

(declare-fun res!1290169 () Bool)

(assert (=> b!3175457 (=> (not res!1290169) (not e!1977880))))

(declare-fun validRegex!4524 (Regex!9823) Bool)

(assert (=> b!3175457 (= res!1290169 (validRegex!4524 r!4705))))

(declare-fun b!3175458 () Bool)

(declare-fun e!1977883 () Bool)

(declare-fun tp!1004151 () Bool)

(assert (=> b!3175458 (= e!1977883 tp!1004151)))

(declare-fun b!3175459 () Bool)

(declare-fun e!1977888 () Bool)

(declare-fun lt!1067822 () Regex!9823)

(declare-fun derivativeStep!2927 (Regex!9823 C!19832) Regex!9823)

(assert (=> b!3175459 (= e!1977888 (= lt!1067822 (derivativeStep!2927 (_1!20617 lt!1067821) (_2!20617 lt!1067821))))))

(declare-fun b!3175460 () Bool)

(declare-fun tp!1004141 () Bool)

(declare-fun tp!1004150 () Bool)

(assert (=> b!3175460 (= e!1977883 (and tp!1004141 tp!1004150))))

(declare-fun b!3175461 () Bool)

(assert (=> b!3175461 (= e!1977881 (not (= (derivativeStep!2927 r!4705 c!6979) lt!1067822)))))

(assert (=> b!3175461 e!1977888))

(declare-fun res!1290166 () Bool)

(assert (=> b!3175461 (=> (not res!1290166) (not e!1977888))))

(assert (=> b!3175461 (= res!1290166 (validRegex!4524 (_1!20617 lt!1067821)))))

(declare-fun apply!8002 (MutableMap!4150 tuple2!34970) Regex!9823)

(assert (=> b!3175461 (= lt!1067822 (apply!8002 (cache!4296 thiss!28445) lt!1067821))))

(declare-fun lambda!116207 () Int)

(declare-datatypes ((Unit!50068 0))(
  ( (Unit!50069) )
))
(declare-fun lt!1067820 () Unit!50068)

(declare-fun lemmaForallPairsThenForLookup!61 (MutableMap!4150 tuple2!34970 Int) Unit!50068)

(assert (=> b!3175461 (= lt!1067820 (lemmaForallPairsThenForLookup!61 (cache!4296 thiss!28445) lt!1067821 lambda!116207))))

(declare-fun tp!1004147 () Bool)

(declare-fun e!1977884 () Bool)

(declare-fun tp!1004149 () Bool)

(declare-fun e!1977886 () Bool)

(declare-fun array_inv!4870 (array!15240) Bool)

(declare-fun array_inv!4871 (array!15242) Bool)

(assert (=> b!3175462 (= e!1977884 (and tp!1004146 tp!1004149 tp!1004147 (array_inv!4870 (_keys!4544 (v!35356 (underlying!8717 (v!35357 (underlying!8718 (cache!4296 thiss!28445))))))) (array_inv!4871 (_values!4525 (v!35356 (underlying!8717 (v!35357 (underlying!8718 (cache!4296 thiss!28445))))))) e!1977886))))

(declare-fun b!3175463 () Bool)

(declare-fun tp!1004144 () Bool)

(declare-fun tp!1004145 () Bool)

(assert (=> b!3175463 (= e!1977883 (and tp!1004144 tp!1004145))))

(assert (=> b!3175464 (= e!1977889 (and e!1977885 tp!1004142))))

(declare-fun res!1290167 () Bool)

(assert (=> start!297354 (=> (not res!1290167) (not e!1977880))))

(declare-fun validCacheMap!119 (MutableMap!4150) Bool)

(assert (=> start!297354 (= res!1290167 (validCacheMap!119 (cache!4296 thiss!28445)))))

(assert (=> start!297354 e!1977880))

(declare-fun inv!48305 (Cache!570) Bool)

(assert (=> start!297354 (and (inv!48305 thiss!28445) e!1977887)))

(assert (=> start!297354 e!1977883))

(declare-fun tp_is_empty!17209 () Bool)

(assert (=> start!297354 tp_is_empty!17209))

(declare-fun b!3175455 () Bool)

(assert (=> b!3175455 (= e!1977883 tp_is_empty!17209)))

(declare-fun b!3175465 () Bool)

(assert (=> b!3175465 (= e!1977890 e!1977884)))

(declare-fun mapNonEmpty!19211 () Bool)

(declare-fun mapRes!19211 () Bool)

(declare-fun tp!1004143 () Bool)

(declare-fun tp!1004152 () Bool)

(assert (=> mapNonEmpty!19211 (= mapRes!19211 (and tp!1004143 tp!1004152))))

(declare-fun mapValue!19211 () List!35679)

(declare-fun mapRest!19211 () (Array (_ BitVec 32) List!35679))

(declare-fun mapKey!19211 () (_ BitVec 32))

(assert (=> mapNonEmpty!19211 (= (arr!6779 (_values!4525 (v!35356 (underlying!8717 (v!35357 (underlying!8718 (cache!4296 thiss!28445))))))) (store mapRest!19211 mapKey!19211 mapValue!19211))))

(declare-fun b!3175466 () Bool)

(declare-fun tp!1004148 () Bool)

(assert (=> b!3175466 (= e!1977886 (and tp!1004148 mapRes!19211))))

(declare-fun condMapEmpty!19211 () Bool)

(declare-fun mapDefault!19211 () List!35679)

(assert (=> b!3175466 (= condMapEmpty!19211 (= (arr!6779 (_values!4525 (v!35356 (underlying!8717 (v!35357 (underlying!8718 (cache!4296 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35679)) mapDefault!19211)))))

(declare-fun mapIsEmpty!19211 () Bool)

(assert (=> mapIsEmpty!19211 mapRes!19211))

(assert (= (and start!297354 res!1290167) b!3175457))

(assert (= (and b!3175457 res!1290169) b!3175456))

(assert (= (and b!3175456 res!1290168) b!3175461))

(assert (= (and b!3175461 res!1290166) b!3175459))

(assert (= (and b!3175466 condMapEmpty!19211) mapIsEmpty!19211))

(assert (= (and b!3175466 (not condMapEmpty!19211)) mapNonEmpty!19211))

(assert (= b!3175462 b!3175466))

(assert (= b!3175465 b!3175462))

(assert (= b!3175454 b!3175465))

(assert (= (and b!3175452 ((_ is LongMap!4244) (v!35357 (underlying!8718 (cache!4296 thiss!28445))))) b!3175454))

(assert (= b!3175464 b!3175452))

(assert (= (and b!3175453 ((_ is HashMap!4150) (cache!4296 thiss!28445))) b!3175464))

(assert (= start!297354 b!3175453))

(assert (= (and start!297354 ((_ is ElementMatch!9823) r!4705)) b!3175455))

(assert (= (and start!297354 ((_ is Concat!15144) r!4705)) b!3175460))

(assert (= (and start!297354 ((_ is Star!9823) r!4705)) b!3175458))

(assert (= (and start!297354 ((_ is Union!9823) r!4705)) b!3175463))

(declare-fun m!3432235 () Bool)

(assert (=> b!3175456 m!3432235))

(declare-fun m!3432237 () Bool)

(assert (=> start!297354 m!3432237))

(declare-fun m!3432239 () Bool)

(assert (=> start!297354 m!3432239))

(declare-fun m!3432241 () Bool)

(assert (=> mapNonEmpty!19211 m!3432241))

(declare-fun m!3432243 () Bool)

(assert (=> b!3175459 m!3432243))

(declare-fun m!3432245 () Bool)

(assert (=> b!3175457 m!3432245))

(declare-fun m!3432247 () Bool)

(assert (=> b!3175461 m!3432247))

(declare-fun m!3432249 () Bool)

(assert (=> b!3175461 m!3432249))

(declare-fun m!3432251 () Bool)

(assert (=> b!3175461 m!3432251))

(declare-fun m!3432253 () Bool)

(assert (=> b!3175461 m!3432253))

(declare-fun m!3432255 () Bool)

(assert (=> b!3175462 m!3432255))

(declare-fun m!3432257 () Bool)

(assert (=> b!3175462 m!3432257))

(check-sat (not start!297354) (not b!3175456) tp_is_empty!17209 (not b!3175459) b_and!209751 b_and!209753 (not b!3175457) (not mapNonEmpty!19211) (not b!3175461) (not b!3175462) (not b!3175466) (not b_next!84163) (not b!3175458) (not b!3175460) (not b_next!84161) (not b!3175463))
(check-sat b_and!209751 b_and!209753 (not b_next!84161) (not b_next!84163))
