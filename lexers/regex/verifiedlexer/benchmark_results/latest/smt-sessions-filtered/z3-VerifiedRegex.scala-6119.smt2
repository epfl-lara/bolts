; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297134 () Bool)

(assert start!297134)

(declare-fun b!3172581 () Bool)

(declare-fun b_free!83321 () Bool)

(declare-fun b_next!84025 () Bool)

(assert (=> b!3172581 (= b_free!83321 (not b_next!84025))))

(declare-fun tp!1002120 () Bool)

(declare-fun b_and!209603 () Bool)

(assert (=> b!3172581 (= tp!1002120 b_and!209603)))

(declare-fun b!3172578 () Bool)

(declare-fun b_free!83323 () Bool)

(declare-fun b_next!84027 () Bool)

(assert (=> b!3172578 (= b_free!83323 (not b_next!84027))))

(declare-fun tp!1002121 () Bool)

(declare-fun b_and!209605 () Bool)

(assert (=> b!3172578 (= tp!1002121 b_and!209605)))

(declare-fun b!3172568 () Bool)

(declare-fun e!1975969 () Bool)

(declare-fun e!1975970 () Bool)

(assert (=> b!3172568 (= e!1975969 e!1975970)))

(declare-fun mapIsEmpty!19079 () Bool)

(declare-fun mapRes!19079 () Bool)

(assert (=> mapIsEmpty!19079 mapRes!19079))

(declare-fun b!3172569 () Bool)

(declare-fun e!1975967 () Bool)

(declare-datatypes ((C!19764 0))(
  ( (C!19765 (val!11918 Int)) )
))
(declare-datatypes ((Regex!9789 0))(
  ( (ElementMatch!9789 (c!533346 C!19764)) (Concat!15110 (regOne!20090 Regex!9789) (regTwo!20090 Regex!9789)) (EmptyExpr!9789) (Star!9789 (reg!10118 Regex!9789)) (EmptyLang!9789) (Union!9789 (regOne!20091 Regex!9789) (regTwo!20091 Regex!9789)) )
))
(declare-datatypes ((tuple2!34816 0))(
  ( (tuple2!34817 (_1!20540 Regex!9789) (_2!20540 C!19764)) )
))
(declare-datatypes ((tuple2!34818 0))(
  ( (tuple2!34819 (_1!20541 tuple2!34816) (_2!20541 Regex!9789)) )
))
(declare-datatypes ((List!35636 0))(
  ( (Nil!35512) (Cons!35512 (h!40932 tuple2!34818) (t!234721 List!35636)) )
))
(declare-datatypes ((array!15084 0))(
  ( (array!15085 (arr!6710 (Array (_ BitVec 32) (_ BitVec 64))) (size!26796 (_ BitVec 32))) )
))
(declare-datatypes ((array!15086 0))(
  ( (array!15087 (arr!6711 (Array (_ BitVec 32) List!35636)) (size!26797 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8420 0))(
  ( (LongMapFixedSize!8421 (defaultEntry!4595 Int) (mask!10898 (_ BitVec 32)) (extraKeys!4459 (_ BitVec 32)) (zeroValue!4469 List!35636) (minValue!4469 List!35636) (_size!8463 (_ BitVec 32)) (_keys!4510 array!15084) (_values!4491 array!15086) (_vacant!4271 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16649 0))(
  ( (Cell!16650 (v!35266 LongMapFixedSize!8420)) )
))
(declare-datatypes ((MutLongMap!4210 0))(
  ( (LongMap!4210 (underlying!8649 Cell!16649)) (MutLongMapExt!4209 (__x!22736 Int)) )
))
(declare-fun lt!1066752 () MutLongMap!4210)

(get-info :version)

(assert (=> b!3172569 (= e!1975967 (and e!1975969 ((_ is LongMap!4210) lt!1066752)))))

(declare-datatypes ((Cell!16651 0))(
  ( (Cell!16652 (v!35267 MutLongMap!4210)) )
))
(declare-datatypes ((Hashable!4126 0))(
  ( (HashableExt!4125 (__x!22737 Int)) )
))
(declare-datatypes ((MutableMap!4116 0))(
  ( (MutableMapExt!4115 (__x!22738 Int)) (HashMap!4116 (underlying!8650 Cell!16651) (hashF!6158 Hashable!4126) (_size!8464 (_ BitVec 32)) (defaultValue!4287 Int)) )
))
(declare-datatypes ((Cache!502 0))(
  ( (Cache!503 (cache!4262 MutableMap!4116)) )
))
(declare-fun thiss!28499 () Cache!502)

(assert (=> b!3172569 (= lt!1066752 (v!35267 (underlying!8650 (cache!4262 thiss!28499))))))

(declare-fun res!1289384 () Bool)

(declare-fun e!1975963 () Bool)

(assert (=> start!297134 (=> (not res!1289384) (not e!1975963))))

(declare-fun r!4721 () Regex!9789)

(declare-fun validRegex!4496 (Regex!9789) Bool)

(assert (=> start!297134 (= res!1289384 (validRegex!4496 r!4721))))

(assert (=> start!297134 e!1975963))

(declare-fun e!1975964 () Bool)

(assert (=> start!297134 e!1975964))

(declare-fun e!1975966 () Bool)

(declare-fun inv!48229 (Cache!502) Bool)

(assert (=> start!297134 (and (inv!48229 thiss!28499) e!1975966)))

(declare-fun tp_is_empty!17141 () Bool)

(assert (=> start!297134 tp_is_empty!17141))

(declare-fun b!3172570 () Bool)

(declare-fun e!1975961 () Bool)

(assert (=> b!3172570 (= e!1975963 e!1975961)))

(declare-fun res!1289383 () Bool)

(assert (=> b!3172570 (=> (not res!1289383) (not e!1975961))))

(declare-fun lt!1066754 () tuple2!34816)

(declare-fun contains!6225 (MutableMap!4116 tuple2!34816) Bool)

(assert (=> b!3172570 (= res!1289383 (contains!6225 (cache!4262 thiss!28499) lt!1066754))))

(declare-fun c!6988 () C!19764)

(assert (=> b!3172570 (= lt!1066754 (tuple2!34817 r!4721 c!6988))))

(declare-fun b!3172571 () Bool)

(assert (=> b!3172571 (= e!1975964 tp_is_empty!17141)))

(declare-fun b!3172572 () Bool)

(declare-fun tp!1002125 () Bool)

(assert (=> b!3172572 (= e!1975964 tp!1002125)))

(declare-fun b!3172573 () Bool)

(declare-fun e!1975968 () Bool)

(declare-fun tp!1002118 () Bool)

(assert (=> b!3172573 (= e!1975968 (and tp!1002118 mapRes!19079))))

(declare-fun condMapEmpty!19079 () Bool)

(declare-fun mapDefault!19079 () List!35636)

(assert (=> b!3172573 (= condMapEmpty!19079 (= (arr!6711 (_values!4491 (v!35266 (underlying!8649 (v!35267 (underlying!8650 (cache!4262 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35636)) mapDefault!19079)))))

(declare-fun b!3172574 () Bool)

(declare-fun tp!1002119 () Bool)

(declare-fun tp!1002123 () Bool)

(assert (=> b!3172574 (= e!1975964 (and tp!1002119 tp!1002123))))

(declare-fun b!3172575 () Bool)

(declare-fun e!1975962 () Bool)

(assert (=> b!3172575 (= e!1975970 e!1975962)))

(declare-fun b!3172576 () Bool)

(declare-fun tp!1002124 () Bool)

(declare-fun tp!1002117 () Bool)

(assert (=> b!3172576 (= e!1975964 (and tp!1002124 tp!1002117))))

(declare-fun mapNonEmpty!19079 () Bool)

(declare-fun tp!1002127 () Bool)

(declare-fun tp!1002128 () Bool)

(assert (=> mapNonEmpty!19079 (= mapRes!19079 (and tp!1002127 tp!1002128))))

(declare-fun mapRest!19079 () (Array (_ BitVec 32) List!35636))

(declare-fun mapValue!19079 () List!35636)

(declare-fun mapKey!19079 () (_ BitVec 32))

(assert (=> mapNonEmpty!19079 (= (arr!6711 (_values!4491 (v!35266 (underlying!8649 (v!35267 (underlying!8650 (cache!4262 thiss!28499))))))) (store mapRest!19079 mapKey!19079 mapValue!19079))))

(declare-fun b!3172577 () Bool)

(declare-fun res!1289382 () Bool)

(assert (=> b!3172577 (=> (not res!1289382) (not e!1975963))))

(declare-fun validCacheMap!93 (MutableMap!4116) Bool)

(assert (=> b!3172577 (= res!1289382 (validCacheMap!93 (cache!4262 thiss!28499)))))

(declare-fun e!1975971 () Bool)

(assert (=> b!3172578 (= e!1975971 (and e!1975967 tp!1002121))))

(declare-fun b!3172579 () Bool)

(assert (=> b!3172579 (= e!1975966 e!1975971)))

(declare-fun b!3172580 () Bool)

(assert (=> b!3172580 (= e!1975961 false)))

(declare-fun lt!1066751 () Regex!9789)

(declare-fun apply!7977 (MutableMap!4116 tuple2!34816) Regex!9789)

(assert (=> b!3172580 (= lt!1066751 (apply!7977 (cache!4262 thiss!28499) lt!1066754))))

(declare-datatypes ((Unit!49993 0))(
  ( (Unit!49994) )
))
(declare-fun lt!1066753 () Unit!49993)

(declare-fun lemmaIfInCacheThenValid!66 (Cache!502 Regex!9789 C!19764) Unit!49993)

(assert (=> b!3172580 (= lt!1066753 (lemmaIfInCacheThenValid!66 thiss!28499 r!4721 c!6988))))

(declare-fun tp!1002126 () Bool)

(declare-fun tp!1002122 () Bool)

(declare-fun array_inv!4812 (array!15084) Bool)

(declare-fun array_inv!4813 (array!15086) Bool)

(assert (=> b!3172581 (= e!1975962 (and tp!1002120 tp!1002126 tp!1002122 (array_inv!4812 (_keys!4510 (v!35266 (underlying!8649 (v!35267 (underlying!8650 (cache!4262 thiss!28499))))))) (array_inv!4813 (_values!4491 (v!35266 (underlying!8649 (v!35267 (underlying!8650 (cache!4262 thiss!28499))))))) e!1975968))))

(assert (= (and start!297134 res!1289384) b!3172577))

(assert (= (and b!3172577 res!1289382) b!3172570))

(assert (= (and b!3172570 res!1289383) b!3172580))

(assert (= (and start!297134 ((_ is ElementMatch!9789) r!4721)) b!3172571))

(assert (= (and start!297134 ((_ is Concat!15110) r!4721)) b!3172576))

(assert (= (and start!297134 ((_ is Star!9789) r!4721)) b!3172572))

(assert (= (and start!297134 ((_ is Union!9789) r!4721)) b!3172574))

(assert (= (and b!3172573 condMapEmpty!19079) mapIsEmpty!19079))

(assert (= (and b!3172573 (not condMapEmpty!19079)) mapNonEmpty!19079))

(assert (= b!3172581 b!3172573))

(assert (= b!3172575 b!3172581))

(assert (= b!3172568 b!3172575))

(assert (= (and b!3172569 ((_ is LongMap!4210) (v!35267 (underlying!8650 (cache!4262 thiss!28499))))) b!3172568))

(assert (= b!3172578 b!3172569))

(assert (= (and b!3172579 ((_ is HashMap!4116) (cache!4262 thiss!28499))) b!3172578))

(assert (= start!297134 b!3172579))

(declare-fun m!3430783 () Bool)

(assert (=> b!3172577 m!3430783))

(declare-fun m!3430785 () Bool)

(assert (=> b!3172580 m!3430785))

(declare-fun m!3430787 () Bool)

(assert (=> b!3172580 m!3430787))

(declare-fun m!3430789 () Bool)

(assert (=> b!3172570 m!3430789))

(declare-fun m!3430791 () Bool)

(assert (=> b!3172581 m!3430791))

(declare-fun m!3430793 () Bool)

(assert (=> b!3172581 m!3430793))

(declare-fun m!3430795 () Bool)

(assert (=> start!297134 m!3430795))

(declare-fun m!3430797 () Bool)

(assert (=> start!297134 m!3430797))

(declare-fun m!3430799 () Bool)

(assert (=> mapNonEmpty!19079 m!3430799))

(check-sat (not b!3172572) (not b!3172570) (not b!3172576) (not b!3172574) (not b!3172577) (not b_next!84025) (not b!3172581) (not b!3172580) (not mapNonEmpty!19079) b_and!209603 tp_is_empty!17141 b_and!209605 (not b!3172573) (not b_next!84027) (not start!297134))
(check-sat b_and!209605 b_and!209603 (not b_next!84025) (not b_next!84027))
