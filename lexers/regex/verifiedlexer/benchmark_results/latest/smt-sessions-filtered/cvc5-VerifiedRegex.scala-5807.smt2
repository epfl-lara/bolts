; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286502 () Bool)

(assert start!286502)

(declare-fun b!2955028 () Bool)

(assert (=> b!2955028 true))

(assert (=> b!2955028 true))

(assert (=> b!2955028 true))

(declare-fun lambda!110016 () Int)

(declare-fun lambda!110015 () Int)

(assert (=> b!2955028 (not (= lambda!110016 lambda!110015))))

(assert (=> b!2955028 true))

(assert (=> b!2955028 true))

(assert (=> b!2955028 true))

(declare-fun b!2955024 () Bool)

(declare-fun res!1219218 () Bool)

(declare-fun e!1860734 () Bool)

(assert (=> b!2955024 (=> res!1219218 e!1860734)))

(declare-datatypes ((C!18514 0))(
  ( (C!18515 (val!11293 Int)) )
))
(declare-datatypes ((Regex!9164 0))(
  ( (ElementMatch!9164 (c!484014 C!18514)) (Concat!14485 (regOne!18840 Regex!9164) (regTwo!18840 Regex!9164)) (EmptyExpr!9164) (Star!9164 (reg!9493 Regex!9164)) (EmptyLang!9164) (Union!9164 (regOne!18841 Regex!9164) (regTwo!18841 Regex!9164)) )
))
(declare-fun lt!1032815 () Regex!9164)

(declare-fun isEmptyExpr!367 (Regex!9164) Bool)

(assert (=> b!2955024 (= res!1219218 (isEmptyExpr!367 lt!1032815))))

(declare-fun b!2955025 () Bool)

(declare-fun res!1219222 () Bool)

(assert (=> b!2955025 (=> res!1219222 e!1860734)))

(declare-fun isEmptyLang!286 (Regex!9164) Bool)

(assert (=> b!2955025 (= res!1219222 (isEmptyLang!286 lt!1032815))))

(declare-fun b!2955026 () Bool)

(declare-fun e!1860736 () Bool)

(declare-fun r!17423 () Regex!9164)

(declare-fun validRegex!3897 (Regex!9164) Bool)

(assert (=> b!2955026 (= e!1860736 (validRegex!3897 (regOne!18840 r!17423)))))

(declare-fun b!2955027 () Bool)

(declare-fun res!1219220 () Bool)

(assert (=> b!2955027 (=> res!1219220 e!1860734)))

(declare-fun lt!1032809 () Regex!9164)

(assert (=> b!2955027 (= res!1219220 (isEmptyExpr!367 lt!1032809))))

(declare-fun e!1860733 () Bool)

(assert (=> b!2955028 (= e!1860733 e!1860736)))

(declare-fun res!1219219 () Bool)

(assert (=> b!2955028 (=> res!1219219 e!1860736)))

(declare-fun lt!1032814 () Bool)

(assert (=> b!2955028 (= res!1219219 (not lt!1032814))))

(declare-fun Exists!1496 (Int) Bool)

(assert (=> b!2955028 (= (Exists!1496 lambda!110015) (Exists!1496 lambda!110016))))

(declare-datatypes ((List!35029 0))(
  ( (Nil!34905) (Cons!34905 (h!40325 C!18514) (t!234094 List!35029)) )
))
(declare-fun s!11993 () List!35029)

(declare-datatypes ((Unit!48707 0))(
  ( (Unit!48708) )
))
(declare-fun lt!1032816 () Unit!48707)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!517 (Regex!9164 Regex!9164 List!35029) Unit!48707)

(assert (=> b!2955028 (= lt!1032816 (lemmaExistCutMatchRandMatchRSpecEquivalent!517 lt!1032809 lt!1032815 s!11993))))

(assert (=> b!2955028 (= lt!1032814 (Exists!1496 lambda!110015))))

(declare-datatypes ((tuple2!33846 0))(
  ( (tuple2!33847 (_1!20055 List!35029) (_2!20055 List!35029)) )
))
(declare-datatypes ((Option!6655 0))(
  ( (None!6654) (Some!6654 (v!34788 tuple2!33846)) )
))
(declare-fun isDefined!5206 (Option!6655) Bool)

(declare-fun findConcatSeparation!1049 (Regex!9164 Regex!9164 List!35029 List!35029 List!35029) Option!6655)

(assert (=> b!2955028 (= lt!1032814 (isDefined!5206 (findConcatSeparation!1049 lt!1032809 lt!1032815 Nil!34905 s!11993 s!11993)))))

(declare-fun lt!1032810 () Unit!48707)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!827 (Regex!9164 Regex!9164 List!35029) Unit!48707)

(assert (=> b!2955028 (= lt!1032810 (lemmaFindConcatSeparationEquivalentToExists!827 lt!1032809 lt!1032815 s!11993))))

(declare-fun lt!1032812 () Regex!9164)

(declare-fun matchRSpec!1301 (Regex!9164 List!35029) Bool)

(assert (=> b!2955028 (matchRSpec!1301 lt!1032812 s!11993)))

(declare-fun lt!1032808 () Unit!48707)

(declare-fun mainMatchTheorem!1301 (Regex!9164 List!35029) Unit!48707)

(assert (=> b!2955028 (= lt!1032808 (mainMatchTheorem!1301 lt!1032812 s!11993))))

(declare-fun b!2955029 () Bool)

(declare-fun e!1860735 () Bool)

(declare-fun tp_is_empty!15891 () Bool)

(assert (=> b!2955029 (= e!1860735 tp_is_empty!15891)))

(declare-fun b!2955030 () Bool)

(declare-fun e!1860730 () Bool)

(declare-fun e!1860731 () Bool)

(assert (=> b!2955030 (= e!1860730 (not e!1860731))))

(declare-fun res!1219223 () Bool)

(assert (=> b!2955030 (=> res!1219223 e!1860731)))

(declare-fun lt!1032811 () Bool)

(assert (=> b!2955030 (= res!1219223 (or lt!1032811 (not (is-Concat!14485 r!17423))))))

(assert (=> b!2955030 (= lt!1032811 (matchRSpec!1301 r!17423 s!11993))))

(declare-fun matchR!4046 (Regex!9164 List!35029) Bool)

(assert (=> b!2955030 (= lt!1032811 (matchR!4046 r!17423 s!11993))))

(declare-fun lt!1032813 () Unit!48707)

(assert (=> b!2955030 (= lt!1032813 (mainMatchTheorem!1301 r!17423 s!11993))))

(declare-fun res!1219217 () Bool)

(assert (=> start!286502 (=> (not res!1219217) (not e!1860730))))

(assert (=> start!286502 (= res!1219217 (validRegex!3897 r!17423))))

(assert (=> start!286502 e!1860730))

(assert (=> start!286502 e!1860735))

(declare-fun e!1860732 () Bool)

(assert (=> start!286502 e!1860732))

(declare-fun b!2955031 () Bool)

(declare-fun tp!943843 () Bool)

(assert (=> b!2955031 (= e!1860735 tp!943843)))

(declare-fun b!2955032 () Bool)

(declare-fun res!1219221 () Bool)

(assert (=> b!2955032 (=> res!1219221 e!1860731)))

(declare-fun isEmpty!19179 (List!35029) Bool)

(assert (=> b!2955032 (= res!1219221 (isEmpty!19179 s!11993))))

(declare-fun b!2955033 () Bool)

(assert (=> b!2955033 (= e!1860731 e!1860734)))

(declare-fun res!1219224 () Bool)

(assert (=> b!2955033 (=> res!1219224 e!1860734)))

(assert (=> b!2955033 (= res!1219224 (isEmptyLang!286 lt!1032809))))

(declare-fun simplify!169 (Regex!9164) Regex!9164)

(assert (=> b!2955033 (= lt!1032815 (simplify!169 (regTwo!18840 r!17423)))))

(assert (=> b!2955033 (= lt!1032809 (simplify!169 (regOne!18840 r!17423)))))

(declare-fun b!2955034 () Bool)

(declare-fun tp!943845 () Bool)

(declare-fun tp!943846 () Bool)

(assert (=> b!2955034 (= e!1860735 (and tp!943845 tp!943846))))

(declare-fun b!2955035 () Bool)

(declare-fun tp!943844 () Bool)

(declare-fun tp!943842 () Bool)

(assert (=> b!2955035 (= e!1860735 (and tp!943844 tp!943842))))

(declare-fun b!2955036 () Bool)

(declare-fun tp!943847 () Bool)

(assert (=> b!2955036 (= e!1860732 (and tp_is_empty!15891 tp!943847))))

(declare-fun b!2955037 () Bool)

(assert (=> b!2955037 (= e!1860734 e!1860733)))

(declare-fun res!1219225 () Bool)

(assert (=> b!2955037 (=> res!1219225 e!1860733)))

(assert (=> b!2955037 (= res!1219225 (not (matchR!4046 lt!1032812 s!11993)))))

(assert (=> b!2955037 (= lt!1032812 (Concat!14485 lt!1032809 lt!1032815))))

(assert (= (and start!286502 res!1219217) b!2955030))

(assert (= (and b!2955030 (not res!1219223)) b!2955032))

(assert (= (and b!2955032 (not res!1219221)) b!2955033))

(assert (= (and b!2955033 (not res!1219224)) b!2955025))

(assert (= (and b!2955025 (not res!1219222)) b!2955027))

(assert (= (and b!2955027 (not res!1219220)) b!2955024))

(assert (= (and b!2955024 (not res!1219218)) b!2955037))

(assert (= (and b!2955037 (not res!1219225)) b!2955028))

(assert (= (and b!2955028 (not res!1219219)) b!2955026))

(assert (= (and start!286502 (is-ElementMatch!9164 r!17423)) b!2955029))

(assert (= (and start!286502 (is-Concat!14485 r!17423)) b!2955034))

(assert (= (and start!286502 (is-Star!9164 r!17423)) b!2955031))

(assert (= (and start!286502 (is-Union!9164 r!17423)) b!2955035))

(assert (= (and start!286502 (is-Cons!34905 s!11993)) b!2955036))

(declare-fun m!3331529 () Bool)

(assert (=> b!2955027 m!3331529))

(declare-fun m!3331531 () Bool)

(assert (=> b!2955026 m!3331531))

(declare-fun m!3331533 () Bool)

(assert (=> b!2955032 m!3331533))

(declare-fun m!3331535 () Bool)

(assert (=> b!2955028 m!3331535))

(declare-fun m!3331537 () Bool)

(assert (=> b!2955028 m!3331537))

(assert (=> b!2955028 m!3331535))

(declare-fun m!3331539 () Bool)

(assert (=> b!2955028 m!3331539))

(declare-fun m!3331541 () Bool)

(assert (=> b!2955028 m!3331541))

(declare-fun m!3331543 () Bool)

(assert (=> b!2955028 m!3331543))

(declare-fun m!3331545 () Bool)

(assert (=> b!2955028 m!3331545))

(declare-fun m!3331547 () Bool)

(assert (=> b!2955028 m!3331547))

(declare-fun m!3331549 () Bool)

(assert (=> b!2955028 m!3331549))

(assert (=> b!2955028 m!3331539))

(declare-fun m!3331551 () Bool)

(assert (=> b!2955024 m!3331551))

(declare-fun m!3331553 () Bool)

(assert (=> b!2955030 m!3331553))

(declare-fun m!3331555 () Bool)

(assert (=> b!2955030 m!3331555))

(declare-fun m!3331557 () Bool)

(assert (=> b!2955030 m!3331557))

(declare-fun m!3331559 () Bool)

(assert (=> b!2955037 m!3331559))

(declare-fun m!3331561 () Bool)

(assert (=> start!286502 m!3331561))

(declare-fun m!3331563 () Bool)

(assert (=> b!2955025 m!3331563))

(declare-fun m!3331565 () Bool)

(assert (=> b!2955033 m!3331565))

(declare-fun m!3331567 () Bool)

(assert (=> b!2955033 m!3331567))

(declare-fun m!3331569 () Bool)

(assert (=> b!2955033 m!3331569))

(push 1)

(assert (not b!2955024))

(assert (not b!2955037))

(assert (not b!2955028))

(assert (not b!2955036))

(assert tp_is_empty!15891)

(assert (not b!2955035))

(assert (not b!2955030))

(assert (not b!2955033))

(assert (not b!2955031))

(assert (not b!2955026))

(assert (not start!286502))

(assert (not b!2955034))

(assert (not b!2955027))

(assert (not b!2955025))

(assert (not b!2955032))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!526019 () Bool)

(declare-fun b!2955133 () Bool)

(assert (= bs!526019 (and b!2955133 b!2955028)))

(declare-fun lambda!110029 () Int)

(assert (=> bs!526019 (not (= lambda!110029 lambda!110015))))

(assert (=> bs!526019 (not (= lambda!110029 lambda!110016))))

(assert (=> b!2955133 true))

(assert (=> b!2955133 true))

(declare-fun bs!526020 () Bool)

(declare-fun b!2955136 () Bool)

(assert (= bs!526020 (and b!2955136 b!2955028)))

(declare-fun lambda!110030 () Int)

(assert (=> bs!526020 (not (= lambda!110030 lambda!110015))))

(assert (=> bs!526020 (= (and (= (regOne!18840 r!17423) lt!1032809) (= (regTwo!18840 r!17423) lt!1032815)) (= lambda!110030 lambda!110016))))

(declare-fun bs!526021 () Bool)

(assert (= bs!526021 (and b!2955136 b!2955133)))

(assert (=> bs!526021 (not (= lambda!110030 lambda!110029))))

(assert (=> b!2955136 true))

(assert (=> b!2955136 true))

(declare-fun b!2955132 () Bool)

(declare-fun c!484024 () Bool)

(assert (=> b!2955132 (= c!484024 (is-Union!9164 r!17423))))

(declare-fun e!1860784 () Bool)

(declare-fun e!1860783 () Bool)

(assert (=> b!2955132 (= e!1860784 e!1860783)))

(declare-fun d!841480 () Bool)

(declare-fun c!484025 () Bool)

(assert (=> d!841480 (= c!484025 (is-EmptyExpr!9164 r!17423))))

(declare-fun e!1860786 () Bool)

(assert (=> d!841480 (= (matchRSpec!1301 r!17423 s!11993) e!1860786)))

(declare-fun e!1860785 () Bool)

(declare-fun call!195622 () Bool)

(assert (=> b!2955133 (= e!1860785 call!195622)))

(declare-fun b!2955134 () Bool)

(declare-fun e!1860787 () Bool)

(assert (=> b!2955134 (= e!1860787 (matchRSpec!1301 (regTwo!18841 r!17423) s!11993))))

(declare-fun b!2955135 () Bool)

(assert (=> b!2955135 (= e!1860783 e!1860787)))

(declare-fun res!1219282 () Bool)

(assert (=> b!2955135 (= res!1219282 (matchRSpec!1301 (regOne!18841 r!17423) s!11993))))

(assert (=> b!2955135 (=> res!1219282 e!1860787)))

(declare-fun bm!195616 () Bool)

(declare-fun call!195621 () Bool)

(assert (=> bm!195616 (= call!195621 (isEmpty!19179 s!11993))))

(declare-fun c!484026 () Bool)

(declare-fun bm!195617 () Bool)

(assert (=> bm!195617 (= call!195622 (Exists!1496 (ite c!484026 lambda!110029 lambda!110030)))))

(declare-fun e!1860782 () Bool)

(assert (=> b!2955136 (= e!1860782 call!195622)))

(declare-fun b!2955137 () Bool)

(declare-fun e!1860788 () Bool)

(assert (=> b!2955137 (= e!1860786 e!1860788)))

(declare-fun res!1219283 () Bool)

(assert (=> b!2955137 (= res!1219283 (not (is-EmptyLang!9164 r!17423)))))

(assert (=> b!2955137 (=> (not res!1219283) (not e!1860788))))

(declare-fun b!2955138 () Bool)

(assert (=> b!2955138 (= e!1860784 (= s!11993 (Cons!34905 (c!484014 r!17423) Nil!34905)))))

(declare-fun b!2955139 () Bool)

(assert (=> b!2955139 (= e!1860786 call!195621)))

(declare-fun b!2955140 () Bool)

(declare-fun c!484027 () Bool)

(assert (=> b!2955140 (= c!484027 (is-ElementMatch!9164 r!17423))))

(assert (=> b!2955140 (= e!1860788 e!1860784)))

(declare-fun b!2955141 () Bool)

(assert (=> b!2955141 (= e!1860783 e!1860782)))

(assert (=> b!2955141 (= c!484026 (is-Star!9164 r!17423))))

(declare-fun b!2955142 () Bool)

(declare-fun res!1219281 () Bool)

(assert (=> b!2955142 (=> res!1219281 e!1860785)))

(assert (=> b!2955142 (= res!1219281 call!195621)))

(assert (=> b!2955142 (= e!1860782 e!1860785)))

(assert (= (and d!841480 c!484025) b!2955139))

(assert (= (and d!841480 (not c!484025)) b!2955137))

(assert (= (and b!2955137 res!1219283) b!2955140))

(assert (= (and b!2955140 c!484027) b!2955138))

(assert (= (and b!2955140 (not c!484027)) b!2955132))

(assert (= (and b!2955132 c!484024) b!2955135))

(assert (= (and b!2955132 (not c!484024)) b!2955141))

(assert (= (and b!2955135 (not res!1219282)) b!2955134))

(assert (= (and b!2955141 c!484026) b!2955142))

(assert (= (and b!2955141 (not c!484026)) b!2955136))

(assert (= (and b!2955142 (not res!1219281)) b!2955133))

(assert (= (or b!2955133 b!2955136) bm!195617))

(assert (= (or b!2955139 b!2955142) bm!195616))

(declare-fun m!3331613 () Bool)

(assert (=> b!2955134 m!3331613))

(declare-fun m!3331615 () Bool)

(assert (=> b!2955135 m!3331615))

(assert (=> bm!195616 m!3331533))

(declare-fun m!3331617 () Bool)

(assert (=> bm!195617 m!3331617))

(assert (=> b!2955030 d!841480))

(declare-fun b!2955219 () Bool)

(declare-fun e!1860829 () Bool)

(declare-fun lt!1032858 () Bool)

(assert (=> b!2955219 (= e!1860829 (not lt!1032858))))

(declare-fun b!2955220 () Bool)

(declare-fun e!1860834 () Bool)

(declare-fun head!6581 (List!35029) C!18514)

(assert (=> b!2955220 (= e!1860834 (not (= (head!6581 s!11993) (c!484014 r!17423))))))

(declare-fun b!2955221 () Bool)

(declare-fun res!1219309 () Bool)

(declare-fun e!1860830 () Bool)

(assert (=> b!2955221 (=> res!1219309 e!1860830)))

(assert (=> b!2955221 (= res!1219309 (not (is-ElementMatch!9164 r!17423)))))

(assert (=> b!2955221 (= e!1860829 e!1860830)))

(declare-fun b!2955222 () Bool)

(declare-fun e!1860835 () Bool)

(assert (=> b!2955222 (= e!1860835 (= (head!6581 s!11993) (c!484014 r!17423)))))

(declare-fun b!2955223 () Bool)

(declare-fun e!1860832 () Bool)

(declare-fun derivativeStep!2522 (Regex!9164 C!18514) Regex!9164)

(declare-fun tail!4807 (List!35029) List!35029)

(assert (=> b!2955223 (= e!1860832 (matchR!4046 (derivativeStep!2522 r!17423 (head!6581 s!11993)) (tail!4807 s!11993)))))

(declare-fun b!2955224 () Bool)

(declare-fun e!1860833 () Bool)

(assert (=> b!2955224 (= e!1860833 e!1860829)))

(declare-fun c!484057 () Bool)

(assert (=> b!2955224 (= c!484057 (is-EmptyLang!9164 r!17423))))

(declare-fun b!2955225 () Bool)

(declare-fun nullable!2920 (Regex!9164) Bool)

(assert (=> b!2955225 (= e!1860832 (nullable!2920 r!17423))))

(declare-fun b!2955226 () Bool)

(declare-fun res!1219307 () Bool)

(assert (=> b!2955226 (=> (not res!1219307) (not e!1860835))))

(assert (=> b!2955226 (= res!1219307 (isEmpty!19179 (tail!4807 s!11993)))))

(declare-fun d!841482 () Bool)

(assert (=> d!841482 e!1860833))

(declare-fun c!484056 () Bool)

(assert (=> d!841482 (= c!484056 (is-EmptyExpr!9164 r!17423))))

(assert (=> d!841482 (= lt!1032858 e!1860832)))

(declare-fun c!484058 () Bool)

(assert (=> d!841482 (= c!484058 (isEmpty!19179 s!11993))))

(assert (=> d!841482 (validRegex!3897 r!17423)))

(assert (=> d!841482 (= (matchR!4046 r!17423 s!11993) lt!1032858)))

(declare-fun b!2955227 () Bool)

(declare-fun res!1219304 () Bool)

(assert (=> b!2955227 (=> (not res!1219304) (not e!1860835))))

(declare-fun call!195639 () Bool)

(assert (=> b!2955227 (= res!1219304 (not call!195639))))

(declare-fun b!2955228 () Bool)

(declare-fun e!1860831 () Bool)

(assert (=> b!2955228 (= e!1860831 e!1860834)))

(declare-fun res!1219308 () Bool)

(assert (=> b!2955228 (=> res!1219308 e!1860834)))

(assert (=> b!2955228 (= res!1219308 call!195639)))

(declare-fun b!2955229 () Bool)

(declare-fun res!1219311 () Bool)

(assert (=> b!2955229 (=> res!1219311 e!1860830)))

(assert (=> b!2955229 (= res!1219311 e!1860835)))

(declare-fun res!1219310 () Bool)

(assert (=> b!2955229 (=> (not res!1219310) (not e!1860835))))

(assert (=> b!2955229 (= res!1219310 lt!1032858)))

(declare-fun b!2955230 () Bool)

(assert (=> b!2955230 (= e!1860830 e!1860831)))

(declare-fun res!1219306 () Bool)

(assert (=> b!2955230 (=> (not res!1219306) (not e!1860831))))

(assert (=> b!2955230 (= res!1219306 (not lt!1032858))))

(declare-fun b!2955231 () Bool)

(assert (=> b!2955231 (= e!1860833 (= lt!1032858 call!195639))))

(declare-fun b!2955232 () Bool)

(declare-fun res!1219305 () Bool)

(assert (=> b!2955232 (=> res!1219305 e!1860834)))

(assert (=> b!2955232 (= res!1219305 (not (isEmpty!19179 (tail!4807 s!11993))))))

(declare-fun bm!195634 () Bool)

(assert (=> bm!195634 (= call!195639 (isEmpty!19179 s!11993))))

(assert (= (and d!841482 c!484058) b!2955225))

(assert (= (and d!841482 (not c!484058)) b!2955223))

(assert (= (and d!841482 c!484056) b!2955231))

(assert (= (and d!841482 (not c!484056)) b!2955224))

(assert (= (and b!2955224 c!484057) b!2955219))

(assert (= (and b!2955224 (not c!484057)) b!2955221))

(assert (= (and b!2955221 (not res!1219309)) b!2955229))

(assert (= (and b!2955229 res!1219310) b!2955227))

(assert (= (and b!2955227 res!1219304) b!2955226))

(assert (= (and b!2955226 res!1219307) b!2955222))

(assert (= (and b!2955229 (not res!1219311)) b!2955230))

(assert (= (and b!2955230 res!1219306) b!2955228))

(assert (= (and b!2955228 (not res!1219308)) b!2955232))

(assert (= (and b!2955232 (not res!1219305)) b!2955220))

(assert (= (or b!2955231 b!2955227 b!2955228) bm!195634))

(declare-fun m!3331619 () Bool)

(assert (=> b!2955225 m!3331619))

(assert (=> d!841482 m!3331533))

(assert (=> d!841482 m!3331561))

(declare-fun m!3331621 () Bool)

(assert (=> b!2955223 m!3331621))

(assert (=> b!2955223 m!3331621))

(declare-fun m!3331623 () Bool)

(assert (=> b!2955223 m!3331623))

(declare-fun m!3331625 () Bool)

(assert (=> b!2955223 m!3331625))

(assert (=> b!2955223 m!3331623))

(assert (=> b!2955223 m!3331625))

(declare-fun m!3331627 () Bool)

(assert (=> b!2955223 m!3331627))

(assert (=> b!2955220 m!3331621))

(assert (=> bm!195634 m!3331533))

(assert (=> b!2955232 m!3331625))

(assert (=> b!2955232 m!3331625))

(declare-fun m!3331629 () Bool)

(assert (=> b!2955232 m!3331629))

(assert (=> b!2955222 m!3331621))

(assert (=> b!2955226 m!3331625))

(assert (=> b!2955226 m!3331625))

(assert (=> b!2955226 m!3331629))

(assert (=> b!2955030 d!841482))

(declare-fun d!841484 () Bool)

(assert (=> d!841484 (= (matchR!4046 r!17423 s!11993) (matchRSpec!1301 r!17423 s!11993))))

(declare-fun lt!1032861 () Unit!48707)

(declare-fun choose!17473 (Regex!9164 List!35029) Unit!48707)

(assert (=> d!841484 (= lt!1032861 (choose!17473 r!17423 s!11993))))

(assert (=> d!841484 (validRegex!3897 r!17423)))

(assert (=> d!841484 (= (mainMatchTheorem!1301 r!17423 s!11993) lt!1032861)))

(declare-fun bs!526022 () Bool)

(assert (= bs!526022 d!841484))

(assert (=> bs!526022 m!3331555))

(assert (=> bs!526022 m!3331553))

(declare-fun m!3331631 () Bool)

(assert (=> bs!526022 m!3331631))

(assert (=> bs!526022 m!3331561))

(assert (=> b!2955030 d!841484))

(declare-fun d!841486 () Bool)

(assert (=> d!841486 (= (isEmptyExpr!367 lt!1032815) (is-EmptyExpr!9164 lt!1032815))))

(assert (=> b!2955024 d!841486))

(declare-fun d!841488 () Bool)

(assert (=> d!841488 (= (isEmptyLang!286 lt!1032809) (is-EmptyLang!9164 lt!1032809))))

(assert (=> b!2955033 d!841488))

(declare-fun b!2955335 () Bool)

(declare-fun e!1860907 () Regex!9164)

(assert (=> b!2955335 (= e!1860907 EmptyLang!9164)))

(declare-fun b!2955336 () Bool)

(declare-fun e!1860897 () Regex!9164)

(declare-fun e!1860903 () Regex!9164)

(assert (=> b!2955336 (= e!1860897 e!1860903)))

(declare-fun c!484104 () Bool)

(declare-fun lt!1032887 () Regex!9164)

(assert (=> b!2955336 (= c!484104 (isEmptyExpr!367 lt!1032887))))

(declare-fun b!2955337 () Bool)

(declare-fun lt!1032891 () Regex!9164)

(assert (=> b!2955337 (= e!1860903 (Concat!14485 lt!1032891 lt!1032887))))

(declare-fun b!2955339 () Bool)

(assert (=> b!2955339 (= e!1860897 lt!1032887)))

(declare-fun b!2955340 () Bool)

(declare-fun e!1860905 () Regex!9164)

(assert (=> b!2955340 (= e!1860905 EmptyLang!9164)))

(declare-fun c!484109 () Bool)

(declare-fun bm!195663 () Bool)

(declare-fun call!195670 () Bool)

(declare-fun lt!1032886 () Regex!9164)

(assert (=> bm!195663 (= call!195670 (isEmptyExpr!367 (ite c!484109 lt!1032886 lt!1032891)))))

(declare-fun b!2955341 () Bool)

(declare-fun c!484110 () Bool)

(declare-fun e!1860904 () Bool)

(assert (=> b!2955341 (= c!484110 e!1860904)))

(declare-fun res!1219327 () Bool)

(assert (=> b!2955341 (=> res!1219327 e!1860904)))

(declare-fun call!195673 () Bool)

(assert (=> b!2955341 (= res!1219327 call!195673)))

(declare-fun call!195668 () Regex!9164)

(assert (=> b!2955341 (= lt!1032886 call!195668)))

(declare-fun e!1860902 () Regex!9164)

(declare-fun e!1860894 () Regex!9164)

(assert (=> b!2955341 (= e!1860902 e!1860894)))

(declare-fun b!2955342 () Bool)

(declare-fun e!1860898 () Regex!9164)

(assert (=> b!2955342 (= e!1860898 (regTwo!18840 r!17423))))

(declare-fun bm!195664 () Bool)

(declare-fun call!195674 () Bool)

(assert (=> bm!195664 (= call!195674 call!195673)))

(declare-fun b!2955343 () Bool)

(declare-fun e!1860906 () Bool)

(declare-fun lt!1032890 () Regex!9164)

(assert (=> b!2955343 (= e!1860906 (= (nullable!2920 lt!1032890) (nullable!2920 (regTwo!18840 r!17423))))))

(declare-fun bm!195665 () Bool)

(declare-fun c!484105 () Bool)

(declare-fun call!195671 () Bool)

(declare-fun lt!1032888 () Regex!9164)

(assert (=> bm!195665 (= call!195671 (isEmptyLang!286 (ite c!484105 lt!1032888 lt!1032891)))))

(declare-fun b!2955344 () Bool)

(declare-fun e!1860901 () Regex!9164)

(assert (=> b!2955344 (= e!1860901 lt!1032888)))

(declare-fun b!2955345 () Bool)

(declare-fun e!1860900 () Regex!9164)

(assert (=> b!2955345 (= e!1860900 e!1860902)))

(assert (=> b!2955345 (= c!484109 (is-Star!9164 (regTwo!18840 r!17423)))))

(declare-fun b!2955346 () Bool)

(declare-fun c!484113 () Bool)

(assert (=> b!2955346 (= c!484113 (is-EmptyExpr!9164 (regTwo!18840 r!17423)))))

(assert (=> b!2955346 (= e!1860898 e!1860900)))

(declare-fun bm!195666 () Bool)

(declare-fun call!195672 () Regex!9164)

(assert (=> bm!195666 (= call!195672 call!195668)))

(declare-fun b!2955347 () Bool)

(assert (=> b!2955347 (= e!1860894 (Star!9164 lt!1032886))))

(declare-fun b!2955348 () Bool)

(declare-fun e!1860895 () Bool)

(assert (=> b!2955348 (= e!1860895 call!195674)))

(declare-fun b!2955349 () Bool)

(declare-fun e!1860899 () Regex!9164)

(assert (=> b!2955349 (= e!1860899 e!1860905)))

(assert (=> b!2955349 (= lt!1032891 call!195672)))

(declare-fun call!195669 () Regex!9164)

(assert (=> b!2955349 (= lt!1032887 call!195669)))

(declare-fun res!1219326 () Bool)

(assert (=> b!2955349 (= res!1219326 call!195671)))

(assert (=> b!2955349 (=> res!1219326 e!1860895)))

(declare-fun c!484103 () Bool)

(assert (=> b!2955349 (= c!484103 e!1860895)))

(declare-fun b!2955338 () Bool)

(assert (=> b!2955338 (= e!1860903 lt!1032891)))

(declare-fun d!841490 () Bool)

(assert (=> d!841490 e!1860906))

(declare-fun res!1219328 () Bool)

(assert (=> d!841490 (=> (not res!1219328) (not e!1860906))))

(assert (=> d!841490 (= res!1219328 (validRegex!3897 lt!1032890))))

(assert (=> d!841490 (= lt!1032890 e!1860907)))

(declare-fun c!484112 () Bool)

(assert (=> d!841490 (= c!484112 (is-EmptyLang!9164 (regTwo!18840 r!17423)))))

(assert (=> d!841490 (validRegex!3897 (regTwo!18840 r!17423))))

(assert (=> d!841490 (= (simplify!169 (regTwo!18840 r!17423)) lt!1032890)))

(declare-fun bm!195667 () Bool)

(assert (=> bm!195667 (= call!195669 (simplify!169 (ite c!484105 (regOne!18841 (regTwo!18840 r!17423)) (regTwo!18840 (regTwo!18840 r!17423)))))))

(declare-fun b!2955350 () Bool)

(declare-fun e!1860896 () Regex!9164)

(assert (=> b!2955350 (= e!1860899 e!1860896)))

(assert (=> b!2955350 (= lt!1032888 call!195669)))

(declare-fun lt!1032889 () Regex!9164)

(assert (=> b!2955350 (= lt!1032889 call!195672)))

(declare-fun c!484106 () Bool)

(assert (=> b!2955350 (= c!484106 call!195671)))

(declare-fun b!2955351 () Bool)

(assert (=> b!2955351 (= e!1860904 call!195670)))

(declare-fun bm!195668 () Bool)

(assert (=> bm!195668 (= call!195673 (isEmptyLang!286 (ite c!484109 lt!1032886 (ite c!484105 lt!1032889 lt!1032887))))))

(declare-fun b!2955352 () Bool)

(assert (=> b!2955352 (= e!1860900 EmptyExpr!9164)))

(declare-fun b!2955353 () Bool)

(assert (=> b!2955353 (= e!1860896 lt!1032889)))

(declare-fun b!2955354 () Bool)

(assert (=> b!2955354 (= e!1860894 EmptyExpr!9164)))

(declare-fun b!2955355 () Bool)

(assert (=> b!2955355 (= c!484105 (is-Union!9164 (regTwo!18840 r!17423)))))

(assert (=> b!2955355 (= e!1860902 e!1860899)))

(declare-fun b!2955356 () Bool)

(assert (=> b!2955356 (= e!1860901 (Union!9164 lt!1032888 lt!1032889))))

(declare-fun bm!195669 () Bool)

(assert (=> bm!195669 (= call!195668 (simplify!169 (ite c!484109 (reg!9493 (regTwo!18840 r!17423)) (ite c!484105 (regTwo!18841 (regTwo!18840 r!17423)) (regOne!18840 (regTwo!18840 r!17423))))))))

(declare-fun b!2955357 () Bool)

(declare-fun c!484108 () Bool)

(assert (=> b!2955357 (= c!484108 call!195670)))

(assert (=> b!2955357 (= e!1860905 e!1860897)))

(declare-fun b!2955358 () Bool)

(assert (=> b!2955358 (= e!1860907 e!1860898)))

(declare-fun c!484111 () Bool)

(assert (=> b!2955358 (= c!484111 (is-ElementMatch!9164 (regTwo!18840 r!17423)))))

(declare-fun b!2955359 () Bool)

(declare-fun c!484107 () Bool)

(assert (=> b!2955359 (= c!484107 call!195674)))

(assert (=> b!2955359 (= e!1860896 e!1860901)))

(assert (= (and d!841490 c!484112) b!2955335))

(assert (= (and d!841490 (not c!484112)) b!2955358))

(assert (= (and b!2955358 c!484111) b!2955342))

(assert (= (and b!2955358 (not c!484111)) b!2955346))

(assert (= (and b!2955346 c!484113) b!2955352))

(assert (= (and b!2955346 (not c!484113)) b!2955345))

(assert (= (and b!2955345 c!484109) b!2955341))

(assert (= (and b!2955345 (not c!484109)) b!2955355))

(assert (= (and b!2955341 (not res!1219327)) b!2955351))

(assert (= (and b!2955341 c!484110) b!2955354))

(assert (= (and b!2955341 (not c!484110)) b!2955347))

(assert (= (and b!2955355 c!484105) b!2955350))

(assert (= (and b!2955355 (not c!484105)) b!2955349))

(assert (= (and b!2955350 c!484106) b!2955353))

(assert (= (and b!2955350 (not c!484106)) b!2955359))

(assert (= (and b!2955359 c!484107) b!2955344))

(assert (= (and b!2955359 (not c!484107)) b!2955356))

(assert (= (and b!2955349 (not res!1219326)) b!2955348))

(assert (= (and b!2955349 c!484103) b!2955340))

(assert (= (and b!2955349 (not c!484103)) b!2955357))

(assert (= (and b!2955357 c!484108) b!2955339))

(assert (= (and b!2955357 (not c!484108)) b!2955336))

(assert (= (and b!2955336 c!484104) b!2955338))

(assert (= (and b!2955336 (not c!484104)) b!2955337))

(assert (= (or b!2955350 b!2955349) bm!195667))

(assert (= (or b!2955350 b!2955349) bm!195666))

(assert (= (or b!2955359 b!2955348) bm!195664))

(assert (= (or b!2955350 b!2955349) bm!195665))

(assert (= (or b!2955351 b!2955357) bm!195663))

(assert (= (or b!2955341 bm!195666) bm!195669))

(assert (= (or b!2955341 bm!195664) bm!195668))

(assert (= (and d!841490 res!1219328) b!2955343))

(declare-fun m!3331671 () Bool)

(assert (=> b!2955336 m!3331671))

(declare-fun m!3331673 () Bool)

(assert (=> bm!195665 m!3331673))

(declare-fun m!3331675 () Bool)

(assert (=> b!2955343 m!3331675))

(declare-fun m!3331677 () Bool)

(assert (=> b!2955343 m!3331677))

(declare-fun m!3331679 () Bool)

(assert (=> bm!195663 m!3331679))

(declare-fun m!3331681 () Bool)

(assert (=> bm!195668 m!3331681))

(declare-fun m!3331683 () Bool)

(assert (=> bm!195669 m!3331683))

(declare-fun m!3331685 () Bool)

(assert (=> bm!195667 m!3331685))

(declare-fun m!3331687 () Bool)

(assert (=> d!841490 m!3331687))

(declare-fun m!3331689 () Bool)

(assert (=> d!841490 m!3331689))

(assert (=> b!2955033 d!841490))

(declare-fun b!2955360 () Bool)

(declare-fun e!1860921 () Regex!9164)

(assert (=> b!2955360 (= e!1860921 EmptyLang!9164)))

(declare-fun b!2955361 () Bool)

(declare-fun e!1860911 () Regex!9164)

(declare-fun e!1860917 () Regex!9164)

(assert (=> b!2955361 (= e!1860911 e!1860917)))

(declare-fun c!484115 () Bool)

(declare-fun lt!1032893 () Regex!9164)

(assert (=> b!2955361 (= c!484115 (isEmptyExpr!367 lt!1032893))))

(declare-fun b!2955362 () Bool)

(declare-fun lt!1032897 () Regex!9164)

(assert (=> b!2955362 (= e!1860917 (Concat!14485 lt!1032897 lt!1032893))))

(declare-fun b!2955364 () Bool)

(assert (=> b!2955364 (= e!1860911 lt!1032893)))

(declare-fun b!2955365 () Bool)

(declare-fun e!1860919 () Regex!9164)

(assert (=> b!2955365 (= e!1860919 EmptyLang!9164)))

(declare-fun c!484120 () Bool)

(declare-fun bm!195670 () Bool)

(declare-fun call!195677 () Bool)

(declare-fun lt!1032892 () Regex!9164)

(assert (=> bm!195670 (= call!195677 (isEmptyExpr!367 (ite c!484120 lt!1032892 lt!1032897)))))

(declare-fun b!2955366 () Bool)

(declare-fun c!484121 () Bool)

(declare-fun e!1860918 () Bool)

(assert (=> b!2955366 (= c!484121 e!1860918)))

(declare-fun res!1219330 () Bool)

(assert (=> b!2955366 (=> res!1219330 e!1860918)))

(declare-fun call!195680 () Bool)

(assert (=> b!2955366 (= res!1219330 call!195680)))

(declare-fun call!195675 () Regex!9164)

(assert (=> b!2955366 (= lt!1032892 call!195675)))

(declare-fun e!1860916 () Regex!9164)

(declare-fun e!1860908 () Regex!9164)

(assert (=> b!2955366 (= e!1860916 e!1860908)))

(declare-fun b!2955367 () Bool)

(declare-fun e!1860912 () Regex!9164)

(assert (=> b!2955367 (= e!1860912 (regOne!18840 r!17423))))

(declare-fun bm!195671 () Bool)

(declare-fun call!195681 () Bool)

(assert (=> bm!195671 (= call!195681 call!195680)))

(declare-fun b!2955368 () Bool)

(declare-fun e!1860920 () Bool)

(declare-fun lt!1032896 () Regex!9164)

(assert (=> b!2955368 (= e!1860920 (= (nullable!2920 lt!1032896) (nullable!2920 (regOne!18840 r!17423))))))

(declare-fun lt!1032894 () Regex!9164)

(declare-fun bm!195672 () Bool)

(declare-fun c!484116 () Bool)

(declare-fun call!195678 () Bool)

(assert (=> bm!195672 (= call!195678 (isEmptyLang!286 (ite c!484116 lt!1032894 lt!1032897)))))

(declare-fun b!2955369 () Bool)

(declare-fun e!1860915 () Regex!9164)

(assert (=> b!2955369 (= e!1860915 lt!1032894)))

(declare-fun b!2955370 () Bool)

(declare-fun e!1860914 () Regex!9164)

(assert (=> b!2955370 (= e!1860914 e!1860916)))

(assert (=> b!2955370 (= c!484120 (is-Star!9164 (regOne!18840 r!17423)))))

(declare-fun b!2955371 () Bool)

(declare-fun c!484124 () Bool)

(assert (=> b!2955371 (= c!484124 (is-EmptyExpr!9164 (regOne!18840 r!17423)))))

(assert (=> b!2955371 (= e!1860912 e!1860914)))

(declare-fun bm!195673 () Bool)

(declare-fun call!195679 () Regex!9164)

(assert (=> bm!195673 (= call!195679 call!195675)))

(declare-fun b!2955372 () Bool)

(assert (=> b!2955372 (= e!1860908 (Star!9164 lt!1032892))))

(declare-fun b!2955373 () Bool)

(declare-fun e!1860909 () Bool)

(assert (=> b!2955373 (= e!1860909 call!195681)))

(declare-fun b!2955374 () Bool)

(declare-fun e!1860913 () Regex!9164)

(assert (=> b!2955374 (= e!1860913 e!1860919)))

(assert (=> b!2955374 (= lt!1032897 call!195679)))

(declare-fun call!195676 () Regex!9164)

(assert (=> b!2955374 (= lt!1032893 call!195676)))

(declare-fun res!1219329 () Bool)

(assert (=> b!2955374 (= res!1219329 call!195678)))

(assert (=> b!2955374 (=> res!1219329 e!1860909)))

(declare-fun c!484114 () Bool)

(assert (=> b!2955374 (= c!484114 e!1860909)))

(declare-fun b!2955363 () Bool)

(assert (=> b!2955363 (= e!1860917 lt!1032897)))

(declare-fun d!841496 () Bool)

(assert (=> d!841496 e!1860920))

(declare-fun res!1219331 () Bool)

(assert (=> d!841496 (=> (not res!1219331) (not e!1860920))))

(assert (=> d!841496 (= res!1219331 (validRegex!3897 lt!1032896))))

(assert (=> d!841496 (= lt!1032896 e!1860921)))

(declare-fun c!484123 () Bool)

(assert (=> d!841496 (= c!484123 (is-EmptyLang!9164 (regOne!18840 r!17423)))))

(assert (=> d!841496 (validRegex!3897 (regOne!18840 r!17423))))

(assert (=> d!841496 (= (simplify!169 (regOne!18840 r!17423)) lt!1032896)))

(declare-fun bm!195674 () Bool)

(assert (=> bm!195674 (= call!195676 (simplify!169 (ite c!484116 (regOne!18841 (regOne!18840 r!17423)) (regTwo!18840 (regOne!18840 r!17423)))))))

(declare-fun b!2955375 () Bool)

(declare-fun e!1860910 () Regex!9164)

(assert (=> b!2955375 (= e!1860913 e!1860910)))

(assert (=> b!2955375 (= lt!1032894 call!195676)))

(declare-fun lt!1032895 () Regex!9164)

(assert (=> b!2955375 (= lt!1032895 call!195679)))

(declare-fun c!484117 () Bool)

(assert (=> b!2955375 (= c!484117 call!195678)))

(declare-fun b!2955376 () Bool)

(assert (=> b!2955376 (= e!1860918 call!195677)))

(declare-fun bm!195675 () Bool)

(assert (=> bm!195675 (= call!195680 (isEmptyLang!286 (ite c!484120 lt!1032892 (ite c!484116 lt!1032895 lt!1032893))))))

(declare-fun b!2955377 () Bool)

(assert (=> b!2955377 (= e!1860914 EmptyExpr!9164)))

(declare-fun b!2955378 () Bool)

(assert (=> b!2955378 (= e!1860910 lt!1032895)))

(declare-fun b!2955379 () Bool)

(assert (=> b!2955379 (= e!1860908 EmptyExpr!9164)))

(declare-fun b!2955380 () Bool)

(assert (=> b!2955380 (= c!484116 (is-Union!9164 (regOne!18840 r!17423)))))

(assert (=> b!2955380 (= e!1860916 e!1860913)))

(declare-fun b!2955381 () Bool)

(assert (=> b!2955381 (= e!1860915 (Union!9164 lt!1032894 lt!1032895))))

(declare-fun bm!195676 () Bool)

(assert (=> bm!195676 (= call!195675 (simplify!169 (ite c!484120 (reg!9493 (regOne!18840 r!17423)) (ite c!484116 (regTwo!18841 (regOne!18840 r!17423)) (regOne!18840 (regOne!18840 r!17423))))))))

(declare-fun b!2955382 () Bool)

(declare-fun c!484119 () Bool)

(assert (=> b!2955382 (= c!484119 call!195677)))

(assert (=> b!2955382 (= e!1860919 e!1860911)))

(declare-fun b!2955383 () Bool)

(assert (=> b!2955383 (= e!1860921 e!1860912)))

(declare-fun c!484122 () Bool)

(assert (=> b!2955383 (= c!484122 (is-ElementMatch!9164 (regOne!18840 r!17423)))))

(declare-fun b!2955384 () Bool)

(declare-fun c!484118 () Bool)

(assert (=> b!2955384 (= c!484118 call!195681)))

(assert (=> b!2955384 (= e!1860910 e!1860915)))

(assert (= (and d!841496 c!484123) b!2955360))

(assert (= (and d!841496 (not c!484123)) b!2955383))

(assert (= (and b!2955383 c!484122) b!2955367))

(assert (= (and b!2955383 (not c!484122)) b!2955371))

(assert (= (and b!2955371 c!484124) b!2955377))

(assert (= (and b!2955371 (not c!484124)) b!2955370))

(assert (= (and b!2955370 c!484120) b!2955366))

(assert (= (and b!2955370 (not c!484120)) b!2955380))

(assert (= (and b!2955366 (not res!1219330)) b!2955376))

(assert (= (and b!2955366 c!484121) b!2955379))

(assert (= (and b!2955366 (not c!484121)) b!2955372))

(assert (= (and b!2955380 c!484116) b!2955375))

(assert (= (and b!2955380 (not c!484116)) b!2955374))

(assert (= (and b!2955375 c!484117) b!2955378))

(assert (= (and b!2955375 (not c!484117)) b!2955384))

(assert (= (and b!2955384 c!484118) b!2955369))

(assert (= (and b!2955384 (not c!484118)) b!2955381))

(assert (= (and b!2955374 (not res!1219329)) b!2955373))

(assert (= (and b!2955374 c!484114) b!2955365))

(assert (= (and b!2955374 (not c!484114)) b!2955382))

(assert (= (and b!2955382 c!484119) b!2955364))

(assert (= (and b!2955382 (not c!484119)) b!2955361))

(assert (= (and b!2955361 c!484115) b!2955363))

(assert (= (and b!2955361 (not c!484115)) b!2955362))

(assert (= (or b!2955375 b!2955374) bm!195674))

(assert (= (or b!2955375 b!2955374) bm!195673))

(assert (= (or b!2955384 b!2955373) bm!195671))

(assert (= (or b!2955375 b!2955374) bm!195672))

(assert (= (or b!2955376 b!2955382) bm!195670))

(assert (= (or b!2955366 bm!195673) bm!195676))

(assert (= (or b!2955366 bm!195671) bm!195675))

(assert (= (and d!841496 res!1219331) b!2955368))

(declare-fun m!3331691 () Bool)

(assert (=> b!2955361 m!3331691))

(declare-fun m!3331693 () Bool)

(assert (=> bm!195672 m!3331693))

(declare-fun m!3331695 () Bool)

(assert (=> b!2955368 m!3331695))

(declare-fun m!3331697 () Bool)

(assert (=> b!2955368 m!3331697))

(declare-fun m!3331699 () Bool)

(assert (=> bm!195670 m!3331699))

(declare-fun m!3331701 () Bool)

(assert (=> bm!195675 m!3331701))

(declare-fun m!3331703 () Bool)

(assert (=> bm!195676 m!3331703))

(declare-fun m!3331705 () Bool)

(assert (=> bm!195674 m!3331705))

(declare-fun m!3331707 () Bool)

(assert (=> d!841496 m!3331707))

(assert (=> d!841496 m!3331531))

(assert (=> b!2955033 d!841496))

(declare-fun d!841498 () Bool)

(assert (=> d!841498 (= (matchR!4046 lt!1032812 s!11993) (matchRSpec!1301 lt!1032812 s!11993))))

(declare-fun lt!1032898 () Unit!48707)

(assert (=> d!841498 (= lt!1032898 (choose!17473 lt!1032812 s!11993))))

(assert (=> d!841498 (validRegex!3897 lt!1032812)))

(assert (=> d!841498 (= (mainMatchTheorem!1301 lt!1032812 s!11993) lt!1032898)))

(declare-fun bs!526023 () Bool)

(assert (= bs!526023 d!841498))

(assert (=> bs!526023 m!3331559))

(assert (=> bs!526023 m!3331549))

(declare-fun m!3331709 () Bool)

(assert (=> bs!526023 m!3331709))

(declare-fun m!3331711 () Bool)

(assert (=> bs!526023 m!3331711))

(assert (=> b!2955028 d!841498))

(declare-fun bs!526024 () Bool)

(declare-fun b!2955386 () Bool)

(assert (= bs!526024 (and b!2955386 b!2955028)))

(declare-fun lambda!110031 () Int)

(assert (=> bs!526024 (not (= lambda!110031 lambda!110015))))

(assert (=> bs!526024 (not (= lambda!110031 lambda!110016))))

(declare-fun bs!526025 () Bool)

(assert (= bs!526025 (and b!2955386 b!2955133)))

(assert (=> bs!526025 (= (and (= (reg!9493 lt!1032812) (reg!9493 r!17423)) (= lt!1032812 r!17423)) (= lambda!110031 lambda!110029))))

(declare-fun bs!526026 () Bool)

(assert (= bs!526026 (and b!2955386 b!2955136)))

(assert (=> bs!526026 (not (= lambda!110031 lambda!110030))))

(assert (=> b!2955386 true))

(assert (=> b!2955386 true))

(declare-fun bs!526027 () Bool)

(declare-fun b!2955389 () Bool)

(assert (= bs!526027 (and b!2955389 b!2955386)))

(declare-fun lambda!110032 () Int)

(assert (=> bs!526027 (not (= lambda!110032 lambda!110031))))

(declare-fun bs!526028 () Bool)

(assert (= bs!526028 (and b!2955389 b!2955136)))

(assert (=> bs!526028 (= (and (= (regOne!18840 lt!1032812) (regOne!18840 r!17423)) (= (regTwo!18840 lt!1032812) (regTwo!18840 r!17423))) (= lambda!110032 lambda!110030))))

(declare-fun bs!526029 () Bool)

(assert (= bs!526029 (and b!2955389 b!2955028)))

(assert (=> bs!526029 (not (= lambda!110032 lambda!110015))))

(assert (=> bs!526029 (= (and (= (regOne!18840 lt!1032812) lt!1032809) (= (regTwo!18840 lt!1032812) lt!1032815)) (= lambda!110032 lambda!110016))))

(declare-fun bs!526030 () Bool)

(assert (= bs!526030 (and b!2955389 b!2955133)))

(assert (=> bs!526030 (not (= lambda!110032 lambda!110029))))

(assert (=> b!2955389 true))

(assert (=> b!2955389 true))

(declare-fun b!2955385 () Bool)

(declare-fun c!484125 () Bool)

(assert (=> b!2955385 (= c!484125 (is-Union!9164 lt!1032812))))

(declare-fun e!1860924 () Bool)

(declare-fun e!1860923 () Bool)

(assert (=> b!2955385 (= e!1860924 e!1860923)))

(declare-fun d!841500 () Bool)

(declare-fun c!484126 () Bool)

(assert (=> d!841500 (= c!484126 (is-EmptyExpr!9164 lt!1032812))))

(declare-fun e!1860926 () Bool)

(assert (=> d!841500 (= (matchRSpec!1301 lt!1032812 s!11993) e!1860926)))

(declare-fun e!1860925 () Bool)

(declare-fun call!195683 () Bool)

(assert (=> b!2955386 (= e!1860925 call!195683)))

(declare-fun b!2955387 () Bool)

(declare-fun e!1860927 () Bool)

(assert (=> b!2955387 (= e!1860927 (matchRSpec!1301 (regTwo!18841 lt!1032812) s!11993))))

(declare-fun b!2955388 () Bool)

(assert (=> b!2955388 (= e!1860923 e!1860927)))

(declare-fun res!1219333 () Bool)

(assert (=> b!2955388 (= res!1219333 (matchRSpec!1301 (regOne!18841 lt!1032812) s!11993))))

(assert (=> b!2955388 (=> res!1219333 e!1860927)))

(declare-fun bm!195677 () Bool)

(declare-fun call!195682 () Bool)

(assert (=> bm!195677 (= call!195682 (isEmpty!19179 s!11993))))

(declare-fun c!484127 () Bool)

(declare-fun bm!195678 () Bool)

(assert (=> bm!195678 (= call!195683 (Exists!1496 (ite c!484127 lambda!110031 lambda!110032)))))

(declare-fun e!1860922 () Bool)

(assert (=> b!2955389 (= e!1860922 call!195683)))

(declare-fun b!2955390 () Bool)

(declare-fun e!1860928 () Bool)

(assert (=> b!2955390 (= e!1860926 e!1860928)))

(declare-fun res!1219334 () Bool)

(assert (=> b!2955390 (= res!1219334 (not (is-EmptyLang!9164 lt!1032812)))))

(assert (=> b!2955390 (=> (not res!1219334) (not e!1860928))))

(declare-fun b!2955391 () Bool)

(assert (=> b!2955391 (= e!1860924 (= s!11993 (Cons!34905 (c!484014 lt!1032812) Nil!34905)))))

(declare-fun b!2955392 () Bool)

(assert (=> b!2955392 (= e!1860926 call!195682)))

(declare-fun b!2955393 () Bool)

(declare-fun c!484128 () Bool)

(assert (=> b!2955393 (= c!484128 (is-ElementMatch!9164 lt!1032812))))

(assert (=> b!2955393 (= e!1860928 e!1860924)))

(declare-fun b!2955394 () Bool)

(assert (=> b!2955394 (= e!1860923 e!1860922)))

(assert (=> b!2955394 (= c!484127 (is-Star!9164 lt!1032812))))

(declare-fun b!2955395 () Bool)

(declare-fun res!1219332 () Bool)

(assert (=> b!2955395 (=> res!1219332 e!1860925)))

(assert (=> b!2955395 (= res!1219332 call!195682)))

(assert (=> b!2955395 (= e!1860922 e!1860925)))

(assert (= (and d!841500 c!484126) b!2955392))

(assert (= (and d!841500 (not c!484126)) b!2955390))

(assert (= (and b!2955390 res!1219334) b!2955393))

(assert (= (and b!2955393 c!484128) b!2955391))

(assert (= (and b!2955393 (not c!484128)) b!2955385))

(assert (= (and b!2955385 c!484125) b!2955388))

(assert (= (and b!2955385 (not c!484125)) b!2955394))

(assert (= (and b!2955388 (not res!1219333)) b!2955387))

(assert (= (and b!2955394 c!484127) b!2955395))

(assert (= (and b!2955394 (not c!484127)) b!2955389))

(assert (= (and b!2955395 (not res!1219332)) b!2955386))

(assert (= (or b!2955386 b!2955389) bm!195678))

(assert (= (or b!2955392 b!2955395) bm!195677))

(declare-fun m!3331713 () Bool)

(assert (=> b!2955387 m!3331713))

(declare-fun m!3331715 () Bool)

(assert (=> b!2955388 m!3331715))

(assert (=> bm!195677 m!3331533))

(declare-fun m!3331717 () Bool)

(assert (=> bm!195678 m!3331717))

(assert (=> b!2955028 d!841500))

(declare-fun d!841502 () Bool)

(declare-fun choose!17474 (Int) Bool)

(assert (=> d!841502 (= (Exists!1496 lambda!110016) (choose!17474 lambda!110016))))

(declare-fun bs!526031 () Bool)

(assert (= bs!526031 d!841502))

(declare-fun m!3331719 () Bool)

(assert (=> bs!526031 m!3331719))

(assert (=> b!2955028 d!841502))

(declare-fun bs!526032 () Bool)

(declare-fun d!841504 () Bool)

(assert (= bs!526032 (and d!841504 b!2955386)))

(declare-fun lambda!110037 () Int)

(assert (=> bs!526032 (not (= lambda!110037 lambda!110031))))

(declare-fun bs!526033 () Bool)

(assert (= bs!526033 (and d!841504 b!2955028)))

(assert (=> bs!526033 (= lambda!110037 lambda!110015)))

(assert (=> bs!526033 (not (= lambda!110037 lambda!110016))))

(declare-fun bs!526034 () Bool)

(assert (= bs!526034 (and d!841504 b!2955133)))

(assert (=> bs!526034 (not (= lambda!110037 lambda!110029))))

(declare-fun bs!526035 () Bool)

(assert (= bs!526035 (and d!841504 b!2955136)))

(assert (=> bs!526035 (not (= lambda!110037 lambda!110030))))

(declare-fun bs!526036 () Bool)

(assert (= bs!526036 (and d!841504 b!2955389)))

(assert (=> bs!526036 (not (= lambda!110037 lambda!110032))))

(assert (=> d!841504 true))

(assert (=> d!841504 true))

(assert (=> d!841504 true))

(declare-fun lambda!110038 () Int)

(assert (=> bs!526032 (not (= lambda!110038 lambda!110031))))

(assert (=> bs!526033 (not (= lambda!110038 lambda!110015))))

(assert (=> bs!526033 (= lambda!110038 lambda!110016)))

(assert (=> bs!526035 (= (and (= lt!1032809 (regOne!18840 r!17423)) (= lt!1032815 (regTwo!18840 r!17423))) (= lambda!110038 lambda!110030))))

(assert (=> bs!526036 (= (and (= lt!1032809 (regOne!18840 lt!1032812)) (= lt!1032815 (regTwo!18840 lt!1032812))) (= lambda!110038 lambda!110032))))

(assert (=> bs!526034 (not (= lambda!110038 lambda!110029))))

(declare-fun bs!526037 () Bool)

(assert (= bs!526037 d!841504))

(assert (=> bs!526037 (not (= lambda!110038 lambda!110037))))

(assert (=> d!841504 true))

(assert (=> d!841504 true))

(assert (=> d!841504 true))

(assert (=> d!841504 (= (Exists!1496 lambda!110037) (Exists!1496 lambda!110038))))

(declare-fun lt!1032901 () Unit!48707)

(declare-fun choose!17475 (Regex!9164 Regex!9164 List!35029) Unit!48707)

(assert (=> d!841504 (= lt!1032901 (choose!17475 lt!1032809 lt!1032815 s!11993))))

(assert (=> d!841504 (validRegex!3897 lt!1032809)))

(assert (=> d!841504 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!517 lt!1032809 lt!1032815 s!11993) lt!1032901)))

(declare-fun m!3331727 () Bool)

(assert (=> bs!526037 m!3331727))

(declare-fun m!3331729 () Bool)

(assert (=> bs!526037 m!3331729))

(declare-fun m!3331731 () Bool)

(assert (=> bs!526037 m!3331731))

(declare-fun m!3331733 () Bool)

(assert (=> bs!526037 m!3331733))

(assert (=> b!2955028 d!841504))

(declare-fun d!841510 () Bool)

(declare-fun isEmpty!19181 (Option!6655) Bool)

(assert (=> d!841510 (= (isDefined!5206 (findConcatSeparation!1049 lt!1032809 lt!1032815 Nil!34905 s!11993 s!11993)) (not (isEmpty!19181 (findConcatSeparation!1049 lt!1032809 lt!1032815 Nil!34905 s!11993 s!11993))))))

(declare-fun bs!526038 () Bool)

(assert (= bs!526038 d!841510))

(assert (=> bs!526038 m!3331539))

(declare-fun m!3331735 () Bool)

(assert (=> bs!526038 m!3331735))

(assert (=> b!2955028 d!841510))

(declare-fun bs!526039 () Bool)

(declare-fun d!841512 () Bool)

(assert (= bs!526039 (and d!841512 b!2955386)))

(declare-fun lambda!110041 () Int)

(assert (=> bs!526039 (not (= lambda!110041 lambda!110031))))

(declare-fun bs!526040 () Bool)

(assert (= bs!526040 (and d!841512 b!2955028)))

(assert (=> bs!526040 (= lambda!110041 lambda!110015)))

(assert (=> bs!526040 (not (= lambda!110041 lambda!110016))))

(declare-fun bs!526041 () Bool)

(assert (= bs!526041 (and d!841512 d!841504)))

(assert (=> bs!526041 (not (= lambda!110041 lambda!110038))))

(declare-fun bs!526042 () Bool)

(assert (= bs!526042 (and d!841512 b!2955136)))

(assert (=> bs!526042 (not (= lambda!110041 lambda!110030))))

(declare-fun bs!526043 () Bool)

(assert (= bs!526043 (and d!841512 b!2955389)))

(assert (=> bs!526043 (not (= lambda!110041 lambda!110032))))

(declare-fun bs!526044 () Bool)

(assert (= bs!526044 (and d!841512 b!2955133)))

(assert (=> bs!526044 (not (= lambda!110041 lambda!110029))))

(assert (=> bs!526041 (= lambda!110041 lambda!110037)))

(assert (=> d!841512 true))

(assert (=> d!841512 true))

(assert (=> d!841512 true))

(assert (=> d!841512 (= (isDefined!5206 (findConcatSeparation!1049 lt!1032809 lt!1032815 Nil!34905 s!11993 s!11993)) (Exists!1496 lambda!110041))))

(declare-fun lt!1032904 () Unit!48707)

(declare-fun choose!17476 (Regex!9164 Regex!9164 List!35029) Unit!48707)

(assert (=> d!841512 (= lt!1032904 (choose!17476 lt!1032809 lt!1032815 s!11993))))

(assert (=> d!841512 (validRegex!3897 lt!1032809)))

(assert (=> d!841512 (= (lemmaFindConcatSeparationEquivalentToExists!827 lt!1032809 lt!1032815 s!11993) lt!1032904)))

(declare-fun bs!526045 () Bool)

(assert (= bs!526045 d!841512))

(assert (=> bs!526045 m!3331539))

(assert (=> bs!526045 m!3331733))

(declare-fun m!3331737 () Bool)

(assert (=> bs!526045 m!3331737))

(assert (=> bs!526045 m!3331539))

(assert (=> bs!526045 m!3331541))

(declare-fun m!3331739 () Bool)

(assert (=> bs!526045 m!3331739))

(assert (=> b!2955028 d!841512))

(declare-fun d!841514 () Bool)

(assert (=> d!841514 (= (Exists!1496 lambda!110015) (choose!17474 lambda!110015))))

(declare-fun bs!526046 () Bool)

(assert (= bs!526046 d!841514))

(declare-fun m!3331741 () Bool)

(assert (=> bs!526046 m!3331741))

(assert (=> b!2955028 d!841514))

(declare-fun b!2955485 () Bool)

(declare-fun e!1860986 () Option!6655)

(declare-fun e!1860988 () Option!6655)

(assert (=> b!2955485 (= e!1860986 e!1860988)))

(declare-fun c!484148 () Bool)

(assert (=> b!2955485 (= c!484148 (is-Nil!34905 s!11993))))

(declare-fun b!2955486 () Bool)

(declare-fun res!1219390 () Bool)

(declare-fun e!1860987 () Bool)

(assert (=> b!2955486 (=> (not res!1219390) (not e!1860987))))

(declare-fun lt!1032911 () Option!6655)

(declare-fun get!10714 (Option!6655) tuple2!33846)

(assert (=> b!2955486 (= res!1219390 (matchR!4046 lt!1032815 (_2!20055 (get!10714 lt!1032911))))))

(declare-fun b!2955487 () Bool)

(declare-fun lt!1032913 () Unit!48707)

(declare-fun lt!1032912 () Unit!48707)

(assert (=> b!2955487 (= lt!1032913 lt!1032912)))

(declare-fun ++!8331 (List!35029 List!35029) List!35029)

(assert (=> b!2955487 (= (++!8331 (++!8331 Nil!34905 (Cons!34905 (h!40325 s!11993) Nil!34905)) (t!234094 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!954 (List!35029 C!18514 List!35029 List!35029) Unit!48707)

(assert (=> b!2955487 (= lt!1032912 (lemmaMoveElementToOtherListKeepsConcatEq!954 Nil!34905 (h!40325 s!11993) (t!234094 s!11993) s!11993))))

(assert (=> b!2955487 (= e!1860988 (findConcatSeparation!1049 lt!1032809 lt!1032815 (++!8331 Nil!34905 (Cons!34905 (h!40325 s!11993) Nil!34905)) (t!234094 s!11993) s!11993))))

(declare-fun b!2955488 () Bool)

(assert (=> b!2955488 (= e!1860987 (= (++!8331 (_1!20055 (get!10714 lt!1032911)) (_2!20055 (get!10714 lt!1032911))) s!11993))))

(declare-fun b!2955489 () Bool)

(declare-fun e!1860984 () Bool)

(assert (=> b!2955489 (= e!1860984 (not (isDefined!5206 lt!1032911)))))

(declare-fun b!2955490 () Bool)

(assert (=> b!2955490 (= e!1860988 None!6654)))

(declare-fun b!2955491 () Bool)

(assert (=> b!2955491 (= e!1860986 (Some!6654 (tuple2!33847 Nil!34905 s!11993)))))

(declare-fun b!2955493 () Bool)

(declare-fun res!1219391 () Bool)

(assert (=> b!2955493 (=> (not res!1219391) (not e!1860987))))

(assert (=> b!2955493 (= res!1219391 (matchR!4046 lt!1032809 (_1!20055 (get!10714 lt!1032911))))))

(declare-fun d!841516 () Bool)

(assert (=> d!841516 e!1860984))

(declare-fun res!1219388 () Bool)

(assert (=> d!841516 (=> res!1219388 e!1860984)))

(assert (=> d!841516 (= res!1219388 e!1860987)))

(declare-fun res!1219389 () Bool)

(assert (=> d!841516 (=> (not res!1219389) (not e!1860987))))

(assert (=> d!841516 (= res!1219389 (isDefined!5206 lt!1032911))))

(assert (=> d!841516 (= lt!1032911 e!1860986)))

(declare-fun c!484147 () Bool)

(declare-fun e!1860985 () Bool)

(assert (=> d!841516 (= c!484147 e!1860985)))

(declare-fun res!1219392 () Bool)

(assert (=> d!841516 (=> (not res!1219392) (not e!1860985))))

(assert (=> d!841516 (= res!1219392 (matchR!4046 lt!1032809 Nil!34905))))

(assert (=> d!841516 (validRegex!3897 lt!1032809)))

(assert (=> d!841516 (= (findConcatSeparation!1049 lt!1032809 lt!1032815 Nil!34905 s!11993 s!11993) lt!1032911)))

(declare-fun b!2955492 () Bool)

(assert (=> b!2955492 (= e!1860985 (matchR!4046 lt!1032815 s!11993))))

(assert (= (and d!841516 res!1219392) b!2955492))

(assert (= (and d!841516 c!484147) b!2955491))

(assert (= (and d!841516 (not c!484147)) b!2955485))

(assert (= (and b!2955485 c!484148) b!2955490))

(assert (= (and b!2955485 (not c!484148)) b!2955487))

(assert (= (and d!841516 res!1219389) b!2955493))

(assert (= (and b!2955493 res!1219391) b!2955486))

(assert (= (and b!2955486 res!1219390) b!2955488))

(assert (= (and d!841516 (not res!1219388)) b!2955489))

(declare-fun m!3331743 () Bool)

(assert (=> b!2955493 m!3331743))

(declare-fun m!3331745 () Bool)

(assert (=> b!2955493 m!3331745))

(declare-fun m!3331747 () Bool)

(assert (=> b!2955489 m!3331747))

(declare-fun m!3331749 () Bool)

(assert (=> b!2955492 m!3331749))

(assert (=> b!2955486 m!3331743))

(declare-fun m!3331751 () Bool)

(assert (=> b!2955486 m!3331751))

(assert (=> b!2955488 m!3331743))

(declare-fun m!3331753 () Bool)

(assert (=> b!2955488 m!3331753))

(assert (=> d!841516 m!3331747))

(declare-fun m!3331755 () Bool)

(assert (=> d!841516 m!3331755))

(assert (=> d!841516 m!3331733))

(declare-fun m!3331757 () Bool)

(assert (=> b!2955487 m!3331757))

(assert (=> b!2955487 m!3331757))

(declare-fun m!3331759 () Bool)

(assert (=> b!2955487 m!3331759))

(declare-fun m!3331761 () Bool)

(assert (=> b!2955487 m!3331761))

(assert (=> b!2955487 m!3331757))

(declare-fun m!3331763 () Bool)

(assert (=> b!2955487 m!3331763))

(assert (=> b!2955028 d!841516))

(declare-fun d!841518 () Bool)

(assert (=> d!841518 (= (isEmptyExpr!367 lt!1032809) (is-EmptyExpr!9164 lt!1032809))))

(assert (=> b!2955027 d!841518))

(declare-fun b!2955523 () Bool)

(declare-fun e!1861011 () Bool)

(declare-fun e!1861012 () Bool)

(assert (=> b!2955523 (= e!1861011 e!1861012)))

(declare-fun res!1219407 () Bool)

(assert (=> b!2955523 (= res!1219407 (not (nullable!2920 (reg!9493 r!17423))))))

(assert (=> b!2955523 (=> (not res!1219407) (not e!1861012))))

(declare-fun bm!195700 () Bool)

(declare-fun call!195706 () Bool)

(declare-fun c!484158 () Bool)

(declare-fun c!484157 () Bool)

(assert (=> bm!195700 (= call!195706 (validRegex!3897 (ite c!484157 (reg!9493 r!17423) (ite c!484158 (regOne!18841 r!17423) (regTwo!18840 r!17423)))))))

(declare-fun b!2955524 () Bool)

(declare-fun e!1861014 () Bool)

(assert (=> b!2955524 (= e!1861014 e!1861011)))

(assert (=> b!2955524 (= c!484157 (is-Star!9164 r!17423))))

(declare-fun b!2955525 () Bool)

(declare-fun e!1861013 () Bool)

(assert (=> b!2955525 (= e!1861011 e!1861013)))

(assert (=> b!2955525 (= c!484158 (is-Union!9164 r!17423))))

(declare-fun d!841520 () Bool)

(declare-fun res!1219410 () Bool)

(assert (=> d!841520 (=> res!1219410 e!1861014)))

(assert (=> d!841520 (= res!1219410 (is-ElementMatch!9164 r!17423))))

(assert (=> d!841520 (= (validRegex!3897 r!17423) e!1861014)))

(declare-fun b!2955526 () Bool)

(assert (=> b!2955526 (= e!1861012 call!195706)))

(declare-fun bm!195701 () Bool)

(declare-fun call!195705 () Bool)

(assert (=> bm!195701 (= call!195705 (validRegex!3897 (ite c!484158 (regTwo!18841 r!17423) (regOne!18840 r!17423))))))

(declare-fun b!2955527 () Bool)

(declare-fun e!1861015 () Bool)

(declare-fun e!1861010 () Bool)

(assert (=> b!2955527 (= e!1861015 e!1861010)))

(declare-fun res!1219409 () Bool)

(assert (=> b!2955527 (=> (not res!1219409) (not e!1861010))))

(assert (=> b!2955527 (= res!1219409 call!195705)))

(declare-fun b!2955528 () Bool)

(declare-fun res!1219408 () Bool)

(assert (=> b!2955528 (=> res!1219408 e!1861015)))

(assert (=> b!2955528 (= res!1219408 (not (is-Concat!14485 r!17423)))))

(assert (=> b!2955528 (= e!1861013 e!1861015)))

(declare-fun bm!195702 () Bool)

(declare-fun call!195707 () Bool)

(assert (=> bm!195702 (= call!195707 call!195706)))

(declare-fun b!2955529 () Bool)

(declare-fun e!1861016 () Bool)

(assert (=> b!2955529 (= e!1861016 call!195705)))

(declare-fun b!2955530 () Bool)

(declare-fun res!1219406 () Bool)

(assert (=> b!2955530 (=> (not res!1219406) (not e!1861016))))

(assert (=> b!2955530 (= res!1219406 call!195707)))

(assert (=> b!2955530 (= e!1861013 e!1861016)))

(declare-fun b!2955531 () Bool)

(assert (=> b!2955531 (= e!1861010 call!195707)))

(assert (= (and d!841520 (not res!1219410)) b!2955524))

(assert (= (and b!2955524 c!484157) b!2955523))

(assert (= (and b!2955524 (not c!484157)) b!2955525))

(assert (= (and b!2955523 res!1219407) b!2955526))

(assert (= (and b!2955525 c!484158) b!2955530))

(assert (= (and b!2955525 (not c!484158)) b!2955528))

(assert (= (and b!2955530 res!1219406) b!2955529))

(assert (= (and b!2955528 (not res!1219408)) b!2955527))

(assert (= (and b!2955527 res!1219409) b!2955531))

(assert (= (or b!2955530 b!2955531) bm!195702))

(assert (= (or b!2955529 b!2955527) bm!195701))

(assert (= (or b!2955526 bm!195702) bm!195700))

(declare-fun m!3331765 () Bool)

(assert (=> b!2955523 m!3331765))

(declare-fun m!3331767 () Bool)

(assert (=> bm!195700 m!3331767))

(declare-fun m!3331769 () Bool)

(assert (=> bm!195701 m!3331769))

(assert (=> start!286502 d!841520))

(declare-fun b!2955532 () Bool)

(declare-fun e!1861017 () Bool)

(declare-fun lt!1032914 () Bool)

(assert (=> b!2955532 (= e!1861017 (not lt!1032914))))

(declare-fun b!2955533 () Bool)

(declare-fun e!1861022 () Bool)

(assert (=> b!2955533 (= e!1861022 (not (= (head!6581 s!11993) (c!484014 lt!1032812))))))

(declare-fun b!2955534 () Bool)

(declare-fun res!1219416 () Bool)

(declare-fun e!1861018 () Bool)

(assert (=> b!2955534 (=> res!1219416 e!1861018)))

(assert (=> b!2955534 (= res!1219416 (not (is-ElementMatch!9164 lt!1032812)))))

(assert (=> b!2955534 (= e!1861017 e!1861018)))

(declare-fun b!2955535 () Bool)

(declare-fun e!1861023 () Bool)

(assert (=> b!2955535 (= e!1861023 (= (head!6581 s!11993) (c!484014 lt!1032812)))))

(declare-fun b!2955536 () Bool)

(declare-fun e!1861020 () Bool)

(assert (=> b!2955536 (= e!1861020 (matchR!4046 (derivativeStep!2522 lt!1032812 (head!6581 s!11993)) (tail!4807 s!11993)))))

(declare-fun b!2955537 () Bool)

(declare-fun e!1861021 () Bool)

(assert (=> b!2955537 (= e!1861021 e!1861017)))

(declare-fun c!484160 () Bool)

(assert (=> b!2955537 (= c!484160 (is-EmptyLang!9164 lt!1032812))))

(declare-fun b!2955538 () Bool)

(assert (=> b!2955538 (= e!1861020 (nullable!2920 lt!1032812))))

(declare-fun b!2955539 () Bool)

(declare-fun res!1219414 () Bool)

(assert (=> b!2955539 (=> (not res!1219414) (not e!1861023))))

(assert (=> b!2955539 (= res!1219414 (isEmpty!19179 (tail!4807 s!11993)))))

(declare-fun d!841522 () Bool)

(assert (=> d!841522 e!1861021))

(declare-fun c!484159 () Bool)

(assert (=> d!841522 (= c!484159 (is-EmptyExpr!9164 lt!1032812))))

(assert (=> d!841522 (= lt!1032914 e!1861020)))

(declare-fun c!484161 () Bool)

(assert (=> d!841522 (= c!484161 (isEmpty!19179 s!11993))))

(assert (=> d!841522 (validRegex!3897 lt!1032812)))

(assert (=> d!841522 (= (matchR!4046 lt!1032812 s!11993) lt!1032914)))

(declare-fun b!2955540 () Bool)

(declare-fun res!1219411 () Bool)

(assert (=> b!2955540 (=> (not res!1219411) (not e!1861023))))

(declare-fun call!195708 () Bool)

(assert (=> b!2955540 (= res!1219411 (not call!195708))))

(declare-fun b!2955541 () Bool)

(declare-fun e!1861019 () Bool)

(assert (=> b!2955541 (= e!1861019 e!1861022)))

(declare-fun res!1219415 () Bool)

(assert (=> b!2955541 (=> res!1219415 e!1861022)))

(assert (=> b!2955541 (= res!1219415 call!195708)))

(declare-fun b!2955542 () Bool)

(declare-fun res!1219418 () Bool)

(assert (=> b!2955542 (=> res!1219418 e!1861018)))

(assert (=> b!2955542 (= res!1219418 e!1861023)))

(declare-fun res!1219417 () Bool)

(assert (=> b!2955542 (=> (not res!1219417) (not e!1861023))))

(assert (=> b!2955542 (= res!1219417 lt!1032914)))

(declare-fun b!2955543 () Bool)

(assert (=> b!2955543 (= e!1861018 e!1861019)))

(declare-fun res!1219413 () Bool)

(assert (=> b!2955543 (=> (not res!1219413) (not e!1861019))))

(assert (=> b!2955543 (= res!1219413 (not lt!1032914))))

(declare-fun b!2955544 () Bool)

(assert (=> b!2955544 (= e!1861021 (= lt!1032914 call!195708))))

(declare-fun b!2955545 () Bool)

(declare-fun res!1219412 () Bool)

(assert (=> b!2955545 (=> res!1219412 e!1861022)))

(assert (=> b!2955545 (= res!1219412 (not (isEmpty!19179 (tail!4807 s!11993))))))

(declare-fun bm!195703 () Bool)

(assert (=> bm!195703 (= call!195708 (isEmpty!19179 s!11993))))

(assert (= (and d!841522 c!484161) b!2955538))

(assert (= (and d!841522 (not c!484161)) b!2955536))

(assert (= (and d!841522 c!484159) b!2955544))

(assert (= (and d!841522 (not c!484159)) b!2955537))

(assert (= (and b!2955537 c!484160) b!2955532))

(assert (= (and b!2955537 (not c!484160)) b!2955534))

(assert (= (and b!2955534 (not res!1219416)) b!2955542))

(assert (= (and b!2955542 res!1219417) b!2955540))

(assert (= (and b!2955540 res!1219411) b!2955539))

(assert (= (and b!2955539 res!1219414) b!2955535))

(assert (= (and b!2955542 (not res!1219418)) b!2955543))

(assert (= (and b!2955543 res!1219413) b!2955541))

(assert (= (and b!2955541 (not res!1219415)) b!2955545))

(assert (= (and b!2955545 (not res!1219412)) b!2955533))

(assert (= (or b!2955544 b!2955540 b!2955541) bm!195703))

(declare-fun m!3331771 () Bool)

(assert (=> b!2955538 m!3331771))

(assert (=> d!841522 m!3331533))

(assert (=> d!841522 m!3331711))

(assert (=> b!2955536 m!3331621))

(assert (=> b!2955536 m!3331621))

(declare-fun m!3331773 () Bool)

(assert (=> b!2955536 m!3331773))

(assert (=> b!2955536 m!3331625))

(assert (=> b!2955536 m!3331773))

(assert (=> b!2955536 m!3331625))

(declare-fun m!3331775 () Bool)

(assert (=> b!2955536 m!3331775))

(assert (=> b!2955533 m!3331621))

(assert (=> bm!195703 m!3331533))

(assert (=> b!2955545 m!3331625))

(assert (=> b!2955545 m!3331625))

(assert (=> b!2955545 m!3331629))

(assert (=> b!2955535 m!3331621))

(assert (=> b!2955539 m!3331625))

(assert (=> b!2955539 m!3331625))

(assert (=> b!2955539 m!3331629))

(assert (=> b!2955037 d!841522))

(declare-fun d!841524 () Bool)

(assert (=> d!841524 (= (isEmpty!19179 s!11993) (is-Nil!34905 s!11993))))

(assert (=> b!2955032 d!841524))

(declare-fun b!2955546 () Bool)

(declare-fun e!1861025 () Bool)

(declare-fun e!1861026 () Bool)

(assert (=> b!2955546 (= e!1861025 e!1861026)))

(declare-fun res!1219420 () Bool)

(assert (=> b!2955546 (= res!1219420 (not (nullable!2920 (reg!9493 (regOne!18840 r!17423)))))))

(assert (=> b!2955546 (=> (not res!1219420) (not e!1861026))))

(declare-fun call!195710 () Bool)

(declare-fun bm!195704 () Bool)

(declare-fun c!484162 () Bool)

(declare-fun c!484163 () Bool)

(assert (=> bm!195704 (= call!195710 (validRegex!3897 (ite c!484162 (reg!9493 (regOne!18840 r!17423)) (ite c!484163 (regOne!18841 (regOne!18840 r!17423)) (regTwo!18840 (regOne!18840 r!17423))))))))

(declare-fun b!2955547 () Bool)

(declare-fun e!1861028 () Bool)

(assert (=> b!2955547 (= e!1861028 e!1861025)))

(assert (=> b!2955547 (= c!484162 (is-Star!9164 (regOne!18840 r!17423)))))

(declare-fun b!2955548 () Bool)

(declare-fun e!1861027 () Bool)

(assert (=> b!2955548 (= e!1861025 e!1861027)))

(assert (=> b!2955548 (= c!484163 (is-Union!9164 (regOne!18840 r!17423)))))

(declare-fun d!841526 () Bool)

(declare-fun res!1219423 () Bool)

(assert (=> d!841526 (=> res!1219423 e!1861028)))

(assert (=> d!841526 (= res!1219423 (is-ElementMatch!9164 (regOne!18840 r!17423)))))

(assert (=> d!841526 (= (validRegex!3897 (regOne!18840 r!17423)) e!1861028)))

(declare-fun b!2955549 () Bool)

(assert (=> b!2955549 (= e!1861026 call!195710)))

(declare-fun bm!195705 () Bool)

(declare-fun call!195709 () Bool)

(assert (=> bm!195705 (= call!195709 (validRegex!3897 (ite c!484163 (regTwo!18841 (regOne!18840 r!17423)) (regOne!18840 (regOne!18840 r!17423)))))))

(declare-fun b!2955550 () Bool)

(declare-fun e!1861029 () Bool)

(declare-fun e!1861024 () Bool)

(assert (=> b!2955550 (= e!1861029 e!1861024)))

(declare-fun res!1219422 () Bool)

(assert (=> b!2955550 (=> (not res!1219422) (not e!1861024))))

(assert (=> b!2955550 (= res!1219422 call!195709)))

(declare-fun b!2955551 () Bool)

(declare-fun res!1219421 () Bool)

(assert (=> b!2955551 (=> res!1219421 e!1861029)))

(assert (=> b!2955551 (= res!1219421 (not (is-Concat!14485 (regOne!18840 r!17423))))))

(assert (=> b!2955551 (= e!1861027 e!1861029)))

(declare-fun bm!195706 () Bool)

(declare-fun call!195711 () Bool)

(assert (=> bm!195706 (= call!195711 call!195710)))

(declare-fun b!2955552 () Bool)

(declare-fun e!1861030 () Bool)

(assert (=> b!2955552 (= e!1861030 call!195709)))

(declare-fun b!2955553 () Bool)

(declare-fun res!1219419 () Bool)

(assert (=> b!2955553 (=> (not res!1219419) (not e!1861030))))

(assert (=> b!2955553 (= res!1219419 call!195711)))

(assert (=> b!2955553 (= e!1861027 e!1861030)))

(declare-fun b!2955554 () Bool)

(assert (=> b!2955554 (= e!1861024 call!195711)))

(assert (= (and d!841526 (not res!1219423)) b!2955547))

(assert (= (and b!2955547 c!484162) b!2955546))

(assert (= (and b!2955547 (not c!484162)) b!2955548))

(assert (= (and b!2955546 res!1219420) b!2955549))

(assert (= (and b!2955548 c!484163) b!2955553))

(assert (= (and b!2955548 (not c!484163)) b!2955551))

(assert (= (and b!2955553 res!1219419) b!2955552))

(assert (= (and b!2955551 (not res!1219421)) b!2955550))

(assert (= (and b!2955550 res!1219422) b!2955554))

(assert (= (or b!2955553 b!2955554) bm!195706))

(assert (= (or b!2955552 b!2955550) bm!195705))

(assert (= (or b!2955549 bm!195706) bm!195704))

(declare-fun m!3331777 () Bool)

(assert (=> b!2955546 m!3331777))

(declare-fun m!3331779 () Bool)

(assert (=> bm!195704 m!3331779))

(declare-fun m!3331781 () Bool)

(assert (=> bm!195705 m!3331781))

(assert (=> b!2955026 d!841526))

(declare-fun d!841528 () Bool)

(assert (=> d!841528 (= (isEmptyLang!286 lt!1032815) (is-EmptyLang!9164 lt!1032815))))

(assert (=> b!2955025 d!841528))

(declare-fun b!2955566 () Bool)

(declare-fun e!1861033 () Bool)

(declare-fun tp!943879 () Bool)

(declare-fun tp!943880 () Bool)

(assert (=> b!2955566 (= e!1861033 (and tp!943879 tp!943880))))

(declare-fun b!2955565 () Bool)

(assert (=> b!2955565 (= e!1861033 tp_is_empty!15891)))

(assert (=> b!2955035 (= tp!943844 e!1861033)))

(declare-fun b!2955567 () Bool)

(declare-fun tp!943877 () Bool)

(assert (=> b!2955567 (= e!1861033 tp!943877)))

(declare-fun b!2955568 () Bool)

(declare-fun tp!943878 () Bool)

(declare-fun tp!943876 () Bool)

(assert (=> b!2955568 (= e!1861033 (and tp!943878 tp!943876))))

(assert (= (and b!2955035 (is-ElementMatch!9164 (regOne!18841 r!17423))) b!2955565))

(assert (= (and b!2955035 (is-Concat!14485 (regOne!18841 r!17423))) b!2955566))

(assert (= (and b!2955035 (is-Star!9164 (regOne!18841 r!17423))) b!2955567))

(assert (= (and b!2955035 (is-Union!9164 (regOne!18841 r!17423))) b!2955568))

(declare-fun b!2955570 () Bool)

(declare-fun e!1861034 () Bool)

(declare-fun tp!943884 () Bool)

(declare-fun tp!943885 () Bool)

(assert (=> b!2955570 (= e!1861034 (and tp!943884 tp!943885))))

(declare-fun b!2955569 () Bool)

(assert (=> b!2955569 (= e!1861034 tp_is_empty!15891)))

(assert (=> b!2955035 (= tp!943842 e!1861034)))

(declare-fun b!2955571 () Bool)

(declare-fun tp!943882 () Bool)

(assert (=> b!2955571 (= e!1861034 tp!943882)))

(declare-fun b!2955572 () Bool)

(declare-fun tp!943883 () Bool)

(declare-fun tp!943881 () Bool)

(assert (=> b!2955572 (= e!1861034 (and tp!943883 tp!943881))))

(assert (= (and b!2955035 (is-ElementMatch!9164 (regTwo!18841 r!17423))) b!2955569))

(assert (= (and b!2955035 (is-Concat!14485 (regTwo!18841 r!17423))) b!2955570))

(assert (= (and b!2955035 (is-Star!9164 (regTwo!18841 r!17423))) b!2955571))

(assert (= (and b!2955035 (is-Union!9164 (regTwo!18841 r!17423))) b!2955572))

(declare-fun b!2955574 () Bool)

(declare-fun e!1861035 () Bool)

(declare-fun tp!943889 () Bool)

(declare-fun tp!943890 () Bool)

(assert (=> b!2955574 (= e!1861035 (and tp!943889 tp!943890))))

(declare-fun b!2955573 () Bool)

(assert (=> b!2955573 (= e!1861035 tp_is_empty!15891)))

(assert (=> b!2955034 (= tp!943845 e!1861035)))

(declare-fun b!2955575 () Bool)

(declare-fun tp!943887 () Bool)

(assert (=> b!2955575 (= e!1861035 tp!943887)))

(declare-fun b!2955576 () Bool)

(declare-fun tp!943888 () Bool)

(declare-fun tp!943886 () Bool)

(assert (=> b!2955576 (= e!1861035 (and tp!943888 tp!943886))))

(assert (= (and b!2955034 (is-ElementMatch!9164 (regOne!18840 r!17423))) b!2955573))

(assert (= (and b!2955034 (is-Concat!14485 (regOne!18840 r!17423))) b!2955574))

(assert (= (and b!2955034 (is-Star!9164 (regOne!18840 r!17423))) b!2955575))

(assert (= (and b!2955034 (is-Union!9164 (regOne!18840 r!17423))) b!2955576))

(declare-fun b!2955578 () Bool)

(declare-fun e!1861036 () Bool)

(declare-fun tp!943894 () Bool)

(declare-fun tp!943895 () Bool)

(assert (=> b!2955578 (= e!1861036 (and tp!943894 tp!943895))))

(declare-fun b!2955577 () Bool)

(assert (=> b!2955577 (= e!1861036 tp_is_empty!15891)))

(assert (=> b!2955034 (= tp!943846 e!1861036)))

(declare-fun b!2955579 () Bool)

(declare-fun tp!943892 () Bool)

(assert (=> b!2955579 (= e!1861036 tp!943892)))

(declare-fun b!2955580 () Bool)

(declare-fun tp!943893 () Bool)

(declare-fun tp!943891 () Bool)

(assert (=> b!2955580 (= e!1861036 (and tp!943893 tp!943891))))

(assert (= (and b!2955034 (is-ElementMatch!9164 (regTwo!18840 r!17423))) b!2955577))

(assert (= (and b!2955034 (is-Concat!14485 (regTwo!18840 r!17423))) b!2955578))

(assert (= (and b!2955034 (is-Star!9164 (regTwo!18840 r!17423))) b!2955579))

(assert (= (and b!2955034 (is-Union!9164 (regTwo!18840 r!17423))) b!2955580))

(declare-fun b!2955582 () Bool)

(declare-fun e!1861037 () Bool)

(declare-fun tp!943899 () Bool)

(declare-fun tp!943900 () Bool)

(assert (=> b!2955582 (= e!1861037 (and tp!943899 tp!943900))))

(declare-fun b!2955581 () Bool)

(assert (=> b!2955581 (= e!1861037 tp_is_empty!15891)))

(assert (=> b!2955031 (= tp!943843 e!1861037)))

(declare-fun b!2955583 () Bool)

(declare-fun tp!943897 () Bool)

(assert (=> b!2955583 (= e!1861037 tp!943897)))

(declare-fun b!2955584 () Bool)

(declare-fun tp!943898 () Bool)

(declare-fun tp!943896 () Bool)

(assert (=> b!2955584 (= e!1861037 (and tp!943898 tp!943896))))

(assert (= (and b!2955031 (is-ElementMatch!9164 (reg!9493 r!17423))) b!2955581))

(assert (= (and b!2955031 (is-Concat!14485 (reg!9493 r!17423))) b!2955582))

(assert (= (and b!2955031 (is-Star!9164 (reg!9493 r!17423))) b!2955583))

(assert (= (and b!2955031 (is-Union!9164 (reg!9493 r!17423))) b!2955584))

(declare-fun b!2955589 () Bool)

(declare-fun e!1861040 () Bool)

(declare-fun tp!943903 () Bool)

(assert (=> b!2955589 (= e!1861040 (and tp_is_empty!15891 tp!943903))))

(assert (=> b!2955036 (= tp!943847 e!1861040)))

(assert (= (and b!2955036 (is-Cons!34905 (t!234094 s!11993))) b!2955589))

(push 1)

(assert (not bm!195701))

(assert (not b!2955361))

(assert (not b!2955578))

(assert (not b!2955545))

(assert (not b!2955572))

(assert (not bm!195677))

(assert (not b!2955388))

(assert (not b!2955343))

(assert (not b!2955223))

(assert (not bm!195700))

(assert (not bm!195674))

(assert (not b!2955134))

(assert (not d!841522))

(assert (not b!2955533))

(assert (not b!2955486))

(assert (not d!841496))

(assert (not b!2955538))

(assert (not b!2955222))

(assert (not b!2955571))

(assert (not d!841484))

(assert (not b!2955568))

(assert (not bm!195667))

(assert (not bm!195704))

(assert (not d!841490))

(assert (not b!2955225))

(assert (not b!2955536))

(assert (not b!2955135))

(assert (not bm!195669))

(assert (not d!841504))

(assert (not bm!195676))

(assert (not bm!195705))

(assert (not b!2955539))

(assert (not b!2955582))

(assert (not b!2955232))

(assert (not b!2955488))

(assert (not b!2955576))

(assert (not b!2955368))

(assert (not b!2955583))

(assert (not b!2955387))

(assert (not bm!195665))

(assert (not bm!195617))

(assert (not d!841498))

(assert (not b!2955523))

(assert (not bm!195670))

(assert (not b!2955579))

(assert (not b!2955487))

(assert (not bm!195616))

(assert (not b!2955584))

(assert (not bm!195663))

(assert (not d!841482))

(assert (not b!2955566))

(assert (not b!2955336))

(assert (not b!2955220))

(assert (not b!2955226))

(assert tp_is_empty!15891)

(assert (not bm!195678))

(assert (not b!2955589))

(assert (not d!841502))

(assert (not b!2955580))

(assert (not d!841514))

(assert (not bm!195668))

(assert (not b!2955546))

(assert (not b!2955574))

(assert (not bm!195703))

(assert (not bm!195634))

(assert (not d!841516))

(assert (not b!2955493))

(assert (not b!2955535))

(assert (not d!841512))

(assert (not b!2955570))

(assert (not b!2955567))

(assert (not bm!195672))

(assert (not bm!195675))

(assert (not b!2955492))

(assert (not b!2955575))

(assert (not d!841510))

(assert (not b!2955489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

