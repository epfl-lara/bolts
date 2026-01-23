; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736830 () Bool)

(assert start!736830)

(declare-fun b!7694641 () Bool)

(assert (=> b!7694641 true))

(assert (=> b!7694641 true))

(declare-fun bs!1956539 () Bool)

(declare-fun b!7694631 () Bool)

(assert (= bs!1956539 (and b!7694631 b!7694641)))

(declare-fun lambda!470481 () Int)

(declare-fun lambda!470480 () Int)

(assert (=> bs!1956539 (not (= lambda!470481 lambda!470480))))

(assert (=> b!7694631 true))

(assert (=> b!7694631 true))

(declare-fun b!7694630 () Bool)

(declare-datatypes ((Unit!168072 0))(
  ( (Unit!168073) )
))
(declare-fun e!4567196 () Unit!168072)

(declare-fun Unit!168074 () Unit!168072)

(assert (=> b!7694630 (= e!4567196 Unit!168074)))

(declare-fun lt!2664300 () Unit!168072)

(declare-datatypes ((C!41366 0))(
  ( (C!41367 (val!31123 Int)) )
))
(declare-datatypes ((Regex!20520 0))(
  ( (ElementMatch!20520 (c!1418044 C!41366)) (Concat!29365 (regOne!41552 Regex!20520) (regTwo!41552 Regex!20520)) (EmptyExpr!20520) (Star!20520 (reg!20849 Regex!20520)) (EmptyLang!20520) (Union!20520 (regOne!41553 Regex!20520) (regTwo!41553 Regex!20520)) )
))
(declare-fun r!14126 () Regex!20520)

(declare-datatypes ((List!73371 0))(
  ( (Nil!73247) (Cons!73247 (h!79695 C!41366) (t!388106 List!73371)) )
))
(declare-fun s!9605 () List!73371)

(declare-fun lemmaStarAppConcat!35 (Regex!20520 List!73371) Unit!168072)

(assert (=> b!7694630 (= lt!2664300 (lemmaStarAppConcat!35 (reg!20849 r!14126) s!9605))))

(declare-fun matchR!10016 (Regex!20520 List!73371) Bool)

(assert (=> b!7694630 (matchR!10016 (Concat!29365 (reg!20849 r!14126) r!14126) s!9605)))

(declare-fun lt!2664296 () Unit!168072)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!293 (Regex!20520 Regex!20520 List!73371) Unit!168072)

(assert (=> b!7694630 (= lt!2664296 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!293 (reg!20849 r!14126) r!14126 s!9605))))

(assert (=> b!7694630 false))

(declare-fun res!3073711 () Bool)

(declare-fun e!4567195 () Bool)

(assert (=> b!7694631 (=> res!3073711 e!4567195)))

(declare-fun Exists!4645 (Int) Bool)

(assert (=> b!7694631 (= res!3073711 (not (Exists!4645 lambda!470481)))))

(declare-fun b!7694632 () Bool)

(declare-fun e!4567194 () Bool)

(declare-fun tp_is_empty!51395 () Bool)

(assert (=> b!7694632 (= e!4567194 tp_is_empty!51395)))

(declare-fun b!7694633 () Bool)

(declare-fun tp!2254124 () Bool)

(assert (=> b!7694633 (= e!4567194 tp!2254124)))

(declare-fun b!7694634 () Bool)

(declare-fun res!3073714 () Bool)

(declare-fun e!4567198 () Bool)

(assert (=> b!7694634 (=> (not res!3073714) (not e!4567198))))

(assert (=> b!7694634 (= res!3073714 (and (not (is-EmptyExpr!20520 r!14126)) (not (is-EmptyLang!20520 r!14126)) (not (is-ElementMatch!20520 r!14126)) (not (is-Union!20520 r!14126)) (is-Star!20520 r!14126)))))

(declare-fun b!7694636 () Bool)

(declare-fun e!4567197 () Bool)

(assert (=> b!7694636 (= e!4567197 e!4567195)))

(declare-fun res!3073715 () Bool)

(assert (=> b!7694636 (=> res!3073715 e!4567195)))

(assert (=> b!7694636 (= res!3073715 (Exists!4645 lambda!470480))))

(declare-fun lt!2664297 () Unit!168072)

(assert (=> b!7694636 (= lt!2664297 e!4567196)))

(declare-fun c!1418043 () Bool)

(assert (=> b!7694636 (= c!1418043 (matchR!10016 r!14126 s!9605))))

(declare-fun b!7694637 () Bool)

(declare-fun Unit!168075 () Unit!168072)

(assert (=> b!7694637 (= e!4567196 Unit!168075)))

(declare-fun b!7694638 () Bool)

(declare-fun tp!2254126 () Bool)

(declare-fun tp!2254127 () Bool)

(assert (=> b!7694638 (= e!4567194 (and tp!2254126 tp!2254127))))

(declare-fun res!3073712 () Bool)

(assert (=> start!736830 (=> (not res!3073712) (not e!4567198))))

(declare-fun validRegex!10938 (Regex!20520) Bool)

(assert (=> start!736830 (= res!3073712 (validRegex!10938 r!14126))))

(assert (=> start!736830 e!4567198))

(assert (=> start!736830 e!4567194))

(declare-fun e!4567199 () Bool)

(assert (=> start!736830 e!4567199))

(declare-fun b!7694635 () Bool)

(declare-fun res!3073713 () Bool)

(assert (=> b!7694635 (=> (not res!3073713) (not e!4567198))))

(declare-fun isEmpty!41893 (List!73371) Bool)

(assert (=> b!7694635 (= res!3073713 (not (isEmpty!41893 s!9605)))))

(declare-fun b!7694639 () Bool)

(declare-fun tp!2254122 () Bool)

(declare-fun tp!2254123 () Bool)

(assert (=> b!7694639 (= e!4567194 (and tp!2254122 tp!2254123))))

(declare-fun b!7694640 () Bool)

(assert (=> b!7694640 (= e!4567195 (validRegex!10938 (reg!20849 r!14126)))))

(declare-datatypes ((tuple2!69502 0))(
  ( (tuple2!69503 (_1!38054 List!73371) (_2!38054 List!73371)) )
))
(declare-fun lt!2664299 () tuple2!69502)

(declare-fun pickWitness!499 (Int) tuple2!69502)

(assert (=> b!7694640 (= lt!2664299 (pickWitness!499 lambda!470481))))

(assert (=> b!7694641 (= e!4567198 (not e!4567197))))

(declare-fun res!3073716 () Bool)

(assert (=> b!7694641 (=> res!3073716 e!4567197)))

(declare-fun lt!2664295 () Bool)

(assert (=> b!7694641 (= res!3073716 lt!2664295)))

(assert (=> b!7694641 (= lt!2664295 (Exists!4645 lambda!470480))))

(declare-datatypes ((Option!17545 0))(
  ( (None!17544) (Some!17544 (v!54679 tuple2!69502)) )
))
(declare-fun isDefined!14161 (Option!17545) Bool)

(declare-fun findConcatSeparation!3575 (Regex!20520 Regex!20520 List!73371 List!73371 List!73371) Option!17545)

(assert (=> b!7694641 (= lt!2664295 (isDefined!14161 (findConcatSeparation!3575 (reg!20849 r!14126) r!14126 Nil!73247 s!9605 s!9605)))))

(declare-fun lt!2664298 () Unit!168072)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3333 (Regex!20520 Regex!20520 List!73371) Unit!168072)

(assert (=> b!7694641 (= lt!2664298 (lemmaFindConcatSeparationEquivalentToExists!3333 (reg!20849 r!14126) r!14126 s!9605))))

(declare-fun b!7694642 () Bool)

(declare-fun tp!2254125 () Bool)

(assert (=> b!7694642 (= e!4567199 (and tp_is_empty!51395 tp!2254125))))

(assert (= (and start!736830 res!3073712) b!7694634))

(assert (= (and b!7694634 res!3073714) b!7694635))

(assert (= (and b!7694635 res!3073713) b!7694641))

(assert (= (and b!7694641 (not res!3073716)) b!7694636))

(assert (= (and b!7694636 c!1418043) b!7694630))

(assert (= (and b!7694636 (not c!1418043)) b!7694637))

(assert (= (and b!7694636 (not res!3073715)) b!7694631))

(assert (= (and b!7694631 (not res!3073711)) b!7694640))

(assert (= (and start!736830 (is-ElementMatch!20520 r!14126)) b!7694632))

(assert (= (and start!736830 (is-Concat!29365 r!14126)) b!7694638))

(assert (= (and start!736830 (is-Star!20520 r!14126)) b!7694633))

(assert (= (and start!736830 (is-Union!20520 r!14126)) b!7694639))

(assert (= (and start!736830 (is-Cons!73247 s!9605)) b!7694642))

(declare-fun m!8187582 () Bool)

(assert (=> start!736830 m!8187582))

(declare-fun m!8187584 () Bool)

(assert (=> b!7694636 m!8187584))

(declare-fun m!8187586 () Bool)

(assert (=> b!7694636 m!8187586))

(declare-fun m!8187588 () Bool)

(assert (=> b!7694635 m!8187588))

(assert (=> b!7694641 m!8187584))

(declare-fun m!8187590 () Bool)

(assert (=> b!7694641 m!8187590))

(assert (=> b!7694641 m!8187590))

(declare-fun m!8187592 () Bool)

(assert (=> b!7694641 m!8187592))

(declare-fun m!8187594 () Bool)

(assert (=> b!7694641 m!8187594))

(declare-fun m!8187596 () Bool)

(assert (=> b!7694640 m!8187596))

(declare-fun m!8187598 () Bool)

(assert (=> b!7694640 m!8187598))

(declare-fun m!8187600 () Bool)

(assert (=> b!7694631 m!8187600))

(declare-fun m!8187602 () Bool)

(assert (=> b!7694630 m!8187602))

(declare-fun m!8187604 () Bool)

(assert (=> b!7694630 m!8187604))

(declare-fun m!8187606 () Bool)

(assert (=> b!7694630 m!8187606))

(push 1)

(assert (not start!736830))

(assert (not b!7694642))

(assert (not b!7694630))

(assert (not b!7694641))

(assert (not b!7694638))

(assert (not b!7694639))

(assert (not b!7694640))

(assert tp_is_empty!51395)

(assert (not b!7694636))

(assert (not b!7694631))

(assert (not b!7694633))

(assert (not b!7694635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2333522 () Bool)

(declare-fun res!3073778 () Bool)

(declare-fun e!4567254 () Bool)

(assert (=> d!2333522 (=> res!3073778 e!4567254)))

(assert (=> d!2333522 (= res!3073778 (is-ElementMatch!20520 r!14126))))

(assert (=> d!2333522 (= (validRegex!10938 r!14126) e!4567254)))

(declare-fun b!7694746 () Bool)

(declare-fun e!4567257 () Bool)

(declare-fun e!4567259 () Bool)

(assert (=> b!7694746 (= e!4567257 e!4567259)))

(declare-fun c!1418058 () Bool)

(assert (=> b!7694746 (= c!1418058 (is-Union!20520 r!14126))))

(declare-fun b!7694747 () Bool)

(declare-fun e!4567255 () Bool)

(declare-fun call!709667 () Bool)

(assert (=> b!7694747 (= e!4567255 call!709667)))

(declare-fun bm!709662 () Bool)

(declare-fun call!709668 () Bool)

(assert (=> bm!709662 (= call!709668 (validRegex!10938 (ite c!1418058 (regTwo!41553 r!14126) (regTwo!41552 r!14126))))))

(declare-fun b!7694748 () Bool)

(assert (=> b!7694748 (= e!4567254 e!4567257)))

(declare-fun c!1418057 () Bool)

(assert (=> b!7694748 (= c!1418057 (is-Star!20520 r!14126))))

(declare-fun bm!709663 () Bool)

(assert (=> bm!709663 (= call!709667 (validRegex!10938 (ite c!1418057 (reg!20849 r!14126) (ite c!1418058 (regOne!41553 r!14126) (regOne!41552 r!14126)))))))

(declare-fun b!7694749 () Bool)

(declare-fun res!3073776 () Bool)

(declare-fun e!4567256 () Bool)

(assert (=> b!7694749 (=> (not res!3073776) (not e!4567256))))

(declare-fun call!709669 () Bool)

(assert (=> b!7694749 (= res!3073776 call!709669)))

(assert (=> b!7694749 (= e!4567259 e!4567256)))

(declare-fun bm!709664 () Bool)

(assert (=> bm!709664 (= call!709669 call!709667)))

(declare-fun b!7694750 () Bool)

(assert (=> b!7694750 (= e!4567256 call!709668)))

(declare-fun b!7694751 () Bool)

(declare-fun e!4567260 () Bool)

(declare-fun e!4567258 () Bool)

(assert (=> b!7694751 (= e!4567260 e!4567258)))

(declare-fun res!3073779 () Bool)

(assert (=> b!7694751 (=> (not res!3073779) (not e!4567258))))

(assert (=> b!7694751 (= res!3073779 call!709669)))

(declare-fun b!7694752 () Bool)

(declare-fun res!3073777 () Bool)

(assert (=> b!7694752 (=> res!3073777 e!4567260)))

(assert (=> b!7694752 (= res!3073777 (not (is-Concat!29365 r!14126)))))

(assert (=> b!7694752 (= e!4567259 e!4567260)))

(declare-fun b!7694753 () Bool)

(assert (=> b!7694753 (= e!4567258 call!709668)))

(declare-fun b!7694754 () Bool)

(assert (=> b!7694754 (= e!4567257 e!4567255)))

(declare-fun res!3073775 () Bool)

(declare-fun nullable!9001 (Regex!20520) Bool)

(assert (=> b!7694754 (= res!3073775 (not (nullable!9001 (reg!20849 r!14126))))))

(assert (=> b!7694754 (=> (not res!3073775) (not e!4567255))))

(assert (= (and d!2333522 (not res!3073778)) b!7694748))

(assert (= (and b!7694748 c!1418057) b!7694754))

(assert (= (and b!7694748 (not c!1418057)) b!7694746))

(assert (= (and b!7694754 res!3073775) b!7694747))

(assert (= (and b!7694746 c!1418058) b!7694749))

(assert (= (and b!7694746 (not c!1418058)) b!7694752))

(assert (= (and b!7694749 res!3073776) b!7694750))

(assert (= (and b!7694752 (not res!3073777)) b!7694751))

(assert (= (and b!7694751 res!3073779) b!7694753))

(assert (= (or b!7694749 b!7694751) bm!709664))

(assert (= (or b!7694750 b!7694753) bm!709662))

(assert (= (or b!7694747 bm!709664) bm!709663))

(declare-fun m!8187634 () Bool)

(assert (=> bm!709662 m!8187634))

(declare-fun m!8187636 () Bool)

(assert (=> bm!709663 m!8187636))

(declare-fun m!8187638 () Bool)

(assert (=> b!7694754 m!8187638))

(assert (=> start!736830 d!2333522))

(declare-fun d!2333524 () Bool)

(declare-fun choose!59147 (Int) Bool)

(assert (=> d!2333524 (= (Exists!4645 lambda!470481) (choose!59147 lambda!470481))))

(declare-fun bs!1956541 () Bool)

(assert (= bs!1956541 d!2333524))

(declare-fun m!8187640 () Bool)

(assert (=> bs!1956541 m!8187640))

(assert (=> b!7694631 d!2333524))

(declare-fun d!2333526 () Bool)

(assert (=> d!2333526 (= (Exists!4645 lambda!470480) (choose!59147 lambda!470480))))

(declare-fun bs!1956542 () Bool)

(assert (= bs!1956542 d!2333526))

(declare-fun m!8187642 () Bool)

(assert (=> bs!1956542 m!8187642))

(assert (=> b!7694636 d!2333526))

(declare-fun b!7694792 () Bool)

(declare-fun res!3073804 () Bool)

(declare-fun e!4567285 () Bool)

(assert (=> b!7694792 (=> (not res!3073804) (not e!4567285))))

(declare-fun tail!15306 (List!73371) List!73371)

(assert (=> b!7694792 (= res!3073804 (isEmpty!41893 (tail!15306 s!9605)))))

(declare-fun b!7694793 () Bool)

(declare-fun e!4567284 () Bool)

(declare-fun e!4567288 () Bool)

(assert (=> b!7694793 (= e!4567284 e!4567288)))

(declare-fun res!3073808 () Bool)

(assert (=> b!7694793 (=> res!3073808 e!4567288)))

(declare-fun call!709681 () Bool)

(assert (=> b!7694793 (= res!3073808 call!709681)))

(declare-fun b!7694794 () Bool)

(declare-fun e!4567282 () Bool)

(declare-fun lt!2664321 () Bool)

(assert (=> b!7694794 (= e!4567282 (not lt!2664321))))

(declare-fun b!7694795 () Bool)

(declare-fun e!4567283 () Bool)

(assert (=> b!7694795 (= e!4567283 e!4567282)))

(declare-fun c!1418067 () Bool)

(assert (=> b!7694795 (= c!1418067 (is-EmptyLang!20520 r!14126))))

(declare-fun bm!709676 () Bool)

(assert (=> bm!709676 (= call!709681 (isEmpty!41893 s!9605))))

(declare-fun b!7694796 () Bool)

(declare-fun head!15766 (List!73371) C!41366)

(assert (=> b!7694796 (= e!4567285 (= (head!15766 s!9605) (c!1418044 r!14126)))))

(declare-fun b!7694798 () Bool)

(declare-fun res!3073803 () Bool)

(assert (=> b!7694798 (=> (not res!3073803) (not e!4567285))))

(assert (=> b!7694798 (= res!3073803 (not call!709681))))

(declare-fun b!7694799 () Bool)

(assert (=> b!7694799 (= e!4567288 (not (= (head!15766 s!9605) (c!1418044 r!14126))))))

(declare-fun b!7694800 () Bool)

(declare-fun res!3073802 () Bool)

(declare-fun e!4567286 () Bool)

(assert (=> b!7694800 (=> res!3073802 e!4567286)))

(assert (=> b!7694800 (= res!3073802 (not (is-ElementMatch!20520 r!14126)))))

(assert (=> b!7694800 (= e!4567282 e!4567286)))

(declare-fun b!7694801 () Bool)

(declare-fun res!3073805 () Bool)

(assert (=> b!7694801 (=> res!3073805 e!4567288)))

(assert (=> b!7694801 (= res!3073805 (not (isEmpty!41893 (tail!15306 s!9605))))))

(declare-fun b!7694802 () Bool)

(declare-fun e!4567287 () Bool)

(assert (=> b!7694802 (= e!4567287 (nullable!9001 r!14126))))

(declare-fun b!7694803 () Bool)

(assert (=> b!7694803 (= e!4567286 e!4567284)))

(declare-fun res!3073806 () Bool)

(assert (=> b!7694803 (=> (not res!3073806) (not e!4567284))))

(assert (=> b!7694803 (= res!3073806 (not lt!2664321))))

(declare-fun b!7694804 () Bool)

(assert (=> b!7694804 (= e!4567283 (= lt!2664321 call!709681))))

(declare-fun b!7694805 () Bool)

(declare-fun derivativeStep!5966 (Regex!20520 C!41366) Regex!20520)

(assert (=> b!7694805 (= e!4567287 (matchR!10016 (derivativeStep!5966 r!14126 (head!15766 s!9605)) (tail!15306 s!9605)))))

(declare-fun d!2333528 () Bool)

(assert (=> d!2333528 e!4567283))

(declare-fun c!1418069 () Bool)

(assert (=> d!2333528 (= c!1418069 (is-EmptyExpr!20520 r!14126))))

(assert (=> d!2333528 (= lt!2664321 e!4567287)))

(declare-fun c!1418068 () Bool)

(assert (=> d!2333528 (= c!1418068 (isEmpty!41893 s!9605))))

(assert (=> d!2333528 (validRegex!10938 r!14126)))

(assert (=> d!2333528 (= (matchR!10016 r!14126 s!9605) lt!2664321)))

(declare-fun b!7694797 () Bool)

(declare-fun res!3073801 () Bool)

(assert (=> b!7694797 (=> res!3073801 e!4567286)))

(assert (=> b!7694797 (= res!3073801 e!4567285)))

(declare-fun res!3073807 () Bool)

(assert (=> b!7694797 (=> (not res!3073807) (not e!4567285))))

(assert (=> b!7694797 (= res!3073807 lt!2664321)))

(assert (= (and d!2333528 c!1418068) b!7694802))

(assert (= (and d!2333528 (not c!1418068)) b!7694805))

(assert (= (and d!2333528 c!1418069) b!7694804))

(assert (= (and d!2333528 (not c!1418069)) b!7694795))

(assert (= (and b!7694795 c!1418067) b!7694794))

(assert (= (and b!7694795 (not c!1418067)) b!7694800))

(assert (= (and b!7694800 (not res!3073802)) b!7694797))

(assert (= (and b!7694797 res!3073807) b!7694798))

(assert (= (and b!7694798 res!3073803) b!7694792))

(assert (= (and b!7694792 res!3073804) b!7694796))

(assert (= (and b!7694797 (not res!3073801)) b!7694803))

(assert (= (and b!7694803 res!3073806) b!7694793))

(assert (= (and b!7694793 (not res!3073808)) b!7694801))

(assert (= (and b!7694801 (not res!3073805)) b!7694799))

(assert (= (or b!7694804 b!7694793 b!7694798) bm!709676))

(declare-fun m!8187650 () Bool)

(assert (=> b!7694801 m!8187650))

(assert (=> b!7694801 m!8187650))

(declare-fun m!8187652 () Bool)

(assert (=> b!7694801 m!8187652))

(assert (=> bm!709676 m!8187588))

(declare-fun m!8187654 () Bool)

(assert (=> b!7694796 m!8187654))

(assert (=> b!7694805 m!8187654))

(assert (=> b!7694805 m!8187654))

(declare-fun m!8187656 () Bool)

(assert (=> b!7694805 m!8187656))

(assert (=> b!7694805 m!8187650))

(assert (=> b!7694805 m!8187656))

(assert (=> b!7694805 m!8187650))

(declare-fun m!8187658 () Bool)

(assert (=> b!7694805 m!8187658))

(declare-fun m!8187660 () Bool)

(assert (=> b!7694802 m!8187660))

(assert (=> d!2333528 m!8187588))

(assert (=> d!2333528 m!8187582))

(assert (=> b!7694799 m!8187654))

(assert (=> b!7694792 m!8187650))

(assert (=> b!7694792 m!8187650))

(assert (=> b!7694792 m!8187652))

(assert (=> b!7694636 d!2333528))

(declare-fun d!2333532 () Bool)

(assert (=> d!2333532 (= (isEmpty!41893 s!9605) (is-Nil!73247 s!9605))))

(assert (=> b!7694635 d!2333532))

(declare-fun d!2333534 () Bool)

(declare-fun res!3073812 () Bool)

(declare-fun e!4567289 () Bool)

(assert (=> d!2333534 (=> res!3073812 e!4567289)))

(assert (=> d!2333534 (= res!3073812 (is-ElementMatch!20520 (reg!20849 r!14126)))))

(assert (=> d!2333534 (= (validRegex!10938 (reg!20849 r!14126)) e!4567289)))

(declare-fun b!7694806 () Bool)

(declare-fun e!4567292 () Bool)

(declare-fun e!4567294 () Bool)

(assert (=> b!7694806 (= e!4567292 e!4567294)))

(declare-fun c!1418071 () Bool)

(assert (=> b!7694806 (= c!1418071 (is-Union!20520 (reg!20849 r!14126)))))

(declare-fun b!7694807 () Bool)

(declare-fun e!4567290 () Bool)

(declare-fun call!709682 () Bool)

(assert (=> b!7694807 (= e!4567290 call!709682)))

(declare-fun bm!709677 () Bool)

(declare-fun call!709683 () Bool)

(assert (=> bm!709677 (= call!709683 (validRegex!10938 (ite c!1418071 (regTwo!41553 (reg!20849 r!14126)) (regTwo!41552 (reg!20849 r!14126)))))))

(declare-fun b!7694808 () Bool)

(assert (=> b!7694808 (= e!4567289 e!4567292)))

(declare-fun c!1418070 () Bool)

(assert (=> b!7694808 (= c!1418070 (is-Star!20520 (reg!20849 r!14126)))))

(declare-fun bm!709678 () Bool)

(assert (=> bm!709678 (= call!709682 (validRegex!10938 (ite c!1418070 (reg!20849 (reg!20849 r!14126)) (ite c!1418071 (regOne!41553 (reg!20849 r!14126)) (regOne!41552 (reg!20849 r!14126))))))))

(declare-fun b!7694809 () Bool)

(declare-fun res!3073810 () Bool)

(declare-fun e!4567291 () Bool)

(assert (=> b!7694809 (=> (not res!3073810) (not e!4567291))))

(declare-fun call!709684 () Bool)

(assert (=> b!7694809 (= res!3073810 call!709684)))

(assert (=> b!7694809 (= e!4567294 e!4567291)))

(declare-fun bm!709679 () Bool)

(assert (=> bm!709679 (= call!709684 call!709682)))

(declare-fun b!7694810 () Bool)

(assert (=> b!7694810 (= e!4567291 call!709683)))

(declare-fun b!7694811 () Bool)

(declare-fun e!4567295 () Bool)

(declare-fun e!4567293 () Bool)

(assert (=> b!7694811 (= e!4567295 e!4567293)))

(declare-fun res!3073813 () Bool)

(assert (=> b!7694811 (=> (not res!3073813) (not e!4567293))))

(assert (=> b!7694811 (= res!3073813 call!709684)))

(declare-fun b!7694812 () Bool)

(declare-fun res!3073811 () Bool)

(assert (=> b!7694812 (=> res!3073811 e!4567295)))

(assert (=> b!7694812 (= res!3073811 (not (is-Concat!29365 (reg!20849 r!14126))))))

(assert (=> b!7694812 (= e!4567294 e!4567295)))

(declare-fun b!7694813 () Bool)

(assert (=> b!7694813 (= e!4567293 call!709683)))

(declare-fun b!7694814 () Bool)

(assert (=> b!7694814 (= e!4567292 e!4567290)))

(declare-fun res!3073809 () Bool)

(assert (=> b!7694814 (= res!3073809 (not (nullable!9001 (reg!20849 (reg!20849 r!14126)))))))

(assert (=> b!7694814 (=> (not res!3073809) (not e!4567290))))

(assert (= (and d!2333534 (not res!3073812)) b!7694808))

(assert (= (and b!7694808 c!1418070) b!7694814))

(assert (= (and b!7694808 (not c!1418070)) b!7694806))

(assert (= (and b!7694814 res!3073809) b!7694807))

(assert (= (and b!7694806 c!1418071) b!7694809))

(assert (= (and b!7694806 (not c!1418071)) b!7694812))

(assert (= (and b!7694809 res!3073810) b!7694810))

(assert (= (and b!7694812 (not res!3073811)) b!7694811))

(assert (= (and b!7694811 res!3073813) b!7694813))

(assert (= (or b!7694809 b!7694811) bm!709679))

(assert (= (or b!7694810 b!7694813) bm!709677))

(assert (= (or b!7694807 bm!709679) bm!709678))

(declare-fun m!8187662 () Bool)

(assert (=> bm!709677 m!8187662))

(declare-fun m!8187664 () Bool)

(assert (=> bm!709678 m!8187664))

(declare-fun m!8187666 () Bool)

(assert (=> b!7694814 m!8187666))

(assert (=> b!7694640 d!2333534))

(declare-fun d!2333536 () Bool)

(declare-fun lt!2664327 () tuple2!69502)

(declare-fun dynLambda!29943 (Int tuple2!69502) Bool)

(assert (=> d!2333536 (dynLambda!29943 lambda!470481 lt!2664327)))

(declare-fun choose!59148 (Int) tuple2!69502)

(assert (=> d!2333536 (= lt!2664327 (choose!59148 lambda!470481))))

(assert (=> d!2333536 (Exists!4645 lambda!470481)))

(assert (=> d!2333536 (= (pickWitness!499 lambda!470481) lt!2664327)))

(declare-fun b_lambda!289181 () Bool)

(assert (=> (not b_lambda!289181) (not d!2333536)))

(declare-fun bs!1956544 () Bool)

(assert (= bs!1956544 d!2333536))

(declare-fun m!8187672 () Bool)

(assert (=> bs!1956544 m!8187672))

(declare-fun m!8187674 () Bool)

(assert (=> bs!1956544 m!8187674))

(assert (=> bs!1956544 m!8187600))

(assert (=> b!7694640 d!2333536))

(assert (=> b!7694641 d!2333526))

(declare-fun d!2333540 () Bool)

(declare-fun isEmpty!41895 (Option!17545) Bool)

(assert (=> d!2333540 (= (isDefined!14161 (findConcatSeparation!3575 (reg!20849 r!14126) r!14126 Nil!73247 s!9605 s!9605)) (not (isEmpty!41895 (findConcatSeparation!3575 (reg!20849 r!14126) r!14126 Nil!73247 s!9605 s!9605))))))

(declare-fun bs!1956545 () Bool)

(assert (= bs!1956545 d!2333540))

(assert (=> bs!1956545 m!8187590))

(declare-fun m!8187676 () Bool)

(assert (=> bs!1956545 m!8187676))

(assert (=> b!7694641 d!2333540))

(declare-fun b!7694836 () Bool)

(declare-fun e!4567312 () Bool)

(declare-fun lt!2664338 () Option!17545)

(declare-fun ++!17733 (List!73371 List!73371) List!73371)

(declare-fun get!25983 (Option!17545) tuple2!69502)

(assert (=> b!7694836 (= e!4567312 (= (++!17733 (_1!38054 (get!25983 lt!2664338)) (_2!38054 (get!25983 lt!2664338))) s!9605))))

(declare-fun b!7694837 () Bool)

(declare-fun lt!2664339 () Unit!168072)

(declare-fun lt!2664337 () Unit!168072)

(assert (=> b!7694837 (= lt!2664339 lt!2664337)))

(assert (=> b!7694837 (= (++!17733 (++!17733 Nil!73247 (Cons!73247 (h!79695 s!9605) Nil!73247)) (t!388106 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3284 (List!73371 C!41366 List!73371 List!73371) Unit!168072)

(assert (=> b!7694837 (= lt!2664337 (lemmaMoveElementToOtherListKeepsConcatEq!3284 Nil!73247 (h!79695 s!9605) (t!388106 s!9605) s!9605))))

(declare-fun e!4567309 () Option!17545)

(assert (=> b!7694837 (= e!4567309 (findConcatSeparation!3575 (reg!20849 r!14126) r!14126 (++!17733 Nil!73247 (Cons!73247 (h!79695 s!9605) Nil!73247)) (t!388106 s!9605) s!9605))))

(declare-fun b!7694838 () Bool)

(declare-fun e!4567311 () Bool)

(assert (=> b!7694838 (= e!4567311 (matchR!10016 r!14126 s!9605))))

(declare-fun b!7694839 () Bool)

(declare-fun res!3073830 () Bool)

(assert (=> b!7694839 (=> (not res!3073830) (not e!4567312))))

(assert (=> b!7694839 (= res!3073830 (matchR!10016 (reg!20849 r!14126) (_1!38054 (get!25983 lt!2664338))))))

(declare-fun d!2333544 () Bool)

(declare-fun e!4567310 () Bool)

(assert (=> d!2333544 e!4567310))

(declare-fun res!3073829 () Bool)

(assert (=> d!2333544 (=> res!3073829 e!4567310)))

(assert (=> d!2333544 (= res!3073829 e!4567312)))

(declare-fun res!3073827 () Bool)

(assert (=> d!2333544 (=> (not res!3073827) (not e!4567312))))

(assert (=> d!2333544 (= res!3073827 (isDefined!14161 lt!2664338))))

(declare-fun e!4567313 () Option!17545)

(assert (=> d!2333544 (= lt!2664338 e!4567313)))

(declare-fun c!1418077 () Bool)

(assert (=> d!2333544 (= c!1418077 e!4567311)))

(declare-fun res!3073828 () Bool)

(assert (=> d!2333544 (=> (not res!3073828) (not e!4567311))))

(assert (=> d!2333544 (= res!3073828 (matchR!10016 (reg!20849 r!14126) Nil!73247))))

(assert (=> d!2333544 (validRegex!10938 (reg!20849 r!14126))))

(assert (=> d!2333544 (= (findConcatSeparation!3575 (reg!20849 r!14126) r!14126 Nil!73247 s!9605 s!9605) lt!2664338)))

(declare-fun b!7694840 () Bool)

(assert (=> b!7694840 (= e!4567313 (Some!17544 (tuple2!69503 Nil!73247 s!9605)))))

(declare-fun b!7694841 () Bool)

(declare-fun res!3073831 () Bool)

(assert (=> b!7694841 (=> (not res!3073831) (not e!4567312))))

(assert (=> b!7694841 (= res!3073831 (matchR!10016 r!14126 (_2!38054 (get!25983 lt!2664338))))))

(declare-fun b!7694842 () Bool)

(assert (=> b!7694842 (= e!4567313 e!4567309)))

(declare-fun c!1418076 () Bool)

(assert (=> b!7694842 (= c!1418076 (is-Nil!73247 s!9605))))

(declare-fun b!7694843 () Bool)

(assert (=> b!7694843 (= e!4567310 (not (isDefined!14161 lt!2664338)))))

(declare-fun b!7694844 () Bool)

(assert (=> b!7694844 (= e!4567309 None!17544)))

(assert (= (and d!2333544 res!3073828) b!7694838))

(assert (= (and d!2333544 c!1418077) b!7694840))

(assert (= (and d!2333544 (not c!1418077)) b!7694842))

(assert (= (and b!7694842 c!1418076) b!7694844))

(assert (= (and b!7694842 (not c!1418076)) b!7694837))

(assert (= (and d!2333544 res!3073827) b!7694839))

(assert (= (and b!7694839 res!3073830) b!7694841))

(assert (= (and b!7694841 res!3073831) b!7694836))

(assert (= (and d!2333544 (not res!3073829)) b!7694843))

(declare-fun m!8187684 () Bool)

(assert (=> b!7694837 m!8187684))

(assert (=> b!7694837 m!8187684))

(declare-fun m!8187686 () Bool)

(assert (=> b!7694837 m!8187686))

(declare-fun m!8187688 () Bool)

(assert (=> b!7694837 m!8187688))

(assert (=> b!7694837 m!8187684))

(declare-fun m!8187690 () Bool)

(assert (=> b!7694837 m!8187690))

(declare-fun m!8187692 () Bool)

(assert (=> d!2333544 m!8187692))

(declare-fun m!8187694 () Bool)

(assert (=> d!2333544 m!8187694))

(assert (=> d!2333544 m!8187596))

(declare-fun m!8187696 () Bool)

(assert (=> b!7694836 m!8187696))

(declare-fun m!8187698 () Bool)

(assert (=> b!7694836 m!8187698))

(assert (=> b!7694843 m!8187692))

(assert (=> b!7694839 m!8187696))

(declare-fun m!8187700 () Bool)

(assert (=> b!7694839 m!8187700))

(assert (=> b!7694841 m!8187696))

(declare-fun m!8187702 () Bool)

(assert (=> b!7694841 m!8187702))

(assert (=> b!7694838 m!8187586))

(assert (=> b!7694641 d!2333544))

(declare-fun bs!1956546 () Bool)

(declare-fun d!2333548 () Bool)

(assert (= bs!1956546 (and d!2333548 b!7694641)))

(declare-fun lambda!470494 () Int)

(assert (=> bs!1956546 (= lambda!470494 lambda!470480)))

(declare-fun bs!1956547 () Bool)

(assert (= bs!1956547 (and d!2333548 b!7694631)))

(assert (=> bs!1956547 (not (= lambda!470494 lambda!470481))))

(assert (=> d!2333548 true))

(assert (=> d!2333548 true))

(assert (=> d!2333548 true))

(assert (=> d!2333548 (= (isDefined!14161 (findConcatSeparation!3575 (reg!20849 r!14126) r!14126 Nil!73247 s!9605 s!9605)) (Exists!4645 lambda!470494))))

(declare-fun lt!2664344 () Unit!168072)

(declare-fun choose!59149 (Regex!20520 Regex!20520 List!73371) Unit!168072)

(assert (=> d!2333548 (= lt!2664344 (choose!59149 (reg!20849 r!14126) r!14126 s!9605))))

(assert (=> d!2333548 (validRegex!10938 (reg!20849 r!14126))))

(assert (=> d!2333548 (= (lemmaFindConcatSeparationEquivalentToExists!3333 (reg!20849 r!14126) r!14126 s!9605) lt!2664344)))

(declare-fun bs!1956548 () Bool)

(assert (= bs!1956548 d!2333548))

(assert (=> bs!1956548 m!8187590))

(declare-fun m!8187704 () Bool)

(assert (=> bs!1956548 m!8187704))

(assert (=> bs!1956548 m!8187596))

(declare-fun m!8187706 () Bool)

(assert (=> bs!1956548 m!8187706))

(assert (=> bs!1956548 m!8187590))

(assert (=> bs!1956548 m!8187592))

(assert (=> b!7694641 d!2333548))

(declare-fun d!2333550 () Bool)

(declare-fun e!4567332 () Bool)

(assert (=> d!2333550 e!4567332))

(declare-fun res!3073854 () Bool)

(assert (=> d!2333550 (=> res!3073854 e!4567332)))

(assert (=> d!2333550 (= res!3073854 (isEmpty!41893 s!9605))))

(declare-fun lt!2664347 () Unit!168072)

(declare-fun choose!59150 (Regex!20520 List!73371) Unit!168072)

(assert (=> d!2333550 (= lt!2664347 (choose!59150 (reg!20849 r!14126) s!9605))))

(assert (=> d!2333550 (validRegex!10938 (Star!20520 (reg!20849 r!14126)))))

(assert (=> d!2333550 (= (lemmaStarAppConcat!35 (reg!20849 r!14126) s!9605) lt!2664347)))

(declare-fun b!7694879 () Bool)

(assert (=> b!7694879 (= e!4567332 (matchR!10016 (Concat!29365 (reg!20849 r!14126) (Star!20520 (reg!20849 r!14126))) s!9605))))

(assert (= (and d!2333550 (not res!3073854)) b!7694879))

(assert (=> d!2333550 m!8187588))

(declare-fun m!8187708 () Bool)

(assert (=> d!2333550 m!8187708))

(declare-fun m!8187710 () Bool)

(assert (=> d!2333550 m!8187710))

(declare-fun m!8187712 () Bool)

(assert (=> b!7694879 m!8187712))

(assert (=> b!7694630 d!2333550))

(declare-fun b!7694880 () Bool)

(declare-fun res!3073858 () Bool)

(declare-fun e!4567336 () Bool)

(assert (=> b!7694880 (=> (not res!3073858) (not e!4567336))))

(assert (=> b!7694880 (= res!3073858 (isEmpty!41893 (tail!15306 s!9605)))))

(declare-fun b!7694881 () Bool)

(declare-fun e!4567335 () Bool)

(declare-fun e!4567339 () Bool)

(assert (=> b!7694881 (= e!4567335 e!4567339)))

(declare-fun res!3073862 () Bool)

(assert (=> b!7694881 (=> res!3073862 e!4567339)))

(declare-fun call!709687 () Bool)

(assert (=> b!7694881 (= res!3073862 call!709687)))

(declare-fun b!7694882 () Bool)

(declare-fun e!4567333 () Bool)

(declare-fun lt!2664348 () Bool)

(assert (=> b!7694882 (= e!4567333 (not lt!2664348))))

(declare-fun b!7694883 () Bool)

(declare-fun e!4567334 () Bool)

(assert (=> b!7694883 (= e!4567334 e!4567333)))

(declare-fun c!1418084 () Bool)

(assert (=> b!7694883 (= c!1418084 (is-EmptyLang!20520 (Concat!29365 (reg!20849 r!14126) r!14126)))))

(declare-fun bm!709682 () Bool)

(assert (=> bm!709682 (= call!709687 (isEmpty!41893 s!9605))))

(declare-fun b!7694884 () Bool)

(assert (=> b!7694884 (= e!4567336 (= (head!15766 s!9605) (c!1418044 (Concat!29365 (reg!20849 r!14126) r!14126))))))

(declare-fun b!7694886 () Bool)

(declare-fun res!3073857 () Bool)

(assert (=> b!7694886 (=> (not res!3073857) (not e!4567336))))

(assert (=> b!7694886 (= res!3073857 (not call!709687))))

(declare-fun b!7694887 () Bool)

(assert (=> b!7694887 (= e!4567339 (not (= (head!15766 s!9605) (c!1418044 (Concat!29365 (reg!20849 r!14126) r!14126)))))))

(declare-fun b!7694888 () Bool)

(declare-fun res!3073856 () Bool)

(declare-fun e!4567337 () Bool)

(assert (=> b!7694888 (=> res!3073856 e!4567337)))

(assert (=> b!7694888 (= res!3073856 (not (is-ElementMatch!20520 (Concat!29365 (reg!20849 r!14126) r!14126))))))

(assert (=> b!7694888 (= e!4567333 e!4567337)))

(declare-fun b!7694889 () Bool)

(declare-fun res!3073859 () Bool)

(assert (=> b!7694889 (=> res!3073859 e!4567339)))

(assert (=> b!7694889 (= res!3073859 (not (isEmpty!41893 (tail!15306 s!9605))))))

(declare-fun b!7694890 () Bool)

(declare-fun e!4567338 () Bool)

(assert (=> b!7694890 (= e!4567338 (nullable!9001 (Concat!29365 (reg!20849 r!14126) r!14126)))))

(declare-fun b!7694891 () Bool)

(assert (=> b!7694891 (= e!4567337 e!4567335)))

(declare-fun res!3073860 () Bool)

(assert (=> b!7694891 (=> (not res!3073860) (not e!4567335))))

(assert (=> b!7694891 (= res!3073860 (not lt!2664348))))

(declare-fun b!7694892 () Bool)

(assert (=> b!7694892 (= e!4567334 (= lt!2664348 call!709687))))

(declare-fun b!7694893 () Bool)

(assert (=> b!7694893 (= e!4567338 (matchR!10016 (derivativeStep!5966 (Concat!29365 (reg!20849 r!14126) r!14126) (head!15766 s!9605)) (tail!15306 s!9605)))))

(declare-fun d!2333552 () Bool)

(assert (=> d!2333552 e!4567334))

(declare-fun c!1418086 () Bool)

(assert (=> d!2333552 (= c!1418086 (is-EmptyExpr!20520 (Concat!29365 (reg!20849 r!14126) r!14126)))))

(assert (=> d!2333552 (= lt!2664348 e!4567338)))

(declare-fun c!1418085 () Bool)

(assert (=> d!2333552 (= c!1418085 (isEmpty!41893 s!9605))))

(assert (=> d!2333552 (validRegex!10938 (Concat!29365 (reg!20849 r!14126) r!14126))))

(assert (=> d!2333552 (= (matchR!10016 (Concat!29365 (reg!20849 r!14126) r!14126) s!9605) lt!2664348)))

(declare-fun b!7694885 () Bool)

(declare-fun res!3073855 () Bool)

(assert (=> b!7694885 (=> res!3073855 e!4567337)))

(assert (=> b!7694885 (= res!3073855 e!4567336)))

(declare-fun res!3073861 () Bool)

(assert (=> b!7694885 (=> (not res!3073861) (not e!4567336))))

(assert (=> b!7694885 (= res!3073861 lt!2664348)))

(assert (= (and d!2333552 c!1418085) b!7694890))

(assert (= (and d!2333552 (not c!1418085)) b!7694893))

(assert (= (and d!2333552 c!1418086) b!7694892))

(assert (= (and d!2333552 (not c!1418086)) b!7694883))

(assert (= (and b!7694883 c!1418084) b!7694882))

(assert (= (and b!7694883 (not c!1418084)) b!7694888))

(assert (= (and b!7694888 (not res!3073856)) b!7694885))

(assert (= (and b!7694885 res!3073861) b!7694886))

(assert (= (and b!7694886 res!3073857) b!7694880))

(assert (= (and b!7694880 res!3073858) b!7694884))

(assert (= (and b!7694885 (not res!3073855)) b!7694891))

(assert (= (and b!7694891 res!3073860) b!7694881))

(assert (= (and b!7694881 (not res!3073862)) b!7694889))

(assert (= (and b!7694889 (not res!3073859)) b!7694887))

(assert (= (or b!7694892 b!7694881 b!7694886) bm!709682))

(assert (=> b!7694889 m!8187650))

(assert (=> b!7694889 m!8187650))

(assert (=> b!7694889 m!8187652))

(assert (=> bm!709682 m!8187588))

(assert (=> b!7694884 m!8187654))

(assert (=> b!7694893 m!8187654))

(assert (=> b!7694893 m!8187654))

(declare-fun m!8187714 () Bool)

(assert (=> b!7694893 m!8187714))

(assert (=> b!7694893 m!8187650))

(assert (=> b!7694893 m!8187714))

(assert (=> b!7694893 m!8187650))

(declare-fun m!8187716 () Bool)

(assert (=> b!7694893 m!8187716))

(declare-fun m!8187718 () Bool)

(assert (=> b!7694890 m!8187718))

(assert (=> d!2333552 m!8187588))

(declare-fun m!8187720 () Bool)

(assert (=> d!2333552 m!8187720))

(assert (=> b!7694887 m!8187654))

(assert (=> b!7694880 m!8187650))

(assert (=> b!7694880 m!8187650))

(assert (=> b!7694880 m!8187652))

(assert (=> b!7694630 d!2333552))

(declare-fun d!2333554 () Bool)

(assert (=> d!2333554 (isDefined!14161 (findConcatSeparation!3575 (reg!20849 r!14126) r!14126 Nil!73247 s!9605 s!9605))))

(declare-fun lt!2664352 () Unit!168072)

(declare-fun choose!59151 (Regex!20520 Regex!20520 List!73371) Unit!168072)

(assert (=> d!2333554 (= lt!2664352 (choose!59151 (reg!20849 r!14126) r!14126 s!9605))))

(assert (=> d!2333554 (validRegex!10938 (reg!20849 r!14126))))

(assert (=> d!2333554 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!293 (reg!20849 r!14126) r!14126 s!9605) lt!2664352)))

(declare-fun bs!1956549 () Bool)

(assert (= bs!1956549 d!2333554))

(assert (=> bs!1956549 m!8187590))

(assert (=> bs!1956549 m!8187590))

(assert (=> bs!1956549 m!8187592))

(declare-fun m!8187722 () Bool)

(assert (=> bs!1956549 m!8187722))

(assert (=> bs!1956549 m!8187596))

(assert (=> b!7694630 d!2333554))

(declare-fun b!7694921 () Bool)

(declare-fun e!4567349 () Bool)

(declare-fun tp!2254157 () Bool)

(declare-fun tp!2254160 () Bool)

(assert (=> b!7694921 (= e!4567349 (and tp!2254157 tp!2254160))))

(declare-fun b!7694918 () Bool)

(assert (=> b!7694918 (= e!4567349 tp_is_empty!51395)))

(declare-fun b!7694920 () Bool)

(declare-fun tp!2254159 () Bool)

(assert (=> b!7694920 (= e!4567349 tp!2254159)))

(assert (=> b!7694639 (= tp!2254122 e!4567349)))

(declare-fun b!7694919 () Bool)

(declare-fun tp!2254158 () Bool)

(declare-fun tp!2254156 () Bool)

(assert (=> b!7694919 (= e!4567349 (and tp!2254158 tp!2254156))))

(assert (= (and b!7694639 (is-ElementMatch!20520 (regOne!41553 r!14126))) b!7694918))

(assert (= (and b!7694639 (is-Concat!29365 (regOne!41553 r!14126))) b!7694919))

(assert (= (and b!7694639 (is-Star!20520 (regOne!41553 r!14126))) b!7694920))

(assert (= (and b!7694639 (is-Union!20520 (regOne!41553 r!14126))) b!7694921))

(declare-fun b!7694925 () Bool)

(declare-fun e!4567350 () Bool)

(declare-fun tp!2254162 () Bool)

(declare-fun tp!2254165 () Bool)

(assert (=> b!7694925 (= e!4567350 (and tp!2254162 tp!2254165))))

(declare-fun b!7694922 () Bool)

(assert (=> b!7694922 (= e!4567350 tp_is_empty!51395)))

(declare-fun b!7694924 () Bool)

(declare-fun tp!2254164 () Bool)

(assert (=> b!7694924 (= e!4567350 tp!2254164)))

(assert (=> b!7694639 (= tp!2254123 e!4567350)))

(declare-fun b!7694923 () Bool)

(declare-fun tp!2254163 () Bool)

(declare-fun tp!2254161 () Bool)

(assert (=> b!7694923 (= e!4567350 (and tp!2254163 tp!2254161))))

(assert (= (and b!7694639 (is-ElementMatch!20520 (regTwo!41553 r!14126))) b!7694922))

(assert (= (and b!7694639 (is-Concat!29365 (regTwo!41553 r!14126))) b!7694923))

(assert (= (and b!7694639 (is-Star!20520 (regTwo!41553 r!14126))) b!7694924))

(assert (= (and b!7694639 (is-Union!20520 (regTwo!41553 r!14126))) b!7694925))

(declare-fun b!7694929 () Bool)

(declare-fun e!4567351 () Bool)

(declare-fun tp!2254167 () Bool)

(declare-fun tp!2254170 () Bool)

(assert (=> b!7694929 (= e!4567351 (and tp!2254167 tp!2254170))))

(declare-fun b!7694926 () Bool)

(assert (=> b!7694926 (= e!4567351 tp_is_empty!51395)))

(declare-fun b!7694928 () Bool)

(declare-fun tp!2254169 () Bool)

(assert (=> b!7694928 (= e!4567351 tp!2254169)))

(assert (=> b!7694633 (= tp!2254124 e!4567351)))

(declare-fun b!7694927 () Bool)

(declare-fun tp!2254168 () Bool)

(declare-fun tp!2254166 () Bool)

(assert (=> b!7694927 (= e!4567351 (and tp!2254168 tp!2254166))))

(assert (= (and b!7694633 (is-ElementMatch!20520 (reg!20849 r!14126))) b!7694926))

(assert (= (and b!7694633 (is-Concat!29365 (reg!20849 r!14126))) b!7694927))

(assert (= (and b!7694633 (is-Star!20520 (reg!20849 r!14126))) b!7694928))

(assert (= (and b!7694633 (is-Union!20520 (reg!20849 r!14126))) b!7694929))

(declare-fun b!7694933 () Bool)

(declare-fun e!4567352 () Bool)

(declare-fun tp!2254172 () Bool)

(declare-fun tp!2254175 () Bool)

(assert (=> b!7694933 (= e!4567352 (and tp!2254172 tp!2254175))))

(declare-fun b!7694930 () Bool)

(assert (=> b!7694930 (= e!4567352 tp_is_empty!51395)))

(declare-fun b!7694932 () Bool)

(declare-fun tp!2254174 () Bool)

(assert (=> b!7694932 (= e!4567352 tp!2254174)))

(assert (=> b!7694638 (= tp!2254126 e!4567352)))

(declare-fun b!7694931 () Bool)

(declare-fun tp!2254173 () Bool)

(declare-fun tp!2254171 () Bool)

(assert (=> b!7694931 (= e!4567352 (and tp!2254173 tp!2254171))))

(assert (= (and b!7694638 (is-ElementMatch!20520 (regOne!41552 r!14126))) b!7694930))

(assert (= (and b!7694638 (is-Concat!29365 (regOne!41552 r!14126))) b!7694931))

(assert (= (and b!7694638 (is-Star!20520 (regOne!41552 r!14126))) b!7694932))

(assert (= (and b!7694638 (is-Union!20520 (regOne!41552 r!14126))) b!7694933))

(declare-fun b!7694937 () Bool)

(declare-fun e!4567353 () Bool)

(declare-fun tp!2254177 () Bool)

(declare-fun tp!2254180 () Bool)

(assert (=> b!7694937 (= e!4567353 (and tp!2254177 tp!2254180))))

(declare-fun b!7694934 () Bool)

(assert (=> b!7694934 (= e!4567353 tp_is_empty!51395)))

(declare-fun b!7694936 () Bool)

(declare-fun tp!2254179 () Bool)

(assert (=> b!7694936 (= e!4567353 tp!2254179)))

(assert (=> b!7694638 (= tp!2254127 e!4567353)))

(declare-fun b!7694935 () Bool)

(declare-fun tp!2254178 () Bool)

(declare-fun tp!2254176 () Bool)

(assert (=> b!7694935 (= e!4567353 (and tp!2254178 tp!2254176))))

(assert (= (and b!7694638 (is-ElementMatch!20520 (regTwo!41552 r!14126))) b!7694934))

(assert (= (and b!7694638 (is-Concat!29365 (regTwo!41552 r!14126))) b!7694935))

(assert (= (and b!7694638 (is-Star!20520 (regTwo!41552 r!14126))) b!7694936))

(assert (= (and b!7694638 (is-Union!20520 (regTwo!41552 r!14126))) b!7694937))

(declare-fun b!7694942 () Bool)

(declare-fun e!4567356 () Bool)

(declare-fun tp!2254183 () Bool)

(assert (=> b!7694942 (= e!4567356 (and tp_is_empty!51395 tp!2254183))))

(assert (=> b!7694642 (= tp!2254125 e!4567356)))

(assert (= (and b!7694642 (is-Cons!73247 (t!388106 s!9605))) b!7694942))

(declare-fun b_lambda!289183 () Bool)

(assert (= b_lambda!289181 (or b!7694631 b_lambda!289183)))

(declare-fun bs!1956550 () Bool)

(declare-fun d!2333558 () Bool)

(assert (= bs!1956550 (and d!2333558 b!7694631)))

(declare-fun res!3073871 () Bool)

(declare-fun e!4567357 () Bool)

(assert (=> bs!1956550 (=> (not res!3073871) (not e!4567357))))

(assert (=> bs!1956550 (= res!3073871 (= (++!17733 (_1!38054 lt!2664327) (_2!38054 lt!2664327)) s!9605))))

(assert (=> bs!1956550 (= (dynLambda!29943 lambda!470481 lt!2664327) e!4567357)))

(declare-fun b!7694943 () Bool)

(declare-fun res!3073872 () Bool)

(assert (=> b!7694943 (=> (not res!3073872) (not e!4567357))))

(assert (=> b!7694943 (= res!3073872 (not (isEmpty!41893 (_1!38054 lt!2664327))))))

(declare-fun b!7694944 () Bool)

(declare-fun res!3073873 () Bool)

(assert (=> b!7694944 (=> (not res!3073873) (not e!4567357))))

(declare-fun matchRSpec!4611 (Regex!20520 List!73371) Bool)

(assert (=> b!7694944 (= res!3073873 (matchRSpec!4611 (reg!20849 r!14126) (_1!38054 lt!2664327)))))

(declare-fun b!7694945 () Bool)

(assert (=> b!7694945 (= e!4567357 (matchRSpec!4611 r!14126 (_2!38054 lt!2664327)))))

(assert (= (and bs!1956550 res!3073871) b!7694943))

(assert (= (and b!7694943 res!3073872) b!7694944))

(assert (= (and b!7694944 res!3073873) b!7694945))

(declare-fun m!8187738 () Bool)

(assert (=> bs!1956550 m!8187738))

(declare-fun m!8187740 () Bool)

(assert (=> b!7694943 m!8187740))

(declare-fun m!8187742 () Bool)

(assert (=> b!7694944 m!8187742))

(declare-fun m!8187744 () Bool)

(assert (=> b!7694945 m!8187744))

(assert (=> d!2333536 d!2333558))

(push 1)

(assert (not b!7694944))

(assert (not b!7694837))

(assert (not b!7694927))

(assert (not b!7694925))

(assert (not b!7694836))

(assert (not b!7694792))

(assert (not d!2333548))

(assert (not b!7694893))

(assert (not b!7694841))

(assert (not b!7694796))

(assert (not d!2333528))

(assert (not b!7694889))

(assert (not bm!709662))

(assert (not b!7694879))

(assert (not b!7694921))

(assert (not b!7694887))

(assert (not b!7694923))

(assert (not b!7694805))

(assert (not bs!1956550))

(assert (not b!7694932))

(assert (not b!7694936))

(assert (not b!7694814))

(assert (not b!7694919))

(assert (not b!7694928))

(assert (not b!7694890))

(assert tp_is_empty!51395)

(assert (not d!2333550))

(assert (not d!2333540))

(assert (not b!7694802))

(assert (not d!2333526))

(assert (not b!7694920))

(assert (not b!7694799))

(assert (not b!7694924))

(assert (not b!7694839))

(assert (not b!7694931))

(assert (not b!7694933))

(assert (not bm!709676))

(assert (not b!7694884))

(assert (not d!2333552))

(assert (not b!7694942))

(assert (not b!7694945))

(assert (not bm!709663))

(assert (not b!7694935))

(assert (not b!7694843))

(assert (not bm!709682))

(assert (not b!7694943))

(assert (not b!7694929))

(assert (not b!7694838))

(assert (not d!2333536))

(assert (not b!7694880))

(assert (not bm!709677))

(assert (not bm!709678))

(assert (not b_lambda!289183))

(assert (not b!7694801))

(assert (not d!2333554))

(assert (not d!2333544))

(assert (not b!7694754))

(assert (not d!2333524))

(assert (not b!7694937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

