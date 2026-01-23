; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228096 () Bool)

(assert start!228096)

(declare-fun b!2312368 () Bool)

(declare-fun b_free!70001 () Bool)

(declare-fun b_next!70705 () Bool)

(assert (=> b!2312368 (= b_free!70001 (not b_next!70705))))

(declare-fun tp!733540 () Bool)

(declare-fun b_and!184901 () Bool)

(assert (=> b!2312368 (= tp!733540 b_and!184901)))

(declare-fun b!2312371 () Bool)

(declare-fun b_free!70003 () Bool)

(declare-fun b_next!70707 () Bool)

(assert (=> b!2312371 (= b_free!70003 (not b_next!70707))))

(declare-fun tp!733537 () Bool)

(declare-fun b_and!184903 () Bool)

(assert (=> b!2312371 (= tp!733537 b_and!184903)))

(declare-fun e!1481970 () Bool)

(declare-fun e!1481971 () Bool)

(declare-fun tp!733541 () Bool)

(declare-fun tp!733542 () Bool)

(declare-datatypes ((array!11128 0))(
  ( (array!11129 (arr!4937 (Array (_ BitVec 32) (_ BitVec 64))) (size!21733 (_ BitVec 32))) )
))
(declare-datatypes ((K!4766 0))(
  ( (K!4767 (val!7891 Int)) )
))
(declare-datatypes ((V!4968 0))(
  ( (V!4969 (val!7892 Int)) )
))
(declare-datatypes ((tuple2!27450 0))(
  ( (tuple2!27451 (_1!16235 K!4766) (_2!16235 V!4968)) )
))
(declare-datatypes ((List!27623 0))(
  ( (Nil!27525) (Cons!27525 (h!32926 tuple2!27450) (t!207215 List!27623)) )
))
(declare-datatypes ((array!11130 0))(
  ( (array!11131 (arr!4938 (Array (_ BitVec 32) List!27623)) (size!21734 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6350 0))(
  ( (LongMapFixedSize!6351 (defaultEntry!3540 Int) (mask!7925 (_ BitVec 32)) (extraKeys!3423 (_ BitVec 32)) (zeroValue!3433 List!27623) (minValue!3433 List!27623) (_size!6397 (_ BitVec 32)) (_keys!3472 array!11128) (_values!3455 array!11130) (_vacant!3236 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12517 0))(
  ( (Cell!12518 (v!30589 LongMapFixedSize!6350)) )
))
(declare-datatypes ((MutLongMap!3175 0))(
  ( (LongMap!3175 (underlying!6555 Cell!12517)) (MutLongMapExt!3174 (__x!18227 Int)) )
))
(declare-datatypes ((Hashable!3085 0))(
  ( (HashableExt!3084 (__x!18228 Int)) )
))
(declare-datatypes ((Cell!12519 0))(
  ( (Cell!12520 (v!30590 MutLongMap!3175)) )
))
(declare-datatypes ((MutableMap!3085 0))(
  ( (MutableMapExt!3084 (__x!18229 Int)) (HashMap!3085 (underlying!6556 Cell!12519) (hashF!5008 Hashable!3085) (_size!6398 (_ BitVec 32)) (defaultValue!3247 Int)) )
))
(declare-fun thiss!41910 () MutableMap!3085)

(declare-fun array_inv!3545 (array!11128) Bool)

(declare-fun array_inv!3546 (array!11130) Bool)

(assert (=> b!2312368 (= e!1481971 (and tp!733540 tp!733541 tp!733542 (array_inv!3545 (_keys!3472 (v!30589 (underlying!6555 (v!30590 (underlying!6556 thiss!41910)))))) (array_inv!3546 (_values!3455 (v!30589 (underlying!6555 (v!30590 (underlying!6556 thiss!41910)))))) e!1481970))))

(declare-fun b!2312369 () Bool)

(declare-fun tp!733538 () Bool)

(declare-fun mapRes!14867 () Bool)

(assert (=> b!2312369 (= e!1481970 (and tp!733538 mapRes!14867))))

(declare-fun condMapEmpty!14867 () Bool)

(declare-fun mapDefault!14867 () List!27623)

(assert (=> b!2312369 (= condMapEmpty!14867 (= (arr!4938 (_values!3455 (v!30589 (underlying!6555 (v!30590 (underlying!6556 thiss!41910)))))) ((as const (Array (_ BitVec 32) List!27623)) mapDefault!14867)))))

(declare-fun mapNonEmpty!14867 () Bool)

(declare-fun tp!733543 () Bool)

(declare-fun tp!733539 () Bool)

(assert (=> mapNonEmpty!14867 (= mapRes!14867 (and tp!733543 tp!733539))))

(declare-fun mapValue!14867 () List!27623)

(declare-fun mapKey!14867 () (_ BitVec 32))

(declare-fun mapRest!14867 () (Array (_ BitVec 32) List!27623))

(assert (=> mapNonEmpty!14867 (= (arr!4938 (_values!3455 (v!30589 (underlying!6555 (v!30590 (underlying!6556 thiss!41910)))))) (store mapRest!14867 mapKey!14867 mapValue!14867))))

(get-info :version)

(assert (=> start!228096 (and ((_ is HashMap!3085) thiss!41910) (not ((_ is LongMap!3175) (v!30590 (underlying!6556 thiss!41910)))))))

(declare-fun e!1481967 () Bool)

(assert (=> start!228096 e!1481967))

(declare-fun mapIsEmpty!14867 () Bool)

(assert (=> mapIsEmpty!14867 mapRes!14867))

(declare-fun b!2312370 () Bool)

(declare-fun e!1481968 () Bool)

(declare-fun e!1481965 () Bool)

(declare-fun lt!857648 () MutLongMap!3175)

(assert (=> b!2312370 (= e!1481968 (and e!1481965 ((_ is LongMap!3175) lt!857648)))))

(assert (=> b!2312370 (= lt!857648 (v!30590 (underlying!6556 thiss!41910)))))

(assert (=> b!2312371 (= e!1481967 (and e!1481968 tp!733537))))

(declare-fun b!2312372 () Bool)

(declare-fun e!1481966 () Bool)

(assert (=> b!2312372 (= e!1481966 e!1481971)))

(declare-fun b!2312373 () Bool)

(assert (=> b!2312373 (= e!1481965 e!1481966)))

(assert (= (and b!2312369 condMapEmpty!14867) mapIsEmpty!14867))

(assert (= (and b!2312369 (not condMapEmpty!14867)) mapNonEmpty!14867))

(assert (= b!2312368 b!2312369))

(assert (= b!2312372 b!2312368))

(assert (= b!2312373 b!2312372))

(assert (= (and b!2312370 ((_ is LongMap!3175) (v!30590 (underlying!6556 thiss!41910)))) b!2312373))

(assert (= b!2312371 b!2312370))

(assert (= (and start!228096 ((_ is HashMap!3085) thiss!41910)) b!2312371))

(declare-fun m!2739851 () Bool)

(assert (=> b!2312368 m!2739851))

(declare-fun m!2739853 () Bool)

(assert (=> b!2312368 m!2739853))

(declare-fun m!2739855 () Bool)

(assert (=> mapNonEmpty!14867 m!2739855))

(check-sat (not mapNonEmpty!14867) b_and!184901 (not b!2312369) b_and!184903 (not b_next!70705) (not b!2312368) (not b_next!70707))
(check-sat b_and!184903 b_and!184901 (not b_next!70707) (not b_next!70705))
