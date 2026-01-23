; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184018 () Bool)

(assert start!184018)

(declare-fun b!1845491 () Bool)

(declare-fun b_free!51567 () Bool)

(declare-fun b_next!52271 () Bool)

(assert (=> b!1845491 (= b_free!51567 (not b_next!52271))))

(declare-fun tp!521846 () Bool)

(declare-fun b_and!143717 () Bool)

(assert (=> b!1845491 (= tp!521846 b_and!143717)))

(declare-fun b!1845496 () Bool)

(declare-fun b_free!51569 () Bool)

(declare-fun b_next!52273 () Bool)

(assert (=> b!1845496 (= b_free!51569 (not b_next!52273))))

(declare-fun tp!521840 () Bool)

(declare-fun b_and!143719 () Bool)

(assert (=> b!1845496 (= tp!521840 b_and!143719)))

(declare-datatypes ((array!6396 0))(
  ( (array!6397 (arr!2841 (Array (_ BitVec 32) (_ BitVec 64))) (size!16110 (_ BitVec 32))) )
))
(declare-datatypes ((C!10132 0))(
  ( (C!10133 (val!5760 Int)) )
))
(declare-datatypes ((Regex!4991 0))(
  ( (ElementMatch!4991 (c!301310 C!10132)) (Concat!8757 (regOne!10494 Regex!4991) (regTwo!10494 Regex!4991)) (EmptyExpr!4991) (Star!4991 (reg!5320 Regex!4991)) (EmptyLang!4991) (Union!4991 (regOne!10495 Regex!4991) (regTwo!10495 Regex!4991)) )
))
(declare-datatypes ((List!20427 0))(
  ( (Nil!20355) (Cons!20355 (h!25756 Regex!4991) (t!172052 List!20427)) )
))
(declare-datatypes ((Context!1870 0))(
  ( (Context!1871 (exprs!1435 List!20427)) )
))
(declare-datatypes ((tuple2!19700 0))(
  ( (tuple2!19701 (_1!11252 Context!1870) (_2!11252 C!10132)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19702 0))(
  ( (tuple2!19703 (_1!11253 tuple2!19700) (_2!11253 (InoxSet Context!1870))) )
))
(declare-datatypes ((List!20428 0))(
  ( (Nil!20356) (Cons!20356 (h!25757 tuple2!19702) (t!172053 List!20428)) )
))
(declare-datatypes ((array!6398 0))(
  ( (array!6399 (arr!2842 (Array (_ BitVec 32) List!20428)) (size!16111 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3730 0))(
  ( (LongMapFixedSize!3731 (defaultEntry!2225 Int) (mask!5514 (_ BitVec 32)) (extraKeys!2112 (_ BitVec 32)) (zeroValue!2122 List!20428) (minValue!2122 List!20428) (_size!3811 (_ BitVec 32)) (_keys!2159 array!6396) (_values!2144 array!6398) (_vacant!1926 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7345 0))(
  ( (Cell!7346 (v!25880 LongMapFixedSize!3730)) )
))
(declare-datatypes ((MutLongMap!1865 0))(
  ( (LongMap!1865 (underlying!3943 Cell!7345)) (MutLongMapExt!1864 (__x!12817 Int)) )
))
(declare-datatypes ((Cell!7347 0))(
  ( (Cell!7348 (v!25881 MutLongMap!1865)) )
))
(declare-datatypes ((Hashable!1809 0))(
  ( (HashableExt!1808 (__x!12818 Int)) )
))
(declare-datatypes ((MutableMap!1809 0))(
  ( (MutableMapExt!1808 (__x!12819 Int)) (HashMap!1809 (underlying!3944 Cell!7347) (hashF!3728 Hashable!1809) (_size!3812 (_ BitVec 32)) (defaultValue!1969 Int)) )
))
(declare-datatypes ((CacheUp!1106 0))(
  ( (CacheUp!1107 (cache!2190 MutableMap!1809)) )
))
(declare-fun thiss!28598 () CacheUp!1106)

(declare-fun valid!1496 (CacheUp!1106) Bool)

(assert (=> start!184018 (not (valid!1496 thiss!28598))))

(declare-fun e!1179429 () Bool)

(declare-fun inv!26693 (CacheUp!1106) Bool)

(assert (=> start!184018 (and (inv!26693 thiss!28598) e!1179429)))

(declare-fun mapNonEmpty!8705 () Bool)

(declare-fun mapRes!8705 () Bool)

(declare-fun tp!521845 () Bool)

(declare-fun tp!521843 () Bool)

(assert (=> mapNonEmpty!8705 (= mapRes!8705 (and tp!521845 tp!521843))))

(declare-fun mapValue!8705 () List!20428)

(declare-fun mapRest!8705 () (Array (_ BitVec 32) List!20428))

(declare-fun mapKey!8705 () (_ BitVec 32))

(assert (=> mapNonEmpty!8705 (= (arr!2842 (_values!2144 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598))))))) (store mapRest!8705 mapKey!8705 mapValue!8705))))

(declare-fun b!1845490 () Bool)

(declare-fun e!1179428 () Bool)

(declare-fun tp!521842 () Bool)

(assert (=> b!1845490 (= e!1179428 (and tp!521842 mapRes!8705))))

(declare-fun condMapEmpty!8705 () Bool)

(declare-fun mapDefault!8705 () List!20428)

(assert (=> b!1845490 (= condMapEmpty!8705 (= (arr!2842 (_values!2144 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598))))))) ((as const (Array (_ BitVec 32) List!20428)) mapDefault!8705)))))

(declare-fun e!1179432 () Bool)

(declare-fun tp!521841 () Bool)

(declare-fun tp!521844 () Bool)

(declare-fun array_inv!2045 (array!6396) Bool)

(declare-fun array_inv!2046 (array!6398) Bool)

(assert (=> b!1845491 (= e!1179432 (and tp!521846 tp!521841 tp!521844 (array_inv!2045 (_keys!2159 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598))))))) (array_inv!2046 (_values!2144 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598))))))) e!1179428))))

(declare-fun b!1845492 () Bool)

(declare-fun e!1179427 () Bool)

(assert (=> b!1845492 (= e!1179427 e!1179432)))

(declare-fun b!1845493 () Bool)

(declare-fun e!1179430 () Bool)

(assert (=> b!1845493 (= e!1179430 e!1179427)))

(declare-fun mapIsEmpty!8705 () Bool)

(assert (=> mapIsEmpty!8705 mapRes!8705))

(declare-fun b!1845494 () Bool)

(declare-fun e!1179433 () Bool)

(assert (=> b!1845494 (= e!1179429 e!1179433)))

(declare-fun b!1845495 () Bool)

(declare-fun e!1179431 () Bool)

(declare-fun lt!714762 () MutLongMap!1865)

(get-info :version)

(assert (=> b!1845495 (= e!1179431 (and e!1179430 ((_ is LongMap!1865) lt!714762)))))

(assert (=> b!1845495 (= lt!714762 (v!25881 (underlying!3944 (cache!2190 thiss!28598))))))

(assert (=> b!1845496 (= e!1179433 (and e!1179431 tp!521840))))

(assert (= (and b!1845490 condMapEmpty!8705) mapIsEmpty!8705))

(assert (= (and b!1845490 (not condMapEmpty!8705)) mapNonEmpty!8705))

(assert (= b!1845491 b!1845490))

(assert (= b!1845492 b!1845491))

(assert (= b!1845493 b!1845492))

(assert (= (and b!1845495 ((_ is LongMap!1865) (v!25881 (underlying!3944 (cache!2190 thiss!28598))))) b!1845493))

(assert (= b!1845496 b!1845495))

(assert (= (and b!1845494 ((_ is HashMap!1809) (cache!2190 thiss!28598))) b!1845496))

(assert (= start!184018 b!1845494))

(declare-fun m!2273885 () Bool)

(assert (=> start!184018 m!2273885))

(declare-fun m!2273887 () Bool)

(assert (=> start!184018 m!2273887))

(declare-fun m!2273889 () Bool)

(assert (=> mapNonEmpty!8705 m!2273889))

(declare-fun m!2273891 () Bool)

(assert (=> b!1845491 m!2273891))

(declare-fun m!2273893 () Bool)

(assert (=> b!1845491 m!2273893))

(check-sat b_and!143717 (not start!184018) (not b!1845491) (not mapNonEmpty!8705) (not b_next!52271) (not b!1845490) (not b_next!52273) b_and!143719)
(check-sat b_and!143719 b_and!143717 (not b_next!52273) (not b_next!52271))
(get-model)

(declare-fun d!564878 () Bool)

(assert (=> d!564878 (= (array_inv!2045 (_keys!2159 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598))))))) (bvsge (size!16110 (_keys!2159 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598))))))) #b00000000000000000000000000000000))))

(assert (=> b!1845491 d!564878))

(declare-fun d!564880 () Bool)

(assert (=> d!564880 (= (array_inv!2046 (_values!2144 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598))))))) (bvsge (size!16111 (_values!2144 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598))))))) #b00000000000000000000000000000000))))

(assert (=> b!1845491 d!564880))

(declare-fun d!564882 () Bool)

(declare-fun validCacheMapUp!173 (MutableMap!1809) Bool)

(assert (=> d!564882 (= (valid!1496 thiss!28598) (validCacheMapUp!173 (cache!2190 thiss!28598)))))

(declare-fun bs!409251 () Bool)

(assert (= bs!409251 d!564882))

(declare-fun m!2273895 () Bool)

(assert (=> bs!409251 m!2273895))

(assert (=> start!184018 d!564882))

(declare-fun d!564884 () Bool)

(declare-fun res!828777 () Bool)

(declare-fun e!1179436 () Bool)

(assert (=> d!564884 (=> (not res!828777) (not e!1179436))))

(assert (=> d!564884 (= res!828777 ((_ is HashMap!1809) (cache!2190 thiss!28598)))))

(assert (=> d!564884 (= (inv!26693 thiss!28598) e!1179436)))

(declare-fun b!1845499 () Bool)

(assert (=> b!1845499 (= e!1179436 (validCacheMapUp!173 (cache!2190 thiss!28598)))))

(assert (= (and d!564884 res!828777) b!1845499))

(assert (=> b!1845499 m!2273895))

(assert (=> start!184018 d!564884))

(declare-fun b!1845508 () Bool)

(declare-fun e!1179443 () Bool)

(declare-fun tp!521856 () Bool)

(assert (=> b!1845508 (= e!1179443 tp!521856)))

(declare-fun e!1179444 () Bool)

(declare-fun b!1845509 () Bool)

(declare-fun tp!521855 () Bool)

(declare-fun tp_is_empty!8367 () Bool)

(declare-fun e!1179445 () Bool)

(declare-fun setRes!11320 () Bool)

(declare-fun inv!26694 (Context!1870) Bool)

(assert (=> b!1845509 (= e!1179445 (and (inv!26694 (_1!11252 (_1!11253 (h!25757 mapDefault!8705)))) e!1179444 tp_is_empty!8367 setRes!11320 tp!521855))))

(declare-fun condSetEmpty!11320 () Bool)

(assert (=> b!1845509 (= condSetEmpty!11320 (= (_2!11253 (h!25757 mapDefault!8705)) ((as const (Array Context!1870 Bool)) false)))))

(assert (=> b!1845490 (= tp!521842 e!1179445)))

(declare-fun setElem!11320 () Context!1870)

(declare-fun tp!521857 () Bool)

(declare-fun setNonEmpty!11320 () Bool)

(assert (=> setNonEmpty!11320 (= setRes!11320 (and tp!521857 (inv!26694 setElem!11320) e!1179443))))

(declare-fun setRest!11320 () (InoxSet Context!1870))

(assert (=> setNonEmpty!11320 (= (_2!11253 (h!25757 mapDefault!8705)) ((_ map or) (store ((as const (Array Context!1870 Bool)) false) setElem!11320 true) setRest!11320))))

(declare-fun b!1845510 () Bool)

(declare-fun tp!521858 () Bool)

(assert (=> b!1845510 (= e!1179444 tp!521858)))

(declare-fun setIsEmpty!11320 () Bool)

(assert (=> setIsEmpty!11320 setRes!11320))

(assert (= b!1845509 b!1845510))

(assert (= (and b!1845509 condSetEmpty!11320) setIsEmpty!11320))

(assert (= (and b!1845509 (not condSetEmpty!11320)) setNonEmpty!11320))

(assert (= setNonEmpty!11320 b!1845508))

(assert (= (and b!1845490 ((_ is Cons!20356) mapDefault!8705)) b!1845509))

(declare-fun m!2273897 () Bool)

(assert (=> b!1845509 m!2273897))

(declare-fun m!2273899 () Bool)

(assert (=> setNonEmpty!11320 m!2273899))

(declare-fun b!1845511 () Bool)

(declare-fun e!1179446 () Bool)

(declare-fun tp!521860 () Bool)

(assert (=> b!1845511 (= e!1179446 tp!521860)))

(declare-fun tp!521859 () Bool)

(declare-fun e!1179447 () Bool)

(declare-fun b!1845512 () Bool)

(declare-fun e!1179448 () Bool)

(declare-fun setRes!11321 () Bool)

(assert (=> b!1845512 (= e!1179448 (and (inv!26694 (_1!11252 (_1!11253 (h!25757 (zeroValue!2122 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598)))))))))) e!1179447 tp_is_empty!8367 setRes!11321 tp!521859))))

(declare-fun condSetEmpty!11321 () Bool)

(assert (=> b!1845512 (= condSetEmpty!11321 (= (_2!11253 (h!25757 (zeroValue!2122 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598)))))))) ((as const (Array Context!1870 Bool)) false)))))

(assert (=> b!1845491 (= tp!521841 e!1179448)))

(declare-fun setNonEmpty!11321 () Bool)

(declare-fun tp!521861 () Bool)

(declare-fun setElem!11321 () Context!1870)

(assert (=> setNonEmpty!11321 (= setRes!11321 (and tp!521861 (inv!26694 setElem!11321) e!1179446))))

(declare-fun setRest!11321 () (InoxSet Context!1870))

(assert (=> setNonEmpty!11321 (= (_2!11253 (h!25757 (zeroValue!2122 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598)))))))) ((_ map or) (store ((as const (Array Context!1870 Bool)) false) setElem!11321 true) setRest!11321))))

(declare-fun b!1845513 () Bool)

(declare-fun tp!521862 () Bool)

(assert (=> b!1845513 (= e!1179447 tp!521862)))

(declare-fun setIsEmpty!11321 () Bool)

(assert (=> setIsEmpty!11321 setRes!11321))

(assert (= b!1845512 b!1845513))

(assert (= (and b!1845512 condSetEmpty!11321) setIsEmpty!11321))

(assert (= (and b!1845512 (not condSetEmpty!11321)) setNonEmpty!11321))

(assert (= setNonEmpty!11321 b!1845511))

(assert (= (and b!1845491 ((_ is Cons!20356) (zeroValue!2122 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598)))))))) b!1845512))

(declare-fun m!2273901 () Bool)

(assert (=> b!1845512 m!2273901))

(declare-fun m!2273903 () Bool)

(assert (=> setNonEmpty!11321 m!2273903))

(declare-fun b!1845514 () Bool)

(declare-fun e!1179449 () Bool)

(declare-fun tp!521864 () Bool)

(assert (=> b!1845514 (= e!1179449 tp!521864)))

(declare-fun e!1179450 () Bool)

(declare-fun b!1845515 () Bool)

(declare-fun tp!521863 () Bool)

(declare-fun e!1179451 () Bool)

(declare-fun setRes!11322 () Bool)

(assert (=> b!1845515 (= e!1179451 (and (inv!26694 (_1!11252 (_1!11253 (h!25757 (minValue!2122 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598)))))))))) e!1179450 tp_is_empty!8367 setRes!11322 tp!521863))))

(declare-fun condSetEmpty!11322 () Bool)

(assert (=> b!1845515 (= condSetEmpty!11322 (= (_2!11253 (h!25757 (minValue!2122 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598)))))))) ((as const (Array Context!1870 Bool)) false)))))

(assert (=> b!1845491 (= tp!521844 e!1179451)))

(declare-fun tp!521865 () Bool)

(declare-fun setNonEmpty!11322 () Bool)

(declare-fun setElem!11322 () Context!1870)

(assert (=> setNonEmpty!11322 (= setRes!11322 (and tp!521865 (inv!26694 setElem!11322) e!1179449))))

(declare-fun setRest!11322 () (InoxSet Context!1870))

(assert (=> setNonEmpty!11322 (= (_2!11253 (h!25757 (minValue!2122 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598)))))))) ((_ map or) (store ((as const (Array Context!1870 Bool)) false) setElem!11322 true) setRest!11322))))

(declare-fun b!1845516 () Bool)

(declare-fun tp!521866 () Bool)

(assert (=> b!1845516 (= e!1179450 tp!521866)))

(declare-fun setIsEmpty!11322 () Bool)

(assert (=> setIsEmpty!11322 setRes!11322))

(assert (= b!1845515 b!1845516))

(assert (= (and b!1845515 condSetEmpty!11322) setIsEmpty!11322))

(assert (= (and b!1845515 (not condSetEmpty!11322)) setNonEmpty!11322))

(assert (= setNonEmpty!11322 b!1845514))

(assert (= (and b!1845491 ((_ is Cons!20356) (minValue!2122 (v!25880 (underlying!3943 (v!25881 (underlying!3944 (cache!2190 thiss!28598)))))))) b!1845515))

(declare-fun m!2273905 () Bool)

(assert (=> b!1845515 m!2273905))

(declare-fun m!2273907 () Bool)

(assert (=> setNonEmpty!11322 m!2273907))

(declare-fun setIsEmpty!11327 () Bool)

(declare-fun setRes!11327 () Bool)

(assert (=> setIsEmpty!11327 setRes!11327))

(declare-fun mapIsEmpty!8708 () Bool)

(declare-fun mapRes!8708 () Bool)

(assert (=> mapIsEmpty!8708 mapRes!8708))

(declare-fun setNonEmpty!11327 () Bool)

(declare-fun e!1179468 () Bool)

(declare-fun setElem!11327 () Context!1870)

(declare-fun tp!521891 () Bool)

(assert (=> setNonEmpty!11327 (= setRes!11327 (and tp!521891 (inv!26694 setElem!11327) e!1179468))))

(declare-fun mapDefault!8708 () List!20428)

(declare-fun setRest!11328 () (InoxSet Context!1870))

(assert (=> setNonEmpty!11327 (= (_2!11253 (h!25757 mapDefault!8708)) ((_ map or) (store ((as const (Array Context!1870 Bool)) false) setElem!11327 true) setRest!11328))))

(declare-fun b!1845531 () Bool)

(declare-fun e!1179469 () Bool)

(declare-fun tp!521888 () Bool)

(assert (=> b!1845531 (= e!1179469 tp!521888)))

(declare-fun condMapEmpty!8708 () Bool)

(assert (=> mapNonEmpty!8705 (= condMapEmpty!8708 (= mapRest!8705 ((as const (Array (_ BitVec 32) List!20428)) mapDefault!8708)))))

(declare-fun e!1179464 () Bool)

(assert (=> mapNonEmpty!8705 (= tp!521845 (and e!1179464 mapRes!8708))))

(declare-fun b!1845532 () Bool)

(declare-fun e!1179465 () Bool)

(declare-fun tp!521893 () Bool)

(assert (=> b!1845532 (= e!1179465 tp!521893)))

(declare-fun mapNonEmpty!8708 () Bool)

(declare-fun tp!521889 () Bool)

(declare-fun e!1179467 () Bool)

(assert (=> mapNonEmpty!8708 (= mapRes!8708 (and tp!521889 e!1179467))))

(declare-fun mapRest!8708 () (Array (_ BitVec 32) List!20428))

(declare-fun mapKey!8708 () (_ BitVec 32))

(declare-fun mapValue!8708 () List!20428)

(assert (=> mapNonEmpty!8708 (= mapRest!8705 (store mapRest!8708 mapKey!8708 mapValue!8708))))

(declare-fun setNonEmpty!11328 () Bool)

(declare-fun setElem!11328 () Context!1870)

(declare-fun tp!521886 () Bool)

(declare-fun setRes!11328 () Bool)

(assert (=> setNonEmpty!11328 (= setRes!11328 (and tp!521886 (inv!26694 setElem!11328) e!1179465))))

(declare-fun setRest!11327 () (InoxSet Context!1870))

(assert (=> setNonEmpty!11328 (= (_2!11253 (h!25757 mapValue!8708)) ((_ map or) (store ((as const (Array Context!1870 Bool)) false) setElem!11328 true) setRest!11327))))

(declare-fun b!1845533 () Bool)

(declare-fun tp!521892 () Bool)

(assert (=> b!1845533 (= e!1179468 tp!521892)))

(declare-fun tp!521887 () Bool)

(declare-fun b!1845534 () Bool)

(declare-fun e!1179466 () Bool)

(assert (=> b!1845534 (= e!1179467 (and (inv!26694 (_1!11252 (_1!11253 (h!25757 mapValue!8708)))) e!1179466 tp_is_empty!8367 setRes!11328 tp!521887))))

(declare-fun condSetEmpty!11328 () Bool)

(assert (=> b!1845534 (= condSetEmpty!11328 (= (_2!11253 (h!25757 mapValue!8708)) ((as const (Array Context!1870 Bool)) false)))))

(declare-fun b!1845535 () Bool)

(declare-fun tp!521890 () Bool)

(assert (=> b!1845535 (= e!1179466 tp!521890)))

(declare-fun b!1845536 () Bool)

(declare-fun tp!521885 () Bool)

(assert (=> b!1845536 (= e!1179464 (and (inv!26694 (_1!11252 (_1!11253 (h!25757 mapDefault!8708)))) e!1179469 tp_is_empty!8367 setRes!11327 tp!521885))))

(declare-fun condSetEmpty!11327 () Bool)

(assert (=> b!1845536 (= condSetEmpty!11327 (= (_2!11253 (h!25757 mapDefault!8708)) ((as const (Array Context!1870 Bool)) false)))))

(declare-fun setIsEmpty!11328 () Bool)

(assert (=> setIsEmpty!11328 setRes!11328))

(assert (= (and mapNonEmpty!8705 condMapEmpty!8708) mapIsEmpty!8708))

(assert (= (and mapNonEmpty!8705 (not condMapEmpty!8708)) mapNonEmpty!8708))

(assert (= b!1845534 b!1845535))

(assert (= (and b!1845534 condSetEmpty!11328) setIsEmpty!11328))

(assert (= (and b!1845534 (not condSetEmpty!11328)) setNonEmpty!11328))

(assert (= setNonEmpty!11328 b!1845532))

(assert (= (and mapNonEmpty!8708 ((_ is Cons!20356) mapValue!8708)) b!1845534))

(assert (= b!1845536 b!1845531))

(assert (= (and b!1845536 condSetEmpty!11327) setIsEmpty!11327))

(assert (= (and b!1845536 (not condSetEmpty!11327)) setNonEmpty!11327))

(assert (= setNonEmpty!11327 b!1845533))

(assert (= (and mapNonEmpty!8705 ((_ is Cons!20356) mapDefault!8708)) b!1845536))

(declare-fun m!2273909 () Bool)

(assert (=> b!1845536 m!2273909))

(declare-fun m!2273911 () Bool)

(assert (=> mapNonEmpty!8708 m!2273911))

(declare-fun m!2273913 () Bool)

(assert (=> setNonEmpty!11327 m!2273913))

(declare-fun m!2273915 () Bool)

(assert (=> setNonEmpty!11328 m!2273915))

(declare-fun m!2273917 () Bool)

(assert (=> b!1845534 m!2273917))

(declare-fun b!1845537 () Bool)

(declare-fun e!1179470 () Bool)

(declare-fun tp!521895 () Bool)

(assert (=> b!1845537 (= e!1179470 tp!521895)))

(declare-fun tp!521894 () Bool)

(declare-fun b!1845538 () Bool)

(declare-fun e!1179471 () Bool)

(declare-fun e!1179472 () Bool)

(declare-fun setRes!11329 () Bool)

(assert (=> b!1845538 (= e!1179472 (and (inv!26694 (_1!11252 (_1!11253 (h!25757 mapValue!8705)))) e!1179471 tp_is_empty!8367 setRes!11329 tp!521894))))

(declare-fun condSetEmpty!11329 () Bool)

(assert (=> b!1845538 (= condSetEmpty!11329 (= (_2!11253 (h!25757 mapValue!8705)) ((as const (Array Context!1870 Bool)) false)))))

(assert (=> mapNonEmpty!8705 (= tp!521843 e!1179472)))

(declare-fun tp!521896 () Bool)

(declare-fun setNonEmpty!11329 () Bool)

(declare-fun setElem!11329 () Context!1870)

(assert (=> setNonEmpty!11329 (= setRes!11329 (and tp!521896 (inv!26694 setElem!11329) e!1179470))))

(declare-fun setRest!11329 () (InoxSet Context!1870))

(assert (=> setNonEmpty!11329 (= (_2!11253 (h!25757 mapValue!8705)) ((_ map or) (store ((as const (Array Context!1870 Bool)) false) setElem!11329 true) setRest!11329))))

(declare-fun b!1845539 () Bool)

(declare-fun tp!521897 () Bool)

(assert (=> b!1845539 (= e!1179471 tp!521897)))

(declare-fun setIsEmpty!11329 () Bool)

(assert (=> setIsEmpty!11329 setRes!11329))

(assert (= b!1845538 b!1845539))

(assert (= (and b!1845538 condSetEmpty!11329) setIsEmpty!11329))

(assert (= (and b!1845538 (not condSetEmpty!11329)) setNonEmpty!11329))

(assert (= setNonEmpty!11329 b!1845537))

(assert (= (and mapNonEmpty!8705 ((_ is Cons!20356) mapValue!8705)) b!1845538))

(declare-fun m!2273919 () Bool)

(assert (=> b!1845538 m!2273919))

(declare-fun m!2273921 () Bool)

(assert (=> setNonEmpty!11329 m!2273921))

(check-sat b_and!143717 (not b!1845510) (not b!1845508) (not b!1845516) (not setNonEmpty!11320) tp_is_empty!8367 (not setNonEmpty!11328) (not b!1845499) (not mapNonEmpty!8708) (not b!1845539) (not b!1845532) (not b!1845533) (not setNonEmpty!11329) (not b!1845515) (not b!1845534) (not setNonEmpty!11321) (not b!1845531) (not b!1845538) (not b!1845535) (not b_next!52271) (not setNonEmpty!11322) (not b!1845511) (not b_next!52273) (not b!1845513) (not setNonEmpty!11327) (not b!1845536) b_and!143719 (not b!1845512) (not b!1845537) (not d!564882) (not b!1845509) (not b!1845514))
(check-sat b_and!143719 b_and!143717 (not b_next!52273) (not b_next!52271))
