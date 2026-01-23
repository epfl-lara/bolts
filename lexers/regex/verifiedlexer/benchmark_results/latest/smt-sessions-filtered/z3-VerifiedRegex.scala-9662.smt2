; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507024 () Bool)

(assert start!507024)

(declare-fun b!4854590 () Bool)

(declare-fun b_free!130351 () Bool)

(declare-fun b_next!131141 () Bool)

(assert (=> b!4854590 (= b_free!130351 (not b_next!131141))))

(declare-fun tp!1365451 () Bool)

(declare-fun b_and!342179 () Bool)

(assert (=> b!4854590 (= tp!1365451 b_and!342179)))

(declare-fun b!4854592 () Bool)

(declare-fun b_free!130353 () Bool)

(declare-fun b_next!131143 () Bool)

(assert (=> b!4854592 (= b_free!130353 (not b_next!131143))))

(declare-fun tp!1365448 () Bool)

(declare-fun b_and!342181 () Bool)

(assert (=> b!4854592 (= tp!1365448 b_and!342181)))

(declare-fun b!4854601 () Bool)

(declare-fun b_free!130355 () Bool)

(declare-fun b_next!131145 () Bool)

(assert (=> b!4854601 (= b_free!130355 (not b_next!131145))))

(declare-fun tp!1365449 () Bool)

(declare-fun b_and!342183 () Bool)

(assert (=> b!4854601 (= tp!1365449 b_and!342183)))

(declare-fun b!4854602 () Bool)

(declare-fun b_free!130357 () Bool)

(declare-fun b_next!131147 () Bool)

(assert (=> b!4854602 (= b_free!130357 (not b_next!131147))))

(declare-fun tp!1365445 () Bool)

(declare-fun b_and!342185 () Bool)

(assert (=> b!4854602 (= tp!1365445 b_and!342185)))

(declare-datatypes ((C!26328 0))(
  ( (C!26329 (val!22372 Int)) )
))
(declare-datatypes ((Regex!13065 0))(
  ( (ElementMatch!13065 (c!825920 C!26328)) (Concat!21384 (regOne!26642 Regex!13065) (regTwo!26642 Regex!13065)) (EmptyExpr!13065) (Star!13065 (reg!13394 Regex!13065)) (EmptyLang!13065) (Union!13065 (regOne!26643 Regex!13065) (regTwo!26643 Regex!13065)) )
))
(declare-datatypes ((List!55828 0))(
  ( (Nil!55704) (Cons!55704 (h!62152 Regex!13065) (t!363330 List!55828)) )
))
(declare-datatypes ((Context!5910 0))(
  ( (Context!5911 (exprs!3455 List!55828)) )
))
(declare-datatypes ((tuple3!5524 0))(
  ( (tuple3!5525 (_1!33064 Regex!13065) (_2!33064 Context!5910) (_3!3295 C!26328)) )
))
(declare-datatypes ((Hashable!7552 0))(
  ( (HashableExt!7551 (__x!33841 Int)) )
))
(declare-datatypes ((array!18824 0))(
  ( (array!18825 (arr!8399 (Array (_ BitVec 32) (_ BitVec 64))) (size!36673 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!59538 0))(
  ( (tuple2!59539 (_1!33065 tuple3!5524) (_2!33065 (InoxSet Context!5910))) )
))
(declare-datatypes ((List!55829 0))(
  ( (Nil!55705) (Cons!55705 (h!62153 tuple2!59538) (t!363331 List!55829)) )
))
(declare-datatypes ((array!18826 0))(
  ( (array!18827 (arr!8400 (Array (_ BitVec 32) List!55829)) (size!36674 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10214 0))(
  ( (LongMapFixedSize!10215 (defaultEntry!5532 Int) (mask!15410 (_ BitVec 32)) (extraKeys!5391 (_ BitVec 32)) (zeroValue!5404 List!55829) (minValue!5404 List!55829) (_size!10227 (_ BitVec 32)) (_keys!5461 array!18824) (_values!5429 array!18826) (_vacant!5172 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20169 0))(
  ( (Cell!20170 (v!49589 LongMapFixedSize!10214)) )
))
(declare-datatypes ((MutLongMap!5107 0))(
  ( (LongMap!5107 (underlying!10409 Cell!20169)) (MutLongMapExt!5106 (__x!33842 Int)) )
))
(declare-datatypes ((Cell!20171 0))(
  ( (Cell!20172 (v!49590 MutLongMap!5107)) )
))
(declare-datatypes ((MutableMap!4979 0))(
  ( (MutableMapExt!4978 (__x!33843 Int)) (HashMap!4979 (underlying!10410 Cell!20171) (hashF!13819 Hashable!7552) (_size!10228 (_ BitVec 32)) (defaultValue!5150 Int)) )
))
(declare-datatypes ((CacheDown!2968 0))(
  ( (CacheDown!2969 (cache!4593 MutableMap!4979)) )
))
(declare-fun cacheDown!921 () CacheDown!2968)

(declare-fun tp!1365444 () Bool)

(declare-fun tp!1365442 () Bool)

(declare-fun e!3035003 () Bool)

(declare-fun e!3035000 () Bool)

(declare-fun array_inv!6069 (array!18824) Bool)

(declare-fun array_inv!6070 (array!18826) Bool)

(assert (=> b!4854590 (= e!3035003 (and tp!1365451 tp!1365444 tp!1365442 (array_inv!6069 (_keys!5461 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))) (array_inv!6070 (_values!5429 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))) e!3035000))))

(declare-fun b!4854591 () Bool)

(declare-fun e!3034995 () Bool)

(declare-fun e!3034999 () Bool)

(assert (=> b!4854591 (= e!3034995 e!3034999)))

(declare-fun e!3034997 () Bool)

(declare-fun e!3034989 () Bool)

(assert (=> b!4854592 (= e!3034997 (and e!3034989 tp!1365448))))

(declare-fun setRes!27277 () Bool)

(declare-fun setNonEmpty!27277 () Bool)

(declare-fun e!3035001 () Bool)

(declare-fun setElem!27277 () Context!5910)

(declare-fun tp!1365450 () Bool)

(declare-fun inv!71436 (Context!5910) Bool)

(assert (=> setNonEmpty!27277 (= setRes!27277 (and tp!1365450 (inv!71436 setElem!27277) e!3035001))))

(declare-fun z!669 () (InoxSet Context!5910))

(declare-fun setRest!27277 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27277 (= z!669 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27277 true) setRest!27277))))

(declare-fun b!4854594 () Bool)

(declare-fun tp!1365441 () Bool)

(declare-fun mapRes!22532 () Bool)

(assert (=> b!4854594 (= e!3035000 (and tp!1365441 mapRes!22532))))

(declare-fun condMapEmpty!22533 () Bool)

(declare-fun mapDefault!22533 () List!55829)

(assert (=> b!4854594 (= condMapEmpty!22533 (= (arr!8400 (_values!5429 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))) ((as const (Array (_ BitVec 32) List!55829)) mapDefault!22533)))))

(declare-fun mapNonEmpty!22532 () Bool)

(declare-fun mapRes!22533 () Bool)

(declare-fun tp!1365453 () Bool)

(declare-fun tp!1365446 () Bool)

(assert (=> mapNonEmpty!22532 (= mapRes!22533 (and tp!1365453 tp!1365446))))

(declare-fun mapKey!22532 () (_ BitVec 32))

(declare-datatypes ((Hashable!7553 0))(
  ( (HashableExt!7552 (__x!33844 Int)) )
))
(declare-datatypes ((tuple2!59540 0))(
  ( (tuple2!59541 (_1!33066 Context!5910) (_2!33066 C!26328)) )
))
(declare-datatypes ((tuple2!59542 0))(
  ( (tuple2!59543 (_1!33067 tuple2!59540) (_2!33067 (InoxSet Context!5910))) )
))
(declare-datatypes ((List!55830 0))(
  ( (Nil!55706) (Cons!55706 (h!62154 tuple2!59542) (t!363332 List!55830)) )
))
(declare-datatypes ((array!18828 0))(
  ( (array!18829 (arr!8401 (Array (_ BitVec 32) List!55830)) (size!36675 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10216 0))(
  ( (LongMapFixedSize!10217 (defaultEntry!5533 Int) (mask!15411 (_ BitVec 32)) (extraKeys!5392 (_ BitVec 32)) (zeroValue!5405 List!55830) (minValue!5405 List!55830) (_size!10229 (_ BitVec 32)) (_keys!5462 array!18824) (_values!5430 array!18828) (_vacant!5173 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20173 0))(
  ( (Cell!20174 (v!49591 LongMapFixedSize!10216)) )
))
(declare-datatypes ((MutLongMap!5108 0))(
  ( (LongMap!5108 (underlying!10411 Cell!20173)) (MutLongMapExt!5107 (__x!33845 Int)) )
))
(declare-datatypes ((Cell!20175 0))(
  ( (Cell!20176 (v!49592 MutLongMap!5108)) )
))
(declare-datatypes ((MutableMap!4980 0))(
  ( (MutableMapExt!4979 (__x!33846 Int)) (HashMap!4980 (underlying!10412 Cell!20175) (hashF!13820 Hashable!7553) (_size!10230 (_ BitVec 32)) (defaultValue!5151 Int)) )
))
(declare-datatypes ((CacheUp!2848 0))(
  ( (CacheUp!2849 (cache!4594 MutableMap!4980)) )
))
(declare-fun cacheUp!802 () CacheUp!2848)

(declare-fun mapValue!22532 () List!55830)

(declare-fun mapRest!22533 () (Array (_ BitVec 32) List!55830))

(assert (=> mapNonEmpty!22532 (= (arr!8401 (_values!5430 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))) (store mapRest!22533 mapKey!22532 mapValue!22532))))

(declare-fun b!4854595 () Bool)

(declare-fun e!3034990 () Bool)

(declare-fun tp!1365452 () Bool)

(assert (=> b!4854595 (= e!3034990 (and tp!1365452 mapRes!22533))))

(declare-fun condMapEmpty!22532 () Bool)

(declare-fun mapDefault!22532 () List!55830)

(assert (=> b!4854595 (= condMapEmpty!22532 (= (arr!8401 (_values!5430 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))) ((as const (Array (_ BitVec 32) List!55830)) mapDefault!22532)))))

(declare-fun b!4854596 () Bool)

(declare-fun tp!1365456 () Bool)

(assert (=> b!4854596 (= e!3035001 tp!1365456)))

(declare-fun mapIsEmpty!22532 () Bool)

(assert (=> mapIsEmpty!22532 mapRes!22532))

(declare-fun b!4854597 () Bool)

(assert (=> b!4854597 (= e!3034999 e!3035003)))

(declare-fun b!4854598 () Bool)

(declare-fun e!3034986 () Bool)

(declare-fun lt!1991145 () MutLongMap!5107)

(get-info :version)

(assert (=> b!4854598 (= e!3034986 (and e!3034995 ((_ is LongMap!5107) lt!1991145)))))

(assert (=> b!4854598 (= lt!1991145 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))

(declare-fun b!4854599 () Bool)

(declare-fun e!3034988 () Bool)

(declare-fun lt!1991146 () MutLongMap!5108)

(assert (=> b!4854599 (= e!3034989 (and e!3034988 ((_ is LongMap!5108) lt!1991146)))))

(assert (=> b!4854599 (= lt!1991146 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))

(declare-fun mapNonEmpty!22533 () Bool)

(declare-fun tp!1365455 () Bool)

(declare-fun tp!1365443 () Bool)

(assert (=> mapNonEmpty!22533 (= mapRes!22532 (and tp!1365455 tp!1365443))))

(declare-fun mapRest!22532 () (Array (_ BitVec 32) List!55829))

(declare-fun mapKey!22533 () (_ BitVec 32))

(declare-fun mapValue!22533 () List!55829)

(assert (=> mapNonEmpty!22533 (= (arr!8400 (_values!5429 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))) (store mapRest!22532 mapKey!22533 mapValue!22533))))

(declare-fun b!4854600 () Bool)

(declare-fun res!2072566 () Bool)

(declare-fun e!3034987 () Bool)

(assert (=> b!4854600 (=> res!2072566 e!3034987)))

(declare-datatypes ((tuple3!5526 0))(
  ( (tuple3!5527 (_1!33068 (InoxSet Context!5910)) (_2!33068 CacheUp!2848) (_3!3296 CacheDown!2968)) )
))
(declare-fun lt!1991147 () tuple3!5526)

(declare-fun valid!4133 (CacheUp!2848) Bool)

(assert (=> b!4854600 (= res!2072566 (not (valid!4133 (_2!33068 lt!1991147))))))

(declare-fun res!2072565 () Bool)

(assert (=> start!507024 (=> res!2072565 e!3034987)))

(declare-fun a!1196 () C!26328)

(declare-fun derivationStepZipper!566 ((InoxSet Context!5910) C!26328) (InoxSet Context!5910))

(assert (=> start!507024 (= res!2072565 (not (= (_1!33068 lt!1991147) (derivationStepZipper!566 z!669 a!1196))))))

(declare-fun choose!35544 ((InoxSet Context!5910) C!26328 CacheUp!2848 CacheDown!2968) tuple3!5526)

(assert (=> start!507024 (= lt!1991147 (choose!35544 z!669 a!1196 cacheUp!802 cacheDown!921))))

(assert (=> start!507024 e!3034987))

(declare-fun e!3034994 () Bool)

(declare-fun inv!71437 (CacheUp!2848) Bool)

(assert (=> start!507024 (and (inv!71437 cacheUp!802) e!3034994)))

(declare-fun tp_is_empty!35479 () Bool)

(assert (=> start!507024 tp_is_empty!35479))

(declare-fun e!3034991 () Bool)

(declare-fun inv!71438 (CacheDown!2968) Bool)

(assert (=> start!507024 (and (inv!71438 cacheDown!921) e!3034991)))

(declare-fun condSetEmpty!27277 () Bool)

(assert (=> start!507024 (= condSetEmpty!27277 (= z!669 ((as const (Array Context!5910 Bool)) false)))))

(assert (=> start!507024 setRes!27277))

(declare-fun b!4854593 () Bool)

(declare-fun valid!4134 (CacheDown!2968) Bool)

(assert (=> b!4854593 (= e!3034987 (not (valid!4134 (_3!3296 lt!1991147))))))

(declare-fun e!3034998 () Bool)

(assert (=> b!4854601 (= e!3034998 (and e!3034986 tp!1365449))))

(declare-fun tp!1365447 () Bool)

(declare-fun e!3034996 () Bool)

(declare-fun tp!1365454 () Bool)

(declare-fun array_inv!6071 (array!18828) Bool)

(assert (=> b!4854602 (= e!3034996 (and tp!1365445 tp!1365447 tp!1365454 (array_inv!6069 (_keys!5462 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))) (array_inv!6071 (_values!5430 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))) e!3034990))))

(declare-fun setIsEmpty!27277 () Bool)

(assert (=> setIsEmpty!27277 setRes!27277))

(declare-fun b!4854603 () Bool)

(assert (=> b!4854603 (= e!3034994 e!3034997)))

(declare-fun mapIsEmpty!22533 () Bool)

(assert (=> mapIsEmpty!22533 mapRes!22533))

(declare-fun b!4854604 () Bool)

(assert (=> b!4854604 (= e!3034991 e!3034998)))

(declare-fun b!4854605 () Bool)

(declare-fun e!3034992 () Bool)

(assert (=> b!4854605 (= e!3034992 e!3034996)))

(declare-fun b!4854606 () Bool)

(assert (=> b!4854606 (= e!3034988 e!3034992)))

(assert (= (and start!507024 (not res!2072565)) b!4854600))

(assert (= (and b!4854600 (not res!2072566)) b!4854593))

(assert (= (and b!4854595 condMapEmpty!22532) mapIsEmpty!22533))

(assert (= (and b!4854595 (not condMapEmpty!22532)) mapNonEmpty!22532))

(assert (= b!4854602 b!4854595))

(assert (= b!4854605 b!4854602))

(assert (= b!4854606 b!4854605))

(assert (= (and b!4854599 ((_ is LongMap!5108) (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))) b!4854606))

(assert (= b!4854592 b!4854599))

(assert (= (and b!4854603 ((_ is HashMap!4980) (cache!4594 cacheUp!802))) b!4854592))

(assert (= start!507024 b!4854603))

(assert (= (and b!4854594 condMapEmpty!22533) mapIsEmpty!22532))

(assert (= (and b!4854594 (not condMapEmpty!22533)) mapNonEmpty!22533))

(assert (= b!4854590 b!4854594))

(assert (= b!4854597 b!4854590))

(assert (= b!4854591 b!4854597))

(assert (= (and b!4854598 ((_ is LongMap!5107) (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))) b!4854591))

(assert (= b!4854601 b!4854598))

(assert (= (and b!4854604 ((_ is HashMap!4979) (cache!4593 cacheDown!921))) b!4854601))

(assert (= start!507024 b!4854604))

(assert (= (and start!507024 condSetEmpty!27277) setIsEmpty!27277))

(assert (= (and start!507024 (not condSetEmpty!27277)) setNonEmpty!27277))

(assert (= setNonEmpty!27277 b!4854596))

(declare-fun m!5852436 () Bool)

(assert (=> b!4854593 m!5852436))

(declare-fun m!5852438 () Bool)

(assert (=> mapNonEmpty!22532 m!5852438))

(declare-fun m!5852440 () Bool)

(assert (=> b!4854602 m!5852440))

(declare-fun m!5852442 () Bool)

(assert (=> b!4854602 m!5852442))

(declare-fun m!5852444 () Bool)

(assert (=> b!4854590 m!5852444))

(declare-fun m!5852446 () Bool)

(assert (=> b!4854590 m!5852446))

(declare-fun m!5852448 () Bool)

(assert (=> mapNonEmpty!22533 m!5852448))

(declare-fun m!5852450 () Bool)

(assert (=> b!4854600 m!5852450))

(declare-fun m!5852452 () Bool)

(assert (=> start!507024 m!5852452))

(declare-fun m!5852454 () Bool)

(assert (=> start!507024 m!5852454))

(declare-fun m!5852456 () Bool)

(assert (=> start!507024 m!5852456))

(declare-fun m!5852458 () Bool)

(assert (=> start!507024 m!5852458))

(declare-fun m!5852460 () Bool)

(assert (=> setNonEmpty!27277 m!5852460))

(check-sat (not mapNonEmpty!22533) tp_is_empty!35479 (not b!4854596) (not b!4854602) (not setNonEmpty!27277) (not b!4854593) (not b_next!131145) (not b_next!131147) (not start!507024) (not b!4854594) (not b!4854600) b_and!342185 b_and!342181 (not mapNonEmpty!22532) b_and!342179 (not b!4854590) b_and!342183 (not b!4854595) (not b_next!131143) (not b_next!131141))
(check-sat b_and!342181 b_and!342179 b_and!342183 (not b_next!131145) (not b_next!131147) b_and!342185 (not b_next!131143) (not b_next!131141))
(get-model)

(declare-fun d!1558247 () Bool)

(assert (=> d!1558247 true))

(declare-fun lambda!243044 () Int)

(declare-fun flatMap!257 ((InoxSet Context!5910) Int) (InoxSet Context!5910))

(assert (=> d!1558247 (= (derivationStepZipper!566 z!669 a!1196) (flatMap!257 z!669 lambda!243044))))

(declare-fun bs!1173267 () Bool)

(assert (= bs!1173267 d!1558247))

(declare-fun m!5852462 () Bool)

(assert (=> bs!1173267 m!5852462))

(assert (=> start!507024 d!1558247))

(declare-fun d!1558249 () Bool)

(declare-fun choose!35545 ((InoxSet Context!5910) C!26328 CacheUp!2848 CacheDown!2968) tuple3!5526)

(assert (=> d!1558249 (= (choose!35544 z!669 a!1196 cacheUp!802 cacheDown!921) (choose!35545 z!669 a!1196 cacheUp!802 cacheDown!921))))

(declare-fun bs!1173268 () Bool)

(assert (= bs!1173268 d!1558249))

(declare-fun m!5852464 () Bool)

(assert (=> bs!1173268 m!5852464))

(assert (=> start!507024 d!1558249))

(declare-fun d!1558251 () Bool)

(declare-fun res!2072569 () Bool)

(declare-fun e!3035006 () Bool)

(assert (=> d!1558251 (=> (not res!2072569) (not e!3035006))))

(assert (=> d!1558251 (= res!2072569 ((_ is HashMap!4980) (cache!4594 cacheUp!802)))))

(assert (=> d!1558251 (= (inv!71437 cacheUp!802) e!3035006)))

(declare-fun b!4854611 () Bool)

(declare-fun validCacheMapUp!422 (MutableMap!4980) Bool)

(assert (=> b!4854611 (= e!3035006 (validCacheMapUp!422 (cache!4594 cacheUp!802)))))

(assert (= (and d!1558251 res!2072569) b!4854611))

(declare-fun m!5852466 () Bool)

(assert (=> b!4854611 m!5852466))

(assert (=> start!507024 d!1558251))

(declare-fun d!1558253 () Bool)

(declare-fun res!2072572 () Bool)

(declare-fun e!3035009 () Bool)

(assert (=> d!1558253 (=> (not res!2072572) (not e!3035009))))

(assert (=> d!1558253 (= res!2072572 ((_ is HashMap!4979) (cache!4593 cacheDown!921)))))

(assert (=> d!1558253 (= (inv!71438 cacheDown!921) e!3035009)))

(declare-fun b!4854614 () Bool)

(declare-fun validCacheMapDown!453 (MutableMap!4979) Bool)

(assert (=> b!4854614 (= e!3035009 (validCacheMapDown!453 (cache!4593 cacheDown!921)))))

(assert (= (and d!1558253 res!2072572) b!4854614))

(declare-fun m!5852468 () Bool)

(assert (=> b!4854614 m!5852468))

(assert (=> start!507024 d!1558253))

(declare-fun d!1558255 () Bool)

(assert (=> d!1558255 (= (valid!4134 (_3!3296 lt!1991147)) (validCacheMapDown!453 (cache!4593 (_3!3296 lt!1991147))))))

(declare-fun bs!1173269 () Bool)

(assert (= bs!1173269 d!1558255))

(declare-fun m!5852470 () Bool)

(assert (=> bs!1173269 m!5852470))

(assert (=> b!4854593 d!1558255))

(declare-fun d!1558257 () Bool)

(assert (=> d!1558257 (= (array_inv!6069 (_keys!5462 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))) (bvsge (size!36673 (_keys!5462 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))) #b00000000000000000000000000000000))))

(assert (=> b!4854602 d!1558257))

(declare-fun d!1558259 () Bool)

(assert (=> d!1558259 (= (array_inv!6071 (_values!5430 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))) (bvsge (size!36675 (_values!5430 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))) #b00000000000000000000000000000000))))

(assert (=> b!4854602 d!1558259))

(declare-fun d!1558261 () Bool)

(assert (=> d!1558261 (= (array_inv!6069 (_keys!5461 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))) (bvsge (size!36673 (_keys!5461 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))) #b00000000000000000000000000000000))))

(assert (=> b!4854590 d!1558261))

(declare-fun d!1558263 () Bool)

(assert (=> d!1558263 (= (array_inv!6070 (_values!5429 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))) (bvsge (size!36674 (_values!5429 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))) #b00000000000000000000000000000000))))

(assert (=> b!4854590 d!1558263))

(declare-fun d!1558265 () Bool)

(assert (=> d!1558265 (= (valid!4133 (_2!33068 lt!1991147)) (validCacheMapUp!422 (cache!4594 (_2!33068 lt!1991147))))))

(declare-fun bs!1173270 () Bool)

(assert (= bs!1173270 d!1558265))

(declare-fun m!5852472 () Bool)

(assert (=> bs!1173270 m!5852472))

(assert (=> b!4854600 d!1558265))

(declare-fun d!1558267 () Bool)

(declare-fun lambda!243047 () Int)

(declare-fun forall!13011 (List!55828 Int) Bool)

(assert (=> d!1558267 (= (inv!71436 setElem!27277) (forall!13011 (exprs!3455 setElem!27277) lambda!243047))))

(declare-fun bs!1173271 () Bool)

(assert (= bs!1173271 d!1558267))

(declare-fun m!5852474 () Bool)

(assert (=> bs!1173271 m!5852474))

(assert (=> setNonEmpty!27277 d!1558267))

(declare-fun b!4854623 () Bool)

(declare-fun e!3035016 () Bool)

(declare-fun tp!1365469 () Bool)

(assert (=> b!4854623 (= e!3035016 tp!1365469)))

(declare-fun e!3035018 () Bool)

(declare-fun setNonEmpty!27280 () Bool)

(declare-fun setElem!27280 () Context!5910)

(declare-fun setRes!27280 () Bool)

(declare-fun tp!1365471 () Bool)

(assert (=> setNonEmpty!27280 (= setRes!27280 (and tp!1365471 (inv!71436 setElem!27280) e!3035018))))

(declare-fun setRest!27280 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27280 (= (_2!33065 (h!62153 mapDefault!22533)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27280 true) setRest!27280))))

(declare-fun b!4854624 () Bool)

(declare-fun tp!1365467 () Bool)

(assert (=> b!4854624 (= e!3035018 tp!1365467)))

(declare-fun b!4854625 () Bool)

(declare-fun tp!1365470 () Bool)

(declare-fun tp!1365468 () Bool)

(declare-fun e!3035017 () Bool)

(assert (=> b!4854625 (= e!3035017 (and tp!1365470 (inv!71436 (_2!33064 (_1!33065 (h!62153 mapDefault!22533)))) e!3035016 tp_is_empty!35479 setRes!27280 tp!1365468))))

(declare-fun condSetEmpty!27280 () Bool)

(assert (=> b!4854625 (= condSetEmpty!27280 (= (_2!33065 (h!62153 mapDefault!22533)) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854594 (= tp!1365441 e!3035017)))

(declare-fun setIsEmpty!27280 () Bool)

(assert (=> setIsEmpty!27280 setRes!27280))

(assert (= b!4854625 b!4854623))

(assert (= (and b!4854625 condSetEmpty!27280) setIsEmpty!27280))

(assert (= (and b!4854625 (not condSetEmpty!27280)) setNonEmpty!27280))

(assert (= setNonEmpty!27280 b!4854624))

(assert (= (and b!4854594 ((_ is Cons!55705) mapDefault!22533)) b!4854625))

(declare-fun m!5852476 () Bool)

(assert (=> setNonEmpty!27280 m!5852476))

(declare-fun m!5852478 () Bool)

(assert (=> b!4854625 m!5852478))

(declare-fun b!4854640 () Bool)

(declare-fun e!3035035 () Bool)

(declare-fun tp!1365497 () Bool)

(assert (=> b!4854640 (= e!3035035 tp!1365497)))

(declare-fun b!4854641 () Bool)

(declare-fun e!3035034 () Bool)

(declare-fun tp!1365492 () Bool)

(assert (=> b!4854641 (= e!3035034 tp!1365492)))

(declare-fun setIsEmpty!27285 () Bool)

(declare-fun setRes!27286 () Bool)

(assert (=> setIsEmpty!27285 setRes!27286))

(declare-fun e!3035033 () Bool)

(declare-fun setNonEmpty!27285 () Bool)

(declare-fun setElem!27286 () Context!5910)

(declare-fun setRes!27285 () Bool)

(declare-fun tp!1365496 () Bool)

(assert (=> setNonEmpty!27285 (= setRes!27285 (and tp!1365496 (inv!71436 setElem!27286) e!3035033))))

(declare-fun mapValue!22536 () List!55830)

(declare-fun setRest!27285 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27285 (= (_2!33067 (h!62154 mapValue!22536)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27286 true) setRest!27285))))

(declare-fun mapNonEmpty!22536 () Bool)

(declare-fun mapRes!22536 () Bool)

(declare-fun tp!1365491 () Bool)

(declare-fun e!3035031 () Bool)

(assert (=> mapNonEmpty!22536 (= mapRes!22536 (and tp!1365491 e!3035031))))

(declare-fun mapRest!22536 () (Array (_ BitVec 32) List!55830))

(declare-fun mapKey!22536 () (_ BitVec 32))

(assert (=> mapNonEmpty!22536 (= mapRest!22533 (store mapRest!22536 mapKey!22536 mapValue!22536))))

(declare-fun b!4854643 () Bool)

(declare-fun tp!1365498 () Bool)

(assert (=> b!4854643 (= e!3035033 tp!1365498)))

(declare-fun b!4854644 () Bool)

(declare-fun tp!1365495 () Bool)

(assert (=> b!4854644 (= e!3035031 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 mapValue!22536)))) e!3035035 tp_is_empty!35479 setRes!27285 tp!1365495))))

(declare-fun condSetEmpty!27285 () Bool)

(assert (=> b!4854644 (= condSetEmpty!27285 (= (_2!33067 (h!62154 mapValue!22536)) ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setElem!27285 () Context!5910)

(declare-fun e!3035036 () Bool)

(declare-fun tp!1365494 () Bool)

(declare-fun setNonEmpty!27286 () Bool)

(assert (=> setNonEmpty!27286 (= setRes!27286 (and tp!1365494 (inv!71436 setElem!27285) e!3035036))))

(declare-fun mapDefault!22536 () List!55830)

(declare-fun setRest!27286 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27286 (= (_2!33067 (h!62154 mapDefault!22536)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27285 true) setRest!27286))))

(declare-fun mapIsEmpty!22536 () Bool)

(assert (=> mapIsEmpty!22536 mapRes!22536))

(declare-fun b!4854642 () Bool)

(declare-fun tp!1365490 () Bool)

(assert (=> b!4854642 (= e!3035036 tp!1365490)))

(declare-fun condMapEmpty!22536 () Bool)

(assert (=> mapNonEmpty!22532 (= condMapEmpty!22536 (= mapRest!22533 ((as const (Array (_ BitVec 32) List!55830)) mapDefault!22536)))))

(declare-fun e!3035032 () Bool)

(assert (=> mapNonEmpty!22532 (= tp!1365453 (and e!3035032 mapRes!22536))))

(declare-fun tp!1365493 () Bool)

(declare-fun b!4854645 () Bool)

(assert (=> b!4854645 (= e!3035032 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 mapDefault!22536)))) e!3035034 tp_is_empty!35479 setRes!27286 tp!1365493))))

(declare-fun condSetEmpty!27286 () Bool)

(assert (=> b!4854645 (= condSetEmpty!27286 (= (_2!33067 (h!62154 mapDefault!22536)) ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setIsEmpty!27286 () Bool)

(assert (=> setIsEmpty!27286 setRes!27285))

(assert (= (and mapNonEmpty!22532 condMapEmpty!22536) mapIsEmpty!22536))

(assert (= (and mapNonEmpty!22532 (not condMapEmpty!22536)) mapNonEmpty!22536))

(assert (= b!4854644 b!4854640))

(assert (= (and b!4854644 condSetEmpty!27285) setIsEmpty!27286))

(assert (= (and b!4854644 (not condSetEmpty!27285)) setNonEmpty!27285))

(assert (= setNonEmpty!27285 b!4854643))

(assert (= (and mapNonEmpty!22536 ((_ is Cons!55706) mapValue!22536)) b!4854644))

(assert (= b!4854645 b!4854641))

(assert (= (and b!4854645 condSetEmpty!27286) setIsEmpty!27285))

(assert (= (and b!4854645 (not condSetEmpty!27286)) setNonEmpty!27286))

(assert (= setNonEmpty!27286 b!4854642))

(assert (= (and mapNonEmpty!22532 ((_ is Cons!55706) mapDefault!22536)) b!4854645))

(declare-fun m!5852480 () Bool)

(assert (=> setNonEmpty!27285 m!5852480))

(declare-fun m!5852482 () Bool)

(assert (=> setNonEmpty!27286 m!5852482))

(declare-fun m!5852484 () Bool)

(assert (=> b!4854644 m!5852484))

(declare-fun m!5852486 () Bool)

(assert (=> b!4854645 m!5852486))

(declare-fun m!5852488 () Bool)

(assert (=> mapNonEmpty!22536 m!5852488))

(declare-fun setIsEmpty!27289 () Bool)

(declare-fun setRes!27289 () Bool)

(assert (=> setIsEmpty!27289 setRes!27289))

(declare-fun tp!1365508 () Bool)

(declare-fun e!3035044 () Bool)

(declare-fun e!3035045 () Bool)

(declare-fun b!4854654 () Bool)

(assert (=> b!4854654 (= e!3035045 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 mapValue!22532)))) e!3035044 tp_is_empty!35479 setRes!27289 tp!1365508))))

(declare-fun condSetEmpty!27289 () Bool)

(assert (=> b!4854654 (= condSetEmpty!27289 (= (_2!33067 (h!62154 mapValue!22532)) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> mapNonEmpty!22532 (= tp!1365446 e!3035045)))

(declare-fun b!4854655 () Bool)

(declare-fun tp!1365509 () Bool)

(assert (=> b!4854655 (= e!3035044 tp!1365509)))

(declare-fun b!4854656 () Bool)

(declare-fun e!3035043 () Bool)

(declare-fun tp!1365510 () Bool)

(assert (=> b!4854656 (= e!3035043 tp!1365510)))

(declare-fun tp!1365507 () Bool)

(declare-fun setElem!27289 () Context!5910)

(declare-fun setNonEmpty!27289 () Bool)

(assert (=> setNonEmpty!27289 (= setRes!27289 (and tp!1365507 (inv!71436 setElem!27289) e!3035043))))

(declare-fun setRest!27289 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27289 (= (_2!33067 (h!62154 mapValue!22532)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27289 true) setRest!27289))))

(assert (= b!4854654 b!4854655))

(assert (= (and b!4854654 condSetEmpty!27289) setIsEmpty!27289))

(assert (= (and b!4854654 (not condSetEmpty!27289)) setNonEmpty!27289))

(assert (= setNonEmpty!27289 b!4854656))

(assert (= (and mapNonEmpty!22532 ((_ is Cons!55706) mapValue!22532)) b!4854654))

(declare-fun m!5852490 () Bool)

(assert (=> b!4854654 m!5852490))

(declare-fun m!5852492 () Bool)

(assert (=> setNonEmpty!27289 m!5852492))

(declare-fun setIsEmpty!27290 () Bool)

(declare-fun setRes!27290 () Bool)

(assert (=> setIsEmpty!27290 setRes!27290))

(declare-fun b!4854657 () Bool)

(declare-fun tp!1365512 () Bool)

(declare-fun e!3035047 () Bool)

(declare-fun e!3035048 () Bool)

(assert (=> b!4854657 (= e!3035048 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))))) e!3035047 tp_is_empty!35479 setRes!27290 tp!1365512))))

(declare-fun condSetEmpty!27290 () Bool)

(assert (=> b!4854657 (= condSetEmpty!27290 (= (_2!33067 (h!62154 (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854602 (= tp!1365447 e!3035048)))

(declare-fun b!4854658 () Bool)

(declare-fun tp!1365513 () Bool)

(assert (=> b!4854658 (= e!3035047 tp!1365513)))

(declare-fun b!4854659 () Bool)

(declare-fun e!3035046 () Bool)

(declare-fun tp!1365514 () Bool)

(assert (=> b!4854659 (= e!3035046 tp!1365514)))

(declare-fun setNonEmpty!27290 () Bool)

(declare-fun tp!1365511 () Bool)

(declare-fun setElem!27290 () Context!5910)

(assert (=> setNonEmpty!27290 (= setRes!27290 (and tp!1365511 (inv!71436 setElem!27290) e!3035046))))

(declare-fun setRest!27290 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27290 (= (_2!33067 (h!62154 (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27290 true) setRest!27290))))

(assert (= b!4854657 b!4854658))

(assert (= (and b!4854657 condSetEmpty!27290) setIsEmpty!27290))

(assert (= (and b!4854657 (not condSetEmpty!27290)) setNonEmpty!27290))

(assert (= setNonEmpty!27290 b!4854659))

(assert (= (and b!4854602 ((_ is Cons!55706) (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))) b!4854657))

(declare-fun m!5852494 () Bool)

(assert (=> b!4854657 m!5852494))

(declare-fun m!5852496 () Bool)

(assert (=> setNonEmpty!27290 m!5852496))

(declare-fun setIsEmpty!27291 () Bool)

(declare-fun setRes!27291 () Bool)

(assert (=> setIsEmpty!27291 setRes!27291))

(declare-fun e!3035051 () Bool)

(declare-fun b!4854660 () Bool)

(declare-fun e!3035050 () Bool)

(declare-fun tp!1365516 () Bool)

(assert (=> b!4854660 (= e!3035051 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))))) e!3035050 tp_is_empty!35479 setRes!27291 tp!1365516))))

(declare-fun condSetEmpty!27291 () Bool)

(assert (=> b!4854660 (= condSetEmpty!27291 (= (_2!33067 (h!62154 (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854602 (= tp!1365454 e!3035051)))

(declare-fun b!4854661 () Bool)

(declare-fun tp!1365517 () Bool)

(assert (=> b!4854661 (= e!3035050 tp!1365517)))

(declare-fun b!4854662 () Bool)

(declare-fun e!3035049 () Bool)

(declare-fun tp!1365518 () Bool)

(assert (=> b!4854662 (= e!3035049 tp!1365518)))

(declare-fun tp!1365515 () Bool)

(declare-fun setElem!27291 () Context!5910)

(declare-fun setNonEmpty!27291 () Bool)

(assert (=> setNonEmpty!27291 (= setRes!27291 (and tp!1365515 (inv!71436 setElem!27291) e!3035049))))

(declare-fun setRest!27291 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27291 (= (_2!33067 (h!62154 (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27291 true) setRest!27291))))

(assert (= b!4854660 b!4854661))

(assert (= (and b!4854660 condSetEmpty!27291) setIsEmpty!27291))

(assert (= (and b!4854660 (not condSetEmpty!27291)) setNonEmpty!27291))

(assert (= setNonEmpty!27291 b!4854662))

(assert (= (and b!4854602 ((_ is Cons!55706) (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))) b!4854660))

(declare-fun m!5852498 () Bool)

(assert (=> b!4854660 m!5852498))

(declare-fun m!5852500 () Bool)

(assert (=> setNonEmpty!27291 m!5852500))

(declare-fun b!4854663 () Bool)

(declare-fun e!3035052 () Bool)

(declare-fun tp!1365521 () Bool)

(assert (=> b!4854663 (= e!3035052 tp!1365521)))

(declare-fun setElem!27292 () Context!5910)

(declare-fun setRes!27292 () Bool)

(declare-fun tp!1365523 () Bool)

(declare-fun setNonEmpty!27292 () Bool)

(declare-fun e!3035054 () Bool)

(assert (=> setNonEmpty!27292 (= setRes!27292 (and tp!1365523 (inv!71436 setElem!27292) e!3035054))))

(declare-fun setRest!27292 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27292 (= (_2!33065 (h!62153 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27292 true) setRest!27292))))

(declare-fun b!4854664 () Bool)

(declare-fun tp!1365519 () Bool)

(assert (=> b!4854664 (= e!3035054 tp!1365519)))

(declare-fun e!3035053 () Bool)

(declare-fun tp!1365520 () Bool)

(declare-fun tp!1365522 () Bool)

(declare-fun b!4854665 () Bool)

(assert (=> b!4854665 (= e!3035053 (and tp!1365522 (inv!71436 (_2!33064 (_1!33065 (h!62153 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))))) e!3035052 tp_is_empty!35479 setRes!27292 tp!1365520))))

(declare-fun condSetEmpty!27292 () Bool)

(assert (=> b!4854665 (= condSetEmpty!27292 (= (_2!33065 (h!62153 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854590 (= tp!1365444 e!3035053)))

(declare-fun setIsEmpty!27292 () Bool)

(assert (=> setIsEmpty!27292 setRes!27292))

(assert (= b!4854665 b!4854663))

(assert (= (and b!4854665 condSetEmpty!27292) setIsEmpty!27292))

(assert (= (and b!4854665 (not condSetEmpty!27292)) setNonEmpty!27292))

(assert (= setNonEmpty!27292 b!4854664))

(assert (= (and b!4854590 ((_ is Cons!55705) (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))) b!4854665))

(declare-fun m!5852502 () Bool)

(assert (=> setNonEmpty!27292 m!5852502))

(declare-fun m!5852504 () Bool)

(assert (=> b!4854665 m!5852504))

(declare-fun b!4854666 () Bool)

(declare-fun e!3035055 () Bool)

(declare-fun tp!1365526 () Bool)

(assert (=> b!4854666 (= e!3035055 tp!1365526)))

(declare-fun setElem!27293 () Context!5910)

(declare-fun setRes!27293 () Bool)

(declare-fun e!3035057 () Bool)

(declare-fun tp!1365528 () Bool)

(declare-fun setNonEmpty!27293 () Bool)

(assert (=> setNonEmpty!27293 (= setRes!27293 (and tp!1365528 (inv!71436 setElem!27293) e!3035057))))

(declare-fun setRest!27293 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27293 (= (_2!33065 (h!62153 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27293 true) setRest!27293))))

(declare-fun b!4854667 () Bool)

(declare-fun tp!1365524 () Bool)

(assert (=> b!4854667 (= e!3035057 tp!1365524)))

(declare-fun tp!1365525 () Bool)

(declare-fun tp!1365527 () Bool)

(declare-fun b!4854668 () Bool)

(declare-fun e!3035056 () Bool)

(assert (=> b!4854668 (= e!3035056 (and tp!1365527 (inv!71436 (_2!33064 (_1!33065 (h!62153 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))))) e!3035055 tp_is_empty!35479 setRes!27293 tp!1365525))))

(declare-fun condSetEmpty!27293 () Bool)

(assert (=> b!4854668 (= condSetEmpty!27293 (= (_2!33065 (h!62153 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854590 (= tp!1365442 e!3035056)))

(declare-fun setIsEmpty!27293 () Bool)

(assert (=> setIsEmpty!27293 setRes!27293))

(assert (= b!4854668 b!4854666))

(assert (= (and b!4854668 condSetEmpty!27293) setIsEmpty!27293))

(assert (= (and b!4854668 (not condSetEmpty!27293)) setNonEmpty!27293))

(assert (= setNonEmpty!27293 b!4854667))

(assert (= (and b!4854590 ((_ is Cons!55705) (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))) b!4854668))

(declare-fun m!5852506 () Bool)

(assert (=> setNonEmpty!27293 m!5852506))

(declare-fun m!5852508 () Bool)

(assert (=> b!4854668 m!5852508))

(declare-fun mapNonEmpty!22539 () Bool)

(declare-fun mapRes!22539 () Bool)

(declare-fun tp!1365556 () Bool)

(declare-fun e!3035074 () Bool)

(assert (=> mapNonEmpty!22539 (= mapRes!22539 (and tp!1365556 e!3035074))))

(declare-fun mapKey!22539 () (_ BitVec 32))

(declare-fun mapValue!22539 () List!55829)

(declare-fun mapRest!22539 () (Array (_ BitVec 32) List!55829))

(assert (=> mapNonEmpty!22539 (= mapRest!22532 (store mapRest!22539 mapKey!22539 mapValue!22539))))

(declare-fun mapIsEmpty!22539 () Bool)

(assert (=> mapIsEmpty!22539 mapRes!22539))

(declare-fun e!3035070 () Bool)

(declare-fun tp!1365558 () Bool)

(declare-fun setRes!27299 () Bool)

(declare-fun tp!1365555 () Bool)

(declare-fun b!4854683 () Bool)

(assert (=> b!4854683 (= e!3035074 (and tp!1365558 (inv!71436 (_2!33064 (_1!33065 (h!62153 mapValue!22539)))) e!3035070 tp_is_empty!35479 setRes!27299 tp!1365555))))

(declare-fun condSetEmpty!27299 () Bool)

(assert (=> b!4854683 (= condSetEmpty!27299 (= (_2!33065 (h!62153 mapValue!22539)) ((as const (Array Context!5910 Bool)) false)))))

(declare-fun tp!1365554 () Bool)

(declare-fun setNonEmpty!27299 () Bool)

(declare-fun setElem!27299 () Context!5910)

(declare-fun e!3035072 () Bool)

(assert (=> setNonEmpty!27299 (= setRes!27299 (and tp!1365554 (inv!71436 setElem!27299) e!3035072))))

(declare-fun setRest!27299 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27299 (= (_2!33065 (h!62153 mapValue!22539)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27299 true) setRest!27299))))

(declare-fun setIsEmpty!27298 () Bool)

(declare-fun setRes!27298 () Bool)

(assert (=> setIsEmpty!27298 setRes!27298))

(declare-fun b!4854684 () Bool)

(declare-fun tp!1365559 () Bool)

(assert (=> b!4854684 (= e!3035072 tp!1365559)))

(declare-fun setIsEmpty!27299 () Bool)

(assert (=> setIsEmpty!27299 setRes!27299))

(declare-fun b!4854685 () Bool)

(declare-fun tp!1365552 () Bool)

(assert (=> b!4854685 (= e!3035070 tp!1365552)))

(declare-fun b!4854686 () Bool)

(declare-fun e!3035071 () Bool)

(declare-fun tp!1365560 () Bool)

(assert (=> b!4854686 (= e!3035071 tp!1365560)))

(declare-fun condMapEmpty!22539 () Bool)

(declare-fun mapDefault!22539 () List!55829)

(assert (=> mapNonEmpty!22533 (= condMapEmpty!22539 (= mapRest!22532 ((as const (Array (_ BitVec 32) List!55829)) mapDefault!22539)))))

(declare-fun e!3035073 () Bool)

(assert (=> mapNonEmpty!22533 (= tp!1365455 (and e!3035073 mapRes!22539))))

(declare-fun setNonEmpty!27298 () Bool)

(declare-fun setElem!27298 () Context!5910)

(declare-fun tp!1365551 () Bool)

(declare-fun e!3035075 () Bool)

(assert (=> setNonEmpty!27298 (= setRes!27298 (and tp!1365551 (inv!71436 setElem!27298) e!3035075))))

(declare-fun setRest!27298 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27298 (= (_2!33065 (h!62153 mapDefault!22539)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27298 true) setRest!27298))))

(declare-fun tp!1365553 () Bool)

(declare-fun b!4854687 () Bool)

(declare-fun tp!1365561 () Bool)

(assert (=> b!4854687 (= e!3035073 (and tp!1365553 (inv!71436 (_2!33064 (_1!33065 (h!62153 mapDefault!22539)))) e!3035071 tp_is_empty!35479 setRes!27298 tp!1365561))))

(declare-fun condSetEmpty!27298 () Bool)

(assert (=> b!4854687 (= condSetEmpty!27298 (= (_2!33065 (h!62153 mapDefault!22539)) ((as const (Array Context!5910 Bool)) false)))))

(declare-fun b!4854688 () Bool)

(declare-fun tp!1365557 () Bool)

(assert (=> b!4854688 (= e!3035075 tp!1365557)))

(assert (= (and mapNonEmpty!22533 condMapEmpty!22539) mapIsEmpty!22539))

(assert (= (and mapNonEmpty!22533 (not condMapEmpty!22539)) mapNonEmpty!22539))

(assert (= b!4854683 b!4854685))

(assert (= (and b!4854683 condSetEmpty!27299) setIsEmpty!27299))

(assert (= (and b!4854683 (not condSetEmpty!27299)) setNonEmpty!27299))

(assert (= setNonEmpty!27299 b!4854684))

(assert (= (and mapNonEmpty!22539 ((_ is Cons!55705) mapValue!22539)) b!4854683))

(assert (= b!4854687 b!4854686))

(assert (= (and b!4854687 condSetEmpty!27298) setIsEmpty!27298))

(assert (= (and b!4854687 (not condSetEmpty!27298)) setNonEmpty!27298))

(assert (= setNonEmpty!27298 b!4854688))

(assert (= (and mapNonEmpty!22533 ((_ is Cons!55705) mapDefault!22539)) b!4854687))

(declare-fun m!5852510 () Bool)

(assert (=> setNonEmpty!27298 m!5852510))

(declare-fun m!5852512 () Bool)

(assert (=> b!4854683 m!5852512))

(declare-fun m!5852514 () Bool)

(assert (=> mapNonEmpty!22539 m!5852514))

(declare-fun m!5852516 () Bool)

(assert (=> b!4854687 m!5852516))

(declare-fun m!5852518 () Bool)

(assert (=> setNonEmpty!27299 m!5852518))

(declare-fun b!4854689 () Bool)

(declare-fun e!3035076 () Bool)

(declare-fun tp!1365564 () Bool)

(assert (=> b!4854689 (= e!3035076 tp!1365564)))

(declare-fun tp!1365566 () Bool)

(declare-fun setRes!27300 () Bool)

(declare-fun setElem!27300 () Context!5910)

(declare-fun e!3035078 () Bool)

(declare-fun setNonEmpty!27300 () Bool)

(assert (=> setNonEmpty!27300 (= setRes!27300 (and tp!1365566 (inv!71436 setElem!27300) e!3035078))))

(declare-fun setRest!27300 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27300 (= (_2!33065 (h!62153 mapValue!22533)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27300 true) setRest!27300))))

(declare-fun b!4854690 () Bool)

(declare-fun tp!1365562 () Bool)

(assert (=> b!4854690 (= e!3035078 tp!1365562)))

(declare-fun b!4854691 () Bool)

(declare-fun tp!1365565 () Bool)

(declare-fun tp!1365563 () Bool)

(declare-fun e!3035077 () Bool)

(assert (=> b!4854691 (= e!3035077 (and tp!1365565 (inv!71436 (_2!33064 (_1!33065 (h!62153 mapValue!22533)))) e!3035076 tp_is_empty!35479 setRes!27300 tp!1365563))))

(declare-fun condSetEmpty!27300 () Bool)

(assert (=> b!4854691 (= condSetEmpty!27300 (= (_2!33065 (h!62153 mapValue!22533)) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> mapNonEmpty!22533 (= tp!1365443 e!3035077)))

(declare-fun setIsEmpty!27300 () Bool)

(assert (=> setIsEmpty!27300 setRes!27300))

(assert (= b!4854691 b!4854689))

(assert (= (and b!4854691 condSetEmpty!27300) setIsEmpty!27300))

(assert (= (and b!4854691 (not condSetEmpty!27300)) setNonEmpty!27300))

(assert (= setNonEmpty!27300 b!4854690))

(assert (= (and mapNonEmpty!22533 ((_ is Cons!55705) mapValue!22533)) b!4854691))

(declare-fun m!5852520 () Bool)

(assert (=> setNonEmpty!27300 m!5852520))

(declare-fun m!5852522 () Bool)

(assert (=> b!4854691 m!5852522))

(declare-fun setIsEmpty!27301 () Bool)

(declare-fun setRes!27301 () Bool)

(assert (=> setIsEmpty!27301 setRes!27301))

(declare-fun e!3035080 () Bool)

(declare-fun tp!1365568 () Bool)

(declare-fun e!3035081 () Bool)

(declare-fun b!4854692 () Bool)

(assert (=> b!4854692 (= e!3035081 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 mapDefault!22532)))) e!3035080 tp_is_empty!35479 setRes!27301 tp!1365568))))

(declare-fun condSetEmpty!27301 () Bool)

(assert (=> b!4854692 (= condSetEmpty!27301 (= (_2!33067 (h!62154 mapDefault!22532)) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854595 (= tp!1365452 e!3035081)))

(declare-fun b!4854693 () Bool)

(declare-fun tp!1365569 () Bool)

(assert (=> b!4854693 (= e!3035080 tp!1365569)))

(declare-fun b!4854694 () Bool)

(declare-fun e!3035079 () Bool)

(declare-fun tp!1365570 () Bool)

(assert (=> b!4854694 (= e!3035079 tp!1365570)))

(declare-fun setNonEmpty!27301 () Bool)

(declare-fun tp!1365567 () Bool)

(declare-fun setElem!27301 () Context!5910)

(assert (=> setNonEmpty!27301 (= setRes!27301 (and tp!1365567 (inv!71436 setElem!27301) e!3035079))))

(declare-fun setRest!27301 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27301 (= (_2!33067 (h!62154 mapDefault!22532)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27301 true) setRest!27301))))

(assert (= b!4854692 b!4854693))

(assert (= (and b!4854692 condSetEmpty!27301) setIsEmpty!27301))

(assert (= (and b!4854692 (not condSetEmpty!27301)) setNonEmpty!27301))

(assert (= setNonEmpty!27301 b!4854694))

(assert (= (and b!4854595 ((_ is Cons!55706) mapDefault!22532)) b!4854692))

(declare-fun m!5852524 () Bool)

(assert (=> b!4854692 m!5852524))

(declare-fun m!5852526 () Bool)

(assert (=> setNonEmpty!27301 m!5852526))

(declare-fun b!4854699 () Bool)

(declare-fun e!3035084 () Bool)

(declare-fun tp!1365575 () Bool)

(declare-fun tp!1365576 () Bool)

(assert (=> b!4854699 (= e!3035084 (and tp!1365575 tp!1365576))))

(assert (=> b!4854596 (= tp!1365456 e!3035084)))

(assert (= (and b!4854596 ((_ is Cons!55704) (exprs!3455 setElem!27277))) b!4854699))

(declare-fun condSetEmpty!27304 () Bool)

(assert (=> setNonEmpty!27277 (= condSetEmpty!27304 (= setRest!27277 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27304 () Bool)

(assert (=> setNonEmpty!27277 (= tp!1365450 setRes!27304)))

(declare-fun setIsEmpty!27304 () Bool)

(assert (=> setIsEmpty!27304 setRes!27304))

(declare-fun e!3035087 () Bool)

(declare-fun tp!1365582 () Bool)

(declare-fun setElem!27304 () Context!5910)

(declare-fun setNonEmpty!27304 () Bool)

(assert (=> setNonEmpty!27304 (= setRes!27304 (and tp!1365582 (inv!71436 setElem!27304) e!3035087))))

(declare-fun setRest!27304 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27304 (= setRest!27277 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27304 true) setRest!27304))))

(declare-fun b!4854704 () Bool)

(declare-fun tp!1365581 () Bool)

(assert (=> b!4854704 (= e!3035087 tp!1365581)))

(assert (= (and setNonEmpty!27277 condSetEmpty!27304) setIsEmpty!27304))

(assert (= (and setNonEmpty!27277 (not condSetEmpty!27304)) setNonEmpty!27304))

(assert (= setNonEmpty!27304 b!4854704))

(declare-fun m!5852528 () Bool)

(assert (=> setNonEmpty!27304 m!5852528))

(check-sat b_and!342181 (not b!4854690) (not setNonEmpty!27290) (not setNonEmpty!27301) (not setNonEmpty!27289) (not d!1558249) (not b!4854611) (not d!1558267) b_and!342185 (not setNonEmpty!27286) (not b!4854684) (not b!4854688) (not b!4854645) (not b!4854656) (not d!1558247) (not b!4854685) (not b!4854665) tp_is_empty!35479 (not b!4854667) (not b!4854640) (not b!4854704) (not b!4854625) (not b!4854689) (not b!4854699) (not d!1558255) (not d!1558265) (not mapNonEmpty!22539) (not b!4854691) (not setNonEmpty!27298) (not b!4854662) (not b!4854659) b_and!342179 (not b!4854668) (not setNonEmpty!27304) (not b!4854694) (not b!4854658) (not b!4854623) (not b!4854692) b_and!342183 (not b!4854664) (not b!4854661) (not b!4854693) (not b!4854683) (not b!4854641) (not b!4854624) (not b!4854655) (not b!4854644) (not b!4854660) (not b!4854686) (not setNonEmpty!27285) (not b_next!131145) (not b_next!131143) (not b!4854643) (not b!4854663) (not b_next!131141) (not b!4854666) (not b!4854642) (not setNonEmpty!27291) (not mapNonEmpty!22536) (not b_next!131147) (not setNonEmpty!27292) (not b!4854687) (not setNonEmpty!27299) (not b!4854657) (not b!4854654) (not setNonEmpty!27293) (not setNonEmpty!27300) (not setNonEmpty!27280) (not b!4854614))
(check-sat b_and!342181 b_and!342179 b_and!342183 (not b_next!131145) (not b_next!131147) b_and!342185 (not b_next!131143) (not b_next!131141))
(get-model)

(declare-fun bs!1173272 () Bool)

(declare-fun d!1558269 () Bool)

(assert (= bs!1173272 (and d!1558269 d!1558267)))

(declare-fun lambda!243048 () Int)

(assert (=> bs!1173272 (= lambda!243048 lambda!243047)))

(assert (=> d!1558269 (= (inv!71436 (_2!33064 (_1!33065 (h!62153 mapDefault!22539)))) (forall!13011 (exprs!3455 (_2!33064 (_1!33065 (h!62153 mapDefault!22539)))) lambda!243048))))

(declare-fun bs!1173273 () Bool)

(assert (= bs!1173273 d!1558269))

(declare-fun m!5852530 () Bool)

(assert (=> bs!1173273 m!5852530))

(assert (=> b!4854687 d!1558269))

(declare-fun d!1558271 () Bool)

(declare-fun res!2072577 () Bool)

(declare-fun e!3035092 () Bool)

(assert (=> d!1558271 (=> res!2072577 e!3035092)))

(assert (=> d!1558271 (= res!2072577 ((_ is Nil!55704) (exprs!3455 setElem!27277)))))

(assert (=> d!1558271 (= (forall!13011 (exprs!3455 setElem!27277) lambda!243047) e!3035092)))

(declare-fun b!4854709 () Bool)

(declare-fun e!3035093 () Bool)

(assert (=> b!4854709 (= e!3035092 e!3035093)))

(declare-fun res!2072578 () Bool)

(assert (=> b!4854709 (=> (not res!2072578) (not e!3035093))))

(declare-fun dynLambda!22387 (Int Regex!13065) Bool)

(assert (=> b!4854709 (= res!2072578 (dynLambda!22387 lambda!243047 (h!62152 (exprs!3455 setElem!27277))))))

(declare-fun b!4854710 () Bool)

(assert (=> b!4854710 (= e!3035093 (forall!13011 (t!363330 (exprs!3455 setElem!27277)) lambda!243047))))

(assert (= (and d!1558271 (not res!2072577)) b!4854709))

(assert (= (and b!4854709 res!2072578) b!4854710))

(declare-fun b_lambda!193233 () Bool)

(assert (=> (not b_lambda!193233) (not b!4854709)))

(declare-fun m!5852532 () Bool)

(assert (=> b!4854709 m!5852532))

(declare-fun m!5852534 () Bool)

(assert (=> b!4854710 m!5852534))

(assert (=> d!1558267 d!1558271))

(declare-fun bs!1173274 () Bool)

(declare-fun d!1558273 () Bool)

(assert (= bs!1173274 (and d!1558273 d!1558267)))

(declare-fun lambda!243049 () Int)

(assert (=> bs!1173274 (= lambda!243049 lambda!243047)))

(declare-fun bs!1173275 () Bool)

(assert (= bs!1173275 (and d!1558273 d!1558269)))

(assert (=> bs!1173275 (= lambda!243049 lambda!243048)))

(assert (=> d!1558273 (= (inv!71436 setElem!27304) (forall!13011 (exprs!3455 setElem!27304) lambda!243049))))

(declare-fun bs!1173276 () Bool)

(assert (= bs!1173276 d!1558273))

(declare-fun m!5852536 () Bool)

(assert (=> bs!1173276 m!5852536))

(assert (=> setNonEmpty!27304 d!1558273))

(declare-fun bs!1173277 () Bool)

(declare-fun d!1558275 () Bool)

(assert (= bs!1173277 (and d!1558275 d!1558267)))

(declare-fun lambda!243050 () Int)

(assert (=> bs!1173277 (= lambda!243050 lambda!243047)))

(declare-fun bs!1173278 () Bool)

(assert (= bs!1173278 (and d!1558275 d!1558269)))

(assert (=> bs!1173278 (= lambda!243050 lambda!243048)))

(declare-fun bs!1173279 () Bool)

(assert (= bs!1173279 (and d!1558275 d!1558273)))

(assert (=> bs!1173279 (= lambda!243050 lambda!243049)))

(assert (=> d!1558275 (= (inv!71436 setElem!27300) (forall!13011 (exprs!3455 setElem!27300) lambda!243050))))

(declare-fun bs!1173280 () Bool)

(assert (= bs!1173280 d!1558275))

(declare-fun m!5852538 () Bool)

(assert (=> bs!1173280 m!5852538))

(assert (=> setNonEmpty!27300 d!1558275))

(declare-fun bs!1173281 () Bool)

(declare-fun d!1558277 () Bool)

(assert (= bs!1173281 (and d!1558277 d!1558267)))

(declare-fun lambda!243051 () Int)

(assert (=> bs!1173281 (= lambda!243051 lambda!243047)))

(declare-fun bs!1173282 () Bool)

(assert (= bs!1173282 (and d!1558277 d!1558269)))

(assert (=> bs!1173282 (= lambda!243051 lambda!243048)))

(declare-fun bs!1173283 () Bool)

(assert (= bs!1173283 (and d!1558277 d!1558273)))

(assert (=> bs!1173283 (= lambda!243051 lambda!243049)))

(declare-fun bs!1173284 () Bool)

(assert (= bs!1173284 (and d!1558277 d!1558275)))

(assert (=> bs!1173284 (= lambda!243051 lambda!243050)))

(assert (=> d!1558277 (= (inv!71436 setElem!27301) (forall!13011 (exprs!3455 setElem!27301) lambda!243051))))

(declare-fun bs!1173285 () Bool)

(assert (= bs!1173285 d!1558277))

(declare-fun m!5852540 () Bool)

(assert (=> bs!1173285 m!5852540))

(assert (=> setNonEmpty!27301 d!1558277))

(declare-fun bs!1173286 () Bool)

(declare-fun d!1558279 () Bool)

(assert (= bs!1173286 (and d!1558279 d!1558267)))

(declare-fun lambda!243052 () Int)

(assert (=> bs!1173286 (= lambda!243052 lambda!243047)))

(declare-fun bs!1173287 () Bool)

(assert (= bs!1173287 (and d!1558279 d!1558273)))

(assert (=> bs!1173287 (= lambda!243052 lambda!243049)))

(declare-fun bs!1173288 () Bool)

(assert (= bs!1173288 (and d!1558279 d!1558277)))

(assert (=> bs!1173288 (= lambda!243052 lambda!243051)))

(declare-fun bs!1173289 () Bool)

(assert (= bs!1173289 (and d!1558279 d!1558269)))

(assert (=> bs!1173289 (= lambda!243052 lambda!243048)))

(declare-fun bs!1173290 () Bool)

(assert (= bs!1173290 (and d!1558279 d!1558275)))

(assert (=> bs!1173290 (= lambda!243052 lambda!243050)))

(assert (=> d!1558279 (= (inv!71436 (_2!33064 (_1!33065 (h!62153 mapValue!22533)))) (forall!13011 (exprs!3455 (_2!33064 (_1!33065 (h!62153 mapValue!22533)))) lambda!243052))))

(declare-fun bs!1173291 () Bool)

(assert (= bs!1173291 d!1558279))

(declare-fun m!5852542 () Bool)

(assert (=> bs!1173291 m!5852542))

(assert (=> b!4854691 d!1558279))

(declare-fun bs!1173292 () Bool)

(declare-fun d!1558281 () Bool)

(assert (= bs!1173292 (and d!1558281 d!1558273)))

(declare-fun lambda!243053 () Int)

(assert (=> bs!1173292 (= lambda!243053 lambda!243049)))

(declare-fun bs!1173293 () Bool)

(assert (= bs!1173293 (and d!1558281 d!1558277)))

(assert (=> bs!1173293 (= lambda!243053 lambda!243051)))

(declare-fun bs!1173294 () Bool)

(assert (= bs!1173294 (and d!1558281 d!1558269)))

(assert (=> bs!1173294 (= lambda!243053 lambda!243048)))

(declare-fun bs!1173295 () Bool)

(assert (= bs!1173295 (and d!1558281 d!1558275)))

(assert (=> bs!1173295 (= lambda!243053 lambda!243050)))

(declare-fun bs!1173296 () Bool)

(assert (= bs!1173296 (and d!1558281 d!1558267)))

(assert (=> bs!1173296 (= lambda!243053 lambda!243047)))

(declare-fun bs!1173297 () Bool)

(assert (= bs!1173297 (and d!1558281 d!1558279)))

(assert (=> bs!1173297 (= lambda!243053 lambda!243052)))

(assert (=> d!1558281 (= (inv!71436 (_1!33066 (_1!33067 (h!62154 mapDefault!22532)))) (forall!13011 (exprs!3455 (_1!33066 (_1!33067 (h!62154 mapDefault!22532)))) lambda!243053))))

(declare-fun bs!1173298 () Bool)

(assert (= bs!1173298 d!1558281))

(declare-fun m!5852544 () Bool)

(assert (=> bs!1173298 m!5852544))

(assert (=> b!4854692 d!1558281))

(declare-fun b!4854748 () Bool)

(declare-fun b_free!130359 () Bool)

(declare-fun b_next!131149 () Bool)

(assert (=> b!4854748 (= b_free!130359 (not b_next!131149))))

(declare-fun tp!1365627 () Bool)

(declare-fun b_and!342187 () Bool)

(assert (=> b!4854748 (= tp!1365627 b_and!342187)))

(declare-fun b!4854755 () Bool)

(declare-fun b_free!130361 () Bool)

(declare-fun b_next!131151 () Bool)

(assert (=> b!4854755 (= b_free!130361 (not b_next!131151))))

(declare-fun tp!1365622 () Bool)

(declare-fun b_and!342189 () Bool)

(assert (=> b!4854755 (= tp!1365622 b_and!342189)))

(declare-fun b!4854746 () Bool)

(declare-fun b_free!130363 () Bool)

(declare-fun b_next!131153 () Bool)

(assert (=> b!4854746 (= b_free!130363 (not b_next!131153))))

(declare-fun tp!1365618 () Bool)

(declare-fun b_and!342191 () Bool)

(assert (=> b!4854746 (= tp!1365618 b_and!342191)))

(declare-fun b!4854756 () Bool)

(declare-fun b_free!130365 () Bool)

(declare-fun b_next!131155 () Bool)

(assert (=> b!4854756 (= b_free!130365 (not b_next!131155))))

(declare-fun tp!1365628 () Bool)

(declare-fun b_and!342193 () Bool)

(assert (=> b!4854756 (= tp!1365628 b_and!342193)))

(declare-fun b!4854745 () Bool)

(declare-fun e!3035131 () Bool)

(declare-fun e!3035132 () Bool)

(assert (=> b!4854745 (= e!3035131 e!3035132)))

(declare-fun mapIsEmpty!22544 () Bool)

(declare-fun mapRes!22544 () Bool)

(assert (=> mapIsEmpty!22544 mapRes!22544))

(declare-fun e!3035144 () Bool)

(declare-fun e!3035133 () Bool)

(assert (=> b!4854746 (= e!3035144 (and e!3035133 tp!1365618))))

(declare-fun b!4854747 () Bool)

(declare-fun e!3035145 () Bool)

(declare-fun res!2072586 () tuple3!5526)

(assert (=> b!4854747 (= e!3035145 (valid!4134 (_3!3296 res!2072586)))))

(declare-fun e!3035141 () Bool)

(declare-fun tp!1365619 () Bool)

(declare-fun e!3035146 () Bool)

(declare-fun tp!1365620 () Bool)

(assert (=> b!4854748 (= e!3035141 (and tp!1365627 tp!1365620 tp!1365619 (array_inv!6069 (_keys!5461 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 (_3!3296 res!2072586)))))))) (array_inv!6070 (_values!5429 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 (_3!3296 res!2072586)))))))) e!3035146))))

(declare-fun b!4854749 () Bool)

(declare-fun e!3035135 () Bool)

(assert (=> b!4854749 (= e!3035135 e!3035131)))

(declare-fun b!4854750 () Bool)

(declare-fun e!3035130 () Bool)

(declare-fun lt!1991153 () MutLongMap!5108)

(assert (=> b!4854750 (= e!3035130 (and e!3035135 ((_ is LongMap!5108) lt!1991153)))))

(assert (=> b!4854750 (= lt!1991153 (v!49592 (underlying!10412 (cache!4594 (_2!33068 res!2072586)))))))

(declare-fun b!4854751 () Bool)

(declare-fun res!2072585 () Bool)

(assert (=> b!4854751 (=> (not res!2072585) (not e!3035145))))

(assert (=> b!4854751 (= res!2072585 (valid!4133 (_2!33068 res!2072586)))))

(declare-fun b!4854752 () Bool)

(declare-fun e!3035137 () Bool)

(declare-fun e!3035147 () Bool)

(assert (=> b!4854752 (= e!3035137 e!3035147)))

(declare-fun b!4854753 () Bool)

(declare-fun e!3035140 () Bool)

(assert (=> b!4854753 (= e!3035140 e!3035144)))

(declare-fun b!4854754 () Bool)

(declare-fun e!3035143 () Bool)

(assert (=> b!4854754 (= e!3035143 e!3035141)))

(declare-fun setIsEmpty!27307 () Bool)

(declare-fun setRes!27307 () Bool)

(assert (=> setIsEmpty!27307 setRes!27307))

(declare-fun d!1558283 () Bool)

(assert (=> d!1558283 e!3035145))

(declare-fun res!2072587 () Bool)

(assert (=> d!1558283 (=> (not res!2072587) (not e!3035145))))

(assert (=> d!1558283 (= res!2072587 (= (_1!33068 res!2072586) (derivationStepZipper!566 z!669 a!1196)))))

(assert (=> d!1558283 (and setRes!27307 (inv!71437 (_2!33068 res!2072586)) e!3035137 (inv!71438 (_3!3296 res!2072586)) e!3035140)))

(declare-fun condSetEmpty!27307 () Bool)

(assert (=> d!1558283 (= condSetEmpty!27307 (= (_1!33068 res!2072586) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> d!1558283 (= (choose!35545 z!669 a!1196 cacheUp!802 cacheDown!921) res!2072586)))

(declare-fun mapNonEmpty!22544 () Bool)

(declare-fun tp!1365615 () Bool)

(declare-fun tp!1365616 () Bool)

(assert (=> mapNonEmpty!22544 (= mapRes!22544 (and tp!1365615 tp!1365616))))

(declare-fun mapRest!22545 () (Array (_ BitVec 32) List!55829))

(declare-fun mapKey!22544 () (_ BitVec 32))

(declare-fun mapValue!22544 () List!55829)

(assert (=> mapNonEmpty!22544 (= (arr!8400 (_values!5429 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 (_3!3296 res!2072586)))))))) (store mapRest!22545 mapKey!22544 mapValue!22544))))

(assert (=> b!4854755 (= e!3035147 (and e!3035130 tp!1365622))))

(declare-fun mapNonEmpty!22545 () Bool)

(declare-fun mapRes!22545 () Bool)

(declare-fun tp!1365629 () Bool)

(declare-fun tp!1365624 () Bool)

(assert (=> mapNonEmpty!22545 (= mapRes!22545 (and tp!1365629 tp!1365624))))

(declare-fun mapValue!22545 () List!55830)

(declare-fun mapRest!22544 () (Array (_ BitVec 32) List!55830))

(declare-fun mapKey!22545 () (_ BitVec 32))

(assert (=> mapNonEmpty!22545 (= (arr!8401 (_values!5430 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 (_2!33068 res!2072586)))))))) (store mapRest!22544 mapKey!22545 mapValue!22545))))

(declare-fun tp!1365617 () Bool)

(declare-fun tp!1365621 () Bool)

(declare-fun e!3035134 () Bool)

(assert (=> b!4854756 (= e!3035132 (and tp!1365628 tp!1365617 tp!1365621 (array_inv!6069 (_keys!5462 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 (_2!33068 res!2072586)))))))) (array_inv!6071 (_values!5430 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 (_2!33068 res!2072586)))))))) e!3035134))))

(declare-fun b!4854757 () Bool)

(declare-fun e!3035136 () Bool)

(declare-fun lt!1991152 () MutLongMap!5107)

(assert (=> b!4854757 (= e!3035133 (and e!3035136 ((_ is LongMap!5107) lt!1991152)))))

(assert (=> b!4854757 (= lt!1991152 (v!49590 (underlying!10410 (cache!4593 (_3!3296 res!2072586)))))))

(declare-fun b!4854758 () Bool)

(assert (=> b!4854758 (= e!3035136 e!3035143)))

(declare-fun setNonEmpty!27307 () Bool)

(declare-fun setElem!27307 () Context!5910)

(declare-fun tp!1365625 () Bool)

(declare-fun e!3035142 () Bool)

(assert (=> setNonEmpty!27307 (= setRes!27307 (and tp!1365625 (inv!71436 setElem!27307) e!3035142))))

(declare-fun setRest!27307 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27307 (= (_1!33068 res!2072586) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27307 true) setRest!27307))))

(declare-fun b!4854759 () Bool)

(declare-fun tp!1365630 () Bool)

(assert (=> b!4854759 (= e!3035146 (and tp!1365630 mapRes!22544))))

(declare-fun condMapEmpty!22544 () Bool)

(declare-fun mapDefault!22544 () List!55829)

(assert (=> b!4854759 (= condMapEmpty!22544 (= (arr!8400 (_values!5429 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 (_3!3296 res!2072586)))))))) ((as const (Array (_ BitVec 32) List!55829)) mapDefault!22544)))))

(declare-fun mapIsEmpty!22545 () Bool)

(assert (=> mapIsEmpty!22545 mapRes!22545))

(declare-fun b!4854760 () Bool)

(declare-fun tp!1365623 () Bool)

(assert (=> b!4854760 (= e!3035142 tp!1365623)))

(declare-fun b!4854761 () Bool)

(declare-fun tp!1365626 () Bool)

(assert (=> b!4854761 (= e!3035134 (and tp!1365626 mapRes!22545))))

(declare-fun condMapEmpty!22545 () Bool)

(declare-fun mapDefault!22545 () List!55830)

(assert (=> b!4854761 (= condMapEmpty!22545 (= (arr!8401 (_values!5430 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 (_2!33068 res!2072586)))))))) ((as const (Array (_ BitVec 32) List!55830)) mapDefault!22545)))))

(assert (= (and d!1558283 condSetEmpty!27307) setIsEmpty!27307))

(assert (= (and d!1558283 (not condSetEmpty!27307)) setNonEmpty!27307))

(assert (= setNonEmpty!27307 b!4854760))

(assert (= (and b!4854761 condMapEmpty!22545) mapIsEmpty!22545))

(assert (= (and b!4854761 (not condMapEmpty!22545)) mapNonEmpty!22545))

(assert (= b!4854756 b!4854761))

(assert (= b!4854745 b!4854756))

(assert (= b!4854749 b!4854745))

(assert (= (and b!4854750 ((_ is LongMap!5108) (v!49592 (underlying!10412 (cache!4594 (_2!33068 res!2072586)))))) b!4854749))

(assert (= b!4854755 b!4854750))

(assert (= (and b!4854752 ((_ is HashMap!4980) (cache!4594 (_2!33068 res!2072586)))) b!4854755))

(assert (= d!1558283 b!4854752))

(assert (= (and b!4854759 condMapEmpty!22544) mapIsEmpty!22544))

(assert (= (and b!4854759 (not condMapEmpty!22544)) mapNonEmpty!22544))

(assert (= b!4854748 b!4854759))

(assert (= b!4854754 b!4854748))

(assert (= b!4854758 b!4854754))

(assert (= (and b!4854757 ((_ is LongMap!5107) (v!49590 (underlying!10410 (cache!4593 (_3!3296 res!2072586)))))) b!4854758))

(assert (= b!4854746 b!4854757))

(assert (= (and b!4854753 ((_ is HashMap!4979) (cache!4593 (_3!3296 res!2072586)))) b!4854746))

(assert (= d!1558283 b!4854753))

(assert (= (and d!1558283 res!2072587) b!4854751))

(assert (= (and b!4854751 res!2072585) b!4854747))

(declare-fun m!5852546 () Bool)

(assert (=> b!4854751 m!5852546))

(declare-fun m!5852548 () Bool)

(assert (=> mapNonEmpty!22545 m!5852548))

(declare-fun m!5852550 () Bool)

(assert (=> b!4854756 m!5852550))

(declare-fun m!5852552 () Bool)

(assert (=> b!4854756 m!5852552))

(declare-fun m!5852554 () Bool)

(assert (=> mapNonEmpty!22544 m!5852554))

(declare-fun m!5852556 () Bool)

(assert (=> b!4854748 m!5852556))

(declare-fun m!5852558 () Bool)

(assert (=> b!4854748 m!5852558))

(declare-fun m!5852560 () Bool)

(assert (=> setNonEmpty!27307 m!5852560))

(assert (=> d!1558283 m!5852452))

(declare-fun m!5852562 () Bool)

(assert (=> d!1558283 m!5852562))

(declare-fun m!5852564 () Bool)

(assert (=> d!1558283 m!5852564))

(declare-fun m!5852566 () Bool)

(assert (=> b!4854747 m!5852566))

(assert (=> d!1558249 d!1558283))

(declare-fun bs!1173299 () Bool)

(declare-fun d!1558285 () Bool)

(assert (= bs!1173299 (and d!1558285 d!1558273)))

(declare-fun lambda!243054 () Int)

(assert (=> bs!1173299 (= lambda!243054 lambda!243049)))

(declare-fun bs!1173300 () Bool)

(assert (= bs!1173300 (and d!1558285 d!1558277)))

(assert (=> bs!1173300 (= lambda!243054 lambda!243051)))

(declare-fun bs!1173301 () Bool)

(assert (= bs!1173301 (and d!1558285 d!1558269)))

(assert (=> bs!1173301 (= lambda!243054 lambda!243048)))

(declare-fun bs!1173302 () Bool)

(assert (= bs!1173302 (and d!1558285 d!1558281)))

(assert (=> bs!1173302 (= lambda!243054 lambda!243053)))

(declare-fun bs!1173303 () Bool)

(assert (= bs!1173303 (and d!1558285 d!1558275)))

(assert (=> bs!1173303 (= lambda!243054 lambda!243050)))

(declare-fun bs!1173304 () Bool)

(assert (= bs!1173304 (and d!1558285 d!1558267)))

(assert (=> bs!1173304 (= lambda!243054 lambda!243047)))

(declare-fun bs!1173305 () Bool)

(assert (= bs!1173305 (and d!1558285 d!1558279)))

(assert (=> bs!1173305 (= lambda!243054 lambda!243052)))

(assert (=> d!1558285 (= (inv!71436 (_1!33066 (_1!33067 (h!62154 (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))))) (forall!13011 (exprs!3455 (_1!33066 (_1!33067 (h!62154 (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))))) lambda!243054))))

(declare-fun bs!1173306 () Bool)

(assert (= bs!1173306 d!1558285))

(declare-fun m!5852568 () Bool)

(assert (=> bs!1173306 m!5852568))

(assert (=> b!4854657 d!1558285))

(declare-fun bs!1173307 () Bool)

(declare-fun d!1558287 () Bool)

(assert (= bs!1173307 (and d!1558287 d!1558273)))

(declare-fun lambda!243055 () Int)

(assert (=> bs!1173307 (= lambda!243055 lambda!243049)))

(declare-fun bs!1173308 () Bool)

(assert (= bs!1173308 (and d!1558287 d!1558285)))

(assert (=> bs!1173308 (= lambda!243055 lambda!243054)))

(declare-fun bs!1173309 () Bool)

(assert (= bs!1173309 (and d!1558287 d!1558277)))

(assert (=> bs!1173309 (= lambda!243055 lambda!243051)))

(declare-fun bs!1173310 () Bool)

(assert (= bs!1173310 (and d!1558287 d!1558269)))

(assert (=> bs!1173310 (= lambda!243055 lambda!243048)))

(declare-fun bs!1173311 () Bool)

(assert (= bs!1173311 (and d!1558287 d!1558281)))

(assert (=> bs!1173311 (= lambda!243055 lambda!243053)))

(declare-fun bs!1173312 () Bool)

(assert (= bs!1173312 (and d!1558287 d!1558275)))

(assert (=> bs!1173312 (= lambda!243055 lambda!243050)))

(declare-fun bs!1173313 () Bool)

(assert (= bs!1173313 (and d!1558287 d!1558267)))

(assert (=> bs!1173313 (= lambda!243055 lambda!243047)))

(declare-fun bs!1173314 () Bool)

(assert (= bs!1173314 (and d!1558287 d!1558279)))

(assert (=> bs!1173314 (= lambda!243055 lambda!243052)))

(assert (=> d!1558287 (= (inv!71436 (_1!33066 (_1!33067 (h!62154 mapValue!22536)))) (forall!13011 (exprs!3455 (_1!33066 (_1!33067 (h!62154 mapValue!22536)))) lambda!243055))))

(declare-fun bs!1173315 () Bool)

(assert (= bs!1173315 d!1558287))

(declare-fun m!5852570 () Bool)

(assert (=> bs!1173315 m!5852570))

(assert (=> b!4854644 d!1558287))

(declare-fun bs!1173316 () Bool)

(declare-fun d!1558289 () Bool)

(assert (= bs!1173316 (and d!1558289 d!1558273)))

(declare-fun lambda!243056 () Int)

(assert (=> bs!1173316 (= lambda!243056 lambda!243049)))

(declare-fun bs!1173317 () Bool)

(assert (= bs!1173317 (and d!1558289 d!1558285)))

(assert (=> bs!1173317 (= lambda!243056 lambda!243054)))

(declare-fun bs!1173318 () Bool)

(assert (= bs!1173318 (and d!1558289 d!1558277)))

(assert (=> bs!1173318 (= lambda!243056 lambda!243051)))

(declare-fun bs!1173319 () Bool)

(assert (= bs!1173319 (and d!1558289 d!1558287)))

(assert (=> bs!1173319 (= lambda!243056 lambda!243055)))

(declare-fun bs!1173320 () Bool)

(assert (= bs!1173320 (and d!1558289 d!1558269)))

(assert (=> bs!1173320 (= lambda!243056 lambda!243048)))

(declare-fun bs!1173321 () Bool)

(assert (= bs!1173321 (and d!1558289 d!1558281)))

(assert (=> bs!1173321 (= lambda!243056 lambda!243053)))

(declare-fun bs!1173322 () Bool)

(assert (= bs!1173322 (and d!1558289 d!1558275)))

(assert (=> bs!1173322 (= lambda!243056 lambda!243050)))

(declare-fun bs!1173323 () Bool)

(assert (= bs!1173323 (and d!1558289 d!1558267)))

(assert (=> bs!1173323 (= lambda!243056 lambda!243047)))

(declare-fun bs!1173324 () Bool)

(assert (= bs!1173324 (and d!1558289 d!1558279)))

(assert (=> bs!1173324 (= lambda!243056 lambda!243052)))

(assert (=> d!1558289 (= (inv!71436 (_1!33066 (_1!33067 (h!62154 mapValue!22532)))) (forall!13011 (exprs!3455 (_1!33066 (_1!33067 (h!62154 mapValue!22532)))) lambda!243056))))

(declare-fun bs!1173325 () Bool)

(assert (= bs!1173325 d!1558289))

(declare-fun m!5852572 () Bool)

(assert (=> bs!1173325 m!5852572))

(assert (=> b!4854654 d!1558289))

(declare-fun bs!1173326 () Bool)

(declare-fun d!1558291 () Bool)

(assert (= bs!1173326 (and d!1558291 d!1558289)))

(declare-fun lambda!243057 () Int)

(assert (=> bs!1173326 (= lambda!243057 lambda!243056)))

(declare-fun bs!1173327 () Bool)

(assert (= bs!1173327 (and d!1558291 d!1558273)))

(assert (=> bs!1173327 (= lambda!243057 lambda!243049)))

(declare-fun bs!1173328 () Bool)

(assert (= bs!1173328 (and d!1558291 d!1558285)))

(assert (=> bs!1173328 (= lambda!243057 lambda!243054)))

(declare-fun bs!1173329 () Bool)

(assert (= bs!1173329 (and d!1558291 d!1558277)))

(assert (=> bs!1173329 (= lambda!243057 lambda!243051)))

(declare-fun bs!1173330 () Bool)

(assert (= bs!1173330 (and d!1558291 d!1558287)))

(assert (=> bs!1173330 (= lambda!243057 lambda!243055)))

(declare-fun bs!1173331 () Bool)

(assert (= bs!1173331 (and d!1558291 d!1558269)))

(assert (=> bs!1173331 (= lambda!243057 lambda!243048)))

(declare-fun bs!1173332 () Bool)

(assert (= bs!1173332 (and d!1558291 d!1558281)))

(assert (=> bs!1173332 (= lambda!243057 lambda!243053)))

(declare-fun bs!1173333 () Bool)

(assert (= bs!1173333 (and d!1558291 d!1558275)))

(assert (=> bs!1173333 (= lambda!243057 lambda!243050)))

(declare-fun bs!1173334 () Bool)

(assert (= bs!1173334 (and d!1558291 d!1558267)))

(assert (=> bs!1173334 (= lambda!243057 lambda!243047)))

(declare-fun bs!1173335 () Bool)

(assert (= bs!1173335 (and d!1558291 d!1558279)))

(assert (=> bs!1173335 (= lambda!243057 lambda!243052)))

(assert (=> d!1558291 (= (inv!71436 setElem!27285) (forall!13011 (exprs!3455 setElem!27285) lambda!243057))))

(declare-fun bs!1173336 () Bool)

(assert (= bs!1173336 d!1558291))

(declare-fun m!5852574 () Bool)

(assert (=> bs!1173336 m!5852574))

(assert (=> setNonEmpty!27286 d!1558291))

(declare-fun bs!1173337 () Bool)

(declare-fun d!1558293 () Bool)

(assert (= bs!1173337 (and d!1558293 d!1558289)))

(declare-fun lambda!243058 () Int)

(assert (=> bs!1173337 (= lambda!243058 lambda!243056)))

(declare-fun bs!1173338 () Bool)

(assert (= bs!1173338 (and d!1558293 d!1558273)))

(assert (=> bs!1173338 (= lambda!243058 lambda!243049)))

(declare-fun bs!1173339 () Bool)

(assert (= bs!1173339 (and d!1558293 d!1558285)))

(assert (=> bs!1173339 (= lambda!243058 lambda!243054)))

(declare-fun bs!1173340 () Bool)

(assert (= bs!1173340 (and d!1558293 d!1558277)))

(assert (=> bs!1173340 (= lambda!243058 lambda!243051)))

(declare-fun bs!1173341 () Bool)

(assert (= bs!1173341 (and d!1558293 d!1558287)))

(assert (=> bs!1173341 (= lambda!243058 lambda!243055)))

(declare-fun bs!1173342 () Bool)

(assert (= bs!1173342 (and d!1558293 d!1558269)))

(assert (=> bs!1173342 (= lambda!243058 lambda!243048)))

(declare-fun bs!1173343 () Bool)

(assert (= bs!1173343 (and d!1558293 d!1558281)))

(assert (=> bs!1173343 (= lambda!243058 lambda!243053)))

(declare-fun bs!1173344 () Bool)

(assert (= bs!1173344 (and d!1558293 d!1558291)))

(assert (=> bs!1173344 (= lambda!243058 lambda!243057)))

(declare-fun bs!1173345 () Bool)

(assert (= bs!1173345 (and d!1558293 d!1558275)))

(assert (=> bs!1173345 (= lambda!243058 lambda!243050)))

(declare-fun bs!1173346 () Bool)

(assert (= bs!1173346 (and d!1558293 d!1558267)))

(assert (=> bs!1173346 (= lambda!243058 lambda!243047)))

(declare-fun bs!1173347 () Bool)

(assert (= bs!1173347 (and d!1558293 d!1558279)))

(assert (=> bs!1173347 (= lambda!243058 lambda!243052)))

(assert (=> d!1558293 (= (inv!71436 (_2!33064 (_1!33065 (h!62153 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))))) (forall!13011 (exprs!3455 (_2!33064 (_1!33065 (h!62153 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))))) lambda!243058))))

(declare-fun bs!1173348 () Bool)

(assert (= bs!1173348 d!1558293))

(declare-fun m!5852576 () Bool)

(assert (=> bs!1173348 m!5852576))

(assert (=> b!4854665 d!1558293))

(declare-fun bs!1173349 () Bool)

(declare-fun d!1558295 () Bool)

(assert (= bs!1173349 (and d!1558295 d!1558289)))

(declare-fun lambda!243059 () Int)

(assert (=> bs!1173349 (= lambda!243059 lambda!243056)))

(declare-fun bs!1173350 () Bool)

(assert (= bs!1173350 (and d!1558295 d!1558273)))

(assert (=> bs!1173350 (= lambda!243059 lambda!243049)))

(declare-fun bs!1173351 () Bool)

(assert (= bs!1173351 (and d!1558295 d!1558285)))

(assert (=> bs!1173351 (= lambda!243059 lambda!243054)))

(declare-fun bs!1173352 () Bool)

(assert (= bs!1173352 (and d!1558295 d!1558277)))

(assert (=> bs!1173352 (= lambda!243059 lambda!243051)))

(declare-fun bs!1173353 () Bool)

(assert (= bs!1173353 (and d!1558295 d!1558287)))

(assert (=> bs!1173353 (= lambda!243059 lambda!243055)))

(declare-fun bs!1173354 () Bool)

(assert (= bs!1173354 (and d!1558295 d!1558269)))

(assert (=> bs!1173354 (= lambda!243059 lambda!243048)))

(declare-fun bs!1173355 () Bool)

(assert (= bs!1173355 (and d!1558295 d!1558291)))

(assert (=> bs!1173355 (= lambda!243059 lambda!243057)))

(declare-fun bs!1173356 () Bool)

(assert (= bs!1173356 (and d!1558295 d!1558275)))

(assert (=> bs!1173356 (= lambda!243059 lambda!243050)))

(declare-fun bs!1173357 () Bool)

(assert (= bs!1173357 (and d!1558295 d!1558267)))

(assert (=> bs!1173357 (= lambda!243059 lambda!243047)))

(declare-fun bs!1173358 () Bool)

(assert (= bs!1173358 (and d!1558295 d!1558279)))

(assert (=> bs!1173358 (= lambda!243059 lambda!243052)))

(declare-fun bs!1173359 () Bool)

(assert (= bs!1173359 (and d!1558295 d!1558293)))

(assert (=> bs!1173359 (= lambda!243059 lambda!243058)))

(declare-fun bs!1173360 () Bool)

(assert (= bs!1173360 (and d!1558295 d!1558281)))

(assert (=> bs!1173360 (= lambda!243059 lambda!243053)))

(assert (=> d!1558295 (= (inv!71436 (_2!33064 (_1!33065 (h!62153 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))))) (forall!13011 (exprs!3455 (_2!33064 (_1!33065 (h!62153 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))))) lambda!243059))))

(declare-fun bs!1173361 () Bool)

(assert (= bs!1173361 d!1558295))

(declare-fun m!5852578 () Bool)

(assert (=> bs!1173361 m!5852578))

(assert (=> b!4854668 d!1558295))

(declare-fun d!1558297 () Bool)

(declare-fun res!2072594 () Bool)

(declare-fun e!3035152 () Bool)

(assert (=> d!1558297 (=> (not res!2072594) (not e!3035152))))

(declare-fun valid!4135 (MutableMap!4979) Bool)

(assert (=> d!1558297 (= res!2072594 (valid!4135 (cache!4593 (_3!3296 lt!1991147))))))

(assert (=> d!1558297 (= (validCacheMapDown!453 (cache!4593 (_3!3296 lt!1991147))) e!3035152)))

(declare-fun b!4854768 () Bool)

(declare-fun res!2072595 () Bool)

(assert (=> b!4854768 (=> (not res!2072595) (not e!3035152))))

(declare-fun invariantList!1891 (List!55829) Bool)

(declare-datatypes ((ListMap!7151 0))(
  ( (ListMap!7152 (toList!7912 List!55829)) )
))
(declare-fun map!12797 (MutableMap!4979) ListMap!7151)

(assert (=> b!4854768 (= res!2072595 (invariantList!1891 (toList!7912 (map!12797 (cache!4593 (_3!3296 lt!1991147))))))))

(declare-fun b!4854769 () Bool)

(declare-fun lambda!243062 () Int)

(declare-fun forall!13012 (List!55829 Int) Bool)

(assert (=> b!4854769 (= e!3035152 (forall!13012 (toList!7912 (map!12797 (cache!4593 (_3!3296 lt!1991147)))) lambda!243062))))

(assert (= (and d!1558297 res!2072594) b!4854768))

(assert (= (and b!4854768 res!2072595) b!4854769))

(declare-fun m!5852581 () Bool)

(assert (=> d!1558297 m!5852581))

(declare-fun m!5852583 () Bool)

(assert (=> b!4854768 m!5852583))

(declare-fun m!5852585 () Bool)

(assert (=> b!4854768 m!5852585))

(assert (=> b!4854769 m!5852583))

(declare-fun m!5852587 () Bool)

(assert (=> b!4854769 m!5852587))

(assert (=> d!1558255 d!1558297))

(declare-fun bs!1173362 () Bool)

(declare-fun d!1558299 () Bool)

(assert (= bs!1173362 (and d!1558299 d!1558289)))

(declare-fun lambda!243063 () Int)

(assert (=> bs!1173362 (= lambda!243063 lambda!243056)))

(declare-fun bs!1173363 () Bool)

(assert (= bs!1173363 (and d!1558299 d!1558273)))

(assert (=> bs!1173363 (= lambda!243063 lambda!243049)))

(declare-fun bs!1173364 () Bool)

(assert (= bs!1173364 (and d!1558299 d!1558285)))

(assert (=> bs!1173364 (= lambda!243063 lambda!243054)))

(declare-fun bs!1173365 () Bool)

(assert (= bs!1173365 (and d!1558299 d!1558277)))

(assert (=> bs!1173365 (= lambda!243063 lambda!243051)))

(declare-fun bs!1173366 () Bool)

(assert (= bs!1173366 (and d!1558299 d!1558287)))

(assert (=> bs!1173366 (= lambda!243063 lambda!243055)))

(declare-fun bs!1173367 () Bool)

(assert (= bs!1173367 (and d!1558299 d!1558269)))

(assert (=> bs!1173367 (= lambda!243063 lambda!243048)))

(declare-fun bs!1173368 () Bool)

(assert (= bs!1173368 (and d!1558299 d!1558291)))

(assert (=> bs!1173368 (= lambda!243063 lambda!243057)))

(declare-fun bs!1173369 () Bool)

(assert (= bs!1173369 (and d!1558299 d!1558295)))

(assert (=> bs!1173369 (= lambda!243063 lambda!243059)))

(declare-fun bs!1173370 () Bool)

(assert (= bs!1173370 (and d!1558299 d!1558275)))

(assert (=> bs!1173370 (= lambda!243063 lambda!243050)))

(declare-fun bs!1173371 () Bool)

(assert (= bs!1173371 (and d!1558299 d!1558267)))

(assert (=> bs!1173371 (= lambda!243063 lambda!243047)))

(declare-fun bs!1173372 () Bool)

(assert (= bs!1173372 (and d!1558299 d!1558279)))

(assert (=> bs!1173372 (= lambda!243063 lambda!243052)))

(declare-fun bs!1173373 () Bool)

(assert (= bs!1173373 (and d!1558299 d!1558293)))

(assert (=> bs!1173373 (= lambda!243063 lambda!243058)))

(declare-fun bs!1173374 () Bool)

(assert (= bs!1173374 (and d!1558299 d!1558281)))

(assert (=> bs!1173374 (= lambda!243063 lambda!243053)))

(assert (=> d!1558299 (= (inv!71436 setElem!27291) (forall!13011 (exprs!3455 setElem!27291) lambda!243063))))

(declare-fun bs!1173375 () Bool)

(assert (= bs!1173375 d!1558299))

(declare-fun m!5852589 () Bool)

(assert (=> bs!1173375 m!5852589))

(assert (=> setNonEmpty!27291 d!1558299))

(declare-fun bs!1173376 () Bool)

(declare-fun d!1558301 () Bool)

(assert (= bs!1173376 (and d!1558301 d!1558289)))

(declare-fun lambda!243064 () Int)

(assert (=> bs!1173376 (= lambda!243064 lambda!243056)))

(declare-fun bs!1173377 () Bool)

(assert (= bs!1173377 (and d!1558301 d!1558273)))

(assert (=> bs!1173377 (= lambda!243064 lambda!243049)))

(declare-fun bs!1173378 () Bool)

(assert (= bs!1173378 (and d!1558301 d!1558285)))

(assert (=> bs!1173378 (= lambda!243064 lambda!243054)))

(declare-fun bs!1173379 () Bool)

(assert (= bs!1173379 (and d!1558301 d!1558277)))

(assert (=> bs!1173379 (= lambda!243064 lambda!243051)))

(declare-fun bs!1173380 () Bool)

(assert (= bs!1173380 (and d!1558301 d!1558287)))

(assert (=> bs!1173380 (= lambda!243064 lambda!243055)))

(declare-fun bs!1173381 () Bool)

(assert (= bs!1173381 (and d!1558301 d!1558269)))

(assert (=> bs!1173381 (= lambda!243064 lambda!243048)))

(declare-fun bs!1173382 () Bool)

(assert (= bs!1173382 (and d!1558301 d!1558291)))

(assert (=> bs!1173382 (= lambda!243064 lambda!243057)))

(declare-fun bs!1173383 () Bool)

(assert (= bs!1173383 (and d!1558301 d!1558299)))

(assert (=> bs!1173383 (= lambda!243064 lambda!243063)))

(declare-fun bs!1173384 () Bool)

(assert (= bs!1173384 (and d!1558301 d!1558295)))

(assert (=> bs!1173384 (= lambda!243064 lambda!243059)))

(declare-fun bs!1173385 () Bool)

(assert (= bs!1173385 (and d!1558301 d!1558275)))

(assert (=> bs!1173385 (= lambda!243064 lambda!243050)))

(declare-fun bs!1173386 () Bool)

(assert (= bs!1173386 (and d!1558301 d!1558267)))

(assert (=> bs!1173386 (= lambda!243064 lambda!243047)))

(declare-fun bs!1173387 () Bool)

(assert (= bs!1173387 (and d!1558301 d!1558279)))

(assert (=> bs!1173387 (= lambda!243064 lambda!243052)))

(declare-fun bs!1173388 () Bool)

(assert (= bs!1173388 (and d!1558301 d!1558293)))

(assert (=> bs!1173388 (= lambda!243064 lambda!243058)))

(declare-fun bs!1173389 () Bool)

(assert (= bs!1173389 (and d!1558301 d!1558281)))

(assert (=> bs!1173389 (= lambda!243064 lambda!243053)))

(assert (=> d!1558301 (= (inv!71436 setElem!27286) (forall!13011 (exprs!3455 setElem!27286) lambda!243064))))

(declare-fun bs!1173390 () Bool)

(assert (= bs!1173390 d!1558301))

(declare-fun m!5852591 () Bool)

(assert (=> bs!1173390 m!5852591))

(assert (=> setNonEmpty!27285 d!1558301))

(declare-fun bs!1173391 () Bool)

(declare-fun b!4854771 () Bool)

(assert (= bs!1173391 (and b!4854771 b!4854769)))

(declare-fun lambda!243065 () Int)

(assert (=> bs!1173391 (= lambda!243065 lambda!243062)))

(declare-fun d!1558303 () Bool)

(declare-fun res!2072596 () Bool)

(declare-fun e!3035153 () Bool)

(assert (=> d!1558303 (=> (not res!2072596) (not e!3035153))))

(assert (=> d!1558303 (= res!2072596 (valid!4135 (cache!4593 cacheDown!921)))))

(assert (=> d!1558303 (= (validCacheMapDown!453 (cache!4593 cacheDown!921)) e!3035153)))

(declare-fun b!4854770 () Bool)

(declare-fun res!2072597 () Bool)

(assert (=> b!4854770 (=> (not res!2072597) (not e!3035153))))

(assert (=> b!4854770 (= res!2072597 (invariantList!1891 (toList!7912 (map!12797 (cache!4593 cacheDown!921)))))))

(assert (=> b!4854771 (= e!3035153 (forall!13012 (toList!7912 (map!12797 (cache!4593 cacheDown!921))) lambda!243065))))

(assert (= (and d!1558303 res!2072596) b!4854770))

(assert (= (and b!4854770 res!2072597) b!4854771))

(declare-fun m!5852593 () Bool)

(assert (=> d!1558303 m!5852593))

(declare-fun m!5852595 () Bool)

(assert (=> b!4854770 m!5852595))

(declare-fun m!5852597 () Bool)

(assert (=> b!4854770 m!5852597))

(assert (=> b!4854771 m!5852595))

(declare-fun m!5852599 () Bool)

(assert (=> b!4854771 m!5852599))

(assert (=> b!4854614 d!1558303))

(declare-fun bs!1173392 () Bool)

(declare-fun d!1558305 () Bool)

(assert (= bs!1173392 (and d!1558305 d!1558289)))

(declare-fun lambda!243066 () Int)

(assert (=> bs!1173392 (= lambda!243066 lambda!243056)))

(declare-fun bs!1173393 () Bool)

(assert (= bs!1173393 (and d!1558305 d!1558273)))

(assert (=> bs!1173393 (= lambda!243066 lambda!243049)))

(declare-fun bs!1173394 () Bool)

(assert (= bs!1173394 (and d!1558305 d!1558285)))

(assert (=> bs!1173394 (= lambda!243066 lambda!243054)))

(declare-fun bs!1173395 () Bool)

(assert (= bs!1173395 (and d!1558305 d!1558301)))

(assert (=> bs!1173395 (= lambda!243066 lambda!243064)))

(declare-fun bs!1173396 () Bool)

(assert (= bs!1173396 (and d!1558305 d!1558277)))

(assert (=> bs!1173396 (= lambda!243066 lambda!243051)))

(declare-fun bs!1173397 () Bool)

(assert (= bs!1173397 (and d!1558305 d!1558287)))

(assert (=> bs!1173397 (= lambda!243066 lambda!243055)))

(declare-fun bs!1173398 () Bool)

(assert (= bs!1173398 (and d!1558305 d!1558269)))

(assert (=> bs!1173398 (= lambda!243066 lambda!243048)))

(declare-fun bs!1173399 () Bool)

(assert (= bs!1173399 (and d!1558305 d!1558291)))

(assert (=> bs!1173399 (= lambda!243066 lambda!243057)))

(declare-fun bs!1173400 () Bool)

(assert (= bs!1173400 (and d!1558305 d!1558299)))

(assert (=> bs!1173400 (= lambda!243066 lambda!243063)))

(declare-fun bs!1173401 () Bool)

(assert (= bs!1173401 (and d!1558305 d!1558295)))

(assert (=> bs!1173401 (= lambda!243066 lambda!243059)))

(declare-fun bs!1173402 () Bool)

(assert (= bs!1173402 (and d!1558305 d!1558275)))

(assert (=> bs!1173402 (= lambda!243066 lambda!243050)))

(declare-fun bs!1173403 () Bool)

(assert (= bs!1173403 (and d!1558305 d!1558267)))

(assert (=> bs!1173403 (= lambda!243066 lambda!243047)))

(declare-fun bs!1173404 () Bool)

(assert (= bs!1173404 (and d!1558305 d!1558279)))

(assert (=> bs!1173404 (= lambda!243066 lambda!243052)))

(declare-fun bs!1173405 () Bool)

(assert (= bs!1173405 (and d!1558305 d!1558293)))

(assert (=> bs!1173405 (= lambda!243066 lambda!243058)))

(declare-fun bs!1173406 () Bool)

(assert (= bs!1173406 (and d!1558305 d!1558281)))

(assert (=> bs!1173406 (= lambda!243066 lambda!243053)))

(assert (=> d!1558305 (= (inv!71436 setElem!27280) (forall!13011 (exprs!3455 setElem!27280) lambda!243066))))

(declare-fun bs!1173407 () Bool)

(assert (= bs!1173407 d!1558305))

(declare-fun m!5852601 () Bool)

(assert (=> bs!1173407 m!5852601))

(assert (=> setNonEmpty!27280 d!1558305))

(declare-fun bs!1173408 () Bool)

(declare-fun d!1558307 () Bool)

(assert (= bs!1173408 (and d!1558307 d!1558289)))

(declare-fun lambda!243067 () Int)

(assert (=> bs!1173408 (= lambda!243067 lambda!243056)))

(declare-fun bs!1173409 () Bool)

(assert (= bs!1173409 (and d!1558307 d!1558273)))

(assert (=> bs!1173409 (= lambda!243067 lambda!243049)))

(declare-fun bs!1173410 () Bool)

(assert (= bs!1173410 (and d!1558307 d!1558285)))

(assert (=> bs!1173410 (= lambda!243067 lambda!243054)))

(declare-fun bs!1173411 () Bool)

(assert (= bs!1173411 (and d!1558307 d!1558301)))

(assert (=> bs!1173411 (= lambda!243067 lambda!243064)))

(declare-fun bs!1173412 () Bool)

(assert (= bs!1173412 (and d!1558307 d!1558277)))

(assert (=> bs!1173412 (= lambda!243067 lambda!243051)))

(declare-fun bs!1173413 () Bool)

(assert (= bs!1173413 (and d!1558307 d!1558287)))

(assert (=> bs!1173413 (= lambda!243067 lambda!243055)))

(declare-fun bs!1173414 () Bool)

(assert (= bs!1173414 (and d!1558307 d!1558269)))

(assert (=> bs!1173414 (= lambda!243067 lambda!243048)))

(declare-fun bs!1173415 () Bool)

(assert (= bs!1173415 (and d!1558307 d!1558305)))

(assert (=> bs!1173415 (= lambda!243067 lambda!243066)))

(declare-fun bs!1173416 () Bool)

(assert (= bs!1173416 (and d!1558307 d!1558291)))

(assert (=> bs!1173416 (= lambda!243067 lambda!243057)))

(declare-fun bs!1173417 () Bool)

(assert (= bs!1173417 (and d!1558307 d!1558299)))

(assert (=> bs!1173417 (= lambda!243067 lambda!243063)))

(declare-fun bs!1173418 () Bool)

(assert (= bs!1173418 (and d!1558307 d!1558295)))

(assert (=> bs!1173418 (= lambda!243067 lambda!243059)))

(declare-fun bs!1173419 () Bool)

(assert (= bs!1173419 (and d!1558307 d!1558275)))

(assert (=> bs!1173419 (= lambda!243067 lambda!243050)))

(declare-fun bs!1173420 () Bool)

(assert (= bs!1173420 (and d!1558307 d!1558267)))

(assert (=> bs!1173420 (= lambda!243067 lambda!243047)))

(declare-fun bs!1173421 () Bool)

(assert (= bs!1173421 (and d!1558307 d!1558279)))

(assert (=> bs!1173421 (= lambda!243067 lambda!243052)))

(declare-fun bs!1173422 () Bool)

(assert (= bs!1173422 (and d!1558307 d!1558293)))

(assert (=> bs!1173422 (= lambda!243067 lambda!243058)))

(declare-fun bs!1173423 () Bool)

(assert (= bs!1173423 (and d!1558307 d!1558281)))

(assert (=> bs!1173423 (= lambda!243067 lambda!243053)))

(assert (=> d!1558307 (= (inv!71436 (_1!33066 (_1!33067 (h!62154 (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))))) (forall!13011 (exprs!3455 (_1!33066 (_1!33067 (h!62154 (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))))) lambda!243067))))

(declare-fun bs!1173424 () Bool)

(assert (= bs!1173424 d!1558307))

(declare-fun m!5852603 () Bool)

(assert (=> bs!1173424 m!5852603))

(assert (=> b!4854660 d!1558307))

(declare-fun bs!1173425 () Bool)

(declare-fun d!1558309 () Bool)

(assert (= bs!1173425 (and d!1558309 d!1558289)))

(declare-fun lambda!243068 () Int)

(assert (=> bs!1173425 (= lambda!243068 lambda!243056)))

(declare-fun bs!1173426 () Bool)

(assert (= bs!1173426 (and d!1558309 d!1558273)))

(assert (=> bs!1173426 (= lambda!243068 lambda!243049)))

(declare-fun bs!1173427 () Bool)

(assert (= bs!1173427 (and d!1558309 d!1558285)))

(assert (=> bs!1173427 (= lambda!243068 lambda!243054)))

(declare-fun bs!1173428 () Bool)

(assert (= bs!1173428 (and d!1558309 d!1558301)))

(assert (=> bs!1173428 (= lambda!243068 lambda!243064)))

(declare-fun bs!1173429 () Bool)

(assert (= bs!1173429 (and d!1558309 d!1558277)))

(assert (=> bs!1173429 (= lambda!243068 lambda!243051)))

(declare-fun bs!1173430 () Bool)

(assert (= bs!1173430 (and d!1558309 d!1558287)))

(assert (=> bs!1173430 (= lambda!243068 lambda!243055)))

(declare-fun bs!1173431 () Bool)

(assert (= bs!1173431 (and d!1558309 d!1558269)))

(assert (=> bs!1173431 (= lambda!243068 lambda!243048)))

(declare-fun bs!1173432 () Bool)

(assert (= bs!1173432 (and d!1558309 d!1558305)))

(assert (=> bs!1173432 (= lambda!243068 lambda!243066)))

(declare-fun bs!1173433 () Bool)

(assert (= bs!1173433 (and d!1558309 d!1558291)))

(assert (=> bs!1173433 (= lambda!243068 lambda!243057)))

(declare-fun bs!1173434 () Bool)

(assert (= bs!1173434 (and d!1558309 d!1558295)))

(assert (=> bs!1173434 (= lambda!243068 lambda!243059)))

(declare-fun bs!1173435 () Bool)

(assert (= bs!1173435 (and d!1558309 d!1558275)))

(assert (=> bs!1173435 (= lambda!243068 lambda!243050)))

(declare-fun bs!1173436 () Bool)

(assert (= bs!1173436 (and d!1558309 d!1558267)))

(assert (=> bs!1173436 (= lambda!243068 lambda!243047)))

(declare-fun bs!1173437 () Bool)

(assert (= bs!1173437 (and d!1558309 d!1558279)))

(assert (=> bs!1173437 (= lambda!243068 lambda!243052)))

(declare-fun bs!1173438 () Bool)

(assert (= bs!1173438 (and d!1558309 d!1558293)))

(assert (=> bs!1173438 (= lambda!243068 lambda!243058)))

(declare-fun bs!1173439 () Bool)

(assert (= bs!1173439 (and d!1558309 d!1558281)))

(assert (=> bs!1173439 (= lambda!243068 lambda!243053)))

(declare-fun bs!1173440 () Bool)

(assert (= bs!1173440 (and d!1558309 d!1558307)))

(assert (=> bs!1173440 (= lambda!243068 lambda!243067)))

(declare-fun bs!1173441 () Bool)

(assert (= bs!1173441 (and d!1558309 d!1558299)))

(assert (=> bs!1173441 (= lambda!243068 lambda!243063)))

(assert (=> d!1558309 (= (inv!71436 (_2!33064 (_1!33065 (h!62153 mapDefault!22533)))) (forall!13011 (exprs!3455 (_2!33064 (_1!33065 (h!62153 mapDefault!22533)))) lambda!243068))))

(declare-fun bs!1173442 () Bool)

(assert (= bs!1173442 d!1558309))

(declare-fun m!5852605 () Bool)

(assert (=> bs!1173442 m!5852605))

(assert (=> b!4854625 d!1558309))

(declare-fun bs!1173443 () Bool)

(declare-fun d!1558311 () Bool)

(assert (= bs!1173443 (and d!1558311 d!1558289)))

(declare-fun lambda!243069 () Int)

(assert (=> bs!1173443 (= lambda!243069 lambda!243056)))

(declare-fun bs!1173444 () Bool)

(assert (= bs!1173444 (and d!1558311 d!1558273)))

(assert (=> bs!1173444 (= lambda!243069 lambda!243049)))

(declare-fun bs!1173445 () Bool)

(assert (= bs!1173445 (and d!1558311 d!1558285)))

(assert (=> bs!1173445 (= lambda!243069 lambda!243054)))

(declare-fun bs!1173446 () Bool)

(assert (= bs!1173446 (and d!1558311 d!1558309)))

(assert (=> bs!1173446 (= lambda!243069 lambda!243068)))

(declare-fun bs!1173447 () Bool)

(assert (= bs!1173447 (and d!1558311 d!1558301)))

(assert (=> bs!1173447 (= lambda!243069 lambda!243064)))

(declare-fun bs!1173448 () Bool)

(assert (= bs!1173448 (and d!1558311 d!1558277)))

(assert (=> bs!1173448 (= lambda!243069 lambda!243051)))

(declare-fun bs!1173449 () Bool)

(assert (= bs!1173449 (and d!1558311 d!1558287)))

(assert (=> bs!1173449 (= lambda!243069 lambda!243055)))

(declare-fun bs!1173450 () Bool)

(assert (= bs!1173450 (and d!1558311 d!1558269)))

(assert (=> bs!1173450 (= lambda!243069 lambda!243048)))

(declare-fun bs!1173451 () Bool)

(assert (= bs!1173451 (and d!1558311 d!1558305)))

(assert (=> bs!1173451 (= lambda!243069 lambda!243066)))

(declare-fun bs!1173452 () Bool)

(assert (= bs!1173452 (and d!1558311 d!1558291)))

(assert (=> bs!1173452 (= lambda!243069 lambda!243057)))

(declare-fun bs!1173453 () Bool)

(assert (= bs!1173453 (and d!1558311 d!1558295)))

(assert (=> bs!1173453 (= lambda!243069 lambda!243059)))

(declare-fun bs!1173454 () Bool)

(assert (= bs!1173454 (and d!1558311 d!1558275)))

(assert (=> bs!1173454 (= lambda!243069 lambda!243050)))

(declare-fun bs!1173455 () Bool)

(assert (= bs!1173455 (and d!1558311 d!1558267)))

(assert (=> bs!1173455 (= lambda!243069 lambda!243047)))

(declare-fun bs!1173456 () Bool)

(assert (= bs!1173456 (and d!1558311 d!1558279)))

(assert (=> bs!1173456 (= lambda!243069 lambda!243052)))

(declare-fun bs!1173457 () Bool)

(assert (= bs!1173457 (and d!1558311 d!1558293)))

(assert (=> bs!1173457 (= lambda!243069 lambda!243058)))

(declare-fun bs!1173458 () Bool)

(assert (= bs!1173458 (and d!1558311 d!1558281)))

(assert (=> bs!1173458 (= lambda!243069 lambda!243053)))

(declare-fun bs!1173459 () Bool)

(assert (= bs!1173459 (and d!1558311 d!1558307)))

(assert (=> bs!1173459 (= lambda!243069 lambda!243067)))

(declare-fun bs!1173460 () Bool)

(assert (= bs!1173460 (and d!1558311 d!1558299)))

(assert (=> bs!1173460 (= lambda!243069 lambda!243063)))

(assert (=> d!1558311 (= (inv!71436 setElem!27292) (forall!13011 (exprs!3455 setElem!27292) lambda!243069))))

(declare-fun bs!1173461 () Bool)

(assert (= bs!1173461 d!1558311))

(declare-fun m!5852607 () Bool)

(assert (=> bs!1173461 m!5852607))

(assert (=> setNonEmpty!27292 d!1558311))

(declare-fun bs!1173462 () Bool)

(declare-fun d!1558313 () Bool)

(assert (= bs!1173462 (and d!1558313 d!1558289)))

(declare-fun lambda!243070 () Int)

(assert (=> bs!1173462 (= lambda!243070 lambda!243056)))

(declare-fun bs!1173463 () Bool)

(assert (= bs!1173463 (and d!1558313 d!1558273)))

(assert (=> bs!1173463 (= lambda!243070 lambda!243049)))

(declare-fun bs!1173464 () Bool)

(assert (= bs!1173464 (and d!1558313 d!1558311)))

(assert (=> bs!1173464 (= lambda!243070 lambda!243069)))

(declare-fun bs!1173465 () Bool)

(assert (= bs!1173465 (and d!1558313 d!1558285)))

(assert (=> bs!1173465 (= lambda!243070 lambda!243054)))

(declare-fun bs!1173466 () Bool)

(assert (= bs!1173466 (and d!1558313 d!1558309)))

(assert (=> bs!1173466 (= lambda!243070 lambda!243068)))

(declare-fun bs!1173467 () Bool)

(assert (= bs!1173467 (and d!1558313 d!1558301)))

(assert (=> bs!1173467 (= lambda!243070 lambda!243064)))

(declare-fun bs!1173468 () Bool)

(assert (= bs!1173468 (and d!1558313 d!1558277)))

(assert (=> bs!1173468 (= lambda!243070 lambda!243051)))

(declare-fun bs!1173469 () Bool)

(assert (= bs!1173469 (and d!1558313 d!1558287)))

(assert (=> bs!1173469 (= lambda!243070 lambda!243055)))

(declare-fun bs!1173470 () Bool)

(assert (= bs!1173470 (and d!1558313 d!1558269)))

(assert (=> bs!1173470 (= lambda!243070 lambda!243048)))

(declare-fun bs!1173471 () Bool)

(assert (= bs!1173471 (and d!1558313 d!1558305)))

(assert (=> bs!1173471 (= lambda!243070 lambda!243066)))

(declare-fun bs!1173472 () Bool)

(assert (= bs!1173472 (and d!1558313 d!1558291)))

(assert (=> bs!1173472 (= lambda!243070 lambda!243057)))

(declare-fun bs!1173473 () Bool)

(assert (= bs!1173473 (and d!1558313 d!1558295)))

(assert (=> bs!1173473 (= lambda!243070 lambda!243059)))

(declare-fun bs!1173474 () Bool)

(assert (= bs!1173474 (and d!1558313 d!1558275)))

(assert (=> bs!1173474 (= lambda!243070 lambda!243050)))

(declare-fun bs!1173475 () Bool)

(assert (= bs!1173475 (and d!1558313 d!1558267)))

(assert (=> bs!1173475 (= lambda!243070 lambda!243047)))

(declare-fun bs!1173476 () Bool)

(assert (= bs!1173476 (and d!1558313 d!1558279)))

(assert (=> bs!1173476 (= lambda!243070 lambda!243052)))

(declare-fun bs!1173477 () Bool)

(assert (= bs!1173477 (and d!1558313 d!1558293)))

(assert (=> bs!1173477 (= lambda!243070 lambda!243058)))

(declare-fun bs!1173478 () Bool)

(assert (= bs!1173478 (and d!1558313 d!1558281)))

(assert (=> bs!1173478 (= lambda!243070 lambda!243053)))

(declare-fun bs!1173479 () Bool)

(assert (= bs!1173479 (and d!1558313 d!1558307)))

(assert (=> bs!1173479 (= lambda!243070 lambda!243067)))

(declare-fun bs!1173480 () Bool)

(assert (= bs!1173480 (and d!1558313 d!1558299)))

(assert (=> bs!1173480 (= lambda!243070 lambda!243063)))

(assert (=> d!1558313 (= (inv!71436 setElem!27293) (forall!13011 (exprs!3455 setElem!27293) lambda!243070))))

(declare-fun bs!1173481 () Bool)

(assert (= bs!1173481 d!1558313))

(declare-fun m!5852609 () Bool)

(assert (=> bs!1173481 m!5852609))

(assert (=> setNonEmpty!27293 d!1558313))

(declare-fun bs!1173482 () Bool)

(declare-fun d!1558315 () Bool)

(assert (= bs!1173482 (and d!1558315 d!1558289)))

(declare-fun lambda!243071 () Int)

(assert (=> bs!1173482 (= lambda!243071 lambda!243056)))

(declare-fun bs!1173483 () Bool)

(assert (= bs!1173483 (and d!1558315 d!1558273)))

(assert (=> bs!1173483 (= lambda!243071 lambda!243049)))

(declare-fun bs!1173484 () Bool)

(assert (= bs!1173484 (and d!1558315 d!1558311)))

(assert (=> bs!1173484 (= lambda!243071 lambda!243069)))

(declare-fun bs!1173485 () Bool)

(assert (= bs!1173485 (and d!1558315 d!1558285)))

(assert (=> bs!1173485 (= lambda!243071 lambda!243054)))

(declare-fun bs!1173486 () Bool)

(assert (= bs!1173486 (and d!1558315 d!1558309)))

(assert (=> bs!1173486 (= lambda!243071 lambda!243068)))

(declare-fun bs!1173487 () Bool)

(assert (= bs!1173487 (and d!1558315 d!1558301)))

(assert (=> bs!1173487 (= lambda!243071 lambda!243064)))

(declare-fun bs!1173488 () Bool)

(assert (= bs!1173488 (and d!1558315 d!1558277)))

(assert (=> bs!1173488 (= lambda!243071 lambda!243051)))

(declare-fun bs!1173489 () Bool)

(assert (= bs!1173489 (and d!1558315 d!1558269)))

(assert (=> bs!1173489 (= lambda!243071 lambda!243048)))

(declare-fun bs!1173490 () Bool)

(assert (= bs!1173490 (and d!1558315 d!1558305)))

(assert (=> bs!1173490 (= lambda!243071 lambda!243066)))

(declare-fun bs!1173491 () Bool)

(assert (= bs!1173491 (and d!1558315 d!1558291)))

(assert (=> bs!1173491 (= lambda!243071 lambda!243057)))

(declare-fun bs!1173492 () Bool)

(assert (= bs!1173492 (and d!1558315 d!1558295)))

(assert (=> bs!1173492 (= lambda!243071 lambda!243059)))

(declare-fun bs!1173493 () Bool)

(assert (= bs!1173493 (and d!1558315 d!1558275)))

(assert (=> bs!1173493 (= lambda!243071 lambda!243050)))

(declare-fun bs!1173494 () Bool)

(assert (= bs!1173494 (and d!1558315 d!1558267)))

(assert (=> bs!1173494 (= lambda!243071 lambda!243047)))

(declare-fun bs!1173495 () Bool)

(assert (= bs!1173495 (and d!1558315 d!1558279)))

(assert (=> bs!1173495 (= lambda!243071 lambda!243052)))

(declare-fun bs!1173496 () Bool)

(assert (= bs!1173496 (and d!1558315 d!1558287)))

(assert (=> bs!1173496 (= lambda!243071 lambda!243055)))

(declare-fun bs!1173497 () Bool)

(assert (= bs!1173497 (and d!1558315 d!1558313)))

(assert (=> bs!1173497 (= lambda!243071 lambda!243070)))

(declare-fun bs!1173498 () Bool)

(assert (= bs!1173498 (and d!1558315 d!1558293)))

(assert (=> bs!1173498 (= lambda!243071 lambda!243058)))

(declare-fun bs!1173499 () Bool)

(assert (= bs!1173499 (and d!1558315 d!1558281)))

(assert (=> bs!1173499 (= lambda!243071 lambda!243053)))

(declare-fun bs!1173500 () Bool)

(assert (= bs!1173500 (and d!1558315 d!1558307)))

(assert (=> bs!1173500 (= lambda!243071 lambda!243067)))

(declare-fun bs!1173501 () Bool)

(assert (= bs!1173501 (and d!1558315 d!1558299)))

(assert (=> bs!1173501 (= lambda!243071 lambda!243063)))

(assert (=> d!1558315 (= (inv!71436 setElem!27299) (forall!13011 (exprs!3455 setElem!27299) lambda!243071))))

(declare-fun bs!1173502 () Bool)

(assert (= bs!1173502 d!1558315))

(declare-fun m!5852611 () Bool)

(assert (=> bs!1173502 m!5852611))

(assert (=> setNonEmpty!27299 d!1558315))

(declare-fun d!1558317 () Bool)

(declare-fun choose!35546 ((InoxSet Context!5910) Int) (InoxSet Context!5910))

(assert (=> d!1558317 (= (flatMap!257 z!669 lambda!243044) (choose!35546 z!669 lambda!243044))))

(declare-fun bs!1173503 () Bool)

(assert (= bs!1173503 d!1558317))

(declare-fun m!5852613 () Bool)

(assert (=> bs!1173503 m!5852613))

(assert (=> d!1558247 d!1558317))

(declare-fun d!1558319 () Bool)

(declare-fun res!2072602 () Bool)

(declare-fun e!3035156 () Bool)

(assert (=> d!1558319 (=> (not res!2072602) (not e!3035156))))

(declare-fun valid!4136 (MutableMap!4980) Bool)

(assert (=> d!1558319 (= res!2072602 (valid!4136 (cache!4594 cacheUp!802)))))

(assert (=> d!1558319 (= (validCacheMapUp!422 (cache!4594 cacheUp!802)) e!3035156)))

(declare-fun b!4854776 () Bool)

(declare-fun res!2072603 () Bool)

(assert (=> b!4854776 (=> (not res!2072603) (not e!3035156))))

(declare-fun invariantList!1892 (List!55830) Bool)

(declare-datatypes ((ListMap!7153 0))(
  ( (ListMap!7154 (toList!7913 List!55830)) )
))
(declare-fun map!12798 (MutableMap!4980) ListMap!7153)

(assert (=> b!4854776 (= res!2072603 (invariantList!1892 (toList!7913 (map!12798 (cache!4594 cacheUp!802)))))))

(declare-fun b!4854777 () Bool)

(declare-fun lambda!243074 () Int)

(declare-fun forall!13013 (List!55830 Int) Bool)

(assert (=> b!4854777 (= e!3035156 (forall!13013 (toList!7913 (map!12798 (cache!4594 cacheUp!802))) lambda!243074))))

(assert (= (and d!1558319 res!2072602) b!4854776))

(assert (= (and b!4854776 res!2072603) b!4854777))

(declare-fun m!5852616 () Bool)

(assert (=> d!1558319 m!5852616))

(declare-fun m!5852618 () Bool)

(assert (=> b!4854776 m!5852618))

(declare-fun m!5852620 () Bool)

(assert (=> b!4854776 m!5852620))

(assert (=> b!4854777 m!5852618))

(declare-fun m!5852622 () Bool)

(assert (=> b!4854777 m!5852622))

(assert (=> b!4854611 d!1558319))

(declare-fun bs!1173504 () Bool)

(declare-fun d!1558321 () Bool)

(assert (= bs!1173504 (and d!1558321 d!1558289)))

(declare-fun lambda!243075 () Int)

(assert (=> bs!1173504 (= lambda!243075 lambda!243056)))

(declare-fun bs!1173505 () Bool)

(assert (= bs!1173505 (and d!1558321 d!1558273)))

(assert (=> bs!1173505 (= lambda!243075 lambda!243049)))

(declare-fun bs!1173506 () Bool)

(assert (= bs!1173506 (and d!1558321 d!1558311)))

(assert (=> bs!1173506 (= lambda!243075 lambda!243069)))

(declare-fun bs!1173507 () Bool)

(assert (= bs!1173507 (and d!1558321 d!1558285)))

(assert (=> bs!1173507 (= lambda!243075 lambda!243054)))

(declare-fun bs!1173508 () Bool)

(assert (= bs!1173508 (and d!1558321 d!1558309)))

(assert (=> bs!1173508 (= lambda!243075 lambda!243068)))

(declare-fun bs!1173509 () Bool)

(assert (= bs!1173509 (and d!1558321 d!1558301)))

(assert (=> bs!1173509 (= lambda!243075 lambda!243064)))

(declare-fun bs!1173510 () Bool)

(assert (= bs!1173510 (and d!1558321 d!1558277)))

(assert (=> bs!1173510 (= lambda!243075 lambda!243051)))

(declare-fun bs!1173511 () Bool)

(assert (= bs!1173511 (and d!1558321 d!1558269)))

(assert (=> bs!1173511 (= lambda!243075 lambda!243048)))

(declare-fun bs!1173512 () Bool)

(assert (= bs!1173512 (and d!1558321 d!1558305)))

(assert (=> bs!1173512 (= lambda!243075 lambda!243066)))

(declare-fun bs!1173513 () Bool)

(assert (= bs!1173513 (and d!1558321 d!1558291)))

(assert (=> bs!1173513 (= lambda!243075 lambda!243057)))

(declare-fun bs!1173514 () Bool)

(assert (= bs!1173514 (and d!1558321 d!1558315)))

(assert (=> bs!1173514 (= lambda!243075 lambda!243071)))

(declare-fun bs!1173515 () Bool)

(assert (= bs!1173515 (and d!1558321 d!1558295)))

(assert (=> bs!1173515 (= lambda!243075 lambda!243059)))

(declare-fun bs!1173516 () Bool)

(assert (= bs!1173516 (and d!1558321 d!1558275)))

(assert (=> bs!1173516 (= lambda!243075 lambda!243050)))

(declare-fun bs!1173517 () Bool)

(assert (= bs!1173517 (and d!1558321 d!1558267)))

(assert (=> bs!1173517 (= lambda!243075 lambda!243047)))

(declare-fun bs!1173518 () Bool)

(assert (= bs!1173518 (and d!1558321 d!1558279)))

(assert (=> bs!1173518 (= lambda!243075 lambda!243052)))

(declare-fun bs!1173519 () Bool)

(assert (= bs!1173519 (and d!1558321 d!1558287)))

(assert (=> bs!1173519 (= lambda!243075 lambda!243055)))

(declare-fun bs!1173520 () Bool)

(assert (= bs!1173520 (and d!1558321 d!1558313)))

(assert (=> bs!1173520 (= lambda!243075 lambda!243070)))

(declare-fun bs!1173521 () Bool)

(assert (= bs!1173521 (and d!1558321 d!1558293)))

(assert (=> bs!1173521 (= lambda!243075 lambda!243058)))

(declare-fun bs!1173522 () Bool)

(assert (= bs!1173522 (and d!1558321 d!1558281)))

(assert (=> bs!1173522 (= lambda!243075 lambda!243053)))

(declare-fun bs!1173523 () Bool)

(assert (= bs!1173523 (and d!1558321 d!1558307)))

(assert (=> bs!1173523 (= lambda!243075 lambda!243067)))

(declare-fun bs!1173524 () Bool)

(assert (= bs!1173524 (and d!1558321 d!1558299)))

(assert (=> bs!1173524 (= lambda!243075 lambda!243063)))

(assert (=> d!1558321 (= (inv!71436 (_1!33066 (_1!33067 (h!62154 mapDefault!22536)))) (forall!13011 (exprs!3455 (_1!33066 (_1!33067 (h!62154 mapDefault!22536)))) lambda!243075))))

(declare-fun bs!1173525 () Bool)

(assert (= bs!1173525 d!1558321))

(declare-fun m!5852624 () Bool)

(assert (=> bs!1173525 m!5852624))

(assert (=> b!4854645 d!1558321))

(declare-fun bs!1173526 () Bool)

(declare-fun d!1558323 () Bool)

(assert (= bs!1173526 (and d!1558323 d!1558289)))

(declare-fun lambda!243076 () Int)

(assert (=> bs!1173526 (= lambda!243076 lambda!243056)))

(declare-fun bs!1173527 () Bool)

(assert (= bs!1173527 (and d!1558323 d!1558273)))

(assert (=> bs!1173527 (= lambda!243076 lambda!243049)))

(declare-fun bs!1173528 () Bool)

(assert (= bs!1173528 (and d!1558323 d!1558311)))

(assert (=> bs!1173528 (= lambda!243076 lambda!243069)))

(declare-fun bs!1173529 () Bool)

(assert (= bs!1173529 (and d!1558323 d!1558285)))

(assert (=> bs!1173529 (= lambda!243076 lambda!243054)))

(declare-fun bs!1173530 () Bool)

(assert (= bs!1173530 (and d!1558323 d!1558321)))

(assert (=> bs!1173530 (= lambda!243076 lambda!243075)))

(declare-fun bs!1173531 () Bool)

(assert (= bs!1173531 (and d!1558323 d!1558309)))

(assert (=> bs!1173531 (= lambda!243076 lambda!243068)))

(declare-fun bs!1173532 () Bool)

(assert (= bs!1173532 (and d!1558323 d!1558301)))

(assert (=> bs!1173532 (= lambda!243076 lambda!243064)))

(declare-fun bs!1173533 () Bool)

(assert (= bs!1173533 (and d!1558323 d!1558277)))

(assert (=> bs!1173533 (= lambda!243076 lambda!243051)))

(declare-fun bs!1173534 () Bool)

(assert (= bs!1173534 (and d!1558323 d!1558269)))

(assert (=> bs!1173534 (= lambda!243076 lambda!243048)))

(declare-fun bs!1173535 () Bool)

(assert (= bs!1173535 (and d!1558323 d!1558305)))

(assert (=> bs!1173535 (= lambda!243076 lambda!243066)))

(declare-fun bs!1173536 () Bool)

(assert (= bs!1173536 (and d!1558323 d!1558291)))

(assert (=> bs!1173536 (= lambda!243076 lambda!243057)))

(declare-fun bs!1173537 () Bool)

(assert (= bs!1173537 (and d!1558323 d!1558315)))

(assert (=> bs!1173537 (= lambda!243076 lambda!243071)))

(declare-fun bs!1173538 () Bool)

(assert (= bs!1173538 (and d!1558323 d!1558295)))

(assert (=> bs!1173538 (= lambda!243076 lambda!243059)))

(declare-fun bs!1173539 () Bool)

(assert (= bs!1173539 (and d!1558323 d!1558275)))

(assert (=> bs!1173539 (= lambda!243076 lambda!243050)))

(declare-fun bs!1173540 () Bool)

(assert (= bs!1173540 (and d!1558323 d!1558267)))

(assert (=> bs!1173540 (= lambda!243076 lambda!243047)))

(declare-fun bs!1173541 () Bool)

(assert (= bs!1173541 (and d!1558323 d!1558279)))

(assert (=> bs!1173541 (= lambda!243076 lambda!243052)))

(declare-fun bs!1173542 () Bool)

(assert (= bs!1173542 (and d!1558323 d!1558287)))

(assert (=> bs!1173542 (= lambda!243076 lambda!243055)))

(declare-fun bs!1173543 () Bool)

(assert (= bs!1173543 (and d!1558323 d!1558313)))

(assert (=> bs!1173543 (= lambda!243076 lambda!243070)))

(declare-fun bs!1173544 () Bool)

(assert (= bs!1173544 (and d!1558323 d!1558293)))

(assert (=> bs!1173544 (= lambda!243076 lambda!243058)))

(declare-fun bs!1173545 () Bool)

(assert (= bs!1173545 (and d!1558323 d!1558281)))

(assert (=> bs!1173545 (= lambda!243076 lambda!243053)))

(declare-fun bs!1173546 () Bool)

(assert (= bs!1173546 (and d!1558323 d!1558307)))

(assert (=> bs!1173546 (= lambda!243076 lambda!243067)))

(declare-fun bs!1173547 () Bool)

(assert (= bs!1173547 (and d!1558323 d!1558299)))

(assert (=> bs!1173547 (= lambda!243076 lambda!243063)))

(assert (=> d!1558323 (= (inv!71436 setElem!27298) (forall!13011 (exprs!3455 setElem!27298) lambda!243076))))

(declare-fun bs!1173548 () Bool)

(assert (= bs!1173548 d!1558323))

(declare-fun m!5852626 () Bool)

(assert (=> bs!1173548 m!5852626))

(assert (=> setNonEmpty!27298 d!1558323))

(declare-fun bs!1173549 () Bool)

(declare-fun d!1558325 () Bool)

(assert (= bs!1173549 (and d!1558325 d!1558289)))

(declare-fun lambda!243077 () Int)

(assert (=> bs!1173549 (= lambda!243077 lambda!243056)))

(declare-fun bs!1173550 () Bool)

(assert (= bs!1173550 (and d!1558325 d!1558273)))

(assert (=> bs!1173550 (= lambda!243077 lambda!243049)))

(declare-fun bs!1173551 () Bool)

(assert (= bs!1173551 (and d!1558325 d!1558311)))

(assert (=> bs!1173551 (= lambda!243077 lambda!243069)))

(declare-fun bs!1173552 () Bool)

(assert (= bs!1173552 (and d!1558325 d!1558285)))

(assert (=> bs!1173552 (= lambda!243077 lambda!243054)))

(declare-fun bs!1173553 () Bool)

(assert (= bs!1173553 (and d!1558325 d!1558321)))

(assert (=> bs!1173553 (= lambda!243077 lambda!243075)))

(declare-fun bs!1173554 () Bool)

(assert (= bs!1173554 (and d!1558325 d!1558309)))

(assert (=> bs!1173554 (= lambda!243077 lambda!243068)))

(declare-fun bs!1173555 () Bool)

(assert (= bs!1173555 (and d!1558325 d!1558301)))

(assert (=> bs!1173555 (= lambda!243077 lambda!243064)))

(declare-fun bs!1173556 () Bool)

(assert (= bs!1173556 (and d!1558325 d!1558277)))

(assert (=> bs!1173556 (= lambda!243077 lambda!243051)))

(declare-fun bs!1173557 () Bool)

(assert (= bs!1173557 (and d!1558325 d!1558269)))

(assert (=> bs!1173557 (= lambda!243077 lambda!243048)))

(declare-fun bs!1173558 () Bool)

(assert (= bs!1173558 (and d!1558325 d!1558305)))

(assert (=> bs!1173558 (= lambda!243077 lambda!243066)))

(declare-fun bs!1173559 () Bool)

(assert (= bs!1173559 (and d!1558325 d!1558291)))

(assert (=> bs!1173559 (= lambda!243077 lambda!243057)))

(declare-fun bs!1173560 () Bool)

(assert (= bs!1173560 (and d!1558325 d!1558315)))

(assert (=> bs!1173560 (= lambda!243077 lambda!243071)))

(declare-fun bs!1173561 () Bool)

(assert (= bs!1173561 (and d!1558325 d!1558295)))

(assert (=> bs!1173561 (= lambda!243077 lambda!243059)))

(declare-fun bs!1173562 () Bool)

(assert (= bs!1173562 (and d!1558325 d!1558275)))

(assert (=> bs!1173562 (= lambda!243077 lambda!243050)))

(declare-fun bs!1173563 () Bool)

(assert (= bs!1173563 (and d!1558325 d!1558323)))

(assert (=> bs!1173563 (= lambda!243077 lambda!243076)))

(declare-fun bs!1173564 () Bool)

(assert (= bs!1173564 (and d!1558325 d!1558267)))

(assert (=> bs!1173564 (= lambda!243077 lambda!243047)))

(declare-fun bs!1173565 () Bool)

(assert (= bs!1173565 (and d!1558325 d!1558279)))

(assert (=> bs!1173565 (= lambda!243077 lambda!243052)))

(declare-fun bs!1173566 () Bool)

(assert (= bs!1173566 (and d!1558325 d!1558287)))

(assert (=> bs!1173566 (= lambda!243077 lambda!243055)))

(declare-fun bs!1173567 () Bool)

(assert (= bs!1173567 (and d!1558325 d!1558313)))

(assert (=> bs!1173567 (= lambda!243077 lambda!243070)))

(declare-fun bs!1173568 () Bool)

(assert (= bs!1173568 (and d!1558325 d!1558293)))

(assert (=> bs!1173568 (= lambda!243077 lambda!243058)))

(declare-fun bs!1173569 () Bool)

(assert (= bs!1173569 (and d!1558325 d!1558281)))

(assert (=> bs!1173569 (= lambda!243077 lambda!243053)))

(declare-fun bs!1173570 () Bool)

(assert (= bs!1173570 (and d!1558325 d!1558307)))

(assert (=> bs!1173570 (= lambda!243077 lambda!243067)))

(declare-fun bs!1173571 () Bool)

(assert (= bs!1173571 (and d!1558325 d!1558299)))

(assert (=> bs!1173571 (= lambda!243077 lambda!243063)))

(assert (=> d!1558325 (= (inv!71436 setElem!27290) (forall!13011 (exprs!3455 setElem!27290) lambda!243077))))

(declare-fun bs!1173572 () Bool)

(assert (= bs!1173572 d!1558325))

(declare-fun m!5852628 () Bool)

(assert (=> bs!1173572 m!5852628))

(assert (=> setNonEmpty!27290 d!1558325))

(declare-fun bs!1173573 () Bool)

(declare-fun d!1558327 () Bool)

(assert (= bs!1173573 (and d!1558327 d!1558325)))

(declare-fun lambda!243078 () Int)

(assert (=> bs!1173573 (= lambda!243078 lambda!243077)))

(declare-fun bs!1173574 () Bool)

(assert (= bs!1173574 (and d!1558327 d!1558289)))

(assert (=> bs!1173574 (= lambda!243078 lambda!243056)))

(declare-fun bs!1173575 () Bool)

(assert (= bs!1173575 (and d!1558327 d!1558273)))

(assert (=> bs!1173575 (= lambda!243078 lambda!243049)))

(declare-fun bs!1173576 () Bool)

(assert (= bs!1173576 (and d!1558327 d!1558311)))

(assert (=> bs!1173576 (= lambda!243078 lambda!243069)))

(declare-fun bs!1173577 () Bool)

(assert (= bs!1173577 (and d!1558327 d!1558285)))

(assert (=> bs!1173577 (= lambda!243078 lambda!243054)))

(declare-fun bs!1173578 () Bool)

(assert (= bs!1173578 (and d!1558327 d!1558321)))

(assert (=> bs!1173578 (= lambda!243078 lambda!243075)))

(declare-fun bs!1173579 () Bool)

(assert (= bs!1173579 (and d!1558327 d!1558309)))

(assert (=> bs!1173579 (= lambda!243078 lambda!243068)))

(declare-fun bs!1173580 () Bool)

(assert (= bs!1173580 (and d!1558327 d!1558301)))

(assert (=> bs!1173580 (= lambda!243078 lambda!243064)))

(declare-fun bs!1173581 () Bool)

(assert (= bs!1173581 (and d!1558327 d!1558277)))

(assert (=> bs!1173581 (= lambda!243078 lambda!243051)))

(declare-fun bs!1173582 () Bool)

(assert (= bs!1173582 (and d!1558327 d!1558269)))

(assert (=> bs!1173582 (= lambda!243078 lambda!243048)))

(declare-fun bs!1173583 () Bool)

(assert (= bs!1173583 (and d!1558327 d!1558305)))

(assert (=> bs!1173583 (= lambda!243078 lambda!243066)))

(declare-fun bs!1173584 () Bool)

(assert (= bs!1173584 (and d!1558327 d!1558291)))

(assert (=> bs!1173584 (= lambda!243078 lambda!243057)))

(declare-fun bs!1173585 () Bool)

(assert (= bs!1173585 (and d!1558327 d!1558315)))

(assert (=> bs!1173585 (= lambda!243078 lambda!243071)))

(declare-fun bs!1173586 () Bool)

(assert (= bs!1173586 (and d!1558327 d!1558295)))

(assert (=> bs!1173586 (= lambda!243078 lambda!243059)))

(declare-fun bs!1173587 () Bool)

(assert (= bs!1173587 (and d!1558327 d!1558275)))

(assert (=> bs!1173587 (= lambda!243078 lambda!243050)))

(declare-fun bs!1173588 () Bool)

(assert (= bs!1173588 (and d!1558327 d!1558323)))

(assert (=> bs!1173588 (= lambda!243078 lambda!243076)))

(declare-fun bs!1173589 () Bool)

(assert (= bs!1173589 (and d!1558327 d!1558267)))

(assert (=> bs!1173589 (= lambda!243078 lambda!243047)))

(declare-fun bs!1173590 () Bool)

(assert (= bs!1173590 (and d!1558327 d!1558279)))

(assert (=> bs!1173590 (= lambda!243078 lambda!243052)))

(declare-fun bs!1173591 () Bool)

(assert (= bs!1173591 (and d!1558327 d!1558287)))

(assert (=> bs!1173591 (= lambda!243078 lambda!243055)))

(declare-fun bs!1173592 () Bool)

(assert (= bs!1173592 (and d!1558327 d!1558313)))

(assert (=> bs!1173592 (= lambda!243078 lambda!243070)))

(declare-fun bs!1173593 () Bool)

(assert (= bs!1173593 (and d!1558327 d!1558293)))

(assert (=> bs!1173593 (= lambda!243078 lambda!243058)))

(declare-fun bs!1173594 () Bool)

(assert (= bs!1173594 (and d!1558327 d!1558281)))

(assert (=> bs!1173594 (= lambda!243078 lambda!243053)))

(declare-fun bs!1173595 () Bool)

(assert (= bs!1173595 (and d!1558327 d!1558307)))

(assert (=> bs!1173595 (= lambda!243078 lambda!243067)))

(declare-fun bs!1173596 () Bool)

(assert (= bs!1173596 (and d!1558327 d!1558299)))

(assert (=> bs!1173596 (= lambda!243078 lambda!243063)))

(assert (=> d!1558327 (= (inv!71436 (_2!33064 (_1!33065 (h!62153 mapValue!22539)))) (forall!13011 (exprs!3455 (_2!33064 (_1!33065 (h!62153 mapValue!22539)))) lambda!243078))))

(declare-fun bs!1173597 () Bool)

(assert (= bs!1173597 d!1558327))

(declare-fun m!5852630 () Bool)

(assert (=> bs!1173597 m!5852630))

(assert (=> b!4854683 d!1558327))

(declare-fun bs!1173598 () Bool)

(declare-fun b!4854779 () Bool)

(assert (= bs!1173598 (and b!4854779 b!4854777)))

(declare-fun lambda!243079 () Int)

(assert (=> bs!1173598 (= lambda!243079 lambda!243074)))

(declare-fun d!1558329 () Bool)

(declare-fun res!2072604 () Bool)

(declare-fun e!3035157 () Bool)

(assert (=> d!1558329 (=> (not res!2072604) (not e!3035157))))

(assert (=> d!1558329 (= res!2072604 (valid!4136 (cache!4594 (_2!33068 lt!1991147))))))

(assert (=> d!1558329 (= (validCacheMapUp!422 (cache!4594 (_2!33068 lt!1991147))) e!3035157)))

(declare-fun b!4854778 () Bool)

(declare-fun res!2072605 () Bool)

(assert (=> b!4854778 (=> (not res!2072605) (not e!3035157))))

(assert (=> b!4854778 (= res!2072605 (invariantList!1892 (toList!7913 (map!12798 (cache!4594 (_2!33068 lt!1991147))))))))

(assert (=> b!4854779 (= e!3035157 (forall!13013 (toList!7913 (map!12798 (cache!4594 (_2!33068 lt!1991147)))) lambda!243079))))

(assert (= (and d!1558329 res!2072604) b!4854778))

(assert (= (and b!4854778 res!2072605) b!4854779))

(declare-fun m!5852632 () Bool)

(assert (=> d!1558329 m!5852632))

(declare-fun m!5852634 () Bool)

(assert (=> b!4854778 m!5852634))

(declare-fun m!5852636 () Bool)

(assert (=> b!4854778 m!5852636))

(assert (=> b!4854779 m!5852634))

(declare-fun m!5852638 () Bool)

(assert (=> b!4854779 m!5852638))

(assert (=> d!1558265 d!1558329))

(declare-fun bs!1173599 () Bool)

(declare-fun d!1558331 () Bool)

(assert (= bs!1173599 (and d!1558331 d!1558325)))

(declare-fun lambda!243080 () Int)

(assert (=> bs!1173599 (= lambda!243080 lambda!243077)))

(declare-fun bs!1173600 () Bool)

(assert (= bs!1173600 (and d!1558331 d!1558289)))

(assert (=> bs!1173600 (= lambda!243080 lambda!243056)))

(declare-fun bs!1173601 () Bool)

(assert (= bs!1173601 (and d!1558331 d!1558273)))

(assert (=> bs!1173601 (= lambda!243080 lambda!243049)))

(declare-fun bs!1173602 () Bool)

(assert (= bs!1173602 (and d!1558331 d!1558311)))

(assert (=> bs!1173602 (= lambda!243080 lambda!243069)))

(declare-fun bs!1173603 () Bool)

(assert (= bs!1173603 (and d!1558331 d!1558285)))

(assert (=> bs!1173603 (= lambda!243080 lambda!243054)))

(declare-fun bs!1173604 () Bool)

(assert (= bs!1173604 (and d!1558331 d!1558321)))

(assert (=> bs!1173604 (= lambda!243080 lambda!243075)))

(declare-fun bs!1173605 () Bool)

(assert (= bs!1173605 (and d!1558331 d!1558309)))

(assert (=> bs!1173605 (= lambda!243080 lambda!243068)))

(declare-fun bs!1173606 () Bool)

(assert (= bs!1173606 (and d!1558331 d!1558301)))

(assert (=> bs!1173606 (= lambda!243080 lambda!243064)))

(declare-fun bs!1173607 () Bool)

(assert (= bs!1173607 (and d!1558331 d!1558277)))

(assert (=> bs!1173607 (= lambda!243080 lambda!243051)))

(declare-fun bs!1173608 () Bool)

(assert (= bs!1173608 (and d!1558331 d!1558269)))

(assert (=> bs!1173608 (= lambda!243080 lambda!243048)))

(declare-fun bs!1173609 () Bool)

(assert (= bs!1173609 (and d!1558331 d!1558291)))

(assert (=> bs!1173609 (= lambda!243080 lambda!243057)))

(declare-fun bs!1173610 () Bool)

(assert (= bs!1173610 (and d!1558331 d!1558315)))

(assert (=> bs!1173610 (= lambda!243080 lambda!243071)))

(declare-fun bs!1173611 () Bool)

(assert (= bs!1173611 (and d!1558331 d!1558295)))

(assert (=> bs!1173611 (= lambda!243080 lambda!243059)))

(declare-fun bs!1173612 () Bool)

(assert (= bs!1173612 (and d!1558331 d!1558275)))

(assert (=> bs!1173612 (= lambda!243080 lambda!243050)))

(declare-fun bs!1173613 () Bool)

(assert (= bs!1173613 (and d!1558331 d!1558323)))

(assert (=> bs!1173613 (= lambda!243080 lambda!243076)))

(declare-fun bs!1173614 () Bool)

(assert (= bs!1173614 (and d!1558331 d!1558267)))

(assert (=> bs!1173614 (= lambda!243080 lambda!243047)))

(declare-fun bs!1173615 () Bool)

(assert (= bs!1173615 (and d!1558331 d!1558279)))

(assert (=> bs!1173615 (= lambda!243080 lambda!243052)))

(declare-fun bs!1173616 () Bool)

(assert (= bs!1173616 (and d!1558331 d!1558287)))

(assert (=> bs!1173616 (= lambda!243080 lambda!243055)))

(declare-fun bs!1173617 () Bool)

(assert (= bs!1173617 (and d!1558331 d!1558313)))

(assert (=> bs!1173617 (= lambda!243080 lambda!243070)))

(declare-fun bs!1173618 () Bool)

(assert (= bs!1173618 (and d!1558331 d!1558327)))

(assert (=> bs!1173618 (= lambda!243080 lambda!243078)))

(declare-fun bs!1173619 () Bool)

(assert (= bs!1173619 (and d!1558331 d!1558305)))

(assert (=> bs!1173619 (= lambda!243080 lambda!243066)))

(declare-fun bs!1173620 () Bool)

(assert (= bs!1173620 (and d!1558331 d!1558293)))

(assert (=> bs!1173620 (= lambda!243080 lambda!243058)))

(declare-fun bs!1173621 () Bool)

(assert (= bs!1173621 (and d!1558331 d!1558281)))

(assert (=> bs!1173621 (= lambda!243080 lambda!243053)))

(declare-fun bs!1173622 () Bool)

(assert (= bs!1173622 (and d!1558331 d!1558307)))

(assert (=> bs!1173622 (= lambda!243080 lambda!243067)))

(declare-fun bs!1173623 () Bool)

(assert (= bs!1173623 (and d!1558331 d!1558299)))

(assert (=> bs!1173623 (= lambda!243080 lambda!243063)))

(assert (=> d!1558331 (= (inv!71436 setElem!27289) (forall!13011 (exprs!3455 setElem!27289) lambda!243080))))

(declare-fun bs!1173624 () Bool)

(assert (= bs!1173624 d!1558331))

(declare-fun m!5852640 () Bool)

(assert (=> bs!1173624 m!5852640))

(assert (=> setNonEmpty!27289 d!1558331))

(declare-fun b!4854780 () Bool)

(declare-fun e!3035158 () Bool)

(declare-fun tp!1365631 () Bool)

(declare-fun tp!1365632 () Bool)

(assert (=> b!4854780 (= e!3035158 (and tp!1365631 tp!1365632))))

(assert (=> b!4854704 (= tp!1365581 e!3035158)))

(assert (= (and b!4854704 ((_ is Cons!55704) (exprs!3455 setElem!27304))) b!4854780))

(declare-fun b!4854781 () Bool)

(declare-fun e!3035159 () Bool)

(declare-fun tp!1365633 () Bool)

(declare-fun tp!1365634 () Bool)

(assert (=> b!4854781 (= e!3035159 (and tp!1365633 tp!1365634))))

(assert (=> b!4854688 (= tp!1365557 e!3035159)))

(assert (= (and b!4854688 ((_ is Cons!55704) (exprs!3455 setElem!27298))) b!4854781))

(declare-fun b!4854782 () Bool)

(declare-fun e!3035160 () Bool)

(declare-fun tp!1365635 () Bool)

(declare-fun tp!1365636 () Bool)

(assert (=> b!4854782 (= e!3035160 (and tp!1365635 tp!1365636))))

(assert (=> b!4854686 (= tp!1365560 e!3035160)))

(assert (= (and b!4854686 ((_ is Cons!55704) (exprs!3455 (_2!33064 (_1!33065 (h!62153 mapDefault!22539)))))) b!4854782))

(declare-fun condSetEmpty!27308 () Bool)

(assert (=> setNonEmpty!27300 (= condSetEmpty!27308 (= setRest!27300 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27308 () Bool)

(assert (=> setNonEmpty!27300 (= tp!1365566 setRes!27308)))

(declare-fun setIsEmpty!27308 () Bool)

(assert (=> setIsEmpty!27308 setRes!27308))

(declare-fun setNonEmpty!27308 () Bool)

(declare-fun e!3035161 () Bool)

(declare-fun setElem!27308 () Context!5910)

(declare-fun tp!1365638 () Bool)

(assert (=> setNonEmpty!27308 (= setRes!27308 (and tp!1365638 (inv!71436 setElem!27308) e!3035161))))

(declare-fun setRest!27308 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27308 (= setRest!27300 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27308 true) setRest!27308))))

(declare-fun b!4854783 () Bool)

(declare-fun tp!1365637 () Bool)

(assert (=> b!4854783 (= e!3035161 tp!1365637)))

(assert (= (and setNonEmpty!27300 condSetEmpty!27308) setIsEmpty!27308))

(assert (= (and setNonEmpty!27300 (not condSetEmpty!27308)) setNonEmpty!27308))

(assert (= setNonEmpty!27308 b!4854783))

(declare-fun m!5852642 () Bool)

(assert (=> setNonEmpty!27308 m!5852642))

(declare-fun b!4854784 () Bool)

(declare-fun e!3035162 () Bool)

(declare-fun tp!1365639 () Bool)

(declare-fun tp!1365640 () Bool)

(assert (=> b!4854784 (= e!3035162 (and tp!1365639 tp!1365640))))

(assert (=> b!4854642 (= tp!1365490 e!3035162)))

(assert (= (and b!4854642 ((_ is Cons!55704) (exprs!3455 setElem!27285))) b!4854784))

(declare-fun b!4854798 () Bool)

(declare-fun e!3035165 () Bool)

(declare-fun tp!1365653 () Bool)

(declare-fun tp!1365651 () Bool)

(assert (=> b!4854798 (= e!3035165 (and tp!1365653 tp!1365651))))

(assert (=> b!4854699 (= tp!1365575 e!3035165)))

(declare-fun b!4854796 () Bool)

(declare-fun tp!1365655 () Bool)

(declare-fun tp!1365652 () Bool)

(assert (=> b!4854796 (= e!3035165 (and tp!1365655 tp!1365652))))

(declare-fun b!4854797 () Bool)

(declare-fun tp!1365654 () Bool)

(assert (=> b!4854797 (= e!3035165 tp!1365654)))

(declare-fun b!4854795 () Bool)

(assert (=> b!4854795 (= e!3035165 tp_is_empty!35479)))

(assert (= (and b!4854699 ((_ is ElementMatch!13065) (h!62152 (exprs!3455 setElem!27277)))) b!4854795))

(assert (= (and b!4854699 ((_ is Concat!21384) (h!62152 (exprs!3455 setElem!27277)))) b!4854796))

(assert (= (and b!4854699 ((_ is Star!13065) (h!62152 (exprs!3455 setElem!27277)))) b!4854797))

(assert (= (and b!4854699 ((_ is Union!13065) (h!62152 (exprs!3455 setElem!27277)))) b!4854798))

(declare-fun b!4854799 () Bool)

(declare-fun e!3035166 () Bool)

(declare-fun tp!1365656 () Bool)

(declare-fun tp!1365657 () Bool)

(assert (=> b!4854799 (= e!3035166 (and tp!1365656 tp!1365657))))

(assert (=> b!4854699 (= tp!1365576 e!3035166)))

(assert (= (and b!4854699 ((_ is Cons!55704) (t!363330 (exprs!3455 setElem!27277)))) b!4854799))

(declare-fun b!4854803 () Bool)

(declare-fun e!3035167 () Bool)

(declare-fun tp!1365660 () Bool)

(declare-fun tp!1365658 () Bool)

(assert (=> b!4854803 (= e!3035167 (and tp!1365660 tp!1365658))))

(assert (=> b!4854691 (= tp!1365565 e!3035167)))

(declare-fun b!4854801 () Bool)

(declare-fun tp!1365662 () Bool)

(declare-fun tp!1365659 () Bool)

(assert (=> b!4854801 (= e!3035167 (and tp!1365662 tp!1365659))))

(declare-fun b!4854802 () Bool)

(declare-fun tp!1365661 () Bool)

(assert (=> b!4854802 (= e!3035167 tp!1365661)))

(declare-fun b!4854800 () Bool)

(assert (=> b!4854800 (= e!3035167 tp_is_empty!35479)))

(assert (= (and b!4854691 ((_ is ElementMatch!13065) (_1!33064 (_1!33065 (h!62153 mapValue!22533))))) b!4854800))

(assert (= (and b!4854691 ((_ is Concat!21384) (_1!33064 (_1!33065 (h!62153 mapValue!22533))))) b!4854801))

(assert (= (and b!4854691 ((_ is Star!13065) (_1!33064 (_1!33065 (h!62153 mapValue!22533))))) b!4854802))

(assert (= (and b!4854691 ((_ is Union!13065) (_1!33064 (_1!33065 (h!62153 mapValue!22533))))) b!4854803))

(declare-fun b!4854804 () Bool)

(declare-fun e!3035168 () Bool)

(declare-fun tp!1365665 () Bool)

(assert (=> b!4854804 (= e!3035168 tp!1365665)))

(declare-fun setRes!27309 () Bool)

(declare-fun e!3035170 () Bool)

(declare-fun tp!1365667 () Bool)

(declare-fun setNonEmpty!27309 () Bool)

(declare-fun setElem!27309 () Context!5910)

(assert (=> setNonEmpty!27309 (= setRes!27309 (and tp!1365667 (inv!71436 setElem!27309) e!3035170))))

(declare-fun setRest!27309 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27309 (= (_2!33065 (h!62153 (t!363331 mapValue!22533))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27309 true) setRest!27309))))

(declare-fun b!4854805 () Bool)

(declare-fun tp!1365663 () Bool)

(assert (=> b!4854805 (= e!3035170 tp!1365663)))

(declare-fun tp!1365664 () Bool)

(declare-fun e!3035169 () Bool)

(declare-fun b!4854806 () Bool)

(declare-fun tp!1365666 () Bool)

(assert (=> b!4854806 (= e!3035169 (and tp!1365666 (inv!71436 (_2!33064 (_1!33065 (h!62153 (t!363331 mapValue!22533))))) e!3035168 tp_is_empty!35479 setRes!27309 tp!1365664))))

(declare-fun condSetEmpty!27309 () Bool)

(assert (=> b!4854806 (= condSetEmpty!27309 (= (_2!33065 (h!62153 (t!363331 mapValue!22533))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854691 (= tp!1365563 e!3035169)))

(declare-fun setIsEmpty!27309 () Bool)

(assert (=> setIsEmpty!27309 setRes!27309))

(assert (= b!4854806 b!4854804))

(assert (= (and b!4854806 condSetEmpty!27309) setIsEmpty!27309))

(assert (= (and b!4854806 (not condSetEmpty!27309)) setNonEmpty!27309))

(assert (= setNonEmpty!27309 b!4854805))

(assert (= (and b!4854691 ((_ is Cons!55705) (t!363331 mapValue!22533))) b!4854806))

(declare-fun m!5852644 () Bool)

(assert (=> setNonEmpty!27309 m!5852644))

(declare-fun m!5852646 () Bool)

(assert (=> b!4854806 m!5852646))

(declare-fun setIsEmpty!27310 () Bool)

(declare-fun setRes!27310 () Bool)

(assert (=> setIsEmpty!27310 setRes!27310))

(declare-fun b!4854807 () Bool)

(declare-fun e!3035172 () Bool)

(declare-fun e!3035173 () Bool)

(declare-fun tp!1365669 () Bool)

(assert (=> b!4854807 (= e!3035173 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 (t!363332 mapDefault!22532))))) e!3035172 tp_is_empty!35479 setRes!27310 tp!1365669))))

(declare-fun condSetEmpty!27310 () Bool)

(assert (=> b!4854807 (= condSetEmpty!27310 (= (_2!33067 (h!62154 (t!363332 mapDefault!22532))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854692 (= tp!1365568 e!3035173)))

(declare-fun b!4854808 () Bool)

(declare-fun tp!1365670 () Bool)

(assert (=> b!4854808 (= e!3035172 tp!1365670)))

(declare-fun b!4854809 () Bool)

(declare-fun e!3035171 () Bool)

(declare-fun tp!1365671 () Bool)

(assert (=> b!4854809 (= e!3035171 tp!1365671)))

(declare-fun setNonEmpty!27310 () Bool)

(declare-fun setElem!27310 () Context!5910)

(declare-fun tp!1365668 () Bool)

(assert (=> setNonEmpty!27310 (= setRes!27310 (and tp!1365668 (inv!71436 setElem!27310) e!3035171))))

(declare-fun setRest!27310 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27310 (= (_2!33067 (h!62154 (t!363332 mapDefault!22532))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27310 true) setRest!27310))))

(assert (= b!4854807 b!4854808))

(assert (= (and b!4854807 condSetEmpty!27310) setIsEmpty!27310))

(assert (= (and b!4854807 (not condSetEmpty!27310)) setNonEmpty!27310))

(assert (= setNonEmpty!27310 b!4854809))

(assert (= (and b!4854692 ((_ is Cons!55706) (t!363332 mapDefault!22532))) b!4854807))

(declare-fun m!5852648 () Bool)

(assert (=> b!4854807 m!5852648))

(declare-fun m!5852650 () Bool)

(assert (=> setNonEmpty!27310 m!5852650))

(declare-fun b!4854810 () Bool)

(declare-fun e!3035174 () Bool)

(declare-fun tp!1365672 () Bool)

(declare-fun tp!1365673 () Bool)

(assert (=> b!4854810 (= e!3035174 (and tp!1365672 tp!1365673))))

(assert (=> b!4854640 (= tp!1365497 e!3035174)))

(assert (= (and b!4854640 ((_ is Cons!55704) (exprs!3455 (_1!33066 (_1!33067 (h!62154 mapValue!22536)))))) b!4854810))

(declare-fun b!4854811 () Bool)

(declare-fun e!3035175 () Bool)

(declare-fun tp!1365674 () Bool)

(declare-fun tp!1365675 () Bool)

(assert (=> b!4854811 (= e!3035175 (and tp!1365674 tp!1365675))))

(assert (=> b!4854694 (= tp!1365570 e!3035175)))

(assert (= (and b!4854694 ((_ is Cons!55704) (exprs!3455 setElem!27301))) b!4854811))

(declare-fun b!4854812 () Bool)

(declare-fun e!3035176 () Bool)

(declare-fun tp!1365676 () Bool)

(declare-fun tp!1365677 () Bool)

(assert (=> b!4854812 (= e!3035176 (and tp!1365676 tp!1365677))))

(assert (=> b!4854667 (= tp!1365524 e!3035176)))

(assert (= (and b!4854667 ((_ is Cons!55704) (exprs!3455 setElem!27293))) b!4854812))

(declare-fun b!4854813 () Bool)

(declare-fun e!3035177 () Bool)

(declare-fun tp!1365678 () Bool)

(declare-fun tp!1365679 () Bool)

(assert (=> b!4854813 (= e!3035177 (and tp!1365678 tp!1365679))))

(assert (=> b!4854662 (= tp!1365518 e!3035177)))

(assert (= (and b!4854662 ((_ is Cons!55704) (exprs!3455 setElem!27291))) b!4854813))

(declare-fun setIsEmpty!27311 () Bool)

(declare-fun setRes!27311 () Bool)

(assert (=> setIsEmpty!27311 setRes!27311))

(declare-fun b!4854814 () Bool)

(declare-fun tp!1365681 () Bool)

(declare-fun e!3035180 () Bool)

(declare-fun e!3035179 () Bool)

(assert (=> b!4854814 (= e!3035180 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 (t!363332 mapValue!22536))))) e!3035179 tp_is_empty!35479 setRes!27311 tp!1365681))))

(declare-fun condSetEmpty!27311 () Bool)

(assert (=> b!4854814 (= condSetEmpty!27311 (= (_2!33067 (h!62154 (t!363332 mapValue!22536))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854644 (= tp!1365495 e!3035180)))

(declare-fun b!4854815 () Bool)

(declare-fun tp!1365682 () Bool)

(assert (=> b!4854815 (= e!3035179 tp!1365682)))

(declare-fun b!4854816 () Bool)

(declare-fun e!3035178 () Bool)

(declare-fun tp!1365683 () Bool)

(assert (=> b!4854816 (= e!3035178 tp!1365683)))

(declare-fun tp!1365680 () Bool)

(declare-fun setElem!27311 () Context!5910)

(declare-fun setNonEmpty!27311 () Bool)

(assert (=> setNonEmpty!27311 (= setRes!27311 (and tp!1365680 (inv!71436 setElem!27311) e!3035178))))

(declare-fun setRest!27311 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27311 (= (_2!33067 (h!62154 (t!363332 mapValue!22536))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27311 true) setRest!27311))))

(assert (= b!4854814 b!4854815))

(assert (= (and b!4854814 condSetEmpty!27311) setIsEmpty!27311))

(assert (= (and b!4854814 (not condSetEmpty!27311)) setNonEmpty!27311))

(assert (= setNonEmpty!27311 b!4854816))

(assert (= (and b!4854644 ((_ is Cons!55706) (t!363332 mapValue!22536))) b!4854814))

(declare-fun m!5852652 () Bool)

(assert (=> b!4854814 m!5852652))

(declare-fun m!5852654 () Bool)

(assert (=> setNonEmpty!27311 m!5852654))

(declare-fun b!4854817 () Bool)

(declare-fun e!3035181 () Bool)

(declare-fun tp!1365684 () Bool)

(declare-fun tp!1365685 () Bool)

(assert (=> b!4854817 (= e!3035181 (and tp!1365684 tp!1365685))))

(assert (=> b!4854664 (= tp!1365519 e!3035181)))

(assert (= (and b!4854664 ((_ is Cons!55704) (exprs!3455 setElem!27292))) b!4854817))

(declare-fun setIsEmpty!27312 () Bool)

(declare-fun setRes!27312 () Bool)

(assert (=> setIsEmpty!27312 setRes!27312))

(declare-fun e!3035184 () Bool)

(declare-fun e!3035183 () Bool)

(declare-fun tp!1365687 () Bool)

(declare-fun b!4854818 () Bool)

(assert (=> b!4854818 (= e!3035184 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 (t!363332 mapValue!22532))))) e!3035183 tp_is_empty!35479 setRes!27312 tp!1365687))))

(declare-fun condSetEmpty!27312 () Bool)

(assert (=> b!4854818 (= condSetEmpty!27312 (= (_2!33067 (h!62154 (t!363332 mapValue!22532))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854654 (= tp!1365508 e!3035184)))

(declare-fun b!4854819 () Bool)

(declare-fun tp!1365688 () Bool)

(assert (=> b!4854819 (= e!3035183 tp!1365688)))

(declare-fun b!4854820 () Bool)

(declare-fun e!3035182 () Bool)

(declare-fun tp!1365689 () Bool)

(assert (=> b!4854820 (= e!3035182 tp!1365689)))

(declare-fun tp!1365686 () Bool)

(declare-fun setNonEmpty!27312 () Bool)

(declare-fun setElem!27312 () Context!5910)

(assert (=> setNonEmpty!27312 (= setRes!27312 (and tp!1365686 (inv!71436 setElem!27312) e!3035182))))

(declare-fun setRest!27312 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27312 (= (_2!33067 (h!62154 (t!363332 mapValue!22532))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27312 true) setRest!27312))))

(assert (= b!4854818 b!4854819))

(assert (= (and b!4854818 condSetEmpty!27312) setIsEmpty!27312))

(assert (= (and b!4854818 (not condSetEmpty!27312)) setNonEmpty!27312))

(assert (= setNonEmpty!27312 b!4854820))

(assert (= (and b!4854654 ((_ is Cons!55706) (t!363332 mapValue!22532))) b!4854818))

(declare-fun m!5852656 () Bool)

(assert (=> b!4854818 m!5852656))

(declare-fun m!5852658 () Bool)

(assert (=> setNonEmpty!27312 m!5852658))

(declare-fun b!4854821 () Bool)

(declare-fun e!3035185 () Bool)

(declare-fun tp!1365690 () Bool)

(declare-fun tp!1365691 () Bool)

(assert (=> b!4854821 (= e!3035185 (and tp!1365690 tp!1365691))))

(assert (=> b!4854658 (= tp!1365513 e!3035185)))

(assert (= (and b!4854658 ((_ is Cons!55704) (exprs!3455 (_1!33066 (_1!33067 (h!62154 (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))))))) b!4854821))

(declare-fun b!4854822 () Bool)

(declare-fun e!3035186 () Bool)

(declare-fun tp!1365692 () Bool)

(declare-fun tp!1365693 () Bool)

(assert (=> b!4854822 (= e!3035186 (and tp!1365692 tp!1365693))))

(assert (=> b!4854666 (= tp!1365526 e!3035186)))

(assert (= (and b!4854666 ((_ is Cons!55704) (exprs!3455 (_2!33064 (_1!33065 (h!62153 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))))))) b!4854822))

(declare-fun setIsEmpty!27313 () Bool)

(declare-fun setRes!27313 () Bool)

(assert (=> setIsEmpty!27313 setRes!27313))

(declare-fun e!3035189 () Bool)

(declare-fun e!3035188 () Bool)

(declare-fun b!4854823 () Bool)

(declare-fun tp!1365695 () Bool)

(assert (=> b!4854823 (= e!3035189 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 (t!363332 (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))))))) e!3035188 tp_is_empty!35479 setRes!27313 tp!1365695))))

(declare-fun condSetEmpty!27313 () Bool)

(assert (=> b!4854823 (= condSetEmpty!27313 (= (_2!33067 (h!62154 (t!363332 (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854660 (= tp!1365516 e!3035189)))

(declare-fun b!4854824 () Bool)

(declare-fun tp!1365696 () Bool)

(assert (=> b!4854824 (= e!3035188 tp!1365696)))

(declare-fun b!4854825 () Bool)

(declare-fun e!3035187 () Bool)

(declare-fun tp!1365697 () Bool)

(assert (=> b!4854825 (= e!3035187 tp!1365697)))

(declare-fun setNonEmpty!27313 () Bool)

(declare-fun tp!1365694 () Bool)

(declare-fun setElem!27313 () Context!5910)

(assert (=> setNonEmpty!27313 (= setRes!27313 (and tp!1365694 (inv!71436 setElem!27313) e!3035187))))

(declare-fun setRest!27313 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27313 (= (_2!33067 (h!62154 (t!363332 (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27313 true) setRest!27313))))

(assert (= b!4854823 b!4854824))

(assert (= (and b!4854823 condSetEmpty!27313) setIsEmpty!27313))

(assert (= (and b!4854823 (not condSetEmpty!27313)) setNonEmpty!27313))

(assert (= setNonEmpty!27313 b!4854825))

(assert (= (and b!4854660 ((_ is Cons!55706) (t!363332 (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))))) b!4854823))

(declare-fun m!5852660 () Bool)

(assert (=> b!4854823 m!5852660))

(declare-fun m!5852662 () Bool)

(assert (=> setNonEmpty!27313 m!5852662))

(declare-fun b!4854826 () Bool)

(declare-fun e!3035194 () Bool)

(declare-fun tp!1365705 () Bool)

(assert (=> b!4854826 (= e!3035194 tp!1365705)))

(declare-fun b!4854827 () Bool)

(declare-fun e!3035193 () Bool)

(declare-fun tp!1365700 () Bool)

(assert (=> b!4854827 (= e!3035193 tp!1365700)))

(declare-fun setIsEmpty!27314 () Bool)

(declare-fun setRes!27315 () Bool)

(assert (=> setIsEmpty!27314 setRes!27315))

(declare-fun setRes!27314 () Bool)

(declare-fun tp!1365704 () Bool)

(declare-fun setNonEmpty!27314 () Bool)

(declare-fun e!3035192 () Bool)

(declare-fun setElem!27315 () Context!5910)

(assert (=> setNonEmpty!27314 (= setRes!27314 (and tp!1365704 (inv!71436 setElem!27315) e!3035192))))

(declare-fun mapValue!22546 () List!55830)

(declare-fun setRest!27314 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27314 (= (_2!33067 (h!62154 mapValue!22546)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27315 true) setRest!27314))))

(declare-fun mapNonEmpty!22546 () Bool)

(declare-fun mapRes!22546 () Bool)

(declare-fun tp!1365699 () Bool)

(declare-fun e!3035190 () Bool)

(assert (=> mapNonEmpty!22546 (= mapRes!22546 (and tp!1365699 e!3035190))))

(declare-fun mapKey!22546 () (_ BitVec 32))

(declare-fun mapRest!22546 () (Array (_ BitVec 32) List!55830))

(assert (=> mapNonEmpty!22546 (= mapRest!22536 (store mapRest!22546 mapKey!22546 mapValue!22546))))

(declare-fun b!4854829 () Bool)

(declare-fun tp!1365706 () Bool)

(assert (=> b!4854829 (= e!3035192 tp!1365706)))

(declare-fun b!4854830 () Bool)

(declare-fun tp!1365703 () Bool)

(assert (=> b!4854830 (= e!3035190 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 mapValue!22546)))) e!3035194 tp_is_empty!35479 setRes!27314 tp!1365703))))

(declare-fun condSetEmpty!27314 () Bool)

(assert (=> b!4854830 (= condSetEmpty!27314 (= (_2!33067 (h!62154 mapValue!22546)) ((as const (Array Context!5910 Bool)) false)))))

(declare-fun e!3035195 () Bool)

(declare-fun setElem!27314 () Context!5910)

(declare-fun tp!1365702 () Bool)

(declare-fun setNonEmpty!27315 () Bool)

(assert (=> setNonEmpty!27315 (= setRes!27315 (and tp!1365702 (inv!71436 setElem!27314) e!3035195))))

(declare-fun mapDefault!22546 () List!55830)

(declare-fun setRest!27315 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27315 (= (_2!33067 (h!62154 mapDefault!22546)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27314 true) setRest!27315))))

(declare-fun mapIsEmpty!22546 () Bool)

(assert (=> mapIsEmpty!22546 mapRes!22546))

(declare-fun b!4854828 () Bool)

(declare-fun tp!1365698 () Bool)

(assert (=> b!4854828 (= e!3035195 tp!1365698)))

(declare-fun condMapEmpty!22546 () Bool)

(assert (=> mapNonEmpty!22536 (= condMapEmpty!22546 (= mapRest!22536 ((as const (Array (_ BitVec 32) List!55830)) mapDefault!22546)))))

(declare-fun e!3035191 () Bool)

(assert (=> mapNonEmpty!22536 (= tp!1365491 (and e!3035191 mapRes!22546))))

(declare-fun b!4854831 () Bool)

(declare-fun tp!1365701 () Bool)

(assert (=> b!4854831 (= e!3035191 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 mapDefault!22546)))) e!3035193 tp_is_empty!35479 setRes!27315 tp!1365701))))

(declare-fun condSetEmpty!27315 () Bool)

(assert (=> b!4854831 (= condSetEmpty!27315 (= (_2!33067 (h!62154 mapDefault!22546)) ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setIsEmpty!27315 () Bool)

(assert (=> setIsEmpty!27315 setRes!27314))

(assert (= (and mapNonEmpty!22536 condMapEmpty!22546) mapIsEmpty!22546))

(assert (= (and mapNonEmpty!22536 (not condMapEmpty!22546)) mapNonEmpty!22546))

(assert (= b!4854830 b!4854826))

(assert (= (and b!4854830 condSetEmpty!27314) setIsEmpty!27315))

(assert (= (and b!4854830 (not condSetEmpty!27314)) setNonEmpty!27314))

(assert (= setNonEmpty!27314 b!4854829))

(assert (= (and mapNonEmpty!22546 ((_ is Cons!55706) mapValue!22546)) b!4854830))

(assert (= b!4854831 b!4854827))

(assert (= (and b!4854831 condSetEmpty!27315) setIsEmpty!27314))

(assert (= (and b!4854831 (not condSetEmpty!27315)) setNonEmpty!27315))

(assert (= setNonEmpty!27315 b!4854828))

(assert (= (and mapNonEmpty!22536 ((_ is Cons!55706) mapDefault!22546)) b!4854831))

(declare-fun m!5852664 () Bool)

(assert (=> setNonEmpty!27314 m!5852664))

(declare-fun m!5852666 () Bool)

(assert (=> setNonEmpty!27315 m!5852666))

(declare-fun m!5852668 () Bool)

(assert (=> b!4854830 m!5852668))

(declare-fun m!5852670 () Bool)

(assert (=> b!4854831 m!5852670))

(declare-fun m!5852672 () Bool)

(assert (=> mapNonEmpty!22546 m!5852672))

(declare-fun b!4854832 () Bool)

(declare-fun e!3035196 () Bool)

(declare-fun tp!1365707 () Bool)

(declare-fun tp!1365708 () Bool)

(assert (=> b!4854832 (= e!3035196 (and tp!1365707 tp!1365708))))

(assert (=> b!4854663 (= tp!1365521 e!3035196)))

(assert (= (and b!4854663 ((_ is Cons!55704) (exprs!3455 (_2!33064 (_1!33065 (h!62153 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921)))))))))))) b!4854832))

(declare-fun b!4854833 () Bool)

(declare-fun e!3035197 () Bool)

(declare-fun tp!1365709 () Bool)

(declare-fun tp!1365710 () Bool)

(assert (=> b!4854833 (= e!3035197 (and tp!1365709 tp!1365710))))

(assert (=> b!4854624 (= tp!1365467 e!3035197)))

(assert (= (and b!4854624 ((_ is Cons!55704) (exprs!3455 setElem!27280))) b!4854833))

(declare-fun b!4854834 () Bool)

(declare-fun e!3035198 () Bool)

(declare-fun tp!1365711 () Bool)

(declare-fun tp!1365712 () Bool)

(assert (=> b!4854834 (= e!3035198 (and tp!1365711 tp!1365712))))

(assert (=> b!4854656 (= tp!1365510 e!3035198)))

(assert (= (and b!4854656 ((_ is Cons!55704) (exprs!3455 setElem!27289))) b!4854834))

(declare-fun condSetEmpty!27316 () Bool)

(assert (=> setNonEmpty!27290 (= condSetEmpty!27316 (= setRest!27290 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27316 () Bool)

(assert (=> setNonEmpty!27290 (= tp!1365511 setRes!27316)))

(declare-fun setIsEmpty!27316 () Bool)

(assert (=> setIsEmpty!27316 setRes!27316))

(declare-fun e!3035199 () Bool)

(declare-fun tp!1365714 () Bool)

(declare-fun setNonEmpty!27316 () Bool)

(declare-fun setElem!27316 () Context!5910)

(assert (=> setNonEmpty!27316 (= setRes!27316 (and tp!1365714 (inv!71436 setElem!27316) e!3035199))))

(declare-fun setRest!27316 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27316 (= setRest!27290 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27316 true) setRest!27316))))

(declare-fun b!4854835 () Bool)

(declare-fun tp!1365713 () Bool)

(assert (=> b!4854835 (= e!3035199 tp!1365713)))

(assert (= (and setNonEmpty!27290 condSetEmpty!27316) setIsEmpty!27316))

(assert (= (and setNonEmpty!27290 (not condSetEmpty!27316)) setNonEmpty!27316))

(assert (= setNonEmpty!27316 b!4854835))

(declare-fun m!5852674 () Bool)

(assert (=> setNonEmpty!27316 m!5852674))

(declare-fun b!4854839 () Bool)

(declare-fun e!3035200 () Bool)

(declare-fun tp!1365717 () Bool)

(declare-fun tp!1365715 () Bool)

(assert (=> b!4854839 (= e!3035200 (and tp!1365717 tp!1365715))))

(assert (=> b!4854683 (= tp!1365558 e!3035200)))

(declare-fun b!4854837 () Bool)

(declare-fun tp!1365719 () Bool)

(declare-fun tp!1365716 () Bool)

(assert (=> b!4854837 (= e!3035200 (and tp!1365719 tp!1365716))))

(declare-fun b!4854838 () Bool)

(declare-fun tp!1365718 () Bool)

(assert (=> b!4854838 (= e!3035200 tp!1365718)))

(declare-fun b!4854836 () Bool)

(assert (=> b!4854836 (= e!3035200 tp_is_empty!35479)))

(assert (= (and b!4854683 ((_ is ElementMatch!13065) (_1!33064 (_1!33065 (h!62153 mapValue!22539))))) b!4854836))

(assert (= (and b!4854683 ((_ is Concat!21384) (_1!33064 (_1!33065 (h!62153 mapValue!22539))))) b!4854837))

(assert (= (and b!4854683 ((_ is Star!13065) (_1!33064 (_1!33065 (h!62153 mapValue!22539))))) b!4854838))

(assert (= (and b!4854683 ((_ is Union!13065) (_1!33064 (_1!33065 (h!62153 mapValue!22539))))) b!4854839))

(declare-fun b!4854840 () Bool)

(declare-fun e!3035201 () Bool)

(declare-fun tp!1365722 () Bool)

(assert (=> b!4854840 (= e!3035201 tp!1365722)))

(declare-fun setNonEmpty!27317 () Bool)

(declare-fun tp!1365724 () Bool)

(declare-fun setRes!27317 () Bool)

(declare-fun e!3035203 () Bool)

(declare-fun setElem!27317 () Context!5910)

(assert (=> setNonEmpty!27317 (= setRes!27317 (and tp!1365724 (inv!71436 setElem!27317) e!3035203))))

(declare-fun setRest!27317 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27317 (= (_2!33065 (h!62153 (t!363331 mapValue!22539))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27317 true) setRest!27317))))

(declare-fun b!4854841 () Bool)

(declare-fun tp!1365720 () Bool)

(assert (=> b!4854841 (= e!3035203 tp!1365720)))

(declare-fun tp!1365721 () Bool)

(declare-fun e!3035202 () Bool)

(declare-fun tp!1365723 () Bool)

(declare-fun b!4854842 () Bool)

(assert (=> b!4854842 (= e!3035202 (and tp!1365723 (inv!71436 (_2!33064 (_1!33065 (h!62153 (t!363331 mapValue!22539))))) e!3035201 tp_is_empty!35479 setRes!27317 tp!1365721))))

(declare-fun condSetEmpty!27317 () Bool)

(assert (=> b!4854842 (= condSetEmpty!27317 (= (_2!33065 (h!62153 (t!363331 mapValue!22539))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854683 (= tp!1365555 e!3035202)))

(declare-fun setIsEmpty!27317 () Bool)

(assert (=> setIsEmpty!27317 setRes!27317))

(assert (= b!4854842 b!4854840))

(assert (= (and b!4854842 condSetEmpty!27317) setIsEmpty!27317))

(assert (= (and b!4854842 (not condSetEmpty!27317)) setNonEmpty!27317))

(assert (= setNonEmpty!27317 b!4854841))

(assert (= (and b!4854683 ((_ is Cons!55705) (t!363331 mapValue!22539))) b!4854842))

(declare-fun m!5852676 () Bool)

(assert (=> setNonEmpty!27317 m!5852676))

(declare-fun m!5852678 () Bool)

(assert (=> b!4854842 m!5852678))

(declare-fun b!4854846 () Bool)

(declare-fun e!3035204 () Bool)

(declare-fun tp!1365727 () Bool)

(declare-fun tp!1365725 () Bool)

(assert (=> b!4854846 (= e!3035204 (and tp!1365727 tp!1365725))))

(assert (=> b!4854687 (= tp!1365553 e!3035204)))

(declare-fun b!4854844 () Bool)

(declare-fun tp!1365729 () Bool)

(declare-fun tp!1365726 () Bool)

(assert (=> b!4854844 (= e!3035204 (and tp!1365729 tp!1365726))))

(declare-fun b!4854845 () Bool)

(declare-fun tp!1365728 () Bool)

(assert (=> b!4854845 (= e!3035204 tp!1365728)))

(declare-fun b!4854843 () Bool)

(assert (=> b!4854843 (= e!3035204 tp_is_empty!35479)))

(assert (= (and b!4854687 ((_ is ElementMatch!13065) (_1!33064 (_1!33065 (h!62153 mapDefault!22539))))) b!4854843))

(assert (= (and b!4854687 ((_ is Concat!21384) (_1!33064 (_1!33065 (h!62153 mapDefault!22539))))) b!4854844))

(assert (= (and b!4854687 ((_ is Star!13065) (_1!33064 (_1!33065 (h!62153 mapDefault!22539))))) b!4854845))

(assert (= (and b!4854687 ((_ is Union!13065) (_1!33064 (_1!33065 (h!62153 mapDefault!22539))))) b!4854846))

(declare-fun b!4854847 () Bool)

(declare-fun e!3035205 () Bool)

(declare-fun tp!1365732 () Bool)

(assert (=> b!4854847 (= e!3035205 tp!1365732)))

(declare-fun tp!1365734 () Bool)

(declare-fun setNonEmpty!27318 () Bool)

(declare-fun setRes!27318 () Bool)

(declare-fun e!3035207 () Bool)

(declare-fun setElem!27318 () Context!5910)

(assert (=> setNonEmpty!27318 (= setRes!27318 (and tp!1365734 (inv!71436 setElem!27318) e!3035207))))

(declare-fun setRest!27318 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27318 (= (_2!33065 (h!62153 (t!363331 mapDefault!22539))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27318 true) setRest!27318))))

(declare-fun b!4854848 () Bool)

(declare-fun tp!1365730 () Bool)

(assert (=> b!4854848 (= e!3035207 tp!1365730)))

(declare-fun tp!1365733 () Bool)

(declare-fun e!3035206 () Bool)

(declare-fun b!4854849 () Bool)

(declare-fun tp!1365731 () Bool)

(assert (=> b!4854849 (= e!3035206 (and tp!1365733 (inv!71436 (_2!33064 (_1!33065 (h!62153 (t!363331 mapDefault!22539))))) e!3035205 tp_is_empty!35479 setRes!27318 tp!1365731))))

(declare-fun condSetEmpty!27318 () Bool)

(assert (=> b!4854849 (= condSetEmpty!27318 (= (_2!33065 (h!62153 (t!363331 mapDefault!22539))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854687 (= tp!1365561 e!3035206)))

(declare-fun setIsEmpty!27318 () Bool)

(assert (=> setIsEmpty!27318 setRes!27318))

(assert (= b!4854849 b!4854847))

(assert (= (and b!4854849 condSetEmpty!27318) setIsEmpty!27318))

(assert (= (and b!4854849 (not condSetEmpty!27318)) setNonEmpty!27318))

(assert (= setNonEmpty!27318 b!4854848))

(assert (= (and b!4854687 ((_ is Cons!55705) (t!363331 mapDefault!22539))) b!4854849))

(declare-fun m!5852680 () Bool)

(assert (=> setNonEmpty!27318 m!5852680))

(declare-fun m!5852682 () Bool)

(assert (=> b!4854849 m!5852682))

(declare-fun condSetEmpty!27319 () Bool)

(assert (=> setNonEmpty!27304 (= condSetEmpty!27319 (= setRest!27304 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27319 () Bool)

(assert (=> setNonEmpty!27304 (= tp!1365582 setRes!27319)))

(declare-fun setIsEmpty!27319 () Bool)

(assert (=> setIsEmpty!27319 setRes!27319))

(declare-fun e!3035208 () Bool)

(declare-fun tp!1365736 () Bool)

(declare-fun setElem!27319 () Context!5910)

(declare-fun setNonEmpty!27319 () Bool)

(assert (=> setNonEmpty!27319 (= setRes!27319 (and tp!1365736 (inv!71436 setElem!27319) e!3035208))))

(declare-fun setRest!27319 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27319 (= setRest!27304 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27319 true) setRest!27319))))

(declare-fun b!4854850 () Bool)

(declare-fun tp!1365735 () Bool)

(assert (=> b!4854850 (= e!3035208 tp!1365735)))

(assert (= (and setNonEmpty!27304 condSetEmpty!27319) setIsEmpty!27319))

(assert (= (and setNonEmpty!27304 (not condSetEmpty!27319)) setNonEmpty!27319))

(assert (= setNonEmpty!27319 b!4854850))

(declare-fun m!5852684 () Bool)

(assert (=> setNonEmpty!27319 m!5852684))

(declare-fun b!4854851 () Bool)

(declare-fun e!3035209 () Bool)

(declare-fun tp!1365737 () Bool)

(declare-fun tp!1365738 () Bool)

(assert (=> b!4854851 (= e!3035209 (and tp!1365737 tp!1365738))))

(assert (=> b!4854685 (= tp!1365552 e!3035209)))

(assert (= (and b!4854685 ((_ is Cons!55704) (exprs!3455 (_2!33064 (_1!33065 (h!62153 mapValue!22539)))))) b!4854851))

(declare-fun b!4854852 () Bool)

(declare-fun e!3035210 () Bool)

(declare-fun tp!1365739 () Bool)

(declare-fun tp!1365740 () Bool)

(assert (=> b!4854852 (= e!3035210 (and tp!1365739 tp!1365740))))

(assert (=> b!4854641 (= tp!1365492 e!3035210)))

(assert (= (and b!4854641 ((_ is Cons!55704) (exprs!3455 (_1!33066 (_1!33067 (h!62154 mapDefault!22536)))))) b!4854852))

(declare-fun b!4854853 () Bool)

(declare-fun e!3035211 () Bool)

(declare-fun tp!1365741 () Bool)

(declare-fun tp!1365742 () Bool)

(assert (=> b!4854853 (= e!3035211 (and tp!1365741 tp!1365742))))

(assert (=> b!4854690 (= tp!1365562 e!3035211)))

(assert (= (and b!4854690 ((_ is Cons!55704) (exprs!3455 setElem!27300))) b!4854853))

(declare-fun condSetEmpty!27320 () Bool)

(assert (=> setNonEmpty!27301 (= condSetEmpty!27320 (= setRest!27301 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27320 () Bool)

(assert (=> setNonEmpty!27301 (= tp!1365567 setRes!27320)))

(declare-fun setIsEmpty!27320 () Bool)

(assert (=> setIsEmpty!27320 setRes!27320))

(declare-fun e!3035212 () Bool)

(declare-fun setNonEmpty!27320 () Bool)

(declare-fun tp!1365744 () Bool)

(declare-fun setElem!27320 () Context!5910)

(assert (=> setNonEmpty!27320 (= setRes!27320 (and tp!1365744 (inv!71436 setElem!27320) e!3035212))))

(declare-fun setRest!27320 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27320 (= setRest!27301 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27320 true) setRest!27320))))

(declare-fun b!4854854 () Bool)

(declare-fun tp!1365743 () Bool)

(assert (=> b!4854854 (= e!3035212 tp!1365743)))

(assert (= (and setNonEmpty!27301 condSetEmpty!27320) setIsEmpty!27320))

(assert (= (and setNonEmpty!27301 (not condSetEmpty!27320)) setNonEmpty!27320))

(assert (= setNonEmpty!27320 b!4854854))

(declare-fun m!5852686 () Bool)

(assert (=> setNonEmpty!27320 m!5852686))

(declare-fun b!4854855 () Bool)

(declare-fun e!3035213 () Bool)

(declare-fun tp!1365745 () Bool)

(declare-fun tp!1365746 () Bool)

(assert (=> b!4854855 (= e!3035213 (and tp!1365745 tp!1365746))))

(assert (=> b!4854623 (= tp!1365469 e!3035213)))

(assert (= (and b!4854623 ((_ is Cons!55704) (exprs!3455 (_2!33064 (_1!33065 (h!62153 mapDefault!22533)))))) b!4854855))

(declare-fun b!4854870 () Bool)

(declare-fun e!3035231 () Bool)

(declare-fun e!3035229 () Bool)

(assert (=> b!4854870 (= e!3035231 e!3035229)))

(declare-fun b!4854871 () Bool)

(declare-fun e!3035226 () Bool)

(declare-fun e!3035230 () Bool)

(assert (=> b!4854871 (= e!3035226 e!3035230)))

(declare-fun b!4854872 () Bool)

(declare-fun e!3035227 () Bool)

(assert (=> b!4854872 (= e!3035230 e!3035227)))

(declare-fun b!4854873 () Bool)

(declare-fun lt!1991159 () MutLongMap!5108)

(assert (=> b!4854873 (= e!3035229 ((_ is LongMap!5108) lt!1991159))))

(assert (=> b!4854873 (= lt!1991159 (v!49592 (underlying!10412 (cache!4594 (_2!33068 (choose!35544 z!669 a!1196 cacheUp!802 cacheDown!921))))))))

(declare-fun b!4854874 () Bool)

(declare-fun lt!1991158 () MutLongMap!5107)

(assert (=> b!4854874 (= e!3035227 ((_ is LongMap!5107) lt!1991158))))

(assert (=> b!4854874 (= lt!1991158 (v!49590 (underlying!10410 (cache!4593 (_3!3296 (choose!35544 z!669 a!1196 cacheUp!802 cacheDown!921))))))))

(declare-fun b!4854875 () Bool)

(declare-fun e!3035228 () Bool)

(assert (=> b!4854875 (= e!3035228 e!3035231)))

(assert (=> d!1558249 (= true (and e!3035228 e!3035226))))

(assert (= b!4854870 b!4854873))

(assert (= (and b!4854875 ((_ is HashMap!4980) (cache!4594 (_2!33068 (choose!35544 z!669 a!1196 cacheUp!802 cacheDown!921))))) b!4854870))

(assert (= d!1558249 b!4854875))

(assert (= b!4854872 b!4854874))

(assert (= (and b!4854871 ((_ is HashMap!4979) (cache!4593 (_3!3296 (choose!35544 z!669 a!1196 cacheUp!802 cacheDown!921))))) b!4854872))

(assert (= d!1558249 b!4854871))

(declare-fun b!4854876 () Bool)

(declare-fun e!3035232 () Bool)

(declare-fun tp!1365747 () Bool)

(declare-fun tp!1365748 () Bool)

(assert (=> b!4854876 (= e!3035232 (and tp!1365747 tp!1365748))))

(assert (=> b!4854689 (= tp!1365564 e!3035232)))

(assert (= (and b!4854689 ((_ is Cons!55704) (exprs!3455 (_2!33064 (_1!33065 (h!62153 mapValue!22533)))))) b!4854876))

(declare-fun b!4854877 () Bool)

(declare-fun e!3035233 () Bool)

(declare-fun tp!1365749 () Bool)

(declare-fun tp!1365750 () Bool)

(assert (=> b!4854877 (= e!3035233 (and tp!1365749 tp!1365750))))

(assert (=> b!4854693 (= tp!1365569 e!3035233)))

(assert (= (and b!4854693 ((_ is Cons!55704) (exprs!3455 (_1!33066 (_1!33067 (h!62154 mapDefault!22532)))))) b!4854877))

(declare-fun setIsEmpty!27321 () Bool)

(declare-fun setRes!27321 () Bool)

(assert (=> setIsEmpty!27321 setRes!27321))

(declare-fun e!3035235 () Bool)

(declare-fun e!3035236 () Bool)

(declare-fun tp!1365752 () Bool)

(declare-fun b!4854878 () Bool)

(assert (=> b!4854878 (= e!3035236 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 (t!363332 (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))))))) e!3035235 tp_is_empty!35479 setRes!27321 tp!1365752))))

(declare-fun condSetEmpty!27321 () Bool)

(assert (=> b!4854878 (= condSetEmpty!27321 (= (_2!33067 (h!62154 (t!363332 (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854657 (= tp!1365512 e!3035236)))

(declare-fun b!4854879 () Bool)

(declare-fun tp!1365753 () Bool)

(assert (=> b!4854879 (= e!3035235 tp!1365753)))

(declare-fun b!4854880 () Bool)

(declare-fun e!3035234 () Bool)

(declare-fun tp!1365754 () Bool)

(assert (=> b!4854880 (= e!3035234 tp!1365754)))

(declare-fun tp!1365751 () Bool)

(declare-fun setNonEmpty!27321 () Bool)

(declare-fun setElem!27321 () Context!5910)

(assert (=> setNonEmpty!27321 (= setRes!27321 (and tp!1365751 (inv!71436 setElem!27321) e!3035234))))

(declare-fun setRest!27321 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27321 (= (_2!33067 (h!62154 (t!363332 (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27321 true) setRest!27321))))

(assert (= b!4854878 b!4854879))

(assert (= (and b!4854878 condSetEmpty!27321) setIsEmpty!27321))

(assert (= (and b!4854878 (not condSetEmpty!27321)) setNonEmpty!27321))

(assert (= setNonEmpty!27321 b!4854880))

(assert (= (and b!4854657 ((_ is Cons!55706) (t!363332 (zeroValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802))))))))) b!4854878))

(declare-fun m!5852688 () Bool)

(assert (=> b!4854878 m!5852688))

(declare-fun m!5852690 () Bool)

(assert (=> setNonEmpty!27321 m!5852690))

(declare-fun b!4854881 () Bool)

(declare-fun e!3035237 () Bool)

(declare-fun tp!1365755 () Bool)

(declare-fun tp!1365756 () Bool)

(assert (=> b!4854881 (= e!3035237 (and tp!1365755 tp!1365756))))

(assert (=> b!4854661 (= tp!1365517 e!3035237)))

(assert (= (and b!4854661 ((_ is Cons!55704) (exprs!3455 (_1!33066 (_1!33067 (h!62154 (minValue!5405 (v!49591 (underlying!10411 (v!49592 (underlying!10412 (cache!4594 cacheUp!802)))))))))))) b!4854881))

(declare-fun condSetEmpty!27322 () Bool)

(assert (=> setNonEmpty!27286 (= condSetEmpty!27322 (= setRest!27286 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27322 () Bool)

(assert (=> setNonEmpty!27286 (= tp!1365494 setRes!27322)))

(declare-fun setIsEmpty!27322 () Bool)

(assert (=> setIsEmpty!27322 setRes!27322))

(declare-fun e!3035238 () Bool)

(declare-fun setElem!27322 () Context!5910)

(declare-fun tp!1365758 () Bool)

(declare-fun setNonEmpty!27322 () Bool)

(assert (=> setNonEmpty!27322 (= setRes!27322 (and tp!1365758 (inv!71436 setElem!27322) e!3035238))))

(declare-fun setRest!27322 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27322 (= setRest!27286 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27322 true) setRest!27322))))

(declare-fun b!4854882 () Bool)

(declare-fun tp!1365757 () Bool)

(assert (=> b!4854882 (= e!3035238 tp!1365757)))

(assert (= (and setNonEmpty!27286 condSetEmpty!27322) setIsEmpty!27322))

(assert (= (and setNonEmpty!27286 (not condSetEmpty!27322)) setNonEmpty!27322))

(assert (= setNonEmpty!27322 b!4854882))

(declare-fun m!5852692 () Bool)

(assert (=> setNonEmpty!27322 m!5852692))

(declare-fun b!4854886 () Bool)

(declare-fun e!3035239 () Bool)

(declare-fun tp!1365761 () Bool)

(declare-fun tp!1365759 () Bool)

(assert (=> b!4854886 (= e!3035239 (and tp!1365761 tp!1365759))))

(assert (=> b!4854665 (= tp!1365522 e!3035239)))

(declare-fun b!4854884 () Bool)

(declare-fun tp!1365763 () Bool)

(declare-fun tp!1365760 () Bool)

(assert (=> b!4854884 (= e!3035239 (and tp!1365763 tp!1365760))))

(declare-fun b!4854885 () Bool)

(declare-fun tp!1365762 () Bool)

(assert (=> b!4854885 (= e!3035239 tp!1365762)))

(declare-fun b!4854883 () Bool)

(assert (=> b!4854883 (= e!3035239 tp_is_empty!35479)))

(assert (= (and b!4854665 ((_ is ElementMatch!13065) (_1!33064 (_1!33065 (h!62153 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))))) b!4854883))

(assert (= (and b!4854665 ((_ is Concat!21384) (_1!33064 (_1!33065 (h!62153 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))))) b!4854884))

(assert (= (and b!4854665 ((_ is Star!13065) (_1!33064 (_1!33065 (h!62153 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))))) b!4854885))

(assert (= (and b!4854665 ((_ is Union!13065) (_1!33064 (_1!33065 (h!62153 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))))) b!4854886))

(declare-fun b!4854887 () Bool)

(declare-fun e!3035240 () Bool)

(declare-fun tp!1365766 () Bool)

(assert (=> b!4854887 (= e!3035240 tp!1365766)))

(declare-fun tp!1365768 () Bool)

(declare-fun setElem!27323 () Context!5910)

(declare-fun setNonEmpty!27323 () Bool)

(declare-fun setRes!27323 () Bool)

(declare-fun e!3035242 () Bool)

(assert (=> setNonEmpty!27323 (= setRes!27323 (and tp!1365768 (inv!71436 setElem!27323) e!3035242))))

(declare-fun setRest!27323 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27323 (= (_2!33065 (h!62153 (t!363331 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27323 true) setRest!27323))))

(declare-fun b!4854888 () Bool)

(declare-fun tp!1365764 () Bool)

(assert (=> b!4854888 (= e!3035242 tp!1365764)))

(declare-fun e!3035241 () Bool)

(declare-fun tp!1365765 () Bool)

(declare-fun tp!1365767 () Bool)

(declare-fun b!4854889 () Bool)

(assert (=> b!4854889 (= e!3035241 (and tp!1365767 (inv!71436 (_2!33064 (_1!33065 (h!62153 (t!363331 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))))) e!3035240 tp_is_empty!35479 setRes!27323 tp!1365765))))

(declare-fun condSetEmpty!27323 () Bool)

(assert (=> b!4854889 (= condSetEmpty!27323 (= (_2!33065 (h!62153 (t!363331 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854665 (= tp!1365520 e!3035241)))

(declare-fun setIsEmpty!27323 () Bool)

(assert (=> setIsEmpty!27323 setRes!27323))

(assert (= b!4854889 b!4854887))

(assert (= (and b!4854889 condSetEmpty!27323) setIsEmpty!27323))

(assert (= (and b!4854889 (not condSetEmpty!27323)) setNonEmpty!27323))

(assert (= setNonEmpty!27323 b!4854888))

(assert (= (and b!4854665 ((_ is Cons!55705) (t!363331 (zeroValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))) b!4854889))

(declare-fun m!5852694 () Bool)

(assert (=> setNonEmpty!27323 m!5852694))

(declare-fun m!5852696 () Bool)

(assert (=> b!4854889 m!5852696))

(declare-fun mapNonEmpty!22547 () Bool)

(declare-fun mapRes!22547 () Bool)

(declare-fun tp!1365774 () Bool)

(declare-fun e!3035247 () Bool)

(assert (=> mapNonEmpty!22547 (= mapRes!22547 (and tp!1365774 e!3035247))))

(declare-fun mapValue!22547 () List!55829)

(declare-fun mapKey!22547 () (_ BitVec 32))

(declare-fun mapRest!22547 () (Array (_ BitVec 32) List!55829))

(assert (=> mapNonEmpty!22547 (= mapRest!22539 (store mapRest!22547 mapKey!22547 mapValue!22547))))

(declare-fun mapIsEmpty!22547 () Bool)

(assert (=> mapIsEmpty!22547 mapRes!22547))

(declare-fun tp!1365773 () Bool)

(declare-fun tp!1365776 () Bool)

(declare-fun e!3035243 () Bool)

(declare-fun b!4854890 () Bool)

(declare-fun setRes!27325 () Bool)

(assert (=> b!4854890 (= e!3035247 (and tp!1365776 (inv!71436 (_2!33064 (_1!33065 (h!62153 mapValue!22547)))) e!3035243 tp_is_empty!35479 setRes!27325 tp!1365773))))

(declare-fun condSetEmpty!27325 () Bool)

(assert (=> b!4854890 (= condSetEmpty!27325 (= (_2!33065 (h!62153 mapValue!22547)) ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setElem!27325 () Context!5910)

(declare-fun tp!1365772 () Bool)

(declare-fun setNonEmpty!27325 () Bool)

(declare-fun e!3035245 () Bool)

(assert (=> setNonEmpty!27325 (= setRes!27325 (and tp!1365772 (inv!71436 setElem!27325) e!3035245))))

(declare-fun setRest!27325 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27325 (= (_2!33065 (h!62153 mapValue!22547)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27325 true) setRest!27325))))

(declare-fun setIsEmpty!27324 () Bool)

(declare-fun setRes!27324 () Bool)

(assert (=> setIsEmpty!27324 setRes!27324))

(declare-fun b!4854891 () Bool)

(declare-fun tp!1365777 () Bool)

(assert (=> b!4854891 (= e!3035245 tp!1365777)))

(declare-fun setIsEmpty!27325 () Bool)

(assert (=> setIsEmpty!27325 setRes!27325))

(declare-fun b!4854892 () Bool)

(declare-fun tp!1365770 () Bool)

(assert (=> b!4854892 (= e!3035243 tp!1365770)))

(declare-fun b!4854893 () Bool)

(declare-fun e!3035244 () Bool)

(declare-fun tp!1365778 () Bool)

(assert (=> b!4854893 (= e!3035244 tp!1365778)))

(declare-fun condMapEmpty!22547 () Bool)

(declare-fun mapDefault!22547 () List!55829)

(assert (=> mapNonEmpty!22539 (= condMapEmpty!22547 (= mapRest!22539 ((as const (Array (_ BitVec 32) List!55829)) mapDefault!22547)))))

(declare-fun e!3035246 () Bool)

(assert (=> mapNonEmpty!22539 (= tp!1365556 (and e!3035246 mapRes!22547))))

(declare-fun tp!1365769 () Bool)

(declare-fun e!3035248 () Bool)

(declare-fun setElem!27324 () Context!5910)

(declare-fun setNonEmpty!27324 () Bool)

(assert (=> setNonEmpty!27324 (= setRes!27324 (and tp!1365769 (inv!71436 setElem!27324) e!3035248))))

(declare-fun setRest!27324 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27324 (= (_2!33065 (h!62153 mapDefault!22547)) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27324 true) setRest!27324))))

(declare-fun b!4854894 () Bool)

(declare-fun tp!1365771 () Bool)

(declare-fun tp!1365779 () Bool)

(assert (=> b!4854894 (= e!3035246 (and tp!1365771 (inv!71436 (_2!33064 (_1!33065 (h!62153 mapDefault!22547)))) e!3035244 tp_is_empty!35479 setRes!27324 tp!1365779))))

(declare-fun condSetEmpty!27324 () Bool)

(assert (=> b!4854894 (= condSetEmpty!27324 (= (_2!33065 (h!62153 mapDefault!22547)) ((as const (Array Context!5910 Bool)) false)))))

(declare-fun b!4854895 () Bool)

(declare-fun tp!1365775 () Bool)

(assert (=> b!4854895 (= e!3035248 tp!1365775)))

(assert (= (and mapNonEmpty!22539 condMapEmpty!22547) mapIsEmpty!22547))

(assert (= (and mapNonEmpty!22539 (not condMapEmpty!22547)) mapNonEmpty!22547))

(assert (= b!4854890 b!4854892))

(assert (= (and b!4854890 condSetEmpty!27325) setIsEmpty!27325))

(assert (= (and b!4854890 (not condSetEmpty!27325)) setNonEmpty!27325))

(assert (= setNonEmpty!27325 b!4854891))

(assert (= (and mapNonEmpty!22547 ((_ is Cons!55705) mapValue!22547)) b!4854890))

(assert (= b!4854894 b!4854893))

(assert (= (and b!4854894 condSetEmpty!27324) setIsEmpty!27324))

(assert (= (and b!4854894 (not condSetEmpty!27324)) setNonEmpty!27324))

(assert (= setNonEmpty!27324 b!4854895))

(assert (= (and mapNonEmpty!22539 ((_ is Cons!55705) mapDefault!22547)) b!4854894))

(declare-fun m!5852698 () Bool)

(assert (=> setNonEmpty!27324 m!5852698))

(declare-fun m!5852700 () Bool)

(assert (=> b!4854890 m!5852700))

(declare-fun m!5852702 () Bool)

(assert (=> mapNonEmpty!22547 m!5852702))

(declare-fun m!5852704 () Bool)

(assert (=> b!4854894 m!5852704))

(declare-fun m!5852706 () Bool)

(assert (=> setNonEmpty!27325 m!5852706))

(declare-fun b!4854899 () Bool)

(declare-fun e!3035249 () Bool)

(declare-fun tp!1365782 () Bool)

(declare-fun tp!1365780 () Bool)

(assert (=> b!4854899 (= e!3035249 (and tp!1365782 tp!1365780))))

(assert (=> b!4854668 (= tp!1365527 e!3035249)))

(declare-fun b!4854897 () Bool)

(declare-fun tp!1365784 () Bool)

(declare-fun tp!1365781 () Bool)

(assert (=> b!4854897 (= e!3035249 (and tp!1365784 tp!1365781))))

(declare-fun b!4854898 () Bool)

(declare-fun tp!1365783 () Bool)

(assert (=> b!4854898 (= e!3035249 tp!1365783)))

(declare-fun b!4854896 () Bool)

(assert (=> b!4854896 (= e!3035249 tp_is_empty!35479)))

(assert (= (and b!4854668 ((_ is ElementMatch!13065) (_1!33064 (_1!33065 (h!62153 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))))) b!4854896))

(assert (= (and b!4854668 ((_ is Concat!21384) (_1!33064 (_1!33065 (h!62153 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))))) b!4854897))

(assert (= (and b!4854668 ((_ is Star!13065) (_1!33064 (_1!33065 (h!62153 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))))) b!4854898))

(assert (= (and b!4854668 ((_ is Union!13065) (_1!33064 (_1!33065 (h!62153 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))))) b!4854899))

(declare-fun b!4854900 () Bool)

(declare-fun e!3035250 () Bool)

(declare-fun tp!1365787 () Bool)

(assert (=> b!4854900 (= e!3035250 tp!1365787)))

(declare-fun e!3035252 () Bool)

(declare-fun setNonEmpty!27326 () Bool)

(declare-fun tp!1365789 () Bool)

(declare-fun setRes!27326 () Bool)

(declare-fun setElem!27326 () Context!5910)

(assert (=> setNonEmpty!27326 (= setRes!27326 (and tp!1365789 (inv!71436 setElem!27326) e!3035252))))

(declare-fun setRest!27326 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27326 (= (_2!33065 (h!62153 (t!363331 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27326 true) setRest!27326))))

(declare-fun b!4854901 () Bool)

(declare-fun tp!1365785 () Bool)

(assert (=> b!4854901 (= e!3035252 tp!1365785)))

(declare-fun b!4854902 () Bool)

(declare-fun tp!1365786 () Bool)

(declare-fun tp!1365788 () Bool)

(declare-fun e!3035251 () Bool)

(assert (=> b!4854902 (= e!3035251 (and tp!1365788 (inv!71436 (_2!33064 (_1!33065 (h!62153 (t!363331 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))))) e!3035250 tp_is_empty!35479 setRes!27326 tp!1365786))))

(declare-fun condSetEmpty!27326 () Bool)

(assert (=> b!4854902 (= condSetEmpty!27326 (= (_2!33065 (h!62153 (t!363331 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854668 (= tp!1365525 e!3035251)))

(declare-fun setIsEmpty!27326 () Bool)

(assert (=> setIsEmpty!27326 setRes!27326))

(assert (= b!4854902 b!4854900))

(assert (= (and b!4854902 condSetEmpty!27326) setIsEmpty!27326))

(assert (= (and b!4854902 (not condSetEmpty!27326)) setNonEmpty!27326))

(assert (= setNonEmpty!27326 b!4854901))

(assert (= (and b!4854668 ((_ is Cons!55705) (t!363331 (minValue!5404 (v!49589 (underlying!10409 (v!49590 (underlying!10410 (cache!4593 cacheDown!921))))))))) b!4854902))

(declare-fun m!5852708 () Bool)

(assert (=> setNonEmpty!27326 m!5852708))

(declare-fun m!5852710 () Bool)

(assert (=> b!4854902 m!5852710))

(declare-fun b!4854903 () Bool)

(declare-fun e!3035253 () Bool)

(declare-fun tp!1365790 () Bool)

(declare-fun tp!1365791 () Bool)

(assert (=> b!4854903 (= e!3035253 (and tp!1365790 tp!1365791))))

(assert (=> b!4854659 (= tp!1365514 e!3035253)))

(assert (= (and b!4854659 ((_ is Cons!55704) (exprs!3455 setElem!27290))) b!4854903))

(declare-fun condSetEmpty!27327 () Bool)

(assert (=> setNonEmpty!27291 (= condSetEmpty!27327 (= setRest!27291 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27327 () Bool)

(assert (=> setNonEmpty!27291 (= tp!1365515 setRes!27327)))

(declare-fun setIsEmpty!27327 () Bool)

(assert (=> setIsEmpty!27327 setRes!27327))

(declare-fun setNonEmpty!27327 () Bool)

(declare-fun e!3035254 () Bool)

(declare-fun setElem!27327 () Context!5910)

(declare-fun tp!1365793 () Bool)

(assert (=> setNonEmpty!27327 (= setRes!27327 (and tp!1365793 (inv!71436 setElem!27327) e!3035254))))

(declare-fun setRest!27327 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27327 (= setRest!27291 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27327 true) setRest!27327))))

(declare-fun b!4854904 () Bool)

(declare-fun tp!1365792 () Bool)

(assert (=> b!4854904 (= e!3035254 tp!1365792)))

(assert (= (and setNonEmpty!27291 condSetEmpty!27327) setIsEmpty!27327))

(assert (= (and setNonEmpty!27291 (not condSetEmpty!27327)) setNonEmpty!27327))

(assert (= setNonEmpty!27327 b!4854904))

(declare-fun m!5852712 () Bool)

(assert (=> setNonEmpty!27327 m!5852712))

(declare-fun condSetEmpty!27328 () Bool)

(assert (=> setNonEmpty!27285 (= condSetEmpty!27328 (= setRest!27285 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27328 () Bool)

(assert (=> setNonEmpty!27285 (= tp!1365496 setRes!27328)))

(declare-fun setIsEmpty!27328 () Bool)

(assert (=> setIsEmpty!27328 setRes!27328))

(declare-fun tp!1365795 () Bool)

(declare-fun setNonEmpty!27328 () Bool)

(declare-fun e!3035255 () Bool)

(declare-fun setElem!27328 () Context!5910)

(assert (=> setNonEmpty!27328 (= setRes!27328 (and tp!1365795 (inv!71436 setElem!27328) e!3035255))))

(declare-fun setRest!27328 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27328 (= setRest!27285 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27328 true) setRest!27328))))

(declare-fun b!4854905 () Bool)

(declare-fun tp!1365794 () Bool)

(assert (=> b!4854905 (= e!3035255 tp!1365794)))

(assert (= (and setNonEmpty!27285 condSetEmpty!27328) setIsEmpty!27328))

(assert (= (and setNonEmpty!27285 (not condSetEmpty!27328)) setNonEmpty!27328))

(assert (= setNonEmpty!27328 b!4854905))

(declare-fun m!5852714 () Bool)

(assert (=> setNonEmpty!27328 m!5852714))

(declare-fun condSetEmpty!27329 () Bool)

(assert (=> setNonEmpty!27280 (= condSetEmpty!27329 (= setRest!27280 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27329 () Bool)

(assert (=> setNonEmpty!27280 (= tp!1365471 setRes!27329)))

(declare-fun setIsEmpty!27329 () Bool)

(assert (=> setIsEmpty!27329 setRes!27329))

(declare-fun setNonEmpty!27329 () Bool)

(declare-fun e!3035256 () Bool)

(declare-fun setElem!27329 () Context!5910)

(declare-fun tp!1365797 () Bool)

(assert (=> setNonEmpty!27329 (= setRes!27329 (and tp!1365797 (inv!71436 setElem!27329) e!3035256))))

(declare-fun setRest!27329 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27329 (= setRest!27280 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27329 true) setRest!27329))))

(declare-fun b!4854906 () Bool)

(declare-fun tp!1365796 () Bool)

(assert (=> b!4854906 (= e!3035256 tp!1365796)))

(assert (= (and setNonEmpty!27280 condSetEmpty!27329) setIsEmpty!27329))

(assert (= (and setNonEmpty!27280 (not condSetEmpty!27329)) setNonEmpty!27329))

(assert (= setNonEmpty!27329 b!4854906))

(declare-fun m!5852716 () Bool)

(assert (=> setNonEmpty!27329 m!5852716))

(declare-fun b!4854910 () Bool)

(declare-fun e!3035257 () Bool)

(declare-fun tp!1365800 () Bool)

(declare-fun tp!1365798 () Bool)

(assert (=> b!4854910 (= e!3035257 (and tp!1365800 tp!1365798))))

(assert (=> b!4854625 (= tp!1365470 e!3035257)))

(declare-fun b!4854908 () Bool)

(declare-fun tp!1365802 () Bool)

(declare-fun tp!1365799 () Bool)

(assert (=> b!4854908 (= e!3035257 (and tp!1365802 tp!1365799))))

(declare-fun b!4854909 () Bool)

(declare-fun tp!1365801 () Bool)

(assert (=> b!4854909 (= e!3035257 tp!1365801)))

(declare-fun b!4854907 () Bool)

(assert (=> b!4854907 (= e!3035257 tp_is_empty!35479)))

(assert (= (and b!4854625 ((_ is ElementMatch!13065) (_1!33064 (_1!33065 (h!62153 mapDefault!22533))))) b!4854907))

(assert (= (and b!4854625 ((_ is Concat!21384) (_1!33064 (_1!33065 (h!62153 mapDefault!22533))))) b!4854908))

(assert (= (and b!4854625 ((_ is Star!13065) (_1!33064 (_1!33065 (h!62153 mapDefault!22533))))) b!4854909))

(assert (= (and b!4854625 ((_ is Union!13065) (_1!33064 (_1!33065 (h!62153 mapDefault!22533))))) b!4854910))

(declare-fun b!4854911 () Bool)

(declare-fun e!3035258 () Bool)

(declare-fun tp!1365805 () Bool)

(assert (=> b!4854911 (= e!3035258 tp!1365805)))

(declare-fun e!3035260 () Bool)

(declare-fun tp!1365807 () Bool)

(declare-fun setNonEmpty!27330 () Bool)

(declare-fun setElem!27330 () Context!5910)

(declare-fun setRes!27330 () Bool)

(assert (=> setNonEmpty!27330 (= setRes!27330 (and tp!1365807 (inv!71436 setElem!27330) e!3035260))))

(declare-fun setRest!27330 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27330 (= (_2!33065 (h!62153 (t!363331 mapDefault!22533))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27330 true) setRest!27330))))

(declare-fun b!4854912 () Bool)

(declare-fun tp!1365803 () Bool)

(assert (=> b!4854912 (= e!3035260 tp!1365803)))

(declare-fun e!3035259 () Bool)

(declare-fun tp!1365806 () Bool)

(declare-fun tp!1365804 () Bool)

(declare-fun b!4854913 () Bool)

(assert (=> b!4854913 (= e!3035259 (and tp!1365806 (inv!71436 (_2!33064 (_1!33065 (h!62153 (t!363331 mapDefault!22533))))) e!3035258 tp_is_empty!35479 setRes!27330 tp!1365804))))

(declare-fun condSetEmpty!27330 () Bool)

(assert (=> b!4854913 (= condSetEmpty!27330 (= (_2!33065 (h!62153 (t!363331 mapDefault!22533))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854625 (= tp!1365468 e!3035259)))

(declare-fun setIsEmpty!27330 () Bool)

(assert (=> setIsEmpty!27330 setRes!27330))

(assert (= b!4854913 b!4854911))

(assert (= (and b!4854913 condSetEmpty!27330) setIsEmpty!27330))

(assert (= (and b!4854913 (not condSetEmpty!27330)) setNonEmpty!27330))

(assert (= setNonEmpty!27330 b!4854912))

(assert (= (and b!4854625 ((_ is Cons!55705) (t!363331 mapDefault!22533))) b!4854913))

(declare-fun m!5852718 () Bool)

(assert (=> setNonEmpty!27330 m!5852718))

(declare-fun m!5852720 () Bool)

(assert (=> b!4854913 m!5852720))

(declare-fun b!4854914 () Bool)

(declare-fun e!3035261 () Bool)

(declare-fun tp!1365808 () Bool)

(declare-fun tp!1365809 () Bool)

(assert (=> b!4854914 (= e!3035261 (and tp!1365808 tp!1365809))))

(assert (=> b!4854643 (= tp!1365498 e!3035261)))

(assert (= (and b!4854643 ((_ is Cons!55704) (exprs!3455 setElem!27286))) b!4854914))

(declare-fun condSetEmpty!27331 () Bool)

(assert (=> setNonEmpty!27292 (= condSetEmpty!27331 (= setRest!27292 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27331 () Bool)

(assert (=> setNonEmpty!27292 (= tp!1365523 setRes!27331)))

(declare-fun setIsEmpty!27331 () Bool)

(assert (=> setIsEmpty!27331 setRes!27331))

(declare-fun e!3035262 () Bool)

(declare-fun setElem!27331 () Context!5910)

(declare-fun setNonEmpty!27331 () Bool)

(declare-fun tp!1365811 () Bool)

(assert (=> setNonEmpty!27331 (= setRes!27331 (and tp!1365811 (inv!71436 setElem!27331) e!3035262))))

(declare-fun setRest!27331 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27331 (= setRest!27292 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27331 true) setRest!27331))))

(declare-fun b!4854915 () Bool)

(declare-fun tp!1365810 () Bool)

(assert (=> b!4854915 (= e!3035262 tp!1365810)))

(assert (= (and setNonEmpty!27292 condSetEmpty!27331) setIsEmpty!27331))

(assert (= (and setNonEmpty!27292 (not condSetEmpty!27331)) setNonEmpty!27331))

(assert (= setNonEmpty!27331 b!4854915))

(declare-fun m!5852722 () Bool)

(assert (=> setNonEmpty!27331 m!5852722))

(declare-fun condSetEmpty!27332 () Bool)

(assert (=> setNonEmpty!27293 (= condSetEmpty!27332 (= setRest!27293 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27332 () Bool)

(assert (=> setNonEmpty!27293 (= tp!1365528 setRes!27332)))

(declare-fun setIsEmpty!27332 () Bool)

(assert (=> setIsEmpty!27332 setRes!27332))

(declare-fun e!3035263 () Bool)

(declare-fun setNonEmpty!27332 () Bool)

(declare-fun tp!1365813 () Bool)

(declare-fun setElem!27332 () Context!5910)

(assert (=> setNonEmpty!27332 (= setRes!27332 (and tp!1365813 (inv!71436 setElem!27332) e!3035263))))

(declare-fun setRest!27332 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27332 (= setRest!27293 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27332 true) setRest!27332))))

(declare-fun b!4854916 () Bool)

(declare-fun tp!1365812 () Bool)

(assert (=> b!4854916 (= e!3035263 tp!1365812)))

(assert (= (and setNonEmpty!27293 condSetEmpty!27332) setIsEmpty!27332))

(assert (= (and setNonEmpty!27293 (not condSetEmpty!27332)) setNonEmpty!27332))

(assert (= setNonEmpty!27332 b!4854916))

(declare-fun m!5852724 () Bool)

(assert (=> setNonEmpty!27332 m!5852724))

(declare-fun condSetEmpty!27333 () Bool)

(assert (=> setNonEmpty!27299 (= condSetEmpty!27333 (= setRest!27299 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27333 () Bool)

(assert (=> setNonEmpty!27299 (= tp!1365554 setRes!27333)))

(declare-fun setIsEmpty!27333 () Bool)

(assert (=> setIsEmpty!27333 setRes!27333))

(declare-fun setNonEmpty!27333 () Bool)

(declare-fun setElem!27333 () Context!5910)

(declare-fun e!3035264 () Bool)

(declare-fun tp!1365815 () Bool)

(assert (=> setNonEmpty!27333 (= setRes!27333 (and tp!1365815 (inv!71436 setElem!27333) e!3035264))))

(declare-fun setRest!27333 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27333 (= setRest!27299 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27333 true) setRest!27333))))

(declare-fun b!4854917 () Bool)

(declare-fun tp!1365814 () Bool)

(assert (=> b!4854917 (= e!3035264 tp!1365814)))

(assert (= (and setNonEmpty!27299 condSetEmpty!27333) setIsEmpty!27333))

(assert (= (and setNonEmpty!27299 (not condSetEmpty!27333)) setNonEmpty!27333))

(assert (= setNonEmpty!27333 b!4854917))

(declare-fun m!5852726 () Bool)

(assert (=> setNonEmpty!27333 m!5852726))

(declare-fun b!4854918 () Bool)

(declare-fun e!3035265 () Bool)

(declare-fun tp!1365816 () Bool)

(declare-fun tp!1365817 () Bool)

(assert (=> b!4854918 (= e!3035265 (and tp!1365816 tp!1365817))))

(assert (=> b!4854684 (= tp!1365559 e!3035265)))

(assert (= (and b!4854684 ((_ is Cons!55704) (exprs!3455 setElem!27299))) b!4854918))

(declare-fun b!4854919 () Bool)

(declare-fun e!3035266 () Bool)

(declare-fun tp!1365818 () Bool)

(declare-fun tp!1365819 () Bool)

(assert (=> b!4854919 (= e!3035266 (and tp!1365818 tp!1365819))))

(assert (=> b!4854655 (= tp!1365509 e!3035266)))

(assert (= (and b!4854655 ((_ is Cons!55704) (exprs!3455 (_1!33066 (_1!33067 (h!62154 mapValue!22532)))))) b!4854919))

(declare-fun setIsEmpty!27334 () Bool)

(declare-fun setRes!27334 () Bool)

(assert (=> setIsEmpty!27334 setRes!27334))

(declare-fun e!3035268 () Bool)

(declare-fun b!4854920 () Bool)

(declare-fun tp!1365821 () Bool)

(declare-fun e!3035269 () Bool)

(assert (=> b!4854920 (= e!3035269 (and (inv!71436 (_1!33066 (_1!33067 (h!62154 (t!363332 mapDefault!22536))))) e!3035268 tp_is_empty!35479 setRes!27334 tp!1365821))))

(declare-fun condSetEmpty!27334 () Bool)

(assert (=> b!4854920 (= condSetEmpty!27334 (= (_2!33067 (h!62154 (t!363332 mapDefault!22536))) ((as const (Array Context!5910 Bool)) false)))))

(assert (=> b!4854645 (= tp!1365493 e!3035269)))

(declare-fun b!4854921 () Bool)

(declare-fun tp!1365822 () Bool)

(assert (=> b!4854921 (= e!3035268 tp!1365822)))

(declare-fun b!4854922 () Bool)

(declare-fun e!3035267 () Bool)

(declare-fun tp!1365823 () Bool)

(assert (=> b!4854922 (= e!3035267 tp!1365823)))

(declare-fun tp!1365820 () Bool)

(declare-fun setElem!27334 () Context!5910)

(declare-fun setNonEmpty!27334 () Bool)

(assert (=> setNonEmpty!27334 (= setRes!27334 (and tp!1365820 (inv!71436 setElem!27334) e!3035267))))

(declare-fun setRest!27334 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27334 (= (_2!33067 (h!62154 (t!363332 mapDefault!22536))) ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27334 true) setRest!27334))))

(assert (= b!4854920 b!4854921))

(assert (= (and b!4854920 condSetEmpty!27334) setIsEmpty!27334))

(assert (= (and b!4854920 (not condSetEmpty!27334)) setNonEmpty!27334))

(assert (= setNonEmpty!27334 b!4854922))

(assert (= (and b!4854645 ((_ is Cons!55706) (t!363332 mapDefault!22536))) b!4854920))

(declare-fun m!5852728 () Bool)

(assert (=> b!4854920 m!5852728))

(declare-fun m!5852730 () Bool)

(assert (=> setNonEmpty!27334 m!5852730))

(declare-fun condSetEmpty!27335 () Bool)

(assert (=> setNonEmpty!27298 (= condSetEmpty!27335 (= setRest!27298 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27335 () Bool)

(assert (=> setNonEmpty!27298 (= tp!1365551 setRes!27335)))

(declare-fun setIsEmpty!27335 () Bool)

(assert (=> setIsEmpty!27335 setRes!27335))

(declare-fun setNonEmpty!27335 () Bool)

(declare-fun e!3035270 () Bool)

(declare-fun tp!1365825 () Bool)

(declare-fun setElem!27335 () Context!5910)

(assert (=> setNonEmpty!27335 (= setRes!27335 (and tp!1365825 (inv!71436 setElem!27335) e!3035270))))

(declare-fun setRest!27335 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27335 (= setRest!27298 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27335 true) setRest!27335))))

(declare-fun b!4854923 () Bool)

(declare-fun tp!1365824 () Bool)

(assert (=> b!4854923 (= e!3035270 tp!1365824)))

(assert (= (and setNonEmpty!27298 condSetEmpty!27335) setIsEmpty!27335))

(assert (= (and setNonEmpty!27298 (not condSetEmpty!27335)) setNonEmpty!27335))

(assert (= setNonEmpty!27335 b!4854923))

(declare-fun m!5852732 () Bool)

(assert (=> setNonEmpty!27335 m!5852732))

(declare-fun condSetEmpty!27336 () Bool)

(assert (=> setNonEmpty!27289 (= condSetEmpty!27336 (= setRest!27289 ((as const (Array Context!5910 Bool)) false)))))

(declare-fun setRes!27336 () Bool)

(assert (=> setNonEmpty!27289 (= tp!1365507 setRes!27336)))

(declare-fun setIsEmpty!27336 () Bool)

(assert (=> setIsEmpty!27336 setRes!27336))

(declare-fun tp!1365827 () Bool)

(declare-fun e!3035271 () Bool)

(declare-fun setNonEmpty!27336 () Bool)

(declare-fun setElem!27336 () Context!5910)

(assert (=> setNonEmpty!27336 (= setRes!27336 (and tp!1365827 (inv!71436 setElem!27336) e!3035271))))

(declare-fun setRest!27336 () (InoxSet Context!5910))

(assert (=> setNonEmpty!27336 (= setRest!27289 ((_ map or) (store ((as const (Array Context!5910 Bool)) false) setElem!27336 true) setRest!27336))))

(declare-fun b!4854924 () Bool)

(declare-fun tp!1365826 () Bool)

(assert (=> b!4854924 (= e!3035271 tp!1365826)))

(assert (= (and setNonEmpty!27289 condSetEmpty!27336) setIsEmpty!27336))

(assert (= (and setNonEmpty!27289 (not condSetEmpty!27336)) setNonEmpty!27336))

(assert (= setNonEmpty!27336 b!4854924))

(declare-fun m!5852734 () Bool)

(assert (=> setNonEmpty!27336 m!5852734))

(declare-fun b_lambda!193235 () Bool)

(assert (= b_lambda!193233 (or d!1558267 b_lambda!193235)))

(declare-fun bs!1173625 () Bool)

(declare-fun d!1558333 () Bool)

(assert (= bs!1173625 (and d!1558333 d!1558267)))

(declare-fun validRegex!5861 (Regex!13065) Bool)

(assert (=> bs!1173625 (= (dynLambda!22387 lambda!243047 (h!62152 (exprs!3455 setElem!27277))) (validRegex!5861 (h!62152 (exprs!3455 setElem!27277))))))

(declare-fun m!5852736 () Bool)

(assert (=> bs!1173625 m!5852736))

(assert (=> b!4854709 d!1558333))

(check-sat (not b!4854905) (not b!4854906) (not b!4854894) (not d!1558329) b_and!342181 (not b!4854878) (not b!4854818) (not d!1558287) (not d!1558281) b_and!342187 (not b!4854797) (not setNonEmpty!27307) (not b!4854924) (not b!4854877) (not b!4854747) (not b!4854920) (not b!4854880) (not b!4854889) (not b!4854891) (not b!4854898) (not setNonEmpty!27308) (not b!4854918) (not b!4854780) (not b!4854805) (not b!4854847) (not setNonEmpty!27318) (not b!4854890) (not b!4854778) (not setNonEmpty!27311) (not b!4854777) (not b!4854916) (not b!4854841) (not mapNonEmpty!22544) (not b!4854776) (not b!4854831) (not setNonEmpty!27335) (not b!4854801) (not b!4854827) (not b!4854899) (not d!1558315) (not b_next!131153) (not b!4854826) (not d!1558279) (not setNonEmpty!27327) (not b!4854911) (not b!4854917) (not d!1558277) (not b!4854908) (not b!4854912) tp_is_empty!35479 (not b!4854710) (not setNonEmpty!27330) (not b!4854817) (not d!1558301) (not setNonEmpty!27312) (not setNonEmpty!27333) (not b!4854915) (not d!1558317) (not b!4854879) (not b!4854814) (not b!4854914) (not b!4854909) (not d!1558297) (not b!4854756) (not d!1558285) (not setNonEmpty!27328) (not b!4854882) (not b!4854887) (not b!4854852) (not b!4854844) (not b!4854838) (not b!4854771) (not b!4854884) (not b!4854845) (not b!4854848) (not b!4854813) (not b!4854876) (not b!4854833) (not b!4854830) (not b!4854768) (not d!1558321) (not setNonEmpty!27315) (not b!4854888) (not b!4854803) (not b!4854881) (not b!4854810) (not setNonEmpty!27313) (not b!4854811) (not setNonEmpty!27322) (not setNonEmpty!27324) (not b!4854828) (not b!4854892) (not b!4854897) (not b!4854835) (not b!4854842) (not b!4854839) (not b!4854921) (not d!1558305) (not b!4854820) (not setNonEmpty!27319) (not d!1558283) (not d!1558275) (not b!4854808) (not d!1558293) (not setNonEmpty!27317) (not b!4854809) b_and!342179 b_and!342193 (not b!4854815) (not b!4854919) (not b!4854900) (not setNonEmpty!27320) b_and!342183 (not setNonEmpty!27325) (not b!4854769) (not d!1558303) (not b_next!131155) (not b!4854760) (not setNonEmpty!27316) (not b!4854779) (not d!1558291) (not b!4854901) (not b!4854751) b_and!342189 (not b!4854893) (not b!4854832) (not b!4854781) (not b_next!131145) (not setNonEmpty!27329) (not b_lambda!193235) (not b_next!131143) (not b!4854846) (not setNonEmpty!27331) (not b!4854903) (not d!1558307) (not b_next!131141) (not setNonEmpty!27323) (not b!4854796) (not setNonEmpty!27309) (not d!1558299) (not b!4854904) (not b!4854807) (not setNonEmpty!27332) (not b_next!131147) (not b_next!131151) (not b!4854823) (not b!4854806) (not d!1558313) (not b!4854854) (not b!4854799) (not b_next!131149) (not mapNonEmpty!22546) (not d!1558309) (not b!4854821) (not b!4854923) (not b!4854851) (not d!1558325) (not b!4854885) (not b!4854816) b_and!342191 (not b!4854849) (not b!4854902) (not mapNonEmpty!22547) (not b!4854853) (not b!4854822) (not b!4854812) (not bs!1173625) (not b!4854819) (not b!4854922) (not b!4854850) (not b!4854798) (not setNonEmpty!27314) (not d!1558269) (not b!4854783) (not b!4854913) (not d!1558323) (not b!4854895) (not b!4854761) (not b!4854910) (not d!1558289) (not setNonEmpty!27326) (not d!1558311) (not b!4854802) (not setNonEmpty!27310) (not mapNonEmpty!22545) (not b!4854825) (not setNonEmpty!27334) (not d!1558273) (not b!4854834) b_and!342185 (not setNonEmpty!27336) (not b!4854855) (not setNonEmpty!27321) (not b!4854784) (not b!4854759) (not d!1558331) (not d!1558295) (not b!4854824) (not d!1558319) (not b!4854829) (not b!4854770) (not b!4854840) (not b!4854837) (not b!4854886) (not b!4854804) (not b!4854782) (not b!4854748) (not d!1558327))
(check-sat (not b_next!131153) b_and!342183 (not b_next!131155) b_and!342189 (not b_next!131145) b_and!342191 b_and!342185 b_and!342181 b_and!342187 b_and!342179 b_and!342193 (not b_next!131143) (not b_next!131141) (not b_next!131147) (not b_next!131151) (not b_next!131149))
