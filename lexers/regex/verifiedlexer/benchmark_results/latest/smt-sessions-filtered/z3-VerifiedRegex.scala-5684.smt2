; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283150 () Bool)

(assert start!283150)

(declare-fun b!2908428 () Bool)

(declare-fun res!1200977 () Bool)

(declare-fun e!1835896 () Bool)

(assert (=> b!2908428 (=> (not res!1200977) (not e!1835896))))

(declare-datatypes ((C!18028 0))(
  ( (C!18029 (val!11048 Int)) )
))
(declare-datatypes ((List!34760 0))(
  ( (Nil!34636) (Cons!34636 (h!40056 C!18028) (t!233803 List!34760)) )
))
(declare-fun prefix!1309 () List!34760)

(declare-fun isEmpty!18907 (List!34760) Bool)

(assert (=> b!2908428 (= res!1200977 (not (isEmpty!18907 prefix!1309)))))

(declare-fun b!2908429 () Bool)

(assert (=> b!2908429 (= e!1835896 (= prefix!1309 Nil!34636))))

(declare-datatypes ((Regex!8923 0))(
  ( (ElementMatch!8923 (c!474006 C!18028)) (Concat!14244 (regOne!18358 Regex!8923) (regTwo!18358 Regex!8923)) (EmptyExpr!8923) (Star!8923 (reg!9252 Regex!8923)) (EmptyLang!8923) (Union!8923 (regOne!18359 Regex!8923) (regTwo!18359 Regex!8923)) )
))
(declare-fun lt!1023027 () Regex!8923)

(declare-fun r!13239 () Regex!8923)

(declare-fun derivativeStep!2400 (Regex!8923 C!18028) Regex!8923)

(declare-fun head!6441 (List!34760) C!18028)

(assert (=> b!2908429 (= lt!1023027 (derivativeStep!2400 r!13239 (head!6441 prefix!1309)))))

(declare-fun b!2908430 () Bool)

(declare-fun e!1835897 () Bool)

(declare-fun tp!934457 () Bool)

(assert (=> b!2908430 (= e!1835897 tp!934457)))

(declare-fun b!2908431 () Bool)

(declare-fun tp!934459 () Bool)

(declare-fun tp!934456 () Bool)

(assert (=> b!2908431 (= e!1835897 (and tp!934459 tp!934456))))

(declare-fun res!1200976 () Bool)

(assert (=> start!283150 (=> (not res!1200976) (not e!1835896))))

(declare-fun validRegex!3673 (Regex!8923) Bool)

(assert (=> start!283150 (= res!1200976 (validRegex!3673 r!13239))))

(assert (=> start!283150 e!1835896))

(assert (=> start!283150 e!1835897))

(declare-fun e!1835895 () Bool)

(assert (=> start!283150 e!1835895))

(declare-fun b!2908432 () Bool)

(declare-fun tp_is_empty!15433 () Bool)

(declare-fun tp!934454 () Bool)

(assert (=> b!2908432 (= e!1835895 (and tp_is_empty!15433 tp!934454))))

(declare-fun b!2908433 () Bool)

(assert (=> b!2908433 (= e!1835897 tp_is_empty!15433)))

(declare-fun b!2908434 () Bool)

(declare-fun tp!934458 () Bool)

(declare-fun tp!934455 () Bool)

(assert (=> b!2908434 (= e!1835897 (and tp!934458 tp!934455))))

(assert (= (and start!283150 res!1200976) b!2908428))

(assert (= (and b!2908428 res!1200977) b!2908429))

(get-info :version)

(assert (= (and start!283150 ((_ is ElementMatch!8923) r!13239)) b!2908433))

(assert (= (and start!283150 ((_ is Concat!14244) r!13239)) b!2908434))

(assert (= (and start!283150 ((_ is Star!8923) r!13239)) b!2908430))

(assert (= (and start!283150 ((_ is Union!8923) r!13239)) b!2908431))

(assert (= (and start!283150 ((_ is Cons!34636) prefix!1309)) b!2908432))

(declare-fun m!3310135 () Bool)

(assert (=> b!2908428 m!3310135))

(declare-fun m!3310137 () Bool)

(assert (=> b!2908429 m!3310137))

(assert (=> b!2908429 m!3310137))

(declare-fun m!3310139 () Bool)

(assert (=> b!2908429 m!3310139))

(declare-fun m!3310141 () Bool)

(assert (=> start!283150 m!3310141))

(check-sat (not b!2908432) tp_is_empty!15433 (not start!283150) (not b!2908428) (not b!2908434) (not b!2908430) (not b!2908431) (not b!2908429))
(check-sat)
(get-model)

(declare-fun b!2908502 () Bool)

(declare-fun e!1835939 () Regex!8923)

(declare-fun e!1835942 () Regex!8923)

(assert (=> b!2908502 (= e!1835939 e!1835942)))

(declare-fun c!474033 () Bool)

(assert (=> b!2908502 (= c!474033 ((_ is Star!8923) r!13239))))

(declare-fun call!189803 () Regex!8923)

(declare-fun bm!189797 () Bool)

(declare-fun c!474036 () Bool)

(assert (=> bm!189797 (= call!189803 (derivativeStep!2400 (ite c!474036 (regTwo!18359 r!13239) (ite c!474033 (reg!9252 r!13239) (regOne!18358 r!13239))) (head!6441 prefix!1309)))))

(declare-fun b!2908503 () Bool)

(declare-fun e!1835937 () Regex!8923)

(declare-fun e!1835938 () Regex!8923)

(assert (=> b!2908503 (= e!1835937 e!1835938)))

(declare-fun c!474034 () Bool)

(assert (=> b!2908503 (= c!474034 ((_ is ElementMatch!8923) r!13239))))

(declare-fun bm!189798 () Bool)

(declare-fun call!189805 () Regex!8923)

(declare-fun call!189804 () Regex!8923)

(assert (=> bm!189798 (= call!189805 call!189804)))

(declare-fun b!2908504 () Bool)

(assert (=> b!2908504 (= e!1835942 (Concat!14244 call!189804 r!13239))))

(declare-fun call!189802 () Regex!8923)

(declare-fun bm!189799 () Bool)

(assert (=> bm!189799 (= call!189802 (derivativeStep!2400 (ite c!474036 (regOne!18359 r!13239) (regTwo!18358 r!13239)) (head!6441 prefix!1309)))))

(declare-fun b!2908505 () Bool)

(assert (=> b!2908505 (= c!474036 ((_ is Union!8923) r!13239))))

(assert (=> b!2908505 (= e!1835938 e!1835939)))

(declare-fun b!2908506 () Bool)

(assert (=> b!2908506 (= e!1835937 EmptyLang!8923)))

(declare-fun bm!189800 () Bool)

(assert (=> bm!189800 (= call!189804 call!189803)))

(declare-fun b!2908507 () Bool)

(assert (=> b!2908507 (= e!1835938 (ite (= (head!6441 prefix!1309) (c!474006 r!13239)) EmptyExpr!8923 EmptyLang!8923))))

(declare-fun b!2908508 () Bool)

(declare-fun e!1835940 () Regex!8923)

(assert (=> b!2908508 (= e!1835940 (Union!8923 (Concat!14244 call!189805 (regTwo!18358 r!13239)) EmptyLang!8923))))

(declare-fun b!2908509 () Bool)

(assert (=> b!2908509 (= e!1835940 (Union!8923 (Concat!14244 call!189805 (regTwo!18358 r!13239)) call!189802))))

(declare-fun b!2908510 () Bool)

(assert (=> b!2908510 (= e!1835939 (Union!8923 call!189802 call!189803))))

(declare-fun b!2908511 () Bool)

(declare-fun c!474031 () Bool)

(declare-fun nullable!2785 (Regex!8923) Bool)

(assert (=> b!2908511 (= c!474031 (nullable!2785 (regOne!18358 r!13239)))))

(assert (=> b!2908511 (= e!1835942 e!1835940)))

(declare-fun d!836841 () Bool)

(declare-fun lt!1023032 () Regex!8923)

(assert (=> d!836841 (validRegex!3673 lt!1023032)))

(assert (=> d!836841 (= lt!1023032 e!1835937)))

(declare-fun c!474037 () Bool)

(assert (=> d!836841 (= c!474037 (or ((_ is EmptyExpr!8923) r!13239) ((_ is EmptyLang!8923) r!13239)))))

(assert (=> d!836841 (validRegex!3673 r!13239)))

(assert (=> d!836841 (= (derivativeStep!2400 r!13239 (head!6441 prefix!1309)) lt!1023032)))

(assert (= (and d!836841 c!474037) b!2908506))

(assert (= (and d!836841 (not c!474037)) b!2908503))

(assert (= (and b!2908503 c!474034) b!2908507))

(assert (= (and b!2908503 (not c!474034)) b!2908505))

(assert (= (and b!2908505 c!474036) b!2908510))

(assert (= (and b!2908505 (not c!474036)) b!2908502))

(assert (= (and b!2908502 c!474033) b!2908504))

(assert (= (and b!2908502 (not c!474033)) b!2908511))

(assert (= (and b!2908511 c!474031) b!2908509))

(assert (= (and b!2908511 (not c!474031)) b!2908508))

(assert (= (or b!2908509 b!2908508) bm!189798))

(assert (= (or b!2908504 bm!189798) bm!189800))

(assert (= (or b!2908510 bm!189800) bm!189797))

(assert (= (or b!2908510 b!2908509) bm!189799))

(assert (=> bm!189797 m!3310137))

(declare-fun m!3310149 () Bool)

(assert (=> bm!189797 m!3310149))

(assert (=> bm!189799 m!3310137))

(declare-fun m!3310151 () Bool)

(assert (=> bm!189799 m!3310151))

(declare-fun m!3310153 () Bool)

(assert (=> b!2908511 m!3310153))

(declare-fun m!3310155 () Bool)

(assert (=> d!836841 m!3310155))

(assert (=> d!836841 m!3310141))

(assert (=> b!2908429 d!836841))

(declare-fun d!836845 () Bool)

(assert (=> d!836845 (= (head!6441 prefix!1309) (h!40056 prefix!1309))))

(assert (=> b!2908429 d!836845))

(declare-fun d!836847 () Bool)

(assert (=> d!836847 (= (isEmpty!18907 prefix!1309) ((_ is Nil!34636) prefix!1309))))

(assert (=> b!2908428 d!836847))

(declare-fun b!2908550 () Bool)

(declare-fun e!1835968 () Bool)

(declare-fun call!189826 () Bool)

(assert (=> b!2908550 (= e!1835968 call!189826)))

(declare-fun bm!189819 () Bool)

(declare-fun call!189825 () Bool)

(assert (=> bm!189819 (= call!189826 call!189825)))

(declare-fun b!2908551 () Bool)

(declare-fun e!1835971 () Bool)

(declare-fun call!189824 () Bool)

(assert (=> b!2908551 (= e!1835971 call!189824)))

(declare-fun b!2908552 () Bool)

(declare-fun e!1835970 () Bool)

(declare-fun e!1835965 () Bool)

(assert (=> b!2908552 (= e!1835970 e!1835965)))

(declare-fun res!1201005 () Bool)

(assert (=> b!2908552 (= res!1201005 (not (nullable!2785 (reg!9252 r!13239))))))

(assert (=> b!2908552 (=> (not res!1201005) (not e!1835965))))

(declare-fun b!2908553 () Bool)

(assert (=> b!2908553 (= e!1835965 call!189825)))

(declare-fun bm!189820 () Bool)

(declare-fun c!474048 () Bool)

(assert (=> bm!189820 (= call!189824 (validRegex!3673 (ite c!474048 (regOne!18359 r!13239) (regTwo!18358 r!13239))))))

(declare-fun b!2908554 () Bool)

(declare-fun e!1835969 () Bool)

(assert (=> b!2908554 (= e!1835969 e!1835971)))

(declare-fun res!1201003 () Bool)

(assert (=> b!2908554 (=> (not res!1201003) (not e!1835971))))

(assert (=> b!2908554 (= res!1201003 call!189826)))

(declare-fun bm!189821 () Bool)

(declare-fun c!474047 () Bool)

(assert (=> bm!189821 (= call!189825 (validRegex!3673 (ite c!474047 (reg!9252 r!13239) (ite c!474048 (regTwo!18359 r!13239) (regOne!18358 r!13239)))))))

(declare-fun b!2908555 () Bool)

(declare-fun e!1835967 () Bool)

(assert (=> b!2908555 (= e!1835967 e!1835970)))

(assert (=> b!2908555 (= c!474047 ((_ is Star!8923) r!13239))))

(declare-fun b!2908557 () Bool)

(declare-fun res!1201004 () Bool)

(assert (=> b!2908557 (=> (not res!1201004) (not e!1835968))))

(assert (=> b!2908557 (= res!1201004 call!189824)))

(declare-fun e!1835966 () Bool)

(assert (=> b!2908557 (= e!1835966 e!1835968)))

(declare-fun b!2908558 () Bool)

(declare-fun res!1201007 () Bool)

(assert (=> b!2908558 (=> res!1201007 e!1835969)))

(assert (=> b!2908558 (= res!1201007 (not ((_ is Concat!14244) r!13239)))))

(assert (=> b!2908558 (= e!1835966 e!1835969)))

(declare-fun b!2908556 () Bool)

(assert (=> b!2908556 (= e!1835970 e!1835966)))

(assert (=> b!2908556 (= c!474048 ((_ is Union!8923) r!13239))))

(declare-fun d!836849 () Bool)

(declare-fun res!1201006 () Bool)

(assert (=> d!836849 (=> res!1201006 e!1835967)))

(assert (=> d!836849 (= res!1201006 ((_ is ElementMatch!8923) r!13239))))

(assert (=> d!836849 (= (validRegex!3673 r!13239) e!1835967)))

(assert (= (and d!836849 (not res!1201006)) b!2908555))

(assert (= (and b!2908555 c!474047) b!2908552))

(assert (= (and b!2908555 (not c!474047)) b!2908556))

(assert (= (and b!2908552 res!1201005) b!2908553))

(assert (= (and b!2908556 c!474048) b!2908557))

(assert (= (and b!2908556 (not c!474048)) b!2908558))

(assert (= (and b!2908557 res!1201004) b!2908550))

(assert (= (and b!2908558 (not res!1201007)) b!2908554))

(assert (= (and b!2908554 res!1201003) b!2908551))

(assert (= (or b!2908550 b!2908554) bm!189819))

(assert (= (or b!2908557 b!2908551) bm!189820))

(assert (= (or b!2908553 bm!189819) bm!189821))

(declare-fun m!3310165 () Bool)

(assert (=> b!2908552 m!3310165))

(declare-fun m!3310167 () Bool)

(assert (=> bm!189820 m!3310167))

(declare-fun m!3310169 () Bool)

(assert (=> bm!189821 m!3310169))

(assert (=> start!283150 d!836849))

(declare-fun e!1835982 () Bool)

(assert (=> b!2908430 (= tp!934457 e!1835982)))

(declare-fun b!2908595 () Bool)

(declare-fun tp!934510 () Bool)

(declare-fun tp!934509 () Bool)

(assert (=> b!2908595 (= e!1835982 (and tp!934510 tp!934509))))

(declare-fun b!2908594 () Bool)

(assert (=> b!2908594 (= e!1835982 tp_is_empty!15433)))

(declare-fun b!2908597 () Bool)

(declare-fun tp!934511 () Bool)

(declare-fun tp!934512 () Bool)

(assert (=> b!2908597 (= e!1835982 (and tp!934511 tp!934512))))

(declare-fun b!2908596 () Bool)

(declare-fun tp!934508 () Bool)

(assert (=> b!2908596 (= e!1835982 tp!934508)))

(assert (= (and b!2908430 ((_ is ElementMatch!8923) (reg!9252 r!13239))) b!2908594))

(assert (= (and b!2908430 ((_ is Concat!14244) (reg!9252 r!13239))) b!2908595))

(assert (= (and b!2908430 ((_ is Star!8923) (reg!9252 r!13239))) b!2908596))

(assert (= (and b!2908430 ((_ is Union!8923) (reg!9252 r!13239))) b!2908597))

(declare-fun e!1835983 () Bool)

(assert (=> b!2908431 (= tp!934459 e!1835983)))

(declare-fun b!2908599 () Bool)

(declare-fun tp!934515 () Bool)

(declare-fun tp!934514 () Bool)

(assert (=> b!2908599 (= e!1835983 (and tp!934515 tp!934514))))

(declare-fun b!2908598 () Bool)

(assert (=> b!2908598 (= e!1835983 tp_is_empty!15433)))

(declare-fun b!2908601 () Bool)

(declare-fun tp!934516 () Bool)

(declare-fun tp!934517 () Bool)

(assert (=> b!2908601 (= e!1835983 (and tp!934516 tp!934517))))

(declare-fun b!2908600 () Bool)

(declare-fun tp!934513 () Bool)

(assert (=> b!2908600 (= e!1835983 tp!934513)))

(assert (= (and b!2908431 ((_ is ElementMatch!8923) (regOne!18359 r!13239))) b!2908598))

(assert (= (and b!2908431 ((_ is Concat!14244) (regOne!18359 r!13239))) b!2908599))

(assert (= (and b!2908431 ((_ is Star!8923) (regOne!18359 r!13239))) b!2908600))

(assert (= (and b!2908431 ((_ is Union!8923) (regOne!18359 r!13239))) b!2908601))

(declare-fun e!1835984 () Bool)

(assert (=> b!2908431 (= tp!934456 e!1835984)))

(declare-fun b!2908603 () Bool)

(declare-fun tp!934520 () Bool)

(declare-fun tp!934519 () Bool)

(assert (=> b!2908603 (= e!1835984 (and tp!934520 tp!934519))))

(declare-fun b!2908602 () Bool)

(assert (=> b!2908602 (= e!1835984 tp_is_empty!15433)))

(declare-fun b!2908605 () Bool)

(declare-fun tp!934521 () Bool)

(declare-fun tp!934522 () Bool)

(assert (=> b!2908605 (= e!1835984 (and tp!934521 tp!934522))))

(declare-fun b!2908604 () Bool)

(declare-fun tp!934518 () Bool)

(assert (=> b!2908604 (= e!1835984 tp!934518)))

(assert (= (and b!2908431 ((_ is ElementMatch!8923) (regTwo!18359 r!13239))) b!2908602))

(assert (= (and b!2908431 ((_ is Concat!14244) (regTwo!18359 r!13239))) b!2908603))

(assert (= (and b!2908431 ((_ is Star!8923) (regTwo!18359 r!13239))) b!2908604))

(assert (= (and b!2908431 ((_ is Union!8923) (regTwo!18359 r!13239))) b!2908605))

(declare-fun e!1835985 () Bool)

(assert (=> b!2908434 (= tp!934458 e!1835985)))

(declare-fun b!2908607 () Bool)

(declare-fun tp!934525 () Bool)

(declare-fun tp!934524 () Bool)

(assert (=> b!2908607 (= e!1835985 (and tp!934525 tp!934524))))

(declare-fun b!2908606 () Bool)

(assert (=> b!2908606 (= e!1835985 tp_is_empty!15433)))

(declare-fun b!2908609 () Bool)

(declare-fun tp!934526 () Bool)

(declare-fun tp!934527 () Bool)

(assert (=> b!2908609 (= e!1835985 (and tp!934526 tp!934527))))

(declare-fun b!2908608 () Bool)

(declare-fun tp!934523 () Bool)

(assert (=> b!2908608 (= e!1835985 tp!934523)))

(assert (= (and b!2908434 ((_ is ElementMatch!8923) (regOne!18358 r!13239))) b!2908606))

(assert (= (and b!2908434 ((_ is Concat!14244) (regOne!18358 r!13239))) b!2908607))

(assert (= (and b!2908434 ((_ is Star!8923) (regOne!18358 r!13239))) b!2908608))

(assert (= (and b!2908434 ((_ is Union!8923) (regOne!18358 r!13239))) b!2908609))

(declare-fun e!1835986 () Bool)

(assert (=> b!2908434 (= tp!934455 e!1835986)))

(declare-fun b!2908611 () Bool)

(declare-fun tp!934530 () Bool)

(declare-fun tp!934529 () Bool)

(assert (=> b!2908611 (= e!1835986 (and tp!934530 tp!934529))))

(declare-fun b!2908610 () Bool)

(assert (=> b!2908610 (= e!1835986 tp_is_empty!15433)))

(declare-fun b!2908613 () Bool)

(declare-fun tp!934531 () Bool)

(declare-fun tp!934532 () Bool)

(assert (=> b!2908613 (= e!1835986 (and tp!934531 tp!934532))))

(declare-fun b!2908612 () Bool)

(declare-fun tp!934528 () Bool)

(assert (=> b!2908612 (= e!1835986 tp!934528)))

(assert (= (and b!2908434 ((_ is ElementMatch!8923) (regTwo!18358 r!13239))) b!2908610))

(assert (= (and b!2908434 ((_ is Concat!14244) (regTwo!18358 r!13239))) b!2908611))

(assert (= (and b!2908434 ((_ is Star!8923) (regTwo!18358 r!13239))) b!2908612))

(assert (= (and b!2908434 ((_ is Union!8923) (regTwo!18358 r!13239))) b!2908613))

(declare-fun b!2908618 () Bool)

(declare-fun e!1835989 () Bool)

(declare-fun tp!934535 () Bool)

(assert (=> b!2908618 (= e!1835989 (and tp_is_empty!15433 tp!934535))))

(assert (=> b!2908432 (= tp!934454 e!1835989)))

(assert (= (and b!2908432 ((_ is Cons!34636) (t!233803 prefix!1309))) b!2908618))

(check-sat (not b!2908609) tp_is_empty!15433 (not b!2908552) (not b!2908611) (not bm!189821) (not b!2908607) (not b!2908511) (not b!2908600) (not b!2908613) (not b!2908595) (not b!2908601) (not b!2908608) (not b!2908604) (not bm!189820) (not b!2908603) (not b!2908599) (not b!2908618) (not b!2908596) (not b!2908612) (not bm!189799) (not d!836841) (not b!2908597) (not b!2908605) (not bm!189797))
(check-sat)
