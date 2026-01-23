; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231262 () Bool)

(assert start!231262)

(declare-fun b!2358883 () Bool)

(declare-fun b_free!70405 () Bool)

(declare-fun b_next!71109 () Bool)

(assert (=> b!2358883 (= b_free!70405 (not b_next!71109))))

(declare-fun tp!754293 () Bool)

(declare-fun b_and!185339 () Bool)

(assert (=> b!2358883 (= tp!754293 b_and!185339)))

(declare-fun b!2358885 () Bool)

(declare-fun b_free!70407 () Bool)

(declare-fun b_next!71111 () Bool)

(assert (=> b!2358885 (= b_free!70407 (not b_next!71111))))

(declare-fun tp!754291 () Bool)

(declare-fun b_and!185341 () Bool)

(assert (=> b!2358885 (= tp!754291 b_and!185341)))

(declare-fun mapIsEmpty!15112 () Bool)

(declare-fun mapRes!15112 () Bool)

(assert (=> mapIsEmpty!15112 mapRes!15112))

(declare-fun b!2358880 () Bool)

(declare-fun e!1506672 () Bool)

(declare-fun e!1506666 () Bool)

(assert (=> b!2358880 (= e!1506672 e!1506666)))

(declare-fun b!2358881 () Bool)

(declare-fun e!1506669 () Bool)

(declare-datatypes ((K!4967 0))(
  ( (K!4968 (val!8197 Int)) )
))
(declare-datatypes ((V!5169 0))(
  ( (V!5170 (val!8198 Int)) )
))
(declare-datatypes ((tuple2!27630 0))(
  ( (tuple2!27631 (_1!16356 K!4967) (_2!16356 V!5169)) )
))
(declare-datatypes ((List!27986 0))(
  ( (Nil!27888) (Cons!27888 (h!33289 tuple2!27630) (t!207861 List!27986)) )
))
(declare-datatypes ((array!11371 0))(
  ( (array!11372 (arr!5066 (Array (_ BitVec 32) List!27986)) (size!22090 (_ BitVec 32))) )
))
(declare-datatypes ((array!11373 0))(
  ( (array!11374 (arr!5067 (Array (_ BitVec 32) (_ BitVec 64))) (size!22091 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6476 0))(
  ( (LongMapFixedSize!6477 (defaultEntry!3612 Int) (mask!8133 (_ BitVec 32)) (extraKeys!3486 (_ BitVec 32)) (zeroValue!3496 List!27986) (minValue!3496 List!27986) (_size!6523 (_ BitVec 32)) (_keys!3535 array!11373) (_values!3518 array!11371) (_vacant!3299 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12769 0))(
  ( (Cell!12770 (v!30821 LongMapFixedSize!6476)) )
))
(declare-datatypes ((MutLongMap!3238 0))(
  ( (LongMap!3238 (underlying!6681 Cell!12769)) (MutLongMapExt!3237 (__x!18472 Int)) )
))
(declare-fun lt!863745 () MutLongMap!3238)

(get-info :version)

(assert (=> b!2358881 (= e!1506669 (and e!1506672 ((_ is LongMap!3238) lt!863745)))))

(declare-datatypes ((Hashable!3148 0))(
  ( (HashableExt!3147 (__x!18473 Int)) )
))
(declare-datatypes ((Cell!12771 0))(
  ( (Cell!12772 (v!30822 MutLongMap!3238)) )
))
(declare-datatypes ((MutableMap!3148 0))(
  ( (MutableMapExt!3147 (__x!18474 Int)) (HashMap!3148 (underlying!6682 Cell!12771) (hashF!5077 Hashable!3148) (_size!6524 (_ BitVec 32)) (defaultValue!3310 Int)) )
))
(declare-fun thiss!47689 () MutableMap!3148)

(assert (=> b!2358881 (= lt!863745 (v!30822 (underlying!6682 thiss!47689)))))

(declare-fun b!2358882 () Bool)

(declare-fun e!1506673 () Bool)

(assert (=> b!2358882 (= e!1506673 false)))

(declare-fun lt!863746 () Bool)

(declare-fun key!7131 () K!4967)

(declare-fun contains!4858 (MutableMap!3148 K!4967) Bool)

(assert (=> b!2358882 (= lt!863746 (contains!4858 thiss!47689 key!7131))))

(declare-fun tp!754295 () Bool)

(declare-fun e!1506667 () Bool)

(declare-fun e!1506671 () Bool)

(declare-fun tp!754294 () Bool)

(declare-fun array_inv!3633 (array!11373) Bool)

(declare-fun array_inv!3634 (array!11371) Bool)

(assert (=> b!2358883 (= e!1506667 (and tp!754293 tp!754295 tp!754294 (array_inv!3633 (_keys!3535 (v!30821 (underlying!6681 (v!30822 (underlying!6682 thiss!47689)))))) (array_inv!3634 (_values!3518 (v!30821 (underlying!6681 (v!30822 (underlying!6682 thiss!47689)))))) e!1506671))))

(declare-fun b!2358884 () Bool)

(declare-fun res!1001141 () Bool)

(assert (=> b!2358884 (=> (not res!1001141) (not e!1506673))))

(assert (=> b!2358884 (= res!1001141 (not ((_ is MutableMapExt!3147) thiss!47689)))))

(declare-fun res!1001142 () Bool)

(assert (=> start!231262 (=> (not res!1001142) (not e!1506673))))

(declare-fun valid!2431 (MutableMap!3148) Bool)

(assert (=> start!231262 (= res!1001142 (valid!2431 thiss!47689))))

(assert (=> start!231262 e!1506673))

(declare-fun e!1506668 () Bool)

(assert (=> start!231262 e!1506668))

(declare-fun tp_is_empty!11185 () Bool)

(assert (=> start!231262 tp_is_empty!11185))

(assert (=> b!2358885 (= e!1506668 (and e!1506669 tp!754291))))

(declare-fun b!2358886 () Bool)

(declare-fun tp!754296 () Bool)

(assert (=> b!2358886 (= e!1506671 (and tp!754296 mapRes!15112))))

(declare-fun condMapEmpty!15112 () Bool)

(declare-fun mapDefault!15112 () List!27986)

(assert (=> b!2358886 (= condMapEmpty!15112 (= (arr!5066 (_values!3518 (v!30821 (underlying!6681 (v!30822 (underlying!6682 thiss!47689)))))) ((as const (Array (_ BitVec 32) List!27986)) mapDefault!15112)))))

(declare-fun mapNonEmpty!15112 () Bool)

(declare-fun tp!754292 () Bool)

(declare-fun tp!754290 () Bool)

(assert (=> mapNonEmpty!15112 (= mapRes!15112 (and tp!754292 tp!754290))))

(declare-fun mapRest!15112 () (Array (_ BitVec 32) List!27986))

(declare-fun mapKey!15112 () (_ BitVec 32))

(declare-fun mapValue!15112 () List!27986)

(assert (=> mapNonEmpty!15112 (= (arr!5066 (_values!3518 (v!30821 (underlying!6681 (v!30822 (underlying!6682 thiss!47689)))))) (store mapRest!15112 mapKey!15112 mapValue!15112))))

(declare-fun b!2358887 () Bool)

(assert (=> b!2358887 (= e!1506666 e!1506667)))

(assert (= (and start!231262 res!1001142) b!2358884))

(assert (= (and b!2358884 res!1001141) b!2358882))

(assert (= (and b!2358886 condMapEmpty!15112) mapIsEmpty!15112))

(assert (= (and b!2358886 (not condMapEmpty!15112)) mapNonEmpty!15112))

(assert (= b!2358883 b!2358886))

(assert (= b!2358887 b!2358883))

(assert (= b!2358880 b!2358887))

(assert (= (and b!2358881 ((_ is LongMap!3238) (v!30822 (underlying!6682 thiss!47689)))) b!2358880))

(assert (= b!2358885 b!2358881))

(assert (= (and start!231262 ((_ is HashMap!3148) thiss!47689)) b!2358885))

(declare-fun m!2771513 () Bool)

(assert (=> b!2358882 m!2771513))

(declare-fun m!2771515 () Bool)

(assert (=> b!2358883 m!2771515))

(declare-fun m!2771517 () Bool)

(assert (=> b!2358883 m!2771517))

(declare-fun m!2771519 () Bool)

(assert (=> start!231262 m!2771519))

(declare-fun m!2771521 () Bool)

(assert (=> mapNonEmpty!15112 m!2771521))

(check-sat (not b!2358882) (not b!2358886) b_and!185341 (not b_next!71109) (not mapNonEmpty!15112) (not b!2358883) b_and!185339 tp_is_empty!11185 (not b_next!71111) (not start!231262))
(check-sat b_and!185341 b_and!185339 (not b_next!71109) (not b_next!71111))
