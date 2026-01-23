; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738546 () Bool)

(assert start!738546)

(declare-fun b!7745698 () Bool)

(assert (=> b!7745698 true))

(assert (=> b!7745698 true))

(declare-fun bs!1965455 () Bool)

(declare-fun b!7745711 () Bool)

(assert (= bs!1965455 (and b!7745711 b!7745698)))

(declare-fun lambda!471679 () Int)

(declare-fun lambda!471678 () Int)

(assert (=> bs!1965455 (not (= lambda!471679 lambda!471678))))

(assert (=> b!7745711 true))

(assert (=> b!7745711 true))

(declare-fun e!4592198 () Bool)

(declare-fun e!4592202 () Bool)

(assert (=> b!7745698 (= e!4592198 (not e!4592202))))

(declare-fun res!3088163 () Bool)

(assert (=> b!7745698 (=> res!3088163 e!4592202)))

(declare-datatypes ((C!41498 0))(
  ( (C!41499 (val!31189 Int)) )
))
(declare-datatypes ((Regex!20586 0))(
  ( (ElementMatch!20586 (c!1428688 C!41498)) (Concat!29431 (regOne!41684 Regex!20586) (regTwo!41684 Regex!20586)) (EmptyExpr!20586) (Star!20586 (reg!20915 Regex!20586)) (EmptyLang!20586) (Union!20586 (regOne!41685 Regex!20586) (regTwo!41685 Regex!20586)) )
))
(declare-fun r!14126 () Regex!20586)

(declare-datatypes ((List!73433 0))(
  ( (Nil!73309) (Cons!73309 (h!79757 C!41498) (t!388168 List!73433)) )
))
(declare-fun s!9605 () List!73433)

(declare-fun matchR!10078 (Regex!20586 List!73433) Bool)

(assert (=> b!7745698 (= res!3088163 (matchR!10078 r!14126 s!9605))))

(declare-fun lt!2668555 () Bool)

(declare-fun Exists!4707 (Int) Bool)

(assert (=> b!7745698 (= lt!2668555 (Exists!4707 lambda!471678))))

(declare-datatypes ((tuple2!69626 0))(
  ( (tuple2!69627 (_1!38116 List!73433) (_2!38116 List!73433)) )
))
(declare-datatypes ((Option!17607 0))(
  ( (None!17606) (Some!17606 (v!54741 tuple2!69626)) )
))
(declare-fun lt!2668556 () Option!17607)

(declare-fun isDefined!14223 (Option!17607) Bool)

(assert (=> b!7745698 (= lt!2668555 (isDefined!14223 lt!2668556))))

(declare-fun findConcatSeparation!3637 (Regex!20586 Regex!20586 List!73433 List!73433 List!73433) Option!17607)

(assert (=> b!7745698 (= lt!2668556 (findConcatSeparation!3637 (regOne!41684 r!14126) (regTwo!41684 r!14126) Nil!73309 s!9605 s!9605))))

(declare-datatypes ((Unit!168268 0))(
  ( (Unit!168269) )
))
(declare-fun lt!2668557 () Unit!168268)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3395 (Regex!20586 Regex!20586 List!73433) Unit!168268)

(assert (=> b!7745698 (= lt!2668557 (lemmaFindConcatSeparationEquivalentToExists!3395 (regOne!41684 r!14126) (regTwo!41684 r!14126) s!9605))))

(declare-fun b!7745699 () Bool)

(declare-fun e!4592197 () Bool)

(assert (=> b!7745699 (= e!4592202 e!4592197)))

(declare-fun res!3088162 () Bool)

(assert (=> b!7745699 (=> res!3088162 e!4592197)))

(assert (=> b!7745699 (= res!3088162 (Exists!4707 lambda!471678))))

(declare-fun lt!2668559 () Unit!168268)

(declare-fun e!4592201 () Unit!168268)

(assert (=> b!7745699 (= lt!2668559 e!4592201)))

(declare-fun c!1428687 () Bool)

(assert (=> b!7745699 (= c!1428687 lt!2668555)))

(declare-fun b!7745700 () Bool)

(declare-fun e!4592199 () Bool)

(declare-fun tp_is_empty!51527 () Bool)

(assert (=> b!7745700 (= e!4592199 tp_is_empty!51527)))

(declare-fun b!7745701 () Bool)

(declare-fun tp!2272871 () Bool)

(assert (=> b!7745701 (= e!4592199 tp!2272871)))

(declare-fun b!7745702 () Bool)

(declare-fun e!4592200 () Bool)

(declare-fun tp!2272867 () Bool)

(assert (=> b!7745702 (= e!4592200 (and tp_is_empty!51527 tp!2272867))))

(declare-fun b!7745703 () Bool)

(declare-fun e!4592203 () Bool)

(declare-fun lt!2668558 () tuple2!69626)

(declare-fun ++!17785 (List!73433 List!73433) List!73433)

(assert (=> b!7745703 (= e!4592203 (= (++!17785 (_1!38116 lt!2668558) (_2!38116 lt!2668558)) s!9605))))

(declare-fun b!7745704 () Bool)

(declare-fun res!3088158 () Bool)

(assert (=> b!7745704 (=> res!3088158 e!4592203)))

(declare-fun validRegex!11004 (Regex!20586) Bool)

(assert (=> b!7745704 (= res!3088158 (not (validRegex!11004 (regTwo!41684 r!14126))))))

(declare-fun b!7745705 () Bool)

(declare-fun e!4592196 () Bool)

(assert (=> b!7745705 (= e!4592196 false)))

(declare-fun b!7745706 () Bool)

(assert (=> b!7745706 (= e!4592197 e!4592203)))

(declare-fun res!3088157 () Bool)

(assert (=> b!7745706 (=> res!3088157 e!4592203)))

(assert (=> b!7745706 (= res!3088157 (not (validRegex!11004 (regOne!41684 r!14126))))))

(declare-fun matchRSpec!4651 (Regex!20586 List!73433) Bool)

(assert (=> b!7745706 (= (matchR!10078 (regTwo!41684 r!14126) (_2!38116 lt!2668558)) (matchRSpec!4651 (regTwo!41684 r!14126) (_2!38116 lt!2668558)))))

(declare-fun lt!2668554 () Unit!168268)

(declare-fun mainMatchTheorem!4621 (Regex!20586 List!73433) Unit!168268)

(assert (=> b!7745706 (= lt!2668554 (mainMatchTheorem!4621 (regTwo!41684 r!14126) (_2!38116 lt!2668558)))))

(assert (=> b!7745706 (= (matchR!10078 (regOne!41684 r!14126) (_1!38116 lt!2668558)) (matchRSpec!4651 (regOne!41684 r!14126) (_1!38116 lt!2668558)))))

(declare-fun lt!2668561 () Unit!168268)

(assert (=> b!7745706 (= lt!2668561 (mainMatchTheorem!4621 (regOne!41684 r!14126) (_1!38116 lt!2668558)))))

(declare-fun pickWitness!543 (Int) tuple2!69626)

(assert (=> b!7745706 (= lt!2668558 (pickWitness!543 lambda!471679))))

(declare-fun res!3088164 () Bool)

(assert (=> start!738546 (=> (not res!3088164) (not e!4592198))))

(assert (=> start!738546 (= res!3088164 (validRegex!11004 r!14126))))

(assert (=> start!738546 e!4592198))

(assert (=> start!738546 e!4592199))

(assert (=> start!738546 e!4592200))

(declare-fun b!7745707 () Bool)

(declare-fun tp!2272870 () Bool)

(declare-fun tp!2272868 () Bool)

(assert (=> b!7745707 (= e!4592199 (and tp!2272870 tp!2272868))))

(declare-fun b!7745708 () Bool)

(declare-fun Unit!168270 () Unit!168268)

(assert (=> b!7745708 (= e!4592201 Unit!168270)))

(declare-fun lt!2668560 () tuple2!69626)

(declare-fun get!26070 (Option!17607) tuple2!69626)

(assert (=> b!7745708 (= lt!2668560 (get!26070 lt!2668556))))

(declare-fun lt!2668553 () Unit!168268)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!211 (Regex!20586 Regex!20586 List!73433 List!73433 List!73433) Unit!168268)

(assert (=> b!7745708 (= lt!2668553 (lemmaFindSeparationIsDefinedThenConcatMatches!211 (regOne!41684 r!14126) (regTwo!41684 r!14126) (_1!38116 lt!2668560) (_2!38116 lt!2668560) s!9605))))

(declare-fun res!3088160 () Bool)

(assert (=> b!7745708 (= res!3088160 (matchR!10078 r!14126 (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560))))))

(assert (=> b!7745708 (=> (not res!3088160) (not e!4592196))))

(assert (=> b!7745708 e!4592196))

(declare-fun b!7745709 () Bool)

(declare-fun tp!2272869 () Bool)

(declare-fun tp!2272866 () Bool)

(assert (=> b!7745709 (= e!4592199 (and tp!2272869 tp!2272866))))

(declare-fun b!7745710 () Bool)

(declare-fun res!3088159 () Bool)

(assert (=> b!7745710 (=> (not res!3088159) (not e!4592198))))

(assert (=> b!7745710 (= res!3088159 (and (not (is-EmptyExpr!20586 r!14126)) (not (is-EmptyLang!20586 r!14126)) (not (is-ElementMatch!20586 r!14126)) (not (is-Union!20586 r!14126)) (not (is-Star!20586 r!14126))))))

(declare-fun res!3088161 () Bool)

(assert (=> b!7745711 (=> res!3088161 e!4592197)))

(assert (=> b!7745711 (= res!3088161 (not (Exists!4707 lambda!471679)))))

(declare-fun b!7745712 () Bool)

(declare-fun Unit!168271 () Unit!168268)

(assert (=> b!7745712 (= e!4592201 Unit!168271)))

(assert (= (and start!738546 res!3088164) b!7745710))

(assert (= (and b!7745710 res!3088159) b!7745698))

(assert (= (and b!7745698 (not res!3088163)) b!7745699))

(assert (= (and b!7745699 c!1428687) b!7745708))

(assert (= (and b!7745699 (not c!1428687)) b!7745712))

(assert (= (and b!7745708 res!3088160) b!7745705))

(assert (= (and b!7745699 (not res!3088162)) b!7745711))

(assert (= (and b!7745711 (not res!3088161)) b!7745706))

(assert (= (and b!7745706 (not res!3088157)) b!7745704))

(assert (= (and b!7745704 (not res!3088158)) b!7745703))

(assert (= (and start!738546 (is-ElementMatch!20586 r!14126)) b!7745700))

(assert (= (and start!738546 (is-Concat!29431 r!14126)) b!7745707))

(assert (= (and start!738546 (is-Star!20586 r!14126)) b!7745701))

(assert (= (and start!738546 (is-Union!20586 r!14126)) b!7745709))

(assert (= (and start!738546 (is-Cons!73309 s!9605)) b!7745702))

(declare-fun m!8213758 () Bool)

(assert (=> b!7745711 m!8213758))

(declare-fun m!8213760 () Bool)

(assert (=> b!7745699 m!8213760))

(declare-fun m!8213762 () Bool)

(assert (=> b!7745706 m!8213762))

(declare-fun m!8213764 () Bool)

(assert (=> b!7745706 m!8213764))

(declare-fun m!8213766 () Bool)

(assert (=> b!7745706 m!8213766))

(declare-fun m!8213768 () Bool)

(assert (=> b!7745706 m!8213768))

(declare-fun m!8213770 () Bool)

(assert (=> b!7745706 m!8213770))

(declare-fun m!8213772 () Bool)

(assert (=> b!7745706 m!8213772))

(declare-fun m!8213774 () Bool)

(assert (=> b!7745706 m!8213774))

(declare-fun m!8213776 () Bool)

(assert (=> b!7745706 m!8213776))

(declare-fun m!8213778 () Bool)

(assert (=> b!7745704 m!8213778))

(declare-fun m!8213780 () Bool)

(assert (=> b!7745708 m!8213780))

(declare-fun m!8213782 () Bool)

(assert (=> b!7745708 m!8213782))

(declare-fun m!8213784 () Bool)

(assert (=> b!7745708 m!8213784))

(assert (=> b!7745708 m!8213784))

(declare-fun m!8213786 () Bool)

(assert (=> b!7745708 m!8213786))

(declare-fun m!8213788 () Bool)

(assert (=> b!7745703 m!8213788))

(declare-fun m!8213790 () Bool)

(assert (=> b!7745698 m!8213790))

(declare-fun m!8213792 () Bool)

(assert (=> b!7745698 m!8213792))

(declare-fun m!8213794 () Bool)

(assert (=> b!7745698 m!8213794))

(assert (=> b!7745698 m!8213760))

(declare-fun m!8213796 () Bool)

(assert (=> b!7745698 m!8213796))

(declare-fun m!8213798 () Bool)

(assert (=> start!738546 m!8213798))

(push 1)

(assert (not b!7745704))

(assert (not start!738546))

(assert (not b!7745709))

(assert (not b!7745708))

(assert (not b!7745703))

(assert (not b!7745702))

(assert (not b!7745701))

(assert tp_is_empty!51527)

(assert (not b!7745699))

(assert (not b!7745707))

(assert (not b!7745711))

(assert (not b!7745706))

(assert (not b!7745698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7745790 () Bool)

(declare-fun e!4592240 () List!73433)

(assert (=> b!7745790 (= e!4592240 (_2!38116 lt!2668558))))

(declare-fun b!7745792 () Bool)

(declare-fun res!3088210 () Bool)

(declare-fun e!4592241 () Bool)

(assert (=> b!7745792 (=> (not res!3088210) (not e!4592241))))

(declare-fun lt!2668591 () List!73433)

(declare-fun size!42644 (List!73433) Int)

(assert (=> b!7745792 (= res!3088210 (= (size!42644 lt!2668591) (+ (size!42644 (_1!38116 lt!2668558)) (size!42644 (_2!38116 lt!2668558)))))))

(declare-fun b!7745791 () Bool)

(assert (=> b!7745791 (= e!4592240 (Cons!73309 (h!79757 (_1!38116 lt!2668558)) (++!17785 (t!388168 (_1!38116 lt!2668558)) (_2!38116 lt!2668558))))))

(declare-fun b!7745793 () Bool)

(assert (=> b!7745793 (= e!4592241 (or (not (= (_2!38116 lt!2668558) Nil!73309)) (= lt!2668591 (_1!38116 lt!2668558))))))

(declare-fun d!2342113 () Bool)

(assert (=> d!2342113 e!4592241))

(declare-fun res!3088209 () Bool)

(assert (=> d!2342113 (=> (not res!3088209) (not e!4592241))))

(declare-fun content!15541 (List!73433) (Set C!41498))

(assert (=> d!2342113 (= res!3088209 (= (content!15541 lt!2668591) (set.union (content!15541 (_1!38116 lt!2668558)) (content!15541 (_2!38116 lt!2668558)))))))

(assert (=> d!2342113 (= lt!2668591 e!4592240)))

(declare-fun c!1428695 () Bool)

(assert (=> d!2342113 (= c!1428695 (is-Nil!73309 (_1!38116 lt!2668558)))))

(assert (=> d!2342113 (= (++!17785 (_1!38116 lt!2668558) (_2!38116 lt!2668558)) lt!2668591)))

(assert (= (and d!2342113 c!1428695) b!7745790))

(assert (= (and d!2342113 (not c!1428695)) b!7745791))

(assert (= (and d!2342113 res!3088209) b!7745792))

(assert (= (and b!7745792 res!3088210) b!7745793))

(declare-fun m!8213842 () Bool)

(assert (=> b!7745792 m!8213842))

(declare-fun m!8213844 () Bool)

(assert (=> b!7745792 m!8213844))

(declare-fun m!8213846 () Bool)

(assert (=> b!7745792 m!8213846))

(declare-fun m!8213848 () Bool)

(assert (=> b!7745791 m!8213848))

(declare-fun m!8213850 () Bool)

(assert (=> d!2342113 m!8213850))

(declare-fun m!8213852 () Bool)

(assert (=> d!2342113 m!8213852))

(declare-fun m!8213854 () Bool)

(assert (=> d!2342113 m!8213854))

(assert (=> b!7745703 d!2342113))

(declare-fun b!7745822 () Bool)

(declare-fun e!4592261 () Bool)

(declare-fun lt!2668594 () Bool)

(declare-fun call!717883 () Bool)

(assert (=> b!7745822 (= e!4592261 (= lt!2668594 call!717883))))

(declare-fun b!7745823 () Bool)

(declare-fun res!3088229 () Bool)

(declare-fun e!4592260 () Bool)

(assert (=> b!7745823 (=> res!3088229 e!4592260)))

(declare-fun isEmpty!41998 (List!73433) Bool)

(declare-fun tail!15358 (List!73433) List!73433)

(assert (=> b!7745823 (= res!3088229 (not (isEmpty!41998 (tail!15358 s!9605))))))

(declare-fun b!7745824 () Bool)

(declare-fun e!4592259 () Bool)

(declare-fun derivativeStep!6018 (Regex!20586 C!41498) Regex!20586)

(declare-fun head!15818 (List!73433) C!41498)

(assert (=> b!7745824 (= e!4592259 (matchR!10078 (derivativeStep!6018 r!14126 (head!15818 s!9605)) (tail!15358 s!9605)))))

(declare-fun b!7745825 () Bool)

(declare-fun e!4592262 () Bool)

(declare-fun e!4592256 () Bool)

(assert (=> b!7745825 (= e!4592262 e!4592256)))

(declare-fun res!3088228 () Bool)

(assert (=> b!7745825 (=> (not res!3088228) (not e!4592256))))

(assert (=> b!7745825 (= res!3088228 (not lt!2668594))))

(declare-fun b!7745826 () Bool)

(declare-fun e!4592257 () Bool)

(assert (=> b!7745826 (= e!4592257 (= (head!15818 s!9605) (c!1428688 r!14126)))))

(declare-fun b!7745827 () Bool)

(declare-fun res!3088233 () Bool)

(assert (=> b!7745827 (=> res!3088233 e!4592262)))

(assert (=> b!7745827 (= res!3088233 (not (is-ElementMatch!20586 r!14126)))))

(declare-fun e!4592258 () Bool)

(assert (=> b!7745827 (= e!4592258 e!4592262)))

(declare-fun b!7745828 () Bool)

(assert (=> b!7745828 (= e!4592261 e!4592258)))

(declare-fun c!1428704 () Bool)

(assert (=> b!7745828 (= c!1428704 (is-EmptyLang!20586 r!14126))))

(declare-fun b!7745829 () Bool)

(declare-fun nullable!9059 (Regex!20586) Bool)

(assert (=> b!7745829 (= e!4592259 (nullable!9059 r!14126))))

(declare-fun b!7745830 () Bool)

(declare-fun res!3088230 () Bool)

(assert (=> b!7745830 (=> (not res!3088230) (not e!4592257))))

(assert (=> b!7745830 (= res!3088230 (isEmpty!41998 (tail!15358 s!9605)))))

(declare-fun bm!717878 () Bool)

(assert (=> bm!717878 (= call!717883 (isEmpty!41998 s!9605))))

(declare-fun b!7745831 () Bool)

(assert (=> b!7745831 (= e!4592256 e!4592260)))

(declare-fun res!3088232 () Bool)

(assert (=> b!7745831 (=> res!3088232 e!4592260)))

(assert (=> b!7745831 (= res!3088232 call!717883)))

(declare-fun b!7745832 () Bool)

(assert (=> b!7745832 (= e!4592260 (not (= (head!15818 s!9605) (c!1428688 r!14126))))))

(declare-fun d!2342115 () Bool)

(assert (=> d!2342115 e!4592261))

(declare-fun c!1428702 () Bool)

(assert (=> d!2342115 (= c!1428702 (is-EmptyExpr!20586 r!14126))))

(assert (=> d!2342115 (= lt!2668594 e!4592259)))

(declare-fun c!1428703 () Bool)

(assert (=> d!2342115 (= c!1428703 (isEmpty!41998 s!9605))))

(assert (=> d!2342115 (validRegex!11004 r!14126)))

(assert (=> d!2342115 (= (matchR!10078 r!14126 s!9605) lt!2668594)))

(declare-fun b!7745833 () Bool)

(declare-fun res!3088234 () Bool)

(assert (=> b!7745833 (=> (not res!3088234) (not e!4592257))))

(assert (=> b!7745833 (= res!3088234 (not call!717883))))

(declare-fun b!7745834 () Bool)

(declare-fun res!3088231 () Bool)

(assert (=> b!7745834 (=> res!3088231 e!4592262)))

(assert (=> b!7745834 (= res!3088231 e!4592257)))

(declare-fun res!3088227 () Bool)

(assert (=> b!7745834 (=> (not res!3088227) (not e!4592257))))

(assert (=> b!7745834 (= res!3088227 lt!2668594)))

(declare-fun b!7745835 () Bool)

(assert (=> b!7745835 (= e!4592258 (not lt!2668594))))

(assert (= (and d!2342115 c!1428703) b!7745829))

(assert (= (and d!2342115 (not c!1428703)) b!7745824))

(assert (= (and d!2342115 c!1428702) b!7745822))

(assert (= (and d!2342115 (not c!1428702)) b!7745828))

(assert (= (and b!7745828 c!1428704) b!7745835))

(assert (= (and b!7745828 (not c!1428704)) b!7745827))

(assert (= (and b!7745827 (not res!3088233)) b!7745834))

(assert (= (and b!7745834 res!3088227) b!7745833))

(assert (= (and b!7745833 res!3088234) b!7745830))

(assert (= (and b!7745830 res!3088230) b!7745826))

(assert (= (and b!7745834 (not res!3088231)) b!7745825))

(assert (= (and b!7745825 res!3088228) b!7745831))

(assert (= (and b!7745831 (not res!3088232)) b!7745823))

(assert (= (and b!7745823 (not res!3088229)) b!7745832))

(assert (= (or b!7745822 b!7745831 b!7745833) bm!717878))

(declare-fun m!8213856 () Bool)

(assert (=> b!7745824 m!8213856))

(assert (=> b!7745824 m!8213856))

(declare-fun m!8213858 () Bool)

(assert (=> b!7745824 m!8213858))

(declare-fun m!8213860 () Bool)

(assert (=> b!7745824 m!8213860))

(assert (=> b!7745824 m!8213858))

(assert (=> b!7745824 m!8213860))

(declare-fun m!8213862 () Bool)

(assert (=> b!7745824 m!8213862))

(assert (=> b!7745832 m!8213856))

(assert (=> b!7745830 m!8213860))

(assert (=> b!7745830 m!8213860))

(declare-fun m!8213864 () Bool)

(assert (=> b!7745830 m!8213864))

(declare-fun m!8213866 () Bool)

(assert (=> bm!717878 m!8213866))

(assert (=> b!7745826 m!8213856))

(assert (=> b!7745823 m!8213860))

(assert (=> b!7745823 m!8213860))

(assert (=> b!7745823 m!8213864))

(assert (=> d!2342115 m!8213866))

(assert (=> d!2342115 m!8213798))

(declare-fun m!8213868 () Bool)

(assert (=> b!7745829 m!8213868))

(assert (=> b!7745698 d!2342115))

(declare-fun bs!1965457 () Bool)

(declare-fun d!2342119 () Bool)

(assert (= bs!1965457 (and d!2342119 b!7745698)))

(declare-fun lambda!471692 () Int)

(assert (=> bs!1965457 (= lambda!471692 lambda!471678)))

(declare-fun bs!1965458 () Bool)

(assert (= bs!1965458 (and d!2342119 b!7745711)))

(assert (=> bs!1965458 (not (= lambda!471692 lambda!471679))))

(assert (=> d!2342119 true))

(assert (=> d!2342119 true))

(assert (=> d!2342119 true))

(assert (=> d!2342119 (= (isDefined!14223 (findConcatSeparation!3637 (regOne!41684 r!14126) (regTwo!41684 r!14126) Nil!73309 s!9605 s!9605)) (Exists!4707 lambda!471692))))

(declare-fun lt!2668599 () Unit!168268)

(declare-fun choose!59381 (Regex!20586 Regex!20586 List!73433) Unit!168268)

(assert (=> d!2342119 (= lt!2668599 (choose!59381 (regOne!41684 r!14126) (regTwo!41684 r!14126) s!9605))))

(assert (=> d!2342119 (validRegex!11004 (regOne!41684 r!14126))))

(assert (=> d!2342119 (= (lemmaFindConcatSeparationEquivalentToExists!3395 (regOne!41684 r!14126) (regTwo!41684 r!14126) s!9605) lt!2668599)))

(declare-fun bs!1965459 () Bool)

(assert (= bs!1965459 d!2342119))

(assert (=> bs!1965459 m!8213772))

(declare-fun m!8213870 () Bool)

(assert (=> bs!1965459 m!8213870))

(assert (=> bs!1965459 m!8213792))

(declare-fun m!8213872 () Bool)

(assert (=> bs!1965459 m!8213872))

(assert (=> bs!1965459 m!8213792))

(declare-fun m!8213874 () Bool)

(assert (=> bs!1965459 m!8213874))

(assert (=> b!7745698 d!2342119))

(declare-fun b!7745888 () Bool)

(declare-fun e!4592296 () Bool)

(declare-fun lt!2668609 () Option!17607)

(assert (=> b!7745888 (= e!4592296 (not (isDefined!14223 lt!2668609)))))

(declare-fun b!7745889 () Bool)

(declare-fun lt!2668607 () Unit!168268)

(declare-fun lt!2668608 () Unit!168268)

(assert (=> b!7745889 (= lt!2668607 lt!2668608)))

(assert (=> b!7745889 (= (++!17785 (++!17785 Nil!73309 (Cons!73309 (h!79757 s!9605) Nil!73309)) (t!388168 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3332 (List!73433 C!41498 List!73433 List!73433) Unit!168268)

(assert (=> b!7745889 (= lt!2668608 (lemmaMoveElementToOtherListKeepsConcatEq!3332 Nil!73309 (h!79757 s!9605) (t!388168 s!9605) s!9605))))

(declare-fun e!4592297 () Option!17607)

(assert (=> b!7745889 (= e!4592297 (findConcatSeparation!3637 (regOne!41684 r!14126) (regTwo!41684 r!14126) (++!17785 Nil!73309 (Cons!73309 (h!79757 s!9605) Nil!73309)) (t!388168 s!9605) s!9605))))

(declare-fun b!7745890 () Bool)

(declare-fun e!4592298 () Bool)

(assert (=> b!7745890 (= e!4592298 (matchR!10078 (regTwo!41684 r!14126) s!9605))))

(declare-fun d!2342121 () Bool)

(assert (=> d!2342121 e!4592296))

(declare-fun res!3088268 () Bool)

(assert (=> d!2342121 (=> res!3088268 e!4592296)))

(declare-fun e!4592295 () Bool)

(assert (=> d!2342121 (= res!3088268 e!4592295)))

(declare-fun res!3088265 () Bool)

(assert (=> d!2342121 (=> (not res!3088265) (not e!4592295))))

(assert (=> d!2342121 (= res!3088265 (isDefined!14223 lt!2668609))))

(declare-fun e!4592299 () Option!17607)

(assert (=> d!2342121 (= lt!2668609 e!4592299)))

(declare-fun c!1428717 () Bool)

(assert (=> d!2342121 (= c!1428717 e!4592298)))

(declare-fun res!3088267 () Bool)

(assert (=> d!2342121 (=> (not res!3088267) (not e!4592298))))

(assert (=> d!2342121 (= res!3088267 (matchR!10078 (regOne!41684 r!14126) Nil!73309))))

(assert (=> d!2342121 (validRegex!11004 (regOne!41684 r!14126))))

(assert (=> d!2342121 (= (findConcatSeparation!3637 (regOne!41684 r!14126) (regTwo!41684 r!14126) Nil!73309 s!9605 s!9605) lt!2668609)))

(declare-fun b!7745891 () Bool)

(declare-fun res!3088269 () Bool)

(assert (=> b!7745891 (=> (not res!3088269) (not e!4592295))))

(assert (=> b!7745891 (= res!3088269 (matchR!10078 (regOne!41684 r!14126) (_1!38116 (get!26070 lt!2668609))))))

(declare-fun b!7745892 () Bool)

(assert (=> b!7745892 (= e!4592297 None!17606)))

(declare-fun b!7745893 () Bool)

(assert (=> b!7745893 (= e!4592299 (Some!17606 (tuple2!69627 Nil!73309 s!9605)))))

(declare-fun b!7745894 () Bool)

(assert (=> b!7745894 (= e!4592299 e!4592297)))

(declare-fun c!1428716 () Bool)

(assert (=> b!7745894 (= c!1428716 (is-Nil!73309 s!9605))))

(declare-fun b!7745895 () Bool)

(declare-fun res!3088266 () Bool)

(assert (=> b!7745895 (=> (not res!3088266) (not e!4592295))))

(assert (=> b!7745895 (= res!3088266 (matchR!10078 (regTwo!41684 r!14126) (_2!38116 (get!26070 lt!2668609))))))

(declare-fun b!7745896 () Bool)

(assert (=> b!7745896 (= e!4592295 (= (++!17785 (_1!38116 (get!26070 lt!2668609)) (_2!38116 (get!26070 lt!2668609))) s!9605))))

(assert (= (and d!2342121 res!3088267) b!7745890))

(assert (= (and d!2342121 c!1428717) b!7745893))

(assert (= (and d!2342121 (not c!1428717)) b!7745894))

(assert (= (and b!7745894 c!1428716) b!7745892))

(assert (= (and b!7745894 (not c!1428716)) b!7745889))

(assert (= (and d!2342121 res!3088265) b!7745891))

(assert (= (and b!7745891 res!3088269) b!7745895))

(assert (= (and b!7745895 res!3088266) b!7745896))

(assert (= (and d!2342121 (not res!3088268)) b!7745888))

(declare-fun m!8213890 () Bool)

(assert (=> d!2342121 m!8213890))

(declare-fun m!8213892 () Bool)

(assert (=> d!2342121 m!8213892))

(assert (=> d!2342121 m!8213772))

(assert (=> b!7745888 m!8213890))

(declare-fun m!8213894 () Bool)

(assert (=> b!7745891 m!8213894))

(declare-fun m!8213896 () Bool)

(assert (=> b!7745891 m!8213896))

(assert (=> b!7745895 m!8213894))

(declare-fun m!8213898 () Bool)

(assert (=> b!7745895 m!8213898))

(declare-fun m!8213900 () Bool)

(assert (=> b!7745889 m!8213900))

(assert (=> b!7745889 m!8213900))

(declare-fun m!8213902 () Bool)

(assert (=> b!7745889 m!8213902))

(declare-fun m!8213904 () Bool)

(assert (=> b!7745889 m!8213904))

(assert (=> b!7745889 m!8213900))

(declare-fun m!8213906 () Bool)

(assert (=> b!7745889 m!8213906))

(assert (=> b!7745896 m!8213894))

(declare-fun m!8213908 () Bool)

(assert (=> b!7745896 m!8213908))

(declare-fun m!8213910 () Bool)

(assert (=> b!7745890 m!8213910))

(assert (=> b!7745698 d!2342121))

(declare-fun d!2342125 () Bool)

(declare-fun choose!59382 (Int) Bool)

(assert (=> d!2342125 (= (Exists!4707 lambda!471678) (choose!59382 lambda!471678))))

(declare-fun bs!1965460 () Bool)

(assert (= bs!1965460 d!2342125))

(declare-fun m!8213912 () Bool)

(assert (=> bs!1965460 m!8213912))

(assert (=> b!7745698 d!2342125))

(declare-fun d!2342127 () Bool)

(declare-fun isEmpty!41999 (Option!17607) Bool)

(assert (=> d!2342127 (= (isDefined!14223 lt!2668556) (not (isEmpty!41999 lt!2668556)))))

(declare-fun bs!1965461 () Bool)

(assert (= bs!1965461 d!2342127))

(declare-fun m!8213914 () Bool)

(assert (=> bs!1965461 m!8213914))

(assert (=> b!7745698 d!2342127))

(declare-fun b!7745924 () Bool)

(declare-fun res!3088289 () Bool)

(declare-fun e!4592325 () Bool)

(assert (=> b!7745924 (=> res!3088289 e!4592325)))

(assert (=> b!7745924 (= res!3088289 (not (is-Concat!29431 (regTwo!41684 r!14126))))))

(declare-fun e!4592324 () Bool)

(assert (=> b!7745924 (= e!4592324 e!4592325)))

(declare-fun bm!717895 () Bool)

(declare-fun call!717900 () Bool)

(declare-fun c!1428724 () Bool)

(assert (=> bm!717895 (= call!717900 (validRegex!11004 (ite c!1428724 (regOne!41685 (regTwo!41684 r!14126)) (regOne!41684 (regTwo!41684 r!14126)))))))

(declare-fun b!7745925 () Bool)

(declare-fun e!4592321 () Bool)

(assert (=> b!7745925 (= e!4592325 e!4592321)))

(declare-fun res!3088285 () Bool)

(assert (=> b!7745925 (=> (not res!3088285) (not e!4592321))))

(assert (=> b!7745925 (= res!3088285 call!717900)))

(declare-fun b!7745926 () Bool)

(declare-fun e!4592326 () Bool)

(declare-fun e!4592327 () Bool)

(assert (=> b!7745926 (= e!4592326 e!4592327)))

(declare-fun res!3088287 () Bool)

(assert (=> b!7745926 (= res!3088287 (not (nullable!9059 (reg!20915 (regTwo!41684 r!14126)))))))

(assert (=> b!7745926 (=> (not res!3088287) (not e!4592327))))

(declare-fun b!7745927 () Bool)

(declare-fun e!4592323 () Bool)

(declare-fun call!717899 () Bool)

(assert (=> b!7745927 (= e!4592323 call!717899)))

(declare-fun b!7745928 () Bool)

(declare-fun call!717901 () Bool)

(assert (=> b!7745928 (= e!4592327 call!717901)))

(declare-fun bm!717896 () Bool)

(assert (=> bm!717896 (= call!717899 call!717901)))

(declare-fun b!7745929 () Bool)

(declare-fun res!3088286 () Bool)

(assert (=> b!7745929 (=> (not res!3088286) (not e!4592323))))

(assert (=> b!7745929 (= res!3088286 call!717900)))

(assert (=> b!7745929 (= e!4592324 e!4592323)))

(declare-fun b!7745930 () Bool)

(assert (=> b!7745930 (= e!4592321 call!717899)))

(declare-fun d!2342129 () Bool)

(declare-fun res!3088288 () Bool)

(declare-fun e!4592322 () Bool)

(assert (=> d!2342129 (=> res!3088288 e!4592322)))

(assert (=> d!2342129 (= res!3088288 (is-ElementMatch!20586 (regTwo!41684 r!14126)))))

(assert (=> d!2342129 (= (validRegex!11004 (regTwo!41684 r!14126)) e!4592322)))

(declare-fun c!1428725 () Bool)

(declare-fun bm!717894 () Bool)

(assert (=> bm!717894 (= call!717901 (validRegex!11004 (ite c!1428725 (reg!20915 (regTwo!41684 r!14126)) (ite c!1428724 (regTwo!41685 (regTwo!41684 r!14126)) (regTwo!41684 (regTwo!41684 r!14126))))))))

(declare-fun b!7745931 () Bool)

(assert (=> b!7745931 (= e!4592322 e!4592326)))

(assert (=> b!7745931 (= c!1428725 (is-Star!20586 (regTwo!41684 r!14126)))))

(declare-fun b!7745932 () Bool)

(assert (=> b!7745932 (= e!4592326 e!4592324)))

(assert (=> b!7745932 (= c!1428724 (is-Union!20586 (regTwo!41684 r!14126)))))

(assert (= (and d!2342129 (not res!3088288)) b!7745931))

(assert (= (and b!7745931 c!1428725) b!7745926))

(assert (= (and b!7745931 (not c!1428725)) b!7745932))

(assert (= (and b!7745926 res!3088287) b!7745928))

(assert (= (and b!7745932 c!1428724) b!7745929))

(assert (= (and b!7745932 (not c!1428724)) b!7745924))

(assert (= (and b!7745929 res!3088286) b!7745927))

(assert (= (and b!7745924 (not res!3088289)) b!7745925))

(assert (= (and b!7745925 res!3088285) b!7745930))

(assert (= (or b!7745929 b!7745925) bm!717895))

(assert (= (or b!7745927 b!7745930) bm!717896))

(assert (= (or b!7745928 bm!717896) bm!717894))

(declare-fun m!8213922 () Bool)

(assert (=> bm!717895 m!8213922))

(declare-fun m!8213924 () Bool)

(assert (=> b!7745926 m!8213924))

(declare-fun m!8213926 () Bool)

(assert (=> bm!717894 m!8213926))

(assert (=> b!7745704 d!2342129))

(declare-fun d!2342133 () Bool)

(assert (=> d!2342133 (= (get!26070 lt!2668556) (v!54741 lt!2668556))))

(assert (=> b!7745708 d!2342133))

(declare-fun d!2342135 () Bool)

(assert (=> d!2342135 (matchR!10078 (Concat!29431 (regOne!41684 r!14126) (regTwo!41684 r!14126)) (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560)))))

(declare-fun lt!2668612 () Unit!168268)

(declare-fun choose!59383 (Regex!20586 Regex!20586 List!73433 List!73433 List!73433) Unit!168268)

(assert (=> d!2342135 (= lt!2668612 (choose!59383 (regOne!41684 r!14126) (regTwo!41684 r!14126) (_1!38116 lt!2668560) (_2!38116 lt!2668560) s!9605))))

(assert (=> d!2342135 (validRegex!11004 (regOne!41684 r!14126))))

(assert (=> d!2342135 (= (lemmaFindSeparationIsDefinedThenConcatMatches!211 (regOne!41684 r!14126) (regTwo!41684 r!14126) (_1!38116 lt!2668560) (_2!38116 lt!2668560) s!9605) lt!2668612)))

(declare-fun bs!1965462 () Bool)

(assert (= bs!1965462 d!2342135))

(assert (=> bs!1965462 m!8213784))

(assert (=> bs!1965462 m!8213784))

(declare-fun m!8213928 () Bool)

(assert (=> bs!1965462 m!8213928))

(declare-fun m!8213930 () Bool)

(assert (=> bs!1965462 m!8213930))

(assert (=> bs!1965462 m!8213772))

(assert (=> b!7745708 d!2342135))

(declare-fun b!7745933 () Bool)

(declare-fun e!4592333 () Bool)

(declare-fun lt!2668613 () Bool)

(declare-fun call!717902 () Bool)

(assert (=> b!7745933 (= e!4592333 (= lt!2668613 call!717902))))

(declare-fun b!7745934 () Bool)

(declare-fun res!3088292 () Bool)

(declare-fun e!4592332 () Bool)

(assert (=> b!7745934 (=> res!3088292 e!4592332)))

(assert (=> b!7745934 (= res!3088292 (not (isEmpty!41998 (tail!15358 (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560))))))))

(declare-fun b!7745935 () Bool)

(declare-fun e!4592331 () Bool)

(assert (=> b!7745935 (= e!4592331 (matchR!10078 (derivativeStep!6018 r!14126 (head!15818 (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560)))) (tail!15358 (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560)))))))

(declare-fun b!7745936 () Bool)

(declare-fun e!4592334 () Bool)

(declare-fun e!4592328 () Bool)

(assert (=> b!7745936 (= e!4592334 e!4592328)))

(declare-fun res!3088291 () Bool)

(assert (=> b!7745936 (=> (not res!3088291) (not e!4592328))))

(assert (=> b!7745936 (= res!3088291 (not lt!2668613))))

(declare-fun b!7745937 () Bool)

(declare-fun e!4592329 () Bool)

(assert (=> b!7745937 (= e!4592329 (= (head!15818 (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560))) (c!1428688 r!14126)))))

(declare-fun b!7745938 () Bool)

(declare-fun res!3088296 () Bool)

(assert (=> b!7745938 (=> res!3088296 e!4592334)))

(assert (=> b!7745938 (= res!3088296 (not (is-ElementMatch!20586 r!14126)))))

(declare-fun e!4592330 () Bool)

(assert (=> b!7745938 (= e!4592330 e!4592334)))

(declare-fun b!7745939 () Bool)

(assert (=> b!7745939 (= e!4592333 e!4592330)))

(declare-fun c!1428728 () Bool)

(assert (=> b!7745939 (= c!1428728 (is-EmptyLang!20586 r!14126))))

(declare-fun b!7745940 () Bool)

(assert (=> b!7745940 (= e!4592331 (nullable!9059 r!14126))))

(declare-fun b!7745941 () Bool)

(declare-fun res!3088293 () Bool)

(assert (=> b!7745941 (=> (not res!3088293) (not e!4592329))))

(assert (=> b!7745941 (= res!3088293 (isEmpty!41998 (tail!15358 (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560)))))))

(declare-fun bm!717897 () Bool)

(assert (=> bm!717897 (= call!717902 (isEmpty!41998 (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560))))))

(declare-fun b!7745942 () Bool)

(assert (=> b!7745942 (= e!4592328 e!4592332)))

(declare-fun res!3088295 () Bool)

(assert (=> b!7745942 (=> res!3088295 e!4592332)))

(assert (=> b!7745942 (= res!3088295 call!717902)))

(declare-fun b!7745943 () Bool)

(assert (=> b!7745943 (= e!4592332 (not (= (head!15818 (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560))) (c!1428688 r!14126))))))

(declare-fun d!2342137 () Bool)

(assert (=> d!2342137 e!4592333))

(declare-fun c!1428726 () Bool)

(assert (=> d!2342137 (= c!1428726 (is-EmptyExpr!20586 r!14126))))

(assert (=> d!2342137 (= lt!2668613 e!4592331)))

(declare-fun c!1428727 () Bool)

(assert (=> d!2342137 (= c!1428727 (isEmpty!41998 (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560))))))

(assert (=> d!2342137 (validRegex!11004 r!14126)))

(assert (=> d!2342137 (= (matchR!10078 r!14126 (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560))) lt!2668613)))

(declare-fun b!7745944 () Bool)

(declare-fun res!3088297 () Bool)

(assert (=> b!7745944 (=> (not res!3088297) (not e!4592329))))

(assert (=> b!7745944 (= res!3088297 (not call!717902))))

(declare-fun b!7745945 () Bool)

(declare-fun res!3088294 () Bool)

(assert (=> b!7745945 (=> res!3088294 e!4592334)))

(assert (=> b!7745945 (= res!3088294 e!4592329)))

(declare-fun res!3088290 () Bool)

(assert (=> b!7745945 (=> (not res!3088290) (not e!4592329))))

(assert (=> b!7745945 (= res!3088290 lt!2668613)))

(declare-fun b!7745946 () Bool)

(assert (=> b!7745946 (= e!4592330 (not lt!2668613))))

(assert (= (and d!2342137 c!1428727) b!7745940))

(assert (= (and d!2342137 (not c!1428727)) b!7745935))

(assert (= (and d!2342137 c!1428726) b!7745933))

(assert (= (and d!2342137 (not c!1428726)) b!7745939))

(assert (= (and b!7745939 c!1428728) b!7745946))

(assert (= (and b!7745939 (not c!1428728)) b!7745938))

(assert (= (and b!7745938 (not res!3088296)) b!7745945))

(assert (= (and b!7745945 res!3088290) b!7745944))

(assert (= (and b!7745944 res!3088297) b!7745941))

(assert (= (and b!7745941 res!3088293) b!7745937))

(assert (= (and b!7745945 (not res!3088294)) b!7745936))

(assert (= (and b!7745936 res!3088291) b!7745942))

(assert (= (and b!7745942 (not res!3088295)) b!7745934))

(assert (= (and b!7745934 (not res!3088292)) b!7745943))

(assert (= (or b!7745933 b!7745942 b!7745944) bm!717897))

(assert (=> b!7745935 m!8213784))

(declare-fun m!8213932 () Bool)

(assert (=> b!7745935 m!8213932))

(assert (=> b!7745935 m!8213932))

(declare-fun m!8213934 () Bool)

(assert (=> b!7745935 m!8213934))

(assert (=> b!7745935 m!8213784))

(declare-fun m!8213936 () Bool)

(assert (=> b!7745935 m!8213936))

(assert (=> b!7745935 m!8213934))

(assert (=> b!7745935 m!8213936))

(declare-fun m!8213938 () Bool)

(assert (=> b!7745935 m!8213938))

(assert (=> b!7745943 m!8213784))

(assert (=> b!7745943 m!8213932))

(assert (=> b!7745941 m!8213784))

(assert (=> b!7745941 m!8213936))

(assert (=> b!7745941 m!8213936))

(declare-fun m!8213940 () Bool)

(assert (=> b!7745941 m!8213940))

(assert (=> bm!717897 m!8213784))

(declare-fun m!8213942 () Bool)

(assert (=> bm!717897 m!8213942))

(assert (=> b!7745937 m!8213784))

(assert (=> b!7745937 m!8213932))

(assert (=> b!7745934 m!8213784))

(assert (=> b!7745934 m!8213936))

(assert (=> b!7745934 m!8213936))

(assert (=> b!7745934 m!8213940))

(assert (=> d!2342137 m!8213784))

(assert (=> d!2342137 m!8213942))

(assert (=> d!2342137 m!8213798))

(assert (=> b!7745940 m!8213868))

(assert (=> b!7745708 d!2342137))

(declare-fun b!7745947 () Bool)

(declare-fun e!4592335 () List!73433)

(assert (=> b!7745947 (= e!4592335 (_2!38116 lt!2668560))))

(declare-fun b!7745949 () Bool)

(declare-fun res!3088299 () Bool)

(declare-fun e!4592336 () Bool)

(assert (=> b!7745949 (=> (not res!3088299) (not e!4592336))))

(declare-fun lt!2668614 () List!73433)

(assert (=> b!7745949 (= res!3088299 (= (size!42644 lt!2668614) (+ (size!42644 (_1!38116 lt!2668560)) (size!42644 (_2!38116 lt!2668560)))))))

(declare-fun b!7745948 () Bool)

(assert (=> b!7745948 (= e!4592335 (Cons!73309 (h!79757 (_1!38116 lt!2668560)) (++!17785 (t!388168 (_1!38116 lt!2668560)) (_2!38116 lt!2668560))))))

(declare-fun b!7745950 () Bool)

(assert (=> b!7745950 (= e!4592336 (or (not (= (_2!38116 lt!2668560) Nil!73309)) (= lt!2668614 (_1!38116 lt!2668560))))))

(declare-fun d!2342139 () Bool)

(assert (=> d!2342139 e!4592336))

(declare-fun res!3088298 () Bool)

(assert (=> d!2342139 (=> (not res!3088298) (not e!4592336))))

(assert (=> d!2342139 (= res!3088298 (= (content!15541 lt!2668614) (set.union (content!15541 (_1!38116 lt!2668560)) (content!15541 (_2!38116 lt!2668560)))))))

(assert (=> d!2342139 (= lt!2668614 e!4592335)))

(declare-fun c!1428729 () Bool)

(assert (=> d!2342139 (= c!1428729 (is-Nil!73309 (_1!38116 lt!2668560)))))

(assert (=> d!2342139 (= (++!17785 (_1!38116 lt!2668560) (_2!38116 lt!2668560)) lt!2668614)))

(assert (= (and d!2342139 c!1428729) b!7745947))

(assert (= (and d!2342139 (not c!1428729)) b!7745948))

(assert (= (and d!2342139 res!3088298) b!7745949))

(assert (= (and b!7745949 res!3088299) b!7745950))

(declare-fun m!8213944 () Bool)

(assert (=> b!7745949 m!8213944))

(declare-fun m!8213946 () Bool)

(assert (=> b!7745949 m!8213946))

(declare-fun m!8213948 () Bool)

(assert (=> b!7745949 m!8213948))

(declare-fun m!8213950 () Bool)

(assert (=> b!7745948 m!8213950))

(declare-fun m!8213952 () Bool)

(assert (=> d!2342139 m!8213952))

(declare-fun m!8213954 () Bool)

(assert (=> d!2342139 m!8213954))

(declare-fun m!8213956 () Bool)

(assert (=> d!2342139 m!8213956))

(assert (=> b!7745708 d!2342139))

(declare-fun d!2342141 () Bool)

(assert (=> d!2342141 (= (Exists!4707 lambda!471679) (choose!59382 lambda!471679))))

(declare-fun bs!1965463 () Bool)

(assert (= bs!1965463 d!2342141))

(declare-fun m!8213958 () Bool)

(assert (=> bs!1965463 m!8213958))

(assert (=> b!7745711 d!2342141))

(declare-fun d!2342143 () Bool)

(declare-fun lt!2668619 () tuple2!69626)

(declare-fun dynLambda!29979 (Int tuple2!69626) Bool)

(assert (=> d!2342143 (dynLambda!29979 lambda!471679 lt!2668619)))

(declare-fun choose!59384 (Int) tuple2!69626)

(assert (=> d!2342143 (= lt!2668619 (choose!59384 lambda!471679))))

(assert (=> d!2342143 (Exists!4707 lambda!471679)))

(assert (=> d!2342143 (= (pickWitness!543 lambda!471679) lt!2668619)))

(declare-fun b_lambda!289395 () Bool)

(assert (=> (not b_lambda!289395) (not d!2342143)))

(declare-fun bs!1965464 () Bool)

(assert (= bs!1965464 d!2342143))

(declare-fun m!8213960 () Bool)

(assert (=> bs!1965464 m!8213960))

(declare-fun m!8213962 () Bool)

(assert (=> bs!1965464 m!8213962))

(assert (=> bs!1965464 m!8213758))

(assert (=> b!7745706 d!2342143))

(declare-fun b!7745973 () Bool)

(declare-fun e!4592352 () Bool)

(declare-fun lt!2668620 () Bool)

(declare-fun call!717903 () Bool)

(assert (=> b!7745973 (= e!4592352 (= lt!2668620 call!717903))))

(declare-fun b!7745974 () Bool)

(declare-fun res!3088312 () Bool)

(declare-fun e!4592351 () Bool)

(assert (=> b!7745974 (=> res!3088312 e!4592351)))

(assert (=> b!7745974 (= res!3088312 (not (isEmpty!41998 (tail!15358 (_1!38116 lt!2668558)))))))

(declare-fun b!7745975 () Bool)

(declare-fun e!4592350 () Bool)

(assert (=> b!7745975 (= e!4592350 (matchR!10078 (derivativeStep!6018 (regOne!41684 r!14126) (head!15818 (_1!38116 lt!2668558))) (tail!15358 (_1!38116 lt!2668558))))))

(declare-fun b!7745976 () Bool)

(declare-fun e!4592353 () Bool)

(declare-fun e!4592347 () Bool)

(assert (=> b!7745976 (= e!4592353 e!4592347)))

(declare-fun res!3088311 () Bool)

(assert (=> b!7745976 (=> (not res!3088311) (not e!4592347))))

(assert (=> b!7745976 (= res!3088311 (not lt!2668620))))

(declare-fun b!7745977 () Bool)

(declare-fun e!4592348 () Bool)

(assert (=> b!7745977 (= e!4592348 (= (head!15818 (_1!38116 lt!2668558)) (c!1428688 (regOne!41684 r!14126))))))

(declare-fun b!7745978 () Bool)

(declare-fun res!3088316 () Bool)

(assert (=> b!7745978 (=> res!3088316 e!4592353)))

(assert (=> b!7745978 (= res!3088316 (not (is-ElementMatch!20586 (regOne!41684 r!14126))))))

(declare-fun e!4592349 () Bool)

(assert (=> b!7745978 (= e!4592349 e!4592353)))

(declare-fun b!7745979 () Bool)

(assert (=> b!7745979 (= e!4592352 e!4592349)))

(declare-fun c!1428738 () Bool)

(assert (=> b!7745979 (= c!1428738 (is-EmptyLang!20586 (regOne!41684 r!14126)))))

(declare-fun b!7745980 () Bool)

(assert (=> b!7745980 (= e!4592350 (nullable!9059 (regOne!41684 r!14126)))))

(declare-fun b!7745981 () Bool)

(declare-fun res!3088313 () Bool)

(assert (=> b!7745981 (=> (not res!3088313) (not e!4592348))))

(assert (=> b!7745981 (= res!3088313 (isEmpty!41998 (tail!15358 (_1!38116 lt!2668558))))))

(declare-fun bm!717898 () Bool)

(assert (=> bm!717898 (= call!717903 (isEmpty!41998 (_1!38116 lt!2668558)))))

(declare-fun b!7745982 () Bool)

(assert (=> b!7745982 (= e!4592347 e!4592351)))

(declare-fun res!3088315 () Bool)

(assert (=> b!7745982 (=> res!3088315 e!4592351)))

(assert (=> b!7745982 (= res!3088315 call!717903)))

(declare-fun b!7745983 () Bool)

(assert (=> b!7745983 (= e!4592351 (not (= (head!15818 (_1!38116 lt!2668558)) (c!1428688 (regOne!41684 r!14126)))))))

(declare-fun d!2342145 () Bool)

(assert (=> d!2342145 e!4592352))

(declare-fun c!1428736 () Bool)

(assert (=> d!2342145 (= c!1428736 (is-EmptyExpr!20586 (regOne!41684 r!14126)))))

(assert (=> d!2342145 (= lt!2668620 e!4592350)))

(declare-fun c!1428737 () Bool)

(assert (=> d!2342145 (= c!1428737 (isEmpty!41998 (_1!38116 lt!2668558)))))

(assert (=> d!2342145 (validRegex!11004 (regOne!41684 r!14126))))

(assert (=> d!2342145 (= (matchR!10078 (regOne!41684 r!14126) (_1!38116 lt!2668558)) lt!2668620)))

(declare-fun b!7745984 () Bool)

(declare-fun res!3088317 () Bool)

(assert (=> b!7745984 (=> (not res!3088317) (not e!4592348))))

(assert (=> b!7745984 (= res!3088317 (not call!717903))))

(declare-fun b!7745987 () Bool)

(declare-fun res!3088314 () Bool)

(assert (=> b!7745987 (=> res!3088314 e!4592353)))

(assert (=> b!7745987 (= res!3088314 e!4592348)))

(declare-fun res!3088310 () Bool)

(assert (=> b!7745987 (=> (not res!3088310) (not e!4592348))))

(assert (=> b!7745987 (= res!3088310 lt!2668620)))

(declare-fun b!7745988 () Bool)

(assert (=> b!7745988 (= e!4592349 (not lt!2668620))))

(assert (= (and d!2342145 c!1428737) b!7745980))

(assert (= (and d!2342145 (not c!1428737)) b!7745975))

(assert (= (and d!2342145 c!1428736) b!7745973))

(assert (= (and d!2342145 (not c!1428736)) b!7745979))

(assert (= (and b!7745979 c!1428738) b!7745988))

(assert (= (and b!7745979 (not c!1428738)) b!7745978))

(assert (= (and b!7745978 (not res!3088316)) b!7745987))

(assert (= (and b!7745987 res!3088310) b!7745984))

(assert (= (and b!7745984 res!3088317) b!7745981))

(assert (= (and b!7745981 res!3088313) b!7745977))

(assert (= (and b!7745987 (not res!3088314)) b!7745976))

(assert (= (and b!7745976 res!3088311) b!7745982))

(assert (= (and b!7745982 (not res!3088315)) b!7745974))

(assert (= (and b!7745974 (not res!3088312)) b!7745983))

(assert (= (or b!7745973 b!7745982 b!7745984) bm!717898))

(declare-fun m!8213964 () Bool)

(assert (=> b!7745975 m!8213964))

(assert (=> b!7745975 m!8213964))

(declare-fun m!8213966 () Bool)

(assert (=> b!7745975 m!8213966))

(declare-fun m!8213968 () Bool)

(assert (=> b!7745975 m!8213968))

(assert (=> b!7745975 m!8213966))

(assert (=> b!7745975 m!8213968))

(declare-fun m!8213970 () Bool)

(assert (=> b!7745975 m!8213970))

(assert (=> b!7745983 m!8213964))

(assert (=> b!7745981 m!8213968))

(assert (=> b!7745981 m!8213968))

(declare-fun m!8213972 () Bool)

(assert (=> b!7745981 m!8213972))

(declare-fun m!8213974 () Bool)

(assert (=> bm!717898 m!8213974))

(assert (=> b!7745977 m!8213964))

(assert (=> b!7745974 m!8213968))

(assert (=> b!7745974 m!8213968))

(assert (=> b!7745974 m!8213972))

(assert (=> d!2342145 m!8213974))

(assert (=> d!2342145 m!8213772))

(declare-fun m!8213976 () Bool)

(assert (=> b!7745980 m!8213976))

(assert (=> b!7745706 d!2342145))

(declare-fun bs!1965465 () Bool)

(declare-fun b!7746042 () Bool)

(assert (= bs!1965465 (and b!7746042 b!7745698)))

(declare-fun lambda!471697 () Int)

(assert (=> bs!1965465 (not (= lambda!471697 lambda!471678))))

(declare-fun bs!1965466 () Bool)

(assert (= bs!1965466 (and b!7746042 b!7745711)))

(assert (=> bs!1965466 (not (= lambda!471697 lambda!471679))))

(declare-fun bs!1965467 () Bool)

(assert (= bs!1965467 (and b!7746042 d!2342119)))

(assert (=> bs!1965467 (not (= lambda!471697 lambda!471692))))

(assert (=> b!7746042 true))

(assert (=> b!7746042 true))

(declare-fun bs!1965468 () Bool)

(declare-fun b!7746047 () Bool)

(assert (= bs!1965468 (and b!7746047 b!7745698)))

(declare-fun lambda!471698 () Int)

(assert (=> bs!1965468 (not (= lambda!471698 lambda!471678))))

(declare-fun bs!1965469 () Bool)

(assert (= bs!1965469 (and b!7746047 b!7745711)))

(assert (=> bs!1965469 (= (and (= (_2!38116 lt!2668558) s!9605) (= (regOne!41684 (regTwo!41684 r!14126)) (regOne!41684 r!14126)) (= (regTwo!41684 (regTwo!41684 r!14126)) (regTwo!41684 r!14126))) (= lambda!471698 lambda!471679))))

(declare-fun bs!1965470 () Bool)

(assert (= bs!1965470 (and b!7746047 d!2342119)))

(assert (=> bs!1965470 (not (= lambda!471698 lambda!471692))))

(declare-fun bs!1965471 () Bool)

(assert (= bs!1965471 (and b!7746047 b!7746042)))

(assert (=> bs!1965471 (not (= lambda!471698 lambda!471697))))

(assert (=> b!7746047 true))

(assert (=> b!7746047 true))

(declare-fun c!1428752 () Bool)

(declare-fun call!717911 () Bool)

(declare-fun bm!717906 () Bool)

(assert (=> bm!717906 (= call!717911 (Exists!4707 (ite c!1428752 lambda!471697 lambda!471698)))))

(declare-fun b!7746039 () Bool)

(declare-fun e!4592389 () Bool)

(declare-fun e!4592388 () Bool)

(assert (=> b!7746039 (= e!4592389 e!4592388)))

(declare-fun res!3088349 () Bool)

(assert (=> b!7746039 (= res!3088349 (not (is-EmptyLang!20586 (regTwo!41684 r!14126))))))

(assert (=> b!7746039 (=> (not res!3088349) (not e!4592388))))

(declare-fun b!7746040 () Bool)

(declare-fun res!3088348 () Bool)

(declare-fun e!4592387 () Bool)

(assert (=> b!7746040 (=> res!3088348 e!4592387)))

(declare-fun call!717912 () Bool)

(assert (=> b!7746040 (= res!3088348 call!717912)))

(declare-fun e!4592386 () Bool)

(assert (=> b!7746040 (= e!4592386 e!4592387)))

(declare-fun d!2342147 () Bool)

(declare-fun c!1428751 () Bool)

(assert (=> d!2342147 (= c!1428751 (is-EmptyExpr!20586 (regTwo!41684 r!14126)))))

(assert (=> d!2342147 (= (matchRSpec!4651 (regTwo!41684 r!14126) (_2!38116 lt!2668558)) e!4592389)))

(declare-fun b!7746041 () Bool)

(declare-fun e!4592385 () Bool)

(assert (=> b!7746041 (= e!4592385 (matchRSpec!4651 (regTwo!41685 (regTwo!41684 r!14126)) (_2!38116 lt!2668558)))))

(assert (=> b!7746042 (= e!4592387 call!717911)))

(declare-fun b!7746043 () Bool)

(declare-fun e!4592383 () Bool)

(assert (=> b!7746043 (= e!4592383 e!4592386)))

(assert (=> b!7746043 (= c!1428752 (is-Star!20586 (regTwo!41684 r!14126)))))

(declare-fun b!7746044 () Bool)

(assert (=> b!7746044 (= e!4592383 e!4592385)))

(declare-fun res!3088350 () Bool)

(assert (=> b!7746044 (= res!3088350 (matchRSpec!4651 (regOne!41685 (regTwo!41684 r!14126)) (_2!38116 lt!2668558)))))

(assert (=> b!7746044 (=> res!3088350 e!4592385)))

(declare-fun b!7746045 () Bool)

(declare-fun e!4592384 () Bool)

(assert (=> b!7746045 (= e!4592384 (= (_2!38116 lt!2668558) (Cons!73309 (c!1428688 (regTwo!41684 r!14126)) Nil!73309)))))

(declare-fun b!7746046 () Bool)

(declare-fun c!1428750 () Bool)

(assert (=> b!7746046 (= c!1428750 (is-ElementMatch!20586 (regTwo!41684 r!14126)))))

(assert (=> b!7746046 (= e!4592388 e!4592384)))

(assert (=> b!7746047 (= e!4592386 call!717911)))

(declare-fun bm!717907 () Bool)

(assert (=> bm!717907 (= call!717912 (isEmpty!41998 (_2!38116 lt!2668558)))))

(declare-fun b!7746048 () Bool)

(declare-fun c!1428753 () Bool)

(assert (=> b!7746048 (= c!1428753 (is-Union!20586 (regTwo!41684 r!14126)))))

(assert (=> b!7746048 (= e!4592384 e!4592383)))

(declare-fun b!7746049 () Bool)

(assert (=> b!7746049 (= e!4592389 call!717912)))

(assert (= (and d!2342147 c!1428751) b!7746049))

(assert (= (and d!2342147 (not c!1428751)) b!7746039))

(assert (= (and b!7746039 res!3088349) b!7746046))

(assert (= (and b!7746046 c!1428750) b!7746045))

(assert (= (and b!7746046 (not c!1428750)) b!7746048))

(assert (= (and b!7746048 c!1428753) b!7746044))

(assert (= (and b!7746048 (not c!1428753)) b!7746043))

(assert (= (and b!7746044 (not res!3088350)) b!7746041))

(assert (= (and b!7746043 c!1428752) b!7746040))

(assert (= (and b!7746043 (not c!1428752)) b!7746047))

(assert (= (and b!7746040 (not res!3088348)) b!7746042))

(assert (= (or b!7746042 b!7746047) bm!717906))

(assert (= (or b!7746049 b!7746040) bm!717907))

(declare-fun m!8213992 () Bool)

(assert (=> bm!717906 m!8213992))

(declare-fun m!8213994 () Bool)

(assert (=> b!7746041 m!8213994))

(declare-fun m!8213996 () Bool)

(assert (=> b!7746044 m!8213996))

(declare-fun m!8213998 () Bool)

(assert (=> bm!717907 m!8213998))

(assert (=> b!7745706 d!2342147))

(declare-fun b!7746050 () Bool)

(declare-fun res!3088355 () Bool)

(declare-fun e!4592394 () Bool)

(assert (=> b!7746050 (=> res!3088355 e!4592394)))

(assert (=> b!7746050 (= res!3088355 (not (is-Concat!29431 (regOne!41684 r!14126))))))

(declare-fun e!4592393 () Bool)

(assert (=> b!7746050 (= e!4592393 e!4592394)))

(declare-fun bm!717909 () Bool)

(declare-fun call!717914 () Bool)

(declare-fun c!1428754 () Bool)

(assert (=> bm!717909 (= call!717914 (validRegex!11004 (ite c!1428754 (regOne!41685 (regOne!41684 r!14126)) (regOne!41684 (regOne!41684 r!14126)))))))

(declare-fun b!7746051 () Bool)

(declare-fun e!4592390 () Bool)

(assert (=> b!7746051 (= e!4592394 e!4592390)))

(declare-fun res!3088351 () Bool)

(assert (=> b!7746051 (=> (not res!3088351) (not e!4592390))))

(assert (=> b!7746051 (= res!3088351 call!717914)))

(declare-fun b!7746052 () Bool)

(declare-fun e!4592395 () Bool)

(declare-fun e!4592396 () Bool)

(assert (=> b!7746052 (= e!4592395 e!4592396)))

(declare-fun res!3088353 () Bool)

(assert (=> b!7746052 (= res!3088353 (not (nullable!9059 (reg!20915 (regOne!41684 r!14126)))))))

(assert (=> b!7746052 (=> (not res!3088353) (not e!4592396))))

(declare-fun b!7746053 () Bool)

(declare-fun e!4592392 () Bool)

(declare-fun call!717913 () Bool)

(assert (=> b!7746053 (= e!4592392 call!717913)))

(declare-fun b!7746054 () Bool)

(declare-fun call!717915 () Bool)

(assert (=> b!7746054 (= e!4592396 call!717915)))

(declare-fun bm!717910 () Bool)

(assert (=> bm!717910 (= call!717913 call!717915)))

(declare-fun b!7746055 () Bool)

(declare-fun res!3088352 () Bool)

(assert (=> b!7746055 (=> (not res!3088352) (not e!4592392))))

(assert (=> b!7746055 (= res!3088352 call!717914)))

(assert (=> b!7746055 (= e!4592393 e!4592392)))

(declare-fun b!7746056 () Bool)

(assert (=> b!7746056 (= e!4592390 call!717913)))

(declare-fun d!2342151 () Bool)

(declare-fun res!3088354 () Bool)

(declare-fun e!4592391 () Bool)

(assert (=> d!2342151 (=> res!3088354 e!4592391)))

(assert (=> d!2342151 (= res!3088354 (is-ElementMatch!20586 (regOne!41684 r!14126)))))

(assert (=> d!2342151 (= (validRegex!11004 (regOne!41684 r!14126)) e!4592391)))

(declare-fun bm!717908 () Bool)

(declare-fun c!1428755 () Bool)

(assert (=> bm!717908 (= call!717915 (validRegex!11004 (ite c!1428755 (reg!20915 (regOne!41684 r!14126)) (ite c!1428754 (regTwo!41685 (regOne!41684 r!14126)) (regTwo!41684 (regOne!41684 r!14126))))))))

(declare-fun b!7746057 () Bool)

(assert (=> b!7746057 (= e!4592391 e!4592395)))

(assert (=> b!7746057 (= c!1428755 (is-Star!20586 (regOne!41684 r!14126)))))

(declare-fun b!7746058 () Bool)

(assert (=> b!7746058 (= e!4592395 e!4592393)))

(assert (=> b!7746058 (= c!1428754 (is-Union!20586 (regOne!41684 r!14126)))))

(assert (= (and d!2342151 (not res!3088354)) b!7746057))

(assert (= (and b!7746057 c!1428755) b!7746052))

(assert (= (and b!7746057 (not c!1428755)) b!7746058))

(assert (= (and b!7746052 res!3088353) b!7746054))

(assert (= (and b!7746058 c!1428754) b!7746055))

(assert (= (and b!7746058 (not c!1428754)) b!7746050))

(assert (= (and b!7746055 res!3088352) b!7746053))

(assert (= (and b!7746050 (not res!3088355)) b!7746051))

(assert (= (and b!7746051 res!3088351) b!7746056))

(assert (= (or b!7746055 b!7746051) bm!717909))

(assert (= (or b!7746053 b!7746056) bm!717910))

(assert (= (or b!7746054 bm!717910) bm!717908))

(declare-fun m!8214000 () Bool)

(assert (=> bm!717909 m!8214000))

(declare-fun m!8214002 () Bool)

(assert (=> b!7746052 m!8214002))

(declare-fun m!8214004 () Bool)

(assert (=> bm!717908 m!8214004))

(assert (=> b!7745706 d!2342151))

(declare-fun d!2342153 () Bool)

(assert (=> d!2342153 (= (matchR!10078 (regTwo!41684 r!14126) (_2!38116 lt!2668558)) (matchRSpec!4651 (regTwo!41684 r!14126) (_2!38116 lt!2668558)))))

(declare-fun lt!2668624 () Unit!168268)

(declare-fun choose!59385 (Regex!20586 List!73433) Unit!168268)

(assert (=> d!2342153 (= lt!2668624 (choose!59385 (regTwo!41684 r!14126) (_2!38116 lt!2668558)))))

(assert (=> d!2342153 (validRegex!11004 (regTwo!41684 r!14126))))

(assert (=> d!2342153 (= (mainMatchTheorem!4621 (regTwo!41684 r!14126) (_2!38116 lt!2668558)) lt!2668624)))

(declare-fun bs!1965472 () Bool)

(assert (= bs!1965472 d!2342153))

(assert (=> bs!1965472 m!8213770))

(assert (=> bs!1965472 m!8213764))

(declare-fun m!8214006 () Bool)

(assert (=> bs!1965472 m!8214006))

(assert (=> bs!1965472 m!8213778))

(assert (=> b!7745706 d!2342153))

(declare-fun b!7746059 () Bool)

(declare-fun e!4592402 () Bool)

(declare-fun lt!2668625 () Bool)

(declare-fun call!717916 () Bool)

(assert (=> b!7746059 (= e!4592402 (= lt!2668625 call!717916))))

(declare-fun b!7746060 () Bool)

(declare-fun res!3088358 () Bool)

(declare-fun e!4592401 () Bool)

(assert (=> b!7746060 (=> res!3088358 e!4592401)))

(assert (=> b!7746060 (= res!3088358 (not (isEmpty!41998 (tail!15358 (_2!38116 lt!2668558)))))))

(declare-fun b!7746061 () Bool)

(declare-fun e!4592400 () Bool)

(assert (=> b!7746061 (= e!4592400 (matchR!10078 (derivativeStep!6018 (regTwo!41684 r!14126) (head!15818 (_2!38116 lt!2668558))) (tail!15358 (_2!38116 lt!2668558))))))

(declare-fun b!7746062 () Bool)

(declare-fun e!4592403 () Bool)

(declare-fun e!4592397 () Bool)

(assert (=> b!7746062 (= e!4592403 e!4592397)))

(declare-fun res!3088357 () Bool)

(assert (=> b!7746062 (=> (not res!3088357) (not e!4592397))))

(assert (=> b!7746062 (= res!3088357 (not lt!2668625))))

(declare-fun b!7746063 () Bool)

(declare-fun e!4592398 () Bool)

(assert (=> b!7746063 (= e!4592398 (= (head!15818 (_2!38116 lt!2668558)) (c!1428688 (regTwo!41684 r!14126))))))

(declare-fun b!7746064 () Bool)

(declare-fun res!3088362 () Bool)

(assert (=> b!7746064 (=> res!3088362 e!4592403)))

(assert (=> b!7746064 (= res!3088362 (not (is-ElementMatch!20586 (regTwo!41684 r!14126))))))

(declare-fun e!4592399 () Bool)

(assert (=> b!7746064 (= e!4592399 e!4592403)))

(declare-fun b!7746065 () Bool)

(assert (=> b!7746065 (= e!4592402 e!4592399)))

(declare-fun c!1428758 () Bool)

(assert (=> b!7746065 (= c!1428758 (is-EmptyLang!20586 (regTwo!41684 r!14126)))))

(declare-fun b!7746066 () Bool)

(assert (=> b!7746066 (= e!4592400 (nullable!9059 (regTwo!41684 r!14126)))))

(declare-fun b!7746067 () Bool)

(declare-fun res!3088359 () Bool)

(assert (=> b!7746067 (=> (not res!3088359) (not e!4592398))))

(assert (=> b!7746067 (= res!3088359 (isEmpty!41998 (tail!15358 (_2!38116 lt!2668558))))))

(declare-fun bm!717911 () Bool)

(assert (=> bm!717911 (= call!717916 (isEmpty!41998 (_2!38116 lt!2668558)))))

(declare-fun b!7746068 () Bool)

(assert (=> b!7746068 (= e!4592397 e!4592401)))

(declare-fun res!3088361 () Bool)

(assert (=> b!7746068 (=> res!3088361 e!4592401)))

(assert (=> b!7746068 (= res!3088361 call!717916)))

(declare-fun b!7746069 () Bool)

(assert (=> b!7746069 (= e!4592401 (not (= (head!15818 (_2!38116 lt!2668558)) (c!1428688 (regTwo!41684 r!14126)))))))

(declare-fun d!2342155 () Bool)

(assert (=> d!2342155 e!4592402))

(declare-fun c!1428756 () Bool)

(assert (=> d!2342155 (= c!1428756 (is-EmptyExpr!20586 (regTwo!41684 r!14126)))))

(assert (=> d!2342155 (= lt!2668625 e!4592400)))

(declare-fun c!1428757 () Bool)

(assert (=> d!2342155 (= c!1428757 (isEmpty!41998 (_2!38116 lt!2668558)))))

(assert (=> d!2342155 (validRegex!11004 (regTwo!41684 r!14126))))

(assert (=> d!2342155 (= (matchR!10078 (regTwo!41684 r!14126) (_2!38116 lt!2668558)) lt!2668625)))

(declare-fun b!7746070 () Bool)

(declare-fun res!3088363 () Bool)

(assert (=> b!7746070 (=> (not res!3088363) (not e!4592398))))

(assert (=> b!7746070 (= res!3088363 (not call!717916))))

(declare-fun b!7746071 () Bool)

(declare-fun res!3088360 () Bool)

(assert (=> b!7746071 (=> res!3088360 e!4592403)))

(assert (=> b!7746071 (= res!3088360 e!4592398)))

(declare-fun res!3088356 () Bool)

(assert (=> b!7746071 (=> (not res!3088356) (not e!4592398))))

(assert (=> b!7746071 (= res!3088356 lt!2668625)))

(declare-fun b!7746072 () Bool)

(assert (=> b!7746072 (= e!4592399 (not lt!2668625))))

(assert (= (and d!2342155 c!1428757) b!7746066))

(assert (= (and d!2342155 (not c!1428757)) b!7746061))

(assert (= (and d!2342155 c!1428756) b!7746059))

(assert (= (and d!2342155 (not c!1428756)) b!7746065))

(assert (= (and b!7746065 c!1428758) b!7746072))

(assert (= (and b!7746065 (not c!1428758)) b!7746064))

(assert (= (and b!7746064 (not res!3088362)) b!7746071))

(assert (= (and b!7746071 res!3088356) b!7746070))

(assert (= (and b!7746070 res!3088363) b!7746067))

(assert (= (and b!7746067 res!3088359) b!7746063))

(assert (= (and b!7746071 (not res!3088360)) b!7746062))

(assert (= (and b!7746062 res!3088357) b!7746068))

(assert (= (and b!7746068 (not res!3088361)) b!7746060))

(assert (= (and b!7746060 (not res!3088358)) b!7746069))

(assert (= (or b!7746059 b!7746068 b!7746070) bm!717911))

(declare-fun m!8214008 () Bool)

(assert (=> b!7746061 m!8214008))

(assert (=> b!7746061 m!8214008))

(declare-fun m!8214010 () Bool)

(assert (=> b!7746061 m!8214010))

(declare-fun m!8214012 () Bool)

(assert (=> b!7746061 m!8214012))

(assert (=> b!7746061 m!8214010))

(assert (=> b!7746061 m!8214012))

(declare-fun m!8214014 () Bool)

(assert (=> b!7746061 m!8214014))

(assert (=> b!7746069 m!8214008))

(assert (=> b!7746067 m!8214012))

(assert (=> b!7746067 m!8214012))

(declare-fun m!8214016 () Bool)

(assert (=> b!7746067 m!8214016))

(assert (=> bm!717911 m!8213998))

(assert (=> b!7746063 m!8214008))

(assert (=> b!7746060 m!8214012))

(assert (=> b!7746060 m!8214012))

(assert (=> b!7746060 m!8214016))

(assert (=> d!2342155 m!8213998))

(assert (=> d!2342155 m!8213778))

(declare-fun m!8214018 () Bool)

(assert (=> b!7746066 m!8214018))

(assert (=> b!7745706 d!2342155))

(declare-fun d!2342157 () Bool)

(assert (=> d!2342157 (= (matchR!10078 (regOne!41684 r!14126) (_1!38116 lt!2668558)) (matchRSpec!4651 (regOne!41684 r!14126) (_1!38116 lt!2668558)))))

(declare-fun lt!2668626 () Unit!168268)

(assert (=> d!2342157 (= lt!2668626 (choose!59385 (regOne!41684 r!14126) (_1!38116 lt!2668558)))))

(assert (=> d!2342157 (validRegex!11004 (regOne!41684 r!14126))))

(assert (=> d!2342157 (= (mainMatchTheorem!4621 (regOne!41684 r!14126) (_1!38116 lt!2668558)) lt!2668626)))

(declare-fun bs!1965473 () Bool)

(assert (= bs!1965473 d!2342157))

(assert (=> bs!1965473 m!8213766))

(assert (=> bs!1965473 m!8213768))

(declare-fun m!8214020 () Bool)

(assert (=> bs!1965473 m!8214020))

(assert (=> bs!1965473 m!8213772))

(assert (=> b!7745706 d!2342157))

(declare-fun bs!1965474 () Bool)

(declare-fun b!7746076 () Bool)

(assert (= bs!1965474 (and b!7746076 b!7746047)))

(declare-fun lambda!471699 () Int)

(assert (=> bs!1965474 (not (= lambda!471699 lambda!471698))))

(declare-fun bs!1965475 () Bool)

(assert (= bs!1965475 (and b!7746076 b!7746042)))

(assert (=> bs!1965475 (= (and (= (_1!38116 lt!2668558) (_2!38116 lt!2668558)) (= (reg!20915 (regOne!41684 r!14126)) (reg!20915 (regTwo!41684 r!14126))) (= (regOne!41684 r!14126) (regTwo!41684 r!14126))) (= lambda!471699 lambda!471697))))

(declare-fun bs!1965476 () Bool)

(assert (= bs!1965476 (and b!7746076 d!2342119)))

(assert (=> bs!1965476 (not (= lambda!471699 lambda!471692))))

(declare-fun bs!1965477 () Bool)

(assert (= bs!1965477 (and b!7746076 b!7745698)))

(assert (=> bs!1965477 (not (= lambda!471699 lambda!471678))))

(declare-fun bs!1965478 () Bool)

(assert (= bs!1965478 (and b!7746076 b!7745711)))

(assert (=> bs!1965478 (not (= lambda!471699 lambda!471679))))

(assert (=> b!7746076 true))

(assert (=> b!7746076 true))

(declare-fun bs!1965479 () Bool)

(declare-fun b!7746081 () Bool)

(assert (= bs!1965479 (and b!7746081 b!7746047)))

(declare-fun lambda!471700 () Int)

(assert (=> bs!1965479 (= (and (= (_1!38116 lt!2668558) (_2!38116 lt!2668558)) (= (regOne!41684 (regOne!41684 r!14126)) (regOne!41684 (regTwo!41684 r!14126))) (= (regTwo!41684 (regOne!41684 r!14126)) (regTwo!41684 (regTwo!41684 r!14126)))) (= lambda!471700 lambda!471698))))

(declare-fun bs!1965480 () Bool)

(assert (= bs!1965480 (and b!7746081 b!7746042)))

(assert (=> bs!1965480 (not (= lambda!471700 lambda!471697))))

(declare-fun bs!1965481 () Bool)

(assert (= bs!1965481 (and b!7746081 d!2342119)))

(assert (=> bs!1965481 (not (= lambda!471700 lambda!471692))))

(declare-fun bs!1965482 () Bool)

(assert (= bs!1965482 (and b!7746081 b!7745698)))

(assert (=> bs!1965482 (not (= lambda!471700 lambda!471678))))

(declare-fun bs!1965483 () Bool)

(assert (= bs!1965483 (and b!7746081 b!7746076)))

(assert (=> bs!1965483 (not (= lambda!471700 lambda!471699))))

(declare-fun bs!1965484 () Bool)

(assert (= bs!1965484 (and b!7746081 b!7745711)))

(assert (=> bs!1965484 (= (and (= (_1!38116 lt!2668558) s!9605) (= (regOne!41684 (regOne!41684 r!14126)) (regOne!41684 r!14126)) (= (regTwo!41684 (regOne!41684 r!14126)) (regTwo!41684 r!14126))) (= lambda!471700 lambda!471679))))

(assert (=> b!7746081 true))

(assert (=> b!7746081 true))

(declare-fun c!1428761 () Bool)

(declare-fun call!717917 () Bool)

(declare-fun bm!717912 () Bool)

(assert (=> bm!717912 (= call!717917 (Exists!4707 (ite c!1428761 lambda!471699 lambda!471700)))))

(declare-fun b!7746073 () Bool)

(declare-fun e!4592410 () Bool)

(declare-fun e!4592409 () Bool)

(assert (=> b!7746073 (= e!4592410 e!4592409)))

(declare-fun res!3088365 () Bool)

(assert (=> b!7746073 (= res!3088365 (not (is-EmptyLang!20586 (regOne!41684 r!14126))))))

(assert (=> b!7746073 (=> (not res!3088365) (not e!4592409))))

(declare-fun b!7746074 () Bool)

(declare-fun res!3088364 () Bool)

(declare-fun e!4592408 () Bool)

(assert (=> b!7746074 (=> res!3088364 e!4592408)))

(declare-fun call!717918 () Bool)

(assert (=> b!7746074 (= res!3088364 call!717918)))

(declare-fun e!4592407 () Bool)

(assert (=> b!7746074 (= e!4592407 e!4592408)))

(declare-fun d!2342159 () Bool)

(declare-fun c!1428760 () Bool)

(assert (=> d!2342159 (= c!1428760 (is-EmptyExpr!20586 (regOne!41684 r!14126)))))

(assert (=> d!2342159 (= (matchRSpec!4651 (regOne!41684 r!14126) (_1!38116 lt!2668558)) e!4592410)))

(declare-fun b!7746075 () Bool)

(declare-fun e!4592406 () Bool)

(assert (=> b!7746075 (= e!4592406 (matchRSpec!4651 (regTwo!41685 (regOne!41684 r!14126)) (_1!38116 lt!2668558)))))

(assert (=> b!7746076 (= e!4592408 call!717917)))

(declare-fun b!7746077 () Bool)

(declare-fun e!4592404 () Bool)

(assert (=> b!7746077 (= e!4592404 e!4592407)))

(assert (=> b!7746077 (= c!1428761 (is-Star!20586 (regOne!41684 r!14126)))))

(declare-fun b!7746078 () Bool)

(assert (=> b!7746078 (= e!4592404 e!4592406)))

(declare-fun res!3088366 () Bool)

(assert (=> b!7746078 (= res!3088366 (matchRSpec!4651 (regOne!41685 (regOne!41684 r!14126)) (_1!38116 lt!2668558)))))

(assert (=> b!7746078 (=> res!3088366 e!4592406)))

(declare-fun b!7746079 () Bool)

(declare-fun e!4592405 () Bool)

(assert (=> b!7746079 (= e!4592405 (= (_1!38116 lt!2668558) (Cons!73309 (c!1428688 (regOne!41684 r!14126)) Nil!73309)))))

(declare-fun b!7746080 () Bool)

(declare-fun c!1428759 () Bool)

(assert (=> b!7746080 (= c!1428759 (is-ElementMatch!20586 (regOne!41684 r!14126)))))

(assert (=> b!7746080 (= e!4592409 e!4592405)))

(assert (=> b!7746081 (= e!4592407 call!717917)))

(declare-fun bm!717913 () Bool)

(assert (=> bm!717913 (= call!717918 (isEmpty!41998 (_1!38116 lt!2668558)))))

(declare-fun b!7746082 () Bool)

(declare-fun c!1428762 () Bool)

(assert (=> b!7746082 (= c!1428762 (is-Union!20586 (regOne!41684 r!14126)))))

(assert (=> b!7746082 (= e!4592405 e!4592404)))

(declare-fun b!7746083 () Bool)

(assert (=> b!7746083 (= e!4592410 call!717918)))

(assert (= (and d!2342159 c!1428760) b!7746083))

(assert (= (and d!2342159 (not c!1428760)) b!7746073))

(assert (= (and b!7746073 res!3088365) b!7746080))

(assert (= (and b!7746080 c!1428759) b!7746079))

(assert (= (and b!7746080 (not c!1428759)) b!7746082))

(assert (= (and b!7746082 c!1428762) b!7746078))

(assert (= (and b!7746082 (not c!1428762)) b!7746077))

(assert (= (and b!7746078 (not res!3088366)) b!7746075))

(assert (= (and b!7746077 c!1428761) b!7746074))

(assert (= (and b!7746077 (not c!1428761)) b!7746081))

(assert (= (and b!7746074 (not res!3088364)) b!7746076))

(assert (= (or b!7746076 b!7746081) bm!717912))

(assert (= (or b!7746083 b!7746074) bm!717913))

(declare-fun m!8214022 () Bool)

(assert (=> bm!717912 m!8214022))

(declare-fun m!8214024 () Bool)

(assert (=> b!7746075 m!8214024))

(declare-fun m!8214026 () Bool)

(assert (=> b!7746078 m!8214026))

(assert (=> bm!717913 m!8213974))

(assert (=> b!7745706 d!2342159))

(assert (=> b!7745699 d!2342125))

(declare-fun b!7746106 () Bool)

(declare-fun res!3088377 () Bool)

(declare-fun e!4592429 () Bool)

(assert (=> b!7746106 (=> res!3088377 e!4592429)))

(assert (=> b!7746106 (= res!3088377 (not (is-Concat!29431 r!14126)))))

(declare-fun e!4592428 () Bool)

(assert (=> b!7746106 (= e!4592428 e!4592429)))

(declare-fun bm!717915 () Bool)

(declare-fun call!717920 () Bool)

(declare-fun c!1428771 () Bool)

(assert (=> bm!717915 (= call!717920 (validRegex!11004 (ite c!1428771 (regOne!41685 r!14126) (regOne!41684 r!14126))))))

(declare-fun b!7746107 () Bool)

(declare-fun e!4592425 () Bool)

(assert (=> b!7746107 (= e!4592429 e!4592425)))

(declare-fun res!3088373 () Bool)

(assert (=> b!7746107 (=> (not res!3088373) (not e!4592425))))

(assert (=> b!7746107 (= res!3088373 call!717920)))

(declare-fun b!7746108 () Bool)

(declare-fun e!4592430 () Bool)

(declare-fun e!4592431 () Bool)

(assert (=> b!7746108 (= e!4592430 e!4592431)))

(declare-fun res!3088375 () Bool)

(assert (=> b!7746108 (= res!3088375 (not (nullable!9059 (reg!20915 r!14126))))))

(assert (=> b!7746108 (=> (not res!3088375) (not e!4592431))))

(declare-fun b!7746109 () Bool)

(declare-fun e!4592427 () Bool)

(declare-fun call!717919 () Bool)

(assert (=> b!7746109 (= e!4592427 call!717919)))

(declare-fun b!7746110 () Bool)

(declare-fun call!717921 () Bool)

(assert (=> b!7746110 (= e!4592431 call!717921)))

(declare-fun bm!717916 () Bool)

(assert (=> bm!717916 (= call!717919 call!717921)))

(declare-fun b!7746111 () Bool)

(declare-fun res!3088374 () Bool)

(assert (=> b!7746111 (=> (not res!3088374) (not e!4592427))))

(assert (=> b!7746111 (= res!3088374 call!717920)))

(assert (=> b!7746111 (= e!4592428 e!4592427)))

(declare-fun b!7746112 () Bool)

(assert (=> b!7746112 (= e!4592425 call!717919)))

(declare-fun d!2342161 () Bool)

(declare-fun res!3088376 () Bool)

(declare-fun e!4592426 () Bool)

(assert (=> d!2342161 (=> res!3088376 e!4592426)))

(assert (=> d!2342161 (= res!3088376 (is-ElementMatch!20586 r!14126))))

(assert (=> d!2342161 (= (validRegex!11004 r!14126) e!4592426)))

(declare-fun bm!717914 () Bool)

(declare-fun c!1428772 () Bool)

(assert (=> bm!717914 (= call!717921 (validRegex!11004 (ite c!1428772 (reg!20915 r!14126) (ite c!1428771 (regTwo!41685 r!14126) (regTwo!41684 r!14126)))))))

(declare-fun b!7746113 () Bool)

(assert (=> b!7746113 (= e!4592426 e!4592430)))

(assert (=> b!7746113 (= c!1428772 (is-Star!20586 r!14126))))

(declare-fun b!7746114 () Bool)

(assert (=> b!7746114 (= e!4592430 e!4592428)))

(assert (=> b!7746114 (= c!1428771 (is-Union!20586 r!14126))))

(assert (= (and d!2342161 (not res!3088376)) b!7746113))

(assert (= (and b!7746113 c!1428772) b!7746108))

(assert (= (and b!7746113 (not c!1428772)) b!7746114))

(assert (= (and b!7746108 res!3088375) b!7746110))

(assert (= (and b!7746114 c!1428771) b!7746111))

(assert (= (and b!7746114 (not c!1428771)) b!7746106))

(assert (= (and b!7746111 res!3088374) b!7746109))

(assert (= (and b!7746106 (not res!3088377)) b!7746107))

(assert (= (and b!7746107 res!3088373) b!7746112))

(assert (= (or b!7746111 b!7746107) bm!717915))

(assert (= (or b!7746109 b!7746112) bm!717916))

(assert (= (or b!7746110 bm!717916) bm!717914))

(declare-fun m!8214028 () Bool)

(assert (=> bm!717915 m!8214028))

(declare-fun m!8214030 () Bool)

(assert (=> b!7746108 m!8214030))

(declare-fun m!8214032 () Bool)

(assert (=> bm!717914 m!8214032))

(assert (=> start!738546 d!2342161))

(declare-fun b!7746125 () Bool)

(declare-fun e!4592434 () Bool)

(assert (=> b!7746125 (= e!4592434 tp_is_empty!51527)))

(declare-fun b!7746128 () Bool)

(declare-fun tp!2272901 () Bool)

(declare-fun tp!2272900 () Bool)

(assert (=> b!7746128 (= e!4592434 (and tp!2272901 tp!2272900))))

(declare-fun b!7746127 () Bool)

(declare-fun tp!2272903 () Bool)

(assert (=> b!7746127 (= e!4592434 tp!2272903)))

(declare-fun b!7746126 () Bool)

(declare-fun tp!2272904 () Bool)

(declare-fun tp!2272902 () Bool)

(assert (=> b!7746126 (= e!4592434 (and tp!2272904 tp!2272902))))

(assert (=> b!7745709 (= tp!2272869 e!4592434)))

(assert (= (and b!7745709 (is-ElementMatch!20586 (regOne!41685 r!14126))) b!7746125))

(assert (= (and b!7745709 (is-Concat!29431 (regOne!41685 r!14126))) b!7746126))

(assert (= (and b!7745709 (is-Star!20586 (regOne!41685 r!14126))) b!7746127))

(assert (= (and b!7745709 (is-Union!20586 (regOne!41685 r!14126))) b!7746128))

(declare-fun b!7746133 () Bool)

(declare-fun e!4592437 () Bool)

(assert (=> b!7746133 (= e!4592437 tp_is_empty!51527)))

(declare-fun b!7746136 () Bool)

(declare-fun tp!2272906 () Bool)

(declare-fun tp!2272905 () Bool)

(assert (=> b!7746136 (= e!4592437 (and tp!2272906 tp!2272905))))

(declare-fun b!7746135 () Bool)

(declare-fun tp!2272908 () Bool)

(assert (=> b!7746135 (= e!4592437 tp!2272908)))

(declare-fun b!7746134 () Bool)

(declare-fun tp!2272909 () Bool)

(declare-fun tp!2272907 () Bool)

(assert (=> b!7746134 (= e!4592437 (and tp!2272909 tp!2272907))))

(assert (=> b!7745709 (= tp!2272866 e!4592437)))

(assert (= (and b!7745709 (is-ElementMatch!20586 (regTwo!41685 r!14126))) b!7746133))

(assert (= (and b!7745709 (is-Concat!29431 (regTwo!41685 r!14126))) b!7746134))

(assert (= (and b!7745709 (is-Star!20586 (regTwo!41685 r!14126))) b!7746135))

(assert (= (and b!7745709 (is-Union!20586 (regTwo!41685 r!14126))) b!7746136))

(declare-fun b!7746139 () Bool)

(declare-fun e!4592438 () Bool)

(assert (=> b!7746139 (= e!4592438 tp_is_empty!51527)))

(declare-fun b!7746142 () Bool)

(declare-fun tp!2272911 () Bool)

(declare-fun tp!2272910 () Bool)

(assert (=> b!7746142 (= e!4592438 (and tp!2272911 tp!2272910))))

(declare-fun b!7746141 () Bool)

(declare-fun tp!2272913 () Bool)

(assert (=> b!7746141 (= e!4592438 tp!2272913)))

(declare-fun b!7746140 () Bool)

(declare-fun tp!2272914 () Bool)

(declare-fun tp!2272912 () Bool)

(assert (=> b!7746140 (= e!4592438 (and tp!2272914 tp!2272912))))

(assert (=> b!7745707 (= tp!2272870 e!4592438)))

(assert (= (and b!7745707 (is-ElementMatch!20586 (regOne!41684 r!14126))) b!7746139))

(assert (= (and b!7745707 (is-Concat!29431 (regOne!41684 r!14126))) b!7746140))

(assert (= (and b!7745707 (is-Star!20586 (regOne!41684 r!14126))) b!7746141))

(assert (= (and b!7745707 (is-Union!20586 (regOne!41684 r!14126))) b!7746142))

(declare-fun b!7746143 () Bool)

(declare-fun e!4592439 () Bool)

(assert (=> b!7746143 (= e!4592439 tp_is_empty!51527)))

(declare-fun b!7746146 () Bool)

(declare-fun tp!2272916 () Bool)

(declare-fun tp!2272915 () Bool)

(assert (=> b!7746146 (= e!4592439 (and tp!2272916 tp!2272915))))

(declare-fun b!7746145 () Bool)

(declare-fun tp!2272918 () Bool)

(assert (=> b!7746145 (= e!4592439 tp!2272918)))

(declare-fun b!7746144 () Bool)

(declare-fun tp!2272919 () Bool)

(declare-fun tp!2272917 () Bool)

(assert (=> b!7746144 (= e!4592439 (and tp!2272919 tp!2272917))))

(assert (=> b!7745707 (= tp!2272868 e!4592439)))

(assert (= (and b!7745707 (is-ElementMatch!20586 (regTwo!41684 r!14126))) b!7746143))

(assert (= (and b!7745707 (is-Concat!29431 (regTwo!41684 r!14126))) b!7746144))

(assert (= (and b!7745707 (is-Star!20586 (regTwo!41684 r!14126))) b!7746145))

(assert (= (and b!7745707 (is-Union!20586 (regTwo!41684 r!14126))) b!7746146))

(declare-fun b!7746151 () Bool)

(declare-fun e!4592442 () Bool)

(declare-fun tp!2272922 () Bool)

(assert (=> b!7746151 (= e!4592442 (and tp_is_empty!51527 tp!2272922))))

(assert (=> b!7745702 (= tp!2272867 e!4592442)))

(assert (= (and b!7745702 (is-Cons!73309 (t!388168 s!9605))) b!7746151))

(declare-fun b!7746152 () Bool)

(declare-fun e!4592443 () Bool)

(assert (=> b!7746152 (= e!4592443 tp_is_empty!51527)))

(declare-fun b!7746155 () Bool)

(declare-fun tp!2272924 () Bool)

(declare-fun tp!2272923 () Bool)

(assert (=> b!7746155 (= e!4592443 (and tp!2272924 tp!2272923))))

(declare-fun b!7746154 () Bool)

(declare-fun tp!2272926 () Bool)

(assert (=> b!7746154 (= e!4592443 tp!2272926)))

(declare-fun b!7746153 () Bool)

(declare-fun tp!2272927 () Bool)

(declare-fun tp!2272925 () Bool)

(assert (=> b!7746153 (= e!4592443 (and tp!2272927 tp!2272925))))

(assert (=> b!7745701 (= tp!2272871 e!4592443)))

(assert (= (and b!7745701 (is-ElementMatch!20586 (reg!20915 r!14126))) b!7746152))

(assert (= (and b!7745701 (is-Concat!29431 (reg!20915 r!14126))) b!7746153))

(assert (= (and b!7745701 (is-Star!20586 (reg!20915 r!14126))) b!7746154))

(assert (= (and b!7745701 (is-Union!20586 (reg!20915 r!14126))) b!7746155))

(declare-fun b_lambda!289397 () Bool)

(assert (= b_lambda!289395 (or b!7745711 b_lambda!289397)))

(declare-fun bs!1965485 () Bool)

(declare-fun d!2342163 () Bool)

(assert (= bs!1965485 (and d!2342163 b!7745711)))

(declare-fun res!3088384 () Bool)

(declare-fun e!4592444 () Bool)

(assert (=> bs!1965485 (=> (not res!3088384) (not e!4592444))))

(assert (=> bs!1965485 (= res!3088384 (= (++!17785 (_1!38116 lt!2668619) (_2!38116 lt!2668619)) s!9605))))

(assert (=> bs!1965485 (= (dynLambda!29979 lambda!471679 lt!2668619) e!4592444)))

(declare-fun b!7746156 () Bool)

(declare-fun res!3088385 () Bool)

(assert (=> b!7746156 (=> (not res!3088385) (not e!4592444))))

(assert (=> b!7746156 (= res!3088385 (matchRSpec!4651 (regOne!41684 r!14126) (_1!38116 lt!2668619)))))

(declare-fun b!7746157 () Bool)

(assert (=> b!7746157 (= e!4592444 (matchRSpec!4651 (regTwo!41684 r!14126) (_2!38116 lt!2668619)))))

(assert (= (and bs!1965485 res!3088384) b!7746156))

(assert (= (and b!7746156 res!3088385) b!7746157))

(declare-fun m!8214034 () Bool)

(assert (=> bs!1965485 m!8214034))

(declare-fun m!8214036 () Bool)

(assert (=> b!7746156 m!8214036))

(declare-fun m!8214038 () Bool)

(assert (=> b!7746157 m!8214038))

(assert (=> d!2342143 d!2342163))

(push 1)

(assert (not d!2342119))

(assert (not b!7745949))

(assert (not b!7746151))

(assert (not b!7746140))

(assert (not bm!717913))

(assert (not d!2342143))

(assert (not d!2342127))

(assert (not b!7746078))

(assert (not bm!717912))

(assert (not b!7746128))

(assert (not bm!717878))

(assert (not bm!717895))

(assert (not b!7745937))

(assert (not b!7746041))

(assert (not b!7746063))

(assert (not b!7746155))

(assert (not b!7745941))

(assert (not b!7746075))

(assert (not d!2342157))

(assert (not b!7745983))

(assert (not b!7745824))

(assert (not b!7745829))

(assert (not b!7746145))

(assert (not d!2342125))

(assert (not b!7745888))

(assert (not bm!717909))

(assert (not b!7746127))

(assert (not b!7745832))

(assert (not b!7745935))

(assert (not b!7745895))

(assert tp_is_empty!51527)

(assert (not b!7746134))

(assert (not b!7745981))

(assert (not b!7746156))

(assert (not b!7746141))

(assert (not bm!717914))

(assert (not d!2342141))

(assert (not b!7746136))

(assert (not b!7746067))

(assert (not b!7745974))

(assert (not b!7746069))

(assert (not bm!717908))

(assert (not b!7745896))

(assert (not bm!717915))

(assert (not d!2342137))

(assert (not d!2342113))

(assert (not b!7745823))

(assert (not b!7745889))

(assert (not d!2342145))

(assert (not b!7745891))

(assert (not b!7745977))

(assert (not d!2342121))

(assert (not b!7745948))

(assert (not b!7746061))

(assert (not b!7746126))

(assert (not b!7745934))

(assert (not b!7746153))

(assert (not d!2342139))

(assert (not b!7745975))

(assert (not b!7746052))

(assert (not bm!717894))

(assert (not b_lambda!289397))

(assert (not b!7745826))

(assert (not d!2342153))

(assert (not b!7746142))

(assert (not bs!1965485))

(assert (not b!7746135))

(assert (not b!7746108))

(assert (not b!7746060))

(assert (not d!2342135))

(assert (not bm!717911))

(assert (not b!7746146))

(assert (not b!7746044))

(assert (not b!7745940))

(assert (not b!7745830))

(assert (not bm!717907))

(assert (not b!7745980))

(assert (not d!2342115))

(assert (not b!7745926))

(assert (not b!7746157))

(assert (not bm!717898))

(assert (not bm!717906))

(assert (not b!7745792))

(assert (not b!7746154))

(assert (not b!7745890))

(assert (not bm!717897))

(assert (not d!2342155))

(assert (not b!7746144))

(assert (not b!7745791))

(assert (not b!7745943))

(assert (not b!7746066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

