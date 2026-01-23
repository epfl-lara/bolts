; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720226 () Bool)

(assert start!720226)

(declare-fun b!7383580 () Bool)

(declare-fun e!4419624 () Bool)

(declare-fun tp_is_empty!48917 () Bool)

(assert (=> b!7383580 (= e!4419624 tp_is_empty!48917)))

(declare-fun b!7383581 () Bool)

(declare-fun tp!2100402 () Bool)

(declare-fun tp!2100407 () Bool)

(assert (=> b!7383581 (= e!4419624 (and tp!2100402 tp!2100407))))

(declare-fun b!7383582 () Bool)

(declare-fun e!4419627 () Bool)

(declare-datatypes ((C!38946 0))(
  ( (C!38947 (val!29833 Int)) )
))
(declare-datatypes ((Regex!19336 0))(
  ( (ElementMatch!19336 (c!1372450 C!38946)) (Concat!28181 (regOne!39184 Regex!19336) (regTwo!39184 Regex!19336)) (EmptyExpr!19336) (Star!19336 (reg!19665 Regex!19336)) (EmptyLang!19336) (Union!19336 (regOne!39185 Regex!19336) (regTwo!39185 Regex!19336)) )
))
(declare-datatypes ((List!71832 0))(
  ( (Nil!71708) (Cons!71708 (h!78156 Regex!19336) (t!386331 List!71832)) )
))
(declare-datatypes ((Context!16552 0))(
  ( (Context!16553 (exprs!8776 List!71832)) )
))
(declare-fun cWitness!61 () Context!16552)

(declare-fun ct2!378 () Context!16552)

(declare-fun inv!91681 (Context!16552) Bool)

(declare-fun ++!17152 (List!71832 List!71832) List!71832)

(assert (=> b!7383582 (= e!4419627 (not (inv!91681 (Context!16553 (++!17152 (exprs!8776 cWitness!61) (exprs!8776 ct2!378))))))))

(declare-fun lambda!458726 () Int)

(declare-datatypes ((Unit!165621 0))(
  ( (Unit!165622) )
))
(declare-fun lt!2617419 () Unit!165621)

(declare-fun ct1!282 () Context!16552)

(declare-fun lemmaConcatPreservesForall!2009 (List!71832 List!71832 Int) Unit!165621)

(assert (=> b!7383582 (= lt!2617419 (lemmaConcatPreservesForall!2009 (exprs!8776 ct1!282) (exprs!8776 ct2!378) lambda!458726))))

(declare-fun lt!2617416 () Unit!165621)

(assert (=> b!7383582 (= lt!2617416 (lemmaConcatPreservesForall!2009 (exprs!8776 cWitness!61) (exprs!8776 ct2!378) lambda!458726))))

(declare-fun b!7383583 () Bool)

(declare-fun res!2977778 () Bool)

(assert (=> b!7383583 (=> (not res!2977778) (not e!4419627))))

(declare-fun e!4419623 () Bool)

(assert (=> b!7383583 (= res!2977778 e!4419623)))

(declare-fun res!2977776 () Bool)

(assert (=> b!7383583 (=> res!2977776 e!4419623)))

(declare-fun r1!2370 () Regex!19336)

(assert (=> b!7383583 (= res!2977776 (not (is-Concat!28181 r1!2370)))))

(declare-fun b!7383584 () Bool)

(declare-fun e!4419621 () Bool)

(declare-fun tp!2100406 () Bool)

(assert (=> b!7383584 (= e!4419621 tp!2100406)))

(declare-fun b!7383585 () Bool)

(declare-fun nullable!8410 (Regex!19336) Bool)

(assert (=> b!7383585 (= e!4419623 (not (nullable!8410 (regOne!39184 r1!2370))))))

(declare-fun b!7383586 () Bool)

(declare-fun e!4419626 () Bool)

(declare-fun tp!2100409 () Bool)

(assert (=> b!7383586 (= e!4419626 tp!2100409)))

(declare-fun b!7383587 () Bool)

(declare-fun tp!2100404 () Bool)

(declare-fun tp!2100403 () Bool)

(assert (=> b!7383587 (= e!4419624 (and tp!2100404 tp!2100403))))

(declare-fun b!7383588 () Bool)

(declare-fun tp!2100405 () Bool)

(assert (=> b!7383588 (= e!4419624 tp!2100405)))

(declare-fun b!7383589 () Bool)

(declare-fun e!4419622 () Bool)

(declare-fun tp!2100408 () Bool)

(assert (=> b!7383589 (= e!4419622 tp!2100408)))

(declare-fun res!2977773 () Bool)

(declare-fun e!4419625 () Bool)

(assert (=> start!720226 (=> (not res!2977773) (not e!4419625))))

(declare-fun validRegex!9932 (Regex!19336) Bool)

(assert (=> start!720226 (= res!2977773 (validRegex!9932 r1!2370))))

(assert (=> start!720226 e!4419625))

(assert (=> start!720226 tp_is_empty!48917))

(assert (=> start!720226 (and (inv!91681 cWitness!61) e!4419626)))

(assert (=> start!720226 (and (inv!91681 ct1!282) e!4419622)))

(assert (=> start!720226 e!4419624))

(assert (=> start!720226 (and (inv!91681 ct2!378) e!4419621)))

(declare-fun b!7383590 () Bool)

(declare-fun res!2977777 () Bool)

(assert (=> b!7383590 (=> (not res!2977777) (not e!4419627))))

(assert (=> b!7383590 (= res!2977777 (and (not (is-Concat!28181 r1!2370)) (not (is-Star!19336 r1!2370))))))

(declare-fun b!7383591 () Bool)

(assert (=> b!7383591 (= e!4419625 e!4419627)))

(declare-fun res!2977775 () Bool)

(assert (=> b!7383591 (=> (not res!2977775) (not e!4419627))))

(declare-fun c!10362 () C!38946)

(assert (=> b!7383591 (= res!2977775 (and (or (not (is-ElementMatch!19336 r1!2370)) (not (= c!10362 (c!1372450 r1!2370)))) (not (is-Union!19336 r1!2370))))))

(declare-fun lt!2617418 () (Set Context!16552))

(declare-fun derivationStepZipperDown!3162 (Regex!19336 Context!16552 C!38946) (Set Context!16552))

(assert (=> b!7383591 (= lt!2617418 (derivationStepZipperDown!3162 r1!2370 (Context!16553 (++!17152 (exprs!8776 ct1!282) (exprs!8776 ct2!378))) c!10362))))

(declare-fun lt!2617417 () Unit!165621)

(assert (=> b!7383591 (= lt!2617417 (lemmaConcatPreservesForall!2009 (exprs!8776 ct1!282) (exprs!8776 ct2!378) lambda!458726))))

(declare-fun b!7383592 () Bool)

(declare-fun res!2977774 () Bool)

(assert (=> b!7383592 (=> (not res!2977774) (not e!4419625))))

(assert (=> b!7383592 (= res!2977774 (set.member cWitness!61 (derivationStepZipperDown!3162 r1!2370 ct1!282 c!10362)))))

(assert (= (and start!720226 res!2977773) b!7383592))

(assert (= (and b!7383592 res!2977774) b!7383591))

(assert (= (and b!7383591 res!2977775) b!7383583))

(assert (= (and b!7383583 (not res!2977776)) b!7383585))

(assert (= (and b!7383583 res!2977778) b!7383590))

(assert (= (and b!7383590 res!2977777) b!7383582))

(assert (= start!720226 b!7383586))

(assert (= start!720226 b!7383589))

(assert (= (and start!720226 (is-ElementMatch!19336 r1!2370)) b!7383580))

(assert (= (and start!720226 (is-Concat!28181 r1!2370)) b!7383581))

(assert (= (and start!720226 (is-Star!19336 r1!2370)) b!7383588))

(assert (= (and start!720226 (is-Union!19336 r1!2370)) b!7383587))

(assert (= start!720226 b!7383584))

(declare-fun m!8032818 () Bool)

(assert (=> b!7383591 m!8032818))

(declare-fun m!8032820 () Bool)

(assert (=> b!7383591 m!8032820))

(declare-fun m!8032822 () Bool)

(assert (=> b!7383591 m!8032822))

(declare-fun m!8032824 () Bool)

(assert (=> b!7383592 m!8032824))

(declare-fun m!8032826 () Bool)

(assert (=> b!7383592 m!8032826))

(declare-fun m!8032828 () Bool)

(assert (=> start!720226 m!8032828))

(declare-fun m!8032830 () Bool)

(assert (=> start!720226 m!8032830))

(declare-fun m!8032832 () Bool)

(assert (=> start!720226 m!8032832))

(declare-fun m!8032834 () Bool)

(assert (=> start!720226 m!8032834))

(declare-fun m!8032836 () Bool)

(assert (=> b!7383582 m!8032836))

(declare-fun m!8032838 () Bool)

(assert (=> b!7383582 m!8032838))

(assert (=> b!7383582 m!8032822))

(declare-fun m!8032840 () Bool)

(assert (=> b!7383582 m!8032840))

(declare-fun m!8032842 () Bool)

(assert (=> b!7383585 m!8032842))

(push 1)

(assert (not b!7383586))

(assert (not b!7383584))

(assert (not b!7383587))

(assert (not b!7383581))

(assert (not start!720226))

(assert (not b!7383592))

(assert (not b!7383591))

(assert (not b!7383585))

(assert tp_is_empty!48917)

(assert (not b!7383589))

(assert (not b!7383582))

(assert (not b!7383588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7383654 () Bool)

(declare-fun e!4419663 () (Set Context!16552))

(assert (=> b!7383654 (= e!4419663 (set.insert ct1!282 (as set.empty (Set Context!16552))))))

(declare-fun bm!679627 () Bool)

(declare-fun call!679637 () List!71832)

(declare-fun call!679636 () List!71832)

(assert (=> bm!679627 (= call!679637 call!679636)))

(declare-fun c!1372466 () Bool)

(declare-fun call!679635 () (Set Context!16552))

(declare-fun c!1372463 () Bool)

(declare-fun bm!679628 () Bool)

(declare-fun c!1372465 () Bool)

(assert (=> bm!679628 (= call!679635 (derivationStepZipperDown!3162 (ite c!1372466 (regTwo!39185 r1!2370) (ite c!1372463 (regTwo!39184 r1!2370) (ite c!1372465 (regOne!39184 r1!2370) (reg!19665 r1!2370)))) (ite (or c!1372466 c!1372463) ct1!282 (Context!16553 call!679637)) c!10362))))

(declare-fun call!679633 () (Set Context!16552))

(declare-fun bm!679629 () Bool)

(assert (=> bm!679629 (= call!679633 (derivationStepZipperDown!3162 (ite c!1372466 (regOne!39185 r1!2370) (regOne!39184 r1!2370)) (ite c!1372466 ct1!282 (Context!16553 call!679636)) c!10362))))

(declare-fun b!7383655 () Bool)

(declare-fun e!4419661 () (Set Context!16552))

(assert (=> b!7383655 (= e!4419661 (set.union call!679633 call!679635))))

(declare-fun b!7383656 () Bool)

(declare-fun e!4419665 () (Set Context!16552))

(assert (=> b!7383656 (= e!4419665 (as set.empty (Set Context!16552)))))

(declare-fun b!7383657 () Bool)

(declare-fun e!4419666 () Bool)

(assert (=> b!7383657 (= c!1372463 e!4419666)))

(declare-fun res!2977799 () Bool)

(assert (=> b!7383657 (=> (not res!2977799) (not e!4419666))))

(assert (=> b!7383657 (= res!2977799 (is-Concat!28181 r1!2370))))

(declare-fun e!4419664 () (Set Context!16552))

(assert (=> b!7383657 (= e!4419661 e!4419664)))

(declare-fun b!7383658 () Bool)

(assert (=> b!7383658 (= e!4419666 (nullable!8410 (regOne!39184 r1!2370)))))

(declare-fun b!7383659 () Bool)

(declare-fun call!679632 () (Set Context!16552))

(assert (=> b!7383659 (= e!4419665 call!679632)))

(declare-fun b!7383660 () Bool)

(declare-fun call!679634 () (Set Context!16552))

(assert (=> b!7383660 (= e!4419664 (set.union call!679633 call!679634))))

(declare-fun b!7383661 () Bool)

(declare-fun e!4419662 () (Set Context!16552))

(assert (=> b!7383661 (= e!4419664 e!4419662)))

(assert (=> b!7383661 (= c!1372465 (is-Concat!28181 r1!2370))))

(declare-fun bm!679630 () Bool)

(assert (=> bm!679630 (= call!679632 call!679634)))

(declare-fun bm!679631 () Bool)

(assert (=> bm!679631 (= call!679634 call!679635)))

(declare-fun d!2286151 () Bool)

(declare-fun c!1372464 () Bool)

(assert (=> d!2286151 (= c!1372464 (and (is-ElementMatch!19336 r1!2370) (= (c!1372450 r1!2370) c!10362)))))

(assert (=> d!2286151 (= (derivationStepZipperDown!3162 r1!2370 ct1!282 c!10362) e!4419663)))

(declare-fun b!7383662 () Bool)

(declare-fun c!1372462 () Bool)

(assert (=> b!7383662 (= c!1372462 (is-Star!19336 r1!2370))))

(assert (=> b!7383662 (= e!4419662 e!4419665)))

(declare-fun b!7383663 () Bool)

(assert (=> b!7383663 (= e!4419663 e!4419661)))

(assert (=> b!7383663 (= c!1372466 (is-Union!19336 r1!2370))))

(declare-fun bm!679632 () Bool)

(declare-fun $colon$colon!3314 (List!71832 Regex!19336) List!71832)

(assert (=> bm!679632 (= call!679636 ($colon$colon!3314 (exprs!8776 ct1!282) (ite (or c!1372463 c!1372465) (regTwo!39184 r1!2370) r1!2370)))))

(declare-fun b!7383664 () Bool)

(assert (=> b!7383664 (= e!4419662 call!679632)))

(assert (= (and d!2286151 c!1372464) b!7383654))

(assert (= (and d!2286151 (not c!1372464)) b!7383663))

(assert (= (and b!7383663 c!1372466) b!7383655))

(assert (= (and b!7383663 (not c!1372466)) b!7383657))

(assert (= (and b!7383657 res!2977799) b!7383658))

(assert (= (and b!7383657 c!1372463) b!7383660))

(assert (= (and b!7383657 (not c!1372463)) b!7383661))

(assert (= (and b!7383661 c!1372465) b!7383664))

(assert (= (and b!7383661 (not c!1372465)) b!7383662))

(assert (= (and b!7383662 c!1372462) b!7383659))

(assert (= (and b!7383662 (not c!1372462)) b!7383656))

(assert (= (or b!7383664 b!7383659) bm!679627))

(assert (= (or b!7383664 b!7383659) bm!679630))

(assert (= (or b!7383660 bm!679630) bm!679631))

(assert (= (or b!7383660 bm!679627) bm!679632))

(assert (= (or b!7383655 bm!679631) bm!679628))

(assert (= (or b!7383655 b!7383660) bm!679629))

(declare-fun m!8032870 () Bool)

(assert (=> b!7383654 m!8032870))

(declare-fun m!8032872 () Bool)

(assert (=> bm!679628 m!8032872))

(declare-fun m!8032874 () Bool)

(assert (=> bm!679629 m!8032874))

(assert (=> b!7383658 m!8032842))

(declare-fun m!8032876 () Bool)

(assert (=> bm!679632 m!8032876))

(assert (=> b!7383592 d!2286151))

(declare-fun bs!1921796 () Bool)

(declare-fun d!2286155 () Bool)

(assert (= bs!1921796 (and d!2286155 b!7383591)))

(declare-fun lambda!458736 () Int)

(assert (=> bs!1921796 (= lambda!458736 lambda!458726)))

(declare-fun forall!18120 (List!71832 Int) Bool)

(assert (=> d!2286155 (= (inv!91681 (Context!16553 (++!17152 (exprs!8776 cWitness!61) (exprs!8776 ct2!378)))) (forall!18120 (exprs!8776 (Context!16553 (++!17152 (exprs!8776 cWitness!61) (exprs!8776 ct2!378)))) lambda!458736))))

(declare-fun bs!1921797 () Bool)

(assert (= bs!1921797 d!2286155))

(declare-fun m!8032878 () Bool)

(assert (=> bs!1921797 m!8032878))

(assert (=> b!7383582 d!2286155))

(declare-fun e!4419675 () Bool)

(declare-fun lt!2617434 () List!71832)

(declare-fun b!7383684 () Bool)

(assert (=> b!7383684 (= e!4419675 (or (not (= (exprs!8776 ct2!378) Nil!71708)) (= lt!2617434 (exprs!8776 cWitness!61))))))

(declare-fun b!7383683 () Bool)

(declare-fun res!2977804 () Bool)

(assert (=> b!7383683 (=> (not res!2977804) (not e!4419675))))

(declare-fun size!42171 (List!71832) Int)

(assert (=> b!7383683 (= res!2977804 (= (size!42171 lt!2617434) (+ (size!42171 (exprs!8776 cWitness!61)) (size!42171 (exprs!8776 ct2!378)))))))

(declare-fun b!7383682 () Bool)

(declare-fun e!4419676 () List!71832)

(assert (=> b!7383682 (= e!4419676 (Cons!71708 (h!78156 (exprs!8776 cWitness!61)) (++!17152 (t!386331 (exprs!8776 cWitness!61)) (exprs!8776 ct2!378))))))

(declare-fun b!7383681 () Bool)

(assert (=> b!7383681 (= e!4419676 (exprs!8776 ct2!378))))

(declare-fun d!2286157 () Bool)

(assert (=> d!2286157 e!4419675))

(declare-fun res!2977805 () Bool)

(assert (=> d!2286157 (=> (not res!2977805) (not e!4419675))))

(declare-fun content!15193 (List!71832) (Set Regex!19336))

(assert (=> d!2286157 (= res!2977805 (= (content!15193 lt!2617434) (set.union (content!15193 (exprs!8776 cWitness!61)) (content!15193 (exprs!8776 ct2!378)))))))

(assert (=> d!2286157 (= lt!2617434 e!4419676)))

(declare-fun c!1372473 () Bool)

(assert (=> d!2286157 (= c!1372473 (is-Nil!71708 (exprs!8776 cWitness!61)))))

(assert (=> d!2286157 (= (++!17152 (exprs!8776 cWitness!61) (exprs!8776 ct2!378)) lt!2617434)))

(assert (= (and d!2286157 c!1372473) b!7383681))

(assert (= (and d!2286157 (not c!1372473)) b!7383682))

(assert (= (and d!2286157 res!2977805) b!7383683))

(assert (= (and b!7383683 res!2977804) b!7383684))

(declare-fun m!8032880 () Bool)

(assert (=> b!7383683 m!8032880))

(declare-fun m!8032882 () Bool)

(assert (=> b!7383683 m!8032882))

(declare-fun m!8032884 () Bool)

(assert (=> b!7383683 m!8032884))

(declare-fun m!8032886 () Bool)

(assert (=> b!7383682 m!8032886))

(declare-fun m!8032888 () Bool)

(assert (=> d!2286157 m!8032888))

(declare-fun m!8032890 () Bool)

(assert (=> d!2286157 m!8032890))

(declare-fun m!8032892 () Bool)

(assert (=> d!2286157 m!8032892))

(assert (=> b!7383582 d!2286157))

(declare-fun d!2286159 () Bool)

(assert (=> d!2286159 (forall!18120 (++!17152 (exprs!8776 ct1!282) (exprs!8776 ct2!378)) lambda!458726)))

(declare-fun lt!2617437 () Unit!165621)

(declare-fun choose!57358 (List!71832 List!71832 Int) Unit!165621)

(assert (=> d!2286159 (= lt!2617437 (choose!57358 (exprs!8776 ct1!282) (exprs!8776 ct2!378) lambda!458726))))

(assert (=> d!2286159 (forall!18120 (exprs!8776 ct1!282) lambda!458726)))

(assert (=> d!2286159 (= (lemmaConcatPreservesForall!2009 (exprs!8776 ct1!282) (exprs!8776 ct2!378) lambda!458726) lt!2617437)))

(declare-fun bs!1921798 () Bool)

(assert (= bs!1921798 d!2286159))

(assert (=> bs!1921798 m!8032818))

(assert (=> bs!1921798 m!8032818))

(declare-fun m!8032894 () Bool)

(assert (=> bs!1921798 m!8032894))

(declare-fun m!8032896 () Bool)

(assert (=> bs!1921798 m!8032896))

(declare-fun m!8032898 () Bool)

(assert (=> bs!1921798 m!8032898))

(assert (=> b!7383582 d!2286159))

(declare-fun d!2286161 () Bool)

(assert (=> d!2286161 (forall!18120 (++!17152 (exprs!8776 cWitness!61) (exprs!8776 ct2!378)) lambda!458726)))

(declare-fun lt!2617438 () Unit!165621)

(assert (=> d!2286161 (= lt!2617438 (choose!57358 (exprs!8776 cWitness!61) (exprs!8776 ct2!378) lambda!458726))))

(assert (=> d!2286161 (forall!18120 (exprs!8776 cWitness!61) lambda!458726)))

(assert (=> d!2286161 (= (lemmaConcatPreservesForall!2009 (exprs!8776 cWitness!61) (exprs!8776 ct2!378) lambda!458726) lt!2617438)))

(declare-fun bs!1921799 () Bool)

(assert (= bs!1921799 d!2286161))

(assert (=> bs!1921799 m!8032836))

(assert (=> bs!1921799 m!8032836))

(declare-fun m!8032900 () Bool)

(assert (=> bs!1921799 m!8032900))

(declare-fun m!8032902 () Bool)

(assert (=> bs!1921799 m!8032902))

(declare-fun m!8032904 () Bool)

(assert (=> bs!1921799 m!8032904))

(assert (=> b!7383582 d!2286161))

(declare-fun b!7383717 () Bool)

(declare-fun e!4419702 () Bool)

(declare-fun call!679657 () Bool)

(assert (=> b!7383717 (= e!4419702 call!679657)))

(declare-fun b!7383718 () Bool)

(declare-fun e!4419704 () Bool)

(declare-fun e!4419701 () Bool)

(assert (=> b!7383718 (= e!4419704 e!4419701)))

(declare-fun c!1372485 () Bool)

(assert (=> b!7383718 (= c!1372485 (is-Star!19336 r1!2370))))

(declare-fun b!7383719 () Bool)

(declare-fun res!2977820 () Bool)

(declare-fun e!4419700 () Bool)

(assert (=> b!7383719 (=> res!2977820 e!4419700)))

(assert (=> b!7383719 (= res!2977820 (not (is-Concat!28181 r1!2370)))))

(declare-fun e!4419705 () Bool)

(assert (=> b!7383719 (= e!4419705 e!4419700)))

(declare-fun bm!679651 () Bool)

(declare-fun call!679656 () Bool)

(declare-fun c!1372484 () Bool)

(assert (=> bm!679651 (= call!679656 (validRegex!9932 (ite c!1372485 (reg!19665 r1!2370) (ite c!1372484 (regOne!39185 r1!2370) (regTwo!39184 r1!2370)))))))

(declare-fun bm!679652 () Bool)

(assert (=> bm!679652 (= call!679657 (validRegex!9932 (ite c!1372484 (regTwo!39185 r1!2370) (regOne!39184 r1!2370))))))

(declare-fun b!7383720 () Bool)

(declare-fun e!4419699 () Bool)

(assert (=> b!7383720 (= e!4419701 e!4419699)))

(declare-fun res!2977821 () Bool)

(assert (=> b!7383720 (= res!2977821 (not (nullable!8410 (reg!19665 r1!2370))))))

(assert (=> b!7383720 (=> (not res!2977821) (not e!4419699))))

(declare-fun b!7383721 () Bool)

(declare-fun e!4419703 () Bool)

(assert (=> b!7383721 (= e!4419700 e!4419703)))

(declare-fun res!2977818 () Bool)

(assert (=> b!7383721 (=> (not res!2977818) (not e!4419703))))

(assert (=> b!7383721 (= res!2977818 call!679657)))

(declare-fun d!2286163 () Bool)

(declare-fun res!2977822 () Bool)

(assert (=> d!2286163 (=> res!2977822 e!4419704)))

(assert (=> d!2286163 (= res!2977822 (is-ElementMatch!19336 r1!2370))))

(assert (=> d!2286163 (= (validRegex!9932 r1!2370) e!4419704)))

(declare-fun bm!679653 () Bool)

(declare-fun call!679658 () Bool)

(assert (=> bm!679653 (= call!679658 call!679656)))

(declare-fun b!7383722 () Bool)

(assert (=> b!7383722 (= e!4419699 call!679656)))

(declare-fun b!7383723 () Bool)

(declare-fun res!2977819 () Bool)

(assert (=> b!7383723 (=> (not res!2977819) (not e!4419702))))

(assert (=> b!7383723 (= res!2977819 call!679658)))

(assert (=> b!7383723 (= e!4419705 e!4419702)))

(declare-fun b!7383724 () Bool)

(assert (=> b!7383724 (= e!4419701 e!4419705)))

(assert (=> b!7383724 (= c!1372484 (is-Union!19336 r1!2370))))

(declare-fun b!7383725 () Bool)

(assert (=> b!7383725 (= e!4419703 call!679658)))

(assert (= (and d!2286163 (not res!2977822)) b!7383718))

(assert (= (and b!7383718 c!1372485) b!7383720))

(assert (= (and b!7383718 (not c!1372485)) b!7383724))

(assert (= (and b!7383720 res!2977821) b!7383722))

(assert (= (and b!7383724 c!1372484) b!7383723))

(assert (= (and b!7383724 (not c!1372484)) b!7383719))

(assert (= (and b!7383723 res!2977819) b!7383717))

(assert (= (and b!7383719 (not res!2977820)) b!7383721))

(assert (= (and b!7383721 res!2977818) b!7383725))

(assert (= (or b!7383723 b!7383725) bm!679653))

(assert (= (or b!7383717 b!7383721) bm!679652))

(assert (= (or b!7383722 bm!679653) bm!679651))

(declare-fun m!8032906 () Bool)

(assert (=> bm!679651 m!8032906))

(declare-fun m!8032908 () Bool)

(assert (=> bm!679652 m!8032908))

(declare-fun m!8032910 () Bool)

(assert (=> b!7383720 m!8032910))

(assert (=> start!720226 d!2286163))

(declare-fun bs!1921800 () Bool)

(declare-fun d!2286165 () Bool)

(assert (= bs!1921800 (and d!2286165 b!7383591)))

(declare-fun lambda!458737 () Int)

(assert (=> bs!1921800 (= lambda!458737 lambda!458726)))

(declare-fun bs!1921801 () Bool)

(assert (= bs!1921801 (and d!2286165 d!2286155)))

(assert (=> bs!1921801 (= lambda!458737 lambda!458736)))

(assert (=> d!2286165 (= (inv!91681 cWitness!61) (forall!18120 (exprs!8776 cWitness!61) lambda!458737))))

(declare-fun bs!1921802 () Bool)

(assert (= bs!1921802 d!2286165))

(declare-fun m!8032912 () Bool)

(assert (=> bs!1921802 m!8032912))

(assert (=> start!720226 d!2286165))

(declare-fun bs!1921803 () Bool)

(declare-fun d!2286167 () Bool)

(assert (= bs!1921803 (and d!2286167 b!7383591)))

(declare-fun lambda!458738 () Int)

(assert (=> bs!1921803 (= lambda!458738 lambda!458726)))

(declare-fun bs!1921804 () Bool)

(assert (= bs!1921804 (and d!2286167 d!2286155)))

(assert (=> bs!1921804 (= lambda!458738 lambda!458736)))

(declare-fun bs!1921805 () Bool)

(assert (= bs!1921805 (and d!2286167 d!2286165)))

(assert (=> bs!1921805 (= lambda!458738 lambda!458737)))

(assert (=> d!2286167 (= (inv!91681 ct1!282) (forall!18120 (exprs!8776 ct1!282) lambda!458738))))

(declare-fun bs!1921806 () Bool)

(assert (= bs!1921806 d!2286167))

(declare-fun m!8032914 () Bool)

(assert (=> bs!1921806 m!8032914))

(assert (=> start!720226 d!2286167))

(declare-fun bs!1921807 () Bool)

(declare-fun d!2286169 () Bool)

(assert (= bs!1921807 (and d!2286169 b!7383591)))

(declare-fun lambda!458739 () Int)

(assert (=> bs!1921807 (= lambda!458739 lambda!458726)))

(declare-fun bs!1921808 () Bool)

(assert (= bs!1921808 (and d!2286169 d!2286155)))

(assert (=> bs!1921808 (= lambda!458739 lambda!458736)))

(declare-fun bs!1921809 () Bool)

(assert (= bs!1921809 (and d!2286169 d!2286165)))

(assert (=> bs!1921809 (= lambda!458739 lambda!458737)))

(declare-fun bs!1921810 () Bool)

(assert (= bs!1921810 (and d!2286169 d!2286167)))

(assert (=> bs!1921810 (= lambda!458739 lambda!458738)))

(assert (=> d!2286169 (= (inv!91681 ct2!378) (forall!18120 (exprs!8776 ct2!378) lambda!458739))))

(declare-fun bs!1921811 () Bool)

(assert (= bs!1921811 d!2286169))

(declare-fun m!8032916 () Bool)

(assert (=> bs!1921811 m!8032916))

(assert (=> start!720226 d!2286169))

(declare-fun d!2286171 () Bool)

(declare-fun nullableFct!3377 (Regex!19336) Bool)

(assert (=> d!2286171 (= (nullable!8410 (regOne!39184 r1!2370)) (nullableFct!3377 (regOne!39184 r1!2370)))))

(declare-fun bs!1921812 () Bool)

(assert (= bs!1921812 d!2286171))

(declare-fun m!8032918 () Bool)

(assert (=> bs!1921812 m!8032918))

(assert (=> b!7383585 d!2286171))

(declare-fun b!7383726 () Bool)

(declare-fun e!4419708 () (Set Context!16552))

(assert (=> b!7383726 (= e!4419708 (set.insert (Context!16553 (++!17152 (exprs!8776 ct1!282) (exprs!8776 ct2!378))) (as set.empty (Set Context!16552))))))

(declare-fun bm!679654 () Bool)

(declare-fun call!679664 () List!71832)

(declare-fun call!679663 () List!71832)

(assert (=> bm!679654 (= call!679664 call!679663)))

(declare-fun call!679662 () (Set Context!16552))

(declare-fun c!1372489 () Bool)

(declare-fun bm!679655 () Bool)

(declare-fun c!1372490 () Bool)

(declare-fun c!1372487 () Bool)

(assert (=> bm!679655 (= call!679662 (derivationStepZipperDown!3162 (ite c!1372490 (regTwo!39185 r1!2370) (ite c!1372487 (regTwo!39184 r1!2370) (ite c!1372489 (regOne!39184 r1!2370) (reg!19665 r1!2370)))) (ite (or c!1372490 c!1372487) (Context!16553 (++!17152 (exprs!8776 ct1!282) (exprs!8776 ct2!378))) (Context!16553 call!679664)) c!10362))))

(declare-fun bm!679656 () Bool)

(declare-fun call!679660 () (Set Context!16552))

(assert (=> bm!679656 (= call!679660 (derivationStepZipperDown!3162 (ite c!1372490 (regOne!39185 r1!2370) (regOne!39184 r1!2370)) (ite c!1372490 (Context!16553 (++!17152 (exprs!8776 ct1!282) (exprs!8776 ct2!378))) (Context!16553 call!679663)) c!10362))))

(declare-fun b!7383727 () Bool)

(declare-fun e!4419706 () (Set Context!16552))

(assert (=> b!7383727 (= e!4419706 (set.union call!679660 call!679662))))

(declare-fun b!7383728 () Bool)

(declare-fun e!4419710 () (Set Context!16552))

(assert (=> b!7383728 (= e!4419710 (as set.empty (Set Context!16552)))))

(declare-fun b!7383729 () Bool)

(declare-fun e!4419711 () Bool)

(assert (=> b!7383729 (= c!1372487 e!4419711)))

(declare-fun res!2977823 () Bool)

(assert (=> b!7383729 (=> (not res!2977823) (not e!4419711))))

(assert (=> b!7383729 (= res!2977823 (is-Concat!28181 r1!2370))))

(declare-fun e!4419709 () (Set Context!16552))

(assert (=> b!7383729 (= e!4419706 e!4419709)))

(declare-fun b!7383730 () Bool)

(assert (=> b!7383730 (= e!4419711 (nullable!8410 (regOne!39184 r1!2370)))))

(declare-fun b!7383731 () Bool)

(declare-fun call!679659 () (Set Context!16552))

(assert (=> b!7383731 (= e!4419710 call!679659)))

(declare-fun b!7383732 () Bool)

(declare-fun call!679661 () (Set Context!16552))

(assert (=> b!7383732 (= e!4419709 (set.union call!679660 call!679661))))

(declare-fun b!7383733 () Bool)

(declare-fun e!4419707 () (Set Context!16552))

(assert (=> b!7383733 (= e!4419709 e!4419707)))

(assert (=> b!7383733 (= c!1372489 (is-Concat!28181 r1!2370))))

(declare-fun bm!679657 () Bool)

(assert (=> bm!679657 (= call!679659 call!679661)))

(declare-fun bm!679658 () Bool)

(assert (=> bm!679658 (= call!679661 call!679662)))

(declare-fun d!2286173 () Bool)

(declare-fun c!1372488 () Bool)

(assert (=> d!2286173 (= c!1372488 (and (is-ElementMatch!19336 r1!2370) (= (c!1372450 r1!2370) c!10362)))))

(assert (=> d!2286173 (= (derivationStepZipperDown!3162 r1!2370 (Context!16553 (++!17152 (exprs!8776 ct1!282) (exprs!8776 ct2!378))) c!10362) e!4419708)))

(declare-fun b!7383734 () Bool)

(declare-fun c!1372486 () Bool)

(assert (=> b!7383734 (= c!1372486 (is-Star!19336 r1!2370))))

(assert (=> b!7383734 (= e!4419707 e!4419710)))

(declare-fun b!7383735 () Bool)

(assert (=> b!7383735 (= e!4419708 e!4419706)))

(assert (=> b!7383735 (= c!1372490 (is-Union!19336 r1!2370))))

(declare-fun bm!679659 () Bool)

(assert (=> bm!679659 (= call!679663 ($colon$colon!3314 (exprs!8776 (Context!16553 (++!17152 (exprs!8776 ct1!282) (exprs!8776 ct2!378)))) (ite (or c!1372487 c!1372489) (regTwo!39184 r1!2370) r1!2370)))))

(declare-fun b!7383736 () Bool)

(assert (=> b!7383736 (= e!4419707 call!679659)))

(assert (= (and d!2286173 c!1372488) b!7383726))

(assert (= (and d!2286173 (not c!1372488)) b!7383735))

(assert (= (and b!7383735 c!1372490) b!7383727))

(assert (= (and b!7383735 (not c!1372490)) b!7383729))

(assert (= (and b!7383729 res!2977823) b!7383730))

(assert (= (and b!7383729 c!1372487) b!7383732))

(assert (= (and b!7383729 (not c!1372487)) b!7383733))

(assert (= (and b!7383733 c!1372489) b!7383736))

(assert (= (and b!7383733 (not c!1372489)) b!7383734))

(assert (= (and b!7383734 c!1372486) b!7383731))

(assert (= (and b!7383734 (not c!1372486)) b!7383728))

(assert (= (or b!7383736 b!7383731) bm!679654))

(assert (= (or b!7383736 b!7383731) bm!679657))

(assert (= (or b!7383732 bm!679657) bm!679658))

(assert (= (or b!7383732 bm!679654) bm!679659))

(assert (= (or b!7383727 bm!679658) bm!679655))

(assert (= (or b!7383727 b!7383732) bm!679656))

(declare-fun m!8032920 () Bool)

(assert (=> b!7383726 m!8032920))

(declare-fun m!8032922 () Bool)

(assert (=> bm!679655 m!8032922))

(declare-fun m!8032924 () Bool)

(assert (=> bm!679656 m!8032924))

(assert (=> b!7383730 m!8032842))

(declare-fun m!8032926 () Bool)

(assert (=> bm!679659 m!8032926))

(assert (=> b!7383591 d!2286173))

(declare-fun b!7383740 () Bool)

(declare-fun e!4419712 () Bool)

(declare-fun lt!2617439 () List!71832)

(assert (=> b!7383740 (= e!4419712 (or (not (= (exprs!8776 ct2!378) Nil!71708)) (= lt!2617439 (exprs!8776 ct1!282))))))

(declare-fun b!7383739 () Bool)

(declare-fun res!2977824 () Bool)

(assert (=> b!7383739 (=> (not res!2977824) (not e!4419712))))

(assert (=> b!7383739 (= res!2977824 (= (size!42171 lt!2617439) (+ (size!42171 (exprs!8776 ct1!282)) (size!42171 (exprs!8776 ct2!378)))))))

(declare-fun b!7383738 () Bool)

(declare-fun e!4419713 () List!71832)

(assert (=> b!7383738 (= e!4419713 (Cons!71708 (h!78156 (exprs!8776 ct1!282)) (++!17152 (t!386331 (exprs!8776 ct1!282)) (exprs!8776 ct2!378))))))

(declare-fun b!7383737 () Bool)

(assert (=> b!7383737 (= e!4419713 (exprs!8776 ct2!378))))

(declare-fun d!2286175 () Bool)

(assert (=> d!2286175 e!4419712))

(declare-fun res!2977825 () Bool)

(assert (=> d!2286175 (=> (not res!2977825) (not e!4419712))))

(assert (=> d!2286175 (= res!2977825 (= (content!15193 lt!2617439) (set.union (content!15193 (exprs!8776 ct1!282)) (content!15193 (exprs!8776 ct2!378)))))))

(assert (=> d!2286175 (= lt!2617439 e!4419713)))

(declare-fun c!1372491 () Bool)

(assert (=> d!2286175 (= c!1372491 (is-Nil!71708 (exprs!8776 ct1!282)))))

(assert (=> d!2286175 (= (++!17152 (exprs!8776 ct1!282) (exprs!8776 ct2!378)) lt!2617439)))

(assert (= (and d!2286175 c!1372491) b!7383737))

(assert (= (and d!2286175 (not c!1372491)) b!7383738))

(assert (= (and d!2286175 res!2977825) b!7383739))

(assert (= (and b!7383739 res!2977824) b!7383740))

(declare-fun m!8032928 () Bool)

(assert (=> b!7383739 m!8032928))

(declare-fun m!8032930 () Bool)

(assert (=> b!7383739 m!8032930))

(assert (=> b!7383739 m!8032884))

(declare-fun m!8032932 () Bool)

(assert (=> b!7383738 m!8032932))

(declare-fun m!8032934 () Bool)

(assert (=> d!2286175 m!8032934))

(declare-fun m!8032936 () Bool)

(assert (=> d!2286175 m!8032936))

(assert (=> d!2286175 m!8032892))

(assert (=> b!7383591 d!2286175))

(assert (=> b!7383591 d!2286159))

(declare-fun b!7383754 () Bool)

(declare-fun e!4419716 () Bool)

(declare-fun tp!2100446 () Bool)

(declare-fun tp!2100447 () Bool)

(assert (=> b!7383754 (= e!4419716 (and tp!2100446 tp!2100447))))

(declare-fun b!7383752 () Bool)

(declare-fun tp!2100444 () Bool)

(declare-fun tp!2100448 () Bool)

(assert (=> b!7383752 (= e!4419716 (and tp!2100444 tp!2100448))))

(declare-fun b!7383751 () Bool)

(assert (=> b!7383751 (= e!4419716 tp_is_empty!48917)))

(assert (=> b!7383587 (= tp!2100404 e!4419716)))

(declare-fun b!7383753 () Bool)

(declare-fun tp!2100445 () Bool)

(assert (=> b!7383753 (= e!4419716 tp!2100445)))

(assert (= (and b!7383587 (is-ElementMatch!19336 (regOne!39185 r1!2370))) b!7383751))

(assert (= (and b!7383587 (is-Concat!28181 (regOne!39185 r1!2370))) b!7383752))

(assert (= (and b!7383587 (is-Star!19336 (regOne!39185 r1!2370))) b!7383753))

(assert (= (and b!7383587 (is-Union!19336 (regOne!39185 r1!2370))) b!7383754))

(declare-fun b!7383758 () Bool)

(declare-fun e!4419717 () Bool)

(declare-fun tp!2100451 () Bool)

(declare-fun tp!2100452 () Bool)

(assert (=> b!7383758 (= e!4419717 (and tp!2100451 tp!2100452))))

(declare-fun b!7383756 () Bool)

(declare-fun tp!2100449 () Bool)

(declare-fun tp!2100453 () Bool)

(assert (=> b!7383756 (= e!4419717 (and tp!2100449 tp!2100453))))

(declare-fun b!7383755 () Bool)

(assert (=> b!7383755 (= e!4419717 tp_is_empty!48917)))

(assert (=> b!7383587 (= tp!2100403 e!4419717)))

(declare-fun b!7383757 () Bool)

(declare-fun tp!2100450 () Bool)

(assert (=> b!7383757 (= e!4419717 tp!2100450)))

(assert (= (and b!7383587 (is-ElementMatch!19336 (regTwo!39185 r1!2370))) b!7383755))

(assert (= (and b!7383587 (is-Concat!28181 (regTwo!39185 r1!2370))) b!7383756))

(assert (= (and b!7383587 (is-Star!19336 (regTwo!39185 r1!2370))) b!7383757))

(assert (= (and b!7383587 (is-Union!19336 (regTwo!39185 r1!2370))) b!7383758))

(declare-fun b!7383762 () Bool)

(declare-fun e!4419718 () Bool)

(declare-fun tp!2100456 () Bool)

(declare-fun tp!2100457 () Bool)

(assert (=> b!7383762 (= e!4419718 (and tp!2100456 tp!2100457))))

(declare-fun b!7383760 () Bool)

(declare-fun tp!2100454 () Bool)

(declare-fun tp!2100458 () Bool)

(assert (=> b!7383760 (= e!4419718 (and tp!2100454 tp!2100458))))

(declare-fun b!7383759 () Bool)

(assert (=> b!7383759 (= e!4419718 tp_is_empty!48917)))

(assert (=> b!7383588 (= tp!2100405 e!4419718)))

(declare-fun b!7383761 () Bool)

(declare-fun tp!2100455 () Bool)

(assert (=> b!7383761 (= e!4419718 tp!2100455)))

(assert (= (and b!7383588 (is-ElementMatch!19336 (reg!19665 r1!2370))) b!7383759))

(assert (= (and b!7383588 (is-Concat!28181 (reg!19665 r1!2370))) b!7383760))

(assert (= (and b!7383588 (is-Star!19336 (reg!19665 r1!2370))) b!7383761))

(assert (= (and b!7383588 (is-Union!19336 (reg!19665 r1!2370))) b!7383762))

(declare-fun b!7383767 () Bool)

(declare-fun e!4419721 () Bool)

(declare-fun tp!2100463 () Bool)

(declare-fun tp!2100464 () Bool)

(assert (=> b!7383767 (= e!4419721 (and tp!2100463 tp!2100464))))

(assert (=> b!7383589 (= tp!2100408 e!4419721)))

(assert (= (and b!7383589 (is-Cons!71708 (exprs!8776 ct1!282))) b!7383767))

(declare-fun b!7383768 () Bool)

(declare-fun e!4419722 () Bool)

(declare-fun tp!2100465 () Bool)

(declare-fun tp!2100466 () Bool)

(assert (=> b!7383768 (= e!4419722 (and tp!2100465 tp!2100466))))

(assert (=> b!7383584 (= tp!2100406 e!4419722)))

(assert (= (and b!7383584 (is-Cons!71708 (exprs!8776 ct2!378))) b!7383768))

(declare-fun b!7383769 () Bool)

(declare-fun e!4419723 () Bool)

(declare-fun tp!2100467 () Bool)

(declare-fun tp!2100468 () Bool)

(assert (=> b!7383769 (= e!4419723 (and tp!2100467 tp!2100468))))

(assert (=> b!7383586 (= tp!2100409 e!4419723)))

(assert (= (and b!7383586 (is-Cons!71708 (exprs!8776 cWitness!61))) b!7383769))

(declare-fun b!7383773 () Bool)

(declare-fun e!4419724 () Bool)

(declare-fun tp!2100471 () Bool)

(declare-fun tp!2100472 () Bool)

(assert (=> b!7383773 (= e!4419724 (and tp!2100471 tp!2100472))))

(declare-fun b!7383771 () Bool)

(declare-fun tp!2100469 () Bool)

(declare-fun tp!2100473 () Bool)

(assert (=> b!7383771 (= e!4419724 (and tp!2100469 tp!2100473))))

(declare-fun b!7383770 () Bool)

(assert (=> b!7383770 (= e!4419724 tp_is_empty!48917)))

(assert (=> b!7383581 (= tp!2100402 e!4419724)))

(declare-fun b!7383772 () Bool)

(declare-fun tp!2100470 () Bool)

(assert (=> b!7383772 (= e!4419724 tp!2100470)))

(assert (= (and b!7383581 (is-ElementMatch!19336 (regOne!39184 r1!2370))) b!7383770))

(assert (= (and b!7383581 (is-Concat!28181 (regOne!39184 r1!2370))) b!7383771))

(assert (= (and b!7383581 (is-Star!19336 (regOne!39184 r1!2370))) b!7383772))

(assert (= (and b!7383581 (is-Union!19336 (regOne!39184 r1!2370))) b!7383773))

(declare-fun b!7383777 () Bool)

(declare-fun e!4419725 () Bool)

(declare-fun tp!2100476 () Bool)

(declare-fun tp!2100477 () Bool)

(assert (=> b!7383777 (= e!4419725 (and tp!2100476 tp!2100477))))

(declare-fun b!7383775 () Bool)

(declare-fun tp!2100474 () Bool)

(declare-fun tp!2100478 () Bool)

(assert (=> b!7383775 (= e!4419725 (and tp!2100474 tp!2100478))))

(declare-fun b!7383774 () Bool)

(assert (=> b!7383774 (= e!4419725 tp_is_empty!48917)))

(assert (=> b!7383581 (= tp!2100407 e!4419725)))

(declare-fun b!7383776 () Bool)

(declare-fun tp!2100475 () Bool)

(assert (=> b!7383776 (= e!4419725 tp!2100475)))

(assert (= (and b!7383581 (is-ElementMatch!19336 (regTwo!39184 r1!2370))) b!7383774))

(assert (= (and b!7383581 (is-Concat!28181 (regTwo!39184 r1!2370))) b!7383775))

(assert (= (and b!7383581 (is-Star!19336 (regTwo!39184 r1!2370))) b!7383776))

(assert (= (and b!7383581 (is-Union!19336 (regTwo!39184 r1!2370))) b!7383777))

(push 1)

(assert (not b!7383756))

(assert tp_is_empty!48917)

(assert (not b!7383682))

(assert (not bm!679628))

(assert (not b!7383738))

(assert (not d!2286171))

(assert (not bm!679659))

(assert (not b!7383757))

(assert (not d!2286165))

(assert (not b!7383777))

(assert (not b!7383776))

(assert (not d!2286155))

(assert (not b!7383760))

(assert (not b!7383768))

(assert (not d!2286167))

(assert (not bm!679656))

(assert (not b!7383683))

(assert (not b!7383761))

(assert (not bm!679652))

(assert (not b!7383772))

(assert (not b!7383753))

(assert (not bm!679629))

(assert (not d!2286169))

(assert (not d!2286175))

(assert (not b!7383754))

(assert (not b!7383762))

(assert (not b!7383771))

(assert (not bm!679655))

(assert (not b!7383658))

(assert (not b!7383720))

(assert (not b!7383758))

(assert (not d!2286161))

(assert (not b!7383775))

(assert (not b!7383769))

(assert (not b!7383767))

(assert (not bm!679651))

(assert (not b!7383773))

(assert (not d!2286159))

(assert (not b!7383730))

(assert (not b!7383739))

(assert (not bm!679632))

(assert (not d!2286157))

(assert (not b!7383752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

