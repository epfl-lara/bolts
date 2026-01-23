; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217732 () Bool)

(assert start!217732)

(declare-fun b!2233657 () Bool)

(declare-fun b_free!64777 () Bool)

(declare-fun b_next!65481 () Bool)

(assert (=> b!2233657 (= b_free!64777 (not b_next!65481))))

(declare-fun tp!701177 () Bool)

(declare-fun b_and!174765 () Bool)

(assert (=> b!2233657 (= tp!701177 b_and!174765)))

(declare-fun b!2233651 () Bool)

(declare-fun b_free!64779 () Bool)

(declare-fun b_next!65483 () Bool)

(assert (=> b!2233651 (= b_free!64779 (not b_next!65483))))

(declare-fun tp!701169 () Bool)

(declare-fun b_and!174767 () Bool)

(assert (=> b!2233651 (= tp!701169 b_and!174767)))

(declare-fun mapNonEmpty!14480 () Bool)

(declare-fun mapRes!14480 () Bool)

(declare-fun tp!701164 () Bool)

(declare-fun tp!701166 () Bool)

(assert (=> mapNonEmpty!14480 (= mapRes!14480 (and tp!701164 tp!701166))))

(declare-datatypes ((C!13028 0))(
  ( (C!13029 (val!7562 Int)) )
))
(declare-datatypes ((Regex!6441 0))(
  ( (ElementMatch!6441 (c!356106 C!13028)) (Concat!10779 (regOne!13394 Regex!6441) (regTwo!13394 Regex!6441)) (EmptyExpr!6441) (Star!6441 (reg!6770 Regex!6441)) (EmptyLang!6441) (Union!6441 (regOne!13395 Regex!6441) (regTwo!13395 Regex!6441)) )
))
(declare-datatypes ((List!26354 0))(
  ( (Nil!26260) (Cons!26260 (h!31661 Regex!6441) (t!199774 List!26354)) )
))
(declare-datatypes ((Context!3978 0))(
  ( (Context!3979 (exprs!2489 List!26354)) )
))
(declare-datatypes ((tuple3!3954 0))(
  ( (tuple3!3955 (_1!15258 Regex!6441) (_2!15258 Context!3978) (_3!2447 C!13028)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25622 0))(
  ( (tuple2!25623 (_1!15259 tuple3!3954) (_2!15259 (InoxSet Context!3978))) )
))
(declare-datatypes ((List!26355 0))(
  ( (Nil!26261) (Cons!26261 (h!31662 tuple2!25622) (t!199775 List!26355)) )
))
(declare-fun mapValue!14480 () List!26355)

(declare-fun mapKey!14480 () (_ BitVec 32))

(declare-fun mapRest!14480 () (Array (_ BitVec 32) List!26355))

(declare-datatypes ((array!10678 0))(
  ( (array!10679 (arr!4745 (Array (_ BitVec 32) (_ BitVec 64))) (size!20526 (_ BitVec 32))) )
))
(declare-datatypes ((array!10680 0))(
  ( (array!10681 (arr!4746 (Array (_ BitVec 32) List!26355)) (size!20527 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6158 0))(
  ( (LongMapFixedSize!6159 (defaultEntry!3444 Int) (mask!7653 (_ BitVec 32)) (extraKeys!3327 (_ BitVec 32)) (zeroValue!3337 List!26355) (minValue!3337 List!26355) (_size!6205 (_ BitVec 32)) (_keys!3376 array!10678) (_values!3359 array!10680) (_vacant!3140 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12133 0))(
  ( (Cell!12134 (v!29861 LongMapFixedSize!6158)) )
))
(declare-datatypes ((MutLongMap!3079 0))(
  ( (LongMap!3079 (underlying!6359 Cell!12133)) (MutLongMapExt!3078 (__x!17463 Int)) )
))
(declare-datatypes ((Cell!12135 0))(
  ( (Cell!12136 (v!29862 MutLongMap!3079)) )
))
(declare-datatypes ((Hashable!2989 0))(
  ( (HashableExt!2988 (__x!17464 Int)) )
))
(declare-datatypes ((MutableMap!2989 0))(
  ( (MutableMapExt!2988 (__x!17465 Int)) (HashMap!2989 (underlying!6360 Cell!12135) (hashF!4912 Hashable!2989) (_size!6206 (_ BitVec 32)) (defaultValue!3151 Int)) )
))
(declare-datatypes ((CacheDown!2024 0))(
  ( (CacheDown!2025 (cache!3370 MutableMap!2989)) )
))
(declare-fun thiss!28822 () CacheDown!2024)

(assert (=> mapNonEmpty!14480 (= (arr!4746 (_values!3359 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822))))))) (store mapRest!14480 mapKey!14480 mapValue!14480))))

(declare-fun res!956135 () Bool)

(declare-fun e!1427509 () Bool)

(assert (=> start!217732 (=> (not res!956135) (not e!1427509))))

(declare-fun validCacheMapDown!296 (MutableMap!2989) Bool)

(assert (=> start!217732 (= res!956135 (validCacheMapDown!296 (cache!3370 thiss!28822)))))

(assert (=> start!217732 e!1427509))

(declare-fun tp_is_empty!10107 () Bool)

(assert (=> start!217732 tp_is_empty!10107))

(declare-fun condSetEmpty!20218 () Bool)

(declare-fun res!14291 () (InoxSet Context!3978))

(assert (=> start!217732 (= condSetEmpty!20218 (= res!14291 ((as const (Array Context!3978 Bool)) false)))))

(declare-fun setRes!20218 () Bool)

(assert (=> start!217732 setRes!20218))

(declare-fun ctx!56 () Context!3978)

(declare-fun e!1427517 () Bool)

(declare-fun inv!35671 (Context!3978) Bool)

(assert (=> start!217732 (and (inv!35671 ctx!56) e!1427517)))

(declare-fun e!1427518 () Bool)

(assert (=> start!217732 e!1427518))

(declare-fun e!1427513 () Bool)

(declare-fun inv!35672 (CacheDown!2024) Bool)

(assert (=> start!217732 (and (inv!35672 thiss!28822) e!1427513)))

(declare-fun b!2233646 () Bool)

(declare-fun tp!701175 () Bool)

(declare-fun tp!701170 () Bool)

(assert (=> b!2233646 (= e!1427518 (and tp!701175 tp!701170))))

(declare-fun b!2233647 () Bool)

(declare-fun tp!701171 () Bool)

(assert (=> b!2233647 (= e!1427518 tp!701171)))

(declare-fun mapIsEmpty!14480 () Bool)

(assert (=> mapIsEmpty!14480 mapRes!14480))

(declare-fun b!2233648 () Bool)

(assert (=> b!2233648 (= e!1427518 tp_is_empty!10107)))

(declare-fun b!2233649 () Bool)

(declare-fun e!1427510 () Bool)

(declare-fun tp!701173 () Bool)

(assert (=> b!2233649 (= e!1427510 tp!701173)))

(declare-fun b!2233650 () Bool)

(declare-fun e!1427515 () Bool)

(declare-fun e!1427516 () Bool)

(declare-fun lt!830761 () MutLongMap!3079)

(get-info :version)

(assert (=> b!2233650 (= e!1427515 (and e!1427516 ((_ is LongMap!3079) lt!830761)))))

(assert (=> b!2233650 (= lt!830761 (v!29862 (underlying!6360 (cache!3370 thiss!28822))))))

(declare-fun tp!701167 () Bool)

(declare-fun e!1427519 () Bool)

(declare-fun e!1427508 () Bool)

(declare-fun tp!701174 () Bool)

(declare-fun array_inv!3405 (array!10678) Bool)

(declare-fun array_inv!3406 (array!10680) Bool)

(assert (=> b!2233651 (= e!1427508 (and tp!701169 tp!701167 tp!701174 (array_inv!3405 (_keys!3376 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822))))))) (array_inv!3406 (_values!3359 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822))))))) e!1427519))))

(declare-fun tp!701165 () Bool)

(declare-fun setElem!20218 () Context!3978)

(declare-fun setNonEmpty!20218 () Bool)

(assert (=> setNonEmpty!20218 (= setRes!20218 (and tp!701165 (inv!35671 setElem!20218) e!1427510))))

(declare-fun setRest!20218 () (InoxSet Context!3978))

(assert (=> setNonEmpty!20218 (= res!14291 ((_ map or) (store ((as const (Array Context!3978 Bool)) false) setElem!20218 true) setRest!20218))))

(declare-fun b!2233652 () Bool)

(declare-fun e!1427514 () Bool)

(assert (=> b!2233652 (= e!1427514 e!1427508)))

(declare-fun b!2233653 () Bool)

(assert (=> b!2233653 (= e!1427516 e!1427514)))

(declare-fun setIsEmpty!20218 () Bool)

(assert (=> setIsEmpty!20218 setRes!20218))

(declare-fun b!2233654 () Bool)

(declare-fun res!956133 () Bool)

(assert (=> b!2233654 (=> (not res!956133) (not e!1427509))))

(declare-fun r!4773 () Regex!6441)

(declare-fun validRegex!2408 (Regex!6441) Bool)

(assert (=> b!2233654 (= res!956133 (validRegex!2408 r!4773))))

(declare-fun b!2233655 () Bool)

(declare-fun e!1427511 () Bool)

(assert (=> b!2233655 (= e!1427513 e!1427511)))

(declare-fun b!2233656 () Bool)

(assert (=> b!2233656 (= e!1427509 (not ((_ is HashMap!2989) (cache!3370 thiss!28822))))))

(declare-fun lambda!84350 () Int)

(declare-fun lt!830762 () tuple3!3954)

(declare-fun forall!5374 (List!26355 Int) Bool)

(declare-datatypes ((ListMap!811 0))(
  ( (ListMap!812 (toList!1334 List!26355)) )
))
(declare-fun map!5376 (MutableMap!2989) ListMap!811)

(declare-datatypes ((tuple2!25624 0))(
  ( (tuple2!25625 (_1!15260 Bool) (_2!15260 MutableMap!2989)) )
))
(declare-fun update!140 (MutableMap!2989 tuple3!3954 (InoxSet Context!3978)) tuple2!25624)

(assert (=> b!2233656 (forall!5374 (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291)))) lambda!84350)))

(declare-datatypes ((Unit!39160 0))(
  ( (Unit!39161) )
))
(declare-fun lt!830763 () Unit!39160)

(declare-fun lemmaUpdatePreservesForallPairs!20 (MutableMap!2989 tuple3!3954 (InoxSet Context!3978) Int) Unit!39160)

(assert (=> b!2233656 (= lt!830763 (lemmaUpdatePreservesForallPairs!20 (cache!3370 thiss!28822) lt!830762 res!14291 lambda!84350))))

(declare-fun a!1010 () C!13028)

(assert (=> b!2233656 (= lt!830762 (tuple3!3955 r!4773 ctx!56 a!1010))))

(assert (=> b!2233657 (= e!1427511 (and e!1427515 tp!701177))))

(declare-fun b!2233658 () Bool)

(declare-fun tp!701178 () Bool)

(assert (=> b!2233658 (= e!1427519 (and tp!701178 mapRes!14480))))

(declare-fun condMapEmpty!14480 () Bool)

(declare-fun mapDefault!14480 () List!26355)

(assert (=> b!2233658 (= condMapEmpty!14480 (= (arr!4746 (_values!3359 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26355)) mapDefault!14480)))))

(declare-fun b!2233659 () Bool)

(declare-fun tp!701176 () Bool)

(declare-fun tp!701168 () Bool)

(assert (=> b!2233659 (= e!1427518 (and tp!701176 tp!701168))))

(declare-fun b!2233660 () Bool)

(declare-fun res!956134 () Bool)

(assert (=> b!2233660 (=> (not res!956134) (not e!1427509))))

(declare-fun derivationStepZipperDown!56 (Regex!6441 Context!3978 C!13028) (InoxSet Context!3978))

(assert (=> b!2233660 (= res!956134 (= res!14291 (derivationStepZipperDown!56 r!4773 ctx!56 a!1010)))))

(declare-fun b!2233661 () Bool)

(declare-fun tp!701172 () Bool)

(assert (=> b!2233661 (= e!1427517 tp!701172)))

(assert (= (and start!217732 res!956135) b!2233654))

(assert (= (and b!2233654 res!956133) b!2233660))

(assert (= (and b!2233660 res!956134) b!2233656))

(assert (= (and start!217732 condSetEmpty!20218) setIsEmpty!20218))

(assert (= (and start!217732 (not condSetEmpty!20218)) setNonEmpty!20218))

(assert (= setNonEmpty!20218 b!2233649))

(assert (= start!217732 b!2233661))

(assert (= (and start!217732 ((_ is ElementMatch!6441) r!4773)) b!2233648))

(assert (= (and start!217732 ((_ is Concat!10779) r!4773)) b!2233646))

(assert (= (and start!217732 ((_ is Star!6441) r!4773)) b!2233647))

(assert (= (and start!217732 ((_ is Union!6441) r!4773)) b!2233659))

(assert (= (and b!2233658 condMapEmpty!14480) mapIsEmpty!14480))

(assert (= (and b!2233658 (not condMapEmpty!14480)) mapNonEmpty!14480))

(assert (= b!2233651 b!2233658))

(assert (= b!2233652 b!2233651))

(assert (= b!2233653 b!2233652))

(assert (= (and b!2233650 ((_ is LongMap!3079) (v!29862 (underlying!6360 (cache!3370 thiss!28822))))) b!2233653))

(assert (= b!2233657 b!2233650))

(assert (= (and b!2233655 ((_ is HashMap!2989) (cache!3370 thiss!28822))) b!2233657))

(assert (= start!217732 b!2233655))

(declare-fun m!2668704 () Bool)

(assert (=> setNonEmpty!20218 m!2668704))

(declare-fun m!2668706 () Bool)

(assert (=> b!2233654 m!2668706))

(declare-fun m!2668708 () Bool)

(assert (=> b!2233651 m!2668708))

(declare-fun m!2668710 () Bool)

(assert (=> b!2233651 m!2668710))

(declare-fun m!2668712 () Bool)

(assert (=> b!2233656 m!2668712))

(declare-fun m!2668714 () Bool)

(assert (=> b!2233656 m!2668714))

(declare-fun m!2668716 () Bool)

(assert (=> b!2233656 m!2668716))

(declare-fun m!2668718 () Bool)

(assert (=> b!2233656 m!2668718))

(declare-fun m!2668720 () Bool)

(assert (=> mapNonEmpty!14480 m!2668720))

(declare-fun m!2668722 () Bool)

(assert (=> start!217732 m!2668722))

(declare-fun m!2668724 () Bool)

(assert (=> start!217732 m!2668724))

(declare-fun m!2668726 () Bool)

(assert (=> start!217732 m!2668726))

(declare-fun m!2668728 () Bool)

(assert (=> b!2233660 m!2668728))

(check-sat tp_is_empty!10107 (not b_next!65483) (not b!2233649) (not mapNonEmpty!14480) (not start!217732) (not b!2233651) b_and!174765 (not b!2233656) (not b!2233647) (not b!2233660) (not b!2233646) (not b!2233654) (not b_next!65481) (not b!2233659) b_and!174767 (not setNonEmpty!20218) (not b!2233658) (not b!2233661))
(check-sat b_and!174767 b_and!174765 (not b_next!65481) (not b_next!65483))
(get-model)

(declare-fun b!2233680 () Bool)

(declare-fun e!1427539 () Bool)

(declare-fun e!1427537 () Bool)

(assert (=> b!2233680 (= e!1427539 e!1427537)))

(declare-fun res!956148 () Bool)

(declare-fun nullable!1775 (Regex!6441) Bool)

(assert (=> b!2233680 (= res!956148 (not (nullable!1775 (reg!6770 r!4773))))))

(assert (=> b!2233680 (=> (not res!956148) (not e!1427537))))

(declare-fun b!2233681 () Bool)

(declare-fun e!1427536 () Bool)

(declare-fun call!134222 () Bool)

(assert (=> b!2233681 (= e!1427536 call!134222)))

(declare-fun b!2233682 () Bool)

(declare-fun e!1427535 () Bool)

(declare-fun e!1427538 () Bool)

(assert (=> b!2233682 (= e!1427535 e!1427538)))

(declare-fun res!956149 () Bool)

(assert (=> b!2233682 (=> (not res!956149) (not e!1427538))))

(declare-fun call!134221 () Bool)

(assert (=> b!2233682 (= res!956149 call!134221)))

(declare-fun bm!134216 () Bool)

(declare-fun call!134223 () Bool)

(assert (=> bm!134216 (= call!134221 call!134223)))

(declare-fun b!2233683 () Bool)

(assert (=> b!2233683 (= e!1427537 call!134223)))

(declare-fun b!2233684 () Bool)

(assert (=> b!2233684 (= e!1427538 call!134222)))

(declare-fun b!2233685 () Bool)

(declare-fun res!956150 () Bool)

(assert (=> b!2233685 (=> (not res!956150) (not e!1427536))))

(assert (=> b!2233685 (= res!956150 call!134221)))

(declare-fun e!1427540 () Bool)

(assert (=> b!2233685 (= e!1427540 e!1427536)))

(declare-fun b!2233686 () Bool)

(declare-fun res!956146 () Bool)

(assert (=> b!2233686 (=> res!956146 e!1427535)))

(assert (=> b!2233686 (= res!956146 (not ((_ is Concat!10779) r!4773)))))

(assert (=> b!2233686 (= e!1427540 e!1427535)))

(declare-fun bm!134218 () Bool)

(declare-fun c!356112 () Bool)

(declare-fun c!356111 () Bool)

(assert (=> bm!134218 (= call!134223 (validRegex!2408 (ite c!356112 (reg!6770 r!4773) (ite c!356111 (regOne!13395 r!4773) (regOne!13394 r!4773)))))))

(declare-fun b!2233687 () Bool)

(assert (=> b!2233687 (= e!1427539 e!1427540)))

(assert (=> b!2233687 (= c!356111 ((_ is Union!6441) r!4773))))

(declare-fun b!2233688 () Bool)

(declare-fun e!1427534 () Bool)

(assert (=> b!2233688 (= e!1427534 e!1427539)))

(assert (=> b!2233688 (= c!356112 ((_ is Star!6441) r!4773))))

(declare-fun bm!134217 () Bool)

(assert (=> bm!134217 (= call!134222 (validRegex!2408 (ite c!356111 (regTwo!13395 r!4773) (regTwo!13394 r!4773))))))

(declare-fun d!665256 () Bool)

(declare-fun res!956147 () Bool)

(assert (=> d!665256 (=> res!956147 e!1427534)))

(assert (=> d!665256 (= res!956147 ((_ is ElementMatch!6441) r!4773))))

(assert (=> d!665256 (= (validRegex!2408 r!4773) e!1427534)))

(assert (= (and d!665256 (not res!956147)) b!2233688))

(assert (= (and b!2233688 c!356112) b!2233680))

(assert (= (and b!2233688 (not c!356112)) b!2233687))

(assert (= (and b!2233680 res!956148) b!2233683))

(assert (= (and b!2233687 c!356111) b!2233685))

(assert (= (and b!2233687 (not c!356111)) b!2233686))

(assert (= (and b!2233685 res!956150) b!2233681))

(assert (= (and b!2233686 (not res!956146)) b!2233682))

(assert (= (and b!2233682 res!956149) b!2233684))

(assert (= (or b!2233681 b!2233684) bm!134217))

(assert (= (or b!2233685 b!2233682) bm!134216))

(assert (= (or b!2233683 bm!134216) bm!134218))

(declare-fun m!2668730 () Bool)

(assert (=> b!2233680 m!2668730))

(declare-fun m!2668732 () Bool)

(assert (=> bm!134218 m!2668732))

(declare-fun m!2668734 () Bool)

(assert (=> bm!134217 m!2668734))

(assert (=> b!2233654 d!665256))

(declare-fun bm!134231 () Bool)

(declare-fun call!134239 () (InoxSet Context!3978))

(declare-fun call!134237 () (InoxSet Context!3978))

(assert (=> bm!134231 (= call!134239 call!134237)))

(declare-fun b!2233711 () Bool)

(declare-fun e!1427557 () (InoxSet Context!3978))

(declare-fun e!1427553 () (InoxSet Context!3978))

(assert (=> b!2233711 (= e!1427557 e!1427553)))

(declare-fun c!356126 () Bool)

(assert (=> b!2233711 (= c!356126 ((_ is Concat!10779) r!4773))))

(declare-fun b!2233712 () Bool)

(declare-fun e!1427554 () (InoxSet Context!3978))

(declare-fun call!134238 () (InoxSet Context!3978))

(declare-fun call!134240 () (InoxSet Context!3978))

(assert (=> b!2233712 (= e!1427554 ((_ map or) call!134238 call!134240))))

(declare-fun call!134236 () List!26354)

(declare-fun c!356127 () Bool)

(declare-fun c!356125 () Bool)

(declare-fun bm!134232 () Bool)

(assert (=> bm!134232 (= call!134238 (derivationStepZipperDown!56 (ite c!356127 (regOne!13395 r!4773) (ite c!356125 (regTwo!13394 r!4773) (ite c!356126 (regOne!13394 r!4773) (reg!6770 r!4773)))) (ite (or c!356127 c!356125) ctx!56 (Context!3979 call!134236)) a!1010))))

(declare-fun b!2233713 () Bool)

(assert (=> b!2233713 (= e!1427557 ((_ map or) call!134240 call!134237))))

(declare-fun b!2233714 () Bool)

(declare-fun e!1427555 () Bool)

(assert (=> b!2233714 (= c!356125 e!1427555)))

(declare-fun res!956153 () Bool)

(assert (=> b!2233714 (=> (not res!956153) (not e!1427555))))

(assert (=> b!2233714 (= res!956153 ((_ is Concat!10779) r!4773))))

(assert (=> b!2233714 (= e!1427554 e!1427557)))

(declare-fun bm!134233 () Bool)

(assert (=> bm!134233 (= call!134237 call!134238)))

(declare-fun b!2233715 () Bool)

(declare-fun e!1427558 () (InoxSet Context!3978))

(assert (=> b!2233715 (= e!1427558 (store ((as const (Array Context!3978 Bool)) false) ctx!56 true))))

(declare-fun d!665258 () Bool)

(declare-fun c!356124 () Bool)

(assert (=> d!665258 (= c!356124 (and ((_ is ElementMatch!6441) r!4773) (= (c!356106 r!4773) a!1010)))))

(assert (=> d!665258 (= (derivationStepZipperDown!56 r!4773 ctx!56 a!1010) e!1427558)))

(declare-fun b!2233716 () Bool)

(assert (=> b!2233716 (= e!1427555 (nullable!1775 (regOne!13394 r!4773)))))

(declare-fun call!134241 () List!26354)

(declare-fun bm!134234 () Bool)

(assert (=> bm!134234 (= call!134240 (derivationStepZipperDown!56 (ite c!356127 (regTwo!13395 r!4773) (regOne!13394 r!4773)) (ite c!356127 ctx!56 (Context!3979 call!134241)) a!1010))))

(declare-fun b!2233717 () Bool)

(declare-fun c!356123 () Bool)

(assert (=> b!2233717 (= c!356123 ((_ is Star!6441) r!4773))))

(declare-fun e!1427556 () (InoxSet Context!3978))

(assert (=> b!2233717 (= e!1427553 e!1427556)))

(declare-fun b!2233718 () Bool)

(assert (=> b!2233718 (= e!1427558 e!1427554)))

(assert (=> b!2233718 (= c!356127 ((_ is Union!6441) r!4773))))

(declare-fun b!2233719 () Bool)

(assert (=> b!2233719 (= e!1427553 call!134239)))

(declare-fun b!2233720 () Bool)

(assert (=> b!2233720 (= e!1427556 ((as const (Array Context!3978 Bool)) false))))

(declare-fun bm!134235 () Bool)

(assert (=> bm!134235 (= call!134236 call!134241)))

(declare-fun b!2233721 () Bool)

(assert (=> b!2233721 (= e!1427556 call!134239)))

(declare-fun bm!134236 () Bool)

(declare-fun $colon$colon!524 (List!26354 Regex!6441) List!26354)

(assert (=> bm!134236 (= call!134241 ($colon$colon!524 (exprs!2489 ctx!56) (ite (or c!356125 c!356126) (regTwo!13394 r!4773) r!4773)))))

(assert (= (and d!665258 c!356124) b!2233715))

(assert (= (and d!665258 (not c!356124)) b!2233718))

(assert (= (and b!2233718 c!356127) b!2233712))

(assert (= (and b!2233718 (not c!356127)) b!2233714))

(assert (= (and b!2233714 res!956153) b!2233716))

(assert (= (and b!2233714 c!356125) b!2233713))

(assert (= (and b!2233714 (not c!356125)) b!2233711))

(assert (= (and b!2233711 c!356126) b!2233719))

(assert (= (and b!2233711 (not c!356126)) b!2233717))

(assert (= (and b!2233717 c!356123) b!2233721))

(assert (= (and b!2233717 (not c!356123)) b!2233720))

(assert (= (or b!2233719 b!2233721) bm!134235))

(assert (= (or b!2233719 b!2233721) bm!134231))

(assert (= (or b!2233713 bm!134231) bm!134233))

(assert (= (or b!2233713 bm!134235) bm!134236))

(assert (= (or b!2233712 b!2233713) bm!134234))

(assert (= (or b!2233712 bm!134233) bm!134232))

(declare-fun m!2668736 () Bool)

(assert (=> bm!134236 m!2668736))

(declare-fun m!2668738 () Bool)

(assert (=> bm!134234 m!2668738))

(declare-fun m!2668740 () Bool)

(assert (=> bm!134232 m!2668740))

(declare-fun m!2668742 () Bool)

(assert (=> b!2233716 m!2668742))

(declare-fun m!2668744 () Bool)

(assert (=> b!2233715 m!2668744))

(assert (=> b!2233660 d!665258))

(declare-fun d!665260 () Bool)

(assert (=> d!665260 (= (array_inv!3405 (_keys!3376 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822))))))) (bvsge (size!20526 (_keys!3376 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2233651 d!665260))

(declare-fun d!665262 () Bool)

(assert (=> d!665262 (= (array_inv!3406 (_values!3359 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822))))))) (bvsge (size!20527 (_values!3359 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2233651 d!665262))

(declare-fun bs!454142 () Bool)

(declare-fun b!2233729 () Bool)

(assert (= bs!454142 (and b!2233729 b!2233656)))

(declare-fun lambda!84353 () Int)

(assert (=> bs!454142 (= lambda!84353 lambda!84350)))

(declare-fun d!665264 () Bool)

(declare-fun res!956160 () Bool)

(declare-fun e!1427563 () Bool)

(assert (=> d!665264 (=> (not res!956160) (not e!1427563))))

(declare-fun valid!2327 (MutableMap!2989) Bool)

(assert (=> d!665264 (= res!956160 (valid!2327 (cache!3370 thiss!28822)))))

(assert (=> d!665264 (= (validCacheMapDown!296 (cache!3370 thiss!28822)) e!1427563)))

(declare-fun b!2233728 () Bool)

(declare-fun res!956161 () Bool)

(assert (=> b!2233728 (=> (not res!956161) (not e!1427563))))

(declare-fun invariantList!364 (List!26355) Bool)

(assert (=> b!2233728 (= res!956161 (invariantList!364 (toList!1334 (map!5376 (cache!3370 thiss!28822)))))))

(assert (=> b!2233729 (= e!1427563 (forall!5374 (toList!1334 (map!5376 (cache!3370 thiss!28822))) lambda!84353))))

(assert (= (and d!665264 res!956160) b!2233728))

(assert (= (and b!2233728 res!956161) b!2233729))

(declare-fun m!2668747 () Bool)

(assert (=> d!665264 m!2668747))

(declare-fun m!2668749 () Bool)

(assert (=> b!2233728 m!2668749))

(declare-fun m!2668751 () Bool)

(assert (=> b!2233728 m!2668751))

(assert (=> b!2233729 m!2668749))

(declare-fun m!2668753 () Bool)

(assert (=> b!2233729 m!2668753))

(assert (=> start!217732 d!665264))

(declare-fun d!665266 () Bool)

(declare-fun lambda!84356 () Int)

(declare-fun forall!5375 (List!26354 Int) Bool)

(assert (=> d!665266 (= (inv!35671 ctx!56) (forall!5375 (exprs!2489 ctx!56) lambda!84356))))

(declare-fun bs!454143 () Bool)

(assert (= bs!454143 d!665266))

(declare-fun m!2668755 () Bool)

(assert (=> bs!454143 m!2668755))

(assert (=> start!217732 d!665266))

(declare-fun d!665268 () Bool)

(declare-fun res!956164 () Bool)

(declare-fun e!1427566 () Bool)

(assert (=> d!665268 (=> (not res!956164) (not e!1427566))))

(assert (=> d!665268 (= res!956164 ((_ is HashMap!2989) (cache!3370 thiss!28822)))))

(assert (=> d!665268 (= (inv!35672 thiss!28822) e!1427566)))

(declare-fun b!2233732 () Bool)

(assert (=> b!2233732 (= e!1427566 (validCacheMapDown!296 (cache!3370 thiss!28822)))))

(assert (= (and d!665268 res!956164) b!2233732))

(assert (=> b!2233732 m!2668722))

(assert (=> start!217732 d!665268))

(declare-fun bs!454144 () Bool)

(declare-fun d!665270 () Bool)

(assert (= bs!454144 (and d!665270 d!665266)))

(declare-fun lambda!84357 () Int)

(assert (=> bs!454144 (= lambda!84357 lambda!84356)))

(assert (=> d!665270 (= (inv!35671 setElem!20218) (forall!5375 (exprs!2489 setElem!20218) lambda!84357))))

(declare-fun bs!454145 () Bool)

(assert (= bs!454145 d!665270))

(declare-fun m!2668757 () Bool)

(assert (=> bs!454145 m!2668757))

(assert (=> setNonEmpty!20218 d!665270))

(declare-fun d!665272 () Bool)

(declare-fun res!956169 () Bool)

(declare-fun e!1427571 () Bool)

(assert (=> d!665272 (=> res!956169 e!1427571)))

(assert (=> d!665272 (= res!956169 ((_ is Nil!26261) (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291))))))))

(assert (=> d!665272 (= (forall!5374 (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291)))) lambda!84350) e!1427571)))

(declare-fun b!2233737 () Bool)

(declare-fun e!1427572 () Bool)

(assert (=> b!2233737 (= e!1427571 e!1427572)))

(declare-fun res!956170 () Bool)

(assert (=> b!2233737 (=> (not res!956170) (not e!1427572))))

(declare-fun dynLambda!11525 (Int tuple2!25622) Bool)

(assert (=> b!2233737 (= res!956170 (dynLambda!11525 lambda!84350 (h!31662 (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291)))))))))

(declare-fun b!2233738 () Bool)

(assert (=> b!2233738 (= e!1427572 (forall!5374 (t!199775 (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291))))) lambda!84350))))

(assert (= (and d!665272 (not res!956169)) b!2233737))

(assert (= (and b!2233737 res!956170) b!2233738))

(declare-fun b_lambda!71669 () Bool)

(assert (=> (not b_lambda!71669) (not b!2233737)))

(declare-fun m!2668759 () Bool)

(assert (=> b!2233737 m!2668759))

(declare-fun m!2668761 () Bool)

(assert (=> b!2233738 m!2668761))

(assert (=> b!2233656 d!665272))

(declare-fun d!665274 () Bool)

(declare-fun lt!830766 () ListMap!811)

(assert (=> d!665274 (invariantList!364 (toList!1334 lt!830766))))

(declare-datatypes ((tuple2!25626 0))(
  ( (tuple2!25627 (_1!15261 (_ BitVec 64)) (_2!15261 List!26355)) )
))
(declare-datatypes ((List!26356 0))(
  ( (Nil!26262) (Cons!26262 (h!31663 tuple2!25626) (t!199776 List!26356)) )
))
(declare-fun extractMap!102 (List!26356) ListMap!811)

(declare-datatypes ((ListLongMap!311 0))(
  ( (ListLongMap!312 (toList!1335 List!26356)) )
))
(declare-fun map!5377 (MutLongMap!3079) ListLongMap!311)

(assert (=> d!665274 (= lt!830766 (extractMap!102 (toList!1335 (map!5377 (v!29862 (underlying!6360 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291))))))))))

(assert (=> d!665274 (valid!2327 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291)))))

(assert (=> d!665274 (= (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291))) lt!830766)))

(declare-fun bs!454146 () Bool)

(assert (= bs!454146 d!665274))

(declare-fun m!2668763 () Bool)

(assert (=> bs!454146 m!2668763))

(declare-fun m!2668765 () Bool)

(assert (=> bs!454146 m!2668765))

(declare-fun m!2668767 () Bool)

(assert (=> bs!454146 m!2668767))

(declare-fun m!2668769 () Bool)

(assert (=> bs!454146 m!2668769))

(assert (=> b!2233656 d!665274))

(declare-fun bs!454147 () Bool)

(declare-fun b!2233777 () Bool)

(declare-fun b!2233780 () Bool)

(assert (= bs!454147 (and b!2233777 b!2233780)))

(declare-fun lambda!84367 () Int)

(declare-fun lambda!84366 () Int)

(assert (=> bs!454147 (= lambda!84367 lambda!84366)))

(declare-fun call!134325 () ListMap!811)

(declare-fun contains!4368 (ListMap!811 tuple3!3954) Bool)

(assert (=> b!2233777 (contains!4368 call!134325 lt!830762)))

(declare-fun lt!830929 () Unit!39160)

(declare-fun Unit!39162 () Unit!39160)

(assert (=> b!2233777 (= lt!830929 Unit!39162)))

(declare-fun call!134328 () ListMap!811)

(assert (=> b!2233777 (contains!4368 call!134328 lt!830762)))

(declare-fun lt!830909 () Unit!39160)

(declare-fun lt!830902 () Unit!39160)

(assert (=> b!2233777 (= lt!830909 lt!830902)))

(declare-fun call!134318 () Bool)

(declare-fun call!134314 () Bool)

(assert (=> b!2233777 (= call!134318 call!134314)))

(declare-fun call!134310 () Unit!39160)

(assert (=> b!2233777 (= lt!830902 call!134310)))

(declare-fun lt!830928 () ListMap!811)

(assert (=> b!2233777 (= lt!830928 call!134328)))

(declare-fun lt!830913 () ListMap!811)

(assert (=> b!2233777 (= lt!830913 call!134325)))

(declare-fun lt!830884 () Unit!39160)

(declare-fun Unit!39163 () Unit!39160)

(assert (=> b!2233777 (= lt!830884 Unit!39163)))

(declare-fun call!134311 () Bool)

(assert (=> b!2233777 call!134311))

(declare-fun lt!830887 () Unit!39160)

(declare-fun Unit!39164 () Unit!39160)

(assert (=> b!2233777 (= lt!830887 Unit!39164)))

(declare-fun call!134322 () Bool)

(assert (=> b!2233777 call!134322))

(declare-fun lt!830915 () Unit!39160)

(declare-fun Unit!39165 () Unit!39160)

(assert (=> b!2233777 (= lt!830915 Unit!39165)))

(declare-fun call!134329 () Bool)

(assert (=> b!2233777 call!134329))

(declare-fun lt!830898 () Unit!39160)

(declare-fun lt!830930 () Unit!39160)

(assert (=> b!2233777 (= lt!830898 lt!830930)))

(declare-fun call!134324 () Bool)

(assert (=> b!2233777 call!134324))

(declare-fun lt!830923 () (_ BitVec 64))

(declare-fun lt!830881 () List!26355)

(declare-fun lt!830895 () ListLongMap!311)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!11 (ListLongMap!311 (_ BitVec 64) List!26355 tuple3!3954 (InoxSet Context!3978) Hashable!2989) Unit!39160)

(assert (=> b!2233777 (= lt!830930 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!11 lt!830895 lt!830923 lt!830881 lt!830762 res!14291 (hashF!4912 (cache!3370 thiss!28822))))))

(declare-fun lt!830922 () Unit!39160)

(declare-fun lt!830886 () Unit!39160)

(assert (=> b!2233777 (= lt!830922 lt!830886)))

(declare-fun e!1427597 () Bool)

(assert (=> b!2233777 e!1427597))

(declare-fun res!956184 () Bool)

(assert (=> b!2233777 (=> (not res!956184) (not e!1427597))))

(declare-fun call!134331 () Bool)

(assert (=> b!2233777 (= res!956184 call!134331)))

(declare-fun lt!830921 () ListLongMap!311)

(declare-fun call!134326 () ListLongMap!311)

(assert (=> b!2233777 (= lt!830921 call!134326)))

(declare-fun call!134305 () Unit!39160)

(assert (=> b!2233777 (= lt!830886 call!134305)))

(declare-fun lt!830897 () Unit!39160)

(declare-fun e!1427599 () Unit!39160)

(assert (=> b!2233777 (= lt!830897 e!1427599)))

(declare-fun c!356143 () Bool)

(declare-fun lt!830906 () List!26355)

(declare-fun isEmpty!14902 (List!26355) Bool)

(assert (=> b!2233777 (= c!356143 (not (isEmpty!14902 lt!830906)))))

(declare-fun e!1427603 () Unit!39160)

(declare-fun Unit!39166 () Unit!39160)

(assert (=> b!2233777 (= e!1427603 Unit!39166)))

(declare-fun b!2233778 () Bool)

(declare-fun Unit!39167 () Unit!39160)

(assert (=> b!2233778 (= e!1427599 Unit!39167)))

(declare-fun bm!134299 () Bool)

(declare-fun call!134317 () ListLongMap!311)

(declare-fun allKeysSameHashInMap!102 (ListLongMap!311 Hashable!2989) Bool)

(assert (=> bm!134299 (= call!134322 (allKeysSameHashInMap!102 call!134317 (hashF!4912 (cache!3370 thiss!28822))))))

(declare-fun e!1427595 () tuple2!25624)

(declare-fun lt!830877 () MutableMap!2989)

(declare-datatypes ((tuple2!25628 0))(
  ( (tuple2!25629 (_1!15262 Bool) (_2!15262 MutLongMap!3079)) )
))
(declare-fun lt!830911 () tuple2!25628)

(declare-fun b!2233779 () Bool)

(declare-datatypes ((tuple2!25630 0))(
  ( (tuple2!25631 (_1!15263 Unit!39160) (_2!15263 MutableMap!2989)) )
))
(declare-fun Unit!39168 () Unit!39160)

(declare-fun Unit!39169 () Unit!39160)

(assert (=> b!2233779 (= e!1427595 (tuple2!25625 (_1!15262 lt!830911) (_2!15263 (ite false (tuple2!25631 Unit!39168 (HashMap!2989 (Cell!12136 (_2!15262 lt!830911)) (hashF!4912 (cache!3370 thiss!28822)) (bvadd (_size!6206 (cache!3370 thiss!28822)) #b00000000000000000000000000000001) (defaultValue!3151 (cache!3370 thiss!28822)))) (tuple2!25631 Unit!39169 lt!830877)))))))

(declare-fun lt!830904 () (_ BitVec 64))

(declare-fun call!134327 () (_ BitVec 64))

(assert (=> b!2233779 (= lt!830904 call!134327)))

(declare-fun lt!830883 () List!26355)

(declare-fun call!134308 () List!26355)

(assert (=> b!2233779 (= lt!830883 call!134308)))

(declare-fun call!134333 () List!26355)

(declare-fun lt!830890 () List!26355)

(assert (=> b!2233779 (= lt!830890 (Cons!26261 (tuple2!25623 lt!830762 res!14291) call!134333))))

(declare-fun call!134323 () tuple2!25628)

(assert (=> b!2233779 (= lt!830911 call!134323)))

(assert (=> b!2233779 (= lt!830877 (HashMap!2989 (Cell!12136 (_2!15262 lt!830911)) (hashF!4912 (cache!3370 thiss!28822)) (_size!6206 (cache!3370 thiss!28822)) (defaultValue!3151 (cache!3370 thiss!28822))))))

(declare-fun c!356142 () Bool)

(assert (=> b!2233779 (= c!356142 (_1!15262 lt!830911))))

(declare-fun lt!830894 () Unit!39160)

(declare-fun e!1427604 () Unit!39160)

(assert (=> b!2233779 (= lt!830894 e!1427604)))

(declare-fun bm!134300 () Bool)

(declare-fun call!134306 () ListMap!811)

(assert (=> bm!134300 (= call!134306 (extractMap!102 (toList!1335 lt!830895)))))

(declare-fun lt!830914 () ListLongMap!311)

(declare-fun bm!134301 () Bool)

(declare-fun c!356144 () Bool)

(declare-fun forall!5376 (List!26356 Int) Bool)

(assert (=> bm!134301 (= call!134331 (forall!5376 (ite c!356144 (toList!1335 lt!830914) (toList!1335 lt!830921)) (ite c!356144 lambda!84366 lambda!84367)))))

(declare-fun bm!134302 () Bool)

(declare-fun call!134321 () Bool)

(declare-fun call!134332 () ListMap!811)

(declare-fun e!1427600 () ListMap!811)

(declare-fun eq!51 (ListMap!811 ListMap!811) Bool)

(assert (=> bm!134302 (= call!134321 (eq!51 call!134332 e!1427600))))

(declare-fun c!356148 () Bool)

(declare-fun c!356145 () Bool)

(assert (=> bm!134302 (= c!356148 c!356145)))

(assert (=> b!2233780 call!134311))

(declare-fun lt!830919 () Unit!39160)

(declare-fun Unit!39170 () Unit!39160)

(assert (=> b!2233780 (= lt!830919 Unit!39170)))

(assert (=> b!2233780 call!134322))

(declare-fun lt!830912 () Unit!39160)

(declare-fun Unit!39171 () Unit!39160)

(assert (=> b!2233780 (= lt!830912 Unit!39171)))

(assert (=> b!2233780 call!134329))

(declare-fun lt!830900 () Unit!39160)

(declare-fun lt!830893 () Unit!39160)

(assert (=> b!2233780 (= lt!830900 lt!830893)))

(assert (=> b!2233780 (= call!134314 call!134318)))

(assert (=> b!2233780 (= lt!830893 call!134310)))

(declare-fun lt!830931 () ListMap!811)

(assert (=> b!2233780 (= lt!830931 call!134328)))

(declare-fun lt!830905 () ListMap!811)

(declare-fun call!134316 () ListMap!811)

(assert (=> b!2233780 (= lt!830905 call!134316)))

(declare-fun lt!830882 () Unit!39160)

(declare-fun lt!830888 () Unit!39160)

(assert (=> b!2233780 (= lt!830882 lt!830888)))

(assert (=> b!2233780 call!134324))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!11 (ListLongMap!311 (_ BitVec 64) List!26355 tuple3!3954 (InoxSet Context!3978) Hashable!2989) Unit!39160)

(assert (=> b!2233780 (= lt!830888 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!11 lt!830895 lt!830904 lt!830890 lt!830762 res!14291 (hashF!4912 (cache!3370 thiss!28822))))))

(declare-fun lt!830908 () Unit!39160)

(declare-fun lt!830901 () Unit!39160)

(assert (=> b!2233780 (= lt!830908 lt!830901)))

(declare-fun e!1427596 () Bool)

(assert (=> b!2233780 e!1427596))

(declare-fun res!956182 () Bool)

(assert (=> b!2233780 (=> (not res!956182) (not e!1427596))))

(assert (=> b!2233780 (= res!956182 call!134331)))

(assert (=> b!2233780 (= lt!830914 call!134326)))

(assert (=> b!2233780 (= lt!830901 call!134305)))

(declare-fun lt!830879 () Unit!39160)

(declare-fun Unit!39172 () Unit!39160)

(assert (=> b!2233780 (= lt!830879 Unit!39172)))

(declare-fun noDuplicateKeys!36 (List!26355) Bool)

(assert (=> b!2233780 (noDuplicateKeys!36 lt!830890)))

(declare-fun lt!830925 () Unit!39160)

(declare-fun Unit!39173 () Unit!39160)

(assert (=> b!2233780 (= lt!830925 Unit!39173)))

(declare-fun containsKey!72 (List!26355 tuple3!3954) Bool)

(assert (=> b!2233780 (not (containsKey!72 call!134333 lt!830762))))

(declare-fun lt!830916 () Unit!39160)

(declare-fun Unit!39174 () Unit!39160)

(assert (=> b!2233780 (= lt!830916 Unit!39174)))

(declare-fun lt!830899 () Unit!39160)

(declare-fun lt!830907 () Unit!39160)

(assert (=> b!2233780 (= lt!830899 lt!830907)))

(assert (=> b!2233780 (noDuplicateKeys!36 call!134333)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!30 (List!26355 tuple3!3954) Unit!39160)

(assert (=> b!2233780 (= lt!830907 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!30 lt!830883 lt!830762))))

(declare-fun lt!830924 () Unit!39160)

(declare-fun lt!830889 () Unit!39160)

(assert (=> b!2233780 (= lt!830924 lt!830889)))

(declare-fun call!134334 () Bool)

(assert (=> b!2233780 call!134334))

(declare-fun call!134315 () Unit!39160)

(assert (=> b!2233780 (= lt!830889 call!134315)))

(declare-fun lt!830926 () Unit!39160)

(declare-fun lt!830885 () Unit!39160)

(assert (=> b!2233780 (= lt!830926 lt!830885)))

(declare-fun call!134313 () Bool)

(assert (=> b!2233780 call!134313))

(declare-fun call!134312 () Unit!39160)

(assert (=> b!2233780 (= lt!830885 call!134312)))

(declare-fun Unit!39175 () Unit!39160)

(assert (=> b!2233780 (= e!1427604 Unit!39175)))

(declare-fun bm!134303 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!30 (List!26356 (_ BitVec 64) List!26355 Hashable!2989) Unit!39160)

(assert (=> bm!134303 (= call!134312 (lemmaInLongMapAllKeySameHashThenForTuple!30 (toList!1335 lt!830895) (ite c!356144 lt!830904 lt!830923) (ite c!356144 lt!830883 lt!830906) (hashF!4912 (cache!3370 thiss!28822))))))

(declare-fun bm!134304 () Bool)

(declare-fun call!134304 () ListMap!811)

(declare-fun call!134307 () ListMap!811)

(assert (=> bm!134304 (= call!134324 (eq!51 call!134304 call!134307))))

(declare-fun bm!134305 () Bool)

(declare-fun update!141 (MutLongMap!3079 (_ BitVec 64) List!26355) tuple2!25628)

(assert (=> bm!134305 (= call!134323 (update!141 (v!29862 (underlying!6360 (cache!3370 thiss!28822))) (ite c!356144 lt!830904 lt!830923) (ite c!356144 lt!830890 lt!830881)))))

(declare-fun d!665276 () Bool)

(declare-fun e!1427601 () Bool)

(assert (=> d!665276 e!1427601))

(declare-fun res!956183 () Bool)

(assert (=> d!665276 (=> (not res!956183) (not e!1427601))))

(declare-fun lt!830903 () tuple2!25624)

(assert (=> d!665276 (= res!956183 ((_ is HashMap!2989) (_2!15260 lt!830903)))))

(declare-fun lt!830878 () tuple2!25624)

(assert (=> d!665276 (= lt!830903 (tuple2!25625 (_1!15260 lt!830878) (_2!15260 lt!830878)))))

(assert (=> d!665276 (= lt!830878 e!1427595)))

(declare-fun contains!4369 (MutableMap!2989 tuple3!3954) Bool)

(assert (=> d!665276 (= c!356144 (contains!4369 (cache!3370 thiss!28822) lt!830762))))

(assert (=> d!665276 (= lt!830895 (map!5377 (v!29862 (underlying!6360 (cache!3370 thiss!28822)))))))

(declare-fun lt!830927 () ListMap!811)

(assert (=> d!665276 (= lt!830927 (map!5376 (cache!3370 thiss!28822)))))

(assert (=> d!665276 (valid!2327 (cache!3370 thiss!28822))))

(assert (=> d!665276 (= (update!140 (cache!3370 thiss!28822) lt!830762 res!14291) lt!830903)))

(declare-fun bm!134306 () Bool)

(assert (=> bm!134306 (= call!134329 (forall!5376 (toList!1335 call!134317) (ite c!356144 lambda!84366 lambda!84367)))))

(declare-fun bm!134307 () Bool)

(assert (=> bm!134307 (= call!134314 (contains!4368 (ite c!356144 lt!830905 lt!830928) lt!830762))))

(declare-fun bm!134308 () Bool)

(assert (=> bm!134308 (= call!134318 (contains!4368 (ite c!356144 lt!830931 lt!830913) lt!830762))))

(declare-fun b!2233781 () Bool)

(declare-fun lt!830892 () tuple2!25628)

(declare-fun lt!830917 () MutableMap!2989)

(declare-fun Unit!39176 () Unit!39160)

(declare-fun Unit!39177 () Unit!39160)

(assert (=> b!2233781 (= e!1427595 (tuple2!25625 (_1!15262 lt!830892) (_2!15263 (ite (_1!15262 lt!830892) (tuple2!25631 Unit!39176 (HashMap!2989 (Cell!12136 (_2!15262 lt!830892)) (hashF!4912 (cache!3370 thiss!28822)) (bvadd (_size!6206 (cache!3370 thiss!28822)) #b00000000000000000000000000000001) (defaultValue!3151 (cache!3370 thiss!28822)))) (tuple2!25631 Unit!39177 lt!830917)))))))

(assert (=> b!2233781 (= lt!830923 call!134327)))

(declare-fun c!356146 () Bool)

(declare-fun contains!4370 (MutLongMap!3079 (_ BitVec 64)) Bool)

(assert (=> b!2233781 (= c!356146 (contains!4370 (v!29862 (underlying!6360 (cache!3370 thiss!28822))) lt!830923))))

(declare-fun e!1427602 () List!26355)

(assert (=> b!2233781 (= lt!830906 e!1427602)))

(assert (=> b!2233781 (= lt!830881 (Cons!26261 (tuple2!25623 lt!830762 res!14291) lt!830906))))

(assert (=> b!2233781 (= lt!830892 call!134323)))

(assert (=> b!2233781 (= lt!830917 (HashMap!2989 (Cell!12136 (_2!15262 lt!830892)) (hashF!4912 (cache!3370 thiss!28822)) (_size!6206 (cache!3370 thiss!28822)) (defaultValue!3151 (cache!3370 thiss!28822))))))

(declare-fun c!356147 () Bool)

(assert (=> b!2233781 (= c!356147 (_1!15262 lt!830892))))

(declare-fun lt!830891 () Unit!39160)

(assert (=> b!2233781 (= lt!830891 e!1427603)))

(declare-fun b!2233782 () Bool)

(declare-fun e!1427598 () Bool)

(assert (=> b!2233782 (= e!1427598 call!134321)))

(declare-fun b!2233783 () Bool)

(declare-fun e!1427605 () Bool)

(assert (=> b!2233783 (= e!1427601 e!1427605)))

(assert (=> b!2233783 (= c!356145 (_1!15260 lt!830903))))

(declare-fun bm!134309 () Bool)

(assert (=> bm!134309 (= call!134311 (eq!51 (ite c!356144 call!134316 call!134325) call!134328))))

(declare-fun b!2233784 () Bool)

(assert (=> b!2233784 (= e!1427602 Nil!26261)))

(declare-fun bm!134310 () Bool)

(declare-fun +!55 (ListMap!811 tuple2!25622) ListMap!811)

(assert (=> bm!134310 (= call!134328 (+!55 lt!830927 (tuple2!25623 lt!830762 res!14291)))))

(declare-fun bm!134311 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!30 (ListLongMap!311 (_ BitVec 64) List!26355 Hashable!2989) Unit!39160)

(assert (=> bm!134311 (= call!134305 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!30 lt!830895 (ite c!356144 lt!830904 lt!830923) (ite c!356144 lt!830890 lt!830881) (hashF!4912 (cache!3370 thiss!28822))))))

(declare-fun call!134330 () Bool)

(declare-fun bm!134312 () Bool)

(assert (=> bm!134312 (= call!134330 (allKeysSameHashInMap!102 (ite c!356144 lt!830914 lt!830921) (hashF!4912 (cache!3370 thiss!28822))))))

(declare-fun bm!134313 () Bool)

(declare-fun +!56 (ListLongMap!311 tuple2!25626) ListLongMap!311)

(assert (=> bm!134313 (= call!134326 (+!56 lt!830895 (ite c!356144 (tuple2!25627 lt!830904 lt!830890) (tuple2!25627 lt!830923 lt!830881))))))

(declare-fun bm!134314 () Bool)

(assert (=> bm!134314 (= call!134307 (+!55 call!134306 (tuple2!25623 lt!830762 res!14291)))))

(declare-fun bm!134315 () Bool)

(declare-fun call!134320 () ListMap!811)

(assert (=> bm!134315 (= call!134325 call!134320)))

(declare-fun bm!134316 () Bool)

(declare-fun apply!6464 (MutLongMap!3079 (_ BitVec 64)) List!26355)

(assert (=> bm!134316 (= call!134308 (apply!6464 (v!29862 (underlying!6360 (cache!3370 thiss!28822))) (ite c!356144 lt!830904 lt!830923)))))

(declare-fun b!2233785 () Bool)

(assert (=> b!2233785 (= e!1427597 call!134330)))

(declare-fun b!2233786 () Bool)

(assert (=> b!2233786 (= call!134316 lt!830927)))

(declare-fun lt!830920 () Unit!39160)

(declare-fun Unit!39178 () Unit!39160)

(assert (=> b!2233786 (= lt!830920 Unit!39178)))

(declare-fun call!134309 () Bool)

(assert (=> b!2233786 call!134309))

(declare-fun Unit!39179 () Unit!39160)

(assert (=> b!2233786 (= e!1427604 Unit!39179)))

(declare-fun bm!134317 () Bool)

(assert (=> bm!134317 (= call!134332 (map!5376 (_2!15260 lt!830903)))))

(declare-fun bm!134318 () Bool)

(declare-fun lemmaEquivalentThenSameContains!11 (ListMap!811 ListMap!811 tuple3!3954) Unit!39160)

(assert (=> bm!134318 (= call!134310 (lemmaEquivalentThenSameContains!11 (ite c!356144 lt!830905 lt!830913) (ite c!356144 lt!830931 lt!830928) lt!830762))))

(declare-fun bm!134319 () Bool)

(declare-fun allKeysSameHash!34 (List!26355 (_ BitVec 64) Hashable!2989) Bool)

(assert (=> bm!134319 (= call!134313 (allKeysSameHash!34 (ite c!356144 lt!830883 lt!830906) (ite c!356144 lt!830904 lt!830923) (hashF!4912 (cache!3370 thiss!28822))))))

(declare-fun bm!134320 () Bool)

(assert (=> bm!134320 (= call!134334 (allKeysSameHash!34 call!134333 (ite c!356144 lt!830904 lt!830923) (hashF!4912 (cache!3370 thiss!28822))))))

(declare-fun bm!134321 () Bool)

(declare-fun removePairForKey!30 (List!26355 tuple3!3954) List!26355)

(assert (=> bm!134321 (= call!134333 (removePairForKey!30 (ite c!356144 lt!830883 lt!830906) lt!830762))))

(declare-fun b!2233787 () Bool)

(declare-fun res!956181 () Bool)

(assert (=> b!2233787 (=> (not res!956181) (not e!1427601))))

(assert (=> b!2233787 (= res!956181 (valid!2327 (_2!15260 lt!830903)))))

(declare-fun bm!134322 () Bool)

(assert (=> bm!134322 (= call!134309 (valid!2327 (ite c!356144 lt!830877 lt!830917)))))

(declare-fun b!2233788 () Bool)

(assert (=> b!2233788 (= call!134325 lt!830927)))

(declare-fun lt!830910 () Unit!39160)

(declare-fun Unit!39180 () Unit!39160)

(assert (=> b!2233788 (= lt!830910 Unit!39180)))

(assert (=> b!2233788 call!134309))

(declare-fun Unit!39181 () Unit!39160)

(assert (=> b!2233788 (= e!1427603 Unit!39181)))

(declare-fun b!2233789 () Bool)

(assert (=> b!2233789 (= e!1427605 e!1427598)))

(declare-fun res!956185 () Bool)

(assert (=> b!2233789 (= res!956185 (contains!4368 call!134332 lt!830762))))

(assert (=> b!2233789 (=> (not res!956185) (not e!1427598))))

(declare-fun bm!134323 () Bool)

(assert (=> bm!134323 (= call!134317 (map!5377 (ite c!356144 (_2!15262 lt!830911) (_2!15262 lt!830892))))))

(declare-fun b!2233790 () Bool)

(declare-fun call!134319 () ListMap!811)

(assert (=> b!2233790 (= e!1427600 call!134319)))

(declare-fun b!2233791 () Bool)

(assert (=> b!2233791 (= e!1427600 (+!55 call!134319 (tuple2!25623 lt!830762 res!14291)))))

(declare-fun b!2233792 () Bool)

(assert (=> b!2233792 (= e!1427602 call!134308)))

(declare-fun bm!134324 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!30 (List!26355 tuple3!3954 (_ BitVec 64) Hashable!2989) Unit!39160)

(assert (=> bm!134324 (= call!134315 (lemmaRemovePairForKeyPreservesHash!30 (ite c!356144 lt!830883 lt!830906) lt!830762 (ite c!356144 lt!830904 lt!830923) (hashF!4912 (cache!3370 thiss!28822))))))

(declare-fun bm!134325 () Bool)

(assert (=> bm!134325 (= call!134320 (map!5376 (ite c!356144 lt!830877 lt!830917)))))

(declare-fun b!2233793 () Bool)

(assert (=> b!2233793 (= e!1427596 call!134330)))

(declare-fun bm!134326 () Bool)

(assert (=> bm!134326 (= call!134316 call!134320)))

(declare-fun bm!134327 () Bool)

(declare-fun hash!570 (Hashable!2989 tuple3!3954) (_ BitVec 64))

(assert (=> bm!134327 (= call!134327 (hash!570 (hashF!4912 (cache!3370 thiss!28822)) lt!830762))))

(declare-fun b!2233794 () Bool)

(declare-fun lt!830918 () Unit!39160)

(assert (=> b!2233794 (= e!1427599 lt!830918)))

(declare-fun lt!830896 () Unit!39160)

(assert (=> b!2233794 (= lt!830896 call!134312)))

(assert (=> b!2233794 call!134313))

(declare-fun lt!830880 () Unit!39160)

(assert (=> b!2233794 (= lt!830880 lt!830896)))

(assert (=> b!2233794 (= lt!830918 call!134315)))

(assert (=> b!2233794 call!134334))

(declare-fun bm!134328 () Bool)

(assert (=> bm!134328 (= call!134319 (map!5376 (cache!3370 thiss!28822)))))

(declare-fun bm!134329 () Bool)

(assert (=> bm!134329 (= call!134304 (extractMap!102 (toList!1335 call!134326)))))

(declare-fun b!2233795 () Bool)

(assert (=> b!2233795 (= e!1427605 call!134321)))

(assert (= (and d!665276 c!356144) b!2233779))

(assert (= (and d!665276 (not c!356144)) b!2233781))

(assert (= (and b!2233779 c!356142) b!2233780))

(assert (= (and b!2233779 (not c!356142)) b!2233786))

(assert (= (and b!2233780 res!956182) b!2233793))

(assert (= (or b!2233780 b!2233786) bm!134326))

(assert (= (and b!2233781 c!356146) b!2233792))

(assert (= (and b!2233781 (not c!356146)) b!2233784))

(assert (= (and b!2233781 c!356147) b!2233777))

(assert (= (and b!2233781 (not c!356147)) b!2233788))

(assert (= (and b!2233777 c!356143) b!2233794))

(assert (= (and b!2233777 (not c!356143)) b!2233778))

(assert (= (and b!2233777 res!956184) b!2233785))

(assert (= (or b!2233777 b!2233788) bm!134315))

(assert (= (or b!2233780 b!2233777) bm!134318))

(assert (= (or b!2233780 b!2233777) bm!134307))

(assert (= (or b!2233780 b!2233777) bm!134313))

(assert (= (or b!2233780 b!2233777) bm!134300))

(assert (= (or b!2233780 b!2233777) bm!134308))

(assert (= (or b!2233786 b!2233788) bm!134322))

(assert (= (or b!2233780 b!2233794) bm!134303))

(assert (= (or b!2233780 b!2233777) bm!134310))

(assert (= (or b!2233779 b!2233781) bm!134305))

(assert (= (or b!2233779 b!2233781) bm!134327))

(assert (= (or bm!134326 bm!134315) bm!134325))

(assert (= (or b!2233780 b!2233777) bm!134301))

(assert (= (or b!2233779 b!2233792) bm!134316))

(assert (= (or b!2233780 b!2233794) bm!134319))

(assert (= (or b!2233780 b!2233777) bm!134311))

(assert (= (or b!2233779 b!2233780 b!2233794) bm!134321))

(assert (= (or b!2233780 b!2233794) bm!134324))

(assert (= (or b!2233780 b!2233777) bm!134323))

(assert (= (or b!2233793 b!2233785) bm!134312))

(assert (= (or b!2233780 b!2233777) bm!134299))

(assert (= (or b!2233780 b!2233777) bm!134306))

(assert (= (or b!2233780 b!2233777) bm!134329))

(assert (= (or b!2233780 b!2233777) bm!134309))

(assert (= (or b!2233780 b!2233777) bm!134314))

(assert (= (or b!2233780 b!2233794) bm!134320))

(assert (= (or b!2233780 b!2233777) bm!134304))

(assert (= (and d!665276 res!956183) b!2233787))

(assert (= (and b!2233787 res!956181) b!2233783))

(assert (= (and b!2233783 c!356145) b!2233789))

(assert (= (and b!2233783 (not c!356145)) b!2233795))

(assert (= (and b!2233789 res!956185) b!2233782))

(assert (= (or b!2233789 b!2233782 b!2233795) bm!134317))

(assert (= (or b!2233782 b!2233795) bm!134328))

(assert (= (or b!2233782 b!2233795) bm!134302))

(assert (= (and bm!134302 c!356148) b!2233791))

(assert (= (and bm!134302 (not c!356148)) b!2233790))

(declare-fun m!2668771 () Bool)

(assert (=> bm!134318 m!2668771))

(declare-fun m!2668773 () Bool)

(assert (=> b!2233789 m!2668773))

(declare-fun m!2668775 () Bool)

(assert (=> bm!134325 m!2668775))

(declare-fun m!2668777 () Bool)

(assert (=> bm!134321 m!2668777))

(declare-fun m!2668779 () Bool)

(assert (=> bm!134310 m!2668779))

(declare-fun m!2668781 () Bool)

(assert (=> bm!134324 m!2668781))

(declare-fun m!2668783 () Bool)

(assert (=> bm!134317 m!2668783))

(declare-fun m!2668785 () Bool)

(assert (=> bm!134312 m!2668785))

(declare-fun m!2668787 () Bool)

(assert (=> bm!134301 m!2668787))

(declare-fun m!2668789 () Bool)

(assert (=> bm!134319 m!2668789))

(declare-fun m!2668791 () Bool)

(assert (=> bm!134303 m!2668791))

(declare-fun m!2668793 () Bool)

(assert (=> bm!134309 m!2668793))

(declare-fun m!2668795 () Bool)

(assert (=> bm!134316 m!2668795))

(declare-fun m!2668797 () Bool)

(assert (=> bm!134306 m!2668797))

(declare-fun m!2668799 () Bool)

(assert (=> bm!134307 m!2668799))

(declare-fun m!2668801 () Bool)

(assert (=> bm!134322 m!2668801))

(declare-fun m!2668803 () Bool)

(assert (=> bm!134308 m!2668803))

(declare-fun m!2668805 () Bool)

(assert (=> bm!134302 m!2668805))

(declare-fun m!2668807 () Bool)

(assert (=> b!2233780 m!2668807))

(declare-fun m!2668809 () Bool)

(assert (=> b!2233780 m!2668809))

(declare-fun m!2668811 () Bool)

(assert (=> b!2233780 m!2668811))

(declare-fun m!2668813 () Bool)

(assert (=> b!2233780 m!2668813))

(declare-fun m!2668815 () Bool)

(assert (=> b!2233780 m!2668815))

(declare-fun m!2668817 () Bool)

(assert (=> b!2233787 m!2668817))

(declare-fun m!2668819 () Bool)

(assert (=> bm!134329 m!2668819))

(declare-fun m!2668821 () Bool)

(assert (=> bm!134327 m!2668821))

(declare-fun m!2668823 () Bool)

(assert (=> bm!134304 m!2668823))

(declare-fun m!2668825 () Bool)

(assert (=> b!2233791 m!2668825))

(declare-fun m!2668827 () Bool)

(assert (=> bm!134314 m!2668827))

(declare-fun m!2668829 () Bool)

(assert (=> b!2233781 m!2668829))

(declare-fun m!2668831 () Bool)

(assert (=> b!2233777 m!2668831))

(declare-fun m!2668833 () Bool)

(assert (=> b!2233777 m!2668833))

(declare-fun m!2668835 () Bool)

(assert (=> b!2233777 m!2668835))

(declare-fun m!2668837 () Bool)

(assert (=> b!2233777 m!2668837))

(assert (=> bm!134328 m!2668749))

(declare-fun m!2668839 () Bool)

(assert (=> bm!134299 m!2668839))

(declare-fun m!2668841 () Bool)

(assert (=> bm!134311 m!2668841))

(declare-fun m!2668843 () Bool)

(assert (=> bm!134323 m!2668843))

(declare-fun m!2668845 () Bool)

(assert (=> bm!134313 m!2668845))

(declare-fun m!2668847 () Bool)

(assert (=> bm!134305 m!2668847))

(declare-fun m!2668849 () Bool)

(assert (=> bm!134320 m!2668849))

(declare-fun m!2668851 () Bool)

(assert (=> d!665276 m!2668851))

(declare-fun m!2668853 () Bool)

(assert (=> d!665276 m!2668853))

(assert (=> d!665276 m!2668749))

(assert (=> d!665276 m!2668747))

(declare-fun m!2668855 () Bool)

(assert (=> bm!134300 m!2668855))

(assert (=> b!2233656 d!665276))

(declare-fun d!665278 () Bool)

(declare-fun e!1427608 () Bool)

(assert (=> d!665278 e!1427608))

(declare-fun res!956188 () Bool)

(assert (=> d!665278 (=> (not res!956188) (not e!1427608))))

(assert (=> d!665278 (= res!956188 (and (or (not ((_ is HashMap!2989) (cache!3370 thiss!28822))) ((_ is HashMap!2989) (cache!3370 thiss!28822))) ((_ is HashMap!2989) (cache!3370 thiss!28822))))))

(declare-fun lt!830949 () Unit!39160)

(declare-fun choose!13134 (MutableMap!2989 tuple3!3954 (InoxSet Context!3978) Int) Unit!39160)

(assert (=> d!665278 (= lt!830949 (choose!13134 (cache!3370 thiss!28822) lt!830762 res!14291 lambda!84350))))

(assert (=> d!665278 (valid!2327 (cache!3370 thiss!28822))))

(assert (=> d!665278 (= (lemmaUpdatePreservesForallPairs!20 (cache!3370 thiss!28822) lt!830762 res!14291 lambda!84350) lt!830949)))

(declare-fun b!2233798 () Bool)

(declare-fun lt!830945 () MutableMap!2989)

(assert (=> b!2233798 (= e!1427608 (forall!5374 (toList!1334 (map!5376 lt!830945)) lambda!84350))))

(assert (=> b!2233798 ((_ is HashMap!2989) lt!830945)))

(declare-fun lt!830948 () MutableMap!2989)

(assert (=> b!2233798 (= lt!830945 lt!830948)))

(assert (=> b!2233798 ((_ is HashMap!2989) lt!830948)))

(declare-fun lt!830946 () MutableMap!2989)

(assert (=> b!2233798 (= lt!830948 lt!830946)))

(assert (=> b!2233798 ((_ is HashMap!2989) lt!830946)))

(declare-fun lt!830947 () tuple2!25624)

(assert (=> b!2233798 (= lt!830946 (_2!15260 lt!830947))))

(assert (=> b!2233798 ((_ is HashMap!2989) (_2!15260 lt!830947))))

(declare-fun lt!830944 () tuple2!25624)

(assert (=> b!2233798 (= lt!830947 lt!830944)))

(assert (=> b!2233798 ((_ is HashMap!2989) (_2!15260 lt!830944))))

(assert (=> b!2233798 (= lt!830944 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291))))

(assert (= (and d!665278 res!956188) b!2233798))

(declare-fun m!2668857 () Bool)

(assert (=> d!665278 m!2668857))

(assert (=> d!665278 m!2668747))

(declare-fun m!2668859 () Bool)

(assert (=> b!2233798 m!2668859))

(declare-fun m!2668861 () Bool)

(assert (=> b!2233798 m!2668861))

(assert (=> b!2233798 m!2668712))

(assert (=> b!2233656 d!665278))

(declare-fun b!2233810 () Bool)

(declare-fun e!1427611 () Bool)

(declare-fun tp!701193 () Bool)

(declare-fun tp!701189 () Bool)

(assert (=> b!2233810 (= e!1427611 (and tp!701193 tp!701189))))

(declare-fun b!2233812 () Bool)

(declare-fun tp!701191 () Bool)

(declare-fun tp!701190 () Bool)

(assert (=> b!2233812 (= e!1427611 (and tp!701191 tp!701190))))

(assert (=> b!2233646 (= tp!701175 e!1427611)))

(declare-fun b!2233809 () Bool)

(assert (=> b!2233809 (= e!1427611 tp_is_empty!10107)))

(declare-fun b!2233811 () Bool)

(declare-fun tp!701192 () Bool)

(assert (=> b!2233811 (= e!1427611 tp!701192)))

(assert (= (and b!2233646 ((_ is ElementMatch!6441) (regOne!13394 r!4773))) b!2233809))

(assert (= (and b!2233646 ((_ is Concat!10779) (regOne!13394 r!4773))) b!2233810))

(assert (= (and b!2233646 ((_ is Star!6441) (regOne!13394 r!4773))) b!2233811))

(assert (= (and b!2233646 ((_ is Union!6441) (regOne!13394 r!4773))) b!2233812))

(declare-fun b!2233814 () Bool)

(declare-fun e!1427612 () Bool)

(declare-fun tp!701198 () Bool)

(declare-fun tp!701194 () Bool)

(assert (=> b!2233814 (= e!1427612 (and tp!701198 tp!701194))))

(declare-fun b!2233816 () Bool)

(declare-fun tp!701196 () Bool)

(declare-fun tp!701195 () Bool)

(assert (=> b!2233816 (= e!1427612 (and tp!701196 tp!701195))))

(assert (=> b!2233646 (= tp!701170 e!1427612)))

(declare-fun b!2233813 () Bool)

(assert (=> b!2233813 (= e!1427612 tp_is_empty!10107)))

(declare-fun b!2233815 () Bool)

(declare-fun tp!701197 () Bool)

(assert (=> b!2233815 (= e!1427612 tp!701197)))

(assert (= (and b!2233646 ((_ is ElementMatch!6441) (regTwo!13394 r!4773))) b!2233813))

(assert (= (and b!2233646 ((_ is Concat!10779) (regTwo!13394 r!4773))) b!2233814))

(assert (= (and b!2233646 ((_ is Star!6441) (regTwo!13394 r!4773))) b!2233815))

(assert (= (and b!2233646 ((_ is Union!6441) (regTwo!13394 r!4773))) b!2233816))

(declare-fun b!2233818 () Bool)

(declare-fun e!1427613 () Bool)

(declare-fun tp!701203 () Bool)

(declare-fun tp!701199 () Bool)

(assert (=> b!2233818 (= e!1427613 (and tp!701203 tp!701199))))

(declare-fun b!2233820 () Bool)

(declare-fun tp!701201 () Bool)

(declare-fun tp!701200 () Bool)

(assert (=> b!2233820 (= e!1427613 (and tp!701201 tp!701200))))

(assert (=> b!2233659 (= tp!701176 e!1427613)))

(declare-fun b!2233817 () Bool)

(assert (=> b!2233817 (= e!1427613 tp_is_empty!10107)))

(declare-fun b!2233819 () Bool)

(declare-fun tp!701202 () Bool)

(assert (=> b!2233819 (= e!1427613 tp!701202)))

(assert (= (and b!2233659 ((_ is ElementMatch!6441) (regOne!13395 r!4773))) b!2233817))

(assert (= (and b!2233659 ((_ is Concat!10779) (regOne!13395 r!4773))) b!2233818))

(assert (= (and b!2233659 ((_ is Star!6441) (regOne!13395 r!4773))) b!2233819))

(assert (= (and b!2233659 ((_ is Union!6441) (regOne!13395 r!4773))) b!2233820))

(declare-fun b!2233822 () Bool)

(declare-fun e!1427614 () Bool)

(declare-fun tp!701208 () Bool)

(declare-fun tp!701204 () Bool)

(assert (=> b!2233822 (= e!1427614 (and tp!701208 tp!701204))))

(declare-fun b!2233824 () Bool)

(declare-fun tp!701206 () Bool)

(declare-fun tp!701205 () Bool)

(assert (=> b!2233824 (= e!1427614 (and tp!701206 tp!701205))))

(assert (=> b!2233659 (= tp!701168 e!1427614)))

(declare-fun b!2233821 () Bool)

(assert (=> b!2233821 (= e!1427614 tp_is_empty!10107)))

(declare-fun b!2233823 () Bool)

(declare-fun tp!701207 () Bool)

(assert (=> b!2233823 (= e!1427614 tp!701207)))

(assert (= (and b!2233659 ((_ is ElementMatch!6441) (regTwo!13395 r!4773))) b!2233821))

(assert (= (and b!2233659 ((_ is Concat!10779) (regTwo!13395 r!4773))) b!2233822))

(assert (= (and b!2233659 ((_ is Star!6441) (regTwo!13395 r!4773))) b!2233823))

(assert (= (and b!2233659 ((_ is Union!6441) (regTwo!13395 r!4773))) b!2233824))

(declare-fun b!2233826 () Bool)

(declare-fun e!1427615 () Bool)

(declare-fun tp!701213 () Bool)

(declare-fun tp!701209 () Bool)

(assert (=> b!2233826 (= e!1427615 (and tp!701213 tp!701209))))

(declare-fun b!2233828 () Bool)

(declare-fun tp!701211 () Bool)

(declare-fun tp!701210 () Bool)

(assert (=> b!2233828 (= e!1427615 (and tp!701211 tp!701210))))

(assert (=> b!2233647 (= tp!701171 e!1427615)))

(declare-fun b!2233825 () Bool)

(assert (=> b!2233825 (= e!1427615 tp_is_empty!10107)))

(declare-fun b!2233827 () Bool)

(declare-fun tp!701212 () Bool)

(assert (=> b!2233827 (= e!1427615 tp!701212)))

(assert (= (and b!2233647 ((_ is ElementMatch!6441) (reg!6770 r!4773))) b!2233825))

(assert (= (and b!2233647 ((_ is Concat!10779) (reg!6770 r!4773))) b!2233826))

(assert (= (and b!2233647 ((_ is Star!6441) (reg!6770 r!4773))) b!2233827))

(assert (= (and b!2233647 ((_ is Union!6441) (reg!6770 r!4773))) b!2233828))

(declare-fun b!2233837 () Bool)

(declare-fun e!1427623 () Bool)

(declare-fun tp!701226 () Bool)

(assert (=> b!2233837 (= e!1427623 tp!701226)))

(declare-fun e!1427622 () Bool)

(declare-fun setNonEmpty!20221 () Bool)

(declare-fun tp!701225 () Bool)

(declare-fun setElem!20221 () Context!3978)

(declare-fun setRes!20221 () Bool)

(assert (=> setNonEmpty!20221 (= setRes!20221 (and tp!701225 (inv!35671 setElem!20221) e!1427622))))

(declare-fun setRest!20221 () (InoxSet Context!3978))

(assert (=> setNonEmpty!20221 (= (_2!15259 (h!31662 (zeroValue!3337 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3978 Bool)) false) setElem!20221 true) setRest!20221))))

(declare-fun b!2233838 () Bool)

(declare-fun tp!701228 () Bool)

(assert (=> b!2233838 (= e!1427622 tp!701228)))

(declare-fun e!1427624 () Bool)

(declare-fun tp!701224 () Bool)

(declare-fun b!2233839 () Bool)

(declare-fun tp!701227 () Bool)

(assert (=> b!2233839 (= e!1427624 (and tp!701224 (inv!35671 (_2!15258 (_1!15259 (h!31662 (zeroValue!3337 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822)))))))))) e!1427623 tp_is_empty!10107 setRes!20221 tp!701227))))

(declare-fun condSetEmpty!20221 () Bool)

(assert (=> b!2233839 (= condSetEmpty!20221 (= (_2!15259 (h!31662 (zeroValue!3337 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822)))))))) ((as const (Array Context!3978 Bool)) false)))))

(declare-fun setIsEmpty!20221 () Bool)

(assert (=> setIsEmpty!20221 setRes!20221))

(assert (=> b!2233651 (= tp!701167 e!1427624)))

(assert (= b!2233839 b!2233837))

(assert (= (and b!2233839 condSetEmpty!20221) setIsEmpty!20221))

(assert (= (and b!2233839 (not condSetEmpty!20221)) setNonEmpty!20221))

(assert (= setNonEmpty!20221 b!2233838))

(assert (= (and b!2233651 ((_ is Cons!26261) (zeroValue!3337 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822)))))))) b!2233839))

(declare-fun m!2668863 () Bool)

(assert (=> setNonEmpty!20221 m!2668863))

(declare-fun m!2668865 () Bool)

(assert (=> b!2233839 m!2668865))

(declare-fun b!2233840 () Bool)

(declare-fun e!1427626 () Bool)

(declare-fun tp!701231 () Bool)

(assert (=> b!2233840 (= e!1427626 tp!701231)))

(declare-fun setRes!20222 () Bool)

(declare-fun tp!701230 () Bool)

(declare-fun e!1427625 () Bool)

(declare-fun setElem!20222 () Context!3978)

(declare-fun setNonEmpty!20222 () Bool)

(assert (=> setNonEmpty!20222 (= setRes!20222 (and tp!701230 (inv!35671 setElem!20222) e!1427625))))

(declare-fun setRest!20222 () (InoxSet Context!3978))

(assert (=> setNonEmpty!20222 (= (_2!15259 (h!31662 (minValue!3337 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3978 Bool)) false) setElem!20222 true) setRest!20222))))

(declare-fun b!2233841 () Bool)

(declare-fun tp!701233 () Bool)

(assert (=> b!2233841 (= e!1427625 tp!701233)))

(declare-fun b!2233842 () Bool)

(declare-fun e!1427627 () Bool)

(declare-fun tp!701229 () Bool)

(declare-fun tp!701232 () Bool)

(assert (=> b!2233842 (= e!1427627 (and tp!701229 (inv!35671 (_2!15258 (_1!15259 (h!31662 (minValue!3337 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822)))))))))) e!1427626 tp_is_empty!10107 setRes!20222 tp!701232))))

(declare-fun condSetEmpty!20222 () Bool)

(assert (=> b!2233842 (= condSetEmpty!20222 (= (_2!15259 (h!31662 (minValue!3337 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822)))))))) ((as const (Array Context!3978 Bool)) false)))))

(declare-fun setIsEmpty!20222 () Bool)

(assert (=> setIsEmpty!20222 setRes!20222))

(assert (=> b!2233651 (= tp!701174 e!1427627)))

(assert (= b!2233842 b!2233840))

(assert (= (and b!2233842 condSetEmpty!20222) setIsEmpty!20222))

(assert (= (and b!2233842 (not condSetEmpty!20222)) setNonEmpty!20222))

(assert (= setNonEmpty!20222 b!2233841))

(assert (= (and b!2233651 ((_ is Cons!26261) (minValue!3337 (v!29861 (underlying!6359 (v!29862 (underlying!6360 (cache!3370 thiss!28822)))))))) b!2233842))

(declare-fun m!2668867 () Bool)

(assert (=> setNonEmpty!20222 m!2668867))

(declare-fun m!2668869 () Bool)

(assert (=> b!2233842 m!2668869))

(declare-fun mapDefault!14483 () List!26355)

(declare-fun setRes!20227 () Bool)

(declare-fun tp!701264 () Bool)

(declare-fun tp!701261 () Bool)

(declare-fun e!1427641 () Bool)

(declare-fun b!2233857 () Bool)

(declare-fun e!1427640 () Bool)

(assert (=> b!2233857 (= e!1427641 (and tp!701261 (inv!35671 (_2!15258 (_1!15259 (h!31662 mapDefault!14483)))) e!1427640 tp_is_empty!10107 setRes!20227 tp!701264))))

(declare-fun condSetEmpty!20227 () Bool)

(assert (=> b!2233857 (= condSetEmpty!20227 (= (_2!15259 (h!31662 mapDefault!14483)) ((as const (Array Context!3978 Bool)) false)))))

(declare-fun setElem!20227 () Context!3978)

(declare-fun tp!701263 () Bool)

(declare-fun e!1427643 () Bool)

(declare-fun setNonEmpty!20227 () Bool)

(assert (=> setNonEmpty!20227 (= setRes!20227 (and tp!701263 (inv!35671 setElem!20227) e!1427643))))

(declare-fun setRest!20227 () (InoxSet Context!3978))

(assert (=> setNonEmpty!20227 (= (_2!15259 (h!31662 mapDefault!14483)) ((_ map or) (store ((as const (Array Context!3978 Bool)) false) setElem!20227 true) setRest!20227))))

(declare-fun mapNonEmpty!14483 () Bool)

(declare-fun mapRes!14483 () Bool)

(declare-fun tp!701256 () Bool)

(declare-fun e!1427645 () Bool)

(assert (=> mapNonEmpty!14483 (= mapRes!14483 (and tp!701256 e!1427645))))

(declare-fun mapValue!14483 () List!26355)

(declare-fun mapRest!14483 () (Array (_ BitVec 32) List!26355))

(declare-fun mapKey!14483 () (_ BitVec 32))

(assert (=> mapNonEmpty!14483 (= mapRest!14480 (store mapRest!14483 mapKey!14483 mapValue!14483))))

(declare-fun b!2233858 () Bool)

(declare-fun e!1427644 () Bool)

(declare-fun tp!701260 () Bool)

(assert (=> b!2233858 (= e!1427644 tp!701260)))

(declare-fun setIsEmpty!20227 () Bool)

(declare-fun setRes!20228 () Bool)

(assert (=> setIsEmpty!20227 setRes!20228))

(declare-fun setIsEmpty!20228 () Bool)

(assert (=> setIsEmpty!20228 setRes!20227))

(declare-fun b!2233860 () Bool)

(declare-fun tp!701258 () Bool)

(assert (=> b!2233860 (= e!1427643 tp!701258)))

(declare-fun setElem!20228 () Context!3978)

(declare-fun tp!701257 () Bool)

(declare-fun e!1427642 () Bool)

(declare-fun setNonEmpty!20228 () Bool)

(assert (=> setNonEmpty!20228 (= setRes!20228 (and tp!701257 (inv!35671 setElem!20228) e!1427642))))

(declare-fun setRest!20228 () (InoxSet Context!3978))

(assert (=> setNonEmpty!20228 (= (_2!15259 (h!31662 mapValue!14483)) ((_ map or) (store ((as const (Array Context!3978 Bool)) false) setElem!20228 true) setRest!20228))))

(declare-fun b!2233861 () Bool)

(declare-fun tp!701262 () Bool)

(assert (=> b!2233861 (= e!1427640 tp!701262)))

(declare-fun b!2233862 () Bool)

(declare-fun tp!701266 () Bool)

(assert (=> b!2233862 (= e!1427642 tp!701266)))

(declare-fun mapIsEmpty!14483 () Bool)

(assert (=> mapIsEmpty!14483 mapRes!14483))

(declare-fun condMapEmpty!14483 () Bool)

(assert (=> mapNonEmpty!14480 (= condMapEmpty!14483 (= mapRest!14480 ((as const (Array (_ BitVec 32) List!26355)) mapDefault!14483)))))

(assert (=> mapNonEmpty!14480 (= tp!701164 (and e!1427641 mapRes!14483))))

(declare-fun tp!701265 () Bool)

(declare-fun tp!701259 () Bool)

(declare-fun b!2233859 () Bool)

(assert (=> b!2233859 (= e!1427645 (and tp!701265 (inv!35671 (_2!15258 (_1!15259 (h!31662 mapValue!14483)))) e!1427644 tp_is_empty!10107 setRes!20228 tp!701259))))

(declare-fun condSetEmpty!20228 () Bool)

(assert (=> b!2233859 (= condSetEmpty!20228 (= (_2!15259 (h!31662 mapValue!14483)) ((as const (Array Context!3978 Bool)) false)))))

(assert (= (and mapNonEmpty!14480 condMapEmpty!14483) mapIsEmpty!14483))

(assert (= (and mapNonEmpty!14480 (not condMapEmpty!14483)) mapNonEmpty!14483))

(assert (= b!2233859 b!2233858))

(assert (= (and b!2233859 condSetEmpty!20228) setIsEmpty!20227))

(assert (= (and b!2233859 (not condSetEmpty!20228)) setNonEmpty!20228))

(assert (= setNonEmpty!20228 b!2233862))

(assert (= (and mapNonEmpty!14483 ((_ is Cons!26261) mapValue!14483)) b!2233859))

(assert (= b!2233857 b!2233861))

(assert (= (and b!2233857 condSetEmpty!20227) setIsEmpty!20228))

(assert (= (and b!2233857 (not condSetEmpty!20227)) setNonEmpty!20227))

(assert (= setNonEmpty!20227 b!2233860))

(assert (= (and mapNonEmpty!14480 ((_ is Cons!26261) mapDefault!14483)) b!2233857))

(declare-fun m!2668871 () Bool)

(assert (=> b!2233857 m!2668871))

(declare-fun m!2668873 () Bool)

(assert (=> b!2233859 m!2668873))

(declare-fun m!2668875 () Bool)

(assert (=> setNonEmpty!20228 m!2668875))

(declare-fun m!2668877 () Bool)

(assert (=> setNonEmpty!20227 m!2668877))

(declare-fun m!2668879 () Bool)

(assert (=> mapNonEmpty!14483 m!2668879))

(declare-fun b!2233863 () Bool)

(declare-fun e!1427647 () Bool)

(declare-fun tp!701269 () Bool)

(assert (=> b!2233863 (= e!1427647 tp!701269)))

(declare-fun setRes!20229 () Bool)

(declare-fun setNonEmpty!20229 () Bool)

(declare-fun setElem!20229 () Context!3978)

(declare-fun tp!701268 () Bool)

(declare-fun e!1427646 () Bool)

(assert (=> setNonEmpty!20229 (= setRes!20229 (and tp!701268 (inv!35671 setElem!20229) e!1427646))))

(declare-fun setRest!20229 () (InoxSet Context!3978))

(assert (=> setNonEmpty!20229 (= (_2!15259 (h!31662 mapValue!14480)) ((_ map or) (store ((as const (Array Context!3978 Bool)) false) setElem!20229 true) setRest!20229))))

(declare-fun b!2233864 () Bool)

(declare-fun tp!701271 () Bool)

(assert (=> b!2233864 (= e!1427646 tp!701271)))

(declare-fun tp!701270 () Bool)

(declare-fun tp!701267 () Bool)

(declare-fun e!1427648 () Bool)

(declare-fun b!2233865 () Bool)

(assert (=> b!2233865 (= e!1427648 (and tp!701267 (inv!35671 (_2!15258 (_1!15259 (h!31662 mapValue!14480)))) e!1427647 tp_is_empty!10107 setRes!20229 tp!701270))))

(declare-fun condSetEmpty!20229 () Bool)

(assert (=> b!2233865 (= condSetEmpty!20229 (= (_2!15259 (h!31662 mapValue!14480)) ((as const (Array Context!3978 Bool)) false)))))

(declare-fun setIsEmpty!20229 () Bool)

(assert (=> setIsEmpty!20229 setRes!20229))

(assert (=> mapNonEmpty!14480 (= tp!701166 e!1427648)))

(assert (= b!2233865 b!2233863))

(assert (= (and b!2233865 condSetEmpty!20229) setIsEmpty!20229))

(assert (= (and b!2233865 (not condSetEmpty!20229)) setNonEmpty!20229))

(assert (= setNonEmpty!20229 b!2233864))

(assert (= (and mapNonEmpty!14480 ((_ is Cons!26261) mapValue!14480)) b!2233865))

(declare-fun m!2668881 () Bool)

(assert (=> setNonEmpty!20229 m!2668881))

(declare-fun m!2668883 () Bool)

(assert (=> b!2233865 m!2668883))

(declare-fun b!2233866 () Bool)

(declare-fun e!1427650 () Bool)

(declare-fun tp!701274 () Bool)

(assert (=> b!2233866 (= e!1427650 tp!701274)))

(declare-fun setRes!20230 () Bool)

(declare-fun setElem!20230 () Context!3978)

(declare-fun setNonEmpty!20230 () Bool)

(declare-fun tp!701273 () Bool)

(declare-fun e!1427649 () Bool)

(assert (=> setNonEmpty!20230 (= setRes!20230 (and tp!701273 (inv!35671 setElem!20230) e!1427649))))

(declare-fun setRest!20230 () (InoxSet Context!3978))

(assert (=> setNonEmpty!20230 (= (_2!15259 (h!31662 mapDefault!14480)) ((_ map or) (store ((as const (Array Context!3978 Bool)) false) setElem!20230 true) setRest!20230))))

(declare-fun b!2233867 () Bool)

(declare-fun tp!701276 () Bool)

(assert (=> b!2233867 (= e!1427649 tp!701276)))

(declare-fun tp!701275 () Bool)

(declare-fun tp!701272 () Bool)

(declare-fun b!2233868 () Bool)

(declare-fun e!1427651 () Bool)

(assert (=> b!2233868 (= e!1427651 (and tp!701272 (inv!35671 (_2!15258 (_1!15259 (h!31662 mapDefault!14480)))) e!1427650 tp_is_empty!10107 setRes!20230 tp!701275))))

(declare-fun condSetEmpty!20230 () Bool)

(assert (=> b!2233868 (= condSetEmpty!20230 (= (_2!15259 (h!31662 mapDefault!14480)) ((as const (Array Context!3978 Bool)) false)))))

(declare-fun setIsEmpty!20230 () Bool)

(assert (=> setIsEmpty!20230 setRes!20230))

(assert (=> b!2233658 (= tp!701178 e!1427651)))

(assert (= b!2233868 b!2233866))

(assert (= (and b!2233868 condSetEmpty!20230) setIsEmpty!20230))

(assert (= (and b!2233868 (not condSetEmpty!20230)) setNonEmpty!20230))

(assert (= setNonEmpty!20230 b!2233867))

(assert (= (and b!2233658 ((_ is Cons!26261) mapDefault!14480)) b!2233868))

(declare-fun m!2668885 () Bool)

(assert (=> setNonEmpty!20230 m!2668885))

(declare-fun m!2668887 () Bool)

(assert (=> b!2233868 m!2668887))

(declare-fun b!2233873 () Bool)

(declare-fun e!1427654 () Bool)

(declare-fun tp!701281 () Bool)

(declare-fun tp!701282 () Bool)

(assert (=> b!2233873 (= e!1427654 (and tp!701281 tp!701282))))

(assert (=> b!2233649 (= tp!701173 e!1427654)))

(assert (= (and b!2233649 ((_ is Cons!26260) (exprs!2489 setElem!20218))) b!2233873))

(declare-fun condSetEmpty!20233 () Bool)

(assert (=> setNonEmpty!20218 (= condSetEmpty!20233 (= setRest!20218 ((as const (Array Context!3978 Bool)) false)))))

(declare-fun setRes!20233 () Bool)

(assert (=> setNonEmpty!20218 (= tp!701165 setRes!20233)))

(declare-fun setIsEmpty!20233 () Bool)

(assert (=> setIsEmpty!20233 setRes!20233))

(declare-fun setNonEmpty!20233 () Bool)

(declare-fun tp!701288 () Bool)

(declare-fun e!1427657 () Bool)

(declare-fun setElem!20233 () Context!3978)

(assert (=> setNonEmpty!20233 (= setRes!20233 (and tp!701288 (inv!35671 setElem!20233) e!1427657))))

(declare-fun setRest!20233 () (InoxSet Context!3978))

(assert (=> setNonEmpty!20233 (= setRest!20218 ((_ map or) (store ((as const (Array Context!3978 Bool)) false) setElem!20233 true) setRest!20233))))

(declare-fun b!2233878 () Bool)

(declare-fun tp!701287 () Bool)

(assert (=> b!2233878 (= e!1427657 tp!701287)))

(assert (= (and setNonEmpty!20218 condSetEmpty!20233) setIsEmpty!20233))

(assert (= (and setNonEmpty!20218 (not condSetEmpty!20233)) setNonEmpty!20233))

(assert (= setNonEmpty!20233 b!2233878))

(declare-fun m!2668889 () Bool)

(assert (=> setNonEmpty!20233 m!2668889))

(declare-fun b!2233879 () Bool)

(declare-fun e!1427658 () Bool)

(declare-fun tp!701289 () Bool)

(declare-fun tp!701290 () Bool)

(assert (=> b!2233879 (= e!1427658 (and tp!701289 tp!701290))))

(assert (=> b!2233661 (= tp!701172 e!1427658)))

(assert (= (and b!2233661 ((_ is Cons!26260) (exprs!2489 ctx!56))) b!2233879))

(declare-fun b_lambda!71671 () Bool)

(assert (= b_lambda!71669 (or b!2233656 b_lambda!71671)))

(declare-fun bs!454148 () Bool)

(declare-fun d!665280 () Bool)

(assert (= bs!454148 (and d!665280 b!2233656)))

(declare-fun res!956189 () Bool)

(declare-fun e!1427659 () Bool)

(assert (=> bs!454148 (=> (not res!956189) (not e!1427659))))

(assert (=> bs!454148 (= res!956189 (validRegex!2408 (_1!15258 (_1!15259 (h!31662 (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291)))))))))))

(assert (=> bs!454148 (= (dynLambda!11525 lambda!84350 (h!31662 (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291)))))) e!1427659)))

(declare-fun b!2233880 () Bool)

(assert (=> b!2233880 (= e!1427659 (= (_2!15259 (h!31662 (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291)))))) (derivationStepZipperDown!56 (_1!15258 (_1!15259 (h!31662 (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291))))))) (_2!15258 (_1!15259 (h!31662 (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291))))))) (_3!2447 (_1!15259 (h!31662 (toList!1334 (map!5376 (_2!15260 (update!140 (cache!3370 thiss!28822) lt!830762 res!14291))))))))))))

(assert (= (and bs!454148 res!956189) b!2233880))

(declare-fun m!2668891 () Bool)

(assert (=> bs!454148 m!2668891))

(declare-fun m!2668893 () Bool)

(assert (=> b!2233880 m!2668893))

(assert (=> b!2233737 d!665280))

(check-sat (not bm!134316) (not bm!134319) (not bm!134303) tp_is_empty!10107 (not bm!134312) (not d!665274) (not bm!134325) (not b!2233781) (not b!2233860) (not bm!134309) (not bm!134311) (not b!2233865) (not bm!134308) (not b!2233839) (not b!2233811) (not b_next!65483) (not b!2233828) (not b!2233857) (not b!2233864) (not bs!454148) (not b!2233815) (not b!2233789) (not bm!134321) (not b!2233868) (not d!665266) (not b!2233837) (not setNonEmpty!20233) (not bm!134329) (not b_next!65481) (not setNonEmpty!20229) (not bm!134304) (not b!2233826) (not bm!134218) (not b!2233814) (not b!2233728) (not b!2233810) (not b!2233873) (not bm!134236) (not b!2233878) (not bm!134313) (not b!2233822) (not b!2233820) (not d!665270) (not b!2233823) (not bm!134300) (not d!665264) (not b!2233777) (not b!2233819) (not b!2233780) (not bm!134314) (not bm!134318) (not bm!134324) (not b!2233738) (not b!2233841) (not bm!134320) (not b!2233867) b_and!174767 (not bm!134310) (not d!665276) (not b!2233880) (not setNonEmpty!20227) (not bm!134306) (not bm!134328) (not b!2233791) (not b!2233824) (not mapNonEmpty!14483) (not setNonEmpty!20228) (not b!2233840) (not b_lambda!71671) (not bm!134301) (not b!2233879) b_and!174765 (not d!665278) (not bm!134322) (not b!2233866) (not b!2233842) (not bm!134299) (not b!2233680) (not b!2233863) (not setNonEmpty!20221) (not setNonEmpty!20230) (not b!2233862) (not b!2233732) (not b!2233859) (not bm!134323) (not b!2233838) (not bm!134217) (not b!2233818) (not bm!134307) (not bm!134327) (not bm!134317) (not b!2233861) (not bm!134234) (not bm!134232) (not bm!134305) (not b!2233798) (not b!2233858) (not b!2233716) (not b!2233729) (not setNonEmpty!20222) (not b!2233787) (not b!2233827) (not bm!134302) (not b!2233816) (not b!2233812))
(check-sat b_and!174767 b_and!174765 (not b_next!65481) (not b_next!65483))
