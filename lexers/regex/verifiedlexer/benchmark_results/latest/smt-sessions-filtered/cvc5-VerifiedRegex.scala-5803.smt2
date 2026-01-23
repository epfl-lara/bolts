; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286274 () Bool)

(assert start!286274)

(declare-fun b!2951954 () Bool)

(assert (=> b!2951954 true))

(assert (=> b!2951954 true))

(assert (=> b!2951954 true))

(declare-fun lambda!109816 () Int)

(declare-fun lambda!109815 () Int)

(assert (=> b!2951954 (not (= lambda!109816 lambda!109815))))

(assert (=> b!2951954 true))

(assert (=> b!2951954 true))

(assert (=> b!2951954 true))

(declare-fun b!2951944 () Bool)

(declare-fun e!1859089 () Bool)

(declare-fun tp_is_empty!15875 () Bool)

(assert (=> b!2951944 (= e!1859089 tp_is_empty!15875)))

(declare-fun b!2951945 () Bool)

(declare-fun e!1859086 () Bool)

(declare-fun e!1859087 () Bool)

(assert (=> b!2951945 (= e!1859086 e!1859087)))

(declare-fun res!1217976 () Bool)

(assert (=> b!2951945 (=> res!1217976 e!1859087)))

(declare-datatypes ((C!18498 0))(
  ( (C!18499 (val!11285 Int)) )
))
(declare-datatypes ((Regex!9156 0))(
  ( (ElementMatch!9156 (c!483304 C!18498)) (Concat!14477 (regOne!18824 Regex!9156) (regTwo!18824 Regex!9156)) (EmptyExpr!9156) (Star!9156 (reg!9485 Regex!9156)) (EmptyLang!9156) (Union!9156 (regOne!18825 Regex!9156) (regTwo!18825 Regex!9156)) )
))
(declare-fun lt!1032233 () Regex!9156)

(declare-fun isEmptyLang!278 (Regex!9156) Bool)

(assert (=> b!2951945 (= res!1217976 (isEmptyLang!278 lt!1032233))))

(declare-fun lt!1032239 () Regex!9156)

(declare-fun r!17423 () Regex!9156)

(declare-fun simplify!161 (Regex!9156) Regex!9156)

(assert (=> b!2951945 (= lt!1032239 (simplify!161 (regTwo!18824 r!17423)))))

(assert (=> b!2951945 (= lt!1032233 (simplify!161 (regOne!18824 r!17423)))))

(declare-fun b!2951946 () Bool)

(declare-fun tp!943399 () Bool)

(assert (=> b!2951946 (= e!1859089 tp!943399)))

(declare-fun b!2951947 () Bool)

(declare-fun res!1217980 () Bool)

(assert (=> b!2951947 (=> res!1217980 e!1859087)))

(declare-fun isEmptyExpr!359 (Regex!9156) Bool)

(assert (=> b!2951947 (= res!1217980 (isEmptyExpr!359 lt!1032239))))

(declare-fun b!2951948 () Bool)

(declare-fun res!1217977 () Bool)

(assert (=> b!2951948 (=> res!1217977 e!1859087)))

(assert (=> b!2951948 (= res!1217977 (isEmptyLang!278 lt!1032239))))

(declare-fun b!2951949 () Bool)

(declare-fun tp!943395 () Bool)

(declare-fun tp!943394 () Bool)

(assert (=> b!2951949 (= e!1859089 (and tp!943395 tp!943394))))

(declare-fun b!2951950 () Bool)

(declare-fun e!1859084 () Bool)

(assert (=> b!2951950 (= e!1859084 (not e!1859086))))

(declare-fun res!1217975 () Bool)

(assert (=> b!2951950 (=> res!1217975 e!1859086)))

(declare-fun lt!1032235 () Bool)

(assert (=> b!2951950 (= res!1217975 (or lt!1032235 (not (is-Concat!14477 r!17423))))))

(declare-datatypes ((List!35021 0))(
  ( (Nil!34897) (Cons!34897 (h!40317 C!18498) (t!234086 List!35021)) )
))
(declare-fun s!11993 () List!35021)

(declare-fun matchRSpec!1293 (Regex!9156 List!35021) Bool)

(assert (=> b!2951950 (= lt!1032235 (matchRSpec!1293 r!17423 s!11993))))

(declare-fun matchR!4038 (Regex!9156 List!35021) Bool)

(assert (=> b!2951950 (= lt!1032235 (matchR!4038 r!17423 s!11993))))

(declare-datatypes ((Unit!48691 0))(
  ( (Unit!48692) )
))
(declare-fun lt!1032237 () Unit!48691)

(declare-fun mainMatchTheorem!1293 (Regex!9156 List!35021) Unit!48691)

(assert (=> b!2951950 (= lt!1032237 (mainMatchTheorem!1293 r!17423 s!11993))))

(declare-fun b!2951952 () Bool)

(declare-fun res!1217974 () Bool)

(assert (=> b!2951952 (=> res!1217974 e!1859087)))

(assert (=> b!2951952 (= res!1217974 (isEmptyExpr!359 lt!1032233))))

(declare-fun b!2951953 () Bool)

(declare-fun e!1859085 () Bool)

(declare-fun tp!943397 () Bool)

(assert (=> b!2951953 (= e!1859085 (and tp_is_empty!15875 tp!943397))))

(declare-fun e!1859088 () Bool)

(declare-fun validRegex!3889 (Regex!9156) Bool)

(assert (=> b!2951954 (= e!1859088 (validRegex!3889 (regTwo!18824 r!17423)))))

(declare-fun Exists!1488 (Int) Bool)

(assert (=> b!2951954 (= (Exists!1488 lambda!109815) (Exists!1488 lambda!109816))))

(declare-fun lt!1032236 () Unit!48691)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!509 (Regex!9156 Regex!9156 List!35021) Unit!48691)

(assert (=> b!2951954 (= lt!1032236 (lemmaExistCutMatchRandMatchRSpecEquivalent!509 lt!1032233 lt!1032239 s!11993))))

(declare-datatypes ((tuple2!33830 0))(
  ( (tuple2!33831 (_1!20047 List!35021) (_2!20047 List!35021)) )
))
(declare-datatypes ((Option!6647 0))(
  ( (None!6646) (Some!6646 (v!34780 tuple2!33830)) )
))
(declare-fun isDefined!5198 (Option!6647) Bool)

(declare-fun findConcatSeparation!1041 (Regex!9156 Regex!9156 List!35021 List!35021 List!35021) Option!6647)

(assert (=> b!2951954 (= (isDefined!5198 (findConcatSeparation!1041 lt!1032233 lt!1032239 Nil!34897 s!11993 s!11993)) (Exists!1488 lambda!109815))))

(declare-fun lt!1032232 () Unit!48691)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!819 (Regex!9156 Regex!9156 List!35021) Unit!48691)

(assert (=> b!2951954 (= lt!1032232 (lemmaFindConcatSeparationEquivalentToExists!819 lt!1032233 lt!1032239 s!11993))))

(declare-fun lt!1032234 () Regex!9156)

(assert (=> b!2951954 (matchRSpec!1293 lt!1032234 s!11993)))

(declare-fun lt!1032238 () Unit!48691)

(assert (=> b!2951954 (= lt!1032238 (mainMatchTheorem!1293 lt!1032234 s!11993))))

(declare-fun b!2951955 () Bool)

(declare-fun res!1217979 () Bool)

(assert (=> b!2951955 (=> res!1217979 e!1859086)))

(declare-fun isEmpty!19163 (List!35021) Bool)

(assert (=> b!2951955 (= res!1217979 (isEmpty!19163 s!11993))))

(declare-fun b!2951956 () Bool)

(assert (=> b!2951956 (= e!1859087 e!1859088)))

(declare-fun res!1217978 () Bool)

(assert (=> b!2951956 (=> res!1217978 e!1859088)))

(assert (=> b!2951956 (= res!1217978 (not (matchR!4038 lt!1032234 s!11993)))))

(assert (=> b!2951956 (= lt!1032234 (Concat!14477 lt!1032233 lt!1032239))))

(declare-fun b!2951951 () Bool)

(declare-fun tp!943396 () Bool)

(declare-fun tp!943398 () Bool)

(assert (=> b!2951951 (= e!1859089 (and tp!943396 tp!943398))))

(declare-fun res!1217973 () Bool)

(assert (=> start!286274 (=> (not res!1217973) (not e!1859084))))

(assert (=> start!286274 (= res!1217973 (validRegex!3889 r!17423))))

(assert (=> start!286274 e!1859084))

(assert (=> start!286274 e!1859089))

(assert (=> start!286274 e!1859085))

(assert (= (and start!286274 res!1217973) b!2951950))

(assert (= (and b!2951950 (not res!1217975)) b!2951955))

(assert (= (and b!2951955 (not res!1217979)) b!2951945))

(assert (= (and b!2951945 (not res!1217976)) b!2951948))

(assert (= (and b!2951948 (not res!1217977)) b!2951952))

(assert (= (and b!2951952 (not res!1217974)) b!2951947))

(assert (= (and b!2951947 (not res!1217980)) b!2951956))

(assert (= (and b!2951956 (not res!1217978)) b!2951954))

(assert (= (and start!286274 (is-ElementMatch!9156 r!17423)) b!2951944))

(assert (= (and start!286274 (is-Concat!14477 r!17423)) b!2951951))

(assert (= (and start!286274 (is-Star!9156 r!17423)) b!2951946))

(assert (= (and start!286274 (is-Union!9156 r!17423)) b!2951949))

(assert (= (and start!286274 (is-Cons!34897 s!11993)) b!2951953))

(declare-fun m!3330121 () Bool)

(assert (=> b!2951952 m!3330121))

(declare-fun m!3330123 () Bool)

(assert (=> b!2951945 m!3330123))

(declare-fun m!3330125 () Bool)

(assert (=> b!2951945 m!3330125))

(declare-fun m!3330127 () Bool)

(assert (=> b!2951945 m!3330127))

(declare-fun m!3330129 () Bool)

(assert (=> b!2951950 m!3330129))

(declare-fun m!3330131 () Bool)

(assert (=> b!2951950 m!3330131))

(declare-fun m!3330133 () Bool)

(assert (=> b!2951950 m!3330133))

(declare-fun m!3330135 () Bool)

(assert (=> b!2951947 m!3330135))

(declare-fun m!3330137 () Bool)

(assert (=> b!2951956 m!3330137))

(declare-fun m!3330139 () Bool)

(assert (=> b!2951954 m!3330139))

(declare-fun m!3330141 () Bool)

(assert (=> b!2951954 m!3330141))

(declare-fun m!3330143 () Bool)

(assert (=> b!2951954 m!3330143))

(declare-fun m!3330145 () Bool)

(assert (=> b!2951954 m!3330145))

(declare-fun m!3330147 () Bool)

(assert (=> b!2951954 m!3330147))

(declare-fun m!3330149 () Bool)

(assert (=> b!2951954 m!3330149))

(assert (=> b!2951954 m!3330145))

(declare-fun m!3330151 () Bool)

(assert (=> b!2951954 m!3330151))

(declare-fun m!3330153 () Bool)

(assert (=> b!2951954 m!3330153))

(declare-fun m!3330155 () Bool)

(assert (=> b!2951954 m!3330155))

(assert (=> b!2951954 m!3330141))

(declare-fun m!3330157 () Bool)

(assert (=> b!2951955 m!3330157))

(declare-fun m!3330159 () Bool)

(assert (=> b!2951948 m!3330159))

(declare-fun m!3330161 () Bool)

(assert (=> start!286274 m!3330161))

(push 1)

(assert (not b!2951948))

(assert (not start!286274))

(assert (not b!2951946))

(assert (not b!2951949))

(assert (not b!2951956))

(assert (not b!2951945))

(assert (not b!2951954))

(assert (not b!2951955))

(assert (not b!2951951))

(assert (not b!2951953))

(assert tp_is_empty!15875)

(assert (not b!2951950))

(assert (not b!2951947))

(assert (not b!2951952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!841124 () Bool)

(assert (=> d!841124 (= (isEmpty!19163 s!11993) (is-Nil!34897 s!11993))))

(assert (=> b!2951955 d!841124))

(declare-fun bs!525787 () Bool)

(declare-fun b!2952084 () Bool)

(assert (= bs!525787 (and b!2952084 b!2951954)))

(declare-fun lambda!109829 () Int)

(assert (=> bs!525787 (not (= lambda!109829 lambda!109815))))

(assert (=> bs!525787 (not (= lambda!109829 lambda!109816))))

(assert (=> b!2952084 true))

(assert (=> b!2952084 true))

(declare-fun bs!525788 () Bool)

(declare-fun b!2952076 () Bool)

(assert (= bs!525788 (and b!2952076 b!2951954)))

(declare-fun lambda!109830 () Int)

(assert (=> bs!525788 (not (= lambda!109830 lambda!109815))))

(assert (=> bs!525788 (= (and (= (regOne!18824 r!17423) lt!1032233) (= (regTwo!18824 r!17423) lt!1032239)) (= lambda!109830 lambda!109816))))

(declare-fun bs!525789 () Bool)

(assert (= bs!525789 (and b!2952076 b!2952084)))

(assert (=> bs!525789 (not (= lambda!109830 lambda!109829))))

(assert (=> b!2952076 true))

(assert (=> b!2952076 true))

(declare-fun b!2952075 () Bool)

(declare-fun e!1859153 () Bool)

(declare-fun e!1859158 () Bool)

(assert (=> b!2952075 (= e!1859153 e!1859158)))

(declare-fun res!1218048 () Bool)

(assert (=> b!2952075 (= res!1218048 (matchRSpec!1293 (regOne!18825 r!17423) s!11993))))

(assert (=> b!2952075 (=> res!1218048 e!1859158)))

(declare-fun d!841128 () Bool)

(declare-fun c!483320 () Bool)

(assert (=> d!841128 (= c!483320 (is-EmptyExpr!9156 r!17423))))

(declare-fun e!1859156 () Bool)

(assert (=> d!841128 (= (matchRSpec!1293 r!17423 s!11993) e!1859156)))

(declare-fun e!1859154 () Bool)

(declare-fun call!195203 () Bool)

(assert (=> b!2952076 (= e!1859154 call!195203)))

(declare-fun b!2952077 () Bool)

(assert (=> b!2952077 (= e!1859153 e!1859154)))

(declare-fun c!483323 () Bool)

(assert (=> b!2952077 (= c!483323 (is-Star!9156 r!17423))))

(declare-fun b!2952078 () Bool)

(declare-fun c!483321 () Bool)

(assert (=> b!2952078 (= c!483321 (is-Union!9156 r!17423))))

(declare-fun e!1859157 () Bool)

(assert (=> b!2952078 (= e!1859157 e!1859153)))

(declare-fun b!2952079 () Bool)

(declare-fun call!195202 () Bool)

(assert (=> b!2952079 (= e!1859156 call!195202)))

(declare-fun b!2952080 () Bool)

(assert (=> b!2952080 (= e!1859157 (= s!11993 (Cons!34897 (c!483304 r!17423) Nil!34897)))))

(declare-fun b!2952081 () Bool)

(declare-fun e!1859155 () Bool)

(assert (=> b!2952081 (= e!1859156 e!1859155)))

(declare-fun res!1218049 () Bool)

(assert (=> b!2952081 (= res!1218049 (not (is-EmptyLang!9156 r!17423)))))

(assert (=> b!2952081 (=> (not res!1218049) (not e!1859155))))

(declare-fun bm!195197 () Bool)

(assert (=> bm!195197 (= call!195202 (isEmpty!19163 s!11993))))

(declare-fun b!2952082 () Bool)

(declare-fun res!1218050 () Bool)

(declare-fun e!1859159 () Bool)

(assert (=> b!2952082 (=> res!1218050 e!1859159)))

(assert (=> b!2952082 (= res!1218050 call!195202)))

(assert (=> b!2952082 (= e!1859154 e!1859159)))

(declare-fun bm!195198 () Bool)

(assert (=> bm!195198 (= call!195203 (Exists!1488 (ite c!483323 lambda!109829 lambda!109830)))))

(declare-fun b!2952083 () Bool)

(assert (=> b!2952083 (= e!1859158 (matchRSpec!1293 (regTwo!18825 r!17423) s!11993))))

(assert (=> b!2952084 (= e!1859159 call!195203)))

(declare-fun b!2952085 () Bool)

(declare-fun c!483322 () Bool)

(assert (=> b!2952085 (= c!483322 (is-ElementMatch!9156 r!17423))))

(assert (=> b!2952085 (= e!1859155 e!1859157)))

(assert (= (and d!841128 c!483320) b!2952079))

(assert (= (and d!841128 (not c!483320)) b!2952081))

(assert (= (and b!2952081 res!1218049) b!2952085))

(assert (= (and b!2952085 c!483322) b!2952080))

(assert (= (and b!2952085 (not c!483322)) b!2952078))

(assert (= (and b!2952078 c!483321) b!2952075))

(assert (= (and b!2952078 (not c!483321)) b!2952077))

(assert (= (and b!2952075 (not res!1218048)) b!2952083))

(assert (= (and b!2952077 c!483323) b!2952082))

(assert (= (and b!2952077 (not c!483323)) b!2952076))

(assert (= (and b!2952082 (not res!1218050)) b!2952084))

(assert (= (or b!2952084 b!2952076) bm!195198))

(assert (= (or b!2952079 b!2952082) bm!195197))

(declare-fun m!3330211 () Bool)

(assert (=> b!2952075 m!3330211))

(assert (=> bm!195197 m!3330157))

(declare-fun m!3330213 () Bool)

(assert (=> bm!195198 m!3330213))

(declare-fun m!3330215 () Bool)

(assert (=> b!2952083 m!3330215))

(assert (=> b!2951950 d!841128))

(declare-fun b!2952123 () Bool)

(declare-fun e!1859187 () Bool)

(declare-fun nullable!2912 (Regex!9156) Bool)

(assert (=> b!2952123 (= e!1859187 (nullable!2912 r!17423))))

(declare-fun b!2952124 () Bool)

(declare-fun e!1859183 () Bool)

(declare-fun head!6573 (List!35021) C!18498)

(assert (=> b!2952124 (= e!1859183 (= (head!6573 s!11993) (c!483304 r!17423)))))

(declare-fun bm!195204 () Bool)

(declare-fun call!195209 () Bool)

(assert (=> bm!195204 (= call!195209 (isEmpty!19163 s!11993))))

(declare-fun d!841132 () Bool)

(declare-fun e!1859186 () Bool)

(assert (=> d!841132 e!1859186))

(declare-fun c!483333 () Bool)

(assert (=> d!841132 (= c!483333 (is-EmptyExpr!9156 r!17423))))

(declare-fun lt!1032266 () Bool)

(assert (=> d!841132 (= lt!1032266 e!1859187)))

(declare-fun c!483332 () Bool)

(assert (=> d!841132 (= c!483332 (isEmpty!19163 s!11993))))

(assert (=> d!841132 (validRegex!3889 r!17423)))

(assert (=> d!841132 (= (matchR!4038 r!17423 s!11993) lt!1032266)))

(declare-fun b!2952125 () Bool)

(declare-fun e!1859185 () Bool)

(assert (=> b!2952125 (= e!1859185 (not lt!1032266))))

(declare-fun b!2952126 () Bool)

(declare-fun res!1218078 () Bool)

(assert (=> b!2952126 (=> (not res!1218078) (not e!1859183))))

(assert (=> b!2952126 (= res!1218078 (not call!195209))))

(declare-fun b!2952127 () Bool)

(declare-fun e!1859182 () Bool)

(declare-fun e!1859184 () Bool)

(assert (=> b!2952127 (= e!1859182 e!1859184)))

(declare-fun res!1218074 () Bool)

(assert (=> b!2952127 (=> res!1218074 e!1859184)))

(assert (=> b!2952127 (= res!1218074 call!195209)))

(declare-fun b!2952128 () Bool)

(declare-fun derivativeStep!2514 (Regex!9156 C!18498) Regex!9156)

(declare-fun tail!4799 (List!35021) List!35021)

(assert (=> b!2952128 (= e!1859187 (matchR!4038 (derivativeStep!2514 r!17423 (head!6573 s!11993)) (tail!4799 s!11993)))))

(declare-fun b!2952129 () Bool)

(assert (=> b!2952129 (= e!1859186 (= lt!1032266 call!195209))))

(declare-fun b!2952130 () Bool)

(declare-fun res!1218076 () Bool)

(declare-fun e!1859181 () Bool)

(assert (=> b!2952130 (=> res!1218076 e!1859181)))

(assert (=> b!2952130 (= res!1218076 e!1859183)))

(declare-fun res!1218077 () Bool)

(assert (=> b!2952130 (=> (not res!1218077) (not e!1859183))))

(assert (=> b!2952130 (= res!1218077 lt!1032266)))

(declare-fun b!2952131 () Bool)

(declare-fun res!1218075 () Bool)

(assert (=> b!2952131 (=> res!1218075 e!1859184)))

(assert (=> b!2952131 (= res!1218075 (not (isEmpty!19163 (tail!4799 s!11993))))))

(declare-fun b!2952132 () Bool)

(assert (=> b!2952132 (= e!1859186 e!1859185)))

(declare-fun c!483334 () Bool)

(assert (=> b!2952132 (= c!483334 (is-EmptyLang!9156 r!17423))))

(declare-fun b!2952133 () Bool)

(assert (=> b!2952133 (= e!1859184 (not (= (head!6573 s!11993) (c!483304 r!17423))))))

(declare-fun b!2952134 () Bool)

(declare-fun res!1218079 () Bool)

(assert (=> b!2952134 (=> (not res!1218079) (not e!1859183))))

(assert (=> b!2952134 (= res!1218079 (isEmpty!19163 (tail!4799 s!11993)))))

(declare-fun b!2952135 () Bool)

(assert (=> b!2952135 (= e!1859181 e!1859182)))

(declare-fun res!1218073 () Bool)

(assert (=> b!2952135 (=> (not res!1218073) (not e!1859182))))

(assert (=> b!2952135 (= res!1218073 (not lt!1032266))))

(declare-fun b!2952136 () Bool)

(declare-fun res!1218072 () Bool)

(assert (=> b!2952136 (=> res!1218072 e!1859181)))

(assert (=> b!2952136 (= res!1218072 (not (is-ElementMatch!9156 r!17423)))))

(assert (=> b!2952136 (= e!1859185 e!1859181)))

(assert (= (and d!841132 c!483332) b!2952123))

(assert (= (and d!841132 (not c!483332)) b!2952128))

(assert (= (and d!841132 c!483333) b!2952129))

(assert (= (and d!841132 (not c!483333)) b!2952132))

(assert (= (and b!2952132 c!483334) b!2952125))

(assert (= (and b!2952132 (not c!483334)) b!2952136))

(assert (= (and b!2952136 (not res!1218072)) b!2952130))

(assert (= (and b!2952130 res!1218077) b!2952126))

(assert (= (and b!2952126 res!1218078) b!2952134))

(assert (= (and b!2952134 res!1218079) b!2952124))

(assert (= (and b!2952130 (not res!1218076)) b!2952135))

(assert (= (and b!2952135 res!1218073) b!2952127))

(assert (= (and b!2952127 (not res!1218074)) b!2952131))

(assert (= (and b!2952131 (not res!1218075)) b!2952133))

(assert (= (or b!2952129 b!2952126 b!2952127) bm!195204))

(declare-fun m!3330225 () Bool)

(assert (=> b!2952124 m!3330225))

(assert (=> b!2952133 m!3330225))

(declare-fun m!3330227 () Bool)

(assert (=> b!2952123 m!3330227))

(assert (=> d!841132 m!3330157))

(assert (=> d!841132 m!3330161))

(declare-fun m!3330229 () Bool)

(assert (=> b!2952131 m!3330229))

(assert (=> b!2952131 m!3330229))

(declare-fun m!3330231 () Bool)

(assert (=> b!2952131 m!3330231))

(assert (=> b!2952134 m!3330229))

(assert (=> b!2952134 m!3330229))

(assert (=> b!2952134 m!3330231))

(assert (=> bm!195204 m!3330157))

(assert (=> b!2952128 m!3330225))

(assert (=> b!2952128 m!3330225))

(declare-fun m!3330233 () Bool)

(assert (=> b!2952128 m!3330233))

(assert (=> b!2952128 m!3330229))

(assert (=> b!2952128 m!3330233))

(assert (=> b!2952128 m!3330229))

(declare-fun m!3330235 () Bool)

(assert (=> b!2952128 m!3330235))

(assert (=> b!2951950 d!841132))

(declare-fun d!841138 () Bool)

(assert (=> d!841138 (= (matchR!4038 r!17423 s!11993) (matchRSpec!1293 r!17423 s!11993))))

(declare-fun lt!1032269 () Unit!48691)

(declare-fun choose!17441 (Regex!9156 List!35021) Unit!48691)

(assert (=> d!841138 (= lt!1032269 (choose!17441 r!17423 s!11993))))

(assert (=> d!841138 (validRegex!3889 r!17423)))

(assert (=> d!841138 (= (mainMatchTheorem!1293 r!17423 s!11993) lt!1032269)))

(declare-fun bs!525791 () Bool)

(assert (= bs!525791 d!841138))

(assert (=> bs!525791 m!3330131))

(assert (=> bs!525791 m!3330129))

(declare-fun m!3330237 () Bool)

(assert (=> bs!525791 m!3330237))

(assert (=> bs!525791 m!3330161))

(assert (=> b!2951950 d!841138))

(declare-fun d!841140 () Bool)

(assert (=> d!841140 (= (isEmptyLang!278 lt!1032233) (is-EmptyLang!9156 lt!1032233))))

(assert (=> b!2951945 d!841140))

(declare-fun b!2952214 () Bool)

(declare-fun e!1859232 () Bool)

(declare-fun call!195230 () Bool)

(assert (=> b!2952214 (= e!1859232 call!195230)))

(declare-fun b!2952215 () Bool)

(declare-fun c!483362 () Bool)

(assert (=> b!2952215 (= c!483362 call!195230)))

(declare-fun e!1859240 () Regex!9156)

(declare-fun e!1859244 () Regex!9156)

(assert (=> b!2952215 (= e!1859240 e!1859244)))

(declare-fun b!2952216 () Bool)

(declare-fun e!1859226 () Regex!9156)

(assert (=> b!2952216 (= e!1859226 e!1859240)))

(declare-fun lt!1032295 () Regex!9156)

(declare-fun call!195227 () Regex!9156)

(assert (=> b!2952216 (= lt!1032295 call!195227)))

(declare-fun lt!1032292 () Regex!9156)

(declare-fun call!195228 () Regex!9156)

(assert (=> b!2952216 (= lt!1032292 call!195228)))

(declare-fun res!1218101 () Bool)

(declare-fun call!195229 () Bool)

(assert (=> b!2952216 (= res!1218101 call!195229)))

(declare-fun e!1859239 () Bool)

(assert (=> b!2952216 (=> res!1218101 e!1859239)))

(declare-fun c!483371 () Bool)

(assert (=> b!2952216 (= c!483371 e!1859239)))

(declare-fun b!2952217 () Bool)

(declare-fun c!483373 () Bool)

(assert (=> b!2952217 (= c!483373 (is-EmptyExpr!9156 (regTwo!18824 r!17423)))))

(declare-fun e!1859227 () Regex!9156)

(declare-fun e!1859241 () Regex!9156)

(assert (=> b!2952217 (= e!1859227 e!1859241)))

(declare-fun b!2952218 () Bool)

(assert (=> b!2952218 (= e!1859241 EmptyExpr!9156)))

(declare-fun b!2952219 () Bool)

(declare-fun e!1859242 () Regex!9156)

(assert (=> b!2952219 (= e!1859242 EmptyLang!9156)))

(declare-fun b!2952220 () Bool)

(declare-fun e!1859229 () Regex!9156)

(assert (=> b!2952220 (= e!1859229 (Concat!14477 lt!1032295 lt!1032292))))

(declare-fun b!2952221 () Bool)

(assert (=> b!2952221 (= e!1859229 lt!1032295)))

(declare-fun d!841142 () Bool)

(declare-fun e!1859237 () Bool)

(assert (=> d!841142 e!1859237))

(declare-fun res!1218103 () Bool)

(assert (=> d!841142 (=> (not res!1218103) (not e!1859237))))

(declare-fun lt!1032289 () Regex!9156)

(assert (=> d!841142 (= res!1218103 (validRegex!3889 lt!1032289))))

(assert (=> d!841142 (= lt!1032289 e!1859242)))

(declare-fun c!483363 () Bool)

(assert (=> d!841142 (= c!483363 (is-EmptyLang!9156 (regTwo!18824 r!17423)))))

(assert (=> d!841142 (validRegex!3889 (regTwo!18824 r!17423))))

(assert (=> d!841142 (= (simplify!161 (regTwo!18824 r!17423)) lt!1032289)))

(declare-fun b!2952222 () Bool)

(declare-fun c!483364 () Bool)

(assert (=> b!2952222 (= c!483364 call!195229)))

(declare-fun e!1859231 () Regex!9156)

(declare-fun e!1859238 () Regex!9156)

(assert (=> b!2952222 (= e!1859231 e!1859238)))

(declare-fun b!2952223 () Bool)

(assert (=> b!2952223 (= e!1859227 (regTwo!18824 r!17423))))

(declare-fun b!2952224 () Bool)

(assert (=> b!2952224 (= e!1859226 e!1859231)))

(declare-fun lt!1032288 () Regex!9156)

(assert (=> b!2952224 (= lt!1032288 call!195228)))

(declare-fun lt!1032296 () Regex!9156)

(assert (=> b!2952224 (= lt!1032296 call!195227)))

(declare-fun c!483367 () Bool)

(declare-fun call!195224 () Bool)

(assert (=> b!2952224 (= c!483367 call!195224)))

(declare-fun b!2952225 () Bool)

(assert (=> b!2952225 (= e!1859244 e!1859229)))

(declare-fun c!483361 () Bool)

(assert (=> b!2952225 (= c!483361 (isEmptyExpr!359 lt!1032292))))

(declare-fun b!2952226 () Bool)

(assert (=> b!2952226 (= e!1859239 call!195224)))

(declare-fun b!2952227 () Bool)

(declare-fun c!483369 () Bool)

(assert (=> b!2952227 (= c!483369 e!1859232)))

(declare-fun res!1218102 () Bool)

(assert (=> b!2952227 (=> res!1218102 e!1859232)))

(declare-fun call!195225 () Bool)

(assert (=> b!2952227 (= res!1218102 call!195225)))

(declare-fun lt!1032291 () Regex!9156)

(declare-fun call!195226 () Regex!9156)

(assert (=> b!2952227 (= lt!1032291 call!195226)))

(declare-fun e!1859230 () Regex!9156)

(declare-fun e!1859243 () Regex!9156)

(assert (=> b!2952227 (= e!1859230 e!1859243)))

(declare-fun b!2952228 () Bool)

(assert (=> b!2952228 (= e!1859237 (= (nullable!2912 lt!1032289) (nullable!2912 (regTwo!18824 r!17423))))))

(declare-fun b!2952229 () Bool)

(declare-fun c!483370 () Bool)

(assert (=> b!2952229 (= c!483370 (is-Union!9156 (regTwo!18824 r!17423)))))

(assert (=> b!2952229 (= e!1859230 e!1859226)))

(declare-fun b!2952230 () Bool)

(assert (=> b!2952230 (= e!1859243 (Star!9156 lt!1032291))))

(declare-fun bm!195219 () Bool)

(assert (=> bm!195219 (= call!195229 call!195225)))

(declare-fun bm!195220 () Bool)

(assert (=> bm!195220 (= call!195224 (isEmptyLang!278 (ite c!483370 lt!1032288 lt!1032292)))))

(declare-fun b!2952231 () Bool)

(assert (=> b!2952231 (= e!1859244 lt!1032292)))

(declare-fun b!2952232 () Bool)

(assert (=> b!2952232 (= e!1859238 lt!1032288)))

(declare-fun b!2952233 () Bool)

(assert (=> b!2952233 (= e!1859231 lt!1032296)))

(declare-fun b!2952234 () Bool)

(assert (=> b!2952234 (= e!1859242 e!1859227)))

(declare-fun c!483366 () Bool)

(assert (=> b!2952234 (= c!483366 (is-ElementMatch!9156 (regTwo!18824 r!17423)))))

(declare-fun b!2952235 () Bool)

(assert (=> b!2952235 (= e!1859238 (Union!9156 lt!1032288 lt!1032296))))

(declare-fun c!483372 () Bool)

(declare-fun bm!195221 () Bool)

(assert (=> bm!195221 (= call!195230 (isEmptyExpr!359 (ite c!483372 lt!1032291 lt!1032295)))))

(declare-fun bm!195222 () Bool)

(assert (=> bm!195222 (= call!195227 call!195226)))

(declare-fun bm!195223 () Bool)

(assert (=> bm!195223 (= call!195225 (isEmptyLang!278 (ite c!483372 lt!1032291 (ite c!483370 lt!1032296 lt!1032295))))))

(declare-fun b!2952236 () Bool)

(assert (=> b!2952236 (= e!1859241 e!1859230)))

(assert (=> b!2952236 (= c!483372 (is-Star!9156 (regTwo!18824 r!17423)))))

(declare-fun bm!195224 () Bool)

(assert (=> bm!195224 (= call!195228 (simplify!161 (ite c!483370 (regOne!18825 (regTwo!18824 r!17423)) (regTwo!18824 (regTwo!18824 r!17423)))))))

(declare-fun bm!195225 () Bool)

(assert (=> bm!195225 (= call!195226 (simplify!161 (ite c!483372 (reg!9485 (regTwo!18824 r!17423)) (ite c!483370 (regTwo!18825 (regTwo!18824 r!17423)) (regOne!18824 (regTwo!18824 r!17423))))))))

(declare-fun b!2952237 () Bool)

(assert (=> b!2952237 (= e!1859240 EmptyLang!9156)))

(declare-fun b!2952238 () Bool)

(assert (=> b!2952238 (= e!1859243 EmptyExpr!9156)))

(assert (= (and d!841142 c!483363) b!2952219))

(assert (= (and d!841142 (not c!483363)) b!2952234))

(assert (= (and b!2952234 c!483366) b!2952223))

(assert (= (and b!2952234 (not c!483366)) b!2952217))

(assert (= (and b!2952217 c!483373) b!2952218))

(assert (= (and b!2952217 (not c!483373)) b!2952236))

(assert (= (and b!2952236 c!483372) b!2952227))

(assert (= (and b!2952236 (not c!483372)) b!2952229))

(assert (= (and b!2952227 (not res!1218102)) b!2952214))

(assert (= (and b!2952227 c!483369) b!2952238))

(assert (= (and b!2952227 (not c!483369)) b!2952230))

(assert (= (and b!2952229 c!483370) b!2952224))

(assert (= (and b!2952229 (not c!483370)) b!2952216))

(assert (= (and b!2952224 c!483367) b!2952233))

(assert (= (and b!2952224 (not c!483367)) b!2952222))

(assert (= (and b!2952222 c!483364) b!2952232))

(assert (= (and b!2952222 (not c!483364)) b!2952235))

(assert (= (and b!2952216 (not res!1218101)) b!2952226))

(assert (= (and b!2952216 c!483371) b!2952237))

(assert (= (and b!2952216 (not c!483371)) b!2952215))

(assert (= (and b!2952215 c!483362) b!2952231))

(assert (= (and b!2952215 (not c!483362)) b!2952225))

(assert (= (and b!2952225 c!483361) b!2952221))

(assert (= (and b!2952225 (not c!483361)) b!2952220))

(assert (= (or b!2952224 b!2952216) bm!195224))

(assert (= (or b!2952224 b!2952216) bm!195222))

(assert (= (or b!2952224 b!2952226) bm!195220))

(assert (= (or b!2952222 b!2952216) bm!195219))

(assert (= (or b!2952214 b!2952215) bm!195221))

(assert (= (or b!2952227 bm!195222) bm!195225))

(assert (= (or b!2952227 bm!195219) bm!195223))

(assert (= (and d!841142 res!1218103) b!2952228))

(declare-fun m!3330239 () Bool)

(assert (=> b!2952225 m!3330239))

(declare-fun m!3330241 () Bool)

(assert (=> bm!195221 m!3330241))

(declare-fun m!3330243 () Bool)

(assert (=> d!841142 m!3330243))

(assert (=> d!841142 m!3330151))

(declare-fun m!3330245 () Bool)

(assert (=> bm!195220 m!3330245))

(declare-fun m!3330247 () Bool)

(assert (=> bm!195224 m!3330247))

(declare-fun m!3330249 () Bool)

(assert (=> b!2952228 m!3330249))

(declare-fun m!3330251 () Bool)

(assert (=> b!2952228 m!3330251))

(declare-fun m!3330253 () Bool)

(assert (=> bm!195223 m!3330253))

(declare-fun m!3330255 () Bool)

(assert (=> bm!195225 m!3330255))

(assert (=> b!2951945 d!841142))

(declare-fun b!2952239 () Bool)

(declare-fun e!1859250 () Bool)

(declare-fun call!195237 () Bool)

(assert (=> b!2952239 (= e!1859250 call!195237)))

(declare-fun b!2952240 () Bool)

(declare-fun c!483375 () Bool)

(assert (=> b!2952240 (= c!483375 call!195237)))

(declare-fun e!1859254 () Regex!9156)

(declare-fun e!1859258 () Regex!9156)

(assert (=> b!2952240 (= e!1859254 e!1859258)))

(declare-fun b!2952241 () Bool)

(declare-fun e!1859245 () Regex!9156)

(assert (=> b!2952241 (= e!1859245 e!1859254)))

(declare-fun lt!1032301 () Regex!9156)

(declare-fun call!195234 () Regex!9156)

(assert (=> b!2952241 (= lt!1032301 call!195234)))

(declare-fun lt!1032300 () Regex!9156)

(declare-fun call!195235 () Regex!9156)

(assert (=> b!2952241 (= lt!1032300 call!195235)))

(declare-fun res!1218104 () Bool)

(declare-fun call!195236 () Bool)

(assert (=> b!2952241 (= res!1218104 call!195236)))

(declare-fun e!1859253 () Bool)

(assert (=> b!2952241 (=> res!1218104 e!1859253)))

(declare-fun c!483382 () Bool)

(assert (=> b!2952241 (= c!483382 e!1859253)))

(declare-fun b!2952242 () Bool)

(declare-fun c!483384 () Bool)

(assert (=> b!2952242 (= c!483384 (is-EmptyExpr!9156 (regOne!18824 r!17423)))))

(declare-fun e!1859246 () Regex!9156)

(declare-fun e!1859255 () Regex!9156)

(assert (=> b!2952242 (= e!1859246 e!1859255)))

(declare-fun b!2952243 () Bool)

(assert (=> b!2952243 (= e!1859255 EmptyExpr!9156)))

(declare-fun b!2952244 () Bool)

(declare-fun e!1859256 () Regex!9156)

(assert (=> b!2952244 (= e!1859256 EmptyLang!9156)))

(declare-fun b!2952245 () Bool)

(declare-fun e!1859247 () Regex!9156)

(assert (=> b!2952245 (= e!1859247 (Concat!14477 lt!1032301 lt!1032300))))

(declare-fun b!2952246 () Bool)

(assert (=> b!2952246 (= e!1859247 lt!1032301)))

(declare-fun d!841144 () Bool)

(declare-fun e!1859251 () Bool)

(assert (=> d!841144 e!1859251))

(declare-fun res!1218106 () Bool)

(assert (=> d!841144 (=> (not res!1218106) (not e!1859251))))

(declare-fun lt!1032298 () Regex!9156)

(assert (=> d!841144 (= res!1218106 (validRegex!3889 lt!1032298))))

(assert (=> d!841144 (= lt!1032298 e!1859256)))

(declare-fun c!483376 () Bool)

(assert (=> d!841144 (= c!483376 (is-EmptyLang!9156 (regOne!18824 r!17423)))))

(assert (=> d!841144 (validRegex!3889 (regOne!18824 r!17423))))

(assert (=> d!841144 (= (simplify!161 (regOne!18824 r!17423)) lt!1032298)))

(declare-fun b!2952247 () Bool)

(declare-fun c!483377 () Bool)

(assert (=> b!2952247 (= c!483377 call!195236)))

(declare-fun e!1859249 () Regex!9156)

(declare-fun e!1859252 () Regex!9156)

(assert (=> b!2952247 (= e!1859249 e!1859252)))

(declare-fun b!2952248 () Bool)

(assert (=> b!2952248 (= e!1859246 (regOne!18824 r!17423))))

(declare-fun b!2952249 () Bool)

(assert (=> b!2952249 (= e!1859245 e!1859249)))

(declare-fun lt!1032297 () Regex!9156)

(assert (=> b!2952249 (= lt!1032297 call!195235)))

(declare-fun lt!1032302 () Regex!9156)

(assert (=> b!2952249 (= lt!1032302 call!195234)))

(declare-fun c!483379 () Bool)

(declare-fun call!195231 () Bool)

(assert (=> b!2952249 (= c!483379 call!195231)))

(declare-fun b!2952250 () Bool)

(assert (=> b!2952250 (= e!1859258 e!1859247)))

(declare-fun c!483374 () Bool)

(assert (=> b!2952250 (= c!483374 (isEmptyExpr!359 lt!1032300))))

(declare-fun b!2952251 () Bool)

(assert (=> b!2952251 (= e!1859253 call!195231)))

(declare-fun b!2952252 () Bool)

(declare-fun c!483380 () Bool)

(assert (=> b!2952252 (= c!483380 e!1859250)))

(declare-fun res!1218105 () Bool)

(assert (=> b!2952252 (=> res!1218105 e!1859250)))

(declare-fun call!195232 () Bool)

(assert (=> b!2952252 (= res!1218105 call!195232)))

(declare-fun lt!1032299 () Regex!9156)

(declare-fun call!195233 () Regex!9156)

(assert (=> b!2952252 (= lt!1032299 call!195233)))

(declare-fun e!1859248 () Regex!9156)

(declare-fun e!1859257 () Regex!9156)

(assert (=> b!2952252 (= e!1859248 e!1859257)))

(declare-fun b!2952253 () Bool)

(assert (=> b!2952253 (= e!1859251 (= (nullable!2912 lt!1032298) (nullable!2912 (regOne!18824 r!17423))))))

(declare-fun b!2952254 () Bool)

(declare-fun c!483381 () Bool)

(assert (=> b!2952254 (= c!483381 (is-Union!9156 (regOne!18824 r!17423)))))

(assert (=> b!2952254 (= e!1859248 e!1859245)))

(declare-fun b!2952255 () Bool)

(assert (=> b!2952255 (= e!1859257 (Star!9156 lt!1032299))))

(declare-fun bm!195226 () Bool)

(assert (=> bm!195226 (= call!195236 call!195232)))

(declare-fun bm!195227 () Bool)

(assert (=> bm!195227 (= call!195231 (isEmptyLang!278 (ite c!483381 lt!1032297 lt!1032300)))))

(declare-fun b!2952256 () Bool)

(assert (=> b!2952256 (= e!1859258 lt!1032300)))

(declare-fun b!2952257 () Bool)

(assert (=> b!2952257 (= e!1859252 lt!1032297)))

(declare-fun b!2952258 () Bool)

(assert (=> b!2952258 (= e!1859249 lt!1032302)))

(declare-fun b!2952259 () Bool)

(assert (=> b!2952259 (= e!1859256 e!1859246)))

(declare-fun c!483378 () Bool)

(assert (=> b!2952259 (= c!483378 (is-ElementMatch!9156 (regOne!18824 r!17423)))))

(declare-fun b!2952260 () Bool)

(assert (=> b!2952260 (= e!1859252 (Union!9156 lt!1032297 lt!1032302))))

(declare-fun c!483383 () Bool)

(declare-fun bm!195228 () Bool)

(assert (=> bm!195228 (= call!195237 (isEmptyExpr!359 (ite c!483383 lt!1032299 lt!1032301)))))

(declare-fun bm!195229 () Bool)

(assert (=> bm!195229 (= call!195234 call!195233)))

(declare-fun bm!195230 () Bool)

(assert (=> bm!195230 (= call!195232 (isEmptyLang!278 (ite c!483383 lt!1032299 (ite c!483381 lt!1032302 lt!1032301))))))

(declare-fun b!2952261 () Bool)

(assert (=> b!2952261 (= e!1859255 e!1859248)))

(assert (=> b!2952261 (= c!483383 (is-Star!9156 (regOne!18824 r!17423)))))

(declare-fun bm!195231 () Bool)

(assert (=> bm!195231 (= call!195235 (simplify!161 (ite c!483381 (regOne!18825 (regOne!18824 r!17423)) (regTwo!18824 (regOne!18824 r!17423)))))))

(declare-fun bm!195232 () Bool)

(assert (=> bm!195232 (= call!195233 (simplify!161 (ite c!483383 (reg!9485 (regOne!18824 r!17423)) (ite c!483381 (regTwo!18825 (regOne!18824 r!17423)) (regOne!18824 (regOne!18824 r!17423))))))))

(declare-fun b!2952262 () Bool)

(assert (=> b!2952262 (= e!1859254 EmptyLang!9156)))

(declare-fun b!2952263 () Bool)

(assert (=> b!2952263 (= e!1859257 EmptyExpr!9156)))

(assert (= (and d!841144 c!483376) b!2952244))

(assert (= (and d!841144 (not c!483376)) b!2952259))

(assert (= (and b!2952259 c!483378) b!2952248))

(assert (= (and b!2952259 (not c!483378)) b!2952242))

(assert (= (and b!2952242 c!483384) b!2952243))

(assert (= (and b!2952242 (not c!483384)) b!2952261))

(assert (= (and b!2952261 c!483383) b!2952252))

(assert (= (and b!2952261 (not c!483383)) b!2952254))

(assert (= (and b!2952252 (not res!1218105)) b!2952239))

(assert (= (and b!2952252 c!483380) b!2952263))

(assert (= (and b!2952252 (not c!483380)) b!2952255))

(assert (= (and b!2952254 c!483381) b!2952249))

(assert (= (and b!2952254 (not c!483381)) b!2952241))

(assert (= (and b!2952249 c!483379) b!2952258))

(assert (= (and b!2952249 (not c!483379)) b!2952247))

(assert (= (and b!2952247 c!483377) b!2952257))

(assert (= (and b!2952247 (not c!483377)) b!2952260))

(assert (= (and b!2952241 (not res!1218104)) b!2952251))

(assert (= (and b!2952241 c!483382) b!2952262))

(assert (= (and b!2952241 (not c!483382)) b!2952240))

(assert (= (and b!2952240 c!483375) b!2952256))

(assert (= (and b!2952240 (not c!483375)) b!2952250))

(assert (= (and b!2952250 c!483374) b!2952246))

(assert (= (and b!2952250 (not c!483374)) b!2952245))

(assert (= (or b!2952249 b!2952241) bm!195231))

(assert (= (or b!2952249 b!2952241) bm!195229))

(assert (= (or b!2952249 b!2952251) bm!195227))

(assert (= (or b!2952247 b!2952241) bm!195226))

(assert (= (or b!2952239 b!2952240) bm!195228))

(assert (= (or b!2952252 bm!195229) bm!195232))

(assert (= (or b!2952252 bm!195226) bm!195230))

(assert (= (and d!841144 res!1218106) b!2952253))

(declare-fun m!3330275 () Bool)

(assert (=> b!2952250 m!3330275))

(declare-fun m!3330277 () Bool)

(assert (=> bm!195228 m!3330277))

(declare-fun m!3330281 () Bool)

(assert (=> d!841144 m!3330281))

(declare-fun m!3330283 () Bool)

(assert (=> d!841144 m!3330283))

(declare-fun m!3330285 () Bool)

(assert (=> bm!195227 m!3330285))

(declare-fun m!3330287 () Bool)

(assert (=> bm!195231 m!3330287))

(declare-fun m!3330289 () Bool)

(assert (=> b!2952253 m!3330289))

(declare-fun m!3330291 () Bool)

(assert (=> b!2952253 m!3330291))

(declare-fun m!3330293 () Bool)

(assert (=> bm!195230 m!3330293))

(declare-fun m!3330297 () Bool)

(assert (=> bm!195232 m!3330297))

(assert (=> b!2951945 d!841144))

(declare-fun b!2952264 () Bool)

(declare-fun e!1859265 () Bool)

(assert (=> b!2952264 (= e!1859265 (nullable!2912 lt!1032234))))

(declare-fun b!2952265 () Bool)

(declare-fun e!1859261 () Bool)

(assert (=> b!2952265 (= e!1859261 (= (head!6573 s!11993) (c!483304 lt!1032234)))))

(declare-fun bm!195233 () Bool)

(declare-fun call!195238 () Bool)

(assert (=> bm!195233 (= call!195238 (isEmpty!19163 s!11993))))

(declare-fun d!841146 () Bool)

(declare-fun e!1859264 () Bool)

(assert (=> d!841146 e!1859264))

(declare-fun c!483386 () Bool)

(assert (=> d!841146 (= c!483386 (is-EmptyExpr!9156 lt!1032234))))

(declare-fun lt!1032303 () Bool)

(assert (=> d!841146 (= lt!1032303 e!1859265)))

(declare-fun c!483385 () Bool)

(assert (=> d!841146 (= c!483385 (isEmpty!19163 s!11993))))

(assert (=> d!841146 (validRegex!3889 lt!1032234)))

(assert (=> d!841146 (= (matchR!4038 lt!1032234 s!11993) lt!1032303)))

(declare-fun b!2952266 () Bool)

(declare-fun e!1859263 () Bool)

(assert (=> b!2952266 (= e!1859263 (not lt!1032303))))

(declare-fun b!2952267 () Bool)

(declare-fun res!1218113 () Bool)

(assert (=> b!2952267 (=> (not res!1218113) (not e!1859261))))

(assert (=> b!2952267 (= res!1218113 (not call!195238))))

(declare-fun b!2952268 () Bool)

(declare-fun e!1859260 () Bool)

(declare-fun e!1859262 () Bool)

(assert (=> b!2952268 (= e!1859260 e!1859262)))

(declare-fun res!1218109 () Bool)

(assert (=> b!2952268 (=> res!1218109 e!1859262)))

(assert (=> b!2952268 (= res!1218109 call!195238)))

(declare-fun b!2952269 () Bool)

(assert (=> b!2952269 (= e!1859265 (matchR!4038 (derivativeStep!2514 lt!1032234 (head!6573 s!11993)) (tail!4799 s!11993)))))

(declare-fun b!2952270 () Bool)

(assert (=> b!2952270 (= e!1859264 (= lt!1032303 call!195238))))

(declare-fun b!2952271 () Bool)

(declare-fun res!1218111 () Bool)

(declare-fun e!1859259 () Bool)

(assert (=> b!2952271 (=> res!1218111 e!1859259)))

(assert (=> b!2952271 (= res!1218111 e!1859261)))

(declare-fun res!1218112 () Bool)

(assert (=> b!2952271 (=> (not res!1218112) (not e!1859261))))

(assert (=> b!2952271 (= res!1218112 lt!1032303)))

(declare-fun b!2952272 () Bool)

(declare-fun res!1218110 () Bool)

(assert (=> b!2952272 (=> res!1218110 e!1859262)))

(assert (=> b!2952272 (= res!1218110 (not (isEmpty!19163 (tail!4799 s!11993))))))

(declare-fun b!2952273 () Bool)

(assert (=> b!2952273 (= e!1859264 e!1859263)))

(declare-fun c!483387 () Bool)

(assert (=> b!2952273 (= c!483387 (is-EmptyLang!9156 lt!1032234))))

(declare-fun b!2952274 () Bool)

(assert (=> b!2952274 (= e!1859262 (not (= (head!6573 s!11993) (c!483304 lt!1032234))))))

(declare-fun b!2952275 () Bool)

(declare-fun res!1218114 () Bool)

(assert (=> b!2952275 (=> (not res!1218114) (not e!1859261))))

(assert (=> b!2952275 (= res!1218114 (isEmpty!19163 (tail!4799 s!11993)))))

(declare-fun b!2952276 () Bool)

(assert (=> b!2952276 (= e!1859259 e!1859260)))

(declare-fun res!1218108 () Bool)

(assert (=> b!2952276 (=> (not res!1218108) (not e!1859260))))

(assert (=> b!2952276 (= res!1218108 (not lt!1032303))))

(declare-fun b!2952277 () Bool)

(declare-fun res!1218107 () Bool)

(assert (=> b!2952277 (=> res!1218107 e!1859259)))

(assert (=> b!2952277 (= res!1218107 (not (is-ElementMatch!9156 lt!1032234)))))

(assert (=> b!2952277 (= e!1859263 e!1859259)))

(assert (= (and d!841146 c!483385) b!2952264))

(assert (= (and d!841146 (not c!483385)) b!2952269))

(assert (= (and d!841146 c!483386) b!2952270))

(assert (= (and d!841146 (not c!483386)) b!2952273))

(assert (= (and b!2952273 c!483387) b!2952266))

(assert (= (and b!2952273 (not c!483387)) b!2952277))

(assert (= (and b!2952277 (not res!1218107)) b!2952271))

(assert (= (and b!2952271 res!1218112) b!2952267))

(assert (= (and b!2952267 res!1218113) b!2952275))

(assert (= (and b!2952275 res!1218114) b!2952265))

(assert (= (and b!2952271 (not res!1218111)) b!2952276))

(assert (= (and b!2952276 res!1218108) b!2952268))

(assert (= (and b!2952268 (not res!1218109)) b!2952272))

(assert (= (and b!2952272 (not res!1218110)) b!2952274))

(assert (= (or b!2952270 b!2952267 b!2952268) bm!195233))

(assert (=> b!2952265 m!3330225))

(assert (=> b!2952274 m!3330225))

(declare-fun m!3330301 () Bool)

(assert (=> b!2952264 m!3330301))

(assert (=> d!841146 m!3330157))

(declare-fun m!3330303 () Bool)

(assert (=> d!841146 m!3330303))

(assert (=> b!2952272 m!3330229))

(assert (=> b!2952272 m!3330229))

(assert (=> b!2952272 m!3330231))

(assert (=> b!2952275 m!3330229))

(assert (=> b!2952275 m!3330229))

(assert (=> b!2952275 m!3330231))

(assert (=> bm!195233 m!3330157))

(assert (=> b!2952269 m!3330225))

(assert (=> b!2952269 m!3330225))

(declare-fun m!3330305 () Bool)

(assert (=> b!2952269 m!3330305))

(assert (=> b!2952269 m!3330229))

(assert (=> b!2952269 m!3330305))

(assert (=> b!2952269 m!3330229))

(declare-fun m!3330307 () Bool)

(assert (=> b!2952269 m!3330307))

(assert (=> b!2951956 d!841146))

(declare-fun d!841150 () Bool)

(assert (=> d!841150 (= (isEmptyExpr!359 lt!1032239) (is-EmptyExpr!9156 lt!1032239))))

(assert (=> b!2951947 d!841150))

(declare-fun b!2952296 () Bool)

(declare-fun e!1859283 () Bool)

(declare-fun e!1859280 () Bool)

(assert (=> b!2952296 (= e!1859283 e!1859280)))

(declare-fun res!1218126 () Bool)

(assert (=> b!2952296 (=> (not res!1218126) (not e!1859280))))

(declare-fun call!195246 () Bool)

(assert (=> b!2952296 (= res!1218126 call!195246)))

(declare-fun b!2952297 () Bool)

(declare-fun e!1859284 () Bool)

(declare-fun e!1859286 () Bool)

(assert (=> b!2952297 (= e!1859284 e!1859286)))

(declare-fun c!483392 () Bool)

(assert (=> b!2952297 (= c!483392 (is-Union!9156 r!17423))))

(declare-fun b!2952298 () Bool)

(declare-fun e!1859281 () Bool)

(assert (=> b!2952298 (= e!1859284 e!1859281)))

(declare-fun res!1218125 () Bool)

(assert (=> b!2952298 (= res!1218125 (not (nullable!2912 (reg!9485 r!17423))))))

(assert (=> b!2952298 (=> (not res!1218125) (not e!1859281))))

(declare-fun b!2952299 () Bool)

(declare-fun e!1859282 () Bool)

(assert (=> b!2952299 (= e!1859282 e!1859284)))

(declare-fun c!483393 () Bool)

(assert (=> b!2952299 (= c!483393 (is-Star!9156 r!17423))))

(declare-fun d!841152 () Bool)

(declare-fun res!1218129 () Bool)

(assert (=> d!841152 (=> res!1218129 e!1859282)))

(assert (=> d!841152 (= res!1218129 (is-ElementMatch!9156 r!17423))))

(assert (=> d!841152 (= (validRegex!3889 r!17423) e!1859282)))

(declare-fun b!2952300 () Bool)

(declare-fun res!1218127 () Bool)

(assert (=> b!2952300 (=> res!1218127 e!1859283)))

(assert (=> b!2952300 (= res!1218127 (not (is-Concat!14477 r!17423)))))

(assert (=> b!2952300 (= e!1859286 e!1859283)))

(declare-fun b!2952301 () Bool)

(declare-fun call!195245 () Bool)

(assert (=> b!2952301 (= e!1859280 call!195245)))

(declare-fun call!195247 () Bool)

(declare-fun bm!195240 () Bool)

(assert (=> bm!195240 (= call!195247 (validRegex!3889 (ite c!483393 (reg!9485 r!17423) (ite c!483392 (regOne!18825 r!17423) (regTwo!18824 r!17423)))))))

(declare-fun bm!195241 () Bool)

(assert (=> bm!195241 (= call!195245 call!195247)))

(declare-fun bm!195242 () Bool)

(assert (=> bm!195242 (= call!195246 (validRegex!3889 (ite c!483392 (regTwo!18825 r!17423) (regOne!18824 r!17423))))))

(declare-fun b!2952302 () Bool)

(declare-fun e!1859285 () Bool)

(assert (=> b!2952302 (= e!1859285 call!195246)))

(declare-fun b!2952303 () Bool)

(assert (=> b!2952303 (= e!1859281 call!195247)))

(declare-fun b!2952304 () Bool)

(declare-fun res!1218128 () Bool)

(assert (=> b!2952304 (=> (not res!1218128) (not e!1859285))))

(assert (=> b!2952304 (= res!1218128 call!195245)))

(assert (=> b!2952304 (= e!1859286 e!1859285)))

(assert (= (and d!841152 (not res!1218129)) b!2952299))

(assert (= (and b!2952299 c!483393) b!2952298))

(assert (= (and b!2952299 (not c!483393)) b!2952297))

(assert (= (and b!2952298 res!1218125) b!2952303))

(assert (= (and b!2952297 c!483392) b!2952304))

(assert (= (and b!2952297 (not c!483392)) b!2952300))

(assert (= (and b!2952304 res!1218128) b!2952302))

(assert (= (and b!2952300 (not res!1218127)) b!2952296))

(assert (= (and b!2952296 res!1218126) b!2952301))

(assert (= (or b!2952304 b!2952301) bm!195241))

(assert (= (or b!2952302 b!2952296) bm!195242))

(assert (= (or b!2952303 bm!195241) bm!195240))

(declare-fun m!3330309 () Bool)

(assert (=> b!2952298 m!3330309))

(declare-fun m!3330311 () Bool)

(assert (=> bm!195240 m!3330311))

(declare-fun m!3330313 () Bool)

(assert (=> bm!195242 m!3330313))

(assert (=> start!286274 d!841152))

(declare-fun d!841154 () Bool)

(assert (=> d!841154 (= (isEmptyExpr!359 lt!1032233) (is-EmptyExpr!9156 lt!1032233))))

(assert (=> b!2951952 d!841154))

(declare-fun d!841156 () Bool)

(declare-fun choose!17442 (Int) Bool)

(assert (=> d!841156 (= (Exists!1488 lambda!109815) (choose!17442 lambda!109815))))

(declare-fun bs!525792 () Bool)

(assert (= bs!525792 d!841156))

(declare-fun m!3330315 () Bool)

(assert (=> bs!525792 m!3330315))

(assert (=> b!2951954 d!841156))

(declare-fun d!841158 () Bool)

(assert (=> d!841158 (= (matchR!4038 lt!1032234 s!11993) (matchRSpec!1293 lt!1032234 s!11993))))

(declare-fun lt!1032304 () Unit!48691)

(assert (=> d!841158 (= lt!1032304 (choose!17441 lt!1032234 s!11993))))

(assert (=> d!841158 (validRegex!3889 lt!1032234)))

(assert (=> d!841158 (= (mainMatchTheorem!1293 lt!1032234 s!11993) lt!1032304)))

(declare-fun bs!525793 () Bool)

(assert (= bs!525793 d!841158))

(assert (=> bs!525793 m!3330137))

(assert (=> bs!525793 m!3330147))

(declare-fun m!3330317 () Bool)

(assert (=> bs!525793 m!3330317))

(assert (=> bs!525793 m!3330303))

(assert (=> b!2951954 d!841158))

(declare-fun b!2952305 () Bool)

(declare-fun e!1859290 () Bool)

(declare-fun e!1859287 () Bool)

(assert (=> b!2952305 (= e!1859290 e!1859287)))

(declare-fun res!1218131 () Bool)

(assert (=> b!2952305 (=> (not res!1218131) (not e!1859287))))

(declare-fun call!195249 () Bool)

(assert (=> b!2952305 (= res!1218131 call!195249)))

(declare-fun b!2952306 () Bool)

(declare-fun e!1859291 () Bool)

(declare-fun e!1859293 () Bool)

(assert (=> b!2952306 (= e!1859291 e!1859293)))

(declare-fun c!483394 () Bool)

(assert (=> b!2952306 (= c!483394 (is-Union!9156 (regTwo!18824 r!17423)))))

(declare-fun b!2952307 () Bool)

(declare-fun e!1859288 () Bool)

(assert (=> b!2952307 (= e!1859291 e!1859288)))

(declare-fun res!1218130 () Bool)

(assert (=> b!2952307 (= res!1218130 (not (nullable!2912 (reg!9485 (regTwo!18824 r!17423)))))))

(assert (=> b!2952307 (=> (not res!1218130) (not e!1859288))))

(declare-fun b!2952308 () Bool)

(declare-fun e!1859289 () Bool)

(assert (=> b!2952308 (= e!1859289 e!1859291)))

(declare-fun c!483395 () Bool)

(assert (=> b!2952308 (= c!483395 (is-Star!9156 (regTwo!18824 r!17423)))))

(declare-fun d!841160 () Bool)

(declare-fun res!1218134 () Bool)

(assert (=> d!841160 (=> res!1218134 e!1859289)))

(assert (=> d!841160 (= res!1218134 (is-ElementMatch!9156 (regTwo!18824 r!17423)))))

(assert (=> d!841160 (= (validRegex!3889 (regTwo!18824 r!17423)) e!1859289)))

(declare-fun b!2952309 () Bool)

(declare-fun res!1218132 () Bool)

(assert (=> b!2952309 (=> res!1218132 e!1859290)))

(assert (=> b!2952309 (= res!1218132 (not (is-Concat!14477 (regTwo!18824 r!17423))))))

(assert (=> b!2952309 (= e!1859293 e!1859290)))

(declare-fun b!2952310 () Bool)

(declare-fun call!195248 () Bool)

(assert (=> b!2952310 (= e!1859287 call!195248)))

(declare-fun bm!195243 () Bool)

(declare-fun call!195250 () Bool)

(assert (=> bm!195243 (= call!195250 (validRegex!3889 (ite c!483395 (reg!9485 (regTwo!18824 r!17423)) (ite c!483394 (regOne!18825 (regTwo!18824 r!17423)) (regTwo!18824 (regTwo!18824 r!17423))))))))

(declare-fun bm!195244 () Bool)

(assert (=> bm!195244 (= call!195248 call!195250)))

(declare-fun bm!195245 () Bool)

(assert (=> bm!195245 (= call!195249 (validRegex!3889 (ite c!483394 (regTwo!18825 (regTwo!18824 r!17423)) (regOne!18824 (regTwo!18824 r!17423)))))))

(declare-fun b!2952311 () Bool)

(declare-fun e!1859292 () Bool)

(assert (=> b!2952311 (= e!1859292 call!195249)))

(declare-fun b!2952312 () Bool)

(assert (=> b!2952312 (= e!1859288 call!195250)))

(declare-fun b!2952313 () Bool)

(declare-fun res!1218133 () Bool)

(assert (=> b!2952313 (=> (not res!1218133) (not e!1859292))))

(assert (=> b!2952313 (= res!1218133 call!195248)))

(assert (=> b!2952313 (= e!1859293 e!1859292)))

(assert (= (and d!841160 (not res!1218134)) b!2952308))

(assert (= (and b!2952308 c!483395) b!2952307))

(assert (= (and b!2952308 (not c!483395)) b!2952306))

(assert (= (and b!2952307 res!1218130) b!2952312))

(assert (= (and b!2952306 c!483394) b!2952313))

(assert (= (and b!2952306 (not c!483394)) b!2952309))

(assert (= (and b!2952313 res!1218133) b!2952311))

(assert (= (and b!2952309 (not res!1218132)) b!2952305))

(assert (= (and b!2952305 res!1218131) b!2952310))

(assert (= (or b!2952313 b!2952310) bm!195244))

(assert (= (or b!2952311 b!2952305) bm!195245))

(assert (= (or b!2952312 bm!195244) bm!195243))

(declare-fun m!3330319 () Bool)

(assert (=> b!2952307 m!3330319))

(declare-fun m!3330321 () Bool)

(assert (=> bm!195243 m!3330321))

(declare-fun m!3330323 () Bool)

(assert (=> bm!195245 m!3330323))

(assert (=> b!2951954 d!841160))

(declare-fun d!841162 () Bool)

(assert (=> d!841162 (= (Exists!1488 lambda!109816) (choose!17442 lambda!109816))))

(declare-fun bs!525794 () Bool)

(assert (= bs!525794 d!841162))

(declare-fun m!3330325 () Bool)

(assert (=> bs!525794 m!3330325))

(assert (=> b!2951954 d!841162))

(declare-fun bs!525795 () Bool)

(declare-fun d!841164 () Bool)

(assert (= bs!525795 (and d!841164 b!2951954)))

(declare-fun lambda!109837 () Int)

(assert (=> bs!525795 (= lambda!109837 lambda!109815)))

(assert (=> bs!525795 (not (= lambda!109837 lambda!109816))))

(declare-fun bs!525796 () Bool)

(assert (= bs!525796 (and d!841164 b!2952084)))

(assert (=> bs!525796 (not (= lambda!109837 lambda!109829))))

(declare-fun bs!525797 () Bool)

(assert (= bs!525797 (and d!841164 b!2952076)))

(assert (=> bs!525797 (not (= lambda!109837 lambda!109830))))

(assert (=> d!841164 true))

(assert (=> d!841164 true))

(assert (=> d!841164 true))

(declare-fun bs!525798 () Bool)

(assert (= bs!525798 d!841164))

(declare-fun lambda!109838 () Int)

(assert (=> bs!525798 (not (= lambda!109838 lambda!109837))))

(assert (=> bs!525795 (= lambda!109838 lambda!109816)))

(assert (=> bs!525795 (not (= lambda!109838 lambda!109815))))

(assert (=> bs!525796 (not (= lambda!109838 lambda!109829))))

(assert (=> bs!525797 (= (and (= lt!1032233 (regOne!18824 r!17423)) (= lt!1032239 (regTwo!18824 r!17423))) (= lambda!109838 lambda!109830))))

(assert (=> d!841164 true))

(assert (=> d!841164 true))

(assert (=> d!841164 true))

(assert (=> d!841164 (= (Exists!1488 lambda!109837) (Exists!1488 lambda!109838))))

(declare-fun lt!1032307 () Unit!48691)

(declare-fun choose!17444 (Regex!9156 Regex!9156 List!35021) Unit!48691)

(assert (=> d!841164 (= lt!1032307 (choose!17444 lt!1032233 lt!1032239 s!11993))))

(assert (=> d!841164 (validRegex!3889 lt!1032233)))

(assert (=> d!841164 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!509 lt!1032233 lt!1032239 s!11993) lt!1032307)))

(declare-fun m!3330327 () Bool)

(assert (=> bs!525798 m!3330327))

(declare-fun m!3330329 () Bool)

(assert (=> bs!525798 m!3330329))

(declare-fun m!3330331 () Bool)

(assert (=> bs!525798 m!3330331))

(declare-fun m!3330333 () Bool)

(assert (=> bs!525798 m!3330333))

(assert (=> b!2951954 d!841164))

(declare-fun b!2952383 () Bool)

(declare-fun res!1218172 () Bool)

(declare-fun e!1859333 () Bool)

(assert (=> b!2952383 (=> (not res!1218172) (not e!1859333))))

(declare-fun lt!1032316 () Option!6647)

(declare-fun get!10703 (Option!6647) tuple2!33830)

(assert (=> b!2952383 (= res!1218172 (matchR!4038 lt!1032239 (_2!20047 (get!10703 lt!1032316))))))

(declare-fun b!2952384 () Bool)

(declare-fun e!1859336 () Option!6647)

(declare-fun e!1859335 () Option!6647)

(assert (=> b!2952384 (= e!1859336 e!1859335)))

(declare-fun c!483412 () Bool)

(assert (=> b!2952384 (= c!483412 (is-Nil!34897 s!11993))))

(declare-fun d!841166 () Bool)

(declare-fun e!1859334 () Bool)

(assert (=> d!841166 e!1859334))

(declare-fun res!1218175 () Bool)

(assert (=> d!841166 (=> res!1218175 e!1859334)))

(assert (=> d!841166 (= res!1218175 e!1859333)))

(declare-fun res!1218176 () Bool)

(assert (=> d!841166 (=> (not res!1218176) (not e!1859333))))

(assert (=> d!841166 (= res!1218176 (isDefined!5198 lt!1032316))))

(assert (=> d!841166 (= lt!1032316 e!1859336)))

(declare-fun c!483413 () Bool)

(declare-fun e!1859337 () Bool)

(assert (=> d!841166 (= c!483413 e!1859337)))

(declare-fun res!1218173 () Bool)

(assert (=> d!841166 (=> (not res!1218173) (not e!1859337))))

(assert (=> d!841166 (= res!1218173 (matchR!4038 lt!1032233 Nil!34897))))

(assert (=> d!841166 (validRegex!3889 lt!1032233)))

(assert (=> d!841166 (= (findConcatSeparation!1041 lt!1032233 lt!1032239 Nil!34897 s!11993 s!11993) lt!1032316)))

(declare-fun b!2952385 () Bool)

(assert (=> b!2952385 (= e!1859334 (not (isDefined!5198 lt!1032316)))))

(declare-fun b!2952386 () Bool)

(assert (=> b!2952386 (= e!1859335 None!6646)))

(declare-fun b!2952387 () Bool)

(assert (=> b!2952387 (= e!1859336 (Some!6646 (tuple2!33831 Nil!34897 s!11993)))))

(declare-fun b!2952388 () Bool)

(declare-fun ++!8324 (List!35021 List!35021) List!35021)

(assert (=> b!2952388 (= e!1859333 (= (++!8324 (_1!20047 (get!10703 lt!1032316)) (_2!20047 (get!10703 lt!1032316))) s!11993))))

(declare-fun b!2952389 () Bool)

(declare-fun res!1218174 () Bool)

(assert (=> b!2952389 (=> (not res!1218174) (not e!1859333))))

(assert (=> b!2952389 (= res!1218174 (matchR!4038 lt!1032233 (_1!20047 (get!10703 lt!1032316))))))

(declare-fun b!2952390 () Bool)

(assert (=> b!2952390 (= e!1859337 (matchR!4038 lt!1032239 s!11993))))

(declare-fun b!2952391 () Bool)

(declare-fun lt!1032314 () Unit!48691)

(declare-fun lt!1032315 () Unit!48691)

(assert (=> b!2952391 (= lt!1032314 lt!1032315)))

(assert (=> b!2952391 (= (++!8324 (++!8324 Nil!34897 (Cons!34897 (h!40317 s!11993) Nil!34897)) (t!234086 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!947 (List!35021 C!18498 List!35021 List!35021) Unit!48691)

(assert (=> b!2952391 (= lt!1032315 (lemmaMoveElementToOtherListKeepsConcatEq!947 Nil!34897 (h!40317 s!11993) (t!234086 s!11993) s!11993))))

(assert (=> b!2952391 (= e!1859335 (findConcatSeparation!1041 lt!1032233 lt!1032239 (++!8324 Nil!34897 (Cons!34897 (h!40317 s!11993) Nil!34897)) (t!234086 s!11993) s!11993))))

(assert (= (and d!841166 res!1218173) b!2952390))

(assert (= (and d!841166 c!483413) b!2952387))

(assert (= (and d!841166 (not c!483413)) b!2952384))

(assert (= (and b!2952384 c!483412) b!2952386))

(assert (= (and b!2952384 (not c!483412)) b!2952391))

(assert (= (and d!841166 res!1218176) b!2952389))

(assert (= (and b!2952389 res!1218174) b!2952383))

(assert (= (and b!2952383 res!1218172) b!2952388))

(assert (= (and d!841166 (not res!1218175)) b!2952385))

(declare-fun m!3330335 () Bool)

(assert (=> b!2952385 m!3330335))

(declare-fun m!3330337 () Bool)

(assert (=> b!2952391 m!3330337))

(assert (=> b!2952391 m!3330337))

(declare-fun m!3330339 () Bool)

(assert (=> b!2952391 m!3330339))

(declare-fun m!3330341 () Bool)

(assert (=> b!2952391 m!3330341))

(assert (=> b!2952391 m!3330337))

(declare-fun m!3330343 () Bool)

(assert (=> b!2952391 m!3330343))

(declare-fun m!3330345 () Bool)

(assert (=> b!2952388 m!3330345))

(declare-fun m!3330347 () Bool)

(assert (=> b!2952388 m!3330347))

(assert (=> b!2952383 m!3330345))

(declare-fun m!3330349 () Bool)

(assert (=> b!2952383 m!3330349))

(assert (=> d!841166 m!3330335))

(declare-fun m!3330351 () Bool)

(assert (=> d!841166 m!3330351))

(assert (=> d!841166 m!3330333))

(declare-fun m!3330353 () Bool)

(assert (=> b!2952390 m!3330353))

(assert (=> b!2952389 m!3330345))

(declare-fun m!3330355 () Bool)

(assert (=> b!2952389 m!3330355))

(assert (=> b!2951954 d!841166))

(declare-fun bs!525802 () Bool)

(declare-fun b!2952401 () Bool)

(assert (= bs!525802 (and b!2952401 d!841164)))

(declare-fun lambda!109843 () Int)

(assert (=> bs!525802 (not (= lambda!109843 lambda!109838))))

(assert (=> bs!525802 (not (= lambda!109843 lambda!109837))))

(declare-fun bs!525803 () Bool)

(assert (= bs!525803 (and b!2952401 b!2951954)))

(assert (=> bs!525803 (not (= lambda!109843 lambda!109816))))

(assert (=> bs!525803 (not (= lambda!109843 lambda!109815))))

(declare-fun bs!525804 () Bool)

(assert (= bs!525804 (and b!2952401 b!2952084)))

(assert (=> bs!525804 (= (and (= (reg!9485 lt!1032234) (reg!9485 r!17423)) (= lt!1032234 r!17423)) (= lambda!109843 lambda!109829))))

(declare-fun bs!525805 () Bool)

(assert (= bs!525805 (and b!2952401 b!2952076)))

(assert (=> bs!525805 (not (= lambda!109843 lambda!109830))))

(assert (=> b!2952401 true))

(assert (=> b!2952401 true))

(declare-fun bs!525806 () Bool)

(declare-fun b!2952393 () Bool)

(assert (= bs!525806 (and b!2952393 d!841164)))

(declare-fun lambda!109844 () Int)

(assert (=> bs!525806 (= (and (= (regOne!18824 lt!1032234) lt!1032233) (= (regTwo!18824 lt!1032234) lt!1032239)) (= lambda!109844 lambda!109838))))

(declare-fun bs!525807 () Bool)

(assert (= bs!525807 (and b!2952393 b!2952401)))

(assert (=> bs!525807 (not (= lambda!109844 lambda!109843))))

(assert (=> bs!525806 (not (= lambda!109844 lambda!109837))))

(declare-fun bs!525808 () Bool)

(assert (= bs!525808 (and b!2952393 b!2951954)))

(assert (=> bs!525808 (= (and (= (regOne!18824 lt!1032234) lt!1032233) (= (regTwo!18824 lt!1032234) lt!1032239)) (= lambda!109844 lambda!109816))))

(assert (=> bs!525808 (not (= lambda!109844 lambda!109815))))

(declare-fun bs!525809 () Bool)

(assert (= bs!525809 (and b!2952393 b!2952084)))

(assert (=> bs!525809 (not (= lambda!109844 lambda!109829))))

(declare-fun bs!525810 () Bool)

(assert (= bs!525810 (and b!2952393 b!2952076)))

(assert (=> bs!525810 (= (and (= (regOne!18824 lt!1032234) (regOne!18824 r!17423)) (= (regTwo!18824 lt!1032234) (regTwo!18824 r!17423))) (= lambda!109844 lambda!109830))))

(assert (=> b!2952393 true))

(assert (=> b!2952393 true))

(declare-fun b!2952392 () Bool)

(declare-fun e!1859338 () Bool)

(declare-fun e!1859343 () Bool)

(assert (=> b!2952392 (= e!1859338 e!1859343)))

(declare-fun res!1218177 () Bool)

(assert (=> b!2952392 (= res!1218177 (matchRSpec!1293 (regOne!18825 lt!1032234) s!11993))))

(assert (=> b!2952392 (=> res!1218177 e!1859343)))

(declare-fun d!841168 () Bool)

(declare-fun c!483414 () Bool)

(assert (=> d!841168 (= c!483414 (is-EmptyExpr!9156 lt!1032234))))

(declare-fun e!1859341 () Bool)

(assert (=> d!841168 (= (matchRSpec!1293 lt!1032234 s!11993) e!1859341)))

(declare-fun e!1859339 () Bool)

(declare-fun call!195258 () Bool)

(assert (=> b!2952393 (= e!1859339 call!195258)))

(declare-fun b!2952394 () Bool)

(assert (=> b!2952394 (= e!1859338 e!1859339)))

(declare-fun c!483417 () Bool)

(assert (=> b!2952394 (= c!483417 (is-Star!9156 lt!1032234))))

(declare-fun b!2952395 () Bool)

(declare-fun c!483415 () Bool)

(assert (=> b!2952395 (= c!483415 (is-Union!9156 lt!1032234))))

(declare-fun e!1859342 () Bool)

(assert (=> b!2952395 (= e!1859342 e!1859338)))

(declare-fun b!2952396 () Bool)

(declare-fun call!195257 () Bool)

(assert (=> b!2952396 (= e!1859341 call!195257)))

(declare-fun b!2952397 () Bool)

(assert (=> b!2952397 (= e!1859342 (= s!11993 (Cons!34897 (c!483304 lt!1032234) Nil!34897)))))

(declare-fun b!2952398 () Bool)

(declare-fun e!1859340 () Bool)

(assert (=> b!2952398 (= e!1859341 e!1859340)))

(declare-fun res!1218178 () Bool)

(assert (=> b!2952398 (= res!1218178 (not (is-EmptyLang!9156 lt!1032234)))))

(assert (=> b!2952398 (=> (not res!1218178) (not e!1859340))))

(declare-fun bm!195252 () Bool)

(assert (=> bm!195252 (= call!195257 (isEmpty!19163 s!11993))))

(declare-fun b!2952399 () Bool)

(declare-fun res!1218179 () Bool)

(declare-fun e!1859344 () Bool)

(assert (=> b!2952399 (=> res!1218179 e!1859344)))

(assert (=> b!2952399 (= res!1218179 call!195257)))

(assert (=> b!2952399 (= e!1859339 e!1859344)))

(declare-fun bm!195253 () Bool)

(assert (=> bm!195253 (= call!195258 (Exists!1488 (ite c!483417 lambda!109843 lambda!109844)))))

(declare-fun b!2952400 () Bool)

(assert (=> b!2952400 (= e!1859343 (matchRSpec!1293 (regTwo!18825 lt!1032234) s!11993))))

(assert (=> b!2952401 (= e!1859344 call!195258)))

(declare-fun b!2952402 () Bool)

(declare-fun c!483416 () Bool)

(assert (=> b!2952402 (= c!483416 (is-ElementMatch!9156 lt!1032234))))

(assert (=> b!2952402 (= e!1859340 e!1859342)))

(assert (= (and d!841168 c!483414) b!2952396))

(assert (= (and d!841168 (not c!483414)) b!2952398))

(assert (= (and b!2952398 res!1218178) b!2952402))

(assert (= (and b!2952402 c!483416) b!2952397))

(assert (= (and b!2952402 (not c!483416)) b!2952395))

(assert (= (and b!2952395 c!483415) b!2952392))

(assert (= (and b!2952395 (not c!483415)) b!2952394))

(assert (= (and b!2952392 (not res!1218177)) b!2952400))

(assert (= (and b!2952394 c!483417) b!2952399))

(assert (= (and b!2952394 (not c!483417)) b!2952393))

(assert (= (and b!2952399 (not res!1218179)) b!2952401))

(assert (= (or b!2952401 b!2952393) bm!195253))

(assert (= (or b!2952396 b!2952399) bm!195252))

(declare-fun m!3330365 () Bool)

(assert (=> b!2952392 m!3330365))

(assert (=> bm!195252 m!3330157))

(declare-fun m!3330367 () Bool)

(assert (=> bm!195253 m!3330367))

(declare-fun m!3330369 () Bool)

(assert (=> b!2952400 m!3330369))

(assert (=> b!2951954 d!841168))

(declare-fun bs!525813 () Bool)

(declare-fun d!841174 () Bool)

(assert (= bs!525813 (and d!841174 b!2952393)))

(declare-fun lambda!109847 () Int)

(assert (=> bs!525813 (not (= lambda!109847 lambda!109844))))

(declare-fun bs!525814 () Bool)

(assert (= bs!525814 (and d!841174 d!841164)))

(assert (=> bs!525814 (not (= lambda!109847 lambda!109838))))

(declare-fun bs!525815 () Bool)

(assert (= bs!525815 (and d!841174 b!2952401)))

(assert (=> bs!525815 (not (= lambda!109847 lambda!109843))))

(assert (=> bs!525814 (= lambda!109847 lambda!109837)))

(declare-fun bs!525816 () Bool)

(assert (= bs!525816 (and d!841174 b!2951954)))

(assert (=> bs!525816 (not (= lambda!109847 lambda!109816))))

(assert (=> bs!525816 (= lambda!109847 lambda!109815)))

(declare-fun bs!525817 () Bool)

(assert (= bs!525817 (and d!841174 b!2952084)))

(assert (=> bs!525817 (not (= lambda!109847 lambda!109829))))

(declare-fun bs!525818 () Bool)

(assert (= bs!525818 (and d!841174 b!2952076)))

(assert (=> bs!525818 (not (= lambda!109847 lambda!109830))))

(assert (=> d!841174 true))

(assert (=> d!841174 true))

(assert (=> d!841174 true))

(assert (=> d!841174 (= (isDefined!5198 (findConcatSeparation!1041 lt!1032233 lt!1032239 Nil!34897 s!11993 s!11993)) (Exists!1488 lambda!109847))))

(declare-fun lt!1032319 () Unit!48691)

(declare-fun choose!17445 (Regex!9156 Regex!9156 List!35021) Unit!48691)

(assert (=> d!841174 (= lt!1032319 (choose!17445 lt!1032233 lt!1032239 s!11993))))

(assert (=> d!841174 (validRegex!3889 lt!1032233)))

(assert (=> d!841174 (= (lemmaFindConcatSeparationEquivalentToExists!819 lt!1032233 lt!1032239 s!11993) lt!1032319)))

(declare-fun bs!525819 () Bool)

(assert (= bs!525819 d!841174))

(declare-fun m!3330373 () Bool)

(assert (=> bs!525819 m!3330373))

(assert (=> bs!525819 m!3330333))

(assert (=> bs!525819 m!3330141))

(assert (=> bs!525819 m!3330143))

(assert (=> bs!525819 m!3330141))

(declare-fun m!3330375 () Bool)

(assert (=> bs!525819 m!3330375))

(assert (=> b!2951954 d!841174))

(declare-fun d!841178 () Bool)

(declare-fun isEmpty!19166 (Option!6647) Bool)

(assert (=> d!841178 (= (isDefined!5198 (findConcatSeparation!1041 lt!1032233 lt!1032239 Nil!34897 s!11993 s!11993)) (not (isEmpty!19166 (findConcatSeparation!1041 lt!1032233 lt!1032239 Nil!34897 s!11993 s!11993))))))

(declare-fun bs!525820 () Bool)

(assert (= bs!525820 d!841178))

(assert (=> bs!525820 m!3330141))

(declare-fun m!3330377 () Bool)

(assert (=> bs!525820 m!3330377))

(assert (=> b!2951954 d!841178))

(declare-fun d!841180 () Bool)

(assert (=> d!841180 (= (isEmptyLang!278 lt!1032239) (is-EmptyLang!9156 lt!1032239))))

(assert (=> b!2951948 d!841180))

(declare-fun b!2952419 () Bool)

(declare-fun e!1859349 () Bool)

(declare-fun tp!943430 () Bool)

(assert (=> b!2952419 (= e!1859349 tp!943430)))

(declare-fun b!2952420 () Bool)

(declare-fun tp!943432 () Bool)

(declare-fun tp!943429 () Bool)

(assert (=> b!2952420 (= e!1859349 (and tp!943432 tp!943429))))

(assert (=> b!2951949 (= tp!943395 e!1859349)))

(declare-fun b!2952417 () Bool)

(assert (=> b!2952417 (= e!1859349 tp_is_empty!15875)))

(declare-fun b!2952418 () Bool)

(declare-fun tp!943431 () Bool)

(declare-fun tp!943428 () Bool)

(assert (=> b!2952418 (= e!1859349 (and tp!943431 tp!943428))))

(assert (= (and b!2951949 (is-ElementMatch!9156 (regOne!18825 r!17423))) b!2952417))

(assert (= (and b!2951949 (is-Concat!14477 (regOne!18825 r!17423))) b!2952418))

(assert (= (and b!2951949 (is-Star!9156 (regOne!18825 r!17423))) b!2952419))

(assert (= (and b!2951949 (is-Union!9156 (regOne!18825 r!17423))) b!2952420))

(declare-fun b!2952423 () Bool)

(declare-fun e!1859350 () Bool)

(declare-fun tp!943435 () Bool)

(assert (=> b!2952423 (= e!1859350 tp!943435)))

(declare-fun b!2952424 () Bool)

(declare-fun tp!943437 () Bool)

(declare-fun tp!943434 () Bool)

(assert (=> b!2952424 (= e!1859350 (and tp!943437 tp!943434))))

(assert (=> b!2951949 (= tp!943394 e!1859350)))

(declare-fun b!2952421 () Bool)

(assert (=> b!2952421 (= e!1859350 tp_is_empty!15875)))

(declare-fun b!2952422 () Bool)

(declare-fun tp!943436 () Bool)

(declare-fun tp!943433 () Bool)

(assert (=> b!2952422 (= e!1859350 (and tp!943436 tp!943433))))

(assert (= (and b!2951949 (is-ElementMatch!9156 (regTwo!18825 r!17423))) b!2952421))

(assert (= (and b!2951949 (is-Concat!14477 (regTwo!18825 r!17423))) b!2952422))

(assert (= (and b!2951949 (is-Star!9156 (regTwo!18825 r!17423))) b!2952423))

(assert (= (and b!2951949 (is-Union!9156 (regTwo!18825 r!17423))) b!2952424))

(declare-fun b!2952427 () Bool)

(declare-fun e!1859351 () Bool)

(declare-fun tp!943440 () Bool)

(assert (=> b!2952427 (= e!1859351 tp!943440)))

(declare-fun b!2952428 () Bool)

(declare-fun tp!943442 () Bool)

(declare-fun tp!943439 () Bool)

(assert (=> b!2952428 (= e!1859351 (and tp!943442 tp!943439))))

(assert (=> b!2951951 (= tp!943396 e!1859351)))

(declare-fun b!2952425 () Bool)

(assert (=> b!2952425 (= e!1859351 tp_is_empty!15875)))

(declare-fun b!2952426 () Bool)

(declare-fun tp!943441 () Bool)

(declare-fun tp!943438 () Bool)

(assert (=> b!2952426 (= e!1859351 (and tp!943441 tp!943438))))

(assert (= (and b!2951951 (is-ElementMatch!9156 (regOne!18824 r!17423))) b!2952425))

(assert (= (and b!2951951 (is-Concat!14477 (regOne!18824 r!17423))) b!2952426))

(assert (= (and b!2951951 (is-Star!9156 (regOne!18824 r!17423))) b!2952427))

(assert (= (and b!2951951 (is-Union!9156 (regOne!18824 r!17423))) b!2952428))

(declare-fun b!2952431 () Bool)

(declare-fun e!1859352 () Bool)

(declare-fun tp!943445 () Bool)

(assert (=> b!2952431 (= e!1859352 tp!943445)))

(declare-fun b!2952432 () Bool)

(declare-fun tp!943447 () Bool)

(declare-fun tp!943444 () Bool)

(assert (=> b!2952432 (= e!1859352 (and tp!943447 tp!943444))))

(assert (=> b!2951951 (= tp!943398 e!1859352)))

(declare-fun b!2952429 () Bool)

(assert (=> b!2952429 (= e!1859352 tp_is_empty!15875)))

(declare-fun b!2952430 () Bool)

(declare-fun tp!943446 () Bool)

(declare-fun tp!943443 () Bool)

(assert (=> b!2952430 (= e!1859352 (and tp!943446 tp!943443))))

(assert (= (and b!2951951 (is-ElementMatch!9156 (regTwo!18824 r!17423))) b!2952429))

(assert (= (and b!2951951 (is-Concat!14477 (regTwo!18824 r!17423))) b!2952430))

(assert (= (and b!2951951 (is-Star!9156 (regTwo!18824 r!17423))) b!2952431))

(assert (= (and b!2951951 (is-Union!9156 (regTwo!18824 r!17423))) b!2952432))

(declare-fun b!2952435 () Bool)

(declare-fun e!1859353 () Bool)

(declare-fun tp!943450 () Bool)

(assert (=> b!2952435 (= e!1859353 tp!943450)))

(declare-fun b!2952436 () Bool)

(declare-fun tp!943452 () Bool)

(declare-fun tp!943449 () Bool)

(assert (=> b!2952436 (= e!1859353 (and tp!943452 tp!943449))))

(assert (=> b!2951946 (= tp!943399 e!1859353)))

(declare-fun b!2952433 () Bool)

(assert (=> b!2952433 (= e!1859353 tp_is_empty!15875)))

(declare-fun b!2952434 () Bool)

(declare-fun tp!943451 () Bool)

(declare-fun tp!943448 () Bool)

(assert (=> b!2952434 (= e!1859353 (and tp!943451 tp!943448))))

(assert (= (and b!2951946 (is-ElementMatch!9156 (reg!9485 r!17423))) b!2952433))

(assert (= (and b!2951946 (is-Concat!14477 (reg!9485 r!17423))) b!2952434))

(assert (= (and b!2951946 (is-Star!9156 (reg!9485 r!17423))) b!2952435))

(assert (= (and b!2951946 (is-Union!9156 (reg!9485 r!17423))) b!2952436))

(declare-fun b!2952441 () Bool)

(declare-fun e!1859356 () Bool)

(declare-fun tp!943455 () Bool)

(assert (=> b!2952441 (= e!1859356 (and tp_is_empty!15875 tp!943455))))

(assert (=> b!2951953 (= tp!943397 e!1859356)))

(assert (= (and b!2951953 (is-Cons!34897 (t!234086 s!11993))) b!2952441))

(push 1)

(assert (not b!2952431))

(assert (not d!841158))

(assert (not bm!195231))

(assert (not b!2952418))

(assert (not b!2952392))

(assert (not b!2952388))

(assert (not bm!195223))

(assert (not bm!195240))

(assert (not b!2952075))

(assert (not b!2952419))

(assert (not b!2952123))

(assert (not d!841132))

(assert (not b!2952441))

(assert (not b!2952427))

(assert (not b!2952264))

(assert (not bm!195242))

(assert (not d!841156))

(assert (not b!2952435))

(assert (not d!841178))

(assert (not bm!195227))

(assert (not b!2952225))

(assert (not b!2952432))

(assert (not b!2952250))

(assert (not bm!195204))

(assert (not b!2952391))

(assert (not bm!195225))

(assert (not bm!195197))

(assert (not b!2952275))

(assert (not bm!195198))

(assert (not bm!195253))

(assert (not b!2952426))

(assert (not b!2952424))

(assert (not bm!195243))

(assert (not b!2952133))

(assert (not d!841164))

(assert (not b!2952131))

(assert (not b!2952253))

(assert (not d!841144))

(assert (not d!841166))

(assert (not bm!195232))

(assert (not d!841142))

(assert (not d!841138))

(assert (not b!2952383))

(assert (not b!2952298))

(assert (not b!2952420))

(assert (not b!2952134))

(assert (not bm!195221))

(assert (not b!2952423))

(assert (not bm!195252))

(assert (not bm!195245))

(assert (not b!2952128))

(assert (not b!2952083))

(assert (not bm!195228))

(assert (not b!2952436))

(assert (not b!2952272))

(assert (not b!2952124))

(assert (not b!2952307))

(assert (not b!2952385))

(assert (not b!2952228))

(assert (not b!2952274))

(assert (not d!841146))

(assert (not b!2952269))

(assert (not d!841174))

(assert (not b!2952265))

(assert (not b!2952434))

(assert tp_is_empty!15875)

(assert (not bm!195230))

(assert (not b!2952400))

(assert (not bm!195224))

(assert (not b!2952422))

(assert (not b!2952390))

(assert (not b!2952389))

(assert (not b!2952430))

(assert (not d!841162))

(assert (not bm!195220))

(assert (not bm!195233))

(assert (not b!2952428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

