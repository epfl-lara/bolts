; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217536 () Bool)

(assert start!217536)

(declare-fun b!2230652 () Bool)

(declare-fun b_free!64681 () Bool)

(declare-fun b_next!65385 () Bool)

(assert (=> b!2230652 (= b_free!64681 (not b_next!65385))))

(declare-fun tp!698931 () Bool)

(declare-fun b_and!174669 () Bool)

(assert (=> b!2230652 (= tp!698931 b_and!174669)))

(declare-fun b!2230645 () Bool)

(declare-fun b_free!64683 () Bool)

(declare-fun b_next!65387 () Bool)

(assert (=> b!2230645 (= b_free!64683 (not b_next!65387))))

(declare-fun tp!698938 () Bool)

(declare-fun b_and!174671 () Bool)

(assert (=> b!2230645 (= tp!698938 b_and!174671)))

(declare-fun b!2230641 () Bool)

(declare-fun e!1425571 () Bool)

(declare-fun tp!698934 () Bool)

(assert (=> b!2230641 (= e!1425571 tp!698934)))

(declare-fun b!2230642 () Bool)

(declare-fun e!1425569 () Bool)

(declare-fun e!1425570 () Bool)

(assert (=> b!2230642 (= e!1425569 e!1425570)))

(declare-fun mapIsEmpty!14385 () Bool)

(declare-fun mapRes!14385 () Bool)

(assert (=> mapIsEmpty!14385 mapRes!14385))

(declare-fun b!2230643 () Bool)

(declare-fun e!1425565 () Bool)

(assert (=> b!2230643 (= e!1425570 e!1425565)))

(declare-fun b!2230644 () Bool)

(declare-fun tp!698926 () Bool)

(declare-fun tp!698930 () Bool)

(assert (=> b!2230644 (= e!1425571 (and tp!698926 tp!698930))))

(declare-fun tp!698927 () Bool)

(declare-datatypes ((C!12980 0))(
  ( (C!12981 (val!7538 Int)) )
))
(declare-datatypes ((Regex!6417 0))(
  ( (ElementMatch!6417 (c!355813 C!12980)) (Concat!10755 (regOne!13346 Regex!6417) (regTwo!13346 Regex!6417)) (EmptyExpr!6417) (Star!6417 (reg!6746 Regex!6417)) (EmptyLang!6417) (Union!6417 (regOne!13347 Regex!6417) (regTwo!13347 Regex!6417)) )
))
(declare-datatypes ((List!26306 0))(
  ( (Nil!26212) (Cons!26212 (h!31613 Regex!6417) (t!199722 List!26306)) )
))
(declare-datatypes ((Context!3930 0))(
  ( (Context!3931 (exprs!2465 List!26306)) )
))
(declare-datatypes ((array!10568 0))(
  ( (array!10569 (arr!4697 (Array (_ BitVec 32) (_ BitVec 64))) (size!20478 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3906 0))(
  ( (tuple3!3907 (_1!15204 Regex!6417) (_2!15204 Context!3930) (_3!2423 C!12980)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25562 0))(
  ( (tuple2!25563 (_1!15205 tuple3!3906) (_2!15205 (InoxSet Context!3930))) )
))
(declare-datatypes ((List!26307 0))(
  ( (Nil!26213) (Cons!26213 (h!31614 tuple2!25562) (t!199723 List!26307)) )
))
(declare-datatypes ((array!10570 0))(
  ( (array!10571 (arr!4698 (Array (_ BitVec 32) List!26307)) (size!20479 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6110 0))(
  ( (LongMapFixedSize!6111 (defaultEntry!3420 Int) (mask!7617 (_ BitVec 32)) (extraKeys!3303 (_ BitVec 32)) (zeroValue!3313 List!26307) (minValue!3313 List!26307) (_size!6157 (_ BitVec 32)) (_keys!3352 array!10568) (_values!3335 array!10570) (_vacant!3116 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12037 0))(
  ( (Cell!12038 (v!29802 LongMapFixedSize!6110)) )
))
(declare-datatypes ((MutLongMap!3055 0))(
  ( (LongMap!3055 (underlying!6311 Cell!12037)) (MutLongMapExt!3054 (__x!17391 Int)) )
))
(declare-datatypes ((Cell!12039 0))(
  ( (Cell!12040 (v!29803 MutLongMap!3055)) )
))
(declare-datatypes ((Hashable!2965 0))(
  ( (HashableExt!2964 (__x!17392 Int)) )
))
(declare-datatypes ((MutableMap!2965 0))(
  ( (MutableMapExt!2964 (__x!17393 Int)) (HashMap!2965 (underlying!6312 Cell!12039) (hashF!4888 Hashable!2965) (_size!6158 (_ BitVec 32)) (defaultValue!3127 Int)) )
))
(declare-datatypes ((CacheDown!1976 0))(
  ( (CacheDown!1977 (cache!3346 MutableMap!2965)) )
))
(declare-fun cacheDown!839 () CacheDown!1976)

(declare-fun tp!698932 () Bool)

(declare-fun e!1425566 () Bool)

(declare-fun array_inv!3373 (array!10568) Bool)

(declare-fun array_inv!3374 (array!10570) Bool)

(assert (=> b!2230645 (= e!1425565 (and tp!698938 tp!698927 tp!698932 (array_inv!3373 (_keys!3352 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839))))))) (array_inv!3374 (_values!3335 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839))))))) e!1425566))))

(declare-fun b!2230646 () Bool)

(declare-fun e!1425563 () Bool)

(declare-fun lt!830538 () MutLongMap!3055)

(get-info :version)

(assert (=> b!2230646 (= e!1425563 (and e!1425569 ((_ is LongMap!3055) lt!830538)))))

(assert (=> b!2230646 (= lt!830538 (v!29803 (underlying!6312 (cache!3346 cacheDown!839))))))

(declare-fun b!2230647 () Bool)

(declare-fun tp!698929 () Bool)

(declare-fun tp!698935 () Bool)

(assert (=> b!2230647 (= e!1425571 (and tp!698929 tp!698935))))

(declare-fun b!2230648 () Bool)

(declare-fun res!955457 () Bool)

(declare-fun e!1425568 () Bool)

(assert (=> b!2230648 (=> (not res!955457) (not e!1425568))))

(declare-fun expr!64 () Regex!6417)

(declare-fun nullable!1765 (Regex!6417) Bool)

(assert (=> b!2230648 (= res!955457 (nullable!1765 (regOne!13346 expr!64)))))

(declare-fun res!955459 () Bool)

(assert (=> start!217536 (=> (not res!955459) (not e!1425568))))

(declare-fun validRegex!2392 (Regex!6417) Bool)

(assert (=> start!217536 (= res!955459 (validRegex!2392 expr!64))))

(assert (=> start!217536 e!1425568))

(assert (=> start!217536 e!1425571))

(declare-fun e!1425573 () Bool)

(declare-fun inv!35598 (CacheDown!1976) Bool)

(assert (=> start!217536 (and (inv!35598 cacheDown!839) e!1425573)))

(declare-fun context!86 () Context!3930)

(declare-fun e!1425564 () Bool)

(declare-fun inv!35599 (Context!3930) Bool)

(assert (=> start!217536 (and (inv!35599 context!86) e!1425564)))

(declare-fun tp_is_empty!10059 () Bool)

(assert (=> start!217536 tp_is_empty!10059))

(declare-fun b!2230649 () Bool)

(declare-fun e!1425567 () Bool)

(assert (=> b!2230649 (= e!1425573 e!1425567)))

(declare-fun b!2230650 () Bool)

(declare-fun res!955458 () Bool)

(assert (=> b!2230650 (=> (not res!955458) (not e!1425568))))

(declare-fun a!1167 () C!12980)

(declare-datatypes ((Option!5103 0))(
  ( (None!5102) (Some!5102 (v!29804 (InoxSet Context!3930))) )
))
(declare-fun get!7912 (CacheDown!1976 Regex!6417 Context!3930 C!12980) Option!5103)

(assert (=> b!2230650 (= res!955458 (not ((_ is Some!5102) (get!7912 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2230651 () Bool)

(declare-fun res!955460 () Bool)

(assert (=> b!2230651 (=> (not res!955460) (not e!1425568))))

(assert (=> b!2230651 (= res!955460 (validRegex!2392 (regTwo!13346 expr!64)))))

(assert (=> b!2230652 (= e!1425567 (and e!1425563 tp!698931))))

(declare-fun b!2230653 () Bool)

(declare-fun res!955461 () Bool)

(assert (=> b!2230653 (=> (not res!955461) (not e!1425568))))

(assert (=> b!2230653 (= res!955461 (and (or (not ((_ is ElementMatch!6417) expr!64)) (not (= (c!355813 expr!64) a!1167))) (not ((_ is Union!6417) expr!64)) ((_ is Concat!10755) expr!64)))))

(declare-fun b!2230654 () Bool)

(declare-fun regexDepth!68 (Regex!6417) Int)

(assert (=> b!2230654 (= e!1425568 (>= (regexDepth!68 (regTwo!13346 expr!64)) (regexDepth!68 expr!64)))))

(declare-datatypes ((tuple2!25564 0))(
  ( (tuple2!25565 (_1!15206 (InoxSet Context!3930)) (_2!15206 CacheDown!1976)) )
))
(declare-fun lt!830537 () tuple2!25564)

(declare-fun derivationStepZipperDownMem!23 (Regex!6417 Context!3930 C!12980 CacheDown!1976) tuple2!25564)

(declare-fun $colon$colon!518 (List!26306 Regex!6417) List!26306)

(assert (=> b!2230654 (= lt!830537 (derivationStepZipperDownMem!23 (regOne!13346 expr!64) (Context!3931 ($colon$colon!518 (exprs!2465 context!86) (regTwo!13346 expr!64))) a!1167 cacheDown!839))))

(declare-fun mapNonEmpty!14385 () Bool)

(declare-fun tp!698933 () Bool)

(declare-fun tp!698936 () Bool)

(assert (=> mapNonEmpty!14385 (= mapRes!14385 (and tp!698933 tp!698936))))

(declare-fun mapRest!14385 () (Array (_ BitVec 32) List!26307))

(declare-fun mapValue!14385 () List!26307)

(declare-fun mapKey!14385 () (_ BitVec 32))

(assert (=> mapNonEmpty!14385 (= (arr!4698 (_values!3335 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839))))))) (store mapRest!14385 mapKey!14385 mapValue!14385))))

(declare-fun b!2230655 () Bool)

(declare-fun tp!698928 () Bool)

(assert (=> b!2230655 (= e!1425564 tp!698928)))

(declare-fun b!2230656 () Bool)

(assert (=> b!2230656 (= e!1425571 tp_is_empty!10059)))

(declare-fun b!2230657 () Bool)

(declare-fun tp!698937 () Bool)

(assert (=> b!2230657 (= e!1425566 (and tp!698937 mapRes!14385))))

(declare-fun condMapEmpty!14385 () Bool)

(declare-fun mapDefault!14385 () List!26307)

(assert (=> b!2230657 (= condMapEmpty!14385 (= (arr!4698 (_values!3335 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26307)) mapDefault!14385)))))

(assert (= (and start!217536 res!955459) b!2230650))

(assert (= (and b!2230650 res!955458) b!2230653))

(assert (= (and b!2230653 res!955461) b!2230648))

(assert (= (and b!2230648 res!955457) b!2230651))

(assert (= (and b!2230651 res!955460) b!2230654))

(assert (= (and start!217536 ((_ is ElementMatch!6417) expr!64)) b!2230656))

(assert (= (and start!217536 ((_ is Concat!10755) expr!64)) b!2230647))

(assert (= (and start!217536 ((_ is Star!6417) expr!64)) b!2230641))

(assert (= (and start!217536 ((_ is Union!6417) expr!64)) b!2230644))

(assert (= (and b!2230657 condMapEmpty!14385) mapIsEmpty!14385))

(assert (= (and b!2230657 (not condMapEmpty!14385)) mapNonEmpty!14385))

(assert (= b!2230645 b!2230657))

(assert (= b!2230643 b!2230645))

(assert (= b!2230642 b!2230643))

(assert (= (and b!2230646 ((_ is LongMap!3055) (v!29803 (underlying!6312 (cache!3346 cacheDown!839))))) b!2230642))

(assert (= b!2230652 b!2230646))

(assert (= (and b!2230649 ((_ is HashMap!2965) (cache!3346 cacheDown!839))) b!2230652))

(assert (= start!217536 b!2230649))

(assert (= start!217536 b!2230655))

(declare-fun m!2667486 () Bool)

(assert (=> b!2230654 m!2667486))

(declare-fun m!2667488 () Bool)

(assert (=> b!2230654 m!2667488))

(declare-fun m!2667490 () Bool)

(assert (=> b!2230654 m!2667490))

(declare-fun m!2667492 () Bool)

(assert (=> b!2230654 m!2667492))

(declare-fun m!2667494 () Bool)

(assert (=> b!2230650 m!2667494))

(declare-fun m!2667496 () Bool)

(assert (=> b!2230648 m!2667496))

(declare-fun m!2667498 () Bool)

(assert (=> mapNonEmpty!14385 m!2667498))

(declare-fun m!2667500 () Bool)

(assert (=> start!217536 m!2667500))

(declare-fun m!2667502 () Bool)

(assert (=> start!217536 m!2667502))

(declare-fun m!2667504 () Bool)

(assert (=> start!217536 m!2667504))

(declare-fun m!2667506 () Bool)

(assert (=> b!2230645 m!2667506))

(declare-fun m!2667508 () Bool)

(assert (=> b!2230645 m!2667508))

(declare-fun m!2667510 () Bool)

(assert (=> b!2230651 m!2667510))

(check-sat (not b!2230650) (not b!2230647) (not b!2230655) tp_is_empty!10059 (not b_next!65387) b_and!174671 (not mapNonEmpty!14385) (not b_next!65385) (not start!217536) b_and!174669 (not b!2230641) (not b!2230648) (not b!2230654) (not b!2230644) (not b!2230645) (not b!2230657) (not b!2230651))
(check-sat b_and!174669 b_and!174671 (not b_next!65387) (not b_next!65385))
(get-model)

(declare-fun b!2230692 () Bool)

(declare-fun e!1425596 () Int)

(assert (=> b!2230692 (= e!1425596 1)))

(declare-fun b!2230693 () Bool)

(declare-fun e!1425600 () Int)

(assert (=> b!2230693 (= e!1425600 1)))

(declare-fun b!2230694 () Bool)

(declare-fun e!1425595 () Bool)

(declare-fun lt!830541 () Int)

(declare-fun call!133910 () Int)

(assert (=> b!2230694 (= e!1425595 (> lt!830541 call!133910))))

(declare-fun bm!133903 () Bool)

(declare-fun call!133908 () Int)

(declare-fun c!355831 () Bool)

(assert (=> bm!133903 (= call!133908 (regexDepth!68 (ite c!355831 (regOne!13347 (regTwo!13346 expr!64)) (regTwo!13346 (regTwo!13346 expr!64)))))))

(declare-fun b!2230695 () Bool)

(declare-fun e!1425601 () Bool)

(declare-fun call!133911 () Int)

(assert (=> b!2230695 (= e!1425601 (> lt!830541 call!133911))))

(declare-fun bm!133904 () Bool)

(declare-fun call!133912 () Int)

(declare-fun call!133913 () Int)

(assert (=> bm!133904 (= call!133912 call!133913)))

(declare-fun b!2230696 () Bool)

(declare-fun e!1425598 () Int)

(declare-fun call!133914 () Int)

(assert (=> b!2230696 (= e!1425598 (+ 1 call!133914))))

(declare-fun bm!133905 () Bool)

(declare-fun call!133909 () Int)

(assert (=> bm!133905 (= call!133910 call!133909)))

(declare-fun bm!133906 () Bool)

(declare-fun c!355833 () Bool)

(assert (=> bm!133906 (= call!133913 (regexDepth!68 (ite c!355833 (reg!6746 (regTwo!13346 expr!64)) (ite c!355831 (regTwo!13347 (regTwo!13346 expr!64)) (regOne!13346 (regTwo!13346 expr!64))))))))

(declare-fun d!664998 () Bool)

(declare-fun e!1425599 () Bool)

(assert (=> d!664998 e!1425599))

(declare-fun res!955468 () Bool)

(assert (=> d!664998 (=> (not res!955468) (not e!1425599))))

(assert (=> d!664998 (= res!955468 (> lt!830541 0))))

(assert (=> d!664998 (= lt!830541 e!1425600)))

(declare-fun c!355828 () Bool)

(assert (=> d!664998 (= c!355828 ((_ is ElementMatch!6417) (regTwo!13346 expr!64)))))

(assert (=> d!664998 (= (regexDepth!68 (regTwo!13346 expr!64)) lt!830541)))

(declare-fun b!2230697 () Bool)

(declare-fun c!355829 () Bool)

(assert (=> b!2230697 (= c!355829 ((_ is Star!6417) (regTwo!13346 expr!64)))))

(declare-fun e!1425602 () Bool)

(assert (=> b!2230697 (= e!1425602 e!1425595)))

(declare-fun b!2230698 () Bool)

(declare-fun e!1425603 () Bool)

(assert (=> b!2230698 (= e!1425599 e!1425603)))

(declare-fun c!355830 () Bool)

(assert (=> b!2230698 (= c!355830 ((_ is Union!6417) (regTwo!13346 expr!64)))))

(declare-fun b!2230699 () Bool)

(declare-fun e!1425594 () Bool)

(assert (=> b!2230699 (= e!1425594 (> lt!830541 call!133911))))

(declare-fun bm!133907 () Bool)

(declare-fun c!355832 () Bool)

(assert (=> bm!133907 (= call!133909 (regexDepth!68 (ite c!355830 (regOne!13347 (regTwo!13346 expr!64)) (ite c!355832 (regOne!13346 (regTwo!13346 expr!64)) (reg!6746 (regTwo!13346 expr!64))))))))

(declare-fun bm!133908 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!133908 (= call!133914 (maxBigInt!0 (ite c!355831 call!133908 call!133912) (ite c!355831 call!133912 call!133908)))))

(declare-fun bm!133909 () Bool)

(assert (=> bm!133909 (= call!133911 (regexDepth!68 (ite c!355830 (regTwo!13347 (regTwo!13346 expr!64)) (regTwo!13346 (regTwo!13346 expr!64)))))))

(declare-fun b!2230700 () Bool)

(assert (=> b!2230700 (= e!1425603 e!1425602)))

(assert (=> b!2230700 (= c!355832 ((_ is Concat!10755) (regTwo!13346 expr!64)))))

(declare-fun b!2230701 () Bool)

(assert (=> b!2230701 (= e!1425595 (= lt!830541 1))))

(declare-fun b!2230702 () Bool)

(declare-fun res!955469 () Bool)

(assert (=> b!2230702 (=> (not res!955469) (not e!1425601))))

(assert (=> b!2230702 (= res!955469 (> lt!830541 call!133910))))

(assert (=> b!2230702 (= e!1425602 e!1425601)))

(declare-fun b!2230703 () Bool)

(declare-fun e!1425597 () Int)

(assert (=> b!2230703 (= e!1425597 (+ 1 call!133913))))

(declare-fun b!2230704 () Bool)

(assert (=> b!2230704 (= e!1425600 e!1425597)))

(assert (=> b!2230704 (= c!355833 ((_ is Star!6417) (regTwo!13346 expr!64)))))

(declare-fun b!2230705 () Bool)

(assert (=> b!2230705 (= c!355831 ((_ is Union!6417) (regTwo!13346 expr!64)))))

(assert (=> b!2230705 (= e!1425597 e!1425598)))

(declare-fun b!2230706 () Bool)

(assert (=> b!2230706 (= e!1425596 (+ 1 call!133914))))

(declare-fun b!2230707 () Bool)

(assert (=> b!2230707 (= e!1425598 e!1425596)))

(declare-fun c!355834 () Bool)

(assert (=> b!2230707 (= c!355834 ((_ is Concat!10755) (regTwo!13346 expr!64)))))

(declare-fun b!2230708 () Bool)

(assert (=> b!2230708 (= e!1425603 e!1425594)))

(declare-fun res!955470 () Bool)

(assert (=> b!2230708 (= res!955470 (> lt!830541 call!133909))))

(assert (=> b!2230708 (=> (not res!955470) (not e!1425594))))

(assert (= (and d!664998 c!355828) b!2230693))

(assert (= (and d!664998 (not c!355828)) b!2230704))

(assert (= (and b!2230704 c!355833) b!2230703))

(assert (= (and b!2230704 (not c!355833)) b!2230705))

(assert (= (and b!2230705 c!355831) b!2230696))

(assert (= (and b!2230705 (not c!355831)) b!2230707))

(assert (= (and b!2230707 c!355834) b!2230706))

(assert (= (and b!2230707 (not c!355834)) b!2230692))

(assert (= (or b!2230696 b!2230706) bm!133904))

(assert (= (or b!2230696 b!2230706) bm!133903))

(assert (= (or b!2230696 b!2230706) bm!133908))

(assert (= (or b!2230703 bm!133904) bm!133906))

(assert (= (and d!664998 res!955468) b!2230698))

(assert (= (and b!2230698 c!355830) b!2230708))

(assert (= (and b!2230698 (not c!355830)) b!2230700))

(assert (= (and b!2230708 res!955470) b!2230699))

(assert (= (and b!2230700 c!355832) b!2230702))

(assert (= (and b!2230700 (not c!355832)) b!2230697))

(assert (= (and b!2230702 res!955469) b!2230695))

(assert (= (and b!2230697 c!355829) b!2230694))

(assert (= (and b!2230697 (not c!355829)) b!2230701))

(assert (= (or b!2230702 b!2230694) bm!133905))

(assert (= (or b!2230699 b!2230695) bm!133909))

(assert (= (or b!2230708 bm!133905) bm!133907))

(declare-fun m!2667512 () Bool)

(assert (=> bm!133907 m!2667512))

(declare-fun m!2667514 () Bool)

(assert (=> bm!133908 m!2667514))

(declare-fun m!2667516 () Bool)

(assert (=> bm!133903 m!2667516))

(declare-fun m!2667518 () Bool)

(assert (=> bm!133906 m!2667518))

(declare-fun m!2667520 () Bool)

(assert (=> bm!133909 m!2667520))

(assert (=> b!2230654 d!664998))

(declare-fun b!2230709 () Bool)

(declare-fun e!1425606 () Int)

(assert (=> b!2230709 (= e!1425606 1)))

(declare-fun b!2230710 () Bool)

(declare-fun e!1425610 () Int)

(assert (=> b!2230710 (= e!1425610 1)))

(declare-fun b!2230711 () Bool)

(declare-fun e!1425605 () Bool)

(declare-fun lt!830542 () Int)

(declare-fun call!133917 () Int)

(assert (=> b!2230711 (= e!1425605 (> lt!830542 call!133917))))

(declare-fun bm!133910 () Bool)

(declare-fun call!133915 () Int)

(declare-fun c!355838 () Bool)

(assert (=> bm!133910 (= call!133915 (regexDepth!68 (ite c!355838 (regOne!13347 expr!64) (regTwo!13346 expr!64))))))

(declare-fun b!2230712 () Bool)

(declare-fun e!1425611 () Bool)

(declare-fun call!133918 () Int)

(assert (=> b!2230712 (= e!1425611 (> lt!830542 call!133918))))

(declare-fun bm!133911 () Bool)

(declare-fun call!133919 () Int)

(declare-fun call!133920 () Int)

(assert (=> bm!133911 (= call!133919 call!133920)))

(declare-fun b!2230713 () Bool)

(declare-fun e!1425608 () Int)

(declare-fun call!133921 () Int)

(assert (=> b!2230713 (= e!1425608 (+ 1 call!133921))))

(declare-fun bm!133912 () Bool)

(declare-fun call!133916 () Int)

(assert (=> bm!133912 (= call!133917 call!133916)))

(declare-fun bm!133913 () Bool)

(declare-fun c!355840 () Bool)

(assert (=> bm!133913 (= call!133920 (regexDepth!68 (ite c!355840 (reg!6746 expr!64) (ite c!355838 (regTwo!13347 expr!64) (regOne!13346 expr!64)))))))

(declare-fun d!665000 () Bool)

(declare-fun e!1425609 () Bool)

(assert (=> d!665000 e!1425609))

(declare-fun res!955471 () Bool)

(assert (=> d!665000 (=> (not res!955471) (not e!1425609))))

(assert (=> d!665000 (= res!955471 (> lt!830542 0))))

(assert (=> d!665000 (= lt!830542 e!1425610)))

(declare-fun c!355835 () Bool)

(assert (=> d!665000 (= c!355835 ((_ is ElementMatch!6417) expr!64))))

(assert (=> d!665000 (= (regexDepth!68 expr!64) lt!830542)))

(declare-fun b!2230714 () Bool)

(declare-fun c!355836 () Bool)

(assert (=> b!2230714 (= c!355836 ((_ is Star!6417) expr!64))))

(declare-fun e!1425612 () Bool)

(assert (=> b!2230714 (= e!1425612 e!1425605)))

(declare-fun b!2230715 () Bool)

(declare-fun e!1425613 () Bool)

(assert (=> b!2230715 (= e!1425609 e!1425613)))

(declare-fun c!355837 () Bool)

(assert (=> b!2230715 (= c!355837 ((_ is Union!6417) expr!64))))

(declare-fun b!2230716 () Bool)

(declare-fun e!1425604 () Bool)

(assert (=> b!2230716 (= e!1425604 (> lt!830542 call!133918))))

(declare-fun c!355839 () Bool)

(declare-fun bm!133914 () Bool)

(assert (=> bm!133914 (= call!133916 (regexDepth!68 (ite c!355837 (regOne!13347 expr!64) (ite c!355839 (regOne!13346 expr!64) (reg!6746 expr!64)))))))

(declare-fun bm!133915 () Bool)

(assert (=> bm!133915 (= call!133921 (maxBigInt!0 (ite c!355838 call!133915 call!133919) (ite c!355838 call!133919 call!133915)))))

(declare-fun bm!133916 () Bool)

(assert (=> bm!133916 (= call!133918 (regexDepth!68 (ite c!355837 (regTwo!13347 expr!64) (regTwo!13346 expr!64))))))

(declare-fun b!2230717 () Bool)

(assert (=> b!2230717 (= e!1425613 e!1425612)))

(assert (=> b!2230717 (= c!355839 ((_ is Concat!10755) expr!64))))

(declare-fun b!2230718 () Bool)

(assert (=> b!2230718 (= e!1425605 (= lt!830542 1))))

(declare-fun b!2230719 () Bool)

(declare-fun res!955472 () Bool)

(assert (=> b!2230719 (=> (not res!955472) (not e!1425611))))

(assert (=> b!2230719 (= res!955472 (> lt!830542 call!133917))))

(assert (=> b!2230719 (= e!1425612 e!1425611)))

(declare-fun b!2230720 () Bool)

(declare-fun e!1425607 () Int)

(assert (=> b!2230720 (= e!1425607 (+ 1 call!133920))))

(declare-fun b!2230721 () Bool)

(assert (=> b!2230721 (= e!1425610 e!1425607)))

(assert (=> b!2230721 (= c!355840 ((_ is Star!6417) expr!64))))

(declare-fun b!2230722 () Bool)

(assert (=> b!2230722 (= c!355838 ((_ is Union!6417) expr!64))))

(assert (=> b!2230722 (= e!1425607 e!1425608)))

(declare-fun b!2230723 () Bool)

(assert (=> b!2230723 (= e!1425606 (+ 1 call!133921))))

(declare-fun b!2230724 () Bool)

(assert (=> b!2230724 (= e!1425608 e!1425606)))

(declare-fun c!355841 () Bool)

(assert (=> b!2230724 (= c!355841 ((_ is Concat!10755) expr!64))))

(declare-fun b!2230725 () Bool)

(assert (=> b!2230725 (= e!1425613 e!1425604)))

(declare-fun res!955473 () Bool)

(assert (=> b!2230725 (= res!955473 (> lt!830542 call!133916))))

(assert (=> b!2230725 (=> (not res!955473) (not e!1425604))))

(assert (= (and d!665000 c!355835) b!2230710))

(assert (= (and d!665000 (not c!355835)) b!2230721))

(assert (= (and b!2230721 c!355840) b!2230720))

(assert (= (and b!2230721 (not c!355840)) b!2230722))

(assert (= (and b!2230722 c!355838) b!2230713))

(assert (= (and b!2230722 (not c!355838)) b!2230724))

(assert (= (and b!2230724 c!355841) b!2230723))

(assert (= (and b!2230724 (not c!355841)) b!2230709))

(assert (= (or b!2230713 b!2230723) bm!133911))

(assert (= (or b!2230713 b!2230723) bm!133910))

(assert (= (or b!2230713 b!2230723) bm!133915))

(assert (= (or b!2230720 bm!133911) bm!133913))

(assert (= (and d!665000 res!955471) b!2230715))

(assert (= (and b!2230715 c!355837) b!2230725))

(assert (= (and b!2230715 (not c!355837)) b!2230717))

(assert (= (and b!2230725 res!955473) b!2230716))

(assert (= (and b!2230717 c!355839) b!2230719))

(assert (= (and b!2230717 (not c!355839)) b!2230714))

(assert (= (and b!2230719 res!955472) b!2230712))

(assert (= (and b!2230714 c!355836) b!2230711))

(assert (= (and b!2230714 (not c!355836)) b!2230718))

(assert (= (or b!2230719 b!2230711) bm!133912))

(assert (= (or b!2230716 b!2230712) bm!133916))

(assert (= (or b!2230725 bm!133912) bm!133914))

(declare-fun m!2667522 () Bool)

(assert (=> bm!133914 m!2667522))

(declare-fun m!2667524 () Bool)

(assert (=> bm!133915 m!2667524))

(declare-fun m!2667526 () Bool)

(assert (=> bm!133910 m!2667526))

(declare-fun m!2667528 () Bool)

(assert (=> bm!133913 m!2667528))

(declare-fun m!2667530 () Bool)

(assert (=> bm!133916 m!2667530))

(assert (=> b!2230654 d!665000))

(declare-fun b!2230752 () Bool)

(declare-fun e!1425631 () tuple2!25564)

(declare-fun lt!830561 () tuple2!25564)

(declare-datatypes ((Unit!39154 0))(
  ( (Unit!39155) )
))
(declare-datatypes ((tuple2!25566 0))(
  ( (tuple2!25567 (_1!15207 Unit!39154) (_2!15207 CacheDown!1976)) )
))
(declare-fun update!137 (CacheDown!1976 Regex!6417 Context!3930 C!12980 (InoxSet Context!3930)) tuple2!25566)

(assert (=> b!2230752 (= e!1425631 (tuple2!25565 (_1!15206 lt!830561) (_2!15207 (update!137 (_2!15206 lt!830561) (regOne!13346 expr!64) (Context!3931 ($colon$colon!518 (exprs!2465 context!86) (regTwo!13346 expr!64))) a!1167 (_1!15206 lt!830561)))))))

(declare-fun c!355855 () Bool)

(assert (=> b!2230752 (= c!355855 (and ((_ is ElementMatch!6417) (regOne!13346 expr!64)) (= (c!355813 (regOne!13346 expr!64)) a!1167)))))

(declare-fun e!1425628 () tuple2!25564)

(assert (=> b!2230752 (= lt!830561 e!1425628)))

(declare-fun call!133937 () List!26306)

(declare-fun bm!133929 () Bool)

(declare-fun c!355854 () Bool)

(declare-fun c!355859 () Bool)

(assert (=> bm!133929 (= call!133937 ($colon$colon!518 (exprs!2465 (Context!3931 ($colon$colon!518 (exprs!2465 context!86) (regTwo!13346 expr!64)))) (ite (or c!355859 c!355854) (regTwo!13346 (regOne!13346 expr!64)) (regOne!13346 expr!64))))))

(declare-fun lt!830562 () tuple2!25564)

(declare-fun d!665002 () Bool)

(declare-fun derivationStepZipperDown!45 (Regex!6417 Context!3930 C!12980) (InoxSet Context!3930))

(assert (=> d!665002 (= (_1!15206 lt!830562) (derivationStepZipperDown!45 (regOne!13346 expr!64) (Context!3931 ($colon$colon!518 (exprs!2465 context!86) (regTwo!13346 expr!64))) a!1167))))

(assert (=> d!665002 (= lt!830562 e!1425631)))

(declare-fun c!355857 () Bool)

(declare-fun lt!830565 () Option!5103)

(assert (=> d!665002 (= c!355857 ((_ is Some!5102) lt!830565))))

(assert (=> d!665002 (= lt!830565 (get!7912 cacheDown!839 (regOne!13346 expr!64) (Context!3931 ($colon$colon!518 (exprs!2465 context!86) (regTwo!13346 expr!64))) a!1167))))

(assert (=> d!665002 (validRegex!2392 (regOne!13346 expr!64))))

(assert (=> d!665002 (= (derivationStepZipperDownMem!23 (regOne!13346 expr!64) (Context!3931 ($colon$colon!518 (exprs!2465 context!86) (regTwo!13346 expr!64))) a!1167 cacheDown!839) lt!830562)))

(declare-fun c!355856 () Bool)

(declare-fun bm!133930 () Bool)

(declare-fun call!133934 () tuple2!25564)

(assert (=> bm!133930 (= call!133934 (derivationStepZipperDownMem!23 (ite c!355856 (regOne!13347 (regOne!13346 expr!64)) (regOne!13346 (regOne!13346 expr!64))) (ite c!355856 (Context!3931 ($colon$colon!518 (exprs!2465 context!86) (regTwo!13346 expr!64))) (Context!3931 call!133937)) a!1167 cacheDown!839))))

(declare-fun bm!133931 () Bool)

(declare-fun call!133938 () tuple2!25564)

(declare-fun call!133939 () tuple2!25564)

(assert (=> bm!133931 (= call!133938 call!133939)))

(declare-fun b!2230753 () Bool)

(declare-fun lt!830568 () tuple2!25564)

(assert (=> b!2230753 (= lt!830568 call!133939)))

(declare-fun lt!830569 () tuple2!25564)

(assert (=> b!2230753 (= lt!830569 call!133934)))

(declare-fun e!1425634 () tuple2!25564)

(assert (=> b!2230753 (= e!1425634 (tuple2!25565 ((_ map or) (_1!15206 lt!830569) (_1!15206 lt!830568)) (_2!15206 lt!830568)))))

(declare-fun b!2230754 () Bool)

(declare-fun e!1425633 () tuple2!25564)

(declare-fun lt!830567 () tuple2!25564)

(declare-fun lt!830564 () tuple2!25564)

(assert (=> b!2230754 (= e!1425633 (tuple2!25565 ((_ map or) (_1!15206 lt!830567) (_1!15206 lt!830564)) (_2!15206 lt!830564)))))

(assert (=> b!2230754 (= lt!830567 call!133934)))

(declare-fun call!133935 () tuple2!25564)

(assert (=> b!2230754 (= lt!830564 call!133935)))

(declare-fun b!2230755 () Bool)

(assert (=> b!2230755 (= c!355854 ((_ is Concat!10755) (regOne!13346 expr!64)))))

(declare-fun e!1425630 () tuple2!25564)

(assert (=> b!2230755 (= e!1425634 e!1425630)))

(declare-fun b!2230756 () Bool)

(declare-fun e!1425632 () tuple2!25564)

(assert (=> b!2230756 (= e!1425630 e!1425632)))

(declare-fun c!355858 () Bool)

(assert (=> b!2230756 (= c!355858 ((_ is Star!6417) (regOne!13346 expr!64)))))

(declare-fun call!133936 () List!26306)

(declare-fun bm!133932 () Bool)

(assert (=> bm!133932 (= call!133935 (derivationStepZipperDownMem!23 (ite c!355856 (regTwo!13347 (regOne!13346 expr!64)) (ite c!355859 (regTwo!13346 (regOne!13346 expr!64)) (ite c!355854 (regOne!13346 (regOne!13346 expr!64)) (reg!6746 (regOne!13346 expr!64))))) (ite (or c!355856 c!355859) (Context!3931 ($colon$colon!518 (exprs!2465 context!86) (regTwo!13346 expr!64))) (Context!3931 call!133936)) a!1167 (ite c!355856 (_2!15206 lt!830567) (ite c!355859 (_2!15206 lt!830569) cacheDown!839))))))

(declare-fun bm!133933 () Bool)

(assert (=> bm!133933 (= call!133936 call!133937)))

(declare-fun b!2230757 () Bool)

(assert (=> b!2230757 (= e!1425633 e!1425634)))

(declare-fun res!955476 () Bool)

(assert (=> b!2230757 (= res!955476 ((_ is Concat!10755) (regOne!13346 expr!64)))))

(declare-fun e!1425629 () Bool)

(assert (=> b!2230757 (=> (not res!955476) (not e!1425629))))

(assert (=> b!2230757 (= c!355859 e!1425629)))

(declare-fun b!2230758 () Bool)

(declare-fun lt!830566 () tuple2!25564)

(assert (=> b!2230758 (= e!1425630 (tuple2!25565 (_1!15206 lt!830566) (_2!15206 lt!830566)))))

(assert (=> b!2230758 (= lt!830566 call!133938)))

(declare-fun b!2230759 () Bool)

(assert (=> b!2230759 (= e!1425628 (tuple2!25565 (store ((as const (Array Context!3930 Bool)) false) (Context!3931 ($colon$colon!518 (exprs!2465 context!86) (regTwo!13346 expr!64))) true) cacheDown!839))))

(declare-fun b!2230760 () Bool)

(assert (=> b!2230760 (= e!1425629 (nullable!1765 (regOne!13346 (regOne!13346 expr!64))))))

(declare-fun bm!133934 () Bool)

(assert (=> bm!133934 (= call!133939 call!133935)))

(declare-fun b!2230761 () Bool)

(declare-fun lt!830563 () tuple2!25564)

(assert (=> b!2230761 (= lt!830563 call!133938)))

(assert (=> b!2230761 (= e!1425632 (tuple2!25565 (_1!15206 lt!830563) (_2!15206 lt!830563)))))

(declare-fun b!2230762 () Bool)

(assert (=> b!2230762 (= e!1425631 (tuple2!25565 (v!29804 lt!830565) cacheDown!839))))

(declare-fun b!2230763 () Bool)

(assert (=> b!2230763 (= c!355856 ((_ is Union!6417) (regOne!13346 expr!64)))))

(assert (=> b!2230763 (= e!1425628 e!1425633)))

(declare-fun b!2230764 () Bool)

(assert (=> b!2230764 (= e!1425632 (tuple2!25565 ((as const (Array Context!3930 Bool)) false) cacheDown!839))))

(assert (= (and d!665002 c!355857) b!2230762))

(assert (= (and d!665002 (not c!355857)) b!2230752))

(assert (= (and b!2230752 c!355855) b!2230759))

(assert (= (and b!2230752 (not c!355855)) b!2230763))

(assert (= (and b!2230763 c!355856) b!2230754))

(assert (= (and b!2230763 (not c!355856)) b!2230757))

(assert (= (and b!2230757 res!955476) b!2230760))

(assert (= (and b!2230757 c!355859) b!2230753))

(assert (= (and b!2230757 (not c!355859)) b!2230755))

(assert (= (and b!2230755 c!355854) b!2230758))

(assert (= (and b!2230755 (not c!355854)) b!2230756))

(assert (= (and b!2230756 c!355858) b!2230761))

(assert (= (and b!2230756 (not c!355858)) b!2230764))

(assert (= (or b!2230758 b!2230761) bm!133933))

(assert (= (or b!2230758 b!2230761) bm!133931))

(assert (= (or b!2230753 bm!133933) bm!133929))

(assert (= (or b!2230753 bm!133931) bm!133934))

(assert (= (or b!2230754 b!2230753) bm!133930))

(assert (= (or b!2230754 bm!133934) bm!133932))

(declare-fun m!2667532 () Bool)

(assert (=> bm!133932 m!2667532))

(declare-fun m!2667534 () Bool)

(assert (=> b!2230759 m!2667534))

(declare-fun m!2667536 () Bool)

(assert (=> d!665002 m!2667536))

(declare-fun m!2667538 () Bool)

(assert (=> d!665002 m!2667538))

(declare-fun m!2667540 () Bool)

(assert (=> d!665002 m!2667540))

(declare-fun m!2667542 () Bool)

(assert (=> b!2230752 m!2667542))

(declare-fun m!2667544 () Bool)

(assert (=> b!2230760 m!2667544))

(declare-fun m!2667546 () Bool)

(assert (=> bm!133929 m!2667546))

(declare-fun m!2667548 () Bool)

(assert (=> bm!133930 m!2667548))

(assert (=> b!2230654 d!665002))

(declare-fun d!665004 () Bool)

(assert (=> d!665004 (= ($colon$colon!518 (exprs!2465 context!86) (regTwo!13346 expr!64)) (Cons!26212 (regTwo!13346 expr!64) (exprs!2465 context!86)))))

(assert (=> b!2230654 d!665004))

(declare-fun b!2230783 () Bool)

(declare-fun e!1425650 () Bool)

(declare-fun call!133948 () Bool)

(assert (=> b!2230783 (= e!1425650 call!133948)))

(declare-fun b!2230784 () Bool)

(declare-fun res!955490 () Bool)

(declare-fun e!1425651 () Bool)

(assert (=> b!2230784 (=> res!955490 e!1425651)))

(assert (=> b!2230784 (= res!955490 (not ((_ is Concat!10755) expr!64)))))

(declare-fun e!1425652 () Bool)

(assert (=> b!2230784 (= e!1425652 e!1425651)))

(declare-fun b!2230785 () Bool)

(declare-fun e!1425655 () Bool)

(declare-fun e!1425649 () Bool)

(assert (=> b!2230785 (= e!1425655 e!1425649)))

(declare-fun c!355865 () Bool)

(assert (=> b!2230785 (= c!355865 ((_ is Star!6417) expr!64))))

(declare-fun b!2230786 () Bool)

(declare-fun e!1425654 () Bool)

(assert (=> b!2230786 (= e!1425649 e!1425654)))

(declare-fun res!955491 () Bool)

(assert (=> b!2230786 (= res!955491 (not (nullable!1765 (reg!6746 expr!64))))))

(assert (=> b!2230786 (=> (not res!955491) (not e!1425654))))

(declare-fun b!2230787 () Bool)

(declare-fun res!955489 () Bool)

(declare-fun e!1425653 () Bool)

(assert (=> b!2230787 (=> (not res!955489) (not e!1425653))))

(declare-fun call!133946 () Bool)

(assert (=> b!2230787 (= res!955489 call!133946)))

(assert (=> b!2230787 (= e!1425652 e!1425653)))

(declare-fun d!665006 () Bool)

(declare-fun res!955488 () Bool)

(assert (=> d!665006 (=> res!955488 e!1425655)))

(assert (=> d!665006 (= res!955488 ((_ is ElementMatch!6417) expr!64))))

(assert (=> d!665006 (= (validRegex!2392 expr!64) e!1425655)))

(declare-fun b!2230788 () Bool)

(assert (=> b!2230788 (= e!1425651 e!1425650)))

(declare-fun res!955487 () Bool)

(assert (=> b!2230788 (=> (not res!955487) (not e!1425650))))

(assert (=> b!2230788 (= res!955487 call!133946)))

(declare-fun bm!133941 () Bool)

(declare-fun c!355864 () Bool)

(assert (=> bm!133941 (= call!133946 (validRegex!2392 (ite c!355864 (regOne!13347 expr!64) (regOne!13346 expr!64))))))

(declare-fun bm!133942 () Bool)

(declare-fun call!133947 () Bool)

(assert (=> bm!133942 (= call!133947 (validRegex!2392 (ite c!355865 (reg!6746 expr!64) (ite c!355864 (regTwo!13347 expr!64) (regTwo!13346 expr!64)))))))

(declare-fun bm!133943 () Bool)

(assert (=> bm!133943 (= call!133948 call!133947)))

(declare-fun b!2230789 () Bool)

(assert (=> b!2230789 (= e!1425653 call!133948)))

(declare-fun b!2230790 () Bool)

(assert (=> b!2230790 (= e!1425649 e!1425652)))

(assert (=> b!2230790 (= c!355864 ((_ is Union!6417) expr!64))))

(declare-fun b!2230791 () Bool)

(assert (=> b!2230791 (= e!1425654 call!133947)))

(assert (= (and d!665006 (not res!955488)) b!2230785))

(assert (= (and b!2230785 c!355865) b!2230786))

(assert (= (and b!2230785 (not c!355865)) b!2230790))

(assert (= (and b!2230786 res!955491) b!2230791))

(assert (= (and b!2230790 c!355864) b!2230787))

(assert (= (and b!2230790 (not c!355864)) b!2230784))

(assert (= (and b!2230787 res!955489) b!2230789))

(assert (= (and b!2230784 (not res!955490)) b!2230788))

(assert (= (and b!2230788 res!955487) b!2230783))

(assert (= (or b!2230789 b!2230783) bm!133943))

(assert (= (or b!2230787 b!2230788) bm!133941))

(assert (= (or b!2230791 bm!133943) bm!133942))

(declare-fun m!2667550 () Bool)

(assert (=> b!2230786 m!2667550))

(declare-fun m!2667552 () Bool)

(assert (=> bm!133941 m!2667552))

(declare-fun m!2667554 () Bool)

(assert (=> bm!133942 m!2667554))

(assert (=> start!217536 d!665006))

(declare-fun d!665008 () Bool)

(declare-fun res!955494 () Bool)

(declare-fun e!1425658 () Bool)

(assert (=> d!665008 (=> (not res!955494) (not e!1425658))))

(assert (=> d!665008 (= res!955494 ((_ is HashMap!2965) (cache!3346 cacheDown!839)))))

(assert (=> d!665008 (= (inv!35598 cacheDown!839) e!1425658)))

(declare-fun b!2230794 () Bool)

(declare-fun validCacheMapDown!282 (MutableMap!2965) Bool)

(assert (=> b!2230794 (= e!1425658 (validCacheMapDown!282 (cache!3346 cacheDown!839)))))

(assert (= (and d!665008 res!955494) b!2230794))

(declare-fun m!2667556 () Bool)

(assert (=> b!2230794 m!2667556))

(assert (=> start!217536 d!665008))

(declare-fun d!665010 () Bool)

(declare-fun lambda!84288 () Int)

(declare-fun forall!5362 (List!26306 Int) Bool)

(assert (=> d!665010 (= (inv!35599 context!86) (forall!5362 (exprs!2465 context!86) lambda!84288))))

(declare-fun bs!453888 () Bool)

(assert (= bs!453888 d!665010))

(declare-fun m!2667558 () Bool)

(assert (=> bs!453888 m!2667558))

(assert (=> start!217536 d!665010))

(declare-fun d!665012 () Bool)

(declare-fun nullableFct!415 (Regex!6417) Bool)

(assert (=> d!665012 (= (nullable!1765 (regOne!13346 expr!64)) (nullableFct!415 (regOne!13346 expr!64)))))

(declare-fun bs!453889 () Bool)

(assert (= bs!453889 d!665012))

(declare-fun m!2667560 () Bool)

(assert (=> bs!453889 m!2667560))

(assert (=> b!2230648 d!665012))

(declare-fun b!2230795 () Bool)

(declare-fun e!1425660 () Bool)

(declare-fun call!133951 () Bool)

(assert (=> b!2230795 (= e!1425660 call!133951)))

(declare-fun b!2230796 () Bool)

(declare-fun res!955498 () Bool)

(declare-fun e!1425661 () Bool)

(assert (=> b!2230796 (=> res!955498 e!1425661)))

(assert (=> b!2230796 (= res!955498 (not ((_ is Concat!10755) (regTwo!13346 expr!64))))))

(declare-fun e!1425662 () Bool)

(assert (=> b!2230796 (= e!1425662 e!1425661)))

(declare-fun b!2230797 () Bool)

(declare-fun e!1425665 () Bool)

(declare-fun e!1425659 () Bool)

(assert (=> b!2230797 (= e!1425665 e!1425659)))

(declare-fun c!355867 () Bool)

(assert (=> b!2230797 (= c!355867 ((_ is Star!6417) (regTwo!13346 expr!64)))))

(declare-fun b!2230798 () Bool)

(declare-fun e!1425664 () Bool)

(assert (=> b!2230798 (= e!1425659 e!1425664)))

(declare-fun res!955499 () Bool)

(assert (=> b!2230798 (= res!955499 (not (nullable!1765 (reg!6746 (regTwo!13346 expr!64)))))))

(assert (=> b!2230798 (=> (not res!955499) (not e!1425664))))

(declare-fun b!2230799 () Bool)

(declare-fun res!955497 () Bool)

(declare-fun e!1425663 () Bool)

(assert (=> b!2230799 (=> (not res!955497) (not e!1425663))))

(declare-fun call!133949 () Bool)

(assert (=> b!2230799 (= res!955497 call!133949)))

(assert (=> b!2230799 (= e!1425662 e!1425663)))

(declare-fun d!665014 () Bool)

(declare-fun res!955496 () Bool)

(assert (=> d!665014 (=> res!955496 e!1425665)))

(assert (=> d!665014 (= res!955496 ((_ is ElementMatch!6417) (regTwo!13346 expr!64)))))

(assert (=> d!665014 (= (validRegex!2392 (regTwo!13346 expr!64)) e!1425665)))

(declare-fun b!2230800 () Bool)

(assert (=> b!2230800 (= e!1425661 e!1425660)))

(declare-fun res!955495 () Bool)

(assert (=> b!2230800 (=> (not res!955495) (not e!1425660))))

(assert (=> b!2230800 (= res!955495 call!133949)))

(declare-fun bm!133944 () Bool)

(declare-fun c!355866 () Bool)

(assert (=> bm!133944 (= call!133949 (validRegex!2392 (ite c!355866 (regOne!13347 (regTwo!13346 expr!64)) (regOne!13346 (regTwo!13346 expr!64)))))))

(declare-fun call!133950 () Bool)

(declare-fun bm!133945 () Bool)

(assert (=> bm!133945 (= call!133950 (validRegex!2392 (ite c!355867 (reg!6746 (regTwo!13346 expr!64)) (ite c!355866 (regTwo!13347 (regTwo!13346 expr!64)) (regTwo!13346 (regTwo!13346 expr!64))))))))

(declare-fun bm!133946 () Bool)

(assert (=> bm!133946 (= call!133951 call!133950)))

(declare-fun b!2230801 () Bool)

(assert (=> b!2230801 (= e!1425663 call!133951)))

(declare-fun b!2230802 () Bool)

(assert (=> b!2230802 (= e!1425659 e!1425662)))

(assert (=> b!2230802 (= c!355866 ((_ is Union!6417) (regTwo!13346 expr!64)))))

(declare-fun b!2230803 () Bool)

(assert (=> b!2230803 (= e!1425664 call!133950)))

(assert (= (and d!665014 (not res!955496)) b!2230797))

(assert (= (and b!2230797 c!355867) b!2230798))

(assert (= (and b!2230797 (not c!355867)) b!2230802))

(assert (= (and b!2230798 res!955499) b!2230803))

(assert (= (and b!2230802 c!355866) b!2230799))

(assert (= (and b!2230802 (not c!355866)) b!2230796))

(assert (= (and b!2230799 res!955497) b!2230801))

(assert (= (and b!2230796 (not res!955498)) b!2230800))

(assert (= (and b!2230800 res!955495) b!2230795))

(assert (= (or b!2230801 b!2230795) bm!133946))

(assert (= (or b!2230799 b!2230800) bm!133944))

(assert (= (or b!2230803 bm!133946) bm!133945))

(declare-fun m!2667562 () Bool)

(assert (=> b!2230798 m!2667562))

(declare-fun m!2667564 () Bool)

(assert (=> bm!133944 m!2667564))

(declare-fun m!2667566 () Bool)

(assert (=> bm!133945 m!2667566))

(assert (=> b!2230651 d!665014))

(declare-fun d!665016 () Bool)

(declare-fun e!1425668 () Bool)

(assert (=> d!665016 e!1425668))

(declare-fun res!955502 () Bool)

(assert (=> d!665016 (=> res!955502 e!1425668)))

(declare-fun lt!830572 () Option!5103)

(declare-fun isEmpty!14895 (Option!5103) Bool)

(assert (=> d!665016 (= res!955502 (isEmpty!14895 lt!830572))))

(declare-fun choose!13126 (CacheDown!1976 Regex!6417 Context!3930 C!12980) Option!5103)

(assert (=> d!665016 (= lt!830572 (choose!13126 cacheDown!839 expr!64 context!86 a!1167))))

(assert (=> d!665016 (validCacheMapDown!282 (cache!3346 cacheDown!839))))

(assert (=> d!665016 (= (get!7912 cacheDown!839 expr!64 context!86 a!1167) lt!830572)))

(declare-fun b!2230806 () Bool)

(declare-fun get!7913 (Option!5103) (InoxSet Context!3930))

(assert (=> b!2230806 (= e!1425668 (= (get!7913 lt!830572) (derivationStepZipperDown!45 expr!64 context!86 a!1167)))))

(assert (= (and d!665016 (not res!955502)) b!2230806))

(declare-fun m!2667568 () Bool)

(assert (=> d!665016 m!2667568))

(declare-fun m!2667570 () Bool)

(assert (=> d!665016 m!2667570))

(assert (=> d!665016 m!2667556))

(declare-fun m!2667572 () Bool)

(assert (=> b!2230806 m!2667572))

(declare-fun m!2667574 () Bool)

(assert (=> b!2230806 m!2667574))

(assert (=> b!2230650 d!665016))

(declare-fun d!665018 () Bool)

(assert (=> d!665018 (= (array_inv!3373 (_keys!3352 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839))))))) (bvsge (size!20478 (_keys!3352 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2230645 d!665018))

(declare-fun d!665020 () Bool)

(assert (=> d!665020 (= (array_inv!3374 (_values!3335 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839))))))) (bvsge (size!20479 (_values!3335 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2230645 d!665020))

(declare-fun e!1425671 () Bool)

(assert (=> b!2230644 (= tp!698926 e!1425671)))

(declare-fun b!2230817 () Bool)

(assert (=> b!2230817 (= e!1425671 tp_is_empty!10059)))

(declare-fun b!2230820 () Bool)

(declare-fun tp!698951 () Bool)

(declare-fun tp!698952 () Bool)

(assert (=> b!2230820 (= e!1425671 (and tp!698951 tp!698952))))

(declare-fun b!2230818 () Bool)

(declare-fun tp!698953 () Bool)

(declare-fun tp!698949 () Bool)

(assert (=> b!2230818 (= e!1425671 (and tp!698953 tp!698949))))

(declare-fun b!2230819 () Bool)

(declare-fun tp!698950 () Bool)

(assert (=> b!2230819 (= e!1425671 tp!698950)))

(assert (= (and b!2230644 ((_ is ElementMatch!6417) (regOne!13347 expr!64))) b!2230817))

(assert (= (and b!2230644 ((_ is Concat!10755) (regOne!13347 expr!64))) b!2230818))

(assert (= (and b!2230644 ((_ is Star!6417) (regOne!13347 expr!64))) b!2230819))

(assert (= (and b!2230644 ((_ is Union!6417) (regOne!13347 expr!64))) b!2230820))

(declare-fun e!1425672 () Bool)

(assert (=> b!2230644 (= tp!698930 e!1425672)))

(declare-fun b!2230821 () Bool)

(assert (=> b!2230821 (= e!1425672 tp_is_empty!10059)))

(declare-fun b!2230824 () Bool)

(declare-fun tp!698956 () Bool)

(declare-fun tp!698957 () Bool)

(assert (=> b!2230824 (= e!1425672 (and tp!698956 tp!698957))))

(declare-fun b!2230822 () Bool)

(declare-fun tp!698958 () Bool)

(declare-fun tp!698954 () Bool)

(assert (=> b!2230822 (= e!1425672 (and tp!698958 tp!698954))))

(declare-fun b!2230823 () Bool)

(declare-fun tp!698955 () Bool)

(assert (=> b!2230823 (= e!1425672 tp!698955)))

(assert (= (and b!2230644 ((_ is ElementMatch!6417) (regTwo!13347 expr!64))) b!2230821))

(assert (= (and b!2230644 ((_ is Concat!10755) (regTwo!13347 expr!64))) b!2230822))

(assert (= (and b!2230644 ((_ is Star!6417) (regTwo!13347 expr!64))) b!2230823))

(assert (= (and b!2230644 ((_ is Union!6417) (regTwo!13347 expr!64))) b!2230824))

(declare-fun e!1425673 () Bool)

(assert (=> b!2230647 (= tp!698929 e!1425673)))

(declare-fun b!2230825 () Bool)

(assert (=> b!2230825 (= e!1425673 tp_is_empty!10059)))

(declare-fun b!2230828 () Bool)

(declare-fun tp!698961 () Bool)

(declare-fun tp!698962 () Bool)

(assert (=> b!2230828 (= e!1425673 (and tp!698961 tp!698962))))

(declare-fun b!2230826 () Bool)

(declare-fun tp!698963 () Bool)

(declare-fun tp!698959 () Bool)

(assert (=> b!2230826 (= e!1425673 (and tp!698963 tp!698959))))

(declare-fun b!2230827 () Bool)

(declare-fun tp!698960 () Bool)

(assert (=> b!2230827 (= e!1425673 tp!698960)))

(assert (= (and b!2230647 ((_ is ElementMatch!6417) (regOne!13346 expr!64))) b!2230825))

(assert (= (and b!2230647 ((_ is Concat!10755) (regOne!13346 expr!64))) b!2230826))

(assert (= (and b!2230647 ((_ is Star!6417) (regOne!13346 expr!64))) b!2230827))

(assert (= (and b!2230647 ((_ is Union!6417) (regOne!13346 expr!64))) b!2230828))

(declare-fun e!1425674 () Bool)

(assert (=> b!2230647 (= tp!698935 e!1425674)))

(declare-fun b!2230829 () Bool)

(assert (=> b!2230829 (= e!1425674 tp_is_empty!10059)))

(declare-fun b!2230832 () Bool)

(declare-fun tp!698966 () Bool)

(declare-fun tp!698967 () Bool)

(assert (=> b!2230832 (= e!1425674 (and tp!698966 tp!698967))))

(declare-fun b!2230830 () Bool)

(declare-fun tp!698968 () Bool)

(declare-fun tp!698964 () Bool)

(assert (=> b!2230830 (= e!1425674 (and tp!698968 tp!698964))))

(declare-fun b!2230831 () Bool)

(declare-fun tp!698965 () Bool)

(assert (=> b!2230831 (= e!1425674 tp!698965)))

(assert (= (and b!2230647 ((_ is ElementMatch!6417) (regTwo!13346 expr!64))) b!2230829))

(assert (= (and b!2230647 ((_ is Concat!10755) (regTwo!13346 expr!64))) b!2230830))

(assert (= (and b!2230647 ((_ is Star!6417) (regTwo!13346 expr!64))) b!2230831))

(assert (= (and b!2230647 ((_ is Union!6417) (regTwo!13346 expr!64))) b!2230832))

(declare-fun e!1425681 () Bool)

(declare-fun setRes!20075 () Bool)

(declare-fun e!1425682 () Bool)

(declare-fun tp!698981 () Bool)

(declare-fun tp!698979 () Bool)

(declare-fun b!2230841 () Bool)

(assert (=> b!2230841 (= e!1425681 (and tp!698981 (inv!35599 (_2!15204 (_1!15205 (h!31614 mapDefault!14385)))) e!1425682 tp_is_empty!10059 setRes!20075 tp!698979))))

(declare-fun condSetEmpty!20075 () Bool)

(assert (=> b!2230841 (= condSetEmpty!20075 (= (_2!15205 (h!31614 mapDefault!14385)) ((as const (Array Context!3930 Bool)) false)))))

(declare-fun b!2230842 () Bool)

(declare-fun e!1425683 () Bool)

(declare-fun tp!698983 () Bool)

(assert (=> b!2230842 (= e!1425683 tp!698983)))

(declare-fun setNonEmpty!20075 () Bool)

(declare-fun setElem!20075 () Context!3930)

(declare-fun tp!698982 () Bool)

(assert (=> setNonEmpty!20075 (= setRes!20075 (and tp!698982 (inv!35599 setElem!20075) e!1425683))))

(declare-fun setRest!20075 () (InoxSet Context!3930))

(assert (=> setNonEmpty!20075 (= (_2!15205 (h!31614 mapDefault!14385)) ((_ map or) (store ((as const (Array Context!3930 Bool)) false) setElem!20075 true) setRest!20075))))

(assert (=> b!2230657 (= tp!698937 e!1425681)))

(declare-fun b!2230843 () Bool)

(declare-fun tp!698980 () Bool)

(assert (=> b!2230843 (= e!1425682 tp!698980)))

(declare-fun setIsEmpty!20075 () Bool)

(assert (=> setIsEmpty!20075 setRes!20075))

(assert (= b!2230841 b!2230843))

(assert (= (and b!2230841 condSetEmpty!20075) setIsEmpty!20075))

(assert (= (and b!2230841 (not condSetEmpty!20075)) setNonEmpty!20075))

(assert (= setNonEmpty!20075 b!2230842))

(assert (= (and b!2230657 ((_ is Cons!26213) mapDefault!14385)) b!2230841))

(declare-fun m!2667576 () Bool)

(assert (=> b!2230841 m!2667576))

(declare-fun m!2667578 () Bool)

(assert (=> setNonEmpty!20075 m!2667578))

(declare-fun mapNonEmpty!14388 () Bool)

(declare-fun mapRes!14388 () Bool)

(declare-fun tp!699016 () Bool)

(declare-fun e!1425699 () Bool)

(assert (=> mapNonEmpty!14388 (= mapRes!14388 (and tp!699016 e!1425699))))

(declare-fun mapRest!14388 () (Array (_ BitVec 32) List!26307))

(declare-fun mapKey!14388 () (_ BitVec 32))

(declare-fun mapValue!14388 () List!26307)

(assert (=> mapNonEmpty!14388 (= mapRest!14385 (store mapRest!14388 mapKey!14388 mapValue!14388))))

(declare-fun e!1425701 () Bool)

(declare-fun tp!699009 () Bool)

(declare-fun setRes!20081 () Bool)

(declare-fun b!2230858 () Bool)

(declare-fun tp!699007 () Bool)

(assert (=> b!2230858 (= e!1425699 (and tp!699007 (inv!35599 (_2!15204 (_1!15205 (h!31614 mapValue!14388)))) e!1425701 tp_is_empty!10059 setRes!20081 tp!699009))))

(declare-fun condSetEmpty!20081 () Bool)

(assert (=> b!2230858 (= condSetEmpty!20081 (= (_2!15205 (h!31614 mapValue!14388)) ((as const (Array Context!3930 Bool)) false)))))

(declare-fun b!2230859 () Bool)

(declare-fun e!1425697 () Bool)

(declare-fun tp!699006 () Bool)

(assert (=> b!2230859 (= e!1425697 tp!699006)))

(declare-fun setRes!20080 () Bool)

(declare-fun b!2230860 () Bool)

(declare-fun mapDefault!14388 () List!26307)

(declare-fun e!1425698 () Bool)

(declare-fun tp!699015 () Bool)

(declare-fun e!1425696 () Bool)

(declare-fun tp!699008 () Bool)

(assert (=> b!2230860 (= e!1425696 (and tp!699015 (inv!35599 (_2!15204 (_1!15205 (h!31614 mapDefault!14388)))) e!1425698 tp_is_empty!10059 setRes!20080 tp!699008))))

(declare-fun condSetEmpty!20080 () Bool)

(assert (=> b!2230860 (= condSetEmpty!20080 (= (_2!15205 (h!31614 mapDefault!14388)) ((as const (Array Context!3930 Bool)) false)))))

(declare-fun setNonEmpty!20080 () Bool)

(declare-fun tp!699012 () Bool)

(declare-fun setElem!20080 () Context!3930)

(assert (=> setNonEmpty!20080 (= setRes!20081 (and tp!699012 (inv!35599 setElem!20080) e!1425697))))

(declare-fun setRest!20081 () (InoxSet Context!3930))

(assert (=> setNonEmpty!20080 (= (_2!15205 (h!31614 mapValue!14388)) ((_ map or) (store ((as const (Array Context!3930 Bool)) false) setElem!20080 true) setRest!20081))))

(declare-fun b!2230861 () Bool)

(declare-fun tp!699010 () Bool)

(assert (=> b!2230861 (= e!1425698 tp!699010)))

(declare-fun b!2230862 () Bool)

(declare-fun tp!699014 () Bool)

(assert (=> b!2230862 (= e!1425701 tp!699014)))

(declare-fun condMapEmpty!14388 () Bool)

(assert (=> mapNonEmpty!14385 (= condMapEmpty!14388 (= mapRest!14385 ((as const (Array (_ BitVec 32) List!26307)) mapDefault!14388)))))

(assert (=> mapNonEmpty!14385 (= tp!698933 (and e!1425696 mapRes!14388))))

(declare-fun b!2230863 () Bool)

(declare-fun e!1425700 () Bool)

(declare-fun tp!699011 () Bool)

(assert (=> b!2230863 (= e!1425700 tp!699011)))

(declare-fun mapIsEmpty!14388 () Bool)

(assert (=> mapIsEmpty!14388 mapRes!14388))

(declare-fun setElem!20081 () Context!3930)

(declare-fun tp!699013 () Bool)

(declare-fun setNonEmpty!20081 () Bool)

(assert (=> setNonEmpty!20081 (= setRes!20080 (and tp!699013 (inv!35599 setElem!20081) e!1425700))))

(declare-fun setRest!20080 () (InoxSet Context!3930))

(assert (=> setNonEmpty!20081 (= (_2!15205 (h!31614 mapDefault!14388)) ((_ map or) (store ((as const (Array Context!3930 Bool)) false) setElem!20081 true) setRest!20080))))

(declare-fun setIsEmpty!20080 () Bool)

(assert (=> setIsEmpty!20080 setRes!20080))

(declare-fun setIsEmpty!20081 () Bool)

(assert (=> setIsEmpty!20081 setRes!20081))

(assert (= (and mapNonEmpty!14385 condMapEmpty!14388) mapIsEmpty!14388))

(assert (= (and mapNonEmpty!14385 (not condMapEmpty!14388)) mapNonEmpty!14388))

(assert (= b!2230858 b!2230862))

(assert (= (and b!2230858 condSetEmpty!20081) setIsEmpty!20081))

(assert (= (and b!2230858 (not condSetEmpty!20081)) setNonEmpty!20080))

(assert (= setNonEmpty!20080 b!2230859))

(assert (= (and mapNonEmpty!14388 ((_ is Cons!26213) mapValue!14388)) b!2230858))

(assert (= b!2230860 b!2230861))

(assert (= (and b!2230860 condSetEmpty!20080) setIsEmpty!20080))

(assert (= (and b!2230860 (not condSetEmpty!20080)) setNonEmpty!20081))

(assert (= setNonEmpty!20081 b!2230863))

(assert (= (and mapNonEmpty!14385 ((_ is Cons!26213) mapDefault!14388)) b!2230860))

(declare-fun m!2667580 () Bool)

(assert (=> setNonEmpty!20081 m!2667580))

(declare-fun m!2667582 () Bool)

(assert (=> setNonEmpty!20080 m!2667582))

(declare-fun m!2667584 () Bool)

(assert (=> b!2230858 m!2667584))

(declare-fun m!2667586 () Bool)

(assert (=> mapNonEmpty!14388 m!2667586))

(declare-fun m!2667588 () Bool)

(assert (=> b!2230860 m!2667588))

(declare-fun setRes!20082 () Bool)

(declare-fun e!1425703 () Bool)

(declare-fun e!1425702 () Bool)

(declare-fun b!2230864 () Bool)

(declare-fun tp!699019 () Bool)

(declare-fun tp!699017 () Bool)

(assert (=> b!2230864 (= e!1425702 (and tp!699019 (inv!35599 (_2!15204 (_1!15205 (h!31614 mapValue!14385)))) e!1425703 tp_is_empty!10059 setRes!20082 tp!699017))))

(declare-fun condSetEmpty!20082 () Bool)

(assert (=> b!2230864 (= condSetEmpty!20082 (= (_2!15205 (h!31614 mapValue!14385)) ((as const (Array Context!3930 Bool)) false)))))

(declare-fun b!2230865 () Bool)

(declare-fun e!1425704 () Bool)

(declare-fun tp!699021 () Bool)

(assert (=> b!2230865 (= e!1425704 tp!699021)))

(declare-fun setNonEmpty!20082 () Bool)

(declare-fun tp!699020 () Bool)

(declare-fun setElem!20082 () Context!3930)

(assert (=> setNonEmpty!20082 (= setRes!20082 (and tp!699020 (inv!35599 setElem!20082) e!1425704))))

(declare-fun setRest!20082 () (InoxSet Context!3930))

(assert (=> setNonEmpty!20082 (= (_2!15205 (h!31614 mapValue!14385)) ((_ map or) (store ((as const (Array Context!3930 Bool)) false) setElem!20082 true) setRest!20082))))

(assert (=> mapNonEmpty!14385 (= tp!698936 e!1425702)))

(declare-fun b!2230866 () Bool)

(declare-fun tp!699018 () Bool)

(assert (=> b!2230866 (= e!1425703 tp!699018)))

(declare-fun setIsEmpty!20082 () Bool)

(assert (=> setIsEmpty!20082 setRes!20082))

(assert (= b!2230864 b!2230866))

(assert (= (and b!2230864 condSetEmpty!20082) setIsEmpty!20082))

(assert (= (and b!2230864 (not condSetEmpty!20082)) setNonEmpty!20082))

(assert (= setNonEmpty!20082 b!2230865))

(assert (= (and mapNonEmpty!14385 ((_ is Cons!26213) mapValue!14385)) b!2230864))

(declare-fun m!2667590 () Bool)

(assert (=> b!2230864 m!2667590))

(declare-fun m!2667592 () Bool)

(assert (=> setNonEmpty!20082 m!2667592))

(declare-fun e!1425706 () Bool)

(declare-fun e!1425705 () Bool)

(declare-fun tp!699024 () Bool)

(declare-fun setRes!20083 () Bool)

(declare-fun b!2230867 () Bool)

(declare-fun tp!699022 () Bool)

(assert (=> b!2230867 (= e!1425705 (and tp!699024 (inv!35599 (_2!15204 (_1!15205 (h!31614 (zeroValue!3313 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839)))))))))) e!1425706 tp_is_empty!10059 setRes!20083 tp!699022))))

(declare-fun condSetEmpty!20083 () Bool)

(assert (=> b!2230867 (= condSetEmpty!20083 (= (_2!15205 (h!31614 (zeroValue!3313 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839)))))))) ((as const (Array Context!3930 Bool)) false)))))

(declare-fun b!2230868 () Bool)

(declare-fun e!1425707 () Bool)

(declare-fun tp!699026 () Bool)

(assert (=> b!2230868 (= e!1425707 tp!699026)))

(declare-fun setElem!20083 () Context!3930)

(declare-fun tp!699025 () Bool)

(declare-fun setNonEmpty!20083 () Bool)

(assert (=> setNonEmpty!20083 (= setRes!20083 (and tp!699025 (inv!35599 setElem!20083) e!1425707))))

(declare-fun setRest!20083 () (InoxSet Context!3930))

(assert (=> setNonEmpty!20083 (= (_2!15205 (h!31614 (zeroValue!3313 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3930 Bool)) false) setElem!20083 true) setRest!20083))))

(assert (=> b!2230645 (= tp!698927 e!1425705)))

(declare-fun b!2230869 () Bool)

(declare-fun tp!699023 () Bool)

(assert (=> b!2230869 (= e!1425706 tp!699023)))

(declare-fun setIsEmpty!20083 () Bool)

(assert (=> setIsEmpty!20083 setRes!20083))

(assert (= b!2230867 b!2230869))

(assert (= (and b!2230867 condSetEmpty!20083) setIsEmpty!20083))

(assert (= (and b!2230867 (not condSetEmpty!20083)) setNonEmpty!20083))

(assert (= setNonEmpty!20083 b!2230868))

(assert (= (and b!2230645 ((_ is Cons!26213) (zeroValue!3313 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839)))))))) b!2230867))

(declare-fun m!2667594 () Bool)

(assert (=> b!2230867 m!2667594))

(declare-fun m!2667596 () Bool)

(assert (=> setNonEmpty!20083 m!2667596))

(declare-fun tp!699027 () Bool)

(declare-fun tp!699029 () Bool)

(declare-fun e!1425708 () Bool)

(declare-fun b!2230870 () Bool)

(declare-fun e!1425709 () Bool)

(declare-fun setRes!20084 () Bool)

(assert (=> b!2230870 (= e!1425708 (and tp!699029 (inv!35599 (_2!15204 (_1!15205 (h!31614 (minValue!3313 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839)))))))))) e!1425709 tp_is_empty!10059 setRes!20084 tp!699027))))

(declare-fun condSetEmpty!20084 () Bool)

(assert (=> b!2230870 (= condSetEmpty!20084 (= (_2!15205 (h!31614 (minValue!3313 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839)))))))) ((as const (Array Context!3930 Bool)) false)))))

(declare-fun b!2230871 () Bool)

(declare-fun e!1425710 () Bool)

(declare-fun tp!699031 () Bool)

(assert (=> b!2230871 (= e!1425710 tp!699031)))

(declare-fun tp!699030 () Bool)

(declare-fun setElem!20084 () Context!3930)

(declare-fun setNonEmpty!20084 () Bool)

(assert (=> setNonEmpty!20084 (= setRes!20084 (and tp!699030 (inv!35599 setElem!20084) e!1425710))))

(declare-fun setRest!20084 () (InoxSet Context!3930))

(assert (=> setNonEmpty!20084 (= (_2!15205 (h!31614 (minValue!3313 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3930 Bool)) false) setElem!20084 true) setRest!20084))))

(assert (=> b!2230645 (= tp!698932 e!1425708)))

(declare-fun b!2230872 () Bool)

(declare-fun tp!699028 () Bool)

(assert (=> b!2230872 (= e!1425709 tp!699028)))

(declare-fun setIsEmpty!20084 () Bool)

(assert (=> setIsEmpty!20084 setRes!20084))

(assert (= b!2230870 b!2230872))

(assert (= (and b!2230870 condSetEmpty!20084) setIsEmpty!20084))

(assert (= (and b!2230870 (not condSetEmpty!20084)) setNonEmpty!20084))

(assert (= setNonEmpty!20084 b!2230871))

(assert (= (and b!2230645 ((_ is Cons!26213) (minValue!3313 (v!29802 (underlying!6311 (v!29803 (underlying!6312 (cache!3346 cacheDown!839)))))))) b!2230870))

(declare-fun m!2667598 () Bool)

(assert (=> b!2230870 m!2667598))

(declare-fun m!2667600 () Bool)

(assert (=> setNonEmpty!20084 m!2667600))

(declare-fun e!1425711 () Bool)

(assert (=> b!2230641 (= tp!698934 e!1425711)))

(declare-fun b!2230873 () Bool)

(assert (=> b!2230873 (= e!1425711 tp_is_empty!10059)))

(declare-fun b!2230876 () Bool)

(declare-fun tp!699034 () Bool)

(declare-fun tp!699035 () Bool)

(assert (=> b!2230876 (= e!1425711 (and tp!699034 tp!699035))))

(declare-fun b!2230874 () Bool)

(declare-fun tp!699036 () Bool)

(declare-fun tp!699032 () Bool)

(assert (=> b!2230874 (= e!1425711 (and tp!699036 tp!699032))))

(declare-fun b!2230875 () Bool)

(declare-fun tp!699033 () Bool)

(assert (=> b!2230875 (= e!1425711 tp!699033)))

(assert (= (and b!2230641 ((_ is ElementMatch!6417) (reg!6746 expr!64))) b!2230873))

(assert (= (and b!2230641 ((_ is Concat!10755) (reg!6746 expr!64))) b!2230874))

(assert (= (and b!2230641 ((_ is Star!6417) (reg!6746 expr!64))) b!2230875))

(assert (= (and b!2230641 ((_ is Union!6417) (reg!6746 expr!64))) b!2230876))

(declare-fun b!2230881 () Bool)

(declare-fun e!1425714 () Bool)

(declare-fun tp!699041 () Bool)

(declare-fun tp!699042 () Bool)

(assert (=> b!2230881 (= e!1425714 (and tp!699041 tp!699042))))

(assert (=> b!2230655 (= tp!698928 e!1425714)))

(assert (= (and b!2230655 ((_ is Cons!26212) (exprs!2465 context!86))) b!2230881))

(check-sat (not b!2230820) (not b!2230818) (not setNonEmpty!20080) (not b!2230841) (not b!2230860) (not d!665002) (not b!2230798) (not b_next!65385) (not bm!133929) (not b!2230752) (not b!2230843) (not bm!133941) (not setNonEmpty!20083) (not mapNonEmpty!14388) (not b!2230830) (not b!2230824) (not bm!133916) (not bm!133944) (not b!2230819) (not b!2230875) (not bm!133903) (not b!2230867) (not b!2230876) b_and!174669 (not bm!133930) (not b!2230881) (not setNonEmpty!20081) (not b!2230786) (not b!2230831) (not bm!133914) (not b!2230806) (not b!2230859) (not b!2230832) (not b!2230861) (not setNonEmpty!20075) (not bm!133915) (not b!2230760) (not bm!133909) (not setNonEmpty!20082) (not b!2230842) (not bm!133913) (not bm!133908) (not b!2230874) (not bm!133907) tp_is_empty!10059 (not b!2230794) (not b!2230827) (not bm!133932) (not b!2230858) (not b_next!65387) (not b!2230865) (not b!2230864) (not b!2230872) b_and!174671 (not b!2230869) (not b!2230862) (not d!665010) (not b!2230871) (not d!665012) (not b!2230828) (not b!2230823) (not b!2230866) (not b!2230868) (not b!2230863) (not setNonEmpty!20084) (not b!2230822) (not b!2230870) (not b!2230826) (not bm!133910) (not bm!133945) (not bm!133942) (not bm!133906) (not d!665016))
(check-sat b_and!174669 b_and!174671 (not b_next!65387) (not b_next!65385))
