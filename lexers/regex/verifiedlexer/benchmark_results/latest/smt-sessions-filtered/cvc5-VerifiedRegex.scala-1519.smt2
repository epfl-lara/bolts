; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80220 () Bool)

(assert start!80220)

(declare-fun b!888594 () Bool)

(declare-fun e!582416 () Bool)

(declare-fun tp!279918 () Bool)

(declare-fun tp!279914 () Bool)

(assert (=> b!888594 (= e!582416 (and tp!279918 tp!279914))))

(declare-fun res!404133 () Bool)

(declare-fun e!582417 () Bool)

(assert (=> start!80220 (=> (not res!404133) (not e!582417))))

(declare-datatypes ((C!5162 0))(
  ( (C!5163 (val!2829 Int)) )
))
(declare-datatypes ((Regex!2296 0))(
  ( (ElementMatch!2296 (c!143719 C!5162)) (Concat!4129 (regOne!5104 Regex!2296) (regTwo!5104 Regex!2296)) (EmptyExpr!2296) (Star!2296 (reg!2625 Regex!2296)) (EmptyLang!2296) (Union!2296 (regOne!5105 Regex!2296) (regTwo!5105 Regex!2296)) )
))
(declare-fun r!15766 () Regex!2296)

(declare-fun validRegex!765 (Regex!2296) Bool)

(assert (=> start!80220 (= res!404133 (validRegex!765 r!15766))))

(assert (=> start!80220 e!582417))

(assert (=> start!80220 e!582416))

(declare-fun e!582414 () Bool)

(assert (=> start!80220 e!582414))

(declare-fun b!888595 () Bool)

(declare-fun tp_is_empty!4235 () Bool)

(declare-fun tp!279917 () Bool)

(assert (=> b!888595 (= e!582414 (and tp_is_empty!4235 tp!279917))))

(declare-fun b!888596 () Bool)

(declare-fun e!582415 () Bool)

(declare-fun e!582412 () Bool)

(assert (=> b!888596 (= e!582415 e!582412)))

(declare-fun res!404136 () Bool)

(assert (=> b!888596 (=> res!404136 e!582412)))

(declare-fun lt!332008 () Bool)

(assert (=> b!888596 (= res!404136 (not lt!332008))))

(declare-fun e!582413 () Bool)

(assert (=> b!888596 e!582413))

(declare-fun res!404134 () Bool)

(assert (=> b!888596 (=> res!404134 e!582413)))

(assert (=> b!888596 (= res!404134 lt!332008)))

(declare-datatypes ((List!9526 0))(
  ( (Nil!9510) (Cons!9510 (h!14911 C!5162) (t!100572 List!9526)) )
))
(declare-fun s!10566 () List!9526)

(declare-fun matchR!834 (Regex!2296 List!9526) Bool)

(assert (=> b!888596 (= lt!332008 (matchR!834 (regOne!5105 r!15766) s!10566))))

(declare-datatypes ((Unit!14171 0))(
  ( (Unit!14172) )
))
(declare-fun lt!332006 () Unit!14171)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!7 (Regex!2296 Regex!2296 List!9526) Unit!14171)

(assert (=> b!888596 (= lt!332006 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!7 (regOne!5105 r!15766) (regTwo!5105 r!15766) s!10566))))

(declare-fun b!888597 () Bool)

(declare-fun tp!279916 () Bool)

(declare-fun tp!279913 () Bool)

(assert (=> b!888597 (= e!582416 (and tp!279916 tp!279913))))

(declare-fun b!888598 () Bool)

(declare-fun tp!279915 () Bool)

(assert (=> b!888598 (= e!582416 tp!279915)))

(declare-fun b!888599 () Bool)

(assert (=> b!888599 (= e!582413 (matchR!834 (regTwo!5105 r!15766) s!10566))))

(declare-fun b!888600 () Bool)

(assert (=> b!888600 (= e!582416 tp_is_empty!4235)))

(declare-fun b!888601 () Bool)

(assert (=> b!888601 (= e!582417 (not e!582415))))

(declare-fun res!404135 () Bool)

(assert (=> b!888601 (=> res!404135 e!582415)))

(declare-fun lt!332004 () Bool)

(assert (=> b!888601 (= res!404135 (or (not lt!332004) (and (is-Concat!4129 r!15766) (is-EmptyExpr!2296 (regOne!5104 r!15766))) (and (is-Concat!4129 r!15766) (is-EmptyExpr!2296 (regTwo!5104 r!15766))) (is-Concat!4129 r!15766) (not (is-Union!2296 r!15766))))))

(declare-fun matchRSpec!97 (Regex!2296 List!9526) Bool)

(assert (=> b!888601 (= lt!332004 (matchRSpec!97 r!15766 s!10566))))

(assert (=> b!888601 (= lt!332004 (matchR!834 r!15766 s!10566))))

(declare-fun lt!332009 () Unit!14171)

(declare-fun mainMatchTheorem!97 (Regex!2296 List!9526) Unit!14171)

(assert (=> b!888601 (= lt!332009 (mainMatchTheorem!97 r!15766 s!10566))))

(declare-fun b!888602 () Bool)

(declare-fun lt!332005 () Regex!2296)

(assert (=> b!888602 (= e!582412 (validRegex!765 lt!332005))))

(assert (=> b!888602 (matchR!834 lt!332005 s!10566)))

(declare-fun removeUselessConcat!33 (Regex!2296) Regex!2296)

(assert (=> b!888602 (= lt!332005 (removeUselessConcat!33 (regOne!5105 r!15766)))))

(declare-fun lt!332007 () Unit!14171)

(declare-fun lemmaRemoveUselessConcatSound!27 (Regex!2296 List!9526) Unit!14171)

(assert (=> b!888602 (= lt!332007 (lemmaRemoveUselessConcatSound!27 (regOne!5105 r!15766) s!10566))))

(assert (= (and start!80220 res!404133) b!888601))

(assert (= (and b!888601 (not res!404135)) b!888596))

(assert (= (and b!888596 (not res!404134)) b!888599))

(assert (= (and b!888596 (not res!404136)) b!888602))

(assert (= (and start!80220 (is-ElementMatch!2296 r!15766)) b!888600))

(assert (= (and start!80220 (is-Concat!4129 r!15766)) b!888594))

(assert (= (and start!80220 (is-Star!2296 r!15766)) b!888598))

(assert (= (and start!80220 (is-Union!2296 r!15766)) b!888597))

(assert (= (and start!80220 (is-Cons!9510 s!10566)) b!888595))

(declare-fun m!1133033 () Bool)

(assert (=> start!80220 m!1133033))

(declare-fun m!1133035 () Bool)

(assert (=> b!888599 m!1133035))

(declare-fun m!1133037 () Bool)

(assert (=> b!888602 m!1133037))

(declare-fun m!1133039 () Bool)

(assert (=> b!888602 m!1133039))

(declare-fun m!1133041 () Bool)

(assert (=> b!888602 m!1133041))

(declare-fun m!1133043 () Bool)

(assert (=> b!888602 m!1133043))

(declare-fun m!1133045 () Bool)

(assert (=> b!888601 m!1133045))

(declare-fun m!1133047 () Bool)

(assert (=> b!888601 m!1133047))

(declare-fun m!1133049 () Bool)

(assert (=> b!888601 m!1133049))

(declare-fun m!1133051 () Bool)

(assert (=> b!888596 m!1133051))

(declare-fun m!1133053 () Bool)

(assert (=> b!888596 m!1133053))

(push 1)

(assert (not start!80220))

(assert (not b!888595))

(assert (not b!888602))

(assert (not b!888597))

(assert tp_is_empty!4235)

(assert (not b!888599))

(assert (not b!888601))

(assert (not b!888594))

(assert (not b!888598))

(assert (not b!888596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!888742 () Bool)

(assert (=> b!888742 true))

(assert (=> b!888742 true))

(declare-fun bs!234797 () Bool)

(declare-fun b!888741 () Bool)

(assert (= bs!234797 (and b!888741 b!888742)))

(declare-fun lambda!27508 () Int)

(declare-fun lambda!27507 () Int)

(assert (=> bs!234797 (not (= lambda!27508 lambda!27507))))

(assert (=> b!888741 true))

(assert (=> b!888741 true))

(declare-fun b!888732 () Bool)

(declare-fun res!404203 () Bool)

(declare-fun e!582500 () Bool)

(assert (=> b!888732 (=> res!404203 e!582500)))

(declare-fun call!52266 () Bool)

(assert (=> b!888732 (= res!404203 call!52266)))

(declare-fun e!582499 () Bool)

(assert (=> b!888732 (= e!582499 e!582500)))

(declare-fun b!888733 () Bool)

(declare-fun e!582496 () Bool)

(declare-fun e!582495 () Bool)

(assert (=> b!888733 (= e!582496 e!582495)))

(declare-fun res!404201 () Bool)

(assert (=> b!888733 (= res!404201 (not (is-EmptyLang!2296 r!15766)))))

(assert (=> b!888733 (=> (not res!404201) (not e!582495))))

(declare-fun bm!52260 () Bool)

(declare-fun isEmpty!5716 (List!9526) Bool)

(assert (=> bm!52260 (= call!52266 (isEmpty!5716 s!10566))))

(declare-fun c!143749 () Bool)

(declare-fun bm!52261 () Bool)

(declare-fun call!52265 () Bool)

(declare-fun Exists!87 (Int) Bool)

(assert (=> bm!52261 (= call!52265 (Exists!87 (ite c!143749 lambda!27507 lambda!27508)))))

(declare-fun d!277158 () Bool)

(declare-fun c!143748 () Bool)

(assert (=> d!277158 (= c!143748 (is-EmptyExpr!2296 r!15766))))

(assert (=> d!277158 (= (matchRSpec!97 r!15766 s!10566) e!582496)))

(declare-fun b!888734 () Bool)

(assert (=> b!888734 (= e!582496 call!52266)))

(declare-fun b!888735 () Bool)

(declare-fun c!143747 () Bool)

(assert (=> b!888735 (= c!143747 (is-ElementMatch!2296 r!15766))))

(declare-fun e!582497 () Bool)

(assert (=> b!888735 (= e!582495 e!582497)))

(declare-fun b!888736 () Bool)

(declare-fun e!582498 () Bool)

(assert (=> b!888736 (= e!582498 e!582499)))

(assert (=> b!888736 (= c!143749 (is-Star!2296 r!15766))))

(declare-fun b!888737 () Bool)

(assert (=> b!888737 (= e!582497 (= s!10566 (Cons!9510 (c!143719 r!15766) Nil!9510)))))

(declare-fun b!888738 () Bool)

(declare-fun e!582501 () Bool)

(assert (=> b!888738 (= e!582498 e!582501)))

(declare-fun res!404202 () Bool)

(assert (=> b!888738 (= res!404202 (matchRSpec!97 (regOne!5105 r!15766) s!10566))))

(assert (=> b!888738 (=> res!404202 e!582501)))

(declare-fun b!888739 () Bool)

(assert (=> b!888739 (= e!582501 (matchRSpec!97 (regTwo!5105 r!15766) s!10566))))

(declare-fun b!888740 () Bool)

(declare-fun c!143746 () Bool)

(assert (=> b!888740 (= c!143746 (is-Union!2296 r!15766))))

(assert (=> b!888740 (= e!582497 e!582498)))

(assert (=> b!888741 (= e!582499 call!52265)))

(assert (=> b!888742 (= e!582500 call!52265)))

(assert (= (and d!277158 c!143748) b!888734))

(assert (= (and d!277158 (not c!143748)) b!888733))

(assert (= (and b!888733 res!404201) b!888735))

(assert (= (and b!888735 c!143747) b!888737))

(assert (= (and b!888735 (not c!143747)) b!888740))

(assert (= (and b!888740 c!143746) b!888738))

(assert (= (and b!888740 (not c!143746)) b!888736))

(assert (= (and b!888738 (not res!404202)) b!888739))

(assert (= (and b!888736 c!143749) b!888732))

(assert (= (and b!888736 (not c!143749)) b!888741))

(assert (= (and b!888732 (not res!404203)) b!888742))

(assert (= (or b!888742 b!888741) bm!52261))

(assert (= (or b!888734 b!888732) bm!52260))

(declare-fun m!1133097 () Bool)

(assert (=> bm!52260 m!1133097))

(declare-fun m!1133099 () Bool)

(assert (=> bm!52261 m!1133099))

(declare-fun m!1133101 () Bool)

(assert (=> b!888738 m!1133101))

(declare-fun m!1133103 () Bool)

(assert (=> b!888739 m!1133103))

(assert (=> b!888601 d!277158))

(declare-fun b!888775 () Bool)

(declare-fun e!582520 () Bool)

(declare-fun head!1559 (List!9526) C!5162)

(assert (=> b!888775 (= e!582520 (not (= (head!1559 s!10566) (c!143719 r!15766))))))

(declare-fun b!888776 () Bool)

(declare-fun e!582516 () Bool)

(declare-fun nullable!594 (Regex!2296) Bool)

(assert (=> b!888776 (= e!582516 (nullable!594 r!15766))))

(declare-fun b!888777 () Bool)

(declare-fun e!582521 () Bool)

(declare-fun e!582522 () Bool)

(assert (=> b!888777 (= e!582521 e!582522)))

(declare-fun c!143757 () Bool)

(assert (=> b!888777 (= c!143757 (is-EmptyLang!2296 r!15766))))

(declare-fun b!888778 () Bool)

(declare-fun res!404225 () Bool)

(assert (=> b!888778 (=> res!404225 e!582520)))

(declare-fun tail!1121 (List!9526) List!9526)

(assert (=> b!888778 (= res!404225 (not (isEmpty!5716 (tail!1121 s!10566))))))

(declare-fun bm!52264 () Bool)

(declare-fun call!52269 () Bool)

(assert (=> bm!52264 (= call!52269 (isEmpty!5716 s!10566))))

(declare-fun b!888779 () Bool)

(declare-fun res!404224 () Bool)

(declare-fun e!582518 () Bool)

(assert (=> b!888779 (=> res!404224 e!582518)))

(declare-fun e!582519 () Bool)

(assert (=> b!888779 (= res!404224 e!582519)))

(declare-fun res!404220 () Bool)

(assert (=> b!888779 (=> (not res!404220) (not e!582519))))

(declare-fun lt!332036 () Bool)

(assert (=> b!888779 (= res!404220 lt!332036)))

(declare-fun d!277164 () Bool)

(assert (=> d!277164 e!582521))

(declare-fun c!143758 () Bool)

(assert (=> d!277164 (= c!143758 (is-EmptyExpr!2296 r!15766))))

(assert (=> d!277164 (= lt!332036 e!582516)))

(declare-fun c!143756 () Bool)

(assert (=> d!277164 (= c!143756 (isEmpty!5716 s!10566))))

(assert (=> d!277164 (validRegex!765 r!15766)))

(assert (=> d!277164 (= (matchR!834 r!15766 s!10566) lt!332036)))

(declare-fun b!888780 () Bool)

(assert (=> b!888780 (= e!582522 (not lt!332036))))

(declare-fun b!888781 () Bool)

(assert (=> b!888781 (= e!582519 (= (head!1559 s!10566) (c!143719 r!15766)))))

(declare-fun b!888782 () Bool)

(declare-fun e!582517 () Bool)

(assert (=> b!888782 (= e!582518 e!582517)))

(declare-fun res!404222 () Bool)

(assert (=> b!888782 (=> (not res!404222) (not e!582517))))

(assert (=> b!888782 (= res!404222 (not lt!332036))))

(declare-fun b!888783 () Bool)

(assert (=> b!888783 (= e!582517 e!582520)))

(declare-fun res!404226 () Bool)

(assert (=> b!888783 (=> res!404226 e!582520)))

(assert (=> b!888783 (= res!404226 call!52269)))

(declare-fun b!888784 () Bool)

(declare-fun res!404227 () Bool)

(assert (=> b!888784 (=> (not res!404227) (not e!582519))))

(assert (=> b!888784 (= res!404227 (isEmpty!5716 (tail!1121 s!10566)))))

(declare-fun b!888785 () Bool)

(declare-fun derivativeStep!406 (Regex!2296 C!5162) Regex!2296)

(assert (=> b!888785 (= e!582516 (matchR!834 (derivativeStep!406 r!15766 (head!1559 s!10566)) (tail!1121 s!10566)))))

(declare-fun b!888786 () Bool)

(declare-fun res!404223 () Bool)

(assert (=> b!888786 (=> (not res!404223) (not e!582519))))

(assert (=> b!888786 (= res!404223 (not call!52269))))

(declare-fun b!888787 () Bool)

(assert (=> b!888787 (= e!582521 (= lt!332036 call!52269))))

(declare-fun b!888788 () Bool)

(declare-fun res!404221 () Bool)

(assert (=> b!888788 (=> res!404221 e!582518)))

(assert (=> b!888788 (= res!404221 (not (is-ElementMatch!2296 r!15766)))))

(assert (=> b!888788 (= e!582522 e!582518)))

(assert (= (and d!277164 c!143756) b!888776))

(assert (= (and d!277164 (not c!143756)) b!888785))

(assert (= (and d!277164 c!143758) b!888787))

(assert (= (and d!277164 (not c!143758)) b!888777))

(assert (= (and b!888777 c!143757) b!888780))

(assert (= (and b!888777 (not c!143757)) b!888788))

(assert (= (and b!888788 (not res!404221)) b!888779))

(assert (= (and b!888779 res!404220) b!888786))

(assert (= (and b!888786 res!404223) b!888784))

(assert (= (and b!888784 res!404227) b!888781))

(assert (= (and b!888779 (not res!404224)) b!888782))

(assert (= (and b!888782 res!404222) b!888783))

(assert (= (and b!888783 (not res!404226)) b!888778))

(assert (= (and b!888778 (not res!404225)) b!888775))

(assert (= (or b!888787 b!888783 b!888786) bm!52264))

(assert (=> bm!52264 m!1133097))

(declare-fun m!1133105 () Bool)

(assert (=> b!888781 m!1133105))

(declare-fun m!1133107 () Bool)

(assert (=> b!888776 m!1133107))

(declare-fun m!1133109 () Bool)

(assert (=> b!888778 m!1133109))

(assert (=> b!888778 m!1133109))

(declare-fun m!1133111 () Bool)

(assert (=> b!888778 m!1133111))

(assert (=> d!277164 m!1133097))

(assert (=> d!277164 m!1133033))

(assert (=> b!888784 m!1133109))

(assert (=> b!888784 m!1133109))

(assert (=> b!888784 m!1133111))

(assert (=> b!888775 m!1133105))

(assert (=> b!888785 m!1133105))

(assert (=> b!888785 m!1133105))

(declare-fun m!1133113 () Bool)

(assert (=> b!888785 m!1133113))

(assert (=> b!888785 m!1133109))

(assert (=> b!888785 m!1133113))

(assert (=> b!888785 m!1133109))

(declare-fun m!1133115 () Bool)

(assert (=> b!888785 m!1133115))

(assert (=> b!888601 d!277164))

(declare-fun d!277166 () Bool)

(assert (=> d!277166 (= (matchR!834 r!15766 s!10566) (matchRSpec!97 r!15766 s!10566))))

(declare-fun lt!332039 () Unit!14171)

(declare-fun choose!5301 (Regex!2296 List!9526) Unit!14171)

(assert (=> d!277166 (= lt!332039 (choose!5301 r!15766 s!10566))))

(assert (=> d!277166 (validRegex!765 r!15766)))

(assert (=> d!277166 (= (mainMatchTheorem!97 r!15766 s!10566) lt!332039)))

(declare-fun bs!234798 () Bool)

(assert (= bs!234798 d!277166))

(assert (=> bs!234798 m!1133047))

(assert (=> bs!234798 m!1133045))

(declare-fun m!1133117 () Bool)

(assert (=> bs!234798 m!1133117))

(assert (=> bs!234798 m!1133033))

(assert (=> b!888601 d!277166))

(declare-fun b!888789 () Bool)

(declare-fun e!582527 () Bool)

(assert (=> b!888789 (= e!582527 (not (= (head!1559 s!10566) (c!143719 (regOne!5105 r!15766)))))))

(declare-fun b!888790 () Bool)

(declare-fun e!582523 () Bool)

(assert (=> b!888790 (= e!582523 (nullable!594 (regOne!5105 r!15766)))))

(declare-fun b!888791 () Bool)

(declare-fun e!582528 () Bool)

(declare-fun e!582529 () Bool)

(assert (=> b!888791 (= e!582528 e!582529)))

(declare-fun c!143760 () Bool)

(assert (=> b!888791 (= c!143760 (is-EmptyLang!2296 (regOne!5105 r!15766)))))

(declare-fun b!888792 () Bool)

(declare-fun res!404233 () Bool)

(assert (=> b!888792 (=> res!404233 e!582527)))

(assert (=> b!888792 (= res!404233 (not (isEmpty!5716 (tail!1121 s!10566))))))

(declare-fun bm!52265 () Bool)

(declare-fun call!52270 () Bool)

(assert (=> bm!52265 (= call!52270 (isEmpty!5716 s!10566))))

(declare-fun b!888793 () Bool)

(declare-fun res!404232 () Bool)

(declare-fun e!582525 () Bool)

(assert (=> b!888793 (=> res!404232 e!582525)))

(declare-fun e!582526 () Bool)

(assert (=> b!888793 (= res!404232 e!582526)))

(declare-fun res!404228 () Bool)

(assert (=> b!888793 (=> (not res!404228) (not e!582526))))

(declare-fun lt!332040 () Bool)

(assert (=> b!888793 (= res!404228 lt!332040)))

(declare-fun d!277168 () Bool)

(assert (=> d!277168 e!582528))

(declare-fun c!143761 () Bool)

(assert (=> d!277168 (= c!143761 (is-EmptyExpr!2296 (regOne!5105 r!15766)))))

(assert (=> d!277168 (= lt!332040 e!582523)))

(declare-fun c!143759 () Bool)

(assert (=> d!277168 (= c!143759 (isEmpty!5716 s!10566))))

(assert (=> d!277168 (validRegex!765 (regOne!5105 r!15766))))

(assert (=> d!277168 (= (matchR!834 (regOne!5105 r!15766) s!10566) lt!332040)))

(declare-fun b!888794 () Bool)

(assert (=> b!888794 (= e!582529 (not lt!332040))))

(declare-fun b!888795 () Bool)

(assert (=> b!888795 (= e!582526 (= (head!1559 s!10566) (c!143719 (regOne!5105 r!15766))))))

(declare-fun b!888796 () Bool)

(declare-fun e!582524 () Bool)

(assert (=> b!888796 (= e!582525 e!582524)))

(declare-fun res!404230 () Bool)

(assert (=> b!888796 (=> (not res!404230) (not e!582524))))

(assert (=> b!888796 (= res!404230 (not lt!332040))))

(declare-fun b!888797 () Bool)

(assert (=> b!888797 (= e!582524 e!582527)))

(declare-fun res!404234 () Bool)

(assert (=> b!888797 (=> res!404234 e!582527)))

(assert (=> b!888797 (= res!404234 call!52270)))

(declare-fun b!888798 () Bool)

(declare-fun res!404235 () Bool)

(assert (=> b!888798 (=> (not res!404235) (not e!582526))))

(assert (=> b!888798 (= res!404235 (isEmpty!5716 (tail!1121 s!10566)))))

(declare-fun b!888799 () Bool)

(assert (=> b!888799 (= e!582523 (matchR!834 (derivativeStep!406 (regOne!5105 r!15766) (head!1559 s!10566)) (tail!1121 s!10566)))))

(declare-fun b!888800 () Bool)

(declare-fun res!404231 () Bool)

(assert (=> b!888800 (=> (not res!404231) (not e!582526))))

(assert (=> b!888800 (= res!404231 (not call!52270))))

(declare-fun b!888801 () Bool)

(assert (=> b!888801 (= e!582528 (= lt!332040 call!52270))))

(declare-fun b!888802 () Bool)

(declare-fun res!404229 () Bool)

(assert (=> b!888802 (=> res!404229 e!582525)))

(assert (=> b!888802 (= res!404229 (not (is-ElementMatch!2296 (regOne!5105 r!15766))))))

(assert (=> b!888802 (= e!582529 e!582525)))

(assert (= (and d!277168 c!143759) b!888790))

(assert (= (and d!277168 (not c!143759)) b!888799))

(assert (= (and d!277168 c!143761) b!888801))

(assert (= (and d!277168 (not c!143761)) b!888791))

(assert (= (and b!888791 c!143760) b!888794))

(assert (= (and b!888791 (not c!143760)) b!888802))

(assert (= (and b!888802 (not res!404229)) b!888793))

(assert (= (and b!888793 res!404228) b!888800))

(assert (= (and b!888800 res!404231) b!888798))

(assert (= (and b!888798 res!404235) b!888795))

(assert (= (and b!888793 (not res!404232)) b!888796))

(assert (= (and b!888796 res!404230) b!888797))

(assert (= (and b!888797 (not res!404234)) b!888792))

(assert (= (and b!888792 (not res!404233)) b!888789))

(assert (= (or b!888801 b!888797 b!888800) bm!52265))

(assert (=> bm!52265 m!1133097))

(assert (=> b!888795 m!1133105))

(declare-fun m!1133119 () Bool)

(assert (=> b!888790 m!1133119))

(assert (=> b!888792 m!1133109))

(assert (=> b!888792 m!1133109))

(assert (=> b!888792 m!1133111))

(assert (=> d!277168 m!1133097))

(declare-fun m!1133121 () Bool)

(assert (=> d!277168 m!1133121))

(assert (=> b!888798 m!1133109))

(assert (=> b!888798 m!1133109))

(assert (=> b!888798 m!1133111))

(assert (=> b!888789 m!1133105))

(assert (=> b!888799 m!1133105))

(assert (=> b!888799 m!1133105))

(declare-fun m!1133123 () Bool)

(assert (=> b!888799 m!1133123))

(assert (=> b!888799 m!1133109))

(assert (=> b!888799 m!1133123))

(assert (=> b!888799 m!1133109))

(declare-fun m!1133125 () Bool)

(assert (=> b!888799 m!1133125))

(assert (=> b!888596 d!277168))

(declare-fun d!277170 () Bool)

(declare-fun e!582534 () Bool)

(assert (=> d!277170 e!582534))

(declare-fun res!404241 () Bool)

(assert (=> d!277170 (=> res!404241 e!582534)))

(assert (=> d!277170 (= res!404241 (matchR!834 (regOne!5105 r!15766) s!10566))))

(declare-fun lt!332043 () Unit!14171)

(declare-fun choose!5302 (Regex!2296 Regex!2296 List!9526) Unit!14171)

(assert (=> d!277170 (= lt!332043 (choose!5302 (regOne!5105 r!15766) (regTwo!5105 r!15766) s!10566))))

(declare-fun e!582535 () Bool)

(assert (=> d!277170 e!582535))

(declare-fun res!404240 () Bool)

(assert (=> d!277170 (=> (not res!404240) (not e!582535))))

(assert (=> d!277170 (= res!404240 (validRegex!765 (regOne!5105 r!15766)))))

(assert (=> d!277170 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!7 (regOne!5105 r!15766) (regTwo!5105 r!15766) s!10566) lt!332043)))

(declare-fun b!888807 () Bool)

(assert (=> b!888807 (= e!582535 (validRegex!765 (regTwo!5105 r!15766)))))

(declare-fun b!888808 () Bool)

(assert (=> b!888808 (= e!582534 (matchR!834 (regTwo!5105 r!15766) s!10566))))

(assert (= (and d!277170 res!404240) b!888807))

(assert (= (and d!277170 (not res!404241)) b!888808))

(assert (=> d!277170 m!1133051))

(declare-fun m!1133127 () Bool)

(assert (=> d!277170 m!1133127))

(assert (=> d!277170 m!1133121))

(declare-fun m!1133129 () Bool)

(assert (=> b!888807 m!1133129))

(assert (=> b!888808 m!1133035))

(assert (=> b!888596 d!277170))

(declare-fun bm!52272 () Bool)

(declare-fun call!52279 () Bool)

(declare-fun c!143767 () Bool)

(assert (=> bm!52272 (= call!52279 (validRegex!765 (ite c!143767 (regTwo!5105 lt!332005) (regTwo!5104 lt!332005))))))

(declare-fun b!888827 () Bool)

(declare-fun e!582556 () Bool)

(declare-fun e!582552 () Bool)

(assert (=> b!888827 (= e!582556 e!582552)))

(declare-fun c!143766 () Bool)

(assert (=> b!888827 (= c!143766 (is-Star!2296 lt!332005))))

(declare-fun b!888828 () Bool)

(declare-fun e!582553 () Bool)

(declare-fun call!52278 () Bool)

(assert (=> b!888828 (= e!582553 call!52278)))

(declare-fun bm!52273 () Bool)

(declare-fun call!52277 () Bool)

(assert (=> bm!52273 (= call!52277 call!52278)))

(declare-fun b!888829 () Bool)

(declare-fun e!582551 () Bool)

(declare-fun e!582550 () Bool)

(assert (=> b!888829 (= e!582551 e!582550)))

(declare-fun res!404254 () Bool)

(assert (=> b!888829 (=> (not res!404254) (not e!582550))))

(assert (=> b!888829 (= res!404254 call!52277)))

(declare-fun b!888830 () Bool)

(declare-fun res!404252 () Bool)

(assert (=> b!888830 (=> res!404252 e!582551)))

(assert (=> b!888830 (= res!404252 (not (is-Concat!4129 lt!332005)))))

(declare-fun e!582555 () Bool)

(assert (=> b!888830 (= e!582555 e!582551)))

(declare-fun b!888831 () Bool)

(assert (=> b!888831 (= e!582552 e!582555)))

(assert (=> b!888831 (= c!143767 (is-Union!2296 lt!332005))))

(declare-fun b!888832 () Bool)

(declare-fun e!582554 () Bool)

(assert (=> b!888832 (= e!582554 call!52279)))

(declare-fun b!888833 () Bool)

(assert (=> b!888833 (= e!582550 call!52279)))

(declare-fun b!888834 () Bool)

(declare-fun res!404253 () Bool)

(assert (=> b!888834 (=> (not res!404253) (not e!582554))))

(assert (=> b!888834 (= res!404253 call!52277)))

(assert (=> b!888834 (= e!582555 e!582554)))

(declare-fun d!277172 () Bool)

(declare-fun res!404255 () Bool)

(assert (=> d!277172 (=> res!404255 e!582556)))

(assert (=> d!277172 (= res!404255 (is-ElementMatch!2296 lt!332005))))

(assert (=> d!277172 (= (validRegex!765 lt!332005) e!582556)))

(declare-fun bm!52274 () Bool)

(assert (=> bm!52274 (= call!52278 (validRegex!765 (ite c!143766 (reg!2625 lt!332005) (ite c!143767 (regOne!5105 lt!332005) (regOne!5104 lt!332005)))))))

(declare-fun b!888835 () Bool)

(assert (=> b!888835 (= e!582552 e!582553)))

(declare-fun res!404256 () Bool)

(assert (=> b!888835 (= res!404256 (not (nullable!594 (reg!2625 lt!332005))))))

(assert (=> b!888835 (=> (not res!404256) (not e!582553))))

(assert (= (and d!277172 (not res!404255)) b!888827))

(assert (= (and b!888827 c!143766) b!888835))

(assert (= (and b!888827 (not c!143766)) b!888831))

(assert (= (and b!888835 res!404256) b!888828))

(assert (= (and b!888831 c!143767) b!888834))

(assert (= (and b!888831 (not c!143767)) b!888830))

(assert (= (and b!888834 res!404253) b!888832))

(assert (= (and b!888830 (not res!404252)) b!888829))

(assert (= (and b!888829 res!404254) b!888833))

(assert (= (or b!888832 b!888833) bm!52272))

(assert (= (or b!888834 b!888829) bm!52273))

(assert (= (or b!888828 bm!52273) bm!52274))

(declare-fun m!1133131 () Bool)

(assert (=> bm!52272 m!1133131))

(declare-fun m!1133133 () Bool)

(assert (=> bm!52274 m!1133133))

(declare-fun m!1133135 () Bool)

(assert (=> b!888835 m!1133135))

(assert (=> b!888602 d!277172))

(declare-fun b!888836 () Bool)

(declare-fun e!582561 () Bool)

(assert (=> b!888836 (= e!582561 (not (= (head!1559 s!10566) (c!143719 lt!332005))))))

(declare-fun b!888837 () Bool)

(declare-fun e!582557 () Bool)

(assert (=> b!888837 (= e!582557 (nullable!594 lt!332005))))

(declare-fun b!888838 () Bool)

(declare-fun e!582562 () Bool)

(declare-fun e!582563 () Bool)

(assert (=> b!888838 (= e!582562 e!582563)))

(declare-fun c!143769 () Bool)

(assert (=> b!888838 (= c!143769 (is-EmptyLang!2296 lt!332005))))

(declare-fun b!888839 () Bool)

(declare-fun res!404262 () Bool)

(assert (=> b!888839 (=> res!404262 e!582561)))

(assert (=> b!888839 (= res!404262 (not (isEmpty!5716 (tail!1121 s!10566))))))

(declare-fun bm!52275 () Bool)

(declare-fun call!52280 () Bool)

(assert (=> bm!52275 (= call!52280 (isEmpty!5716 s!10566))))

(declare-fun b!888840 () Bool)

(declare-fun res!404261 () Bool)

(declare-fun e!582559 () Bool)

(assert (=> b!888840 (=> res!404261 e!582559)))

(declare-fun e!582560 () Bool)

(assert (=> b!888840 (= res!404261 e!582560)))

(declare-fun res!404257 () Bool)

(assert (=> b!888840 (=> (not res!404257) (not e!582560))))

(declare-fun lt!332044 () Bool)

(assert (=> b!888840 (= res!404257 lt!332044)))

(declare-fun d!277174 () Bool)

(assert (=> d!277174 e!582562))

(declare-fun c!143770 () Bool)

(assert (=> d!277174 (= c!143770 (is-EmptyExpr!2296 lt!332005))))

(assert (=> d!277174 (= lt!332044 e!582557)))

(declare-fun c!143768 () Bool)

(assert (=> d!277174 (= c!143768 (isEmpty!5716 s!10566))))

(assert (=> d!277174 (validRegex!765 lt!332005)))

(assert (=> d!277174 (= (matchR!834 lt!332005 s!10566) lt!332044)))

(declare-fun b!888841 () Bool)

(assert (=> b!888841 (= e!582563 (not lt!332044))))

(declare-fun b!888842 () Bool)

(assert (=> b!888842 (= e!582560 (= (head!1559 s!10566) (c!143719 lt!332005)))))

(declare-fun b!888843 () Bool)

(declare-fun e!582558 () Bool)

(assert (=> b!888843 (= e!582559 e!582558)))

(declare-fun res!404259 () Bool)

(assert (=> b!888843 (=> (not res!404259) (not e!582558))))

(assert (=> b!888843 (= res!404259 (not lt!332044))))

(declare-fun b!888844 () Bool)

(assert (=> b!888844 (= e!582558 e!582561)))

(declare-fun res!404263 () Bool)

(assert (=> b!888844 (=> res!404263 e!582561)))

(assert (=> b!888844 (= res!404263 call!52280)))

(declare-fun b!888845 () Bool)

(declare-fun res!404264 () Bool)

(assert (=> b!888845 (=> (not res!404264) (not e!582560))))

(assert (=> b!888845 (= res!404264 (isEmpty!5716 (tail!1121 s!10566)))))

(declare-fun b!888846 () Bool)

(assert (=> b!888846 (= e!582557 (matchR!834 (derivativeStep!406 lt!332005 (head!1559 s!10566)) (tail!1121 s!10566)))))

(declare-fun b!888847 () Bool)

(declare-fun res!404260 () Bool)

(assert (=> b!888847 (=> (not res!404260) (not e!582560))))

(assert (=> b!888847 (= res!404260 (not call!52280))))

(declare-fun b!888848 () Bool)

(assert (=> b!888848 (= e!582562 (= lt!332044 call!52280))))

(declare-fun b!888849 () Bool)

(declare-fun res!404258 () Bool)

(assert (=> b!888849 (=> res!404258 e!582559)))

(assert (=> b!888849 (= res!404258 (not (is-ElementMatch!2296 lt!332005)))))

(assert (=> b!888849 (= e!582563 e!582559)))

(assert (= (and d!277174 c!143768) b!888837))

(assert (= (and d!277174 (not c!143768)) b!888846))

(assert (= (and d!277174 c!143770) b!888848))

(assert (= (and d!277174 (not c!143770)) b!888838))

(assert (= (and b!888838 c!143769) b!888841))

(assert (= (and b!888838 (not c!143769)) b!888849))

(assert (= (and b!888849 (not res!404258)) b!888840))

(assert (= (and b!888840 res!404257) b!888847))

(assert (= (and b!888847 res!404260) b!888845))

(assert (= (and b!888845 res!404264) b!888842))

(assert (= (and b!888840 (not res!404261)) b!888843))

(assert (= (and b!888843 res!404259) b!888844))

(assert (= (and b!888844 (not res!404263)) b!888839))

(assert (= (and b!888839 (not res!404262)) b!888836))

(assert (= (or b!888848 b!888844 b!888847) bm!52275))

(assert (=> bm!52275 m!1133097))

(assert (=> b!888842 m!1133105))

(declare-fun m!1133137 () Bool)

(assert (=> b!888837 m!1133137))

(assert (=> b!888839 m!1133109))

(assert (=> b!888839 m!1133109))

(assert (=> b!888839 m!1133111))

(assert (=> d!277174 m!1133097))

(assert (=> d!277174 m!1133037))

(assert (=> b!888845 m!1133109))

(assert (=> b!888845 m!1133109))

(assert (=> b!888845 m!1133111))

(assert (=> b!888836 m!1133105))

(assert (=> b!888846 m!1133105))

(assert (=> b!888846 m!1133105))

(declare-fun m!1133139 () Bool)

(assert (=> b!888846 m!1133139))

(assert (=> b!888846 m!1133109))

(assert (=> b!888846 m!1133139))

(assert (=> b!888846 m!1133109))

(declare-fun m!1133141 () Bool)

(assert (=> b!888846 m!1133141))

(assert (=> b!888602 d!277174))

(declare-fun b!888872 () Bool)

(declare-fun e!582578 () Regex!2296)

(declare-fun e!582577 () Regex!2296)

(assert (=> b!888872 (= e!582578 e!582577)))

(declare-fun c!143782 () Bool)

(assert (=> b!888872 (= c!143782 (and (is-Concat!4129 (regOne!5105 r!15766)) (is-EmptyExpr!2296 (regTwo!5104 (regOne!5105 r!15766)))))))

(declare-fun d!277176 () Bool)

(declare-fun e!582579 () Bool)

(assert (=> d!277176 e!582579))

(declare-fun res!404267 () Bool)

(assert (=> d!277176 (=> (not res!404267) (not e!582579))))

(declare-fun lt!332047 () Regex!2296)

(assert (=> d!277176 (= res!404267 (validRegex!765 lt!332047))))

(assert (=> d!277176 (= lt!332047 e!582578)))

(declare-fun c!143784 () Bool)

(assert (=> d!277176 (= c!143784 (and (is-Concat!4129 (regOne!5105 r!15766)) (is-EmptyExpr!2296 (regOne!5104 (regOne!5105 r!15766)))))))

(assert (=> d!277176 (validRegex!765 (regOne!5105 r!15766))))

(assert (=> d!277176 (= (removeUselessConcat!33 (regOne!5105 r!15766)) lt!332047)))

(declare-fun bm!52286 () Bool)

(declare-fun call!52293 () Regex!2296)

(declare-fun call!52294 () Regex!2296)

(assert (=> bm!52286 (= call!52293 call!52294)))

(declare-fun b!888873 () Bool)

(assert (=> b!888873 (= e!582579 (= (nullable!594 lt!332047) (nullable!594 (regOne!5105 r!15766))))))

(declare-fun b!888874 () Bool)

(declare-fun e!582580 () Regex!2296)

(declare-fun e!582576 () Regex!2296)

(assert (=> b!888874 (= e!582580 e!582576)))

(declare-fun c!143781 () Bool)

(assert (=> b!888874 (= c!143781 (is-Union!2296 (regOne!5105 r!15766)))))

(declare-fun b!888875 () Bool)

(declare-fun c!143783 () Bool)

(assert (=> b!888875 (= c!143783 (is-Star!2296 (regOne!5105 r!15766)))))

(declare-fun e!582581 () Regex!2296)

(assert (=> b!888875 (= e!582576 e!582581)))

(declare-fun b!888876 () Bool)

(declare-fun call!52295 () Regex!2296)

(assert (=> b!888876 (= e!582580 (Concat!4129 call!52295 call!52294))))

(declare-fun bm!52287 () Bool)

(declare-fun call!52292 () Regex!2296)

(declare-fun call!52291 () Regex!2296)

(assert (=> bm!52287 (= call!52292 call!52291)))

(declare-fun b!888877 () Bool)

(assert (=> b!888877 (= e!582581 (Star!2296 call!52293))))

(declare-fun c!143785 () Bool)

(declare-fun bm!52288 () Bool)

(assert (=> bm!52288 (= call!52291 (removeUselessConcat!33 (ite c!143784 (regTwo!5104 (regOne!5105 r!15766)) (ite c!143782 (regOne!5104 (regOne!5105 r!15766)) (ite c!143785 (regTwo!5104 (regOne!5105 r!15766)) (ite c!143781 (regTwo!5105 (regOne!5105 r!15766)) (reg!2625 (regOne!5105 r!15766))))))))))

(declare-fun b!888878 () Bool)

(assert (=> b!888878 (= e!582576 (Union!2296 call!52295 call!52293))))

(declare-fun b!888879 () Bool)

(assert (=> b!888879 (= e!582577 call!52292)))

(declare-fun b!888880 () Bool)

(assert (=> b!888880 (= e!582581 (regOne!5105 r!15766))))

(declare-fun b!888881 () Bool)

(assert (=> b!888881 (= e!582578 call!52291)))

(declare-fun b!888882 () Bool)

(assert (=> b!888882 (= c!143785 (is-Concat!4129 (regOne!5105 r!15766)))))

(assert (=> b!888882 (= e!582577 e!582580)))

(declare-fun bm!52289 () Bool)

(assert (=> bm!52289 (= call!52294 call!52292)))

(declare-fun bm!52290 () Bool)

(assert (=> bm!52290 (= call!52295 (removeUselessConcat!33 (ite c!143785 (regOne!5104 (regOne!5105 r!15766)) (regOne!5105 (regOne!5105 r!15766)))))))

(assert (= (and d!277176 c!143784) b!888881))

(assert (= (and d!277176 (not c!143784)) b!888872))

(assert (= (and b!888872 c!143782) b!888879))

(assert (= (and b!888872 (not c!143782)) b!888882))

(assert (= (and b!888882 c!143785) b!888876))

(assert (= (and b!888882 (not c!143785)) b!888874))

(assert (= (and b!888874 c!143781) b!888878))

(assert (= (and b!888874 (not c!143781)) b!888875))

(assert (= (and b!888875 c!143783) b!888877))

(assert (= (and b!888875 (not c!143783)) b!888880))

(assert (= (or b!888878 b!888877) bm!52286))

(assert (= (or b!888876 bm!52286) bm!52289))

(assert (= (or b!888876 b!888878) bm!52290))

(assert (= (or b!888879 bm!52289) bm!52287))

(assert (= (or b!888881 bm!52287) bm!52288))

(assert (= (and d!277176 res!404267) b!888873))

(declare-fun m!1133143 () Bool)

(assert (=> d!277176 m!1133143))

(assert (=> d!277176 m!1133121))

(declare-fun m!1133145 () Bool)

(assert (=> b!888873 m!1133145))

(assert (=> b!888873 m!1133119))

(declare-fun m!1133147 () Bool)

(assert (=> bm!52288 m!1133147))

(declare-fun m!1133149 () Bool)

(assert (=> bm!52290 m!1133149))

(assert (=> b!888602 d!277176))

(declare-fun d!277178 () Bool)

(assert (=> d!277178 (= (matchR!834 (regOne!5105 r!15766) s!10566) (matchR!834 (removeUselessConcat!33 (regOne!5105 r!15766)) s!10566))))

(declare-fun lt!332050 () Unit!14171)

(declare-fun choose!5304 (Regex!2296 List!9526) Unit!14171)

(assert (=> d!277178 (= lt!332050 (choose!5304 (regOne!5105 r!15766) s!10566))))

(assert (=> d!277178 (validRegex!765 (regOne!5105 r!15766))))

(assert (=> d!277178 (= (lemmaRemoveUselessConcatSound!27 (regOne!5105 r!15766) s!10566) lt!332050)))

(declare-fun bs!234799 () Bool)

(assert (= bs!234799 d!277178))

(assert (=> bs!234799 m!1133041))

(declare-fun m!1133151 () Bool)

(assert (=> bs!234799 m!1133151))

(assert (=> bs!234799 m!1133041))

(assert (=> bs!234799 m!1133051))

(assert (=> bs!234799 m!1133121))

(declare-fun m!1133153 () Bool)

(assert (=> bs!234799 m!1133153))

(assert (=> b!888602 d!277178))

(declare-fun b!888883 () Bool)

(declare-fun e!582586 () Bool)

(assert (=> b!888883 (= e!582586 (not (= (head!1559 s!10566) (c!143719 (regTwo!5105 r!15766)))))))

(declare-fun b!888884 () Bool)

(declare-fun e!582582 () Bool)

(assert (=> b!888884 (= e!582582 (nullable!594 (regTwo!5105 r!15766)))))

(declare-fun b!888885 () Bool)

(declare-fun e!582587 () Bool)

(declare-fun e!582588 () Bool)

(assert (=> b!888885 (= e!582587 e!582588)))

(declare-fun c!143787 () Bool)

(assert (=> b!888885 (= c!143787 (is-EmptyLang!2296 (regTwo!5105 r!15766)))))

(declare-fun b!888886 () Bool)

(declare-fun res!404273 () Bool)

(assert (=> b!888886 (=> res!404273 e!582586)))

(assert (=> b!888886 (= res!404273 (not (isEmpty!5716 (tail!1121 s!10566))))))

(declare-fun bm!52291 () Bool)

(declare-fun call!52296 () Bool)

(assert (=> bm!52291 (= call!52296 (isEmpty!5716 s!10566))))

(declare-fun b!888887 () Bool)

(declare-fun res!404272 () Bool)

(declare-fun e!582584 () Bool)

(assert (=> b!888887 (=> res!404272 e!582584)))

(declare-fun e!582585 () Bool)

(assert (=> b!888887 (= res!404272 e!582585)))

(declare-fun res!404268 () Bool)

(assert (=> b!888887 (=> (not res!404268) (not e!582585))))

(declare-fun lt!332051 () Bool)

(assert (=> b!888887 (= res!404268 lt!332051)))

(declare-fun d!277180 () Bool)

(assert (=> d!277180 e!582587))

(declare-fun c!143788 () Bool)

(assert (=> d!277180 (= c!143788 (is-EmptyExpr!2296 (regTwo!5105 r!15766)))))

(assert (=> d!277180 (= lt!332051 e!582582)))

(declare-fun c!143786 () Bool)

(assert (=> d!277180 (= c!143786 (isEmpty!5716 s!10566))))

(assert (=> d!277180 (validRegex!765 (regTwo!5105 r!15766))))

(assert (=> d!277180 (= (matchR!834 (regTwo!5105 r!15766) s!10566) lt!332051)))

(declare-fun b!888888 () Bool)

(assert (=> b!888888 (= e!582588 (not lt!332051))))

(declare-fun b!888889 () Bool)

(assert (=> b!888889 (= e!582585 (= (head!1559 s!10566) (c!143719 (regTwo!5105 r!15766))))))

(declare-fun b!888890 () Bool)

(declare-fun e!582583 () Bool)

(assert (=> b!888890 (= e!582584 e!582583)))

(declare-fun res!404270 () Bool)

(assert (=> b!888890 (=> (not res!404270) (not e!582583))))

(assert (=> b!888890 (= res!404270 (not lt!332051))))

(declare-fun b!888891 () Bool)

(assert (=> b!888891 (= e!582583 e!582586)))

(declare-fun res!404274 () Bool)

(assert (=> b!888891 (=> res!404274 e!582586)))

(assert (=> b!888891 (= res!404274 call!52296)))

(declare-fun b!888892 () Bool)

(declare-fun res!404275 () Bool)

(assert (=> b!888892 (=> (not res!404275) (not e!582585))))

(assert (=> b!888892 (= res!404275 (isEmpty!5716 (tail!1121 s!10566)))))

(declare-fun b!888893 () Bool)

(assert (=> b!888893 (= e!582582 (matchR!834 (derivativeStep!406 (regTwo!5105 r!15766) (head!1559 s!10566)) (tail!1121 s!10566)))))

(declare-fun b!888894 () Bool)

(declare-fun res!404271 () Bool)

(assert (=> b!888894 (=> (not res!404271) (not e!582585))))

(assert (=> b!888894 (= res!404271 (not call!52296))))

(declare-fun b!888895 () Bool)

(assert (=> b!888895 (= e!582587 (= lt!332051 call!52296))))

(declare-fun b!888896 () Bool)

(declare-fun res!404269 () Bool)

(assert (=> b!888896 (=> res!404269 e!582584)))

(assert (=> b!888896 (= res!404269 (not (is-ElementMatch!2296 (regTwo!5105 r!15766))))))

(assert (=> b!888896 (= e!582588 e!582584)))

(assert (= (and d!277180 c!143786) b!888884))

(assert (= (and d!277180 (not c!143786)) b!888893))

(assert (= (and d!277180 c!143788) b!888895))

(assert (= (and d!277180 (not c!143788)) b!888885))

(assert (= (and b!888885 c!143787) b!888888))

(assert (= (and b!888885 (not c!143787)) b!888896))

(assert (= (and b!888896 (not res!404269)) b!888887))

(assert (= (and b!888887 res!404268) b!888894))

(assert (= (and b!888894 res!404271) b!888892))

(assert (= (and b!888892 res!404275) b!888889))

(assert (= (and b!888887 (not res!404272)) b!888890))

(assert (= (and b!888890 res!404270) b!888891))

(assert (= (and b!888891 (not res!404274)) b!888886))

(assert (= (and b!888886 (not res!404273)) b!888883))

(assert (= (or b!888895 b!888891 b!888894) bm!52291))

(assert (=> bm!52291 m!1133097))

(assert (=> b!888889 m!1133105))

(declare-fun m!1133155 () Bool)

(assert (=> b!888884 m!1133155))

(assert (=> b!888886 m!1133109))

(assert (=> b!888886 m!1133109))

(assert (=> b!888886 m!1133111))

(assert (=> d!277180 m!1133097))

(assert (=> d!277180 m!1133129))

(assert (=> b!888892 m!1133109))

(assert (=> b!888892 m!1133109))

(assert (=> b!888892 m!1133111))

(assert (=> b!888883 m!1133105))

(assert (=> b!888893 m!1133105))

(assert (=> b!888893 m!1133105))

(declare-fun m!1133157 () Bool)

(assert (=> b!888893 m!1133157))

(assert (=> b!888893 m!1133109))

(assert (=> b!888893 m!1133157))

(assert (=> b!888893 m!1133109))

(declare-fun m!1133159 () Bool)

(assert (=> b!888893 m!1133159))

(assert (=> b!888599 d!277180))

(declare-fun bm!52292 () Bool)

(declare-fun call!52299 () Bool)

(declare-fun c!143790 () Bool)

(assert (=> bm!52292 (= call!52299 (validRegex!765 (ite c!143790 (regTwo!5105 r!15766) (regTwo!5104 r!15766))))))

(declare-fun b!888897 () Bool)

(declare-fun e!582595 () Bool)

(declare-fun e!582591 () Bool)

(assert (=> b!888897 (= e!582595 e!582591)))

(declare-fun c!143789 () Bool)

(assert (=> b!888897 (= c!143789 (is-Star!2296 r!15766))))

(declare-fun b!888898 () Bool)

(declare-fun e!582592 () Bool)

(declare-fun call!52298 () Bool)

(assert (=> b!888898 (= e!582592 call!52298)))

(declare-fun bm!52293 () Bool)

(declare-fun call!52297 () Bool)

(assert (=> bm!52293 (= call!52297 call!52298)))

(declare-fun b!888899 () Bool)

(declare-fun e!582590 () Bool)

(declare-fun e!582589 () Bool)

(assert (=> b!888899 (= e!582590 e!582589)))

(declare-fun res!404278 () Bool)

(assert (=> b!888899 (=> (not res!404278) (not e!582589))))

(assert (=> b!888899 (= res!404278 call!52297)))

(declare-fun b!888900 () Bool)

(declare-fun res!404276 () Bool)

(assert (=> b!888900 (=> res!404276 e!582590)))

(assert (=> b!888900 (= res!404276 (not (is-Concat!4129 r!15766)))))

(declare-fun e!582594 () Bool)

(assert (=> b!888900 (= e!582594 e!582590)))

(declare-fun b!888901 () Bool)

(assert (=> b!888901 (= e!582591 e!582594)))

(assert (=> b!888901 (= c!143790 (is-Union!2296 r!15766))))

(declare-fun b!888902 () Bool)

(declare-fun e!582593 () Bool)

(assert (=> b!888902 (= e!582593 call!52299)))

(declare-fun b!888903 () Bool)

(assert (=> b!888903 (= e!582589 call!52299)))

(declare-fun b!888904 () Bool)

(declare-fun res!404277 () Bool)

(assert (=> b!888904 (=> (not res!404277) (not e!582593))))

(assert (=> b!888904 (= res!404277 call!52297)))

(assert (=> b!888904 (= e!582594 e!582593)))

(declare-fun d!277182 () Bool)

(declare-fun res!404279 () Bool)

(assert (=> d!277182 (=> res!404279 e!582595)))

(assert (=> d!277182 (= res!404279 (is-ElementMatch!2296 r!15766))))

(assert (=> d!277182 (= (validRegex!765 r!15766) e!582595)))

(declare-fun bm!52294 () Bool)

(assert (=> bm!52294 (= call!52298 (validRegex!765 (ite c!143789 (reg!2625 r!15766) (ite c!143790 (regOne!5105 r!15766) (regOne!5104 r!15766)))))))

(declare-fun b!888905 () Bool)

(assert (=> b!888905 (= e!582591 e!582592)))

(declare-fun res!404280 () Bool)

(assert (=> b!888905 (= res!404280 (not (nullable!594 (reg!2625 r!15766))))))

(assert (=> b!888905 (=> (not res!404280) (not e!582592))))

(assert (= (and d!277182 (not res!404279)) b!888897))

(assert (= (and b!888897 c!143789) b!888905))

(assert (= (and b!888897 (not c!143789)) b!888901))

(assert (= (and b!888905 res!404280) b!888898))

(assert (= (and b!888901 c!143790) b!888904))

(assert (= (and b!888901 (not c!143790)) b!888900))

(assert (= (and b!888904 res!404277) b!888902))

(assert (= (and b!888900 (not res!404276)) b!888899))

(assert (= (and b!888899 res!404278) b!888903))

(assert (= (or b!888902 b!888903) bm!52292))

(assert (= (or b!888904 b!888899) bm!52293))

(assert (= (or b!888898 bm!52293) bm!52294))

(declare-fun m!1133161 () Bool)

(assert (=> bm!52292 m!1133161))

(declare-fun m!1133163 () Bool)

(assert (=> bm!52294 m!1133163))

(declare-fun m!1133165 () Bool)

(assert (=> b!888905 m!1133165))

(assert (=> start!80220 d!277182))

(declare-fun b!888910 () Bool)

(declare-fun e!582598 () Bool)

(declare-fun tp!279939 () Bool)

(assert (=> b!888910 (= e!582598 (and tp_is_empty!4235 tp!279939))))

(assert (=> b!888595 (= tp!279917 e!582598)))

(assert (= (and b!888595 (is-Cons!9510 (t!100572 s!10566))) b!888910))

(declare-fun b!888921 () Bool)

(declare-fun e!582601 () Bool)

(assert (=> b!888921 (= e!582601 tp_is_empty!4235)))

(assert (=> b!888594 (= tp!279918 e!582601)))

(declare-fun b!888922 () Bool)

(declare-fun tp!279951 () Bool)

(declare-fun tp!279954 () Bool)

(assert (=> b!888922 (= e!582601 (and tp!279951 tp!279954))))

(declare-fun b!888923 () Bool)

(declare-fun tp!279952 () Bool)

(assert (=> b!888923 (= e!582601 tp!279952)))

(declare-fun b!888924 () Bool)

(declare-fun tp!279953 () Bool)

(declare-fun tp!279950 () Bool)

(assert (=> b!888924 (= e!582601 (and tp!279953 tp!279950))))

(assert (= (and b!888594 (is-ElementMatch!2296 (regOne!5104 r!15766))) b!888921))

(assert (= (and b!888594 (is-Concat!4129 (regOne!5104 r!15766))) b!888922))

(assert (= (and b!888594 (is-Star!2296 (regOne!5104 r!15766))) b!888923))

(assert (= (and b!888594 (is-Union!2296 (regOne!5104 r!15766))) b!888924))

(declare-fun b!888925 () Bool)

(declare-fun e!582602 () Bool)

(assert (=> b!888925 (= e!582602 tp_is_empty!4235)))

(assert (=> b!888594 (= tp!279914 e!582602)))

(declare-fun b!888926 () Bool)

(declare-fun tp!279956 () Bool)

(declare-fun tp!279959 () Bool)

(assert (=> b!888926 (= e!582602 (and tp!279956 tp!279959))))

(declare-fun b!888927 () Bool)

(declare-fun tp!279957 () Bool)

(assert (=> b!888927 (= e!582602 tp!279957)))

(declare-fun b!888928 () Bool)

(declare-fun tp!279958 () Bool)

(declare-fun tp!279955 () Bool)

(assert (=> b!888928 (= e!582602 (and tp!279958 tp!279955))))

(assert (= (and b!888594 (is-ElementMatch!2296 (regTwo!5104 r!15766))) b!888925))

(assert (= (and b!888594 (is-Concat!4129 (regTwo!5104 r!15766))) b!888926))

(assert (= (and b!888594 (is-Star!2296 (regTwo!5104 r!15766))) b!888927))

(assert (= (and b!888594 (is-Union!2296 (regTwo!5104 r!15766))) b!888928))

(declare-fun b!888929 () Bool)

(declare-fun e!582603 () Bool)

(assert (=> b!888929 (= e!582603 tp_is_empty!4235)))

(assert (=> b!888597 (= tp!279916 e!582603)))

(declare-fun b!888930 () Bool)

(declare-fun tp!279961 () Bool)

(declare-fun tp!279964 () Bool)

(assert (=> b!888930 (= e!582603 (and tp!279961 tp!279964))))

(declare-fun b!888931 () Bool)

(declare-fun tp!279962 () Bool)

(assert (=> b!888931 (= e!582603 tp!279962)))

(declare-fun b!888932 () Bool)

(declare-fun tp!279963 () Bool)

(declare-fun tp!279960 () Bool)

(assert (=> b!888932 (= e!582603 (and tp!279963 tp!279960))))

(assert (= (and b!888597 (is-ElementMatch!2296 (regOne!5105 r!15766))) b!888929))

(assert (= (and b!888597 (is-Concat!4129 (regOne!5105 r!15766))) b!888930))

(assert (= (and b!888597 (is-Star!2296 (regOne!5105 r!15766))) b!888931))

(assert (= (and b!888597 (is-Union!2296 (regOne!5105 r!15766))) b!888932))

(declare-fun b!888933 () Bool)

(declare-fun e!582604 () Bool)

(assert (=> b!888933 (= e!582604 tp_is_empty!4235)))

(assert (=> b!888597 (= tp!279913 e!582604)))

(declare-fun b!888934 () Bool)

(declare-fun tp!279966 () Bool)

(declare-fun tp!279969 () Bool)

(assert (=> b!888934 (= e!582604 (and tp!279966 tp!279969))))

(declare-fun b!888935 () Bool)

(declare-fun tp!279967 () Bool)

(assert (=> b!888935 (= e!582604 tp!279967)))

(declare-fun b!888936 () Bool)

(declare-fun tp!279968 () Bool)

(declare-fun tp!279965 () Bool)

(assert (=> b!888936 (= e!582604 (and tp!279968 tp!279965))))

(assert (= (and b!888597 (is-ElementMatch!2296 (regTwo!5105 r!15766))) b!888933))

(assert (= (and b!888597 (is-Concat!4129 (regTwo!5105 r!15766))) b!888934))

(assert (= (and b!888597 (is-Star!2296 (regTwo!5105 r!15766))) b!888935))

(assert (= (and b!888597 (is-Union!2296 (regTwo!5105 r!15766))) b!888936))

(declare-fun b!888937 () Bool)

(declare-fun e!582605 () Bool)

(assert (=> b!888937 (= e!582605 tp_is_empty!4235)))

(assert (=> b!888598 (= tp!279915 e!582605)))

(declare-fun b!888938 () Bool)

(declare-fun tp!279971 () Bool)

(declare-fun tp!279974 () Bool)

(assert (=> b!888938 (= e!582605 (and tp!279971 tp!279974))))

(declare-fun b!888939 () Bool)

(declare-fun tp!279972 () Bool)

(assert (=> b!888939 (= e!582605 tp!279972)))

(declare-fun b!888940 () Bool)

(declare-fun tp!279973 () Bool)

(declare-fun tp!279970 () Bool)

(assert (=> b!888940 (= e!582605 (and tp!279973 tp!279970))))

(assert (= (and b!888598 (is-ElementMatch!2296 (reg!2625 r!15766))) b!888937))

(assert (= (and b!888598 (is-Concat!4129 (reg!2625 r!15766))) b!888938))

(assert (= (and b!888598 (is-Star!2296 (reg!2625 r!15766))) b!888939))

(assert (= (and b!888598 (is-Union!2296 (reg!2625 r!15766))) b!888940))

(push 1)

(assert (not b!888905))

(assert (not b!888936))

(assert (not b!888799))

(assert (not bm!52275))

(assert (not b!888846))

(assert (not b!888873))

(assert (not d!277168))

(assert (not b!888892))

(assert (not b!888886))

(assert (not b!888934))

(assert (not b!888776))

(assert (not b!888883))

(assert (not bm!52274))

(assert (not b!888837))

(assert (not b!888926))

(assert (not bm!52265))

(assert (not d!277174))

(assert (not bm!52290))

(assert (not d!277166))

(assert (not b!888842))

(assert (not b!888922))

(assert (not bm!52261))

(assert (not d!277164))

(assert (not b!888923))

(assert (not b!888924))

(assert (not b!888790))

(assert (not d!277170))

(assert (not b!888932))

(assert (not b!888775))

(assert (not b!888778))

(assert (not b!888738))

(assert (not d!277178))

(assert (not b!888928))

(assert (not b!888893))

(assert (not bm!52288))

(assert (not bm!52291))

(assert (not b!888931))

(assert (not b!888927))

(assert (not b!888889))

(assert (not bm!52260))

(assert (not b!888940))

(assert (not b!888884))

(assert (not b!888839))

(assert (not b!888939))

(assert (not b!888781))

(assert (not bm!52264))

(assert tp_is_empty!4235)

(assert (not b!888784))

(assert (not b!888835))

(assert (not b!888935))

(assert (not b!888845))

(assert (not d!277176))

(assert (not b!888798))

(assert (not bm!52272))

(assert (not b!888792))

(assert (not b!888739))

(assert (not b!888808))

(assert (not b!888807))

(assert (not bm!52292))

(assert (not b!888795))

(assert (not b!888836))

(assert (not b!888910))

(assert (not b!888789))

(assert (not b!888785))

(assert (not d!277180))

(assert (not b!888938))

(assert (not b!888930))

(assert (not bm!52294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

