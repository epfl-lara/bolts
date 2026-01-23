; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724966 () Bool)

(assert start!724966)

(declare-datatypes ((C!39520 0))(
  ( (C!39521 (val!30158 Int)) )
))
(declare-datatypes ((Regex!19623 0))(
  ( (ElementMatch!19623 (c!1382452 C!39520)) (Concat!28468 (regOne!39758 Regex!19623) (regTwo!39758 Regex!19623)) (EmptyExpr!19623) (Star!19623 (reg!19952 Regex!19623)) (EmptyLang!19623) (Union!19623 (regOne!39759 Regex!19623) (regTwo!39759 Regex!19623)) )
))
(declare-fun r2!5783 () Regex!19623)

(declare-fun b!7485738 () Bool)

(declare-fun r1!5845 () Regex!19623)

(declare-fun e!4464500 () Bool)

(declare-fun rTail!78 () Regex!19623)

(declare-fun validRegex!10137 (Regex!19623) Bool)

(assert (=> b!7485738 (= e!4464500 (not (validRegex!10137 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))

(declare-fun lt!2628882 () Regex!19623)

(declare-datatypes ((List!72337 0))(
  ( (Nil!72213) (Cons!72213 (h!78661 C!39520) (t!386906 List!72337)) )
))
(declare-fun s!13591 () List!72337)

(declare-fun matchR!9385 (Regex!19623 List!72337) Bool)

(declare-fun matchRSpec!4300 (Regex!19623 List!72337) Bool)

(assert (=> b!7485738 (= (matchR!9385 lt!2628882 s!13591) (matchRSpec!4300 lt!2628882 s!13591))))

(declare-datatypes ((Unit!166077 0))(
  ( (Unit!166078) )
))
(declare-fun lt!2628883 () Unit!166077)

(declare-fun mainMatchTheorem!4294 (Regex!19623 List!72337) Unit!166077)

(assert (=> b!7485738 (= lt!2628883 (mainMatchTheorem!4294 lt!2628882 s!13591))))

(assert (=> b!7485738 (= lt!2628882 (Concat!28468 (Union!19623 r1!5845 r2!5783) rTail!78))))

(declare-fun b!7485739 () Bool)

(declare-fun e!4464501 () Bool)

(declare-fun tp!2171934 () Bool)

(assert (=> b!7485739 (= e!4464501 tp!2171934)))

(declare-fun b!7485740 () Bool)

(declare-fun tp!2171942 () Bool)

(declare-fun tp!2171938 () Bool)

(assert (=> b!7485740 (= e!4464501 (and tp!2171942 tp!2171938))))

(declare-fun b!7485741 () Bool)

(declare-fun e!4464503 () Bool)

(declare-fun tp_is_empty!49535 () Bool)

(assert (=> b!7485741 (= e!4464503 tp_is_empty!49535)))

(declare-fun b!7485742 () Bool)

(declare-fun e!4464504 () Bool)

(declare-fun tp!2171937 () Bool)

(assert (=> b!7485742 (= e!4464504 (and tp_is_empty!49535 tp!2171937))))

(declare-fun b!7485743 () Bool)

(declare-fun tp!2171940 () Bool)

(declare-fun tp!2171936 () Bool)

(assert (=> b!7485743 (= e!4464503 (and tp!2171940 tp!2171936))))

(declare-fun b!7485744 () Bool)

(declare-fun e!4464502 () Bool)

(declare-fun tp!2171949 () Bool)

(assert (=> b!7485744 (= e!4464502 tp!2171949)))

(declare-fun b!7485745 () Bool)

(declare-fun tp!2171947 () Bool)

(declare-fun tp!2171944 () Bool)

(assert (=> b!7485745 (= e!4464502 (and tp!2171947 tp!2171944))))

(declare-fun b!7485747 () Bool)

(assert (=> b!7485747 (= e!4464501 tp_is_empty!49535)))

(declare-fun b!7485748 () Bool)

(declare-fun tp!2171939 () Bool)

(declare-fun tp!2171941 () Bool)

(assert (=> b!7485748 (= e!4464502 (and tp!2171939 tp!2171941))))

(declare-fun b!7485749 () Bool)

(declare-fun tp!2171948 () Bool)

(declare-fun tp!2171935 () Bool)

(assert (=> b!7485749 (= e!4464503 (and tp!2171948 tp!2171935))))

(declare-fun b!7485750 () Bool)

(assert (=> b!7485750 (= e!4464502 tp_is_empty!49535)))

(declare-fun b!7485751 () Bool)

(declare-fun res!3003090 () Bool)

(assert (=> b!7485751 (=> (not res!3003090) (not e!4464500))))

(assert (=> b!7485751 (= res!3003090 (validRegex!10137 rTail!78))))

(declare-fun b!7485752 () Bool)

(declare-fun tp!2171943 () Bool)

(declare-fun tp!2171945 () Bool)

(assert (=> b!7485752 (= e!4464501 (and tp!2171943 tp!2171945))))

(declare-fun b!7485753 () Bool)

(declare-fun tp!2171946 () Bool)

(assert (=> b!7485753 (= e!4464503 tp!2171946)))

(declare-fun res!3003091 () Bool)

(assert (=> start!724966 (=> (not res!3003091) (not e!4464500))))

(assert (=> start!724966 (= res!3003091 (validRegex!10137 r1!5845))))

(assert (=> start!724966 e!4464500))

(assert (=> start!724966 e!4464501))

(assert (=> start!724966 e!4464503))

(assert (=> start!724966 e!4464502))

(assert (=> start!724966 e!4464504))

(declare-fun b!7485746 () Bool)

(declare-fun res!3003092 () Bool)

(assert (=> b!7485746 (=> (not res!3003092) (not e!4464500))))

(assert (=> b!7485746 (= res!3003092 (validRegex!10137 r2!5783))))

(assert (= (and start!724966 res!3003091) b!7485746))

(assert (= (and b!7485746 res!3003092) b!7485751))

(assert (= (and b!7485751 res!3003090) b!7485738))

(get-info :version)

(assert (= (and start!724966 ((_ is ElementMatch!19623) r1!5845)) b!7485747))

(assert (= (and start!724966 ((_ is Concat!28468) r1!5845)) b!7485752))

(assert (= (and start!724966 ((_ is Star!19623) r1!5845)) b!7485739))

(assert (= (and start!724966 ((_ is Union!19623) r1!5845)) b!7485740))

(assert (= (and start!724966 ((_ is ElementMatch!19623) r2!5783)) b!7485741))

(assert (= (and start!724966 ((_ is Concat!28468) r2!5783)) b!7485749))

(assert (= (and start!724966 ((_ is Star!19623) r2!5783)) b!7485753))

(assert (= (and start!724966 ((_ is Union!19623) r2!5783)) b!7485743))

(assert (= (and start!724966 ((_ is ElementMatch!19623) rTail!78)) b!7485750))

(assert (= (and start!724966 ((_ is Concat!28468) rTail!78)) b!7485748))

(assert (= (and start!724966 ((_ is Star!19623) rTail!78)) b!7485744))

(assert (= (and start!724966 ((_ is Union!19623) rTail!78)) b!7485745))

(assert (= (and start!724966 ((_ is Cons!72213) s!13591)) b!7485742))

(declare-fun m!8075370 () Bool)

(assert (=> b!7485738 m!8075370))

(declare-fun m!8075372 () Bool)

(assert (=> b!7485738 m!8075372))

(declare-fun m!8075374 () Bool)

(assert (=> b!7485738 m!8075374))

(declare-fun m!8075376 () Bool)

(assert (=> b!7485738 m!8075376))

(declare-fun m!8075378 () Bool)

(assert (=> b!7485751 m!8075378))

(declare-fun m!8075380 () Bool)

(assert (=> start!724966 m!8075380))

(declare-fun m!8075382 () Bool)

(assert (=> b!7485746 m!8075382))

(check-sat (not b!7485752) (not b!7485746) (not b!7485745) (not b!7485743) tp_is_empty!49535 (not b!7485742) (not b!7485748) (not start!724966) (not b!7485751) (not b!7485753) (not b!7485739) (not b!7485744) (not b!7485749) (not b!7485740) (not b!7485738))
(check-sat)
(get-model)

(declare-fun b!7485772 () Bool)

(declare-fun e!4464525 () Bool)

(declare-fun e!4464521 () Bool)

(assert (=> b!7485772 (= e!4464525 e!4464521)))

(declare-fun res!3003107 () Bool)

(declare-fun nullable!8560 (Regex!19623) Bool)

(assert (=> b!7485772 (= res!3003107 (not (nullable!8560 (reg!19952 r1!5845))))))

(assert (=> b!7485772 (=> (not res!3003107) (not e!4464521))))

(declare-fun c!1382458 () Bool)

(declare-fun bm!687164 () Bool)

(declare-fun call!687171 () Bool)

(declare-fun c!1382457 () Bool)

(assert (=> bm!687164 (= call!687171 (validRegex!10137 (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845)))))))

(declare-fun b!7485773 () Bool)

(declare-fun res!3003104 () Bool)

(declare-fun e!4464519 () Bool)

(assert (=> b!7485773 (=> res!3003104 e!4464519)))

(assert (=> b!7485773 (= res!3003104 (not ((_ is Concat!28468) r1!5845)))))

(declare-fun e!4464524 () Bool)

(assert (=> b!7485773 (= e!4464524 e!4464519)))

(declare-fun b!7485774 () Bool)

(assert (=> b!7485774 (= e!4464521 call!687171)))

(declare-fun b!7485775 () Bool)

(declare-fun res!3003103 () Bool)

(declare-fun e!4464522 () Bool)

(assert (=> b!7485775 (=> (not res!3003103) (not e!4464522))))

(declare-fun call!687169 () Bool)

(assert (=> b!7485775 (= res!3003103 call!687169)))

(assert (=> b!7485775 (= e!4464524 e!4464522)))

(declare-fun bm!687165 () Bool)

(declare-fun call!687170 () Bool)

(assert (=> bm!687165 (= call!687170 (validRegex!10137 (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845))))))

(declare-fun bm!687166 () Bool)

(assert (=> bm!687166 (= call!687169 call!687171)))

(declare-fun b!7485776 () Bool)

(declare-fun e!4464523 () Bool)

(assert (=> b!7485776 (= e!4464519 e!4464523)))

(declare-fun res!3003105 () Bool)

(assert (=> b!7485776 (=> (not res!3003105) (not e!4464523))))

(assert (=> b!7485776 (= res!3003105 call!687169)))

(declare-fun b!7485777 () Bool)

(assert (=> b!7485777 (= e!4464523 call!687170)))

(declare-fun b!7485778 () Bool)

(assert (=> b!7485778 (= e!4464525 e!4464524)))

(assert (=> b!7485778 (= c!1382457 ((_ is Union!19623) r1!5845))))

(declare-fun d!2300709 () Bool)

(declare-fun res!3003106 () Bool)

(declare-fun e!4464520 () Bool)

(assert (=> d!2300709 (=> res!3003106 e!4464520)))

(assert (=> d!2300709 (= res!3003106 ((_ is ElementMatch!19623) r1!5845))))

(assert (=> d!2300709 (= (validRegex!10137 r1!5845) e!4464520)))

(declare-fun b!7485779 () Bool)

(assert (=> b!7485779 (= e!4464522 call!687170)))

(declare-fun b!7485780 () Bool)

(assert (=> b!7485780 (= e!4464520 e!4464525)))

(assert (=> b!7485780 (= c!1382458 ((_ is Star!19623) r1!5845))))

(assert (= (and d!2300709 (not res!3003106)) b!7485780))

(assert (= (and b!7485780 c!1382458) b!7485772))

(assert (= (and b!7485780 (not c!1382458)) b!7485778))

(assert (= (and b!7485772 res!3003107) b!7485774))

(assert (= (and b!7485778 c!1382457) b!7485775))

(assert (= (and b!7485778 (not c!1382457)) b!7485773))

(assert (= (and b!7485775 res!3003103) b!7485779))

(assert (= (and b!7485773 (not res!3003104)) b!7485776))

(assert (= (and b!7485776 res!3003105) b!7485777))

(assert (= (or b!7485779 b!7485777) bm!687165))

(assert (= (or b!7485775 b!7485776) bm!687166))

(assert (= (or b!7485774 bm!687166) bm!687164))

(declare-fun m!8075384 () Bool)

(assert (=> b!7485772 m!8075384))

(declare-fun m!8075386 () Bool)

(assert (=> bm!687164 m!8075386))

(declare-fun m!8075388 () Bool)

(assert (=> bm!687165 m!8075388))

(assert (=> start!724966 d!2300709))

(declare-fun b!7485781 () Bool)

(declare-fun e!4464532 () Bool)

(declare-fun e!4464528 () Bool)

(assert (=> b!7485781 (= e!4464532 e!4464528)))

(declare-fun res!3003112 () Bool)

(assert (=> b!7485781 (= res!3003112 (not (nullable!8560 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))))

(assert (=> b!7485781 (=> (not res!3003112) (not e!4464528))))

(declare-fun bm!687167 () Bool)

(declare-fun c!1382459 () Bool)

(declare-fun call!687174 () Bool)

(declare-fun c!1382460 () Bool)

(assert (=> bm!687167 (= call!687174 (validRegex!10137 (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))))

(declare-fun b!7485782 () Bool)

(declare-fun res!3003109 () Bool)

(declare-fun e!4464526 () Bool)

(assert (=> b!7485782 (=> res!3003109 e!4464526)))

(assert (=> b!7485782 (= res!3003109 (not ((_ is Concat!28468) (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))

(declare-fun e!4464531 () Bool)

(assert (=> b!7485782 (= e!4464531 e!4464526)))

(declare-fun b!7485783 () Bool)

(assert (=> b!7485783 (= e!4464528 call!687174)))

(declare-fun b!7485784 () Bool)

(declare-fun res!3003108 () Bool)

(declare-fun e!4464529 () Bool)

(assert (=> b!7485784 (=> (not res!3003108) (not e!4464529))))

(declare-fun call!687172 () Bool)

(assert (=> b!7485784 (= res!3003108 call!687172)))

(assert (=> b!7485784 (= e!4464531 e!4464529)))

(declare-fun call!687173 () Bool)

(declare-fun bm!687168 () Bool)

(assert (=> bm!687168 (= call!687173 (validRegex!10137 (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))))

(declare-fun bm!687169 () Bool)

(assert (=> bm!687169 (= call!687172 call!687174)))

(declare-fun b!7485785 () Bool)

(declare-fun e!4464530 () Bool)

(assert (=> b!7485785 (= e!4464526 e!4464530)))

(declare-fun res!3003110 () Bool)

(assert (=> b!7485785 (=> (not res!3003110) (not e!4464530))))

(assert (=> b!7485785 (= res!3003110 call!687172)))

(declare-fun b!7485786 () Bool)

(assert (=> b!7485786 (= e!4464530 call!687173)))

(declare-fun b!7485787 () Bool)

(assert (=> b!7485787 (= e!4464532 e!4464531)))

(assert (=> b!7485787 (= c!1382459 ((_ is Union!19623) (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))

(declare-fun d!2300711 () Bool)

(declare-fun res!3003111 () Bool)

(declare-fun e!4464527 () Bool)

(assert (=> d!2300711 (=> res!3003111 e!4464527)))

(assert (=> d!2300711 (= res!3003111 ((_ is ElementMatch!19623) (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))

(assert (=> d!2300711 (= (validRegex!10137 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) e!4464527)))

(declare-fun b!7485788 () Bool)

(assert (=> b!7485788 (= e!4464529 call!687173)))

(declare-fun b!7485789 () Bool)

(assert (=> b!7485789 (= e!4464527 e!4464532)))

(assert (=> b!7485789 (= c!1382460 ((_ is Star!19623) (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))

(assert (= (and d!2300711 (not res!3003111)) b!7485789))

(assert (= (and b!7485789 c!1382460) b!7485781))

(assert (= (and b!7485789 (not c!1382460)) b!7485787))

(assert (= (and b!7485781 res!3003112) b!7485783))

(assert (= (and b!7485787 c!1382459) b!7485784))

(assert (= (and b!7485787 (not c!1382459)) b!7485782))

(assert (= (and b!7485784 res!3003108) b!7485788))

(assert (= (and b!7485782 (not res!3003109)) b!7485785))

(assert (= (and b!7485785 res!3003110) b!7485786))

(assert (= (or b!7485788 b!7485786) bm!687168))

(assert (= (or b!7485784 b!7485785) bm!687169))

(assert (= (or b!7485783 bm!687169) bm!687167))

(declare-fun m!8075390 () Bool)

(assert (=> b!7485781 m!8075390))

(declare-fun m!8075392 () Bool)

(assert (=> bm!687167 m!8075392))

(declare-fun m!8075394 () Bool)

(assert (=> bm!687168 m!8075394))

(assert (=> b!7485738 d!2300711))

(declare-fun d!2300715 () Bool)

(declare-fun e!4464565 () Bool)

(assert (=> d!2300715 e!4464565))

(declare-fun c!1382472 () Bool)

(assert (=> d!2300715 (= c!1382472 ((_ is EmptyExpr!19623) lt!2628882))))

(declare-fun lt!2628886 () Bool)

(declare-fun e!4464563 () Bool)

(assert (=> d!2300715 (= lt!2628886 e!4464563)))

(declare-fun c!1382471 () Bool)

(declare-fun isEmpty!41231 (List!72337) Bool)

(assert (=> d!2300715 (= c!1382471 (isEmpty!41231 s!13591))))

(assert (=> d!2300715 (validRegex!10137 lt!2628882)))

(assert (=> d!2300715 (= (matchR!9385 lt!2628882 s!13591) lt!2628886)))

(declare-fun b!7485836 () Bool)

(declare-fun res!3003145 () Bool)

(declare-fun e!4464564 () Bool)

(assert (=> b!7485836 (=> (not res!3003145) (not e!4464564))))

(declare-fun tail!14926 (List!72337) List!72337)

(assert (=> b!7485836 (= res!3003145 (isEmpty!41231 (tail!14926 s!13591)))))

(declare-fun b!7485837 () Bool)

(declare-fun e!4464561 () Bool)

(assert (=> b!7485837 (= e!4464561 (not lt!2628886))))

(declare-fun b!7485838 () Bool)

(declare-fun res!3003142 () Bool)

(declare-fun e!4464562 () Bool)

(assert (=> b!7485838 (=> res!3003142 e!4464562)))

(assert (=> b!7485838 (= res!3003142 e!4464564)))

(declare-fun res!3003141 () Bool)

(assert (=> b!7485838 (=> (not res!3003141) (not e!4464564))))

(assert (=> b!7485838 (= res!3003141 lt!2628886)))

(declare-fun b!7485839 () Bool)

(declare-fun e!4464567 () Bool)

(assert (=> b!7485839 (= e!4464562 e!4464567)))

(declare-fun res!3003144 () Bool)

(assert (=> b!7485839 (=> (not res!3003144) (not e!4464567))))

(assert (=> b!7485839 (= res!3003144 (not lt!2628886))))

(declare-fun b!7485840 () Bool)

(declare-fun res!3003140 () Bool)

(declare-fun e!4464566 () Bool)

(assert (=> b!7485840 (=> res!3003140 e!4464566)))

(assert (=> b!7485840 (= res!3003140 (not (isEmpty!41231 (tail!14926 s!13591))))))

(declare-fun b!7485841 () Bool)

(declare-fun head!15357 (List!72337) C!39520)

(assert (=> b!7485841 (= e!4464564 (= (head!15357 s!13591) (c!1382452 lt!2628882)))))

(declare-fun b!7485842 () Bool)

(assert (=> b!7485842 (= e!4464567 e!4464566)))

(declare-fun res!3003139 () Bool)

(assert (=> b!7485842 (=> res!3003139 e!4464566)))

(declare-fun call!687183 () Bool)

(assert (=> b!7485842 (= res!3003139 call!687183)))

(declare-fun bm!687178 () Bool)

(assert (=> bm!687178 (= call!687183 (isEmpty!41231 s!13591))))

(declare-fun b!7485843 () Bool)

(declare-fun derivativeStep!5617 (Regex!19623 C!39520) Regex!19623)

(assert (=> b!7485843 (= e!4464563 (matchR!9385 (derivativeStep!5617 lt!2628882 (head!15357 s!13591)) (tail!14926 s!13591)))))

(declare-fun b!7485844 () Bool)

(declare-fun res!3003143 () Bool)

(assert (=> b!7485844 (=> res!3003143 e!4464562)))

(assert (=> b!7485844 (= res!3003143 (not ((_ is ElementMatch!19623) lt!2628882)))))

(assert (=> b!7485844 (= e!4464561 e!4464562)))

(declare-fun b!7485845 () Bool)

(declare-fun res!3003146 () Bool)

(assert (=> b!7485845 (=> (not res!3003146) (not e!4464564))))

(assert (=> b!7485845 (= res!3003146 (not call!687183))))

(declare-fun b!7485846 () Bool)

(assert (=> b!7485846 (= e!4464565 (= lt!2628886 call!687183))))

(declare-fun b!7485847 () Bool)

(assert (=> b!7485847 (= e!4464565 e!4464561)))

(declare-fun c!1382473 () Bool)

(assert (=> b!7485847 (= c!1382473 ((_ is EmptyLang!19623) lt!2628882))))

(declare-fun b!7485848 () Bool)

(assert (=> b!7485848 (= e!4464566 (not (= (head!15357 s!13591) (c!1382452 lt!2628882))))))

(declare-fun b!7485849 () Bool)

(assert (=> b!7485849 (= e!4464563 (nullable!8560 lt!2628882))))

(assert (= (and d!2300715 c!1382471) b!7485849))

(assert (= (and d!2300715 (not c!1382471)) b!7485843))

(assert (= (and d!2300715 c!1382472) b!7485846))

(assert (= (and d!2300715 (not c!1382472)) b!7485847))

(assert (= (and b!7485847 c!1382473) b!7485837))

(assert (= (and b!7485847 (not c!1382473)) b!7485844))

(assert (= (and b!7485844 (not res!3003143)) b!7485838))

(assert (= (and b!7485838 res!3003141) b!7485845))

(assert (= (and b!7485845 res!3003146) b!7485836))

(assert (= (and b!7485836 res!3003145) b!7485841))

(assert (= (and b!7485838 (not res!3003142)) b!7485839))

(assert (= (and b!7485839 res!3003144) b!7485842))

(assert (= (and b!7485842 (not res!3003139)) b!7485840))

(assert (= (and b!7485840 (not res!3003140)) b!7485848))

(assert (= (or b!7485846 b!7485842 b!7485845) bm!687178))

(declare-fun m!8075396 () Bool)

(assert (=> b!7485840 m!8075396))

(assert (=> b!7485840 m!8075396))

(declare-fun m!8075398 () Bool)

(assert (=> b!7485840 m!8075398))

(assert (=> b!7485836 m!8075396))

(assert (=> b!7485836 m!8075396))

(assert (=> b!7485836 m!8075398))

(declare-fun m!8075400 () Bool)

(assert (=> bm!687178 m!8075400))

(declare-fun m!8075402 () Bool)

(assert (=> b!7485843 m!8075402))

(assert (=> b!7485843 m!8075402))

(declare-fun m!8075404 () Bool)

(assert (=> b!7485843 m!8075404))

(assert (=> b!7485843 m!8075396))

(assert (=> b!7485843 m!8075404))

(assert (=> b!7485843 m!8075396))

(declare-fun m!8075406 () Bool)

(assert (=> b!7485843 m!8075406))

(declare-fun m!8075408 () Bool)

(assert (=> b!7485849 m!8075408))

(assert (=> b!7485848 m!8075402))

(assert (=> d!2300715 m!8075400))

(declare-fun m!8075410 () Bool)

(assert (=> d!2300715 m!8075410))

(assert (=> b!7485841 m!8075402))

(assert (=> b!7485738 d!2300715))

(declare-fun b!7485980 () Bool)

(assert (=> b!7485980 true))

(assert (=> b!7485980 true))

(declare-fun bs!1934322 () Bool)

(declare-fun b!7485974 () Bool)

(assert (= bs!1934322 (and b!7485974 b!7485980)))

(declare-fun lambda!463889 () Int)

(declare-fun lambda!463888 () Int)

(assert (=> bs!1934322 (not (= lambda!463889 lambda!463888))))

(assert (=> b!7485974 true))

(assert (=> b!7485974 true))

(declare-fun d!2300717 () Bool)

(declare-fun c!1382505 () Bool)

(assert (=> d!2300717 (= c!1382505 ((_ is EmptyExpr!19623) lt!2628882))))

(declare-fun e!4464643 () Bool)

(assert (=> d!2300717 (= (matchRSpec!4300 lt!2628882 s!13591) e!4464643)))

(declare-fun bm!687195 () Bool)

(declare-fun call!687200 () Bool)

(assert (=> bm!687195 (= call!687200 (isEmpty!41231 s!13591))))

(declare-fun b!7485973 () Bool)

(declare-fun e!4464647 () Bool)

(declare-fun e!4464645 () Bool)

(assert (=> b!7485973 (= e!4464647 e!4464645)))

(declare-fun c!1382506 () Bool)

(assert (=> b!7485973 (= c!1382506 ((_ is Star!19623) lt!2628882))))

(declare-fun call!687201 () Bool)

(assert (=> b!7485974 (= e!4464645 call!687201)))

(declare-fun b!7485975 () Bool)

(declare-fun e!4464644 () Bool)

(assert (=> b!7485975 (= e!4464644 (matchRSpec!4300 (regTwo!39759 lt!2628882) s!13591))))

(declare-fun b!7485976 () Bool)

(declare-fun c!1382507 () Bool)

(assert (=> b!7485976 (= c!1382507 ((_ is ElementMatch!19623) lt!2628882))))

(declare-fun e!4464646 () Bool)

(declare-fun e!4464642 () Bool)

(assert (=> b!7485976 (= e!4464646 e!4464642)))

(declare-fun b!7485977 () Bool)

(declare-fun c!1382508 () Bool)

(assert (=> b!7485977 (= c!1382508 ((_ is Union!19623) lt!2628882))))

(assert (=> b!7485977 (= e!4464642 e!4464647)))

(declare-fun b!7485978 () Bool)

(assert (=> b!7485978 (= e!4464643 call!687200)))

(declare-fun b!7485979 () Bool)

(declare-fun res!3003209 () Bool)

(declare-fun e!4464648 () Bool)

(assert (=> b!7485979 (=> res!3003209 e!4464648)))

(assert (=> b!7485979 (= res!3003209 call!687200)))

(assert (=> b!7485979 (= e!4464645 e!4464648)))

(declare-fun bm!687196 () Bool)

(declare-fun Exists!4239 (Int) Bool)

(assert (=> bm!687196 (= call!687201 (Exists!4239 (ite c!1382506 lambda!463888 lambda!463889)))))

(assert (=> b!7485980 (= e!4464648 call!687201)))

(declare-fun b!7485981 () Bool)

(assert (=> b!7485981 (= e!4464647 e!4464644)))

(declare-fun res!3003208 () Bool)

(assert (=> b!7485981 (= res!3003208 (matchRSpec!4300 (regOne!39759 lt!2628882) s!13591))))

(assert (=> b!7485981 (=> res!3003208 e!4464644)))

(declare-fun b!7485982 () Bool)

(assert (=> b!7485982 (= e!4464642 (= s!13591 (Cons!72213 (c!1382452 lt!2628882) Nil!72213)))))

(declare-fun b!7485983 () Bool)

(assert (=> b!7485983 (= e!4464643 e!4464646)))

(declare-fun res!3003210 () Bool)

(assert (=> b!7485983 (= res!3003210 (not ((_ is EmptyLang!19623) lt!2628882)))))

(assert (=> b!7485983 (=> (not res!3003210) (not e!4464646))))

(assert (= (and d!2300717 c!1382505) b!7485978))

(assert (= (and d!2300717 (not c!1382505)) b!7485983))

(assert (= (and b!7485983 res!3003210) b!7485976))

(assert (= (and b!7485976 c!1382507) b!7485982))

(assert (= (and b!7485976 (not c!1382507)) b!7485977))

(assert (= (and b!7485977 c!1382508) b!7485981))

(assert (= (and b!7485977 (not c!1382508)) b!7485973))

(assert (= (and b!7485981 (not res!3003208)) b!7485975))

(assert (= (and b!7485973 c!1382506) b!7485979))

(assert (= (and b!7485973 (not c!1382506)) b!7485974))

(assert (= (and b!7485979 (not res!3003209)) b!7485980))

(assert (= (or b!7485980 b!7485974) bm!687196))

(assert (= (or b!7485978 b!7485979) bm!687195))

(assert (=> bm!687195 m!8075400))

(declare-fun m!8075446 () Bool)

(assert (=> b!7485975 m!8075446))

(declare-fun m!8075448 () Bool)

(assert (=> bm!687196 m!8075448))

(declare-fun m!8075450 () Bool)

(assert (=> b!7485981 m!8075450))

(assert (=> b!7485738 d!2300717))

(declare-fun d!2300727 () Bool)

(assert (=> d!2300727 (= (matchR!9385 lt!2628882 s!13591) (matchRSpec!4300 lt!2628882 s!13591))))

(declare-fun lt!2628892 () Unit!166077)

(declare-fun choose!57866 (Regex!19623 List!72337) Unit!166077)

(assert (=> d!2300727 (= lt!2628892 (choose!57866 lt!2628882 s!13591))))

(assert (=> d!2300727 (validRegex!10137 lt!2628882)))

(assert (=> d!2300727 (= (mainMatchTheorem!4294 lt!2628882 s!13591) lt!2628892)))

(declare-fun bs!1934323 () Bool)

(assert (= bs!1934323 d!2300727))

(assert (=> bs!1934323 m!8075372))

(assert (=> bs!1934323 m!8075374))

(declare-fun m!8075452 () Bool)

(assert (=> bs!1934323 m!8075452))

(assert (=> bs!1934323 m!8075410))

(assert (=> b!7485738 d!2300727))

(declare-fun b!7485988 () Bool)

(declare-fun e!4464655 () Bool)

(declare-fun e!4464651 () Bool)

(assert (=> b!7485988 (= e!4464655 e!4464651)))

(declare-fun res!3003215 () Bool)

(assert (=> b!7485988 (= res!3003215 (not (nullable!8560 (reg!19952 r2!5783))))))

(assert (=> b!7485988 (=> (not res!3003215) (not e!4464651))))

(declare-fun call!687204 () Bool)

(declare-fun bm!687197 () Bool)

(declare-fun c!1382510 () Bool)

(declare-fun c!1382509 () Bool)

(assert (=> bm!687197 (= call!687204 (validRegex!10137 (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783)))))))

(declare-fun b!7485989 () Bool)

(declare-fun res!3003212 () Bool)

(declare-fun e!4464649 () Bool)

(assert (=> b!7485989 (=> res!3003212 e!4464649)))

(assert (=> b!7485989 (= res!3003212 (not ((_ is Concat!28468) r2!5783)))))

(declare-fun e!4464654 () Bool)

(assert (=> b!7485989 (= e!4464654 e!4464649)))

(declare-fun b!7485990 () Bool)

(assert (=> b!7485990 (= e!4464651 call!687204)))

(declare-fun b!7485991 () Bool)

(declare-fun res!3003211 () Bool)

(declare-fun e!4464652 () Bool)

(assert (=> b!7485991 (=> (not res!3003211) (not e!4464652))))

(declare-fun call!687202 () Bool)

(assert (=> b!7485991 (= res!3003211 call!687202)))

(assert (=> b!7485991 (= e!4464654 e!4464652)))

(declare-fun bm!687198 () Bool)

(declare-fun call!687203 () Bool)

(assert (=> bm!687198 (= call!687203 (validRegex!10137 (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783))))))

(declare-fun bm!687199 () Bool)

(assert (=> bm!687199 (= call!687202 call!687204)))

(declare-fun b!7485992 () Bool)

(declare-fun e!4464653 () Bool)

(assert (=> b!7485992 (= e!4464649 e!4464653)))

(declare-fun res!3003213 () Bool)

(assert (=> b!7485992 (=> (not res!3003213) (not e!4464653))))

(assert (=> b!7485992 (= res!3003213 call!687202)))

(declare-fun b!7485993 () Bool)

(assert (=> b!7485993 (= e!4464653 call!687203)))

(declare-fun b!7485994 () Bool)

(assert (=> b!7485994 (= e!4464655 e!4464654)))

(assert (=> b!7485994 (= c!1382509 ((_ is Union!19623) r2!5783))))

(declare-fun d!2300729 () Bool)

(declare-fun res!3003214 () Bool)

(declare-fun e!4464650 () Bool)

(assert (=> d!2300729 (=> res!3003214 e!4464650)))

(assert (=> d!2300729 (= res!3003214 ((_ is ElementMatch!19623) r2!5783))))

(assert (=> d!2300729 (= (validRegex!10137 r2!5783) e!4464650)))

(declare-fun b!7485995 () Bool)

(assert (=> b!7485995 (= e!4464652 call!687203)))

(declare-fun b!7485996 () Bool)

(assert (=> b!7485996 (= e!4464650 e!4464655)))

(assert (=> b!7485996 (= c!1382510 ((_ is Star!19623) r2!5783))))

(assert (= (and d!2300729 (not res!3003214)) b!7485996))

(assert (= (and b!7485996 c!1382510) b!7485988))

(assert (= (and b!7485996 (not c!1382510)) b!7485994))

(assert (= (and b!7485988 res!3003215) b!7485990))

(assert (= (and b!7485994 c!1382509) b!7485991))

(assert (= (and b!7485994 (not c!1382509)) b!7485989))

(assert (= (and b!7485991 res!3003211) b!7485995))

(assert (= (and b!7485989 (not res!3003212)) b!7485992))

(assert (= (and b!7485992 res!3003213) b!7485993))

(assert (= (or b!7485995 b!7485993) bm!687198))

(assert (= (or b!7485991 b!7485992) bm!687199))

(assert (= (or b!7485990 bm!687199) bm!687197))

(declare-fun m!8075454 () Bool)

(assert (=> b!7485988 m!8075454))

(declare-fun m!8075456 () Bool)

(assert (=> bm!687197 m!8075456))

(declare-fun m!8075458 () Bool)

(assert (=> bm!687198 m!8075458))

(assert (=> b!7485746 d!2300729))

(declare-fun b!7485997 () Bool)

(declare-fun e!4464662 () Bool)

(declare-fun e!4464658 () Bool)

(assert (=> b!7485997 (= e!4464662 e!4464658)))

(declare-fun res!3003220 () Bool)

(assert (=> b!7485997 (= res!3003220 (not (nullable!8560 (reg!19952 rTail!78))))))

(assert (=> b!7485997 (=> (not res!3003220) (not e!4464658))))

(declare-fun c!1382512 () Bool)

(declare-fun bm!687200 () Bool)

(declare-fun call!687207 () Bool)

(declare-fun c!1382511 () Bool)

(assert (=> bm!687200 (= call!687207 (validRegex!10137 (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78)))))))

(declare-fun b!7485998 () Bool)

(declare-fun res!3003217 () Bool)

(declare-fun e!4464656 () Bool)

(assert (=> b!7485998 (=> res!3003217 e!4464656)))

(assert (=> b!7485998 (= res!3003217 (not ((_ is Concat!28468) rTail!78)))))

(declare-fun e!4464661 () Bool)

(assert (=> b!7485998 (= e!4464661 e!4464656)))

(declare-fun b!7485999 () Bool)

(assert (=> b!7485999 (= e!4464658 call!687207)))

(declare-fun b!7486000 () Bool)

(declare-fun res!3003216 () Bool)

(declare-fun e!4464659 () Bool)

(assert (=> b!7486000 (=> (not res!3003216) (not e!4464659))))

(declare-fun call!687205 () Bool)

(assert (=> b!7486000 (= res!3003216 call!687205)))

(assert (=> b!7486000 (= e!4464661 e!4464659)))

(declare-fun bm!687201 () Bool)

(declare-fun call!687206 () Bool)

(assert (=> bm!687201 (= call!687206 (validRegex!10137 (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78))))))

(declare-fun bm!687202 () Bool)

(assert (=> bm!687202 (= call!687205 call!687207)))

(declare-fun b!7486001 () Bool)

(declare-fun e!4464660 () Bool)

(assert (=> b!7486001 (= e!4464656 e!4464660)))

(declare-fun res!3003218 () Bool)

(assert (=> b!7486001 (=> (not res!3003218) (not e!4464660))))

(assert (=> b!7486001 (= res!3003218 call!687205)))

(declare-fun b!7486002 () Bool)

(assert (=> b!7486002 (= e!4464660 call!687206)))

(declare-fun b!7486003 () Bool)

(assert (=> b!7486003 (= e!4464662 e!4464661)))

(assert (=> b!7486003 (= c!1382511 ((_ is Union!19623) rTail!78))))

(declare-fun d!2300731 () Bool)

(declare-fun res!3003219 () Bool)

(declare-fun e!4464657 () Bool)

(assert (=> d!2300731 (=> res!3003219 e!4464657)))

(assert (=> d!2300731 (= res!3003219 ((_ is ElementMatch!19623) rTail!78))))

(assert (=> d!2300731 (= (validRegex!10137 rTail!78) e!4464657)))

(declare-fun b!7486004 () Bool)

(assert (=> b!7486004 (= e!4464659 call!687206)))

(declare-fun b!7486005 () Bool)

(assert (=> b!7486005 (= e!4464657 e!4464662)))

(assert (=> b!7486005 (= c!1382512 ((_ is Star!19623) rTail!78))))

(assert (= (and d!2300731 (not res!3003219)) b!7486005))

(assert (= (and b!7486005 c!1382512) b!7485997))

(assert (= (and b!7486005 (not c!1382512)) b!7486003))

(assert (= (and b!7485997 res!3003220) b!7485999))

(assert (= (and b!7486003 c!1382511) b!7486000))

(assert (= (and b!7486003 (not c!1382511)) b!7485998))

(assert (= (and b!7486000 res!3003216) b!7486004))

(assert (= (and b!7485998 (not res!3003217)) b!7486001))

(assert (= (and b!7486001 res!3003218) b!7486002))

(assert (= (or b!7486004 b!7486002) bm!687201))

(assert (= (or b!7486000 b!7486001) bm!687202))

(assert (= (or b!7485999 bm!687202) bm!687200))

(declare-fun m!8075460 () Bool)

(assert (=> b!7485997 m!8075460))

(declare-fun m!8075462 () Bool)

(assert (=> bm!687200 m!8075462))

(declare-fun m!8075464 () Bool)

(assert (=> bm!687201 m!8075464))

(assert (=> b!7485751 d!2300731))

(declare-fun b!7486019 () Bool)

(declare-fun e!4464665 () Bool)

(declare-fun tp!2171962 () Bool)

(declare-fun tp!2171963 () Bool)

(assert (=> b!7486019 (= e!4464665 (and tp!2171962 tp!2171963))))

(assert (=> b!7485748 (= tp!2171939 e!4464665)))

(declare-fun b!7486017 () Bool)

(declare-fun tp!2171961 () Bool)

(declare-fun tp!2171964 () Bool)

(assert (=> b!7486017 (= e!4464665 (and tp!2171961 tp!2171964))))

(declare-fun b!7486016 () Bool)

(assert (=> b!7486016 (= e!4464665 tp_is_empty!49535)))

(declare-fun b!7486018 () Bool)

(declare-fun tp!2171960 () Bool)

(assert (=> b!7486018 (= e!4464665 tp!2171960)))

(assert (= (and b!7485748 ((_ is ElementMatch!19623) (regOne!39758 rTail!78))) b!7486016))

(assert (= (and b!7485748 ((_ is Concat!28468) (regOne!39758 rTail!78))) b!7486017))

(assert (= (and b!7485748 ((_ is Star!19623) (regOne!39758 rTail!78))) b!7486018))

(assert (= (and b!7485748 ((_ is Union!19623) (regOne!39758 rTail!78))) b!7486019))

(declare-fun b!7486023 () Bool)

(declare-fun e!4464666 () Bool)

(declare-fun tp!2171967 () Bool)

(declare-fun tp!2171968 () Bool)

(assert (=> b!7486023 (= e!4464666 (and tp!2171967 tp!2171968))))

(assert (=> b!7485748 (= tp!2171941 e!4464666)))

(declare-fun b!7486021 () Bool)

(declare-fun tp!2171966 () Bool)

(declare-fun tp!2171969 () Bool)

(assert (=> b!7486021 (= e!4464666 (and tp!2171966 tp!2171969))))

(declare-fun b!7486020 () Bool)

(assert (=> b!7486020 (= e!4464666 tp_is_empty!49535)))

(declare-fun b!7486022 () Bool)

(declare-fun tp!2171965 () Bool)

(assert (=> b!7486022 (= e!4464666 tp!2171965)))

(assert (= (and b!7485748 ((_ is ElementMatch!19623) (regTwo!39758 rTail!78))) b!7486020))

(assert (= (and b!7485748 ((_ is Concat!28468) (regTwo!39758 rTail!78))) b!7486021))

(assert (= (and b!7485748 ((_ is Star!19623) (regTwo!39758 rTail!78))) b!7486022))

(assert (= (and b!7485748 ((_ is Union!19623) (regTwo!39758 rTail!78))) b!7486023))

(declare-fun b!7486027 () Bool)

(declare-fun e!4464667 () Bool)

(declare-fun tp!2171972 () Bool)

(declare-fun tp!2171973 () Bool)

(assert (=> b!7486027 (= e!4464667 (and tp!2171972 tp!2171973))))

(assert (=> b!7485753 (= tp!2171946 e!4464667)))

(declare-fun b!7486025 () Bool)

(declare-fun tp!2171971 () Bool)

(declare-fun tp!2171974 () Bool)

(assert (=> b!7486025 (= e!4464667 (and tp!2171971 tp!2171974))))

(declare-fun b!7486024 () Bool)

(assert (=> b!7486024 (= e!4464667 tp_is_empty!49535)))

(declare-fun b!7486026 () Bool)

(declare-fun tp!2171970 () Bool)

(assert (=> b!7486026 (= e!4464667 tp!2171970)))

(assert (= (and b!7485753 ((_ is ElementMatch!19623) (reg!19952 r2!5783))) b!7486024))

(assert (= (and b!7485753 ((_ is Concat!28468) (reg!19952 r2!5783))) b!7486025))

(assert (= (and b!7485753 ((_ is Star!19623) (reg!19952 r2!5783))) b!7486026))

(assert (= (and b!7485753 ((_ is Union!19623) (reg!19952 r2!5783))) b!7486027))

(declare-fun b!7486031 () Bool)

(declare-fun e!4464668 () Bool)

(declare-fun tp!2171977 () Bool)

(declare-fun tp!2171978 () Bool)

(assert (=> b!7486031 (= e!4464668 (and tp!2171977 tp!2171978))))

(assert (=> b!7485743 (= tp!2171940 e!4464668)))

(declare-fun b!7486029 () Bool)

(declare-fun tp!2171976 () Bool)

(declare-fun tp!2171979 () Bool)

(assert (=> b!7486029 (= e!4464668 (and tp!2171976 tp!2171979))))

(declare-fun b!7486028 () Bool)

(assert (=> b!7486028 (= e!4464668 tp_is_empty!49535)))

(declare-fun b!7486030 () Bool)

(declare-fun tp!2171975 () Bool)

(assert (=> b!7486030 (= e!4464668 tp!2171975)))

(assert (= (and b!7485743 ((_ is ElementMatch!19623) (regOne!39759 r2!5783))) b!7486028))

(assert (= (and b!7485743 ((_ is Concat!28468) (regOne!39759 r2!5783))) b!7486029))

(assert (= (and b!7485743 ((_ is Star!19623) (regOne!39759 r2!5783))) b!7486030))

(assert (= (and b!7485743 ((_ is Union!19623) (regOne!39759 r2!5783))) b!7486031))

(declare-fun b!7486035 () Bool)

(declare-fun e!4464669 () Bool)

(declare-fun tp!2171982 () Bool)

(declare-fun tp!2171983 () Bool)

(assert (=> b!7486035 (= e!4464669 (and tp!2171982 tp!2171983))))

(assert (=> b!7485743 (= tp!2171936 e!4464669)))

(declare-fun b!7486033 () Bool)

(declare-fun tp!2171981 () Bool)

(declare-fun tp!2171984 () Bool)

(assert (=> b!7486033 (= e!4464669 (and tp!2171981 tp!2171984))))

(declare-fun b!7486032 () Bool)

(assert (=> b!7486032 (= e!4464669 tp_is_empty!49535)))

(declare-fun b!7486034 () Bool)

(declare-fun tp!2171980 () Bool)

(assert (=> b!7486034 (= e!4464669 tp!2171980)))

(assert (= (and b!7485743 ((_ is ElementMatch!19623) (regTwo!39759 r2!5783))) b!7486032))

(assert (= (and b!7485743 ((_ is Concat!28468) (regTwo!39759 r2!5783))) b!7486033))

(assert (= (and b!7485743 ((_ is Star!19623) (regTwo!39759 r2!5783))) b!7486034))

(assert (= (and b!7485743 ((_ is Union!19623) (regTwo!39759 r2!5783))) b!7486035))

(declare-fun b!7486039 () Bool)

(declare-fun e!4464670 () Bool)

(declare-fun tp!2171987 () Bool)

(declare-fun tp!2171988 () Bool)

(assert (=> b!7486039 (= e!4464670 (and tp!2171987 tp!2171988))))

(assert (=> b!7485752 (= tp!2171943 e!4464670)))

(declare-fun b!7486037 () Bool)

(declare-fun tp!2171986 () Bool)

(declare-fun tp!2171989 () Bool)

(assert (=> b!7486037 (= e!4464670 (and tp!2171986 tp!2171989))))

(declare-fun b!7486036 () Bool)

(assert (=> b!7486036 (= e!4464670 tp_is_empty!49535)))

(declare-fun b!7486038 () Bool)

(declare-fun tp!2171985 () Bool)

(assert (=> b!7486038 (= e!4464670 tp!2171985)))

(assert (= (and b!7485752 ((_ is ElementMatch!19623) (regOne!39758 r1!5845))) b!7486036))

(assert (= (and b!7485752 ((_ is Concat!28468) (regOne!39758 r1!5845))) b!7486037))

(assert (= (and b!7485752 ((_ is Star!19623) (regOne!39758 r1!5845))) b!7486038))

(assert (= (and b!7485752 ((_ is Union!19623) (regOne!39758 r1!5845))) b!7486039))

(declare-fun b!7486043 () Bool)

(declare-fun e!4464671 () Bool)

(declare-fun tp!2171992 () Bool)

(declare-fun tp!2171993 () Bool)

(assert (=> b!7486043 (= e!4464671 (and tp!2171992 tp!2171993))))

(assert (=> b!7485752 (= tp!2171945 e!4464671)))

(declare-fun b!7486041 () Bool)

(declare-fun tp!2171991 () Bool)

(declare-fun tp!2171994 () Bool)

(assert (=> b!7486041 (= e!4464671 (and tp!2171991 tp!2171994))))

(declare-fun b!7486040 () Bool)

(assert (=> b!7486040 (= e!4464671 tp_is_empty!49535)))

(declare-fun b!7486042 () Bool)

(declare-fun tp!2171990 () Bool)

(assert (=> b!7486042 (= e!4464671 tp!2171990)))

(assert (= (and b!7485752 ((_ is ElementMatch!19623) (regTwo!39758 r1!5845))) b!7486040))

(assert (= (and b!7485752 ((_ is Concat!28468) (regTwo!39758 r1!5845))) b!7486041))

(assert (= (and b!7485752 ((_ is Star!19623) (regTwo!39758 r1!5845))) b!7486042))

(assert (= (and b!7485752 ((_ is Union!19623) (regTwo!39758 r1!5845))) b!7486043))

(declare-fun b!7486048 () Bool)

(declare-fun e!4464674 () Bool)

(declare-fun tp!2171997 () Bool)

(assert (=> b!7486048 (= e!4464674 (and tp_is_empty!49535 tp!2171997))))

(assert (=> b!7485742 (= tp!2171937 e!4464674)))

(assert (= (and b!7485742 ((_ is Cons!72213) (t!386906 s!13591))) b!7486048))

(declare-fun b!7486052 () Bool)

(declare-fun e!4464675 () Bool)

(declare-fun tp!2172000 () Bool)

(declare-fun tp!2172001 () Bool)

(assert (=> b!7486052 (= e!4464675 (and tp!2172000 tp!2172001))))

(assert (=> b!7485740 (= tp!2171942 e!4464675)))

(declare-fun b!7486050 () Bool)

(declare-fun tp!2171999 () Bool)

(declare-fun tp!2172002 () Bool)

(assert (=> b!7486050 (= e!4464675 (and tp!2171999 tp!2172002))))

(declare-fun b!7486049 () Bool)

(assert (=> b!7486049 (= e!4464675 tp_is_empty!49535)))

(declare-fun b!7486051 () Bool)

(declare-fun tp!2171998 () Bool)

(assert (=> b!7486051 (= e!4464675 tp!2171998)))

(assert (= (and b!7485740 ((_ is ElementMatch!19623) (regOne!39759 r1!5845))) b!7486049))

(assert (= (and b!7485740 ((_ is Concat!28468) (regOne!39759 r1!5845))) b!7486050))

(assert (= (and b!7485740 ((_ is Star!19623) (regOne!39759 r1!5845))) b!7486051))

(assert (= (and b!7485740 ((_ is Union!19623) (regOne!39759 r1!5845))) b!7486052))

(declare-fun b!7486056 () Bool)

(declare-fun e!4464676 () Bool)

(declare-fun tp!2172005 () Bool)

(declare-fun tp!2172006 () Bool)

(assert (=> b!7486056 (= e!4464676 (and tp!2172005 tp!2172006))))

(assert (=> b!7485740 (= tp!2171938 e!4464676)))

(declare-fun b!7486054 () Bool)

(declare-fun tp!2172004 () Bool)

(declare-fun tp!2172007 () Bool)

(assert (=> b!7486054 (= e!4464676 (and tp!2172004 tp!2172007))))

(declare-fun b!7486053 () Bool)

(assert (=> b!7486053 (= e!4464676 tp_is_empty!49535)))

(declare-fun b!7486055 () Bool)

(declare-fun tp!2172003 () Bool)

(assert (=> b!7486055 (= e!4464676 tp!2172003)))

(assert (= (and b!7485740 ((_ is ElementMatch!19623) (regTwo!39759 r1!5845))) b!7486053))

(assert (= (and b!7485740 ((_ is Concat!28468) (regTwo!39759 r1!5845))) b!7486054))

(assert (= (and b!7485740 ((_ is Star!19623) (regTwo!39759 r1!5845))) b!7486055))

(assert (= (and b!7485740 ((_ is Union!19623) (regTwo!39759 r1!5845))) b!7486056))

(declare-fun b!7486060 () Bool)

(declare-fun e!4464677 () Bool)

(declare-fun tp!2172010 () Bool)

(declare-fun tp!2172011 () Bool)

(assert (=> b!7486060 (= e!4464677 (and tp!2172010 tp!2172011))))

(assert (=> b!7485745 (= tp!2171947 e!4464677)))

(declare-fun b!7486058 () Bool)

(declare-fun tp!2172009 () Bool)

(declare-fun tp!2172012 () Bool)

(assert (=> b!7486058 (= e!4464677 (and tp!2172009 tp!2172012))))

(declare-fun b!7486057 () Bool)

(assert (=> b!7486057 (= e!4464677 tp_is_empty!49535)))

(declare-fun b!7486059 () Bool)

(declare-fun tp!2172008 () Bool)

(assert (=> b!7486059 (= e!4464677 tp!2172008)))

(assert (= (and b!7485745 ((_ is ElementMatch!19623) (regOne!39759 rTail!78))) b!7486057))

(assert (= (and b!7485745 ((_ is Concat!28468) (regOne!39759 rTail!78))) b!7486058))

(assert (= (and b!7485745 ((_ is Star!19623) (regOne!39759 rTail!78))) b!7486059))

(assert (= (and b!7485745 ((_ is Union!19623) (regOne!39759 rTail!78))) b!7486060))

(declare-fun b!7486064 () Bool)

(declare-fun e!4464678 () Bool)

(declare-fun tp!2172015 () Bool)

(declare-fun tp!2172016 () Bool)

(assert (=> b!7486064 (= e!4464678 (and tp!2172015 tp!2172016))))

(assert (=> b!7485745 (= tp!2171944 e!4464678)))

(declare-fun b!7486062 () Bool)

(declare-fun tp!2172014 () Bool)

(declare-fun tp!2172017 () Bool)

(assert (=> b!7486062 (= e!4464678 (and tp!2172014 tp!2172017))))

(declare-fun b!7486061 () Bool)

(assert (=> b!7486061 (= e!4464678 tp_is_empty!49535)))

(declare-fun b!7486063 () Bool)

(declare-fun tp!2172013 () Bool)

(assert (=> b!7486063 (= e!4464678 tp!2172013)))

(assert (= (and b!7485745 ((_ is ElementMatch!19623) (regTwo!39759 rTail!78))) b!7486061))

(assert (= (and b!7485745 ((_ is Concat!28468) (regTwo!39759 rTail!78))) b!7486062))

(assert (= (and b!7485745 ((_ is Star!19623) (regTwo!39759 rTail!78))) b!7486063))

(assert (= (and b!7485745 ((_ is Union!19623) (regTwo!39759 rTail!78))) b!7486064))

(declare-fun b!7486068 () Bool)

(declare-fun e!4464679 () Bool)

(declare-fun tp!2172020 () Bool)

(declare-fun tp!2172021 () Bool)

(assert (=> b!7486068 (= e!4464679 (and tp!2172020 tp!2172021))))

(assert (=> b!7485744 (= tp!2171949 e!4464679)))

(declare-fun b!7486066 () Bool)

(declare-fun tp!2172019 () Bool)

(declare-fun tp!2172022 () Bool)

(assert (=> b!7486066 (= e!4464679 (and tp!2172019 tp!2172022))))

(declare-fun b!7486065 () Bool)

(assert (=> b!7486065 (= e!4464679 tp_is_empty!49535)))

(declare-fun b!7486067 () Bool)

(declare-fun tp!2172018 () Bool)

(assert (=> b!7486067 (= e!4464679 tp!2172018)))

(assert (= (and b!7485744 ((_ is ElementMatch!19623) (reg!19952 rTail!78))) b!7486065))

(assert (= (and b!7485744 ((_ is Concat!28468) (reg!19952 rTail!78))) b!7486066))

(assert (= (and b!7485744 ((_ is Star!19623) (reg!19952 rTail!78))) b!7486067))

(assert (= (and b!7485744 ((_ is Union!19623) (reg!19952 rTail!78))) b!7486068))

(declare-fun b!7486072 () Bool)

(declare-fun e!4464680 () Bool)

(declare-fun tp!2172025 () Bool)

(declare-fun tp!2172026 () Bool)

(assert (=> b!7486072 (= e!4464680 (and tp!2172025 tp!2172026))))

(assert (=> b!7485749 (= tp!2171948 e!4464680)))

(declare-fun b!7486070 () Bool)

(declare-fun tp!2172024 () Bool)

(declare-fun tp!2172027 () Bool)

(assert (=> b!7486070 (= e!4464680 (and tp!2172024 tp!2172027))))

(declare-fun b!7486069 () Bool)

(assert (=> b!7486069 (= e!4464680 tp_is_empty!49535)))

(declare-fun b!7486071 () Bool)

(declare-fun tp!2172023 () Bool)

(assert (=> b!7486071 (= e!4464680 tp!2172023)))

(assert (= (and b!7485749 ((_ is ElementMatch!19623) (regOne!39758 r2!5783))) b!7486069))

(assert (= (and b!7485749 ((_ is Concat!28468) (regOne!39758 r2!5783))) b!7486070))

(assert (= (and b!7485749 ((_ is Star!19623) (regOne!39758 r2!5783))) b!7486071))

(assert (= (and b!7485749 ((_ is Union!19623) (regOne!39758 r2!5783))) b!7486072))

(declare-fun b!7486076 () Bool)

(declare-fun e!4464681 () Bool)

(declare-fun tp!2172030 () Bool)

(declare-fun tp!2172031 () Bool)

(assert (=> b!7486076 (= e!4464681 (and tp!2172030 tp!2172031))))

(assert (=> b!7485749 (= tp!2171935 e!4464681)))

(declare-fun b!7486074 () Bool)

(declare-fun tp!2172029 () Bool)

(declare-fun tp!2172032 () Bool)

(assert (=> b!7486074 (= e!4464681 (and tp!2172029 tp!2172032))))

(declare-fun b!7486073 () Bool)

(assert (=> b!7486073 (= e!4464681 tp_is_empty!49535)))

(declare-fun b!7486075 () Bool)

(declare-fun tp!2172028 () Bool)

(assert (=> b!7486075 (= e!4464681 tp!2172028)))

(assert (= (and b!7485749 ((_ is ElementMatch!19623) (regTwo!39758 r2!5783))) b!7486073))

(assert (= (and b!7485749 ((_ is Concat!28468) (regTwo!39758 r2!5783))) b!7486074))

(assert (= (and b!7485749 ((_ is Star!19623) (regTwo!39758 r2!5783))) b!7486075))

(assert (= (and b!7485749 ((_ is Union!19623) (regTwo!39758 r2!5783))) b!7486076))

(declare-fun b!7486080 () Bool)

(declare-fun e!4464682 () Bool)

(declare-fun tp!2172035 () Bool)

(declare-fun tp!2172036 () Bool)

(assert (=> b!7486080 (= e!4464682 (and tp!2172035 tp!2172036))))

(assert (=> b!7485739 (= tp!2171934 e!4464682)))

(declare-fun b!7486078 () Bool)

(declare-fun tp!2172034 () Bool)

(declare-fun tp!2172037 () Bool)

(assert (=> b!7486078 (= e!4464682 (and tp!2172034 tp!2172037))))

(declare-fun b!7486077 () Bool)

(assert (=> b!7486077 (= e!4464682 tp_is_empty!49535)))

(declare-fun b!7486079 () Bool)

(declare-fun tp!2172033 () Bool)

(assert (=> b!7486079 (= e!4464682 tp!2172033)))

(assert (= (and b!7485739 ((_ is ElementMatch!19623) (reg!19952 r1!5845))) b!7486077))

(assert (= (and b!7485739 ((_ is Concat!28468) (reg!19952 r1!5845))) b!7486078))

(assert (= (and b!7485739 ((_ is Star!19623) (reg!19952 r1!5845))) b!7486079))

(assert (= (and b!7485739 ((_ is Union!19623) (reg!19952 r1!5845))) b!7486080))

(check-sat (not b!7486026) (not bm!687178) (not b!7486059) (not b!7485975) (not b!7486048) (not b!7486076) (not b!7485988) (not b!7485997) (not b!7486031) (not bm!687197) (not b!7485848) (not b!7486075) (not b!7486043) (not b!7485981) (not b!7485772) (not b!7486038) (not b!7486068) (not b!7486023) (not b!7486052) (not b!7485843) (not b!7486078) (not b!7486051) (not bm!687196) (not b!7486056) (not bm!687200) (not b!7486030) (not b!7486017) (not b!7486027) (not bm!687168) (not b!7486072) (not b!7486037) tp_is_empty!49535 (not b!7486064) (not b!7485836) (not b!7486022) (not b!7486025) (not b!7486066) (not d!2300715) (not b!7486074) (not bm!687164) (not b!7486070) (not b!7486054) (not b!7486080) (not b!7486067) (not bm!687195) (not b!7485849) (not b!7486033) (not b!7486019) (not b!7486055) (not b!7486029) (not b!7486071) (not bm!687198) (not b!7485841) (not b!7486060) (not b!7485781) (not b!7486079) (not b!7486063) (not b!7486039) (not b!7486042) (not b!7486062) (not b!7486034) (not b!7486058) (not b!7486035) (not b!7485840) (not b!7486021) (not b!7486041) (not bm!687165) (not b!7486050) (not bm!687167) (not bm!687201) (not b!7486018) (not d!2300727))
(check-sat)
(get-model)

(declare-fun b!7486190 () Bool)

(declare-fun e!4464727 () Bool)

(declare-fun e!4464723 () Bool)

(assert (=> b!7486190 (= e!4464727 e!4464723)))

(declare-fun res!3003243 () Bool)

(assert (=> b!7486190 (= res!3003243 (not (nullable!8560 (reg!19952 (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))))))

(assert (=> b!7486190 (=> (not res!3003243) (not e!4464723))))

(declare-fun c!1382520 () Bool)

(declare-fun call!687219 () Bool)

(declare-fun bm!687212 () Bool)

(declare-fun c!1382519 () Bool)

(assert (=> bm!687212 (= call!687219 (validRegex!10137 (ite c!1382520 (reg!19952 (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))) (ite c!1382519 (regOne!39759 (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))) (regOne!39758 (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))))))))

(declare-fun b!7486191 () Bool)

(declare-fun res!3003240 () Bool)

(declare-fun e!4464721 () Bool)

(assert (=> b!7486191 (=> res!3003240 e!4464721)))

(assert (=> b!7486191 (= res!3003240 (not ((_ is Concat!28468) (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))))))

(declare-fun e!4464726 () Bool)

(assert (=> b!7486191 (= e!4464726 e!4464721)))

(declare-fun b!7486192 () Bool)

(assert (=> b!7486192 (= e!4464723 call!687219)))

(declare-fun b!7486193 () Bool)

(declare-fun res!3003239 () Bool)

(declare-fun e!4464724 () Bool)

(assert (=> b!7486193 (=> (not res!3003239) (not e!4464724))))

(declare-fun call!687217 () Bool)

(assert (=> b!7486193 (= res!3003239 call!687217)))

(assert (=> b!7486193 (= e!4464726 e!4464724)))

(declare-fun call!687218 () Bool)

(declare-fun bm!687213 () Bool)

(assert (=> bm!687213 (= call!687218 (validRegex!10137 (ite c!1382519 (regTwo!39759 (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))) (regTwo!39758 (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))))))

(declare-fun bm!687214 () Bool)

(assert (=> bm!687214 (= call!687217 call!687219)))

(declare-fun b!7486194 () Bool)

(declare-fun e!4464725 () Bool)

(assert (=> b!7486194 (= e!4464721 e!4464725)))

(declare-fun res!3003241 () Bool)

(assert (=> b!7486194 (=> (not res!3003241) (not e!4464725))))

(assert (=> b!7486194 (= res!3003241 call!687217)))

(declare-fun b!7486195 () Bool)

(assert (=> b!7486195 (= e!4464725 call!687218)))

(declare-fun b!7486196 () Bool)

(assert (=> b!7486196 (= e!4464727 e!4464726)))

(assert (=> b!7486196 (= c!1382519 ((_ is Union!19623) (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))))

(declare-fun d!2300737 () Bool)

(declare-fun res!3003242 () Bool)

(declare-fun e!4464722 () Bool)

(assert (=> d!2300737 (=> res!3003242 e!4464722)))

(assert (=> d!2300737 (= res!3003242 ((_ is ElementMatch!19623) (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))))

(assert (=> d!2300737 (= (validRegex!10137 (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))) e!4464722)))

(declare-fun b!7486197 () Bool)

(assert (=> b!7486197 (= e!4464724 call!687218)))

(declare-fun b!7486198 () Bool)

(assert (=> b!7486198 (= e!4464722 e!4464727)))

(assert (=> b!7486198 (= c!1382520 ((_ is Star!19623) (ite c!1382460 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (ite c!1382459 (regOne!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regOne!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))))

(assert (= (and d!2300737 (not res!3003242)) b!7486198))

(assert (= (and b!7486198 c!1382520) b!7486190))

(assert (= (and b!7486198 (not c!1382520)) b!7486196))

(assert (= (and b!7486190 res!3003243) b!7486192))

(assert (= (and b!7486196 c!1382519) b!7486193))

(assert (= (and b!7486196 (not c!1382519)) b!7486191))

(assert (= (and b!7486193 res!3003239) b!7486197))

(assert (= (and b!7486191 (not res!3003240)) b!7486194))

(assert (= (and b!7486194 res!3003241) b!7486195))

(assert (= (or b!7486197 b!7486195) bm!687213))

(assert (= (or b!7486193 b!7486194) bm!687214))

(assert (= (or b!7486192 bm!687214) bm!687212))

(declare-fun m!8075480 () Bool)

(assert (=> b!7486190 m!8075480))

(declare-fun m!8075482 () Bool)

(assert (=> bm!687212 m!8075482))

(declare-fun m!8075484 () Bool)

(assert (=> bm!687213 m!8075484))

(assert (=> bm!687167 d!2300737))

(assert (=> d!2300727 d!2300715))

(assert (=> d!2300727 d!2300717))

(declare-fun d!2300739 () Bool)

(assert (=> d!2300739 (= (matchR!9385 lt!2628882 s!13591) (matchRSpec!4300 lt!2628882 s!13591))))

(assert (=> d!2300739 true))

(declare-fun _$88!5783 () Unit!166077)

(assert (=> d!2300739 (= (choose!57866 lt!2628882 s!13591) _$88!5783)))

(declare-fun bs!1934326 () Bool)

(assert (= bs!1934326 d!2300739))

(assert (=> bs!1934326 m!8075372))

(assert (=> bs!1934326 m!8075374))

(assert (=> d!2300727 d!2300739))

(declare-fun b!7486199 () Bool)

(declare-fun e!4464734 () Bool)

(declare-fun e!4464730 () Bool)

(assert (=> b!7486199 (= e!4464734 e!4464730)))

(declare-fun res!3003248 () Bool)

(assert (=> b!7486199 (= res!3003248 (not (nullable!8560 (reg!19952 lt!2628882))))))

(assert (=> b!7486199 (=> (not res!3003248) (not e!4464730))))

(declare-fun bm!687215 () Bool)

(declare-fun c!1382521 () Bool)

(declare-fun c!1382522 () Bool)

(declare-fun call!687222 () Bool)

(assert (=> bm!687215 (= call!687222 (validRegex!10137 (ite c!1382522 (reg!19952 lt!2628882) (ite c!1382521 (regOne!39759 lt!2628882) (regOne!39758 lt!2628882)))))))

(declare-fun b!7486200 () Bool)

(declare-fun res!3003245 () Bool)

(declare-fun e!4464728 () Bool)

(assert (=> b!7486200 (=> res!3003245 e!4464728)))

(assert (=> b!7486200 (= res!3003245 (not ((_ is Concat!28468) lt!2628882)))))

(declare-fun e!4464733 () Bool)

(assert (=> b!7486200 (= e!4464733 e!4464728)))

(declare-fun b!7486201 () Bool)

(assert (=> b!7486201 (= e!4464730 call!687222)))

(declare-fun b!7486202 () Bool)

(declare-fun res!3003244 () Bool)

(declare-fun e!4464731 () Bool)

(assert (=> b!7486202 (=> (not res!3003244) (not e!4464731))))

(declare-fun call!687220 () Bool)

(assert (=> b!7486202 (= res!3003244 call!687220)))

(assert (=> b!7486202 (= e!4464733 e!4464731)))

(declare-fun bm!687216 () Bool)

(declare-fun call!687221 () Bool)

(assert (=> bm!687216 (= call!687221 (validRegex!10137 (ite c!1382521 (regTwo!39759 lt!2628882) (regTwo!39758 lt!2628882))))))

(declare-fun bm!687217 () Bool)

(assert (=> bm!687217 (= call!687220 call!687222)))

(declare-fun b!7486203 () Bool)

(declare-fun e!4464732 () Bool)

(assert (=> b!7486203 (= e!4464728 e!4464732)))

(declare-fun res!3003246 () Bool)

(assert (=> b!7486203 (=> (not res!3003246) (not e!4464732))))

(assert (=> b!7486203 (= res!3003246 call!687220)))

(declare-fun b!7486204 () Bool)

(assert (=> b!7486204 (= e!4464732 call!687221)))

(declare-fun b!7486205 () Bool)

(assert (=> b!7486205 (= e!4464734 e!4464733)))

(assert (=> b!7486205 (= c!1382521 ((_ is Union!19623) lt!2628882))))

(declare-fun d!2300741 () Bool)

(declare-fun res!3003247 () Bool)

(declare-fun e!4464729 () Bool)

(assert (=> d!2300741 (=> res!3003247 e!4464729)))

(assert (=> d!2300741 (= res!3003247 ((_ is ElementMatch!19623) lt!2628882))))

(assert (=> d!2300741 (= (validRegex!10137 lt!2628882) e!4464729)))

(declare-fun b!7486206 () Bool)

(assert (=> b!7486206 (= e!4464731 call!687221)))

(declare-fun b!7486207 () Bool)

(assert (=> b!7486207 (= e!4464729 e!4464734)))

(assert (=> b!7486207 (= c!1382522 ((_ is Star!19623) lt!2628882))))

(assert (= (and d!2300741 (not res!3003247)) b!7486207))

(assert (= (and b!7486207 c!1382522) b!7486199))

(assert (= (and b!7486207 (not c!1382522)) b!7486205))

(assert (= (and b!7486199 res!3003248) b!7486201))

(assert (= (and b!7486205 c!1382521) b!7486202))

(assert (= (and b!7486205 (not c!1382521)) b!7486200))

(assert (= (and b!7486202 res!3003244) b!7486206))

(assert (= (and b!7486200 (not res!3003245)) b!7486203))

(assert (= (and b!7486203 res!3003246) b!7486204))

(assert (= (or b!7486206 b!7486204) bm!687216))

(assert (= (or b!7486202 b!7486203) bm!687217))

(assert (= (or b!7486201 bm!687217) bm!687215))

(declare-fun m!8075486 () Bool)

(assert (=> b!7486199 m!8075486))

(declare-fun m!8075488 () Bool)

(assert (=> bm!687215 m!8075488))

(declare-fun m!8075490 () Bool)

(assert (=> bm!687216 m!8075490))

(assert (=> d!2300727 d!2300741))

(declare-fun d!2300743 () Bool)

(declare-fun nullableFct!3429 (Regex!19623) Bool)

(assert (=> d!2300743 (= (nullable!8560 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))) (nullableFct!3429 (reg!19952 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))

(declare-fun bs!1934327 () Bool)

(assert (= bs!1934327 d!2300743))

(declare-fun m!8075492 () Bool)

(assert (=> bs!1934327 m!8075492))

(assert (=> b!7485781 d!2300743))

(declare-fun d!2300745 () Bool)

(assert (=> d!2300745 (= (isEmpty!41231 s!13591) ((_ is Nil!72213) s!13591))))

(assert (=> d!2300715 d!2300745))

(assert (=> d!2300715 d!2300741))

(declare-fun d!2300747 () Bool)

(assert (=> d!2300747 (= (nullable!8560 (reg!19952 rTail!78)) (nullableFct!3429 (reg!19952 rTail!78)))))

(declare-fun bs!1934328 () Bool)

(assert (= bs!1934328 d!2300747))

(declare-fun m!8075494 () Bool)

(assert (=> bs!1934328 m!8075494))

(assert (=> b!7485997 d!2300747))

(declare-fun b!7486208 () Bool)

(declare-fun e!4464741 () Bool)

(declare-fun e!4464737 () Bool)

(assert (=> b!7486208 (= e!4464741 e!4464737)))

(declare-fun res!3003253 () Bool)

(assert (=> b!7486208 (= res!3003253 (not (nullable!8560 (reg!19952 (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845)))))))))

(assert (=> b!7486208 (=> (not res!3003253) (not e!4464737))))

(declare-fun call!687225 () Bool)

(declare-fun c!1382524 () Bool)

(declare-fun c!1382523 () Bool)

(declare-fun bm!687218 () Bool)

(assert (=> bm!687218 (= call!687225 (validRegex!10137 (ite c!1382524 (reg!19952 (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845)))) (ite c!1382523 (regOne!39759 (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845)))) (regOne!39758 (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845))))))))))

(declare-fun b!7486209 () Bool)

(declare-fun res!3003250 () Bool)

(declare-fun e!4464735 () Bool)

(assert (=> b!7486209 (=> res!3003250 e!4464735)))

(assert (=> b!7486209 (= res!3003250 (not ((_ is Concat!28468) (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845))))))))

(declare-fun e!4464740 () Bool)

(assert (=> b!7486209 (= e!4464740 e!4464735)))

(declare-fun b!7486210 () Bool)

(assert (=> b!7486210 (= e!4464737 call!687225)))

(declare-fun b!7486211 () Bool)

(declare-fun res!3003249 () Bool)

(declare-fun e!4464738 () Bool)

(assert (=> b!7486211 (=> (not res!3003249) (not e!4464738))))

(declare-fun call!687223 () Bool)

(assert (=> b!7486211 (= res!3003249 call!687223)))

(assert (=> b!7486211 (= e!4464740 e!4464738)))

(declare-fun call!687224 () Bool)

(declare-fun bm!687219 () Bool)

(assert (=> bm!687219 (= call!687224 (validRegex!10137 (ite c!1382523 (regTwo!39759 (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845)))) (regTwo!39758 (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845)))))))))

(declare-fun bm!687220 () Bool)

(assert (=> bm!687220 (= call!687223 call!687225)))

(declare-fun b!7486212 () Bool)

(declare-fun e!4464739 () Bool)

(assert (=> b!7486212 (= e!4464735 e!4464739)))

(declare-fun res!3003251 () Bool)

(assert (=> b!7486212 (=> (not res!3003251) (not e!4464739))))

(assert (=> b!7486212 (= res!3003251 call!687223)))

(declare-fun b!7486213 () Bool)

(assert (=> b!7486213 (= e!4464739 call!687224)))

(declare-fun b!7486214 () Bool)

(assert (=> b!7486214 (= e!4464741 e!4464740)))

(assert (=> b!7486214 (= c!1382523 ((_ is Union!19623) (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845)))))))

(declare-fun d!2300749 () Bool)

(declare-fun res!3003252 () Bool)

(declare-fun e!4464736 () Bool)

(assert (=> d!2300749 (=> res!3003252 e!4464736)))

(assert (=> d!2300749 (= res!3003252 ((_ is ElementMatch!19623) (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845)))))))

(assert (=> d!2300749 (= (validRegex!10137 (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845)))) e!4464736)))

(declare-fun b!7486215 () Bool)

(assert (=> b!7486215 (= e!4464738 call!687224)))

(declare-fun b!7486216 () Bool)

(assert (=> b!7486216 (= e!4464736 e!4464741)))

(assert (=> b!7486216 (= c!1382524 ((_ is Star!19623) (ite c!1382458 (reg!19952 r1!5845) (ite c!1382457 (regOne!39759 r1!5845) (regOne!39758 r1!5845)))))))

(assert (= (and d!2300749 (not res!3003252)) b!7486216))

(assert (= (and b!7486216 c!1382524) b!7486208))

(assert (= (and b!7486216 (not c!1382524)) b!7486214))

(assert (= (and b!7486208 res!3003253) b!7486210))

(assert (= (and b!7486214 c!1382523) b!7486211))

(assert (= (and b!7486214 (not c!1382523)) b!7486209))

(assert (= (and b!7486211 res!3003249) b!7486215))

(assert (= (and b!7486209 (not res!3003250)) b!7486212))

(assert (= (and b!7486212 res!3003251) b!7486213))

(assert (= (or b!7486215 b!7486213) bm!687219))

(assert (= (or b!7486211 b!7486212) bm!687220))

(assert (= (or b!7486210 bm!687220) bm!687218))

(declare-fun m!8075496 () Bool)

(assert (=> b!7486208 m!8075496))

(declare-fun m!8075498 () Bool)

(assert (=> bm!687218 m!8075498))

(declare-fun m!8075500 () Bool)

(assert (=> bm!687219 m!8075500))

(assert (=> bm!687164 d!2300749))

(declare-fun d!2300751 () Bool)

(assert (=> d!2300751 (= (isEmpty!41231 (tail!14926 s!13591)) ((_ is Nil!72213) (tail!14926 s!13591)))))

(assert (=> b!7485836 d!2300751))

(declare-fun d!2300753 () Bool)

(assert (=> d!2300753 (= (tail!14926 s!13591) (t!386906 s!13591))))

(assert (=> b!7485836 d!2300753))

(declare-fun b!7486217 () Bool)

(declare-fun e!4464748 () Bool)

(declare-fun e!4464744 () Bool)

(assert (=> b!7486217 (= e!4464748 e!4464744)))

(declare-fun res!3003258 () Bool)

(assert (=> b!7486217 (= res!3003258 (not (nullable!8560 (reg!19952 (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))))))

(assert (=> b!7486217 (=> (not res!3003258) (not e!4464744))))

(declare-fun c!1382526 () Bool)

(declare-fun call!687228 () Bool)

(declare-fun bm!687221 () Bool)

(declare-fun c!1382525 () Bool)

(assert (=> bm!687221 (= call!687228 (validRegex!10137 (ite c!1382526 (reg!19952 (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))) (ite c!1382525 (regOne!39759 (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))) (regOne!39758 (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))))))

(declare-fun b!7486218 () Bool)

(declare-fun res!3003255 () Bool)

(declare-fun e!4464742 () Bool)

(assert (=> b!7486218 (=> res!3003255 e!4464742)))

(assert (=> b!7486218 (= res!3003255 (not ((_ is Concat!28468) (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78)))))))))

(declare-fun e!4464747 () Bool)

(assert (=> b!7486218 (= e!4464747 e!4464742)))

(declare-fun b!7486219 () Bool)

(assert (=> b!7486219 (= e!4464744 call!687228)))

(declare-fun b!7486220 () Bool)

(declare-fun res!3003254 () Bool)

(declare-fun e!4464745 () Bool)

(assert (=> b!7486220 (=> (not res!3003254) (not e!4464745))))

(declare-fun call!687226 () Bool)

(assert (=> b!7486220 (= res!3003254 call!687226)))

(assert (=> b!7486220 (= e!4464747 e!4464745)))

(declare-fun bm!687222 () Bool)

(declare-fun call!687227 () Bool)

(assert (=> bm!687222 (= call!687227 (validRegex!10137 (ite c!1382525 (regTwo!39759 (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))) (regTwo!39758 (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))))))

(declare-fun bm!687223 () Bool)

(assert (=> bm!687223 (= call!687226 call!687228)))

(declare-fun b!7486221 () Bool)

(declare-fun e!4464746 () Bool)

(assert (=> b!7486221 (= e!4464742 e!4464746)))

(declare-fun res!3003256 () Bool)

(assert (=> b!7486221 (=> (not res!3003256) (not e!4464746))))

(assert (=> b!7486221 (= res!3003256 call!687226)))

(declare-fun b!7486222 () Bool)

(assert (=> b!7486222 (= e!4464746 call!687227)))

(declare-fun b!7486223 () Bool)

(assert (=> b!7486223 (= e!4464748 e!4464747)))

(assert (=> b!7486223 (= c!1382525 ((_ is Union!19623) (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))))

(declare-fun d!2300755 () Bool)

(declare-fun res!3003257 () Bool)

(declare-fun e!4464743 () Bool)

(assert (=> d!2300755 (=> res!3003257 e!4464743)))

(assert (=> d!2300755 (= res!3003257 ((_ is ElementMatch!19623) (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))))

(assert (=> d!2300755 (= (validRegex!10137 (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))) e!4464743)))

(declare-fun b!7486224 () Bool)

(assert (=> b!7486224 (= e!4464745 call!687227)))

(declare-fun b!7486225 () Bool)

(assert (=> b!7486225 (= e!4464743 e!4464748)))

(assert (=> b!7486225 (= c!1382526 ((_ is Star!19623) (ite c!1382459 (regTwo!39759 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))) (regTwo!39758 (Union!19623 (Concat!28468 r1!5845 rTail!78) (Concat!28468 r2!5783 rTail!78))))))))

(assert (= (and d!2300755 (not res!3003257)) b!7486225))

(assert (= (and b!7486225 c!1382526) b!7486217))

(assert (= (and b!7486225 (not c!1382526)) b!7486223))

(assert (= (and b!7486217 res!3003258) b!7486219))

(assert (= (and b!7486223 c!1382525) b!7486220))

(assert (= (and b!7486223 (not c!1382525)) b!7486218))

(assert (= (and b!7486220 res!3003254) b!7486224))

(assert (= (and b!7486218 (not res!3003255)) b!7486221))

(assert (= (and b!7486221 res!3003256) b!7486222))

(assert (= (or b!7486224 b!7486222) bm!687222))

(assert (= (or b!7486220 b!7486221) bm!687223))

(assert (= (or b!7486219 bm!687223) bm!687221))

(declare-fun m!8075502 () Bool)

(assert (=> b!7486217 m!8075502))

(declare-fun m!8075504 () Bool)

(assert (=> bm!687221 m!8075504))

(declare-fun m!8075506 () Bool)

(assert (=> bm!687222 m!8075506))

(assert (=> bm!687168 d!2300755))

(assert (=> bm!687195 d!2300745))

(declare-fun b!7486226 () Bool)

(declare-fun e!4464755 () Bool)

(declare-fun e!4464751 () Bool)

(assert (=> b!7486226 (= e!4464755 e!4464751)))

(declare-fun res!3003263 () Bool)

(assert (=> b!7486226 (= res!3003263 (not (nullable!8560 (reg!19952 (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78)))))))))

(assert (=> b!7486226 (=> (not res!3003263) (not e!4464751))))

(declare-fun c!1382527 () Bool)

(declare-fun call!687231 () Bool)

(declare-fun bm!687224 () Bool)

(declare-fun c!1382528 () Bool)

(assert (=> bm!687224 (= call!687231 (validRegex!10137 (ite c!1382528 (reg!19952 (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78)))) (ite c!1382527 (regOne!39759 (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78)))) (regOne!39758 (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78))))))))))

(declare-fun b!7486227 () Bool)

(declare-fun res!3003260 () Bool)

(declare-fun e!4464749 () Bool)

(assert (=> b!7486227 (=> res!3003260 e!4464749)))

(assert (=> b!7486227 (= res!3003260 (not ((_ is Concat!28468) (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78))))))))

(declare-fun e!4464754 () Bool)

(assert (=> b!7486227 (= e!4464754 e!4464749)))

(declare-fun b!7486228 () Bool)

(assert (=> b!7486228 (= e!4464751 call!687231)))

(declare-fun b!7486229 () Bool)

(declare-fun res!3003259 () Bool)

(declare-fun e!4464752 () Bool)

(assert (=> b!7486229 (=> (not res!3003259) (not e!4464752))))

(declare-fun call!687229 () Bool)

(assert (=> b!7486229 (= res!3003259 call!687229)))

(assert (=> b!7486229 (= e!4464754 e!4464752)))

(declare-fun call!687230 () Bool)

(declare-fun bm!687225 () Bool)

(assert (=> bm!687225 (= call!687230 (validRegex!10137 (ite c!1382527 (regTwo!39759 (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78)))) (regTwo!39758 (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78)))))))))

(declare-fun bm!687226 () Bool)

(assert (=> bm!687226 (= call!687229 call!687231)))

(declare-fun b!7486230 () Bool)

(declare-fun e!4464753 () Bool)

(assert (=> b!7486230 (= e!4464749 e!4464753)))

(declare-fun res!3003261 () Bool)

(assert (=> b!7486230 (=> (not res!3003261) (not e!4464753))))

(assert (=> b!7486230 (= res!3003261 call!687229)))

(declare-fun b!7486231 () Bool)

(assert (=> b!7486231 (= e!4464753 call!687230)))

(declare-fun b!7486232 () Bool)

(assert (=> b!7486232 (= e!4464755 e!4464754)))

(assert (=> b!7486232 (= c!1382527 ((_ is Union!19623) (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78)))))))

(declare-fun d!2300757 () Bool)

(declare-fun res!3003262 () Bool)

(declare-fun e!4464750 () Bool)

(assert (=> d!2300757 (=> res!3003262 e!4464750)))

(assert (=> d!2300757 (= res!3003262 ((_ is ElementMatch!19623) (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78)))))))

(assert (=> d!2300757 (= (validRegex!10137 (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78)))) e!4464750)))

(declare-fun b!7486233 () Bool)

(assert (=> b!7486233 (= e!4464752 call!687230)))

(declare-fun b!7486234 () Bool)

(assert (=> b!7486234 (= e!4464750 e!4464755)))

(assert (=> b!7486234 (= c!1382528 ((_ is Star!19623) (ite c!1382512 (reg!19952 rTail!78) (ite c!1382511 (regOne!39759 rTail!78) (regOne!39758 rTail!78)))))))

(assert (= (and d!2300757 (not res!3003262)) b!7486234))

(assert (= (and b!7486234 c!1382528) b!7486226))

(assert (= (and b!7486234 (not c!1382528)) b!7486232))

(assert (= (and b!7486226 res!3003263) b!7486228))

(assert (= (and b!7486232 c!1382527) b!7486229))

(assert (= (and b!7486232 (not c!1382527)) b!7486227))

(assert (= (and b!7486229 res!3003259) b!7486233))

(assert (= (and b!7486227 (not res!3003260)) b!7486230))

(assert (= (and b!7486230 res!3003261) b!7486231))

(assert (= (or b!7486233 b!7486231) bm!687225))

(assert (= (or b!7486229 b!7486230) bm!687226))

(assert (= (or b!7486228 bm!687226) bm!687224))

(declare-fun m!8075508 () Bool)

(assert (=> b!7486226 m!8075508))

(declare-fun m!8075510 () Bool)

(assert (=> bm!687224 m!8075510))

(declare-fun m!8075512 () Bool)

(assert (=> bm!687225 m!8075512))

(assert (=> bm!687200 d!2300757))

(declare-fun d!2300759 () Bool)

(assert (=> d!2300759 (= (nullable!8560 (reg!19952 r1!5845)) (nullableFct!3429 (reg!19952 r1!5845)))))

(declare-fun bs!1934329 () Bool)

(assert (= bs!1934329 d!2300759))

(declare-fun m!8075514 () Bool)

(assert (=> bs!1934329 m!8075514))

(assert (=> b!7485772 d!2300759))

(declare-fun b!7486235 () Bool)

(declare-fun e!4464762 () Bool)

(declare-fun e!4464758 () Bool)

(assert (=> b!7486235 (= e!4464762 e!4464758)))

(declare-fun res!3003268 () Bool)

(assert (=> b!7486235 (= res!3003268 (not (nullable!8560 (reg!19952 (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78))))))))

(assert (=> b!7486235 (=> (not res!3003268) (not e!4464758))))

(declare-fun call!687234 () Bool)

(declare-fun bm!687227 () Bool)

(declare-fun c!1382530 () Bool)

(declare-fun c!1382529 () Bool)

(assert (=> bm!687227 (= call!687234 (validRegex!10137 (ite c!1382530 (reg!19952 (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78))) (ite c!1382529 (regOne!39759 (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78))) (regOne!39758 (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78)))))))))

(declare-fun b!7486236 () Bool)

(declare-fun res!3003265 () Bool)

(declare-fun e!4464756 () Bool)

(assert (=> b!7486236 (=> res!3003265 e!4464756)))

(assert (=> b!7486236 (= res!3003265 (not ((_ is Concat!28468) (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78)))))))

(declare-fun e!4464761 () Bool)

(assert (=> b!7486236 (= e!4464761 e!4464756)))

(declare-fun b!7486237 () Bool)

(assert (=> b!7486237 (= e!4464758 call!687234)))

(declare-fun b!7486238 () Bool)

(declare-fun res!3003264 () Bool)

(declare-fun e!4464759 () Bool)

(assert (=> b!7486238 (=> (not res!3003264) (not e!4464759))))

(declare-fun call!687232 () Bool)

(assert (=> b!7486238 (= res!3003264 call!687232)))

(assert (=> b!7486238 (= e!4464761 e!4464759)))

(declare-fun bm!687228 () Bool)

(declare-fun call!687233 () Bool)

(assert (=> bm!687228 (= call!687233 (validRegex!10137 (ite c!1382529 (regTwo!39759 (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78))) (regTwo!39758 (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78))))))))

(declare-fun bm!687229 () Bool)

(assert (=> bm!687229 (= call!687232 call!687234)))

(declare-fun b!7486239 () Bool)

(declare-fun e!4464760 () Bool)

(assert (=> b!7486239 (= e!4464756 e!4464760)))

(declare-fun res!3003266 () Bool)

(assert (=> b!7486239 (=> (not res!3003266) (not e!4464760))))

(assert (=> b!7486239 (= res!3003266 call!687232)))

(declare-fun b!7486240 () Bool)

(assert (=> b!7486240 (= e!4464760 call!687233)))

(declare-fun b!7486241 () Bool)

(assert (=> b!7486241 (= e!4464762 e!4464761)))

(assert (=> b!7486241 (= c!1382529 ((_ is Union!19623) (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78))))))

(declare-fun d!2300761 () Bool)

(declare-fun res!3003267 () Bool)

(declare-fun e!4464757 () Bool)

(assert (=> d!2300761 (=> res!3003267 e!4464757)))

(assert (=> d!2300761 (= res!3003267 ((_ is ElementMatch!19623) (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78))))))

(assert (=> d!2300761 (= (validRegex!10137 (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78))) e!4464757)))

(declare-fun b!7486242 () Bool)

(assert (=> b!7486242 (= e!4464759 call!687233)))

(declare-fun b!7486243 () Bool)

(assert (=> b!7486243 (= e!4464757 e!4464762)))

(assert (=> b!7486243 (= c!1382530 ((_ is Star!19623) (ite c!1382511 (regTwo!39759 rTail!78) (regTwo!39758 rTail!78))))))

(assert (= (and d!2300761 (not res!3003267)) b!7486243))

(assert (= (and b!7486243 c!1382530) b!7486235))

(assert (= (and b!7486243 (not c!1382530)) b!7486241))

(assert (= (and b!7486235 res!3003268) b!7486237))

(assert (= (and b!7486241 c!1382529) b!7486238))

(assert (= (and b!7486241 (not c!1382529)) b!7486236))

(assert (= (and b!7486238 res!3003264) b!7486242))

(assert (= (and b!7486236 (not res!3003265)) b!7486239))

(assert (= (and b!7486239 res!3003266) b!7486240))

(assert (= (or b!7486242 b!7486240) bm!687228))

(assert (= (or b!7486238 b!7486239) bm!687229))

(assert (= (or b!7486237 bm!687229) bm!687227))

(declare-fun m!8075516 () Bool)

(assert (=> b!7486235 m!8075516))

(declare-fun m!8075518 () Bool)

(assert (=> bm!687227 m!8075518))

(declare-fun m!8075520 () Bool)

(assert (=> bm!687228 m!8075520))

(assert (=> bm!687201 d!2300761))

(declare-fun bs!1934330 () Bool)

(declare-fun b!7486251 () Bool)

(assert (= bs!1934330 (and b!7486251 b!7485980)))

(declare-fun lambda!463896 () Int)

(assert (=> bs!1934330 (= (and (= (reg!19952 (regTwo!39759 lt!2628882)) (reg!19952 lt!2628882)) (= (regTwo!39759 lt!2628882) lt!2628882)) (= lambda!463896 lambda!463888))))

(declare-fun bs!1934331 () Bool)

(assert (= bs!1934331 (and b!7486251 b!7485974)))

(assert (=> bs!1934331 (not (= lambda!463896 lambda!463889))))

(assert (=> b!7486251 true))

(assert (=> b!7486251 true))

(declare-fun bs!1934332 () Bool)

(declare-fun b!7486245 () Bool)

(assert (= bs!1934332 (and b!7486245 b!7485980)))

(declare-fun lambda!463897 () Int)

(assert (=> bs!1934332 (not (= lambda!463897 lambda!463888))))

(declare-fun bs!1934333 () Bool)

(assert (= bs!1934333 (and b!7486245 b!7485974)))

(assert (=> bs!1934333 (= (and (= (regOne!39758 (regTwo!39759 lt!2628882)) (regOne!39758 lt!2628882)) (= (regTwo!39758 (regTwo!39759 lt!2628882)) (regTwo!39758 lt!2628882))) (= lambda!463897 lambda!463889))))

(declare-fun bs!1934334 () Bool)

(assert (= bs!1934334 (and b!7486245 b!7486251)))

(assert (=> bs!1934334 (not (= lambda!463897 lambda!463896))))

(assert (=> b!7486245 true))

(assert (=> b!7486245 true))

(declare-fun d!2300763 () Bool)

(declare-fun c!1382531 () Bool)

(assert (=> d!2300763 (= c!1382531 ((_ is EmptyExpr!19623) (regTwo!39759 lt!2628882)))))

(declare-fun e!4464764 () Bool)

(assert (=> d!2300763 (= (matchRSpec!4300 (regTwo!39759 lt!2628882) s!13591) e!4464764)))

(declare-fun bm!687230 () Bool)

(declare-fun call!687235 () Bool)

(assert (=> bm!687230 (= call!687235 (isEmpty!41231 s!13591))))

(declare-fun b!7486244 () Bool)

(declare-fun e!4464768 () Bool)

(declare-fun e!4464766 () Bool)

(assert (=> b!7486244 (= e!4464768 e!4464766)))

(declare-fun c!1382532 () Bool)

(assert (=> b!7486244 (= c!1382532 ((_ is Star!19623) (regTwo!39759 lt!2628882)))))

(declare-fun call!687236 () Bool)

(assert (=> b!7486245 (= e!4464766 call!687236)))

(declare-fun b!7486246 () Bool)

(declare-fun e!4464765 () Bool)

(assert (=> b!7486246 (= e!4464765 (matchRSpec!4300 (regTwo!39759 (regTwo!39759 lt!2628882)) s!13591))))

(declare-fun b!7486247 () Bool)

(declare-fun c!1382533 () Bool)

(assert (=> b!7486247 (= c!1382533 ((_ is ElementMatch!19623) (regTwo!39759 lt!2628882)))))

(declare-fun e!4464767 () Bool)

(declare-fun e!4464763 () Bool)

(assert (=> b!7486247 (= e!4464767 e!4464763)))

(declare-fun b!7486248 () Bool)

(declare-fun c!1382534 () Bool)

(assert (=> b!7486248 (= c!1382534 ((_ is Union!19623) (regTwo!39759 lt!2628882)))))

(assert (=> b!7486248 (= e!4464763 e!4464768)))

(declare-fun b!7486249 () Bool)

(assert (=> b!7486249 (= e!4464764 call!687235)))

(declare-fun b!7486250 () Bool)

(declare-fun res!3003270 () Bool)

(declare-fun e!4464769 () Bool)

(assert (=> b!7486250 (=> res!3003270 e!4464769)))

(assert (=> b!7486250 (= res!3003270 call!687235)))

(assert (=> b!7486250 (= e!4464766 e!4464769)))

(declare-fun bm!687231 () Bool)

(assert (=> bm!687231 (= call!687236 (Exists!4239 (ite c!1382532 lambda!463896 lambda!463897)))))

(assert (=> b!7486251 (= e!4464769 call!687236)))

(declare-fun b!7486252 () Bool)

(assert (=> b!7486252 (= e!4464768 e!4464765)))

(declare-fun res!3003269 () Bool)

(assert (=> b!7486252 (= res!3003269 (matchRSpec!4300 (regOne!39759 (regTwo!39759 lt!2628882)) s!13591))))

(assert (=> b!7486252 (=> res!3003269 e!4464765)))

(declare-fun b!7486253 () Bool)

(assert (=> b!7486253 (= e!4464763 (= s!13591 (Cons!72213 (c!1382452 (regTwo!39759 lt!2628882)) Nil!72213)))))

(declare-fun b!7486254 () Bool)

(assert (=> b!7486254 (= e!4464764 e!4464767)))

(declare-fun res!3003271 () Bool)

(assert (=> b!7486254 (= res!3003271 (not ((_ is EmptyLang!19623) (regTwo!39759 lt!2628882))))))

(assert (=> b!7486254 (=> (not res!3003271) (not e!4464767))))

(assert (= (and d!2300763 c!1382531) b!7486249))

(assert (= (and d!2300763 (not c!1382531)) b!7486254))

(assert (= (and b!7486254 res!3003271) b!7486247))

(assert (= (and b!7486247 c!1382533) b!7486253))

(assert (= (and b!7486247 (not c!1382533)) b!7486248))

(assert (= (and b!7486248 c!1382534) b!7486252))

(assert (= (and b!7486248 (not c!1382534)) b!7486244))

(assert (= (and b!7486252 (not res!3003269)) b!7486246))

(assert (= (and b!7486244 c!1382532) b!7486250))

(assert (= (and b!7486244 (not c!1382532)) b!7486245))

(assert (= (and b!7486250 (not res!3003270)) b!7486251))

(assert (= (or b!7486251 b!7486245) bm!687231))

(assert (= (or b!7486249 b!7486250) bm!687230))

(assert (=> bm!687230 m!8075400))

(declare-fun m!8075522 () Bool)

(assert (=> b!7486246 m!8075522))

(declare-fun m!8075524 () Bool)

(assert (=> bm!687231 m!8075524))

(declare-fun m!8075526 () Bool)

(assert (=> b!7486252 m!8075526))

(assert (=> b!7485975 d!2300763))

(declare-fun b!7486255 () Bool)

(declare-fun e!4464776 () Bool)

(declare-fun e!4464772 () Bool)

(assert (=> b!7486255 (= e!4464776 e!4464772)))

(declare-fun res!3003276 () Bool)

(assert (=> b!7486255 (= res!3003276 (not (nullable!8560 (reg!19952 (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845))))))))

(assert (=> b!7486255 (=> (not res!3003276) (not e!4464772))))

(declare-fun bm!687232 () Bool)

(declare-fun c!1382536 () Bool)

(declare-fun c!1382535 () Bool)

(declare-fun call!687239 () Bool)

(assert (=> bm!687232 (= call!687239 (validRegex!10137 (ite c!1382536 (reg!19952 (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845))) (ite c!1382535 (regOne!39759 (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845))) (regOne!39758 (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845)))))))))

(declare-fun b!7486256 () Bool)

(declare-fun res!3003273 () Bool)

(declare-fun e!4464770 () Bool)

(assert (=> b!7486256 (=> res!3003273 e!4464770)))

(assert (=> b!7486256 (= res!3003273 (not ((_ is Concat!28468) (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845)))))))

(declare-fun e!4464775 () Bool)

(assert (=> b!7486256 (= e!4464775 e!4464770)))

(declare-fun b!7486257 () Bool)

(assert (=> b!7486257 (= e!4464772 call!687239)))

(declare-fun b!7486258 () Bool)

(declare-fun res!3003272 () Bool)

(declare-fun e!4464773 () Bool)

(assert (=> b!7486258 (=> (not res!3003272) (not e!4464773))))

(declare-fun call!687237 () Bool)

(assert (=> b!7486258 (= res!3003272 call!687237)))

(assert (=> b!7486258 (= e!4464775 e!4464773)))

(declare-fun call!687238 () Bool)

(declare-fun bm!687233 () Bool)

(assert (=> bm!687233 (= call!687238 (validRegex!10137 (ite c!1382535 (regTwo!39759 (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845))) (regTwo!39758 (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845))))))))

(declare-fun bm!687234 () Bool)

(assert (=> bm!687234 (= call!687237 call!687239)))

(declare-fun b!7486259 () Bool)

(declare-fun e!4464774 () Bool)

(assert (=> b!7486259 (= e!4464770 e!4464774)))

(declare-fun res!3003274 () Bool)

(assert (=> b!7486259 (=> (not res!3003274) (not e!4464774))))

(assert (=> b!7486259 (= res!3003274 call!687237)))

(declare-fun b!7486260 () Bool)

(assert (=> b!7486260 (= e!4464774 call!687238)))

(declare-fun b!7486261 () Bool)

(assert (=> b!7486261 (= e!4464776 e!4464775)))

(assert (=> b!7486261 (= c!1382535 ((_ is Union!19623) (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845))))))

(declare-fun d!2300765 () Bool)

(declare-fun res!3003275 () Bool)

(declare-fun e!4464771 () Bool)

(assert (=> d!2300765 (=> res!3003275 e!4464771)))

(assert (=> d!2300765 (= res!3003275 ((_ is ElementMatch!19623) (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845))))))

(assert (=> d!2300765 (= (validRegex!10137 (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845))) e!4464771)))

(declare-fun b!7486262 () Bool)

(assert (=> b!7486262 (= e!4464773 call!687238)))

(declare-fun b!7486263 () Bool)

(assert (=> b!7486263 (= e!4464771 e!4464776)))

(assert (=> b!7486263 (= c!1382536 ((_ is Star!19623) (ite c!1382457 (regTwo!39759 r1!5845) (regTwo!39758 r1!5845))))))

(assert (= (and d!2300765 (not res!3003275)) b!7486263))

(assert (= (and b!7486263 c!1382536) b!7486255))

(assert (= (and b!7486263 (not c!1382536)) b!7486261))

(assert (= (and b!7486255 res!3003276) b!7486257))

(assert (= (and b!7486261 c!1382535) b!7486258))

(assert (= (and b!7486261 (not c!1382535)) b!7486256))

(assert (= (and b!7486258 res!3003272) b!7486262))

(assert (= (and b!7486256 (not res!3003273)) b!7486259))

(assert (= (and b!7486259 res!3003274) b!7486260))

(assert (= (or b!7486262 b!7486260) bm!687233))

(assert (= (or b!7486258 b!7486259) bm!687234))

(assert (= (or b!7486257 bm!687234) bm!687232))

(declare-fun m!8075528 () Bool)

(assert (=> b!7486255 m!8075528))

(declare-fun m!8075530 () Bool)

(assert (=> bm!687232 m!8075530))

(declare-fun m!8075532 () Bool)

(assert (=> bm!687233 m!8075532))

(assert (=> bm!687165 d!2300765))

(declare-fun d!2300767 () Bool)

(assert (=> d!2300767 (= (nullable!8560 (reg!19952 r2!5783)) (nullableFct!3429 (reg!19952 r2!5783)))))

(declare-fun bs!1934335 () Bool)

(assert (= bs!1934335 d!2300767))

(declare-fun m!8075534 () Bool)

(assert (=> bs!1934335 m!8075534))

(assert (=> b!7485988 d!2300767))

(assert (=> b!7485840 d!2300751))

(assert (=> b!7485840 d!2300753))

(declare-fun b!7486264 () Bool)

(declare-fun e!4464783 () Bool)

(declare-fun e!4464779 () Bool)

(assert (=> b!7486264 (= e!4464783 e!4464779)))

(declare-fun res!3003281 () Bool)

(assert (=> b!7486264 (= res!3003281 (not (nullable!8560 (reg!19952 (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783)))))))))

(assert (=> b!7486264 (=> (not res!3003281) (not e!4464779))))

(declare-fun c!1382537 () Bool)

(declare-fun call!687242 () Bool)

(declare-fun c!1382538 () Bool)

(declare-fun bm!687235 () Bool)

(assert (=> bm!687235 (= call!687242 (validRegex!10137 (ite c!1382538 (reg!19952 (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783)))) (ite c!1382537 (regOne!39759 (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783)))) (regOne!39758 (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783))))))))))

(declare-fun b!7486265 () Bool)

(declare-fun res!3003278 () Bool)

(declare-fun e!4464777 () Bool)

(assert (=> b!7486265 (=> res!3003278 e!4464777)))

(assert (=> b!7486265 (= res!3003278 (not ((_ is Concat!28468) (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783))))))))

(declare-fun e!4464782 () Bool)

(assert (=> b!7486265 (= e!4464782 e!4464777)))

(declare-fun b!7486266 () Bool)

(assert (=> b!7486266 (= e!4464779 call!687242)))

(declare-fun b!7486267 () Bool)

(declare-fun res!3003277 () Bool)

(declare-fun e!4464780 () Bool)

(assert (=> b!7486267 (=> (not res!3003277) (not e!4464780))))

(declare-fun call!687240 () Bool)

(assert (=> b!7486267 (= res!3003277 call!687240)))

(assert (=> b!7486267 (= e!4464782 e!4464780)))

(declare-fun bm!687236 () Bool)

(declare-fun call!687241 () Bool)

(assert (=> bm!687236 (= call!687241 (validRegex!10137 (ite c!1382537 (regTwo!39759 (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783)))) (regTwo!39758 (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783)))))))))

(declare-fun bm!687237 () Bool)

(assert (=> bm!687237 (= call!687240 call!687242)))

(declare-fun b!7486268 () Bool)

(declare-fun e!4464781 () Bool)

(assert (=> b!7486268 (= e!4464777 e!4464781)))

(declare-fun res!3003279 () Bool)

(assert (=> b!7486268 (=> (not res!3003279) (not e!4464781))))

(assert (=> b!7486268 (= res!3003279 call!687240)))

(declare-fun b!7486269 () Bool)

(assert (=> b!7486269 (= e!4464781 call!687241)))

(declare-fun b!7486270 () Bool)

(assert (=> b!7486270 (= e!4464783 e!4464782)))

(assert (=> b!7486270 (= c!1382537 ((_ is Union!19623) (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783)))))))

(declare-fun d!2300769 () Bool)

(declare-fun res!3003280 () Bool)

(declare-fun e!4464778 () Bool)

(assert (=> d!2300769 (=> res!3003280 e!4464778)))

(assert (=> d!2300769 (= res!3003280 ((_ is ElementMatch!19623) (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783)))))))

(assert (=> d!2300769 (= (validRegex!10137 (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783)))) e!4464778)))

(declare-fun b!7486271 () Bool)

(assert (=> b!7486271 (= e!4464780 call!687241)))

(declare-fun b!7486272 () Bool)

(assert (=> b!7486272 (= e!4464778 e!4464783)))

(assert (=> b!7486272 (= c!1382538 ((_ is Star!19623) (ite c!1382510 (reg!19952 r2!5783) (ite c!1382509 (regOne!39759 r2!5783) (regOne!39758 r2!5783)))))))

(assert (= (and d!2300769 (not res!3003280)) b!7486272))

(assert (= (and b!7486272 c!1382538) b!7486264))

(assert (= (and b!7486272 (not c!1382538)) b!7486270))

(assert (= (and b!7486264 res!3003281) b!7486266))

(assert (= (and b!7486270 c!1382537) b!7486267))

(assert (= (and b!7486270 (not c!1382537)) b!7486265))

(assert (= (and b!7486267 res!3003277) b!7486271))

(assert (= (and b!7486265 (not res!3003278)) b!7486268))

(assert (= (and b!7486268 res!3003279) b!7486269))

(assert (= (or b!7486271 b!7486269) bm!687236))

(assert (= (or b!7486267 b!7486268) bm!687237))

(assert (= (or b!7486266 bm!687237) bm!687235))

(declare-fun m!8075536 () Bool)

(assert (=> b!7486264 m!8075536))

(declare-fun m!8075538 () Bool)

(assert (=> bm!687235 m!8075538))

(declare-fun m!8075540 () Bool)

(assert (=> bm!687236 m!8075540))

(assert (=> bm!687197 d!2300769))

(declare-fun d!2300771 () Bool)

(assert (=> d!2300771 (= (head!15357 s!13591) (h!78661 s!13591))))

(assert (=> b!7485841 d!2300771))

(declare-fun d!2300773 () Bool)

(declare-fun e!4464788 () Bool)

(assert (=> d!2300773 e!4464788))

(declare-fun c!1382540 () Bool)

(assert (=> d!2300773 (= c!1382540 ((_ is EmptyExpr!19623) (derivativeStep!5617 lt!2628882 (head!15357 s!13591))))))

(declare-fun lt!2628896 () Bool)

(declare-fun e!4464786 () Bool)

(assert (=> d!2300773 (= lt!2628896 e!4464786)))

(declare-fun c!1382539 () Bool)

(assert (=> d!2300773 (= c!1382539 (isEmpty!41231 (tail!14926 s!13591)))))

(assert (=> d!2300773 (validRegex!10137 (derivativeStep!5617 lt!2628882 (head!15357 s!13591)))))

(assert (=> d!2300773 (= (matchR!9385 (derivativeStep!5617 lt!2628882 (head!15357 s!13591)) (tail!14926 s!13591)) lt!2628896)))

(declare-fun b!7486273 () Bool)

(declare-fun res!3003288 () Bool)

(declare-fun e!4464787 () Bool)

(assert (=> b!7486273 (=> (not res!3003288) (not e!4464787))))

(assert (=> b!7486273 (= res!3003288 (isEmpty!41231 (tail!14926 (tail!14926 s!13591))))))

(declare-fun b!7486274 () Bool)

(declare-fun e!4464784 () Bool)

(assert (=> b!7486274 (= e!4464784 (not lt!2628896))))

(declare-fun b!7486275 () Bool)

(declare-fun res!3003285 () Bool)

(declare-fun e!4464785 () Bool)

(assert (=> b!7486275 (=> res!3003285 e!4464785)))

(assert (=> b!7486275 (= res!3003285 e!4464787)))

(declare-fun res!3003284 () Bool)

(assert (=> b!7486275 (=> (not res!3003284) (not e!4464787))))

(assert (=> b!7486275 (= res!3003284 lt!2628896)))

(declare-fun b!7486276 () Bool)

(declare-fun e!4464790 () Bool)

(assert (=> b!7486276 (= e!4464785 e!4464790)))

(declare-fun res!3003287 () Bool)

(assert (=> b!7486276 (=> (not res!3003287) (not e!4464790))))

(assert (=> b!7486276 (= res!3003287 (not lt!2628896))))

(declare-fun b!7486277 () Bool)

(declare-fun res!3003283 () Bool)

(declare-fun e!4464789 () Bool)

(assert (=> b!7486277 (=> res!3003283 e!4464789)))

(assert (=> b!7486277 (= res!3003283 (not (isEmpty!41231 (tail!14926 (tail!14926 s!13591)))))))

(declare-fun b!7486278 () Bool)

(assert (=> b!7486278 (= e!4464787 (= (head!15357 (tail!14926 s!13591)) (c!1382452 (derivativeStep!5617 lt!2628882 (head!15357 s!13591)))))))

(declare-fun b!7486279 () Bool)

(assert (=> b!7486279 (= e!4464790 e!4464789)))

(declare-fun res!3003282 () Bool)

(assert (=> b!7486279 (=> res!3003282 e!4464789)))

(declare-fun call!687243 () Bool)

(assert (=> b!7486279 (= res!3003282 call!687243)))

(declare-fun bm!687238 () Bool)

(assert (=> bm!687238 (= call!687243 (isEmpty!41231 (tail!14926 s!13591)))))

(declare-fun b!7486280 () Bool)

(assert (=> b!7486280 (= e!4464786 (matchR!9385 (derivativeStep!5617 (derivativeStep!5617 lt!2628882 (head!15357 s!13591)) (head!15357 (tail!14926 s!13591))) (tail!14926 (tail!14926 s!13591))))))

(declare-fun b!7486281 () Bool)

(declare-fun res!3003286 () Bool)

(assert (=> b!7486281 (=> res!3003286 e!4464785)))

(assert (=> b!7486281 (= res!3003286 (not ((_ is ElementMatch!19623) (derivativeStep!5617 lt!2628882 (head!15357 s!13591)))))))

(assert (=> b!7486281 (= e!4464784 e!4464785)))

(declare-fun b!7486282 () Bool)

(declare-fun res!3003289 () Bool)

(assert (=> b!7486282 (=> (not res!3003289) (not e!4464787))))

(assert (=> b!7486282 (= res!3003289 (not call!687243))))

(declare-fun b!7486283 () Bool)

(assert (=> b!7486283 (= e!4464788 (= lt!2628896 call!687243))))

(declare-fun b!7486284 () Bool)

(assert (=> b!7486284 (= e!4464788 e!4464784)))

(declare-fun c!1382541 () Bool)

(assert (=> b!7486284 (= c!1382541 ((_ is EmptyLang!19623) (derivativeStep!5617 lt!2628882 (head!15357 s!13591))))))

(declare-fun b!7486285 () Bool)

(assert (=> b!7486285 (= e!4464789 (not (= (head!15357 (tail!14926 s!13591)) (c!1382452 (derivativeStep!5617 lt!2628882 (head!15357 s!13591))))))))

(declare-fun b!7486286 () Bool)

(assert (=> b!7486286 (= e!4464786 (nullable!8560 (derivativeStep!5617 lt!2628882 (head!15357 s!13591))))))

(assert (= (and d!2300773 c!1382539) b!7486286))

(assert (= (and d!2300773 (not c!1382539)) b!7486280))

(assert (= (and d!2300773 c!1382540) b!7486283))

(assert (= (and d!2300773 (not c!1382540)) b!7486284))

(assert (= (and b!7486284 c!1382541) b!7486274))

(assert (= (and b!7486284 (not c!1382541)) b!7486281))

(assert (= (and b!7486281 (not res!3003286)) b!7486275))

(assert (= (and b!7486275 res!3003284) b!7486282))

(assert (= (and b!7486282 res!3003289) b!7486273))

(assert (= (and b!7486273 res!3003288) b!7486278))

(assert (= (and b!7486275 (not res!3003285)) b!7486276))

(assert (= (and b!7486276 res!3003287) b!7486279))

(assert (= (and b!7486279 (not res!3003282)) b!7486277))

(assert (= (and b!7486277 (not res!3003283)) b!7486285))

(assert (= (or b!7486283 b!7486279 b!7486282) bm!687238))

(assert (=> b!7486277 m!8075396))

(declare-fun m!8075542 () Bool)

(assert (=> b!7486277 m!8075542))

(assert (=> b!7486277 m!8075542))

(declare-fun m!8075544 () Bool)

(assert (=> b!7486277 m!8075544))

(assert (=> b!7486273 m!8075396))

(assert (=> b!7486273 m!8075542))

(assert (=> b!7486273 m!8075542))

(assert (=> b!7486273 m!8075544))

(assert (=> bm!687238 m!8075396))

(assert (=> bm!687238 m!8075398))

(assert (=> b!7486280 m!8075396))

(declare-fun m!8075546 () Bool)

(assert (=> b!7486280 m!8075546))

(assert (=> b!7486280 m!8075404))

(assert (=> b!7486280 m!8075546))

(declare-fun m!8075548 () Bool)

(assert (=> b!7486280 m!8075548))

(assert (=> b!7486280 m!8075396))

(assert (=> b!7486280 m!8075542))

(assert (=> b!7486280 m!8075548))

(assert (=> b!7486280 m!8075542))

(declare-fun m!8075550 () Bool)

(assert (=> b!7486280 m!8075550))

(assert (=> b!7486286 m!8075404))

(declare-fun m!8075552 () Bool)

(assert (=> b!7486286 m!8075552))

(assert (=> b!7486285 m!8075396))

(assert (=> b!7486285 m!8075546))

(assert (=> d!2300773 m!8075396))

(assert (=> d!2300773 m!8075398))

(assert (=> d!2300773 m!8075404))

(declare-fun m!8075554 () Bool)

(assert (=> d!2300773 m!8075554))

(assert (=> b!7486278 m!8075396))

(assert (=> b!7486278 m!8075546))

(assert (=> b!7485843 d!2300773))

(declare-fun b!7486307 () Bool)

(declare-fun e!4464803 () Regex!19623)

(declare-fun e!4464804 () Regex!19623)

(assert (=> b!7486307 (= e!4464803 e!4464804)))

(declare-fun c!1382553 () Bool)

(assert (=> b!7486307 (= c!1382553 ((_ is Star!19623) lt!2628882))))

(declare-fun b!7486308 () Bool)

(declare-fun call!687253 () Regex!19623)

(assert (=> b!7486308 (= e!4464804 (Concat!28468 call!687253 lt!2628882))))

(declare-fun b!7486309 () Bool)

(declare-fun e!4464805 () Regex!19623)

(declare-fun call!687255 () Regex!19623)

(assert (=> b!7486309 (= e!4464805 (Union!19623 (Concat!28468 call!687255 (regTwo!39758 lt!2628882)) EmptyLang!19623))))

(declare-fun bm!687247 () Bool)

(assert (=> bm!687247 (= call!687255 call!687253)))

(declare-fun c!1382555 () Bool)

(declare-fun bm!687248 () Bool)

(declare-fun call!687254 () Regex!19623)

(assert (=> bm!687248 (= call!687254 (derivativeStep!5617 (ite c!1382555 (regOne!39759 lt!2628882) (ite c!1382553 (reg!19952 lt!2628882) (regOne!39758 lt!2628882))) (head!15357 s!13591)))))

(declare-fun b!7486310 () Bool)

(declare-fun call!687252 () Regex!19623)

(assert (=> b!7486310 (= e!4464803 (Union!19623 call!687254 call!687252))))

(declare-fun b!7486311 () Bool)

(assert (=> b!7486311 (= c!1382555 ((_ is Union!19623) lt!2628882))))

(declare-fun e!4464801 () Regex!19623)

(assert (=> b!7486311 (= e!4464801 e!4464803)))

(declare-fun bm!687249 () Bool)

(assert (=> bm!687249 (= call!687252 (derivativeStep!5617 (ite c!1382555 (regTwo!39759 lt!2628882) (regTwo!39758 lt!2628882)) (head!15357 s!13591)))))

(declare-fun d!2300775 () Bool)

(declare-fun lt!2628899 () Regex!19623)

(assert (=> d!2300775 (validRegex!10137 lt!2628899)))

(declare-fun e!4464802 () Regex!19623)

(assert (=> d!2300775 (= lt!2628899 e!4464802)))

(declare-fun c!1382554 () Bool)

(assert (=> d!2300775 (= c!1382554 (or ((_ is EmptyExpr!19623) lt!2628882) ((_ is EmptyLang!19623) lt!2628882)))))

(assert (=> d!2300775 (validRegex!10137 lt!2628882)))

(assert (=> d!2300775 (= (derivativeStep!5617 lt!2628882 (head!15357 s!13591)) lt!2628899)))

(declare-fun b!7486312 () Bool)

(assert (=> b!7486312 (= e!4464802 EmptyLang!19623)))

(declare-fun b!7486313 () Bool)

(assert (=> b!7486313 (= e!4464802 e!4464801)))

(declare-fun c!1382556 () Bool)

(assert (=> b!7486313 (= c!1382556 ((_ is ElementMatch!19623) lt!2628882))))

(declare-fun b!7486314 () Bool)

(assert (=> b!7486314 (= e!4464805 (Union!19623 (Concat!28468 call!687255 (regTwo!39758 lt!2628882)) call!687252))))

(declare-fun b!7486315 () Bool)

(declare-fun c!1382552 () Bool)

(assert (=> b!7486315 (= c!1382552 (nullable!8560 (regOne!39758 lt!2628882)))))

(assert (=> b!7486315 (= e!4464804 e!4464805)))

(declare-fun bm!687250 () Bool)

(assert (=> bm!687250 (= call!687253 call!687254)))

(declare-fun b!7486316 () Bool)

(assert (=> b!7486316 (= e!4464801 (ite (= (head!15357 s!13591) (c!1382452 lt!2628882)) EmptyExpr!19623 EmptyLang!19623))))

(assert (= (and d!2300775 c!1382554) b!7486312))

(assert (= (and d!2300775 (not c!1382554)) b!7486313))

(assert (= (and b!7486313 c!1382556) b!7486316))

(assert (= (and b!7486313 (not c!1382556)) b!7486311))

(assert (= (and b!7486311 c!1382555) b!7486310))

(assert (= (and b!7486311 (not c!1382555)) b!7486307))

(assert (= (and b!7486307 c!1382553) b!7486308))

(assert (= (and b!7486307 (not c!1382553)) b!7486315))

(assert (= (and b!7486315 c!1382552) b!7486314))

(assert (= (and b!7486315 (not c!1382552)) b!7486309))

(assert (= (or b!7486314 b!7486309) bm!687247))

(assert (= (or b!7486308 bm!687247) bm!687250))

(assert (= (or b!7486310 b!7486314) bm!687249))

(assert (= (or b!7486310 bm!687250) bm!687248))

(assert (=> bm!687248 m!8075402))

(declare-fun m!8075556 () Bool)

(assert (=> bm!687248 m!8075556))

(assert (=> bm!687249 m!8075402))

(declare-fun m!8075558 () Bool)

(assert (=> bm!687249 m!8075558))

(declare-fun m!8075560 () Bool)

(assert (=> d!2300775 m!8075560))

(assert (=> d!2300775 m!8075410))

(declare-fun m!8075562 () Bool)

(assert (=> b!7486315 m!8075562))

(assert (=> b!7485843 d!2300775))

(assert (=> b!7485843 d!2300771))

(assert (=> b!7485843 d!2300753))

(declare-fun bs!1934336 () Bool)

(declare-fun b!7486324 () Bool)

(assert (= bs!1934336 (and b!7486324 b!7485980)))

(declare-fun lambda!463898 () Int)

(assert (=> bs!1934336 (= (and (= (reg!19952 (regOne!39759 lt!2628882)) (reg!19952 lt!2628882)) (= (regOne!39759 lt!2628882) lt!2628882)) (= lambda!463898 lambda!463888))))

(declare-fun bs!1934337 () Bool)

(assert (= bs!1934337 (and b!7486324 b!7485974)))

(assert (=> bs!1934337 (not (= lambda!463898 lambda!463889))))

(declare-fun bs!1934338 () Bool)

(assert (= bs!1934338 (and b!7486324 b!7486251)))

(assert (=> bs!1934338 (= (and (= (reg!19952 (regOne!39759 lt!2628882)) (reg!19952 (regTwo!39759 lt!2628882))) (= (regOne!39759 lt!2628882) (regTwo!39759 lt!2628882))) (= lambda!463898 lambda!463896))))

(declare-fun bs!1934339 () Bool)

(assert (= bs!1934339 (and b!7486324 b!7486245)))

(assert (=> bs!1934339 (not (= lambda!463898 lambda!463897))))

(assert (=> b!7486324 true))

(assert (=> b!7486324 true))

(declare-fun bs!1934340 () Bool)

(declare-fun b!7486318 () Bool)

(assert (= bs!1934340 (and b!7486318 b!7486251)))

(declare-fun lambda!463899 () Int)

(assert (=> bs!1934340 (not (= lambda!463899 lambda!463896))))

(declare-fun bs!1934341 () Bool)

(assert (= bs!1934341 (and b!7486318 b!7486245)))

(assert (=> bs!1934341 (= (and (= (regOne!39758 (regOne!39759 lt!2628882)) (regOne!39758 (regTwo!39759 lt!2628882))) (= (regTwo!39758 (regOne!39759 lt!2628882)) (regTwo!39758 (regTwo!39759 lt!2628882)))) (= lambda!463899 lambda!463897))))

(declare-fun bs!1934342 () Bool)

(assert (= bs!1934342 (and b!7486318 b!7485974)))

(assert (=> bs!1934342 (= (and (= (regOne!39758 (regOne!39759 lt!2628882)) (regOne!39758 lt!2628882)) (= (regTwo!39758 (regOne!39759 lt!2628882)) (regTwo!39758 lt!2628882))) (= lambda!463899 lambda!463889))))

(declare-fun bs!1934343 () Bool)

(assert (= bs!1934343 (and b!7486318 b!7486324)))

(assert (=> bs!1934343 (not (= lambda!463899 lambda!463898))))

(declare-fun bs!1934344 () Bool)

(assert (= bs!1934344 (and b!7486318 b!7485980)))

(assert (=> bs!1934344 (not (= lambda!463899 lambda!463888))))

(assert (=> b!7486318 true))

(assert (=> b!7486318 true))

(declare-fun d!2300777 () Bool)

(declare-fun c!1382557 () Bool)

(assert (=> d!2300777 (= c!1382557 ((_ is EmptyExpr!19623) (regOne!39759 lt!2628882)))))

(declare-fun e!4464807 () Bool)

(assert (=> d!2300777 (= (matchRSpec!4300 (regOne!39759 lt!2628882) s!13591) e!4464807)))

(declare-fun bm!687251 () Bool)

(declare-fun call!687256 () Bool)

(assert (=> bm!687251 (= call!687256 (isEmpty!41231 s!13591))))

(declare-fun b!7486317 () Bool)

(declare-fun e!4464811 () Bool)

(declare-fun e!4464809 () Bool)

(assert (=> b!7486317 (= e!4464811 e!4464809)))

(declare-fun c!1382558 () Bool)

(assert (=> b!7486317 (= c!1382558 ((_ is Star!19623) (regOne!39759 lt!2628882)))))

(declare-fun call!687257 () Bool)

(assert (=> b!7486318 (= e!4464809 call!687257)))

(declare-fun b!7486319 () Bool)

(declare-fun e!4464808 () Bool)

(assert (=> b!7486319 (= e!4464808 (matchRSpec!4300 (regTwo!39759 (regOne!39759 lt!2628882)) s!13591))))

(declare-fun b!7486320 () Bool)

(declare-fun c!1382559 () Bool)

(assert (=> b!7486320 (= c!1382559 ((_ is ElementMatch!19623) (regOne!39759 lt!2628882)))))

(declare-fun e!4464810 () Bool)

(declare-fun e!4464806 () Bool)

(assert (=> b!7486320 (= e!4464810 e!4464806)))

(declare-fun b!7486321 () Bool)

(declare-fun c!1382560 () Bool)

(assert (=> b!7486321 (= c!1382560 ((_ is Union!19623) (regOne!39759 lt!2628882)))))

(assert (=> b!7486321 (= e!4464806 e!4464811)))

(declare-fun b!7486322 () Bool)

(assert (=> b!7486322 (= e!4464807 call!687256)))

(declare-fun b!7486323 () Bool)

(declare-fun res!3003291 () Bool)

(declare-fun e!4464812 () Bool)

(assert (=> b!7486323 (=> res!3003291 e!4464812)))

(assert (=> b!7486323 (= res!3003291 call!687256)))

(assert (=> b!7486323 (= e!4464809 e!4464812)))

(declare-fun bm!687252 () Bool)

(assert (=> bm!687252 (= call!687257 (Exists!4239 (ite c!1382558 lambda!463898 lambda!463899)))))

(assert (=> b!7486324 (= e!4464812 call!687257)))

(declare-fun b!7486325 () Bool)

(assert (=> b!7486325 (= e!4464811 e!4464808)))

(declare-fun res!3003290 () Bool)

(assert (=> b!7486325 (= res!3003290 (matchRSpec!4300 (regOne!39759 (regOne!39759 lt!2628882)) s!13591))))

(assert (=> b!7486325 (=> res!3003290 e!4464808)))

(declare-fun b!7486326 () Bool)

(assert (=> b!7486326 (= e!4464806 (= s!13591 (Cons!72213 (c!1382452 (regOne!39759 lt!2628882)) Nil!72213)))))

(declare-fun b!7486327 () Bool)

(assert (=> b!7486327 (= e!4464807 e!4464810)))

(declare-fun res!3003292 () Bool)

(assert (=> b!7486327 (= res!3003292 (not ((_ is EmptyLang!19623) (regOne!39759 lt!2628882))))))

(assert (=> b!7486327 (=> (not res!3003292) (not e!4464810))))

(assert (= (and d!2300777 c!1382557) b!7486322))

(assert (= (and d!2300777 (not c!1382557)) b!7486327))

(assert (= (and b!7486327 res!3003292) b!7486320))

(assert (= (and b!7486320 c!1382559) b!7486326))

(assert (= (and b!7486320 (not c!1382559)) b!7486321))

(assert (= (and b!7486321 c!1382560) b!7486325))

(assert (= (and b!7486321 (not c!1382560)) b!7486317))

(assert (= (and b!7486325 (not res!3003290)) b!7486319))

(assert (= (and b!7486317 c!1382558) b!7486323))

(assert (= (and b!7486317 (not c!1382558)) b!7486318))

(assert (= (and b!7486323 (not res!3003291)) b!7486324))

(assert (= (or b!7486324 b!7486318) bm!687252))

(assert (= (or b!7486322 b!7486323) bm!687251))

(assert (=> bm!687251 m!8075400))

(declare-fun m!8075564 () Bool)

(assert (=> b!7486319 m!8075564))

(declare-fun m!8075566 () Bool)

(assert (=> bm!687252 m!8075566))

(declare-fun m!8075568 () Bool)

(assert (=> b!7486325 m!8075568))

(assert (=> b!7485981 d!2300777))

(declare-fun b!7486328 () Bool)

(declare-fun e!4464819 () Bool)

(declare-fun e!4464815 () Bool)

(assert (=> b!7486328 (= e!4464819 e!4464815)))

(declare-fun res!3003297 () Bool)

(assert (=> b!7486328 (= res!3003297 (not (nullable!8560 (reg!19952 (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783))))))))

(assert (=> b!7486328 (=> (not res!3003297) (not e!4464815))))

(declare-fun bm!687253 () Bool)

(declare-fun call!687260 () Bool)

(declare-fun c!1382562 () Bool)

(declare-fun c!1382561 () Bool)

(assert (=> bm!687253 (= call!687260 (validRegex!10137 (ite c!1382562 (reg!19952 (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783))) (ite c!1382561 (regOne!39759 (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783))) (regOne!39758 (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783)))))))))

(declare-fun b!7486329 () Bool)

(declare-fun res!3003294 () Bool)

(declare-fun e!4464813 () Bool)

(assert (=> b!7486329 (=> res!3003294 e!4464813)))

(assert (=> b!7486329 (= res!3003294 (not ((_ is Concat!28468) (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783)))))))

(declare-fun e!4464818 () Bool)

(assert (=> b!7486329 (= e!4464818 e!4464813)))

(declare-fun b!7486330 () Bool)

(assert (=> b!7486330 (= e!4464815 call!687260)))

(declare-fun b!7486331 () Bool)

(declare-fun res!3003293 () Bool)

(declare-fun e!4464816 () Bool)

(assert (=> b!7486331 (=> (not res!3003293) (not e!4464816))))

(declare-fun call!687258 () Bool)

(assert (=> b!7486331 (= res!3003293 call!687258)))

(assert (=> b!7486331 (= e!4464818 e!4464816)))

(declare-fun bm!687254 () Bool)

(declare-fun call!687259 () Bool)

(assert (=> bm!687254 (= call!687259 (validRegex!10137 (ite c!1382561 (regTwo!39759 (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783))) (regTwo!39758 (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783))))))))

(declare-fun bm!687255 () Bool)

(assert (=> bm!687255 (= call!687258 call!687260)))

(declare-fun b!7486332 () Bool)

(declare-fun e!4464817 () Bool)

(assert (=> b!7486332 (= e!4464813 e!4464817)))

(declare-fun res!3003295 () Bool)

(assert (=> b!7486332 (=> (not res!3003295) (not e!4464817))))

(assert (=> b!7486332 (= res!3003295 call!687258)))

(declare-fun b!7486333 () Bool)

(assert (=> b!7486333 (= e!4464817 call!687259)))

(declare-fun b!7486334 () Bool)

(assert (=> b!7486334 (= e!4464819 e!4464818)))

(assert (=> b!7486334 (= c!1382561 ((_ is Union!19623) (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783))))))

(declare-fun d!2300779 () Bool)

(declare-fun res!3003296 () Bool)

(declare-fun e!4464814 () Bool)

(assert (=> d!2300779 (=> res!3003296 e!4464814)))

(assert (=> d!2300779 (= res!3003296 ((_ is ElementMatch!19623) (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783))))))

(assert (=> d!2300779 (= (validRegex!10137 (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783))) e!4464814)))

(declare-fun b!7486335 () Bool)

(assert (=> b!7486335 (= e!4464816 call!687259)))

(declare-fun b!7486336 () Bool)

(assert (=> b!7486336 (= e!4464814 e!4464819)))

(assert (=> b!7486336 (= c!1382562 ((_ is Star!19623) (ite c!1382509 (regTwo!39759 r2!5783) (regTwo!39758 r2!5783))))))

(assert (= (and d!2300779 (not res!3003296)) b!7486336))

(assert (= (and b!7486336 c!1382562) b!7486328))

(assert (= (and b!7486336 (not c!1382562)) b!7486334))

(assert (= (and b!7486328 res!3003297) b!7486330))

(assert (= (and b!7486334 c!1382561) b!7486331))

(assert (= (and b!7486334 (not c!1382561)) b!7486329))

(assert (= (and b!7486331 res!3003293) b!7486335))

(assert (= (and b!7486329 (not res!3003294)) b!7486332))

(assert (= (and b!7486332 res!3003295) b!7486333))

(assert (= (or b!7486335 b!7486333) bm!687254))

(assert (= (or b!7486331 b!7486332) bm!687255))

(assert (= (or b!7486330 bm!687255) bm!687253))

(declare-fun m!8075570 () Bool)

(assert (=> b!7486328 m!8075570))

(declare-fun m!8075572 () Bool)

(assert (=> bm!687253 m!8075572))

(declare-fun m!8075574 () Bool)

(assert (=> bm!687254 m!8075574))

(assert (=> bm!687198 d!2300779))

(declare-fun d!2300781 () Bool)

(declare-fun choose!57868 (Int) Bool)

(assert (=> d!2300781 (= (Exists!4239 (ite c!1382506 lambda!463888 lambda!463889)) (choose!57868 (ite c!1382506 lambda!463888 lambda!463889)))))

(declare-fun bs!1934345 () Bool)

(assert (= bs!1934345 d!2300781))

(declare-fun m!8075576 () Bool)

(assert (=> bs!1934345 m!8075576))

(assert (=> bm!687196 d!2300781))

(assert (=> bm!687178 d!2300745))

(declare-fun d!2300783 () Bool)

(assert (=> d!2300783 (= (nullable!8560 lt!2628882) (nullableFct!3429 lt!2628882))))

(declare-fun bs!1934346 () Bool)

(assert (= bs!1934346 d!2300783))

(declare-fun m!8075578 () Bool)

(assert (=> bs!1934346 m!8075578))

(assert (=> b!7485849 d!2300783))

(assert (=> b!7485848 d!2300771))

(declare-fun b!7486340 () Bool)

(declare-fun e!4464820 () Bool)

(declare-fun tp!2172128 () Bool)

(declare-fun tp!2172129 () Bool)

(assert (=> b!7486340 (= e!4464820 (and tp!2172128 tp!2172129))))

(assert (=> b!7486063 (= tp!2172013 e!4464820)))

(declare-fun b!7486338 () Bool)

(declare-fun tp!2172127 () Bool)

(declare-fun tp!2172130 () Bool)

(assert (=> b!7486338 (= e!4464820 (and tp!2172127 tp!2172130))))

(declare-fun b!7486337 () Bool)

(assert (=> b!7486337 (= e!4464820 tp_is_empty!49535)))

(declare-fun b!7486339 () Bool)

(declare-fun tp!2172126 () Bool)

(assert (=> b!7486339 (= e!4464820 tp!2172126)))

(assert (= (and b!7486063 ((_ is ElementMatch!19623) (reg!19952 (regTwo!39759 rTail!78)))) b!7486337))

(assert (= (and b!7486063 ((_ is Concat!28468) (reg!19952 (regTwo!39759 rTail!78)))) b!7486338))

(assert (= (and b!7486063 ((_ is Star!19623) (reg!19952 (regTwo!39759 rTail!78)))) b!7486339))

(assert (= (and b!7486063 ((_ is Union!19623) (reg!19952 (regTwo!39759 rTail!78)))) b!7486340))

(declare-fun b!7486344 () Bool)

(declare-fun e!4464821 () Bool)

(declare-fun tp!2172133 () Bool)

(declare-fun tp!2172134 () Bool)

(assert (=> b!7486344 (= e!4464821 (and tp!2172133 tp!2172134))))

(assert (=> b!7486039 (= tp!2171987 e!4464821)))

(declare-fun b!7486342 () Bool)

(declare-fun tp!2172132 () Bool)

(declare-fun tp!2172135 () Bool)

(assert (=> b!7486342 (= e!4464821 (and tp!2172132 tp!2172135))))

(declare-fun b!7486341 () Bool)

(assert (=> b!7486341 (= e!4464821 tp_is_empty!49535)))

(declare-fun b!7486343 () Bool)

(declare-fun tp!2172131 () Bool)

(assert (=> b!7486343 (= e!4464821 tp!2172131)))

(assert (= (and b!7486039 ((_ is ElementMatch!19623) (regOne!39759 (regOne!39758 r1!5845)))) b!7486341))

(assert (= (and b!7486039 ((_ is Concat!28468) (regOne!39759 (regOne!39758 r1!5845)))) b!7486342))

(assert (= (and b!7486039 ((_ is Star!19623) (regOne!39759 (regOne!39758 r1!5845)))) b!7486343))

(assert (= (and b!7486039 ((_ is Union!19623) (regOne!39759 (regOne!39758 r1!5845)))) b!7486344))

(declare-fun b!7486348 () Bool)

(declare-fun e!4464822 () Bool)

(declare-fun tp!2172138 () Bool)

(declare-fun tp!2172139 () Bool)

(assert (=> b!7486348 (= e!4464822 (and tp!2172138 tp!2172139))))

(assert (=> b!7486039 (= tp!2171988 e!4464822)))

(declare-fun b!7486346 () Bool)

(declare-fun tp!2172137 () Bool)

(declare-fun tp!2172140 () Bool)

(assert (=> b!7486346 (= e!4464822 (and tp!2172137 tp!2172140))))

(declare-fun b!7486345 () Bool)

(assert (=> b!7486345 (= e!4464822 tp_is_empty!49535)))

(declare-fun b!7486347 () Bool)

(declare-fun tp!2172136 () Bool)

(assert (=> b!7486347 (= e!4464822 tp!2172136)))

(assert (= (and b!7486039 ((_ is ElementMatch!19623) (regTwo!39759 (regOne!39758 r1!5845)))) b!7486345))

(assert (= (and b!7486039 ((_ is Concat!28468) (regTwo!39759 (regOne!39758 r1!5845)))) b!7486346))

(assert (= (and b!7486039 ((_ is Star!19623) (regTwo!39759 (regOne!39758 r1!5845)))) b!7486347))

(assert (= (and b!7486039 ((_ is Union!19623) (regTwo!39759 (regOne!39758 r1!5845)))) b!7486348))

(declare-fun b!7486352 () Bool)

(declare-fun e!4464823 () Bool)

(declare-fun tp!2172143 () Bool)

(declare-fun tp!2172144 () Bool)

(assert (=> b!7486352 (= e!4464823 (and tp!2172143 tp!2172144))))

(assert (=> b!7486030 (= tp!2171975 e!4464823)))

(declare-fun b!7486350 () Bool)

(declare-fun tp!2172142 () Bool)

(declare-fun tp!2172145 () Bool)

(assert (=> b!7486350 (= e!4464823 (and tp!2172142 tp!2172145))))

(declare-fun b!7486349 () Bool)

(assert (=> b!7486349 (= e!4464823 tp_is_empty!49535)))

(declare-fun b!7486351 () Bool)

(declare-fun tp!2172141 () Bool)

(assert (=> b!7486351 (= e!4464823 tp!2172141)))

(assert (= (and b!7486030 ((_ is ElementMatch!19623) (reg!19952 (regOne!39759 r2!5783)))) b!7486349))

(assert (= (and b!7486030 ((_ is Concat!28468) (reg!19952 (regOne!39759 r2!5783)))) b!7486350))

(assert (= (and b!7486030 ((_ is Star!19623) (reg!19952 (regOne!39759 r2!5783)))) b!7486351))

(assert (= (and b!7486030 ((_ is Union!19623) (reg!19952 (regOne!39759 r2!5783)))) b!7486352))

(declare-fun b!7486356 () Bool)

(declare-fun e!4464824 () Bool)

(declare-fun tp!2172148 () Bool)

(declare-fun tp!2172149 () Bool)

(assert (=> b!7486356 (= e!4464824 (and tp!2172148 tp!2172149))))

(assert (=> b!7486054 (= tp!2172004 e!4464824)))

(declare-fun b!7486354 () Bool)

(declare-fun tp!2172147 () Bool)

(declare-fun tp!2172150 () Bool)

(assert (=> b!7486354 (= e!4464824 (and tp!2172147 tp!2172150))))

(declare-fun b!7486353 () Bool)

(assert (=> b!7486353 (= e!4464824 tp_is_empty!49535)))

(declare-fun b!7486355 () Bool)

(declare-fun tp!2172146 () Bool)

(assert (=> b!7486355 (= e!4464824 tp!2172146)))

(assert (= (and b!7486054 ((_ is ElementMatch!19623) (regOne!39758 (regTwo!39759 r1!5845)))) b!7486353))

(assert (= (and b!7486054 ((_ is Concat!28468) (regOne!39758 (regTwo!39759 r1!5845)))) b!7486354))

(assert (= (and b!7486054 ((_ is Star!19623) (regOne!39758 (regTwo!39759 r1!5845)))) b!7486355))

(assert (= (and b!7486054 ((_ is Union!19623) (regOne!39758 (regTwo!39759 r1!5845)))) b!7486356))

(declare-fun b!7486360 () Bool)

(declare-fun e!4464825 () Bool)

(declare-fun tp!2172153 () Bool)

(declare-fun tp!2172154 () Bool)

(assert (=> b!7486360 (= e!4464825 (and tp!2172153 tp!2172154))))

(assert (=> b!7486054 (= tp!2172007 e!4464825)))

(declare-fun b!7486358 () Bool)

(declare-fun tp!2172152 () Bool)

(declare-fun tp!2172155 () Bool)

(assert (=> b!7486358 (= e!4464825 (and tp!2172152 tp!2172155))))

(declare-fun b!7486357 () Bool)

(assert (=> b!7486357 (= e!4464825 tp_is_empty!49535)))

(declare-fun b!7486359 () Bool)

(declare-fun tp!2172151 () Bool)

(assert (=> b!7486359 (= e!4464825 tp!2172151)))

(assert (= (and b!7486054 ((_ is ElementMatch!19623) (regTwo!39758 (regTwo!39759 r1!5845)))) b!7486357))

(assert (= (and b!7486054 ((_ is Concat!28468) (regTwo!39758 (regTwo!39759 r1!5845)))) b!7486358))

(assert (= (and b!7486054 ((_ is Star!19623) (regTwo!39758 (regTwo!39759 r1!5845)))) b!7486359))

(assert (= (and b!7486054 ((_ is Union!19623) (regTwo!39758 (regTwo!39759 r1!5845)))) b!7486360))

(declare-fun b!7486364 () Bool)

(declare-fun e!4464826 () Bool)

(declare-fun tp!2172158 () Bool)

(declare-fun tp!2172159 () Bool)

(assert (=> b!7486364 (= e!4464826 (and tp!2172158 tp!2172159))))

(assert (=> b!7486021 (= tp!2171966 e!4464826)))

(declare-fun b!7486362 () Bool)

(declare-fun tp!2172157 () Bool)

(declare-fun tp!2172160 () Bool)

(assert (=> b!7486362 (= e!4464826 (and tp!2172157 tp!2172160))))

(declare-fun b!7486361 () Bool)

(assert (=> b!7486361 (= e!4464826 tp_is_empty!49535)))

(declare-fun b!7486363 () Bool)

(declare-fun tp!2172156 () Bool)

(assert (=> b!7486363 (= e!4464826 tp!2172156)))

(assert (= (and b!7486021 ((_ is ElementMatch!19623) (regOne!39758 (regTwo!39758 rTail!78)))) b!7486361))

(assert (= (and b!7486021 ((_ is Concat!28468) (regOne!39758 (regTwo!39758 rTail!78)))) b!7486362))

(assert (= (and b!7486021 ((_ is Star!19623) (regOne!39758 (regTwo!39758 rTail!78)))) b!7486363))

(assert (= (and b!7486021 ((_ is Union!19623) (regOne!39758 (regTwo!39758 rTail!78)))) b!7486364))

(declare-fun b!7486368 () Bool)

(declare-fun e!4464827 () Bool)

(declare-fun tp!2172163 () Bool)

(declare-fun tp!2172164 () Bool)

(assert (=> b!7486368 (= e!4464827 (and tp!2172163 tp!2172164))))

(assert (=> b!7486021 (= tp!2171969 e!4464827)))

(declare-fun b!7486366 () Bool)

(declare-fun tp!2172162 () Bool)

(declare-fun tp!2172165 () Bool)

(assert (=> b!7486366 (= e!4464827 (and tp!2172162 tp!2172165))))

(declare-fun b!7486365 () Bool)

(assert (=> b!7486365 (= e!4464827 tp_is_empty!49535)))

(declare-fun b!7486367 () Bool)

(declare-fun tp!2172161 () Bool)

(assert (=> b!7486367 (= e!4464827 tp!2172161)))

(assert (= (and b!7486021 ((_ is ElementMatch!19623) (regTwo!39758 (regTwo!39758 rTail!78)))) b!7486365))

(assert (= (and b!7486021 ((_ is Concat!28468) (regTwo!39758 (regTwo!39758 rTail!78)))) b!7486366))

(assert (= (and b!7486021 ((_ is Star!19623) (regTwo!39758 (regTwo!39758 rTail!78)))) b!7486367))

(assert (= (and b!7486021 ((_ is Union!19623) (regTwo!39758 (regTwo!39758 rTail!78)))) b!7486368))

(declare-fun b!7486372 () Bool)

(declare-fun e!4464828 () Bool)

(declare-fun tp!2172168 () Bool)

(declare-fun tp!2172169 () Bool)

(assert (=> b!7486372 (= e!4464828 (and tp!2172168 tp!2172169))))

(assert (=> b!7486064 (= tp!2172015 e!4464828)))

(declare-fun b!7486370 () Bool)

(declare-fun tp!2172167 () Bool)

(declare-fun tp!2172170 () Bool)

(assert (=> b!7486370 (= e!4464828 (and tp!2172167 tp!2172170))))

(declare-fun b!7486369 () Bool)

(assert (=> b!7486369 (= e!4464828 tp_is_empty!49535)))

(declare-fun b!7486371 () Bool)

(declare-fun tp!2172166 () Bool)

(assert (=> b!7486371 (= e!4464828 tp!2172166)))

(assert (= (and b!7486064 ((_ is ElementMatch!19623) (regOne!39759 (regTwo!39759 rTail!78)))) b!7486369))

(assert (= (and b!7486064 ((_ is Concat!28468) (regOne!39759 (regTwo!39759 rTail!78)))) b!7486370))

(assert (= (and b!7486064 ((_ is Star!19623) (regOne!39759 (regTwo!39759 rTail!78)))) b!7486371))

(assert (= (and b!7486064 ((_ is Union!19623) (regOne!39759 (regTwo!39759 rTail!78)))) b!7486372))

(declare-fun b!7486376 () Bool)

(declare-fun e!4464829 () Bool)

(declare-fun tp!2172173 () Bool)

(declare-fun tp!2172174 () Bool)

(assert (=> b!7486376 (= e!4464829 (and tp!2172173 tp!2172174))))

(assert (=> b!7486064 (= tp!2172016 e!4464829)))

(declare-fun b!7486374 () Bool)

(declare-fun tp!2172172 () Bool)

(declare-fun tp!2172175 () Bool)

(assert (=> b!7486374 (= e!4464829 (and tp!2172172 tp!2172175))))

(declare-fun b!7486373 () Bool)

(assert (=> b!7486373 (= e!4464829 tp_is_empty!49535)))

(declare-fun b!7486375 () Bool)

(declare-fun tp!2172171 () Bool)

(assert (=> b!7486375 (= e!4464829 tp!2172171)))

(assert (= (and b!7486064 ((_ is ElementMatch!19623) (regTwo!39759 (regTwo!39759 rTail!78)))) b!7486373))

(assert (= (and b!7486064 ((_ is Concat!28468) (regTwo!39759 (regTwo!39759 rTail!78)))) b!7486374))

(assert (= (and b!7486064 ((_ is Star!19623) (regTwo!39759 (regTwo!39759 rTail!78)))) b!7486375))

(assert (= (and b!7486064 ((_ is Union!19623) (regTwo!39759 (regTwo!39759 rTail!78)))) b!7486376))

(declare-fun b!7486380 () Bool)

(declare-fun e!4464830 () Bool)

(declare-fun tp!2172178 () Bool)

(declare-fun tp!2172179 () Bool)

(assert (=> b!7486380 (= e!4464830 (and tp!2172178 tp!2172179))))

(assert (=> b!7486071 (= tp!2172023 e!4464830)))

(declare-fun b!7486378 () Bool)

(declare-fun tp!2172177 () Bool)

(declare-fun tp!2172180 () Bool)

(assert (=> b!7486378 (= e!4464830 (and tp!2172177 tp!2172180))))

(declare-fun b!7486377 () Bool)

(assert (=> b!7486377 (= e!4464830 tp_is_empty!49535)))

(declare-fun b!7486379 () Bool)

(declare-fun tp!2172176 () Bool)

(assert (=> b!7486379 (= e!4464830 tp!2172176)))

(assert (= (and b!7486071 ((_ is ElementMatch!19623) (reg!19952 (regOne!39758 r2!5783)))) b!7486377))

(assert (= (and b!7486071 ((_ is Concat!28468) (reg!19952 (regOne!39758 r2!5783)))) b!7486378))

(assert (= (and b!7486071 ((_ is Star!19623) (reg!19952 (regOne!39758 r2!5783)))) b!7486379))

(assert (= (and b!7486071 ((_ is Union!19623) (reg!19952 (regOne!39758 r2!5783)))) b!7486380))

(declare-fun b!7486384 () Bool)

(declare-fun e!4464831 () Bool)

(declare-fun tp!2172183 () Bool)

(declare-fun tp!2172184 () Bool)

(assert (=> b!7486384 (= e!4464831 (and tp!2172183 tp!2172184))))

(assert (=> b!7486062 (= tp!2172014 e!4464831)))

(declare-fun b!7486382 () Bool)

(declare-fun tp!2172182 () Bool)

(declare-fun tp!2172185 () Bool)

(assert (=> b!7486382 (= e!4464831 (and tp!2172182 tp!2172185))))

(declare-fun b!7486381 () Bool)

(assert (=> b!7486381 (= e!4464831 tp_is_empty!49535)))

(declare-fun b!7486383 () Bool)

(declare-fun tp!2172181 () Bool)

(assert (=> b!7486383 (= e!4464831 tp!2172181)))

(assert (= (and b!7486062 ((_ is ElementMatch!19623) (regOne!39758 (regTwo!39759 rTail!78)))) b!7486381))

(assert (= (and b!7486062 ((_ is Concat!28468) (regOne!39758 (regTwo!39759 rTail!78)))) b!7486382))

(assert (= (and b!7486062 ((_ is Star!19623) (regOne!39758 (regTwo!39759 rTail!78)))) b!7486383))

(assert (= (and b!7486062 ((_ is Union!19623) (regOne!39758 (regTwo!39759 rTail!78)))) b!7486384))

(declare-fun b!7486388 () Bool)

(declare-fun e!4464832 () Bool)

(declare-fun tp!2172188 () Bool)

(declare-fun tp!2172189 () Bool)

(assert (=> b!7486388 (= e!4464832 (and tp!2172188 tp!2172189))))

(assert (=> b!7486062 (= tp!2172017 e!4464832)))

(declare-fun b!7486386 () Bool)

(declare-fun tp!2172187 () Bool)

(declare-fun tp!2172190 () Bool)

(assert (=> b!7486386 (= e!4464832 (and tp!2172187 tp!2172190))))

(declare-fun b!7486385 () Bool)

(assert (=> b!7486385 (= e!4464832 tp_is_empty!49535)))

(declare-fun b!7486387 () Bool)

(declare-fun tp!2172186 () Bool)

(assert (=> b!7486387 (= e!4464832 tp!2172186)))

(assert (= (and b!7486062 ((_ is ElementMatch!19623) (regTwo!39758 (regTwo!39759 rTail!78)))) b!7486385))

(assert (= (and b!7486062 ((_ is Concat!28468) (regTwo!39758 (regTwo!39759 rTail!78)))) b!7486386))

(assert (= (and b!7486062 ((_ is Star!19623) (regTwo!39758 (regTwo!39759 rTail!78)))) b!7486387))

(assert (= (and b!7486062 ((_ is Union!19623) (regTwo!39758 (regTwo!39759 rTail!78)))) b!7486388))

(declare-fun b!7486392 () Bool)

(declare-fun e!4464833 () Bool)

(declare-fun tp!2172193 () Bool)

(declare-fun tp!2172194 () Bool)

(assert (=> b!7486392 (= e!4464833 (and tp!2172193 tp!2172194))))

(assert (=> b!7486038 (= tp!2171985 e!4464833)))

(declare-fun b!7486390 () Bool)

(declare-fun tp!2172192 () Bool)

(declare-fun tp!2172195 () Bool)

(assert (=> b!7486390 (= e!4464833 (and tp!2172192 tp!2172195))))

(declare-fun b!7486389 () Bool)

(assert (=> b!7486389 (= e!4464833 tp_is_empty!49535)))

(declare-fun b!7486391 () Bool)

(declare-fun tp!2172191 () Bool)

(assert (=> b!7486391 (= e!4464833 tp!2172191)))

(assert (= (and b!7486038 ((_ is ElementMatch!19623) (reg!19952 (regOne!39758 r1!5845)))) b!7486389))

(assert (= (and b!7486038 ((_ is Concat!28468) (reg!19952 (regOne!39758 r1!5845)))) b!7486390))

(assert (= (and b!7486038 ((_ is Star!19623) (reg!19952 (regOne!39758 r1!5845)))) b!7486391))

(assert (= (and b!7486038 ((_ is Union!19623) (reg!19952 (regOne!39758 r1!5845)))) b!7486392))

(declare-fun b!7486396 () Bool)

(declare-fun e!4464834 () Bool)

(declare-fun tp!2172198 () Bool)

(declare-fun tp!2172199 () Bool)

(assert (=> b!7486396 (= e!4464834 (and tp!2172198 tp!2172199))))

(assert (=> b!7486029 (= tp!2171976 e!4464834)))

(declare-fun b!7486394 () Bool)

(declare-fun tp!2172197 () Bool)

(declare-fun tp!2172200 () Bool)

(assert (=> b!7486394 (= e!4464834 (and tp!2172197 tp!2172200))))

(declare-fun b!7486393 () Bool)

(assert (=> b!7486393 (= e!4464834 tp_is_empty!49535)))

(declare-fun b!7486395 () Bool)

(declare-fun tp!2172196 () Bool)

(assert (=> b!7486395 (= e!4464834 tp!2172196)))

(assert (= (and b!7486029 ((_ is ElementMatch!19623) (regOne!39758 (regOne!39759 r2!5783)))) b!7486393))

(assert (= (and b!7486029 ((_ is Concat!28468) (regOne!39758 (regOne!39759 r2!5783)))) b!7486394))

(assert (= (and b!7486029 ((_ is Star!19623) (regOne!39758 (regOne!39759 r2!5783)))) b!7486395))

(assert (= (and b!7486029 ((_ is Union!19623) (regOne!39758 (regOne!39759 r2!5783)))) b!7486396))

(declare-fun b!7486400 () Bool)

(declare-fun e!4464835 () Bool)

(declare-fun tp!2172203 () Bool)

(declare-fun tp!2172204 () Bool)

(assert (=> b!7486400 (= e!4464835 (and tp!2172203 tp!2172204))))

(assert (=> b!7486029 (= tp!2171979 e!4464835)))

(declare-fun b!7486398 () Bool)

(declare-fun tp!2172202 () Bool)

(declare-fun tp!2172205 () Bool)

(assert (=> b!7486398 (= e!4464835 (and tp!2172202 tp!2172205))))

(declare-fun b!7486397 () Bool)

(assert (=> b!7486397 (= e!4464835 tp_is_empty!49535)))

(declare-fun b!7486399 () Bool)

(declare-fun tp!2172201 () Bool)

(assert (=> b!7486399 (= e!4464835 tp!2172201)))

(assert (= (and b!7486029 ((_ is ElementMatch!19623) (regTwo!39758 (regOne!39759 r2!5783)))) b!7486397))

(assert (= (and b!7486029 ((_ is Concat!28468) (regTwo!39758 (regOne!39759 r2!5783)))) b!7486398))

(assert (= (and b!7486029 ((_ is Star!19623) (regTwo!39758 (regOne!39759 r2!5783)))) b!7486399))

(assert (= (and b!7486029 ((_ is Union!19623) (regTwo!39758 (regOne!39759 r2!5783)))) b!7486400))

(declare-fun b!7486404 () Bool)

(declare-fun e!4464836 () Bool)

(declare-fun tp!2172208 () Bool)

(declare-fun tp!2172209 () Bool)

(assert (=> b!7486404 (= e!4464836 (and tp!2172208 tp!2172209))))

(assert (=> b!7486072 (= tp!2172025 e!4464836)))

(declare-fun b!7486402 () Bool)

(declare-fun tp!2172207 () Bool)

(declare-fun tp!2172210 () Bool)

(assert (=> b!7486402 (= e!4464836 (and tp!2172207 tp!2172210))))

(declare-fun b!7486401 () Bool)

(assert (=> b!7486401 (= e!4464836 tp_is_empty!49535)))

(declare-fun b!7486403 () Bool)

(declare-fun tp!2172206 () Bool)

(assert (=> b!7486403 (= e!4464836 tp!2172206)))

(assert (= (and b!7486072 ((_ is ElementMatch!19623) (regOne!39759 (regOne!39758 r2!5783)))) b!7486401))

(assert (= (and b!7486072 ((_ is Concat!28468) (regOne!39759 (regOne!39758 r2!5783)))) b!7486402))

(assert (= (and b!7486072 ((_ is Star!19623) (regOne!39759 (regOne!39758 r2!5783)))) b!7486403))

(assert (= (and b!7486072 ((_ is Union!19623) (regOne!39759 (regOne!39758 r2!5783)))) b!7486404))

(declare-fun b!7486408 () Bool)

(declare-fun e!4464837 () Bool)

(declare-fun tp!2172213 () Bool)

(declare-fun tp!2172214 () Bool)

(assert (=> b!7486408 (= e!4464837 (and tp!2172213 tp!2172214))))

(assert (=> b!7486072 (= tp!2172026 e!4464837)))

(declare-fun b!7486406 () Bool)

(declare-fun tp!2172212 () Bool)

(declare-fun tp!2172215 () Bool)

(assert (=> b!7486406 (= e!4464837 (and tp!2172212 tp!2172215))))

(declare-fun b!7486405 () Bool)

(assert (=> b!7486405 (= e!4464837 tp_is_empty!49535)))

(declare-fun b!7486407 () Bool)

(declare-fun tp!2172211 () Bool)

(assert (=> b!7486407 (= e!4464837 tp!2172211)))

(assert (= (and b!7486072 ((_ is ElementMatch!19623) (regTwo!39759 (regOne!39758 r2!5783)))) b!7486405))

(assert (= (and b!7486072 ((_ is Concat!28468) (regTwo!39759 (regOne!39758 r2!5783)))) b!7486406))

(assert (= (and b!7486072 ((_ is Star!19623) (regTwo!39759 (regOne!39758 r2!5783)))) b!7486407))

(assert (= (and b!7486072 ((_ is Union!19623) (regTwo!39759 (regOne!39758 r2!5783)))) b!7486408))

(declare-fun b!7486412 () Bool)

(declare-fun e!4464838 () Bool)

(declare-fun tp!2172218 () Bool)

(declare-fun tp!2172219 () Bool)

(assert (=> b!7486412 (= e!4464838 (and tp!2172218 tp!2172219))))

(assert (=> b!7486023 (= tp!2171967 e!4464838)))

(declare-fun b!7486410 () Bool)

(declare-fun tp!2172217 () Bool)

(declare-fun tp!2172220 () Bool)

(assert (=> b!7486410 (= e!4464838 (and tp!2172217 tp!2172220))))

(declare-fun b!7486409 () Bool)

(assert (=> b!7486409 (= e!4464838 tp_is_empty!49535)))

(declare-fun b!7486411 () Bool)

(declare-fun tp!2172216 () Bool)

(assert (=> b!7486411 (= e!4464838 tp!2172216)))

(assert (= (and b!7486023 ((_ is ElementMatch!19623) (regOne!39759 (regTwo!39758 rTail!78)))) b!7486409))

(assert (= (and b!7486023 ((_ is Concat!28468) (regOne!39759 (regTwo!39758 rTail!78)))) b!7486410))

(assert (= (and b!7486023 ((_ is Star!19623) (regOne!39759 (regTwo!39758 rTail!78)))) b!7486411))

(assert (= (and b!7486023 ((_ is Union!19623) (regOne!39759 (regTwo!39758 rTail!78)))) b!7486412))

(declare-fun b!7486416 () Bool)

(declare-fun e!4464839 () Bool)

(declare-fun tp!2172223 () Bool)

(declare-fun tp!2172224 () Bool)

(assert (=> b!7486416 (= e!4464839 (and tp!2172223 tp!2172224))))

(assert (=> b!7486023 (= tp!2171968 e!4464839)))

(declare-fun b!7486414 () Bool)

(declare-fun tp!2172222 () Bool)

(declare-fun tp!2172225 () Bool)

(assert (=> b!7486414 (= e!4464839 (and tp!2172222 tp!2172225))))

(declare-fun b!7486413 () Bool)

(assert (=> b!7486413 (= e!4464839 tp_is_empty!49535)))

(declare-fun b!7486415 () Bool)

(declare-fun tp!2172221 () Bool)

(assert (=> b!7486415 (= e!4464839 tp!2172221)))

(assert (= (and b!7486023 ((_ is ElementMatch!19623) (regTwo!39759 (regTwo!39758 rTail!78)))) b!7486413))

(assert (= (and b!7486023 ((_ is Concat!28468) (regTwo!39759 (regTwo!39758 rTail!78)))) b!7486414))

(assert (= (and b!7486023 ((_ is Star!19623) (regTwo!39759 (regTwo!39758 rTail!78)))) b!7486415))

(assert (= (and b!7486023 ((_ is Union!19623) (regTwo!39759 (regTwo!39758 rTail!78)))) b!7486416))

(declare-fun b!7486417 () Bool)

(declare-fun e!4464840 () Bool)

(declare-fun tp!2172226 () Bool)

(assert (=> b!7486417 (= e!4464840 (and tp_is_empty!49535 tp!2172226))))

(assert (=> b!7486048 (= tp!2171997 e!4464840)))

(assert (= (and b!7486048 ((_ is Cons!72213) (t!386906 (t!386906 s!13591)))) b!7486417))

(declare-fun b!7486421 () Bool)

(declare-fun e!4464841 () Bool)

(declare-fun tp!2172229 () Bool)

(declare-fun tp!2172230 () Bool)

(assert (=> b!7486421 (= e!4464841 (and tp!2172229 tp!2172230))))

(assert (=> b!7486031 (= tp!2171977 e!4464841)))

(declare-fun b!7486419 () Bool)

(declare-fun tp!2172228 () Bool)

(declare-fun tp!2172231 () Bool)

(assert (=> b!7486419 (= e!4464841 (and tp!2172228 tp!2172231))))

(declare-fun b!7486418 () Bool)

(assert (=> b!7486418 (= e!4464841 tp_is_empty!49535)))

(declare-fun b!7486420 () Bool)

(declare-fun tp!2172227 () Bool)

(assert (=> b!7486420 (= e!4464841 tp!2172227)))

(assert (= (and b!7486031 ((_ is ElementMatch!19623) (regOne!39759 (regOne!39759 r2!5783)))) b!7486418))

(assert (= (and b!7486031 ((_ is Concat!28468) (regOne!39759 (regOne!39759 r2!5783)))) b!7486419))

(assert (= (and b!7486031 ((_ is Star!19623) (regOne!39759 (regOne!39759 r2!5783)))) b!7486420))

(assert (= (and b!7486031 ((_ is Union!19623) (regOne!39759 (regOne!39759 r2!5783)))) b!7486421))

(declare-fun b!7486425 () Bool)

(declare-fun e!4464842 () Bool)

(declare-fun tp!2172234 () Bool)

(declare-fun tp!2172235 () Bool)

(assert (=> b!7486425 (= e!4464842 (and tp!2172234 tp!2172235))))

(assert (=> b!7486031 (= tp!2171978 e!4464842)))

(declare-fun b!7486423 () Bool)

(declare-fun tp!2172233 () Bool)

(declare-fun tp!2172236 () Bool)

(assert (=> b!7486423 (= e!4464842 (and tp!2172233 tp!2172236))))

(declare-fun b!7486422 () Bool)

(assert (=> b!7486422 (= e!4464842 tp_is_empty!49535)))

(declare-fun b!7486424 () Bool)

(declare-fun tp!2172232 () Bool)

(assert (=> b!7486424 (= e!4464842 tp!2172232)))

(assert (= (and b!7486031 ((_ is ElementMatch!19623) (regTwo!39759 (regOne!39759 r2!5783)))) b!7486422))

(assert (= (and b!7486031 ((_ is Concat!28468) (regTwo!39759 (regOne!39759 r2!5783)))) b!7486423))

(assert (= (and b!7486031 ((_ is Star!19623) (regTwo!39759 (regOne!39759 r2!5783)))) b!7486424))

(assert (= (and b!7486031 ((_ is Union!19623) (regTwo!39759 (regOne!39759 r2!5783)))) b!7486425))

(declare-fun b!7486429 () Bool)

(declare-fun e!4464843 () Bool)

(declare-fun tp!2172239 () Bool)

(declare-fun tp!2172240 () Bool)

(assert (=> b!7486429 (= e!4464843 (and tp!2172239 tp!2172240))))

(assert (=> b!7486055 (= tp!2172003 e!4464843)))

(declare-fun b!7486427 () Bool)

(declare-fun tp!2172238 () Bool)

(declare-fun tp!2172241 () Bool)

(assert (=> b!7486427 (= e!4464843 (and tp!2172238 tp!2172241))))

(declare-fun b!7486426 () Bool)

(assert (=> b!7486426 (= e!4464843 tp_is_empty!49535)))

(declare-fun b!7486428 () Bool)

(declare-fun tp!2172237 () Bool)

(assert (=> b!7486428 (= e!4464843 tp!2172237)))

(assert (= (and b!7486055 ((_ is ElementMatch!19623) (reg!19952 (regTwo!39759 r1!5845)))) b!7486426))

(assert (= (and b!7486055 ((_ is Concat!28468) (reg!19952 (regTwo!39759 r1!5845)))) b!7486427))

(assert (= (and b!7486055 ((_ is Star!19623) (reg!19952 (regTwo!39759 r1!5845)))) b!7486428))

(assert (= (and b!7486055 ((_ is Union!19623) (reg!19952 (regTwo!39759 r1!5845)))) b!7486429))

(declare-fun b!7486433 () Bool)

(declare-fun e!4464844 () Bool)

(declare-fun tp!2172244 () Bool)

(declare-fun tp!2172245 () Bool)

(assert (=> b!7486433 (= e!4464844 (and tp!2172244 tp!2172245))))

(assert (=> b!7486022 (= tp!2171965 e!4464844)))

(declare-fun b!7486431 () Bool)

(declare-fun tp!2172243 () Bool)

(declare-fun tp!2172246 () Bool)

(assert (=> b!7486431 (= e!4464844 (and tp!2172243 tp!2172246))))

(declare-fun b!7486430 () Bool)

(assert (=> b!7486430 (= e!4464844 tp_is_empty!49535)))

(declare-fun b!7486432 () Bool)

(declare-fun tp!2172242 () Bool)

(assert (=> b!7486432 (= e!4464844 tp!2172242)))

(assert (= (and b!7486022 ((_ is ElementMatch!19623) (reg!19952 (regTwo!39758 rTail!78)))) b!7486430))

(assert (= (and b!7486022 ((_ is Concat!28468) (reg!19952 (regTwo!39758 rTail!78)))) b!7486431))

(assert (= (and b!7486022 ((_ is Star!19623) (reg!19952 (regTwo!39758 rTail!78)))) b!7486432))

(assert (= (and b!7486022 ((_ is Union!19623) (reg!19952 (regTwo!39758 rTail!78)))) b!7486433))

(declare-fun b!7486437 () Bool)

(declare-fun e!4464845 () Bool)

(declare-fun tp!2172249 () Bool)

(declare-fun tp!2172250 () Bool)

(assert (=> b!7486437 (= e!4464845 (and tp!2172249 tp!2172250))))

(assert (=> b!7486056 (= tp!2172005 e!4464845)))

(declare-fun b!7486435 () Bool)

(declare-fun tp!2172248 () Bool)

(declare-fun tp!2172251 () Bool)

(assert (=> b!7486435 (= e!4464845 (and tp!2172248 tp!2172251))))

(declare-fun b!7486434 () Bool)

(assert (=> b!7486434 (= e!4464845 tp_is_empty!49535)))

(declare-fun b!7486436 () Bool)

(declare-fun tp!2172247 () Bool)

(assert (=> b!7486436 (= e!4464845 tp!2172247)))

(assert (= (and b!7486056 ((_ is ElementMatch!19623) (regOne!39759 (regTwo!39759 r1!5845)))) b!7486434))

(assert (= (and b!7486056 ((_ is Concat!28468) (regOne!39759 (regTwo!39759 r1!5845)))) b!7486435))

(assert (= (and b!7486056 ((_ is Star!19623) (regOne!39759 (regTwo!39759 r1!5845)))) b!7486436))

(assert (= (and b!7486056 ((_ is Union!19623) (regOne!39759 (regTwo!39759 r1!5845)))) b!7486437))

(declare-fun b!7486441 () Bool)

(declare-fun e!4464846 () Bool)

(declare-fun tp!2172254 () Bool)

(declare-fun tp!2172255 () Bool)

(assert (=> b!7486441 (= e!4464846 (and tp!2172254 tp!2172255))))

(assert (=> b!7486056 (= tp!2172006 e!4464846)))

(declare-fun b!7486439 () Bool)

(declare-fun tp!2172253 () Bool)

(declare-fun tp!2172256 () Bool)

(assert (=> b!7486439 (= e!4464846 (and tp!2172253 tp!2172256))))

(declare-fun b!7486438 () Bool)

(assert (=> b!7486438 (= e!4464846 tp_is_empty!49535)))

(declare-fun b!7486440 () Bool)

(declare-fun tp!2172252 () Bool)

(assert (=> b!7486440 (= e!4464846 tp!2172252)))

(assert (= (and b!7486056 ((_ is ElementMatch!19623) (regTwo!39759 (regTwo!39759 r1!5845)))) b!7486438))

(assert (= (and b!7486056 ((_ is Concat!28468) (regTwo!39759 (regTwo!39759 r1!5845)))) b!7486439))

(assert (= (and b!7486056 ((_ is Star!19623) (regTwo!39759 (regTwo!39759 r1!5845)))) b!7486440))

(assert (= (and b!7486056 ((_ is Union!19623) (regTwo!39759 (regTwo!39759 r1!5845)))) b!7486441))

(declare-fun b!7486445 () Bool)

(declare-fun e!4464847 () Bool)

(declare-fun tp!2172259 () Bool)

(declare-fun tp!2172260 () Bool)

(assert (=> b!7486445 (= e!4464847 (and tp!2172259 tp!2172260))))

(assert (=> b!7486041 (= tp!2171991 e!4464847)))

(declare-fun b!7486443 () Bool)

(declare-fun tp!2172258 () Bool)

(declare-fun tp!2172261 () Bool)

(assert (=> b!7486443 (= e!4464847 (and tp!2172258 tp!2172261))))

(declare-fun b!7486442 () Bool)

(assert (=> b!7486442 (= e!4464847 tp_is_empty!49535)))

(declare-fun b!7486444 () Bool)

(declare-fun tp!2172257 () Bool)

(assert (=> b!7486444 (= e!4464847 tp!2172257)))

(assert (= (and b!7486041 ((_ is ElementMatch!19623) (regOne!39758 (regTwo!39758 r1!5845)))) b!7486442))

(assert (= (and b!7486041 ((_ is Concat!28468) (regOne!39758 (regTwo!39758 r1!5845)))) b!7486443))

(assert (= (and b!7486041 ((_ is Star!19623) (regOne!39758 (regTwo!39758 r1!5845)))) b!7486444))

(assert (= (and b!7486041 ((_ is Union!19623) (regOne!39758 (regTwo!39758 r1!5845)))) b!7486445))

(declare-fun b!7486449 () Bool)

(declare-fun e!4464848 () Bool)

(declare-fun tp!2172264 () Bool)

(declare-fun tp!2172265 () Bool)

(assert (=> b!7486449 (= e!4464848 (and tp!2172264 tp!2172265))))

(assert (=> b!7486041 (= tp!2171994 e!4464848)))

(declare-fun b!7486447 () Bool)

(declare-fun tp!2172263 () Bool)

(declare-fun tp!2172266 () Bool)

(assert (=> b!7486447 (= e!4464848 (and tp!2172263 tp!2172266))))

(declare-fun b!7486446 () Bool)

(assert (=> b!7486446 (= e!4464848 tp_is_empty!49535)))

(declare-fun b!7486448 () Bool)

(declare-fun tp!2172262 () Bool)

(assert (=> b!7486448 (= e!4464848 tp!2172262)))

(assert (= (and b!7486041 ((_ is ElementMatch!19623) (regTwo!39758 (regTwo!39758 r1!5845)))) b!7486446))

(assert (= (and b!7486041 ((_ is Concat!28468) (regTwo!39758 (regTwo!39758 r1!5845)))) b!7486447))

(assert (= (and b!7486041 ((_ is Star!19623) (regTwo!39758 (regTwo!39758 r1!5845)))) b!7486448))

(assert (= (and b!7486041 ((_ is Union!19623) (regTwo!39758 (regTwo!39758 r1!5845)))) b!7486449))

(declare-fun b!7486453 () Bool)

(declare-fun e!4464849 () Bool)

(declare-fun tp!2172269 () Bool)

(declare-fun tp!2172270 () Bool)

(assert (=> b!7486453 (= e!4464849 (and tp!2172269 tp!2172270))))

(assert (=> b!7486075 (= tp!2172028 e!4464849)))

(declare-fun b!7486451 () Bool)

(declare-fun tp!2172268 () Bool)

(declare-fun tp!2172271 () Bool)

(assert (=> b!7486451 (= e!4464849 (and tp!2172268 tp!2172271))))

(declare-fun b!7486450 () Bool)

(assert (=> b!7486450 (= e!4464849 tp_is_empty!49535)))

(declare-fun b!7486452 () Bool)

(declare-fun tp!2172267 () Bool)

(assert (=> b!7486452 (= e!4464849 tp!2172267)))

(assert (= (and b!7486075 ((_ is ElementMatch!19623) (reg!19952 (regTwo!39758 r2!5783)))) b!7486450))

(assert (= (and b!7486075 ((_ is Concat!28468) (reg!19952 (regTwo!39758 r2!5783)))) b!7486451))

(assert (= (and b!7486075 ((_ is Star!19623) (reg!19952 (regTwo!39758 r2!5783)))) b!7486452))

(assert (= (and b!7486075 ((_ is Union!19623) (reg!19952 (regTwo!39758 r2!5783)))) b!7486453))

(declare-fun b!7486457 () Bool)

(declare-fun e!4464850 () Bool)

(declare-fun tp!2172274 () Bool)

(declare-fun tp!2172275 () Bool)

(assert (=> b!7486457 (= e!4464850 (and tp!2172274 tp!2172275))))

(assert (=> b!7486066 (= tp!2172019 e!4464850)))

(declare-fun b!7486455 () Bool)

(declare-fun tp!2172273 () Bool)

(declare-fun tp!2172276 () Bool)

(assert (=> b!7486455 (= e!4464850 (and tp!2172273 tp!2172276))))

(declare-fun b!7486454 () Bool)

(assert (=> b!7486454 (= e!4464850 tp_is_empty!49535)))

(declare-fun b!7486456 () Bool)

(declare-fun tp!2172272 () Bool)

(assert (=> b!7486456 (= e!4464850 tp!2172272)))

(assert (= (and b!7486066 ((_ is ElementMatch!19623) (regOne!39758 (reg!19952 rTail!78)))) b!7486454))

(assert (= (and b!7486066 ((_ is Concat!28468) (regOne!39758 (reg!19952 rTail!78)))) b!7486455))

(assert (= (and b!7486066 ((_ is Star!19623) (regOne!39758 (reg!19952 rTail!78)))) b!7486456))

(assert (= (and b!7486066 ((_ is Union!19623) (regOne!39758 (reg!19952 rTail!78)))) b!7486457))

(declare-fun b!7486461 () Bool)

(declare-fun e!4464851 () Bool)

(declare-fun tp!2172279 () Bool)

(declare-fun tp!2172280 () Bool)

(assert (=> b!7486461 (= e!4464851 (and tp!2172279 tp!2172280))))

(assert (=> b!7486066 (= tp!2172022 e!4464851)))

(declare-fun b!7486459 () Bool)

(declare-fun tp!2172278 () Bool)

(declare-fun tp!2172281 () Bool)

(assert (=> b!7486459 (= e!4464851 (and tp!2172278 tp!2172281))))

(declare-fun b!7486458 () Bool)

(assert (=> b!7486458 (= e!4464851 tp_is_empty!49535)))

(declare-fun b!7486460 () Bool)

(declare-fun tp!2172277 () Bool)

(assert (=> b!7486460 (= e!4464851 tp!2172277)))

(assert (= (and b!7486066 ((_ is ElementMatch!19623) (regTwo!39758 (reg!19952 rTail!78)))) b!7486458))

(assert (= (and b!7486066 ((_ is Concat!28468) (regTwo!39758 (reg!19952 rTail!78)))) b!7486459))

(assert (= (and b!7486066 ((_ is Star!19623) (regTwo!39758 (reg!19952 rTail!78)))) b!7486460))

(assert (= (and b!7486066 ((_ is Union!19623) (regTwo!39758 (reg!19952 rTail!78)))) b!7486461))

(declare-fun b!7486465 () Bool)

(declare-fun e!4464852 () Bool)

(declare-fun tp!2172284 () Bool)

(declare-fun tp!2172285 () Bool)

(assert (=> b!7486465 (= e!4464852 (and tp!2172284 tp!2172285))))

(assert (=> b!7486042 (= tp!2171990 e!4464852)))

(declare-fun b!7486463 () Bool)

(declare-fun tp!2172283 () Bool)

(declare-fun tp!2172286 () Bool)

(assert (=> b!7486463 (= e!4464852 (and tp!2172283 tp!2172286))))

(declare-fun b!7486462 () Bool)

(assert (=> b!7486462 (= e!4464852 tp_is_empty!49535)))

(declare-fun b!7486464 () Bool)

(declare-fun tp!2172282 () Bool)

(assert (=> b!7486464 (= e!4464852 tp!2172282)))

(assert (= (and b!7486042 ((_ is ElementMatch!19623) (reg!19952 (regTwo!39758 r1!5845)))) b!7486462))

(assert (= (and b!7486042 ((_ is Concat!28468) (reg!19952 (regTwo!39758 r1!5845)))) b!7486463))

(assert (= (and b!7486042 ((_ is Star!19623) (reg!19952 (regTwo!39758 r1!5845)))) b!7486464))

(assert (= (and b!7486042 ((_ is Union!19623) (reg!19952 (regTwo!39758 r1!5845)))) b!7486465))

(declare-fun b!7486469 () Bool)

(declare-fun e!4464853 () Bool)

(declare-fun tp!2172289 () Bool)

(declare-fun tp!2172290 () Bool)

(assert (=> b!7486469 (= e!4464853 (and tp!2172289 tp!2172290))))

(assert (=> b!7486074 (= tp!2172029 e!4464853)))

(declare-fun b!7486467 () Bool)

(declare-fun tp!2172288 () Bool)

(declare-fun tp!2172291 () Bool)

(assert (=> b!7486467 (= e!4464853 (and tp!2172288 tp!2172291))))

(declare-fun b!7486466 () Bool)

(assert (=> b!7486466 (= e!4464853 tp_is_empty!49535)))

(declare-fun b!7486468 () Bool)

(declare-fun tp!2172287 () Bool)

(assert (=> b!7486468 (= e!4464853 tp!2172287)))

(assert (= (and b!7486074 ((_ is ElementMatch!19623) (regOne!39758 (regTwo!39758 r2!5783)))) b!7486466))

(assert (= (and b!7486074 ((_ is Concat!28468) (regOne!39758 (regTwo!39758 r2!5783)))) b!7486467))

(assert (= (and b!7486074 ((_ is Star!19623) (regOne!39758 (regTwo!39758 r2!5783)))) b!7486468))

(assert (= (and b!7486074 ((_ is Union!19623) (regOne!39758 (regTwo!39758 r2!5783)))) b!7486469))

(declare-fun b!7486473 () Bool)

(declare-fun e!4464854 () Bool)

(declare-fun tp!2172294 () Bool)

(declare-fun tp!2172295 () Bool)

(assert (=> b!7486473 (= e!4464854 (and tp!2172294 tp!2172295))))

(assert (=> b!7486074 (= tp!2172032 e!4464854)))

(declare-fun b!7486471 () Bool)

(declare-fun tp!2172293 () Bool)

(declare-fun tp!2172296 () Bool)

(assert (=> b!7486471 (= e!4464854 (and tp!2172293 tp!2172296))))

(declare-fun b!7486470 () Bool)

(assert (=> b!7486470 (= e!4464854 tp_is_empty!49535)))

(declare-fun b!7486472 () Bool)

(declare-fun tp!2172292 () Bool)

(assert (=> b!7486472 (= e!4464854 tp!2172292)))

(assert (= (and b!7486074 ((_ is ElementMatch!19623) (regTwo!39758 (regTwo!39758 r2!5783)))) b!7486470))

(assert (= (and b!7486074 ((_ is Concat!28468) (regTwo!39758 (regTwo!39758 r2!5783)))) b!7486471))

(assert (= (and b!7486074 ((_ is Star!19623) (regTwo!39758 (regTwo!39758 r2!5783)))) b!7486472))

(assert (= (and b!7486074 ((_ is Union!19623) (regTwo!39758 (regTwo!39758 r2!5783)))) b!7486473))

(declare-fun b!7486477 () Bool)

(declare-fun e!4464855 () Bool)

(declare-fun tp!2172299 () Bool)

(declare-fun tp!2172300 () Bool)

(assert (=> b!7486477 (= e!4464855 (and tp!2172299 tp!2172300))))

(assert (=> b!7486025 (= tp!2171971 e!4464855)))

(declare-fun b!7486475 () Bool)

(declare-fun tp!2172298 () Bool)

(declare-fun tp!2172301 () Bool)

(assert (=> b!7486475 (= e!4464855 (and tp!2172298 tp!2172301))))

(declare-fun b!7486474 () Bool)

(assert (=> b!7486474 (= e!4464855 tp_is_empty!49535)))

(declare-fun b!7486476 () Bool)

(declare-fun tp!2172297 () Bool)

(assert (=> b!7486476 (= e!4464855 tp!2172297)))

(assert (= (and b!7486025 ((_ is ElementMatch!19623) (regOne!39758 (reg!19952 r2!5783)))) b!7486474))

(assert (= (and b!7486025 ((_ is Concat!28468) (regOne!39758 (reg!19952 r2!5783)))) b!7486475))

(assert (= (and b!7486025 ((_ is Star!19623) (regOne!39758 (reg!19952 r2!5783)))) b!7486476))

(assert (= (and b!7486025 ((_ is Union!19623) (regOne!39758 (reg!19952 r2!5783)))) b!7486477))

(declare-fun b!7486481 () Bool)

(declare-fun e!4464856 () Bool)

(declare-fun tp!2172304 () Bool)

(declare-fun tp!2172305 () Bool)

(assert (=> b!7486481 (= e!4464856 (and tp!2172304 tp!2172305))))

(assert (=> b!7486025 (= tp!2171974 e!4464856)))

(declare-fun b!7486479 () Bool)

(declare-fun tp!2172303 () Bool)

(declare-fun tp!2172306 () Bool)

(assert (=> b!7486479 (= e!4464856 (and tp!2172303 tp!2172306))))

(declare-fun b!7486478 () Bool)

(assert (=> b!7486478 (= e!4464856 tp_is_empty!49535)))

(declare-fun b!7486480 () Bool)

(declare-fun tp!2172302 () Bool)

(assert (=> b!7486480 (= e!4464856 tp!2172302)))

(assert (= (and b!7486025 ((_ is ElementMatch!19623) (regTwo!39758 (reg!19952 r2!5783)))) b!7486478))

(assert (= (and b!7486025 ((_ is Concat!28468) (regTwo!39758 (reg!19952 r2!5783)))) b!7486479))

(assert (= (and b!7486025 ((_ is Star!19623) (regTwo!39758 (reg!19952 r2!5783)))) b!7486480))

(assert (= (and b!7486025 ((_ is Union!19623) (regTwo!39758 (reg!19952 r2!5783)))) b!7486481))

(declare-fun b!7486485 () Bool)

(declare-fun e!4464857 () Bool)

(declare-fun tp!2172309 () Bool)

(declare-fun tp!2172310 () Bool)

(assert (=> b!7486485 (= e!4464857 (and tp!2172309 tp!2172310))))

(assert (=> b!7486068 (= tp!2172020 e!4464857)))

(declare-fun b!7486483 () Bool)

(declare-fun tp!2172308 () Bool)

(declare-fun tp!2172311 () Bool)

(assert (=> b!7486483 (= e!4464857 (and tp!2172308 tp!2172311))))

(declare-fun b!7486482 () Bool)

(assert (=> b!7486482 (= e!4464857 tp_is_empty!49535)))

(declare-fun b!7486484 () Bool)

(declare-fun tp!2172307 () Bool)

(assert (=> b!7486484 (= e!4464857 tp!2172307)))

(assert (= (and b!7486068 ((_ is ElementMatch!19623) (regOne!39759 (reg!19952 rTail!78)))) b!7486482))

(assert (= (and b!7486068 ((_ is Concat!28468) (regOne!39759 (reg!19952 rTail!78)))) b!7486483))

(assert (= (and b!7486068 ((_ is Star!19623) (regOne!39759 (reg!19952 rTail!78)))) b!7486484))

(assert (= (and b!7486068 ((_ is Union!19623) (regOne!39759 (reg!19952 rTail!78)))) b!7486485))

(declare-fun b!7486489 () Bool)

(declare-fun e!4464858 () Bool)

(declare-fun tp!2172314 () Bool)

(declare-fun tp!2172315 () Bool)

(assert (=> b!7486489 (= e!4464858 (and tp!2172314 tp!2172315))))

(assert (=> b!7486068 (= tp!2172021 e!4464858)))

(declare-fun b!7486487 () Bool)

(declare-fun tp!2172313 () Bool)

(declare-fun tp!2172316 () Bool)

(assert (=> b!7486487 (= e!4464858 (and tp!2172313 tp!2172316))))

(declare-fun b!7486486 () Bool)

(assert (=> b!7486486 (= e!4464858 tp_is_empty!49535)))

(declare-fun b!7486488 () Bool)

(declare-fun tp!2172312 () Bool)

(assert (=> b!7486488 (= e!4464858 tp!2172312)))

(assert (= (and b!7486068 ((_ is ElementMatch!19623) (regTwo!39759 (reg!19952 rTail!78)))) b!7486486))

(assert (= (and b!7486068 ((_ is Concat!28468) (regTwo!39759 (reg!19952 rTail!78)))) b!7486487))

(assert (= (and b!7486068 ((_ is Star!19623) (regTwo!39759 (reg!19952 rTail!78)))) b!7486488))

(assert (= (and b!7486068 ((_ is Union!19623) (regTwo!39759 (reg!19952 rTail!78)))) b!7486489))

(declare-fun b!7486493 () Bool)

(declare-fun e!4464859 () Bool)

(declare-fun tp!2172319 () Bool)

(declare-fun tp!2172320 () Bool)

(assert (=> b!7486493 (= e!4464859 (and tp!2172319 tp!2172320))))

(assert (=> b!7486035 (= tp!2171982 e!4464859)))

(declare-fun b!7486491 () Bool)

(declare-fun tp!2172318 () Bool)

(declare-fun tp!2172321 () Bool)

(assert (=> b!7486491 (= e!4464859 (and tp!2172318 tp!2172321))))

(declare-fun b!7486490 () Bool)

(assert (=> b!7486490 (= e!4464859 tp_is_empty!49535)))

(declare-fun b!7486492 () Bool)

(declare-fun tp!2172317 () Bool)

(assert (=> b!7486492 (= e!4464859 tp!2172317)))

(assert (= (and b!7486035 ((_ is ElementMatch!19623) (regOne!39759 (regTwo!39759 r2!5783)))) b!7486490))

(assert (= (and b!7486035 ((_ is Concat!28468) (regOne!39759 (regTwo!39759 r2!5783)))) b!7486491))

(assert (= (and b!7486035 ((_ is Star!19623) (regOne!39759 (regTwo!39759 r2!5783)))) b!7486492))

(assert (= (and b!7486035 ((_ is Union!19623) (regOne!39759 (regTwo!39759 r2!5783)))) b!7486493))

(declare-fun b!7486497 () Bool)

(declare-fun e!4464860 () Bool)

(declare-fun tp!2172324 () Bool)

(declare-fun tp!2172325 () Bool)

(assert (=> b!7486497 (= e!4464860 (and tp!2172324 tp!2172325))))

(assert (=> b!7486035 (= tp!2171983 e!4464860)))

(declare-fun b!7486495 () Bool)

(declare-fun tp!2172323 () Bool)

(declare-fun tp!2172326 () Bool)

(assert (=> b!7486495 (= e!4464860 (and tp!2172323 tp!2172326))))

(declare-fun b!7486494 () Bool)

(assert (=> b!7486494 (= e!4464860 tp_is_empty!49535)))

(declare-fun b!7486496 () Bool)

(declare-fun tp!2172322 () Bool)

(assert (=> b!7486496 (= e!4464860 tp!2172322)))

(assert (= (and b!7486035 ((_ is ElementMatch!19623) (regTwo!39759 (regTwo!39759 r2!5783)))) b!7486494))

(assert (= (and b!7486035 ((_ is Concat!28468) (regTwo!39759 (regTwo!39759 r2!5783)))) b!7486495))

(assert (= (and b!7486035 ((_ is Star!19623) (regTwo!39759 (regTwo!39759 r2!5783)))) b!7486496))

(assert (= (and b!7486035 ((_ is Union!19623) (regTwo!39759 (regTwo!39759 r2!5783)))) b!7486497))

(declare-fun b!7486501 () Bool)

(declare-fun e!4464861 () Bool)

(declare-fun tp!2172329 () Bool)

(declare-fun tp!2172330 () Bool)

(assert (=> b!7486501 (= e!4464861 (and tp!2172329 tp!2172330))))

(assert (=> b!7486059 (= tp!2172008 e!4464861)))

(declare-fun b!7486499 () Bool)

(declare-fun tp!2172328 () Bool)

(declare-fun tp!2172331 () Bool)

(assert (=> b!7486499 (= e!4464861 (and tp!2172328 tp!2172331))))

(declare-fun b!7486498 () Bool)

(assert (=> b!7486498 (= e!4464861 tp_is_empty!49535)))

(declare-fun b!7486500 () Bool)

(declare-fun tp!2172327 () Bool)

(assert (=> b!7486500 (= e!4464861 tp!2172327)))

(assert (= (and b!7486059 ((_ is ElementMatch!19623) (reg!19952 (regOne!39759 rTail!78)))) b!7486498))

(assert (= (and b!7486059 ((_ is Concat!28468) (reg!19952 (regOne!39759 rTail!78)))) b!7486499))

(assert (= (and b!7486059 ((_ is Star!19623) (reg!19952 (regOne!39759 rTail!78)))) b!7486500))

(assert (= (and b!7486059 ((_ is Union!19623) (reg!19952 (regOne!39759 rTail!78)))) b!7486501))

(declare-fun b!7486505 () Bool)

(declare-fun e!4464862 () Bool)

(declare-fun tp!2172334 () Bool)

(declare-fun tp!2172335 () Bool)

(assert (=> b!7486505 (= e!4464862 (and tp!2172334 tp!2172335))))

(assert (=> b!7486026 (= tp!2171970 e!4464862)))

(declare-fun b!7486503 () Bool)

(declare-fun tp!2172333 () Bool)

(declare-fun tp!2172336 () Bool)

(assert (=> b!7486503 (= e!4464862 (and tp!2172333 tp!2172336))))

(declare-fun b!7486502 () Bool)

(assert (=> b!7486502 (= e!4464862 tp_is_empty!49535)))

(declare-fun b!7486504 () Bool)

(declare-fun tp!2172332 () Bool)

(assert (=> b!7486504 (= e!4464862 tp!2172332)))

(assert (= (and b!7486026 ((_ is ElementMatch!19623) (reg!19952 (reg!19952 r2!5783)))) b!7486502))

(assert (= (and b!7486026 ((_ is Concat!28468) (reg!19952 (reg!19952 r2!5783)))) b!7486503))

(assert (= (and b!7486026 ((_ is Star!19623) (reg!19952 (reg!19952 r2!5783)))) b!7486504))

(assert (= (and b!7486026 ((_ is Union!19623) (reg!19952 (reg!19952 r2!5783)))) b!7486505))

(declare-fun b!7486509 () Bool)

(declare-fun e!4464863 () Bool)

(declare-fun tp!2172339 () Bool)

(declare-fun tp!2172340 () Bool)

(assert (=> b!7486509 (= e!4464863 (and tp!2172339 tp!2172340))))

(assert (=> b!7486050 (= tp!2171999 e!4464863)))

(declare-fun b!7486507 () Bool)

(declare-fun tp!2172338 () Bool)

(declare-fun tp!2172341 () Bool)

(assert (=> b!7486507 (= e!4464863 (and tp!2172338 tp!2172341))))

(declare-fun b!7486506 () Bool)

(assert (=> b!7486506 (= e!4464863 tp_is_empty!49535)))

(declare-fun b!7486508 () Bool)

(declare-fun tp!2172337 () Bool)

(assert (=> b!7486508 (= e!4464863 tp!2172337)))

(assert (= (and b!7486050 ((_ is ElementMatch!19623) (regOne!39758 (regOne!39759 r1!5845)))) b!7486506))

(assert (= (and b!7486050 ((_ is Concat!28468) (regOne!39758 (regOne!39759 r1!5845)))) b!7486507))

(assert (= (and b!7486050 ((_ is Star!19623) (regOne!39758 (regOne!39759 r1!5845)))) b!7486508))

(assert (= (and b!7486050 ((_ is Union!19623) (regOne!39758 (regOne!39759 r1!5845)))) b!7486509))

(declare-fun b!7486513 () Bool)

(declare-fun e!4464864 () Bool)

(declare-fun tp!2172344 () Bool)

(declare-fun tp!2172345 () Bool)

(assert (=> b!7486513 (= e!4464864 (and tp!2172344 tp!2172345))))

(assert (=> b!7486050 (= tp!2172002 e!4464864)))

(declare-fun b!7486511 () Bool)

(declare-fun tp!2172343 () Bool)

(declare-fun tp!2172346 () Bool)

(assert (=> b!7486511 (= e!4464864 (and tp!2172343 tp!2172346))))

(declare-fun b!7486510 () Bool)

(assert (=> b!7486510 (= e!4464864 tp_is_empty!49535)))

(declare-fun b!7486512 () Bool)

(declare-fun tp!2172342 () Bool)

(assert (=> b!7486512 (= e!4464864 tp!2172342)))

(assert (= (and b!7486050 ((_ is ElementMatch!19623) (regTwo!39758 (regOne!39759 r1!5845)))) b!7486510))

(assert (= (and b!7486050 ((_ is Concat!28468) (regTwo!39758 (regOne!39759 r1!5845)))) b!7486511))

(assert (= (and b!7486050 ((_ is Star!19623) (regTwo!39758 (regOne!39759 r1!5845)))) b!7486512))

(assert (= (and b!7486050 ((_ is Union!19623) (regTwo!39758 (regOne!39759 r1!5845)))) b!7486513))

(declare-fun b!7486517 () Bool)

(declare-fun e!4464865 () Bool)

(declare-fun tp!2172349 () Bool)

(declare-fun tp!2172350 () Bool)

(assert (=> b!7486517 (= e!4464865 (and tp!2172349 tp!2172350))))

(assert (=> b!7486033 (= tp!2171981 e!4464865)))

(declare-fun b!7486515 () Bool)

(declare-fun tp!2172348 () Bool)

(declare-fun tp!2172351 () Bool)

(assert (=> b!7486515 (= e!4464865 (and tp!2172348 tp!2172351))))

(declare-fun b!7486514 () Bool)

(assert (=> b!7486514 (= e!4464865 tp_is_empty!49535)))

(declare-fun b!7486516 () Bool)

(declare-fun tp!2172347 () Bool)

(assert (=> b!7486516 (= e!4464865 tp!2172347)))

(assert (= (and b!7486033 ((_ is ElementMatch!19623) (regOne!39758 (regTwo!39759 r2!5783)))) b!7486514))

(assert (= (and b!7486033 ((_ is Concat!28468) (regOne!39758 (regTwo!39759 r2!5783)))) b!7486515))

(assert (= (and b!7486033 ((_ is Star!19623) (regOne!39758 (regTwo!39759 r2!5783)))) b!7486516))

(assert (= (and b!7486033 ((_ is Union!19623) (regOne!39758 (regTwo!39759 r2!5783)))) b!7486517))

(declare-fun b!7486521 () Bool)

(declare-fun e!4464866 () Bool)

(declare-fun tp!2172354 () Bool)

(declare-fun tp!2172355 () Bool)

(assert (=> b!7486521 (= e!4464866 (and tp!2172354 tp!2172355))))

(assert (=> b!7486033 (= tp!2171984 e!4464866)))

(declare-fun b!7486519 () Bool)

(declare-fun tp!2172353 () Bool)

(declare-fun tp!2172356 () Bool)

(assert (=> b!7486519 (= e!4464866 (and tp!2172353 tp!2172356))))

(declare-fun b!7486518 () Bool)

(assert (=> b!7486518 (= e!4464866 tp_is_empty!49535)))

(declare-fun b!7486520 () Bool)

(declare-fun tp!2172352 () Bool)

(assert (=> b!7486520 (= e!4464866 tp!2172352)))

(assert (= (and b!7486033 ((_ is ElementMatch!19623) (regTwo!39758 (regTwo!39759 r2!5783)))) b!7486518))

(assert (= (and b!7486033 ((_ is Concat!28468) (regTwo!39758 (regTwo!39759 r2!5783)))) b!7486519))

(assert (= (and b!7486033 ((_ is Star!19623) (regTwo!39758 (regTwo!39759 r2!5783)))) b!7486520))

(assert (= (and b!7486033 ((_ is Union!19623) (regTwo!39758 (regTwo!39759 r2!5783)))) b!7486521))

(declare-fun b!7486525 () Bool)

(declare-fun e!4464867 () Bool)

(declare-fun tp!2172359 () Bool)

(declare-fun tp!2172360 () Bool)

(assert (=> b!7486525 (= e!4464867 (and tp!2172359 tp!2172360))))

(assert (=> b!7486076 (= tp!2172030 e!4464867)))

(declare-fun b!7486523 () Bool)

(declare-fun tp!2172358 () Bool)

(declare-fun tp!2172361 () Bool)

(assert (=> b!7486523 (= e!4464867 (and tp!2172358 tp!2172361))))

(declare-fun b!7486522 () Bool)

(assert (=> b!7486522 (= e!4464867 tp_is_empty!49535)))

(declare-fun b!7486524 () Bool)

(declare-fun tp!2172357 () Bool)

(assert (=> b!7486524 (= e!4464867 tp!2172357)))

(assert (= (and b!7486076 ((_ is ElementMatch!19623) (regOne!39759 (regTwo!39758 r2!5783)))) b!7486522))

(assert (= (and b!7486076 ((_ is Concat!28468) (regOne!39759 (regTwo!39758 r2!5783)))) b!7486523))

(assert (= (and b!7486076 ((_ is Star!19623) (regOne!39759 (regTwo!39758 r2!5783)))) b!7486524))

(assert (= (and b!7486076 ((_ is Union!19623) (regOne!39759 (regTwo!39758 r2!5783)))) b!7486525))

(declare-fun b!7486529 () Bool)

(declare-fun e!4464868 () Bool)

(declare-fun tp!2172364 () Bool)

(declare-fun tp!2172365 () Bool)

(assert (=> b!7486529 (= e!4464868 (and tp!2172364 tp!2172365))))

(assert (=> b!7486076 (= tp!2172031 e!4464868)))

(declare-fun b!7486527 () Bool)

(declare-fun tp!2172363 () Bool)

(declare-fun tp!2172366 () Bool)

(assert (=> b!7486527 (= e!4464868 (and tp!2172363 tp!2172366))))

(declare-fun b!7486526 () Bool)

(assert (=> b!7486526 (= e!4464868 tp_is_empty!49535)))

(declare-fun b!7486528 () Bool)

(declare-fun tp!2172362 () Bool)

(assert (=> b!7486528 (= e!4464868 tp!2172362)))

(assert (= (and b!7486076 ((_ is ElementMatch!19623) (regTwo!39759 (regTwo!39758 r2!5783)))) b!7486526))

(assert (= (and b!7486076 ((_ is Concat!28468) (regTwo!39759 (regTwo!39758 r2!5783)))) b!7486527))

(assert (= (and b!7486076 ((_ is Star!19623) (regTwo!39759 (regTwo!39758 r2!5783)))) b!7486528))

(assert (= (and b!7486076 ((_ is Union!19623) (regTwo!39759 (regTwo!39758 r2!5783)))) b!7486529))

(declare-fun b!7486533 () Bool)

(declare-fun e!4464869 () Bool)

(declare-fun tp!2172369 () Bool)

(declare-fun tp!2172370 () Bool)

(assert (=> b!7486533 (= e!4464869 (and tp!2172369 tp!2172370))))

(assert (=> b!7486067 (= tp!2172018 e!4464869)))

(declare-fun b!7486531 () Bool)

(declare-fun tp!2172368 () Bool)

(declare-fun tp!2172371 () Bool)

(assert (=> b!7486531 (= e!4464869 (and tp!2172368 tp!2172371))))

(declare-fun b!7486530 () Bool)

(assert (=> b!7486530 (= e!4464869 tp_is_empty!49535)))

(declare-fun b!7486532 () Bool)

(declare-fun tp!2172367 () Bool)

(assert (=> b!7486532 (= e!4464869 tp!2172367)))

(assert (= (and b!7486067 ((_ is ElementMatch!19623) (reg!19952 (reg!19952 rTail!78)))) b!7486530))

(assert (= (and b!7486067 ((_ is Concat!28468) (reg!19952 (reg!19952 rTail!78)))) b!7486531))

(assert (= (and b!7486067 ((_ is Star!19623) (reg!19952 (reg!19952 rTail!78)))) b!7486532))

(assert (= (and b!7486067 ((_ is Union!19623) (reg!19952 (reg!19952 rTail!78)))) b!7486533))

(declare-fun b!7486537 () Bool)

(declare-fun e!4464870 () Bool)

(declare-fun tp!2172374 () Bool)

(declare-fun tp!2172375 () Bool)

(assert (=> b!7486537 (= e!4464870 (and tp!2172374 tp!2172375))))

(assert (=> b!7486043 (= tp!2171992 e!4464870)))

(declare-fun b!7486535 () Bool)

(declare-fun tp!2172373 () Bool)

(declare-fun tp!2172376 () Bool)

(assert (=> b!7486535 (= e!4464870 (and tp!2172373 tp!2172376))))

(declare-fun b!7486534 () Bool)

(assert (=> b!7486534 (= e!4464870 tp_is_empty!49535)))

(declare-fun b!7486536 () Bool)

(declare-fun tp!2172372 () Bool)

(assert (=> b!7486536 (= e!4464870 tp!2172372)))

(assert (= (and b!7486043 ((_ is ElementMatch!19623) (regOne!39759 (regTwo!39758 r1!5845)))) b!7486534))

(assert (= (and b!7486043 ((_ is Concat!28468) (regOne!39759 (regTwo!39758 r1!5845)))) b!7486535))

(assert (= (and b!7486043 ((_ is Star!19623) (regOne!39759 (regTwo!39758 r1!5845)))) b!7486536))

(assert (= (and b!7486043 ((_ is Union!19623) (regOne!39759 (regTwo!39758 r1!5845)))) b!7486537))

(declare-fun b!7486541 () Bool)

(declare-fun e!4464871 () Bool)

(declare-fun tp!2172379 () Bool)

(declare-fun tp!2172380 () Bool)

(assert (=> b!7486541 (= e!4464871 (and tp!2172379 tp!2172380))))

(assert (=> b!7486043 (= tp!2171993 e!4464871)))

(declare-fun b!7486539 () Bool)

(declare-fun tp!2172378 () Bool)

(declare-fun tp!2172381 () Bool)

(assert (=> b!7486539 (= e!4464871 (and tp!2172378 tp!2172381))))

(declare-fun b!7486538 () Bool)

(assert (=> b!7486538 (= e!4464871 tp_is_empty!49535)))

(declare-fun b!7486540 () Bool)

(declare-fun tp!2172377 () Bool)

(assert (=> b!7486540 (= e!4464871 tp!2172377)))

(assert (= (and b!7486043 ((_ is ElementMatch!19623) (regTwo!39759 (regTwo!39758 r1!5845)))) b!7486538))

(assert (= (and b!7486043 ((_ is Concat!28468) (regTwo!39759 (regTwo!39758 r1!5845)))) b!7486539))

(assert (= (and b!7486043 ((_ is Star!19623) (regTwo!39759 (regTwo!39758 r1!5845)))) b!7486540))

(assert (= (and b!7486043 ((_ is Union!19623) (regTwo!39759 (regTwo!39758 r1!5845)))) b!7486541))

(declare-fun b!7486545 () Bool)

(declare-fun e!4464872 () Bool)

(declare-fun tp!2172384 () Bool)

(declare-fun tp!2172385 () Bool)

(assert (=> b!7486545 (= e!4464872 (and tp!2172384 tp!2172385))))

(assert (=> b!7486034 (= tp!2171980 e!4464872)))

(declare-fun b!7486543 () Bool)

(declare-fun tp!2172383 () Bool)

(declare-fun tp!2172386 () Bool)

(assert (=> b!7486543 (= e!4464872 (and tp!2172383 tp!2172386))))

(declare-fun b!7486542 () Bool)

(assert (=> b!7486542 (= e!4464872 tp_is_empty!49535)))

(declare-fun b!7486544 () Bool)

(declare-fun tp!2172382 () Bool)

(assert (=> b!7486544 (= e!4464872 tp!2172382)))

(assert (= (and b!7486034 ((_ is ElementMatch!19623) (reg!19952 (regTwo!39759 r2!5783)))) b!7486542))

(assert (= (and b!7486034 ((_ is Concat!28468) (reg!19952 (regTwo!39759 r2!5783)))) b!7486543))

(assert (= (and b!7486034 ((_ is Star!19623) (reg!19952 (regTwo!39759 r2!5783)))) b!7486544))

(assert (= (and b!7486034 ((_ is Union!19623) (reg!19952 (regTwo!39759 r2!5783)))) b!7486545))

(declare-fun b!7486549 () Bool)

(declare-fun e!4464873 () Bool)

(declare-fun tp!2172389 () Bool)

(declare-fun tp!2172390 () Bool)

(assert (=> b!7486549 (= e!4464873 (and tp!2172389 tp!2172390))))

(assert (=> b!7486058 (= tp!2172009 e!4464873)))

(declare-fun b!7486547 () Bool)

(declare-fun tp!2172388 () Bool)

(declare-fun tp!2172391 () Bool)

(assert (=> b!7486547 (= e!4464873 (and tp!2172388 tp!2172391))))

(declare-fun b!7486546 () Bool)

(assert (=> b!7486546 (= e!4464873 tp_is_empty!49535)))

(declare-fun b!7486548 () Bool)

(declare-fun tp!2172387 () Bool)

(assert (=> b!7486548 (= e!4464873 tp!2172387)))

(assert (= (and b!7486058 ((_ is ElementMatch!19623) (regOne!39758 (regOne!39759 rTail!78)))) b!7486546))

(assert (= (and b!7486058 ((_ is Concat!28468) (regOne!39758 (regOne!39759 rTail!78)))) b!7486547))

(assert (= (and b!7486058 ((_ is Star!19623) (regOne!39758 (regOne!39759 rTail!78)))) b!7486548))

(assert (= (and b!7486058 ((_ is Union!19623) (regOne!39758 (regOne!39759 rTail!78)))) b!7486549))

(declare-fun b!7486553 () Bool)

(declare-fun e!4464874 () Bool)

(declare-fun tp!2172394 () Bool)

(declare-fun tp!2172395 () Bool)

(assert (=> b!7486553 (= e!4464874 (and tp!2172394 tp!2172395))))

(assert (=> b!7486058 (= tp!2172012 e!4464874)))

(declare-fun b!7486551 () Bool)

(declare-fun tp!2172393 () Bool)

(declare-fun tp!2172396 () Bool)

(assert (=> b!7486551 (= e!4464874 (and tp!2172393 tp!2172396))))

(declare-fun b!7486550 () Bool)

(assert (=> b!7486550 (= e!4464874 tp_is_empty!49535)))

(declare-fun b!7486552 () Bool)

(declare-fun tp!2172392 () Bool)

(assert (=> b!7486552 (= e!4464874 tp!2172392)))

(assert (= (and b!7486058 ((_ is ElementMatch!19623) (regTwo!39758 (regOne!39759 rTail!78)))) b!7486550))

(assert (= (and b!7486058 ((_ is Concat!28468) (regTwo!39758 (regOne!39759 rTail!78)))) b!7486551))

(assert (= (and b!7486058 ((_ is Star!19623) (regTwo!39758 (regOne!39759 rTail!78)))) b!7486552))

(assert (= (and b!7486058 ((_ is Union!19623) (regTwo!39758 (regOne!39759 rTail!78)))) b!7486553))

(declare-fun b!7486557 () Bool)

(declare-fun e!4464875 () Bool)

(declare-fun tp!2172399 () Bool)

(declare-fun tp!2172400 () Bool)

(assert (=> b!7486557 (= e!4464875 (and tp!2172399 tp!2172400))))

(assert (=> b!7486052 (= tp!2172000 e!4464875)))

(declare-fun b!7486555 () Bool)

(declare-fun tp!2172398 () Bool)

(declare-fun tp!2172401 () Bool)

(assert (=> b!7486555 (= e!4464875 (and tp!2172398 tp!2172401))))

(declare-fun b!7486554 () Bool)

(assert (=> b!7486554 (= e!4464875 tp_is_empty!49535)))

(declare-fun b!7486556 () Bool)

(declare-fun tp!2172397 () Bool)

(assert (=> b!7486556 (= e!4464875 tp!2172397)))

(assert (= (and b!7486052 ((_ is ElementMatch!19623) (regOne!39759 (regOne!39759 r1!5845)))) b!7486554))

(assert (= (and b!7486052 ((_ is Concat!28468) (regOne!39759 (regOne!39759 r1!5845)))) b!7486555))

(assert (= (and b!7486052 ((_ is Star!19623) (regOne!39759 (regOne!39759 r1!5845)))) b!7486556))

(assert (= (and b!7486052 ((_ is Union!19623) (regOne!39759 (regOne!39759 r1!5845)))) b!7486557))

(declare-fun b!7486561 () Bool)

(declare-fun e!4464876 () Bool)

(declare-fun tp!2172404 () Bool)

(declare-fun tp!2172405 () Bool)

(assert (=> b!7486561 (= e!4464876 (and tp!2172404 tp!2172405))))

(assert (=> b!7486052 (= tp!2172001 e!4464876)))

(declare-fun b!7486559 () Bool)

(declare-fun tp!2172403 () Bool)

(declare-fun tp!2172406 () Bool)

(assert (=> b!7486559 (= e!4464876 (and tp!2172403 tp!2172406))))

(declare-fun b!7486558 () Bool)

(assert (=> b!7486558 (= e!4464876 tp_is_empty!49535)))

(declare-fun b!7486560 () Bool)

(declare-fun tp!2172402 () Bool)

(assert (=> b!7486560 (= e!4464876 tp!2172402)))

(assert (= (and b!7486052 ((_ is ElementMatch!19623) (regTwo!39759 (regOne!39759 r1!5845)))) b!7486558))

(assert (= (and b!7486052 ((_ is Concat!28468) (regTwo!39759 (regOne!39759 r1!5845)))) b!7486559))

(assert (= (and b!7486052 ((_ is Star!19623) (regTwo!39759 (regOne!39759 r1!5845)))) b!7486560))

(assert (= (and b!7486052 ((_ is Union!19623) (regTwo!39759 (regOne!39759 r1!5845)))) b!7486561))

(declare-fun b!7486565 () Bool)

(declare-fun e!4464877 () Bool)

(declare-fun tp!2172409 () Bool)

(declare-fun tp!2172410 () Bool)

(assert (=> b!7486565 (= e!4464877 (and tp!2172409 tp!2172410))))

(assert (=> b!7486019 (= tp!2171962 e!4464877)))

(declare-fun b!7486563 () Bool)

(declare-fun tp!2172408 () Bool)

(declare-fun tp!2172411 () Bool)

(assert (=> b!7486563 (= e!4464877 (and tp!2172408 tp!2172411))))

(declare-fun b!7486562 () Bool)

(assert (=> b!7486562 (= e!4464877 tp_is_empty!49535)))

(declare-fun b!7486564 () Bool)

(declare-fun tp!2172407 () Bool)

(assert (=> b!7486564 (= e!4464877 tp!2172407)))

(assert (= (and b!7486019 ((_ is ElementMatch!19623) (regOne!39759 (regOne!39758 rTail!78)))) b!7486562))

(assert (= (and b!7486019 ((_ is Concat!28468) (regOne!39759 (regOne!39758 rTail!78)))) b!7486563))

(assert (= (and b!7486019 ((_ is Star!19623) (regOne!39759 (regOne!39758 rTail!78)))) b!7486564))

(assert (= (and b!7486019 ((_ is Union!19623) (regOne!39759 (regOne!39758 rTail!78)))) b!7486565))

(declare-fun b!7486569 () Bool)

(declare-fun e!4464878 () Bool)

(declare-fun tp!2172414 () Bool)

(declare-fun tp!2172415 () Bool)

(assert (=> b!7486569 (= e!4464878 (and tp!2172414 tp!2172415))))

(assert (=> b!7486019 (= tp!2171963 e!4464878)))

(declare-fun b!7486567 () Bool)

(declare-fun tp!2172413 () Bool)

(declare-fun tp!2172416 () Bool)

(assert (=> b!7486567 (= e!4464878 (and tp!2172413 tp!2172416))))

(declare-fun b!7486566 () Bool)

(assert (=> b!7486566 (= e!4464878 tp_is_empty!49535)))

(declare-fun b!7486568 () Bool)

(declare-fun tp!2172412 () Bool)

(assert (=> b!7486568 (= e!4464878 tp!2172412)))

(assert (= (and b!7486019 ((_ is ElementMatch!19623) (regTwo!39759 (regOne!39758 rTail!78)))) b!7486566))

(assert (= (and b!7486019 ((_ is Concat!28468) (regTwo!39759 (regOne!39758 rTail!78)))) b!7486567))

(assert (= (and b!7486019 ((_ is Star!19623) (regTwo!39759 (regOne!39758 rTail!78)))) b!7486568))

(assert (= (and b!7486019 ((_ is Union!19623) (regTwo!39759 (regOne!39758 rTail!78)))) b!7486569))

(declare-fun b!7486573 () Bool)

(declare-fun e!4464879 () Bool)

(declare-fun tp!2172419 () Bool)

(declare-fun tp!2172420 () Bool)

(assert (=> b!7486573 (= e!4464879 (and tp!2172419 tp!2172420))))

(assert (=> b!7486017 (= tp!2171961 e!4464879)))

(declare-fun b!7486571 () Bool)

(declare-fun tp!2172418 () Bool)

(declare-fun tp!2172421 () Bool)

(assert (=> b!7486571 (= e!4464879 (and tp!2172418 tp!2172421))))

(declare-fun b!7486570 () Bool)

(assert (=> b!7486570 (= e!4464879 tp_is_empty!49535)))

(declare-fun b!7486572 () Bool)

(declare-fun tp!2172417 () Bool)

(assert (=> b!7486572 (= e!4464879 tp!2172417)))

(assert (= (and b!7486017 ((_ is ElementMatch!19623) (regOne!39758 (regOne!39758 rTail!78)))) b!7486570))

(assert (= (and b!7486017 ((_ is Concat!28468) (regOne!39758 (regOne!39758 rTail!78)))) b!7486571))

(assert (= (and b!7486017 ((_ is Star!19623) (regOne!39758 (regOne!39758 rTail!78)))) b!7486572))

(assert (= (and b!7486017 ((_ is Union!19623) (regOne!39758 (regOne!39758 rTail!78)))) b!7486573))

(declare-fun b!7486577 () Bool)

(declare-fun e!4464880 () Bool)

(declare-fun tp!2172424 () Bool)

(declare-fun tp!2172425 () Bool)

(assert (=> b!7486577 (= e!4464880 (and tp!2172424 tp!2172425))))

(assert (=> b!7486017 (= tp!2171964 e!4464880)))

(declare-fun b!7486575 () Bool)

(declare-fun tp!2172423 () Bool)

(declare-fun tp!2172426 () Bool)

(assert (=> b!7486575 (= e!4464880 (and tp!2172423 tp!2172426))))

(declare-fun b!7486574 () Bool)

(assert (=> b!7486574 (= e!4464880 tp_is_empty!49535)))

(declare-fun b!7486576 () Bool)

(declare-fun tp!2172422 () Bool)

(assert (=> b!7486576 (= e!4464880 tp!2172422)))

(assert (= (and b!7486017 ((_ is ElementMatch!19623) (regTwo!39758 (regOne!39758 rTail!78)))) b!7486574))

(assert (= (and b!7486017 ((_ is Concat!28468) (regTwo!39758 (regOne!39758 rTail!78)))) b!7486575))

(assert (= (and b!7486017 ((_ is Star!19623) (regTwo!39758 (regOne!39758 rTail!78)))) b!7486576))

(assert (= (and b!7486017 ((_ is Union!19623) (regTwo!39758 (regOne!39758 rTail!78)))) b!7486577))

(declare-fun b!7486581 () Bool)

(declare-fun e!4464881 () Bool)

(declare-fun tp!2172429 () Bool)

(declare-fun tp!2172430 () Bool)

(assert (=> b!7486581 (= e!4464881 (and tp!2172429 tp!2172430))))

(assert (=> b!7486060 (= tp!2172010 e!4464881)))

(declare-fun b!7486579 () Bool)

(declare-fun tp!2172428 () Bool)

(declare-fun tp!2172431 () Bool)

(assert (=> b!7486579 (= e!4464881 (and tp!2172428 tp!2172431))))

(declare-fun b!7486578 () Bool)

(assert (=> b!7486578 (= e!4464881 tp_is_empty!49535)))

(declare-fun b!7486580 () Bool)

(declare-fun tp!2172427 () Bool)

(assert (=> b!7486580 (= e!4464881 tp!2172427)))

(assert (= (and b!7486060 ((_ is ElementMatch!19623) (regOne!39759 (regOne!39759 rTail!78)))) b!7486578))

(assert (= (and b!7486060 ((_ is Concat!28468) (regOne!39759 (regOne!39759 rTail!78)))) b!7486579))

(assert (= (and b!7486060 ((_ is Star!19623) (regOne!39759 (regOne!39759 rTail!78)))) b!7486580))

(assert (= (and b!7486060 ((_ is Union!19623) (regOne!39759 (regOne!39759 rTail!78)))) b!7486581))

(declare-fun b!7486585 () Bool)

(declare-fun e!4464882 () Bool)

(declare-fun tp!2172434 () Bool)

(declare-fun tp!2172435 () Bool)

(assert (=> b!7486585 (= e!4464882 (and tp!2172434 tp!2172435))))

(assert (=> b!7486060 (= tp!2172011 e!4464882)))

(declare-fun b!7486583 () Bool)

(declare-fun tp!2172433 () Bool)

(declare-fun tp!2172436 () Bool)

(assert (=> b!7486583 (= e!4464882 (and tp!2172433 tp!2172436))))

(declare-fun b!7486582 () Bool)

(assert (=> b!7486582 (= e!4464882 tp_is_empty!49535)))

(declare-fun b!7486584 () Bool)

(declare-fun tp!2172432 () Bool)

(assert (=> b!7486584 (= e!4464882 tp!2172432)))

(assert (= (and b!7486060 ((_ is ElementMatch!19623) (regTwo!39759 (regOne!39759 rTail!78)))) b!7486582))

(assert (= (and b!7486060 ((_ is Concat!28468) (regTwo!39759 (regOne!39759 rTail!78)))) b!7486583))

(assert (= (and b!7486060 ((_ is Star!19623) (regTwo!39759 (regOne!39759 rTail!78)))) b!7486584))

(assert (= (and b!7486060 ((_ is Union!19623) (regTwo!39759 (regOne!39759 rTail!78)))) b!7486585))

(declare-fun b!7486589 () Bool)

(declare-fun e!4464883 () Bool)

(declare-fun tp!2172439 () Bool)

(declare-fun tp!2172440 () Bool)

(assert (=> b!7486589 (= e!4464883 (and tp!2172439 tp!2172440))))

(assert (=> b!7486027 (= tp!2171972 e!4464883)))

(declare-fun b!7486587 () Bool)

(declare-fun tp!2172438 () Bool)

(declare-fun tp!2172441 () Bool)

(assert (=> b!7486587 (= e!4464883 (and tp!2172438 tp!2172441))))

(declare-fun b!7486586 () Bool)

(assert (=> b!7486586 (= e!4464883 tp_is_empty!49535)))

(declare-fun b!7486588 () Bool)

(declare-fun tp!2172437 () Bool)

(assert (=> b!7486588 (= e!4464883 tp!2172437)))

(assert (= (and b!7486027 ((_ is ElementMatch!19623) (regOne!39759 (reg!19952 r2!5783)))) b!7486586))

(assert (= (and b!7486027 ((_ is Concat!28468) (regOne!39759 (reg!19952 r2!5783)))) b!7486587))

(assert (= (and b!7486027 ((_ is Star!19623) (regOne!39759 (reg!19952 r2!5783)))) b!7486588))

(assert (= (and b!7486027 ((_ is Union!19623) (regOne!39759 (reg!19952 r2!5783)))) b!7486589))

(declare-fun b!7486593 () Bool)

(declare-fun e!4464884 () Bool)

(declare-fun tp!2172444 () Bool)

(declare-fun tp!2172445 () Bool)

(assert (=> b!7486593 (= e!4464884 (and tp!2172444 tp!2172445))))

(assert (=> b!7486027 (= tp!2171973 e!4464884)))

(declare-fun b!7486591 () Bool)

(declare-fun tp!2172443 () Bool)

(declare-fun tp!2172446 () Bool)

(assert (=> b!7486591 (= e!4464884 (and tp!2172443 tp!2172446))))

(declare-fun b!7486590 () Bool)

(assert (=> b!7486590 (= e!4464884 tp_is_empty!49535)))

(declare-fun b!7486592 () Bool)

(declare-fun tp!2172442 () Bool)

(assert (=> b!7486592 (= e!4464884 tp!2172442)))

(assert (= (and b!7486027 ((_ is ElementMatch!19623) (regTwo!39759 (reg!19952 r2!5783)))) b!7486590))

(assert (= (and b!7486027 ((_ is Concat!28468) (regTwo!39759 (reg!19952 r2!5783)))) b!7486591))

(assert (= (and b!7486027 ((_ is Star!19623) (regTwo!39759 (reg!19952 r2!5783)))) b!7486592))

(assert (= (and b!7486027 ((_ is Union!19623) (regTwo!39759 (reg!19952 r2!5783)))) b!7486593))

(declare-fun b!7486597 () Bool)

(declare-fun e!4464885 () Bool)

(declare-fun tp!2172449 () Bool)

(declare-fun tp!2172450 () Bool)

(assert (=> b!7486597 (= e!4464885 (and tp!2172449 tp!2172450))))

(assert (=> b!7486051 (= tp!2171998 e!4464885)))

(declare-fun b!7486595 () Bool)

(declare-fun tp!2172448 () Bool)

(declare-fun tp!2172451 () Bool)

(assert (=> b!7486595 (= e!4464885 (and tp!2172448 tp!2172451))))

(declare-fun b!7486594 () Bool)

(assert (=> b!7486594 (= e!4464885 tp_is_empty!49535)))

(declare-fun b!7486596 () Bool)

(declare-fun tp!2172447 () Bool)

(assert (=> b!7486596 (= e!4464885 tp!2172447)))

(assert (= (and b!7486051 ((_ is ElementMatch!19623) (reg!19952 (regOne!39759 r1!5845)))) b!7486594))

(assert (= (and b!7486051 ((_ is Concat!28468) (reg!19952 (regOne!39759 r1!5845)))) b!7486595))

(assert (= (and b!7486051 ((_ is Star!19623) (reg!19952 (regOne!39759 r1!5845)))) b!7486596))

(assert (= (and b!7486051 ((_ is Union!19623) (reg!19952 (regOne!39759 r1!5845)))) b!7486597))

(declare-fun b!7486601 () Bool)

(declare-fun e!4464886 () Bool)

(declare-fun tp!2172454 () Bool)

(declare-fun tp!2172455 () Bool)

(assert (=> b!7486601 (= e!4464886 (and tp!2172454 tp!2172455))))

(assert (=> b!7486018 (= tp!2171960 e!4464886)))

(declare-fun b!7486599 () Bool)

(declare-fun tp!2172453 () Bool)

(declare-fun tp!2172456 () Bool)

(assert (=> b!7486599 (= e!4464886 (and tp!2172453 tp!2172456))))

(declare-fun b!7486598 () Bool)

(assert (=> b!7486598 (= e!4464886 tp_is_empty!49535)))

(declare-fun b!7486600 () Bool)

(declare-fun tp!2172452 () Bool)

(assert (=> b!7486600 (= e!4464886 tp!2172452)))

(assert (= (and b!7486018 ((_ is ElementMatch!19623) (reg!19952 (regOne!39758 rTail!78)))) b!7486598))

(assert (= (and b!7486018 ((_ is Concat!28468) (reg!19952 (regOne!39758 rTail!78)))) b!7486599))

(assert (= (and b!7486018 ((_ is Star!19623) (reg!19952 (regOne!39758 rTail!78)))) b!7486600))

(assert (= (and b!7486018 ((_ is Union!19623) (reg!19952 (regOne!39758 rTail!78)))) b!7486601))

(declare-fun b!7486605 () Bool)

(declare-fun e!4464887 () Bool)

(declare-fun tp!2172459 () Bool)

(declare-fun tp!2172460 () Bool)

(assert (=> b!7486605 (= e!4464887 (and tp!2172459 tp!2172460))))

(assert (=> b!7486079 (= tp!2172033 e!4464887)))

(declare-fun b!7486603 () Bool)

(declare-fun tp!2172458 () Bool)

(declare-fun tp!2172461 () Bool)

(assert (=> b!7486603 (= e!4464887 (and tp!2172458 tp!2172461))))

(declare-fun b!7486602 () Bool)

(assert (=> b!7486602 (= e!4464887 tp_is_empty!49535)))

(declare-fun b!7486604 () Bool)

(declare-fun tp!2172457 () Bool)

(assert (=> b!7486604 (= e!4464887 tp!2172457)))

(assert (= (and b!7486079 ((_ is ElementMatch!19623) (reg!19952 (reg!19952 r1!5845)))) b!7486602))

(assert (= (and b!7486079 ((_ is Concat!28468) (reg!19952 (reg!19952 r1!5845)))) b!7486603))

(assert (= (and b!7486079 ((_ is Star!19623) (reg!19952 (reg!19952 r1!5845)))) b!7486604))

(assert (= (and b!7486079 ((_ is Union!19623) (reg!19952 (reg!19952 r1!5845)))) b!7486605))

(declare-fun b!7486609 () Bool)

(declare-fun e!4464888 () Bool)

(declare-fun tp!2172464 () Bool)

(declare-fun tp!2172465 () Bool)

(assert (=> b!7486609 (= e!4464888 (and tp!2172464 tp!2172465))))

(assert (=> b!7486070 (= tp!2172024 e!4464888)))

(declare-fun b!7486607 () Bool)

(declare-fun tp!2172463 () Bool)

(declare-fun tp!2172466 () Bool)

(assert (=> b!7486607 (= e!4464888 (and tp!2172463 tp!2172466))))

(declare-fun b!7486606 () Bool)

(assert (=> b!7486606 (= e!4464888 tp_is_empty!49535)))

(declare-fun b!7486608 () Bool)

(declare-fun tp!2172462 () Bool)

(assert (=> b!7486608 (= e!4464888 tp!2172462)))

(assert (= (and b!7486070 ((_ is ElementMatch!19623) (regOne!39758 (regOne!39758 r2!5783)))) b!7486606))

(assert (= (and b!7486070 ((_ is Concat!28468) (regOne!39758 (regOne!39758 r2!5783)))) b!7486607))

(assert (= (and b!7486070 ((_ is Star!19623) (regOne!39758 (regOne!39758 r2!5783)))) b!7486608))

(assert (= (and b!7486070 ((_ is Union!19623) (regOne!39758 (regOne!39758 r2!5783)))) b!7486609))

(declare-fun b!7486613 () Bool)

(declare-fun e!4464889 () Bool)

(declare-fun tp!2172469 () Bool)

(declare-fun tp!2172470 () Bool)

(assert (=> b!7486613 (= e!4464889 (and tp!2172469 tp!2172470))))

(assert (=> b!7486070 (= tp!2172027 e!4464889)))

(declare-fun b!7486611 () Bool)

(declare-fun tp!2172468 () Bool)

(declare-fun tp!2172471 () Bool)

(assert (=> b!7486611 (= e!4464889 (and tp!2172468 tp!2172471))))

(declare-fun b!7486610 () Bool)

(assert (=> b!7486610 (= e!4464889 tp_is_empty!49535)))

(declare-fun b!7486612 () Bool)

(declare-fun tp!2172467 () Bool)

(assert (=> b!7486612 (= e!4464889 tp!2172467)))

(assert (= (and b!7486070 ((_ is ElementMatch!19623) (regTwo!39758 (regOne!39758 r2!5783)))) b!7486610))

(assert (= (and b!7486070 ((_ is Concat!28468) (regTwo!39758 (regOne!39758 r2!5783)))) b!7486611))

(assert (= (and b!7486070 ((_ is Star!19623) (regTwo!39758 (regOne!39758 r2!5783)))) b!7486612))

(assert (= (and b!7486070 ((_ is Union!19623) (regTwo!39758 (regOne!39758 r2!5783)))) b!7486613))

(declare-fun b!7486617 () Bool)

(declare-fun e!4464890 () Bool)

(declare-fun tp!2172474 () Bool)

(declare-fun tp!2172475 () Bool)

(assert (=> b!7486617 (= e!4464890 (and tp!2172474 tp!2172475))))

(assert (=> b!7486037 (= tp!2171986 e!4464890)))

(declare-fun b!7486615 () Bool)

(declare-fun tp!2172473 () Bool)

(declare-fun tp!2172476 () Bool)

(assert (=> b!7486615 (= e!4464890 (and tp!2172473 tp!2172476))))

(declare-fun b!7486614 () Bool)

(assert (=> b!7486614 (= e!4464890 tp_is_empty!49535)))

(declare-fun b!7486616 () Bool)

(declare-fun tp!2172472 () Bool)

(assert (=> b!7486616 (= e!4464890 tp!2172472)))

(assert (= (and b!7486037 ((_ is ElementMatch!19623) (regOne!39758 (regOne!39758 r1!5845)))) b!7486614))

(assert (= (and b!7486037 ((_ is Concat!28468) (regOne!39758 (regOne!39758 r1!5845)))) b!7486615))

(assert (= (and b!7486037 ((_ is Star!19623) (regOne!39758 (regOne!39758 r1!5845)))) b!7486616))

(assert (= (and b!7486037 ((_ is Union!19623) (regOne!39758 (regOne!39758 r1!5845)))) b!7486617))

(declare-fun b!7486621 () Bool)

(declare-fun e!4464891 () Bool)

(declare-fun tp!2172479 () Bool)

(declare-fun tp!2172480 () Bool)

(assert (=> b!7486621 (= e!4464891 (and tp!2172479 tp!2172480))))

(assert (=> b!7486037 (= tp!2171989 e!4464891)))

(declare-fun b!7486619 () Bool)

(declare-fun tp!2172478 () Bool)

(declare-fun tp!2172481 () Bool)

(assert (=> b!7486619 (= e!4464891 (and tp!2172478 tp!2172481))))

(declare-fun b!7486618 () Bool)

(assert (=> b!7486618 (= e!4464891 tp_is_empty!49535)))

(declare-fun b!7486620 () Bool)

(declare-fun tp!2172477 () Bool)

(assert (=> b!7486620 (= e!4464891 tp!2172477)))

(assert (= (and b!7486037 ((_ is ElementMatch!19623) (regTwo!39758 (regOne!39758 r1!5845)))) b!7486618))

(assert (= (and b!7486037 ((_ is Concat!28468) (regTwo!39758 (regOne!39758 r1!5845)))) b!7486619))

(assert (= (and b!7486037 ((_ is Star!19623) (regTwo!39758 (regOne!39758 r1!5845)))) b!7486620))

(assert (= (and b!7486037 ((_ is Union!19623) (regTwo!39758 (regOne!39758 r1!5845)))) b!7486621))

(declare-fun b!7486625 () Bool)

(declare-fun e!4464892 () Bool)

(declare-fun tp!2172484 () Bool)

(declare-fun tp!2172485 () Bool)

(assert (=> b!7486625 (= e!4464892 (and tp!2172484 tp!2172485))))

(assert (=> b!7486080 (= tp!2172035 e!4464892)))

(declare-fun b!7486623 () Bool)

(declare-fun tp!2172483 () Bool)

(declare-fun tp!2172486 () Bool)

(assert (=> b!7486623 (= e!4464892 (and tp!2172483 tp!2172486))))

(declare-fun b!7486622 () Bool)

(assert (=> b!7486622 (= e!4464892 tp_is_empty!49535)))

(declare-fun b!7486624 () Bool)

(declare-fun tp!2172482 () Bool)

(assert (=> b!7486624 (= e!4464892 tp!2172482)))

(assert (= (and b!7486080 ((_ is ElementMatch!19623) (regOne!39759 (reg!19952 r1!5845)))) b!7486622))

(assert (= (and b!7486080 ((_ is Concat!28468) (regOne!39759 (reg!19952 r1!5845)))) b!7486623))

(assert (= (and b!7486080 ((_ is Star!19623) (regOne!39759 (reg!19952 r1!5845)))) b!7486624))

(assert (= (and b!7486080 ((_ is Union!19623) (regOne!39759 (reg!19952 r1!5845)))) b!7486625))

(declare-fun b!7486629 () Bool)

(declare-fun e!4464893 () Bool)

(declare-fun tp!2172489 () Bool)

(declare-fun tp!2172490 () Bool)

(assert (=> b!7486629 (= e!4464893 (and tp!2172489 tp!2172490))))

(assert (=> b!7486080 (= tp!2172036 e!4464893)))

(declare-fun b!7486627 () Bool)

(declare-fun tp!2172488 () Bool)

(declare-fun tp!2172491 () Bool)

(assert (=> b!7486627 (= e!4464893 (and tp!2172488 tp!2172491))))

(declare-fun b!7486626 () Bool)

(assert (=> b!7486626 (= e!4464893 tp_is_empty!49535)))

(declare-fun b!7486628 () Bool)

(declare-fun tp!2172487 () Bool)

(assert (=> b!7486628 (= e!4464893 tp!2172487)))

(assert (= (and b!7486080 ((_ is ElementMatch!19623) (regTwo!39759 (reg!19952 r1!5845)))) b!7486626))

(assert (= (and b!7486080 ((_ is Concat!28468) (regTwo!39759 (reg!19952 r1!5845)))) b!7486627))

(assert (= (and b!7486080 ((_ is Star!19623) (regTwo!39759 (reg!19952 r1!5845)))) b!7486628))

(assert (= (and b!7486080 ((_ is Union!19623) (regTwo!39759 (reg!19952 r1!5845)))) b!7486629))

(declare-fun b!7486633 () Bool)

(declare-fun e!4464894 () Bool)

(declare-fun tp!2172494 () Bool)

(declare-fun tp!2172495 () Bool)

(assert (=> b!7486633 (= e!4464894 (and tp!2172494 tp!2172495))))

(assert (=> b!7486078 (= tp!2172034 e!4464894)))

(declare-fun b!7486631 () Bool)

(declare-fun tp!2172493 () Bool)

(declare-fun tp!2172496 () Bool)

(assert (=> b!7486631 (= e!4464894 (and tp!2172493 tp!2172496))))

(declare-fun b!7486630 () Bool)

(assert (=> b!7486630 (= e!4464894 tp_is_empty!49535)))

(declare-fun b!7486632 () Bool)

(declare-fun tp!2172492 () Bool)

(assert (=> b!7486632 (= e!4464894 tp!2172492)))

(assert (= (and b!7486078 ((_ is ElementMatch!19623) (regOne!39758 (reg!19952 r1!5845)))) b!7486630))

(assert (= (and b!7486078 ((_ is Concat!28468) (regOne!39758 (reg!19952 r1!5845)))) b!7486631))

(assert (= (and b!7486078 ((_ is Star!19623) (regOne!39758 (reg!19952 r1!5845)))) b!7486632))

(assert (= (and b!7486078 ((_ is Union!19623) (regOne!39758 (reg!19952 r1!5845)))) b!7486633))

(declare-fun b!7486637 () Bool)

(declare-fun e!4464895 () Bool)

(declare-fun tp!2172499 () Bool)

(declare-fun tp!2172500 () Bool)

(assert (=> b!7486637 (= e!4464895 (and tp!2172499 tp!2172500))))

(assert (=> b!7486078 (= tp!2172037 e!4464895)))

(declare-fun b!7486635 () Bool)

(declare-fun tp!2172498 () Bool)

(declare-fun tp!2172501 () Bool)

(assert (=> b!7486635 (= e!4464895 (and tp!2172498 tp!2172501))))

(declare-fun b!7486634 () Bool)

(assert (=> b!7486634 (= e!4464895 tp_is_empty!49535)))

(declare-fun b!7486636 () Bool)

(declare-fun tp!2172497 () Bool)

(assert (=> b!7486636 (= e!4464895 tp!2172497)))

(assert (= (and b!7486078 ((_ is ElementMatch!19623) (regTwo!39758 (reg!19952 r1!5845)))) b!7486634))

(assert (= (and b!7486078 ((_ is Concat!28468) (regTwo!39758 (reg!19952 r1!5845)))) b!7486635))

(assert (= (and b!7486078 ((_ is Star!19623) (regTwo!39758 (reg!19952 r1!5845)))) b!7486636))

(assert (= (and b!7486078 ((_ is Union!19623) (regTwo!39758 (reg!19952 r1!5845)))) b!7486637))

(check-sat (not b!7486468) (not b!7486479) (not b!7486623) (not b!7486575) (not d!2300775) (not b!7486456) (not bm!687213) (not b!7486481) (not b!7486439) (not b!7486597) (not b!7486217) (not b!7486624) (not b!7486491) (not b!7486383) (not b!7486569) (not b!7486592) (not d!2300759) (not b!7486636) (not b!7486497) (not d!2300781) (not bm!687228) (not b!7486246) (not bm!687251) (not b!7486360) (not b!7486531) (not b!7486563) (not b!7486208) (not d!2300783) (not b!7486543) (not b!7486406) (not b!7486539) (not b!7486443) (not b!7486315) (not b!7486403) (not b!7486572) (not b!7486285) (not b!7486596) (not b!7486339) (not b!7486432) (not b!7486577) (not b!7486453) (not b!7486528) (not b!7486380) (not b!7486344) (not b!7486421) (not b!7486559) (not b!7486536) (not b!7486366) (not b!7486376) (not b!7486635) (not b!7486553) (not b!7486589) (not b!7486386) (not b!7486571) (not b!7486489) (not b!7486561) (not bm!687254) (not b!7486370) (not bm!687249) (not b!7486340) (not b!7486325) (not b!7486535) (not bm!687236) (not b!7486451) (not b!7486235) (not b!7486328) (not b!7486452) (not b!7486507) (not b!7486374) (not b!7486548) (not b!7486565) tp_is_empty!49535 (not b!7486519) (not b!7486368) (not b!7486593) (not b!7486628) (not b!7486476) (not b!7486625) (not b!7486264) (not b!7486460) (not b!7486617) (not b!7486278) (not b!7486465) (not b!7486363) (not b!7486419) (not b!7486431) (not b!7486516) (not b!7486407) (not b!7486584) (not b!7486391) (not d!2300747) (not b!7486573) (not b!7486280) (not b!7486552) (not b!7486338) (not bm!687227) (not b!7486457) (not b!7486424) (not b!7486404) (not b!7486503) (not b!7486612) (not b!7486533) (not b!7486427) (not b!7486423) (not b!7486348) (not b!7486477) (not b!7486375) (not b!7486445) (not b!7486601) (not bm!687215) (not b!7486359) (not b!7486429) (not b!7486527) (not b!7486400) (not bm!687253) (not b!7486402) (not b!7486509) (not b!7486488) (not b!7486399) (not b!7486560) (not b!7486607) (not b!7486416) (not b!7486595) (not b!7486567) (not b!7486394) (not b!7486455) (not bm!687218) (not b!7486620) (not b!7486428) (not b!7486475) (not d!2300773) (not b!7486356) (not bm!687221) (not b!7486551) (not b!7486604) (not b!7486493) (not b!7486632) (not b!7486492) (not b!7486525) (not b!7486420) (not b!7486469) (not bm!687230) (not b!7486372) (not b!7486545) (not b!7486523) (not b!7486611) (not b!7486464) (not b!7486591) (not bm!687212) (not b!7486480) (not b!7486568) (not b!7486487) (not b!7486396) (not b!7486392) (not b!7486319) (not b!7486631) (not b!7486629) (not b!7486398) (not d!2300743) (not b!7486435) (not b!7486580) (not b!7486532) (not b!7486226) (not b!7486513) (not b!7486444) (not bm!687252) (not b!7486463) (not b!7486441) (not b!7486252) (not b!7486379) (not b!7486354) (not b!7486585) (not b!7486414) (not b!7486603) (not bm!687219) (not b!7486461) (not b!7486579) (not b!7486605) (not b!7486581) (not b!7486417) (not bm!687216) (not b!7486501) (not b!7486511) (not b!7486547) (not b!7486517) (not b!7486277) (not b!7486440) (not b!7486346) (not b!7486512) (not b!7486495) (not b!7486615) (not b!7486473) (not b!7486390) (not b!7486520) (not b!7486362) (not b!7486351) (not b!7486364) (not b!7486410) (not d!2300739) (not b!7486616) (not b!7486637) (not b!7486600) (not bm!687231) (not bm!687225) (not b!7486437) (not b!7486472) (not b!7486508) (not b!7486412) (not b!7486471) (not bm!687235) (not b!7486557) (not b!7486395) (not b!7486190) (not b!7486382) (not b!7486529) (not b!7486343) (not b!7486355) (not bm!687222) (not b!7486448) (not b!7486485) (not b!7486371) (not b!7486408) (not b!7486358) (not b!7486352) (not b!7486587) (not b!7486447) (not b!7486484) (not b!7486540) (not b!7486286) (not bm!687233) (not b!7486583) (not b!7486433) (not bm!687248) (not b!7486199) (not b!7486633) (not b!7486576) (not b!7486556) (not b!7486599) (not b!7486411) (not b!7486541) (not bm!687238) (not b!7486415) (not b!7486621) (not b!7486504) (not b!7486350) (not b!7486499) (not b!7486425) (not b!7486588) (not b!7486537) (not b!7486483) (not b!7486436) (not b!7486388) (not b!7486608) (not b!7486378) (not b!7486496) (not b!7486544) (not b!7486521) (not b!7486367) (not b!7486387) (not b!7486619) (not bm!687232) (not b!7486342) (not b!7486549) (not b!7486449) (not bm!687224) (not b!7486459) (not d!2300767) (not b!7486609) (not b!7486613) (not b!7486384) (not b!7486515) (not b!7486627) (not b!7486564) (not b!7486273) (not b!7486524) (not b!7486467) (not b!7486505) (not b!7486347) (not b!7486555) (not b!7486255) (not b!7486500))
(check-sat)
