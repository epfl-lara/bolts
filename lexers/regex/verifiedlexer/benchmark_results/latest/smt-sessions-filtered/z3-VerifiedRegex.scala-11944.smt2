; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!668666 () Bool)

(assert start!668666)

(declare-fun bs!1859725 () Bool)

(declare-fun b!6974065 () Bool)

(assert (= bs!1859725 (and b!6974065 start!668666)))

(declare-fun lambda!397906 () Int)

(declare-fun lambda!397905 () Int)

(assert (=> bs!1859725 (not (= lambda!397906 lambda!397905))))

(assert (=> b!6974065 true))

(declare-fun b!6974057 () Bool)

(declare-fun e!4191843 () Bool)

(declare-fun e!4191846 () Bool)

(assert (=> b!6974057 (= e!4191843 (not e!4191846))))

(declare-fun res!2844404 () Bool)

(assert (=> b!6974057 (=> res!2844404 e!4191846)))

(declare-datatypes ((C!34540 0))(
  ( (C!34541 (val!26972 Int)) )
))
(declare-datatypes ((Regex!17135 0))(
  ( (ElementMatch!17135 (c!1292829 C!34540)) (Concat!25980 (regOne!34782 Regex!17135) (regTwo!34782 Regex!17135)) (EmptyExpr!17135) (Star!17135 (reg!17464 Regex!17135)) (EmptyLang!17135) (Union!17135 (regOne!34783 Regex!17135) (regTwo!34783 Regex!17135)) )
))
(declare-fun r!13765 () Regex!17135)

(get-info :version)

(assert (=> b!6974057 (= res!2844404 ((_ is Union!17135) r!13765))))

(declare-fun lt!2479888 () Bool)

(declare-datatypes ((List!66951 0))(
  ( (Nil!66827) (Cons!66827 (h!73275 C!34540) (t!380694 List!66951)) )
))
(declare-fun s!9351 () List!66951)

(declare-fun matchRSpec!4152 (Regex!17135 List!66951) Bool)

(assert (=> b!6974057 (= lt!2479888 (matchRSpec!4152 r!13765 s!9351))))

(declare-fun matchR!9237 (Regex!17135 List!66951) Bool)

(assert (=> b!6974057 (= lt!2479888 (matchR!9237 r!13765 s!9351))))

(declare-datatypes ((Unit!160922 0))(
  ( (Unit!160923) )
))
(declare-fun lt!2479889 () Unit!160922)

(declare-fun mainMatchTheorem!4146 (Regex!17135 List!66951) Unit!160922)

(assert (=> b!6974057 (= lt!2479889 (mainMatchTheorem!4146 r!13765 s!9351))))

(declare-fun b!6974058 () Bool)

(declare-fun e!4191845 () Bool)

(declare-fun tp!1925000 () Bool)

(declare-fun tp!1925002 () Bool)

(assert (=> b!6974058 (= e!4191845 (and tp!1925000 tp!1925002))))

(declare-fun b!6974059 () Bool)

(declare-fun e!4191844 () Bool)

(declare-fun tp_is_empty!43495 () Bool)

(declare-fun tp!1925005 () Bool)

(assert (=> b!6974059 (= e!4191844 (and tp_is_empty!43495 tp!1925005))))

(declare-fun b!6974060 () Bool)

(declare-fun e!4191842 () Bool)

(declare-fun tp!1925004 () Bool)

(declare-fun tp!1925006 () Bool)

(assert (=> b!6974060 (= e!4191842 (and tp!1925004 tp!1925006))))

(declare-fun b!6974061 () Bool)

(declare-fun res!2844405 () Bool)

(assert (=> b!6974061 (=> (not res!2844405) (not e!4191843))))

(declare-datatypes ((List!66952 0))(
  ( (Nil!66828) (Cons!66828 (h!73276 Regex!17135) (t!380695 List!66952)) )
))
(declare-fun l!9142 () List!66952)

(declare-fun generalisedUnion!2610 (List!66952) Regex!17135)

(assert (=> b!6974061 (= res!2844405 (= r!13765 (generalisedUnion!2610 l!9142)))))

(declare-fun b!6974062 () Bool)

(assert (=> b!6974062 (= e!4191842 tp_is_empty!43495)))

(declare-fun res!2844406 () Bool)

(assert (=> start!668666 (=> (not res!2844406) (not e!4191843))))

(declare-fun forall!16006 (List!66952 Int) Bool)

(assert (=> start!668666 (= res!2844406 (forall!16006 l!9142 lambda!397905))))

(assert (=> start!668666 e!4191843))

(assert (=> start!668666 e!4191845))

(assert (=> start!668666 e!4191842))

(assert (=> start!668666 e!4191844))

(declare-fun b!6974063 () Bool)

(declare-fun tp!1925003 () Bool)

(declare-fun tp!1925007 () Bool)

(assert (=> b!6974063 (= e!4191842 (and tp!1925003 tp!1925007))))

(declare-fun b!6974064 () Bool)

(declare-fun tp!1925001 () Bool)

(assert (=> b!6974064 (= e!4191842 tp!1925001)))

(declare-fun exists!2871 (List!66952 Int) Bool)

(assert (=> b!6974065 (= e!4191846 (= lt!2479888 (exists!2871 l!9142 lambda!397906)))))

(assert (= (and start!668666 res!2844406) b!6974061))

(assert (= (and b!6974061 res!2844405) b!6974057))

(assert (= (and b!6974057 (not res!2844404)) b!6974065))

(assert (= (and start!668666 ((_ is Cons!66828) l!9142)) b!6974058))

(assert (= (and start!668666 ((_ is ElementMatch!17135) r!13765)) b!6974062))

(assert (= (and start!668666 ((_ is Concat!25980) r!13765)) b!6974063))

(assert (= (and start!668666 ((_ is Star!17135) r!13765)) b!6974064))

(assert (= (and start!668666 ((_ is Union!17135) r!13765)) b!6974060))

(assert (= (and start!668666 ((_ is Cons!66827) s!9351)) b!6974059))

(declare-fun m!7661212 () Bool)

(assert (=> b!6974057 m!7661212))

(declare-fun m!7661214 () Bool)

(assert (=> b!6974057 m!7661214))

(declare-fun m!7661216 () Bool)

(assert (=> b!6974057 m!7661216))

(declare-fun m!7661218 () Bool)

(assert (=> b!6974061 m!7661218))

(declare-fun m!7661220 () Bool)

(assert (=> start!668666 m!7661220))

(declare-fun m!7661222 () Bool)

(assert (=> b!6974065 m!7661222))

(check-sat (not b!6974063) (not b!6974057) (not start!668666) (not b!6974060) (not b!6974059) (not b!6974058) tp_is_empty!43495 (not b!6974061) (not b!6974064) (not b!6974065))
(check-sat)
(get-model)

(declare-fun b!6974278 () Bool)

(assert (=> b!6974278 true))

(assert (=> b!6974278 true))

(declare-fun bs!1859735 () Bool)

(declare-fun b!6974273 () Bool)

(assert (= bs!1859735 (and b!6974273 b!6974278)))

(declare-fun lambda!397924 () Int)

(declare-fun lambda!397923 () Int)

(assert (=> bs!1859735 (not (= lambda!397924 lambda!397923))))

(assert (=> b!6974273 true))

(assert (=> b!6974273 true))

(declare-fun bm!633042 () Bool)

(declare-fun call!633048 () Bool)

(declare-fun isEmpty!39030 (List!66951) Bool)

(assert (=> bm!633042 (= call!633048 (isEmpty!39030 s!9351))))

(declare-fun b!6974271 () Bool)

(declare-fun e!4191951 () Bool)

(assert (=> b!6974271 (= e!4191951 (= s!9351 (Cons!66827 (c!1292829 r!13765) Nil!66827)))))

(declare-fun b!6974272 () Bool)

(declare-fun res!2844478 () Bool)

(declare-fun e!4191955 () Bool)

(assert (=> b!6974272 (=> res!2844478 e!4191955)))

(assert (=> b!6974272 (= res!2844478 call!633048)))

(declare-fun e!4191953 () Bool)

(assert (=> b!6974272 (= e!4191953 e!4191955)))

(declare-fun call!633047 () Bool)

(assert (=> b!6974273 (= e!4191953 call!633047)))

(declare-fun b!6974274 () Bool)

(declare-fun e!4191950 () Bool)

(assert (=> b!6974274 (= e!4191950 call!633048)))

(declare-fun b!6974275 () Bool)

(declare-fun e!4191949 () Bool)

(assert (=> b!6974275 (= e!4191950 e!4191949)))

(declare-fun res!2844480 () Bool)

(assert (=> b!6974275 (= res!2844480 (not ((_ is EmptyLang!17135) r!13765)))))

(assert (=> b!6974275 (=> (not res!2844480) (not e!4191949))))

(declare-fun b!6974276 () Bool)

(declare-fun e!4191954 () Bool)

(assert (=> b!6974276 (= e!4191954 (matchRSpec!4152 (regTwo!34783 r!13765) s!9351))))

(declare-fun d!2171807 () Bool)

(declare-fun c!1292872 () Bool)

(assert (=> d!2171807 (= c!1292872 ((_ is EmptyExpr!17135) r!13765))))

(assert (=> d!2171807 (= (matchRSpec!4152 r!13765 s!9351) e!4191950)))

(declare-fun b!6974277 () Bool)

(declare-fun e!4191952 () Bool)

(assert (=> b!6974277 (= e!4191952 e!4191953)))

(declare-fun c!1292874 () Bool)

(assert (=> b!6974277 (= c!1292874 ((_ is Star!17135) r!13765))))

(assert (=> b!6974278 (= e!4191955 call!633047)))

(declare-fun bm!633043 () Bool)

(declare-fun Exists!4098 (Int) Bool)

(assert (=> bm!633043 (= call!633047 (Exists!4098 (ite c!1292874 lambda!397923 lambda!397924)))))

(declare-fun b!6974279 () Bool)

(assert (=> b!6974279 (= e!4191952 e!4191954)))

(declare-fun res!2844479 () Bool)

(assert (=> b!6974279 (= res!2844479 (matchRSpec!4152 (regOne!34783 r!13765) s!9351))))

(assert (=> b!6974279 (=> res!2844479 e!4191954)))

(declare-fun b!6974280 () Bool)

(declare-fun c!1292873 () Bool)

(assert (=> b!6974280 (= c!1292873 ((_ is ElementMatch!17135) r!13765))))

(assert (=> b!6974280 (= e!4191949 e!4191951)))

(declare-fun b!6974281 () Bool)

(declare-fun c!1292871 () Bool)

(assert (=> b!6974281 (= c!1292871 ((_ is Union!17135) r!13765))))

(assert (=> b!6974281 (= e!4191951 e!4191952)))

(assert (= (and d!2171807 c!1292872) b!6974274))

(assert (= (and d!2171807 (not c!1292872)) b!6974275))

(assert (= (and b!6974275 res!2844480) b!6974280))

(assert (= (and b!6974280 c!1292873) b!6974271))

(assert (= (and b!6974280 (not c!1292873)) b!6974281))

(assert (= (and b!6974281 c!1292871) b!6974279))

(assert (= (and b!6974281 (not c!1292871)) b!6974277))

(assert (= (and b!6974279 (not res!2844479)) b!6974276))

(assert (= (and b!6974277 c!1292874) b!6974272))

(assert (= (and b!6974277 (not c!1292874)) b!6974273))

(assert (= (and b!6974272 (not res!2844478)) b!6974278))

(assert (= (or b!6974278 b!6974273) bm!633043))

(assert (= (or b!6974274 b!6974272) bm!633042))

(declare-fun m!7661276 () Bool)

(assert (=> bm!633042 m!7661276))

(declare-fun m!7661278 () Bool)

(assert (=> b!6974276 m!7661278))

(declare-fun m!7661280 () Bool)

(assert (=> bm!633043 m!7661280))

(declare-fun m!7661282 () Bool)

(assert (=> b!6974279 m!7661282))

(assert (=> b!6974057 d!2171807))

(declare-fun b!6974314 () Bool)

(declare-fun res!2844503 () Bool)

(declare-fun e!4191975 () Bool)

(assert (=> b!6974314 (=> res!2844503 e!4191975)))

(assert (=> b!6974314 (= res!2844503 (not ((_ is ElementMatch!17135) r!13765)))))

(declare-fun e!4191971 () Bool)

(assert (=> b!6974314 (= e!4191971 e!4191975)))

(declare-fun b!6974315 () Bool)

(declare-fun res!2844498 () Bool)

(declare-fun e!4191974 () Bool)

(assert (=> b!6974315 (=> (not res!2844498) (not e!4191974))))

(declare-fun call!633051 () Bool)

(assert (=> b!6974315 (= res!2844498 (not call!633051))))

(declare-fun b!6974316 () Bool)

(declare-fun e!4191976 () Bool)

(declare-fun e!4191970 () Bool)

(assert (=> b!6974316 (= e!4191976 e!4191970)))

(declare-fun res!2844500 () Bool)

(assert (=> b!6974316 (=> res!2844500 e!4191970)))

(assert (=> b!6974316 (= res!2844500 call!633051)))

(declare-fun b!6974317 () Bool)

(declare-fun res!2844504 () Bool)

(assert (=> b!6974317 (=> res!2844504 e!4191975)))

(assert (=> b!6974317 (= res!2844504 e!4191974)))

(declare-fun res!2844499 () Bool)

(assert (=> b!6974317 (=> (not res!2844499) (not e!4191974))))

(declare-fun lt!2479901 () Bool)

(assert (=> b!6974317 (= res!2844499 lt!2479901)))

(declare-fun b!6974318 () Bool)

(declare-fun head!14042 (List!66951) C!34540)

(assert (=> b!6974318 (= e!4191970 (not (= (head!14042 s!9351) (c!1292829 r!13765))))))

(declare-fun b!6974319 () Bool)

(declare-fun e!4191972 () Bool)

(assert (=> b!6974319 (= e!4191972 e!4191971)))

(declare-fun c!1292881 () Bool)

(assert (=> b!6974319 (= c!1292881 ((_ is EmptyLang!17135) r!13765))))

(declare-fun b!6974320 () Bool)

(assert (=> b!6974320 (= e!4191974 (= (head!14042 s!9351) (c!1292829 r!13765)))))

(declare-fun d!2171821 () Bool)

(assert (=> d!2171821 e!4191972))

(declare-fun c!1292882 () Bool)

(assert (=> d!2171821 (= c!1292882 ((_ is EmptyExpr!17135) r!13765))))

(declare-fun e!4191973 () Bool)

(assert (=> d!2171821 (= lt!2479901 e!4191973)))

(declare-fun c!1292883 () Bool)

(assert (=> d!2171821 (= c!1292883 (isEmpty!39030 s!9351))))

(declare-fun validRegex!8817 (Regex!17135) Bool)

(assert (=> d!2171821 (validRegex!8817 r!13765)))

(assert (=> d!2171821 (= (matchR!9237 r!13765 s!9351) lt!2479901)))

(declare-fun b!6974321 () Bool)

(declare-fun derivativeStep!5545 (Regex!17135 C!34540) Regex!17135)

(declare-fun tail!13110 (List!66951) List!66951)

(assert (=> b!6974321 (= e!4191973 (matchR!9237 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (tail!13110 s!9351)))))

(declare-fun b!6974322 () Bool)

(assert (=> b!6974322 (= e!4191971 (not lt!2479901))))

(declare-fun b!6974323 () Bool)

(declare-fun nullable!6920 (Regex!17135) Bool)

(assert (=> b!6974323 (= e!4191973 (nullable!6920 r!13765))))

(declare-fun bm!633046 () Bool)

(assert (=> bm!633046 (= call!633051 (isEmpty!39030 s!9351))))

(declare-fun b!6974324 () Bool)

(assert (=> b!6974324 (= e!4191972 (= lt!2479901 call!633051))))

(declare-fun b!6974325 () Bool)

(assert (=> b!6974325 (= e!4191975 e!4191976)))

(declare-fun res!2844501 () Bool)

(assert (=> b!6974325 (=> (not res!2844501) (not e!4191976))))

(assert (=> b!6974325 (= res!2844501 (not lt!2479901))))

(declare-fun b!6974326 () Bool)

(declare-fun res!2844502 () Bool)

(assert (=> b!6974326 (=> (not res!2844502) (not e!4191974))))

(assert (=> b!6974326 (= res!2844502 (isEmpty!39030 (tail!13110 s!9351)))))

(declare-fun b!6974327 () Bool)

(declare-fun res!2844497 () Bool)

(assert (=> b!6974327 (=> res!2844497 e!4191970)))

(assert (=> b!6974327 (= res!2844497 (not (isEmpty!39030 (tail!13110 s!9351))))))

(assert (= (and d!2171821 c!1292883) b!6974323))

(assert (= (and d!2171821 (not c!1292883)) b!6974321))

(assert (= (and d!2171821 c!1292882) b!6974324))

(assert (= (and d!2171821 (not c!1292882)) b!6974319))

(assert (= (and b!6974319 c!1292881) b!6974322))

(assert (= (and b!6974319 (not c!1292881)) b!6974314))

(assert (= (and b!6974314 (not res!2844503)) b!6974317))

(assert (= (and b!6974317 res!2844499) b!6974315))

(assert (= (and b!6974315 res!2844498) b!6974326))

(assert (= (and b!6974326 res!2844502) b!6974320))

(assert (= (and b!6974317 (not res!2844504)) b!6974325))

(assert (= (and b!6974325 res!2844501) b!6974316))

(assert (= (and b!6974316 (not res!2844500)) b!6974327))

(assert (= (and b!6974327 (not res!2844497)) b!6974318))

(assert (= (or b!6974324 b!6974315 b!6974316) bm!633046))

(declare-fun m!7661284 () Bool)

(assert (=> b!6974320 m!7661284))

(assert (=> b!6974321 m!7661284))

(assert (=> b!6974321 m!7661284))

(declare-fun m!7661286 () Bool)

(assert (=> b!6974321 m!7661286))

(declare-fun m!7661288 () Bool)

(assert (=> b!6974321 m!7661288))

(assert (=> b!6974321 m!7661286))

(assert (=> b!6974321 m!7661288))

(declare-fun m!7661290 () Bool)

(assert (=> b!6974321 m!7661290))

(assert (=> b!6974326 m!7661288))

(assert (=> b!6974326 m!7661288))

(declare-fun m!7661292 () Bool)

(assert (=> b!6974326 m!7661292))

(assert (=> d!2171821 m!7661276))

(declare-fun m!7661294 () Bool)

(assert (=> d!2171821 m!7661294))

(assert (=> b!6974327 m!7661288))

(assert (=> b!6974327 m!7661288))

(assert (=> b!6974327 m!7661292))

(assert (=> bm!633046 m!7661276))

(declare-fun m!7661296 () Bool)

(assert (=> b!6974323 m!7661296))

(assert (=> b!6974318 m!7661284))

(assert (=> b!6974057 d!2171821))

(declare-fun d!2171823 () Bool)

(assert (=> d!2171823 (= (matchR!9237 r!13765 s!9351) (matchRSpec!4152 r!13765 s!9351))))

(declare-fun lt!2479904 () Unit!160922)

(declare-fun choose!51921 (Regex!17135 List!66951) Unit!160922)

(assert (=> d!2171823 (= lt!2479904 (choose!51921 r!13765 s!9351))))

(assert (=> d!2171823 (validRegex!8817 r!13765)))

(assert (=> d!2171823 (= (mainMatchTheorem!4146 r!13765 s!9351) lt!2479904)))

(declare-fun bs!1859736 () Bool)

(assert (= bs!1859736 d!2171823))

(assert (=> bs!1859736 m!7661214))

(assert (=> bs!1859736 m!7661212))

(declare-fun m!7661298 () Bool)

(assert (=> bs!1859736 m!7661298))

(assert (=> bs!1859736 m!7661294))

(assert (=> b!6974057 d!2171823))

(declare-fun d!2171825 () Bool)

(declare-fun res!2844509 () Bool)

(declare-fun e!4191981 () Bool)

(assert (=> d!2171825 (=> res!2844509 e!4191981)))

(assert (=> d!2171825 (= res!2844509 ((_ is Nil!66828) l!9142))))

(assert (=> d!2171825 (= (forall!16006 l!9142 lambda!397905) e!4191981)))

(declare-fun b!6974332 () Bool)

(declare-fun e!4191982 () Bool)

(assert (=> b!6974332 (= e!4191981 e!4191982)))

(declare-fun res!2844510 () Bool)

(assert (=> b!6974332 (=> (not res!2844510) (not e!4191982))))

(declare-fun dynLambda!26652 (Int Regex!17135) Bool)

(assert (=> b!6974332 (= res!2844510 (dynLambda!26652 lambda!397905 (h!73276 l!9142)))))

(declare-fun b!6974333 () Bool)

(assert (=> b!6974333 (= e!4191982 (forall!16006 (t!380695 l!9142) lambda!397905))))

(assert (= (and d!2171825 (not res!2844509)) b!6974332))

(assert (= (and b!6974332 res!2844510) b!6974333))

(declare-fun b_lambda!260933 () Bool)

(assert (=> (not b_lambda!260933) (not b!6974332)))

(declare-fun m!7661300 () Bool)

(assert (=> b!6974332 m!7661300))

(declare-fun m!7661302 () Bool)

(assert (=> b!6974333 m!7661302))

(assert (=> start!668666 d!2171825))

(declare-fun bs!1859737 () Bool)

(declare-fun d!2171827 () Bool)

(assert (= bs!1859737 (and d!2171827 start!668666)))

(declare-fun lambda!397927 () Int)

(assert (=> bs!1859737 (not (= lambda!397927 lambda!397905))))

(declare-fun bs!1859738 () Bool)

(assert (= bs!1859738 (and d!2171827 b!6974065)))

(assert (=> bs!1859738 (not (= lambda!397927 lambda!397906))))

(assert (=> d!2171827 true))

(declare-fun order!27779 () Int)

(declare-fun dynLambda!26653 (Int Int) Int)

(assert (=> d!2171827 (< (dynLambda!26653 order!27779 lambda!397906) (dynLambda!26653 order!27779 lambda!397927))))

(assert (=> d!2171827 (= (exists!2871 l!9142 lambda!397906) (not (forall!16006 l!9142 lambda!397927)))))

(declare-fun bs!1859739 () Bool)

(assert (= bs!1859739 d!2171827))

(declare-fun m!7661304 () Bool)

(assert (=> bs!1859739 m!7661304))

(assert (=> b!6974065 d!2171827))

(declare-fun bs!1859740 () Bool)

(declare-fun d!2171829 () Bool)

(assert (= bs!1859740 (and d!2171829 start!668666)))

(declare-fun lambda!397930 () Int)

(assert (=> bs!1859740 (= lambda!397930 lambda!397905)))

(declare-fun bs!1859741 () Bool)

(assert (= bs!1859741 (and d!2171829 b!6974065)))

(assert (=> bs!1859741 (not (= lambda!397930 lambda!397906))))

(declare-fun bs!1859742 () Bool)

(assert (= bs!1859742 (and d!2171829 d!2171827)))

(assert (=> bs!1859742 (not (= lambda!397930 lambda!397927))))

(declare-fun b!6974357 () Bool)

(declare-fun e!4192000 () Bool)

(declare-fun lt!2479907 () Regex!17135)

(declare-fun head!14043 (List!66952) Regex!17135)

(assert (=> b!6974357 (= e!4192000 (= lt!2479907 (head!14043 l!9142)))))

(declare-fun b!6974358 () Bool)

(declare-fun e!4191995 () Regex!17135)

(assert (=> b!6974358 (= e!4191995 EmptyLang!17135)))

(declare-fun b!6974359 () Bool)

(declare-fun e!4191996 () Bool)

(assert (=> b!6974359 (= e!4191996 e!4192000)))

(declare-fun c!1292895 () Bool)

(declare-fun isEmpty!39031 (List!66952) Bool)

(declare-fun tail!13111 (List!66952) List!66952)

(assert (=> b!6974359 (= c!1292895 (isEmpty!39031 (tail!13111 l!9142)))))

(declare-fun b!6974360 () Bool)

(declare-fun isUnion!1501 (Regex!17135) Bool)

(assert (=> b!6974360 (= e!4192000 (isUnion!1501 lt!2479907))))

(declare-fun b!6974361 () Bool)

(declare-fun e!4191999 () Regex!17135)

(assert (=> b!6974361 (= e!4191999 e!4191995)))

(declare-fun c!1292893 () Bool)

(assert (=> b!6974361 (= c!1292893 ((_ is Cons!66828) l!9142))))

(declare-fun b!6974362 () Bool)

(assert (=> b!6974362 (= e!4191995 (Union!17135 (h!73276 l!9142) (generalisedUnion!2610 (t!380695 l!9142))))))

(declare-fun b!6974363 () Bool)

(declare-fun isEmptyLang!2073 (Regex!17135) Bool)

(assert (=> b!6974363 (= e!4191996 (isEmptyLang!2073 lt!2479907))))

(declare-fun b!6974364 () Bool)

(assert (=> b!6974364 (= e!4191999 (h!73276 l!9142))))

(declare-fun b!6974365 () Bool)

(declare-fun e!4191997 () Bool)

(assert (=> b!6974365 (= e!4191997 e!4191996)))

(declare-fun c!1292894 () Bool)

(assert (=> b!6974365 (= c!1292894 (isEmpty!39031 l!9142))))

(declare-fun b!6974356 () Bool)

(declare-fun e!4191998 () Bool)

(assert (=> b!6974356 (= e!4191998 (isEmpty!39031 (t!380695 l!9142)))))

(assert (=> d!2171829 e!4191997))

(declare-fun res!2844515 () Bool)

(assert (=> d!2171829 (=> (not res!2844515) (not e!4191997))))

(assert (=> d!2171829 (= res!2844515 (validRegex!8817 lt!2479907))))

(assert (=> d!2171829 (= lt!2479907 e!4191999)))

(declare-fun c!1292892 () Bool)

(assert (=> d!2171829 (= c!1292892 e!4191998)))

(declare-fun res!2844516 () Bool)

(assert (=> d!2171829 (=> (not res!2844516) (not e!4191998))))

(assert (=> d!2171829 (= res!2844516 ((_ is Cons!66828) l!9142))))

(assert (=> d!2171829 (forall!16006 l!9142 lambda!397930)))

(assert (=> d!2171829 (= (generalisedUnion!2610 l!9142) lt!2479907)))

(assert (= (and d!2171829 res!2844516) b!6974356))

(assert (= (and d!2171829 c!1292892) b!6974364))

(assert (= (and d!2171829 (not c!1292892)) b!6974361))

(assert (= (and b!6974361 c!1292893) b!6974362))

(assert (= (and b!6974361 (not c!1292893)) b!6974358))

(assert (= (and d!2171829 res!2844515) b!6974365))

(assert (= (and b!6974365 c!1292894) b!6974363))

(assert (= (and b!6974365 (not c!1292894)) b!6974359))

(assert (= (and b!6974359 c!1292895) b!6974357))

(assert (= (and b!6974359 (not c!1292895)) b!6974360))

(declare-fun m!7661306 () Bool)

(assert (=> b!6974360 m!7661306))

(declare-fun m!7661308 () Bool)

(assert (=> b!6974363 m!7661308))

(declare-fun m!7661310 () Bool)

(assert (=> d!2171829 m!7661310))

(declare-fun m!7661312 () Bool)

(assert (=> d!2171829 m!7661312))

(declare-fun m!7661314 () Bool)

(assert (=> b!6974362 m!7661314))

(declare-fun m!7661316 () Bool)

(assert (=> b!6974357 m!7661316))

(declare-fun m!7661318 () Bool)

(assert (=> b!6974365 m!7661318))

(declare-fun m!7661320 () Bool)

(assert (=> b!6974359 m!7661320))

(assert (=> b!6974359 m!7661320))

(declare-fun m!7661322 () Bool)

(assert (=> b!6974359 m!7661322))

(declare-fun m!7661324 () Bool)

(assert (=> b!6974356 m!7661324))

(assert (=> b!6974061 d!2171829))

(declare-fun e!4192003 () Bool)

(assert (=> b!6974063 (= tp!1925003 e!4192003)))

(declare-fun b!6974377 () Bool)

(declare-fun tp!1925070 () Bool)

(declare-fun tp!1925068 () Bool)

(assert (=> b!6974377 (= e!4192003 (and tp!1925070 tp!1925068))))

(declare-fun b!6974376 () Bool)

(assert (=> b!6974376 (= e!4192003 tp_is_empty!43495)))

(declare-fun b!6974379 () Bool)

(declare-fun tp!1925067 () Bool)

(declare-fun tp!1925071 () Bool)

(assert (=> b!6974379 (= e!4192003 (and tp!1925067 tp!1925071))))

(declare-fun b!6974378 () Bool)

(declare-fun tp!1925069 () Bool)

(assert (=> b!6974378 (= e!4192003 tp!1925069)))

(assert (= (and b!6974063 ((_ is ElementMatch!17135) (regOne!34782 r!13765))) b!6974376))

(assert (= (and b!6974063 ((_ is Concat!25980) (regOne!34782 r!13765))) b!6974377))

(assert (= (and b!6974063 ((_ is Star!17135) (regOne!34782 r!13765))) b!6974378))

(assert (= (and b!6974063 ((_ is Union!17135) (regOne!34782 r!13765))) b!6974379))

(declare-fun e!4192004 () Bool)

(assert (=> b!6974063 (= tp!1925007 e!4192004)))

(declare-fun b!6974381 () Bool)

(declare-fun tp!1925075 () Bool)

(declare-fun tp!1925073 () Bool)

(assert (=> b!6974381 (= e!4192004 (and tp!1925075 tp!1925073))))

(declare-fun b!6974380 () Bool)

(assert (=> b!6974380 (= e!4192004 tp_is_empty!43495)))

(declare-fun b!6974383 () Bool)

(declare-fun tp!1925072 () Bool)

(declare-fun tp!1925076 () Bool)

(assert (=> b!6974383 (= e!4192004 (and tp!1925072 tp!1925076))))

(declare-fun b!6974382 () Bool)

(declare-fun tp!1925074 () Bool)

(assert (=> b!6974382 (= e!4192004 tp!1925074)))

(assert (= (and b!6974063 ((_ is ElementMatch!17135) (regTwo!34782 r!13765))) b!6974380))

(assert (= (and b!6974063 ((_ is Concat!25980) (regTwo!34782 r!13765))) b!6974381))

(assert (= (and b!6974063 ((_ is Star!17135) (regTwo!34782 r!13765))) b!6974382))

(assert (= (and b!6974063 ((_ is Union!17135) (regTwo!34782 r!13765))) b!6974383))

(declare-fun e!4192005 () Bool)

(assert (=> b!6974058 (= tp!1925000 e!4192005)))

(declare-fun b!6974385 () Bool)

(declare-fun tp!1925080 () Bool)

(declare-fun tp!1925078 () Bool)

(assert (=> b!6974385 (= e!4192005 (and tp!1925080 tp!1925078))))

(declare-fun b!6974384 () Bool)

(assert (=> b!6974384 (= e!4192005 tp_is_empty!43495)))

(declare-fun b!6974387 () Bool)

(declare-fun tp!1925077 () Bool)

(declare-fun tp!1925081 () Bool)

(assert (=> b!6974387 (= e!4192005 (and tp!1925077 tp!1925081))))

(declare-fun b!6974386 () Bool)

(declare-fun tp!1925079 () Bool)

(assert (=> b!6974386 (= e!4192005 tp!1925079)))

(assert (= (and b!6974058 ((_ is ElementMatch!17135) (h!73276 l!9142))) b!6974384))

(assert (= (and b!6974058 ((_ is Concat!25980) (h!73276 l!9142))) b!6974385))

(assert (= (and b!6974058 ((_ is Star!17135) (h!73276 l!9142))) b!6974386))

(assert (= (and b!6974058 ((_ is Union!17135) (h!73276 l!9142))) b!6974387))

(declare-fun b!6974392 () Bool)

(declare-fun e!4192008 () Bool)

(declare-fun tp!1925086 () Bool)

(declare-fun tp!1925087 () Bool)

(assert (=> b!6974392 (= e!4192008 (and tp!1925086 tp!1925087))))

(assert (=> b!6974058 (= tp!1925002 e!4192008)))

(assert (= (and b!6974058 ((_ is Cons!66828) (t!380695 l!9142))) b!6974392))

(declare-fun e!4192009 () Bool)

(assert (=> b!6974064 (= tp!1925001 e!4192009)))

(declare-fun b!6974394 () Bool)

(declare-fun tp!1925091 () Bool)

(declare-fun tp!1925089 () Bool)

(assert (=> b!6974394 (= e!4192009 (and tp!1925091 tp!1925089))))

(declare-fun b!6974393 () Bool)

(assert (=> b!6974393 (= e!4192009 tp_is_empty!43495)))

(declare-fun b!6974396 () Bool)

(declare-fun tp!1925088 () Bool)

(declare-fun tp!1925092 () Bool)

(assert (=> b!6974396 (= e!4192009 (and tp!1925088 tp!1925092))))

(declare-fun b!6974395 () Bool)

(declare-fun tp!1925090 () Bool)

(assert (=> b!6974395 (= e!4192009 tp!1925090)))

(assert (= (and b!6974064 ((_ is ElementMatch!17135) (reg!17464 r!13765))) b!6974393))

(assert (= (and b!6974064 ((_ is Concat!25980) (reg!17464 r!13765))) b!6974394))

(assert (= (and b!6974064 ((_ is Star!17135) (reg!17464 r!13765))) b!6974395))

(assert (= (and b!6974064 ((_ is Union!17135) (reg!17464 r!13765))) b!6974396))

(declare-fun b!6974401 () Bool)

(declare-fun e!4192012 () Bool)

(declare-fun tp!1925095 () Bool)

(assert (=> b!6974401 (= e!4192012 (and tp_is_empty!43495 tp!1925095))))

(assert (=> b!6974059 (= tp!1925005 e!4192012)))

(assert (= (and b!6974059 ((_ is Cons!66827) (t!380694 s!9351))) b!6974401))

(declare-fun e!4192013 () Bool)

(assert (=> b!6974060 (= tp!1925004 e!4192013)))

(declare-fun b!6974403 () Bool)

(declare-fun tp!1925099 () Bool)

(declare-fun tp!1925097 () Bool)

(assert (=> b!6974403 (= e!4192013 (and tp!1925099 tp!1925097))))

(declare-fun b!6974402 () Bool)

(assert (=> b!6974402 (= e!4192013 tp_is_empty!43495)))

(declare-fun b!6974405 () Bool)

(declare-fun tp!1925096 () Bool)

(declare-fun tp!1925100 () Bool)

(assert (=> b!6974405 (= e!4192013 (and tp!1925096 tp!1925100))))

(declare-fun b!6974404 () Bool)

(declare-fun tp!1925098 () Bool)

(assert (=> b!6974404 (= e!4192013 tp!1925098)))

(assert (= (and b!6974060 ((_ is ElementMatch!17135) (regOne!34783 r!13765))) b!6974402))

(assert (= (and b!6974060 ((_ is Concat!25980) (regOne!34783 r!13765))) b!6974403))

(assert (= (and b!6974060 ((_ is Star!17135) (regOne!34783 r!13765))) b!6974404))

(assert (= (and b!6974060 ((_ is Union!17135) (regOne!34783 r!13765))) b!6974405))

(declare-fun e!4192014 () Bool)

(assert (=> b!6974060 (= tp!1925006 e!4192014)))

(declare-fun b!6974407 () Bool)

(declare-fun tp!1925104 () Bool)

(declare-fun tp!1925102 () Bool)

(assert (=> b!6974407 (= e!4192014 (and tp!1925104 tp!1925102))))

(declare-fun b!6974406 () Bool)

(assert (=> b!6974406 (= e!4192014 tp_is_empty!43495)))

(declare-fun b!6974409 () Bool)

(declare-fun tp!1925101 () Bool)

(declare-fun tp!1925105 () Bool)

(assert (=> b!6974409 (= e!4192014 (and tp!1925101 tp!1925105))))

(declare-fun b!6974408 () Bool)

(declare-fun tp!1925103 () Bool)

(assert (=> b!6974408 (= e!4192014 tp!1925103)))

(assert (= (and b!6974060 ((_ is ElementMatch!17135) (regTwo!34783 r!13765))) b!6974406))

(assert (= (and b!6974060 ((_ is Concat!25980) (regTwo!34783 r!13765))) b!6974407))

(assert (= (and b!6974060 ((_ is Star!17135) (regTwo!34783 r!13765))) b!6974408))

(assert (= (and b!6974060 ((_ is Union!17135) (regTwo!34783 r!13765))) b!6974409))

(declare-fun b_lambda!260935 () Bool)

(assert (= b_lambda!260933 (or start!668666 b_lambda!260935)))

(declare-fun bs!1859743 () Bool)

(declare-fun d!2171831 () Bool)

(assert (= bs!1859743 (and d!2171831 start!668666)))

(assert (=> bs!1859743 (= (dynLambda!26652 lambda!397905 (h!73276 l!9142)) (validRegex!8817 (h!73276 l!9142)))))

(declare-fun m!7661326 () Bool)

(assert (=> bs!1859743 m!7661326))

(assert (=> b!6974332 d!2171831))

(check-sat (not b!6974381) (not d!2171821) (not d!2171829) (not b!6974359) (not b!6974405) (not b!6974382) (not b!6974401) (not b!6974378) (not b!6974404) (not b!6974387) (not b!6974323) (not b!6974365) (not d!2171827) (not b_lambda!260935) (not bm!633046) (not b!6974327) (not b!6974356) (not bm!633042) (not b!6974407) (not b!6974363) (not b!6974383) (not bs!1859743) (not bm!633043) (not b!6974377) (not b!6974395) (not b!6974360) (not b!6974403) (not b!6974276) (not b!6974396) (not b!6974385) tp_is_empty!43495 (not b!6974326) (not b!6974357) (not b!6974279) (not b!6974318) (not b!6974379) (not d!2171823) (not b!6974394) (not b!6974333) (not b!6974408) (not b!6974320) (not b!6974362) (not b!6974386) (not b!6974409) (not b!6974392) (not b!6974321))
(check-sat)
(get-model)

(declare-fun bs!1859768 () Bool)

(declare-fun d!2171889 () Bool)

(assert (= bs!1859768 (and d!2171889 start!668666)))

(declare-fun lambda!397936 () Int)

(assert (=> bs!1859768 (= lambda!397936 lambda!397905)))

(declare-fun bs!1859769 () Bool)

(assert (= bs!1859769 (and d!2171889 b!6974065)))

(assert (=> bs!1859769 (not (= lambda!397936 lambda!397906))))

(declare-fun bs!1859770 () Bool)

(assert (= bs!1859770 (and d!2171889 d!2171827)))

(assert (=> bs!1859770 (not (= lambda!397936 lambda!397927))))

(declare-fun bs!1859771 () Bool)

(assert (= bs!1859771 (and d!2171889 d!2171829)))

(assert (=> bs!1859771 (= lambda!397936 lambda!397930)))

(declare-fun b!6974664 () Bool)

(declare-fun e!4192136 () Bool)

(declare-fun lt!2479913 () Regex!17135)

(assert (=> b!6974664 (= e!4192136 (= lt!2479913 (head!14043 (t!380695 l!9142))))))

(declare-fun b!6974665 () Bool)

(declare-fun e!4192131 () Regex!17135)

(assert (=> b!6974665 (= e!4192131 EmptyLang!17135)))

(declare-fun b!6974666 () Bool)

(declare-fun e!4192132 () Bool)

(assert (=> b!6974666 (= e!4192132 e!4192136)))

(declare-fun c!1292939 () Bool)

(assert (=> b!6974666 (= c!1292939 (isEmpty!39031 (tail!13111 (t!380695 l!9142))))))

(declare-fun b!6974667 () Bool)

(assert (=> b!6974667 (= e!4192136 (isUnion!1501 lt!2479913))))

(declare-fun b!6974668 () Bool)

(declare-fun e!4192135 () Regex!17135)

(assert (=> b!6974668 (= e!4192135 e!4192131)))

(declare-fun c!1292937 () Bool)

(assert (=> b!6974668 (= c!1292937 ((_ is Cons!66828) (t!380695 l!9142)))))

(declare-fun b!6974669 () Bool)

(assert (=> b!6974669 (= e!4192131 (Union!17135 (h!73276 (t!380695 l!9142)) (generalisedUnion!2610 (t!380695 (t!380695 l!9142)))))))

(declare-fun b!6974670 () Bool)

(assert (=> b!6974670 (= e!4192132 (isEmptyLang!2073 lt!2479913))))

(declare-fun b!6974671 () Bool)

(assert (=> b!6974671 (= e!4192135 (h!73276 (t!380695 l!9142)))))

(declare-fun b!6974672 () Bool)

(declare-fun e!4192133 () Bool)

(assert (=> b!6974672 (= e!4192133 e!4192132)))

(declare-fun c!1292938 () Bool)

(assert (=> b!6974672 (= c!1292938 (isEmpty!39031 (t!380695 l!9142)))))

(declare-fun b!6974663 () Bool)

(declare-fun e!4192134 () Bool)

(assert (=> b!6974663 (= e!4192134 (isEmpty!39031 (t!380695 (t!380695 l!9142))))))

(assert (=> d!2171889 e!4192133))

(declare-fun res!2844564 () Bool)

(assert (=> d!2171889 (=> (not res!2844564) (not e!4192133))))

(assert (=> d!2171889 (= res!2844564 (validRegex!8817 lt!2479913))))

(assert (=> d!2171889 (= lt!2479913 e!4192135)))

(declare-fun c!1292936 () Bool)

(assert (=> d!2171889 (= c!1292936 e!4192134)))

(declare-fun res!2844565 () Bool)

(assert (=> d!2171889 (=> (not res!2844565) (not e!4192134))))

(assert (=> d!2171889 (= res!2844565 ((_ is Cons!66828) (t!380695 l!9142)))))

(assert (=> d!2171889 (forall!16006 (t!380695 l!9142) lambda!397936)))

(assert (=> d!2171889 (= (generalisedUnion!2610 (t!380695 l!9142)) lt!2479913)))

(assert (= (and d!2171889 res!2844565) b!6974663))

(assert (= (and d!2171889 c!1292936) b!6974671))

(assert (= (and d!2171889 (not c!1292936)) b!6974668))

(assert (= (and b!6974668 c!1292937) b!6974669))

(assert (= (and b!6974668 (not c!1292937)) b!6974665))

(assert (= (and d!2171889 res!2844564) b!6974672))

(assert (= (and b!6974672 c!1292938) b!6974670))

(assert (= (and b!6974672 (not c!1292938)) b!6974666))

(assert (= (and b!6974666 c!1292939) b!6974664))

(assert (= (and b!6974666 (not c!1292939)) b!6974667))

(declare-fun m!7661418 () Bool)

(assert (=> b!6974667 m!7661418))

(declare-fun m!7661420 () Bool)

(assert (=> b!6974670 m!7661420))

(declare-fun m!7661422 () Bool)

(assert (=> d!2171889 m!7661422))

(declare-fun m!7661424 () Bool)

(assert (=> d!2171889 m!7661424))

(declare-fun m!7661426 () Bool)

(assert (=> b!6974669 m!7661426))

(declare-fun m!7661428 () Bool)

(assert (=> b!6974664 m!7661428))

(assert (=> b!6974672 m!7661324))

(declare-fun m!7661430 () Bool)

(assert (=> b!6974666 m!7661430))

(assert (=> b!6974666 m!7661430))

(declare-fun m!7661432 () Bool)

(assert (=> b!6974666 m!7661432))

(declare-fun m!7661434 () Bool)

(assert (=> b!6974663 m!7661434))

(assert (=> b!6974362 d!2171889))

(declare-fun d!2171891 () Bool)

(assert (=> d!2171891 (= (head!14042 s!9351) (h!73275 s!9351))))

(assert (=> b!6974318 d!2171891))

(declare-fun d!2171893 () Bool)

(declare-fun res!2844566 () Bool)

(declare-fun e!4192137 () Bool)

(assert (=> d!2171893 (=> res!2844566 e!4192137)))

(assert (=> d!2171893 (= res!2844566 ((_ is Nil!66828) (t!380695 l!9142)))))

(assert (=> d!2171893 (= (forall!16006 (t!380695 l!9142) lambda!397905) e!4192137)))

(declare-fun b!6974673 () Bool)

(declare-fun e!4192138 () Bool)

(assert (=> b!6974673 (= e!4192137 e!4192138)))

(declare-fun res!2844567 () Bool)

(assert (=> b!6974673 (=> (not res!2844567) (not e!4192138))))

(assert (=> b!6974673 (= res!2844567 (dynLambda!26652 lambda!397905 (h!73276 (t!380695 l!9142))))))

(declare-fun b!6974674 () Bool)

(assert (=> b!6974674 (= e!4192138 (forall!16006 (t!380695 (t!380695 l!9142)) lambda!397905))))

(assert (= (and d!2171893 (not res!2844566)) b!6974673))

(assert (= (and b!6974673 res!2844567) b!6974674))

(declare-fun b_lambda!260951 () Bool)

(assert (=> (not b_lambda!260951) (not b!6974673)))

(declare-fun m!7661436 () Bool)

(assert (=> b!6974673 m!7661436))

(declare-fun m!7661438 () Bool)

(assert (=> b!6974674 m!7661438))

(assert (=> b!6974333 d!2171893))

(declare-fun d!2171895 () Bool)

(assert (=> d!2171895 (= (isEmpty!39031 l!9142) ((_ is Nil!66828) l!9142))))

(assert (=> b!6974365 d!2171895))

(declare-fun b!6974675 () Bool)

(declare-fun res!2844574 () Bool)

(declare-fun e!4192144 () Bool)

(assert (=> b!6974675 (=> res!2844574 e!4192144)))

(assert (=> b!6974675 (= res!2844574 (not ((_ is ElementMatch!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351)))))))

(declare-fun e!4192140 () Bool)

(assert (=> b!6974675 (= e!4192140 e!4192144)))

(declare-fun b!6974676 () Bool)

(declare-fun res!2844569 () Bool)

(declare-fun e!4192143 () Bool)

(assert (=> b!6974676 (=> (not res!2844569) (not e!4192143))))

(declare-fun call!633084 () Bool)

(assert (=> b!6974676 (= res!2844569 (not call!633084))))

(declare-fun b!6974677 () Bool)

(declare-fun e!4192145 () Bool)

(declare-fun e!4192139 () Bool)

(assert (=> b!6974677 (= e!4192145 e!4192139)))

(declare-fun res!2844571 () Bool)

(assert (=> b!6974677 (=> res!2844571 e!4192139)))

(assert (=> b!6974677 (= res!2844571 call!633084)))

(declare-fun b!6974678 () Bool)

(declare-fun res!2844575 () Bool)

(assert (=> b!6974678 (=> res!2844575 e!4192144)))

(assert (=> b!6974678 (= res!2844575 e!4192143)))

(declare-fun res!2844570 () Bool)

(assert (=> b!6974678 (=> (not res!2844570) (not e!4192143))))

(declare-fun lt!2479914 () Bool)

(assert (=> b!6974678 (= res!2844570 lt!2479914)))

(declare-fun b!6974679 () Bool)

(assert (=> b!6974679 (= e!4192139 (not (= (head!14042 (tail!13110 s!9351)) (c!1292829 (derivativeStep!5545 r!13765 (head!14042 s!9351))))))))

(declare-fun b!6974680 () Bool)

(declare-fun e!4192141 () Bool)

(assert (=> b!6974680 (= e!4192141 e!4192140)))

(declare-fun c!1292940 () Bool)

(assert (=> b!6974680 (= c!1292940 ((_ is EmptyLang!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(declare-fun b!6974681 () Bool)

(assert (=> b!6974681 (= e!4192143 (= (head!14042 (tail!13110 s!9351)) (c!1292829 (derivativeStep!5545 r!13765 (head!14042 s!9351)))))))

(declare-fun d!2171897 () Bool)

(assert (=> d!2171897 e!4192141))

(declare-fun c!1292941 () Bool)

(assert (=> d!2171897 (= c!1292941 ((_ is EmptyExpr!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(declare-fun e!4192142 () Bool)

(assert (=> d!2171897 (= lt!2479914 e!4192142)))

(declare-fun c!1292942 () Bool)

(assert (=> d!2171897 (= c!1292942 (isEmpty!39030 (tail!13110 s!9351)))))

(assert (=> d!2171897 (validRegex!8817 (derivativeStep!5545 r!13765 (head!14042 s!9351)))))

(assert (=> d!2171897 (= (matchR!9237 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (tail!13110 s!9351)) lt!2479914)))

(declare-fun b!6974682 () Bool)

(assert (=> b!6974682 (= e!4192142 (matchR!9237 (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351))) (tail!13110 (tail!13110 s!9351))))))

(declare-fun b!6974683 () Bool)

(assert (=> b!6974683 (= e!4192140 (not lt!2479914))))

(declare-fun b!6974684 () Bool)

(assert (=> b!6974684 (= e!4192142 (nullable!6920 (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(declare-fun bm!633079 () Bool)

(assert (=> bm!633079 (= call!633084 (isEmpty!39030 (tail!13110 s!9351)))))

(declare-fun b!6974685 () Bool)

(assert (=> b!6974685 (= e!4192141 (= lt!2479914 call!633084))))

(declare-fun b!6974686 () Bool)

(assert (=> b!6974686 (= e!4192144 e!4192145)))

(declare-fun res!2844572 () Bool)

(assert (=> b!6974686 (=> (not res!2844572) (not e!4192145))))

(assert (=> b!6974686 (= res!2844572 (not lt!2479914))))

(declare-fun b!6974687 () Bool)

(declare-fun res!2844573 () Bool)

(assert (=> b!6974687 (=> (not res!2844573) (not e!4192143))))

(assert (=> b!6974687 (= res!2844573 (isEmpty!39030 (tail!13110 (tail!13110 s!9351))))))

(declare-fun b!6974688 () Bool)

(declare-fun res!2844568 () Bool)

(assert (=> b!6974688 (=> res!2844568 e!4192139)))

(assert (=> b!6974688 (= res!2844568 (not (isEmpty!39030 (tail!13110 (tail!13110 s!9351)))))))

(assert (= (and d!2171897 c!1292942) b!6974684))

(assert (= (and d!2171897 (not c!1292942)) b!6974682))

(assert (= (and d!2171897 c!1292941) b!6974685))

(assert (= (and d!2171897 (not c!1292941)) b!6974680))

(assert (= (and b!6974680 c!1292940) b!6974683))

(assert (= (and b!6974680 (not c!1292940)) b!6974675))

(assert (= (and b!6974675 (not res!2844574)) b!6974678))

(assert (= (and b!6974678 res!2844570) b!6974676))

(assert (= (and b!6974676 res!2844569) b!6974687))

(assert (= (and b!6974687 res!2844573) b!6974681))

(assert (= (and b!6974678 (not res!2844575)) b!6974686))

(assert (= (and b!6974686 res!2844572) b!6974677))

(assert (= (and b!6974677 (not res!2844571)) b!6974688))

(assert (= (and b!6974688 (not res!2844568)) b!6974679))

(assert (= (or b!6974685 b!6974676 b!6974677) bm!633079))

(assert (=> b!6974681 m!7661288))

(declare-fun m!7661440 () Bool)

(assert (=> b!6974681 m!7661440))

(assert (=> b!6974682 m!7661288))

(assert (=> b!6974682 m!7661440))

(assert (=> b!6974682 m!7661286))

(assert (=> b!6974682 m!7661440))

(declare-fun m!7661442 () Bool)

(assert (=> b!6974682 m!7661442))

(assert (=> b!6974682 m!7661288))

(declare-fun m!7661444 () Bool)

(assert (=> b!6974682 m!7661444))

(assert (=> b!6974682 m!7661442))

(assert (=> b!6974682 m!7661444))

(declare-fun m!7661446 () Bool)

(assert (=> b!6974682 m!7661446))

(assert (=> b!6974687 m!7661288))

(assert (=> b!6974687 m!7661444))

(assert (=> b!6974687 m!7661444))

(declare-fun m!7661448 () Bool)

(assert (=> b!6974687 m!7661448))

(assert (=> d!2171897 m!7661288))

(assert (=> d!2171897 m!7661292))

(assert (=> d!2171897 m!7661286))

(declare-fun m!7661450 () Bool)

(assert (=> d!2171897 m!7661450))

(assert (=> b!6974688 m!7661288))

(assert (=> b!6974688 m!7661444))

(assert (=> b!6974688 m!7661444))

(assert (=> b!6974688 m!7661448))

(assert (=> bm!633079 m!7661288))

(assert (=> bm!633079 m!7661292))

(assert (=> b!6974684 m!7661286))

(declare-fun m!7661452 () Bool)

(assert (=> b!6974684 m!7661452))

(assert (=> b!6974679 m!7661288))

(assert (=> b!6974679 m!7661440))

(assert (=> b!6974321 d!2171897))

(declare-fun b!6974709 () Bool)

(declare-fun e!4192158 () Regex!17135)

(declare-fun e!4192160 () Regex!17135)

(assert (=> b!6974709 (= e!4192158 e!4192160)))

(declare-fun c!1292953 () Bool)

(assert (=> b!6974709 (= c!1292953 ((_ is Star!17135) r!13765))))

(declare-fun b!6974710 () Bool)

(declare-fun call!633096 () Regex!17135)

(declare-fun call!633095 () Regex!17135)

(assert (=> b!6974710 (= e!4192158 (Union!17135 call!633096 call!633095))))

(declare-fun b!6974711 () Bool)

(declare-fun e!4192159 () Regex!17135)

(assert (=> b!6974711 (= e!4192159 EmptyLang!17135)))

(declare-fun bm!633088 () Bool)

(declare-fun call!633093 () Regex!17135)

(assert (=> bm!633088 (= call!633093 call!633095)))

(declare-fun b!6974712 () Bool)

(declare-fun c!1292956 () Bool)

(assert (=> b!6974712 (= c!1292956 (nullable!6920 (regOne!34782 r!13765)))))

(declare-fun e!4192156 () Regex!17135)

(assert (=> b!6974712 (= e!4192160 e!4192156)))

(declare-fun b!6974713 () Bool)

(declare-fun c!1292954 () Bool)

(assert (=> b!6974713 (= c!1292954 ((_ is Union!17135) r!13765))))

(declare-fun e!4192157 () Regex!17135)

(assert (=> b!6974713 (= e!4192157 e!4192158)))

(declare-fun call!633094 () Regex!17135)

(declare-fun b!6974714 () Bool)

(assert (=> b!6974714 (= e!4192156 (Union!17135 (Concat!25980 call!633094 (regTwo!34782 r!13765)) call!633093))))

(declare-fun bm!633089 () Bool)

(assert (=> bm!633089 (= call!633094 call!633096)))

(declare-fun bm!633090 () Bool)

(assert (=> bm!633090 (= call!633095 (derivativeStep!5545 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765))) (head!14042 s!9351)))))

(declare-fun b!6974716 () Bool)

(assert (=> b!6974716 (= e!4192157 (ite (= (head!14042 s!9351) (c!1292829 r!13765)) EmptyExpr!17135 EmptyLang!17135))))

(declare-fun b!6974717 () Bool)

(assert (=> b!6974717 (= e!4192159 e!4192157)))

(declare-fun c!1292955 () Bool)

(assert (=> b!6974717 (= c!1292955 ((_ is ElementMatch!17135) r!13765))))

(declare-fun bm!633091 () Bool)

(assert (=> bm!633091 (= call!633096 (derivativeStep!5545 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765))) (head!14042 s!9351)))))

(declare-fun b!6974718 () Bool)

(assert (=> b!6974718 (= e!4192156 (Union!17135 (Concat!25980 call!633093 (regTwo!34782 r!13765)) EmptyLang!17135))))

(declare-fun d!2171899 () Bool)

(declare-fun lt!2479917 () Regex!17135)

(assert (=> d!2171899 (validRegex!8817 lt!2479917)))

(assert (=> d!2171899 (= lt!2479917 e!4192159)))

(declare-fun c!1292957 () Bool)

(assert (=> d!2171899 (= c!1292957 (or ((_ is EmptyExpr!17135) r!13765) ((_ is EmptyLang!17135) r!13765)))))

(assert (=> d!2171899 (validRegex!8817 r!13765)))

(assert (=> d!2171899 (= (derivativeStep!5545 r!13765 (head!14042 s!9351)) lt!2479917)))

(declare-fun b!6974715 () Bool)

(assert (=> b!6974715 (= e!4192160 (Concat!25980 call!633094 r!13765))))

(assert (= (and d!2171899 c!1292957) b!6974711))

(assert (= (and d!2171899 (not c!1292957)) b!6974717))

(assert (= (and b!6974717 c!1292955) b!6974716))

(assert (= (and b!6974717 (not c!1292955)) b!6974713))

(assert (= (and b!6974713 c!1292954) b!6974710))

(assert (= (and b!6974713 (not c!1292954)) b!6974709))

(assert (= (and b!6974709 c!1292953) b!6974715))

(assert (= (and b!6974709 (not c!1292953)) b!6974712))

(assert (= (and b!6974712 c!1292956) b!6974714))

(assert (= (and b!6974712 (not c!1292956)) b!6974718))

(assert (= (or b!6974714 b!6974718) bm!633088))

(assert (= (or b!6974715 b!6974714) bm!633089))

(assert (= (or b!6974710 bm!633089) bm!633091))

(assert (= (or b!6974710 bm!633088) bm!633090))

(declare-fun m!7661454 () Bool)

(assert (=> b!6974712 m!7661454))

(assert (=> bm!633090 m!7661284))

(declare-fun m!7661456 () Bool)

(assert (=> bm!633090 m!7661456))

(assert (=> bm!633091 m!7661284))

(declare-fun m!7661458 () Bool)

(assert (=> bm!633091 m!7661458))

(declare-fun m!7661460 () Bool)

(assert (=> d!2171899 m!7661460))

(assert (=> d!2171899 m!7661294))

(assert (=> b!6974321 d!2171899))

(assert (=> b!6974321 d!2171891))

(declare-fun d!2171901 () Bool)

(assert (=> d!2171901 (= (tail!13110 s!9351) (t!380694 s!9351))))

(assert (=> b!6974321 d!2171901))

(declare-fun d!2171903 () Bool)

(declare-fun res!2844588 () Bool)

(declare-fun e!4192181 () Bool)

(assert (=> d!2171903 (=> res!2844588 e!4192181)))

(assert (=> d!2171903 (= res!2844588 ((_ is ElementMatch!17135) (h!73276 l!9142)))))

(assert (=> d!2171903 (= (validRegex!8817 (h!73276 l!9142)) e!4192181)))

(declare-fun b!6974737 () Bool)

(declare-fun e!4192176 () Bool)

(declare-fun e!4192175 () Bool)

(assert (=> b!6974737 (= e!4192176 e!4192175)))

(declare-fun c!1292963 () Bool)

(assert (=> b!6974737 (= c!1292963 ((_ is Union!17135) (h!73276 l!9142)))))

(declare-fun bm!633098 () Bool)

(declare-fun call!633103 () Bool)

(declare-fun call!633105 () Bool)

(assert (=> bm!633098 (= call!633103 call!633105)))

(declare-fun b!6974738 () Bool)

(assert (=> b!6974738 (= e!4192181 e!4192176)))

(declare-fun c!1292962 () Bool)

(assert (=> b!6974738 (= c!1292962 ((_ is Star!17135) (h!73276 l!9142)))))

(declare-fun b!6974739 () Bool)

(declare-fun res!2844587 () Bool)

(declare-fun e!4192180 () Bool)

(assert (=> b!6974739 (=> res!2844587 e!4192180)))

(assert (=> b!6974739 (= res!2844587 (not ((_ is Concat!25980) (h!73276 l!9142))))))

(assert (=> b!6974739 (= e!4192175 e!4192180)))

(declare-fun b!6974740 () Bool)

(declare-fun e!4192178 () Bool)

(assert (=> b!6974740 (= e!4192178 call!633105)))

(declare-fun b!6974741 () Bool)

(declare-fun e!4192179 () Bool)

(assert (=> b!6974741 (= e!4192180 e!4192179)))

(declare-fun res!2844586 () Bool)

(assert (=> b!6974741 (=> (not res!2844586) (not e!4192179))))

(assert (=> b!6974741 (= res!2844586 call!633103)))

(declare-fun b!6974742 () Bool)

(declare-fun call!633104 () Bool)

(assert (=> b!6974742 (= e!4192179 call!633104)))

(declare-fun b!6974743 () Bool)

(declare-fun e!4192177 () Bool)

(assert (=> b!6974743 (= e!4192177 call!633104)))

(declare-fun bm!633099 () Bool)

(assert (=> bm!633099 (= call!633105 (validRegex!8817 (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142))))))))

(declare-fun b!6974744 () Bool)

(declare-fun res!2844590 () Bool)

(assert (=> b!6974744 (=> (not res!2844590) (not e!4192177))))

(assert (=> b!6974744 (= res!2844590 call!633103)))

(assert (=> b!6974744 (= e!4192175 e!4192177)))

(declare-fun b!6974745 () Bool)

(assert (=> b!6974745 (= e!4192176 e!4192178)))

(declare-fun res!2844589 () Bool)

(assert (=> b!6974745 (= res!2844589 (not (nullable!6920 (reg!17464 (h!73276 l!9142)))))))

(assert (=> b!6974745 (=> (not res!2844589) (not e!4192178))))

(declare-fun bm!633100 () Bool)

(assert (=> bm!633100 (= call!633104 (validRegex!8817 (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142)))))))

(assert (= (and d!2171903 (not res!2844588)) b!6974738))

(assert (= (and b!6974738 c!1292962) b!6974745))

(assert (= (and b!6974738 (not c!1292962)) b!6974737))

(assert (= (and b!6974745 res!2844589) b!6974740))

(assert (= (and b!6974737 c!1292963) b!6974744))

(assert (= (and b!6974737 (not c!1292963)) b!6974739))

(assert (= (and b!6974744 res!2844590) b!6974743))

(assert (= (and b!6974739 (not res!2844587)) b!6974741))

(assert (= (and b!6974741 res!2844586) b!6974742))

(assert (= (or b!6974744 b!6974741) bm!633098))

(assert (= (or b!6974743 b!6974742) bm!633100))

(assert (= (or b!6974740 bm!633098) bm!633099))

(declare-fun m!7661462 () Bool)

(assert (=> bm!633099 m!7661462))

(declare-fun m!7661464 () Bool)

(assert (=> b!6974745 m!7661464))

(declare-fun m!7661466 () Bool)

(assert (=> bm!633100 m!7661466))

(assert (=> bs!1859743 d!2171903))

(assert (=> b!6974320 d!2171891))

(declare-fun d!2171905 () Bool)

(assert (=> d!2171905 (= (isEmptyLang!2073 lt!2479907) ((_ is EmptyLang!17135) lt!2479907))))

(assert (=> b!6974363 d!2171905))

(declare-fun d!2171907 () Bool)

(assert (=> d!2171907 (= (isEmpty!39030 s!9351) ((_ is Nil!66827) s!9351))))

(assert (=> bm!633042 d!2171907))

(assert (=> bm!633046 d!2171907))

(assert (=> d!2171823 d!2171821))

(assert (=> d!2171823 d!2171807))

(declare-fun d!2171909 () Bool)

(assert (=> d!2171909 (= (matchR!9237 r!13765 s!9351) (matchRSpec!4152 r!13765 s!9351))))

(assert (=> d!2171909 true))

(declare-fun _$88!5780 () Unit!160922)

(assert (=> d!2171909 (= (choose!51921 r!13765 s!9351) _$88!5780)))

(declare-fun bs!1859772 () Bool)

(assert (= bs!1859772 d!2171909))

(assert (=> bs!1859772 m!7661214))

(assert (=> bs!1859772 m!7661212))

(assert (=> d!2171823 d!2171909))

(declare-fun d!2171911 () Bool)

(declare-fun res!2844593 () Bool)

(declare-fun e!4192188 () Bool)

(assert (=> d!2171911 (=> res!2844593 e!4192188)))

(assert (=> d!2171911 (= res!2844593 ((_ is ElementMatch!17135) r!13765))))

(assert (=> d!2171911 (= (validRegex!8817 r!13765) e!4192188)))

(declare-fun b!6974746 () Bool)

(declare-fun e!4192183 () Bool)

(declare-fun e!4192182 () Bool)

(assert (=> b!6974746 (= e!4192183 e!4192182)))

(declare-fun c!1292965 () Bool)

(assert (=> b!6974746 (= c!1292965 ((_ is Union!17135) r!13765))))

(declare-fun bm!633101 () Bool)

(declare-fun call!633106 () Bool)

(declare-fun call!633108 () Bool)

(assert (=> bm!633101 (= call!633106 call!633108)))

(declare-fun b!6974747 () Bool)

(assert (=> b!6974747 (= e!4192188 e!4192183)))

(declare-fun c!1292964 () Bool)

(assert (=> b!6974747 (= c!1292964 ((_ is Star!17135) r!13765))))

(declare-fun b!6974748 () Bool)

(declare-fun res!2844592 () Bool)

(declare-fun e!4192187 () Bool)

(assert (=> b!6974748 (=> res!2844592 e!4192187)))

(assert (=> b!6974748 (= res!2844592 (not ((_ is Concat!25980) r!13765)))))

(assert (=> b!6974748 (= e!4192182 e!4192187)))

(declare-fun b!6974749 () Bool)

(declare-fun e!4192185 () Bool)

(assert (=> b!6974749 (= e!4192185 call!633108)))

(declare-fun b!6974750 () Bool)

(declare-fun e!4192186 () Bool)

(assert (=> b!6974750 (= e!4192187 e!4192186)))

(declare-fun res!2844591 () Bool)

(assert (=> b!6974750 (=> (not res!2844591) (not e!4192186))))

(assert (=> b!6974750 (= res!2844591 call!633106)))

(declare-fun b!6974751 () Bool)

(declare-fun call!633107 () Bool)

(assert (=> b!6974751 (= e!4192186 call!633107)))

(declare-fun b!6974752 () Bool)

(declare-fun e!4192184 () Bool)

(assert (=> b!6974752 (= e!4192184 call!633107)))

(declare-fun bm!633102 () Bool)

(assert (=> bm!633102 (= call!633108 (validRegex!8817 (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765)))))))

(declare-fun b!6974753 () Bool)

(declare-fun res!2844595 () Bool)

(assert (=> b!6974753 (=> (not res!2844595) (not e!4192184))))

(assert (=> b!6974753 (= res!2844595 call!633106)))

(assert (=> b!6974753 (= e!4192182 e!4192184)))

(declare-fun b!6974754 () Bool)

(assert (=> b!6974754 (= e!4192183 e!4192185)))

(declare-fun res!2844594 () Bool)

(assert (=> b!6974754 (= res!2844594 (not (nullable!6920 (reg!17464 r!13765))))))

(assert (=> b!6974754 (=> (not res!2844594) (not e!4192185))))

(declare-fun bm!633103 () Bool)

(assert (=> bm!633103 (= call!633107 (validRegex!8817 (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765))))))

(assert (= (and d!2171911 (not res!2844593)) b!6974747))

(assert (= (and b!6974747 c!1292964) b!6974754))

(assert (= (and b!6974747 (not c!1292964)) b!6974746))

(assert (= (and b!6974754 res!2844594) b!6974749))

(assert (= (and b!6974746 c!1292965) b!6974753))

(assert (= (and b!6974746 (not c!1292965)) b!6974748))

(assert (= (and b!6974753 res!2844595) b!6974752))

(assert (= (and b!6974748 (not res!2844592)) b!6974750))

(assert (= (and b!6974750 res!2844591) b!6974751))

(assert (= (or b!6974753 b!6974750) bm!633101))

(assert (= (or b!6974752 b!6974751) bm!633103))

(assert (= (or b!6974749 bm!633101) bm!633102))

(declare-fun m!7661468 () Bool)

(assert (=> bm!633102 m!7661468))

(declare-fun m!7661470 () Bool)

(assert (=> b!6974754 m!7661470))

(declare-fun m!7661472 () Bool)

(assert (=> bm!633103 m!7661472))

(assert (=> d!2171823 d!2171911))

(declare-fun d!2171913 () Bool)

(declare-fun nullableFct!2596 (Regex!17135) Bool)

(assert (=> d!2171913 (= (nullable!6920 r!13765) (nullableFct!2596 r!13765))))

(declare-fun bs!1859773 () Bool)

(assert (= bs!1859773 d!2171913))

(declare-fun m!7661474 () Bool)

(assert (=> bs!1859773 m!7661474))

(assert (=> b!6974323 d!2171913))

(declare-fun d!2171915 () Bool)

(assert (=> d!2171915 (= (isEmpty!39030 (tail!13110 s!9351)) ((_ is Nil!66827) (tail!13110 s!9351)))))

(assert (=> b!6974326 d!2171915))

(assert (=> b!6974326 d!2171901))

(declare-fun bs!1859774 () Bool)

(declare-fun b!6974762 () Bool)

(assert (= bs!1859774 (and b!6974762 b!6974278)))

(declare-fun lambda!397937 () Int)

(assert (=> bs!1859774 (= (and (= (reg!17464 (regTwo!34783 r!13765)) (reg!17464 r!13765)) (= (regTwo!34783 r!13765) r!13765)) (= lambda!397937 lambda!397923))))

(declare-fun bs!1859775 () Bool)

(assert (= bs!1859775 (and b!6974762 b!6974273)))

(assert (=> bs!1859775 (not (= lambda!397937 lambda!397924))))

(assert (=> b!6974762 true))

(assert (=> b!6974762 true))

(declare-fun bs!1859776 () Bool)

(declare-fun b!6974757 () Bool)

(assert (= bs!1859776 (and b!6974757 b!6974278)))

(declare-fun lambda!397938 () Int)

(assert (=> bs!1859776 (not (= lambda!397938 lambda!397923))))

(declare-fun bs!1859777 () Bool)

(assert (= bs!1859777 (and b!6974757 b!6974273)))

(assert (=> bs!1859777 (= (and (= (regOne!34782 (regTwo!34783 r!13765)) (regOne!34782 r!13765)) (= (regTwo!34782 (regTwo!34783 r!13765)) (regTwo!34782 r!13765))) (= lambda!397938 lambda!397924))))

(declare-fun bs!1859778 () Bool)

(assert (= bs!1859778 (and b!6974757 b!6974762)))

(assert (=> bs!1859778 (not (= lambda!397938 lambda!397937))))

(assert (=> b!6974757 true))

(assert (=> b!6974757 true))

(declare-fun bm!633104 () Bool)

(declare-fun call!633110 () Bool)

(assert (=> bm!633104 (= call!633110 (isEmpty!39030 s!9351))))

(declare-fun b!6974755 () Bool)

(declare-fun e!4192191 () Bool)

(assert (=> b!6974755 (= e!4192191 (= s!9351 (Cons!66827 (c!1292829 (regTwo!34783 r!13765)) Nil!66827)))))

(declare-fun b!6974756 () Bool)

(declare-fun res!2844596 () Bool)

(declare-fun e!4192195 () Bool)

(assert (=> b!6974756 (=> res!2844596 e!4192195)))

(assert (=> b!6974756 (= res!2844596 call!633110)))

(declare-fun e!4192193 () Bool)

(assert (=> b!6974756 (= e!4192193 e!4192195)))

(declare-fun call!633109 () Bool)

(assert (=> b!6974757 (= e!4192193 call!633109)))

(declare-fun b!6974758 () Bool)

(declare-fun e!4192190 () Bool)

(assert (=> b!6974758 (= e!4192190 call!633110)))

(declare-fun b!6974759 () Bool)

(declare-fun e!4192189 () Bool)

(assert (=> b!6974759 (= e!4192190 e!4192189)))

(declare-fun res!2844598 () Bool)

(assert (=> b!6974759 (= res!2844598 (not ((_ is EmptyLang!17135) (regTwo!34783 r!13765))))))

(assert (=> b!6974759 (=> (not res!2844598) (not e!4192189))))

(declare-fun b!6974760 () Bool)

(declare-fun e!4192194 () Bool)

(assert (=> b!6974760 (= e!4192194 (matchRSpec!4152 (regTwo!34783 (regTwo!34783 r!13765)) s!9351))))

(declare-fun d!2171917 () Bool)

(declare-fun c!1292967 () Bool)

(assert (=> d!2171917 (= c!1292967 ((_ is EmptyExpr!17135) (regTwo!34783 r!13765)))))

(assert (=> d!2171917 (= (matchRSpec!4152 (regTwo!34783 r!13765) s!9351) e!4192190)))

(declare-fun b!6974761 () Bool)

(declare-fun e!4192192 () Bool)

(assert (=> b!6974761 (= e!4192192 e!4192193)))

(declare-fun c!1292969 () Bool)

(assert (=> b!6974761 (= c!1292969 ((_ is Star!17135) (regTwo!34783 r!13765)))))

(assert (=> b!6974762 (= e!4192195 call!633109)))

(declare-fun bm!633105 () Bool)

(assert (=> bm!633105 (= call!633109 (Exists!4098 (ite c!1292969 lambda!397937 lambda!397938)))))

(declare-fun b!6974763 () Bool)

(assert (=> b!6974763 (= e!4192192 e!4192194)))

(declare-fun res!2844597 () Bool)

(assert (=> b!6974763 (= res!2844597 (matchRSpec!4152 (regOne!34783 (regTwo!34783 r!13765)) s!9351))))

(assert (=> b!6974763 (=> res!2844597 e!4192194)))

(declare-fun b!6974764 () Bool)

(declare-fun c!1292968 () Bool)

(assert (=> b!6974764 (= c!1292968 ((_ is ElementMatch!17135) (regTwo!34783 r!13765)))))

(assert (=> b!6974764 (= e!4192189 e!4192191)))

(declare-fun b!6974765 () Bool)

(declare-fun c!1292966 () Bool)

(assert (=> b!6974765 (= c!1292966 ((_ is Union!17135) (regTwo!34783 r!13765)))))

(assert (=> b!6974765 (= e!4192191 e!4192192)))

(assert (= (and d!2171917 c!1292967) b!6974758))

(assert (= (and d!2171917 (not c!1292967)) b!6974759))

(assert (= (and b!6974759 res!2844598) b!6974764))

(assert (= (and b!6974764 c!1292968) b!6974755))

(assert (= (and b!6974764 (not c!1292968)) b!6974765))

(assert (= (and b!6974765 c!1292966) b!6974763))

(assert (= (and b!6974765 (not c!1292966)) b!6974761))

(assert (= (and b!6974763 (not res!2844597)) b!6974760))

(assert (= (and b!6974761 c!1292969) b!6974756))

(assert (= (and b!6974761 (not c!1292969)) b!6974757))

(assert (= (and b!6974756 (not res!2844596)) b!6974762))

(assert (= (or b!6974762 b!6974757) bm!633105))

(assert (= (or b!6974758 b!6974756) bm!633104))

(assert (=> bm!633104 m!7661276))

(declare-fun m!7661476 () Bool)

(assert (=> b!6974760 m!7661476))

(declare-fun m!7661478 () Bool)

(assert (=> bm!633105 m!7661478))

(declare-fun m!7661480 () Bool)

(assert (=> b!6974763 m!7661480))

(assert (=> b!6974276 d!2171917))

(declare-fun d!2171919 () Bool)

(declare-fun res!2844599 () Bool)

(declare-fun e!4192196 () Bool)

(assert (=> d!2171919 (=> res!2844599 e!4192196)))

(assert (=> d!2171919 (= res!2844599 ((_ is Nil!66828) l!9142))))

(assert (=> d!2171919 (= (forall!16006 l!9142 lambda!397927) e!4192196)))

(declare-fun b!6974766 () Bool)

(declare-fun e!4192197 () Bool)

(assert (=> b!6974766 (= e!4192196 e!4192197)))

(declare-fun res!2844600 () Bool)

(assert (=> b!6974766 (=> (not res!2844600) (not e!4192197))))

(assert (=> b!6974766 (= res!2844600 (dynLambda!26652 lambda!397927 (h!73276 l!9142)))))

(declare-fun b!6974767 () Bool)

(assert (=> b!6974767 (= e!4192197 (forall!16006 (t!380695 l!9142) lambda!397927))))

(assert (= (and d!2171919 (not res!2844599)) b!6974766))

(assert (= (and b!6974766 res!2844600) b!6974767))

(declare-fun b_lambda!260953 () Bool)

(assert (=> (not b_lambda!260953) (not b!6974766)))

(declare-fun m!7661482 () Bool)

(assert (=> b!6974766 m!7661482))

(declare-fun m!7661484 () Bool)

(assert (=> b!6974767 m!7661484))

(assert (=> d!2171827 d!2171919))

(declare-fun bs!1859779 () Bool)

(declare-fun b!6974775 () Bool)

(assert (= bs!1859779 (and b!6974775 b!6974278)))

(declare-fun lambda!397939 () Int)

(assert (=> bs!1859779 (= (and (= (reg!17464 (regOne!34783 r!13765)) (reg!17464 r!13765)) (= (regOne!34783 r!13765) r!13765)) (= lambda!397939 lambda!397923))))

(declare-fun bs!1859780 () Bool)

(assert (= bs!1859780 (and b!6974775 b!6974273)))

(assert (=> bs!1859780 (not (= lambda!397939 lambda!397924))))

(declare-fun bs!1859781 () Bool)

(assert (= bs!1859781 (and b!6974775 b!6974762)))

(assert (=> bs!1859781 (= (and (= (reg!17464 (regOne!34783 r!13765)) (reg!17464 (regTwo!34783 r!13765))) (= (regOne!34783 r!13765) (regTwo!34783 r!13765))) (= lambda!397939 lambda!397937))))

(declare-fun bs!1859782 () Bool)

(assert (= bs!1859782 (and b!6974775 b!6974757)))

(assert (=> bs!1859782 (not (= lambda!397939 lambda!397938))))

(assert (=> b!6974775 true))

(assert (=> b!6974775 true))

(declare-fun bs!1859783 () Bool)

(declare-fun b!6974770 () Bool)

(assert (= bs!1859783 (and b!6974770 b!6974278)))

(declare-fun lambda!397940 () Int)

(assert (=> bs!1859783 (not (= lambda!397940 lambda!397923))))

(declare-fun bs!1859784 () Bool)

(assert (= bs!1859784 (and b!6974770 b!6974273)))

(assert (=> bs!1859784 (= (and (= (regOne!34782 (regOne!34783 r!13765)) (regOne!34782 r!13765)) (= (regTwo!34782 (regOne!34783 r!13765)) (regTwo!34782 r!13765))) (= lambda!397940 lambda!397924))))

(declare-fun bs!1859785 () Bool)

(assert (= bs!1859785 (and b!6974770 b!6974757)))

(assert (=> bs!1859785 (= (and (= (regOne!34782 (regOne!34783 r!13765)) (regOne!34782 (regTwo!34783 r!13765))) (= (regTwo!34782 (regOne!34783 r!13765)) (regTwo!34782 (regTwo!34783 r!13765)))) (= lambda!397940 lambda!397938))))

(declare-fun bs!1859786 () Bool)

(assert (= bs!1859786 (and b!6974770 b!6974775)))

(assert (=> bs!1859786 (not (= lambda!397940 lambda!397939))))

(declare-fun bs!1859787 () Bool)

(assert (= bs!1859787 (and b!6974770 b!6974762)))

(assert (=> bs!1859787 (not (= lambda!397940 lambda!397937))))

(assert (=> b!6974770 true))

(assert (=> b!6974770 true))

(declare-fun bm!633106 () Bool)

(declare-fun call!633112 () Bool)

(assert (=> bm!633106 (= call!633112 (isEmpty!39030 s!9351))))

(declare-fun b!6974768 () Bool)

(declare-fun e!4192200 () Bool)

(assert (=> b!6974768 (= e!4192200 (= s!9351 (Cons!66827 (c!1292829 (regOne!34783 r!13765)) Nil!66827)))))

(declare-fun b!6974769 () Bool)

(declare-fun res!2844601 () Bool)

(declare-fun e!4192204 () Bool)

(assert (=> b!6974769 (=> res!2844601 e!4192204)))

(assert (=> b!6974769 (= res!2844601 call!633112)))

(declare-fun e!4192202 () Bool)

(assert (=> b!6974769 (= e!4192202 e!4192204)))

(declare-fun call!633111 () Bool)

(assert (=> b!6974770 (= e!4192202 call!633111)))

(declare-fun b!6974771 () Bool)

(declare-fun e!4192199 () Bool)

(assert (=> b!6974771 (= e!4192199 call!633112)))

(declare-fun b!6974772 () Bool)

(declare-fun e!4192198 () Bool)

(assert (=> b!6974772 (= e!4192199 e!4192198)))

(declare-fun res!2844603 () Bool)

(assert (=> b!6974772 (= res!2844603 (not ((_ is EmptyLang!17135) (regOne!34783 r!13765))))))

(assert (=> b!6974772 (=> (not res!2844603) (not e!4192198))))

(declare-fun b!6974773 () Bool)

(declare-fun e!4192203 () Bool)

(assert (=> b!6974773 (= e!4192203 (matchRSpec!4152 (regTwo!34783 (regOne!34783 r!13765)) s!9351))))

(declare-fun d!2171921 () Bool)

(declare-fun c!1292971 () Bool)

(assert (=> d!2171921 (= c!1292971 ((_ is EmptyExpr!17135) (regOne!34783 r!13765)))))

(assert (=> d!2171921 (= (matchRSpec!4152 (regOne!34783 r!13765) s!9351) e!4192199)))

(declare-fun b!6974774 () Bool)

(declare-fun e!4192201 () Bool)

(assert (=> b!6974774 (= e!4192201 e!4192202)))

(declare-fun c!1292973 () Bool)

(assert (=> b!6974774 (= c!1292973 ((_ is Star!17135) (regOne!34783 r!13765)))))

(assert (=> b!6974775 (= e!4192204 call!633111)))

(declare-fun bm!633107 () Bool)

(assert (=> bm!633107 (= call!633111 (Exists!4098 (ite c!1292973 lambda!397939 lambda!397940)))))

(declare-fun b!6974776 () Bool)

(assert (=> b!6974776 (= e!4192201 e!4192203)))

(declare-fun res!2844602 () Bool)

(assert (=> b!6974776 (= res!2844602 (matchRSpec!4152 (regOne!34783 (regOne!34783 r!13765)) s!9351))))

(assert (=> b!6974776 (=> res!2844602 e!4192203)))

(declare-fun b!6974777 () Bool)

(declare-fun c!1292972 () Bool)

(assert (=> b!6974777 (= c!1292972 ((_ is ElementMatch!17135) (regOne!34783 r!13765)))))

(assert (=> b!6974777 (= e!4192198 e!4192200)))

(declare-fun b!6974778 () Bool)

(declare-fun c!1292970 () Bool)

(assert (=> b!6974778 (= c!1292970 ((_ is Union!17135) (regOne!34783 r!13765)))))

(assert (=> b!6974778 (= e!4192200 e!4192201)))

(assert (= (and d!2171921 c!1292971) b!6974771))

(assert (= (and d!2171921 (not c!1292971)) b!6974772))

(assert (= (and b!6974772 res!2844603) b!6974777))

(assert (= (and b!6974777 c!1292972) b!6974768))

(assert (= (and b!6974777 (not c!1292972)) b!6974778))

(assert (= (and b!6974778 c!1292970) b!6974776))

(assert (= (and b!6974778 (not c!1292970)) b!6974774))

(assert (= (and b!6974776 (not res!2844602)) b!6974773))

(assert (= (and b!6974774 c!1292973) b!6974769))

(assert (= (and b!6974774 (not c!1292973)) b!6974770))

(assert (= (and b!6974769 (not res!2844601)) b!6974775))

(assert (= (or b!6974775 b!6974770) bm!633107))

(assert (= (or b!6974771 b!6974769) bm!633106))

(assert (=> bm!633106 m!7661276))

(declare-fun m!7661486 () Bool)

(assert (=> b!6974773 m!7661486))

(declare-fun m!7661488 () Bool)

(assert (=> bm!633107 m!7661488))

(declare-fun m!7661490 () Bool)

(assert (=> b!6974776 m!7661490))

(assert (=> b!6974279 d!2171921))

(declare-fun d!2171923 () Bool)

(declare-fun choose!51923 (Int) Bool)

(assert (=> d!2171923 (= (Exists!4098 (ite c!1292874 lambda!397923 lambda!397924)) (choose!51923 (ite c!1292874 lambda!397923 lambda!397924)))))

(declare-fun bs!1859788 () Bool)

(assert (= bs!1859788 d!2171923))

(declare-fun m!7661492 () Bool)

(assert (=> bs!1859788 m!7661492))

(assert (=> bm!633043 d!2171923))

(assert (=> b!6974327 d!2171915))

(assert (=> b!6974327 d!2171901))

(declare-fun d!2171925 () Bool)

(declare-fun res!2844606 () Bool)

(declare-fun e!4192211 () Bool)

(assert (=> d!2171925 (=> res!2844606 e!4192211)))

(assert (=> d!2171925 (= res!2844606 ((_ is ElementMatch!17135) lt!2479907))))

(assert (=> d!2171925 (= (validRegex!8817 lt!2479907) e!4192211)))

(declare-fun b!6974779 () Bool)

(declare-fun e!4192206 () Bool)

(declare-fun e!4192205 () Bool)

(assert (=> b!6974779 (= e!4192206 e!4192205)))

(declare-fun c!1292975 () Bool)

(assert (=> b!6974779 (= c!1292975 ((_ is Union!17135) lt!2479907))))

(declare-fun bm!633108 () Bool)

(declare-fun call!633113 () Bool)

(declare-fun call!633115 () Bool)

(assert (=> bm!633108 (= call!633113 call!633115)))

(declare-fun b!6974780 () Bool)

(assert (=> b!6974780 (= e!4192211 e!4192206)))

(declare-fun c!1292974 () Bool)

(assert (=> b!6974780 (= c!1292974 ((_ is Star!17135) lt!2479907))))

(declare-fun b!6974781 () Bool)

(declare-fun res!2844605 () Bool)

(declare-fun e!4192210 () Bool)

(assert (=> b!6974781 (=> res!2844605 e!4192210)))

(assert (=> b!6974781 (= res!2844605 (not ((_ is Concat!25980) lt!2479907)))))

(assert (=> b!6974781 (= e!4192205 e!4192210)))

(declare-fun b!6974782 () Bool)

(declare-fun e!4192208 () Bool)

(assert (=> b!6974782 (= e!4192208 call!633115)))

(declare-fun b!6974783 () Bool)

(declare-fun e!4192209 () Bool)

(assert (=> b!6974783 (= e!4192210 e!4192209)))

(declare-fun res!2844604 () Bool)

(assert (=> b!6974783 (=> (not res!2844604) (not e!4192209))))

(assert (=> b!6974783 (= res!2844604 call!633113)))

(declare-fun b!6974784 () Bool)

(declare-fun call!633114 () Bool)

(assert (=> b!6974784 (= e!4192209 call!633114)))

(declare-fun b!6974785 () Bool)

(declare-fun e!4192207 () Bool)

(assert (=> b!6974785 (= e!4192207 call!633114)))

(declare-fun bm!633109 () Bool)

(assert (=> bm!633109 (= call!633115 (validRegex!8817 (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907)))))))

(declare-fun b!6974786 () Bool)

(declare-fun res!2844608 () Bool)

(assert (=> b!6974786 (=> (not res!2844608) (not e!4192207))))

(assert (=> b!6974786 (= res!2844608 call!633113)))

(assert (=> b!6974786 (= e!4192205 e!4192207)))

(declare-fun b!6974787 () Bool)

(assert (=> b!6974787 (= e!4192206 e!4192208)))

(declare-fun res!2844607 () Bool)

(assert (=> b!6974787 (= res!2844607 (not (nullable!6920 (reg!17464 lt!2479907))))))

(assert (=> b!6974787 (=> (not res!2844607) (not e!4192208))))

(declare-fun bm!633110 () Bool)

(assert (=> bm!633110 (= call!633114 (validRegex!8817 (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907))))))

(assert (= (and d!2171925 (not res!2844606)) b!6974780))

(assert (= (and b!6974780 c!1292974) b!6974787))

(assert (= (and b!6974780 (not c!1292974)) b!6974779))

(assert (= (and b!6974787 res!2844607) b!6974782))

(assert (= (and b!6974779 c!1292975) b!6974786))

(assert (= (and b!6974779 (not c!1292975)) b!6974781))

(assert (= (and b!6974786 res!2844608) b!6974785))

(assert (= (and b!6974781 (not res!2844605)) b!6974783))

(assert (= (and b!6974783 res!2844604) b!6974784))

(assert (= (or b!6974786 b!6974783) bm!633108))

(assert (= (or b!6974785 b!6974784) bm!633110))

(assert (= (or b!6974782 bm!633108) bm!633109))

(declare-fun m!7661494 () Bool)

(assert (=> bm!633109 m!7661494))

(declare-fun m!7661496 () Bool)

(assert (=> b!6974787 m!7661496))

(declare-fun m!7661498 () Bool)

(assert (=> bm!633110 m!7661498))

(assert (=> d!2171829 d!2171925))

(declare-fun d!2171927 () Bool)

(declare-fun res!2844609 () Bool)

(declare-fun e!4192212 () Bool)

(assert (=> d!2171927 (=> res!2844609 e!4192212)))

(assert (=> d!2171927 (= res!2844609 ((_ is Nil!66828) l!9142))))

(assert (=> d!2171927 (= (forall!16006 l!9142 lambda!397930) e!4192212)))

(declare-fun b!6974788 () Bool)

(declare-fun e!4192213 () Bool)

(assert (=> b!6974788 (= e!4192212 e!4192213)))

(declare-fun res!2844610 () Bool)

(assert (=> b!6974788 (=> (not res!2844610) (not e!4192213))))

(assert (=> b!6974788 (= res!2844610 (dynLambda!26652 lambda!397930 (h!73276 l!9142)))))

(declare-fun b!6974789 () Bool)

(assert (=> b!6974789 (= e!4192213 (forall!16006 (t!380695 l!9142) lambda!397930))))

(assert (= (and d!2171927 (not res!2844609)) b!6974788))

(assert (= (and b!6974788 res!2844610) b!6974789))

(declare-fun b_lambda!260955 () Bool)

(assert (=> (not b_lambda!260955) (not b!6974788)))

(declare-fun m!7661500 () Bool)

(assert (=> b!6974788 m!7661500))

(declare-fun m!7661502 () Bool)

(assert (=> b!6974789 m!7661502))

(assert (=> d!2171829 d!2171927))

(declare-fun d!2171929 () Bool)

(assert (=> d!2171929 (= (head!14043 l!9142) (h!73276 l!9142))))

(assert (=> b!6974357 d!2171929))

(declare-fun d!2171931 () Bool)

(assert (=> d!2171931 (= (isEmpty!39031 (t!380695 l!9142)) ((_ is Nil!66828) (t!380695 l!9142)))))

(assert (=> b!6974356 d!2171931))

(declare-fun d!2171933 () Bool)

(assert (=> d!2171933 (= (isUnion!1501 lt!2479907) ((_ is Union!17135) lt!2479907))))

(assert (=> b!6974360 d!2171933))

(assert (=> d!2171821 d!2171907))

(assert (=> d!2171821 d!2171911))

(declare-fun d!2171935 () Bool)

(assert (=> d!2171935 (= (isEmpty!39031 (tail!13111 l!9142)) ((_ is Nil!66828) (tail!13111 l!9142)))))

(assert (=> b!6974359 d!2171935))

(declare-fun d!2171937 () Bool)

(assert (=> d!2171937 (= (tail!13111 l!9142) (t!380695 l!9142))))

(assert (=> b!6974359 d!2171937))

(declare-fun e!4192214 () Bool)

(assert (=> b!6974379 (= tp!1925067 e!4192214)))

(declare-fun b!6974791 () Bool)

(declare-fun tp!1925267 () Bool)

(declare-fun tp!1925265 () Bool)

(assert (=> b!6974791 (= e!4192214 (and tp!1925267 tp!1925265))))

(declare-fun b!6974790 () Bool)

(assert (=> b!6974790 (= e!4192214 tp_is_empty!43495)))

(declare-fun b!6974793 () Bool)

(declare-fun tp!1925264 () Bool)

(declare-fun tp!1925268 () Bool)

(assert (=> b!6974793 (= e!4192214 (and tp!1925264 tp!1925268))))

(declare-fun b!6974792 () Bool)

(declare-fun tp!1925266 () Bool)

(assert (=> b!6974792 (= e!4192214 tp!1925266)))

(assert (= (and b!6974379 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34782 r!13765)))) b!6974790))

(assert (= (and b!6974379 ((_ is Concat!25980) (regOne!34783 (regOne!34782 r!13765)))) b!6974791))

(assert (= (and b!6974379 ((_ is Star!17135) (regOne!34783 (regOne!34782 r!13765)))) b!6974792))

(assert (= (and b!6974379 ((_ is Union!17135) (regOne!34783 (regOne!34782 r!13765)))) b!6974793))

(declare-fun e!4192215 () Bool)

(assert (=> b!6974379 (= tp!1925071 e!4192215)))

(declare-fun b!6974795 () Bool)

(declare-fun tp!1925272 () Bool)

(declare-fun tp!1925270 () Bool)

(assert (=> b!6974795 (= e!4192215 (and tp!1925272 tp!1925270))))

(declare-fun b!6974794 () Bool)

(assert (=> b!6974794 (= e!4192215 tp_is_empty!43495)))

(declare-fun b!6974797 () Bool)

(declare-fun tp!1925269 () Bool)

(declare-fun tp!1925273 () Bool)

(assert (=> b!6974797 (= e!4192215 (and tp!1925269 tp!1925273))))

(declare-fun b!6974796 () Bool)

(declare-fun tp!1925271 () Bool)

(assert (=> b!6974796 (= e!4192215 tp!1925271)))

(assert (= (and b!6974379 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34782 r!13765)))) b!6974794))

(assert (= (and b!6974379 ((_ is Concat!25980) (regTwo!34783 (regOne!34782 r!13765)))) b!6974795))

(assert (= (and b!6974379 ((_ is Star!17135) (regTwo!34783 (regOne!34782 r!13765)))) b!6974796))

(assert (= (and b!6974379 ((_ is Union!17135) (regTwo!34783 (regOne!34782 r!13765)))) b!6974797))

(declare-fun e!4192216 () Bool)

(assert (=> b!6974383 (= tp!1925072 e!4192216)))

(declare-fun b!6974799 () Bool)

(declare-fun tp!1925277 () Bool)

(declare-fun tp!1925275 () Bool)

(assert (=> b!6974799 (= e!4192216 (and tp!1925277 tp!1925275))))

(declare-fun b!6974798 () Bool)

(assert (=> b!6974798 (= e!4192216 tp_is_empty!43495)))

(declare-fun b!6974801 () Bool)

(declare-fun tp!1925274 () Bool)

(declare-fun tp!1925278 () Bool)

(assert (=> b!6974801 (= e!4192216 (and tp!1925274 tp!1925278))))

(declare-fun b!6974800 () Bool)

(declare-fun tp!1925276 () Bool)

(assert (=> b!6974800 (= e!4192216 tp!1925276)))

(assert (= (and b!6974383 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34782 r!13765)))) b!6974798))

(assert (= (and b!6974383 ((_ is Concat!25980) (regOne!34783 (regTwo!34782 r!13765)))) b!6974799))

(assert (= (and b!6974383 ((_ is Star!17135) (regOne!34783 (regTwo!34782 r!13765)))) b!6974800))

(assert (= (and b!6974383 ((_ is Union!17135) (regOne!34783 (regTwo!34782 r!13765)))) b!6974801))

(declare-fun e!4192217 () Bool)

(assert (=> b!6974383 (= tp!1925076 e!4192217)))

(declare-fun b!6974803 () Bool)

(declare-fun tp!1925282 () Bool)

(declare-fun tp!1925280 () Bool)

(assert (=> b!6974803 (= e!4192217 (and tp!1925282 tp!1925280))))

(declare-fun b!6974802 () Bool)

(assert (=> b!6974802 (= e!4192217 tp_is_empty!43495)))

(declare-fun b!6974805 () Bool)

(declare-fun tp!1925279 () Bool)

(declare-fun tp!1925283 () Bool)

(assert (=> b!6974805 (= e!4192217 (and tp!1925279 tp!1925283))))

(declare-fun b!6974804 () Bool)

(declare-fun tp!1925281 () Bool)

(assert (=> b!6974804 (= e!4192217 tp!1925281)))

(assert (= (and b!6974383 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34782 r!13765)))) b!6974802))

(assert (= (and b!6974383 ((_ is Concat!25980) (regTwo!34783 (regTwo!34782 r!13765)))) b!6974803))

(assert (= (and b!6974383 ((_ is Star!17135) (regTwo!34783 (regTwo!34782 r!13765)))) b!6974804))

(assert (= (and b!6974383 ((_ is Union!17135) (regTwo!34783 (regTwo!34782 r!13765)))) b!6974805))

(declare-fun e!4192218 () Bool)

(assert (=> b!6974395 (= tp!1925090 e!4192218)))

(declare-fun b!6974807 () Bool)

(declare-fun tp!1925287 () Bool)

(declare-fun tp!1925285 () Bool)

(assert (=> b!6974807 (= e!4192218 (and tp!1925287 tp!1925285))))

(declare-fun b!6974806 () Bool)

(assert (=> b!6974806 (= e!4192218 tp_is_empty!43495)))

(declare-fun b!6974809 () Bool)

(declare-fun tp!1925284 () Bool)

(declare-fun tp!1925288 () Bool)

(assert (=> b!6974809 (= e!4192218 (and tp!1925284 tp!1925288))))

(declare-fun b!6974808 () Bool)

(declare-fun tp!1925286 () Bool)

(assert (=> b!6974808 (= e!4192218 tp!1925286)))

(assert (= (and b!6974395 ((_ is ElementMatch!17135) (reg!17464 (reg!17464 r!13765)))) b!6974806))

(assert (= (and b!6974395 ((_ is Concat!25980) (reg!17464 (reg!17464 r!13765)))) b!6974807))

(assert (= (and b!6974395 ((_ is Star!17135) (reg!17464 (reg!17464 r!13765)))) b!6974808))

(assert (= (and b!6974395 ((_ is Union!17135) (reg!17464 (reg!17464 r!13765)))) b!6974809))

(declare-fun e!4192219 () Bool)

(assert (=> b!6974394 (= tp!1925091 e!4192219)))

(declare-fun b!6974811 () Bool)

(declare-fun tp!1925292 () Bool)

(declare-fun tp!1925290 () Bool)

(assert (=> b!6974811 (= e!4192219 (and tp!1925292 tp!1925290))))

(declare-fun b!6974810 () Bool)

(assert (=> b!6974810 (= e!4192219 tp_is_empty!43495)))

(declare-fun b!6974813 () Bool)

(declare-fun tp!1925289 () Bool)

(declare-fun tp!1925293 () Bool)

(assert (=> b!6974813 (= e!4192219 (and tp!1925289 tp!1925293))))

(declare-fun b!6974812 () Bool)

(declare-fun tp!1925291 () Bool)

(assert (=> b!6974812 (= e!4192219 tp!1925291)))

(assert (= (and b!6974394 ((_ is ElementMatch!17135) (regOne!34782 (reg!17464 r!13765)))) b!6974810))

(assert (= (and b!6974394 ((_ is Concat!25980) (regOne!34782 (reg!17464 r!13765)))) b!6974811))

(assert (= (and b!6974394 ((_ is Star!17135) (regOne!34782 (reg!17464 r!13765)))) b!6974812))

(assert (= (and b!6974394 ((_ is Union!17135) (regOne!34782 (reg!17464 r!13765)))) b!6974813))

(declare-fun e!4192220 () Bool)

(assert (=> b!6974394 (= tp!1925089 e!4192220)))

(declare-fun b!6974815 () Bool)

(declare-fun tp!1925297 () Bool)

(declare-fun tp!1925295 () Bool)

(assert (=> b!6974815 (= e!4192220 (and tp!1925297 tp!1925295))))

(declare-fun b!6974814 () Bool)

(assert (=> b!6974814 (= e!4192220 tp_is_empty!43495)))

(declare-fun b!6974817 () Bool)

(declare-fun tp!1925294 () Bool)

(declare-fun tp!1925298 () Bool)

(assert (=> b!6974817 (= e!4192220 (and tp!1925294 tp!1925298))))

(declare-fun b!6974816 () Bool)

(declare-fun tp!1925296 () Bool)

(assert (=> b!6974816 (= e!4192220 tp!1925296)))

(assert (= (and b!6974394 ((_ is ElementMatch!17135) (regTwo!34782 (reg!17464 r!13765)))) b!6974814))

(assert (= (and b!6974394 ((_ is Concat!25980) (regTwo!34782 (reg!17464 r!13765)))) b!6974815))

(assert (= (and b!6974394 ((_ is Star!17135) (regTwo!34782 (reg!17464 r!13765)))) b!6974816))

(assert (= (and b!6974394 ((_ is Union!17135) (regTwo!34782 (reg!17464 r!13765)))) b!6974817))

(declare-fun e!4192221 () Bool)

(assert (=> b!6974403 (= tp!1925099 e!4192221)))

(declare-fun b!6974819 () Bool)

(declare-fun tp!1925302 () Bool)

(declare-fun tp!1925300 () Bool)

(assert (=> b!6974819 (= e!4192221 (and tp!1925302 tp!1925300))))

(declare-fun b!6974818 () Bool)

(assert (=> b!6974818 (= e!4192221 tp_is_empty!43495)))

(declare-fun b!6974821 () Bool)

(declare-fun tp!1925299 () Bool)

(declare-fun tp!1925303 () Bool)

(assert (=> b!6974821 (= e!4192221 (and tp!1925299 tp!1925303))))

(declare-fun b!6974820 () Bool)

(declare-fun tp!1925301 () Bool)

(assert (=> b!6974820 (= e!4192221 tp!1925301)))

(assert (= (and b!6974403 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34783 r!13765)))) b!6974818))

(assert (= (and b!6974403 ((_ is Concat!25980) (regOne!34782 (regOne!34783 r!13765)))) b!6974819))

(assert (= (and b!6974403 ((_ is Star!17135) (regOne!34782 (regOne!34783 r!13765)))) b!6974820))

(assert (= (and b!6974403 ((_ is Union!17135) (regOne!34782 (regOne!34783 r!13765)))) b!6974821))

(declare-fun e!4192222 () Bool)

(assert (=> b!6974403 (= tp!1925097 e!4192222)))

(declare-fun b!6974823 () Bool)

(declare-fun tp!1925307 () Bool)

(declare-fun tp!1925305 () Bool)

(assert (=> b!6974823 (= e!4192222 (and tp!1925307 tp!1925305))))

(declare-fun b!6974822 () Bool)

(assert (=> b!6974822 (= e!4192222 tp_is_empty!43495)))

(declare-fun b!6974825 () Bool)

(declare-fun tp!1925304 () Bool)

(declare-fun tp!1925308 () Bool)

(assert (=> b!6974825 (= e!4192222 (and tp!1925304 tp!1925308))))

(declare-fun b!6974824 () Bool)

(declare-fun tp!1925306 () Bool)

(assert (=> b!6974824 (= e!4192222 tp!1925306)))

(assert (= (and b!6974403 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34783 r!13765)))) b!6974822))

(assert (= (and b!6974403 ((_ is Concat!25980) (regTwo!34782 (regOne!34783 r!13765)))) b!6974823))

(assert (= (and b!6974403 ((_ is Star!17135) (regTwo!34782 (regOne!34783 r!13765)))) b!6974824))

(assert (= (and b!6974403 ((_ is Union!17135) (regTwo!34782 (regOne!34783 r!13765)))) b!6974825))

(declare-fun e!4192223 () Bool)

(assert (=> b!6974407 (= tp!1925104 e!4192223)))

(declare-fun b!6974827 () Bool)

(declare-fun tp!1925312 () Bool)

(declare-fun tp!1925310 () Bool)

(assert (=> b!6974827 (= e!4192223 (and tp!1925312 tp!1925310))))

(declare-fun b!6974826 () Bool)

(assert (=> b!6974826 (= e!4192223 tp_is_empty!43495)))

(declare-fun b!6974829 () Bool)

(declare-fun tp!1925309 () Bool)

(declare-fun tp!1925313 () Bool)

(assert (=> b!6974829 (= e!4192223 (and tp!1925309 tp!1925313))))

(declare-fun b!6974828 () Bool)

(declare-fun tp!1925311 () Bool)

(assert (=> b!6974828 (= e!4192223 tp!1925311)))

(assert (= (and b!6974407 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34783 r!13765)))) b!6974826))

(assert (= (and b!6974407 ((_ is Concat!25980) (regOne!34782 (regTwo!34783 r!13765)))) b!6974827))

(assert (= (and b!6974407 ((_ is Star!17135) (regOne!34782 (regTwo!34783 r!13765)))) b!6974828))

(assert (= (and b!6974407 ((_ is Union!17135) (regOne!34782 (regTwo!34783 r!13765)))) b!6974829))

(declare-fun e!4192224 () Bool)

(assert (=> b!6974407 (= tp!1925102 e!4192224)))

(declare-fun b!6974831 () Bool)

(declare-fun tp!1925317 () Bool)

(declare-fun tp!1925315 () Bool)

(assert (=> b!6974831 (= e!4192224 (and tp!1925317 tp!1925315))))

(declare-fun b!6974830 () Bool)

(assert (=> b!6974830 (= e!4192224 tp_is_empty!43495)))

(declare-fun b!6974833 () Bool)

(declare-fun tp!1925314 () Bool)

(declare-fun tp!1925318 () Bool)

(assert (=> b!6974833 (= e!4192224 (and tp!1925314 tp!1925318))))

(declare-fun b!6974832 () Bool)

(declare-fun tp!1925316 () Bool)

(assert (=> b!6974832 (= e!4192224 tp!1925316)))

(assert (= (and b!6974407 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34783 r!13765)))) b!6974830))

(assert (= (and b!6974407 ((_ is Concat!25980) (regTwo!34782 (regTwo!34783 r!13765)))) b!6974831))

(assert (= (and b!6974407 ((_ is Star!17135) (regTwo!34782 (regTwo!34783 r!13765)))) b!6974832))

(assert (= (and b!6974407 ((_ is Union!17135) (regTwo!34782 (regTwo!34783 r!13765)))) b!6974833))

(declare-fun e!4192225 () Bool)

(assert (=> b!6974392 (= tp!1925086 e!4192225)))

(declare-fun b!6974835 () Bool)

(declare-fun tp!1925322 () Bool)

(declare-fun tp!1925320 () Bool)

(assert (=> b!6974835 (= e!4192225 (and tp!1925322 tp!1925320))))

(declare-fun b!6974834 () Bool)

(assert (=> b!6974834 (= e!4192225 tp_is_empty!43495)))

(declare-fun b!6974837 () Bool)

(declare-fun tp!1925319 () Bool)

(declare-fun tp!1925323 () Bool)

(assert (=> b!6974837 (= e!4192225 (and tp!1925319 tp!1925323))))

(declare-fun b!6974836 () Bool)

(declare-fun tp!1925321 () Bool)

(assert (=> b!6974836 (= e!4192225 tp!1925321)))

(assert (= (and b!6974392 ((_ is ElementMatch!17135) (h!73276 (t!380695 l!9142)))) b!6974834))

(assert (= (and b!6974392 ((_ is Concat!25980) (h!73276 (t!380695 l!9142)))) b!6974835))

(assert (= (and b!6974392 ((_ is Star!17135) (h!73276 (t!380695 l!9142)))) b!6974836))

(assert (= (and b!6974392 ((_ is Union!17135) (h!73276 (t!380695 l!9142)))) b!6974837))

(declare-fun b!6974838 () Bool)

(declare-fun e!4192226 () Bool)

(declare-fun tp!1925324 () Bool)

(declare-fun tp!1925325 () Bool)

(assert (=> b!6974838 (= e!4192226 (and tp!1925324 tp!1925325))))

(assert (=> b!6974392 (= tp!1925087 e!4192226)))

(assert (= (and b!6974392 ((_ is Cons!66828) (t!380695 (t!380695 l!9142)))) b!6974838))

(declare-fun e!4192227 () Bool)

(assert (=> b!6974396 (= tp!1925088 e!4192227)))

(declare-fun b!6974840 () Bool)

(declare-fun tp!1925329 () Bool)

(declare-fun tp!1925327 () Bool)

(assert (=> b!6974840 (= e!4192227 (and tp!1925329 tp!1925327))))

(declare-fun b!6974839 () Bool)

(assert (=> b!6974839 (= e!4192227 tp_is_empty!43495)))

(declare-fun b!6974842 () Bool)

(declare-fun tp!1925326 () Bool)

(declare-fun tp!1925330 () Bool)

(assert (=> b!6974842 (= e!4192227 (and tp!1925326 tp!1925330))))

(declare-fun b!6974841 () Bool)

(declare-fun tp!1925328 () Bool)

(assert (=> b!6974841 (= e!4192227 tp!1925328)))

(assert (= (and b!6974396 ((_ is ElementMatch!17135) (regOne!34783 (reg!17464 r!13765)))) b!6974839))

(assert (= (and b!6974396 ((_ is Concat!25980) (regOne!34783 (reg!17464 r!13765)))) b!6974840))

(assert (= (and b!6974396 ((_ is Star!17135) (regOne!34783 (reg!17464 r!13765)))) b!6974841))

(assert (= (and b!6974396 ((_ is Union!17135) (regOne!34783 (reg!17464 r!13765)))) b!6974842))

(declare-fun e!4192228 () Bool)

(assert (=> b!6974396 (= tp!1925092 e!4192228)))

(declare-fun b!6974844 () Bool)

(declare-fun tp!1925334 () Bool)

(declare-fun tp!1925332 () Bool)

(assert (=> b!6974844 (= e!4192228 (and tp!1925334 tp!1925332))))

(declare-fun b!6974843 () Bool)

(assert (=> b!6974843 (= e!4192228 tp_is_empty!43495)))

(declare-fun b!6974846 () Bool)

(declare-fun tp!1925331 () Bool)

(declare-fun tp!1925335 () Bool)

(assert (=> b!6974846 (= e!4192228 (and tp!1925331 tp!1925335))))

(declare-fun b!6974845 () Bool)

(declare-fun tp!1925333 () Bool)

(assert (=> b!6974845 (= e!4192228 tp!1925333)))

(assert (= (and b!6974396 ((_ is ElementMatch!17135) (regTwo!34783 (reg!17464 r!13765)))) b!6974843))

(assert (= (and b!6974396 ((_ is Concat!25980) (regTwo!34783 (reg!17464 r!13765)))) b!6974844))

(assert (= (and b!6974396 ((_ is Star!17135) (regTwo!34783 (reg!17464 r!13765)))) b!6974845))

(assert (= (and b!6974396 ((_ is Union!17135) (regTwo!34783 (reg!17464 r!13765)))) b!6974846))

(declare-fun e!4192229 () Bool)

(assert (=> b!6974378 (= tp!1925069 e!4192229)))

(declare-fun b!6974848 () Bool)

(declare-fun tp!1925339 () Bool)

(declare-fun tp!1925337 () Bool)

(assert (=> b!6974848 (= e!4192229 (and tp!1925339 tp!1925337))))

(declare-fun b!6974847 () Bool)

(assert (=> b!6974847 (= e!4192229 tp_is_empty!43495)))

(declare-fun b!6974850 () Bool)

(declare-fun tp!1925336 () Bool)

(declare-fun tp!1925340 () Bool)

(assert (=> b!6974850 (= e!4192229 (and tp!1925336 tp!1925340))))

(declare-fun b!6974849 () Bool)

(declare-fun tp!1925338 () Bool)

(assert (=> b!6974849 (= e!4192229 tp!1925338)))

(assert (= (and b!6974378 ((_ is ElementMatch!17135) (reg!17464 (regOne!34782 r!13765)))) b!6974847))

(assert (= (and b!6974378 ((_ is Concat!25980) (reg!17464 (regOne!34782 r!13765)))) b!6974848))

(assert (= (and b!6974378 ((_ is Star!17135) (reg!17464 (regOne!34782 r!13765)))) b!6974849))

(assert (= (and b!6974378 ((_ is Union!17135) (reg!17464 (regOne!34782 r!13765)))) b!6974850))

(declare-fun b!6974851 () Bool)

(declare-fun e!4192230 () Bool)

(declare-fun tp!1925341 () Bool)

(assert (=> b!6974851 (= e!4192230 (and tp_is_empty!43495 tp!1925341))))

(assert (=> b!6974401 (= tp!1925095 e!4192230)))

(assert (= (and b!6974401 ((_ is Cons!66827) (t!380694 (t!380694 s!9351)))) b!6974851))

(declare-fun e!4192231 () Bool)

(assert (=> b!6974387 (= tp!1925077 e!4192231)))

(declare-fun b!6974853 () Bool)

(declare-fun tp!1925345 () Bool)

(declare-fun tp!1925343 () Bool)

(assert (=> b!6974853 (= e!4192231 (and tp!1925345 tp!1925343))))

(declare-fun b!6974852 () Bool)

(assert (=> b!6974852 (= e!4192231 tp_is_empty!43495)))

(declare-fun b!6974855 () Bool)

(declare-fun tp!1925342 () Bool)

(declare-fun tp!1925346 () Bool)

(assert (=> b!6974855 (= e!4192231 (and tp!1925342 tp!1925346))))

(declare-fun b!6974854 () Bool)

(declare-fun tp!1925344 () Bool)

(assert (=> b!6974854 (= e!4192231 tp!1925344)))

(assert (= (and b!6974387 ((_ is ElementMatch!17135) (regOne!34783 (h!73276 l!9142)))) b!6974852))

(assert (= (and b!6974387 ((_ is Concat!25980) (regOne!34783 (h!73276 l!9142)))) b!6974853))

(assert (= (and b!6974387 ((_ is Star!17135) (regOne!34783 (h!73276 l!9142)))) b!6974854))

(assert (= (and b!6974387 ((_ is Union!17135) (regOne!34783 (h!73276 l!9142)))) b!6974855))

(declare-fun e!4192232 () Bool)

(assert (=> b!6974387 (= tp!1925081 e!4192232)))

(declare-fun b!6974857 () Bool)

(declare-fun tp!1925350 () Bool)

(declare-fun tp!1925348 () Bool)

(assert (=> b!6974857 (= e!4192232 (and tp!1925350 tp!1925348))))

(declare-fun b!6974856 () Bool)

(assert (=> b!6974856 (= e!4192232 tp_is_empty!43495)))

(declare-fun b!6974859 () Bool)

(declare-fun tp!1925347 () Bool)

(declare-fun tp!1925351 () Bool)

(assert (=> b!6974859 (= e!4192232 (and tp!1925347 tp!1925351))))

(declare-fun b!6974858 () Bool)

(declare-fun tp!1925349 () Bool)

(assert (=> b!6974858 (= e!4192232 tp!1925349)))

(assert (= (and b!6974387 ((_ is ElementMatch!17135) (regTwo!34783 (h!73276 l!9142)))) b!6974856))

(assert (= (and b!6974387 ((_ is Concat!25980) (regTwo!34783 (h!73276 l!9142)))) b!6974857))

(assert (= (and b!6974387 ((_ is Star!17135) (regTwo!34783 (h!73276 l!9142)))) b!6974858))

(assert (= (and b!6974387 ((_ is Union!17135) (regTwo!34783 (h!73276 l!9142)))) b!6974859))

(declare-fun e!4192233 () Bool)

(assert (=> b!6974382 (= tp!1925074 e!4192233)))

(declare-fun b!6974861 () Bool)

(declare-fun tp!1925355 () Bool)

(declare-fun tp!1925353 () Bool)

(assert (=> b!6974861 (= e!4192233 (and tp!1925355 tp!1925353))))

(declare-fun b!6974860 () Bool)

(assert (=> b!6974860 (= e!4192233 tp_is_empty!43495)))

(declare-fun b!6974863 () Bool)

(declare-fun tp!1925352 () Bool)

(declare-fun tp!1925356 () Bool)

(assert (=> b!6974863 (= e!4192233 (and tp!1925352 tp!1925356))))

(declare-fun b!6974862 () Bool)

(declare-fun tp!1925354 () Bool)

(assert (=> b!6974862 (= e!4192233 tp!1925354)))

(assert (= (and b!6974382 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34782 r!13765)))) b!6974860))

(assert (= (and b!6974382 ((_ is Concat!25980) (reg!17464 (regTwo!34782 r!13765)))) b!6974861))

(assert (= (and b!6974382 ((_ is Star!17135) (reg!17464 (regTwo!34782 r!13765)))) b!6974862))

(assert (= (and b!6974382 ((_ is Union!17135) (reg!17464 (regTwo!34782 r!13765)))) b!6974863))

(declare-fun e!4192234 () Bool)

(assert (=> b!6974405 (= tp!1925096 e!4192234)))

(declare-fun b!6974865 () Bool)

(declare-fun tp!1925360 () Bool)

(declare-fun tp!1925358 () Bool)

(assert (=> b!6974865 (= e!4192234 (and tp!1925360 tp!1925358))))

(declare-fun b!6974864 () Bool)

(assert (=> b!6974864 (= e!4192234 tp_is_empty!43495)))

(declare-fun b!6974867 () Bool)

(declare-fun tp!1925357 () Bool)

(declare-fun tp!1925361 () Bool)

(assert (=> b!6974867 (= e!4192234 (and tp!1925357 tp!1925361))))

(declare-fun b!6974866 () Bool)

(declare-fun tp!1925359 () Bool)

(assert (=> b!6974866 (= e!4192234 tp!1925359)))

(assert (= (and b!6974405 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34783 r!13765)))) b!6974864))

(assert (= (and b!6974405 ((_ is Concat!25980) (regOne!34783 (regOne!34783 r!13765)))) b!6974865))

(assert (= (and b!6974405 ((_ is Star!17135) (regOne!34783 (regOne!34783 r!13765)))) b!6974866))

(assert (= (and b!6974405 ((_ is Union!17135) (regOne!34783 (regOne!34783 r!13765)))) b!6974867))

(declare-fun e!4192235 () Bool)

(assert (=> b!6974405 (= tp!1925100 e!4192235)))

(declare-fun b!6974869 () Bool)

(declare-fun tp!1925365 () Bool)

(declare-fun tp!1925363 () Bool)

(assert (=> b!6974869 (= e!4192235 (and tp!1925365 tp!1925363))))

(declare-fun b!6974868 () Bool)

(assert (=> b!6974868 (= e!4192235 tp_is_empty!43495)))

(declare-fun b!6974871 () Bool)

(declare-fun tp!1925362 () Bool)

(declare-fun tp!1925366 () Bool)

(assert (=> b!6974871 (= e!4192235 (and tp!1925362 tp!1925366))))

(declare-fun b!6974870 () Bool)

(declare-fun tp!1925364 () Bool)

(assert (=> b!6974870 (= e!4192235 tp!1925364)))

(assert (= (and b!6974405 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34783 r!13765)))) b!6974868))

(assert (= (and b!6974405 ((_ is Concat!25980) (regTwo!34783 (regOne!34783 r!13765)))) b!6974869))

(assert (= (and b!6974405 ((_ is Star!17135) (regTwo!34783 (regOne!34783 r!13765)))) b!6974870))

(assert (= (and b!6974405 ((_ is Union!17135) (regTwo!34783 (regOne!34783 r!13765)))) b!6974871))

(declare-fun e!4192236 () Bool)

(assert (=> b!6974377 (= tp!1925070 e!4192236)))

(declare-fun b!6974873 () Bool)

(declare-fun tp!1925370 () Bool)

(declare-fun tp!1925368 () Bool)

(assert (=> b!6974873 (= e!4192236 (and tp!1925370 tp!1925368))))

(declare-fun b!6974872 () Bool)

(assert (=> b!6974872 (= e!4192236 tp_is_empty!43495)))

(declare-fun b!6974875 () Bool)

(declare-fun tp!1925367 () Bool)

(declare-fun tp!1925371 () Bool)

(assert (=> b!6974875 (= e!4192236 (and tp!1925367 tp!1925371))))

(declare-fun b!6974874 () Bool)

(declare-fun tp!1925369 () Bool)

(assert (=> b!6974874 (= e!4192236 tp!1925369)))

(assert (= (and b!6974377 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34782 r!13765)))) b!6974872))

(assert (= (and b!6974377 ((_ is Concat!25980) (regOne!34782 (regOne!34782 r!13765)))) b!6974873))

(assert (= (and b!6974377 ((_ is Star!17135) (regOne!34782 (regOne!34782 r!13765)))) b!6974874))

(assert (= (and b!6974377 ((_ is Union!17135) (regOne!34782 (regOne!34782 r!13765)))) b!6974875))

(declare-fun e!4192237 () Bool)

(assert (=> b!6974377 (= tp!1925068 e!4192237)))

(declare-fun b!6974877 () Bool)

(declare-fun tp!1925375 () Bool)

(declare-fun tp!1925373 () Bool)

(assert (=> b!6974877 (= e!4192237 (and tp!1925375 tp!1925373))))

(declare-fun b!6974876 () Bool)

(assert (=> b!6974876 (= e!4192237 tp_is_empty!43495)))

(declare-fun b!6974879 () Bool)

(declare-fun tp!1925372 () Bool)

(declare-fun tp!1925376 () Bool)

(assert (=> b!6974879 (= e!4192237 (and tp!1925372 tp!1925376))))

(declare-fun b!6974878 () Bool)

(declare-fun tp!1925374 () Bool)

(assert (=> b!6974878 (= e!4192237 tp!1925374)))

(assert (= (and b!6974377 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34782 r!13765)))) b!6974876))

(assert (= (and b!6974377 ((_ is Concat!25980) (regTwo!34782 (regOne!34782 r!13765)))) b!6974877))

(assert (= (and b!6974377 ((_ is Star!17135) (regTwo!34782 (regOne!34782 r!13765)))) b!6974878))

(assert (= (and b!6974377 ((_ is Union!17135) (regTwo!34782 (regOne!34782 r!13765)))) b!6974879))

(declare-fun e!4192238 () Bool)

(assert (=> b!6974386 (= tp!1925079 e!4192238)))

(declare-fun b!6974881 () Bool)

(declare-fun tp!1925380 () Bool)

(declare-fun tp!1925378 () Bool)

(assert (=> b!6974881 (= e!4192238 (and tp!1925380 tp!1925378))))

(declare-fun b!6974880 () Bool)

(assert (=> b!6974880 (= e!4192238 tp_is_empty!43495)))

(declare-fun b!6974883 () Bool)

(declare-fun tp!1925377 () Bool)

(declare-fun tp!1925381 () Bool)

(assert (=> b!6974883 (= e!4192238 (and tp!1925377 tp!1925381))))

(declare-fun b!6974882 () Bool)

(declare-fun tp!1925379 () Bool)

(assert (=> b!6974882 (= e!4192238 tp!1925379)))

(assert (= (and b!6974386 ((_ is ElementMatch!17135) (reg!17464 (h!73276 l!9142)))) b!6974880))

(assert (= (and b!6974386 ((_ is Concat!25980) (reg!17464 (h!73276 l!9142)))) b!6974881))

(assert (= (and b!6974386 ((_ is Star!17135) (reg!17464 (h!73276 l!9142)))) b!6974882))

(assert (= (and b!6974386 ((_ is Union!17135) (reg!17464 (h!73276 l!9142)))) b!6974883))

(declare-fun e!4192239 () Bool)

(assert (=> b!6974409 (= tp!1925101 e!4192239)))

(declare-fun b!6974885 () Bool)

(declare-fun tp!1925385 () Bool)

(declare-fun tp!1925383 () Bool)

(assert (=> b!6974885 (= e!4192239 (and tp!1925385 tp!1925383))))

(declare-fun b!6974884 () Bool)

(assert (=> b!6974884 (= e!4192239 tp_is_empty!43495)))

(declare-fun b!6974887 () Bool)

(declare-fun tp!1925382 () Bool)

(declare-fun tp!1925386 () Bool)

(assert (=> b!6974887 (= e!4192239 (and tp!1925382 tp!1925386))))

(declare-fun b!6974886 () Bool)

(declare-fun tp!1925384 () Bool)

(assert (=> b!6974886 (= e!4192239 tp!1925384)))

(assert (= (and b!6974409 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34783 r!13765)))) b!6974884))

(assert (= (and b!6974409 ((_ is Concat!25980) (regOne!34783 (regTwo!34783 r!13765)))) b!6974885))

(assert (= (and b!6974409 ((_ is Star!17135) (regOne!34783 (regTwo!34783 r!13765)))) b!6974886))

(assert (= (and b!6974409 ((_ is Union!17135) (regOne!34783 (regTwo!34783 r!13765)))) b!6974887))

(declare-fun e!4192240 () Bool)

(assert (=> b!6974409 (= tp!1925105 e!4192240)))

(declare-fun b!6974889 () Bool)

(declare-fun tp!1925390 () Bool)

(declare-fun tp!1925388 () Bool)

(assert (=> b!6974889 (= e!4192240 (and tp!1925390 tp!1925388))))

(declare-fun b!6974888 () Bool)

(assert (=> b!6974888 (= e!4192240 tp_is_empty!43495)))

(declare-fun b!6974891 () Bool)

(declare-fun tp!1925387 () Bool)

(declare-fun tp!1925391 () Bool)

(assert (=> b!6974891 (= e!4192240 (and tp!1925387 tp!1925391))))

(declare-fun b!6974890 () Bool)

(declare-fun tp!1925389 () Bool)

(assert (=> b!6974890 (= e!4192240 tp!1925389)))

(assert (= (and b!6974409 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34783 r!13765)))) b!6974888))

(assert (= (and b!6974409 ((_ is Concat!25980) (regTwo!34783 (regTwo!34783 r!13765)))) b!6974889))

(assert (= (and b!6974409 ((_ is Star!17135) (regTwo!34783 (regTwo!34783 r!13765)))) b!6974890))

(assert (= (and b!6974409 ((_ is Union!17135) (regTwo!34783 (regTwo!34783 r!13765)))) b!6974891))

(declare-fun e!4192241 () Bool)

(assert (=> b!6974381 (= tp!1925075 e!4192241)))

(declare-fun b!6974893 () Bool)

(declare-fun tp!1925395 () Bool)

(declare-fun tp!1925393 () Bool)

(assert (=> b!6974893 (= e!4192241 (and tp!1925395 tp!1925393))))

(declare-fun b!6974892 () Bool)

(assert (=> b!6974892 (= e!4192241 tp_is_empty!43495)))

(declare-fun b!6974895 () Bool)

(declare-fun tp!1925392 () Bool)

(declare-fun tp!1925396 () Bool)

(assert (=> b!6974895 (= e!4192241 (and tp!1925392 tp!1925396))))

(declare-fun b!6974894 () Bool)

(declare-fun tp!1925394 () Bool)

(assert (=> b!6974894 (= e!4192241 tp!1925394)))

(assert (= (and b!6974381 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34782 r!13765)))) b!6974892))

(assert (= (and b!6974381 ((_ is Concat!25980) (regOne!34782 (regTwo!34782 r!13765)))) b!6974893))

(assert (= (and b!6974381 ((_ is Star!17135) (regOne!34782 (regTwo!34782 r!13765)))) b!6974894))

(assert (= (and b!6974381 ((_ is Union!17135) (regOne!34782 (regTwo!34782 r!13765)))) b!6974895))

(declare-fun e!4192242 () Bool)

(assert (=> b!6974381 (= tp!1925073 e!4192242)))

(declare-fun b!6974897 () Bool)

(declare-fun tp!1925400 () Bool)

(declare-fun tp!1925398 () Bool)

(assert (=> b!6974897 (= e!4192242 (and tp!1925400 tp!1925398))))

(declare-fun b!6974896 () Bool)

(assert (=> b!6974896 (= e!4192242 tp_is_empty!43495)))

(declare-fun b!6974899 () Bool)

(declare-fun tp!1925397 () Bool)

(declare-fun tp!1925401 () Bool)

(assert (=> b!6974899 (= e!4192242 (and tp!1925397 tp!1925401))))

(declare-fun b!6974898 () Bool)

(declare-fun tp!1925399 () Bool)

(assert (=> b!6974898 (= e!4192242 tp!1925399)))

(assert (= (and b!6974381 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34782 r!13765)))) b!6974896))

(assert (= (and b!6974381 ((_ is Concat!25980) (regTwo!34782 (regTwo!34782 r!13765)))) b!6974897))

(assert (= (and b!6974381 ((_ is Star!17135) (regTwo!34782 (regTwo!34782 r!13765)))) b!6974898))

(assert (= (and b!6974381 ((_ is Union!17135) (regTwo!34782 (regTwo!34782 r!13765)))) b!6974899))

(declare-fun e!4192243 () Bool)

(assert (=> b!6974404 (= tp!1925098 e!4192243)))

(declare-fun b!6974901 () Bool)

(declare-fun tp!1925405 () Bool)

(declare-fun tp!1925403 () Bool)

(assert (=> b!6974901 (= e!4192243 (and tp!1925405 tp!1925403))))

(declare-fun b!6974900 () Bool)

(assert (=> b!6974900 (= e!4192243 tp_is_empty!43495)))

(declare-fun b!6974903 () Bool)

(declare-fun tp!1925402 () Bool)

(declare-fun tp!1925406 () Bool)

(assert (=> b!6974903 (= e!4192243 (and tp!1925402 tp!1925406))))

(declare-fun b!6974902 () Bool)

(declare-fun tp!1925404 () Bool)

(assert (=> b!6974902 (= e!4192243 tp!1925404)))

(assert (= (and b!6974404 ((_ is ElementMatch!17135) (reg!17464 (regOne!34783 r!13765)))) b!6974900))

(assert (= (and b!6974404 ((_ is Concat!25980) (reg!17464 (regOne!34783 r!13765)))) b!6974901))

(assert (= (and b!6974404 ((_ is Star!17135) (reg!17464 (regOne!34783 r!13765)))) b!6974902))

(assert (= (and b!6974404 ((_ is Union!17135) (reg!17464 (regOne!34783 r!13765)))) b!6974903))

(declare-fun e!4192244 () Bool)

(assert (=> b!6974385 (= tp!1925080 e!4192244)))

(declare-fun b!6974905 () Bool)

(declare-fun tp!1925410 () Bool)

(declare-fun tp!1925408 () Bool)

(assert (=> b!6974905 (= e!4192244 (and tp!1925410 tp!1925408))))

(declare-fun b!6974904 () Bool)

(assert (=> b!6974904 (= e!4192244 tp_is_empty!43495)))

(declare-fun b!6974907 () Bool)

(declare-fun tp!1925407 () Bool)

(declare-fun tp!1925411 () Bool)

(assert (=> b!6974907 (= e!4192244 (and tp!1925407 tp!1925411))))

(declare-fun b!6974906 () Bool)

(declare-fun tp!1925409 () Bool)

(assert (=> b!6974906 (= e!4192244 tp!1925409)))

(assert (= (and b!6974385 ((_ is ElementMatch!17135) (regOne!34782 (h!73276 l!9142)))) b!6974904))

(assert (= (and b!6974385 ((_ is Concat!25980) (regOne!34782 (h!73276 l!9142)))) b!6974905))

(assert (= (and b!6974385 ((_ is Star!17135) (regOne!34782 (h!73276 l!9142)))) b!6974906))

(assert (= (and b!6974385 ((_ is Union!17135) (regOne!34782 (h!73276 l!9142)))) b!6974907))

(declare-fun e!4192245 () Bool)

(assert (=> b!6974385 (= tp!1925078 e!4192245)))

(declare-fun b!6974909 () Bool)

(declare-fun tp!1925415 () Bool)

(declare-fun tp!1925413 () Bool)

(assert (=> b!6974909 (= e!4192245 (and tp!1925415 tp!1925413))))

(declare-fun b!6974908 () Bool)

(assert (=> b!6974908 (= e!4192245 tp_is_empty!43495)))

(declare-fun b!6974911 () Bool)

(declare-fun tp!1925412 () Bool)

(declare-fun tp!1925416 () Bool)

(assert (=> b!6974911 (= e!4192245 (and tp!1925412 tp!1925416))))

(declare-fun b!6974910 () Bool)

(declare-fun tp!1925414 () Bool)

(assert (=> b!6974910 (= e!4192245 tp!1925414)))

(assert (= (and b!6974385 ((_ is ElementMatch!17135) (regTwo!34782 (h!73276 l!9142)))) b!6974908))

(assert (= (and b!6974385 ((_ is Concat!25980) (regTwo!34782 (h!73276 l!9142)))) b!6974909))

(assert (= (and b!6974385 ((_ is Star!17135) (regTwo!34782 (h!73276 l!9142)))) b!6974910))

(assert (= (and b!6974385 ((_ is Union!17135) (regTwo!34782 (h!73276 l!9142)))) b!6974911))

(declare-fun e!4192246 () Bool)

(assert (=> b!6974408 (= tp!1925103 e!4192246)))

(declare-fun b!6974913 () Bool)

(declare-fun tp!1925420 () Bool)

(declare-fun tp!1925418 () Bool)

(assert (=> b!6974913 (= e!4192246 (and tp!1925420 tp!1925418))))

(declare-fun b!6974912 () Bool)

(assert (=> b!6974912 (= e!4192246 tp_is_empty!43495)))

(declare-fun b!6974915 () Bool)

(declare-fun tp!1925417 () Bool)

(declare-fun tp!1925421 () Bool)

(assert (=> b!6974915 (= e!4192246 (and tp!1925417 tp!1925421))))

(declare-fun b!6974914 () Bool)

(declare-fun tp!1925419 () Bool)

(assert (=> b!6974914 (= e!4192246 tp!1925419)))

(assert (= (and b!6974408 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34783 r!13765)))) b!6974912))

(assert (= (and b!6974408 ((_ is Concat!25980) (reg!17464 (regTwo!34783 r!13765)))) b!6974913))

(assert (= (and b!6974408 ((_ is Star!17135) (reg!17464 (regTwo!34783 r!13765)))) b!6974914))

(assert (= (and b!6974408 ((_ is Union!17135) (reg!17464 (regTwo!34783 r!13765)))) b!6974915))

(declare-fun b_lambda!260957 () Bool)

(assert (= b_lambda!260951 (or start!668666 b_lambda!260957)))

(declare-fun bs!1859789 () Bool)

(declare-fun d!2171939 () Bool)

(assert (= bs!1859789 (and d!2171939 start!668666)))

(assert (=> bs!1859789 (= (dynLambda!26652 lambda!397905 (h!73276 (t!380695 l!9142))) (validRegex!8817 (h!73276 (t!380695 l!9142))))))

(declare-fun m!7661504 () Bool)

(assert (=> bs!1859789 m!7661504))

(assert (=> b!6974673 d!2171939))

(declare-fun b_lambda!260959 () Bool)

(assert (= b_lambda!260955 (or d!2171829 b_lambda!260959)))

(declare-fun bs!1859790 () Bool)

(declare-fun d!2171941 () Bool)

(assert (= bs!1859790 (and d!2171941 d!2171829)))

(assert (=> bs!1859790 (= (dynLambda!26652 lambda!397930 (h!73276 l!9142)) (validRegex!8817 (h!73276 l!9142)))))

(assert (=> bs!1859790 m!7661326))

(assert (=> b!6974788 d!2171941))

(declare-fun b_lambda!260961 () Bool)

(assert (= b_lambda!260953 (or d!2171827 b_lambda!260961)))

(declare-fun bs!1859791 () Bool)

(declare-fun d!2171943 () Bool)

(assert (= bs!1859791 (and d!2171943 d!2171827)))

(assert (=> bs!1859791 (= (dynLambda!26652 lambda!397927 (h!73276 l!9142)) (not (dynLambda!26652 lambda!397906 (h!73276 l!9142))))))

(declare-fun b_lambda!260963 () Bool)

(assert (=> (not b_lambda!260963) (not bs!1859791)))

(declare-fun m!7661506 () Bool)

(assert (=> bs!1859791 m!7661506))

(assert (=> b!6974766 d!2171943))

(check-sat (not b!6974684) (not bm!633091) (not b!6974804) (not b!6974821) (not b!6974885) (not b!6974898) (not bm!633102) (not b!6974836) (not b!6974907) (not b!6974846) (not b!6974875) (not bs!1859789) (not bm!633109) (not b!6974712) (not b!6974832) (not b!6974682) (not b!6974799) (not b!6974902) (not b!6974867) (not b!6974776) (not b!6974789) (not b!6974815) (not bm!633104) (not b!6974833) (not b!6974666) (not b!6974910) (not b!6974809) (not b!6974813) (not b!6974817) (not b_lambda!260963) (not bm!633099) (not b_lambda!260957) (not b!6974667) (not b!6974828) (not b!6974840) (not b!6974887) (not b!6974824) (not b!6974861) (not b!6974816) (not b!6974670) (not b!6974674) (not b!6974792) (not b!6974825) (not b!6974820) (not b!6974899) (not b!6974859) (not d!2171899) (not bm!633107) (not b!6974831) (not b!6974857) (not d!2171923) (not b!6974845) (not b!6974808) (not b!6974838) (not b!6974894) (not b!6974760) (not b!6974877) (not b!6974915) (not b!6974827) tp_is_empty!43495 (not b!6974873) (not b!6974835) (not b!6974895) (not b!6974851) (not b!6974796) (not b!6974837) (not b!6974672) (not bm!633105) (not bm!633103) (not b!6974889) (not b!6974812) (not b!6974688) (not b!6974886) (not d!2171889) (not d!2171909) (not b!6974913) (not b!6974823) (not b!6974687) (not b_lambda!260961) (not b!6974681) (not bm!633106) (not bm!633090) (not b!6974914) (not b!6974793) (not b!6974829) (not b!6974663) (not b!6974811) (not b!6974773) (not b!6974897) (not b!6974911) (not b!6974763) (not b!6974862) (not b!6974901) (not b!6974883) (not b!6974854) (not b!6974853) (not b!6974878) (not b!6974906) (not b!6974909) (not b!6974669) (not b!6974881) (not b!6974795) (not b!6974882) (not b!6974858) (not d!2171913) (not b!6974754) (not b!6974871) (not b!6974869) (not b_lambda!260959) (not b!6974874) (not d!2171897) (not b!6974903) (not b!6974801) (not b!6974879) (not bm!633100) (not b!6974844) (not b!6974893) (not b!6974791) (not b!6974905) (not b!6974866) (not bs!1859790) (not b!6974679) (not b!6974797) (not bm!633110) (not b!6974819) (not b!6974805) (not b!6974849) (not b!6974855) (not b!6974865) (not b!6974803) (not b!6974841) (not b!6974848) (not bm!633079) (not b!6974850) (not b!6974787) (not b!6974800) (not b!6974870) (not b!6974767) (not b!6974664) (not b!6974745) (not b!6974891) (not b!6974842) (not b!6974890) (not b_lambda!260935) (not b!6974863) (not b!6974807))
(check-sat)
(get-model)

(declare-fun b_lambda!260985 () Bool)

(assert (= b_lambda!260963 (or b!6974065 b_lambda!260985)))

(declare-fun bs!1859885 () Bool)

(declare-fun d!2172039 () Bool)

(assert (= bs!1859885 (and d!2172039 b!6974065)))

(declare-fun res!2844718 () Bool)

(declare-fun e!4192565 () Bool)

(assert (=> bs!1859885 (=> (not res!2844718) (not e!4192565))))

(assert (=> bs!1859885 (= res!2844718 (validRegex!8817 (h!73276 l!9142)))))

(assert (=> bs!1859885 (= (dynLambda!26652 lambda!397906 (h!73276 l!9142)) e!4192565)))

(declare-fun b!6975774 () Bool)

(assert (=> b!6975774 (= e!4192565 (matchR!9237 (h!73276 l!9142) s!9351))))

(assert (= (and bs!1859885 res!2844718) b!6975774))

(assert (=> bs!1859885 m!7661326))

(declare-fun m!7661698 () Bool)

(assert (=> b!6975774 m!7661698))

(assert (=> bs!1859791 d!2172039))

(check-sat (not b!6974684) (not bm!633091) (not bs!1859885) (not b!6974804) (not b!6974821) (not b!6974885) (not b_lambda!260985) (not b!6974898) (not bm!633102) (not b!6974836) (not b!6974907) (not b!6974846) (not b!6974875) (not bs!1859789) (not bm!633109) (not b!6974712) (not b!6974832) (not b!6974682) (not b!6974799) (not b!6974902) (not b!6974867) (not b!6974776) (not b!6974789) (not b!6974815) (not bm!633104) (not b!6974833) (not b!6974666) (not b!6974910) (not b!6974809) (not b!6974813) (not b!6974817) (not bm!633099) (not b_lambda!260957) (not b!6974667) (not b!6974828) (not b!6974840) (not b!6974887) (not b!6974824) (not b!6974861) (not b!6974816) (not b!6974670) (not b!6974674) (not b!6974792) (not b!6974825) (not b!6974820) (not b!6974899) (not b!6974859) (not d!2171899) (not bm!633107) (not b!6974831) (not b!6974857) (not d!2171923) (not b!6974845) (not b!6974808) (not b!6974838) (not b!6974894) (not b!6974760) (not b!6974877) (not b!6974915) (not b!6974827) tp_is_empty!43495 (not b!6974873) (not b!6974835) (not b!6974895) (not b!6974851) (not b!6974796) (not b!6974837) (not b!6974672) (not bm!633105) (not bm!633103) (not b!6974889) (not b!6974812) (not b!6974688) (not b!6974886) (not d!2171889) (not d!2171909) (not b!6974913) (not b!6975774) (not b!6974823) (not b!6974687) (not b_lambda!260961) (not b!6974681) (not bm!633106) (not bm!633090) (not b!6974914) (not b!6974793) (not b!6974829) (not b!6974663) (not b!6974811) (not b!6974773) (not b!6974897) (not b!6974911) (not b!6974763) (not b!6974862) (not b!6974901) (not b!6974883) (not b!6974854) (not b!6974853) (not b!6974878) (not b!6974906) (not b!6974909) (not b!6974669) (not b!6974881) (not b!6974795) (not b!6974882) (not b!6974858) (not d!2171913) (not b!6974754) (not b!6974871) (not b!6974869) (not b_lambda!260959) (not b!6974874) (not d!2171897) (not b!6974903) (not b!6974801) (not b!6974879) (not bm!633100) (not b!6974844) (not b!6974893) (not b!6974791) (not b!6974905) (not b!6974866) (not bs!1859790) (not b!6974679) (not b!6974797) (not bm!633110) (not b!6974819) (not b!6974805) (not b!6974849) (not b!6974855) (not b!6974865) (not b!6974803) (not b!6974841) (not b!6974848) (not bm!633079) (not b!6974850) (not b!6974787) (not b!6974800) (not b!6974870) (not b!6974767) (not b!6974664) (not b!6974745) (not b!6974891) (not b!6974842) (not b!6974890) (not b_lambda!260935) (not b!6974863) (not b!6974807))
(check-sat)
(get-model)

(declare-fun d!2172041 () Bool)

(assert (=> d!2172041 (= (isEmptyLang!2073 lt!2479913) ((_ is EmptyLang!17135) lt!2479913))))

(assert (=> b!6974670 d!2172041))

(declare-fun b!6975775 () Bool)

(declare-fun e!4192568 () Regex!17135)

(declare-fun e!4192570 () Regex!17135)

(assert (=> b!6975775 (= e!4192568 e!4192570)))

(declare-fun c!1293040 () Bool)

(assert (=> b!6975775 (= c!1293040 ((_ is Star!17135) (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))))))

(declare-fun b!6975776 () Bool)

(declare-fun call!633177 () Regex!17135)

(declare-fun call!633176 () Regex!17135)

(assert (=> b!6975776 (= e!4192568 (Union!17135 call!633177 call!633176))))

(declare-fun b!6975777 () Bool)

(declare-fun e!4192569 () Regex!17135)

(assert (=> b!6975777 (= e!4192569 EmptyLang!17135)))

(declare-fun bm!633169 () Bool)

(declare-fun call!633174 () Regex!17135)

(assert (=> bm!633169 (= call!633174 call!633176)))

(declare-fun b!6975778 () Bool)

(declare-fun c!1293043 () Bool)

(assert (=> b!6975778 (= c!1293043 (nullable!6920 (regOne!34782 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765))))))))

(declare-fun e!4192566 () Regex!17135)

(assert (=> b!6975778 (= e!4192570 e!4192566)))

(declare-fun c!1293041 () Bool)

(declare-fun b!6975779 () Bool)

(assert (=> b!6975779 (= c!1293041 ((_ is Union!17135) (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))))))

(declare-fun e!4192567 () Regex!17135)

(assert (=> b!6975779 (= e!4192567 e!4192568)))

(declare-fun b!6975780 () Bool)

(declare-fun call!633175 () Regex!17135)

(assert (=> b!6975780 (= e!4192566 (Union!17135 (Concat!25980 call!633175 (regTwo!34782 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765))))) call!633174))))

(declare-fun bm!633170 () Bool)

(assert (=> bm!633170 (= call!633175 call!633177)))

(declare-fun bm!633171 () Bool)

(assert (=> bm!633171 (= call!633176 (derivativeStep!5545 (ite c!1293041 (regTwo!34783 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))) (ite c!1293043 (regTwo!34782 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))) (regOne!34782 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))))) (head!14042 s!9351)))))

(declare-fun b!6975782 () Bool)

(assert (=> b!6975782 (= e!4192567 (ite (= (head!14042 s!9351) (c!1292829 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765))))) EmptyExpr!17135 EmptyLang!17135))))

(declare-fun b!6975783 () Bool)

(assert (=> b!6975783 (= e!4192569 e!4192567)))

(declare-fun c!1293042 () Bool)

(assert (=> b!6975783 (= c!1293042 ((_ is ElementMatch!17135) (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))))))

(declare-fun bm!633172 () Bool)

(assert (=> bm!633172 (= call!633177 (derivativeStep!5545 (ite c!1293041 (regOne!34783 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))) (ite c!1293040 (reg!17464 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))) (regOne!34782 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))))) (head!14042 s!9351)))))

(declare-fun b!6975784 () Bool)

(assert (=> b!6975784 (= e!4192566 (Union!17135 (Concat!25980 call!633174 (regTwo!34782 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765))))) EmptyLang!17135))))

(declare-fun d!2172043 () Bool)

(declare-fun lt!2479924 () Regex!17135)

(assert (=> d!2172043 (validRegex!8817 lt!2479924)))

(assert (=> d!2172043 (= lt!2479924 e!4192569)))

(declare-fun c!1293044 () Bool)

(assert (=> d!2172043 (= c!1293044 (or ((_ is EmptyExpr!17135) (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))) ((_ is EmptyLang!17135) (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765))))))))

(assert (=> d!2172043 (validRegex!8817 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765))))))

(assert (=> d!2172043 (= (derivativeStep!5545 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765))) (head!14042 s!9351)) lt!2479924)))

(declare-fun b!6975781 () Bool)

(assert (=> b!6975781 (= e!4192570 (Concat!25980 call!633175 (ite c!1292954 (regOne!34783 r!13765) (ite c!1292953 (reg!17464 r!13765) (regOne!34782 r!13765)))))))

(assert (= (and d!2172043 c!1293044) b!6975777))

(assert (= (and d!2172043 (not c!1293044)) b!6975783))

(assert (= (and b!6975783 c!1293042) b!6975782))

(assert (= (and b!6975783 (not c!1293042)) b!6975779))

(assert (= (and b!6975779 c!1293041) b!6975776))

(assert (= (and b!6975779 (not c!1293041)) b!6975775))

(assert (= (and b!6975775 c!1293040) b!6975781))

(assert (= (and b!6975775 (not c!1293040)) b!6975778))

(assert (= (and b!6975778 c!1293043) b!6975780))

(assert (= (and b!6975778 (not c!1293043)) b!6975784))

(assert (= (or b!6975780 b!6975784) bm!633169))

(assert (= (or b!6975781 b!6975780) bm!633170))

(assert (= (or b!6975776 bm!633170) bm!633172))

(assert (= (or b!6975776 bm!633169) bm!633171))

(declare-fun m!7661700 () Bool)

(assert (=> b!6975778 m!7661700))

(assert (=> bm!633171 m!7661284))

(declare-fun m!7661702 () Bool)

(assert (=> bm!633171 m!7661702))

(assert (=> bm!633172 m!7661284))

(declare-fun m!7661704 () Bool)

(assert (=> bm!633172 m!7661704))

(declare-fun m!7661706 () Bool)

(assert (=> d!2172043 m!7661706))

(declare-fun m!7661708 () Bool)

(assert (=> d!2172043 m!7661708))

(assert (=> bm!633091 d!2172043))

(declare-fun d!2172045 () Bool)

(declare-fun res!2844721 () Bool)

(declare-fun e!4192577 () Bool)

(assert (=> d!2172045 (=> res!2844721 e!4192577)))

(assert (=> d!2172045 (= res!2844721 ((_ is ElementMatch!17135) lt!2479913))))

(assert (=> d!2172045 (= (validRegex!8817 lt!2479913) e!4192577)))

(declare-fun b!6975785 () Bool)

(declare-fun e!4192572 () Bool)

(declare-fun e!4192571 () Bool)

(assert (=> b!6975785 (= e!4192572 e!4192571)))

(declare-fun c!1293046 () Bool)

(assert (=> b!6975785 (= c!1293046 ((_ is Union!17135) lt!2479913))))

(declare-fun bm!633173 () Bool)

(declare-fun call!633178 () Bool)

(declare-fun call!633180 () Bool)

(assert (=> bm!633173 (= call!633178 call!633180)))

(declare-fun b!6975786 () Bool)

(assert (=> b!6975786 (= e!4192577 e!4192572)))

(declare-fun c!1293045 () Bool)

(assert (=> b!6975786 (= c!1293045 ((_ is Star!17135) lt!2479913))))

(declare-fun b!6975787 () Bool)

(declare-fun res!2844720 () Bool)

(declare-fun e!4192576 () Bool)

(assert (=> b!6975787 (=> res!2844720 e!4192576)))

(assert (=> b!6975787 (= res!2844720 (not ((_ is Concat!25980) lt!2479913)))))

(assert (=> b!6975787 (= e!4192571 e!4192576)))

(declare-fun b!6975788 () Bool)

(declare-fun e!4192574 () Bool)

(assert (=> b!6975788 (= e!4192574 call!633180)))

(declare-fun b!6975789 () Bool)

(declare-fun e!4192575 () Bool)

(assert (=> b!6975789 (= e!4192576 e!4192575)))

(declare-fun res!2844719 () Bool)

(assert (=> b!6975789 (=> (not res!2844719) (not e!4192575))))

(assert (=> b!6975789 (= res!2844719 call!633178)))

(declare-fun b!6975790 () Bool)

(declare-fun call!633179 () Bool)

(assert (=> b!6975790 (= e!4192575 call!633179)))

(declare-fun b!6975791 () Bool)

(declare-fun e!4192573 () Bool)

(assert (=> b!6975791 (= e!4192573 call!633179)))

(declare-fun bm!633174 () Bool)

(assert (=> bm!633174 (= call!633180 (validRegex!8817 (ite c!1293045 (reg!17464 lt!2479913) (ite c!1293046 (regOne!34783 lt!2479913) (regOne!34782 lt!2479913)))))))

(declare-fun b!6975792 () Bool)

(declare-fun res!2844723 () Bool)

(assert (=> b!6975792 (=> (not res!2844723) (not e!4192573))))

(assert (=> b!6975792 (= res!2844723 call!633178)))

(assert (=> b!6975792 (= e!4192571 e!4192573)))

(declare-fun b!6975793 () Bool)

(assert (=> b!6975793 (= e!4192572 e!4192574)))

(declare-fun res!2844722 () Bool)

(assert (=> b!6975793 (= res!2844722 (not (nullable!6920 (reg!17464 lt!2479913))))))

(assert (=> b!6975793 (=> (not res!2844722) (not e!4192574))))

(declare-fun bm!633175 () Bool)

(assert (=> bm!633175 (= call!633179 (validRegex!8817 (ite c!1293046 (regTwo!34783 lt!2479913) (regTwo!34782 lt!2479913))))))

(assert (= (and d!2172045 (not res!2844721)) b!6975786))

(assert (= (and b!6975786 c!1293045) b!6975793))

(assert (= (and b!6975786 (not c!1293045)) b!6975785))

(assert (= (and b!6975793 res!2844722) b!6975788))

(assert (= (and b!6975785 c!1293046) b!6975792))

(assert (= (and b!6975785 (not c!1293046)) b!6975787))

(assert (= (and b!6975792 res!2844723) b!6975791))

(assert (= (and b!6975787 (not res!2844720)) b!6975789))

(assert (= (and b!6975789 res!2844719) b!6975790))

(assert (= (or b!6975792 b!6975789) bm!633173))

(assert (= (or b!6975791 b!6975790) bm!633175))

(assert (= (or b!6975788 bm!633173) bm!633174))

(declare-fun m!7661710 () Bool)

(assert (=> bm!633174 m!7661710))

(declare-fun m!7661712 () Bool)

(assert (=> b!6975793 m!7661712))

(declare-fun m!7661714 () Bool)

(assert (=> bm!633175 m!7661714))

(assert (=> d!2171889 d!2172045))

(declare-fun d!2172047 () Bool)

(declare-fun res!2844724 () Bool)

(declare-fun e!4192578 () Bool)

(assert (=> d!2172047 (=> res!2844724 e!4192578)))

(assert (=> d!2172047 (= res!2844724 ((_ is Nil!66828) (t!380695 l!9142)))))

(assert (=> d!2172047 (= (forall!16006 (t!380695 l!9142) lambda!397936) e!4192578)))

(declare-fun b!6975794 () Bool)

(declare-fun e!4192579 () Bool)

(assert (=> b!6975794 (= e!4192578 e!4192579)))

(declare-fun res!2844725 () Bool)

(assert (=> b!6975794 (=> (not res!2844725) (not e!4192579))))

(assert (=> b!6975794 (= res!2844725 (dynLambda!26652 lambda!397936 (h!73276 (t!380695 l!9142))))))

(declare-fun b!6975795 () Bool)

(assert (=> b!6975795 (= e!4192579 (forall!16006 (t!380695 (t!380695 l!9142)) lambda!397936))))

(assert (= (and d!2172047 (not res!2844724)) b!6975794))

(assert (= (and b!6975794 res!2844725) b!6975795))

(declare-fun b_lambda!260987 () Bool)

(assert (=> (not b_lambda!260987) (not b!6975794)))

(declare-fun m!7661716 () Bool)

(assert (=> b!6975794 m!7661716))

(declare-fun m!7661718 () Bool)

(assert (=> b!6975795 m!7661718))

(assert (=> d!2171889 d!2172047))

(declare-fun b!6975810 () Bool)

(declare-fun e!4192592 () Bool)

(declare-fun e!4192595 () Bool)

(assert (=> b!6975810 (= e!4192592 e!4192595)))

(declare-fun res!2844737 () Bool)

(declare-fun call!633185 () Bool)

(assert (=> b!6975810 (= res!2844737 call!633185)))

(assert (=> b!6975810 (=> (not res!2844737) (not e!4192595))))

(declare-fun b!6975811 () Bool)

(declare-fun e!4192597 () Bool)

(declare-fun e!4192594 () Bool)

(assert (=> b!6975811 (= e!4192597 e!4192594)))

(declare-fun res!2844738 () Bool)

(assert (=> b!6975811 (=> (not res!2844738) (not e!4192594))))

(assert (=> b!6975811 (= res!2844738 (and (not ((_ is EmptyLang!17135) r!13765)) (not ((_ is ElementMatch!17135) r!13765))))))

(declare-fun b!6975812 () Bool)

(declare-fun e!4192593 () Bool)

(assert (=> b!6975812 (= e!4192592 e!4192593)))

(declare-fun res!2844736 () Bool)

(declare-fun call!633186 () Bool)

(assert (=> b!6975812 (= res!2844736 call!633186)))

(assert (=> b!6975812 (=> res!2844736 e!4192593)))

(declare-fun b!6975813 () Bool)

(declare-fun e!4192596 () Bool)

(assert (=> b!6975813 (= e!4192594 e!4192596)))

(declare-fun res!2844739 () Bool)

(assert (=> b!6975813 (=> res!2844739 e!4192596)))

(assert (=> b!6975813 (= res!2844739 ((_ is Star!17135) r!13765))))

(declare-fun d!2172049 () Bool)

(declare-fun res!2844740 () Bool)

(assert (=> d!2172049 (=> res!2844740 e!4192597)))

(assert (=> d!2172049 (= res!2844740 ((_ is EmptyExpr!17135) r!13765))))

(assert (=> d!2172049 (= (nullableFct!2596 r!13765) e!4192597)))

(declare-fun b!6975814 () Bool)

(assert (=> b!6975814 (= e!4192596 e!4192592)))

(declare-fun c!1293049 () Bool)

(assert (=> b!6975814 (= c!1293049 ((_ is Union!17135) r!13765))))

(declare-fun b!6975815 () Bool)

(assert (=> b!6975815 (= e!4192595 call!633186)))

(declare-fun bm!633180 () Bool)

(assert (=> bm!633180 (= call!633186 (nullable!6920 (ite c!1293049 (regOne!34783 r!13765) (regTwo!34782 r!13765))))))

(declare-fun b!6975816 () Bool)

(assert (=> b!6975816 (= e!4192593 call!633185)))

(declare-fun bm!633181 () Bool)

(assert (=> bm!633181 (= call!633185 (nullable!6920 (ite c!1293049 (regTwo!34783 r!13765) (regOne!34782 r!13765))))))

(assert (= (and d!2172049 (not res!2844740)) b!6975811))

(assert (= (and b!6975811 res!2844738) b!6975813))

(assert (= (and b!6975813 (not res!2844739)) b!6975814))

(assert (= (and b!6975814 c!1293049) b!6975812))

(assert (= (and b!6975814 (not c!1293049)) b!6975810))

(assert (= (and b!6975812 (not res!2844736)) b!6975816))

(assert (= (and b!6975810 res!2844737) b!6975815))

(assert (= (or b!6975812 b!6975815) bm!633180))

(assert (= (or b!6975816 b!6975810) bm!633181))

(declare-fun m!7661720 () Bool)

(assert (=> bm!633180 m!7661720))

(declare-fun m!7661722 () Bool)

(assert (=> bm!633181 m!7661722))

(assert (=> d!2171913 d!2172049))

(declare-fun d!2172051 () Bool)

(declare-fun res!2844743 () Bool)

(declare-fun e!4192604 () Bool)

(assert (=> d!2172051 (=> res!2844743 e!4192604)))

(assert (=> d!2172051 (= res!2844743 ((_ is ElementMatch!17135) (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142)))))))

(assert (=> d!2172051 (= (validRegex!8817 (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142)))) e!4192604)))

(declare-fun b!6975817 () Bool)

(declare-fun e!4192599 () Bool)

(declare-fun e!4192598 () Bool)

(assert (=> b!6975817 (= e!4192599 e!4192598)))

(declare-fun c!1293051 () Bool)

(assert (=> b!6975817 (= c!1293051 ((_ is Union!17135) (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142)))))))

(declare-fun bm!633182 () Bool)

(declare-fun call!633187 () Bool)

(declare-fun call!633189 () Bool)

(assert (=> bm!633182 (= call!633187 call!633189)))

(declare-fun b!6975818 () Bool)

(assert (=> b!6975818 (= e!4192604 e!4192599)))

(declare-fun c!1293050 () Bool)

(assert (=> b!6975818 (= c!1293050 ((_ is Star!17135) (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142)))))))

(declare-fun b!6975819 () Bool)

(declare-fun res!2844742 () Bool)

(declare-fun e!4192603 () Bool)

(assert (=> b!6975819 (=> res!2844742 e!4192603)))

(assert (=> b!6975819 (= res!2844742 (not ((_ is Concat!25980) (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142))))))))

(assert (=> b!6975819 (= e!4192598 e!4192603)))

(declare-fun b!6975820 () Bool)

(declare-fun e!4192601 () Bool)

(assert (=> b!6975820 (= e!4192601 call!633189)))

(declare-fun b!6975821 () Bool)

(declare-fun e!4192602 () Bool)

(assert (=> b!6975821 (= e!4192603 e!4192602)))

(declare-fun res!2844741 () Bool)

(assert (=> b!6975821 (=> (not res!2844741) (not e!4192602))))

(assert (=> b!6975821 (= res!2844741 call!633187)))

(declare-fun b!6975822 () Bool)

(declare-fun call!633188 () Bool)

(assert (=> b!6975822 (= e!4192602 call!633188)))

(declare-fun b!6975823 () Bool)

(declare-fun e!4192600 () Bool)

(assert (=> b!6975823 (= e!4192600 call!633188)))

(declare-fun bm!633183 () Bool)

(assert (=> bm!633183 (= call!633189 (validRegex!8817 (ite c!1293050 (reg!17464 (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142)))) (ite c!1293051 (regOne!34783 (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142)))) (regOne!34782 (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142))))))))))

(declare-fun b!6975824 () Bool)

(declare-fun res!2844745 () Bool)

(assert (=> b!6975824 (=> (not res!2844745) (not e!4192600))))

(assert (=> b!6975824 (= res!2844745 call!633187)))

(assert (=> b!6975824 (= e!4192598 e!4192600)))

(declare-fun b!6975825 () Bool)

(assert (=> b!6975825 (= e!4192599 e!4192601)))

(declare-fun res!2844744 () Bool)

(assert (=> b!6975825 (= res!2844744 (not (nullable!6920 (reg!17464 (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142)))))))))

(assert (=> b!6975825 (=> (not res!2844744) (not e!4192601))))

(declare-fun bm!633184 () Bool)

(assert (=> bm!633184 (= call!633188 (validRegex!8817 (ite c!1293051 (regTwo!34783 (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142)))) (regTwo!34782 (ite c!1292963 (regTwo!34783 (h!73276 l!9142)) (regTwo!34782 (h!73276 l!9142)))))))))

(assert (= (and d!2172051 (not res!2844743)) b!6975818))

(assert (= (and b!6975818 c!1293050) b!6975825))

(assert (= (and b!6975818 (not c!1293050)) b!6975817))

(assert (= (and b!6975825 res!2844744) b!6975820))

(assert (= (and b!6975817 c!1293051) b!6975824))

(assert (= (and b!6975817 (not c!1293051)) b!6975819))

(assert (= (and b!6975824 res!2844745) b!6975823))

(assert (= (and b!6975819 (not res!2844742)) b!6975821))

(assert (= (and b!6975821 res!2844741) b!6975822))

(assert (= (or b!6975824 b!6975821) bm!633182))

(assert (= (or b!6975823 b!6975822) bm!633184))

(assert (= (or b!6975820 bm!633182) bm!633183))

(declare-fun m!7661724 () Bool)

(assert (=> bm!633183 m!7661724))

(declare-fun m!7661726 () Bool)

(assert (=> b!6975825 m!7661726))

(declare-fun m!7661728 () Bool)

(assert (=> bm!633184 m!7661728))

(assert (=> bm!633100 d!2172051))

(declare-fun d!2172053 () Bool)

(assert (=> d!2172053 (= (isEmpty!39030 (tail!13110 (tail!13110 s!9351))) ((_ is Nil!66827) (tail!13110 (tail!13110 s!9351))))))

(assert (=> b!6974687 d!2172053))

(declare-fun d!2172055 () Bool)

(assert (=> d!2172055 (= (tail!13110 (tail!13110 s!9351)) (t!380694 (tail!13110 s!9351)))))

(assert (=> b!6974687 d!2172055))

(assert (=> bm!633106 d!2171907))

(declare-fun bs!1859886 () Bool)

(declare-fun d!2172057 () Bool)

(assert (= bs!1859886 (and d!2172057 start!668666)))

(declare-fun lambda!397950 () Int)

(assert (=> bs!1859886 (= lambda!397950 lambda!397905)))

(declare-fun bs!1859887 () Bool)

(assert (= bs!1859887 (and d!2172057 d!2171829)))

(assert (=> bs!1859887 (= lambda!397950 lambda!397930)))

(declare-fun bs!1859888 () Bool)

(assert (= bs!1859888 (and d!2172057 d!2171889)))

(assert (=> bs!1859888 (= lambda!397950 lambda!397936)))

(declare-fun bs!1859889 () Bool)

(assert (= bs!1859889 (and d!2172057 b!6974065)))

(assert (=> bs!1859889 (not (= lambda!397950 lambda!397906))))

(declare-fun bs!1859890 () Bool)

(assert (= bs!1859890 (and d!2172057 d!2171827)))

(assert (=> bs!1859890 (not (= lambda!397950 lambda!397927))))

(declare-fun b!6975827 () Bool)

(declare-fun e!4192610 () Bool)

(declare-fun lt!2479925 () Regex!17135)

(assert (=> b!6975827 (= e!4192610 (= lt!2479925 (head!14043 (t!380695 (t!380695 l!9142)))))))

(declare-fun b!6975828 () Bool)

(declare-fun e!4192605 () Regex!17135)

(assert (=> b!6975828 (= e!4192605 EmptyLang!17135)))

(declare-fun b!6975829 () Bool)

(declare-fun e!4192606 () Bool)

(assert (=> b!6975829 (= e!4192606 e!4192610)))

(declare-fun c!1293055 () Bool)

(assert (=> b!6975829 (= c!1293055 (isEmpty!39031 (tail!13111 (t!380695 (t!380695 l!9142)))))))

(declare-fun b!6975830 () Bool)

(assert (=> b!6975830 (= e!4192610 (isUnion!1501 lt!2479925))))

(declare-fun b!6975831 () Bool)

(declare-fun e!4192609 () Regex!17135)

(assert (=> b!6975831 (= e!4192609 e!4192605)))

(declare-fun c!1293053 () Bool)

(assert (=> b!6975831 (= c!1293053 ((_ is Cons!66828) (t!380695 (t!380695 l!9142))))))

(declare-fun b!6975832 () Bool)

(assert (=> b!6975832 (= e!4192605 (Union!17135 (h!73276 (t!380695 (t!380695 l!9142))) (generalisedUnion!2610 (t!380695 (t!380695 (t!380695 l!9142))))))))

(declare-fun b!6975833 () Bool)

(assert (=> b!6975833 (= e!4192606 (isEmptyLang!2073 lt!2479925))))

(declare-fun b!6975834 () Bool)

(assert (=> b!6975834 (= e!4192609 (h!73276 (t!380695 (t!380695 l!9142))))))

(declare-fun b!6975835 () Bool)

(declare-fun e!4192607 () Bool)

(assert (=> b!6975835 (= e!4192607 e!4192606)))

(declare-fun c!1293054 () Bool)

(assert (=> b!6975835 (= c!1293054 (isEmpty!39031 (t!380695 (t!380695 l!9142))))))

(declare-fun b!6975826 () Bool)

(declare-fun e!4192608 () Bool)

(assert (=> b!6975826 (= e!4192608 (isEmpty!39031 (t!380695 (t!380695 (t!380695 l!9142)))))))

(assert (=> d!2172057 e!4192607))

(declare-fun res!2844746 () Bool)

(assert (=> d!2172057 (=> (not res!2844746) (not e!4192607))))

(assert (=> d!2172057 (= res!2844746 (validRegex!8817 lt!2479925))))

(assert (=> d!2172057 (= lt!2479925 e!4192609)))

(declare-fun c!1293052 () Bool)

(assert (=> d!2172057 (= c!1293052 e!4192608)))

(declare-fun res!2844747 () Bool)

(assert (=> d!2172057 (=> (not res!2844747) (not e!4192608))))

(assert (=> d!2172057 (= res!2844747 ((_ is Cons!66828) (t!380695 (t!380695 l!9142))))))

(assert (=> d!2172057 (forall!16006 (t!380695 (t!380695 l!9142)) lambda!397950)))

(assert (=> d!2172057 (= (generalisedUnion!2610 (t!380695 (t!380695 l!9142))) lt!2479925)))

(assert (= (and d!2172057 res!2844747) b!6975826))

(assert (= (and d!2172057 c!1293052) b!6975834))

(assert (= (and d!2172057 (not c!1293052)) b!6975831))

(assert (= (and b!6975831 c!1293053) b!6975832))

(assert (= (and b!6975831 (not c!1293053)) b!6975828))

(assert (= (and d!2172057 res!2844746) b!6975835))

(assert (= (and b!6975835 c!1293054) b!6975833))

(assert (= (and b!6975835 (not c!1293054)) b!6975829))

(assert (= (and b!6975829 c!1293055) b!6975827))

(assert (= (and b!6975829 (not c!1293055)) b!6975830))

(declare-fun m!7661730 () Bool)

(assert (=> b!6975830 m!7661730))

(declare-fun m!7661732 () Bool)

(assert (=> b!6975833 m!7661732))

(declare-fun m!7661734 () Bool)

(assert (=> d!2172057 m!7661734))

(declare-fun m!7661736 () Bool)

(assert (=> d!2172057 m!7661736))

(declare-fun m!7661738 () Bool)

(assert (=> b!6975832 m!7661738))

(declare-fun m!7661740 () Bool)

(assert (=> b!6975827 m!7661740))

(assert (=> b!6975835 m!7661434))

(declare-fun m!7661742 () Bool)

(assert (=> b!6975829 m!7661742))

(assert (=> b!6975829 m!7661742))

(declare-fun m!7661744 () Bool)

(assert (=> b!6975829 m!7661744))

(declare-fun m!7661746 () Bool)

(assert (=> b!6975826 m!7661746))

(assert (=> b!6974669 d!2172057))

(declare-fun d!2172059 () Bool)

(assert (=> d!2172059 (= (nullable!6920 (reg!17464 (h!73276 l!9142))) (nullableFct!2596 (reg!17464 (h!73276 l!9142))))))

(declare-fun bs!1859891 () Bool)

(assert (= bs!1859891 d!2172059))

(declare-fun m!7661748 () Bool)

(assert (=> bs!1859891 m!7661748))

(assert (=> b!6974745 d!2172059))

(assert (=> b!6974672 d!2171931))

(declare-fun d!2172061 () Bool)

(assert (=> d!2172061 (= (nullable!6920 (reg!17464 lt!2479907)) (nullableFct!2596 (reg!17464 lt!2479907)))))

(declare-fun bs!1859892 () Bool)

(assert (= bs!1859892 d!2172061))

(declare-fun m!7661750 () Bool)

(assert (=> bs!1859892 m!7661750))

(assert (=> b!6974787 d!2172061))

(declare-fun d!2172063 () Bool)

(declare-fun res!2844750 () Bool)

(declare-fun e!4192617 () Bool)

(assert (=> d!2172063 (=> res!2844750 e!4192617)))

(assert (=> d!2172063 (= res!2844750 ((_ is ElementMatch!17135) (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907)))))))

(assert (=> d!2172063 (= (validRegex!8817 (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907)))) e!4192617)))

(declare-fun b!6975836 () Bool)

(declare-fun e!4192612 () Bool)

(declare-fun e!4192611 () Bool)

(assert (=> b!6975836 (= e!4192612 e!4192611)))

(declare-fun c!1293057 () Bool)

(assert (=> b!6975836 (= c!1293057 ((_ is Union!17135) (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907)))))))

(declare-fun bm!633185 () Bool)

(declare-fun call!633190 () Bool)

(declare-fun call!633192 () Bool)

(assert (=> bm!633185 (= call!633190 call!633192)))

(declare-fun b!6975837 () Bool)

(assert (=> b!6975837 (= e!4192617 e!4192612)))

(declare-fun c!1293056 () Bool)

(assert (=> b!6975837 (= c!1293056 ((_ is Star!17135) (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907)))))))

(declare-fun b!6975838 () Bool)

(declare-fun res!2844749 () Bool)

(declare-fun e!4192616 () Bool)

(assert (=> b!6975838 (=> res!2844749 e!4192616)))

(assert (=> b!6975838 (= res!2844749 (not ((_ is Concat!25980) (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907))))))))

(assert (=> b!6975838 (= e!4192611 e!4192616)))

(declare-fun b!6975839 () Bool)

(declare-fun e!4192614 () Bool)

(assert (=> b!6975839 (= e!4192614 call!633192)))

(declare-fun b!6975840 () Bool)

(declare-fun e!4192615 () Bool)

(assert (=> b!6975840 (= e!4192616 e!4192615)))

(declare-fun res!2844748 () Bool)

(assert (=> b!6975840 (=> (not res!2844748) (not e!4192615))))

(assert (=> b!6975840 (= res!2844748 call!633190)))

(declare-fun b!6975841 () Bool)

(declare-fun call!633191 () Bool)

(assert (=> b!6975841 (= e!4192615 call!633191)))

(declare-fun b!6975842 () Bool)

(declare-fun e!4192613 () Bool)

(assert (=> b!6975842 (= e!4192613 call!633191)))

(declare-fun bm!633186 () Bool)

(assert (=> bm!633186 (= call!633192 (validRegex!8817 (ite c!1293056 (reg!17464 (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907)))) (ite c!1293057 (regOne!34783 (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907)))) (regOne!34782 (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907))))))))))

(declare-fun b!6975843 () Bool)

(declare-fun res!2844752 () Bool)

(assert (=> b!6975843 (=> (not res!2844752) (not e!4192613))))

(assert (=> b!6975843 (= res!2844752 call!633190)))

(assert (=> b!6975843 (= e!4192611 e!4192613)))

(declare-fun b!6975844 () Bool)

(assert (=> b!6975844 (= e!4192612 e!4192614)))

(declare-fun res!2844751 () Bool)

(assert (=> b!6975844 (= res!2844751 (not (nullable!6920 (reg!17464 (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907)))))))))

(assert (=> b!6975844 (=> (not res!2844751) (not e!4192614))))

(declare-fun bm!633187 () Bool)

(assert (=> bm!633187 (= call!633191 (validRegex!8817 (ite c!1293057 (regTwo!34783 (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907)))) (regTwo!34782 (ite c!1292974 (reg!17464 lt!2479907) (ite c!1292975 (regOne!34783 lt!2479907) (regOne!34782 lt!2479907)))))))))

(assert (= (and d!2172063 (not res!2844750)) b!6975837))

(assert (= (and b!6975837 c!1293056) b!6975844))

(assert (= (and b!6975837 (not c!1293056)) b!6975836))

(assert (= (and b!6975844 res!2844751) b!6975839))

(assert (= (and b!6975836 c!1293057) b!6975843))

(assert (= (and b!6975836 (not c!1293057)) b!6975838))

(assert (= (and b!6975843 res!2844752) b!6975842))

(assert (= (and b!6975838 (not res!2844749)) b!6975840))

(assert (= (and b!6975840 res!2844748) b!6975841))

(assert (= (or b!6975843 b!6975840) bm!633185))

(assert (= (or b!6975842 b!6975841) bm!633187))

(assert (= (or b!6975839 bm!633185) bm!633186))

(declare-fun m!7661752 () Bool)

(assert (=> bm!633186 m!7661752))

(declare-fun m!7661754 () Bool)

(assert (=> b!6975844 m!7661754))

(declare-fun m!7661756 () Bool)

(assert (=> bm!633187 m!7661756))

(assert (=> bm!633109 d!2172063))

(assert (=> b!6974688 d!2172053))

(assert (=> b!6974688 d!2172055))

(declare-fun d!2172065 () Bool)

(declare-fun res!2844755 () Bool)

(declare-fun e!4192624 () Bool)

(assert (=> d!2172065 (=> res!2844755 e!4192624)))

(assert (=> d!2172065 (= res!2844755 ((_ is ElementMatch!17135) (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907))))))

(assert (=> d!2172065 (= (validRegex!8817 (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907))) e!4192624)))

(declare-fun b!6975845 () Bool)

(declare-fun e!4192619 () Bool)

(declare-fun e!4192618 () Bool)

(assert (=> b!6975845 (= e!4192619 e!4192618)))

(declare-fun c!1293059 () Bool)

(assert (=> b!6975845 (= c!1293059 ((_ is Union!17135) (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907))))))

(declare-fun bm!633188 () Bool)

(declare-fun call!633193 () Bool)

(declare-fun call!633195 () Bool)

(assert (=> bm!633188 (= call!633193 call!633195)))

(declare-fun b!6975846 () Bool)

(assert (=> b!6975846 (= e!4192624 e!4192619)))

(declare-fun c!1293058 () Bool)

(assert (=> b!6975846 (= c!1293058 ((_ is Star!17135) (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907))))))

(declare-fun b!6975847 () Bool)

(declare-fun res!2844754 () Bool)

(declare-fun e!4192623 () Bool)

(assert (=> b!6975847 (=> res!2844754 e!4192623)))

(assert (=> b!6975847 (= res!2844754 (not ((_ is Concat!25980) (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907)))))))

(assert (=> b!6975847 (= e!4192618 e!4192623)))

(declare-fun b!6975848 () Bool)

(declare-fun e!4192621 () Bool)

(assert (=> b!6975848 (= e!4192621 call!633195)))

(declare-fun b!6975849 () Bool)

(declare-fun e!4192622 () Bool)

(assert (=> b!6975849 (= e!4192623 e!4192622)))

(declare-fun res!2844753 () Bool)

(assert (=> b!6975849 (=> (not res!2844753) (not e!4192622))))

(assert (=> b!6975849 (= res!2844753 call!633193)))

(declare-fun b!6975850 () Bool)

(declare-fun call!633194 () Bool)

(assert (=> b!6975850 (= e!4192622 call!633194)))

(declare-fun b!6975851 () Bool)

(declare-fun e!4192620 () Bool)

(assert (=> b!6975851 (= e!4192620 call!633194)))

(declare-fun bm!633189 () Bool)

(assert (=> bm!633189 (= call!633195 (validRegex!8817 (ite c!1293058 (reg!17464 (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907))) (ite c!1293059 (regOne!34783 (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907))) (regOne!34782 (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907)))))))))

(declare-fun b!6975852 () Bool)

(declare-fun res!2844757 () Bool)

(assert (=> b!6975852 (=> (not res!2844757) (not e!4192620))))

(assert (=> b!6975852 (= res!2844757 call!633193)))

(assert (=> b!6975852 (= e!4192618 e!4192620)))

(declare-fun b!6975853 () Bool)

(assert (=> b!6975853 (= e!4192619 e!4192621)))

(declare-fun res!2844756 () Bool)

(assert (=> b!6975853 (= res!2844756 (not (nullable!6920 (reg!17464 (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907))))))))

(assert (=> b!6975853 (=> (not res!2844756) (not e!4192621))))

(declare-fun bm!633190 () Bool)

(assert (=> bm!633190 (= call!633194 (validRegex!8817 (ite c!1293059 (regTwo!34783 (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907))) (regTwo!34782 (ite c!1292975 (regTwo!34783 lt!2479907) (regTwo!34782 lt!2479907))))))))

(assert (= (and d!2172065 (not res!2844755)) b!6975846))

(assert (= (and b!6975846 c!1293058) b!6975853))

(assert (= (and b!6975846 (not c!1293058)) b!6975845))

(assert (= (and b!6975853 res!2844756) b!6975848))

(assert (= (and b!6975845 c!1293059) b!6975852))

(assert (= (and b!6975845 (not c!1293059)) b!6975847))

(assert (= (and b!6975852 res!2844757) b!6975851))

(assert (= (and b!6975847 (not res!2844754)) b!6975849))

(assert (= (and b!6975849 res!2844753) b!6975850))

(assert (= (or b!6975852 b!6975849) bm!633188))

(assert (= (or b!6975851 b!6975850) bm!633190))

(assert (= (or b!6975848 bm!633188) bm!633189))

(declare-fun m!7661758 () Bool)

(assert (=> bm!633189 m!7661758))

(declare-fun m!7661760 () Bool)

(assert (=> b!6975853 m!7661760))

(declare-fun m!7661762 () Bool)

(assert (=> bm!633190 m!7661762))

(assert (=> bm!633110 d!2172065))

(assert (=> d!2171897 d!2171915))

(declare-fun d!2172067 () Bool)

(declare-fun res!2844760 () Bool)

(declare-fun e!4192631 () Bool)

(assert (=> d!2172067 (=> res!2844760 e!4192631)))

(assert (=> d!2172067 (= res!2844760 ((_ is ElementMatch!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(assert (=> d!2172067 (= (validRegex!8817 (derivativeStep!5545 r!13765 (head!14042 s!9351))) e!4192631)))

(declare-fun b!6975854 () Bool)

(declare-fun e!4192626 () Bool)

(declare-fun e!4192625 () Bool)

(assert (=> b!6975854 (= e!4192626 e!4192625)))

(declare-fun c!1293061 () Bool)

(assert (=> b!6975854 (= c!1293061 ((_ is Union!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(declare-fun bm!633191 () Bool)

(declare-fun call!633196 () Bool)

(declare-fun call!633198 () Bool)

(assert (=> bm!633191 (= call!633196 call!633198)))

(declare-fun b!6975855 () Bool)

(assert (=> b!6975855 (= e!4192631 e!4192626)))

(declare-fun c!1293060 () Bool)

(assert (=> b!6975855 (= c!1293060 ((_ is Star!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(declare-fun b!6975856 () Bool)

(declare-fun res!2844759 () Bool)

(declare-fun e!4192630 () Bool)

(assert (=> b!6975856 (=> res!2844759 e!4192630)))

(assert (=> b!6975856 (= res!2844759 (not ((_ is Concat!25980) (derivativeStep!5545 r!13765 (head!14042 s!9351)))))))

(assert (=> b!6975856 (= e!4192625 e!4192630)))

(declare-fun b!6975857 () Bool)

(declare-fun e!4192628 () Bool)

(assert (=> b!6975857 (= e!4192628 call!633198)))

(declare-fun b!6975858 () Bool)

(declare-fun e!4192629 () Bool)

(assert (=> b!6975858 (= e!4192630 e!4192629)))

(declare-fun res!2844758 () Bool)

(assert (=> b!6975858 (=> (not res!2844758) (not e!4192629))))

(assert (=> b!6975858 (= res!2844758 call!633196)))

(declare-fun b!6975859 () Bool)

(declare-fun call!633197 () Bool)

(assert (=> b!6975859 (= e!4192629 call!633197)))

(declare-fun b!6975860 () Bool)

(declare-fun e!4192627 () Bool)

(assert (=> b!6975860 (= e!4192627 call!633197)))

(declare-fun bm!633192 () Bool)

(assert (=> bm!633192 (= call!633198 (validRegex!8817 (ite c!1293060 (reg!17464 (derivativeStep!5545 r!13765 (head!14042 s!9351))) (ite c!1293061 (regOne!34783 (derivativeStep!5545 r!13765 (head!14042 s!9351))) (regOne!34782 (derivativeStep!5545 r!13765 (head!14042 s!9351)))))))))

(declare-fun b!6975861 () Bool)

(declare-fun res!2844762 () Bool)

(assert (=> b!6975861 (=> (not res!2844762) (not e!4192627))))

(assert (=> b!6975861 (= res!2844762 call!633196)))

(assert (=> b!6975861 (= e!4192625 e!4192627)))

(declare-fun b!6975862 () Bool)

(assert (=> b!6975862 (= e!4192626 e!4192628)))

(declare-fun res!2844761 () Bool)

(assert (=> b!6975862 (= res!2844761 (not (nullable!6920 (reg!17464 (derivativeStep!5545 r!13765 (head!14042 s!9351))))))))

(assert (=> b!6975862 (=> (not res!2844761) (not e!4192628))))

(declare-fun bm!633193 () Bool)

(assert (=> bm!633193 (= call!633197 (validRegex!8817 (ite c!1293061 (regTwo!34783 (derivativeStep!5545 r!13765 (head!14042 s!9351))) (regTwo!34782 (derivativeStep!5545 r!13765 (head!14042 s!9351))))))))

(assert (= (and d!2172067 (not res!2844760)) b!6975855))

(assert (= (and b!6975855 c!1293060) b!6975862))

(assert (= (and b!6975855 (not c!1293060)) b!6975854))

(assert (= (and b!6975862 res!2844761) b!6975857))

(assert (= (and b!6975854 c!1293061) b!6975861))

(assert (= (and b!6975854 (not c!1293061)) b!6975856))

(assert (= (and b!6975861 res!2844762) b!6975860))

(assert (= (and b!6975856 (not res!2844759)) b!6975858))

(assert (= (and b!6975858 res!2844758) b!6975859))

(assert (= (or b!6975861 b!6975858) bm!633191))

(assert (= (or b!6975860 b!6975859) bm!633193))

(assert (= (or b!6975857 bm!633191) bm!633192))

(declare-fun m!7661764 () Bool)

(assert (=> bm!633192 m!7661764))

(declare-fun m!7661766 () Bool)

(assert (=> b!6975862 m!7661766))

(declare-fun m!7661768 () Bool)

(assert (=> bm!633193 m!7661768))

(assert (=> d!2171897 d!2172067))

(declare-fun d!2172069 () Bool)

(declare-fun res!2844765 () Bool)

(declare-fun e!4192638 () Bool)

(assert (=> d!2172069 (=> res!2844765 e!4192638)))

(assert (=> d!2172069 (= res!2844765 ((_ is ElementMatch!17135) (h!73276 (t!380695 l!9142))))))

(assert (=> d!2172069 (= (validRegex!8817 (h!73276 (t!380695 l!9142))) e!4192638)))

(declare-fun b!6975863 () Bool)

(declare-fun e!4192633 () Bool)

(declare-fun e!4192632 () Bool)

(assert (=> b!6975863 (= e!4192633 e!4192632)))

(declare-fun c!1293063 () Bool)

(assert (=> b!6975863 (= c!1293063 ((_ is Union!17135) (h!73276 (t!380695 l!9142))))))

(declare-fun bm!633194 () Bool)

(declare-fun call!633199 () Bool)

(declare-fun call!633201 () Bool)

(assert (=> bm!633194 (= call!633199 call!633201)))

(declare-fun b!6975864 () Bool)

(assert (=> b!6975864 (= e!4192638 e!4192633)))

(declare-fun c!1293062 () Bool)

(assert (=> b!6975864 (= c!1293062 ((_ is Star!17135) (h!73276 (t!380695 l!9142))))))

(declare-fun b!6975865 () Bool)

(declare-fun res!2844764 () Bool)

(declare-fun e!4192637 () Bool)

(assert (=> b!6975865 (=> res!2844764 e!4192637)))

(assert (=> b!6975865 (= res!2844764 (not ((_ is Concat!25980) (h!73276 (t!380695 l!9142)))))))

(assert (=> b!6975865 (= e!4192632 e!4192637)))

(declare-fun b!6975866 () Bool)

(declare-fun e!4192635 () Bool)

(assert (=> b!6975866 (= e!4192635 call!633201)))

(declare-fun b!6975867 () Bool)

(declare-fun e!4192636 () Bool)

(assert (=> b!6975867 (= e!4192637 e!4192636)))

(declare-fun res!2844763 () Bool)

(assert (=> b!6975867 (=> (not res!2844763) (not e!4192636))))

(assert (=> b!6975867 (= res!2844763 call!633199)))

(declare-fun b!6975868 () Bool)

(declare-fun call!633200 () Bool)

(assert (=> b!6975868 (= e!4192636 call!633200)))

(declare-fun b!6975869 () Bool)

(declare-fun e!4192634 () Bool)

(assert (=> b!6975869 (= e!4192634 call!633200)))

(declare-fun bm!633195 () Bool)

(assert (=> bm!633195 (= call!633201 (validRegex!8817 (ite c!1293062 (reg!17464 (h!73276 (t!380695 l!9142))) (ite c!1293063 (regOne!34783 (h!73276 (t!380695 l!9142))) (regOne!34782 (h!73276 (t!380695 l!9142)))))))))

(declare-fun b!6975870 () Bool)

(declare-fun res!2844767 () Bool)

(assert (=> b!6975870 (=> (not res!2844767) (not e!4192634))))

(assert (=> b!6975870 (= res!2844767 call!633199)))

(assert (=> b!6975870 (= e!4192632 e!4192634)))

(declare-fun b!6975871 () Bool)

(assert (=> b!6975871 (= e!4192633 e!4192635)))

(declare-fun res!2844766 () Bool)

(assert (=> b!6975871 (= res!2844766 (not (nullable!6920 (reg!17464 (h!73276 (t!380695 l!9142))))))))

(assert (=> b!6975871 (=> (not res!2844766) (not e!4192635))))

(declare-fun bm!633196 () Bool)

(assert (=> bm!633196 (= call!633200 (validRegex!8817 (ite c!1293063 (regTwo!34783 (h!73276 (t!380695 l!9142))) (regTwo!34782 (h!73276 (t!380695 l!9142))))))))

(assert (= (and d!2172069 (not res!2844765)) b!6975864))

(assert (= (and b!6975864 c!1293062) b!6975871))

(assert (= (and b!6975864 (not c!1293062)) b!6975863))

(assert (= (and b!6975871 res!2844766) b!6975866))

(assert (= (and b!6975863 c!1293063) b!6975870))

(assert (= (and b!6975863 (not c!1293063)) b!6975865))

(assert (= (and b!6975870 res!2844767) b!6975869))

(assert (= (and b!6975865 (not res!2844764)) b!6975867))

(assert (= (and b!6975867 res!2844763) b!6975868))

(assert (= (or b!6975870 b!6975867) bm!633194))

(assert (= (or b!6975869 b!6975868) bm!633196))

(assert (= (or b!6975866 bm!633194) bm!633195))

(declare-fun m!7661770 () Bool)

(assert (=> bm!633195 m!7661770))

(declare-fun m!7661772 () Bool)

(assert (=> b!6975871 m!7661772))

(declare-fun m!7661774 () Bool)

(assert (=> bm!633196 m!7661774))

(assert (=> bs!1859789 d!2172069))

(assert (=> bm!633104 d!2171907))

(declare-fun bs!1859893 () Bool)

(declare-fun b!6975879 () Bool)

(assert (= bs!1859893 (and b!6975879 b!6974770)))

(declare-fun lambda!397951 () Int)

(assert (=> bs!1859893 (not (= lambda!397951 lambda!397940))))

(declare-fun bs!1859894 () Bool)

(assert (= bs!1859894 (and b!6975879 b!6974278)))

(assert (=> bs!1859894 (= (and (= (reg!17464 (regTwo!34783 (regOne!34783 r!13765))) (reg!17464 r!13765)) (= (regTwo!34783 (regOne!34783 r!13765)) r!13765)) (= lambda!397951 lambda!397923))))

(declare-fun bs!1859895 () Bool)

(assert (= bs!1859895 (and b!6975879 b!6974273)))

(assert (=> bs!1859895 (not (= lambda!397951 lambda!397924))))

(declare-fun bs!1859896 () Bool)

(assert (= bs!1859896 (and b!6975879 b!6974757)))

(assert (=> bs!1859896 (not (= lambda!397951 lambda!397938))))

(declare-fun bs!1859897 () Bool)

(assert (= bs!1859897 (and b!6975879 b!6974775)))

(assert (=> bs!1859897 (= (and (= (reg!17464 (regTwo!34783 (regOne!34783 r!13765))) (reg!17464 (regOne!34783 r!13765))) (= (regTwo!34783 (regOne!34783 r!13765)) (regOne!34783 r!13765))) (= lambda!397951 lambda!397939))))

(declare-fun bs!1859898 () Bool)

(assert (= bs!1859898 (and b!6975879 b!6974762)))

(assert (=> bs!1859898 (= (and (= (reg!17464 (regTwo!34783 (regOne!34783 r!13765))) (reg!17464 (regTwo!34783 r!13765))) (= (regTwo!34783 (regOne!34783 r!13765)) (regTwo!34783 r!13765))) (= lambda!397951 lambda!397937))))

(assert (=> b!6975879 true))

(assert (=> b!6975879 true))

(declare-fun bs!1859899 () Bool)

(declare-fun b!6975874 () Bool)

(assert (= bs!1859899 (and b!6975874 b!6974770)))

(declare-fun lambda!397952 () Int)

(assert (=> bs!1859899 (= (and (= (regOne!34782 (regTwo!34783 (regOne!34783 r!13765))) (regOne!34782 (regOne!34783 r!13765))) (= (regTwo!34782 (regTwo!34783 (regOne!34783 r!13765))) (regTwo!34782 (regOne!34783 r!13765)))) (= lambda!397952 lambda!397940))))

(declare-fun bs!1859900 () Bool)

(assert (= bs!1859900 (and b!6975874 b!6974278)))

(assert (=> bs!1859900 (not (= lambda!397952 lambda!397923))))

(declare-fun bs!1859901 () Bool)

(assert (= bs!1859901 (and b!6975874 b!6974273)))

(assert (=> bs!1859901 (= (and (= (regOne!34782 (regTwo!34783 (regOne!34783 r!13765))) (regOne!34782 r!13765)) (= (regTwo!34782 (regTwo!34783 (regOne!34783 r!13765))) (regTwo!34782 r!13765))) (= lambda!397952 lambda!397924))))

(declare-fun bs!1859902 () Bool)

(assert (= bs!1859902 (and b!6975874 b!6975879)))

(assert (=> bs!1859902 (not (= lambda!397952 lambda!397951))))

(declare-fun bs!1859903 () Bool)

(assert (= bs!1859903 (and b!6975874 b!6974757)))

(assert (=> bs!1859903 (= (and (= (regOne!34782 (regTwo!34783 (regOne!34783 r!13765))) (regOne!34782 (regTwo!34783 r!13765))) (= (regTwo!34782 (regTwo!34783 (regOne!34783 r!13765))) (regTwo!34782 (regTwo!34783 r!13765)))) (= lambda!397952 lambda!397938))))

(declare-fun bs!1859904 () Bool)

(assert (= bs!1859904 (and b!6975874 b!6974775)))

(assert (=> bs!1859904 (not (= lambda!397952 lambda!397939))))

(declare-fun bs!1859905 () Bool)

(assert (= bs!1859905 (and b!6975874 b!6974762)))

(assert (=> bs!1859905 (not (= lambda!397952 lambda!397937))))

(assert (=> b!6975874 true))

(assert (=> b!6975874 true))

(declare-fun bm!633197 () Bool)

(declare-fun call!633203 () Bool)

(assert (=> bm!633197 (= call!633203 (isEmpty!39030 s!9351))))

(declare-fun b!6975872 () Bool)

(declare-fun e!4192641 () Bool)

(assert (=> b!6975872 (= e!4192641 (= s!9351 (Cons!66827 (c!1292829 (regTwo!34783 (regOne!34783 r!13765))) Nil!66827)))))

(declare-fun b!6975873 () Bool)

(declare-fun res!2844768 () Bool)

(declare-fun e!4192645 () Bool)

(assert (=> b!6975873 (=> res!2844768 e!4192645)))

(assert (=> b!6975873 (= res!2844768 call!633203)))

(declare-fun e!4192643 () Bool)

(assert (=> b!6975873 (= e!4192643 e!4192645)))

(declare-fun call!633202 () Bool)

(assert (=> b!6975874 (= e!4192643 call!633202)))

(declare-fun b!6975875 () Bool)

(declare-fun e!4192640 () Bool)

(assert (=> b!6975875 (= e!4192640 call!633203)))

(declare-fun b!6975876 () Bool)

(declare-fun e!4192639 () Bool)

(assert (=> b!6975876 (= e!4192640 e!4192639)))

(declare-fun res!2844770 () Bool)

(assert (=> b!6975876 (= res!2844770 (not ((_ is EmptyLang!17135) (regTwo!34783 (regOne!34783 r!13765)))))))

(assert (=> b!6975876 (=> (not res!2844770) (not e!4192639))))

(declare-fun b!6975877 () Bool)

(declare-fun e!4192644 () Bool)

(assert (=> b!6975877 (= e!4192644 (matchRSpec!4152 (regTwo!34783 (regTwo!34783 (regOne!34783 r!13765))) s!9351))))

(declare-fun d!2172071 () Bool)

(declare-fun c!1293065 () Bool)

(assert (=> d!2172071 (= c!1293065 ((_ is EmptyExpr!17135) (regTwo!34783 (regOne!34783 r!13765))))))

(assert (=> d!2172071 (= (matchRSpec!4152 (regTwo!34783 (regOne!34783 r!13765)) s!9351) e!4192640)))

(declare-fun b!6975878 () Bool)

(declare-fun e!4192642 () Bool)

(assert (=> b!6975878 (= e!4192642 e!4192643)))

(declare-fun c!1293067 () Bool)

(assert (=> b!6975878 (= c!1293067 ((_ is Star!17135) (regTwo!34783 (regOne!34783 r!13765))))))

(assert (=> b!6975879 (= e!4192645 call!633202)))

(declare-fun bm!633198 () Bool)

(assert (=> bm!633198 (= call!633202 (Exists!4098 (ite c!1293067 lambda!397951 lambda!397952)))))

(declare-fun b!6975880 () Bool)

(assert (=> b!6975880 (= e!4192642 e!4192644)))

(declare-fun res!2844769 () Bool)

(assert (=> b!6975880 (= res!2844769 (matchRSpec!4152 (regOne!34783 (regTwo!34783 (regOne!34783 r!13765))) s!9351))))

(assert (=> b!6975880 (=> res!2844769 e!4192644)))

(declare-fun b!6975881 () Bool)

(declare-fun c!1293066 () Bool)

(assert (=> b!6975881 (= c!1293066 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34783 r!13765))))))

(assert (=> b!6975881 (= e!4192639 e!4192641)))

(declare-fun b!6975882 () Bool)

(declare-fun c!1293064 () Bool)

(assert (=> b!6975882 (= c!1293064 ((_ is Union!17135) (regTwo!34783 (regOne!34783 r!13765))))))

(assert (=> b!6975882 (= e!4192641 e!4192642)))

(assert (= (and d!2172071 c!1293065) b!6975875))

(assert (= (and d!2172071 (not c!1293065)) b!6975876))

(assert (= (and b!6975876 res!2844770) b!6975881))

(assert (= (and b!6975881 c!1293066) b!6975872))

(assert (= (and b!6975881 (not c!1293066)) b!6975882))

(assert (= (and b!6975882 c!1293064) b!6975880))

(assert (= (and b!6975882 (not c!1293064)) b!6975878))

(assert (= (and b!6975880 (not res!2844769)) b!6975877))

(assert (= (and b!6975878 c!1293067) b!6975873))

(assert (= (and b!6975878 (not c!1293067)) b!6975874))

(assert (= (and b!6975873 (not res!2844768)) b!6975879))

(assert (= (or b!6975879 b!6975874) bm!633198))

(assert (= (or b!6975875 b!6975873) bm!633197))

(assert (=> bm!633197 m!7661276))

(declare-fun m!7661776 () Bool)

(assert (=> b!6975877 m!7661776))

(declare-fun m!7661778 () Bool)

(assert (=> bm!633198 m!7661778))

(declare-fun m!7661780 () Bool)

(assert (=> b!6975880 m!7661780))

(assert (=> b!6974773 d!2172071))

(assert (=> bs!1859885 d!2171903))

(declare-fun d!2172073 () Bool)

(declare-fun res!2844773 () Bool)

(declare-fun e!4192652 () Bool)

(assert (=> d!2172073 (=> res!2844773 e!4192652)))

(assert (=> d!2172073 (= res!2844773 ((_ is ElementMatch!17135) (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765)))))))

(assert (=> d!2172073 (= (validRegex!8817 (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765)))) e!4192652)))

(declare-fun b!6975883 () Bool)

(declare-fun e!4192647 () Bool)

(declare-fun e!4192646 () Bool)

(assert (=> b!6975883 (= e!4192647 e!4192646)))

(declare-fun c!1293069 () Bool)

(assert (=> b!6975883 (= c!1293069 ((_ is Union!17135) (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765)))))))

(declare-fun bm!633199 () Bool)

(declare-fun call!633204 () Bool)

(declare-fun call!633206 () Bool)

(assert (=> bm!633199 (= call!633204 call!633206)))

(declare-fun b!6975884 () Bool)

(assert (=> b!6975884 (= e!4192652 e!4192647)))

(declare-fun c!1293068 () Bool)

(assert (=> b!6975884 (= c!1293068 ((_ is Star!17135) (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765)))))))

(declare-fun b!6975885 () Bool)

(declare-fun res!2844772 () Bool)

(declare-fun e!4192651 () Bool)

(assert (=> b!6975885 (=> res!2844772 e!4192651)))

(assert (=> b!6975885 (= res!2844772 (not ((_ is Concat!25980) (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765))))))))

(assert (=> b!6975885 (= e!4192646 e!4192651)))

(declare-fun b!6975886 () Bool)

(declare-fun e!4192649 () Bool)

(assert (=> b!6975886 (= e!4192649 call!633206)))

(declare-fun b!6975887 () Bool)

(declare-fun e!4192650 () Bool)

(assert (=> b!6975887 (= e!4192651 e!4192650)))

(declare-fun res!2844771 () Bool)

(assert (=> b!6975887 (=> (not res!2844771) (not e!4192650))))

(assert (=> b!6975887 (= res!2844771 call!633204)))

(declare-fun b!6975888 () Bool)

(declare-fun call!633205 () Bool)

(assert (=> b!6975888 (= e!4192650 call!633205)))

(declare-fun b!6975889 () Bool)

(declare-fun e!4192648 () Bool)

(assert (=> b!6975889 (= e!4192648 call!633205)))

(declare-fun bm!633200 () Bool)

(assert (=> bm!633200 (= call!633206 (validRegex!8817 (ite c!1293068 (reg!17464 (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765)))) (ite c!1293069 (regOne!34783 (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765)))) (regOne!34782 (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765))))))))))

(declare-fun b!6975890 () Bool)

(declare-fun res!2844775 () Bool)

(assert (=> b!6975890 (=> (not res!2844775) (not e!4192648))))

(assert (=> b!6975890 (= res!2844775 call!633204)))

(assert (=> b!6975890 (= e!4192646 e!4192648)))

(declare-fun b!6975891 () Bool)

(assert (=> b!6975891 (= e!4192647 e!4192649)))

(declare-fun res!2844774 () Bool)

(assert (=> b!6975891 (= res!2844774 (not (nullable!6920 (reg!17464 (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765)))))))))

(assert (=> b!6975891 (=> (not res!2844774) (not e!4192649))))

(declare-fun bm!633201 () Bool)

(assert (=> bm!633201 (= call!633205 (validRegex!8817 (ite c!1293069 (regTwo!34783 (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765)))) (regTwo!34782 (ite c!1292964 (reg!17464 r!13765) (ite c!1292965 (regOne!34783 r!13765) (regOne!34782 r!13765)))))))))

(assert (= (and d!2172073 (not res!2844773)) b!6975884))

(assert (= (and b!6975884 c!1293068) b!6975891))

(assert (= (and b!6975884 (not c!1293068)) b!6975883))

(assert (= (and b!6975891 res!2844774) b!6975886))

(assert (= (and b!6975883 c!1293069) b!6975890))

(assert (= (and b!6975883 (not c!1293069)) b!6975885))

(assert (= (and b!6975890 res!2844775) b!6975889))

(assert (= (and b!6975885 (not res!2844772)) b!6975887))

(assert (= (and b!6975887 res!2844771) b!6975888))

(assert (= (or b!6975890 b!6975887) bm!633199))

(assert (= (or b!6975889 b!6975888) bm!633201))

(assert (= (or b!6975886 bm!633199) bm!633200))

(declare-fun m!7661782 () Bool)

(assert (=> bm!633200 m!7661782))

(declare-fun m!7661784 () Bool)

(assert (=> b!6975891 m!7661784))

(declare-fun m!7661786 () Bool)

(assert (=> bm!633201 m!7661786))

(assert (=> bm!633102 d!2172073))

(declare-fun bs!1859906 () Bool)

(declare-fun b!6975899 () Bool)

(assert (= bs!1859906 (and b!6975899 b!6974770)))

(declare-fun lambda!397953 () Int)

(assert (=> bs!1859906 (not (= lambda!397953 lambda!397940))))

(declare-fun bs!1859907 () Bool)

(assert (= bs!1859907 (and b!6975899 b!6974278)))

(assert (=> bs!1859907 (= (and (= (reg!17464 (regOne!34783 (regOne!34783 r!13765))) (reg!17464 r!13765)) (= (regOne!34783 (regOne!34783 r!13765)) r!13765)) (= lambda!397953 lambda!397923))))

(declare-fun bs!1859908 () Bool)

(assert (= bs!1859908 (and b!6975899 b!6974273)))

(assert (=> bs!1859908 (not (= lambda!397953 lambda!397924))))

(declare-fun bs!1859909 () Bool)

(assert (= bs!1859909 (and b!6975899 b!6975879)))

(assert (=> bs!1859909 (= (and (= (reg!17464 (regOne!34783 (regOne!34783 r!13765))) (reg!17464 (regTwo!34783 (regOne!34783 r!13765)))) (= (regOne!34783 (regOne!34783 r!13765)) (regTwo!34783 (regOne!34783 r!13765)))) (= lambda!397953 lambda!397951))))

(declare-fun bs!1859910 () Bool)

(assert (= bs!1859910 (and b!6975899 b!6974757)))

(assert (=> bs!1859910 (not (= lambda!397953 lambda!397938))))

(declare-fun bs!1859911 () Bool)

(assert (= bs!1859911 (and b!6975899 b!6975874)))

(assert (=> bs!1859911 (not (= lambda!397953 lambda!397952))))

(declare-fun bs!1859912 () Bool)

(assert (= bs!1859912 (and b!6975899 b!6974775)))

(assert (=> bs!1859912 (= (and (= (reg!17464 (regOne!34783 (regOne!34783 r!13765))) (reg!17464 (regOne!34783 r!13765))) (= (regOne!34783 (regOne!34783 r!13765)) (regOne!34783 r!13765))) (= lambda!397953 lambda!397939))))

(declare-fun bs!1859913 () Bool)

(assert (= bs!1859913 (and b!6975899 b!6974762)))

(assert (=> bs!1859913 (= (and (= (reg!17464 (regOne!34783 (regOne!34783 r!13765))) (reg!17464 (regTwo!34783 r!13765))) (= (regOne!34783 (regOne!34783 r!13765)) (regTwo!34783 r!13765))) (= lambda!397953 lambda!397937))))

(assert (=> b!6975899 true))

(assert (=> b!6975899 true))

(declare-fun bs!1859914 () Bool)

(declare-fun b!6975894 () Bool)

(assert (= bs!1859914 (and b!6975894 b!6974770)))

(declare-fun lambda!397954 () Int)

(assert (=> bs!1859914 (= (and (= (regOne!34782 (regOne!34783 (regOne!34783 r!13765))) (regOne!34782 (regOne!34783 r!13765))) (= (regTwo!34782 (regOne!34783 (regOne!34783 r!13765))) (regTwo!34782 (regOne!34783 r!13765)))) (= lambda!397954 lambda!397940))))

(declare-fun bs!1859915 () Bool)

(assert (= bs!1859915 (and b!6975894 b!6974278)))

(assert (=> bs!1859915 (not (= lambda!397954 lambda!397923))))

(declare-fun bs!1859916 () Bool)

(assert (= bs!1859916 (and b!6975894 b!6974273)))

(assert (=> bs!1859916 (= (and (= (regOne!34782 (regOne!34783 (regOne!34783 r!13765))) (regOne!34782 r!13765)) (= (regTwo!34782 (regOne!34783 (regOne!34783 r!13765))) (regTwo!34782 r!13765))) (= lambda!397954 lambda!397924))))

(declare-fun bs!1859917 () Bool)

(assert (= bs!1859917 (and b!6975894 b!6975899)))

(assert (=> bs!1859917 (not (= lambda!397954 lambda!397953))))

(declare-fun bs!1859918 () Bool)

(assert (= bs!1859918 (and b!6975894 b!6975879)))

(assert (=> bs!1859918 (not (= lambda!397954 lambda!397951))))

(declare-fun bs!1859919 () Bool)

(assert (= bs!1859919 (and b!6975894 b!6974757)))

(assert (=> bs!1859919 (= (and (= (regOne!34782 (regOne!34783 (regOne!34783 r!13765))) (regOne!34782 (regTwo!34783 r!13765))) (= (regTwo!34782 (regOne!34783 (regOne!34783 r!13765))) (regTwo!34782 (regTwo!34783 r!13765)))) (= lambda!397954 lambda!397938))))

(declare-fun bs!1859920 () Bool)

(assert (= bs!1859920 (and b!6975894 b!6975874)))

(assert (=> bs!1859920 (= (and (= (regOne!34782 (regOne!34783 (regOne!34783 r!13765))) (regOne!34782 (regTwo!34783 (regOne!34783 r!13765)))) (= (regTwo!34782 (regOne!34783 (regOne!34783 r!13765))) (regTwo!34782 (regTwo!34783 (regOne!34783 r!13765))))) (= lambda!397954 lambda!397952))))

(declare-fun bs!1859921 () Bool)

(assert (= bs!1859921 (and b!6975894 b!6974775)))

(assert (=> bs!1859921 (not (= lambda!397954 lambda!397939))))

(declare-fun bs!1859922 () Bool)

(assert (= bs!1859922 (and b!6975894 b!6974762)))

(assert (=> bs!1859922 (not (= lambda!397954 lambda!397937))))

(assert (=> b!6975894 true))

(assert (=> b!6975894 true))

(declare-fun bm!633202 () Bool)

(declare-fun call!633208 () Bool)

(assert (=> bm!633202 (= call!633208 (isEmpty!39030 s!9351))))

(declare-fun b!6975892 () Bool)

(declare-fun e!4192655 () Bool)

(assert (=> b!6975892 (= e!4192655 (= s!9351 (Cons!66827 (c!1292829 (regOne!34783 (regOne!34783 r!13765))) Nil!66827)))))

(declare-fun b!6975893 () Bool)

(declare-fun res!2844776 () Bool)

(declare-fun e!4192659 () Bool)

(assert (=> b!6975893 (=> res!2844776 e!4192659)))

(assert (=> b!6975893 (= res!2844776 call!633208)))

(declare-fun e!4192657 () Bool)

(assert (=> b!6975893 (= e!4192657 e!4192659)))

(declare-fun call!633207 () Bool)

(assert (=> b!6975894 (= e!4192657 call!633207)))

(declare-fun b!6975895 () Bool)

(declare-fun e!4192654 () Bool)

(assert (=> b!6975895 (= e!4192654 call!633208)))

(declare-fun b!6975896 () Bool)

(declare-fun e!4192653 () Bool)

(assert (=> b!6975896 (= e!4192654 e!4192653)))

(declare-fun res!2844778 () Bool)

(assert (=> b!6975896 (= res!2844778 (not ((_ is EmptyLang!17135) (regOne!34783 (regOne!34783 r!13765)))))))

(assert (=> b!6975896 (=> (not res!2844778) (not e!4192653))))

(declare-fun b!6975897 () Bool)

(declare-fun e!4192658 () Bool)

(assert (=> b!6975897 (= e!4192658 (matchRSpec!4152 (regTwo!34783 (regOne!34783 (regOne!34783 r!13765))) s!9351))))

(declare-fun d!2172075 () Bool)

(declare-fun c!1293071 () Bool)

(assert (=> d!2172075 (= c!1293071 ((_ is EmptyExpr!17135) (regOne!34783 (regOne!34783 r!13765))))))

(assert (=> d!2172075 (= (matchRSpec!4152 (regOne!34783 (regOne!34783 r!13765)) s!9351) e!4192654)))

(declare-fun b!6975898 () Bool)

(declare-fun e!4192656 () Bool)

(assert (=> b!6975898 (= e!4192656 e!4192657)))

(declare-fun c!1293073 () Bool)

(assert (=> b!6975898 (= c!1293073 ((_ is Star!17135) (regOne!34783 (regOne!34783 r!13765))))))

(assert (=> b!6975899 (= e!4192659 call!633207)))

(declare-fun bm!633203 () Bool)

(assert (=> bm!633203 (= call!633207 (Exists!4098 (ite c!1293073 lambda!397953 lambda!397954)))))

(declare-fun b!6975900 () Bool)

(assert (=> b!6975900 (= e!4192656 e!4192658)))

(declare-fun res!2844777 () Bool)

(assert (=> b!6975900 (= res!2844777 (matchRSpec!4152 (regOne!34783 (regOne!34783 (regOne!34783 r!13765))) s!9351))))

(assert (=> b!6975900 (=> res!2844777 e!4192658)))

(declare-fun b!6975901 () Bool)

(declare-fun c!1293072 () Bool)

(assert (=> b!6975901 (= c!1293072 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34783 r!13765))))))

(assert (=> b!6975901 (= e!4192653 e!4192655)))

(declare-fun b!6975902 () Bool)

(declare-fun c!1293070 () Bool)

(assert (=> b!6975902 (= c!1293070 ((_ is Union!17135) (regOne!34783 (regOne!34783 r!13765))))))

(assert (=> b!6975902 (= e!4192655 e!4192656)))

(assert (= (and d!2172075 c!1293071) b!6975895))

(assert (= (and d!2172075 (not c!1293071)) b!6975896))

(assert (= (and b!6975896 res!2844778) b!6975901))

(assert (= (and b!6975901 c!1293072) b!6975892))

(assert (= (and b!6975901 (not c!1293072)) b!6975902))

(assert (= (and b!6975902 c!1293070) b!6975900))

(assert (= (and b!6975902 (not c!1293070)) b!6975898))

(assert (= (and b!6975900 (not res!2844777)) b!6975897))

(assert (= (and b!6975898 c!1293073) b!6975893))

(assert (= (and b!6975898 (not c!1293073)) b!6975894))

(assert (= (and b!6975893 (not res!2844776)) b!6975899))

(assert (= (or b!6975899 b!6975894) bm!633203))

(assert (= (or b!6975895 b!6975893) bm!633202))

(assert (=> bm!633202 m!7661276))

(declare-fun m!7661788 () Bool)

(assert (=> b!6975897 m!7661788))

(declare-fun m!7661790 () Bool)

(assert (=> bm!633203 m!7661790))

(declare-fun m!7661792 () Bool)

(assert (=> b!6975900 m!7661792))

(assert (=> b!6974776 d!2172075))

(declare-fun d!2172077 () Bool)

(assert (=> d!2172077 (= (Exists!4098 (ite c!1292973 lambda!397939 lambda!397940)) (choose!51923 (ite c!1292973 lambda!397939 lambda!397940)))))

(declare-fun bs!1859923 () Bool)

(assert (= bs!1859923 d!2172077))

(declare-fun m!7661794 () Bool)

(assert (=> bs!1859923 m!7661794))

(assert (=> bm!633107 d!2172077))

(declare-fun d!2172079 () Bool)

(assert (=> d!2172079 true))

(assert (=> d!2172079 true))

(declare-fun res!2844781 () Bool)

(assert (=> d!2172079 (= (choose!51923 (ite c!1292874 lambda!397923 lambda!397924)) res!2844781)))

(assert (=> d!2171923 d!2172079))

(declare-fun d!2172081 () Bool)

(assert (=> d!2172081 (= (nullable!6920 (regOne!34782 r!13765)) (nullableFct!2596 (regOne!34782 r!13765)))))

(declare-fun bs!1859924 () Bool)

(assert (= bs!1859924 d!2172081))

(declare-fun m!7661796 () Bool)

(assert (=> bs!1859924 m!7661796))

(assert (=> b!6974712 d!2172081))

(declare-fun d!2172083 () Bool)

(declare-fun res!2844784 () Bool)

(declare-fun e!4192666 () Bool)

(assert (=> d!2172083 (=> res!2844784 e!4192666)))

(assert (=> d!2172083 (= res!2844784 ((_ is ElementMatch!17135) (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765))))))

(assert (=> d!2172083 (= (validRegex!8817 (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765))) e!4192666)))

(declare-fun b!6975903 () Bool)

(declare-fun e!4192661 () Bool)

(declare-fun e!4192660 () Bool)

(assert (=> b!6975903 (= e!4192661 e!4192660)))

(declare-fun c!1293075 () Bool)

(assert (=> b!6975903 (= c!1293075 ((_ is Union!17135) (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765))))))

(declare-fun bm!633204 () Bool)

(declare-fun call!633209 () Bool)

(declare-fun call!633211 () Bool)

(assert (=> bm!633204 (= call!633209 call!633211)))

(declare-fun b!6975904 () Bool)

(assert (=> b!6975904 (= e!4192666 e!4192661)))

(declare-fun c!1293074 () Bool)

(assert (=> b!6975904 (= c!1293074 ((_ is Star!17135) (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765))))))

(declare-fun b!6975905 () Bool)

(declare-fun res!2844783 () Bool)

(declare-fun e!4192665 () Bool)

(assert (=> b!6975905 (=> res!2844783 e!4192665)))

(assert (=> b!6975905 (= res!2844783 (not ((_ is Concat!25980) (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765)))))))

(assert (=> b!6975905 (= e!4192660 e!4192665)))

(declare-fun b!6975906 () Bool)

(declare-fun e!4192663 () Bool)

(assert (=> b!6975906 (= e!4192663 call!633211)))

(declare-fun b!6975907 () Bool)

(declare-fun e!4192664 () Bool)

(assert (=> b!6975907 (= e!4192665 e!4192664)))

(declare-fun res!2844782 () Bool)

(assert (=> b!6975907 (=> (not res!2844782) (not e!4192664))))

(assert (=> b!6975907 (= res!2844782 call!633209)))

(declare-fun b!6975908 () Bool)

(declare-fun call!633210 () Bool)

(assert (=> b!6975908 (= e!4192664 call!633210)))

(declare-fun b!6975909 () Bool)

(declare-fun e!4192662 () Bool)

(assert (=> b!6975909 (= e!4192662 call!633210)))

(declare-fun bm!633205 () Bool)

(assert (=> bm!633205 (= call!633211 (validRegex!8817 (ite c!1293074 (reg!17464 (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765))) (ite c!1293075 (regOne!34783 (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765))) (regOne!34782 (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765)))))))))

(declare-fun b!6975910 () Bool)

(declare-fun res!2844786 () Bool)

(assert (=> b!6975910 (=> (not res!2844786) (not e!4192662))))

(assert (=> b!6975910 (= res!2844786 call!633209)))

(assert (=> b!6975910 (= e!4192660 e!4192662)))

(declare-fun b!6975911 () Bool)

(assert (=> b!6975911 (= e!4192661 e!4192663)))

(declare-fun res!2844785 () Bool)

(assert (=> b!6975911 (= res!2844785 (not (nullable!6920 (reg!17464 (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765))))))))

(assert (=> b!6975911 (=> (not res!2844785) (not e!4192663))))

(declare-fun bm!633206 () Bool)

(assert (=> bm!633206 (= call!633210 (validRegex!8817 (ite c!1293075 (regTwo!34783 (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765))) (regTwo!34782 (ite c!1292965 (regTwo!34783 r!13765) (regTwo!34782 r!13765))))))))

(assert (= (and d!2172083 (not res!2844784)) b!6975904))

(assert (= (and b!6975904 c!1293074) b!6975911))

(assert (= (and b!6975904 (not c!1293074)) b!6975903))

(assert (= (and b!6975911 res!2844785) b!6975906))

(assert (= (and b!6975903 c!1293075) b!6975910))

(assert (= (and b!6975903 (not c!1293075)) b!6975905))

(assert (= (and b!6975910 res!2844786) b!6975909))

(assert (= (and b!6975905 (not res!2844783)) b!6975907))

(assert (= (and b!6975907 res!2844782) b!6975908))

(assert (= (or b!6975910 b!6975907) bm!633204))

(assert (= (or b!6975909 b!6975908) bm!633206))

(assert (= (or b!6975906 bm!633204) bm!633205))

(declare-fun m!7661798 () Bool)

(assert (=> bm!633205 m!7661798))

(declare-fun m!7661800 () Bool)

(assert (=> b!6975911 m!7661800))

(declare-fun m!7661802 () Bool)

(assert (=> bm!633206 m!7661802))

(assert (=> bm!633103 d!2172083))

(declare-fun d!2172085 () Bool)

(assert (=> d!2172085 (= (nullable!6920 (reg!17464 r!13765)) (nullableFct!2596 (reg!17464 r!13765)))))

(declare-fun bs!1859925 () Bool)

(assert (= bs!1859925 d!2172085))

(declare-fun m!7661804 () Bool)

(assert (=> bs!1859925 m!7661804))

(assert (=> b!6974754 d!2172085))

(declare-fun b!6975912 () Bool)

(declare-fun res!2844793 () Bool)

(declare-fun e!4192672 () Bool)

(assert (=> b!6975912 (=> res!2844793 e!4192672)))

(assert (=> b!6975912 (= res!2844793 (not ((_ is ElementMatch!17135) (h!73276 l!9142))))))

(declare-fun e!4192668 () Bool)

(assert (=> b!6975912 (= e!4192668 e!4192672)))

(declare-fun b!6975913 () Bool)

(declare-fun res!2844788 () Bool)

(declare-fun e!4192671 () Bool)

(assert (=> b!6975913 (=> (not res!2844788) (not e!4192671))))

(declare-fun call!633212 () Bool)

(assert (=> b!6975913 (= res!2844788 (not call!633212))))

(declare-fun b!6975914 () Bool)

(declare-fun e!4192673 () Bool)

(declare-fun e!4192667 () Bool)

(assert (=> b!6975914 (= e!4192673 e!4192667)))

(declare-fun res!2844790 () Bool)

(assert (=> b!6975914 (=> res!2844790 e!4192667)))

(assert (=> b!6975914 (= res!2844790 call!633212)))

(declare-fun b!6975915 () Bool)

(declare-fun res!2844794 () Bool)

(assert (=> b!6975915 (=> res!2844794 e!4192672)))

(assert (=> b!6975915 (= res!2844794 e!4192671)))

(declare-fun res!2844789 () Bool)

(assert (=> b!6975915 (=> (not res!2844789) (not e!4192671))))

(declare-fun lt!2479926 () Bool)

(assert (=> b!6975915 (= res!2844789 lt!2479926)))

(declare-fun b!6975916 () Bool)

(assert (=> b!6975916 (= e!4192667 (not (= (head!14042 s!9351) (c!1292829 (h!73276 l!9142)))))))

(declare-fun b!6975917 () Bool)

(declare-fun e!4192669 () Bool)

(assert (=> b!6975917 (= e!4192669 e!4192668)))

(declare-fun c!1293076 () Bool)

(assert (=> b!6975917 (= c!1293076 ((_ is EmptyLang!17135) (h!73276 l!9142)))))

(declare-fun b!6975918 () Bool)

(assert (=> b!6975918 (= e!4192671 (= (head!14042 s!9351) (c!1292829 (h!73276 l!9142))))))

(declare-fun d!2172087 () Bool)

(assert (=> d!2172087 e!4192669))

(declare-fun c!1293077 () Bool)

(assert (=> d!2172087 (= c!1293077 ((_ is EmptyExpr!17135) (h!73276 l!9142)))))

(declare-fun e!4192670 () Bool)

(assert (=> d!2172087 (= lt!2479926 e!4192670)))

(declare-fun c!1293078 () Bool)

(assert (=> d!2172087 (= c!1293078 (isEmpty!39030 s!9351))))

(assert (=> d!2172087 (validRegex!8817 (h!73276 l!9142))))

(assert (=> d!2172087 (= (matchR!9237 (h!73276 l!9142) s!9351) lt!2479926)))

(declare-fun b!6975919 () Bool)

(assert (=> b!6975919 (= e!4192670 (matchR!9237 (derivativeStep!5545 (h!73276 l!9142) (head!14042 s!9351)) (tail!13110 s!9351)))))

(declare-fun b!6975920 () Bool)

(assert (=> b!6975920 (= e!4192668 (not lt!2479926))))

(declare-fun b!6975921 () Bool)

(assert (=> b!6975921 (= e!4192670 (nullable!6920 (h!73276 l!9142)))))

(declare-fun bm!633207 () Bool)

(assert (=> bm!633207 (= call!633212 (isEmpty!39030 s!9351))))

(declare-fun b!6975922 () Bool)

(assert (=> b!6975922 (= e!4192669 (= lt!2479926 call!633212))))

(declare-fun b!6975923 () Bool)

(assert (=> b!6975923 (= e!4192672 e!4192673)))

(declare-fun res!2844791 () Bool)

(assert (=> b!6975923 (=> (not res!2844791) (not e!4192673))))

(assert (=> b!6975923 (= res!2844791 (not lt!2479926))))

(declare-fun b!6975924 () Bool)

(declare-fun res!2844792 () Bool)

(assert (=> b!6975924 (=> (not res!2844792) (not e!4192671))))

(assert (=> b!6975924 (= res!2844792 (isEmpty!39030 (tail!13110 s!9351)))))

(declare-fun b!6975925 () Bool)

(declare-fun res!2844787 () Bool)

(assert (=> b!6975925 (=> res!2844787 e!4192667)))

(assert (=> b!6975925 (= res!2844787 (not (isEmpty!39030 (tail!13110 s!9351))))))

(assert (= (and d!2172087 c!1293078) b!6975921))

(assert (= (and d!2172087 (not c!1293078)) b!6975919))

(assert (= (and d!2172087 c!1293077) b!6975922))

(assert (= (and d!2172087 (not c!1293077)) b!6975917))

(assert (= (and b!6975917 c!1293076) b!6975920))

(assert (= (and b!6975917 (not c!1293076)) b!6975912))

(assert (= (and b!6975912 (not res!2844793)) b!6975915))

(assert (= (and b!6975915 res!2844789) b!6975913))

(assert (= (and b!6975913 res!2844788) b!6975924))

(assert (= (and b!6975924 res!2844792) b!6975918))

(assert (= (and b!6975915 (not res!2844794)) b!6975923))

(assert (= (and b!6975923 res!2844791) b!6975914))

(assert (= (and b!6975914 (not res!2844790)) b!6975925))

(assert (= (and b!6975925 (not res!2844787)) b!6975916))

(assert (= (or b!6975922 b!6975913 b!6975914) bm!633207))

(assert (=> b!6975918 m!7661284))

(assert (=> b!6975919 m!7661284))

(assert (=> b!6975919 m!7661284))

(declare-fun m!7661806 () Bool)

(assert (=> b!6975919 m!7661806))

(assert (=> b!6975919 m!7661288))

(assert (=> b!6975919 m!7661806))

(assert (=> b!6975919 m!7661288))

(declare-fun m!7661808 () Bool)

(assert (=> b!6975919 m!7661808))

(assert (=> b!6975924 m!7661288))

(assert (=> b!6975924 m!7661288))

(assert (=> b!6975924 m!7661292))

(assert (=> d!2172087 m!7661276))

(assert (=> d!2172087 m!7661326))

(assert (=> b!6975925 m!7661288))

(assert (=> b!6975925 m!7661288))

(assert (=> b!6975925 m!7661292))

(assert (=> bm!633207 m!7661276))

(declare-fun m!7661810 () Bool)

(assert (=> b!6975921 m!7661810))

(assert (=> b!6975916 m!7661284))

(assert (=> b!6975774 d!2172087))

(declare-fun d!2172089 () Bool)

(assert (=> d!2172089 (= (head!14042 (tail!13110 s!9351)) (h!73275 (tail!13110 s!9351)))))

(assert (=> b!6974679 d!2172089))

(assert (=> bs!1859790 d!2171903))

(declare-fun bs!1859926 () Bool)

(declare-fun b!6975933 () Bool)

(assert (= bs!1859926 (and b!6975933 b!6974278)))

(declare-fun lambda!397955 () Int)

(assert (=> bs!1859926 (= (and (= (reg!17464 (regTwo!34783 (regTwo!34783 r!13765))) (reg!17464 r!13765)) (= (regTwo!34783 (regTwo!34783 r!13765)) r!13765)) (= lambda!397955 lambda!397923))))

(declare-fun bs!1859927 () Bool)

(assert (= bs!1859927 (and b!6975933 b!6974273)))

(assert (=> bs!1859927 (not (= lambda!397955 lambda!397924))))

(declare-fun bs!1859928 () Bool)

(assert (= bs!1859928 (and b!6975933 b!6975899)))

(assert (=> bs!1859928 (= (and (= (reg!17464 (regTwo!34783 (regTwo!34783 r!13765))) (reg!17464 (regOne!34783 (regOne!34783 r!13765)))) (= (regTwo!34783 (regTwo!34783 r!13765)) (regOne!34783 (regOne!34783 r!13765)))) (= lambda!397955 lambda!397953))))

(declare-fun bs!1859929 () Bool)

(assert (= bs!1859929 (and b!6975933 b!6975879)))

(assert (=> bs!1859929 (= (and (= (reg!17464 (regTwo!34783 (regTwo!34783 r!13765))) (reg!17464 (regTwo!34783 (regOne!34783 r!13765)))) (= (regTwo!34783 (regTwo!34783 r!13765)) (regTwo!34783 (regOne!34783 r!13765)))) (= lambda!397955 lambda!397951))))

(declare-fun bs!1859930 () Bool)

(assert (= bs!1859930 (and b!6975933 b!6974757)))

(assert (=> bs!1859930 (not (= lambda!397955 lambda!397938))))

(declare-fun bs!1859931 () Bool)

(assert (= bs!1859931 (and b!6975933 b!6975894)))

(assert (=> bs!1859931 (not (= lambda!397955 lambda!397954))))

(declare-fun bs!1859932 () Bool)

(assert (= bs!1859932 (and b!6975933 b!6974770)))

(assert (=> bs!1859932 (not (= lambda!397955 lambda!397940))))

(declare-fun bs!1859933 () Bool)

(assert (= bs!1859933 (and b!6975933 b!6975874)))

(assert (=> bs!1859933 (not (= lambda!397955 lambda!397952))))

(declare-fun bs!1859934 () Bool)

(assert (= bs!1859934 (and b!6975933 b!6974775)))

(assert (=> bs!1859934 (= (and (= (reg!17464 (regTwo!34783 (regTwo!34783 r!13765))) (reg!17464 (regOne!34783 r!13765))) (= (regTwo!34783 (regTwo!34783 r!13765)) (regOne!34783 r!13765))) (= lambda!397955 lambda!397939))))

(declare-fun bs!1859935 () Bool)

(assert (= bs!1859935 (and b!6975933 b!6974762)))

(assert (=> bs!1859935 (= (and (= (reg!17464 (regTwo!34783 (regTwo!34783 r!13765))) (reg!17464 (regTwo!34783 r!13765))) (= (regTwo!34783 (regTwo!34783 r!13765)) (regTwo!34783 r!13765))) (= lambda!397955 lambda!397937))))

(assert (=> b!6975933 true))

(assert (=> b!6975933 true))

(declare-fun bs!1859936 () Bool)

(declare-fun b!6975928 () Bool)

(assert (= bs!1859936 (and b!6975928 b!6974278)))

(declare-fun lambda!397956 () Int)

(assert (=> bs!1859936 (not (= lambda!397956 lambda!397923))))

(declare-fun bs!1859937 () Bool)

(assert (= bs!1859937 (and b!6975928 b!6975933)))

(assert (=> bs!1859937 (not (= lambda!397956 lambda!397955))))

(declare-fun bs!1859938 () Bool)

(assert (= bs!1859938 (and b!6975928 b!6974273)))

(assert (=> bs!1859938 (= (and (= (regOne!34782 (regTwo!34783 (regTwo!34783 r!13765))) (regOne!34782 r!13765)) (= (regTwo!34782 (regTwo!34783 (regTwo!34783 r!13765))) (regTwo!34782 r!13765))) (= lambda!397956 lambda!397924))))

(declare-fun bs!1859939 () Bool)

(assert (= bs!1859939 (and b!6975928 b!6975899)))

(assert (=> bs!1859939 (not (= lambda!397956 lambda!397953))))

(declare-fun bs!1859940 () Bool)

(assert (= bs!1859940 (and b!6975928 b!6975879)))

(assert (=> bs!1859940 (not (= lambda!397956 lambda!397951))))

(declare-fun bs!1859941 () Bool)

(assert (= bs!1859941 (and b!6975928 b!6974757)))

(assert (=> bs!1859941 (= (and (= (regOne!34782 (regTwo!34783 (regTwo!34783 r!13765))) (regOne!34782 (regTwo!34783 r!13765))) (= (regTwo!34782 (regTwo!34783 (regTwo!34783 r!13765))) (regTwo!34782 (regTwo!34783 r!13765)))) (= lambda!397956 lambda!397938))))

(declare-fun bs!1859942 () Bool)

(assert (= bs!1859942 (and b!6975928 b!6975894)))

(assert (=> bs!1859942 (= (and (= (regOne!34782 (regTwo!34783 (regTwo!34783 r!13765))) (regOne!34782 (regOne!34783 (regOne!34783 r!13765)))) (= (regTwo!34782 (regTwo!34783 (regTwo!34783 r!13765))) (regTwo!34782 (regOne!34783 (regOne!34783 r!13765))))) (= lambda!397956 lambda!397954))))

(declare-fun bs!1859943 () Bool)

(assert (= bs!1859943 (and b!6975928 b!6974770)))

(assert (=> bs!1859943 (= (and (= (regOne!34782 (regTwo!34783 (regTwo!34783 r!13765))) (regOne!34782 (regOne!34783 r!13765))) (= (regTwo!34782 (regTwo!34783 (regTwo!34783 r!13765))) (regTwo!34782 (regOne!34783 r!13765)))) (= lambda!397956 lambda!397940))))

(declare-fun bs!1859944 () Bool)

(assert (= bs!1859944 (and b!6975928 b!6975874)))

(assert (=> bs!1859944 (= (and (= (regOne!34782 (regTwo!34783 (regTwo!34783 r!13765))) (regOne!34782 (regTwo!34783 (regOne!34783 r!13765)))) (= (regTwo!34782 (regTwo!34783 (regTwo!34783 r!13765))) (regTwo!34782 (regTwo!34783 (regOne!34783 r!13765))))) (= lambda!397956 lambda!397952))))

(declare-fun bs!1859945 () Bool)

(assert (= bs!1859945 (and b!6975928 b!6974775)))

(assert (=> bs!1859945 (not (= lambda!397956 lambda!397939))))

(declare-fun bs!1859946 () Bool)

(assert (= bs!1859946 (and b!6975928 b!6974762)))

(assert (=> bs!1859946 (not (= lambda!397956 lambda!397937))))

(assert (=> b!6975928 true))

(assert (=> b!6975928 true))

(declare-fun bm!633208 () Bool)

(declare-fun call!633214 () Bool)

(assert (=> bm!633208 (= call!633214 (isEmpty!39030 s!9351))))

(declare-fun b!6975926 () Bool)

(declare-fun e!4192676 () Bool)

(assert (=> b!6975926 (= e!4192676 (= s!9351 (Cons!66827 (c!1292829 (regTwo!34783 (regTwo!34783 r!13765))) Nil!66827)))))

(declare-fun b!6975927 () Bool)

(declare-fun res!2844795 () Bool)

(declare-fun e!4192680 () Bool)

(assert (=> b!6975927 (=> res!2844795 e!4192680)))

(assert (=> b!6975927 (= res!2844795 call!633214)))

(declare-fun e!4192678 () Bool)

(assert (=> b!6975927 (= e!4192678 e!4192680)))

(declare-fun call!633213 () Bool)

(assert (=> b!6975928 (= e!4192678 call!633213)))

(declare-fun b!6975929 () Bool)

(declare-fun e!4192675 () Bool)

(assert (=> b!6975929 (= e!4192675 call!633214)))

(declare-fun b!6975930 () Bool)

(declare-fun e!4192674 () Bool)

(assert (=> b!6975930 (= e!4192675 e!4192674)))

(declare-fun res!2844797 () Bool)

(assert (=> b!6975930 (= res!2844797 (not ((_ is EmptyLang!17135) (regTwo!34783 (regTwo!34783 r!13765)))))))

(assert (=> b!6975930 (=> (not res!2844797) (not e!4192674))))

(declare-fun b!6975931 () Bool)

(declare-fun e!4192679 () Bool)

(assert (=> b!6975931 (= e!4192679 (matchRSpec!4152 (regTwo!34783 (regTwo!34783 (regTwo!34783 r!13765))) s!9351))))

(declare-fun d!2172091 () Bool)

(declare-fun c!1293080 () Bool)

(assert (=> d!2172091 (= c!1293080 ((_ is EmptyExpr!17135) (regTwo!34783 (regTwo!34783 r!13765))))))

(assert (=> d!2172091 (= (matchRSpec!4152 (regTwo!34783 (regTwo!34783 r!13765)) s!9351) e!4192675)))

(declare-fun b!6975932 () Bool)

(declare-fun e!4192677 () Bool)

(assert (=> b!6975932 (= e!4192677 e!4192678)))

(declare-fun c!1293082 () Bool)

(assert (=> b!6975932 (= c!1293082 ((_ is Star!17135) (regTwo!34783 (regTwo!34783 r!13765))))))

(assert (=> b!6975933 (= e!4192680 call!633213)))

(declare-fun bm!633209 () Bool)

(assert (=> bm!633209 (= call!633213 (Exists!4098 (ite c!1293082 lambda!397955 lambda!397956)))))

(declare-fun b!6975934 () Bool)

(assert (=> b!6975934 (= e!4192677 e!4192679)))

(declare-fun res!2844796 () Bool)

(assert (=> b!6975934 (= res!2844796 (matchRSpec!4152 (regOne!34783 (regTwo!34783 (regTwo!34783 r!13765))) s!9351))))

(assert (=> b!6975934 (=> res!2844796 e!4192679)))

(declare-fun b!6975935 () Bool)

(declare-fun c!1293081 () Bool)

(assert (=> b!6975935 (= c!1293081 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34783 r!13765))))))

(assert (=> b!6975935 (= e!4192674 e!4192676)))

(declare-fun b!6975936 () Bool)

(declare-fun c!1293079 () Bool)

(assert (=> b!6975936 (= c!1293079 ((_ is Union!17135) (regTwo!34783 (regTwo!34783 r!13765))))))

(assert (=> b!6975936 (= e!4192676 e!4192677)))

(assert (= (and d!2172091 c!1293080) b!6975929))

(assert (= (and d!2172091 (not c!1293080)) b!6975930))

(assert (= (and b!6975930 res!2844797) b!6975935))

(assert (= (and b!6975935 c!1293081) b!6975926))

(assert (= (and b!6975935 (not c!1293081)) b!6975936))

(assert (= (and b!6975936 c!1293079) b!6975934))

(assert (= (and b!6975936 (not c!1293079)) b!6975932))

(assert (= (and b!6975934 (not res!2844796)) b!6975931))

(assert (= (and b!6975932 c!1293082) b!6975927))

(assert (= (and b!6975932 (not c!1293082)) b!6975928))

(assert (= (and b!6975927 (not res!2844795)) b!6975933))

(assert (= (or b!6975933 b!6975928) bm!633209))

(assert (= (or b!6975929 b!6975927) bm!633208))

(assert (=> bm!633208 m!7661276))

(declare-fun m!7661812 () Bool)

(assert (=> b!6975931 m!7661812))

(declare-fun m!7661814 () Bool)

(assert (=> bm!633209 m!7661814))

(declare-fun m!7661816 () Bool)

(assert (=> b!6975934 m!7661816))

(assert (=> b!6974760 d!2172091))

(declare-fun d!2172093 () Bool)

(assert (=> d!2172093 (= (head!14043 (t!380695 l!9142)) (h!73276 (t!380695 l!9142)))))

(assert (=> b!6974664 d!2172093))

(declare-fun bs!1859947 () Bool)

(declare-fun b!6975944 () Bool)

(assert (= bs!1859947 (and b!6975944 b!6974278)))

(declare-fun lambda!397957 () Int)

(assert (=> bs!1859947 (= (and (= (reg!17464 (regOne!34783 (regTwo!34783 r!13765))) (reg!17464 r!13765)) (= (regOne!34783 (regTwo!34783 r!13765)) r!13765)) (= lambda!397957 lambda!397923))))

(declare-fun bs!1859948 () Bool)

(assert (= bs!1859948 (and b!6975944 b!6975933)))

(assert (=> bs!1859948 (= (and (= (reg!17464 (regOne!34783 (regTwo!34783 r!13765))) (reg!17464 (regTwo!34783 (regTwo!34783 r!13765)))) (= (regOne!34783 (regTwo!34783 r!13765)) (regTwo!34783 (regTwo!34783 r!13765)))) (= lambda!397957 lambda!397955))))

(declare-fun bs!1859949 () Bool)

(assert (= bs!1859949 (and b!6975944 b!6974273)))

(assert (=> bs!1859949 (not (= lambda!397957 lambda!397924))))

(declare-fun bs!1859950 () Bool)

(assert (= bs!1859950 (and b!6975944 b!6975899)))

(assert (=> bs!1859950 (= (and (= (reg!17464 (regOne!34783 (regTwo!34783 r!13765))) (reg!17464 (regOne!34783 (regOne!34783 r!13765)))) (= (regOne!34783 (regTwo!34783 r!13765)) (regOne!34783 (regOne!34783 r!13765)))) (= lambda!397957 lambda!397953))))

(declare-fun bs!1859951 () Bool)

(assert (= bs!1859951 (and b!6975944 b!6975928)))

(assert (=> bs!1859951 (not (= lambda!397957 lambda!397956))))

(declare-fun bs!1859952 () Bool)

(assert (= bs!1859952 (and b!6975944 b!6975879)))

(assert (=> bs!1859952 (= (and (= (reg!17464 (regOne!34783 (regTwo!34783 r!13765))) (reg!17464 (regTwo!34783 (regOne!34783 r!13765)))) (= (regOne!34783 (regTwo!34783 r!13765)) (regTwo!34783 (regOne!34783 r!13765)))) (= lambda!397957 lambda!397951))))

(declare-fun bs!1859953 () Bool)

(assert (= bs!1859953 (and b!6975944 b!6974757)))

(assert (=> bs!1859953 (not (= lambda!397957 lambda!397938))))

(declare-fun bs!1859954 () Bool)

(assert (= bs!1859954 (and b!6975944 b!6975894)))

(assert (=> bs!1859954 (not (= lambda!397957 lambda!397954))))

(declare-fun bs!1859955 () Bool)

(assert (= bs!1859955 (and b!6975944 b!6974770)))

(assert (=> bs!1859955 (not (= lambda!397957 lambda!397940))))

(declare-fun bs!1859956 () Bool)

(assert (= bs!1859956 (and b!6975944 b!6975874)))

(assert (=> bs!1859956 (not (= lambda!397957 lambda!397952))))

(declare-fun bs!1859957 () Bool)

(assert (= bs!1859957 (and b!6975944 b!6974775)))

(assert (=> bs!1859957 (= (and (= (reg!17464 (regOne!34783 (regTwo!34783 r!13765))) (reg!17464 (regOne!34783 r!13765))) (= (regOne!34783 (regTwo!34783 r!13765)) (regOne!34783 r!13765))) (= lambda!397957 lambda!397939))))

(declare-fun bs!1859958 () Bool)

(assert (= bs!1859958 (and b!6975944 b!6974762)))

(assert (=> bs!1859958 (= (and (= (reg!17464 (regOne!34783 (regTwo!34783 r!13765))) (reg!17464 (regTwo!34783 r!13765))) (= (regOne!34783 (regTwo!34783 r!13765)) (regTwo!34783 r!13765))) (= lambda!397957 lambda!397937))))

(assert (=> b!6975944 true))

(assert (=> b!6975944 true))

(declare-fun bs!1859959 () Bool)

(declare-fun b!6975939 () Bool)

(assert (= bs!1859959 (and b!6975939 b!6974278)))

(declare-fun lambda!397958 () Int)

(assert (=> bs!1859959 (not (= lambda!397958 lambda!397923))))

(declare-fun bs!1859960 () Bool)

(assert (= bs!1859960 (and b!6975939 b!6975933)))

(assert (=> bs!1859960 (not (= lambda!397958 lambda!397955))))

(declare-fun bs!1859961 () Bool)

(assert (= bs!1859961 (and b!6975939 b!6974273)))

(assert (=> bs!1859961 (= (and (= (regOne!34782 (regOne!34783 (regTwo!34783 r!13765))) (regOne!34782 r!13765)) (= (regTwo!34782 (regOne!34783 (regTwo!34783 r!13765))) (regTwo!34782 r!13765))) (= lambda!397958 lambda!397924))))

(declare-fun bs!1859962 () Bool)

(assert (= bs!1859962 (and b!6975939 b!6975899)))

(assert (=> bs!1859962 (not (= lambda!397958 lambda!397953))))

(declare-fun bs!1859963 () Bool)

(assert (= bs!1859963 (and b!6975939 b!6975928)))

(assert (=> bs!1859963 (= (and (= (regOne!34782 (regOne!34783 (regTwo!34783 r!13765))) (regOne!34782 (regTwo!34783 (regTwo!34783 r!13765)))) (= (regTwo!34782 (regOne!34783 (regTwo!34783 r!13765))) (regTwo!34782 (regTwo!34783 (regTwo!34783 r!13765))))) (= lambda!397958 lambda!397956))))

(declare-fun bs!1859964 () Bool)

(assert (= bs!1859964 (and b!6975939 b!6975944)))

(assert (=> bs!1859964 (not (= lambda!397958 lambda!397957))))

(declare-fun bs!1859965 () Bool)

(assert (= bs!1859965 (and b!6975939 b!6975879)))

(assert (=> bs!1859965 (not (= lambda!397958 lambda!397951))))

(declare-fun bs!1859966 () Bool)

(assert (= bs!1859966 (and b!6975939 b!6974757)))

(assert (=> bs!1859966 (= (and (= (regOne!34782 (regOne!34783 (regTwo!34783 r!13765))) (regOne!34782 (regTwo!34783 r!13765))) (= (regTwo!34782 (regOne!34783 (regTwo!34783 r!13765))) (regTwo!34782 (regTwo!34783 r!13765)))) (= lambda!397958 lambda!397938))))

(declare-fun bs!1859967 () Bool)

(assert (= bs!1859967 (and b!6975939 b!6975894)))

(assert (=> bs!1859967 (= (and (= (regOne!34782 (regOne!34783 (regTwo!34783 r!13765))) (regOne!34782 (regOne!34783 (regOne!34783 r!13765)))) (= (regTwo!34782 (regOne!34783 (regTwo!34783 r!13765))) (regTwo!34782 (regOne!34783 (regOne!34783 r!13765))))) (= lambda!397958 lambda!397954))))

(declare-fun bs!1859968 () Bool)

(assert (= bs!1859968 (and b!6975939 b!6974770)))

(assert (=> bs!1859968 (= (and (= (regOne!34782 (regOne!34783 (regTwo!34783 r!13765))) (regOne!34782 (regOne!34783 r!13765))) (= (regTwo!34782 (regOne!34783 (regTwo!34783 r!13765))) (regTwo!34782 (regOne!34783 r!13765)))) (= lambda!397958 lambda!397940))))

(declare-fun bs!1859969 () Bool)

(assert (= bs!1859969 (and b!6975939 b!6975874)))

(assert (=> bs!1859969 (= (and (= (regOne!34782 (regOne!34783 (regTwo!34783 r!13765))) (regOne!34782 (regTwo!34783 (regOne!34783 r!13765)))) (= (regTwo!34782 (regOne!34783 (regTwo!34783 r!13765))) (regTwo!34782 (regTwo!34783 (regOne!34783 r!13765))))) (= lambda!397958 lambda!397952))))

(declare-fun bs!1859970 () Bool)

(assert (= bs!1859970 (and b!6975939 b!6974775)))

(assert (=> bs!1859970 (not (= lambda!397958 lambda!397939))))

(declare-fun bs!1859971 () Bool)

(assert (= bs!1859971 (and b!6975939 b!6974762)))

(assert (=> bs!1859971 (not (= lambda!397958 lambda!397937))))

(assert (=> b!6975939 true))

(assert (=> b!6975939 true))

(declare-fun bm!633210 () Bool)

(declare-fun call!633216 () Bool)

(assert (=> bm!633210 (= call!633216 (isEmpty!39030 s!9351))))

(declare-fun b!6975937 () Bool)

(declare-fun e!4192683 () Bool)

(assert (=> b!6975937 (= e!4192683 (= s!9351 (Cons!66827 (c!1292829 (regOne!34783 (regTwo!34783 r!13765))) Nil!66827)))))

(declare-fun b!6975938 () Bool)

(declare-fun res!2844798 () Bool)

(declare-fun e!4192687 () Bool)

(assert (=> b!6975938 (=> res!2844798 e!4192687)))

(assert (=> b!6975938 (= res!2844798 call!633216)))

(declare-fun e!4192685 () Bool)

(assert (=> b!6975938 (= e!4192685 e!4192687)))

(declare-fun call!633215 () Bool)

(assert (=> b!6975939 (= e!4192685 call!633215)))

(declare-fun b!6975940 () Bool)

(declare-fun e!4192682 () Bool)

(assert (=> b!6975940 (= e!4192682 call!633216)))

(declare-fun b!6975941 () Bool)

(declare-fun e!4192681 () Bool)

(assert (=> b!6975941 (= e!4192682 e!4192681)))

(declare-fun res!2844800 () Bool)

(assert (=> b!6975941 (= res!2844800 (not ((_ is EmptyLang!17135) (regOne!34783 (regTwo!34783 r!13765)))))))

(assert (=> b!6975941 (=> (not res!2844800) (not e!4192681))))

(declare-fun b!6975942 () Bool)

(declare-fun e!4192686 () Bool)

(assert (=> b!6975942 (= e!4192686 (matchRSpec!4152 (regTwo!34783 (regOne!34783 (regTwo!34783 r!13765))) s!9351))))

(declare-fun d!2172095 () Bool)

(declare-fun c!1293084 () Bool)

(assert (=> d!2172095 (= c!1293084 ((_ is EmptyExpr!17135) (regOne!34783 (regTwo!34783 r!13765))))))

(assert (=> d!2172095 (= (matchRSpec!4152 (regOne!34783 (regTwo!34783 r!13765)) s!9351) e!4192682)))

(declare-fun b!6975943 () Bool)

(declare-fun e!4192684 () Bool)

(assert (=> b!6975943 (= e!4192684 e!4192685)))

(declare-fun c!1293086 () Bool)

(assert (=> b!6975943 (= c!1293086 ((_ is Star!17135) (regOne!34783 (regTwo!34783 r!13765))))))

(assert (=> b!6975944 (= e!4192687 call!633215)))

(declare-fun bm!633211 () Bool)

(assert (=> bm!633211 (= call!633215 (Exists!4098 (ite c!1293086 lambda!397957 lambda!397958)))))

(declare-fun b!6975945 () Bool)

(assert (=> b!6975945 (= e!4192684 e!4192686)))

(declare-fun res!2844799 () Bool)

(assert (=> b!6975945 (= res!2844799 (matchRSpec!4152 (regOne!34783 (regOne!34783 (regTwo!34783 r!13765))) s!9351))))

(assert (=> b!6975945 (=> res!2844799 e!4192686)))

(declare-fun b!6975946 () Bool)

(declare-fun c!1293085 () Bool)

(assert (=> b!6975946 (= c!1293085 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34783 r!13765))))))

(assert (=> b!6975946 (= e!4192681 e!4192683)))

(declare-fun b!6975947 () Bool)

(declare-fun c!1293083 () Bool)

(assert (=> b!6975947 (= c!1293083 ((_ is Union!17135) (regOne!34783 (regTwo!34783 r!13765))))))

(assert (=> b!6975947 (= e!4192683 e!4192684)))

(assert (= (and d!2172095 c!1293084) b!6975940))

(assert (= (and d!2172095 (not c!1293084)) b!6975941))

(assert (= (and b!6975941 res!2844800) b!6975946))

(assert (= (and b!6975946 c!1293085) b!6975937))

(assert (= (and b!6975946 (not c!1293085)) b!6975947))

(assert (= (and b!6975947 c!1293083) b!6975945))

(assert (= (and b!6975947 (not c!1293083)) b!6975943))

(assert (= (and b!6975945 (not res!2844799)) b!6975942))

(assert (= (and b!6975943 c!1293086) b!6975938))

(assert (= (and b!6975943 (not c!1293086)) b!6975939))

(assert (= (and b!6975938 (not res!2844798)) b!6975944))

(assert (= (or b!6975944 b!6975939) bm!633211))

(assert (= (or b!6975940 b!6975938) bm!633210))

(assert (=> bm!633210 m!7661276))

(declare-fun m!7661818 () Bool)

(assert (=> b!6975942 m!7661818))

(declare-fun m!7661820 () Bool)

(assert (=> bm!633211 m!7661820))

(declare-fun m!7661822 () Bool)

(assert (=> b!6975945 m!7661822))

(assert (=> b!6974763 d!2172095))

(declare-fun b!6975948 () Bool)

(declare-fun res!2844807 () Bool)

(declare-fun e!4192693 () Bool)

(assert (=> b!6975948 (=> res!2844807 e!4192693)))

(assert (=> b!6975948 (= res!2844807 (not ((_ is ElementMatch!17135) (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351))))))))

(declare-fun e!4192689 () Bool)

(assert (=> b!6975948 (= e!4192689 e!4192693)))

(declare-fun b!6975949 () Bool)

(declare-fun res!2844802 () Bool)

(declare-fun e!4192692 () Bool)

(assert (=> b!6975949 (=> (not res!2844802) (not e!4192692))))

(declare-fun call!633217 () Bool)

(assert (=> b!6975949 (= res!2844802 (not call!633217))))

(declare-fun b!6975950 () Bool)

(declare-fun e!4192694 () Bool)

(declare-fun e!4192688 () Bool)

(assert (=> b!6975950 (= e!4192694 e!4192688)))

(declare-fun res!2844804 () Bool)

(assert (=> b!6975950 (=> res!2844804 e!4192688)))

(assert (=> b!6975950 (= res!2844804 call!633217)))

(declare-fun b!6975951 () Bool)

(declare-fun res!2844808 () Bool)

(assert (=> b!6975951 (=> res!2844808 e!4192693)))

(assert (=> b!6975951 (= res!2844808 e!4192692)))

(declare-fun res!2844803 () Bool)

(assert (=> b!6975951 (=> (not res!2844803) (not e!4192692))))

(declare-fun lt!2479927 () Bool)

(assert (=> b!6975951 (= res!2844803 lt!2479927)))

(declare-fun b!6975952 () Bool)

(assert (=> b!6975952 (= e!4192688 (not (= (head!14042 (tail!13110 (tail!13110 s!9351))) (c!1292829 (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351)))))))))

(declare-fun b!6975953 () Bool)

(declare-fun e!4192690 () Bool)

(assert (=> b!6975953 (= e!4192690 e!4192689)))

(declare-fun c!1293087 () Bool)

(assert (=> b!6975953 (= c!1293087 ((_ is EmptyLang!17135) (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351)))))))

(declare-fun b!6975954 () Bool)

(assert (=> b!6975954 (= e!4192692 (= (head!14042 (tail!13110 (tail!13110 s!9351))) (c!1292829 (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351))))))))

(declare-fun d!2172097 () Bool)

(assert (=> d!2172097 e!4192690))

(declare-fun c!1293088 () Bool)

(assert (=> d!2172097 (= c!1293088 ((_ is EmptyExpr!17135) (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351)))))))

(declare-fun e!4192691 () Bool)

(assert (=> d!2172097 (= lt!2479927 e!4192691)))

(declare-fun c!1293089 () Bool)

(assert (=> d!2172097 (= c!1293089 (isEmpty!39030 (tail!13110 (tail!13110 s!9351))))))

(assert (=> d!2172097 (validRegex!8817 (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351))))))

(assert (=> d!2172097 (= (matchR!9237 (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351))) (tail!13110 (tail!13110 s!9351))) lt!2479927)))

(declare-fun b!6975955 () Bool)

(assert (=> b!6975955 (= e!4192691 (matchR!9237 (derivativeStep!5545 (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351))) (head!14042 (tail!13110 (tail!13110 s!9351)))) (tail!13110 (tail!13110 (tail!13110 s!9351)))))))

(declare-fun b!6975956 () Bool)

(assert (=> b!6975956 (= e!4192689 (not lt!2479927))))

(declare-fun b!6975957 () Bool)

(assert (=> b!6975957 (= e!4192691 (nullable!6920 (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351)))))))

(declare-fun bm!633212 () Bool)

(assert (=> bm!633212 (= call!633217 (isEmpty!39030 (tail!13110 (tail!13110 s!9351))))))

(declare-fun b!6975958 () Bool)

(assert (=> b!6975958 (= e!4192690 (= lt!2479927 call!633217))))

(declare-fun b!6975959 () Bool)

(assert (=> b!6975959 (= e!4192693 e!4192694)))

(declare-fun res!2844805 () Bool)

(assert (=> b!6975959 (=> (not res!2844805) (not e!4192694))))

(assert (=> b!6975959 (= res!2844805 (not lt!2479927))))

(declare-fun b!6975960 () Bool)

(declare-fun res!2844806 () Bool)

(assert (=> b!6975960 (=> (not res!2844806) (not e!4192692))))

(assert (=> b!6975960 (= res!2844806 (isEmpty!39030 (tail!13110 (tail!13110 (tail!13110 s!9351)))))))

(declare-fun b!6975961 () Bool)

(declare-fun res!2844801 () Bool)

(assert (=> b!6975961 (=> res!2844801 e!4192688)))

(assert (=> b!6975961 (= res!2844801 (not (isEmpty!39030 (tail!13110 (tail!13110 (tail!13110 s!9351))))))))

(assert (= (and d!2172097 c!1293089) b!6975957))

(assert (= (and d!2172097 (not c!1293089)) b!6975955))

(assert (= (and d!2172097 c!1293088) b!6975958))

(assert (= (and d!2172097 (not c!1293088)) b!6975953))

(assert (= (and b!6975953 c!1293087) b!6975956))

(assert (= (and b!6975953 (not c!1293087)) b!6975948))

(assert (= (and b!6975948 (not res!2844807)) b!6975951))

(assert (= (and b!6975951 res!2844803) b!6975949))

(assert (= (and b!6975949 res!2844802) b!6975960))

(assert (= (and b!6975960 res!2844806) b!6975954))

(assert (= (and b!6975951 (not res!2844808)) b!6975959))

(assert (= (and b!6975959 res!2844805) b!6975950))

(assert (= (and b!6975950 (not res!2844804)) b!6975961))

(assert (= (and b!6975961 (not res!2844801)) b!6975952))

(assert (= (or b!6975958 b!6975949 b!6975950) bm!633212))

(assert (=> b!6975954 m!7661444))

(declare-fun m!7661824 () Bool)

(assert (=> b!6975954 m!7661824))

(assert (=> b!6975955 m!7661444))

(assert (=> b!6975955 m!7661824))

(assert (=> b!6975955 m!7661442))

(assert (=> b!6975955 m!7661824))

(declare-fun m!7661826 () Bool)

(assert (=> b!6975955 m!7661826))

(assert (=> b!6975955 m!7661444))

(declare-fun m!7661828 () Bool)

(assert (=> b!6975955 m!7661828))

(assert (=> b!6975955 m!7661826))

(assert (=> b!6975955 m!7661828))

(declare-fun m!7661830 () Bool)

(assert (=> b!6975955 m!7661830))

(assert (=> b!6975960 m!7661444))

(assert (=> b!6975960 m!7661828))

(assert (=> b!6975960 m!7661828))

(declare-fun m!7661832 () Bool)

(assert (=> b!6975960 m!7661832))

(assert (=> d!2172097 m!7661444))

(assert (=> d!2172097 m!7661448))

(assert (=> d!2172097 m!7661442))

(declare-fun m!7661834 () Bool)

(assert (=> d!2172097 m!7661834))

(assert (=> b!6975961 m!7661444))

(assert (=> b!6975961 m!7661828))

(assert (=> b!6975961 m!7661828))

(assert (=> b!6975961 m!7661832))

(assert (=> bm!633212 m!7661444))

(assert (=> bm!633212 m!7661448))

(assert (=> b!6975957 m!7661442))

(declare-fun m!7661836 () Bool)

(assert (=> b!6975957 m!7661836))

(assert (=> b!6975952 m!7661444))

(assert (=> b!6975952 m!7661824))

(assert (=> b!6974682 d!2172097))

(declare-fun b!6975962 () Bool)

(declare-fun e!4192697 () Regex!17135)

(declare-fun e!4192699 () Regex!17135)

(assert (=> b!6975962 (= e!4192697 e!4192699)))

(declare-fun c!1293090 () Bool)

(assert (=> b!6975962 (= c!1293090 ((_ is Star!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(declare-fun b!6975963 () Bool)

(declare-fun call!633221 () Regex!17135)

(declare-fun call!633220 () Regex!17135)

(assert (=> b!6975963 (= e!4192697 (Union!17135 call!633221 call!633220))))

(declare-fun b!6975964 () Bool)

(declare-fun e!4192698 () Regex!17135)

(assert (=> b!6975964 (= e!4192698 EmptyLang!17135)))

(declare-fun bm!633213 () Bool)

(declare-fun call!633218 () Regex!17135)

(assert (=> bm!633213 (= call!633218 call!633220)))

(declare-fun b!6975965 () Bool)

(declare-fun c!1293093 () Bool)

(assert (=> b!6975965 (= c!1293093 (nullable!6920 (regOne!34782 (derivativeStep!5545 r!13765 (head!14042 s!9351)))))))

(declare-fun e!4192695 () Regex!17135)

(assert (=> b!6975965 (= e!4192699 e!4192695)))

(declare-fun b!6975966 () Bool)

(declare-fun c!1293091 () Bool)

(assert (=> b!6975966 (= c!1293091 ((_ is Union!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(declare-fun e!4192696 () Regex!17135)

(assert (=> b!6975966 (= e!4192696 e!4192697)))

(declare-fun b!6975967 () Bool)

(declare-fun call!633219 () Regex!17135)

(assert (=> b!6975967 (= e!4192695 (Union!17135 (Concat!25980 call!633219 (regTwo!34782 (derivativeStep!5545 r!13765 (head!14042 s!9351)))) call!633218))))

(declare-fun bm!633214 () Bool)

(assert (=> bm!633214 (= call!633219 call!633221)))

(declare-fun bm!633215 () Bool)

(assert (=> bm!633215 (= call!633220 (derivativeStep!5545 (ite c!1293091 (regTwo!34783 (derivativeStep!5545 r!13765 (head!14042 s!9351))) (ite c!1293093 (regTwo!34782 (derivativeStep!5545 r!13765 (head!14042 s!9351))) (regOne!34782 (derivativeStep!5545 r!13765 (head!14042 s!9351))))) (head!14042 (tail!13110 s!9351))))))

(declare-fun b!6975969 () Bool)

(assert (=> b!6975969 (= e!4192696 (ite (= (head!14042 (tail!13110 s!9351)) (c!1292829 (derivativeStep!5545 r!13765 (head!14042 s!9351)))) EmptyExpr!17135 EmptyLang!17135))))

(declare-fun b!6975970 () Bool)

(assert (=> b!6975970 (= e!4192698 e!4192696)))

(declare-fun c!1293092 () Bool)

(assert (=> b!6975970 (= c!1293092 ((_ is ElementMatch!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(declare-fun bm!633216 () Bool)

(assert (=> bm!633216 (= call!633221 (derivativeStep!5545 (ite c!1293091 (regOne!34783 (derivativeStep!5545 r!13765 (head!14042 s!9351))) (ite c!1293090 (reg!17464 (derivativeStep!5545 r!13765 (head!14042 s!9351))) (regOne!34782 (derivativeStep!5545 r!13765 (head!14042 s!9351))))) (head!14042 (tail!13110 s!9351))))))

(declare-fun b!6975971 () Bool)

(assert (=> b!6975971 (= e!4192695 (Union!17135 (Concat!25980 call!633218 (regTwo!34782 (derivativeStep!5545 r!13765 (head!14042 s!9351)))) EmptyLang!17135))))

(declare-fun d!2172099 () Bool)

(declare-fun lt!2479928 () Regex!17135)

(assert (=> d!2172099 (validRegex!8817 lt!2479928)))

(assert (=> d!2172099 (= lt!2479928 e!4192698)))

(declare-fun c!1293094 () Bool)

(assert (=> d!2172099 (= c!1293094 (or ((_ is EmptyExpr!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351))) ((_ is EmptyLang!17135) (derivativeStep!5545 r!13765 (head!14042 s!9351)))))))

(assert (=> d!2172099 (validRegex!8817 (derivativeStep!5545 r!13765 (head!14042 s!9351)))))

(assert (=> d!2172099 (= (derivativeStep!5545 (derivativeStep!5545 r!13765 (head!14042 s!9351)) (head!14042 (tail!13110 s!9351))) lt!2479928)))

(declare-fun b!6975968 () Bool)

(assert (=> b!6975968 (= e!4192699 (Concat!25980 call!633219 (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(assert (= (and d!2172099 c!1293094) b!6975964))

(assert (= (and d!2172099 (not c!1293094)) b!6975970))

(assert (= (and b!6975970 c!1293092) b!6975969))

(assert (= (and b!6975970 (not c!1293092)) b!6975966))

(assert (= (and b!6975966 c!1293091) b!6975963))

(assert (= (and b!6975966 (not c!1293091)) b!6975962))

(assert (= (and b!6975962 c!1293090) b!6975968))

(assert (= (and b!6975962 (not c!1293090)) b!6975965))

(assert (= (and b!6975965 c!1293093) b!6975967))

(assert (= (and b!6975965 (not c!1293093)) b!6975971))

(assert (= (or b!6975967 b!6975971) bm!633213))

(assert (= (or b!6975968 b!6975967) bm!633214))

(assert (= (or b!6975963 bm!633214) bm!633216))

(assert (= (or b!6975963 bm!633213) bm!633215))

(declare-fun m!7661838 () Bool)

(assert (=> b!6975965 m!7661838))

(assert (=> bm!633215 m!7661440))

(declare-fun m!7661840 () Bool)

(assert (=> bm!633215 m!7661840))

(assert (=> bm!633216 m!7661440))

(declare-fun m!7661842 () Bool)

(assert (=> bm!633216 m!7661842))

(declare-fun m!7661844 () Bool)

(assert (=> d!2172099 m!7661844))

(assert (=> d!2172099 m!7661286))

(assert (=> d!2172099 m!7661450))

(assert (=> b!6974682 d!2172099))

(assert (=> b!6974682 d!2172089))

(assert (=> b!6974682 d!2172055))

(assert (=> b!6974681 d!2172089))

(declare-fun d!2172101 () Bool)

(assert (=> d!2172101 (= (Exists!4098 (ite c!1292969 lambda!397937 lambda!397938)) (choose!51923 (ite c!1292969 lambda!397937 lambda!397938)))))

(declare-fun bs!1859972 () Bool)

(assert (= bs!1859972 d!2172101))

(declare-fun m!7661846 () Bool)

(assert (=> bs!1859972 m!7661846))

(assert (=> bm!633105 d!2172101))

(declare-fun d!2172103 () Bool)

(assert (=> d!2172103 (= (isEmpty!39031 (t!380695 (t!380695 l!9142))) ((_ is Nil!66828) (t!380695 (t!380695 l!9142))))))

(assert (=> b!6974663 d!2172103))

(declare-fun d!2172105 () Bool)

(declare-fun res!2844809 () Bool)

(declare-fun e!4192700 () Bool)

(assert (=> d!2172105 (=> res!2844809 e!4192700)))

(assert (=> d!2172105 (= res!2844809 ((_ is Nil!66828) (t!380695 l!9142)))))

(assert (=> d!2172105 (= (forall!16006 (t!380695 l!9142) lambda!397930) e!4192700)))

(declare-fun b!6975972 () Bool)

(declare-fun e!4192701 () Bool)

(assert (=> b!6975972 (= e!4192700 e!4192701)))

(declare-fun res!2844810 () Bool)

(assert (=> b!6975972 (=> (not res!2844810) (not e!4192701))))

(assert (=> b!6975972 (= res!2844810 (dynLambda!26652 lambda!397930 (h!73276 (t!380695 l!9142))))))

(declare-fun b!6975973 () Bool)

(assert (=> b!6975973 (= e!4192701 (forall!16006 (t!380695 (t!380695 l!9142)) lambda!397930))))

(assert (= (and d!2172105 (not res!2844809)) b!6975972))

(assert (= (and b!6975972 res!2844810) b!6975973))

(declare-fun b_lambda!260989 () Bool)

(assert (=> (not b_lambda!260989) (not b!6975972)))

(declare-fun m!7661848 () Bool)

(assert (=> b!6975972 m!7661848))

(declare-fun m!7661850 () Bool)

(assert (=> b!6975973 m!7661850))

(assert (=> b!6974789 d!2172105))

(assert (=> bm!633079 d!2171915))

(declare-fun d!2172107 () Bool)

(assert (=> d!2172107 (= (isUnion!1501 lt!2479913) ((_ is Union!17135) lt!2479913))))

(assert (=> b!6974667 d!2172107))

(declare-fun b!6975974 () Bool)

(declare-fun e!4192704 () Regex!17135)

(declare-fun e!4192706 () Regex!17135)

(assert (=> b!6975974 (= e!4192704 e!4192706)))

(declare-fun c!1293095 () Bool)

(assert (=> b!6975974 (= c!1293095 ((_ is Star!17135) (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))))))

(declare-fun b!6975975 () Bool)

(declare-fun call!633225 () Regex!17135)

(declare-fun call!633224 () Regex!17135)

(assert (=> b!6975975 (= e!4192704 (Union!17135 call!633225 call!633224))))

(declare-fun b!6975976 () Bool)

(declare-fun e!4192705 () Regex!17135)

(assert (=> b!6975976 (= e!4192705 EmptyLang!17135)))

(declare-fun bm!633217 () Bool)

(declare-fun call!633222 () Regex!17135)

(assert (=> bm!633217 (= call!633222 call!633224)))

(declare-fun b!6975977 () Bool)

(declare-fun c!1293098 () Bool)

(assert (=> b!6975977 (= c!1293098 (nullable!6920 (regOne!34782 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765))))))))

(declare-fun e!4192702 () Regex!17135)

(assert (=> b!6975977 (= e!4192706 e!4192702)))

(declare-fun c!1293096 () Bool)

(declare-fun b!6975978 () Bool)

(assert (=> b!6975978 (= c!1293096 ((_ is Union!17135) (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))))))

(declare-fun e!4192703 () Regex!17135)

(assert (=> b!6975978 (= e!4192703 e!4192704)))

(declare-fun call!633223 () Regex!17135)

(declare-fun b!6975979 () Bool)

(assert (=> b!6975979 (= e!4192702 (Union!17135 (Concat!25980 call!633223 (regTwo!34782 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765))))) call!633222))))

(declare-fun bm!633218 () Bool)

(assert (=> bm!633218 (= call!633223 call!633225)))

(declare-fun bm!633219 () Bool)

(assert (=> bm!633219 (= call!633224 (derivativeStep!5545 (ite c!1293096 (regTwo!34783 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))) (ite c!1293098 (regTwo!34782 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))) (regOne!34782 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))))) (head!14042 s!9351)))))

(declare-fun b!6975981 () Bool)

(assert (=> b!6975981 (= e!4192703 (ite (= (head!14042 s!9351) (c!1292829 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765))))) EmptyExpr!17135 EmptyLang!17135))))

(declare-fun b!6975982 () Bool)

(assert (=> b!6975982 (= e!4192705 e!4192703)))

(declare-fun c!1293097 () Bool)

(assert (=> b!6975982 (= c!1293097 ((_ is ElementMatch!17135) (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))))))

(declare-fun bm!633220 () Bool)

(assert (=> bm!633220 (= call!633225 (derivativeStep!5545 (ite c!1293096 (regOne!34783 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))) (ite c!1293095 (reg!17464 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))) (regOne!34782 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))))) (head!14042 s!9351)))))

(declare-fun b!6975983 () Bool)

(assert (=> b!6975983 (= e!4192702 (Union!17135 (Concat!25980 call!633222 (regTwo!34782 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765))))) EmptyLang!17135))))

(declare-fun d!2172109 () Bool)

(declare-fun lt!2479929 () Regex!17135)

(assert (=> d!2172109 (validRegex!8817 lt!2479929)))

(assert (=> d!2172109 (= lt!2479929 e!4192705)))

(declare-fun c!1293099 () Bool)

(assert (=> d!2172109 (= c!1293099 (or ((_ is EmptyExpr!17135) (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))) ((_ is EmptyLang!17135) (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765))))))))

(assert (=> d!2172109 (validRegex!8817 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765))))))

(assert (=> d!2172109 (= (derivativeStep!5545 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765))) (head!14042 s!9351)) lt!2479929)))

(declare-fun b!6975980 () Bool)

(assert (=> b!6975980 (= e!4192706 (Concat!25980 call!633223 (ite c!1292954 (regTwo!34783 r!13765) (ite c!1292956 (regTwo!34782 r!13765) (regOne!34782 r!13765)))))))

(assert (= (and d!2172109 c!1293099) b!6975976))

(assert (= (and d!2172109 (not c!1293099)) b!6975982))

(assert (= (and b!6975982 c!1293097) b!6975981))

(assert (= (and b!6975982 (not c!1293097)) b!6975978))

(assert (= (and b!6975978 c!1293096) b!6975975))

(assert (= (and b!6975978 (not c!1293096)) b!6975974))

(assert (= (and b!6975974 c!1293095) b!6975980))

(assert (= (and b!6975974 (not c!1293095)) b!6975977))

(assert (= (and b!6975977 c!1293098) b!6975979))

(assert (= (and b!6975977 (not c!1293098)) b!6975983))

(assert (= (or b!6975979 b!6975983) bm!633217))

(assert (= (or b!6975980 b!6975979) bm!633218))

(assert (= (or b!6975975 bm!633218) bm!633220))

(assert (= (or b!6975975 bm!633217) bm!633219))

(declare-fun m!7661852 () Bool)

(assert (=> b!6975977 m!7661852))

(assert (=> bm!633219 m!7661284))

(declare-fun m!7661854 () Bool)

(assert (=> bm!633219 m!7661854))

(assert (=> bm!633220 m!7661284))

(declare-fun m!7661856 () Bool)

(assert (=> bm!633220 m!7661856))

(declare-fun m!7661858 () Bool)

(assert (=> d!2172109 m!7661858))

(declare-fun m!7661860 () Bool)

(assert (=> d!2172109 m!7661860))

(assert (=> bm!633090 d!2172109))

(declare-fun d!2172111 () Bool)

(assert (=> d!2172111 (= (isEmpty!39031 (tail!13111 (t!380695 l!9142))) ((_ is Nil!66828) (tail!13111 (t!380695 l!9142))))))

(assert (=> b!6974666 d!2172111))

(declare-fun d!2172113 () Bool)

(assert (=> d!2172113 (= (tail!13111 (t!380695 l!9142)) (t!380695 (t!380695 l!9142)))))

(assert (=> b!6974666 d!2172113))

(assert (=> d!2171909 d!2171821))

(assert (=> d!2171909 d!2171807))

(declare-fun d!2172115 () Bool)

(declare-fun res!2844813 () Bool)

(declare-fun e!4192713 () Bool)

(assert (=> d!2172115 (=> res!2844813 e!4192713)))

(assert (=> d!2172115 (= res!2844813 ((_ is ElementMatch!17135) (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142))))))))

(assert (=> d!2172115 (= (validRegex!8817 (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142))))) e!4192713)))

(declare-fun b!6975984 () Bool)

(declare-fun e!4192708 () Bool)

(declare-fun e!4192707 () Bool)

(assert (=> b!6975984 (= e!4192708 e!4192707)))

(declare-fun c!1293101 () Bool)

(assert (=> b!6975984 (= c!1293101 ((_ is Union!17135) (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142))))))))

(declare-fun bm!633221 () Bool)

(declare-fun call!633226 () Bool)

(declare-fun call!633228 () Bool)

(assert (=> bm!633221 (= call!633226 call!633228)))

(declare-fun b!6975985 () Bool)

(assert (=> b!6975985 (= e!4192713 e!4192708)))

(declare-fun c!1293100 () Bool)

(assert (=> b!6975985 (= c!1293100 ((_ is Star!17135) (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142))))))))

(declare-fun b!6975986 () Bool)

(declare-fun res!2844812 () Bool)

(declare-fun e!4192712 () Bool)

(assert (=> b!6975986 (=> res!2844812 e!4192712)))

(assert (=> b!6975986 (= res!2844812 (not ((_ is Concat!25980) (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142)))))))))

(assert (=> b!6975986 (= e!4192707 e!4192712)))

(declare-fun b!6975987 () Bool)

(declare-fun e!4192710 () Bool)

(assert (=> b!6975987 (= e!4192710 call!633228)))

(declare-fun b!6975988 () Bool)

(declare-fun e!4192711 () Bool)

(assert (=> b!6975988 (= e!4192712 e!4192711)))

(declare-fun res!2844811 () Bool)

(assert (=> b!6975988 (=> (not res!2844811) (not e!4192711))))

(assert (=> b!6975988 (= res!2844811 call!633226)))

(declare-fun b!6975989 () Bool)

(declare-fun call!633227 () Bool)

(assert (=> b!6975989 (= e!4192711 call!633227)))

(declare-fun b!6975990 () Bool)

(declare-fun e!4192709 () Bool)

(assert (=> b!6975990 (= e!4192709 call!633227)))

(declare-fun bm!633222 () Bool)

(assert (=> bm!633222 (= call!633228 (validRegex!8817 (ite c!1293100 (reg!17464 (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142))))) (ite c!1293101 (regOne!34783 (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142))))) (regOne!34782 (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142)))))))))))

(declare-fun b!6975991 () Bool)

(declare-fun res!2844815 () Bool)

(assert (=> b!6975991 (=> (not res!2844815) (not e!4192709))))

(assert (=> b!6975991 (= res!2844815 call!633226)))

(assert (=> b!6975991 (= e!4192707 e!4192709)))

(declare-fun b!6975992 () Bool)

(assert (=> b!6975992 (= e!4192708 e!4192710)))

(declare-fun res!2844814 () Bool)

(assert (=> b!6975992 (= res!2844814 (not (nullable!6920 (reg!17464 (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142))))))))))

(assert (=> b!6975992 (=> (not res!2844814) (not e!4192710))))

(declare-fun bm!633223 () Bool)

(assert (=> bm!633223 (= call!633227 (validRegex!8817 (ite c!1293101 (regTwo!34783 (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142))))) (regTwo!34782 (ite c!1292962 (reg!17464 (h!73276 l!9142)) (ite c!1292963 (regOne!34783 (h!73276 l!9142)) (regOne!34782 (h!73276 l!9142))))))))))

(assert (= (and d!2172115 (not res!2844813)) b!6975985))

(assert (= (and b!6975985 c!1293100) b!6975992))

(assert (= (and b!6975985 (not c!1293100)) b!6975984))

(assert (= (and b!6975992 res!2844814) b!6975987))

(assert (= (and b!6975984 c!1293101) b!6975991))

(assert (= (and b!6975984 (not c!1293101)) b!6975986))

(assert (= (and b!6975991 res!2844815) b!6975990))

(assert (= (and b!6975986 (not res!2844812)) b!6975988))

(assert (= (and b!6975988 res!2844811) b!6975989))

(assert (= (or b!6975991 b!6975988) bm!633221))

(assert (= (or b!6975990 b!6975989) bm!633223))

(assert (= (or b!6975987 bm!633221) bm!633222))

(declare-fun m!7661862 () Bool)

(assert (=> bm!633222 m!7661862))

(declare-fun m!7661864 () Bool)

(assert (=> b!6975992 m!7661864))

(declare-fun m!7661866 () Bool)

(assert (=> bm!633223 m!7661866))

(assert (=> bm!633099 d!2172115))

(declare-fun d!2172117 () Bool)

(declare-fun res!2844816 () Bool)

(declare-fun e!4192714 () Bool)

(assert (=> d!2172117 (=> res!2844816 e!4192714)))

(assert (=> d!2172117 (= res!2844816 ((_ is Nil!66828) (t!380695 (t!380695 l!9142))))))

(assert (=> d!2172117 (= (forall!16006 (t!380695 (t!380695 l!9142)) lambda!397905) e!4192714)))

(declare-fun b!6975993 () Bool)

(declare-fun e!4192715 () Bool)

(assert (=> b!6975993 (= e!4192714 e!4192715)))

(declare-fun res!2844817 () Bool)

(assert (=> b!6975993 (=> (not res!2844817) (not e!4192715))))

(assert (=> b!6975993 (= res!2844817 (dynLambda!26652 lambda!397905 (h!73276 (t!380695 (t!380695 l!9142)))))))

(declare-fun b!6975994 () Bool)

(assert (=> b!6975994 (= e!4192715 (forall!16006 (t!380695 (t!380695 (t!380695 l!9142))) lambda!397905))))

(assert (= (and d!2172117 (not res!2844816)) b!6975993))

(assert (= (and b!6975993 res!2844817) b!6975994))

(declare-fun b_lambda!260991 () Bool)

(assert (=> (not b_lambda!260991) (not b!6975993)))

(declare-fun m!7661868 () Bool)

(assert (=> b!6975993 m!7661868))

(declare-fun m!7661870 () Bool)

(assert (=> b!6975994 m!7661870))

(assert (=> b!6974674 d!2172117))

(declare-fun d!2172119 () Bool)

(declare-fun res!2844820 () Bool)

(declare-fun e!4192722 () Bool)

(assert (=> d!2172119 (=> res!2844820 e!4192722)))

(assert (=> d!2172119 (= res!2844820 ((_ is ElementMatch!17135) lt!2479917))))

(assert (=> d!2172119 (= (validRegex!8817 lt!2479917) e!4192722)))

(declare-fun b!6975995 () Bool)

(declare-fun e!4192717 () Bool)

(declare-fun e!4192716 () Bool)

(assert (=> b!6975995 (= e!4192717 e!4192716)))

(declare-fun c!1293103 () Bool)

(assert (=> b!6975995 (= c!1293103 ((_ is Union!17135) lt!2479917))))

(declare-fun bm!633224 () Bool)

(declare-fun call!633229 () Bool)

(declare-fun call!633231 () Bool)

(assert (=> bm!633224 (= call!633229 call!633231)))

(declare-fun b!6975996 () Bool)

(assert (=> b!6975996 (= e!4192722 e!4192717)))

(declare-fun c!1293102 () Bool)

(assert (=> b!6975996 (= c!1293102 ((_ is Star!17135) lt!2479917))))

(declare-fun b!6975997 () Bool)

(declare-fun res!2844819 () Bool)

(declare-fun e!4192721 () Bool)

(assert (=> b!6975997 (=> res!2844819 e!4192721)))

(assert (=> b!6975997 (= res!2844819 (not ((_ is Concat!25980) lt!2479917)))))

(assert (=> b!6975997 (= e!4192716 e!4192721)))

(declare-fun b!6975998 () Bool)

(declare-fun e!4192719 () Bool)

(assert (=> b!6975998 (= e!4192719 call!633231)))

(declare-fun b!6975999 () Bool)

(declare-fun e!4192720 () Bool)

(assert (=> b!6975999 (= e!4192721 e!4192720)))

(declare-fun res!2844818 () Bool)

(assert (=> b!6975999 (=> (not res!2844818) (not e!4192720))))

(assert (=> b!6975999 (= res!2844818 call!633229)))

(declare-fun b!6976000 () Bool)

(declare-fun call!633230 () Bool)

(assert (=> b!6976000 (= e!4192720 call!633230)))

(declare-fun b!6976001 () Bool)

(declare-fun e!4192718 () Bool)

(assert (=> b!6976001 (= e!4192718 call!633230)))

(declare-fun bm!633225 () Bool)

(assert (=> bm!633225 (= call!633231 (validRegex!8817 (ite c!1293102 (reg!17464 lt!2479917) (ite c!1293103 (regOne!34783 lt!2479917) (regOne!34782 lt!2479917)))))))

(declare-fun b!6976002 () Bool)

(declare-fun res!2844822 () Bool)

(assert (=> b!6976002 (=> (not res!2844822) (not e!4192718))))

(assert (=> b!6976002 (= res!2844822 call!633229)))

(assert (=> b!6976002 (= e!4192716 e!4192718)))

(declare-fun b!6976003 () Bool)

(assert (=> b!6976003 (= e!4192717 e!4192719)))

(declare-fun res!2844821 () Bool)

(assert (=> b!6976003 (= res!2844821 (not (nullable!6920 (reg!17464 lt!2479917))))))

(assert (=> b!6976003 (=> (not res!2844821) (not e!4192719))))

(declare-fun bm!633226 () Bool)

(assert (=> bm!633226 (= call!633230 (validRegex!8817 (ite c!1293103 (regTwo!34783 lt!2479917) (regTwo!34782 lt!2479917))))))

(assert (= (and d!2172119 (not res!2844820)) b!6975996))

(assert (= (and b!6975996 c!1293102) b!6976003))

(assert (= (and b!6975996 (not c!1293102)) b!6975995))

(assert (= (and b!6976003 res!2844821) b!6975998))

(assert (= (and b!6975995 c!1293103) b!6976002))

(assert (= (and b!6975995 (not c!1293103)) b!6975997))

(assert (= (and b!6976002 res!2844822) b!6976001))

(assert (= (and b!6975997 (not res!2844819)) b!6975999))

(assert (= (and b!6975999 res!2844818) b!6976000))

(assert (= (or b!6976002 b!6975999) bm!633224))

(assert (= (or b!6976001 b!6976000) bm!633226))

(assert (= (or b!6975998 bm!633224) bm!633225))

(declare-fun m!7661872 () Bool)

(assert (=> bm!633225 m!7661872))

(declare-fun m!7661874 () Bool)

(assert (=> b!6976003 m!7661874))

(declare-fun m!7661876 () Bool)

(assert (=> bm!633226 m!7661876))

(assert (=> d!2171899 d!2172119))

(assert (=> d!2171899 d!2171911))

(declare-fun d!2172121 () Bool)

(declare-fun res!2844823 () Bool)

(declare-fun e!4192723 () Bool)

(assert (=> d!2172121 (=> res!2844823 e!4192723)))

(assert (=> d!2172121 (= res!2844823 ((_ is Nil!66828) (t!380695 l!9142)))))

(assert (=> d!2172121 (= (forall!16006 (t!380695 l!9142) lambda!397927) e!4192723)))

(declare-fun b!6976004 () Bool)

(declare-fun e!4192724 () Bool)

(assert (=> b!6976004 (= e!4192723 e!4192724)))

(declare-fun res!2844824 () Bool)

(assert (=> b!6976004 (=> (not res!2844824) (not e!4192724))))

(assert (=> b!6976004 (= res!2844824 (dynLambda!26652 lambda!397927 (h!73276 (t!380695 l!9142))))))

(declare-fun b!6976005 () Bool)

(assert (=> b!6976005 (= e!4192724 (forall!16006 (t!380695 (t!380695 l!9142)) lambda!397927))))

(assert (= (and d!2172121 (not res!2844823)) b!6976004))

(assert (= (and b!6976004 res!2844824) b!6976005))

(declare-fun b_lambda!260993 () Bool)

(assert (=> (not b_lambda!260993) (not b!6976004)))

(declare-fun m!7661878 () Bool)

(assert (=> b!6976004 m!7661878))

(declare-fun m!7661880 () Bool)

(assert (=> b!6976005 m!7661880))

(assert (=> b!6974767 d!2172121))

(declare-fun d!2172123 () Bool)

(assert (=> d!2172123 (= (nullable!6920 (derivativeStep!5545 r!13765 (head!14042 s!9351))) (nullableFct!2596 (derivativeStep!5545 r!13765 (head!14042 s!9351))))))

(declare-fun bs!1859973 () Bool)

(assert (= bs!1859973 d!2172123))

(assert (=> bs!1859973 m!7661286))

(declare-fun m!7661882 () Bool)

(assert (=> bs!1859973 m!7661882))

(assert (=> b!6974684 d!2172123))

(declare-fun e!4192725 () Bool)

(assert (=> b!6974873 (= tp!1925370 e!4192725)))

(declare-fun b!6976007 () Bool)

(declare-fun tp!1926208 () Bool)

(declare-fun tp!1926206 () Bool)

(assert (=> b!6976007 (= e!4192725 (and tp!1926208 tp!1926206))))

(declare-fun b!6976006 () Bool)

(assert (=> b!6976006 (= e!4192725 tp_is_empty!43495)))

(declare-fun b!6976009 () Bool)

(declare-fun tp!1926205 () Bool)

(declare-fun tp!1926209 () Bool)

(assert (=> b!6976009 (= e!4192725 (and tp!1926205 tp!1926209))))

(declare-fun b!6976008 () Bool)

(declare-fun tp!1926207 () Bool)

(assert (=> b!6976008 (= e!4192725 tp!1926207)))

(assert (= (and b!6974873 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34782 (regOne!34782 r!13765))))) b!6976006))

(assert (= (and b!6974873 ((_ is Concat!25980) (regOne!34782 (regOne!34782 (regOne!34782 r!13765))))) b!6976007))

(assert (= (and b!6974873 ((_ is Star!17135) (regOne!34782 (regOne!34782 (regOne!34782 r!13765))))) b!6976008))

(assert (= (and b!6974873 ((_ is Union!17135) (regOne!34782 (regOne!34782 (regOne!34782 r!13765))))) b!6976009))

(declare-fun e!4192726 () Bool)

(assert (=> b!6974873 (= tp!1925368 e!4192726)))

(declare-fun b!6976011 () Bool)

(declare-fun tp!1926213 () Bool)

(declare-fun tp!1926211 () Bool)

(assert (=> b!6976011 (= e!4192726 (and tp!1926213 tp!1926211))))

(declare-fun b!6976010 () Bool)

(assert (=> b!6976010 (= e!4192726 tp_is_empty!43495)))

(declare-fun b!6976013 () Bool)

(declare-fun tp!1926210 () Bool)

(declare-fun tp!1926214 () Bool)

(assert (=> b!6976013 (= e!4192726 (and tp!1926210 tp!1926214))))

(declare-fun b!6976012 () Bool)

(declare-fun tp!1926212 () Bool)

(assert (=> b!6976012 (= e!4192726 tp!1926212)))

(assert (= (and b!6974873 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34782 (regOne!34782 r!13765))))) b!6976010))

(assert (= (and b!6974873 ((_ is Concat!25980) (regTwo!34782 (regOne!34782 (regOne!34782 r!13765))))) b!6976011))

(assert (= (and b!6974873 ((_ is Star!17135) (regTwo!34782 (regOne!34782 (regOne!34782 r!13765))))) b!6976012))

(assert (= (and b!6974873 ((_ is Union!17135) (regTwo!34782 (regOne!34782 (regOne!34782 r!13765))))) b!6976013))

(declare-fun e!4192727 () Bool)

(assert (=> b!6974848 (= tp!1925339 e!4192727)))

(declare-fun b!6976015 () Bool)

(declare-fun tp!1926218 () Bool)

(declare-fun tp!1926216 () Bool)

(assert (=> b!6976015 (= e!4192727 (and tp!1926218 tp!1926216))))

(declare-fun b!6976014 () Bool)

(assert (=> b!6976014 (= e!4192727 tp_is_empty!43495)))

(declare-fun b!6976017 () Bool)

(declare-fun tp!1926215 () Bool)

(declare-fun tp!1926219 () Bool)

(assert (=> b!6976017 (= e!4192727 (and tp!1926215 tp!1926219))))

(declare-fun b!6976016 () Bool)

(declare-fun tp!1926217 () Bool)

(assert (=> b!6976016 (= e!4192727 tp!1926217)))

(assert (= (and b!6974848 ((_ is ElementMatch!17135) (regOne!34782 (reg!17464 (regOne!34782 r!13765))))) b!6976014))

(assert (= (and b!6974848 ((_ is Concat!25980) (regOne!34782 (reg!17464 (regOne!34782 r!13765))))) b!6976015))

(assert (= (and b!6974848 ((_ is Star!17135) (regOne!34782 (reg!17464 (regOne!34782 r!13765))))) b!6976016))

(assert (= (and b!6974848 ((_ is Union!17135) (regOne!34782 (reg!17464 (regOne!34782 r!13765))))) b!6976017))

(declare-fun e!4192728 () Bool)

(assert (=> b!6974848 (= tp!1925337 e!4192728)))

(declare-fun b!6976019 () Bool)

(declare-fun tp!1926223 () Bool)

(declare-fun tp!1926221 () Bool)

(assert (=> b!6976019 (= e!4192728 (and tp!1926223 tp!1926221))))

(declare-fun b!6976018 () Bool)

(assert (=> b!6976018 (= e!4192728 tp_is_empty!43495)))

(declare-fun b!6976021 () Bool)

(declare-fun tp!1926220 () Bool)

(declare-fun tp!1926224 () Bool)

(assert (=> b!6976021 (= e!4192728 (and tp!1926220 tp!1926224))))

(declare-fun b!6976020 () Bool)

(declare-fun tp!1926222 () Bool)

(assert (=> b!6976020 (= e!4192728 tp!1926222)))

(assert (= (and b!6974848 ((_ is ElementMatch!17135) (regTwo!34782 (reg!17464 (regOne!34782 r!13765))))) b!6976018))

(assert (= (and b!6974848 ((_ is Concat!25980) (regTwo!34782 (reg!17464 (regOne!34782 r!13765))))) b!6976019))

(assert (= (and b!6974848 ((_ is Star!17135) (regTwo!34782 (reg!17464 (regOne!34782 r!13765))))) b!6976020))

(assert (= (and b!6974848 ((_ is Union!17135) (regTwo!34782 (reg!17464 (regOne!34782 r!13765))))) b!6976021))

(declare-fun e!4192729 () Bool)

(assert (=> b!6974882 (= tp!1925379 e!4192729)))

(declare-fun b!6976023 () Bool)

(declare-fun tp!1926228 () Bool)

(declare-fun tp!1926226 () Bool)

(assert (=> b!6976023 (= e!4192729 (and tp!1926228 tp!1926226))))

(declare-fun b!6976022 () Bool)

(assert (=> b!6976022 (= e!4192729 tp_is_empty!43495)))

(declare-fun b!6976025 () Bool)

(declare-fun tp!1926225 () Bool)

(declare-fun tp!1926229 () Bool)

(assert (=> b!6976025 (= e!4192729 (and tp!1926225 tp!1926229))))

(declare-fun b!6976024 () Bool)

(declare-fun tp!1926227 () Bool)

(assert (=> b!6976024 (= e!4192729 tp!1926227)))

(assert (= (and b!6974882 ((_ is ElementMatch!17135) (reg!17464 (reg!17464 (h!73276 l!9142))))) b!6976022))

(assert (= (and b!6974882 ((_ is Concat!25980) (reg!17464 (reg!17464 (h!73276 l!9142))))) b!6976023))

(assert (= (and b!6974882 ((_ is Star!17135) (reg!17464 (reg!17464 (h!73276 l!9142))))) b!6976024))

(assert (= (and b!6974882 ((_ is Union!17135) (reg!17464 (reg!17464 (h!73276 l!9142))))) b!6976025))

(declare-fun e!4192730 () Bool)

(assert (=> b!6974891 (= tp!1925387 e!4192730)))

(declare-fun b!6976027 () Bool)

(declare-fun tp!1926233 () Bool)

(declare-fun tp!1926231 () Bool)

(assert (=> b!6976027 (= e!4192730 (and tp!1926233 tp!1926231))))

(declare-fun b!6976026 () Bool)

(assert (=> b!6976026 (= e!4192730 tp_is_empty!43495)))

(declare-fun b!6976029 () Bool)

(declare-fun tp!1926230 () Bool)

(declare-fun tp!1926234 () Bool)

(assert (=> b!6976029 (= e!4192730 (and tp!1926230 tp!1926234))))

(declare-fun b!6976028 () Bool)

(declare-fun tp!1926232 () Bool)

(assert (=> b!6976028 (= e!4192730 tp!1926232)))

(assert (= (and b!6974891 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976026))

(assert (= (and b!6974891 ((_ is Concat!25980) (regOne!34783 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976027))

(assert (= (and b!6974891 ((_ is Star!17135) (regOne!34783 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976028))

(assert (= (and b!6974891 ((_ is Union!17135) (regOne!34783 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976029))

(declare-fun e!4192731 () Bool)

(assert (=> b!6974891 (= tp!1925391 e!4192731)))

(declare-fun b!6976031 () Bool)

(declare-fun tp!1926238 () Bool)

(declare-fun tp!1926236 () Bool)

(assert (=> b!6976031 (= e!4192731 (and tp!1926238 tp!1926236))))

(declare-fun b!6976030 () Bool)

(assert (=> b!6976030 (= e!4192731 tp_is_empty!43495)))

(declare-fun b!6976033 () Bool)

(declare-fun tp!1926235 () Bool)

(declare-fun tp!1926239 () Bool)

(assert (=> b!6976033 (= e!4192731 (and tp!1926235 tp!1926239))))

(declare-fun b!6976032 () Bool)

(declare-fun tp!1926237 () Bool)

(assert (=> b!6976032 (= e!4192731 tp!1926237)))

(assert (= (and b!6974891 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976030))

(assert (= (and b!6974891 ((_ is Concat!25980) (regTwo!34783 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976031))

(assert (= (and b!6974891 ((_ is Star!17135) (regTwo!34783 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976032))

(assert (= (and b!6974891 ((_ is Union!17135) (regTwo!34783 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976033))

(declare-fun e!4192732 () Bool)

(assert (=> b!6974833 (= tp!1925314 e!4192732)))

(declare-fun b!6976035 () Bool)

(declare-fun tp!1926243 () Bool)

(declare-fun tp!1926241 () Bool)

(assert (=> b!6976035 (= e!4192732 (and tp!1926243 tp!1926241))))

(declare-fun b!6976034 () Bool)

(assert (=> b!6976034 (= e!4192732 tp_is_empty!43495)))

(declare-fun b!6976037 () Bool)

(declare-fun tp!1926240 () Bool)

(declare-fun tp!1926244 () Bool)

(assert (=> b!6976037 (= e!4192732 (and tp!1926240 tp!1926244))))

(declare-fun b!6976036 () Bool)

(declare-fun tp!1926242 () Bool)

(assert (=> b!6976036 (= e!4192732 tp!1926242)))

(assert (= (and b!6974833 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976034))

(assert (= (and b!6974833 ((_ is Concat!25980) (regOne!34783 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976035))

(assert (= (and b!6974833 ((_ is Star!17135) (regOne!34783 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976036))

(assert (= (and b!6974833 ((_ is Union!17135) (regOne!34783 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976037))

(declare-fun e!4192733 () Bool)

(assert (=> b!6974833 (= tp!1925318 e!4192733)))

(declare-fun b!6976039 () Bool)

(declare-fun tp!1926248 () Bool)

(declare-fun tp!1926246 () Bool)

(assert (=> b!6976039 (= e!4192733 (and tp!1926248 tp!1926246))))

(declare-fun b!6976038 () Bool)

(assert (=> b!6976038 (= e!4192733 tp_is_empty!43495)))

(declare-fun b!6976041 () Bool)

(declare-fun tp!1926245 () Bool)

(declare-fun tp!1926249 () Bool)

(assert (=> b!6976041 (= e!4192733 (and tp!1926245 tp!1926249))))

(declare-fun b!6976040 () Bool)

(declare-fun tp!1926247 () Bool)

(assert (=> b!6976040 (= e!4192733 tp!1926247)))

(assert (= (and b!6974833 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976038))

(assert (= (and b!6974833 ((_ is Concat!25980) (regTwo!34783 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976039))

(assert (= (and b!6974833 ((_ is Star!17135) (regTwo!34783 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976040))

(assert (= (and b!6974833 ((_ is Union!17135) (regTwo!34783 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976041))

(declare-fun e!4192734 () Bool)

(assert (=> b!6974815 (= tp!1925297 e!4192734)))

(declare-fun b!6976043 () Bool)

(declare-fun tp!1926253 () Bool)

(declare-fun tp!1926251 () Bool)

(assert (=> b!6976043 (= e!4192734 (and tp!1926253 tp!1926251))))

(declare-fun b!6976042 () Bool)

(assert (=> b!6976042 (= e!4192734 tp_is_empty!43495)))

(declare-fun b!6976045 () Bool)

(declare-fun tp!1926250 () Bool)

(declare-fun tp!1926254 () Bool)

(assert (=> b!6976045 (= e!4192734 (and tp!1926250 tp!1926254))))

(declare-fun b!6976044 () Bool)

(declare-fun tp!1926252 () Bool)

(assert (=> b!6976044 (= e!4192734 tp!1926252)))

(assert (= (and b!6974815 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34782 (reg!17464 r!13765))))) b!6976042))

(assert (= (and b!6974815 ((_ is Concat!25980) (regOne!34782 (regTwo!34782 (reg!17464 r!13765))))) b!6976043))

(assert (= (and b!6974815 ((_ is Star!17135) (regOne!34782 (regTwo!34782 (reg!17464 r!13765))))) b!6976044))

(assert (= (and b!6974815 ((_ is Union!17135) (regOne!34782 (regTwo!34782 (reg!17464 r!13765))))) b!6976045))

(declare-fun e!4192735 () Bool)

(assert (=> b!6974815 (= tp!1925295 e!4192735)))

(declare-fun b!6976047 () Bool)

(declare-fun tp!1926258 () Bool)

(declare-fun tp!1926256 () Bool)

(assert (=> b!6976047 (= e!4192735 (and tp!1926258 tp!1926256))))

(declare-fun b!6976046 () Bool)

(assert (=> b!6976046 (= e!4192735 tp_is_empty!43495)))

(declare-fun b!6976049 () Bool)

(declare-fun tp!1926255 () Bool)

(declare-fun tp!1926259 () Bool)

(assert (=> b!6976049 (= e!4192735 (and tp!1926255 tp!1926259))))

(declare-fun b!6976048 () Bool)

(declare-fun tp!1926257 () Bool)

(assert (=> b!6976048 (= e!4192735 tp!1926257)))

(assert (= (and b!6974815 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34782 (reg!17464 r!13765))))) b!6976046))

(assert (= (and b!6974815 ((_ is Concat!25980) (regTwo!34782 (regTwo!34782 (reg!17464 r!13765))))) b!6976047))

(assert (= (and b!6974815 ((_ is Star!17135) (regTwo!34782 (regTwo!34782 (reg!17464 r!13765))))) b!6976048))

(assert (= (and b!6974815 ((_ is Union!17135) (regTwo!34782 (regTwo!34782 (reg!17464 r!13765))))) b!6976049))

(declare-fun e!4192736 () Bool)

(assert (=> b!6974824 (= tp!1925306 e!4192736)))

(declare-fun b!6976051 () Bool)

(declare-fun tp!1926263 () Bool)

(declare-fun tp!1926261 () Bool)

(assert (=> b!6976051 (= e!4192736 (and tp!1926263 tp!1926261))))

(declare-fun b!6976050 () Bool)

(assert (=> b!6976050 (= e!4192736 tp_is_empty!43495)))

(declare-fun b!6976053 () Bool)

(declare-fun tp!1926260 () Bool)

(declare-fun tp!1926264 () Bool)

(assert (=> b!6976053 (= e!4192736 (and tp!1926260 tp!1926264))))

(declare-fun b!6976052 () Bool)

(declare-fun tp!1926262 () Bool)

(assert (=> b!6976052 (= e!4192736 tp!1926262)))

(assert (= (and b!6974824 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34782 (regOne!34783 r!13765))))) b!6976050))

(assert (= (and b!6974824 ((_ is Concat!25980) (reg!17464 (regTwo!34782 (regOne!34783 r!13765))))) b!6976051))

(assert (= (and b!6974824 ((_ is Star!17135) (reg!17464 (regTwo!34782 (regOne!34783 r!13765))))) b!6976052))

(assert (= (and b!6974824 ((_ is Union!17135) (reg!17464 (regTwo!34782 (regOne!34783 r!13765))))) b!6976053))

(declare-fun e!4192737 () Bool)

(assert (=> b!6974859 (= tp!1925347 e!4192737)))

(declare-fun b!6976055 () Bool)

(declare-fun tp!1926268 () Bool)

(declare-fun tp!1926266 () Bool)

(assert (=> b!6976055 (= e!4192737 (and tp!1926268 tp!1926266))))

(declare-fun b!6976054 () Bool)

(assert (=> b!6976054 (= e!4192737 tp_is_empty!43495)))

(declare-fun b!6976057 () Bool)

(declare-fun tp!1926265 () Bool)

(declare-fun tp!1926269 () Bool)

(assert (=> b!6976057 (= e!4192737 (and tp!1926265 tp!1926269))))

(declare-fun b!6976056 () Bool)

(declare-fun tp!1926267 () Bool)

(assert (=> b!6976056 (= e!4192737 tp!1926267)))

(assert (= (and b!6974859 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34783 (h!73276 l!9142))))) b!6976054))

(assert (= (and b!6974859 ((_ is Concat!25980) (regOne!34783 (regTwo!34783 (h!73276 l!9142))))) b!6976055))

(assert (= (and b!6974859 ((_ is Star!17135) (regOne!34783 (regTwo!34783 (h!73276 l!9142))))) b!6976056))

(assert (= (and b!6974859 ((_ is Union!17135) (regOne!34783 (regTwo!34783 (h!73276 l!9142))))) b!6976057))

(declare-fun e!4192738 () Bool)

(assert (=> b!6974859 (= tp!1925351 e!4192738)))

(declare-fun b!6976059 () Bool)

(declare-fun tp!1926273 () Bool)

(declare-fun tp!1926271 () Bool)

(assert (=> b!6976059 (= e!4192738 (and tp!1926273 tp!1926271))))

(declare-fun b!6976058 () Bool)

(assert (=> b!6976058 (= e!4192738 tp_is_empty!43495)))

(declare-fun b!6976061 () Bool)

(declare-fun tp!1926270 () Bool)

(declare-fun tp!1926274 () Bool)

(assert (=> b!6976061 (= e!4192738 (and tp!1926270 tp!1926274))))

(declare-fun b!6976060 () Bool)

(declare-fun tp!1926272 () Bool)

(assert (=> b!6976060 (= e!4192738 tp!1926272)))

(assert (= (and b!6974859 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34783 (h!73276 l!9142))))) b!6976058))

(assert (= (and b!6974859 ((_ is Concat!25980) (regTwo!34783 (regTwo!34783 (h!73276 l!9142))))) b!6976059))

(assert (= (and b!6974859 ((_ is Star!17135) (regTwo!34783 (regTwo!34783 (h!73276 l!9142))))) b!6976060))

(assert (= (and b!6974859 ((_ is Union!17135) (regTwo!34783 (regTwo!34783 (h!73276 l!9142))))) b!6976061))

(declare-fun e!4192739 () Bool)

(assert (=> b!6974793 (= tp!1925264 e!4192739)))

(declare-fun b!6976063 () Bool)

(declare-fun tp!1926278 () Bool)

(declare-fun tp!1926276 () Bool)

(assert (=> b!6976063 (= e!4192739 (and tp!1926278 tp!1926276))))

(declare-fun b!6976062 () Bool)

(assert (=> b!6976062 (= e!4192739 tp_is_empty!43495)))

(declare-fun b!6976065 () Bool)

(declare-fun tp!1926275 () Bool)

(declare-fun tp!1926279 () Bool)

(assert (=> b!6976065 (= e!4192739 (and tp!1926275 tp!1926279))))

(declare-fun b!6976064 () Bool)

(declare-fun tp!1926277 () Bool)

(assert (=> b!6976064 (= e!4192739 tp!1926277)))

(assert (= (and b!6974793 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34783 (regOne!34782 r!13765))))) b!6976062))

(assert (= (and b!6974793 ((_ is Concat!25980) (regOne!34783 (regOne!34783 (regOne!34782 r!13765))))) b!6976063))

(assert (= (and b!6974793 ((_ is Star!17135) (regOne!34783 (regOne!34783 (regOne!34782 r!13765))))) b!6976064))

(assert (= (and b!6974793 ((_ is Union!17135) (regOne!34783 (regOne!34783 (regOne!34782 r!13765))))) b!6976065))

(declare-fun e!4192740 () Bool)

(assert (=> b!6974793 (= tp!1925268 e!4192740)))

(declare-fun b!6976067 () Bool)

(declare-fun tp!1926283 () Bool)

(declare-fun tp!1926281 () Bool)

(assert (=> b!6976067 (= e!4192740 (and tp!1926283 tp!1926281))))

(declare-fun b!6976066 () Bool)

(assert (=> b!6976066 (= e!4192740 tp_is_empty!43495)))

(declare-fun b!6976069 () Bool)

(declare-fun tp!1926280 () Bool)

(declare-fun tp!1926284 () Bool)

(assert (=> b!6976069 (= e!4192740 (and tp!1926280 tp!1926284))))

(declare-fun b!6976068 () Bool)

(declare-fun tp!1926282 () Bool)

(assert (=> b!6976068 (= e!4192740 tp!1926282)))

(assert (= (and b!6974793 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34783 (regOne!34782 r!13765))))) b!6976066))

(assert (= (and b!6974793 ((_ is Concat!25980) (regTwo!34783 (regOne!34783 (regOne!34782 r!13765))))) b!6976067))

(assert (= (and b!6974793 ((_ is Star!17135) (regTwo!34783 (regOne!34783 (regOne!34782 r!13765))))) b!6976068))

(assert (= (and b!6974793 ((_ is Union!17135) (regTwo!34783 (regOne!34783 (regOne!34782 r!13765))))) b!6976069))

(declare-fun e!4192741 () Bool)

(assert (=> b!6974894 (= tp!1925394 e!4192741)))

(declare-fun b!6976071 () Bool)

(declare-fun tp!1926288 () Bool)

(declare-fun tp!1926286 () Bool)

(assert (=> b!6976071 (= e!4192741 (and tp!1926288 tp!1926286))))

(declare-fun b!6976070 () Bool)

(assert (=> b!6976070 (= e!4192741 tp_is_empty!43495)))

(declare-fun b!6976073 () Bool)

(declare-fun tp!1926285 () Bool)

(declare-fun tp!1926289 () Bool)

(assert (=> b!6976073 (= e!4192741 (and tp!1926285 tp!1926289))))

(declare-fun b!6976072 () Bool)

(declare-fun tp!1926287 () Bool)

(assert (=> b!6976072 (= e!4192741 tp!1926287)))

(assert (= (and b!6974894 ((_ is ElementMatch!17135) (reg!17464 (regOne!34782 (regTwo!34782 r!13765))))) b!6976070))

(assert (= (and b!6974894 ((_ is Concat!25980) (reg!17464 (regOne!34782 (regTwo!34782 r!13765))))) b!6976071))

(assert (= (and b!6974894 ((_ is Star!17135) (reg!17464 (regOne!34782 (regTwo!34782 r!13765))))) b!6976072))

(assert (= (and b!6974894 ((_ is Union!17135) (reg!17464 (regOne!34782 (regTwo!34782 r!13765))))) b!6976073))

(declare-fun e!4192742 () Bool)

(assert (=> b!6974903 (= tp!1925402 e!4192742)))

(declare-fun b!6976075 () Bool)

(declare-fun tp!1926293 () Bool)

(declare-fun tp!1926291 () Bool)

(assert (=> b!6976075 (= e!4192742 (and tp!1926293 tp!1926291))))

(declare-fun b!6976074 () Bool)

(assert (=> b!6976074 (= e!4192742 tp_is_empty!43495)))

(declare-fun b!6976077 () Bool)

(declare-fun tp!1926290 () Bool)

(declare-fun tp!1926294 () Bool)

(assert (=> b!6976077 (= e!4192742 (and tp!1926290 tp!1926294))))

(declare-fun b!6976076 () Bool)

(declare-fun tp!1926292 () Bool)

(assert (=> b!6976076 (= e!4192742 tp!1926292)))

(assert (= (and b!6974903 ((_ is ElementMatch!17135) (regOne!34783 (reg!17464 (regOne!34783 r!13765))))) b!6976074))

(assert (= (and b!6974903 ((_ is Concat!25980) (regOne!34783 (reg!17464 (regOne!34783 r!13765))))) b!6976075))

(assert (= (and b!6974903 ((_ is Star!17135) (regOne!34783 (reg!17464 (regOne!34783 r!13765))))) b!6976076))

(assert (= (and b!6974903 ((_ is Union!17135) (regOne!34783 (reg!17464 (regOne!34783 r!13765))))) b!6976077))

(declare-fun e!4192743 () Bool)

(assert (=> b!6974903 (= tp!1925406 e!4192743)))

(declare-fun b!6976079 () Bool)

(declare-fun tp!1926298 () Bool)

(declare-fun tp!1926296 () Bool)

(assert (=> b!6976079 (= e!4192743 (and tp!1926298 tp!1926296))))

(declare-fun b!6976078 () Bool)

(assert (=> b!6976078 (= e!4192743 tp_is_empty!43495)))

(declare-fun b!6976081 () Bool)

(declare-fun tp!1926295 () Bool)

(declare-fun tp!1926299 () Bool)

(assert (=> b!6976081 (= e!4192743 (and tp!1926295 tp!1926299))))

(declare-fun b!6976080 () Bool)

(declare-fun tp!1926297 () Bool)

(assert (=> b!6976080 (= e!4192743 tp!1926297)))

(assert (= (and b!6974903 ((_ is ElementMatch!17135) (regTwo!34783 (reg!17464 (regOne!34783 r!13765))))) b!6976078))

(assert (= (and b!6974903 ((_ is Concat!25980) (regTwo!34783 (reg!17464 (regOne!34783 r!13765))))) b!6976079))

(assert (= (and b!6974903 ((_ is Star!17135) (regTwo!34783 (reg!17464 (regOne!34783 r!13765))))) b!6976080))

(assert (= (and b!6974903 ((_ is Union!17135) (regTwo!34783 (reg!17464 (regOne!34783 r!13765))))) b!6976081))

(declare-fun e!4192744 () Bool)

(assert (=> b!6974885 (= tp!1925385 e!4192744)))

(declare-fun b!6976083 () Bool)

(declare-fun tp!1926303 () Bool)

(declare-fun tp!1926301 () Bool)

(assert (=> b!6976083 (= e!4192744 (and tp!1926303 tp!1926301))))

(declare-fun b!6976082 () Bool)

(assert (=> b!6976082 (= e!4192744 tp_is_empty!43495)))

(declare-fun b!6976085 () Bool)

(declare-fun tp!1926300 () Bool)

(declare-fun tp!1926304 () Bool)

(assert (=> b!6976085 (= e!4192744 (and tp!1926300 tp!1926304))))

(declare-fun b!6976084 () Bool)

(declare-fun tp!1926302 () Bool)

(assert (=> b!6976084 (= e!4192744 tp!1926302)))

(assert (= (and b!6974885 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34783 (regTwo!34783 r!13765))))) b!6976082))

(assert (= (and b!6974885 ((_ is Concat!25980) (regOne!34782 (regOne!34783 (regTwo!34783 r!13765))))) b!6976083))

(assert (= (and b!6974885 ((_ is Star!17135) (regOne!34782 (regOne!34783 (regTwo!34783 r!13765))))) b!6976084))

(assert (= (and b!6974885 ((_ is Union!17135) (regOne!34782 (regOne!34783 (regTwo!34783 r!13765))))) b!6976085))

(declare-fun e!4192745 () Bool)

(assert (=> b!6974885 (= tp!1925383 e!4192745)))

(declare-fun b!6976087 () Bool)

(declare-fun tp!1926308 () Bool)

(declare-fun tp!1926306 () Bool)

(assert (=> b!6976087 (= e!4192745 (and tp!1926308 tp!1926306))))

(declare-fun b!6976086 () Bool)

(assert (=> b!6976086 (= e!4192745 tp_is_empty!43495)))

(declare-fun b!6976089 () Bool)

(declare-fun tp!1926305 () Bool)

(declare-fun tp!1926309 () Bool)

(assert (=> b!6976089 (= e!4192745 (and tp!1926305 tp!1926309))))

(declare-fun b!6976088 () Bool)

(declare-fun tp!1926307 () Bool)

(assert (=> b!6976088 (= e!4192745 tp!1926307)))

(assert (= (and b!6974885 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34783 (regTwo!34783 r!13765))))) b!6976086))

(assert (= (and b!6974885 ((_ is Concat!25980) (regTwo!34782 (regOne!34783 (regTwo!34783 r!13765))))) b!6976087))

(assert (= (and b!6974885 ((_ is Star!17135) (regTwo!34782 (regOne!34783 (regTwo!34783 r!13765))))) b!6976088))

(assert (= (and b!6974885 ((_ is Union!17135) (regTwo!34782 (regOne!34783 (regTwo!34783 r!13765))))) b!6976089))

(declare-fun e!4192746 () Bool)

(assert (=> b!6974827 (= tp!1925312 e!4192746)))

(declare-fun b!6976091 () Bool)

(declare-fun tp!1926313 () Bool)

(declare-fun tp!1926311 () Bool)

(assert (=> b!6976091 (= e!4192746 (and tp!1926313 tp!1926311))))

(declare-fun b!6976090 () Bool)

(assert (=> b!6976090 (= e!4192746 tp_is_empty!43495)))

(declare-fun b!6976093 () Bool)

(declare-fun tp!1926310 () Bool)

(declare-fun tp!1926314 () Bool)

(assert (=> b!6976093 (= e!4192746 (and tp!1926310 tp!1926314))))

(declare-fun b!6976092 () Bool)

(declare-fun tp!1926312 () Bool)

(assert (=> b!6976092 (= e!4192746 tp!1926312)))

(assert (= (and b!6974827 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34782 (regTwo!34783 r!13765))))) b!6976090))

(assert (= (and b!6974827 ((_ is Concat!25980) (regOne!34782 (regOne!34782 (regTwo!34783 r!13765))))) b!6976091))

(assert (= (and b!6974827 ((_ is Star!17135) (regOne!34782 (regOne!34782 (regTwo!34783 r!13765))))) b!6976092))

(assert (= (and b!6974827 ((_ is Union!17135) (regOne!34782 (regOne!34782 (regTwo!34783 r!13765))))) b!6976093))

(declare-fun e!4192747 () Bool)

(assert (=> b!6974827 (= tp!1925310 e!4192747)))

(declare-fun b!6976095 () Bool)

(declare-fun tp!1926318 () Bool)

(declare-fun tp!1926316 () Bool)

(assert (=> b!6976095 (= e!4192747 (and tp!1926318 tp!1926316))))

(declare-fun b!6976094 () Bool)

(assert (=> b!6976094 (= e!4192747 tp_is_empty!43495)))

(declare-fun b!6976097 () Bool)

(declare-fun tp!1926315 () Bool)

(declare-fun tp!1926319 () Bool)

(assert (=> b!6976097 (= e!4192747 (and tp!1926315 tp!1926319))))

(declare-fun b!6976096 () Bool)

(declare-fun tp!1926317 () Bool)

(assert (=> b!6976096 (= e!4192747 tp!1926317)))

(assert (= (and b!6974827 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34782 (regTwo!34783 r!13765))))) b!6976094))

(assert (= (and b!6974827 ((_ is Concat!25980) (regTwo!34782 (regOne!34782 (regTwo!34783 r!13765))))) b!6976095))

(assert (= (and b!6974827 ((_ is Star!17135) (regTwo!34782 (regOne!34782 (regTwo!34783 r!13765))))) b!6976096))

(assert (= (and b!6974827 ((_ is Union!17135) (regTwo!34782 (regOne!34782 (regTwo!34783 r!13765))))) b!6976097))

(declare-fun e!4192748 () Bool)

(assert (=> b!6974836 (= tp!1925321 e!4192748)))

(declare-fun b!6976099 () Bool)

(declare-fun tp!1926323 () Bool)

(declare-fun tp!1926321 () Bool)

(assert (=> b!6976099 (= e!4192748 (and tp!1926323 tp!1926321))))

(declare-fun b!6976098 () Bool)

(assert (=> b!6976098 (= e!4192748 tp_is_empty!43495)))

(declare-fun b!6976101 () Bool)

(declare-fun tp!1926320 () Bool)

(declare-fun tp!1926324 () Bool)

(assert (=> b!6976101 (= e!4192748 (and tp!1926320 tp!1926324))))

(declare-fun b!6976100 () Bool)

(declare-fun tp!1926322 () Bool)

(assert (=> b!6976100 (= e!4192748 tp!1926322)))

(assert (= (and b!6974836 ((_ is ElementMatch!17135) (reg!17464 (h!73276 (t!380695 l!9142))))) b!6976098))

(assert (= (and b!6974836 ((_ is Concat!25980) (reg!17464 (h!73276 (t!380695 l!9142))))) b!6976099))

(assert (= (and b!6974836 ((_ is Star!17135) (reg!17464 (h!73276 (t!380695 l!9142))))) b!6976100))

(assert (= (and b!6974836 ((_ is Union!17135) (reg!17464 (h!73276 (t!380695 l!9142))))) b!6976101))

(declare-fun e!4192749 () Bool)

(assert (=> b!6974862 (= tp!1925354 e!4192749)))

(declare-fun b!6976103 () Bool)

(declare-fun tp!1926328 () Bool)

(declare-fun tp!1926326 () Bool)

(assert (=> b!6976103 (= e!4192749 (and tp!1926328 tp!1926326))))

(declare-fun b!6976102 () Bool)

(assert (=> b!6976102 (= e!4192749 tp_is_empty!43495)))

(declare-fun b!6976105 () Bool)

(declare-fun tp!1926325 () Bool)

(declare-fun tp!1926329 () Bool)

(assert (=> b!6976105 (= e!4192749 (and tp!1926325 tp!1926329))))

(declare-fun b!6976104 () Bool)

(declare-fun tp!1926327 () Bool)

(assert (=> b!6976104 (= e!4192749 tp!1926327)))

(assert (= (and b!6974862 ((_ is ElementMatch!17135) (reg!17464 (reg!17464 (regTwo!34782 r!13765))))) b!6976102))

(assert (= (and b!6974862 ((_ is Concat!25980) (reg!17464 (reg!17464 (regTwo!34782 r!13765))))) b!6976103))

(assert (= (and b!6974862 ((_ is Star!17135) (reg!17464 (reg!17464 (regTwo!34782 r!13765))))) b!6976104))

(assert (= (and b!6974862 ((_ is Union!17135) (reg!17464 (reg!17464 (regTwo!34782 r!13765))))) b!6976105))

(declare-fun e!4192750 () Bool)

(assert (=> b!6974871 (= tp!1925362 e!4192750)))

(declare-fun b!6976107 () Bool)

(declare-fun tp!1926333 () Bool)

(declare-fun tp!1926331 () Bool)

(assert (=> b!6976107 (= e!4192750 (and tp!1926333 tp!1926331))))

(declare-fun b!6976106 () Bool)

(assert (=> b!6976106 (= e!4192750 tp_is_empty!43495)))

(declare-fun b!6976109 () Bool)

(declare-fun tp!1926330 () Bool)

(declare-fun tp!1926334 () Bool)

(assert (=> b!6976109 (= e!4192750 (and tp!1926330 tp!1926334))))

(declare-fun b!6976108 () Bool)

(declare-fun tp!1926332 () Bool)

(assert (=> b!6976108 (= e!4192750 tp!1926332)))

(assert (= (and b!6974871 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34783 (regOne!34783 r!13765))))) b!6976106))

(assert (= (and b!6974871 ((_ is Concat!25980) (regOne!34783 (regTwo!34783 (regOne!34783 r!13765))))) b!6976107))

(assert (= (and b!6974871 ((_ is Star!17135) (regOne!34783 (regTwo!34783 (regOne!34783 r!13765))))) b!6976108))

(assert (= (and b!6974871 ((_ is Union!17135) (regOne!34783 (regTwo!34783 (regOne!34783 r!13765))))) b!6976109))

(declare-fun e!4192751 () Bool)

(assert (=> b!6974871 (= tp!1925366 e!4192751)))

(declare-fun b!6976111 () Bool)

(declare-fun tp!1926338 () Bool)

(declare-fun tp!1926336 () Bool)

(assert (=> b!6976111 (= e!4192751 (and tp!1926338 tp!1926336))))

(declare-fun b!6976110 () Bool)

(assert (=> b!6976110 (= e!4192751 tp_is_empty!43495)))

(declare-fun b!6976113 () Bool)

(declare-fun tp!1926335 () Bool)

(declare-fun tp!1926339 () Bool)

(assert (=> b!6976113 (= e!4192751 (and tp!1926335 tp!1926339))))

(declare-fun b!6976112 () Bool)

(declare-fun tp!1926337 () Bool)

(assert (=> b!6976112 (= e!4192751 tp!1926337)))

(assert (= (and b!6974871 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34783 (regOne!34783 r!13765))))) b!6976110))

(assert (= (and b!6974871 ((_ is Concat!25980) (regTwo!34783 (regTwo!34783 (regOne!34783 r!13765))))) b!6976111))

(assert (= (and b!6974871 ((_ is Star!17135) (regTwo!34783 (regTwo!34783 (regOne!34783 r!13765))))) b!6976112))

(assert (= (and b!6974871 ((_ is Union!17135) (regTwo!34783 (regTwo!34783 (regOne!34783 r!13765))))) b!6976113))

(declare-fun e!4192752 () Bool)

(assert (=> b!6974846 (= tp!1925331 e!4192752)))

(declare-fun b!6976115 () Bool)

(declare-fun tp!1926343 () Bool)

(declare-fun tp!1926341 () Bool)

(assert (=> b!6976115 (= e!4192752 (and tp!1926343 tp!1926341))))

(declare-fun b!6976114 () Bool)

(assert (=> b!6976114 (= e!4192752 tp_is_empty!43495)))

(declare-fun b!6976117 () Bool)

(declare-fun tp!1926340 () Bool)

(declare-fun tp!1926344 () Bool)

(assert (=> b!6976117 (= e!4192752 (and tp!1926340 tp!1926344))))

(declare-fun b!6976116 () Bool)

(declare-fun tp!1926342 () Bool)

(assert (=> b!6976116 (= e!4192752 tp!1926342)))

(assert (= (and b!6974846 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34783 (reg!17464 r!13765))))) b!6976114))

(assert (= (and b!6974846 ((_ is Concat!25980) (regOne!34783 (regTwo!34783 (reg!17464 r!13765))))) b!6976115))

(assert (= (and b!6974846 ((_ is Star!17135) (regOne!34783 (regTwo!34783 (reg!17464 r!13765))))) b!6976116))

(assert (= (and b!6974846 ((_ is Union!17135) (regOne!34783 (regTwo!34783 (reg!17464 r!13765))))) b!6976117))

(declare-fun e!4192753 () Bool)

(assert (=> b!6974846 (= tp!1925335 e!4192753)))

(declare-fun b!6976119 () Bool)

(declare-fun tp!1926348 () Bool)

(declare-fun tp!1926346 () Bool)

(assert (=> b!6976119 (= e!4192753 (and tp!1926348 tp!1926346))))

(declare-fun b!6976118 () Bool)

(assert (=> b!6976118 (= e!4192753 tp_is_empty!43495)))

(declare-fun b!6976121 () Bool)

(declare-fun tp!1926345 () Bool)

(declare-fun tp!1926349 () Bool)

(assert (=> b!6976121 (= e!4192753 (and tp!1926345 tp!1926349))))

(declare-fun b!6976120 () Bool)

(declare-fun tp!1926347 () Bool)

(assert (=> b!6976120 (= e!4192753 tp!1926347)))

(assert (= (and b!6974846 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34783 (reg!17464 r!13765))))) b!6976118))

(assert (= (and b!6974846 ((_ is Concat!25980) (regTwo!34783 (regTwo!34783 (reg!17464 r!13765))))) b!6976119))

(assert (= (and b!6974846 ((_ is Star!17135) (regTwo!34783 (regTwo!34783 (reg!17464 r!13765))))) b!6976120))

(assert (= (and b!6974846 ((_ is Union!17135) (regTwo!34783 (regTwo!34783 (reg!17464 r!13765))))) b!6976121))

(declare-fun e!4192754 () Bool)

(assert (=> b!6974853 (= tp!1925345 e!4192754)))

(declare-fun b!6976123 () Bool)

(declare-fun tp!1926353 () Bool)

(declare-fun tp!1926351 () Bool)

(assert (=> b!6976123 (= e!4192754 (and tp!1926353 tp!1926351))))

(declare-fun b!6976122 () Bool)

(assert (=> b!6976122 (= e!4192754 tp_is_empty!43495)))

(declare-fun b!6976125 () Bool)

(declare-fun tp!1926350 () Bool)

(declare-fun tp!1926354 () Bool)

(assert (=> b!6976125 (= e!4192754 (and tp!1926350 tp!1926354))))

(declare-fun b!6976124 () Bool)

(declare-fun tp!1926352 () Bool)

(assert (=> b!6976124 (= e!4192754 tp!1926352)))

(assert (= (and b!6974853 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34783 (h!73276 l!9142))))) b!6976122))

(assert (= (and b!6974853 ((_ is Concat!25980) (regOne!34782 (regOne!34783 (h!73276 l!9142))))) b!6976123))

(assert (= (and b!6974853 ((_ is Star!17135) (regOne!34782 (regOne!34783 (h!73276 l!9142))))) b!6976124))

(assert (= (and b!6974853 ((_ is Union!17135) (regOne!34782 (regOne!34783 (h!73276 l!9142))))) b!6976125))

(declare-fun e!4192755 () Bool)

(assert (=> b!6974853 (= tp!1925343 e!4192755)))

(declare-fun b!6976127 () Bool)

(declare-fun tp!1926358 () Bool)

(declare-fun tp!1926356 () Bool)

(assert (=> b!6976127 (= e!4192755 (and tp!1926358 tp!1926356))))

(declare-fun b!6976126 () Bool)

(assert (=> b!6976126 (= e!4192755 tp_is_empty!43495)))

(declare-fun b!6976129 () Bool)

(declare-fun tp!1926355 () Bool)

(declare-fun tp!1926359 () Bool)

(assert (=> b!6976129 (= e!4192755 (and tp!1926355 tp!1926359))))

(declare-fun b!6976128 () Bool)

(declare-fun tp!1926357 () Bool)

(assert (=> b!6976128 (= e!4192755 tp!1926357)))

(assert (= (and b!6974853 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34783 (h!73276 l!9142))))) b!6976126))

(assert (= (and b!6974853 ((_ is Concat!25980) (regTwo!34782 (regOne!34783 (h!73276 l!9142))))) b!6976127))

(assert (= (and b!6974853 ((_ is Star!17135) (regTwo!34782 (regOne!34783 (h!73276 l!9142))))) b!6976128))

(assert (= (and b!6974853 ((_ is Union!17135) (regTwo!34782 (regOne!34783 (h!73276 l!9142))))) b!6976129))

(declare-fun e!4192756 () Bool)

(assert (=> b!6974795 (= tp!1925272 e!4192756)))

(declare-fun b!6976131 () Bool)

(declare-fun tp!1926363 () Bool)

(declare-fun tp!1926361 () Bool)

(assert (=> b!6976131 (= e!4192756 (and tp!1926363 tp!1926361))))

(declare-fun b!6976130 () Bool)

(assert (=> b!6976130 (= e!4192756 tp_is_empty!43495)))

(declare-fun b!6976133 () Bool)

(declare-fun tp!1926360 () Bool)

(declare-fun tp!1926364 () Bool)

(assert (=> b!6976133 (= e!4192756 (and tp!1926360 tp!1926364))))

(declare-fun b!6976132 () Bool)

(declare-fun tp!1926362 () Bool)

(assert (=> b!6976132 (= e!4192756 tp!1926362)))

(assert (= (and b!6974795 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34783 (regOne!34782 r!13765))))) b!6976130))

(assert (= (and b!6974795 ((_ is Concat!25980) (regOne!34782 (regTwo!34783 (regOne!34782 r!13765))))) b!6976131))

(assert (= (and b!6974795 ((_ is Star!17135) (regOne!34782 (regTwo!34783 (regOne!34782 r!13765))))) b!6976132))

(assert (= (and b!6974795 ((_ is Union!17135) (regOne!34782 (regTwo!34783 (regOne!34782 r!13765))))) b!6976133))

(declare-fun e!4192757 () Bool)

(assert (=> b!6974795 (= tp!1925270 e!4192757)))

(declare-fun b!6976135 () Bool)

(declare-fun tp!1926368 () Bool)

(declare-fun tp!1926366 () Bool)

(assert (=> b!6976135 (= e!4192757 (and tp!1926368 tp!1926366))))

(declare-fun b!6976134 () Bool)

(assert (=> b!6976134 (= e!4192757 tp_is_empty!43495)))

(declare-fun b!6976137 () Bool)

(declare-fun tp!1926365 () Bool)

(declare-fun tp!1926369 () Bool)

(assert (=> b!6976137 (= e!4192757 (and tp!1926365 tp!1926369))))

(declare-fun b!6976136 () Bool)

(declare-fun tp!1926367 () Bool)

(assert (=> b!6976136 (= e!4192757 tp!1926367)))

(assert (= (and b!6974795 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34783 (regOne!34782 r!13765))))) b!6976134))

(assert (= (and b!6974795 ((_ is Concat!25980) (regTwo!34782 (regTwo!34783 (regOne!34782 r!13765))))) b!6976135))

(assert (= (and b!6974795 ((_ is Star!17135) (regTwo!34782 (regTwo!34783 (regOne!34782 r!13765))))) b!6976136))

(assert (= (and b!6974795 ((_ is Union!17135) (regTwo!34782 (regTwo!34783 (regOne!34782 r!13765))))) b!6976137))

(declare-fun e!4192758 () Bool)

(assert (=> b!6974804 (= tp!1925281 e!4192758)))

(declare-fun b!6976139 () Bool)

(declare-fun tp!1926373 () Bool)

(declare-fun tp!1926371 () Bool)

(assert (=> b!6976139 (= e!4192758 (and tp!1926373 tp!1926371))))

(declare-fun b!6976138 () Bool)

(assert (=> b!6976138 (= e!4192758 tp_is_empty!43495)))

(declare-fun b!6976141 () Bool)

(declare-fun tp!1926370 () Bool)

(declare-fun tp!1926374 () Bool)

(assert (=> b!6976141 (= e!4192758 (and tp!1926370 tp!1926374))))

(declare-fun b!6976140 () Bool)

(declare-fun tp!1926372 () Bool)

(assert (=> b!6976140 (= e!4192758 tp!1926372)))

(assert (= (and b!6974804 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976138))

(assert (= (and b!6974804 ((_ is Concat!25980) (reg!17464 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976139))

(assert (= (and b!6974804 ((_ is Star!17135) (reg!17464 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976140))

(assert (= (and b!6974804 ((_ is Union!17135) (reg!17464 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976141))

(declare-fun e!4192759 () Bool)

(assert (=> b!6974905 (= tp!1925410 e!4192759)))

(declare-fun b!6976143 () Bool)

(declare-fun tp!1926378 () Bool)

(declare-fun tp!1926376 () Bool)

(assert (=> b!6976143 (= e!4192759 (and tp!1926378 tp!1926376))))

(declare-fun b!6976142 () Bool)

(assert (=> b!6976142 (= e!4192759 tp_is_empty!43495)))

(declare-fun b!6976145 () Bool)

(declare-fun tp!1926375 () Bool)

(declare-fun tp!1926379 () Bool)

(assert (=> b!6976145 (= e!4192759 (and tp!1926375 tp!1926379))))

(declare-fun b!6976144 () Bool)

(declare-fun tp!1926377 () Bool)

(assert (=> b!6976144 (= e!4192759 tp!1926377)))

(assert (= (and b!6974905 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34782 (h!73276 l!9142))))) b!6976142))

(assert (= (and b!6974905 ((_ is Concat!25980) (regOne!34782 (regOne!34782 (h!73276 l!9142))))) b!6976143))

(assert (= (and b!6974905 ((_ is Star!17135) (regOne!34782 (regOne!34782 (h!73276 l!9142))))) b!6976144))

(assert (= (and b!6974905 ((_ is Union!17135) (regOne!34782 (regOne!34782 (h!73276 l!9142))))) b!6976145))

(declare-fun e!4192760 () Bool)

(assert (=> b!6974905 (= tp!1925408 e!4192760)))

(declare-fun b!6976147 () Bool)

(declare-fun tp!1926383 () Bool)

(declare-fun tp!1926381 () Bool)

(assert (=> b!6976147 (= e!4192760 (and tp!1926383 tp!1926381))))

(declare-fun b!6976146 () Bool)

(assert (=> b!6976146 (= e!4192760 tp_is_empty!43495)))

(declare-fun b!6976149 () Bool)

(declare-fun tp!1926380 () Bool)

(declare-fun tp!1926384 () Bool)

(assert (=> b!6976149 (= e!4192760 (and tp!1926380 tp!1926384))))

(declare-fun b!6976148 () Bool)

(declare-fun tp!1926382 () Bool)

(assert (=> b!6976148 (= e!4192760 tp!1926382)))

(assert (= (and b!6974905 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34782 (h!73276 l!9142))))) b!6976146))

(assert (= (and b!6974905 ((_ is Concat!25980) (regTwo!34782 (regOne!34782 (h!73276 l!9142))))) b!6976147))

(assert (= (and b!6974905 ((_ is Star!17135) (regTwo!34782 (regOne!34782 (h!73276 l!9142))))) b!6976148))

(assert (= (and b!6974905 ((_ is Union!17135) (regTwo!34782 (regOne!34782 (h!73276 l!9142))))) b!6976149))

(declare-fun e!4192761 () Bool)

(assert (=> b!6974813 (= tp!1925289 e!4192761)))

(declare-fun b!6976151 () Bool)

(declare-fun tp!1926388 () Bool)

(declare-fun tp!1926386 () Bool)

(assert (=> b!6976151 (= e!4192761 (and tp!1926388 tp!1926386))))

(declare-fun b!6976150 () Bool)

(assert (=> b!6976150 (= e!4192761 tp_is_empty!43495)))

(declare-fun b!6976153 () Bool)

(declare-fun tp!1926385 () Bool)

(declare-fun tp!1926389 () Bool)

(assert (=> b!6976153 (= e!4192761 (and tp!1926385 tp!1926389))))

(declare-fun b!6976152 () Bool)

(declare-fun tp!1926387 () Bool)

(assert (=> b!6976152 (= e!4192761 tp!1926387)))

(assert (= (and b!6974813 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34782 (reg!17464 r!13765))))) b!6976150))

(assert (= (and b!6974813 ((_ is Concat!25980) (regOne!34783 (regOne!34782 (reg!17464 r!13765))))) b!6976151))

(assert (= (and b!6974813 ((_ is Star!17135) (regOne!34783 (regOne!34782 (reg!17464 r!13765))))) b!6976152))

(assert (= (and b!6974813 ((_ is Union!17135) (regOne!34783 (regOne!34782 (reg!17464 r!13765))))) b!6976153))

(declare-fun e!4192762 () Bool)

(assert (=> b!6974813 (= tp!1925293 e!4192762)))

(declare-fun b!6976155 () Bool)

(declare-fun tp!1926393 () Bool)

(declare-fun tp!1926391 () Bool)

(assert (=> b!6976155 (= e!4192762 (and tp!1926393 tp!1926391))))

(declare-fun b!6976154 () Bool)

(assert (=> b!6976154 (= e!4192762 tp_is_empty!43495)))

(declare-fun b!6976157 () Bool)

(declare-fun tp!1926390 () Bool)

(declare-fun tp!1926394 () Bool)

(assert (=> b!6976157 (= e!4192762 (and tp!1926390 tp!1926394))))

(declare-fun b!6976156 () Bool)

(declare-fun tp!1926392 () Bool)

(assert (=> b!6976156 (= e!4192762 tp!1926392)))

(assert (= (and b!6974813 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34782 (reg!17464 r!13765))))) b!6976154))

(assert (= (and b!6974813 ((_ is Concat!25980) (regTwo!34783 (regOne!34782 (reg!17464 r!13765))))) b!6976155))

(assert (= (and b!6974813 ((_ is Star!17135) (regTwo!34783 (regOne!34782 (reg!17464 r!13765))))) b!6976156))

(assert (= (and b!6974813 ((_ is Union!17135) (regTwo!34783 (regOne!34782 (reg!17464 r!13765))))) b!6976157))

(declare-fun e!4192763 () Bool)

(assert (=> b!6974914 (= tp!1925419 e!4192763)))

(declare-fun b!6976159 () Bool)

(declare-fun tp!1926398 () Bool)

(declare-fun tp!1926396 () Bool)

(assert (=> b!6976159 (= e!4192763 (and tp!1926398 tp!1926396))))

(declare-fun b!6976158 () Bool)

(assert (=> b!6976158 (= e!4192763 tp_is_empty!43495)))

(declare-fun b!6976161 () Bool)

(declare-fun tp!1926395 () Bool)

(declare-fun tp!1926399 () Bool)

(assert (=> b!6976161 (= e!4192763 (and tp!1926395 tp!1926399))))

(declare-fun b!6976160 () Bool)

(declare-fun tp!1926397 () Bool)

(assert (=> b!6976160 (= e!4192763 tp!1926397)))

(assert (= (and b!6974914 ((_ is ElementMatch!17135) (reg!17464 (reg!17464 (regTwo!34783 r!13765))))) b!6976158))

(assert (= (and b!6974914 ((_ is Concat!25980) (reg!17464 (reg!17464 (regTwo!34783 r!13765))))) b!6976159))

(assert (= (and b!6974914 ((_ is Star!17135) (reg!17464 (reg!17464 (regTwo!34783 r!13765))))) b!6976160))

(assert (= (and b!6974914 ((_ is Union!17135) (reg!17464 (reg!17464 (regTwo!34783 r!13765))))) b!6976161))

(declare-fun e!4192764 () Bool)

(assert (=> b!6974796 (= tp!1925271 e!4192764)))

(declare-fun b!6976163 () Bool)

(declare-fun tp!1926403 () Bool)

(declare-fun tp!1926401 () Bool)

(assert (=> b!6976163 (= e!4192764 (and tp!1926403 tp!1926401))))

(declare-fun b!6976162 () Bool)

(assert (=> b!6976162 (= e!4192764 tp_is_empty!43495)))

(declare-fun b!6976165 () Bool)

(declare-fun tp!1926400 () Bool)

(declare-fun tp!1926404 () Bool)

(assert (=> b!6976165 (= e!4192764 (and tp!1926400 tp!1926404))))

(declare-fun b!6976164 () Bool)

(declare-fun tp!1926402 () Bool)

(assert (=> b!6976164 (= e!4192764 tp!1926402)))

(assert (= (and b!6974796 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34783 (regOne!34782 r!13765))))) b!6976162))

(assert (= (and b!6974796 ((_ is Concat!25980) (reg!17464 (regTwo!34783 (regOne!34782 r!13765))))) b!6976163))

(assert (= (and b!6974796 ((_ is Star!17135) (reg!17464 (regTwo!34783 (regOne!34782 r!13765))))) b!6976164))

(assert (= (and b!6974796 ((_ is Union!17135) (reg!17464 (regTwo!34783 (regOne!34782 r!13765))))) b!6976165))

(declare-fun e!4192765 () Bool)

(assert (=> b!6974897 (= tp!1925400 e!4192765)))

(declare-fun b!6976167 () Bool)

(declare-fun tp!1926408 () Bool)

(declare-fun tp!1926406 () Bool)

(assert (=> b!6976167 (= e!4192765 (and tp!1926408 tp!1926406))))

(declare-fun b!6976166 () Bool)

(assert (=> b!6976166 (= e!4192765 tp_is_empty!43495)))

(declare-fun b!6976169 () Bool)

(declare-fun tp!1926405 () Bool)

(declare-fun tp!1926409 () Bool)

(assert (=> b!6976169 (= e!4192765 (and tp!1926405 tp!1926409))))

(declare-fun b!6976168 () Bool)

(declare-fun tp!1926407 () Bool)

(assert (=> b!6976168 (= e!4192765 tp!1926407)))

(assert (= (and b!6974897 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976166))

(assert (= (and b!6974897 ((_ is Concat!25980) (regOne!34782 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976167))

(assert (= (and b!6974897 ((_ is Star!17135) (regOne!34782 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976168))

(assert (= (and b!6974897 ((_ is Union!17135) (regOne!34782 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976169))

(declare-fun e!4192766 () Bool)

(assert (=> b!6974897 (= tp!1925398 e!4192766)))

(declare-fun b!6976171 () Bool)

(declare-fun tp!1926413 () Bool)

(declare-fun tp!1926411 () Bool)

(assert (=> b!6976171 (= e!4192766 (and tp!1926413 tp!1926411))))

(declare-fun b!6976170 () Bool)

(assert (=> b!6976170 (= e!4192766 tp_is_empty!43495)))

(declare-fun b!6976173 () Bool)

(declare-fun tp!1926410 () Bool)

(declare-fun tp!1926414 () Bool)

(assert (=> b!6976173 (= e!4192766 (and tp!1926410 tp!1926414))))

(declare-fun b!6976172 () Bool)

(declare-fun tp!1926412 () Bool)

(assert (=> b!6976172 (= e!4192766 tp!1926412)))

(assert (= (and b!6974897 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976170))

(assert (= (and b!6974897 ((_ is Concat!25980) (regTwo!34782 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976171))

(assert (= (and b!6974897 ((_ is Star!17135) (regTwo!34782 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976172))

(assert (= (and b!6974897 ((_ is Union!17135) (regTwo!34782 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976173))

(declare-fun e!4192767 () Bool)

(assert (=> b!6974874 (= tp!1925369 e!4192767)))

(declare-fun b!6976175 () Bool)

(declare-fun tp!1926418 () Bool)

(declare-fun tp!1926416 () Bool)

(assert (=> b!6976175 (= e!4192767 (and tp!1926418 tp!1926416))))

(declare-fun b!6976174 () Bool)

(assert (=> b!6976174 (= e!4192767 tp_is_empty!43495)))

(declare-fun b!6976177 () Bool)

(declare-fun tp!1926415 () Bool)

(declare-fun tp!1926419 () Bool)

(assert (=> b!6976177 (= e!4192767 (and tp!1926415 tp!1926419))))

(declare-fun b!6976176 () Bool)

(declare-fun tp!1926417 () Bool)

(assert (=> b!6976176 (= e!4192767 tp!1926417)))

(assert (= (and b!6974874 ((_ is ElementMatch!17135) (reg!17464 (regOne!34782 (regOne!34782 r!13765))))) b!6976174))

(assert (= (and b!6974874 ((_ is Concat!25980) (reg!17464 (regOne!34782 (regOne!34782 r!13765))))) b!6976175))

(assert (= (and b!6974874 ((_ is Star!17135) (reg!17464 (regOne!34782 (regOne!34782 r!13765))))) b!6976176))

(assert (= (and b!6974874 ((_ is Union!17135) (reg!17464 (regOne!34782 (regOne!34782 r!13765))))) b!6976177))

(declare-fun e!4192768 () Bool)

(assert (=> b!6974883 (= tp!1925377 e!4192768)))

(declare-fun b!6976179 () Bool)

(declare-fun tp!1926423 () Bool)

(declare-fun tp!1926421 () Bool)

(assert (=> b!6976179 (= e!4192768 (and tp!1926423 tp!1926421))))

(declare-fun b!6976178 () Bool)

(assert (=> b!6976178 (= e!4192768 tp_is_empty!43495)))

(declare-fun b!6976181 () Bool)

(declare-fun tp!1926420 () Bool)

(declare-fun tp!1926424 () Bool)

(assert (=> b!6976181 (= e!4192768 (and tp!1926420 tp!1926424))))

(declare-fun b!6976180 () Bool)

(declare-fun tp!1926422 () Bool)

(assert (=> b!6976180 (= e!4192768 tp!1926422)))

(assert (= (and b!6974883 ((_ is ElementMatch!17135) (regOne!34783 (reg!17464 (h!73276 l!9142))))) b!6976178))

(assert (= (and b!6974883 ((_ is Concat!25980) (regOne!34783 (reg!17464 (h!73276 l!9142))))) b!6976179))

(assert (= (and b!6974883 ((_ is Star!17135) (regOne!34783 (reg!17464 (h!73276 l!9142))))) b!6976180))

(assert (= (and b!6974883 ((_ is Union!17135) (regOne!34783 (reg!17464 (h!73276 l!9142))))) b!6976181))

(declare-fun e!4192769 () Bool)

(assert (=> b!6974883 (= tp!1925381 e!4192769)))

(declare-fun b!6976183 () Bool)

(declare-fun tp!1926428 () Bool)

(declare-fun tp!1926426 () Bool)

(assert (=> b!6976183 (= e!4192769 (and tp!1926428 tp!1926426))))

(declare-fun b!6976182 () Bool)

(assert (=> b!6976182 (= e!4192769 tp_is_empty!43495)))

(declare-fun b!6976185 () Bool)

(declare-fun tp!1926425 () Bool)

(declare-fun tp!1926429 () Bool)

(assert (=> b!6976185 (= e!4192769 (and tp!1926425 tp!1926429))))

(declare-fun b!6976184 () Bool)

(declare-fun tp!1926427 () Bool)

(assert (=> b!6976184 (= e!4192769 tp!1926427)))

(assert (= (and b!6974883 ((_ is ElementMatch!17135) (regTwo!34783 (reg!17464 (h!73276 l!9142))))) b!6976182))

(assert (= (and b!6974883 ((_ is Concat!25980) (regTwo!34783 (reg!17464 (h!73276 l!9142))))) b!6976183))

(assert (= (and b!6974883 ((_ is Star!17135) (regTwo!34783 (reg!17464 (h!73276 l!9142))))) b!6976184))

(assert (= (and b!6974883 ((_ is Union!17135) (regTwo!34783 (reg!17464 (h!73276 l!9142))))) b!6976185))

(declare-fun e!4192770 () Bool)

(assert (=> b!6974825 (= tp!1925304 e!4192770)))

(declare-fun b!6976187 () Bool)

(declare-fun tp!1926433 () Bool)

(declare-fun tp!1926431 () Bool)

(assert (=> b!6976187 (= e!4192770 (and tp!1926433 tp!1926431))))

(declare-fun b!6976186 () Bool)

(assert (=> b!6976186 (= e!4192770 tp_is_empty!43495)))

(declare-fun b!6976189 () Bool)

(declare-fun tp!1926430 () Bool)

(declare-fun tp!1926434 () Bool)

(assert (=> b!6976189 (= e!4192770 (and tp!1926430 tp!1926434))))

(declare-fun b!6976188 () Bool)

(declare-fun tp!1926432 () Bool)

(assert (=> b!6976188 (= e!4192770 tp!1926432)))

(assert (= (and b!6974825 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34782 (regOne!34783 r!13765))))) b!6976186))

(assert (= (and b!6974825 ((_ is Concat!25980) (regOne!34783 (regTwo!34782 (regOne!34783 r!13765))))) b!6976187))

(assert (= (and b!6974825 ((_ is Star!17135) (regOne!34783 (regTwo!34782 (regOne!34783 r!13765))))) b!6976188))

(assert (= (and b!6974825 ((_ is Union!17135) (regOne!34783 (regTwo!34782 (regOne!34783 r!13765))))) b!6976189))

(declare-fun e!4192771 () Bool)

(assert (=> b!6974825 (= tp!1925308 e!4192771)))

(declare-fun b!6976191 () Bool)

(declare-fun tp!1926438 () Bool)

(declare-fun tp!1926436 () Bool)

(assert (=> b!6976191 (= e!4192771 (and tp!1926438 tp!1926436))))

(declare-fun b!6976190 () Bool)

(assert (=> b!6976190 (= e!4192771 tp_is_empty!43495)))

(declare-fun b!6976193 () Bool)

(declare-fun tp!1926435 () Bool)

(declare-fun tp!1926439 () Bool)

(assert (=> b!6976193 (= e!4192771 (and tp!1926435 tp!1926439))))

(declare-fun b!6976192 () Bool)

(declare-fun tp!1926437 () Bool)

(assert (=> b!6976192 (= e!4192771 tp!1926437)))

(assert (= (and b!6974825 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34782 (regOne!34783 r!13765))))) b!6976190))

(assert (= (and b!6974825 ((_ is Concat!25980) (regTwo!34783 (regTwo!34782 (regOne!34783 r!13765))))) b!6976191))

(assert (= (and b!6974825 ((_ is Star!17135) (regTwo!34783 (regTwo!34782 (regOne!34783 r!13765))))) b!6976192))

(assert (= (and b!6974825 ((_ is Union!17135) (regTwo!34783 (regTwo!34782 (regOne!34783 r!13765))))) b!6976193))

(declare-fun e!4192772 () Bool)

(assert (=> b!6974807 (= tp!1925287 e!4192772)))

(declare-fun b!6976195 () Bool)

(declare-fun tp!1926443 () Bool)

(declare-fun tp!1926441 () Bool)

(assert (=> b!6976195 (= e!4192772 (and tp!1926443 tp!1926441))))

(declare-fun b!6976194 () Bool)

(assert (=> b!6976194 (= e!4192772 tp_is_empty!43495)))

(declare-fun b!6976197 () Bool)

(declare-fun tp!1926440 () Bool)

(declare-fun tp!1926444 () Bool)

(assert (=> b!6976197 (= e!4192772 (and tp!1926440 tp!1926444))))

(declare-fun b!6976196 () Bool)

(declare-fun tp!1926442 () Bool)

(assert (=> b!6976196 (= e!4192772 tp!1926442)))

(assert (= (and b!6974807 ((_ is ElementMatch!17135) (regOne!34782 (reg!17464 (reg!17464 r!13765))))) b!6976194))

(assert (= (and b!6974807 ((_ is Concat!25980) (regOne!34782 (reg!17464 (reg!17464 r!13765))))) b!6976195))

(assert (= (and b!6974807 ((_ is Star!17135) (regOne!34782 (reg!17464 (reg!17464 r!13765))))) b!6976196))

(assert (= (and b!6974807 ((_ is Union!17135) (regOne!34782 (reg!17464 (reg!17464 r!13765))))) b!6976197))

(declare-fun e!4192773 () Bool)

(assert (=> b!6974807 (= tp!1925285 e!4192773)))

(declare-fun b!6976199 () Bool)

(declare-fun tp!1926448 () Bool)

(declare-fun tp!1926446 () Bool)

(assert (=> b!6976199 (= e!4192773 (and tp!1926448 tp!1926446))))

(declare-fun b!6976198 () Bool)

(assert (=> b!6976198 (= e!4192773 tp_is_empty!43495)))

(declare-fun b!6976201 () Bool)

(declare-fun tp!1926445 () Bool)

(declare-fun tp!1926449 () Bool)

(assert (=> b!6976201 (= e!4192773 (and tp!1926445 tp!1926449))))

(declare-fun b!6976200 () Bool)

(declare-fun tp!1926447 () Bool)

(assert (=> b!6976200 (= e!4192773 tp!1926447)))

(assert (= (and b!6974807 ((_ is ElementMatch!17135) (regTwo!34782 (reg!17464 (reg!17464 r!13765))))) b!6976198))

(assert (= (and b!6974807 ((_ is Concat!25980) (regTwo!34782 (reg!17464 (reg!17464 r!13765))))) b!6976199))

(assert (= (and b!6974807 ((_ is Star!17135) (regTwo!34782 (reg!17464 (reg!17464 r!13765))))) b!6976200))

(assert (= (and b!6974807 ((_ is Union!17135) (regTwo!34782 (reg!17464 (reg!17464 r!13765))))) b!6976201))

(declare-fun e!4192774 () Bool)

(assert (=> b!6974816 (= tp!1925296 e!4192774)))

(declare-fun b!6976203 () Bool)

(declare-fun tp!1926453 () Bool)

(declare-fun tp!1926451 () Bool)

(assert (=> b!6976203 (= e!4192774 (and tp!1926453 tp!1926451))))

(declare-fun b!6976202 () Bool)

(assert (=> b!6976202 (= e!4192774 tp_is_empty!43495)))

(declare-fun b!6976205 () Bool)

(declare-fun tp!1926450 () Bool)

(declare-fun tp!1926454 () Bool)

(assert (=> b!6976205 (= e!4192774 (and tp!1926450 tp!1926454))))

(declare-fun b!6976204 () Bool)

(declare-fun tp!1926452 () Bool)

(assert (=> b!6976204 (= e!4192774 tp!1926452)))

(assert (= (and b!6974816 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34782 (reg!17464 r!13765))))) b!6976202))

(assert (= (and b!6974816 ((_ is Concat!25980) (reg!17464 (regTwo!34782 (reg!17464 r!13765))))) b!6976203))

(assert (= (and b!6974816 ((_ is Star!17135) (reg!17464 (regTwo!34782 (reg!17464 r!13765))))) b!6976204))

(assert (= (and b!6974816 ((_ is Union!17135) (reg!17464 (regTwo!34782 (reg!17464 r!13765))))) b!6976205))

(declare-fun e!4192775 () Bool)

(assert (=> b!6974865 (= tp!1925360 e!4192775)))

(declare-fun b!6976207 () Bool)

(declare-fun tp!1926458 () Bool)

(declare-fun tp!1926456 () Bool)

(assert (=> b!6976207 (= e!4192775 (and tp!1926458 tp!1926456))))

(declare-fun b!6976206 () Bool)

(assert (=> b!6976206 (= e!4192775 tp_is_empty!43495)))

(declare-fun b!6976209 () Bool)

(declare-fun tp!1926455 () Bool)

(declare-fun tp!1926459 () Bool)

(assert (=> b!6976209 (= e!4192775 (and tp!1926455 tp!1926459))))

(declare-fun b!6976208 () Bool)

(declare-fun tp!1926457 () Bool)

(assert (=> b!6976208 (= e!4192775 tp!1926457)))

(assert (= (and b!6974865 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34783 (regOne!34783 r!13765))))) b!6976206))

(assert (= (and b!6974865 ((_ is Concat!25980) (regOne!34782 (regOne!34783 (regOne!34783 r!13765))))) b!6976207))

(assert (= (and b!6974865 ((_ is Star!17135) (regOne!34782 (regOne!34783 (regOne!34783 r!13765))))) b!6976208))

(assert (= (and b!6974865 ((_ is Union!17135) (regOne!34782 (regOne!34783 (regOne!34783 r!13765))))) b!6976209))

(declare-fun e!4192776 () Bool)

(assert (=> b!6974865 (= tp!1925358 e!4192776)))

(declare-fun b!6976211 () Bool)

(declare-fun tp!1926463 () Bool)

(declare-fun tp!1926461 () Bool)

(assert (=> b!6976211 (= e!4192776 (and tp!1926463 tp!1926461))))

(declare-fun b!6976210 () Bool)

(assert (=> b!6976210 (= e!4192776 tp_is_empty!43495)))

(declare-fun b!6976213 () Bool)

(declare-fun tp!1926460 () Bool)

(declare-fun tp!1926464 () Bool)

(assert (=> b!6976213 (= e!4192776 (and tp!1926460 tp!1926464))))

(declare-fun b!6976212 () Bool)

(declare-fun tp!1926462 () Bool)

(assert (=> b!6976212 (= e!4192776 tp!1926462)))

(assert (= (and b!6974865 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34783 (regOne!34783 r!13765))))) b!6976210))

(assert (= (and b!6974865 ((_ is Concat!25980) (regTwo!34782 (regOne!34783 (regOne!34783 r!13765))))) b!6976211))

(assert (= (and b!6974865 ((_ is Star!17135) (regTwo!34782 (regOne!34783 (regOne!34783 r!13765))))) b!6976212))

(assert (= (and b!6974865 ((_ is Union!17135) (regTwo!34782 (regOne!34783 (regOne!34783 r!13765))))) b!6976213))

(declare-fun e!4192777 () Bool)

(assert (=> b!6974840 (= tp!1925329 e!4192777)))

(declare-fun b!6976215 () Bool)

(declare-fun tp!1926468 () Bool)

(declare-fun tp!1926466 () Bool)

(assert (=> b!6976215 (= e!4192777 (and tp!1926468 tp!1926466))))

(declare-fun b!6976214 () Bool)

(assert (=> b!6976214 (= e!4192777 tp_is_empty!43495)))

(declare-fun b!6976217 () Bool)

(declare-fun tp!1926465 () Bool)

(declare-fun tp!1926469 () Bool)

(assert (=> b!6976217 (= e!4192777 (and tp!1926465 tp!1926469))))

(declare-fun b!6976216 () Bool)

(declare-fun tp!1926467 () Bool)

(assert (=> b!6976216 (= e!4192777 tp!1926467)))

(assert (= (and b!6974840 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34783 (reg!17464 r!13765))))) b!6976214))

(assert (= (and b!6974840 ((_ is Concat!25980) (regOne!34782 (regOne!34783 (reg!17464 r!13765))))) b!6976215))

(assert (= (and b!6974840 ((_ is Star!17135) (regOne!34782 (regOne!34783 (reg!17464 r!13765))))) b!6976216))

(assert (= (and b!6974840 ((_ is Union!17135) (regOne!34782 (regOne!34783 (reg!17464 r!13765))))) b!6976217))

(declare-fun e!4192778 () Bool)

(assert (=> b!6974840 (= tp!1925327 e!4192778)))

(declare-fun b!6976219 () Bool)

(declare-fun tp!1926473 () Bool)

(declare-fun tp!1926471 () Bool)

(assert (=> b!6976219 (= e!4192778 (and tp!1926473 tp!1926471))))

(declare-fun b!6976218 () Bool)

(assert (=> b!6976218 (= e!4192778 tp_is_empty!43495)))

(declare-fun b!6976221 () Bool)

(declare-fun tp!1926470 () Bool)

(declare-fun tp!1926474 () Bool)

(assert (=> b!6976221 (= e!4192778 (and tp!1926470 tp!1926474))))

(declare-fun b!6976220 () Bool)

(declare-fun tp!1926472 () Bool)

(assert (=> b!6976220 (= e!4192778 tp!1926472)))

(assert (= (and b!6974840 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34783 (reg!17464 r!13765))))) b!6976218))

(assert (= (and b!6974840 ((_ is Concat!25980) (regTwo!34782 (regOne!34783 (reg!17464 r!13765))))) b!6976219))

(assert (= (and b!6974840 ((_ is Star!17135) (regTwo!34782 (regOne!34783 (reg!17464 r!13765))))) b!6976220))

(assert (= (and b!6974840 ((_ is Union!17135) (regTwo!34782 (regOne!34783 (reg!17464 r!13765))))) b!6976221))

(declare-fun e!4192779 () Bool)

(assert (=> b!6974849 (= tp!1925338 e!4192779)))

(declare-fun b!6976223 () Bool)

(declare-fun tp!1926478 () Bool)

(declare-fun tp!1926476 () Bool)

(assert (=> b!6976223 (= e!4192779 (and tp!1926478 tp!1926476))))

(declare-fun b!6976222 () Bool)

(assert (=> b!6976222 (= e!4192779 tp_is_empty!43495)))

(declare-fun b!6976225 () Bool)

(declare-fun tp!1926475 () Bool)

(declare-fun tp!1926479 () Bool)

(assert (=> b!6976225 (= e!4192779 (and tp!1926475 tp!1926479))))

(declare-fun b!6976224 () Bool)

(declare-fun tp!1926477 () Bool)

(assert (=> b!6976224 (= e!4192779 tp!1926477)))

(assert (= (and b!6974849 ((_ is ElementMatch!17135) (reg!17464 (reg!17464 (regOne!34782 r!13765))))) b!6976222))

(assert (= (and b!6974849 ((_ is Concat!25980) (reg!17464 (reg!17464 (regOne!34782 r!13765))))) b!6976223))

(assert (= (and b!6974849 ((_ is Star!17135) (reg!17464 (reg!17464 (regOne!34782 r!13765))))) b!6976224))

(assert (= (and b!6974849 ((_ is Union!17135) (reg!17464 (reg!17464 (regOne!34782 r!13765))))) b!6976225))

(declare-fun b!6976226 () Bool)

(declare-fun e!4192780 () Bool)

(declare-fun tp!1926480 () Bool)

(assert (=> b!6976226 (= e!4192780 (and tp_is_empty!43495 tp!1926480))))

(assert (=> b!6974851 (= tp!1925341 e!4192780)))

(assert (= (and b!6974851 ((_ is Cons!66827) (t!380694 (t!380694 (t!380694 s!9351))))) b!6976226))

(declare-fun e!4192781 () Bool)

(assert (=> b!6974837 (= tp!1925319 e!4192781)))

(declare-fun b!6976228 () Bool)

(declare-fun tp!1926484 () Bool)

(declare-fun tp!1926482 () Bool)

(assert (=> b!6976228 (= e!4192781 (and tp!1926484 tp!1926482))))

(declare-fun b!6976227 () Bool)

(assert (=> b!6976227 (= e!4192781 tp_is_empty!43495)))

(declare-fun b!6976230 () Bool)

(declare-fun tp!1926481 () Bool)

(declare-fun tp!1926485 () Bool)

(assert (=> b!6976230 (= e!4192781 (and tp!1926481 tp!1926485))))

(declare-fun b!6976229 () Bool)

(declare-fun tp!1926483 () Bool)

(assert (=> b!6976229 (= e!4192781 tp!1926483)))

(assert (= (and b!6974837 ((_ is ElementMatch!17135) (regOne!34783 (h!73276 (t!380695 l!9142))))) b!6976227))

(assert (= (and b!6974837 ((_ is Concat!25980) (regOne!34783 (h!73276 (t!380695 l!9142))))) b!6976228))

(assert (= (and b!6974837 ((_ is Star!17135) (regOne!34783 (h!73276 (t!380695 l!9142))))) b!6976229))

(assert (= (and b!6974837 ((_ is Union!17135) (regOne!34783 (h!73276 (t!380695 l!9142))))) b!6976230))

(declare-fun e!4192782 () Bool)

(assert (=> b!6974837 (= tp!1925323 e!4192782)))

(declare-fun b!6976232 () Bool)

(declare-fun tp!1926489 () Bool)

(declare-fun tp!1926487 () Bool)

(assert (=> b!6976232 (= e!4192782 (and tp!1926489 tp!1926487))))

(declare-fun b!6976231 () Bool)

(assert (=> b!6976231 (= e!4192782 tp_is_empty!43495)))

(declare-fun b!6976234 () Bool)

(declare-fun tp!1926486 () Bool)

(declare-fun tp!1926490 () Bool)

(assert (=> b!6976234 (= e!4192782 (and tp!1926486 tp!1926490))))

(declare-fun b!6976233 () Bool)

(declare-fun tp!1926488 () Bool)

(assert (=> b!6976233 (= e!4192782 tp!1926488)))

(assert (= (and b!6974837 ((_ is ElementMatch!17135) (regTwo!34783 (h!73276 (t!380695 l!9142))))) b!6976231))

(assert (= (and b!6974837 ((_ is Concat!25980) (regTwo!34783 (h!73276 (t!380695 l!9142))))) b!6976232))

(assert (= (and b!6974837 ((_ is Star!17135) (regTwo!34783 (h!73276 (t!380695 l!9142))))) b!6976233))

(assert (= (and b!6974837 ((_ is Union!17135) (regTwo!34783 (h!73276 (t!380695 l!9142))))) b!6976234))

(declare-fun e!4192783 () Bool)

(assert (=> b!6974886 (= tp!1925384 e!4192783)))

(declare-fun b!6976236 () Bool)

(declare-fun tp!1926494 () Bool)

(declare-fun tp!1926492 () Bool)

(assert (=> b!6976236 (= e!4192783 (and tp!1926494 tp!1926492))))

(declare-fun b!6976235 () Bool)

(assert (=> b!6976235 (= e!4192783 tp_is_empty!43495)))

(declare-fun b!6976238 () Bool)

(declare-fun tp!1926491 () Bool)

(declare-fun tp!1926495 () Bool)

(assert (=> b!6976238 (= e!4192783 (and tp!1926491 tp!1926495))))

(declare-fun b!6976237 () Bool)

(declare-fun tp!1926493 () Bool)

(assert (=> b!6976237 (= e!4192783 tp!1926493)))

(assert (= (and b!6974886 ((_ is ElementMatch!17135) (reg!17464 (regOne!34783 (regTwo!34783 r!13765))))) b!6976235))

(assert (= (and b!6974886 ((_ is Concat!25980) (reg!17464 (regOne!34783 (regTwo!34783 r!13765))))) b!6976236))

(assert (= (and b!6974886 ((_ is Star!17135) (reg!17464 (regOne!34783 (regTwo!34783 r!13765))))) b!6976237))

(assert (= (and b!6974886 ((_ is Union!17135) (reg!17464 (regOne!34783 (regTwo!34783 r!13765))))) b!6976238))

(declare-fun e!4192784 () Bool)

(assert (=> b!6974895 (= tp!1925392 e!4192784)))

(declare-fun b!6976240 () Bool)

(declare-fun tp!1926499 () Bool)

(declare-fun tp!1926497 () Bool)

(assert (=> b!6976240 (= e!4192784 (and tp!1926499 tp!1926497))))

(declare-fun b!6976239 () Bool)

(assert (=> b!6976239 (= e!4192784 tp_is_empty!43495)))

(declare-fun b!6976242 () Bool)

(declare-fun tp!1926496 () Bool)

(declare-fun tp!1926500 () Bool)

(assert (=> b!6976242 (= e!4192784 (and tp!1926496 tp!1926500))))

(declare-fun b!6976241 () Bool)

(declare-fun tp!1926498 () Bool)

(assert (=> b!6976241 (= e!4192784 tp!1926498)))

(assert (= (and b!6974895 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34782 (regTwo!34782 r!13765))))) b!6976239))

(assert (= (and b!6974895 ((_ is Concat!25980) (regOne!34783 (regOne!34782 (regTwo!34782 r!13765))))) b!6976240))

(assert (= (and b!6974895 ((_ is Star!17135) (regOne!34783 (regOne!34782 (regTwo!34782 r!13765))))) b!6976241))

(assert (= (and b!6974895 ((_ is Union!17135) (regOne!34783 (regOne!34782 (regTwo!34782 r!13765))))) b!6976242))

(declare-fun e!4192785 () Bool)

(assert (=> b!6974895 (= tp!1925396 e!4192785)))

(declare-fun b!6976244 () Bool)

(declare-fun tp!1926504 () Bool)

(declare-fun tp!1926502 () Bool)

(assert (=> b!6976244 (= e!4192785 (and tp!1926504 tp!1926502))))

(declare-fun b!6976243 () Bool)

(assert (=> b!6976243 (= e!4192785 tp_is_empty!43495)))

(declare-fun b!6976246 () Bool)

(declare-fun tp!1926501 () Bool)

(declare-fun tp!1926505 () Bool)

(assert (=> b!6976246 (= e!4192785 (and tp!1926501 tp!1926505))))

(declare-fun b!6976245 () Bool)

(declare-fun tp!1926503 () Bool)

(assert (=> b!6976245 (= e!4192785 tp!1926503)))

(assert (= (and b!6974895 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34782 (regTwo!34782 r!13765))))) b!6976243))

(assert (= (and b!6974895 ((_ is Concat!25980) (regTwo!34783 (regOne!34782 (regTwo!34782 r!13765))))) b!6976244))

(assert (= (and b!6974895 ((_ is Star!17135) (regTwo!34783 (regOne!34782 (regTwo!34782 r!13765))))) b!6976245))

(assert (= (and b!6974895 ((_ is Union!17135) (regTwo!34783 (regOne!34782 (regTwo!34782 r!13765))))) b!6976246))

(declare-fun e!4192786 () Bool)

(assert (=> b!6974877 (= tp!1925375 e!4192786)))

(declare-fun b!6976248 () Bool)

(declare-fun tp!1926509 () Bool)

(declare-fun tp!1926507 () Bool)

(assert (=> b!6976248 (= e!4192786 (and tp!1926509 tp!1926507))))

(declare-fun b!6976247 () Bool)

(assert (=> b!6976247 (= e!4192786 tp_is_empty!43495)))

(declare-fun b!6976250 () Bool)

(declare-fun tp!1926506 () Bool)

(declare-fun tp!1926510 () Bool)

(assert (=> b!6976250 (= e!4192786 (and tp!1926506 tp!1926510))))

(declare-fun b!6976249 () Bool)

(declare-fun tp!1926508 () Bool)

(assert (=> b!6976249 (= e!4192786 tp!1926508)))

(assert (= (and b!6974877 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34782 (regOne!34782 r!13765))))) b!6976247))

(assert (= (and b!6974877 ((_ is Concat!25980) (regOne!34782 (regTwo!34782 (regOne!34782 r!13765))))) b!6976248))

(assert (= (and b!6974877 ((_ is Star!17135) (regOne!34782 (regTwo!34782 (regOne!34782 r!13765))))) b!6976249))

(assert (= (and b!6974877 ((_ is Union!17135) (regOne!34782 (regTwo!34782 (regOne!34782 r!13765))))) b!6976250))

(declare-fun e!4192787 () Bool)

(assert (=> b!6974877 (= tp!1925373 e!4192787)))

(declare-fun b!6976252 () Bool)

(declare-fun tp!1926514 () Bool)

(declare-fun tp!1926512 () Bool)

(assert (=> b!6976252 (= e!4192787 (and tp!1926514 tp!1926512))))

(declare-fun b!6976251 () Bool)

(assert (=> b!6976251 (= e!4192787 tp_is_empty!43495)))

(declare-fun b!6976254 () Bool)

(declare-fun tp!1926511 () Bool)

(declare-fun tp!1926515 () Bool)

(assert (=> b!6976254 (= e!4192787 (and tp!1926511 tp!1926515))))

(declare-fun b!6976253 () Bool)

(declare-fun tp!1926513 () Bool)

(assert (=> b!6976253 (= e!4192787 tp!1926513)))

(assert (= (and b!6974877 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34782 (regOne!34782 r!13765))))) b!6976251))

(assert (= (and b!6974877 ((_ is Concat!25980) (regTwo!34782 (regTwo!34782 (regOne!34782 r!13765))))) b!6976252))

(assert (= (and b!6974877 ((_ is Star!17135) (regTwo!34782 (regTwo!34782 (regOne!34782 r!13765))))) b!6976253))

(assert (= (and b!6974877 ((_ is Union!17135) (regTwo!34782 (regTwo!34782 (regOne!34782 r!13765))))) b!6976254))

(declare-fun e!4192788 () Bool)

(assert (=> b!6974819 (= tp!1925302 e!4192788)))

(declare-fun b!6976256 () Bool)

(declare-fun tp!1926519 () Bool)

(declare-fun tp!1926517 () Bool)

(assert (=> b!6976256 (= e!4192788 (and tp!1926519 tp!1926517))))

(declare-fun b!6976255 () Bool)

(assert (=> b!6976255 (= e!4192788 tp_is_empty!43495)))

(declare-fun b!6976258 () Bool)

(declare-fun tp!1926516 () Bool)

(declare-fun tp!1926520 () Bool)

(assert (=> b!6976258 (= e!4192788 (and tp!1926516 tp!1926520))))

(declare-fun b!6976257 () Bool)

(declare-fun tp!1926518 () Bool)

(assert (=> b!6976257 (= e!4192788 tp!1926518)))

(assert (= (and b!6974819 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34782 (regOne!34783 r!13765))))) b!6976255))

(assert (= (and b!6974819 ((_ is Concat!25980) (regOne!34782 (regOne!34782 (regOne!34783 r!13765))))) b!6976256))

(assert (= (and b!6974819 ((_ is Star!17135) (regOne!34782 (regOne!34782 (regOne!34783 r!13765))))) b!6976257))

(assert (= (and b!6974819 ((_ is Union!17135) (regOne!34782 (regOne!34782 (regOne!34783 r!13765))))) b!6976258))

(declare-fun e!4192789 () Bool)

(assert (=> b!6974819 (= tp!1925300 e!4192789)))

(declare-fun b!6976260 () Bool)

(declare-fun tp!1926524 () Bool)

(declare-fun tp!1926522 () Bool)

(assert (=> b!6976260 (= e!4192789 (and tp!1926524 tp!1926522))))

(declare-fun b!6976259 () Bool)

(assert (=> b!6976259 (= e!4192789 tp_is_empty!43495)))

(declare-fun b!6976262 () Bool)

(declare-fun tp!1926521 () Bool)

(declare-fun tp!1926525 () Bool)

(assert (=> b!6976262 (= e!4192789 (and tp!1926521 tp!1926525))))

(declare-fun b!6976261 () Bool)

(declare-fun tp!1926523 () Bool)

(assert (=> b!6976261 (= e!4192789 tp!1926523)))

(assert (= (and b!6974819 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34782 (regOne!34783 r!13765))))) b!6976259))

(assert (= (and b!6974819 ((_ is Concat!25980) (regTwo!34782 (regOne!34782 (regOne!34783 r!13765))))) b!6976260))

(assert (= (and b!6974819 ((_ is Star!17135) (regTwo!34782 (regOne!34782 (regOne!34783 r!13765))))) b!6976261))

(assert (= (and b!6974819 ((_ is Union!17135) (regTwo!34782 (regOne!34782 (regOne!34783 r!13765))))) b!6976262))

(declare-fun e!4192790 () Bool)

(assert (=> b!6974828 (= tp!1925311 e!4192790)))

(declare-fun b!6976264 () Bool)

(declare-fun tp!1926529 () Bool)

(declare-fun tp!1926527 () Bool)

(assert (=> b!6976264 (= e!4192790 (and tp!1926529 tp!1926527))))

(declare-fun b!6976263 () Bool)

(assert (=> b!6976263 (= e!4192790 tp_is_empty!43495)))

(declare-fun b!6976266 () Bool)

(declare-fun tp!1926526 () Bool)

(declare-fun tp!1926530 () Bool)

(assert (=> b!6976266 (= e!4192790 (and tp!1926526 tp!1926530))))

(declare-fun b!6976265 () Bool)

(declare-fun tp!1926528 () Bool)

(assert (=> b!6976265 (= e!4192790 tp!1926528)))

(assert (= (and b!6974828 ((_ is ElementMatch!17135) (reg!17464 (regOne!34782 (regTwo!34783 r!13765))))) b!6976263))

(assert (= (and b!6974828 ((_ is Concat!25980) (reg!17464 (regOne!34782 (regTwo!34783 r!13765))))) b!6976264))

(assert (= (and b!6974828 ((_ is Star!17135) (reg!17464 (regOne!34782 (regTwo!34783 r!13765))))) b!6976265))

(assert (= (and b!6974828 ((_ is Union!17135) (reg!17464 (regOne!34782 (regTwo!34783 r!13765))))) b!6976266))

(declare-fun e!4192791 () Bool)

(assert (=> b!6974805 (= tp!1925279 e!4192791)))

(declare-fun b!6976268 () Bool)

(declare-fun tp!1926534 () Bool)

(declare-fun tp!1926532 () Bool)

(assert (=> b!6976268 (= e!4192791 (and tp!1926534 tp!1926532))))

(declare-fun b!6976267 () Bool)

(assert (=> b!6976267 (= e!4192791 tp_is_empty!43495)))

(declare-fun b!6976270 () Bool)

(declare-fun tp!1926531 () Bool)

(declare-fun tp!1926535 () Bool)

(assert (=> b!6976270 (= e!4192791 (and tp!1926531 tp!1926535))))

(declare-fun b!6976269 () Bool)

(declare-fun tp!1926533 () Bool)

(assert (=> b!6976269 (= e!4192791 tp!1926533)))

(assert (= (and b!6974805 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976267))

(assert (= (and b!6974805 ((_ is Concat!25980) (regOne!34783 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976268))

(assert (= (and b!6974805 ((_ is Star!17135) (regOne!34783 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976269))

(assert (= (and b!6974805 ((_ is Union!17135) (regOne!34783 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976270))

(declare-fun e!4192792 () Bool)

(assert (=> b!6974805 (= tp!1925283 e!4192792)))

(declare-fun b!6976272 () Bool)

(declare-fun tp!1926539 () Bool)

(declare-fun tp!1926537 () Bool)

(assert (=> b!6976272 (= e!4192792 (and tp!1926539 tp!1926537))))

(declare-fun b!6976271 () Bool)

(assert (=> b!6976271 (= e!4192792 tp_is_empty!43495)))

(declare-fun b!6976274 () Bool)

(declare-fun tp!1926536 () Bool)

(declare-fun tp!1926540 () Bool)

(assert (=> b!6976274 (= e!4192792 (and tp!1926536 tp!1926540))))

(declare-fun b!6976273 () Bool)

(declare-fun tp!1926538 () Bool)

(assert (=> b!6976273 (= e!4192792 tp!1926538)))

(assert (= (and b!6974805 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976271))

(assert (= (and b!6974805 ((_ is Concat!25980) (regTwo!34783 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976272))

(assert (= (and b!6974805 ((_ is Star!17135) (regTwo!34783 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976273))

(assert (= (and b!6974805 ((_ is Union!17135) (regTwo!34783 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976274))

(declare-fun e!4192793 () Bool)

(assert (=> b!6974906 (= tp!1925409 e!4192793)))

(declare-fun b!6976276 () Bool)

(declare-fun tp!1926544 () Bool)

(declare-fun tp!1926542 () Bool)

(assert (=> b!6976276 (= e!4192793 (and tp!1926544 tp!1926542))))

(declare-fun b!6976275 () Bool)

(assert (=> b!6976275 (= e!4192793 tp_is_empty!43495)))

(declare-fun b!6976278 () Bool)

(declare-fun tp!1926541 () Bool)

(declare-fun tp!1926545 () Bool)

(assert (=> b!6976278 (= e!4192793 (and tp!1926541 tp!1926545))))

(declare-fun b!6976277 () Bool)

(declare-fun tp!1926543 () Bool)

(assert (=> b!6976277 (= e!4192793 tp!1926543)))

(assert (= (and b!6974906 ((_ is ElementMatch!17135) (reg!17464 (regOne!34782 (h!73276 l!9142))))) b!6976275))

(assert (= (and b!6974906 ((_ is Concat!25980) (reg!17464 (regOne!34782 (h!73276 l!9142))))) b!6976276))

(assert (= (and b!6974906 ((_ is Star!17135) (reg!17464 (regOne!34782 (h!73276 l!9142))))) b!6976277))

(assert (= (and b!6974906 ((_ is Union!17135) (reg!17464 (regOne!34782 (h!73276 l!9142))))) b!6976278))

(declare-fun e!4192794 () Bool)

(assert (=> b!6974915 (= tp!1925417 e!4192794)))

(declare-fun b!6976280 () Bool)

(declare-fun tp!1926549 () Bool)

(declare-fun tp!1926547 () Bool)

(assert (=> b!6976280 (= e!4192794 (and tp!1926549 tp!1926547))))

(declare-fun b!6976279 () Bool)

(assert (=> b!6976279 (= e!4192794 tp_is_empty!43495)))

(declare-fun b!6976282 () Bool)

(declare-fun tp!1926546 () Bool)

(declare-fun tp!1926550 () Bool)

(assert (=> b!6976282 (= e!4192794 (and tp!1926546 tp!1926550))))

(declare-fun b!6976281 () Bool)

(declare-fun tp!1926548 () Bool)

(assert (=> b!6976281 (= e!4192794 tp!1926548)))

(assert (= (and b!6974915 ((_ is ElementMatch!17135) (regOne!34783 (reg!17464 (regTwo!34783 r!13765))))) b!6976279))

(assert (= (and b!6974915 ((_ is Concat!25980) (regOne!34783 (reg!17464 (regTwo!34783 r!13765))))) b!6976280))

(assert (= (and b!6974915 ((_ is Star!17135) (regOne!34783 (reg!17464 (regTwo!34783 r!13765))))) b!6976281))

(assert (= (and b!6974915 ((_ is Union!17135) (regOne!34783 (reg!17464 (regTwo!34783 r!13765))))) b!6976282))

(declare-fun e!4192795 () Bool)

(assert (=> b!6974915 (= tp!1925421 e!4192795)))

(declare-fun b!6976284 () Bool)

(declare-fun tp!1926554 () Bool)

(declare-fun tp!1926552 () Bool)

(assert (=> b!6976284 (= e!4192795 (and tp!1926554 tp!1926552))))

(declare-fun b!6976283 () Bool)

(assert (=> b!6976283 (= e!4192795 tp_is_empty!43495)))

(declare-fun b!6976286 () Bool)

(declare-fun tp!1926551 () Bool)

(declare-fun tp!1926555 () Bool)

(assert (=> b!6976286 (= e!4192795 (and tp!1926551 tp!1926555))))

(declare-fun b!6976285 () Bool)

(declare-fun tp!1926553 () Bool)

(assert (=> b!6976285 (= e!4192795 tp!1926553)))

(assert (= (and b!6974915 ((_ is ElementMatch!17135) (regTwo!34783 (reg!17464 (regTwo!34783 r!13765))))) b!6976283))

(assert (= (and b!6974915 ((_ is Concat!25980) (regTwo!34783 (reg!17464 (regTwo!34783 r!13765))))) b!6976284))

(assert (= (and b!6974915 ((_ is Star!17135) (regTwo!34783 (reg!17464 (regTwo!34783 r!13765))))) b!6976285))

(assert (= (and b!6974915 ((_ is Union!17135) (regTwo!34783 (reg!17464 (regTwo!34783 r!13765))))) b!6976286))

(declare-fun e!4192796 () Bool)

(assert (=> b!6974854 (= tp!1925344 e!4192796)))

(declare-fun b!6976288 () Bool)

(declare-fun tp!1926559 () Bool)

(declare-fun tp!1926557 () Bool)

(assert (=> b!6976288 (= e!4192796 (and tp!1926559 tp!1926557))))

(declare-fun b!6976287 () Bool)

(assert (=> b!6976287 (= e!4192796 tp_is_empty!43495)))

(declare-fun b!6976290 () Bool)

(declare-fun tp!1926556 () Bool)

(declare-fun tp!1926560 () Bool)

(assert (=> b!6976290 (= e!4192796 (and tp!1926556 tp!1926560))))

(declare-fun b!6976289 () Bool)

(declare-fun tp!1926558 () Bool)

(assert (=> b!6976289 (= e!4192796 tp!1926558)))

(assert (= (and b!6974854 ((_ is ElementMatch!17135) (reg!17464 (regOne!34783 (h!73276 l!9142))))) b!6976287))

(assert (= (and b!6974854 ((_ is Concat!25980) (reg!17464 (regOne!34783 (h!73276 l!9142))))) b!6976288))

(assert (= (and b!6974854 ((_ is Star!17135) (reg!17464 (regOne!34783 (h!73276 l!9142))))) b!6976289))

(assert (= (and b!6974854 ((_ is Union!17135) (reg!17464 (regOne!34783 (h!73276 l!9142))))) b!6976290))

(declare-fun e!4192797 () Bool)

(assert (=> b!6974863 (= tp!1925352 e!4192797)))

(declare-fun b!6976292 () Bool)

(declare-fun tp!1926564 () Bool)

(declare-fun tp!1926562 () Bool)

(assert (=> b!6976292 (= e!4192797 (and tp!1926564 tp!1926562))))

(declare-fun b!6976291 () Bool)

(assert (=> b!6976291 (= e!4192797 tp_is_empty!43495)))

(declare-fun b!6976294 () Bool)

(declare-fun tp!1926561 () Bool)

(declare-fun tp!1926565 () Bool)

(assert (=> b!6976294 (= e!4192797 (and tp!1926561 tp!1926565))))

(declare-fun b!6976293 () Bool)

(declare-fun tp!1926563 () Bool)

(assert (=> b!6976293 (= e!4192797 tp!1926563)))

(assert (= (and b!6974863 ((_ is ElementMatch!17135) (regOne!34783 (reg!17464 (regTwo!34782 r!13765))))) b!6976291))

(assert (= (and b!6974863 ((_ is Concat!25980) (regOne!34783 (reg!17464 (regTwo!34782 r!13765))))) b!6976292))

(assert (= (and b!6974863 ((_ is Star!17135) (regOne!34783 (reg!17464 (regTwo!34782 r!13765))))) b!6976293))

(assert (= (and b!6974863 ((_ is Union!17135) (regOne!34783 (reg!17464 (regTwo!34782 r!13765))))) b!6976294))

(declare-fun e!4192798 () Bool)

(assert (=> b!6974863 (= tp!1925356 e!4192798)))

(declare-fun b!6976296 () Bool)

(declare-fun tp!1926569 () Bool)

(declare-fun tp!1926567 () Bool)

(assert (=> b!6976296 (= e!4192798 (and tp!1926569 tp!1926567))))

(declare-fun b!6976295 () Bool)

(assert (=> b!6976295 (= e!4192798 tp_is_empty!43495)))

(declare-fun b!6976298 () Bool)

(declare-fun tp!1926566 () Bool)

(declare-fun tp!1926570 () Bool)

(assert (=> b!6976298 (= e!4192798 (and tp!1926566 tp!1926570))))

(declare-fun b!6976297 () Bool)

(declare-fun tp!1926568 () Bool)

(assert (=> b!6976297 (= e!4192798 tp!1926568)))

(assert (= (and b!6974863 ((_ is ElementMatch!17135) (regTwo!34783 (reg!17464 (regTwo!34782 r!13765))))) b!6976295))

(assert (= (and b!6974863 ((_ is Concat!25980) (regTwo!34783 (reg!17464 (regTwo!34782 r!13765))))) b!6976296))

(assert (= (and b!6974863 ((_ is Star!17135) (regTwo!34783 (reg!17464 (regTwo!34782 r!13765))))) b!6976297))

(assert (= (and b!6974863 ((_ is Union!17135) (regTwo!34783 (reg!17464 (regTwo!34782 r!13765))))) b!6976298))

(declare-fun e!4192799 () Bool)

(assert (=> b!6974838 (= tp!1925324 e!4192799)))

(declare-fun b!6976300 () Bool)

(declare-fun tp!1926574 () Bool)

(declare-fun tp!1926572 () Bool)

(assert (=> b!6976300 (= e!4192799 (and tp!1926574 tp!1926572))))

(declare-fun b!6976299 () Bool)

(assert (=> b!6976299 (= e!4192799 tp_is_empty!43495)))

(declare-fun b!6976302 () Bool)

(declare-fun tp!1926571 () Bool)

(declare-fun tp!1926575 () Bool)

(assert (=> b!6976302 (= e!4192799 (and tp!1926571 tp!1926575))))

(declare-fun b!6976301 () Bool)

(declare-fun tp!1926573 () Bool)

(assert (=> b!6976301 (= e!4192799 tp!1926573)))

(assert (= (and b!6974838 ((_ is ElementMatch!17135) (h!73276 (t!380695 (t!380695 l!9142))))) b!6976299))

(assert (= (and b!6974838 ((_ is Concat!25980) (h!73276 (t!380695 (t!380695 l!9142))))) b!6976300))

(assert (= (and b!6974838 ((_ is Star!17135) (h!73276 (t!380695 (t!380695 l!9142))))) b!6976301))

(assert (= (and b!6974838 ((_ is Union!17135) (h!73276 (t!380695 (t!380695 l!9142))))) b!6976302))

(declare-fun b!6976303 () Bool)

(declare-fun e!4192800 () Bool)

(declare-fun tp!1926576 () Bool)

(declare-fun tp!1926577 () Bool)

(assert (=> b!6976303 (= e!4192800 (and tp!1926576 tp!1926577))))

(assert (=> b!6974838 (= tp!1925325 e!4192800)))

(assert (= (and b!6974838 ((_ is Cons!66828) (t!380695 (t!380695 (t!380695 l!9142))))) b!6976303))

(declare-fun e!4192801 () Bool)

(assert (=> b!6974889 (= tp!1925390 e!4192801)))

(declare-fun b!6976305 () Bool)

(declare-fun tp!1926581 () Bool)

(declare-fun tp!1926579 () Bool)

(assert (=> b!6976305 (= e!4192801 (and tp!1926581 tp!1926579))))

(declare-fun b!6976304 () Bool)

(assert (=> b!6976304 (= e!4192801 tp_is_empty!43495)))

(declare-fun b!6976307 () Bool)

(declare-fun tp!1926578 () Bool)

(declare-fun tp!1926582 () Bool)

(assert (=> b!6976307 (= e!4192801 (and tp!1926578 tp!1926582))))

(declare-fun b!6976306 () Bool)

(declare-fun tp!1926580 () Bool)

(assert (=> b!6976306 (= e!4192801 tp!1926580)))

(assert (= (and b!6974889 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976304))

(assert (= (and b!6974889 ((_ is Concat!25980) (regOne!34782 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976305))

(assert (= (and b!6974889 ((_ is Star!17135) (regOne!34782 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976306))

(assert (= (and b!6974889 ((_ is Union!17135) (regOne!34782 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976307))

(declare-fun e!4192802 () Bool)

(assert (=> b!6974889 (= tp!1925388 e!4192802)))

(declare-fun b!6976309 () Bool)

(declare-fun tp!1926586 () Bool)

(declare-fun tp!1926584 () Bool)

(assert (=> b!6976309 (= e!4192802 (and tp!1926586 tp!1926584))))

(declare-fun b!6976308 () Bool)

(assert (=> b!6976308 (= e!4192802 tp_is_empty!43495)))

(declare-fun b!6976311 () Bool)

(declare-fun tp!1926583 () Bool)

(declare-fun tp!1926587 () Bool)

(assert (=> b!6976311 (= e!4192802 (and tp!1926583 tp!1926587))))

(declare-fun b!6976310 () Bool)

(declare-fun tp!1926585 () Bool)

(assert (=> b!6976310 (= e!4192802 tp!1926585)))

(assert (= (and b!6974889 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976308))

(assert (= (and b!6974889 ((_ is Concat!25980) (regTwo!34782 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976309))

(assert (= (and b!6974889 ((_ is Star!17135) (regTwo!34782 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976310))

(assert (= (and b!6974889 ((_ is Union!17135) (regTwo!34782 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976311))

(declare-fun e!4192803 () Bool)

(assert (=> b!6974797 (= tp!1925269 e!4192803)))

(declare-fun b!6976313 () Bool)

(declare-fun tp!1926591 () Bool)

(declare-fun tp!1926589 () Bool)

(assert (=> b!6976313 (= e!4192803 (and tp!1926591 tp!1926589))))

(declare-fun b!6976312 () Bool)

(assert (=> b!6976312 (= e!4192803 tp_is_empty!43495)))

(declare-fun b!6976315 () Bool)

(declare-fun tp!1926588 () Bool)

(declare-fun tp!1926592 () Bool)

(assert (=> b!6976315 (= e!4192803 (and tp!1926588 tp!1926592))))

(declare-fun b!6976314 () Bool)

(declare-fun tp!1926590 () Bool)

(assert (=> b!6976314 (= e!4192803 tp!1926590)))

(assert (= (and b!6974797 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34783 (regOne!34782 r!13765))))) b!6976312))

(assert (= (and b!6974797 ((_ is Concat!25980) (regOne!34783 (regTwo!34783 (regOne!34782 r!13765))))) b!6976313))

(assert (= (and b!6974797 ((_ is Star!17135) (regOne!34783 (regTwo!34783 (regOne!34782 r!13765))))) b!6976314))

(assert (= (and b!6974797 ((_ is Union!17135) (regOne!34783 (regTwo!34783 (regOne!34782 r!13765))))) b!6976315))

(declare-fun e!4192804 () Bool)

(assert (=> b!6974797 (= tp!1925273 e!4192804)))

(declare-fun b!6976317 () Bool)

(declare-fun tp!1926596 () Bool)

(declare-fun tp!1926594 () Bool)

(assert (=> b!6976317 (= e!4192804 (and tp!1926596 tp!1926594))))

(declare-fun b!6976316 () Bool)

(assert (=> b!6976316 (= e!4192804 tp_is_empty!43495)))

(declare-fun b!6976319 () Bool)

(declare-fun tp!1926593 () Bool)

(declare-fun tp!1926597 () Bool)

(assert (=> b!6976319 (= e!4192804 (and tp!1926593 tp!1926597))))

(declare-fun b!6976318 () Bool)

(declare-fun tp!1926595 () Bool)

(assert (=> b!6976318 (= e!4192804 tp!1926595)))

(assert (= (and b!6974797 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34783 (regOne!34782 r!13765))))) b!6976316))

(assert (= (and b!6974797 ((_ is Concat!25980) (regTwo!34783 (regTwo!34783 (regOne!34782 r!13765))))) b!6976317))

(assert (= (and b!6974797 ((_ is Star!17135) (regTwo!34783 (regTwo!34783 (regOne!34782 r!13765))))) b!6976318))

(assert (= (and b!6974797 ((_ is Union!17135) (regTwo!34783 (regTwo!34783 (regOne!34782 r!13765))))) b!6976319))

(declare-fun e!4192805 () Bool)

(assert (=> b!6974898 (= tp!1925399 e!4192805)))

(declare-fun b!6976321 () Bool)

(declare-fun tp!1926601 () Bool)

(declare-fun tp!1926599 () Bool)

(assert (=> b!6976321 (= e!4192805 (and tp!1926601 tp!1926599))))

(declare-fun b!6976320 () Bool)

(assert (=> b!6976320 (= e!4192805 tp_is_empty!43495)))

(declare-fun b!6976323 () Bool)

(declare-fun tp!1926598 () Bool)

(declare-fun tp!1926602 () Bool)

(assert (=> b!6976323 (= e!4192805 (and tp!1926598 tp!1926602))))

(declare-fun b!6976322 () Bool)

(declare-fun tp!1926600 () Bool)

(assert (=> b!6976322 (= e!4192805 tp!1926600)))

(assert (= (and b!6974898 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976320))

(assert (= (and b!6974898 ((_ is Concat!25980) (reg!17464 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976321))

(assert (= (and b!6974898 ((_ is Star!17135) (reg!17464 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976322))

(assert (= (and b!6974898 ((_ is Union!17135) (reg!17464 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976323))

(declare-fun e!4192806 () Bool)

(assert (=> b!6974907 (= tp!1925407 e!4192806)))

(declare-fun b!6976325 () Bool)

(declare-fun tp!1926606 () Bool)

(declare-fun tp!1926604 () Bool)

(assert (=> b!6976325 (= e!4192806 (and tp!1926606 tp!1926604))))

(declare-fun b!6976324 () Bool)

(assert (=> b!6976324 (= e!4192806 tp_is_empty!43495)))

(declare-fun b!6976327 () Bool)

(declare-fun tp!1926603 () Bool)

(declare-fun tp!1926607 () Bool)

(assert (=> b!6976327 (= e!4192806 (and tp!1926603 tp!1926607))))

(declare-fun b!6976326 () Bool)

(declare-fun tp!1926605 () Bool)

(assert (=> b!6976326 (= e!4192806 tp!1926605)))

(assert (= (and b!6974907 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34782 (h!73276 l!9142))))) b!6976324))

(assert (= (and b!6974907 ((_ is Concat!25980) (regOne!34783 (regOne!34782 (h!73276 l!9142))))) b!6976325))

(assert (= (and b!6974907 ((_ is Star!17135) (regOne!34783 (regOne!34782 (h!73276 l!9142))))) b!6976326))

(assert (= (and b!6974907 ((_ is Union!17135) (regOne!34783 (regOne!34782 (h!73276 l!9142))))) b!6976327))

(declare-fun e!4192807 () Bool)

(assert (=> b!6974907 (= tp!1925411 e!4192807)))

(declare-fun b!6976329 () Bool)

(declare-fun tp!1926611 () Bool)

(declare-fun tp!1926609 () Bool)

(assert (=> b!6976329 (= e!4192807 (and tp!1926611 tp!1926609))))

(declare-fun b!6976328 () Bool)

(assert (=> b!6976328 (= e!4192807 tp_is_empty!43495)))

(declare-fun b!6976331 () Bool)

(declare-fun tp!1926608 () Bool)

(declare-fun tp!1926612 () Bool)

(assert (=> b!6976331 (= e!4192807 (and tp!1926608 tp!1926612))))

(declare-fun b!6976330 () Bool)

(declare-fun tp!1926610 () Bool)

(assert (=> b!6976330 (= e!4192807 tp!1926610)))

(assert (= (and b!6974907 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34782 (h!73276 l!9142))))) b!6976328))

(assert (= (and b!6974907 ((_ is Concat!25980) (regTwo!34783 (regOne!34782 (h!73276 l!9142))))) b!6976329))

(assert (= (and b!6974907 ((_ is Star!17135) (regTwo!34783 (regOne!34782 (h!73276 l!9142))))) b!6976330))

(assert (= (and b!6974907 ((_ is Union!17135) (regTwo!34783 (regOne!34782 (h!73276 l!9142))))) b!6976331))

(declare-fun e!4192808 () Bool)

(assert (=> b!6974831 (= tp!1925317 e!4192808)))

(declare-fun b!6976333 () Bool)

(declare-fun tp!1926616 () Bool)

(declare-fun tp!1926614 () Bool)

(assert (=> b!6976333 (= e!4192808 (and tp!1926616 tp!1926614))))

(declare-fun b!6976332 () Bool)

(assert (=> b!6976332 (= e!4192808 tp_is_empty!43495)))

(declare-fun b!6976335 () Bool)

(declare-fun tp!1926613 () Bool)

(declare-fun tp!1926617 () Bool)

(assert (=> b!6976335 (= e!4192808 (and tp!1926613 tp!1926617))))

(declare-fun b!6976334 () Bool)

(declare-fun tp!1926615 () Bool)

(assert (=> b!6976334 (= e!4192808 tp!1926615)))

(assert (= (and b!6974831 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976332))

(assert (= (and b!6974831 ((_ is Concat!25980) (regOne!34782 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976333))

(assert (= (and b!6974831 ((_ is Star!17135) (regOne!34782 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976334))

(assert (= (and b!6974831 ((_ is Union!17135) (regOne!34782 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976335))

(declare-fun e!4192809 () Bool)

(assert (=> b!6974831 (= tp!1925315 e!4192809)))

(declare-fun b!6976337 () Bool)

(declare-fun tp!1926621 () Bool)

(declare-fun tp!1926619 () Bool)

(assert (=> b!6976337 (= e!4192809 (and tp!1926621 tp!1926619))))

(declare-fun b!6976336 () Bool)

(assert (=> b!6976336 (= e!4192809 tp_is_empty!43495)))

(declare-fun b!6976339 () Bool)

(declare-fun tp!1926618 () Bool)

(declare-fun tp!1926622 () Bool)

(assert (=> b!6976339 (= e!4192809 (and tp!1926618 tp!1926622))))

(declare-fun b!6976338 () Bool)

(declare-fun tp!1926620 () Bool)

(assert (=> b!6976338 (= e!4192809 tp!1926620)))

(assert (= (and b!6974831 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976336))

(assert (= (and b!6974831 ((_ is Concat!25980) (regTwo!34782 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976337))

(assert (= (and b!6974831 ((_ is Star!17135) (regTwo!34782 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976338))

(assert (= (and b!6974831 ((_ is Union!17135) (regTwo!34782 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976339))

(declare-fun e!4192810 () Bool)

(assert (=> b!6974850 (= tp!1925336 e!4192810)))

(declare-fun b!6976341 () Bool)

(declare-fun tp!1926626 () Bool)

(declare-fun tp!1926624 () Bool)

(assert (=> b!6976341 (= e!4192810 (and tp!1926626 tp!1926624))))

(declare-fun b!6976340 () Bool)

(assert (=> b!6976340 (= e!4192810 tp_is_empty!43495)))

(declare-fun b!6976343 () Bool)

(declare-fun tp!1926623 () Bool)

(declare-fun tp!1926627 () Bool)

(assert (=> b!6976343 (= e!4192810 (and tp!1926623 tp!1926627))))

(declare-fun b!6976342 () Bool)

(declare-fun tp!1926625 () Bool)

(assert (=> b!6976342 (= e!4192810 tp!1926625)))

(assert (= (and b!6974850 ((_ is ElementMatch!17135) (regOne!34783 (reg!17464 (regOne!34782 r!13765))))) b!6976340))

(assert (= (and b!6974850 ((_ is Concat!25980) (regOne!34783 (reg!17464 (regOne!34782 r!13765))))) b!6976341))

(assert (= (and b!6974850 ((_ is Star!17135) (regOne!34783 (reg!17464 (regOne!34782 r!13765))))) b!6976342))

(assert (= (and b!6974850 ((_ is Union!17135) (regOne!34783 (reg!17464 (regOne!34782 r!13765))))) b!6976343))

(declare-fun e!4192811 () Bool)

(assert (=> b!6974850 (= tp!1925340 e!4192811)))

(declare-fun b!6976345 () Bool)

(declare-fun tp!1926631 () Bool)

(declare-fun tp!1926629 () Bool)

(assert (=> b!6976345 (= e!4192811 (and tp!1926631 tp!1926629))))

(declare-fun b!6976344 () Bool)

(assert (=> b!6976344 (= e!4192811 tp_is_empty!43495)))

(declare-fun b!6976347 () Bool)

(declare-fun tp!1926628 () Bool)

(declare-fun tp!1926632 () Bool)

(assert (=> b!6976347 (= e!4192811 (and tp!1926628 tp!1926632))))

(declare-fun b!6976346 () Bool)

(declare-fun tp!1926630 () Bool)

(assert (=> b!6976346 (= e!4192811 tp!1926630)))

(assert (= (and b!6974850 ((_ is ElementMatch!17135) (regTwo!34783 (reg!17464 (regOne!34782 r!13765))))) b!6976344))

(assert (= (and b!6974850 ((_ is Concat!25980) (regTwo!34783 (reg!17464 (regOne!34782 r!13765))))) b!6976345))

(assert (= (and b!6974850 ((_ is Star!17135) (regTwo!34783 (reg!17464 (regOne!34782 r!13765))))) b!6976346))

(assert (= (and b!6974850 ((_ is Union!17135) (regTwo!34783 (reg!17464 (regOne!34782 r!13765))))) b!6976347))

(declare-fun e!4192812 () Bool)

(assert (=> b!6974857 (= tp!1925350 e!4192812)))

(declare-fun b!6976349 () Bool)

(declare-fun tp!1926636 () Bool)

(declare-fun tp!1926634 () Bool)

(assert (=> b!6976349 (= e!4192812 (and tp!1926636 tp!1926634))))

(declare-fun b!6976348 () Bool)

(assert (=> b!6976348 (= e!4192812 tp_is_empty!43495)))

(declare-fun b!6976351 () Bool)

(declare-fun tp!1926633 () Bool)

(declare-fun tp!1926637 () Bool)

(assert (=> b!6976351 (= e!4192812 (and tp!1926633 tp!1926637))))

(declare-fun b!6976350 () Bool)

(declare-fun tp!1926635 () Bool)

(assert (=> b!6976350 (= e!4192812 tp!1926635)))

(assert (= (and b!6974857 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34783 (h!73276 l!9142))))) b!6976348))

(assert (= (and b!6974857 ((_ is Concat!25980) (regOne!34782 (regTwo!34783 (h!73276 l!9142))))) b!6976349))

(assert (= (and b!6974857 ((_ is Star!17135) (regOne!34782 (regTwo!34783 (h!73276 l!9142))))) b!6976350))

(assert (= (and b!6974857 ((_ is Union!17135) (regOne!34782 (regTwo!34783 (h!73276 l!9142))))) b!6976351))

(declare-fun e!4192813 () Bool)

(assert (=> b!6974857 (= tp!1925348 e!4192813)))

(declare-fun b!6976353 () Bool)

(declare-fun tp!1926641 () Bool)

(declare-fun tp!1926639 () Bool)

(assert (=> b!6976353 (= e!4192813 (and tp!1926641 tp!1926639))))

(declare-fun b!6976352 () Bool)

(assert (=> b!6976352 (= e!4192813 tp_is_empty!43495)))

(declare-fun b!6976355 () Bool)

(declare-fun tp!1926638 () Bool)

(declare-fun tp!1926642 () Bool)

(assert (=> b!6976355 (= e!4192813 (and tp!1926638 tp!1926642))))

(declare-fun b!6976354 () Bool)

(declare-fun tp!1926640 () Bool)

(assert (=> b!6976354 (= e!4192813 tp!1926640)))

(assert (= (and b!6974857 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34783 (h!73276 l!9142))))) b!6976352))

(assert (= (and b!6974857 ((_ is Concat!25980) (regTwo!34782 (regTwo!34783 (h!73276 l!9142))))) b!6976353))

(assert (= (and b!6974857 ((_ is Star!17135) (regTwo!34782 (regTwo!34783 (h!73276 l!9142))))) b!6976354))

(assert (= (and b!6974857 ((_ is Union!17135) (regTwo!34782 (regTwo!34783 (h!73276 l!9142))))) b!6976355))

(declare-fun e!4192814 () Bool)

(assert (=> b!6974841 (= tp!1925328 e!4192814)))

(declare-fun b!6976357 () Bool)

(declare-fun tp!1926646 () Bool)

(declare-fun tp!1926644 () Bool)

(assert (=> b!6976357 (= e!4192814 (and tp!1926646 tp!1926644))))

(declare-fun b!6976356 () Bool)

(assert (=> b!6976356 (= e!4192814 tp_is_empty!43495)))

(declare-fun b!6976359 () Bool)

(declare-fun tp!1926643 () Bool)

(declare-fun tp!1926647 () Bool)

(assert (=> b!6976359 (= e!4192814 (and tp!1926643 tp!1926647))))

(declare-fun b!6976358 () Bool)

(declare-fun tp!1926645 () Bool)

(assert (=> b!6976358 (= e!4192814 tp!1926645)))

(assert (= (and b!6974841 ((_ is ElementMatch!17135) (reg!17464 (regOne!34783 (reg!17464 r!13765))))) b!6976356))

(assert (= (and b!6974841 ((_ is Concat!25980) (reg!17464 (regOne!34783 (reg!17464 r!13765))))) b!6976357))

(assert (= (and b!6974841 ((_ is Star!17135) (reg!17464 (regOne!34783 (reg!17464 r!13765))))) b!6976358))

(assert (= (and b!6974841 ((_ is Union!17135) (reg!17464 (regOne!34783 (reg!17464 r!13765))))) b!6976359))

(declare-fun e!4192815 () Bool)

(assert (=> b!6974866 (= tp!1925359 e!4192815)))

(declare-fun b!6976361 () Bool)

(declare-fun tp!1926651 () Bool)

(declare-fun tp!1926649 () Bool)

(assert (=> b!6976361 (= e!4192815 (and tp!1926651 tp!1926649))))

(declare-fun b!6976360 () Bool)

(assert (=> b!6976360 (= e!4192815 tp_is_empty!43495)))

(declare-fun b!6976363 () Bool)

(declare-fun tp!1926648 () Bool)

(declare-fun tp!1926652 () Bool)

(assert (=> b!6976363 (= e!4192815 (and tp!1926648 tp!1926652))))

(declare-fun b!6976362 () Bool)

(declare-fun tp!1926650 () Bool)

(assert (=> b!6976362 (= e!4192815 tp!1926650)))

(assert (= (and b!6974866 ((_ is ElementMatch!17135) (reg!17464 (regOne!34783 (regOne!34783 r!13765))))) b!6976360))

(assert (= (and b!6974866 ((_ is Concat!25980) (reg!17464 (regOne!34783 (regOne!34783 r!13765))))) b!6976361))

(assert (= (and b!6974866 ((_ is Star!17135) (reg!17464 (regOne!34783 (regOne!34783 r!13765))))) b!6976362))

(assert (= (and b!6974866 ((_ is Union!17135) (reg!17464 (regOne!34783 (regOne!34783 r!13765))))) b!6976363))

(declare-fun e!4192816 () Bool)

(assert (=> b!6974875 (= tp!1925367 e!4192816)))

(declare-fun b!6976365 () Bool)

(declare-fun tp!1926656 () Bool)

(declare-fun tp!1926654 () Bool)

(assert (=> b!6976365 (= e!4192816 (and tp!1926656 tp!1926654))))

(declare-fun b!6976364 () Bool)

(assert (=> b!6976364 (= e!4192816 tp_is_empty!43495)))

(declare-fun b!6976367 () Bool)

(declare-fun tp!1926653 () Bool)

(declare-fun tp!1926657 () Bool)

(assert (=> b!6976367 (= e!4192816 (and tp!1926653 tp!1926657))))

(declare-fun b!6976366 () Bool)

(declare-fun tp!1926655 () Bool)

(assert (=> b!6976366 (= e!4192816 tp!1926655)))

(assert (= (and b!6974875 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34782 (regOne!34782 r!13765))))) b!6976364))

(assert (= (and b!6974875 ((_ is Concat!25980) (regOne!34783 (regOne!34782 (regOne!34782 r!13765))))) b!6976365))

(assert (= (and b!6974875 ((_ is Star!17135) (regOne!34783 (regOne!34782 (regOne!34782 r!13765))))) b!6976366))

(assert (= (and b!6974875 ((_ is Union!17135) (regOne!34783 (regOne!34782 (regOne!34782 r!13765))))) b!6976367))

(declare-fun e!4192817 () Bool)

(assert (=> b!6974875 (= tp!1925371 e!4192817)))

(declare-fun b!6976369 () Bool)

(declare-fun tp!1926661 () Bool)

(declare-fun tp!1926659 () Bool)

(assert (=> b!6976369 (= e!4192817 (and tp!1926661 tp!1926659))))

(declare-fun b!6976368 () Bool)

(assert (=> b!6976368 (= e!4192817 tp_is_empty!43495)))

(declare-fun b!6976371 () Bool)

(declare-fun tp!1926658 () Bool)

(declare-fun tp!1926662 () Bool)

(assert (=> b!6976371 (= e!4192817 (and tp!1926658 tp!1926662))))

(declare-fun b!6976370 () Bool)

(declare-fun tp!1926660 () Bool)

(assert (=> b!6976370 (= e!4192817 tp!1926660)))

(assert (= (and b!6974875 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34782 (regOne!34782 r!13765))))) b!6976368))

(assert (= (and b!6974875 ((_ is Concat!25980) (regTwo!34783 (regOne!34782 (regOne!34782 r!13765))))) b!6976369))

(assert (= (and b!6974875 ((_ is Star!17135) (regTwo!34783 (regOne!34782 (regOne!34782 r!13765))))) b!6976370))

(assert (= (and b!6974875 ((_ is Union!17135) (regTwo!34783 (regOne!34782 (regOne!34782 r!13765))))) b!6976371))

(declare-fun e!4192818 () Bool)

(assert (=> b!6974817 (= tp!1925294 e!4192818)))

(declare-fun b!6976373 () Bool)

(declare-fun tp!1926666 () Bool)

(declare-fun tp!1926664 () Bool)

(assert (=> b!6976373 (= e!4192818 (and tp!1926666 tp!1926664))))

(declare-fun b!6976372 () Bool)

(assert (=> b!6976372 (= e!4192818 tp_is_empty!43495)))

(declare-fun b!6976375 () Bool)

(declare-fun tp!1926663 () Bool)

(declare-fun tp!1926667 () Bool)

(assert (=> b!6976375 (= e!4192818 (and tp!1926663 tp!1926667))))

(declare-fun b!6976374 () Bool)

(declare-fun tp!1926665 () Bool)

(assert (=> b!6976374 (= e!4192818 tp!1926665)))

(assert (= (and b!6974817 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34782 (reg!17464 r!13765))))) b!6976372))

(assert (= (and b!6974817 ((_ is Concat!25980) (regOne!34783 (regTwo!34782 (reg!17464 r!13765))))) b!6976373))

(assert (= (and b!6974817 ((_ is Star!17135) (regOne!34783 (regTwo!34782 (reg!17464 r!13765))))) b!6976374))

(assert (= (and b!6974817 ((_ is Union!17135) (regOne!34783 (regTwo!34782 (reg!17464 r!13765))))) b!6976375))

(declare-fun e!4192819 () Bool)

(assert (=> b!6974817 (= tp!1925298 e!4192819)))

(declare-fun b!6976377 () Bool)

(declare-fun tp!1926671 () Bool)

(declare-fun tp!1926669 () Bool)

(assert (=> b!6976377 (= e!4192819 (and tp!1926671 tp!1926669))))

(declare-fun b!6976376 () Bool)

(assert (=> b!6976376 (= e!4192819 tp_is_empty!43495)))

(declare-fun b!6976379 () Bool)

(declare-fun tp!1926668 () Bool)

(declare-fun tp!1926672 () Bool)

(assert (=> b!6976379 (= e!4192819 (and tp!1926668 tp!1926672))))

(declare-fun b!6976378 () Bool)

(declare-fun tp!1926670 () Bool)

(assert (=> b!6976378 (= e!4192819 tp!1926670)))

(assert (= (and b!6974817 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34782 (reg!17464 r!13765))))) b!6976376))

(assert (= (and b!6974817 ((_ is Concat!25980) (regTwo!34783 (regTwo!34782 (reg!17464 r!13765))))) b!6976377))

(assert (= (and b!6974817 ((_ is Star!17135) (regTwo!34783 (regTwo!34782 (reg!17464 r!13765))))) b!6976378))

(assert (= (and b!6974817 ((_ is Union!17135) (regTwo!34783 (regTwo!34782 (reg!17464 r!13765))))) b!6976379))

(declare-fun e!4192820 () Bool)

(assert (=> b!6974799 (= tp!1925277 e!4192820)))

(declare-fun b!6976381 () Bool)

(declare-fun tp!1926676 () Bool)

(declare-fun tp!1926674 () Bool)

(assert (=> b!6976381 (= e!4192820 (and tp!1926676 tp!1926674))))

(declare-fun b!6976380 () Bool)

(assert (=> b!6976380 (= e!4192820 tp_is_empty!43495)))

(declare-fun b!6976383 () Bool)

(declare-fun tp!1926673 () Bool)

(declare-fun tp!1926677 () Bool)

(assert (=> b!6976383 (= e!4192820 (and tp!1926673 tp!1926677))))

(declare-fun b!6976382 () Bool)

(declare-fun tp!1926675 () Bool)

(assert (=> b!6976382 (= e!4192820 tp!1926675)))

(assert (= (and b!6974799 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34783 (regTwo!34782 r!13765))))) b!6976380))

(assert (= (and b!6974799 ((_ is Concat!25980) (regOne!34782 (regOne!34783 (regTwo!34782 r!13765))))) b!6976381))

(assert (= (and b!6974799 ((_ is Star!17135) (regOne!34782 (regOne!34783 (regTwo!34782 r!13765))))) b!6976382))

(assert (= (and b!6974799 ((_ is Union!17135) (regOne!34782 (regOne!34783 (regTwo!34782 r!13765))))) b!6976383))

(declare-fun e!4192821 () Bool)

(assert (=> b!6974799 (= tp!1925275 e!4192821)))

(declare-fun b!6976385 () Bool)

(declare-fun tp!1926681 () Bool)

(declare-fun tp!1926679 () Bool)

(assert (=> b!6976385 (= e!4192821 (and tp!1926681 tp!1926679))))

(declare-fun b!6976384 () Bool)

(assert (=> b!6976384 (= e!4192821 tp_is_empty!43495)))

(declare-fun b!6976387 () Bool)

(declare-fun tp!1926678 () Bool)

(declare-fun tp!1926682 () Bool)

(assert (=> b!6976387 (= e!4192821 (and tp!1926678 tp!1926682))))

(declare-fun b!6976386 () Bool)

(declare-fun tp!1926680 () Bool)

(assert (=> b!6976386 (= e!4192821 tp!1926680)))

(assert (= (and b!6974799 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34783 (regTwo!34782 r!13765))))) b!6976384))

(assert (= (and b!6974799 ((_ is Concat!25980) (regTwo!34782 (regOne!34783 (regTwo!34782 r!13765))))) b!6976385))

(assert (= (and b!6974799 ((_ is Star!17135) (regTwo!34782 (regOne!34783 (regTwo!34782 r!13765))))) b!6976386))

(assert (= (and b!6974799 ((_ is Union!17135) (regTwo!34782 (regOne!34783 (regTwo!34782 r!13765))))) b!6976387))

(declare-fun e!4192822 () Bool)

(assert (=> b!6974808 (= tp!1925286 e!4192822)))

(declare-fun b!6976389 () Bool)

(declare-fun tp!1926686 () Bool)

(declare-fun tp!1926684 () Bool)

(assert (=> b!6976389 (= e!4192822 (and tp!1926686 tp!1926684))))

(declare-fun b!6976388 () Bool)

(assert (=> b!6976388 (= e!4192822 tp_is_empty!43495)))

(declare-fun b!6976391 () Bool)

(declare-fun tp!1926683 () Bool)

(declare-fun tp!1926687 () Bool)

(assert (=> b!6976391 (= e!4192822 (and tp!1926683 tp!1926687))))

(declare-fun b!6976390 () Bool)

(declare-fun tp!1926685 () Bool)

(assert (=> b!6976390 (= e!4192822 tp!1926685)))

(assert (= (and b!6974808 ((_ is ElementMatch!17135) (reg!17464 (reg!17464 (reg!17464 r!13765))))) b!6976388))

(assert (= (and b!6974808 ((_ is Concat!25980) (reg!17464 (reg!17464 (reg!17464 r!13765))))) b!6976389))

(assert (= (and b!6974808 ((_ is Star!17135) (reg!17464 (reg!17464 (reg!17464 r!13765))))) b!6976390))

(assert (= (and b!6974808 ((_ is Union!17135) (reg!17464 (reg!17464 (reg!17464 r!13765))))) b!6976391))

(declare-fun e!4192823 () Bool)

(assert (=> b!6974909 (= tp!1925415 e!4192823)))

(declare-fun b!6976393 () Bool)

(declare-fun tp!1926691 () Bool)

(declare-fun tp!1926689 () Bool)

(assert (=> b!6976393 (= e!4192823 (and tp!1926691 tp!1926689))))

(declare-fun b!6976392 () Bool)

(assert (=> b!6976392 (= e!4192823 tp_is_empty!43495)))

(declare-fun b!6976395 () Bool)

(declare-fun tp!1926688 () Bool)

(declare-fun tp!1926692 () Bool)

(assert (=> b!6976395 (= e!4192823 (and tp!1926688 tp!1926692))))

(declare-fun b!6976394 () Bool)

(declare-fun tp!1926690 () Bool)

(assert (=> b!6976394 (= e!4192823 tp!1926690)))

(assert (= (and b!6974909 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34782 (h!73276 l!9142))))) b!6976392))

(assert (= (and b!6974909 ((_ is Concat!25980) (regOne!34782 (regTwo!34782 (h!73276 l!9142))))) b!6976393))

(assert (= (and b!6974909 ((_ is Star!17135) (regOne!34782 (regTwo!34782 (h!73276 l!9142))))) b!6976394))

(assert (= (and b!6974909 ((_ is Union!17135) (regOne!34782 (regTwo!34782 (h!73276 l!9142))))) b!6976395))

(declare-fun e!4192824 () Bool)

(assert (=> b!6974909 (= tp!1925413 e!4192824)))

(declare-fun b!6976397 () Bool)

(declare-fun tp!1926696 () Bool)

(declare-fun tp!1926694 () Bool)

(assert (=> b!6976397 (= e!4192824 (and tp!1926696 tp!1926694))))

(declare-fun b!6976396 () Bool)

(assert (=> b!6976396 (= e!4192824 tp_is_empty!43495)))

(declare-fun b!6976399 () Bool)

(declare-fun tp!1926693 () Bool)

(declare-fun tp!1926697 () Bool)

(assert (=> b!6976399 (= e!4192824 (and tp!1926693 tp!1926697))))

(declare-fun b!6976398 () Bool)

(declare-fun tp!1926695 () Bool)

(assert (=> b!6976398 (= e!4192824 tp!1926695)))

(assert (= (and b!6974909 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34782 (h!73276 l!9142))))) b!6976396))

(assert (= (and b!6974909 ((_ is Concat!25980) (regTwo!34782 (regTwo!34782 (h!73276 l!9142))))) b!6976397))

(assert (= (and b!6974909 ((_ is Star!17135) (regTwo!34782 (regTwo!34782 (h!73276 l!9142))))) b!6976398))

(assert (= (and b!6974909 ((_ is Union!17135) (regTwo!34782 (regTwo!34782 (h!73276 l!9142))))) b!6976399))

(declare-fun e!4192825 () Bool)

(assert (=> b!6974878 (= tp!1925374 e!4192825)))

(declare-fun b!6976401 () Bool)

(declare-fun tp!1926701 () Bool)

(declare-fun tp!1926699 () Bool)

(assert (=> b!6976401 (= e!4192825 (and tp!1926701 tp!1926699))))

(declare-fun b!6976400 () Bool)

(assert (=> b!6976400 (= e!4192825 tp_is_empty!43495)))

(declare-fun b!6976403 () Bool)

(declare-fun tp!1926698 () Bool)

(declare-fun tp!1926702 () Bool)

(assert (=> b!6976403 (= e!4192825 (and tp!1926698 tp!1926702))))

(declare-fun b!6976402 () Bool)

(declare-fun tp!1926700 () Bool)

(assert (=> b!6976402 (= e!4192825 tp!1926700)))

(assert (= (and b!6974878 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34782 (regOne!34782 r!13765))))) b!6976400))

(assert (= (and b!6974878 ((_ is Concat!25980) (reg!17464 (regTwo!34782 (regOne!34782 r!13765))))) b!6976401))

(assert (= (and b!6974878 ((_ is Star!17135) (reg!17464 (regTwo!34782 (regOne!34782 r!13765))))) b!6976402))

(assert (= (and b!6974878 ((_ is Union!17135) (reg!17464 (regTwo!34782 (regOne!34782 r!13765))))) b!6976403))

(declare-fun e!4192826 () Bool)

(assert (=> b!6974887 (= tp!1925382 e!4192826)))

(declare-fun b!6976405 () Bool)

(declare-fun tp!1926706 () Bool)

(declare-fun tp!1926704 () Bool)

(assert (=> b!6976405 (= e!4192826 (and tp!1926706 tp!1926704))))

(declare-fun b!6976404 () Bool)

(assert (=> b!6976404 (= e!4192826 tp_is_empty!43495)))

(declare-fun b!6976407 () Bool)

(declare-fun tp!1926703 () Bool)

(declare-fun tp!1926707 () Bool)

(assert (=> b!6976407 (= e!4192826 (and tp!1926703 tp!1926707))))

(declare-fun b!6976406 () Bool)

(declare-fun tp!1926705 () Bool)

(assert (=> b!6976406 (= e!4192826 tp!1926705)))

(assert (= (and b!6974887 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34783 (regTwo!34783 r!13765))))) b!6976404))

(assert (= (and b!6974887 ((_ is Concat!25980) (regOne!34783 (regOne!34783 (regTwo!34783 r!13765))))) b!6976405))

(assert (= (and b!6974887 ((_ is Star!17135) (regOne!34783 (regOne!34783 (regTwo!34783 r!13765))))) b!6976406))

(assert (= (and b!6974887 ((_ is Union!17135) (regOne!34783 (regOne!34783 (regTwo!34783 r!13765))))) b!6976407))

(declare-fun e!4192827 () Bool)

(assert (=> b!6974887 (= tp!1925386 e!4192827)))

(declare-fun b!6976409 () Bool)

(declare-fun tp!1926711 () Bool)

(declare-fun tp!1926709 () Bool)

(assert (=> b!6976409 (= e!4192827 (and tp!1926711 tp!1926709))))

(declare-fun b!6976408 () Bool)

(assert (=> b!6976408 (= e!4192827 tp_is_empty!43495)))

(declare-fun b!6976411 () Bool)

(declare-fun tp!1926708 () Bool)

(declare-fun tp!1926712 () Bool)

(assert (=> b!6976411 (= e!4192827 (and tp!1926708 tp!1926712))))

(declare-fun b!6976410 () Bool)

(declare-fun tp!1926710 () Bool)

(assert (=> b!6976410 (= e!4192827 tp!1926710)))

(assert (= (and b!6974887 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34783 (regTwo!34783 r!13765))))) b!6976408))

(assert (= (and b!6974887 ((_ is Concat!25980) (regTwo!34783 (regOne!34783 (regTwo!34783 r!13765))))) b!6976409))

(assert (= (and b!6974887 ((_ is Star!17135) (regTwo!34783 (regOne!34783 (regTwo!34783 r!13765))))) b!6976410))

(assert (= (and b!6974887 ((_ is Union!17135) (regTwo!34783 (regOne!34783 (regTwo!34783 r!13765))))) b!6976411))

(declare-fun e!4192828 () Bool)

(assert (=> b!6974869 (= tp!1925365 e!4192828)))

(declare-fun b!6976413 () Bool)

(declare-fun tp!1926716 () Bool)

(declare-fun tp!1926714 () Bool)

(assert (=> b!6976413 (= e!4192828 (and tp!1926716 tp!1926714))))

(declare-fun b!6976412 () Bool)

(assert (=> b!6976412 (= e!4192828 tp_is_empty!43495)))

(declare-fun b!6976415 () Bool)

(declare-fun tp!1926713 () Bool)

(declare-fun tp!1926717 () Bool)

(assert (=> b!6976415 (= e!4192828 (and tp!1926713 tp!1926717))))

(declare-fun b!6976414 () Bool)

(declare-fun tp!1926715 () Bool)

(assert (=> b!6976414 (= e!4192828 tp!1926715)))

(assert (= (and b!6974869 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34783 (regOne!34783 r!13765))))) b!6976412))

(assert (= (and b!6974869 ((_ is Concat!25980) (regOne!34782 (regTwo!34783 (regOne!34783 r!13765))))) b!6976413))

(assert (= (and b!6974869 ((_ is Star!17135) (regOne!34782 (regTwo!34783 (regOne!34783 r!13765))))) b!6976414))

(assert (= (and b!6974869 ((_ is Union!17135) (regOne!34782 (regTwo!34783 (regOne!34783 r!13765))))) b!6976415))

(declare-fun e!4192829 () Bool)

(assert (=> b!6974869 (= tp!1925363 e!4192829)))

(declare-fun b!6976417 () Bool)

(declare-fun tp!1926721 () Bool)

(declare-fun tp!1926719 () Bool)

(assert (=> b!6976417 (= e!4192829 (and tp!1926721 tp!1926719))))

(declare-fun b!6976416 () Bool)

(assert (=> b!6976416 (= e!4192829 tp_is_empty!43495)))

(declare-fun b!6976419 () Bool)

(declare-fun tp!1926718 () Bool)

(declare-fun tp!1926722 () Bool)

(assert (=> b!6976419 (= e!4192829 (and tp!1926718 tp!1926722))))

(declare-fun b!6976418 () Bool)

(declare-fun tp!1926720 () Bool)

(assert (=> b!6976418 (= e!4192829 tp!1926720)))

(assert (= (and b!6974869 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34783 (regOne!34783 r!13765))))) b!6976416))

(assert (= (and b!6974869 ((_ is Concat!25980) (regTwo!34782 (regTwo!34783 (regOne!34783 r!13765))))) b!6976417))

(assert (= (and b!6974869 ((_ is Star!17135) (regTwo!34782 (regTwo!34783 (regOne!34783 r!13765))))) b!6976418))

(assert (= (and b!6974869 ((_ is Union!17135) (regTwo!34782 (regTwo!34783 (regOne!34783 r!13765))))) b!6976419))

(declare-fun e!4192830 () Bool)

(assert (=> b!6974811 (= tp!1925292 e!4192830)))

(declare-fun b!6976421 () Bool)

(declare-fun tp!1926726 () Bool)

(declare-fun tp!1926724 () Bool)

(assert (=> b!6976421 (= e!4192830 (and tp!1926726 tp!1926724))))

(declare-fun b!6976420 () Bool)

(assert (=> b!6976420 (= e!4192830 tp_is_empty!43495)))

(declare-fun b!6976423 () Bool)

(declare-fun tp!1926723 () Bool)

(declare-fun tp!1926727 () Bool)

(assert (=> b!6976423 (= e!4192830 (and tp!1926723 tp!1926727))))

(declare-fun b!6976422 () Bool)

(declare-fun tp!1926725 () Bool)

(assert (=> b!6976422 (= e!4192830 tp!1926725)))

(assert (= (and b!6974811 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34782 (reg!17464 r!13765))))) b!6976420))

(assert (= (and b!6974811 ((_ is Concat!25980) (regOne!34782 (regOne!34782 (reg!17464 r!13765))))) b!6976421))

(assert (= (and b!6974811 ((_ is Star!17135) (regOne!34782 (regOne!34782 (reg!17464 r!13765))))) b!6976422))

(assert (= (and b!6974811 ((_ is Union!17135) (regOne!34782 (regOne!34782 (reg!17464 r!13765))))) b!6976423))

(declare-fun e!4192831 () Bool)

(assert (=> b!6974811 (= tp!1925290 e!4192831)))

(declare-fun b!6976425 () Bool)

(declare-fun tp!1926731 () Bool)

(declare-fun tp!1926729 () Bool)

(assert (=> b!6976425 (= e!4192831 (and tp!1926731 tp!1926729))))

(declare-fun b!6976424 () Bool)

(assert (=> b!6976424 (= e!4192831 tp_is_empty!43495)))

(declare-fun b!6976427 () Bool)

(declare-fun tp!1926728 () Bool)

(declare-fun tp!1926732 () Bool)

(assert (=> b!6976427 (= e!4192831 (and tp!1926728 tp!1926732))))

(declare-fun b!6976426 () Bool)

(declare-fun tp!1926730 () Bool)

(assert (=> b!6976426 (= e!4192831 tp!1926730)))

(assert (= (and b!6974811 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34782 (reg!17464 r!13765))))) b!6976424))

(assert (= (and b!6974811 ((_ is Concat!25980) (regTwo!34782 (regOne!34782 (reg!17464 r!13765))))) b!6976425))

(assert (= (and b!6974811 ((_ is Star!17135) (regTwo!34782 (regOne!34782 (reg!17464 r!13765))))) b!6976426))

(assert (= (and b!6974811 ((_ is Union!17135) (regTwo!34782 (regOne!34782 (reg!17464 r!13765))))) b!6976427))

(declare-fun e!4192832 () Bool)

(assert (=> b!6974820 (= tp!1925301 e!4192832)))

(declare-fun b!6976429 () Bool)

(declare-fun tp!1926736 () Bool)

(declare-fun tp!1926734 () Bool)

(assert (=> b!6976429 (= e!4192832 (and tp!1926736 tp!1926734))))

(declare-fun b!6976428 () Bool)

(assert (=> b!6976428 (= e!4192832 tp_is_empty!43495)))

(declare-fun b!6976431 () Bool)

(declare-fun tp!1926733 () Bool)

(declare-fun tp!1926737 () Bool)

(assert (=> b!6976431 (= e!4192832 (and tp!1926733 tp!1926737))))

(declare-fun b!6976430 () Bool)

(declare-fun tp!1926735 () Bool)

(assert (=> b!6976430 (= e!4192832 tp!1926735)))

(assert (= (and b!6974820 ((_ is ElementMatch!17135) (reg!17464 (regOne!34782 (regOne!34783 r!13765))))) b!6976428))

(assert (= (and b!6974820 ((_ is Concat!25980) (reg!17464 (regOne!34782 (regOne!34783 r!13765))))) b!6976429))

(assert (= (and b!6974820 ((_ is Star!17135) (reg!17464 (regOne!34782 (regOne!34783 r!13765))))) b!6976430))

(assert (= (and b!6974820 ((_ is Union!17135) (reg!17464 (regOne!34782 (regOne!34783 r!13765))))) b!6976431))

(declare-fun e!4192833 () Bool)

(assert (=> b!6974844 (= tp!1925334 e!4192833)))

(declare-fun b!6976433 () Bool)

(declare-fun tp!1926741 () Bool)

(declare-fun tp!1926739 () Bool)

(assert (=> b!6976433 (= e!4192833 (and tp!1926741 tp!1926739))))

(declare-fun b!6976432 () Bool)

(assert (=> b!6976432 (= e!4192833 tp_is_empty!43495)))

(declare-fun b!6976435 () Bool)

(declare-fun tp!1926738 () Bool)

(declare-fun tp!1926742 () Bool)

(assert (=> b!6976435 (= e!4192833 (and tp!1926738 tp!1926742))))

(declare-fun b!6976434 () Bool)

(declare-fun tp!1926740 () Bool)

(assert (=> b!6976434 (= e!4192833 tp!1926740)))

(assert (= (and b!6974844 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34783 (reg!17464 r!13765))))) b!6976432))

(assert (= (and b!6974844 ((_ is Concat!25980) (regOne!34782 (regTwo!34783 (reg!17464 r!13765))))) b!6976433))

(assert (= (and b!6974844 ((_ is Star!17135) (regOne!34782 (regTwo!34783 (reg!17464 r!13765))))) b!6976434))

(assert (= (and b!6974844 ((_ is Union!17135) (regOne!34782 (regTwo!34783 (reg!17464 r!13765))))) b!6976435))

(declare-fun e!4192834 () Bool)

(assert (=> b!6974844 (= tp!1925332 e!4192834)))

(declare-fun b!6976437 () Bool)

(declare-fun tp!1926746 () Bool)

(declare-fun tp!1926744 () Bool)

(assert (=> b!6976437 (= e!4192834 (and tp!1926746 tp!1926744))))

(declare-fun b!6976436 () Bool)

(assert (=> b!6976436 (= e!4192834 tp_is_empty!43495)))

(declare-fun b!6976439 () Bool)

(declare-fun tp!1926743 () Bool)

(declare-fun tp!1926747 () Bool)

(assert (=> b!6976439 (= e!4192834 (and tp!1926743 tp!1926747))))

(declare-fun b!6976438 () Bool)

(declare-fun tp!1926745 () Bool)

(assert (=> b!6976438 (= e!4192834 tp!1926745)))

(assert (= (and b!6974844 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34783 (reg!17464 r!13765))))) b!6976436))

(assert (= (and b!6974844 ((_ is Concat!25980) (regTwo!34782 (regTwo!34783 (reg!17464 r!13765))))) b!6976437))

(assert (= (and b!6974844 ((_ is Star!17135) (regTwo!34782 (regTwo!34783 (reg!17464 r!13765))))) b!6976438))

(assert (= (and b!6974844 ((_ is Union!17135) (regTwo!34782 (regTwo!34783 (reg!17464 r!13765))))) b!6976439))

(declare-fun e!4192835 () Bool)

(assert (=> b!6974829 (= tp!1925309 e!4192835)))

(declare-fun b!6976441 () Bool)

(declare-fun tp!1926751 () Bool)

(declare-fun tp!1926749 () Bool)

(assert (=> b!6976441 (= e!4192835 (and tp!1926751 tp!1926749))))

(declare-fun b!6976440 () Bool)

(assert (=> b!6976440 (= e!4192835 tp_is_empty!43495)))

(declare-fun b!6976443 () Bool)

(declare-fun tp!1926748 () Bool)

(declare-fun tp!1926752 () Bool)

(assert (=> b!6976443 (= e!4192835 (and tp!1926748 tp!1926752))))

(declare-fun b!6976442 () Bool)

(declare-fun tp!1926750 () Bool)

(assert (=> b!6976442 (= e!4192835 tp!1926750)))

(assert (= (and b!6974829 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34782 (regTwo!34783 r!13765))))) b!6976440))

(assert (= (and b!6974829 ((_ is Concat!25980) (regOne!34783 (regOne!34782 (regTwo!34783 r!13765))))) b!6976441))

(assert (= (and b!6974829 ((_ is Star!17135) (regOne!34783 (regOne!34782 (regTwo!34783 r!13765))))) b!6976442))

(assert (= (and b!6974829 ((_ is Union!17135) (regOne!34783 (regOne!34782 (regTwo!34783 r!13765))))) b!6976443))

(declare-fun e!4192836 () Bool)

(assert (=> b!6974829 (= tp!1925313 e!4192836)))

(declare-fun b!6976445 () Bool)

(declare-fun tp!1926756 () Bool)

(declare-fun tp!1926754 () Bool)

(assert (=> b!6976445 (= e!4192836 (and tp!1926756 tp!1926754))))

(declare-fun b!6976444 () Bool)

(assert (=> b!6976444 (= e!4192836 tp_is_empty!43495)))

(declare-fun b!6976447 () Bool)

(declare-fun tp!1926753 () Bool)

(declare-fun tp!1926757 () Bool)

(assert (=> b!6976447 (= e!4192836 (and tp!1926753 tp!1926757))))

(declare-fun b!6976446 () Bool)

(declare-fun tp!1926755 () Bool)

(assert (=> b!6976446 (= e!4192836 tp!1926755)))

(assert (= (and b!6974829 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34782 (regTwo!34783 r!13765))))) b!6976444))

(assert (= (and b!6974829 ((_ is Concat!25980) (regTwo!34783 (regOne!34782 (regTwo!34783 r!13765))))) b!6976445))

(assert (= (and b!6974829 ((_ is Star!17135) (regTwo!34783 (regOne!34782 (regTwo!34783 r!13765))))) b!6976446))

(assert (= (and b!6974829 ((_ is Union!17135) (regTwo!34783 (regOne!34782 (regTwo!34783 r!13765))))) b!6976447))

(declare-fun e!4192837 () Bool)

(assert (=> b!6974855 (= tp!1925342 e!4192837)))

(declare-fun b!6976449 () Bool)

(declare-fun tp!1926761 () Bool)

(declare-fun tp!1926759 () Bool)

(assert (=> b!6976449 (= e!4192837 (and tp!1926761 tp!1926759))))

(declare-fun b!6976448 () Bool)

(assert (=> b!6976448 (= e!4192837 tp_is_empty!43495)))

(declare-fun b!6976451 () Bool)

(declare-fun tp!1926758 () Bool)

(declare-fun tp!1926762 () Bool)

(assert (=> b!6976451 (= e!4192837 (and tp!1926758 tp!1926762))))

(declare-fun b!6976450 () Bool)

(declare-fun tp!1926760 () Bool)

(assert (=> b!6976450 (= e!4192837 tp!1926760)))

(assert (= (and b!6974855 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34783 (h!73276 l!9142))))) b!6976448))

(assert (= (and b!6974855 ((_ is Concat!25980) (regOne!34783 (regOne!34783 (h!73276 l!9142))))) b!6976449))

(assert (= (and b!6974855 ((_ is Star!17135) (regOne!34783 (regOne!34783 (h!73276 l!9142))))) b!6976450))

(assert (= (and b!6974855 ((_ is Union!17135) (regOne!34783 (regOne!34783 (h!73276 l!9142))))) b!6976451))

(declare-fun e!4192838 () Bool)

(assert (=> b!6974855 (= tp!1925346 e!4192838)))

(declare-fun b!6976453 () Bool)

(declare-fun tp!1926766 () Bool)

(declare-fun tp!1926764 () Bool)

(assert (=> b!6976453 (= e!4192838 (and tp!1926766 tp!1926764))))

(declare-fun b!6976452 () Bool)

(assert (=> b!6976452 (= e!4192838 tp_is_empty!43495)))

(declare-fun b!6976455 () Bool)

(declare-fun tp!1926763 () Bool)

(declare-fun tp!1926767 () Bool)

(assert (=> b!6976455 (= e!4192838 (and tp!1926763 tp!1926767))))

(declare-fun b!6976454 () Bool)

(declare-fun tp!1926765 () Bool)

(assert (=> b!6976454 (= e!4192838 tp!1926765)))

(assert (= (and b!6974855 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34783 (h!73276 l!9142))))) b!6976452))

(assert (= (and b!6974855 ((_ is Concat!25980) (regTwo!34783 (regOne!34783 (h!73276 l!9142))))) b!6976453))

(assert (= (and b!6974855 ((_ is Star!17135) (regTwo!34783 (regOne!34783 (h!73276 l!9142))))) b!6976454))

(assert (= (and b!6974855 ((_ is Union!17135) (regTwo!34783 (regOne!34783 (h!73276 l!9142))))) b!6976455))

(declare-fun e!4192839 () Bool)

(assert (=> b!6974890 (= tp!1925389 e!4192839)))

(declare-fun b!6976457 () Bool)

(declare-fun tp!1926771 () Bool)

(declare-fun tp!1926769 () Bool)

(assert (=> b!6976457 (= e!4192839 (and tp!1926771 tp!1926769))))

(declare-fun b!6976456 () Bool)

(assert (=> b!6976456 (= e!4192839 tp_is_empty!43495)))

(declare-fun b!6976459 () Bool)

(declare-fun tp!1926768 () Bool)

(declare-fun tp!1926772 () Bool)

(assert (=> b!6976459 (= e!4192839 (and tp!1926768 tp!1926772))))

(declare-fun b!6976458 () Bool)

(declare-fun tp!1926770 () Bool)

(assert (=> b!6976458 (= e!4192839 tp!1926770)))

(assert (= (and b!6974890 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976456))

(assert (= (and b!6974890 ((_ is Concat!25980) (reg!17464 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976457))

(assert (= (and b!6974890 ((_ is Star!17135) (reg!17464 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976458))

(assert (= (and b!6974890 ((_ is Union!17135) (reg!17464 (regTwo!34783 (regTwo!34783 r!13765))))) b!6976459))

(declare-fun e!4192840 () Bool)

(assert (=> b!6974899 (= tp!1925397 e!4192840)))

(declare-fun b!6976461 () Bool)

(declare-fun tp!1926776 () Bool)

(declare-fun tp!1926774 () Bool)

(assert (=> b!6976461 (= e!4192840 (and tp!1926776 tp!1926774))))

(declare-fun b!6976460 () Bool)

(assert (=> b!6976460 (= e!4192840 tp_is_empty!43495)))

(declare-fun b!6976463 () Bool)

(declare-fun tp!1926773 () Bool)

(declare-fun tp!1926777 () Bool)

(assert (=> b!6976463 (= e!4192840 (and tp!1926773 tp!1926777))))

(declare-fun b!6976462 () Bool)

(declare-fun tp!1926775 () Bool)

(assert (=> b!6976462 (= e!4192840 tp!1926775)))

(assert (= (and b!6974899 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976460))

(assert (= (and b!6974899 ((_ is Concat!25980) (regOne!34783 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976461))

(assert (= (and b!6974899 ((_ is Star!17135) (regOne!34783 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976462))

(assert (= (and b!6974899 ((_ is Union!17135) (regOne!34783 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976463))

(declare-fun e!4192841 () Bool)

(assert (=> b!6974899 (= tp!1925401 e!4192841)))

(declare-fun b!6976465 () Bool)

(declare-fun tp!1926781 () Bool)

(declare-fun tp!1926779 () Bool)

(assert (=> b!6976465 (= e!4192841 (and tp!1926781 tp!1926779))))

(declare-fun b!6976464 () Bool)

(assert (=> b!6976464 (= e!4192841 tp_is_empty!43495)))

(declare-fun b!6976467 () Bool)

(declare-fun tp!1926778 () Bool)

(declare-fun tp!1926782 () Bool)

(assert (=> b!6976467 (= e!4192841 (and tp!1926778 tp!1926782))))

(declare-fun b!6976466 () Bool)

(declare-fun tp!1926780 () Bool)

(assert (=> b!6976466 (= e!4192841 tp!1926780)))

(assert (= (and b!6974899 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976464))

(assert (= (and b!6974899 ((_ is Concat!25980) (regTwo!34783 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976465))

(assert (= (and b!6974899 ((_ is Star!17135) (regTwo!34783 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976466))

(assert (= (and b!6974899 ((_ is Union!17135) (regTwo!34783 (regTwo!34782 (regTwo!34782 r!13765))))) b!6976467))

(declare-fun e!4192842 () Bool)

(assert (=> b!6974823 (= tp!1925307 e!4192842)))

(declare-fun b!6976469 () Bool)

(declare-fun tp!1926786 () Bool)

(declare-fun tp!1926784 () Bool)

(assert (=> b!6976469 (= e!4192842 (and tp!1926786 tp!1926784))))

(declare-fun b!6976468 () Bool)

(assert (=> b!6976468 (= e!4192842 tp_is_empty!43495)))

(declare-fun b!6976471 () Bool)

(declare-fun tp!1926783 () Bool)

(declare-fun tp!1926787 () Bool)

(assert (=> b!6976471 (= e!4192842 (and tp!1926783 tp!1926787))))

(declare-fun b!6976470 () Bool)

(declare-fun tp!1926785 () Bool)

(assert (=> b!6976470 (= e!4192842 tp!1926785)))

(assert (= (and b!6974823 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34782 (regOne!34783 r!13765))))) b!6976468))

(assert (= (and b!6974823 ((_ is Concat!25980) (regOne!34782 (regTwo!34782 (regOne!34783 r!13765))))) b!6976469))

(assert (= (and b!6974823 ((_ is Star!17135) (regOne!34782 (regTwo!34782 (regOne!34783 r!13765))))) b!6976470))

(assert (= (and b!6974823 ((_ is Union!17135) (regOne!34782 (regTwo!34782 (regOne!34783 r!13765))))) b!6976471))

(declare-fun e!4192843 () Bool)

(assert (=> b!6974823 (= tp!1925305 e!4192843)))

(declare-fun b!6976473 () Bool)

(declare-fun tp!1926791 () Bool)

(declare-fun tp!1926789 () Bool)

(assert (=> b!6976473 (= e!4192843 (and tp!1926791 tp!1926789))))

(declare-fun b!6976472 () Bool)

(assert (=> b!6976472 (= e!4192843 tp_is_empty!43495)))

(declare-fun b!6976475 () Bool)

(declare-fun tp!1926788 () Bool)

(declare-fun tp!1926792 () Bool)

(assert (=> b!6976475 (= e!4192843 (and tp!1926788 tp!1926792))))

(declare-fun b!6976474 () Bool)

(declare-fun tp!1926790 () Bool)

(assert (=> b!6976474 (= e!4192843 tp!1926790)))

(assert (= (and b!6974823 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34782 (regOne!34783 r!13765))))) b!6976472))

(assert (= (and b!6974823 ((_ is Concat!25980) (regTwo!34782 (regTwo!34782 (regOne!34783 r!13765))))) b!6976473))

(assert (= (and b!6974823 ((_ is Star!17135) (regTwo!34782 (regTwo!34782 (regOne!34783 r!13765))))) b!6976474))

(assert (= (and b!6974823 ((_ is Union!17135) (regTwo!34782 (regTwo!34782 (regOne!34783 r!13765))))) b!6976475))

(declare-fun e!4192844 () Bool)

(assert (=> b!6974832 (= tp!1925316 e!4192844)))

(declare-fun b!6976477 () Bool)

(declare-fun tp!1926796 () Bool)

(declare-fun tp!1926794 () Bool)

(assert (=> b!6976477 (= e!4192844 (and tp!1926796 tp!1926794))))

(declare-fun b!6976476 () Bool)

(assert (=> b!6976476 (= e!4192844 tp_is_empty!43495)))

(declare-fun b!6976479 () Bool)

(declare-fun tp!1926793 () Bool)

(declare-fun tp!1926797 () Bool)

(assert (=> b!6976479 (= e!4192844 (and tp!1926793 tp!1926797))))

(declare-fun b!6976478 () Bool)

(declare-fun tp!1926795 () Bool)

(assert (=> b!6976478 (= e!4192844 tp!1926795)))

(assert (= (and b!6974832 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976476))

(assert (= (and b!6974832 ((_ is Concat!25980) (reg!17464 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976477))

(assert (= (and b!6974832 ((_ is Star!17135) (reg!17464 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976478))

(assert (= (and b!6974832 ((_ is Union!17135) (reg!17464 (regTwo!34782 (regTwo!34783 r!13765))))) b!6976479))

(declare-fun e!4192845 () Bool)

(assert (=> b!6974881 (= tp!1925380 e!4192845)))

(declare-fun b!6976481 () Bool)

(declare-fun tp!1926801 () Bool)

(declare-fun tp!1926799 () Bool)

(assert (=> b!6976481 (= e!4192845 (and tp!1926801 tp!1926799))))

(declare-fun b!6976480 () Bool)

(assert (=> b!6976480 (= e!4192845 tp_is_empty!43495)))

(declare-fun b!6976483 () Bool)

(declare-fun tp!1926798 () Bool)

(declare-fun tp!1926802 () Bool)

(assert (=> b!6976483 (= e!4192845 (and tp!1926798 tp!1926802))))

(declare-fun b!6976482 () Bool)

(declare-fun tp!1926800 () Bool)

(assert (=> b!6976482 (= e!4192845 tp!1926800)))

(assert (= (and b!6974881 ((_ is ElementMatch!17135) (regOne!34782 (reg!17464 (h!73276 l!9142))))) b!6976480))

(assert (= (and b!6974881 ((_ is Concat!25980) (regOne!34782 (reg!17464 (h!73276 l!9142))))) b!6976481))

(assert (= (and b!6974881 ((_ is Star!17135) (regOne!34782 (reg!17464 (h!73276 l!9142))))) b!6976482))

(assert (= (and b!6974881 ((_ is Union!17135) (regOne!34782 (reg!17464 (h!73276 l!9142))))) b!6976483))

(declare-fun e!4192846 () Bool)

(assert (=> b!6974881 (= tp!1925378 e!4192846)))

(declare-fun b!6976485 () Bool)

(declare-fun tp!1926806 () Bool)

(declare-fun tp!1926804 () Bool)

(assert (=> b!6976485 (= e!4192846 (and tp!1926806 tp!1926804))))

(declare-fun b!6976484 () Bool)

(assert (=> b!6976484 (= e!4192846 tp_is_empty!43495)))

(declare-fun b!6976487 () Bool)

(declare-fun tp!1926803 () Bool)

(declare-fun tp!1926807 () Bool)

(assert (=> b!6976487 (= e!4192846 (and tp!1926803 tp!1926807))))

(declare-fun b!6976486 () Bool)

(declare-fun tp!1926805 () Bool)

(assert (=> b!6976486 (= e!4192846 tp!1926805)))

(assert (= (and b!6974881 ((_ is ElementMatch!17135) (regTwo!34782 (reg!17464 (h!73276 l!9142))))) b!6976484))

(assert (= (and b!6974881 ((_ is Concat!25980) (regTwo!34782 (reg!17464 (h!73276 l!9142))))) b!6976485))

(assert (= (and b!6974881 ((_ is Star!17135) (regTwo!34782 (reg!17464 (h!73276 l!9142))))) b!6976486))

(assert (= (and b!6974881 ((_ is Union!17135) (regTwo!34782 (reg!17464 (h!73276 l!9142))))) b!6976487))

(declare-fun e!4192847 () Bool)

(assert (=> b!6974858 (= tp!1925349 e!4192847)))

(declare-fun b!6976489 () Bool)

(declare-fun tp!1926811 () Bool)

(declare-fun tp!1926809 () Bool)

(assert (=> b!6976489 (= e!4192847 (and tp!1926811 tp!1926809))))

(declare-fun b!6976488 () Bool)

(assert (=> b!6976488 (= e!4192847 tp_is_empty!43495)))

(declare-fun b!6976491 () Bool)

(declare-fun tp!1926808 () Bool)

(declare-fun tp!1926812 () Bool)

(assert (=> b!6976491 (= e!4192847 (and tp!1926808 tp!1926812))))

(declare-fun b!6976490 () Bool)

(declare-fun tp!1926810 () Bool)

(assert (=> b!6976490 (= e!4192847 tp!1926810)))

(assert (= (and b!6974858 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34783 (h!73276 l!9142))))) b!6976488))

(assert (= (and b!6974858 ((_ is Concat!25980) (reg!17464 (regTwo!34783 (h!73276 l!9142))))) b!6976489))

(assert (= (and b!6974858 ((_ is Star!17135) (reg!17464 (regTwo!34783 (h!73276 l!9142))))) b!6976490))

(assert (= (and b!6974858 ((_ is Union!17135) (reg!17464 (regTwo!34783 (h!73276 l!9142))))) b!6976491))

(declare-fun e!4192848 () Bool)

(assert (=> b!6974867 (= tp!1925357 e!4192848)))

(declare-fun b!6976493 () Bool)

(declare-fun tp!1926816 () Bool)

(declare-fun tp!1926814 () Bool)

(assert (=> b!6976493 (= e!4192848 (and tp!1926816 tp!1926814))))

(declare-fun b!6976492 () Bool)

(assert (=> b!6976492 (= e!4192848 tp_is_empty!43495)))

(declare-fun b!6976495 () Bool)

(declare-fun tp!1926813 () Bool)

(declare-fun tp!1926817 () Bool)

(assert (=> b!6976495 (= e!4192848 (and tp!1926813 tp!1926817))))

(declare-fun b!6976494 () Bool)

(declare-fun tp!1926815 () Bool)

(assert (=> b!6976494 (= e!4192848 tp!1926815)))

(assert (= (and b!6974867 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34783 (regOne!34783 r!13765))))) b!6976492))

(assert (= (and b!6974867 ((_ is Concat!25980) (regOne!34783 (regOne!34783 (regOne!34783 r!13765))))) b!6976493))

(assert (= (and b!6974867 ((_ is Star!17135) (regOne!34783 (regOne!34783 (regOne!34783 r!13765))))) b!6976494))

(assert (= (and b!6974867 ((_ is Union!17135) (regOne!34783 (regOne!34783 (regOne!34783 r!13765))))) b!6976495))

(declare-fun e!4192849 () Bool)

(assert (=> b!6974867 (= tp!1925361 e!4192849)))

(declare-fun b!6976497 () Bool)

(declare-fun tp!1926821 () Bool)

(declare-fun tp!1926819 () Bool)

(assert (=> b!6976497 (= e!4192849 (and tp!1926821 tp!1926819))))

(declare-fun b!6976496 () Bool)

(assert (=> b!6976496 (= e!4192849 tp_is_empty!43495)))

(declare-fun b!6976499 () Bool)

(declare-fun tp!1926818 () Bool)

(declare-fun tp!1926822 () Bool)

(assert (=> b!6976499 (= e!4192849 (and tp!1926818 tp!1926822))))

(declare-fun b!6976498 () Bool)

(declare-fun tp!1926820 () Bool)

(assert (=> b!6976498 (= e!4192849 tp!1926820)))

(assert (= (and b!6974867 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34783 (regOne!34783 r!13765))))) b!6976496))

(assert (= (and b!6974867 ((_ is Concat!25980) (regTwo!34783 (regOne!34783 (regOne!34783 r!13765))))) b!6976497))

(assert (= (and b!6974867 ((_ is Star!17135) (regTwo!34783 (regOne!34783 (regOne!34783 r!13765))))) b!6976498))

(assert (= (and b!6974867 ((_ is Union!17135) (regTwo!34783 (regOne!34783 (regOne!34783 r!13765))))) b!6976499))

(declare-fun e!4192850 () Bool)

(assert (=> b!6974809 (= tp!1925284 e!4192850)))

(declare-fun b!6976501 () Bool)

(declare-fun tp!1926826 () Bool)

(declare-fun tp!1926824 () Bool)

(assert (=> b!6976501 (= e!4192850 (and tp!1926826 tp!1926824))))

(declare-fun b!6976500 () Bool)

(assert (=> b!6976500 (= e!4192850 tp_is_empty!43495)))

(declare-fun b!6976503 () Bool)

(declare-fun tp!1926823 () Bool)

(declare-fun tp!1926827 () Bool)

(assert (=> b!6976503 (= e!4192850 (and tp!1926823 tp!1926827))))

(declare-fun b!6976502 () Bool)

(declare-fun tp!1926825 () Bool)

(assert (=> b!6976502 (= e!4192850 tp!1926825)))

(assert (= (and b!6974809 ((_ is ElementMatch!17135) (regOne!34783 (reg!17464 (reg!17464 r!13765))))) b!6976500))

(assert (= (and b!6974809 ((_ is Concat!25980) (regOne!34783 (reg!17464 (reg!17464 r!13765))))) b!6976501))

(assert (= (and b!6974809 ((_ is Star!17135) (regOne!34783 (reg!17464 (reg!17464 r!13765))))) b!6976502))

(assert (= (and b!6974809 ((_ is Union!17135) (regOne!34783 (reg!17464 (reg!17464 r!13765))))) b!6976503))

(declare-fun e!4192851 () Bool)

(assert (=> b!6974809 (= tp!1925288 e!4192851)))

(declare-fun b!6976505 () Bool)

(declare-fun tp!1926831 () Bool)

(declare-fun tp!1926829 () Bool)

(assert (=> b!6976505 (= e!4192851 (and tp!1926831 tp!1926829))))

(declare-fun b!6976504 () Bool)

(assert (=> b!6976504 (= e!4192851 tp_is_empty!43495)))

(declare-fun b!6976507 () Bool)

(declare-fun tp!1926828 () Bool)

(declare-fun tp!1926832 () Bool)

(assert (=> b!6976507 (= e!4192851 (and tp!1926828 tp!1926832))))

(declare-fun b!6976506 () Bool)

(declare-fun tp!1926830 () Bool)

(assert (=> b!6976506 (= e!4192851 tp!1926830)))

(assert (= (and b!6974809 ((_ is ElementMatch!17135) (regTwo!34783 (reg!17464 (reg!17464 r!13765))))) b!6976504))

(assert (= (and b!6974809 ((_ is Concat!25980) (regTwo!34783 (reg!17464 (reg!17464 r!13765))))) b!6976505))

(assert (= (and b!6974809 ((_ is Star!17135) (regTwo!34783 (reg!17464 (reg!17464 r!13765))))) b!6976506))

(assert (= (and b!6974809 ((_ is Union!17135) (regTwo!34783 (reg!17464 (reg!17464 r!13765))))) b!6976507))

(declare-fun e!4192852 () Bool)

(assert (=> b!6974910 (= tp!1925414 e!4192852)))

(declare-fun b!6976509 () Bool)

(declare-fun tp!1926836 () Bool)

(declare-fun tp!1926834 () Bool)

(assert (=> b!6976509 (= e!4192852 (and tp!1926836 tp!1926834))))

(declare-fun b!6976508 () Bool)

(assert (=> b!6976508 (= e!4192852 tp_is_empty!43495)))

(declare-fun b!6976511 () Bool)

(declare-fun tp!1926833 () Bool)

(declare-fun tp!1926837 () Bool)

(assert (=> b!6976511 (= e!4192852 (and tp!1926833 tp!1926837))))

(declare-fun b!6976510 () Bool)

(declare-fun tp!1926835 () Bool)

(assert (=> b!6976510 (= e!4192852 tp!1926835)))

(assert (= (and b!6974910 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34782 (h!73276 l!9142))))) b!6976508))

(assert (= (and b!6974910 ((_ is Concat!25980) (reg!17464 (regTwo!34782 (h!73276 l!9142))))) b!6976509))

(assert (= (and b!6974910 ((_ is Star!17135) (reg!17464 (regTwo!34782 (h!73276 l!9142))))) b!6976510))

(assert (= (and b!6974910 ((_ is Union!17135) (reg!17464 (regTwo!34782 (h!73276 l!9142))))) b!6976511))

(declare-fun e!4192853 () Bool)

(assert (=> b!6974791 (= tp!1925267 e!4192853)))

(declare-fun b!6976513 () Bool)

(declare-fun tp!1926841 () Bool)

(declare-fun tp!1926839 () Bool)

(assert (=> b!6976513 (= e!4192853 (and tp!1926841 tp!1926839))))

(declare-fun b!6976512 () Bool)

(assert (=> b!6976512 (= e!4192853 tp_is_empty!43495)))

(declare-fun b!6976515 () Bool)

(declare-fun tp!1926838 () Bool)

(declare-fun tp!1926842 () Bool)

(assert (=> b!6976515 (= e!4192853 (and tp!1926838 tp!1926842))))

(declare-fun b!6976514 () Bool)

(declare-fun tp!1926840 () Bool)

(assert (=> b!6976514 (= e!4192853 tp!1926840)))

(assert (= (and b!6974791 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34783 (regOne!34782 r!13765))))) b!6976512))

(assert (= (and b!6974791 ((_ is Concat!25980) (regOne!34782 (regOne!34783 (regOne!34782 r!13765))))) b!6976513))

(assert (= (and b!6974791 ((_ is Star!17135) (regOne!34782 (regOne!34783 (regOne!34782 r!13765))))) b!6976514))

(assert (= (and b!6974791 ((_ is Union!17135) (regOne!34782 (regOne!34783 (regOne!34782 r!13765))))) b!6976515))

(declare-fun e!4192854 () Bool)

(assert (=> b!6974791 (= tp!1925265 e!4192854)))

(declare-fun b!6976517 () Bool)

(declare-fun tp!1926846 () Bool)

(declare-fun tp!1926844 () Bool)

(assert (=> b!6976517 (= e!4192854 (and tp!1926846 tp!1926844))))

(declare-fun b!6976516 () Bool)

(assert (=> b!6976516 (= e!4192854 tp_is_empty!43495)))

(declare-fun b!6976519 () Bool)

(declare-fun tp!1926843 () Bool)

(declare-fun tp!1926847 () Bool)

(assert (=> b!6976519 (= e!4192854 (and tp!1926843 tp!1926847))))

(declare-fun b!6976518 () Bool)

(declare-fun tp!1926845 () Bool)

(assert (=> b!6976518 (= e!4192854 tp!1926845)))

(assert (= (and b!6974791 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34783 (regOne!34782 r!13765))))) b!6976516))

(assert (= (and b!6974791 ((_ is Concat!25980) (regTwo!34782 (regOne!34783 (regOne!34782 r!13765))))) b!6976517))

(assert (= (and b!6974791 ((_ is Star!17135) (regTwo!34782 (regOne!34783 (regOne!34782 r!13765))))) b!6976518))

(assert (= (and b!6974791 ((_ is Union!17135) (regTwo!34782 (regOne!34783 (regOne!34782 r!13765))))) b!6976519))

(declare-fun e!4192855 () Bool)

(assert (=> b!6974800 (= tp!1925276 e!4192855)))

(declare-fun b!6976521 () Bool)

(declare-fun tp!1926851 () Bool)

(declare-fun tp!1926849 () Bool)

(assert (=> b!6976521 (= e!4192855 (and tp!1926851 tp!1926849))))

(declare-fun b!6976520 () Bool)

(assert (=> b!6976520 (= e!4192855 tp_is_empty!43495)))

(declare-fun b!6976523 () Bool)

(declare-fun tp!1926848 () Bool)

(declare-fun tp!1926852 () Bool)

(assert (=> b!6976523 (= e!4192855 (and tp!1926848 tp!1926852))))

(declare-fun b!6976522 () Bool)

(declare-fun tp!1926850 () Bool)

(assert (=> b!6976522 (= e!4192855 tp!1926850)))

(assert (= (and b!6974800 ((_ is ElementMatch!17135) (reg!17464 (regOne!34783 (regTwo!34782 r!13765))))) b!6976520))

(assert (= (and b!6974800 ((_ is Concat!25980) (reg!17464 (regOne!34783 (regTwo!34782 r!13765))))) b!6976521))

(assert (= (and b!6974800 ((_ is Star!17135) (reg!17464 (regOne!34783 (regTwo!34782 r!13765))))) b!6976522))

(assert (= (and b!6974800 ((_ is Union!17135) (reg!17464 (regOne!34783 (regTwo!34782 r!13765))))) b!6976523))

(declare-fun e!4192856 () Bool)

(assert (=> b!6974901 (= tp!1925405 e!4192856)))

(declare-fun b!6976525 () Bool)

(declare-fun tp!1926856 () Bool)

(declare-fun tp!1926854 () Bool)

(assert (=> b!6976525 (= e!4192856 (and tp!1926856 tp!1926854))))

(declare-fun b!6976524 () Bool)

(assert (=> b!6976524 (= e!4192856 tp_is_empty!43495)))

(declare-fun b!6976527 () Bool)

(declare-fun tp!1926853 () Bool)

(declare-fun tp!1926857 () Bool)

(assert (=> b!6976527 (= e!4192856 (and tp!1926853 tp!1926857))))

(declare-fun b!6976526 () Bool)

(declare-fun tp!1926855 () Bool)

(assert (=> b!6976526 (= e!4192856 tp!1926855)))

(assert (= (and b!6974901 ((_ is ElementMatch!17135) (regOne!34782 (reg!17464 (regOne!34783 r!13765))))) b!6976524))

(assert (= (and b!6974901 ((_ is Concat!25980) (regOne!34782 (reg!17464 (regOne!34783 r!13765))))) b!6976525))

(assert (= (and b!6974901 ((_ is Star!17135) (regOne!34782 (reg!17464 (regOne!34783 r!13765))))) b!6976526))

(assert (= (and b!6974901 ((_ is Union!17135) (regOne!34782 (reg!17464 (regOne!34783 r!13765))))) b!6976527))

(declare-fun e!4192857 () Bool)

(assert (=> b!6974901 (= tp!1925403 e!4192857)))

(declare-fun b!6976529 () Bool)

(declare-fun tp!1926861 () Bool)

(declare-fun tp!1926859 () Bool)

(assert (=> b!6976529 (= e!4192857 (and tp!1926861 tp!1926859))))

(declare-fun b!6976528 () Bool)

(assert (=> b!6976528 (= e!4192857 tp_is_empty!43495)))

(declare-fun b!6976531 () Bool)

(declare-fun tp!1926858 () Bool)

(declare-fun tp!1926862 () Bool)

(assert (=> b!6976531 (= e!4192857 (and tp!1926858 tp!1926862))))

(declare-fun b!6976530 () Bool)

(declare-fun tp!1926860 () Bool)

(assert (=> b!6976530 (= e!4192857 tp!1926860)))

(assert (= (and b!6974901 ((_ is ElementMatch!17135) (regTwo!34782 (reg!17464 (regOne!34783 r!13765))))) b!6976528))

(assert (= (and b!6974901 ((_ is Concat!25980) (regTwo!34782 (reg!17464 (regOne!34783 r!13765))))) b!6976529))

(assert (= (and b!6974901 ((_ is Star!17135) (regTwo!34782 (reg!17464 (regOne!34783 r!13765))))) b!6976530))

(assert (= (and b!6974901 ((_ is Union!17135) (regTwo!34782 (reg!17464 (regOne!34783 r!13765))))) b!6976531))

(declare-fun e!4192858 () Bool)

(assert (=> b!6974842 (= tp!1925326 e!4192858)))

(declare-fun b!6976533 () Bool)

(declare-fun tp!1926866 () Bool)

(declare-fun tp!1926864 () Bool)

(assert (=> b!6976533 (= e!4192858 (and tp!1926866 tp!1926864))))

(declare-fun b!6976532 () Bool)

(assert (=> b!6976532 (= e!4192858 tp_is_empty!43495)))

(declare-fun b!6976535 () Bool)

(declare-fun tp!1926863 () Bool)

(declare-fun tp!1926867 () Bool)

(assert (=> b!6976535 (= e!4192858 (and tp!1926863 tp!1926867))))

(declare-fun b!6976534 () Bool)

(declare-fun tp!1926865 () Bool)

(assert (=> b!6976534 (= e!4192858 tp!1926865)))

(assert (= (and b!6974842 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34783 (reg!17464 r!13765))))) b!6976532))

(assert (= (and b!6974842 ((_ is Concat!25980) (regOne!34783 (regOne!34783 (reg!17464 r!13765))))) b!6976533))

(assert (= (and b!6974842 ((_ is Star!17135) (regOne!34783 (regOne!34783 (reg!17464 r!13765))))) b!6976534))

(assert (= (and b!6974842 ((_ is Union!17135) (regOne!34783 (regOne!34783 (reg!17464 r!13765))))) b!6976535))

(declare-fun e!4192859 () Bool)

(assert (=> b!6974842 (= tp!1925330 e!4192859)))

(declare-fun b!6976537 () Bool)

(declare-fun tp!1926871 () Bool)

(declare-fun tp!1926869 () Bool)

(assert (=> b!6976537 (= e!4192859 (and tp!1926871 tp!1926869))))

(declare-fun b!6976536 () Bool)

(assert (=> b!6976536 (= e!4192859 tp_is_empty!43495)))

(declare-fun b!6976539 () Bool)

(declare-fun tp!1926868 () Bool)

(declare-fun tp!1926872 () Bool)

(assert (=> b!6976539 (= e!4192859 (and tp!1926868 tp!1926872))))

(declare-fun b!6976538 () Bool)

(declare-fun tp!1926870 () Bool)

(assert (=> b!6976538 (= e!4192859 tp!1926870)))

(assert (= (and b!6974842 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34783 (reg!17464 r!13765))))) b!6976536))

(assert (= (and b!6974842 ((_ is Concat!25980) (regTwo!34783 (regOne!34783 (reg!17464 r!13765))))) b!6976537))

(assert (= (and b!6974842 ((_ is Star!17135) (regTwo!34783 (regOne!34783 (reg!17464 r!13765))))) b!6976538))

(assert (= (and b!6974842 ((_ is Union!17135) (regTwo!34783 (regOne!34783 (reg!17464 r!13765))))) b!6976539))

(declare-fun e!4192860 () Bool)

(assert (=> b!6974801 (= tp!1925274 e!4192860)))

(declare-fun b!6976541 () Bool)

(declare-fun tp!1926876 () Bool)

(declare-fun tp!1926874 () Bool)

(assert (=> b!6976541 (= e!4192860 (and tp!1926876 tp!1926874))))

(declare-fun b!6976540 () Bool)

(assert (=> b!6976540 (= e!4192860 tp_is_empty!43495)))

(declare-fun b!6976543 () Bool)

(declare-fun tp!1926873 () Bool)

(declare-fun tp!1926877 () Bool)

(assert (=> b!6976543 (= e!4192860 (and tp!1926873 tp!1926877))))

(declare-fun b!6976542 () Bool)

(declare-fun tp!1926875 () Bool)

(assert (=> b!6976542 (= e!4192860 tp!1926875)))

(assert (= (and b!6974801 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34783 (regTwo!34782 r!13765))))) b!6976540))

(assert (= (and b!6974801 ((_ is Concat!25980) (regOne!34783 (regOne!34783 (regTwo!34782 r!13765))))) b!6976541))

(assert (= (and b!6974801 ((_ is Star!17135) (regOne!34783 (regOne!34783 (regTwo!34782 r!13765))))) b!6976542))

(assert (= (and b!6974801 ((_ is Union!17135) (regOne!34783 (regOne!34783 (regTwo!34782 r!13765))))) b!6976543))

(declare-fun e!4192861 () Bool)

(assert (=> b!6974801 (= tp!1925278 e!4192861)))

(declare-fun b!6976545 () Bool)

(declare-fun tp!1926881 () Bool)

(declare-fun tp!1926879 () Bool)

(assert (=> b!6976545 (= e!4192861 (and tp!1926881 tp!1926879))))

(declare-fun b!6976544 () Bool)

(assert (=> b!6976544 (= e!4192861 tp_is_empty!43495)))

(declare-fun b!6976547 () Bool)

(declare-fun tp!1926878 () Bool)

(declare-fun tp!1926882 () Bool)

(assert (=> b!6976547 (= e!4192861 (and tp!1926878 tp!1926882))))

(declare-fun b!6976546 () Bool)

(declare-fun tp!1926880 () Bool)

(assert (=> b!6976546 (= e!4192861 tp!1926880)))

(assert (= (and b!6974801 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34783 (regTwo!34782 r!13765))))) b!6976544))

(assert (= (and b!6974801 ((_ is Concat!25980) (regTwo!34783 (regOne!34783 (regTwo!34782 r!13765))))) b!6976545))

(assert (= (and b!6974801 ((_ is Star!17135) (regTwo!34783 (regOne!34783 (regTwo!34782 r!13765))))) b!6976546))

(assert (= (and b!6974801 ((_ is Union!17135) (regTwo!34783 (regOne!34783 (regTwo!34782 r!13765))))) b!6976547))

(declare-fun e!4192862 () Bool)

(assert (=> b!6974902 (= tp!1925404 e!4192862)))

(declare-fun b!6976549 () Bool)

(declare-fun tp!1926886 () Bool)

(declare-fun tp!1926884 () Bool)

(assert (=> b!6976549 (= e!4192862 (and tp!1926886 tp!1926884))))

(declare-fun b!6976548 () Bool)

(assert (=> b!6976548 (= e!4192862 tp_is_empty!43495)))

(declare-fun b!6976551 () Bool)

(declare-fun tp!1926883 () Bool)

(declare-fun tp!1926887 () Bool)

(assert (=> b!6976551 (= e!4192862 (and tp!1926883 tp!1926887))))

(declare-fun b!6976550 () Bool)

(declare-fun tp!1926885 () Bool)

(assert (=> b!6976550 (= e!4192862 tp!1926885)))

(assert (= (and b!6974902 ((_ is ElementMatch!17135) (reg!17464 (reg!17464 (regOne!34783 r!13765))))) b!6976548))

(assert (= (and b!6974902 ((_ is Concat!25980) (reg!17464 (reg!17464 (regOne!34783 r!13765))))) b!6976549))

(assert (= (and b!6974902 ((_ is Star!17135) (reg!17464 (reg!17464 (regOne!34783 r!13765))))) b!6976550))

(assert (= (and b!6974902 ((_ is Union!17135) (reg!17464 (reg!17464 (regOne!34783 r!13765))))) b!6976551))

(declare-fun e!4192863 () Bool)

(assert (=> b!6974911 (= tp!1925412 e!4192863)))

(declare-fun b!6976553 () Bool)

(declare-fun tp!1926891 () Bool)

(declare-fun tp!1926889 () Bool)

(assert (=> b!6976553 (= e!4192863 (and tp!1926891 tp!1926889))))

(declare-fun b!6976552 () Bool)

(assert (=> b!6976552 (= e!4192863 tp_is_empty!43495)))

(declare-fun b!6976555 () Bool)

(declare-fun tp!1926888 () Bool)

(declare-fun tp!1926892 () Bool)

(assert (=> b!6976555 (= e!4192863 (and tp!1926888 tp!1926892))))

(declare-fun b!6976554 () Bool)

(declare-fun tp!1926890 () Bool)

(assert (=> b!6976554 (= e!4192863 tp!1926890)))

(assert (= (and b!6974911 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34782 (h!73276 l!9142))))) b!6976552))

(assert (= (and b!6974911 ((_ is Concat!25980) (regOne!34783 (regTwo!34782 (h!73276 l!9142))))) b!6976553))

(assert (= (and b!6974911 ((_ is Star!17135) (regOne!34783 (regTwo!34782 (h!73276 l!9142))))) b!6976554))

(assert (= (and b!6974911 ((_ is Union!17135) (regOne!34783 (regTwo!34782 (h!73276 l!9142))))) b!6976555))

(declare-fun e!4192864 () Bool)

(assert (=> b!6974911 (= tp!1925416 e!4192864)))

(declare-fun b!6976557 () Bool)

(declare-fun tp!1926896 () Bool)

(declare-fun tp!1926894 () Bool)

(assert (=> b!6976557 (= e!4192864 (and tp!1926896 tp!1926894))))

(declare-fun b!6976556 () Bool)

(assert (=> b!6976556 (= e!4192864 tp_is_empty!43495)))

(declare-fun b!6976559 () Bool)

(declare-fun tp!1926893 () Bool)

(declare-fun tp!1926897 () Bool)

(assert (=> b!6976559 (= e!4192864 (and tp!1926893 tp!1926897))))

(declare-fun b!6976558 () Bool)

(declare-fun tp!1926895 () Bool)

(assert (=> b!6976558 (= e!4192864 tp!1926895)))

(assert (= (and b!6974911 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34782 (h!73276 l!9142))))) b!6976556))

(assert (= (and b!6974911 ((_ is Concat!25980) (regTwo!34783 (regTwo!34782 (h!73276 l!9142))))) b!6976557))

(assert (= (and b!6974911 ((_ is Star!17135) (regTwo!34783 (regTwo!34782 (h!73276 l!9142))))) b!6976558))

(assert (= (and b!6974911 ((_ is Union!17135) (regTwo!34783 (regTwo!34782 (h!73276 l!9142))))) b!6976559))

(declare-fun e!4192865 () Bool)

(assert (=> b!6974792 (= tp!1925266 e!4192865)))

(declare-fun b!6976561 () Bool)

(declare-fun tp!1926901 () Bool)

(declare-fun tp!1926899 () Bool)

(assert (=> b!6976561 (= e!4192865 (and tp!1926901 tp!1926899))))

(declare-fun b!6976560 () Bool)

(assert (=> b!6976560 (= e!4192865 tp_is_empty!43495)))

(declare-fun b!6976563 () Bool)

(declare-fun tp!1926898 () Bool)

(declare-fun tp!1926902 () Bool)

(assert (=> b!6976563 (= e!4192865 (and tp!1926898 tp!1926902))))

(declare-fun b!6976562 () Bool)

(declare-fun tp!1926900 () Bool)

(assert (=> b!6976562 (= e!4192865 tp!1926900)))

(assert (= (and b!6974792 ((_ is ElementMatch!17135) (reg!17464 (regOne!34783 (regOne!34782 r!13765))))) b!6976560))

(assert (= (and b!6974792 ((_ is Concat!25980) (reg!17464 (regOne!34783 (regOne!34782 r!13765))))) b!6976561))

(assert (= (and b!6974792 ((_ is Star!17135) (reg!17464 (regOne!34783 (regOne!34782 r!13765))))) b!6976562))

(assert (= (and b!6974792 ((_ is Union!17135) (reg!17464 (regOne!34783 (regOne!34782 r!13765))))) b!6976563))

(declare-fun e!4192866 () Bool)

(assert (=> b!6974893 (= tp!1925395 e!4192866)))

(declare-fun b!6976565 () Bool)

(declare-fun tp!1926906 () Bool)

(declare-fun tp!1926904 () Bool)

(assert (=> b!6976565 (= e!4192866 (and tp!1926906 tp!1926904))))

(declare-fun b!6976564 () Bool)

(assert (=> b!6976564 (= e!4192866 tp_is_empty!43495)))

(declare-fun b!6976567 () Bool)

(declare-fun tp!1926903 () Bool)

(declare-fun tp!1926907 () Bool)

(assert (=> b!6976567 (= e!4192866 (and tp!1926903 tp!1926907))))

(declare-fun b!6976566 () Bool)

(declare-fun tp!1926905 () Bool)

(assert (=> b!6976566 (= e!4192866 tp!1926905)))

(assert (= (and b!6974893 ((_ is ElementMatch!17135) (regOne!34782 (regOne!34782 (regTwo!34782 r!13765))))) b!6976564))

(assert (= (and b!6974893 ((_ is Concat!25980) (regOne!34782 (regOne!34782 (regTwo!34782 r!13765))))) b!6976565))

(assert (= (and b!6974893 ((_ is Star!17135) (regOne!34782 (regOne!34782 (regTwo!34782 r!13765))))) b!6976566))

(assert (= (and b!6974893 ((_ is Union!17135) (regOne!34782 (regOne!34782 (regTwo!34782 r!13765))))) b!6976567))

(declare-fun e!4192867 () Bool)

(assert (=> b!6974893 (= tp!1925393 e!4192867)))

(declare-fun b!6976569 () Bool)

(declare-fun tp!1926911 () Bool)

(declare-fun tp!1926909 () Bool)

(assert (=> b!6976569 (= e!4192867 (and tp!1926911 tp!1926909))))

(declare-fun b!6976568 () Bool)

(assert (=> b!6976568 (= e!4192867 tp_is_empty!43495)))

(declare-fun b!6976571 () Bool)

(declare-fun tp!1926908 () Bool)

(declare-fun tp!1926912 () Bool)

(assert (=> b!6976571 (= e!4192867 (and tp!1926908 tp!1926912))))

(declare-fun b!6976570 () Bool)

(declare-fun tp!1926910 () Bool)

(assert (=> b!6976570 (= e!4192867 tp!1926910)))

(assert (= (and b!6974893 ((_ is ElementMatch!17135) (regTwo!34782 (regOne!34782 (regTwo!34782 r!13765))))) b!6976568))

(assert (= (and b!6974893 ((_ is Concat!25980) (regTwo!34782 (regOne!34782 (regTwo!34782 r!13765))))) b!6976569))

(assert (= (and b!6974893 ((_ is Star!17135) (regTwo!34782 (regOne!34782 (regTwo!34782 r!13765))))) b!6976570))

(assert (= (and b!6974893 ((_ is Union!17135) (regTwo!34782 (regOne!34782 (regTwo!34782 r!13765))))) b!6976571))

(declare-fun e!4192868 () Bool)

(assert (=> b!6974835 (= tp!1925322 e!4192868)))

(declare-fun b!6976573 () Bool)

(declare-fun tp!1926916 () Bool)

(declare-fun tp!1926914 () Bool)

(assert (=> b!6976573 (= e!4192868 (and tp!1926916 tp!1926914))))

(declare-fun b!6976572 () Bool)

(assert (=> b!6976572 (= e!4192868 tp_is_empty!43495)))

(declare-fun b!6976575 () Bool)

(declare-fun tp!1926913 () Bool)

(declare-fun tp!1926917 () Bool)

(assert (=> b!6976575 (= e!4192868 (and tp!1926913 tp!1926917))))

(declare-fun b!6976574 () Bool)

(declare-fun tp!1926915 () Bool)

(assert (=> b!6976574 (= e!4192868 tp!1926915)))

(assert (= (and b!6974835 ((_ is ElementMatch!17135) (regOne!34782 (h!73276 (t!380695 l!9142))))) b!6976572))

(assert (= (and b!6974835 ((_ is Concat!25980) (regOne!34782 (h!73276 (t!380695 l!9142))))) b!6976573))

(assert (= (and b!6974835 ((_ is Star!17135) (regOne!34782 (h!73276 (t!380695 l!9142))))) b!6976574))

(assert (= (and b!6974835 ((_ is Union!17135) (regOne!34782 (h!73276 (t!380695 l!9142))))) b!6976575))

(declare-fun e!4192869 () Bool)

(assert (=> b!6974835 (= tp!1925320 e!4192869)))

(declare-fun b!6976577 () Bool)

(declare-fun tp!1926921 () Bool)

(declare-fun tp!1926919 () Bool)

(assert (=> b!6976577 (= e!4192869 (and tp!1926921 tp!1926919))))

(declare-fun b!6976576 () Bool)

(assert (=> b!6976576 (= e!4192869 tp_is_empty!43495)))

(declare-fun b!6976579 () Bool)

(declare-fun tp!1926918 () Bool)

(declare-fun tp!1926922 () Bool)

(assert (=> b!6976579 (= e!4192869 (and tp!1926918 tp!1926922))))

(declare-fun b!6976578 () Bool)

(declare-fun tp!1926920 () Bool)

(assert (=> b!6976578 (= e!4192869 tp!1926920)))

(assert (= (and b!6974835 ((_ is ElementMatch!17135) (regTwo!34782 (h!73276 (t!380695 l!9142))))) b!6976576))

(assert (= (and b!6974835 ((_ is Concat!25980) (regTwo!34782 (h!73276 (t!380695 l!9142))))) b!6976577))

(assert (= (and b!6974835 ((_ is Star!17135) (regTwo!34782 (h!73276 (t!380695 l!9142))))) b!6976578))

(assert (= (and b!6974835 ((_ is Union!17135) (regTwo!34782 (h!73276 (t!380695 l!9142))))) b!6976579))

(declare-fun e!4192870 () Bool)

(assert (=> b!6974845 (= tp!1925333 e!4192870)))

(declare-fun b!6976581 () Bool)

(declare-fun tp!1926926 () Bool)

(declare-fun tp!1926924 () Bool)

(assert (=> b!6976581 (= e!4192870 (and tp!1926926 tp!1926924))))

(declare-fun b!6976580 () Bool)

(assert (=> b!6976580 (= e!4192870 tp_is_empty!43495)))

(declare-fun b!6976583 () Bool)

(declare-fun tp!1926923 () Bool)

(declare-fun tp!1926927 () Bool)

(assert (=> b!6976583 (= e!4192870 (and tp!1926923 tp!1926927))))

(declare-fun b!6976582 () Bool)

(declare-fun tp!1926925 () Bool)

(assert (=> b!6976582 (= e!4192870 tp!1926925)))

(assert (= (and b!6974845 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34783 (reg!17464 r!13765))))) b!6976580))

(assert (= (and b!6974845 ((_ is Concat!25980) (reg!17464 (regTwo!34783 (reg!17464 r!13765))))) b!6976581))

(assert (= (and b!6974845 ((_ is Star!17135) (reg!17464 (regTwo!34783 (reg!17464 r!13765))))) b!6976582))

(assert (= (and b!6974845 ((_ is Union!17135) (reg!17464 (regTwo!34783 (reg!17464 r!13765))))) b!6976583))

(declare-fun e!4192871 () Bool)

(assert (=> b!6974821 (= tp!1925299 e!4192871)))

(declare-fun b!6976585 () Bool)

(declare-fun tp!1926931 () Bool)

(declare-fun tp!1926929 () Bool)

(assert (=> b!6976585 (= e!4192871 (and tp!1926931 tp!1926929))))

(declare-fun b!6976584 () Bool)

(assert (=> b!6976584 (= e!4192871 tp_is_empty!43495)))

(declare-fun b!6976587 () Bool)

(declare-fun tp!1926928 () Bool)

(declare-fun tp!1926932 () Bool)

(assert (=> b!6976587 (= e!4192871 (and tp!1926928 tp!1926932))))

(declare-fun b!6976586 () Bool)

(declare-fun tp!1926930 () Bool)

(assert (=> b!6976586 (= e!4192871 tp!1926930)))

(assert (= (and b!6974821 ((_ is ElementMatch!17135) (regOne!34783 (regOne!34782 (regOne!34783 r!13765))))) b!6976584))

(assert (= (and b!6974821 ((_ is Concat!25980) (regOne!34783 (regOne!34782 (regOne!34783 r!13765))))) b!6976585))

(assert (= (and b!6974821 ((_ is Star!17135) (regOne!34783 (regOne!34782 (regOne!34783 r!13765))))) b!6976586))

(assert (= (and b!6974821 ((_ is Union!17135) (regOne!34783 (regOne!34782 (regOne!34783 r!13765))))) b!6976587))

(declare-fun e!4192872 () Bool)

(assert (=> b!6974821 (= tp!1925303 e!4192872)))

(declare-fun b!6976589 () Bool)

(declare-fun tp!1926936 () Bool)

(declare-fun tp!1926934 () Bool)

(assert (=> b!6976589 (= e!4192872 (and tp!1926936 tp!1926934))))

(declare-fun b!6976588 () Bool)

(assert (=> b!6976588 (= e!4192872 tp_is_empty!43495)))

(declare-fun b!6976591 () Bool)

(declare-fun tp!1926933 () Bool)

(declare-fun tp!1926937 () Bool)

(assert (=> b!6976591 (= e!4192872 (and tp!1926933 tp!1926937))))

(declare-fun b!6976590 () Bool)

(declare-fun tp!1926935 () Bool)

(assert (=> b!6976590 (= e!4192872 tp!1926935)))

(assert (= (and b!6974821 ((_ is ElementMatch!17135) (regTwo!34783 (regOne!34782 (regOne!34783 r!13765))))) b!6976588))

(assert (= (and b!6974821 ((_ is Concat!25980) (regTwo!34783 (regOne!34782 (regOne!34783 r!13765))))) b!6976589))

(assert (= (and b!6974821 ((_ is Star!17135) (regTwo!34783 (regOne!34782 (regOne!34783 r!13765))))) b!6976590))

(assert (= (and b!6974821 ((_ is Union!17135) (regTwo!34783 (regOne!34782 (regOne!34783 r!13765))))) b!6976591))

(declare-fun e!4192873 () Bool)

(assert (=> b!6974870 (= tp!1925364 e!4192873)))

(declare-fun b!6976593 () Bool)

(declare-fun tp!1926941 () Bool)

(declare-fun tp!1926939 () Bool)

(assert (=> b!6976593 (= e!4192873 (and tp!1926941 tp!1926939))))

(declare-fun b!6976592 () Bool)

(assert (=> b!6976592 (= e!4192873 tp_is_empty!43495)))

(declare-fun b!6976595 () Bool)

(declare-fun tp!1926938 () Bool)

(declare-fun tp!1926942 () Bool)

(assert (=> b!6976595 (= e!4192873 (and tp!1926938 tp!1926942))))

(declare-fun b!6976594 () Bool)

(declare-fun tp!1926940 () Bool)

(assert (=> b!6976594 (= e!4192873 tp!1926940)))

(assert (= (and b!6974870 ((_ is ElementMatch!17135) (reg!17464 (regTwo!34783 (regOne!34783 r!13765))))) b!6976592))

(assert (= (and b!6974870 ((_ is Concat!25980) (reg!17464 (regTwo!34783 (regOne!34783 r!13765))))) b!6976593))

(assert (= (and b!6974870 ((_ is Star!17135) (reg!17464 (regTwo!34783 (regOne!34783 r!13765))))) b!6976594))

(assert (= (and b!6974870 ((_ is Union!17135) (reg!17464 (regTwo!34783 (regOne!34783 r!13765))))) b!6976595))

(declare-fun e!4192874 () Bool)

(assert (=> b!6974879 (= tp!1925372 e!4192874)))

(declare-fun b!6976597 () Bool)

(declare-fun tp!1926946 () Bool)

(declare-fun tp!1926944 () Bool)

(assert (=> b!6976597 (= e!4192874 (and tp!1926946 tp!1926944))))

(declare-fun b!6976596 () Bool)

(assert (=> b!6976596 (= e!4192874 tp_is_empty!43495)))

(declare-fun b!6976599 () Bool)

(declare-fun tp!1926943 () Bool)

(declare-fun tp!1926947 () Bool)

(assert (=> b!6976599 (= e!4192874 (and tp!1926943 tp!1926947))))

(declare-fun b!6976598 () Bool)

(declare-fun tp!1926945 () Bool)

(assert (=> b!6976598 (= e!4192874 tp!1926945)))

(assert (= (and b!6974879 ((_ is ElementMatch!17135) (regOne!34783 (regTwo!34782 (regOne!34782 r!13765))))) b!6976596))

(assert (= (and b!6974879 ((_ is Concat!25980) (regOne!34783 (regTwo!34782 (regOne!34782 r!13765))))) b!6976597))

(assert (= (and b!6974879 ((_ is Star!17135) (regOne!34783 (regTwo!34782 (regOne!34782 r!13765))))) b!6976598))

(assert (= (and b!6974879 ((_ is Union!17135) (regOne!34783 (regTwo!34782 (regOne!34782 r!13765))))) b!6976599))

(declare-fun e!4192875 () Bool)

(assert (=> b!6974879 (= tp!1925376 e!4192875)))

(declare-fun b!6976601 () Bool)

(declare-fun tp!1926951 () Bool)

(declare-fun tp!1926949 () Bool)

(assert (=> b!6976601 (= e!4192875 (and tp!1926951 tp!1926949))))

(declare-fun b!6976600 () Bool)

(assert (=> b!6976600 (= e!4192875 tp_is_empty!43495)))

(declare-fun b!6976603 () Bool)

(declare-fun tp!1926948 () Bool)

(declare-fun tp!1926952 () Bool)

(assert (=> b!6976603 (= e!4192875 (and tp!1926948 tp!1926952))))

(declare-fun b!6976602 () Bool)

(declare-fun tp!1926950 () Bool)

(assert (=> b!6976602 (= e!4192875 tp!1926950)))

(assert (= (and b!6974879 ((_ is ElementMatch!17135) (regTwo!34783 (regTwo!34782 (regOne!34782 r!13765))))) b!6976600))

(assert (= (and b!6974879 ((_ is Concat!25980) (regTwo!34783 (regTwo!34782 (regOne!34782 r!13765))))) b!6976601))

(assert (= (and b!6974879 ((_ is Star!17135) (regTwo!34783 (regTwo!34782 (regOne!34782 r!13765))))) b!6976602))

(assert (= (and b!6974879 ((_ is Union!17135) (regTwo!34783 (regTwo!34782 (regOne!34782 r!13765))))) b!6976603))

(declare-fun e!4192876 () Bool)

(assert (=> b!6974861 (= tp!1925355 e!4192876)))

(declare-fun b!6976605 () Bool)

(declare-fun tp!1926956 () Bool)

(declare-fun tp!1926954 () Bool)

(assert (=> b!6976605 (= e!4192876 (and tp!1926956 tp!1926954))))

(declare-fun b!6976604 () Bool)

(assert (=> b!6976604 (= e!4192876 tp_is_empty!43495)))

(declare-fun b!6976607 () Bool)

(declare-fun tp!1926953 () Bool)

(declare-fun tp!1926957 () Bool)

(assert (=> b!6976607 (= e!4192876 (and tp!1926953 tp!1926957))))

(declare-fun b!6976606 () Bool)

(declare-fun tp!1926955 () Bool)

(assert (=> b!6976606 (= e!4192876 tp!1926955)))

(assert (= (and b!6974861 ((_ is ElementMatch!17135) (regOne!34782 (reg!17464 (regTwo!34782 r!13765))))) b!6976604))

(assert (= (and b!6974861 ((_ is Concat!25980) (regOne!34782 (reg!17464 (regTwo!34782 r!13765))))) b!6976605))

(assert (= (and b!6974861 ((_ is Star!17135) (regOne!34782 (reg!17464 (regTwo!34782 r!13765))))) b!6976606))

(assert (= (and b!6974861 ((_ is Union!17135) (regOne!34782 (reg!17464 (regTwo!34782 r!13765))))) b!6976607))

(declare-fun e!4192877 () Bool)

(assert (=> b!6974861 (= tp!1925353 e!4192877)))

(declare-fun b!6976609 () Bool)

(declare-fun tp!1926961 () Bool)

(declare-fun tp!1926959 () Bool)

(assert (=> b!6976609 (= e!4192877 (and tp!1926961 tp!1926959))))

(declare-fun b!6976608 () Bool)

(assert (=> b!6976608 (= e!4192877 tp_is_empty!43495)))

(declare-fun b!6976611 () Bool)

(declare-fun tp!1926958 () Bool)

(declare-fun tp!1926962 () Bool)

(assert (=> b!6976611 (= e!4192877 (and tp!1926958 tp!1926962))))

(declare-fun b!6976610 () Bool)

(declare-fun tp!1926960 () Bool)

(assert (=> b!6976610 (= e!4192877 tp!1926960)))

(assert (= (and b!6974861 ((_ is ElementMatch!17135) (regTwo!34782 (reg!17464 (regTwo!34782 r!13765))))) b!6976608))

(assert (= (and b!6974861 ((_ is Concat!25980) (regTwo!34782 (reg!17464 (regTwo!34782 r!13765))))) b!6976609))

(assert (= (and b!6974861 ((_ is Star!17135) (regTwo!34782 (reg!17464 (regTwo!34782 r!13765))))) b!6976610))

(assert (= (and b!6974861 ((_ is Union!17135) (regTwo!34782 (reg!17464 (regTwo!34782 r!13765))))) b!6976611))

(declare-fun e!4192878 () Bool)

(assert (=> b!6974803 (= tp!1925282 e!4192878)))

(declare-fun b!6976613 () Bool)

(declare-fun tp!1926966 () Bool)

(declare-fun tp!1926964 () Bool)

(assert (=> b!6976613 (= e!4192878 (and tp!1926966 tp!1926964))))

(declare-fun b!6976612 () Bool)

(assert (=> b!6976612 (= e!4192878 tp_is_empty!43495)))

(declare-fun b!6976615 () Bool)

(declare-fun tp!1926963 () Bool)

(declare-fun tp!1926967 () Bool)

(assert (=> b!6976615 (= e!4192878 (and tp!1926963 tp!1926967))))

(declare-fun b!6976614 () Bool)

(declare-fun tp!1926965 () Bool)

(assert (=> b!6976614 (= e!4192878 tp!1926965)))

(assert (= (and b!6974803 ((_ is ElementMatch!17135) (regOne!34782 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976612))

(assert (= (and b!6974803 ((_ is Concat!25980) (regOne!34782 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976613))

(assert (= (and b!6974803 ((_ is Star!17135) (regOne!34782 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976614))

(assert (= (and b!6974803 ((_ is Union!17135) (regOne!34782 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976615))

(declare-fun e!4192879 () Bool)

(assert (=> b!6974803 (= tp!1925280 e!4192879)))

(declare-fun b!6976617 () Bool)

(declare-fun tp!1926971 () Bool)

(declare-fun tp!1926969 () Bool)

(assert (=> b!6976617 (= e!4192879 (and tp!1926971 tp!1926969))))

(declare-fun b!6976616 () Bool)

(assert (=> b!6976616 (= e!4192879 tp_is_empty!43495)))

(declare-fun b!6976619 () Bool)

(declare-fun tp!1926968 () Bool)

(declare-fun tp!1926972 () Bool)

(assert (=> b!6976619 (= e!4192879 (and tp!1926968 tp!1926972))))

(declare-fun b!6976618 () Bool)

(declare-fun tp!1926970 () Bool)

(assert (=> b!6976618 (= e!4192879 tp!1926970)))

(assert (= (and b!6974803 ((_ is ElementMatch!17135) (regTwo!34782 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976616))

(assert (= (and b!6974803 ((_ is Concat!25980) (regTwo!34782 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976617))

(assert (= (and b!6974803 ((_ is Star!17135) (regTwo!34782 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976618))

(assert (= (and b!6974803 ((_ is Union!17135) (regTwo!34782 (regTwo!34783 (regTwo!34782 r!13765))))) b!6976619))

(declare-fun e!4192880 () Bool)

(assert (=> b!6974812 (= tp!1925291 e!4192880)))

(declare-fun b!6976621 () Bool)

(declare-fun tp!1926976 () Bool)

(declare-fun tp!1926974 () Bool)

(assert (=> b!6976621 (= e!4192880 (and tp!1926976 tp!1926974))))

(declare-fun b!6976620 () Bool)

(assert (=> b!6976620 (= e!4192880 tp_is_empty!43495)))

(declare-fun b!6976623 () Bool)

(declare-fun tp!1926973 () Bool)

(declare-fun tp!1926977 () Bool)

(assert (=> b!6976623 (= e!4192880 (and tp!1926973 tp!1926977))))

(declare-fun b!6976622 () Bool)

(declare-fun tp!1926975 () Bool)

(assert (=> b!6976622 (= e!4192880 tp!1926975)))

(assert (= (and b!6974812 ((_ is ElementMatch!17135) (reg!17464 (regOne!34782 (reg!17464 r!13765))))) b!6976620))

(assert (= (and b!6974812 ((_ is Concat!25980) (reg!17464 (regOne!34782 (reg!17464 r!13765))))) b!6976621))

(assert (= (and b!6974812 ((_ is Star!17135) (reg!17464 (regOne!34782 (reg!17464 r!13765))))) b!6976622))

(assert (= (and b!6974812 ((_ is Union!17135) (reg!17464 (regOne!34782 (reg!17464 r!13765))))) b!6976623))

(declare-fun e!4192881 () Bool)

(assert (=> b!6974913 (= tp!1925420 e!4192881)))

(declare-fun b!6976625 () Bool)

(declare-fun tp!1926981 () Bool)

(declare-fun tp!1926979 () Bool)

(assert (=> b!6976625 (= e!4192881 (and tp!1926981 tp!1926979))))

(declare-fun b!6976624 () Bool)

(assert (=> b!6976624 (= e!4192881 tp_is_empty!43495)))

(declare-fun b!6976627 () Bool)

(declare-fun tp!1926978 () Bool)

(declare-fun tp!1926982 () Bool)

(assert (=> b!6976627 (= e!4192881 (and tp!1926978 tp!1926982))))

(declare-fun b!6976626 () Bool)

(declare-fun tp!1926980 () Bool)

(assert (=> b!6976626 (= e!4192881 tp!1926980)))

(assert (= (and b!6974913 ((_ is ElementMatch!17135) (regOne!34782 (reg!17464 (regTwo!34783 r!13765))))) b!6976624))

(assert (= (and b!6974913 ((_ is Concat!25980) (regOne!34782 (reg!17464 (regTwo!34783 r!13765))))) b!6976625))

(assert (= (and b!6974913 ((_ is Star!17135) (regOne!34782 (reg!17464 (regTwo!34783 r!13765))))) b!6976626))

(assert (= (and b!6974913 ((_ is Union!17135) (regOne!34782 (reg!17464 (regTwo!34783 r!13765))))) b!6976627))

(declare-fun e!4192882 () Bool)

(assert (=> b!6974913 (= tp!1925418 e!4192882)))

(declare-fun b!6976629 () Bool)

(declare-fun tp!1926986 () Bool)

(declare-fun tp!1926984 () Bool)

(assert (=> b!6976629 (= e!4192882 (and tp!1926986 tp!1926984))))

(declare-fun b!6976628 () Bool)

(assert (=> b!6976628 (= e!4192882 tp_is_empty!43495)))

(declare-fun b!6976631 () Bool)

(declare-fun tp!1926983 () Bool)

(declare-fun tp!1926987 () Bool)

(assert (=> b!6976631 (= e!4192882 (and tp!1926983 tp!1926987))))

(declare-fun b!6976630 () Bool)

(declare-fun tp!1926985 () Bool)

(assert (=> b!6976630 (= e!4192882 tp!1926985)))

(assert (= (and b!6974913 ((_ is ElementMatch!17135) (regTwo!34782 (reg!17464 (regTwo!34783 r!13765))))) b!6976628))

(assert (= (and b!6974913 ((_ is Concat!25980) (regTwo!34782 (reg!17464 (regTwo!34783 r!13765))))) b!6976629))

(assert (= (and b!6974913 ((_ is Star!17135) (regTwo!34782 (reg!17464 (regTwo!34783 r!13765))))) b!6976630))

(assert (= (and b!6974913 ((_ is Union!17135) (regTwo!34782 (reg!17464 (regTwo!34783 r!13765))))) b!6976631))

(declare-fun b_lambda!260995 () Bool)

(assert (= b_lambda!260991 (or start!668666 b_lambda!260995)))

(declare-fun bs!1859974 () Bool)

(declare-fun d!2172125 () Bool)

(assert (= bs!1859974 (and d!2172125 start!668666)))

(assert (=> bs!1859974 (= (dynLambda!26652 lambda!397905 (h!73276 (t!380695 (t!380695 l!9142)))) (validRegex!8817 (h!73276 (t!380695 (t!380695 l!9142)))))))

(declare-fun m!7661884 () Bool)

(assert (=> bs!1859974 m!7661884))

(assert (=> b!6975993 d!2172125))

(declare-fun b_lambda!260997 () Bool)

(assert (= b_lambda!260993 (or d!2171827 b_lambda!260997)))

(declare-fun bs!1859975 () Bool)

(declare-fun d!2172127 () Bool)

(assert (= bs!1859975 (and d!2172127 d!2171827)))

(assert (=> bs!1859975 (= (dynLambda!26652 lambda!397927 (h!73276 (t!380695 l!9142))) (not (dynLambda!26652 lambda!397906 (h!73276 (t!380695 l!9142)))))))

(declare-fun b_lambda!261003 () Bool)

(assert (=> (not b_lambda!261003) (not bs!1859975)))

(declare-fun m!7661886 () Bool)

(assert (=> bs!1859975 m!7661886))

(assert (=> b!6976004 d!2172127))

(declare-fun b_lambda!260999 () Bool)

(assert (= b_lambda!260987 (or d!2171889 b_lambda!260999)))

(declare-fun bs!1859976 () Bool)

(declare-fun d!2172129 () Bool)

(assert (= bs!1859976 (and d!2172129 d!2171889)))

(assert (=> bs!1859976 (= (dynLambda!26652 lambda!397936 (h!73276 (t!380695 l!9142))) (validRegex!8817 (h!73276 (t!380695 l!9142))))))

(assert (=> bs!1859976 m!7661504))

(assert (=> b!6975794 d!2172129))

(declare-fun b_lambda!261001 () Bool)

(assert (= b_lambda!260989 (or d!2171829 b_lambda!261001)))

(declare-fun bs!1859977 () Bool)

(declare-fun d!2172131 () Bool)

(assert (= bs!1859977 (and d!2172131 d!2171829)))

(assert (=> bs!1859977 (= (dynLambda!26652 lambda!397930 (h!73276 (t!380695 l!9142))) (validRegex!8817 (h!73276 (t!380695 l!9142))))))

(assert (=> bs!1859977 m!7661504))

(assert (=> b!6975972 d!2172131))

(check-sat (not b!6976409) (not b!6976089) (not b!6976159) (not bm!633219) (not b!6976374) (not b!6975992) (not b!6976155) (not b!6976451) (not bm!633211) (not b!6976276) (not b!6976394) (not b!6976063) (not b!6976395) (not b!6976530) (not b!6976033) (not b!6976117) (not b!6976199) (not b!6976429) (not b!6976216) (not b!6976115) (not b!6976566) (not b!6976193) (not d!2172109) (not b!6976061) (not b!6976254) (not b!6976497) (not b!6976040) (not b!6976499) (not b!6976615) (not b!6976363) (not b!6976246) (not b_lambda!260985) (not b!6976120) (not b!6976123) (not b!6976457) (not b!6976630) (not bm!633215) (not b!6976104) (not b!6976533) (not b!6976398) (not b!6976322) (not b!6976318) (not b!6976088) (not b!6976055) (not b!6976035) (not b!6976423) (not b!6976571) (not b!6976505) (not bm!633206) (not b!6976191) (not b!6976201) (not b!6976547) (not b!6976622) (not b!6976128) (not b!6975952) (not b!6976253) (not b!6976224) (not b!6976369) (not b!6975795) (not b!6976242) (not b!6976238) (not b!6976317) (not b!6976112) (not b!6976509) (not b!6976152) (not b!6976578) (not bm!633223) (not b!6976495) (not b!6976077) (not b!6976248) (not b!6976053) (not b!6976311) (not b!6976466) (not b!6976233) (not d!2172087) (not b!6975931) (not b!6976501) (not b!6976545) (not b!6976494) (not b!6976301) (not b!6976021) (not b!6976257) (not b!6976292) (not b!6976016) (not b!6975825) (not b!6976561) (not b!6976177) (not b!6976565) (not b!6976510) (not b!6976052) (not b!6976486) (not bm!633210) (not b!6976143) (not b!6976219) (not b!6975793) (not b!6976107) (not b!6976093) (not b!6976241) (not b!6976230) (not d!2172043) (not b!6976244) (not b!6976009) (not b!6976036) (not b!6976274) (not b!6976613) (not bm!633226) (not b!6976132) (not b!6976353) (not b!6976590) (not b!6976313) (not b!6976147) (not b!6976125) (not b!6976415) (not b!6976478) (not b!6976028) (not b!6976220) (not b!6975921) (not b!6976284) (not b!6976314) (not b!6976410) (not b!6976031) (not b!6976116) (not b!6976232) (not b!6976228) (not b!6976281) (not b!6976076) (not b!6976519) (not d!2172099) (not b!6976187) (not b!6976056) (not b!6976091) (not b!6976417) (not b!6976443) (not b!6976048) (not b_lambda!260957) (not b!6976012) (not b!6976543) (not b!6976136) (not b!6975897) (not b!6976121) (not b!6976226) (not b!6976338) (not b!6976531) (not b!6976008) (not b!6976506) (not b!6976563) (not b!6976217) (not b!6976236) (not b!6976080) (not b!6976513) (not b!6976377) (not bm!633205) (not b!6976342) (not b!6976618) (not d!2172059) (not b!6976345) (not b!6976521) (not b!6976465) (not b!6976390) (not b!6976555) (not b!6976105) (not b!6976477) (not b!6976135) (not b!6976614) (not b!6975911) (not bm!633225) (not b!6976487) (not b!6976610) (not b!6976529) (not b_lambda!260995) (not b!6976252) (not b!6976445) (not b!6976462) (not b!6976447) (not b!6976407) (not bm!633171) (not bm!633212) (not b!6976526) (not b!6976163) (not b!6976325) (not b!6976586) (not b!6976011) (not b!6976551) (not b!6976422) (not b!6976113) (not d!2172085) (not b!6976067) (not b!6976629) (not b!6975924) (not b!6976522) (not b!6976071) (not b!6976207) (not b!6976041) (not b!6976498) (not bs!1859976) (not b_lambda!260997) (not b!6976131) (not b!6976047) (not b!6976534) (not b!6976064) (not b!6976441) (not b!6976334) (not bm!633190) (not b!6976351) (not b!6976262) (not b!6976559) (not b!6976209) (not b!6976069) (not b!6976569) (not b!6976490) (not b!6976371) (not b!6976541) (not b!6976365) (not b!6976597) (not b!6976385) (not bm!633196) (not b!6976583) (not b!6976097) (not b!6976617) (not b!6976606) (not b!6975934) (not b!6976546) (not b!6976489) (not b!6976535) (not b!6975832) (not b!6976391) (not b!6975778) (not b!6976463) (not b!6976060) (not b!6976175) (not b!6976188) (not b!6976265) (not b!6975833) (not b!6976085) (not b!6976180) (not b!6976355) (not b!6976470) (not b!6976475) (not b!6976293) (not bm!633175) (not b!6976305) (not b!6976383) (not b!6976197) (not bm!633198) (not b!6975965) (not b!6976418) (not b!6976549) (not b!6976514) (not b!6976594) (not b!6976401) (not b!6976474) (not b!6976570) (not b!6976083) (not b_lambda!261003) (not b!6976205) (not b!6976453) (not b!6976627) (not b!6975862) (not b!6976527) (not b!6976051) (not b!6976268) (not b!6976027) (not b!6976459) (not b!6976603) (not b!6976537) (not b!6976039) (not b!6976406) (not b!6975916) (not b!6976141) (not b!6976491) (not b!6976427) (not b!6976346) (not b!6976068) (not bm!633181) (not b!6976184) (not bm!633180) (not b!6976579) (not b!6976171) (not b!6976585) (not b!6976595) (not b!6976303) (not b!6976601) (not b!6976607) (not b!6976172) tp_is_empty!43495 (not b!6976195) (not bm!633183) (not b!6976024) (not b!6976574) (not bm!633209) (not b!6976625) (not b!6976458) (not b!6976306) (not b!6976302) (not b!6976425) (not b!6976007) (not b!6976482) (not b!6976296) (not b!6976149) (not b!6976557) (not b!6976538) (not b!6976250) (not b!6976273) (not b!6975919) (not b!6976164) (not b!6975945) (not d!2172097) (not b!6976015) (not b!6976290) (not b!6976393) (not b!6976471) (not b!6976049) (not b!6976426) (not b!6976515) (not b!6975835) (not b!6976413) (not b!6976621) (not bm!633222) (not b!6976183) (not b!6976266) (not b!6975829) (not b!6976542) (not b!6976611) (not b!6976577) (not b!6976185) (not b!6976455) (not b!6976386) (not bm!633192) (not b!6976237) (not b!6976208) (not b!6976307) (not d!2172077) (not b!6976361) (not b!6976503) (not b!6976129) (not b!6976017) (not b!6976591) (not b!6976165) (not b!6976431) (not b!6975954) (not b!6976137) (not b!6976101) (not b!6976389) (not b!6976169) (not b_lambda!260961) (not b!6975877) (not b!6976309) (not b!6976096) (not b!6975994) (not b!6976399) (not bm!633195) (not b!6976623) (not b!6976103) (not bm!633201) (not d!2172081) (not b!6976359) (not b!6976357) (not b!6976602) (not b!6976550) (not b!6976589) (not b!6976272) (not bs!1859974) (not b!6976215) (not b!6976019) (not b!6976072) (not b!6976203) (not b!6976523) (not b!6975830) (not bm!633172) (not bm!633186) (not bm!633200) (not b!6976567) (not b!6975957) (not b!6976367) (not bm!633216) (not b!6976539) (not b!6976073) (not b!6976321) (not b!6976315) (not b!6976277) (not b!6976223) (not b!6975900) (not bs!1859977) (not b!6976373) (not b!6976525) (not b!6976213) (not b!6976626) (not b!6976043) (not b!6976181) (not b!6976140) (not b!6975977) (not b!6976593) (not d!2172123) (not b!6976598) (not b!6976411) (not b!6976469) (not b!6976354) (not bm!633193) (not b!6976337) (not b!6976319) (not b!6976358) (not b!6976095) (not b!6976454) (not b!6976473) (not b!6976507) (not b!6976449) (not b!6976176) (not b!6976059) (not b!6976269) (not b!6976300) (not b!6976240) (not b!6976245) (not b!6976065) (not b!6975844) (not b!6976099) (not b!6976419) (not b!6976249) (not b!6976437) (not b!6976092) (not b!6976381) (not b!6976139) (not b!6976619) (not b!6976023) (not b!6976258) (not b_lambda!260959) (not b!6976173) (not b!6976289) (not b!6976502) (not b!6976111) (not b!6976179) (not b!6976280) (not b!6976204) (not b!6976285) (not bm!633197) (not b!6976573) (not b!6976278) (not b!6976037) (not b!6976581) (not b!6976153) (not b!6976225) (not b!6976511) (not b!6976339) (not b!6976108) (not b!6976145) (not b!6976044) (not b!6976156) (not b!6976434) (not b!6976200) (not b!6975826) (not b!6976450) (not b!6976405) (not b!6976330) (not b!6976575) (not b!6976020) (not b!6976382) (not b!6976167) (not b_lambda!260999) (not b!6976599) (not b!6976421) (not b!6976343) (not b!6976323) (not b!6976100) (not b!6976298) (not b!6976397) (not b!6976264) (not b!6976327) (not b!6976079) (not b!6976403) (not b!6976587) (not b!6976562) (not b!6976013) (not b!6975853) (not b!6975925) (not b!6976558) (not b!6976347) (not b!6975871) (not b!6976288) (not b!6975961) (not b!6976127) (not b!6976029) (not b!6975827) (not b!6976261) (not b!6976435) (not b!6976151) (not b!6976493) (not d!2172101) (not b!6976553) (not b!6976341) (not b!6976109) (not b!6976582) (not b!6976402) (not b!6976366) (not b!6976057) (not b!6976003) (not b!6976196) (not b!6976362) (not b!6976189) (not b!6976518) (not b!6976161) (not b!6976005) (not b!6976294) (not b!6976192) (not b!6976483) (not b!6976119) (not b!6976461) (not b!6976084) (not b!6976433) (not b!6976430) (not b!6975973) (not b!6975960) (not b!6976144) (not b!6976442) (not bm!633174) (not bm!633207) (not d!2172061) (not b!6976439) (not b!6976081) (not b!6976211) (not b!6976554) (not b!6976481) (not bm!633184) (not b!6976446) (not b!6976234) (not b!6976479) (not bm!633187) (not b!6975891) (not b!6976387) (not b!6976370) (not bm!633220) (not b!6976032) (not b!6976270) (not b!6976631) (not b!6976609) (not bm!633202) (not b!6976133) (not b!6976326) (not b!6976333) (not b!6976467) (not b!6976331) (not b!6975955) (not b!6975942) (not b!6976517) (not b!6976148) (not b!6976075) (not b!6976160) (not b!6976438) (not bm!633208) (not b!6976025) (not bm!633203) (not b!6976329) (not b!6976157) (not b!6976350) (not b!6976229) (not b!6976349) (not b!6976310) (not b!6976335) (not b!6976168) (not bm!633189) (not b_lambda!261001) (not d!2172057) (not b!6976260) (not b!6976605) (not b!6976045) (not b!6976212) (not b!6975918) (not b!6976378) (not b!6976375) (not b!6976256) (not b!6976282) (not b!6975880) (not b!6976221) (not b!6976414) (not b!6976087) (not b!6976286) (not b_lambda!260935) (not b!6976485) (not b!6976124) (not b!6976379) (not b!6976297))
(check-sat)
