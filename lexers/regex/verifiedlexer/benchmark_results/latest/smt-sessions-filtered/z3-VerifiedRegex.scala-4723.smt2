; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244324 () Bool)

(assert start!244324)

(declare-fun b!2503616 () Bool)

(declare-fun res!1058543 () Bool)

(declare-fun e!1587638 () Bool)

(assert (=> b!2503616 (=> (not res!1058543) (not e!1587638))))

(declare-datatypes ((C!15000 0))(
  ( (C!15001 (val!9152 Int)) )
))
(declare-datatypes ((List!29486 0))(
  ( (Nil!29386) (Cons!29386 (h!34806 C!15000) (t!211185 List!29486)) )
))
(declare-fun tl!4068 () List!29486)

(declare-datatypes ((Regex!7421 0))(
  ( (ElementMatch!7421 (c!398501 C!15000)) (Concat!12117 (regOne!15354 Regex!7421) (regTwo!15354 Regex!7421)) (EmptyExpr!7421) (Star!7421 (reg!7750 Regex!7421)) (EmptyLang!7421) (Union!7421 (regOne!15355 Regex!7421) (regTwo!15355 Regex!7421)) )
))
(declare-fun r!27340 () Regex!7421)

(declare-fun c!14016 () C!15000)

(declare-fun nullable!2338 (Regex!7421) Bool)

(declare-fun derivative!116 (Regex!7421 List!29486) Regex!7421)

(declare-fun derivativeStep!1990 (Regex!7421 C!15000) Regex!7421)

(assert (=> b!2503616 (= res!1058543 (nullable!2338 (derivative!116 (derivativeStep!1990 r!27340 c!14016) tl!4068)))))

(declare-fun b!2503617 () Bool)

(declare-fun res!1058548 () Bool)

(declare-fun e!1587633 () Bool)

(assert (=> b!2503617 (=> res!1058548 e!1587633)))

(declare-fun validRegex!3047 (Regex!7421) Bool)

(assert (=> b!2503617 (= res!1058548 (not (validRegex!3047 (regTwo!15354 r!27340))))))

(declare-fun b!2503618 () Bool)

(declare-fun e!1587637 () Bool)

(assert (=> b!2503618 (= e!1587637 e!1587633)))

(declare-fun res!1058550 () Bool)

(assert (=> b!2503618 (=> res!1058550 e!1587633)))

(declare-fun lt!896164 () Regex!7421)

(assert (=> b!2503618 (= res!1058550 (not (validRegex!3047 lt!896164)))))

(declare-datatypes ((tuple2!29420 0))(
  ( (tuple2!29421 (_1!17252 List!29486) (_2!17252 List!29486)) )
))
(declare-datatypes ((Option!5830 0))(
  ( (None!5829) (Some!5829 (v!31760 tuple2!29420)) )
))
(declare-fun isDefined!4652 (Option!5830) Bool)

(declare-fun findConcatSeparation!852 (Regex!7421 Regex!7421 List!29486 List!29486 List!29486) Option!5830)

(assert (=> b!2503618 (isDefined!4652 (findConcatSeparation!852 lt!896164 (regTwo!15354 r!27340) Nil!29386 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43099 0))(
  ( (Unit!43100) )
))
(declare-fun lt!896159 () Unit!43099)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!134 (Regex!7421 Regex!7421 List!29486) Unit!43099)

(assert (=> b!2503618 (= lt!896159 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!134 lt!896164 (regTwo!15354 r!27340) tl!4068))))

(declare-fun b!2503620 () Bool)

(declare-fun e!1587634 () Bool)

(declare-fun lt!896157 () Regex!7421)

(declare-fun matchR!3424 (Regex!7421 List!29486) Bool)

(assert (=> b!2503620 (= e!1587634 (matchR!3424 lt!896157 tl!4068))))

(declare-fun b!2503621 () Bool)

(declare-fun e!1587635 () Bool)

(declare-fun tp!801322 () Bool)

(declare-fun tp!801319 () Bool)

(assert (=> b!2503621 (= e!1587635 (and tp!801322 tp!801319))))

(declare-fun b!2503622 () Bool)

(declare-fun res!1058549 () Bool)

(assert (=> b!2503622 (=> (not res!1058549) (not e!1587638))))

(assert (=> b!2503622 (= res!1058549 (nullable!2338 (regOne!15354 r!27340)))))

(declare-fun b!2503623 () Bool)

(declare-fun tp_is_empty!12697 () Bool)

(assert (=> b!2503623 (= e!1587635 tp_is_empty!12697)))

(declare-fun b!2503624 () Bool)

(declare-fun res!1058547 () Bool)

(assert (=> b!2503624 (=> (not res!1058547) (not e!1587638))))

(get-info :version)

(assert (=> b!2503624 (= res!1058547 (and (not ((_ is EmptyExpr!7421) r!27340)) (not ((_ is EmptyLang!7421) r!27340)) (not ((_ is ElementMatch!7421) r!27340)) (not ((_ is Union!7421) r!27340)) (not ((_ is Star!7421) r!27340))))))

(declare-fun b!2503625 () Bool)

(declare-fun e!1587636 () Bool)

(declare-fun tp!801318 () Bool)

(assert (=> b!2503625 (= e!1587636 (and tp_is_empty!12697 tp!801318))))

(declare-fun b!2503626 () Bool)

(declare-fun tp!801317 () Bool)

(assert (=> b!2503626 (= e!1587635 tp!801317)))

(declare-fun b!2503627 () Bool)

(assert (=> b!2503627 (= e!1587638 (not e!1587637))))

(declare-fun res!1058545 () Bool)

(assert (=> b!2503627 (=> res!1058545 e!1587637)))

(declare-fun lt!896163 () Bool)

(assert (=> b!2503627 (= res!1058545 (not lt!896163))))

(assert (=> b!2503627 e!1587634))

(declare-fun res!1058546 () Bool)

(assert (=> b!2503627 (=> res!1058546 e!1587634)))

(assert (=> b!2503627 (= res!1058546 lt!896163)))

(declare-fun lt!896160 () Regex!7421)

(assert (=> b!2503627 (= lt!896163 (matchR!3424 lt!896160 tl!4068))))

(declare-fun lt!896161 () Unit!43099)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!116 (Regex!7421 Regex!7421 List!29486) Unit!43099)

(assert (=> b!2503627 (= lt!896161 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!116 lt!896160 lt!896157 tl!4068))))

(declare-fun lt!896162 () Regex!7421)

(assert (=> b!2503627 (= (matchR!3424 lt!896162 tl!4068) (matchR!3424 (derivative!116 lt!896162 tl!4068) Nil!29386))))

(declare-fun lt!896158 () Unit!43099)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!70 (Regex!7421 List!29486) Unit!43099)

(assert (=> b!2503627 (= lt!896158 (lemmaMatchRIsSameAsWholeDerivativeAndNil!70 lt!896162 tl!4068))))

(assert (=> b!2503627 (= lt!896162 (Union!7421 lt!896160 lt!896157))))

(assert (=> b!2503627 (= lt!896157 (derivativeStep!1990 (regTwo!15354 r!27340) c!14016))))

(assert (=> b!2503627 (= lt!896160 (Concat!12117 lt!896164 (regTwo!15354 r!27340)))))

(assert (=> b!2503627 (= lt!896164 (derivativeStep!1990 (regOne!15354 r!27340) c!14016))))

(declare-fun b!2503628 () Bool)

(declare-fun ++!7183 (List!29486 List!29486) List!29486)

(assert (=> b!2503628 (= e!1587633 (= (++!7183 Nil!29386 tl!4068) tl!4068))))

(declare-fun res!1058544 () Bool)

(assert (=> start!244324 (=> (not res!1058544) (not e!1587638))))

(assert (=> start!244324 (= res!1058544 (validRegex!3047 r!27340))))

(assert (=> start!244324 e!1587638))

(assert (=> start!244324 e!1587635))

(assert (=> start!244324 tp_is_empty!12697))

(assert (=> start!244324 e!1587636))

(declare-fun b!2503619 () Bool)

(declare-fun tp!801320 () Bool)

(declare-fun tp!801321 () Bool)

(assert (=> b!2503619 (= e!1587635 (and tp!801320 tp!801321))))

(assert (= (and start!244324 res!1058544) b!2503616))

(assert (= (and b!2503616 res!1058543) b!2503624))

(assert (= (and b!2503624 res!1058547) b!2503622))

(assert (= (and b!2503622 res!1058549) b!2503627))

(assert (= (and b!2503627 (not res!1058546)) b!2503620))

(assert (= (and b!2503627 (not res!1058545)) b!2503618))

(assert (= (and b!2503618 (not res!1058550)) b!2503617))

(assert (= (and b!2503617 (not res!1058548)) b!2503628))

(assert (= (and start!244324 ((_ is ElementMatch!7421) r!27340)) b!2503623))

(assert (= (and start!244324 ((_ is Concat!12117) r!27340)) b!2503619))

(assert (= (and start!244324 ((_ is Star!7421) r!27340)) b!2503626))

(assert (= (and start!244324 ((_ is Union!7421) r!27340)) b!2503621))

(assert (= (and start!244324 ((_ is Cons!29386) tl!4068)) b!2503625))

(declare-fun m!2865045 () Bool)

(assert (=> b!2503618 m!2865045))

(declare-fun m!2865047 () Bool)

(assert (=> b!2503618 m!2865047))

(assert (=> b!2503618 m!2865047))

(declare-fun m!2865049 () Bool)

(assert (=> b!2503618 m!2865049))

(declare-fun m!2865051 () Bool)

(assert (=> b!2503618 m!2865051))

(declare-fun m!2865053 () Bool)

(assert (=> b!2503617 m!2865053))

(declare-fun m!2865055 () Bool)

(assert (=> b!2503620 m!2865055))

(declare-fun m!2865057 () Bool)

(assert (=> b!2503622 m!2865057))

(declare-fun m!2865059 () Bool)

(assert (=> start!244324 m!2865059))

(declare-fun m!2865061 () Bool)

(assert (=> b!2503627 m!2865061))

(declare-fun m!2865063 () Bool)

(assert (=> b!2503627 m!2865063))

(declare-fun m!2865065 () Bool)

(assert (=> b!2503627 m!2865065))

(declare-fun m!2865067 () Bool)

(assert (=> b!2503627 m!2865067))

(declare-fun m!2865069 () Bool)

(assert (=> b!2503627 m!2865069))

(declare-fun m!2865071 () Bool)

(assert (=> b!2503627 m!2865071))

(declare-fun m!2865073 () Bool)

(assert (=> b!2503627 m!2865073))

(assert (=> b!2503627 m!2865061))

(declare-fun m!2865075 () Bool)

(assert (=> b!2503627 m!2865075))

(declare-fun m!2865077 () Bool)

(assert (=> b!2503628 m!2865077))

(declare-fun m!2865079 () Bool)

(assert (=> b!2503616 m!2865079))

(assert (=> b!2503616 m!2865079))

(declare-fun m!2865081 () Bool)

(assert (=> b!2503616 m!2865081))

(assert (=> b!2503616 m!2865081))

(declare-fun m!2865083 () Bool)

(assert (=> b!2503616 m!2865083))

(check-sat (not b!2503617) (not b!2503626) (not b!2503627) (not b!2503620) (not b!2503621) (not b!2503622) (not b!2503625) (not start!244324) tp_is_empty!12697 (not b!2503618) (not b!2503619) (not b!2503616) (not b!2503628))
(check-sat)
(get-model)

(declare-fun b!2503684 () Bool)

(declare-fun e!1587675 () Bool)

(assert (=> b!2503684 (= e!1587675 (nullable!2338 lt!896157))))

(declare-fun b!2503685 () Bool)

(declare-fun e!1587679 () Bool)

(declare-fun e!1587676 () Bool)

(assert (=> b!2503685 (= e!1587679 e!1587676)))

(declare-fun c!398516 () Bool)

(assert (=> b!2503685 (= c!398516 ((_ is EmptyLang!7421) lt!896157))))

(declare-fun bm!154844 () Bool)

(declare-fun call!154849 () Bool)

(declare-fun isEmpty!16850 (List!29486) Bool)

(assert (=> bm!154844 (= call!154849 (isEmpty!16850 tl!4068))))

(declare-fun d!715756 () Bool)

(assert (=> d!715756 e!1587679))

(declare-fun c!398514 () Bool)

(assert (=> d!715756 (= c!398514 ((_ is EmptyExpr!7421) lt!896157))))

(declare-fun lt!896167 () Bool)

(assert (=> d!715756 (= lt!896167 e!1587675)))

(declare-fun c!398515 () Bool)

(assert (=> d!715756 (= c!398515 (isEmpty!16850 tl!4068))))

(assert (=> d!715756 (validRegex!3047 lt!896157)))

(assert (=> d!715756 (= (matchR!3424 lt!896157 tl!4068) lt!896167)))

(declare-fun b!2503686 () Bool)

(declare-fun head!5707 (List!29486) C!15000)

(declare-fun tail!3984 (List!29486) List!29486)

(assert (=> b!2503686 (= e!1587675 (matchR!3424 (derivativeStep!1990 lt!896157 (head!5707 tl!4068)) (tail!3984 tl!4068)))))

(declare-fun b!2503687 () Bool)

(assert (=> b!2503687 (= e!1587679 (= lt!896167 call!154849))))

(declare-fun b!2503688 () Bool)

(declare-fun e!1587677 () Bool)

(assert (=> b!2503688 (= e!1587677 (not (= (head!5707 tl!4068) (c!398501 lt!896157))))))

(declare-fun b!2503689 () Bool)

(declare-fun res!1058585 () Bool)

(assert (=> b!2503689 (=> res!1058585 e!1587677)))

(assert (=> b!2503689 (= res!1058585 (not (isEmpty!16850 (tail!3984 tl!4068))))))

(declare-fun b!2503690 () Bool)

(declare-fun res!1058586 () Bool)

(declare-fun e!1587678 () Bool)

(assert (=> b!2503690 (=> (not res!1058586) (not e!1587678))))

(assert (=> b!2503690 (= res!1058586 (isEmpty!16850 (tail!3984 tl!4068)))))

(declare-fun b!2503691 () Bool)

(assert (=> b!2503691 (= e!1587678 (= (head!5707 tl!4068) (c!398501 lt!896157)))))

(declare-fun b!2503692 () Bool)

(declare-fun res!1058584 () Bool)

(declare-fun e!1587680 () Bool)

(assert (=> b!2503692 (=> res!1058584 e!1587680)))

(assert (=> b!2503692 (= res!1058584 e!1587678)))

(declare-fun res!1058589 () Bool)

(assert (=> b!2503692 (=> (not res!1058589) (not e!1587678))))

(assert (=> b!2503692 (= res!1058589 lt!896167)))

(declare-fun b!2503693 () Bool)

(declare-fun e!1587674 () Bool)

(assert (=> b!2503693 (= e!1587674 e!1587677)))

(declare-fun res!1058588 () Bool)

(assert (=> b!2503693 (=> res!1058588 e!1587677)))

(assert (=> b!2503693 (= res!1058588 call!154849)))

(declare-fun b!2503694 () Bool)

(declare-fun res!1058587 () Bool)

(assert (=> b!2503694 (=> (not res!1058587) (not e!1587678))))

(assert (=> b!2503694 (= res!1058587 (not call!154849))))

(declare-fun b!2503695 () Bool)

(assert (=> b!2503695 (= e!1587680 e!1587674)))

(declare-fun res!1058583 () Bool)

(assert (=> b!2503695 (=> (not res!1058583) (not e!1587674))))

(assert (=> b!2503695 (= res!1058583 (not lt!896167))))

(declare-fun b!2503696 () Bool)

(declare-fun res!1058582 () Bool)

(assert (=> b!2503696 (=> res!1058582 e!1587680)))

(assert (=> b!2503696 (= res!1058582 (not ((_ is ElementMatch!7421) lt!896157)))))

(assert (=> b!2503696 (= e!1587676 e!1587680)))

(declare-fun b!2503697 () Bool)

(assert (=> b!2503697 (= e!1587676 (not lt!896167))))

(assert (= (and d!715756 c!398515) b!2503684))

(assert (= (and d!715756 (not c!398515)) b!2503686))

(assert (= (and d!715756 c!398514) b!2503687))

(assert (= (and d!715756 (not c!398514)) b!2503685))

(assert (= (and b!2503685 c!398516) b!2503697))

(assert (= (and b!2503685 (not c!398516)) b!2503696))

(assert (= (and b!2503696 (not res!1058582)) b!2503692))

(assert (= (and b!2503692 res!1058589) b!2503694))

(assert (= (and b!2503694 res!1058587) b!2503690))

(assert (= (and b!2503690 res!1058586) b!2503691))

(assert (= (and b!2503692 (not res!1058584)) b!2503695))

(assert (= (and b!2503695 res!1058583) b!2503693))

(assert (= (and b!2503693 (not res!1058588)) b!2503689))

(assert (= (and b!2503689 (not res!1058585)) b!2503688))

(assert (= (or b!2503687 b!2503693 b!2503694) bm!154844))

(declare-fun m!2865093 () Bool)

(assert (=> b!2503684 m!2865093))

(declare-fun m!2865095 () Bool)

(assert (=> b!2503689 m!2865095))

(assert (=> b!2503689 m!2865095))

(declare-fun m!2865097 () Bool)

(assert (=> b!2503689 m!2865097))

(declare-fun m!2865099 () Bool)

(assert (=> d!715756 m!2865099))

(declare-fun m!2865101 () Bool)

(assert (=> d!715756 m!2865101))

(assert (=> bm!154844 m!2865099))

(declare-fun m!2865103 () Bool)

(assert (=> b!2503686 m!2865103))

(assert (=> b!2503686 m!2865103))

(declare-fun m!2865105 () Bool)

(assert (=> b!2503686 m!2865105))

(assert (=> b!2503686 m!2865095))

(assert (=> b!2503686 m!2865105))

(assert (=> b!2503686 m!2865095))

(declare-fun m!2865107 () Bool)

(assert (=> b!2503686 m!2865107))

(assert (=> b!2503688 m!2865103))

(assert (=> b!2503690 m!2865095))

(assert (=> b!2503690 m!2865095))

(assert (=> b!2503690 m!2865097))

(assert (=> b!2503691 m!2865103))

(assert (=> b!2503620 d!715756))

(declare-fun b!2503716 () Bool)

(declare-fun e!1587699 () Bool)

(declare-fun e!1587698 () Bool)

(assert (=> b!2503716 (= e!1587699 e!1587698)))

(declare-fun c!398521 () Bool)

(assert (=> b!2503716 (= c!398521 ((_ is Union!7421) r!27340))))

(declare-fun bm!154851 () Bool)

(declare-fun call!154856 () Bool)

(declare-fun call!154858 () Bool)

(assert (=> bm!154851 (= call!154856 call!154858)))

(declare-fun b!2503717 () Bool)

(declare-fun e!1587700 () Bool)

(declare-fun call!154857 () Bool)

(assert (=> b!2503717 (= e!1587700 call!154857)))

(declare-fun b!2503718 () Bool)

(declare-fun e!1587701 () Bool)

(assert (=> b!2503718 (= e!1587701 call!154856)))

(declare-fun b!2503719 () Bool)

(declare-fun e!1587695 () Bool)

(assert (=> b!2503719 (= e!1587695 e!1587700)))

(declare-fun res!1058600 () Bool)

(assert (=> b!2503719 (=> (not res!1058600) (not e!1587700))))

(assert (=> b!2503719 (= res!1058600 call!154856)))

(declare-fun b!2503720 () Bool)

(declare-fun e!1587697 () Bool)

(assert (=> b!2503720 (= e!1587697 call!154858)))

(declare-fun b!2503721 () Bool)

(declare-fun e!1587696 () Bool)

(assert (=> b!2503721 (= e!1587696 e!1587699)))

(declare-fun c!398522 () Bool)

(assert (=> b!2503721 (= c!398522 ((_ is Star!7421) r!27340))))

(declare-fun b!2503722 () Bool)

(declare-fun res!1058603 () Bool)

(assert (=> b!2503722 (=> (not res!1058603) (not e!1587701))))

(assert (=> b!2503722 (= res!1058603 call!154857)))

(assert (=> b!2503722 (= e!1587698 e!1587701)))

(declare-fun bm!154852 () Bool)

(assert (=> bm!154852 (= call!154857 (validRegex!3047 (ite c!398521 (regOne!15355 r!27340) (regTwo!15354 r!27340))))))

(declare-fun d!715764 () Bool)

(declare-fun res!1058604 () Bool)

(assert (=> d!715764 (=> res!1058604 e!1587696)))

(assert (=> d!715764 (= res!1058604 ((_ is ElementMatch!7421) r!27340))))

(assert (=> d!715764 (= (validRegex!3047 r!27340) e!1587696)))

(declare-fun b!2503723 () Bool)

(assert (=> b!2503723 (= e!1587699 e!1587697)))

(declare-fun res!1058601 () Bool)

(assert (=> b!2503723 (= res!1058601 (not (nullable!2338 (reg!7750 r!27340))))))

(assert (=> b!2503723 (=> (not res!1058601) (not e!1587697))))

(declare-fun b!2503724 () Bool)

(declare-fun res!1058602 () Bool)

(assert (=> b!2503724 (=> res!1058602 e!1587695)))

(assert (=> b!2503724 (= res!1058602 (not ((_ is Concat!12117) r!27340)))))

(assert (=> b!2503724 (= e!1587698 e!1587695)))

(declare-fun bm!154853 () Bool)

(assert (=> bm!154853 (= call!154858 (validRegex!3047 (ite c!398522 (reg!7750 r!27340) (ite c!398521 (regTwo!15355 r!27340) (regOne!15354 r!27340)))))))

(assert (= (and d!715764 (not res!1058604)) b!2503721))

(assert (= (and b!2503721 c!398522) b!2503723))

(assert (= (and b!2503721 (not c!398522)) b!2503716))

(assert (= (and b!2503723 res!1058601) b!2503720))

(assert (= (and b!2503716 c!398521) b!2503722))

(assert (= (and b!2503716 (not c!398521)) b!2503724))

(assert (= (and b!2503722 res!1058603) b!2503718))

(assert (= (and b!2503724 (not res!1058602)) b!2503719))

(assert (= (and b!2503719 res!1058600) b!2503717))

(assert (= (or b!2503722 b!2503717) bm!154852))

(assert (= (or b!2503718 b!2503719) bm!154851))

(assert (= (or b!2503720 bm!154851) bm!154853))

(declare-fun m!2865109 () Bool)

(assert (=> bm!154852 m!2865109))

(declare-fun m!2865111 () Bool)

(assert (=> b!2503723 m!2865111))

(declare-fun m!2865113 () Bool)

(assert (=> bm!154853 m!2865113))

(assert (=> start!244324 d!715764))

(declare-fun d!715766 () Bool)

(declare-fun nullableFct!604 (Regex!7421) Bool)

(assert (=> d!715766 (= (nullable!2338 (regOne!15354 r!27340)) (nullableFct!604 (regOne!15354 r!27340)))))

(declare-fun bs!468623 () Bool)

(assert (= bs!468623 d!715766))

(declare-fun m!2865115 () Bool)

(assert (=> bs!468623 m!2865115))

(assert (=> b!2503622 d!715766))

(declare-fun b!2503725 () Bool)

(declare-fun e!1587706 () Bool)

(declare-fun e!1587705 () Bool)

(assert (=> b!2503725 (= e!1587706 e!1587705)))

(declare-fun c!398523 () Bool)

(assert (=> b!2503725 (= c!398523 ((_ is Union!7421) (regTwo!15354 r!27340)))))

(declare-fun bm!154854 () Bool)

(declare-fun call!154859 () Bool)

(declare-fun call!154861 () Bool)

(assert (=> bm!154854 (= call!154859 call!154861)))

(declare-fun b!2503726 () Bool)

(declare-fun e!1587707 () Bool)

(declare-fun call!154860 () Bool)

(assert (=> b!2503726 (= e!1587707 call!154860)))

(declare-fun b!2503727 () Bool)

(declare-fun e!1587708 () Bool)

(assert (=> b!2503727 (= e!1587708 call!154859)))

(declare-fun b!2503728 () Bool)

(declare-fun e!1587702 () Bool)

(assert (=> b!2503728 (= e!1587702 e!1587707)))

(declare-fun res!1058605 () Bool)

(assert (=> b!2503728 (=> (not res!1058605) (not e!1587707))))

(assert (=> b!2503728 (= res!1058605 call!154859)))

(declare-fun b!2503729 () Bool)

(declare-fun e!1587704 () Bool)

(assert (=> b!2503729 (= e!1587704 call!154861)))

(declare-fun b!2503730 () Bool)

(declare-fun e!1587703 () Bool)

(assert (=> b!2503730 (= e!1587703 e!1587706)))

(declare-fun c!398524 () Bool)

(assert (=> b!2503730 (= c!398524 ((_ is Star!7421) (regTwo!15354 r!27340)))))

(declare-fun b!2503731 () Bool)

(declare-fun res!1058608 () Bool)

(assert (=> b!2503731 (=> (not res!1058608) (not e!1587708))))

(assert (=> b!2503731 (= res!1058608 call!154860)))

(assert (=> b!2503731 (= e!1587705 e!1587708)))

(declare-fun bm!154855 () Bool)

(assert (=> bm!154855 (= call!154860 (validRegex!3047 (ite c!398523 (regOne!15355 (regTwo!15354 r!27340)) (regTwo!15354 (regTwo!15354 r!27340)))))))

(declare-fun d!715768 () Bool)

(declare-fun res!1058609 () Bool)

(assert (=> d!715768 (=> res!1058609 e!1587703)))

(assert (=> d!715768 (= res!1058609 ((_ is ElementMatch!7421) (regTwo!15354 r!27340)))))

(assert (=> d!715768 (= (validRegex!3047 (regTwo!15354 r!27340)) e!1587703)))

(declare-fun b!2503732 () Bool)

(assert (=> b!2503732 (= e!1587706 e!1587704)))

(declare-fun res!1058606 () Bool)

(assert (=> b!2503732 (= res!1058606 (not (nullable!2338 (reg!7750 (regTwo!15354 r!27340)))))))

(assert (=> b!2503732 (=> (not res!1058606) (not e!1587704))))

(declare-fun b!2503733 () Bool)

(declare-fun res!1058607 () Bool)

(assert (=> b!2503733 (=> res!1058607 e!1587702)))

(assert (=> b!2503733 (= res!1058607 (not ((_ is Concat!12117) (regTwo!15354 r!27340))))))

(assert (=> b!2503733 (= e!1587705 e!1587702)))

(declare-fun bm!154856 () Bool)

(assert (=> bm!154856 (= call!154861 (validRegex!3047 (ite c!398524 (reg!7750 (regTwo!15354 r!27340)) (ite c!398523 (regTwo!15355 (regTwo!15354 r!27340)) (regOne!15354 (regTwo!15354 r!27340))))))))

(assert (= (and d!715768 (not res!1058609)) b!2503730))

(assert (= (and b!2503730 c!398524) b!2503732))

(assert (= (and b!2503730 (not c!398524)) b!2503725))

(assert (= (and b!2503732 res!1058606) b!2503729))

(assert (= (and b!2503725 c!398523) b!2503731))

(assert (= (and b!2503725 (not c!398523)) b!2503733))

(assert (= (and b!2503731 res!1058608) b!2503727))

(assert (= (and b!2503733 (not res!1058607)) b!2503728))

(assert (= (and b!2503728 res!1058605) b!2503726))

(assert (= (or b!2503731 b!2503726) bm!154855))

(assert (= (or b!2503727 b!2503728) bm!154854))

(assert (= (or b!2503729 bm!154854) bm!154856))

(declare-fun m!2865117 () Bool)

(assert (=> bm!154855 m!2865117))

(declare-fun m!2865119 () Bool)

(assert (=> b!2503732 m!2865119))

(declare-fun m!2865121 () Bool)

(assert (=> bm!154856 m!2865121))

(assert (=> b!2503617 d!715768))

(declare-fun d!715770 () Bool)

(assert (=> d!715770 (= (nullable!2338 (derivative!116 (derivativeStep!1990 r!27340 c!14016) tl!4068)) (nullableFct!604 (derivative!116 (derivativeStep!1990 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468624 () Bool)

(assert (= bs!468624 d!715770))

(assert (=> bs!468624 m!2865081))

(declare-fun m!2865123 () Bool)

(assert (=> bs!468624 m!2865123))

(assert (=> b!2503616 d!715770))

(declare-fun d!715772 () Bool)

(declare-fun lt!896176 () Regex!7421)

(assert (=> d!715772 (validRegex!3047 lt!896176)))

(declare-fun e!1587721 () Regex!7421)

(assert (=> d!715772 (= lt!896176 e!1587721)))

(declare-fun c!398531 () Bool)

(assert (=> d!715772 (= c!398531 ((_ is Cons!29386) tl!4068))))

(assert (=> d!715772 (validRegex!3047 (derivativeStep!1990 r!27340 c!14016))))

(assert (=> d!715772 (= (derivative!116 (derivativeStep!1990 r!27340 c!14016) tl!4068) lt!896176)))

(declare-fun b!2503756 () Bool)

(assert (=> b!2503756 (= e!1587721 (derivative!116 (derivativeStep!1990 (derivativeStep!1990 r!27340 c!14016) (h!34806 tl!4068)) (t!211185 tl!4068)))))

(declare-fun b!2503757 () Bool)

(assert (=> b!2503757 (= e!1587721 (derivativeStep!1990 r!27340 c!14016))))

(assert (= (and d!715772 c!398531) b!2503756))

(assert (= (and d!715772 (not c!398531)) b!2503757))

(declare-fun m!2865125 () Bool)

(assert (=> d!715772 m!2865125))

(assert (=> d!715772 m!2865079))

(declare-fun m!2865127 () Bool)

(assert (=> d!715772 m!2865127))

(assert (=> b!2503756 m!2865079))

(declare-fun m!2865129 () Bool)

(assert (=> b!2503756 m!2865129))

(assert (=> b!2503756 m!2865129))

(declare-fun m!2865131 () Bool)

(assert (=> b!2503756 m!2865131))

(assert (=> b!2503616 d!715772))

(declare-fun d!715774 () Bool)

(declare-fun lt!896190 () Regex!7421)

(assert (=> d!715774 (validRegex!3047 lt!896190)))

(declare-fun e!1587756 () Regex!7421)

(assert (=> d!715774 (= lt!896190 e!1587756)))

(declare-fun c!398553 () Bool)

(assert (=> d!715774 (= c!398553 (or ((_ is EmptyExpr!7421) r!27340) ((_ is EmptyLang!7421) r!27340)))))

(assert (=> d!715774 (validRegex!3047 r!27340)))

(assert (=> d!715774 (= (derivativeStep!1990 r!27340 c!14016) lt!896190)))

(declare-fun b!2503812 () Bool)

(declare-fun e!1587754 () Regex!7421)

(assert (=> b!2503812 (= e!1587756 e!1587754)))

(declare-fun c!398555 () Bool)

(assert (=> b!2503812 (= c!398555 ((_ is ElementMatch!7421) r!27340))))

(declare-fun c!398554 () Bool)

(declare-fun bm!154868 () Bool)

(declare-fun c!398552 () Bool)

(declare-fun call!154875 () Regex!7421)

(assert (=> bm!154868 (= call!154875 (derivativeStep!1990 (ite c!398554 (regTwo!15355 r!27340) (ite c!398552 (reg!7750 r!27340) (regOne!15354 r!27340))) c!14016))))

(declare-fun b!2503813 () Bool)

(declare-fun e!1587752 () Regex!7421)

(declare-fun call!154873 () Regex!7421)

(assert (=> b!2503813 (= e!1587752 (Concat!12117 call!154873 r!27340))))

(declare-fun b!2503814 () Bool)

(assert (=> b!2503814 (= e!1587754 (ite (= c!14016 (c!398501 r!27340)) EmptyExpr!7421 EmptyLang!7421))))

(declare-fun b!2503815 () Bool)

(declare-fun e!1587753 () Regex!7421)

(declare-fun call!154874 () Regex!7421)

(assert (=> b!2503815 (= e!1587753 (Union!7421 (Concat!12117 call!154874 (regTwo!15354 r!27340)) EmptyLang!7421))))

(declare-fun b!2503816 () Bool)

(declare-fun c!398551 () Bool)

(assert (=> b!2503816 (= c!398551 (nullable!2338 (regOne!15354 r!27340)))))

(assert (=> b!2503816 (= e!1587752 e!1587753)))

(declare-fun b!2503817 () Bool)

(declare-fun call!154876 () Regex!7421)

(assert (=> b!2503817 (= e!1587753 (Union!7421 (Concat!12117 call!154874 (regTwo!15354 r!27340)) call!154876))))

(declare-fun bm!154869 () Bool)

(assert (=> bm!154869 (= call!154874 call!154873)))

(declare-fun b!2503818 () Bool)

(assert (=> b!2503818 (= c!398554 ((_ is Union!7421) r!27340))))

(declare-fun e!1587755 () Regex!7421)

(assert (=> b!2503818 (= e!1587754 e!1587755)))

(declare-fun b!2503819 () Bool)

(assert (=> b!2503819 (= e!1587755 (Union!7421 call!154876 call!154875))))

(declare-fun bm!154870 () Bool)

(assert (=> bm!154870 (= call!154876 (derivativeStep!1990 (ite c!398554 (regOne!15355 r!27340) (regTwo!15354 r!27340)) c!14016))))

(declare-fun bm!154871 () Bool)

(assert (=> bm!154871 (= call!154873 call!154875)))

(declare-fun b!2503820 () Bool)

(assert (=> b!2503820 (= e!1587756 EmptyLang!7421)))

(declare-fun b!2503821 () Bool)

(assert (=> b!2503821 (= e!1587755 e!1587752)))

(assert (=> b!2503821 (= c!398552 ((_ is Star!7421) r!27340))))

(assert (= (and d!715774 c!398553) b!2503820))

(assert (= (and d!715774 (not c!398553)) b!2503812))

(assert (= (and b!2503812 c!398555) b!2503814))

(assert (= (and b!2503812 (not c!398555)) b!2503818))

(assert (= (and b!2503818 c!398554) b!2503819))

(assert (= (and b!2503818 (not c!398554)) b!2503821))

(assert (= (and b!2503821 c!398552) b!2503813))

(assert (= (and b!2503821 (not c!398552)) b!2503816))

(assert (= (and b!2503816 c!398551) b!2503817))

(assert (= (and b!2503816 (not c!398551)) b!2503815))

(assert (= (or b!2503817 b!2503815) bm!154869))

(assert (= (or b!2503813 bm!154869) bm!154871))

(assert (= (or b!2503819 bm!154871) bm!154868))

(assert (= (or b!2503819 b!2503817) bm!154870))

(declare-fun m!2865179 () Bool)

(assert (=> d!715774 m!2865179))

(assert (=> d!715774 m!2865059))

(declare-fun m!2865183 () Bool)

(assert (=> bm!154868 m!2865183))

(assert (=> b!2503816 m!2865057))

(declare-fun m!2865189 () Bool)

(assert (=> bm!154870 m!2865189))

(assert (=> b!2503616 d!715774))

(declare-fun b!2503824 () Bool)

(declare-fun e!1587759 () Bool)

(assert (=> b!2503824 (= e!1587759 (nullable!2338 lt!896160))))

(declare-fun b!2503825 () Bool)

(declare-fun e!1587763 () Bool)

(declare-fun e!1587760 () Bool)

(assert (=> b!2503825 (= e!1587763 e!1587760)))

(declare-fun c!398559 () Bool)

(assert (=> b!2503825 (= c!398559 ((_ is EmptyLang!7421) lt!896160))))

(declare-fun bm!154872 () Bool)

(declare-fun call!154877 () Bool)

(assert (=> bm!154872 (= call!154877 (isEmpty!16850 tl!4068))))

(declare-fun d!715788 () Bool)

(assert (=> d!715788 e!1587763))

(declare-fun c!398557 () Bool)

(assert (=> d!715788 (= c!398557 ((_ is EmptyExpr!7421) lt!896160))))

(declare-fun lt!896192 () Bool)

(assert (=> d!715788 (= lt!896192 e!1587759)))

(declare-fun c!398558 () Bool)

(assert (=> d!715788 (= c!398558 (isEmpty!16850 tl!4068))))

(assert (=> d!715788 (validRegex!3047 lt!896160)))

(assert (=> d!715788 (= (matchR!3424 lt!896160 tl!4068) lt!896192)))

(declare-fun b!2503826 () Bool)

(assert (=> b!2503826 (= e!1587759 (matchR!3424 (derivativeStep!1990 lt!896160 (head!5707 tl!4068)) (tail!3984 tl!4068)))))

(declare-fun b!2503827 () Bool)

(assert (=> b!2503827 (= e!1587763 (= lt!896192 call!154877))))

(declare-fun b!2503828 () Bool)

(declare-fun e!1587761 () Bool)

(assert (=> b!2503828 (= e!1587761 (not (= (head!5707 tl!4068) (c!398501 lt!896160))))))

(declare-fun b!2503829 () Bool)

(declare-fun res!1058639 () Bool)

(assert (=> b!2503829 (=> res!1058639 e!1587761)))

(assert (=> b!2503829 (= res!1058639 (not (isEmpty!16850 (tail!3984 tl!4068))))))

(declare-fun b!2503830 () Bool)

(declare-fun res!1058640 () Bool)

(declare-fun e!1587762 () Bool)

(assert (=> b!2503830 (=> (not res!1058640) (not e!1587762))))

(assert (=> b!2503830 (= res!1058640 (isEmpty!16850 (tail!3984 tl!4068)))))

(declare-fun b!2503831 () Bool)

(assert (=> b!2503831 (= e!1587762 (= (head!5707 tl!4068) (c!398501 lt!896160)))))

(declare-fun b!2503832 () Bool)

(declare-fun res!1058638 () Bool)

(declare-fun e!1587764 () Bool)

(assert (=> b!2503832 (=> res!1058638 e!1587764)))

(assert (=> b!2503832 (= res!1058638 e!1587762)))

(declare-fun res!1058643 () Bool)

(assert (=> b!2503832 (=> (not res!1058643) (not e!1587762))))

(assert (=> b!2503832 (= res!1058643 lt!896192)))

(declare-fun b!2503833 () Bool)

(declare-fun e!1587758 () Bool)

(assert (=> b!2503833 (= e!1587758 e!1587761)))

(declare-fun res!1058642 () Bool)

(assert (=> b!2503833 (=> res!1058642 e!1587761)))

(assert (=> b!2503833 (= res!1058642 call!154877)))

(declare-fun b!2503834 () Bool)

(declare-fun res!1058641 () Bool)

(assert (=> b!2503834 (=> (not res!1058641) (not e!1587762))))

(assert (=> b!2503834 (= res!1058641 (not call!154877))))

(declare-fun b!2503835 () Bool)

(assert (=> b!2503835 (= e!1587764 e!1587758)))

(declare-fun res!1058637 () Bool)

(assert (=> b!2503835 (=> (not res!1058637) (not e!1587758))))

(assert (=> b!2503835 (= res!1058637 (not lt!896192))))

(declare-fun b!2503836 () Bool)

(declare-fun res!1058636 () Bool)

(assert (=> b!2503836 (=> res!1058636 e!1587764)))

(assert (=> b!2503836 (= res!1058636 (not ((_ is ElementMatch!7421) lt!896160)))))

(assert (=> b!2503836 (= e!1587760 e!1587764)))

(declare-fun b!2503837 () Bool)

(assert (=> b!2503837 (= e!1587760 (not lt!896192))))

(assert (= (and d!715788 c!398558) b!2503824))

(assert (= (and d!715788 (not c!398558)) b!2503826))

(assert (= (and d!715788 c!398557) b!2503827))

(assert (= (and d!715788 (not c!398557)) b!2503825))

(assert (= (and b!2503825 c!398559) b!2503837))

(assert (= (and b!2503825 (not c!398559)) b!2503836))

(assert (= (and b!2503836 (not res!1058636)) b!2503832))

(assert (= (and b!2503832 res!1058643) b!2503834))

(assert (= (and b!2503834 res!1058641) b!2503830))

(assert (= (and b!2503830 res!1058640) b!2503831))

(assert (= (and b!2503832 (not res!1058638)) b!2503835))

(assert (= (and b!2503835 res!1058637) b!2503833))

(assert (= (and b!2503833 (not res!1058642)) b!2503829))

(assert (= (and b!2503829 (not res!1058639)) b!2503828))

(assert (= (or b!2503827 b!2503833 b!2503834) bm!154872))

(declare-fun m!2865193 () Bool)

(assert (=> b!2503824 m!2865193))

(assert (=> b!2503829 m!2865095))

(assert (=> b!2503829 m!2865095))

(assert (=> b!2503829 m!2865097))

(assert (=> d!715788 m!2865099))

(declare-fun m!2865195 () Bool)

(assert (=> d!715788 m!2865195))

(assert (=> bm!154872 m!2865099))

(assert (=> b!2503826 m!2865103))

(assert (=> b!2503826 m!2865103))

(declare-fun m!2865197 () Bool)

(assert (=> b!2503826 m!2865197))

(assert (=> b!2503826 m!2865095))

(assert (=> b!2503826 m!2865197))

(assert (=> b!2503826 m!2865095))

(declare-fun m!2865199 () Bool)

(assert (=> b!2503826 m!2865199))

(assert (=> b!2503828 m!2865103))

(assert (=> b!2503830 m!2865095))

(assert (=> b!2503830 m!2865095))

(assert (=> b!2503830 m!2865097))

(assert (=> b!2503831 m!2865103))

(assert (=> b!2503627 d!715788))

(declare-fun b!2503838 () Bool)

(declare-fun e!1587766 () Bool)

(assert (=> b!2503838 (= e!1587766 (nullable!2338 (derivative!116 lt!896162 tl!4068)))))

(declare-fun b!2503839 () Bool)

(declare-fun e!1587770 () Bool)

(declare-fun e!1587767 () Bool)

(assert (=> b!2503839 (= e!1587770 e!1587767)))

(declare-fun c!398562 () Bool)

(assert (=> b!2503839 (= c!398562 ((_ is EmptyLang!7421) (derivative!116 lt!896162 tl!4068)))))

(declare-fun bm!154873 () Bool)

(declare-fun call!154878 () Bool)

(assert (=> bm!154873 (= call!154878 (isEmpty!16850 Nil!29386))))

(declare-fun d!715790 () Bool)

(assert (=> d!715790 e!1587770))

(declare-fun c!398560 () Bool)

(assert (=> d!715790 (= c!398560 ((_ is EmptyExpr!7421) (derivative!116 lt!896162 tl!4068)))))

(declare-fun lt!896193 () Bool)

(assert (=> d!715790 (= lt!896193 e!1587766)))

(declare-fun c!398561 () Bool)

(assert (=> d!715790 (= c!398561 (isEmpty!16850 Nil!29386))))

(assert (=> d!715790 (validRegex!3047 (derivative!116 lt!896162 tl!4068))))

(assert (=> d!715790 (= (matchR!3424 (derivative!116 lt!896162 tl!4068) Nil!29386) lt!896193)))

(declare-fun b!2503840 () Bool)

(assert (=> b!2503840 (= e!1587766 (matchR!3424 (derivativeStep!1990 (derivative!116 lt!896162 tl!4068) (head!5707 Nil!29386)) (tail!3984 Nil!29386)))))

(declare-fun b!2503841 () Bool)

(assert (=> b!2503841 (= e!1587770 (= lt!896193 call!154878))))

(declare-fun b!2503842 () Bool)

(declare-fun e!1587768 () Bool)

(assert (=> b!2503842 (= e!1587768 (not (= (head!5707 Nil!29386) (c!398501 (derivative!116 lt!896162 tl!4068)))))))

(declare-fun b!2503843 () Bool)

(declare-fun res!1058647 () Bool)

(assert (=> b!2503843 (=> res!1058647 e!1587768)))

(assert (=> b!2503843 (= res!1058647 (not (isEmpty!16850 (tail!3984 Nil!29386))))))

(declare-fun b!2503844 () Bool)

(declare-fun res!1058648 () Bool)

(declare-fun e!1587769 () Bool)

(assert (=> b!2503844 (=> (not res!1058648) (not e!1587769))))

(assert (=> b!2503844 (= res!1058648 (isEmpty!16850 (tail!3984 Nil!29386)))))

(declare-fun b!2503845 () Bool)

(assert (=> b!2503845 (= e!1587769 (= (head!5707 Nil!29386) (c!398501 (derivative!116 lt!896162 tl!4068))))))

(declare-fun b!2503846 () Bool)

(declare-fun res!1058646 () Bool)

(declare-fun e!1587771 () Bool)

(assert (=> b!2503846 (=> res!1058646 e!1587771)))

(assert (=> b!2503846 (= res!1058646 e!1587769)))

(declare-fun res!1058651 () Bool)

(assert (=> b!2503846 (=> (not res!1058651) (not e!1587769))))

(assert (=> b!2503846 (= res!1058651 lt!896193)))

(declare-fun b!2503847 () Bool)

(declare-fun e!1587765 () Bool)

(assert (=> b!2503847 (= e!1587765 e!1587768)))

(declare-fun res!1058650 () Bool)

(assert (=> b!2503847 (=> res!1058650 e!1587768)))

(assert (=> b!2503847 (= res!1058650 call!154878)))

(declare-fun b!2503848 () Bool)

(declare-fun res!1058649 () Bool)

(assert (=> b!2503848 (=> (not res!1058649) (not e!1587769))))

(assert (=> b!2503848 (= res!1058649 (not call!154878))))

(declare-fun b!2503849 () Bool)

(assert (=> b!2503849 (= e!1587771 e!1587765)))

(declare-fun res!1058645 () Bool)

(assert (=> b!2503849 (=> (not res!1058645) (not e!1587765))))

(assert (=> b!2503849 (= res!1058645 (not lt!896193))))

(declare-fun b!2503850 () Bool)

(declare-fun res!1058644 () Bool)

(assert (=> b!2503850 (=> res!1058644 e!1587771)))

(assert (=> b!2503850 (= res!1058644 (not ((_ is ElementMatch!7421) (derivative!116 lt!896162 tl!4068))))))

(assert (=> b!2503850 (= e!1587767 e!1587771)))

(declare-fun b!2503851 () Bool)

(assert (=> b!2503851 (= e!1587767 (not lt!896193))))

(assert (= (and d!715790 c!398561) b!2503838))

(assert (= (and d!715790 (not c!398561)) b!2503840))

(assert (= (and d!715790 c!398560) b!2503841))

(assert (= (and d!715790 (not c!398560)) b!2503839))

(assert (= (and b!2503839 c!398562) b!2503851))

(assert (= (and b!2503839 (not c!398562)) b!2503850))

(assert (= (and b!2503850 (not res!1058644)) b!2503846))

(assert (= (and b!2503846 res!1058651) b!2503848))

(assert (= (and b!2503848 res!1058649) b!2503844))

(assert (= (and b!2503844 res!1058648) b!2503845))

(assert (= (and b!2503846 (not res!1058646)) b!2503849))

(assert (= (and b!2503849 res!1058645) b!2503847))

(assert (= (and b!2503847 (not res!1058650)) b!2503843))

(assert (= (and b!2503843 (not res!1058647)) b!2503842))

(assert (= (or b!2503841 b!2503847 b!2503848) bm!154873))

(assert (=> b!2503838 m!2865061))

(declare-fun m!2865201 () Bool)

(assert (=> b!2503838 m!2865201))

(declare-fun m!2865203 () Bool)

(assert (=> b!2503843 m!2865203))

(assert (=> b!2503843 m!2865203))

(declare-fun m!2865205 () Bool)

(assert (=> b!2503843 m!2865205))

(declare-fun m!2865207 () Bool)

(assert (=> d!715790 m!2865207))

(assert (=> d!715790 m!2865061))

(declare-fun m!2865209 () Bool)

(assert (=> d!715790 m!2865209))

(assert (=> bm!154873 m!2865207))

(declare-fun m!2865211 () Bool)

(assert (=> b!2503840 m!2865211))

(assert (=> b!2503840 m!2865061))

(assert (=> b!2503840 m!2865211))

(declare-fun m!2865213 () Bool)

(assert (=> b!2503840 m!2865213))

(assert (=> b!2503840 m!2865203))

(assert (=> b!2503840 m!2865213))

(assert (=> b!2503840 m!2865203))

(declare-fun m!2865215 () Bool)

(assert (=> b!2503840 m!2865215))

(assert (=> b!2503842 m!2865211))

(assert (=> b!2503844 m!2865203))

(assert (=> b!2503844 m!2865203))

(assert (=> b!2503844 m!2865205))

(assert (=> b!2503845 m!2865211))

(assert (=> b!2503627 d!715790))

(declare-fun d!715792 () Bool)

(declare-fun e!1587786 () Bool)

(assert (=> d!715792 e!1587786))

(declare-fun res!1058657 () Bool)

(assert (=> d!715792 (=> res!1058657 e!1587786)))

(assert (=> d!715792 (= res!1058657 (matchR!3424 lt!896160 tl!4068))))

(declare-fun lt!896198 () Unit!43099)

(declare-fun choose!14794 (Regex!7421 Regex!7421 List!29486) Unit!43099)

(assert (=> d!715792 (= lt!896198 (choose!14794 lt!896160 lt!896157 tl!4068))))

(declare-fun e!1587787 () Bool)

(assert (=> d!715792 e!1587787))

(declare-fun res!1058656 () Bool)

(assert (=> d!715792 (=> (not res!1058656) (not e!1587787))))

(assert (=> d!715792 (= res!1058656 (validRegex!3047 lt!896160))))

(assert (=> d!715792 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!116 lt!896160 lt!896157 tl!4068) lt!896198)))

(declare-fun b!2503876 () Bool)

(assert (=> b!2503876 (= e!1587787 (validRegex!3047 lt!896157))))

(declare-fun b!2503877 () Bool)

(assert (=> b!2503877 (= e!1587786 (matchR!3424 lt!896157 tl!4068))))

(assert (= (and d!715792 res!1058656) b!2503876))

(assert (= (and d!715792 (not res!1058657)) b!2503877))

(assert (=> d!715792 m!2865073))

(declare-fun m!2865217 () Bool)

(assert (=> d!715792 m!2865217))

(assert (=> d!715792 m!2865195))

(assert (=> b!2503876 m!2865101))

(assert (=> b!2503877 m!2865055))

(assert (=> b!2503627 d!715792))

(declare-fun d!715794 () Bool)

(declare-fun lt!896199 () Regex!7421)

(assert (=> d!715794 (validRegex!3047 lt!896199)))

(declare-fun e!1587792 () Regex!7421)

(assert (=> d!715794 (= lt!896199 e!1587792)))

(declare-fun c!398575 () Bool)

(assert (=> d!715794 (= c!398575 (or ((_ is EmptyExpr!7421) (regTwo!15354 r!27340)) ((_ is EmptyLang!7421) (regTwo!15354 r!27340))))))

(assert (=> d!715794 (validRegex!3047 (regTwo!15354 r!27340))))

(assert (=> d!715794 (= (derivativeStep!1990 (regTwo!15354 r!27340) c!14016) lt!896199)))

(declare-fun b!2503878 () Bool)

(declare-fun e!1587790 () Regex!7421)

(assert (=> b!2503878 (= e!1587792 e!1587790)))

(declare-fun c!398577 () Bool)

(assert (=> b!2503878 (= c!398577 ((_ is ElementMatch!7421) (regTwo!15354 r!27340)))))

(declare-fun c!398576 () Bool)

(declare-fun bm!154882 () Bool)

(declare-fun call!154889 () Regex!7421)

(declare-fun c!398574 () Bool)

(assert (=> bm!154882 (= call!154889 (derivativeStep!1990 (ite c!398576 (regTwo!15355 (regTwo!15354 r!27340)) (ite c!398574 (reg!7750 (regTwo!15354 r!27340)) (regOne!15354 (regTwo!15354 r!27340)))) c!14016))))

(declare-fun b!2503879 () Bool)

(declare-fun e!1587788 () Regex!7421)

(declare-fun call!154887 () Regex!7421)

(assert (=> b!2503879 (= e!1587788 (Concat!12117 call!154887 (regTwo!15354 r!27340)))))

(declare-fun b!2503880 () Bool)

(assert (=> b!2503880 (= e!1587790 (ite (= c!14016 (c!398501 (regTwo!15354 r!27340))) EmptyExpr!7421 EmptyLang!7421))))

(declare-fun b!2503881 () Bool)

(declare-fun e!1587789 () Regex!7421)

(declare-fun call!154888 () Regex!7421)

(assert (=> b!2503881 (= e!1587789 (Union!7421 (Concat!12117 call!154888 (regTwo!15354 (regTwo!15354 r!27340))) EmptyLang!7421))))

(declare-fun b!2503882 () Bool)

(declare-fun c!398573 () Bool)

(assert (=> b!2503882 (= c!398573 (nullable!2338 (regOne!15354 (regTwo!15354 r!27340))))))

(assert (=> b!2503882 (= e!1587788 e!1587789)))

(declare-fun call!154890 () Regex!7421)

(declare-fun b!2503883 () Bool)

(assert (=> b!2503883 (= e!1587789 (Union!7421 (Concat!12117 call!154888 (regTwo!15354 (regTwo!15354 r!27340))) call!154890))))

(declare-fun bm!154883 () Bool)

(assert (=> bm!154883 (= call!154888 call!154887)))

(declare-fun b!2503884 () Bool)

(assert (=> b!2503884 (= c!398576 ((_ is Union!7421) (regTwo!15354 r!27340)))))

(declare-fun e!1587791 () Regex!7421)

(assert (=> b!2503884 (= e!1587790 e!1587791)))

(declare-fun b!2503885 () Bool)

(assert (=> b!2503885 (= e!1587791 (Union!7421 call!154890 call!154889))))

(declare-fun bm!154884 () Bool)

(assert (=> bm!154884 (= call!154890 (derivativeStep!1990 (ite c!398576 (regOne!15355 (regTwo!15354 r!27340)) (regTwo!15354 (regTwo!15354 r!27340))) c!14016))))

(declare-fun bm!154885 () Bool)

(assert (=> bm!154885 (= call!154887 call!154889)))

(declare-fun b!2503886 () Bool)

(assert (=> b!2503886 (= e!1587792 EmptyLang!7421)))

(declare-fun b!2503887 () Bool)

(assert (=> b!2503887 (= e!1587791 e!1587788)))

(assert (=> b!2503887 (= c!398574 ((_ is Star!7421) (regTwo!15354 r!27340)))))

(assert (= (and d!715794 c!398575) b!2503886))

(assert (= (and d!715794 (not c!398575)) b!2503878))

(assert (= (and b!2503878 c!398577) b!2503880))

(assert (= (and b!2503878 (not c!398577)) b!2503884))

(assert (= (and b!2503884 c!398576) b!2503885))

(assert (= (and b!2503884 (not c!398576)) b!2503887))

(assert (= (and b!2503887 c!398574) b!2503879))

(assert (= (and b!2503887 (not c!398574)) b!2503882))

(assert (= (and b!2503882 c!398573) b!2503883))

(assert (= (and b!2503882 (not c!398573)) b!2503881))

(assert (= (or b!2503883 b!2503881) bm!154883))

(assert (= (or b!2503879 bm!154883) bm!154885))

(assert (= (or b!2503885 bm!154885) bm!154882))

(assert (= (or b!2503885 b!2503883) bm!154884))

(declare-fun m!2865219 () Bool)

(assert (=> d!715794 m!2865219))

(assert (=> d!715794 m!2865053))

(declare-fun m!2865221 () Bool)

(assert (=> bm!154882 m!2865221))

(declare-fun m!2865223 () Bool)

(assert (=> b!2503882 m!2865223))

(declare-fun m!2865225 () Bool)

(assert (=> bm!154884 m!2865225))

(assert (=> b!2503627 d!715794))

(declare-fun d!715796 () Bool)

(declare-fun lt!896201 () Regex!7421)

(assert (=> d!715796 (validRegex!3047 lt!896201)))

(declare-fun e!1587802 () Regex!7421)

(assert (=> d!715796 (= lt!896201 e!1587802)))

(declare-fun c!398585 () Bool)

(assert (=> d!715796 (= c!398585 (or ((_ is EmptyExpr!7421) (regOne!15354 r!27340)) ((_ is EmptyLang!7421) (regOne!15354 r!27340))))))

(assert (=> d!715796 (validRegex!3047 (regOne!15354 r!27340))))

(assert (=> d!715796 (= (derivativeStep!1990 (regOne!15354 r!27340) c!14016) lt!896201)))

(declare-fun b!2503898 () Bool)

(declare-fun e!1587800 () Regex!7421)

(assert (=> b!2503898 (= e!1587802 e!1587800)))

(declare-fun c!398587 () Bool)

(assert (=> b!2503898 (= c!398587 ((_ is ElementMatch!7421) (regOne!15354 r!27340)))))

(declare-fun c!398586 () Bool)

(declare-fun c!398584 () Bool)

(declare-fun call!154897 () Regex!7421)

(declare-fun bm!154890 () Bool)

(assert (=> bm!154890 (= call!154897 (derivativeStep!1990 (ite c!398586 (regTwo!15355 (regOne!15354 r!27340)) (ite c!398584 (reg!7750 (regOne!15354 r!27340)) (regOne!15354 (regOne!15354 r!27340)))) c!14016))))

(declare-fun b!2503899 () Bool)

(declare-fun e!1587798 () Regex!7421)

(declare-fun call!154895 () Regex!7421)

(assert (=> b!2503899 (= e!1587798 (Concat!12117 call!154895 (regOne!15354 r!27340)))))

(declare-fun b!2503900 () Bool)

(assert (=> b!2503900 (= e!1587800 (ite (= c!14016 (c!398501 (regOne!15354 r!27340))) EmptyExpr!7421 EmptyLang!7421))))

(declare-fun b!2503901 () Bool)

(declare-fun e!1587799 () Regex!7421)

(declare-fun call!154896 () Regex!7421)

(assert (=> b!2503901 (= e!1587799 (Union!7421 (Concat!12117 call!154896 (regTwo!15354 (regOne!15354 r!27340))) EmptyLang!7421))))

(declare-fun b!2503902 () Bool)

(declare-fun c!398583 () Bool)

(assert (=> b!2503902 (= c!398583 (nullable!2338 (regOne!15354 (regOne!15354 r!27340))))))

(assert (=> b!2503902 (= e!1587798 e!1587799)))

(declare-fun call!154898 () Regex!7421)

(declare-fun b!2503903 () Bool)

(assert (=> b!2503903 (= e!1587799 (Union!7421 (Concat!12117 call!154896 (regTwo!15354 (regOne!15354 r!27340))) call!154898))))

(declare-fun bm!154891 () Bool)

(assert (=> bm!154891 (= call!154896 call!154895)))

(declare-fun b!2503904 () Bool)

(assert (=> b!2503904 (= c!398586 ((_ is Union!7421) (regOne!15354 r!27340)))))

(declare-fun e!1587801 () Regex!7421)

(assert (=> b!2503904 (= e!1587800 e!1587801)))

(declare-fun b!2503905 () Bool)

(assert (=> b!2503905 (= e!1587801 (Union!7421 call!154898 call!154897))))

(declare-fun bm!154892 () Bool)

(assert (=> bm!154892 (= call!154898 (derivativeStep!1990 (ite c!398586 (regOne!15355 (regOne!15354 r!27340)) (regTwo!15354 (regOne!15354 r!27340))) c!14016))))

(declare-fun bm!154893 () Bool)

(assert (=> bm!154893 (= call!154895 call!154897)))

(declare-fun b!2503906 () Bool)

(assert (=> b!2503906 (= e!1587802 EmptyLang!7421)))

(declare-fun b!2503907 () Bool)

(assert (=> b!2503907 (= e!1587801 e!1587798)))

(assert (=> b!2503907 (= c!398584 ((_ is Star!7421) (regOne!15354 r!27340)))))

(assert (= (and d!715796 c!398585) b!2503906))

(assert (= (and d!715796 (not c!398585)) b!2503898))

(assert (= (and b!2503898 c!398587) b!2503900))

(assert (= (and b!2503898 (not c!398587)) b!2503904))

(assert (= (and b!2503904 c!398586) b!2503905))

(assert (= (and b!2503904 (not c!398586)) b!2503907))

(assert (= (and b!2503907 c!398584) b!2503899))

(assert (= (and b!2503907 (not c!398584)) b!2503902))

(assert (= (and b!2503902 c!398583) b!2503903))

(assert (= (and b!2503902 (not c!398583)) b!2503901))

(assert (= (or b!2503903 b!2503901) bm!154891))

(assert (= (or b!2503899 bm!154891) bm!154893))

(assert (= (or b!2503905 bm!154893) bm!154890))

(assert (= (or b!2503905 b!2503903) bm!154892))

(declare-fun m!2865233 () Bool)

(assert (=> d!715796 m!2865233))

(declare-fun m!2865235 () Bool)

(assert (=> d!715796 m!2865235))

(declare-fun m!2865237 () Bool)

(assert (=> bm!154890 m!2865237))

(declare-fun m!2865239 () Bool)

(assert (=> b!2503902 m!2865239))

(declare-fun m!2865241 () Bool)

(assert (=> bm!154892 m!2865241))

(assert (=> b!2503627 d!715796))

(declare-fun d!715800 () Bool)

(assert (=> d!715800 (= (matchR!3424 lt!896162 tl!4068) (matchR!3424 (derivative!116 lt!896162 tl!4068) Nil!29386))))

(declare-fun lt!896206 () Unit!43099)

(declare-fun choose!14795 (Regex!7421 List!29486) Unit!43099)

(assert (=> d!715800 (= lt!896206 (choose!14795 lt!896162 tl!4068))))

(assert (=> d!715800 (validRegex!3047 lt!896162)))

(assert (=> d!715800 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!70 lt!896162 tl!4068) lt!896206)))

(declare-fun bs!468627 () Bool)

(assert (= bs!468627 d!715800))

(declare-fun m!2865243 () Bool)

(assert (=> bs!468627 m!2865243))

(declare-fun m!2865245 () Bool)

(assert (=> bs!468627 m!2865245))

(assert (=> bs!468627 m!2865061))

(assert (=> bs!468627 m!2865071))

(assert (=> bs!468627 m!2865061))

(assert (=> bs!468627 m!2865075))

(assert (=> b!2503627 d!715800))

(declare-fun d!715802 () Bool)

(declare-fun lt!896207 () Regex!7421)

(assert (=> d!715802 (validRegex!3047 lt!896207)))

(declare-fun e!1587807 () Regex!7421)

(assert (=> d!715802 (= lt!896207 e!1587807)))

(declare-fun c!398592 () Bool)

(assert (=> d!715802 (= c!398592 ((_ is Cons!29386) tl!4068))))

(assert (=> d!715802 (validRegex!3047 lt!896162)))

(assert (=> d!715802 (= (derivative!116 lt!896162 tl!4068) lt!896207)))

(declare-fun b!2503916 () Bool)

(assert (=> b!2503916 (= e!1587807 (derivative!116 (derivativeStep!1990 lt!896162 (h!34806 tl!4068)) (t!211185 tl!4068)))))

(declare-fun b!2503917 () Bool)

(assert (=> b!2503917 (= e!1587807 lt!896162)))

(assert (= (and d!715802 c!398592) b!2503916))

(assert (= (and d!715802 (not c!398592)) b!2503917))

(declare-fun m!2865247 () Bool)

(assert (=> d!715802 m!2865247))

(assert (=> d!715802 m!2865243))

(declare-fun m!2865249 () Bool)

(assert (=> b!2503916 m!2865249))

(assert (=> b!2503916 m!2865249))

(declare-fun m!2865251 () Bool)

(assert (=> b!2503916 m!2865251))

(assert (=> b!2503627 d!715802))

(declare-fun b!2503938 () Bool)

(declare-fun e!1587819 () Bool)

(assert (=> b!2503938 (= e!1587819 (nullable!2338 lt!896162))))

(declare-fun b!2503939 () Bool)

(declare-fun e!1587823 () Bool)

(declare-fun e!1587820 () Bool)

(assert (=> b!2503939 (= e!1587823 e!1587820)))

(declare-fun c!398597 () Bool)

(assert (=> b!2503939 (= c!398597 ((_ is EmptyLang!7421) lt!896162))))

(declare-fun bm!154894 () Bool)

(declare-fun call!154899 () Bool)

(assert (=> bm!154894 (= call!154899 (isEmpty!16850 tl!4068))))

(declare-fun d!715804 () Bool)

(assert (=> d!715804 e!1587823))

(declare-fun c!398595 () Bool)

(assert (=> d!715804 (= c!398595 ((_ is EmptyExpr!7421) lt!896162))))

(declare-fun lt!896208 () Bool)

(assert (=> d!715804 (= lt!896208 e!1587819)))

(declare-fun c!398596 () Bool)

(assert (=> d!715804 (= c!398596 (isEmpty!16850 tl!4068))))

(assert (=> d!715804 (validRegex!3047 lt!896162)))

(assert (=> d!715804 (= (matchR!3424 lt!896162 tl!4068) lt!896208)))

(declare-fun b!2503940 () Bool)

(assert (=> b!2503940 (= e!1587819 (matchR!3424 (derivativeStep!1990 lt!896162 (head!5707 tl!4068)) (tail!3984 tl!4068)))))

(declare-fun b!2503941 () Bool)

(assert (=> b!2503941 (= e!1587823 (= lt!896208 call!154899))))

(declare-fun b!2503942 () Bool)

(declare-fun e!1587821 () Bool)

(assert (=> b!2503942 (= e!1587821 (not (= (head!5707 tl!4068) (c!398501 lt!896162))))))

(declare-fun b!2503943 () Bool)

(declare-fun res!1058677 () Bool)

(assert (=> b!2503943 (=> res!1058677 e!1587821)))

(assert (=> b!2503943 (= res!1058677 (not (isEmpty!16850 (tail!3984 tl!4068))))))

(declare-fun b!2503944 () Bool)

(declare-fun res!1058678 () Bool)

(declare-fun e!1587822 () Bool)

(assert (=> b!2503944 (=> (not res!1058678) (not e!1587822))))

(assert (=> b!2503944 (= res!1058678 (isEmpty!16850 (tail!3984 tl!4068)))))

(declare-fun b!2503945 () Bool)

(assert (=> b!2503945 (= e!1587822 (= (head!5707 tl!4068) (c!398501 lt!896162)))))

(declare-fun b!2503946 () Bool)

(declare-fun res!1058676 () Bool)

(declare-fun e!1587824 () Bool)

(assert (=> b!2503946 (=> res!1058676 e!1587824)))

(assert (=> b!2503946 (= res!1058676 e!1587822)))

(declare-fun res!1058681 () Bool)

(assert (=> b!2503946 (=> (not res!1058681) (not e!1587822))))

(assert (=> b!2503946 (= res!1058681 lt!896208)))

(declare-fun b!2503947 () Bool)

(declare-fun e!1587818 () Bool)

(assert (=> b!2503947 (= e!1587818 e!1587821)))

(declare-fun res!1058680 () Bool)

(assert (=> b!2503947 (=> res!1058680 e!1587821)))

(assert (=> b!2503947 (= res!1058680 call!154899)))

(declare-fun b!2503948 () Bool)

(declare-fun res!1058679 () Bool)

(assert (=> b!2503948 (=> (not res!1058679) (not e!1587822))))

(assert (=> b!2503948 (= res!1058679 (not call!154899))))

(declare-fun b!2503949 () Bool)

(assert (=> b!2503949 (= e!1587824 e!1587818)))

(declare-fun res!1058675 () Bool)

(assert (=> b!2503949 (=> (not res!1058675) (not e!1587818))))

(assert (=> b!2503949 (= res!1058675 (not lt!896208))))

(declare-fun b!2503950 () Bool)

(declare-fun res!1058674 () Bool)

(assert (=> b!2503950 (=> res!1058674 e!1587824)))

(assert (=> b!2503950 (= res!1058674 (not ((_ is ElementMatch!7421) lt!896162)))))

(assert (=> b!2503950 (= e!1587820 e!1587824)))

(declare-fun b!2503951 () Bool)

(assert (=> b!2503951 (= e!1587820 (not lt!896208))))

(assert (= (and d!715804 c!398596) b!2503938))

(assert (= (and d!715804 (not c!398596)) b!2503940))

(assert (= (and d!715804 c!398595) b!2503941))

(assert (= (and d!715804 (not c!398595)) b!2503939))

(assert (= (and b!2503939 c!398597) b!2503951))

(assert (= (and b!2503939 (not c!398597)) b!2503950))

(assert (= (and b!2503950 (not res!1058674)) b!2503946))

(assert (= (and b!2503946 res!1058681) b!2503948))

(assert (= (and b!2503948 res!1058679) b!2503944))

(assert (= (and b!2503944 res!1058678) b!2503945))

(assert (= (and b!2503946 (not res!1058676)) b!2503949))

(assert (= (and b!2503949 res!1058675) b!2503947))

(assert (= (and b!2503947 (not res!1058680)) b!2503943))

(assert (= (and b!2503943 (not res!1058677)) b!2503942))

(assert (= (or b!2503941 b!2503947 b!2503948) bm!154894))

(declare-fun m!2865253 () Bool)

(assert (=> b!2503938 m!2865253))

(assert (=> b!2503943 m!2865095))

(assert (=> b!2503943 m!2865095))

(assert (=> b!2503943 m!2865097))

(assert (=> d!715804 m!2865099))

(assert (=> d!715804 m!2865243))

(assert (=> bm!154894 m!2865099))

(assert (=> b!2503940 m!2865103))

(assert (=> b!2503940 m!2865103))

(declare-fun m!2865255 () Bool)

(assert (=> b!2503940 m!2865255))

(assert (=> b!2503940 m!2865095))

(assert (=> b!2503940 m!2865255))

(assert (=> b!2503940 m!2865095))

(declare-fun m!2865257 () Bool)

(assert (=> b!2503940 m!2865257))

(assert (=> b!2503942 m!2865103))

(assert (=> b!2503944 m!2865095))

(assert (=> b!2503944 m!2865095))

(assert (=> b!2503944 m!2865097))

(assert (=> b!2503945 m!2865103))

(assert (=> b!2503627 d!715804))

(declare-fun b!2503952 () Bool)

(declare-fun e!1587829 () Bool)

(declare-fun e!1587828 () Bool)

(assert (=> b!2503952 (= e!1587829 e!1587828)))

(declare-fun c!398598 () Bool)

(assert (=> b!2503952 (= c!398598 ((_ is Union!7421) lt!896164))))

(declare-fun bm!154897 () Bool)

(declare-fun call!154902 () Bool)

(declare-fun call!154904 () Bool)

(assert (=> bm!154897 (= call!154902 call!154904)))

(declare-fun b!2503953 () Bool)

(declare-fun e!1587830 () Bool)

(declare-fun call!154903 () Bool)

(assert (=> b!2503953 (= e!1587830 call!154903)))

(declare-fun b!2503954 () Bool)

(declare-fun e!1587831 () Bool)

(assert (=> b!2503954 (= e!1587831 call!154902)))

(declare-fun b!2503955 () Bool)

(declare-fun e!1587825 () Bool)

(assert (=> b!2503955 (= e!1587825 e!1587830)))

(declare-fun res!1058682 () Bool)

(assert (=> b!2503955 (=> (not res!1058682) (not e!1587830))))

(assert (=> b!2503955 (= res!1058682 call!154902)))

(declare-fun b!2503956 () Bool)

(declare-fun e!1587827 () Bool)

(assert (=> b!2503956 (= e!1587827 call!154904)))

(declare-fun b!2503957 () Bool)

(declare-fun e!1587826 () Bool)

(assert (=> b!2503957 (= e!1587826 e!1587829)))

(declare-fun c!398599 () Bool)

(assert (=> b!2503957 (= c!398599 ((_ is Star!7421) lt!896164))))

(declare-fun b!2503958 () Bool)

(declare-fun res!1058685 () Bool)

(assert (=> b!2503958 (=> (not res!1058685) (not e!1587831))))

(assert (=> b!2503958 (= res!1058685 call!154903)))

(assert (=> b!2503958 (= e!1587828 e!1587831)))

(declare-fun bm!154898 () Bool)

(assert (=> bm!154898 (= call!154903 (validRegex!3047 (ite c!398598 (regOne!15355 lt!896164) (regTwo!15354 lt!896164))))))

(declare-fun d!715806 () Bool)

(declare-fun res!1058686 () Bool)

(assert (=> d!715806 (=> res!1058686 e!1587826)))

(assert (=> d!715806 (= res!1058686 ((_ is ElementMatch!7421) lt!896164))))

(assert (=> d!715806 (= (validRegex!3047 lt!896164) e!1587826)))

(declare-fun b!2503959 () Bool)

(assert (=> b!2503959 (= e!1587829 e!1587827)))

(declare-fun res!1058683 () Bool)

(assert (=> b!2503959 (= res!1058683 (not (nullable!2338 (reg!7750 lt!896164))))))

(assert (=> b!2503959 (=> (not res!1058683) (not e!1587827))))

(declare-fun b!2503960 () Bool)

(declare-fun res!1058684 () Bool)

(assert (=> b!2503960 (=> res!1058684 e!1587825)))

(assert (=> b!2503960 (= res!1058684 (not ((_ is Concat!12117) lt!896164)))))

(assert (=> b!2503960 (= e!1587828 e!1587825)))

(declare-fun bm!154899 () Bool)

(assert (=> bm!154899 (= call!154904 (validRegex!3047 (ite c!398599 (reg!7750 lt!896164) (ite c!398598 (regTwo!15355 lt!896164) (regOne!15354 lt!896164)))))))

(assert (= (and d!715806 (not res!1058686)) b!2503957))

(assert (= (and b!2503957 c!398599) b!2503959))

(assert (= (and b!2503957 (not c!398599)) b!2503952))

(assert (= (and b!2503959 res!1058683) b!2503956))

(assert (= (and b!2503952 c!398598) b!2503958))

(assert (= (and b!2503952 (not c!398598)) b!2503960))

(assert (= (and b!2503958 res!1058685) b!2503954))

(assert (= (and b!2503960 (not res!1058684)) b!2503955))

(assert (= (and b!2503955 res!1058682) b!2503953))

(assert (= (or b!2503958 b!2503953) bm!154898))

(assert (= (or b!2503954 b!2503955) bm!154897))

(assert (= (or b!2503956 bm!154897) bm!154899))

(declare-fun m!2865259 () Bool)

(assert (=> bm!154898 m!2865259))

(declare-fun m!2865261 () Bool)

(assert (=> b!2503959 m!2865261))

(declare-fun m!2865263 () Bool)

(assert (=> bm!154899 m!2865263))

(assert (=> b!2503618 d!715806))

(declare-fun d!715808 () Bool)

(declare-fun isEmpty!16852 (Option!5830) Bool)

(assert (=> d!715808 (= (isDefined!4652 (findConcatSeparation!852 lt!896164 (regTwo!15354 r!27340) Nil!29386 tl!4068 tl!4068)) (not (isEmpty!16852 (findConcatSeparation!852 lt!896164 (regTwo!15354 r!27340) Nil!29386 tl!4068 tl!4068))))))

(declare-fun bs!468628 () Bool)

(assert (= bs!468628 d!715808))

(assert (=> bs!468628 m!2865047))

(declare-fun m!2865265 () Bool)

(assert (=> bs!468628 m!2865265))

(assert (=> b!2503618 d!715808))

(declare-fun b!2504107 () Bool)

(declare-fun e!1587907 () Option!5830)

(assert (=> b!2504107 (= e!1587907 None!5829)))

(declare-fun b!2504109 () Bool)

(declare-fun e!1587908 () Option!5830)

(assert (=> b!2504109 (= e!1587908 e!1587907)))

(declare-fun c!398630 () Bool)

(assert (=> b!2504109 (= c!398630 ((_ is Nil!29386) tl!4068))))

(declare-fun b!2504110 () Bool)

(declare-fun res!1058744 () Bool)

(declare-fun e!1587904 () Bool)

(assert (=> b!2504110 (=> (not res!1058744) (not e!1587904))))

(declare-fun lt!896229 () Option!5830)

(declare-fun get!9123 (Option!5830) tuple2!29420)

(assert (=> b!2504110 (= res!1058744 (matchR!3424 (regTwo!15354 r!27340) (_2!17252 (get!9123 lt!896229))))))

(declare-fun b!2504111 () Bool)

(declare-fun lt!896230 () Unit!43099)

(declare-fun lt!896228 () Unit!43099)

(assert (=> b!2504111 (= lt!896230 lt!896228)))

(assert (=> b!2504111 (= (++!7183 (++!7183 Nil!29386 (Cons!29386 (h!34806 tl!4068) Nil!29386)) (t!211185 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!733 (List!29486 C!15000 List!29486 List!29486) Unit!43099)

(assert (=> b!2504111 (= lt!896228 (lemmaMoveElementToOtherListKeepsConcatEq!733 Nil!29386 (h!34806 tl!4068) (t!211185 tl!4068) tl!4068))))

(assert (=> b!2504111 (= e!1587907 (findConcatSeparation!852 lt!896164 (regTwo!15354 r!27340) (++!7183 Nil!29386 (Cons!29386 (h!34806 tl!4068) Nil!29386)) (t!211185 tl!4068) tl!4068))))

(declare-fun b!2504112 () Bool)

(assert (=> b!2504112 (= e!1587908 (Some!5829 (tuple2!29421 Nil!29386 tl!4068)))))

(declare-fun b!2504113 () Bool)

(declare-fun res!1058741 () Bool)

(assert (=> b!2504113 (=> (not res!1058741) (not e!1587904))))

(assert (=> b!2504113 (= res!1058741 (matchR!3424 lt!896164 (_1!17252 (get!9123 lt!896229))))))

(declare-fun b!2504108 () Bool)

(assert (=> b!2504108 (= e!1587904 (= (++!7183 (_1!17252 (get!9123 lt!896229)) (_2!17252 (get!9123 lt!896229))) tl!4068))))

(declare-fun d!715810 () Bool)

(declare-fun e!1587906 () Bool)

(assert (=> d!715810 e!1587906))

(declare-fun res!1058740 () Bool)

(assert (=> d!715810 (=> res!1058740 e!1587906)))

(assert (=> d!715810 (= res!1058740 e!1587904)))

(declare-fun res!1058742 () Bool)

(assert (=> d!715810 (=> (not res!1058742) (not e!1587904))))

(assert (=> d!715810 (= res!1058742 (isDefined!4652 lt!896229))))

(assert (=> d!715810 (= lt!896229 e!1587908)))

(declare-fun c!398629 () Bool)

(declare-fun e!1587905 () Bool)

(assert (=> d!715810 (= c!398629 e!1587905)))

(declare-fun res!1058743 () Bool)

(assert (=> d!715810 (=> (not res!1058743) (not e!1587905))))

(assert (=> d!715810 (= res!1058743 (matchR!3424 lt!896164 Nil!29386))))

(assert (=> d!715810 (validRegex!3047 lt!896164)))

(assert (=> d!715810 (= (findConcatSeparation!852 lt!896164 (regTwo!15354 r!27340) Nil!29386 tl!4068 tl!4068) lt!896229)))

(declare-fun b!2504114 () Bool)

(assert (=> b!2504114 (= e!1587906 (not (isDefined!4652 lt!896229)))))

(declare-fun b!2504115 () Bool)

(assert (=> b!2504115 (= e!1587905 (matchR!3424 (regTwo!15354 r!27340) tl!4068))))

(assert (= (and d!715810 res!1058743) b!2504115))

(assert (= (and d!715810 c!398629) b!2504112))

(assert (= (and d!715810 (not c!398629)) b!2504109))

(assert (= (and b!2504109 c!398630) b!2504107))

(assert (= (and b!2504109 (not c!398630)) b!2504111))

(assert (= (and d!715810 res!1058742) b!2504113))

(assert (= (and b!2504113 res!1058741) b!2504110))

(assert (= (and b!2504110 res!1058744) b!2504108))

(assert (= (and d!715810 (not res!1058740)) b!2504114))

(declare-fun m!2865351 () Bool)

(assert (=> b!2504113 m!2865351))

(declare-fun m!2865353 () Bool)

(assert (=> b!2504113 m!2865353))

(declare-fun m!2865355 () Bool)

(assert (=> d!715810 m!2865355))

(declare-fun m!2865357 () Bool)

(assert (=> d!715810 m!2865357))

(assert (=> d!715810 m!2865045))

(assert (=> b!2504110 m!2865351))

(declare-fun m!2865359 () Bool)

(assert (=> b!2504110 m!2865359))

(assert (=> b!2504108 m!2865351))

(declare-fun m!2865361 () Bool)

(assert (=> b!2504108 m!2865361))

(declare-fun m!2865363 () Bool)

(assert (=> b!2504115 m!2865363))

(declare-fun m!2865365 () Bool)

(assert (=> b!2504111 m!2865365))

(assert (=> b!2504111 m!2865365))

(declare-fun m!2865367 () Bool)

(assert (=> b!2504111 m!2865367))

(declare-fun m!2865369 () Bool)

(assert (=> b!2504111 m!2865369))

(assert (=> b!2504111 m!2865365))

(declare-fun m!2865371 () Bool)

(assert (=> b!2504111 m!2865371))

(assert (=> b!2504114 m!2865355))

(assert (=> b!2503618 d!715810))

(declare-fun d!715832 () Bool)

(assert (=> d!715832 (isDefined!4652 (findConcatSeparation!852 lt!896164 (regTwo!15354 r!27340) Nil!29386 tl!4068 tl!4068))))

(declare-fun lt!896233 () Unit!43099)

(declare-fun choose!14796 (Regex!7421 Regex!7421 List!29486) Unit!43099)

(assert (=> d!715832 (= lt!896233 (choose!14796 lt!896164 (regTwo!15354 r!27340) tl!4068))))

(assert (=> d!715832 (validRegex!3047 lt!896164)))

(assert (=> d!715832 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!134 lt!896164 (regTwo!15354 r!27340) tl!4068) lt!896233)))

(declare-fun bs!468631 () Bool)

(assert (= bs!468631 d!715832))

(assert (=> bs!468631 m!2865047))

(assert (=> bs!468631 m!2865047))

(assert (=> bs!468631 m!2865049))

(declare-fun m!2865373 () Bool)

(assert (=> bs!468631 m!2865373))

(assert (=> bs!468631 m!2865045))

(assert (=> b!2503618 d!715832))

(declare-fun b!2504126 () Bool)

(declare-fun res!1058750 () Bool)

(declare-fun e!1587914 () Bool)

(assert (=> b!2504126 (=> (not res!1058750) (not e!1587914))))

(declare-fun lt!896236 () List!29486)

(declare-fun size!22888 (List!29486) Int)

(assert (=> b!2504126 (= res!1058750 (= (size!22888 lt!896236) (+ (size!22888 Nil!29386) (size!22888 tl!4068))))))

(declare-fun b!2504125 () Bool)

(declare-fun e!1587913 () List!29486)

(assert (=> b!2504125 (= e!1587913 (Cons!29386 (h!34806 Nil!29386) (++!7183 (t!211185 Nil!29386) tl!4068)))))

(declare-fun b!2504124 () Bool)

(assert (=> b!2504124 (= e!1587913 tl!4068)))

(declare-fun b!2504127 () Bool)

(assert (=> b!2504127 (= e!1587914 (or (not (= tl!4068 Nil!29386)) (= lt!896236 Nil!29386)))))

(declare-fun d!715834 () Bool)

(assert (=> d!715834 e!1587914))

(declare-fun res!1058749 () Bool)

(assert (=> d!715834 (=> (not res!1058749) (not e!1587914))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4004 (List!29486) (InoxSet C!15000))

(assert (=> d!715834 (= res!1058749 (= (content!4004 lt!896236) ((_ map or) (content!4004 Nil!29386) (content!4004 tl!4068))))))

(assert (=> d!715834 (= lt!896236 e!1587913)))

(declare-fun c!398633 () Bool)

(assert (=> d!715834 (= c!398633 ((_ is Nil!29386) Nil!29386))))

(assert (=> d!715834 (= (++!7183 Nil!29386 tl!4068) lt!896236)))

(assert (= (and d!715834 c!398633) b!2504124))

(assert (= (and d!715834 (not c!398633)) b!2504125))

(assert (= (and d!715834 res!1058749) b!2504126))

(assert (= (and b!2504126 res!1058750) b!2504127))

(declare-fun m!2865375 () Bool)

(assert (=> b!2504126 m!2865375))

(declare-fun m!2865377 () Bool)

(assert (=> b!2504126 m!2865377))

(declare-fun m!2865379 () Bool)

(assert (=> b!2504126 m!2865379))

(declare-fun m!2865381 () Bool)

(assert (=> b!2504125 m!2865381))

(declare-fun m!2865383 () Bool)

(assert (=> d!715834 m!2865383))

(declare-fun m!2865385 () Bool)

(assert (=> d!715834 m!2865385))

(declare-fun m!2865387 () Bool)

(assert (=> d!715834 m!2865387))

(assert (=> b!2503628 d!715834))

(declare-fun e!1587917 () Bool)

(assert (=> b!2503626 (= tp!801317 e!1587917)))

(declare-fun b!2504140 () Bool)

(declare-fun tp!801371 () Bool)

(assert (=> b!2504140 (= e!1587917 tp!801371)))

(declare-fun b!2504141 () Bool)

(declare-fun tp!801374 () Bool)

(declare-fun tp!801372 () Bool)

(assert (=> b!2504141 (= e!1587917 (and tp!801374 tp!801372))))

(declare-fun b!2504138 () Bool)

(assert (=> b!2504138 (= e!1587917 tp_is_empty!12697)))

(declare-fun b!2504139 () Bool)

(declare-fun tp!801375 () Bool)

(declare-fun tp!801373 () Bool)

(assert (=> b!2504139 (= e!1587917 (and tp!801375 tp!801373))))

(assert (= (and b!2503626 ((_ is ElementMatch!7421) (reg!7750 r!27340))) b!2504138))

(assert (= (and b!2503626 ((_ is Concat!12117) (reg!7750 r!27340))) b!2504139))

(assert (= (and b!2503626 ((_ is Star!7421) (reg!7750 r!27340))) b!2504140))

(assert (= (and b!2503626 ((_ is Union!7421) (reg!7750 r!27340))) b!2504141))

(declare-fun e!1587918 () Bool)

(assert (=> b!2503621 (= tp!801322 e!1587918)))

(declare-fun b!2504144 () Bool)

(declare-fun tp!801376 () Bool)

(assert (=> b!2504144 (= e!1587918 tp!801376)))

(declare-fun b!2504145 () Bool)

(declare-fun tp!801379 () Bool)

(declare-fun tp!801377 () Bool)

(assert (=> b!2504145 (= e!1587918 (and tp!801379 tp!801377))))

(declare-fun b!2504142 () Bool)

(assert (=> b!2504142 (= e!1587918 tp_is_empty!12697)))

(declare-fun b!2504143 () Bool)

(declare-fun tp!801380 () Bool)

(declare-fun tp!801378 () Bool)

(assert (=> b!2504143 (= e!1587918 (and tp!801380 tp!801378))))

(assert (= (and b!2503621 ((_ is ElementMatch!7421) (regOne!15355 r!27340))) b!2504142))

(assert (= (and b!2503621 ((_ is Concat!12117) (regOne!15355 r!27340))) b!2504143))

(assert (= (and b!2503621 ((_ is Star!7421) (regOne!15355 r!27340))) b!2504144))

(assert (= (and b!2503621 ((_ is Union!7421) (regOne!15355 r!27340))) b!2504145))

(declare-fun e!1587919 () Bool)

(assert (=> b!2503621 (= tp!801319 e!1587919)))

(declare-fun b!2504148 () Bool)

(declare-fun tp!801381 () Bool)

(assert (=> b!2504148 (= e!1587919 tp!801381)))

(declare-fun b!2504149 () Bool)

(declare-fun tp!801384 () Bool)

(declare-fun tp!801382 () Bool)

(assert (=> b!2504149 (= e!1587919 (and tp!801384 tp!801382))))

(declare-fun b!2504146 () Bool)

(assert (=> b!2504146 (= e!1587919 tp_is_empty!12697)))

(declare-fun b!2504147 () Bool)

(declare-fun tp!801385 () Bool)

(declare-fun tp!801383 () Bool)

(assert (=> b!2504147 (= e!1587919 (and tp!801385 tp!801383))))

(assert (= (and b!2503621 ((_ is ElementMatch!7421) (regTwo!15355 r!27340))) b!2504146))

(assert (= (and b!2503621 ((_ is Concat!12117) (regTwo!15355 r!27340))) b!2504147))

(assert (= (and b!2503621 ((_ is Star!7421) (regTwo!15355 r!27340))) b!2504148))

(assert (= (and b!2503621 ((_ is Union!7421) (regTwo!15355 r!27340))) b!2504149))

(declare-fun b!2504154 () Bool)

(declare-fun e!1587922 () Bool)

(declare-fun tp!801388 () Bool)

(assert (=> b!2504154 (= e!1587922 (and tp_is_empty!12697 tp!801388))))

(assert (=> b!2503625 (= tp!801318 e!1587922)))

(assert (= (and b!2503625 ((_ is Cons!29386) (t!211185 tl!4068))) b!2504154))

(declare-fun e!1587923 () Bool)

(assert (=> b!2503619 (= tp!801320 e!1587923)))

(declare-fun b!2504157 () Bool)

(declare-fun tp!801389 () Bool)

(assert (=> b!2504157 (= e!1587923 tp!801389)))

(declare-fun b!2504158 () Bool)

(declare-fun tp!801392 () Bool)

(declare-fun tp!801390 () Bool)

(assert (=> b!2504158 (= e!1587923 (and tp!801392 tp!801390))))

(declare-fun b!2504155 () Bool)

(assert (=> b!2504155 (= e!1587923 tp_is_empty!12697)))

(declare-fun b!2504156 () Bool)

(declare-fun tp!801393 () Bool)

(declare-fun tp!801391 () Bool)

(assert (=> b!2504156 (= e!1587923 (and tp!801393 tp!801391))))

(assert (= (and b!2503619 ((_ is ElementMatch!7421) (regOne!15354 r!27340))) b!2504155))

(assert (= (and b!2503619 ((_ is Concat!12117) (regOne!15354 r!27340))) b!2504156))

(assert (= (and b!2503619 ((_ is Star!7421) (regOne!15354 r!27340))) b!2504157))

(assert (= (and b!2503619 ((_ is Union!7421) (regOne!15354 r!27340))) b!2504158))

(declare-fun e!1587924 () Bool)

(assert (=> b!2503619 (= tp!801321 e!1587924)))

(declare-fun b!2504161 () Bool)

(declare-fun tp!801394 () Bool)

(assert (=> b!2504161 (= e!1587924 tp!801394)))

(declare-fun b!2504162 () Bool)

(declare-fun tp!801397 () Bool)

(declare-fun tp!801395 () Bool)

(assert (=> b!2504162 (= e!1587924 (and tp!801397 tp!801395))))

(declare-fun b!2504159 () Bool)

(assert (=> b!2504159 (= e!1587924 tp_is_empty!12697)))

(declare-fun b!2504160 () Bool)

(declare-fun tp!801398 () Bool)

(declare-fun tp!801396 () Bool)

(assert (=> b!2504160 (= e!1587924 (and tp!801398 tp!801396))))

(assert (= (and b!2503619 ((_ is ElementMatch!7421) (regTwo!15354 r!27340))) b!2504159))

(assert (= (and b!2503619 ((_ is Concat!12117) (regTwo!15354 r!27340))) b!2504160))

(assert (= (and b!2503619 ((_ is Star!7421) (regTwo!15354 r!27340))) b!2504161))

(assert (= (and b!2503619 ((_ is Union!7421) (regTwo!15354 r!27340))) b!2504162))

(check-sat (not b!2503943) (not b!2503691) (not b!2503845) (not d!715790) (not bm!154856) (not b!2504160) (not d!715800) (not b!2503826) (not b!2504157) (not b!2504162) (not bm!154892) (not b!2504141) (not b!2504114) (not b!2503944) (not b!2503959) (not d!715796) (not b!2503902) (not d!715772) (not b!2503945) (not b!2503829) (not b!2503938) (not bm!154844) (not b!2504108) (not bm!154890) (not b!2504125) (not b!2503686) (not b!2504115) (not b!2503816) (not d!715804) (not b!2503723) (not b!2503684) (not b!2503842) (not b!2503940) (not b!2504111) (not bm!154855) (not d!715834) (not d!715802) (not b!2503688) (not bm!154899) (not d!715774) (not b!2504145) (not bm!154894) (not bm!154882) (not b!2503844) (not b!2504110) (not b!2503840) (not d!715810) (not b!2504161) (not b!2503831) (not d!715770) (not b!2503942) (not bm!154872) (not b!2504139) (not bm!154852) (not b!2503882) (not d!715756) (not b!2503843) (not b!2503689) (not b!2504149) (not d!715794) (not b!2504147) (not b!2504126) (not d!715788) (not bm!154853) (not b!2503916) (not b!2503877) (not b!2504156) (not b!2503756) (not b!2504154) (not bm!154898) tp_is_empty!12697 (not b!2504148) (not b!2503828) (not bm!154868) (not b!2504113) (not b!2503876) (not bm!154870) (not b!2503690) (not d!715808) (not bm!154873) (not b!2503838) (not b!2504140) (not d!715792) (not b!2503830) (not bm!154884) (not b!2503732) (not b!2503824) (not d!715832) (not d!715766) (not b!2504144) (not b!2504143) (not b!2504158))
(check-sat)
