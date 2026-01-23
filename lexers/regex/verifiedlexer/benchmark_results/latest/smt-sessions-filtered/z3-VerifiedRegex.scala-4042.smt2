; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218028 () Bool)

(assert start!218028)

(declare-fun b!2237377 () Bool)

(declare-fun b_free!64913 () Bool)

(declare-fun b_next!65617 () Bool)

(assert (=> b!2237377 (= b_free!64913 (not b_next!65617))))

(declare-fun tp!703773 () Bool)

(declare-fun b_and!174909 () Bool)

(assert (=> b!2237377 (= tp!703773 b_and!174909)))

(declare-fun b!2237370 () Bool)

(declare-fun b_free!64915 () Bool)

(declare-fun b_next!65619 () Bool)

(assert (=> b!2237370 (= b_free!64915 (not b_next!65619))))

(declare-fun tp!703777 () Bool)

(declare-fun b_and!174911 () Bool)

(assert (=> b!2237370 (= tp!703777 b_and!174911)))

(declare-fun e!1430136 () Bool)

(declare-fun e!1430137 () Bool)

(assert (=> b!2237370 (= e!1430136 (and e!1430137 tp!703777))))

(declare-fun b!2237371 () Bool)

(declare-fun e!1430134 () Bool)

(declare-fun e!1430133 () Bool)

(assert (=> b!2237371 (= e!1430134 e!1430133)))

(declare-fun res!957043 () Bool)

(declare-fun e!1430132 () Bool)

(assert (=> start!218028 (=> (not res!957043) (not e!1430132))))

(declare-datatypes ((C!13096 0))(
  ( (C!13097 (val!7596 Int)) )
))
(declare-datatypes ((Regex!6475 0))(
  ( (ElementMatch!6475 (c!356488 C!13096)) (Concat!10813 (regOne!13462 Regex!6475) (regTwo!13462 Regex!6475)) (EmptyExpr!6475) (Star!6475 (reg!6804 Regex!6475)) (EmptyLang!6475) (Union!6475 (regOne!13463 Regex!6475) (regTwo!13463 Regex!6475)) )
))
(declare-datatypes ((List!26432 0))(
  ( (Nil!26338) (Cons!26338 (h!31739 Regex!6475) (t!199856 List!26432)) )
))
(declare-datatypes ((Context!4046 0))(
  ( (Context!4047 (exprs!2523 List!26432)) )
))
(declare-datatypes ((tuple3!4022 0))(
  ( (tuple3!4023 (_1!15349 Regex!6475) (_2!15349 Context!4046) (_3!2481 C!13096)) )
))
(declare-datatypes ((Hashable!3023 0))(
  ( (HashableExt!3022 (__x!17565 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25736 0))(
  ( (tuple2!25737 (_1!15350 tuple3!4022) (_2!15350 (InoxSet Context!4046))) )
))
(declare-datatypes ((List!26433 0))(
  ( (Nil!26339) (Cons!26339 (h!31740 tuple2!25736) (t!199857 List!26433)) )
))
(declare-datatypes ((array!10838 0))(
  ( (array!10839 (arr!4813 (Array (_ BitVec 32) List!26433)) (size!20594 (_ BitVec 32))) )
))
(declare-datatypes ((array!10840 0))(
  ( (array!10841 (arr!4814 (Array (_ BitVec 32) (_ BitVec 64))) (size!20595 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6226 0))(
  ( (LongMapFixedSize!6227 (defaultEntry!3478 Int) (mask!7704 (_ BitVec 32)) (extraKeys!3361 (_ BitVec 32)) (zeroValue!3371 List!26433) (minValue!3371 List!26433) (_size!6273 (_ BitVec 32)) (_keys!3410 array!10840) (_values!3393 array!10838) (_vacant!3174 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12269 0))(
  ( (Cell!12270 (v!29951 LongMapFixedSize!6226)) )
))
(declare-datatypes ((MutLongMap!3113 0))(
  ( (LongMap!3113 (underlying!6427 Cell!12269)) (MutLongMapExt!3112 (__x!17566 Int)) )
))
(declare-datatypes ((Cell!12271 0))(
  ( (Cell!12272 (v!29952 MutLongMap!3113)) )
))
(declare-datatypes ((MutableMap!3023 0))(
  ( (MutableMapExt!3022 (__x!17567 Int)) (HashMap!3023 (underlying!6428 Cell!12271) (hashF!4946 Hashable!3023) (_size!6274 (_ BitVec 32)) (defaultValue!3185 Int)) )
))
(declare-datatypes ((CacheDown!2092 0))(
  ( (CacheDown!2093 (cache!3404 MutableMap!3023)) )
))
(declare-fun thiss!28743 () CacheDown!2092)

(declare-fun validCacheMapDown!323 (MutableMap!3023) Bool)

(assert (=> start!218028 (= res!957043 (validCacheMapDown!323 (cache!3404 thiss!28743)))))

(assert (=> start!218028 e!1430132))

(declare-fun e!1430130 () Bool)

(declare-fun inv!35777 (CacheDown!2092) Bool)

(assert (=> start!218028 (and (inv!35777 thiss!28743) e!1430130)))

(declare-fun b!2237372 () Bool)

(declare-fun res!957042 () Bool)

(assert (=> b!2237372 (=> (not res!957042) (not e!1430132))))

(get-info :version)

(assert (=> b!2237372 (= res!957042 ((_ is HashMap!3023) (cache!3404 thiss!28743)))))

(declare-fun b!2237373 () Bool)

(declare-fun valid!2348 (MutableMap!3023) Bool)

(assert (=> b!2237373 (= e!1430132 (not (valid!2348 (cache!3404 thiss!28743))))))

(declare-fun b!2237374 () Bool)

(declare-fun e!1430135 () Bool)

(assert (=> b!2237374 (= e!1430135 e!1430134)))

(declare-fun b!2237375 () Bool)

(declare-fun e!1430138 () Bool)

(declare-fun tp!703779 () Bool)

(declare-fun mapRes!14618 () Bool)

(assert (=> b!2237375 (= e!1430138 (and tp!703779 mapRes!14618))))

(declare-fun condMapEmpty!14618 () Bool)

(declare-fun mapDefault!14618 () List!26433)

(assert (=> b!2237375 (= condMapEmpty!14618 (= (arr!4813 (_values!3393 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26433)) mapDefault!14618)))))

(declare-fun mapIsEmpty!14618 () Bool)

(assert (=> mapIsEmpty!14618 mapRes!14618))

(declare-fun b!2237376 () Bool)

(declare-fun lt!832260 () MutLongMap!3113)

(assert (=> b!2237376 (= e!1430137 (and e!1430135 ((_ is LongMap!3113) lt!832260)))))

(assert (=> b!2237376 (= lt!832260 (v!29952 (underlying!6428 (cache!3404 thiss!28743))))))

(declare-fun tp!703776 () Bool)

(declare-fun tp!703778 () Bool)

(declare-fun array_inv!3457 (array!10840) Bool)

(declare-fun array_inv!3458 (array!10838) Bool)

(assert (=> b!2237377 (= e!1430133 (and tp!703773 tp!703776 tp!703778 (array_inv!3457 (_keys!3410 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743))))))) (array_inv!3458 (_values!3393 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743))))))) e!1430138))))

(declare-fun b!2237378 () Bool)

(assert (=> b!2237378 (= e!1430130 e!1430136)))

(declare-fun mapNonEmpty!14618 () Bool)

(declare-fun tp!703774 () Bool)

(declare-fun tp!703775 () Bool)

(assert (=> mapNonEmpty!14618 (= mapRes!14618 (and tp!703774 tp!703775))))

(declare-fun mapValue!14618 () List!26433)

(declare-fun mapRest!14618 () (Array (_ BitVec 32) List!26433))

(declare-fun mapKey!14618 () (_ BitVec 32))

(assert (=> mapNonEmpty!14618 (= (arr!4813 (_values!3393 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743))))))) (store mapRest!14618 mapKey!14618 mapValue!14618))))

(assert (= (and start!218028 res!957043) b!2237372))

(assert (= (and b!2237372 res!957042) b!2237373))

(assert (= (and b!2237375 condMapEmpty!14618) mapIsEmpty!14618))

(assert (= (and b!2237375 (not condMapEmpty!14618)) mapNonEmpty!14618))

(assert (= b!2237377 b!2237375))

(assert (= b!2237371 b!2237377))

(assert (= b!2237374 b!2237371))

(assert (= (and b!2237376 ((_ is LongMap!3113) (v!29952 (underlying!6428 (cache!3404 thiss!28743))))) b!2237374))

(assert (= b!2237370 b!2237376))

(assert (= (and b!2237378 ((_ is HashMap!3023) (cache!3404 thiss!28743))) b!2237370))

(assert (= start!218028 b!2237378))

(declare-fun m!2670876 () Bool)

(assert (=> start!218028 m!2670876))

(declare-fun m!2670878 () Bool)

(assert (=> start!218028 m!2670878))

(declare-fun m!2670880 () Bool)

(assert (=> b!2237373 m!2670880))

(declare-fun m!2670882 () Bool)

(assert (=> b!2237377 m!2670882))

(declare-fun m!2670884 () Bool)

(assert (=> b!2237377 m!2670884))

(declare-fun m!2670886 () Bool)

(assert (=> mapNonEmpty!14618 m!2670886))

(check-sat b_and!174909 (not b!2237375) (not b_next!65619) (not mapNonEmpty!14618) (not b_next!65617) (not b!2237373) (not start!218028) b_and!174911 (not b!2237377))
(check-sat b_and!174909 b_and!174911 (not b_next!65619) (not b_next!65617))
(get-model)

(declare-fun d!665527 () Bool)

(declare-fun res!957048 () Bool)

(declare-fun e!1430141 () Bool)

(assert (=> d!665527 (=> (not res!957048) (not e!1430141))))

(declare-fun valid!2349 (MutLongMap!3113) Bool)

(assert (=> d!665527 (= res!957048 (valid!2349 (v!29952 (underlying!6428 (cache!3404 thiss!28743)))))))

(assert (=> d!665527 (= (valid!2348 (cache!3404 thiss!28743)) e!1430141)))

(declare-fun b!2237383 () Bool)

(declare-fun res!957049 () Bool)

(assert (=> b!2237383 (=> (not res!957049) (not e!1430141))))

(declare-fun lambda!84550 () Int)

(declare-datatypes ((tuple2!25738 0))(
  ( (tuple2!25739 (_1!15351 (_ BitVec 64)) (_2!15351 List!26433)) )
))
(declare-datatypes ((List!26434 0))(
  ( (Nil!26340) (Cons!26340 (h!31741 tuple2!25738) (t!199858 List!26434)) )
))
(declare-fun forall!5408 (List!26434 Int) Bool)

(declare-datatypes ((ListLongMap!331 0))(
  ( (ListLongMap!332 (toList!1360 List!26434)) )
))
(declare-fun map!5419 (MutLongMap!3113) ListLongMap!331)

(assert (=> b!2237383 (= res!957049 (forall!5408 (toList!1360 (map!5419 (v!29952 (underlying!6428 (cache!3404 thiss!28743))))) lambda!84550))))

(declare-fun b!2237384 () Bool)

(declare-fun allKeysSameHashInMap!109 (ListLongMap!331 Hashable!3023) Bool)

(assert (=> b!2237384 (= e!1430141 (allKeysSameHashInMap!109 (map!5419 (v!29952 (underlying!6428 (cache!3404 thiss!28743)))) (hashF!4946 (cache!3404 thiss!28743))))))

(assert (= (and d!665527 res!957048) b!2237383))

(assert (= (and b!2237383 res!957049) b!2237384))

(declare-fun m!2670888 () Bool)

(assert (=> d!665527 m!2670888))

(declare-fun m!2670890 () Bool)

(assert (=> b!2237383 m!2670890))

(declare-fun m!2670892 () Bool)

(assert (=> b!2237383 m!2670892))

(assert (=> b!2237384 m!2670890))

(assert (=> b!2237384 m!2670890))

(declare-fun m!2670894 () Bool)

(assert (=> b!2237384 m!2670894))

(assert (=> b!2237373 d!665527))

(declare-fun d!665529 () Bool)

(declare-fun res!957056 () Bool)

(declare-fun e!1430146 () Bool)

(assert (=> d!665529 (=> (not res!957056) (not e!1430146))))

(assert (=> d!665529 (= res!957056 (valid!2348 (cache!3404 thiss!28743)))))

(assert (=> d!665529 (= (validCacheMapDown!323 (cache!3404 thiss!28743)) e!1430146)))

(declare-fun b!2237391 () Bool)

(declare-fun res!957057 () Bool)

(assert (=> b!2237391 (=> (not res!957057) (not e!1430146))))

(declare-fun invariantList!376 (List!26433) Bool)

(declare-datatypes ((ListMap!843 0))(
  ( (ListMap!844 (toList!1361 List!26433)) )
))
(declare-fun map!5420 (MutableMap!3023) ListMap!843)

(assert (=> b!2237391 (= res!957057 (invariantList!376 (toList!1361 (map!5420 (cache!3404 thiss!28743)))))))

(declare-fun b!2237392 () Bool)

(declare-fun lambda!84553 () Int)

(declare-fun forall!5409 (List!26433 Int) Bool)

(assert (=> b!2237392 (= e!1430146 (forall!5409 (toList!1361 (map!5420 (cache!3404 thiss!28743))) lambda!84553))))

(assert (= (and d!665529 res!957056) b!2237391))

(assert (= (and b!2237391 res!957057) b!2237392))

(assert (=> d!665529 m!2670880))

(declare-fun m!2670897 () Bool)

(assert (=> b!2237391 m!2670897))

(declare-fun m!2670899 () Bool)

(assert (=> b!2237391 m!2670899))

(assert (=> b!2237392 m!2670897))

(declare-fun m!2670901 () Bool)

(assert (=> b!2237392 m!2670901))

(assert (=> start!218028 d!665529))

(declare-fun d!665531 () Bool)

(declare-fun res!957060 () Bool)

(declare-fun e!1430149 () Bool)

(assert (=> d!665531 (=> (not res!957060) (not e!1430149))))

(assert (=> d!665531 (= res!957060 ((_ is HashMap!3023) (cache!3404 thiss!28743)))))

(assert (=> d!665531 (= (inv!35777 thiss!28743) e!1430149)))

(declare-fun b!2237395 () Bool)

(assert (=> b!2237395 (= e!1430149 (validCacheMapDown!323 (cache!3404 thiss!28743)))))

(assert (= (and d!665531 res!957060) b!2237395))

(assert (=> b!2237395 m!2670876))

(assert (=> start!218028 d!665531))

(declare-fun d!665533 () Bool)

(assert (=> d!665533 (= (array_inv!3457 (_keys!3410 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743))))))) (bvsge (size!20595 (_keys!3410 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2237377 d!665533))

(declare-fun d!665535 () Bool)

(assert (=> d!665535 (= (array_inv!3458 (_values!3393 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743))))))) (bvsge (size!20594 (_values!3393 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2237377 d!665535))

(declare-fun tp!703792 () Bool)

(declare-fun e!1430157 () Bool)

(declare-fun setRes!20428 () Bool)

(declare-fun tp!703791 () Bool)

(declare-fun tp_is_empty!10171 () Bool)

(declare-fun e!1430158 () Bool)

(declare-fun b!2237404 () Bool)

(declare-fun inv!35778 (Context!4046) Bool)

(assert (=> b!2237404 (= e!1430158 (and tp!703792 (inv!35778 (_2!15349 (_1!15350 (h!31740 mapDefault!14618)))) e!1430157 tp_is_empty!10171 setRes!20428 tp!703791))))

(declare-fun condSetEmpty!20428 () Bool)

(assert (=> b!2237404 (= condSetEmpty!20428 (= (_2!15350 (h!31740 mapDefault!14618)) ((as const (Array Context!4046 Bool)) false)))))

(declare-fun setIsEmpty!20428 () Bool)

(assert (=> setIsEmpty!20428 setRes!20428))

(assert (=> b!2237375 (= tp!703779 e!1430158)))

(declare-fun b!2237405 () Bool)

(declare-fun e!1430156 () Bool)

(declare-fun tp!703794 () Bool)

(assert (=> b!2237405 (= e!1430156 tp!703794)))

(declare-fun b!2237406 () Bool)

(declare-fun tp!703790 () Bool)

(assert (=> b!2237406 (= e!1430157 tp!703790)))

(declare-fun setElem!20428 () Context!4046)

(declare-fun setNonEmpty!20428 () Bool)

(declare-fun tp!703793 () Bool)

(assert (=> setNonEmpty!20428 (= setRes!20428 (and tp!703793 (inv!35778 setElem!20428) e!1430156))))

(declare-fun setRest!20428 () (InoxSet Context!4046))

(assert (=> setNonEmpty!20428 (= (_2!15350 (h!31740 mapDefault!14618)) ((_ map or) (store ((as const (Array Context!4046 Bool)) false) setElem!20428 true) setRest!20428))))

(assert (= b!2237404 b!2237406))

(assert (= (and b!2237404 condSetEmpty!20428) setIsEmpty!20428))

(assert (= (and b!2237404 (not condSetEmpty!20428)) setNonEmpty!20428))

(assert (= setNonEmpty!20428 b!2237405))

(assert (= (and b!2237375 ((_ is Cons!26339) mapDefault!14618)) b!2237404))

(declare-fun m!2670903 () Bool)

(assert (=> b!2237404 m!2670903))

(declare-fun m!2670905 () Bool)

(assert (=> setNonEmpty!20428 m!2670905))

(declare-fun b!2237421 () Bool)

(declare-fun e!1430173 () Bool)

(declare-fun tp!703818 () Bool)

(assert (=> b!2237421 (= e!1430173 tp!703818)))

(declare-fun mapIsEmpty!14621 () Bool)

(declare-fun mapRes!14621 () Bool)

(assert (=> mapIsEmpty!14621 mapRes!14621))

(declare-fun setIsEmpty!20433 () Bool)

(declare-fun setRes!20433 () Bool)

(assert (=> setIsEmpty!20433 setRes!20433))

(declare-fun e!1430171 () Bool)

(declare-fun b!2237422 () Bool)

(declare-fun mapValue!14621 () List!26433)

(declare-fun tp!703822 () Bool)

(declare-fun tp!703824 () Bool)

(declare-fun e!1430174 () Bool)

(assert (=> b!2237422 (= e!1430174 (and tp!703824 (inv!35778 (_2!15349 (_1!15350 (h!31740 mapValue!14621)))) e!1430171 tp_is_empty!10171 setRes!20433 tp!703822))))

(declare-fun condSetEmpty!20433 () Bool)

(assert (=> b!2237422 (= condSetEmpty!20433 (= (_2!15350 (h!31740 mapValue!14621)) ((as const (Array Context!4046 Bool)) false)))))

(declare-fun condMapEmpty!14621 () Bool)

(declare-fun mapDefault!14621 () List!26433)

(assert (=> mapNonEmpty!14618 (= condMapEmpty!14621 (= mapRest!14618 ((as const (Array (_ BitVec 32) List!26433)) mapDefault!14621)))))

(declare-fun e!1430172 () Bool)

(assert (=> mapNonEmpty!14618 (= tp!703774 (and e!1430172 mapRes!14621))))

(declare-fun b!2237423 () Bool)

(declare-fun tp!703817 () Bool)

(assert (=> b!2237423 (= e!1430171 tp!703817)))

(declare-fun e!1430176 () Bool)

(declare-fun tp!703820 () Bool)

(declare-fun setElem!20434 () Context!4046)

(declare-fun setNonEmpty!20433 () Bool)

(assert (=> setNonEmpty!20433 (= setRes!20433 (and tp!703820 (inv!35778 setElem!20434) e!1430176))))

(declare-fun setRest!20433 () (InoxSet Context!4046))

(assert (=> setNonEmpty!20433 (= (_2!15350 (h!31740 mapValue!14621)) ((_ map or) (store ((as const (Array Context!4046 Bool)) false) setElem!20434 true) setRest!20433))))

(declare-fun b!2237424 () Bool)

(declare-fun e!1430175 () Bool)

(declare-fun tp!703821 () Bool)

(assert (=> b!2237424 (= e!1430175 tp!703821)))

(declare-fun mapNonEmpty!14621 () Bool)

(declare-fun tp!703827 () Bool)

(assert (=> mapNonEmpty!14621 (= mapRes!14621 (and tp!703827 e!1430174))))

(declare-fun mapRest!14621 () (Array (_ BitVec 32) List!26433))

(declare-fun mapKey!14621 () (_ BitVec 32))

(assert (=> mapNonEmpty!14621 (= mapRest!14618 (store mapRest!14621 mapKey!14621 mapValue!14621))))

(declare-fun b!2237425 () Bool)

(declare-fun tp!703823 () Bool)

(assert (=> b!2237425 (= e!1430176 tp!703823)))

(declare-fun setIsEmpty!20434 () Bool)

(declare-fun setRes!20434 () Bool)

(assert (=> setIsEmpty!20434 setRes!20434))

(declare-fun tp!703826 () Bool)

(declare-fun b!2237426 () Bool)

(declare-fun tp!703825 () Bool)

(assert (=> b!2237426 (= e!1430172 (and tp!703826 (inv!35778 (_2!15349 (_1!15350 (h!31740 mapDefault!14621)))) e!1430173 tp_is_empty!10171 setRes!20434 tp!703825))))

(declare-fun condSetEmpty!20434 () Bool)

(assert (=> b!2237426 (= condSetEmpty!20434 (= (_2!15350 (h!31740 mapDefault!14621)) ((as const (Array Context!4046 Bool)) false)))))

(declare-fun setNonEmpty!20434 () Bool)

(declare-fun tp!703819 () Bool)

(declare-fun setElem!20433 () Context!4046)

(assert (=> setNonEmpty!20434 (= setRes!20434 (and tp!703819 (inv!35778 setElem!20433) e!1430175))))

(declare-fun setRest!20434 () (InoxSet Context!4046))

(assert (=> setNonEmpty!20434 (= (_2!15350 (h!31740 mapDefault!14621)) ((_ map or) (store ((as const (Array Context!4046 Bool)) false) setElem!20433 true) setRest!20434))))

(assert (= (and mapNonEmpty!14618 condMapEmpty!14621) mapIsEmpty!14621))

(assert (= (and mapNonEmpty!14618 (not condMapEmpty!14621)) mapNonEmpty!14621))

(assert (= b!2237422 b!2237423))

(assert (= (and b!2237422 condSetEmpty!20433) setIsEmpty!20433))

(assert (= (and b!2237422 (not condSetEmpty!20433)) setNonEmpty!20433))

(assert (= setNonEmpty!20433 b!2237425))

(assert (= (and mapNonEmpty!14621 ((_ is Cons!26339) mapValue!14621)) b!2237422))

(assert (= b!2237426 b!2237421))

(assert (= (and b!2237426 condSetEmpty!20434) setIsEmpty!20434))

(assert (= (and b!2237426 (not condSetEmpty!20434)) setNonEmpty!20434))

(assert (= setNonEmpty!20434 b!2237424))

(assert (= (and mapNonEmpty!14618 ((_ is Cons!26339) mapDefault!14621)) b!2237426))

(declare-fun m!2670907 () Bool)

(assert (=> mapNonEmpty!14621 m!2670907))

(declare-fun m!2670909 () Bool)

(assert (=> setNonEmpty!20434 m!2670909))

(declare-fun m!2670911 () Bool)

(assert (=> setNonEmpty!20433 m!2670911))

(declare-fun m!2670913 () Bool)

(assert (=> b!2237422 m!2670913))

(declare-fun m!2670915 () Bool)

(assert (=> b!2237426 m!2670915))

(declare-fun setRes!20435 () Bool)

(declare-fun b!2237427 () Bool)

(declare-fun tp!703829 () Bool)

(declare-fun tp!703830 () Bool)

(declare-fun e!1430179 () Bool)

(declare-fun e!1430178 () Bool)

(assert (=> b!2237427 (= e!1430179 (and tp!703830 (inv!35778 (_2!15349 (_1!15350 (h!31740 mapValue!14618)))) e!1430178 tp_is_empty!10171 setRes!20435 tp!703829))))

(declare-fun condSetEmpty!20435 () Bool)

(assert (=> b!2237427 (= condSetEmpty!20435 (= (_2!15350 (h!31740 mapValue!14618)) ((as const (Array Context!4046 Bool)) false)))))

(declare-fun setIsEmpty!20435 () Bool)

(assert (=> setIsEmpty!20435 setRes!20435))

(assert (=> mapNonEmpty!14618 (= tp!703775 e!1430179)))

(declare-fun b!2237428 () Bool)

(declare-fun e!1430177 () Bool)

(declare-fun tp!703832 () Bool)

(assert (=> b!2237428 (= e!1430177 tp!703832)))

(declare-fun b!2237429 () Bool)

(declare-fun tp!703828 () Bool)

(assert (=> b!2237429 (= e!1430178 tp!703828)))

(declare-fun setNonEmpty!20435 () Bool)

(declare-fun tp!703831 () Bool)

(declare-fun setElem!20435 () Context!4046)

(assert (=> setNonEmpty!20435 (= setRes!20435 (and tp!703831 (inv!35778 setElem!20435) e!1430177))))

(declare-fun setRest!20435 () (InoxSet Context!4046))

(assert (=> setNonEmpty!20435 (= (_2!15350 (h!31740 mapValue!14618)) ((_ map or) (store ((as const (Array Context!4046 Bool)) false) setElem!20435 true) setRest!20435))))

(assert (= b!2237427 b!2237429))

(assert (= (and b!2237427 condSetEmpty!20435) setIsEmpty!20435))

(assert (= (and b!2237427 (not condSetEmpty!20435)) setNonEmpty!20435))

(assert (= setNonEmpty!20435 b!2237428))

(assert (= (and mapNonEmpty!14618 ((_ is Cons!26339) mapValue!14618)) b!2237427))

(declare-fun m!2670917 () Bool)

(assert (=> b!2237427 m!2670917))

(declare-fun m!2670919 () Bool)

(assert (=> setNonEmpty!20435 m!2670919))

(declare-fun e!1430181 () Bool)

(declare-fun tp!703835 () Bool)

(declare-fun e!1430182 () Bool)

(declare-fun setRes!20436 () Bool)

(declare-fun b!2237430 () Bool)

(declare-fun tp!703834 () Bool)

(assert (=> b!2237430 (= e!1430182 (and tp!703835 (inv!35778 (_2!15349 (_1!15350 (h!31740 (zeroValue!3371 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743)))))))))) e!1430181 tp_is_empty!10171 setRes!20436 tp!703834))))

(declare-fun condSetEmpty!20436 () Bool)

(assert (=> b!2237430 (= condSetEmpty!20436 (= (_2!15350 (h!31740 (zeroValue!3371 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743)))))))) ((as const (Array Context!4046 Bool)) false)))))

(declare-fun setIsEmpty!20436 () Bool)

(assert (=> setIsEmpty!20436 setRes!20436))

(assert (=> b!2237377 (= tp!703776 e!1430182)))

(declare-fun b!2237431 () Bool)

(declare-fun e!1430180 () Bool)

(declare-fun tp!703837 () Bool)

(assert (=> b!2237431 (= e!1430180 tp!703837)))

(declare-fun b!2237432 () Bool)

(declare-fun tp!703833 () Bool)

(assert (=> b!2237432 (= e!1430181 tp!703833)))

(declare-fun tp!703836 () Bool)

(declare-fun setNonEmpty!20436 () Bool)

(declare-fun setElem!20436 () Context!4046)

(assert (=> setNonEmpty!20436 (= setRes!20436 (and tp!703836 (inv!35778 setElem!20436) e!1430180))))

(declare-fun setRest!20436 () (InoxSet Context!4046))

(assert (=> setNonEmpty!20436 (= (_2!15350 (h!31740 (zeroValue!3371 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4046 Bool)) false) setElem!20436 true) setRest!20436))))

(assert (= b!2237430 b!2237432))

(assert (= (and b!2237430 condSetEmpty!20436) setIsEmpty!20436))

(assert (= (and b!2237430 (not condSetEmpty!20436)) setNonEmpty!20436))

(assert (= setNonEmpty!20436 b!2237431))

(assert (= (and b!2237377 ((_ is Cons!26339) (zeroValue!3371 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743)))))))) b!2237430))

(declare-fun m!2670921 () Bool)

(assert (=> b!2237430 m!2670921))

(declare-fun m!2670923 () Bool)

(assert (=> setNonEmpty!20436 m!2670923))

(declare-fun tp!703840 () Bool)

(declare-fun e!1430184 () Bool)

(declare-fun e!1430185 () Bool)

(declare-fun b!2237433 () Bool)

(declare-fun tp!703839 () Bool)

(declare-fun setRes!20437 () Bool)

(assert (=> b!2237433 (= e!1430185 (and tp!703840 (inv!35778 (_2!15349 (_1!15350 (h!31740 (minValue!3371 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743)))))))))) e!1430184 tp_is_empty!10171 setRes!20437 tp!703839))))

(declare-fun condSetEmpty!20437 () Bool)

(assert (=> b!2237433 (= condSetEmpty!20437 (= (_2!15350 (h!31740 (minValue!3371 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743)))))))) ((as const (Array Context!4046 Bool)) false)))))

(declare-fun setIsEmpty!20437 () Bool)

(assert (=> setIsEmpty!20437 setRes!20437))

(assert (=> b!2237377 (= tp!703778 e!1430185)))

(declare-fun b!2237434 () Bool)

(declare-fun e!1430183 () Bool)

(declare-fun tp!703842 () Bool)

(assert (=> b!2237434 (= e!1430183 tp!703842)))

(declare-fun b!2237435 () Bool)

(declare-fun tp!703838 () Bool)

(assert (=> b!2237435 (= e!1430184 tp!703838)))

(declare-fun setNonEmpty!20437 () Bool)

(declare-fun setElem!20437 () Context!4046)

(declare-fun tp!703841 () Bool)

(assert (=> setNonEmpty!20437 (= setRes!20437 (and tp!703841 (inv!35778 setElem!20437) e!1430183))))

(declare-fun setRest!20437 () (InoxSet Context!4046))

(assert (=> setNonEmpty!20437 (= (_2!15350 (h!31740 (minValue!3371 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4046 Bool)) false) setElem!20437 true) setRest!20437))))

(assert (= b!2237433 b!2237435))

(assert (= (and b!2237433 condSetEmpty!20437) setIsEmpty!20437))

(assert (= (and b!2237433 (not condSetEmpty!20437)) setNonEmpty!20437))

(assert (= setNonEmpty!20437 b!2237434))

(assert (= (and b!2237377 ((_ is Cons!26339) (minValue!3371 (v!29951 (underlying!6427 (v!29952 (underlying!6428 (cache!3404 thiss!28743)))))))) b!2237433))

(declare-fun m!2670925 () Bool)

(assert (=> b!2237433 m!2670925))

(declare-fun m!2670927 () Bool)

(assert (=> setNonEmpty!20437 m!2670927))

(check-sat (not b!2237392) (not b!2237421) (not b!2237431) b_and!174909 (not b!2237434) (not b_next!65619) (not b!2237433) (not mapNonEmpty!14621) (not b!2237406) (not b!2237435) (not b!2237427) (not b!2237384) (not b!2237405) (not b!2237422) (not b!2237424) (not setNonEmpty!20435) (not b!2237426) (not b!2237428) (not setNonEmpty!20436) (not b!2237383) (not b!2237395) b_and!174911 (not b!2237430) (not b!2237425) (not setNonEmpty!20434) (not b!2237432) (not b!2237429) (not setNonEmpty!20428) (not setNonEmpty!20433) (not b_next!65617) (not setNonEmpty!20437) (not d!665527) (not d!665529) (not b!2237391) tp_is_empty!10171 (not b!2237404) (not b!2237423))
(check-sat b_and!174909 b_and!174911 (not b_next!65619) (not b_next!65617))
