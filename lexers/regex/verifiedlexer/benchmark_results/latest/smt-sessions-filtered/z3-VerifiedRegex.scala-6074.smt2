; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296288 () Bool)

(assert start!296288)

(declare-fun b!3160408 () Bool)

(declare-fun b_free!82961 () Bool)

(declare-fun b_next!83665 () Bool)

(assert (=> b!3160408 (= b_free!82961 (not b_next!83665))))

(declare-fun tp!994021 () Bool)

(declare-fun b_and!209203 () Bool)

(assert (=> b!3160408 (= tp!994021 b_and!209203)))

(declare-fun b!3160416 () Bool)

(declare-fun b_free!82963 () Bool)

(declare-fun b_next!83667 () Bool)

(assert (=> b!3160416 (= b_free!82963 (not b_next!83667))))

(declare-fun tp!994010 () Bool)

(declare-fun b_and!209205 () Bool)

(assert (=> b!3160416 (= tp!994010 b_and!209205)))

(declare-fun b!3160405 () Bool)

(declare-fun e!1968924 () Bool)

(declare-fun e!1968923 () Bool)

(assert (=> b!3160405 (= e!1968924 e!1968923)))

(declare-fun b!3160406 () Bool)

(declare-fun e!1968918 () Bool)

(assert (=> b!3160406 (= e!1968918 e!1968924)))

(declare-fun b!3160407 () Bool)

(declare-fun e!1968916 () Bool)

(declare-fun tp!994012 () Bool)

(declare-fun tp!994018 () Bool)

(assert (=> b!3160407 (= e!1968916 (and tp!994012 tp!994018))))

(declare-fun tp!994013 () Bool)

(declare-fun e!1968917 () Bool)

(declare-datatypes ((C!19584 0))(
  ( (C!19585 (val!11828 Int)) )
))
(declare-datatypes ((Regex!9699 0))(
  ( (ElementMatch!9699 (c!531572 C!19584)) (Concat!15020 (regOne!19910 Regex!9699) (regTwo!19910 Regex!9699)) (EmptyExpr!9699) (Star!9699 (reg!10028 Regex!9699)) (EmptyLang!9699) (Union!9699 (regOne!19911 Regex!9699) (regTwo!19911 Regex!9699)) )
))
(declare-datatypes ((tuple2!34314 0))(
  ( (tuple2!34315 (_1!20289 Regex!9699) (_2!20289 C!19584)) )
))
(declare-datatypes ((tuple2!34316 0))(
  ( (tuple2!34317 (_1!20290 tuple2!34314) (_2!20290 Regex!9699)) )
))
(declare-datatypes ((array!14658 0))(
  ( (array!14659 (arr!6530 (Array (_ BitVec 32) (_ BitVec 64))) (size!26616 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4036 0))(
  ( (HashableExt!4035 (__x!22466 Int)) )
))
(declare-datatypes ((List!35527 0))(
  ( (Nil!35403) (Cons!35403 (h!40823 tuple2!34316) (t!234592 List!35527)) )
))
(declare-datatypes ((array!14660 0))(
  ( (array!14661 (arr!6531 (Array (_ BitVec 32) List!35527)) (size!26617 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8240 0))(
  ( (LongMapFixedSize!8241 (defaultEntry!4505 Int) (mask!10763 (_ BitVec 32)) (extraKeys!4369 (_ BitVec 32)) (zeroValue!4379 List!35527) (minValue!4379 List!35527) (_size!8283 (_ BitVec 32)) (_keys!4420 array!14658) (_values!4401 array!14660) (_vacant!4181 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16289 0))(
  ( (Cell!16290 (v!35016 LongMapFixedSize!8240)) )
))
(declare-datatypes ((MutLongMap!4120 0))(
  ( (LongMap!4120 (underlying!8469 Cell!16289)) (MutLongMapExt!4119 (__x!22467 Int)) )
))
(declare-datatypes ((Cell!16291 0))(
  ( (Cell!16292 (v!35017 MutLongMap!4120)) )
))
(declare-datatypes ((MutableMap!4026 0))(
  ( (MutableMapExt!4025 (__x!22468 Int)) (HashMap!4026 (underlying!8470 Cell!16291) (hashF!6068 Hashable!4036) (_size!8284 (_ BitVec 32)) (defaultValue!4197 Int)) )
))
(declare-datatypes ((Cache!322 0))(
  ( (Cache!323 (cache!4163 MutableMap!4026)) )
))
(declare-fun cache!347 () Cache!322)

(declare-fun tp!994015 () Bool)

(declare-fun array_inv!4676 (array!14658) Bool)

(declare-fun array_inv!4677 (array!14660) Bool)

(assert (=> b!3160408 (= e!1968923 (and tp!994021 tp!994015 tp!994013 (array_inv!4676 (_keys!4420 (v!35016 (underlying!8469 (v!35017 (underlying!8470 (cache!4163 cache!347))))))) (array_inv!4677 (_values!4401 (v!35016 (underlying!8469 (v!35017 (underlying!8470 (cache!4163 cache!347))))))) e!1968917))))

(declare-fun b!3160409 () Bool)

(declare-fun tp!994011 () Bool)

(declare-fun tp!994014 () Bool)

(assert (=> b!3160409 (= e!1968916 (and tp!994011 tp!994014))))

(declare-fun b!3160410 () Bool)

(declare-fun e!1968919 () Bool)

(declare-fun lt!1062743 () MutLongMap!4120)

(get-info :version)

(assert (=> b!3160410 (= e!1968919 (and e!1968918 ((_ is LongMap!4120) lt!1062743)))))

(assert (=> b!3160410 (= lt!1062743 (v!35017 (underlying!8470 (cache!4163 cache!347))))))

(declare-fun b!3160411 () Bool)

(declare-fun res!1286888 () Bool)

(declare-fun e!1968920 () Bool)

(assert (=> b!3160411 (=> (not res!1286888) (not e!1968920))))

(declare-fun valid!3206 (Cache!322) Bool)

(assert (=> b!3160411 (= res!1286888 (valid!3206 cache!347))))

(declare-fun mapIsEmpty!18701 () Bool)

(declare-fun mapRes!18701 () Bool)

(assert (=> mapIsEmpty!18701 mapRes!18701))

(declare-fun b!3160412 () Bool)

(declare-fun tp_is_empty!16961 () Bool)

(assert (=> b!3160412 (= e!1968916 tp_is_empty!16961)))

(declare-fun b!3160413 () Bool)

(declare-fun tp!994019 () Bool)

(assert (=> b!3160413 (= e!1968916 tp!994019)))

(declare-fun b!3160414 () Bool)

(declare-fun validCacheMap!42 (MutableMap!4026) Bool)

(assert (=> b!3160414 (= e!1968920 (not (validCacheMap!42 (cache!4163 cache!347))))))

(declare-fun mapNonEmpty!18701 () Bool)

(declare-fun tp!994016 () Bool)

(declare-fun tp!994020 () Bool)

(assert (=> mapNonEmpty!18701 (= mapRes!18701 (and tp!994016 tp!994020))))

(declare-fun mapValue!18701 () List!35527)

(declare-fun mapKey!18701 () (_ BitVec 32))

(declare-fun mapRest!18701 () (Array (_ BitVec 32) List!35527))

(assert (=> mapNonEmpty!18701 (= (arr!6531 (_values!4401 (v!35016 (underlying!8469 (v!35017 (underlying!8470 (cache!4163 cache!347))))))) (store mapRest!18701 mapKey!18701 mapValue!18701))))

(declare-fun b!3160415 () Bool)

(declare-fun e!1968922 () Bool)

(declare-fun e!1968925 () Bool)

(assert (=> b!3160415 (= e!1968922 e!1968925)))

(declare-fun res!1286887 () Bool)

(assert (=> start!296288 (=> (not res!1286887) (not e!1968920))))

(declare-fun r!13156 () Regex!9699)

(declare-fun validRegex!4430 (Regex!9699) Bool)

(assert (=> start!296288 (= res!1286887 (validRegex!4430 r!13156))))

(assert (=> start!296288 e!1968920))

(assert (=> start!296288 e!1968916))

(declare-fun inv!48028 (Cache!322) Bool)

(assert (=> start!296288 (and (inv!48028 cache!347) e!1968922)))

(assert (=> b!3160416 (= e!1968925 (and e!1968919 tp!994010))))

(declare-fun b!3160417 () Bool)

(declare-fun tp!994017 () Bool)

(assert (=> b!3160417 (= e!1968917 (and tp!994017 mapRes!18701))))

(declare-fun condMapEmpty!18701 () Bool)

(declare-fun mapDefault!18701 () List!35527)

(assert (=> b!3160417 (= condMapEmpty!18701 (= (arr!6531 (_values!4401 (v!35016 (underlying!8469 (v!35017 (underlying!8470 (cache!4163 cache!347))))))) ((as const (Array (_ BitVec 32) List!35527)) mapDefault!18701)))))

(assert (= (and start!296288 res!1286887) b!3160411))

(assert (= (and b!3160411 res!1286888) b!3160414))

(assert (= (and start!296288 ((_ is ElementMatch!9699) r!13156)) b!3160412))

(assert (= (and start!296288 ((_ is Concat!15020) r!13156)) b!3160407))

(assert (= (and start!296288 ((_ is Star!9699) r!13156)) b!3160413))

(assert (= (and start!296288 ((_ is Union!9699) r!13156)) b!3160409))

(assert (= (and b!3160417 condMapEmpty!18701) mapIsEmpty!18701))

(assert (= (and b!3160417 (not condMapEmpty!18701)) mapNonEmpty!18701))

(assert (= b!3160408 b!3160417))

(assert (= b!3160405 b!3160408))

(assert (= b!3160406 b!3160405))

(assert (= (and b!3160410 ((_ is LongMap!4120) (v!35017 (underlying!8470 (cache!4163 cache!347))))) b!3160406))

(assert (= b!3160416 b!3160410))

(assert (= (and b!3160415 ((_ is HashMap!4026) (cache!4163 cache!347))) b!3160416))

(assert (= start!296288 b!3160415))

(declare-fun m!3425482 () Bool)

(assert (=> start!296288 m!3425482))

(declare-fun m!3425484 () Bool)

(assert (=> start!296288 m!3425484))

(declare-fun m!3425486 () Bool)

(assert (=> b!3160414 m!3425486))

(declare-fun m!3425488 () Bool)

(assert (=> mapNonEmpty!18701 m!3425488))

(declare-fun m!3425490 () Bool)

(assert (=> b!3160411 m!3425490))

(declare-fun m!3425492 () Bool)

(assert (=> b!3160408 m!3425492))

(declare-fun m!3425494 () Bool)

(assert (=> b!3160408 m!3425494))

(check-sat (not b!3160408) b_and!209203 (not b!3160414) (not b!3160417) tp_is_empty!16961 (not mapNonEmpty!18701) b_and!209205 (not b!3160413) (not b_next!83665) (not b!3160409) (not b!3160411) (not start!296288) (not b!3160407) (not b_next!83667))
(check-sat b_and!209205 b_and!209203 (not b_next!83665) (not b_next!83667))
(get-model)

(declare-fun d!868379 () Bool)

(declare-fun res!1286895 () Bool)

(declare-fun e!1968930 () Bool)

(assert (=> d!868379 (=> (not res!1286895) (not e!1968930))))

(declare-fun valid!3207 (MutableMap!4026) Bool)

(assert (=> d!868379 (= res!1286895 (valid!3207 (cache!4163 cache!347)))))

(assert (=> d!868379 (= (validCacheMap!42 (cache!4163 cache!347)) e!1968930)))

(declare-fun b!3160424 () Bool)

(declare-fun res!1286896 () Bool)

(assert (=> b!3160424 (=> (not res!1286896) (not e!1968930))))

(declare-fun invariantList!474 (List!35527) Bool)

(declare-datatypes ((ListMap!1289 0))(
  ( (ListMap!1290 (toList!2044 List!35527)) )
))
(declare-fun map!7869 (MutableMap!4026) ListMap!1289)

(assert (=> b!3160424 (= res!1286896 (invariantList!474 (toList!2044 (map!7869 (cache!4163 cache!347)))))))

(declare-fun b!3160425 () Bool)

(declare-fun lambda!115747 () Int)

(declare-fun forall!7139 (List!35527 Int) Bool)

(assert (=> b!3160425 (= e!1968930 (forall!7139 (toList!2044 (map!7869 (cache!4163 cache!347))) lambda!115747))))

(assert (= (and d!868379 res!1286895) b!3160424))

(assert (= (and b!3160424 res!1286896) b!3160425))

(declare-fun m!3425497 () Bool)

(assert (=> d!868379 m!3425497))

(declare-fun m!3425499 () Bool)

(assert (=> b!3160424 m!3425499))

(declare-fun m!3425501 () Bool)

(assert (=> b!3160424 m!3425501))

(assert (=> b!3160425 m!3425499))

(declare-fun m!3425503 () Bool)

(assert (=> b!3160425 m!3425503))

(assert (=> b!3160414 d!868379))

(declare-fun d!868381 () Bool)

(assert (=> d!868381 (= (array_inv!4676 (_keys!4420 (v!35016 (underlying!8469 (v!35017 (underlying!8470 (cache!4163 cache!347))))))) (bvsge (size!26616 (_keys!4420 (v!35016 (underlying!8469 (v!35017 (underlying!8470 (cache!4163 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3160408 d!868381))

(declare-fun d!868383 () Bool)

(assert (=> d!868383 (= (array_inv!4677 (_values!4401 (v!35016 (underlying!8469 (v!35017 (underlying!8470 (cache!4163 cache!347))))))) (bvsge (size!26617 (_values!4401 (v!35016 (underlying!8469 (v!35017 (underlying!8470 (cache!4163 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3160408 d!868383))

(declare-fun b!3160444 () Bool)

(declare-fun res!1286909 () Bool)

(declare-fun e!1968947 () Bool)

(assert (=> b!3160444 (=> res!1286909 e!1968947)))

(assert (=> b!3160444 (= res!1286909 (not ((_ is Concat!15020) r!13156)))))

(declare-fun e!1968948 () Bool)

(assert (=> b!3160444 (= e!1968948 e!1968947)))

(declare-fun c!531577 () Bool)

(declare-fun call!228882 () Bool)

(declare-fun bm!228877 () Bool)

(declare-fun c!531578 () Bool)

(assert (=> bm!228877 (= call!228882 (validRegex!4430 (ite c!531577 (reg!10028 r!13156) (ite c!531578 (regOne!19911 r!13156) (regOne!19910 r!13156)))))))

(declare-fun b!3160445 () Bool)

(declare-fun e!1968950 () Bool)

(declare-fun call!228883 () Bool)

(assert (=> b!3160445 (= e!1968950 call!228883)))

(declare-fun b!3160446 () Bool)

(declare-fun res!1286907 () Bool)

(assert (=> b!3160446 (=> (not res!1286907) (not e!1968950))))

(declare-fun call!228884 () Bool)

(assert (=> b!3160446 (= res!1286907 call!228884)))

(assert (=> b!3160446 (= e!1968948 e!1968950)))

(declare-fun b!3160447 () Bool)

(declare-fun e!1968951 () Bool)

(assert (=> b!3160447 (= e!1968951 e!1968948)))

(assert (=> b!3160447 (= c!531578 ((_ is Union!9699) r!13156))))

(declare-fun b!3160448 () Bool)

(declare-fun e!1968949 () Bool)

(assert (=> b!3160448 (= e!1968949 e!1968951)))

(assert (=> b!3160448 (= c!531577 ((_ is Star!9699) r!13156))))

(declare-fun b!3160449 () Bool)

(declare-fun e!1968946 () Bool)

(assert (=> b!3160449 (= e!1968951 e!1968946)))

(declare-fun res!1286911 () Bool)

(declare-fun nullable!3327 (Regex!9699) Bool)

(assert (=> b!3160449 (= res!1286911 (not (nullable!3327 (reg!10028 r!13156))))))

(assert (=> b!3160449 (=> (not res!1286911) (not e!1968946))))

(declare-fun bm!228878 () Bool)

(assert (=> bm!228878 (= call!228884 call!228882)))

(declare-fun d!868385 () Bool)

(declare-fun res!1286910 () Bool)

(assert (=> d!868385 (=> res!1286910 e!1968949)))

(assert (=> d!868385 (= res!1286910 ((_ is ElementMatch!9699) r!13156))))

(assert (=> d!868385 (= (validRegex!4430 r!13156) e!1968949)))

(declare-fun b!3160450 () Bool)

(declare-fun e!1968945 () Bool)

(assert (=> b!3160450 (= e!1968945 call!228883)))

(declare-fun b!3160451 () Bool)

(assert (=> b!3160451 (= e!1968946 call!228882)))

(declare-fun bm!228879 () Bool)

(assert (=> bm!228879 (= call!228883 (validRegex!4430 (ite c!531578 (regTwo!19911 r!13156) (regTwo!19910 r!13156))))))

(declare-fun b!3160452 () Bool)

(assert (=> b!3160452 (= e!1968947 e!1968945)))

(declare-fun res!1286908 () Bool)

(assert (=> b!3160452 (=> (not res!1286908) (not e!1968945))))

(assert (=> b!3160452 (= res!1286908 call!228884)))

(assert (= (and d!868385 (not res!1286910)) b!3160448))

(assert (= (and b!3160448 c!531577) b!3160449))

(assert (= (and b!3160448 (not c!531577)) b!3160447))

(assert (= (and b!3160449 res!1286911) b!3160451))

(assert (= (and b!3160447 c!531578) b!3160446))

(assert (= (and b!3160447 (not c!531578)) b!3160444))

(assert (= (and b!3160446 res!1286907) b!3160445))

(assert (= (and b!3160444 (not res!1286909)) b!3160452))

(assert (= (and b!3160452 res!1286908) b!3160450))

(assert (= (or b!3160446 b!3160452) bm!228878))

(assert (= (or b!3160445 b!3160450) bm!228879))

(assert (= (or b!3160451 bm!228878) bm!228877))

(declare-fun m!3425505 () Bool)

(assert (=> bm!228877 m!3425505))

(declare-fun m!3425507 () Bool)

(assert (=> b!3160449 m!3425507))

(declare-fun m!3425509 () Bool)

(assert (=> bm!228879 m!3425509))

(assert (=> start!296288 d!868385))

(declare-fun d!868387 () Bool)

(declare-fun res!1286914 () Bool)

(declare-fun e!1968954 () Bool)

(assert (=> d!868387 (=> (not res!1286914) (not e!1968954))))

(assert (=> d!868387 (= res!1286914 ((_ is HashMap!4026) (cache!4163 cache!347)))))

(assert (=> d!868387 (= (inv!48028 cache!347) e!1968954)))

(declare-fun b!3160455 () Bool)

(assert (=> b!3160455 (= e!1968954 (validCacheMap!42 (cache!4163 cache!347)))))

(assert (= (and d!868387 res!1286914) b!3160455))

(assert (=> b!3160455 m!3425486))

(assert (=> start!296288 d!868387))

(declare-fun d!868389 () Bool)

(assert (=> d!868389 (= (valid!3206 cache!347) (validCacheMap!42 (cache!4163 cache!347)))))

(declare-fun bs!539404 () Bool)

(assert (= bs!539404 d!868389))

(assert (=> bs!539404 m!3425486))

(assert (=> b!3160411 d!868389))

(declare-fun mapIsEmpty!18704 () Bool)

(declare-fun mapRes!18704 () Bool)

(assert (=> mapIsEmpty!18704 mapRes!18704))

(declare-fun b!3160463 () Bool)

(declare-fun tp!994038 () Bool)

(declare-fun tp!994041 () Bool)

(declare-fun e!1968959 () Bool)

(declare-fun tp!994036 () Bool)

(assert (=> b!3160463 (= e!1968959 (and tp!994036 tp_is_empty!16961 tp!994041 tp!994038))))

(declare-fun condMapEmpty!18704 () Bool)

(declare-fun mapDefault!18704 () List!35527)

(assert (=> mapNonEmpty!18701 (= condMapEmpty!18704 (= mapRest!18701 ((as const (Array (_ BitVec 32) List!35527)) mapDefault!18704)))))

(assert (=> mapNonEmpty!18701 (= tp!994016 (and e!1968959 mapRes!18704))))

(declare-fun mapNonEmpty!18704 () Bool)

(declare-fun tp!994039 () Bool)

(declare-fun e!1968960 () Bool)

(assert (=> mapNonEmpty!18704 (= mapRes!18704 (and tp!994039 e!1968960))))

(declare-fun mapRest!18704 () (Array (_ BitVec 32) List!35527))

(declare-fun mapKey!18704 () (_ BitVec 32))

(declare-fun mapValue!18704 () List!35527)

(assert (=> mapNonEmpty!18704 (= mapRest!18701 (store mapRest!18704 mapKey!18704 mapValue!18704))))

(declare-fun tp!994037 () Bool)

(declare-fun tp!994040 () Bool)

(declare-fun tp!994042 () Bool)

(declare-fun b!3160462 () Bool)

(assert (=> b!3160462 (= e!1968960 (and tp!994042 tp_is_empty!16961 tp!994037 tp!994040))))

(assert (= (and mapNonEmpty!18701 condMapEmpty!18704) mapIsEmpty!18704))

(assert (= (and mapNonEmpty!18701 (not condMapEmpty!18704)) mapNonEmpty!18704))

(assert (= (and mapNonEmpty!18704 ((_ is Cons!35403) mapValue!18704)) b!3160462))

(assert (= (and mapNonEmpty!18701 ((_ is Cons!35403) mapDefault!18704)) b!3160463))

(declare-fun m!3425511 () Bool)

(assert (=> mapNonEmpty!18704 m!3425511))

(declare-fun tp!994050 () Bool)

(declare-fun b!3160468 () Bool)

(declare-fun e!1968963 () Bool)

(declare-fun tp!994049 () Bool)

(declare-fun tp!994051 () Bool)

(assert (=> b!3160468 (= e!1968963 (and tp!994049 tp_is_empty!16961 tp!994050 tp!994051))))

(assert (=> mapNonEmpty!18701 (= tp!994020 e!1968963)))

(assert (= (and mapNonEmpty!18701 ((_ is Cons!35403) mapValue!18701)) b!3160468))

(declare-fun b!3160481 () Bool)

(declare-fun e!1968966 () Bool)

(declare-fun tp!994063 () Bool)

(assert (=> b!3160481 (= e!1968966 tp!994063)))

(declare-fun b!3160482 () Bool)

(declare-fun tp!994064 () Bool)

(declare-fun tp!994062 () Bool)

(assert (=> b!3160482 (= e!1968966 (and tp!994064 tp!994062))))

(declare-fun b!3160479 () Bool)

(assert (=> b!3160479 (= e!1968966 tp_is_empty!16961)))

(assert (=> b!3160409 (= tp!994011 e!1968966)))

(declare-fun b!3160480 () Bool)

(declare-fun tp!994065 () Bool)

(declare-fun tp!994066 () Bool)

(assert (=> b!3160480 (= e!1968966 (and tp!994065 tp!994066))))

(assert (= (and b!3160409 ((_ is ElementMatch!9699) (regOne!19911 r!13156))) b!3160479))

(assert (= (and b!3160409 ((_ is Concat!15020) (regOne!19911 r!13156))) b!3160480))

(assert (= (and b!3160409 ((_ is Star!9699) (regOne!19911 r!13156))) b!3160481))

(assert (= (and b!3160409 ((_ is Union!9699) (regOne!19911 r!13156))) b!3160482))

(declare-fun b!3160485 () Bool)

(declare-fun e!1968967 () Bool)

(declare-fun tp!994068 () Bool)

(assert (=> b!3160485 (= e!1968967 tp!994068)))

(declare-fun b!3160486 () Bool)

(declare-fun tp!994069 () Bool)

(declare-fun tp!994067 () Bool)

(assert (=> b!3160486 (= e!1968967 (and tp!994069 tp!994067))))

(declare-fun b!3160483 () Bool)

(assert (=> b!3160483 (= e!1968967 tp_is_empty!16961)))

(assert (=> b!3160409 (= tp!994014 e!1968967)))

(declare-fun b!3160484 () Bool)

(declare-fun tp!994070 () Bool)

(declare-fun tp!994071 () Bool)

(assert (=> b!3160484 (= e!1968967 (and tp!994070 tp!994071))))

(assert (= (and b!3160409 ((_ is ElementMatch!9699) (regTwo!19911 r!13156))) b!3160483))

(assert (= (and b!3160409 ((_ is Concat!15020) (regTwo!19911 r!13156))) b!3160484))

(assert (= (and b!3160409 ((_ is Star!9699) (regTwo!19911 r!13156))) b!3160485))

(assert (= (and b!3160409 ((_ is Union!9699) (regTwo!19911 r!13156))) b!3160486))

(declare-fun e!1968968 () Bool)

(declare-fun tp!994072 () Bool)

(declare-fun tp!994074 () Bool)

(declare-fun tp!994073 () Bool)

(declare-fun b!3160487 () Bool)

(assert (=> b!3160487 (= e!1968968 (and tp!994072 tp_is_empty!16961 tp!994073 tp!994074))))

(assert (=> b!3160417 (= tp!994017 e!1968968)))

(assert (= (and b!3160417 ((_ is Cons!35403) mapDefault!18701)) b!3160487))

(declare-fun b!3160490 () Bool)

(declare-fun e!1968969 () Bool)

(declare-fun tp!994076 () Bool)

(assert (=> b!3160490 (= e!1968969 tp!994076)))

(declare-fun b!3160491 () Bool)

(declare-fun tp!994077 () Bool)

(declare-fun tp!994075 () Bool)

(assert (=> b!3160491 (= e!1968969 (and tp!994077 tp!994075))))

(declare-fun b!3160488 () Bool)

(assert (=> b!3160488 (= e!1968969 tp_is_empty!16961)))

(assert (=> b!3160413 (= tp!994019 e!1968969)))

(declare-fun b!3160489 () Bool)

(declare-fun tp!994078 () Bool)

(declare-fun tp!994079 () Bool)

(assert (=> b!3160489 (= e!1968969 (and tp!994078 tp!994079))))

(assert (= (and b!3160413 ((_ is ElementMatch!9699) (reg!10028 r!13156))) b!3160488))

(assert (= (and b!3160413 ((_ is Concat!15020) (reg!10028 r!13156))) b!3160489))

(assert (= (and b!3160413 ((_ is Star!9699) (reg!10028 r!13156))) b!3160490))

(assert (= (and b!3160413 ((_ is Union!9699) (reg!10028 r!13156))) b!3160491))

(declare-fun tp!994080 () Bool)

(declare-fun e!1968970 () Bool)

(declare-fun b!3160492 () Bool)

(declare-fun tp!994082 () Bool)

(declare-fun tp!994081 () Bool)

(assert (=> b!3160492 (= e!1968970 (and tp!994080 tp_is_empty!16961 tp!994081 tp!994082))))

(assert (=> b!3160408 (= tp!994015 e!1968970)))

(assert (= (and b!3160408 ((_ is Cons!35403) (zeroValue!4379 (v!35016 (underlying!8469 (v!35017 (underlying!8470 (cache!4163 cache!347)))))))) b!3160492))

(declare-fun tp!994085 () Bool)

(declare-fun tp!994084 () Bool)

(declare-fun b!3160493 () Bool)

(declare-fun e!1968971 () Bool)

(declare-fun tp!994083 () Bool)

(assert (=> b!3160493 (= e!1968971 (and tp!994083 tp_is_empty!16961 tp!994084 tp!994085))))

(assert (=> b!3160408 (= tp!994013 e!1968971)))

(assert (= (and b!3160408 ((_ is Cons!35403) (minValue!4379 (v!35016 (underlying!8469 (v!35017 (underlying!8470 (cache!4163 cache!347)))))))) b!3160493))

(declare-fun b!3160496 () Bool)

(declare-fun e!1968972 () Bool)

(declare-fun tp!994087 () Bool)

(assert (=> b!3160496 (= e!1968972 tp!994087)))

(declare-fun b!3160497 () Bool)

(declare-fun tp!994088 () Bool)

(declare-fun tp!994086 () Bool)

(assert (=> b!3160497 (= e!1968972 (and tp!994088 tp!994086))))

(declare-fun b!3160494 () Bool)

(assert (=> b!3160494 (= e!1968972 tp_is_empty!16961)))

(assert (=> b!3160407 (= tp!994012 e!1968972)))

(declare-fun b!3160495 () Bool)

(declare-fun tp!994089 () Bool)

(declare-fun tp!994090 () Bool)

(assert (=> b!3160495 (= e!1968972 (and tp!994089 tp!994090))))

(assert (= (and b!3160407 ((_ is ElementMatch!9699) (regOne!19910 r!13156))) b!3160494))

(assert (= (and b!3160407 ((_ is Concat!15020) (regOne!19910 r!13156))) b!3160495))

(assert (= (and b!3160407 ((_ is Star!9699) (regOne!19910 r!13156))) b!3160496))

(assert (= (and b!3160407 ((_ is Union!9699) (regOne!19910 r!13156))) b!3160497))

(declare-fun b!3160500 () Bool)

(declare-fun e!1968973 () Bool)

(declare-fun tp!994092 () Bool)

(assert (=> b!3160500 (= e!1968973 tp!994092)))

(declare-fun b!3160501 () Bool)

(declare-fun tp!994093 () Bool)

(declare-fun tp!994091 () Bool)

(assert (=> b!3160501 (= e!1968973 (and tp!994093 tp!994091))))

(declare-fun b!3160498 () Bool)

(assert (=> b!3160498 (= e!1968973 tp_is_empty!16961)))

(assert (=> b!3160407 (= tp!994018 e!1968973)))

(declare-fun b!3160499 () Bool)

(declare-fun tp!994094 () Bool)

(declare-fun tp!994095 () Bool)

(assert (=> b!3160499 (= e!1968973 (and tp!994094 tp!994095))))

(assert (= (and b!3160407 ((_ is ElementMatch!9699) (regTwo!19910 r!13156))) b!3160498))

(assert (= (and b!3160407 ((_ is Concat!15020) (regTwo!19910 r!13156))) b!3160499))

(assert (= (and b!3160407 ((_ is Star!9699) (regTwo!19910 r!13156))) b!3160500))

(assert (= (and b!3160407 ((_ is Union!9699) (regTwo!19910 r!13156))) b!3160501))

(check-sat (not b!3160491) b_and!209203 (not b!3160487) (not b!3160484) (not b!3160489) (not bm!228877) (not b!3160499) (not b!3160482) (not b_next!83665) (not b!3160425) (not mapNonEmpty!18704) (not d!868389) (not b!3160490) (not b!3160449) (not b!3160468) (not b!3160492) (not b!3160486) (not b!3160496) (not b!3160493) (not b!3160485) (not b!3160481) (not b!3160497) (not b!3160463) (not b!3160501) tp_is_empty!16961 (not b!3160455) (not b!3160462) (not b!3160480) (not bm!228879) b_and!209205 (not b!3160424) (not d!868379) (not b_next!83667) (not b!3160500) (not b!3160495))
(check-sat b_and!209205 b_and!209203 (not b_next!83665) (not b_next!83667))
