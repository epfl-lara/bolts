; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12168 () Bool)

(assert start!12168)

(declare-fun b!120302 () Bool)

(declare-fun b_free!3849 () Bool)

(declare-fun b_next!3849 () Bool)

(assert (=> b!120302 (= b_free!3849 (not b_next!3849))))

(declare-fun tp!66086 () Bool)

(declare-fun b_and!5979 () Bool)

(assert (=> b!120302 (= tp!66086 b_and!5979)))

(declare-fun b!120289 () Bool)

(declare-fun b_free!3851 () Bool)

(declare-fun b_next!3851 () Bool)

(assert (=> b!120289 (= b_free!3851 (not b_next!3851))))

(declare-fun tp!66077 () Bool)

(declare-fun b_and!5981 () Bool)

(assert (=> b!120289 (= tp!66077 b_and!5981)))

(declare-fun b!120285 () Bool)

(declare-fun e!68815 () Bool)

(declare-fun e!68813 () Bool)

(assert (=> b!120285 (= e!68815 e!68813)))

(declare-fun res!56511 () Bool)

(assert (=> b!120285 (=> res!56511 e!68813)))

(declare-fun lt!35805 () Int)

(declare-fun lt!35804 () Int)

(assert (=> b!120285 (= res!56511 (not (= lt!35805 lt!35804)))))

(assert (=> b!120285 (<= lt!35805 lt!35804)))

(declare-datatypes ((Unit!1498 0))(
  ( (Unit!1499) )
))
(declare-fun lt!35803 () Unit!1498)

(declare-datatypes ((C!2000 0))(
  ( (C!2001 (val!726 Int)) )
))
(declare-datatypes ((List!1990 0))(
  ( (Nil!1984) (Cons!1984 (h!7381 C!2000) (t!22467 List!1990)) )
))
(declare-fun testedP!367 () List!1990)

(declare-fun totalInput!1363 () List!1990)

(declare-fun lemmaIsPrefixThenSmallerEqSize!32 (List!1990 List!1990) Unit!1498)

(assert (=> b!120285 (= lt!35803 (lemmaIsPrefixThenSmallerEqSize!32 testedP!367 totalInput!1363))))

(declare-fun b!120286 () Bool)

(declare-fun e!68812 () Bool)

(declare-fun e!68799 () Bool)

(assert (=> b!120286 (= e!68812 e!68799)))

(declare-fun b!120287 () Bool)

(declare-fun e!68808 () Bool)

(declare-fun tp!66085 () Bool)

(declare-fun tp!66091 () Bool)

(assert (=> b!120287 (= e!68808 (and tp!66085 tp!66091))))

(declare-fun b!120288 () Bool)

(declare-fun e!68804 () Bool)

(declare-fun tp_is_empty!1133 () Bool)

(declare-fun tp!66078 () Bool)

(assert (=> b!120288 (= e!68804 (and tp_is_empty!1133 tp!66078))))

(declare-fun mapIsEmpty!1565 () Bool)

(declare-fun mapRes!1565 () Bool)

(assert (=> mapIsEmpty!1565 mapRes!1565))

(declare-fun e!68800 () Bool)

(declare-fun e!68797 () Bool)

(assert (=> b!120289 (= e!68800 (and e!68797 tp!66077))))

(declare-fun b!120290 () Bool)

(declare-fun res!56515 () Bool)

(assert (=> b!120290 (=> res!56515 e!68815)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!120290 (= res!56515 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!120291 () Bool)

(assert (=> b!120291 (= e!68813 false)))

(assert (=> b!120291 (= totalInput!1363 testedP!367)))

(declare-fun lt!35800 () Unit!1498)

(declare-fun lemmaIsPrefixSameLengthThenSameList!33 (List!1990 List!1990 List!1990) Unit!1498)

(assert (=> b!120291 (= lt!35800 (lemmaIsPrefixSameLengthThenSameList!33 totalInput!1363 testedP!367 totalInput!1363))))

(declare-fun isPrefix!119 (List!1990 List!1990) Bool)

(assert (=> b!120291 (isPrefix!119 totalInput!1363 totalInput!1363)))

(declare-fun lt!35808 () Unit!1498)

(declare-fun lemmaIsPrefixRefl!90 (List!1990 List!1990) Unit!1498)

(assert (=> b!120291 (= lt!35808 (lemmaIsPrefixRefl!90 totalInput!1363 totalInput!1363))))

(declare-fun res!56513 () Bool)

(declare-fun e!68810 () Bool)

(assert (=> start!12168 (=> (not res!56513) (not e!68810))))

(declare-datatypes ((Regex!539 0))(
  ( (ElementMatch!539 (c!26915 C!2000)) (Concat!923 (regOne!1590 Regex!539) (regTwo!1590 Regex!539)) (EmptyExpr!539) (Star!539 (reg!868 Regex!539)) (EmptyLang!539) (Union!539 (regOne!1591 Regex!539) (regTwo!1591 Regex!539)) )
))
(declare-fun r!15532 () Regex!539)

(declare-fun validRegex!138 (Regex!539) Bool)

(assert (=> start!12168 (= res!56513 (validRegex!138 r!15532))))

(assert (=> start!12168 e!68810))

(assert (=> start!12168 true))

(assert (=> start!12168 e!68808))

(assert (=> start!12168 e!68804))

(declare-fun e!68807 () Bool)

(assert (=> start!12168 e!68807))

(declare-fun e!68798 () Bool)

(assert (=> start!12168 e!68798))

(declare-datatypes ((Hashable!401 0))(
  ( (HashableExt!400 (__x!2140 Int)) )
))
(declare-datatypes ((tuple2!2290 0))(
  ( (tuple2!2291 (_1!1355 Regex!539) (_2!1355 C!2000)) )
))
(declare-datatypes ((tuple2!2292 0))(
  ( (tuple2!2293 (_1!1356 tuple2!2290) (_2!1356 Regex!539)) )
))
(declare-datatypes ((List!1991 0))(
  ( (Nil!1985) (Cons!1985 (h!7382 tuple2!2292) (t!22468 List!1991)) )
))
(declare-datatypes ((array!1491 0))(
  ( (array!1492 (arr!694 (Array (_ BitVec 32) (_ BitVec 64))) (size!1832 (_ BitVec 32))) )
))
(declare-datatypes ((array!1493 0))(
  ( (array!1494 (arr!695 (Array (_ BitVec 32) List!1991)) (size!1833 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!810 0))(
  ( (LongMapFixedSize!811 (defaultEntry!744 Int) (mask!1342 (_ BitVec 32)) (extraKeys!651 (_ BitVec 32)) (zeroValue!661 List!1991) (minValue!661 List!1991) (_size!943 (_ BitVec 32)) (_keys!696 array!1491) (_values!683 array!1493) (_vacant!466 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1609 0))(
  ( (Cell!1610 (v!13341 LongMapFixedSize!810)) )
))
(declare-datatypes ((MutLongMap!405 0))(
  ( (LongMap!405 (underlying!1009 Cell!1609)) (MutLongMapExt!404 (__x!2141 Int)) )
))
(declare-datatypes ((Cell!1611 0))(
  ( (Cell!1612 (v!13342 MutLongMap!405)) )
))
(declare-datatypes ((MutableMap!401 0))(
  ( (MutableMapExt!400 (__x!2142 Int)) (HashMap!401 (underlying!1010 Cell!1611) (hashF!2277 Hashable!401) (_size!944 (_ BitVec 32)) (defaultValue!550 Int)) )
))
(declare-datatypes ((Cache!238 0))(
  ( (Cache!239 (cache!853 MutableMap!401)) )
))
(declare-fun cache!470 () Cache!238)

(declare-fun e!68801 () Bool)

(declare-fun inv!2510 (Cache!238) Bool)

(assert (=> start!12168 (and (inv!2510 cache!470) e!68801)))

(declare-fun b!120292 () Bool)

(declare-fun tp!66081 () Bool)

(assert (=> b!120292 (= e!68807 (and tp_is_empty!1133 tp!66081))))

(declare-fun b!120293 () Bool)

(declare-fun lt!35806 () MutLongMap!405)

(get-info :version)

(assert (=> b!120293 (= e!68797 (and e!68812 ((_ is LongMap!405) lt!35806)))))

(assert (=> b!120293 (= lt!35806 (v!13342 (underlying!1010 (cache!853 cache!470))))))

(declare-fun b!120294 () Bool)

(assert (=> b!120294 (= e!68808 tp_is_empty!1133)))

(declare-fun b!120295 () Bool)

(declare-fun e!68809 () Bool)

(declare-fun e!68803 () Bool)

(assert (=> b!120295 (= e!68809 (not e!68803))))

(declare-fun res!56514 () Bool)

(assert (=> b!120295 (=> res!56514 e!68803)))

(assert (=> b!120295 (= res!56514 (not (isPrefix!119 testedP!367 totalInput!1363)))))

(declare-fun lt!35807 () List!1990)

(assert (=> b!120295 (isPrefix!119 testedP!367 lt!35807)))

(declare-fun lt!35799 () Unit!1498)

(declare-fun testedSuffix!285 () List!1990)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!63 (List!1990 List!1990) Unit!1498)

(assert (=> b!120295 (= lt!35799 (lemmaConcatTwoListThenFirstIsPrefix!63 testedP!367 testedSuffix!285))))

(declare-fun b!120296 () Bool)

(declare-fun tp!66082 () Bool)

(assert (=> b!120296 (= e!68808 tp!66082)))

(declare-fun b!120297 () Bool)

(assert (=> b!120297 (= e!68801 e!68800)))

(declare-fun b!120298 () Bool)

(declare-fun res!56517 () Bool)

(assert (=> b!120298 (=> (not res!56517) (not e!68810))))

(declare-fun valid!366 (Cache!238) Bool)

(assert (=> b!120298 (= res!56517 (valid!366 cache!470))))

(declare-fun b!120299 () Bool)

(declare-fun tp!66084 () Bool)

(declare-fun tp!66083 () Bool)

(assert (=> b!120299 (= e!68808 (and tp!66084 tp!66083))))

(declare-fun b!120300 () Bool)

(declare-fun e!68802 () Bool)

(declare-fun tp!66090 () Bool)

(assert (=> b!120300 (= e!68802 (and tp!66090 mapRes!1565))))

(declare-fun condMapEmpty!1565 () Bool)

(declare-fun mapDefault!1565 () List!1991)

(assert (=> b!120300 (= condMapEmpty!1565 (= (arr!695 (_values!683 (v!13341 (underlying!1009 (v!13342 (underlying!1010 (cache!853 cache!470))))))) ((as const (Array (_ BitVec 32) List!1991)) mapDefault!1565)))))

(declare-fun b!120301 () Bool)

(assert (=> b!120301 (= e!68803 e!68815)))

(declare-fun res!56512 () Bool)

(assert (=> b!120301 (=> res!56512 e!68815)))

(declare-fun lostCause!62 (Regex!539) Bool)

(assert (=> b!120301 (= res!56512 (lostCause!62 r!15532))))

(declare-fun lt!35801 () List!1990)

(assert (=> b!120301 (and (= testedSuffix!285 lt!35801) (= lt!35801 testedSuffix!285))))

(declare-fun lt!35802 () Unit!1498)

(declare-fun lemmaSamePrefixThenSameSuffix!53 (List!1990 List!1990 List!1990 List!1990 List!1990) Unit!1498)

(assert (=> b!120301 (= lt!35802 (lemmaSamePrefixThenSameSuffix!53 testedP!367 testedSuffix!285 testedP!367 lt!35801 totalInput!1363))))

(declare-fun getSuffix!57 (List!1990 List!1990) List!1990)

(assert (=> b!120301 (= lt!35801 (getSuffix!57 totalInput!1363 testedP!367))))

(declare-fun e!68814 () Bool)

(declare-fun tp!66080 () Bool)

(declare-fun tp!66088 () Bool)

(declare-fun array_inv!499 (array!1491) Bool)

(declare-fun array_inv!500 (array!1493) Bool)

(assert (=> b!120302 (= e!68814 (and tp!66086 tp!66080 tp!66088 (array_inv!499 (_keys!696 (v!13341 (underlying!1009 (v!13342 (underlying!1010 (cache!853 cache!470))))))) (array_inv!500 (_values!683 (v!13341 (underlying!1009 (v!13342 (underlying!1010 (cache!853 cache!470))))))) e!68802))))

(declare-fun b!120303 () Bool)

(declare-fun tp!66087 () Bool)

(assert (=> b!120303 (= e!68798 (and tp_is_empty!1133 tp!66087))))

(declare-fun b!120304 () Bool)

(assert (=> b!120304 (= e!68799 e!68814)))

(declare-fun b!120305 () Bool)

(declare-fun e!68811 () Bool)

(assert (=> b!120305 (= e!68811 e!68809)))

(declare-fun res!56518 () Bool)

(assert (=> b!120305 (=> (not res!56518) (not e!68809))))

(assert (=> b!120305 (= res!56518 (= totalInputSize!643 lt!35804))))

(declare-fun size!1834 (List!1990) Int)

(assert (=> b!120305 (= lt!35804 (size!1834 totalInput!1363))))

(declare-fun b!120306 () Bool)

(declare-fun e!68806 () Bool)

(assert (=> b!120306 (= e!68806 e!68811)))

(declare-fun res!56516 () Bool)

(assert (=> b!120306 (=> (not res!56516) (not e!68811))))

(assert (=> b!120306 (= res!56516 (= testedPSize!285 lt!35805))))

(assert (=> b!120306 (= lt!35805 (size!1834 testedP!367))))

(declare-fun mapNonEmpty!1565 () Bool)

(declare-fun tp!66079 () Bool)

(declare-fun tp!66089 () Bool)

(assert (=> mapNonEmpty!1565 (= mapRes!1565 (and tp!66079 tp!66089))))

(declare-fun mapValue!1565 () List!1991)

(declare-fun mapRest!1565 () (Array (_ BitVec 32) List!1991))

(declare-fun mapKey!1565 () (_ BitVec 32))

(assert (=> mapNonEmpty!1565 (= (arr!695 (_values!683 (v!13341 (underlying!1009 (v!13342 (underlying!1010 (cache!853 cache!470))))))) (store mapRest!1565 mapKey!1565 mapValue!1565))))

(declare-fun b!120307 () Bool)

(assert (=> b!120307 (= e!68810 e!68806)))

(declare-fun res!56519 () Bool)

(assert (=> b!120307 (=> (not res!56519) (not e!68806))))

(assert (=> b!120307 (= res!56519 (= lt!35807 totalInput!1363))))

(declare-fun ++!370 (List!1990 List!1990) List!1990)

(assert (=> b!120307 (= lt!35807 (++!370 testedP!367 testedSuffix!285))))

(assert (= (and start!12168 res!56513) b!120298))

(assert (= (and b!120298 res!56517) b!120307))

(assert (= (and b!120307 res!56519) b!120306))

(assert (= (and b!120306 res!56516) b!120305))

(assert (= (and b!120305 res!56518) b!120295))

(assert (= (and b!120295 (not res!56514)) b!120301))

(assert (= (and b!120301 (not res!56512)) b!120290))

(assert (= (and b!120290 (not res!56515)) b!120285))

(assert (= (and b!120285 (not res!56511)) b!120291))

(assert (= (and start!12168 ((_ is ElementMatch!539) r!15532)) b!120294))

(assert (= (and start!12168 ((_ is Concat!923) r!15532)) b!120299))

(assert (= (and start!12168 ((_ is Star!539) r!15532)) b!120296))

(assert (= (and start!12168 ((_ is Union!539) r!15532)) b!120287))

(assert (= (and start!12168 ((_ is Cons!1984) totalInput!1363)) b!120288))

(assert (= (and start!12168 ((_ is Cons!1984) testedSuffix!285)) b!120292))

(assert (= (and start!12168 ((_ is Cons!1984) testedP!367)) b!120303))

(assert (= (and b!120300 condMapEmpty!1565) mapIsEmpty!1565))

(assert (= (and b!120300 (not condMapEmpty!1565)) mapNonEmpty!1565))

(assert (= b!120302 b!120300))

(assert (= b!120304 b!120302))

(assert (= b!120286 b!120304))

(assert (= (and b!120293 ((_ is LongMap!405) (v!13342 (underlying!1010 (cache!853 cache!470))))) b!120286))

(assert (= b!120289 b!120293))

(assert (= (and b!120297 ((_ is HashMap!401) (cache!853 cache!470))) b!120289))

(assert (= start!12168 b!120297))

(declare-fun m!106835 () Bool)

(assert (=> b!120302 m!106835))

(declare-fun m!106837 () Bool)

(assert (=> b!120302 m!106837))

(declare-fun m!106839 () Bool)

(assert (=> b!120285 m!106839))

(declare-fun m!106841 () Bool)

(assert (=> b!120291 m!106841))

(declare-fun m!106843 () Bool)

(assert (=> b!120291 m!106843))

(declare-fun m!106845 () Bool)

(assert (=> b!120291 m!106845))

(declare-fun m!106847 () Bool)

(assert (=> mapNonEmpty!1565 m!106847))

(declare-fun m!106849 () Bool)

(assert (=> b!120305 m!106849))

(declare-fun m!106851 () Bool)

(assert (=> start!12168 m!106851))

(declare-fun m!106853 () Bool)

(assert (=> start!12168 m!106853))

(declare-fun m!106855 () Bool)

(assert (=> b!120298 m!106855))

(declare-fun m!106857 () Bool)

(assert (=> b!120307 m!106857))

(declare-fun m!106859 () Bool)

(assert (=> b!120306 m!106859))

(declare-fun m!106861 () Bool)

(assert (=> b!120295 m!106861))

(declare-fun m!106863 () Bool)

(assert (=> b!120295 m!106863))

(declare-fun m!106865 () Bool)

(assert (=> b!120295 m!106865))

(declare-fun m!106867 () Bool)

(assert (=> b!120301 m!106867))

(declare-fun m!106869 () Bool)

(assert (=> b!120301 m!106869))

(declare-fun m!106871 () Bool)

(assert (=> b!120301 m!106871))

(check-sat (not b_next!3851) (not b!120300) (not mapNonEmpty!1565) (not b!120305) (not b!120303) (not b!120299) tp_is_empty!1133 (not b!120296) (not b!120307) (not start!12168) (not b!120291) (not b!120288) (not b!120285) (not b!120295) (not b!120306) (not b!120292) (not b!120287) (not b!120302) b_and!5981 (not b!120298) (not b_next!3849) (not b!120301) b_and!5979)
(check-sat b_and!5981 b_and!5979 (not b_next!3851) (not b_next!3849))
