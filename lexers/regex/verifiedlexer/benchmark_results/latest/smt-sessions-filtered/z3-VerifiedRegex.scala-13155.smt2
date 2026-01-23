; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718392 () Bool)

(assert start!718392)

(declare-fun res!2970600 () Bool)

(declare-fun e!4404920 () Bool)

(assert (=> start!718392 (=> (not res!2970600) (not e!4404920))))

(declare-datatypes ((C!38672 0))(
  ( (C!38673 (val!29696 Int)) )
))
(declare-datatypes ((Regex!19199 0))(
  ( (ElementMatch!19199 (c!1366899 C!38672)) (Concat!28044 (regOne!38910 Regex!19199) (regTwo!38910 Regex!19199)) (EmptyExpr!19199) (Star!19199 (reg!19528 Regex!19199)) (EmptyLang!19199) (Union!19199 (regOne!38911 Regex!19199) (regTwo!38911 Regex!19199)) )
))
(declare-fun r1!2370 () Regex!19199)

(declare-fun validRegex!9795 (Regex!19199) Bool)

(assert (=> start!718392 (= res!2970600 (validRegex!9795 r1!2370))))

(assert (=> start!718392 e!4404920))

(declare-fun tp_is_empty!48643 () Bool)

(assert (=> start!718392 tp_is_empty!48643))

(declare-datatypes ((List!71695 0))(
  ( (Nil!71571) (Cons!71571 (h!78019 Regex!19199) (t!386138 List!71695)) )
))
(declare-datatypes ((Context!16278 0))(
  ( (Context!16279 (exprs!8639 List!71695)) )
))
(declare-fun cWitness!61 () Context!16278)

(declare-fun e!4404919 () Bool)

(declare-fun inv!91337 (Context!16278) Bool)

(assert (=> start!718392 (and (inv!91337 cWitness!61) e!4404919)))

(declare-fun ct1!282 () Context!16278)

(declare-fun e!4404916 () Bool)

(assert (=> start!718392 (and (inv!91337 ct1!282) e!4404916)))

(declare-fun e!4404918 () Bool)

(assert (=> start!718392 e!4404918))

(declare-fun ct2!378 () Context!16278)

(declare-fun e!4404915 () Bool)

(assert (=> start!718392 (and (inv!91337 ct2!378) e!4404915)))

(declare-fun b!7356950 () Bool)

(declare-fun res!2970605 () Bool)

(declare-fun e!4404917 () Bool)

(assert (=> b!7356950 (=> (not res!2970605) (not e!4404917))))

(declare-fun e!4404913 () Bool)

(assert (=> b!7356950 (= res!2970605 e!4404913)))

(declare-fun res!2970606 () Bool)

(assert (=> b!7356950 (=> res!2970606 e!4404913)))

(get-info :version)

(assert (=> b!7356950 (= res!2970606 (not ((_ is Concat!28044) r1!2370)))))

(declare-fun b!7356951 () Bool)

(declare-fun tp!2089908 () Bool)

(declare-fun tp!2089907 () Bool)

(assert (=> b!7356951 (= e!4404918 (and tp!2089908 tp!2089907))))

(declare-fun b!7356952 () Bool)

(declare-fun e!4404914 () Bool)

(declare-fun lambda!457099 () Int)

(declare-fun forall!18019 (List!71695 Int) Bool)

(assert (=> b!7356952 (= e!4404914 (not (forall!18019 (exprs!8639 ct2!378) lambda!457099)))))

(declare-fun b!7356953 () Bool)

(declare-fun res!2970602 () Bool)

(assert (=> b!7356953 (=> (not res!2970602) (not e!4404920))))

(declare-fun c!10362 () C!38672)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!3025 (Regex!19199 Context!16278 C!38672) (InoxSet Context!16278))

(assert (=> b!7356953 (= res!2970602 (select (derivationStepZipperDown!3025 r1!2370 ct1!282 c!10362) cWitness!61))))

(declare-fun b!7356954 () Bool)

(assert (=> b!7356954 (= e!4404917 e!4404914)))

(declare-fun res!2970604 () Bool)

(assert (=> b!7356954 (=> (not res!2970604) (not e!4404914))))

(assert (=> b!7356954 (= res!2970604 (forall!18019 (exprs!8639 cWitness!61) lambda!457099))))

(declare-fun b!7356955 () Bool)

(declare-fun tp!2089910 () Bool)

(assert (=> b!7356955 (= e!4404916 tp!2089910)))

(declare-fun b!7356956 () Bool)

(declare-fun tp!2089911 () Bool)

(assert (=> b!7356956 (= e!4404919 tp!2089911)))

(declare-fun b!7356957 () Bool)

(declare-fun nullable!8290 (Regex!19199) Bool)

(assert (=> b!7356957 (= e!4404913 (not (nullable!8290 (regOne!38910 r1!2370))))))

(declare-fun b!7356958 () Bool)

(assert (=> b!7356958 (= e!4404920 e!4404917)))

(declare-fun res!2970603 () Bool)

(assert (=> b!7356958 (=> (not res!2970603) (not e!4404917))))

(assert (=> b!7356958 (= res!2970603 (and (or (not ((_ is ElementMatch!19199) r1!2370)) (not (= c!10362 (c!1366899 r1!2370)))) (not ((_ is Union!19199) r1!2370))))))

(declare-fun lt!2613429 () (InoxSet Context!16278))

(declare-fun ++!17017 (List!71695 List!71695) List!71695)

(assert (=> b!7356958 (= lt!2613429 (derivationStepZipperDown!3025 r1!2370 (Context!16279 (++!17017 (exprs!8639 ct1!282) (exprs!8639 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165351 0))(
  ( (Unit!165352) )
))
(declare-fun lt!2613428 () Unit!165351)

(declare-fun lemmaConcatPreservesForall!1874 (List!71695 List!71695 Int) Unit!165351)

(assert (=> b!7356958 (= lt!2613428 (lemmaConcatPreservesForall!1874 (exprs!8639 ct1!282) (exprs!8639 ct2!378) lambda!457099))))

(declare-fun b!7356959 () Bool)

(declare-fun tp!2089913 () Bool)

(assert (=> b!7356959 (= e!4404915 tp!2089913)))

(declare-fun b!7356960 () Bool)

(declare-fun res!2970601 () Bool)

(assert (=> b!7356960 (=> (not res!2970601) (not e!4404917))))

(assert (=> b!7356960 (= res!2970601 (and (not ((_ is Concat!28044) r1!2370)) (not ((_ is Star!19199) r1!2370))))))

(declare-fun b!7356961 () Bool)

(assert (=> b!7356961 (= e!4404918 tp_is_empty!48643)))

(declare-fun b!7356962 () Bool)

(declare-fun tp!2089906 () Bool)

(declare-fun tp!2089912 () Bool)

(assert (=> b!7356962 (= e!4404918 (and tp!2089906 tp!2089912))))

(declare-fun b!7356963 () Bool)

(declare-fun tp!2089909 () Bool)

(assert (=> b!7356963 (= e!4404918 tp!2089909)))

(assert (= (and start!718392 res!2970600) b!7356953))

(assert (= (and b!7356953 res!2970602) b!7356958))

(assert (= (and b!7356958 res!2970603) b!7356950))

(assert (= (and b!7356950 (not res!2970606)) b!7356957))

(assert (= (and b!7356950 res!2970605) b!7356960))

(assert (= (and b!7356960 res!2970601) b!7356954))

(assert (= (and b!7356954 res!2970604) b!7356952))

(assert (= start!718392 b!7356956))

(assert (= start!718392 b!7356955))

(assert (= (and start!718392 ((_ is ElementMatch!19199) r1!2370)) b!7356961))

(assert (= (and start!718392 ((_ is Concat!28044) r1!2370)) b!7356962))

(assert (= (and start!718392 ((_ is Star!19199) r1!2370)) b!7356963))

(assert (= (and start!718392 ((_ is Union!19199) r1!2370)) b!7356951))

(assert (= start!718392 b!7356959))

(declare-fun m!8016526 () Bool)

(assert (=> start!718392 m!8016526))

(declare-fun m!8016528 () Bool)

(assert (=> start!718392 m!8016528))

(declare-fun m!8016530 () Bool)

(assert (=> start!718392 m!8016530))

(declare-fun m!8016532 () Bool)

(assert (=> start!718392 m!8016532))

(declare-fun m!8016534 () Bool)

(assert (=> b!7356953 m!8016534))

(declare-fun m!8016536 () Bool)

(assert (=> b!7356953 m!8016536))

(declare-fun m!8016538 () Bool)

(assert (=> b!7356957 m!8016538))

(declare-fun m!8016540 () Bool)

(assert (=> b!7356952 m!8016540))

(declare-fun m!8016542 () Bool)

(assert (=> b!7356958 m!8016542))

(declare-fun m!8016544 () Bool)

(assert (=> b!7356958 m!8016544))

(declare-fun m!8016546 () Bool)

(assert (=> b!7356958 m!8016546))

(declare-fun m!8016548 () Bool)

(assert (=> b!7356954 m!8016548))

(check-sat (not b!7356954) (not b!7356963) (not b!7356959) (not start!718392) (not b!7356951) (not b!7356956) tp_is_empty!48643 (not b!7356955) (not b!7356952) (not b!7356953) (not b!7356957) (not b!7356962) (not b!7356958))
(check-sat)
(get-model)

(declare-fun d!2281630 () Bool)

(declare-fun res!2970611 () Bool)

(declare-fun e!4404925 () Bool)

(assert (=> d!2281630 (=> res!2970611 e!4404925)))

(assert (=> d!2281630 (= res!2970611 ((_ is Nil!71571) (exprs!8639 cWitness!61)))))

(assert (=> d!2281630 (= (forall!18019 (exprs!8639 cWitness!61) lambda!457099) e!4404925)))

(declare-fun b!7356968 () Bool)

(declare-fun e!4404926 () Bool)

(assert (=> b!7356968 (= e!4404925 e!4404926)))

(declare-fun res!2970612 () Bool)

(assert (=> b!7356968 (=> (not res!2970612) (not e!4404926))))

(declare-fun dynLambda!29514 (Int Regex!19199) Bool)

(assert (=> b!7356968 (= res!2970612 (dynLambda!29514 lambda!457099 (h!78019 (exprs!8639 cWitness!61))))))

(declare-fun b!7356969 () Bool)

(assert (=> b!7356969 (= e!4404926 (forall!18019 (t!386138 (exprs!8639 cWitness!61)) lambda!457099))))

(assert (= (and d!2281630 (not res!2970611)) b!7356968))

(assert (= (and b!7356968 res!2970612) b!7356969))

(declare-fun b_lambda!284275 () Bool)

(assert (=> (not b_lambda!284275) (not b!7356968)))

(declare-fun m!8016550 () Bool)

(assert (=> b!7356968 m!8016550))

(declare-fun m!8016552 () Bool)

(assert (=> b!7356969 m!8016552))

(assert (=> b!7356954 d!2281630))

(declare-fun b!7357014 () Bool)

(declare-fun e!4404956 () (InoxSet Context!16278))

(assert (=> b!7357014 (= e!4404956 (store ((as const (Array Context!16278 Bool)) false) ct1!282 true))))

(declare-fun b!7357015 () Bool)

(declare-fun e!4404952 () (InoxSet Context!16278))

(declare-fun call!673695 () (InoxSet Context!16278))

(declare-fun call!673696 () (InoxSet Context!16278))

(assert (=> b!7357015 (= e!4404952 ((_ map or) call!673695 call!673696))))

(declare-fun b!7357016 () Bool)

(declare-fun e!4404953 () (InoxSet Context!16278))

(declare-fun e!4404954 () (InoxSet Context!16278))

(assert (=> b!7357016 (= e!4404953 e!4404954)))

(declare-fun c!1366921 () Bool)

(assert (=> b!7357016 (= c!1366921 ((_ is Concat!28044) r1!2370))))

(declare-fun bm!673689 () Bool)

(declare-fun call!673697 () (InoxSet Context!16278))

(declare-fun call!673698 () (InoxSet Context!16278))

(assert (=> bm!673689 (= call!673697 call!673698)))

(declare-fun b!7357017 () Bool)

(assert (=> b!7357017 (= e!4404956 e!4404952)))

(declare-fun c!1366924 () Bool)

(assert (=> b!7357017 (= c!1366924 ((_ is Union!19199) r1!2370))))

(declare-fun b!7357018 () Bool)

(declare-fun e!4404951 () (InoxSet Context!16278))

(assert (=> b!7357018 (= e!4404951 call!673697)))

(declare-fun b!7357019 () Bool)

(declare-fun c!1366920 () Bool)

(assert (=> b!7357019 (= c!1366920 ((_ is Star!19199) r1!2370))))

(assert (=> b!7357019 (= e!4404954 e!4404951)))

(declare-fun bm!673690 () Bool)

(declare-fun call!673699 () List!71695)

(declare-fun c!1366923 () Bool)

(declare-fun $colon$colon!3195 (List!71695 Regex!19199) List!71695)

(assert (=> bm!673690 (= call!673699 ($colon$colon!3195 (exprs!8639 ct1!282) (ite (or c!1366923 c!1366921) (regTwo!38910 r1!2370) r1!2370)))))

(declare-fun b!7357020 () Bool)

(assert (=> b!7357020 (= e!4404954 call!673697)))

(declare-fun b!7357021 () Bool)

(declare-fun e!4404955 () Bool)

(assert (=> b!7357021 (= c!1366923 e!4404955)))

(declare-fun res!2970617 () Bool)

(assert (=> b!7357021 (=> (not res!2970617) (not e!4404955))))

(assert (=> b!7357021 (= res!2970617 ((_ is Concat!28044) r1!2370))))

(assert (=> b!7357021 (= e!4404952 e!4404953)))

(declare-fun d!2281632 () Bool)

(declare-fun c!1366922 () Bool)

(assert (=> d!2281632 (= c!1366922 (and ((_ is ElementMatch!19199) r1!2370) (= (c!1366899 r1!2370) c!10362)))))

(assert (=> d!2281632 (= (derivationStepZipperDown!3025 r1!2370 ct1!282 c!10362) e!4404956)))

(declare-fun bm!673691 () Bool)

(assert (=> bm!673691 (= call!673696 (derivationStepZipperDown!3025 (ite c!1366924 (regTwo!38911 r1!2370) (regOne!38910 r1!2370)) (ite c!1366924 ct1!282 (Context!16279 call!673699)) c!10362))))

(declare-fun bm!673692 () Bool)

(assert (=> bm!673692 (= call!673698 call!673695)))

(declare-fun b!7357022 () Bool)

(assert (=> b!7357022 (= e!4404955 (nullable!8290 (regOne!38910 r1!2370)))))

(declare-fun b!7357023 () Bool)

(assert (=> b!7357023 (= e!4404953 ((_ map or) call!673696 call!673698))))

(declare-fun b!7357024 () Bool)

(assert (=> b!7357024 (= e!4404951 ((as const (Array Context!16278 Bool)) false))))

(declare-fun bm!673693 () Bool)

(declare-fun call!673694 () List!71695)

(assert (=> bm!673693 (= call!673694 call!673699)))

(declare-fun bm!673694 () Bool)

(assert (=> bm!673694 (= call!673695 (derivationStepZipperDown!3025 (ite c!1366924 (regOne!38911 r1!2370) (ite c!1366923 (regTwo!38910 r1!2370) (ite c!1366921 (regOne!38910 r1!2370) (reg!19528 r1!2370)))) (ite (or c!1366924 c!1366923) ct1!282 (Context!16279 call!673694)) c!10362))))

(assert (= (and d!2281632 c!1366922) b!7357014))

(assert (= (and d!2281632 (not c!1366922)) b!7357017))

(assert (= (and b!7357017 c!1366924) b!7357015))

(assert (= (and b!7357017 (not c!1366924)) b!7357021))

(assert (= (and b!7357021 res!2970617) b!7357022))

(assert (= (and b!7357021 c!1366923) b!7357023))

(assert (= (and b!7357021 (not c!1366923)) b!7357016))

(assert (= (and b!7357016 c!1366921) b!7357020))

(assert (= (and b!7357016 (not c!1366921)) b!7357019))

(assert (= (and b!7357019 c!1366920) b!7357018))

(assert (= (and b!7357019 (not c!1366920)) b!7357024))

(assert (= (or b!7357020 b!7357018) bm!673693))

(assert (= (or b!7357020 b!7357018) bm!673689))

(assert (= (or b!7357023 bm!673689) bm!673692))

(assert (= (or b!7357023 bm!673693) bm!673690))

(assert (= (or b!7357015 b!7357023) bm!673691))

(assert (= (or b!7357015 bm!673692) bm!673694))

(declare-fun m!8016554 () Bool)

(assert (=> bm!673691 m!8016554))

(declare-fun m!8016556 () Bool)

(assert (=> bm!673690 m!8016556))

(declare-fun m!8016558 () Bool)

(assert (=> bm!673694 m!8016558))

(declare-fun m!8016560 () Bool)

(assert (=> b!7357014 m!8016560))

(assert (=> b!7357022 m!8016538))

(assert (=> b!7356953 d!2281632))

(declare-fun bm!673717 () Bool)

(declare-fun call!673722 () Bool)

(declare-fun c!1366940 () Bool)

(assert (=> bm!673717 (= call!673722 (validRegex!9795 (ite c!1366940 (regTwo!38911 r1!2370) (regOne!38910 r1!2370))))))

(declare-fun b!7357065 () Bool)

(declare-fun e!4404987 () Bool)

(assert (=> b!7357065 (= e!4404987 call!673722)))

(declare-fun b!7357066 () Bool)

(declare-fun e!4404985 () Bool)

(declare-fun e!4404984 () Bool)

(assert (=> b!7357066 (= e!4404985 e!4404984)))

(assert (=> b!7357066 (= c!1366940 ((_ is Union!19199) r1!2370))))

(declare-fun d!2281636 () Bool)

(declare-fun res!2970630 () Bool)

(declare-fun e!4404986 () Bool)

(assert (=> d!2281636 (=> res!2970630 e!4404986)))

(assert (=> d!2281636 (= res!2970630 ((_ is ElementMatch!19199) r1!2370))))

(assert (=> d!2281636 (= (validRegex!9795 r1!2370) e!4404986)))

(declare-fun b!7357067 () Bool)

(declare-fun e!4404989 () Bool)

(declare-fun call!673724 () Bool)

(assert (=> b!7357067 (= e!4404989 call!673724)))

(declare-fun b!7357068 () Bool)

(assert (=> b!7357068 (= e!4404986 e!4404985)))

(declare-fun c!1366939 () Bool)

(assert (=> b!7357068 (= c!1366939 ((_ is Star!19199) r1!2370))))

(declare-fun b!7357069 () Bool)

(declare-fun res!2970632 () Bool)

(declare-fun e!4404983 () Bool)

(assert (=> b!7357069 (=> res!2970632 e!4404983)))

(assert (=> b!7357069 (= res!2970632 (not ((_ is Concat!28044) r1!2370)))))

(assert (=> b!7357069 (= e!4404984 e!4404983)))

(declare-fun b!7357070 () Bool)

(declare-fun e!4404988 () Bool)

(declare-fun call!673723 () Bool)

(assert (=> b!7357070 (= e!4404988 call!673723)))

(declare-fun bm!673718 () Bool)

(assert (=> bm!673718 (= call!673724 (validRegex!9795 (ite c!1366939 (reg!19528 r1!2370) (ite c!1366940 (regOne!38911 r1!2370) (regTwo!38910 r1!2370)))))))

(declare-fun bm!673719 () Bool)

(assert (=> bm!673719 (= call!673723 call!673724)))

(declare-fun b!7357071 () Bool)

(declare-fun res!2970633 () Bool)

(assert (=> b!7357071 (=> (not res!2970633) (not e!4404987))))

(assert (=> b!7357071 (= res!2970633 call!673723)))

(assert (=> b!7357071 (= e!4404984 e!4404987)))

(declare-fun b!7357072 () Bool)

(assert (=> b!7357072 (= e!4404983 e!4404988)))

(declare-fun res!2970634 () Bool)

(assert (=> b!7357072 (=> (not res!2970634) (not e!4404988))))

(assert (=> b!7357072 (= res!2970634 call!673722)))

(declare-fun b!7357073 () Bool)

(assert (=> b!7357073 (= e!4404985 e!4404989)))

(declare-fun res!2970631 () Bool)

(assert (=> b!7357073 (= res!2970631 (not (nullable!8290 (reg!19528 r1!2370))))))

(assert (=> b!7357073 (=> (not res!2970631) (not e!4404989))))

(assert (= (and d!2281636 (not res!2970630)) b!7357068))

(assert (= (and b!7357068 c!1366939) b!7357073))

(assert (= (and b!7357068 (not c!1366939)) b!7357066))

(assert (= (and b!7357073 res!2970631) b!7357067))

(assert (= (and b!7357066 c!1366940) b!7357071))

(assert (= (and b!7357066 (not c!1366940)) b!7357069))

(assert (= (and b!7357071 res!2970633) b!7357065))

(assert (= (and b!7357069 (not res!2970632)) b!7357072))

(assert (= (and b!7357072 res!2970634) b!7357070))

(assert (= (or b!7357071 b!7357070) bm!673719))

(assert (= (or b!7357065 b!7357072) bm!673717))

(assert (= (or b!7357067 bm!673719) bm!673718))

(declare-fun m!8016578 () Bool)

(assert (=> bm!673717 m!8016578))

(declare-fun m!8016580 () Bool)

(assert (=> bm!673718 m!8016580))

(declare-fun m!8016582 () Bool)

(assert (=> b!7357073 m!8016582))

(assert (=> start!718392 d!2281636))

(declare-fun bs!1919834 () Bool)

(declare-fun d!2281642 () Bool)

(assert (= bs!1919834 (and d!2281642 b!7356958)))

(declare-fun lambda!457102 () Int)

(assert (=> bs!1919834 (= lambda!457102 lambda!457099)))

(assert (=> d!2281642 (= (inv!91337 cWitness!61) (forall!18019 (exprs!8639 cWitness!61) lambda!457102))))

(declare-fun bs!1919835 () Bool)

(assert (= bs!1919835 d!2281642))

(declare-fun m!8016584 () Bool)

(assert (=> bs!1919835 m!8016584))

(assert (=> start!718392 d!2281642))

(declare-fun bs!1919836 () Bool)

(declare-fun d!2281644 () Bool)

(assert (= bs!1919836 (and d!2281644 b!7356958)))

(declare-fun lambda!457103 () Int)

(assert (=> bs!1919836 (= lambda!457103 lambda!457099)))

(declare-fun bs!1919837 () Bool)

(assert (= bs!1919837 (and d!2281644 d!2281642)))

(assert (=> bs!1919837 (= lambda!457103 lambda!457102)))

(assert (=> d!2281644 (= (inv!91337 ct1!282) (forall!18019 (exprs!8639 ct1!282) lambda!457103))))

(declare-fun bs!1919838 () Bool)

(assert (= bs!1919838 d!2281644))

(declare-fun m!8016586 () Bool)

(assert (=> bs!1919838 m!8016586))

(assert (=> start!718392 d!2281644))

(declare-fun bs!1919839 () Bool)

(declare-fun d!2281646 () Bool)

(assert (= bs!1919839 (and d!2281646 b!7356958)))

(declare-fun lambda!457104 () Int)

(assert (=> bs!1919839 (= lambda!457104 lambda!457099)))

(declare-fun bs!1919840 () Bool)

(assert (= bs!1919840 (and d!2281646 d!2281642)))

(assert (=> bs!1919840 (= lambda!457104 lambda!457102)))

(declare-fun bs!1919841 () Bool)

(assert (= bs!1919841 (and d!2281646 d!2281644)))

(assert (=> bs!1919841 (= lambda!457104 lambda!457103)))

(assert (=> d!2281646 (= (inv!91337 ct2!378) (forall!18019 (exprs!8639 ct2!378) lambda!457104))))

(declare-fun bs!1919842 () Bool)

(assert (= bs!1919842 d!2281646))

(declare-fun m!8016588 () Bool)

(assert (=> bs!1919842 m!8016588))

(assert (=> start!718392 d!2281646))

(declare-fun b!7357082 () Bool)

(declare-fun e!4404999 () (InoxSet Context!16278))

(assert (=> b!7357082 (= e!4404999 (store ((as const (Array Context!16278 Bool)) false) (Context!16279 (++!17017 (exprs!8639 ct1!282) (exprs!8639 ct2!378))) true))))

(declare-fun b!7357083 () Bool)

(declare-fun e!4404995 () (InoxSet Context!16278))

(declare-fun call!673726 () (InoxSet Context!16278))

(declare-fun call!673727 () (InoxSet Context!16278))

(assert (=> b!7357083 (= e!4404995 ((_ map or) call!673726 call!673727))))

(declare-fun b!7357084 () Bool)

(declare-fun e!4404996 () (InoxSet Context!16278))

(declare-fun e!4404997 () (InoxSet Context!16278))

(assert (=> b!7357084 (= e!4404996 e!4404997)))

(declare-fun c!1366944 () Bool)

(assert (=> b!7357084 (= c!1366944 ((_ is Concat!28044) r1!2370))))

(declare-fun bm!673720 () Bool)

(declare-fun call!673728 () (InoxSet Context!16278))

(declare-fun call!673729 () (InoxSet Context!16278))

(assert (=> bm!673720 (= call!673728 call!673729)))

(declare-fun b!7357085 () Bool)

(assert (=> b!7357085 (= e!4404999 e!4404995)))

(declare-fun c!1366947 () Bool)

(assert (=> b!7357085 (= c!1366947 ((_ is Union!19199) r1!2370))))

(declare-fun b!7357086 () Bool)

(declare-fun e!4404994 () (InoxSet Context!16278))

(assert (=> b!7357086 (= e!4404994 call!673728)))

(declare-fun b!7357087 () Bool)

(declare-fun c!1366943 () Bool)

(assert (=> b!7357087 (= c!1366943 ((_ is Star!19199) r1!2370))))

(assert (=> b!7357087 (= e!4404997 e!4404994)))

(declare-fun c!1366946 () Bool)

(declare-fun call!673730 () List!71695)

(declare-fun bm!673721 () Bool)

(assert (=> bm!673721 (= call!673730 ($colon$colon!3195 (exprs!8639 (Context!16279 (++!17017 (exprs!8639 ct1!282) (exprs!8639 ct2!378)))) (ite (or c!1366946 c!1366944) (regTwo!38910 r1!2370) r1!2370)))))

(declare-fun b!7357088 () Bool)

(assert (=> b!7357088 (= e!4404997 call!673728)))

(declare-fun b!7357089 () Bool)

(declare-fun e!4404998 () Bool)

(assert (=> b!7357089 (= c!1366946 e!4404998)))

(declare-fun res!2970639 () Bool)

(assert (=> b!7357089 (=> (not res!2970639) (not e!4404998))))

(assert (=> b!7357089 (= res!2970639 ((_ is Concat!28044) r1!2370))))

(assert (=> b!7357089 (= e!4404995 e!4404996)))

(declare-fun d!2281648 () Bool)

(declare-fun c!1366945 () Bool)

(assert (=> d!2281648 (= c!1366945 (and ((_ is ElementMatch!19199) r1!2370) (= (c!1366899 r1!2370) c!10362)))))

(assert (=> d!2281648 (= (derivationStepZipperDown!3025 r1!2370 (Context!16279 (++!17017 (exprs!8639 ct1!282) (exprs!8639 ct2!378))) c!10362) e!4404999)))

(declare-fun bm!673722 () Bool)

(assert (=> bm!673722 (= call!673727 (derivationStepZipperDown!3025 (ite c!1366947 (regTwo!38911 r1!2370) (regOne!38910 r1!2370)) (ite c!1366947 (Context!16279 (++!17017 (exprs!8639 ct1!282) (exprs!8639 ct2!378))) (Context!16279 call!673730)) c!10362))))

(declare-fun bm!673723 () Bool)

(assert (=> bm!673723 (= call!673729 call!673726)))

(declare-fun b!7357090 () Bool)

(assert (=> b!7357090 (= e!4404998 (nullable!8290 (regOne!38910 r1!2370)))))

(declare-fun b!7357091 () Bool)

(assert (=> b!7357091 (= e!4404996 ((_ map or) call!673727 call!673729))))

(declare-fun b!7357092 () Bool)

(assert (=> b!7357092 (= e!4404994 ((as const (Array Context!16278 Bool)) false))))

(declare-fun bm!673724 () Bool)

(declare-fun call!673725 () List!71695)

(assert (=> bm!673724 (= call!673725 call!673730)))

(declare-fun bm!673725 () Bool)

(assert (=> bm!673725 (= call!673726 (derivationStepZipperDown!3025 (ite c!1366947 (regOne!38911 r1!2370) (ite c!1366946 (regTwo!38910 r1!2370) (ite c!1366944 (regOne!38910 r1!2370) (reg!19528 r1!2370)))) (ite (or c!1366947 c!1366946) (Context!16279 (++!17017 (exprs!8639 ct1!282) (exprs!8639 ct2!378))) (Context!16279 call!673725)) c!10362))))

(assert (= (and d!2281648 c!1366945) b!7357082))

(assert (= (and d!2281648 (not c!1366945)) b!7357085))

(assert (= (and b!7357085 c!1366947) b!7357083))

(assert (= (and b!7357085 (not c!1366947)) b!7357089))

(assert (= (and b!7357089 res!2970639) b!7357090))

(assert (= (and b!7357089 c!1366946) b!7357091))

(assert (= (and b!7357089 (not c!1366946)) b!7357084))

(assert (= (and b!7357084 c!1366944) b!7357088))

(assert (= (and b!7357084 (not c!1366944)) b!7357087))

(assert (= (and b!7357087 c!1366943) b!7357086))

(assert (= (and b!7357087 (not c!1366943)) b!7357092))

(assert (= (or b!7357088 b!7357086) bm!673724))

(assert (= (or b!7357088 b!7357086) bm!673720))

(assert (= (or b!7357091 bm!673720) bm!673723))

(assert (= (or b!7357091 bm!673724) bm!673721))

(assert (= (or b!7357083 b!7357091) bm!673722))

(assert (= (or b!7357083 bm!673723) bm!673725))

(declare-fun m!8016590 () Bool)

(assert (=> bm!673722 m!8016590))

(declare-fun m!8016592 () Bool)

(assert (=> bm!673721 m!8016592))

(declare-fun m!8016594 () Bool)

(assert (=> bm!673725 m!8016594))

(declare-fun m!8016596 () Bool)

(assert (=> b!7357082 m!8016596))

(assert (=> b!7357090 m!8016538))

(assert (=> b!7356958 d!2281648))

(declare-fun b!7357105 () Bool)

(declare-fun e!4405006 () List!71695)

(assert (=> b!7357105 (= e!4405006 (exprs!8639 ct2!378))))

(declare-fun b!7357107 () Bool)

(declare-fun res!2970646 () Bool)

(declare-fun e!4405007 () Bool)

(assert (=> b!7357107 (=> (not res!2970646) (not e!4405007))))

(declare-fun lt!2613438 () List!71695)

(declare-fun size!42079 (List!71695) Int)

(assert (=> b!7357107 (= res!2970646 (= (size!42079 lt!2613438) (+ (size!42079 (exprs!8639 ct1!282)) (size!42079 (exprs!8639 ct2!378)))))))

(declare-fun d!2281650 () Bool)

(assert (=> d!2281650 e!4405007))

(declare-fun res!2970647 () Bool)

(assert (=> d!2281650 (=> (not res!2970647) (not e!4405007))))

(declare-fun content!15101 (List!71695) (InoxSet Regex!19199))

(assert (=> d!2281650 (= res!2970647 (= (content!15101 lt!2613438) ((_ map or) (content!15101 (exprs!8639 ct1!282)) (content!15101 (exprs!8639 ct2!378)))))))

(assert (=> d!2281650 (= lt!2613438 e!4405006)))

(declare-fun c!1366951 () Bool)

(assert (=> d!2281650 (= c!1366951 ((_ is Nil!71571) (exprs!8639 ct1!282)))))

(assert (=> d!2281650 (= (++!17017 (exprs!8639 ct1!282) (exprs!8639 ct2!378)) lt!2613438)))

(declare-fun b!7357108 () Bool)

(assert (=> b!7357108 (= e!4405007 (or (not (= (exprs!8639 ct2!378) Nil!71571)) (= lt!2613438 (exprs!8639 ct1!282))))))

(declare-fun b!7357106 () Bool)

(assert (=> b!7357106 (= e!4405006 (Cons!71571 (h!78019 (exprs!8639 ct1!282)) (++!17017 (t!386138 (exprs!8639 ct1!282)) (exprs!8639 ct2!378))))))

(assert (= (and d!2281650 c!1366951) b!7357105))

(assert (= (and d!2281650 (not c!1366951)) b!7357106))

(assert (= (and d!2281650 res!2970647) b!7357107))

(assert (= (and b!7357107 res!2970646) b!7357108))

(declare-fun m!8016618 () Bool)

(assert (=> b!7357107 m!8016618))

(declare-fun m!8016620 () Bool)

(assert (=> b!7357107 m!8016620))

(declare-fun m!8016622 () Bool)

(assert (=> b!7357107 m!8016622))

(declare-fun m!8016624 () Bool)

(assert (=> d!2281650 m!8016624))

(declare-fun m!8016626 () Bool)

(assert (=> d!2281650 m!8016626))

(declare-fun m!8016628 () Bool)

(assert (=> d!2281650 m!8016628))

(declare-fun m!8016630 () Bool)

(assert (=> b!7357106 m!8016630))

(assert (=> b!7356958 d!2281650))

(declare-fun d!2281656 () Bool)

(assert (=> d!2281656 (forall!18019 (++!17017 (exprs!8639 ct1!282) (exprs!8639 ct2!378)) lambda!457099)))

(declare-fun lt!2613441 () Unit!165351)

(declare-fun choose!57230 (List!71695 List!71695 Int) Unit!165351)

(assert (=> d!2281656 (= lt!2613441 (choose!57230 (exprs!8639 ct1!282) (exprs!8639 ct2!378) lambda!457099))))

(assert (=> d!2281656 (forall!18019 (exprs!8639 ct1!282) lambda!457099)))

(assert (=> d!2281656 (= (lemmaConcatPreservesForall!1874 (exprs!8639 ct1!282) (exprs!8639 ct2!378) lambda!457099) lt!2613441)))

(declare-fun bs!1919844 () Bool)

(assert (= bs!1919844 d!2281656))

(assert (=> bs!1919844 m!8016542))

(assert (=> bs!1919844 m!8016542))

(declare-fun m!8016632 () Bool)

(assert (=> bs!1919844 m!8016632))

(declare-fun m!8016634 () Bool)

(assert (=> bs!1919844 m!8016634))

(declare-fun m!8016636 () Bool)

(assert (=> bs!1919844 m!8016636))

(assert (=> b!7356958 d!2281656))

(declare-fun d!2281658 () Bool)

(declare-fun nullableFct!3315 (Regex!19199) Bool)

(assert (=> d!2281658 (= (nullable!8290 (regOne!38910 r1!2370)) (nullableFct!3315 (regOne!38910 r1!2370)))))

(declare-fun bs!1919845 () Bool)

(assert (= bs!1919845 d!2281658))

(declare-fun m!8016638 () Bool)

(assert (=> bs!1919845 m!8016638))

(assert (=> b!7356957 d!2281658))

(declare-fun d!2281660 () Bool)

(declare-fun res!2970658 () Bool)

(declare-fun e!4405022 () Bool)

(assert (=> d!2281660 (=> res!2970658 e!4405022)))

(assert (=> d!2281660 (= res!2970658 ((_ is Nil!71571) (exprs!8639 ct2!378)))))

(assert (=> d!2281660 (= (forall!18019 (exprs!8639 ct2!378) lambda!457099) e!4405022)))

(declare-fun b!7357127 () Bool)

(declare-fun e!4405023 () Bool)

(assert (=> b!7357127 (= e!4405022 e!4405023)))

(declare-fun res!2970659 () Bool)

(assert (=> b!7357127 (=> (not res!2970659) (not e!4405023))))

(assert (=> b!7357127 (= res!2970659 (dynLambda!29514 lambda!457099 (h!78019 (exprs!8639 ct2!378))))))

(declare-fun b!7357128 () Bool)

(assert (=> b!7357128 (= e!4405023 (forall!18019 (t!386138 (exprs!8639 ct2!378)) lambda!457099))))

(assert (= (and d!2281660 (not res!2970658)) b!7357127))

(assert (= (and b!7357127 res!2970659) b!7357128))

(declare-fun b_lambda!284277 () Bool)

(assert (=> (not b_lambda!284277) (not b!7357127)))

(declare-fun m!8016640 () Bool)

(assert (=> b!7357127 m!8016640))

(declare-fun m!8016642 () Bool)

(assert (=> b!7357128 m!8016642))

(assert (=> b!7356952 d!2281660))

(declare-fun b!7357142 () Bool)

(declare-fun e!4405033 () Bool)

(declare-fun tp!2089918 () Bool)

(declare-fun tp!2089919 () Bool)

(assert (=> b!7357142 (= e!4405033 (and tp!2089918 tp!2089919))))

(assert (=> b!7356959 (= tp!2089913 e!4405033)))

(assert (= (and b!7356959 ((_ is Cons!71571) (exprs!8639 ct2!378))) b!7357142))

(declare-fun b!7357143 () Bool)

(declare-fun e!4405034 () Bool)

(declare-fun tp!2089920 () Bool)

(declare-fun tp!2089921 () Bool)

(assert (=> b!7357143 (= e!4405034 (and tp!2089920 tp!2089921))))

(assert (=> b!7356955 (= tp!2089910 e!4405034)))

(assert (= (and b!7356955 ((_ is Cons!71571) (exprs!8639 ct1!282))) b!7357143))

(declare-fun b!7357156 () Bool)

(declare-fun e!4405037 () Bool)

(declare-fun tp!2089936 () Bool)

(assert (=> b!7357156 (= e!4405037 tp!2089936)))

(declare-fun b!7357154 () Bool)

(assert (=> b!7357154 (= e!4405037 tp_is_empty!48643)))

(declare-fun b!7357155 () Bool)

(declare-fun tp!2089932 () Bool)

(declare-fun tp!2089933 () Bool)

(assert (=> b!7357155 (= e!4405037 (and tp!2089932 tp!2089933))))

(assert (=> b!7356951 (= tp!2089908 e!4405037)))

(declare-fun b!7357157 () Bool)

(declare-fun tp!2089934 () Bool)

(declare-fun tp!2089935 () Bool)

(assert (=> b!7357157 (= e!4405037 (and tp!2089934 tp!2089935))))

(assert (= (and b!7356951 ((_ is ElementMatch!19199) (regOne!38911 r1!2370))) b!7357154))

(assert (= (and b!7356951 ((_ is Concat!28044) (regOne!38911 r1!2370))) b!7357155))

(assert (= (and b!7356951 ((_ is Star!19199) (regOne!38911 r1!2370))) b!7357156))

(assert (= (and b!7356951 ((_ is Union!19199) (regOne!38911 r1!2370))) b!7357157))

(declare-fun b!7357160 () Bool)

(declare-fun e!4405038 () Bool)

(declare-fun tp!2089941 () Bool)

(assert (=> b!7357160 (= e!4405038 tp!2089941)))

(declare-fun b!7357158 () Bool)

(assert (=> b!7357158 (= e!4405038 tp_is_empty!48643)))

(declare-fun b!7357159 () Bool)

(declare-fun tp!2089937 () Bool)

(declare-fun tp!2089938 () Bool)

(assert (=> b!7357159 (= e!4405038 (and tp!2089937 tp!2089938))))

(assert (=> b!7356951 (= tp!2089907 e!4405038)))

(declare-fun b!7357161 () Bool)

(declare-fun tp!2089939 () Bool)

(declare-fun tp!2089940 () Bool)

(assert (=> b!7357161 (= e!4405038 (and tp!2089939 tp!2089940))))

(assert (= (and b!7356951 ((_ is ElementMatch!19199) (regTwo!38911 r1!2370))) b!7357158))

(assert (= (and b!7356951 ((_ is Concat!28044) (regTwo!38911 r1!2370))) b!7357159))

(assert (= (and b!7356951 ((_ is Star!19199) (regTwo!38911 r1!2370))) b!7357160))

(assert (= (and b!7356951 ((_ is Union!19199) (regTwo!38911 r1!2370))) b!7357161))

(declare-fun b!7357164 () Bool)

(declare-fun e!4405039 () Bool)

(declare-fun tp!2089946 () Bool)

(assert (=> b!7357164 (= e!4405039 tp!2089946)))

(declare-fun b!7357162 () Bool)

(assert (=> b!7357162 (= e!4405039 tp_is_empty!48643)))

(declare-fun b!7357163 () Bool)

(declare-fun tp!2089942 () Bool)

(declare-fun tp!2089943 () Bool)

(assert (=> b!7357163 (= e!4405039 (and tp!2089942 tp!2089943))))

(assert (=> b!7356962 (= tp!2089906 e!4405039)))

(declare-fun b!7357165 () Bool)

(declare-fun tp!2089944 () Bool)

(declare-fun tp!2089945 () Bool)

(assert (=> b!7357165 (= e!4405039 (and tp!2089944 tp!2089945))))

(assert (= (and b!7356962 ((_ is ElementMatch!19199) (regOne!38910 r1!2370))) b!7357162))

(assert (= (and b!7356962 ((_ is Concat!28044) (regOne!38910 r1!2370))) b!7357163))

(assert (= (and b!7356962 ((_ is Star!19199) (regOne!38910 r1!2370))) b!7357164))

(assert (= (and b!7356962 ((_ is Union!19199) (regOne!38910 r1!2370))) b!7357165))

(declare-fun b!7357168 () Bool)

(declare-fun e!4405040 () Bool)

(declare-fun tp!2089951 () Bool)

(assert (=> b!7357168 (= e!4405040 tp!2089951)))

(declare-fun b!7357166 () Bool)

(assert (=> b!7357166 (= e!4405040 tp_is_empty!48643)))

(declare-fun b!7357167 () Bool)

(declare-fun tp!2089947 () Bool)

(declare-fun tp!2089948 () Bool)

(assert (=> b!7357167 (= e!4405040 (and tp!2089947 tp!2089948))))

(assert (=> b!7356962 (= tp!2089912 e!4405040)))

(declare-fun b!7357169 () Bool)

(declare-fun tp!2089949 () Bool)

(declare-fun tp!2089950 () Bool)

(assert (=> b!7357169 (= e!4405040 (and tp!2089949 tp!2089950))))

(assert (= (and b!7356962 ((_ is ElementMatch!19199) (regTwo!38910 r1!2370))) b!7357166))

(assert (= (and b!7356962 ((_ is Concat!28044) (regTwo!38910 r1!2370))) b!7357167))

(assert (= (and b!7356962 ((_ is Star!19199) (regTwo!38910 r1!2370))) b!7357168))

(assert (= (and b!7356962 ((_ is Union!19199) (regTwo!38910 r1!2370))) b!7357169))

(declare-fun b!7357170 () Bool)

(declare-fun e!4405041 () Bool)

(declare-fun tp!2089952 () Bool)

(declare-fun tp!2089953 () Bool)

(assert (=> b!7357170 (= e!4405041 (and tp!2089952 tp!2089953))))

(assert (=> b!7356956 (= tp!2089911 e!4405041)))

(assert (= (and b!7356956 ((_ is Cons!71571) (exprs!8639 cWitness!61))) b!7357170))

(declare-fun b!7357173 () Bool)

(declare-fun e!4405042 () Bool)

(declare-fun tp!2089958 () Bool)

(assert (=> b!7357173 (= e!4405042 tp!2089958)))

(declare-fun b!7357171 () Bool)

(assert (=> b!7357171 (= e!4405042 tp_is_empty!48643)))

(declare-fun b!7357172 () Bool)

(declare-fun tp!2089954 () Bool)

(declare-fun tp!2089955 () Bool)

(assert (=> b!7357172 (= e!4405042 (and tp!2089954 tp!2089955))))

(assert (=> b!7356963 (= tp!2089909 e!4405042)))

(declare-fun b!7357174 () Bool)

(declare-fun tp!2089956 () Bool)

(declare-fun tp!2089957 () Bool)

(assert (=> b!7357174 (= e!4405042 (and tp!2089956 tp!2089957))))

(assert (= (and b!7356963 ((_ is ElementMatch!19199) (reg!19528 r1!2370))) b!7357171))

(assert (= (and b!7356963 ((_ is Concat!28044) (reg!19528 r1!2370))) b!7357172))

(assert (= (and b!7356963 ((_ is Star!19199) (reg!19528 r1!2370))) b!7357173))

(assert (= (and b!7356963 ((_ is Union!19199) (reg!19528 r1!2370))) b!7357174))

(declare-fun b_lambda!284279 () Bool)

(assert (= b_lambda!284277 (or b!7356958 b_lambda!284279)))

(declare-fun bs!1919853 () Bool)

(declare-fun d!2281668 () Bool)

(assert (= bs!1919853 (and d!2281668 b!7356958)))

(assert (=> bs!1919853 (= (dynLambda!29514 lambda!457099 (h!78019 (exprs!8639 ct2!378))) (validRegex!9795 (h!78019 (exprs!8639 ct2!378))))))

(declare-fun m!8016654 () Bool)

(assert (=> bs!1919853 m!8016654))

(assert (=> b!7357127 d!2281668))

(declare-fun b_lambda!284281 () Bool)

(assert (= b_lambda!284275 (or b!7356958 b_lambda!284281)))

(declare-fun bs!1919855 () Bool)

(declare-fun d!2281670 () Bool)

(assert (= bs!1919855 (and d!2281670 b!7356958)))

(assert (=> bs!1919855 (= (dynLambda!29514 lambda!457099 (h!78019 (exprs!8639 cWitness!61))) (validRegex!9795 (h!78019 (exprs!8639 cWitness!61))))))

(declare-fun m!8016658 () Bool)

(assert (=> bs!1919855 m!8016658))

(assert (=> b!7356968 d!2281670))

(check-sat (not bm!673694) (not bm!673722) (not d!2281642) (not b!7357155) (not b!7357167) (not b!7356969) (not b!7357174) (not bs!1919853) (not b!7357157) (not b!7357107) (not b!7357173) (not d!2281646) (not bm!673725) (not d!2281650) (not b!7357170) (not b!7357090) (not b!7357169) (not b!7357160) (not d!2281658) (not b!7357163) (not bm!673717) (not b!7357161) (not b!7357156) (not d!2281656) (not bm!673691) (not b!7357172) (not bm!673718) (not b_lambda!284279) (not b!7357165) (not bs!1919855) (not b!7357073) (not b_lambda!284281) tp_is_empty!48643 (not bm!673690) (not b!7357022) (not d!2281644) (not b!7357128) (not b!7357159) (not b!7357143) (not b!7357164) (not b!7357106) (not bm!673721) (not b!7357168) (not b!7357142))
(check-sat)
