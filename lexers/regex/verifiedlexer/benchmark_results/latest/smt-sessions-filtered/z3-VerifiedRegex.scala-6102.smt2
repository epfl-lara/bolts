; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296860 () Bool)

(assert start!296860)

(declare-fun b!3168937 () Bool)

(declare-fun b_free!83185 () Bool)

(declare-fun b_next!83889 () Bool)

(assert (=> b!3168937 (= b_free!83185 (not b_next!83889))))

(declare-fun tp!999480 () Bool)

(declare-fun b_and!209463 () Bool)

(assert (=> b!3168937 (= tp!999480 b_and!209463)))

(declare-fun b!3168936 () Bool)

(declare-fun b_free!83187 () Bool)

(declare-fun b_next!83891 () Bool)

(assert (=> b!3168936 (= b_free!83187 (not b_next!83891))))

(declare-fun tp!999491 () Bool)

(declare-fun b_and!209465 () Bool)

(assert (=> b!3168936 (= tp!999491 b_and!209465)))

(declare-fun b!3168924 () Bool)

(declare-fun e!1973745 () Bool)

(declare-fun tp_is_empty!17073 () Bool)

(assert (=> b!3168924 (= e!1973745 tp_is_empty!17073)))

(declare-fun b!3168925 () Bool)

(declare-fun e!1973751 () Bool)

(assert (=> b!3168925 (= e!1973751 tp_is_empty!17073)))

(declare-fun b!3168926 () Bool)

(declare-fun tp!999477 () Bool)

(declare-fun tp!999488 () Bool)

(assert (=> b!3168926 (= e!1973751 (and tp!999477 tp!999488))))

(declare-fun b!3168927 () Bool)

(declare-fun e!1973747 () Bool)

(assert (=> b!3168927 (= e!1973747 false)))

(declare-fun b!3168928 () Bool)

(declare-fun e!1973752 () Bool)

(declare-fun tp!999493 () Bool)

(declare-fun mapRes!18938 () Bool)

(assert (=> b!3168928 (= e!1973752 (and tp!999493 mapRes!18938))))

(declare-fun condMapEmpty!18938 () Bool)

(declare-datatypes ((C!19696 0))(
  ( (C!19697 (val!11884 Int)) )
))
(declare-datatypes ((Regex!9755 0))(
  ( (ElementMatch!9755 (c!532988 C!19696)) (Concat!15076 (regOne!20022 Regex!9755) (regTwo!20022 Regex!9755)) (EmptyExpr!9755) (Star!9755 (reg!10084 Regex!9755)) (EmptyLang!9755) (Union!9755 (regOne!20023 Regex!9755) (regTwo!20023 Regex!9755)) )
))
(declare-datatypes ((tuple2!34632 0))(
  ( (tuple2!34633 (_1!20448 Regex!9755) (_2!20448 C!19696)) )
))
(declare-datatypes ((tuple2!34634 0))(
  ( (tuple2!34635 (_1!20449 tuple2!34632) (_2!20449 Regex!9755)) )
))
(declare-datatypes ((List!35592 0))(
  ( (Nil!35468) (Cons!35468 (h!40888 tuple2!34634) (t!234675 List!35592)) )
))
(declare-datatypes ((array!14922 0))(
  ( (array!14923 (arr!6642 (Array (_ BitVec 32) List!35592)) (size!26728 (_ BitVec 32))) )
))
(declare-datatypes ((array!14924 0))(
  ( (array!14925 (arr!6643 (Array (_ BitVec 32) (_ BitVec 64))) (size!26729 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8352 0))(
  ( (LongMapFixedSize!8353 (defaultEntry!4561 Int) (mask!10847 (_ BitVec 32)) (extraKeys!4425 (_ BitVec 32)) (zeroValue!4435 List!35592) (minValue!4435 List!35592) (_size!8395 (_ BitVec 32)) (_keys!4476 array!14924) (_values!4457 array!14922) (_vacant!4237 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16513 0))(
  ( (Cell!16514 (v!35183 LongMapFixedSize!8352)) )
))
(declare-datatypes ((MutLongMap!4176 0))(
  ( (LongMap!4176 (underlying!8581 Cell!16513)) (MutLongMapExt!4175 (__x!22634 Int)) )
))
(declare-datatypes ((Cell!16515 0))(
  ( (Cell!16516 (v!35184 MutLongMap!4176)) )
))
(declare-datatypes ((Hashable!4092 0))(
  ( (HashableExt!4091 (__x!22635 Int)) )
))
(declare-datatypes ((MutableMap!4082 0))(
  ( (MutableMapExt!4081 (__x!22636 Int)) (HashMap!4082 (underlying!8582 Cell!16515) (hashF!6124 Hashable!4092) (_size!8396 (_ BitVec 32)) (defaultValue!4253 Int)) )
))
(declare-datatypes ((Cache!434 0))(
  ( (Cache!435 (cache!4228 MutableMap!4082)) )
))
(declare-fun thiss!28524 () Cache!434)

(declare-fun mapDefault!18938 () List!35592)

(assert (=> b!3168928 (= condMapEmpty!18938 (= (arr!6642 (_values!4457 (v!35183 (underlying!8581 (v!35184 (underlying!8582 (cache!4228 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35592)) mapDefault!18938)))))

(declare-fun mapNonEmpty!18938 () Bool)

(declare-fun tp!999492 () Bool)

(declare-fun tp!999478 () Bool)

(assert (=> mapNonEmpty!18938 (= mapRes!18938 (and tp!999492 tp!999478))))

(declare-fun mapValue!18938 () List!35592)

(declare-fun mapKey!18938 () (_ BitVec 32))

(declare-fun mapRest!18938 () (Array (_ BitVec 32) List!35592))

(assert (=> mapNonEmpty!18938 (= (arr!6642 (_values!4457 (v!35183 (underlying!8581 (v!35184 (underlying!8582 (cache!4228 thiss!28524))))))) (store mapRest!18938 mapKey!18938 mapValue!18938))))

(declare-fun b!3168930 () Bool)

(declare-fun tp!999475 () Bool)

(assert (=> b!3168930 (= e!1973745 tp!999475)))

(declare-fun mapIsEmpty!18938 () Bool)

(assert (=> mapIsEmpty!18938 mapRes!18938))

(declare-fun b!3168931 () Bool)

(declare-fun e!1973754 () Bool)

(declare-fun tp!999474 () Bool)

(assert (=> b!3168931 (= e!1973754 tp!999474)))

(declare-fun b!3168932 () Bool)

(declare-fun tp!999471 () Bool)

(declare-fun tp!999495 () Bool)

(assert (=> b!3168932 (= e!1973745 (and tp!999471 tp!999495))))

(declare-fun b!3168933 () Bool)

(declare-fun e!1973753 () Bool)

(declare-fun tp!999497 () Bool)

(declare-fun tp!999494 () Bool)

(assert (=> b!3168933 (= e!1973753 (and tp!999497 tp!999494))))

(declare-fun b!3168934 () Bool)

(declare-fun tp!999482 () Bool)

(assert (=> b!3168934 (= e!1973751 tp!999482)))

(declare-fun b!3168935 () Bool)

(declare-fun tp!999483 () Bool)

(assert (=> b!3168935 (= e!1973753 tp!999483)))

(declare-fun tp!999487 () Bool)

(declare-fun e!1973755 () Bool)

(declare-fun tp!999490 () Bool)

(declare-fun array_inv!4760 (array!14924) Bool)

(declare-fun array_inv!4761 (array!14922) Bool)

(assert (=> b!3168936 (= e!1973755 (and tp!999491 tp!999487 tp!999490 (array_inv!4760 (_keys!4476 (v!35183 (underlying!8581 (v!35184 (underlying!8582 (cache!4228 thiss!28524))))))) (array_inv!4761 (_values!4457 (v!35183 (underlying!8581 (v!35184 (underlying!8582 (cache!4228 thiss!28524))))))) e!1973752))))

(declare-fun b!3168929 () Bool)

(assert (=> b!3168929 (= e!1973754 tp_is_empty!17073)))

(declare-fun res!1288469 () Bool)

(assert (=> start!296860 (=> (not res!1288469) (not e!1973747))))

(declare-fun validCacheMap!66 (MutableMap!4082) Bool)

(assert (=> start!296860 (= res!1288469 (validCacheMap!66 (cache!4228 thiss!28524)))))

(assert (=> start!296860 e!1973747))

(assert (=> start!296860 (and e!1973745 tp_is_empty!17073 e!1973753)))

(assert (=> start!296860 e!1973754))

(assert (=> start!296860 tp_is_empty!17073))

(declare-fun e!1973749 () Bool)

(declare-fun inv!48153 (Cache!434) Bool)

(assert (=> start!296860 (and (inv!48153 thiss!28524) e!1973749)))

(assert (=> start!296860 e!1973751))

(declare-fun e!1973744 () Bool)

(declare-fun e!1973756 () Bool)

(assert (=> b!3168937 (= e!1973744 (and e!1973756 tp!999480))))

(declare-fun b!3168938 () Bool)

(declare-fun res!1288470 () Bool)

(assert (=> b!3168938 (=> (not res!1288470) (not e!1973747))))

(declare-fun r!4733 () Regex!9755)

(declare-fun validRegex!4471 (Regex!9755) Bool)

(assert (=> b!3168938 (= res!1288470 (validRegex!4471 r!4733))))

(declare-fun b!3168939 () Bool)

(declare-fun e!1973750 () Bool)

(assert (=> b!3168939 (= e!1973750 e!1973755)))

(declare-fun b!3168940 () Bool)

(declare-fun e!1973746 () Bool)

(assert (=> b!3168940 (= e!1973746 e!1973750)))

(declare-fun b!3168941 () Bool)

(assert (=> b!3168941 (= e!1973753 tp_is_empty!17073)))

(declare-fun b!3168942 () Bool)

(declare-fun tp!999484 () Bool)

(declare-fun tp!999481 () Bool)

(assert (=> b!3168942 (= e!1973753 (and tp!999484 tp!999481))))

(declare-fun b!3168943 () Bool)

(assert (=> b!3168943 (= e!1973749 e!1973744)))

(declare-fun b!3168944 () Bool)

(declare-fun tp!999496 () Bool)

(declare-fun tp!999476 () Bool)

(assert (=> b!3168944 (= e!1973754 (and tp!999496 tp!999476))))

(declare-fun b!3168945 () Bool)

(declare-fun tp!999479 () Bool)

(declare-fun tp!999473 () Bool)

(assert (=> b!3168945 (= e!1973754 (and tp!999479 tp!999473))))

(declare-fun b!3168946 () Bool)

(declare-fun res!1288468 () Bool)

(assert (=> b!3168946 (=> (not res!1288468) (not e!1973747))))

(declare-fun res!14113 () Regex!9755)

(declare-fun c!6996 () C!19696)

(declare-fun derivativeStep!2898 (Regex!9755 C!19696) Regex!9755)

(assert (=> b!3168946 (= res!1288468 (= res!14113 (derivativeStep!2898 r!4733 c!6996)))))

(declare-fun b!3168947 () Bool)

(declare-fun tp!999485 () Bool)

(declare-fun tp!999489 () Bool)

(assert (=> b!3168947 (= e!1973751 (and tp!999485 tp!999489))))

(declare-fun b!3168948 () Bool)

(declare-fun tp!999486 () Bool)

(declare-fun tp!999472 () Bool)

(assert (=> b!3168948 (= e!1973745 (and tp!999486 tp!999472))))

(declare-fun b!3168949 () Bool)

(declare-fun lt!1065422 () MutLongMap!4176)

(get-info :version)

(assert (=> b!3168949 (= e!1973756 (and e!1973746 ((_ is LongMap!4176) lt!1065422)))))

(assert (=> b!3168949 (= lt!1065422 (v!35184 (underlying!8582 (cache!4228 thiss!28524))))))

(assert (= (and start!296860 res!1288469) b!3168938))

(assert (= (and b!3168938 res!1288470) b!3168946))

(assert (= (and b!3168946 res!1288468) b!3168927))

(declare-fun _$4!17 () tuple2!34634)

(assert (= (and start!296860 ((_ is ElementMatch!9755) (_1!20448 (_1!20449 _$4!17)))) b!3168924))

(assert (= (and start!296860 ((_ is Concat!15076) (_1!20448 (_1!20449 _$4!17)))) b!3168932))

(assert (= (and start!296860 ((_ is Star!9755) (_1!20448 (_1!20449 _$4!17)))) b!3168930))

(assert (= (and start!296860 ((_ is Union!9755) (_1!20448 (_1!20449 _$4!17)))) b!3168948))

(assert (= (and start!296860 ((_ is ElementMatch!9755) (_2!20449 _$4!17))) b!3168941))

(assert (= (and start!296860 ((_ is Concat!15076) (_2!20449 _$4!17))) b!3168942))

(assert (= (and start!296860 ((_ is Star!9755) (_2!20449 _$4!17))) b!3168935))

(assert (= (and start!296860 ((_ is Union!9755) (_2!20449 _$4!17))) b!3168933))

(assert (= (and start!296860 ((_ is ElementMatch!9755) res!14113)) b!3168929))

(assert (= (and start!296860 ((_ is Concat!15076) res!14113)) b!3168945))

(assert (= (and start!296860 ((_ is Star!9755) res!14113)) b!3168931))

(assert (= (and start!296860 ((_ is Union!9755) res!14113)) b!3168944))

(assert (= (and b!3168928 condMapEmpty!18938) mapIsEmpty!18938))

(assert (= (and b!3168928 (not condMapEmpty!18938)) mapNonEmpty!18938))

(assert (= b!3168936 b!3168928))

(assert (= b!3168939 b!3168936))

(assert (= b!3168940 b!3168939))

(assert (= (and b!3168949 ((_ is LongMap!4176) (v!35184 (underlying!8582 (cache!4228 thiss!28524))))) b!3168940))

(assert (= b!3168937 b!3168949))

(assert (= (and b!3168943 ((_ is HashMap!4082) (cache!4228 thiss!28524))) b!3168937))

(assert (= start!296860 b!3168943))

(assert (= (and start!296860 ((_ is ElementMatch!9755) r!4733)) b!3168925))

(assert (= (and start!296860 ((_ is Concat!15076) r!4733)) b!3168926))

(assert (= (and start!296860 ((_ is Star!9755) r!4733)) b!3168934))

(assert (= (and start!296860 ((_ is Union!9755) r!4733)) b!3168947))

(declare-fun m!3429181 () Bool)

(assert (=> b!3168938 m!3429181))

(declare-fun m!3429183 () Bool)

(assert (=> b!3168946 m!3429183))

(declare-fun m!3429185 () Bool)

(assert (=> start!296860 m!3429185))

(declare-fun m!3429187 () Bool)

(assert (=> start!296860 m!3429187))

(declare-fun m!3429189 () Bool)

(assert (=> mapNonEmpty!18938 m!3429189))

(declare-fun m!3429191 () Bool)

(assert (=> b!3168936 m!3429191))

(declare-fun m!3429193 () Bool)

(assert (=> b!3168936 m!3429193))

(check-sat (not b_next!83891) (not b!3168938) (not b!3168936) (not b!3168934) (not b!3168935) (not b_next!83889) tp_is_empty!17073 (not b!3168945) (not b!3168933) b_and!209465 (not b!3168946) (not b!3168944) (not start!296860) (not b!3168947) (not b!3168928) (not b!3168926) (not b!3168932) (not b!3168948) (not mapNonEmpty!18938) (not b!3168931) (not b!3168942) b_and!209463 (not b!3168930))
(check-sat b_and!209463 b_and!209465 (not b_next!83891) (not b_next!83889))
