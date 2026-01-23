; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217464 () Bool)

(assert start!217464)

(declare-fun b!2229637 () Bool)

(declare-fun b_free!64657 () Bool)

(declare-fun b_next!65361 () Bool)

(assert (=> b!2229637 (= b_free!64657 (not b_next!65361))))

(declare-fun tp!698139 () Bool)

(declare-fun b_and!174645 () Bool)

(assert (=> b!2229637 (= tp!698139 b_and!174645)))

(declare-fun b!2229631 () Bool)

(declare-fun b_free!64659 () Bool)

(declare-fun b_next!65363 () Bool)

(assert (=> b!2229631 (= b_free!64659 (not b_next!65363))))

(declare-fun tp!698143 () Bool)

(declare-fun b_and!174647 () Bool)

(assert (=> b!2229631 (= tp!698143 b_and!174647)))

(declare-fun b!2229627 () Bool)

(declare-fun res!955219 () Bool)

(declare-fun e!1424927 () Bool)

(assert (=> b!2229627 (=> (not res!955219) (not e!1424927))))

(declare-datatypes ((C!12968 0))(
  ( (C!12969 (val!7532 Int)) )
))
(declare-datatypes ((Regex!6411 0))(
  ( (ElementMatch!6411 (c!355729 C!12968)) (Concat!10749 (regOne!13334 Regex!6411) (regTwo!13334 Regex!6411)) (EmptyExpr!6411) (Star!6411 (reg!6740 Regex!6411)) (EmptyLang!6411) (Union!6411 (regOne!13335 Regex!6411) (regTwo!13335 Regex!6411)) )
))
(declare-fun expr!64 () Regex!6411)

(declare-fun a!1167 () C!12968)

(get-info :version)

(assert (=> b!2229627 (= res!955219 (and (or (not ((_ is ElementMatch!6411) expr!64)) (not (= (c!355729 expr!64) a!1167))) (not ((_ is Union!6411) expr!64)) ((_ is Concat!10749) expr!64)))))

(declare-fun b!2229628 () Bool)

(declare-fun e!1424929 () Bool)

(declare-fun tp_is_empty!10047 () Bool)

(assert (=> b!2229628 (= e!1424929 tp_is_empty!10047)))

(declare-fun b!2229629 () Bool)

(declare-fun e!1424932 () Bool)

(declare-fun e!1424930 () Bool)

(assert (=> b!2229629 (= e!1424932 e!1424930)))

(declare-fun mapIsEmpty!14357 () Bool)

(declare-fun mapRes!14357 () Bool)

(assert (=> mapIsEmpty!14357 mapRes!14357))

(declare-fun b!2229630 () Bool)

(declare-fun tp!698134 () Bool)

(assert (=> b!2229630 (= e!1424929 tp!698134)))

(declare-fun e!1424923 () Bool)

(declare-fun e!1424925 () Bool)

(assert (=> b!2229631 (= e!1424923 (and e!1424925 tp!698143))))

(declare-fun res!955221 () Bool)

(assert (=> start!217464 (=> (not res!955221) (not e!1424927))))

(declare-fun validRegex!2386 (Regex!6411) Bool)

(assert (=> start!217464 (= res!955221 (validRegex!2386 expr!64))))

(assert (=> start!217464 e!1424927))

(assert (=> start!217464 e!1424929))

(declare-datatypes ((List!26294 0))(
  ( (Nil!26200) (Cons!26200 (h!31601 Regex!6411) (t!199709 List!26294)) )
))
(declare-datatypes ((Context!3918 0))(
  ( (Context!3919 (exprs!2459 List!26294)) )
))
(declare-datatypes ((array!10538 0))(
  ( (array!10539 (arr!4685 (Array (_ BitVec 32) (_ BitVec 64))) (size!20466 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3894 0))(
  ( (tuple3!3895 (_1!15191 Regex!6411) (_2!15191 Context!3918) (_3!2417 C!12968)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25548 0))(
  ( (tuple2!25549 (_1!15192 tuple3!3894) (_2!15192 (InoxSet Context!3918))) )
))
(declare-datatypes ((List!26295 0))(
  ( (Nil!26201) (Cons!26201 (h!31602 tuple2!25548) (t!199710 List!26295)) )
))
(declare-datatypes ((array!10540 0))(
  ( (array!10541 (arr!4686 (Array (_ BitVec 32) List!26295)) (size!20467 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6098 0))(
  ( (LongMapFixedSize!6099 (defaultEntry!3414 Int) (mask!7608 (_ BitVec 32)) (extraKeys!3297 (_ BitVec 32)) (zeroValue!3307 List!26295) (minValue!3307 List!26295) (_size!6145 (_ BitVec 32)) (_keys!3346 array!10538) (_values!3329 array!10540) (_vacant!3110 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12013 0))(
  ( (Cell!12014 (v!29785 LongMapFixedSize!6098)) )
))
(declare-datatypes ((MutLongMap!3049 0))(
  ( (LongMap!3049 (underlying!6299 Cell!12013)) (MutLongMapExt!3048 (__x!17373 Int)) )
))
(declare-datatypes ((Cell!12015 0))(
  ( (Cell!12016 (v!29786 MutLongMap!3049)) )
))
(declare-datatypes ((Hashable!2959 0))(
  ( (HashableExt!2958 (__x!17374 Int)) )
))
(declare-datatypes ((MutableMap!2959 0))(
  ( (MutableMapExt!2958 (__x!17375 Int)) (HashMap!2959 (underlying!6300 Cell!12015) (hashF!4882 Hashable!2959) (_size!6146 (_ BitVec 32)) (defaultValue!3121 Int)) )
))
(declare-datatypes ((CacheDown!1964 0))(
  ( (CacheDown!1965 (cache!3340 MutableMap!2959)) )
))
(declare-fun cacheDown!839 () CacheDown!1964)

(declare-fun e!1424922 () Bool)

(declare-fun inv!35578 (CacheDown!1964) Bool)

(assert (=> start!217464 (and (inv!35578 cacheDown!839) e!1424922)))

(declare-fun context!86 () Context!3918)

(declare-fun e!1424931 () Bool)

(declare-fun inv!35579 (Context!3918) Bool)

(assert (=> start!217464 (and (inv!35579 context!86) e!1424931)))

(assert (=> start!217464 tp_is_empty!10047))

(declare-fun b!2229632 () Bool)

(declare-fun tp!698137 () Bool)

(assert (=> b!2229632 (= e!1424931 tp!698137)))

(declare-fun b!2229633 () Bool)

(declare-fun tp!698142 () Bool)

(declare-fun tp!698141 () Bool)

(assert (=> b!2229633 (= e!1424929 (and tp!698142 tp!698141))))

(declare-fun b!2229634 () Bool)

(declare-fun lt!830501 () MutLongMap!3049)

(assert (=> b!2229634 (= e!1424925 (and e!1424932 ((_ is LongMap!3049) lt!830501)))))

(assert (=> b!2229634 (= lt!830501 (v!29786 (underlying!6300 (cache!3340 cacheDown!839))))))

(declare-fun b!2229635 () Bool)

(declare-fun tp!698135 () Bool)

(declare-fun tp!698136 () Bool)

(assert (=> b!2229635 (= e!1424929 (and tp!698135 tp!698136))))

(declare-fun b!2229636 () Bool)

(declare-fun e!1424924 () Bool)

(declare-fun tp!698133 () Bool)

(assert (=> b!2229636 (= e!1424924 (and tp!698133 mapRes!14357))))

(declare-fun condMapEmpty!14357 () Bool)

(declare-fun mapDefault!14357 () List!26295)

(assert (=> b!2229636 (= condMapEmpty!14357 (= (arr!4686 (_values!3329 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26295)) mapDefault!14357)))))

(declare-fun tp!698138 () Bool)

(declare-fun e!1424928 () Bool)

(declare-fun tp!698131 () Bool)

(declare-fun array_inv!3363 (array!10538) Bool)

(declare-fun array_inv!3364 (array!10540) Bool)

(assert (=> b!2229637 (= e!1424928 (and tp!698139 tp!698131 tp!698138 (array_inv!3363 (_keys!3346 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839))))))) (array_inv!3364 (_values!3329 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839))))))) e!1424924))))

(declare-fun b!2229638 () Bool)

(assert (=> b!2229638 (= e!1424922 e!1424923)))

(declare-fun b!2229639 () Bool)

(declare-fun res!955218 () Bool)

(assert (=> b!2229639 (=> (not res!955218) (not e!1424927))))

(declare-datatypes ((Option!5098 0))(
  ( (None!5097) (Some!5097 (v!29787 (InoxSet Context!3918))) )
))
(declare-fun get!7901 (CacheDown!1964 Regex!6411 Context!3918 C!12968) Option!5098)

(assert (=> b!2229639 (= res!955218 (not ((_ is Some!5097) (get!7901 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2229640 () Bool)

(assert (=> b!2229640 (= e!1424927 (not (validRegex!2386 (regTwo!13334 expr!64))))))

(declare-fun b!2229641 () Bool)

(assert (=> b!2229641 (= e!1424930 e!1424928)))

(declare-fun b!2229642 () Bool)

(declare-fun res!955220 () Bool)

(assert (=> b!2229642 (=> (not res!955220) (not e!1424927))))

(declare-fun nullable!1760 (Regex!6411) Bool)

(assert (=> b!2229642 (= res!955220 (nullable!1760 (regOne!13334 expr!64)))))

(declare-fun mapNonEmpty!14357 () Bool)

(declare-fun tp!698132 () Bool)

(declare-fun tp!698140 () Bool)

(assert (=> mapNonEmpty!14357 (= mapRes!14357 (and tp!698132 tp!698140))))

(declare-fun mapValue!14357 () List!26295)

(declare-fun mapKey!14357 () (_ BitVec 32))

(declare-fun mapRest!14357 () (Array (_ BitVec 32) List!26295))

(assert (=> mapNonEmpty!14357 (= (arr!4686 (_values!3329 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839))))))) (store mapRest!14357 mapKey!14357 mapValue!14357))))

(assert (= (and start!217464 res!955221) b!2229639))

(assert (= (and b!2229639 res!955218) b!2229627))

(assert (= (and b!2229627 res!955219) b!2229642))

(assert (= (and b!2229642 res!955220) b!2229640))

(assert (= (and start!217464 ((_ is ElementMatch!6411) expr!64)) b!2229628))

(assert (= (and start!217464 ((_ is Concat!10749) expr!64)) b!2229633))

(assert (= (and start!217464 ((_ is Star!6411) expr!64)) b!2229630))

(assert (= (and start!217464 ((_ is Union!6411) expr!64)) b!2229635))

(assert (= (and b!2229636 condMapEmpty!14357) mapIsEmpty!14357))

(assert (= (and b!2229636 (not condMapEmpty!14357)) mapNonEmpty!14357))

(assert (= b!2229637 b!2229636))

(assert (= b!2229641 b!2229637))

(assert (= b!2229629 b!2229641))

(assert (= (and b!2229634 ((_ is LongMap!3049) (v!29786 (underlying!6300 (cache!3340 cacheDown!839))))) b!2229629))

(assert (= b!2229631 b!2229634))

(assert (= (and b!2229638 ((_ is HashMap!2959) (cache!3340 cacheDown!839))) b!2229631))

(assert (= start!217464 b!2229638))

(assert (= start!217464 b!2229632))

(declare-fun m!2667039 () Bool)

(assert (=> mapNonEmpty!14357 m!2667039))

(declare-fun m!2667041 () Bool)

(assert (=> start!217464 m!2667041))

(declare-fun m!2667043 () Bool)

(assert (=> start!217464 m!2667043))

(declare-fun m!2667045 () Bool)

(assert (=> start!217464 m!2667045))

(declare-fun m!2667047 () Bool)

(assert (=> b!2229640 m!2667047))

(declare-fun m!2667049 () Bool)

(assert (=> b!2229639 m!2667049))

(declare-fun m!2667051 () Bool)

(assert (=> b!2229642 m!2667051))

(declare-fun m!2667053 () Bool)

(assert (=> b!2229637 m!2667053))

(declare-fun m!2667055 () Bool)

(assert (=> b!2229637 m!2667055))

(check-sat (not b!2229636) (not b!2229630) (not b!2229632) (not b_next!65363) (not b!2229633) (not b!2229635) (not start!217464) (not b!2229637) (not b!2229639) (not b_next!65361) b_and!174645 (not mapNonEmpty!14357) (not b!2229642) b_and!174647 tp_is_empty!10047 (not b!2229640))
(check-sat b_and!174647 b_and!174645 (not b_next!65361) (not b_next!65363))
(get-model)

(declare-fun d!664883 () Bool)

(declare-fun e!1424935 () Bool)

(assert (=> d!664883 e!1424935))

(declare-fun res!955224 () Bool)

(assert (=> d!664883 (=> res!955224 e!1424935)))

(declare-fun lt!830504 () Option!5098)

(declare-fun isEmpty!14892 (Option!5098) Bool)

(assert (=> d!664883 (= res!955224 (isEmpty!14892 lt!830504))))

(declare-fun choose!13123 (CacheDown!1964 Regex!6411 Context!3918 C!12968) Option!5098)

(assert (=> d!664883 (= lt!830504 (choose!13123 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!279 (MutableMap!2959) Bool)

(assert (=> d!664883 (validCacheMapDown!279 (cache!3340 cacheDown!839))))

(assert (=> d!664883 (= (get!7901 cacheDown!839 expr!64 context!86 a!1167) lt!830504)))

(declare-fun b!2229645 () Bool)

(declare-fun get!7902 (Option!5098) (InoxSet Context!3918))

(declare-fun derivationStepZipperDown!42 (Regex!6411 Context!3918 C!12968) (InoxSet Context!3918))

(assert (=> b!2229645 (= e!1424935 (= (get!7902 lt!830504) (derivationStepZipperDown!42 expr!64 context!86 a!1167)))))

(assert (= (and d!664883 (not res!955224)) b!2229645))

(declare-fun m!2667057 () Bool)

(assert (=> d!664883 m!2667057))

(declare-fun m!2667059 () Bool)

(assert (=> d!664883 m!2667059))

(declare-fun m!2667061 () Bool)

(assert (=> d!664883 m!2667061))

(declare-fun m!2667063 () Bool)

(assert (=> b!2229645 m!2667063))

(declare-fun m!2667065 () Bool)

(assert (=> b!2229645 m!2667065))

(assert (=> b!2229639 d!664883))

(declare-fun d!664885 () Bool)

(declare-fun res!955238 () Bool)

(declare-fun e!1424955 () Bool)

(assert (=> d!664885 (=> res!955238 e!1424955)))

(assert (=> d!664885 (= res!955238 ((_ is ElementMatch!6411) (regTwo!13334 expr!64)))))

(assert (=> d!664885 (= (validRegex!2386 (regTwo!13334 expr!64)) e!1424955)))

(declare-fun bm!133795 () Bool)

(declare-fun call!133800 () Bool)

(declare-fun c!355734 () Bool)

(assert (=> bm!133795 (= call!133800 (validRegex!2386 (ite c!355734 (regOne!13335 (regTwo!13334 expr!64)) (regOne!13334 (regTwo!13334 expr!64)))))))

(declare-fun b!2229664 () Bool)

(declare-fun e!1424953 () Bool)

(assert (=> b!2229664 (= e!1424955 e!1424953)))

(declare-fun c!355735 () Bool)

(assert (=> b!2229664 (= c!355735 ((_ is Star!6411) (regTwo!13334 expr!64)))))

(declare-fun b!2229665 () Bool)

(declare-fun e!1424954 () Bool)

(declare-fun call!133801 () Bool)

(assert (=> b!2229665 (= e!1424954 call!133801)))

(declare-fun b!2229666 () Bool)

(declare-fun e!1424952 () Bool)

(assert (=> b!2229666 (= e!1424952 call!133801)))

(declare-fun b!2229667 () Bool)

(declare-fun e!1424951 () Bool)

(assert (=> b!2229667 (= e!1424951 e!1424954)))

(declare-fun res!955239 () Bool)

(assert (=> b!2229667 (=> (not res!955239) (not e!1424954))))

(assert (=> b!2229667 (= res!955239 call!133800)))

(declare-fun b!2229668 () Bool)

(declare-fun e!1424956 () Bool)

(assert (=> b!2229668 (= e!1424953 e!1424956)))

(declare-fun res!955236 () Bool)

(assert (=> b!2229668 (= res!955236 (not (nullable!1760 (reg!6740 (regTwo!13334 expr!64)))))))

(assert (=> b!2229668 (=> (not res!955236) (not e!1424956))))

(declare-fun bm!133796 () Bool)

(declare-fun call!133802 () Bool)

(assert (=> bm!133796 (= call!133801 call!133802)))

(declare-fun b!2229669 () Bool)

(assert (=> b!2229669 (= e!1424956 call!133802)))

(declare-fun bm!133797 () Bool)

(assert (=> bm!133797 (= call!133802 (validRegex!2386 (ite c!355735 (reg!6740 (regTwo!13334 expr!64)) (ite c!355734 (regTwo!13335 (regTwo!13334 expr!64)) (regTwo!13334 (regTwo!13334 expr!64))))))))

(declare-fun b!2229670 () Bool)

(declare-fun res!955237 () Bool)

(assert (=> b!2229670 (=> res!955237 e!1424951)))

(assert (=> b!2229670 (= res!955237 (not ((_ is Concat!10749) (regTwo!13334 expr!64))))))

(declare-fun e!1424950 () Bool)

(assert (=> b!2229670 (= e!1424950 e!1424951)))

(declare-fun b!2229671 () Bool)

(assert (=> b!2229671 (= e!1424953 e!1424950)))

(assert (=> b!2229671 (= c!355734 ((_ is Union!6411) (regTwo!13334 expr!64)))))

(declare-fun b!2229672 () Bool)

(declare-fun res!955235 () Bool)

(assert (=> b!2229672 (=> (not res!955235) (not e!1424952))))

(assert (=> b!2229672 (= res!955235 call!133800)))

(assert (=> b!2229672 (= e!1424950 e!1424952)))

(assert (= (and d!664885 (not res!955238)) b!2229664))

(assert (= (and b!2229664 c!355735) b!2229668))

(assert (= (and b!2229664 (not c!355735)) b!2229671))

(assert (= (and b!2229668 res!955236) b!2229669))

(assert (= (and b!2229671 c!355734) b!2229672))

(assert (= (and b!2229671 (not c!355734)) b!2229670))

(assert (= (and b!2229672 res!955235) b!2229666))

(assert (= (and b!2229670 (not res!955237)) b!2229667))

(assert (= (and b!2229667 res!955239) b!2229665))

(assert (= (or b!2229666 b!2229665) bm!133796))

(assert (= (or b!2229672 b!2229667) bm!133795))

(assert (= (or b!2229669 bm!133796) bm!133797))

(declare-fun m!2667067 () Bool)

(assert (=> bm!133795 m!2667067))

(declare-fun m!2667069 () Bool)

(assert (=> b!2229668 m!2667069))

(declare-fun m!2667071 () Bool)

(assert (=> bm!133797 m!2667071))

(assert (=> b!2229640 d!664885))

(declare-fun d!664887 () Bool)

(assert (=> d!664887 (= (array_inv!3363 (_keys!3346 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839))))))) (bvsge (size!20466 (_keys!3346 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2229637 d!664887))

(declare-fun d!664889 () Bool)

(assert (=> d!664889 (= (array_inv!3364 (_values!3329 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839))))))) (bvsge (size!20467 (_values!3329 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2229637 d!664889))

(declare-fun d!664891 () Bool)

(declare-fun res!955243 () Bool)

(declare-fun e!1424962 () Bool)

(assert (=> d!664891 (=> res!955243 e!1424962)))

(assert (=> d!664891 (= res!955243 ((_ is ElementMatch!6411) expr!64))))

(assert (=> d!664891 (= (validRegex!2386 expr!64) e!1424962)))

(declare-fun bm!133798 () Bool)

(declare-fun call!133803 () Bool)

(declare-fun c!355736 () Bool)

(assert (=> bm!133798 (= call!133803 (validRegex!2386 (ite c!355736 (regOne!13335 expr!64) (regOne!13334 expr!64))))))

(declare-fun b!2229673 () Bool)

(declare-fun e!1424960 () Bool)

(assert (=> b!2229673 (= e!1424962 e!1424960)))

(declare-fun c!355737 () Bool)

(assert (=> b!2229673 (= c!355737 ((_ is Star!6411) expr!64))))

(declare-fun b!2229674 () Bool)

(declare-fun e!1424961 () Bool)

(declare-fun call!133804 () Bool)

(assert (=> b!2229674 (= e!1424961 call!133804)))

(declare-fun b!2229675 () Bool)

(declare-fun e!1424959 () Bool)

(assert (=> b!2229675 (= e!1424959 call!133804)))

(declare-fun b!2229676 () Bool)

(declare-fun e!1424958 () Bool)

(assert (=> b!2229676 (= e!1424958 e!1424961)))

(declare-fun res!955244 () Bool)

(assert (=> b!2229676 (=> (not res!955244) (not e!1424961))))

(assert (=> b!2229676 (= res!955244 call!133803)))

(declare-fun b!2229677 () Bool)

(declare-fun e!1424963 () Bool)

(assert (=> b!2229677 (= e!1424960 e!1424963)))

(declare-fun res!955241 () Bool)

(assert (=> b!2229677 (= res!955241 (not (nullable!1760 (reg!6740 expr!64))))))

(assert (=> b!2229677 (=> (not res!955241) (not e!1424963))))

(declare-fun bm!133799 () Bool)

(declare-fun call!133805 () Bool)

(assert (=> bm!133799 (= call!133804 call!133805)))

(declare-fun b!2229678 () Bool)

(assert (=> b!2229678 (= e!1424963 call!133805)))

(declare-fun bm!133800 () Bool)

(assert (=> bm!133800 (= call!133805 (validRegex!2386 (ite c!355737 (reg!6740 expr!64) (ite c!355736 (regTwo!13335 expr!64) (regTwo!13334 expr!64)))))))

(declare-fun b!2229679 () Bool)

(declare-fun res!955242 () Bool)

(assert (=> b!2229679 (=> res!955242 e!1424958)))

(assert (=> b!2229679 (= res!955242 (not ((_ is Concat!10749) expr!64)))))

(declare-fun e!1424957 () Bool)

(assert (=> b!2229679 (= e!1424957 e!1424958)))

(declare-fun b!2229680 () Bool)

(assert (=> b!2229680 (= e!1424960 e!1424957)))

(assert (=> b!2229680 (= c!355736 ((_ is Union!6411) expr!64))))

(declare-fun b!2229681 () Bool)

(declare-fun res!955240 () Bool)

(assert (=> b!2229681 (=> (not res!955240) (not e!1424959))))

(assert (=> b!2229681 (= res!955240 call!133803)))

(assert (=> b!2229681 (= e!1424957 e!1424959)))

(assert (= (and d!664891 (not res!955243)) b!2229673))

(assert (= (and b!2229673 c!355737) b!2229677))

(assert (= (and b!2229673 (not c!355737)) b!2229680))

(assert (= (and b!2229677 res!955241) b!2229678))

(assert (= (and b!2229680 c!355736) b!2229681))

(assert (= (and b!2229680 (not c!355736)) b!2229679))

(assert (= (and b!2229681 res!955240) b!2229675))

(assert (= (and b!2229679 (not res!955242)) b!2229676))

(assert (= (and b!2229676 res!955244) b!2229674))

(assert (= (or b!2229675 b!2229674) bm!133799))

(assert (= (or b!2229681 b!2229676) bm!133798))

(assert (= (or b!2229678 bm!133799) bm!133800))

(declare-fun m!2667073 () Bool)

(assert (=> bm!133798 m!2667073))

(declare-fun m!2667075 () Bool)

(assert (=> b!2229677 m!2667075))

(declare-fun m!2667077 () Bool)

(assert (=> bm!133800 m!2667077))

(assert (=> start!217464 d!664891))

(declare-fun d!664893 () Bool)

(declare-fun res!955247 () Bool)

(declare-fun e!1424966 () Bool)

(assert (=> d!664893 (=> (not res!955247) (not e!1424966))))

(assert (=> d!664893 (= res!955247 ((_ is HashMap!2959) (cache!3340 cacheDown!839)))))

(assert (=> d!664893 (= (inv!35578 cacheDown!839) e!1424966)))

(declare-fun b!2229684 () Bool)

(assert (=> b!2229684 (= e!1424966 (validCacheMapDown!279 (cache!3340 cacheDown!839)))))

(assert (= (and d!664893 res!955247) b!2229684))

(assert (=> b!2229684 m!2667061))

(assert (=> start!217464 d!664893))

(declare-fun d!664895 () Bool)

(declare-fun lambda!84263 () Int)

(declare-fun forall!5358 (List!26294 Int) Bool)

(assert (=> d!664895 (= (inv!35579 context!86) (forall!5358 (exprs!2459 context!86) lambda!84263))))

(declare-fun bs!453768 () Bool)

(assert (= bs!453768 d!664895))

(declare-fun m!2667079 () Bool)

(assert (=> bs!453768 m!2667079))

(assert (=> start!217464 d!664895))

(declare-fun d!664897 () Bool)

(declare-fun nullableFct!412 (Regex!6411) Bool)

(assert (=> d!664897 (= (nullable!1760 (regOne!13334 expr!64)) (nullableFct!412 (regOne!13334 expr!64)))))

(declare-fun bs!453769 () Bool)

(assert (= bs!453769 d!664897))

(declare-fun m!2667081 () Bool)

(assert (=> bs!453769 m!2667081))

(assert (=> b!2229642 d!664897))

(declare-fun b!2229698 () Bool)

(declare-fun e!1424969 () Bool)

(declare-fun tp!698155 () Bool)

(declare-fun tp!698156 () Bool)

(assert (=> b!2229698 (= e!1424969 (and tp!698155 tp!698156))))

(declare-fun b!2229695 () Bool)

(assert (=> b!2229695 (= e!1424969 tp_is_empty!10047)))

(assert (=> b!2229635 (= tp!698135 e!1424969)))

(declare-fun b!2229696 () Bool)

(declare-fun tp!698158 () Bool)

(declare-fun tp!698157 () Bool)

(assert (=> b!2229696 (= e!1424969 (and tp!698158 tp!698157))))

(declare-fun b!2229697 () Bool)

(declare-fun tp!698154 () Bool)

(assert (=> b!2229697 (= e!1424969 tp!698154)))

(assert (= (and b!2229635 ((_ is ElementMatch!6411) (regOne!13335 expr!64))) b!2229695))

(assert (= (and b!2229635 ((_ is Concat!10749) (regOne!13335 expr!64))) b!2229696))

(assert (= (and b!2229635 ((_ is Star!6411) (regOne!13335 expr!64))) b!2229697))

(assert (= (and b!2229635 ((_ is Union!6411) (regOne!13335 expr!64))) b!2229698))

(declare-fun b!2229702 () Bool)

(declare-fun e!1424970 () Bool)

(declare-fun tp!698160 () Bool)

(declare-fun tp!698161 () Bool)

(assert (=> b!2229702 (= e!1424970 (and tp!698160 tp!698161))))

(declare-fun b!2229699 () Bool)

(assert (=> b!2229699 (= e!1424970 tp_is_empty!10047)))

(assert (=> b!2229635 (= tp!698136 e!1424970)))

(declare-fun b!2229700 () Bool)

(declare-fun tp!698163 () Bool)

(declare-fun tp!698162 () Bool)

(assert (=> b!2229700 (= e!1424970 (and tp!698163 tp!698162))))

(declare-fun b!2229701 () Bool)

(declare-fun tp!698159 () Bool)

(assert (=> b!2229701 (= e!1424970 tp!698159)))

(assert (= (and b!2229635 ((_ is ElementMatch!6411) (regTwo!13335 expr!64))) b!2229699))

(assert (= (and b!2229635 ((_ is Concat!10749) (regTwo!13335 expr!64))) b!2229700))

(assert (= (and b!2229635 ((_ is Star!6411) (regTwo!13335 expr!64))) b!2229701))

(assert (= (and b!2229635 ((_ is Union!6411) (regTwo!13335 expr!64))) b!2229702))

(declare-fun b!2229706 () Bool)

(declare-fun e!1424971 () Bool)

(declare-fun tp!698165 () Bool)

(declare-fun tp!698166 () Bool)

(assert (=> b!2229706 (= e!1424971 (and tp!698165 tp!698166))))

(declare-fun b!2229703 () Bool)

(assert (=> b!2229703 (= e!1424971 tp_is_empty!10047)))

(assert (=> b!2229630 (= tp!698134 e!1424971)))

(declare-fun b!2229704 () Bool)

(declare-fun tp!698168 () Bool)

(declare-fun tp!698167 () Bool)

(assert (=> b!2229704 (= e!1424971 (and tp!698168 tp!698167))))

(declare-fun b!2229705 () Bool)

(declare-fun tp!698164 () Bool)

(assert (=> b!2229705 (= e!1424971 tp!698164)))

(assert (= (and b!2229630 ((_ is ElementMatch!6411) (reg!6740 expr!64))) b!2229703))

(assert (= (and b!2229630 ((_ is Concat!10749) (reg!6740 expr!64))) b!2229704))

(assert (= (and b!2229630 ((_ is Star!6411) (reg!6740 expr!64))) b!2229705))

(assert (= (and b!2229630 ((_ is Union!6411) (reg!6740 expr!64))) b!2229706))

(declare-fun setIsEmpty!20020 () Bool)

(declare-fun setRes!20020 () Bool)

(assert (=> setIsEmpty!20020 setRes!20020))

(declare-fun b!2229715 () Bool)

(declare-fun e!1424979 () Bool)

(declare-fun tp!698181 () Bool)

(assert (=> b!2229715 (= e!1424979 tp!698181)))

(declare-fun tp!698179 () Bool)

(declare-fun tp!698180 () Bool)

(declare-fun e!1424980 () Bool)

(declare-fun b!2229716 () Bool)

(assert (=> b!2229716 (= e!1424980 (and tp!698179 (inv!35579 (_2!15191 (_1!15192 (h!31602 mapDefault!14357)))) e!1424979 tp_is_empty!10047 setRes!20020 tp!698180))))

(declare-fun condSetEmpty!20020 () Bool)

(assert (=> b!2229716 (= condSetEmpty!20020 (= (_2!15192 (h!31602 mapDefault!14357)) ((as const (Array Context!3918 Bool)) false)))))

(declare-fun b!2229717 () Bool)

(declare-fun e!1424978 () Bool)

(declare-fun tp!698183 () Bool)

(assert (=> b!2229717 (= e!1424978 tp!698183)))

(assert (=> b!2229636 (= tp!698133 e!1424980)))

(declare-fun tp!698182 () Bool)

(declare-fun setElem!20020 () Context!3918)

(declare-fun setNonEmpty!20020 () Bool)

(assert (=> setNonEmpty!20020 (= setRes!20020 (and tp!698182 (inv!35579 setElem!20020) e!1424978))))

(declare-fun setRest!20020 () (InoxSet Context!3918))

(assert (=> setNonEmpty!20020 (= (_2!15192 (h!31602 mapDefault!14357)) ((_ map or) (store ((as const (Array Context!3918 Bool)) false) setElem!20020 true) setRest!20020))))

(assert (= b!2229716 b!2229715))

(assert (= (and b!2229716 condSetEmpty!20020) setIsEmpty!20020))

(assert (= (and b!2229716 (not condSetEmpty!20020)) setNonEmpty!20020))

(assert (= setNonEmpty!20020 b!2229717))

(assert (= (and b!2229636 ((_ is Cons!26201) mapDefault!14357)) b!2229716))

(declare-fun m!2667083 () Bool)

(assert (=> b!2229716 m!2667083))

(declare-fun m!2667085 () Bool)

(assert (=> setNonEmpty!20020 m!2667085))

(declare-fun setIsEmpty!20021 () Bool)

(declare-fun setRes!20021 () Bool)

(assert (=> setIsEmpty!20021 setRes!20021))

(declare-fun b!2229718 () Bool)

(declare-fun e!1424982 () Bool)

(declare-fun tp!698186 () Bool)

(assert (=> b!2229718 (= e!1424982 tp!698186)))

(declare-fun tp!698184 () Bool)

(declare-fun b!2229719 () Bool)

(declare-fun tp!698185 () Bool)

(declare-fun e!1424983 () Bool)

(assert (=> b!2229719 (= e!1424983 (and tp!698184 (inv!35579 (_2!15191 (_1!15192 (h!31602 (zeroValue!3307 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839)))))))))) e!1424982 tp_is_empty!10047 setRes!20021 tp!698185))))

(declare-fun condSetEmpty!20021 () Bool)

(assert (=> b!2229719 (= condSetEmpty!20021 (= (_2!15192 (h!31602 (zeroValue!3307 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839)))))))) ((as const (Array Context!3918 Bool)) false)))))

(declare-fun b!2229720 () Bool)

(declare-fun e!1424981 () Bool)

(declare-fun tp!698188 () Bool)

(assert (=> b!2229720 (= e!1424981 tp!698188)))

(assert (=> b!2229637 (= tp!698131 e!1424983)))

(declare-fun tp!698187 () Bool)

(declare-fun setElem!20021 () Context!3918)

(declare-fun setNonEmpty!20021 () Bool)

(assert (=> setNonEmpty!20021 (= setRes!20021 (and tp!698187 (inv!35579 setElem!20021) e!1424981))))

(declare-fun setRest!20021 () (InoxSet Context!3918))

(assert (=> setNonEmpty!20021 (= (_2!15192 (h!31602 (zeroValue!3307 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3918 Bool)) false) setElem!20021 true) setRest!20021))))

(assert (= b!2229719 b!2229718))

(assert (= (and b!2229719 condSetEmpty!20021) setIsEmpty!20021))

(assert (= (and b!2229719 (not condSetEmpty!20021)) setNonEmpty!20021))

(assert (= setNonEmpty!20021 b!2229720))

(assert (= (and b!2229637 ((_ is Cons!26201) (zeroValue!3307 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839)))))))) b!2229719))

(declare-fun m!2667087 () Bool)

(assert (=> b!2229719 m!2667087))

(declare-fun m!2667089 () Bool)

(assert (=> setNonEmpty!20021 m!2667089))

(declare-fun setIsEmpty!20022 () Bool)

(declare-fun setRes!20022 () Bool)

(assert (=> setIsEmpty!20022 setRes!20022))

(declare-fun b!2229721 () Bool)

(declare-fun e!1424985 () Bool)

(declare-fun tp!698191 () Bool)

(assert (=> b!2229721 (= e!1424985 tp!698191)))

(declare-fun e!1424986 () Bool)

(declare-fun tp!698189 () Bool)

(declare-fun b!2229722 () Bool)

(declare-fun tp!698190 () Bool)

(assert (=> b!2229722 (= e!1424986 (and tp!698189 (inv!35579 (_2!15191 (_1!15192 (h!31602 (minValue!3307 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839)))))))))) e!1424985 tp_is_empty!10047 setRes!20022 tp!698190))))

(declare-fun condSetEmpty!20022 () Bool)

(assert (=> b!2229722 (= condSetEmpty!20022 (= (_2!15192 (h!31602 (minValue!3307 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839)))))))) ((as const (Array Context!3918 Bool)) false)))))

(declare-fun b!2229723 () Bool)

(declare-fun e!1424984 () Bool)

(declare-fun tp!698193 () Bool)

(assert (=> b!2229723 (= e!1424984 tp!698193)))

(assert (=> b!2229637 (= tp!698138 e!1424986)))

(declare-fun tp!698192 () Bool)

(declare-fun setElem!20022 () Context!3918)

(declare-fun setNonEmpty!20022 () Bool)

(assert (=> setNonEmpty!20022 (= setRes!20022 (and tp!698192 (inv!35579 setElem!20022) e!1424984))))

(declare-fun setRest!20022 () (InoxSet Context!3918))

(assert (=> setNonEmpty!20022 (= (_2!15192 (h!31602 (minValue!3307 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3918 Bool)) false) setElem!20022 true) setRest!20022))))

(assert (= b!2229722 b!2229721))

(assert (= (and b!2229722 condSetEmpty!20022) setIsEmpty!20022))

(assert (= (and b!2229722 (not condSetEmpty!20022)) setNonEmpty!20022))

(assert (= setNonEmpty!20022 b!2229723))

(assert (= (and b!2229637 ((_ is Cons!26201) (minValue!3307 (v!29785 (underlying!6299 (v!29786 (underlying!6300 (cache!3340 cacheDown!839)))))))) b!2229722))

(declare-fun m!2667091 () Bool)

(assert (=> b!2229722 m!2667091))

(declare-fun m!2667093 () Bool)

(assert (=> setNonEmpty!20022 m!2667093))

(declare-fun mapIsEmpty!14360 () Bool)

(declare-fun mapRes!14360 () Bool)

(assert (=> mapIsEmpty!14360 mapRes!14360))

(declare-fun tp!698217 () Bool)

(declare-fun setElem!20027 () Context!3918)

(declare-fun setRes!20028 () Bool)

(declare-fun setNonEmpty!20027 () Bool)

(declare-fun e!1425001 () Bool)

(assert (=> setNonEmpty!20027 (= setRes!20028 (and tp!698217 (inv!35579 setElem!20027) e!1425001))))

(declare-fun mapDefault!14360 () List!26295)

(declare-fun setRest!20027 () (InoxSet Context!3918))

(assert (=> setNonEmpty!20027 (= (_2!15192 (h!31602 mapDefault!14360)) ((_ map or) (store ((as const (Array Context!3918 Bool)) false) setElem!20027 true) setRest!20027))))

(declare-fun condMapEmpty!14360 () Bool)

(assert (=> mapNonEmpty!14357 (= condMapEmpty!14360 (= mapRest!14357 ((as const (Array (_ BitVec 32) List!26295)) mapDefault!14360)))))

(declare-fun e!1425004 () Bool)

(assert (=> mapNonEmpty!14357 (= tp!698132 (and e!1425004 mapRes!14360))))

(declare-fun e!1425002 () Bool)

(declare-fun tp!698226 () Bool)

(declare-fun tp!698224 () Bool)

(declare-fun b!2229738 () Bool)

(assert (=> b!2229738 (= e!1425004 (and tp!698226 (inv!35579 (_2!15191 (_1!15192 (h!31602 mapDefault!14360)))) e!1425002 tp_is_empty!10047 setRes!20028 tp!698224))))

(declare-fun condSetEmpty!20027 () Bool)

(assert (=> b!2229738 (= condSetEmpty!20027 (= (_2!15192 (h!31602 mapDefault!14360)) ((as const (Array Context!3918 Bool)) false)))))

(declare-fun b!2229739 () Bool)

(declare-fun tp!698222 () Bool)

(assert (=> b!2229739 (= e!1425002 tp!698222)))

(declare-fun b!2229740 () Bool)

(declare-fun e!1425003 () Bool)

(declare-fun tp!698223 () Bool)

(assert (=> b!2229740 (= e!1425003 tp!698223)))

(declare-fun setNonEmpty!20028 () Bool)

(declare-fun tp!698221 () Bool)

(declare-fun setElem!20028 () Context!3918)

(declare-fun e!1425000 () Bool)

(declare-fun setRes!20027 () Bool)

(assert (=> setNonEmpty!20028 (= setRes!20027 (and tp!698221 (inv!35579 setElem!20028) e!1425000))))

(declare-fun mapValue!14360 () List!26295)

(declare-fun setRest!20028 () (InoxSet Context!3918))

(assert (=> setNonEmpty!20028 (= (_2!15192 (h!31602 mapValue!14360)) ((_ map or) (store ((as const (Array Context!3918 Bool)) false) setElem!20028 true) setRest!20028))))

(declare-fun setIsEmpty!20027 () Bool)

(assert (=> setIsEmpty!20027 setRes!20028))

(declare-fun b!2229741 () Bool)

(declare-fun tp!698219 () Bool)

(assert (=> b!2229741 (= e!1425000 tp!698219)))

(declare-fun tp!698218 () Bool)

(declare-fun e!1424999 () Bool)

(declare-fun b!2229742 () Bool)

(declare-fun tp!698220 () Bool)

(assert (=> b!2229742 (= e!1424999 (and tp!698218 (inv!35579 (_2!15191 (_1!15192 (h!31602 mapValue!14360)))) e!1425003 tp_is_empty!10047 setRes!20027 tp!698220))))

(declare-fun condSetEmpty!20028 () Bool)

(assert (=> b!2229742 (= condSetEmpty!20028 (= (_2!15192 (h!31602 mapValue!14360)) ((as const (Array Context!3918 Bool)) false)))))

(declare-fun setIsEmpty!20028 () Bool)

(assert (=> setIsEmpty!20028 setRes!20027))

(declare-fun b!2229743 () Bool)

(declare-fun tp!698225 () Bool)

(assert (=> b!2229743 (= e!1425001 tp!698225)))

(declare-fun mapNonEmpty!14360 () Bool)

(declare-fun tp!698216 () Bool)

(assert (=> mapNonEmpty!14360 (= mapRes!14360 (and tp!698216 e!1424999))))

(declare-fun mapKey!14360 () (_ BitVec 32))

(declare-fun mapRest!14360 () (Array (_ BitVec 32) List!26295))

(assert (=> mapNonEmpty!14360 (= mapRest!14357 (store mapRest!14360 mapKey!14360 mapValue!14360))))

(assert (= (and mapNonEmpty!14357 condMapEmpty!14360) mapIsEmpty!14360))

(assert (= (and mapNonEmpty!14357 (not condMapEmpty!14360)) mapNonEmpty!14360))

(assert (= b!2229742 b!2229740))

(assert (= (and b!2229742 condSetEmpty!20028) setIsEmpty!20028))

(assert (= (and b!2229742 (not condSetEmpty!20028)) setNonEmpty!20028))

(assert (= setNonEmpty!20028 b!2229741))

(assert (= (and mapNonEmpty!14360 ((_ is Cons!26201) mapValue!14360)) b!2229742))

(assert (= b!2229738 b!2229739))

(assert (= (and b!2229738 condSetEmpty!20027) setIsEmpty!20027))

(assert (= (and b!2229738 (not condSetEmpty!20027)) setNonEmpty!20027))

(assert (= setNonEmpty!20027 b!2229743))

(assert (= (and mapNonEmpty!14357 ((_ is Cons!26201) mapDefault!14360)) b!2229738))

(declare-fun m!2667095 () Bool)

(assert (=> mapNonEmpty!14360 m!2667095))

(declare-fun m!2667097 () Bool)

(assert (=> setNonEmpty!20027 m!2667097))

(declare-fun m!2667099 () Bool)

(assert (=> b!2229742 m!2667099))

(declare-fun m!2667101 () Bool)

(assert (=> setNonEmpty!20028 m!2667101))

(declare-fun m!2667103 () Bool)

(assert (=> b!2229738 m!2667103))

(declare-fun setIsEmpty!20029 () Bool)

(declare-fun setRes!20029 () Bool)

(assert (=> setIsEmpty!20029 setRes!20029))

(declare-fun b!2229744 () Bool)

(declare-fun e!1425006 () Bool)

(declare-fun tp!698229 () Bool)

(assert (=> b!2229744 (= e!1425006 tp!698229)))

(declare-fun e!1425007 () Bool)

(declare-fun b!2229745 () Bool)

(declare-fun tp!698228 () Bool)

(declare-fun tp!698227 () Bool)

(assert (=> b!2229745 (= e!1425007 (and tp!698227 (inv!35579 (_2!15191 (_1!15192 (h!31602 mapValue!14357)))) e!1425006 tp_is_empty!10047 setRes!20029 tp!698228))))

(declare-fun condSetEmpty!20029 () Bool)

(assert (=> b!2229745 (= condSetEmpty!20029 (= (_2!15192 (h!31602 mapValue!14357)) ((as const (Array Context!3918 Bool)) false)))))

(declare-fun b!2229746 () Bool)

(declare-fun e!1425005 () Bool)

(declare-fun tp!698231 () Bool)

(assert (=> b!2229746 (= e!1425005 tp!698231)))

(assert (=> mapNonEmpty!14357 (= tp!698140 e!1425007)))

(declare-fun tp!698230 () Bool)

(declare-fun setElem!20029 () Context!3918)

(declare-fun setNonEmpty!20029 () Bool)

(assert (=> setNonEmpty!20029 (= setRes!20029 (and tp!698230 (inv!35579 setElem!20029) e!1425005))))

(declare-fun setRest!20029 () (InoxSet Context!3918))

(assert (=> setNonEmpty!20029 (= (_2!15192 (h!31602 mapValue!14357)) ((_ map or) (store ((as const (Array Context!3918 Bool)) false) setElem!20029 true) setRest!20029))))

(assert (= b!2229745 b!2229744))

(assert (= (and b!2229745 condSetEmpty!20029) setIsEmpty!20029))

(assert (= (and b!2229745 (not condSetEmpty!20029)) setNonEmpty!20029))

(assert (= setNonEmpty!20029 b!2229746))

(assert (= (and mapNonEmpty!14357 ((_ is Cons!26201) mapValue!14357)) b!2229745))

(declare-fun m!2667105 () Bool)

(assert (=> b!2229745 m!2667105))

(declare-fun m!2667107 () Bool)

(assert (=> setNonEmpty!20029 m!2667107))

(declare-fun b!2229751 () Bool)

(declare-fun e!1425010 () Bool)

(declare-fun tp!698236 () Bool)

(declare-fun tp!698237 () Bool)

(assert (=> b!2229751 (= e!1425010 (and tp!698236 tp!698237))))

(assert (=> b!2229632 (= tp!698137 e!1425010)))

(assert (= (and b!2229632 ((_ is Cons!26200) (exprs!2459 context!86))) b!2229751))

(declare-fun b!2229755 () Bool)

(declare-fun e!1425011 () Bool)

(declare-fun tp!698239 () Bool)

(declare-fun tp!698240 () Bool)

(assert (=> b!2229755 (= e!1425011 (and tp!698239 tp!698240))))

(declare-fun b!2229752 () Bool)

(assert (=> b!2229752 (= e!1425011 tp_is_empty!10047)))

(assert (=> b!2229633 (= tp!698142 e!1425011)))

(declare-fun b!2229753 () Bool)

(declare-fun tp!698242 () Bool)

(declare-fun tp!698241 () Bool)

(assert (=> b!2229753 (= e!1425011 (and tp!698242 tp!698241))))

(declare-fun b!2229754 () Bool)

(declare-fun tp!698238 () Bool)

(assert (=> b!2229754 (= e!1425011 tp!698238)))

(assert (= (and b!2229633 ((_ is ElementMatch!6411) (regOne!13334 expr!64))) b!2229752))

(assert (= (and b!2229633 ((_ is Concat!10749) (regOne!13334 expr!64))) b!2229753))

(assert (= (and b!2229633 ((_ is Star!6411) (regOne!13334 expr!64))) b!2229754))

(assert (= (and b!2229633 ((_ is Union!6411) (regOne!13334 expr!64))) b!2229755))

(declare-fun b!2229759 () Bool)

(declare-fun e!1425012 () Bool)

(declare-fun tp!698244 () Bool)

(declare-fun tp!698245 () Bool)

(assert (=> b!2229759 (= e!1425012 (and tp!698244 tp!698245))))

(declare-fun b!2229756 () Bool)

(assert (=> b!2229756 (= e!1425012 tp_is_empty!10047)))

(assert (=> b!2229633 (= tp!698141 e!1425012)))

(declare-fun b!2229757 () Bool)

(declare-fun tp!698247 () Bool)

(declare-fun tp!698246 () Bool)

(assert (=> b!2229757 (= e!1425012 (and tp!698247 tp!698246))))

(declare-fun b!2229758 () Bool)

(declare-fun tp!698243 () Bool)

(assert (=> b!2229758 (= e!1425012 tp!698243)))

(assert (= (and b!2229633 ((_ is ElementMatch!6411) (regTwo!13334 expr!64))) b!2229756))

(assert (= (and b!2229633 ((_ is Concat!10749) (regTwo!13334 expr!64))) b!2229757))

(assert (= (and b!2229633 ((_ is Star!6411) (regTwo!13334 expr!64))) b!2229758))

(assert (= (and b!2229633 ((_ is Union!6411) (regTwo!13334 expr!64))) b!2229759))

(check-sat (not bm!133795) (not d!664895) (not b!2229755) (not setNonEmpty!20029) (not setNonEmpty!20028) b_and!174647 (not b!2229704) (not b!2229677) (not mapNonEmpty!14360) (not b!2229759) (not b!2229645) (not b_next!65363) (not b!2229739) (not setNonEmpty!20027) (not b!2229742) (not setNonEmpty!20021) (not b!2229706) (not b!2229751) (not b!2229684) (not b!2229701) (not setNonEmpty!20020) (not b!2229743) (not b!2229696) (not b!2229668) (not b!2229753) tp_is_empty!10047 (not b!2229744) (not b!2229715) (not b!2229746) (not b!2229718) (not bm!133798) (not b!2229740) (not b!2229757) (not d!664897) (not b!2229758) (not b!2229723) (not b!2229754) (not b!2229697) (not b!2229719) (not b!2229745) (not d!664883) (not b_next!65361) (not b!2229705) (not b!2229702) b_and!174645 (not b!2229722) (not b!2229721) (not b!2229720) (not b!2229738) (not b!2229700) (not b!2229741) (not b!2229716) (not bm!133797) (not b!2229698) (not bm!133800) (not setNonEmpty!20022) (not b!2229717))
(check-sat b_and!174647 b_and!174645 (not b_next!65361) (not b_next!65363))
