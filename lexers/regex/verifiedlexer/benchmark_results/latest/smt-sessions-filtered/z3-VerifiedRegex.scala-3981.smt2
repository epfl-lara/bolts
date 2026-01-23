; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216968 () Bool)

(assert start!216968)

(declare-fun b!2223471 () Bool)

(declare-fun b_free!64417 () Bool)

(declare-fun b_next!65121 () Bool)

(assert (=> b!2223471 (= b_free!64417 (not b_next!65121))))

(declare-fun tp!693739 () Bool)

(declare-fun b_and!174401 () Bool)

(assert (=> b!2223471 (= tp!693739 b_and!174401)))

(declare-fun b!2223465 () Bool)

(declare-fun b_free!64419 () Bool)

(declare-fun b_next!65123 () Bool)

(assert (=> b!2223465 (= b_free!64419 (not b_next!65123))))

(declare-fun tp!693743 () Bool)

(declare-fun b_and!174403 () Bool)

(assert (=> b!2223465 (= tp!693743 b_and!174403)))

(declare-fun b!2223463 () Bool)

(declare-fun e!1420493 () Bool)

(declare-fun e!1420498 () Bool)

(assert (=> b!2223463 (= e!1420493 e!1420498)))

(declare-fun b!2223464 () Bool)

(declare-fun e!1420499 () Bool)

(declare-datatypes ((C!12852 0))(
  ( (C!12853 (val!7474 Int)) )
))
(declare-datatypes ((Regex!6353 0))(
  ( (ElementMatch!6353 (c!355017 C!12852)) (Concat!10691 (regOne!13218 Regex!6353) (regTwo!13218 Regex!6353)) (EmptyExpr!6353) (Star!6353 (reg!6682 Regex!6353)) (EmptyLang!6353) (Union!6353 (regOne!13219 Regex!6353) (regTwo!13219 Regex!6353)) )
))
(declare-datatypes ((List!26169 0))(
  ( (Nil!26075) (Cons!26075 (h!31476 Regex!6353) (t!199579 List!26169)) )
))
(declare-datatypes ((Context!3802 0))(
  ( (Context!3803 (exprs!2401 List!26169)) )
))
(declare-fun context!72 () Context!3802)

(declare-fun nullable!1732 (Regex!6353) Bool)

(assert (=> b!2223464 (= e!1420499 (not (nullable!1732 (h!31476 (exprs!2401 context!72)))))))

(declare-fun e!1420502 () Bool)

(declare-fun e!1420494 () Bool)

(assert (=> b!2223465 (= e!1420502 (and e!1420494 tp!693743))))

(declare-fun b!2223466 () Bool)

(declare-fun e!1420500 () Bool)

(declare-fun tp!693742 () Bool)

(assert (=> b!2223466 (= e!1420500 tp!693742)))

(declare-fun res!953978 () Bool)

(declare-fun e!1420495 () Bool)

(assert (=> start!216968 (=> (not res!953978) (not e!1420495))))

(declare-fun a!1149 () C!12852)

(declare-datatypes ((array!10263 0))(
  ( (array!10264 (arr!4568 (Array (_ BitVec 32) (_ BitVec 64))) (size!20349 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!25288 0))(
  ( (tuple2!25289 (_1!15026 Context!3802) (_2!15026 C!12852)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25290 0))(
  ( (tuple2!25291 (_1!15027 tuple2!25288) (_2!15027 (InoxSet Context!3802))) )
))
(declare-datatypes ((List!26170 0))(
  ( (Nil!26076) (Cons!26076 (h!31477 tuple2!25290) (t!199580 List!26170)) )
))
(declare-datatypes ((array!10265 0))(
  ( (array!10266 (arr!4569 (Array (_ BitVec 32) List!26170)) (size!20350 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5980 0))(
  ( (LongMapFixedSize!5981 (defaultEntry!3355 Int) (mask!7520 (_ BitVec 32)) (extraKeys!3238 (_ BitVec 32)) (zeroValue!3248 List!26170) (minValue!3248 List!26170) (_size!6027 (_ BitVec 32)) (_keys!3287 array!10263) (_values!3270 array!10265) (_vacant!3051 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11777 0))(
  ( (Cell!11778 (v!29631 LongMapFixedSize!5980)) )
))
(declare-datatypes ((MutLongMap!2990 0))(
  ( (LongMap!2990 (underlying!6181 Cell!11777)) (MutLongMapExt!2989 (__x!17196 Int)) )
))
(declare-datatypes ((Cell!11779 0))(
  ( (Cell!11780 (v!29632 MutLongMap!2990)) )
))
(declare-datatypes ((Hashable!2900 0))(
  ( (HashableExt!2899 (__x!17197 Int)) )
))
(declare-datatypes ((MutableMap!2900 0))(
  ( (MutableMapExt!2899 (__x!17198 Int)) (HashMap!2900 (underlying!6182 Cell!11779) (hashF!4823 Hashable!2900) (_size!6028 (_ BitVec 32)) (defaultValue!3062 Int)) )
))
(declare-datatypes ((CacheUp!1924 0))(
  ( (CacheUp!1925 (cache!3281 MutableMap!2900)) )
))
(declare-fun cacheUp!790 () CacheUp!1924)

(get-info :version)

(declare-datatypes ((Option!5070 0))(
  ( (None!5069) (Some!5069 (v!29633 (InoxSet Context!3802))) )
))
(declare-fun get!7832 (CacheUp!1924 Context!3802 C!12852) Option!5070)

(assert (=> start!216968 (= res!953978 (not ((_ is Some!5069) (get!7832 cacheUp!790 context!72 a!1149))))))

(assert (=> start!216968 e!1420495))

(declare-fun e!1420501 () Bool)

(declare-fun inv!35403 (CacheUp!1924) Bool)

(assert (=> start!216968 (and (inv!35403 cacheUp!790) e!1420501)))

(declare-fun inv!35404 (Context!3802) Bool)

(assert (=> start!216968 (and (inv!35404 context!72) e!1420500)))

(declare-fun tp_is_empty!9931 () Bool)

(assert (=> start!216968 tp_is_empty!9931))

(declare-fun b!2223467 () Bool)

(declare-fun res!953980 () Bool)

(assert (=> b!2223467 (=> (not res!953980) (not e!1420495))))

(assert (=> b!2223467 (= res!953980 ((_ is Cons!26075) (exprs!2401 context!72)))))

(declare-fun b!2223468 () Bool)

(declare-fun e!1420496 () Bool)

(declare-fun lt!828857 () MutLongMap!2990)

(assert (=> b!2223468 (= e!1420494 (and e!1420496 ((_ is LongMap!2990) lt!828857)))))

(assert (=> b!2223468 (= lt!828857 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))

(declare-fun b!2223469 () Bool)

(declare-fun res!953979 () Bool)

(assert (=> b!2223469 (=> (not res!953979) (not e!1420495))))

(assert (=> b!2223469 (= res!953979 e!1420499)))

(declare-fun res!953981 () Bool)

(assert (=> b!2223469 (=> res!953981 e!1420499)))

(assert (=> b!2223469 (= res!953981 (not ((_ is Cons!26075) (exprs!2401 context!72))))))

(declare-fun b!2223470 () Bool)

(assert (=> b!2223470 (= e!1420496 e!1420493)))

(declare-fun tp!693738 () Bool)

(declare-fun e!1420503 () Bool)

(declare-fun tp!693744 () Bool)

(declare-fun array_inv!3284 (array!10263) Bool)

(declare-fun array_inv!3285 (array!10265) Bool)

(assert (=> b!2223471 (= e!1420498 (and tp!693739 tp!693744 tp!693738 (array_inv!3284 (_keys!3287 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))) (array_inv!3285 (_values!3270 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))) e!1420503))))

(declare-fun b!2223472 () Bool)

(assert (=> b!2223472 (= e!1420501 e!1420502)))

(declare-fun mapNonEmpty!14111 () Bool)

(declare-fun mapRes!14111 () Bool)

(declare-fun tp!693741 () Bool)

(declare-fun tp!693740 () Bool)

(assert (=> mapNonEmpty!14111 (= mapRes!14111 (and tp!693741 tp!693740))))

(declare-fun mapRest!14111 () (Array (_ BitVec 32) List!26170))

(declare-fun mapValue!14111 () List!26170)

(declare-fun mapKey!14111 () (_ BitVec 32))

(assert (=> mapNonEmpty!14111 (= (arr!4569 (_values!3270 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))) (store mapRest!14111 mapKey!14111 mapValue!14111))))

(declare-fun b!2223473 () Bool)

(declare-fun tp!693745 () Bool)

(assert (=> b!2223473 (= e!1420503 (and tp!693745 mapRes!14111))))

(declare-fun condMapEmpty!14111 () Bool)

(declare-fun mapDefault!14111 () List!26170)

(assert (=> b!2223473 (= condMapEmpty!14111 (= (arr!4569 (_values!3270 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26170)) mapDefault!14111)))))

(declare-fun b!2223474 () Bool)

(assert (=> b!2223474 (= e!1420495 (not (inv!35404 (Context!3803 (t!199579 (exprs!2401 context!72))))))))

(declare-fun mapIsEmpty!14111 () Bool)

(assert (=> mapIsEmpty!14111 mapRes!14111))

(assert (= (and start!216968 res!953978) b!2223469))

(assert (= (and b!2223469 (not res!953981)) b!2223464))

(assert (= (and b!2223469 res!953979) b!2223467))

(assert (= (and b!2223467 res!953980) b!2223474))

(assert (= (and b!2223473 condMapEmpty!14111) mapIsEmpty!14111))

(assert (= (and b!2223473 (not condMapEmpty!14111)) mapNonEmpty!14111))

(assert (= b!2223471 b!2223473))

(assert (= b!2223463 b!2223471))

(assert (= b!2223470 b!2223463))

(assert (= (and b!2223468 ((_ is LongMap!2990) (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))) b!2223470))

(assert (= b!2223465 b!2223468))

(assert (= (and b!2223472 ((_ is HashMap!2900) (cache!3281 cacheUp!790))) b!2223465))

(assert (= start!216968 b!2223472))

(assert (= start!216968 b!2223466))

(declare-fun m!2663613 () Bool)

(assert (=> b!2223464 m!2663613))

(declare-fun m!2663615 () Bool)

(assert (=> b!2223474 m!2663615))

(declare-fun m!2663617 () Bool)

(assert (=> mapNonEmpty!14111 m!2663617))

(declare-fun m!2663619 () Bool)

(assert (=> start!216968 m!2663619))

(declare-fun m!2663621 () Bool)

(assert (=> start!216968 m!2663621))

(declare-fun m!2663623 () Bool)

(assert (=> start!216968 m!2663623))

(declare-fun m!2663625 () Bool)

(assert (=> b!2223471 m!2663625))

(declare-fun m!2663627 () Bool)

(assert (=> b!2223471 m!2663627))

(check-sat (not b!2223471) (not b!2223474) (not b_next!65121) (not b!2223464) (not b!2223466) (not mapNonEmpty!14111) tp_is_empty!9931 b_and!174403 (not b!2223473) (not b_next!65123) b_and!174401 (not start!216968))
(check-sat b_and!174403 b_and!174401 (not b_next!65123) (not b_next!65121))
(get-model)

(declare-fun d!664290 () Bool)

(assert (=> d!664290 (= (array_inv!3284 (_keys!3287 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))) (bvsge (size!20349 (_keys!3287 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2223471 d!664290))

(declare-fun d!664292 () Bool)

(assert (=> d!664292 (= (array_inv!3285 (_values!3270 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))) (bvsge (size!20350 (_values!3270 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2223471 d!664292))

(declare-fun d!664294 () Bool)

(declare-fun e!1420508 () Bool)

(assert (=> d!664294 e!1420508))

(declare-fun res!953984 () Bool)

(assert (=> d!664294 (=> res!953984 e!1420508)))

(declare-fun lt!828862 () Option!5070)

(declare-fun isEmpty!14876 (Option!5070) Bool)

(assert (=> d!664294 (= res!953984 (isEmpty!14876 lt!828862))))

(declare-fun e!1420509 () Option!5070)

(assert (=> d!664294 (= lt!828862 e!1420509)))

(declare-fun c!355020 () Bool)

(declare-fun contains!4350 (MutableMap!2900 tuple2!25288) Bool)

(assert (=> d!664294 (= c!355020 (contains!4350 (cache!3281 cacheUp!790) (tuple2!25289 context!72 a!1149)))))

(declare-fun validCacheMapUp!273 (MutableMap!2900) Bool)

(assert (=> d!664294 (validCacheMapUp!273 (cache!3281 cacheUp!790))))

(assert (=> d!664294 (= (get!7832 cacheUp!790 context!72 a!1149) lt!828862)))

(declare-fun b!2223481 () Bool)

(declare-fun apply!6456 (MutableMap!2900 tuple2!25288) (InoxSet Context!3802))

(assert (=> b!2223481 (= e!1420509 (Some!5069 (apply!6456 (cache!3281 cacheUp!790) (tuple2!25289 context!72 a!1149))))))

(declare-datatypes ((Unit!39035 0))(
  ( (Unit!39036) )
))
(declare-fun lt!828863 () Unit!39035)

(declare-fun lemmaIfInCacheThenValid!25 (CacheUp!1924 Context!3802 C!12852) Unit!39035)

(assert (=> b!2223481 (= lt!828863 (lemmaIfInCacheThenValid!25 cacheUp!790 context!72 a!1149))))

(declare-fun b!2223482 () Bool)

(assert (=> b!2223482 (= e!1420509 None!5069)))

(declare-fun b!2223483 () Bool)

(declare-fun get!7833 (Option!5070) (InoxSet Context!3802))

(declare-fun derivationStepZipperUp!23 (Context!3802 C!12852) (InoxSet Context!3802))

(assert (=> b!2223483 (= e!1420508 (= (get!7833 lt!828862) (derivationStepZipperUp!23 context!72 a!1149)))))

(assert (= (and d!664294 c!355020) b!2223481))

(assert (= (and d!664294 (not c!355020)) b!2223482))

(assert (= (and d!664294 (not res!953984)) b!2223483))

(declare-fun m!2663629 () Bool)

(assert (=> d!664294 m!2663629))

(declare-fun m!2663631 () Bool)

(assert (=> d!664294 m!2663631))

(declare-fun m!2663633 () Bool)

(assert (=> d!664294 m!2663633))

(declare-fun m!2663635 () Bool)

(assert (=> b!2223481 m!2663635))

(declare-fun m!2663637 () Bool)

(assert (=> b!2223481 m!2663637))

(declare-fun m!2663639 () Bool)

(assert (=> b!2223483 m!2663639))

(declare-fun m!2663641 () Bool)

(assert (=> b!2223483 m!2663641))

(assert (=> start!216968 d!664294))

(declare-fun d!664296 () Bool)

(declare-fun res!953987 () Bool)

(declare-fun e!1420512 () Bool)

(assert (=> d!664296 (=> (not res!953987) (not e!1420512))))

(assert (=> d!664296 (= res!953987 ((_ is HashMap!2900) (cache!3281 cacheUp!790)))))

(assert (=> d!664296 (= (inv!35403 cacheUp!790) e!1420512)))

(declare-fun b!2223486 () Bool)

(assert (=> b!2223486 (= e!1420512 (validCacheMapUp!273 (cache!3281 cacheUp!790)))))

(assert (= (and d!664296 res!953987) b!2223486))

(assert (=> b!2223486 m!2663633))

(assert (=> start!216968 d!664296))

(declare-fun d!664298 () Bool)

(declare-fun lambda!84014 () Int)

(declare-fun forall!5313 (List!26169 Int) Bool)

(assert (=> d!664298 (= (inv!35404 context!72) (forall!5313 (exprs!2401 context!72) lambda!84014))))

(declare-fun bs!453345 () Bool)

(assert (= bs!453345 d!664298))

(declare-fun m!2663643 () Bool)

(assert (=> bs!453345 m!2663643))

(assert (=> start!216968 d!664298))

(declare-fun bs!453346 () Bool)

(declare-fun d!664300 () Bool)

(assert (= bs!453346 (and d!664300 d!664298)))

(declare-fun lambda!84015 () Int)

(assert (=> bs!453346 (= lambda!84015 lambda!84014)))

(assert (=> d!664300 (= (inv!35404 (Context!3803 (t!199579 (exprs!2401 context!72)))) (forall!5313 (exprs!2401 (Context!3803 (t!199579 (exprs!2401 context!72)))) lambda!84015))))

(declare-fun bs!453347 () Bool)

(assert (= bs!453347 d!664300))

(declare-fun m!2663645 () Bool)

(assert (=> bs!453347 m!2663645))

(assert (=> b!2223474 d!664300))

(declare-fun d!664302 () Bool)

(declare-fun nullableFct!404 (Regex!6353) Bool)

(assert (=> d!664302 (= (nullable!1732 (h!31476 (exprs!2401 context!72))) (nullableFct!404 (h!31476 (exprs!2401 context!72))))))

(declare-fun bs!453348 () Bool)

(assert (= bs!453348 d!664302))

(declare-fun m!2663647 () Bool)

(assert (=> bs!453348 m!2663647))

(assert (=> b!2223464 d!664302))

(declare-fun b!2223491 () Bool)

(declare-fun e!1420515 () Bool)

(declare-fun tp!693750 () Bool)

(declare-fun tp!693751 () Bool)

(assert (=> b!2223491 (= e!1420515 (and tp!693750 tp!693751))))

(assert (=> b!2223466 (= tp!693742 e!1420515)))

(assert (= (and b!2223466 ((_ is Cons!26075) (exprs!2401 context!72))) b!2223491))

(declare-fun tp!693761 () Bool)

(declare-fun setNonEmpty!19639 () Bool)

(declare-fun setElem!19639 () Context!3802)

(declare-fun e!1420523 () Bool)

(declare-fun setRes!19639 () Bool)

(assert (=> setNonEmpty!19639 (= setRes!19639 (and tp!693761 (inv!35404 setElem!19639) e!1420523))))

(declare-fun setRest!19639 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19639 (= (_2!15027 (h!31477 (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19639 true) setRest!19639))))

(declare-fun e!1420524 () Bool)

(assert (=> b!2223471 (= tp!693744 e!1420524)))

(declare-fun b!2223500 () Bool)

(declare-fun tp!693762 () Bool)

(assert (=> b!2223500 (= e!1420523 tp!693762)))

(declare-fun setIsEmpty!19639 () Bool)

(assert (=> setIsEmpty!19639 setRes!19639))

(declare-fun b!2223501 () Bool)

(declare-fun e!1420522 () Bool)

(declare-fun tp!693760 () Bool)

(assert (=> b!2223501 (= e!1420522 tp!693760)))

(declare-fun b!2223502 () Bool)

(declare-fun tp!693763 () Bool)

(assert (=> b!2223502 (= e!1420524 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))))) e!1420522 tp_is_empty!9931 setRes!19639 tp!693763))))

(declare-fun condSetEmpty!19639 () Bool)

(assert (=> b!2223502 (= condSetEmpty!19639 (= (_2!15027 (h!31477 (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))) ((as const (Array Context!3802 Bool)) false)))))

(assert (= b!2223502 b!2223501))

(assert (= (and b!2223502 condSetEmpty!19639) setIsEmpty!19639))

(assert (= (and b!2223502 (not condSetEmpty!19639)) setNonEmpty!19639))

(assert (= setNonEmpty!19639 b!2223500))

(assert (= (and b!2223471 ((_ is Cons!26076) (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))) b!2223502))

(declare-fun m!2663649 () Bool)

(assert (=> setNonEmpty!19639 m!2663649))

(declare-fun m!2663651 () Bool)

(assert (=> b!2223502 m!2663651))

(declare-fun setNonEmpty!19640 () Bool)

(declare-fun tp!693765 () Bool)

(declare-fun setRes!19640 () Bool)

(declare-fun setElem!19640 () Context!3802)

(declare-fun e!1420526 () Bool)

(assert (=> setNonEmpty!19640 (= setRes!19640 (and tp!693765 (inv!35404 setElem!19640) e!1420526))))

(declare-fun setRest!19640 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19640 (= (_2!15027 (h!31477 (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19640 true) setRest!19640))))

(declare-fun e!1420527 () Bool)

(assert (=> b!2223471 (= tp!693738 e!1420527)))

(declare-fun b!2223503 () Bool)

(declare-fun tp!693766 () Bool)

(assert (=> b!2223503 (= e!1420526 tp!693766)))

(declare-fun setIsEmpty!19640 () Bool)

(assert (=> setIsEmpty!19640 setRes!19640))

(declare-fun b!2223504 () Bool)

(declare-fun e!1420525 () Bool)

(declare-fun tp!693764 () Bool)

(assert (=> b!2223504 (= e!1420525 tp!693764)))

(declare-fun b!2223505 () Bool)

(declare-fun tp!693767 () Bool)

(assert (=> b!2223505 (= e!1420527 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))))) e!1420525 tp_is_empty!9931 setRes!19640 tp!693767))))

(declare-fun condSetEmpty!19640 () Bool)

(assert (=> b!2223505 (= condSetEmpty!19640 (= (_2!15027 (h!31477 (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))) ((as const (Array Context!3802 Bool)) false)))))

(assert (= b!2223505 b!2223504))

(assert (= (and b!2223505 condSetEmpty!19640) setIsEmpty!19640))

(assert (= (and b!2223505 (not condSetEmpty!19640)) setNonEmpty!19640))

(assert (= setNonEmpty!19640 b!2223503))

(assert (= (and b!2223471 ((_ is Cons!26076) (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))) b!2223505))

(declare-fun m!2663653 () Bool)

(assert (=> setNonEmpty!19640 m!2663653))

(declare-fun m!2663655 () Bool)

(assert (=> b!2223505 m!2663655))

(declare-fun e!1420529 () Bool)

(declare-fun tp!693769 () Bool)

(declare-fun setNonEmpty!19641 () Bool)

(declare-fun setRes!19641 () Bool)

(declare-fun setElem!19641 () Context!3802)

(assert (=> setNonEmpty!19641 (= setRes!19641 (and tp!693769 (inv!35404 setElem!19641) e!1420529))))

(declare-fun setRest!19641 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19641 (= (_2!15027 (h!31477 mapDefault!14111)) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19641 true) setRest!19641))))

(declare-fun e!1420530 () Bool)

(assert (=> b!2223473 (= tp!693745 e!1420530)))

(declare-fun b!2223506 () Bool)

(declare-fun tp!693770 () Bool)

(assert (=> b!2223506 (= e!1420529 tp!693770)))

(declare-fun setIsEmpty!19641 () Bool)

(assert (=> setIsEmpty!19641 setRes!19641))

(declare-fun b!2223507 () Bool)

(declare-fun e!1420528 () Bool)

(declare-fun tp!693768 () Bool)

(assert (=> b!2223507 (= e!1420528 tp!693768)))

(declare-fun b!2223508 () Bool)

(declare-fun tp!693771 () Bool)

(assert (=> b!2223508 (= e!1420530 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 mapDefault!14111)))) e!1420528 tp_is_empty!9931 setRes!19641 tp!693771))))

(declare-fun condSetEmpty!19641 () Bool)

(assert (=> b!2223508 (= condSetEmpty!19641 (= (_2!15027 (h!31477 mapDefault!14111)) ((as const (Array Context!3802 Bool)) false)))))

(assert (= b!2223508 b!2223507))

(assert (= (and b!2223508 condSetEmpty!19641) setIsEmpty!19641))

(assert (= (and b!2223508 (not condSetEmpty!19641)) setNonEmpty!19641))

(assert (= setNonEmpty!19641 b!2223506))

(assert (= (and b!2223473 ((_ is Cons!26076) mapDefault!14111)) b!2223508))

(declare-fun m!2663657 () Bool)

(assert (=> setNonEmpty!19641 m!2663657))

(declare-fun m!2663659 () Bool)

(assert (=> b!2223508 m!2663659))

(declare-fun b!2223523 () Bool)

(declare-fun e!1420543 () Bool)

(declare-fun tp!693797 () Bool)

(assert (=> b!2223523 (= e!1420543 tp!693797)))

(declare-fun condMapEmpty!14114 () Bool)

(declare-fun mapDefault!14114 () List!26170)

(assert (=> mapNonEmpty!14111 (= condMapEmpty!14114 (= mapRest!14111 ((as const (Array (_ BitVec 32) List!26170)) mapDefault!14114)))))

(declare-fun e!1420547 () Bool)

(declare-fun mapRes!14114 () Bool)

(assert (=> mapNonEmpty!14111 (= tp!693741 (and e!1420547 mapRes!14114))))

(declare-fun mapIsEmpty!14114 () Bool)

(assert (=> mapIsEmpty!14114 mapRes!14114))

(declare-fun b!2223524 () Bool)

(declare-fun e!1420545 () Bool)

(declare-fun tp!693791 () Bool)

(assert (=> b!2223524 (= e!1420545 tp!693791)))

(declare-fun b!2223525 () Bool)

(declare-fun tp!693794 () Bool)

(declare-fun setRes!19647 () Bool)

(declare-fun e!1420548 () Bool)

(declare-fun mapValue!14114 () List!26170)

(declare-fun e!1420544 () Bool)

(assert (=> b!2223525 (= e!1420548 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 mapValue!14114)))) e!1420544 tp_is_empty!9931 setRes!19647 tp!693794))))

(declare-fun condSetEmpty!19647 () Bool)

(assert (=> b!2223525 (= condSetEmpty!19647 (= (_2!15027 (h!31477 mapValue!14114)) ((as const (Array Context!3802 Bool)) false)))))

(declare-fun setIsEmpty!19646 () Bool)

(declare-fun setRes!19646 () Bool)

(assert (=> setIsEmpty!19646 setRes!19646))

(declare-fun tp!693795 () Bool)

(declare-fun setNonEmpty!19646 () Bool)

(declare-fun setElem!19646 () Context!3802)

(assert (=> setNonEmpty!19646 (= setRes!19647 (and tp!693795 (inv!35404 setElem!19646) e!1420545))))

(declare-fun setRest!19646 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19646 (= (_2!15027 (h!31477 mapValue!14114)) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19646 true) setRest!19646))))

(declare-fun setIsEmpty!19647 () Bool)

(assert (=> setIsEmpty!19647 setRes!19647))

(declare-fun tp!693790 () Bool)

(declare-fun setElem!19647 () Context!3802)

(declare-fun setNonEmpty!19647 () Bool)

(declare-fun e!1420546 () Bool)

(assert (=> setNonEmpty!19647 (= setRes!19646 (and tp!693790 (inv!35404 setElem!19647) e!1420546))))

(declare-fun setRest!19647 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19647 (= (_2!15027 (h!31477 mapDefault!14114)) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19647 true) setRest!19647))))

(declare-fun tp!693793 () Bool)

(declare-fun b!2223526 () Bool)

(assert (=> b!2223526 (= e!1420547 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 mapDefault!14114)))) e!1420543 tp_is_empty!9931 setRes!19646 tp!693793))))

(declare-fun condSetEmpty!19646 () Bool)

(assert (=> b!2223526 (= condSetEmpty!19646 (= (_2!15027 (h!31477 mapDefault!14114)) ((as const (Array Context!3802 Bool)) false)))))

(declare-fun mapNonEmpty!14114 () Bool)

(declare-fun tp!693792 () Bool)

(assert (=> mapNonEmpty!14114 (= mapRes!14114 (and tp!693792 e!1420548))))

(declare-fun mapRest!14114 () (Array (_ BitVec 32) List!26170))

(declare-fun mapKey!14114 () (_ BitVec 32))

(assert (=> mapNonEmpty!14114 (= mapRest!14111 (store mapRest!14114 mapKey!14114 mapValue!14114))))

(declare-fun b!2223527 () Bool)

(declare-fun tp!693796 () Bool)

(assert (=> b!2223527 (= e!1420544 tp!693796)))

(declare-fun b!2223528 () Bool)

(declare-fun tp!693798 () Bool)

(assert (=> b!2223528 (= e!1420546 tp!693798)))

(assert (= (and mapNonEmpty!14111 condMapEmpty!14114) mapIsEmpty!14114))

(assert (= (and mapNonEmpty!14111 (not condMapEmpty!14114)) mapNonEmpty!14114))

(assert (= b!2223525 b!2223527))

(assert (= (and b!2223525 condSetEmpty!19647) setIsEmpty!19647))

(assert (= (and b!2223525 (not condSetEmpty!19647)) setNonEmpty!19646))

(assert (= setNonEmpty!19646 b!2223524))

(assert (= (and mapNonEmpty!14114 ((_ is Cons!26076) mapValue!14114)) b!2223525))

(assert (= b!2223526 b!2223523))

(assert (= (and b!2223526 condSetEmpty!19646) setIsEmpty!19646))

(assert (= (and b!2223526 (not condSetEmpty!19646)) setNonEmpty!19647))

(assert (= setNonEmpty!19647 b!2223528))

(assert (= (and mapNonEmpty!14111 ((_ is Cons!26076) mapDefault!14114)) b!2223526))

(declare-fun m!2663661 () Bool)

(assert (=> b!2223526 m!2663661))

(declare-fun m!2663663 () Bool)

(assert (=> setNonEmpty!19647 m!2663663))

(declare-fun m!2663665 () Bool)

(assert (=> mapNonEmpty!14114 m!2663665))

(declare-fun m!2663667 () Bool)

(assert (=> setNonEmpty!19646 m!2663667))

(declare-fun m!2663669 () Bool)

(assert (=> b!2223525 m!2663669))

(declare-fun setRes!19648 () Bool)

(declare-fun e!1420550 () Bool)

(declare-fun setElem!19648 () Context!3802)

(declare-fun tp!693800 () Bool)

(declare-fun setNonEmpty!19648 () Bool)

(assert (=> setNonEmpty!19648 (= setRes!19648 (and tp!693800 (inv!35404 setElem!19648) e!1420550))))

(declare-fun setRest!19648 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19648 (= (_2!15027 (h!31477 mapValue!14111)) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19648 true) setRest!19648))))

(declare-fun e!1420551 () Bool)

(assert (=> mapNonEmpty!14111 (= tp!693740 e!1420551)))

(declare-fun b!2223529 () Bool)

(declare-fun tp!693801 () Bool)

(assert (=> b!2223529 (= e!1420550 tp!693801)))

(declare-fun setIsEmpty!19648 () Bool)

(assert (=> setIsEmpty!19648 setRes!19648))

(declare-fun b!2223530 () Bool)

(declare-fun e!1420549 () Bool)

(declare-fun tp!693799 () Bool)

(assert (=> b!2223530 (= e!1420549 tp!693799)))

(declare-fun b!2223531 () Bool)

(declare-fun tp!693802 () Bool)

(assert (=> b!2223531 (= e!1420551 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 mapValue!14111)))) e!1420549 tp_is_empty!9931 setRes!19648 tp!693802))))

(declare-fun condSetEmpty!19648 () Bool)

(assert (=> b!2223531 (= condSetEmpty!19648 (= (_2!15027 (h!31477 mapValue!14111)) ((as const (Array Context!3802 Bool)) false)))))

(assert (= b!2223531 b!2223530))

(assert (= (and b!2223531 condSetEmpty!19648) setIsEmpty!19648))

(assert (= (and b!2223531 (not condSetEmpty!19648)) setNonEmpty!19648))

(assert (= setNonEmpty!19648 b!2223529))

(assert (= (and mapNonEmpty!14111 ((_ is Cons!26076) mapValue!14111)) b!2223531))

(declare-fun m!2663671 () Bool)

(assert (=> setNonEmpty!19648 m!2663671))

(declare-fun m!2663673 () Bool)

(assert (=> b!2223531 m!2663673))

(check-sat (not b!2223501) (not d!664298) (not b!2223486) (not setNonEmpty!19648) (not b!2223503) (not b!2223525) (not b!2223530) (not b!2223491) tp_is_empty!9931 (not b!2223504) (not b!2223506) (not b!2223500) (not setNonEmpty!19641) (not d!664300) (not b!2223481) (not d!664294) (not b!2223502) (not b_next!65121) (not b_next!65123) (not setNonEmpty!19640) (not b!2223505) (not setNonEmpty!19646) (not mapNonEmpty!14114) (not b!2223531) (not b!2223483) (not b!2223507) (not b!2223528) (not setNonEmpty!19639) (not b!2223529) b_and!174401 (not d!664302) (not setNonEmpty!19647) (not b!2223527) (not b!2223508) (not b!2223523) (not b!2223526) (not b!2223524) b_and!174403)
(check-sat b_and!174403 b_and!174401 (not b_next!65123) (not b_next!65121))
(get-model)

(declare-fun bs!453349 () Bool)

(declare-fun d!664304 () Bool)

(assert (= bs!453349 (and d!664304 d!664298)))

(declare-fun lambda!84016 () Int)

(assert (=> bs!453349 (= lambda!84016 lambda!84014)))

(declare-fun bs!453350 () Bool)

(assert (= bs!453350 (and d!664304 d!664300)))

(assert (=> bs!453350 (= lambda!84016 lambda!84015)))

(assert (=> d!664304 (= (inv!35404 setElem!19641) (forall!5313 (exprs!2401 setElem!19641) lambda!84016))))

(declare-fun bs!453351 () Bool)

(assert (= bs!453351 d!664304))

(declare-fun m!2663675 () Bool)

(assert (=> bs!453351 m!2663675))

(assert (=> setNonEmpty!19641 d!664304))

(declare-fun d!664306 () Bool)

(declare-fun res!953992 () Bool)

(declare-fun e!1420554 () Bool)

(assert (=> d!664306 (=> (not res!953992) (not e!1420554))))

(declare-fun valid!2301 (MutableMap!2900) Bool)

(assert (=> d!664306 (= res!953992 (valid!2301 (cache!3281 cacheUp!790)))))

(assert (=> d!664306 (= (validCacheMapUp!273 (cache!3281 cacheUp!790)) e!1420554)))

(declare-fun b!2223536 () Bool)

(declare-fun res!953993 () Bool)

(assert (=> b!2223536 (=> (not res!953993) (not e!1420554))))

(declare-fun invariantList!349 (List!26170) Bool)

(declare-datatypes ((ListMap!761 0))(
  ( (ListMap!762 (toList!1301 List!26170)) )
))
(declare-fun map!5299 (MutableMap!2900) ListMap!761)

(assert (=> b!2223536 (= res!953993 (invariantList!349 (toList!1301 (map!5299 (cache!3281 cacheUp!790)))))))

(declare-fun b!2223537 () Bool)

(declare-fun lambda!84019 () Int)

(declare-fun forall!5314 (List!26170 Int) Bool)

(assert (=> b!2223537 (= e!1420554 (forall!5314 (toList!1301 (map!5299 (cache!3281 cacheUp!790))) lambda!84019))))

(assert (= (and d!664306 res!953992) b!2223536))

(assert (= (and b!2223536 res!953993) b!2223537))

(declare-fun m!2663678 () Bool)

(assert (=> d!664306 m!2663678))

(declare-fun m!2663680 () Bool)

(assert (=> b!2223536 m!2663680))

(declare-fun m!2663682 () Bool)

(assert (=> b!2223536 m!2663682))

(assert (=> b!2223537 m!2663680))

(declare-fun m!2663684 () Bool)

(assert (=> b!2223537 m!2663684))

(assert (=> b!2223486 d!664306))

(declare-fun bs!453352 () Bool)

(declare-fun d!664308 () Bool)

(assert (= bs!453352 (and d!664308 d!664298)))

(declare-fun lambda!84020 () Int)

(assert (=> bs!453352 (= lambda!84020 lambda!84014)))

(declare-fun bs!453353 () Bool)

(assert (= bs!453353 (and d!664308 d!664300)))

(assert (=> bs!453353 (= lambda!84020 lambda!84015)))

(declare-fun bs!453354 () Bool)

(assert (= bs!453354 (and d!664308 d!664304)))

(assert (=> bs!453354 (= lambda!84020 lambda!84016)))

(assert (=> d!664308 (= (inv!35404 setElem!19648) (forall!5313 (exprs!2401 setElem!19648) lambda!84020))))

(declare-fun bs!453355 () Bool)

(assert (= bs!453355 d!664308))

(declare-fun m!2663686 () Bool)

(assert (=> bs!453355 m!2663686))

(assert (=> setNonEmpty!19648 d!664308))

(declare-fun bs!453356 () Bool)

(declare-fun d!664310 () Bool)

(assert (= bs!453356 (and d!664310 d!664298)))

(declare-fun lambda!84021 () Int)

(assert (=> bs!453356 (= lambda!84021 lambda!84014)))

(declare-fun bs!453357 () Bool)

(assert (= bs!453357 (and d!664310 d!664300)))

(assert (=> bs!453357 (= lambda!84021 lambda!84015)))

(declare-fun bs!453358 () Bool)

(assert (= bs!453358 (and d!664310 d!664304)))

(assert (=> bs!453358 (= lambda!84021 lambda!84016)))

(declare-fun bs!453359 () Bool)

(assert (= bs!453359 (and d!664310 d!664308)))

(assert (=> bs!453359 (= lambda!84021 lambda!84020)))

(assert (=> d!664310 (= (inv!35404 setElem!19639) (forall!5313 (exprs!2401 setElem!19639) lambda!84021))))

(declare-fun bs!453360 () Bool)

(assert (= bs!453360 d!664310))

(declare-fun m!2663688 () Bool)

(assert (=> bs!453360 m!2663688))

(assert (=> setNonEmpty!19639 d!664310))

(declare-fun d!664312 () Bool)

(assert (=> d!664312 (= (isEmpty!14876 lt!828862) (not ((_ is Some!5069) lt!828862)))))

(assert (=> d!664294 d!664312))

(declare-fun b!2223560 () Bool)

(assert (=> b!2223560 false))

(declare-fun lt!828920 () Unit!39035)

(declare-fun lt!828906 () Unit!39035)

(assert (=> b!2223560 (= lt!828920 lt!828906)))

(declare-datatypes ((tuple2!25292 0))(
  ( (tuple2!25293 (_1!15028 (_ BitVec 64)) (_2!15028 List!26170)) )
))
(declare-datatypes ((List!26171 0))(
  ( (Nil!26077) (Cons!26077 (h!31478 tuple2!25292) (t!199583 List!26171)) )
))
(declare-datatypes ((ListLongMap!295 0))(
  ( (ListLongMap!296 (toList!1302 List!26171)) )
))
(declare-fun lt!828919 () ListLongMap!295)

(declare-fun contains!4351 (ListMap!761 tuple2!25288) Bool)

(declare-fun extractMap!95 (List!26171) ListMap!761)

(assert (=> b!2223560 (contains!4351 (extractMap!95 (toList!1302 lt!828919)) (tuple2!25289 context!72 a!1149))))

(declare-fun lemmaInLongMapThenInGenericMap!26 (ListLongMap!295 tuple2!25288 Hashable!2900) Unit!39035)

(assert (=> b!2223560 (= lt!828906 (lemmaInLongMapThenInGenericMap!26 lt!828919 (tuple2!25289 context!72 a!1149) (hashF!4823 (cache!3281 cacheUp!790))))))

(declare-fun call!132828 () ListLongMap!295)

(assert (=> b!2223560 (= lt!828919 call!132828)))

(declare-fun e!1420570 () Unit!39035)

(declare-fun Unit!39037 () Unit!39035)

(assert (=> b!2223560 (= e!1420570 Unit!39037)))

(declare-fun lt!828911 () (_ BitVec 64))

(declare-fun b!2223561 () Bool)

(declare-fun e!1420569 () Bool)

(declare-datatypes ((Option!5071 0))(
  ( (None!5070) (Some!5070 (v!29634 tuple2!25290)) )
))
(declare-fun isDefined!4128 (Option!5071) Bool)

(declare-fun getPair!26 (List!26170 tuple2!25288) Option!5071)

(declare-fun apply!6457 (MutLongMap!2990 (_ BitVec 64)) List!26170)

(assert (=> b!2223561 (= e!1420569 (isDefined!4128 (getPair!26 (apply!6457 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828911) (tuple2!25289 context!72 a!1149))))))

(declare-fun lt!828914 () ListLongMap!295)

(declare-fun call!132829 () (_ BitVec 64))

(declare-fun c!355030 () Bool)

(declare-fun call!132830 () Bool)

(declare-fun bm!132821 () Bool)

(declare-fun contains!4352 (ListLongMap!295 (_ BitVec 64)) Bool)

(assert (=> bm!132821 (= call!132830 (contains!4352 (ite c!355030 lt!828914 call!132828) call!132829))))

(declare-fun b!2223562 () Bool)

(declare-fun e!1420573 () Unit!39035)

(declare-fun Unit!39038 () Unit!39035)

(assert (=> b!2223562 (= e!1420573 Unit!39038)))

(declare-fun b!2223563 () Bool)

(assert (=> b!2223563 false))

(declare-fun lt!828909 () Unit!39035)

(declare-fun lt!828916 () Unit!39035)

(assert (=> b!2223563 (= lt!828909 lt!828916)))

(declare-fun lt!828921 () List!26171)

(declare-fun lt!828912 () List!26170)

(declare-fun contains!4353 (List!26171 tuple2!25292) Bool)

(assert (=> b!2223563 (contains!4353 lt!828921 (tuple2!25293 lt!828911 lt!828912))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!27 (List!26171 (_ BitVec 64) List!26170) Unit!39035)

(assert (=> b!2223563 (= lt!828916 (lemmaGetValueByKeyImpliesContainsTuple!27 lt!828921 lt!828911 lt!828912))))

(assert (=> b!2223563 (= lt!828912 (apply!6457 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828911))))

(declare-fun map!5300 (MutLongMap!2990) ListLongMap!295)

(assert (=> b!2223563 (= lt!828921 (toList!1302 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))

(declare-fun lt!828904 () Unit!39035)

(declare-fun lt!828905 () Unit!39035)

(assert (=> b!2223563 (= lt!828904 lt!828905)))

(declare-fun lt!828910 () List!26171)

(declare-datatypes ((Option!5072 0))(
  ( (None!5071) (Some!5071 (v!29635 List!26170)) )
))
(declare-fun isDefined!4129 (Option!5072) Bool)

(declare-fun getValueByKey!69 (List!26171 (_ BitVec 64)) Option!5072)

(assert (=> b!2223563 (isDefined!4129 (getValueByKey!69 lt!828910 lt!828911))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!44 (List!26171 (_ BitVec 64)) Unit!39035)

(assert (=> b!2223563 (= lt!828905 (lemmaContainsKeyImpliesGetValueByKeyDefined!44 lt!828910 lt!828911))))

(assert (=> b!2223563 (= lt!828910 (toList!1302 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))

(declare-fun lt!828908 () Unit!39035)

(declare-fun lt!828917 () Unit!39035)

(assert (=> b!2223563 (= lt!828908 lt!828917)))

(declare-fun lt!828915 () List!26171)

(declare-fun containsKey!67 (List!26171 (_ BitVec 64)) Bool)

(assert (=> b!2223563 (containsKey!67 lt!828915 lt!828911)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!27 (List!26171 (_ BitVec 64)) Unit!39035)

(assert (=> b!2223563 (= lt!828917 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!27 lt!828915 lt!828911))))

(assert (=> b!2223563 (= lt!828915 (toList!1302 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))

(declare-fun e!1420571 () Unit!39035)

(declare-fun Unit!39039 () Unit!39035)

(assert (=> b!2223563 (= e!1420571 Unit!39039)))

(declare-fun d!664314 () Bool)

(declare-fun lt!828907 () Bool)

(assert (=> d!664314 (= lt!828907 (contains!4351 (map!5299 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149)))))

(assert (=> d!664314 (= lt!828907 e!1420569)))

(declare-fun res!954000 () Bool)

(assert (=> d!664314 (=> (not res!954000) (not e!1420569))))

(declare-fun contains!4354 (MutLongMap!2990 (_ BitVec 64)) Bool)

(assert (=> d!664314 (= res!954000 (contains!4354 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828911))))

(declare-fun lt!828922 () Unit!39035)

(declare-fun e!1420574 () Unit!39035)

(assert (=> d!664314 (= lt!828922 e!1420574)))

(assert (=> d!664314 (= c!355030 (contains!4351 (extractMap!95 (toList!1302 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))) (tuple2!25289 context!72 a!1149)))))

(declare-fun lt!828918 () Unit!39035)

(assert (=> d!664314 (= lt!828918 e!1420573)))

(declare-fun c!355031 () Bool)

(assert (=> d!664314 (= c!355031 (contains!4354 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828911))))

(declare-fun hash!565 (Hashable!2900 tuple2!25288) (_ BitVec 64))

(assert (=> d!664314 (= lt!828911 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149)))))

(assert (=> d!664314 (valid!2301 (cache!3281 cacheUp!790))))

(assert (=> d!664314 (= (contains!4350 (cache!3281 cacheUp!790) (tuple2!25289 context!72 a!1149)) lt!828907)))

(declare-fun b!2223564 () Bool)

(declare-fun e!1420575 () Bool)

(declare-fun call!132827 () Bool)

(assert (=> b!2223564 (= e!1420575 call!132827)))

(declare-fun b!2223565 () Bool)

(declare-fun lt!828923 () Unit!39035)

(assert (=> b!2223565 (= e!1420574 lt!828923)))

(assert (=> b!2223565 (= lt!828914 call!132828)))

(declare-fun lemmaInGenericMapThenInLongMap!26 (ListLongMap!295 tuple2!25288 Hashable!2900) Unit!39035)

(assert (=> b!2223565 (= lt!828923 (lemmaInGenericMapThenInLongMap!26 lt!828914 (tuple2!25289 context!72 a!1149) (hashF!4823 (cache!3281 cacheUp!790))))))

(declare-fun res!954001 () Bool)

(assert (=> b!2223565 (= res!954001 call!132830)))

(assert (=> b!2223565 (=> (not res!954001) (not e!1420575))))

(assert (=> b!2223565 e!1420575))

(declare-fun bm!132822 () Bool)

(assert (=> bm!132822 (= call!132828 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))

(declare-fun b!2223566 () Bool)

(declare-fun e!1420572 () Bool)

(assert (=> b!2223566 (= e!1420572 call!132827)))

(declare-fun lambda!84024 () Int)

(declare-fun b!2223567 () Bool)

(declare-fun forallContained!773 (List!26171 Int tuple2!25292) Unit!39035)

(assert (=> b!2223567 (= e!1420573 (forallContained!773 (toList!1302 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))) lambda!84024 (tuple2!25293 lt!828911 (apply!6457 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828911))))))

(declare-fun c!355029 () Bool)

(assert (=> b!2223567 (= c!355029 (not (contains!4353 (toList!1302 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))) (tuple2!25293 lt!828911 (apply!6457 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828911)))))))

(declare-fun lt!828913 () Unit!39035)

(assert (=> b!2223567 (= lt!828913 e!1420571)))

(declare-fun bm!132823 () Bool)

(declare-fun call!132826 () Option!5071)

(assert (=> bm!132823 (= call!132827 (isDefined!4128 call!132826))))

(declare-fun call!132831 () List!26170)

(declare-fun bm!132824 () Bool)

(assert (=> bm!132824 (= call!132826 (getPair!26 call!132831 (tuple2!25289 context!72 a!1149)))))

(declare-fun bm!132825 () Bool)

(assert (=> bm!132825 (= call!132829 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149)))))

(declare-fun bm!132826 () Bool)

(declare-fun apply!6458 (ListLongMap!295 (_ BitVec 64)) List!26170)

(assert (=> bm!132826 (= call!132831 (apply!6458 (ite c!355030 lt!828914 call!132828) call!132829))))

(declare-fun b!2223568 () Bool)

(declare-fun Unit!39040 () Unit!39035)

(assert (=> b!2223568 (= e!1420571 Unit!39040)))

(declare-fun b!2223569 () Bool)

(assert (=> b!2223569 (= e!1420574 e!1420570)))

(declare-fun res!954002 () Bool)

(assert (=> b!2223569 (= res!954002 call!132830)))

(assert (=> b!2223569 (=> (not res!954002) (not e!1420572))))

(declare-fun c!355032 () Bool)

(assert (=> b!2223569 (= c!355032 e!1420572)))

(declare-fun b!2223570 () Bool)

(declare-fun Unit!39041 () Unit!39035)

(assert (=> b!2223570 (= e!1420570 Unit!39041)))

(assert (= (and d!664314 c!355031) b!2223567))

(assert (= (and d!664314 (not c!355031)) b!2223562))

(assert (= (and b!2223567 c!355029) b!2223563))

(assert (= (and b!2223567 (not c!355029)) b!2223568))

(assert (= (and d!664314 c!355030) b!2223565))

(assert (= (and d!664314 (not c!355030)) b!2223569))

(assert (= (and b!2223565 res!954001) b!2223564))

(assert (= (and b!2223569 res!954002) b!2223566))

(assert (= (and b!2223569 c!355032) b!2223560))

(assert (= (and b!2223569 (not c!355032)) b!2223570))

(assert (= (or b!2223565 b!2223564 b!2223569 b!2223566) bm!132825))

(assert (= (or b!2223565 b!2223569 b!2223566 b!2223560) bm!132822))

(assert (= (or b!2223564 b!2223566) bm!132826))

(assert (= (or b!2223565 b!2223569) bm!132821))

(assert (= (or b!2223564 b!2223566) bm!132824))

(assert (= (or b!2223564 b!2223566) bm!132823))

(assert (= (and d!664314 res!954000) b!2223561))

(declare-fun m!2663690 () Bool)

(assert (=> bm!132824 m!2663690))

(declare-fun m!2663692 () Bool)

(assert (=> b!2223565 m!2663692))

(declare-fun m!2663694 () Bool)

(assert (=> b!2223560 m!2663694))

(assert (=> b!2223560 m!2663694))

(declare-fun m!2663696 () Bool)

(assert (=> b!2223560 m!2663696))

(declare-fun m!2663698 () Bool)

(assert (=> b!2223560 m!2663698))

(declare-fun m!2663700 () Bool)

(assert (=> bm!132822 m!2663700))

(declare-fun m!2663702 () Bool)

(assert (=> d!664314 m!2663702))

(declare-fun m!2663704 () Bool)

(assert (=> d!664314 m!2663704))

(assert (=> d!664314 m!2663700))

(assert (=> d!664314 m!2663680))

(assert (=> d!664314 m!2663678))

(assert (=> d!664314 m!2663680))

(declare-fun m!2663706 () Bool)

(assert (=> d!664314 m!2663706))

(declare-fun m!2663708 () Bool)

(assert (=> d!664314 m!2663708))

(assert (=> d!664314 m!2663702))

(declare-fun m!2663710 () Bool)

(assert (=> d!664314 m!2663710))

(assert (=> bm!132825 m!2663710))

(declare-fun m!2663712 () Bool)

(assert (=> b!2223563 m!2663712))

(assert (=> b!2223563 m!2663700))

(declare-fun m!2663714 () Bool)

(assert (=> b!2223563 m!2663714))

(declare-fun m!2663716 () Bool)

(assert (=> b!2223563 m!2663716))

(declare-fun m!2663718 () Bool)

(assert (=> b!2223563 m!2663718))

(declare-fun m!2663720 () Bool)

(assert (=> b!2223563 m!2663720))

(declare-fun m!2663722 () Bool)

(assert (=> b!2223563 m!2663722))

(declare-fun m!2663724 () Bool)

(assert (=> b!2223563 m!2663724))

(assert (=> b!2223563 m!2663722))

(declare-fun m!2663726 () Bool)

(assert (=> b!2223563 m!2663726))

(assert (=> b!2223561 m!2663720))

(assert (=> b!2223561 m!2663720))

(declare-fun m!2663728 () Bool)

(assert (=> b!2223561 m!2663728))

(assert (=> b!2223561 m!2663728))

(declare-fun m!2663730 () Bool)

(assert (=> b!2223561 m!2663730))

(declare-fun m!2663732 () Bool)

(assert (=> bm!132823 m!2663732))

(declare-fun m!2663734 () Bool)

(assert (=> bm!132826 m!2663734))

(assert (=> b!2223567 m!2663700))

(assert (=> b!2223567 m!2663720))

(declare-fun m!2663736 () Bool)

(assert (=> b!2223567 m!2663736))

(declare-fun m!2663738 () Bool)

(assert (=> b!2223567 m!2663738))

(declare-fun m!2663740 () Bool)

(assert (=> bm!132821 m!2663740))

(assert (=> d!664294 d!664314))

(assert (=> d!664294 d!664306))

(declare-fun d!664316 () Bool)

(assert (=> d!664316 (= (get!7833 lt!828862) (v!29633 lt!828862))))

(assert (=> b!2223483 d!664316))

(declare-fun d!664318 () Bool)

(declare-fun c!355038 () Bool)

(declare-fun e!1420582 () Bool)

(assert (=> d!664318 (= c!355038 e!1420582)))

(declare-fun res!954005 () Bool)

(assert (=> d!664318 (=> (not res!954005) (not e!1420582))))

(assert (=> d!664318 (= res!954005 ((_ is Cons!26075) (exprs!2401 context!72)))))

(declare-fun e!1420583 () (InoxSet Context!3802))

(assert (=> d!664318 (= (derivationStepZipperUp!23 context!72 a!1149) e!1420583)))

(declare-fun b!2223581 () Bool)

(assert (=> b!2223581 (= e!1420582 (nullable!1732 (h!31476 (exprs!2401 context!72))))))

(declare-fun b!2223582 () Bool)

(declare-fun e!1420584 () (InoxSet Context!3802))

(assert (=> b!2223582 (= e!1420583 e!1420584)))

(declare-fun c!355037 () Bool)

(assert (=> b!2223582 (= c!355037 ((_ is Cons!26075) (exprs!2401 context!72)))))

(declare-fun b!2223583 () Bool)

(assert (=> b!2223583 (= e!1420584 ((as const (Array Context!3802 Bool)) false))))

(declare-fun bm!132829 () Bool)

(declare-fun call!132834 () (InoxSet Context!3802))

(declare-fun derivationStepZipperDown!23 (Regex!6353 Context!3802 C!12852) (InoxSet Context!3802))

(assert (=> bm!132829 (= call!132834 (derivationStepZipperDown!23 (h!31476 (exprs!2401 context!72)) (Context!3803 (t!199579 (exprs!2401 context!72))) a!1149))))

(declare-fun b!2223584 () Bool)

(assert (=> b!2223584 (= e!1420583 ((_ map or) call!132834 (derivationStepZipperUp!23 (Context!3803 (t!199579 (exprs!2401 context!72))) a!1149)))))

(declare-fun b!2223585 () Bool)

(assert (=> b!2223585 (= e!1420584 call!132834)))

(assert (= (and d!664318 res!954005) b!2223581))

(assert (= (and d!664318 c!355038) b!2223584))

(assert (= (and d!664318 (not c!355038)) b!2223582))

(assert (= (and b!2223582 c!355037) b!2223585))

(assert (= (and b!2223582 (not c!355037)) b!2223583))

(assert (= (or b!2223584 b!2223585) bm!132829))

(assert (=> b!2223581 m!2663613))

(declare-fun m!2663742 () Bool)

(assert (=> bm!132829 m!2663742))

(declare-fun m!2663744 () Bool)

(assert (=> b!2223584 m!2663744))

(assert (=> b!2223483 d!664318))

(declare-fun bs!453361 () Bool)

(declare-fun d!664320 () Bool)

(assert (= bs!453361 (and d!664320 d!664308)))

(declare-fun lambda!84025 () Int)

(assert (=> bs!453361 (= lambda!84025 lambda!84020)))

(declare-fun bs!453362 () Bool)

(assert (= bs!453362 (and d!664320 d!664310)))

(assert (=> bs!453362 (= lambda!84025 lambda!84021)))

(declare-fun bs!453363 () Bool)

(assert (= bs!453363 (and d!664320 d!664298)))

(assert (=> bs!453363 (= lambda!84025 lambda!84014)))

(declare-fun bs!453364 () Bool)

(assert (= bs!453364 (and d!664320 d!664304)))

(assert (=> bs!453364 (= lambda!84025 lambda!84016)))

(declare-fun bs!453365 () Bool)

(assert (= bs!453365 (and d!664320 d!664300)))

(assert (=> bs!453365 (= lambda!84025 lambda!84015)))

(assert (=> d!664320 (= (inv!35404 setElem!19646) (forall!5313 (exprs!2401 setElem!19646) lambda!84025))))

(declare-fun bs!453366 () Bool)

(assert (= bs!453366 d!664320))

(declare-fun m!2663746 () Bool)

(assert (=> bs!453366 m!2663746))

(assert (=> setNonEmpty!19646 d!664320))

(declare-fun bs!453367 () Bool)

(declare-fun d!664322 () Bool)

(assert (= bs!453367 (and d!664322 d!664308)))

(declare-fun lambda!84026 () Int)

(assert (=> bs!453367 (= lambda!84026 lambda!84020)))

(declare-fun bs!453368 () Bool)

(assert (= bs!453368 (and d!664322 d!664320)))

(assert (=> bs!453368 (= lambda!84026 lambda!84025)))

(declare-fun bs!453369 () Bool)

(assert (= bs!453369 (and d!664322 d!664310)))

(assert (=> bs!453369 (= lambda!84026 lambda!84021)))

(declare-fun bs!453370 () Bool)

(assert (= bs!453370 (and d!664322 d!664298)))

(assert (=> bs!453370 (= lambda!84026 lambda!84014)))

(declare-fun bs!453371 () Bool)

(assert (= bs!453371 (and d!664322 d!664304)))

(assert (=> bs!453371 (= lambda!84026 lambda!84016)))

(declare-fun bs!453372 () Bool)

(assert (= bs!453372 (and d!664322 d!664300)))

(assert (=> bs!453372 (= lambda!84026 lambda!84015)))

(assert (=> d!664322 (= (inv!35404 (_1!15026 (_1!15027 (h!31477 mapValue!14111)))) (forall!5313 (exprs!2401 (_1!15026 (_1!15027 (h!31477 mapValue!14111)))) lambda!84026))))

(declare-fun bs!453373 () Bool)

(assert (= bs!453373 d!664322))

(declare-fun m!2663748 () Bool)

(assert (=> bs!453373 m!2663748))

(assert (=> b!2223531 d!664322))

(declare-fun bs!453374 () Bool)

(declare-fun d!664324 () Bool)

(assert (= bs!453374 (and d!664324 d!664308)))

(declare-fun lambda!84027 () Int)

(assert (=> bs!453374 (= lambda!84027 lambda!84020)))

(declare-fun bs!453375 () Bool)

(assert (= bs!453375 (and d!664324 d!664320)))

(assert (=> bs!453375 (= lambda!84027 lambda!84025)))

(declare-fun bs!453376 () Bool)

(assert (= bs!453376 (and d!664324 d!664310)))

(assert (=> bs!453376 (= lambda!84027 lambda!84021)))

(declare-fun bs!453377 () Bool)

(assert (= bs!453377 (and d!664324 d!664298)))

(assert (=> bs!453377 (= lambda!84027 lambda!84014)))

(declare-fun bs!453378 () Bool)

(assert (= bs!453378 (and d!664324 d!664304)))

(assert (=> bs!453378 (= lambda!84027 lambda!84016)))

(declare-fun bs!453379 () Bool)

(assert (= bs!453379 (and d!664324 d!664300)))

(assert (=> bs!453379 (= lambda!84027 lambda!84015)))

(declare-fun bs!453380 () Bool)

(assert (= bs!453380 (and d!664324 d!664322)))

(assert (=> bs!453380 (= lambda!84027 lambda!84026)))

(assert (=> d!664324 (= (inv!35404 setElem!19640) (forall!5313 (exprs!2401 setElem!19640) lambda!84027))))

(declare-fun bs!453381 () Bool)

(assert (= bs!453381 d!664324))

(declare-fun m!2663750 () Bool)

(assert (=> bs!453381 m!2663750))

(assert (=> setNonEmpty!19640 d!664324))

(declare-fun bs!453382 () Bool)

(declare-fun b!2223600 () Bool)

(assert (= bs!453382 (and b!2223600 b!2223567)))

(declare-fun lambda!84034 () Int)

(assert (=> bs!453382 (= lambda!84034 lambda!84024)))

(declare-fun b!2223598 () Bool)

(declare-fun e!1420592 () Bool)

(declare-fun lt!828989 () (InoxSet Context!3802))

(declare-fun getValueByKey!70 (List!26170 tuple2!25288) Option!5070)

(assert (=> b!2223598 (= e!1420592 (= lt!828989 (get!7833 (getValueByKey!70 (toList!1301 (map!5299 (cache!3281 cacheUp!790))) (tuple2!25289 context!72 a!1149)))))))

(declare-fun b!2223599 () Bool)

(declare-fun dynLambda!11512 (Int tuple2!25288) (InoxSet Context!3802))

(assert (=> b!2223599 (= e!1420592 (= lt!828989 (dynLambda!11512 (defaultValue!3062 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149))))))

(declare-fun d!664326 () Bool)

(assert (=> d!664326 e!1420592))

(declare-fun c!355047 () Bool)

(assert (=> d!664326 (= c!355047 (contains!4350 (cache!3281 cacheUp!790) (tuple2!25289 context!72 a!1149)))))

(declare-fun e!1420593 () (InoxSet Context!3802))

(assert (=> d!664326 (= lt!828989 e!1420593)))

(declare-fun c!355046 () Bool)

(assert (=> d!664326 (= c!355046 (not (contains!4350 (cache!3281 cacheUp!790) (tuple2!25289 context!72 a!1149))))))

(assert (=> d!664326 (valid!2301 (cache!3281 cacheUp!790))))

(assert (=> d!664326 (= (apply!6456 (cache!3281 cacheUp!790) (tuple2!25289 context!72 a!1149)) lt!828989)))

(declare-fun lt!828990 () (_ BitVec 64))

(declare-fun get!7834 (Option!5071) tuple2!25290)

(assert (=> b!2223600 (= e!1420593 (_2!15027 (get!7834 (getPair!26 (apply!6457 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828990) (tuple2!25289 context!72 a!1149)))))))

(assert (=> b!2223600 (= lt!828990 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149)))))

(declare-fun c!355045 () Bool)

(assert (=> b!2223600 (= c!355045 (not (contains!4353 (toList!1302 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))) (tuple2!25293 lt!828990 (apply!6457 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828990)))))))

(declare-fun lt!828996 () Unit!39035)

(declare-fun e!1420591 () Unit!39035)

(assert (=> b!2223600 (= lt!828996 e!1420591)))

(declare-fun lt!829006 () Unit!39035)

(assert (=> b!2223600 (= lt!829006 (forallContained!773 (toList!1302 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))) lambda!84034 (tuple2!25293 lt!828990 (apply!6457 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828990))))))

(declare-fun lt!829002 () ListLongMap!295)

(assert (=> b!2223600 (= lt!829002 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))

(declare-fun lt!828991 () Unit!39035)

(declare-fun lemmaGetPairGetSameValueAsMap!16 (ListLongMap!295 tuple2!25288 (InoxSet Context!3802) Hashable!2900) Unit!39035)

(assert (=> b!2223600 (= lt!828991 (lemmaGetPairGetSameValueAsMap!16 lt!829002 (tuple2!25289 context!72 a!1149) (_2!15027 (get!7834 (getPair!26 (apply!6457 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828990) (tuple2!25289 context!72 a!1149)))) (hashF!4823 (cache!3281 cacheUp!790))))))

(declare-fun lt!828985 () Unit!39035)

(declare-fun lemmaInGenMapThenLongMapContainsHash!16 (ListLongMap!295 tuple2!25288 Hashable!2900) Unit!39035)

(assert (=> b!2223600 (= lt!828985 (lemmaInGenMapThenLongMapContainsHash!16 lt!829002 (tuple2!25289 context!72 a!1149) (hashF!4823 (cache!3281 cacheUp!790))))))

(assert (=> b!2223600 (contains!4352 lt!829002 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149)))))

(declare-fun lt!828994 () Unit!39035)

(assert (=> b!2223600 (= lt!828994 lt!828985)))

(declare-fun lt!829013 () (_ BitVec 64))

(assert (=> b!2223600 (= lt!829013 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149)))))

(declare-fun lt!828999 () List!26170)

(assert (=> b!2223600 (= lt!828999 (apply!6458 lt!829002 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149))))))

(declare-fun lt!828992 () Unit!39035)

(declare-fun lemmaGetValueImpliesTupleContained!17 (ListLongMap!295 (_ BitVec 64) List!26170) Unit!39035)

(assert (=> b!2223600 (= lt!828992 (lemmaGetValueImpliesTupleContained!17 lt!829002 lt!829013 lt!828999))))

(assert (=> b!2223600 (contains!4353 (toList!1302 lt!829002) (tuple2!25293 lt!829013 lt!828999))))

(declare-fun lt!829007 () Unit!39035)

(assert (=> b!2223600 (= lt!829007 lt!828992)))

(declare-fun lt!829005 () Unit!39035)

(assert (=> b!2223600 (= lt!829005 (forallContained!773 (toList!1302 lt!829002) lambda!84034 (tuple2!25293 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149)) (apply!6458 lt!829002 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149))))))))

(declare-fun lt!829001 () Unit!39035)

(declare-fun lemmaInGenMapThenGetPairDefined!16 (ListLongMap!295 tuple2!25288 Hashable!2900) Unit!39035)

(assert (=> b!2223600 (= lt!829001 (lemmaInGenMapThenGetPairDefined!16 lt!829002 (tuple2!25289 context!72 a!1149) (hashF!4823 (cache!3281 cacheUp!790))))))

(declare-fun lt!828997 () Unit!39035)

(assert (=> b!2223600 (= lt!828997 (lemmaInGenMapThenLongMapContainsHash!16 lt!829002 (tuple2!25289 context!72 a!1149) (hashF!4823 (cache!3281 cacheUp!790))))))

(declare-fun lt!829000 () Unit!39035)

(assert (=> b!2223600 (= lt!829000 lt!828997)))

(declare-fun lt!828993 () (_ BitVec 64))

(assert (=> b!2223600 (= lt!828993 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149)))))

(declare-fun lt!828987 () List!26170)

(assert (=> b!2223600 (= lt!828987 (apply!6458 lt!829002 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149))))))

(declare-fun lt!829008 () Unit!39035)

(assert (=> b!2223600 (= lt!829008 (lemmaGetValueImpliesTupleContained!17 lt!829002 lt!828993 lt!828987))))

(assert (=> b!2223600 (contains!4353 (toList!1302 lt!829002) (tuple2!25293 lt!828993 lt!828987))))

(declare-fun lt!828988 () Unit!39035)

(assert (=> b!2223600 (= lt!828988 lt!829008)))

(declare-fun lt!828995 () Unit!39035)

(assert (=> b!2223600 (= lt!828995 (forallContained!773 (toList!1302 lt!829002) lambda!84034 (tuple2!25293 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149)) (apply!6458 lt!829002 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149))))))))

(assert (=> b!2223600 (isDefined!4128 (getPair!26 (apply!6458 lt!829002 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149))) (tuple2!25289 context!72 a!1149)))))

(declare-fun lt!829012 () Unit!39035)

(assert (=> b!2223600 (= lt!829012 lt!829001)))

(assert (=> b!2223600 (= (_2!15027 (get!7834 (getPair!26 (apply!6458 lt!829002 (hash!565 (hashF!4823 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149))) (tuple2!25289 context!72 a!1149)))) (get!7833 (getValueByKey!70 (toList!1301 (extractMap!95 (toList!1302 lt!829002))) (tuple2!25289 context!72 a!1149))))))

(declare-fun lt!829003 () Unit!39035)

(assert (=> b!2223600 (= lt!829003 lt!828991)))

(declare-fun b!2223601 () Bool)

(assert (=> b!2223601 false))

(declare-fun lt!828986 () Unit!39035)

(declare-fun lt!829004 () Unit!39035)

(assert (=> b!2223601 (= lt!828986 lt!829004)))

(declare-fun lt!828984 () List!26171)

(declare-fun lt!829009 () List!26170)

(assert (=> b!2223601 (contains!4353 lt!828984 (tuple2!25293 lt!828990 lt!829009))))

(assert (=> b!2223601 (= lt!829004 (lemmaGetValueByKeyImpliesContainsTuple!27 lt!828984 lt!828990 lt!829009))))

(assert (=> b!2223601 (= lt!829009 (apply!6457 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))) lt!828990))))

(assert (=> b!2223601 (= lt!828984 (toList!1302 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))

(declare-fun lt!829011 () Unit!39035)

(declare-fun lt!828998 () Unit!39035)

(assert (=> b!2223601 (= lt!829011 lt!828998)))

(declare-fun lt!829010 () List!26171)

(assert (=> b!2223601 (isDefined!4129 (getValueByKey!69 lt!829010 lt!828990))))

(assert (=> b!2223601 (= lt!828998 (lemmaContainsKeyImpliesGetValueByKeyDefined!44 lt!829010 lt!828990))))

(assert (=> b!2223601 (= lt!829010 (toList!1302 (map!5300 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))

(declare-fun Unit!39042 () Unit!39035)

(assert (=> b!2223601 (= e!1420591 Unit!39042)))

(declare-fun b!2223602 () Bool)

(declare-fun Unit!39043 () Unit!39035)

(assert (=> b!2223602 (= e!1420591 Unit!39043)))

(declare-fun b!2223603 () Bool)

(assert (=> b!2223603 (= e!1420593 (dynLambda!11512 (defaultValue!3062 (cache!3281 cacheUp!790)) (tuple2!25289 context!72 a!1149)))))

(assert (= (and d!664326 c!355046) b!2223603))

(assert (= (and d!664326 (not c!355046)) b!2223600))

(assert (= (and b!2223600 c!355045) b!2223601))

(assert (= (and b!2223600 (not c!355045)) b!2223602))

(assert (= (and d!664326 c!355047) b!2223598))

(assert (= (and d!664326 (not c!355047)) b!2223599))

(declare-fun b_lambda!71597 () Bool)

(assert (=> (not b_lambda!71597) (not b!2223599)))

(declare-fun t!199582 () Bool)

(declare-fun tb!132849 () Bool)

(assert (=> (and b!2223465 (= (defaultValue!3062 (cache!3281 cacheUp!790)) (defaultValue!3062 (cache!3281 cacheUp!790))) t!199582) tb!132849))

(assert (=> b!2223599 t!199582))

(declare-fun result!161384 () Bool)

(declare-fun b_and!174405 () Bool)

(assert (= b_and!174403 (and (=> t!199582 result!161384) b_and!174405)))

(declare-fun b_lambda!71599 () Bool)

(assert (=> (not b_lambda!71599) (not b!2223603)))

(assert (=> b!2223603 t!199582))

(declare-fun b_and!174407 () Bool)

(assert (= b_and!174405 (and (=> t!199582 result!161384) b_and!174407)))

(declare-fun m!2663752 () Bool)

(assert (=> b!2223599 m!2663752))

(declare-fun m!2663754 () Bool)

(assert (=> b!2223601 m!2663754))

(assert (=> b!2223601 m!2663754))

(declare-fun m!2663756 () Bool)

(assert (=> b!2223601 m!2663756))

(declare-fun m!2663758 () Bool)

(assert (=> b!2223601 m!2663758))

(declare-fun m!2663760 () Bool)

(assert (=> b!2223601 m!2663760))

(assert (=> b!2223601 m!2663700))

(declare-fun m!2663762 () Bool)

(assert (=> b!2223601 m!2663762))

(declare-fun m!2663764 () Bool)

(assert (=> b!2223601 m!2663764))

(assert (=> b!2223603 m!2663752))

(assert (=> b!2223598 m!2663680))

(declare-fun m!2663766 () Bool)

(assert (=> b!2223598 m!2663766))

(assert (=> b!2223598 m!2663766))

(declare-fun m!2663768 () Bool)

(assert (=> b!2223598 m!2663768))

(assert (=> d!664326 m!2663631))

(assert (=> d!664326 m!2663678))

(assert (=> b!2223600 m!2663758))

(declare-fun m!2663770 () Bool)

(assert (=> b!2223600 m!2663770))

(declare-fun m!2663772 () Bool)

(assert (=> b!2223600 m!2663772))

(assert (=> b!2223600 m!2663710))

(declare-fun m!2663774 () Bool)

(assert (=> b!2223600 m!2663774))

(assert (=> b!2223600 m!2663758))

(assert (=> b!2223600 m!2663774))

(declare-fun m!2663776 () Bool)

(assert (=> b!2223600 m!2663776))

(declare-fun m!2663778 () Bool)

(assert (=> b!2223600 m!2663778))

(assert (=> b!2223600 m!2663770))

(declare-fun m!2663780 () Bool)

(assert (=> b!2223600 m!2663780))

(declare-fun m!2663782 () Bool)

(assert (=> b!2223600 m!2663782))

(declare-fun m!2663784 () Bool)

(assert (=> b!2223600 m!2663784))

(assert (=> b!2223600 m!2663700))

(declare-fun m!2663786 () Bool)

(assert (=> b!2223600 m!2663786))

(assert (=> b!2223600 m!2663776))

(declare-fun m!2663788 () Bool)

(assert (=> b!2223600 m!2663788))

(declare-fun m!2663790 () Bool)

(assert (=> b!2223600 m!2663790))

(assert (=> b!2223600 m!2663710))

(declare-fun m!2663792 () Bool)

(assert (=> b!2223600 m!2663792))

(assert (=> b!2223600 m!2663710))

(declare-fun m!2663794 () Bool)

(assert (=> b!2223600 m!2663794))

(assert (=> b!2223600 m!2663794))

(declare-fun m!2663796 () Bool)

(assert (=> b!2223600 m!2663796))

(declare-fun m!2663798 () Bool)

(assert (=> b!2223600 m!2663798))

(assert (=> b!2223600 m!2663782))

(declare-fun m!2663800 () Bool)

(assert (=> b!2223600 m!2663800))

(assert (=> b!2223600 m!2663776))

(declare-fun m!2663802 () Bool)

(assert (=> b!2223600 m!2663802))

(declare-fun m!2663804 () Bool)

(assert (=> b!2223600 m!2663804))

(declare-fun m!2663806 () Bool)

(assert (=> b!2223600 m!2663806))

(declare-fun m!2663808 () Bool)

(assert (=> b!2223600 m!2663808))

(assert (=> b!2223481 d!664326))

(declare-fun bs!453383 () Bool)

(declare-fun b!2223610 () Bool)

(assert (= bs!453383 (and b!2223610 b!2223537)))

(declare-fun lambda!84037 () Int)

(assert (=> bs!453383 (= lambda!84037 lambda!84019)))

(declare-fun d!664328 () Bool)

(declare-fun e!1420601 () Bool)

(assert (=> d!664328 e!1420601))

(declare-fun res!954008 () Bool)

(assert (=> d!664328 (=> res!954008 e!1420601)))

(assert (=> d!664328 (= res!954008 (not (contains!4350 (cache!3281 cacheUp!790) (tuple2!25289 context!72 a!1149))))))

(declare-fun lt!829029 () Unit!39035)

(declare-fun e!1420602 () Unit!39035)

(assert (=> d!664328 (= lt!829029 e!1420602)))

(declare-fun c!355050 () Bool)

(assert (=> d!664328 (= c!355050 (contains!4350 (cache!3281 cacheUp!790) (tuple2!25289 context!72 a!1149)))))

(assert (=> d!664328 (validCacheMapUp!273 (cache!3281 cacheUp!790))))

(assert (=> d!664328 (= (lemmaIfInCacheThenValid!25 cacheUp!790 context!72 a!1149) lt!829029)))

(declare-fun lt!829034 () Unit!39035)

(assert (=> b!2223610 (= e!1420602 lt!829034)))

(declare-fun lt!829031 () tuple2!25288)

(assert (=> b!2223610 (= lt!829031 (tuple2!25289 context!72 a!1149))))

(declare-fun lemmaForallPairsThenForLookup!18 (MutableMap!2900 tuple2!25288 Int) Unit!39035)

(assert (=> b!2223610 (= lt!829034 (lemmaForallPairsThenForLookup!18 (cache!3281 cacheUp!790) lt!829031 lambda!84037))))

(declare-fun lt!829028 () tuple2!25290)

(assert (=> b!2223610 (= lt!829028 (tuple2!25291 lt!829031 (apply!6456 (cache!3281 cacheUp!790) lt!829031)))))

(declare-fun lt!829032 () tuple2!25288)

(assert (=> b!2223610 (= lt!829032 lt!829031)))

(declare-fun lt!829030 () (InoxSet Context!3802))

(assert (=> b!2223610 (= lt!829030 (apply!6456 (cache!3281 cacheUp!790) lt!829031))))

(declare-fun lt!829033 () (InoxSet Context!3802))

(assert (=> b!2223610 (= lt!829033 (apply!6456 (cache!3281 cacheUp!790) lt!829031))))

(assert (=> b!2223610 (= (apply!6456 (cache!3281 cacheUp!790) lt!829031) (derivationStepZipperUp!23 (_1!15026 lt!829031) (_2!15026 lt!829031)))))

(declare-fun b!2223611 () Bool)

(declare-fun Unit!39044 () Unit!39035)

(assert (=> b!2223611 (= e!1420602 Unit!39044)))

(declare-fun b!2223612 () Bool)

(assert (=> b!2223612 (= e!1420601 (= (derivationStepZipperUp!23 context!72 a!1149) (apply!6456 (cache!3281 cacheUp!790) (tuple2!25289 context!72 a!1149))))))

(assert (= (and d!664328 c!355050) b!2223610))

(assert (= (and d!664328 (not c!355050)) b!2223611))

(assert (= (and d!664328 (not res!954008)) b!2223612))

(assert (=> d!664328 m!2663631))

(assert (=> d!664328 m!2663633))

(declare-fun m!2663810 () Bool)

(assert (=> b!2223610 m!2663810))

(declare-fun m!2663812 () Bool)

(assert (=> b!2223610 m!2663812))

(declare-fun m!2663814 () Bool)

(assert (=> b!2223610 m!2663814))

(assert (=> b!2223612 m!2663641))

(assert (=> b!2223612 m!2663635))

(assert (=> b!2223481 d!664328))

(declare-fun d!664330 () Bool)

(declare-fun res!954013 () Bool)

(declare-fun e!1420607 () Bool)

(assert (=> d!664330 (=> res!954013 e!1420607)))

(assert (=> d!664330 (= res!954013 ((_ is Nil!26075) (exprs!2401 context!72)))))

(assert (=> d!664330 (= (forall!5313 (exprs!2401 context!72) lambda!84014) e!1420607)))

(declare-fun b!2223617 () Bool)

(declare-fun e!1420608 () Bool)

(assert (=> b!2223617 (= e!1420607 e!1420608)))

(declare-fun res!954014 () Bool)

(assert (=> b!2223617 (=> (not res!954014) (not e!1420608))))

(declare-fun dynLambda!11513 (Int Regex!6353) Bool)

(assert (=> b!2223617 (= res!954014 (dynLambda!11513 lambda!84014 (h!31476 (exprs!2401 context!72))))))

(declare-fun b!2223618 () Bool)

(assert (=> b!2223618 (= e!1420608 (forall!5313 (t!199579 (exprs!2401 context!72)) lambda!84014))))

(assert (= (and d!664330 (not res!954013)) b!2223617))

(assert (= (and b!2223617 res!954014) b!2223618))

(declare-fun b_lambda!71601 () Bool)

(assert (=> (not b_lambda!71601) (not b!2223617)))

(declare-fun m!2663816 () Bool)

(assert (=> b!2223617 m!2663816))

(declare-fun m!2663818 () Bool)

(assert (=> b!2223618 m!2663818))

(assert (=> d!664298 d!664330))

(declare-fun bs!453384 () Bool)

(declare-fun d!664332 () Bool)

(assert (= bs!453384 (and d!664332 d!664308)))

(declare-fun lambda!84038 () Int)

(assert (=> bs!453384 (= lambda!84038 lambda!84020)))

(declare-fun bs!453385 () Bool)

(assert (= bs!453385 (and d!664332 d!664320)))

(assert (=> bs!453385 (= lambda!84038 lambda!84025)))

(declare-fun bs!453386 () Bool)

(assert (= bs!453386 (and d!664332 d!664310)))

(assert (=> bs!453386 (= lambda!84038 lambda!84021)))

(declare-fun bs!453387 () Bool)

(assert (= bs!453387 (and d!664332 d!664298)))

(assert (=> bs!453387 (= lambda!84038 lambda!84014)))

(declare-fun bs!453388 () Bool)

(assert (= bs!453388 (and d!664332 d!664304)))

(assert (=> bs!453388 (= lambda!84038 lambda!84016)))

(declare-fun bs!453389 () Bool)

(assert (= bs!453389 (and d!664332 d!664324)))

(assert (=> bs!453389 (= lambda!84038 lambda!84027)))

(declare-fun bs!453390 () Bool)

(assert (= bs!453390 (and d!664332 d!664300)))

(assert (=> bs!453390 (= lambda!84038 lambda!84015)))

(declare-fun bs!453391 () Bool)

(assert (= bs!453391 (and d!664332 d!664322)))

(assert (=> bs!453391 (= lambda!84038 lambda!84026)))

(assert (=> d!664332 (= (inv!35404 (_1!15026 (_1!15027 (h!31477 mapValue!14114)))) (forall!5313 (exprs!2401 (_1!15026 (_1!15027 (h!31477 mapValue!14114)))) lambda!84038))))

(declare-fun bs!453392 () Bool)

(assert (= bs!453392 d!664332))

(declare-fun m!2663820 () Bool)

(assert (=> bs!453392 m!2663820))

(assert (=> b!2223525 d!664332))

(declare-fun bs!453393 () Bool)

(declare-fun d!664334 () Bool)

(assert (= bs!453393 (and d!664334 d!664332)))

(declare-fun lambda!84039 () Int)

(assert (=> bs!453393 (= lambda!84039 lambda!84038)))

(declare-fun bs!453394 () Bool)

(assert (= bs!453394 (and d!664334 d!664308)))

(assert (=> bs!453394 (= lambda!84039 lambda!84020)))

(declare-fun bs!453395 () Bool)

(assert (= bs!453395 (and d!664334 d!664320)))

(assert (=> bs!453395 (= lambda!84039 lambda!84025)))

(declare-fun bs!453396 () Bool)

(assert (= bs!453396 (and d!664334 d!664310)))

(assert (=> bs!453396 (= lambda!84039 lambda!84021)))

(declare-fun bs!453397 () Bool)

(assert (= bs!453397 (and d!664334 d!664298)))

(assert (=> bs!453397 (= lambda!84039 lambda!84014)))

(declare-fun bs!453398 () Bool)

(assert (= bs!453398 (and d!664334 d!664304)))

(assert (=> bs!453398 (= lambda!84039 lambda!84016)))

(declare-fun bs!453399 () Bool)

(assert (= bs!453399 (and d!664334 d!664324)))

(assert (=> bs!453399 (= lambda!84039 lambda!84027)))

(declare-fun bs!453400 () Bool)

(assert (= bs!453400 (and d!664334 d!664300)))

(assert (=> bs!453400 (= lambda!84039 lambda!84015)))

(declare-fun bs!453401 () Bool)

(assert (= bs!453401 (and d!664334 d!664322)))

(assert (=> bs!453401 (= lambda!84039 lambda!84026)))

(assert (=> d!664334 (= (inv!35404 (_1!15026 (_1!15027 (h!31477 (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))))) (forall!5313 (exprs!2401 (_1!15026 (_1!15027 (h!31477 (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))))) lambda!84039))))

(declare-fun bs!453402 () Bool)

(assert (= bs!453402 d!664334))

(declare-fun m!2663822 () Bool)

(assert (=> bs!453402 m!2663822))

(assert (=> b!2223505 d!664334))

(declare-fun bs!453403 () Bool)

(declare-fun d!664336 () Bool)

(assert (= bs!453403 (and d!664336 d!664332)))

(declare-fun lambda!84040 () Int)

(assert (=> bs!453403 (= lambda!84040 lambda!84038)))

(declare-fun bs!453404 () Bool)

(assert (= bs!453404 (and d!664336 d!664308)))

(assert (=> bs!453404 (= lambda!84040 lambda!84020)))

(declare-fun bs!453405 () Bool)

(assert (= bs!453405 (and d!664336 d!664320)))

(assert (=> bs!453405 (= lambda!84040 lambda!84025)))

(declare-fun bs!453406 () Bool)

(assert (= bs!453406 (and d!664336 d!664310)))

(assert (=> bs!453406 (= lambda!84040 lambda!84021)))

(declare-fun bs!453407 () Bool)

(assert (= bs!453407 (and d!664336 d!664304)))

(assert (=> bs!453407 (= lambda!84040 lambda!84016)))

(declare-fun bs!453408 () Bool)

(assert (= bs!453408 (and d!664336 d!664324)))

(assert (=> bs!453408 (= lambda!84040 lambda!84027)))

(declare-fun bs!453409 () Bool)

(assert (= bs!453409 (and d!664336 d!664300)))

(assert (=> bs!453409 (= lambda!84040 lambda!84015)))

(declare-fun bs!453410 () Bool)

(assert (= bs!453410 (and d!664336 d!664322)))

(assert (=> bs!453410 (= lambda!84040 lambda!84026)))

(declare-fun bs!453411 () Bool)

(assert (= bs!453411 (and d!664336 d!664334)))

(assert (=> bs!453411 (= lambda!84040 lambda!84039)))

(declare-fun bs!453412 () Bool)

(assert (= bs!453412 (and d!664336 d!664298)))

(assert (=> bs!453412 (= lambda!84040 lambda!84014)))

(assert (=> d!664336 (= (inv!35404 setElem!19647) (forall!5313 (exprs!2401 setElem!19647) lambda!84040))))

(declare-fun bs!453413 () Bool)

(assert (= bs!453413 d!664336))

(declare-fun m!2663824 () Bool)

(assert (=> bs!453413 m!2663824))

(assert (=> setNonEmpty!19647 d!664336))

(declare-fun bs!453414 () Bool)

(declare-fun d!664338 () Bool)

(assert (= bs!453414 (and d!664338 d!664332)))

(declare-fun lambda!84041 () Int)

(assert (=> bs!453414 (= lambda!84041 lambda!84038)))

(declare-fun bs!453415 () Bool)

(assert (= bs!453415 (and d!664338 d!664308)))

(assert (=> bs!453415 (= lambda!84041 lambda!84020)))

(declare-fun bs!453416 () Bool)

(assert (= bs!453416 (and d!664338 d!664320)))

(assert (=> bs!453416 (= lambda!84041 lambda!84025)))

(declare-fun bs!453417 () Bool)

(assert (= bs!453417 (and d!664338 d!664310)))

(assert (=> bs!453417 (= lambda!84041 lambda!84021)))

(declare-fun bs!453418 () Bool)

(assert (= bs!453418 (and d!664338 d!664336)))

(assert (=> bs!453418 (= lambda!84041 lambda!84040)))

(declare-fun bs!453419 () Bool)

(assert (= bs!453419 (and d!664338 d!664304)))

(assert (=> bs!453419 (= lambda!84041 lambda!84016)))

(declare-fun bs!453420 () Bool)

(assert (= bs!453420 (and d!664338 d!664324)))

(assert (=> bs!453420 (= lambda!84041 lambda!84027)))

(declare-fun bs!453421 () Bool)

(assert (= bs!453421 (and d!664338 d!664300)))

(assert (=> bs!453421 (= lambda!84041 lambda!84015)))

(declare-fun bs!453422 () Bool)

(assert (= bs!453422 (and d!664338 d!664322)))

(assert (=> bs!453422 (= lambda!84041 lambda!84026)))

(declare-fun bs!453423 () Bool)

(assert (= bs!453423 (and d!664338 d!664334)))

(assert (=> bs!453423 (= lambda!84041 lambda!84039)))

(declare-fun bs!453424 () Bool)

(assert (= bs!453424 (and d!664338 d!664298)))

(assert (=> bs!453424 (= lambda!84041 lambda!84014)))

(assert (=> d!664338 (= (inv!35404 (_1!15026 (_1!15027 (h!31477 mapDefault!14111)))) (forall!5313 (exprs!2401 (_1!15026 (_1!15027 (h!31477 mapDefault!14111)))) lambda!84041))))

(declare-fun bs!453425 () Bool)

(assert (= bs!453425 d!664338))

(declare-fun m!2663826 () Bool)

(assert (=> bs!453425 m!2663826))

(assert (=> b!2223508 d!664338))

(declare-fun b!2223633 () Bool)

(declare-fun e!1420621 () Bool)

(declare-fun e!1420625 () Bool)

(assert (=> b!2223633 (= e!1420621 e!1420625)))

(declare-fun res!954029 () Bool)

(assert (=> b!2223633 (=> res!954029 e!1420625)))

(assert (=> b!2223633 (= res!954029 ((_ is Star!6353) (h!31476 (exprs!2401 context!72))))))

(declare-fun b!2223634 () Bool)

(declare-fun e!1420624 () Bool)

(declare-fun call!132839 () Bool)

(assert (=> b!2223634 (= e!1420624 call!132839)))

(declare-fun bm!132834 () Bool)

(declare-fun call!132840 () Bool)

(declare-fun c!355053 () Bool)

(assert (=> bm!132834 (= call!132840 (nullable!1732 (ite c!355053 (regOne!13219 (h!31476 (exprs!2401 context!72))) (regOne!13218 (h!31476 (exprs!2401 context!72))))))))

(declare-fun b!2223635 () Bool)

(declare-fun e!1420622 () Bool)

(assert (=> b!2223635 (= e!1420622 e!1420624)))

(declare-fun res!954026 () Bool)

(assert (=> b!2223635 (= res!954026 call!132840)))

(assert (=> b!2223635 (=> (not res!954026) (not e!1420624))))

(declare-fun d!664340 () Bool)

(declare-fun res!954025 () Bool)

(declare-fun e!1420626 () Bool)

(assert (=> d!664340 (=> res!954025 e!1420626)))

(assert (=> d!664340 (= res!954025 ((_ is EmptyExpr!6353) (h!31476 (exprs!2401 context!72))))))

(assert (=> d!664340 (= (nullableFct!404 (h!31476 (exprs!2401 context!72))) e!1420626)))

(declare-fun b!2223636 () Bool)

(assert (=> b!2223636 (= e!1420625 e!1420622)))

(assert (=> b!2223636 (= c!355053 ((_ is Union!6353) (h!31476 (exprs!2401 context!72))))))

(declare-fun b!2223637 () Bool)

(assert (=> b!2223637 (= e!1420626 e!1420621)))

(declare-fun res!954027 () Bool)

(assert (=> b!2223637 (=> (not res!954027) (not e!1420621))))

(assert (=> b!2223637 (= res!954027 (and (not ((_ is EmptyLang!6353) (h!31476 (exprs!2401 context!72)))) (not ((_ is ElementMatch!6353) (h!31476 (exprs!2401 context!72))))))))

(declare-fun b!2223638 () Bool)

(declare-fun e!1420623 () Bool)

(assert (=> b!2223638 (= e!1420622 e!1420623)))

(declare-fun res!954028 () Bool)

(assert (=> b!2223638 (= res!954028 call!132840)))

(assert (=> b!2223638 (=> res!954028 e!1420623)))

(declare-fun bm!132835 () Bool)

(assert (=> bm!132835 (= call!132839 (nullable!1732 (ite c!355053 (regTwo!13219 (h!31476 (exprs!2401 context!72))) (regTwo!13218 (h!31476 (exprs!2401 context!72))))))))

(declare-fun b!2223639 () Bool)

(assert (=> b!2223639 (= e!1420623 call!132839)))

(assert (= (and d!664340 (not res!954025)) b!2223637))

(assert (= (and b!2223637 res!954027) b!2223633))

(assert (= (and b!2223633 (not res!954029)) b!2223636))

(assert (= (and b!2223636 c!355053) b!2223638))

(assert (= (and b!2223636 (not c!355053)) b!2223635))

(assert (= (and b!2223638 (not res!954028)) b!2223639))

(assert (= (and b!2223635 res!954026) b!2223634))

(assert (= (or b!2223638 b!2223635) bm!132834))

(assert (= (or b!2223639 b!2223634) bm!132835))

(declare-fun m!2663828 () Bool)

(assert (=> bm!132834 m!2663828))

(declare-fun m!2663830 () Bool)

(assert (=> bm!132835 m!2663830))

(assert (=> d!664302 d!664340))

(declare-fun bs!453426 () Bool)

(declare-fun d!664342 () Bool)

(assert (= bs!453426 (and d!664342 d!664332)))

(declare-fun lambda!84042 () Int)

(assert (=> bs!453426 (= lambda!84042 lambda!84038)))

(declare-fun bs!453427 () Bool)

(assert (= bs!453427 (and d!664342 d!664308)))

(assert (=> bs!453427 (= lambda!84042 lambda!84020)))

(declare-fun bs!453428 () Bool)

(assert (= bs!453428 (and d!664342 d!664320)))

(assert (=> bs!453428 (= lambda!84042 lambda!84025)))

(declare-fun bs!453429 () Bool)

(assert (= bs!453429 (and d!664342 d!664310)))

(assert (=> bs!453429 (= lambda!84042 lambda!84021)))

(declare-fun bs!453430 () Bool)

(assert (= bs!453430 (and d!664342 d!664336)))

(assert (=> bs!453430 (= lambda!84042 lambda!84040)))

(declare-fun bs!453431 () Bool)

(assert (= bs!453431 (and d!664342 d!664338)))

(assert (=> bs!453431 (= lambda!84042 lambda!84041)))

(declare-fun bs!453432 () Bool)

(assert (= bs!453432 (and d!664342 d!664304)))

(assert (=> bs!453432 (= lambda!84042 lambda!84016)))

(declare-fun bs!453433 () Bool)

(assert (= bs!453433 (and d!664342 d!664324)))

(assert (=> bs!453433 (= lambda!84042 lambda!84027)))

(declare-fun bs!453434 () Bool)

(assert (= bs!453434 (and d!664342 d!664300)))

(assert (=> bs!453434 (= lambda!84042 lambda!84015)))

(declare-fun bs!453435 () Bool)

(assert (= bs!453435 (and d!664342 d!664322)))

(assert (=> bs!453435 (= lambda!84042 lambda!84026)))

(declare-fun bs!453436 () Bool)

(assert (= bs!453436 (and d!664342 d!664334)))

(assert (=> bs!453436 (= lambda!84042 lambda!84039)))

(declare-fun bs!453437 () Bool)

(assert (= bs!453437 (and d!664342 d!664298)))

(assert (=> bs!453437 (= lambda!84042 lambda!84014)))

(assert (=> d!664342 (= (inv!35404 (_1!15026 (_1!15027 (h!31477 (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))))) (forall!5313 (exprs!2401 (_1!15026 (_1!15027 (h!31477 (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))))) lambda!84042))))

(declare-fun bs!453438 () Bool)

(assert (= bs!453438 d!664342))

(declare-fun m!2663832 () Bool)

(assert (=> bs!453438 m!2663832))

(assert (=> b!2223502 d!664342))

(declare-fun d!664344 () Bool)

(declare-fun res!954030 () Bool)

(declare-fun e!1420627 () Bool)

(assert (=> d!664344 (=> res!954030 e!1420627)))

(assert (=> d!664344 (= res!954030 ((_ is Nil!26075) (exprs!2401 (Context!3803 (t!199579 (exprs!2401 context!72))))))))

(assert (=> d!664344 (= (forall!5313 (exprs!2401 (Context!3803 (t!199579 (exprs!2401 context!72)))) lambda!84015) e!1420627)))

(declare-fun b!2223640 () Bool)

(declare-fun e!1420628 () Bool)

(assert (=> b!2223640 (= e!1420627 e!1420628)))

(declare-fun res!954031 () Bool)

(assert (=> b!2223640 (=> (not res!954031) (not e!1420628))))

(assert (=> b!2223640 (= res!954031 (dynLambda!11513 lambda!84015 (h!31476 (exprs!2401 (Context!3803 (t!199579 (exprs!2401 context!72)))))))))

(declare-fun b!2223641 () Bool)

(assert (=> b!2223641 (= e!1420628 (forall!5313 (t!199579 (exprs!2401 (Context!3803 (t!199579 (exprs!2401 context!72))))) lambda!84015))))

(assert (= (and d!664344 (not res!954030)) b!2223640))

(assert (= (and b!2223640 res!954031) b!2223641))

(declare-fun b_lambda!71603 () Bool)

(assert (=> (not b_lambda!71603) (not b!2223640)))

(declare-fun m!2663834 () Bool)

(assert (=> b!2223640 m!2663834))

(declare-fun m!2663836 () Bool)

(assert (=> b!2223641 m!2663836))

(assert (=> d!664300 d!664344))

(declare-fun bs!453439 () Bool)

(declare-fun d!664346 () Bool)

(assert (= bs!453439 (and d!664346 d!664332)))

(declare-fun lambda!84043 () Int)

(assert (=> bs!453439 (= lambda!84043 lambda!84038)))

(declare-fun bs!453440 () Bool)

(assert (= bs!453440 (and d!664346 d!664308)))

(assert (=> bs!453440 (= lambda!84043 lambda!84020)))

(declare-fun bs!453441 () Bool)

(assert (= bs!453441 (and d!664346 d!664320)))

(assert (=> bs!453441 (= lambda!84043 lambda!84025)))

(declare-fun bs!453442 () Bool)

(assert (= bs!453442 (and d!664346 d!664310)))

(assert (=> bs!453442 (= lambda!84043 lambda!84021)))

(declare-fun bs!453443 () Bool)

(assert (= bs!453443 (and d!664346 d!664336)))

(assert (=> bs!453443 (= lambda!84043 lambda!84040)))

(declare-fun bs!453444 () Bool)

(assert (= bs!453444 (and d!664346 d!664338)))

(assert (=> bs!453444 (= lambda!84043 lambda!84041)))

(declare-fun bs!453445 () Bool)

(assert (= bs!453445 (and d!664346 d!664304)))

(assert (=> bs!453445 (= lambda!84043 lambda!84016)))

(declare-fun bs!453446 () Bool)

(assert (= bs!453446 (and d!664346 d!664324)))

(assert (=> bs!453446 (= lambda!84043 lambda!84027)))

(declare-fun bs!453447 () Bool)

(assert (= bs!453447 (and d!664346 d!664322)))

(assert (=> bs!453447 (= lambda!84043 lambda!84026)))

(declare-fun bs!453448 () Bool)

(assert (= bs!453448 (and d!664346 d!664334)))

(assert (=> bs!453448 (= lambda!84043 lambda!84039)))

(declare-fun bs!453449 () Bool)

(assert (= bs!453449 (and d!664346 d!664298)))

(assert (=> bs!453449 (= lambda!84043 lambda!84014)))

(declare-fun bs!453450 () Bool)

(assert (= bs!453450 (and d!664346 d!664342)))

(assert (=> bs!453450 (= lambda!84043 lambda!84042)))

(declare-fun bs!453451 () Bool)

(assert (= bs!453451 (and d!664346 d!664300)))

(assert (=> bs!453451 (= lambda!84043 lambda!84015)))

(assert (=> d!664346 (= (inv!35404 (_1!15026 (_1!15027 (h!31477 mapDefault!14114)))) (forall!5313 (exprs!2401 (_1!15026 (_1!15027 (h!31477 mapDefault!14114)))) lambda!84043))))

(declare-fun bs!453452 () Bool)

(assert (= bs!453452 d!664346))

(declare-fun m!2663838 () Bool)

(assert (=> bs!453452 m!2663838))

(assert (=> b!2223526 d!664346))

(declare-fun condSetEmpty!19651 () Bool)

(assert (=> setNonEmpty!19641 (= condSetEmpty!19651 (= setRest!19641 ((as const (Array Context!3802 Bool)) false)))))

(declare-fun setRes!19651 () Bool)

(assert (=> setNonEmpty!19641 (= tp!693769 setRes!19651)))

(declare-fun setIsEmpty!19651 () Bool)

(assert (=> setIsEmpty!19651 setRes!19651))

(declare-fun setElem!19651 () Context!3802)

(declare-fun e!1420631 () Bool)

(declare-fun setNonEmpty!19651 () Bool)

(declare-fun tp!693807 () Bool)

(assert (=> setNonEmpty!19651 (= setRes!19651 (and tp!693807 (inv!35404 setElem!19651) e!1420631))))

(declare-fun setRest!19651 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19651 (= setRest!19641 ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19651 true) setRest!19651))))

(declare-fun b!2223646 () Bool)

(declare-fun tp!693808 () Bool)

(assert (=> b!2223646 (= e!1420631 tp!693808)))

(assert (= (and setNonEmpty!19641 condSetEmpty!19651) setIsEmpty!19651))

(assert (= (and setNonEmpty!19641 (not condSetEmpty!19651)) setNonEmpty!19651))

(assert (= setNonEmpty!19651 b!2223646))

(declare-fun m!2663840 () Bool)

(assert (=> setNonEmpty!19651 m!2663840))

(declare-fun b!2223647 () Bool)

(declare-fun e!1420632 () Bool)

(declare-fun tp!693809 () Bool)

(declare-fun tp!693810 () Bool)

(assert (=> b!2223647 (= e!1420632 (and tp!693809 tp!693810))))

(assert (=> b!2223524 (= tp!693791 e!1420632)))

(assert (= (and b!2223524 ((_ is Cons!26075) (exprs!2401 setElem!19646))) b!2223647))

(declare-fun b!2223648 () Bool)

(declare-fun e!1420633 () Bool)

(declare-fun tp!693811 () Bool)

(declare-fun tp!693812 () Bool)

(assert (=> b!2223648 (= e!1420633 (and tp!693811 tp!693812))))

(assert (=> b!2223523 (= tp!693797 e!1420633)))

(assert (= (and b!2223523 ((_ is Cons!26075) (exprs!2401 (_1!15026 (_1!15027 (h!31477 mapDefault!14114)))))) b!2223648))

(declare-fun condSetEmpty!19652 () Bool)

(assert (=> setNonEmpty!19639 (= condSetEmpty!19652 (= setRest!19639 ((as const (Array Context!3802 Bool)) false)))))

(declare-fun setRes!19652 () Bool)

(assert (=> setNonEmpty!19639 (= tp!693761 setRes!19652)))

(declare-fun setIsEmpty!19652 () Bool)

(assert (=> setIsEmpty!19652 setRes!19652))

(declare-fun setElem!19652 () Context!3802)

(declare-fun setNonEmpty!19652 () Bool)

(declare-fun tp!693813 () Bool)

(declare-fun e!1420634 () Bool)

(assert (=> setNonEmpty!19652 (= setRes!19652 (and tp!693813 (inv!35404 setElem!19652) e!1420634))))

(declare-fun setRest!19652 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19652 (= setRest!19639 ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19652 true) setRest!19652))))

(declare-fun b!2223649 () Bool)

(declare-fun tp!693814 () Bool)

(assert (=> b!2223649 (= e!1420634 tp!693814)))

(assert (= (and setNonEmpty!19639 condSetEmpty!19652) setIsEmpty!19652))

(assert (= (and setNonEmpty!19639 (not condSetEmpty!19652)) setNonEmpty!19652))

(assert (= setNonEmpty!19652 b!2223649))

(declare-fun m!2663842 () Bool)

(assert (=> setNonEmpty!19652 m!2663842))

(declare-fun b!2223650 () Bool)

(declare-fun e!1420635 () Bool)

(declare-fun tp!693815 () Bool)

(declare-fun tp!693816 () Bool)

(assert (=> b!2223650 (= e!1420635 (and tp!693815 tp!693816))))

(assert (=> b!2223507 (= tp!693768 e!1420635)))

(assert (= (and b!2223507 ((_ is Cons!26075) (exprs!2401 (_1!15026 (_1!15027 (h!31477 mapDefault!14111)))))) b!2223650))

(declare-fun condSetEmpty!19653 () Bool)

(assert (=> setNonEmpty!19646 (= condSetEmpty!19653 (= setRest!19646 ((as const (Array Context!3802 Bool)) false)))))

(declare-fun setRes!19653 () Bool)

(assert (=> setNonEmpty!19646 (= tp!693795 setRes!19653)))

(declare-fun setIsEmpty!19653 () Bool)

(assert (=> setIsEmpty!19653 setRes!19653))

(declare-fun setElem!19653 () Context!3802)

(declare-fun tp!693817 () Bool)

(declare-fun setNonEmpty!19653 () Bool)

(declare-fun e!1420636 () Bool)

(assert (=> setNonEmpty!19653 (= setRes!19653 (and tp!693817 (inv!35404 setElem!19653) e!1420636))))

(declare-fun setRest!19653 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19653 (= setRest!19646 ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19653 true) setRest!19653))))

(declare-fun b!2223651 () Bool)

(declare-fun tp!693818 () Bool)

(assert (=> b!2223651 (= e!1420636 tp!693818)))

(assert (= (and setNonEmpty!19646 condSetEmpty!19653) setIsEmpty!19653))

(assert (= (and setNonEmpty!19646 (not condSetEmpty!19653)) setNonEmpty!19653))

(assert (= setNonEmpty!19653 b!2223651))

(declare-fun m!2663844 () Bool)

(assert (=> setNonEmpty!19653 m!2663844))

(declare-fun b!2223652 () Bool)

(declare-fun e!1420637 () Bool)

(declare-fun tp!693819 () Bool)

(declare-fun tp!693820 () Bool)

(assert (=> b!2223652 (= e!1420637 (and tp!693819 tp!693820))))

(assert (=> b!2223503 (= tp!693766 e!1420637)))

(assert (= (and b!2223503 ((_ is Cons!26075) (exprs!2401 setElem!19640))) b!2223652))

(declare-fun condSetEmpty!19654 () Bool)

(assert (=> setNonEmpty!19640 (= condSetEmpty!19654 (= setRest!19640 ((as const (Array Context!3802 Bool)) false)))))

(declare-fun setRes!19654 () Bool)

(assert (=> setNonEmpty!19640 (= tp!693765 setRes!19654)))

(declare-fun setIsEmpty!19654 () Bool)

(assert (=> setIsEmpty!19654 setRes!19654))

(declare-fun tp!693821 () Bool)

(declare-fun setNonEmpty!19654 () Bool)

(declare-fun setElem!19654 () Context!3802)

(declare-fun e!1420638 () Bool)

(assert (=> setNonEmpty!19654 (= setRes!19654 (and tp!693821 (inv!35404 setElem!19654) e!1420638))))

(declare-fun setRest!19654 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19654 (= setRest!19640 ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19654 true) setRest!19654))))

(declare-fun b!2223653 () Bool)

(declare-fun tp!693822 () Bool)

(assert (=> b!2223653 (= e!1420638 tp!693822)))

(assert (= (and setNonEmpty!19640 condSetEmpty!19654) setIsEmpty!19654))

(assert (= (and setNonEmpty!19640 (not condSetEmpty!19654)) setNonEmpty!19654))

(assert (= setNonEmpty!19654 b!2223653))

(declare-fun m!2663846 () Bool)

(assert (=> setNonEmpty!19654 m!2663846))

(declare-fun b!2223654 () Bool)

(declare-fun e!1420639 () Bool)

(declare-fun tp!693823 () Bool)

(declare-fun tp!693824 () Bool)

(assert (=> b!2223654 (= e!1420639 (and tp!693823 tp!693824))))

(assert (=> b!2223506 (= tp!693770 e!1420639)))

(assert (= (and b!2223506 ((_ is Cons!26075) (exprs!2401 setElem!19641))) b!2223654))

(declare-fun tp!693826 () Bool)

(declare-fun setRes!19655 () Bool)

(declare-fun setElem!19655 () Context!3802)

(declare-fun e!1420641 () Bool)

(declare-fun setNonEmpty!19655 () Bool)

(assert (=> setNonEmpty!19655 (= setRes!19655 (and tp!693826 (inv!35404 setElem!19655) e!1420641))))

(declare-fun setRest!19655 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19655 (= (_2!15027 (h!31477 (t!199580 mapValue!14114))) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19655 true) setRest!19655))))

(declare-fun e!1420642 () Bool)

(assert (=> b!2223525 (= tp!693794 e!1420642)))

(declare-fun b!2223655 () Bool)

(declare-fun tp!693827 () Bool)

(assert (=> b!2223655 (= e!1420641 tp!693827)))

(declare-fun setIsEmpty!19655 () Bool)

(assert (=> setIsEmpty!19655 setRes!19655))

(declare-fun b!2223656 () Bool)

(declare-fun e!1420640 () Bool)

(declare-fun tp!693825 () Bool)

(assert (=> b!2223656 (= e!1420640 tp!693825)))

(declare-fun tp!693828 () Bool)

(declare-fun b!2223657 () Bool)

(assert (=> b!2223657 (= e!1420642 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 (t!199580 mapValue!14114))))) e!1420640 tp_is_empty!9931 setRes!19655 tp!693828))))

(declare-fun condSetEmpty!19655 () Bool)

(assert (=> b!2223657 (= condSetEmpty!19655 (= (_2!15027 (h!31477 (t!199580 mapValue!14114))) ((as const (Array Context!3802 Bool)) false)))))

(assert (= b!2223657 b!2223656))

(assert (= (and b!2223657 condSetEmpty!19655) setIsEmpty!19655))

(assert (= (and b!2223657 (not condSetEmpty!19655)) setNonEmpty!19655))

(assert (= setNonEmpty!19655 b!2223655))

(assert (= (and b!2223525 ((_ is Cons!26076) (t!199580 mapValue!14114))) b!2223657))

(declare-fun m!2663848 () Bool)

(assert (=> setNonEmpty!19655 m!2663848))

(declare-fun m!2663850 () Bool)

(assert (=> b!2223657 m!2663850))

(declare-fun b!2223668 () Bool)

(declare-fun e!1420645 () Bool)

(assert (=> b!2223668 (= e!1420645 tp_is_empty!9931)))

(declare-fun b!2223670 () Bool)

(declare-fun tp!693841 () Bool)

(assert (=> b!2223670 (= e!1420645 tp!693841)))

(declare-fun b!2223669 () Bool)

(declare-fun tp!693843 () Bool)

(declare-fun tp!693842 () Bool)

(assert (=> b!2223669 (= e!1420645 (and tp!693843 tp!693842))))

(assert (=> b!2223491 (= tp!693750 e!1420645)))

(declare-fun b!2223671 () Bool)

(declare-fun tp!693840 () Bool)

(declare-fun tp!693839 () Bool)

(assert (=> b!2223671 (= e!1420645 (and tp!693840 tp!693839))))

(assert (= (and b!2223491 ((_ is ElementMatch!6353) (h!31476 (exprs!2401 context!72)))) b!2223668))

(assert (= (and b!2223491 ((_ is Concat!10691) (h!31476 (exprs!2401 context!72)))) b!2223669))

(assert (= (and b!2223491 ((_ is Star!6353) (h!31476 (exprs!2401 context!72)))) b!2223670))

(assert (= (and b!2223491 ((_ is Union!6353) (h!31476 (exprs!2401 context!72)))) b!2223671))

(declare-fun b!2223672 () Bool)

(declare-fun e!1420646 () Bool)

(declare-fun tp!693844 () Bool)

(declare-fun tp!693845 () Bool)

(assert (=> b!2223672 (= e!1420646 (and tp!693844 tp!693845))))

(assert (=> b!2223491 (= tp!693751 e!1420646)))

(assert (= (and b!2223491 ((_ is Cons!26075) (t!199579 (exprs!2401 context!72)))) b!2223672))

(declare-fun b!2223673 () Bool)

(declare-fun e!1420647 () Bool)

(declare-fun tp!693846 () Bool)

(declare-fun tp!693847 () Bool)

(assert (=> b!2223673 (= e!1420647 (and tp!693846 tp!693847))))

(assert (=> b!2223529 (= tp!693801 e!1420647)))

(assert (= (and b!2223529 ((_ is Cons!26075) (exprs!2401 setElem!19648))) b!2223673))

(declare-fun condSetEmpty!19656 () Bool)

(assert (=> setNonEmpty!19648 (= condSetEmpty!19656 (= setRest!19648 ((as const (Array Context!3802 Bool)) false)))))

(declare-fun setRes!19656 () Bool)

(assert (=> setNonEmpty!19648 (= tp!693800 setRes!19656)))

(declare-fun setIsEmpty!19656 () Bool)

(assert (=> setIsEmpty!19656 setRes!19656))

(declare-fun setElem!19656 () Context!3802)

(declare-fun tp!693848 () Bool)

(declare-fun setNonEmpty!19656 () Bool)

(declare-fun e!1420648 () Bool)

(assert (=> setNonEmpty!19656 (= setRes!19656 (and tp!693848 (inv!35404 setElem!19656) e!1420648))))

(declare-fun setRest!19656 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19656 (= setRest!19648 ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19656 true) setRest!19656))))

(declare-fun b!2223674 () Bool)

(declare-fun tp!693849 () Bool)

(assert (=> b!2223674 (= e!1420648 tp!693849)))

(assert (= (and setNonEmpty!19648 condSetEmpty!19656) setIsEmpty!19656))

(assert (= (and setNonEmpty!19648 (not condSetEmpty!19656)) setNonEmpty!19656))

(assert (= setNonEmpty!19656 b!2223674))

(declare-fun m!2663852 () Bool)

(assert (=> setNonEmpty!19656 m!2663852))

(declare-fun b!2223675 () Bool)

(declare-fun e!1420649 () Bool)

(declare-fun tp!693850 () Bool)

(declare-fun tp!693851 () Bool)

(assert (=> b!2223675 (= e!1420649 (and tp!693850 tp!693851))))

(assert (=> b!2223528 (= tp!693798 e!1420649)))

(assert (= (and b!2223528 ((_ is Cons!26075) (exprs!2401 setElem!19647))) b!2223675))

(declare-fun setRes!19657 () Bool)

(declare-fun e!1420651 () Bool)

(declare-fun setNonEmpty!19657 () Bool)

(declare-fun tp!693853 () Bool)

(declare-fun setElem!19657 () Context!3802)

(assert (=> setNonEmpty!19657 (= setRes!19657 (and tp!693853 (inv!35404 setElem!19657) e!1420651))))

(declare-fun setRest!19657 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19657 (= (_2!15027 (h!31477 (t!199580 mapValue!14111))) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19657 true) setRest!19657))))

(declare-fun e!1420652 () Bool)

(assert (=> b!2223531 (= tp!693802 e!1420652)))

(declare-fun b!2223676 () Bool)

(declare-fun tp!693854 () Bool)

(assert (=> b!2223676 (= e!1420651 tp!693854)))

(declare-fun setIsEmpty!19657 () Bool)

(assert (=> setIsEmpty!19657 setRes!19657))

(declare-fun b!2223677 () Bool)

(declare-fun e!1420650 () Bool)

(declare-fun tp!693852 () Bool)

(assert (=> b!2223677 (= e!1420650 tp!693852)))

(declare-fun b!2223678 () Bool)

(declare-fun tp!693855 () Bool)

(assert (=> b!2223678 (= e!1420652 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 (t!199580 mapValue!14111))))) e!1420650 tp_is_empty!9931 setRes!19657 tp!693855))))

(declare-fun condSetEmpty!19657 () Bool)

(assert (=> b!2223678 (= condSetEmpty!19657 (= (_2!15027 (h!31477 (t!199580 mapValue!14111))) ((as const (Array Context!3802 Bool)) false)))))

(assert (= b!2223678 b!2223677))

(assert (= (and b!2223678 condSetEmpty!19657) setIsEmpty!19657))

(assert (= (and b!2223678 (not condSetEmpty!19657)) setNonEmpty!19657))

(assert (= setNonEmpty!19657 b!2223676))

(assert (= (and b!2223531 ((_ is Cons!26076) (t!199580 mapValue!14111))) b!2223678))

(declare-fun m!2663854 () Bool)

(assert (=> setNonEmpty!19657 m!2663854))

(declare-fun m!2663856 () Bool)

(assert (=> b!2223678 m!2663856))

(declare-fun b!2223679 () Bool)

(declare-fun e!1420653 () Bool)

(declare-fun tp!693856 () Bool)

(declare-fun tp!693857 () Bool)

(assert (=> b!2223679 (= e!1420653 (and tp!693856 tp!693857))))

(assert (=> b!2223530 (= tp!693799 e!1420653)))

(assert (= (and b!2223530 ((_ is Cons!26075) (exprs!2401 (_1!15026 (_1!15027 (h!31477 mapValue!14111)))))) b!2223679))

(declare-fun setElem!19658 () Context!3802)

(declare-fun e!1420655 () Bool)

(declare-fun setRes!19658 () Bool)

(declare-fun tp!693859 () Bool)

(declare-fun setNonEmpty!19658 () Bool)

(assert (=> setNonEmpty!19658 (= setRes!19658 (and tp!693859 (inv!35404 setElem!19658) e!1420655))))

(declare-fun setRest!19658 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19658 (= (_2!15027 (h!31477 (t!199580 (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19658 true) setRest!19658))))

(declare-fun e!1420656 () Bool)

(assert (=> b!2223505 (= tp!693767 e!1420656)))

(declare-fun b!2223680 () Bool)

(declare-fun tp!693860 () Bool)

(assert (=> b!2223680 (= e!1420655 tp!693860)))

(declare-fun setIsEmpty!19658 () Bool)

(assert (=> setIsEmpty!19658 setRes!19658))

(declare-fun b!2223681 () Bool)

(declare-fun e!1420654 () Bool)

(declare-fun tp!693858 () Bool)

(assert (=> b!2223681 (= e!1420654 tp!693858)))

(declare-fun b!2223682 () Bool)

(declare-fun tp!693861 () Bool)

(assert (=> b!2223682 (= e!1420656 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 (t!199580 (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))))) e!1420654 tp_is_empty!9931 setRes!19658 tp!693861))))

(declare-fun condSetEmpty!19658 () Bool)

(assert (=> b!2223682 (= condSetEmpty!19658 (= (_2!15027 (h!31477 (t!199580 (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))) ((as const (Array Context!3802 Bool)) false)))))

(assert (= b!2223682 b!2223681))

(assert (= (and b!2223682 condSetEmpty!19658) setIsEmpty!19658))

(assert (= (and b!2223682 (not condSetEmpty!19658)) setNonEmpty!19658))

(assert (= setNonEmpty!19658 b!2223680))

(assert (= (and b!2223505 ((_ is Cons!26076) (t!199580 (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))) b!2223682))

(declare-fun m!2663858 () Bool)

(assert (=> setNonEmpty!19658 m!2663858))

(declare-fun m!2663860 () Bool)

(assert (=> b!2223682 m!2663860))

(declare-fun b!2223683 () Bool)

(declare-fun e!1420657 () Bool)

(declare-fun tp!693862 () Bool)

(declare-fun tp!693863 () Bool)

(assert (=> b!2223683 (= e!1420657 (and tp!693862 tp!693863))))

(assert (=> b!2223501 (= tp!693760 e!1420657)))

(assert (= (and b!2223501 ((_ is Cons!26075) (exprs!2401 (_1!15026 (_1!15027 (h!31477 (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))))))) b!2223683))

(declare-fun condSetEmpty!19659 () Bool)

(assert (=> setNonEmpty!19647 (= condSetEmpty!19659 (= setRest!19647 ((as const (Array Context!3802 Bool)) false)))))

(declare-fun setRes!19659 () Bool)

(assert (=> setNonEmpty!19647 (= tp!693790 setRes!19659)))

(declare-fun setIsEmpty!19659 () Bool)

(assert (=> setIsEmpty!19659 setRes!19659))

(declare-fun setNonEmpty!19659 () Bool)

(declare-fun tp!693864 () Bool)

(declare-fun setElem!19659 () Context!3802)

(declare-fun e!1420658 () Bool)

(assert (=> setNonEmpty!19659 (= setRes!19659 (and tp!693864 (inv!35404 setElem!19659) e!1420658))))

(declare-fun setRest!19659 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19659 (= setRest!19647 ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19659 true) setRest!19659))))

(declare-fun b!2223684 () Bool)

(declare-fun tp!693865 () Bool)

(assert (=> b!2223684 (= e!1420658 tp!693865)))

(assert (= (and setNonEmpty!19647 condSetEmpty!19659) setIsEmpty!19659))

(assert (= (and setNonEmpty!19647 (not condSetEmpty!19659)) setNonEmpty!19659))

(assert (= setNonEmpty!19659 b!2223684))

(declare-fun m!2663862 () Bool)

(assert (=> setNonEmpty!19659 m!2663862))

(declare-fun tp!693867 () Bool)

(declare-fun setElem!19660 () Context!3802)

(declare-fun setRes!19660 () Bool)

(declare-fun setNonEmpty!19660 () Bool)

(declare-fun e!1420660 () Bool)

(assert (=> setNonEmpty!19660 (= setRes!19660 (and tp!693867 (inv!35404 setElem!19660) e!1420660))))

(declare-fun setRest!19660 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19660 (= (_2!15027 (h!31477 (t!199580 mapDefault!14111))) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19660 true) setRest!19660))))

(declare-fun e!1420661 () Bool)

(assert (=> b!2223508 (= tp!693771 e!1420661)))

(declare-fun b!2223685 () Bool)

(declare-fun tp!693868 () Bool)

(assert (=> b!2223685 (= e!1420660 tp!693868)))

(declare-fun setIsEmpty!19660 () Bool)

(assert (=> setIsEmpty!19660 setRes!19660))

(declare-fun b!2223686 () Bool)

(declare-fun e!1420659 () Bool)

(declare-fun tp!693866 () Bool)

(assert (=> b!2223686 (= e!1420659 tp!693866)))

(declare-fun b!2223687 () Bool)

(declare-fun tp!693869 () Bool)

(assert (=> b!2223687 (= e!1420661 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 (t!199580 mapDefault!14111))))) e!1420659 tp_is_empty!9931 setRes!19660 tp!693869))))

(declare-fun condSetEmpty!19660 () Bool)

(assert (=> b!2223687 (= condSetEmpty!19660 (= (_2!15027 (h!31477 (t!199580 mapDefault!14111))) ((as const (Array Context!3802 Bool)) false)))))

(assert (= b!2223687 b!2223686))

(assert (= (and b!2223687 condSetEmpty!19660) setIsEmpty!19660))

(assert (= (and b!2223687 (not condSetEmpty!19660)) setNonEmpty!19660))

(assert (= setNonEmpty!19660 b!2223685))

(assert (= (and b!2223508 ((_ is Cons!26076) (t!199580 mapDefault!14111))) b!2223687))

(declare-fun m!2663864 () Bool)

(assert (=> setNonEmpty!19660 m!2663864))

(declare-fun m!2663866 () Bool)

(assert (=> b!2223687 m!2663866))

(declare-fun b!2223688 () Bool)

(declare-fun e!1420662 () Bool)

(declare-fun tp!693870 () Bool)

(declare-fun tp!693871 () Bool)

(assert (=> b!2223688 (= e!1420662 (and tp!693870 tp!693871))))

(assert (=> b!2223504 (= tp!693764 e!1420662)))

(assert (= (and b!2223504 ((_ is Cons!26075) (exprs!2401 (_1!15026 (_1!15027 (h!31477 (minValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790)))))))))))) b!2223688))

(declare-fun b!2223689 () Bool)

(declare-fun e!1420663 () Bool)

(declare-fun tp!693872 () Bool)

(declare-fun tp!693873 () Bool)

(assert (=> b!2223689 (= e!1420663 (and tp!693872 tp!693873))))

(assert (=> b!2223500 (= tp!693762 e!1420663)))

(assert (= (and b!2223500 ((_ is Cons!26075) (exprs!2401 setElem!19639))) b!2223689))

(declare-fun b!2223690 () Bool)

(declare-fun e!1420664 () Bool)

(declare-fun tp!693874 () Bool)

(declare-fun tp!693875 () Bool)

(assert (=> b!2223690 (= e!1420664 (and tp!693874 tp!693875))))

(assert (=> b!2223527 (= tp!693796 e!1420664)))

(assert (= (and b!2223527 ((_ is Cons!26075) (exprs!2401 (_1!15026 (_1!15027 (h!31477 mapValue!14114)))))) b!2223690))

(declare-fun e!1420666 () Bool)

(declare-fun tp!693877 () Bool)

(declare-fun setRes!19661 () Bool)

(declare-fun setElem!19661 () Context!3802)

(declare-fun setNonEmpty!19661 () Bool)

(assert (=> setNonEmpty!19661 (= setRes!19661 (and tp!693877 (inv!35404 setElem!19661) e!1420666))))

(declare-fun setRest!19661 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19661 (= (_2!15027 (h!31477 (t!199580 (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19661 true) setRest!19661))))

(declare-fun e!1420667 () Bool)

(assert (=> b!2223502 (= tp!693763 e!1420667)))

(declare-fun b!2223691 () Bool)

(declare-fun tp!693878 () Bool)

(assert (=> b!2223691 (= e!1420666 tp!693878)))

(declare-fun setIsEmpty!19661 () Bool)

(assert (=> setIsEmpty!19661 setRes!19661))

(declare-fun b!2223692 () Bool)

(declare-fun e!1420665 () Bool)

(declare-fun tp!693876 () Bool)

(assert (=> b!2223692 (= e!1420665 tp!693876)))

(declare-fun b!2223693 () Bool)

(declare-fun tp!693879 () Bool)

(assert (=> b!2223693 (= e!1420667 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 (t!199580 (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))))) e!1420665 tp_is_empty!9931 setRes!19661 tp!693879))))

(declare-fun condSetEmpty!19661 () Bool)

(assert (=> b!2223693 (= condSetEmpty!19661 (= (_2!15027 (h!31477 (t!199580 (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))) ((as const (Array Context!3802 Bool)) false)))))

(assert (= b!2223693 b!2223692))

(assert (= (and b!2223693 condSetEmpty!19661) setIsEmpty!19661))

(assert (= (and b!2223693 (not condSetEmpty!19661)) setNonEmpty!19661))

(assert (= setNonEmpty!19661 b!2223691))

(assert (= (and b!2223502 ((_ is Cons!26076) (t!199580 (zeroValue!3248 (v!29631 (underlying!6181 (v!29632 (underlying!6182 (cache!3281 cacheUp!790))))))))) b!2223693))

(declare-fun m!2663868 () Bool)

(assert (=> setNonEmpty!19661 m!2663868))

(declare-fun m!2663870 () Bool)

(assert (=> b!2223693 m!2663870))

(declare-fun b!2223694 () Bool)

(declare-fun e!1420668 () Bool)

(declare-fun tp!693887 () Bool)

(assert (=> b!2223694 (= e!1420668 tp!693887)))

(declare-fun condMapEmpty!14115 () Bool)

(declare-fun mapDefault!14115 () List!26170)

(assert (=> mapNonEmpty!14114 (= condMapEmpty!14115 (= mapRest!14114 ((as const (Array (_ BitVec 32) List!26170)) mapDefault!14115)))))

(declare-fun e!1420672 () Bool)

(declare-fun mapRes!14115 () Bool)

(assert (=> mapNonEmpty!14114 (= tp!693792 (and e!1420672 mapRes!14115))))

(declare-fun mapIsEmpty!14115 () Bool)

(assert (=> mapIsEmpty!14115 mapRes!14115))

(declare-fun b!2223695 () Bool)

(declare-fun e!1420670 () Bool)

(declare-fun tp!693881 () Bool)

(assert (=> b!2223695 (= e!1420670 tp!693881)))

(declare-fun b!2223696 () Bool)

(declare-fun tp!693884 () Bool)

(declare-fun setRes!19663 () Bool)

(declare-fun mapValue!14115 () List!26170)

(declare-fun e!1420673 () Bool)

(declare-fun e!1420669 () Bool)

(assert (=> b!2223696 (= e!1420673 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 mapValue!14115)))) e!1420669 tp_is_empty!9931 setRes!19663 tp!693884))))

(declare-fun condSetEmpty!19663 () Bool)

(assert (=> b!2223696 (= condSetEmpty!19663 (= (_2!15027 (h!31477 mapValue!14115)) ((as const (Array Context!3802 Bool)) false)))))

(declare-fun setIsEmpty!19662 () Bool)

(declare-fun setRes!19662 () Bool)

(assert (=> setIsEmpty!19662 setRes!19662))

(declare-fun setNonEmpty!19662 () Bool)

(declare-fun setElem!19662 () Context!3802)

(declare-fun tp!693885 () Bool)

(assert (=> setNonEmpty!19662 (= setRes!19663 (and tp!693885 (inv!35404 setElem!19662) e!1420670))))

(declare-fun setRest!19662 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19662 (= (_2!15027 (h!31477 mapValue!14115)) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19662 true) setRest!19662))))

(declare-fun setIsEmpty!19663 () Bool)

(assert (=> setIsEmpty!19663 setRes!19663))

(declare-fun setElem!19663 () Context!3802)

(declare-fun setNonEmpty!19663 () Bool)

(declare-fun tp!693880 () Bool)

(declare-fun e!1420671 () Bool)

(assert (=> setNonEmpty!19663 (= setRes!19662 (and tp!693880 (inv!35404 setElem!19663) e!1420671))))

(declare-fun setRest!19663 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19663 (= (_2!15027 (h!31477 mapDefault!14115)) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19663 true) setRest!19663))))

(declare-fun b!2223697 () Bool)

(declare-fun tp!693883 () Bool)

(assert (=> b!2223697 (= e!1420672 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 mapDefault!14115)))) e!1420668 tp_is_empty!9931 setRes!19662 tp!693883))))

(declare-fun condSetEmpty!19662 () Bool)

(assert (=> b!2223697 (= condSetEmpty!19662 (= (_2!15027 (h!31477 mapDefault!14115)) ((as const (Array Context!3802 Bool)) false)))))

(declare-fun mapNonEmpty!14115 () Bool)

(declare-fun tp!693882 () Bool)

(assert (=> mapNonEmpty!14115 (= mapRes!14115 (and tp!693882 e!1420673))))

(declare-fun mapRest!14115 () (Array (_ BitVec 32) List!26170))

(declare-fun mapKey!14115 () (_ BitVec 32))

(assert (=> mapNonEmpty!14115 (= mapRest!14114 (store mapRest!14115 mapKey!14115 mapValue!14115))))

(declare-fun b!2223698 () Bool)

(declare-fun tp!693886 () Bool)

(assert (=> b!2223698 (= e!1420669 tp!693886)))

(declare-fun b!2223699 () Bool)

(declare-fun tp!693888 () Bool)

(assert (=> b!2223699 (= e!1420671 tp!693888)))

(assert (= (and mapNonEmpty!14114 condMapEmpty!14115) mapIsEmpty!14115))

(assert (= (and mapNonEmpty!14114 (not condMapEmpty!14115)) mapNonEmpty!14115))

(assert (= b!2223696 b!2223698))

(assert (= (and b!2223696 condSetEmpty!19663) setIsEmpty!19663))

(assert (= (and b!2223696 (not condSetEmpty!19663)) setNonEmpty!19662))

(assert (= setNonEmpty!19662 b!2223695))

(assert (= (and mapNonEmpty!14115 ((_ is Cons!26076) mapValue!14115)) b!2223696))

(assert (= b!2223697 b!2223694))

(assert (= (and b!2223697 condSetEmpty!19662) setIsEmpty!19662))

(assert (= (and b!2223697 (not condSetEmpty!19662)) setNonEmpty!19663))

(assert (= setNonEmpty!19663 b!2223699))

(assert (= (and mapNonEmpty!14114 ((_ is Cons!26076) mapDefault!14115)) b!2223697))

(declare-fun m!2663872 () Bool)

(assert (=> b!2223697 m!2663872))

(declare-fun m!2663874 () Bool)

(assert (=> setNonEmpty!19663 m!2663874))

(declare-fun m!2663876 () Bool)

(assert (=> mapNonEmpty!14115 m!2663876))

(declare-fun m!2663878 () Bool)

(assert (=> setNonEmpty!19662 m!2663878))

(declare-fun m!2663880 () Bool)

(assert (=> b!2223696 m!2663880))

(declare-fun setNonEmpty!19664 () Bool)

(declare-fun tp!693890 () Bool)

(declare-fun e!1420675 () Bool)

(declare-fun setRes!19664 () Bool)

(declare-fun setElem!19664 () Context!3802)

(assert (=> setNonEmpty!19664 (= setRes!19664 (and tp!693890 (inv!35404 setElem!19664) e!1420675))))

(declare-fun setRest!19664 () (InoxSet Context!3802))

(assert (=> setNonEmpty!19664 (= (_2!15027 (h!31477 (t!199580 mapDefault!14114))) ((_ map or) (store ((as const (Array Context!3802 Bool)) false) setElem!19664 true) setRest!19664))))

(declare-fun e!1420676 () Bool)

(assert (=> b!2223526 (= tp!693793 e!1420676)))

(declare-fun b!2223700 () Bool)

(declare-fun tp!693891 () Bool)

(assert (=> b!2223700 (= e!1420675 tp!693891)))

(declare-fun setIsEmpty!19664 () Bool)

(assert (=> setIsEmpty!19664 setRes!19664))

(declare-fun b!2223701 () Bool)

(declare-fun e!1420674 () Bool)

(declare-fun tp!693889 () Bool)

(assert (=> b!2223701 (= e!1420674 tp!693889)))

(declare-fun b!2223702 () Bool)

(declare-fun tp!693892 () Bool)

(assert (=> b!2223702 (= e!1420676 (and (inv!35404 (_1!15026 (_1!15027 (h!31477 (t!199580 mapDefault!14114))))) e!1420674 tp_is_empty!9931 setRes!19664 tp!693892))))

(declare-fun condSetEmpty!19664 () Bool)

(assert (=> b!2223702 (= condSetEmpty!19664 (= (_2!15027 (h!31477 (t!199580 mapDefault!14114))) ((as const (Array Context!3802 Bool)) false)))))

(assert (= b!2223702 b!2223701))

(assert (= (and b!2223702 condSetEmpty!19664) setIsEmpty!19664))

(assert (= (and b!2223702 (not condSetEmpty!19664)) setNonEmpty!19664))

(assert (= setNonEmpty!19664 b!2223700))

(assert (= (and b!2223526 ((_ is Cons!26076) (t!199580 mapDefault!14114))) b!2223702))

(declare-fun m!2663882 () Bool)

(assert (=> setNonEmpty!19664 m!2663882))

(declare-fun m!2663884 () Bool)

(assert (=> b!2223702 m!2663884))

(declare-fun b_lambda!71605 () Bool)

(assert (= b_lambda!71603 (or d!664300 b_lambda!71605)))

(declare-fun bs!453453 () Bool)

(declare-fun d!664348 () Bool)

(assert (= bs!453453 (and d!664348 d!664300)))

(declare-fun validRegex!2358 (Regex!6353) Bool)

(assert (=> bs!453453 (= (dynLambda!11513 lambda!84015 (h!31476 (exprs!2401 (Context!3803 (t!199579 (exprs!2401 context!72)))))) (validRegex!2358 (h!31476 (exprs!2401 (Context!3803 (t!199579 (exprs!2401 context!72)))))))))

(declare-fun m!2663886 () Bool)

(assert (=> bs!453453 m!2663886))

(assert (=> b!2223640 d!664348))

(declare-fun b_lambda!71607 () Bool)

(assert (= b_lambda!71601 (or d!664298 b_lambda!71607)))

(declare-fun bs!453454 () Bool)

(declare-fun d!664350 () Bool)

(assert (= bs!453454 (and d!664350 d!664298)))

(assert (=> bs!453454 (= (dynLambda!11513 lambda!84014 (h!31476 (exprs!2401 context!72))) (validRegex!2358 (h!31476 (exprs!2401 context!72))))))

(declare-fun m!2663888 () Bool)

(assert (=> bs!453454 m!2663888))

(assert (=> b!2223617 d!664350))

(declare-fun b_lambda!71609 () Bool)

(assert (= b_lambda!71599 (or (and b!2223465 b_free!64419) b_lambda!71609)))

(declare-fun b_lambda!71611 () Bool)

(assert (= b_lambda!71597 (or (and b!2223465 b_free!64419) b_lambda!71611)))

(check-sat (not b!2223688) (not b!2223598) (not setNonEmpty!19655) (not b!2223693) (not b!2223656) (not b_lambda!71609) (not b!2223680) (not b!2223641) (not d!664336) (not bm!132829) (not b!2223676) (not setNonEmpty!19654) (not setNonEmpty!19659) (not setNonEmpty!19664) (not b!2223649) (not b!2223679) (not bm!132823) (not b!2223694) b_and!174407 (not b!2223690) (not setNonEmpty!19657) (not b!2223702) (not setNonEmpty!19656) (not b!2223657) (not d!664334) (not d!664306) (not b_next!65121) (not bm!132835) (not b_lambda!71611) (not bm!132822) (not b_next!65123) (not b!2223686) (not b!2223691) (not b!2223692) (not b!2223682) (not d!664308) (not b!2223689) (not bm!132826) (not d!664324) (not d!664304) (not setNonEmpty!19662) (not b!2223687) (not b!2223695) (not setNonEmpty!19652) (not b!2223537) (not d!664322) (not tb!132849) (not d!664346) (not b!2223654) (not b!2223701) (not setNonEmpty!19658) (not b!2223647) (not bs!453453) (not b!2223653) (not b!2223685) (not b!2223565) (not b!2223600) (not b!2223536) (not bs!453454) (not b!2223670) (not b!2223646) (not d!664320) (not b!2223652) (not bm!132834) (not b!2223612) (not b!2223655) (not b!2223618) (not b!2223699) b_and!174401 (not b!2223560) (not bm!132825) (not setNonEmpty!19651) (not b!2223610) (not b!2223563) (not b!2223648) (not b!2223698) (not d!664310) (not b!2223681) (not mapNonEmpty!14115) (not d!664314) tp_is_empty!9931 (not d!664332) (not b!2223672) (not b!2223651) (not d!664328) (not b_lambda!71605) (not b!2223677) (not b!2223678) (not d!664342) (not bm!132824) (not b!2223696) (not setNonEmpty!19653) (not b!2223671) (not b!2223684) (not b!2223669) (not b!2223700) (not setNonEmpty!19661) (not b!2223674) (not d!664326) (not b!2223584) (not b!2223697) (not b!2223675) (not bm!132821) (not b!2223673) (not b_lambda!71607) (not b!2223561) (not b!2223683) (not b!2223581) (not b!2223650) (not b!2223567) (not setNonEmpty!19660) (not setNonEmpty!19663) (not b!2223601) (not d!664338))
(check-sat b_and!174407 b_and!174401 (not b_next!65123) (not b_next!65121))
