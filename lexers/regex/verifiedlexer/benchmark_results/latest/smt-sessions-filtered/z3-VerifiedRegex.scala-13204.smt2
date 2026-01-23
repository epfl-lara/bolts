; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!719644 () Bool)

(assert start!719644)

(declare-fun b!7374599 () Bool)

(declare-fun e!4414695 () Bool)

(declare-fun e!4414696 () Bool)

(assert (=> b!7374599 (= e!4414695 e!4414696)))

(declare-fun res!2975227 () Bool)

(assert (=> b!7374599 (=> (not res!2975227) (not e!4414696))))

(declare-datatypes ((C!38868 0))(
  ( (C!38869 (val!29794 Int)) )
))
(declare-datatypes ((Regex!19297 0))(
  ( (ElementMatch!19297 (c!1370645 C!38868)) (Concat!28142 (regOne!39106 Regex!19297) (regTwo!39106 Regex!19297)) (EmptyExpr!19297) (Star!19297 (reg!19626 Regex!19297)) (EmptyLang!19297) (Union!19297 (regOne!39107 Regex!19297) (regTwo!39107 Regex!19297)) )
))
(declare-fun r1!2370 () Regex!19297)

(declare-fun c!10362 () C!38868)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!71793 0))(
  ( (Nil!71669) (Cons!71669 (h!78117 Regex!19297) (t!386266 List!71793)) )
))
(declare-datatypes ((Context!16474 0))(
  ( (Context!16475 (exprs!8737 List!71793)) )
))
(declare-fun lt!2616161 () (InoxSet Context!16474))

(declare-fun lt!2616160 () Context!16474)

(declare-fun derivationStepZipperDown!3123 (Regex!19297 Context!16474 C!38868) (InoxSet Context!16474))

(assert (=> b!7374599 (= res!2975227 (= lt!2616161 (derivationStepZipperDown!3123 (regOne!39106 r1!2370) lt!2616160 c!10362)))))

(declare-fun ct1!282 () Context!16474)

(declare-fun $colon$colon!3279 (List!71793 Regex!19297) List!71793)

(assert (=> b!7374599 (= lt!2616160 (Context!16475 ($colon$colon!3279 (exprs!8737 ct1!282) (regTwo!39106 r1!2370))))))

(declare-fun b!7374600 () Bool)

(declare-fun res!2975224 () Bool)

(assert (=> b!7374600 (=> (not res!2975224) (not e!4414695))))

(get-info :version)

(assert (=> b!7374600 (= res!2975224 ((_ is Concat!28142) r1!2370))))

(declare-fun b!7374601 () Bool)

(declare-fun e!4414697 () Bool)

(declare-fun tp!2096839 () Bool)

(declare-fun tp!2096837 () Bool)

(assert (=> b!7374601 (= e!4414697 (and tp!2096839 tp!2096837))))

(declare-fun b!7374602 () Bool)

(declare-fun res!2975228 () Bool)

(assert (=> b!7374602 (=> (not res!2975228) (not e!4414695))))

(declare-fun validRegex!9893 (Regex!19297) Bool)

(assert (=> b!7374602 (= res!2975228 (validRegex!9893 (regTwo!39106 r1!2370)))))

(declare-fun b!7374603 () Bool)

(declare-fun inv!91582 (Context!16474) Bool)

(assert (=> b!7374603 (= e!4414696 (not (inv!91582 lt!2616160)))))

(declare-fun b!7374604 () Bool)

(declare-fun e!4414698 () Bool)

(assert (=> b!7374604 (= e!4414698 e!4414695)))

(declare-fun res!2975226 () Bool)

(assert (=> b!7374604 (=> (not res!2975226) (not e!4414695))))

(assert (=> b!7374604 (= res!2975226 (and (or (not ((_ is ElementMatch!19297) r1!2370)) (not (= c!10362 (c!1370645 r1!2370)))) (not ((_ is Union!19297) r1!2370))))))

(declare-fun lt!2616158 () (InoxSet Context!16474))

(declare-fun ct2!378 () Context!16474)

(declare-fun ++!17113 (List!71793 List!71793) List!71793)

(assert (=> b!7374604 (= lt!2616158 (derivationStepZipperDown!3123 r1!2370 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165543 0))(
  ( (Unit!165544) )
))
(declare-fun lt!2616159 () Unit!165543)

(declare-fun lambda!458253 () Int)

(declare-fun lemmaConcatPreservesForall!1970 (List!71793 List!71793 Int) Unit!165543)

(assert (=> b!7374604 (= lt!2616159 (lemmaConcatPreservesForall!1970 (exprs!8737 ct1!282) (exprs!8737 ct2!378) lambda!458253))))

(declare-fun b!7374605 () Bool)

(declare-fun tp!2096841 () Bool)

(assert (=> b!7374605 (= e!4414697 tp!2096841)))

(declare-fun b!7374606 () Bool)

(declare-fun e!4414702 () Bool)

(declare-fun tp!2096838 () Bool)

(assert (=> b!7374606 (= e!4414702 tp!2096838)))

(declare-fun b!7374607 () Bool)

(declare-fun e!4414699 () Bool)

(declare-fun tp!2096836 () Bool)

(assert (=> b!7374607 (= e!4414699 tp!2096836)))

(declare-fun res!2975225 () Bool)

(declare-fun e!4414694 () Bool)

(assert (=> start!719644 (=> (not res!2975225) (not e!4414694))))

(assert (=> start!719644 (= res!2975225 (validRegex!9893 r1!2370))))

(assert (=> start!719644 e!4414694))

(declare-fun tp_is_empty!48839 () Bool)

(assert (=> start!719644 tp_is_empty!48839))

(declare-fun cWitness!61 () Context!16474)

(assert (=> start!719644 (and (inv!91582 cWitness!61) e!4414699)))

(assert (=> start!719644 (and (inv!91582 ct1!282) e!4414702)))

(assert (=> start!719644 e!4414697))

(declare-fun e!4414701 () Bool)

(assert (=> start!719644 (and (inv!91582 ct2!378) e!4414701)))

(declare-fun b!7374608 () Bool)

(declare-fun e!4414700 () Bool)

(declare-fun nullable!8373 (Regex!19297) Bool)

(assert (=> b!7374608 (= e!4414700 (not (nullable!8373 (regOne!39106 r1!2370))))))

(declare-fun b!7374609 () Bool)

(declare-fun tp!2096840 () Bool)

(declare-fun tp!2096843 () Bool)

(assert (=> b!7374609 (= e!4414697 (and tp!2096840 tp!2096843))))

(declare-fun b!7374610 () Bool)

(declare-fun tp!2096842 () Bool)

(assert (=> b!7374610 (= e!4414701 tp!2096842)))

(declare-fun b!7374611 () Bool)

(assert (=> b!7374611 (= e!4414697 tp_is_empty!48839)))

(declare-fun b!7374612 () Bool)

(declare-fun res!2975230 () Bool)

(assert (=> b!7374612 (=> (not res!2975230) (not e!4414695))))

(assert (=> b!7374612 (= res!2975230 e!4414700)))

(declare-fun res!2975229 () Bool)

(assert (=> b!7374612 (=> res!2975229 e!4414700)))

(assert (=> b!7374612 (= res!2975229 (not ((_ is Concat!28142) r1!2370)))))

(declare-fun b!7374613 () Bool)

(assert (=> b!7374613 (= e!4414694 e!4414698)))

(declare-fun res!2975223 () Bool)

(assert (=> b!7374613 (=> (not res!2975223) (not e!4414698))))

(assert (=> b!7374613 (= res!2975223 (select lt!2616161 cWitness!61))))

(assert (=> b!7374613 (= lt!2616161 (derivationStepZipperDown!3123 r1!2370 ct1!282 c!10362))))

(assert (= (and start!719644 res!2975225) b!7374613))

(assert (= (and b!7374613 res!2975223) b!7374604))

(assert (= (and b!7374604 res!2975226) b!7374612))

(assert (= (and b!7374612 (not res!2975229)) b!7374608))

(assert (= (and b!7374612 res!2975230) b!7374600))

(assert (= (and b!7374600 res!2975224) b!7374602))

(assert (= (and b!7374602 res!2975228) b!7374599))

(assert (= (and b!7374599 res!2975227) b!7374603))

(assert (= start!719644 b!7374607))

(assert (= start!719644 b!7374606))

(assert (= (and start!719644 ((_ is ElementMatch!19297) r1!2370)) b!7374611))

(assert (= (and start!719644 ((_ is Concat!28142) r1!2370)) b!7374601))

(assert (= (and start!719644 ((_ is Star!19297) r1!2370)) b!7374605))

(assert (= (and start!719644 ((_ is Union!19297) r1!2370)) b!7374609))

(assert (= start!719644 b!7374610))

(declare-fun m!8027078 () Bool)

(assert (=> start!719644 m!8027078))

(declare-fun m!8027080 () Bool)

(assert (=> start!719644 m!8027080))

(declare-fun m!8027082 () Bool)

(assert (=> start!719644 m!8027082))

(declare-fun m!8027084 () Bool)

(assert (=> start!719644 m!8027084))

(declare-fun m!8027086 () Bool)

(assert (=> b!7374604 m!8027086))

(declare-fun m!8027088 () Bool)

(assert (=> b!7374604 m!8027088))

(declare-fun m!8027090 () Bool)

(assert (=> b!7374604 m!8027090))

(declare-fun m!8027092 () Bool)

(assert (=> b!7374599 m!8027092))

(declare-fun m!8027094 () Bool)

(assert (=> b!7374599 m!8027094))

(declare-fun m!8027096 () Bool)

(assert (=> b!7374613 m!8027096))

(declare-fun m!8027098 () Bool)

(assert (=> b!7374613 m!8027098))

(declare-fun m!8027100 () Bool)

(assert (=> b!7374602 m!8027100))

(declare-fun m!8027102 () Bool)

(assert (=> b!7374608 m!8027102))

(declare-fun m!8027104 () Bool)

(assert (=> b!7374603 m!8027104))

(check-sat (not b!7374606) (not b!7374610) (not b!7374602) (not b!7374599) (not b!7374603) (not b!7374608) (not start!719644) (not b!7374609) (not b!7374607) (not b!7374604) (not b!7374613) (not b!7374605) (not b!7374601) tp_is_empty!48839)
(check-sat)
(get-model)

(declare-fun b!7374730 () Bool)

(declare-fun e!4414777 () (InoxSet Context!16474))

(declare-fun e!4414775 () (InoxSet Context!16474))

(assert (=> b!7374730 (= e!4414777 e!4414775)))

(declare-fun c!1370691 () Bool)

(assert (=> b!7374730 (= c!1370691 ((_ is Union!19297) r1!2370))))

(declare-fun b!7374731 () Bool)

(declare-fun e!4414772 () Bool)

(assert (=> b!7374731 (= e!4414772 (nullable!8373 (regOne!39106 r1!2370)))))

(declare-fun bm!677778 () Bool)

(declare-fun call!677786 () (InoxSet Context!16474))

(declare-fun call!677784 () (InoxSet Context!16474))

(assert (=> bm!677778 (= call!677786 call!677784)))

(declare-fun c!1370694 () Bool)

(declare-fun bm!677779 () Bool)

(declare-fun call!677787 () List!71793)

(declare-fun c!1370690 () Bool)

(assert (=> bm!677779 (= call!677787 ($colon$colon!3279 (exprs!8737 ct1!282) (ite (or c!1370694 c!1370690) (regTwo!39106 r1!2370) r1!2370)))))

(declare-fun b!7374732 () Bool)

(declare-fun c!1370693 () Bool)

(assert (=> b!7374732 (= c!1370693 ((_ is Star!19297) r1!2370))))

(declare-fun e!4414773 () (InoxSet Context!16474))

(declare-fun e!4414774 () (InoxSet Context!16474))

(assert (=> b!7374732 (= e!4414773 e!4414774)))

(declare-fun b!7374733 () Bool)

(declare-fun e!4414776 () (InoxSet Context!16474))

(declare-fun call!677783 () (InoxSet Context!16474))

(assert (=> b!7374733 (= e!4414776 ((_ map or) call!677783 call!677784))))

(declare-fun b!7374734 () Bool)

(declare-fun call!677788 () (InoxSet Context!16474))

(assert (=> b!7374734 (= e!4414775 ((_ map or) call!677783 call!677788))))

(declare-fun b!7374735 () Bool)

(assert (=> b!7374735 (= e!4414774 call!677786)))

(declare-fun bm!677780 () Bool)

(declare-fun call!677785 () List!71793)

(assert (=> bm!677780 (= call!677785 call!677787)))

(declare-fun b!7374736 () Bool)

(assert (=> b!7374736 (= e!4414777 (store ((as const (Array Context!16474 Bool)) false) ct1!282 true))))

(declare-fun bm!677781 () Bool)

(assert (=> bm!677781 (= call!677783 (derivationStepZipperDown!3123 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370)) (ite c!1370691 ct1!282 (Context!16475 call!677787)) c!10362))))

(declare-fun b!7374737 () Bool)

(assert (=> b!7374737 (= e!4414776 e!4414773)))

(assert (=> b!7374737 (= c!1370690 ((_ is Concat!28142) r1!2370))))

(declare-fun bm!677782 () Bool)

(assert (=> bm!677782 (= call!677788 (derivationStepZipperDown!3123 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370)))) (ite (or c!1370691 c!1370694) ct1!282 (Context!16475 call!677785)) c!10362))))

(declare-fun b!7374738 () Bool)

(assert (=> b!7374738 (= c!1370694 e!4414772)))

(declare-fun res!2975259 () Bool)

(assert (=> b!7374738 (=> (not res!2975259) (not e!4414772))))

(assert (=> b!7374738 (= res!2975259 ((_ is Concat!28142) r1!2370))))

(assert (=> b!7374738 (= e!4414775 e!4414776)))

(declare-fun bm!677783 () Bool)

(assert (=> bm!677783 (= call!677784 call!677788)))

(declare-fun b!7374739 () Bool)

(assert (=> b!7374739 (= e!4414773 call!677786)))

(declare-fun d!2284369 () Bool)

(declare-fun c!1370692 () Bool)

(assert (=> d!2284369 (= c!1370692 (and ((_ is ElementMatch!19297) r1!2370) (= (c!1370645 r1!2370) c!10362)))))

(assert (=> d!2284369 (= (derivationStepZipperDown!3123 r1!2370 ct1!282 c!10362) e!4414777)))

(declare-fun b!7374740 () Bool)

(assert (=> b!7374740 (= e!4414774 ((as const (Array Context!16474 Bool)) false))))

(assert (= (and d!2284369 c!1370692) b!7374736))

(assert (= (and d!2284369 (not c!1370692)) b!7374730))

(assert (= (and b!7374730 c!1370691) b!7374734))

(assert (= (and b!7374730 (not c!1370691)) b!7374738))

(assert (= (and b!7374738 res!2975259) b!7374731))

(assert (= (and b!7374738 c!1370694) b!7374733))

(assert (= (and b!7374738 (not c!1370694)) b!7374737))

(assert (= (and b!7374737 c!1370690) b!7374739))

(assert (= (and b!7374737 (not c!1370690)) b!7374732))

(assert (= (and b!7374732 c!1370693) b!7374735))

(assert (= (and b!7374732 (not c!1370693)) b!7374740))

(assert (= (or b!7374739 b!7374735) bm!677780))

(assert (= (or b!7374739 b!7374735) bm!677778))

(assert (= (or b!7374733 bm!677778) bm!677783))

(assert (= (or b!7374733 bm!677780) bm!677779))

(assert (= (or b!7374734 bm!677783) bm!677782))

(assert (= (or b!7374734 b!7374733) bm!677781))

(assert (=> b!7374731 m!8027102))

(declare-fun m!8027174 () Bool)

(assert (=> b!7374736 m!8027174))

(declare-fun m!8027176 () Bool)

(assert (=> bm!677781 m!8027176))

(declare-fun m!8027178 () Bool)

(assert (=> bm!677779 m!8027178))

(declare-fun m!8027180 () Bool)

(assert (=> bm!677782 m!8027180))

(assert (=> b!7374613 d!2284369))

(declare-fun d!2284395 () Bool)

(declare-fun nullableFct!3352 (Regex!19297) Bool)

(assert (=> d!2284395 (= (nullable!8373 (regOne!39106 r1!2370)) (nullableFct!3352 (regOne!39106 r1!2370)))))

(declare-fun bs!1921174 () Bool)

(assert (= bs!1921174 d!2284395))

(declare-fun m!8027182 () Bool)

(assert (=> bs!1921174 m!8027182))

(assert (=> b!7374608 d!2284395))

(declare-fun b!7374805 () Bool)

(declare-fun e!4414815 () Bool)

(declare-fun e!4414814 () Bool)

(assert (=> b!7374805 (= e!4414815 e!4414814)))

(declare-fun res!2975279 () Bool)

(assert (=> b!7374805 (=> (not res!2975279) (not e!4414814))))

(declare-fun call!677800 () Bool)

(assert (=> b!7374805 (= res!2975279 call!677800)))

(declare-fun d!2284397 () Bool)

(declare-fun res!2975276 () Bool)

(declare-fun e!4414816 () Bool)

(assert (=> d!2284397 (=> res!2975276 e!4414816)))

(assert (=> d!2284397 (= res!2975276 ((_ is ElementMatch!19297) (regTwo!39106 r1!2370)))))

(assert (=> d!2284397 (= (validRegex!9893 (regTwo!39106 r1!2370)) e!4414816)))

(declare-fun b!7374806 () Bool)

(declare-fun res!2975275 () Bool)

(assert (=> b!7374806 (=> res!2975275 e!4414815)))

(assert (=> b!7374806 (= res!2975275 (not ((_ is Concat!28142) (regTwo!39106 r1!2370))))))

(declare-fun e!4414812 () Bool)

(assert (=> b!7374806 (= e!4414812 e!4414815)))

(declare-fun bm!677793 () Bool)

(declare-fun call!677799 () Bool)

(assert (=> bm!677793 (= call!677800 call!677799)))

(declare-fun b!7374807 () Bool)

(declare-fun res!2975278 () Bool)

(declare-fun e!4414811 () Bool)

(assert (=> b!7374807 (=> (not res!2975278) (not e!4414811))))

(declare-fun call!677798 () Bool)

(assert (=> b!7374807 (= res!2975278 call!677798)))

(assert (=> b!7374807 (= e!4414812 e!4414811)))

(declare-fun b!7374808 () Bool)

(assert (=> b!7374808 (= e!4414814 call!677798)))

(declare-fun b!7374809 () Bool)

(declare-fun e!4414817 () Bool)

(assert (=> b!7374809 (= e!4414817 e!4414812)))

(declare-fun c!1370701 () Bool)

(assert (=> b!7374809 (= c!1370701 ((_ is Union!19297) (regTwo!39106 r1!2370)))))

(declare-fun b!7374810 () Bool)

(assert (=> b!7374810 (= e!4414816 e!4414817)))

(declare-fun c!1370702 () Bool)

(assert (=> b!7374810 (= c!1370702 ((_ is Star!19297) (regTwo!39106 r1!2370)))))

(declare-fun b!7374811 () Bool)

(declare-fun e!4414813 () Bool)

(assert (=> b!7374811 (= e!4414817 e!4414813)))

(declare-fun res!2975277 () Bool)

(assert (=> b!7374811 (= res!2975277 (not (nullable!8373 (reg!19626 (regTwo!39106 r1!2370)))))))

(assert (=> b!7374811 (=> (not res!2975277) (not e!4414813))))

(declare-fun b!7374812 () Bool)

(assert (=> b!7374812 (= e!4414813 call!677799)))

(declare-fun bm!677794 () Bool)

(assert (=> bm!677794 (= call!677799 (validRegex!9893 (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370))))))))

(declare-fun bm!677795 () Bool)

(assert (=> bm!677795 (= call!677798 (validRegex!9893 (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370)))))))

(declare-fun b!7374813 () Bool)

(assert (=> b!7374813 (= e!4414811 call!677800)))

(assert (= (and d!2284397 (not res!2975276)) b!7374810))

(assert (= (and b!7374810 c!1370702) b!7374811))

(assert (= (and b!7374810 (not c!1370702)) b!7374809))

(assert (= (and b!7374811 res!2975277) b!7374812))

(assert (= (and b!7374809 c!1370701) b!7374807))

(assert (= (and b!7374809 (not c!1370701)) b!7374806))

(assert (= (and b!7374807 res!2975278) b!7374813))

(assert (= (and b!7374806 (not res!2975275)) b!7374805))

(assert (= (and b!7374805 res!2975279) b!7374808))

(assert (= (or b!7374807 b!7374808) bm!677795))

(assert (= (or b!7374813 b!7374805) bm!677793))

(assert (= (or b!7374812 bm!677793) bm!677794))

(declare-fun m!8027184 () Bool)

(assert (=> b!7374811 m!8027184))

(declare-fun m!8027186 () Bool)

(assert (=> bm!677794 m!8027186))

(declare-fun m!8027188 () Bool)

(assert (=> bm!677795 m!8027188))

(assert (=> b!7374602 d!2284397))

(declare-fun b!7374814 () Bool)

(declare-fun e!4414822 () Bool)

(declare-fun e!4414821 () Bool)

(assert (=> b!7374814 (= e!4414822 e!4414821)))

(declare-fun res!2975284 () Bool)

(assert (=> b!7374814 (=> (not res!2975284) (not e!4414821))))

(declare-fun call!677803 () Bool)

(assert (=> b!7374814 (= res!2975284 call!677803)))

(declare-fun d!2284399 () Bool)

(declare-fun res!2975281 () Bool)

(declare-fun e!4414823 () Bool)

(assert (=> d!2284399 (=> res!2975281 e!4414823)))

(assert (=> d!2284399 (= res!2975281 ((_ is ElementMatch!19297) r1!2370))))

(assert (=> d!2284399 (= (validRegex!9893 r1!2370) e!4414823)))

(declare-fun b!7374815 () Bool)

(declare-fun res!2975280 () Bool)

(assert (=> b!7374815 (=> res!2975280 e!4414822)))

(assert (=> b!7374815 (= res!2975280 (not ((_ is Concat!28142) r1!2370)))))

(declare-fun e!4414819 () Bool)

(assert (=> b!7374815 (= e!4414819 e!4414822)))

(declare-fun bm!677796 () Bool)

(declare-fun call!677802 () Bool)

(assert (=> bm!677796 (= call!677803 call!677802)))

(declare-fun b!7374816 () Bool)

(declare-fun res!2975283 () Bool)

(declare-fun e!4414818 () Bool)

(assert (=> b!7374816 (=> (not res!2975283) (not e!4414818))))

(declare-fun call!677801 () Bool)

(assert (=> b!7374816 (= res!2975283 call!677801)))

(assert (=> b!7374816 (= e!4414819 e!4414818)))

(declare-fun b!7374817 () Bool)

(assert (=> b!7374817 (= e!4414821 call!677801)))

(declare-fun b!7374818 () Bool)

(declare-fun e!4414824 () Bool)

(assert (=> b!7374818 (= e!4414824 e!4414819)))

(declare-fun c!1370703 () Bool)

(assert (=> b!7374818 (= c!1370703 ((_ is Union!19297) r1!2370))))

(declare-fun b!7374819 () Bool)

(assert (=> b!7374819 (= e!4414823 e!4414824)))

(declare-fun c!1370704 () Bool)

(assert (=> b!7374819 (= c!1370704 ((_ is Star!19297) r1!2370))))

(declare-fun b!7374820 () Bool)

(declare-fun e!4414820 () Bool)

(assert (=> b!7374820 (= e!4414824 e!4414820)))

(declare-fun res!2975282 () Bool)

(assert (=> b!7374820 (= res!2975282 (not (nullable!8373 (reg!19626 r1!2370))))))

(assert (=> b!7374820 (=> (not res!2975282) (not e!4414820))))

(declare-fun b!7374821 () Bool)

(assert (=> b!7374821 (= e!4414820 call!677802)))

(declare-fun bm!677797 () Bool)

(assert (=> bm!677797 (= call!677802 (validRegex!9893 (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370)))))))

(declare-fun bm!677798 () Bool)

(assert (=> bm!677798 (= call!677801 (validRegex!9893 (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370))))))

(declare-fun b!7374822 () Bool)

(assert (=> b!7374822 (= e!4414818 call!677803)))

(assert (= (and d!2284399 (not res!2975281)) b!7374819))

(assert (= (and b!7374819 c!1370704) b!7374820))

(assert (= (and b!7374819 (not c!1370704)) b!7374818))

(assert (= (and b!7374820 res!2975282) b!7374821))

(assert (= (and b!7374818 c!1370703) b!7374816))

(assert (= (and b!7374818 (not c!1370703)) b!7374815))

(assert (= (and b!7374816 res!2975283) b!7374822))

(assert (= (and b!7374815 (not res!2975280)) b!7374814))

(assert (= (and b!7374814 res!2975284) b!7374817))

(assert (= (or b!7374816 b!7374817) bm!677798))

(assert (= (or b!7374822 b!7374814) bm!677796))

(assert (= (or b!7374821 bm!677796) bm!677797))

(declare-fun m!8027190 () Bool)

(assert (=> b!7374820 m!8027190))

(declare-fun m!8027192 () Bool)

(assert (=> bm!677797 m!8027192))

(declare-fun m!8027194 () Bool)

(assert (=> bm!677798 m!8027194))

(assert (=> start!719644 d!2284399))

(declare-fun bs!1921175 () Bool)

(declare-fun d!2284401 () Bool)

(assert (= bs!1921175 (and d!2284401 b!7374604)))

(declare-fun lambda!458262 () Int)

(assert (=> bs!1921175 (= lambda!458262 lambda!458253)))

(declare-fun forall!18095 (List!71793 Int) Bool)

(assert (=> d!2284401 (= (inv!91582 cWitness!61) (forall!18095 (exprs!8737 cWitness!61) lambda!458262))))

(declare-fun bs!1921176 () Bool)

(assert (= bs!1921176 d!2284401))

(declare-fun m!8027196 () Bool)

(assert (=> bs!1921176 m!8027196))

(assert (=> start!719644 d!2284401))

(declare-fun bs!1921177 () Bool)

(declare-fun d!2284403 () Bool)

(assert (= bs!1921177 (and d!2284403 b!7374604)))

(declare-fun lambda!458263 () Int)

(assert (=> bs!1921177 (= lambda!458263 lambda!458253)))

(declare-fun bs!1921178 () Bool)

(assert (= bs!1921178 (and d!2284403 d!2284401)))

(assert (=> bs!1921178 (= lambda!458263 lambda!458262)))

(assert (=> d!2284403 (= (inv!91582 ct1!282) (forall!18095 (exprs!8737 ct1!282) lambda!458263))))

(declare-fun bs!1921179 () Bool)

(assert (= bs!1921179 d!2284403))

(declare-fun m!8027198 () Bool)

(assert (=> bs!1921179 m!8027198))

(assert (=> start!719644 d!2284403))

(declare-fun bs!1921180 () Bool)

(declare-fun d!2284405 () Bool)

(assert (= bs!1921180 (and d!2284405 b!7374604)))

(declare-fun lambda!458264 () Int)

(assert (=> bs!1921180 (= lambda!458264 lambda!458253)))

(declare-fun bs!1921181 () Bool)

(assert (= bs!1921181 (and d!2284405 d!2284401)))

(assert (=> bs!1921181 (= lambda!458264 lambda!458262)))

(declare-fun bs!1921182 () Bool)

(assert (= bs!1921182 (and d!2284405 d!2284403)))

(assert (=> bs!1921182 (= lambda!458264 lambda!458263)))

(assert (=> d!2284405 (= (inv!91582 ct2!378) (forall!18095 (exprs!8737 ct2!378) lambda!458264))))

(declare-fun bs!1921183 () Bool)

(assert (= bs!1921183 d!2284405))

(declare-fun m!8027200 () Bool)

(assert (=> bs!1921183 m!8027200))

(assert (=> start!719644 d!2284405))

(declare-fun b!7374823 () Bool)

(declare-fun e!4414830 () (InoxSet Context!16474))

(declare-fun e!4414828 () (InoxSet Context!16474))

(assert (=> b!7374823 (= e!4414830 e!4414828)))

(declare-fun c!1370706 () Bool)

(assert (=> b!7374823 (= c!1370706 ((_ is Union!19297) (regOne!39106 r1!2370)))))

(declare-fun b!7374824 () Bool)

(declare-fun e!4414825 () Bool)

(assert (=> b!7374824 (= e!4414825 (nullable!8373 (regOne!39106 (regOne!39106 r1!2370))))))

(declare-fun bm!677799 () Bool)

(declare-fun call!677807 () (InoxSet Context!16474))

(declare-fun call!677805 () (InoxSet Context!16474))

(assert (=> bm!677799 (= call!677807 call!677805)))

(declare-fun c!1370705 () Bool)

(declare-fun c!1370709 () Bool)

(declare-fun call!677808 () List!71793)

(declare-fun bm!677800 () Bool)

(assert (=> bm!677800 (= call!677808 ($colon$colon!3279 (exprs!8737 lt!2616160) (ite (or c!1370709 c!1370705) (regTwo!39106 (regOne!39106 r1!2370)) (regOne!39106 r1!2370))))))

(declare-fun b!7374825 () Bool)

(declare-fun c!1370708 () Bool)

(assert (=> b!7374825 (= c!1370708 ((_ is Star!19297) (regOne!39106 r1!2370)))))

(declare-fun e!4414826 () (InoxSet Context!16474))

(declare-fun e!4414827 () (InoxSet Context!16474))

(assert (=> b!7374825 (= e!4414826 e!4414827)))

(declare-fun b!7374826 () Bool)

(declare-fun e!4414829 () (InoxSet Context!16474))

(declare-fun call!677804 () (InoxSet Context!16474))

(assert (=> b!7374826 (= e!4414829 ((_ map or) call!677804 call!677805))))

(declare-fun b!7374827 () Bool)

(declare-fun call!677809 () (InoxSet Context!16474))

(assert (=> b!7374827 (= e!4414828 ((_ map or) call!677804 call!677809))))

(declare-fun b!7374828 () Bool)

(assert (=> b!7374828 (= e!4414827 call!677807)))

(declare-fun bm!677801 () Bool)

(declare-fun call!677806 () List!71793)

(assert (=> bm!677801 (= call!677806 call!677808)))

(declare-fun b!7374829 () Bool)

(assert (=> b!7374829 (= e!4414830 (store ((as const (Array Context!16474 Bool)) false) lt!2616160 true))))

(declare-fun bm!677802 () Bool)

(assert (=> bm!677802 (= call!677804 (derivationStepZipperDown!3123 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370))) (ite c!1370706 lt!2616160 (Context!16475 call!677808)) c!10362))))

(declare-fun b!7374830 () Bool)

(assert (=> b!7374830 (= e!4414829 e!4414826)))

(assert (=> b!7374830 (= c!1370705 ((_ is Concat!28142) (regOne!39106 r1!2370)))))

(declare-fun bm!677803 () Bool)

(assert (=> bm!677803 (= call!677809 (derivationStepZipperDown!3123 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370))))) (ite (or c!1370706 c!1370709) lt!2616160 (Context!16475 call!677806)) c!10362))))

(declare-fun b!7374831 () Bool)

(assert (=> b!7374831 (= c!1370709 e!4414825)))

(declare-fun res!2975285 () Bool)

(assert (=> b!7374831 (=> (not res!2975285) (not e!4414825))))

(assert (=> b!7374831 (= res!2975285 ((_ is Concat!28142) (regOne!39106 r1!2370)))))

(assert (=> b!7374831 (= e!4414828 e!4414829)))

(declare-fun bm!677804 () Bool)

(assert (=> bm!677804 (= call!677805 call!677809)))

(declare-fun b!7374832 () Bool)

(assert (=> b!7374832 (= e!4414826 call!677807)))

(declare-fun d!2284407 () Bool)

(declare-fun c!1370707 () Bool)

(assert (=> d!2284407 (= c!1370707 (and ((_ is ElementMatch!19297) (regOne!39106 r1!2370)) (= (c!1370645 (regOne!39106 r1!2370)) c!10362)))))

(assert (=> d!2284407 (= (derivationStepZipperDown!3123 (regOne!39106 r1!2370) lt!2616160 c!10362) e!4414830)))

(declare-fun b!7374833 () Bool)

(assert (=> b!7374833 (= e!4414827 ((as const (Array Context!16474 Bool)) false))))

(assert (= (and d!2284407 c!1370707) b!7374829))

(assert (= (and d!2284407 (not c!1370707)) b!7374823))

(assert (= (and b!7374823 c!1370706) b!7374827))

(assert (= (and b!7374823 (not c!1370706)) b!7374831))

(assert (= (and b!7374831 res!2975285) b!7374824))

(assert (= (and b!7374831 c!1370709) b!7374826))

(assert (= (and b!7374831 (not c!1370709)) b!7374830))

(assert (= (and b!7374830 c!1370705) b!7374832))

(assert (= (and b!7374830 (not c!1370705)) b!7374825))

(assert (= (and b!7374825 c!1370708) b!7374828))

(assert (= (and b!7374825 (not c!1370708)) b!7374833))

(assert (= (or b!7374832 b!7374828) bm!677801))

(assert (= (or b!7374832 b!7374828) bm!677799))

(assert (= (or b!7374826 bm!677799) bm!677804))

(assert (= (or b!7374826 bm!677801) bm!677800))

(assert (= (or b!7374827 bm!677804) bm!677803))

(assert (= (or b!7374827 b!7374826) bm!677802))

(declare-fun m!8027202 () Bool)

(assert (=> b!7374824 m!8027202))

(declare-fun m!8027204 () Bool)

(assert (=> b!7374829 m!8027204))

(declare-fun m!8027206 () Bool)

(assert (=> bm!677802 m!8027206))

(declare-fun m!8027208 () Bool)

(assert (=> bm!677800 m!8027208))

(declare-fun m!8027210 () Bool)

(assert (=> bm!677803 m!8027210))

(assert (=> b!7374599 d!2284407))

(declare-fun d!2284409 () Bool)

(assert (=> d!2284409 (= ($colon$colon!3279 (exprs!8737 ct1!282) (regTwo!39106 r1!2370)) (Cons!71669 (regTwo!39106 r1!2370) (exprs!8737 ct1!282)))))

(assert (=> b!7374599 d!2284409))

(declare-fun b!7374834 () Bool)

(declare-fun e!4414836 () (InoxSet Context!16474))

(declare-fun e!4414834 () (InoxSet Context!16474))

(assert (=> b!7374834 (= e!4414836 e!4414834)))

(declare-fun c!1370711 () Bool)

(assert (=> b!7374834 (= c!1370711 ((_ is Union!19297) r1!2370))))

(declare-fun b!7374835 () Bool)

(declare-fun e!4414831 () Bool)

(assert (=> b!7374835 (= e!4414831 (nullable!8373 (regOne!39106 r1!2370)))))

(declare-fun bm!677805 () Bool)

(declare-fun call!677813 () (InoxSet Context!16474))

(declare-fun call!677811 () (InoxSet Context!16474))

(assert (=> bm!677805 (= call!677813 call!677811)))

(declare-fun call!677814 () List!71793)

(declare-fun c!1370714 () Bool)

(declare-fun bm!677806 () Bool)

(declare-fun c!1370710 () Bool)

(assert (=> bm!677806 (= call!677814 ($colon$colon!3279 (exprs!8737 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378)))) (ite (or c!1370714 c!1370710) (regTwo!39106 r1!2370) r1!2370)))))

(declare-fun b!7374836 () Bool)

(declare-fun c!1370713 () Bool)

(assert (=> b!7374836 (= c!1370713 ((_ is Star!19297) r1!2370))))

(declare-fun e!4414832 () (InoxSet Context!16474))

(declare-fun e!4414833 () (InoxSet Context!16474))

(assert (=> b!7374836 (= e!4414832 e!4414833)))

(declare-fun b!7374837 () Bool)

(declare-fun e!4414835 () (InoxSet Context!16474))

(declare-fun call!677810 () (InoxSet Context!16474))

(assert (=> b!7374837 (= e!4414835 ((_ map or) call!677810 call!677811))))

(declare-fun b!7374838 () Bool)

(declare-fun call!677815 () (InoxSet Context!16474))

(assert (=> b!7374838 (= e!4414834 ((_ map or) call!677810 call!677815))))

(declare-fun b!7374839 () Bool)

(assert (=> b!7374839 (= e!4414833 call!677813)))

(declare-fun bm!677807 () Bool)

(declare-fun call!677812 () List!71793)

(assert (=> bm!677807 (= call!677812 call!677814)))

(declare-fun b!7374840 () Bool)

(assert (=> b!7374840 (= e!4414836 (store ((as const (Array Context!16474 Bool)) false) (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) true))))

(declare-fun bm!677808 () Bool)

(assert (=> bm!677808 (= call!677810 (derivationStepZipperDown!3123 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370)) (ite c!1370711 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677814)) c!10362))))

(declare-fun b!7374841 () Bool)

(assert (=> b!7374841 (= e!4414835 e!4414832)))

(assert (=> b!7374841 (= c!1370710 ((_ is Concat!28142) r1!2370))))

(declare-fun bm!677809 () Bool)

(assert (=> bm!677809 (= call!677815 (derivationStepZipperDown!3123 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370)))) (ite (or c!1370711 c!1370714) (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677812)) c!10362))))

(declare-fun b!7374842 () Bool)

(assert (=> b!7374842 (= c!1370714 e!4414831)))

(declare-fun res!2975286 () Bool)

(assert (=> b!7374842 (=> (not res!2975286) (not e!4414831))))

(assert (=> b!7374842 (= res!2975286 ((_ is Concat!28142) r1!2370))))

(assert (=> b!7374842 (= e!4414834 e!4414835)))

(declare-fun bm!677810 () Bool)

(assert (=> bm!677810 (= call!677811 call!677815)))

(declare-fun b!7374843 () Bool)

(assert (=> b!7374843 (= e!4414832 call!677813)))

(declare-fun d!2284411 () Bool)

(declare-fun c!1370712 () Bool)

(assert (=> d!2284411 (= c!1370712 (and ((_ is ElementMatch!19297) r1!2370) (= (c!1370645 r1!2370) c!10362)))))

(assert (=> d!2284411 (= (derivationStepZipperDown!3123 r1!2370 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) c!10362) e!4414836)))

(declare-fun b!7374844 () Bool)

(assert (=> b!7374844 (= e!4414833 ((as const (Array Context!16474 Bool)) false))))

(assert (= (and d!2284411 c!1370712) b!7374840))

(assert (= (and d!2284411 (not c!1370712)) b!7374834))

(assert (= (and b!7374834 c!1370711) b!7374838))

(assert (= (and b!7374834 (not c!1370711)) b!7374842))

(assert (= (and b!7374842 res!2975286) b!7374835))

(assert (= (and b!7374842 c!1370714) b!7374837))

(assert (= (and b!7374842 (not c!1370714)) b!7374841))

(assert (= (and b!7374841 c!1370710) b!7374843))

(assert (= (and b!7374841 (not c!1370710)) b!7374836))

(assert (= (and b!7374836 c!1370713) b!7374839))

(assert (= (and b!7374836 (not c!1370713)) b!7374844))

(assert (= (or b!7374843 b!7374839) bm!677807))

(assert (= (or b!7374843 b!7374839) bm!677805))

(assert (= (or b!7374837 bm!677805) bm!677810))

(assert (= (or b!7374837 bm!677807) bm!677806))

(assert (= (or b!7374838 bm!677810) bm!677809))

(assert (= (or b!7374838 b!7374837) bm!677808))

(assert (=> b!7374835 m!8027102))

(declare-fun m!8027212 () Bool)

(assert (=> b!7374840 m!8027212))

(declare-fun m!8027214 () Bool)

(assert (=> bm!677808 m!8027214))

(declare-fun m!8027216 () Bool)

(assert (=> bm!677806 m!8027216))

(declare-fun m!8027218 () Bool)

(assert (=> bm!677809 m!8027218))

(assert (=> b!7374604 d!2284411))

(declare-fun b!7374853 () Bool)

(declare-fun e!4414841 () List!71793)

(assert (=> b!7374853 (= e!4414841 (exprs!8737 ct2!378))))

(declare-fun b!7374856 () Bool)

(declare-fun e!4414842 () Bool)

(declare-fun lt!2616170 () List!71793)

(assert (=> b!7374856 (= e!4414842 (or (not (= (exprs!8737 ct2!378) Nil!71669)) (= lt!2616170 (exprs!8737 ct1!282))))))

(declare-fun b!7374855 () Bool)

(declare-fun res!2975291 () Bool)

(assert (=> b!7374855 (=> (not res!2975291) (not e!4414842))))

(declare-fun size!42147 (List!71793) Int)

(assert (=> b!7374855 (= res!2975291 (= (size!42147 lt!2616170) (+ (size!42147 (exprs!8737 ct1!282)) (size!42147 (exprs!8737 ct2!378)))))))

(declare-fun d!2284413 () Bool)

(assert (=> d!2284413 e!4414842))

(declare-fun res!2975292 () Bool)

(assert (=> d!2284413 (=> (not res!2975292) (not e!4414842))))

(declare-fun content!15169 (List!71793) (InoxSet Regex!19297))

(assert (=> d!2284413 (= res!2975292 (= (content!15169 lt!2616170) ((_ map or) (content!15169 (exprs!8737 ct1!282)) (content!15169 (exprs!8737 ct2!378)))))))

(assert (=> d!2284413 (= lt!2616170 e!4414841)))

(declare-fun c!1370717 () Bool)

(assert (=> d!2284413 (= c!1370717 ((_ is Nil!71669) (exprs!8737 ct1!282)))))

(assert (=> d!2284413 (= (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378)) lt!2616170)))

(declare-fun b!7374854 () Bool)

(assert (=> b!7374854 (= e!4414841 (Cons!71669 (h!78117 (exprs!8737 ct1!282)) (++!17113 (t!386266 (exprs!8737 ct1!282)) (exprs!8737 ct2!378))))))

(assert (= (and d!2284413 c!1370717) b!7374853))

(assert (= (and d!2284413 (not c!1370717)) b!7374854))

(assert (= (and d!2284413 res!2975292) b!7374855))

(assert (= (and b!7374855 res!2975291) b!7374856))

(declare-fun m!8027220 () Bool)

(assert (=> b!7374855 m!8027220))

(declare-fun m!8027222 () Bool)

(assert (=> b!7374855 m!8027222))

(declare-fun m!8027224 () Bool)

(assert (=> b!7374855 m!8027224))

(declare-fun m!8027226 () Bool)

(assert (=> d!2284413 m!8027226))

(declare-fun m!8027228 () Bool)

(assert (=> d!2284413 m!8027228))

(declare-fun m!8027230 () Bool)

(assert (=> d!2284413 m!8027230))

(declare-fun m!8027232 () Bool)

(assert (=> b!7374854 m!8027232))

(assert (=> b!7374604 d!2284413))

(declare-fun d!2284415 () Bool)

(assert (=> d!2284415 (forall!18095 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378)) lambda!458253)))

(declare-fun lt!2616173 () Unit!165543)

(declare-fun choose!57323 (List!71793 List!71793 Int) Unit!165543)

(assert (=> d!2284415 (= lt!2616173 (choose!57323 (exprs!8737 ct1!282) (exprs!8737 ct2!378) lambda!458253))))

(assert (=> d!2284415 (forall!18095 (exprs!8737 ct1!282) lambda!458253)))

(assert (=> d!2284415 (= (lemmaConcatPreservesForall!1970 (exprs!8737 ct1!282) (exprs!8737 ct2!378) lambda!458253) lt!2616173)))

(declare-fun bs!1921184 () Bool)

(assert (= bs!1921184 d!2284415))

(assert (=> bs!1921184 m!8027086))

(assert (=> bs!1921184 m!8027086))

(declare-fun m!8027234 () Bool)

(assert (=> bs!1921184 m!8027234))

(declare-fun m!8027236 () Bool)

(assert (=> bs!1921184 m!8027236))

(declare-fun m!8027238 () Bool)

(assert (=> bs!1921184 m!8027238))

(assert (=> b!7374604 d!2284415))

(declare-fun bs!1921185 () Bool)

(declare-fun d!2284417 () Bool)

(assert (= bs!1921185 (and d!2284417 b!7374604)))

(declare-fun lambda!458265 () Int)

(assert (=> bs!1921185 (= lambda!458265 lambda!458253)))

(declare-fun bs!1921186 () Bool)

(assert (= bs!1921186 (and d!2284417 d!2284401)))

(assert (=> bs!1921186 (= lambda!458265 lambda!458262)))

(declare-fun bs!1921187 () Bool)

(assert (= bs!1921187 (and d!2284417 d!2284403)))

(assert (=> bs!1921187 (= lambda!458265 lambda!458263)))

(declare-fun bs!1921188 () Bool)

(assert (= bs!1921188 (and d!2284417 d!2284405)))

(assert (=> bs!1921188 (= lambda!458265 lambda!458264)))

(assert (=> d!2284417 (= (inv!91582 lt!2616160) (forall!18095 (exprs!8737 lt!2616160) lambda!458265))))

(declare-fun bs!1921189 () Bool)

(assert (= bs!1921189 d!2284417))

(declare-fun m!8027240 () Bool)

(assert (=> bs!1921189 m!8027240))

(assert (=> b!7374603 d!2284417))

(declare-fun b!7374861 () Bool)

(declare-fun e!4414845 () Bool)

(declare-fun tp!2096893 () Bool)

(declare-fun tp!2096894 () Bool)

(assert (=> b!7374861 (= e!4414845 (and tp!2096893 tp!2096894))))

(assert (=> b!7374607 (= tp!2096836 e!4414845)))

(assert (= (and b!7374607 ((_ is Cons!71669) (exprs!8737 cWitness!61))) b!7374861))

(declare-fun b!7374875 () Bool)

(declare-fun e!4414848 () Bool)

(declare-fun tp!2096905 () Bool)

(declare-fun tp!2096906 () Bool)

(assert (=> b!7374875 (= e!4414848 (and tp!2096905 tp!2096906))))

(declare-fun b!7374874 () Bool)

(declare-fun tp!2096907 () Bool)

(assert (=> b!7374874 (= e!4414848 tp!2096907)))

(assert (=> b!7374601 (= tp!2096839 e!4414848)))

(declare-fun b!7374873 () Bool)

(declare-fun tp!2096909 () Bool)

(declare-fun tp!2096908 () Bool)

(assert (=> b!7374873 (= e!4414848 (and tp!2096909 tp!2096908))))

(declare-fun b!7374872 () Bool)

(assert (=> b!7374872 (= e!4414848 tp_is_empty!48839)))

(assert (= (and b!7374601 ((_ is ElementMatch!19297) (regOne!39106 r1!2370))) b!7374872))

(assert (= (and b!7374601 ((_ is Concat!28142) (regOne!39106 r1!2370))) b!7374873))

(assert (= (and b!7374601 ((_ is Star!19297) (regOne!39106 r1!2370))) b!7374874))

(assert (= (and b!7374601 ((_ is Union!19297) (regOne!39106 r1!2370))) b!7374875))

(declare-fun b!7374879 () Bool)

(declare-fun e!4414849 () Bool)

(declare-fun tp!2096910 () Bool)

(declare-fun tp!2096911 () Bool)

(assert (=> b!7374879 (= e!4414849 (and tp!2096910 tp!2096911))))

(declare-fun b!7374878 () Bool)

(declare-fun tp!2096912 () Bool)

(assert (=> b!7374878 (= e!4414849 tp!2096912)))

(assert (=> b!7374601 (= tp!2096837 e!4414849)))

(declare-fun b!7374877 () Bool)

(declare-fun tp!2096914 () Bool)

(declare-fun tp!2096913 () Bool)

(assert (=> b!7374877 (= e!4414849 (and tp!2096914 tp!2096913))))

(declare-fun b!7374876 () Bool)

(assert (=> b!7374876 (= e!4414849 tp_is_empty!48839)))

(assert (= (and b!7374601 ((_ is ElementMatch!19297) (regTwo!39106 r1!2370))) b!7374876))

(assert (= (and b!7374601 ((_ is Concat!28142) (regTwo!39106 r1!2370))) b!7374877))

(assert (= (and b!7374601 ((_ is Star!19297) (regTwo!39106 r1!2370))) b!7374878))

(assert (= (and b!7374601 ((_ is Union!19297) (regTwo!39106 r1!2370))) b!7374879))

(declare-fun b!7374880 () Bool)

(declare-fun e!4414850 () Bool)

(declare-fun tp!2096915 () Bool)

(declare-fun tp!2096916 () Bool)

(assert (=> b!7374880 (= e!4414850 (and tp!2096915 tp!2096916))))

(assert (=> b!7374606 (= tp!2096838 e!4414850)))

(assert (= (and b!7374606 ((_ is Cons!71669) (exprs!8737 ct1!282))) b!7374880))

(declare-fun b!7374884 () Bool)

(declare-fun e!4414851 () Bool)

(declare-fun tp!2096917 () Bool)

(declare-fun tp!2096918 () Bool)

(assert (=> b!7374884 (= e!4414851 (and tp!2096917 tp!2096918))))

(declare-fun b!7374883 () Bool)

(declare-fun tp!2096919 () Bool)

(assert (=> b!7374883 (= e!4414851 tp!2096919)))

(assert (=> b!7374605 (= tp!2096841 e!4414851)))

(declare-fun b!7374882 () Bool)

(declare-fun tp!2096921 () Bool)

(declare-fun tp!2096920 () Bool)

(assert (=> b!7374882 (= e!4414851 (and tp!2096921 tp!2096920))))

(declare-fun b!7374881 () Bool)

(assert (=> b!7374881 (= e!4414851 tp_is_empty!48839)))

(assert (= (and b!7374605 ((_ is ElementMatch!19297) (reg!19626 r1!2370))) b!7374881))

(assert (= (and b!7374605 ((_ is Concat!28142) (reg!19626 r1!2370))) b!7374882))

(assert (= (and b!7374605 ((_ is Star!19297) (reg!19626 r1!2370))) b!7374883))

(assert (= (and b!7374605 ((_ is Union!19297) (reg!19626 r1!2370))) b!7374884))

(declare-fun b!7374885 () Bool)

(declare-fun e!4414852 () Bool)

(declare-fun tp!2096922 () Bool)

(declare-fun tp!2096923 () Bool)

(assert (=> b!7374885 (= e!4414852 (and tp!2096922 tp!2096923))))

(assert (=> b!7374610 (= tp!2096842 e!4414852)))

(assert (= (and b!7374610 ((_ is Cons!71669) (exprs!8737 ct2!378))) b!7374885))

(declare-fun b!7374889 () Bool)

(declare-fun e!4414853 () Bool)

(declare-fun tp!2096924 () Bool)

(declare-fun tp!2096925 () Bool)

(assert (=> b!7374889 (= e!4414853 (and tp!2096924 tp!2096925))))

(declare-fun b!7374888 () Bool)

(declare-fun tp!2096926 () Bool)

(assert (=> b!7374888 (= e!4414853 tp!2096926)))

(assert (=> b!7374609 (= tp!2096840 e!4414853)))

(declare-fun b!7374887 () Bool)

(declare-fun tp!2096928 () Bool)

(declare-fun tp!2096927 () Bool)

(assert (=> b!7374887 (= e!4414853 (and tp!2096928 tp!2096927))))

(declare-fun b!7374886 () Bool)

(assert (=> b!7374886 (= e!4414853 tp_is_empty!48839)))

(assert (= (and b!7374609 ((_ is ElementMatch!19297) (regOne!39107 r1!2370))) b!7374886))

(assert (= (and b!7374609 ((_ is Concat!28142) (regOne!39107 r1!2370))) b!7374887))

(assert (= (and b!7374609 ((_ is Star!19297) (regOne!39107 r1!2370))) b!7374888))

(assert (= (and b!7374609 ((_ is Union!19297) (regOne!39107 r1!2370))) b!7374889))

(declare-fun b!7374893 () Bool)

(declare-fun e!4414854 () Bool)

(declare-fun tp!2096929 () Bool)

(declare-fun tp!2096930 () Bool)

(assert (=> b!7374893 (= e!4414854 (and tp!2096929 tp!2096930))))

(declare-fun b!7374892 () Bool)

(declare-fun tp!2096931 () Bool)

(assert (=> b!7374892 (= e!4414854 tp!2096931)))

(assert (=> b!7374609 (= tp!2096843 e!4414854)))

(declare-fun b!7374891 () Bool)

(declare-fun tp!2096933 () Bool)

(declare-fun tp!2096932 () Bool)

(assert (=> b!7374891 (= e!4414854 (and tp!2096933 tp!2096932))))

(declare-fun b!7374890 () Bool)

(assert (=> b!7374890 (= e!4414854 tp_is_empty!48839)))

(assert (= (and b!7374609 ((_ is ElementMatch!19297) (regTwo!39107 r1!2370))) b!7374890))

(assert (= (and b!7374609 ((_ is Concat!28142) (regTwo!39107 r1!2370))) b!7374891))

(assert (= (and b!7374609 ((_ is Star!19297) (regTwo!39107 r1!2370))) b!7374892))

(assert (= (and b!7374609 ((_ is Union!19297) (regTwo!39107 r1!2370))) b!7374893))

(check-sat (not d!2284403) (not b!7374873) (not b!7374880) tp_is_empty!48839 (not b!7374883) (not b!7374878) (not b!7374835) (not b!7374811) (not d!2284395) (not bm!677781) (not b!7374824) (not bm!677782) (not b!7374887) (not d!2284417) (not d!2284405) (not bm!677808) (not b!7374875) (not d!2284415) (not bm!677800) (not bm!677795) (not b!7374888) (not bm!677802) (not b!7374854) (not b!7374874) (not b!7374731) (not b!7374891) (not b!7374861) (not bm!677798) (not bm!677806) (not d!2284401) (not bm!677794) (not b!7374877) (not bm!677779) (not b!7374855) (not bm!677797) (not d!2284413) (not bm!677809) (not b!7374893) (not b!7374882) (not b!7374820) (not b!7374889) (not bm!677803) (not b!7374884) (not b!7374879) (not b!7374885) (not b!7374892))
(check-sat)
(get-model)

(declare-fun b!7374925 () Bool)

(declare-fun e!4414878 () Bool)

(declare-fun e!4414877 () Bool)

(assert (=> b!7374925 (= e!4414878 e!4414877)))

(declare-fun res!2975304 () Bool)

(assert (=> b!7374925 (=> (not res!2975304) (not e!4414877))))

(declare-fun call!677833 () Bool)

(assert (=> b!7374925 (= res!2975304 call!677833)))

(declare-fun d!2284427 () Bool)

(declare-fun res!2975301 () Bool)

(declare-fun e!4414879 () Bool)

(assert (=> d!2284427 (=> res!2975301 e!4414879)))

(assert (=> d!2284427 (= res!2975301 ((_ is ElementMatch!19297) (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370))))))

(assert (=> d!2284427 (= (validRegex!9893 (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370))) e!4414879)))

(declare-fun b!7374926 () Bool)

(declare-fun res!2975300 () Bool)

(assert (=> b!7374926 (=> res!2975300 e!4414878)))

(assert (=> b!7374926 (= res!2975300 (not ((_ is Concat!28142) (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370)))))))

(declare-fun e!4414875 () Bool)

(assert (=> b!7374926 (= e!4414875 e!4414878)))

(declare-fun bm!677826 () Bool)

(declare-fun call!677832 () Bool)

(assert (=> bm!677826 (= call!677833 call!677832)))

(declare-fun b!7374927 () Bool)

(declare-fun res!2975303 () Bool)

(declare-fun e!4414874 () Bool)

(assert (=> b!7374927 (=> (not res!2975303) (not e!4414874))))

(declare-fun call!677831 () Bool)

(assert (=> b!7374927 (= res!2975303 call!677831)))

(assert (=> b!7374927 (= e!4414875 e!4414874)))

(declare-fun b!7374928 () Bool)

(assert (=> b!7374928 (= e!4414877 call!677831)))

(declare-fun b!7374929 () Bool)

(declare-fun e!4414880 () Bool)

(assert (=> b!7374929 (= e!4414880 e!4414875)))

(declare-fun c!1370730 () Bool)

(assert (=> b!7374929 (= c!1370730 ((_ is Union!19297) (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370))))))

(declare-fun b!7374930 () Bool)

(assert (=> b!7374930 (= e!4414879 e!4414880)))

(declare-fun c!1370731 () Bool)

(assert (=> b!7374930 (= c!1370731 ((_ is Star!19297) (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370))))))

(declare-fun b!7374931 () Bool)

(declare-fun e!4414876 () Bool)

(assert (=> b!7374931 (= e!4414880 e!4414876)))

(declare-fun res!2975302 () Bool)

(assert (=> b!7374931 (= res!2975302 (not (nullable!8373 (reg!19626 (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370))))))))

(assert (=> b!7374931 (=> (not res!2975302) (not e!4414876))))

(declare-fun b!7374932 () Bool)

(assert (=> b!7374932 (= e!4414876 call!677832)))

(declare-fun bm!677827 () Bool)

(assert (=> bm!677827 (= call!677832 (validRegex!9893 (ite c!1370731 (reg!19626 (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370))) (ite c!1370730 (regTwo!39107 (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370))) (regOne!39106 (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370)))))))))

(declare-fun bm!677828 () Bool)

(assert (=> bm!677828 (= call!677831 (validRegex!9893 (ite c!1370730 (regOne!39107 (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370))) (regTwo!39106 (ite c!1370703 (regOne!39107 r1!2370) (regTwo!39106 r1!2370))))))))

(declare-fun b!7374933 () Bool)

(assert (=> b!7374933 (= e!4414874 call!677833)))

(assert (= (and d!2284427 (not res!2975301)) b!7374930))

(assert (= (and b!7374930 c!1370731) b!7374931))

(assert (= (and b!7374930 (not c!1370731)) b!7374929))

(assert (= (and b!7374931 res!2975302) b!7374932))

(assert (= (and b!7374929 c!1370730) b!7374927))

(assert (= (and b!7374929 (not c!1370730)) b!7374926))

(assert (= (and b!7374927 res!2975303) b!7374933))

(assert (= (and b!7374926 (not res!2975300)) b!7374925))

(assert (= (and b!7374925 res!2975304) b!7374928))

(assert (= (or b!7374927 b!7374928) bm!677828))

(assert (= (or b!7374933 b!7374925) bm!677826))

(assert (= (or b!7374932 bm!677826) bm!677827))

(declare-fun m!8027268 () Bool)

(assert (=> b!7374931 m!8027268))

(declare-fun m!8027270 () Bool)

(assert (=> bm!677827 m!8027270))

(declare-fun m!8027272 () Bool)

(assert (=> bm!677828 m!8027272))

(assert (=> bm!677798 d!2284427))

(declare-fun b!7374938 () Bool)

(declare-fun e!4414885 () List!71793)

(assert (=> b!7374938 (= e!4414885 (exprs!8737 ct2!378))))

(declare-fun lt!2616174 () List!71793)

(declare-fun b!7374941 () Bool)

(declare-fun e!4414886 () Bool)

(assert (=> b!7374941 (= e!4414886 (or (not (= (exprs!8737 ct2!378) Nil!71669)) (= lt!2616174 (t!386266 (exprs!8737 ct1!282)))))))

(declare-fun b!7374940 () Bool)

(declare-fun res!2975309 () Bool)

(assert (=> b!7374940 (=> (not res!2975309) (not e!4414886))))

(assert (=> b!7374940 (= res!2975309 (= (size!42147 lt!2616174) (+ (size!42147 (t!386266 (exprs!8737 ct1!282))) (size!42147 (exprs!8737 ct2!378)))))))

(declare-fun d!2284431 () Bool)

(assert (=> d!2284431 e!4414886))

(declare-fun res!2975310 () Bool)

(assert (=> d!2284431 (=> (not res!2975310) (not e!4414886))))

(assert (=> d!2284431 (= res!2975310 (= (content!15169 lt!2616174) ((_ map or) (content!15169 (t!386266 (exprs!8737 ct1!282))) (content!15169 (exprs!8737 ct2!378)))))))

(assert (=> d!2284431 (= lt!2616174 e!4414885)))

(declare-fun c!1370732 () Bool)

(assert (=> d!2284431 (= c!1370732 ((_ is Nil!71669) (t!386266 (exprs!8737 ct1!282))))))

(assert (=> d!2284431 (= (++!17113 (t!386266 (exprs!8737 ct1!282)) (exprs!8737 ct2!378)) lt!2616174)))

(declare-fun b!7374939 () Bool)

(assert (=> b!7374939 (= e!4414885 (Cons!71669 (h!78117 (t!386266 (exprs!8737 ct1!282))) (++!17113 (t!386266 (t!386266 (exprs!8737 ct1!282))) (exprs!8737 ct2!378))))))

(assert (= (and d!2284431 c!1370732) b!7374938))

(assert (= (and d!2284431 (not c!1370732)) b!7374939))

(assert (= (and d!2284431 res!2975310) b!7374940))

(assert (= (and b!7374940 res!2975309) b!7374941))

(declare-fun m!8027274 () Bool)

(assert (=> b!7374940 m!8027274))

(declare-fun m!8027276 () Bool)

(assert (=> b!7374940 m!8027276))

(assert (=> b!7374940 m!8027224))

(declare-fun m!8027278 () Bool)

(assert (=> d!2284431 m!8027278))

(declare-fun m!8027280 () Bool)

(assert (=> d!2284431 m!8027280))

(assert (=> d!2284431 m!8027230))

(declare-fun m!8027282 () Bool)

(assert (=> b!7374939 m!8027282))

(assert (=> b!7374854 d!2284431))

(declare-fun b!7374944 () Bool)

(declare-fun e!4414893 () Bool)

(declare-fun e!4414892 () Bool)

(assert (=> b!7374944 (= e!4414893 e!4414892)))

(declare-fun res!2975317 () Bool)

(assert (=> b!7374944 (=> (not res!2975317) (not e!4414892))))

(declare-fun call!677836 () Bool)

(assert (=> b!7374944 (= res!2975317 call!677836)))

(declare-fun d!2284433 () Bool)

(declare-fun res!2975314 () Bool)

(declare-fun e!4414894 () Bool)

(assert (=> d!2284433 (=> res!2975314 e!4414894)))

(assert (=> d!2284433 (= res!2975314 ((_ is ElementMatch!19297) (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370)))))))

(assert (=> d!2284433 (= (validRegex!9893 (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370)))) e!4414894)))

(declare-fun b!7374945 () Bool)

(declare-fun res!2975313 () Bool)

(assert (=> b!7374945 (=> res!2975313 e!4414893)))

(assert (=> b!7374945 (= res!2975313 (not ((_ is Concat!28142) (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370))))))))

(declare-fun e!4414890 () Bool)

(assert (=> b!7374945 (= e!4414890 e!4414893)))

(declare-fun bm!677829 () Bool)

(declare-fun call!677835 () Bool)

(assert (=> bm!677829 (= call!677836 call!677835)))

(declare-fun b!7374946 () Bool)

(declare-fun res!2975316 () Bool)

(declare-fun e!4414889 () Bool)

(assert (=> b!7374946 (=> (not res!2975316) (not e!4414889))))

(declare-fun call!677834 () Bool)

(assert (=> b!7374946 (= res!2975316 call!677834)))

(assert (=> b!7374946 (= e!4414890 e!4414889)))

(declare-fun b!7374947 () Bool)

(assert (=> b!7374947 (= e!4414892 call!677834)))

(declare-fun b!7374948 () Bool)

(declare-fun e!4414895 () Bool)

(assert (=> b!7374948 (= e!4414895 e!4414890)))

(declare-fun c!1370733 () Bool)

(assert (=> b!7374948 (= c!1370733 ((_ is Union!19297) (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370)))))))

(declare-fun b!7374949 () Bool)

(assert (=> b!7374949 (= e!4414894 e!4414895)))

(declare-fun c!1370734 () Bool)

(assert (=> b!7374949 (= c!1370734 ((_ is Star!19297) (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370)))))))

(declare-fun b!7374950 () Bool)

(declare-fun e!4414891 () Bool)

(assert (=> b!7374950 (= e!4414895 e!4414891)))

(declare-fun res!2975315 () Bool)

(assert (=> b!7374950 (= res!2975315 (not (nullable!8373 (reg!19626 (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370)))))))))

(assert (=> b!7374950 (=> (not res!2975315) (not e!4414891))))

(declare-fun b!7374951 () Bool)

(assert (=> b!7374951 (= e!4414891 call!677835)))

(declare-fun bm!677830 () Bool)

(assert (=> bm!677830 (= call!677835 (validRegex!9893 (ite c!1370734 (reg!19626 (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370)))) (ite c!1370733 (regTwo!39107 (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370)))) (regOne!39106 (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370))))))))))

(declare-fun bm!677831 () Bool)

(assert (=> bm!677831 (= call!677834 (validRegex!9893 (ite c!1370733 (regOne!39107 (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370)))) (regTwo!39106 (ite c!1370704 (reg!19626 r1!2370) (ite c!1370703 (regTwo!39107 r1!2370) (regOne!39106 r1!2370)))))))))

(declare-fun b!7374952 () Bool)

(assert (=> b!7374952 (= e!4414889 call!677836)))

(assert (= (and d!2284433 (not res!2975314)) b!7374949))

(assert (= (and b!7374949 c!1370734) b!7374950))

(assert (= (and b!7374949 (not c!1370734)) b!7374948))

(assert (= (and b!7374950 res!2975315) b!7374951))

(assert (= (and b!7374948 c!1370733) b!7374946))

(assert (= (and b!7374948 (not c!1370733)) b!7374945))

(assert (= (and b!7374946 res!2975316) b!7374952))

(assert (= (and b!7374945 (not res!2975313)) b!7374944))

(assert (= (and b!7374944 res!2975317) b!7374947))

(assert (= (or b!7374946 b!7374947) bm!677831))

(assert (= (or b!7374952 b!7374944) bm!677829))

(assert (= (or b!7374951 bm!677829) bm!677830))

(declare-fun m!8027288 () Bool)

(assert (=> b!7374950 m!8027288))

(declare-fun m!8027290 () Bool)

(assert (=> bm!677830 m!8027290))

(declare-fun m!8027292 () Bool)

(assert (=> bm!677831 m!8027292))

(assert (=> bm!677797 d!2284433))

(declare-fun d!2284437 () Bool)

(assert (=> d!2284437 (= ($colon$colon!3279 (exprs!8737 lt!2616160) (ite (or c!1370709 c!1370705) (regTwo!39106 (regOne!39106 r1!2370)) (regOne!39106 r1!2370))) (Cons!71669 (ite (or c!1370709 c!1370705) (regTwo!39106 (regOne!39106 r1!2370)) (regOne!39106 r1!2370)) (exprs!8737 lt!2616160)))))

(assert (=> bm!677800 d!2284437))

(declare-fun d!2284439 () Bool)

(assert (=> d!2284439 (= (nullable!8373 (reg!19626 (regTwo!39106 r1!2370))) (nullableFct!3352 (reg!19626 (regTwo!39106 r1!2370))))))

(declare-fun bs!1921191 () Bool)

(assert (= bs!1921191 d!2284439))

(declare-fun m!8027294 () Bool)

(assert (=> bs!1921191 m!8027294))

(assert (=> b!7374811 d!2284439))

(declare-fun d!2284443 () Bool)

(declare-fun lt!2616177 () Int)

(assert (=> d!2284443 (>= lt!2616177 0)))

(declare-fun e!4414910 () Int)

(assert (=> d!2284443 (= lt!2616177 e!4414910)))

(declare-fun c!1370746 () Bool)

(assert (=> d!2284443 (= c!1370746 ((_ is Nil!71669) lt!2616170))))

(assert (=> d!2284443 (= (size!42147 lt!2616170) lt!2616177)))

(declare-fun b!7374978 () Bool)

(assert (=> b!7374978 (= e!4414910 0)))

(declare-fun b!7374981 () Bool)

(assert (=> b!7374981 (= e!4414910 (+ 1 (size!42147 (t!386266 lt!2616170))))))

(assert (= (and d!2284443 c!1370746) b!7374978))

(assert (= (and d!2284443 (not c!1370746)) b!7374981))

(declare-fun m!8027324 () Bool)

(assert (=> b!7374981 m!8027324))

(assert (=> b!7374855 d!2284443))

(declare-fun d!2284457 () Bool)

(declare-fun lt!2616178 () Int)

(assert (=> d!2284457 (>= lt!2616178 0)))

(declare-fun e!4414919 () Int)

(assert (=> d!2284457 (= lt!2616178 e!4414919)))

(declare-fun c!1370750 () Bool)

(assert (=> d!2284457 (= c!1370750 ((_ is Nil!71669) (exprs!8737 ct1!282)))))

(assert (=> d!2284457 (= (size!42147 (exprs!8737 ct1!282)) lt!2616178)))

(declare-fun b!7374991 () Bool)

(assert (=> b!7374991 (= e!4414919 0)))

(declare-fun b!7374992 () Bool)

(assert (=> b!7374992 (= e!4414919 (+ 1 (size!42147 (t!386266 (exprs!8737 ct1!282)))))))

(assert (= (and d!2284457 c!1370750) b!7374991))

(assert (= (and d!2284457 (not c!1370750)) b!7374992))

(assert (=> b!7374992 m!8027276))

(assert (=> b!7374855 d!2284457))

(declare-fun d!2284459 () Bool)

(declare-fun lt!2616179 () Int)

(assert (=> d!2284459 (>= lt!2616179 0)))

(declare-fun e!4414920 () Int)

(assert (=> d!2284459 (= lt!2616179 e!4414920)))

(declare-fun c!1370751 () Bool)

(assert (=> d!2284459 (= c!1370751 ((_ is Nil!71669) (exprs!8737 ct2!378)))))

(assert (=> d!2284459 (= (size!42147 (exprs!8737 ct2!378)) lt!2616179)))

(declare-fun b!7374993 () Bool)

(assert (=> b!7374993 (= e!4414920 0)))

(declare-fun b!7374994 () Bool)

(assert (=> b!7374994 (= e!4414920 (+ 1 (size!42147 (t!386266 (exprs!8737 ct2!378)))))))

(assert (= (and d!2284459 c!1370751) b!7374993))

(assert (= (and d!2284459 (not c!1370751)) b!7374994))

(declare-fun m!8027332 () Bool)

(assert (=> b!7374994 m!8027332))

(assert (=> b!7374855 d!2284459))

(declare-fun d!2284463 () Bool)

(declare-fun res!2975342 () Bool)

(declare-fun e!4414944 () Bool)

(assert (=> d!2284463 (=> res!2975342 e!4414944)))

(assert (=> d!2284463 (= res!2975342 ((_ is Nil!71669) (exprs!8737 ct1!282)))))

(assert (=> d!2284463 (= (forall!18095 (exprs!8737 ct1!282) lambda!458263) e!4414944)))

(declare-fun b!7375025 () Bool)

(declare-fun e!4414945 () Bool)

(assert (=> b!7375025 (= e!4414944 e!4414945)))

(declare-fun res!2975343 () Bool)

(assert (=> b!7375025 (=> (not res!2975343) (not e!4414945))))

(declare-fun dynLambda!29529 (Int Regex!19297) Bool)

(assert (=> b!7375025 (= res!2975343 (dynLambda!29529 lambda!458263 (h!78117 (exprs!8737 ct1!282))))))

(declare-fun b!7375026 () Bool)

(assert (=> b!7375026 (= e!4414945 (forall!18095 (t!386266 (exprs!8737 ct1!282)) lambda!458263))))

(assert (= (and d!2284463 (not res!2975342)) b!7375025))

(assert (= (and b!7375025 res!2975343) b!7375026))

(declare-fun b_lambda!284541 () Bool)

(assert (=> (not b_lambda!284541) (not b!7375025)))

(declare-fun m!8027364 () Bool)

(assert (=> b!7375025 m!8027364))

(declare-fun m!8027366 () Bool)

(assert (=> b!7375026 m!8027366))

(assert (=> d!2284403 d!2284463))

(declare-fun d!2284479 () Bool)

(declare-fun res!2975345 () Bool)

(declare-fun e!4414952 () Bool)

(assert (=> d!2284479 (=> res!2975345 e!4414952)))

(assert (=> d!2284479 (= res!2975345 ((_ is Nil!71669) (exprs!8737 lt!2616160)))))

(assert (=> d!2284479 (= (forall!18095 (exprs!8737 lt!2616160) lambda!458265) e!4414952)))

(declare-fun b!7375038 () Bool)

(declare-fun e!4414953 () Bool)

(assert (=> b!7375038 (= e!4414952 e!4414953)))

(declare-fun res!2975346 () Bool)

(assert (=> b!7375038 (=> (not res!2975346) (not e!4414953))))

(assert (=> b!7375038 (= res!2975346 (dynLambda!29529 lambda!458265 (h!78117 (exprs!8737 lt!2616160))))))

(declare-fun b!7375039 () Bool)

(assert (=> b!7375039 (= e!4414953 (forall!18095 (t!386266 (exprs!8737 lt!2616160)) lambda!458265))))

(assert (= (and d!2284479 (not res!2975345)) b!7375038))

(assert (= (and b!7375038 res!2975346) b!7375039))

(declare-fun b_lambda!284543 () Bool)

(assert (=> (not b_lambda!284543) (not b!7375038)))

(declare-fun m!8027374 () Bool)

(assert (=> b!7375038 m!8027374))

(declare-fun m!8027378 () Bool)

(assert (=> b!7375039 m!8027378))

(assert (=> d!2284417 d!2284479))

(declare-fun b!7375040 () Bool)

(declare-fun e!4414959 () (InoxSet Context!16474))

(declare-fun e!4414957 () (InoxSet Context!16474))

(assert (=> b!7375040 (= e!4414959 e!4414957)))

(declare-fun c!1370765 () Bool)

(assert (=> b!7375040 (= c!1370765 ((_ is Union!19297) (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))))))

(declare-fun b!7375041 () Bool)

(declare-fun e!4414954 () Bool)

(assert (=> b!7375041 (= e!4414954 (nullable!8373 (regOne!39106 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370)))))))

(declare-fun bm!677856 () Bool)

(declare-fun call!677864 () (InoxSet Context!16474))

(declare-fun call!677862 () (InoxSet Context!16474))

(assert (=> bm!677856 (= call!677864 call!677862)))

(declare-fun c!1370768 () Bool)

(declare-fun bm!677857 () Bool)

(declare-fun call!677865 () List!71793)

(declare-fun c!1370764 () Bool)

(assert (=> bm!677857 (= call!677865 ($colon$colon!3279 (exprs!8737 (ite c!1370711 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677814))) (ite (or c!1370768 c!1370764) (regTwo!39106 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370)))))))

(declare-fun b!7375042 () Bool)

(declare-fun c!1370767 () Bool)

(assert (=> b!7375042 (= c!1370767 ((_ is Star!19297) (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))))))

(declare-fun e!4414955 () (InoxSet Context!16474))

(declare-fun e!4414956 () (InoxSet Context!16474))

(assert (=> b!7375042 (= e!4414955 e!4414956)))

(declare-fun b!7375043 () Bool)

(declare-fun e!4414958 () (InoxSet Context!16474))

(declare-fun call!677861 () (InoxSet Context!16474))

(assert (=> b!7375043 (= e!4414958 ((_ map or) call!677861 call!677862))))

(declare-fun b!7375044 () Bool)

(declare-fun call!677866 () (InoxSet Context!16474))

(assert (=> b!7375044 (= e!4414957 ((_ map or) call!677861 call!677866))))

(declare-fun b!7375045 () Bool)

(assert (=> b!7375045 (= e!4414956 call!677864)))

(declare-fun bm!677858 () Bool)

(declare-fun call!677863 () List!71793)

(assert (=> bm!677858 (= call!677863 call!677865)))

(declare-fun b!7375046 () Bool)

(assert (=> b!7375046 (= e!4414959 (store ((as const (Array Context!16474 Bool)) false) (ite c!1370711 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677814)) true))))

(declare-fun bm!677859 () Bool)

(assert (=> bm!677859 (= call!677861 (derivationStepZipperDown!3123 (ite c!1370765 (regOne!39107 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (regOne!39106 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370)))) (ite c!1370765 (ite c!1370711 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677814)) (Context!16475 call!677865)) c!10362))))

(declare-fun b!7375047 () Bool)

(assert (=> b!7375047 (= e!4414958 e!4414955)))

(assert (=> b!7375047 (= c!1370764 ((_ is Concat!28142) (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))))))

(declare-fun bm!677860 () Bool)

(assert (=> bm!677860 (= call!677866 (derivationStepZipperDown!3123 (ite c!1370765 (regTwo!39107 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (ite c!1370768 (regTwo!39106 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (ite c!1370764 (regOne!39106 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (reg!19626 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370)))))) (ite (or c!1370765 c!1370768) (ite c!1370711 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677814)) (Context!16475 call!677863)) c!10362))))

(declare-fun b!7375048 () Bool)

(assert (=> b!7375048 (= c!1370768 e!4414954)))

(declare-fun res!2975347 () Bool)

(assert (=> b!7375048 (=> (not res!2975347) (not e!4414954))))

(assert (=> b!7375048 (= res!2975347 ((_ is Concat!28142) (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))))))

(assert (=> b!7375048 (= e!4414957 e!4414958)))

(declare-fun bm!677861 () Bool)

(assert (=> bm!677861 (= call!677862 call!677866)))

(declare-fun b!7375049 () Bool)

(assert (=> b!7375049 (= e!4414955 call!677864)))

(declare-fun c!1370766 () Bool)

(declare-fun d!2284483 () Bool)

(assert (=> d!2284483 (= c!1370766 (and ((_ is ElementMatch!19297) (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (= (c!1370645 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) c!10362)))))

(assert (=> d!2284483 (= (derivationStepZipperDown!3123 (ite c!1370711 (regOne!39107 r1!2370) (regOne!39106 r1!2370)) (ite c!1370711 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677814)) c!10362) e!4414959)))

(declare-fun b!7375050 () Bool)

(assert (=> b!7375050 (= e!4414956 ((as const (Array Context!16474 Bool)) false))))

(assert (= (and d!2284483 c!1370766) b!7375046))

(assert (= (and d!2284483 (not c!1370766)) b!7375040))

(assert (= (and b!7375040 c!1370765) b!7375044))

(assert (= (and b!7375040 (not c!1370765)) b!7375048))

(assert (= (and b!7375048 res!2975347) b!7375041))

(assert (= (and b!7375048 c!1370768) b!7375043))

(assert (= (and b!7375048 (not c!1370768)) b!7375047))

(assert (= (and b!7375047 c!1370764) b!7375049))

(assert (= (and b!7375047 (not c!1370764)) b!7375042))

(assert (= (and b!7375042 c!1370767) b!7375045))

(assert (= (and b!7375042 (not c!1370767)) b!7375050))

(assert (= (or b!7375049 b!7375045) bm!677858))

(assert (= (or b!7375049 b!7375045) bm!677856))

(assert (= (or b!7375043 bm!677856) bm!677861))

(assert (= (or b!7375043 bm!677858) bm!677857))

(assert (= (or b!7375044 bm!677861) bm!677860))

(assert (= (or b!7375044 b!7375043) bm!677859))

(declare-fun m!8027382 () Bool)

(assert (=> b!7375041 m!8027382))

(declare-fun m!8027386 () Bool)

(assert (=> b!7375046 m!8027386))

(declare-fun m!8027388 () Bool)

(assert (=> bm!677859 m!8027388))

(declare-fun m!8027392 () Bool)

(assert (=> bm!677857 m!8027392))

(declare-fun m!8027396 () Bool)

(assert (=> bm!677860 m!8027396))

(assert (=> bm!677808 d!2284483))

(declare-fun b!7375070 () Bool)

(declare-fun e!4414977 () (InoxSet Context!16474))

(declare-fun e!4414975 () (InoxSet Context!16474))

(assert (=> b!7375070 (= e!4414977 e!4414975)))

(declare-fun c!1370777 () Bool)

(assert (=> b!7375070 (= c!1370777 ((_ is Union!19297) (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))))))

(declare-fun b!7375071 () Bool)

(declare-fun e!4414972 () Bool)

(assert (=> b!7375071 (= e!4414972 (nullable!8373 (regOne!39106 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370)))))))

(declare-fun bm!677865 () Bool)

(declare-fun call!677873 () (InoxSet Context!16474))

(declare-fun call!677871 () (InoxSet Context!16474))

(assert (=> bm!677865 (= call!677873 call!677871)))

(declare-fun c!1370780 () Bool)

(declare-fun call!677874 () List!71793)

(declare-fun c!1370776 () Bool)

(declare-fun bm!677866 () Bool)

(assert (=> bm!677866 (= call!677874 ($colon$colon!3279 (exprs!8737 (ite c!1370691 ct1!282 (Context!16475 call!677787))) (ite (or c!1370780 c!1370776) (regTwo!39106 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370)))))))

(declare-fun b!7375072 () Bool)

(declare-fun c!1370779 () Bool)

(assert (=> b!7375072 (= c!1370779 ((_ is Star!19297) (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))))))

(declare-fun e!4414973 () (InoxSet Context!16474))

(declare-fun e!4414974 () (InoxSet Context!16474))

(assert (=> b!7375072 (= e!4414973 e!4414974)))

(declare-fun b!7375073 () Bool)

(declare-fun e!4414976 () (InoxSet Context!16474))

(declare-fun call!677870 () (InoxSet Context!16474))

(assert (=> b!7375073 (= e!4414976 ((_ map or) call!677870 call!677871))))

(declare-fun b!7375074 () Bool)

(declare-fun call!677875 () (InoxSet Context!16474))

(assert (=> b!7375074 (= e!4414975 ((_ map or) call!677870 call!677875))))

(declare-fun b!7375075 () Bool)

(assert (=> b!7375075 (= e!4414974 call!677873)))

(declare-fun bm!677867 () Bool)

(declare-fun call!677872 () List!71793)

(assert (=> bm!677867 (= call!677872 call!677874)))

(declare-fun b!7375076 () Bool)

(assert (=> b!7375076 (= e!4414977 (store ((as const (Array Context!16474 Bool)) false) (ite c!1370691 ct1!282 (Context!16475 call!677787)) true))))

(declare-fun bm!677868 () Bool)

(assert (=> bm!677868 (= call!677870 (derivationStepZipperDown!3123 (ite c!1370777 (regOne!39107 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (regOne!39106 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370)))) (ite c!1370777 (ite c!1370691 ct1!282 (Context!16475 call!677787)) (Context!16475 call!677874)) c!10362))))

(declare-fun b!7375077 () Bool)

(assert (=> b!7375077 (= e!4414976 e!4414973)))

(assert (=> b!7375077 (= c!1370776 ((_ is Concat!28142) (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))))))

(declare-fun bm!677869 () Bool)

(assert (=> bm!677869 (= call!677875 (derivationStepZipperDown!3123 (ite c!1370777 (regTwo!39107 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (ite c!1370780 (regTwo!39106 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (ite c!1370776 (regOne!39106 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (reg!19626 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370)))))) (ite (or c!1370777 c!1370780) (ite c!1370691 ct1!282 (Context!16475 call!677787)) (Context!16475 call!677872)) c!10362))))

(declare-fun b!7375078 () Bool)

(assert (=> b!7375078 (= c!1370780 e!4414972)))

(declare-fun res!2975353 () Bool)

(assert (=> b!7375078 (=> (not res!2975353) (not e!4414972))))

(assert (=> b!7375078 (= res!2975353 ((_ is Concat!28142) (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))))))

(assert (=> b!7375078 (= e!4414975 e!4414976)))

(declare-fun bm!677870 () Bool)

(assert (=> bm!677870 (= call!677871 call!677875)))

(declare-fun b!7375079 () Bool)

(assert (=> b!7375079 (= e!4414973 call!677873)))

(declare-fun d!2284491 () Bool)

(declare-fun c!1370778 () Bool)

(assert (=> d!2284491 (= c!1370778 (and ((_ is ElementMatch!19297) (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) (= (c!1370645 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370))) c!10362)))))

(assert (=> d!2284491 (= (derivationStepZipperDown!3123 (ite c!1370691 (regOne!39107 r1!2370) (regOne!39106 r1!2370)) (ite c!1370691 ct1!282 (Context!16475 call!677787)) c!10362) e!4414977)))

(declare-fun b!7375080 () Bool)

(assert (=> b!7375080 (= e!4414974 ((as const (Array Context!16474 Bool)) false))))

(assert (= (and d!2284491 c!1370778) b!7375076))

(assert (= (and d!2284491 (not c!1370778)) b!7375070))

(assert (= (and b!7375070 c!1370777) b!7375074))

(assert (= (and b!7375070 (not c!1370777)) b!7375078))

(assert (= (and b!7375078 res!2975353) b!7375071))

(assert (= (and b!7375078 c!1370780) b!7375073))

(assert (= (and b!7375078 (not c!1370780)) b!7375077))

(assert (= (and b!7375077 c!1370776) b!7375079))

(assert (= (and b!7375077 (not c!1370776)) b!7375072))

(assert (= (and b!7375072 c!1370779) b!7375075))

(assert (= (and b!7375072 (not c!1370779)) b!7375080))

(assert (= (or b!7375079 b!7375075) bm!677867))

(assert (= (or b!7375079 b!7375075) bm!677865))

(assert (= (or b!7375073 bm!677865) bm!677870))

(assert (= (or b!7375073 bm!677867) bm!677866))

(assert (= (or b!7375074 bm!677870) bm!677869))

(assert (= (or b!7375074 b!7375073) bm!677868))

(declare-fun m!8027414 () Bool)

(assert (=> b!7375071 m!8027414))

(declare-fun m!8027416 () Bool)

(assert (=> b!7375076 m!8027416))

(declare-fun m!8027418 () Bool)

(assert (=> bm!677868 m!8027418))

(declare-fun m!8027420 () Bool)

(assert (=> bm!677866 m!8027420))

(declare-fun m!8027422 () Bool)

(assert (=> bm!677869 m!8027422))

(assert (=> bm!677781 d!2284491))

(declare-fun d!2284499 () Bool)

(assert (=> d!2284499 (= (nullable!8373 (reg!19626 r1!2370)) (nullableFct!3352 (reg!19626 r1!2370)))))

(declare-fun bs!1921194 () Bool)

(assert (= bs!1921194 d!2284499))

(declare-fun m!8027424 () Bool)

(assert (=> bs!1921194 m!8027424))

(assert (=> b!7374820 d!2284499))

(declare-fun d!2284501 () Bool)

(assert (=> d!2284501 (= (nullable!8373 (regOne!39106 (regOne!39106 r1!2370))) (nullableFct!3352 (regOne!39106 (regOne!39106 r1!2370))))))

(declare-fun bs!1921195 () Bool)

(assert (= bs!1921195 d!2284501))

(declare-fun m!8027428 () Bool)

(assert (=> bs!1921195 m!8027428))

(assert (=> b!7374824 d!2284501))

(declare-fun b!7375098 () Bool)

(declare-fun e!4414993 () (InoxSet Context!16474))

(declare-fun e!4414991 () (InoxSet Context!16474))

(assert (=> b!7375098 (= e!4414993 e!4414991)))

(declare-fun c!1370788 () Bool)

(assert (=> b!7375098 (= c!1370788 ((_ is Union!19297) (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))))))

(declare-fun b!7375099 () Bool)

(declare-fun e!4414988 () Bool)

(assert (=> b!7375099 (= e!4414988 (nullable!8373 (regOne!39106 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370)))))))))

(declare-fun bm!677877 () Bool)

(declare-fun call!677885 () (InoxSet Context!16474))

(declare-fun call!677883 () (InoxSet Context!16474))

(assert (=> bm!677877 (= call!677885 call!677883)))

(declare-fun call!677886 () List!71793)

(declare-fun bm!677878 () Bool)

(declare-fun c!1370787 () Bool)

(declare-fun c!1370791 () Bool)

(assert (=> bm!677878 (= call!677886 ($colon$colon!3279 (exprs!8737 (ite (or c!1370711 c!1370714) (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677812))) (ite (or c!1370791 c!1370787) (regTwo!39106 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370)))))))))

(declare-fun c!1370790 () Bool)

(declare-fun b!7375100 () Bool)

(assert (=> b!7375100 (= c!1370790 ((_ is Star!19297) (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))))))

(declare-fun e!4414989 () (InoxSet Context!16474))

(declare-fun e!4414990 () (InoxSet Context!16474))

(assert (=> b!7375100 (= e!4414989 e!4414990)))

(declare-fun b!7375101 () Bool)

(declare-fun e!4414992 () (InoxSet Context!16474))

(declare-fun call!677882 () (InoxSet Context!16474))

(assert (=> b!7375101 (= e!4414992 ((_ map or) call!677882 call!677883))))

(declare-fun b!7375102 () Bool)

(declare-fun call!677887 () (InoxSet Context!16474))

(assert (=> b!7375102 (= e!4414991 ((_ map or) call!677882 call!677887))))

(declare-fun b!7375103 () Bool)

(assert (=> b!7375103 (= e!4414990 call!677885)))

(declare-fun bm!677879 () Bool)

(declare-fun call!677884 () List!71793)

(assert (=> bm!677879 (= call!677884 call!677886)))

(declare-fun b!7375104 () Bool)

(assert (=> b!7375104 (= e!4414993 (store ((as const (Array Context!16474 Bool)) false) (ite (or c!1370711 c!1370714) (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677812)) true))))

(declare-fun bm!677880 () Bool)

(assert (=> bm!677880 (= call!677882 (derivationStepZipperDown!3123 (ite c!1370788 (regOne!39107 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (regOne!39106 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370)))))) (ite c!1370788 (ite (or c!1370711 c!1370714) (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677812)) (Context!16475 call!677886)) c!10362))))

(declare-fun b!7375105 () Bool)

(assert (=> b!7375105 (= e!4414992 e!4414989)))

(assert (=> b!7375105 (= c!1370787 ((_ is Concat!28142) (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))))))

(declare-fun bm!677881 () Bool)

(assert (=> bm!677881 (= call!677887 (derivationStepZipperDown!3123 (ite c!1370788 (regTwo!39107 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (ite c!1370791 (regTwo!39106 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (ite c!1370787 (regOne!39106 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (reg!19626 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370)))))))) (ite (or c!1370788 c!1370791) (ite (or c!1370711 c!1370714) (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677812)) (Context!16475 call!677884)) c!10362))))

(declare-fun b!7375106 () Bool)

(assert (=> b!7375106 (= c!1370791 e!4414988)))

(declare-fun res!2975359 () Bool)

(assert (=> b!7375106 (=> (not res!2975359) (not e!4414988))))

(assert (=> b!7375106 (= res!2975359 ((_ is Concat!28142) (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))))))

(assert (=> b!7375106 (= e!4414991 e!4414992)))

(declare-fun bm!677882 () Bool)

(assert (=> bm!677882 (= call!677883 call!677887)))

(declare-fun b!7375107 () Bool)

(assert (=> b!7375107 (= e!4414989 call!677885)))

(declare-fun c!1370789 () Bool)

(declare-fun d!2284503 () Bool)

(assert (=> d!2284503 (= c!1370789 (and ((_ is ElementMatch!19297) (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (= (c!1370645 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) c!10362)))))

(assert (=> d!2284503 (= (derivationStepZipperDown!3123 (ite c!1370711 (regTwo!39107 r1!2370) (ite c!1370714 (regTwo!39106 r1!2370) (ite c!1370710 (regOne!39106 r1!2370) (reg!19626 r1!2370)))) (ite (or c!1370711 c!1370714) (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) (Context!16475 call!677812)) c!10362) e!4414993)))

(declare-fun b!7375108 () Bool)

(assert (=> b!7375108 (= e!4414990 ((as const (Array Context!16474 Bool)) false))))

(assert (= (and d!2284503 c!1370789) b!7375104))

(assert (= (and d!2284503 (not c!1370789)) b!7375098))

(assert (= (and b!7375098 c!1370788) b!7375102))

(assert (= (and b!7375098 (not c!1370788)) b!7375106))

(assert (= (and b!7375106 res!2975359) b!7375099))

(assert (= (and b!7375106 c!1370791) b!7375101))

(assert (= (and b!7375106 (not c!1370791)) b!7375105))

(assert (= (and b!7375105 c!1370787) b!7375107))

(assert (= (and b!7375105 (not c!1370787)) b!7375100))

(assert (= (and b!7375100 c!1370790) b!7375103))

(assert (= (and b!7375100 (not c!1370790)) b!7375108))

(assert (= (or b!7375107 b!7375103) bm!677879))

(assert (= (or b!7375107 b!7375103) bm!677877))

(assert (= (or b!7375101 bm!677877) bm!677882))

(assert (= (or b!7375101 bm!677879) bm!677878))

(assert (= (or b!7375102 bm!677882) bm!677881))

(assert (= (or b!7375102 b!7375101) bm!677880))

(declare-fun m!8027440 () Bool)

(assert (=> b!7375099 m!8027440))

(declare-fun m!8027442 () Bool)

(assert (=> b!7375104 m!8027442))

(declare-fun m!8027444 () Bool)

(assert (=> bm!677880 m!8027444))

(declare-fun m!8027446 () Bool)

(assert (=> bm!677878 m!8027446))

(declare-fun m!8027448 () Bool)

(assert (=> bm!677881 m!8027448))

(assert (=> bm!677809 d!2284503))

(declare-fun d!2284511 () Bool)

(declare-fun res!2975370 () Bool)

(declare-fun e!4415006 () Bool)

(assert (=> d!2284511 (=> res!2975370 e!4415006)))

(assert (=> d!2284511 (= res!2975370 ((_ is Nil!71669) (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))))))

(assert (=> d!2284511 (= (forall!18095 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378)) lambda!458253) e!4415006)))

(declare-fun b!7375123 () Bool)

(declare-fun e!4415007 () Bool)

(assert (=> b!7375123 (= e!4415006 e!4415007)))

(declare-fun res!2975371 () Bool)

(assert (=> b!7375123 (=> (not res!2975371) (not e!4415007))))

(assert (=> b!7375123 (= res!2975371 (dynLambda!29529 lambda!458253 (h!78117 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378)))))))

(declare-fun b!7375124 () Bool)

(assert (=> b!7375124 (= e!4415007 (forall!18095 (t!386266 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))) lambda!458253))))

(assert (= (and d!2284511 (not res!2975370)) b!7375123))

(assert (= (and b!7375123 res!2975371) b!7375124))

(declare-fun b_lambda!284547 () Bool)

(assert (=> (not b_lambda!284547) (not b!7375123)))

(declare-fun m!8027450 () Bool)

(assert (=> b!7375123 m!8027450))

(declare-fun m!8027452 () Bool)

(assert (=> b!7375124 m!8027452))

(assert (=> d!2284415 d!2284511))

(assert (=> d!2284415 d!2284413))

(declare-fun d!2284513 () Bool)

(assert (=> d!2284513 (forall!18095 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378)) lambda!458253)))

(assert (=> d!2284513 true))

(declare-fun _$78!955 () Unit!165543)

(assert (=> d!2284513 (= (choose!57323 (exprs!8737 ct1!282) (exprs!8737 ct2!378) lambda!458253) _$78!955)))

(declare-fun bs!1921197 () Bool)

(assert (= bs!1921197 d!2284513))

(assert (=> bs!1921197 m!8027086))

(assert (=> bs!1921197 m!8027086))

(assert (=> bs!1921197 m!8027234))

(assert (=> d!2284415 d!2284513))

(declare-fun d!2284515 () Bool)

(declare-fun res!2975377 () Bool)

(declare-fun e!4415018 () Bool)

(assert (=> d!2284515 (=> res!2975377 e!4415018)))

(assert (=> d!2284515 (= res!2975377 ((_ is Nil!71669) (exprs!8737 ct1!282)))))

(assert (=> d!2284515 (= (forall!18095 (exprs!8737 ct1!282) lambda!458253) e!4415018)))

(declare-fun b!7375148 () Bool)

(declare-fun e!4415019 () Bool)

(assert (=> b!7375148 (= e!4415018 e!4415019)))

(declare-fun res!2975378 () Bool)

(assert (=> b!7375148 (=> (not res!2975378) (not e!4415019))))

(assert (=> b!7375148 (= res!2975378 (dynLambda!29529 lambda!458253 (h!78117 (exprs!8737 ct1!282))))))

(declare-fun b!7375149 () Bool)

(assert (=> b!7375149 (= e!4415019 (forall!18095 (t!386266 (exprs!8737 ct1!282)) lambda!458253))))

(assert (= (and d!2284515 (not res!2975377)) b!7375148))

(assert (= (and b!7375148 res!2975378) b!7375149))

(declare-fun b_lambda!284549 () Bool)

(assert (=> (not b_lambda!284549) (not b!7375148)))

(declare-fun m!8027458 () Bool)

(assert (=> b!7375148 m!8027458))

(declare-fun m!8027460 () Bool)

(assert (=> b!7375149 m!8027460))

(assert (=> d!2284415 d!2284515))

(declare-fun b!7375167 () Bool)

(declare-fun e!4415030 () (InoxSet Context!16474))

(declare-fun e!4415028 () (InoxSet Context!16474))

(assert (=> b!7375167 (= e!4415030 e!4415028)))

(declare-fun c!1370796 () Bool)

(assert (=> b!7375167 (= c!1370796 ((_ is Union!19297) (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))))))

(declare-fun b!7375168 () Bool)

(declare-fun e!4415025 () Bool)

(assert (=> b!7375168 (= e!4415025 (nullable!8373 (regOne!39106 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370)))))))))

(declare-fun bm!677889 () Bool)

(declare-fun call!677897 () (InoxSet Context!16474))

(declare-fun call!677895 () (InoxSet Context!16474))

(assert (=> bm!677889 (= call!677897 call!677895)))

(declare-fun c!1370799 () Bool)

(declare-fun c!1370795 () Bool)

(declare-fun call!677898 () List!71793)

(declare-fun bm!677890 () Bool)

(assert (=> bm!677890 (= call!677898 ($colon$colon!3279 (exprs!8737 (ite (or c!1370691 c!1370694) ct1!282 (Context!16475 call!677785))) (ite (or c!1370799 c!1370795) (regTwo!39106 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370)))))))))

(declare-fun c!1370798 () Bool)

(declare-fun b!7375169 () Bool)

(assert (=> b!7375169 (= c!1370798 ((_ is Star!19297) (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))))))

(declare-fun e!4415026 () (InoxSet Context!16474))

(declare-fun e!4415027 () (InoxSet Context!16474))

(assert (=> b!7375169 (= e!4415026 e!4415027)))

(declare-fun b!7375170 () Bool)

(declare-fun e!4415029 () (InoxSet Context!16474))

(declare-fun call!677894 () (InoxSet Context!16474))

(assert (=> b!7375170 (= e!4415029 ((_ map or) call!677894 call!677895))))

(declare-fun b!7375171 () Bool)

(declare-fun call!677899 () (InoxSet Context!16474))

(assert (=> b!7375171 (= e!4415028 ((_ map or) call!677894 call!677899))))

(declare-fun b!7375172 () Bool)

(assert (=> b!7375172 (= e!4415027 call!677897)))

(declare-fun bm!677891 () Bool)

(declare-fun call!677896 () List!71793)

(assert (=> bm!677891 (= call!677896 call!677898)))

(declare-fun b!7375173 () Bool)

(assert (=> b!7375173 (= e!4415030 (store ((as const (Array Context!16474 Bool)) false) (ite (or c!1370691 c!1370694) ct1!282 (Context!16475 call!677785)) true))))

(declare-fun bm!677892 () Bool)

(assert (=> bm!677892 (= call!677894 (derivationStepZipperDown!3123 (ite c!1370796 (regOne!39107 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (regOne!39106 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370)))))) (ite c!1370796 (ite (or c!1370691 c!1370694) ct1!282 (Context!16475 call!677785)) (Context!16475 call!677898)) c!10362))))

(declare-fun b!7375174 () Bool)

(assert (=> b!7375174 (= e!4415029 e!4415026)))

(assert (=> b!7375174 (= c!1370795 ((_ is Concat!28142) (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))))))

(declare-fun bm!677893 () Bool)

(assert (=> bm!677893 (= call!677899 (derivationStepZipperDown!3123 (ite c!1370796 (regTwo!39107 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (ite c!1370799 (regTwo!39106 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (ite c!1370795 (regOne!39106 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (reg!19626 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370)))))))) (ite (or c!1370796 c!1370799) (ite (or c!1370691 c!1370694) ct1!282 (Context!16475 call!677785)) (Context!16475 call!677896)) c!10362))))

(declare-fun b!7375175 () Bool)

(assert (=> b!7375175 (= c!1370799 e!4415025)))

(declare-fun res!2975379 () Bool)

(assert (=> b!7375175 (=> (not res!2975379) (not e!4415025))))

(assert (=> b!7375175 (= res!2975379 ((_ is Concat!28142) (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))))))

(assert (=> b!7375175 (= e!4415028 e!4415029)))

(declare-fun bm!677894 () Bool)

(assert (=> bm!677894 (= call!677895 call!677899)))

(declare-fun b!7375176 () Bool)

(assert (=> b!7375176 (= e!4415026 call!677897)))

(declare-fun d!2284517 () Bool)

(declare-fun c!1370797 () Bool)

(assert (=> d!2284517 (= c!1370797 (and ((_ is ElementMatch!19297) (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) (= (c!1370645 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370))))) c!10362)))))

(assert (=> d!2284517 (= (derivationStepZipperDown!3123 (ite c!1370691 (regTwo!39107 r1!2370) (ite c!1370694 (regTwo!39106 r1!2370) (ite c!1370690 (regOne!39106 r1!2370) (reg!19626 r1!2370)))) (ite (or c!1370691 c!1370694) ct1!282 (Context!16475 call!677785)) c!10362) e!4415030)))

(declare-fun b!7375177 () Bool)

(assert (=> b!7375177 (= e!4415027 ((as const (Array Context!16474 Bool)) false))))

(assert (= (and d!2284517 c!1370797) b!7375173))

(assert (= (and d!2284517 (not c!1370797)) b!7375167))

(assert (= (and b!7375167 c!1370796) b!7375171))

(assert (= (and b!7375167 (not c!1370796)) b!7375175))

(assert (= (and b!7375175 res!2975379) b!7375168))

(assert (= (and b!7375175 c!1370799) b!7375170))

(assert (= (and b!7375175 (not c!1370799)) b!7375174))

(assert (= (and b!7375174 c!1370795) b!7375176))

(assert (= (and b!7375174 (not c!1370795)) b!7375169))

(assert (= (and b!7375169 c!1370798) b!7375172))

(assert (= (and b!7375169 (not c!1370798)) b!7375177))

(assert (= (or b!7375176 b!7375172) bm!677891))

(assert (= (or b!7375176 b!7375172) bm!677889))

(assert (= (or b!7375170 bm!677889) bm!677894))

(assert (= (or b!7375170 bm!677891) bm!677890))

(assert (= (or b!7375171 bm!677894) bm!677893))

(assert (= (or b!7375171 b!7375170) bm!677892))

(declare-fun m!8027462 () Bool)

(assert (=> b!7375168 m!8027462))

(declare-fun m!8027464 () Bool)

(assert (=> b!7375173 m!8027464))

(declare-fun m!8027466 () Bool)

(assert (=> bm!677892 m!8027466))

(declare-fun m!8027468 () Bool)

(assert (=> bm!677890 m!8027468))

(declare-fun m!8027470 () Bool)

(assert (=> bm!677893 m!8027470))

(assert (=> bm!677782 d!2284517))

(declare-fun d!2284519 () Bool)

(declare-fun c!1370802 () Bool)

(assert (=> d!2284519 (= c!1370802 ((_ is Nil!71669) lt!2616170))))

(declare-fun e!4415055 () (InoxSet Regex!19297))

(assert (=> d!2284519 (= (content!15169 lt!2616170) e!4415055)))

(declare-fun b!7375264 () Bool)

(assert (=> b!7375264 (= e!4415055 ((as const (Array Regex!19297 Bool)) false))))

(declare-fun b!7375265 () Bool)

(assert (=> b!7375265 (= e!4415055 ((_ map or) (store ((as const (Array Regex!19297 Bool)) false) (h!78117 lt!2616170) true) (content!15169 (t!386266 lt!2616170))))))

(assert (= (and d!2284519 c!1370802) b!7375264))

(assert (= (and d!2284519 (not c!1370802)) b!7375265))

(declare-fun m!8027482 () Bool)

(assert (=> b!7375265 m!8027482))

(declare-fun m!8027484 () Bool)

(assert (=> b!7375265 m!8027484))

(assert (=> d!2284413 d!2284519))

(declare-fun d!2284533 () Bool)

(declare-fun c!1370803 () Bool)

(assert (=> d!2284533 (= c!1370803 ((_ is Nil!71669) (exprs!8737 ct1!282)))))

(declare-fun e!4415056 () (InoxSet Regex!19297))

(assert (=> d!2284533 (= (content!15169 (exprs!8737 ct1!282)) e!4415056)))

(declare-fun b!7375266 () Bool)

(assert (=> b!7375266 (= e!4415056 ((as const (Array Regex!19297 Bool)) false))))

(declare-fun b!7375267 () Bool)

(assert (=> b!7375267 (= e!4415056 ((_ map or) (store ((as const (Array Regex!19297 Bool)) false) (h!78117 (exprs!8737 ct1!282)) true) (content!15169 (t!386266 (exprs!8737 ct1!282)))))))

(assert (= (and d!2284533 c!1370803) b!7375266))

(assert (= (and d!2284533 (not c!1370803)) b!7375267))

(declare-fun m!8027486 () Bool)

(assert (=> b!7375267 m!8027486))

(assert (=> b!7375267 m!8027280))

(assert (=> d!2284413 d!2284533))

(declare-fun d!2284535 () Bool)

(declare-fun c!1370804 () Bool)

(assert (=> d!2284535 (= c!1370804 ((_ is Nil!71669) (exprs!8737 ct2!378)))))

(declare-fun e!4415057 () (InoxSet Regex!19297))

(assert (=> d!2284535 (= (content!15169 (exprs!8737 ct2!378)) e!4415057)))

(declare-fun b!7375268 () Bool)

(assert (=> b!7375268 (= e!4415057 ((as const (Array Regex!19297 Bool)) false))))

(declare-fun b!7375269 () Bool)

(assert (=> b!7375269 (= e!4415057 ((_ map or) (store ((as const (Array Regex!19297 Bool)) false) (h!78117 (exprs!8737 ct2!378)) true) (content!15169 (t!386266 (exprs!8737 ct2!378)))))))

(assert (= (and d!2284535 c!1370804) b!7375268))

(assert (= (and d!2284535 (not c!1370804)) b!7375269))

(declare-fun m!8027488 () Bool)

(assert (=> b!7375269 m!8027488))

(declare-fun m!8027490 () Bool)

(assert (=> b!7375269 m!8027490))

(assert (=> d!2284413 d!2284535))

(declare-fun d!2284537 () Bool)

(assert (=> d!2284537 (= ($colon$colon!3279 (exprs!8737 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378)))) (ite (or c!1370714 c!1370710) (regTwo!39106 r1!2370) r1!2370)) (Cons!71669 (ite (or c!1370714 c!1370710) (regTwo!39106 r1!2370) r1!2370) (exprs!8737 (Context!16475 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378))))))))

(assert (=> bm!677806 d!2284537))

(declare-fun d!2284539 () Bool)

(declare-fun res!2975380 () Bool)

(declare-fun e!4415058 () Bool)

(assert (=> d!2284539 (=> res!2975380 e!4415058)))

(assert (=> d!2284539 (= res!2975380 ((_ is Nil!71669) (exprs!8737 cWitness!61)))))

(assert (=> d!2284539 (= (forall!18095 (exprs!8737 cWitness!61) lambda!458262) e!4415058)))

(declare-fun b!7375270 () Bool)

(declare-fun e!4415059 () Bool)

(assert (=> b!7375270 (= e!4415058 e!4415059)))

(declare-fun res!2975381 () Bool)

(assert (=> b!7375270 (=> (not res!2975381) (not e!4415059))))

(assert (=> b!7375270 (= res!2975381 (dynLambda!29529 lambda!458262 (h!78117 (exprs!8737 cWitness!61))))))

(declare-fun b!7375271 () Bool)

(assert (=> b!7375271 (= e!4415059 (forall!18095 (t!386266 (exprs!8737 cWitness!61)) lambda!458262))))

(assert (= (and d!2284539 (not res!2975380)) b!7375270))

(assert (= (and b!7375270 res!2975381) b!7375271))

(declare-fun b_lambda!284563 () Bool)

(assert (=> (not b_lambda!284563) (not b!7375270)))

(declare-fun m!8027492 () Bool)

(assert (=> b!7375270 m!8027492))

(declare-fun m!8027494 () Bool)

(assert (=> b!7375271 m!8027494))

(assert (=> d!2284401 d!2284539))

(declare-fun d!2284541 () Bool)

(declare-fun res!2975382 () Bool)

(declare-fun e!4415060 () Bool)

(assert (=> d!2284541 (=> res!2975382 e!4415060)))

(assert (=> d!2284541 (= res!2975382 ((_ is Nil!71669) (exprs!8737 ct2!378)))))

(assert (=> d!2284541 (= (forall!18095 (exprs!8737 ct2!378) lambda!458264) e!4415060)))

(declare-fun b!7375272 () Bool)

(declare-fun e!4415061 () Bool)

(assert (=> b!7375272 (= e!4415060 e!4415061)))

(declare-fun res!2975383 () Bool)

(assert (=> b!7375272 (=> (not res!2975383) (not e!4415061))))

(assert (=> b!7375272 (= res!2975383 (dynLambda!29529 lambda!458264 (h!78117 (exprs!8737 ct2!378))))))

(declare-fun b!7375273 () Bool)

(assert (=> b!7375273 (= e!4415061 (forall!18095 (t!386266 (exprs!8737 ct2!378)) lambda!458264))))

(assert (= (and d!2284541 (not res!2975382)) b!7375272))

(assert (= (and b!7375272 res!2975383) b!7375273))

(declare-fun b_lambda!284565 () Bool)

(assert (=> (not b_lambda!284565) (not b!7375272)))

(declare-fun m!8027496 () Bool)

(assert (=> b!7375272 m!8027496))

(declare-fun m!8027498 () Bool)

(assert (=> b!7375273 m!8027498))

(assert (=> d!2284405 d!2284541))

(declare-fun b!7375288 () Bool)

(declare-fun e!4415077 () Bool)

(declare-fun e!4415076 () Bool)

(assert (=> b!7375288 (= e!4415077 e!4415076)))

(declare-fun res!2975395 () Bool)

(declare-fun call!677904 () Bool)

(assert (=> b!7375288 (= res!2975395 call!677904)))

(assert (=> b!7375288 (=> (not res!2975395) (not e!4415076))))

(declare-fun b!7375289 () Bool)

(declare-fun e!4415075 () Bool)

(assert (=> b!7375289 (= e!4415075 e!4415077)))

(declare-fun c!1370807 () Bool)

(assert (=> b!7375289 (= c!1370807 ((_ is Union!19297) (regOne!39106 r1!2370)))))

(declare-fun b!7375290 () Bool)

(declare-fun call!677905 () Bool)

(assert (=> b!7375290 (= e!4415076 call!677905)))

(declare-fun bm!677899 () Bool)

(assert (=> bm!677899 (= call!677905 (nullable!8373 (ite c!1370807 (regOne!39107 (regOne!39106 r1!2370)) (regTwo!39106 (regOne!39106 r1!2370)))))))

(declare-fun b!7375291 () Bool)

(declare-fun e!4415074 () Bool)

(assert (=> b!7375291 (= e!4415077 e!4415074)))

(declare-fun res!2975396 () Bool)

(assert (=> b!7375291 (= res!2975396 call!677905)))

(assert (=> b!7375291 (=> res!2975396 e!4415074)))

(declare-fun d!2284543 () Bool)

(declare-fun res!2975394 () Bool)

(declare-fun e!4415078 () Bool)

(assert (=> d!2284543 (=> res!2975394 e!4415078)))

(assert (=> d!2284543 (= res!2975394 ((_ is EmptyExpr!19297) (regOne!39106 r1!2370)))))

(assert (=> d!2284543 (= (nullableFct!3352 (regOne!39106 r1!2370)) e!4415078)))

(declare-fun b!7375292 () Bool)

(declare-fun e!4415079 () Bool)

(assert (=> b!7375292 (= e!4415079 e!4415075)))

(declare-fun res!2975398 () Bool)

(assert (=> b!7375292 (=> res!2975398 e!4415075)))

(assert (=> b!7375292 (= res!2975398 ((_ is Star!19297) (regOne!39106 r1!2370)))))

(declare-fun b!7375293 () Bool)

(assert (=> b!7375293 (= e!4415074 call!677904)))

(declare-fun bm!677900 () Bool)

(assert (=> bm!677900 (= call!677904 (nullable!8373 (ite c!1370807 (regTwo!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))))))

(declare-fun b!7375294 () Bool)

(assert (=> b!7375294 (= e!4415078 e!4415079)))

(declare-fun res!2975397 () Bool)

(assert (=> b!7375294 (=> (not res!2975397) (not e!4415079))))

(assert (=> b!7375294 (= res!2975397 (and (not ((_ is EmptyLang!19297) (regOne!39106 r1!2370))) (not ((_ is ElementMatch!19297) (regOne!39106 r1!2370)))))))

(assert (= (and d!2284543 (not res!2975394)) b!7375294))

(assert (= (and b!7375294 res!2975397) b!7375292))

(assert (= (and b!7375292 (not res!2975398)) b!7375289))

(assert (= (and b!7375289 c!1370807) b!7375291))

(assert (= (and b!7375289 (not c!1370807)) b!7375288))

(assert (= (and b!7375291 (not res!2975396)) b!7375293))

(assert (= (and b!7375288 res!2975395) b!7375290))

(assert (= (or b!7375293 b!7375288) bm!677900))

(assert (= (or b!7375291 b!7375290) bm!677899))

(declare-fun m!8027500 () Bool)

(assert (=> bm!677899 m!8027500))

(declare-fun m!8027502 () Bool)

(assert (=> bm!677900 m!8027502))

(assert (=> d!2284395 d!2284543))

(declare-fun b!7375295 () Bool)

(declare-fun e!4415085 () (InoxSet Context!16474))

(declare-fun e!4415083 () (InoxSet Context!16474))

(assert (=> b!7375295 (= e!4415085 e!4415083)))

(declare-fun c!1370809 () Bool)

(assert (=> b!7375295 (= c!1370809 ((_ is Union!19297) (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))))))

(declare-fun b!7375296 () Bool)

(declare-fun e!4415080 () Bool)

(assert (=> b!7375296 (= e!4415080 (nullable!8373 (regOne!39106 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370))))))))

(declare-fun bm!677901 () Bool)

(declare-fun call!677909 () (InoxSet Context!16474))

(declare-fun call!677907 () (InoxSet Context!16474))

(assert (=> bm!677901 (= call!677909 call!677907)))

(declare-fun call!677910 () List!71793)

(declare-fun bm!677902 () Bool)

(declare-fun c!1370808 () Bool)

(declare-fun c!1370812 () Bool)

(assert (=> bm!677902 (= call!677910 ($colon$colon!3279 (exprs!8737 (ite c!1370706 lt!2616160 (Context!16475 call!677808))) (ite (or c!1370812 c!1370808) (regTwo!39106 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))) (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370))))))))

(declare-fun b!7375297 () Bool)

(declare-fun c!1370811 () Bool)

(assert (=> b!7375297 (= c!1370811 ((_ is Star!19297) (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))))))

(declare-fun e!4415081 () (InoxSet Context!16474))

(declare-fun e!4415082 () (InoxSet Context!16474))

(assert (=> b!7375297 (= e!4415081 e!4415082)))

(declare-fun b!7375298 () Bool)

(declare-fun e!4415084 () (InoxSet Context!16474))

(declare-fun call!677906 () (InoxSet Context!16474))

(assert (=> b!7375298 (= e!4415084 ((_ map or) call!677906 call!677907))))

(declare-fun b!7375299 () Bool)

(declare-fun call!677911 () (InoxSet Context!16474))

(assert (=> b!7375299 (= e!4415083 ((_ map or) call!677906 call!677911))))

(declare-fun b!7375300 () Bool)

(assert (=> b!7375300 (= e!4415082 call!677909)))

(declare-fun bm!677903 () Bool)

(declare-fun call!677908 () List!71793)

(assert (=> bm!677903 (= call!677908 call!677910)))

(declare-fun b!7375301 () Bool)

(assert (=> b!7375301 (= e!4415085 (store ((as const (Array Context!16474 Bool)) false) (ite c!1370706 lt!2616160 (Context!16475 call!677808)) true))))

(declare-fun bm!677904 () Bool)

(assert (=> bm!677904 (= call!677906 (derivationStepZipperDown!3123 (ite c!1370809 (regOne!39107 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))) (regOne!39106 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370))))) (ite c!1370809 (ite c!1370706 lt!2616160 (Context!16475 call!677808)) (Context!16475 call!677910)) c!10362))))

(declare-fun b!7375302 () Bool)

(assert (=> b!7375302 (= e!4415084 e!4415081)))

(assert (=> b!7375302 (= c!1370808 ((_ is Concat!28142) (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))))))

(declare-fun bm!677905 () Bool)

(assert (=> bm!677905 (= call!677911 (derivationStepZipperDown!3123 (ite c!1370809 (regTwo!39107 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))) (ite c!1370812 (regTwo!39106 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))) (ite c!1370808 (regOne!39106 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))) (reg!19626 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370))))))) (ite (or c!1370809 c!1370812) (ite c!1370706 lt!2616160 (Context!16475 call!677808)) (Context!16475 call!677908)) c!10362))))

(declare-fun b!7375303 () Bool)

(assert (=> b!7375303 (= c!1370812 e!4415080)))

(declare-fun res!2975399 () Bool)

(assert (=> b!7375303 (=> (not res!2975399) (not e!4415080))))

(assert (=> b!7375303 (= res!2975399 ((_ is Concat!28142) (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))))))

(assert (=> b!7375303 (= e!4415083 e!4415084)))

(declare-fun bm!677906 () Bool)

(assert (=> bm!677906 (= call!677907 call!677911)))

(declare-fun b!7375304 () Bool)

(assert (=> b!7375304 (= e!4415081 call!677909)))

(declare-fun c!1370810 () Bool)

(declare-fun d!2284545 () Bool)

(assert (=> d!2284545 (= c!1370810 (and ((_ is ElementMatch!19297) (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))) (= (c!1370645 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370)))) c!10362)))))

(assert (=> d!2284545 (= (derivationStepZipperDown!3123 (ite c!1370706 (regOne!39107 (regOne!39106 r1!2370)) (regOne!39106 (regOne!39106 r1!2370))) (ite c!1370706 lt!2616160 (Context!16475 call!677808)) c!10362) e!4415085)))

(declare-fun b!7375305 () Bool)

(assert (=> b!7375305 (= e!4415082 ((as const (Array Context!16474 Bool)) false))))

(assert (= (and d!2284545 c!1370810) b!7375301))

(assert (= (and d!2284545 (not c!1370810)) b!7375295))

(assert (= (and b!7375295 c!1370809) b!7375299))

(assert (= (and b!7375295 (not c!1370809)) b!7375303))

(assert (= (and b!7375303 res!2975399) b!7375296))

(assert (= (and b!7375303 c!1370812) b!7375298))

(assert (= (and b!7375303 (not c!1370812)) b!7375302))

(assert (= (and b!7375302 c!1370808) b!7375304))

(assert (= (and b!7375302 (not c!1370808)) b!7375297))

(assert (= (and b!7375297 c!1370811) b!7375300))

(assert (= (and b!7375297 (not c!1370811)) b!7375305))

(assert (= (or b!7375304 b!7375300) bm!677903))

(assert (= (or b!7375304 b!7375300) bm!677901))

(assert (= (or b!7375298 bm!677901) bm!677906))

(assert (= (or b!7375298 bm!677903) bm!677902))

(assert (= (or b!7375299 bm!677906) bm!677905))

(assert (= (or b!7375299 b!7375298) bm!677904))

(declare-fun m!8027504 () Bool)

(assert (=> b!7375296 m!8027504))

(declare-fun m!8027506 () Bool)

(assert (=> b!7375301 m!8027506))

(declare-fun m!8027508 () Bool)

(assert (=> bm!677904 m!8027508))

(declare-fun m!8027510 () Bool)

(assert (=> bm!677902 m!8027510))

(declare-fun m!8027512 () Bool)

(assert (=> bm!677905 m!8027512))

(assert (=> bm!677802 d!2284545))

(assert (=> b!7374731 d!2284395))

(declare-fun b!7375306 () Bool)

(declare-fun e!4415090 () Bool)

(declare-fun e!4415089 () Bool)

(assert (=> b!7375306 (= e!4415090 e!4415089)))

(declare-fun res!2975404 () Bool)

(assert (=> b!7375306 (=> (not res!2975404) (not e!4415089))))

(declare-fun call!677914 () Bool)

(assert (=> b!7375306 (= res!2975404 call!677914)))

(declare-fun d!2284547 () Bool)

(declare-fun res!2975401 () Bool)

(declare-fun e!4415091 () Bool)

(assert (=> d!2284547 (=> res!2975401 e!4415091)))

(assert (=> d!2284547 (= res!2975401 ((_ is ElementMatch!19297) (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370)))))))

(assert (=> d!2284547 (= (validRegex!9893 (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370)))) e!4415091)))

(declare-fun b!7375307 () Bool)

(declare-fun res!2975400 () Bool)

(assert (=> b!7375307 (=> res!2975400 e!4415090)))

(assert (=> b!7375307 (= res!2975400 (not ((_ is Concat!28142) (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370))))))))

(declare-fun e!4415087 () Bool)

(assert (=> b!7375307 (= e!4415087 e!4415090)))

(declare-fun bm!677907 () Bool)

(declare-fun call!677913 () Bool)

(assert (=> bm!677907 (= call!677914 call!677913)))

(declare-fun b!7375308 () Bool)

(declare-fun res!2975403 () Bool)

(declare-fun e!4415086 () Bool)

(assert (=> b!7375308 (=> (not res!2975403) (not e!4415086))))

(declare-fun call!677912 () Bool)

(assert (=> b!7375308 (= res!2975403 call!677912)))

(assert (=> b!7375308 (= e!4415087 e!4415086)))

(declare-fun b!7375309 () Bool)

(assert (=> b!7375309 (= e!4415089 call!677912)))

(declare-fun b!7375310 () Bool)

(declare-fun e!4415092 () Bool)

(assert (=> b!7375310 (= e!4415092 e!4415087)))

(declare-fun c!1370813 () Bool)

(assert (=> b!7375310 (= c!1370813 ((_ is Union!19297) (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370)))))))

(declare-fun b!7375311 () Bool)

(assert (=> b!7375311 (= e!4415091 e!4415092)))

(declare-fun c!1370814 () Bool)

(assert (=> b!7375311 (= c!1370814 ((_ is Star!19297) (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370)))))))

(declare-fun b!7375312 () Bool)

(declare-fun e!4415088 () Bool)

(assert (=> b!7375312 (= e!4415092 e!4415088)))

(declare-fun res!2975402 () Bool)

(assert (=> b!7375312 (= res!2975402 (not (nullable!8373 (reg!19626 (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370)))))))))

(assert (=> b!7375312 (=> (not res!2975402) (not e!4415088))))

(declare-fun b!7375313 () Bool)

(assert (=> b!7375313 (= e!4415088 call!677913)))

(declare-fun bm!677908 () Bool)

(assert (=> bm!677908 (= call!677913 (validRegex!9893 (ite c!1370814 (reg!19626 (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370)))) (ite c!1370813 (regTwo!39107 (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370)))) (regOne!39106 (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370))))))))))

(declare-fun bm!677909 () Bool)

(assert (=> bm!677909 (= call!677912 (validRegex!9893 (ite c!1370813 (regOne!39107 (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370)))) (regTwo!39106 (ite c!1370701 (regOne!39107 (regTwo!39106 r1!2370)) (regTwo!39106 (regTwo!39106 r1!2370)))))))))

(declare-fun b!7375314 () Bool)

(assert (=> b!7375314 (= e!4415086 call!677914)))

(assert (= (and d!2284547 (not res!2975401)) b!7375311))

(assert (= (and b!7375311 c!1370814) b!7375312))

(assert (= (and b!7375311 (not c!1370814)) b!7375310))

(assert (= (and b!7375312 res!2975402) b!7375313))

(assert (= (and b!7375310 c!1370813) b!7375308))

(assert (= (and b!7375310 (not c!1370813)) b!7375307))

(assert (= (and b!7375308 res!2975403) b!7375314))

(assert (= (and b!7375307 (not res!2975400)) b!7375306))

(assert (= (and b!7375306 res!2975404) b!7375309))

(assert (= (or b!7375308 b!7375309) bm!677909))

(assert (= (or b!7375314 b!7375306) bm!677907))

(assert (= (or b!7375313 bm!677907) bm!677908))

(declare-fun m!8027514 () Bool)

(assert (=> b!7375312 m!8027514))

(declare-fun m!8027516 () Bool)

(assert (=> bm!677908 m!8027516))

(declare-fun m!8027518 () Bool)

(assert (=> bm!677909 m!8027518))

(assert (=> bm!677795 d!2284547))

(declare-fun b!7375315 () Bool)

(declare-fun e!4415097 () Bool)

(declare-fun e!4415096 () Bool)

(assert (=> b!7375315 (= e!4415097 e!4415096)))

(declare-fun res!2975409 () Bool)

(assert (=> b!7375315 (=> (not res!2975409) (not e!4415096))))

(declare-fun call!677917 () Bool)

(assert (=> b!7375315 (= res!2975409 call!677917)))

(declare-fun d!2284549 () Bool)

(declare-fun res!2975406 () Bool)

(declare-fun e!4415098 () Bool)

(assert (=> d!2284549 (=> res!2975406 e!4415098)))

(assert (=> d!2284549 (= res!2975406 ((_ is ElementMatch!19297) (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370))))))))

(assert (=> d!2284549 (= (validRegex!9893 (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370))))) e!4415098)))

(declare-fun b!7375316 () Bool)

(declare-fun res!2975405 () Bool)

(assert (=> b!7375316 (=> res!2975405 e!4415097)))

(assert (=> b!7375316 (= res!2975405 (not ((_ is Concat!28142) (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370)))))))))

(declare-fun e!4415094 () Bool)

(assert (=> b!7375316 (= e!4415094 e!4415097)))

(declare-fun bm!677910 () Bool)

(declare-fun call!677916 () Bool)

(assert (=> bm!677910 (= call!677917 call!677916)))

(declare-fun b!7375317 () Bool)

(declare-fun res!2975408 () Bool)

(declare-fun e!4415093 () Bool)

(assert (=> b!7375317 (=> (not res!2975408) (not e!4415093))))

(declare-fun call!677915 () Bool)

(assert (=> b!7375317 (= res!2975408 call!677915)))

(assert (=> b!7375317 (= e!4415094 e!4415093)))

(declare-fun b!7375318 () Bool)

(assert (=> b!7375318 (= e!4415096 call!677915)))

(declare-fun b!7375319 () Bool)

(declare-fun e!4415099 () Bool)

(assert (=> b!7375319 (= e!4415099 e!4415094)))

(declare-fun c!1370815 () Bool)

(assert (=> b!7375319 (= c!1370815 ((_ is Union!19297) (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370))))))))

(declare-fun b!7375320 () Bool)

(assert (=> b!7375320 (= e!4415098 e!4415099)))

(declare-fun c!1370816 () Bool)

(assert (=> b!7375320 (= c!1370816 ((_ is Star!19297) (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370))))))))

(declare-fun b!7375321 () Bool)

(declare-fun e!4415095 () Bool)

(assert (=> b!7375321 (= e!4415099 e!4415095)))

(declare-fun res!2975407 () Bool)

(assert (=> b!7375321 (= res!2975407 (not (nullable!8373 (reg!19626 (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370))))))))))

(assert (=> b!7375321 (=> (not res!2975407) (not e!4415095))))

(declare-fun b!7375322 () Bool)

(assert (=> b!7375322 (= e!4415095 call!677916)))

(declare-fun bm!677911 () Bool)

(assert (=> bm!677911 (= call!677916 (validRegex!9893 (ite c!1370816 (reg!19626 (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370))))) (ite c!1370815 (regTwo!39107 (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370))))) (regOne!39106 (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370)))))))))))

(declare-fun bm!677912 () Bool)

(assert (=> bm!677912 (= call!677915 (validRegex!9893 (ite c!1370815 (regOne!39107 (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370))))) (regTwo!39106 (ite c!1370702 (reg!19626 (regTwo!39106 r1!2370)) (ite c!1370701 (regTwo!39107 (regTwo!39106 r1!2370)) (regOne!39106 (regTwo!39106 r1!2370))))))))))

(declare-fun b!7375323 () Bool)

(assert (=> b!7375323 (= e!4415093 call!677917)))

(assert (= (and d!2284549 (not res!2975406)) b!7375320))

(assert (= (and b!7375320 c!1370816) b!7375321))

(assert (= (and b!7375320 (not c!1370816)) b!7375319))

(assert (= (and b!7375321 res!2975407) b!7375322))

(assert (= (and b!7375319 c!1370815) b!7375317))

(assert (= (and b!7375319 (not c!1370815)) b!7375316))

(assert (= (and b!7375317 res!2975408) b!7375323))

(assert (= (and b!7375316 (not res!2975405)) b!7375315))

(assert (= (and b!7375315 res!2975409) b!7375318))

(assert (= (or b!7375317 b!7375318) bm!677912))

(assert (= (or b!7375323 b!7375315) bm!677910))

(assert (= (or b!7375322 bm!677910) bm!677911))

(declare-fun m!8027520 () Bool)

(assert (=> b!7375321 m!8027520))

(declare-fun m!8027522 () Bool)

(assert (=> bm!677911 m!8027522))

(declare-fun m!8027524 () Bool)

(assert (=> bm!677912 m!8027524))

(assert (=> bm!677794 d!2284549))

(declare-fun b!7375324 () Bool)

(declare-fun e!4415105 () (InoxSet Context!16474))

(declare-fun e!4415103 () (InoxSet Context!16474))

(assert (=> b!7375324 (= e!4415105 e!4415103)))

(declare-fun c!1370818 () Bool)

(assert (=> b!7375324 (= c!1370818 ((_ is Union!19297) (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))))))

(declare-fun b!7375325 () Bool)

(declare-fun e!4415100 () Bool)

(assert (=> b!7375325 (= e!4415100 (nullable!8373 (regOne!39106 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370))))))))))

(declare-fun bm!677913 () Bool)

(declare-fun call!677921 () (InoxSet Context!16474))

(declare-fun call!677919 () (InoxSet Context!16474))

(assert (=> bm!677913 (= call!677921 call!677919)))

(declare-fun c!1370817 () Bool)

(declare-fun call!677922 () List!71793)

(declare-fun bm!677914 () Bool)

(declare-fun c!1370821 () Bool)

(assert (=> bm!677914 (= call!677922 ($colon$colon!3279 (exprs!8737 (ite (or c!1370706 c!1370709) lt!2616160 (Context!16475 call!677806))) (ite (or c!1370821 c!1370817) (regTwo!39106 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))) (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370))))))))))

(declare-fun b!7375326 () Bool)

(declare-fun c!1370820 () Bool)

(assert (=> b!7375326 (= c!1370820 ((_ is Star!19297) (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))))))

(declare-fun e!4415101 () (InoxSet Context!16474))

(declare-fun e!4415102 () (InoxSet Context!16474))

(assert (=> b!7375326 (= e!4415101 e!4415102)))

(declare-fun b!7375327 () Bool)

(declare-fun e!4415104 () (InoxSet Context!16474))

(declare-fun call!677918 () (InoxSet Context!16474))

(assert (=> b!7375327 (= e!4415104 ((_ map or) call!677918 call!677919))))

(declare-fun b!7375328 () Bool)

(declare-fun call!677923 () (InoxSet Context!16474))

(assert (=> b!7375328 (= e!4415103 ((_ map or) call!677918 call!677923))))

(declare-fun b!7375329 () Bool)

(assert (=> b!7375329 (= e!4415102 call!677921)))

(declare-fun bm!677915 () Bool)

(declare-fun call!677920 () List!71793)

(assert (=> bm!677915 (= call!677920 call!677922)))

(declare-fun b!7375330 () Bool)

(assert (=> b!7375330 (= e!4415105 (store ((as const (Array Context!16474 Bool)) false) (ite (or c!1370706 c!1370709) lt!2616160 (Context!16475 call!677806)) true))))

(declare-fun bm!677916 () Bool)

(assert (=> bm!677916 (= call!677918 (derivationStepZipperDown!3123 (ite c!1370818 (regOne!39107 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))) (regOne!39106 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370))))))) (ite c!1370818 (ite (or c!1370706 c!1370709) lt!2616160 (Context!16475 call!677806)) (Context!16475 call!677922)) c!10362))))

(declare-fun b!7375331 () Bool)

(assert (=> b!7375331 (= e!4415104 e!4415101)))

(assert (=> b!7375331 (= c!1370817 ((_ is Concat!28142) (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))))))

(declare-fun bm!677917 () Bool)

(assert (=> bm!677917 (= call!677923 (derivationStepZipperDown!3123 (ite c!1370818 (regTwo!39107 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))) (ite c!1370821 (regTwo!39106 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))) (ite c!1370817 (regOne!39106 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))) (reg!19626 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370))))))))) (ite (or c!1370818 c!1370821) (ite (or c!1370706 c!1370709) lt!2616160 (Context!16475 call!677806)) (Context!16475 call!677920)) c!10362))))

(declare-fun b!7375332 () Bool)

(assert (=> b!7375332 (= c!1370821 e!4415100)))

(declare-fun res!2975410 () Bool)

(assert (=> b!7375332 (=> (not res!2975410) (not e!4415100))))

(assert (=> b!7375332 (= res!2975410 ((_ is Concat!28142) (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))))))

(assert (=> b!7375332 (= e!4415103 e!4415104)))

(declare-fun bm!677918 () Bool)

(assert (=> bm!677918 (= call!677919 call!677923)))

(declare-fun b!7375333 () Bool)

(assert (=> b!7375333 (= e!4415101 call!677921)))

(declare-fun c!1370819 () Bool)

(declare-fun d!2284551 () Bool)

(assert (=> d!2284551 (= c!1370819 (and ((_ is ElementMatch!19297) (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))) (= (c!1370645 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370)))))) c!10362)))))

(assert (=> d!2284551 (= (derivationStepZipperDown!3123 (ite c!1370706 (regTwo!39107 (regOne!39106 r1!2370)) (ite c!1370709 (regTwo!39106 (regOne!39106 r1!2370)) (ite c!1370705 (regOne!39106 (regOne!39106 r1!2370)) (reg!19626 (regOne!39106 r1!2370))))) (ite (or c!1370706 c!1370709) lt!2616160 (Context!16475 call!677806)) c!10362) e!4415105)))

(declare-fun b!7375334 () Bool)

(assert (=> b!7375334 (= e!4415102 ((as const (Array Context!16474 Bool)) false))))

(assert (= (and d!2284551 c!1370819) b!7375330))

(assert (= (and d!2284551 (not c!1370819)) b!7375324))

(assert (= (and b!7375324 c!1370818) b!7375328))

(assert (= (and b!7375324 (not c!1370818)) b!7375332))

(assert (= (and b!7375332 res!2975410) b!7375325))

(assert (= (and b!7375332 c!1370821) b!7375327))

(assert (= (and b!7375332 (not c!1370821)) b!7375331))

(assert (= (and b!7375331 c!1370817) b!7375333))

(assert (= (and b!7375331 (not c!1370817)) b!7375326))

(assert (= (and b!7375326 c!1370820) b!7375329))

(assert (= (and b!7375326 (not c!1370820)) b!7375334))

(assert (= (or b!7375333 b!7375329) bm!677915))

(assert (= (or b!7375333 b!7375329) bm!677913))

(assert (= (or b!7375327 bm!677913) bm!677918))

(assert (= (or b!7375327 bm!677915) bm!677914))

(assert (= (or b!7375328 bm!677918) bm!677917))

(assert (= (or b!7375328 b!7375327) bm!677916))

(declare-fun m!8027526 () Bool)

(assert (=> b!7375325 m!8027526))

(declare-fun m!8027528 () Bool)

(assert (=> b!7375330 m!8027528))

(declare-fun m!8027530 () Bool)

(assert (=> bm!677916 m!8027530))

(declare-fun m!8027532 () Bool)

(assert (=> bm!677914 m!8027532))

(declare-fun m!8027534 () Bool)

(assert (=> bm!677917 m!8027534))

(assert (=> bm!677803 d!2284551))

(declare-fun d!2284553 () Bool)

(assert (=> d!2284553 (= ($colon$colon!3279 (exprs!8737 ct1!282) (ite (or c!1370694 c!1370690) (regTwo!39106 r1!2370) r1!2370)) (Cons!71669 (ite (or c!1370694 c!1370690) (regTwo!39106 r1!2370) r1!2370) (exprs!8737 ct1!282)))))

(assert (=> bm!677779 d!2284553))

(assert (=> b!7374835 d!2284395))

(declare-fun b!7375338 () Bool)

(declare-fun e!4415106 () Bool)

(declare-fun tp!2097080 () Bool)

(declare-fun tp!2097081 () Bool)

(assert (=> b!7375338 (= e!4415106 (and tp!2097080 tp!2097081))))

(declare-fun b!7375337 () Bool)

(declare-fun tp!2097082 () Bool)

(assert (=> b!7375337 (= e!4415106 tp!2097082)))

(assert (=> b!7374893 (= tp!2096929 e!4415106)))

(declare-fun b!7375336 () Bool)

(declare-fun tp!2097084 () Bool)

(declare-fun tp!2097083 () Bool)

(assert (=> b!7375336 (= e!4415106 (and tp!2097084 tp!2097083))))

(declare-fun b!7375335 () Bool)

(assert (=> b!7375335 (= e!4415106 tp_is_empty!48839)))

(assert (= (and b!7374893 ((_ is ElementMatch!19297) (regOne!39107 (regTwo!39107 r1!2370)))) b!7375335))

(assert (= (and b!7374893 ((_ is Concat!28142) (regOne!39107 (regTwo!39107 r1!2370)))) b!7375336))

(assert (= (and b!7374893 ((_ is Star!19297) (regOne!39107 (regTwo!39107 r1!2370)))) b!7375337))

(assert (= (and b!7374893 ((_ is Union!19297) (regOne!39107 (regTwo!39107 r1!2370)))) b!7375338))

(declare-fun b!7375342 () Bool)

(declare-fun e!4415107 () Bool)

(declare-fun tp!2097085 () Bool)

(declare-fun tp!2097086 () Bool)

(assert (=> b!7375342 (= e!4415107 (and tp!2097085 tp!2097086))))

(declare-fun b!7375341 () Bool)

(declare-fun tp!2097087 () Bool)

(assert (=> b!7375341 (= e!4415107 tp!2097087)))

(assert (=> b!7374893 (= tp!2096930 e!4415107)))

(declare-fun b!7375340 () Bool)

(declare-fun tp!2097089 () Bool)

(declare-fun tp!2097088 () Bool)

(assert (=> b!7375340 (= e!4415107 (and tp!2097089 tp!2097088))))

(declare-fun b!7375339 () Bool)

(assert (=> b!7375339 (= e!4415107 tp_is_empty!48839)))

(assert (= (and b!7374893 ((_ is ElementMatch!19297) (regTwo!39107 (regTwo!39107 r1!2370)))) b!7375339))

(assert (= (and b!7374893 ((_ is Concat!28142) (regTwo!39107 (regTwo!39107 r1!2370)))) b!7375340))

(assert (= (and b!7374893 ((_ is Star!19297) (regTwo!39107 (regTwo!39107 r1!2370)))) b!7375341))

(assert (= (and b!7374893 ((_ is Union!19297) (regTwo!39107 (regTwo!39107 r1!2370)))) b!7375342))

(declare-fun b!7375346 () Bool)

(declare-fun e!4415108 () Bool)

(declare-fun tp!2097090 () Bool)

(declare-fun tp!2097091 () Bool)

(assert (=> b!7375346 (= e!4415108 (and tp!2097090 tp!2097091))))

(declare-fun b!7375345 () Bool)

(declare-fun tp!2097092 () Bool)

(assert (=> b!7375345 (= e!4415108 tp!2097092)))

(assert (=> b!7374888 (= tp!2096926 e!4415108)))

(declare-fun b!7375344 () Bool)

(declare-fun tp!2097094 () Bool)

(declare-fun tp!2097093 () Bool)

(assert (=> b!7375344 (= e!4415108 (and tp!2097094 tp!2097093))))

(declare-fun b!7375343 () Bool)

(assert (=> b!7375343 (= e!4415108 tp_is_empty!48839)))

(assert (= (and b!7374888 ((_ is ElementMatch!19297) (reg!19626 (regOne!39107 r1!2370)))) b!7375343))

(assert (= (and b!7374888 ((_ is Concat!28142) (reg!19626 (regOne!39107 r1!2370)))) b!7375344))

(assert (= (and b!7374888 ((_ is Star!19297) (reg!19626 (regOne!39107 r1!2370)))) b!7375345))

(assert (= (and b!7374888 ((_ is Union!19297) (reg!19626 (regOne!39107 r1!2370)))) b!7375346))

(declare-fun b!7375350 () Bool)

(declare-fun e!4415109 () Bool)

(declare-fun tp!2097095 () Bool)

(declare-fun tp!2097096 () Bool)

(assert (=> b!7375350 (= e!4415109 (and tp!2097095 tp!2097096))))

(declare-fun b!7375349 () Bool)

(declare-fun tp!2097097 () Bool)

(assert (=> b!7375349 (= e!4415109 tp!2097097)))

(assert (=> b!7374889 (= tp!2096924 e!4415109)))

(declare-fun b!7375348 () Bool)

(declare-fun tp!2097099 () Bool)

(declare-fun tp!2097098 () Bool)

(assert (=> b!7375348 (= e!4415109 (and tp!2097099 tp!2097098))))

(declare-fun b!7375347 () Bool)

(assert (=> b!7375347 (= e!4415109 tp_is_empty!48839)))

(assert (= (and b!7374889 ((_ is ElementMatch!19297) (regOne!39107 (regOne!39107 r1!2370)))) b!7375347))

(assert (= (and b!7374889 ((_ is Concat!28142) (regOne!39107 (regOne!39107 r1!2370)))) b!7375348))

(assert (= (and b!7374889 ((_ is Star!19297) (regOne!39107 (regOne!39107 r1!2370)))) b!7375349))

(assert (= (and b!7374889 ((_ is Union!19297) (regOne!39107 (regOne!39107 r1!2370)))) b!7375350))

(declare-fun b!7375354 () Bool)

(declare-fun e!4415110 () Bool)

(declare-fun tp!2097100 () Bool)

(declare-fun tp!2097101 () Bool)

(assert (=> b!7375354 (= e!4415110 (and tp!2097100 tp!2097101))))

(declare-fun b!7375353 () Bool)

(declare-fun tp!2097102 () Bool)

(assert (=> b!7375353 (= e!4415110 tp!2097102)))

(assert (=> b!7374889 (= tp!2096925 e!4415110)))

(declare-fun b!7375352 () Bool)

(declare-fun tp!2097104 () Bool)

(declare-fun tp!2097103 () Bool)

(assert (=> b!7375352 (= e!4415110 (and tp!2097104 tp!2097103))))

(declare-fun b!7375351 () Bool)

(assert (=> b!7375351 (= e!4415110 tp_is_empty!48839)))

(assert (= (and b!7374889 ((_ is ElementMatch!19297) (regTwo!39107 (regOne!39107 r1!2370)))) b!7375351))

(assert (= (and b!7374889 ((_ is Concat!28142) (regTwo!39107 (regOne!39107 r1!2370)))) b!7375352))

(assert (= (and b!7374889 ((_ is Star!19297) (regTwo!39107 (regOne!39107 r1!2370)))) b!7375353))

(assert (= (and b!7374889 ((_ is Union!19297) (regTwo!39107 (regOne!39107 r1!2370)))) b!7375354))

(declare-fun b!7375358 () Bool)

(declare-fun e!4415111 () Bool)

(declare-fun tp!2097105 () Bool)

(declare-fun tp!2097106 () Bool)

(assert (=> b!7375358 (= e!4415111 (and tp!2097105 tp!2097106))))

(declare-fun b!7375357 () Bool)

(declare-fun tp!2097107 () Bool)

(assert (=> b!7375357 (= e!4415111 tp!2097107)))

(assert (=> b!7374861 (= tp!2096893 e!4415111)))

(declare-fun b!7375356 () Bool)

(declare-fun tp!2097109 () Bool)

(declare-fun tp!2097108 () Bool)

(assert (=> b!7375356 (= e!4415111 (and tp!2097109 tp!2097108))))

(declare-fun b!7375355 () Bool)

(assert (=> b!7375355 (= e!4415111 tp_is_empty!48839)))

(assert (= (and b!7374861 ((_ is ElementMatch!19297) (h!78117 (exprs!8737 cWitness!61)))) b!7375355))

(assert (= (and b!7374861 ((_ is Concat!28142) (h!78117 (exprs!8737 cWitness!61)))) b!7375356))

(assert (= (and b!7374861 ((_ is Star!19297) (h!78117 (exprs!8737 cWitness!61)))) b!7375357))

(assert (= (and b!7374861 ((_ is Union!19297) (h!78117 (exprs!8737 cWitness!61)))) b!7375358))

(declare-fun b!7375359 () Bool)

(declare-fun e!4415112 () Bool)

(declare-fun tp!2097110 () Bool)

(declare-fun tp!2097111 () Bool)

(assert (=> b!7375359 (= e!4415112 (and tp!2097110 tp!2097111))))

(assert (=> b!7374861 (= tp!2096894 e!4415112)))

(assert (= (and b!7374861 ((_ is Cons!71669) (t!386266 (exprs!8737 cWitness!61)))) b!7375359))

(declare-fun b!7375363 () Bool)

(declare-fun e!4415113 () Bool)

(declare-fun tp!2097112 () Bool)

(declare-fun tp!2097113 () Bool)

(assert (=> b!7375363 (= e!4415113 (and tp!2097112 tp!2097113))))

(declare-fun b!7375362 () Bool)

(declare-fun tp!2097114 () Bool)

(assert (=> b!7375362 (= e!4415113 tp!2097114)))

(assert (=> b!7374887 (= tp!2096928 e!4415113)))

(declare-fun b!7375361 () Bool)

(declare-fun tp!2097116 () Bool)

(declare-fun tp!2097115 () Bool)

(assert (=> b!7375361 (= e!4415113 (and tp!2097116 tp!2097115))))

(declare-fun b!7375360 () Bool)

(assert (=> b!7375360 (= e!4415113 tp_is_empty!48839)))

(assert (= (and b!7374887 ((_ is ElementMatch!19297) (regOne!39106 (regOne!39107 r1!2370)))) b!7375360))

(assert (= (and b!7374887 ((_ is Concat!28142) (regOne!39106 (regOne!39107 r1!2370)))) b!7375361))

(assert (= (and b!7374887 ((_ is Star!19297) (regOne!39106 (regOne!39107 r1!2370)))) b!7375362))

(assert (= (and b!7374887 ((_ is Union!19297) (regOne!39106 (regOne!39107 r1!2370)))) b!7375363))

(declare-fun b!7375367 () Bool)

(declare-fun e!4415114 () Bool)

(declare-fun tp!2097117 () Bool)

(declare-fun tp!2097118 () Bool)

(assert (=> b!7375367 (= e!4415114 (and tp!2097117 tp!2097118))))

(declare-fun b!7375366 () Bool)

(declare-fun tp!2097119 () Bool)

(assert (=> b!7375366 (= e!4415114 tp!2097119)))

(assert (=> b!7374887 (= tp!2096927 e!4415114)))

(declare-fun b!7375365 () Bool)

(declare-fun tp!2097121 () Bool)

(declare-fun tp!2097120 () Bool)

(assert (=> b!7375365 (= e!4415114 (and tp!2097121 tp!2097120))))

(declare-fun b!7375364 () Bool)

(assert (=> b!7375364 (= e!4415114 tp_is_empty!48839)))

(assert (= (and b!7374887 ((_ is ElementMatch!19297) (regTwo!39106 (regOne!39107 r1!2370)))) b!7375364))

(assert (= (and b!7374887 ((_ is Concat!28142) (regTwo!39106 (regOne!39107 r1!2370)))) b!7375365))

(assert (= (and b!7374887 ((_ is Star!19297) (regTwo!39106 (regOne!39107 r1!2370)))) b!7375366))

(assert (= (and b!7374887 ((_ is Union!19297) (regTwo!39106 (regOne!39107 r1!2370)))) b!7375367))

(declare-fun b!7375371 () Bool)

(declare-fun e!4415115 () Bool)

(declare-fun tp!2097122 () Bool)

(declare-fun tp!2097123 () Bool)

(assert (=> b!7375371 (= e!4415115 (and tp!2097122 tp!2097123))))

(declare-fun b!7375370 () Bool)

(declare-fun tp!2097124 () Bool)

(assert (=> b!7375370 (= e!4415115 tp!2097124)))

(assert (=> b!7374892 (= tp!2096931 e!4415115)))

(declare-fun b!7375369 () Bool)

(declare-fun tp!2097126 () Bool)

(declare-fun tp!2097125 () Bool)

(assert (=> b!7375369 (= e!4415115 (and tp!2097126 tp!2097125))))

(declare-fun b!7375368 () Bool)

(assert (=> b!7375368 (= e!4415115 tp_is_empty!48839)))

(assert (= (and b!7374892 ((_ is ElementMatch!19297) (reg!19626 (regTwo!39107 r1!2370)))) b!7375368))

(assert (= (and b!7374892 ((_ is Concat!28142) (reg!19626 (regTwo!39107 r1!2370)))) b!7375369))

(assert (= (and b!7374892 ((_ is Star!19297) (reg!19626 (regTwo!39107 r1!2370)))) b!7375370))

(assert (= (and b!7374892 ((_ is Union!19297) (reg!19626 (regTwo!39107 r1!2370)))) b!7375371))

(declare-fun b!7375375 () Bool)

(declare-fun e!4415116 () Bool)

(declare-fun tp!2097127 () Bool)

(declare-fun tp!2097128 () Bool)

(assert (=> b!7375375 (= e!4415116 (and tp!2097127 tp!2097128))))

(declare-fun b!7375374 () Bool)

(declare-fun tp!2097129 () Bool)

(assert (=> b!7375374 (= e!4415116 tp!2097129)))

(assert (=> b!7374877 (= tp!2096914 e!4415116)))

(declare-fun b!7375373 () Bool)

(declare-fun tp!2097131 () Bool)

(declare-fun tp!2097130 () Bool)

(assert (=> b!7375373 (= e!4415116 (and tp!2097131 tp!2097130))))

(declare-fun b!7375372 () Bool)

(assert (=> b!7375372 (= e!4415116 tp_is_empty!48839)))

(assert (= (and b!7374877 ((_ is ElementMatch!19297) (regOne!39106 (regTwo!39106 r1!2370)))) b!7375372))

(assert (= (and b!7374877 ((_ is Concat!28142) (regOne!39106 (regTwo!39106 r1!2370)))) b!7375373))

(assert (= (and b!7374877 ((_ is Star!19297) (regOne!39106 (regTwo!39106 r1!2370)))) b!7375374))

(assert (= (and b!7374877 ((_ is Union!19297) (regOne!39106 (regTwo!39106 r1!2370)))) b!7375375))

(declare-fun b!7375379 () Bool)

(declare-fun e!4415117 () Bool)

(declare-fun tp!2097132 () Bool)

(declare-fun tp!2097133 () Bool)

(assert (=> b!7375379 (= e!4415117 (and tp!2097132 tp!2097133))))

(declare-fun b!7375378 () Bool)

(declare-fun tp!2097134 () Bool)

(assert (=> b!7375378 (= e!4415117 tp!2097134)))

(assert (=> b!7374877 (= tp!2096913 e!4415117)))

(declare-fun b!7375377 () Bool)

(declare-fun tp!2097136 () Bool)

(declare-fun tp!2097135 () Bool)

(assert (=> b!7375377 (= e!4415117 (and tp!2097136 tp!2097135))))

(declare-fun b!7375376 () Bool)

(assert (=> b!7375376 (= e!4415117 tp_is_empty!48839)))

(assert (= (and b!7374877 ((_ is ElementMatch!19297) (regTwo!39106 (regTwo!39106 r1!2370)))) b!7375376))

(assert (= (and b!7374877 ((_ is Concat!28142) (regTwo!39106 (regTwo!39106 r1!2370)))) b!7375377))

(assert (= (and b!7374877 ((_ is Star!19297) (regTwo!39106 (regTwo!39106 r1!2370)))) b!7375378))

(assert (= (and b!7374877 ((_ is Union!19297) (regTwo!39106 (regTwo!39106 r1!2370)))) b!7375379))

(declare-fun b!7375383 () Bool)

(declare-fun e!4415118 () Bool)

(declare-fun tp!2097137 () Bool)

(declare-fun tp!2097138 () Bool)

(assert (=> b!7375383 (= e!4415118 (and tp!2097137 tp!2097138))))

(declare-fun b!7375382 () Bool)

(declare-fun tp!2097139 () Bool)

(assert (=> b!7375382 (= e!4415118 tp!2097139)))

(assert (=> b!7374873 (= tp!2096909 e!4415118)))

(declare-fun b!7375381 () Bool)

(declare-fun tp!2097141 () Bool)

(declare-fun tp!2097140 () Bool)

(assert (=> b!7375381 (= e!4415118 (and tp!2097141 tp!2097140))))

(declare-fun b!7375380 () Bool)

(assert (=> b!7375380 (= e!4415118 tp_is_empty!48839)))

(assert (= (and b!7374873 ((_ is ElementMatch!19297) (regOne!39106 (regOne!39106 r1!2370)))) b!7375380))

(assert (= (and b!7374873 ((_ is Concat!28142) (regOne!39106 (regOne!39106 r1!2370)))) b!7375381))

(assert (= (and b!7374873 ((_ is Star!19297) (regOne!39106 (regOne!39106 r1!2370)))) b!7375382))

(assert (= (and b!7374873 ((_ is Union!19297) (regOne!39106 (regOne!39106 r1!2370)))) b!7375383))

(declare-fun b!7375387 () Bool)

(declare-fun e!4415119 () Bool)

(declare-fun tp!2097142 () Bool)

(declare-fun tp!2097143 () Bool)

(assert (=> b!7375387 (= e!4415119 (and tp!2097142 tp!2097143))))

(declare-fun b!7375386 () Bool)

(declare-fun tp!2097144 () Bool)

(assert (=> b!7375386 (= e!4415119 tp!2097144)))

(assert (=> b!7374873 (= tp!2096908 e!4415119)))

(declare-fun b!7375385 () Bool)

(declare-fun tp!2097146 () Bool)

(declare-fun tp!2097145 () Bool)

(assert (=> b!7375385 (= e!4415119 (and tp!2097146 tp!2097145))))

(declare-fun b!7375384 () Bool)

(assert (=> b!7375384 (= e!4415119 tp_is_empty!48839)))

(assert (= (and b!7374873 ((_ is ElementMatch!19297) (regTwo!39106 (regOne!39106 r1!2370)))) b!7375384))

(assert (= (and b!7374873 ((_ is Concat!28142) (regTwo!39106 (regOne!39106 r1!2370)))) b!7375385))

(assert (= (and b!7374873 ((_ is Star!19297) (regTwo!39106 (regOne!39106 r1!2370)))) b!7375386))

(assert (= (and b!7374873 ((_ is Union!19297) (regTwo!39106 (regOne!39106 r1!2370)))) b!7375387))

(declare-fun b!7375391 () Bool)

(declare-fun e!4415120 () Bool)

(declare-fun tp!2097147 () Bool)

(declare-fun tp!2097148 () Bool)

(assert (=> b!7375391 (= e!4415120 (and tp!2097147 tp!2097148))))

(declare-fun b!7375390 () Bool)

(declare-fun tp!2097149 () Bool)

(assert (=> b!7375390 (= e!4415120 tp!2097149)))

(assert (=> b!7374874 (= tp!2096907 e!4415120)))

(declare-fun b!7375389 () Bool)

(declare-fun tp!2097151 () Bool)

(declare-fun tp!2097150 () Bool)

(assert (=> b!7375389 (= e!4415120 (and tp!2097151 tp!2097150))))

(declare-fun b!7375388 () Bool)

(assert (=> b!7375388 (= e!4415120 tp_is_empty!48839)))

(assert (= (and b!7374874 ((_ is ElementMatch!19297) (reg!19626 (regOne!39106 r1!2370)))) b!7375388))

(assert (= (and b!7374874 ((_ is Concat!28142) (reg!19626 (regOne!39106 r1!2370)))) b!7375389))

(assert (= (and b!7374874 ((_ is Star!19297) (reg!19626 (regOne!39106 r1!2370)))) b!7375390))

(assert (= (and b!7374874 ((_ is Union!19297) (reg!19626 (regOne!39106 r1!2370)))) b!7375391))

(declare-fun b!7375395 () Bool)

(declare-fun e!4415121 () Bool)

(declare-fun tp!2097152 () Bool)

(declare-fun tp!2097153 () Bool)

(assert (=> b!7375395 (= e!4415121 (and tp!2097152 tp!2097153))))

(declare-fun b!7375394 () Bool)

(declare-fun tp!2097154 () Bool)

(assert (=> b!7375394 (= e!4415121 tp!2097154)))

(assert (=> b!7374885 (= tp!2096922 e!4415121)))

(declare-fun b!7375393 () Bool)

(declare-fun tp!2097156 () Bool)

(declare-fun tp!2097155 () Bool)

(assert (=> b!7375393 (= e!4415121 (and tp!2097156 tp!2097155))))

(declare-fun b!7375392 () Bool)

(assert (=> b!7375392 (= e!4415121 tp_is_empty!48839)))

(assert (= (and b!7374885 ((_ is ElementMatch!19297) (h!78117 (exprs!8737 ct2!378)))) b!7375392))

(assert (= (and b!7374885 ((_ is Concat!28142) (h!78117 (exprs!8737 ct2!378)))) b!7375393))

(assert (= (and b!7374885 ((_ is Star!19297) (h!78117 (exprs!8737 ct2!378)))) b!7375394))

(assert (= (and b!7374885 ((_ is Union!19297) (h!78117 (exprs!8737 ct2!378)))) b!7375395))

(declare-fun b!7375396 () Bool)

(declare-fun e!4415122 () Bool)

(declare-fun tp!2097157 () Bool)

(declare-fun tp!2097158 () Bool)

(assert (=> b!7375396 (= e!4415122 (and tp!2097157 tp!2097158))))

(assert (=> b!7374885 (= tp!2096923 e!4415122)))

(assert (= (and b!7374885 ((_ is Cons!71669) (t!386266 (exprs!8737 ct2!378)))) b!7375396))

(declare-fun b!7375400 () Bool)

(declare-fun e!4415123 () Bool)

(declare-fun tp!2097159 () Bool)

(declare-fun tp!2097160 () Bool)

(assert (=> b!7375400 (= e!4415123 (and tp!2097159 tp!2097160))))

(declare-fun b!7375399 () Bool)

(declare-fun tp!2097161 () Bool)

(assert (=> b!7375399 (= e!4415123 tp!2097161)))

(assert (=> b!7374882 (= tp!2096921 e!4415123)))

(declare-fun b!7375398 () Bool)

(declare-fun tp!2097163 () Bool)

(declare-fun tp!2097162 () Bool)

(assert (=> b!7375398 (= e!4415123 (and tp!2097163 tp!2097162))))

(declare-fun b!7375397 () Bool)

(assert (=> b!7375397 (= e!4415123 tp_is_empty!48839)))

(assert (= (and b!7374882 ((_ is ElementMatch!19297) (regOne!39106 (reg!19626 r1!2370)))) b!7375397))

(assert (= (and b!7374882 ((_ is Concat!28142) (regOne!39106 (reg!19626 r1!2370)))) b!7375398))

(assert (= (and b!7374882 ((_ is Star!19297) (regOne!39106 (reg!19626 r1!2370)))) b!7375399))

(assert (= (and b!7374882 ((_ is Union!19297) (regOne!39106 (reg!19626 r1!2370)))) b!7375400))

(declare-fun b!7375404 () Bool)

(declare-fun e!4415124 () Bool)

(declare-fun tp!2097164 () Bool)

(declare-fun tp!2097165 () Bool)

(assert (=> b!7375404 (= e!4415124 (and tp!2097164 tp!2097165))))

(declare-fun b!7375403 () Bool)

(declare-fun tp!2097166 () Bool)

(assert (=> b!7375403 (= e!4415124 tp!2097166)))

(assert (=> b!7374882 (= tp!2096920 e!4415124)))

(declare-fun b!7375402 () Bool)

(declare-fun tp!2097168 () Bool)

(declare-fun tp!2097167 () Bool)

(assert (=> b!7375402 (= e!4415124 (and tp!2097168 tp!2097167))))

(declare-fun b!7375401 () Bool)

(assert (=> b!7375401 (= e!4415124 tp_is_empty!48839)))

(assert (= (and b!7374882 ((_ is ElementMatch!19297) (regTwo!39106 (reg!19626 r1!2370)))) b!7375401))

(assert (= (and b!7374882 ((_ is Concat!28142) (regTwo!39106 (reg!19626 r1!2370)))) b!7375402))

(assert (= (and b!7374882 ((_ is Star!19297) (regTwo!39106 (reg!19626 r1!2370)))) b!7375403))

(assert (= (and b!7374882 ((_ is Union!19297) (regTwo!39106 (reg!19626 r1!2370)))) b!7375404))

(declare-fun b!7375408 () Bool)

(declare-fun e!4415125 () Bool)

(declare-fun tp!2097169 () Bool)

(declare-fun tp!2097170 () Bool)

(assert (=> b!7375408 (= e!4415125 (and tp!2097169 tp!2097170))))

(declare-fun b!7375407 () Bool)

(declare-fun tp!2097171 () Bool)

(assert (=> b!7375407 (= e!4415125 tp!2097171)))

(assert (=> b!7374878 (= tp!2096912 e!4415125)))

(declare-fun b!7375406 () Bool)

(declare-fun tp!2097173 () Bool)

(declare-fun tp!2097172 () Bool)

(assert (=> b!7375406 (= e!4415125 (and tp!2097173 tp!2097172))))

(declare-fun b!7375405 () Bool)

(assert (=> b!7375405 (= e!4415125 tp_is_empty!48839)))

(assert (= (and b!7374878 ((_ is ElementMatch!19297) (reg!19626 (regTwo!39106 r1!2370)))) b!7375405))

(assert (= (and b!7374878 ((_ is Concat!28142) (reg!19626 (regTwo!39106 r1!2370)))) b!7375406))

(assert (= (and b!7374878 ((_ is Star!19297) (reg!19626 (regTwo!39106 r1!2370)))) b!7375407))

(assert (= (and b!7374878 ((_ is Union!19297) (reg!19626 (regTwo!39106 r1!2370)))) b!7375408))

(declare-fun b!7375412 () Bool)

(declare-fun e!4415126 () Bool)

(declare-fun tp!2097174 () Bool)

(declare-fun tp!2097175 () Bool)

(assert (=> b!7375412 (= e!4415126 (and tp!2097174 tp!2097175))))

(declare-fun b!7375411 () Bool)

(declare-fun tp!2097176 () Bool)

(assert (=> b!7375411 (= e!4415126 tp!2097176)))

(assert (=> b!7374879 (= tp!2096910 e!4415126)))

(declare-fun b!7375410 () Bool)

(declare-fun tp!2097178 () Bool)

(declare-fun tp!2097177 () Bool)

(assert (=> b!7375410 (= e!4415126 (and tp!2097178 tp!2097177))))

(declare-fun b!7375409 () Bool)

(assert (=> b!7375409 (= e!4415126 tp_is_empty!48839)))

(assert (= (and b!7374879 ((_ is ElementMatch!19297) (regOne!39107 (regTwo!39106 r1!2370)))) b!7375409))

(assert (= (and b!7374879 ((_ is Concat!28142) (regOne!39107 (regTwo!39106 r1!2370)))) b!7375410))

(assert (= (and b!7374879 ((_ is Star!19297) (regOne!39107 (regTwo!39106 r1!2370)))) b!7375411))

(assert (= (and b!7374879 ((_ is Union!19297) (regOne!39107 (regTwo!39106 r1!2370)))) b!7375412))

(declare-fun b!7375416 () Bool)

(declare-fun e!4415127 () Bool)

(declare-fun tp!2097179 () Bool)

(declare-fun tp!2097180 () Bool)

(assert (=> b!7375416 (= e!4415127 (and tp!2097179 tp!2097180))))

(declare-fun b!7375415 () Bool)

(declare-fun tp!2097181 () Bool)

(assert (=> b!7375415 (= e!4415127 tp!2097181)))

(assert (=> b!7374879 (= tp!2096911 e!4415127)))

(declare-fun b!7375414 () Bool)

(declare-fun tp!2097183 () Bool)

(declare-fun tp!2097182 () Bool)

(assert (=> b!7375414 (= e!4415127 (and tp!2097183 tp!2097182))))

(declare-fun b!7375413 () Bool)

(assert (=> b!7375413 (= e!4415127 tp_is_empty!48839)))

(assert (= (and b!7374879 ((_ is ElementMatch!19297) (regTwo!39107 (regTwo!39106 r1!2370)))) b!7375413))

(assert (= (and b!7374879 ((_ is Concat!28142) (regTwo!39107 (regTwo!39106 r1!2370)))) b!7375414))

(assert (= (and b!7374879 ((_ is Star!19297) (regTwo!39107 (regTwo!39106 r1!2370)))) b!7375415))

(assert (= (and b!7374879 ((_ is Union!19297) (regTwo!39107 (regTwo!39106 r1!2370)))) b!7375416))

(declare-fun b!7375420 () Bool)

(declare-fun e!4415128 () Bool)

(declare-fun tp!2097184 () Bool)

(declare-fun tp!2097185 () Bool)

(assert (=> b!7375420 (= e!4415128 (and tp!2097184 tp!2097185))))

(declare-fun b!7375419 () Bool)

(declare-fun tp!2097186 () Bool)

(assert (=> b!7375419 (= e!4415128 tp!2097186)))

(assert (=> b!7374875 (= tp!2096905 e!4415128)))

(declare-fun b!7375418 () Bool)

(declare-fun tp!2097188 () Bool)

(declare-fun tp!2097187 () Bool)

(assert (=> b!7375418 (= e!4415128 (and tp!2097188 tp!2097187))))

(declare-fun b!7375417 () Bool)

(assert (=> b!7375417 (= e!4415128 tp_is_empty!48839)))

(assert (= (and b!7374875 ((_ is ElementMatch!19297) (regOne!39107 (regOne!39106 r1!2370)))) b!7375417))

(assert (= (and b!7374875 ((_ is Concat!28142) (regOne!39107 (regOne!39106 r1!2370)))) b!7375418))

(assert (= (and b!7374875 ((_ is Star!19297) (regOne!39107 (regOne!39106 r1!2370)))) b!7375419))

(assert (= (and b!7374875 ((_ is Union!19297) (regOne!39107 (regOne!39106 r1!2370)))) b!7375420))

(declare-fun b!7375424 () Bool)

(declare-fun e!4415129 () Bool)

(declare-fun tp!2097189 () Bool)

(declare-fun tp!2097190 () Bool)

(assert (=> b!7375424 (= e!4415129 (and tp!2097189 tp!2097190))))

(declare-fun b!7375423 () Bool)

(declare-fun tp!2097191 () Bool)

(assert (=> b!7375423 (= e!4415129 tp!2097191)))

(assert (=> b!7374875 (= tp!2096906 e!4415129)))

(declare-fun b!7375422 () Bool)

(declare-fun tp!2097193 () Bool)

(declare-fun tp!2097192 () Bool)

(assert (=> b!7375422 (= e!4415129 (and tp!2097193 tp!2097192))))

(declare-fun b!7375421 () Bool)

(assert (=> b!7375421 (= e!4415129 tp_is_empty!48839)))

(assert (= (and b!7374875 ((_ is ElementMatch!19297) (regTwo!39107 (regOne!39106 r1!2370)))) b!7375421))

(assert (= (and b!7374875 ((_ is Concat!28142) (regTwo!39107 (regOne!39106 r1!2370)))) b!7375422))

(assert (= (and b!7374875 ((_ is Star!19297) (regTwo!39107 (regOne!39106 r1!2370)))) b!7375423))

(assert (= (and b!7374875 ((_ is Union!19297) (regTwo!39107 (regOne!39106 r1!2370)))) b!7375424))

(declare-fun b!7375428 () Bool)

(declare-fun e!4415130 () Bool)

(declare-fun tp!2097194 () Bool)

(declare-fun tp!2097195 () Bool)

(assert (=> b!7375428 (= e!4415130 (and tp!2097194 tp!2097195))))

(declare-fun b!7375427 () Bool)

(declare-fun tp!2097196 () Bool)

(assert (=> b!7375427 (= e!4415130 tp!2097196)))

(assert (=> b!7374884 (= tp!2096917 e!4415130)))

(declare-fun b!7375426 () Bool)

(declare-fun tp!2097198 () Bool)

(declare-fun tp!2097197 () Bool)

(assert (=> b!7375426 (= e!4415130 (and tp!2097198 tp!2097197))))

(declare-fun b!7375425 () Bool)

(assert (=> b!7375425 (= e!4415130 tp_is_empty!48839)))

(assert (= (and b!7374884 ((_ is ElementMatch!19297) (regOne!39107 (reg!19626 r1!2370)))) b!7375425))

(assert (= (and b!7374884 ((_ is Concat!28142) (regOne!39107 (reg!19626 r1!2370)))) b!7375426))

(assert (= (and b!7374884 ((_ is Star!19297) (regOne!39107 (reg!19626 r1!2370)))) b!7375427))

(assert (= (and b!7374884 ((_ is Union!19297) (regOne!39107 (reg!19626 r1!2370)))) b!7375428))

(declare-fun b!7375432 () Bool)

(declare-fun e!4415131 () Bool)

(declare-fun tp!2097199 () Bool)

(declare-fun tp!2097200 () Bool)

(assert (=> b!7375432 (= e!4415131 (and tp!2097199 tp!2097200))))

(declare-fun b!7375431 () Bool)

(declare-fun tp!2097201 () Bool)

(assert (=> b!7375431 (= e!4415131 tp!2097201)))

(assert (=> b!7374884 (= tp!2096918 e!4415131)))

(declare-fun b!7375430 () Bool)

(declare-fun tp!2097203 () Bool)

(declare-fun tp!2097202 () Bool)

(assert (=> b!7375430 (= e!4415131 (and tp!2097203 tp!2097202))))

(declare-fun b!7375429 () Bool)

(assert (=> b!7375429 (= e!4415131 tp_is_empty!48839)))

(assert (= (and b!7374884 ((_ is ElementMatch!19297) (regTwo!39107 (reg!19626 r1!2370)))) b!7375429))

(assert (= (and b!7374884 ((_ is Concat!28142) (regTwo!39107 (reg!19626 r1!2370)))) b!7375430))

(assert (= (and b!7374884 ((_ is Star!19297) (regTwo!39107 (reg!19626 r1!2370)))) b!7375431))

(assert (= (and b!7374884 ((_ is Union!19297) (regTwo!39107 (reg!19626 r1!2370)))) b!7375432))

(declare-fun b!7375436 () Bool)

(declare-fun e!4415132 () Bool)

(declare-fun tp!2097204 () Bool)

(declare-fun tp!2097205 () Bool)

(assert (=> b!7375436 (= e!4415132 (and tp!2097204 tp!2097205))))

(declare-fun b!7375435 () Bool)

(declare-fun tp!2097206 () Bool)

(assert (=> b!7375435 (= e!4415132 tp!2097206)))

(assert (=> b!7374891 (= tp!2096933 e!4415132)))

(declare-fun b!7375434 () Bool)

(declare-fun tp!2097208 () Bool)

(declare-fun tp!2097207 () Bool)

(assert (=> b!7375434 (= e!4415132 (and tp!2097208 tp!2097207))))

(declare-fun b!7375433 () Bool)

(assert (=> b!7375433 (= e!4415132 tp_is_empty!48839)))

(assert (= (and b!7374891 ((_ is ElementMatch!19297) (regOne!39106 (regTwo!39107 r1!2370)))) b!7375433))

(assert (= (and b!7374891 ((_ is Concat!28142) (regOne!39106 (regTwo!39107 r1!2370)))) b!7375434))

(assert (= (and b!7374891 ((_ is Star!19297) (regOne!39106 (regTwo!39107 r1!2370)))) b!7375435))

(assert (= (and b!7374891 ((_ is Union!19297) (regOne!39106 (regTwo!39107 r1!2370)))) b!7375436))

(declare-fun b!7375440 () Bool)

(declare-fun e!4415133 () Bool)

(declare-fun tp!2097209 () Bool)

(declare-fun tp!2097210 () Bool)

(assert (=> b!7375440 (= e!4415133 (and tp!2097209 tp!2097210))))

(declare-fun b!7375439 () Bool)

(declare-fun tp!2097211 () Bool)

(assert (=> b!7375439 (= e!4415133 tp!2097211)))

(assert (=> b!7374891 (= tp!2096932 e!4415133)))

(declare-fun b!7375438 () Bool)

(declare-fun tp!2097213 () Bool)

(declare-fun tp!2097212 () Bool)

(assert (=> b!7375438 (= e!4415133 (and tp!2097213 tp!2097212))))

(declare-fun b!7375437 () Bool)

(assert (=> b!7375437 (= e!4415133 tp_is_empty!48839)))

(assert (= (and b!7374891 ((_ is ElementMatch!19297) (regTwo!39106 (regTwo!39107 r1!2370)))) b!7375437))

(assert (= (and b!7374891 ((_ is Concat!28142) (regTwo!39106 (regTwo!39107 r1!2370)))) b!7375438))

(assert (= (and b!7374891 ((_ is Star!19297) (regTwo!39106 (regTwo!39107 r1!2370)))) b!7375439))

(assert (= (and b!7374891 ((_ is Union!19297) (regTwo!39106 (regTwo!39107 r1!2370)))) b!7375440))

(declare-fun b!7375444 () Bool)

(declare-fun e!4415134 () Bool)

(declare-fun tp!2097214 () Bool)

(declare-fun tp!2097215 () Bool)

(assert (=> b!7375444 (= e!4415134 (and tp!2097214 tp!2097215))))

(declare-fun b!7375443 () Bool)

(declare-fun tp!2097216 () Bool)

(assert (=> b!7375443 (= e!4415134 tp!2097216)))

(assert (=> b!7374880 (= tp!2096915 e!4415134)))

(declare-fun b!7375442 () Bool)

(declare-fun tp!2097218 () Bool)

(declare-fun tp!2097217 () Bool)

(assert (=> b!7375442 (= e!4415134 (and tp!2097218 tp!2097217))))

(declare-fun b!7375441 () Bool)

(assert (=> b!7375441 (= e!4415134 tp_is_empty!48839)))

(assert (= (and b!7374880 ((_ is ElementMatch!19297) (h!78117 (exprs!8737 ct1!282)))) b!7375441))

(assert (= (and b!7374880 ((_ is Concat!28142) (h!78117 (exprs!8737 ct1!282)))) b!7375442))

(assert (= (and b!7374880 ((_ is Star!19297) (h!78117 (exprs!8737 ct1!282)))) b!7375443))

(assert (= (and b!7374880 ((_ is Union!19297) (h!78117 (exprs!8737 ct1!282)))) b!7375444))

(declare-fun b!7375445 () Bool)

(declare-fun e!4415135 () Bool)

(declare-fun tp!2097219 () Bool)

(declare-fun tp!2097220 () Bool)

(assert (=> b!7375445 (= e!4415135 (and tp!2097219 tp!2097220))))

(assert (=> b!7374880 (= tp!2096916 e!4415135)))

(assert (= (and b!7374880 ((_ is Cons!71669) (t!386266 (exprs!8737 ct1!282)))) b!7375445))

(declare-fun b!7375449 () Bool)

(declare-fun e!4415136 () Bool)

(declare-fun tp!2097221 () Bool)

(declare-fun tp!2097222 () Bool)

(assert (=> b!7375449 (= e!4415136 (and tp!2097221 tp!2097222))))

(declare-fun b!7375448 () Bool)

(declare-fun tp!2097223 () Bool)

(assert (=> b!7375448 (= e!4415136 tp!2097223)))

(assert (=> b!7374883 (= tp!2096919 e!4415136)))

(declare-fun b!7375447 () Bool)

(declare-fun tp!2097225 () Bool)

(declare-fun tp!2097224 () Bool)

(assert (=> b!7375447 (= e!4415136 (and tp!2097225 tp!2097224))))

(declare-fun b!7375446 () Bool)

(assert (=> b!7375446 (= e!4415136 tp_is_empty!48839)))

(assert (= (and b!7374883 ((_ is ElementMatch!19297) (reg!19626 (reg!19626 r1!2370)))) b!7375446))

(assert (= (and b!7374883 ((_ is Concat!28142) (reg!19626 (reg!19626 r1!2370)))) b!7375447))

(assert (= (and b!7374883 ((_ is Star!19297) (reg!19626 (reg!19626 r1!2370)))) b!7375448))

(assert (= (and b!7374883 ((_ is Union!19297) (reg!19626 (reg!19626 r1!2370)))) b!7375449))

(declare-fun b_lambda!284567 () Bool)

(assert (= b_lambda!284541 (or d!2284403 b_lambda!284567)))

(declare-fun bs!1921204 () Bool)

(declare-fun d!2284555 () Bool)

(assert (= bs!1921204 (and d!2284555 d!2284403)))

(assert (=> bs!1921204 (= (dynLambda!29529 lambda!458263 (h!78117 (exprs!8737 ct1!282))) (validRegex!9893 (h!78117 (exprs!8737 ct1!282))))))

(declare-fun m!8027536 () Bool)

(assert (=> bs!1921204 m!8027536))

(assert (=> b!7375025 d!2284555))

(declare-fun b_lambda!284569 () Bool)

(assert (= b_lambda!284549 (or b!7374604 b_lambda!284569)))

(declare-fun bs!1921205 () Bool)

(declare-fun d!2284557 () Bool)

(assert (= bs!1921205 (and d!2284557 b!7374604)))

(assert (=> bs!1921205 (= (dynLambda!29529 lambda!458253 (h!78117 (exprs!8737 ct1!282))) (validRegex!9893 (h!78117 (exprs!8737 ct1!282))))))

(assert (=> bs!1921205 m!8027536))

(assert (=> b!7375148 d!2284557))

(declare-fun b_lambda!284571 () Bool)

(assert (= b_lambda!284565 (or d!2284405 b_lambda!284571)))

(declare-fun bs!1921206 () Bool)

(declare-fun d!2284559 () Bool)

(assert (= bs!1921206 (and d!2284559 d!2284405)))

(assert (=> bs!1921206 (= (dynLambda!29529 lambda!458264 (h!78117 (exprs!8737 ct2!378))) (validRegex!9893 (h!78117 (exprs!8737 ct2!378))))))

(declare-fun m!8027538 () Bool)

(assert (=> bs!1921206 m!8027538))

(assert (=> b!7375272 d!2284559))

(declare-fun b_lambda!284573 () Bool)

(assert (= b_lambda!284547 (or b!7374604 b_lambda!284573)))

(declare-fun bs!1921207 () Bool)

(declare-fun d!2284561 () Bool)

(assert (= bs!1921207 (and d!2284561 b!7374604)))

(assert (=> bs!1921207 (= (dynLambda!29529 lambda!458253 (h!78117 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378)))) (validRegex!9893 (h!78117 (++!17113 (exprs!8737 ct1!282) (exprs!8737 ct2!378)))))))

(declare-fun m!8027540 () Bool)

(assert (=> bs!1921207 m!8027540))

(assert (=> b!7375123 d!2284561))

(declare-fun b_lambda!284575 () Bool)

(assert (= b_lambda!284543 (or d!2284417 b_lambda!284575)))

(declare-fun bs!1921208 () Bool)

(declare-fun d!2284563 () Bool)

(assert (= bs!1921208 (and d!2284563 d!2284417)))

(assert (=> bs!1921208 (= (dynLambda!29529 lambda!458265 (h!78117 (exprs!8737 lt!2616160))) (validRegex!9893 (h!78117 (exprs!8737 lt!2616160))))))

(declare-fun m!8027542 () Bool)

(assert (=> bs!1921208 m!8027542))

(assert (=> b!7375038 d!2284563))

(declare-fun b_lambda!284577 () Bool)

(assert (= b_lambda!284563 (or d!2284401 b_lambda!284577)))

(declare-fun bs!1921209 () Bool)

(declare-fun d!2284565 () Bool)

(assert (= bs!1921209 (and d!2284565 d!2284401)))

(assert (=> bs!1921209 (= (dynLambda!29529 lambda!458262 (h!78117 (exprs!8737 cWitness!61))) (validRegex!9893 (h!78117 (exprs!8737 cWitness!61))))))

(declare-fun m!8027544 () Bool)

(assert (=> bs!1921209 m!8027544))

(assert (=> b!7375270 d!2284565))

(check-sat (not b!7375359) (not b!7375367) (not b!7375365) (not b!7375071) (not b!7375445) (not d!2284501) (not bs!1921209) (not b!7375296) (not b!7374950) (not b!7375439) (not d!2284499) (not b!7375394) (not b!7375337) (not b!7375357) (not b!7375440) (not bm!677868) (not b!7375168) (not bm!677878) (not b!7375338) (not d!2284513) (not bm!677912) (not b!7375369) (not bm!677893) (not bm!677857) (not b!7375265) (not bs!1921205) (not b!7375416) (not b!7375406) (not b!7375271) (not b_lambda!284567) (not d!2284431) (not bm!677827) (not bm!677902) (not b!7375442) (not b!7375348) (not b!7375371) (not b!7375361) (not b!7375415) (not b!7375345) (not b!7375344) (not b!7375352) (not b!7375341) (not b!7375387) (not b!7375426) (not b!7375444) (not b!7375389) (not b!7375350) (not b!7375379) (not b!7375431) (not b!7375395) (not bm!677890) (not b_lambda!284573) (not b!7375377) (not b!7375342) (not b!7375418) (not b!7375399) (not b!7375353) (not b_lambda!284569) (not b!7375026) (not bm!677916) (not b!7375448) (not bm!677917) (not b!7375321) (not bm!677831) (not b!7375390) (not bm!677909) (not b!7375366) (not b!7375411) (not b!7375374) (not bm!677899) (not b!7375273) (not b!7375438) (not b!7375434) (not b_lambda!284577) (not b!7375400) (not bs!1921207) (not b!7375410) (not b!7374939) (not b!7375414) (not b_lambda!284571) (not bs!1921204) (not b!7374994) (not b!7375422) (not b!7375340) tp_is_empty!48839 (not b!7375419) (not b!7375354) (not b!7375424) (not b!7375312) (not b!7375396) (not b!7375336) (not bm!677866) (not bs!1921206) (not b!7375378) (not b!7375428) (not b!7375408) (not b!7375443) (not b!7375382) (not b!7375039) (not b!7375346) (not b!7375432) (not b!7374981) (not b!7375373) (not d!2284439) (not b!7375325) (not bm!677869) (not b!7375362) (not b!7375099) (not bm!677905) (not bs!1921208) (not b_lambda!284575) (not b!7375391) (not bm!677900) (not b!7375436) (not bm!677908) (not bm!677828) (not bm!677881) (not b!7375041) (not b!7375349) (not b!7375356) (not b!7375370) (not bm!677911) (not b!7375381) (not b!7375402) (not b!7375124) (not b!7375449) (not b!7375269) (not b!7375427) (not b!7375386) (not b!7375383) (not bm!677892) (not bm!677830) (not b!7375363) (not b!7375420) (not b!7375149) (not b!7375447) (not b!7375407) (not b!7375267) (not b!7375404) (not b!7375430) (not b!7375385) (not b!7375398) (not b!7374992) (not bm!677859) (not bm!677904) (not bm!677860) (not b!7375403) (not b!7375412) (not bm!677880) (not bm!677914) (not b!7374940) (not b!7375375) (not b!7375393) (not b!7375358) (not b!7374931) (not b!7375423) (not b!7375435))
(check-sat)
