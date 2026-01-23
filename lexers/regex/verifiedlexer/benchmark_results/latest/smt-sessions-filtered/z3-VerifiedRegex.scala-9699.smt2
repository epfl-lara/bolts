; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507934 () Bool)

(assert start!507934)

(declare-fun b!4860581 () Bool)

(declare-fun b_free!130443 () Bool)

(declare-fun b_next!131233 () Bool)

(assert (=> b!4860581 (= b_free!130443 (not b_next!131233))))

(declare-fun tp!1367318 () Bool)

(declare-fun b_and!342295 () Bool)

(assert (=> b!4860581 (= tp!1367318 b_and!342295)))

(declare-fun b!4860583 () Bool)

(declare-fun b_free!130445 () Bool)

(declare-fun b_next!131235 () Bool)

(assert (=> b!4860583 (= b_free!130445 (not b_next!131235))))

(declare-fun tp!1367321 () Bool)

(declare-fun b_and!342297 () Bool)

(assert (=> b!4860583 (= tp!1367321 b_and!342297)))

(declare-fun b!4860580 () Bool)

(declare-fun e!3038800 () Bool)

(declare-fun tp!1367320 () Bool)

(declare-fun mapRes!22604 () Bool)

(assert (=> b!4860580 (= e!3038800 (and tp!1367320 mapRes!22604))))

(declare-fun condMapEmpty!22604 () Bool)

(declare-datatypes ((array!18903 0))(
  ( (array!18904 (arr!8436 (Array (_ BitVec 32) (_ BitVec 64))) (size!36779 (_ BitVec 32))) )
))
(declare-datatypes ((K!17612 0))(
  ( (K!17613 (val!22447 Int)) )
))
(declare-datatypes ((V!17882 0))(
  ( (V!17883 (val!22448 Int)) )
))
(declare-datatypes ((tuple2!59606 0))(
  ( (tuple2!59607 (_1!33106 K!17612) (_2!33106 V!17882)) )
))
(declare-datatypes ((List!55924 0))(
  ( (Nil!55800) (Cons!55800 (h!62248 tuple2!59606) (t!363544 List!55924)) )
))
(declare-datatypes ((array!18905 0))(
  ( (array!18906 (arr!8437 (Array (_ BitVec 32) List!55924)) (size!36780 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10252 0))(
  ( (LongMapFixedSize!10253 (defaultEntry!5551 Int) (mask!15466 (_ BitVec 32)) (extraKeys!5410 (_ BitVec 32)) (zeroValue!5423 List!55924) (minValue!5423 List!55924) (_size!10265 (_ BitVec 32)) (_keys!5480 array!18903) (_values!5448 array!18905) (_vacant!5191 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20245 0))(
  ( (Cell!20246 (v!49635 LongMapFixedSize!10252)) )
))
(declare-datatypes ((MutLongMap!5126 0))(
  ( (LongMap!5126 (underlying!10447 Cell!20245)) (MutLongMapExt!5125 (__x!33898 Int)) )
))
(declare-datatypes ((Cell!20247 0))(
  ( (Cell!20248 (v!49636 MutLongMap!5126)) )
))
(declare-datatypes ((Hashable!7571 0))(
  ( (HashableExt!7570 (__x!33899 Int)) )
))
(declare-datatypes ((MutableMap!4998 0))(
  ( (MutableMapExt!4997 (__x!33900 Int)) (HashMap!4998 (underlying!10448 Cell!20247) (hashF!13838 Hashable!7571) (_size!10266 (_ BitVec 32)) (defaultValue!5169 Int)) )
))
(declare-fun thiss!42715 () MutableMap!4998)

(declare-fun mapDefault!22604 () List!55924)

(assert (=> b!4860580 (= condMapEmpty!22604 (= (arr!8437 (_values!5448 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715)))))) ((as const (Array (_ BitVec 32) List!55924)) mapDefault!22604)))))

(declare-fun e!3038805 () Bool)

(declare-fun tp!1367315 () Bool)

(declare-fun tp!1367317 () Bool)

(declare-fun array_inv!6094 (array!18903) Bool)

(declare-fun array_inv!6095 (array!18905) Bool)

(assert (=> b!4860581 (= e!3038805 (and tp!1367318 tp!1367315 tp!1367317 (array_inv!6094 (_keys!5480 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715)))))) (array_inv!6095 (_values!5448 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715)))))) e!3038800))))

(declare-fun mapIsEmpty!22604 () Bool)

(assert (=> mapIsEmpty!22604 mapRes!22604))

(declare-fun b!4860582 () Bool)

(declare-fun e!3038803 () Bool)

(declare-fun e!3038804 () Bool)

(assert (=> b!4860582 (= e!3038803 e!3038804)))

(declare-fun e!3038806 () Bool)

(declare-fun e!3038802 () Bool)

(assert (=> b!4860583 (= e!3038806 (and e!3038802 tp!1367321))))

(declare-fun b!4860584 () Bool)

(declare-fun e!3038801 () Bool)

(declare-fun lambda!243110 () Int)

(declare-datatypes ((tuple2!59608 0))(
  ( (tuple2!59609 (_1!33107 (_ BitVec 64)) (_2!33107 List!55924)) )
))
(declare-datatypes ((List!55925 0))(
  ( (Nil!55801) (Cons!55801 (h!62249 tuple2!59608) (t!363545 List!55925)) )
))
(declare-fun forall!13018 (List!55925 Int) Bool)

(declare-datatypes ((ListLongMap!6567 0))(
  ( (ListLongMap!6568 (toList!7920 List!55925)) )
))
(declare-fun map!12842 (MutLongMap!5126) ListLongMap!6567)

(assert (=> b!4860584 (= e!3038801 (not (forall!13018 (toList!7920 (map!12842 (v!49636 (underlying!10448 thiss!42715)))) lambda!243110)))))

(declare-fun b!4860585 () Bool)

(declare-fun lt!1992297 () MutLongMap!5126)

(get-info :version)

(assert (=> b!4860585 (= e!3038802 (and e!3038803 ((_ is LongMap!5126) lt!1992297)))))

(assert (=> b!4860585 (= lt!1992297 (v!49636 (underlying!10448 thiss!42715)))))

(declare-fun res!2074987 () Bool)

(assert (=> start!507934 (=> (not res!2074987) (not e!3038801))))

(assert (=> start!507934 (= res!2074987 ((_ is HashMap!4998) thiss!42715))))

(assert (=> start!507934 e!3038801))

(assert (=> start!507934 e!3038806))

(declare-fun mapNonEmpty!22604 () Bool)

(declare-fun tp!1367319 () Bool)

(declare-fun tp!1367316 () Bool)

(assert (=> mapNonEmpty!22604 (= mapRes!22604 (and tp!1367319 tp!1367316))))

(declare-fun mapKey!22604 () (_ BitVec 32))

(declare-fun mapValue!22604 () List!55924)

(declare-fun mapRest!22604 () (Array (_ BitVec 32) List!55924))

(assert (=> mapNonEmpty!22604 (= (arr!8437 (_values!5448 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715)))))) (store mapRest!22604 mapKey!22604 mapValue!22604))))

(declare-fun b!4860586 () Bool)

(declare-fun res!2074986 () Bool)

(assert (=> b!4860586 (=> (not res!2074986) (not e!3038801))))

(declare-fun valid!4147 (MutableMap!4998) Bool)

(assert (=> b!4860586 (= res!2074986 (valid!4147 thiss!42715))))

(declare-fun b!4860587 () Bool)

(assert (=> b!4860587 (= e!3038804 e!3038805)))

(assert (= (and start!507934 res!2074987) b!4860586))

(assert (= (and b!4860586 res!2074986) b!4860584))

(assert (= (and b!4860580 condMapEmpty!22604) mapIsEmpty!22604))

(assert (= (and b!4860580 (not condMapEmpty!22604)) mapNonEmpty!22604))

(assert (= b!4860581 b!4860580))

(assert (= b!4860587 b!4860581))

(assert (= b!4860582 b!4860587))

(assert (= (and b!4860585 ((_ is LongMap!5126) (v!49636 (underlying!10448 thiss!42715)))) b!4860582))

(assert (= b!4860583 b!4860585))

(assert (= (and start!507934 ((_ is HashMap!4998) thiss!42715)) b!4860583))

(declare-fun m!5858606 () Bool)

(assert (=> b!4860581 m!5858606))

(declare-fun m!5858608 () Bool)

(assert (=> b!4860581 m!5858608))

(declare-fun m!5858610 () Bool)

(assert (=> b!4860584 m!5858610))

(declare-fun m!5858612 () Bool)

(assert (=> b!4860584 m!5858612))

(declare-fun m!5858614 () Bool)

(assert (=> mapNonEmpty!22604 m!5858614))

(declare-fun m!5858616 () Bool)

(assert (=> b!4860586 m!5858616))

(check-sat (not b!4860586) (not b_next!131233) b_and!342297 (not b!4860580) (not mapNonEmpty!22604) (not b!4860584) b_and!342295 (not b!4860581) (not b_next!131235))
(check-sat b_and!342295 b_and!342297 (not b_next!131235) (not b_next!131233))
(get-model)

(declare-fun d!1560176 () Bool)

(assert (=> d!1560176 (= (array_inv!6094 (_keys!5480 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715)))))) (bvsge (size!36779 (_keys!5480 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715)))))) #b00000000000000000000000000000000))))

(assert (=> b!4860581 d!1560176))

(declare-fun d!1560178 () Bool)

(assert (=> d!1560178 (= (array_inv!6095 (_values!5448 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715)))))) (bvsge (size!36780 (_values!5448 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715)))))) #b00000000000000000000000000000000))))

(assert (=> b!4860581 d!1560178))

(declare-fun bs!1173878 () Bool)

(declare-fun b!4860592 () Bool)

(assert (= bs!1173878 (and b!4860592 b!4860584)))

(declare-fun lambda!243113 () Int)

(assert (=> bs!1173878 (= lambda!243113 lambda!243110)))

(declare-fun d!1560180 () Bool)

(declare-fun res!2074992 () Bool)

(declare-fun e!3038809 () Bool)

(assert (=> d!1560180 (=> (not res!2074992) (not e!3038809))))

(declare-fun valid!4148 (MutLongMap!5126) Bool)

(assert (=> d!1560180 (= res!2074992 (valid!4148 (v!49636 (underlying!10448 thiss!42715))))))

(assert (=> d!1560180 (= (valid!4147 thiss!42715) e!3038809)))

(declare-fun res!2074993 () Bool)

(assert (=> b!4860592 (=> (not res!2074993) (not e!3038809))))

(assert (=> b!4860592 (= res!2074993 (forall!13018 (toList!7920 (map!12842 (v!49636 (underlying!10448 thiss!42715)))) lambda!243113))))

(declare-fun b!4860593 () Bool)

(declare-fun allKeysSameHashInMap!2865 (ListLongMap!6567 Hashable!7571) Bool)

(assert (=> b!4860593 (= e!3038809 (allKeysSameHashInMap!2865 (map!12842 (v!49636 (underlying!10448 thiss!42715))) (hashF!13838 thiss!42715)))))

(assert (= (and d!1560180 res!2074992) b!4860592))

(assert (= (and b!4860592 res!2074993) b!4860593))

(declare-fun m!5858618 () Bool)

(assert (=> d!1560180 m!5858618))

(assert (=> b!4860592 m!5858610))

(declare-fun m!5858620 () Bool)

(assert (=> b!4860592 m!5858620))

(assert (=> b!4860593 m!5858610))

(assert (=> b!4860593 m!5858610))

(declare-fun m!5858622 () Bool)

(assert (=> b!4860593 m!5858622))

(assert (=> b!4860586 d!1560180))

(declare-fun d!1560182 () Bool)

(declare-fun res!2074998 () Bool)

(declare-fun e!3038814 () Bool)

(assert (=> d!1560182 (=> res!2074998 e!3038814)))

(assert (=> d!1560182 (= res!2074998 ((_ is Nil!55801) (toList!7920 (map!12842 (v!49636 (underlying!10448 thiss!42715))))))))

(assert (=> d!1560182 (= (forall!13018 (toList!7920 (map!12842 (v!49636 (underlying!10448 thiss!42715)))) lambda!243110) e!3038814)))

(declare-fun b!4860598 () Bool)

(declare-fun e!3038815 () Bool)

(assert (=> b!4860598 (= e!3038814 e!3038815)))

(declare-fun res!2074999 () Bool)

(assert (=> b!4860598 (=> (not res!2074999) (not e!3038815))))

(declare-fun dynLambda!22396 (Int tuple2!59608) Bool)

(assert (=> b!4860598 (= res!2074999 (dynLambda!22396 lambda!243110 (h!62249 (toList!7920 (map!12842 (v!49636 (underlying!10448 thiss!42715)))))))))

(declare-fun b!4860599 () Bool)

(assert (=> b!4860599 (= e!3038815 (forall!13018 (t!363545 (toList!7920 (map!12842 (v!49636 (underlying!10448 thiss!42715))))) lambda!243110))))

(assert (= (and d!1560182 (not res!2074998)) b!4860598))

(assert (= (and b!4860598 res!2074999) b!4860599))

(declare-fun b_lambda!193309 () Bool)

(assert (=> (not b_lambda!193309) (not b!4860598)))

(declare-fun m!5858624 () Bool)

(assert (=> b!4860598 m!5858624))

(declare-fun m!5858626 () Bool)

(assert (=> b!4860599 m!5858626))

(assert (=> b!4860584 d!1560182))

(declare-fun d!1560184 () Bool)

(declare-fun map!12843 (LongMapFixedSize!10252) ListLongMap!6567)

(assert (=> d!1560184 (= (map!12842 (v!49636 (underlying!10448 thiss!42715))) (map!12843 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715))))))))

(declare-fun bs!1173879 () Bool)

(assert (= bs!1173879 d!1560184))

(declare-fun m!5858628 () Bool)

(assert (=> bs!1173879 m!5858628))

(assert (=> b!4860584 d!1560184))

(declare-fun b!4860604 () Bool)

(declare-fun tp!1367324 () Bool)

(declare-fun tp_is_empty!35583 () Bool)

(declare-fun e!3038818 () Bool)

(declare-fun tp_is_empty!35581 () Bool)

(assert (=> b!4860604 (= e!3038818 (and tp_is_empty!35581 tp_is_empty!35583 tp!1367324))))

(assert (=> b!4860581 (= tp!1367315 e!3038818)))

(assert (= (and b!4860581 ((_ is Cons!55800) (zeroValue!5423 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715))))))) b!4860604))

(declare-fun tp!1367325 () Bool)

(declare-fun b!4860605 () Bool)

(declare-fun e!3038819 () Bool)

(assert (=> b!4860605 (= e!3038819 (and tp_is_empty!35581 tp_is_empty!35583 tp!1367325))))

(assert (=> b!4860581 (= tp!1367317 e!3038819)))

(assert (= (and b!4860581 ((_ is Cons!55800) (minValue!5423 (v!49635 (underlying!10447 (v!49636 (underlying!10448 thiss!42715))))))) b!4860605))

(declare-fun e!3038820 () Bool)

(declare-fun b!4860606 () Bool)

(declare-fun tp!1367326 () Bool)

(assert (=> b!4860606 (= e!3038820 (and tp_is_empty!35581 tp_is_empty!35583 tp!1367326))))

(assert (=> b!4860580 (= tp!1367320 e!3038820)))

(assert (= (and b!4860580 ((_ is Cons!55800) mapDefault!22604)) b!4860606))

(declare-fun e!3038826 () Bool)

(declare-fun tp!1367334 () Bool)

(declare-fun b!4860613 () Bool)

(assert (=> b!4860613 (= e!3038826 (and tp_is_empty!35581 tp_is_empty!35583 tp!1367334))))

(declare-fun mapNonEmpty!22607 () Bool)

(declare-fun mapRes!22607 () Bool)

(declare-fun tp!1367335 () Bool)

(assert (=> mapNonEmpty!22607 (= mapRes!22607 (and tp!1367335 e!3038826))))

(declare-fun mapKey!22607 () (_ BitVec 32))

(declare-fun mapValue!22607 () List!55924)

(declare-fun mapRest!22607 () (Array (_ BitVec 32) List!55924))

(assert (=> mapNonEmpty!22607 (= mapRest!22604 (store mapRest!22607 mapKey!22607 mapValue!22607))))

(declare-fun e!3038825 () Bool)

(declare-fun tp!1367333 () Bool)

(declare-fun b!4860614 () Bool)

(assert (=> b!4860614 (= e!3038825 (and tp_is_empty!35581 tp_is_empty!35583 tp!1367333))))

(declare-fun mapIsEmpty!22607 () Bool)

(assert (=> mapIsEmpty!22607 mapRes!22607))

(declare-fun condMapEmpty!22607 () Bool)

(declare-fun mapDefault!22607 () List!55924)

(assert (=> mapNonEmpty!22604 (= condMapEmpty!22607 (= mapRest!22604 ((as const (Array (_ BitVec 32) List!55924)) mapDefault!22607)))))

(assert (=> mapNonEmpty!22604 (= tp!1367319 (and e!3038825 mapRes!22607))))

(assert (= (and mapNonEmpty!22604 condMapEmpty!22607) mapIsEmpty!22607))

(assert (= (and mapNonEmpty!22604 (not condMapEmpty!22607)) mapNonEmpty!22607))

(assert (= (and mapNonEmpty!22607 ((_ is Cons!55800) mapValue!22607)) b!4860613))

(assert (= (and mapNonEmpty!22604 ((_ is Cons!55800) mapDefault!22607)) b!4860614))

(declare-fun m!5858630 () Bool)

(assert (=> mapNonEmpty!22607 m!5858630))

(declare-fun b!4860615 () Bool)

(declare-fun tp!1367336 () Bool)

(declare-fun e!3038827 () Bool)

(assert (=> b!4860615 (= e!3038827 (and tp_is_empty!35581 tp_is_empty!35583 tp!1367336))))

(assert (=> mapNonEmpty!22604 (= tp!1367316 e!3038827)))

(assert (= (and mapNonEmpty!22604 ((_ is Cons!55800) mapValue!22604)) b!4860615))

(declare-fun b_lambda!193311 () Bool)

(assert (= b_lambda!193309 (or b!4860584 b_lambda!193311)))

(declare-fun bs!1173880 () Bool)

(declare-fun d!1560186 () Bool)

(assert (= bs!1173880 (and d!1560186 b!4860584)))

(declare-fun noDuplicateKeys!2647 (List!55924) Bool)

(assert (=> bs!1173880 (= (dynLambda!22396 lambda!243110 (h!62249 (toList!7920 (map!12842 (v!49636 (underlying!10448 thiss!42715)))))) (noDuplicateKeys!2647 (_2!33107 (h!62249 (toList!7920 (map!12842 (v!49636 (underlying!10448 thiss!42715))))))))))

(declare-fun m!5858632 () Bool)

(assert (=> bs!1173880 m!5858632))

(assert (=> b!4860598 d!1560186))

(check-sat (not d!1560184) (not b!4860614) (not b_next!131233) b_and!342297 (not mapNonEmpty!22607) (not b!4860592) tp_is_empty!35583 b_and!342295 (not b!4860593) (not b!4860606) (not b!4860604) (not b_next!131235) (not bs!1173880) (not b!4860599) (not b_lambda!193311) (not d!1560180) (not b!4860605) (not b!4860613) (not b!4860615) tp_is_empty!35581)
(check-sat b_and!342295 b_and!342297 (not b_next!131235) (not b_next!131233))
