; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296864 () Bool)

(assert start!296864)

(declare-fun b!3169079 () Bool)

(declare-fun b_free!83193 () Bool)

(declare-fun b_next!83897 () Bool)

(assert (=> b!3169079 (= b_free!83193 (not b_next!83897))))

(declare-fun tp!999587 () Bool)

(declare-fun b_and!209471 () Bool)

(assert (=> b!3169079 (= tp!999587 b_and!209471)))

(declare-fun b!3169085 () Bool)

(declare-fun b_free!83195 () Bool)

(declare-fun b_next!83899 () Bool)

(assert (=> b!3169085 (= b_free!83195 (not b_next!83899))))

(declare-fun tp!999585 () Bool)

(declare-fun b_and!209473 () Bool)

(assert (=> b!3169085 (= tp!999585 b_and!209473)))

(declare-fun b!3169064 () Bool)

(declare-fun e!1973826 () Bool)

(declare-fun tp!999594 () Bool)

(assert (=> b!3169064 (= e!1973826 tp!999594)))

(declare-fun b!3169065 () Bool)

(declare-fun e!1973829 () Bool)

(declare-fun e!1973821 () Bool)

(assert (=> b!3169065 (= e!1973829 e!1973821)))

(declare-fun b!3169066 () Bool)

(declare-fun e!1973831 () Bool)

(declare-fun tp!999596 () Bool)

(assert (=> b!3169066 (= e!1973831 tp!999596)))

(declare-fun b!3169067 () Bool)

(declare-fun res!1288515 () Bool)

(declare-fun e!1973823 () Bool)

(assert (=> b!3169067 (=> (not res!1288515) (not e!1973823))))

(declare-datatypes ((C!19700 0))(
  ( (C!19701 (val!11886 Int)) )
))
(declare-datatypes ((Regex!9757 0))(
  ( (ElementMatch!9757 (c!532990 C!19700)) (Concat!15078 (regOne!20026 Regex!9757) (regTwo!20026 Regex!9757)) (EmptyExpr!9757) (Star!9757 (reg!10086 Regex!9757)) (EmptyLang!9757) (Union!9757 (regOne!20027 Regex!9757) (regTwo!20027 Regex!9757)) )
))
(declare-datatypes ((tuple2!34640 0))(
  ( (tuple2!34641 (_1!20452 Regex!9757) (_2!20452 C!19700)) )
))
(declare-datatypes ((tuple2!34642 0))(
  ( (tuple2!34643 (_1!20453 tuple2!34640) (_2!20453 Regex!9757)) )
))
(declare-datatypes ((List!35594 0))(
  ( (Nil!35470) (Cons!35470 (h!40890 tuple2!34642) (t!234677 List!35594)) )
))
(declare-datatypes ((array!14930 0))(
  ( (array!14931 (arr!6646 (Array (_ BitVec 32) List!35594)) (size!26732 (_ BitVec 32))) )
))
(declare-datatypes ((array!14932 0))(
  ( (array!14933 (arr!6647 (Array (_ BitVec 32) (_ BitVec 64))) (size!26733 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8356 0))(
  ( (LongMapFixedSize!8357 (defaultEntry!4563 Int) (mask!10850 (_ BitVec 32)) (extraKeys!4427 (_ BitVec 32)) (zeroValue!4437 List!35594) (minValue!4437 List!35594) (_size!8399 (_ BitVec 32)) (_keys!4478 array!14932) (_values!4459 array!14930) (_vacant!4239 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16521 0))(
  ( (Cell!16522 (v!35187 LongMapFixedSize!8356)) )
))
(declare-datatypes ((MutLongMap!4178 0))(
  ( (LongMap!4178 (underlying!8585 Cell!16521)) (MutLongMapExt!4177 (__x!22640 Int)) )
))
(declare-datatypes ((Cell!16523 0))(
  ( (Cell!16524 (v!35188 MutLongMap!4178)) )
))
(declare-datatypes ((Hashable!4094 0))(
  ( (HashableExt!4093 (__x!22641 Int)) )
))
(declare-datatypes ((MutableMap!4084 0))(
  ( (MutableMapExt!4083 (__x!22642 Int)) (HashMap!4084 (underlying!8586 Cell!16523) (hashF!6126 Hashable!4094) (_size!8400 (_ BitVec 32)) (defaultValue!4255 Int)) )
))
(declare-datatypes ((Cache!438 0))(
  ( (Cache!439 (cache!4230 MutableMap!4084)) )
))
(declare-fun thiss!28524 () Cache!438)

(declare-fun valid!3260 (MutableMap!4084) Bool)

(assert (=> b!3169067 (= res!1288515 (valid!3260 (cache!4230 thiss!28524)))))

(declare-fun b!3169068 () Bool)

(declare-fun tp_is_empty!17077 () Bool)

(assert (=> b!3169068 (= e!1973826 tp_is_empty!17077)))

(declare-fun b!3169069 () Bool)

(declare-fun res!1288513 () Bool)

(assert (=> b!3169069 (=> (not res!1288513) (not e!1973823))))

(declare-fun r!4733 () Regex!9757)

(declare-fun res!14113 () Regex!9757)

(declare-fun c!6996 () C!19700)

(declare-fun derivativeStep!2900 (Regex!9757 C!19700) Regex!9757)

(assert (=> b!3169069 (= res!1288513 (= res!14113 (derivativeStep!2900 r!4733 c!6996)))))

(declare-fun e!1973828 () Bool)

(declare-fun b!3169070 () Bool)

(assert (=> b!3169070 (= e!1973828 (= res!14113 (derivativeStep!2900 r!4733 c!6996)))))

(declare-fun b!3169071 () Bool)

(declare-fun tp!999593 () Bool)

(declare-fun tp!999599 () Bool)

(assert (=> b!3169071 (= e!1973831 (and tp!999593 tp!999599))))

(declare-fun b!3169072 () Bool)

(assert (=> b!3169072 (= e!1973823 false)))

(declare-fun lt!1065433 () Bool)

(assert (=> b!3169072 (= lt!1065433 e!1973828)))

(declare-fun res!1288514 () Bool)

(assert (=> b!3169072 (=> (not res!1288514) (not e!1973828))))

(declare-fun validRegex!4473 (Regex!9757) Bool)

(assert (=> b!3169072 (= res!1288514 (validRegex!4473 r!4733))))

(declare-fun b!3169073 () Bool)

(declare-fun e!1973832 () Bool)

(declare-fun tp!999589 () Bool)

(declare-fun mapRes!18944 () Bool)

(assert (=> b!3169073 (= e!1973832 (and tp!999589 mapRes!18944))))

(declare-fun condMapEmpty!18944 () Bool)

(declare-fun mapDefault!18944 () List!35594)

(assert (=> b!3169073 (= condMapEmpty!18944 (= (arr!6646 (_values!4459 (v!35187 (underlying!8585 (v!35188 (underlying!8586 (cache!4230 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35594)) mapDefault!18944)))))

(declare-fun b!3169074 () Bool)

(declare-fun e!1973830 () Bool)

(declare-fun e!1973824 () Bool)

(declare-fun lt!1065434 () MutLongMap!4178)

(get-info :version)

(assert (=> b!3169074 (= e!1973830 (and e!1973824 ((_ is LongMap!4178) lt!1065434)))))

(assert (=> b!3169074 (= lt!1065434 (v!35188 (underlying!8586 (cache!4230 thiss!28524))))))

(declare-fun b!3169075 () Bool)

(declare-fun tp!999590 () Bool)

(declare-fun tp!999598 () Bool)

(assert (=> b!3169075 (= e!1973826 (and tp!999590 tp!999598))))

(declare-fun b!3169076 () Bool)

(declare-fun e!1973827 () Bool)

(declare-fun e!1973822 () Bool)

(assert (=> b!3169076 (= e!1973827 e!1973822)))

(declare-fun b!3169077 () Bool)

(assert (=> b!3169077 (= e!1973824 e!1973829)))

(declare-fun mapNonEmpty!18944 () Bool)

(declare-fun tp!999586 () Bool)

(declare-fun tp!999591 () Bool)

(assert (=> mapNonEmpty!18944 (= mapRes!18944 (and tp!999586 tp!999591))))

(declare-fun mapKey!18944 () (_ BitVec 32))

(declare-fun mapValue!18944 () List!35594)

(declare-fun mapRest!18944 () (Array (_ BitVec 32) List!35594))

(assert (=> mapNonEmpty!18944 (= (arr!6646 (_values!4459 (v!35187 (underlying!8585 (v!35188 (underlying!8586 (cache!4230 thiss!28524))))))) (store mapRest!18944 mapKey!18944 mapValue!18944))))

(declare-fun b!3169078 () Bool)

(declare-fun res!1288516 () Bool)

(assert (=> b!3169078 (=> (not res!1288516) (not e!1973823))))

(assert (=> b!3169078 (= res!1288516 (validRegex!4473 r!4733))))

(declare-fun tp!999595 () Bool)

(declare-fun tp!999588 () Bool)

(declare-fun array_inv!4764 (array!14932) Bool)

(declare-fun array_inv!4765 (array!14930) Bool)

(assert (=> b!3169079 (= e!1973821 (and tp!999587 tp!999588 tp!999595 (array_inv!4764 (_keys!4478 (v!35187 (underlying!8585 (v!35188 (underlying!8586 (cache!4230 thiss!28524))))))) (array_inv!4765 (_values!4459 (v!35187 (underlying!8585 (v!35188 (underlying!8586 (cache!4230 thiss!28524))))))) e!1973832))))

(declare-fun b!3169080 () Bool)

(assert (=> b!3169080 (= e!1973831 tp_is_empty!17077)))

(declare-fun res!1288511 () Bool)

(assert (=> start!296864 (=> (not res!1288511) (not e!1973823))))

(declare-fun validCacheMap!68 (MutableMap!4084) Bool)

(assert (=> start!296864 (= res!1288511 (validCacheMap!68 (cache!4230 thiss!28524)))))

(assert (=> start!296864 e!1973823))

(declare-fun inv!48158 (Cache!438) Bool)

(assert (=> start!296864 (and (inv!48158 thiss!28524) e!1973827)))

(assert (=> start!296864 e!1973826))

(assert (=> start!296864 e!1973831))

(assert (=> start!296864 tp_is_empty!17077))

(declare-fun b!3169081 () Bool)

(declare-fun tp!999583 () Bool)

(declare-fun tp!999592 () Bool)

(assert (=> b!3169081 (= e!1973826 (and tp!999583 tp!999592))))

(declare-fun b!3169082 () Bool)

(declare-fun res!1288512 () Bool)

(assert (=> b!3169082 (=> (not res!1288512) (not e!1973823))))

(assert (=> b!3169082 (= res!1288512 ((_ is HashMap!4084) (cache!4230 thiss!28524)))))

(declare-fun b!3169083 () Bool)

(declare-fun res!1288510 () Bool)

(assert (=> b!3169083 (=> (not res!1288510) (not e!1973823))))

(declare-fun lambda!115925 () Int)

(declare-fun forall!7153 (List!35594 Int) Bool)

(declare-datatypes ((ListMap!1315 0))(
  ( (ListMap!1316 (toList!2066 List!35594)) )
))
(declare-fun map!7920 (MutableMap!4084) ListMap!1315)

(assert (=> b!3169083 (= res!1288510 (forall!7153 (toList!2066 (map!7920 (cache!4230 thiss!28524))) lambda!115925))))

(declare-fun b!3169084 () Bool)

(declare-fun tp!999597 () Bool)

(declare-fun tp!999584 () Bool)

(assert (=> b!3169084 (= e!1973831 (and tp!999597 tp!999584))))

(assert (=> b!3169085 (= e!1973822 (and e!1973830 tp!999585))))

(declare-fun mapIsEmpty!18944 () Bool)

(assert (=> mapIsEmpty!18944 mapRes!18944))

(assert (= (and start!296864 res!1288511) b!3169078))

(assert (= (and b!3169078 res!1288516) b!3169069))

(assert (= (and b!3169069 res!1288513) b!3169082))

(assert (= (and b!3169082 res!1288512) b!3169067))

(assert (= (and b!3169067 res!1288515) b!3169083))

(assert (= (and b!3169083 res!1288510) b!3169072))

(assert (= (and b!3169072 res!1288514) b!3169070))

(assert (= (and b!3169073 condMapEmpty!18944) mapIsEmpty!18944))

(assert (= (and b!3169073 (not condMapEmpty!18944)) mapNonEmpty!18944))

(assert (= b!3169079 b!3169073))

(assert (= b!3169065 b!3169079))

(assert (= b!3169077 b!3169065))

(assert (= (and b!3169074 ((_ is LongMap!4178) (v!35188 (underlying!8586 (cache!4230 thiss!28524))))) b!3169077))

(assert (= b!3169085 b!3169074))

(assert (= (and b!3169076 ((_ is HashMap!4084) (cache!4230 thiss!28524))) b!3169085))

(assert (= start!296864 b!3169076))

(assert (= (and start!296864 ((_ is ElementMatch!9757) r!4733)) b!3169068))

(assert (= (and start!296864 ((_ is Concat!15078) r!4733)) b!3169081))

(assert (= (and start!296864 ((_ is Star!9757) r!4733)) b!3169064))

(assert (= (and start!296864 ((_ is Union!9757) r!4733)) b!3169075))

(assert (= (and start!296864 ((_ is ElementMatch!9757) res!14113)) b!3169080))

(assert (= (and start!296864 ((_ is Concat!15078) res!14113)) b!3169084))

(assert (= (and start!296864 ((_ is Star!9757) res!14113)) b!3169066))

(assert (= (and start!296864 ((_ is Union!9757) res!14113)) b!3169071))

(declare-fun m!3429215 () Bool)

(assert (=> start!296864 m!3429215))

(declare-fun m!3429217 () Bool)

(assert (=> start!296864 m!3429217))

(declare-fun m!3429219 () Bool)

(assert (=> b!3169079 m!3429219))

(declare-fun m!3429221 () Bool)

(assert (=> b!3169079 m!3429221))

(declare-fun m!3429223 () Bool)

(assert (=> b!3169070 m!3429223))

(declare-fun m!3429225 () Bool)

(assert (=> b!3169067 m!3429225))

(declare-fun m!3429227 () Bool)

(assert (=> mapNonEmpty!18944 m!3429227))

(declare-fun m!3429229 () Bool)

(assert (=> b!3169072 m!3429229))

(assert (=> b!3169069 m!3429223))

(assert (=> b!3169078 m!3429229))

(declare-fun m!3429231 () Bool)

(assert (=> b!3169083 m!3429231))

(declare-fun m!3429233 () Bool)

(assert (=> b!3169083 m!3429233))

(check-sat (not b!3169083) (not b!3169070) (not b!3169069) (not b!3169072) (not b!3169079) (not start!296864) (not b_next!83899) (not b!3169067) b_and!209473 b_and!209471 (not b!3169066) (not b!3169073) (not b!3169078) (not b!3169075) (not mapNonEmpty!18944) (not b!3169071) (not b!3169084) (not b!3169064) tp_is_empty!17077 (not b_next!83897) (not b!3169081))
(check-sat b_and!209473 b_and!209471 (not b_next!83897) (not b_next!83899))
