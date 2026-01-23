; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217444 () Bool)

(assert start!217444)

(declare-fun b!2229326 () Bool)

(declare-fun b_free!64649 () Bool)

(declare-fun b_next!65353 () Bool)

(assert (=> b!2229326 (= b_free!64649 (not b_next!65353))))

(declare-fun tp!697960 () Bool)

(declare-fun b_and!174637 () Bool)

(assert (=> b!2229326 (= tp!697960 b_and!174637)))

(declare-fun b!2229318 () Bool)

(declare-fun b_free!64651 () Bool)

(declare-fun b_next!65355 () Bool)

(assert (=> b!2229318 (= b_free!64651 (not b_next!65355))))

(declare-fun tp!697958 () Bool)

(declare-fun b_and!174639 () Bool)

(assert (=> b!2229318 (= tp!697958 b_and!174639)))

(declare-fun b!2229317 () Bool)

(declare-fun e!1424729 () Bool)

(declare-fun e!1424725 () Bool)

(assert (=> b!2229317 (= e!1424729 e!1424725)))

(declare-fun e!1424723 () Bool)

(declare-fun e!1424728 () Bool)

(assert (=> b!2229318 (= e!1424723 (and e!1424728 tp!697958))))

(declare-fun b!2229319 () Bool)

(declare-fun e!1424722 () Bool)

(assert (=> b!2229319 (= e!1424722 e!1424723)))

(declare-fun b!2229320 () Bool)

(declare-fun e!1424732 () Bool)

(declare-datatypes ((C!12964 0))(
  ( (C!12965 (val!7530 Int)) )
))
(declare-datatypes ((Regex!6409 0))(
  ( (ElementMatch!6409 (c!355675 C!12964)) (Concat!10747 (regOne!13330 Regex!6409) (regTwo!13330 Regex!6409)) (EmptyExpr!6409) (Star!6409 (reg!6738 Regex!6409)) (EmptyLang!6409) (Union!6409 (regOne!13331 Regex!6409) (regTwo!13331 Regex!6409)) )
))
(declare-fun expr!64 () Regex!6409)

(declare-fun regexDepth!65 (Regex!6409) Int)

(assert (=> b!2229320 (= e!1424732 (>= (regexDepth!65 (regTwo!13331 expr!64)) (regexDepth!65 expr!64)))))

(declare-datatypes ((List!26290 0))(
  ( (Nil!26196) (Cons!26196 (h!31597 Regex!6409) (t!199705 List!26290)) )
))
(declare-datatypes ((Context!3914 0))(
  ( (Context!3915 (exprs!2457 List!26290)) )
))
(declare-fun context!86 () Context!3914)

(declare-datatypes ((array!10528 0))(
  ( (array!10529 (arr!4681 (Array (_ BitVec 32) (_ BitVec 64))) (size!20462 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3890 0))(
  ( (tuple3!3891 (_1!15185 Regex!6409) (_2!15185 Context!3914) (_3!2415 C!12964)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25540 0))(
  ( (tuple2!25541 (_1!15186 tuple3!3890) (_2!15186 (InoxSet Context!3914))) )
))
(declare-datatypes ((List!26291 0))(
  ( (Nil!26197) (Cons!26197 (h!31598 tuple2!25540) (t!199706 List!26291)) )
))
(declare-datatypes ((array!10530 0))(
  ( (array!10531 (arr!4682 (Array (_ BitVec 32) List!26291)) (size!20463 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6094 0))(
  ( (LongMapFixedSize!6095 (defaultEntry!3412 Int) (mask!7605 (_ BitVec 32)) (extraKeys!3295 (_ BitVec 32)) (zeroValue!3305 List!26291) (minValue!3305 List!26291) (_size!6141 (_ BitVec 32)) (_keys!3344 array!10528) (_values!3327 array!10530) (_vacant!3108 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12005 0))(
  ( (Cell!12006 (v!29779 LongMapFixedSize!6094)) )
))
(declare-datatypes ((MutLongMap!3047 0))(
  ( (LongMap!3047 (underlying!6295 Cell!12005)) (MutLongMapExt!3046 (__x!17367 Int)) )
))
(declare-datatypes ((Cell!12007 0))(
  ( (Cell!12008 (v!29780 MutLongMap!3047)) )
))
(declare-datatypes ((Hashable!2957 0))(
  ( (HashableExt!2956 (__x!17368 Int)) )
))
(declare-datatypes ((MutableMap!2957 0))(
  ( (MutableMapExt!2956 (__x!17369 Int)) (HashMap!2957 (underlying!6296 Cell!12007) (hashF!4880 Hashable!2957) (_size!6142 (_ BitVec 32)) (defaultValue!3119 Int)) )
))
(declare-datatypes ((CacheDown!1960 0))(
  ( (CacheDown!1961 (cache!3338 MutableMap!2957)) )
))
(declare-fun cacheDown!839 () CacheDown!1960)

(declare-datatypes ((tuple2!25542 0))(
  ( (tuple2!25543 (_1!15187 (InoxSet Context!3914)) (_2!15187 CacheDown!1960)) )
))
(declare-fun lt!830461 () tuple2!25542)

(declare-fun a!1167 () C!12964)

(declare-fun derivationStepZipperDownMem!21 (Regex!6409 Context!3914 C!12964 CacheDown!1960) tuple2!25542)

(assert (=> b!2229320 (= lt!830461 (derivationStepZipperDownMem!21 (regOne!13331 expr!64) context!86 a!1167 cacheDown!839))))

(declare-fun b!2229321 () Bool)

(declare-fun lt!830460 () MutLongMap!3047)

(get-info :version)

(assert (=> b!2229321 (= e!1424728 (and e!1424729 ((_ is LongMap!3047) lt!830460)))))

(assert (=> b!2229321 (= lt!830460 (v!29780 (underlying!6296 (cache!3338 cacheDown!839))))))

(declare-fun b!2229322 () Bool)

(declare-fun e!1424731 () Bool)

(declare-fun tp_is_empty!10043 () Bool)

(assert (=> b!2229322 (= e!1424731 tp_is_empty!10043)))

(declare-fun b!2229323 () Bool)

(declare-fun tp!697957 () Bool)

(declare-fun tp!697950 () Bool)

(assert (=> b!2229323 (= e!1424731 (and tp!697957 tp!697950))))

(declare-fun mapNonEmpty!14348 () Bool)

(declare-fun mapRes!14348 () Bool)

(declare-fun tp!697949 () Bool)

(declare-fun tp!697955 () Bool)

(assert (=> mapNonEmpty!14348 (= mapRes!14348 (and tp!697949 tp!697955))))

(declare-fun mapKey!14348 () (_ BitVec 32))

(declare-fun mapValue!14348 () List!26291)

(declare-fun mapRest!14348 () (Array (_ BitVec 32) List!26291))

(assert (=> mapNonEmpty!14348 (= (arr!4682 (_values!3327 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839))))))) (store mapRest!14348 mapKey!14348 mapValue!14348))))

(declare-fun b!2229324 () Bool)

(declare-fun tp!697951 () Bool)

(declare-fun tp!697954 () Bool)

(assert (=> b!2229324 (= e!1424731 (and tp!697951 tp!697954))))

(declare-fun b!2229325 () Bool)

(declare-fun e!1424726 () Bool)

(declare-fun tp!697959 () Bool)

(assert (=> b!2229325 (= e!1424726 tp!697959)))

(declare-fun e!1424724 () Bool)

(declare-fun tp!697952 () Bool)

(declare-fun tp!697961 () Bool)

(declare-fun e!1424730 () Bool)

(declare-fun array_inv!3359 (array!10528) Bool)

(declare-fun array_inv!3360 (array!10530) Bool)

(assert (=> b!2229326 (= e!1424724 (and tp!697960 tp!697952 tp!697961 (array_inv!3359 (_keys!3344 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839))))))) (array_inv!3360 (_values!3327 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839))))))) e!1424730))))

(declare-fun b!2229327 () Bool)

(declare-fun res!955160 () Bool)

(assert (=> b!2229327 (=> (not res!955160) (not e!1424732))))

(declare-datatypes ((Option!5096 0))(
  ( (None!5095) (Some!5095 (v!29781 (InoxSet Context!3914))) )
))
(declare-fun get!7897 (CacheDown!1960 Regex!6409 Context!3914 C!12964) Option!5096)

(assert (=> b!2229327 (= res!955160 (not ((_ is Some!5095) (get!7897 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun mapIsEmpty!14348 () Bool)

(assert (=> mapIsEmpty!14348 mapRes!14348))

(declare-fun res!955159 () Bool)

(assert (=> start!217444 (=> (not res!955159) (not e!1424732))))

(declare-fun validRegex!2384 (Regex!6409) Bool)

(assert (=> start!217444 (= res!955159 (validRegex!2384 expr!64))))

(assert (=> start!217444 e!1424732))

(assert (=> start!217444 e!1424731))

(declare-fun inv!35571 (CacheDown!1960) Bool)

(assert (=> start!217444 (and (inv!35571 cacheDown!839) e!1424722)))

(declare-fun inv!35572 (Context!3914) Bool)

(assert (=> start!217444 (and (inv!35572 context!86) e!1424726)))

(assert (=> start!217444 tp_is_empty!10043))

(declare-fun b!2229328 () Bool)

(declare-fun tp!697956 () Bool)

(assert (=> b!2229328 (= e!1424731 tp!697956)))

(declare-fun b!2229329 () Bool)

(assert (=> b!2229329 (= e!1424725 e!1424724)))

(declare-fun b!2229330 () Bool)

(declare-fun res!955161 () Bool)

(assert (=> b!2229330 (=> (not res!955161) (not e!1424732))))

(assert (=> b!2229330 (= res!955161 (and (or (not ((_ is ElementMatch!6409) expr!64)) (not (= (c!355675 expr!64) a!1167))) ((_ is Union!6409) expr!64)))))

(declare-fun b!2229331 () Bool)

(declare-fun tp!697953 () Bool)

(assert (=> b!2229331 (= e!1424730 (and tp!697953 mapRes!14348))))

(declare-fun condMapEmpty!14348 () Bool)

(declare-fun mapDefault!14348 () List!26291)

(assert (=> b!2229331 (= condMapEmpty!14348 (= (arr!4682 (_values!3327 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26291)) mapDefault!14348)))))

(assert (= (and start!217444 res!955159) b!2229327))

(assert (= (and b!2229327 res!955160) b!2229330))

(assert (= (and b!2229330 res!955161) b!2229320))

(assert (= (and start!217444 ((_ is ElementMatch!6409) expr!64)) b!2229322))

(assert (= (and start!217444 ((_ is Concat!10747) expr!64)) b!2229324))

(assert (= (and start!217444 ((_ is Star!6409) expr!64)) b!2229328))

(assert (= (and start!217444 ((_ is Union!6409) expr!64)) b!2229323))

(assert (= (and b!2229331 condMapEmpty!14348) mapIsEmpty!14348))

(assert (= (and b!2229331 (not condMapEmpty!14348)) mapNonEmpty!14348))

(assert (= b!2229326 b!2229331))

(assert (= b!2229329 b!2229326))

(assert (= b!2229317 b!2229329))

(assert (= (and b!2229321 ((_ is LongMap!3047) (v!29780 (underlying!6296 (cache!3338 cacheDown!839))))) b!2229317))

(assert (= b!2229318 b!2229321))

(assert (= (and b!2229319 ((_ is HashMap!2957) (cache!3338 cacheDown!839))) b!2229318))

(assert (= start!217444 b!2229319))

(assert (= start!217444 b!2229325))

(declare-fun m!2666919 () Bool)

(assert (=> start!217444 m!2666919))

(declare-fun m!2666921 () Bool)

(assert (=> start!217444 m!2666921))

(declare-fun m!2666923 () Bool)

(assert (=> start!217444 m!2666923))

(declare-fun m!2666925 () Bool)

(assert (=> b!2229320 m!2666925))

(declare-fun m!2666927 () Bool)

(assert (=> b!2229320 m!2666927))

(declare-fun m!2666929 () Bool)

(assert (=> b!2229320 m!2666929))

(declare-fun m!2666931 () Bool)

(assert (=> mapNonEmpty!14348 m!2666931))

(declare-fun m!2666933 () Bool)

(assert (=> b!2229327 m!2666933))

(declare-fun m!2666935 () Bool)

(assert (=> b!2229326 m!2666935))

(declare-fun m!2666937 () Bool)

(assert (=> b!2229326 m!2666937))

(check-sat (not mapNonEmpty!14348) (not b!2229320) b_and!174639 b_and!174637 (not b!2229327) (not b_next!65355) (not b!2229326) (not start!217444) (not b!2229331) tp_is_empty!10043 (not b!2229328) (not b!2229323) (not b_next!65353) (not b!2229325) (not b!2229324))
(check-sat b_and!174639 b_and!174637 (not b_next!65353) (not b_next!65355))
(get-model)

(declare-fun b!2229350 () Bool)

(declare-fun e!1424753 () Bool)

(declare-fun call!133746 () Bool)

(assert (=> b!2229350 (= e!1424753 call!133746)))

(declare-fun b!2229351 () Bool)

(declare-fun e!1424748 () Bool)

(assert (=> b!2229351 (= e!1424748 call!133746)))

(declare-fun b!2229352 () Bool)

(declare-fun e!1424752 () Bool)

(declare-fun call!133747 () Bool)

(assert (=> b!2229352 (= e!1424752 call!133747)))

(declare-fun b!2229353 () Bool)

(declare-fun e!1424749 () Bool)

(declare-fun e!1424747 () Bool)

(assert (=> b!2229353 (= e!1424749 e!1424747)))

(declare-fun c!355680 () Bool)

(assert (=> b!2229353 (= c!355680 ((_ is Union!6409) expr!64))))

(declare-fun d!664864 () Bool)

(declare-fun res!955176 () Bool)

(declare-fun e!1424750 () Bool)

(assert (=> d!664864 (=> res!955176 e!1424750)))

(assert (=> d!664864 (= res!955176 ((_ is ElementMatch!6409) expr!64))))

(assert (=> d!664864 (= (validRegex!2384 expr!64) e!1424750)))

(declare-fun b!2229354 () Bool)

(declare-fun e!1424751 () Bool)

(assert (=> b!2229354 (= e!1424751 e!1424753)))

(declare-fun res!955174 () Bool)

(assert (=> b!2229354 (=> (not res!955174) (not e!1424753))))

(declare-fun call!133745 () Bool)

(assert (=> b!2229354 (= res!955174 call!133745)))

(declare-fun bm!133740 () Bool)

(assert (=> bm!133740 (= call!133746 (validRegex!2384 (ite c!355680 (regTwo!13331 expr!64) (regTwo!13330 expr!64))))))

(declare-fun b!2229355 () Bool)

(declare-fun res!955172 () Bool)

(assert (=> b!2229355 (=> res!955172 e!1424751)))

(assert (=> b!2229355 (= res!955172 (not ((_ is Concat!10747) expr!64)))))

(assert (=> b!2229355 (= e!1424747 e!1424751)))

(declare-fun b!2229356 () Bool)

(declare-fun res!955175 () Bool)

(assert (=> b!2229356 (=> (not res!955175) (not e!1424748))))

(assert (=> b!2229356 (= res!955175 call!133745)))

(assert (=> b!2229356 (= e!1424747 e!1424748)))

(declare-fun bm!133741 () Bool)

(declare-fun c!355681 () Bool)

(assert (=> bm!133741 (= call!133747 (validRegex!2384 (ite c!355681 (reg!6738 expr!64) (ite c!355680 (regOne!13331 expr!64) (regOne!13330 expr!64)))))))

(declare-fun b!2229357 () Bool)

(assert (=> b!2229357 (= e!1424750 e!1424749)))

(assert (=> b!2229357 (= c!355681 ((_ is Star!6409) expr!64))))

(declare-fun b!2229358 () Bool)

(assert (=> b!2229358 (= e!1424749 e!1424752)))

(declare-fun res!955173 () Bool)

(declare-fun nullable!1758 (Regex!6409) Bool)

(assert (=> b!2229358 (= res!955173 (not (nullable!1758 (reg!6738 expr!64))))))

(assert (=> b!2229358 (=> (not res!955173) (not e!1424752))))

(declare-fun bm!133742 () Bool)

(assert (=> bm!133742 (= call!133745 call!133747)))

(assert (= (and d!664864 (not res!955176)) b!2229357))

(assert (= (and b!2229357 c!355681) b!2229358))

(assert (= (and b!2229357 (not c!355681)) b!2229353))

(assert (= (and b!2229358 res!955173) b!2229352))

(assert (= (and b!2229353 c!355680) b!2229356))

(assert (= (and b!2229353 (not c!355680)) b!2229355))

(assert (= (and b!2229356 res!955175) b!2229351))

(assert (= (and b!2229355 (not res!955172)) b!2229354))

(assert (= (and b!2229354 res!955174) b!2229350))

(assert (= (or b!2229351 b!2229350) bm!133740))

(assert (= (or b!2229356 b!2229354) bm!133742))

(assert (= (or b!2229352 bm!133742) bm!133741))

(declare-fun m!2666939 () Bool)

(assert (=> bm!133740 m!2666939))

(declare-fun m!2666941 () Bool)

(assert (=> bm!133741 m!2666941))

(declare-fun m!2666943 () Bool)

(assert (=> b!2229358 m!2666943))

(assert (=> start!217444 d!664864))

(declare-fun d!664866 () Bool)

(declare-fun res!955179 () Bool)

(declare-fun e!1424756 () Bool)

(assert (=> d!664866 (=> (not res!955179) (not e!1424756))))

(assert (=> d!664866 (= res!955179 ((_ is HashMap!2957) (cache!3338 cacheDown!839)))))

(assert (=> d!664866 (= (inv!35571 cacheDown!839) e!1424756)))

(declare-fun b!2229361 () Bool)

(declare-fun validCacheMapDown!278 (MutableMap!2957) Bool)

(assert (=> b!2229361 (= e!1424756 (validCacheMapDown!278 (cache!3338 cacheDown!839)))))

(assert (= (and d!664866 res!955179) b!2229361))

(declare-fun m!2666945 () Bool)

(assert (=> b!2229361 m!2666945))

(assert (=> start!217444 d!664866))

(declare-fun d!664868 () Bool)

(declare-fun lambda!84260 () Int)

(declare-fun forall!5357 (List!26290 Int) Bool)

(assert (=> d!664868 (= (inv!35572 context!86) (forall!5357 (exprs!2457 context!86) lambda!84260))))

(declare-fun bs!453765 () Bool)

(assert (= bs!453765 d!664868))

(declare-fun m!2666947 () Bool)

(assert (=> bs!453765 m!2666947))

(assert (=> start!217444 d!664868))

(declare-fun b!2229396 () Bool)

(declare-fun e!1424786 () Bool)

(declare-fun lt!830464 () Int)

(declare-fun call!133764 () Int)

(assert (=> b!2229396 (= e!1424786 (> lt!830464 call!133764))))

(declare-fun c!355699 () Bool)

(declare-fun call!133768 () Int)

(declare-fun bm!133757 () Bool)

(declare-fun c!355700 () Bool)

(assert (=> bm!133757 (= call!133768 (regexDepth!65 (ite c!355700 (regOne!13331 (regTwo!13331 expr!64)) (ite c!355699 (regOne!13330 (regTwo!13331 expr!64)) (reg!6738 (regTwo!13331 expr!64))))))))

(declare-fun bm!133758 () Bool)

(declare-fun c!355697 () Bool)

(declare-fun c!355702 () Bool)

(declare-fun call!133762 () Int)

(assert (=> bm!133758 (= call!133762 (regexDepth!65 (ite c!355702 (reg!6738 (regTwo!13331 expr!64)) (ite c!355697 (regTwo!13331 (regTwo!13331 expr!64)) (regOne!13330 (regTwo!13331 expr!64))))))))

(declare-fun bm!133759 () Bool)

(declare-fun call!133767 () Int)

(assert (=> bm!133759 (= call!133767 call!133762)))

(declare-fun b!2229397 () Bool)

(declare-fun e!1424782 () Int)

(declare-fun e!1424778 () Int)

(assert (=> b!2229397 (= e!1424782 e!1424778)))

(assert (=> b!2229397 (= c!355702 ((_ is Star!6409) (regTwo!13331 expr!64)))))

(declare-fun b!2229398 () Bool)

(assert (=> b!2229398 (= c!355697 ((_ is Union!6409) (regTwo!13331 expr!64)))))

(declare-fun e!1424777 () Int)

(assert (=> b!2229398 (= e!1424778 e!1424777)))

(declare-fun bm!133760 () Bool)

(declare-fun call!133763 () Int)

(assert (=> bm!133760 (= call!133763 (regexDepth!65 (ite c!355697 (regOne!13331 (regTwo!13331 expr!64)) (regTwo!13330 (regTwo!13331 expr!64)))))))

(declare-fun b!2229399 () Bool)

(declare-fun c!355698 () Bool)

(assert (=> b!2229399 (= c!355698 ((_ is Star!6409) (regTwo!13331 expr!64)))))

(declare-fun e!1424783 () Bool)

(declare-fun e!1424785 () Bool)

(assert (=> b!2229399 (= e!1424783 e!1424785)))

(declare-fun b!2229400 () Bool)

(declare-fun e!1424784 () Int)

(assert (=> b!2229400 (= e!1424777 e!1424784)))

(declare-fun c!355701 () Bool)

(assert (=> b!2229400 (= c!355701 ((_ is Concat!10747) (regTwo!13331 expr!64)))))

(declare-fun b!2229401 () Bool)

(assert (=> b!2229401 (= e!1424782 1)))

(declare-fun b!2229402 () Bool)

(declare-fun e!1424779 () Bool)

(assert (=> b!2229402 (= e!1424779 e!1424783)))

(assert (=> b!2229402 (= c!355699 ((_ is Concat!10747) (regTwo!13331 expr!64)))))

(declare-fun b!2229404 () Bool)

(declare-fun call!133766 () Int)

(assert (=> b!2229404 (= e!1424777 (+ 1 call!133766))))

(declare-fun b!2229405 () Bool)

(assert (=> b!2229405 (= e!1424779 e!1424786)))

(declare-fun res!955186 () Bool)

(assert (=> b!2229405 (= res!955186 (> lt!830464 call!133768))))

(assert (=> b!2229405 (=> (not res!955186) (not e!1424786))))

(declare-fun b!2229406 () Bool)

(declare-fun e!1424780 () Bool)

(assert (=> b!2229406 (= e!1424780 e!1424779)))

(assert (=> b!2229406 (= c!355700 ((_ is Union!6409) (regTwo!13331 expr!64)))))

(declare-fun b!2229407 () Bool)

(assert (=> b!2229407 (= e!1424784 1)))

(declare-fun b!2229408 () Bool)

(declare-fun call!133765 () Int)

(assert (=> b!2229408 (= e!1424785 (> lt!830464 call!133765))))

(declare-fun b!2229409 () Bool)

(assert (=> b!2229409 (= e!1424778 (+ 1 call!133762))))

(declare-fun bm!133761 () Bool)

(assert (=> bm!133761 (= call!133764 (regexDepth!65 (ite c!355700 (regTwo!13331 (regTwo!13331 expr!64)) (regTwo!13330 (regTwo!13331 expr!64)))))))

(declare-fun b!2229410 () Bool)

(assert (=> b!2229410 (= e!1424785 (= lt!830464 1))))

(declare-fun b!2229411 () Bool)

(declare-fun res!955188 () Bool)

(declare-fun e!1424781 () Bool)

(assert (=> b!2229411 (=> (not res!955188) (not e!1424781))))

(assert (=> b!2229411 (= res!955188 (> lt!830464 call!133765))))

(assert (=> b!2229411 (= e!1424783 e!1424781)))

(declare-fun b!2229412 () Bool)

(assert (=> b!2229412 (= e!1424784 (+ 1 call!133766))))

(declare-fun bm!133762 () Bool)

(assert (=> bm!133762 (= call!133765 call!133768)))

(declare-fun bm!133763 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!133763 (= call!133766 (maxBigInt!0 (ite c!355697 call!133763 call!133767) (ite c!355697 call!133767 call!133763)))))

(declare-fun b!2229403 () Bool)

(assert (=> b!2229403 (= e!1424781 (> lt!830464 call!133764))))

(declare-fun d!664870 () Bool)

(assert (=> d!664870 e!1424780))

(declare-fun res!955187 () Bool)

(assert (=> d!664870 (=> (not res!955187) (not e!1424780))))

(assert (=> d!664870 (= res!955187 (> lt!830464 0))))

(assert (=> d!664870 (= lt!830464 e!1424782)))

(declare-fun c!355696 () Bool)

(assert (=> d!664870 (= c!355696 ((_ is ElementMatch!6409) (regTwo!13331 expr!64)))))

(assert (=> d!664870 (= (regexDepth!65 (regTwo!13331 expr!64)) lt!830464)))

(assert (= (and d!664870 c!355696) b!2229401))

(assert (= (and d!664870 (not c!355696)) b!2229397))

(assert (= (and b!2229397 c!355702) b!2229409))

(assert (= (and b!2229397 (not c!355702)) b!2229398))

(assert (= (and b!2229398 c!355697) b!2229404))

(assert (= (and b!2229398 (not c!355697)) b!2229400))

(assert (= (and b!2229400 c!355701) b!2229412))

(assert (= (and b!2229400 (not c!355701)) b!2229407))

(assert (= (or b!2229404 b!2229412) bm!133759))

(assert (= (or b!2229404 b!2229412) bm!133760))

(assert (= (or b!2229404 b!2229412) bm!133763))

(assert (= (or b!2229409 bm!133759) bm!133758))

(assert (= (and d!664870 res!955187) b!2229406))

(assert (= (and b!2229406 c!355700) b!2229405))

(assert (= (and b!2229406 (not c!355700)) b!2229402))

(assert (= (and b!2229405 res!955186) b!2229396))

(assert (= (and b!2229402 c!355699) b!2229411))

(assert (= (and b!2229402 (not c!355699)) b!2229399))

(assert (= (and b!2229411 res!955188) b!2229403))

(assert (= (and b!2229399 c!355698) b!2229408))

(assert (= (and b!2229399 (not c!355698)) b!2229410))

(assert (= (or b!2229411 b!2229408) bm!133762))

(assert (= (or b!2229396 b!2229403) bm!133761))

(assert (= (or b!2229405 bm!133762) bm!133757))

(declare-fun m!2666949 () Bool)

(assert (=> bm!133757 m!2666949))

(declare-fun m!2666951 () Bool)

(assert (=> bm!133758 m!2666951))

(declare-fun m!2666953 () Bool)

(assert (=> bm!133763 m!2666953))

(declare-fun m!2666955 () Bool)

(assert (=> bm!133761 m!2666955))

(declare-fun m!2666957 () Bool)

(assert (=> bm!133760 m!2666957))

(assert (=> b!2229320 d!664870))

(declare-fun b!2229413 () Bool)

(declare-fun e!1424796 () Bool)

(declare-fun lt!830465 () Int)

(declare-fun call!133771 () Int)

(assert (=> b!2229413 (= e!1424796 (> lt!830465 call!133771))))

(declare-fun c!355706 () Bool)

(declare-fun bm!133764 () Bool)

(declare-fun c!355707 () Bool)

(declare-fun call!133775 () Int)

(assert (=> bm!133764 (= call!133775 (regexDepth!65 (ite c!355707 (regOne!13331 expr!64) (ite c!355706 (regOne!13330 expr!64) (reg!6738 expr!64)))))))

(declare-fun call!133769 () Int)

(declare-fun c!355704 () Bool)

(declare-fun bm!133765 () Bool)

(declare-fun c!355709 () Bool)

(assert (=> bm!133765 (= call!133769 (regexDepth!65 (ite c!355709 (reg!6738 expr!64) (ite c!355704 (regTwo!13331 expr!64) (regOne!13330 expr!64)))))))

(declare-fun bm!133766 () Bool)

(declare-fun call!133774 () Int)

(assert (=> bm!133766 (= call!133774 call!133769)))

(declare-fun b!2229414 () Bool)

(declare-fun e!1424792 () Int)

(declare-fun e!1424788 () Int)

(assert (=> b!2229414 (= e!1424792 e!1424788)))

(assert (=> b!2229414 (= c!355709 ((_ is Star!6409) expr!64))))

(declare-fun b!2229415 () Bool)

(assert (=> b!2229415 (= c!355704 ((_ is Union!6409) expr!64))))

(declare-fun e!1424787 () Int)

(assert (=> b!2229415 (= e!1424788 e!1424787)))

(declare-fun bm!133767 () Bool)

(declare-fun call!133770 () Int)

(assert (=> bm!133767 (= call!133770 (regexDepth!65 (ite c!355704 (regOne!13331 expr!64) (regTwo!13330 expr!64))))))

(declare-fun b!2229416 () Bool)

(declare-fun c!355705 () Bool)

(assert (=> b!2229416 (= c!355705 ((_ is Star!6409) expr!64))))

(declare-fun e!1424793 () Bool)

(declare-fun e!1424795 () Bool)

(assert (=> b!2229416 (= e!1424793 e!1424795)))

(declare-fun b!2229417 () Bool)

(declare-fun e!1424794 () Int)

(assert (=> b!2229417 (= e!1424787 e!1424794)))

(declare-fun c!355708 () Bool)

(assert (=> b!2229417 (= c!355708 ((_ is Concat!10747) expr!64))))

(declare-fun b!2229418 () Bool)

(assert (=> b!2229418 (= e!1424792 1)))

(declare-fun b!2229419 () Bool)

(declare-fun e!1424789 () Bool)

(assert (=> b!2229419 (= e!1424789 e!1424793)))

(assert (=> b!2229419 (= c!355706 ((_ is Concat!10747) expr!64))))

(declare-fun b!2229421 () Bool)

(declare-fun call!133773 () Int)

(assert (=> b!2229421 (= e!1424787 (+ 1 call!133773))))

(declare-fun b!2229422 () Bool)

(assert (=> b!2229422 (= e!1424789 e!1424796)))

(declare-fun res!955189 () Bool)

(assert (=> b!2229422 (= res!955189 (> lt!830465 call!133775))))

(assert (=> b!2229422 (=> (not res!955189) (not e!1424796))))

(declare-fun b!2229423 () Bool)

(declare-fun e!1424790 () Bool)

(assert (=> b!2229423 (= e!1424790 e!1424789)))

(assert (=> b!2229423 (= c!355707 ((_ is Union!6409) expr!64))))

(declare-fun b!2229424 () Bool)

(assert (=> b!2229424 (= e!1424794 1)))

(declare-fun b!2229425 () Bool)

(declare-fun call!133772 () Int)

(assert (=> b!2229425 (= e!1424795 (> lt!830465 call!133772))))

(declare-fun b!2229426 () Bool)

(assert (=> b!2229426 (= e!1424788 (+ 1 call!133769))))

(declare-fun bm!133768 () Bool)

(assert (=> bm!133768 (= call!133771 (regexDepth!65 (ite c!355707 (regTwo!13331 expr!64) (regTwo!13330 expr!64))))))

(declare-fun b!2229427 () Bool)

(assert (=> b!2229427 (= e!1424795 (= lt!830465 1))))

(declare-fun b!2229428 () Bool)

(declare-fun res!955191 () Bool)

(declare-fun e!1424791 () Bool)

(assert (=> b!2229428 (=> (not res!955191) (not e!1424791))))

(assert (=> b!2229428 (= res!955191 (> lt!830465 call!133772))))

(assert (=> b!2229428 (= e!1424793 e!1424791)))

(declare-fun b!2229429 () Bool)

(assert (=> b!2229429 (= e!1424794 (+ 1 call!133773))))

(declare-fun bm!133769 () Bool)

(assert (=> bm!133769 (= call!133772 call!133775)))

(declare-fun bm!133770 () Bool)

(assert (=> bm!133770 (= call!133773 (maxBigInt!0 (ite c!355704 call!133770 call!133774) (ite c!355704 call!133774 call!133770)))))

(declare-fun b!2229420 () Bool)

(assert (=> b!2229420 (= e!1424791 (> lt!830465 call!133771))))

(declare-fun d!664872 () Bool)

(assert (=> d!664872 e!1424790))

(declare-fun res!955190 () Bool)

(assert (=> d!664872 (=> (not res!955190) (not e!1424790))))

(assert (=> d!664872 (= res!955190 (> lt!830465 0))))

(assert (=> d!664872 (= lt!830465 e!1424792)))

(declare-fun c!355703 () Bool)

(assert (=> d!664872 (= c!355703 ((_ is ElementMatch!6409) expr!64))))

(assert (=> d!664872 (= (regexDepth!65 expr!64) lt!830465)))

(assert (= (and d!664872 c!355703) b!2229418))

(assert (= (and d!664872 (not c!355703)) b!2229414))

(assert (= (and b!2229414 c!355709) b!2229426))

(assert (= (and b!2229414 (not c!355709)) b!2229415))

(assert (= (and b!2229415 c!355704) b!2229421))

(assert (= (and b!2229415 (not c!355704)) b!2229417))

(assert (= (and b!2229417 c!355708) b!2229429))

(assert (= (and b!2229417 (not c!355708)) b!2229424))

(assert (= (or b!2229421 b!2229429) bm!133766))

(assert (= (or b!2229421 b!2229429) bm!133767))

(assert (= (or b!2229421 b!2229429) bm!133770))

(assert (= (or b!2229426 bm!133766) bm!133765))

(assert (= (and d!664872 res!955190) b!2229423))

(assert (= (and b!2229423 c!355707) b!2229422))

(assert (= (and b!2229423 (not c!355707)) b!2229419))

(assert (= (and b!2229422 res!955189) b!2229413))

(assert (= (and b!2229419 c!355706) b!2229428))

(assert (= (and b!2229419 (not c!355706)) b!2229416))

(assert (= (and b!2229428 res!955191) b!2229420))

(assert (= (and b!2229416 c!355705) b!2229425))

(assert (= (and b!2229416 (not c!355705)) b!2229427))

(assert (= (or b!2229428 b!2229425) bm!133769))

(assert (= (or b!2229413 b!2229420) bm!133768))

(assert (= (or b!2229422 bm!133769) bm!133764))

(declare-fun m!2666959 () Bool)

(assert (=> bm!133764 m!2666959))

(declare-fun m!2666961 () Bool)

(assert (=> bm!133765 m!2666961))

(declare-fun m!2666963 () Bool)

(assert (=> bm!133770 m!2666963))

(declare-fun m!2666965 () Bool)

(assert (=> bm!133768 m!2666965))

(declare-fun m!2666967 () Bool)

(assert (=> bm!133767 m!2666967))

(assert (=> b!2229320 d!664872))

(declare-fun b!2229456 () Bool)

(declare-fun e!1424816 () Bool)

(assert (=> b!2229456 (= e!1424816 (nullable!1758 (regOne!13330 (regOne!13331 expr!64))))))

(declare-fun b!2229457 () Bool)

(declare-fun e!1424815 () tuple2!25542)

(declare-fun lt!830491 () tuple2!25542)

(assert (=> b!2229457 (= e!1424815 (tuple2!25543 (_1!15187 lt!830491) (_2!15187 lt!830491)))))

(declare-fun call!133788 () tuple2!25542)

(assert (=> b!2229457 (= lt!830491 call!133788)))

(declare-fun b!2229458 () Bool)

(declare-fun e!1424813 () tuple2!25542)

(assert (=> b!2229458 (= e!1424813 (tuple2!25543 ((as const (Array Context!3914 Bool)) false) cacheDown!839))))

(declare-fun b!2229459 () Bool)

(declare-fun e!1424811 () tuple2!25542)

(assert (=> b!2229459 (= e!1424811 (tuple2!25543 (store ((as const (Array Context!3914 Bool)) false) context!86 true) cacheDown!839))))

(declare-fun b!2229460 () Bool)

(declare-fun c!355723 () Bool)

(assert (=> b!2229460 (= c!355723 ((_ is Concat!10747) (regOne!13331 expr!64)))))

(declare-fun e!1424817 () tuple2!25542)

(assert (=> b!2229460 (= e!1424817 e!1424815)))

(declare-fun bm!133783 () Bool)

(declare-fun c!355725 () Bool)

(declare-fun call!133789 () List!26290)

(declare-fun $colon$colon!514 (List!26290 Regex!6409) List!26290)

(assert (=> bm!133783 (= call!133789 ($colon$colon!514 (exprs!2457 context!86) (ite (or c!355725 c!355723) (regTwo!13330 (regOne!13331 expr!64)) (regOne!13331 expr!64))))))

(declare-fun bm!133784 () Bool)

(declare-fun call!133791 () tuple2!25542)

(declare-fun call!133790 () tuple2!25542)

(assert (=> bm!133784 (= call!133791 call!133790)))

(declare-fun b!2229461 () Bool)

(declare-fun e!1424812 () tuple2!25542)

(declare-fun lt!830487 () tuple2!25542)

(declare-fun lt!830486 () tuple2!25542)

(assert (=> b!2229461 (= e!1424812 (tuple2!25543 ((_ map or) (_1!15187 lt!830487) (_1!15187 lt!830486)) (_2!15187 lt!830486)))))

(declare-fun call!133792 () tuple2!25542)

(assert (=> b!2229461 (= lt!830487 call!133792)))

(assert (=> b!2229461 (= lt!830486 call!133790)))

(declare-fun b!2229462 () Bool)

(declare-fun lt!830488 () tuple2!25542)

(assert (=> b!2229462 (= lt!830488 call!133788)))

(assert (=> b!2229462 (= e!1424813 (tuple2!25543 (_1!15187 lt!830488) (_2!15187 lt!830488)))))

(declare-fun b!2229463 () Bool)

(declare-fun c!355724 () Bool)

(assert (=> b!2229463 (= c!355724 ((_ is Union!6409) (regOne!13331 expr!64)))))

(assert (=> b!2229463 (= e!1424811 e!1424812)))

(declare-fun b!2229464 () Bool)

(assert (=> b!2229464 (= e!1424812 e!1424817)))

(declare-fun res!955194 () Bool)

(assert (=> b!2229464 (= res!955194 ((_ is Concat!10747) (regOne!13331 expr!64)))))

(assert (=> b!2229464 (=> (not res!955194) (not e!1424816))))

(assert (=> b!2229464 (= c!355725 e!1424816)))

(declare-fun b!2229465 () Bool)

(assert (=> b!2229465 (= e!1424815 e!1424813)))

(declare-fun c!355727 () Bool)

(assert (=> b!2229465 (= c!355727 ((_ is Star!6409) (regOne!13331 expr!64)))))

(declare-fun bm!133785 () Bool)

(assert (=> bm!133785 (= call!133792 (derivationStepZipperDownMem!21 (ite c!355724 (regOne!13331 (regOne!13331 expr!64)) (regOne!13330 (regOne!13331 expr!64))) (ite c!355724 context!86 (Context!3915 call!133789)) a!1167 cacheDown!839))))

(declare-fun lt!830484 () tuple2!25542)

(declare-fun d!664874 () Bool)

(declare-fun derivationStepZipperDown!41 (Regex!6409 Context!3914 C!12964) (InoxSet Context!3914))

(assert (=> d!664874 (= (_1!15187 lt!830484) (derivationStepZipperDown!41 (regOne!13331 expr!64) context!86 a!1167))))

(declare-fun e!1424814 () tuple2!25542)

(assert (=> d!664874 (= lt!830484 e!1424814)))

(declare-fun c!355726 () Bool)

(declare-fun lt!830489 () Option!5096)

(assert (=> d!664874 (= c!355726 ((_ is Some!5095) lt!830489))))

(assert (=> d!664874 (= lt!830489 (get!7897 cacheDown!839 (regOne!13331 expr!64) context!86 a!1167))))

(assert (=> d!664874 (validRegex!2384 (regOne!13331 expr!64))))

(assert (=> d!664874 (= (derivationStepZipperDownMem!21 (regOne!13331 expr!64) context!86 a!1167 cacheDown!839) lt!830484)))

(declare-fun bm!133786 () Bool)

(declare-fun call!133793 () List!26290)

(assert (=> bm!133786 (= call!133793 call!133789)))

(declare-fun b!2229466 () Bool)

(declare-fun lt!830492 () tuple2!25542)

(assert (=> b!2229466 (= lt!830492 call!133791)))

(declare-fun lt!830485 () tuple2!25542)

(assert (=> b!2229466 (= lt!830485 call!133792)))

(assert (=> b!2229466 (= e!1424817 (tuple2!25543 ((_ map or) (_1!15187 lt!830485) (_1!15187 lt!830492)) (_2!15187 lt!830492)))))

(declare-fun bm!133787 () Bool)

(assert (=> bm!133787 (= call!133788 call!133791)))

(declare-fun lt!830490 () tuple2!25542)

(declare-fun b!2229467 () Bool)

(declare-datatypes ((Unit!39152 0))(
  ( (Unit!39153) )
))
(declare-datatypes ((tuple2!25544 0))(
  ( (tuple2!25545 (_1!15188 Unit!39152) (_2!15188 CacheDown!1960)) )
))
(declare-fun update!136 (CacheDown!1960 Regex!6409 Context!3914 C!12964 (InoxSet Context!3914)) tuple2!25544)

(assert (=> b!2229467 (= e!1424814 (tuple2!25543 (_1!15187 lt!830490) (_2!15188 (update!136 (_2!15187 lt!830490) (regOne!13331 expr!64) context!86 a!1167 (_1!15187 lt!830490)))))))

(declare-fun c!355722 () Bool)

(assert (=> b!2229467 (= c!355722 (and ((_ is ElementMatch!6409) (regOne!13331 expr!64)) (= (c!355675 (regOne!13331 expr!64)) a!1167)))))

(assert (=> b!2229467 (= lt!830490 e!1424811)))

(declare-fun b!2229468 () Bool)

(assert (=> b!2229468 (= e!1424814 (tuple2!25543 (v!29781 lt!830489) cacheDown!839))))

(declare-fun bm!133788 () Bool)

(assert (=> bm!133788 (= call!133790 (derivationStepZipperDownMem!21 (ite c!355724 (regTwo!13331 (regOne!13331 expr!64)) (ite c!355725 (regTwo!13330 (regOne!13331 expr!64)) (ite c!355723 (regOne!13330 (regOne!13331 expr!64)) (reg!6738 (regOne!13331 expr!64))))) (ite (or c!355724 c!355725) context!86 (Context!3915 call!133793)) a!1167 (ite c!355724 (_2!15187 lt!830487) (ite c!355725 (_2!15187 lt!830485) cacheDown!839))))))

(assert (= (and d!664874 c!355726) b!2229468))

(assert (= (and d!664874 (not c!355726)) b!2229467))

(assert (= (and b!2229467 c!355722) b!2229459))

(assert (= (and b!2229467 (not c!355722)) b!2229463))

(assert (= (and b!2229463 c!355724) b!2229461))

(assert (= (and b!2229463 (not c!355724)) b!2229464))

(assert (= (and b!2229464 res!955194) b!2229456))

(assert (= (and b!2229464 c!355725) b!2229466))

(assert (= (and b!2229464 (not c!355725)) b!2229460))

(assert (= (and b!2229460 c!355723) b!2229457))

(assert (= (and b!2229460 (not c!355723)) b!2229465))

(assert (= (and b!2229465 c!355727) b!2229462))

(assert (= (and b!2229465 (not c!355727)) b!2229458))

(assert (= (or b!2229457 b!2229462) bm!133786))

(assert (= (or b!2229457 b!2229462) bm!133787))

(assert (= (or b!2229466 bm!133786) bm!133783))

(assert (= (or b!2229466 bm!133787) bm!133784))

(assert (= (or b!2229461 b!2229466) bm!133785))

(assert (= (or b!2229461 bm!133784) bm!133788))

(declare-fun m!2666969 () Bool)

(assert (=> b!2229459 m!2666969))

(declare-fun m!2666971 () Bool)

(assert (=> d!664874 m!2666971))

(declare-fun m!2666973 () Bool)

(assert (=> d!664874 m!2666973))

(declare-fun m!2666975 () Bool)

(assert (=> d!664874 m!2666975))

(declare-fun m!2666977 () Bool)

(assert (=> b!2229456 m!2666977))

(declare-fun m!2666979 () Bool)

(assert (=> b!2229467 m!2666979))

(declare-fun m!2666981 () Bool)

(assert (=> bm!133788 m!2666981))

(declare-fun m!2666983 () Bool)

(assert (=> bm!133783 m!2666983))

(declare-fun m!2666985 () Bool)

(assert (=> bm!133785 m!2666985))

(assert (=> b!2229320 d!664874))

(declare-fun d!664876 () Bool)

(assert (=> d!664876 (= (array_inv!3359 (_keys!3344 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839))))))) (bvsge (size!20462 (_keys!3344 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2229326 d!664876))

(declare-fun d!664878 () Bool)

(assert (=> d!664878 (= (array_inv!3360 (_values!3327 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839))))))) (bvsge (size!20463 (_values!3327 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2229326 d!664878))

(declare-fun d!664880 () Bool)

(declare-fun e!1424820 () Bool)

(assert (=> d!664880 e!1424820))

(declare-fun res!955197 () Bool)

(assert (=> d!664880 (=> res!955197 e!1424820)))

(declare-fun lt!830495 () Option!5096)

(declare-fun isEmpty!14891 (Option!5096) Bool)

(assert (=> d!664880 (= res!955197 (isEmpty!14891 lt!830495))))

(declare-fun choose!13122 (CacheDown!1960 Regex!6409 Context!3914 C!12964) Option!5096)

(assert (=> d!664880 (= lt!830495 (choose!13122 cacheDown!839 expr!64 context!86 a!1167))))

(assert (=> d!664880 (validCacheMapDown!278 (cache!3338 cacheDown!839))))

(assert (=> d!664880 (= (get!7897 cacheDown!839 expr!64 context!86 a!1167) lt!830495)))

(declare-fun b!2229471 () Bool)

(declare-fun get!7898 (Option!5096) (InoxSet Context!3914))

(assert (=> b!2229471 (= e!1424820 (= (get!7898 lt!830495) (derivationStepZipperDown!41 expr!64 context!86 a!1167)))))

(assert (= (and d!664880 (not res!955197)) b!2229471))

(declare-fun m!2666987 () Bool)

(assert (=> d!664880 m!2666987))

(declare-fun m!2666989 () Bool)

(assert (=> d!664880 m!2666989))

(assert (=> d!664880 m!2666945))

(declare-fun m!2666991 () Bool)

(assert (=> b!2229471 m!2666991))

(declare-fun m!2666993 () Bool)

(assert (=> b!2229471 m!2666993))

(assert (=> b!2229327 d!664880))

(declare-fun b!2229482 () Bool)

(declare-fun e!1424823 () Bool)

(assert (=> b!2229482 (= e!1424823 tp_is_empty!10043)))

(declare-fun b!2229483 () Bool)

(declare-fun tp!697972 () Bool)

(declare-fun tp!697975 () Bool)

(assert (=> b!2229483 (= e!1424823 (and tp!697972 tp!697975))))

(declare-fun b!2229484 () Bool)

(declare-fun tp!697974 () Bool)

(assert (=> b!2229484 (= e!1424823 tp!697974)))

(declare-fun b!2229485 () Bool)

(declare-fun tp!697973 () Bool)

(declare-fun tp!697976 () Bool)

(assert (=> b!2229485 (= e!1424823 (and tp!697973 tp!697976))))

(assert (=> b!2229328 (= tp!697956 e!1424823)))

(assert (= (and b!2229328 ((_ is ElementMatch!6409) (reg!6738 expr!64))) b!2229482))

(assert (= (and b!2229328 ((_ is Concat!10747) (reg!6738 expr!64))) b!2229483))

(assert (= (and b!2229328 ((_ is Star!6409) (reg!6738 expr!64))) b!2229484))

(assert (= (and b!2229328 ((_ is Union!6409) (reg!6738 expr!64))) b!2229485))

(declare-fun mapValue!14351 () List!26291)

(declare-fun e!1424838 () Bool)

(declare-fun tp!697999 () Bool)

(declare-fun b!2229500 () Bool)

(declare-fun setRes!20010 () Bool)

(declare-fun tp!698002 () Bool)

(declare-fun e!1424840 () Bool)

(assert (=> b!2229500 (= e!1424840 (and tp!697999 (inv!35572 (_2!15185 (_1!15186 (h!31598 mapValue!14351)))) e!1424838 tp_is_empty!10043 setRes!20010 tp!698002))))

(declare-fun condSetEmpty!20011 () Bool)

(assert (=> b!2229500 (= condSetEmpty!20011 (= (_2!15186 (h!31598 mapValue!14351)) ((as const (Array Context!3914 Bool)) false)))))

(declare-fun setIsEmpty!20010 () Bool)

(assert (=> setIsEmpty!20010 setRes!20010))

(declare-fun setNonEmpty!20010 () Bool)

(declare-fun e!1424836 () Bool)

(declare-fun setElem!20010 () Context!3914)

(declare-fun tp!698006 () Bool)

(assert (=> setNonEmpty!20010 (= setRes!20010 (and tp!698006 (inv!35572 setElem!20010) e!1424836))))

(declare-fun setRest!20010 () (InoxSet Context!3914))

(assert (=> setNonEmpty!20010 (= (_2!15186 (h!31598 mapValue!14351)) ((_ map or) (store ((as const (Array Context!3914 Bool)) false) setElem!20010 true) setRest!20010))))

(declare-fun mapIsEmpty!14351 () Bool)

(declare-fun mapRes!14351 () Bool)

(assert (=> mapIsEmpty!14351 mapRes!14351))

(declare-fun b!2229501 () Bool)

(declare-fun tp!698007 () Bool)

(assert (=> b!2229501 (= e!1424836 tp!698007)))

(declare-fun b!2229502 () Bool)

(declare-fun e!1424841 () Bool)

(declare-fun tp!698009 () Bool)

(assert (=> b!2229502 (= e!1424841 tp!698009)))

(declare-fun setIsEmpty!20011 () Bool)

(declare-fun setRes!20011 () Bool)

(assert (=> setIsEmpty!20011 setRes!20011))

(declare-fun e!1424837 () Bool)

(declare-fun setNonEmpty!20011 () Bool)

(declare-fun tp!698000 () Bool)

(declare-fun setElem!20011 () Context!3914)

(assert (=> setNonEmpty!20011 (= setRes!20011 (and tp!698000 (inv!35572 setElem!20011) e!1424837))))

(declare-fun mapDefault!14351 () List!26291)

(declare-fun setRest!20011 () (InoxSet Context!3914))

(assert (=> setNonEmpty!20011 (= (_2!15186 (h!31598 mapDefault!14351)) ((_ map or) (store ((as const (Array Context!3914 Bool)) false) setElem!20011 true) setRest!20011))))

(declare-fun condMapEmpty!14351 () Bool)

(assert (=> mapNonEmpty!14348 (= condMapEmpty!14351 (= mapRest!14348 ((as const (Array (_ BitVec 32) List!26291)) mapDefault!14351)))))

(declare-fun e!1424839 () Bool)

(assert (=> mapNonEmpty!14348 (= tp!697949 (and e!1424839 mapRes!14351))))

(declare-fun b!2229503 () Bool)

(declare-fun tp!698004 () Bool)

(assert (=> b!2229503 (= e!1424837 tp!698004)))

(declare-fun b!2229504 () Bool)

(declare-fun tp!698008 () Bool)

(declare-fun tp!698003 () Bool)

(assert (=> b!2229504 (= e!1424839 (and tp!698003 (inv!35572 (_2!15185 (_1!15186 (h!31598 mapDefault!14351)))) e!1424841 tp_is_empty!10043 setRes!20011 tp!698008))))

(declare-fun condSetEmpty!20010 () Bool)

(assert (=> b!2229504 (= condSetEmpty!20010 (= (_2!15186 (h!31598 mapDefault!14351)) ((as const (Array Context!3914 Bool)) false)))))

(declare-fun b!2229505 () Bool)

(declare-fun tp!698001 () Bool)

(assert (=> b!2229505 (= e!1424838 tp!698001)))

(declare-fun mapNonEmpty!14351 () Bool)

(declare-fun tp!698005 () Bool)

(assert (=> mapNonEmpty!14351 (= mapRes!14351 (and tp!698005 e!1424840))))

(declare-fun mapKey!14351 () (_ BitVec 32))

(declare-fun mapRest!14351 () (Array (_ BitVec 32) List!26291))

(assert (=> mapNonEmpty!14351 (= mapRest!14348 (store mapRest!14351 mapKey!14351 mapValue!14351))))

(assert (= (and mapNonEmpty!14348 condMapEmpty!14351) mapIsEmpty!14351))

(assert (= (and mapNonEmpty!14348 (not condMapEmpty!14351)) mapNonEmpty!14351))

(assert (= b!2229500 b!2229505))

(assert (= (and b!2229500 condSetEmpty!20011) setIsEmpty!20010))

(assert (= (and b!2229500 (not condSetEmpty!20011)) setNonEmpty!20010))

(assert (= setNonEmpty!20010 b!2229501))

(assert (= (and mapNonEmpty!14351 ((_ is Cons!26197) mapValue!14351)) b!2229500))

(assert (= b!2229504 b!2229502))

(assert (= (and b!2229504 condSetEmpty!20010) setIsEmpty!20011))

(assert (= (and b!2229504 (not condSetEmpty!20010)) setNonEmpty!20011))

(assert (= setNonEmpty!20011 b!2229503))

(assert (= (and mapNonEmpty!14348 ((_ is Cons!26197) mapDefault!14351)) b!2229504))

(declare-fun m!2666995 () Bool)

(assert (=> b!2229500 m!2666995))

(declare-fun m!2666997 () Bool)

(assert (=> setNonEmpty!20011 m!2666997))

(declare-fun m!2666999 () Bool)

(assert (=> b!2229504 m!2666999))

(declare-fun m!2667001 () Bool)

(assert (=> mapNonEmpty!14351 m!2667001))

(declare-fun m!2667003 () Bool)

(assert (=> setNonEmpty!20010 m!2667003))

(declare-fun e!1424848 () Bool)

(assert (=> mapNonEmpty!14348 (= tp!697955 e!1424848)))

(declare-fun b!2229514 () Bool)

(declare-fun e!1424850 () Bool)

(declare-fun tp!698021 () Bool)

(assert (=> b!2229514 (= e!1424850 tp!698021)))

(declare-fun setNonEmpty!20014 () Bool)

(declare-fun setRes!20014 () Bool)

(declare-fun tp!698022 () Bool)

(declare-fun setElem!20014 () Context!3914)

(declare-fun e!1424849 () Bool)

(assert (=> setNonEmpty!20014 (= setRes!20014 (and tp!698022 (inv!35572 setElem!20014) e!1424849))))

(declare-fun setRest!20014 () (InoxSet Context!3914))

(assert (=> setNonEmpty!20014 (= (_2!15186 (h!31598 mapValue!14348)) ((_ map or) (store ((as const (Array Context!3914 Bool)) false) setElem!20014 true) setRest!20014))))

(declare-fun b!2229515 () Bool)

(declare-fun tp!698024 () Bool)

(assert (=> b!2229515 (= e!1424849 tp!698024)))

(declare-fun tp!698023 () Bool)

(declare-fun b!2229516 () Bool)

(declare-fun tp!698020 () Bool)

(assert (=> b!2229516 (= e!1424848 (and tp!698023 (inv!35572 (_2!15185 (_1!15186 (h!31598 mapValue!14348)))) e!1424850 tp_is_empty!10043 setRes!20014 tp!698020))))

(declare-fun condSetEmpty!20014 () Bool)

(assert (=> b!2229516 (= condSetEmpty!20014 (= (_2!15186 (h!31598 mapValue!14348)) ((as const (Array Context!3914 Bool)) false)))))

(declare-fun setIsEmpty!20014 () Bool)

(assert (=> setIsEmpty!20014 setRes!20014))

(assert (= b!2229516 b!2229514))

(assert (= (and b!2229516 condSetEmpty!20014) setIsEmpty!20014))

(assert (= (and b!2229516 (not condSetEmpty!20014)) setNonEmpty!20014))

(assert (= setNonEmpty!20014 b!2229515))

(assert (= (and mapNonEmpty!14348 ((_ is Cons!26197) mapValue!14348)) b!2229516))

(declare-fun m!2667005 () Bool)

(assert (=> setNonEmpty!20014 m!2667005))

(declare-fun m!2667007 () Bool)

(assert (=> b!2229516 m!2667007))

(declare-fun b!2229521 () Bool)

(declare-fun e!1424853 () Bool)

(declare-fun tp!698029 () Bool)

(declare-fun tp!698030 () Bool)

(assert (=> b!2229521 (= e!1424853 (and tp!698029 tp!698030))))

(assert (=> b!2229325 (= tp!697959 e!1424853)))

(assert (= (and b!2229325 ((_ is Cons!26196) (exprs!2457 context!86))) b!2229521))

(declare-fun b!2229522 () Bool)

(declare-fun e!1424854 () Bool)

(assert (=> b!2229522 (= e!1424854 tp_is_empty!10043)))

(declare-fun b!2229523 () Bool)

(declare-fun tp!698031 () Bool)

(declare-fun tp!698034 () Bool)

(assert (=> b!2229523 (= e!1424854 (and tp!698031 tp!698034))))

(declare-fun b!2229524 () Bool)

(declare-fun tp!698033 () Bool)

(assert (=> b!2229524 (= e!1424854 tp!698033)))

(declare-fun b!2229525 () Bool)

(declare-fun tp!698032 () Bool)

(declare-fun tp!698035 () Bool)

(assert (=> b!2229525 (= e!1424854 (and tp!698032 tp!698035))))

(assert (=> b!2229324 (= tp!697951 e!1424854)))

(assert (= (and b!2229324 ((_ is ElementMatch!6409) (regOne!13330 expr!64))) b!2229522))

(assert (= (and b!2229324 ((_ is Concat!10747) (regOne!13330 expr!64))) b!2229523))

(assert (= (and b!2229324 ((_ is Star!6409) (regOne!13330 expr!64))) b!2229524))

(assert (= (and b!2229324 ((_ is Union!6409) (regOne!13330 expr!64))) b!2229525))

(declare-fun b!2229526 () Bool)

(declare-fun e!1424855 () Bool)

(assert (=> b!2229526 (= e!1424855 tp_is_empty!10043)))

(declare-fun b!2229527 () Bool)

(declare-fun tp!698036 () Bool)

(declare-fun tp!698039 () Bool)

(assert (=> b!2229527 (= e!1424855 (and tp!698036 tp!698039))))

(declare-fun b!2229528 () Bool)

(declare-fun tp!698038 () Bool)

(assert (=> b!2229528 (= e!1424855 tp!698038)))

(declare-fun b!2229529 () Bool)

(declare-fun tp!698037 () Bool)

(declare-fun tp!698040 () Bool)

(assert (=> b!2229529 (= e!1424855 (and tp!698037 tp!698040))))

(assert (=> b!2229324 (= tp!697954 e!1424855)))

(assert (= (and b!2229324 ((_ is ElementMatch!6409) (regTwo!13330 expr!64))) b!2229526))

(assert (= (and b!2229324 ((_ is Concat!10747) (regTwo!13330 expr!64))) b!2229527))

(assert (= (and b!2229324 ((_ is Star!6409) (regTwo!13330 expr!64))) b!2229528))

(assert (= (and b!2229324 ((_ is Union!6409) (regTwo!13330 expr!64))) b!2229529))

(declare-fun e!1424856 () Bool)

(assert (=> b!2229326 (= tp!697952 e!1424856)))

(declare-fun b!2229530 () Bool)

(declare-fun e!1424858 () Bool)

(declare-fun tp!698042 () Bool)

(assert (=> b!2229530 (= e!1424858 tp!698042)))

(declare-fun setNonEmpty!20015 () Bool)

(declare-fun setElem!20015 () Context!3914)

(declare-fun tp!698043 () Bool)

(declare-fun setRes!20015 () Bool)

(declare-fun e!1424857 () Bool)

(assert (=> setNonEmpty!20015 (= setRes!20015 (and tp!698043 (inv!35572 setElem!20015) e!1424857))))

(declare-fun setRest!20015 () (InoxSet Context!3914))

(assert (=> setNonEmpty!20015 (= (_2!15186 (h!31598 (zeroValue!3305 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3914 Bool)) false) setElem!20015 true) setRest!20015))))

(declare-fun b!2229531 () Bool)

(declare-fun tp!698045 () Bool)

(assert (=> b!2229531 (= e!1424857 tp!698045)))

(declare-fun b!2229532 () Bool)

(declare-fun tp!698041 () Bool)

(declare-fun tp!698044 () Bool)

(assert (=> b!2229532 (= e!1424856 (and tp!698044 (inv!35572 (_2!15185 (_1!15186 (h!31598 (zeroValue!3305 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839)))))))))) e!1424858 tp_is_empty!10043 setRes!20015 tp!698041))))

(declare-fun condSetEmpty!20015 () Bool)

(assert (=> b!2229532 (= condSetEmpty!20015 (= (_2!15186 (h!31598 (zeroValue!3305 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839)))))))) ((as const (Array Context!3914 Bool)) false)))))

(declare-fun setIsEmpty!20015 () Bool)

(assert (=> setIsEmpty!20015 setRes!20015))

(assert (= b!2229532 b!2229530))

(assert (= (and b!2229532 condSetEmpty!20015) setIsEmpty!20015))

(assert (= (and b!2229532 (not condSetEmpty!20015)) setNonEmpty!20015))

(assert (= setNonEmpty!20015 b!2229531))

(assert (= (and b!2229326 ((_ is Cons!26197) (zeroValue!3305 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839)))))))) b!2229532))

(declare-fun m!2667009 () Bool)

(assert (=> setNonEmpty!20015 m!2667009))

(declare-fun m!2667011 () Bool)

(assert (=> b!2229532 m!2667011))

(declare-fun e!1424859 () Bool)

(assert (=> b!2229326 (= tp!697961 e!1424859)))

(declare-fun b!2229533 () Bool)

(declare-fun e!1424861 () Bool)

(declare-fun tp!698047 () Bool)

(assert (=> b!2229533 (= e!1424861 tp!698047)))

(declare-fun setNonEmpty!20016 () Bool)

(declare-fun e!1424860 () Bool)

(declare-fun setRes!20016 () Bool)

(declare-fun tp!698048 () Bool)

(declare-fun setElem!20016 () Context!3914)

(assert (=> setNonEmpty!20016 (= setRes!20016 (and tp!698048 (inv!35572 setElem!20016) e!1424860))))

(declare-fun setRest!20016 () (InoxSet Context!3914))

(assert (=> setNonEmpty!20016 (= (_2!15186 (h!31598 (minValue!3305 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3914 Bool)) false) setElem!20016 true) setRest!20016))))

(declare-fun b!2229534 () Bool)

(declare-fun tp!698050 () Bool)

(assert (=> b!2229534 (= e!1424860 tp!698050)))

(declare-fun tp!698049 () Bool)

(declare-fun b!2229535 () Bool)

(declare-fun tp!698046 () Bool)

(assert (=> b!2229535 (= e!1424859 (and tp!698049 (inv!35572 (_2!15185 (_1!15186 (h!31598 (minValue!3305 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839)))))))))) e!1424861 tp_is_empty!10043 setRes!20016 tp!698046))))

(declare-fun condSetEmpty!20016 () Bool)

(assert (=> b!2229535 (= condSetEmpty!20016 (= (_2!15186 (h!31598 (minValue!3305 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839)))))))) ((as const (Array Context!3914 Bool)) false)))))

(declare-fun setIsEmpty!20016 () Bool)

(assert (=> setIsEmpty!20016 setRes!20016))

(assert (= b!2229535 b!2229533))

(assert (= (and b!2229535 condSetEmpty!20016) setIsEmpty!20016))

(assert (= (and b!2229535 (not condSetEmpty!20016)) setNonEmpty!20016))

(assert (= setNonEmpty!20016 b!2229534))

(assert (= (and b!2229326 ((_ is Cons!26197) (minValue!3305 (v!29779 (underlying!6295 (v!29780 (underlying!6296 (cache!3338 cacheDown!839)))))))) b!2229535))

(declare-fun m!2667013 () Bool)

(assert (=> setNonEmpty!20016 m!2667013))

(declare-fun m!2667015 () Bool)

(assert (=> b!2229535 m!2667015))

(declare-fun b!2229536 () Bool)

(declare-fun e!1424862 () Bool)

(assert (=> b!2229536 (= e!1424862 tp_is_empty!10043)))

(declare-fun b!2229537 () Bool)

(declare-fun tp!698051 () Bool)

(declare-fun tp!698054 () Bool)

(assert (=> b!2229537 (= e!1424862 (and tp!698051 tp!698054))))

(declare-fun b!2229538 () Bool)

(declare-fun tp!698053 () Bool)

(assert (=> b!2229538 (= e!1424862 tp!698053)))

(declare-fun b!2229539 () Bool)

(declare-fun tp!698052 () Bool)

(declare-fun tp!698055 () Bool)

(assert (=> b!2229539 (= e!1424862 (and tp!698052 tp!698055))))

(assert (=> b!2229323 (= tp!697957 e!1424862)))

(assert (= (and b!2229323 ((_ is ElementMatch!6409) (regOne!13331 expr!64))) b!2229536))

(assert (= (and b!2229323 ((_ is Concat!10747) (regOne!13331 expr!64))) b!2229537))

(assert (= (and b!2229323 ((_ is Star!6409) (regOne!13331 expr!64))) b!2229538))

(assert (= (and b!2229323 ((_ is Union!6409) (regOne!13331 expr!64))) b!2229539))

(declare-fun b!2229540 () Bool)

(declare-fun e!1424863 () Bool)

(assert (=> b!2229540 (= e!1424863 tp_is_empty!10043)))

(declare-fun b!2229541 () Bool)

(declare-fun tp!698056 () Bool)

(declare-fun tp!698059 () Bool)

(assert (=> b!2229541 (= e!1424863 (and tp!698056 tp!698059))))

(declare-fun b!2229542 () Bool)

(declare-fun tp!698058 () Bool)

(assert (=> b!2229542 (= e!1424863 tp!698058)))

(declare-fun b!2229543 () Bool)

(declare-fun tp!698057 () Bool)

(declare-fun tp!698060 () Bool)

(assert (=> b!2229543 (= e!1424863 (and tp!698057 tp!698060))))

(assert (=> b!2229323 (= tp!697950 e!1424863)))

(assert (= (and b!2229323 ((_ is ElementMatch!6409) (regTwo!13331 expr!64))) b!2229540))

(assert (= (and b!2229323 ((_ is Concat!10747) (regTwo!13331 expr!64))) b!2229541))

(assert (= (and b!2229323 ((_ is Star!6409) (regTwo!13331 expr!64))) b!2229542))

(assert (= (and b!2229323 ((_ is Union!6409) (regTwo!13331 expr!64))) b!2229543))

(declare-fun e!1424864 () Bool)

(assert (=> b!2229331 (= tp!697953 e!1424864)))

(declare-fun b!2229544 () Bool)

(declare-fun e!1424866 () Bool)

(declare-fun tp!698062 () Bool)

(assert (=> b!2229544 (= e!1424866 tp!698062)))

(declare-fun setNonEmpty!20017 () Bool)

(declare-fun setRes!20017 () Bool)

(declare-fun tp!698063 () Bool)

(declare-fun e!1424865 () Bool)

(declare-fun setElem!20017 () Context!3914)

(assert (=> setNonEmpty!20017 (= setRes!20017 (and tp!698063 (inv!35572 setElem!20017) e!1424865))))

(declare-fun setRest!20017 () (InoxSet Context!3914))

(assert (=> setNonEmpty!20017 (= (_2!15186 (h!31598 mapDefault!14348)) ((_ map or) (store ((as const (Array Context!3914 Bool)) false) setElem!20017 true) setRest!20017))))

(declare-fun b!2229545 () Bool)

(declare-fun tp!698065 () Bool)

(assert (=> b!2229545 (= e!1424865 tp!698065)))

(declare-fun tp!698064 () Bool)

(declare-fun b!2229546 () Bool)

(declare-fun tp!698061 () Bool)

(assert (=> b!2229546 (= e!1424864 (and tp!698064 (inv!35572 (_2!15185 (_1!15186 (h!31598 mapDefault!14348)))) e!1424866 tp_is_empty!10043 setRes!20017 tp!698061))))

(declare-fun condSetEmpty!20017 () Bool)

(assert (=> b!2229546 (= condSetEmpty!20017 (= (_2!15186 (h!31598 mapDefault!14348)) ((as const (Array Context!3914 Bool)) false)))))

(declare-fun setIsEmpty!20017 () Bool)

(assert (=> setIsEmpty!20017 setRes!20017))

(assert (= b!2229546 b!2229544))

(assert (= (and b!2229546 condSetEmpty!20017) setIsEmpty!20017))

(assert (= (and b!2229546 (not condSetEmpty!20017)) setNonEmpty!20017))

(assert (= setNonEmpty!20017 b!2229545))

(assert (= (and b!2229331 ((_ is Cons!26197) mapDefault!14348)) b!2229546))

(declare-fun m!2667017 () Bool)

(assert (=> setNonEmpty!20017 m!2667017))

(declare-fun m!2667019 () Bool)

(assert (=> b!2229546 m!2667019))

(check-sat (not b!2229538) (not setNonEmpty!20014) (not b!2229514) (not setNonEmpty!20015) (not b!2229539) (not b!2229537) (not setNonEmpty!20010) (not b!2229546) (not b!2229502) (not b!2229535) (not bm!133788) (not d!664874) (not bm!133765) (not b!2229542) (not b!2229523) (not b!2229541) (not mapNonEmpty!14351) (not b!2229358) (not bm!133740) (not b!2229534) (not b!2229467) (not bm!133767) (not bm!133764) (not b!2229545) (not b!2229544) b_and!174639 (not b!2229528) (not b!2229503) (not b!2229533) (not b!2229516) (not b!2229504) (not b!2229531) b_and!174637 (not bm!133770) (not d!664868) (not b!2229485) (not setNonEmpty!20011) (not b!2229505) (not b!2229527) (not b!2229543) (not b_next!65355) (not bm!133763) (not b_next!65353) (not b!2229471) (not b!2229501) (not bm!133757) (not bm!133760) (not bm!133785) (not b!2229524) (not d!664880) (not bm!133768) (not setNonEmpty!20016) (not b!2229525) (not b!2229484) tp_is_empty!10043 (not bm!133761) (not bm!133741) (not b!2229483) (not b!2229456) (not setNonEmpty!20017) (not b!2229515) (not bm!133758) (not bm!133783) (not b!2229532) (not b!2229500) (not b!2229529) (not b!2229521) (not b!2229361) (not b!2229530))
(check-sat b_and!174639 b_and!174637 (not b_next!65353) (not b_next!65355))
