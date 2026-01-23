; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!235068 () Bool)

(assert start!235068)

(declare-fun b!2395685 () Bool)

(assert (=> b!2395685 true))

(assert (=> b!2395685 true))

(declare-fun lambda!89907 () Int)

(declare-fun lambda!89906 () Int)

(assert (=> b!2395685 (not (= lambda!89907 lambda!89906))))

(assert (=> b!2395685 true))

(assert (=> b!2395685 true))

(declare-fun res!1017868 () Bool)

(declare-fun e!1526731 () Bool)

(assert (=> start!235068 (=> (not res!1017868) (not e!1526731))))

(declare-datatypes ((C!14200 0))(
  ( (C!14201 (val!8342 Int)) )
))
(declare-datatypes ((Regex!7021 0))(
  ( (ElementMatch!7021 (c!381249 C!14200)) (Concat!11657 (regOne!14554 Regex!7021) (regTwo!14554 Regex!7021)) (EmptyExpr!7021) (Star!7021 (reg!7350 Regex!7021)) (EmptyLang!7021) (Union!7021 (regOne!14555 Regex!7021) (regTwo!14555 Regex!7021)) )
))
(declare-datatypes ((List!28280 0))(
  ( (Nil!28182) (Cons!28182 (h!33583 Regex!7021) (t!208257 List!28280)) )
))
(declare-fun l!9164 () List!28280)

(declare-fun lambda!89905 () Int)

(declare-fun forall!5655 (List!28280 Int) Bool)

(assert (=> start!235068 (= res!1017868 (forall!5655 l!9164 lambda!89905))))

(assert (=> start!235068 e!1526731))

(declare-fun e!1526723 () Bool)

(assert (=> start!235068 e!1526723))

(declare-fun e!1526727 () Bool)

(assert (=> start!235068 e!1526727))

(declare-fun e!1526724 () Bool)

(assert (=> start!235068 e!1526724))

(declare-fun bm!146141 () Bool)

(declare-datatypes ((List!28281 0))(
  ( (Nil!28183) (Cons!28183 (h!33584 C!14200) (t!208258 List!28281)) )
))
(declare-datatypes ((tuple2!27906 0))(
  ( (tuple2!27907 (_1!16494 List!28281) (_2!16494 List!28281)) )
))
(declare-datatypes ((Option!5564 0))(
  ( (None!5563) (Some!5563 (v!30971 tuple2!27906)) )
))
(declare-fun call!146147 () Option!5564)

(declare-fun call!146156 () Option!5564)

(assert (=> bm!146141 (= call!146147 call!146156)))

(declare-fun b!2395679 () Bool)

(declare-datatypes ((Unit!41264 0))(
  ( (Unit!41265) )
))
(declare-fun e!1526726 () Unit!41264)

(declare-fun Unit!41266 () Unit!41264)

(assert (=> b!2395679 (= e!1526726 Unit!41266)))

(assert (=> b!2395679 false))

(declare-fun call!146152 () Regex!7021)

(declare-fun s!9460 () List!28281)

(declare-fun lt!871655 () Bool)

(declare-fun b!2395680 () Bool)

(declare-fun lt!871649 () Regex!7021)

(declare-fun isDefined!4392 (Option!5564) Bool)

(declare-fun findConcatSeparation!672 (Regex!7021 Regex!7021 List!28281 List!28281 List!28281) Option!5564)

(assert (=> b!2395680 (= lt!871655 (isDefined!4392 (findConcatSeparation!672 lt!871649 call!146152 Nil!28183 s!9460 s!9460)))))

(declare-fun lt!871663 () Unit!41264)

(declare-fun e!1526721 () Unit!41264)

(assert (=> b!2395680 (= lt!871663 e!1526721)))

(declare-fun c!381248 () Bool)

(declare-fun matchR!3138 (Regex!7021 List!28281) Bool)

(assert (=> b!2395680 (= c!381248 (matchR!3138 lt!871649 s!9460))))

(declare-fun call!146149 () Regex!7021)

(assert (=> b!2395680 (= lt!871649 call!146149)))

(declare-fun e!1526725 () Unit!41264)

(declare-fun Unit!41267 () Unit!41264)

(assert (=> b!2395680 (= e!1526725 Unit!41267)))

(declare-fun bm!146142 () Bool)

(declare-fun lt!871657 () List!28280)

(declare-fun generalisedConcat!122 (List!28280) Regex!7021)

(assert (=> bm!146142 (= call!146152 (generalisedConcat!122 lt!871657))))

(declare-fun b!2395681 () Bool)

(declare-fun tp!762968 () Bool)

(declare-fun tp!762966 () Bool)

(assert (=> b!2395681 (= e!1526723 (and tp!762968 tp!762966))))

(declare-fun b!2395682 () Bool)

(declare-fun e!1526729 () Bool)

(assert (=> b!2395682 (= e!1526729 false)))

(declare-fun b!2395683 () Bool)

(declare-fun e!1526720 () Bool)

(declare-fun call!146150 () Bool)

(assert (=> b!2395683 (= e!1526720 call!146150)))

(declare-fun b!2395684 () Bool)

(declare-fun e!1526732 () Bool)

(declare-fun validRegex!2746 (Regex!7021) Bool)

(assert (=> b!2395684 (= e!1526732 (validRegex!2746 (h!33583 l!9164)))))

(declare-fun lt!871650 () Regex!7021)

(assert (=> b!2395684 (= lt!871650 (generalisedConcat!122 (t!208257 l!9164)))))

(declare-fun e!1526719 () Bool)

(declare-fun e!1526728 () Bool)

(assert (=> b!2395685 (= e!1526719 e!1526728)))

(declare-fun res!1017869 () Bool)

(assert (=> b!2395685 (=> res!1017869 e!1526728)))

(declare-fun lt!871652 () Bool)

(declare-fun lt!871656 () Bool)

(assert (=> b!2395685 (= res!1017869 (not (= lt!871652 lt!871656)))))

(declare-fun Exists!1083 (Int) Bool)

(assert (=> b!2395685 (= (Exists!1083 lambda!89906) (Exists!1083 lambda!89907))))

(declare-fun lt!871653 () Unit!41264)

(declare-fun r!13927 () Regex!7021)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!422 (Regex!7021 Regex!7021 List!28281) Unit!41264)

(assert (=> b!2395685 (= lt!871653 (lemmaExistCutMatchRandMatchRSpecEquivalent!422 (regOne!14554 r!13927) (regTwo!14554 r!13927) s!9460))))

(assert (=> b!2395685 (= lt!871656 (Exists!1083 lambda!89906))))

(assert (=> b!2395685 (= lt!871656 (isDefined!4392 (findConcatSeparation!672 (regOne!14554 r!13927) (regTwo!14554 r!13927) Nil!28183 s!9460 s!9460)))))

(declare-fun lt!871651 () Unit!41264)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!672 (Regex!7021 Regex!7021 List!28281) Unit!41264)

(assert (=> b!2395685 (= lt!871651 (lemmaFindConcatSeparationEquivalentToExists!672 (regOne!14554 r!13927) (regTwo!14554 r!13927) s!9460))))

(declare-fun e!1526722 () Bool)

(declare-fun b!2395686 () Bool)

(assert (=> b!2395686 (= e!1526722 (not (= lt!871655 (isDefined!4392 (findConcatSeparation!672 (h!33583 l!9164) (generalisedConcat!122 (t!208257 l!9164)) Nil!28183 s!9460 s!9460)))))))

(declare-fun call!146154 () Bool)

(declare-fun lt!871648 () Option!5564)

(declare-fun bm!146143 () Bool)

(assert (=> bm!146143 (= call!146154 (isDefined!4392 (ite c!381248 call!146147 lt!871648)))))

(declare-fun call!146146 () Option!5564)

(declare-fun c!381244 () Bool)

(declare-fun call!146151 () Bool)

(declare-fun bm!146144 () Bool)

(assert (=> bm!146144 (= call!146151 (isDefined!4392 (ite c!381244 call!146146 call!146156)))))

(declare-fun b!2395687 () Bool)

(declare-fun tp_is_empty!11455 () Bool)

(assert (=> b!2395687 (= e!1526727 tp_is_empty!11455)))

(declare-fun bm!146145 () Bool)

(assert (=> bm!146145 (= call!146156 (findConcatSeparation!672 (ite c!381244 lt!871649 call!146149) (ite c!381244 EmptyExpr!7021 call!146152) Nil!28183 s!9460 s!9460))))

(declare-fun b!2395688 () Bool)

(assert (=> b!2395688 (= lt!871655 call!146151)))

(declare-fun Unit!41268 () Unit!41264)

(assert (=> b!2395688 (= e!1526725 Unit!41268)))

(declare-fun bm!146146 () Bool)

(declare-fun call!146153 () Regex!7021)

(assert (=> bm!146146 (= call!146153 call!146152)))

(declare-fun lt!871660 () Regex!7021)

(declare-fun call!146155 () Bool)

(declare-fun call!146148 () List!28281)

(declare-fun bm!146147 () Bool)

(assert (=> bm!146147 (= call!146155 (matchR!3138 (ite c!381248 lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021)) (ite c!381248 s!9460 call!146148)))))

(declare-fun b!2395689 () Bool)

(declare-fun e!1526730 () Bool)

(assert (=> b!2395689 (= e!1526730 call!146155)))

(declare-fun b!2395690 () Bool)

(declare-fun e!1526717 () Bool)

(assert (=> b!2395690 (= e!1526717 (not call!146150))))

(declare-fun b!2395691 () Bool)

(declare-fun tp!762969 () Bool)

(assert (=> b!2395691 (= e!1526724 (and tp_is_empty!11455 tp!762969))))

(declare-fun b!2395692 () Bool)

(declare-fun res!1017870 () Bool)

(assert (=> b!2395692 (=> res!1017870 e!1526732)))

(get-info :version)

(assert (=> b!2395692 (= res!1017870 (not ((_ is Cons!28182) l!9164)))))

(declare-fun b!2395693 () Bool)

(declare-fun tp!762964 () Bool)

(assert (=> b!2395693 (= e!1526727 tp!762964)))

(declare-fun bm!146148 () Bool)

(declare-fun head!5273 (List!28280) Regex!7021)

(assert (=> bm!146148 (= call!146149 (head!5273 l!9164))))

(declare-fun b!2395694 () Bool)

(declare-fun isEmpty!16171 (List!28281) Bool)

(assert (=> b!2395694 (= e!1526722 (not (= lt!871655 (isEmpty!16171 s!9460))))))

(declare-fun b!2395695 () Bool)

(assert (=> b!2395695 (= e!1526728 e!1526732)))

(declare-fun res!1017872 () Bool)

(assert (=> b!2395695 (=> res!1017872 e!1526732)))

(assert (=> b!2395695 (= res!1017872 e!1526722)))

(declare-fun c!381247 () Bool)

(assert (=> b!2395695 (= c!381247 ((_ is Cons!28182) l!9164))))

(declare-fun lt!871659 () Unit!41264)

(assert (=> b!2395695 (= lt!871659 e!1526726)))

(declare-fun c!381245 () Bool)

(declare-fun isEmpty!16172 (List!28280) Bool)

(assert (=> b!2395695 (= c!381245 (isEmpty!16172 l!9164))))

(declare-fun bm!146149 () Bool)

(assert (=> bm!146149 (= call!146146 (findConcatSeparation!672 lt!871649 call!146153 Nil!28183 s!9460 s!9460))))

(declare-fun b!2395696 () Bool)

(assert (=> b!2395696 e!1526729))

(declare-fun res!1017873 () Bool)

(assert (=> b!2395696 (=> (not res!1017873) (not e!1526729))))

(assert (=> b!2395696 (= res!1017873 call!146155)))

(declare-fun lt!871661 () tuple2!27906)

(declare-fun lt!871666 () Unit!41264)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!40 (Regex!7021 Regex!7021 List!28281 List!28281 List!28281) Unit!41264)

(assert (=> b!2395696 (= lt!871666 (lemmaFindSeparationIsDefinedThenConcatMatches!40 lt!871649 EmptyExpr!7021 (_1!16494 lt!871661) (_2!16494 lt!871661) s!9460))))

(declare-fun get!8629 (Option!5564) tuple2!27906)

(assert (=> b!2395696 (= lt!871661 (get!8629 lt!871648))))

(declare-fun e!1526718 () Unit!41264)

(declare-fun Unit!41269 () Unit!41264)

(assert (=> b!2395696 (= e!1526718 Unit!41269)))

(declare-fun bm!146150 () Bool)

(assert (=> bm!146150 (= call!146150 call!146151)))

(declare-fun b!2395697 () Bool)

(declare-fun tp!762970 () Bool)

(declare-fun tp!762967 () Bool)

(assert (=> b!2395697 (= e!1526727 (and tp!762970 tp!762967))))

(declare-fun b!2395698 () Bool)

(assert (=> b!2395698 (= e!1526731 (not e!1526719))))

(declare-fun res!1017871 () Bool)

(assert (=> b!2395698 (=> res!1017871 e!1526719)))

(assert (=> b!2395698 (= res!1017871 (not ((_ is Concat!11657) r!13927)))))

(assert (=> b!2395698 (= lt!871655 lt!871652)))

(declare-fun matchRSpec!870 (Regex!7021 List!28281) Bool)

(assert (=> b!2395698 (= lt!871652 (matchRSpec!870 r!13927 s!9460))))

(assert (=> b!2395698 (= lt!871655 (matchR!3138 r!13927 s!9460))))

(declare-fun lt!871664 () Unit!41264)

(declare-fun mainMatchTheorem!870 (Regex!7021 List!28281) Unit!41264)

(assert (=> b!2395698 (= lt!871664 (mainMatchTheorem!870 r!13927 s!9460))))

(declare-fun b!2395699 () Bool)

(declare-fun Unit!41270 () Unit!41264)

(assert (=> b!2395699 (= e!1526721 Unit!41270)))

(declare-fun lt!871654 () Unit!41264)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!58 (Regex!7021 Regex!7021 List!28281 List!28281) Unit!41264)

(assert (=> b!2395699 (= lt!871654 (lemmaTwoRegexMatchThenConcatMatchesConcatString!58 lt!871649 EmptyExpr!7021 s!9460 Nil!28183))))

(assert (=> b!2395699 (= lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021))))

(declare-fun res!1017866 () Bool)

(assert (=> b!2395699 (= res!1017866 (matchR!3138 lt!871660 call!146148))))

(assert (=> b!2395699 (=> (not res!1017866) (not e!1526730))))

(assert (=> b!2395699 e!1526730))

(declare-fun lt!871658 () Unit!41264)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!40 (Regex!7021 Regex!7021 List!28281) Unit!41264)

(assert (=> b!2395699 (= lt!871658 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!40 lt!871649 EmptyExpr!7021 s!9460))))

(declare-fun res!1017865 () Bool)

(assert (=> b!2395699 (= res!1017865 call!146154)))

(assert (=> b!2395699 (=> (not res!1017865) (not e!1526720))))

(assert (=> b!2395699 e!1526720))

(declare-fun b!2395700 () Bool)

(declare-fun Unit!41271 () Unit!41264)

(assert (=> b!2395700 (= e!1526718 Unit!41271)))

(declare-fun b!2395701 () Bool)

(declare-fun Unit!41272 () Unit!41264)

(assert (=> b!2395701 (= e!1526721 Unit!41272)))

(assert (=> b!2395701 (= lt!871648 call!146147)))

(declare-fun lt!871665 () Bool)

(assert (=> b!2395701 (= lt!871665 call!146154)))

(declare-fun c!381246 () Bool)

(assert (=> b!2395701 (= c!381246 lt!871665)))

(declare-fun lt!871662 () Unit!41264)

(assert (=> b!2395701 (= lt!871662 e!1526718)))

(declare-fun res!1017867 () Bool)

(assert (=> b!2395701 (= res!1017867 (not lt!871665))))

(assert (=> b!2395701 (=> (not res!1017867) (not e!1526717))))

(assert (=> b!2395701 e!1526717))

(declare-fun b!2395702 () Bool)

(declare-fun tp!762965 () Bool)

(declare-fun tp!762971 () Bool)

(assert (=> b!2395702 (= e!1526727 (and tp!762965 tp!762971))))

(declare-fun bm!146151 () Bool)

(declare-fun ++!6975 (List!28281 List!28281) List!28281)

(assert (=> bm!146151 (= call!146148 (++!6975 (ite c!381248 s!9460 (_1!16494 lt!871661)) (ite c!381248 Nil!28183 (_2!16494 lt!871661))))))

(declare-fun b!2395703 () Bool)

(assert (=> b!2395703 (= e!1526726 e!1526725)))

(declare-fun tail!3543 (List!28280) List!28280)

(assert (=> b!2395703 (= lt!871657 (tail!3543 l!9164))))

(assert (=> b!2395703 (= c!381244 (isEmpty!16172 lt!871657))))

(declare-fun b!2395704 () Bool)

(declare-fun res!1017874 () Bool)

(assert (=> b!2395704 (=> (not res!1017874) (not e!1526731))))

(assert (=> b!2395704 (= res!1017874 (= r!13927 (generalisedConcat!122 l!9164)))))

(assert (= (and start!235068 res!1017868) b!2395704))

(assert (= (and b!2395704 res!1017874) b!2395698))

(assert (= (and b!2395698 (not res!1017871)) b!2395685))

(assert (= (and b!2395685 (not res!1017869)) b!2395695))

(assert (= (and b!2395695 c!381245) b!2395679))

(assert (= (and b!2395695 (not c!381245)) b!2395703))

(assert (= (and b!2395703 c!381244) b!2395680))

(assert (= (and b!2395703 (not c!381244)) b!2395688))

(assert (= (and b!2395680 c!381248) b!2395699))

(assert (= (and b!2395680 (not c!381248)) b!2395701))

(assert (= (and b!2395699 res!1017866) b!2395689))

(assert (= (and b!2395699 res!1017865) b!2395683))

(assert (= (and b!2395701 c!381246) b!2395696))

(assert (= (and b!2395701 (not c!381246)) b!2395700))

(assert (= (and b!2395696 res!1017873) b!2395682))

(assert (= (and b!2395701 res!1017867) b!2395690))

(assert (= (or b!2395699 b!2395696) bm!146151))

(assert (= (or b!2395699 b!2395701) bm!146141))

(assert (= (or b!2395683 b!2395690) bm!146146))

(assert (= (or b!2395689 b!2395696) bm!146147))

(assert (= (or b!2395699 b!2395701) bm!146143))

(assert (= (or b!2395683 b!2395690) bm!146149))

(assert (= (or b!2395683 b!2395690) bm!146150))

(assert (= (or b!2395680 b!2395688) bm!146148))

(assert (= (or b!2395680 bm!146146 b!2395688) bm!146142))

(assert (= (or bm!146141 b!2395688) bm!146145))

(assert (= (or bm!146150 b!2395688) bm!146144))

(assert (= (and b!2395695 c!381247) b!2395686))

(assert (= (and b!2395695 (not c!381247)) b!2395694))

(assert (= (and b!2395695 (not res!1017872)) b!2395692))

(assert (= (and b!2395692 (not res!1017870)) b!2395684))

(assert (= (and start!235068 ((_ is Cons!28182) l!9164)) b!2395681))

(assert (= (and start!235068 ((_ is ElementMatch!7021) r!13927)) b!2395687))

(assert (= (and start!235068 ((_ is Concat!11657) r!13927)) b!2395702))

(assert (= (and start!235068 ((_ is Star!7021) r!13927)) b!2395693))

(assert (= (and start!235068 ((_ is Union!7021) r!13927)) b!2395697))

(assert (= (and start!235068 ((_ is Cons!28183) s!9460)) b!2395691))

(declare-fun m!2794599 () Bool)

(assert (=> b!2395703 m!2794599))

(declare-fun m!2794601 () Bool)

(assert (=> b!2395703 m!2794601))

(declare-fun m!2794603 () Bool)

(assert (=> bm!146147 m!2794603))

(declare-fun m!2794605 () Bool)

(assert (=> bm!146151 m!2794605))

(declare-fun m!2794607 () Bool)

(assert (=> b!2395680 m!2794607))

(assert (=> b!2395680 m!2794607))

(declare-fun m!2794609 () Bool)

(assert (=> b!2395680 m!2794609))

(declare-fun m!2794611 () Bool)

(assert (=> b!2395680 m!2794611))

(declare-fun m!2794613 () Bool)

(assert (=> start!235068 m!2794613))

(declare-fun m!2794615 () Bool)

(assert (=> b!2395704 m!2794615))

(declare-fun m!2794617 () Bool)

(assert (=> bm!146144 m!2794617))

(declare-fun m!2794619 () Bool)

(assert (=> b!2395694 m!2794619))

(declare-fun m!2794621 () Bool)

(assert (=> b!2395698 m!2794621))

(declare-fun m!2794623 () Bool)

(assert (=> b!2395698 m!2794623))

(declare-fun m!2794625 () Bool)

(assert (=> b!2395698 m!2794625))

(declare-fun m!2794627 () Bool)

(assert (=> bm!146149 m!2794627))

(declare-fun m!2794629 () Bool)

(assert (=> bm!146145 m!2794629))

(declare-fun m!2794631 () Bool)

(assert (=> b!2395699 m!2794631))

(declare-fun m!2794633 () Bool)

(assert (=> b!2395699 m!2794633))

(declare-fun m!2794635 () Bool)

(assert (=> b!2395699 m!2794635))

(declare-fun m!2794637 () Bool)

(assert (=> b!2395684 m!2794637))

(declare-fun m!2794639 () Bool)

(assert (=> b!2395684 m!2794639))

(declare-fun m!2794641 () Bool)

(assert (=> b!2395695 m!2794641))

(declare-fun m!2794643 () Bool)

(assert (=> bm!146148 m!2794643))

(assert (=> b!2395686 m!2794639))

(assert (=> b!2395686 m!2794639))

(declare-fun m!2794645 () Bool)

(assert (=> b!2395686 m!2794645))

(assert (=> b!2395686 m!2794645))

(declare-fun m!2794647 () Bool)

(assert (=> b!2395686 m!2794647))

(declare-fun m!2794649 () Bool)

(assert (=> bm!146143 m!2794649))

(declare-fun m!2794651 () Bool)

(assert (=> b!2395696 m!2794651))

(declare-fun m!2794653 () Bool)

(assert (=> b!2395696 m!2794653))

(declare-fun m!2794655 () Bool)

(assert (=> bm!146142 m!2794655))

(declare-fun m!2794657 () Bool)

(assert (=> b!2395685 m!2794657))

(declare-fun m!2794659 () Bool)

(assert (=> b!2395685 m!2794659))

(declare-fun m!2794661 () Bool)

(assert (=> b!2395685 m!2794661))

(declare-fun m!2794663 () Bool)

(assert (=> b!2395685 m!2794663))

(assert (=> b!2395685 m!2794657))

(assert (=> b!2395685 m!2794663))

(declare-fun m!2794665 () Bool)

(assert (=> b!2395685 m!2794665))

(declare-fun m!2794667 () Bool)

(assert (=> b!2395685 m!2794667))

(check-sat (not bm!146148) (not b!2395684) (not b!2395702) (not b!2395703) tp_is_empty!11455 (not b!2395685) (not b!2395691) (not b!2395698) (not start!235068) (not bm!146151) (not b!2395704) (not bm!146144) (not bm!146145) (not bm!146149) (not b!2395696) (not bm!146143) (not b!2395680) (not b!2395697) (not b!2395694) (not b!2395686) (not bm!146142) (not b!2395693) (not b!2395695) (not bm!146147) (not b!2395699) (not b!2395681))
(check-sat)
(get-model)

(declare-fun b!2395727 () Bool)

(declare-fun e!1526746 () Bool)

(declare-fun lt!871674 () Option!5564)

(assert (=> b!2395727 (= e!1526746 (not (isDefined!4392 lt!871674)))))

(declare-fun b!2395728 () Bool)

(declare-fun e!1526744 () Option!5564)

(assert (=> b!2395728 (= e!1526744 (Some!5563 (tuple2!27907 Nil!28183 s!9460)))))

(declare-fun d!698931 () Bool)

(assert (=> d!698931 e!1526746))

(declare-fun res!1017887 () Bool)

(assert (=> d!698931 (=> res!1017887 e!1526746)))

(declare-fun e!1526747 () Bool)

(assert (=> d!698931 (= res!1017887 e!1526747)))

(declare-fun res!1017885 () Bool)

(assert (=> d!698931 (=> (not res!1017885) (not e!1526747))))

(assert (=> d!698931 (= res!1017885 (isDefined!4392 lt!871674))))

(assert (=> d!698931 (= lt!871674 e!1526744)))

(declare-fun c!381254 () Bool)

(declare-fun e!1526743 () Bool)

(assert (=> d!698931 (= c!381254 e!1526743)))

(declare-fun res!1017888 () Bool)

(assert (=> d!698931 (=> (not res!1017888) (not e!1526743))))

(assert (=> d!698931 (= res!1017888 (matchR!3138 (ite c!381244 lt!871649 call!146149) Nil!28183))))

(assert (=> d!698931 (validRegex!2746 (ite c!381244 lt!871649 call!146149))))

(assert (=> d!698931 (= (findConcatSeparation!672 (ite c!381244 lt!871649 call!146149) (ite c!381244 EmptyExpr!7021 call!146152) Nil!28183 s!9460 s!9460) lt!871674)))

(declare-fun b!2395729 () Bool)

(declare-fun res!1017889 () Bool)

(assert (=> b!2395729 (=> (not res!1017889) (not e!1526747))))

(assert (=> b!2395729 (= res!1017889 (matchR!3138 (ite c!381244 EmptyExpr!7021 call!146152) (_2!16494 (get!8629 lt!871674))))))

(declare-fun b!2395730 () Bool)

(assert (=> b!2395730 (= e!1526743 (matchR!3138 (ite c!381244 EmptyExpr!7021 call!146152) s!9460))))

(declare-fun b!2395731 () Bool)

(declare-fun lt!871675 () Unit!41264)

(declare-fun lt!871673 () Unit!41264)

(assert (=> b!2395731 (= lt!871675 lt!871673)))

(assert (=> b!2395731 (= (++!6975 (++!6975 Nil!28183 (Cons!28183 (h!33584 s!9460) Nil!28183)) (t!208258 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!616 (List!28281 C!14200 List!28281 List!28281) Unit!41264)

(assert (=> b!2395731 (= lt!871673 (lemmaMoveElementToOtherListKeepsConcatEq!616 Nil!28183 (h!33584 s!9460) (t!208258 s!9460) s!9460))))

(declare-fun e!1526745 () Option!5564)

(assert (=> b!2395731 (= e!1526745 (findConcatSeparation!672 (ite c!381244 lt!871649 call!146149) (ite c!381244 EmptyExpr!7021 call!146152) (++!6975 Nil!28183 (Cons!28183 (h!33584 s!9460) Nil!28183)) (t!208258 s!9460) s!9460))))

(declare-fun b!2395732 () Bool)

(assert (=> b!2395732 (= e!1526745 None!5563)))

(declare-fun b!2395733 () Bool)

(declare-fun res!1017886 () Bool)

(assert (=> b!2395733 (=> (not res!1017886) (not e!1526747))))

(assert (=> b!2395733 (= res!1017886 (matchR!3138 (ite c!381244 lt!871649 call!146149) (_1!16494 (get!8629 lt!871674))))))

(declare-fun b!2395734 () Bool)

(assert (=> b!2395734 (= e!1526747 (= (++!6975 (_1!16494 (get!8629 lt!871674)) (_2!16494 (get!8629 lt!871674))) s!9460))))

(declare-fun b!2395735 () Bool)

(assert (=> b!2395735 (= e!1526744 e!1526745)))

(declare-fun c!381255 () Bool)

(assert (=> b!2395735 (= c!381255 ((_ is Nil!28183) s!9460))))

(assert (= (and d!698931 res!1017888) b!2395730))

(assert (= (and d!698931 c!381254) b!2395728))

(assert (= (and d!698931 (not c!381254)) b!2395735))

(assert (= (and b!2395735 c!381255) b!2395732))

(assert (= (and b!2395735 (not c!381255)) b!2395731))

(assert (= (and d!698931 res!1017885) b!2395733))

(assert (= (and b!2395733 res!1017886) b!2395729))

(assert (= (and b!2395729 res!1017889) b!2395734))

(assert (= (and d!698931 (not res!1017887)) b!2395727))

(declare-fun m!2794669 () Bool)

(assert (=> b!2395727 m!2794669))

(declare-fun m!2794671 () Bool)

(assert (=> b!2395734 m!2794671))

(declare-fun m!2794673 () Bool)

(assert (=> b!2395734 m!2794673))

(assert (=> b!2395733 m!2794671))

(declare-fun m!2794675 () Bool)

(assert (=> b!2395733 m!2794675))

(assert (=> b!2395729 m!2794671))

(declare-fun m!2794677 () Bool)

(assert (=> b!2395729 m!2794677))

(declare-fun m!2794679 () Bool)

(assert (=> b!2395731 m!2794679))

(assert (=> b!2395731 m!2794679))

(declare-fun m!2794681 () Bool)

(assert (=> b!2395731 m!2794681))

(declare-fun m!2794683 () Bool)

(assert (=> b!2395731 m!2794683))

(assert (=> b!2395731 m!2794679))

(declare-fun m!2794685 () Bool)

(assert (=> b!2395731 m!2794685))

(assert (=> d!698931 m!2794669))

(declare-fun m!2794687 () Bool)

(assert (=> d!698931 m!2794687))

(declare-fun m!2794689 () Bool)

(assert (=> d!698931 m!2794689))

(declare-fun m!2794691 () Bool)

(assert (=> b!2395730 m!2794691))

(assert (=> bm!146145 d!698931))

(declare-fun d!698935 () Bool)

(declare-fun isEmpty!16173 (Option!5564) Bool)

(assert (=> d!698935 (= (isDefined!4392 (findConcatSeparation!672 lt!871649 call!146152 Nil!28183 s!9460 s!9460)) (not (isEmpty!16173 (findConcatSeparation!672 lt!871649 call!146152 Nil!28183 s!9460 s!9460))))))

(declare-fun bs!462861 () Bool)

(assert (= bs!462861 d!698935))

(assert (=> bs!462861 m!2794607))

(declare-fun m!2794693 () Bool)

(assert (=> bs!462861 m!2794693))

(assert (=> b!2395680 d!698935))

(declare-fun b!2395736 () Bool)

(declare-fun e!1526751 () Bool)

(declare-fun lt!871677 () Option!5564)

(assert (=> b!2395736 (= e!1526751 (not (isDefined!4392 lt!871677)))))

(declare-fun b!2395737 () Bool)

(declare-fun e!1526749 () Option!5564)

(assert (=> b!2395737 (= e!1526749 (Some!5563 (tuple2!27907 Nil!28183 s!9460)))))

(declare-fun d!698937 () Bool)

(assert (=> d!698937 e!1526751))

(declare-fun res!1017892 () Bool)

(assert (=> d!698937 (=> res!1017892 e!1526751)))

(declare-fun e!1526752 () Bool)

(assert (=> d!698937 (= res!1017892 e!1526752)))

(declare-fun res!1017890 () Bool)

(assert (=> d!698937 (=> (not res!1017890) (not e!1526752))))

(assert (=> d!698937 (= res!1017890 (isDefined!4392 lt!871677))))

(assert (=> d!698937 (= lt!871677 e!1526749)))

(declare-fun c!381256 () Bool)

(declare-fun e!1526748 () Bool)

(assert (=> d!698937 (= c!381256 e!1526748)))

(declare-fun res!1017893 () Bool)

(assert (=> d!698937 (=> (not res!1017893) (not e!1526748))))

(assert (=> d!698937 (= res!1017893 (matchR!3138 lt!871649 Nil!28183))))

(assert (=> d!698937 (validRegex!2746 lt!871649)))

(assert (=> d!698937 (= (findConcatSeparation!672 lt!871649 call!146152 Nil!28183 s!9460 s!9460) lt!871677)))

(declare-fun b!2395738 () Bool)

(declare-fun res!1017894 () Bool)

(assert (=> b!2395738 (=> (not res!1017894) (not e!1526752))))

(assert (=> b!2395738 (= res!1017894 (matchR!3138 call!146152 (_2!16494 (get!8629 lt!871677))))))

(declare-fun b!2395739 () Bool)

(assert (=> b!2395739 (= e!1526748 (matchR!3138 call!146152 s!9460))))

(declare-fun b!2395740 () Bool)

(declare-fun lt!871678 () Unit!41264)

(declare-fun lt!871676 () Unit!41264)

(assert (=> b!2395740 (= lt!871678 lt!871676)))

(assert (=> b!2395740 (= (++!6975 (++!6975 Nil!28183 (Cons!28183 (h!33584 s!9460) Nil!28183)) (t!208258 s!9460)) s!9460)))

(assert (=> b!2395740 (= lt!871676 (lemmaMoveElementToOtherListKeepsConcatEq!616 Nil!28183 (h!33584 s!9460) (t!208258 s!9460) s!9460))))

(declare-fun e!1526750 () Option!5564)

(assert (=> b!2395740 (= e!1526750 (findConcatSeparation!672 lt!871649 call!146152 (++!6975 Nil!28183 (Cons!28183 (h!33584 s!9460) Nil!28183)) (t!208258 s!9460) s!9460))))

(declare-fun b!2395741 () Bool)

(assert (=> b!2395741 (= e!1526750 None!5563)))

(declare-fun b!2395742 () Bool)

(declare-fun res!1017891 () Bool)

(assert (=> b!2395742 (=> (not res!1017891) (not e!1526752))))

(assert (=> b!2395742 (= res!1017891 (matchR!3138 lt!871649 (_1!16494 (get!8629 lt!871677))))))

(declare-fun b!2395743 () Bool)

(assert (=> b!2395743 (= e!1526752 (= (++!6975 (_1!16494 (get!8629 lt!871677)) (_2!16494 (get!8629 lt!871677))) s!9460))))

(declare-fun b!2395744 () Bool)

(assert (=> b!2395744 (= e!1526749 e!1526750)))

(declare-fun c!381257 () Bool)

(assert (=> b!2395744 (= c!381257 ((_ is Nil!28183) s!9460))))

(assert (= (and d!698937 res!1017893) b!2395739))

(assert (= (and d!698937 c!381256) b!2395737))

(assert (= (and d!698937 (not c!381256)) b!2395744))

(assert (= (and b!2395744 c!381257) b!2395741))

(assert (= (and b!2395744 (not c!381257)) b!2395740))

(assert (= (and d!698937 res!1017890) b!2395742))

(assert (= (and b!2395742 res!1017891) b!2395738))

(assert (= (and b!2395738 res!1017894) b!2395743))

(assert (= (and d!698937 (not res!1017892)) b!2395736))

(declare-fun m!2794695 () Bool)

(assert (=> b!2395736 m!2794695))

(declare-fun m!2794697 () Bool)

(assert (=> b!2395743 m!2794697))

(declare-fun m!2794699 () Bool)

(assert (=> b!2395743 m!2794699))

(assert (=> b!2395742 m!2794697))

(declare-fun m!2794701 () Bool)

(assert (=> b!2395742 m!2794701))

(assert (=> b!2395738 m!2794697))

(declare-fun m!2794703 () Bool)

(assert (=> b!2395738 m!2794703))

(assert (=> b!2395740 m!2794679))

(assert (=> b!2395740 m!2794679))

(assert (=> b!2395740 m!2794681))

(assert (=> b!2395740 m!2794683))

(assert (=> b!2395740 m!2794679))

(declare-fun m!2794705 () Bool)

(assert (=> b!2395740 m!2794705))

(assert (=> d!698937 m!2794695))

(declare-fun m!2794707 () Bool)

(assert (=> d!698937 m!2794707))

(declare-fun m!2794709 () Bool)

(assert (=> d!698937 m!2794709))

(declare-fun m!2794711 () Bool)

(assert (=> b!2395739 m!2794711))

(assert (=> b!2395680 d!698937))

(declare-fun b!2395815 () Bool)

(declare-fun e!1526788 () Bool)

(declare-fun lt!871684 () Bool)

(declare-fun call!146162 () Bool)

(assert (=> b!2395815 (= e!1526788 (= lt!871684 call!146162))))

(declare-fun b!2395816 () Bool)

(declare-fun res!1017937 () Bool)

(declare-fun e!1526793 () Bool)

(assert (=> b!2395816 (=> (not res!1017937) (not e!1526793))))

(assert (=> b!2395816 (= res!1017937 (not call!146162))))

(declare-fun b!2395817 () Bool)

(declare-fun res!1017939 () Bool)

(declare-fun e!1526792 () Bool)

(assert (=> b!2395817 (=> res!1017939 e!1526792)))

(declare-fun tail!3545 (List!28281) List!28281)

(assert (=> b!2395817 (= res!1017939 (not (isEmpty!16171 (tail!3545 s!9460))))))

(declare-fun b!2395818 () Bool)

(declare-fun res!1017940 () Bool)

(declare-fun e!1526789 () Bool)

(assert (=> b!2395818 (=> res!1017940 e!1526789)))

(assert (=> b!2395818 (= res!1017940 e!1526793)))

(declare-fun res!1017935 () Bool)

(assert (=> b!2395818 (=> (not res!1017935) (not e!1526793))))

(assert (=> b!2395818 (= res!1017935 lt!871684)))

(declare-fun b!2395819 () Bool)

(declare-fun res!1017941 () Bool)

(assert (=> b!2395819 (=> res!1017941 e!1526789)))

(assert (=> b!2395819 (= res!1017941 (not ((_ is ElementMatch!7021) lt!871649)))))

(declare-fun e!1526791 () Bool)

(assert (=> b!2395819 (= e!1526791 e!1526789)))

(declare-fun b!2395820 () Bool)

(assert (=> b!2395820 (= e!1526791 (not lt!871684))))

(declare-fun d!698939 () Bool)

(assert (=> d!698939 e!1526788))

(declare-fun c!381274 () Bool)

(assert (=> d!698939 (= c!381274 ((_ is EmptyExpr!7021) lt!871649))))

(declare-fun e!1526790 () Bool)

(assert (=> d!698939 (= lt!871684 e!1526790)))

(declare-fun c!381273 () Bool)

(assert (=> d!698939 (= c!381273 (isEmpty!16171 s!9460))))

(assert (=> d!698939 (validRegex!2746 lt!871649)))

(assert (=> d!698939 (= (matchR!3138 lt!871649 s!9460) lt!871684)))

(declare-fun b!2395821 () Bool)

(declare-fun head!5275 (List!28281) C!14200)

(assert (=> b!2395821 (= e!1526793 (= (head!5275 s!9460) (c!381249 lt!871649)))))

(declare-fun b!2395822 () Bool)

(declare-fun e!1526794 () Bool)

(assert (=> b!2395822 (= e!1526789 e!1526794)))

(declare-fun res!1017938 () Bool)

(assert (=> b!2395822 (=> (not res!1017938) (not e!1526794))))

(assert (=> b!2395822 (= res!1017938 (not lt!871684))))

(declare-fun b!2395823 () Bool)

(assert (=> b!2395823 (= e!1526794 e!1526792)))

(declare-fun res!1017936 () Bool)

(assert (=> b!2395823 (=> res!1017936 e!1526792)))

(assert (=> b!2395823 (= res!1017936 call!146162)))

(declare-fun b!2395824 () Bool)

(declare-fun derivativeStep!1728 (Regex!7021 C!14200) Regex!7021)

(assert (=> b!2395824 (= e!1526790 (matchR!3138 (derivativeStep!1728 lt!871649 (head!5275 s!9460)) (tail!3545 s!9460)))))

(declare-fun b!2395825 () Bool)

(assert (=> b!2395825 (= e!1526788 e!1526791)))

(declare-fun c!381275 () Bool)

(assert (=> b!2395825 (= c!381275 ((_ is EmptyLang!7021) lt!871649))))

(declare-fun b!2395826 () Bool)

(assert (=> b!2395826 (= e!1526792 (not (= (head!5275 s!9460) (c!381249 lt!871649))))))

(declare-fun b!2395827 () Bool)

(declare-fun nullable!2070 (Regex!7021) Bool)

(assert (=> b!2395827 (= e!1526790 (nullable!2070 lt!871649))))

(declare-fun bm!146157 () Bool)

(assert (=> bm!146157 (= call!146162 (isEmpty!16171 s!9460))))

(declare-fun b!2395828 () Bool)

(declare-fun res!1017942 () Bool)

(assert (=> b!2395828 (=> (not res!1017942) (not e!1526793))))

(assert (=> b!2395828 (= res!1017942 (isEmpty!16171 (tail!3545 s!9460)))))

(assert (= (and d!698939 c!381273) b!2395827))

(assert (= (and d!698939 (not c!381273)) b!2395824))

(assert (= (and d!698939 c!381274) b!2395815))

(assert (= (and d!698939 (not c!381274)) b!2395825))

(assert (= (and b!2395825 c!381275) b!2395820))

(assert (= (and b!2395825 (not c!381275)) b!2395819))

(assert (= (and b!2395819 (not res!1017941)) b!2395818))

(assert (= (and b!2395818 res!1017935) b!2395816))

(assert (= (and b!2395816 res!1017937) b!2395828))

(assert (= (and b!2395828 res!1017942) b!2395821))

(assert (= (and b!2395818 (not res!1017940)) b!2395822))

(assert (= (and b!2395822 res!1017938) b!2395823))

(assert (= (and b!2395823 (not res!1017936)) b!2395817))

(assert (= (and b!2395817 (not res!1017939)) b!2395826))

(assert (= (or b!2395815 b!2395816 b!2395823) bm!146157))

(declare-fun m!2794729 () Bool)

(assert (=> b!2395824 m!2794729))

(assert (=> b!2395824 m!2794729))

(declare-fun m!2794731 () Bool)

(assert (=> b!2395824 m!2794731))

(declare-fun m!2794733 () Bool)

(assert (=> b!2395824 m!2794733))

(assert (=> b!2395824 m!2794731))

(assert (=> b!2395824 m!2794733))

(declare-fun m!2794735 () Bool)

(assert (=> b!2395824 m!2794735))

(assert (=> b!2395828 m!2794733))

(assert (=> b!2395828 m!2794733))

(declare-fun m!2794737 () Bool)

(assert (=> b!2395828 m!2794737))

(assert (=> bm!146157 m!2794619))

(declare-fun m!2794739 () Bool)

(assert (=> b!2395827 m!2794739))

(assert (=> b!2395817 m!2794733))

(assert (=> b!2395817 m!2794733))

(assert (=> b!2395817 m!2794737))

(assert (=> b!2395821 m!2794729))

(assert (=> b!2395826 m!2794729))

(assert (=> d!698939 m!2794619))

(assert (=> d!698939 m!2794709))

(assert (=> b!2395680 d!698939))

(declare-fun b!2395867 () Bool)

(declare-fun e!1526818 () List!28281)

(assert (=> b!2395867 (= e!1526818 (ite c!381248 Nil!28183 (_2!16494 lt!871661)))))

(declare-fun b!2395868 () Bool)

(assert (=> b!2395868 (= e!1526818 (Cons!28183 (h!33584 (ite c!381248 s!9460 (_1!16494 lt!871661))) (++!6975 (t!208258 (ite c!381248 s!9460 (_1!16494 lt!871661))) (ite c!381248 Nil!28183 (_2!16494 lt!871661)))))))

(declare-fun lt!871690 () List!28281)

(declare-fun b!2395870 () Bool)

(declare-fun e!1526817 () Bool)

(assert (=> b!2395870 (= e!1526817 (or (not (= (ite c!381248 Nil!28183 (_2!16494 lt!871661)) Nil!28183)) (= lt!871690 (ite c!381248 s!9460 (_1!16494 lt!871661)))))))

(declare-fun d!698943 () Bool)

(assert (=> d!698943 e!1526817))

(declare-fun res!1017954 () Bool)

(assert (=> d!698943 (=> (not res!1017954) (not e!1526817))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3857 (List!28281) (InoxSet C!14200))

(assert (=> d!698943 (= res!1017954 (= (content!3857 lt!871690) ((_ map or) (content!3857 (ite c!381248 s!9460 (_1!16494 lt!871661))) (content!3857 (ite c!381248 Nil!28183 (_2!16494 lt!871661))))))))

(assert (=> d!698943 (= lt!871690 e!1526818)))

(declare-fun c!381290 () Bool)

(assert (=> d!698943 (= c!381290 ((_ is Nil!28183) (ite c!381248 s!9460 (_1!16494 lt!871661))))))

(assert (=> d!698943 (= (++!6975 (ite c!381248 s!9460 (_1!16494 lt!871661)) (ite c!381248 Nil!28183 (_2!16494 lt!871661))) lt!871690)))

(declare-fun b!2395869 () Bool)

(declare-fun res!1017953 () Bool)

(assert (=> b!2395869 (=> (not res!1017953) (not e!1526817))))

(declare-fun size!22195 (List!28281) Int)

(assert (=> b!2395869 (= res!1017953 (= (size!22195 lt!871690) (+ (size!22195 (ite c!381248 s!9460 (_1!16494 lt!871661))) (size!22195 (ite c!381248 Nil!28183 (_2!16494 lt!871661))))))))

(assert (= (and d!698943 c!381290) b!2395867))

(assert (= (and d!698943 (not c!381290)) b!2395868))

(assert (= (and d!698943 res!1017954) b!2395869))

(assert (= (and b!2395869 res!1017953) b!2395870))

(declare-fun m!2794759 () Bool)

(assert (=> b!2395868 m!2794759))

(declare-fun m!2794761 () Bool)

(assert (=> d!698943 m!2794761))

(declare-fun m!2794763 () Bool)

(assert (=> d!698943 m!2794763))

(declare-fun m!2794765 () Bool)

(assert (=> d!698943 m!2794765))

(declare-fun m!2794767 () Bool)

(assert (=> b!2395869 m!2794767))

(declare-fun m!2794769 () Bool)

(assert (=> b!2395869 m!2794769))

(declare-fun m!2794771 () Bool)

(assert (=> b!2395869 m!2794771))

(assert (=> bm!146151 d!698943))

(declare-fun bs!462863 () Bool)

(declare-fun d!698947 () Bool)

(assert (= bs!462863 (and d!698947 start!235068)))

(declare-fun lambda!89913 () Int)

(assert (=> bs!462863 (= lambda!89913 lambda!89905)))

(declare-fun b!2395897 () Bool)

(declare-fun e!1526839 () Bool)

(declare-fun lt!871693 () Regex!7021)

(assert (=> b!2395897 (= e!1526839 (= lt!871693 (head!5273 lt!871657)))))

(declare-fun b!2395898 () Bool)

(declare-fun e!1526838 () Bool)

(declare-fun isEmptyExpr!91 (Regex!7021) Bool)

(assert (=> b!2395898 (= e!1526838 (isEmptyExpr!91 lt!871693))))

(declare-fun b!2395899 () Bool)

(declare-fun e!1526840 () Regex!7021)

(assert (=> b!2395899 (= e!1526840 (h!33583 lt!871657))))

(declare-fun e!1526842 () Bool)

(assert (=> d!698947 e!1526842))

(declare-fun res!1017966 () Bool)

(assert (=> d!698947 (=> (not res!1017966) (not e!1526842))))

(assert (=> d!698947 (= res!1017966 (validRegex!2746 lt!871693))))

(assert (=> d!698947 (= lt!871693 e!1526840)))

(declare-fun c!381302 () Bool)

(declare-fun e!1526837 () Bool)

(assert (=> d!698947 (= c!381302 e!1526837)))

(declare-fun res!1017965 () Bool)

(assert (=> d!698947 (=> (not res!1017965) (not e!1526837))))

(assert (=> d!698947 (= res!1017965 ((_ is Cons!28182) lt!871657))))

(assert (=> d!698947 (forall!5655 lt!871657 lambda!89913)))

(assert (=> d!698947 (= (generalisedConcat!122 lt!871657) lt!871693)))

(declare-fun b!2395900 () Bool)

(declare-fun e!1526841 () Regex!7021)

(assert (=> b!2395900 (= e!1526841 (Concat!11657 (h!33583 lt!871657) (generalisedConcat!122 (t!208257 lt!871657))))))

(declare-fun b!2395901 () Bool)

(assert (=> b!2395901 (= e!1526838 e!1526839)))

(declare-fun c!381301 () Bool)

(assert (=> b!2395901 (= c!381301 (isEmpty!16172 (tail!3543 lt!871657)))))

(declare-fun b!2395902 () Bool)

(assert (=> b!2395902 (= e!1526842 e!1526838)))

(declare-fun c!381300 () Bool)

(assert (=> b!2395902 (= c!381300 (isEmpty!16172 lt!871657))))

(declare-fun b!2395903 () Bool)

(declare-fun isConcat!91 (Regex!7021) Bool)

(assert (=> b!2395903 (= e!1526839 (isConcat!91 lt!871693))))

(declare-fun b!2395904 () Bool)

(assert (=> b!2395904 (= e!1526837 (isEmpty!16172 (t!208257 lt!871657)))))

(declare-fun b!2395905 () Bool)

(assert (=> b!2395905 (= e!1526840 e!1526841)))

(declare-fun c!381299 () Bool)

(assert (=> b!2395905 (= c!381299 ((_ is Cons!28182) lt!871657))))

(declare-fun b!2395906 () Bool)

(assert (=> b!2395906 (= e!1526841 EmptyExpr!7021)))

(assert (= (and d!698947 res!1017965) b!2395904))

(assert (= (and d!698947 c!381302) b!2395899))

(assert (= (and d!698947 (not c!381302)) b!2395905))

(assert (= (and b!2395905 c!381299) b!2395900))

(assert (= (and b!2395905 (not c!381299)) b!2395906))

(assert (= (and d!698947 res!1017966) b!2395902))

(assert (= (and b!2395902 c!381300) b!2395898))

(assert (= (and b!2395902 (not c!381300)) b!2395901))

(assert (= (and b!2395901 c!381301) b!2395897))

(assert (= (and b!2395901 (not c!381301)) b!2395903))

(assert (=> b!2395902 m!2794601))

(declare-fun m!2794777 () Bool)

(assert (=> d!698947 m!2794777))

(declare-fun m!2794779 () Bool)

(assert (=> d!698947 m!2794779))

(declare-fun m!2794781 () Bool)

(assert (=> b!2395897 m!2794781))

(declare-fun m!2794783 () Bool)

(assert (=> b!2395904 m!2794783))

(declare-fun m!2794785 () Bool)

(assert (=> b!2395900 m!2794785))

(declare-fun m!2794787 () Bool)

(assert (=> b!2395898 m!2794787))

(declare-fun m!2794789 () Bool)

(assert (=> b!2395903 m!2794789))

(declare-fun m!2794791 () Bool)

(assert (=> b!2395901 m!2794791))

(assert (=> b!2395901 m!2794791))

(declare-fun m!2794793 () Bool)

(assert (=> b!2395901 m!2794793))

(assert (=> bm!146142 d!698947))

(declare-fun d!698951 () Bool)

(assert (=> d!698951 (= (tail!3543 l!9164) (t!208257 l!9164))))

(assert (=> b!2395703 d!698951))

(declare-fun d!698953 () Bool)

(assert (=> d!698953 (= (isEmpty!16172 lt!871657) ((_ is Nil!28182) lt!871657))))

(assert (=> b!2395703 d!698953))

(declare-fun d!698955 () Bool)

(assert (=> d!698955 (= (isEmpty!16172 l!9164) ((_ is Nil!28182) l!9164))))

(assert (=> b!2395695 d!698955))

(declare-fun d!698957 () Bool)

(assert (=> d!698957 (= (head!5273 l!9164) (h!33583 l!9164))))

(assert (=> bm!146148 d!698957))

(declare-fun d!698959 () Bool)

(assert (=> d!698959 (= (isEmpty!16171 s!9460) ((_ is Nil!28183) s!9460))))

(assert (=> b!2395694 d!698959))

(declare-fun d!698961 () Bool)

(declare-fun res!1017981 () Bool)

(declare-fun e!1526857 () Bool)

(assert (=> d!698961 (=> res!1017981 e!1526857)))

(assert (=> d!698961 (= res!1017981 ((_ is Nil!28182) l!9164))))

(assert (=> d!698961 (= (forall!5655 l!9164 lambda!89905) e!1526857)))

(declare-fun b!2395929 () Bool)

(declare-fun e!1526858 () Bool)

(assert (=> b!2395929 (= e!1526857 e!1526858)))

(declare-fun res!1017982 () Bool)

(assert (=> b!2395929 (=> (not res!1017982) (not e!1526858))))

(declare-fun dynLambda!12136 (Int Regex!7021) Bool)

(assert (=> b!2395929 (= res!1017982 (dynLambda!12136 lambda!89905 (h!33583 l!9164)))))

(declare-fun b!2395930 () Bool)

(assert (=> b!2395930 (= e!1526858 (forall!5655 (t!208257 l!9164) lambda!89905))))

(assert (= (and d!698961 (not res!1017981)) b!2395929))

(assert (= (and b!2395929 res!1017982) b!2395930))

(declare-fun b_lambda!74253 () Bool)

(assert (=> (not b_lambda!74253) (not b!2395929)))

(declare-fun m!2794795 () Bool)

(assert (=> b!2395929 m!2794795))

(declare-fun m!2794797 () Bool)

(assert (=> b!2395930 m!2794797))

(assert (=> start!235068 d!698961))

(declare-fun d!698963 () Bool)

(assert (=> d!698963 (matchR!3138 (Concat!11657 lt!871649 EmptyExpr!7021) (++!6975 (_1!16494 lt!871661) (_2!16494 lt!871661)))))

(declare-fun lt!871705 () Unit!41264)

(declare-fun choose!14153 (Regex!7021 Regex!7021 List!28281 List!28281 List!28281) Unit!41264)

(assert (=> d!698963 (= lt!871705 (choose!14153 lt!871649 EmptyExpr!7021 (_1!16494 lt!871661) (_2!16494 lt!871661) s!9460))))

(assert (=> d!698963 (validRegex!2746 lt!871649)))

(assert (=> d!698963 (= (lemmaFindSeparationIsDefinedThenConcatMatches!40 lt!871649 EmptyExpr!7021 (_1!16494 lt!871661) (_2!16494 lt!871661) s!9460) lt!871705)))

(declare-fun bs!462864 () Bool)

(assert (= bs!462864 d!698963))

(declare-fun m!2794799 () Bool)

(assert (=> bs!462864 m!2794799))

(assert (=> bs!462864 m!2794799))

(declare-fun m!2794801 () Bool)

(assert (=> bs!462864 m!2794801))

(declare-fun m!2794803 () Bool)

(assert (=> bs!462864 m!2794803))

(assert (=> bs!462864 m!2794709))

(assert (=> b!2395696 d!698963))

(declare-fun d!698965 () Bool)

(assert (=> d!698965 (= (get!8629 lt!871648) (v!30971 lt!871648))))

(assert (=> b!2395696 d!698965))

(declare-fun b!2395940 () Bool)

(declare-fun e!1526864 () Bool)

(declare-fun lt!871706 () Bool)

(declare-fun call!146163 () Bool)

(assert (=> b!2395940 (= e!1526864 (= lt!871706 call!146163))))

(declare-fun b!2395941 () Bool)

(declare-fun res!1017990 () Bool)

(declare-fun e!1526869 () Bool)

(assert (=> b!2395941 (=> (not res!1017990) (not e!1526869))))

(assert (=> b!2395941 (= res!1017990 (not call!146163))))

(declare-fun b!2395942 () Bool)

(declare-fun res!1017992 () Bool)

(declare-fun e!1526868 () Bool)

(assert (=> b!2395942 (=> res!1017992 e!1526868)))

(assert (=> b!2395942 (= res!1017992 (not (isEmpty!16171 (tail!3545 (ite c!381248 s!9460 call!146148)))))))

(declare-fun b!2395943 () Bool)

(declare-fun res!1017993 () Bool)

(declare-fun e!1526865 () Bool)

(assert (=> b!2395943 (=> res!1017993 e!1526865)))

(assert (=> b!2395943 (= res!1017993 e!1526869)))

(declare-fun res!1017988 () Bool)

(assert (=> b!2395943 (=> (not res!1017988) (not e!1526869))))

(assert (=> b!2395943 (= res!1017988 lt!871706)))

(declare-fun b!2395944 () Bool)

(declare-fun res!1017994 () Bool)

(assert (=> b!2395944 (=> res!1017994 e!1526865)))

(assert (=> b!2395944 (= res!1017994 (not ((_ is ElementMatch!7021) (ite c!381248 lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021)))))))

(declare-fun e!1526867 () Bool)

(assert (=> b!2395944 (= e!1526867 e!1526865)))

(declare-fun b!2395945 () Bool)

(assert (=> b!2395945 (= e!1526867 (not lt!871706))))

(declare-fun d!698967 () Bool)

(assert (=> d!698967 e!1526864))

(declare-fun c!381310 () Bool)

(assert (=> d!698967 (= c!381310 ((_ is EmptyExpr!7021) (ite c!381248 lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021))))))

(declare-fun e!1526866 () Bool)

(assert (=> d!698967 (= lt!871706 e!1526866)))

(declare-fun c!381309 () Bool)

(assert (=> d!698967 (= c!381309 (isEmpty!16171 (ite c!381248 s!9460 call!146148)))))

(assert (=> d!698967 (validRegex!2746 (ite c!381248 lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021)))))

(assert (=> d!698967 (= (matchR!3138 (ite c!381248 lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021)) (ite c!381248 s!9460 call!146148)) lt!871706)))

(declare-fun b!2395946 () Bool)

(assert (=> b!2395946 (= e!1526869 (= (head!5275 (ite c!381248 s!9460 call!146148)) (c!381249 (ite c!381248 lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021)))))))

(declare-fun b!2395947 () Bool)

(declare-fun e!1526870 () Bool)

(assert (=> b!2395947 (= e!1526865 e!1526870)))

(declare-fun res!1017991 () Bool)

(assert (=> b!2395947 (=> (not res!1017991) (not e!1526870))))

(assert (=> b!2395947 (= res!1017991 (not lt!871706))))

(declare-fun b!2395948 () Bool)

(assert (=> b!2395948 (= e!1526870 e!1526868)))

(declare-fun res!1017989 () Bool)

(assert (=> b!2395948 (=> res!1017989 e!1526868)))

(assert (=> b!2395948 (= res!1017989 call!146163)))

(declare-fun b!2395949 () Bool)

(assert (=> b!2395949 (= e!1526866 (matchR!3138 (derivativeStep!1728 (ite c!381248 lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021)) (head!5275 (ite c!381248 s!9460 call!146148))) (tail!3545 (ite c!381248 s!9460 call!146148))))))

(declare-fun b!2395950 () Bool)

(assert (=> b!2395950 (= e!1526864 e!1526867)))

(declare-fun c!381311 () Bool)

(assert (=> b!2395950 (= c!381311 ((_ is EmptyLang!7021) (ite c!381248 lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021))))))

(declare-fun b!2395951 () Bool)

(assert (=> b!2395951 (= e!1526868 (not (= (head!5275 (ite c!381248 s!9460 call!146148)) (c!381249 (ite c!381248 lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021))))))))

(declare-fun b!2395952 () Bool)

(assert (=> b!2395952 (= e!1526866 (nullable!2070 (ite c!381248 lt!871660 (Concat!11657 lt!871649 EmptyExpr!7021))))))

(declare-fun bm!146158 () Bool)

(assert (=> bm!146158 (= call!146163 (isEmpty!16171 (ite c!381248 s!9460 call!146148)))))

(declare-fun b!2395953 () Bool)

(declare-fun res!1017995 () Bool)

(assert (=> b!2395953 (=> (not res!1017995) (not e!1526869))))

(assert (=> b!2395953 (= res!1017995 (isEmpty!16171 (tail!3545 (ite c!381248 s!9460 call!146148))))))

(assert (= (and d!698967 c!381309) b!2395952))

(assert (= (and d!698967 (not c!381309)) b!2395949))

(assert (= (and d!698967 c!381310) b!2395940))

(assert (= (and d!698967 (not c!381310)) b!2395950))

(assert (= (and b!2395950 c!381311) b!2395945))

(assert (= (and b!2395950 (not c!381311)) b!2395944))

(assert (= (and b!2395944 (not res!1017994)) b!2395943))

(assert (= (and b!2395943 res!1017988) b!2395941))

(assert (= (and b!2395941 res!1017990) b!2395953))

(assert (= (and b!2395953 res!1017995) b!2395946))

(assert (= (and b!2395943 (not res!1017993)) b!2395947))

(assert (= (and b!2395947 res!1017991) b!2395948))

(assert (= (and b!2395948 (not res!1017989)) b!2395942))

(assert (= (and b!2395942 (not res!1017992)) b!2395951))

(assert (= (or b!2395940 b!2395941 b!2395948) bm!146158))

(declare-fun m!2794829 () Bool)

(assert (=> b!2395949 m!2794829))

(assert (=> b!2395949 m!2794829))

(declare-fun m!2794831 () Bool)

(assert (=> b!2395949 m!2794831))

(declare-fun m!2794833 () Bool)

(assert (=> b!2395949 m!2794833))

(assert (=> b!2395949 m!2794831))

(assert (=> b!2395949 m!2794833))

(declare-fun m!2794835 () Bool)

(assert (=> b!2395949 m!2794835))

(assert (=> b!2395953 m!2794833))

(assert (=> b!2395953 m!2794833))

(declare-fun m!2794837 () Bool)

(assert (=> b!2395953 m!2794837))

(declare-fun m!2794839 () Bool)

(assert (=> bm!146158 m!2794839))

(declare-fun m!2794841 () Bool)

(assert (=> b!2395952 m!2794841))

(assert (=> b!2395942 m!2794833))

(assert (=> b!2395942 m!2794833))

(assert (=> b!2395942 m!2794837))

(assert (=> b!2395946 m!2794829))

(assert (=> b!2395951 m!2794829))

(assert (=> d!698967 m!2794839))

(declare-fun m!2794843 () Bool)

(assert (=> d!698967 m!2794843))

(assert (=> bm!146147 d!698967))

(declare-fun b!2395954 () Bool)

(declare-fun e!1526874 () Bool)

(declare-fun lt!871708 () Option!5564)

(assert (=> b!2395954 (= e!1526874 (not (isDefined!4392 lt!871708)))))

(declare-fun b!2395955 () Bool)

(declare-fun e!1526872 () Option!5564)

(assert (=> b!2395955 (= e!1526872 (Some!5563 (tuple2!27907 Nil!28183 s!9460)))))

(declare-fun d!698971 () Bool)

(assert (=> d!698971 e!1526874))

(declare-fun res!1017998 () Bool)

(assert (=> d!698971 (=> res!1017998 e!1526874)))

(declare-fun e!1526875 () Bool)

(assert (=> d!698971 (= res!1017998 e!1526875)))

(declare-fun res!1017996 () Bool)

(assert (=> d!698971 (=> (not res!1017996) (not e!1526875))))

(assert (=> d!698971 (= res!1017996 (isDefined!4392 lt!871708))))

(assert (=> d!698971 (= lt!871708 e!1526872)))

(declare-fun c!381312 () Bool)

(declare-fun e!1526871 () Bool)

(assert (=> d!698971 (= c!381312 e!1526871)))

(declare-fun res!1017999 () Bool)

(assert (=> d!698971 (=> (not res!1017999) (not e!1526871))))

(assert (=> d!698971 (= res!1017999 (matchR!3138 lt!871649 Nil!28183))))

(assert (=> d!698971 (validRegex!2746 lt!871649)))

(assert (=> d!698971 (= (findConcatSeparation!672 lt!871649 call!146153 Nil!28183 s!9460 s!9460) lt!871708)))

(declare-fun b!2395956 () Bool)

(declare-fun res!1018000 () Bool)

(assert (=> b!2395956 (=> (not res!1018000) (not e!1526875))))

(assert (=> b!2395956 (= res!1018000 (matchR!3138 call!146153 (_2!16494 (get!8629 lt!871708))))))

(declare-fun b!2395957 () Bool)

(assert (=> b!2395957 (= e!1526871 (matchR!3138 call!146153 s!9460))))

(declare-fun b!2395958 () Bool)

(declare-fun lt!871709 () Unit!41264)

(declare-fun lt!871707 () Unit!41264)

(assert (=> b!2395958 (= lt!871709 lt!871707)))

(assert (=> b!2395958 (= (++!6975 (++!6975 Nil!28183 (Cons!28183 (h!33584 s!9460) Nil!28183)) (t!208258 s!9460)) s!9460)))

(assert (=> b!2395958 (= lt!871707 (lemmaMoveElementToOtherListKeepsConcatEq!616 Nil!28183 (h!33584 s!9460) (t!208258 s!9460) s!9460))))

(declare-fun e!1526873 () Option!5564)

(assert (=> b!2395958 (= e!1526873 (findConcatSeparation!672 lt!871649 call!146153 (++!6975 Nil!28183 (Cons!28183 (h!33584 s!9460) Nil!28183)) (t!208258 s!9460) s!9460))))

(declare-fun b!2395959 () Bool)

(assert (=> b!2395959 (= e!1526873 None!5563)))

(declare-fun b!2395960 () Bool)

(declare-fun res!1017997 () Bool)

(assert (=> b!2395960 (=> (not res!1017997) (not e!1526875))))

(assert (=> b!2395960 (= res!1017997 (matchR!3138 lt!871649 (_1!16494 (get!8629 lt!871708))))))

(declare-fun b!2395961 () Bool)

(assert (=> b!2395961 (= e!1526875 (= (++!6975 (_1!16494 (get!8629 lt!871708)) (_2!16494 (get!8629 lt!871708))) s!9460))))

(declare-fun b!2395962 () Bool)

(assert (=> b!2395962 (= e!1526872 e!1526873)))

(declare-fun c!381313 () Bool)

(assert (=> b!2395962 (= c!381313 ((_ is Nil!28183) s!9460))))

(assert (= (and d!698971 res!1017999) b!2395957))

(assert (= (and d!698971 c!381312) b!2395955))

(assert (= (and d!698971 (not c!381312)) b!2395962))

(assert (= (and b!2395962 c!381313) b!2395959))

(assert (= (and b!2395962 (not c!381313)) b!2395958))

(assert (= (and d!698971 res!1017996) b!2395960))

(assert (= (and b!2395960 res!1017997) b!2395956))

(assert (= (and b!2395956 res!1018000) b!2395961))

(assert (= (and d!698971 (not res!1017998)) b!2395954))

(declare-fun m!2794845 () Bool)

(assert (=> b!2395954 m!2794845))

(declare-fun m!2794847 () Bool)

(assert (=> b!2395961 m!2794847))

(declare-fun m!2794849 () Bool)

(assert (=> b!2395961 m!2794849))

(assert (=> b!2395960 m!2794847))

(declare-fun m!2794851 () Bool)

(assert (=> b!2395960 m!2794851))

(assert (=> b!2395956 m!2794847))

(declare-fun m!2794853 () Bool)

(assert (=> b!2395956 m!2794853))

(assert (=> b!2395958 m!2794679))

(assert (=> b!2395958 m!2794679))

(assert (=> b!2395958 m!2794681))

(assert (=> b!2395958 m!2794683))

(assert (=> b!2395958 m!2794679))

(declare-fun m!2794855 () Bool)

(assert (=> b!2395958 m!2794855))

(assert (=> d!698971 m!2794845))

(assert (=> d!698971 m!2794707))

(assert (=> d!698971 m!2794709))

(declare-fun m!2794857 () Bool)

(assert (=> b!2395957 m!2794857))

(assert (=> bm!146149 d!698971))

(declare-fun bs!462865 () Bool)

(declare-fun d!698973 () Bool)

(assert (= bs!462865 (and d!698973 start!235068)))

(declare-fun lambda!89914 () Int)

(assert (=> bs!462865 (= lambda!89914 lambda!89905)))

(declare-fun bs!462866 () Bool)

(assert (= bs!462866 (and d!698973 d!698947)))

(assert (=> bs!462866 (= lambda!89914 lambda!89913)))

(declare-fun b!2395963 () Bool)

(declare-fun e!1526878 () Bool)

(declare-fun lt!871710 () Regex!7021)

(assert (=> b!2395963 (= e!1526878 (= lt!871710 (head!5273 l!9164)))))

(declare-fun b!2395964 () Bool)

(declare-fun e!1526877 () Bool)

(assert (=> b!2395964 (= e!1526877 (isEmptyExpr!91 lt!871710))))

(declare-fun b!2395965 () Bool)

(declare-fun e!1526879 () Regex!7021)

(assert (=> b!2395965 (= e!1526879 (h!33583 l!9164))))

(declare-fun e!1526881 () Bool)

(assert (=> d!698973 e!1526881))

(declare-fun res!1018002 () Bool)

(assert (=> d!698973 (=> (not res!1018002) (not e!1526881))))

(assert (=> d!698973 (= res!1018002 (validRegex!2746 lt!871710))))

(assert (=> d!698973 (= lt!871710 e!1526879)))

(declare-fun c!381317 () Bool)

(declare-fun e!1526876 () Bool)

(assert (=> d!698973 (= c!381317 e!1526876)))

(declare-fun res!1018001 () Bool)

(assert (=> d!698973 (=> (not res!1018001) (not e!1526876))))

(assert (=> d!698973 (= res!1018001 ((_ is Cons!28182) l!9164))))

(assert (=> d!698973 (forall!5655 l!9164 lambda!89914)))

(assert (=> d!698973 (= (generalisedConcat!122 l!9164) lt!871710)))

(declare-fun b!2395966 () Bool)

(declare-fun e!1526880 () Regex!7021)

(assert (=> b!2395966 (= e!1526880 (Concat!11657 (h!33583 l!9164) (generalisedConcat!122 (t!208257 l!9164))))))

(declare-fun b!2395967 () Bool)

(assert (=> b!2395967 (= e!1526877 e!1526878)))

(declare-fun c!381316 () Bool)

(assert (=> b!2395967 (= c!381316 (isEmpty!16172 (tail!3543 l!9164)))))

(declare-fun b!2395968 () Bool)

(assert (=> b!2395968 (= e!1526881 e!1526877)))

(declare-fun c!381315 () Bool)

(assert (=> b!2395968 (= c!381315 (isEmpty!16172 l!9164))))

(declare-fun b!2395969 () Bool)

(assert (=> b!2395969 (= e!1526878 (isConcat!91 lt!871710))))

(declare-fun b!2395970 () Bool)

(assert (=> b!2395970 (= e!1526876 (isEmpty!16172 (t!208257 l!9164)))))

(declare-fun b!2395971 () Bool)

(assert (=> b!2395971 (= e!1526879 e!1526880)))

(declare-fun c!381314 () Bool)

(assert (=> b!2395971 (= c!381314 ((_ is Cons!28182) l!9164))))

(declare-fun b!2395972 () Bool)

(assert (=> b!2395972 (= e!1526880 EmptyExpr!7021)))

(assert (= (and d!698973 res!1018001) b!2395970))

(assert (= (and d!698973 c!381317) b!2395965))

(assert (= (and d!698973 (not c!381317)) b!2395971))

(assert (= (and b!2395971 c!381314) b!2395966))

(assert (= (and b!2395971 (not c!381314)) b!2395972))

(assert (= (and d!698973 res!1018002) b!2395968))

(assert (= (and b!2395968 c!381315) b!2395964))

(assert (= (and b!2395968 (not c!381315)) b!2395967))

(assert (= (and b!2395967 c!381316) b!2395963))

(assert (= (and b!2395967 (not c!381316)) b!2395969))

(assert (=> b!2395968 m!2794641))

(declare-fun m!2794859 () Bool)

(assert (=> d!698973 m!2794859))

(declare-fun m!2794861 () Bool)

(assert (=> d!698973 m!2794861))

(assert (=> b!2395963 m!2794643))

(declare-fun m!2794863 () Bool)

(assert (=> b!2395970 m!2794863))

(assert (=> b!2395966 m!2794639))

(declare-fun m!2794865 () Bool)

(assert (=> b!2395964 m!2794865))

(declare-fun m!2794867 () Bool)

(assert (=> b!2395969 m!2794867))

(assert (=> b!2395967 m!2794599))

(assert (=> b!2395967 m!2794599))

(declare-fun m!2794869 () Bool)

(assert (=> b!2395967 m!2794869))

(assert (=> b!2395704 d!698973))

(declare-fun bs!462870 () Bool)

(declare-fun b!2396072 () Bool)

(assert (= bs!462870 (and b!2396072 b!2395685)))

(declare-fun lambda!89925 () Int)

(assert (=> bs!462870 (not (= lambda!89925 lambda!89906))))

(assert (=> bs!462870 (not (= lambda!89925 lambda!89907))))

(assert (=> b!2396072 true))

(assert (=> b!2396072 true))

(declare-fun bs!462871 () Bool)

(declare-fun b!2396063 () Bool)

(assert (= bs!462871 (and b!2396063 b!2395685)))

(declare-fun lambda!89926 () Int)

(assert (=> bs!462871 (not (= lambda!89926 lambda!89906))))

(assert (=> bs!462871 (= lambda!89926 lambda!89907)))

(declare-fun bs!462872 () Bool)

(assert (= bs!462872 (and b!2396063 b!2396072)))

(assert (=> bs!462872 (not (= lambda!89926 lambda!89925))))

(assert (=> b!2396063 true))

(assert (=> b!2396063 true))

(declare-fun b!2396062 () Bool)

(declare-fun e!1526935 () Bool)

(assert (=> b!2396062 (= e!1526935 (= s!9460 (Cons!28183 (c!381249 r!13927) Nil!28183)))))

(declare-fun d!698975 () Bool)

(declare-fun c!381344 () Bool)

(assert (=> d!698975 (= c!381344 ((_ is EmptyExpr!7021) r!13927))))

(declare-fun e!1526933 () Bool)

(assert (=> d!698975 (= (matchRSpec!870 r!13927 s!9460) e!1526933)))

(declare-fun e!1526937 () Bool)

(declare-fun call!146175 () Bool)

(assert (=> b!2396063 (= e!1526937 call!146175)))

(declare-fun b!2396064 () Bool)

(declare-fun c!381342 () Bool)

(assert (=> b!2396064 (= c!381342 ((_ is Union!7021) r!13927))))

(declare-fun e!1526932 () Bool)

(assert (=> b!2396064 (= e!1526935 e!1526932)))

(declare-fun b!2396065 () Bool)

(declare-fun call!146176 () Bool)

(assert (=> b!2396065 (= e!1526933 call!146176)))

(declare-fun b!2396066 () Bool)

(declare-fun res!1018047 () Bool)

(declare-fun e!1526936 () Bool)

(assert (=> b!2396066 (=> res!1018047 e!1526936)))

(assert (=> b!2396066 (= res!1018047 call!146176)))

(assert (=> b!2396066 (= e!1526937 e!1526936)))

(declare-fun b!2396067 () Bool)

(declare-fun e!1526938 () Bool)

(assert (=> b!2396067 (= e!1526938 (matchRSpec!870 (regTwo!14555 r!13927) s!9460))))

(declare-fun bm!146170 () Bool)

(assert (=> bm!146170 (= call!146176 (isEmpty!16171 s!9460))))

(declare-fun b!2396068 () Bool)

(declare-fun e!1526934 () Bool)

(assert (=> b!2396068 (= e!1526933 e!1526934)))

(declare-fun res!1018046 () Bool)

(assert (=> b!2396068 (= res!1018046 (not ((_ is EmptyLang!7021) r!13927)))))

(assert (=> b!2396068 (=> (not res!1018046) (not e!1526934))))

(declare-fun b!2396069 () Bool)

(assert (=> b!2396069 (= e!1526932 e!1526937)))

(declare-fun c!381343 () Bool)

(assert (=> b!2396069 (= c!381343 ((_ is Star!7021) r!13927))))

(declare-fun b!2396070 () Bool)

(assert (=> b!2396070 (= e!1526932 e!1526938)))

(declare-fun res!1018048 () Bool)

(assert (=> b!2396070 (= res!1018048 (matchRSpec!870 (regOne!14555 r!13927) s!9460))))

(assert (=> b!2396070 (=> res!1018048 e!1526938)))

(declare-fun b!2396071 () Bool)

(declare-fun c!381341 () Bool)

(assert (=> b!2396071 (= c!381341 ((_ is ElementMatch!7021) r!13927))))

(assert (=> b!2396071 (= e!1526934 e!1526935)))

(assert (=> b!2396072 (= e!1526936 call!146175)))

(declare-fun bm!146171 () Bool)

(assert (=> bm!146171 (= call!146175 (Exists!1083 (ite c!381343 lambda!89925 lambda!89926)))))

(assert (= (and d!698975 c!381344) b!2396065))

(assert (= (and d!698975 (not c!381344)) b!2396068))

(assert (= (and b!2396068 res!1018046) b!2396071))

(assert (= (and b!2396071 c!381341) b!2396062))

(assert (= (and b!2396071 (not c!381341)) b!2396064))

(assert (= (and b!2396064 c!381342) b!2396070))

(assert (= (and b!2396064 (not c!381342)) b!2396069))

(assert (= (and b!2396070 (not res!1018048)) b!2396067))

(assert (= (and b!2396069 c!381343) b!2396066))

(assert (= (and b!2396069 (not c!381343)) b!2396063))

(assert (= (and b!2396066 (not res!1018047)) b!2396072))

(assert (= (or b!2396072 b!2396063) bm!146171))

(assert (= (or b!2396065 b!2396066) bm!146170))

(declare-fun m!2794891 () Bool)

(assert (=> b!2396067 m!2794891))

(assert (=> bm!146170 m!2794619))

(declare-fun m!2794893 () Bool)

(assert (=> b!2396070 m!2794893))

(declare-fun m!2794895 () Bool)

(assert (=> bm!146171 m!2794895))

(assert (=> b!2395698 d!698975))

(declare-fun b!2396073 () Bool)

(declare-fun e!1526939 () Bool)

(declare-fun lt!871714 () Bool)

(declare-fun call!146177 () Bool)

(assert (=> b!2396073 (= e!1526939 (= lt!871714 call!146177))))

(declare-fun b!2396074 () Bool)

(declare-fun res!1018051 () Bool)

(declare-fun e!1526944 () Bool)

(assert (=> b!2396074 (=> (not res!1018051) (not e!1526944))))

(assert (=> b!2396074 (= res!1018051 (not call!146177))))

(declare-fun b!2396075 () Bool)

(declare-fun res!1018053 () Bool)

(declare-fun e!1526943 () Bool)

(assert (=> b!2396075 (=> res!1018053 e!1526943)))

(assert (=> b!2396075 (= res!1018053 (not (isEmpty!16171 (tail!3545 s!9460))))))

(declare-fun b!2396076 () Bool)

(declare-fun res!1018054 () Bool)

(declare-fun e!1526940 () Bool)

(assert (=> b!2396076 (=> res!1018054 e!1526940)))

(assert (=> b!2396076 (= res!1018054 e!1526944)))

(declare-fun res!1018049 () Bool)

(assert (=> b!2396076 (=> (not res!1018049) (not e!1526944))))

(assert (=> b!2396076 (= res!1018049 lt!871714)))

(declare-fun b!2396077 () Bool)

(declare-fun res!1018055 () Bool)

(assert (=> b!2396077 (=> res!1018055 e!1526940)))

(assert (=> b!2396077 (= res!1018055 (not ((_ is ElementMatch!7021) r!13927)))))

(declare-fun e!1526942 () Bool)

(assert (=> b!2396077 (= e!1526942 e!1526940)))

(declare-fun b!2396078 () Bool)

(assert (=> b!2396078 (= e!1526942 (not lt!871714))))

(declare-fun d!698981 () Bool)

(assert (=> d!698981 e!1526939))

(declare-fun c!381346 () Bool)

(assert (=> d!698981 (= c!381346 ((_ is EmptyExpr!7021) r!13927))))

(declare-fun e!1526941 () Bool)

(assert (=> d!698981 (= lt!871714 e!1526941)))

(declare-fun c!381345 () Bool)

(assert (=> d!698981 (= c!381345 (isEmpty!16171 s!9460))))

(assert (=> d!698981 (validRegex!2746 r!13927)))

(assert (=> d!698981 (= (matchR!3138 r!13927 s!9460) lt!871714)))

(declare-fun b!2396079 () Bool)

(assert (=> b!2396079 (= e!1526944 (= (head!5275 s!9460) (c!381249 r!13927)))))

(declare-fun b!2396080 () Bool)

(declare-fun e!1526945 () Bool)

(assert (=> b!2396080 (= e!1526940 e!1526945)))

(declare-fun res!1018052 () Bool)

(assert (=> b!2396080 (=> (not res!1018052) (not e!1526945))))

(assert (=> b!2396080 (= res!1018052 (not lt!871714))))

(declare-fun b!2396081 () Bool)

(assert (=> b!2396081 (= e!1526945 e!1526943)))

(declare-fun res!1018050 () Bool)

(assert (=> b!2396081 (=> res!1018050 e!1526943)))

(assert (=> b!2396081 (= res!1018050 call!146177)))

(declare-fun b!2396082 () Bool)

(assert (=> b!2396082 (= e!1526941 (matchR!3138 (derivativeStep!1728 r!13927 (head!5275 s!9460)) (tail!3545 s!9460)))))

(declare-fun b!2396083 () Bool)

(assert (=> b!2396083 (= e!1526939 e!1526942)))

(declare-fun c!381347 () Bool)

(assert (=> b!2396083 (= c!381347 ((_ is EmptyLang!7021) r!13927))))

(declare-fun b!2396084 () Bool)

(assert (=> b!2396084 (= e!1526943 (not (= (head!5275 s!9460) (c!381249 r!13927))))))

(declare-fun b!2396085 () Bool)

(assert (=> b!2396085 (= e!1526941 (nullable!2070 r!13927))))

(declare-fun bm!146172 () Bool)

(assert (=> bm!146172 (= call!146177 (isEmpty!16171 s!9460))))

(declare-fun b!2396086 () Bool)

(declare-fun res!1018056 () Bool)

(assert (=> b!2396086 (=> (not res!1018056) (not e!1526944))))

(assert (=> b!2396086 (= res!1018056 (isEmpty!16171 (tail!3545 s!9460)))))

(assert (= (and d!698981 c!381345) b!2396085))

(assert (= (and d!698981 (not c!381345)) b!2396082))

(assert (= (and d!698981 c!381346) b!2396073))

(assert (= (and d!698981 (not c!381346)) b!2396083))

(assert (= (and b!2396083 c!381347) b!2396078))

(assert (= (and b!2396083 (not c!381347)) b!2396077))

(assert (= (and b!2396077 (not res!1018055)) b!2396076))

(assert (= (and b!2396076 res!1018049) b!2396074))

(assert (= (and b!2396074 res!1018051) b!2396086))

(assert (= (and b!2396086 res!1018056) b!2396079))

(assert (= (and b!2396076 (not res!1018054)) b!2396080))

(assert (= (and b!2396080 res!1018052) b!2396081))

(assert (= (and b!2396081 (not res!1018050)) b!2396075))

(assert (= (and b!2396075 (not res!1018053)) b!2396084))

(assert (= (or b!2396073 b!2396074 b!2396081) bm!146172))

(assert (=> b!2396082 m!2794729))

(assert (=> b!2396082 m!2794729))

(declare-fun m!2794899 () Bool)

(assert (=> b!2396082 m!2794899))

(assert (=> b!2396082 m!2794733))

(assert (=> b!2396082 m!2794899))

(assert (=> b!2396082 m!2794733))

(declare-fun m!2794901 () Bool)

(assert (=> b!2396082 m!2794901))

(assert (=> b!2396086 m!2794733))

(assert (=> b!2396086 m!2794733))

(assert (=> b!2396086 m!2794737))

(assert (=> bm!146172 m!2794619))

(declare-fun m!2794903 () Bool)

(assert (=> b!2396085 m!2794903))

(assert (=> b!2396075 m!2794733))

(assert (=> b!2396075 m!2794733))

(assert (=> b!2396075 m!2794737))

(assert (=> b!2396079 m!2794729))

(assert (=> b!2396084 m!2794729))

(assert (=> d!698981 m!2794619))

(declare-fun m!2794905 () Bool)

(assert (=> d!698981 m!2794905))

(assert (=> b!2395698 d!698981))

(declare-fun d!698985 () Bool)

(assert (=> d!698985 (= (matchR!3138 r!13927 s!9460) (matchRSpec!870 r!13927 s!9460))))

(declare-fun lt!871722 () Unit!41264)

(declare-fun choose!14158 (Regex!7021 List!28281) Unit!41264)

(assert (=> d!698985 (= lt!871722 (choose!14158 r!13927 s!9460))))

(assert (=> d!698985 (validRegex!2746 r!13927)))

(assert (=> d!698985 (= (mainMatchTheorem!870 r!13927 s!9460) lt!871722)))

(declare-fun bs!462875 () Bool)

(assert (= bs!462875 d!698985))

(assert (=> bs!462875 m!2794623))

(assert (=> bs!462875 m!2794621))

(declare-fun m!2794927 () Bool)

(assert (=> bs!462875 m!2794927))

(assert (=> bs!462875 m!2794905))

(assert (=> b!2395698 d!698985))

(declare-fun d!698995 () Bool)

(assert (=> d!698995 (= (isDefined!4392 (findConcatSeparation!672 (regOne!14554 r!13927) (regTwo!14554 r!13927) Nil!28183 s!9460 s!9460)) (not (isEmpty!16173 (findConcatSeparation!672 (regOne!14554 r!13927) (regTwo!14554 r!13927) Nil!28183 s!9460 s!9460))))))

(declare-fun bs!462876 () Bool)

(assert (= bs!462876 d!698995))

(assert (=> bs!462876 m!2794657))

(declare-fun m!2794929 () Bool)

(assert (=> bs!462876 m!2794929))

(assert (=> b!2395685 d!698995))

(declare-fun d!698997 () Bool)

(declare-fun choose!14159 (Int) Bool)

(assert (=> d!698997 (= (Exists!1083 lambda!89906) (choose!14159 lambda!89906))))

(declare-fun bs!462877 () Bool)

(assert (= bs!462877 d!698997))

(declare-fun m!2794937 () Bool)

(assert (=> bs!462877 m!2794937))

(assert (=> b!2395685 d!698997))

(declare-fun bs!462880 () Bool)

(declare-fun d!699001 () Bool)

(assert (= bs!462880 (and d!699001 b!2395685)))

(declare-fun lambda!89931 () Int)

(assert (=> bs!462880 (= lambda!89931 lambda!89906)))

(assert (=> bs!462880 (not (= lambda!89931 lambda!89907))))

(declare-fun bs!462881 () Bool)

(assert (= bs!462881 (and d!699001 b!2396072)))

(assert (=> bs!462881 (not (= lambda!89931 lambda!89925))))

(declare-fun bs!462882 () Bool)

(assert (= bs!462882 (and d!699001 b!2396063)))

(assert (=> bs!462882 (not (= lambda!89931 lambda!89926))))

(assert (=> d!699001 true))

(assert (=> d!699001 true))

(assert (=> d!699001 true))

(assert (=> d!699001 (= (isDefined!4392 (findConcatSeparation!672 (regOne!14554 r!13927) (regTwo!14554 r!13927) Nil!28183 s!9460 s!9460)) (Exists!1083 lambda!89931))))

(declare-fun lt!871727 () Unit!41264)

(declare-fun choose!14160 (Regex!7021 Regex!7021 List!28281) Unit!41264)

(assert (=> d!699001 (= lt!871727 (choose!14160 (regOne!14554 r!13927) (regTwo!14554 r!13927) s!9460))))

(assert (=> d!699001 (validRegex!2746 (regOne!14554 r!13927))))

(assert (=> d!699001 (= (lemmaFindConcatSeparationEquivalentToExists!672 (regOne!14554 r!13927) (regTwo!14554 r!13927) s!9460) lt!871727)))

(declare-fun bs!462885 () Bool)

(assert (= bs!462885 d!699001))

(assert (=> bs!462885 m!2794657))

(assert (=> bs!462885 m!2794659))

(declare-fun m!2794943 () Bool)

(assert (=> bs!462885 m!2794943))

(assert (=> bs!462885 m!2794657))

(declare-fun m!2794945 () Bool)

(assert (=> bs!462885 m!2794945))

(declare-fun m!2794947 () Bool)

(assert (=> bs!462885 m!2794947))

(assert (=> b!2395685 d!699001))

(declare-fun bs!462888 () Bool)

(declare-fun d!699007 () Bool)

(assert (= bs!462888 (and d!699007 b!2395685)))

(declare-fun lambda!89941 () Int)

(assert (=> bs!462888 (= lambda!89941 lambda!89906)))

(declare-fun bs!462889 () Bool)

(assert (= bs!462889 (and d!699007 b!2396063)))

(assert (=> bs!462889 (not (= lambda!89941 lambda!89926))))

(declare-fun bs!462890 () Bool)

(assert (= bs!462890 (and d!699007 b!2396072)))

(assert (=> bs!462890 (not (= lambda!89941 lambda!89925))))

(declare-fun bs!462891 () Bool)

(assert (= bs!462891 (and d!699007 d!699001)))

(assert (=> bs!462891 (= lambda!89941 lambda!89931)))

(assert (=> bs!462888 (not (= lambda!89941 lambda!89907))))

(assert (=> d!699007 true))

(assert (=> d!699007 true))

(assert (=> d!699007 true))

(declare-fun lambda!89943 () Int)

(assert (=> bs!462888 (not (= lambda!89943 lambda!89906))))

(assert (=> bs!462889 (= lambda!89943 lambda!89926)))

(assert (=> bs!462890 (not (= lambda!89943 lambda!89925))))

(declare-fun bs!462896 () Bool)

(assert (= bs!462896 d!699007))

(assert (=> bs!462896 (not (= lambda!89943 lambda!89941))))

(assert (=> bs!462891 (not (= lambda!89943 lambda!89931))))

(assert (=> bs!462888 (= lambda!89943 lambda!89907)))

(assert (=> d!699007 true))

(assert (=> d!699007 true))

(assert (=> d!699007 true))

(assert (=> d!699007 (= (Exists!1083 lambda!89941) (Exists!1083 lambda!89943))))

(declare-fun lt!871733 () Unit!41264)

(declare-fun choose!14161 (Regex!7021 Regex!7021 List!28281) Unit!41264)

(assert (=> d!699007 (= lt!871733 (choose!14161 (regOne!14554 r!13927) (regTwo!14554 r!13927) s!9460))))

(assert (=> d!699007 (validRegex!2746 (regOne!14554 r!13927))))

(assert (=> d!699007 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!422 (regOne!14554 r!13927) (regTwo!14554 r!13927) s!9460) lt!871733)))

(declare-fun m!2794955 () Bool)

(assert (=> bs!462896 m!2794955))

(declare-fun m!2794957 () Bool)

(assert (=> bs!462896 m!2794957))

(declare-fun m!2794959 () Bool)

(assert (=> bs!462896 m!2794959))

(assert (=> bs!462896 m!2794943))

(assert (=> b!2395685 d!699007))

(declare-fun b!2396134 () Bool)

(declare-fun e!1526973 () Bool)

(declare-fun lt!871736 () Option!5564)

(assert (=> b!2396134 (= e!1526973 (not (isDefined!4392 lt!871736)))))

(declare-fun b!2396135 () Bool)

(declare-fun e!1526971 () Option!5564)

(assert (=> b!2396135 (= e!1526971 (Some!5563 (tuple2!27907 Nil!28183 s!9460)))))

(declare-fun d!699011 () Bool)

(assert (=> d!699011 e!1526973))

(declare-fun res!1018096 () Bool)

(assert (=> d!699011 (=> res!1018096 e!1526973)))

(declare-fun e!1526974 () Bool)

(assert (=> d!699011 (= res!1018096 e!1526974)))

(declare-fun res!1018094 () Bool)

(assert (=> d!699011 (=> (not res!1018094) (not e!1526974))))

(assert (=> d!699011 (= res!1018094 (isDefined!4392 lt!871736))))

(assert (=> d!699011 (= lt!871736 e!1526971)))

(declare-fun c!381353 () Bool)

(declare-fun e!1526970 () Bool)

(assert (=> d!699011 (= c!381353 e!1526970)))

(declare-fun res!1018097 () Bool)

(assert (=> d!699011 (=> (not res!1018097) (not e!1526970))))

(assert (=> d!699011 (= res!1018097 (matchR!3138 (regOne!14554 r!13927) Nil!28183))))

(assert (=> d!699011 (validRegex!2746 (regOne!14554 r!13927))))

(assert (=> d!699011 (= (findConcatSeparation!672 (regOne!14554 r!13927) (regTwo!14554 r!13927) Nil!28183 s!9460 s!9460) lt!871736)))

(declare-fun b!2396136 () Bool)

(declare-fun res!1018098 () Bool)

(assert (=> b!2396136 (=> (not res!1018098) (not e!1526974))))

(assert (=> b!2396136 (= res!1018098 (matchR!3138 (regTwo!14554 r!13927) (_2!16494 (get!8629 lt!871736))))))

(declare-fun b!2396137 () Bool)

(assert (=> b!2396137 (= e!1526970 (matchR!3138 (regTwo!14554 r!13927) s!9460))))

(declare-fun b!2396138 () Bool)

(declare-fun lt!871737 () Unit!41264)

(declare-fun lt!871735 () Unit!41264)

(assert (=> b!2396138 (= lt!871737 lt!871735)))

(assert (=> b!2396138 (= (++!6975 (++!6975 Nil!28183 (Cons!28183 (h!33584 s!9460) Nil!28183)) (t!208258 s!9460)) s!9460)))

(assert (=> b!2396138 (= lt!871735 (lemmaMoveElementToOtherListKeepsConcatEq!616 Nil!28183 (h!33584 s!9460) (t!208258 s!9460) s!9460))))

(declare-fun e!1526972 () Option!5564)

(assert (=> b!2396138 (= e!1526972 (findConcatSeparation!672 (regOne!14554 r!13927) (regTwo!14554 r!13927) (++!6975 Nil!28183 (Cons!28183 (h!33584 s!9460) Nil!28183)) (t!208258 s!9460) s!9460))))

(declare-fun b!2396139 () Bool)

(assert (=> b!2396139 (= e!1526972 None!5563)))

(declare-fun b!2396140 () Bool)

(declare-fun res!1018095 () Bool)

(assert (=> b!2396140 (=> (not res!1018095) (not e!1526974))))

(assert (=> b!2396140 (= res!1018095 (matchR!3138 (regOne!14554 r!13927) (_1!16494 (get!8629 lt!871736))))))

(declare-fun b!2396141 () Bool)

(assert (=> b!2396141 (= e!1526974 (= (++!6975 (_1!16494 (get!8629 lt!871736)) (_2!16494 (get!8629 lt!871736))) s!9460))))

(declare-fun b!2396142 () Bool)

(assert (=> b!2396142 (= e!1526971 e!1526972)))

(declare-fun c!381354 () Bool)

(assert (=> b!2396142 (= c!381354 ((_ is Nil!28183) s!9460))))

(assert (= (and d!699011 res!1018097) b!2396137))

(assert (= (and d!699011 c!381353) b!2396135))

(assert (= (and d!699011 (not c!381353)) b!2396142))

(assert (= (and b!2396142 c!381354) b!2396139))

(assert (= (and b!2396142 (not c!381354)) b!2396138))

(assert (= (and d!699011 res!1018094) b!2396140))

(assert (= (and b!2396140 res!1018095) b!2396136))

(assert (= (and b!2396136 res!1018098) b!2396141))

(assert (= (and d!699011 (not res!1018096)) b!2396134))

(declare-fun m!2794969 () Bool)

(assert (=> b!2396134 m!2794969))

(declare-fun m!2794971 () Bool)

(assert (=> b!2396141 m!2794971))

(declare-fun m!2794973 () Bool)

(assert (=> b!2396141 m!2794973))

(assert (=> b!2396140 m!2794971))

(declare-fun m!2794975 () Bool)

(assert (=> b!2396140 m!2794975))

(assert (=> b!2396136 m!2794971))

(declare-fun m!2794977 () Bool)

(assert (=> b!2396136 m!2794977))

(assert (=> b!2396138 m!2794679))

(assert (=> b!2396138 m!2794679))

(assert (=> b!2396138 m!2794681))

(assert (=> b!2396138 m!2794683))

(assert (=> b!2396138 m!2794679))

(declare-fun m!2794979 () Bool)

(assert (=> b!2396138 m!2794979))

(assert (=> d!699011 m!2794969))

(declare-fun m!2794981 () Bool)

(assert (=> d!699011 m!2794981))

(assert (=> d!699011 m!2794943))

(declare-fun m!2794983 () Bool)

(assert (=> b!2396137 m!2794983))

(assert (=> b!2395685 d!699011))

(declare-fun d!699017 () Bool)

(assert (=> d!699017 (= (Exists!1083 lambda!89907) (choose!14159 lambda!89907))))

(declare-fun bs!462899 () Bool)

(assert (= bs!462899 d!699017))

(declare-fun m!2794985 () Bool)

(assert (=> bs!462899 m!2794985))

(assert (=> b!2395685 d!699017))

(declare-fun b!2396187 () Bool)

(declare-fun e!1527005 () Bool)

(declare-fun e!1527008 () Bool)

(assert (=> b!2396187 (= e!1527005 e!1527008)))

(declare-fun c!381364 () Bool)

(assert (=> b!2396187 (= c!381364 ((_ is Star!7021) (h!33583 l!9164)))))

(declare-fun b!2396188 () Bool)

(declare-fun e!1527004 () Bool)

(declare-fun call!146188 () Bool)

(assert (=> b!2396188 (= e!1527004 call!146188)))

(declare-fun b!2396189 () Bool)

(declare-fun res!1018127 () Bool)

(declare-fun e!1527006 () Bool)

(assert (=> b!2396189 (=> res!1018127 e!1527006)))

(assert (=> b!2396189 (= res!1018127 (not ((_ is Concat!11657) (h!33583 l!9164))))))

(declare-fun e!1527007 () Bool)

(assert (=> b!2396189 (= e!1527007 e!1527006)))

(declare-fun b!2396190 () Bool)

(assert (=> b!2396190 (= e!1527006 e!1527004)))

(declare-fun res!1018125 () Bool)

(assert (=> b!2396190 (=> (not res!1018125) (not e!1527004))))

(declare-fun call!146186 () Bool)

(assert (=> b!2396190 (= res!1018125 call!146186)))

(declare-fun b!2396191 () Bool)

(declare-fun e!1527009 () Bool)

(assert (=> b!2396191 (= e!1527009 call!146186)))

(declare-fun b!2396192 () Bool)

(declare-fun e!1527010 () Bool)

(declare-fun call!146187 () Bool)

(assert (=> b!2396192 (= e!1527010 call!146187)))

(declare-fun bm!146181 () Bool)

(declare-fun c!381365 () Bool)

(assert (=> bm!146181 (= call!146188 (validRegex!2746 (ite c!381365 (regOne!14555 (h!33583 l!9164)) (regTwo!14554 (h!33583 l!9164)))))))

(declare-fun bm!146182 () Bool)

(assert (=> bm!146182 (= call!146186 call!146187)))

(declare-fun b!2396194 () Bool)

(assert (=> b!2396194 (= e!1527008 e!1527010)))

(declare-fun res!1018129 () Bool)

(assert (=> b!2396194 (= res!1018129 (not (nullable!2070 (reg!7350 (h!33583 l!9164)))))))

(assert (=> b!2396194 (=> (not res!1018129) (not e!1527010))))

(declare-fun b!2396193 () Bool)

(assert (=> b!2396193 (= e!1527008 e!1527007)))

(assert (=> b!2396193 (= c!381365 ((_ is Union!7021) (h!33583 l!9164)))))

(declare-fun d!699019 () Bool)

(declare-fun res!1018126 () Bool)

(assert (=> d!699019 (=> res!1018126 e!1527005)))

(assert (=> d!699019 (= res!1018126 ((_ is ElementMatch!7021) (h!33583 l!9164)))))

(assert (=> d!699019 (= (validRegex!2746 (h!33583 l!9164)) e!1527005)))

(declare-fun bm!146183 () Bool)

(assert (=> bm!146183 (= call!146187 (validRegex!2746 (ite c!381364 (reg!7350 (h!33583 l!9164)) (ite c!381365 (regTwo!14555 (h!33583 l!9164)) (regOne!14554 (h!33583 l!9164))))))))

(declare-fun b!2396195 () Bool)

(declare-fun res!1018128 () Bool)

(assert (=> b!2396195 (=> (not res!1018128) (not e!1527009))))

(assert (=> b!2396195 (= res!1018128 call!146188)))

(assert (=> b!2396195 (= e!1527007 e!1527009)))

(assert (= (and d!699019 (not res!1018126)) b!2396187))

(assert (= (and b!2396187 c!381364) b!2396194))

(assert (= (and b!2396187 (not c!381364)) b!2396193))

(assert (= (and b!2396194 res!1018129) b!2396192))

(assert (= (and b!2396193 c!381365) b!2396195))

(assert (= (and b!2396193 (not c!381365)) b!2396189))

(assert (= (and b!2396195 res!1018128) b!2396191))

(assert (= (and b!2396189 (not res!1018127)) b!2396190))

(assert (= (and b!2396190 res!1018125) b!2396188))

(assert (= (or b!2396195 b!2396188) bm!146181))

(assert (= (or b!2396191 b!2396190) bm!146182))

(assert (= (or b!2396192 bm!146182) bm!146183))

(declare-fun m!2795021 () Bool)

(assert (=> bm!146181 m!2795021))

(declare-fun m!2795025 () Bool)

(assert (=> b!2396194 m!2795025))

(declare-fun m!2795029 () Bool)

(assert (=> bm!146183 m!2795029))

(assert (=> b!2395684 d!699019))

(declare-fun bs!462901 () Bool)

(declare-fun d!699033 () Bool)

(assert (= bs!462901 (and d!699033 start!235068)))

(declare-fun lambda!89945 () Int)

(assert (=> bs!462901 (= lambda!89945 lambda!89905)))

(declare-fun bs!462902 () Bool)

(assert (= bs!462902 (and d!699033 d!698947)))

(assert (=> bs!462902 (= lambda!89945 lambda!89913)))

(declare-fun bs!462903 () Bool)

(assert (= bs!462903 (and d!699033 d!698973)))

(assert (=> bs!462903 (= lambda!89945 lambda!89914)))

(declare-fun b!2396196 () Bool)

(declare-fun e!1527013 () Bool)

(declare-fun lt!871745 () Regex!7021)

(assert (=> b!2396196 (= e!1527013 (= lt!871745 (head!5273 (t!208257 l!9164))))))

(declare-fun b!2396197 () Bool)

(declare-fun e!1527012 () Bool)

(assert (=> b!2396197 (= e!1527012 (isEmptyExpr!91 lt!871745))))

(declare-fun b!2396198 () Bool)

(declare-fun e!1527014 () Regex!7021)

(assert (=> b!2396198 (= e!1527014 (h!33583 (t!208257 l!9164)))))

(declare-fun e!1527016 () Bool)

(assert (=> d!699033 e!1527016))

(declare-fun res!1018131 () Bool)

(assert (=> d!699033 (=> (not res!1018131) (not e!1527016))))

(assert (=> d!699033 (= res!1018131 (validRegex!2746 lt!871745))))

(assert (=> d!699033 (= lt!871745 e!1527014)))

(declare-fun c!381369 () Bool)

(declare-fun e!1527011 () Bool)

(assert (=> d!699033 (= c!381369 e!1527011)))

(declare-fun res!1018130 () Bool)

(assert (=> d!699033 (=> (not res!1018130) (not e!1527011))))

(assert (=> d!699033 (= res!1018130 ((_ is Cons!28182) (t!208257 l!9164)))))

(assert (=> d!699033 (forall!5655 (t!208257 l!9164) lambda!89945)))

(assert (=> d!699033 (= (generalisedConcat!122 (t!208257 l!9164)) lt!871745)))

(declare-fun b!2396199 () Bool)

(declare-fun e!1527015 () Regex!7021)

(assert (=> b!2396199 (= e!1527015 (Concat!11657 (h!33583 (t!208257 l!9164)) (generalisedConcat!122 (t!208257 (t!208257 l!9164)))))))

(declare-fun b!2396200 () Bool)

(assert (=> b!2396200 (= e!1527012 e!1527013)))

(declare-fun c!381368 () Bool)

(assert (=> b!2396200 (= c!381368 (isEmpty!16172 (tail!3543 (t!208257 l!9164))))))

(declare-fun b!2396201 () Bool)

(assert (=> b!2396201 (= e!1527016 e!1527012)))

(declare-fun c!381367 () Bool)

(assert (=> b!2396201 (= c!381367 (isEmpty!16172 (t!208257 l!9164)))))

(declare-fun b!2396202 () Bool)

(assert (=> b!2396202 (= e!1527013 (isConcat!91 lt!871745))))

(declare-fun b!2396203 () Bool)

(assert (=> b!2396203 (= e!1527011 (isEmpty!16172 (t!208257 (t!208257 l!9164))))))

(declare-fun b!2396204 () Bool)

(assert (=> b!2396204 (= e!1527014 e!1527015)))

(declare-fun c!381366 () Bool)

(assert (=> b!2396204 (= c!381366 ((_ is Cons!28182) (t!208257 l!9164)))))

(declare-fun b!2396205 () Bool)

(assert (=> b!2396205 (= e!1527015 EmptyExpr!7021)))

(assert (= (and d!699033 res!1018130) b!2396203))

(assert (= (and d!699033 c!381369) b!2396198))

(assert (= (and d!699033 (not c!381369)) b!2396204))

(assert (= (and b!2396204 c!381366) b!2396199))

(assert (= (and b!2396204 (not c!381366)) b!2396205))

(assert (= (and d!699033 res!1018131) b!2396201))

(assert (= (and b!2396201 c!381367) b!2396197))

(assert (= (and b!2396201 (not c!381367)) b!2396200))

(assert (= (and b!2396200 c!381368) b!2396196))

(assert (= (and b!2396200 (not c!381368)) b!2396202))

(assert (=> b!2396201 m!2794863))

(declare-fun m!2795035 () Bool)

(assert (=> d!699033 m!2795035))

(declare-fun m!2795037 () Bool)

(assert (=> d!699033 m!2795037))

(declare-fun m!2795039 () Bool)

(assert (=> b!2396196 m!2795039))

(declare-fun m!2795041 () Bool)

(assert (=> b!2396203 m!2795041))

(declare-fun m!2795043 () Bool)

(assert (=> b!2396199 m!2795043))

(declare-fun m!2795045 () Bool)

(assert (=> b!2396197 m!2795045))

(declare-fun m!2795047 () Bool)

(assert (=> b!2396202 m!2795047))

(declare-fun m!2795049 () Bool)

(assert (=> b!2396200 m!2795049))

(assert (=> b!2396200 m!2795049))

(declare-fun m!2795051 () Bool)

(assert (=> b!2396200 m!2795051))

(assert (=> b!2395684 d!699033))

(declare-fun d!699037 () Bool)

(assert (=> d!699037 (= (isDefined!4392 (ite c!381248 call!146147 lt!871648)) (not (isEmpty!16173 (ite c!381248 call!146147 lt!871648))))))

(declare-fun bs!462904 () Bool)

(assert (= bs!462904 d!699037))

(declare-fun m!2795053 () Bool)

(assert (=> bs!462904 m!2795053))

(assert (=> bm!146143 d!699037))

(declare-fun d!699039 () Bool)

(assert (=> d!699039 (= (isDefined!4392 (ite c!381244 call!146146 call!146156)) (not (isEmpty!16173 (ite c!381244 call!146146 call!146156))))))

(declare-fun bs!462905 () Bool)

(assert (= bs!462905 d!699039))

(declare-fun m!2795055 () Bool)

(assert (=> bs!462905 m!2795055))

(assert (=> bm!146144 d!699039))

(declare-fun d!699041 () Bool)

(assert (=> d!699041 (= (isDefined!4392 (findConcatSeparation!672 (h!33583 l!9164) (generalisedConcat!122 (t!208257 l!9164)) Nil!28183 s!9460 s!9460)) (not (isEmpty!16173 (findConcatSeparation!672 (h!33583 l!9164) (generalisedConcat!122 (t!208257 l!9164)) Nil!28183 s!9460 s!9460))))))

(declare-fun bs!462906 () Bool)

(assert (= bs!462906 d!699041))

(assert (=> bs!462906 m!2794645))

(declare-fun m!2795057 () Bool)

(assert (=> bs!462906 m!2795057))

(assert (=> b!2395686 d!699041))

(declare-fun b!2396206 () Bool)

(declare-fun e!1527020 () Bool)

(declare-fun lt!871747 () Option!5564)

(assert (=> b!2396206 (= e!1527020 (not (isDefined!4392 lt!871747)))))

(declare-fun b!2396207 () Bool)

(declare-fun e!1527018 () Option!5564)

(assert (=> b!2396207 (= e!1527018 (Some!5563 (tuple2!27907 Nil!28183 s!9460)))))

(declare-fun d!699043 () Bool)

(assert (=> d!699043 e!1527020))

(declare-fun res!1018134 () Bool)

(assert (=> d!699043 (=> res!1018134 e!1527020)))

(declare-fun e!1527021 () Bool)

(assert (=> d!699043 (= res!1018134 e!1527021)))

(declare-fun res!1018132 () Bool)

(assert (=> d!699043 (=> (not res!1018132) (not e!1527021))))

(assert (=> d!699043 (= res!1018132 (isDefined!4392 lt!871747))))

(assert (=> d!699043 (= lt!871747 e!1527018)))

(declare-fun c!381370 () Bool)

(declare-fun e!1527017 () Bool)

(assert (=> d!699043 (= c!381370 e!1527017)))

(declare-fun res!1018135 () Bool)

(assert (=> d!699043 (=> (not res!1018135) (not e!1527017))))

(assert (=> d!699043 (= res!1018135 (matchR!3138 (h!33583 l!9164) Nil!28183))))

(assert (=> d!699043 (validRegex!2746 (h!33583 l!9164))))

(assert (=> d!699043 (= (findConcatSeparation!672 (h!33583 l!9164) (generalisedConcat!122 (t!208257 l!9164)) Nil!28183 s!9460 s!9460) lt!871747)))

(declare-fun b!2396208 () Bool)

(declare-fun res!1018136 () Bool)

(assert (=> b!2396208 (=> (not res!1018136) (not e!1527021))))

(assert (=> b!2396208 (= res!1018136 (matchR!3138 (generalisedConcat!122 (t!208257 l!9164)) (_2!16494 (get!8629 lt!871747))))))

(declare-fun b!2396209 () Bool)

(assert (=> b!2396209 (= e!1527017 (matchR!3138 (generalisedConcat!122 (t!208257 l!9164)) s!9460))))

(declare-fun b!2396210 () Bool)

(declare-fun lt!871748 () Unit!41264)

(declare-fun lt!871746 () Unit!41264)

(assert (=> b!2396210 (= lt!871748 lt!871746)))

(assert (=> b!2396210 (= (++!6975 (++!6975 Nil!28183 (Cons!28183 (h!33584 s!9460) Nil!28183)) (t!208258 s!9460)) s!9460)))

(assert (=> b!2396210 (= lt!871746 (lemmaMoveElementToOtherListKeepsConcatEq!616 Nil!28183 (h!33584 s!9460) (t!208258 s!9460) s!9460))))

(declare-fun e!1527019 () Option!5564)

(assert (=> b!2396210 (= e!1527019 (findConcatSeparation!672 (h!33583 l!9164) (generalisedConcat!122 (t!208257 l!9164)) (++!6975 Nil!28183 (Cons!28183 (h!33584 s!9460) Nil!28183)) (t!208258 s!9460) s!9460))))

(declare-fun b!2396211 () Bool)

(assert (=> b!2396211 (= e!1527019 None!5563)))

(declare-fun b!2396212 () Bool)

(declare-fun res!1018133 () Bool)

(assert (=> b!2396212 (=> (not res!1018133) (not e!1527021))))

(assert (=> b!2396212 (= res!1018133 (matchR!3138 (h!33583 l!9164) (_1!16494 (get!8629 lt!871747))))))

(declare-fun b!2396213 () Bool)

(assert (=> b!2396213 (= e!1527021 (= (++!6975 (_1!16494 (get!8629 lt!871747)) (_2!16494 (get!8629 lt!871747))) s!9460))))

(declare-fun b!2396214 () Bool)

(assert (=> b!2396214 (= e!1527018 e!1527019)))

(declare-fun c!381371 () Bool)

(assert (=> b!2396214 (= c!381371 ((_ is Nil!28183) s!9460))))

(assert (= (and d!699043 res!1018135) b!2396209))

(assert (= (and d!699043 c!381370) b!2396207))

(assert (= (and d!699043 (not c!381370)) b!2396214))

(assert (= (and b!2396214 c!381371) b!2396211))

(assert (= (and b!2396214 (not c!381371)) b!2396210))

(assert (= (and d!699043 res!1018132) b!2396212))

(assert (= (and b!2396212 res!1018133) b!2396208))

(assert (= (and b!2396208 res!1018136) b!2396213))

(assert (= (and d!699043 (not res!1018134)) b!2396206))

(declare-fun m!2795059 () Bool)

(assert (=> b!2396206 m!2795059))

(declare-fun m!2795061 () Bool)

(assert (=> b!2396213 m!2795061))

(declare-fun m!2795063 () Bool)

(assert (=> b!2396213 m!2795063))

(assert (=> b!2396212 m!2795061))

(declare-fun m!2795065 () Bool)

(assert (=> b!2396212 m!2795065))

(assert (=> b!2396208 m!2795061))

(assert (=> b!2396208 m!2794639))

(declare-fun m!2795067 () Bool)

(assert (=> b!2396208 m!2795067))

(assert (=> b!2396210 m!2794679))

(assert (=> b!2396210 m!2794679))

(assert (=> b!2396210 m!2794681))

(assert (=> b!2396210 m!2794683))

(assert (=> b!2396210 m!2794639))

(assert (=> b!2396210 m!2794679))

(declare-fun m!2795069 () Bool)

(assert (=> b!2396210 m!2795069))

(assert (=> d!699043 m!2795059))

(declare-fun m!2795071 () Bool)

(assert (=> d!699043 m!2795071))

(assert (=> d!699043 m!2794637))

(assert (=> b!2396209 m!2794639))

(declare-fun m!2795073 () Bool)

(assert (=> b!2396209 m!2795073))

(assert (=> b!2395686 d!699043))

(assert (=> b!2395686 d!699033))

(declare-fun d!699045 () Bool)

(assert (=> d!699045 (matchR!3138 (Concat!11657 lt!871649 EmptyExpr!7021) (++!6975 s!9460 Nil!28183))))

(declare-fun lt!871757 () Unit!41264)

(declare-fun choose!14164 (Regex!7021 Regex!7021 List!28281 List!28281) Unit!41264)

(assert (=> d!699045 (= lt!871757 (choose!14164 lt!871649 EmptyExpr!7021 s!9460 Nil!28183))))

(declare-fun e!1527029 () Bool)

(assert (=> d!699045 e!1527029))

(declare-fun res!1018144 () Bool)

(assert (=> d!699045 (=> (not res!1018144) (not e!1527029))))

(assert (=> d!699045 (= res!1018144 (validRegex!2746 lt!871649))))

(assert (=> d!699045 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!58 lt!871649 EmptyExpr!7021 s!9460 Nil!28183) lt!871757)))

(declare-fun b!2396226 () Bool)

(assert (=> b!2396226 (= e!1527029 (validRegex!2746 EmptyExpr!7021))))

(assert (= (and d!699045 res!1018144) b!2396226))

(declare-fun m!2795095 () Bool)

(assert (=> d!699045 m!2795095))

(assert (=> d!699045 m!2795095))

(declare-fun m!2795097 () Bool)

(assert (=> d!699045 m!2795097))

(declare-fun m!2795099 () Bool)

(assert (=> d!699045 m!2795099))

(assert (=> d!699045 m!2794709))

(declare-fun m!2795101 () Bool)

(assert (=> b!2396226 m!2795101))

(assert (=> b!2395699 d!699045))

(declare-fun b!2396231 () Bool)

(declare-fun e!1527032 () Bool)

(declare-fun lt!871758 () Bool)

(declare-fun call!146189 () Bool)

(assert (=> b!2396231 (= e!1527032 (= lt!871758 call!146189))))

(declare-fun b!2396232 () Bool)

(declare-fun res!1018149 () Bool)

(declare-fun e!1527037 () Bool)

(assert (=> b!2396232 (=> (not res!1018149) (not e!1527037))))

(assert (=> b!2396232 (= res!1018149 (not call!146189))))

(declare-fun b!2396233 () Bool)

(declare-fun res!1018151 () Bool)

(declare-fun e!1527036 () Bool)

(assert (=> b!2396233 (=> res!1018151 e!1527036)))

(assert (=> b!2396233 (= res!1018151 (not (isEmpty!16171 (tail!3545 call!146148))))))

(declare-fun b!2396234 () Bool)

(declare-fun res!1018152 () Bool)

(declare-fun e!1527033 () Bool)

(assert (=> b!2396234 (=> res!1018152 e!1527033)))

(assert (=> b!2396234 (= res!1018152 e!1527037)))

(declare-fun res!1018147 () Bool)

(assert (=> b!2396234 (=> (not res!1018147) (not e!1527037))))

(assert (=> b!2396234 (= res!1018147 lt!871758)))

(declare-fun b!2396235 () Bool)

(declare-fun res!1018153 () Bool)

(assert (=> b!2396235 (=> res!1018153 e!1527033)))

(assert (=> b!2396235 (= res!1018153 (not ((_ is ElementMatch!7021) lt!871660)))))

(declare-fun e!1527035 () Bool)

(assert (=> b!2396235 (= e!1527035 e!1527033)))

(declare-fun b!2396236 () Bool)

(assert (=> b!2396236 (= e!1527035 (not lt!871758))))

(declare-fun d!699053 () Bool)

(assert (=> d!699053 e!1527032))

(declare-fun c!381375 () Bool)

(assert (=> d!699053 (= c!381375 ((_ is EmptyExpr!7021) lt!871660))))

(declare-fun e!1527034 () Bool)

(assert (=> d!699053 (= lt!871758 e!1527034)))

(declare-fun c!381374 () Bool)

(assert (=> d!699053 (= c!381374 (isEmpty!16171 call!146148))))

(assert (=> d!699053 (validRegex!2746 lt!871660)))

(assert (=> d!699053 (= (matchR!3138 lt!871660 call!146148) lt!871758)))

(declare-fun b!2396237 () Bool)

(assert (=> b!2396237 (= e!1527037 (= (head!5275 call!146148) (c!381249 lt!871660)))))

(declare-fun b!2396238 () Bool)

(declare-fun e!1527038 () Bool)

(assert (=> b!2396238 (= e!1527033 e!1527038)))

(declare-fun res!1018150 () Bool)

(assert (=> b!2396238 (=> (not res!1018150) (not e!1527038))))

(assert (=> b!2396238 (= res!1018150 (not lt!871758))))

(declare-fun b!2396239 () Bool)

(assert (=> b!2396239 (= e!1527038 e!1527036)))

(declare-fun res!1018148 () Bool)

(assert (=> b!2396239 (=> res!1018148 e!1527036)))

(assert (=> b!2396239 (= res!1018148 call!146189)))

(declare-fun b!2396240 () Bool)

(assert (=> b!2396240 (= e!1527034 (matchR!3138 (derivativeStep!1728 lt!871660 (head!5275 call!146148)) (tail!3545 call!146148)))))

(declare-fun b!2396241 () Bool)

(assert (=> b!2396241 (= e!1527032 e!1527035)))

(declare-fun c!381376 () Bool)

(assert (=> b!2396241 (= c!381376 ((_ is EmptyLang!7021) lt!871660))))

(declare-fun b!2396242 () Bool)

(assert (=> b!2396242 (= e!1527036 (not (= (head!5275 call!146148) (c!381249 lt!871660))))))

(declare-fun b!2396243 () Bool)

(assert (=> b!2396243 (= e!1527034 (nullable!2070 lt!871660))))

(declare-fun bm!146184 () Bool)

(assert (=> bm!146184 (= call!146189 (isEmpty!16171 call!146148))))

(declare-fun b!2396244 () Bool)

(declare-fun res!1018154 () Bool)

(assert (=> b!2396244 (=> (not res!1018154) (not e!1527037))))

(assert (=> b!2396244 (= res!1018154 (isEmpty!16171 (tail!3545 call!146148)))))

(assert (= (and d!699053 c!381374) b!2396243))

(assert (= (and d!699053 (not c!381374)) b!2396240))

(assert (= (and d!699053 c!381375) b!2396231))

(assert (= (and d!699053 (not c!381375)) b!2396241))

(assert (= (and b!2396241 c!381376) b!2396236))

(assert (= (and b!2396241 (not c!381376)) b!2396235))

(assert (= (and b!2396235 (not res!1018153)) b!2396234))

(assert (= (and b!2396234 res!1018147) b!2396232))

(assert (= (and b!2396232 res!1018149) b!2396244))

(assert (= (and b!2396244 res!1018154) b!2396237))

(assert (= (and b!2396234 (not res!1018152)) b!2396238))

(assert (= (and b!2396238 res!1018150) b!2396239))

(assert (= (and b!2396239 (not res!1018148)) b!2396233))

(assert (= (and b!2396233 (not res!1018151)) b!2396242))

(assert (= (or b!2396231 b!2396232 b!2396239) bm!146184))

(declare-fun m!2795103 () Bool)

(assert (=> b!2396240 m!2795103))

(assert (=> b!2396240 m!2795103))

(declare-fun m!2795105 () Bool)

(assert (=> b!2396240 m!2795105))

(declare-fun m!2795107 () Bool)

(assert (=> b!2396240 m!2795107))

(assert (=> b!2396240 m!2795105))

(assert (=> b!2396240 m!2795107))

(declare-fun m!2795109 () Bool)

(assert (=> b!2396240 m!2795109))

(assert (=> b!2396244 m!2795107))

(assert (=> b!2396244 m!2795107))

(declare-fun m!2795111 () Bool)

(assert (=> b!2396244 m!2795111))

(declare-fun m!2795113 () Bool)

(assert (=> bm!146184 m!2795113))

(declare-fun m!2795115 () Bool)

(assert (=> b!2396243 m!2795115))

(assert (=> b!2396233 m!2795107))

(assert (=> b!2396233 m!2795107))

(assert (=> b!2396233 m!2795111))

(assert (=> b!2396237 m!2795103))

(assert (=> b!2396242 m!2795103))

(assert (=> d!699053 m!2795113))

(declare-fun m!2795117 () Bool)

(assert (=> d!699053 m!2795117))

(assert (=> b!2395699 d!699053))

(declare-fun d!699055 () Bool)

(assert (=> d!699055 (isDefined!4392 (findConcatSeparation!672 lt!871649 EmptyExpr!7021 Nil!28183 s!9460 s!9460))))

(declare-fun lt!871761 () Unit!41264)

(declare-fun choose!14165 (Regex!7021 Regex!7021 List!28281) Unit!41264)

(assert (=> d!699055 (= lt!871761 (choose!14165 lt!871649 EmptyExpr!7021 s!9460))))

(assert (=> d!699055 (validRegex!2746 lt!871649)))

(assert (=> d!699055 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!40 lt!871649 EmptyExpr!7021 s!9460) lt!871761)))

(declare-fun bs!462909 () Bool)

(assert (= bs!462909 d!699055))

(declare-fun m!2795125 () Bool)

(assert (=> bs!462909 m!2795125))

(assert (=> bs!462909 m!2795125))

(declare-fun m!2795127 () Bool)

(assert (=> bs!462909 m!2795127))

(declare-fun m!2795129 () Bool)

(assert (=> bs!462909 m!2795129))

(assert (=> bs!462909 m!2794709))

(assert (=> b!2395699 d!699055))

(declare-fun b!2396282 () Bool)

(declare-fun e!1527066 () Bool)

(declare-fun tp!762974 () Bool)

(assert (=> b!2396282 (= e!1527066 (and tp_is_empty!11455 tp!762974))))

(assert (=> b!2395691 (= tp!762969 e!1527066)))

(assert (= (and b!2395691 ((_ is Cons!28183) (t!208258 s!9460))) b!2396282))

(declare-fun b!2396303 () Bool)

(declare-fun e!1527075 () Bool)

(assert (=> b!2396303 (= e!1527075 tp_is_empty!11455)))

(assert (=> b!2395702 (= tp!762965 e!1527075)))

(declare-fun b!2396305 () Bool)

(declare-fun tp!762987 () Bool)

(assert (=> b!2396305 (= e!1527075 tp!762987)))

(declare-fun b!2396304 () Bool)

(declare-fun tp!762988 () Bool)

(declare-fun tp!762989 () Bool)

(assert (=> b!2396304 (= e!1527075 (and tp!762988 tp!762989))))

(declare-fun b!2396306 () Bool)

(declare-fun tp!762986 () Bool)

(declare-fun tp!762985 () Bool)

(assert (=> b!2396306 (= e!1527075 (and tp!762986 tp!762985))))

(assert (= (and b!2395702 ((_ is ElementMatch!7021) (regOne!14554 r!13927))) b!2396303))

(assert (= (and b!2395702 ((_ is Concat!11657) (regOne!14554 r!13927))) b!2396304))

(assert (= (and b!2395702 ((_ is Star!7021) (regOne!14554 r!13927))) b!2396305))

(assert (= (and b!2395702 ((_ is Union!7021) (regOne!14554 r!13927))) b!2396306))

(declare-fun b!2396307 () Bool)

(declare-fun e!1527076 () Bool)

(assert (=> b!2396307 (= e!1527076 tp_is_empty!11455)))

(assert (=> b!2395702 (= tp!762971 e!1527076)))

(declare-fun b!2396309 () Bool)

(declare-fun tp!762992 () Bool)

(assert (=> b!2396309 (= e!1527076 tp!762992)))

(declare-fun b!2396308 () Bool)

(declare-fun tp!762993 () Bool)

(declare-fun tp!762994 () Bool)

(assert (=> b!2396308 (= e!1527076 (and tp!762993 tp!762994))))

(declare-fun b!2396310 () Bool)

(declare-fun tp!762991 () Bool)

(declare-fun tp!762990 () Bool)

(assert (=> b!2396310 (= e!1527076 (and tp!762991 tp!762990))))

(assert (= (and b!2395702 ((_ is ElementMatch!7021) (regTwo!14554 r!13927))) b!2396307))

(assert (= (and b!2395702 ((_ is Concat!11657) (regTwo!14554 r!13927))) b!2396308))

(assert (= (and b!2395702 ((_ is Star!7021) (regTwo!14554 r!13927))) b!2396309))

(assert (= (and b!2395702 ((_ is Union!7021) (regTwo!14554 r!13927))) b!2396310))

(declare-fun b!2396311 () Bool)

(declare-fun e!1527077 () Bool)

(assert (=> b!2396311 (= e!1527077 tp_is_empty!11455)))

(assert (=> b!2395697 (= tp!762970 e!1527077)))

(declare-fun b!2396313 () Bool)

(declare-fun tp!762997 () Bool)

(assert (=> b!2396313 (= e!1527077 tp!762997)))

(declare-fun b!2396312 () Bool)

(declare-fun tp!762998 () Bool)

(declare-fun tp!762999 () Bool)

(assert (=> b!2396312 (= e!1527077 (and tp!762998 tp!762999))))

(declare-fun b!2396314 () Bool)

(declare-fun tp!762996 () Bool)

(declare-fun tp!762995 () Bool)

(assert (=> b!2396314 (= e!1527077 (and tp!762996 tp!762995))))

(assert (= (and b!2395697 ((_ is ElementMatch!7021) (regOne!14555 r!13927))) b!2396311))

(assert (= (and b!2395697 ((_ is Concat!11657) (regOne!14555 r!13927))) b!2396312))

(assert (= (and b!2395697 ((_ is Star!7021) (regOne!14555 r!13927))) b!2396313))

(assert (= (and b!2395697 ((_ is Union!7021) (regOne!14555 r!13927))) b!2396314))

(declare-fun b!2396315 () Bool)

(declare-fun e!1527078 () Bool)

(assert (=> b!2396315 (= e!1527078 tp_is_empty!11455)))

(assert (=> b!2395697 (= tp!762967 e!1527078)))

(declare-fun b!2396317 () Bool)

(declare-fun tp!763002 () Bool)

(assert (=> b!2396317 (= e!1527078 tp!763002)))

(declare-fun b!2396316 () Bool)

(declare-fun tp!763003 () Bool)

(declare-fun tp!763004 () Bool)

(assert (=> b!2396316 (= e!1527078 (and tp!763003 tp!763004))))

(declare-fun b!2396318 () Bool)

(declare-fun tp!763001 () Bool)

(declare-fun tp!763000 () Bool)

(assert (=> b!2396318 (= e!1527078 (and tp!763001 tp!763000))))

(assert (= (and b!2395697 ((_ is ElementMatch!7021) (regTwo!14555 r!13927))) b!2396315))

(assert (= (and b!2395697 ((_ is Concat!11657) (regTwo!14555 r!13927))) b!2396316))

(assert (= (and b!2395697 ((_ is Star!7021) (regTwo!14555 r!13927))) b!2396317))

(assert (= (and b!2395697 ((_ is Union!7021) (regTwo!14555 r!13927))) b!2396318))

(declare-fun b!2396319 () Bool)

(declare-fun e!1527079 () Bool)

(assert (=> b!2396319 (= e!1527079 tp_is_empty!11455)))

(assert (=> b!2395693 (= tp!762964 e!1527079)))

(declare-fun b!2396321 () Bool)

(declare-fun tp!763007 () Bool)

(assert (=> b!2396321 (= e!1527079 tp!763007)))

(declare-fun b!2396320 () Bool)

(declare-fun tp!763008 () Bool)

(declare-fun tp!763009 () Bool)

(assert (=> b!2396320 (= e!1527079 (and tp!763008 tp!763009))))

(declare-fun b!2396322 () Bool)

(declare-fun tp!763006 () Bool)

(declare-fun tp!763005 () Bool)

(assert (=> b!2396322 (= e!1527079 (and tp!763006 tp!763005))))

(assert (= (and b!2395693 ((_ is ElementMatch!7021) (reg!7350 r!13927))) b!2396319))

(assert (= (and b!2395693 ((_ is Concat!11657) (reg!7350 r!13927))) b!2396320))

(assert (= (and b!2395693 ((_ is Star!7021) (reg!7350 r!13927))) b!2396321))

(assert (= (and b!2395693 ((_ is Union!7021) (reg!7350 r!13927))) b!2396322))

(declare-fun b!2396332 () Bool)

(declare-fun e!1527085 () Bool)

(assert (=> b!2396332 (= e!1527085 tp_is_empty!11455)))

(assert (=> b!2395681 (= tp!762968 e!1527085)))

(declare-fun b!2396334 () Bool)

(declare-fun tp!763012 () Bool)

(assert (=> b!2396334 (= e!1527085 tp!763012)))

(declare-fun b!2396333 () Bool)

(declare-fun tp!763013 () Bool)

(declare-fun tp!763014 () Bool)

(assert (=> b!2396333 (= e!1527085 (and tp!763013 tp!763014))))

(declare-fun b!2396335 () Bool)

(declare-fun tp!763011 () Bool)

(declare-fun tp!763010 () Bool)

(assert (=> b!2396335 (= e!1527085 (and tp!763011 tp!763010))))

(assert (= (and b!2395681 ((_ is ElementMatch!7021) (h!33583 l!9164))) b!2396332))

(assert (= (and b!2395681 ((_ is Concat!11657) (h!33583 l!9164))) b!2396333))

(assert (= (and b!2395681 ((_ is Star!7021) (h!33583 l!9164))) b!2396334))

(assert (= (and b!2395681 ((_ is Union!7021) (h!33583 l!9164))) b!2396335))

(declare-fun b!2396340 () Bool)

(declare-fun e!1527088 () Bool)

(declare-fun tp!763019 () Bool)

(declare-fun tp!763020 () Bool)

(assert (=> b!2396340 (= e!1527088 (and tp!763019 tp!763020))))

(assert (=> b!2395681 (= tp!762966 e!1527088)))

(assert (= (and b!2395681 ((_ is Cons!28182) (t!208257 l!9164))) b!2396340))

(declare-fun b_lambda!74255 () Bool)

(assert (= b_lambda!74253 (or start!235068 b_lambda!74255)))

(declare-fun bs!462916 () Bool)

(declare-fun d!699065 () Bool)

(assert (= bs!462916 (and d!699065 start!235068)))

(assert (=> bs!462916 (= (dynLambda!12136 lambda!89905 (h!33583 l!9164)) (validRegex!2746 (h!33583 l!9164)))))

(assert (=> bs!462916 m!2794637))

(assert (=> b!2395929 d!699065))

(check-sat (not d!699055) (not b!2396208) (not bm!146158) (not bm!146170) (not b!2395969) (not b!2395727) (not b!2395742) (not b!2396304) (not d!698939) (not b!2395824) (not b!2395953) (not b!2396201) (not b!2395730) (not b!2395946) (not d!699041) (not b!2396322) (not b!2395897) (not b!2396197) (not b!2396084) (not b!2396203) (not b!2396316) (not d!698943) (not b!2396196) (not d!699033) (not b!2395743) (not d!698931) (not b!2395960) (not b!2395739) (not b!2395930) (not b!2395898) (not b!2396141) (not b!2395942) (not b!2396070) (not bm!146172) (not b!2395733) (not b!2396314) (not b!2395961) (not b!2396226) (not d!698981) (not b!2396202) (not b!2396137) (not b!2395957) (not d!699011) (not b!2395828) (not b!2396233) (not b!2396320) (not b!2395868) (not b!2395958) (not b!2395827) (not b!2395952) (not d!698985) (not d!698937) (not b!2395954) (not d!699053) tp_is_empty!11455 (not b!2396212) (not b!2395731) (not b!2395963) (not b!2396321) (not b!2396079) (not b!2395729) (not b!2395869) (not bm!146183) (not b!2396086) (not b!2396210) (not b!2396340) (not bs!462916) (not b!2396200) (not b!2395966) (not b!2396333) (not b!2396136) (not b!2396312) (not b!2396318) (not b!2395817) (not b!2396067) (not b!2395826) (not b!2396237) (not b_lambda!74255) (not b!2396240) (not d!698971) (not b!2395967) (not b!2396082) (not b!2395956) (not b!2396213) (not b!2396305) (not b!2396309) (not d!698995) (not d!699045) (not b!2395951) (not d!699007) (not b!2396334) (not bm!146171) (not b!2395902) (not d!698973) (not b!2395738) (not b!2395904) (not b!2396244) (not b!2395736) (not b!2396140) (not d!699001) (not b!2395821) (not d!698967) (not b!2396317) (not b!2395734) (not b!2395964) (not b!2396194) (not d!698963) (not b!2395900) (not b!2396209) (not b!2396313) (not b!2395740) (not b!2395949) (not d!698947) (not b!2395970) (not b!2396206) (not b!2395903) (not d!698997) (not b!2396308) (not bm!146157) (not b!2396282) (not d!699039) (not b!2395968) (not b!2396306) (not b!2396242) (not d!699017) (not b!2396310) (not d!699037) (not b!2395901) (not b!2396199) (not b!2396085) (not b!2396134) (not b!2396138) (not b!2396243) (not b!2396075) (not bm!146184) (not b!2396335) (not d!699043) (not d!698935) (not bm!146181))
(check-sat)
