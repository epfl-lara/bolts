; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244816 () Bool)

(assert start!244816)

(declare-fun b!2510042 () Bool)

(declare-fun res!1061105 () Bool)

(declare-fun e!1590872 () Bool)

(assert (=> b!2510042 (=> (not res!1061105) (not e!1590872))))

(declare-datatypes ((C!15076 0))(
  ( (C!15077 (val!9190 Int)) )
))
(declare-datatypes ((Regex!7459 0))(
  ( (ElementMatch!7459 (c!399801 C!15076)) (Concat!12155 (regOne!15430 Regex!7459) (regTwo!15430 Regex!7459)) (EmptyExpr!7459) (Star!7459 (reg!7788 Regex!7459)) (EmptyLang!7459) (Union!7459 (regOne!15431 Regex!7459) (regTwo!15431 Regex!7459)) )
))
(declare-fun r!27340 () Regex!7459)

(get-info :version)

(assert (=> b!2510042 (= res!1061105 (and (not ((_ is EmptyExpr!7459) r!27340)) (not ((_ is EmptyLang!7459) r!27340)) (not ((_ is ElementMatch!7459) r!27340)) (not ((_ is Union!7459) r!27340)) (not ((_ is Star!7459) r!27340))))))

(declare-fun b!2510043 () Bool)

(declare-fun e!1590873 () Bool)

(declare-fun tp!802842 () Bool)

(assert (=> b!2510043 (= e!1590873 tp!802842)))

(declare-fun b!2510044 () Bool)

(declare-fun e!1590871 () Bool)

(declare-fun tp_is_empty!12773 () Bool)

(declare-fun tp!802839 () Bool)

(assert (=> b!2510044 (= e!1590871 (and tp_is_empty!12773 tp!802839))))

(declare-fun b!2510045 () Bool)

(declare-fun tp!802837 () Bool)

(declare-fun tp!802840 () Bool)

(assert (=> b!2510045 (= e!1590873 (and tp!802837 tp!802840))))

(declare-fun b!2510046 () Bool)

(declare-fun tp!802838 () Bool)

(declare-fun tp!802841 () Bool)

(assert (=> b!2510046 (= e!1590873 (and tp!802838 tp!802841))))

(declare-fun b!2510047 () Bool)

(declare-fun e!1590870 () Bool)

(declare-datatypes ((List!29524 0))(
  ( (Nil!29424) (Cons!29424 (h!34844 C!15076) (t!211223 List!29524)) )
))
(declare-fun tl!4068 () List!29524)

(declare-fun matchR!3458 (Regex!7459 List!29524) Bool)

(assert (=> b!2510047 (= e!1590870 (matchR!3458 EmptyLang!7459 tl!4068))))

(declare-fun b!2510048 () Bool)

(assert (=> b!2510048 (= e!1590873 tp_is_empty!12773)))

(declare-fun b!2510049 () Bool)

(declare-fun e!1590874 () Bool)

(declare-fun validRegex!3085 (Regex!7459) Bool)

(assert (=> b!2510049 (= e!1590874 (validRegex!3085 (regOne!15430 r!27340)))))

(declare-fun b!2510050 () Bool)

(declare-fun res!1061108 () Bool)

(assert (=> b!2510050 (=> (not res!1061108) (not e!1590872))))

(declare-fun nullable!2376 (Regex!7459) Bool)

(assert (=> b!2510050 (= res!1061108 (not (nullable!2376 (regOne!15430 r!27340))))))

(declare-fun b!2510051 () Bool)

(assert (=> b!2510051 (= e!1590872 (not e!1590874))))

(declare-fun res!1061107 () Bool)

(assert (=> b!2510051 (=> res!1061107 e!1590874)))

(declare-fun lt!897516 () Bool)

(assert (=> b!2510051 (= res!1061107 (not lt!897516))))

(declare-fun derivative!154 (Regex!7459 List!29524) Regex!7459)

(assert (=> b!2510051 (= (derivative!154 EmptyLang!7459 tl!4068) EmptyLang!7459)))

(declare-datatypes ((Unit!43167 0))(
  ( (Unit!43168) )
))
(declare-fun lt!897519 () Unit!43167)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!6 (Regex!7459 List!29524) Unit!43167)

(assert (=> b!2510051 (= lt!897519 (lemmaEmptyLangDerivativeIsAFixPoint!6 EmptyLang!7459 tl!4068))))

(assert (=> b!2510051 e!1590870))

(declare-fun res!1061106 () Bool)

(assert (=> b!2510051 (=> res!1061106 e!1590870)))

(assert (=> b!2510051 (= res!1061106 lt!897516)))

(declare-fun lt!897517 () Regex!7459)

(assert (=> b!2510051 (= lt!897516 (matchR!3458 lt!897517 tl!4068))))

(declare-fun lt!897520 () Unit!43167)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!146 (Regex!7459 Regex!7459 List!29524) Unit!43167)

(assert (=> b!2510051 (= lt!897520 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!146 lt!897517 EmptyLang!7459 tl!4068))))

(declare-fun lt!897518 () Regex!7459)

(assert (=> b!2510051 (= (matchR!3458 lt!897518 tl!4068) (matchR!3458 (derivative!154 lt!897518 tl!4068) Nil!29424))))

(declare-fun lt!897515 () Unit!43167)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!104 (Regex!7459 List!29524) Unit!43167)

(assert (=> b!2510051 (= lt!897515 (lemmaMatchRIsSameAsWholeDerivativeAndNil!104 lt!897518 tl!4068))))

(assert (=> b!2510051 (= lt!897518 (Union!7459 lt!897517 EmptyLang!7459))))

(declare-fun c!14016 () C!15076)

(declare-fun derivativeStep!2028 (Regex!7459 C!15076) Regex!7459)

(assert (=> b!2510051 (= lt!897517 (Concat!12155 (derivativeStep!2028 (regOne!15430 r!27340) c!14016) (regTwo!15430 r!27340)))))

(declare-fun res!1061109 () Bool)

(assert (=> start!244816 (=> (not res!1061109) (not e!1590872))))

(assert (=> start!244816 (= res!1061109 (validRegex!3085 r!27340))))

(assert (=> start!244816 e!1590872))

(assert (=> start!244816 e!1590873))

(assert (=> start!244816 tp_is_empty!12773))

(assert (=> start!244816 e!1590871))

(declare-fun b!2510052 () Bool)

(declare-fun res!1061110 () Bool)

(assert (=> b!2510052 (=> (not res!1061110) (not e!1590872))))

(assert (=> b!2510052 (= res!1061110 (nullable!2376 (derivative!154 (derivativeStep!2028 r!27340 c!14016) tl!4068)))))

(assert (= (and start!244816 res!1061109) b!2510052))

(assert (= (and b!2510052 res!1061110) b!2510042))

(assert (= (and b!2510042 res!1061105) b!2510050))

(assert (= (and b!2510050 res!1061108) b!2510051))

(assert (= (and b!2510051 (not res!1061106)) b!2510047))

(assert (= (and b!2510051 (not res!1061107)) b!2510049))

(assert (= (and start!244816 ((_ is ElementMatch!7459) r!27340)) b!2510048))

(assert (= (and start!244816 ((_ is Concat!12155) r!27340)) b!2510045))

(assert (= (and start!244816 ((_ is Star!7459) r!27340)) b!2510043))

(assert (= (and start!244816 ((_ is Union!7459) r!27340)) b!2510046))

(assert (= (and start!244816 ((_ is Cons!29424) tl!4068)) b!2510044))

(declare-fun m!2869109 () Bool)

(assert (=> start!244816 m!2869109))

(declare-fun m!2869111 () Bool)

(assert (=> b!2510050 m!2869111))

(declare-fun m!2869113 () Bool)

(assert (=> b!2510052 m!2869113))

(assert (=> b!2510052 m!2869113))

(declare-fun m!2869115 () Bool)

(assert (=> b!2510052 m!2869115))

(assert (=> b!2510052 m!2869115))

(declare-fun m!2869117 () Bool)

(assert (=> b!2510052 m!2869117))

(declare-fun m!2869119 () Bool)

(assert (=> b!2510047 m!2869119))

(declare-fun m!2869121 () Bool)

(assert (=> b!2510051 m!2869121))

(declare-fun m!2869123 () Bool)

(assert (=> b!2510051 m!2869123))

(declare-fun m!2869125 () Bool)

(assert (=> b!2510051 m!2869125))

(declare-fun m!2869127 () Bool)

(assert (=> b!2510051 m!2869127))

(declare-fun m!2869129 () Bool)

(assert (=> b!2510051 m!2869129))

(declare-fun m!2869131 () Bool)

(assert (=> b!2510051 m!2869131))

(assert (=> b!2510051 m!2869125))

(declare-fun m!2869133 () Bool)

(assert (=> b!2510051 m!2869133))

(declare-fun m!2869135 () Bool)

(assert (=> b!2510051 m!2869135))

(declare-fun m!2869137 () Bool)

(assert (=> b!2510051 m!2869137))

(declare-fun m!2869139 () Bool)

(assert (=> b!2510049 m!2869139))

(check-sat tp_is_empty!12773 (not start!244816) (not b!2510052) (not b!2510045) (not b!2510050) (not b!2510051) (not b!2510046) (not b!2510049) (not b!2510047) (not b!2510043) (not b!2510044))
(check-sat)
(get-model)

(declare-fun d!716537 () Bool)

(declare-fun nullableFct!625 (Regex!7459) Bool)

(assert (=> d!716537 (= (nullable!2376 (derivative!154 (derivativeStep!2028 r!27340 c!14016) tl!4068)) (nullableFct!625 (derivative!154 (derivativeStep!2028 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468752 () Bool)

(assert (= bs!468752 d!716537))

(assert (=> bs!468752 m!2869115))

(declare-fun m!2869141 () Bool)

(assert (=> bs!468752 m!2869141))

(assert (=> b!2510052 d!716537))

(declare-fun d!716539 () Bool)

(declare-fun lt!897525 () Regex!7459)

(assert (=> d!716539 (validRegex!3085 lt!897525)))

(declare-fun e!1590879 () Regex!7459)

(assert (=> d!716539 (= lt!897525 e!1590879)))

(declare-fun c!399806 () Bool)

(assert (=> d!716539 (= c!399806 ((_ is Cons!29424) tl!4068))))

(assert (=> d!716539 (validRegex!3085 (derivativeStep!2028 r!27340 c!14016))))

(assert (=> d!716539 (= (derivative!154 (derivativeStep!2028 r!27340 c!14016) tl!4068) lt!897525)))

(declare-fun b!2510063 () Bool)

(assert (=> b!2510063 (= e!1590879 (derivative!154 (derivativeStep!2028 (derivativeStep!2028 r!27340 c!14016) (h!34844 tl!4068)) (t!211223 tl!4068)))))

(declare-fun b!2510064 () Bool)

(assert (=> b!2510064 (= e!1590879 (derivativeStep!2028 r!27340 c!14016))))

(assert (= (and d!716539 c!399806) b!2510063))

(assert (= (and d!716539 (not c!399806)) b!2510064))

(declare-fun m!2869143 () Bool)

(assert (=> d!716539 m!2869143))

(assert (=> d!716539 m!2869113))

(declare-fun m!2869145 () Bool)

(assert (=> d!716539 m!2869145))

(assert (=> b!2510063 m!2869113))

(declare-fun m!2869147 () Bool)

(assert (=> b!2510063 m!2869147))

(assert (=> b!2510063 m!2869147))

(declare-fun m!2869149 () Bool)

(assert (=> b!2510063 m!2869149))

(assert (=> b!2510052 d!716539))

(declare-fun b!2510139 () Bool)

(declare-fun e!1590926 () Regex!7459)

(declare-fun e!1590927 () Regex!7459)

(assert (=> b!2510139 (= e!1590926 e!1590927)))

(declare-fun c!399830 () Bool)

(assert (=> b!2510139 (= c!399830 ((_ is ElementMatch!7459) r!27340))))

(declare-fun b!2510140 () Bool)

(declare-fun c!399832 () Bool)

(assert (=> b!2510140 (= c!399832 ((_ is Union!7459) r!27340))))

(declare-fun e!1590923 () Regex!7459)

(assert (=> b!2510140 (= e!1590927 e!1590923)))

(declare-fun bm!155648 () Bool)

(declare-fun call!155655 () Regex!7459)

(declare-fun call!155654 () Regex!7459)

(assert (=> bm!155648 (= call!155655 call!155654)))

(declare-fun call!155653 () Regex!7459)

(declare-fun bm!155649 () Bool)

(assert (=> bm!155649 (= call!155653 (derivativeStep!2028 (ite c!399832 (regOne!15431 r!27340) (regTwo!15430 r!27340)) c!14016))))

(declare-fun d!716541 () Bool)

(declare-fun lt!897529 () Regex!7459)

(assert (=> d!716541 (validRegex!3085 lt!897529)))

(assert (=> d!716541 (= lt!897529 e!1590926)))

(declare-fun c!399831 () Bool)

(assert (=> d!716541 (= c!399831 (or ((_ is EmptyExpr!7459) r!27340) ((_ is EmptyLang!7459) r!27340)))))

(assert (=> d!716541 (validRegex!3085 r!27340)))

(assert (=> d!716541 (= (derivativeStep!2028 r!27340 c!14016) lt!897529)))

(declare-fun e!1590924 () Regex!7459)

(declare-fun call!155656 () Regex!7459)

(declare-fun b!2510141 () Bool)

(assert (=> b!2510141 (= e!1590924 (Union!7459 (Concat!12155 call!155656 (regTwo!15430 r!27340)) call!155653))))

(declare-fun b!2510142 () Bool)

(assert (=> b!2510142 (= e!1590924 (Union!7459 (Concat!12155 call!155656 (regTwo!15430 r!27340)) EmptyLang!7459))))

(declare-fun b!2510143 () Bool)

(assert (=> b!2510143 (= e!1590926 EmptyLang!7459)))

(declare-fun b!2510144 () Bool)

(assert (=> b!2510144 (= e!1590923 (Union!7459 call!155653 call!155654))))

(declare-fun b!2510145 () Bool)

(assert (=> b!2510145 (= e!1590927 (ite (= c!14016 (c!399801 r!27340)) EmptyExpr!7459 EmptyLang!7459))))

(declare-fun b!2510146 () Bool)

(declare-fun c!399828 () Bool)

(assert (=> b!2510146 (= c!399828 (nullable!2376 (regOne!15430 r!27340)))))

(declare-fun e!1590925 () Regex!7459)

(assert (=> b!2510146 (= e!1590925 e!1590924)))

(declare-fun b!2510147 () Bool)

(assert (=> b!2510147 (= e!1590923 e!1590925)))

(declare-fun c!399829 () Bool)

(assert (=> b!2510147 (= c!399829 ((_ is Star!7459) r!27340))))

(declare-fun bm!155650 () Bool)

(assert (=> bm!155650 (= call!155656 call!155655)))

(declare-fun b!2510148 () Bool)

(assert (=> b!2510148 (= e!1590925 (Concat!12155 call!155655 r!27340))))

(declare-fun bm!155651 () Bool)

(assert (=> bm!155651 (= call!155654 (derivativeStep!2028 (ite c!399832 (regTwo!15431 r!27340) (ite c!399829 (reg!7788 r!27340) (regOne!15430 r!27340))) c!14016))))

(assert (= (and d!716541 c!399831) b!2510143))

(assert (= (and d!716541 (not c!399831)) b!2510139))

(assert (= (and b!2510139 c!399830) b!2510145))

(assert (= (and b!2510139 (not c!399830)) b!2510140))

(assert (= (and b!2510140 c!399832) b!2510144))

(assert (= (and b!2510140 (not c!399832)) b!2510147))

(assert (= (and b!2510147 c!399829) b!2510148))

(assert (= (and b!2510147 (not c!399829)) b!2510146))

(assert (= (and b!2510146 c!399828) b!2510141))

(assert (= (and b!2510146 (not c!399828)) b!2510142))

(assert (= (or b!2510141 b!2510142) bm!155650))

(assert (= (or b!2510148 bm!155650) bm!155648))

(assert (= (or b!2510144 bm!155648) bm!155651))

(assert (= (or b!2510144 b!2510141) bm!155649))

(declare-fun m!2869167 () Bool)

(assert (=> bm!155649 m!2869167))

(declare-fun m!2869169 () Bool)

(assert (=> d!716541 m!2869169))

(assert (=> d!716541 m!2869109))

(assert (=> b!2510146 m!2869111))

(declare-fun m!2869171 () Bool)

(assert (=> bm!155651 m!2869171))

(assert (=> b!2510052 d!716541))

(declare-fun d!716545 () Bool)

(declare-fun e!1590971 () Bool)

(assert (=> d!716545 e!1590971))

(declare-fun c!399855 () Bool)

(assert (=> d!716545 (= c!399855 ((_ is EmptyExpr!7459) EmptyLang!7459))))

(declare-fun lt!897535 () Bool)

(declare-fun e!1590968 () Bool)

(assert (=> d!716545 (= lt!897535 e!1590968)))

(declare-fun c!399856 () Bool)

(declare-fun isEmpty!16882 (List!29524) Bool)

(assert (=> d!716545 (= c!399856 (isEmpty!16882 tl!4068))))

(assert (=> d!716545 (validRegex!3085 EmptyLang!7459)))

(assert (=> d!716545 (= (matchR!3458 EmptyLang!7459 tl!4068) lt!897535)))

(declare-fun b!2510220 () Bool)

(declare-fun res!1061177 () Bool)

(declare-fun e!1590972 () Bool)

(assert (=> b!2510220 (=> res!1061177 e!1590972)))

(declare-fun tail!4005 (List!29524) List!29524)

(assert (=> b!2510220 (= res!1061177 (not (isEmpty!16882 (tail!4005 tl!4068))))))

(declare-fun b!2510221 () Bool)

(declare-fun res!1061174 () Bool)

(declare-fun e!1590966 () Bool)

(assert (=> b!2510221 (=> res!1061174 e!1590966)))

(assert (=> b!2510221 (= res!1061174 (not ((_ is ElementMatch!7459) EmptyLang!7459)))))

(declare-fun e!1590969 () Bool)

(assert (=> b!2510221 (= e!1590969 e!1590966)))

(declare-fun b!2510222 () Bool)

(declare-fun e!1590967 () Bool)

(assert (=> b!2510222 (= e!1590967 e!1590972)))

(declare-fun res!1061181 () Bool)

(assert (=> b!2510222 (=> res!1061181 e!1590972)))

(declare-fun call!155671 () Bool)

(assert (=> b!2510222 (= res!1061181 call!155671)))

(declare-fun b!2510223 () Bool)

(assert (=> b!2510223 (= e!1590971 e!1590969)))

(declare-fun c!399854 () Bool)

(assert (=> b!2510223 (= c!399854 ((_ is EmptyLang!7459) EmptyLang!7459))))

(declare-fun b!2510224 () Bool)

(assert (=> b!2510224 (= e!1590968 (nullable!2376 EmptyLang!7459))))

(declare-fun b!2510225 () Bool)

(assert (=> b!2510225 (= e!1590966 e!1590967)))

(declare-fun res!1061176 () Bool)

(assert (=> b!2510225 (=> (not res!1061176) (not e!1590967))))

(assert (=> b!2510225 (= res!1061176 (not lt!897535))))

(declare-fun bm!155666 () Bool)

(assert (=> bm!155666 (= call!155671 (isEmpty!16882 tl!4068))))

(declare-fun b!2510226 () Bool)

(declare-fun res!1061180 () Bool)

(declare-fun e!1590970 () Bool)

(assert (=> b!2510226 (=> (not res!1061180) (not e!1590970))))

(assert (=> b!2510226 (= res!1061180 (isEmpty!16882 (tail!4005 tl!4068)))))

(declare-fun b!2510227 () Bool)

(declare-fun head!5728 (List!29524) C!15076)

(assert (=> b!2510227 (= e!1590970 (= (head!5728 tl!4068) (c!399801 EmptyLang!7459)))))

(declare-fun b!2510228 () Bool)

(assert (=> b!2510228 (= e!1590971 (= lt!897535 call!155671))))

(declare-fun b!2510229 () Bool)

(declare-fun res!1061179 () Bool)

(assert (=> b!2510229 (=> res!1061179 e!1590966)))

(assert (=> b!2510229 (= res!1061179 e!1590970)))

(declare-fun res!1061178 () Bool)

(assert (=> b!2510229 (=> (not res!1061178) (not e!1590970))))

(assert (=> b!2510229 (= res!1061178 lt!897535)))

(declare-fun b!2510230 () Bool)

(assert (=> b!2510230 (= e!1590968 (matchR!3458 (derivativeStep!2028 EmptyLang!7459 (head!5728 tl!4068)) (tail!4005 tl!4068)))))

(declare-fun b!2510231 () Bool)

(assert (=> b!2510231 (= e!1590969 (not lt!897535))))

(declare-fun b!2510232 () Bool)

(assert (=> b!2510232 (= e!1590972 (not (= (head!5728 tl!4068) (c!399801 EmptyLang!7459))))))

(declare-fun b!2510233 () Bool)

(declare-fun res!1061175 () Bool)

(assert (=> b!2510233 (=> (not res!1061175) (not e!1590970))))

(assert (=> b!2510233 (= res!1061175 (not call!155671))))

(assert (= (and d!716545 c!399856) b!2510224))

(assert (= (and d!716545 (not c!399856)) b!2510230))

(assert (= (and d!716545 c!399855) b!2510228))

(assert (= (and d!716545 (not c!399855)) b!2510223))

(assert (= (and b!2510223 c!399854) b!2510231))

(assert (= (and b!2510223 (not c!399854)) b!2510221))

(assert (= (and b!2510221 (not res!1061174)) b!2510229))

(assert (= (and b!2510229 res!1061178) b!2510233))

(assert (= (and b!2510233 res!1061175) b!2510226))

(assert (= (and b!2510226 res!1061180) b!2510227))

(assert (= (and b!2510229 (not res!1061179)) b!2510225))

(assert (= (and b!2510225 res!1061176) b!2510222))

(assert (= (and b!2510222 (not res!1061181)) b!2510220))

(assert (= (and b!2510220 (not res!1061177)) b!2510232))

(assert (= (or b!2510228 b!2510222 b!2510233) bm!155666))

(declare-fun m!2869187 () Bool)

(assert (=> b!2510230 m!2869187))

(assert (=> b!2510230 m!2869187))

(declare-fun m!2869189 () Bool)

(assert (=> b!2510230 m!2869189))

(declare-fun m!2869191 () Bool)

(assert (=> b!2510230 m!2869191))

(assert (=> b!2510230 m!2869189))

(assert (=> b!2510230 m!2869191))

(declare-fun m!2869193 () Bool)

(assert (=> b!2510230 m!2869193))

(declare-fun m!2869195 () Bool)

(assert (=> bm!155666 m!2869195))

(assert (=> b!2510227 m!2869187))

(assert (=> b!2510220 m!2869191))

(assert (=> b!2510220 m!2869191))

(declare-fun m!2869197 () Bool)

(assert (=> b!2510220 m!2869197))

(assert (=> d!716545 m!2869195))

(declare-fun m!2869199 () Bool)

(assert (=> d!716545 m!2869199))

(declare-fun m!2869201 () Bool)

(assert (=> b!2510224 m!2869201))

(assert (=> b!2510226 m!2869191))

(assert (=> b!2510226 m!2869191))

(assert (=> b!2510226 m!2869197))

(assert (=> b!2510232 m!2869187))

(assert (=> b!2510047 d!716545))

(declare-fun b!2510282 () Bool)

(declare-fun e!1591003 () Bool)

(declare-fun e!1591006 () Bool)

(assert (=> b!2510282 (= e!1591003 e!1591006)))

(declare-fun res!1061204 () Bool)

(assert (=> b!2510282 (= res!1061204 (not (nullable!2376 (reg!7788 r!27340))))))

(assert (=> b!2510282 (=> (not res!1061204) (not e!1591006))))

(declare-fun b!2510283 () Bool)

(declare-fun e!1591004 () Bool)

(declare-fun call!155684 () Bool)

(assert (=> b!2510283 (= e!1591004 call!155684)))

(declare-fun b!2510284 () Bool)

(declare-fun res!1061202 () Bool)

(declare-fun e!1591005 () Bool)

(assert (=> b!2510284 (=> res!1061202 e!1591005)))

(assert (=> b!2510284 (= res!1061202 (not ((_ is Concat!12155) r!27340)))))

(declare-fun e!1591002 () Bool)

(assert (=> b!2510284 (= e!1591002 e!1591005)))

(declare-fun bm!155678 () Bool)

(declare-fun c!399872 () Bool)

(assert (=> bm!155678 (= call!155684 (validRegex!3085 (ite c!399872 (regTwo!15431 r!27340) (regOne!15430 r!27340))))))

(declare-fun b!2510285 () Bool)

(declare-fun e!1591008 () Bool)

(assert (=> b!2510285 (= e!1591005 e!1591008)))

(declare-fun res!1061203 () Bool)

(assert (=> b!2510285 (=> (not res!1061203) (not e!1591008))))

(assert (=> b!2510285 (= res!1061203 call!155684)))

(declare-fun bm!155679 () Bool)

(declare-fun call!155685 () Bool)

(declare-fun call!155683 () Bool)

(assert (=> bm!155679 (= call!155685 call!155683)))

(declare-fun d!716551 () Bool)

(declare-fun res!1061200 () Bool)

(declare-fun e!1591007 () Bool)

(assert (=> d!716551 (=> res!1061200 e!1591007)))

(assert (=> d!716551 (= res!1061200 ((_ is ElementMatch!7459) r!27340))))

(assert (=> d!716551 (= (validRegex!3085 r!27340) e!1591007)))

(declare-fun b!2510286 () Bool)

(assert (=> b!2510286 (= e!1591003 e!1591002)))

(assert (=> b!2510286 (= c!399872 ((_ is Union!7459) r!27340))))

(declare-fun b!2510287 () Bool)

(declare-fun res!1061201 () Bool)

(assert (=> b!2510287 (=> (not res!1061201) (not e!1591004))))

(assert (=> b!2510287 (= res!1061201 call!155685)))

(assert (=> b!2510287 (= e!1591002 e!1591004)))

(declare-fun b!2510288 () Bool)

(assert (=> b!2510288 (= e!1591008 call!155685)))

(declare-fun b!2510289 () Bool)

(assert (=> b!2510289 (= e!1591006 call!155683)))

(declare-fun bm!155680 () Bool)

(declare-fun c!399873 () Bool)

(assert (=> bm!155680 (= call!155683 (validRegex!3085 (ite c!399873 (reg!7788 r!27340) (ite c!399872 (regOne!15431 r!27340) (regTwo!15430 r!27340)))))))

(declare-fun b!2510290 () Bool)

(assert (=> b!2510290 (= e!1591007 e!1591003)))

(assert (=> b!2510290 (= c!399873 ((_ is Star!7459) r!27340))))

(assert (= (and d!716551 (not res!1061200)) b!2510290))

(assert (= (and b!2510290 c!399873) b!2510282))

(assert (= (and b!2510290 (not c!399873)) b!2510286))

(assert (= (and b!2510282 res!1061204) b!2510289))

(assert (= (and b!2510286 c!399872) b!2510287))

(assert (= (and b!2510286 (not c!399872)) b!2510284))

(assert (= (and b!2510287 res!1061201) b!2510283))

(assert (= (and b!2510284 (not res!1061202)) b!2510285))

(assert (= (and b!2510285 res!1061203) b!2510288))

(assert (= (or b!2510287 b!2510288) bm!155679))

(assert (= (or b!2510283 b!2510285) bm!155678))

(assert (= (or b!2510289 bm!155679) bm!155680))

(declare-fun m!2869233 () Bool)

(assert (=> b!2510282 m!2869233))

(declare-fun m!2869235 () Bool)

(assert (=> bm!155678 m!2869235))

(declare-fun m!2869237 () Bool)

(assert (=> bm!155680 m!2869237))

(assert (=> start!244816 d!716551))

(declare-fun b!2510295 () Bool)

(declare-fun e!1591014 () Bool)

(declare-fun e!1591017 () Bool)

(assert (=> b!2510295 (= e!1591014 e!1591017)))

(declare-fun res!1061213 () Bool)

(assert (=> b!2510295 (= res!1061213 (not (nullable!2376 (reg!7788 (regOne!15430 r!27340)))))))

(assert (=> b!2510295 (=> (not res!1061213) (not e!1591017))))

(declare-fun b!2510296 () Bool)

(declare-fun e!1591015 () Bool)

(declare-fun call!155687 () Bool)

(assert (=> b!2510296 (= e!1591015 call!155687)))

(declare-fun b!2510297 () Bool)

(declare-fun res!1061211 () Bool)

(declare-fun e!1591016 () Bool)

(assert (=> b!2510297 (=> res!1061211 e!1591016)))

(assert (=> b!2510297 (= res!1061211 (not ((_ is Concat!12155) (regOne!15430 r!27340))))))

(declare-fun e!1591013 () Bool)

(assert (=> b!2510297 (= e!1591013 e!1591016)))

(declare-fun bm!155681 () Bool)

(declare-fun c!399874 () Bool)

(assert (=> bm!155681 (= call!155687 (validRegex!3085 (ite c!399874 (regTwo!15431 (regOne!15430 r!27340)) (regOne!15430 (regOne!15430 r!27340)))))))

(declare-fun b!2510298 () Bool)

(declare-fun e!1591019 () Bool)

(assert (=> b!2510298 (= e!1591016 e!1591019)))

(declare-fun res!1061212 () Bool)

(assert (=> b!2510298 (=> (not res!1061212) (not e!1591019))))

(assert (=> b!2510298 (= res!1061212 call!155687)))

(declare-fun bm!155682 () Bool)

(declare-fun call!155688 () Bool)

(declare-fun call!155686 () Bool)

(assert (=> bm!155682 (= call!155688 call!155686)))

(declare-fun d!716559 () Bool)

(declare-fun res!1061209 () Bool)

(declare-fun e!1591018 () Bool)

(assert (=> d!716559 (=> res!1061209 e!1591018)))

(assert (=> d!716559 (= res!1061209 ((_ is ElementMatch!7459) (regOne!15430 r!27340)))))

(assert (=> d!716559 (= (validRegex!3085 (regOne!15430 r!27340)) e!1591018)))

(declare-fun b!2510299 () Bool)

(assert (=> b!2510299 (= e!1591014 e!1591013)))

(assert (=> b!2510299 (= c!399874 ((_ is Union!7459) (regOne!15430 r!27340)))))

(declare-fun b!2510300 () Bool)

(declare-fun res!1061210 () Bool)

(assert (=> b!2510300 (=> (not res!1061210) (not e!1591015))))

(assert (=> b!2510300 (= res!1061210 call!155688)))

(assert (=> b!2510300 (= e!1591013 e!1591015)))

(declare-fun b!2510301 () Bool)

(assert (=> b!2510301 (= e!1591019 call!155688)))

(declare-fun b!2510302 () Bool)

(assert (=> b!2510302 (= e!1591017 call!155686)))

(declare-fun c!399875 () Bool)

(declare-fun bm!155683 () Bool)

(assert (=> bm!155683 (= call!155686 (validRegex!3085 (ite c!399875 (reg!7788 (regOne!15430 r!27340)) (ite c!399874 (regOne!15431 (regOne!15430 r!27340)) (regTwo!15430 (regOne!15430 r!27340))))))))

(declare-fun b!2510303 () Bool)

(assert (=> b!2510303 (= e!1591018 e!1591014)))

(assert (=> b!2510303 (= c!399875 ((_ is Star!7459) (regOne!15430 r!27340)))))

(assert (= (and d!716559 (not res!1061209)) b!2510303))

(assert (= (and b!2510303 c!399875) b!2510295))

(assert (= (and b!2510303 (not c!399875)) b!2510299))

(assert (= (and b!2510295 res!1061213) b!2510302))

(assert (= (and b!2510299 c!399874) b!2510300))

(assert (= (and b!2510299 (not c!399874)) b!2510297))

(assert (= (and b!2510300 res!1061210) b!2510296))

(assert (= (and b!2510297 (not res!1061211)) b!2510298))

(assert (= (and b!2510298 res!1061212) b!2510301))

(assert (= (or b!2510300 b!2510301) bm!155682))

(assert (= (or b!2510296 b!2510298) bm!155681))

(assert (= (or b!2510302 bm!155682) bm!155683))

(declare-fun m!2869239 () Bool)

(assert (=> b!2510295 m!2869239))

(declare-fun m!2869241 () Bool)

(assert (=> bm!155681 m!2869241))

(declare-fun m!2869243 () Bool)

(assert (=> bm!155683 m!2869243))

(assert (=> b!2510049 d!716559))

(declare-fun d!716561 () Bool)

(assert (=> d!716561 (= (nullable!2376 (regOne!15430 r!27340)) (nullableFct!625 (regOne!15430 r!27340)))))

(declare-fun bs!468753 () Bool)

(assert (= bs!468753 d!716561))

(declare-fun m!2869245 () Bool)

(assert (=> bs!468753 m!2869245))

(assert (=> b!2510050 d!716561))

(declare-fun b!2510306 () Bool)

(declare-fun e!1591025 () Regex!7459)

(declare-fun e!1591026 () Regex!7459)

(assert (=> b!2510306 (= e!1591025 e!1591026)))

(declare-fun c!399878 () Bool)

(assert (=> b!2510306 (= c!399878 ((_ is ElementMatch!7459) (regOne!15430 r!27340)))))

(declare-fun b!2510307 () Bool)

(declare-fun c!399880 () Bool)

(assert (=> b!2510307 (= c!399880 ((_ is Union!7459) (regOne!15430 r!27340)))))

(declare-fun e!1591022 () Regex!7459)

(assert (=> b!2510307 (= e!1591026 e!1591022)))

(declare-fun bm!155684 () Bool)

(declare-fun call!155691 () Regex!7459)

(declare-fun call!155690 () Regex!7459)

(assert (=> bm!155684 (= call!155691 call!155690)))

(declare-fun call!155689 () Regex!7459)

(declare-fun bm!155685 () Bool)

(assert (=> bm!155685 (= call!155689 (derivativeStep!2028 (ite c!399880 (regOne!15431 (regOne!15430 r!27340)) (regTwo!15430 (regOne!15430 r!27340))) c!14016))))

(declare-fun d!716563 () Bool)

(declare-fun lt!897544 () Regex!7459)

(assert (=> d!716563 (validRegex!3085 lt!897544)))

(assert (=> d!716563 (= lt!897544 e!1591025)))

(declare-fun c!399879 () Bool)

(assert (=> d!716563 (= c!399879 (or ((_ is EmptyExpr!7459) (regOne!15430 r!27340)) ((_ is EmptyLang!7459) (regOne!15430 r!27340))))))

(assert (=> d!716563 (validRegex!3085 (regOne!15430 r!27340))))

(assert (=> d!716563 (= (derivativeStep!2028 (regOne!15430 r!27340) c!14016) lt!897544)))

(declare-fun call!155692 () Regex!7459)

(declare-fun b!2510308 () Bool)

(declare-fun e!1591023 () Regex!7459)

(assert (=> b!2510308 (= e!1591023 (Union!7459 (Concat!12155 call!155692 (regTwo!15430 (regOne!15430 r!27340))) call!155689))))

(declare-fun b!2510309 () Bool)

(assert (=> b!2510309 (= e!1591023 (Union!7459 (Concat!12155 call!155692 (regTwo!15430 (regOne!15430 r!27340))) EmptyLang!7459))))

(declare-fun b!2510310 () Bool)

(assert (=> b!2510310 (= e!1591025 EmptyLang!7459)))

(declare-fun b!2510311 () Bool)

(assert (=> b!2510311 (= e!1591022 (Union!7459 call!155689 call!155690))))

(declare-fun b!2510312 () Bool)

(assert (=> b!2510312 (= e!1591026 (ite (= c!14016 (c!399801 (regOne!15430 r!27340))) EmptyExpr!7459 EmptyLang!7459))))

(declare-fun b!2510313 () Bool)

(declare-fun c!399876 () Bool)

(assert (=> b!2510313 (= c!399876 (nullable!2376 (regOne!15430 (regOne!15430 r!27340))))))

(declare-fun e!1591024 () Regex!7459)

(assert (=> b!2510313 (= e!1591024 e!1591023)))

(declare-fun b!2510314 () Bool)

(assert (=> b!2510314 (= e!1591022 e!1591024)))

(declare-fun c!399877 () Bool)

(assert (=> b!2510314 (= c!399877 ((_ is Star!7459) (regOne!15430 r!27340)))))

(declare-fun bm!155686 () Bool)

(assert (=> bm!155686 (= call!155692 call!155691)))

(declare-fun b!2510315 () Bool)

(assert (=> b!2510315 (= e!1591024 (Concat!12155 call!155691 (regOne!15430 r!27340)))))

(declare-fun bm!155687 () Bool)

(assert (=> bm!155687 (= call!155690 (derivativeStep!2028 (ite c!399880 (regTwo!15431 (regOne!15430 r!27340)) (ite c!399877 (reg!7788 (regOne!15430 r!27340)) (regOne!15430 (regOne!15430 r!27340)))) c!14016))))

(assert (= (and d!716563 c!399879) b!2510310))

(assert (= (and d!716563 (not c!399879)) b!2510306))

(assert (= (and b!2510306 c!399878) b!2510312))

(assert (= (and b!2510306 (not c!399878)) b!2510307))

(assert (= (and b!2510307 c!399880) b!2510311))

(assert (= (and b!2510307 (not c!399880)) b!2510314))

(assert (= (and b!2510314 c!399877) b!2510315))

(assert (= (and b!2510314 (not c!399877)) b!2510313))

(assert (= (and b!2510313 c!399876) b!2510308))

(assert (= (and b!2510313 (not c!399876)) b!2510309))

(assert (= (or b!2510308 b!2510309) bm!155686))

(assert (= (or b!2510315 bm!155686) bm!155684))

(assert (= (or b!2510311 bm!155684) bm!155687))

(assert (= (or b!2510311 b!2510308) bm!155685))

(declare-fun m!2869251 () Bool)

(assert (=> bm!155685 m!2869251))

(declare-fun m!2869253 () Bool)

(assert (=> d!716563 m!2869253))

(assert (=> d!716563 m!2869139))

(declare-fun m!2869255 () Bool)

(assert (=> b!2510313 m!2869255))

(declare-fun m!2869257 () Bool)

(assert (=> bm!155687 m!2869257))

(assert (=> b!2510051 d!716563))

(declare-fun d!716567 () Bool)

(declare-fun lt!897546 () Regex!7459)

(assert (=> d!716567 (validRegex!3085 lt!897546)))

(declare-fun e!1591034 () Regex!7459)

(assert (=> d!716567 (= lt!897546 e!1591034)))

(declare-fun c!399884 () Bool)

(assert (=> d!716567 (= c!399884 ((_ is Cons!29424) tl!4068))))

(assert (=> d!716567 (validRegex!3085 EmptyLang!7459)))

(assert (=> d!716567 (= (derivative!154 EmptyLang!7459 tl!4068) lt!897546)))

(declare-fun b!2510330 () Bool)

(assert (=> b!2510330 (= e!1591034 (derivative!154 (derivativeStep!2028 EmptyLang!7459 (h!34844 tl!4068)) (t!211223 tl!4068)))))

(declare-fun b!2510331 () Bool)

(assert (=> b!2510331 (= e!1591034 EmptyLang!7459)))

(assert (= (and d!716567 c!399884) b!2510330))

(assert (= (and d!716567 (not c!399884)) b!2510331))

(declare-fun m!2869265 () Bool)

(assert (=> d!716567 m!2869265))

(assert (=> d!716567 m!2869199))

(declare-fun m!2869267 () Bool)

(assert (=> b!2510330 m!2869267))

(assert (=> b!2510330 m!2869267))

(declare-fun m!2869269 () Bool)

(assert (=> b!2510330 m!2869269))

(assert (=> b!2510051 d!716567))

(declare-fun d!716571 () Bool)

(declare-fun e!1591041 () Bool)

(assert (=> d!716571 e!1591041))

(declare-fun c!399887 () Bool)

(assert (=> d!716571 (= c!399887 ((_ is EmptyExpr!7459) (derivative!154 lt!897518 tl!4068)))))

(declare-fun lt!897548 () Bool)

(declare-fun e!1591038 () Bool)

(assert (=> d!716571 (= lt!897548 e!1591038)))

(declare-fun c!399888 () Bool)

(assert (=> d!716571 (= c!399888 (isEmpty!16882 Nil!29424))))

(assert (=> d!716571 (validRegex!3085 (derivative!154 lt!897518 tl!4068))))

(assert (=> d!716571 (= (matchR!3458 (derivative!154 lt!897518 tl!4068) Nil!29424) lt!897548)))

(declare-fun b!2510334 () Bool)

(declare-fun res!1061227 () Bool)

(declare-fun e!1591042 () Bool)

(assert (=> b!2510334 (=> res!1061227 e!1591042)))

(assert (=> b!2510334 (= res!1061227 (not (isEmpty!16882 (tail!4005 Nil!29424))))))

(declare-fun b!2510335 () Bool)

(declare-fun res!1061224 () Bool)

(declare-fun e!1591036 () Bool)

(assert (=> b!2510335 (=> res!1061224 e!1591036)))

(assert (=> b!2510335 (= res!1061224 (not ((_ is ElementMatch!7459) (derivative!154 lt!897518 tl!4068))))))

(declare-fun e!1591039 () Bool)

(assert (=> b!2510335 (= e!1591039 e!1591036)))

(declare-fun b!2510336 () Bool)

(declare-fun e!1591037 () Bool)

(assert (=> b!2510336 (= e!1591037 e!1591042)))

(declare-fun res!1061231 () Bool)

(assert (=> b!2510336 (=> res!1061231 e!1591042)))

(declare-fun call!155694 () Bool)

(assert (=> b!2510336 (= res!1061231 call!155694)))

(declare-fun b!2510337 () Bool)

(assert (=> b!2510337 (= e!1591041 e!1591039)))

(declare-fun c!399886 () Bool)

(assert (=> b!2510337 (= c!399886 ((_ is EmptyLang!7459) (derivative!154 lt!897518 tl!4068)))))

(declare-fun b!2510338 () Bool)

(assert (=> b!2510338 (= e!1591038 (nullable!2376 (derivative!154 lt!897518 tl!4068)))))

(declare-fun b!2510339 () Bool)

(assert (=> b!2510339 (= e!1591036 e!1591037)))

(declare-fun res!1061226 () Bool)

(assert (=> b!2510339 (=> (not res!1061226) (not e!1591037))))

(assert (=> b!2510339 (= res!1061226 (not lt!897548))))

(declare-fun bm!155689 () Bool)

(assert (=> bm!155689 (= call!155694 (isEmpty!16882 Nil!29424))))

(declare-fun b!2510340 () Bool)

(declare-fun res!1061230 () Bool)

(declare-fun e!1591040 () Bool)

(assert (=> b!2510340 (=> (not res!1061230) (not e!1591040))))

(assert (=> b!2510340 (= res!1061230 (isEmpty!16882 (tail!4005 Nil!29424)))))

(declare-fun b!2510341 () Bool)

(assert (=> b!2510341 (= e!1591040 (= (head!5728 Nil!29424) (c!399801 (derivative!154 lt!897518 tl!4068))))))

(declare-fun b!2510342 () Bool)

(assert (=> b!2510342 (= e!1591041 (= lt!897548 call!155694))))

(declare-fun b!2510343 () Bool)

(declare-fun res!1061229 () Bool)

(assert (=> b!2510343 (=> res!1061229 e!1591036)))

(assert (=> b!2510343 (= res!1061229 e!1591040)))

(declare-fun res!1061228 () Bool)

(assert (=> b!2510343 (=> (not res!1061228) (not e!1591040))))

(assert (=> b!2510343 (= res!1061228 lt!897548)))

(declare-fun b!2510344 () Bool)

(assert (=> b!2510344 (= e!1591038 (matchR!3458 (derivativeStep!2028 (derivative!154 lt!897518 tl!4068) (head!5728 Nil!29424)) (tail!4005 Nil!29424)))))

(declare-fun b!2510345 () Bool)

(assert (=> b!2510345 (= e!1591039 (not lt!897548))))

(declare-fun b!2510346 () Bool)

(assert (=> b!2510346 (= e!1591042 (not (= (head!5728 Nil!29424) (c!399801 (derivative!154 lt!897518 tl!4068)))))))

(declare-fun b!2510347 () Bool)

(declare-fun res!1061225 () Bool)

(assert (=> b!2510347 (=> (not res!1061225) (not e!1591040))))

(assert (=> b!2510347 (= res!1061225 (not call!155694))))

(assert (= (and d!716571 c!399888) b!2510338))

(assert (= (and d!716571 (not c!399888)) b!2510344))

(assert (= (and d!716571 c!399887) b!2510342))

(assert (= (and d!716571 (not c!399887)) b!2510337))

(assert (= (and b!2510337 c!399886) b!2510345))

(assert (= (and b!2510337 (not c!399886)) b!2510335))

(assert (= (and b!2510335 (not res!1061224)) b!2510343))

(assert (= (and b!2510343 res!1061228) b!2510347))

(assert (= (and b!2510347 res!1061225) b!2510340))

(assert (= (and b!2510340 res!1061230) b!2510341))

(assert (= (and b!2510343 (not res!1061229)) b!2510339))

(assert (= (and b!2510339 res!1061226) b!2510336))

(assert (= (and b!2510336 (not res!1061231)) b!2510334))

(assert (= (and b!2510334 (not res!1061227)) b!2510346))

(assert (= (or b!2510342 b!2510336 b!2510347) bm!155689))

(declare-fun m!2869277 () Bool)

(assert (=> b!2510344 m!2869277))

(assert (=> b!2510344 m!2869125))

(assert (=> b!2510344 m!2869277))

(declare-fun m!2869279 () Bool)

(assert (=> b!2510344 m!2869279))

(declare-fun m!2869281 () Bool)

(assert (=> b!2510344 m!2869281))

(assert (=> b!2510344 m!2869279))

(assert (=> b!2510344 m!2869281))

(declare-fun m!2869283 () Bool)

(assert (=> b!2510344 m!2869283))

(declare-fun m!2869285 () Bool)

(assert (=> bm!155689 m!2869285))

(assert (=> b!2510341 m!2869277))

(assert (=> b!2510334 m!2869281))

(assert (=> b!2510334 m!2869281))

(declare-fun m!2869287 () Bool)

(assert (=> b!2510334 m!2869287))

(assert (=> d!716571 m!2869285))

(assert (=> d!716571 m!2869125))

(declare-fun m!2869289 () Bool)

(assert (=> d!716571 m!2869289))

(assert (=> b!2510338 m!2869125))

(declare-fun m!2869291 () Bool)

(assert (=> b!2510338 m!2869291))

(assert (=> b!2510340 m!2869281))

(assert (=> b!2510340 m!2869281))

(assert (=> b!2510340 m!2869287))

(assert (=> b!2510346 m!2869277))

(assert (=> b!2510051 d!716571))

(declare-fun d!716575 () Bool)

(declare-fun e!1591048 () Bool)

(assert (=> d!716575 e!1591048))

(declare-fun c!399890 () Bool)

(assert (=> d!716575 (= c!399890 ((_ is EmptyExpr!7459) lt!897518))))

(declare-fun lt!897549 () Bool)

(declare-fun e!1591045 () Bool)

(assert (=> d!716575 (= lt!897549 e!1591045)))

(declare-fun c!399891 () Bool)

(assert (=> d!716575 (= c!399891 (isEmpty!16882 tl!4068))))

(assert (=> d!716575 (validRegex!3085 lt!897518)))

(assert (=> d!716575 (= (matchR!3458 lt!897518 tl!4068) lt!897549)))

(declare-fun b!2510348 () Bool)

(declare-fun res!1061235 () Bool)

(declare-fun e!1591049 () Bool)

(assert (=> b!2510348 (=> res!1061235 e!1591049)))

(assert (=> b!2510348 (= res!1061235 (not (isEmpty!16882 (tail!4005 tl!4068))))))

(declare-fun b!2510349 () Bool)

(declare-fun res!1061232 () Bool)

(declare-fun e!1591043 () Bool)

(assert (=> b!2510349 (=> res!1061232 e!1591043)))

(assert (=> b!2510349 (= res!1061232 (not ((_ is ElementMatch!7459) lt!897518)))))

(declare-fun e!1591046 () Bool)

(assert (=> b!2510349 (= e!1591046 e!1591043)))

(declare-fun b!2510350 () Bool)

(declare-fun e!1591044 () Bool)

(assert (=> b!2510350 (= e!1591044 e!1591049)))

(declare-fun res!1061239 () Bool)

(assert (=> b!2510350 (=> res!1061239 e!1591049)))

(declare-fun call!155695 () Bool)

(assert (=> b!2510350 (= res!1061239 call!155695)))

(declare-fun b!2510351 () Bool)

(assert (=> b!2510351 (= e!1591048 e!1591046)))

(declare-fun c!399889 () Bool)

(assert (=> b!2510351 (= c!399889 ((_ is EmptyLang!7459) lt!897518))))

(declare-fun b!2510352 () Bool)

(assert (=> b!2510352 (= e!1591045 (nullable!2376 lt!897518))))

(declare-fun b!2510353 () Bool)

(assert (=> b!2510353 (= e!1591043 e!1591044)))

(declare-fun res!1061234 () Bool)

(assert (=> b!2510353 (=> (not res!1061234) (not e!1591044))))

(assert (=> b!2510353 (= res!1061234 (not lt!897549))))

(declare-fun bm!155690 () Bool)

(assert (=> bm!155690 (= call!155695 (isEmpty!16882 tl!4068))))

(declare-fun b!2510354 () Bool)

(declare-fun res!1061238 () Bool)

(declare-fun e!1591047 () Bool)

(assert (=> b!2510354 (=> (not res!1061238) (not e!1591047))))

(assert (=> b!2510354 (= res!1061238 (isEmpty!16882 (tail!4005 tl!4068)))))

(declare-fun b!2510355 () Bool)

(assert (=> b!2510355 (= e!1591047 (= (head!5728 tl!4068) (c!399801 lt!897518)))))

(declare-fun b!2510356 () Bool)

(assert (=> b!2510356 (= e!1591048 (= lt!897549 call!155695))))

(declare-fun b!2510357 () Bool)

(declare-fun res!1061237 () Bool)

(assert (=> b!2510357 (=> res!1061237 e!1591043)))

(assert (=> b!2510357 (= res!1061237 e!1591047)))

(declare-fun res!1061236 () Bool)

(assert (=> b!2510357 (=> (not res!1061236) (not e!1591047))))

(assert (=> b!2510357 (= res!1061236 lt!897549)))

(declare-fun b!2510358 () Bool)

(assert (=> b!2510358 (= e!1591045 (matchR!3458 (derivativeStep!2028 lt!897518 (head!5728 tl!4068)) (tail!4005 tl!4068)))))

(declare-fun b!2510359 () Bool)

(assert (=> b!2510359 (= e!1591046 (not lt!897549))))

(declare-fun b!2510360 () Bool)

(assert (=> b!2510360 (= e!1591049 (not (= (head!5728 tl!4068) (c!399801 lt!897518))))))

(declare-fun b!2510361 () Bool)

(declare-fun res!1061233 () Bool)

(assert (=> b!2510361 (=> (not res!1061233) (not e!1591047))))

(assert (=> b!2510361 (= res!1061233 (not call!155695))))

(assert (= (and d!716575 c!399891) b!2510352))

(assert (= (and d!716575 (not c!399891)) b!2510358))

(assert (= (and d!716575 c!399890) b!2510356))

(assert (= (and d!716575 (not c!399890)) b!2510351))

(assert (= (and b!2510351 c!399889) b!2510359))

(assert (= (and b!2510351 (not c!399889)) b!2510349))

(assert (= (and b!2510349 (not res!1061232)) b!2510357))

(assert (= (and b!2510357 res!1061236) b!2510361))

(assert (= (and b!2510361 res!1061233) b!2510354))

(assert (= (and b!2510354 res!1061238) b!2510355))

(assert (= (and b!2510357 (not res!1061237)) b!2510353))

(assert (= (and b!2510353 res!1061234) b!2510350))

(assert (= (and b!2510350 (not res!1061239)) b!2510348))

(assert (= (and b!2510348 (not res!1061235)) b!2510360))

(assert (= (or b!2510356 b!2510350 b!2510361) bm!155690))

(assert (=> b!2510358 m!2869187))

(assert (=> b!2510358 m!2869187))

(declare-fun m!2869293 () Bool)

(assert (=> b!2510358 m!2869293))

(assert (=> b!2510358 m!2869191))

(assert (=> b!2510358 m!2869293))

(assert (=> b!2510358 m!2869191))

(declare-fun m!2869295 () Bool)

(assert (=> b!2510358 m!2869295))

(assert (=> bm!155690 m!2869195))

(assert (=> b!2510355 m!2869187))

(assert (=> b!2510348 m!2869191))

(assert (=> b!2510348 m!2869191))

(assert (=> b!2510348 m!2869197))

(assert (=> d!716575 m!2869195))

(declare-fun m!2869297 () Bool)

(assert (=> d!716575 m!2869297))

(declare-fun m!2869299 () Bool)

(assert (=> b!2510352 m!2869299))

(assert (=> b!2510354 m!2869191))

(assert (=> b!2510354 m!2869191))

(assert (=> b!2510354 m!2869197))

(assert (=> b!2510360 m!2869187))

(assert (=> b!2510051 d!716575))

(declare-fun d!716577 () Bool)

(assert (=> d!716577 (= (derivative!154 EmptyLang!7459 tl!4068) EmptyLang!7459)))

(declare-fun lt!897558 () Unit!43167)

(declare-fun choose!14848 (Regex!7459 List!29524) Unit!43167)

(assert (=> d!716577 (= lt!897558 (choose!14848 EmptyLang!7459 tl!4068))))

(assert (=> d!716577 (= EmptyLang!7459 EmptyLang!7459)))

(assert (=> d!716577 (= (lemmaEmptyLangDerivativeIsAFixPoint!6 EmptyLang!7459 tl!4068) lt!897558)))

(declare-fun bs!468756 () Bool)

(assert (= bs!468756 d!716577))

(assert (=> bs!468756 m!2869121))

(declare-fun m!2869305 () Bool)

(assert (=> bs!468756 m!2869305))

(assert (=> b!2510051 d!716577))

(declare-fun d!716583 () Bool)

(declare-fun e!1591074 () Bool)

(assert (=> d!716583 e!1591074))

(declare-fun res!1061250 () Bool)

(assert (=> d!716583 (=> res!1061250 e!1591074)))

(assert (=> d!716583 (= res!1061250 (matchR!3458 lt!897517 tl!4068))))

(declare-fun lt!897563 () Unit!43167)

(declare-fun choose!14849 (Regex!7459 Regex!7459 List!29524) Unit!43167)

(assert (=> d!716583 (= lt!897563 (choose!14849 lt!897517 EmptyLang!7459 tl!4068))))

(declare-fun e!1591075 () Bool)

(assert (=> d!716583 e!1591075))

(declare-fun res!1061249 () Bool)

(assert (=> d!716583 (=> (not res!1061249) (not e!1591075))))

(assert (=> d!716583 (= res!1061249 (validRegex!3085 lt!897517))))

(assert (=> d!716583 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!146 lt!897517 EmptyLang!7459 tl!4068) lt!897563)))

(declare-fun b!2510408 () Bool)

(assert (=> b!2510408 (= e!1591075 (validRegex!3085 EmptyLang!7459))))

(declare-fun b!2510410 () Bool)

(assert (=> b!2510410 (= e!1591074 (matchR!3458 EmptyLang!7459 tl!4068))))

(assert (= (and d!716583 res!1061249) b!2510408))

(assert (= (and d!716583 (not res!1061250)) b!2510410))

(assert (=> d!716583 m!2869123))

(declare-fun m!2869331 () Bool)

(assert (=> d!716583 m!2869331))

(declare-fun m!2869333 () Bool)

(assert (=> d!716583 m!2869333))

(assert (=> b!2510408 m!2869199))

(assert (=> b!2510410 m!2869119))

(assert (=> b!2510051 d!716583))

(declare-fun d!716593 () Bool)

(declare-fun e!1591083 () Bool)

(assert (=> d!716593 e!1591083))

(declare-fun c!399901 () Bool)

(assert (=> d!716593 (= c!399901 ((_ is EmptyExpr!7459) lt!897517))))

(declare-fun lt!897564 () Bool)

(declare-fun e!1591080 () Bool)

(assert (=> d!716593 (= lt!897564 e!1591080)))

(declare-fun c!399902 () Bool)

(assert (=> d!716593 (= c!399902 (isEmpty!16882 tl!4068))))

(assert (=> d!716593 (validRegex!3085 lt!897517)))

(assert (=> d!716593 (= (matchR!3458 lt!897517 tl!4068) lt!897564)))

(declare-fun b!2510420 () Bool)

(declare-fun res!1061254 () Bool)

(declare-fun e!1591084 () Bool)

(assert (=> b!2510420 (=> res!1061254 e!1591084)))

(assert (=> b!2510420 (= res!1061254 (not (isEmpty!16882 (tail!4005 tl!4068))))))

(declare-fun b!2510421 () Bool)

(declare-fun res!1061251 () Bool)

(declare-fun e!1591078 () Bool)

(assert (=> b!2510421 (=> res!1061251 e!1591078)))

(assert (=> b!2510421 (= res!1061251 (not ((_ is ElementMatch!7459) lt!897517)))))

(declare-fun e!1591081 () Bool)

(assert (=> b!2510421 (= e!1591081 e!1591078)))

(declare-fun b!2510422 () Bool)

(declare-fun e!1591079 () Bool)

(assert (=> b!2510422 (= e!1591079 e!1591084)))

(declare-fun res!1061258 () Bool)

(assert (=> b!2510422 (=> res!1061258 e!1591084)))

(declare-fun call!155703 () Bool)

(assert (=> b!2510422 (= res!1061258 call!155703)))

(declare-fun b!2510423 () Bool)

(assert (=> b!2510423 (= e!1591083 e!1591081)))

(declare-fun c!399900 () Bool)

(assert (=> b!2510423 (= c!399900 ((_ is EmptyLang!7459) lt!897517))))

(declare-fun b!2510424 () Bool)

(assert (=> b!2510424 (= e!1591080 (nullable!2376 lt!897517))))

(declare-fun b!2510425 () Bool)

(assert (=> b!2510425 (= e!1591078 e!1591079)))

(declare-fun res!1061253 () Bool)

(assert (=> b!2510425 (=> (not res!1061253) (not e!1591079))))

(assert (=> b!2510425 (= res!1061253 (not lt!897564))))

(declare-fun bm!155698 () Bool)

(assert (=> bm!155698 (= call!155703 (isEmpty!16882 tl!4068))))

(declare-fun b!2510426 () Bool)

(declare-fun res!1061257 () Bool)

(declare-fun e!1591082 () Bool)

(assert (=> b!2510426 (=> (not res!1061257) (not e!1591082))))

(assert (=> b!2510426 (= res!1061257 (isEmpty!16882 (tail!4005 tl!4068)))))

(declare-fun b!2510427 () Bool)

(assert (=> b!2510427 (= e!1591082 (= (head!5728 tl!4068) (c!399801 lt!897517)))))

(declare-fun b!2510428 () Bool)

(assert (=> b!2510428 (= e!1591083 (= lt!897564 call!155703))))

(declare-fun b!2510429 () Bool)

(declare-fun res!1061256 () Bool)

(assert (=> b!2510429 (=> res!1061256 e!1591078)))

(assert (=> b!2510429 (= res!1061256 e!1591082)))

(declare-fun res!1061255 () Bool)

(assert (=> b!2510429 (=> (not res!1061255) (not e!1591082))))

(assert (=> b!2510429 (= res!1061255 lt!897564)))

(declare-fun b!2510430 () Bool)

(assert (=> b!2510430 (= e!1591080 (matchR!3458 (derivativeStep!2028 lt!897517 (head!5728 tl!4068)) (tail!4005 tl!4068)))))

(declare-fun b!2510431 () Bool)

(assert (=> b!2510431 (= e!1591081 (not lt!897564))))

(declare-fun b!2510432 () Bool)

(assert (=> b!2510432 (= e!1591084 (not (= (head!5728 tl!4068) (c!399801 lt!897517))))))

(declare-fun b!2510433 () Bool)

(declare-fun res!1061252 () Bool)

(assert (=> b!2510433 (=> (not res!1061252) (not e!1591082))))

(assert (=> b!2510433 (= res!1061252 (not call!155703))))

(assert (= (and d!716593 c!399902) b!2510424))

(assert (= (and d!716593 (not c!399902)) b!2510430))

(assert (= (and d!716593 c!399901) b!2510428))

(assert (= (and d!716593 (not c!399901)) b!2510423))

(assert (= (and b!2510423 c!399900) b!2510431))

(assert (= (and b!2510423 (not c!399900)) b!2510421))

(assert (= (and b!2510421 (not res!1061251)) b!2510429))

(assert (= (and b!2510429 res!1061255) b!2510433))

(assert (= (and b!2510433 res!1061252) b!2510426))

(assert (= (and b!2510426 res!1061257) b!2510427))

(assert (= (and b!2510429 (not res!1061256)) b!2510425))

(assert (= (and b!2510425 res!1061253) b!2510422))

(assert (= (and b!2510422 (not res!1061258)) b!2510420))

(assert (= (and b!2510420 (not res!1061254)) b!2510432))

(assert (= (or b!2510428 b!2510422 b!2510433) bm!155698))

(assert (=> b!2510430 m!2869187))

(assert (=> b!2510430 m!2869187))

(declare-fun m!2869335 () Bool)

(assert (=> b!2510430 m!2869335))

(assert (=> b!2510430 m!2869191))

(assert (=> b!2510430 m!2869335))

(assert (=> b!2510430 m!2869191))

(declare-fun m!2869337 () Bool)

(assert (=> b!2510430 m!2869337))

(assert (=> bm!155698 m!2869195))

(assert (=> b!2510427 m!2869187))

(assert (=> b!2510420 m!2869191))

(assert (=> b!2510420 m!2869191))

(assert (=> b!2510420 m!2869197))

(assert (=> d!716593 m!2869195))

(assert (=> d!716593 m!2869333))

(declare-fun m!2869339 () Bool)

(assert (=> b!2510424 m!2869339))

(assert (=> b!2510426 m!2869191))

(assert (=> b!2510426 m!2869191))

(assert (=> b!2510426 m!2869197))

(assert (=> b!2510432 m!2869187))

(assert (=> b!2510051 d!716593))

(declare-fun d!716595 () Bool)

(assert (=> d!716595 (= (matchR!3458 lt!897518 tl!4068) (matchR!3458 (derivative!154 lt!897518 tl!4068) Nil!29424))))

(declare-fun lt!897567 () Unit!43167)

(declare-fun choose!14850 (Regex!7459 List!29524) Unit!43167)

(assert (=> d!716595 (= lt!897567 (choose!14850 lt!897518 tl!4068))))

(assert (=> d!716595 (validRegex!3085 lt!897518)))

(assert (=> d!716595 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!104 lt!897518 tl!4068) lt!897567)))

(declare-fun bs!468759 () Bool)

(assert (= bs!468759 d!716595))

(declare-fun m!2869341 () Bool)

(assert (=> bs!468759 m!2869341))

(assert (=> bs!468759 m!2869297))

(assert (=> bs!468759 m!2869125))

(assert (=> bs!468759 m!2869133))

(assert (=> bs!468759 m!2869125))

(assert (=> bs!468759 m!2869127))

(assert (=> b!2510051 d!716595))

(declare-fun d!716597 () Bool)

(declare-fun lt!897568 () Regex!7459)

(assert (=> d!716597 (validRegex!3085 lt!897568)))

(declare-fun e!1591086 () Regex!7459)

(assert (=> d!716597 (= lt!897568 e!1591086)))

(declare-fun c!399903 () Bool)

(assert (=> d!716597 (= c!399903 ((_ is Cons!29424) tl!4068))))

(assert (=> d!716597 (validRegex!3085 lt!897518)))

(assert (=> d!716597 (= (derivative!154 lt!897518 tl!4068) lt!897568)))

(declare-fun b!2510438 () Bool)

(assert (=> b!2510438 (= e!1591086 (derivative!154 (derivativeStep!2028 lt!897518 (h!34844 tl!4068)) (t!211223 tl!4068)))))

(declare-fun b!2510439 () Bool)

(assert (=> b!2510439 (= e!1591086 lt!897518)))

(assert (= (and d!716597 c!399903) b!2510438))

(assert (= (and d!716597 (not c!399903)) b!2510439))

(declare-fun m!2869343 () Bool)

(assert (=> d!716597 m!2869343))

(assert (=> d!716597 m!2869297))

(declare-fun m!2869345 () Bool)

(assert (=> b!2510438 m!2869345))

(assert (=> b!2510438 m!2869345))

(declare-fun m!2869347 () Bool)

(assert (=> b!2510438 m!2869347))

(assert (=> b!2510051 d!716597))

(declare-fun b!2510450 () Bool)

(declare-fun e!1591089 () Bool)

(assert (=> b!2510450 (= e!1591089 tp_is_empty!12773)))

(declare-fun b!2510452 () Bool)

(declare-fun tp!802893 () Bool)

(assert (=> b!2510452 (= e!1591089 tp!802893)))

(declare-fun b!2510453 () Bool)

(declare-fun tp!802894 () Bool)

(declare-fun tp!802892 () Bool)

(assert (=> b!2510453 (= e!1591089 (and tp!802894 tp!802892))))

(declare-fun b!2510451 () Bool)

(declare-fun tp!802891 () Bool)

(declare-fun tp!802895 () Bool)

(assert (=> b!2510451 (= e!1591089 (and tp!802891 tp!802895))))

(assert (=> b!2510043 (= tp!802842 e!1591089)))

(assert (= (and b!2510043 ((_ is ElementMatch!7459) (reg!7788 r!27340))) b!2510450))

(assert (= (and b!2510043 ((_ is Concat!12155) (reg!7788 r!27340))) b!2510451))

(assert (= (and b!2510043 ((_ is Star!7459) (reg!7788 r!27340))) b!2510452))

(assert (= (and b!2510043 ((_ is Union!7459) (reg!7788 r!27340))) b!2510453))

(declare-fun b!2510458 () Bool)

(declare-fun e!1591092 () Bool)

(declare-fun tp!802898 () Bool)

(assert (=> b!2510458 (= e!1591092 (and tp_is_empty!12773 tp!802898))))

(assert (=> b!2510044 (= tp!802839 e!1591092)))

(assert (= (and b!2510044 ((_ is Cons!29424) (t!211223 tl!4068))) b!2510458))

(declare-fun b!2510459 () Bool)

(declare-fun e!1591093 () Bool)

(assert (=> b!2510459 (= e!1591093 tp_is_empty!12773)))

(declare-fun b!2510461 () Bool)

(declare-fun tp!802901 () Bool)

(assert (=> b!2510461 (= e!1591093 tp!802901)))

(declare-fun b!2510462 () Bool)

(declare-fun tp!802902 () Bool)

(declare-fun tp!802900 () Bool)

(assert (=> b!2510462 (= e!1591093 (and tp!802902 tp!802900))))

(declare-fun b!2510460 () Bool)

(declare-fun tp!802899 () Bool)

(declare-fun tp!802903 () Bool)

(assert (=> b!2510460 (= e!1591093 (and tp!802899 tp!802903))))

(assert (=> b!2510045 (= tp!802837 e!1591093)))

(assert (= (and b!2510045 ((_ is ElementMatch!7459) (regOne!15430 r!27340))) b!2510459))

(assert (= (and b!2510045 ((_ is Concat!12155) (regOne!15430 r!27340))) b!2510460))

(assert (= (and b!2510045 ((_ is Star!7459) (regOne!15430 r!27340))) b!2510461))

(assert (= (and b!2510045 ((_ is Union!7459) (regOne!15430 r!27340))) b!2510462))

(declare-fun b!2510463 () Bool)

(declare-fun e!1591094 () Bool)

(assert (=> b!2510463 (= e!1591094 tp_is_empty!12773)))

(declare-fun b!2510465 () Bool)

(declare-fun tp!802906 () Bool)

(assert (=> b!2510465 (= e!1591094 tp!802906)))

(declare-fun b!2510466 () Bool)

(declare-fun tp!802907 () Bool)

(declare-fun tp!802905 () Bool)

(assert (=> b!2510466 (= e!1591094 (and tp!802907 tp!802905))))

(declare-fun b!2510464 () Bool)

(declare-fun tp!802904 () Bool)

(declare-fun tp!802908 () Bool)

(assert (=> b!2510464 (= e!1591094 (and tp!802904 tp!802908))))

(assert (=> b!2510045 (= tp!802840 e!1591094)))

(assert (= (and b!2510045 ((_ is ElementMatch!7459) (regTwo!15430 r!27340))) b!2510463))

(assert (= (and b!2510045 ((_ is Concat!12155) (regTwo!15430 r!27340))) b!2510464))

(assert (= (and b!2510045 ((_ is Star!7459) (regTwo!15430 r!27340))) b!2510465))

(assert (= (and b!2510045 ((_ is Union!7459) (regTwo!15430 r!27340))) b!2510466))

(declare-fun b!2510467 () Bool)

(declare-fun e!1591095 () Bool)

(assert (=> b!2510467 (= e!1591095 tp_is_empty!12773)))

(declare-fun b!2510469 () Bool)

(declare-fun tp!802911 () Bool)

(assert (=> b!2510469 (= e!1591095 tp!802911)))

(declare-fun b!2510470 () Bool)

(declare-fun tp!802912 () Bool)

(declare-fun tp!802910 () Bool)

(assert (=> b!2510470 (= e!1591095 (and tp!802912 tp!802910))))

(declare-fun b!2510468 () Bool)

(declare-fun tp!802909 () Bool)

(declare-fun tp!802913 () Bool)

(assert (=> b!2510468 (= e!1591095 (and tp!802909 tp!802913))))

(assert (=> b!2510046 (= tp!802838 e!1591095)))

(assert (= (and b!2510046 ((_ is ElementMatch!7459) (regOne!15431 r!27340))) b!2510467))

(assert (= (and b!2510046 ((_ is Concat!12155) (regOne!15431 r!27340))) b!2510468))

(assert (= (and b!2510046 ((_ is Star!7459) (regOne!15431 r!27340))) b!2510469))

(assert (= (and b!2510046 ((_ is Union!7459) (regOne!15431 r!27340))) b!2510470))

(declare-fun b!2510471 () Bool)

(declare-fun e!1591096 () Bool)

(assert (=> b!2510471 (= e!1591096 tp_is_empty!12773)))

(declare-fun b!2510473 () Bool)

(declare-fun tp!802916 () Bool)

(assert (=> b!2510473 (= e!1591096 tp!802916)))

(declare-fun b!2510474 () Bool)

(declare-fun tp!802917 () Bool)

(declare-fun tp!802915 () Bool)

(assert (=> b!2510474 (= e!1591096 (and tp!802917 tp!802915))))

(declare-fun b!2510472 () Bool)

(declare-fun tp!802914 () Bool)

(declare-fun tp!802918 () Bool)

(assert (=> b!2510472 (= e!1591096 (and tp!802914 tp!802918))))

(assert (=> b!2510046 (= tp!802841 e!1591096)))

(assert (= (and b!2510046 ((_ is ElementMatch!7459) (regTwo!15431 r!27340))) b!2510471))

(assert (= (and b!2510046 ((_ is Concat!12155) (regTwo!15431 r!27340))) b!2510472))

(assert (= (and b!2510046 ((_ is Star!7459) (regTwo!15431 r!27340))) b!2510473))

(assert (= (and b!2510046 ((_ is Union!7459) (regTwo!15431 r!27340))) b!2510474))

(check-sat (not b!2510408) (not b!2510427) (not b!2510464) (not bm!155680) (not b!2510462) (not b!2510424) (not b!2510338) (not b!2510465) (not b!2510460) (not d!716561) tp_is_empty!12773 (not b!2510451) (not d!716593) (not b!2510470) (not b!2510473) (not bm!155683) (not d!716583) (not b!2510469) (not b!2510466) (not bm!155651) (not b!2510352) (not b!2510432) (not d!716595) (not bm!155678) (not bm!155666) (not b!2510282) (not b!2510461) (not b!2510472) (not b!2510355) (not b!2510430) (not b!2510360) (not b!2510453) (not b!2510340) (not b!2510232) (not b!2510341) (not b!2510358) (not b!2510410) (not b!2510426) (not bm!155689) (not d!716575) (not d!716597) (not d!716541) (not b!2510224) (not bm!155681) (not b!2510348) (not b!2510295) (not b!2510452) (not b!2510220) (not d!716571) (not b!2510330) (not bm!155649) (not b!2510226) (not b!2510420) (not b!2510354) (not b!2510146) (not d!716567) (not d!716563) (not b!2510334) (not bm!155687) (not b!2510458) (not b!2510063) (not bm!155698) (not b!2510346) (not b!2510474) (not b!2510438) (not b!2510468) (not d!716537) (not d!716577) (not b!2510313) (not bm!155685) (not b!2510344) (not bm!155690) (not b!2510227) (not d!716545) (not b!2510230) (not d!716539))
(check-sat)
