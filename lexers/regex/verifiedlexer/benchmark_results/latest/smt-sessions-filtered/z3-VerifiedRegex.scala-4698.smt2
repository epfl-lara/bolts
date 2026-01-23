; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243652 () Bool)

(assert start!243652)

(declare-fun b!2494710 () Bool)

(declare-fun e!1583092 () Bool)

(declare-fun e!1583087 () Bool)

(assert (=> b!2494710 (= e!1583092 e!1583087)))

(declare-fun res!1055161 () Bool)

(assert (=> b!2494710 (=> (not res!1055161) (not e!1583087))))

(declare-datatypes ((C!14900 0))(
  ( (C!14901 (val!9102 Int)) )
))
(declare-datatypes ((Regex!7371 0))(
  ( (ElementMatch!7371 (c!396659 C!14900)) (Concat!12067 (regOne!15254 Regex!7371) (regTwo!15254 Regex!7371)) (EmptyExpr!7371) (Star!7371 (reg!7700 Regex!7371)) (EmptyLang!7371) (Union!7371 (regOne!15255 Regex!7371) (regTwo!15255 Regex!7371)) )
))
(declare-fun lt!894408 () Regex!7371)

(declare-fun nullable!2288 (Regex!7371) Bool)

(assert (=> b!2494710 (= res!1055161 (nullable!2288 lt!894408))))

(declare-fun lt!894407 () Regex!7371)

(declare-datatypes ((List!29436 0))(
  ( (Nil!29336) (Cons!29336 (h!34756 C!14900) (t!211135 List!29436)) )
))
(declare-fun tl!4068 () List!29436)

(declare-fun derivative!66 (Regex!7371 List!29436) Regex!7371)

(assert (=> b!2494710 (= lt!894408 (derivative!66 lt!894407 tl!4068))))

(declare-fun r!27340 () Regex!7371)

(declare-fun c!14016 () C!14900)

(declare-fun derivativeStep!1940 (Regex!7371 C!14900) Regex!7371)

(assert (=> b!2494710 (= lt!894407 (derivativeStep!1940 r!27340 c!14016))))

(declare-fun b!2494711 () Bool)

(declare-fun e!1583088 () Bool)

(declare-fun tp!799129 () Bool)

(assert (=> b!2494711 (= e!1583088 tp!799129)))

(declare-fun b!2494712 () Bool)

(declare-fun e!1583090 () Bool)

(declare-fun validRegex!2997 (Regex!7371) Bool)

(assert (=> b!2494712 (= e!1583090 (validRegex!2997 (reg!7700 r!27340)))))

(declare-fun lt!894406 () Regex!7371)

(declare-fun lt!894405 () Regex!7371)

(declare-datatypes ((tuple2!29360 0))(
  ( (tuple2!29361 (_1!17222 List!29436) (_2!17222 List!29436)) )
))
(declare-datatypes ((Option!5800 0))(
  ( (None!5799) (Some!5799 (v!31730 tuple2!29360)) )
))
(declare-fun isDefined!4622 (Option!5800) Bool)

(declare-fun findConcatSeparation!822 (Regex!7371 Regex!7371 List!29436 List!29436 List!29436) Option!5800)

(assert (=> b!2494712 (isDefined!4622 (findConcatSeparation!822 lt!894406 lt!894405 Nil!29336 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43011 0))(
  ( (Unit!43012) )
))
(declare-fun lt!894404 () Unit!43011)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!104 (Regex!7371 Regex!7371 List!29436) Unit!43011)

(assert (=> b!2494712 (= lt!894404 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!104 lt!894406 lt!894405 tl!4068))))

(declare-fun b!2494713 () Bool)

(declare-fun e!1583089 () Bool)

(assert (=> b!2494713 (= e!1583089 (not e!1583090))))

(declare-fun res!1055164 () Bool)

(assert (=> b!2494713 (=> res!1055164 e!1583090)))

(declare-fun lt!894402 () Bool)

(assert (=> b!2494713 (= res!1055164 (not lt!894402))))

(declare-fun matchR!3380 (Regex!7371 List!29436) Bool)

(assert (=> b!2494713 (= lt!894402 (matchR!3380 lt!894408 Nil!29336))))

(assert (=> b!2494713 (= lt!894402 (matchR!3380 lt!894407 tl!4068))))

(declare-fun lt!894403 () Unit!43011)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!26 (Regex!7371 List!29436) Unit!43011)

(assert (=> b!2494713 (= lt!894403 (lemmaMatchRIsSameAsWholeDerivativeAndNil!26 lt!894407 tl!4068))))

(declare-fun b!2494714 () Bool)

(declare-fun res!1055162 () Bool)

(assert (=> b!2494714 (=> (not res!1055162) (not e!1583087))))

(get-info :version)

(assert (=> b!2494714 (= res!1055162 (and (not ((_ is EmptyExpr!7371) r!27340)) (not ((_ is EmptyLang!7371) r!27340)) (not ((_ is ElementMatch!7371) r!27340)) (not ((_ is Union!7371) r!27340)) ((_ is Star!7371) r!27340)))))

(declare-fun b!2494715 () Bool)

(declare-fun tp!799128 () Bool)

(declare-fun tp!799125 () Bool)

(assert (=> b!2494715 (= e!1583088 (and tp!799128 tp!799125))))

(declare-fun b!2494716 () Bool)

(declare-fun tp_is_empty!12597 () Bool)

(assert (=> b!2494716 (= e!1583088 tp_is_empty!12597)))

(declare-fun b!2494717 () Bool)

(assert (=> b!2494717 (= e!1583087 e!1583089)))

(declare-fun res!1055166 () Bool)

(assert (=> b!2494717 (=> (not res!1055166) (not e!1583089))))

(assert (=> b!2494717 (= res!1055166 (= lt!894407 (Concat!12067 lt!894406 lt!894405)))))

(assert (=> b!2494717 (= lt!894405 (Star!7371 (reg!7700 r!27340)))))

(assert (=> b!2494717 (= lt!894406 (derivativeStep!1940 (reg!7700 r!27340) c!14016))))

(declare-fun b!2494718 () Bool)

(declare-fun res!1055165 () Bool)

(assert (=> b!2494718 (=> (not res!1055165) (not e!1583089))))

(assert (=> b!2494718 (= res!1055165 (not (nullable!2288 (derivative!66 lt!894406 tl!4068))))))

(declare-fun res!1055163 () Bool)

(assert (=> start!243652 (=> (not res!1055163) (not e!1583092))))

(assert (=> start!243652 (= res!1055163 (validRegex!2997 r!27340))))

(assert (=> start!243652 e!1583092))

(assert (=> start!243652 e!1583088))

(assert (=> start!243652 tp_is_empty!12597))

(declare-fun e!1583091 () Bool)

(assert (=> start!243652 e!1583091))

(declare-fun b!2494719 () Bool)

(declare-fun tp!799130 () Bool)

(declare-fun tp!799127 () Bool)

(assert (=> b!2494719 (= e!1583088 (and tp!799130 tp!799127))))

(declare-fun b!2494720 () Bool)

(declare-fun tp!799126 () Bool)

(assert (=> b!2494720 (= e!1583091 (and tp_is_empty!12597 tp!799126))))

(assert (= (and start!243652 res!1055163) b!2494710))

(assert (= (and b!2494710 res!1055161) b!2494714))

(assert (= (and b!2494714 res!1055162) b!2494717))

(assert (= (and b!2494717 res!1055166) b!2494718))

(assert (= (and b!2494718 res!1055165) b!2494713))

(assert (= (and b!2494713 (not res!1055164)) b!2494712))

(assert (= (and start!243652 ((_ is ElementMatch!7371) r!27340)) b!2494716))

(assert (= (and start!243652 ((_ is Concat!12067) r!27340)) b!2494715))

(assert (= (and start!243652 ((_ is Star!7371) r!27340)) b!2494711))

(assert (= (and start!243652 ((_ is Union!7371) r!27340)) b!2494719))

(assert (= (and start!243652 ((_ is Cons!29336) tl!4068)) b!2494720))

(declare-fun m!2859737 () Bool)

(assert (=> b!2494713 m!2859737))

(declare-fun m!2859739 () Bool)

(assert (=> b!2494713 m!2859739))

(declare-fun m!2859741 () Bool)

(assert (=> b!2494713 m!2859741))

(declare-fun m!2859743 () Bool)

(assert (=> b!2494718 m!2859743))

(assert (=> b!2494718 m!2859743))

(declare-fun m!2859745 () Bool)

(assert (=> b!2494718 m!2859745))

(declare-fun m!2859747 () Bool)

(assert (=> b!2494710 m!2859747))

(declare-fun m!2859749 () Bool)

(assert (=> b!2494710 m!2859749))

(declare-fun m!2859751 () Bool)

(assert (=> b!2494710 m!2859751))

(declare-fun m!2859753 () Bool)

(assert (=> b!2494712 m!2859753))

(declare-fun m!2859755 () Bool)

(assert (=> b!2494712 m!2859755))

(assert (=> b!2494712 m!2859755))

(declare-fun m!2859757 () Bool)

(assert (=> b!2494712 m!2859757))

(declare-fun m!2859759 () Bool)

(assert (=> b!2494712 m!2859759))

(declare-fun m!2859761 () Bool)

(assert (=> start!243652 m!2859761))

(declare-fun m!2859763 () Bool)

(assert (=> b!2494717 m!2859763))

(check-sat (not b!2494711) (not b!2494710) (not b!2494720) (not b!2494712) (not b!2494717) (not b!2494718) (not start!243652) (not b!2494715) tp_is_empty!12597 (not b!2494719) (not b!2494713))
(check-sat)
(get-model)

(declare-fun bm!153659 () Bool)

(declare-fun call!153666 () Bool)

(declare-fun c!396664 () Bool)

(assert (=> bm!153659 (= call!153666 (validRegex!2997 (ite c!396664 (regOne!15255 (reg!7700 r!27340)) (regTwo!15254 (reg!7700 r!27340)))))))

(declare-fun b!2494739 () Bool)

(declare-fun e!1583112 () Bool)

(assert (=> b!2494739 (= e!1583112 call!153666)))

(declare-fun call!153664 () Bool)

(declare-fun c!396665 () Bool)

(declare-fun bm!153660 () Bool)

(assert (=> bm!153660 (= call!153664 (validRegex!2997 (ite c!396665 (reg!7700 (reg!7700 r!27340)) (ite c!396664 (regTwo!15255 (reg!7700 r!27340)) (regOne!15254 (reg!7700 r!27340))))))))

(declare-fun b!2494740 () Bool)

(declare-fun e!1583110 () Bool)

(assert (=> b!2494740 (= e!1583110 e!1583112)))

(declare-fun res!1055178 () Bool)

(assert (=> b!2494740 (=> (not res!1055178) (not e!1583112))))

(declare-fun call!153665 () Bool)

(assert (=> b!2494740 (= res!1055178 call!153665)))

(declare-fun b!2494741 () Bool)

(declare-fun e!1583108 () Bool)

(declare-fun e!1583111 () Bool)

(assert (=> b!2494741 (= e!1583108 e!1583111)))

(assert (=> b!2494741 (= c!396665 ((_ is Star!7371) (reg!7700 r!27340)))))

(declare-fun d!714719 () Bool)

(declare-fun res!1055180 () Bool)

(assert (=> d!714719 (=> res!1055180 e!1583108)))

(assert (=> d!714719 (= res!1055180 ((_ is ElementMatch!7371) (reg!7700 r!27340)))))

(assert (=> d!714719 (= (validRegex!2997 (reg!7700 r!27340)) e!1583108)))

(declare-fun b!2494742 () Bool)

(declare-fun e!1583113 () Bool)

(assert (=> b!2494742 (= e!1583111 e!1583113)))

(declare-fun res!1055177 () Bool)

(assert (=> b!2494742 (= res!1055177 (not (nullable!2288 (reg!7700 (reg!7700 r!27340)))))))

(assert (=> b!2494742 (=> (not res!1055177) (not e!1583113))))

(declare-fun bm!153661 () Bool)

(assert (=> bm!153661 (= call!153665 call!153664)))

(declare-fun b!2494743 () Bool)

(declare-fun res!1055181 () Bool)

(declare-fun e!1583107 () Bool)

(assert (=> b!2494743 (=> (not res!1055181) (not e!1583107))))

(assert (=> b!2494743 (= res!1055181 call!153666)))

(declare-fun e!1583109 () Bool)

(assert (=> b!2494743 (= e!1583109 e!1583107)))

(declare-fun b!2494744 () Bool)

(assert (=> b!2494744 (= e!1583113 call!153664)))

(declare-fun b!2494745 () Bool)

(assert (=> b!2494745 (= e!1583111 e!1583109)))

(assert (=> b!2494745 (= c!396664 ((_ is Union!7371) (reg!7700 r!27340)))))

(declare-fun b!2494746 () Bool)

(assert (=> b!2494746 (= e!1583107 call!153665)))

(declare-fun b!2494747 () Bool)

(declare-fun res!1055179 () Bool)

(assert (=> b!2494747 (=> res!1055179 e!1583110)))

(assert (=> b!2494747 (= res!1055179 (not ((_ is Concat!12067) (reg!7700 r!27340))))))

(assert (=> b!2494747 (= e!1583109 e!1583110)))

(assert (= (and d!714719 (not res!1055180)) b!2494741))

(assert (= (and b!2494741 c!396665) b!2494742))

(assert (= (and b!2494741 (not c!396665)) b!2494745))

(assert (= (and b!2494742 res!1055177) b!2494744))

(assert (= (and b!2494745 c!396664) b!2494743))

(assert (= (and b!2494745 (not c!396664)) b!2494747))

(assert (= (and b!2494743 res!1055181) b!2494746))

(assert (= (and b!2494747 (not res!1055179)) b!2494740))

(assert (= (and b!2494740 res!1055178) b!2494739))

(assert (= (or b!2494743 b!2494739) bm!153659))

(assert (= (or b!2494746 b!2494740) bm!153661))

(assert (= (or b!2494744 bm!153661) bm!153660))

(declare-fun m!2859767 () Bool)

(assert (=> bm!153659 m!2859767))

(declare-fun m!2859769 () Bool)

(assert (=> bm!153660 m!2859769))

(declare-fun m!2859771 () Bool)

(assert (=> b!2494742 m!2859771))

(assert (=> b!2494712 d!714719))

(declare-fun d!714725 () Bool)

(declare-fun isEmpty!16802 (Option!5800) Bool)

(assert (=> d!714725 (= (isDefined!4622 (findConcatSeparation!822 lt!894406 lt!894405 Nil!29336 tl!4068 tl!4068)) (not (isEmpty!16802 (findConcatSeparation!822 lt!894406 lt!894405 Nil!29336 tl!4068 tl!4068))))))

(declare-fun bs!468435 () Bool)

(assert (= bs!468435 d!714725))

(assert (=> bs!468435 m!2859755))

(declare-fun m!2859773 () Bool)

(assert (=> bs!468435 m!2859773))

(assert (=> b!2494712 d!714725))

(declare-fun b!2494774 () Bool)

(declare-fun e!1583128 () Bool)

(declare-fun lt!894422 () Option!5800)

(declare-fun ++!7157 (List!29436 List!29436) List!29436)

(declare-fun get!9073 (Option!5800) tuple2!29360)

(assert (=> b!2494774 (= e!1583128 (= (++!7157 (_1!17222 (get!9073 lt!894422)) (_2!17222 (get!9073 lt!894422))) tl!4068))))

(declare-fun b!2494775 () Bool)

(declare-fun e!1583131 () Bool)

(assert (=> b!2494775 (= e!1583131 (matchR!3380 lt!894405 tl!4068))))

(declare-fun b!2494776 () Bool)

(declare-fun lt!894420 () Unit!43011)

(declare-fun lt!894421 () Unit!43011)

(assert (=> b!2494776 (= lt!894420 lt!894421)))

(assert (=> b!2494776 (= (++!7157 (++!7157 Nil!29336 (Cons!29336 (h!34756 tl!4068) Nil!29336)) (t!211135 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!715 (List!29436 C!14900 List!29436 List!29436) Unit!43011)

(assert (=> b!2494776 (= lt!894421 (lemmaMoveElementToOtherListKeepsConcatEq!715 Nil!29336 (h!34756 tl!4068) (t!211135 tl!4068) tl!4068))))

(declare-fun e!1583127 () Option!5800)

(assert (=> b!2494776 (= e!1583127 (findConcatSeparation!822 lt!894406 lt!894405 (++!7157 Nil!29336 (Cons!29336 (h!34756 tl!4068) Nil!29336)) (t!211135 tl!4068) tl!4068))))

(declare-fun b!2494777 () Bool)

(declare-fun e!1583130 () Option!5800)

(assert (=> b!2494777 (= e!1583130 (Some!5799 (tuple2!29361 Nil!29336 tl!4068)))))

(declare-fun b!2494778 () Bool)

(assert (=> b!2494778 (= e!1583127 None!5799)))

(declare-fun b!2494779 () Bool)

(declare-fun e!1583129 () Bool)

(assert (=> b!2494779 (= e!1583129 (not (isDefined!4622 lt!894422)))))

(declare-fun d!714727 () Bool)

(assert (=> d!714727 e!1583129))

(declare-fun res!1055196 () Bool)

(assert (=> d!714727 (=> res!1055196 e!1583129)))

(assert (=> d!714727 (= res!1055196 e!1583128)))

(declare-fun res!1055193 () Bool)

(assert (=> d!714727 (=> (not res!1055193) (not e!1583128))))

(assert (=> d!714727 (= res!1055193 (isDefined!4622 lt!894422))))

(assert (=> d!714727 (= lt!894422 e!1583130)))

(declare-fun c!396674 () Bool)

(assert (=> d!714727 (= c!396674 e!1583131)))

(declare-fun res!1055194 () Bool)

(assert (=> d!714727 (=> (not res!1055194) (not e!1583131))))

(assert (=> d!714727 (= res!1055194 (matchR!3380 lt!894406 Nil!29336))))

(assert (=> d!714727 (validRegex!2997 lt!894406)))

(assert (=> d!714727 (= (findConcatSeparation!822 lt!894406 lt!894405 Nil!29336 tl!4068 tl!4068) lt!894422)))

(declare-fun b!2494780 () Bool)

(assert (=> b!2494780 (= e!1583130 e!1583127)))

(declare-fun c!396673 () Bool)

(assert (=> b!2494780 (= c!396673 ((_ is Nil!29336) tl!4068))))

(declare-fun b!2494781 () Bool)

(declare-fun res!1055195 () Bool)

(assert (=> b!2494781 (=> (not res!1055195) (not e!1583128))))

(assert (=> b!2494781 (= res!1055195 (matchR!3380 lt!894405 (_2!17222 (get!9073 lt!894422))))))

(declare-fun b!2494782 () Bool)

(declare-fun res!1055192 () Bool)

(assert (=> b!2494782 (=> (not res!1055192) (not e!1583128))))

(assert (=> b!2494782 (= res!1055192 (matchR!3380 lt!894406 (_1!17222 (get!9073 lt!894422))))))

(assert (= (and d!714727 res!1055194) b!2494775))

(assert (= (and d!714727 c!396674) b!2494777))

(assert (= (and d!714727 (not c!396674)) b!2494780))

(assert (= (and b!2494780 c!396673) b!2494778))

(assert (= (and b!2494780 (not c!396673)) b!2494776))

(assert (= (and d!714727 res!1055193) b!2494782))

(assert (= (and b!2494782 res!1055192) b!2494781))

(assert (= (and b!2494781 res!1055195) b!2494774))

(assert (= (and d!714727 (not res!1055196)) b!2494779))

(declare-fun m!2859783 () Bool)

(assert (=> b!2494775 m!2859783))

(declare-fun m!2859785 () Bool)

(assert (=> b!2494774 m!2859785))

(declare-fun m!2859787 () Bool)

(assert (=> b!2494774 m!2859787))

(declare-fun m!2859789 () Bool)

(assert (=> d!714727 m!2859789))

(declare-fun m!2859791 () Bool)

(assert (=> d!714727 m!2859791))

(declare-fun m!2859793 () Bool)

(assert (=> d!714727 m!2859793))

(assert (=> b!2494781 m!2859785))

(declare-fun m!2859795 () Bool)

(assert (=> b!2494781 m!2859795))

(assert (=> b!2494782 m!2859785))

(declare-fun m!2859797 () Bool)

(assert (=> b!2494782 m!2859797))

(assert (=> b!2494779 m!2859789))

(declare-fun m!2859799 () Bool)

(assert (=> b!2494776 m!2859799))

(assert (=> b!2494776 m!2859799))

(declare-fun m!2859801 () Bool)

(assert (=> b!2494776 m!2859801))

(declare-fun m!2859803 () Bool)

(assert (=> b!2494776 m!2859803))

(assert (=> b!2494776 m!2859799))

(declare-fun m!2859805 () Bool)

(assert (=> b!2494776 m!2859805))

(assert (=> b!2494712 d!714727))

(declare-fun d!714731 () Bool)

(assert (=> d!714731 (isDefined!4622 (findConcatSeparation!822 lt!894406 lt!894405 Nil!29336 tl!4068 tl!4068))))

(declare-fun lt!894425 () Unit!43011)

(declare-fun choose!14736 (Regex!7371 Regex!7371 List!29436) Unit!43011)

(assert (=> d!714731 (= lt!894425 (choose!14736 lt!894406 lt!894405 tl!4068))))

(assert (=> d!714731 (validRegex!2997 lt!894406)))

(assert (=> d!714731 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!104 lt!894406 lt!894405 tl!4068) lt!894425)))

(declare-fun bs!468436 () Bool)

(assert (= bs!468436 d!714731))

(assert (=> bs!468436 m!2859755))

(assert (=> bs!468436 m!2859755))

(assert (=> bs!468436 m!2859757))

(declare-fun m!2859807 () Bool)

(assert (=> bs!468436 m!2859807))

(assert (=> bs!468436 m!2859793))

(assert (=> b!2494712 d!714731))

(declare-fun b!2494839 () Bool)

(declare-fun e!1583162 () Bool)

(assert (=> b!2494839 (= e!1583162 (nullable!2288 lt!894408))))

(declare-fun b!2494840 () Bool)

(declare-fun res!1055220 () Bool)

(declare-fun e!1583167 () Bool)

(assert (=> b!2494840 (=> res!1055220 e!1583167)))

(declare-fun e!1583165 () Bool)

(assert (=> b!2494840 (= res!1055220 e!1583165)))

(declare-fun res!1055215 () Bool)

(assert (=> b!2494840 (=> (not res!1055215) (not e!1583165))))

(declare-fun lt!894429 () Bool)

(assert (=> b!2494840 (= res!1055215 lt!894429)))

(declare-fun b!2494841 () Bool)

(declare-fun res!1055214 () Bool)

(assert (=> b!2494841 (=> (not res!1055214) (not e!1583165))))

(declare-fun call!153681 () Bool)

(assert (=> b!2494841 (= res!1055214 (not call!153681))))

(declare-fun bm!153676 () Bool)

(declare-fun isEmpty!16803 (List!29436) Bool)

(assert (=> bm!153676 (= call!153681 (isEmpty!16803 Nil!29336))))

(declare-fun b!2494843 () Bool)

(declare-fun res!1055217 () Bool)

(assert (=> b!2494843 (=> (not res!1055217) (not e!1583165))))

(declare-fun tail!3955 (List!29436) List!29436)

(assert (=> b!2494843 (= res!1055217 (isEmpty!16803 (tail!3955 Nil!29336)))))

(declare-fun b!2494844 () Bool)

(declare-fun e!1583161 () Bool)

(declare-fun head!5678 (List!29436) C!14900)

(assert (=> b!2494844 (= e!1583161 (not (= (head!5678 Nil!29336) (c!396659 lt!894408))))))

(declare-fun b!2494845 () Bool)

(declare-fun e!1583166 () Bool)

(assert (=> b!2494845 (= e!1583166 (not lt!894429))))

(declare-fun b!2494846 () Bool)

(declare-fun e!1583163 () Bool)

(assert (=> b!2494846 (= e!1583163 (= lt!894429 call!153681))))

(declare-fun b!2494847 () Bool)

(assert (=> b!2494847 (= e!1583162 (matchR!3380 (derivativeStep!1940 lt!894408 (head!5678 Nil!29336)) (tail!3955 Nil!29336)))))

(declare-fun b!2494848 () Bool)

(assert (=> b!2494848 (= e!1583163 e!1583166)))

(declare-fun c!396697 () Bool)

(assert (=> b!2494848 (= c!396697 ((_ is EmptyLang!7371) lt!894408))))

(declare-fun b!2494849 () Bool)

(declare-fun e!1583164 () Bool)

(assert (=> b!2494849 (= e!1583164 e!1583161)))

(declare-fun res!1055219 () Bool)

(assert (=> b!2494849 (=> res!1055219 e!1583161)))

(assert (=> b!2494849 (= res!1055219 call!153681)))

(declare-fun b!2494850 () Bool)

(declare-fun res!1055218 () Bool)

(assert (=> b!2494850 (=> res!1055218 e!1583161)))

(assert (=> b!2494850 (= res!1055218 (not (isEmpty!16803 (tail!3955 Nil!29336))))))

(declare-fun b!2494851 () Bool)

(assert (=> b!2494851 (= e!1583167 e!1583164)))

(declare-fun res!1055213 () Bool)

(assert (=> b!2494851 (=> (not res!1055213) (not e!1583164))))

(assert (=> b!2494851 (= res!1055213 (not lt!894429))))

(declare-fun b!2494852 () Bool)

(assert (=> b!2494852 (= e!1583165 (= (head!5678 Nil!29336) (c!396659 lt!894408)))))

(declare-fun b!2494842 () Bool)

(declare-fun res!1055216 () Bool)

(assert (=> b!2494842 (=> res!1055216 e!1583167)))

(assert (=> b!2494842 (= res!1055216 (not ((_ is ElementMatch!7371) lt!894408)))))

(assert (=> b!2494842 (= e!1583166 e!1583167)))

(declare-fun d!714733 () Bool)

(assert (=> d!714733 e!1583163))

(declare-fun c!396696 () Bool)

(assert (=> d!714733 (= c!396696 ((_ is EmptyExpr!7371) lt!894408))))

(assert (=> d!714733 (= lt!894429 e!1583162)))

(declare-fun c!396698 () Bool)

(assert (=> d!714733 (= c!396698 (isEmpty!16803 Nil!29336))))

(assert (=> d!714733 (validRegex!2997 lt!894408)))

(assert (=> d!714733 (= (matchR!3380 lt!894408 Nil!29336) lt!894429)))

(assert (= (and d!714733 c!396698) b!2494839))

(assert (= (and d!714733 (not c!396698)) b!2494847))

(assert (= (and d!714733 c!396696) b!2494846))

(assert (= (and d!714733 (not c!396696)) b!2494848))

(assert (= (and b!2494848 c!396697) b!2494845))

(assert (= (and b!2494848 (not c!396697)) b!2494842))

(assert (= (and b!2494842 (not res!1055216)) b!2494840))

(assert (= (and b!2494840 res!1055215) b!2494841))

(assert (= (and b!2494841 res!1055214) b!2494843))

(assert (= (and b!2494843 res!1055217) b!2494852))

(assert (= (and b!2494840 (not res!1055220)) b!2494851))

(assert (= (and b!2494851 res!1055213) b!2494849))

(assert (= (and b!2494849 (not res!1055219)) b!2494850))

(assert (= (and b!2494850 (not res!1055218)) b!2494844))

(assert (= (or b!2494846 b!2494841 b!2494849) bm!153676))

(declare-fun m!2859817 () Bool)

(assert (=> b!2494843 m!2859817))

(assert (=> b!2494843 m!2859817))

(declare-fun m!2859819 () Bool)

(assert (=> b!2494843 m!2859819))

(declare-fun m!2859821 () Bool)

(assert (=> b!2494844 m!2859821))

(assert (=> b!2494847 m!2859821))

(assert (=> b!2494847 m!2859821))

(declare-fun m!2859823 () Bool)

(assert (=> b!2494847 m!2859823))

(assert (=> b!2494847 m!2859817))

(assert (=> b!2494847 m!2859823))

(assert (=> b!2494847 m!2859817))

(declare-fun m!2859825 () Bool)

(assert (=> b!2494847 m!2859825))

(declare-fun m!2859827 () Bool)

(assert (=> d!714733 m!2859827))

(declare-fun m!2859829 () Bool)

(assert (=> d!714733 m!2859829))

(assert (=> b!2494852 m!2859821))

(assert (=> bm!153676 m!2859827))

(assert (=> b!2494839 m!2859747))

(assert (=> b!2494850 m!2859817))

(assert (=> b!2494850 m!2859817))

(assert (=> b!2494850 m!2859819))

(assert (=> b!2494713 d!714733))

(declare-fun b!2494853 () Bool)

(declare-fun e!1583169 () Bool)

(assert (=> b!2494853 (= e!1583169 (nullable!2288 lt!894407))))

(declare-fun b!2494854 () Bool)

(declare-fun res!1055228 () Bool)

(declare-fun e!1583174 () Bool)

(assert (=> b!2494854 (=> res!1055228 e!1583174)))

(declare-fun e!1583172 () Bool)

(assert (=> b!2494854 (= res!1055228 e!1583172)))

(declare-fun res!1055223 () Bool)

(assert (=> b!2494854 (=> (not res!1055223) (not e!1583172))))

(declare-fun lt!894430 () Bool)

(assert (=> b!2494854 (= res!1055223 lt!894430)))

(declare-fun b!2494855 () Bool)

(declare-fun res!1055222 () Bool)

(assert (=> b!2494855 (=> (not res!1055222) (not e!1583172))))

(declare-fun call!153682 () Bool)

(assert (=> b!2494855 (= res!1055222 (not call!153682))))

(declare-fun bm!153677 () Bool)

(assert (=> bm!153677 (= call!153682 (isEmpty!16803 tl!4068))))

(declare-fun b!2494857 () Bool)

(declare-fun res!1055225 () Bool)

(assert (=> b!2494857 (=> (not res!1055225) (not e!1583172))))

(assert (=> b!2494857 (= res!1055225 (isEmpty!16803 (tail!3955 tl!4068)))))

(declare-fun b!2494858 () Bool)

(declare-fun e!1583168 () Bool)

(assert (=> b!2494858 (= e!1583168 (not (= (head!5678 tl!4068) (c!396659 lt!894407))))))

(declare-fun b!2494859 () Bool)

(declare-fun e!1583173 () Bool)

(assert (=> b!2494859 (= e!1583173 (not lt!894430))))

(declare-fun b!2494860 () Bool)

(declare-fun e!1583170 () Bool)

(assert (=> b!2494860 (= e!1583170 (= lt!894430 call!153682))))

(declare-fun b!2494861 () Bool)

(assert (=> b!2494861 (= e!1583169 (matchR!3380 (derivativeStep!1940 lt!894407 (head!5678 tl!4068)) (tail!3955 tl!4068)))))

(declare-fun b!2494862 () Bool)

(assert (=> b!2494862 (= e!1583170 e!1583173)))

(declare-fun c!396700 () Bool)

(assert (=> b!2494862 (= c!396700 ((_ is EmptyLang!7371) lt!894407))))

(declare-fun b!2494863 () Bool)

(declare-fun e!1583171 () Bool)

(assert (=> b!2494863 (= e!1583171 e!1583168)))

(declare-fun res!1055227 () Bool)

(assert (=> b!2494863 (=> res!1055227 e!1583168)))

(assert (=> b!2494863 (= res!1055227 call!153682)))

(declare-fun b!2494864 () Bool)

(declare-fun res!1055226 () Bool)

(assert (=> b!2494864 (=> res!1055226 e!1583168)))

(assert (=> b!2494864 (= res!1055226 (not (isEmpty!16803 (tail!3955 tl!4068))))))

(declare-fun b!2494865 () Bool)

(assert (=> b!2494865 (= e!1583174 e!1583171)))

(declare-fun res!1055221 () Bool)

(assert (=> b!2494865 (=> (not res!1055221) (not e!1583171))))

(assert (=> b!2494865 (= res!1055221 (not lt!894430))))

(declare-fun b!2494866 () Bool)

(assert (=> b!2494866 (= e!1583172 (= (head!5678 tl!4068) (c!396659 lt!894407)))))

(declare-fun b!2494856 () Bool)

(declare-fun res!1055224 () Bool)

(assert (=> b!2494856 (=> res!1055224 e!1583174)))

(assert (=> b!2494856 (= res!1055224 (not ((_ is ElementMatch!7371) lt!894407)))))

(assert (=> b!2494856 (= e!1583173 e!1583174)))

(declare-fun d!714737 () Bool)

(assert (=> d!714737 e!1583170))

(declare-fun c!396699 () Bool)

(assert (=> d!714737 (= c!396699 ((_ is EmptyExpr!7371) lt!894407))))

(assert (=> d!714737 (= lt!894430 e!1583169)))

(declare-fun c!396701 () Bool)

(assert (=> d!714737 (= c!396701 (isEmpty!16803 tl!4068))))

(assert (=> d!714737 (validRegex!2997 lt!894407)))

(assert (=> d!714737 (= (matchR!3380 lt!894407 tl!4068) lt!894430)))

(assert (= (and d!714737 c!396701) b!2494853))

(assert (= (and d!714737 (not c!396701)) b!2494861))

(assert (= (and d!714737 c!396699) b!2494860))

(assert (= (and d!714737 (not c!396699)) b!2494862))

(assert (= (and b!2494862 c!396700) b!2494859))

(assert (= (and b!2494862 (not c!396700)) b!2494856))

(assert (= (and b!2494856 (not res!1055224)) b!2494854))

(assert (= (and b!2494854 res!1055223) b!2494855))

(assert (= (and b!2494855 res!1055222) b!2494857))

(assert (= (and b!2494857 res!1055225) b!2494866))

(assert (= (and b!2494854 (not res!1055228)) b!2494865))

(assert (= (and b!2494865 res!1055221) b!2494863))

(assert (= (and b!2494863 (not res!1055227)) b!2494864))

(assert (= (and b!2494864 (not res!1055226)) b!2494858))

(assert (= (or b!2494860 b!2494855 b!2494863) bm!153677))

(declare-fun m!2859831 () Bool)

(assert (=> b!2494857 m!2859831))

(assert (=> b!2494857 m!2859831))

(declare-fun m!2859833 () Bool)

(assert (=> b!2494857 m!2859833))

(declare-fun m!2859835 () Bool)

(assert (=> b!2494858 m!2859835))

(assert (=> b!2494861 m!2859835))

(assert (=> b!2494861 m!2859835))

(declare-fun m!2859837 () Bool)

(assert (=> b!2494861 m!2859837))

(assert (=> b!2494861 m!2859831))

(assert (=> b!2494861 m!2859837))

(assert (=> b!2494861 m!2859831))

(declare-fun m!2859839 () Bool)

(assert (=> b!2494861 m!2859839))

(declare-fun m!2859841 () Bool)

(assert (=> d!714737 m!2859841))

(declare-fun m!2859843 () Bool)

(assert (=> d!714737 m!2859843))

(assert (=> b!2494866 m!2859835))

(assert (=> bm!153677 m!2859841))

(declare-fun m!2859845 () Bool)

(assert (=> b!2494853 m!2859845))

(assert (=> b!2494864 m!2859831))

(assert (=> b!2494864 m!2859831))

(assert (=> b!2494864 m!2859833))

(assert (=> b!2494713 d!714737))

(declare-fun d!714739 () Bool)

(assert (=> d!714739 (= (matchR!3380 lt!894407 tl!4068) (matchR!3380 (derivative!66 lt!894407 tl!4068) Nil!29336))))

(declare-fun lt!894433 () Unit!43011)

(declare-fun choose!14737 (Regex!7371 List!29436) Unit!43011)

(assert (=> d!714739 (= lt!894433 (choose!14737 lt!894407 tl!4068))))

(assert (=> d!714739 (validRegex!2997 lt!894407)))

(assert (=> d!714739 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!26 lt!894407 tl!4068) lt!894433)))

(declare-fun bs!468437 () Bool)

(assert (= bs!468437 d!714739))

(assert (=> bs!468437 m!2859739))

(assert (=> bs!468437 m!2859749))

(declare-fun m!2859847 () Bool)

(assert (=> bs!468437 m!2859847))

(assert (=> bs!468437 m!2859749))

(declare-fun m!2859849 () Bool)

(assert (=> bs!468437 m!2859849))

(assert (=> bs!468437 m!2859843))

(assert (=> b!2494713 d!714739))

(declare-fun d!714741 () Bool)

(declare-fun nullableFct!570 (Regex!7371) Bool)

(assert (=> d!714741 (= (nullable!2288 (derivative!66 lt!894406 tl!4068)) (nullableFct!570 (derivative!66 lt!894406 tl!4068)))))

(declare-fun bs!468438 () Bool)

(assert (= bs!468438 d!714741))

(assert (=> bs!468438 m!2859743))

(declare-fun m!2859851 () Bool)

(assert (=> bs!468438 m!2859851))

(assert (=> b!2494718 d!714741))

(declare-fun d!714743 () Bool)

(declare-fun lt!894436 () Regex!7371)

(assert (=> d!714743 (validRegex!2997 lt!894436)))

(declare-fun e!1583191 () Regex!7371)

(assert (=> d!714743 (= lt!894436 e!1583191)))

(declare-fun c!396708 () Bool)

(assert (=> d!714743 (= c!396708 ((_ is Cons!29336) tl!4068))))

(assert (=> d!714743 (validRegex!2997 lt!894406)))

(assert (=> d!714743 (= (derivative!66 lt!894406 tl!4068) lt!894436)))

(declare-fun b!2494889 () Bool)

(assert (=> b!2494889 (= e!1583191 (derivative!66 (derivativeStep!1940 lt!894406 (h!34756 tl!4068)) (t!211135 tl!4068)))))

(declare-fun b!2494890 () Bool)

(assert (=> b!2494890 (= e!1583191 lt!894406)))

(assert (= (and d!714743 c!396708) b!2494889))

(assert (= (and d!714743 (not c!396708)) b!2494890))

(declare-fun m!2859853 () Bool)

(assert (=> d!714743 m!2859853))

(assert (=> d!714743 m!2859793))

(declare-fun m!2859855 () Bool)

(assert (=> b!2494889 m!2859855))

(assert (=> b!2494889 m!2859855))

(declare-fun m!2859857 () Bool)

(assert (=> b!2494889 m!2859857))

(assert (=> b!2494718 d!714743))

(declare-fun bm!153702 () Bool)

(declare-fun call!153708 () Regex!7371)

(declare-fun call!153707 () Regex!7371)

(assert (=> bm!153702 (= call!153708 call!153707)))

(declare-fun b!2494939 () Bool)

(declare-fun e!1583222 () Regex!7371)

(declare-fun call!153709 () Regex!7371)

(assert (=> b!2494939 (= e!1583222 (Union!7371 (Concat!12067 call!153709 (regTwo!15254 (reg!7700 r!27340))) EmptyLang!7371))))

(declare-fun b!2494940 () Bool)

(declare-fun call!153710 () Regex!7371)

(assert (=> b!2494940 (= e!1583222 (Union!7371 (Concat!12067 call!153709 (regTwo!15254 (reg!7700 r!27340))) call!153710))))

(declare-fun c!396731 () Bool)

(declare-fun bm!153703 () Bool)

(assert (=> bm!153703 (= call!153710 (derivativeStep!1940 (ite c!396731 (regTwo!15255 (reg!7700 r!27340)) (regTwo!15254 (reg!7700 r!27340))) c!14016))))

(declare-fun bm!153704 () Bool)

(assert (=> bm!153704 (= call!153709 call!153708)))

(declare-fun b!2494941 () Bool)

(assert (=> b!2494941 (= c!396731 ((_ is Union!7371) (reg!7700 r!27340)))))

(declare-fun e!1583223 () Regex!7371)

(declare-fun e!1583221 () Regex!7371)

(assert (=> b!2494941 (= e!1583223 e!1583221)))

(declare-fun b!2494942 () Bool)

(declare-fun e!1583225 () Regex!7371)

(assert (=> b!2494942 (= e!1583225 e!1583223)))

(declare-fun c!396729 () Bool)

(assert (=> b!2494942 (= c!396729 ((_ is ElementMatch!7371) (reg!7700 r!27340)))))

(declare-fun b!2494943 () Bool)

(assert (=> b!2494943 (= e!1583223 (ite (= c!14016 (c!396659 (reg!7700 r!27340))) EmptyExpr!7371 EmptyLang!7371))))

(declare-fun b!2494944 () Bool)

(declare-fun e!1583224 () Regex!7371)

(assert (=> b!2494944 (= e!1583221 e!1583224)))

(declare-fun c!396730 () Bool)

(assert (=> b!2494944 (= c!396730 ((_ is Star!7371) (reg!7700 r!27340)))))

(declare-fun b!2494945 () Bool)

(assert (=> b!2494945 (= e!1583225 EmptyLang!7371)))

(declare-fun b!2494946 () Bool)

(assert (=> b!2494946 (= e!1583224 (Concat!12067 call!153708 (reg!7700 r!27340)))))

(declare-fun b!2494947 () Bool)

(declare-fun c!396728 () Bool)

(assert (=> b!2494947 (= c!396728 (nullable!2288 (regOne!15254 (reg!7700 r!27340))))))

(assert (=> b!2494947 (= e!1583224 e!1583222)))

(declare-fun b!2494948 () Bool)

(assert (=> b!2494948 (= e!1583221 (Union!7371 call!153707 call!153710))))

(declare-fun d!714745 () Bool)

(declare-fun lt!894440 () Regex!7371)

(assert (=> d!714745 (validRegex!2997 lt!894440)))

(assert (=> d!714745 (= lt!894440 e!1583225)))

(declare-fun c!396732 () Bool)

(assert (=> d!714745 (= c!396732 (or ((_ is EmptyExpr!7371) (reg!7700 r!27340)) ((_ is EmptyLang!7371) (reg!7700 r!27340))))))

(assert (=> d!714745 (validRegex!2997 (reg!7700 r!27340))))

(assert (=> d!714745 (= (derivativeStep!1940 (reg!7700 r!27340) c!14016) lt!894440)))

(declare-fun bm!153705 () Bool)

(assert (=> bm!153705 (= call!153707 (derivativeStep!1940 (ite c!396731 (regOne!15255 (reg!7700 r!27340)) (ite c!396730 (reg!7700 (reg!7700 r!27340)) (regOne!15254 (reg!7700 r!27340)))) c!14016))))

(assert (= (and d!714745 c!396732) b!2494945))

(assert (= (and d!714745 (not c!396732)) b!2494942))

(assert (= (and b!2494942 c!396729) b!2494943))

(assert (= (and b!2494942 (not c!396729)) b!2494941))

(assert (= (and b!2494941 c!396731) b!2494948))

(assert (= (and b!2494941 (not c!396731)) b!2494944))

(assert (= (and b!2494944 c!396730) b!2494946))

(assert (= (and b!2494944 (not c!396730)) b!2494947))

(assert (= (and b!2494947 c!396728) b!2494940))

(assert (= (and b!2494947 (not c!396728)) b!2494939))

(assert (= (or b!2494940 b!2494939) bm!153704))

(assert (= (or b!2494946 bm!153704) bm!153702))

(assert (= (or b!2494948 b!2494940) bm!153703))

(assert (= (or b!2494948 bm!153702) bm!153705))

(declare-fun m!2859881 () Bool)

(assert (=> bm!153703 m!2859881))

(declare-fun m!2859883 () Bool)

(assert (=> b!2494947 m!2859883))

(declare-fun m!2859885 () Bool)

(assert (=> d!714745 m!2859885))

(assert (=> d!714745 m!2859753))

(declare-fun m!2859887 () Bool)

(assert (=> bm!153705 m!2859887))

(assert (=> b!2494717 d!714745))

(declare-fun bm!153706 () Bool)

(declare-fun call!153713 () Bool)

(declare-fun c!396733 () Bool)

(assert (=> bm!153706 (= call!153713 (validRegex!2997 (ite c!396733 (regOne!15255 r!27340) (regTwo!15254 r!27340))))))

(declare-fun b!2494949 () Bool)

(declare-fun e!1583231 () Bool)

(assert (=> b!2494949 (= e!1583231 call!153713)))

(declare-fun bm!153707 () Bool)

(declare-fun call!153711 () Bool)

(declare-fun c!396734 () Bool)

(assert (=> bm!153707 (= call!153711 (validRegex!2997 (ite c!396734 (reg!7700 r!27340) (ite c!396733 (regTwo!15255 r!27340) (regOne!15254 r!27340)))))))

(declare-fun b!2494950 () Bool)

(declare-fun e!1583229 () Bool)

(assert (=> b!2494950 (= e!1583229 e!1583231)))

(declare-fun res!1055250 () Bool)

(assert (=> b!2494950 (=> (not res!1055250) (not e!1583231))))

(declare-fun call!153712 () Bool)

(assert (=> b!2494950 (= res!1055250 call!153712)))

(declare-fun b!2494951 () Bool)

(declare-fun e!1583227 () Bool)

(declare-fun e!1583230 () Bool)

(assert (=> b!2494951 (= e!1583227 e!1583230)))

(assert (=> b!2494951 (= c!396734 ((_ is Star!7371) r!27340))))

(declare-fun d!714755 () Bool)

(declare-fun res!1055252 () Bool)

(assert (=> d!714755 (=> res!1055252 e!1583227)))

(assert (=> d!714755 (= res!1055252 ((_ is ElementMatch!7371) r!27340))))

(assert (=> d!714755 (= (validRegex!2997 r!27340) e!1583227)))

(declare-fun b!2494952 () Bool)

(declare-fun e!1583232 () Bool)

(assert (=> b!2494952 (= e!1583230 e!1583232)))

(declare-fun res!1055249 () Bool)

(assert (=> b!2494952 (= res!1055249 (not (nullable!2288 (reg!7700 r!27340))))))

(assert (=> b!2494952 (=> (not res!1055249) (not e!1583232))))

(declare-fun bm!153708 () Bool)

(assert (=> bm!153708 (= call!153712 call!153711)))

(declare-fun b!2494953 () Bool)

(declare-fun res!1055253 () Bool)

(declare-fun e!1583226 () Bool)

(assert (=> b!2494953 (=> (not res!1055253) (not e!1583226))))

(assert (=> b!2494953 (= res!1055253 call!153713)))

(declare-fun e!1583228 () Bool)

(assert (=> b!2494953 (= e!1583228 e!1583226)))

(declare-fun b!2494954 () Bool)

(assert (=> b!2494954 (= e!1583232 call!153711)))

(declare-fun b!2494955 () Bool)

(assert (=> b!2494955 (= e!1583230 e!1583228)))

(assert (=> b!2494955 (= c!396733 ((_ is Union!7371) r!27340))))

(declare-fun b!2494956 () Bool)

(assert (=> b!2494956 (= e!1583226 call!153712)))

(declare-fun b!2494957 () Bool)

(declare-fun res!1055251 () Bool)

(assert (=> b!2494957 (=> res!1055251 e!1583229)))

(assert (=> b!2494957 (= res!1055251 (not ((_ is Concat!12067) r!27340)))))

(assert (=> b!2494957 (= e!1583228 e!1583229)))

(assert (= (and d!714755 (not res!1055252)) b!2494951))

(assert (= (and b!2494951 c!396734) b!2494952))

(assert (= (and b!2494951 (not c!396734)) b!2494955))

(assert (= (and b!2494952 res!1055249) b!2494954))

(assert (= (and b!2494955 c!396733) b!2494953))

(assert (= (and b!2494955 (not c!396733)) b!2494957))

(assert (= (and b!2494953 res!1055253) b!2494956))

(assert (= (and b!2494957 (not res!1055251)) b!2494950))

(assert (= (and b!2494950 res!1055250) b!2494949))

(assert (= (or b!2494953 b!2494949) bm!153706))

(assert (= (or b!2494956 b!2494950) bm!153708))

(assert (= (or b!2494954 bm!153708) bm!153707))

(declare-fun m!2859889 () Bool)

(assert (=> bm!153706 m!2859889))

(declare-fun m!2859891 () Bool)

(assert (=> bm!153707 m!2859891))

(declare-fun m!2859893 () Bool)

(assert (=> b!2494952 m!2859893))

(assert (=> start!243652 d!714755))

(declare-fun d!714757 () Bool)

(assert (=> d!714757 (= (nullable!2288 lt!894408) (nullableFct!570 lt!894408))))

(declare-fun bs!468440 () Bool)

(assert (= bs!468440 d!714757))

(declare-fun m!2859895 () Bool)

(assert (=> bs!468440 m!2859895))

(assert (=> b!2494710 d!714757))

(declare-fun d!714759 () Bool)

(declare-fun lt!894441 () Regex!7371)

(assert (=> d!714759 (validRegex!2997 lt!894441)))

(declare-fun e!1583233 () Regex!7371)

(assert (=> d!714759 (= lt!894441 e!1583233)))

(declare-fun c!396735 () Bool)

(assert (=> d!714759 (= c!396735 ((_ is Cons!29336) tl!4068))))

(assert (=> d!714759 (validRegex!2997 lt!894407)))

(assert (=> d!714759 (= (derivative!66 lt!894407 tl!4068) lt!894441)))

(declare-fun b!2494958 () Bool)

(assert (=> b!2494958 (= e!1583233 (derivative!66 (derivativeStep!1940 lt!894407 (h!34756 tl!4068)) (t!211135 tl!4068)))))

(declare-fun b!2494959 () Bool)

(assert (=> b!2494959 (= e!1583233 lt!894407)))

(assert (= (and d!714759 c!396735) b!2494958))

(assert (= (and d!714759 (not c!396735)) b!2494959))

(declare-fun m!2859897 () Bool)

(assert (=> d!714759 m!2859897))

(assert (=> d!714759 m!2859843))

(declare-fun m!2859899 () Bool)

(assert (=> b!2494958 m!2859899))

(assert (=> b!2494958 m!2859899))

(declare-fun m!2859901 () Bool)

(assert (=> b!2494958 m!2859901))

(assert (=> b!2494710 d!714759))

(declare-fun bm!153709 () Bool)

(declare-fun call!153715 () Regex!7371)

(declare-fun call!153714 () Regex!7371)

(assert (=> bm!153709 (= call!153715 call!153714)))

(declare-fun b!2494960 () Bool)

(declare-fun e!1583235 () Regex!7371)

(declare-fun call!153716 () Regex!7371)

(assert (=> b!2494960 (= e!1583235 (Union!7371 (Concat!12067 call!153716 (regTwo!15254 r!27340)) EmptyLang!7371))))

(declare-fun call!153717 () Regex!7371)

(declare-fun b!2494961 () Bool)

(assert (=> b!2494961 (= e!1583235 (Union!7371 (Concat!12067 call!153716 (regTwo!15254 r!27340)) call!153717))))

(declare-fun c!396739 () Bool)

(declare-fun bm!153710 () Bool)

(assert (=> bm!153710 (= call!153717 (derivativeStep!1940 (ite c!396739 (regTwo!15255 r!27340) (regTwo!15254 r!27340)) c!14016))))

(declare-fun bm!153711 () Bool)

(assert (=> bm!153711 (= call!153716 call!153715)))

(declare-fun b!2494962 () Bool)

(assert (=> b!2494962 (= c!396739 ((_ is Union!7371) r!27340))))

(declare-fun e!1583236 () Regex!7371)

(declare-fun e!1583234 () Regex!7371)

(assert (=> b!2494962 (= e!1583236 e!1583234)))

(declare-fun b!2494963 () Bool)

(declare-fun e!1583238 () Regex!7371)

(assert (=> b!2494963 (= e!1583238 e!1583236)))

(declare-fun c!396737 () Bool)

(assert (=> b!2494963 (= c!396737 ((_ is ElementMatch!7371) r!27340))))

(declare-fun b!2494964 () Bool)

(assert (=> b!2494964 (= e!1583236 (ite (= c!14016 (c!396659 r!27340)) EmptyExpr!7371 EmptyLang!7371))))

(declare-fun b!2494965 () Bool)

(declare-fun e!1583237 () Regex!7371)

(assert (=> b!2494965 (= e!1583234 e!1583237)))

(declare-fun c!396738 () Bool)

(assert (=> b!2494965 (= c!396738 ((_ is Star!7371) r!27340))))

(declare-fun b!2494966 () Bool)

(assert (=> b!2494966 (= e!1583238 EmptyLang!7371)))

(declare-fun b!2494967 () Bool)

(assert (=> b!2494967 (= e!1583237 (Concat!12067 call!153715 r!27340))))

(declare-fun b!2494968 () Bool)

(declare-fun c!396736 () Bool)

(assert (=> b!2494968 (= c!396736 (nullable!2288 (regOne!15254 r!27340)))))

(assert (=> b!2494968 (= e!1583237 e!1583235)))

(declare-fun b!2494969 () Bool)

(assert (=> b!2494969 (= e!1583234 (Union!7371 call!153714 call!153717))))

(declare-fun d!714761 () Bool)

(declare-fun lt!894442 () Regex!7371)

(assert (=> d!714761 (validRegex!2997 lt!894442)))

(assert (=> d!714761 (= lt!894442 e!1583238)))

(declare-fun c!396740 () Bool)

(assert (=> d!714761 (= c!396740 (or ((_ is EmptyExpr!7371) r!27340) ((_ is EmptyLang!7371) r!27340)))))

(assert (=> d!714761 (validRegex!2997 r!27340)))

(assert (=> d!714761 (= (derivativeStep!1940 r!27340 c!14016) lt!894442)))

(declare-fun bm!153712 () Bool)

(assert (=> bm!153712 (= call!153714 (derivativeStep!1940 (ite c!396739 (regOne!15255 r!27340) (ite c!396738 (reg!7700 r!27340) (regOne!15254 r!27340))) c!14016))))

(assert (= (and d!714761 c!396740) b!2494966))

(assert (= (and d!714761 (not c!396740)) b!2494963))

(assert (= (and b!2494963 c!396737) b!2494964))

(assert (= (and b!2494963 (not c!396737)) b!2494962))

(assert (= (and b!2494962 c!396739) b!2494969))

(assert (= (and b!2494962 (not c!396739)) b!2494965))

(assert (= (and b!2494965 c!396738) b!2494967))

(assert (= (and b!2494965 (not c!396738)) b!2494968))

(assert (= (and b!2494968 c!396736) b!2494961))

(assert (= (and b!2494968 (not c!396736)) b!2494960))

(assert (= (or b!2494961 b!2494960) bm!153711))

(assert (= (or b!2494967 bm!153711) bm!153709))

(assert (= (or b!2494969 b!2494961) bm!153710))

(assert (= (or b!2494969 bm!153709) bm!153712))

(declare-fun m!2859903 () Bool)

(assert (=> bm!153710 m!2859903))

(declare-fun m!2859905 () Bool)

(assert (=> b!2494968 m!2859905))

(declare-fun m!2859907 () Bool)

(assert (=> d!714761 m!2859907))

(assert (=> d!714761 m!2859761))

(declare-fun m!2859909 () Bool)

(assert (=> bm!153712 m!2859909))

(assert (=> b!2494710 d!714761))

(declare-fun e!1583241 () Bool)

(assert (=> b!2494711 (= tp!799129 e!1583241)))

(declare-fun b!2494982 () Bool)

(declare-fun tp!799144 () Bool)

(assert (=> b!2494982 (= e!1583241 tp!799144)))

(declare-fun b!2494983 () Bool)

(declare-fun tp!799143 () Bool)

(declare-fun tp!799145 () Bool)

(assert (=> b!2494983 (= e!1583241 (and tp!799143 tp!799145))))

(declare-fun b!2494980 () Bool)

(assert (=> b!2494980 (= e!1583241 tp_is_empty!12597)))

(declare-fun b!2494981 () Bool)

(declare-fun tp!799141 () Bool)

(declare-fun tp!799142 () Bool)

(assert (=> b!2494981 (= e!1583241 (and tp!799141 tp!799142))))

(assert (= (and b!2494711 ((_ is ElementMatch!7371) (reg!7700 r!27340))) b!2494980))

(assert (= (and b!2494711 ((_ is Concat!12067) (reg!7700 r!27340))) b!2494981))

(assert (= (and b!2494711 ((_ is Star!7371) (reg!7700 r!27340))) b!2494982))

(assert (= (and b!2494711 ((_ is Union!7371) (reg!7700 r!27340))) b!2494983))

(declare-fun e!1583242 () Bool)

(assert (=> b!2494715 (= tp!799128 e!1583242)))

(declare-fun b!2494986 () Bool)

(declare-fun tp!799149 () Bool)

(assert (=> b!2494986 (= e!1583242 tp!799149)))

(declare-fun b!2494987 () Bool)

(declare-fun tp!799148 () Bool)

(declare-fun tp!799150 () Bool)

(assert (=> b!2494987 (= e!1583242 (and tp!799148 tp!799150))))

(declare-fun b!2494984 () Bool)

(assert (=> b!2494984 (= e!1583242 tp_is_empty!12597)))

(declare-fun b!2494985 () Bool)

(declare-fun tp!799146 () Bool)

(declare-fun tp!799147 () Bool)

(assert (=> b!2494985 (= e!1583242 (and tp!799146 tp!799147))))

(assert (= (and b!2494715 ((_ is ElementMatch!7371) (regOne!15254 r!27340))) b!2494984))

(assert (= (and b!2494715 ((_ is Concat!12067) (regOne!15254 r!27340))) b!2494985))

(assert (= (and b!2494715 ((_ is Star!7371) (regOne!15254 r!27340))) b!2494986))

(assert (= (and b!2494715 ((_ is Union!7371) (regOne!15254 r!27340))) b!2494987))

(declare-fun e!1583243 () Bool)

(assert (=> b!2494715 (= tp!799125 e!1583243)))

(declare-fun b!2494990 () Bool)

(declare-fun tp!799154 () Bool)

(assert (=> b!2494990 (= e!1583243 tp!799154)))

(declare-fun b!2494991 () Bool)

(declare-fun tp!799153 () Bool)

(declare-fun tp!799155 () Bool)

(assert (=> b!2494991 (= e!1583243 (and tp!799153 tp!799155))))

(declare-fun b!2494988 () Bool)

(assert (=> b!2494988 (= e!1583243 tp_is_empty!12597)))

(declare-fun b!2494989 () Bool)

(declare-fun tp!799151 () Bool)

(declare-fun tp!799152 () Bool)

(assert (=> b!2494989 (= e!1583243 (and tp!799151 tp!799152))))

(assert (= (and b!2494715 ((_ is ElementMatch!7371) (regTwo!15254 r!27340))) b!2494988))

(assert (= (and b!2494715 ((_ is Concat!12067) (regTwo!15254 r!27340))) b!2494989))

(assert (= (and b!2494715 ((_ is Star!7371) (regTwo!15254 r!27340))) b!2494990))

(assert (= (and b!2494715 ((_ is Union!7371) (regTwo!15254 r!27340))) b!2494991))

(declare-fun b!2494996 () Bool)

(declare-fun e!1583246 () Bool)

(declare-fun tp!799158 () Bool)

(assert (=> b!2494996 (= e!1583246 (and tp_is_empty!12597 tp!799158))))

(assert (=> b!2494720 (= tp!799126 e!1583246)))

(assert (= (and b!2494720 ((_ is Cons!29336) (t!211135 tl!4068))) b!2494996))

(declare-fun e!1583247 () Bool)

(assert (=> b!2494719 (= tp!799130 e!1583247)))

(declare-fun b!2494999 () Bool)

(declare-fun tp!799162 () Bool)

(assert (=> b!2494999 (= e!1583247 tp!799162)))

(declare-fun b!2495000 () Bool)

(declare-fun tp!799161 () Bool)

(declare-fun tp!799163 () Bool)

(assert (=> b!2495000 (= e!1583247 (and tp!799161 tp!799163))))

(declare-fun b!2494997 () Bool)

(assert (=> b!2494997 (= e!1583247 tp_is_empty!12597)))

(declare-fun b!2494998 () Bool)

(declare-fun tp!799159 () Bool)

(declare-fun tp!799160 () Bool)

(assert (=> b!2494998 (= e!1583247 (and tp!799159 tp!799160))))

(assert (= (and b!2494719 ((_ is ElementMatch!7371) (regOne!15255 r!27340))) b!2494997))

(assert (= (and b!2494719 ((_ is Concat!12067) (regOne!15255 r!27340))) b!2494998))

(assert (= (and b!2494719 ((_ is Star!7371) (regOne!15255 r!27340))) b!2494999))

(assert (= (and b!2494719 ((_ is Union!7371) (regOne!15255 r!27340))) b!2495000))

(declare-fun e!1583248 () Bool)

(assert (=> b!2494719 (= tp!799127 e!1583248)))

(declare-fun b!2495003 () Bool)

(declare-fun tp!799167 () Bool)

(assert (=> b!2495003 (= e!1583248 tp!799167)))

(declare-fun b!2495004 () Bool)

(declare-fun tp!799166 () Bool)

(declare-fun tp!799168 () Bool)

(assert (=> b!2495004 (= e!1583248 (and tp!799166 tp!799168))))

(declare-fun b!2495001 () Bool)

(assert (=> b!2495001 (= e!1583248 tp_is_empty!12597)))

(declare-fun b!2495002 () Bool)

(declare-fun tp!799164 () Bool)

(declare-fun tp!799165 () Bool)

(assert (=> b!2495002 (= e!1583248 (and tp!799164 tp!799165))))

(assert (= (and b!2494719 ((_ is ElementMatch!7371) (regTwo!15255 r!27340))) b!2495001))

(assert (= (and b!2494719 ((_ is Concat!12067) (regTwo!15255 r!27340))) b!2495002))

(assert (= (and b!2494719 ((_ is Star!7371) (regTwo!15255 r!27340))) b!2495003))

(assert (= (and b!2494719 ((_ is Union!7371) (regTwo!15255 r!27340))) b!2495004))

(check-sat (not b!2495000) (not bm!153705) (not bm!153676) (not b!2494839) (not b!2494775) (not b!2494847) (not b!2494952) (not d!714745) tp_is_empty!12597 (not d!714761) (not bm!153707) (not bm!153703) (not d!714733) (not b!2494843) (not b!2494998) (not b!2494852) (not b!2494850) (not b!2494989) (not b!2494782) (not d!714727) (not b!2494781) (not b!2494958) (not b!2494779) (not bm!153677) (not b!2495004) (not b!2494774) (not b!2494864) (not b!2494858) (not bm!153659) (not d!714737) (not d!714741) (not b!2494987) (not b!2495003) (not b!2494844) (not b!2494985) (not b!2494996) (not bm!153710) (not b!2494853) (not d!714759) (not b!2494986) (not b!2495002) (not bm!153712) (not d!714739) (not b!2494981) (not b!2494861) (not d!714743) (not b!2494866) (not b!2494857) (not b!2494991) (not b!2494776) (not bm!153706) (not d!714757) (not b!2494947) (not b!2494999) (not d!714725) (not b!2494889) (not bm!153660) (not b!2494968) (not b!2494983) (not b!2494990) (not b!2494742) (not b!2494982) (not d!714731))
(check-sat)
