; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241616 () Bool)

(assert start!241616)

(declare-fun b!2476918 () Bool)

(declare-fun b_free!71929 () Bool)

(declare-fun b_next!72633 () Bool)

(assert (=> b!2476918 (= b_free!71929 (not b_next!72633))))

(declare-fun tp!792246 () Bool)

(declare-fun b_and!188155 () Bool)

(assert (=> b!2476918 (= tp!792246 b_and!188155)))

(declare-fun b!2476912 () Bool)

(declare-fun b_free!71931 () Bool)

(declare-fun b_next!72635 () Bool)

(assert (=> b!2476912 (= b_free!71931 (not b_next!72635))))

(declare-fun tp!792243 () Bool)

(declare-fun b_and!188157 () Bool)

(assert (=> b!2476912 (= tp!792243 b_and!188157)))

(declare-fun e!1571572 () Bool)

(declare-fun e!1571570 () Bool)

(assert (=> b!2476912 (= e!1571572 (and e!1571570 tp!792243))))

(declare-fun b!2476913 () Bool)

(declare-fun e!1571573 () Bool)

(declare-fun e!1571569 () Bool)

(assert (=> b!2476913 (= e!1571573 e!1571569)))

(declare-fun b!2476914 () Bool)

(declare-fun res!1048567 () Bool)

(declare-fun e!1571574 () Bool)

(assert (=> b!2476914 (=> (not res!1048567) (not e!1571574))))

(declare-datatypes ((Hashable!3178 0))(
  ( (HashableExt!3177 (__x!18710 Int)) )
))
(declare-datatypes ((K!5255 0))(
  ( (K!5256 (val!8679 Int)) )
))
(declare-datatypes ((V!5457 0))(
  ( (V!5458 (val!8680 Int)) )
))
(declare-datatypes ((tuple2!28348 0))(
  ( (tuple2!28349 (_1!16715 K!5255) (_2!16715 V!5457)) )
))
(declare-datatypes ((List!29039 0))(
  ( (Nil!28939) (Cons!28939 (h!34341 tuple2!28348) (t!210676 List!29039)) )
))
(declare-datatypes ((array!11505 0))(
  ( (array!11506 (arr!5126 (Array (_ BitVec 32) List!29039)) (size!22545 (_ BitVec 32))) )
))
(declare-datatypes ((array!11507 0))(
  ( (array!11508 (arr!5127 (Array (_ BitVec 32) (_ BitVec 64))) (size!22546 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6536 0))(
  ( (LongMapFixedSize!6537 (defaultEntry!3642 Int) (mask!8391 (_ BitVec 32)) (extraKeys!3516 (_ BitVec 32)) (zeroValue!3526 List!29039) (minValue!3526 List!29039) (_size!6583 (_ BitVec 32)) (_keys!3565 array!11507) (_values!3548 array!11505) (_vacant!3329 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12889 0))(
  ( (Cell!12890 (v!31207 LongMapFixedSize!6536)) )
))
(declare-datatypes ((MutLongMap!3268 0))(
  ( (LongMap!3268 (underlying!6743 Cell!12889)) (MutLongMapExt!3267 (__x!18711 Int)) )
))
(declare-datatypes ((Cell!12891 0))(
  ( (Cell!12892 (v!31208 MutLongMap!3268)) )
))
(declare-datatypes ((MutableMap!3178 0))(
  ( (MutableMapExt!3177 (__x!18712 Int)) (HashMap!3178 (underlying!6744 Cell!12891) (hashF!5116 Hashable!3178) (_size!6584 (_ BitVec 32)) (defaultValue!3340 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3178)

(declare-fun valid!2471 (MutableMap!3178) Bool)

(assert (=> b!2476914 (= res!1048567 (valid!2471 thiss!42540))))

(declare-fun b!2476915 () Bool)

(declare-fun lt!884694 () MutLongMap!3268)

(get-info :version)

(assert (=> b!2476915 (= e!1571570 (and e!1571573 ((_ is LongMap!3268) lt!884694)))))

(assert (=> b!2476915 (= lt!884694 (v!31208 (underlying!6744 thiss!42540)))))

(declare-fun b!2476916 () Bool)

(declare-fun e!1571571 () Bool)

(declare-fun tp!792248 () Bool)

(declare-fun mapRes!15226 () Bool)

(assert (=> b!2476916 (= e!1571571 (and tp!792248 mapRes!15226))))

(declare-fun condMapEmpty!15226 () Bool)

(declare-fun mapDefault!15226 () List!29039)

(assert (=> b!2476916 (= condMapEmpty!15226 (= (arr!5126 (_values!3548 (v!31207 (underlying!6743 (v!31208 (underlying!6744 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29039)) mapDefault!15226)))))

(declare-fun mapNonEmpty!15226 () Bool)

(declare-fun tp!792245 () Bool)

(declare-fun tp!792247 () Bool)

(assert (=> mapNonEmpty!15226 (= mapRes!15226 (and tp!792245 tp!792247))))

(declare-fun mapRest!15226 () (Array (_ BitVec 32) List!29039))

(declare-fun mapKey!15226 () (_ BitVec 32))

(declare-fun mapValue!15226 () List!29039)

(assert (=> mapNonEmpty!15226 (= (arr!5126 (_values!3548 (v!31207 (underlying!6743 (v!31208 (underlying!6744 thiss!42540)))))) (store mapRest!15226 mapKey!15226 mapValue!15226))))

(declare-fun mapIsEmpty!15226 () Bool)

(assert (=> mapIsEmpty!15226 mapRes!15226))

(declare-fun b!2476917 () Bool)

(declare-fun e!1571575 () Bool)

(assert (=> b!2476917 (= e!1571569 e!1571575)))

(declare-fun b!2476919 () Bool)

(assert (=> b!2476919 (= e!1571574 (not ((_ is LongMap!3268) (v!31208 (underlying!6744 thiss!42540)))))))

(declare-fun b!2476920 () Bool)

(declare-fun res!1048566 () Bool)

(assert (=> b!2476920 (=> (not res!1048566) (not e!1571574))))

(declare-fun key!2246 () K!5255)

(declare-fun contains!4944 (MutableMap!3178 K!5255) Bool)

(assert (=> b!2476920 (= res!1048566 (not (contains!4944 thiss!42540 key!2246)))))

(declare-fun res!1048565 () Bool)

(assert (=> start!241616 (=> (not res!1048565) (not e!1571574))))

(assert (=> start!241616 (= res!1048565 ((_ is HashMap!3178) thiss!42540))))

(assert (=> start!241616 e!1571574))

(assert (=> start!241616 e!1571572))

(declare-fun tp_is_empty!12035 () Bool)

(assert (=> start!241616 tp_is_empty!12035))

(declare-fun tp!792242 () Bool)

(declare-fun tp!792244 () Bool)

(declare-fun array_inv!3677 (array!11507) Bool)

(declare-fun array_inv!3678 (array!11505) Bool)

(assert (=> b!2476918 (= e!1571575 (and tp!792246 tp!792244 tp!792242 (array_inv!3677 (_keys!3565 (v!31207 (underlying!6743 (v!31208 (underlying!6744 thiss!42540)))))) (array_inv!3678 (_values!3548 (v!31207 (underlying!6743 (v!31208 (underlying!6744 thiss!42540)))))) e!1571571))))

(assert (= (and start!241616 res!1048565) b!2476914))

(assert (= (and b!2476914 res!1048567) b!2476920))

(assert (= (and b!2476920 res!1048566) b!2476919))

(assert (= (and b!2476916 condMapEmpty!15226) mapIsEmpty!15226))

(assert (= (and b!2476916 (not condMapEmpty!15226)) mapNonEmpty!15226))

(assert (= b!2476918 b!2476916))

(assert (= b!2476917 b!2476918))

(assert (= b!2476913 b!2476917))

(assert (= (and b!2476915 ((_ is LongMap!3268) (v!31208 (underlying!6744 thiss!42540)))) b!2476913))

(assert (= b!2476912 b!2476915))

(assert (= (and start!241616 ((_ is HashMap!3178) thiss!42540)) b!2476912))

(declare-fun m!2844983 () Bool)

(assert (=> b!2476914 m!2844983))

(declare-fun m!2844985 () Bool)

(assert (=> mapNonEmpty!15226 m!2844985))

(declare-fun m!2844987 () Bool)

(assert (=> b!2476920 m!2844987))

(declare-fun m!2844989 () Bool)

(assert (=> b!2476918 m!2844989))

(declare-fun m!2844991 () Bool)

(assert (=> b!2476918 m!2844991))

(check-sat (not b!2476918) (not b_next!72633) b_and!188155 tp_is_empty!12035 (not b_next!72635) (not mapNonEmpty!15226) (not b!2476920) b_and!188157 (not b!2476916) (not b!2476914))
(check-sat b_and!188157 b_and!188155 (not b_next!72633) (not b_next!72635))
