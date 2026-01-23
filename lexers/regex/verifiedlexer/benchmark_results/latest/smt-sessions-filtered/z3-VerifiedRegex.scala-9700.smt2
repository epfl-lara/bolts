; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507948 () Bool)

(assert start!507948)

(declare-fun b!4860663 () Bool)

(declare-fun b_free!130451 () Bool)

(declare-fun b_next!131241 () Bool)

(assert (=> b!4860663 (= b_free!130451 (not b_next!131241))))

(declare-fun tp!1367374 () Bool)

(declare-fun b_and!342303 () Bool)

(assert (=> b!4860663 (= tp!1367374 b_and!342303)))

(declare-fun b!4860661 () Bool)

(declare-fun b_free!130453 () Bool)

(declare-fun b_next!131243 () Bool)

(assert (=> b!4860661 (= b_free!130453 (not b_next!131243))))

(declare-fun tp!1367373 () Bool)

(declare-fun b_and!342305 () Bool)

(assert (=> b!4860661 (= tp!1367373 b_and!342305)))

(declare-fun b!4860656 () Bool)

(declare-fun e!3038873 () Bool)

(declare-fun e!3038872 () Bool)

(declare-datatypes ((array!18913 0))(
  ( (array!18914 (arr!8440 (Array (_ BitVec 32) (_ BitVec 64))) (size!36783 (_ BitVec 32))) )
))
(declare-datatypes ((K!17617 0))(
  ( (K!17618 (val!22451 Int)) )
))
(declare-datatypes ((V!17887 0))(
  ( (V!17888 (val!22452 Int)) )
))
(declare-datatypes ((tuple2!59612 0))(
  ( (tuple2!59613 (_1!33109 K!17617) (_2!33109 V!17887)) )
))
(declare-datatypes ((List!55927 0))(
  ( (Nil!55803) (Cons!55803 (h!62251 tuple2!59612) (t!363547 List!55927)) )
))
(declare-datatypes ((array!18915 0))(
  ( (array!18916 (arr!8441 (Array (_ BitVec 32) List!55927)) (size!36784 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10256 0))(
  ( (LongMapFixedSize!10257 (defaultEntry!5553 Int) (mask!15469 (_ BitVec 32)) (extraKeys!5412 (_ BitVec 32)) (zeroValue!5425 List!55927) (minValue!5425 List!55927) (_size!10269 (_ BitVec 32)) (_keys!5482 array!18913) (_values!5450 array!18915) (_vacant!5193 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20253 0))(
  ( (Cell!20254 (v!49639 LongMapFixedSize!10256)) )
))
(declare-datatypes ((MutLongMap!5128 0))(
  ( (LongMap!5128 (underlying!10451 Cell!20253)) (MutLongMapExt!5127 (__x!33904 Int)) )
))
(declare-fun lt!1992303 () MutLongMap!5128)

(get-info :version)

(assert (=> b!4860656 (= e!3038873 (and e!3038872 ((_ is LongMap!5128) lt!1992303)))))

(declare-datatypes ((Cell!20255 0))(
  ( (Cell!20256 (v!49640 MutLongMap!5128)) )
))
(declare-datatypes ((Hashable!7573 0))(
  ( (HashableExt!7572 (__x!33905 Int)) )
))
(declare-datatypes ((MutableMap!5000 0))(
  ( (MutableMapExt!4999 (__x!33906 Int)) (HashMap!5000 (underlying!10452 Cell!20255) (hashF!13840 Hashable!7573) (_size!10270 (_ BitVec 32)) (defaultValue!5171 Int)) )
))
(declare-fun thiss!42715 () MutableMap!5000)

(assert (=> b!4860656 (= lt!1992303 (v!49640 (underlying!10452 thiss!42715)))))

(declare-fun b!4860657 () Bool)

(declare-fun res!2075011 () Bool)

(declare-fun e!3038869 () Bool)

(assert (=> b!4860657 (=> (not res!2075011) (not e!3038869))))

(declare-fun valid!4149 (MutableMap!5000) Bool)

(assert (=> b!4860657 (= res!2075011 (valid!4149 thiss!42715))))

(declare-fun mapNonEmpty!22613 () Bool)

(declare-fun mapRes!22613 () Bool)

(declare-fun tp!1367372 () Bool)

(declare-fun tp!1367377 () Bool)

(assert (=> mapNonEmpty!22613 (= mapRes!22613 (and tp!1367372 tp!1367377))))

(declare-fun mapRest!22613 () (Array (_ BitVec 32) List!55927))

(declare-fun mapKey!22613 () (_ BitVec 32))

(declare-fun mapValue!22613 () List!55927)

(assert (=> mapNonEmpty!22613 (= (arr!8441 (_values!5450 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715)))))) (store mapRest!22613 mapKey!22613 mapValue!22613))))

(declare-fun mapIsEmpty!22613 () Bool)

(assert (=> mapIsEmpty!22613 mapRes!22613))

(declare-fun b!4860658 () Bool)

(declare-fun e!3038874 () Bool)

(declare-fun e!3038871 () Bool)

(assert (=> b!4860658 (= e!3038874 e!3038871)))

(declare-fun b!4860659 () Bool)

(assert (=> b!4860659 (= e!3038872 e!3038874)))

(declare-fun b!4860660 () Bool)

(declare-fun e!3038870 () Bool)

(declare-fun tp!1367375 () Bool)

(assert (=> b!4860660 (= e!3038870 (and tp!1367375 mapRes!22613))))

(declare-fun condMapEmpty!22613 () Bool)

(declare-fun mapDefault!22613 () List!55927)

(assert (=> b!4860660 (= condMapEmpty!22613 (= (arr!8441 (_values!5450 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715)))))) ((as const (Array (_ BitVec 32) List!55927)) mapDefault!22613)))))

(declare-fun res!2075010 () Bool)

(assert (=> start!507948 (=> (not res!2075010) (not e!3038869))))

(assert (=> start!507948 (= res!2075010 ((_ is HashMap!5000) thiss!42715))))

(assert (=> start!507948 e!3038869))

(declare-fun e!3038868 () Bool)

(assert (=> start!507948 e!3038868))

(assert (=> b!4860661 (= e!3038868 (and e!3038873 tp!1367373))))

(declare-fun b!4860662 () Bool)

(declare-fun invariantList!1899 (List!55927) Bool)

(declare-datatypes ((ListMap!7167 0))(
  ( (ListMap!7168 (toList!7921 List!55927)) )
))
(declare-datatypes ((tuple2!59614 0))(
  ( (tuple2!59615 (_1!33110 (_ BitVec 64)) (_2!33110 List!55927)) )
))
(declare-datatypes ((List!55928 0))(
  ( (Nil!55804) (Cons!55804 (h!62252 tuple2!59614) (t!363548 List!55928)) )
))
(declare-fun extractMap!2795 (List!55928) ListMap!7167)

(declare-datatypes ((ListLongMap!6569 0))(
  ( (ListLongMap!6570 (toList!7922 List!55928)) )
))
(declare-fun map!12845 (MutLongMap!5128) ListLongMap!6569)

(assert (=> b!4860662 (= e!3038869 (not (invariantList!1899 (toList!7921 (extractMap!2795 (toList!7922 (map!12845 (v!49640 (underlying!10452 thiss!42715)))))))))))

(declare-fun tp!1367378 () Bool)

(declare-fun tp!1367376 () Bool)

(declare-fun array_inv!6096 (array!18913) Bool)

(declare-fun array_inv!6097 (array!18915) Bool)

(assert (=> b!4860663 (= e!3038871 (and tp!1367374 tp!1367378 tp!1367376 (array_inv!6096 (_keys!5482 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715)))))) (array_inv!6097 (_values!5450 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715)))))) e!3038870))))

(assert (= (and start!507948 res!2075010) b!4860657))

(assert (= (and b!4860657 res!2075011) b!4860662))

(assert (= (and b!4860660 condMapEmpty!22613) mapIsEmpty!22613))

(assert (= (and b!4860660 (not condMapEmpty!22613)) mapNonEmpty!22613))

(assert (= b!4860663 b!4860660))

(assert (= b!4860658 b!4860663))

(assert (= b!4860659 b!4860658))

(assert (= (and b!4860656 ((_ is LongMap!5128) (v!49640 (underlying!10452 thiss!42715)))) b!4860659))

(assert (= b!4860661 b!4860656))

(assert (= (and start!507948 ((_ is HashMap!5000) thiss!42715)) b!4860661))

(declare-fun m!5858648 () Bool)

(assert (=> b!4860657 m!5858648))

(declare-fun m!5858650 () Bool)

(assert (=> mapNonEmpty!22613 m!5858650))

(declare-fun m!5858652 () Bool)

(assert (=> b!4860662 m!5858652))

(declare-fun m!5858654 () Bool)

(assert (=> b!4860662 m!5858654))

(declare-fun m!5858656 () Bool)

(assert (=> b!4860662 m!5858656))

(declare-fun m!5858658 () Bool)

(assert (=> b!4860663 m!5858658))

(declare-fun m!5858660 () Bool)

(assert (=> b!4860663 m!5858660))

(check-sat (not b_next!131243) (not b!4860663) (not mapNonEmpty!22613) (not b!4860660) b_and!342305 (not b!4860657) b_and!342303 (not b_next!131241) (not b!4860662))
(check-sat b_and!342303 b_and!342305 (not b_next!131243) (not b_next!131241))
(get-model)

(declare-fun d!1560189 () Bool)

(declare-fun res!2075016 () Bool)

(declare-fun e!3038878 () Bool)

(assert (=> d!1560189 (=> (not res!2075016) (not e!3038878))))

(declare-fun valid!4150 (MutLongMap!5128) Bool)

(assert (=> d!1560189 (= res!2075016 (valid!4150 (v!49640 (underlying!10452 thiss!42715))))))

(assert (=> d!1560189 (= (valid!4149 thiss!42715) e!3038878)))

(declare-fun b!4860668 () Bool)

(declare-fun res!2075017 () Bool)

(assert (=> b!4860668 (=> (not res!2075017) (not e!3038878))))

(declare-fun lambda!243116 () Int)

(declare-fun forall!13019 (List!55928 Int) Bool)

(assert (=> b!4860668 (= res!2075017 (forall!13019 (toList!7922 (map!12845 (v!49640 (underlying!10452 thiss!42715)))) lambda!243116))))

(declare-fun b!4860669 () Bool)

(declare-fun allKeysSameHashInMap!2866 (ListLongMap!6569 Hashable!7573) Bool)

(assert (=> b!4860669 (= e!3038878 (allKeysSameHashInMap!2866 (map!12845 (v!49640 (underlying!10452 thiss!42715))) (hashF!13840 thiss!42715)))))

(assert (= (and d!1560189 res!2075016) b!4860668))

(assert (= (and b!4860668 res!2075017) b!4860669))

(declare-fun m!5858662 () Bool)

(assert (=> d!1560189 m!5858662))

(assert (=> b!4860668 m!5858652))

(declare-fun m!5858664 () Bool)

(assert (=> b!4860668 m!5858664))

(assert (=> b!4860669 m!5858652))

(assert (=> b!4860669 m!5858652))

(declare-fun m!5858666 () Bool)

(assert (=> b!4860669 m!5858666))

(assert (=> b!4860657 d!1560189))

(declare-fun d!1560191 () Bool)

(declare-fun noDuplicatedKeys!505 (List!55927) Bool)

(assert (=> d!1560191 (= (invariantList!1899 (toList!7921 (extractMap!2795 (toList!7922 (map!12845 (v!49640 (underlying!10452 thiss!42715))))))) (noDuplicatedKeys!505 (toList!7921 (extractMap!2795 (toList!7922 (map!12845 (v!49640 (underlying!10452 thiss!42715))))))))))

(declare-fun bs!1173883 () Bool)

(assert (= bs!1173883 d!1560191))

(declare-fun m!5858668 () Bool)

(assert (=> bs!1173883 m!5858668))

(assert (=> b!4860662 d!1560191))

(declare-fun bs!1173884 () Bool)

(declare-fun d!1560193 () Bool)

(assert (= bs!1173884 (and d!1560193 b!4860668)))

(declare-fun lambda!243119 () Int)

(assert (=> bs!1173884 (= lambda!243119 lambda!243116)))

(declare-fun lt!1992306 () ListMap!7167)

(assert (=> d!1560193 (invariantList!1899 (toList!7921 lt!1992306))))

(declare-fun e!3038881 () ListMap!7167)

(assert (=> d!1560193 (= lt!1992306 e!3038881)))

(declare-fun c!826818 () Bool)

(assert (=> d!1560193 (= c!826818 ((_ is Cons!55804) (toList!7922 (map!12845 (v!49640 (underlying!10452 thiss!42715))))))))

(assert (=> d!1560193 (forall!13019 (toList!7922 (map!12845 (v!49640 (underlying!10452 thiss!42715)))) lambda!243119)))

(assert (=> d!1560193 (= (extractMap!2795 (toList!7922 (map!12845 (v!49640 (underlying!10452 thiss!42715))))) lt!1992306)))

(declare-fun b!4860674 () Bool)

(declare-fun addToMapMapFromBucket!1934 (List!55927 ListMap!7167) ListMap!7167)

(assert (=> b!4860674 (= e!3038881 (addToMapMapFromBucket!1934 (_2!33110 (h!62252 (toList!7922 (map!12845 (v!49640 (underlying!10452 thiss!42715)))))) (extractMap!2795 (t!363548 (toList!7922 (map!12845 (v!49640 (underlying!10452 thiss!42715))))))))))

(declare-fun b!4860675 () Bool)

(assert (=> b!4860675 (= e!3038881 (ListMap!7168 Nil!55803))))

(assert (= (and d!1560193 c!826818) b!4860674))

(assert (= (and d!1560193 (not c!826818)) b!4860675))

(declare-fun m!5858670 () Bool)

(assert (=> d!1560193 m!5858670))

(declare-fun m!5858672 () Bool)

(assert (=> d!1560193 m!5858672))

(declare-fun m!5858674 () Bool)

(assert (=> b!4860674 m!5858674))

(assert (=> b!4860674 m!5858674))

(declare-fun m!5858676 () Bool)

(assert (=> b!4860674 m!5858676))

(assert (=> b!4860662 d!1560193))

(declare-fun d!1560195 () Bool)

(declare-fun map!12846 (LongMapFixedSize!10256) ListLongMap!6569)

(assert (=> d!1560195 (= (map!12845 (v!49640 (underlying!10452 thiss!42715))) (map!12846 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715))))))))

(declare-fun bs!1173885 () Bool)

(assert (= bs!1173885 d!1560195))

(declare-fun m!5858678 () Bool)

(assert (=> bs!1173885 m!5858678))

(assert (=> b!4860662 d!1560195))

(declare-fun d!1560197 () Bool)

(assert (=> d!1560197 (= (array_inv!6096 (_keys!5482 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715)))))) (bvsge (size!36783 (_keys!5482 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715)))))) #b00000000000000000000000000000000))))

(assert (=> b!4860663 d!1560197))

(declare-fun d!1560199 () Bool)

(assert (=> d!1560199 (= (array_inv!6097 (_values!5450 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715)))))) (bvsge (size!36784 (_values!5450 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715)))))) #b00000000000000000000000000000000))))

(assert (=> b!4860663 d!1560199))

(declare-fun e!3038884 () Bool)

(declare-fun tp_is_empty!35587 () Bool)

(declare-fun tp!1367381 () Bool)

(declare-fun b!4860680 () Bool)

(declare-fun tp_is_empty!35585 () Bool)

(assert (=> b!4860680 (= e!3038884 (and tp_is_empty!35585 tp_is_empty!35587 tp!1367381))))

(assert (=> b!4860660 (= tp!1367375 e!3038884)))

(assert (= (and b!4860660 ((_ is Cons!55803) mapDefault!22613)) b!4860680))

(declare-fun mapNonEmpty!22616 () Bool)

(declare-fun mapRes!22616 () Bool)

(declare-fun tp!1367390 () Bool)

(declare-fun e!3038889 () Bool)

(assert (=> mapNonEmpty!22616 (= mapRes!22616 (and tp!1367390 e!3038889))))

(declare-fun mapRest!22616 () (Array (_ BitVec 32) List!55927))

(declare-fun mapKey!22616 () (_ BitVec 32))

(declare-fun mapValue!22616 () List!55927)

(assert (=> mapNonEmpty!22616 (= mapRest!22613 (store mapRest!22616 mapKey!22616 mapValue!22616))))

(declare-fun mapIsEmpty!22616 () Bool)

(assert (=> mapIsEmpty!22616 mapRes!22616))

(declare-fun e!3038890 () Bool)

(declare-fun tp!1367389 () Bool)

(declare-fun b!4860688 () Bool)

(assert (=> b!4860688 (= e!3038890 (and tp_is_empty!35585 tp_is_empty!35587 tp!1367389))))

(declare-fun condMapEmpty!22616 () Bool)

(declare-fun mapDefault!22616 () List!55927)

(assert (=> mapNonEmpty!22613 (= condMapEmpty!22616 (= mapRest!22613 ((as const (Array (_ BitVec 32) List!55927)) mapDefault!22616)))))

(assert (=> mapNonEmpty!22613 (= tp!1367372 (and e!3038890 mapRes!22616))))

(declare-fun tp!1367388 () Bool)

(declare-fun b!4860687 () Bool)

(assert (=> b!4860687 (= e!3038889 (and tp_is_empty!35585 tp_is_empty!35587 tp!1367388))))

(assert (= (and mapNonEmpty!22613 condMapEmpty!22616) mapIsEmpty!22616))

(assert (= (and mapNonEmpty!22613 (not condMapEmpty!22616)) mapNonEmpty!22616))

(assert (= (and mapNonEmpty!22616 ((_ is Cons!55803) mapValue!22616)) b!4860687))

(assert (= (and mapNonEmpty!22613 ((_ is Cons!55803) mapDefault!22616)) b!4860688))

(declare-fun m!5858680 () Bool)

(assert (=> mapNonEmpty!22616 m!5858680))

(declare-fun b!4860689 () Bool)

(declare-fun tp!1367391 () Bool)

(declare-fun e!3038891 () Bool)

(assert (=> b!4860689 (= e!3038891 (and tp_is_empty!35585 tp_is_empty!35587 tp!1367391))))

(assert (=> mapNonEmpty!22613 (= tp!1367377 e!3038891)))

(assert (= (and mapNonEmpty!22613 ((_ is Cons!55803) mapValue!22613)) b!4860689))

(declare-fun e!3038892 () Bool)

(declare-fun b!4860690 () Bool)

(declare-fun tp!1367392 () Bool)

(assert (=> b!4860690 (= e!3038892 (and tp_is_empty!35585 tp_is_empty!35587 tp!1367392))))

(assert (=> b!4860663 (= tp!1367378 e!3038892)))

(assert (= (and b!4860663 ((_ is Cons!55803) (zeroValue!5425 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715))))))) b!4860690))

(declare-fun tp!1367393 () Bool)

(declare-fun e!3038893 () Bool)

(declare-fun b!4860691 () Bool)

(assert (=> b!4860691 (= e!3038893 (and tp_is_empty!35585 tp_is_empty!35587 tp!1367393))))

(assert (=> b!4860663 (= tp!1367376 e!3038893)))

(assert (= (and b!4860663 ((_ is Cons!55803) (minValue!5425 (v!49639 (underlying!10451 (v!49640 (underlying!10452 thiss!42715))))))) b!4860691))

(check-sat (not b!4860674) (not d!1560191) (not mapNonEmpty!22616) (not b!4860691) (not d!1560195) (not b_next!131241) (not b!4860690) (not d!1560193) (not b_next!131243) (not d!1560189) tp_is_empty!35587 (not b!4860687) (not b!4860680) b_and!342305 (not b!4860688) (not b!4860689) tp_is_empty!35585 (not b!4860668) b_and!342303 (not b!4860669))
(check-sat b_and!342303 b_and!342305 (not b_next!131243) (not b_next!131241))
