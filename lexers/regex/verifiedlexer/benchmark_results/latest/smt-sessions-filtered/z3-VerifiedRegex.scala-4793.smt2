; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246744 () Bool)

(assert start!246744)

(declare-fun b!2538583 () Bool)

(declare-fun res!1070307 () Bool)

(declare-fun e!1605527 () Bool)

(assert (=> b!2538583 (=> (not res!1070307) (not e!1605527))))

(declare-datatypes ((C!15280 0))(
  ( (C!15281 (val!9292 Int)) )
))
(declare-datatypes ((List!29626 0))(
  ( (Nil!29526) (Cons!29526 (h!34946 C!15280) (t!211325 List!29626)) )
))
(declare-fun tl!4068 () List!29626)

(declare-datatypes ((Regex!7561 0))(
  ( (ElementMatch!7561 (c!406099 C!15280)) (Concat!12257 (regOne!15634 Regex!7561) (regTwo!15634 Regex!7561)) (EmptyExpr!7561) (Star!7561 (reg!7890 Regex!7561)) (EmptyLang!7561) (Union!7561 (regOne!15635 Regex!7561) (regTwo!15635 Regex!7561)) )
))
(declare-fun r!27340 () Regex!7561)

(declare-fun c!14016 () C!15280)

(declare-fun nullable!2478 (Regex!7561) Bool)

(declare-fun derivative!256 (Regex!7561 List!29626) Regex!7561)

(declare-fun derivativeStep!2130 (Regex!7561 C!15280) Regex!7561)

(assert (=> b!2538583 (= res!1070307 (nullable!2478 (derivative!256 (derivativeStep!2130 r!27340 c!14016) tl!4068)))))

(declare-fun b!2538584 () Bool)

(declare-fun e!1605526 () Bool)

(declare-fun tp!810968 () Bool)

(declare-fun tp!810969 () Bool)

(assert (=> b!2538584 (= e!1605526 (and tp!810968 tp!810969))))

(declare-fun b!2538585 () Bool)

(declare-fun validRegex!3187 (Regex!7561) Bool)

(assert (=> b!2538585 (= e!1605527 (not (validRegex!3187 (regTwo!15635 r!27340))))))

(declare-fun lt!901704 () List!29626)

(declare-fun matchR!3516 (Regex!7561 List!29626) Bool)

(assert (=> b!2538585 (= (matchR!3516 (regOne!15635 r!27340) lt!901704) (matchR!3516 (derivative!256 (regOne!15635 r!27340) lt!901704) Nil!29526))))

(declare-datatypes ((Unit!43323 0))(
  ( (Unit!43324) )
))
(declare-fun lt!901705 () Unit!43323)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!162 (Regex!7561 List!29626) Unit!43323)

(assert (=> b!2538585 (= lt!901705 (lemmaMatchRIsSameAsWholeDerivativeAndNil!162 (regOne!15635 r!27340) lt!901704))))

(assert (=> b!2538585 (= (matchR!3516 r!27340 lt!901704) (matchR!3516 (derivative!256 r!27340 lt!901704) Nil!29526))))

(declare-fun lt!901706 () Unit!43323)

(assert (=> b!2538585 (= lt!901706 (lemmaMatchRIsSameAsWholeDerivativeAndNil!162 r!27340 lt!901704))))

(assert (=> b!2538585 (= lt!901704 (Cons!29526 c!14016 tl!4068))))

(declare-fun b!2538586 () Bool)

(declare-fun tp!810966 () Bool)

(declare-fun tp!810970 () Bool)

(assert (=> b!2538586 (= e!1605526 (and tp!810966 tp!810970))))

(declare-fun b!2538587 () Bool)

(declare-fun tp_is_empty!12977 () Bool)

(assert (=> b!2538587 (= e!1605526 tp_is_empty!12977)))

(declare-fun b!2538588 () Bool)

(declare-fun res!1070306 () Bool)

(assert (=> b!2538588 (=> (not res!1070306) (not e!1605527))))

(assert (=> b!2538588 (= res!1070306 (not (nullable!2478 (derivative!256 (derivativeStep!2130 (regTwo!15635 r!27340) c!14016) tl!4068))))))

(declare-fun res!1070308 () Bool)

(assert (=> start!246744 (=> (not res!1070308) (not e!1605527))))

(assert (=> start!246744 (= res!1070308 (validRegex!3187 r!27340))))

(assert (=> start!246744 e!1605527))

(assert (=> start!246744 e!1605526))

(assert (=> start!246744 tp_is_empty!12977))

(declare-fun e!1605528 () Bool)

(assert (=> start!246744 e!1605528))

(declare-fun b!2538589 () Bool)

(declare-fun tp!810965 () Bool)

(assert (=> b!2538589 (= e!1605526 tp!810965)))

(declare-fun b!2538590 () Bool)

(declare-fun res!1070310 () Bool)

(assert (=> b!2538590 (=> (not res!1070310) (not e!1605527))))

(get-info :version)

(assert (=> b!2538590 (= res!1070310 (and (not ((_ is EmptyExpr!7561) r!27340)) (not ((_ is EmptyLang!7561) r!27340)) (not ((_ is ElementMatch!7561) r!27340)) ((_ is Union!7561) r!27340)))))

(declare-fun b!2538591 () Bool)

(declare-fun res!1070309 () Bool)

(assert (=> b!2538591 (=> (not res!1070309) (not e!1605527))))

(assert (=> b!2538591 (= res!1070309 (not (nullable!2478 (derivative!256 (derivativeStep!2130 (regOne!15635 r!27340) c!14016) tl!4068))))))

(declare-fun b!2538592 () Bool)

(declare-fun tp!810967 () Bool)

(assert (=> b!2538592 (= e!1605528 (and tp_is_empty!12977 tp!810967))))

(assert (= (and start!246744 res!1070308) b!2538583))

(assert (= (and b!2538583 res!1070307) b!2538590))

(assert (= (and b!2538590 res!1070310) b!2538591))

(assert (= (and b!2538591 res!1070309) b!2538588))

(assert (= (and b!2538588 res!1070306) b!2538585))

(assert (= (and start!246744 ((_ is ElementMatch!7561) r!27340)) b!2538587))

(assert (= (and start!246744 ((_ is Concat!12257) r!27340)) b!2538586))

(assert (= (and start!246744 ((_ is Star!7561) r!27340)) b!2538589))

(assert (= (and start!246744 ((_ is Union!7561) r!27340)) b!2538584))

(assert (= (and start!246744 ((_ is Cons!29526) tl!4068)) b!2538592))

(declare-fun m!2886191 () Bool)

(assert (=> b!2538585 m!2886191))

(declare-fun m!2886193 () Bool)

(assert (=> b!2538585 m!2886193))

(declare-fun m!2886195 () Bool)

(assert (=> b!2538585 m!2886195))

(assert (=> b!2538585 m!2886195))

(declare-fun m!2886197 () Bool)

(assert (=> b!2538585 m!2886197))

(declare-fun m!2886199 () Bool)

(assert (=> b!2538585 m!2886199))

(declare-fun m!2886201 () Bool)

(assert (=> b!2538585 m!2886201))

(declare-fun m!2886203 () Bool)

(assert (=> b!2538585 m!2886203))

(declare-fun m!2886205 () Bool)

(assert (=> b!2538585 m!2886205))

(assert (=> b!2538585 m!2886193))

(declare-fun m!2886207 () Bool)

(assert (=> b!2538585 m!2886207))

(declare-fun m!2886209 () Bool)

(assert (=> b!2538591 m!2886209))

(assert (=> b!2538591 m!2886209))

(declare-fun m!2886211 () Bool)

(assert (=> b!2538591 m!2886211))

(assert (=> b!2538591 m!2886211))

(declare-fun m!2886213 () Bool)

(assert (=> b!2538591 m!2886213))

(declare-fun m!2886215 () Bool)

(assert (=> b!2538583 m!2886215))

(assert (=> b!2538583 m!2886215))

(declare-fun m!2886217 () Bool)

(assert (=> b!2538583 m!2886217))

(assert (=> b!2538583 m!2886217))

(declare-fun m!2886219 () Bool)

(assert (=> b!2538583 m!2886219))

(declare-fun m!2886221 () Bool)

(assert (=> start!246744 m!2886221))

(declare-fun m!2886223 () Bool)

(assert (=> b!2538588 m!2886223))

(assert (=> b!2538588 m!2886223))

(declare-fun m!2886225 () Bool)

(assert (=> b!2538588 m!2886225))

(assert (=> b!2538588 m!2886225))

(declare-fun m!2886227 () Bool)

(assert (=> b!2538588 m!2886227))

(check-sat (not b!2538592) tp_is_empty!12977 (not b!2538591) (not start!246744) (not b!2538585) (not b!2538588) (not b!2538586) (not b!2538589) (not b!2538584) (not b!2538583))
(check-sat)
(get-model)

(declare-fun d!721062 () Bool)

(declare-fun nullableFct!709 (Regex!7561) Bool)

(assert (=> d!721062 (= (nullable!2478 (derivative!256 (derivativeStep!2130 (regOne!15635 r!27340) c!14016) tl!4068)) (nullableFct!709 (derivative!256 (derivativeStep!2130 (regOne!15635 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469336 () Bool)

(assert (= bs!469336 d!721062))

(assert (=> bs!469336 m!2886211))

(declare-fun m!2886229 () Bool)

(assert (=> bs!469336 m!2886229))

(assert (=> b!2538591 d!721062))

(declare-fun d!721066 () Bool)

(declare-fun lt!901709 () Regex!7561)

(assert (=> d!721066 (validRegex!3187 lt!901709)))

(declare-fun e!1605531 () Regex!7561)

(assert (=> d!721066 (= lt!901709 e!1605531)))

(declare-fun c!406102 () Bool)

(assert (=> d!721066 (= c!406102 ((_ is Cons!29526) tl!4068))))

(assert (=> d!721066 (validRegex!3187 (derivativeStep!2130 (regOne!15635 r!27340) c!14016))))

(assert (=> d!721066 (= (derivative!256 (derivativeStep!2130 (regOne!15635 r!27340) c!14016) tl!4068) lt!901709)))

(declare-fun b!2538597 () Bool)

(assert (=> b!2538597 (= e!1605531 (derivative!256 (derivativeStep!2130 (derivativeStep!2130 (regOne!15635 r!27340) c!14016) (h!34946 tl!4068)) (t!211325 tl!4068)))))

(declare-fun b!2538598 () Bool)

(assert (=> b!2538598 (= e!1605531 (derivativeStep!2130 (regOne!15635 r!27340) c!14016))))

(assert (= (and d!721066 c!406102) b!2538597))

(assert (= (and d!721066 (not c!406102)) b!2538598))

(declare-fun m!2886231 () Bool)

(assert (=> d!721066 m!2886231))

(assert (=> d!721066 m!2886209))

(declare-fun m!2886233 () Bool)

(assert (=> d!721066 m!2886233))

(assert (=> b!2538597 m!2886209))

(declare-fun m!2886235 () Bool)

(assert (=> b!2538597 m!2886235))

(assert (=> b!2538597 m!2886235))

(declare-fun m!2886237 () Bool)

(assert (=> b!2538597 m!2886237))

(assert (=> b!2538591 d!721066))

(declare-fun b!2538647 () Bool)

(declare-fun c!406119 () Bool)

(assert (=> b!2538647 (= c!406119 ((_ is Union!7561) (regOne!15635 r!27340)))))

(declare-fun e!1605557 () Regex!7561)

(declare-fun e!1605559 () Regex!7561)

(assert (=> b!2538647 (= e!1605557 e!1605559)))

(declare-fun d!721068 () Bool)

(declare-fun lt!901714 () Regex!7561)

(assert (=> d!721068 (validRegex!3187 lt!901714)))

(declare-fun e!1605556 () Regex!7561)

(assert (=> d!721068 (= lt!901714 e!1605556)))

(declare-fun c!406120 () Bool)

(assert (=> d!721068 (= c!406120 (or ((_ is EmptyExpr!7561) (regOne!15635 r!27340)) ((_ is EmptyLang!7561) (regOne!15635 r!27340))))))

(assert (=> d!721068 (validRegex!3187 (regOne!15635 r!27340))))

(assert (=> d!721068 (= (derivativeStep!2130 (regOne!15635 r!27340) c!14016) lt!901714)))

(declare-fun bm!160197 () Bool)

(declare-fun call!160205 () Regex!7561)

(declare-fun call!160204 () Regex!7561)

(assert (=> bm!160197 (= call!160205 call!160204)))

(declare-fun bm!160198 () Bool)

(declare-fun call!160203 () Regex!7561)

(declare-fun c!406121 () Bool)

(assert (=> bm!160198 (= call!160203 (derivativeStep!2130 (ite c!406119 (regTwo!15635 (regOne!15635 r!27340)) (ite c!406121 (reg!7890 (regOne!15635 r!27340)) (regOne!15634 (regOne!15635 r!27340)))) c!14016))))

(declare-fun b!2538648 () Bool)

(declare-fun e!1605558 () Regex!7561)

(assert (=> b!2538648 (= e!1605558 (Concat!12257 call!160204 (regOne!15635 r!27340)))))

(declare-fun bm!160199 () Bool)

(assert (=> bm!160199 (= call!160204 call!160203)))

(declare-fun b!2538649 () Bool)

(declare-fun c!406123 () Bool)

(assert (=> b!2538649 (= c!406123 (nullable!2478 (regOne!15634 (regOne!15635 r!27340))))))

(declare-fun e!1605560 () Regex!7561)

(assert (=> b!2538649 (= e!1605558 e!1605560)))

(declare-fun b!2538650 () Bool)

(declare-fun call!160202 () Regex!7561)

(assert (=> b!2538650 (= e!1605559 (Union!7561 call!160202 call!160203))))

(declare-fun b!2538651 () Bool)

(assert (=> b!2538651 (= e!1605556 EmptyLang!7561)))

(declare-fun b!2538652 () Bool)

(assert (=> b!2538652 (= e!1605560 (Union!7561 (Concat!12257 call!160205 (regTwo!15634 (regOne!15635 r!27340))) EmptyLang!7561))))

(declare-fun b!2538653 () Bool)

(assert (=> b!2538653 (= e!1605560 (Union!7561 (Concat!12257 call!160205 (regTwo!15634 (regOne!15635 r!27340))) call!160202))))

(declare-fun b!2538654 () Bool)

(assert (=> b!2538654 (= e!1605556 e!1605557)))

(declare-fun c!406122 () Bool)

(assert (=> b!2538654 (= c!406122 ((_ is ElementMatch!7561) (regOne!15635 r!27340)))))

(declare-fun b!2538655 () Bool)

(assert (=> b!2538655 (= e!1605559 e!1605558)))

(assert (=> b!2538655 (= c!406121 ((_ is Star!7561) (regOne!15635 r!27340)))))

(declare-fun bm!160200 () Bool)

(assert (=> bm!160200 (= call!160202 (derivativeStep!2130 (ite c!406119 (regOne!15635 (regOne!15635 r!27340)) (regTwo!15634 (regOne!15635 r!27340))) c!14016))))

(declare-fun b!2538656 () Bool)

(assert (=> b!2538656 (= e!1605557 (ite (= c!14016 (c!406099 (regOne!15635 r!27340))) EmptyExpr!7561 EmptyLang!7561))))

(assert (= (and d!721068 c!406120) b!2538651))

(assert (= (and d!721068 (not c!406120)) b!2538654))

(assert (= (and b!2538654 c!406122) b!2538656))

(assert (= (and b!2538654 (not c!406122)) b!2538647))

(assert (= (and b!2538647 c!406119) b!2538650))

(assert (= (and b!2538647 (not c!406119)) b!2538655))

(assert (= (and b!2538655 c!406121) b!2538648))

(assert (= (and b!2538655 (not c!406121)) b!2538649))

(assert (= (and b!2538649 c!406123) b!2538653))

(assert (= (and b!2538649 (not c!406123)) b!2538652))

(assert (= (or b!2538653 b!2538652) bm!160197))

(assert (= (or b!2538648 bm!160197) bm!160199))

(assert (= (or b!2538650 bm!160199) bm!160198))

(assert (= (or b!2538650 b!2538653) bm!160200))

(declare-fun m!2886239 () Bool)

(assert (=> d!721068 m!2886239))

(declare-fun m!2886241 () Bool)

(assert (=> d!721068 m!2886241))

(declare-fun m!2886243 () Bool)

(assert (=> bm!160198 m!2886243))

(declare-fun m!2886245 () Bool)

(assert (=> b!2538649 m!2886245))

(declare-fun m!2886247 () Bool)

(assert (=> bm!160200 m!2886247))

(assert (=> b!2538591 d!721068))

(declare-fun b!2538699 () Bool)

(declare-fun res!1070353 () Bool)

(declare-fun e!1605587 () Bool)

(assert (=> b!2538699 (=> res!1070353 e!1605587)))

(assert (=> b!2538699 (= res!1070353 (not ((_ is ElementMatch!7561) (derivative!256 r!27340 lt!901704))))))

(declare-fun e!1605584 () Bool)

(assert (=> b!2538699 (= e!1605584 e!1605587)))

(declare-fun b!2538700 () Bool)

(declare-fun e!1605588 () Bool)

(assert (=> b!2538700 (= e!1605588 (nullable!2478 (derivative!256 r!27340 lt!901704)))))

(declare-fun b!2538701 () Bool)

(declare-fun lt!901718 () Bool)

(assert (=> b!2538701 (= e!1605584 (not lt!901718))))

(declare-fun b!2538702 () Bool)

(declare-fun res!1070356 () Bool)

(declare-fun e!1605582 () Bool)

(assert (=> b!2538702 (=> (not res!1070356) (not e!1605582))))

(declare-fun call!160211 () Bool)

(assert (=> b!2538702 (= res!1070356 (not call!160211))))

(declare-fun b!2538703 () Bool)

(declare-fun e!1605585 () Bool)

(declare-fun e!1605586 () Bool)

(assert (=> b!2538703 (= e!1605585 e!1605586)))

(declare-fun res!1070357 () Bool)

(assert (=> b!2538703 (=> res!1070357 e!1605586)))

(assert (=> b!2538703 (= res!1070357 call!160211)))

(declare-fun bm!160206 () Bool)

(declare-fun isEmpty!16979 (List!29626) Bool)

(assert (=> bm!160206 (= call!160211 (isEmpty!16979 Nil!29526))))

(declare-fun d!721070 () Bool)

(declare-fun e!1605583 () Bool)

(assert (=> d!721070 e!1605583))

(declare-fun c!406135 () Bool)

(assert (=> d!721070 (= c!406135 ((_ is EmptyExpr!7561) (derivative!256 r!27340 lt!901704)))))

(assert (=> d!721070 (= lt!901718 e!1605588)))

(declare-fun c!406134 () Bool)

(assert (=> d!721070 (= c!406134 (isEmpty!16979 Nil!29526))))

(assert (=> d!721070 (validRegex!3187 (derivative!256 r!27340 lt!901704))))

(assert (=> d!721070 (= (matchR!3516 (derivative!256 r!27340 lt!901704) Nil!29526) lt!901718)))

(declare-fun b!2538704 () Bool)

(assert (=> b!2538704 (= e!1605583 e!1605584)))

(declare-fun c!406133 () Bool)

(assert (=> b!2538704 (= c!406133 ((_ is EmptyLang!7561) (derivative!256 r!27340 lt!901704)))))

(declare-fun b!2538705 () Bool)

(declare-fun head!5783 (List!29626) C!15280)

(assert (=> b!2538705 (= e!1605582 (= (head!5783 Nil!29526) (c!406099 (derivative!256 r!27340 lt!901704))))))

(declare-fun b!2538706 () Bool)

(assert (=> b!2538706 (= e!1605583 (= lt!901718 call!160211))))

(declare-fun b!2538707 () Bool)

(declare-fun res!1070351 () Bool)

(assert (=> b!2538707 (=> res!1070351 e!1605587)))

(assert (=> b!2538707 (= res!1070351 e!1605582)))

(declare-fun res!1070355 () Bool)

(assert (=> b!2538707 (=> (not res!1070355) (not e!1605582))))

(assert (=> b!2538707 (= res!1070355 lt!901718)))

(declare-fun b!2538708 () Bool)

(declare-fun res!1070352 () Bool)

(assert (=> b!2538708 (=> (not res!1070352) (not e!1605582))))

(declare-fun tail!4058 (List!29626) List!29626)

(assert (=> b!2538708 (= res!1070352 (isEmpty!16979 (tail!4058 Nil!29526)))))

(declare-fun b!2538709 () Bool)

(assert (=> b!2538709 (= e!1605586 (not (= (head!5783 Nil!29526) (c!406099 (derivative!256 r!27340 lt!901704)))))))

(declare-fun b!2538710 () Bool)

(assert (=> b!2538710 (= e!1605588 (matchR!3516 (derivativeStep!2130 (derivative!256 r!27340 lt!901704) (head!5783 Nil!29526)) (tail!4058 Nil!29526)))))

(declare-fun b!2538711 () Bool)

(assert (=> b!2538711 (= e!1605587 e!1605585)))

(declare-fun res!1070354 () Bool)

(assert (=> b!2538711 (=> (not res!1070354) (not e!1605585))))

(assert (=> b!2538711 (= res!1070354 (not lt!901718))))

(declare-fun b!2538712 () Bool)

(declare-fun res!1070358 () Bool)

(assert (=> b!2538712 (=> res!1070358 e!1605586)))

(assert (=> b!2538712 (= res!1070358 (not (isEmpty!16979 (tail!4058 Nil!29526))))))

(assert (= (and d!721070 c!406134) b!2538700))

(assert (= (and d!721070 (not c!406134)) b!2538710))

(assert (= (and d!721070 c!406135) b!2538706))

(assert (= (and d!721070 (not c!406135)) b!2538704))

(assert (= (and b!2538704 c!406133) b!2538701))

(assert (= (and b!2538704 (not c!406133)) b!2538699))

(assert (= (and b!2538699 (not res!1070353)) b!2538707))

(assert (= (and b!2538707 res!1070355) b!2538702))

(assert (= (and b!2538702 res!1070356) b!2538708))

(assert (= (and b!2538708 res!1070352) b!2538705))

(assert (= (and b!2538707 (not res!1070351)) b!2538711))

(assert (= (and b!2538711 res!1070354) b!2538703))

(assert (= (and b!2538703 (not res!1070357)) b!2538712))

(assert (= (and b!2538712 (not res!1070358)) b!2538709))

(assert (= (or b!2538706 b!2538702 b!2538703) bm!160206))

(declare-fun m!2886265 () Bool)

(assert (=> b!2538712 m!2886265))

(assert (=> b!2538712 m!2886265))

(declare-fun m!2886267 () Bool)

(assert (=> b!2538712 m!2886267))

(assert (=> b!2538708 m!2886265))

(assert (=> b!2538708 m!2886265))

(assert (=> b!2538708 m!2886267))

(declare-fun m!2886269 () Bool)

(assert (=> b!2538710 m!2886269))

(assert (=> b!2538710 m!2886193))

(assert (=> b!2538710 m!2886269))

(declare-fun m!2886271 () Bool)

(assert (=> b!2538710 m!2886271))

(assert (=> b!2538710 m!2886265))

(assert (=> b!2538710 m!2886271))

(assert (=> b!2538710 m!2886265))

(declare-fun m!2886273 () Bool)

(assert (=> b!2538710 m!2886273))

(assert (=> b!2538705 m!2886269))

(declare-fun m!2886275 () Bool)

(assert (=> d!721070 m!2886275))

(assert (=> d!721070 m!2886193))

(declare-fun m!2886277 () Bool)

(assert (=> d!721070 m!2886277))

(assert (=> bm!160206 m!2886275))

(assert (=> b!2538709 m!2886269))

(assert (=> b!2538700 m!2886193))

(declare-fun m!2886279 () Bool)

(assert (=> b!2538700 m!2886279))

(assert (=> b!2538585 d!721070))

(declare-fun d!721074 () Bool)

(assert (=> d!721074 (= (matchR!3516 r!27340 lt!901704) (matchR!3516 (derivative!256 r!27340 lt!901704) Nil!29526))))

(declare-fun lt!901721 () Unit!43323)

(declare-fun choose!15018 (Regex!7561 List!29626) Unit!43323)

(assert (=> d!721074 (= lt!901721 (choose!15018 r!27340 lt!901704))))

(assert (=> d!721074 (validRegex!3187 r!27340)))

(assert (=> d!721074 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!162 r!27340 lt!901704) lt!901721)))

(declare-fun bs!469337 () Bool)

(assert (= bs!469337 d!721074))

(assert (=> bs!469337 m!2886193))

(assert (=> bs!469337 m!2886207))

(assert (=> bs!469337 m!2886203))

(declare-fun m!2886281 () Bool)

(assert (=> bs!469337 m!2886281))

(assert (=> bs!469337 m!2886221))

(assert (=> bs!469337 m!2886193))

(assert (=> b!2538585 d!721074))

(declare-fun d!721076 () Bool)

(assert (=> d!721076 (= (matchR!3516 (regOne!15635 r!27340) lt!901704) (matchR!3516 (derivative!256 (regOne!15635 r!27340) lt!901704) Nil!29526))))

(declare-fun lt!901722 () Unit!43323)

(assert (=> d!721076 (= lt!901722 (choose!15018 (regOne!15635 r!27340) lt!901704))))

(assert (=> d!721076 (validRegex!3187 (regOne!15635 r!27340))))

(assert (=> d!721076 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!162 (regOne!15635 r!27340) lt!901704) lt!901722)))

(declare-fun bs!469338 () Bool)

(assert (= bs!469338 d!721076))

(assert (=> bs!469338 m!2886195))

(assert (=> bs!469338 m!2886197))

(assert (=> bs!469338 m!2886199))

(declare-fun m!2886283 () Bool)

(assert (=> bs!469338 m!2886283))

(assert (=> bs!469338 m!2886241))

(assert (=> bs!469338 m!2886195))

(assert (=> b!2538585 d!721076))

(declare-fun b!2538713 () Bool)

(declare-fun res!1070361 () Bool)

(declare-fun e!1605594 () Bool)

(assert (=> b!2538713 (=> res!1070361 e!1605594)))

(assert (=> b!2538713 (= res!1070361 (not ((_ is ElementMatch!7561) (regOne!15635 r!27340))))))

(declare-fun e!1605591 () Bool)

(assert (=> b!2538713 (= e!1605591 e!1605594)))

(declare-fun b!2538714 () Bool)

(declare-fun e!1605595 () Bool)

(assert (=> b!2538714 (= e!1605595 (nullable!2478 (regOne!15635 r!27340)))))

(declare-fun b!2538715 () Bool)

(declare-fun lt!901723 () Bool)

(assert (=> b!2538715 (= e!1605591 (not lt!901723))))

(declare-fun b!2538716 () Bool)

(declare-fun res!1070364 () Bool)

(declare-fun e!1605589 () Bool)

(assert (=> b!2538716 (=> (not res!1070364) (not e!1605589))))

(declare-fun call!160212 () Bool)

(assert (=> b!2538716 (= res!1070364 (not call!160212))))

(declare-fun b!2538717 () Bool)

(declare-fun e!1605592 () Bool)

(declare-fun e!1605593 () Bool)

(assert (=> b!2538717 (= e!1605592 e!1605593)))

(declare-fun res!1070365 () Bool)

(assert (=> b!2538717 (=> res!1070365 e!1605593)))

(assert (=> b!2538717 (= res!1070365 call!160212)))

(declare-fun bm!160207 () Bool)

(assert (=> bm!160207 (= call!160212 (isEmpty!16979 lt!901704))))

(declare-fun d!721078 () Bool)

(declare-fun e!1605590 () Bool)

(assert (=> d!721078 e!1605590))

(declare-fun c!406138 () Bool)

(assert (=> d!721078 (= c!406138 ((_ is EmptyExpr!7561) (regOne!15635 r!27340)))))

(assert (=> d!721078 (= lt!901723 e!1605595)))

(declare-fun c!406137 () Bool)

(assert (=> d!721078 (= c!406137 (isEmpty!16979 lt!901704))))

(assert (=> d!721078 (validRegex!3187 (regOne!15635 r!27340))))

(assert (=> d!721078 (= (matchR!3516 (regOne!15635 r!27340) lt!901704) lt!901723)))

(declare-fun b!2538718 () Bool)

(assert (=> b!2538718 (= e!1605590 e!1605591)))

(declare-fun c!406136 () Bool)

(assert (=> b!2538718 (= c!406136 ((_ is EmptyLang!7561) (regOne!15635 r!27340)))))

(declare-fun b!2538719 () Bool)

(assert (=> b!2538719 (= e!1605589 (= (head!5783 lt!901704) (c!406099 (regOne!15635 r!27340))))))

(declare-fun b!2538720 () Bool)

(assert (=> b!2538720 (= e!1605590 (= lt!901723 call!160212))))

(declare-fun b!2538721 () Bool)

(declare-fun res!1070359 () Bool)

(assert (=> b!2538721 (=> res!1070359 e!1605594)))

(assert (=> b!2538721 (= res!1070359 e!1605589)))

(declare-fun res!1070363 () Bool)

(assert (=> b!2538721 (=> (not res!1070363) (not e!1605589))))

(assert (=> b!2538721 (= res!1070363 lt!901723)))

(declare-fun b!2538722 () Bool)

(declare-fun res!1070360 () Bool)

(assert (=> b!2538722 (=> (not res!1070360) (not e!1605589))))

(assert (=> b!2538722 (= res!1070360 (isEmpty!16979 (tail!4058 lt!901704)))))

(declare-fun b!2538723 () Bool)

(assert (=> b!2538723 (= e!1605593 (not (= (head!5783 lt!901704) (c!406099 (regOne!15635 r!27340)))))))

(declare-fun b!2538724 () Bool)

(assert (=> b!2538724 (= e!1605595 (matchR!3516 (derivativeStep!2130 (regOne!15635 r!27340) (head!5783 lt!901704)) (tail!4058 lt!901704)))))

(declare-fun b!2538725 () Bool)

(assert (=> b!2538725 (= e!1605594 e!1605592)))

(declare-fun res!1070362 () Bool)

(assert (=> b!2538725 (=> (not res!1070362) (not e!1605592))))

(assert (=> b!2538725 (= res!1070362 (not lt!901723))))

(declare-fun b!2538726 () Bool)

(declare-fun res!1070366 () Bool)

(assert (=> b!2538726 (=> res!1070366 e!1605593)))

(assert (=> b!2538726 (= res!1070366 (not (isEmpty!16979 (tail!4058 lt!901704))))))

(assert (= (and d!721078 c!406137) b!2538714))

(assert (= (and d!721078 (not c!406137)) b!2538724))

(assert (= (and d!721078 c!406138) b!2538720))

(assert (= (and d!721078 (not c!406138)) b!2538718))

(assert (= (and b!2538718 c!406136) b!2538715))

(assert (= (and b!2538718 (not c!406136)) b!2538713))

(assert (= (and b!2538713 (not res!1070361)) b!2538721))

(assert (= (and b!2538721 res!1070363) b!2538716))

(assert (= (and b!2538716 res!1070364) b!2538722))

(assert (= (and b!2538722 res!1070360) b!2538719))

(assert (= (and b!2538721 (not res!1070359)) b!2538725))

(assert (= (and b!2538725 res!1070362) b!2538717))

(assert (= (and b!2538717 (not res!1070365)) b!2538726))

(assert (= (and b!2538726 (not res!1070366)) b!2538723))

(assert (= (or b!2538720 b!2538716 b!2538717) bm!160207))

(declare-fun m!2886285 () Bool)

(assert (=> b!2538726 m!2886285))

(assert (=> b!2538726 m!2886285))

(declare-fun m!2886287 () Bool)

(assert (=> b!2538726 m!2886287))

(assert (=> b!2538722 m!2886285))

(assert (=> b!2538722 m!2886285))

(assert (=> b!2538722 m!2886287))

(declare-fun m!2886289 () Bool)

(assert (=> b!2538724 m!2886289))

(assert (=> b!2538724 m!2886289))

(declare-fun m!2886291 () Bool)

(assert (=> b!2538724 m!2886291))

(assert (=> b!2538724 m!2886285))

(assert (=> b!2538724 m!2886291))

(assert (=> b!2538724 m!2886285))

(declare-fun m!2886293 () Bool)

(assert (=> b!2538724 m!2886293))

(assert (=> b!2538719 m!2886289))

(declare-fun m!2886295 () Bool)

(assert (=> d!721078 m!2886295))

(assert (=> d!721078 m!2886241))

(assert (=> bm!160207 m!2886295))

(assert (=> b!2538723 m!2886289))

(declare-fun m!2886297 () Bool)

(assert (=> b!2538714 m!2886297))

(assert (=> b!2538585 d!721078))

(declare-fun d!721080 () Bool)

(declare-fun lt!901726 () Regex!7561)

(assert (=> d!721080 (validRegex!3187 lt!901726)))

(declare-fun e!1605596 () Regex!7561)

(assert (=> d!721080 (= lt!901726 e!1605596)))

(declare-fun c!406139 () Bool)

(assert (=> d!721080 (= c!406139 ((_ is Cons!29526) lt!901704))))

(assert (=> d!721080 (validRegex!3187 (regOne!15635 r!27340))))

(assert (=> d!721080 (= (derivative!256 (regOne!15635 r!27340) lt!901704) lt!901726)))

(declare-fun b!2538727 () Bool)

(assert (=> b!2538727 (= e!1605596 (derivative!256 (derivativeStep!2130 (regOne!15635 r!27340) (h!34946 lt!901704)) (t!211325 lt!901704)))))

(declare-fun b!2538728 () Bool)

(assert (=> b!2538728 (= e!1605596 (regOne!15635 r!27340))))

(assert (= (and d!721080 c!406139) b!2538727))

(assert (= (and d!721080 (not c!406139)) b!2538728))

(declare-fun m!2886299 () Bool)

(assert (=> d!721080 m!2886299))

(assert (=> d!721080 m!2886241))

(declare-fun m!2886301 () Bool)

(assert (=> b!2538727 m!2886301))

(assert (=> b!2538727 m!2886301))

(declare-fun m!2886303 () Bool)

(assert (=> b!2538727 m!2886303))

(assert (=> b!2538585 d!721080))

(declare-fun b!2538729 () Bool)

(declare-fun res!1070369 () Bool)

(declare-fun e!1605602 () Bool)

(assert (=> b!2538729 (=> res!1070369 e!1605602)))

(assert (=> b!2538729 (= res!1070369 (not ((_ is ElementMatch!7561) r!27340)))))

(declare-fun e!1605599 () Bool)

(assert (=> b!2538729 (= e!1605599 e!1605602)))

(declare-fun b!2538730 () Bool)

(declare-fun e!1605603 () Bool)

(assert (=> b!2538730 (= e!1605603 (nullable!2478 r!27340))))

(declare-fun b!2538731 () Bool)

(declare-fun lt!901727 () Bool)

(assert (=> b!2538731 (= e!1605599 (not lt!901727))))

(declare-fun b!2538732 () Bool)

(declare-fun res!1070372 () Bool)

(declare-fun e!1605597 () Bool)

(assert (=> b!2538732 (=> (not res!1070372) (not e!1605597))))

(declare-fun call!160213 () Bool)

(assert (=> b!2538732 (= res!1070372 (not call!160213))))

(declare-fun b!2538733 () Bool)

(declare-fun e!1605600 () Bool)

(declare-fun e!1605601 () Bool)

(assert (=> b!2538733 (= e!1605600 e!1605601)))

(declare-fun res!1070373 () Bool)

(assert (=> b!2538733 (=> res!1070373 e!1605601)))

(assert (=> b!2538733 (= res!1070373 call!160213)))

(declare-fun bm!160208 () Bool)

(assert (=> bm!160208 (= call!160213 (isEmpty!16979 lt!901704))))

(declare-fun d!721082 () Bool)

(declare-fun e!1605598 () Bool)

(assert (=> d!721082 e!1605598))

(declare-fun c!406142 () Bool)

(assert (=> d!721082 (= c!406142 ((_ is EmptyExpr!7561) r!27340))))

(assert (=> d!721082 (= lt!901727 e!1605603)))

(declare-fun c!406141 () Bool)

(assert (=> d!721082 (= c!406141 (isEmpty!16979 lt!901704))))

(assert (=> d!721082 (validRegex!3187 r!27340)))

(assert (=> d!721082 (= (matchR!3516 r!27340 lt!901704) lt!901727)))

(declare-fun b!2538734 () Bool)

(assert (=> b!2538734 (= e!1605598 e!1605599)))

(declare-fun c!406140 () Bool)

(assert (=> b!2538734 (= c!406140 ((_ is EmptyLang!7561) r!27340))))

(declare-fun b!2538735 () Bool)

(assert (=> b!2538735 (= e!1605597 (= (head!5783 lt!901704) (c!406099 r!27340)))))

(declare-fun b!2538736 () Bool)

(assert (=> b!2538736 (= e!1605598 (= lt!901727 call!160213))))

(declare-fun b!2538737 () Bool)

(declare-fun res!1070367 () Bool)

(assert (=> b!2538737 (=> res!1070367 e!1605602)))

(assert (=> b!2538737 (= res!1070367 e!1605597)))

(declare-fun res!1070371 () Bool)

(assert (=> b!2538737 (=> (not res!1070371) (not e!1605597))))

(assert (=> b!2538737 (= res!1070371 lt!901727)))

(declare-fun b!2538738 () Bool)

(declare-fun res!1070368 () Bool)

(assert (=> b!2538738 (=> (not res!1070368) (not e!1605597))))

(assert (=> b!2538738 (= res!1070368 (isEmpty!16979 (tail!4058 lt!901704)))))

(declare-fun b!2538739 () Bool)

(assert (=> b!2538739 (= e!1605601 (not (= (head!5783 lt!901704) (c!406099 r!27340))))))

(declare-fun b!2538740 () Bool)

(assert (=> b!2538740 (= e!1605603 (matchR!3516 (derivativeStep!2130 r!27340 (head!5783 lt!901704)) (tail!4058 lt!901704)))))

(declare-fun b!2538741 () Bool)

(assert (=> b!2538741 (= e!1605602 e!1605600)))

(declare-fun res!1070370 () Bool)

(assert (=> b!2538741 (=> (not res!1070370) (not e!1605600))))

(assert (=> b!2538741 (= res!1070370 (not lt!901727))))

(declare-fun b!2538742 () Bool)

(declare-fun res!1070374 () Bool)

(assert (=> b!2538742 (=> res!1070374 e!1605601)))

(assert (=> b!2538742 (= res!1070374 (not (isEmpty!16979 (tail!4058 lt!901704))))))

(assert (= (and d!721082 c!406141) b!2538730))

(assert (= (and d!721082 (not c!406141)) b!2538740))

(assert (= (and d!721082 c!406142) b!2538736))

(assert (= (and d!721082 (not c!406142)) b!2538734))

(assert (= (and b!2538734 c!406140) b!2538731))

(assert (= (and b!2538734 (not c!406140)) b!2538729))

(assert (= (and b!2538729 (not res!1070369)) b!2538737))

(assert (= (and b!2538737 res!1070371) b!2538732))

(assert (= (and b!2538732 res!1070372) b!2538738))

(assert (= (and b!2538738 res!1070368) b!2538735))

(assert (= (and b!2538737 (not res!1070367)) b!2538741))

(assert (= (and b!2538741 res!1070370) b!2538733))

(assert (= (and b!2538733 (not res!1070373)) b!2538742))

(assert (= (and b!2538742 (not res!1070374)) b!2538739))

(assert (= (or b!2538736 b!2538732 b!2538733) bm!160208))

(assert (=> b!2538742 m!2886285))

(assert (=> b!2538742 m!2886285))

(assert (=> b!2538742 m!2886287))

(assert (=> b!2538738 m!2886285))

(assert (=> b!2538738 m!2886285))

(assert (=> b!2538738 m!2886287))

(assert (=> b!2538740 m!2886289))

(assert (=> b!2538740 m!2886289))

(declare-fun m!2886305 () Bool)

(assert (=> b!2538740 m!2886305))

(assert (=> b!2538740 m!2886285))

(assert (=> b!2538740 m!2886305))

(assert (=> b!2538740 m!2886285))

(declare-fun m!2886307 () Bool)

(assert (=> b!2538740 m!2886307))

(assert (=> b!2538735 m!2886289))

(assert (=> d!721082 m!2886295))

(assert (=> d!721082 m!2886221))

(assert (=> bm!160208 m!2886295))

(assert (=> b!2538739 m!2886289))

(declare-fun m!2886309 () Bool)

(assert (=> b!2538730 m!2886309))

(assert (=> b!2538585 d!721082))

(declare-fun b!2538743 () Bool)

(declare-fun res!1070377 () Bool)

(declare-fun e!1605609 () Bool)

(assert (=> b!2538743 (=> res!1070377 e!1605609)))

(assert (=> b!2538743 (= res!1070377 (not ((_ is ElementMatch!7561) (derivative!256 (regOne!15635 r!27340) lt!901704))))))

(declare-fun e!1605606 () Bool)

(assert (=> b!2538743 (= e!1605606 e!1605609)))

(declare-fun b!2538744 () Bool)

(declare-fun e!1605610 () Bool)

(assert (=> b!2538744 (= e!1605610 (nullable!2478 (derivative!256 (regOne!15635 r!27340) lt!901704)))))

(declare-fun b!2538745 () Bool)

(declare-fun lt!901728 () Bool)

(assert (=> b!2538745 (= e!1605606 (not lt!901728))))

(declare-fun b!2538746 () Bool)

(declare-fun res!1070380 () Bool)

(declare-fun e!1605604 () Bool)

(assert (=> b!2538746 (=> (not res!1070380) (not e!1605604))))

(declare-fun call!160214 () Bool)

(assert (=> b!2538746 (= res!1070380 (not call!160214))))

(declare-fun b!2538747 () Bool)

(declare-fun e!1605607 () Bool)

(declare-fun e!1605608 () Bool)

(assert (=> b!2538747 (= e!1605607 e!1605608)))

(declare-fun res!1070381 () Bool)

(assert (=> b!2538747 (=> res!1070381 e!1605608)))

(assert (=> b!2538747 (= res!1070381 call!160214)))

(declare-fun bm!160209 () Bool)

(assert (=> bm!160209 (= call!160214 (isEmpty!16979 Nil!29526))))

(declare-fun d!721084 () Bool)

(declare-fun e!1605605 () Bool)

(assert (=> d!721084 e!1605605))

(declare-fun c!406145 () Bool)

(assert (=> d!721084 (= c!406145 ((_ is EmptyExpr!7561) (derivative!256 (regOne!15635 r!27340) lt!901704)))))

(assert (=> d!721084 (= lt!901728 e!1605610)))

(declare-fun c!406144 () Bool)

(assert (=> d!721084 (= c!406144 (isEmpty!16979 Nil!29526))))

(assert (=> d!721084 (validRegex!3187 (derivative!256 (regOne!15635 r!27340) lt!901704))))

(assert (=> d!721084 (= (matchR!3516 (derivative!256 (regOne!15635 r!27340) lt!901704) Nil!29526) lt!901728)))

(declare-fun b!2538748 () Bool)

(assert (=> b!2538748 (= e!1605605 e!1605606)))

(declare-fun c!406143 () Bool)

(assert (=> b!2538748 (= c!406143 ((_ is EmptyLang!7561) (derivative!256 (regOne!15635 r!27340) lt!901704)))))

(declare-fun b!2538749 () Bool)

(assert (=> b!2538749 (= e!1605604 (= (head!5783 Nil!29526) (c!406099 (derivative!256 (regOne!15635 r!27340) lt!901704))))))

(declare-fun b!2538750 () Bool)

(assert (=> b!2538750 (= e!1605605 (= lt!901728 call!160214))))

(declare-fun b!2538751 () Bool)

(declare-fun res!1070375 () Bool)

(assert (=> b!2538751 (=> res!1070375 e!1605609)))

(assert (=> b!2538751 (= res!1070375 e!1605604)))

(declare-fun res!1070379 () Bool)

(assert (=> b!2538751 (=> (not res!1070379) (not e!1605604))))

(assert (=> b!2538751 (= res!1070379 lt!901728)))

(declare-fun b!2538752 () Bool)

(declare-fun res!1070376 () Bool)

(assert (=> b!2538752 (=> (not res!1070376) (not e!1605604))))

(assert (=> b!2538752 (= res!1070376 (isEmpty!16979 (tail!4058 Nil!29526)))))

(declare-fun b!2538753 () Bool)

(assert (=> b!2538753 (= e!1605608 (not (= (head!5783 Nil!29526) (c!406099 (derivative!256 (regOne!15635 r!27340) lt!901704)))))))

(declare-fun b!2538754 () Bool)

(assert (=> b!2538754 (= e!1605610 (matchR!3516 (derivativeStep!2130 (derivative!256 (regOne!15635 r!27340) lt!901704) (head!5783 Nil!29526)) (tail!4058 Nil!29526)))))

(declare-fun b!2538755 () Bool)

(assert (=> b!2538755 (= e!1605609 e!1605607)))

(declare-fun res!1070378 () Bool)

(assert (=> b!2538755 (=> (not res!1070378) (not e!1605607))))

(assert (=> b!2538755 (= res!1070378 (not lt!901728))))

(declare-fun b!2538756 () Bool)

(declare-fun res!1070382 () Bool)

(assert (=> b!2538756 (=> res!1070382 e!1605608)))

(assert (=> b!2538756 (= res!1070382 (not (isEmpty!16979 (tail!4058 Nil!29526))))))

(assert (= (and d!721084 c!406144) b!2538744))

(assert (= (and d!721084 (not c!406144)) b!2538754))

(assert (= (and d!721084 c!406145) b!2538750))

(assert (= (and d!721084 (not c!406145)) b!2538748))

(assert (= (and b!2538748 c!406143) b!2538745))

(assert (= (and b!2538748 (not c!406143)) b!2538743))

(assert (= (and b!2538743 (not res!1070377)) b!2538751))

(assert (= (and b!2538751 res!1070379) b!2538746))

(assert (= (and b!2538746 res!1070380) b!2538752))

(assert (= (and b!2538752 res!1070376) b!2538749))

(assert (= (and b!2538751 (not res!1070375)) b!2538755))

(assert (= (and b!2538755 res!1070378) b!2538747))

(assert (= (and b!2538747 (not res!1070381)) b!2538756))

(assert (= (and b!2538756 (not res!1070382)) b!2538753))

(assert (= (or b!2538750 b!2538746 b!2538747) bm!160209))

(assert (=> b!2538756 m!2886265))

(assert (=> b!2538756 m!2886265))

(assert (=> b!2538756 m!2886267))

(assert (=> b!2538752 m!2886265))

(assert (=> b!2538752 m!2886265))

(assert (=> b!2538752 m!2886267))

(assert (=> b!2538754 m!2886269))

(assert (=> b!2538754 m!2886195))

(assert (=> b!2538754 m!2886269))

(declare-fun m!2886313 () Bool)

(assert (=> b!2538754 m!2886313))

(assert (=> b!2538754 m!2886265))

(assert (=> b!2538754 m!2886313))

(assert (=> b!2538754 m!2886265))

(declare-fun m!2886315 () Bool)

(assert (=> b!2538754 m!2886315))

(assert (=> b!2538749 m!2886269))

(assert (=> d!721084 m!2886275))

(assert (=> d!721084 m!2886195))

(declare-fun m!2886317 () Bool)

(assert (=> d!721084 m!2886317))

(assert (=> bm!160209 m!2886275))

(assert (=> b!2538753 m!2886269))

(assert (=> b!2538744 m!2886195))

(declare-fun m!2886319 () Bool)

(assert (=> b!2538744 m!2886319))

(assert (=> b!2538585 d!721084))

(declare-fun d!721088 () Bool)

(declare-fun lt!901730 () Regex!7561)

(assert (=> d!721088 (validRegex!3187 lt!901730)))

(declare-fun e!1605611 () Regex!7561)

(assert (=> d!721088 (= lt!901730 e!1605611)))

(declare-fun c!406146 () Bool)

(assert (=> d!721088 (= c!406146 ((_ is Cons!29526) lt!901704))))

(assert (=> d!721088 (validRegex!3187 r!27340)))

(assert (=> d!721088 (= (derivative!256 r!27340 lt!901704) lt!901730)))

(declare-fun b!2538757 () Bool)

(assert (=> b!2538757 (= e!1605611 (derivative!256 (derivativeStep!2130 r!27340 (h!34946 lt!901704)) (t!211325 lt!901704)))))

(declare-fun b!2538758 () Bool)

(assert (=> b!2538758 (= e!1605611 r!27340)))

(assert (= (and d!721088 c!406146) b!2538757))

(assert (= (and d!721088 (not c!406146)) b!2538758))

(declare-fun m!2886321 () Bool)

(assert (=> d!721088 m!2886321))

(assert (=> d!721088 m!2886221))

(declare-fun m!2886323 () Bool)

(assert (=> b!2538757 m!2886323))

(assert (=> b!2538757 m!2886323))

(declare-fun m!2886325 () Bool)

(assert (=> b!2538757 m!2886325))

(assert (=> b!2538585 d!721088))

(declare-fun b!2538781 () Bool)

(declare-fun e!1605628 () Bool)

(declare-fun e!1605630 () Bool)

(assert (=> b!2538781 (= e!1605628 e!1605630)))

(declare-fun res!1070393 () Bool)

(assert (=> b!2538781 (= res!1070393 (not (nullable!2478 (reg!7890 (regTwo!15635 r!27340)))))))

(assert (=> b!2538781 (=> (not res!1070393) (not e!1605630))))

(declare-fun b!2538782 () Bool)

(declare-fun e!1605633 () Bool)

(declare-fun call!160222 () Bool)

(assert (=> b!2538782 (= e!1605633 call!160222)))

(declare-fun b!2538783 () Bool)

(declare-fun e!1605631 () Bool)

(assert (=> b!2538783 (= e!1605631 e!1605633)))

(declare-fun res!1070394 () Bool)

(assert (=> b!2538783 (=> (not res!1070394) (not e!1605633))))

(declare-fun call!160221 () Bool)

(assert (=> b!2538783 (= res!1070394 call!160221)))

(declare-fun b!2538784 () Bool)

(declare-fun e!1605629 () Bool)

(assert (=> b!2538784 (= e!1605629 e!1605628)))

(declare-fun c!406154 () Bool)

(assert (=> b!2538784 (= c!406154 ((_ is Star!7561) (regTwo!15635 r!27340)))))

(declare-fun b!2538785 () Bool)

(declare-fun e!1605634 () Bool)

(assert (=> b!2538785 (= e!1605634 call!160221)))

(declare-fun bm!160216 () Bool)

(declare-fun c!406153 () Bool)

(assert (=> bm!160216 (= call!160222 (validRegex!3187 (ite c!406153 (regOne!15635 (regTwo!15635 r!27340)) (regTwo!15634 (regTwo!15635 r!27340)))))))

(declare-fun b!2538786 () Bool)

(declare-fun call!160223 () Bool)

(assert (=> b!2538786 (= e!1605630 call!160223)))

(declare-fun bm!160217 () Bool)

(assert (=> bm!160217 (= call!160223 (validRegex!3187 (ite c!406154 (reg!7890 (regTwo!15635 r!27340)) (ite c!406153 (regTwo!15635 (regTwo!15635 r!27340)) (regOne!15634 (regTwo!15635 r!27340))))))))

(declare-fun b!2538787 () Bool)

(declare-fun res!1070397 () Bool)

(assert (=> b!2538787 (=> (not res!1070397) (not e!1605634))))

(assert (=> b!2538787 (= res!1070397 call!160222)))

(declare-fun e!1605632 () Bool)

(assert (=> b!2538787 (= e!1605632 e!1605634)))

(declare-fun b!2538788 () Bool)

(declare-fun res!1070395 () Bool)

(assert (=> b!2538788 (=> res!1070395 e!1605631)))

(assert (=> b!2538788 (= res!1070395 (not ((_ is Concat!12257) (regTwo!15635 r!27340))))))

(assert (=> b!2538788 (= e!1605632 e!1605631)))

(declare-fun b!2538789 () Bool)

(assert (=> b!2538789 (= e!1605628 e!1605632)))

(assert (=> b!2538789 (= c!406153 ((_ is Union!7561) (regTwo!15635 r!27340)))))

(declare-fun bm!160218 () Bool)

(assert (=> bm!160218 (= call!160221 call!160223)))

(declare-fun d!721090 () Bool)

(declare-fun res!1070396 () Bool)

(assert (=> d!721090 (=> res!1070396 e!1605629)))

(assert (=> d!721090 (= res!1070396 ((_ is ElementMatch!7561) (regTwo!15635 r!27340)))))

(assert (=> d!721090 (= (validRegex!3187 (regTwo!15635 r!27340)) e!1605629)))

(assert (= (and d!721090 (not res!1070396)) b!2538784))

(assert (= (and b!2538784 c!406154) b!2538781))

(assert (= (and b!2538784 (not c!406154)) b!2538789))

(assert (= (and b!2538781 res!1070393) b!2538786))

(assert (= (and b!2538789 c!406153) b!2538787))

(assert (= (and b!2538789 (not c!406153)) b!2538788))

(assert (= (and b!2538787 res!1070397) b!2538785))

(assert (= (and b!2538788 (not res!1070395)) b!2538783))

(assert (= (and b!2538783 res!1070394) b!2538782))

(assert (= (or b!2538787 b!2538782) bm!160216))

(assert (= (or b!2538785 b!2538783) bm!160218))

(assert (= (or b!2538786 bm!160218) bm!160217))

(declare-fun m!2886327 () Bool)

(assert (=> b!2538781 m!2886327))

(declare-fun m!2886331 () Bool)

(assert (=> bm!160216 m!2886331))

(declare-fun m!2886333 () Bool)

(assert (=> bm!160217 m!2886333))

(assert (=> b!2538585 d!721090))

(declare-fun b!2538792 () Bool)

(declare-fun e!1605636 () Bool)

(declare-fun e!1605638 () Bool)

(assert (=> b!2538792 (= e!1605636 e!1605638)))

(declare-fun res!1070398 () Bool)

(assert (=> b!2538792 (= res!1070398 (not (nullable!2478 (reg!7890 r!27340))))))

(assert (=> b!2538792 (=> (not res!1070398) (not e!1605638))))

(declare-fun b!2538793 () Bool)

(declare-fun e!1605641 () Bool)

(declare-fun call!160225 () Bool)

(assert (=> b!2538793 (= e!1605641 call!160225)))

(declare-fun b!2538794 () Bool)

(declare-fun e!1605639 () Bool)

(assert (=> b!2538794 (= e!1605639 e!1605641)))

(declare-fun res!1070399 () Bool)

(assert (=> b!2538794 (=> (not res!1070399) (not e!1605641))))

(declare-fun call!160224 () Bool)

(assert (=> b!2538794 (= res!1070399 call!160224)))

(declare-fun b!2538795 () Bool)

(declare-fun e!1605637 () Bool)

(assert (=> b!2538795 (= e!1605637 e!1605636)))

(declare-fun c!406157 () Bool)

(assert (=> b!2538795 (= c!406157 ((_ is Star!7561) r!27340))))

(declare-fun b!2538796 () Bool)

(declare-fun e!1605642 () Bool)

(assert (=> b!2538796 (= e!1605642 call!160224)))

(declare-fun bm!160219 () Bool)

(declare-fun c!406156 () Bool)

(assert (=> bm!160219 (= call!160225 (validRegex!3187 (ite c!406156 (regOne!15635 r!27340) (regTwo!15634 r!27340))))))

(declare-fun b!2538797 () Bool)

(declare-fun call!160226 () Bool)

(assert (=> b!2538797 (= e!1605638 call!160226)))

(declare-fun bm!160220 () Bool)

(assert (=> bm!160220 (= call!160226 (validRegex!3187 (ite c!406157 (reg!7890 r!27340) (ite c!406156 (regTwo!15635 r!27340) (regOne!15634 r!27340)))))))

(declare-fun b!2538798 () Bool)

(declare-fun res!1070402 () Bool)

(assert (=> b!2538798 (=> (not res!1070402) (not e!1605642))))

(assert (=> b!2538798 (= res!1070402 call!160225)))

(declare-fun e!1605640 () Bool)

(assert (=> b!2538798 (= e!1605640 e!1605642)))

(declare-fun b!2538799 () Bool)

(declare-fun res!1070400 () Bool)

(assert (=> b!2538799 (=> res!1070400 e!1605639)))

(assert (=> b!2538799 (= res!1070400 (not ((_ is Concat!12257) r!27340)))))

(assert (=> b!2538799 (= e!1605640 e!1605639)))

(declare-fun b!2538800 () Bool)

(assert (=> b!2538800 (= e!1605636 e!1605640)))

(assert (=> b!2538800 (= c!406156 ((_ is Union!7561) r!27340))))

(declare-fun bm!160221 () Bool)

(assert (=> bm!160221 (= call!160224 call!160226)))

(declare-fun d!721092 () Bool)

(declare-fun res!1070401 () Bool)

(assert (=> d!721092 (=> res!1070401 e!1605637)))

(assert (=> d!721092 (= res!1070401 ((_ is ElementMatch!7561) r!27340))))

(assert (=> d!721092 (= (validRegex!3187 r!27340) e!1605637)))

(assert (= (and d!721092 (not res!1070401)) b!2538795))

(assert (= (and b!2538795 c!406157) b!2538792))

(assert (= (and b!2538795 (not c!406157)) b!2538800))

(assert (= (and b!2538792 res!1070398) b!2538797))

(assert (= (and b!2538800 c!406156) b!2538798))

(assert (= (and b!2538800 (not c!406156)) b!2538799))

(assert (= (and b!2538798 res!1070402) b!2538796))

(assert (= (and b!2538799 (not res!1070400)) b!2538794))

(assert (= (and b!2538794 res!1070399) b!2538793))

(assert (= (or b!2538798 b!2538793) bm!160219))

(assert (= (or b!2538796 b!2538794) bm!160221))

(assert (= (or b!2538797 bm!160221) bm!160220))

(declare-fun m!2886339 () Bool)

(assert (=> b!2538792 m!2886339))

(declare-fun m!2886341 () Bool)

(assert (=> bm!160219 m!2886341))

(declare-fun m!2886343 () Bool)

(assert (=> bm!160220 m!2886343))

(assert (=> start!246744 d!721092))

(declare-fun d!721096 () Bool)

(assert (=> d!721096 (= (nullable!2478 (derivative!256 (derivativeStep!2130 (regTwo!15635 r!27340) c!14016) tl!4068)) (nullableFct!709 (derivative!256 (derivativeStep!2130 (regTwo!15635 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469340 () Bool)

(assert (= bs!469340 d!721096))

(assert (=> bs!469340 m!2886225))

(declare-fun m!2886351 () Bool)

(assert (=> bs!469340 m!2886351))

(assert (=> b!2538588 d!721096))

(declare-fun d!721098 () Bool)

(declare-fun lt!901735 () Regex!7561)

(assert (=> d!721098 (validRegex!3187 lt!901735)))

(declare-fun e!1605644 () Regex!7561)

(assert (=> d!721098 (= lt!901735 e!1605644)))

(declare-fun c!406159 () Bool)

(assert (=> d!721098 (= c!406159 ((_ is Cons!29526) tl!4068))))

(assert (=> d!721098 (validRegex!3187 (derivativeStep!2130 (regTwo!15635 r!27340) c!14016))))

(assert (=> d!721098 (= (derivative!256 (derivativeStep!2130 (regTwo!15635 r!27340) c!14016) tl!4068) lt!901735)))

(declare-fun b!2538803 () Bool)

(assert (=> b!2538803 (= e!1605644 (derivative!256 (derivativeStep!2130 (derivativeStep!2130 (regTwo!15635 r!27340) c!14016) (h!34946 tl!4068)) (t!211325 tl!4068)))))

(declare-fun b!2538804 () Bool)

(assert (=> b!2538804 (= e!1605644 (derivativeStep!2130 (regTwo!15635 r!27340) c!14016))))

(assert (= (and d!721098 c!406159) b!2538803))

(assert (= (and d!721098 (not c!406159)) b!2538804))

(declare-fun m!2886353 () Bool)

(assert (=> d!721098 m!2886353))

(assert (=> d!721098 m!2886223))

(declare-fun m!2886355 () Bool)

(assert (=> d!721098 m!2886355))

(assert (=> b!2538803 m!2886223))

(declare-fun m!2886357 () Bool)

(assert (=> b!2538803 m!2886357))

(assert (=> b!2538803 m!2886357))

(declare-fun m!2886359 () Bool)

(assert (=> b!2538803 m!2886359))

(assert (=> b!2538588 d!721098))

(declare-fun b!2538819 () Bool)

(declare-fun c!406163 () Bool)

(assert (=> b!2538819 (= c!406163 ((_ is Union!7561) (regTwo!15635 r!27340)))))

(declare-fun e!1605653 () Regex!7561)

(declare-fun e!1605655 () Regex!7561)

(assert (=> b!2538819 (= e!1605653 e!1605655)))

(declare-fun d!721102 () Bool)

(declare-fun lt!901737 () Regex!7561)

(assert (=> d!721102 (validRegex!3187 lt!901737)))

(declare-fun e!1605652 () Regex!7561)

(assert (=> d!721102 (= lt!901737 e!1605652)))

(declare-fun c!406164 () Bool)

(assert (=> d!721102 (= c!406164 (or ((_ is EmptyExpr!7561) (regTwo!15635 r!27340)) ((_ is EmptyLang!7561) (regTwo!15635 r!27340))))))

(assert (=> d!721102 (validRegex!3187 (regTwo!15635 r!27340))))

(assert (=> d!721102 (= (derivativeStep!2130 (regTwo!15635 r!27340) c!14016) lt!901737)))

(declare-fun bm!160223 () Bool)

(declare-fun call!160231 () Regex!7561)

(declare-fun call!160230 () Regex!7561)

(assert (=> bm!160223 (= call!160231 call!160230)))

(declare-fun c!406165 () Bool)

(declare-fun bm!160224 () Bool)

(declare-fun call!160229 () Regex!7561)

(assert (=> bm!160224 (= call!160229 (derivativeStep!2130 (ite c!406163 (regTwo!15635 (regTwo!15635 r!27340)) (ite c!406165 (reg!7890 (regTwo!15635 r!27340)) (regOne!15634 (regTwo!15635 r!27340)))) c!14016))))

(declare-fun b!2538820 () Bool)

(declare-fun e!1605654 () Regex!7561)

(assert (=> b!2538820 (= e!1605654 (Concat!12257 call!160230 (regTwo!15635 r!27340)))))

(declare-fun bm!160225 () Bool)

(assert (=> bm!160225 (= call!160230 call!160229)))

(declare-fun b!2538821 () Bool)

(declare-fun c!406167 () Bool)

(assert (=> b!2538821 (= c!406167 (nullable!2478 (regOne!15634 (regTwo!15635 r!27340))))))

(declare-fun e!1605656 () Regex!7561)

(assert (=> b!2538821 (= e!1605654 e!1605656)))

(declare-fun b!2538822 () Bool)

(declare-fun call!160228 () Regex!7561)

(assert (=> b!2538822 (= e!1605655 (Union!7561 call!160228 call!160229))))

(declare-fun b!2538823 () Bool)

(assert (=> b!2538823 (= e!1605652 EmptyLang!7561)))

(declare-fun b!2538824 () Bool)

(assert (=> b!2538824 (= e!1605656 (Union!7561 (Concat!12257 call!160231 (regTwo!15634 (regTwo!15635 r!27340))) EmptyLang!7561))))

(declare-fun b!2538825 () Bool)

(assert (=> b!2538825 (= e!1605656 (Union!7561 (Concat!12257 call!160231 (regTwo!15634 (regTwo!15635 r!27340))) call!160228))))

(declare-fun b!2538826 () Bool)

(assert (=> b!2538826 (= e!1605652 e!1605653)))

(declare-fun c!406166 () Bool)

(assert (=> b!2538826 (= c!406166 ((_ is ElementMatch!7561) (regTwo!15635 r!27340)))))

(declare-fun b!2538827 () Bool)

(assert (=> b!2538827 (= e!1605655 e!1605654)))

(assert (=> b!2538827 (= c!406165 ((_ is Star!7561) (regTwo!15635 r!27340)))))

(declare-fun bm!160226 () Bool)

(assert (=> bm!160226 (= call!160228 (derivativeStep!2130 (ite c!406163 (regOne!15635 (regTwo!15635 r!27340)) (regTwo!15634 (regTwo!15635 r!27340))) c!14016))))

(declare-fun b!2538828 () Bool)

(assert (=> b!2538828 (= e!1605653 (ite (= c!14016 (c!406099 (regTwo!15635 r!27340))) EmptyExpr!7561 EmptyLang!7561))))

(assert (= (and d!721102 c!406164) b!2538823))

(assert (= (and d!721102 (not c!406164)) b!2538826))

(assert (= (and b!2538826 c!406166) b!2538828))

(assert (= (and b!2538826 (not c!406166)) b!2538819))

(assert (= (and b!2538819 c!406163) b!2538822))

(assert (= (and b!2538819 (not c!406163)) b!2538827))

(assert (= (and b!2538827 c!406165) b!2538820))

(assert (= (and b!2538827 (not c!406165)) b!2538821))

(assert (= (and b!2538821 c!406167) b!2538825))

(assert (= (and b!2538821 (not c!406167)) b!2538824))

(assert (= (or b!2538825 b!2538824) bm!160223))

(assert (= (or b!2538820 bm!160223) bm!160225))

(assert (= (or b!2538822 bm!160225) bm!160224))

(assert (= (or b!2538822 b!2538825) bm!160226))

(declare-fun m!2886361 () Bool)

(assert (=> d!721102 m!2886361))

(assert (=> d!721102 m!2886205))

(declare-fun m!2886363 () Bool)

(assert (=> bm!160224 m!2886363))

(declare-fun m!2886365 () Bool)

(assert (=> b!2538821 m!2886365))

(declare-fun m!2886367 () Bool)

(assert (=> bm!160226 m!2886367))

(assert (=> b!2538588 d!721102))

(declare-fun d!721104 () Bool)

(assert (=> d!721104 (= (nullable!2478 (derivative!256 (derivativeStep!2130 r!27340 c!14016) tl!4068)) (nullableFct!709 (derivative!256 (derivativeStep!2130 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469341 () Bool)

(assert (= bs!469341 d!721104))

(assert (=> bs!469341 m!2886217))

(declare-fun m!2886369 () Bool)

(assert (=> bs!469341 m!2886369))

(assert (=> b!2538583 d!721104))

(declare-fun d!721106 () Bool)

(declare-fun lt!901738 () Regex!7561)

(assert (=> d!721106 (validRegex!3187 lt!901738)))

(declare-fun e!1605657 () Regex!7561)

(assert (=> d!721106 (= lt!901738 e!1605657)))

(declare-fun c!406168 () Bool)

(assert (=> d!721106 (= c!406168 ((_ is Cons!29526) tl!4068))))

(assert (=> d!721106 (validRegex!3187 (derivativeStep!2130 r!27340 c!14016))))

(assert (=> d!721106 (= (derivative!256 (derivativeStep!2130 r!27340 c!14016) tl!4068) lt!901738)))

(declare-fun b!2538829 () Bool)

(assert (=> b!2538829 (= e!1605657 (derivative!256 (derivativeStep!2130 (derivativeStep!2130 r!27340 c!14016) (h!34946 tl!4068)) (t!211325 tl!4068)))))

(declare-fun b!2538830 () Bool)

(assert (=> b!2538830 (= e!1605657 (derivativeStep!2130 r!27340 c!14016))))

(assert (= (and d!721106 c!406168) b!2538829))

(assert (= (and d!721106 (not c!406168)) b!2538830))

(declare-fun m!2886371 () Bool)

(assert (=> d!721106 m!2886371))

(assert (=> d!721106 m!2886215))

(declare-fun m!2886373 () Bool)

(assert (=> d!721106 m!2886373))

(assert (=> b!2538829 m!2886215))

(declare-fun m!2886375 () Bool)

(assert (=> b!2538829 m!2886375))

(assert (=> b!2538829 m!2886375))

(declare-fun m!2886377 () Bool)

(assert (=> b!2538829 m!2886377))

(assert (=> b!2538583 d!721106))

(declare-fun b!2538831 () Bool)

(declare-fun c!406169 () Bool)

(assert (=> b!2538831 (= c!406169 ((_ is Union!7561) r!27340))))

(declare-fun e!1605659 () Regex!7561)

(declare-fun e!1605661 () Regex!7561)

(assert (=> b!2538831 (= e!1605659 e!1605661)))

(declare-fun d!721108 () Bool)

(declare-fun lt!901739 () Regex!7561)

(assert (=> d!721108 (validRegex!3187 lt!901739)))

(declare-fun e!1605658 () Regex!7561)

(assert (=> d!721108 (= lt!901739 e!1605658)))

(declare-fun c!406170 () Bool)

(assert (=> d!721108 (= c!406170 (or ((_ is EmptyExpr!7561) r!27340) ((_ is EmptyLang!7561) r!27340)))))

(assert (=> d!721108 (validRegex!3187 r!27340)))

(assert (=> d!721108 (= (derivativeStep!2130 r!27340 c!14016) lt!901739)))

(declare-fun bm!160227 () Bool)

(declare-fun call!160235 () Regex!7561)

(declare-fun call!160234 () Regex!7561)

(assert (=> bm!160227 (= call!160235 call!160234)))

(declare-fun bm!160228 () Bool)

(declare-fun call!160233 () Regex!7561)

(declare-fun c!406171 () Bool)

(assert (=> bm!160228 (= call!160233 (derivativeStep!2130 (ite c!406169 (regTwo!15635 r!27340) (ite c!406171 (reg!7890 r!27340) (regOne!15634 r!27340))) c!14016))))

(declare-fun b!2538832 () Bool)

(declare-fun e!1605660 () Regex!7561)

(assert (=> b!2538832 (= e!1605660 (Concat!12257 call!160234 r!27340))))

(declare-fun bm!160229 () Bool)

(assert (=> bm!160229 (= call!160234 call!160233)))

(declare-fun b!2538833 () Bool)

(declare-fun c!406173 () Bool)

(assert (=> b!2538833 (= c!406173 (nullable!2478 (regOne!15634 r!27340)))))

(declare-fun e!1605662 () Regex!7561)

(assert (=> b!2538833 (= e!1605660 e!1605662)))

(declare-fun b!2538834 () Bool)

(declare-fun call!160232 () Regex!7561)

(assert (=> b!2538834 (= e!1605661 (Union!7561 call!160232 call!160233))))

(declare-fun b!2538835 () Bool)

(assert (=> b!2538835 (= e!1605658 EmptyLang!7561)))

(declare-fun b!2538836 () Bool)

(assert (=> b!2538836 (= e!1605662 (Union!7561 (Concat!12257 call!160235 (regTwo!15634 r!27340)) EmptyLang!7561))))

(declare-fun b!2538837 () Bool)

(assert (=> b!2538837 (= e!1605662 (Union!7561 (Concat!12257 call!160235 (regTwo!15634 r!27340)) call!160232))))

(declare-fun b!2538838 () Bool)

(assert (=> b!2538838 (= e!1605658 e!1605659)))

(declare-fun c!406172 () Bool)

(assert (=> b!2538838 (= c!406172 ((_ is ElementMatch!7561) r!27340))))

(declare-fun b!2538839 () Bool)

(assert (=> b!2538839 (= e!1605661 e!1605660)))

(assert (=> b!2538839 (= c!406171 ((_ is Star!7561) r!27340))))

(declare-fun bm!160230 () Bool)

(assert (=> bm!160230 (= call!160232 (derivativeStep!2130 (ite c!406169 (regOne!15635 r!27340) (regTwo!15634 r!27340)) c!14016))))

(declare-fun b!2538840 () Bool)

(assert (=> b!2538840 (= e!1605659 (ite (= c!14016 (c!406099 r!27340)) EmptyExpr!7561 EmptyLang!7561))))

(assert (= (and d!721108 c!406170) b!2538835))

(assert (= (and d!721108 (not c!406170)) b!2538838))

(assert (= (and b!2538838 c!406172) b!2538840))

(assert (= (and b!2538838 (not c!406172)) b!2538831))

(assert (= (and b!2538831 c!406169) b!2538834))

(assert (= (and b!2538831 (not c!406169)) b!2538839))

(assert (= (and b!2538839 c!406171) b!2538832))

(assert (= (and b!2538839 (not c!406171)) b!2538833))

(assert (= (and b!2538833 c!406173) b!2538837))

(assert (= (and b!2538833 (not c!406173)) b!2538836))

(assert (= (or b!2538837 b!2538836) bm!160227))

(assert (= (or b!2538832 bm!160227) bm!160229))

(assert (= (or b!2538834 bm!160229) bm!160228))

(assert (= (or b!2538834 b!2538837) bm!160230))

(declare-fun m!2886383 () Bool)

(assert (=> d!721108 m!2886383))

(assert (=> d!721108 m!2886221))

(declare-fun m!2886385 () Bool)

(assert (=> bm!160228 m!2886385))

(declare-fun m!2886387 () Bool)

(assert (=> b!2538833 m!2886387))

(declare-fun m!2886391 () Bool)

(assert (=> bm!160230 m!2886391))

(assert (=> b!2538583 d!721108))

(declare-fun b!2538845 () Bool)

(declare-fun e!1605665 () Bool)

(declare-fun tp!810973 () Bool)

(assert (=> b!2538845 (= e!1605665 (and tp_is_empty!12977 tp!810973))))

(assert (=> b!2538592 (= tp!810967 e!1605665)))

(assert (= (and b!2538592 ((_ is Cons!29526) (t!211325 tl!4068))) b!2538845))

(declare-fun b!2538859 () Bool)

(declare-fun e!1605668 () Bool)

(declare-fun tp!810987 () Bool)

(declare-fun tp!810984 () Bool)

(assert (=> b!2538859 (= e!1605668 (and tp!810987 tp!810984))))

(declare-fun b!2538856 () Bool)

(assert (=> b!2538856 (= e!1605668 tp_is_empty!12977)))

(declare-fun b!2538857 () Bool)

(declare-fun tp!810985 () Bool)

(declare-fun tp!810986 () Bool)

(assert (=> b!2538857 (= e!1605668 (and tp!810985 tp!810986))))

(declare-fun b!2538858 () Bool)

(declare-fun tp!810988 () Bool)

(assert (=> b!2538858 (= e!1605668 tp!810988)))

(assert (=> b!2538586 (= tp!810966 e!1605668)))

(assert (= (and b!2538586 ((_ is ElementMatch!7561) (regOne!15634 r!27340))) b!2538856))

(assert (= (and b!2538586 ((_ is Concat!12257) (regOne!15634 r!27340))) b!2538857))

(assert (= (and b!2538586 ((_ is Star!7561) (regOne!15634 r!27340))) b!2538858))

(assert (= (and b!2538586 ((_ is Union!7561) (regOne!15634 r!27340))) b!2538859))

(declare-fun b!2538863 () Bool)

(declare-fun e!1605669 () Bool)

(declare-fun tp!810992 () Bool)

(declare-fun tp!810989 () Bool)

(assert (=> b!2538863 (= e!1605669 (and tp!810992 tp!810989))))

(declare-fun b!2538860 () Bool)

(assert (=> b!2538860 (= e!1605669 tp_is_empty!12977)))

(declare-fun b!2538861 () Bool)

(declare-fun tp!810990 () Bool)

(declare-fun tp!810991 () Bool)

(assert (=> b!2538861 (= e!1605669 (and tp!810990 tp!810991))))

(declare-fun b!2538862 () Bool)

(declare-fun tp!810993 () Bool)

(assert (=> b!2538862 (= e!1605669 tp!810993)))

(assert (=> b!2538586 (= tp!810970 e!1605669)))

(assert (= (and b!2538586 ((_ is ElementMatch!7561) (regTwo!15634 r!27340))) b!2538860))

(assert (= (and b!2538586 ((_ is Concat!12257) (regTwo!15634 r!27340))) b!2538861))

(assert (= (and b!2538586 ((_ is Star!7561) (regTwo!15634 r!27340))) b!2538862))

(assert (= (and b!2538586 ((_ is Union!7561) (regTwo!15634 r!27340))) b!2538863))

(declare-fun b!2538867 () Bool)

(declare-fun e!1605670 () Bool)

(declare-fun tp!810997 () Bool)

(declare-fun tp!810994 () Bool)

(assert (=> b!2538867 (= e!1605670 (and tp!810997 tp!810994))))

(declare-fun b!2538864 () Bool)

(assert (=> b!2538864 (= e!1605670 tp_is_empty!12977)))

(declare-fun b!2538865 () Bool)

(declare-fun tp!810995 () Bool)

(declare-fun tp!810996 () Bool)

(assert (=> b!2538865 (= e!1605670 (and tp!810995 tp!810996))))

(declare-fun b!2538866 () Bool)

(declare-fun tp!810998 () Bool)

(assert (=> b!2538866 (= e!1605670 tp!810998)))

(assert (=> b!2538584 (= tp!810968 e!1605670)))

(assert (= (and b!2538584 ((_ is ElementMatch!7561) (regOne!15635 r!27340))) b!2538864))

(assert (= (and b!2538584 ((_ is Concat!12257) (regOne!15635 r!27340))) b!2538865))

(assert (= (and b!2538584 ((_ is Star!7561) (regOne!15635 r!27340))) b!2538866))

(assert (= (and b!2538584 ((_ is Union!7561) (regOne!15635 r!27340))) b!2538867))

(declare-fun b!2538871 () Bool)

(declare-fun e!1605671 () Bool)

(declare-fun tp!811002 () Bool)

(declare-fun tp!810999 () Bool)

(assert (=> b!2538871 (= e!1605671 (and tp!811002 tp!810999))))

(declare-fun b!2538868 () Bool)

(assert (=> b!2538868 (= e!1605671 tp_is_empty!12977)))

(declare-fun b!2538869 () Bool)

(declare-fun tp!811000 () Bool)

(declare-fun tp!811001 () Bool)

(assert (=> b!2538869 (= e!1605671 (and tp!811000 tp!811001))))

(declare-fun b!2538870 () Bool)

(declare-fun tp!811003 () Bool)

(assert (=> b!2538870 (= e!1605671 tp!811003)))

(assert (=> b!2538584 (= tp!810969 e!1605671)))

(assert (= (and b!2538584 ((_ is ElementMatch!7561) (regTwo!15635 r!27340))) b!2538868))

(assert (= (and b!2538584 ((_ is Concat!12257) (regTwo!15635 r!27340))) b!2538869))

(assert (= (and b!2538584 ((_ is Star!7561) (regTwo!15635 r!27340))) b!2538870))

(assert (= (and b!2538584 ((_ is Union!7561) (regTwo!15635 r!27340))) b!2538871))

(declare-fun b!2538875 () Bool)

(declare-fun e!1605672 () Bool)

(declare-fun tp!811007 () Bool)

(declare-fun tp!811004 () Bool)

(assert (=> b!2538875 (= e!1605672 (and tp!811007 tp!811004))))

(declare-fun b!2538872 () Bool)

(assert (=> b!2538872 (= e!1605672 tp_is_empty!12977)))

(declare-fun b!2538873 () Bool)

(declare-fun tp!811005 () Bool)

(declare-fun tp!811006 () Bool)

(assert (=> b!2538873 (= e!1605672 (and tp!811005 tp!811006))))

(declare-fun b!2538874 () Bool)

(declare-fun tp!811008 () Bool)

(assert (=> b!2538874 (= e!1605672 tp!811008)))

(assert (=> b!2538589 (= tp!810965 e!1605672)))

(assert (= (and b!2538589 ((_ is ElementMatch!7561) (reg!7890 r!27340))) b!2538872))

(assert (= (and b!2538589 ((_ is Concat!12257) (reg!7890 r!27340))) b!2538873))

(assert (= (and b!2538589 ((_ is Star!7561) (reg!7890 r!27340))) b!2538874))

(assert (= (and b!2538589 ((_ is Union!7561) (reg!7890 r!27340))) b!2538875))

(check-sat (not b!2538861) (not b!2538871) (not b!2538712) (not b!2538869) (not b!2538727) (not b!2538740) (not b!2538752) (not b!2538597) (not d!721062) (not b!2538722) (not b!2538744) (not b!2538833) (not bm!160200) (not d!721082) (not b!2538757) (not bm!160219) (not d!721088) (not b!2538866) (not d!721074) (not b!2538865) (not d!721098) (not b!2538858) (not b!2538867) (not b!2538735) (not d!721080) (not b!2538726) (not d!721076) (not bm!160230) (not d!721070) tp_is_empty!12977 (not b!2538875) (not d!721096) (not d!721068) (not b!2538873) (not d!721078) (not bm!160217) (not d!721066) (not b!2538749) (not bm!160208) (not b!2538708) (not b!2538709) (not bm!160220) (not b!2538719) (not b!2538781) (not b!2538792) (not d!721104) (not b!2538714) (not d!721102) (not b!2538739) (not bm!160198) (not b!2538803) (not b!2538870) (not b!2538710) (not b!2538829) (not b!2538821) (not bm!160207) (not b!2538859) (not bm!160209) (not b!2538754) (not b!2538857) (not b!2538862) (not bm!160206) (not b!2538845) (not d!721084) (not d!721108) (not b!2538724) (not b!2538738) (not bm!160224) (not b!2538723) (not b!2538742) (not bm!160216) (not b!2538700) (not b!2538874) (not b!2538753) (not b!2538730) (not bm!160228) (not b!2538649) (not b!2538756) (not b!2538705) (not b!2538863) (not bm!160226) (not d!721106))
(check-sat)
