; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668540 () Bool)

(assert start!668540)

(declare-fun b!6972136 () Bool)

(declare-fun res!2843755 () Bool)

(declare-fun e!4190829 () Bool)

(assert (=> b!6972136 (=> res!2843755 e!4190829)))

(declare-datatypes ((C!34530 0))(
  ( (C!34531 (val!26967 Int)) )
))
(declare-datatypes ((Regex!17130 0))(
  ( (ElementMatch!17130 (c!1292460 C!34530)) (Concat!25975 (regOne!34772 Regex!17130) (regTwo!34772 Regex!17130)) (EmptyExpr!17130) (Star!17130 (reg!17459 Regex!17130)) (EmptyLang!17130) (Union!17130 (regOne!34773 Regex!17130) (regTwo!34773 Regex!17130)) )
))
(declare-fun r!13765 () Regex!17130)

(declare-datatypes ((List!66941 0))(
  ( (Nil!66817) (Cons!66817 (h!73265 Regex!17130) (t!380684 List!66941)) )
))
(declare-fun lt!2479719 () List!66941)

(declare-fun generalisedUnion!2605 (List!66941) Regex!17130)

(assert (=> b!6972136 (= res!2843755 (not (= (regTwo!34773 r!13765) (generalisedUnion!2605 lt!2479719))))))

(declare-fun b!6972137 () Bool)

(declare-fun res!2843762 () Bool)

(declare-fun e!4190830 () Bool)

(assert (=> b!6972137 (=> res!2843762 e!4190830)))

(declare-fun l!9142 () List!66941)

(declare-fun isEmpty!39020 (List!66941) Bool)

(assert (=> b!6972137 (= res!2843762 (isEmpty!39020 l!9142))))

(declare-fun b!6972138 () Bool)

(declare-fun e!4190827 () Bool)

(declare-fun e!4190826 () Bool)

(assert (=> b!6972138 (= e!4190827 e!4190826)))

(declare-fun res!2843757 () Bool)

(assert (=> b!6972138 (=> res!2843757 e!4190826)))

(declare-fun lt!2479716 () Bool)

(declare-fun e!4190831 () Bool)

(assert (=> b!6972138 (= res!2843757 (not (= lt!2479716 e!4190831)))))

(declare-fun res!2843756 () Bool)

(assert (=> b!6972138 (=> res!2843756 e!4190831)))

(declare-fun lt!2479717 () Bool)

(assert (=> b!6972138 (= res!2843756 lt!2479717)))

(declare-datatypes ((List!66942 0))(
  ( (Nil!66818) (Cons!66818 (h!73266 C!34530) (t!380685 List!66942)) )
))
(declare-fun s!9351 () List!66942)

(declare-fun matchRSpec!4147 (Regex!17130 List!66942) Bool)

(assert (=> b!6972138 (= lt!2479717 (matchRSpec!4147 (regOne!34773 r!13765) s!9351))))

(declare-fun b!6972139 () Bool)

(declare-fun e!4190832 () Bool)

(declare-fun tp_is_empty!43485 () Bool)

(declare-fun tp!1924369 () Bool)

(assert (=> b!6972139 (= e!4190832 (and tp_is_empty!43485 tp!1924369))))

(declare-fun b!6972140 () Bool)

(declare-fun e!4190828 () Bool)

(declare-fun tp!1924374 () Bool)

(declare-fun tp!1924371 () Bool)

(assert (=> b!6972140 (= e!4190828 (and tp!1924374 tp!1924371))))

(declare-fun b!6972141 () Bool)

(declare-fun res!2843760 () Bool)

(declare-fun e!4190825 () Bool)

(assert (=> b!6972141 (=> (not res!2843760) (not e!4190825))))

(assert (=> b!6972141 (= res!2843760 (= r!13765 (generalisedUnion!2605 l!9142)))))

(declare-fun b!6972142 () Bool)

(declare-fun e!4190833 () Bool)

(declare-fun tp!1924368 () Bool)

(declare-fun tp!1924375 () Bool)

(assert (=> b!6972142 (= e!4190833 (and tp!1924368 tp!1924375))))

(declare-fun b!6972143 () Bool)

(assert (=> b!6972143 (= e!4190826 e!4190829)))

(declare-fun res!2843763 () Bool)

(assert (=> b!6972143 (=> res!2843763 e!4190829)))

(declare-fun lambda!397765 () Int)

(declare-fun forall!16001 (List!66941 Int) Bool)

(assert (=> b!6972143 (= res!2843763 (not (forall!16001 lt!2479719 lambda!397765)))))

(declare-fun matchR!9232 (Regex!17130 List!66942) Bool)

(assert (=> b!6972143 (= (matchR!9232 (regTwo!34773 r!13765) s!9351) (matchRSpec!4147 (regTwo!34773 r!13765) s!9351))))

(declare-datatypes ((Unit!160912 0))(
  ( (Unit!160913) )
))
(declare-fun lt!2479720 () Unit!160912)

(declare-fun mainMatchTheorem!4141 (Regex!17130 List!66942) Unit!160912)

(assert (=> b!6972143 (= lt!2479720 (mainMatchTheorem!4141 (regTwo!34773 r!13765) s!9351))))

(assert (=> b!6972143 (= (matchR!9232 (regOne!34773 r!13765) s!9351) lt!2479717)))

(declare-fun lt!2479721 () Unit!160912)

(assert (=> b!6972143 (= lt!2479721 (mainMatchTheorem!4141 (regOne!34773 r!13765) s!9351))))

(declare-fun res!2843758 () Bool)

(assert (=> start!668540 (=> (not res!2843758) (not e!4190825))))

(assert (=> start!668540 (= res!2843758 (forall!16001 l!9142 lambda!397765))))

(assert (=> start!668540 e!4190825))

(assert (=> start!668540 e!4190828))

(assert (=> start!668540 e!4190833))

(assert (=> start!668540 e!4190832))

(declare-fun b!6972144 () Bool)

(declare-fun tp!1924373 () Bool)

(assert (=> b!6972144 (= e!4190833 tp!1924373)))

(declare-fun b!6972145 () Bool)

(assert (=> b!6972145 (= e!4190831 (matchRSpec!4147 (regTwo!34773 r!13765) s!9351))))

(declare-fun b!6972146 () Bool)

(assert (=> b!6972146 (= e!4190833 tp_is_empty!43485)))

(declare-fun b!6972147 () Bool)

(declare-fun tp!1924372 () Bool)

(declare-fun tp!1924370 () Bool)

(assert (=> b!6972147 (= e!4190833 (and tp!1924372 tp!1924370))))

(declare-fun b!6972148 () Bool)

(declare-fun size!40856 (List!66941) Int)

(assert (=> b!6972148 (= e!4190829 (< (size!40856 lt!2479719) (size!40856 l!9142)))))

(declare-fun b!6972149 () Bool)

(assert (=> b!6972149 (= e!4190825 (not e!4190830))))

(declare-fun res!2843759 () Bool)

(assert (=> b!6972149 (=> res!2843759 e!4190830)))

(assert (=> b!6972149 (= res!2843759 (not (is-Union!17130 r!13765)))))

(assert (=> b!6972149 (= lt!2479716 (matchRSpec!4147 r!13765 s!9351))))

(assert (=> b!6972149 (= lt!2479716 (matchR!9232 r!13765 s!9351))))

(declare-fun lt!2479718 () Unit!160912)

(assert (=> b!6972149 (= lt!2479718 (mainMatchTheorem!4141 r!13765 s!9351))))

(declare-fun b!6972150 () Bool)

(assert (=> b!6972150 (= e!4190830 e!4190827)))

(declare-fun res!2843761 () Bool)

(assert (=> b!6972150 (=> res!2843761 e!4190827)))

(assert (=> b!6972150 (= res!2843761 (isEmpty!39020 lt!2479719))))

(declare-fun tail!13100 (List!66941) List!66941)

(assert (=> b!6972150 (= lt!2479719 (tail!13100 l!9142))))

(assert (= (and start!668540 res!2843758) b!6972141))

(assert (= (and b!6972141 res!2843760) b!6972149))

(assert (= (and b!6972149 (not res!2843759)) b!6972137))

(assert (= (and b!6972137 (not res!2843762)) b!6972150))

(assert (= (and b!6972150 (not res!2843761)) b!6972138))

(assert (= (and b!6972138 (not res!2843756)) b!6972145))

(assert (= (and b!6972138 (not res!2843757)) b!6972143))

(assert (= (and b!6972143 (not res!2843763)) b!6972136))

(assert (= (and b!6972136 (not res!2843755)) b!6972148))

(assert (= (and start!668540 (is-Cons!66817 l!9142)) b!6972140))

(assert (= (and start!668540 (is-ElementMatch!17130 r!13765)) b!6972146))

(assert (= (and start!668540 (is-Concat!25975 r!13765)) b!6972142))

(assert (= (and start!668540 (is-Star!17130 r!13765)) b!6972144))

(assert (= (and start!668540 (is-Union!17130 r!13765)) b!6972147))

(assert (= (and start!668540 (is-Cons!66818 s!9351)) b!6972139))

(declare-fun m!7660212 () Bool)

(assert (=> b!6972138 m!7660212))

(declare-fun m!7660214 () Bool)

(assert (=> b!6972150 m!7660214))

(declare-fun m!7660216 () Bool)

(assert (=> b!6972150 m!7660216))

(declare-fun m!7660218 () Bool)

(assert (=> b!6972136 m!7660218))

(declare-fun m!7660220 () Bool)

(assert (=> b!6972141 m!7660220))

(declare-fun m!7660222 () Bool)

(assert (=> b!6972148 m!7660222))

(declare-fun m!7660224 () Bool)

(assert (=> b!6972148 m!7660224))

(declare-fun m!7660226 () Bool)

(assert (=> b!6972145 m!7660226))

(declare-fun m!7660228 () Bool)

(assert (=> start!668540 m!7660228))

(declare-fun m!7660230 () Bool)

(assert (=> b!6972149 m!7660230))

(declare-fun m!7660232 () Bool)

(assert (=> b!6972149 m!7660232))

(declare-fun m!7660234 () Bool)

(assert (=> b!6972149 m!7660234))

(declare-fun m!7660236 () Bool)

(assert (=> b!6972143 m!7660236))

(declare-fun m!7660238 () Bool)

(assert (=> b!6972143 m!7660238))

(declare-fun m!7660240 () Bool)

(assert (=> b!6972143 m!7660240))

(declare-fun m!7660242 () Bool)

(assert (=> b!6972143 m!7660242))

(declare-fun m!7660244 () Bool)

(assert (=> b!6972143 m!7660244))

(assert (=> b!6972143 m!7660226))

(declare-fun m!7660246 () Bool)

(assert (=> b!6972137 m!7660246))

(push 1)

(assert (not b!6972141))

(assert (not b!6972147))

(assert (not start!668540))

(assert (not b!6972149))

(assert (not b!6972136))

(assert (not b!6972148))

(assert tp_is_empty!43485)

(assert (not b!6972150))

(assert (not b!6972137))

(assert (not b!6972145))

(assert (not b!6972144))

(assert (not b!6972140))

(assert (not b!6972138))

(assert (not b!6972139))

(assert (not b!6972143))

(assert (not b!6972142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2171399 () Bool)

(assert (=> d!2171399 (= (isEmpty!39020 l!9142) (is-Nil!66817 l!9142))))

(assert (=> b!6972137 d!2171399))

(declare-fun d!2171401 () Bool)

(declare-fun lt!2479742 () Int)

(assert (=> d!2171401 (>= lt!2479742 0)))

(declare-fun e!4190863 () Int)

(assert (=> d!2171401 (= lt!2479742 e!4190863)))

(declare-fun c!1292464 () Bool)

(assert (=> d!2171401 (= c!1292464 (is-Nil!66817 lt!2479719))))

(assert (=> d!2171401 (= (size!40856 lt!2479719) lt!2479742)))

(declare-fun b!6972200 () Bool)

(assert (=> b!6972200 (= e!4190863 0)))

(declare-fun b!6972201 () Bool)

(assert (=> b!6972201 (= e!4190863 (+ 1 (size!40856 (t!380684 lt!2479719))))))

(assert (= (and d!2171401 c!1292464) b!6972200))

(assert (= (and d!2171401 (not c!1292464)) b!6972201))

(declare-fun m!7660284 () Bool)

(assert (=> b!6972201 m!7660284))

(assert (=> b!6972148 d!2171401))

(declare-fun d!2171403 () Bool)

(declare-fun lt!2479743 () Int)

(assert (=> d!2171403 (>= lt!2479743 0)))

(declare-fun e!4190864 () Int)

(assert (=> d!2171403 (= lt!2479743 e!4190864)))

(declare-fun c!1292465 () Bool)

(assert (=> d!2171403 (= c!1292465 (is-Nil!66817 l!9142))))

(assert (=> d!2171403 (= (size!40856 l!9142) lt!2479743)))

(declare-fun b!6972202 () Bool)

(assert (=> b!6972202 (= e!4190864 0)))

(declare-fun b!6972203 () Bool)

(assert (=> b!6972203 (= e!4190864 (+ 1 (size!40856 (t!380684 l!9142))))))

(assert (= (and d!2171403 c!1292465) b!6972202))

(assert (= (and d!2171403 (not c!1292465)) b!6972203))

(declare-fun m!7660286 () Bool)

(assert (=> b!6972203 m!7660286))

(assert (=> b!6972148 d!2171403))

(declare-fun b!6972232 () Bool)

(declare-fun e!4190879 () Bool)

(declare-fun derivativeStep!5540 (Regex!17130 C!34530) Regex!17130)

(declare-fun head!14032 (List!66942) C!34530)

(declare-fun tail!13102 (List!66942) List!66942)

(assert (=> b!6972232 (= e!4190879 (matchR!9232 (derivativeStep!5540 (regTwo!34773 r!13765) (head!14032 s!9351)) (tail!13102 s!9351)))))

(declare-fun b!6972233 () Bool)

(declare-fun e!4190884 () Bool)

(declare-fun lt!2479746 () Bool)

(declare-fun call!632860 () Bool)

(assert (=> b!6972233 (= e!4190884 (= lt!2479746 call!632860))))

(declare-fun b!6972234 () Bool)

(declare-fun res!2843807 () Bool)

(declare-fun e!4190880 () Bool)

(assert (=> b!6972234 (=> (not res!2843807) (not e!4190880))))

(assert (=> b!6972234 (= res!2843807 (not call!632860))))

(declare-fun b!6972235 () Bool)

(declare-fun e!4190882 () Bool)

(assert (=> b!6972235 (= e!4190882 (not lt!2479746))))

(declare-fun b!6972237 () Bool)

(declare-fun res!2843814 () Bool)

(declare-fun e!4190883 () Bool)

(assert (=> b!6972237 (=> res!2843814 e!4190883)))

(declare-fun isEmpty!39022 (List!66942) Bool)

(assert (=> b!6972237 (= res!2843814 (not (isEmpty!39022 (tail!13102 s!9351))))))

(declare-fun b!6972238 () Bool)

(assert (=> b!6972238 (= e!4190880 (= (head!14032 s!9351) (c!1292460 (regTwo!34773 r!13765))))))

(declare-fun b!6972239 () Bool)

(declare-fun nullable!6915 (Regex!17130) Bool)

(assert (=> b!6972239 (= e!4190879 (nullable!6915 (regTwo!34773 r!13765)))))

(declare-fun b!6972240 () Bool)

(declare-fun res!2843812 () Bool)

(declare-fun e!4190885 () Bool)

(assert (=> b!6972240 (=> res!2843812 e!4190885)))

(assert (=> b!6972240 (= res!2843812 (not (is-ElementMatch!17130 (regTwo!34773 r!13765))))))

(assert (=> b!6972240 (= e!4190882 e!4190885)))

(declare-fun bm!632855 () Bool)

(assert (=> bm!632855 (= call!632860 (isEmpty!39022 s!9351))))

(declare-fun d!2171405 () Bool)

(assert (=> d!2171405 e!4190884))

(declare-fun c!1292472 () Bool)

(assert (=> d!2171405 (= c!1292472 (is-EmptyExpr!17130 (regTwo!34773 r!13765)))))

(assert (=> d!2171405 (= lt!2479746 e!4190879)))

(declare-fun c!1292474 () Bool)

(assert (=> d!2171405 (= c!1292474 (isEmpty!39022 s!9351))))

(declare-fun validRegex!8812 (Regex!17130) Bool)

(assert (=> d!2171405 (validRegex!8812 (regTwo!34773 r!13765))))

(assert (=> d!2171405 (= (matchR!9232 (regTwo!34773 r!13765) s!9351) lt!2479746)))

(declare-fun b!6972236 () Bool)

(declare-fun e!4190881 () Bool)

(assert (=> b!6972236 (= e!4190881 e!4190883)))

(declare-fun res!2843811 () Bool)

(assert (=> b!6972236 (=> res!2843811 e!4190883)))

(assert (=> b!6972236 (= res!2843811 call!632860)))

(declare-fun b!6972241 () Bool)

(declare-fun res!2843808 () Bool)

(assert (=> b!6972241 (=> res!2843808 e!4190885)))

(assert (=> b!6972241 (= res!2843808 e!4190880)))

(declare-fun res!2843810 () Bool)

(assert (=> b!6972241 (=> (not res!2843810) (not e!4190880))))

(assert (=> b!6972241 (= res!2843810 lt!2479746)))

(declare-fun b!6972242 () Bool)

(assert (=> b!6972242 (= e!4190885 e!4190881)))

(declare-fun res!2843809 () Bool)

(assert (=> b!6972242 (=> (not res!2843809) (not e!4190881))))

(assert (=> b!6972242 (= res!2843809 (not lt!2479746))))

(declare-fun b!6972243 () Bool)

(assert (=> b!6972243 (= e!4190883 (not (= (head!14032 s!9351) (c!1292460 (regTwo!34773 r!13765)))))))

(declare-fun b!6972244 () Bool)

(declare-fun res!2843813 () Bool)

(assert (=> b!6972244 (=> (not res!2843813) (not e!4190880))))

(assert (=> b!6972244 (= res!2843813 (isEmpty!39022 (tail!13102 s!9351)))))

(declare-fun b!6972245 () Bool)

(assert (=> b!6972245 (= e!4190884 e!4190882)))

(declare-fun c!1292473 () Bool)

(assert (=> b!6972245 (= c!1292473 (is-EmptyLang!17130 (regTwo!34773 r!13765)))))

(assert (= (and d!2171405 c!1292474) b!6972239))

(assert (= (and d!2171405 (not c!1292474)) b!6972232))

(assert (= (and d!2171405 c!1292472) b!6972233))

(assert (= (and d!2171405 (not c!1292472)) b!6972245))

(assert (= (and b!6972245 c!1292473) b!6972235))

(assert (= (and b!6972245 (not c!1292473)) b!6972240))

(assert (= (and b!6972240 (not res!2843812)) b!6972241))

(assert (= (and b!6972241 res!2843810) b!6972234))

(assert (= (and b!6972234 res!2843807) b!6972244))

(assert (= (and b!6972244 res!2843813) b!6972238))

(assert (= (and b!6972241 (not res!2843808)) b!6972242))

(assert (= (and b!6972242 res!2843809) b!6972236))

(assert (= (and b!6972236 (not res!2843811)) b!6972237))

(assert (= (and b!6972237 (not res!2843814)) b!6972243))

(assert (= (or b!6972233 b!6972234 b!6972236) bm!632855))

(declare-fun m!7660288 () Bool)

(assert (=> b!6972239 m!7660288))

(declare-fun m!7660290 () Bool)

(assert (=> b!6972238 m!7660290))

(declare-fun m!7660292 () Bool)

(assert (=> bm!632855 m!7660292))

(declare-fun m!7660294 () Bool)

(assert (=> b!6972244 m!7660294))

(assert (=> b!6972244 m!7660294))

(declare-fun m!7660296 () Bool)

(assert (=> b!6972244 m!7660296))

(assert (=> b!6972237 m!7660294))

(assert (=> b!6972237 m!7660294))

(assert (=> b!6972237 m!7660296))

(assert (=> b!6972232 m!7660290))

(assert (=> b!6972232 m!7660290))

(declare-fun m!7660298 () Bool)

(assert (=> b!6972232 m!7660298))

(assert (=> b!6972232 m!7660294))

(assert (=> b!6972232 m!7660298))

(assert (=> b!6972232 m!7660294))

(declare-fun m!7660300 () Bool)

(assert (=> b!6972232 m!7660300))

(assert (=> d!2171405 m!7660292))

(declare-fun m!7660302 () Bool)

(assert (=> d!2171405 m!7660302))

(assert (=> b!6972243 m!7660290))

(assert (=> b!6972143 d!2171405))

(declare-fun d!2171409 () Bool)

(declare-fun res!2843819 () Bool)

(declare-fun e!4190890 () Bool)

(assert (=> d!2171409 (=> res!2843819 e!4190890)))

(assert (=> d!2171409 (= res!2843819 (is-Nil!66817 lt!2479719))))

(assert (=> d!2171409 (= (forall!16001 lt!2479719 lambda!397765) e!4190890)))

(declare-fun b!6972252 () Bool)

(declare-fun e!4190891 () Bool)

(assert (=> b!6972252 (= e!4190890 e!4190891)))

(declare-fun res!2843820 () Bool)

(assert (=> b!6972252 (=> (not res!2843820) (not e!4190891))))

(declare-fun dynLambda!26644 (Int Regex!17130) Bool)

(assert (=> b!6972252 (= res!2843820 (dynLambda!26644 lambda!397765 (h!73265 lt!2479719)))))

(declare-fun b!6972253 () Bool)

(assert (=> b!6972253 (= e!4190891 (forall!16001 (t!380684 lt!2479719) lambda!397765))))

(assert (= (and d!2171409 (not res!2843819)) b!6972252))

(assert (= (and b!6972252 res!2843820) b!6972253))

(declare-fun b_lambda!260829 () Bool)

(assert (=> (not b_lambda!260829) (not b!6972252)))

(declare-fun m!7660304 () Bool)

(assert (=> b!6972252 m!7660304))

(declare-fun m!7660306 () Bool)

(assert (=> b!6972253 m!7660306))

(assert (=> b!6972143 d!2171409))

(declare-fun b!6972317 () Bool)

(assert (=> b!6972317 true))

(assert (=> b!6972317 true))

(declare-fun bs!1859329 () Bool)

(declare-fun b!6972318 () Bool)

(assert (= bs!1859329 (and b!6972318 b!6972317)))

(declare-fun lambda!397779 () Int)

(declare-fun lambda!397778 () Int)

(assert (=> bs!1859329 (not (= lambda!397779 lambda!397778))))

(assert (=> b!6972318 true))

(assert (=> b!6972318 true))

(declare-fun b!6972314 () Bool)

(declare-fun res!2843844 () Bool)

(declare-fun e!4190929 () Bool)

(assert (=> b!6972314 (=> res!2843844 e!4190929)))

(declare-fun call!632866 () Bool)

(assert (=> b!6972314 (= res!2843844 call!632866)))

(declare-fun e!4190934 () Bool)

(assert (=> b!6972314 (= e!4190934 e!4190929)))

(declare-fun b!6972315 () Bool)

(declare-fun e!4190933 () Bool)

(assert (=> b!6972315 (= e!4190933 (= s!9351 (Cons!66818 (c!1292460 (regTwo!34773 r!13765)) Nil!66818)))))

(declare-fun c!1292497 () Bool)

(declare-fun bm!632860 () Bool)

(declare-fun call!632865 () Bool)

(declare-fun Exists!4093 (Int) Bool)

(assert (=> bm!632860 (= call!632865 (Exists!4093 (ite c!1292497 lambda!397778 lambda!397779)))))

(declare-fun b!6972316 () Bool)

(declare-fun c!1292496 () Bool)

(assert (=> b!6972316 (= c!1292496 (is-Union!17130 (regTwo!34773 r!13765)))))

(declare-fun e!4190930 () Bool)

(assert (=> b!6972316 (= e!4190933 e!4190930)))

(assert (=> b!6972317 (= e!4190929 call!632865)))

(assert (=> b!6972318 (= e!4190934 call!632865)))

(declare-fun bm!632861 () Bool)

(assert (=> bm!632861 (= call!632866 (isEmpty!39022 s!9351))))

(declare-fun b!6972319 () Bool)

(assert (=> b!6972319 (= e!4190930 e!4190934)))

(assert (=> b!6972319 (= c!1292497 (is-Star!17130 (regTwo!34773 r!13765)))))

(declare-fun b!6972320 () Bool)

(declare-fun c!1292495 () Bool)

(assert (=> b!6972320 (= c!1292495 (is-ElementMatch!17130 (regTwo!34773 r!13765)))))

(declare-fun e!4190931 () Bool)

(assert (=> b!6972320 (= e!4190931 e!4190933)))

(declare-fun d!2171411 () Bool)

(declare-fun c!1292498 () Bool)

(assert (=> d!2171411 (= c!1292498 (is-EmptyExpr!17130 (regTwo!34773 r!13765)))))

(declare-fun e!4190928 () Bool)

(assert (=> d!2171411 (= (matchRSpec!4147 (regTwo!34773 r!13765) s!9351) e!4190928)))

(declare-fun b!6972321 () Bool)

(declare-fun e!4190932 () Bool)

(assert (=> b!6972321 (= e!4190932 (matchRSpec!4147 (regTwo!34773 (regTwo!34773 r!13765)) s!9351))))

(declare-fun b!6972322 () Bool)

(assert (=> b!6972322 (= e!4190928 e!4190931)))

(declare-fun res!2843845 () Bool)

(assert (=> b!6972322 (= res!2843845 (not (is-EmptyLang!17130 (regTwo!34773 r!13765))))))

(assert (=> b!6972322 (=> (not res!2843845) (not e!4190931))))

(declare-fun b!6972323 () Bool)

(assert (=> b!6972323 (= e!4190928 call!632866)))

(declare-fun b!6972324 () Bool)

(assert (=> b!6972324 (= e!4190930 e!4190932)))

(declare-fun res!2843843 () Bool)

(assert (=> b!6972324 (= res!2843843 (matchRSpec!4147 (regOne!34773 (regTwo!34773 r!13765)) s!9351))))

(assert (=> b!6972324 (=> res!2843843 e!4190932)))

(assert (= (and d!2171411 c!1292498) b!6972323))

(assert (= (and d!2171411 (not c!1292498)) b!6972322))

(assert (= (and b!6972322 res!2843845) b!6972320))

(assert (= (and b!6972320 c!1292495) b!6972315))

(assert (= (and b!6972320 (not c!1292495)) b!6972316))

(assert (= (and b!6972316 c!1292496) b!6972324))

(assert (= (and b!6972316 (not c!1292496)) b!6972319))

(assert (= (and b!6972324 (not res!2843843)) b!6972321))

(assert (= (and b!6972319 c!1292497) b!6972314))

(assert (= (and b!6972319 (not c!1292497)) b!6972318))

(assert (= (and b!6972314 (not res!2843844)) b!6972317))

(assert (= (or b!6972317 b!6972318) bm!632860))

(assert (= (or b!6972323 b!6972314) bm!632861))

(declare-fun m!7660324 () Bool)

(assert (=> bm!632860 m!7660324))

(assert (=> bm!632861 m!7660292))

(declare-fun m!7660326 () Bool)

(assert (=> b!6972321 m!7660326))

(declare-fun m!7660328 () Bool)

(assert (=> b!6972324 m!7660328))

(assert (=> b!6972143 d!2171411))

(declare-fun d!2171419 () Bool)

(assert (=> d!2171419 (= (matchR!9232 (regTwo!34773 r!13765) s!9351) (matchRSpec!4147 (regTwo!34773 r!13765) s!9351))))

(declare-fun lt!2479752 () Unit!160912)

(declare-fun choose!51912 (Regex!17130 List!66942) Unit!160912)

(assert (=> d!2171419 (= lt!2479752 (choose!51912 (regTwo!34773 r!13765) s!9351))))

(assert (=> d!2171419 (validRegex!8812 (regTwo!34773 r!13765))))

(assert (=> d!2171419 (= (mainMatchTheorem!4141 (regTwo!34773 r!13765) s!9351) lt!2479752)))

(declare-fun bs!1859330 () Bool)

(assert (= bs!1859330 d!2171419))

(assert (=> bs!1859330 m!7660236))

(assert (=> bs!1859330 m!7660226))

(declare-fun m!7660334 () Bool)

(assert (=> bs!1859330 m!7660334))

(assert (=> bs!1859330 m!7660302))

(assert (=> b!6972143 d!2171419))

(declare-fun b!6972335 () Bool)

(declare-fun e!4190941 () Bool)

(assert (=> b!6972335 (= e!4190941 (matchR!9232 (derivativeStep!5540 (regOne!34773 r!13765) (head!14032 s!9351)) (tail!13102 s!9351)))))

(declare-fun b!6972336 () Bool)

(declare-fun e!4190946 () Bool)

(declare-fun lt!2479753 () Bool)

(declare-fun call!632867 () Bool)

(assert (=> b!6972336 (= e!4190946 (= lt!2479753 call!632867))))

(declare-fun b!6972337 () Bool)

(declare-fun res!2843852 () Bool)

(declare-fun e!4190942 () Bool)

(assert (=> b!6972337 (=> (not res!2843852) (not e!4190942))))

(assert (=> b!6972337 (= res!2843852 (not call!632867))))

(declare-fun b!6972338 () Bool)

(declare-fun e!4190944 () Bool)

(assert (=> b!6972338 (= e!4190944 (not lt!2479753))))

(declare-fun b!6972340 () Bool)

(declare-fun res!2843859 () Bool)

(declare-fun e!4190945 () Bool)

(assert (=> b!6972340 (=> res!2843859 e!4190945)))

(assert (=> b!6972340 (= res!2843859 (not (isEmpty!39022 (tail!13102 s!9351))))))

(declare-fun b!6972341 () Bool)

(assert (=> b!6972341 (= e!4190942 (= (head!14032 s!9351) (c!1292460 (regOne!34773 r!13765))))))

(declare-fun b!6972342 () Bool)

(assert (=> b!6972342 (= e!4190941 (nullable!6915 (regOne!34773 r!13765)))))

(declare-fun b!6972343 () Bool)

(declare-fun res!2843857 () Bool)

(declare-fun e!4190947 () Bool)

(assert (=> b!6972343 (=> res!2843857 e!4190947)))

(assert (=> b!6972343 (= res!2843857 (not (is-ElementMatch!17130 (regOne!34773 r!13765))))))

(assert (=> b!6972343 (= e!4190944 e!4190947)))

(declare-fun bm!632862 () Bool)

(assert (=> bm!632862 (= call!632867 (isEmpty!39022 s!9351))))

(declare-fun d!2171423 () Bool)

(assert (=> d!2171423 e!4190946))

(declare-fun c!1292499 () Bool)

(assert (=> d!2171423 (= c!1292499 (is-EmptyExpr!17130 (regOne!34773 r!13765)))))

(assert (=> d!2171423 (= lt!2479753 e!4190941)))

(declare-fun c!1292501 () Bool)

(assert (=> d!2171423 (= c!1292501 (isEmpty!39022 s!9351))))

(assert (=> d!2171423 (validRegex!8812 (regOne!34773 r!13765))))

(assert (=> d!2171423 (= (matchR!9232 (regOne!34773 r!13765) s!9351) lt!2479753)))

(declare-fun b!6972339 () Bool)

(declare-fun e!4190943 () Bool)

(assert (=> b!6972339 (= e!4190943 e!4190945)))

(declare-fun res!2843856 () Bool)

(assert (=> b!6972339 (=> res!2843856 e!4190945)))

(assert (=> b!6972339 (= res!2843856 call!632867)))

(declare-fun b!6972344 () Bool)

(declare-fun res!2843853 () Bool)

(assert (=> b!6972344 (=> res!2843853 e!4190947)))

(assert (=> b!6972344 (= res!2843853 e!4190942)))

(declare-fun res!2843855 () Bool)

(assert (=> b!6972344 (=> (not res!2843855) (not e!4190942))))

(assert (=> b!6972344 (= res!2843855 lt!2479753)))

(declare-fun b!6972345 () Bool)

(assert (=> b!6972345 (= e!4190947 e!4190943)))

(declare-fun res!2843854 () Bool)

(assert (=> b!6972345 (=> (not res!2843854) (not e!4190943))))

(assert (=> b!6972345 (= res!2843854 (not lt!2479753))))

(declare-fun b!6972346 () Bool)

(assert (=> b!6972346 (= e!4190945 (not (= (head!14032 s!9351) (c!1292460 (regOne!34773 r!13765)))))))

(declare-fun b!6972347 () Bool)

(declare-fun res!2843858 () Bool)

(assert (=> b!6972347 (=> (not res!2843858) (not e!4190942))))

(assert (=> b!6972347 (= res!2843858 (isEmpty!39022 (tail!13102 s!9351)))))

(declare-fun b!6972348 () Bool)

(assert (=> b!6972348 (= e!4190946 e!4190944)))

(declare-fun c!1292500 () Bool)

(assert (=> b!6972348 (= c!1292500 (is-EmptyLang!17130 (regOne!34773 r!13765)))))

(assert (= (and d!2171423 c!1292501) b!6972342))

(assert (= (and d!2171423 (not c!1292501)) b!6972335))

(assert (= (and d!2171423 c!1292499) b!6972336))

(assert (= (and d!2171423 (not c!1292499)) b!6972348))

(assert (= (and b!6972348 c!1292500) b!6972338))

(assert (= (and b!6972348 (not c!1292500)) b!6972343))

(assert (= (and b!6972343 (not res!2843857)) b!6972344))

(assert (= (and b!6972344 res!2843855) b!6972337))

(assert (= (and b!6972337 res!2843852) b!6972347))

(assert (= (and b!6972347 res!2843858) b!6972341))

(assert (= (and b!6972344 (not res!2843853)) b!6972345))

(assert (= (and b!6972345 res!2843854) b!6972339))

(assert (= (and b!6972339 (not res!2843856)) b!6972340))

(assert (= (and b!6972340 (not res!2843859)) b!6972346))

(assert (= (or b!6972336 b!6972337 b!6972339) bm!632862))

(declare-fun m!7660336 () Bool)

(assert (=> b!6972342 m!7660336))

(assert (=> b!6972341 m!7660290))

(assert (=> bm!632862 m!7660292))

(assert (=> b!6972347 m!7660294))

(assert (=> b!6972347 m!7660294))

(assert (=> b!6972347 m!7660296))

(assert (=> b!6972340 m!7660294))

(assert (=> b!6972340 m!7660294))

(assert (=> b!6972340 m!7660296))

(assert (=> b!6972335 m!7660290))

(assert (=> b!6972335 m!7660290))

(declare-fun m!7660338 () Bool)

(assert (=> b!6972335 m!7660338))

(assert (=> b!6972335 m!7660294))

(assert (=> b!6972335 m!7660338))

(assert (=> b!6972335 m!7660294))

(declare-fun m!7660340 () Bool)

(assert (=> b!6972335 m!7660340))

(assert (=> d!2171423 m!7660292))

(declare-fun m!7660342 () Bool)

(assert (=> d!2171423 m!7660342))

(assert (=> b!6972346 m!7660290))

(assert (=> b!6972143 d!2171423))

(declare-fun d!2171425 () Bool)

(assert (=> d!2171425 (= (matchR!9232 (regOne!34773 r!13765) s!9351) (matchRSpec!4147 (regOne!34773 r!13765) s!9351))))

(declare-fun lt!2479754 () Unit!160912)

(assert (=> d!2171425 (= lt!2479754 (choose!51912 (regOne!34773 r!13765) s!9351))))

(assert (=> d!2171425 (validRegex!8812 (regOne!34773 r!13765))))

(assert (=> d!2171425 (= (mainMatchTheorem!4141 (regOne!34773 r!13765) s!9351) lt!2479754)))

(declare-fun bs!1859331 () Bool)

(assert (= bs!1859331 d!2171425))

(assert (=> bs!1859331 m!7660242))

(assert (=> bs!1859331 m!7660212))

(declare-fun m!7660344 () Bool)

(assert (=> bs!1859331 m!7660344))

(assert (=> bs!1859331 m!7660342))

(assert (=> b!6972143 d!2171425))

(declare-fun bs!1859332 () Bool)

(declare-fun b!6972352 () Bool)

(assert (= bs!1859332 (and b!6972352 b!6972317)))

(declare-fun lambda!397780 () Int)

(assert (=> bs!1859332 (= (and (= (reg!17459 (regOne!34773 r!13765)) (reg!17459 (regTwo!34773 r!13765))) (= (regOne!34773 r!13765) (regTwo!34773 r!13765))) (= lambda!397780 lambda!397778))))

(declare-fun bs!1859333 () Bool)

(assert (= bs!1859333 (and b!6972352 b!6972318)))

(assert (=> bs!1859333 (not (= lambda!397780 lambda!397779))))

(assert (=> b!6972352 true))

(assert (=> b!6972352 true))

(declare-fun bs!1859334 () Bool)

(declare-fun b!6972353 () Bool)

(assert (= bs!1859334 (and b!6972353 b!6972317)))

(declare-fun lambda!397781 () Int)

(assert (=> bs!1859334 (not (= lambda!397781 lambda!397778))))

(declare-fun bs!1859335 () Bool)

(assert (= bs!1859335 (and b!6972353 b!6972318)))

(assert (=> bs!1859335 (= (and (= (regOne!34772 (regOne!34773 r!13765)) (regOne!34772 (regTwo!34773 r!13765))) (= (regTwo!34772 (regOne!34773 r!13765)) (regTwo!34772 (regTwo!34773 r!13765)))) (= lambda!397781 lambda!397779))))

(declare-fun bs!1859336 () Bool)

(assert (= bs!1859336 (and b!6972353 b!6972352)))

(assert (=> bs!1859336 (not (= lambda!397781 lambda!397780))))

(assert (=> b!6972353 true))

(assert (=> b!6972353 true))

(declare-fun b!6972349 () Bool)

(declare-fun res!2843861 () Bool)

(declare-fun e!4190949 () Bool)

(assert (=> b!6972349 (=> res!2843861 e!4190949)))

(declare-fun call!632869 () Bool)

(assert (=> b!6972349 (= res!2843861 call!632869)))

(declare-fun e!4190954 () Bool)

(assert (=> b!6972349 (= e!4190954 e!4190949)))

(declare-fun b!6972350 () Bool)

(declare-fun e!4190953 () Bool)

(assert (=> b!6972350 (= e!4190953 (= s!9351 (Cons!66818 (c!1292460 (regOne!34773 r!13765)) Nil!66818)))))

(declare-fun call!632868 () Bool)

(declare-fun c!1292504 () Bool)

(declare-fun bm!632863 () Bool)

(assert (=> bm!632863 (= call!632868 (Exists!4093 (ite c!1292504 lambda!397780 lambda!397781)))))

(declare-fun b!6972351 () Bool)

(declare-fun c!1292503 () Bool)

(assert (=> b!6972351 (= c!1292503 (is-Union!17130 (regOne!34773 r!13765)))))

(declare-fun e!4190950 () Bool)

(assert (=> b!6972351 (= e!4190953 e!4190950)))

(assert (=> b!6972352 (= e!4190949 call!632868)))

(assert (=> b!6972353 (= e!4190954 call!632868)))

(declare-fun bm!632864 () Bool)

(assert (=> bm!632864 (= call!632869 (isEmpty!39022 s!9351))))

(declare-fun b!6972354 () Bool)

(assert (=> b!6972354 (= e!4190950 e!4190954)))

(assert (=> b!6972354 (= c!1292504 (is-Star!17130 (regOne!34773 r!13765)))))

(declare-fun b!6972355 () Bool)

(declare-fun c!1292502 () Bool)

(assert (=> b!6972355 (= c!1292502 (is-ElementMatch!17130 (regOne!34773 r!13765)))))

(declare-fun e!4190951 () Bool)

(assert (=> b!6972355 (= e!4190951 e!4190953)))

(declare-fun d!2171427 () Bool)

(declare-fun c!1292505 () Bool)

(assert (=> d!2171427 (= c!1292505 (is-EmptyExpr!17130 (regOne!34773 r!13765)))))

(declare-fun e!4190948 () Bool)

(assert (=> d!2171427 (= (matchRSpec!4147 (regOne!34773 r!13765) s!9351) e!4190948)))

(declare-fun b!6972356 () Bool)

(declare-fun e!4190952 () Bool)

(assert (=> b!6972356 (= e!4190952 (matchRSpec!4147 (regTwo!34773 (regOne!34773 r!13765)) s!9351))))

(declare-fun b!6972357 () Bool)

(assert (=> b!6972357 (= e!4190948 e!4190951)))

(declare-fun res!2843862 () Bool)

(assert (=> b!6972357 (= res!2843862 (not (is-EmptyLang!17130 (regOne!34773 r!13765))))))

(assert (=> b!6972357 (=> (not res!2843862) (not e!4190951))))

(declare-fun b!6972358 () Bool)

(assert (=> b!6972358 (= e!4190948 call!632869)))

(declare-fun b!6972359 () Bool)

(assert (=> b!6972359 (= e!4190950 e!4190952)))

(declare-fun res!2843860 () Bool)

(assert (=> b!6972359 (= res!2843860 (matchRSpec!4147 (regOne!34773 (regOne!34773 r!13765)) s!9351))))

(assert (=> b!6972359 (=> res!2843860 e!4190952)))

(assert (= (and d!2171427 c!1292505) b!6972358))

(assert (= (and d!2171427 (not c!1292505)) b!6972357))

(assert (= (and b!6972357 res!2843862) b!6972355))

(assert (= (and b!6972355 c!1292502) b!6972350))

(assert (= (and b!6972355 (not c!1292502)) b!6972351))

(assert (= (and b!6972351 c!1292503) b!6972359))

(assert (= (and b!6972351 (not c!1292503)) b!6972354))

(assert (= (and b!6972359 (not res!2843860)) b!6972356))

(assert (= (and b!6972354 c!1292504) b!6972349))

(assert (= (and b!6972354 (not c!1292504)) b!6972353))

(assert (= (and b!6972349 (not res!2843861)) b!6972352))

(assert (= (or b!6972352 b!6972353) bm!632863))

(assert (= (or b!6972358 b!6972349) bm!632864))

(declare-fun m!7660346 () Bool)

(assert (=> bm!632863 m!7660346))

(assert (=> bm!632864 m!7660292))

(declare-fun m!7660348 () Bool)

(assert (=> b!6972356 m!7660348))

(declare-fun m!7660350 () Bool)

(assert (=> b!6972359 m!7660350))

(assert (=> b!6972138 d!2171427))

(declare-fun bs!1859337 () Bool)

(declare-fun b!6972363 () Bool)

(assert (= bs!1859337 (and b!6972363 b!6972317)))

(declare-fun lambda!397782 () Int)

(assert (=> bs!1859337 (= (and (= (reg!17459 r!13765) (reg!17459 (regTwo!34773 r!13765))) (= r!13765 (regTwo!34773 r!13765))) (= lambda!397782 lambda!397778))))

(declare-fun bs!1859338 () Bool)

(assert (= bs!1859338 (and b!6972363 b!6972318)))

(assert (=> bs!1859338 (not (= lambda!397782 lambda!397779))))

(declare-fun bs!1859339 () Bool)

(assert (= bs!1859339 (and b!6972363 b!6972352)))

(assert (=> bs!1859339 (= (and (= (reg!17459 r!13765) (reg!17459 (regOne!34773 r!13765))) (= r!13765 (regOne!34773 r!13765))) (= lambda!397782 lambda!397780))))

(declare-fun bs!1859340 () Bool)

(assert (= bs!1859340 (and b!6972363 b!6972353)))

(assert (=> bs!1859340 (not (= lambda!397782 lambda!397781))))

(assert (=> b!6972363 true))

(assert (=> b!6972363 true))

(declare-fun bs!1859341 () Bool)

(declare-fun b!6972364 () Bool)

(assert (= bs!1859341 (and b!6972364 b!6972363)))

(declare-fun lambda!397783 () Int)

(assert (=> bs!1859341 (not (= lambda!397783 lambda!397782))))

(declare-fun bs!1859342 () Bool)

(assert (= bs!1859342 (and b!6972364 b!6972317)))

(assert (=> bs!1859342 (not (= lambda!397783 lambda!397778))))

(declare-fun bs!1859343 () Bool)

(assert (= bs!1859343 (and b!6972364 b!6972318)))

(assert (=> bs!1859343 (= (and (= (regOne!34772 r!13765) (regOne!34772 (regTwo!34773 r!13765))) (= (regTwo!34772 r!13765) (regTwo!34772 (regTwo!34773 r!13765)))) (= lambda!397783 lambda!397779))))

(declare-fun bs!1859344 () Bool)

(assert (= bs!1859344 (and b!6972364 b!6972352)))

(assert (=> bs!1859344 (not (= lambda!397783 lambda!397780))))

(declare-fun bs!1859345 () Bool)

(assert (= bs!1859345 (and b!6972364 b!6972353)))

(assert (=> bs!1859345 (= (and (= (regOne!34772 r!13765) (regOne!34772 (regOne!34773 r!13765))) (= (regTwo!34772 r!13765) (regTwo!34772 (regOne!34773 r!13765)))) (= lambda!397783 lambda!397781))))

(assert (=> b!6972364 true))

(assert (=> b!6972364 true))

(declare-fun b!6972360 () Bool)

(declare-fun res!2843864 () Bool)

(declare-fun e!4190956 () Bool)

(assert (=> b!6972360 (=> res!2843864 e!4190956)))

(declare-fun call!632871 () Bool)

(assert (=> b!6972360 (= res!2843864 call!632871)))

(declare-fun e!4190961 () Bool)

(assert (=> b!6972360 (= e!4190961 e!4190956)))

(declare-fun b!6972361 () Bool)

(declare-fun e!4190960 () Bool)

(assert (=> b!6972361 (= e!4190960 (= s!9351 (Cons!66818 (c!1292460 r!13765) Nil!66818)))))

(declare-fun call!632870 () Bool)

(declare-fun c!1292508 () Bool)

(declare-fun bm!632865 () Bool)

(assert (=> bm!632865 (= call!632870 (Exists!4093 (ite c!1292508 lambda!397782 lambda!397783)))))

(declare-fun b!6972362 () Bool)

(declare-fun c!1292507 () Bool)

(assert (=> b!6972362 (= c!1292507 (is-Union!17130 r!13765))))

(declare-fun e!4190957 () Bool)

(assert (=> b!6972362 (= e!4190960 e!4190957)))

(assert (=> b!6972363 (= e!4190956 call!632870)))

(assert (=> b!6972364 (= e!4190961 call!632870)))

(declare-fun bm!632866 () Bool)

(assert (=> bm!632866 (= call!632871 (isEmpty!39022 s!9351))))

(declare-fun b!6972365 () Bool)

(assert (=> b!6972365 (= e!4190957 e!4190961)))

(assert (=> b!6972365 (= c!1292508 (is-Star!17130 r!13765))))

(declare-fun b!6972366 () Bool)

(declare-fun c!1292506 () Bool)

(assert (=> b!6972366 (= c!1292506 (is-ElementMatch!17130 r!13765))))

(declare-fun e!4190958 () Bool)

(assert (=> b!6972366 (= e!4190958 e!4190960)))

(declare-fun d!2171429 () Bool)

(declare-fun c!1292509 () Bool)

(assert (=> d!2171429 (= c!1292509 (is-EmptyExpr!17130 r!13765))))

(declare-fun e!4190955 () Bool)

(assert (=> d!2171429 (= (matchRSpec!4147 r!13765 s!9351) e!4190955)))

(declare-fun b!6972367 () Bool)

(declare-fun e!4190959 () Bool)

(assert (=> b!6972367 (= e!4190959 (matchRSpec!4147 (regTwo!34773 r!13765) s!9351))))

(declare-fun b!6972368 () Bool)

(assert (=> b!6972368 (= e!4190955 e!4190958)))

(declare-fun res!2843865 () Bool)

(assert (=> b!6972368 (= res!2843865 (not (is-EmptyLang!17130 r!13765)))))

(assert (=> b!6972368 (=> (not res!2843865) (not e!4190958))))

(declare-fun b!6972369 () Bool)

(assert (=> b!6972369 (= e!4190955 call!632871)))

(declare-fun b!6972370 () Bool)

(assert (=> b!6972370 (= e!4190957 e!4190959)))

(declare-fun res!2843863 () Bool)

(assert (=> b!6972370 (= res!2843863 (matchRSpec!4147 (regOne!34773 r!13765) s!9351))))

(assert (=> b!6972370 (=> res!2843863 e!4190959)))

(assert (= (and d!2171429 c!1292509) b!6972369))

(assert (= (and d!2171429 (not c!1292509)) b!6972368))

(assert (= (and b!6972368 res!2843865) b!6972366))

(assert (= (and b!6972366 c!1292506) b!6972361))

(assert (= (and b!6972366 (not c!1292506)) b!6972362))

(assert (= (and b!6972362 c!1292507) b!6972370))

(assert (= (and b!6972362 (not c!1292507)) b!6972365))

(assert (= (and b!6972370 (not res!2843863)) b!6972367))

(assert (= (and b!6972365 c!1292508) b!6972360))

(assert (= (and b!6972365 (not c!1292508)) b!6972364))

(assert (= (and b!6972360 (not res!2843864)) b!6972363))

(assert (= (or b!6972363 b!6972364) bm!632865))

(assert (= (or b!6972369 b!6972360) bm!632866))

(declare-fun m!7660352 () Bool)

(assert (=> bm!632865 m!7660352))

(assert (=> bm!632866 m!7660292))

(assert (=> b!6972367 m!7660226))

(assert (=> b!6972370 m!7660212))

(assert (=> b!6972149 d!2171429))

(declare-fun b!6972371 () Bool)

(declare-fun e!4190962 () Bool)

(assert (=> b!6972371 (= e!4190962 (matchR!9232 (derivativeStep!5540 r!13765 (head!14032 s!9351)) (tail!13102 s!9351)))))

(declare-fun b!6972372 () Bool)

(declare-fun e!4190967 () Bool)

(declare-fun lt!2479755 () Bool)

(declare-fun call!632872 () Bool)

(assert (=> b!6972372 (= e!4190967 (= lt!2479755 call!632872))))

(declare-fun b!6972373 () Bool)

(declare-fun res!2843866 () Bool)

(declare-fun e!4190963 () Bool)

(assert (=> b!6972373 (=> (not res!2843866) (not e!4190963))))

(assert (=> b!6972373 (= res!2843866 (not call!632872))))

(declare-fun b!6972374 () Bool)

(declare-fun e!4190965 () Bool)

(assert (=> b!6972374 (= e!4190965 (not lt!2479755))))

(declare-fun b!6972376 () Bool)

(declare-fun res!2843873 () Bool)

(declare-fun e!4190966 () Bool)

(assert (=> b!6972376 (=> res!2843873 e!4190966)))

(assert (=> b!6972376 (= res!2843873 (not (isEmpty!39022 (tail!13102 s!9351))))))

(declare-fun b!6972377 () Bool)

(assert (=> b!6972377 (= e!4190963 (= (head!14032 s!9351) (c!1292460 r!13765)))))

(declare-fun b!6972378 () Bool)

(assert (=> b!6972378 (= e!4190962 (nullable!6915 r!13765))))

(declare-fun b!6972379 () Bool)

(declare-fun res!2843871 () Bool)

(declare-fun e!4190968 () Bool)

(assert (=> b!6972379 (=> res!2843871 e!4190968)))

(assert (=> b!6972379 (= res!2843871 (not (is-ElementMatch!17130 r!13765)))))

(assert (=> b!6972379 (= e!4190965 e!4190968)))

(declare-fun bm!632867 () Bool)

(assert (=> bm!632867 (= call!632872 (isEmpty!39022 s!9351))))

(declare-fun d!2171431 () Bool)

(assert (=> d!2171431 e!4190967))

(declare-fun c!1292510 () Bool)

(assert (=> d!2171431 (= c!1292510 (is-EmptyExpr!17130 r!13765))))

(assert (=> d!2171431 (= lt!2479755 e!4190962)))

(declare-fun c!1292512 () Bool)

(assert (=> d!2171431 (= c!1292512 (isEmpty!39022 s!9351))))

(assert (=> d!2171431 (validRegex!8812 r!13765)))

(assert (=> d!2171431 (= (matchR!9232 r!13765 s!9351) lt!2479755)))

(declare-fun b!6972375 () Bool)

(declare-fun e!4190964 () Bool)

(assert (=> b!6972375 (= e!4190964 e!4190966)))

(declare-fun res!2843870 () Bool)

(assert (=> b!6972375 (=> res!2843870 e!4190966)))

(assert (=> b!6972375 (= res!2843870 call!632872)))

(declare-fun b!6972380 () Bool)

(declare-fun res!2843867 () Bool)

(assert (=> b!6972380 (=> res!2843867 e!4190968)))

(assert (=> b!6972380 (= res!2843867 e!4190963)))

(declare-fun res!2843869 () Bool)

(assert (=> b!6972380 (=> (not res!2843869) (not e!4190963))))

(assert (=> b!6972380 (= res!2843869 lt!2479755)))

(declare-fun b!6972381 () Bool)

(assert (=> b!6972381 (= e!4190968 e!4190964)))

(declare-fun res!2843868 () Bool)

(assert (=> b!6972381 (=> (not res!2843868) (not e!4190964))))

(assert (=> b!6972381 (= res!2843868 (not lt!2479755))))

(declare-fun b!6972382 () Bool)

(assert (=> b!6972382 (= e!4190966 (not (= (head!14032 s!9351) (c!1292460 r!13765))))))

(declare-fun b!6972383 () Bool)

(declare-fun res!2843872 () Bool)

(assert (=> b!6972383 (=> (not res!2843872) (not e!4190963))))

(assert (=> b!6972383 (= res!2843872 (isEmpty!39022 (tail!13102 s!9351)))))

(declare-fun b!6972384 () Bool)

(assert (=> b!6972384 (= e!4190967 e!4190965)))

(declare-fun c!1292511 () Bool)

(assert (=> b!6972384 (= c!1292511 (is-EmptyLang!17130 r!13765))))

(assert (= (and d!2171431 c!1292512) b!6972378))

(assert (= (and d!2171431 (not c!1292512)) b!6972371))

(assert (= (and d!2171431 c!1292510) b!6972372))

(assert (= (and d!2171431 (not c!1292510)) b!6972384))

(assert (= (and b!6972384 c!1292511) b!6972374))

(assert (= (and b!6972384 (not c!1292511)) b!6972379))

(assert (= (and b!6972379 (not res!2843871)) b!6972380))

(assert (= (and b!6972380 res!2843869) b!6972373))

(assert (= (and b!6972373 res!2843866) b!6972383))

(assert (= (and b!6972383 res!2843872) b!6972377))

(assert (= (and b!6972380 (not res!2843867)) b!6972381))

(assert (= (and b!6972381 res!2843868) b!6972375))

(assert (= (and b!6972375 (not res!2843870)) b!6972376))

(assert (= (and b!6972376 (not res!2843873)) b!6972382))

(assert (= (or b!6972372 b!6972373 b!6972375) bm!632867))

(declare-fun m!7660354 () Bool)

(assert (=> b!6972378 m!7660354))

(assert (=> b!6972377 m!7660290))

(assert (=> bm!632867 m!7660292))

(assert (=> b!6972383 m!7660294))

(assert (=> b!6972383 m!7660294))

(assert (=> b!6972383 m!7660296))

(assert (=> b!6972376 m!7660294))

(assert (=> b!6972376 m!7660294))

(assert (=> b!6972376 m!7660296))

(assert (=> b!6972371 m!7660290))

(assert (=> b!6972371 m!7660290))

(declare-fun m!7660356 () Bool)

(assert (=> b!6972371 m!7660356))

(assert (=> b!6972371 m!7660294))

(assert (=> b!6972371 m!7660356))

(assert (=> b!6972371 m!7660294))

(declare-fun m!7660358 () Bool)

(assert (=> b!6972371 m!7660358))

(assert (=> d!2171431 m!7660292))

(declare-fun m!7660360 () Bool)

(assert (=> d!2171431 m!7660360))

(assert (=> b!6972382 m!7660290))

(assert (=> b!6972149 d!2171431))

(declare-fun d!2171433 () Bool)

(assert (=> d!2171433 (= (matchR!9232 r!13765 s!9351) (matchRSpec!4147 r!13765 s!9351))))

(declare-fun lt!2479756 () Unit!160912)

(assert (=> d!2171433 (= lt!2479756 (choose!51912 r!13765 s!9351))))

(assert (=> d!2171433 (validRegex!8812 r!13765)))

(assert (=> d!2171433 (= (mainMatchTheorem!4141 r!13765 s!9351) lt!2479756)))

(declare-fun bs!1859346 () Bool)

(assert (= bs!1859346 d!2171433))

(assert (=> bs!1859346 m!7660232))

(assert (=> bs!1859346 m!7660230))

(declare-fun m!7660362 () Bool)

(assert (=> bs!1859346 m!7660362))

(assert (=> bs!1859346 m!7660360))

(assert (=> b!6972149 d!2171433))

(declare-fun d!2171435 () Bool)

(declare-fun res!2843874 () Bool)

(declare-fun e!4190969 () Bool)

(assert (=> d!2171435 (=> res!2843874 e!4190969)))

(assert (=> d!2171435 (= res!2843874 (is-Nil!66817 l!9142))))

(assert (=> d!2171435 (= (forall!16001 l!9142 lambda!397765) e!4190969)))

(declare-fun b!6972385 () Bool)

(declare-fun e!4190970 () Bool)

(assert (=> b!6972385 (= e!4190969 e!4190970)))

(declare-fun res!2843875 () Bool)

(assert (=> b!6972385 (=> (not res!2843875) (not e!4190970))))

(assert (=> b!6972385 (= res!2843875 (dynLambda!26644 lambda!397765 (h!73265 l!9142)))))

(declare-fun b!6972386 () Bool)

(assert (=> b!6972386 (= e!4190970 (forall!16001 (t!380684 l!9142) lambda!397765))))

(assert (= (and d!2171435 (not res!2843874)) b!6972385))

(assert (= (and b!6972385 res!2843875) b!6972386))

(declare-fun b_lambda!260833 () Bool)

(assert (=> (not b_lambda!260833) (not b!6972385)))

(declare-fun m!7660364 () Bool)

(assert (=> b!6972385 m!7660364))

(declare-fun m!7660366 () Bool)

(assert (=> b!6972386 m!7660366))

(assert (=> start!668540 d!2171435))

(declare-fun d!2171437 () Bool)

(assert (=> d!2171437 (= (isEmpty!39020 lt!2479719) (is-Nil!66817 lt!2479719))))

(assert (=> b!6972150 d!2171437))

(declare-fun d!2171439 () Bool)

(assert (=> d!2171439 (= (tail!13100 l!9142) (t!380684 l!9142))))

(assert (=> b!6972150 d!2171439))

(assert (=> b!6972145 d!2171411))

(declare-fun bs!1859347 () Bool)

(declare-fun d!2171441 () Bool)

(assert (= bs!1859347 (and d!2171441 start!668540)))

(declare-fun lambda!397786 () Int)

(assert (=> bs!1859347 (= lambda!397786 lambda!397765)))

(declare-fun b!6972435 () Bool)

(declare-fun e!4190997 () Bool)

(declare-fun lt!2479761 () Regex!17130)

(declare-fun head!14033 (List!66941) Regex!17130)

(assert (=> b!6972435 (= e!4190997 (= lt!2479761 (head!14033 l!9142)))))

(declare-fun b!6972436 () Bool)

(declare-fun isUnion!1496 (Regex!17130) Bool)

(assert (=> b!6972436 (= e!4190997 (isUnion!1496 lt!2479761))))

(declare-fun b!6972437 () Bool)

(declare-fun e!4191000 () Regex!17130)

(declare-fun e!4190998 () Regex!17130)

(assert (=> b!6972437 (= e!4191000 e!4190998)))

(declare-fun c!1292528 () Bool)

(assert (=> b!6972437 (= c!1292528 (is-Cons!66817 l!9142))))

(declare-fun b!6972438 () Bool)

(declare-fun e!4190999 () Bool)

(assert (=> b!6972438 (= e!4190999 e!4190997)))

(declare-fun c!1292530 () Bool)

(assert (=> b!6972438 (= c!1292530 (isEmpty!39020 (tail!13100 l!9142)))))

(declare-fun b!6972439 () Bool)

(assert (=> b!6972439 (= e!4190998 EmptyLang!17130)))

(declare-fun b!6972440 () Bool)

(declare-fun e!4191001 () Bool)

(assert (=> b!6972440 (= e!4191001 e!4190999)))

(declare-fun c!1292527 () Bool)

(assert (=> b!6972440 (= c!1292527 (isEmpty!39020 l!9142))))

(declare-fun b!6972441 () Bool)

(assert (=> b!6972441 (= e!4191000 (h!73265 l!9142))))

(assert (=> d!2171441 e!4191001))

(declare-fun res!2843897 () Bool)

(assert (=> d!2171441 (=> (not res!2843897) (not e!4191001))))

(assert (=> d!2171441 (= res!2843897 (validRegex!8812 lt!2479761))))

(assert (=> d!2171441 (= lt!2479761 e!4191000)))

(declare-fun c!1292529 () Bool)

(declare-fun e!4191002 () Bool)

(assert (=> d!2171441 (= c!1292529 e!4191002)))

(declare-fun res!2843896 () Bool)

(assert (=> d!2171441 (=> (not res!2843896) (not e!4191002))))

(assert (=> d!2171441 (= res!2843896 (is-Cons!66817 l!9142))))

(assert (=> d!2171441 (forall!16001 l!9142 lambda!397786)))

(assert (=> d!2171441 (= (generalisedUnion!2605 l!9142) lt!2479761)))

(declare-fun b!6972442 () Bool)

(assert (=> b!6972442 (= e!4190998 (Union!17130 (h!73265 l!9142) (generalisedUnion!2605 (t!380684 l!9142))))))

(declare-fun b!6972443 () Bool)

(assert (=> b!6972443 (= e!4191002 (isEmpty!39020 (t!380684 l!9142)))))

(declare-fun b!6972444 () Bool)

(declare-fun isEmptyLang!2068 (Regex!17130) Bool)

(assert (=> b!6972444 (= e!4190999 (isEmptyLang!2068 lt!2479761))))

(assert (= (and d!2171441 res!2843896) b!6972443))

(assert (= (and d!2171441 c!1292529) b!6972441))

(assert (= (and d!2171441 (not c!1292529)) b!6972437))

(assert (= (and b!6972437 c!1292528) b!6972442))

(assert (= (and b!6972437 (not c!1292528)) b!6972439))

(assert (= (and d!2171441 res!2843897) b!6972440))

(assert (= (and b!6972440 c!1292527) b!6972444))

(assert (= (and b!6972440 (not c!1292527)) b!6972438))

(assert (= (and b!6972438 c!1292530) b!6972435))

(assert (= (and b!6972438 (not c!1292530)) b!6972436))

(declare-fun m!7660368 () Bool)

(assert (=> d!2171441 m!7660368))

(declare-fun m!7660370 () Bool)

(assert (=> d!2171441 m!7660370))

(declare-fun m!7660372 () Bool)

(assert (=> b!6972436 m!7660372))

(assert (=> b!6972438 m!7660216))

(assert (=> b!6972438 m!7660216))

(declare-fun m!7660374 () Bool)

(assert (=> b!6972438 m!7660374))

(declare-fun m!7660376 () Bool)

(assert (=> b!6972442 m!7660376))

(declare-fun m!7660378 () Bool)

(assert (=> b!6972443 m!7660378))

(declare-fun m!7660380 () Bool)

(assert (=> b!6972444 m!7660380))

(declare-fun m!7660382 () Bool)

(assert (=> b!6972435 m!7660382))

(assert (=> b!6972440 m!7660246))

(assert (=> b!6972141 d!2171441))

(declare-fun bs!1859348 () Bool)

(declare-fun d!2171443 () Bool)

(assert (= bs!1859348 (and d!2171443 start!668540)))

(declare-fun lambda!397787 () Int)

(assert (=> bs!1859348 (= lambda!397787 lambda!397765)))

(declare-fun bs!1859349 () Bool)

(assert (= bs!1859349 (and d!2171443 d!2171441)))

(assert (=> bs!1859349 (= lambda!397787 lambda!397786)))

(declare-fun b!6972445 () Bool)

(declare-fun e!4191003 () Bool)

(declare-fun lt!2479762 () Regex!17130)

(assert (=> b!6972445 (= e!4191003 (= lt!2479762 (head!14033 lt!2479719)))))

(declare-fun b!6972446 () Bool)

(assert (=> b!6972446 (= e!4191003 (isUnion!1496 lt!2479762))))

(declare-fun b!6972447 () Bool)

(declare-fun e!4191006 () Regex!17130)

(declare-fun e!4191004 () Regex!17130)

(assert (=> b!6972447 (= e!4191006 e!4191004)))

(declare-fun c!1292532 () Bool)

(assert (=> b!6972447 (= c!1292532 (is-Cons!66817 lt!2479719))))

(declare-fun b!6972448 () Bool)

(declare-fun e!4191005 () Bool)

(assert (=> b!6972448 (= e!4191005 e!4191003)))

(declare-fun c!1292534 () Bool)

(assert (=> b!6972448 (= c!1292534 (isEmpty!39020 (tail!13100 lt!2479719)))))

(declare-fun b!6972449 () Bool)

(assert (=> b!6972449 (= e!4191004 EmptyLang!17130)))

(declare-fun b!6972450 () Bool)

(declare-fun e!4191007 () Bool)

(assert (=> b!6972450 (= e!4191007 e!4191005)))

(declare-fun c!1292531 () Bool)

(assert (=> b!6972450 (= c!1292531 (isEmpty!39020 lt!2479719))))

(declare-fun b!6972451 () Bool)

(assert (=> b!6972451 (= e!4191006 (h!73265 lt!2479719))))

(assert (=> d!2171443 e!4191007))

(declare-fun res!2843899 () Bool)

(assert (=> d!2171443 (=> (not res!2843899) (not e!4191007))))

(assert (=> d!2171443 (= res!2843899 (validRegex!8812 lt!2479762))))

(assert (=> d!2171443 (= lt!2479762 e!4191006)))

(declare-fun c!1292533 () Bool)

(declare-fun e!4191008 () Bool)

(assert (=> d!2171443 (= c!1292533 e!4191008)))

(declare-fun res!2843898 () Bool)

(assert (=> d!2171443 (=> (not res!2843898) (not e!4191008))))

(assert (=> d!2171443 (= res!2843898 (is-Cons!66817 lt!2479719))))

(assert (=> d!2171443 (forall!16001 lt!2479719 lambda!397787)))

(assert (=> d!2171443 (= (generalisedUnion!2605 lt!2479719) lt!2479762)))

(declare-fun b!6972452 () Bool)

(assert (=> b!6972452 (= e!4191004 (Union!17130 (h!73265 lt!2479719) (generalisedUnion!2605 (t!380684 lt!2479719))))))

(declare-fun b!6972453 () Bool)

(assert (=> b!6972453 (= e!4191008 (isEmpty!39020 (t!380684 lt!2479719)))))

(declare-fun b!6972454 () Bool)

(assert (=> b!6972454 (= e!4191005 (isEmptyLang!2068 lt!2479762))))

(assert (= (and d!2171443 res!2843898) b!6972453))

(assert (= (and d!2171443 c!1292533) b!6972451))

(assert (= (and d!2171443 (not c!1292533)) b!6972447))

(assert (= (and b!6972447 c!1292532) b!6972452))

(assert (= (and b!6972447 (not c!1292532)) b!6972449))

(assert (= (and d!2171443 res!2843899) b!6972450))

(assert (= (and b!6972450 c!1292531) b!6972454))

(assert (= (and b!6972450 (not c!1292531)) b!6972448))

(assert (= (and b!6972448 c!1292534) b!6972445))

(assert (= (and b!6972448 (not c!1292534)) b!6972446))

(declare-fun m!7660384 () Bool)

(assert (=> d!2171443 m!7660384))

(declare-fun m!7660386 () Bool)

(assert (=> d!2171443 m!7660386))

(declare-fun m!7660388 () Bool)

(assert (=> b!6972446 m!7660388))

(declare-fun m!7660390 () Bool)

(assert (=> b!6972448 m!7660390))

(assert (=> b!6972448 m!7660390))

(declare-fun m!7660392 () Bool)

(assert (=> b!6972448 m!7660392))

(declare-fun m!7660394 () Bool)

(assert (=> b!6972452 m!7660394))

(declare-fun m!7660396 () Bool)

(assert (=> b!6972453 m!7660396))

(declare-fun m!7660398 () Bool)

(assert (=> b!6972454 m!7660398))

(declare-fun m!7660400 () Bool)

(assert (=> b!6972445 m!7660400))

(assert (=> b!6972450 m!7660214))

(assert (=> b!6972136 d!2171443))

(declare-fun b!6972468 () Bool)

(declare-fun e!4191011 () Bool)

(declare-fun tp!1924413 () Bool)

(declare-fun tp!1924411 () Bool)

(assert (=> b!6972468 (= e!4191011 (and tp!1924413 tp!1924411))))

(declare-fun b!6972465 () Bool)

(assert (=> b!6972465 (= e!4191011 tp_is_empty!43485)))

(declare-fun b!6972467 () Bool)

(declare-fun tp!1924412 () Bool)

(assert (=> b!6972467 (= e!4191011 tp!1924412)))

(assert (=> b!6972147 (= tp!1924372 e!4191011)))

(declare-fun b!6972466 () Bool)

(declare-fun tp!1924410 () Bool)

(declare-fun tp!1924414 () Bool)

(assert (=> b!6972466 (= e!4191011 (and tp!1924410 tp!1924414))))

(assert (= (and b!6972147 (is-ElementMatch!17130 (regOne!34773 r!13765))) b!6972465))

(assert (= (and b!6972147 (is-Concat!25975 (regOne!34773 r!13765))) b!6972466))

(assert (= (and b!6972147 (is-Star!17130 (regOne!34773 r!13765))) b!6972467))

(assert (= (and b!6972147 (is-Union!17130 (regOne!34773 r!13765))) b!6972468))

(declare-fun b!6972472 () Bool)

(declare-fun e!4191012 () Bool)

(declare-fun tp!1924418 () Bool)

(declare-fun tp!1924416 () Bool)

(assert (=> b!6972472 (= e!4191012 (and tp!1924418 tp!1924416))))

(declare-fun b!6972469 () Bool)

(assert (=> b!6972469 (= e!4191012 tp_is_empty!43485)))

(declare-fun b!6972471 () Bool)

(declare-fun tp!1924417 () Bool)

(assert (=> b!6972471 (= e!4191012 tp!1924417)))

(assert (=> b!6972147 (= tp!1924370 e!4191012)))

(declare-fun b!6972470 () Bool)

(declare-fun tp!1924415 () Bool)

(declare-fun tp!1924419 () Bool)

(assert (=> b!6972470 (= e!4191012 (and tp!1924415 tp!1924419))))

(assert (= (and b!6972147 (is-ElementMatch!17130 (regTwo!34773 r!13765))) b!6972469))

(assert (= (and b!6972147 (is-Concat!25975 (regTwo!34773 r!13765))) b!6972470))

(assert (= (and b!6972147 (is-Star!17130 (regTwo!34773 r!13765))) b!6972471))

(assert (= (and b!6972147 (is-Union!17130 (regTwo!34773 r!13765))) b!6972472))

(declare-fun b!6972476 () Bool)

(declare-fun e!4191013 () Bool)

(declare-fun tp!1924423 () Bool)

(declare-fun tp!1924421 () Bool)

(assert (=> b!6972476 (= e!4191013 (and tp!1924423 tp!1924421))))

(declare-fun b!6972473 () Bool)

(assert (=> b!6972473 (= e!4191013 tp_is_empty!43485)))

(declare-fun b!6972475 () Bool)

(declare-fun tp!1924422 () Bool)

(assert (=> b!6972475 (= e!4191013 tp!1924422)))

(assert (=> b!6972142 (= tp!1924368 e!4191013)))

(declare-fun b!6972474 () Bool)

(declare-fun tp!1924420 () Bool)

(declare-fun tp!1924424 () Bool)

(assert (=> b!6972474 (= e!4191013 (and tp!1924420 tp!1924424))))

(assert (= (and b!6972142 (is-ElementMatch!17130 (regOne!34772 r!13765))) b!6972473))

(assert (= (and b!6972142 (is-Concat!25975 (regOne!34772 r!13765))) b!6972474))

(assert (= (and b!6972142 (is-Star!17130 (regOne!34772 r!13765))) b!6972475))

(assert (= (and b!6972142 (is-Union!17130 (regOne!34772 r!13765))) b!6972476))

(declare-fun b!6972480 () Bool)

(declare-fun e!4191014 () Bool)

(declare-fun tp!1924428 () Bool)

(declare-fun tp!1924426 () Bool)

(assert (=> b!6972480 (= e!4191014 (and tp!1924428 tp!1924426))))

(declare-fun b!6972477 () Bool)

(assert (=> b!6972477 (= e!4191014 tp_is_empty!43485)))

(declare-fun b!6972479 () Bool)

(declare-fun tp!1924427 () Bool)

(assert (=> b!6972479 (= e!4191014 tp!1924427)))

(assert (=> b!6972142 (= tp!1924375 e!4191014)))

(declare-fun b!6972478 () Bool)

(declare-fun tp!1924425 () Bool)

(declare-fun tp!1924429 () Bool)

(assert (=> b!6972478 (= e!4191014 (and tp!1924425 tp!1924429))))

(assert (= (and b!6972142 (is-ElementMatch!17130 (regTwo!34772 r!13765))) b!6972477))

(assert (= (and b!6972142 (is-Concat!25975 (regTwo!34772 r!13765))) b!6972478))

(assert (= (and b!6972142 (is-Star!17130 (regTwo!34772 r!13765))) b!6972479))

(assert (= (and b!6972142 (is-Union!17130 (regTwo!34772 r!13765))) b!6972480))

(declare-fun b!6972484 () Bool)

(declare-fun e!4191015 () Bool)

(declare-fun tp!1924433 () Bool)

(declare-fun tp!1924431 () Bool)

(assert (=> b!6972484 (= e!4191015 (and tp!1924433 tp!1924431))))

(declare-fun b!6972481 () Bool)

(assert (=> b!6972481 (= e!4191015 tp_is_empty!43485)))

(declare-fun b!6972483 () Bool)

(declare-fun tp!1924432 () Bool)

(assert (=> b!6972483 (= e!4191015 tp!1924432)))

(assert (=> b!6972144 (= tp!1924373 e!4191015)))

(declare-fun b!6972482 () Bool)

(declare-fun tp!1924430 () Bool)

(declare-fun tp!1924434 () Bool)

(assert (=> b!6972482 (= e!4191015 (and tp!1924430 tp!1924434))))

(assert (= (and b!6972144 (is-ElementMatch!17130 (reg!17459 r!13765))) b!6972481))

(assert (= (and b!6972144 (is-Concat!25975 (reg!17459 r!13765))) b!6972482))

(assert (= (and b!6972144 (is-Star!17130 (reg!17459 r!13765))) b!6972483))

(assert (= (and b!6972144 (is-Union!17130 (reg!17459 r!13765))) b!6972484))

(declare-fun b!6972489 () Bool)

(declare-fun e!4191018 () Bool)

(declare-fun tp!1924437 () Bool)

(assert (=> b!6972489 (= e!4191018 (and tp_is_empty!43485 tp!1924437))))

(assert (=> b!6972139 (= tp!1924369 e!4191018)))

(assert (= (and b!6972139 (is-Cons!66818 (t!380685 s!9351))) b!6972489))

(declare-fun b!6972493 () Bool)

(declare-fun e!4191019 () Bool)

(declare-fun tp!1924441 () Bool)

(declare-fun tp!1924439 () Bool)

(assert (=> b!6972493 (= e!4191019 (and tp!1924441 tp!1924439))))

(declare-fun b!6972490 () Bool)

(assert (=> b!6972490 (= e!4191019 tp_is_empty!43485)))

(declare-fun b!6972492 () Bool)

(declare-fun tp!1924440 () Bool)

(assert (=> b!6972492 (= e!4191019 tp!1924440)))

(assert (=> b!6972140 (= tp!1924374 e!4191019)))

(declare-fun b!6972491 () Bool)

(declare-fun tp!1924438 () Bool)

(declare-fun tp!1924442 () Bool)

(assert (=> b!6972491 (= e!4191019 (and tp!1924438 tp!1924442))))

(assert (= (and b!6972140 (is-ElementMatch!17130 (h!73265 l!9142))) b!6972490))

(assert (= (and b!6972140 (is-Concat!25975 (h!73265 l!9142))) b!6972491))

(assert (= (and b!6972140 (is-Star!17130 (h!73265 l!9142))) b!6972492))

(assert (= (and b!6972140 (is-Union!17130 (h!73265 l!9142))) b!6972493))

(declare-fun b!6972498 () Bool)

(declare-fun e!4191022 () Bool)

(declare-fun tp!1924447 () Bool)

(declare-fun tp!1924448 () Bool)

(assert (=> b!6972498 (= e!4191022 (and tp!1924447 tp!1924448))))

(assert (=> b!6972140 (= tp!1924371 e!4191022)))

(assert (= (and b!6972140 (is-Cons!66817 (t!380684 l!9142))) b!6972498))

(declare-fun b_lambda!260835 () Bool)

(assert (= b_lambda!260833 (or start!668540 b_lambda!260835)))

(declare-fun bs!1859350 () Bool)

(declare-fun d!2171445 () Bool)

(assert (= bs!1859350 (and d!2171445 start!668540)))

(assert (=> bs!1859350 (= (dynLambda!26644 lambda!397765 (h!73265 l!9142)) (validRegex!8812 (h!73265 l!9142)))))

(declare-fun m!7660402 () Bool)

(assert (=> bs!1859350 m!7660402))

(assert (=> b!6972385 d!2171445))

(declare-fun b_lambda!260837 () Bool)

(assert (= b_lambda!260829 (or start!668540 b_lambda!260837)))

(declare-fun bs!1859351 () Bool)

(declare-fun d!2171447 () Bool)

(assert (= bs!1859351 (and d!2171447 start!668540)))

(assert (=> bs!1859351 (= (dynLambda!26644 lambda!397765 (h!73265 lt!2479719)) (validRegex!8812 (h!73265 lt!2479719)))))

(declare-fun m!7660404 () Bool)

(assert (=> bs!1859351 m!7660404))

(assert (=> b!6972252 d!2171447))

(push 1)

(assert (not b!6972445))

(assert (not d!2171433))

(assert (not bs!1859351))

(assert (not bm!632860))

(assert (not b!6972491))

(assert (not b!6972492))

(assert (not b!6972436))

(assert (not b!6972446))

(assert (not b!6972237))

(assert (not b!6972359))

(assert (not b!6972489))

(assert (not b!6972475))

(assert (not b!6972468))

(assert (not b!6972232))

(assert (not b!6972383))

(assert (not b!6972479))

(assert (not bm!632861))

(assert (not b!6972370))

(assert (not bm!632864))

(assert (not b!6972341))

(assert (not d!2171405))

(assert (not b!6972443))

(assert (not b!6972470))

(assert (not b!6972378))

(assert (not b!6972453))

(assert (not b!6972376))

(assert (not b!6972335))

(assert (not b!6972367))

(assert (not b!6972471))

(assert (not b!6972493))

(assert (not bm!632863))

(assert (not b!6972482))

(assert (not b!6972480))

(assert (not b!6972452))

(assert (not b!6972340))

(assert (not b!6972253))

(assert (not b!6972342))

(assert (not b!6972356))

(assert tp_is_empty!43485)

(assert (not b!6972498))

(assert (not b!6972484))

(assert (not d!2171431))

(assert (not b!6972386))

(assert (not b!6972238))

(assert (not b!6972454))

(assert (not d!2171443))

(assert (not b!6972244))

(assert (not bm!632865))

(assert (not b!6972476))

(assert (not b!6972440))

(assert (not b!6972478))

(assert (not b!6972435))

(assert (not d!2171441))

(assert (not b!6972201))

(assert (not b_lambda!260837))

(assert (not b!6972466))

(assert (not b!6972472))

(assert (not b!6972371))

(assert (not b!6972377))

(assert (not b!6972243))

(assert (not d!2171419))

(assert (not b!6972442))

(assert (not d!2171425))

(assert (not b!6972450))

(assert (not d!2171423))

(assert (not b!6972448))

(assert (not b!6972382))

(assert (not b!6972347))

(assert (not b!6972483))

(assert (not b!6972239))

(assert (not bm!632862))

(assert (not b!6972474))

(assert (not b!6972467))

(assert (not b!6972438))

(assert (not bm!632867))

(assert (not b!6972444))

(assert (not b!6972203))

(assert (not bm!632866))

(assert (not b!6972346))

(assert (not b!6972321))

(assert (not b!6972324))

(assert (not b_lambda!260835))

(assert (not bs!1859350))

(assert (not bm!632855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

