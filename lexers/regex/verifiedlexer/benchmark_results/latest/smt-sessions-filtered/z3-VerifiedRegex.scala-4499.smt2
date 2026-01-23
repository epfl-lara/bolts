; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239134 () Bool)

(assert start!239134)

(declare-fun b!2446912 () Bool)

(assert (=> b!2446912 true))

(assert (=> b!2446912 true))

(declare-fun lambda!92717 () Int)

(declare-fun lambda!92716 () Int)

(assert (=> b!2446912 (not (= lambda!92717 lambda!92716))))

(assert (=> b!2446912 true))

(assert (=> b!2446912 true))

(declare-fun b!2446897 () Bool)

(declare-fun e!1553822 () Bool)

(declare-fun tp_is_empty!11795 () Bool)

(declare-fun tp!777237 () Bool)

(assert (=> b!2446897 (= e!1553822 (and tp_is_empty!11795 tp!777237))))

(declare-fun b!2446898 () Bool)

(declare-fun e!1553829 () Bool)

(declare-fun call!150172 () Bool)

(assert (=> b!2446898 (= e!1553829 (not call!150172))))

(declare-fun bm!150161 () Bool)

(declare-datatypes ((C!14540 0))(
  ( (C!14541 (val!8512 Int)) )
))
(declare-datatypes ((Regex!7191 0))(
  ( (ElementMatch!7191 (c!390511 C!14540)) (Concat!11827 (regOne!14894 Regex!7191) (regTwo!14894 Regex!7191)) (EmptyExpr!7191) (Star!7191 (reg!7520 Regex!7191)) (EmptyLang!7191) (Union!7191 (regOne!14895 Regex!7191) (regTwo!14895 Regex!7191)) )
))
(declare-fun call!150176 () Regex!7191)

(declare-datatypes ((List!28618 0))(
  ( (Nil!28520) (Cons!28520 (h!33921 Regex!7191) (t!208595 List!28618)) )
))
(declare-fun l!9164 () List!28618)

(declare-fun head!5564 (List!28618) Regex!7191)

(assert (=> bm!150161 (= call!150176 (head!5564 l!9164))))

(declare-fun b!2446899 () Bool)

(declare-datatypes ((Unit!41816 0))(
  ( (Unit!41817) )
))
(declare-fun e!1553835 () Unit!41816)

(declare-fun Unit!41818 () Unit!41816)

(assert (=> b!2446899 (= e!1553835 Unit!41818)))

(declare-fun b!2446900 () Bool)

(declare-fun e!1553823 () Bool)

(assert (=> b!2446900 e!1553823))

(declare-fun res!1038410 () Bool)

(assert (=> b!2446900 (=> (not res!1038410) (not e!1553823))))

(declare-fun call!150174 () Bool)

(assert (=> b!2446900 (= res!1038410 call!150174)))

(declare-datatypes ((List!28619 0))(
  ( (Nil!28521) (Cons!28521 (h!33922 C!14540) (t!208596 List!28619)) )
))
(declare-fun s!9460 () List!28619)

(declare-fun lt!879394 () Unit!41816)

(declare-fun lt!879395 () Regex!7191)

(declare-datatypes ((tuple2!28138 0))(
  ( (tuple2!28139 (_1!16610 List!28619) (_2!16610 List!28619)) )
))
(declare-fun lt!879392 () tuple2!28138)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!94 (Regex!7191 Regex!7191 List!28619 List!28619 List!28619) Unit!41816)

(assert (=> b!2446900 (= lt!879394 (lemmaFindSeparationIsDefinedThenConcatMatches!94 lt!879395 EmptyExpr!7191 (_1!16610 lt!879392) (_2!16610 lt!879392) s!9460))))

(declare-datatypes ((Option!5680 0))(
  ( (None!5679) (Some!5679 (v!31087 tuple2!28138)) )
))
(declare-fun lt!879398 () Option!5680)

(declare-fun get!8816 (Option!5680) tuple2!28138)

(assert (=> b!2446900 (= lt!879392 (get!8816 lt!879398))))

(declare-fun Unit!41819 () Unit!41816)

(assert (=> b!2446900 (= e!1553835 Unit!41819)))

(declare-fun bm!150162 () Bool)

(declare-fun call!150167 () Option!5680)

(declare-fun call!150170 () Option!5680)

(assert (=> bm!150162 (= call!150167 call!150170)))

(declare-fun b!2446901 () Bool)

(declare-fun e!1553833 () Unit!41816)

(declare-fun Unit!41820 () Unit!41816)

(assert (=> b!2446901 (= e!1553833 Unit!41820)))

(assert (=> b!2446901 false))

(declare-fun b!2446902 () Bool)

(declare-fun e!1553824 () Bool)

(assert (=> b!2446902 (= e!1553824 tp_is_empty!11795)))

(declare-fun c!390507 () Bool)

(declare-fun bm!150163 () Bool)

(declare-fun lt!879401 () Regex!7191)

(declare-fun call!150168 () List!28619)

(declare-fun matchR!3306 (Regex!7191 List!28619) Bool)

(assert (=> bm!150163 (= call!150174 (matchR!3306 (ite c!390507 lt!879401 (Concat!11827 lt!879395 EmptyExpr!7191)) (ite c!390507 s!9460 call!150168)))))

(declare-fun b!2446903 () Bool)

(assert (=> b!2446903 (= e!1553823 false)))

(declare-fun b!2446904 () Bool)

(declare-fun e!1553827 () Bool)

(declare-fun lt!879405 () Bool)

(declare-fun isEmpty!16562 (List!28619) Bool)

(assert (=> b!2446904 (= e!1553827 (not (= lt!879405 (isEmpty!16562 s!9460))))))

(declare-fun bm!150164 () Bool)

(declare-fun ++!7094 (List!28619 List!28619) List!28619)

(assert (=> bm!150164 (= call!150168 (++!7094 (ite c!390507 s!9460 (_1!16610 lt!879392)) (ite c!390507 Nil!28521 (_2!16610 lt!879392))))))

(declare-fun b!2446905 () Bool)

(declare-fun tp!777236 () Bool)

(declare-fun tp!777235 () Bool)

(assert (=> b!2446905 (= e!1553824 (and tp!777236 tp!777235))))

(declare-fun b!2446906 () Bool)

(declare-fun call!150169 () Regex!7191)

(declare-fun isDefined!4506 (Option!5680) Bool)

(declare-fun findConcatSeparation!788 (Regex!7191 Regex!7191 List!28619 List!28619 List!28619) Option!5680)

(assert (=> b!2446906 (= lt!879405 (isDefined!4506 (findConcatSeparation!788 lt!879395 call!150169 Nil!28521 s!9460 s!9460)))))

(declare-fun lt!879400 () Unit!41816)

(declare-fun e!1553836 () Unit!41816)

(assert (=> b!2446906 (= lt!879400 e!1553836)))

(assert (=> b!2446906 (= c!390507 (matchR!3306 lt!879395 s!9460))))

(assert (=> b!2446906 (= lt!879395 call!150176)))

(declare-fun e!1553832 () Unit!41816)

(declare-fun Unit!41821 () Unit!41816)

(assert (=> b!2446906 (= e!1553832 Unit!41821)))

(declare-fun b!2446907 () Bool)

(declare-fun e!1553825 () Bool)

(declare-fun e!1553826 () Bool)

(assert (=> b!2446907 (= e!1553825 (not e!1553826))))

(declare-fun res!1038409 () Bool)

(assert (=> b!2446907 (=> res!1038409 e!1553826)))

(declare-fun r!13927 () Regex!7191)

(get-info :version)

(assert (=> b!2446907 (= res!1038409 (not ((_ is Concat!11827) r!13927)))))

(declare-fun lt!879389 () Bool)

(assert (=> b!2446907 (= lt!879405 lt!879389)))

(declare-fun matchRSpec!1038 (Regex!7191 List!28619) Bool)

(assert (=> b!2446907 (= lt!879389 (matchRSpec!1038 r!13927 s!9460))))

(assert (=> b!2446907 (= lt!879405 (matchR!3306 r!13927 s!9460))))

(declare-fun lt!879402 () Unit!41816)

(declare-fun mainMatchTheorem!1038 (Regex!7191 List!28619) Unit!41816)

(assert (=> b!2446907 (= lt!879402 (mainMatchTheorem!1038 r!13927 s!9460))))

(declare-fun bm!150165 () Bool)

(declare-fun c!390506 () Bool)

(assert (=> bm!150165 (= call!150170 (findConcatSeparation!788 (ite c!390506 lt!879395 call!150176) (ite c!390506 EmptyExpr!7191 call!150169) Nil!28521 s!9460 s!9460))))

(declare-fun bm!150166 () Bool)

(declare-fun call!150166 () Bool)

(assert (=> bm!150166 (= call!150172 call!150166)))

(declare-fun b!2446908 () Bool)

(declare-fun res!1038408 () Bool)

(assert (=> b!2446908 (=> (not res!1038408) (not e!1553825))))

(declare-fun generalisedConcat!292 (List!28618) Regex!7191)

(assert (=> b!2446908 (= res!1038408 (= r!13927 (generalisedConcat!292 l!9164)))))

(declare-fun b!2446909 () Bool)

(declare-fun e!1553828 () Bool)

(assert (=> b!2446909 (= e!1553828 true)))

(declare-fun lt!879404 () Bool)

(assert (=> b!2446909 (= lt!879404 e!1553827)))

(declare-fun c!390509 () Bool)

(assert (=> b!2446909 (= c!390509 ((_ is Cons!28520) l!9164))))

(declare-fun lt!879391 () Unit!41816)

(assert (=> b!2446909 (= lt!879391 e!1553833)))

(declare-fun c!390508 () Bool)

(declare-fun isEmpty!16563 (List!28618) Bool)

(assert (=> b!2446909 (= c!390508 (isEmpty!16563 l!9164))))

(declare-fun res!1038406 () Bool)

(assert (=> start!239134 (=> (not res!1038406) (not e!1553825))))

(declare-fun lambda!92715 () Int)

(declare-fun forall!5825 (List!28618 Int) Bool)

(assert (=> start!239134 (= res!1038406 (forall!5825 l!9164 lambda!92715))))

(assert (=> start!239134 e!1553825))

(declare-fun e!1553831 () Bool)

(assert (=> start!239134 e!1553831))

(assert (=> start!239134 e!1553824))

(assert (=> start!239134 e!1553822))

(declare-fun bm!150167 () Bool)

(declare-fun call!150173 () Bool)

(assert (=> bm!150167 (= call!150173 (isDefined!4506 (ite c!390507 call!150167 lt!879398)))))

(declare-fun b!2446910 () Bool)

(declare-fun tp!777241 () Bool)

(declare-fun tp!777240 () Bool)

(assert (=> b!2446910 (= e!1553831 (and tp!777241 tp!777240))))

(declare-fun b!2446911 () Bool)

(declare-fun Unit!41822 () Unit!41816)

(assert (=> b!2446911 (= e!1553836 Unit!41822)))

(assert (=> b!2446911 (= lt!879398 call!150167)))

(declare-fun lt!879390 () Bool)

(assert (=> b!2446911 (= lt!879390 call!150173)))

(declare-fun c!390510 () Bool)

(assert (=> b!2446911 (= c!390510 lt!879390)))

(declare-fun lt!879399 () Unit!41816)

(assert (=> b!2446911 (= lt!879399 e!1553835)))

(declare-fun res!1038407 () Bool)

(assert (=> b!2446911 (= res!1038407 (not lt!879390))))

(assert (=> b!2446911 (=> (not res!1038407) (not e!1553829))))

(assert (=> b!2446911 e!1553829))

(declare-fun call!150171 () Option!5680)

(declare-fun bm!150168 () Bool)

(declare-fun call!150175 () Regex!7191)

(assert (=> bm!150168 (= call!150171 (findConcatSeparation!788 lt!879395 call!150175 Nil!28521 s!9460 s!9460))))

(assert (=> b!2446912 (= e!1553826 e!1553828)))

(declare-fun res!1038412 () Bool)

(assert (=> b!2446912 (=> res!1038412 e!1553828)))

(declare-fun lt!879406 () Bool)

(assert (=> b!2446912 (= res!1038412 (not (= lt!879389 lt!879406)))))

(declare-fun Exists!1227 (Int) Bool)

(assert (=> b!2446912 (= (Exists!1227 lambda!92716) (Exists!1227 lambda!92717))))

(declare-fun lt!879393 () Unit!41816)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!472 (Regex!7191 Regex!7191 List!28619) Unit!41816)

(assert (=> b!2446912 (= lt!879393 (lemmaExistCutMatchRandMatchRSpecEquivalent!472 (regOne!14894 r!13927) (regTwo!14894 r!13927) s!9460))))

(assert (=> b!2446912 (= lt!879406 (Exists!1227 lambda!92716))))

(assert (=> b!2446912 (= lt!879406 (isDefined!4506 (findConcatSeparation!788 (regOne!14894 r!13927) (regTwo!14894 r!13927) Nil!28521 s!9460 s!9460)))))

(declare-fun lt!879388 () Unit!41816)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!726 (Regex!7191 Regex!7191 List!28619) Unit!41816)

(assert (=> b!2446912 (= lt!879388 (lemmaFindConcatSeparationEquivalentToExists!726 (regOne!14894 r!13927) (regTwo!14894 r!13927) s!9460))))

(declare-fun b!2446913 () Bool)

(assert (=> b!2446913 (= e!1553833 e!1553832)))

(declare-fun lt!879397 () List!28618)

(declare-fun tail!3837 (List!28618) List!28618)

(assert (=> b!2446913 (= lt!879397 (tail!3837 l!9164))))

(assert (=> b!2446913 (= c!390506 (isEmpty!16563 lt!879397))))

(declare-fun b!2446914 () Bool)

(assert (=> b!2446914 (= e!1553827 (not (= lt!879405 (isDefined!4506 (findConcatSeparation!788 (h!33921 l!9164) (generalisedConcat!292 (t!208595 l!9164)) Nil!28521 s!9460 s!9460)))))))

(declare-fun b!2446915 () Bool)

(declare-fun tp!777239 () Bool)

(assert (=> b!2446915 (= e!1553824 tp!777239)))

(declare-fun bm!150169 () Bool)

(assert (=> bm!150169 (= call!150169 (generalisedConcat!292 lt!879397))))

(declare-fun b!2446916 () Bool)

(assert (=> b!2446916 (= lt!879405 call!150166)))

(declare-fun Unit!41823 () Unit!41816)

(assert (=> b!2446916 (= e!1553832 Unit!41823)))

(declare-fun bm!150170 () Bool)

(assert (=> bm!150170 (= call!150166 (isDefined!4506 (ite c!390506 call!150171 call!150170)))))

(declare-fun b!2446917 () Bool)

(declare-fun e!1553830 () Bool)

(assert (=> b!2446917 (= e!1553830 call!150172)))

(declare-fun bm!150171 () Bool)

(assert (=> bm!150171 (= call!150175 call!150169)))

(declare-fun b!2446918 () Bool)

(declare-fun tp!777238 () Bool)

(declare-fun tp!777234 () Bool)

(assert (=> b!2446918 (= e!1553824 (and tp!777238 tp!777234))))

(declare-fun b!2446919 () Bool)

(declare-fun Unit!41824 () Unit!41816)

(assert (=> b!2446919 (= e!1553836 Unit!41824)))

(declare-fun lt!879396 () Unit!41816)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!122 (Regex!7191 Regex!7191 List!28619 List!28619) Unit!41816)

(assert (=> b!2446919 (= lt!879396 (lemmaTwoRegexMatchThenConcatMatchesConcatString!122 lt!879395 EmptyExpr!7191 s!9460 Nil!28521))))

(assert (=> b!2446919 (= lt!879401 (Concat!11827 lt!879395 EmptyExpr!7191))))

(declare-fun res!1038405 () Bool)

(assert (=> b!2446919 (= res!1038405 (matchR!3306 lt!879401 call!150168))))

(declare-fun e!1553834 () Bool)

(assert (=> b!2446919 (=> (not res!1038405) (not e!1553834))))

(assert (=> b!2446919 e!1553834))

(declare-fun lt!879403 () Unit!41816)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!90 (Regex!7191 Regex!7191 List!28619) Unit!41816)

(assert (=> b!2446919 (= lt!879403 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!90 lt!879395 EmptyExpr!7191 s!9460))))

(declare-fun res!1038411 () Bool)

(assert (=> b!2446919 (= res!1038411 call!150173)))

(assert (=> b!2446919 (=> (not res!1038411) (not e!1553830))))

(assert (=> b!2446919 e!1553830))

(declare-fun b!2446920 () Bool)

(assert (=> b!2446920 (= e!1553834 call!150174)))

(assert (= (and start!239134 res!1038406) b!2446908))

(assert (= (and b!2446908 res!1038408) b!2446907))

(assert (= (and b!2446907 (not res!1038409)) b!2446912))

(assert (= (and b!2446912 (not res!1038412)) b!2446909))

(assert (= (and b!2446909 c!390508) b!2446901))

(assert (= (and b!2446909 (not c!390508)) b!2446913))

(assert (= (and b!2446913 c!390506) b!2446906))

(assert (= (and b!2446913 (not c!390506)) b!2446916))

(assert (= (and b!2446906 c!390507) b!2446919))

(assert (= (and b!2446906 (not c!390507)) b!2446911))

(assert (= (and b!2446919 res!1038405) b!2446920))

(assert (= (and b!2446919 res!1038411) b!2446917))

(assert (= (and b!2446911 c!390510) b!2446900))

(assert (= (and b!2446911 (not c!390510)) b!2446899))

(assert (= (and b!2446900 res!1038410) b!2446903))

(assert (= (and b!2446911 res!1038407) b!2446898))

(assert (= (or b!2446917 b!2446898) bm!150171))

(assert (= (or b!2446919 b!2446900) bm!150164))

(assert (= (or b!2446919 b!2446911) bm!150162))

(assert (= (or b!2446919 b!2446911) bm!150167))

(assert (= (or b!2446920 b!2446900) bm!150163))

(assert (= (or b!2446917 b!2446898) bm!150168))

(assert (= (or b!2446917 b!2446898) bm!150166))

(assert (= (or b!2446906 b!2446916) bm!150161))

(assert (= (or b!2446906 bm!150171 b!2446916) bm!150169))

(assert (= (or bm!150162 b!2446916) bm!150165))

(assert (= (or bm!150166 b!2446916) bm!150170))

(assert (= (and b!2446909 c!390509) b!2446914))

(assert (= (and b!2446909 (not c!390509)) b!2446904))

(assert (= (and start!239134 ((_ is Cons!28520) l!9164)) b!2446910))

(assert (= (and start!239134 ((_ is ElementMatch!7191) r!13927)) b!2446902))

(assert (= (and start!239134 ((_ is Concat!11827) r!13927)) b!2446918))

(assert (= (and start!239134 ((_ is Star!7191) r!13927)) b!2446915))

(assert (= (and start!239134 ((_ is Union!7191) r!13927)) b!2446905))

(assert (= (and start!239134 ((_ is Cons!28521) s!9460)) b!2446897))

(declare-fun m!2822737 () Bool)

(assert (=> bm!150164 m!2822737))

(declare-fun m!2822739 () Bool)

(assert (=> b!2446913 m!2822739))

(declare-fun m!2822741 () Bool)

(assert (=> b!2446913 m!2822741))

(declare-fun m!2822743 () Bool)

(assert (=> b!2446907 m!2822743))

(declare-fun m!2822745 () Bool)

(assert (=> b!2446907 m!2822745))

(declare-fun m!2822747 () Bool)

(assert (=> b!2446907 m!2822747))

(declare-fun m!2822749 () Bool)

(assert (=> b!2446904 m!2822749))

(declare-fun m!2822751 () Bool)

(assert (=> bm!150170 m!2822751))

(declare-fun m!2822753 () Bool)

(assert (=> b!2446909 m!2822753))

(declare-fun m!2822755 () Bool)

(assert (=> b!2446900 m!2822755))

(declare-fun m!2822757 () Bool)

(assert (=> b!2446900 m!2822757))

(declare-fun m!2822759 () Bool)

(assert (=> bm!150163 m!2822759))

(declare-fun m!2822761 () Bool)

(assert (=> bm!150168 m!2822761))

(declare-fun m!2822763 () Bool)

(assert (=> b!2446906 m!2822763))

(assert (=> b!2446906 m!2822763))

(declare-fun m!2822765 () Bool)

(assert (=> b!2446906 m!2822765))

(declare-fun m!2822767 () Bool)

(assert (=> b!2446906 m!2822767))

(declare-fun m!2822769 () Bool)

(assert (=> start!239134 m!2822769))

(declare-fun m!2822771 () Bool)

(assert (=> b!2446908 m!2822771))

(declare-fun m!2822773 () Bool)

(assert (=> bm!150167 m!2822773))

(declare-fun m!2822775 () Bool)

(assert (=> b!2446914 m!2822775))

(assert (=> b!2446914 m!2822775))

(declare-fun m!2822777 () Bool)

(assert (=> b!2446914 m!2822777))

(assert (=> b!2446914 m!2822777))

(declare-fun m!2822779 () Bool)

(assert (=> b!2446914 m!2822779))

(declare-fun m!2822781 () Bool)

(assert (=> bm!150165 m!2822781))

(declare-fun m!2822783 () Bool)

(assert (=> bm!150169 m!2822783))

(declare-fun m!2822785 () Bool)

(assert (=> b!2446912 m!2822785))

(declare-fun m!2822787 () Bool)

(assert (=> b!2446912 m!2822787))

(declare-fun m!2822789 () Bool)

(assert (=> b!2446912 m!2822789))

(assert (=> b!2446912 m!2822785))

(declare-fun m!2822791 () Bool)

(assert (=> b!2446912 m!2822791))

(declare-fun m!2822793 () Bool)

(assert (=> b!2446912 m!2822793))

(declare-fun m!2822795 () Bool)

(assert (=> b!2446912 m!2822795))

(assert (=> b!2446912 m!2822791))

(declare-fun m!2822797 () Bool)

(assert (=> b!2446919 m!2822797))

(declare-fun m!2822799 () Bool)

(assert (=> b!2446919 m!2822799))

(declare-fun m!2822801 () Bool)

(assert (=> b!2446919 m!2822801))

(declare-fun m!2822803 () Bool)

(assert (=> bm!150161 m!2822803))

(check-sat (not start!239134) (not b!2446907) (not b!2446908) (not bm!150161) (not bm!150165) (not bm!150169) (not b!2446906) (not b!2446918) (not b!2446900) (not b!2446910) (not b!2446914) (not bm!150167) (not b!2446912) tp_is_empty!11795 (not b!2446915) (not b!2446904) (not bm!150170) (not b!2446909) (not bm!150168) (not b!2446897) (not b!2446913) (not b!2446919) (not b!2446905) (not bm!150164) (not bm!150163))
(check-sat)
