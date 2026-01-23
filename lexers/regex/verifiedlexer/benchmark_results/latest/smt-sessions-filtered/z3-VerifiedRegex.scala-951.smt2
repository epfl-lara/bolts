; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48444 () Bool)

(assert start!48444)

(declare-fun b!528437 () Bool)

(declare-fun b_free!14061 () Bool)

(declare-fun b_next!14077 () Bool)

(assert (=> b!528437 (= b_free!14061 (not b_next!14077))))

(declare-fun tp!167751 () Bool)

(declare-fun b_and!51559 () Bool)

(assert (=> b!528437 (= tp!167751 b_and!51559)))

(declare-fun b!528438 () Bool)

(declare-fun b_free!14063 () Bool)

(declare-fun b_next!14079 () Bool)

(assert (=> b!528438 (= b_free!14063 (not b_next!14079))))

(declare-fun tp!167749 () Bool)

(declare-fun b_and!51561 () Bool)

(assert (=> b!528438 (= tp!167749 b_and!51561)))

(declare-fun b!528434 () Bool)

(declare-fun e!317827 () Bool)

(declare-fun e!317826 () Bool)

(declare-datatypes ((C!3368 0))(
  ( (C!3369 (val!1910 Int)) )
))
(declare-datatypes ((Regex!1223 0))(
  ( (ElementMatch!1223 (c!101191 C!3368)) (Concat!2141 (regOne!2958 Regex!1223) (regTwo!2958 Regex!1223)) (EmptyExpr!1223) (Star!1223 (reg!1552 Regex!1223)) (EmptyLang!1223) (Union!1223 (regOne!2959 Regex!1223) (regTwo!2959 Regex!1223)) )
))
(declare-datatypes ((List!4987 0))(
  ( (Nil!4977) (Cons!4977 (h!10378 Regex!1223) (t!73608 List!4987)) )
))
(declare-datatypes ((Context!322 0))(
  ( (Context!323 (exprs!661 List!4987)) )
))
(declare-datatypes ((tuple3!416 0))(
  ( (tuple3!417 (_1!3330 Regex!1223) (_2!3330 Context!322) (_3!259 C!3368)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!6142 0))(
  ( (tuple2!6143 (_1!3331 tuple3!416) (_2!3331 (InoxSet Context!322))) )
))
(declare-datatypes ((List!4988 0))(
  ( (Nil!4978) (Cons!4978 (h!10379 tuple2!6142) (t!73609 List!4988)) )
))
(declare-datatypes ((array!2297 0))(
  ( (array!2298 (arr!1045 (Array (_ BitVec 32) (_ BitVec 64))) (size!4062 (_ BitVec 32))) )
))
(declare-datatypes ((array!2299 0))(
  ( (array!2300 (arr!1046 (Array (_ BitVec 32) List!4988)) (size!4063 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1196 0))(
  ( (LongMapFixedSize!1197 (defaultEntry!954 Int) (mask!2081 (_ BitVec 32)) (extraKeys!845 (_ BitVec 32)) (zeroValue!855 List!4988) (minValue!855 List!4988) (_size!1305 (_ BitVec 32)) (_keys!892 array!2297) (_values!877 array!2299) (_vacant!659 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2333 0))(
  ( (Cell!2334 (v!16044 LongMapFixedSize!1196)) )
))
(declare-datatypes ((MutLongMap!598 0))(
  ( (LongMap!598 (underlying!1375 Cell!2333)) (MutLongMapExt!597 (__x!3719 Int)) )
))
(declare-fun lt!218285 () MutLongMap!598)

(get-info :version)

(assert (=> b!528434 (= e!317827 (and e!317826 ((_ is LongMap!598) lt!218285)))))

(declare-datatypes ((Cell!2335 0))(
  ( (Cell!2336 (v!16045 MutLongMap!598)) )
))
(declare-datatypes ((Hashable!570 0))(
  ( (HashableExt!569 (__x!3720 Int)) )
))
(declare-datatypes ((MutableMap!570 0))(
  ( (MutableMapExt!569 (__x!3721 Int)) (HashMap!570 (underlying!1376 Cell!2335) (hashF!2478 Hashable!570) (_size!1306 (_ BitVec 32)) (defaultValue!721 Int)) )
))
(declare-datatypes ((CacheDown!224 0))(
  ( (CacheDown!225 (cache!957 MutableMap!570)) )
))
(declare-fun thiss!28792 () CacheDown!224)

(assert (=> b!528434 (= lt!218285 (v!16045 (underlying!1376 (cache!957 thiss!28792))))))

(declare-fun b!528435 () Bool)

(declare-fun e!317828 () Bool)

(declare-fun e!317825 () Bool)

(assert (=> b!528435 (= e!317828 e!317825)))

(declare-fun b!528436 () Bool)

(declare-fun e!317831 () Bool)

(declare-fun e!317830 () Bool)

(assert (=> b!528436 (= e!317831 e!317830)))

(declare-fun mapNonEmpty!2360 () Bool)

(declare-fun mapRes!2360 () Bool)

(declare-fun tp!167748 () Bool)

(declare-fun tp!167753 () Bool)

(assert (=> mapNonEmpty!2360 (= mapRes!2360 (and tp!167748 tp!167753))))

(declare-fun mapKey!2360 () (_ BitVec 32))

(declare-fun mapValue!2360 () List!4988)

(declare-fun mapRest!2360 () (Array (_ BitVec 32) List!4988))

(assert (=> mapNonEmpty!2360 (= (arr!1046 (_values!877 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792))))))) (store mapRest!2360 mapKey!2360 mapValue!2360))))

(declare-fun tp!167752 () Bool)

(declare-fun e!317829 () Bool)

(declare-fun tp!167750 () Bool)

(declare-fun array_inv!763 (array!2297) Bool)

(declare-fun array_inv!764 (array!2299) Bool)

(assert (=> b!528437 (= e!317825 (and tp!167751 tp!167750 tp!167752 (array_inv!763 (_keys!892 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792))))))) (array_inv!764 (_values!877 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792))))))) e!317829))))

(assert (=> b!528438 (= e!317830 (and e!317827 tp!167749))))

(declare-fun b!528439 () Bool)

(declare-fun tp!167747 () Bool)

(assert (=> b!528439 (= e!317829 (and tp!167747 mapRes!2360))))

(declare-fun condMapEmpty!2360 () Bool)

(declare-fun mapDefault!2360 () List!4988)

(assert (=> b!528439 (= condMapEmpty!2360 (= (arr!1046 (_values!877 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792))))))) ((as const (Array (_ BitVec 32) List!4988)) mapDefault!2360)))))

(declare-fun b!528440 () Bool)

(assert (=> b!528440 (= e!317826 e!317828)))

(assert (=> start!48444 (not ((_ is HashMap!570) (cache!957 thiss!28792)))))

(declare-fun inv!6240 (CacheDown!224) Bool)

(assert (=> start!48444 (and (inv!6240 thiss!28792) e!317831)))

(declare-fun mapIsEmpty!2360 () Bool)

(assert (=> mapIsEmpty!2360 mapRes!2360))

(assert (= (and b!528439 condMapEmpty!2360) mapIsEmpty!2360))

(assert (= (and b!528439 (not condMapEmpty!2360)) mapNonEmpty!2360))

(assert (= b!528437 b!528439))

(assert (= b!528435 b!528437))

(assert (= b!528440 b!528435))

(assert (= (and b!528434 ((_ is LongMap!598) (v!16045 (underlying!1376 (cache!957 thiss!28792))))) b!528440))

(assert (= b!528438 b!528434))

(assert (= (and b!528436 ((_ is HashMap!570) (cache!957 thiss!28792))) b!528438))

(assert (= start!48444 b!528436))

(declare-fun m!774427 () Bool)

(assert (=> mapNonEmpty!2360 m!774427))

(declare-fun m!774429 () Bool)

(assert (=> b!528437 m!774429))

(declare-fun m!774431 () Bool)

(assert (=> b!528437 m!774431))

(declare-fun m!774433 () Bool)

(assert (=> start!48444 m!774433))

(check-sat b_and!51561 (not start!48444) (not b_next!14077) (not b_next!14079) (not mapNonEmpty!2360) b_and!51559 (not b!528437) (not b!528439))
(check-sat b_and!51561 b_and!51559 (not b_next!14077) (not b_next!14079))
(get-model)

(declare-fun d!187936 () Bool)

(declare-fun res!223279 () Bool)

(declare-fun e!317835 () Bool)

(assert (=> d!187936 (=> (not res!223279) (not e!317835))))

(assert (=> d!187936 (= res!223279 ((_ is HashMap!570) (cache!957 thiss!28792)))))

(assert (=> d!187936 (= (inv!6240 thiss!28792) e!317835)))

(declare-fun b!528443 () Bool)

(declare-fun validCacheMapDown!36 (MutableMap!570) Bool)

(assert (=> b!528443 (= e!317835 (validCacheMapDown!36 (cache!957 thiss!28792)))))

(assert (= (and d!187936 res!223279) b!528443))

(declare-fun m!774435 () Bool)

(assert (=> b!528443 m!774435))

(assert (=> start!48444 d!187936))

(declare-fun d!187938 () Bool)

(assert (=> d!187938 (= (array_inv!763 (_keys!892 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792))))))) (bvsge (size!4062 (_keys!892 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792))))))) #b00000000000000000000000000000000))))

(assert (=> b!528437 d!187938))

(declare-fun d!187940 () Bool)

(assert (=> d!187940 (= (array_inv!764 (_values!877 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792))))))) (bvsge (size!4063 (_values!877 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792))))))) #b00000000000000000000000000000000))))

(assert (=> b!528437 d!187940))

(declare-fun e!317843 () Bool)

(declare-fun setNonEmpty!2669 () Bool)

(declare-fun setElem!2669 () Context!322)

(declare-fun tp!167767 () Bool)

(declare-fun setRes!2669 () Bool)

(declare-fun inv!6241 (Context!322) Bool)

(assert (=> setNonEmpty!2669 (= setRes!2669 (and tp!167767 (inv!6241 setElem!2669) e!317843))))

(declare-fun setRest!2669 () (InoxSet Context!322))

(assert (=> setNonEmpty!2669 (= (_2!3331 (h!10379 mapDefault!2360)) ((_ map or) (store ((as const (Array Context!322 Bool)) false) setElem!2669 true) setRest!2669))))

(declare-fun e!317844 () Bool)

(assert (=> b!528439 (= tp!167747 e!317844)))

(declare-fun b!528452 () Bool)

(declare-fun tp!167768 () Bool)

(assert (=> b!528452 (= e!317843 tp!167768)))

(declare-fun b!528453 () Bool)

(declare-fun tp!167765 () Bool)

(declare-fun tp!167766 () Bool)

(declare-fun e!317842 () Bool)

(declare-fun tp_is_empty!2801 () Bool)

(assert (=> b!528453 (= e!317844 (and tp!167765 (inv!6241 (_2!3330 (_1!3331 (h!10379 mapDefault!2360)))) e!317842 tp_is_empty!2801 setRes!2669 tp!167766))))

(declare-fun condSetEmpty!2669 () Bool)

(assert (=> b!528453 (= condSetEmpty!2669 (= (_2!3331 (h!10379 mapDefault!2360)) ((as const (Array Context!322 Bool)) false)))))

(declare-fun b!528454 () Bool)

(declare-fun tp!167764 () Bool)

(assert (=> b!528454 (= e!317842 tp!167764)))

(declare-fun setIsEmpty!2669 () Bool)

(assert (=> setIsEmpty!2669 setRes!2669))

(assert (= b!528453 b!528454))

(assert (= (and b!528453 condSetEmpty!2669) setIsEmpty!2669))

(assert (= (and b!528453 (not condSetEmpty!2669)) setNonEmpty!2669))

(assert (= setNonEmpty!2669 b!528452))

(assert (= (and b!528439 ((_ is Cons!4978) mapDefault!2360)) b!528453))

(declare-fun m!774437 () Bool)

(assert (=> setNonEmpty!2669 m!774437))

(declare-fun m!774439 () Bool)

(assert (=> b!528453 m!774439))

(declare-fun e!317846 () Bool)

(declare-fun setNonEmpty!2670 () Bool)

(declare-fun setRes!2670 () Bool)

(declare-fun setElem!2670 () Context!322)

(declare-fun tp!167772 () Bool)

(assert (=> setNonEmpty!2670 (= setRes!2670 (and tp!167772 (inv!6241 setElem!2670) e!317846))))

(declare-fun setRest!2670 () (InoxSet Context!322))

(assert (=> setNonEmpty!2670 (= (_2!3331 (h!10379 (zeroValue!855 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792)))))))) ((_ map or) (store ((as const (Array Context!322 Bool)) false) setElem!2670 true) setRest!2670))))

(declare-fun e!317847 () Bool)

(assert (=> b!528437 (= tp!167750 e!317847)))

(declare-fun b!528455 () Bool)

(declare-fun tp!167773 () Bool)

(assert (=> b!528455 (= e!317846 tp!167773)))

(declare-fun tp!167770 () Bool)

(declare-fun tp!167771 () Bool)

(declare-fun e!317845 () Bool)

(declare-fun b!528456 () Bool)

(assert (=> b!528456 (= e!317847 (and tp!167770 (inv!6241 (_2!3330 (_1!3331 (h!10379 (zeroValue!855 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792)))))))))) e!317845 tp_is_empty!2801 setRes!2670 tp!167771))))

(declare-fun condSetEmpty!2670 () Bool)

(assert (=> b!528456 (= condSetEmpty!2670 (= (_2!3331 (h!10379 (zeroValue!855 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792)))))))) ((as const (Array Context!322 Bool)) false)))))

(declare-fun b!528457 () Bool)

(declare-fun tp!167769 () Bool)

(assert (=> b!528457 (= e!317845 tp!167769)))

(declare-fun setIsEmpty!2670 () Bool)

(assert (=> setIsEmpty!2670 setRes!2670))

(assert (= b!528456 b!528457))

(assert (= (and b!528456 condSetEmpty!2670) setIsEmpty!2670))

(assert (= (and b!528456 (not condSetEmpty!2670)) setNonEmpty!2670))

(assert (= setNonEmpty!2670 b!528455))

(assert (= (and b!528437 ((_ is Cons!4978) (zeroValue!855 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792)))))))) b!528456))

(declare-fun m!774441 () Bool)

(assert (=> setNonEmpty!2670 m!774441))

(declare-fun m!774443 () Bool)

(assert (=> b!528456 m!774443))

(declare-fun e!317849 () Bool)

(declare-fun setElem!2671 () Context!322)

(declare-fun setRes!2671 () Bool)

(declare-fun tp!167777 () Bool)

(declare-fun setNonEmpty!2671 () Bool)

(assert (=> setNonEmpty!2671 (= setRes!2671 (and tp!167777 (inv!6241 setElem!2671) e!317849))))

(declare-fun setRest!2671 () (InoxSet Context!322))

(assert (=> setNonEmpty!2671 (= (_2!3331 (h!10379 (minValue!855 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792)))))))) ((_ map or) (store ((as const (Array Context!322 Bool)) false) setElem!2671 true) setRest!2671))))

(declare-fun e!317850 () Bool)

(assert (=> b!528437 (= tp!167752 e!317850)))

(declare-fun b!528458 () Bool)

(declare-fun tp!167778 () Bool)

(assert (=> b!528458 (= e!317849 tp!167778)))

(declare-fun e!317848 () Bool)

(declare-fun tp!167776 () Bool)

(declare-fun b!528459 () Bool)

(declare-fun tp!167775 () Bool)

(assert (=> b!528459 (= e!317850 (and tp!167775 (inv!6241 (_2!3330 (_1!3331 (h!10379 (minValue!855 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792)))))))))) e!317848 tp_is_empty!2801 setRes!2671 tp!167776))))

(declare-fun condSetEmpty!2671 () Bool)

(assert (=> b!528459 (= condSetEmpty!2671 (= (_2!3331 (h!10379 (minValue!855 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792)))))))) ((as const (Array Context!322 Bool)) false)))))

(declare-fun b!528460 () Bool)

(declare-fun tp!167774 () Bool)

(assert (=> b!528460 (= e!317848 tp!167774)))

(declare-fun setIsEmpty!2671 () Bool)

(assert (=> setIsEmpty!2671 setRes!2671))

(assert (= b!528459 b!528460))

(assert (= (and b!528459 condSetEmpty!2671) setIsEmpty!2671))

(assert (= (and b!528459 (not condSetEmpty!2671)) setNonEmpty!2671))

(assert (= setNonEmpty!2671 b!528458))

(assert (= (and b!528437 ((_ is Cons!4978) (minValue!855 (v!16044 (underlying!1375 (v!16045 (underlying!1376 (cache!957 thiss!28792)))))))) b!528459))

(declare-fun m!774445 () Bool)

(assert (=> setNonEmpty!2671 m!774445))

(declare-fun m!774447 () Bool)

(assert (=> b!528459 m!774447))

(declare-fun setNonEmpty!2676 () Bool)

(declare-fun tp!167809 () Bool)

(declare-fun e!317867 () Bool)

(declare-fun setElem!2677 () Context!322)

(declare-fun setRes!2676 () Bool)

(assert (=> setNonEmpty!2676 (= setRes!2676 (and tp!167809 (inv!6241 setElem!2677) e!317867))))

(declare-fun mapValue!2363 () List!4988)

(declare-fun setRest!2676 () (InoxSet Context!322))

(assert (=> setNonEmpty!2676 (= (_2!3331 (h!10379 mapValue!2363)) ((_ map or) (store ((as const (Array Context!322 Bool)) false) setElem!2677 true) setRest!2676))))

(declare-fun condMapEmpty!2363 () Bool)

(declare-fun mapDefault!2363 () List!4988)

(assert (=> mapNonEmpty!2360 (= condMapEmpty!2363 (= mapRest!2360 ((as const (Array (_ BitVec 32) List!4988)) mapDefault!2363)))))

(declare-fun e!317866 () Bool)

(declare-fun mapRes!2363 () Bool)

(assert (=> mapNonEmpty!2360 (= tp!167748 (and e!317866 mapRes!2363))))

(declare-fun b!528475 () Bool)

(declare-fun e!317864 () Bool)

(declare-fun tp!167811 () Bool)

(assert (=> b!528475 (= e!317864 tp!167811)))

(declare-fun mapNonEmpty!2363 () Bool)

(declare-fun tp!167810 () Bool)

(declare-fun e!317863 () Bool)

(assert (=> mapNonEmpty!2363 (= mapRes!2363 (and tp!167810 e!317863))))

(declare-fun mapRest!2363 () (Array (_ BitVec 32) List!4988))

(declare-fun mapKey!2363 () (_ BitVec 32))

(assert (=> mapNonEmpty!2363 (= mapRest!2360 (store mapRest!2363 mapKey!2363 mapValue!2363))))

(declare-fun b!528476 () Bool)

(declare-fun tp!167801 () Bool)

(assert (=> b!528476 (= e!317867 tp!167801)))

(declare-fun b!528477 () Bool)

(declare-fun e!317865 () Bool)

(declare-fun tp!167804 () Bool)

(assert (=> b!528477 (= e!317865 tp!167804)))

(declare-fun tp!167807 () Bool)

(declare-fun setRes!2677 () Bool)

(declare-fun tp!167802 () Bool)

(declare-fun b!528478 () Bool)

(assert (=> b!528478 (= e!317866 (and tp!167807 (inv!6241 (_2!3330 (_1!3331 (h!10379 mapDefault!2363)))) e!317864 tp_is_empty!2801 setRes!2677 tp!167802))))

(declare-fun condSetEmpty!2676 () Bool)

(assert (=> b!528478 (= condSetEmpty!2676 (= (_2!3331 (h!10379 mapDefault!2363)) ((as const (Array Context!322 Bool)) false)))))

(declare-fun mapIsEmpty!2363 () Bool)

(assert (=> mapIsEmpty!2363 mapRes!2363))

(declare-fun b!528479 () Bool)

(declare-fun e!317868 () Bool)

(declare-fun tp!167803 () Bool)

(assert (=> b!528479 (= e!317868 tp!167803)))

(declare-fun tp!167806 () Bool)

(declare-fun setElem!2676 () Context!322)

(declare-fun setNonEmpty!2677 () Bool)

(assert (=> setNonEmpty!2677 (= setRes!2677 (and tp!167806 (inv!6241 setElem!2676) e!317868))))

(declare-fun setRest!2677 () (InoxSet Context!322))

(assert (=> setNonEmpty!2677 (= (_2!3331 (h!10379 mapDefault!2363)) ((_ map or) (store ((as const (Array Context!322 Bool)) false) setElem!2676 true) setRest!2677))))

(declare-fun tp!167805 () Bool)

(declare-fun tp!167808 () Bool)

(declare-fun b!528480 () Bool)

(assert (=> b!528480 (= e!317863 (and tp!167805 (inv!6241 (_2!3330 (_1!3331 (h!10379 mapValue!2363)))) e!317865 tp_is_empty!2801 setRes!2676 tp!167808))))

(declare-fun condSetEmpty!2677 () Bool)

(assert (=> b!528480 (= condSetEmpty!2677 (= (_2!3331 (h!10379 mapValue!2363)) ((as const (Array Context!322 Bool)) false)))))

(declare-fun setIsEmpty!2676 () Bool)

(assert (=> setIsEmpty!2676 setRes!2677))

(declare-fun setIsEmpty!2677 () Bool)

(assert (=> setIsEmpty!2677 setRes!2676))

(assert (= (and mapNonEmpty!2360 condMapEmpty!2363) mapIsEmpty!2363))

(assert (= (and mapNonEmpty!2360 (not condMapEmpty!2363)) mapNonEmpty!2363))

(assert (= b!528480 b!528477))

(assert (= (and b!528480 condSetEmpty!2677) setIsEmpty!2677))

(assert (= (and b!528480 (not condSetEmpty!2677)) setNonEmpty!2676))

(assert (= setNonEmpty!2676 b!528476))

(assert (= (and mapNonEmpty!2363 ((_ is Cons!4978) mapValue!2363)) b!528480))

(assert (= b!528478 b!528475))

(assert (= (and b!528478 condSetEmpty!2676) setIsEmpty!2676))

(assert (= (and b!528478 (not condSetEmpty!2676)) setNonEmpty!2677))

(assert (= setNonEmpty!2677 b!528479))

(assert (= (and mapNonEmpty!2360 ((_ is Cons!4978) mapDefault!2363)) b!528478))

(declare-fun m!774449 () Bool)

(assert (=> setNonEmpty!2676 m!774449))

(declare-fun m!774451 () Bool)

(assert (=> mapNonEmpty!2363 m!774451))

(declare-fun m!774453 () Bool)

(assert (=> b!528480 m!774453))

(declare-fun m!774455 () Bool)

(assert (=> b!528478 m!774455))

(declare-fun m!774457 () Bool)

(assert (=> setNonEmpty!2677 m!774457))

(declare-fun e!317870 () Bool)

(declare-fun setRes!2678 () Bool)

(declare-fun setElem!2678 () Context!322)

(declare-fun tp!167815 () Bool)

(declare-fun setNonEmpty!2678 () Bool)

(assert (=> setNonEmpty!2678 (= setRes!2678 (and tp!167815 (inv!6241 setElem!2678) e!317870))))

(declare-fun setRest!2678 () (InoxSet Context!322))

(assert (=> setNonEmpty!2678 (= (_2!3331 (h!10379 mapValue!2360)) ((_ map or) (store ((as const (Array Context!322 Bool)) false) setElem!2678 true) setRest!2678))))

(declare-fun e!317871 () Bool)

(assert (=> mapNonEmpty!2360 (= tp!167753 e!317871)))

(declare-fun b!528481 () Bool)

(declare-fun tp!167816 () Bool)

(assert (=> b!528481 (= e!317870 tp!167816)))

(declare-fun tp!167814 () Bool)

(declare-fun b!528482 () Bool)

(declare-fun e!317869 () Bool)

(declare-fun tp!167813 () Bool)

(assert (=> b!528482 (= e!317871 (and tp!167813 (inv!6241 (_2!3330 (_1!3331 (h!10379 mapValue!2360)))) e!317869 tp_is_empty!2801 setRes!2678 tp!167814))))

(declare-fun condSetEmpty!2678 () Bool)

(assert (=> b!528482 (= condSetEmpty!2678 (= (_2!3331 (h!10379 mapValue!2360)) ((as const (Array Context!322 Bool)) false)))))

(declare-fun b!528483 () Bool)

(declare-fun tp!167812 () Bool)

(assert (=> b!528483 (= e!317869 tp!167812)))

(declare-fun setIsEmpty!2678 () Bool)

(assert (=> setIsEmpty!2678 setRes!2678))

(assert (= b!528482 b!528483))

(assert (= (and b!528482 condSetEmpty!2678) setIsEmpty!2678))

(assert (= (and b!528482 (not condSetEmpty!2678)) setNonEmpty!2678))

(assert (= setNonEmpty!2678 b!528481))

(assert (= (and mapNonEmpty!2360 ((_ is Cons!4978) mapValue!2360)) b!528482))

(declare-fun m!774459 () Bool)

(assert (=> setNonEmpty!2678 m!774459))

(declare-fun m!774461 () Bool)

(assert (=> b!528482 m!774461))

(check-sat (not setNonEmpty!2677) (not b!528480) (not b!528452) (not b!528482) (not b!528455) b_and!51561 (not b!528453) (not b!528479) (not setNonEmpty!2671) (not b!528459) (not setNonEmpty!2678) (not setNonEmpty!2676) (not b!528456) (not b!528475) (not b!528477) tp_is_empty!2801 (not mapNonEmpty!2363) (not setNonEmpty!2669) (not setNonEmpty!2670) (not b!528481) (not b_next!14077) (not b!528460) (not b_next!14079) (not b!528478) (not b!528443) (not b!528454) (not b!528457) (not b!528476) b_and!51559 (not b!528483) (not b!528458))
(check-sat b_and!51561 b_and!51559 (not b_next!14077) (not b_next!14079))
