; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296582 () Bool)

(assert start!296582)

(declare-fun b!3164675 () Bool)

(declare-fun b_free!83105 () Bool)

(declare-fun b_next!83809 () Bool)

(assert (=> b!3164675 (= b_free!83105 (not b_next!83809))))

(declare-fun tp!996753 () Bool)

(declare-fun b_and!209359 () Bool)

(assert (=> b!3164675 (= tp!996753 b_and!209359)))

(declare-fun b!3164674 () Bool)

(declare-fun b_free!83107 () Bool)

(declare-fun b_next!83811 () Bool)

(assert (=> b!3164674 (= b_free!83107 (not b_next!83811))))

(declare-fun tp!996756 () Bool)

(declare-fun b_and!209361 () Bool)

(assert (=> b!3164674 (= tp!996756 b_and!209361)))

(declare-fun b!3164673 () Bool)

(declare-fun e!1971458 () Bool)

(declare-fun e!1971460 () Bool)

(assert (=> b!3164673 (= e!1971458 e!1971460)))

(declare-fun mapNonEmpty!18845 () Bool)

(declare-fun mapRes!18845 () Bool)

(declare-fun tp!996761 () Bool)

(declare-fun tp!996750 () Bool)

(assert (=> mapNonEmpty!18845 (= mapRes!18845 (and tp!996761 tp!996750))))

(declare-datatypes ((C!19656 0))(
  ( (C!19657 (val!11864 Int)) )
))
(declare-datatypes ((Regex!9735 0))(
  ( (ElementMatch!9735 (c!532214 C!19656)) (Concat!15056 (regOne!19982 Regex!9735) (regTwo!19982 Regex!9735)) (EmptyExpr!9735) (Star!9735 (reg!10064 Regex!9735)) (EmptyLang!9735) (Union!9735 (regOne!19983 Regex!9735) (regTwo!19983 Regex!9735)) )
))
(declare-datatypes ((tuple2!34514 0))(
  ( (tuple2!34515 (_1!20389 Regex!9735) (_2!20389 C!19656)) )
))
(declare-datatypes ((tuple2!34516 0))(
  ( (tuple2!34517 (_1!20390 tuple2!34514) (_2!20390 Regex!9735)) )
))
(declare-datatypes ((array!14824 0))(
  ( (array!14825 (arr!6602 (Array (_ BitVec 32) (_ BitVec 64))) (size!26688 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4072 0))(
  ( (HashableExt!4071 (__x!22574 Int)) )
))
(declare-datatypes ((List!35566 0))(
  ( (Nil!35442) (Cons!35442 (h!40862 tuple2!34516) (t!234637 List!35566)) )
))
(declare-datatypes ((array!14826 0))(
  ( (array!14827 (arr!6603 (Array (_ BitVec 32) List!35566)) (size!26689 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8312 0))(
  ( (LongMapFixedSize!8313 (defaultEntry!4541 Int) (mask!10817 (_ BitVec 32)) (extraKeys!4405 (_ BitVec 32)) (zeroValue!4415 List!35566) (minValue!4415 List!35566) (_size!8355 (_ BitVec 32)) (_keys!4456 array!14824) (_values!4437 array!14826) (_vacant!4217 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16433 0))(
  ( (Cell!16434 (v!35118 LongMapFixedSize!8312)) )
))
(declare-datatypes ((MutLongMap!4156 0))(
  ( (LongMap!4156 (underlying!8541 Cell!16433)) (MutLongMapExt!4155 (__x!22575 Int)) )
))
(declare-datatypes ((Cell!16435 0))(
  ( (Cell!16436 (v!35119 MutLongMap!4156)) )
))
(declare-datatypes ((MutableMap!4062 0))(
  ( (MutableMapExt!4061 (__x!22576 Int)) (HashMap!4062 (underlying!8542 Cell!16435) (hashF!6104 Hashable!4072) (_size!8356 (_ BitVec 32)) (defaultValue!4233 Int)) )
))
(declare-datatypes ((Cache!394 0))(
  ( (Cache!395 (cache!4205 MutableMap!4062)) )
))
(declare-fun cache!347 () Cache!394)

(declare-fun mapRest!18845 () (Array (_ BitVec 32) List!35566))

(declare-fun mapKey!18845 () (_ BitVec 32))

(declare-fun mapValue!18845 () List!35566)

(assert (=> mapNonEmpty!18845 (= (arr!6603 (_values!4437 (v!35118 (underlying!8541 (v!35119 (underlying!8542 (cache!4205 cache!347))))))) (store mapRest!18845 mapKey!18845 mapValue!18845))))

(declare-fun tp!996751 () Bool)

(declare-fun tp!996760 () Bool)

(declare-fun e!1971463 () Bool)

(declare-fun e!1971464 () Bool)

(declare-fun array_inv!4728 (array!14824) Bool)

(declare-fun array_inv!4729 (array!14826) Bool)

(assert (=> b!3164675 (= e!1971463 (and tp!996753 tp!996751 tp!996760 (array_inv!4728 (_keys!4456 (v!35118 (underlying!8541 (v!35119 (underlying!8542 (cache!4205 cache!347))))))) (array_inv!4729 (_values!4437 (v!35118 (underlying!8541 (v!35119 (underlying!8542 (cache!4205 cache!347))))))) e!1971464))))

(declare-fun b!3164676 () Bool)

(declare-fun e!1971466 () Bool)

(declare-fun e!1971462 () Bool)

(assert (=> b!3164676 (= e!1971466 e!1971462)))

(declare-fun b!3164677 () Bool)

(declare-fun e!1971457 () Bool)

(declare-fun tp_is_empty!17033 () Bool)

(assert (=> b!3164677 (= e!1971457 tp_is_empty!17033)))

(declare-fun b!3164678 () Bool)

(declare-fun e!1971459 () Bool)

(declare-fun lt!1063960 () MutLongMap!4156)

(get-info :version)

(assert (=> b!3164678 (= e!1971459 (and e!1971458 ((_ is LongMap!4156) lt!1063960)))))

(assert (=> b!3164678 (= lt!1063960 (v!35119 (underlying!8542 (cache!4205 cache!347))))))

(declare-fun b!3164679 () Bool)

(assert (=> b!3164679 (= e!1971460 e!1971463)))

(declare-fun b!3164680 () Bool)

(declare-fun tp!996752 () Bool)

(declare-fun tp!996757 () Bool)

(assert (=> b!3164680 (= e!1971457 (and tp!996752 tp!996757))))

(declare-fun res!1287781 () Bool)

(declare-fun e!1971465 () Bool)

(assert (=> start!296582 (=> (not res!1287781) (not e!1971465))))

(declare-fun r!13156 () Regex!9735)

(declare-fun validRegex!4458 (Regex!9735) Bool)

(assert (=> start!296582 (= res!1287781 (validRegex!4458 r!13156))))

(assert (=> start!296582 e!1971465))

(assert (=> start!296582 e!1971457))

(declare-fun inv!48108 (Cache!394) Bool)

(assert (=> start!296582 (and (inv!48108 cache!347) e!1971466)))

(assert (=> b!3164674 (= e!1971462 (and e!1971459 tp!996756))))

(declare-fun mapIsEmpty!18845 () Bool)

(assert (=> mapIsEmpty!18845 mapRes!18845))

(declare-fun b!3164681 () Bool)

(declare-fun res!1287780 () Bool)

(assert (=> b!3164681 (=> (not res!1287780) (not e!1971465))))

(declare-fun valid!3239 (Cache!394) Bool)

(assert (=> b!3164681 (= res!1287780 (valid!3239 cache!347))))

(declare-fun b!3164682 () Bool)

(declare-fun tp!996754 () Bool)

(assert (=> b!3164682 (= e!1971464 (and tp!996754 mapRes!18845))))

(declare-fun condMapEmpty!18845 () Bool)

(declare-fun mapDefault!18845 () List!35566)

(assert (=> b!3164682 (= condMapEmpty!18845 (= (arr!6603 (_values!4437 (v!35118 (underlying!8541 (v!35119 (underlying!8542 (cache!4205 cache!347))))))) ((as const (Array (_ BitVec 32) List!35566)) mapDefault!18845)))))

(declare-fun b!3164683 () Bool)

(declare-fun RegexPrimitiveSize!126 (Regex!9735) Int)

(assert (=> b!3164683 (= e!1971465 (< (RegexPrimitiveSize!126 r!13156) 0))))

(declare-fun b!3164684 () Bool)

(declare-fun tp!996759 () Bool)

(declare-fun tp!996755 () Bool)

(assert (=> b!3164684 (= e!1971457 (and tp!996759 tp!996755))))

(declare-fun b!3164685 () Bool)

(declare-fun tp!996758 () Bool)

(assert (=> b!3164685 (= e!1971457 tp!996758)))

(assert (= (and start!296582 res!1287781) b!3164681))

(assert (= (and b!3164681 res!1287780) b!3164683))

(assert (= (and start!296582 ((_ is ElementMatch!9735) r!13156)) b!3164677))

(assert (= (and start!296582 ((_ is Concat!15056) r!13156)) b!3164684))

(assert (= (and start!296582 ((_ is Star!9735) r!13156)) b!3164685))

(assert (= (and start!296582 ((_ is Union!9735) r!13156)) b!3164680))

(assert (= (and b!3164682 condMapEmpty!18845) mapIsEmpty!18845))

(assert (= (and b!3164682 (not condMapEmpty!18845)) mapNonEmpty!18845))

(assert (= b!3164675 b!3164682))

(assert (= b!3164679 b!3164675))

(assert (= b!3164673 b!3164679))

(assert (= (and b!3164678 ((_ is LongMap!4156) (v!35119 (underlying!8542 (cache!4205 cache!347))))) b!3164673))

(assert (= b!3164674 b!3164678))

(assert (= (and b!3164676 ((_ is HashMap!4062) (cache!4205 cache!347))) b!3164674))

(assert (= start!296582 b!3164676))

(declare-fun m!3427347 () Bool)

(assert (=> mapNonEmpty!18845 m!3427347))

(declare-fun m!3427349 () Bool)

(assert (=> b!3164681 m!3427349))

(declare-fun m!3427351 () Bool)

(assert (=> b!3164675 m!3427351))

(declare-fun m!3427353 () Bool)

(assert (=> b!3164675 m!3427353))

(declare-fun m!3427355 () Bool)

(assert (=> start!296582 m!3427355))

(declare-fun m!3427357 () Bool)

(assert (=> start!296582 m!3427357))

(declare-fun m!3427359 () Bool)

(assert (=> b!3164683 m!3427359))

(check-sat (not start!296582) (not b!3164683) b_and!209361 (not b!3164675) (not b!3164681) (not b!3164680) tp_is_empty!17033 (not b!3164685) (not b_next!83809) (not b!3164684) (not mapNonEmpty!18845) (not b_next!83811) (not b!3164682) b_and!209359)
(check-sat b_and!209361 b_and!209359 (not b_next!83809) (not b_next!83811))
(get-model)

(declare-fun d!868729 () Bool)

(declare-fun lt!1063963 () Int)

(assert (=> d!868729 (>= lt!1063963 0)))

(declare-fun e!1971479 () Int)

(assert (=> d!868729 (= lt!1063963 e!1971479)))

(declare-fun c!532229 () Bool)

(assert (=> d!868729 (= c!532229 ((_ is ElementMatch!9735) r!13156))))

(assert (=> d!868729 (= (RegexPrimitiveSize!126 r!13156) lt!1063963)))

(declare-fun b!3164706 () Bool)

(declare-fun e!1971481 () Int)

(assert (=> b!3164706 (= e!1971481 0)))

(declare-fun b!3164707 () Bool)

(assert (=> b!3164707 (= e!1971479 1)))

(declare-fun b!3164708 () Bool)

(declare-fun e!1971480 () Int)

(declare-fun e!1971478 () Int)

(assert (=> b!3164708 (= e!1971480 e!1971478)))

(declare-fun c!532227 () Bool)

(assert (=> b!3164708 (= c!532227 ((_ is Star!9735) r!13156))))

(declare-fun b!3164709 () Bool)

(declare-fun call!229385 () Int)

(assert (=> b!3164709 (= e!1971478 (+ 1 call!229385))))

(declare-fun b!3164710 () Bool)

(declare-fun e!1971477 () Int)

(assert (=> b!3164710 (= e!1971479 e!1971477)))

(declare-fun c!532226 () Bool)

(assert (=> b!3164710 (= c!532226 ((_ is Concat!15056) r!13156))))

(declare-fun bm!229380 () Bool)

(declare-fun call!229387 () Int)

(assert (=> bm!229380 (= call!229387 (RegexPrimitiveSize!126 (ite c!532226 (regTwo!19982 r!13156) (ite c!532227 (reg!10064 r!13156) (regTwo!19983 r!13156)))))))

(declare-fun bm!229381 () Bool)

(assert (=> bm!229381 (= call!229385 call!229387)))

(declare-fun b!3164711 () Bool)

(declare-fun c!532225 () Bool)

(assert (=> b!3164711 (= c!532225 ((_ is EmptyLang!9735) r!13156))))

(assert (=> b!3164711 (= e!1971478 e!1971481)))

(declare-fun b!3164712 () Bool)

(declare-fun call!229386 () Int)

(assert (=> b!3164712 (= e!1971477 (+ 1 call!229386 call!229387))))

(declare-fun b!3164713 () Bool)

(assert (=> b!3164713 (= e!1971480 0)))

(declare-fun bm!229382 () Bool)

(assert (=> bm!229382 (= call!229386 (RegexPrimitiveSize!126 (ite c!532226 (regOne!19982 r!13156) (regOne!19983 r!13156))))))

(declare-fun b!3164714 () Bool)

(declare-fun c!532228 () Bool)

(assert (=> b!3164714 (= c!532228 ((_ is EmptyExpr!9735) r!13156))))

(assert (=> b!3164714 (= e!1971477 e!1971480)))

(declare-fun b!3164715 () Bool)

(assert (=> b!3164715 (= e!1971481 (+ 1 call!229386 call!229385))))

(assert (= (and d!868729 c!532229) b!3164707))

(assert (= (and d!868729 (not c!532229)) b!3164710))

(assert (= (and b!3164710 c!532226) b!3164712))

(assert (= (and b!3164710 (not c!532226)) b!3164714))

(assert (= (and b!3164714 c!532228) b!3164713))

(assert (= (and b!3164714 (not c!532228)) b!3164708))

(assert (= (and b!3164708 c!532227) b!3164709))

(assert (= (and b!3164708 (not c!532227)) b!3164711))

(assert (= (and b!3164711 c!532225) b!3164706))

(assert (= (and b!3164711 (not c!532225)) b!3164715))

(assert (= (or b!3164709 b!3164715) bm!229381))

(assert (= (or b!3164712 bm!229381) bm!229380))

(assert (= (or b!3164712 b!3164715) bm!229382))

(declare-fun m!3427361 () Bool)

(assert (=> bm!229380 m!3427361))

(declare-fun m!3427363 () Bool)

(assert (=> bm!229382 m!3427363))

(assert (=> b!3164683 d!868729))

(declare-fun b!3164734 () Bool)

(declare-fun res!1287794 () Bool)

(declare-fun e!1971496 () Bool)

(assert (=> b!3164734 (=> res!1287794 e!1971496)))

(assert (=> b!3164734 (= res!1287794 (not ((_ is Concat!15056) r!13156)))))

(declare-fun e!1971502 () Bool)

(assert (=> b!3164734 (= e!1971502 e!1971496)))

(declare-fun b!3164735 () Bool)

(declare-fun e!1971500 () Bool)

(declare-fun call!229395 () Bool)

(assert (=> b!3164735 (= e!1971500 call!229395)))

(declare-fun b!3164736 () Bool)

(declare-fun e!1971497 () Bool)

(declare-fun call!229396 () Bool)

(assert (=> b!3164736 (= e!1971497 call!229396)))

(declare-fun b!3164737 () Bool)

(declare-fun e!1971498 () Bool)

(declare-fun e!1971499 () Bool)

(assert (=> b!3164737 (= e!1971498 e!1971499)))

(declare-fun c!532234 () Bool)

(assert (=> b!3164737 (= c!532234 ((_ is Star!9735) r!13156))))

(declare-fun bm!229389 () Bool)

(declare-fun c!532235 () Bool)

(assert (=> bm!229389 (= call!229396 (validRegex!4458 (ite c!532234 (reg!10064 r!13156) (ite c!532235 (regOne!19983 r!13156) (regOne!19982 r!13156)))))))

(declare-fun b!3164738 () Bool)

(declare-fun res!1287792 () Bool)

(assert (=> b!3164738 (=> (not res!1287792) (not e!1971500))))

(declare-fun call!229394 () Bool)

(assert (=> b!3164738 (= res!1287792 call!229394)))

(assert (=> b!3164738 (= e!1971502 e!1971500)))

(declare-fun bm!229390 () Bool)

(assert (=> bm!229390 (= call!229394 call!229396)))

(declare-fun b!3164740 () Bool)

(assert (=> b!3164740 (= e!1971499 e!1971497)))

(declare-fun res!1287796 () Bool)

(declare-fun nullable!3341 (Regex!9735) Bool)

(assert (=> b!3164740 (= res!1287796 (not (nullable!3341 (reg!10064 r!13156))))))

(assert (=> b!3164740 (=> (not res!1287796) (not e!1971497))))

(declare-fun b!3164741 () Bool)

(declare-fun e!1971501 () Bool)

(assert (=> b!3164741 (= e!1971496 e!1971501)))

(declare-fun res!1287793 () Bool)

(assert (=> b!3164741 (=> (not res!1287793) (not e!1971501))))

(assert (=> b!3164741 (= res!1287793 call!229394)))

(declare-fun b!3164739 () Bool)

(assert (=> b!3164739 (= e!1971501 call!229395)))

(declare-fun d!868731 () Bool)

(declare-fun res!1287795 () Bool)

(assert (=> d!868731 (=> res!1287795 e!1971498)))

(assert (=> d!868731 (= res!1287795 ((_ is ElementMatch!9735) r!13156))))

(assert (=> d!868731 (= (validRegex!4458 r!13156) e!1971498)))

(declare-fun b!3164742 () Bool)

(assert (=> b!3164742 (= e!1971499 e!1971502)))

(assert (=> b!3164742 (= c!532235 ((_ is Union!9735) r!13156))))

(declare-fun bm!229391 () Bool)

(assert (=> bm!229391 (= call!229395 (validRegex!4458 (ite c!532235 (regTwo!19983 r!13156) (regTwo!19982 r!13156))))))

(assert (= (and d!868731 (not res!1287795)) b!3164737))

(assert (= (and b!3164737 c!532234) b!3164740))

(assert (= (and b!3164737 (not c!532234)) b!3164742))

(assert (= (and b!3164740 res!1287796) b!3164736))

(assert (= (and b!3164742 c!532235) b!3164738))

(assert (= (and b!3164742 (not c!532235)) b!3164734))

(assert (= (and b!3164738 res!1287792) b!3164735))

(assert (= (and b!3164734 (not res!1287794)) b!3164741))

(assert (= (and b!3164741 res!1287793) b!3164739))

(assert (= (or b!3164738 b!3164741) bm!229390))

(assert (= (or b!3164735 b!3164739) bm!229391))

(assert (= (or b!3164736 bm!229390) bm!229389))

(declare-fun m!3427365 () Bool)

(assert (=> bm!229389 m!3427365))

(declare-fun m!3427367 () Bool)

(assert (=> b!3164740 m!3427367))

(declare-fun m!3427369 () Bool)

(assert (=> bm!229391 m!3427369))

(assert (=> start!296582 d!868731))

(declare-fun d!868733 () Bool)

(declare-fun res!1287799 () Bool)

(declare-fun e!1971505 () Bool)

(assert (=> d!868733 (=> (not res!1287799) (not e!1971505))))

(assert (=> d!868733 (= res!1287799 ((_ is HashMap!4062) (cache!4205 cache!347)))))

(assert (=> d!868733 (= (inv!48108 cache!347) e!1971505)))

(declare-fun b!3164745 () Bool)

(declare-fun validCacheMap!55 (MutableMap!4062) Bool)

(assert (=> b!3164745 (= e!1971505 (validCacheMap!55 (cache!4205 cache!347)))))

(assert (= (and d!868733 res!1287799) b!3164745))

(declare-fun m!3427371 () Bool)

(assert (=> b!3164745 m!3427371))

(assert (=> start!296582 d!868733))

(declare-fun d!868735 () Bool)

(assert (=> d!868735 (= (array_inv!4728 (_keys!4456 (v!35118 (underlying!8541 (v!35119 (underlying!8542 (cache!4205 cache!347))))))) (bvsge (size!26688 (_keys!4456 (v!35118 (underlying!8541 (v!35119 (underlying!8542 (cache!4205 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3164675 d!868735))

(declare-fun d!868737 () Bool)

(assert (=> d!868737 (= (array_inv!4729 (_values!4437 (v!35118 (underlying!8541 (v!35119 (underlying!8542 (cache!4205 cache!347))))))) (bvsge (size!26689 (_values!4437 (v!35118 (underlying!8541 (v!35119 (underlying!8542 (cache!4205 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3164675 d!868737))

(declare-fun d!868739 () Bool)

(assert (=> d!868739 (= (valid!3239 cache!347) (validCacheMap!55 (cache!4205 cache!347)))))

(declare-fun bs!539502 () Bool)

(assert (= bs!539502 d!868739))

(assert (=> bs!539502 m!3427371))

(assert (=> b!3164681 d!868739))

(declare-fun tp!996769 () Bool)

(declare-fun tp!996768 () Bool)

(declare-fun e!1971508 () Bool)

(declare-fun b!3164750 () Bool)

(declare-fun tp!996770 () Bool)

(assert (=> b!3164750 (= e!1971508 (and tp!996768 tp_is_empty!17033 tp!996769 tp!996770))))

(assert (=> b!3164682 (= tp!996754 e!1971508)))

(assert (= (and b!3164682 ((_ is Cons!35442) mapDefault!18845)) b!3164750))

(declare-fun tp!996787 () Bool)

(declare-fun tp!996788 () Bool)

(declare-fun b!3164758 () Bool)

(declare-fun e!1971513 () Bool)

(declare-fun tp!996789 () Bool)

(assert (=> b!3164758 (= e!1971513 (and tp!996787 tp_is_empty!17033 tp!996789 tp!996788))))

(declare-fun mapIsEmpty!18848 () Bool)

(declare-fun mapRes!18848 () Bool)

(assert (=> mapIsEmpty!18848 mapRes!18848))

(declare-fun mapNonEmpty!18848 () Bool)

(declare-fun tp!996785 () Bool)

(declare-fun e!1971514 () Bool)

(assert (=> mapNonEmpty!18848 (= mapRes!18848 (and tp!996785 e!1971514))))

(declare-fun mapRest!18848 () (Array (_ BitVec 32) List!35566))

(declare-fun mapValue!18848 () List!35566)

(declare-fun mapKey!18848 () (_ BitVec 32))

(assert (=> mapNonEmpty!18848 (= mapRest!18845 (store mapRest!18848 mapKey!18848 mapValue!18848))))

(declare-fun tp!996786 () Bool)

(declare-fun tp!996791 () Bool)

(declare-fun tp!996790 () Bool)

(declare-fun b!3164757 () Bool)

(assert (=> b!3164757 (= e!1971514 (and tp!996786 tp_is_empty!17033 tp!996791 tp!996790))))

(declare-fun condMapEmpty!18848 () Bool)

(declare-fun mapDefault!18848 () List!35566)

(assert (=> mapNonEmpty!18845 (= condMapEmpty!18848 (= mapRest!18845 ((as const (Array (_ BitVec 32) List!35566)) mapDefault!18848)))))

(assert (=> mapNonEmpty!18845 (= tp!996761 (and e!1971513 mapRes!18848))))

(assert (= (and mapNonEmpty!18845 condMapEmpty!18848) mapIsEmpty!18848))

(assert (= (and mapNonEmpty!18845 (not condMapEmpty!18848)) mapNonEmpty!18848))

(assert (= (and mapNonEmpty!18848 ((_ is Cons!35442) mapValue!18848)) b!3164757))

(assert (= (and mapNonEmpty!18845 ((_ is Cons!35442) mapDefault!18848)) b!3164758))

(declare-fun m!3427373 () Bool)

(assert (=> mapNonEmpty!18848 m!3427373))

(declare-fun b!3164759 () Bool)

(declare-fun tp!996792 () Bool)

(declare-fun tp!996793 () Bool)

(declare-fun tp!996794 () Bool)

(declare-fun e!1971515 () Bool)

(assert (=> b!3164759 (= e!1971515 (and tp!996792 tp_is_empty!17033 tp!996793 tp!996794))))

(assert (=> mapNonEmpty!18845 (= tp!996750 e!1971515)))

(assert (= (and mapNonEmpty!18845 ((_ is Cons!35442) mapValue!18845)) b!3164759))

(declare-fun b!3164771 () Bool)

(declare-fun e!1971518 () Bool)

(declare-fun tp!996807 () Bool)

(declare-fun tp!996805 () Bool)

(assert (=> b!3164771 (= e!1971518 (and tp!996807 tp!996805))))

(declare-fun b!3164772 () Bool)

(declare-fun tp!996806 () Bool)

(assert (=> b!3164772 (= e!1971518 tp!996806)))

(declare-fun b!3164770 () Bool)

(assert (=> b!3164770 (= e!1971518 tp_is_empty!17033)))

(assert (=> b!3164684 (= tp!996759 e!1971518)))

(declare-fun b!3164773 () Bool)

(declare-fun tp!996809 () Bool)

(declare-fun tp!996808 () Bool)

(assert (=> b!3164773 (= e!1971518 (and tp!996809 tp!996808))))

(assert (= (and b!3164684 ((_ is ElementMatch!9735) (regOne!19982 r!13156))) b!3164770))

(assert (= (and b!3164684 ((_ is Concat!15056) (regOne!19982 r!13156))) b!3164771))

(assert (= (and b!3164684 ((_ is Star!9735) (regOne!19982 r!13156))) b!3164772))

(assert (= (and b!3164684 ((_ is Union!9735) (regOne!19982 r!13156))) b!3164773))

(declare-fun b!3164775 () Bool)

(declare-fun e!1971519 () Bool)

(declare-fun tp!996812 () Bool)

(declare-fun tp!996810 () Bool)

(assert (=> b!3164775 (= e!1971519 (and tp!996812 tp!996810))))

(declare-fun b!3164776 () Bool)

(declare-fun tp!996811 () Bool)

(assert (=> b!3164776 (= e!1971519 tp!996811)))

(declare-fun b!3164774 () Bool)

(assert (=> b!3164774 (= e!1971519 tp_is_empty!17033)))

(assert (=> b!3164684 (= tp!996755 e!1971519)))

(declare-fun b!3164777 () Bool)

(declare-fun tp!996814 () Bool)

(declare-fun tp!996813 () Bool)

(assert (=> b!3164777 (= e!1971519 (and tp!996814 tp!996813))))

(assert (= (and b!3164684 ((_ is ElementMatch!9735) (regTwo!19982 r!13156))) b!3164774))

(assert (= (and b!3164684 ((_ is Concat!15056) (regTwo!19982 r!13156))) b!3164775))

(assert (= (and b!3164684 ((_ is Star!9735) (regTwo!19982 r!13156))) b!3164776))

(assert (= (and b!3164684 ((_ is Union!9735) (regTwo!19982 r!13156))) b!3164777))

(declare-fun b!3164779 () Bool)

(declare-fun e!1971520 () Bool)

(declare-fun tp!996817 () Bool)

(declare-fun tp!996815 () Bool)

(assert (=> b!3164779 (= e!1971520 (and tp!996817 tp!996815))))

(declare-fun b!3164780 () Bool)

(declare-fun tp!996816 () Bool)

(assert (=> b!3164780 (= e!1971520 tp!996816)))

(declare-fun b!3164778 () Bool)

(assert (=> b!3164778 (= e!1971520 tp_is_empty!17033)))

(assert (=> b!3164680 (= tp!996752 e!1971520)))

(declare-fun b!3164781 () Bool)

(declare-fun tp!996819 () Bool)

(declare-fun tp!996818 () Bool)

(assert (=> b!3164781 (= e!1971520 (and tp!996819 tp!996818))))

(assert (= (and b!3164680 ((_ is ElementMatch!9735) (regOne!19983 r!13156))) b!3164778))

(assert (= (and b!3164680 ((_ is Concat!15056) (regOne!19983 r!13156))) b!3164779))

(assert (= (and b!3164680 ((_ is Star!9735) (regOne!19983 r!13156))) b!3164780))

(assert (= (and b!3164680 ((_ is Union!9735) (regOne!19983 r!13156))) b!3164781))

(declare-fun b!3164783 () Bool)

(declare-fun e!1971521 () Bool)

(declare-fun tp!996822 () Bool)

(declare-fun tp!996820 () Bool)

(assert (=> b!3164783 (= e!1971521 (and tp!996822 tp!996820))))

(declare-fun b!3164784 () Bool)

(declare-fun tp!996821 () Bool)

(assert (=> b!3164784 (= e!1971521 tp!996821)))

(declare-fun b!3164782 () Bool)

(assert (=> b!3164782 (= e!1971521 tp_is_empty!17033)))

(assert (=> b!3164680 (= tp!996757 e!1971521)))

(declare-fun b!3164785 () Bool)

(declare-fun tp!996824 () Bool)

(declare-fun tp!996823 () Bool)

(assert (=> b!3164785 (= e!1971521 (and tp!996824 tp!996823))))

(assert (= (and b!3164680 ((_ is ElementMatch!9735) (regTwo!19983 r!13156))) b!3164782))

(assert (= (and b!3164680 ((_ is Concat!15056) (regTwo!19983 r!13156))) b!3164783))

(assert (= (and b!3164680 ((_ is Star!9735) (regTwo!19983 r!13156))) b!3164784))

(assert (= (and b!3164680 ((_ is Union!9735) (regTwo!19983 r!13156))) b!3164785))

(declare-fun tp!996826 () Bool)

(declare-fun tp!996825 () Bool)

(declare-fun b!3164786 () Bool)

(declare-fun e!1971522 () Bool)

(declare-fun tp!996827 () Bool)

(assert (=> b!3164786 (= e!1971522 (and tp!996825 tp_is_empty!17033 tp!996826 tp!996827))))

(assert (=> b!3164675 (= tp!996751 e!1971522)))

(assert (= (and b!3164675 ((_ is Cons!35442) (zeroValue!4415 (v!35118 (underlying!8541 (v!35119 (underlying!8542 (cache!4205 cache!347)))))))) b!3164786))

(declare-fun e!1971523 () Bool)

(declare-fun tp!996830 () Bool)

(declare-fun tp!996828 () Bool)

(declare-fun tp!996829 () Bool)

(declare-fun b!3164787 () Bool)

(assert (=> b!3164787 (= e!1971523 (and tp!996828 tp_is_empty!17033 tp!996829 tp!996830))))

(assert (=> b!3164675 (= tp!996760 e!1971523)))

(assert (= (and b!3164675 ((_ is Cons!35442) (minValue!4415 (v!35118 (underlying!8541 (v!35119 (underlying!8542 (cache!4205 cache!347)))))))) b!3164787))

(declare-fun b!3164789 () Bool)

(declare-fun e!1971524 () Bool)

(declare-fun tp!996833 () Bool)

(declare-fun tp!996831 () Bool)

(assert (=> b!3164789 (= e!1971524 (and tp!996833 tp!996831))))

(declare-fun b!3164790 () Bool)

(declare-fun tp!996832 () Bool)

(assert (=> b!3164790 (= e!1971524 tp!996832)))

(declare-fun b!3164788 () Bool)

(assert (=> b!3164788 (= e!1971524 tp_is_empty!17033)))

(assert (=> b!3164685 (= tp!996758 e!1971524)))

(declare-fun b!3164791 () Bool)

(declare-fun tp!996835 () Bool)

(declare-fun tp!996834 () Bool)

(assert (=> b!3164791 (= e!1971524 (and tp!996835 tp!996834))))

(assert (= (and b!3164685 ((_ is ElementMatch!9735) (reg!10064 r!13156))) b!3164788))

(assert (= (and b!3164685 ((_ is Concat!15056) (reg!10064 r!13156))) b!3164789))

(assert (= (and b!3164685 ((_ is Star!9735) (reg!10064 r!13156))) b!3164790))

(assert (= (and b!3164685 ((_ is Union!9735) (reg!10064 r!13156))) b!3164791))

(check-sat (not b!3164780) (not b!3164786) (not b!3164791) b_and!209361 (not b!3164757) (not bm!229382) (not b!3164772) (not b!3164771) (not bm!229391) tp_is_empty!17033 (not b!3164781) (not b!3164773) (not d!868739) (not b_next!83811) b_and!209359 (not b!3164790) (not bm!229389) (not b!3164775) (not b!3164745) (not b!3164750) (not mapNonEmpty!18848) (not b!3164787) (not b!3164783) (not bm!229380) (not b!3164784) (not b!3164740) (not b!3164776) (not b!3164759) (not b!3164789) (not b_next!83809) (not b!3164777) (not b!3164758) (not b!3164779) (not b!3164785))
(check-sat b_and!209361 b_and!209359 (not b_next!83809) (not b_next!83811))
