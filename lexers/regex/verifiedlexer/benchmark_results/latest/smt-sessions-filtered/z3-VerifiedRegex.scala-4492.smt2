; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238766 () Bool)

(assert start!238766)

(declare-fun b!2439691 () Bool)

(assert (=> b!2439691 true))

(assert (=> b!2439691 true))

(declare-fun lambda!92359 () Int)

(declare-fun lambda!92358 () Int)

(assert (=> b!2439691 (not (= lambda!92359 lambda!92358))))

(assert (=> b!2439691 true))

(assert (=> b!2439691 true))

(declare-fun b!2439690 () Bool)

(declare-fun e!1550229 () Bool)

(declare-fun tp!774625 () Bool)

(declare-fun tp!774630 () Bool)

(assert (=> b!2439690 (= e!1550229 (and tp!774625 tp!774630))))

(declare-fun e!1550232 () Bool)

(declare-fun e!1550224 () Bool)

(assert (=> b!2439691 (= e!1550232 e!1550224)))

(declare-fun res!1035899 () Bool)

(assert (=> b!2439691 (=> res!1035899 e!1550224)))

(declare-fun lt!878225 () Bool)

(declare-fun lt!878226 () Bool)

(assert (=> b!2439691 (= res!1035899 (not (= lt!878225 lt!878226)))))

(declare-fun Exists!1213 (Int) Bool)

(assert (=> b!2439691 (= (Exists!1213 lambda!92358) (Exists!1213 lambda!92359))))

(declare-datatypes ((Unit!41737 0))(
  ( (Unit!41738) )
))
(declare-fun lt!878227 () Unit!41737)

(declare-datatypes ((C!14512 0))(
  ( (C!14513 (val!8498 Int)) )
))
(declare-datatypes ((Regex!7177 0))(
  ( (ElementMatch!7177 (c!389219 C!14512)) (Concat!11813 (regOne!14866 Regex!7177) (regTwo!14866 Regex!7177)) (EmptyExpr!7177) (Star!7177 (reg!7506 Regex!7177)) (EmptyLang!7177) (Union!7177 (regOne!14867 Regex!7177) (regTwo!14867 Regex!7177)) )
))
(declare-fun r!13927 () Regex!7177)

(declare-datatypes ((List!28590 0))(
  ( (Nil!28492) (Cons!28492 (h!33893 C!14512) (t!208567 List!28590)) )
))
(declare-fun s!9460 () List!28590)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!458 (Regex!7177 Regex!7177 List!28590) Unit!41737)

(assert (=> b!2439691 (= lt!878227 (lemmaExistCutMatchRandMatchRSpecEquivalent!458 (regOne!14866 r!13927) (regTwo!14866 r!13927) s!9460))))

(assert (=> b!2439691 (= lt!878226 (Exists!1213 lambda!92358))))

(declare-datatypes ((tuple2!28110 0))(
  ( (tuple2!28111 (_1!16596 List!28590) (_2!16596 List!28590)) )
))
(declare-datatypes ((Option!5666 0))(
  ( (None!5665) (Some!5665 (v!31073 tuple2!28110)) )
))
(declare-fun isDefined!4492 (Option!5666) Bool)

(declare-fun findConcatSeparation!774 (Regex!7177 Regex!7177 List!28590 List!28590 List!28590) Option!5666)

(assert (=> b!2439691 (= lt!878226 (isDefined!4492 (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) Nil!28492 s!9460 s!9460)))))

(declare-fun lt!878229 () Unit!41737)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!712 (Regex!7177 Regex!7177 List!28590) Unit!41737)

(assert (=> b!2439691 (= lt!878229 (lemmaFindConcatSeparationEquivalentToExists!712 (regOne!14866 r!13927) (regTwo!14866 r!13927) s!9460))))

(declare-fun b!2439692 () Bool)

(declare-fun res!1035892 () Bool)

(declare-fun e!1550228 () Bool)

(assert (=> b!2439692 (=> (not res!1035892) (not e!1550228))))

(declare-datatypes ((List!28591 0))(
  ( (Nil!28493) (Cons!28493 (h!33894 Regex!7177) (t!208568 List!28591)) )
))
(declare-fun l!9164 () List!28591)

(declare-fun generalisedConcat!278 (List!28591) Regex!7177)

(assert (=> b!2439692 (= res!1035892 (= r!13927 (generalisedConcat!278 l!9164)))))

(declare-fun b!2439693 () Bool)

(declare-fun res!1035900 () Bool)

(declare-fun e!1550225 () Bool)

(assert (=> b!2439693 (=> res!1035900 e!1550225)))

(declare-fun lt!878228 () List!28591)

(assert (=> b!2439693 (= res!1035900 (not (= (generalisedConcat!278 lt!878228) EmptyExpr!7177)))))

(declare-fun b!2439694 () Bool)

(declare-fun e!1550231 () Bool)

(assert (=> b!2439694 (= e!1550231 false)))

(declare-fun lt!878222 () Regex!7177)

(declare-fun lt!878224 () tuple2!28110)

(declare-fun matchR!3292 (Regex!7177 List!28590) Bool)

(declare-fun ++!7080 (List!28590 List!28590) List!28590)

(assert (=> b!2439694 (matchR!3292 (Concat!11813 lt!878222 EmptyExpr!7177) (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))

(declare-fun lt!878230 () Unit!41737)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!82 (Regex!7177 Regex!7177 List!28590 List!28590 List!28590) Unit!41737)

(assert (=> b!2439694 (= lt!878230 (lemmaFindSeparationIsDefinedThenConcatMatches!82 lt!878222 EmptyExpr!7177 (_1!16596 lt!878224) (_2!16596 lt!878224) s!9460))))

(declare-fun lt!878223 () Option!5666)

(declare-fun get!8795 (Option!5666) tuple2!28110)

(assert (=> b!2439694 (= lt!878224 (get!8795 lt!878223))))

(declare-fun b!2439695 () Bool)

(assert (=> b!2439695 (= e!1550224 e!1550225)))

(declare-fun res!1035898 () Bool)

(assert (=> b!2439695 (=> res!1035898 e!1550225)))

(declare-fun isEmpty!16531 (List!28591) Bool)

(assert (=> b!2439695 (= res!1035898 (not (isEmpty!16531 lt!878228)))))

(declare-fun tail!3816 (List!28591) List!28591)

(assert (=> b!2439695 (= lt!878228 (tail!3816 l!9164))))

(declare-fun b!2439697 () Bool)

(declare-fun e!1550227 () Bool)

(assert (=> b!2439697 (= e!1550225 e!1550227)))

(declare-fun res!1035894 () Bool)

(assert (=> b!2439697 (=> res!1035894 e!1550227)))

(assert (=> b!2439697 (= res!1035894 (matchR!3292 lt!878222 s!9460))))

(declare-fun head!5543 (List!28591) Regex!7177)

(assert (=> b!2439697 (= lt!878222 (head!5543 l!9164))))

(declare-fun b!2439698 () Bool)

(declare-fun tp_is_empty!11767 () Bool)

(assert (=> b!2439698 (= e!1550229 tp_is_empty!11767)))

(declare-fun b!2439699 () Bool)

(declare-fun res!1035893 () Bool)

(assert (=> b!2439699 (=> res!1035893 e!1550224)))

(assert (=> b!2439699 (= res!1035893 (isEmpty!16531 l!9164))))

(declare-fun b!2439700 () Bool)

(declare-fun tp!774628 () Bool)

(assert (=> b!2439700 (= e!1550229 tp!774628)))

(declare-fun b!2439701 () Bool)

(assert (=> b!2439701 (= e!1550228 (not e!1550232))))

(declare-fun res!1035896 () Bool)

(assert (=> b!2439701 (=> res!1035896 e!1550232)))

(get-info :version)

(assert (=> b!2439701 (= res!1035896 (not ((_ is Concat!11813) r!13927)))))

(declare-fun lt!878231 () Bool)

(assert (=> b!2439701 (= lt!878231 lt!878225)))

(declare-fun matchRSpec!1024 (Regex!7177 List!28590) Bool)

(assert (=> b!2439701 (= lt!878225 (matchRSpec!1024 r!13927 s!9460))))

(assert (=> b!2439701 (= lt!878231 (matchR!3292 r!13927 s!9460))))

(declare-fun lt!878232 () Unit!41737)

(declare-fun mainMatchTheorem!1024 (Regex!7177 List!28590) Unit!41737)

(assert (=> b!2439701 (= lt!878232 (mainMatchTheorem!1024 r!13927 s!9460))))

(declare-fun b!2439696 () Bool)

(assert (=> b!2439696 (= e!1550227 e!1550231)))

(declare-fun res!1035895 () Bool)

(assert (=> b!2439696 (=> res!1035895 e!1550231)))

(assert (=> b!2439696 (= res!1035895 (not (isDefined!4492 lt!878223)))))

(assert (=> b!2439696 (= lt!878223 (findConcatSeparation!774 lt!878222 EmptyExpr!7177 Nil!28492 s!9460 s!9460))))

(declare-fun res!1035897 () Bool)

(assert (=> start!238766 (=> (not res!1035897) (not e!1550228))))

(declare-fun lambda!92357 () Int)

(declare-fun forall!5811 (List!28591 Int) Bool)

(assert (=> start!238766 (= res!1035897 (forall!5811 l!9164 lambda!92357))))

(assert (=> start!238766 e!1550228))

(declare-fun e!1550230 () Bool)

(assert (=> start!238766 e!1550230))

(assert (=> start!238766 e!1550229))

(declare-fun e!1550226 () Bool)

(assert (=> start!238766 e!1550226))

(declare-fun b!2439702 () Bool)

(declare-fun tp!774631 () Bool)

(assert (=> b!2439702 (= e!1550226 (and tp_is_empty!11767 tp!774631))))

(declare-fun b!2439703 () Bool)

(declare-fun tp!774626 () Bool)

(declare-fun tp!774627 () Bool)

(assert (=> b!2439703 (= e!1550229 (and tp!774626 tp!774627))))

(declare-fun b!2439704 () Bool)

(declare-fun tp!774629 () Bool)

(declare-fun tp!774624 () Bool)

(assert (=> b!2439704 (= e!1550230 (and tp!774629 tp!774624))))

(assert (= (and start!238766 res!1035897) b!2439692))

(assert (= (and b!2439692 res!1035892) b!2439701))

(assert (= (and b!2439701 (not res!1035896)) b!2439691))

(assert (= (and b!2439691 (not res!1035899)) b!2439699))

(assert (= (and b!2439699 (not res!1035893)) b!2439695))

(assert (= (and b!2439695 (not res!1035898)) b!2439693))

(assert (= (and b!2439693 (not res!1035900)) b!2439697))

(assert (= (and b!2439697 (not res!1035894)) b!2439696))

(assert (= (and b!2439696 (not res!1035895)) b!2439694))

(assert (= (and start!238766 ((_ is Cons!28493) l!9164)) b!2439704))

(assert (= (and start!238766 ((_ is ElementMatch!7177) r!13927)) b!2439698))

(assert (= (and start!238766 ((_ is Concat!11813) r!13927)) b!2439703))

(assert (= (and start!238766 ((_ is Star!7177) r!13927)) b!2439700))

(assert (= (and start!238766 ((_ is Union!7177) r!13927)) b!2439690))

(assert (= (and start!238766 ((_ is Cons!28492) s!9460)) b!2439702))

(declare-fun m!2818059 () Bool)

(assert (=> b!2439701 m!2818059))

(declare-fun m!2818061 () Bool)

(assert (=> b!2439701 m!2818061))

(declare-fun m!2818063 () Bool)

(assert (=> b!2439701 m!2818063))

(declare-fun m!2818065 () Bool)

(assert (=> b!2439696 m!2818065))

(declare-fun m!2818067 () Bool)

(assert (=> b!2439696 m!2818067))

(declare-fun m!2818069 () Bool)

(assert (=> b!2439695 m!2818069))

(declare-fun m!2818071 () Bool)

(assert (=> b!2439695 m!2818071))

(declare-fun m!2818073 () Bool)

(assert (=> b!2439697 m!2818073))

(declare-fun m!2818075 () Bool)

(assert (=> b!2439697 m!2818075))

(declare-fun m!2818077 () Bool)

(assert (=> b!2439691 m!2818077))

(declare-fun m!2818079 () Bool)

(assert (=> b!2439691 m!2818079))

(declare-fun m!2818081 () Bool)

(assert (=> b!2439691 m!2818081))

(assert (=> b!2439691 m!2818077))

(declare-fun m!2818083 () Bool)

(assert (=> b!2439691 m!2818083))

(declare-fun m!2818085 () Bool)

(assert (=> b!2439691 m!2818085))

(declare-fun m!2818087 () Bool)

(assert (=> b!2439691 m!2818087))

(assert (=> b!2439691 m!2818083))

(declare-fun m!2818089 () Bool)

(assert (=> b!2439699 m!2818089))

(declare-fun m!2818091 () Bool)

(assert (=> b!2439694 m!2818091))

(assert (=> b!2439694 m!2818091))

(declare-fun m!2818093 () Bool)

(assert (=> b!2439694 m!2818093))

(declare-fun m!2818095 () Bool)

(assert (=> b!2439694 m!2818095))

(declare-fun m!2818097 () Bool)

(assert (=> b!2439694 m!2818097))

(declare-fun m!2818099 () Bool)

(assert (=> b!2439693 m!2818099))

(declare-fun m!2818101 () Bool)

(assert (=> b!2439692 m!2818101))

(declare-fun m!2818103 () Bool)

(assert (=> start!238766 m!2818103))

(check-sat (not b!2439703) (not b!2439704) (not b!2439697) (not b!2439696) (not b!2439692) (not b!2439695) tp_is_empty!11767 (not start!238766) (not b!2439699) (not b!2439693) (not b!2439700) (not b!2439690) (not b!2439702) (not b!2439691) (not b!2439701) (not b!2439694))
(check-sat)
(get-model)

(declare-fun bs!464778 () Bool)

(declare-fun d!704451 () Bool)

(assert (= bs!464778 (and d!704451 start!238766)))

(declare-fun lambda!92365 () Int)

(assert (=> bs!464778 (= lambda!92365 lambda!92357)))

(declare-fun b!2439781 () Bool)

(declare-fun e!1550275 () Regex!7177)

(assert (=> b!2439781 (= e!1550275 EmptyExpr!7177)))

(declare-fun b!2439782 () Bool)

(declare-fun e!1550274 () Regex!7177)

(assert (=> b!2439782 (= e!1550274 e!1550275)))

(declare-fun c!389237 () Bool)

(assert (=> b!2439782 (= c!389237 ((_ is Cons!28493) l!9164))))

(declare-fun b!2439783 () Bool)

(declare-fun e!1550278 () Bool)

(assert (=> b!2439783 (= e!1550278 (isEmpty!16531 (t!208568 l!9164)))))

(declare-fun b!2439784 () Bool)

(declare-fun e!1550276 () Bool)

(declare-fun lt!878241 () Regex!7177)

(assert (=> b!2439784 (= e!1550276 (= lt!878241 (head!5543 l!9164)))))

(declare-fun b!2439785 () Bool)

(declare-fun e!1550279 () Bool)

(assert (=> b!2439785 (= e!1550279 e!1550276)))

(declare-fun c!389239 () Bool)

(assert (=> b!2439785 (= c!389239 (isEmpty!16531 (tail!3816 l!9164)))))

(declare-fun b!2439786 () Bool)

(assert (=> b!2439786 (= e!1550274 (h!33894 l!9164))))

(declare-fun b!2439787 () Bool)

(declare-fun isConcat!215 (Regex!7177) Bool)

(assert (=> b!2439787 (= e!1550276 (isConcat!215 lt!878241))))

(declare-fun b!2439788 () Bool)

(assert (=> b!2439788 (= e!1550275 (Concat!11813 (h!33894 l!9164) (generalisedConcat!278 (t!208568 l!9164))))))

(declare-fun e!1550277 () Bool)

(assert (=> d!704451 e!1550277))

(declare-fun res!1035939 () Bool)

(assert (=> d!704451 (=> (not res!1035939) (not e!1550277))))

(declare-fun validRegex!2889 (Regex!7177) Bool)

(assert (=> d!704451 (= res!1035939 (validRegex!2889 lt!878241))))

(assert (=> d!704451 (= lt!878241 e!1550274)))

(declare-fun c!389238 () Bool)

(assert (=> d!704451 (= c!389238 e!1550278)))

(declare-fun res!1035940 () Bool)

(assert (=> d!704451 (=> (not res!1035940) (not e!1550278))))

(assert (=> d!704451 (= res!1035940 ((_ is Cons!28493) l!9164))))

(assert (=> d!704451 (forall!5811 l!9164 lambda!92365)))

(assert (=> d!704451 (= (generalisedConcat!278 l!9164) lt!878241)))

(declare-fun b!2439789 () Bool)

(declare-fun isEmptyExpr!215 (Regex!7177) Bool)

(assert (=> b!2439789 (= e!1550279 (isEmptyExpr!215 lt!878241))))

(declare-fun b!2439790 () Bool)

(assert (=> b!2439790 (= e!1550277 e!1550279)))

(declare-fun c!389240 () Bool)

(assert (=> b!2439790 (= c!389240 (isEmpty!16531 l!9164))))

(assert (= (and d!704451 res!1035940) b!2439783))

(assert (= (and d!704451 c!389238) b!2439786))

(assert (= (and d!704451 (not c!389238)) b!2439782))

(assert (= (and b!2439782 c!389237) b!2439788))

(assert (= (and b!2439782 (not c!389237)) b!2439781))

(assert (= (and d!704451 res!1035939) b!2439790))

(assert (= (and b!2439790 c!389240) b!2439789))

(assert (= (and b!2439790 (not c!389240)) b!2439785))

(assert (= (and b!2439785 c!389239) b!2439784))

(assert (= (and b!2439785 (not c!389239)) b!2439787))

(declare-fun m!2818133 () Bool)

(assert (=> b!2439788 m!2818133))

(assert (=> b!2439785 m!2818071))

(assert (=> b!2439785 m!2818071))

(declare-fun m!2818135 () Bool)

(assert (=> b!2439785 m!2818135))

(declare-fun m!2818137 () Bool)

(assert (=> d!704451 m!2818137))

(declare-fun m!2818139 () Bool)

(assert (=> d!704451 m!2818139))

(assert (=> b!2439790 m!2818089))

(declare-fun m!2818141 () Bool)

(assert (=> b!2439787 m!2818141))

(declare-fun m!2818143 () Bool)

(assert (=> b!2439783 m!2818143))

(assert (=> b!2439784 m!2818075))

(declare-fun m!2818145 () Bool)

(assert (=> b!2439789 m!2818145))

(assert (=> b!2439692 d!704451))

(declare-fun b!2439863 () Bool)

(declare-fun e!1550321 () Bool)

(declare-fun lt!878259 () Bool)

(declare-fun call!149396 () Bool)

(assert (=> b!2439863 (= e!1550321 (= lt!878259 call!149396))))

(declare-fun d!704463 () Bool)

(assert (=> d!704463 e!1550321))

(declare-fun c!389257 () Bool)

(assert (=> d!704463 (= c!389257 ((_ is EmptyExpr!7177) lt!878222))))

(declare-fun e!1550319 () Bool)

(assert (=> d!704463 (= lt!878259 e!1550319)))

(declare-fun c!389255 () Bool)

(declare-fun isEmpty!16534 (List!28590) Bool)

(assert (=> d!704463 (= c!389255 (isEmpty!16534 s!9460))))

(assert (=> d!704463 (validRegex!2889 lt!878222)))

(assert (=> d!704463 (= (matchR!3292 lt!878222 s!9460) lt!878259)))

(declare-fun b!2439864 () Bool)

(declare-fun e!1550323 () Bool)

(assert (=> b!2439864 (= e!1550321 e!1550323)))

(declare-fun c!389256 () Bool)

(assert (=> b!2439864 (= c!389256 ((_ is EmptyLang!7177) lt!878222))))

(declare-fun b!2439865 () Bool)

(declare-fun res!1035987 () Bool)

(declare-fun e!1550318 () Bool)

(assert (=> b!2439865 (=> res!1035987 e!1550318)))

(declare-fun e!1550322 () Bool)

(assert (=> b!2439865 (= res!1035987 e!1550322)))

(declare-fun res!1035990 () Bool)

(assert (=> b!2439865 (=> (not res!1035990) (not e!1550322))))

(assert (=> b!2439865 (= res!1035990 lt!878259)))

(declare-fun b!2439866 () Bool)

(assert (=> b!2439866 (= e!1550323 (not lt!878259))))

(declare-fun b!2439867 () Bool)

(declare-fun e!1550324 () Bool)

(assert (=> b!2439867 (= e!1550318 e!1550324)))

(declare-fun res!1035992 () Bool)

(assert (=> b!2439867 (=> (not res!1035992) (not e!1550324))))

(assert (=> b!2439867 (= res!1035992 (not lt!878259))))

(declare-fun b!2439868 () Bool)

(declare-fun res!1035989 () Bool)

(assert (=> b!2439868 (=> (not res!1035989) (not e!1550322))))

(declare-fun tail!3818 (List!28590) List!28590)

(assert (=> b!2439868 (= res!1035989 (isEmpty!16534 (tail!3818 s!9460)))))

(declare-fun b!2439869 () Bool)

(declare-fun e!1550320 () Bool)

(assert (=> b!2439869 (= e!1550324 e!1550320)))

(declare-fun res!1035986 () Bool)

(assert (=> b!2439869 (=> res!1035986 e!1550320)))

(assert (=> b!2439869 (= res!1035986 call!149396)))

(declare-fun b!2439870 () Bool)

(declare-fun nullable!2198 (Regex!7177) Bool)

(assert (=> b!2439870 (= e!1550319 (nullable!2198 lt!878222))))

(declare-fun b!2439871 () Bool)

(declare-fun head!5545 (List!28590) C!14512)

(assert (=> b!2439871 (= e!1550322 (= (head!5545 s!9460) (c!389219 lt!878222)))))

(declare-fun b!2439872 () Bool)

(declare-fun res!1035991 () Bool)

(assert (=> b!2439872 (=> (not res!1035991) (not e!1550322))))

(assert (=> b!2439872 (= res!1035991 (not call!149396))))

(declare-fun bm!149391 () Bool)

(assert (=> bm!149391 (= call!149396 (isEmpty!16534 s!9460))))

(declare-fun b!2439873 () Bool)

(declare-fun res!1035985 () Bool)

(assert (=> b!2439873 (=> res!1035985 e!1550320)))

(assert (=> b!2439873 (= res!1035985 (not (isEmpty!16534 (tail!3818 s!9460))))))

(declare-fun b!2439874 () Bool)

(declare-fun derivativeStep!1852 (Regex!7177 C!14512) Regex!7177)

(assert (=> b!2439874 (= e!1550319 (matchR!3292 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (tail!3818 s!9460)))))

(declare-fun b!2439875 () Bool)

(declare-fun res!1035988 () Bool)

(assert (=> b!2439875 (=> res!1035988 e!1550318)))

(assert (=> b!2439875 (= res!1035988 (not ((_ is ElementMatch!7177) lt!878222)))))

(assert (=> b!2439875 (= e!1550323 e!1550318)))

(declare-fun b!2439876 () Bool)

(assert (=> b!2439876 (= e!1550320 (not (= (head!5545 s!9460) (c!389219 lt!878222))))))

(assert (= (and d!704463 c!389255) b!2439870))

(assert (= (and d!704463 (not c!389255)) b!2439874))

(assert (= (and d!704463 c!389257) b!2439863))

(assert (= (and d!704463 (not c!389257)) b!2439864))

(assert (= (and b!2439864 c!389256) b!2439866))

(assert (= (and b!2439864 (not c!389256)) b!2439875))

(assert (= (and b!2439875 (not res!1035988)) b!2439865))

(assert (= (and b!2439865 res!1035990) b!2439872))

(assert (= (and b!2439872 res!1035991) b!2439868))

(assert (= (and b!2439868 res!1035989) b!2439871))

(assert (= (and b!2439865 (not res!1035987)) b!2439867))

(assert (= (and b!2439867 res!1035992) b!2439869))

(assert (= (and b!2439869 (not res!1035986)) b!2439873))

(assert (= (and b!2439873 (not res!1035985)) b!2439876))

(assert (= (or b!2439863 b!2439872 b!2439869) bm!149391))

(declare-fun m!2818197 () Bool)

(assert (=> b!2439873 m!2818197))

(assert (=> b!2439873 m!2818197))

(declare-fun m!2818199 () Bool)

(assert (=> b!2439873 m!2818199))

(declare-fun m!2818201 () Bool)

(assert (=> b!2439876 m!2818201))

(assert (=> b!2439868 m!2818197))

(assert (=> b!2439868 m!2818197))

(assert (=> b!2439868 m!2818199))

(declare-fun m!2818203 () Bool)

(assert (=> d!704463 m!2818203))

(declare-fun m!2818205 () Bool)

(assert (=> d!704463 m!2818205))

(assert (=> bm!149391 m!2818203))

(declare-fun m!2818207 () Bool)

(assert (=> b!2439870 m!2818207))

(assert (=> b!2439871 m!2818201))

(assert (=> b!2439874 m!2818201))

(assert (=> b!2439874 m!2818201))

(declare-fun m!2818209 () Bool)

(assert (=> b!2439874 m!2818209))

(assert (=> b!2439874 m!2818197))

(assert (=> b!2439874 m!2818209))

(assert (=> b!2439874 m!2818197))

(declare-fun m!2818211 () Bool)

(assert (=> b!2439874 m!2818211))

(assert (=> b!2439697 d!704463))

(declare-fun d!704479 () Bool)

(assert (=> d!704479 (= (head!5543 l!9164) (h!33894 l!9164))))

(assert (=> b!2439697 d!704479))

(declare-fun d!704481 () Bool)

(assert (=> d!704481 (= (isEmpty!16531 l!9164) ((_ is Nil!28493) l!9164))))

(assert (=> b!2439699 d!704481))

(declare-fun bs!464785 () Bool)

(declare-fun d!704483 () Bool)

(assert (= bs!464785 (and d!704483 start!238766)))

(declare-fun lambda!92374 () Int)

(assert (=> bs!464785 (= lambda!92374 lambda!92357)))

(declare-fun bs!464786 () Bool)

(assert (= bs!464786 (and d!704483 d!704451)))

(assert (=> bs!464786 (= lambda!92374 lambda!92365)))

(declare-fun b!2439905 () Bool)

(declare-fun e!1550342 () Regex!7177)

(assert (=> b!2439905 (= e!1550342 EmptyExpr!7177)))

(declare-fun b!2439906 () Bool)

(declare-fun e!1550341 () Regex!7177)

(assert (=> b!2439906 (= e!1550341 e!1550342)))

(declare-fun c!389266 () Bool)

(assert (=> b!2439906 (= c!389266 ((_ is Cons!28493) lt!878228))))

(declare-fun b!2439907 () Bool)

(declare-fun e!1550345 () Bool)

(assert (=> b!2439907 (= e!1550345 (isEmpty!16531 (t!208568 lt!878228)))))

(declare-fun b!2439908 () Bool)

(declare-fun e!1550343 () Bool)

(declare-fun lt!878260 () Regex!7177)

(assert (=> b!2439908 (= e!1550343 (= lt!878260 (head!5543 lt!878228)))))

(declare-fun b!2439909 () Bool)

(declare-fun e!1550346 () Bool)

(assert (=> b!2439909 (= e!1550346 e!1550343)))

(declare-fun c!389268 () Bool)

(assert (=> b!2439909 (= c!389268 (isEmpty!16531 (tail!3816 lt!878228)))))

(declare-fun b!2439910 () Bool)

(assert (=> b!2439910 (= e!1550341 (h!33894 lt!878228))))

(declare-fun b!2439911 () Bool)

(assert (=> b!2439911 (= e!1550343 (isConcat!215 lt!878260))))

(declare-fun b!2439912 () Bool)

(assert (=> b!2439912 (= e!1550342 (Concat!11813 (h!33894 lt!878228) (generalisedConcat!278 (t!208568 lt!878228))))))

(declare-fun e!1550344 () Bool)

(assert (=> d!704483 e!1550344))

(declare-fun res!1036005 () Bool)

(assert (=> d!704483 (=> (not res!1036005) (not e!1550344))))

(assert (=> d!704483 (= res!1036005 (validRegex!2889 lt!878260))))

(assert (=> d!704483 (= lt!878260 e!1550341)))

(declare-fun c!389267 () Bool)

(assert (=> d!704483 (= c!389267 e!1550345)))

(declare-fun res!1036006 () Bool)

(assert (=> d!704483 (=> (not res!1036006) (not e!1550345))))

(assert (=> d!704483 (= res!1036006 ((_ is Cons!28493) lt!878228))))

(assert (=> d!704483 (forall!5811 lt!878228 lambda!92374)))

(assert (=> d!704483 (= (generalisedConcat!278 lt!878228) lt!878260)))

(declare-fun b!2439913 () Bool)

(assert (=> b!2439913 (= e!1550346 (isEmptyExpr!215 lt!878260))))

(declare-fun b!2439914 () Bool)

(assert (=> b!2439914 (= e!1550344 e!1550346)))

(declare-fun c!389269 () Bool)

(assert (=> b!2439914 (= c!389269 (isEmpty!16531 lt!878228))))

(assert (= (and d!704483 res!1036006) b!2439907))

(assert (= (and d!704483 c!389267) b!2439910))

(assert (= (and d!704483 (not c!389267)) b!2439906))

(assert (= (and b!2439906 c!389266) b!2439912))

(assert (= (and b!2439906 (not c!389266)) b!2439905))

(assert (= (and d!704483 res!1036005) b!2439914))

(assert (= (and b!2439914 c!389269) b!2439913))

(assert (= (and b!2439914 (not c!389269)) b!2439909))

(assert (= (and b!2439909 c!389268) b!2439908))

(assert (= (and b!2439909 (not c!389268)) b!2439911))

(declare-fun m!2818213 () Bool)

(assert (=> b!2439912 m!2818213))

(declare-fun m!2818215 () Bool)

(assert (=> b!2439909 m!2818215))

(assert (=> b!2439909 m!2818215))

(declare-fun m!2818217 () Bool)

(assert (=> b!2439909 m!2818217))

(declare-fun m!2818219 () Bool)

(assert (=> d!704483 m!2818219))

(declare-fun m!2818221 () Bool)

(assert (=> d!704483 m!2818221))

(assert (=> b!2439914 m!2818069))

(declare-fun m!2818223 () Bool)

(assert (=> b!2439911 m!2818223))

(declare-fun m!2818225 () Bool)

(assert (=> b!2439907 m!2818225))

(declare-fun m!2818227 () Bool)

(assert (=> b!2439908 m!2818227))

(declare-fun m!2818229 () Bool)

(assert (=> b!2439913 m!2818229))

(assert (=> b!2439693 d!704483))

(declare-fun d!704485 () Bool)

(assert (=> d!704485 (= (isEmpty!16531 lt!878228) ((_ is Nil!28493) lt!878228))))

(assert (=> b!2439695 d!704485))

(declare-fun d!704487 () Bool)

(assert (=> d!704487 (= (tail!3816 l!9164) (t!208568 l!9164))))

(assert (=> b!2439695 d!704487))

(declare-fun b!2439919 () Bool)

(declare-fun e!1550352 () Bool)

(declare-fun lt!878261 () Bool)

(declare-fun call!149401 () Bool)

(assert (=> b!2439919 (= e!1550352 (= lt!878261 call!149401))))

(declare-fun d!704489 () Bool)

(assert (=> d!704489 e!1550352))

(declare-fun c!389272 () Bool)

(assert (=> d!704489 (= c!389272 ((_ is EmptyExpr!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun e!1550350 () Bool)

(assert (=> d!704489 (= lt!878261 e!1550350)))

(declare-fun c!389270 () Bool)

(assert (=> d!704489 (= c!389270 (isEmpty!16534 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))

(assert (=> d!704489 (validRegex!2889 (Concat!11813 lt!878222 EmptyExpr!7177))))

(assert (=> d!704489 (= (matchR!3292 (Concat!11813 lt!878222 EmptyExpr!7177) (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))) lt!878261)))

(declare-fun b!2439920 () Bool)

(declare-fun e!1550354 () Bool)

(assert (=> b!2439920 (= e!1550352 e!1550354)))

(declare-fun c!389271 () Bool)

(assert (=> b!2439920 (= c!389271 ((_ is EmptyLang!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun b!2439921 () Bool)

(declare-fun res!1036013 () Bool)

(declare-fun e!1550349 () Bool)

(assert (=> b!2439921 (=> res!1036013 e!1550349)))

(declare-fun e!1550353 () Bool)

(assert (=> b!2439921 (= res!1036013 e!1550353)))

(declare-fun res!1036016 () Bool)

(assert (=> b!2439921 (=> (not res!1036016) (not e!1550353))))

(assert (=> b!2439921 (= res!1036016 lt!878261)))

(declare-fun b!2439922 () Bool)

(assert (=> b!2439922 (= e!1550354 (not lt!878261))))

(declare-fun b!2439923 () Bool)

(declare-fun e!1550355 () Bool)

(assert (=> b!2439923 (= e!1550349 e!1550355)))

(declare-fun res!1036018 () Bool)

(assert (=> b!2439923 (=> (not res!1036018) (not e!1550355))))

(assert (=> b!2439923 (= res!1036018 (not lt!878261))))

(declare-fun b!2439924 () Bool)

(declare-fun res!1036015 () Bool)

(assert (=> b!2439924 (=> (not res!1036015) (not e!1550353))))

(assert (=> b!2439924 (= res!1036015 (isEmpty!16534 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(declare-fun b!2439925 () Bool)

(declare-fun e!1550351 () Bool)

(assert (=> b!2439925 (= e!1550355 e!1550351)))

(declare-fun res!1036012 () Bool)

(assert (=> b!2439925 (=> res!1036012 e!1550351)))

(assert (=> b!2439925 (= res!1036012 call!149401)))

(declare-fun b!2439926 () Bool)

(assert (=> b!2439926 (= e!1550350 (nullable!2198 (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun b!2439927 () Bool)

(assert (=> b!2439927 (= e!1550353 (= (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))) (c!389219 (Concat!11813 lt!878222 EmptyExpr!7177))))))

(declare-fun b!2439928 () Bool)

(declare-fun res!1036017 () Bool)

(assert (=> b!2439928 (=> (not res!1036017) (not e!1550353))))

(assert (=> b!2439928 (= res!1036017 (not call!149401))))

(declare-fun bm!149396 () Bool)

(assert (=> bm!149396 (= call!149401 (isEmpty!16534 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))

(declare-fun b!2439929 () Bool)

(declare-fun res!1036011 () Bool)

(assert (=> b!2439929 (=> res!1036011 e!1550351)))

(assert (=> b!2439929 (= res!1036011 (not (isEmpty!16534 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2439930 () Bool)

(assert (=> b!2439930 (= e!1550350 (matchR!3292 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(declare-fun b!2439931 () Bool)

(declare-fun res!1036014 () Bool)

(assert (=> b!2439931 (=> res!1036014 e!1550349)))

(assert (=> b!2439931 (= res!1036014 (not ((_ is ElementMatch!7177) (Concat!11813 lt!878222 EmptyExpr!7177))))))

(assert (=> b!2439931 (= e!1550354 e!1550349)))

(declare-fun b!2439932 () Bool)

(assert (=> b!2439932 (= e!1550351 (not (= (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))) (c!389219 (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(assert (= (and d!704489 c!389270) b!2439926))

(assert (= (and d!704489 (not c!389270)) b!2439930))

(assert (= (and d!704489 c!389272) b!2439919))

(assert (= (and d!704489 (not c!389272)) b!2439920))

(assert (= (and b!2439920 c!389271) b!2439922))

(assert (= (and b!2439920 (not c!389271)) b!2439931))

(assert (= (and b!2439931 (not res!1036014)) b!2439921))

(assert (= (and b!2439921 res!1036016) b!2439928))

(assert (= (and b!2439928 res!1036017) b!2439924))

(assert (= (and b!2439924 res!1036015) b!2439927))

(assert (= (and b!2439921 (not res!1036013)) b!2439923))

(assert (= (and b!2439923 res!1036018) b!2439925))

(assert (= (and b!2439925 (not res!1036012)) b!2439929))

(assert (= (and b!2439929 (not res!1036011)) b!2439932))

(assert (= (or b!2439919 b!2439928 b!2439925) bm!149396))

(assert (=> b!2439929 m!2818091))

(declare-fun m!2818231 () Bool)

(assert (=> b!2439929 m!2818231))

(assert (=> b!2439929 m!2818231))

(declare-fun m!2818233 () Bool)

(assert (=> b!2439929 m!2818233))

(assert (=> b!2439932 m!2818091))

(declare-fun m!2818235 () Bool)

(assert (=> b!2439932 m!2818235))

(assert (=> b!2439924 m!2818091))

(assert (=> b!2439924 m!2818231))

(assert (=> b!2439924 m!2818231))

(assert (=> b!2439924 m!2818233))

(assert (=> d!704489 m!2818091))

(declare-fun m!2818237 () Bool)

(assert (=> d!704489 m!2818237))

(declare-fun m!2818239 () Bool)

(assert (=> d!704489 m!2818239))

(assert (=> bm!149396 m!2818091))

(assert (=> bm!149396 m!2818237))

(declare-fun m!2818241 () Bool)

(assert (=> b!2439926 m!2818241))

(assert (=> b!2439927 m!2818091))

(assert (=> b!2439927 m!2818235))

(assert (=> b!2439930 m!2818091))

(assert (=> b!2439930 m!2818235))

(assert (=> b!2439930 m!2818235))

(declare-fun m!2818243 () Bool)

(assert (=> b!2439930 m!2818243))

(assert (=> b!2439930 m!2818091))

(assert (=> b!2439930 m!2818231))

(assert (=> b!2439930 m!2818243))

(assert (=> b!2439930 m!2818231))

(declare-fun m!2818245 () Bool)

(assert (=> b!2439930 m!2818245))

(assert (=> b!2439694 d!704489))

(declare-fun b!2439980 () Bool)

(declare-fun e!1550382 () List!28590)

(assert (=> b!2439980 (= e!1550382 (_2!16596 lt!878224))))

(declare-fun d!704491 () Bool)

(declare-fun e!1550381 () Bool)

(assert (=> d!704491 e!1550381))

(declare-fun res!1036042 () Bool)

(assert (=> d!704491 (=> (not res!1036042) (not e!1550381))))

(declare-fun lt!878269 () List!28590)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3924 (List!28590) (InoxSet C!14512))

(assert (=> d!704491 (= res!1036042 (= (content!3924 lt!878269) ((_ map or) (content!3924 (_1!16596 lt!878224)) (content!3924 (_2!16596 lt!878224)))))))

(assert (=> d!704491 (= lt!878269 e!1550382)))

(declare-fun c!389285 () Bool)

(assert (=> d!704491 (= c!389285 ((_ is Nil!28492) (_1!16596 lt!878224)))))

(assert (=> d!704491 (= (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)) lt!878269)))

(declare-fun b!2439983 () Bool)

(assert (=> b!2439983 (= e!1550381 (or (not (= (_2!16596 lt!878224) Nil!28492)) (= lt!878269 (_1!16596 lt!878224))))))

(declare-fun b!2439982 () Bool)

(declare-fun res!1036043 () Bool)

(assert (=> b!2439982 (=> (not res!1036043) (not e!1550381))))

(declare-fun size!22262 (List!28590) Int)

(assert (=> b!2439982 (= res!1036043 (= (size!22262 lt!878269) (+ (size!22262 (_1!16596 lt!878224)) (size!22262 (_2!16596 lt!878224)))))))

(declare-fun b!2439981 () Bool)

(assert (=> b!2439981 (= e!1550382 (Cons!28492 (h!33893 (_1!16596 lt!878224)) (++!7080 (t!208567 (_1!16596 lt!878224)) (_2!16596 lt!878224))))))

(assert (= (and d!704491 c!389285) b!2439980))

(assert (= (and d!704491 (not c!389285)) b!2439981))

(assert (= (and d!704491 res!1036042) b!2439982))

(assert (= (and b!2439982 res!1036043) b!2439983))

(declare-fun m!2818279 () Bool)

(assert (=> d!704491 m!2818279))

(declare-fun m!2818281 () Bool)

(assert (=> d!704491 m!2818281))

(declare-fun m!2818283 () Bool)

(assert (=> d!704491 m!2818283))

(declare-fun m!2818285 () Bool)

(assert (=> b!2439982 m!2818285))

(declare-fun m!2818287 () Bool)

(assert (=> b!2439982 m!2818287))

(declare-fun m!2818289 () Bool)

(assert (=> b!2439982 m!2818289))

(declare-fun m!2818291 () Bool)

(assert (=> b!2439981 m!2818291))

(assert (=> b!2439694 d!704491))

(declare-fun d!704501 () Bool)

(assert (=> d!704501 (matchR!3292 (Concat!11813 lt!878222 EmptyExpr!7177) (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))

(declare-fun lt!878278 () Unit!41737)

(declare-fun choose!14479 (Regex!7177 Regex!7177 List!28590 List!28590 List!28590) Unit!41737)

(assert (=> d!704501 (= lt!878278 (choose!14479 lt!878222 EmptyExpr!7177 (_1!16596 lt!878224) (_2!16596 lt!878224) s!9460))))

(assert (=> d!704501 (validRegex!2889 lt!878222)))

(assert (=> d!704501 (= (lemmaFindSeparationIsDefinedThenConcatMatches!82 lt!878222 EmptyExpr!7177 (_1!16596 lt!878224) (_2!16596 lt!878224) s!9460) lt!878278)))

(declare-fun bs!464796 () Bool)

(assert (= bs!464796 d!704501))

(assert (=> bs!464796 m!2818091))

(assert (=> bs!464796 m!2818091))

(assert (=> bs!464796 m!2818093))

(declare-fun m!2818309 () Bool)

(assert (=> bs!464796 m!2818309))

(assert (=> bs!464796 m!2818205))

(assert (=> b!2439694 d!704501))

(declare-fun d!704509 () Bool)

(assert (=> d!704509 (= (get!8795 lt!878223) (v!31073 lt!878223))))

(assert (=> b!2439694 d!704509))

(declare-fun d!704511 () Bool)

(declare-fun isEmpty!16535 (Option!5666) Bool)

(assert (=> d!704511 (= (isDefined!4492 (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) Nil!28492 s!9460 s!9460)) (not (isEmpty!16535 (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) Nil!28492 s!9460 s!9460))))))

(declare-fun bs!464797 () Bool)

(assert (= bs!464797 d!704511))

(assert (=> bs!464797 m!2818077))

(declare-fun m!2818311 () Bool)

(assert (=> bs!464797 m!2818311))

(assert (=> b!2439691 d!704511))

(declare-fun bs!464802 () Bool)

(declare-fun d!704513 () Bool)

(assert (= bs!464802 (and d!704513 b!2439691)))

(declare-fun lambda!92385 () Int)

(assert (=> bs!464802 (= lambda!92385 lambda!92358)))

(assert (=> bs!464802 (not (= lambda!92385 lambda!92359))))

(assert (=> d!704513 true))

(assert (=> d!704513 true))

(assert (=> d!704513 true))

(assert (=> d!704513 (= (isDefined!4492 (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) Nil!28492 s!9460 s!9460)) (Exists!1213 lambda!92385))))

(declare-fun lt!878285 () Unit!41737)

(declare-fun choose!14480 (Regex!7177 Regex!7177 List!28590) Unit!41737)

(assert (=> d!704513 (= lt!878285 (choose!14480 (regOne!14866 r!13927) (regTwo!14866 r!13927) s!9460))))

(assert (=> d!704513 (validRegex!2889 (regOne!14866 r!13927))))

(assert (=> d!704513 (= (lemmaFindConcatSeparationEquivalentToExists!712 (regOne!14866 r!13927) (regTwo!14866 r!13927) s!9460) lt!878285)))

(declare-fun bs!464803 () Bool)

(assert (= bs!464803 d!704513))

(declare-fun m!2818347 () Bool)

(assert (=> bs!464803 m!2818347))

(declare-fun m!2818349 () Bool)

(assert (=> bs!464803 m!2818349))

(declare-fun m!2818351 () Bool)

(assert (=> bs!464803 m!2818351))

(assert (=> bs!464803 m!2818077))

(assert (=> bs!464803 m!2818077))

(assert (=> bs!464803 m!2818079))

(assert (=> b!2439691 d!704513))

(declare-fun bs!464804 () Bool)

(declare-fun d!704523 () Bool)

(assert (= bs!464804 (and d!704523 b!2439691)))

(declare-fun lambda!92390 () Int)

(assert (=> bs!464804 (= lambda!92390 lambda!92358)))

(assert (=> bs!464804 (not (= lambda!92390 lambda!92359))))

(declare-fun bs!464805 () Bool)

(assert (= bs!464805 (and d!704523 d!704513)))

(assert (=> bs!464805 (= lambda!92390 lambda!92385)))

(assert (=> d!704523 true))

(assert (=> d!704523 true))

(assert (=> d!704523 true))

(declare-fun lambda!92391 () Int)

(assert (=> bs!464804 (not (= lambda!92391 lambda!92358))))

(assert (=> bs!464804 (= lambda!92391 lambda!92359)))

(assert (=> bs!464805 (not (= lambda!92391 lambda!92385))))

(declare-fun bs!464806 () Bool)

(assert (= bs!464806 d!704523))

(assert (=> bs!464806 (not (= lambda!92391 lambda!92390))))

(assert (=> d!704523 true))

(assert (=> d!704523 true))

(assert (=> d!704523 true))

(assert (=> d!704523 (= (Exists!1213 lambda!92390) (Exists!1213 lambda!92391))))

(declare-fun lt!878288 () Unit!41737)

(declare-fun choose!14481 (Regex!7177 Regex!7177 List!28590) Unit!41737)

(assert (=> d!704523 (= lt!878288 (choose!14481 (regOne!14866 r!13927) (regTwo!14866 r!13927) s!9460))))

(assert (=> d!704523 (validRegex!2889 (regOne!14866 r!13927))))

(assert (=> d!704523 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!458 (regOne!14866 r!13927) (regTwo!14866 r!13927) s!9460) lt!878288)))

(declare-fun m!2818353 () Bool)

(assert (=> bs!464806 m!2818353))

(declare-fun m!2818355 () Bool)

(assert (=> bs!464806 m!2818355))

(declare-fun m!2818357 () Bool)

(assert (=> bs!464806 m!2818357))

(assert (=> bs!464806 m!2818351))

(assert (=> b!2439691 d!704523))

(declare-fun d!704525 () Bool)

(declare-fun choose!14482 (Int) Bool)

(assert (=> d!704525 (= (Exists!1213 lambda!92359) (choose!14482 lambda!92359))))

(declare-fun bs!464807 () Bool)

(assert (= bs!464807 d!704525))

(declare-fun m!2818359 () Bool)

(assert (=> bs!464807 m!2818359))

(assert (=> b!2439691 d!704525))

(declare-fun d!704527 () Bool)

(assert (=> d!704527 (= (Exists!1213 lambda!92358) (choose!14482 lambda!92358))))

(declare-fun bs!464808 () Bool)

(assert (= bs!464808 d!704527))

(declare-fun m!2818361 () Bool)

(assert (=> bs!464808 m!2818361))

(assert (=> b!2439691 d!704527))

(declare-fun b!2440110 () Bool)

(declare-fun e!1550446 () Bool)

(declare-fun lt!878295 () Option!5666)

(assert (=> b!2440110 (= e!1550446 (= (++!7080 (_1!16596 (get!8795 lt!878295)) (_2!16596 (get!8795 lt!878295))) s!9460))))

(declare-fun b!2440111 () Bool)

(declare-fun e!1550445 () Bool)

(assert (=> b!2440111 (= e!1550445 (not (isDefined!4492 lt!878295)))))

(declare-fun d!704529 () Bool)

(assert (=> d!704529 e!1550445))

(declare-fun res!1036083 () Bool)

(assert (=> d!704529 (=> res!1036083 e!1550445)))

(assert (=> d!704529 (= res!1036083 e!1550446)))

(declare-fun res!1036084 () Bool)

(assert (=> d!704529 (=> (not res!1036084) (not e!1550446))))

(assert (=> d!704529 (= res!1036084 (isDefined!4492 lt!878295))))

(declare-fun e!1550443 () Option!5666)

(assert (=> d!704529 (= lt!878295 e!1550443)))

(declare-fun c!389309 () Bool)

(declare-fun e!1550444 () Bool)

(assert (=> d!704529 (= c!389309 e!1550444)))

(declare-fun res!1036080 () Bool)

(assert (=> d!704529 (=> (not res!1036080) (not e!1550444))))

(assert (=> d!704529 (= res!1036080 (matchR!3292 (regOne!14866 r!13927) Nil!28492))))

(assert (=> d!704529 (validRegex!2889 (regOne!14866 r!13927))))

(assert (=> d!704529 (= (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) Nil!28492 s!9460 s!9460) lt!878295)))

(declare-fun b!2440112 () Bool)

(declare-fun res!1036082 () Bool)

(assert (=> b!2440112 (=> (not res!1036082) (not e!1550446))))

(assert (=> b!2440112 (= res!1036082 (matchR!3292 (regTwo!14866 r!13927) (_2!16596 (get!8795 lt!878295))))))

(declare-fun b!2440113 () Bool)

(assert (=> b!2440113 (= e!1550444 (matchR!3292 (regTwo!14866 r!13927) s!9460))))

(declare-fun b!2440114 () Bool)

(declare-fun res!1036081 () Bool)

(assert (=> b!2440114 (=> (not res!1036081) (not e!1550446))))

(assert (=> b!2440114 (= res!1036081 (matchR!3292 (regOne!14866 r!13927) (_1!16596 (get!8795 lt!878295))))))

(declare-fun b!2440115 () Bool)

(declare-fun lt!878296 () Unit!41737)

(declare-fun lt!878297 () Unit!41737)

(assert (=> b!2440115 (= lt!878296 lt!878297)))

(assert (=> b!2440115 (= (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!699 (List!28590 C!14512 List!28590 List!28590) Unit!41737)

(assert (=> b!2440115 (= lt!878297 (lemmaMoveElementToOtherListKeepsConcatEq!699 Nil!28492 (h!33893 s!9460) (t!208567 s!9460) s!9460))))

(declare-fun e!1550447 () Option!5666)

(assert (=> b!2440115 (= e!1550447 (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460) s!9460))))

(declare-fun b!2440116 () Bool)

(assert (=> b!2440116 (= e!1550443 e!1550447)))

(declare-fun c!389310 () Bool)

(assert (=> b!2440116 (= c!389310 ((_ is Nil!28492) s!9460))))

(declare-fun b!2440117 () Bool)

(assert (=> b!2440117 (= e!1550447 None!5665)))

(declare-fun b!2440118 () Bool)

(assert (=> b!2440118 (= e!1550443 (Some!5665 (tuple2!28111 Nil!28492 s!9460)))))

(assert (= (and d!704529 res!1036080) b!2440113))

(assert (= (and d!704529 c!389309) b!2440118))

(assert (= (and d!704529 (not c!389309)) b!2440116))

(assert (= (and b!2440116 c!389310) b!2440117))

(assert (= (and b!2440116 (not c!389310)) b!2440115))

(assert (= (and d!704529 res!1036084) b!2440114))

(assert (= (and b!2440114 res!1036081) b!2440112))

(assert (= (and b!2440112 res!1036082) b!2440110))

(assert (= (and d!704529 (not res!1036083)) b!2440111))

(declare-fun m!2818363 () Bool)

(assert (=> b!2440111 m!2818363))

(declare-fun m!2818365 () Bool)

(assert (=> b!2440114 m!2818365))

(declare-fun m!2818367 () Bool)

(assert (=> b!2440114 m!2818367))

(assert (=> d!704529 m!2818363))

(declare-fun m!2818369 () Bool)

(assert (=> d!704529 m!2818369))

(assert (=> d!704529 m!2818351))

(assert (=> b!2440112 m!2818365))

(declare-fun m!2818371 () Bool)

(assert (=> b!2440112 m!2818371))

(declare-fun m!2818373 () Bool)

(assert (=> b!2440115 m!2818373))

(assert (=> b!2440115 m!2818373))

(declare-fun m!2818375 () Bool)

(assert (=> b!2440115 m!2818375))

(declare-fun m!2818377 () Bool)

(assert (=> b!2440115 m!2818377))

(assert (=> b!2440115 m!2818373))

(declare-fun m!2818379 () Bool)

(assert (=> b!2440115 m!2818379))

(assert (=> b!2440110 m!2818365))

(declare-fun m!2818381 () Bool)

(assert (=> b!2440110 m!2818381))

(declare-fun m!2818383 () Bool)

(assert (=> b!2440113 m!2818383))

(assert (=> b!2439691 d!704529))

(declare-fun d!704531 () Bool)

(declare-fun res!1036089 () Bool)

(declare-fun e!1550452 () Bool)

(assert (=> d!704531 (=> res!1036089 e!1550452)))

(assert (=> d!704531 (= res!1036089 ((_ is Nil!28493) l!9164))))

(assert (=> d!704531 (= (forall!5811 l!9164 lambda!92357) e!1550452)))

(declare-fun b!2440123 () Bool)

(declare-fun e!1550453 () Bool)

(assert (=> b!2440123 (= e!1550452 e!1550453)))

(declare-fun res!1036090 () Bool)

(assert (=> b!2440123 (=> (not res!1036090) (not e!1550453))))

(declare-fun dynLambda!12256 (Int Regex!7177) Bool)

(assert (=> b!2440123 (= res!1036090 (dynLambda!12256 lambda!92357 (h!33894 l!9164)))))

(declare-fun b!2440124 () Bool)

(assert (=> b!2440124 (= e!1550453 (forall!5811 (t!208568 l!9164) lambda!92357))))

(assert (= (and d!704531 (not res!1036089)) b!2440123))

(assert (= (and b!2440123 res!1036090) b!2440124))

(declare-fun b_lambda!74923 () Bool)

(assert (=> (not b_lambda!74923) (not b!2440123)))

(declare-fun m!2818385 () Bool)

(assert (=> b!2440123 m!2818385))

(declare-fun m!2818387 () Bool)

(assert (=> b!2440124 m!2818387))

(assert (=> start!238766 d!704531))

(declare-fun d!704533 () Bool)

(assert (=> d!704533 (= (isDefined!4492 lt!878223) (not (isEmpty!16535 lt!878223)))))

(declare-fun bs!464809 () Bool)

(assert (= bs!464809 d!704533))

(declare-fun m!2818389 () Bool)

(assert (=> bs!464809 m!2818389))

(assert (=> b!2439696 d!704533))

(declare-fun b!2440125 () Bool)

(declare-fun e!1550457 () Bool)

(declare-fun lt!878298 () Option!5666)

(assert (=> b!2440125 (= e!1550457 (= (++!7080 (_1!16596 (get!8795 lt!878298)) (_2!16596 (get!8795 lt!878298))) s!9460))))

(declare-fun b!2440126 () Bool)

(declare-fun e!1550456 () Bool)

(assert (=> b!2440126 (= e!1550456 (not (isDefined!4492 lt!878298)))))

(declare-fun d!704535 () Bool)

(assert (=> d!704535 e!1550456))

(declare-fun res!1036094 () Bool)

(assert (=> d!704535 (=> res!1036094 e!1550456)))

(assert (=> d!704535 (= res!1036094 e!1550457)))

(declare-fun res!1036095 () Bool)

(assert (=> d!704535 (=> (not res!1036095) (not e!1550457))))

(assert (=> d!704535 (= res!1036095 (isDefined!4492 lt!878298))))

(declare-fun e!1550454 () Option!5666)

(assert (=> d!704535 (= lt!878298 e!1550454)))

(declare-fun c!389311 () Bool)

(declare-fun e!1550455 () Bool)

(assert (=> d!704535 (= c!389311 e!1550455)))

(declare-fun res!1036091 () Bool)

(assert (=> d!704535 (=> (not res!1036091) (not e!1550455))))

(assert (=> d!704535 (= res!1036091 (matchR!3292 lt!878222 Nil!28492))))

(assert (=> d!704535 (validRegex!2889 lt!878222)))

(assert (=> d!704535 (= (findConcatSeparation!774 lt!878222 EmptyExpr!7177 Nil!28492 s!9460 s!9460) lt!878298)))

(declare-fun b!2440127 () Bool)

(declare-fun res!1036093 () Bool)

(assert (=> b!2440127 (=> (not res!1036093) (not e!1550457))))

(assert (=> b!2440127 (= res!1036093 (matchR!3292 EmptyExpr!7177 (_2!16596 (get!8795 lt!878298))))))

(declare-fun b!2440128 () Bool)

(assert (=> b!2440128 (= e!1550455 (matchR!3292 EmptyExpr!7177 s!9460))))

(declare-fun b!2440129 () Bool)

(declare-fun res!1036092 () Bool)

(assert (=> b!2440129 (=> (not res!1036092) (not e!1550457))))

(assert (=> b!2440129 (= res!1036092 (matchR!3292 lt!878222 (_1!16596 (get!8795 lt!878298))))))

(declare-fun b!2440130 () Bool)

(declare-fun lt!878299 () Unit!41737)

(declare-fun lt!878300 () Unit!41737)

(assert (=> b!2440130 (= lt!878299 lt!878300)))

(assert (=> b!2440130 (= (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460)) s!9460)))

(assert (=> b!2440130 (= lt!878300 (lemmaMoveElementToOtherListKeepsConcatEq!699 Nil!28492 (h!33893 s!9460) (t!208567 s!9460) s!9460))))

(declare-fun e!1550458 () Option!5666)

(assert (=> b!2440130 (= e!1550458 (findConcatSeparation!774 lt!878222 EmptyExpr!7177 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460) s!9460))))

(declare-fun b!2440131 () Bool)

(assert (=> b!2440131 (= e!1550454 e!1550458)))

(declare-fun c!389312 () Bool)

(assert (=> b!2440131 (= c!389312 ((_ is Nil!28492) s!9460))))

(declare-fun b!2440132 () Bool)

(assert (=> b!2440132 (= e!1550458 None!5665)))

(declare-fun b!2440133 () Bool)

(assert (=> b!2440133 (= e!1550454 (Some!5665 (tuple2!28111 Nil!28492 s!9460)))))

(assert (= (and d!704535 res!1036091) b!2440128))

(assert (= (and d!704535 c!389311) b!2440133))

(assert (= (and d!704535 (not c!389311)) b!2440131))

(assert (= (and b!2440131 c!389312) b!2440132))

(assert (= (and b!2440131 (not c!389312)) b!2440130))

(assert (= (and d!704535 res!1036095) b!2440129))

(assert (= (and b!2440129 res!1036092) b!2440127))

(assert (= (and b!2440127 res!1036093) b!2440125))

(assert (= (and d!704535 (not res!1036094)) b!2440126))

(declare-fun m!2818391 () Bool)

(assert (=> b!2440126 m!2818391))

(declare-fun m!2818393 () Bool)

(assert (=> b!2440129 m!2818393))

(declare-fun m!2818395 () Bool)

(assert (=> b!2440129 m!2818395))

(assert (=> d!704535 m!2818391))

(declare-fun m!2818397 () Bool)

(assert (=> d!704535 m!2818397))

(assert (=> d!704535 m!2818205))

(assert (=> b!2440127 m!2818393))

(declare-fun m!2818399 () Bool)

(assert (=> b!2440127 m!2818399))

(assert (=> b!2440130 m!2818373))

(assert (=> b!2440130 m!2818373))

(assert (=> b!2440130 m!2818375))

(assert (=> b!2440130 m!2818377))

(assert (=> b!2440130 m!2818373))

(declare-fun m!2818401 () Bool)

(assert (=> b!2440130 m!2818401))

(assert (=> b!2440125 m!2818393))

(declare-fun m!2818403 () Bool)

(assert (=> b!2440125 m!2818403))

(declare-fun m!2818405 () Bool)

(assert (=> b!2440128 m!2818405))

(assert (=> b!2439696 d!704535))

(declare-fun bs!464810 () Bool)

(declare-fun b!2440176 () Bool)

(assert (= bs!464810 (and b!2440176 d!704523)))

(declare-fun lambda!92396 () Int)

(assert (=> bs!464810 (not (= lambda!92396 lambda!92390))))

(assert (=> bs!464810 (not (= lambda!92396 lambda!92391))))

(declare-fun bs!464811 () Bool)

(assert (= bs!464811 (and b!2440176 b!2439691)))

(assert (=> bs!464811 (not (= lambda!92396 lambda!92358))))

(assert (=> bs!464811 (not (= lambda!92396 lambda!92359))))

(declare-fun bs!464812 () Bool)

(assert (= bs!464812 (and b!2440176 d!704513)))

(assert (=> bs!464812 (not (= lambda!92396 lambda!92385))))

(assert (=> b!2440176 true))

(assert (=> b!2440176 true))

(declare-fun bs!464813 () Bool)

(declare-fun b!2440171 () Bool)

(assert (= bs!464813 (and b!2440171 b!2440176)))

(declare-fun lambda!92397 () Int)

(assert (=> bs!464813 (not (= lambda!92397 lambda!92396))))

(declare-fun bs!464814 () Bool)

(assert (= bs!464814 (and b!2440171 d!704523)))

(assert (=> bs!464814 (not (= lambda!92397 lambda!92390))))

(assert (=> bs!464814 (= lambda!92397 lambda!92391)))

(declare-fun bs!464815 () Bool)

(assert (= bs!464815 (and b!2440171 b!2439691)))

(assert (=> bs!464815 (not (= lambda!92397 lambda!92358))))

(assert (=> bs!464815 (= lambda!92397 lambda!92359)))

(declare-fun bs!464816 () Bool)

(assert (= bs!464816 (and b!2440171 d!704513)))

(assert (=> bs!464816 (not (= lambda!92397 lambda!92385))))

(assert (=> b!2440171 true))

(assert (=> b!2440171 true))

(declare-fun bm!149405 () Bool)

(declare-fun call!149410 () Bool)

(assert (=> bm!149405 (= call!149410 (isEmpty!16534 s!9460))))

(declare-fun d!704537 () Bool)

(declare-fun c!389324 () Bool)

(assert (=> d!704537 (= c!389324 ((_ is EmptyExpr!7177) r!13927))))

(declare-fun e!1550482 () Bool)

(assert (=> d!704537 (= (matchRSpec!1024 r!13927 s!9460) e!1550482)))

(declare-fun b!2440166 () Bool)

(declare-fun res!1036112 () Bool)

(declare-fun e!1550480 () Bool)

(assert (=> b!2440166 (=> res!1036112 e!1550480)))

(assert (=> b!2440166 (= res!1036112 call!149410)))

(declare-fun e!1550477 () Bool)

(assert (=> b!2440166 (= e!1550477 e!1550480)))

(declare-fun b!2440167 () Bool)

(declare-fun e!1550478 () Bool)

(assert (=> b!2440167 (= e!1550478 (matchRSpec!1024 (regTwo!14867 r!13927) s!9460))))

(declare-fun b!2440168 () Bool)

(assert (=> b!2440168 (= e!1550482 call!149410)))

(declare-fun b!2440169 () Bool)

(declare-fun e!1550479 () Bool)

(assert (=> b!2440169 (= e!1550479 e!1550477)))

(declare-fun c!389322 () Bool)

(assert (=> b!2440169 (= c!389322 ((_ is Star!7177) r!13927))))

(declare-fun b!2440170 () Bool)

(declare-fun e!1550481 () Bool)

(assert (=> b!2440170 (= e!1550481 (= s!9460 (Cons!28492 (c!389219 r!13927) Nil!28492)))))

(declare-fun call!149411 () Bool)

(declare-fun bm!149406 () Bool)

(assert (=> bm!149406 (= call!149411 (Exists!1213 (ite c!389322 lambda!92396 lambda!92397)))))

(assert (=> b!2440171 (= e!1550477 call!149411)))

(declare-fun b!2440172 () Bool)

(assert (=> b!2440172 (= e!1550479 e!1550478)))

(declare-fun res!1036114 () Bool)

(assert (=> b!2440172 (= res!1036114 (matchRSpec!1024 (regOne!14867 r!13927) s!9460))))

(assert (=> b!2440172 (=> res!1036114 e!1550478)))

(declare-fun b!2440173 () Bool)

(declare-fun e!1550483 () Bool)

(assert (=> b!2440173 (= e!1550482 e!1550483)))

(declare-fun res!1036113 () Bool)

(assert (=> b!2440173 (= res!1036113 (not ((_ is EmptyLang!7177) r!13927)))))

(assert (=> b!2440173 (=> (not res!1036113) (not e!1550483))))

(declare-fun b!2440174 () Bool)

(declare-fun c!389323 () Bool)

(assert (=> b!2440174 (= c!389323 ((_ is Union!7177) r!13927))))

(assert (=> b!2440174 (= e!1550481 e!1550479)))

(declare-fun b!2440175 () Bool)

(declare-fun c!389321 () Bool)

(assert (=> b!2440175 (= c!389321 ((_ is ElementMatch!7177) r!13927))))

(assert (=> b!2440175 (= e!1550483 e!1550481)))

(assert (=> b!2440176 (= e!1550480 call!149411)))

(assert (= (and d!704537 c!389324) b!2440168))

(assert (= (and d!704537 (not c!389324)) b!2440173))

(assert (= (and b!2440173 res!1036113) b!2440175))

(assert (= (and b!2440175 c!389321) b!2440170))

(assert (= (and b!2440175 (not c!389321)) b!2440174))

(assert (= (and b!2440174 c!389323) b!2440172))

(assert (= (and b!2440174 (not c!389323)) b!2440169))

(assert (= (and b!2440172 (not res!1036114)) b!2440167))

(assert (= (and b!2440169 c!389322) b!2440166))

(assert (= (and b!2440169 (not c!389322)) b!2440171))

(assert (= (and b!2440166 (not res!1036112)) b!2440176))

(assert (= (or b!2440176 b!2440171) bm!149406))

(assert (= (or b!2440168 b!2440166) bm!149405))

(assert (=> bm!149405 m!2818203))

(declare-fun m!2818407 () Bool)

(assert (=> b!2440167 m!2818407))

(declare-fun m!2818409 () Bool)

(assert (=> bm!149406 m!2818409))

(declare-fun m!2818411 () Bool)

(assert (=> b!2440172 m!2818411))

(assert (=> b!2439701 d!704537))

(declare-fun b!2440177 () Bool)

(declare-fun e!1550487 () Bool)

(declare-fun lt!878301 () Bool)

(declare-fun call!149412 () Bool)

(assert (=> b!2440177 (= e!1550487 (= lt!878301 call!149412))))

(declare-fun d!704539 () Bool)

(assert (=> d!704539 e!1550487))

(declare-fun c!389327 () Bool)

(assert (=> d!704539 (= c!389327 ((_ is EmptyExpr!7177) r!13927))))

(declare-fun e!1550485 () Bool)

(assert (=> d!704539 (= lt!878301 e!1550485)))

(declare-fun c!389325 () Bool)

(assert (=> d!704539 (= c!389325 (isEmpty!16534 s!9460))))

(assert (=> d!704539 (validRegex!2889 r!13927)))

(assert (=> d!704539 (= (matchR!3292 r!13927 s!9460) lt!878301)))

(declare-fun b!2440178 () Bool)

(declare-fun e!1550489 () Bool)

(assert (=> b!2440178 (= e!1550487 e!1550489)))

(declare-fun c!389326 () Bool)

(assert (=> b!2440178 (= c!389326 ((_ is EmptyLang!7177) r!13927))))

(declare-fun b!2440179 () Bool)

(declare-fun res!1036117 () Bool)

(declare-fun e!1550484 () Bool)

(assert (=> b!2440179 (=> res!1036117 e!1550484)))

(declare-fun e!1550488 () Bool)

(assert (=> b!2440179 (= res!1036117 e!1550488)))

(declare-fun res!1036120 () Bool)

(assert (=> b!2440179 (=> (not res!1036120) (not e!1550488))))

(assert (=> b!2440179 (= res!1036120 lt!878301)))

(declare-fun b!2440180 () Bool)

(assert (=> b!2440180 (= e!1550489 (not lt!878301))))

(declare-fun b!2440181 () Bool)

(declare-fun e!1550490 () Bool)

(assert (=> b!2440181 (= e!1550484 e!1550490)))

(declare-fun res!1036122 () Bool)

(assert (=> b!2440181 (=> (not res!1036122) (not e!1550490))))

(assert (=> b!2440181 (= res!1036122 (not lt!878301))))

(declare-fun b!2440182 () Bool)

(declare-fun res!1036119 () Bool)

(assert (=> b!2440182 (=> (not res!1036119) (not e!1550488))))

(assert (=> b!2440182 (= res!1036119 (isEmpty!16534 (tail!3818 s!9460)))))

(declare-fun b!2440183 () Bool)

(declare-fun e!1550486 () Bool)

(assert (=> b!2440183 (= e!1550490 e!1550486)))

(declare-fun res!1036116 () Bool)

(assert (=> b!2440183 (=> res!1036116 e!1550486)))

(assert (=> b!2440183 (= res!1036116 call!149412)))

(declare-fun b!2440184 () Bool)

(assert (=> b!2440184 (= e!1550485 (nullable!2198 r!13927))))

(declare-fun b!2440185 () Bool)

(assert (=> b!2440185 (= e!1550488 (= (head!5545 s!9460) (c!389219 r!13927)))))

(declare-fun b!2440186 () Bool)

(declare-fun res!1036121 () Bool)

(assert (=> b!2440186 (=> (not res!1036121) (not e!1550488))))

(assert (=> b!2440186 (= res!1036121 (not call!149412))))

(declare-fun bm!149407 () Bool)

(assert (=> bm!149407 (= call!149412 (isEmpty!16534 s!9460))))

(declare-fun b!2440187 () Bool)

(declare-fun res!1036115 () Bool)

(assert (=> b!2440187 (=> res!1036115 e!1550486)))

(assert (=> b!2440187 (= res!1036115 (not (isEmpty!16534 (tail!3818 s!9460))))))

(declare-fun b!2440188 () Bool)

(assert (=> b!2440188 (= e!1550485 (matchR!3292 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (tail!3818 s!9460)))))

(declare-fun b!2440189 () Bool)

(declare-fun res!1036118 () Bool)

(assert (=> b!2440189 (=> res!1036118 e!1550484)))

(assert (=> b!2440189 (= res!1036118 (not ((_ is ElementMatch!7177) r!13927)))))

(assert (=> b!2440189 (= e!1550489 e!1550484)))

(declare-fun b!2440190 () Bool)

(assert (=> b!2440190 (= e!1550486 (not (= (head!5545 s!9460) (c!389219 r!13927))))))

(assert (= (and d!704539 c!389325) b!2440184))

(assert (= (and d!704539 (not c!389325)) b!2440188))

(assert (= (and d!704539 c!389327) b!2440177))

(assert (= (and d!704539 (not c!389327)) b!2440178))

(assert (= (and b!2440178 c!389326) b!2440180))

(assert (= (and b!2440178 (not c!389326)) b!2440189))

(assert (= (and b!2440189 (not res!1036118)) b!2440179))

(assert (= (and b!2440179 res!1036120) b!2440186))

(assert (= (and b!2440186 res!1036121) b!2440182))

(assert (= (and b!2440182 res!1036119) b!2440185))

(assert (= (and b!2440179 (not res!1036117)) b!2440181))

(assert (= (and b!2440181 res!1036122) b!2440183))

(assert (= (and b!2440183 (not res!1036116)) b!2440187))

(assert (= (and b!2440187 (not res!1036115)) b!2440190))

(assert (= (or b!2440177 b!2440186 b!2440183) bm!149407))

(assert (=> b!2440187 m!2818197))

(assert (=> b!2440187 m!2818197))

(assert (=> b!2440187 m!2818199))

(assert (=> b!2440190 m!2818201))

(assert (=> b!2440182 m!2818197))

(assert (=> b!2440182 m!2818197))

(assert (=> b!2440182 m!2818199))

(assert (=> d!704539 m!2818203))

(declare-fun m!2818413 () Bool)

(assert (=> d!704539 m!2818413))

(assert (=> bm!149407 m!2818203))

(declare-fun m!2818415 () Bool)

(assert (=> b!2440184 m!2818415))

(assert (=> b!2440185 m!2818201))

(assert (=> b!2440188 m!2818201))

(assert (=> b!2440188 m!2818201))

(declare-fun m!2818417 () Bool)

(assert (=> b!2440188 m!2818417))

(assert (=> b!2440188 m!2818197))

(assert (=> b!2440188 m!2818417))

(assert (=> b!2440188 m!2818197))

(declare-fun m!2818419 () Bool)

(assert (=> b!2440188 m!2818419))

(assert (=> b!2439701 d!704539))

(declare-fun d!704541 () Bool)

(assert (=> d!704541 (= (matchR!3292 r!13927 s!9460) (matchRSpec!1024 r!13927 s!9460))))

(declare-fun lt!878304 () Unit!41737)

(declare-fun choose!14483 (Regex!7177 List!28590) Unit!41737)

(assert (=> d!704541 (= lt!878304 (choose!14483 r!13927 s!9460))))

(assert (=> d!704541 (validRegex!2889 r!13927)))

(assert (=> d!704541 (= (mainMatchTheorem!1024 r!13927 s!9460) lt!878304)))

(declare-fun bs!464817 () Bool)

(assert (= bs!464817 d!704541))

(assert (=> bs!464817 m!2818061))

(assert (=> bs!464817 m!2818059))

(declare-fun m!2818421 () Bool)

(assert (=> bs!464817 m!2818421))

(assert (=> bs!464817 m!2818413))

(assert (=> b!2439701 d!704541))

(declare-fun b!2440204 () Bool)

(declare-fun e!1550493 () Bool)

(declare-fun tp!774694 () Bool)

(declare-fun tp!774693 () Bool)

(assert (=> b!2440204 (= e!1550493 (and tp!774694 tp!774693))))

(declare-fun b!2440201 () Bool)

(assert (=> b!2440201 (= e!1550493 tp_is_empty!11767)))

(declare-fun b!2440202 () Bool)

(declare-fun tp!774692 () Bool)

(declare-fun tp!774691 () Bool)

(assert (=> b!2440202 (= e!1550493 (and tp!774692 tp!774691))))

(declare-fun b!2440203 () Bool)

(declare-fun tp!774695 () Bool)

(assert (=> b!2440203 (= e!1550493 tp!774695)))

(assert (=> b!2439703 (= tp!774626 e!1550493)))

(assert (= (and b!2439703 ((_ is ElementMatch!7177) (regOne!14866 r!13927))) b!2440201))

(assert (= (and b!2439703 ((_ is Concat!11813) (regOne!14866 r!13927))) b!2440202))

(assert (= (and b!2439703 ((_ is Star!7177) (regOne!14866 r!13927))) b!2440203))

(assert (= (and b!2439703 ((_ is Union!7177) (regOne!14866 r!13927))) b!2440204))

(declare-fun b!2440208 () Bool)

(declare-fun e!1550494 () Bool)

(declare-fun tp!774699 () Bool)

(declare-fun tp!774698 () Bool)

(assert (=> b!2440208 (= e!1550494 (and tp!774699 tp!774698))))

(declare-fun b!2440205 () Bool)

(assert (=> b!2440205 (= e!1550494 tp_is_empty!11767)))

(declare-fun b!2440206 () Bool)

(declare-fun tp!774697 () Bool)

(declare-fun tp!774696 () Bool)

(assert (=> b!2440206 (= e!1550494 (and tp!774697 tp!774696))))

(declare-fun b!2440207 () Bool)

(declare-fun tp!774700 () Bool)

(assert (=> b!2440207 (= e!1550494 tp!774700)))

(assert (=> b!2439703 (= tp!774627 e!1550494)))

(assert (= (and b!2439703 ((_ is ElementMatch!7177) (regTwo!14866 r!13927))) b!2440205))

(assert (= (and b!2439703 ((_ is Concat!11813) (regTwo!14866 r!13927))) b!2440206))

(assert (= (and b!2439703 ((_ is Star!7177) (regTwo!14866 r!13927))) b!2440207))

(assert (= (and b!2439703 ((_ is Union!7177) (regTwo!14866 r!13927))) b!2440208))

(declare-fun b!2440213 () Bool)

(declare-fun e!1550497 () Bool)

(declare-fun tp!774703 () Bool)

(assert (=> b!2440213 (= e!1550497 (and tp_is_empty!11767 tp!774703))))

(assert (=> b!2439702 (= tp!774631 e!1550497)))

(assert (= (and b!2439702 ((_ is Cons!28492) (t!208567 s!9460))) b!2440213))

(declare-fun b!2440217 () Bool)

(declare-fun e!1550498 () Bool)

(declare-fun tp!774707 () Bool)

(declare-fun tp!774706 () Bool)

(assert (=> b!2440217 (= e!1550498 (and tp!774707 tp!774706))))

(declare-fun b!2440214 () Bool)

(assert (=> b!2440214 (= e!1550498 tp_is_empty!11767)))

(declare-fun b!2440215 () Bool)

(declare-fun tp!774705 () Bool)

(declare-fun tp!774704 () Bool)

(assert (=> b!2440215 (= e!1550498 (and tp!774705 tp!774704))))

(declare-fun b!2440216 () Bool)

(declare-fun tp!774708 () Bool)

(assert (=> b!2440216 (= e!1550498 tp!774708)))

(assert (=> b!2439704 (= tp!774629 e!1550498)))

(assert (= (and b!2439704 ((_ is ElementMatch!7177) (h!33894 l!9164))) b!2440214))

(assert (= (and b!2439704 ((_ is Concat!11813) (h!33894 l!9164))) b!2440215))

(assert (= (and b!2439704 ((_ is Star!7177) (h!33894 l!9164))) b!2440216))

(assert (= (and b!2439704 ((_ is Union!7177) (h!33894 l!9164))) b!2440217))

(declare-fun b!2440222 () Bool)

(declare-fun e!1550501 () Bool)

(declare-fun tp!774713 () Bool)

(declare-fun tp!774714 () Bool)

(assert (=> b!2440222 (= e!1550501 (and tp!774713 tp!774714))))

(assert (=> b!2439704 (= tp!774624 e!1550501)))

(assert (= (and b!2439704 ((_ is Cons!28493) (t!208568 l!9164))) b!2440222))

(declare-fun b!2440226 () Bool)

(declare-fun e!1550502 () Bool)

(declare-fun tp!774718 () Bool)

(declare-fun tp!774717 () Bool)

(assert (=> b!2440226 (= e!1550502 (and tp!774718 tp!774717))))

(declare-fun b!2440223 () Bool)

(assert (=> b!2440223 (= e!1550502 tp_is_empty!11767)))

(declare-fun b!2440224 () Bool)

(declare-fun tp!774716 () Bool)

(declare-fun tp!774715 () Bool)

(assert (=> b!2440224 (= e!1550502 (and tp!774716 tp!774715))))

(declare-fun b!2440225 () Bool)

(declare-fun tp!774719 () Bool)

(assert (=> b!2440225 (= e!1550502 tp!774719)))

(assert (=> b!2439700 (= tp!774628 e!1550502)))

(assert (= (and b!2439700 ((_ is ElementMatch!7177) (reg!7506 r!13927))) b!2440223))

(assert (= (and b!2439700 ((_ is Concat!11813) (reg!7506 r!13927))) b!2440224))

(assert (= (and b!2439700 ((_ is Star!7177) (reg!7506 r!13927))) b!2440225))

(assert (= (and b!2439700 ((_ is Union!7177) (reg!7506 r!13927))) b!2440226))

(declare-fun b!2440230 () Bool)

(declare-fun e!1550503 () Bool)

(declare-fun tp!774723 () Bool)

(declare-fun tp!774722 () Bool)

(assert (=> b!2440230 (= e!1550503 (and tp!774723 tp!774722))))

(declare-fun b!2440227 () Bool)

(assert (=> b!2440227 (= e!1550503 tp_is_empty!11767)))

(declare-fun b!2440228 () Bool)

(declare-fun tp!774721 () Bool)

(declare-fun tp!774720 () Bool)

(assert (=> b!2440228 (= e!1550503 (and tp!774721 tp!774720))))

(declare-fun b!2440229 () Bool)

(declare-fun tp!774724 () Bool)

(assert (=> b!2440229 (= e!1550503 tp!774724)))

(assert (=> b!2439690 (= tp!774625 e!1550503)))

(assert (= (and b!2439690 ((_ is ElementMatch!7177) (regOne!14867 r!13927))) b!2440227))

(assert (= (and b!2439690 ((_ is Concat!11813) (regOne!14867 r!13927))) b!2440228))

(assert (= (and b!2439690 ((_ is Star!7177) (regOne!14867 r!13927))) b!2440229))

(assert (= (and b!2439690 ((_ is Union!7177) (regOne!14867 r!13927))) b!2440230))

(declare-fun b!2440234 () Bool)

(declare-fun e!1550504 () Bool)

(declare-fun tp!774728 () Bool)

(declare-fun tp!774727 () Bool)

(assert (=> b!2440234 (= e!1550504 (and tp!774728 tp!774727))))

(declare-fun b!2440231 () Bool)

(assert (=> b!2440231 (= e!1550504 tp_is_empty!11767)))

(declare-fun b!2440232 () Bool)

(declare-fun tp!774726 () Bool)

(declare-fun tp!774725 () Bool)

(assert (=> b!2440232 (= e!1550504 (and tp!774726 tp!774725))))

(declare-fun b!2440233 () Bool)

(declare-fun tp!774729 () Bool)

(assert (=> b!2440233 (= e!1550504 tp!774729)))

(assert (=> b!2439690 (= tp!774630 e!1550504)))

(assert (= (and b!2439690 ((_ is ElementMatch!7177) (regTwo!14867 r!13927))) b!2440231))

(assert (= (and b!2439690 ((_ is Concat!11813) (regTwo!14867 r!13927))) b!2440232))

(assert (= (and b!2439690 ((_ is Star!7177) (regTwo!14867 r!13927))) b!2440233))

(assert (= (and b!2439690 ((_ is Union!7177) (regTwo!14867 r!13927))) b!2440234))

(declare-fun b_lambda!74925 () Bool)

(assert (= b_lambda!74923 (or start!238766 b_lambda!74925)))

(declare-fun bs!464818 () Bool)

(declare-fun d!704543 () Bool)

(assert (= bs!464818 (and d!704543 start!238766)))

(assert (=> bs!464818 (= (dynLambda!12256 lambda!92357 (h!33894 l!9164)) (validRegex!2889 (h!33894 l!9164)))))

(declare-fun m!2818423 () Bool)

(assert (=> bs!464818 m!2818423))

(assert (=> b!2440123 d!704543))

(check-sat (not b!2439784) (not b!2440232) (not d!704529) (not b!2440215) tp_is_empty!11767 (not b!2440203) (not b!2439783) (not bm!149407) (not b!2440222) (not b!2440129) (not b!2440124) (not b!2440228) (not b!2440204) (not b!2439874) (not b!2440230) (not b!2440217) (not b!2439914) (not d!704527) (not b!2440130) (not b!2439930) (not b!2440111) (not b!2439873) (not b!2440184) (not b!2440190) (not bm!149405) (not b!2440185) (not d!704511) (not d!704523) (not b!2440224) (not d!704451) (not b!2440172) (not d!704491) (not d!704535) (not b!2440128) (not b!2440229) (not b!2440110) (not b!2440226) (not b!2439926) (not b!2439924) (not b!2440225) (not b!2439912) (not b!2440114) (not b!2440182) (not b_lambda!74925) (not b!2440206) (not b!2439981) (not d!704513) (not b!2440208) (not b!2439982) (not bm!149406) (not d!704541) (not b!2440207) (not b!2439907) (not b!2439876) (not b!2439932) (not b!2440234) (not b!2440213) (not b!2439790) (not d!704463) (not b!2440112) (not b!2440167) (not d!704539) (not b!2439913) (not b!2440125) (not b!2440187) (not b!2439911) (not b!2440233) (not d!704501) (not b!2440216) (not b!2439909) (not d!704483) (not b!2440113) (not b!2439787) (not bm!149396) (not b!2439785) (not b!2439868) (not b!2439788) (not b!2439870) (not b!2440115) (not b!2439908) (not b!2440127) (not bm!149391) (not b!2439789) (not b!2440202) (not b!2439929) (not b!2439871) (not bs!464818) (not d!704525) (not b!2440188) (not b!2440126) (not d!704533) (not b!2439927) (not d!704489))
(check-sat)
(get-model)

(declare-fun d!704709 () Bool)

(declare-fun c!389441 () Bool)

(assert (=> d!704709 (= c!389441 ((_ is Nil!28492) lt!878269))))

(declare-fun e!1550773 () (InoxSet C!14512))

(assert (=> d!704709 (= (content!3924 lt!878269) e!1550773)))

(declare-fun b!2440768 () Bool)

(assert (=> b!2440768 (= e!1550773 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2440769 () Bool)

(assert (=> b!2440769 (= e!1550773 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 lt!878269) true) (content!3924 (t!208567 lt!878269))))))

(assert (= (and d!704709 c!389441) b!2440768))

(assert (= (and d!704709 (not c!389441)) b!2440769))

(declare-fun m!2818817 () Bool)

(assert (=> b!2440769 m!2818817))

(declare-fun m!2818819 () Bool)

(assert (=> b!2440769 m!2818819))

(assert (=> d!704491 d!704709))

(declare-fun d!704711 () Bool)

(declare-fun c!389442 () Bool)

(assert (=> d!704711 (= c!389442 ((_ is Nil!28492) (_1!16596 lt!878224)))))

(declare-fun e!1550774 () (InoxSet C!14512))

(assert (=> d!704711 (= (content!3924 (_1!16596 lt!878224)) e!1550774)))

(declare-fun b!2440770 () Bool)

(assert (=> b!2440770 (= e!1550774 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2440771 () Bool)

(assert (=> b!2440771 (= e!1550774 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (_1!16596 lt!878224)) true) (content!3924 (t!208567 (_1!16596 lt!878224)))))))

(assert (= (and d!704711 c!389442) b!2440770))

(assert (= (and d!704711 (not c!389442)) b!2440771))

(declare-fun m!2818821 () Bool)

(assert (=> b!2440771 m!2818821))

(declare-fun m!2818823 () Bool)

(assert (=> b!2440771 m!2818823))

(assert (=> d!704491 d!704711))

(declare-fun d!704713 () Bool)

(declare-fun c!389443 () Bool)

(assert (=> d!704713 (= c!389443 ((_ is Nil!28492) (_2!16596 lt!878224)))))

(declare-fun e!1550775 () (InoxSet C!14512))

(assert (=> d!704713 (= (content!3924 (_2!16596 lt!878224)) e!1550775)))

(declare-fun b!2440772 () Bool)

(assert (=> b!2440772 (= e!1550775 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2440773 () Bool)

(assert (=> b!2440773 (= e!1550775 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (_2!16596 lt!878224)) true) (content!3924 (t!208567 (_2!16596 lt!878224)))))))

(assert (= (and d!704713 c!389443) b!2440772))

(assert (= (and d!704713 (not c!389443)) b!2440773))

(declare-fun m!2818825 () Bool)

(assert (=> b!2440773 m!2818825))

(declare-fun m!2818827 () Bool)

(assert (=> b!2440773 m!2818827))

(assert (=> d!704491 d!704713))

(declare-fun bs!464888 () Bool)

(declare-fun d!704715 () Bool)

(assert (= bs!464888 (and d!704715 start!238766)))

(declare-fun lambda!92413 () Int)

(assert (=> bs!464888 (= lambda!92413 lambda!92357)))

(declare-fun bs!464889 () Bool)

(assert (= bs!464889 (and d!704715 d!704451)))

(assert (=> bs!464889 (= lambda!92413 lambda!92365)))

(declare-fun bs!464890 () Bool)

(assert (= bs!464890 (and d!704715 d!704483)))

(assert (=> bs!464890 (= lambda!92413 lambda!92374)))

(declare-fun b!2440774 () Bool)

(declare-fun e!1550777 () Regex!7177)

(assert (=> b!2440774 (= e!1550777 EmptyExpr!7177)))

(declare-fun b!2440775 () Bool)

(declare-fun e!1550776 () Regex!7177)

(assert (=> b!2440775 (= e!1550776 e!1550777)))

(declare-fun c!389444 () Bool)

(assert (=> b!2440775 (= c!389444 ((_ is Cons!28493) (t!208568 l!9164)))))

(declare-fun b!2440776 () Bool)

(declare-fun e!1550780 () Bool)

(assert (=> b!2440776 (= e!1550780 (isEmpty!16531 (t!208568 (t!208568 l!9164))))))

(declare-fun b!2440777 () Bool)

(declare-fun e!1550778 () Bool)

(declare-fun lt!878342 () Regex!7177)

(assert (=> b!2440777 (= e!1550778 (= lt!878342 (head!5543 (t!208568 l!9164))))))

(declare-fun b!2440778 () Bool)

(declare-fun e!1550781 () Bool)

(assert (=> b!2440778 (= e!1550781 e!1550778)))

(declare-fun c!389446 () Bool)

(assert (=> b!2440778 (= c!389446 (isEmpty!16531 (tail!3816 (t!208568 l!9164))))))

(declare-fun b!2440779 () Bool)

(assert (=> b!2440779 (= e!1550776 (h!33894 (t!208568 l!9164)))))

(declare-fun b!2440780 () Bool)

(assert (=> b!2440780 (= e!1550778 (isConcat!215 lt!878342))))

(declare-fun b!2440781 () Bool)

(assert (=> b!2440781 (= e!1550777 (Concat!11813 (h!33894 (t!208568 l!9164)) (generalisedConcat!278 (t!208568 (t!208568 l!9164)))))))

(declare-fun e!1550779 () Bool)

(assert (=> d!704715 e!1550779))

(declare-fun res!1036308 () Bool)

(assert (=> d!704715 (=> (not res!1036308) (not e!1550779))))

(assert (=> d!704715 (= res!1036308 (validRegex!2889 lt!878342))))

(assert (=> d!704715 (= lt!878342 e!1550776)))

(declare-fun c!389445 () Bool)

(assert (=> d!704715 (= c!389445 e!1550780)))

(declare-fun res!1036309 () Bool)

(assert (=> d!704715 (=> (not res!1036309) (not e!1550780))))

(assert (=> d!704715 (= res!1036309 ((_ is Cons!28493) (t!208568 l!9164)))))

(assert (=> d!704715 (forall!5811 (t!208568 l!9164) lambda!92413)))

(assert (=> d!704715 (= (generalisedConcat!278 (t!208568 l!9164)) lt!878342)))

(declare-fun b!2440782 () Bool)

(assert (=> b!2440782 (= e!1550781 (isEmptyExpr!215 lt!878342))))

(declare-fun b!2440783 () Bool)

(assert (=> b!2440783 (= e!1550779 e!1550781)))

(declare-fun c!389447 () Bool)

(assert (=> b!2440783 (= c!389447 (isEmpty!16531 (t!208568 l!9164)))))

(assert (= (and d!704715 res!1036309) b!2440776))

(assert (= (and d!704715 c!389445) b!2440779))

(assert (= (and d!704715 (not c!389445)) b!2440775))

(assert (= (and b!2440775 c!389444) b!2440781))

(assert (= (and b!2440775 (not c!389444)) b!2440774))

(assert (= (and d!704715 res!1036308) b!2440783))

(assert (= (and b!2440783 c!389447) b!2440782))

(assert (= (and b!2440783 (not c!389447)) b!2440778))

(assert (= (and b!2440778 c!389446) b!2440777))

(assert (= (and b!2440778 (not c!389446)) b!2440780))

(declare-fun m!2818829 () Bool)

(assert (=> b!2440781 m!2818829))

(declare-fun m!2818831 () Bool)

(assert (=> b!2440778 m!2818831))

(assert (=> b!2440778 m!2818831))

(declare-fun m!2818833 () Bool)

(assert (=> b!2440778 m!2818833))

(declare-fun m!2818835 () Bool)

(assert (=> d!704715 m!2818835))

(declare-fun m!2818837 () Bool)

(assert (=> d!704715 m!2818837))

(assert (=> b!2440783 m!2818143))

(declare-fun m!2818839 () Bool)

(assert (=> b!2440780 m!2818839))

(declare-fun m!2818841 () Bool)

(assert (=> b!2440776 m!2818841))

(declare-fun m!2818843 () Bool)

(assert (=> b!2440777 m!2818843))

(declare-fun m!2818845 () Bool)

(assert (=> b!2440782 m!2818845))

(assert (=> b!2439788 d!704715))

(declare-fun d!704717 () Bool)

(assert (=> d!704717 (= (isEmpty!16534 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))) ((_ is Nil!28492) (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))

(assert (=> d!704489 d!704717))

(declare-fun b!2440802 () Bool)

(declare-fun e!1550802 () Bool)

(declare-fun e!1550797 () Bool)

(assert (=> b!2440802 (= e!1550802 e!1550797)))

(declare-fun c!389453 () Bool)

(assert (=> b!2440802 (= c!389453 ((_ is Star!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun bm!149476 () Bool)

(declare-fun call!149482 () Bool)

(declare-fun c!389452 () Bool)

(assert (=> bm!149476 (= call!149482 (validRegex!2889 (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(declare-fun b!2440803 () Bool)

(declare-fun e!1550796 () Bool)

(assert (=> b!2440803 (= e!1550797 e!1550796)))

(declare-fun res!1036323 () Bool)

(assert (=> b!2440803 (= res!1036323 (not (nullable!2198 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(assert (=> b!2440803 (=> (not res!1036323) (not e!1550796))))

(declare-fun d!704719 () Bool)

(declare-fun res!1036324 () Bool)

(assert (=> d!704719 (=> res!1036324 e!1550802)))

(assert (=> d!704719 (= res!1036324 ((_ is ElementMatch!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(assert (=> d!704719 (= (validRegex!2889 (Concat!11813 lt!878222 EmptyExpr!7177)) e!1550802)))

(declare-fun b!2440804 () Bool)

(declare-fun e!1550800 () Bool)

(assert (=> b!2440804 (= e!1550800 call!149482)))

(declare-fun b!2440805 () Bool)

(declare-fun e!1550799 () Bool)

(declare-fun call!149483 () Bool)

(assert (=> b!2440805 (= e!1550799 call!149483)))

(declare-fun b!2440806 () Bool)

(declare-fun res!1036321 () Bool)

(declare-fun e!1550798 () Bool)

(assert (=> b!2440806 (=> res!1036321 e!1550798)))

(assert (=> b!2440806 (= res!1036321 (not ((_ is Concat!11813) (Concat!11813 lt!878222 EmptyExpr!7177))))))

(declare-fun e!1550801 () Bool)

(assert (=> b!2440806 (= e!1550801 e!1550798)))

(declare-fun b!2440807 () Bool)

(declare-fun res!1036320 () Bool)

(assert (=> b!2440807 (=> (not res!1036320) (not e!1550799))))

(assert (=> b!2440807 (= res!1036320 call!149482)))

(assert (=> b!2440807 (= e!1550801 e!1550799)))

(declare-fun b!2440808 () Bool)

(assert (=> b!2440808 (= e!1550797 e!1550801)))

(assert (=> b!2440808 (= c!389452 ((_ is Union!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun b!2440809 () Bool)

(assert (=> b!2440809 (= e!1550798 e!1550800)))

(declare-fun res!1036322 () Bool)

(assert (=> b!2440809 (=> (not res!1036322) (not e!1550800))))

(assert (=> b!2440809 (= res!1036322 call!149483)))

(declare-fun b!2440810 () Bool)

(declare-fun call!149481 () Bool)

(assert (=> b!2440810 (= e!1550796 call!149481)))

(declare-fun bm!149477 () Bool)

(assert (=> bm!149477 (= call!149483 call!149481)))

(declare-fun bm!149478 () Bool)

(assert (=> bm!149478 (= call!149481 (validRegex!2889 (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(assert (= (and d!704719 (not res!1036324)) b!2440802))

(assert (= (and b!2440802 c!389453) b!2440803))

(assert (= (and b!2440802 (not c!389453)) b!2440808))

(assert (= (and b!2440803 res!1036323) b!2440810))

(assert (= (and b!2440808 c!389452) b!2440807))

(assert (= (and b!2440808 (not c!389452)) b!2440806))

(assert (= (and b!2440807 res!1036320) b!2440805))

(assert (= (and b!2440806 (not res!1036321)) b!2440809))

(assert (= (and b!2440809 res!1036322) b!2440804))

(assert (= (or b!2440807 b!2440804) bm!149476))

(assert (= (or b!2440805 b!2440809) bm!149477))

(assert (= (or b!2440810 bm!149477) bm!149478))

(declare-fun m!2818847 () Bool)

(assert (=> bm!149476 m!2818847))

(declare-fun m!2818849 () Bool)

(assert (=> b!2440803 m!2818849))

(declare-fun m!2818851 () Bool)

(assert (=> bm!149478 m!2818851))

(assert (=> d!704489 d!704719))

(assert (=> b!2439784 d!704479))

(declare-fun d!704721 () Bool)

(assert (=> d!704721 (= (head!5545 s!9460) (h!33893 s!9460))))

(assert (=> b!2440190 d!704721))

(assert (=> b!2439871 d!704721))

(declare-fun b!2440811 () Bool)

(declare-fun e!1550806 () Bool)

(declare-fun lt!878343 () Bool)

(declare-fun call!149484 () Bool)

(assert (=> b!2440811 (= e!1550806 (= lt!878343 call!149484))))

(declare-fun d!704723 () Bool)

(assert (=> d!704723 e!1550806))

(declare-fun c!389456 () Bool)

(assert (=> d!704723 (= c!389456 ((_ is EmptyExpr!7177) EmptyExpr!7177))))

(declare-fun e!1550804 () Bool)

(assert (=> d!704723 (= lt!878343 e!1550804)))

(declare-fun c!389454 () Bool)

(assert (=> d!704723 (= c!389454 (isEmpty!16534 (_2!16596 (get!8795 lt!878298))))))

(assert (=> d!704723 (validRegex!2889 EmptyExpr!7177)))

(assert (=> d!704723 (= (matchR!3292 EmptyExpr!7177 (_2!16596 (get!8795 lt!878298))) lt!878343)))

(declare-fun b!2440812 () Bool)

(declare-fun e!1550808 () Bool)

(assert (=> b!2440812 (= e!1550806 e!1550808)))

(declare-fun c!389455 () Bool)

(assert (=> b!2440812 (= c!389455 ((_ is EmptyLang!7177) EmptyExpr!7177))))

(declare-fun b!2440813 () Bool)

(declare-fun res!1036327 () Bool)

(declare-fun e!1550803 () Bool)

(assert (=> b!2440813 (=> res!1036327 e!1550803)))

(declare-fun e!1550807 () Bool)

(assert (=> b!2440813 (= res!1036327 e!1550807)))

(declare-fun res!1036330 () Bool)

(assert (=> b!2440813 (=> (not res!1036330) (not e!1550807))))

(assert (=> b!2440813 (= res!1036330 lt!878343)))

(declare-fun b!2440814 () Bool)

(assert (=> b!2440814 (= e!1550808 (not lt!878343))))

(declare-fun b!2440815 () Bool)

(declare-fun e!1550809 () Bool)

(assert (=> b!2440815 (= e!1550803 e!1550809)))

(declare-fun res!1036332 () Bool)

(assert (=> b!2440815 (=> (not res!1036332) (not e!1550809))))

(assert (=> b!2440815 (= res!1036332 (not lt!878343))))

(declare-fun b!2440816 () Bool)

(declare-fun res!1036329 () Bool)

(assert (=> b!2440816 (=> (not res!1036329) (not e!1550807))))

(assert (=> b!2440816 (= res!1036329 (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878298)))))))

(declare-fun b!2440817 () Bool)

(declare-fun e!1550805 () Bool)

(assert (=> b!2440817 (= e!1550809 e!1550805)))

(declare-fun res!1036326 () Bool)

(assert (=> b!2440817 (=> res!1036326 e!1550805)))

(assert (=> b!2440817 (= res!1036326 call!149484)))

(declare-fun b!2440818 () Bool)

(assert (=> b!2440818 (= e!1550804 (nullable!2198 EmptyExpr!7177))))

(declare-fun b!2440819 () Bool)

(assert (=> b!2440819 (= e!1550807 (= (head!5545 (_2!16596 (get!8795 lt!878298))) (c!389219 EmptyExpr!7177)))))

(declare-fun b!2440820 () Bool)

(declare-fun res!1036331 () Bool)

(assert (=> b!2440820 (=> (not res!1036331) (not e!1550807))))

(assert (=> b!2440820 (= res!1036331 (not call!149484))))

(declare-fun bm!149479 () Bool)

(assert (=> bm!149479 (= call!149484 (isEmpty!16534 (_2!16596 (get!8795 lt!878298))))))

(declare-fun b!2440821 () Bool)

(declare-fun res!1036325 () Bool)

(assert (=> b!2440821 (=> res!1036325 e!1550805)))

(assert (=> b!2440821 (= res!1036325 (not (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878298))))))))

(declare-fun b!2440822 () Bool)

(assert (=> b!2440822 (= e!1550804 (matchR!3292 (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298)))) (tail!3818 (_2!16596 (get!8795 lt!878298)))))))

(declare-fun b!2440823 () Bool)

(declare-fun res!1036328 () Bool)

(assert (=> b!2440823 (=> res!1036328 e!1550803)))

(assert (=> b!2440823 (= res!1036328 (not ((_ is ElementMatch!7177) EmptyExpr!7177)))))

(assert (=> b!2440823 (= e!1550808 e!1550803)))

(declare-fun b!2440824 () Bool)

(assert (=> b!2440824 (= e!1550805 (not (= (head!5545 (_2!16596 (get!8795 lt!878298))) (c!389219 EmptyExpr!7177))))))

(assert (= (and d!704723 c!389454) b!2440818))

(assert (= (and d!704723 (not c!389454)) b!2440822))

(assert (= (and d!704723 c!389456) b!2440811))

(assert (= (and d!704723 (not c!389456)) b!2440812))

(assert (= (and b!2440812 c!389455) b!2440814))

(assert (= (and b!2440812 (not c!389455)) b!2440823))

(assert (= (and b!2440823 (not res!1036328)) b!2440813))

(assert (= (and b!2440813 res!1036330) b!2440820))

(assert (= (and b!2440820 res!1036331) b!2440816))

(assert (= (and b!2440816 res!1036329) b!2440819))

(assert (= (and b!2440813 (not res!1036327)) b!2440815))

(assert (= (and b!2440815 res!1036332) b!2440817))

(assert (= (and b!2440817 (not res!1036326)) b!2440821))

(assert (= (and b!2440821 (not res!1036325)) b!2440824))

(assert (= (or b!2440811 b!2440820 b!2440817) bm!149479))

(declare-fun m!2818853 () Bool)

(assert (=> b!2440821 m!2818853))

(assert (=> b!2440821 m!2818853))

(declare-fun m!2818855 () Bool)

(assert (=> b!2440821 m!2818855))

(declare-fun m!2818857 () Bool)

(assert (=> b!2440824 m!2818857))

(assert (=> b!2440816 m!2818853))

(assert (=> b!2440816 m!2818853))

(assert (=> b!2440816 m!2818855))

(declare-fun m!2818859 () Bool)

(assert (=> d!704723 m!2818859))

(declare-fun m!2818861 () Bool)

(assert (=> d!704723 m!2818861))

(assert (=> bm!149479 m!2818859))

(declare-fun m!2818863 () Bool)

(assert (=> b!2440818 m!2818863))

(assert (=> b!2440819 m!2818857))

(assert (=> b!2440822 m!2818857))

(assert (=> b!2440822 m!2818857))

(declare-fun m!2818865 () Bool)

(assert (=> b!2440822 m!2818865))

(assert (=> b!2440822 m!2818853))

(assert (=> b!2440822 m!2818865))

(assert (=> b!2440822 m!2818853))

(declare-fun m!2818867 () Bool)

(assert (=> b!2440822 m!2818867))

(assert (=> b!2440127 d!704723))

(declare-fun d!704725 () Bool)

(assert (=> d!704725 (= (get!8795 lt!878298) (v!31073 lt!878298))))

(assert (=> b!2440127 d!704725))

(declare-fun d!704727 () Bool)

(assert (=> d!704727 true))

(assert (=> d!704727 true))

(declare-fun res!1036335 () Bool)

(assert (=> d!704727 (= (choose!14482 lambda!92359) res!1036335)))

(assert (=> d!704525 d!704727))

(assert (=> d!704501 d!704489))

(assert (=> d!704501 d!704491))

(declare-fun d!704729 () Bool)

(assert (=> d!704729 (matchR!3292 (Concat!11813 lt!878222 EmptyExpr!7177) (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))

(assert (=> d!704729 true))

(declare-fun _$120!201 () Unit!41737)

(assert (=> d!704729 (= (choose!14479 lt!878222 EmptyExpr!7177 (_1!16596 lt!878224) (_2!16596 lt!878224) s!9460) _$120!201)))

(declare-fun bs!464891 () Bool)

(assert (= bs!464891 d!704729))

(assert (=> bs!464891 m!2818091))

(assert (=> bs!464891 m!2818091))

(assert (=> bs!464891 m!2818093))

(assert (=> d!704501 d!704729))

(declare-fun b!2440825 () Bool)

(declare-fun e!1550816 () Bool)

(declare-fun e!1550811 () Bool)

(assert (=> b!2440825 (= e!1550816 e!1550811)))

(declare-fun c!389458 () Bool)

(assert (=> b!2440825 (= c!389458 ((_ is Star!7177) lt!878222))))

(declare-fun bm!149480 () Bool)

(declare-fun call!149486 () Bool)

(declare-fun c!389457 () Bool)

(assert (=> bm!149480 (= call!149486 (validRegex!2889 (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))))))

(declare-fun b!2440826 () Bool)

(declare-fun e!1550810 () Bool)

(assert (=> b!2440826 (= e!1550811 e!1550810)))

(declare-fun res!1036339 () Bool)

(assert (=> b!2440826 (= res!1036339 (not (nullable!2198 (reg!7506 lt!878222))))))

(assert (=> b!2440826 (=> (not res!1036339) (not e!1550810))))

(declare-fun d!704731 () Bool)

(declare-fun res!1036340 () Bool)

(assert (=> d!704731 (=> res!1036340 e!1550816)))

(assert (=> d!704731 (= res!1036340 ((_ is ElementMatch!7177) lt!878222))))

(assert (=> d!704731 (= (validRegex!2889 lt!878222) e!1550816)))

(declare-fun b!2440827 () Bool)

(declare-fun e!1550814 () Bool)

(assert (=> b!2440827 (= e!1550814 call!149486)))

(declare-fun b!2440828 () Bool)

(declare-fun e!1550813 () Bool)

(declare-fun call!149487 () Bool)

(assert (=> b!2440828 (= e!1550813 call!149487)))

(declare-fun b!2440829 () Bool)

(declare-fun res!1036337 () Bool)

(declare-fun e!1550812 () Bool)

(assert (=> b!2440829 (=> res!1036337 e!1550812)))

(assert (=> b!2440829 (= res!1036337 (not ((_ is Concat!11813) lt!878222)))))

(declare-fun e!1550815 () Bool)

(assert (=> b!2440829 (= e!1550815 e!1550812)))

(declare-fun b!2440830 () Bool)

(declare-fun res!1036336 () Bool)

(assert (=> b!2440830 (=> (not res!1036336) (not e!1550813))))

(assert (=> b!2440830 (= res!1036336 call!149486)))

(assert (=> b!2440830 (= e!1550815 e!1550813)))

(declare-fun b!2440831 () Bool)

(assert (=> b!2440831 (= e!1550811 e!1550815)))

(assert (=> b!2440831 (= c!389457 ((_ is Union!7177) lt!878222))))

(declare-fun b!2440832 () Bool)

(assert (=> b!2440832 (= e!1550812 e!1550814)))

(declare-fun res!1036338 () Bool)

(assert (=> b!2440832 (=> (not res!1036338) (not e!1550814))))

(assert (=> b!2440832 (= res!1036338 call!149487)))

(declare-fun b!2440833 () Bool)

(declare-fun call!149485 () Bool)

(assert (=> b!2440833 (= e!1550810 call!149485)))

(declare-fun bm!149481 () Bool)

(assert (=> bm!149481 (= call!149487 call!149485)))

(declare-fun bm!149482 () Bool)

(assert (=> bm!149482 (= call!149485 (validRegex!2889 (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222)))))))

(assert (= (and d!704731 (not res!1036340)) b!2440825))

(assert (= (and b!2440825 c!389458) b!2440826))

(assert (= (and b!2440825 (not c!389458)) b!2440831))

(assert (= (and b!2440826 res!1036339) b!2440833))

(assert (= (and b!2440831 c!389457) b!2440830))

(assert (= (and b!2440831 (not c!389457)) b!2440829))

(assert (= (and b!2440830 res!1036336) b!2440828))

(assert (= (and b!2440829 (not res!1036337)) b!2440832))

(assert (= (and b!2440832 res!1036338) b!2440827))

(assert (= (or b!2440830 b!2440827) bm!149480))

(assert (= (or b!2440828 b!2440832) bm!149481))

(assert (= (or b!2440833 bm!149481) bm!149482))

(declare-fun m!2818869 () Bool)

(assert (=> bm!149480 m!2818869))

(declare-fun m!2818871 () Bool)

(assert (=> b!2440826 m!2818871))

(declare-fun m!2818873 () Bool)

(assert (=> bm!149482 m!2818873))

(assert (=> d!704501 d!704731))

(declare-fun d!704733 () Bool)

(assert (=> d!704733 (= (isDefined!4492 lt!878295) (not (isEmpty!16535 lt!878295)))))

(declare-fun bs!464892 () Bool)

(assert (= bs!464892 d!704733))

(declare-fun m!2818875 () Bool)

(assert (=> bs!464892 m!2818875))

(assert (=> b!2440111 d!704733))

(declare-fun b!2440834 () Bool)

(declare-fun e!1550818 () List!28590)

(assert (=> b!2440834 (= e!1550818 (_2!16596 lt!878224))))

(declare-fun d!704735 () Bool)

(declare-fun e!1550817 () Bool)

(assert (=> d!704735 e!1550817))

(declare-fun res!1036341 () Bool)

(assert (=> d!704735 (=> (not res!1036341) (not e!1550817))))

(declare-fun lt!878344 () List!28590)

(assert (=> d!704735 (= res!1036341 (= (content!3924 lt!878344) ((_ map or) (content!3924 (t!208567 (_1!16596 lt!878224))) (content!3924 (_2!16596 lt!878224)))))))

(assert (=> d!704735 (= lt!878344 e!1550818)))

(declare-fun c!389459 () Bool)

(assert (=> d!704735 (= c!389459 ((_ is Nil!28492) (t!208567 (_1!16596 lt!878224))))))

(assert (=> d!704735 (= (++!7080 (t!208567 (_1!16596 lt!878224)) (_2!16596 lt!878224)) lt!878344)))

(declare-fun b!2440837 () Bool)

(assert (=> b!2440837 (= e!1550817 (or (not (= (_2!16596 lt!878224) Nil!28492)) (= lt!878344 (t!208567 (_1!16596 lt!878224)))))))

(declare-fun b!2440836 () Bool)

(declare-fun res!1036342 () Bool)

(assert (=> b!2440836 (=> (not res!1036342) (not e!1550817))))

(assert (=> b!2440836 (= res!1036342 (= (size!22262 lt!878344) (+ (size!22262 (t!208567 (_1!16596 lt!878224))) (size!22262 (_2!16596 lt!878224)))))))

(declare-fun b!2440835 () Bool)

(assert (=> b!2440835 (= e!1550818 (Cons!28492 (h!33893 (t!208567 (_1!16596 lt!878224))) (++!7080 (t!208567 (t!208567 (_1!16596 lt!878224))) (_2!16596 lt!878224))))))

(assert (= (and d!704735 c!389459) b!2440834))

(assert (= (and d!704735 (not c!389459)) b!2440835))

(assert (= (and d!704735 res!1036341) b!2440836))

(assert (= (and b!2440836 res!1036342) b!2440837))

(declare-fun m!2818877 () Bool)

(assert (=> d!704735 m!2818877))

(assert (=> d!704735 m!2818823))

(assert (=> d!704735 m!2818283))

(declare-fun m!2818879 () Bool)

(assert (=> b!2440836 m!2818879))

(declare-fun m!2818881 () Bool)

(assert (=> b!2440836 m!2818881))

(assert (=> b!2440836 m!2818289))

(declare-fun m!2818883 () Bool)

(assert (=> b!2440835 m!2818883))

(assert (=> b!2439981 d!704735))

(declare-fun b!2440838 () Bool)

(declare-fun e!1550822 () Bool)

(declare-fun lt!878345 () Bool)

(declare-fun call!149488 () Bool)

(assert (=> b!2440838 (= e!1550822 (= lt!878345 call!149488))))

(declare-fun d!704737 () Bool)

(assert (=> d!704737 e!1550822))

(declare-fun c!389462 () Bool)

(assert (=> d!704737 (= c!389462 ((_ is EmptyExpr!7177) lt!878222))))

(declare-fun e!1550820 () Bool)

(assert (=> d!704737 (= lt!878345 e!1550820)))

(declare-fun c!389460 () Bool)

(assert (=> d!704737 (= c!389460 (isEmpty!16534 (_1!16596 (get!8795 lt!878298))))))

(assert (=> d!704737 (validRegex!2889 lt!878222)))

(assert (=> d!704737 (= (matchR!3292 lt!878222 (_1!16596 (get!8795 lt!878298))) lt!878345)))

(declare-fun b!2440839 () Bool)

(declare-fun e!1550824 () Bool)

(assert (=> b!2440839 (= e!1550822 e!1550824)))

(declare-fun c!389461 () Bool)

(assert (=> b!2440839 (= c!389461 ((_ is EmptyLang!7177) lt!878222))))

(declare-fun b!2440840 () Bool)

(declare-fun res!1036345 () Bool)

(declare-fun e!1550819 () Bool)

(assert (=> b!2440840 (=> res!1036345 e!1550819)))

(declare-fun e!1550823 () Bool)

(assert (=> b!2440840 (= res!1036345 e!1550823)))

(declare-fun res!1036348 () Bool)

(assert (=> b!2440840 (=> (not res!1036348) (not e!1550823))))

(assert (=> b!2440840 (= res!1036348 lt!878345)))

(declare-fun b!2440841 () Bool)

(assert (=> b!2440841 (= e!1550824 (not lt!878345))))

(declare-fun b!2440842 () Bool)

(declare-fun e!1550825 () Bool)

(assert (=> b!2440842 (= e!1550819 e!1550825)))

(declare-fun res!1036350 () Bool)

(assert (=> b!2440842 (=> (not res!1036350) (not e!1550825))))

(assert (=> b!2440842 (= res!1036350 (not lt!878345))))

(declare-fun b!2440843 () Bool)

(declare-fun res!1036347 () Bool)

(assert (=> b!2440843 (=> (not res!1036347) (not e!1550823))))

(assert (=> b!2440843 (= res!1036347 (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878298)))))))

(declare-fun b!2440844 () Bool)

(declare-fun e!1550821 () Bool)

(assert (=> b!2440844 (= e!1550825 e!1550821)))

(declare-fun res!1036344 () Bool)

(assert (=> b!2440844 (=> res!1036344 e!1550821)))

(assert (=> b!2440844 (= res!1036344 call!149488)))

(declare-fun b!2440845 () Bool)

(assert (=> b!2440845 (= e!1550820 (nullable!2198 lt!878222))))

(declare-fun b!2440846 () Bool)

(assert (=> b!2440846 (= e!1550823 (= (head!5545 (_1!16596 (get!8795 lt!878298))) (c!389219 lt!878222)))))

(declare-fun b!2440847 () Bool)

(declare-fun res!1036349 () Bool)

(assert (=> b!2440847 (=> (not res!1036349) (not e!1550823))))

(assert (=> b!2440847 (= res!1036349 (not call!149488))))

(declare-fun bm!149483 () Bool)

(assert (=> bm!149483 (= call!149488 (isEmpty!16534 (_1!16596 (get!8795 lt!878298))))))

(declare-fun b!2440848 () Bool)

(declare-fun res!1036343 () Bool)

(assert (=> b!2440848 (=> res!1036343 e!1550821)))

(assert (=> b!2440848 (= res!1036343 (not (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878298))))))))

(declare-fun b!2440849 () Bool)

(assert (=> b!2440849 (= e!1550820 (matchR!3292 (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298)))) (tail!3818 (_1!16596 (get!8795 lt!878298)))))))

(declare-fun b!2440850 () Bool)

(declare-fun res!1036346 () Bool)

(assert (=> b!2440850 (=> res!1036346 e!1550819)))

(assert (=> b!2440850 (= res!1036346 (not ((_ is ElementMatch!7177) lt!878222)))))

(assert (=> b!2440850 (= e!1550824 e!1550819)))

(declare-fun b!2440851 () Bool)

(assert (=> b!2440851 (= e!1550821 (not (= (head!5545 (_1!16596 (get!8795 lt!878298))) (c!389219 lt!878222))))))

(assert (= (and d!704737 c!389460) b!2440845))

(assert (= (and d!704737 (not c!389460)) b!2440849))

(assert (= (and d!704737 c!389462) b!2440838))

(assert (= (and d!704737 (not c!389462)) b!2440839))

(assert (= (and b!2440839 c!389461) b!2440841))

(assert (= (and b!2440839 (not c!389461)) b!2440850))

(assert (= (and b!2440850 (not res!1036346)) b!2440840))

(assert (= (and b!2440840 res!1036348) b!2440847))

(assert (= (and b!2440847 res!1036349) b!2440843))

(assert (= (and b!2440843 res!1036347) b!2440846))

(assert (= (and b!2440840 (not res!1036345)) b!2440842))

(assert (= (and b!2440842 res!1036350) b!2440844))

(assert (= (and b!2440844 (not res!1036344)) b!2440848))

(assert (= (and b!2440848 (not res!1036343)) b!2440851))

(assert (= (or b!2440838 b!2440847 b!2440844) bm!149483))

(declare-fun m!2818885 () Bool)

(assert (=> b!2440848 m!2818885))

(assert (=> b!2440848 m!2818885))

(declare-fun m!2818887 () Bool)

(assert (=> b!2440848 m!2818887))

(declare-fun m!2818889 () Bool)

(assert (=> b!2440851 m!2818889))

(assert (=> b!2440843 m!2818885))

(assert (=> b!2440843 m!2818885))

(assert (=> b!2440843 m!2818887))

(declare-fun m!2818891 () Bool)

(assert (=> d!704737 m!2818891))

(assert (=> d!704737 m!2818205))

(assert (=> bm!149483 m!2818891))

(assert (=> b!2440845 m!2818207))

(assert (=> b!2440846 m!2818889))

(assert (=> b!2440849 m!2818889))

(assert (=> b!2440849 m!2818889))

(declare-fun m!2818893 () Bool)

(assert (=> b!2440849 m!2818893))

(assert (=> b!2440849 m!2818885))

(assert (=> b!2440849 m!2818893))

(assert (=> b!2440849 m!2818885))

(declare-fun m!2818895 () Bool)

(assert (=> b!2440849 m!2818895))

(assert (=> b!2440129 d!704737))

(assert (=> b!2440129 d!704725))

(assert (=> b!2439790 d!704481))

(declare-fun d!704739 () Bool)

(assert (=> d!704739 (= (isEmpty!16535 lt!878223) (not ((_ is Some!5665) lt!878223)))))

(assert (=> d!704533 d!704739))

(declare-fun d!704741 () Bool)

(assert (=> d!704741 (= (isEmpty!16534 s!9460) ((_ is Nil!28492) s!9460))))

(assert (=> d!704463 d!704741))

(assert (=> d!704463 d!704731))

(declare-fun b!2440852 () Bool)

(declare-fun e!1550827 () List!28590)

(assert (=> b!2440852 (= e!1550827 (_2!16596 (get!8795 lt!878298)))))

(declare-fun d!704743 () Bool)

(declare-fun e!1550826 () Bool)

(assert (=> d!704743 e!1550826))

(declare-fun res!1036351 () Bool)

(assert (=> d!704743 (=> (not res!1036351) (not e!1550826))))

(declare-fun lt!878346 () List!28590)

(assert (=> d!704743 (= res!1036351 (= (content!3924 lt!878346) ((_ map or) (content!3924 (_1!16596 (get!8795 lt!878298))) (content!3924 (_2!16596 (get!8795 lt!878298))))))))

(assert (=> d!704743 (= lt!878346 e!1550827)))

(declare-fun c!389463 () Bool)

(assert (=> d!704743 (= c!389463 ((_ is Nil!28492) (_1!16596 (get!8795 lt!878298))))))

(assert (=> d!704743 (= (++!7080 (_1!16596 (get!8795 lt!878298)) (_2!16596 (get!8795 lt!878298))) lt!878346)))

(declare-fun b!2440855 () Bool)

(assert (=> b!2440855 (= e!1550826 (or (not (= (_2!16596 (get!8795 lt!878298)) Nil!28492)) (= lt!878346 (_1!16596 (get!8795 lt!878298)))))))

(declare-fun b!2440854 () Bool)

(declare-fun res!1036352 () Bool)

(assert (=> b!2440854 (=> (not res!1036352) (not e!1550826))))

(assert (=> b!2440854 (= res!1036352 (= (size!22262 lt!878346) (+ (size!22262 (_1!16596 (get!8795 lt!878298))) (size!22262 (_2!16596 (get!8795 lt!878298))))))))

(declare-fun b!2440853 () Bool)

(assert (=> b!2440853 (= e!1550827 (Cons!28492 (h!33893 (_1!16596 (get!8795 lt!878298))) (++!7080 (t!208567 (_1!16596 (get!8795 lt!878298))) (_2!16596 (get!8795 lt!878298)))))))

(assert (= (and d!704743 c!389463) b!2440852))

(assert (= (and d!704743 (not c!389463)) b!2440853))

(assert (= (and d!704743 res!1036351) b!2440854))

(assert (= (and b!2440854 res!1036352) b!2440855))

(declare-fun m!2818897 () Bool)

(assert (=> d!704743 m!2818897))

(declare-fun m!2818899 () Bool)

(assert (=> d!704743 m!2818899))

(declare-fun m!2818901 () Bool)

(assert (=> d!704743 m!2818901))

(declare-fun m!2818903 () Bool)

(assert (=> b!2440854 m!2818903))

(declare-fun m!2818905 () Bool)

(assert (=> b!2440854 m!2818905))

(declare-fun m!2818907 () Bool)

(assert (=> b!2440854 m!2818907))

(declare-fun m!2818909 () Bool)

(assert (=> b!2440853 m!2818909))

(assert (=> b!2440125 d!704743))

(assert (=> b!2440125 d!704725))

(declare-fun d!704745 () Bool)

(assert (=> d!704745 (= (head!5543 lt!878228) (h!33894 lt!878228))))

(assert (=> b!2439908 d!704745))

(declare-fun b!2440856 () Bool)

(declare-fun e!1550829 () List!28590)

(assert (=> b!2440856 (= e!1550829 (t!208567 s!9460))))

(declare-fun d!704747 () Bool)

(declare-fun e!1550828 () Bool)

(assert (=> d!704747 e!1550828))

(declare-fun res!1036353 () Bool)

(assert (=> d!704747 (=> (not res!1036353) (not e!1550828))))

(declare-fun lt!878347 () List!28590)

(assert (=> d!704747 (= res!1036353 (= (content!3924 lt!878347) ((_ map or) (content!3924 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (content!3924 (t!208567 s!9460)))))))

(assert (=> d!704747 (= lt!878347 e!1550829)))

(declare-fun c!389464 () Bool)

(assert (=> d!704747 (= c!389464 ((_ is Nil!28492) (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(assert (=> d!704747 (= (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460)) lt!878347)))

(declare-fun b!2440859 () Bool)

(assert (=> b!2440859 (= e!1550828 (or (not (= (t!208567 s!9460) Nil!28492)) (= lt!878347 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(declare-fun b!2440858 () Bool)

(declare-fun res!1036354 () Bool)

(assert (=> b!2440858 (=> (not res!1036354) (not e!1550828))))

(assert (=> b!2440858 (= res!1036354 (= (size!22262 lt!878347) (+ (size!22262 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (size!22262 (t!208567 s!9460)))))))

(declare-fun b!2440857 () Bool)

(assert (=> b!2440857 (= e!1550829 (Cons!28492 (h!33893 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (++!7080 (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (t!208567 s!9460))))))

(assert (= (and d!704747 c!389464) b!2440856))

(assert (= (and d!704747 (not c!389464)) b!2440857))

(assert (= (and d!704747 res!1036353) b!2440858))

(assert (= (and b!2440858 res!1036354) b!2440859))

(declare-fun m!2818911 () Bool)

(assert (=> d!704747 m!2818911))

(assert (=> d!704747 m!2818373))

(declare-fun m!2818913 () Bool)

(assert (=> d!704747 m!2818913))

(declare-fun m!2818915 () Bool)

(assert (=> d!704747 m!2818915))

(declare-fun m!2818917 () Bool)

(assert (=> b!2440858 m!2818917))

(assert (=> b!2440858 m!2818373))

(declare-fun m!2818919 () Bool)

(assert (=> b!2440858 m!2818919))

(declare-fun m!2818921 () Bool)

(assert (=> b!2440858 m!2818921))

(declare-fun m!2818923 () Bool)

(assert (=> b!2440857 m!2818923))

(assert (=> b!2440115 d!704747))

(declare-fun b!2440860 () Bool)

(declare-fun e!1550831 () List!28590)

(assert (=> b!2440860 (= e!1550831 (Cons!28492 (h!33893 s!9460) Nil!28492))))

(declare-fun d!704749 () Bool)

(declare-fun e!1550830 () Bool)

(assert (=> d!704749 e!1550830))

(declare-fun res!1036355 () Bool)

(assert (=> d!704749 (=> (not res!1036355) (not e!1550830))))

(declare-fun lt!878348 () List!28590)

(assert (=> d!704749 (= res!1036355 (= (content!3924 lt!878348) ((_ map or) (content!3924 Nil!28492) (content!3924 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(assert (=> d!704749 (= lt!878348 e!1550831)))

(declare-fun c!389465 () Bool)

(assert (=> d!704749 (= c!389465 ((_ is Nil!28492) Nil!28492))))

(assert (=> d!704749 (= (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) lt!878348)))

(declare-fun b!2440863 () Bool)

(assert (=> b!2440863 (= e!1550830 (or (not (= (Cons!28492 (h!33893 s!9460) Nil!28492) Nil!28492)) (= lt!878348 Nil!28492)))))

(declare-fun b!2440862 () Bool)

(declare-fun res!1036356 () Bool)

(assert (=> b!2440862 (=> (not res!1036356) (not e!1550830))))

(assert (=> b!2440862 (= res!1036356 (= (size!22262 lt!878348) (+ (size!22262 Nil!28492) (size!22262 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(declare-fun b!2440861 () Bool)

(assert (=> b!2440861 (= e!1550831 (Cons!28492 (h!33893 Nil!28492) (++!7080 (t!208567 Nil!28492) (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(assert (= (and d!704749 c!389465) b!2440860))

(assert (= (and d!704749 (not c!389465)) b!2440861))

(assert (= (and d!704749 res!1036355) b!2440862))

(assert (= (and b!2440862 res!1036356) b!2440863))

(declare-fun m!2818925 () Bool)

(assert (=> d!704749 m!2818925))

(declare-fun m!2818927 () Bool)

(assert (=> d!704749 m!2818927))

(declare-fun m!2818929 () Bool)

(assert (=> d!704749 m!2818929))

(declare-fun m!2818931 () Bool)

(assert (=> b!2440862 m!2818931))

(declare-fun m!2818933 () Bool)

(assert (=> b!2440862 m!2818933))

(declare-fun m!2818935 () Bool)

(assert (=> b!2440862 m!2818935))

(declare-fun m!2818937 () Bool)

(assert (=> b!2440861 m!2818937))

(assert (=> b!2440115 d!704749))

(declare-fun d!704751 () Bool)

(assert (=> d!704751 (= (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460)) s!9460)))

(declare-fun lt!878351 () Unit!41737)

(declare-fun choose!14485 (List!28590 C!14512 List!28590 List!28590) Unit!41737)

(assert (=> d!704751 (= lt!878351 (choose!14485 Nil!28492 (h!33893 s!9460) (t!208567 s!9460) s!9460))))

(assert (=> d!704751 (= (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) (t!208567 s!9460))) s!9460)))

(assert (=> d!704751 (= (lemmaMoveElementToOtherListKeepsConcatEq!699 Nil!28492 (h!33893 s!9460) (t!208567 s!9460) s!9460) lt!878351)))

(declare-fun bs!464893 () Bool)

(assert (= bs!464893 d!704751))

(assert (=> bs!464893 m!2818373))

(assert (=> bs!464893 m!2818373))

(assert (=> bs!464893 m!2818375))

(declare-fun m!2818939 () Bool)

(assert (=> bs!464893 m!2818939))

(declare-fun m!2818941 () Bool)

(assert (=> bs!464893 m!2818941))

(assert (=> b!2440115 d!704751))

(declare-fun b!2440864 () Bool)

(declare-fun e!1550835 () Bool)

(declare-fun lt!878352 () Option!5666)

(assert (=> b!2440864 (= e!1550835 (= (++!7080 (_1!16596 (get!8795 lt!878352)) (_2!16596 (get!8795 lt!878352))) s!9460))))

(declare-fun b!2440865 () Bool)

(declare-fun e!1550834 () Bool)

(assert (=> b!2440865 (= e!1550834 (not (isDefined!4492 lt!878352)))))

(declare-fun d!704753 () Bool)

(assert (=> d!704753 e!1550834))

(declare-fun res!1036360 () Bool)

(assert (=> d!704753 (=> res!1036360 e!1550834)))

(assert (=> d!704753 (= res!1036360 e!1550835)))

(declare-fun res!1036361 () Bool)

(assert (=> d!704753 (=> (not res!1036361) (not e!1550835))))

(assert (=> d!704753 (= res!1036361 (isDefined!4492 lt!878352))))

(declare-fun e!1550832 () Option!5666)

(assert (=> d!704753 (= lt!878352 e!1550832)))

(declare-fun c!389466 () Bool)

(declare-fun e!1550833 () Bool)

(assert (=> d!704753 (= c!389466 e!1550833)))

(declare-fun res!1036357 () Bool)

(assert (=> d!704753 (=> (not res!1036357) (not e!1550833))))

(assert (=> d!704753 (= res!1036357 (matchR!3292 (regOne!14866 r!13927) (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(assert (=> d!704753 (validRegex!2889 (regOne!14866 r!13927))))

(assert (=> d!704753 (= (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460) s!9460) lt!878352)))

(declare-fun b!2440866 () Bool)

(declare-fun res!1036359 () Bool)

(assert (=> b!2440866 (=> (not res!1036359) (not e!1550835))))

(assert (=> b!2440866 (= res!1036359 (matchR!3292 (regTwo!14866 r!13927) (_2!16596 (get!8795 lt!878352))))))

(declare-fun b!2440867 () Bool)

(assert (=> b!2440867 (= e!1550833 (matchR!3292 (regTwo!14866 r!13927) (t!208567 s!9460)))))

(declare-fun b!2440868 () Bool)

(declare-fun res!1036358 () Bool)

(assert (=> b!2440868 (=> (not res!1036358) (not e!1550835))))

(assert (=> b!2440868 (= res!1036358 (matchR!3292 (regOne!14866 r!13927) (_1!16596 (get!8795 lt!878352))))))

(declare-fun b!2440869 () Bool)

(declare-fun lt!878353 () Unit!41737)

(declare-fun lt!878354 () Unit!41737)

(assert (=> b!2440869 (= lt!878353 lt!878354)))

(assert (=> b!2440869 (= (++!7080 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (t!208567 (t!208567 s!9460))) s!9460)))

(assert (=> b!2440869 (= lt!878354 (lemmaMoveElementToOtherListKeepsConcatEq!699 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (h!33893 (t!208567 s!9460)) (t!208567 (t!208567 s!9460)) s!9460))))

(declare-fun e!1550836 () Option!5666)

(assert (=> b!2440869 (= e!1550836 (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (t!208567 (t!208567 s!9460)) s!9460))))

(declare-fun b!2440870 () Bool)

(assert (=> b!2440870 (= e!1550832 e!1550836)))

(declare-fun c!389467 () Bool)

(assert (=> b!2440870 (= c!389467 ((_ is Nil!28492) (t!208567 s!9460)))))

(declare-fun b!2440871 () Bool)

(assert (=> b!2440871 (= e!1550836 None!5665)))

(declare-fun b!2440872 () Bool)

(assert (=> b!2440872 (= e!1550832 (Some!5665 (tuple2!28111 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460))))))

(assert (= (and d!704753 res!1036357) b!2440867))

(assert (= (and d!704753 c!389466) b!2440872))

(assert (= (and d!704753 (not c!389466)) b!2440870))

(assert (= (and b!2440870 c!389467) b!2440871))

(assert (= (and b!2440870 (not c!389467)) b!2440869))

(assert (= (and d!704753 res!1036361) b!2440868))

(assert (= (and b!2440868 res!1036358) b!2440866))

(assert (= (and b!2440866 res!1036359) b!2440864))

(assert (= (and d!704753 (not res!1036360)) b!2440865))

(declare-fun m!2818943 () Bool)

(assert (=> b!2440865 m!2818943))

(declare-fun m!2818945 () Bool)

(assert (=> b!2440868 m!2818945))

(declare-fun m!2818947 () Bool)

(assert (=> b!2440868 m!2818947))

(assert (=> d!704753 m!2818943))

(assert (=> d!704753 m!2818373))

(declare-fun m!2818949 () Bool)

(assert (=> d!704753 m!2818949))

(assert (=> d!704753 m!2818351))

(assert (=> b!2440866 m!2818945))

(declare-fun m!2818951 () Bool)

(assert (=> b!2440866 m!2818951))

(assert (=> b!2440869 m!2818373))

(declare-fun m!2818953 () Bool)

(assert (=> b!2440869 m!2818953))

(assert (=> b!2440869 m!2818953))

(declare-fun m!2818955 () Bool)

(assert (=> b!2440869 m!2818955))

(assert (=> b!2440869 m!2818373))

(declare-fun m!2818957 () Bool)

(assert (=> b!2440869 m!2818957))

(assert (=> b!2440869 m!2818953))

(declare-fun m!2818959 () Bool)

(assert (=> b!2440869 m!2818959))

(assert (=> b!2440864 m!2818945))

(declare-fun m!2818961 () Bool)

(assert (=> b!2440864 m!2818961))

(declare-fun m!2818963 () Bool)

(assert (=> b!2440867 m!2818963))

(assert (=> b!2440115 d!704753))

(assert (=> bm!149396 d!704717))

(declare-fun d!704755 () Bool)

(declare-fun nullableFct!534 (Regex!7177) Bool)

(assert (=> d!704755 (= (nullable!2198 r!13927) (nullableFct!534 r!13927))))

(declare-fun bs!464894 () Bool)

(assert (= bs!464894 d!704755))

(declare-fun m!2818965 () Bool)

(assert (=> bs!464894 m!2818965))

(assert (=> b!2440184 d!704755))

(declare-fun b!2440873 () Bool)

(declare-fun e!1550840 () Bool)

(declare-fun lt!878355 () Bool)

(declare-fun call!149489 () Bool)

(assert (=> b!2440873 (= e!1550840 (= lt!878355 call!149489))))

(declare-fun d!704757 () Bool)

(assert (=> d!704757 e!1550840))

(declare-fun c!389470 () Bool)

(assert (=> d!704757 (= c!389470 ((_ is EmptyExpr!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun e!1550838 () Bool)

(assert (=> d!704757 (= lt!878355 e!1550838)))

(declare-fun c!389468 () Bool)

(assert (=> d!704757 (= c!389468 (isEmpty!16534 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(assert (=> d!704757 (validRegex!2889 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(assert (=> d!704757 (= (matchR!3292 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) lt!878355)))

(declare-fun b!2440874 () Bool)

(declare-fun e!1550842 () Bool)

(assert (=> b!2440874 (= e!1550840 e!1550842)))

(declare-fun c!389469 () Bool)

(assert (=> b!2440874 (= c!389469 ((_ is EmptyLang!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2440875 () Bool)

(declare-fun res!1036364 () Bool)

(declare-fun e!1550837 () Bool)

(assert (=> b!2440875 (=> res!1036364 e!1550837)))

(declare-fun e!1550841 () Bool)

(assert (=> b!2440875 (= res!1036364 e!1550841)))

(declare-fun res!1036367 () Bool)

(assert (=> b!2440875 (=> (not res!1036367) (not e!1550841))))

(assert (=> b!2440875 (= res!1036367 lt!878355)))

(declare-fun b!2440876 () Bool)

(assert (=> b!2440876 (= e!1550842 (not lt!878355))))

(declare-fun b!2440877 () Bool)

(declare-fun e!1550843 () Bool)

(assert (=> b!2440877 (= e!1550837 e!1550843)))

(declare-fun res!1036369 () Bool)

(assert (=> b!2440877 (=> (not res!1036369) (not e!1550843))))

(assert (=> b!2440877 (= res!1036369 (not lt!878355))))

(declare-fun b!2440878 () Bool)

(declare-fun res!1036366 () Bool)

(assert (=> b!2440878 (=> (not res!1036366) (not e!1550841))))

(assert (=> b!2440878 (= res!1036366 (isEmpty!16534 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2440879 () Bool)

(declare-fun e!1550839 () Bool)

(assert (=> b!2440879 (= e!1550843 e!1550839)))

(declare-fun res!1036363 () Bool)

(assert (=> b!2440879 (=> res!1036363 e!1550839)))

(assert (=> b!2440879 (= res!1036363 call!149489)))

(declare-fun b!2440880 () Bool)

(assert (=> b!2440880 (= e!1550838 (nullable!2198 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2440881 () Bool)

(assert (=> b!2440881 (= e!1550841 (= (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (c!389219 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(declare-fun b!2440882 () Bool)

(declare-fun res!1036368 () Bool)

(assert (=> b!2440882 (=> (not res!1036368) (not e!1550841))))

(assert (=> b!2440882 (= res!1036368 (not call!149489))))

(declare-fun bm!149484 () Bool)

(assert (=> bm!149484 (= call!149489 (isEmpty!16534 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(declare-fun b!2440883 () Bool)

(declare-fun res!1036362 () Bool)

(assert (=> b!2440883 (=> res!1036362 e!1550839)))

(assert (=> b!2440883 (= res!1036362 (not (isEmpty!16534 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(declare-fun b!2440884 () Bool)

(assert (=> b!2440884 (= e!1550838 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2440885 () Bool)

(declare-fun res!1036365 () Bool)

(assert (=> b!2440885 (=> res!1036365 e!1550837)))

(assert (=> b!2440885 (= res!1036365 (not ((_ is ElementMatch!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(assert (=> b!2440885 (= e!1550842 e!1550837)))

(declare-fun b!2440886 () Bool)

(assert (=> b!2440886 (= e!1550839 (not (= (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (c!389219 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))))

(assert (= (and d!704757 c!389468) b!2440880))

(assert (= (and d!704757 (not c!389468)) b!2440884))

(assert (= (and d!704757 c!389470) b!2440873))

(assert (= (and d!704757 (not c!389470)) b!2440874))

(assert (= (and b!2440874 c!389469) b!2440876))

(assert (= (and b!2440874 (not c!389469)) b!2440885))

(assert (= (and b!2440885 (not res!1036365)) b!2440875))

(assert (= (and b!2440875 res!1036367) b!2440882))

(assert (= (and b!2440882 res!1036368) b!2440878))

(assert (= (and b!2440878 res!1036366) b!2440881))

(assert (= (and b!2440875 (not res!1036364)) b!2440877))

(assert (= (and b!2440877 res!1036369) b!2440879))

(assert (= (and b!2440879 (not res!1036363)) b!2440883))

(assert (= (and b!2440883 (not res!1036362)) b!2440886))

(assert (= (or b!2440873 b!2440882 b!2440879) bm!149484))

(assert (=> b!2440883 m!2818231))

(declare-fun m!2818967 () Bool)

(assert (=> b!2440883 m!2818967))

(assert (=> b!2440883 m!2818967))

(declare-fun m!2818969 () Bool)

(assert (=> b!2440883 m!2818969))

(assert (=> b!2440886 m!2818231))

(declare-fun m!2818971 () Bool)

(assert (=> b!2440886 m!2818971))

(assert (=> b!2440878 m!2818231))

(assert (=> b!2440878 m!2818967))

(assert (=> b!2440878 m!2818967))

(assert (=> b!2440878 m!2818969))

(assert (=> d!704757 m!2818231))

(assert (=> d!704757 m!2818233))

(assert (=> d!704757 m!2818243))

(declare-fun m!2818973 () Bool)

(assert (=> d!704757 m!2818973))

(assert (=> bm!149484 m!2818231))

(assert (=> bm!149484 m!2818233))

(assert (=> b!2440880 m!2818243))

(declare-fun m!2818975 () Bool)

(assert (=> b!2440880 m!2818975))

(assert (=> b!2440881 m!2818231))

(assert (=> b!2440881 m!2818971))

(assert (=> b!2440884 m!2818231))

(assert (=> b!2440884 m!2818971))

(assert (=> b!2440884 m!2818243))

(assert (=> b!2440884 m!2818971))

(declare-fun m!2818977 () Bool)

(assert (=> b!2440884 m!2818977))

(assert (=> b!2440884 m!2818231))

(assert (=> b!2440884 m!2818967))

(assert (=> b!2440884 m!2818977))

(assert (=> b!2440884 m!2818967))

(declare-fun m!2818979 () Bool)

(assert (=> b!2440884 m!2818979))

(assert (=> b!2439930 d!704757))

(declare-fun b!2440907 () Bool)

(declare-fun e!1550857 () Regex!7177)

(declare-fun e!1550854 () Regex!7177)

(assert (=> b!2440907 (= e!1550857 e!1550854)))

(declare-fun c!389483 () Bool)

(assert (=> b!2440907 (= c!389483 ((_ is ElementMatch!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun b!2440908 () Bool)

(assert (=> b!2440908 (= e!1550854 (ite (= (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))) (c!389219 (Concat!11813 lt!878222 EmptyExpr!7177))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun call!149501 () Regex!7177)

(declare-fun c!389482 () Bool)

(declare-fun c!389484 () Bool)

(declare-fun bm!149493 () Bool)

(assert (=> bm!149493 (= call!149501 (derivativeStep!1852 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(declare-fun b!2440910 () Bool)

(declare-fun c!389485 () Bool)

(assert (=> b!2440910 (= c!389485 (nullable!2198 (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))

(declare-fun e!1550855 () Regex!7177)

(declare-fun e!1550856 () Regex!7177)

(assert (=> b!2440910 (= e!1550855 e!1550856)))

(declare-fun b!2440911 () Bool)

(declare-fun call!149498 () Regex!7177)

(assert (=> b!2440911 (= e!1550855 (Concat!11813 call!149498 (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun b!2440912 () Bool)

(assert (=> b!2440912 (= c!389484 ((_ is Union!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun e!1550858 () Regex!7177)

(assert (=> b!2440912 (= e!1550854 e!1550858)))

(declare-fun bm!149494 () Bool)

(assert (=> bm!149494 (= call!149498 call!149501)))

(declare-fun bm!149495 () Bool)

(declare-fun call!149499 () Regex!7177)

(declare-fun call!149500 () Regex!7177)

(assert (=> bm!149495 (= call!149499 call!149500)))

(declare-fun bm!149496 () Bool)

(assert (=> bm!149496 (= call!149500 (derivativeStep!1852 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(declare-fun b!2440909 () Bool)

(assert (=> b!2440909 (= e!1550856 (Union!7177 (Concat!11813 call!149498 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177))) call!149499))))

(declare-fun d!704759 () Bool)

(declare-fun lt!878358 () Regex!7177)

(assert (=> d!704759 (validRegex!2889 lt!878358)))

(assert (=> d!704759 (= lt!878358 e!1550857)))

(declare-fun c!389481 () Bool)

(assert (=> d!704759 (= c!389481 (or ((_ is EmptyExpr!7177) (Concat!11813 lt!878222 EmptyExpr!7177)) ((_ is EmptyLang!7177) (Concat!11813 lt!878222 EmptyExpr!7177))))))

(assert (=> d!704759 (validRegex!2889 (Concat!11813 lt!878222 EmptyExpr!7177))))

(assert (=> d!704759 (= (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) lt!878358)))

(declare-fun b!2440913 () Bool)

(assert (=> b!2440913 (= e!1550858 e!1550855)))

(assert (=> b!2440913 (= c!389482 ((_ is Star!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun b!2440914 () Bool)

(assert (=> b!2440914 (= e!1550857 EmptyLang!7177)))

(declare-fun b!2440915 () Bool)

(assert (=> b!2440915 (= e!1550858 (Union!7177 call!149501 call!149500))))

(declare-fun b!2440916 () Bool)

(assert (=> b!2440916 (= e!1550856 (Union!7177 (Concat!11813 call!149499 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177))) EmptyLang!7177))))

(assert (= (and d!704759 c!389481) b!2440914))

(assert (= (and d!704759 (not c!389481)) b!2440907))

(assert (= (and b!2440907 c!389483) b!2440908))

(assert (= (and b!2440907 (not c!389483)) b!2440912))

(assert (= (and b!2440912 c!389484) b!2440915))

(assert (= (and b!2440912 (not c!389484)) b!2440913))

(assert (= (and b!2440913 c!389482) b!2440911))

(assert (= (and b!2440913 (not c!389482)) b!2440910))

(assert (= (and b!2440910 c!389485) b!2440909))

(assert (= (and b!2440910 (not c!389485)) b!2440916))

(assert (= (or b!2440909 b!2440916) bm!149495))

(assert (= (or b!2440911 b!2440909) bm!149494))

(assert (= (or b!2440915 bm!149494) bm!149493))

(assert (= (or b!2440915 bm!149495) bm!149496))

(assert (=> bm!149493 m!2818235))

(declare-fun m!2818981 () Bool)

(assert (=> bm!149493 m!2818981))

(declare-fun m!2818983 () Bool)

(assert (=> b!2440910 m!2818983))

(assert (=> bm!149496 m!2818235))

(declare-fun m!2818985 () Bool)

(assert (=> bm!149496 m!2818985))

(declare-fun m!2818987 () Bool)

(assert (=> d!704759 m!2818987))

(assert (=> d!704759 m!2818239))

(assert (=> b!2439930 d!704759))

(declare-fun d!704761 () Bool)

(assert (=> d!704761 (= (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))) (h!33893 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))

(assert (=> b!2439930 d!704761))

(declare-fun d!704763 () Bool)

(assert (=> d!704763 (= (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))) (t!208567 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))

(assert (=> b!2439930 d!704763))

(assert (=> b!2439876 d!704721))

(declare-fun b!2440917 () Bool)

(declare-fun e!1550865 () Bool)

(declare-fun e!1550860 () Bool)

(assert (=> b!2440917 (= e!1550865 e!1550860)))

(declare-fun c!389487 () Bool)

(assert (=> b!2440917 (= c!389487 ((_ is Star!7177) lt!878260))))

(declare-fun bm!149497 () Bool)

(declare-fun call!149503 () Bool)

(declare-fun c!389486 () Bool)

(assert (=> bm!149497 (= call!149503 (validRegex!2889 (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260))))))

(declare-fun b!2440918 () Bool)

(declare-fun e!1550859 () Bool)

(assert (=> b!2440918 (= e!1550860 e!1550859)))

(declare-fun res!1036373 () Bool)

(assert (=> b!2440918 (= res!1036373 (not (nullable!2198 (reg!7506 lt!878260))))))

(assert (=> b!2440918 (=> (not res!1036373) (not e!1550859))))

(declare-fun d!704765 () Bool)

(declare-fun res!1036374 () Bool)

(assert (=> d!704765 (=> res!1036374 e!1550865)))

(assert (=> d!704765 (= res!1036374 ((_ is ElementMatch!7177) lt!878260))))

(assert (=> d!704765 (= (validRegex!2889 lt!878260) e!1550865)))

(declare-fun b!2440919 () Bool)

(declare-fun e!1550863 () Bool)

(assert (=> b!2440919 (= e!1550863 call!149503)))

(declare-fun b!2440920 () Bool)

(declare-fun e!1550862 () Bool)

(declare-fun call!149504 () Bool)

(assert (=> b!2440920 (= e!1550862 call!149504)))

(declare-fun b!2440921 () Bool)

(declare-fun res!1036371 () Bool)

(declare-fun e!1550861 () Bool)

(assert (=> b!2440921 (=> res!1036371 e!1550861)))

(assert (=> b!2440921 (= res!1036371 (not ((_ is Concat!11813) lt!878260)))))

(declare-fun e!1550864 () Bool)

(assert (=> b!2440921 (= e!1550864 e!1550861)))

(declare-fun b!2440922 () Bool)

(declare-fun res!1036370 () Bool)

(assert (=> b!2440922 (=> (not res!1036370) (not e!1550862))))

(assert (=> b!2440922 (= res!1036370 call!149503)))

(assert (=> b!2440922 (= e!1550864 e!1550862)))

(declare-fun b!2440923 () Bool)

(assert (=> b!2440923 (= e!1550860 e!1550864)))

(assert (=> b!2440923 (= c!389486 ((_ is Union!7177) lt!878260))))

(declare-fun b!2440924 () Bool)

(assert (=> b!2440924 (= e!1550861 e!1550863)))

(declare-fun res!1036372 () Bool)

(assert (=> b!2440924 (=> (not res!1036372) (not e!1550863))))

(assert (=> b!2440924 (= res!1036372 call!149504)))

(declare-fun b!2440925 () Bool)

(declare-fun call!149502 () Bool)

(assert (=> b!2440925 (= e!1550859 call!149502)))

(declare-fun bm!149498 () Bool)

(assert (=> bm!149498 (= call!149504 call!149502)))

(declare-fun bm!149499 () Bool)

(assert (=> bm!149499 (= call!149502 (validRegex!2889 (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260)))))))

(assert (= (and d!704765 (not res!1036374)) b!2440917))

(assert (= (and b!2440917 c!389487) b!2440918))

(assert (= (and b!2440917 (not c!389487)) b!2440923))

(assert (= (and b!2440918 res!1036373) b!2440925))

(assert (= (and b!2440923 c!389486) b!2440922))

(assert (= (and b!2440923 (not c!389486)) b!2440921))

(assert (= (and b!2440922 res!1036370) b!2440920))

(assert (= (and b!2440921 (not res!1036371)) b!2440924))

(assert (= (and b!2440924 res!1036372) b!2440919))

(assert (= (or b!2440922 b!2440919) bm!149497))

(assert (= (or b!2440920 b!2440924) bm!149498))

(assert (= (or b!2440925 bm!149498) bm!149499))

(declare-fun m!2818989 () Bool)

(assert (=> bm!149497 m!2818989))

(declare-fun m!2818991 () Bool)

(assert (=> b!2440918 m!2818991))

(declare-fun m!2818993 () Bool)

(assert (=> bm!149499 m!2818993))

(assert (=> d!704483 d!704765))

(declare-fun d!704767 () Bool)

(declare-fun res!1036375 () Bool)

(declare-fun e!1550866 () Bool)

(assert (=> d!704767 (=> res!1036375 e!1550866)))

(assert (=> d!704767 (= res!1036375 ((_ is Nil!28493) lt!878228))))

(assert (=> d!704767 (= (forall!5811 lt!878228 lambda!92374) e!1550866)))

(declare-fun b!2440926 () Bool)

(declare-fun e!1550867 () Bool)

(assert (=> b!2440926 (= e!1550866 e!1550867)))

(declare-fun res!1036376 () Bool)

(assert (=> b!2440926 (=> (not res!1036376) (not e!1550867))))

(assert (=> b!2440926 (= res!1036376 (dynLambda!12256 lambda!92374 (h!33894 lt!878228)))))

(declare-fun b!2440927 () Bool)

(assert (=> b!2440927 (= e!1550867 (forall!5811 (t!208568 lt!878228) lambda!92374))))

(assert (= (and d!704767 (not res!1036375)) b!2440926))

(assert (= (and b!2440926 res!1036376) b!2440927))

(declare-fun b_lambda!74939 () Bool)

(assert (=> (not b_lambda!74939) (not b!2440926)))

(declare-fun m!2818995 () Bool)

(assert (=> b!2440926 m!2818995))

(declare-fun m!2818997 () Bool)

(assert (=> b!2440927 m!2818997))

(assert (=> d!704483 d!704767))

(assert (=> b!2439927 d!704761))

(assert (=> d!704541 d!704539))

(assert (=> d!704541 d!704537))

(declare-fun d!704769 () Bool)

(assert (=> d!704769 (= (matchR!3292 r!13927 s!9460) (matchRSpec!1024 r!13927 s!9460))))

(assert (=> d!704769 true))

(declare-fun _$88!3286 () Unit!41737)

(assert (=> d!704769 (= (choose!14483 r!13927 s!9460) _$88!3286)))

(declare-fun bs!464895 () Bool)

(assert (= bs!464895 d!704769))

(assert (=> bs!464895 m!2818061))

(assert (=> bs!464895 m!2818059))

(assert (=> d!704541 d!704769))

(declare-fun b!2440928 () Bool)

(declare-fun e!1550874 () Bool)

(declare-fun e!1550869 () Bool)

(assert (=> b!2440928 (= e!1550874 e!1550869)))

(declare-fun c!389489 () Bool)

(assert (=> b!2440928 (= c!389489 ((_ is Star!7177) r!13927))))

(declare-fun bm!149500 () Bool)

(declare-fun call!149506 () Bool)

(declare-fun c!389488 () Bool)

(assert (=> bm!149500 (= call!149506 (validRegex!2889 (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927))))))

(declare-fun b!2440929 () Bool)

(declare-fun e!1550868 () Bool)

(assert (=> b!2440929 (= e!1550869 e!1550868)))

(declare-fun res!1036380 () Bool)

(assert (=> b!2440929 (= res!1036380 (not (nullable!2198 (reg!7506 r!13927))))))

(assert (=> b!2440929 (=> (not res!1036380) (not e!1550868))))

(declare-fun d!704771 () Bool)

(declare-fun res!1036381 () Bool)

(assert (=> d!704771 (=> res!1036381 e!1550874)))

(assert (=> d!704771 (= res!1036381 ((_ is ElementMatch!7177) r!13927))))

(assert (=> d!704771 (= (validRegex!2889 r!13927) e!1550874)))

(declare-fun b!2440930 () Bool)

(declare-fun e!1550872 () Bool)

(assert (=> b!2440930 (= e!1550872 call!149506)))

(declare-fun b!2440931 () Bool)

(declare-fun e!1550871 () Bool)

(declare-fun call!149507 () Bool)

(assert (=> b!2440931 (= e!1550871 call!149507)))

(declare-fun b!2440932 () Bool)

(declare-fun res!1036378 () Bool)

(declare-fun e!1550870 () Bool)

(assert (=> b!2440932 (=> res!1036378 e!1550870)))

(assert (=> b!2440932 (= res!1036378 (not ((_ is Concat!11813) r!13927)))))

(declare-fun e!1550873 () Bool)

(assert (=> b!2440932 (= e!1550873 e!1550870)))

(declare-fun b!2440933 () Bool)

(declare-fun res!1036377 () Bool)

(assert (=> b!2440933 (=> (not res!1036377) (not e!1550871))))

(assert (=> b!2440933 (= res!1036377 call!149506)))

(assert (=> b!2440933 (= e!1550873 e!1550871)))

(declare-fun b!2440934 () Bool)

(assert (=> b!2440934 (= e!1550869 e!1550873)))

(assert (=> b!2440934 (= c!389488 ((_ is Union!7177) r!13927))))

(declare-fun b!2440935 () Bool)

(assert (=> b!2440935 (= e!1550870 e!1550872)))

(declare-fun res!1036379 () Bool)

(assert (=> b!2440935 (=> (not res!1036379) (not e!1550872))))

(assert (=> b!2440935 (= res!1036379 call!149507)))

(declare-fun b!2440936 () Bool)

(declare-fun call!149505 () Bool)

(assert (=> b!2440936 (= e!1550868 call!149505)))

(declare-fun bm!149501 () Bool)

(assert (=> bm!149501 (= call!149507 call!149505)))

(declare-fun bm!149502 () Bool)

(assert (=> bm!149502 (= call!149505 (validRegex!2889 (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927)))))))

(assert (= (and d!704771 (not res!1036381)) b!2440928))

(assert (= (and b!2440928 c!389489) b!2440929))

(assert (= (and b!2440928 (not c!389489)) b!2440934))

(assert (= (and b!2440929 res!1036380) b!2440936))

(assert (= (and b!2440934 c!389488) b!2440933))

(assert (= (and b!2440934 (not c!389488)) b!2440932))

(assert (= (and b!2440933 res!1036377) b!2440931))

(assert (= (and b!2440932 (not res!1036378)) b!2440935))

(assert (= (and b!2440935 res!1036379) b!2440930))

(assert (= (or b!2440933 b!2440930) bm!149500))

(assert (= (or b!2440931 b!2440935) bm!149501))

(assert (= (or b!2440936 bm!149501) bm!149502))

(declare-fun m!2818999 () Bool)

(assert (=> bm!149500 m!2818999))

(declare-fun m!2819001 () Bool)

(assert (=> b!2440929 m!2819001))

(declare-fun m!2819003 () Bool)

(assert (=> bm!149502 m!2819003))

(assert (=> d!704541 d!704771))

(declare-fun d!704773 () Bool)

(assert (=> d!704773 (= (Exists!1213 lambda!92390) (choose!14482 lambda!92390))))

(declare-fun bs!464896 () Bool)

(assert (= bs!464896 d!704773))

(declare-fun m!2819005 () Bool)

(assert (=> bs!464896 m!2819005))

(assert (=> d!704523 d!704773))

(declare-fun d!704775 () Bool)

(assert (=> d!704775 (= (Exists!1213 lambda!92391) (choose!14482 lambda!92391))))

(declare-fun bs!464897 () Bool)

(assert (= bs!464897 d!704775))

(declare-fun m!2819007 () Bool)

(assert (=> bs!464897 m!2819007))

(assert (=> d!704523 d!704775))

(declare-fun bs!464898 () Bool)

(declare-fun d!704777 () Bool)

(assert (= bs!464898 (and d!704777 b!2440176)))

(declare-fun lambda!92418 () Int)

(assert (=> bs!464898 (not (= lambda!92418 lambda!92396))))

(declare-fun bs!464899 () Bool)

(assert (= bs!464899 (and d!704777 b!2440171)))

(assert (=> bs!464899 (not (= lambda!92418 lambda!92397))))

(declare-fun bs!464900 () Bool)

(assert (= bs!464900 (and d!704777 d!704523)))

(assert (=> bs!464900 (= lambda!92418 lambda!92390)))

(assert (=> bs!464900 (not (= lambda!92418 lambda!92391))))

(declare-fun bs!464901 () Bool)

(assert (= bs!464901 (and d!704777 b!2439691)))

(assert (=> bs!464901 (= lambda!92418 lambda!92358)))

(assert (=> bs!464901 (not (= lambda!92418 lambda!92359))))

(declare-fun bs!464902 () Bool)

(assert (= bs!464902 (and d!704777 d!704513)))

(assert (=> bs!464902 (= lambda!92418 lambda!92385)))

(assert (=> d!704777 true))

(assert (=> d!704777 true))

(assert (=> d!704777 true))

(declare-fun lambda!92419 () Int)

(assert (=> bs!464898 (not (= lambda!92419 lambda!92396))))

(assert (=> bs!464899 (= lambda!92419 lambda!92397)))

(assert (=> bs!464900 (not (= lambda!92419 lambda!92390))))

(assert (=> bs!464900 (= lambda!92419 lambda!92391)))

(declare-fun bs!464903 () Bool)

(assert (= bs!464903 d!704777))

(assert (=> bs!464903 (not (= lambda!92419 lambda!92418))))

(assert (=> bs!464901 (not (= lambda!92419 lambda!92358))))

(assert (=> bs!464901 (= lambda!92419 lambda!92359)))

(assert (=> bs!464902 (not (= lambda!92419 lambda!92385))))

(assert (=> d!704777 true))

(assert (=> d!704777 true))

(assert (=> d!704777 true))

(assert (=> d!704777 (= (Exists!1213 lambda!92418) (Exists!1213 lambda!92419))))

(assert (=> d!704777 true))

(declare-fun _$90!928 () Unit!41737)

(assert (=> d!704777 (= (choose!14481 (regOne!14866 r!13927) (regTwo!14866 r!13927) s!9460) _$90!928)))

(declare-fun m!2819009 () Bool)

(assert (=> bs!464903 m!2819009))

(declare-fun m!2819011 () Bool)

(assert (=> bs!464903 m!2819011))

(assert (=> d!704523 d!704777))

(declare-fun b!2440945 () Bool)

(declare-fun e!1550885 () Bool)

(declare-fun e!1550880 () Bool)

(assert (=> b!2440945 (= e!1550885 e!1550880)))

(declare-fun c!389491 () Bool)

(assert (=> b!2440945 (= c!389491 ((_ is Star!7177) (regOne!14866 r!13927)))))

(declare-fun bm!149503 () Bool)

(declare-fun call!149509 () Bool)

(declare-fun c!389490 () Bool)

(assert (=> bm!149503 (= call!149509 (validRegex!2889 (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927)))))))

(declare-fun b!2440946 () Bool)

(declare-fun e!1550879 () Bool)

(assert (=> b!2440946 (= e!1550880 e!1550879)))

(declare-fun res!1036393 () Bool)

(assert (=> b!2440946 (= res!1036393 (not (nullable!2198 (reg!7506 (regOne!14866 r!13927)))))))

(assert (=> b!2440946 (=> (not res!1036393) (not e!1550879))))

(declare-fun d!704779 () Bool)

(declare-fun res!1036394 () Bool)

(assert (=> d!704779 (=> res!1036394 e!1550885)))

(assert (=> d!704779 (= res!1036394 ((_ is ElementMatch!7177) (regOne!14866 r!13927)))))

(assert (=> d!704779 (= (validRegex!2889 (regOne!14866 r!13927)) e!1550885)))

(declare-fun b!2440947 () Bool)

(declare-fun e!1550883 () Bool)

(assert (=> b!2440947 (= e!1550883 call!149509)))

(declare-fun b!2440948 () Bool)

(declare-fun e!1550882 () Bool)

(declare-fun call!149510 () Bool)

(assert (=> b!2440948 (= e!1550882 call!149510)))

(declare-fun b!2440949 () Bool)

(declare-fun res!1036391 () Bool)

(declare-fun e!1550881 () Bool)

(assert (=> b!2440949 (=> res!1036391 e!1550881)))

(assert (=> b!2440949 (= res!1036391 (not ((_ is Concat!11813) (regOne!14866 r!13927))))))

(declare-fun e!1550884 () Bool)

(assert (=> b!2440949 (= e!1550884 e!1550881)))

(declare-fun b!2440950 () Bool)

(declare-fun res!1036390 () Bool)

(assert (=> b!2440950 (=> (not res!1036390) (not e!1550882))))

(assert (=> b!2440950 (= res!1036390 call!149509)))

(assert (=> b!2440950 (= e!1550884 e!1550882)))

(declare-fun b!2440951 () Bool)

(assert (=> b!2440951 (= e!1550880 e!1550884)))

(assert (=> b!2440951 (= c!389490 ((_ is Union!7177) (regOne!14866 r!13927)))))

(declare-fun b!2440952 () Bool)

(assert (=> b!2440952 (= e!1550881 e!1550883)))

(declare-fun res!1036392 () Bool)

(assert (=> b!2440952 (=> (not res!1036392) (not e!1550883))))

(assert (=> b!2440952 (= res!1036392 call!149510)))

(declare-fun b!2440953 () Bool)

(declare-fun call!149508 () Bool)

(assert (=> b!2440953 (= e!1550879 call!149508)))

(declare-fun bm!149504 () Bool)

(assert (=> bm!149504 (= call!149510 call!149508)))

(declare-fun bm!149505 () Bool)

(assert (=> bm!149505 (= call!149508 (validRegex!2889 (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927))))))))

(assert (= (and d!704779 (not res!1036394)) b!2440945))

(assert (= (and b!2440945 c!389491) b!2440946))

(assert (= (and b!2440945 (not c!389491)) b!2440951))

(assert (= (and b!2440946 res!1036393) b!2440953))

(assert (= (and b!2440951 c!389490) b!2440950))

(assert (= (and b!2440951 (not c!389490)) b!2440949))

(assert (= (and b!2440950 res!1036390) b!2440948))

(assert (= (and b!2440949 (not res!1036391)) b!2440952))

(assert (= (and b!2440952 res!1036392) b!2440947))

(assert (= (or b!2440950 b!2440947) bm!149503))

(assert (= (or b!2440948 b!2440952) bm!149504))

(assert (= (or b!2440953 bm!149504) bm!149505))

(declare-fun m!2819013 () Bool)

(assert (=> bm!149503 m!2819013))

(declare-fun m!2819015 () Bool)

(assert (=> b!2440946 m!2819015))

(declare-fun m!2819017 () Bool)

(assert (=> bm!149505 m!2819017))

(assert (=> d!704523 d!704779))

(assert (=> bm!149391 d!704741))

(declare-fun bs!464904 () Bool)

(declare-fun d!704781 () Bool)

(assert (= bs!464904 (and d!704781 start!238766)))

(declare-fun lambda!92420 () Int)

(assert (=> bs!464904 (= lambda!92420 lambda!92357)))

(declare-fun bs!464905 () Bool)

(assert (= bs!464905 (and d!704781 d!704451)))

(assert (=> bs!464905 (= lambda!92420 lambda!92365)))

(declare-fun bs!464906 () Bool)

(assert (= bs!464906 (and d!704781 d!704483)))

(assert (=> bs!464906 (= lambda!92420 lambda!92374)))

(declare-fun bs!464907 () Bool)

(assert (= bs!464907 (and d!704781 d!704715)))

(assert (=> bs!464907 (= lambda!92420 lambda!92413)))

(declare-fun b!2440954 () Bool)

(declare-fun e!1550887 () Regex!7177)

(assert (=> b!2440954 (= e!1550887 EmptyExpr!7177)))

(declare-fun b!2440955 () Bool)

(declare-fun e!1550886 () Regex!7177)

(assert (=> b!2440955 (= e!1550886 e!1550887)))

(declare-fun c!389492 () Bool)

(assert (=> b!2440955 (= c!389492 ((_ is Cons!28493) (t!208568 lt!878228)))))

(declare-fun b!2440956 () Bool)

(declare-fun e!1550890 () Bool)

(assert (=> b!2440956 (= e!1550890 (isEmpty!16531 (t!208568 (t!208568 lt!878228))))))

(declare-fun b!2440957 () Bool)

(declare-fun e!1550888 () Bool)

(declare-fun lt!878359 () Regex!7177)

(assert (=> b!2440957 (= e!1550888 (= lt!878359 (head!5543 (t!208568 lt!878228))))))

(declare-fun b!2440958 () Bool)

(declare-fun e!1550891 () Bool)

(assert (=> b!2440958 (= e!1550891 e!1550888)))

(declare-fun c!389494 () Bool)

(assert (=> b!2440958 (= c!389494 (isEmpty!16531 (tail!3816 (t!208568 lt!878228))))))

(declare-fun b!2440959 () Bool)

(assert (=> b!2440959 (= e!1550886 (h!33894 (t!208568 lt!878228)))))

(declare-fun b!2440960 () Bool)

(assert (=> b!2440960 (= e!1550888 (isConcat!215 lt!878359))))

(declare-fun b!2440961 () Bool)

(assert (=> b!2440961 (= e!1550887 (Concat!11813 (h!33894 (t!208568 lt!878228)) (generalisedConcat!278 (t!208568 (t!208568 lt!878228)))))))

(declare-fun e!1550889 () Bool)

(assert (=> d!704781 e!1550889))

(declare-fun res!1036395 () Bool)

(assert (=> d!704781 (=> (not res!1036395) (not e!1550889))))

(assert (=> d!704781 (= res!1036395 (validRegex!2889 lt!878359))))

(assert (=> d!704781 (= lt!878359 e!1550886)))

(declare-fun c!389493 () Bool)

(assert (=> d!704781 (= c!389493 e!1550890)))

(declare-fun res!1036396 () Bool)

(assert (=> d!704781 (=> (not res!1036396) (not e!1550890))))

(assert (=> d!704781 (= res!1036396 ((_ is Cons!28493) (t!208568 lt!878228)))))

(assert (=> d!704781 (forall!5811 (t!208568 lt!878228) lambda!92420)))

(assert (=> d!704781 (= (generalisedConcat!278 (t!208568 lt!878228)) lt!878359)))

(declare-fun b!2440962 () Bool)

(assert (=> b!2440962 (= e!1550891 (isEmptyExpr!215 lt!878359))))

(declare-fun b!2440963 () Bool)

(assert (=> b!2440963 (= e!1550889 e!1550891)))

(declare-fun c!389495 () Bool)

(assert (=> b!2440963 (= c!389495 (isEmpty!16531 (t!208568 lt!878228)))))

(assert (= (and d!704781 res!1036396) b!2440956))

(assert (= (and d!704781 c!389493) b!2440959))

(assert (= (and d!704781 (not c!389493)) b!2440955))

(assert (= (and b!2440955 c!389492) b!2440961))

(assert (= (and b!2440955 (not c!389492)) b!2440954))

(assert (= (and d!704781 res!1036395) b!2440963))

(assert (= (and b!2440963 c!389495) b!2440962))

(assert (= (and b!2440963 (not c!389495)) b!2440958))

(assert (= (and b!2440958 c!389494) b!2440957))

(assert (= (and b!2440958 (not c!389494)) b!2440960))

(declare-fun m!2819019 () Bool)

(assert (=> b!2440961 m!2819019))

(declare-fun m!2819021 () Bool)

(assert (=> b!2440958 m!2819021))

(assert (=> b!2440958 m!2819021))

(declare-fun m!2819023 () Bool)

(assert (=> b!2440958 m!2819023))

(declare-fun m!2819025 () Bool)

(assert (=> d!704781 m!2819025))

(declare-fun m!2819027 () Bool)

(assert (=> d!704781 m!2819027))

(assert (=> b!2440963 m!2818225))

(declare-fun m!2819029 () Bool)

(assert (=> b!2440960 m!2819029))

(declare-fun m!2819031 () Bool)

(assert (=> b!2440956 m!2819031))

(declare-fun m!2819033 () Bool)

(assert (=> b!2440957 m!2819033))

(declare-fun m!2819035 () Bool)

(assert (=> b!2440962 m!2819035))

(assert (=> b!2439912 d!704781))

(declare-fun b!2440964 () Bool)

(declare-fun e!1550895 () Bool)

(declare-fun lt!878360 () Bool)

(declare-fun call!149511 () Bool)

(assert (=> b!2440964 (= e!1550895 (= lt!878360 call!149511))))

(declare-fun d!704783 () Bool)

(assert (=> d!704783 e!1550895))

(declare-fun c!389498 () Bool)

(assert (=> d!704783 (= c!389498 ((_ is EmptyExpr!7177) (regTwo!14866 r!13927)))))

(declare-fun e!1550893 () Bool)

(assert (=> d!704783 (= lt!878360 e!1550893)))

(declare-fun c!389496 () Bool)

(assert (=> d!704783 (= c!389496 (isEmpty!16534 s!9460))))

(assert (=> d!704783 (validRegex!2889 (regTwo!14866 r!13927))))

(assert (=> d!704783 (= (matchR!3292 (regTwo!14866 r!13927) s!9460) lt!878360)))

(declare-fun b!2440965 () Bool)

(declare-fun e!1550897 () Bool)

(assert (=> b!2440965 (= e!1550895 e!1550897)))

(declare-fun c!389497 () Bool)

(assert (=> b!2440965 (= c!389497 ((_ is EmptyLang!7177) (regTwo!14866 r!13927)))))

(declare-fun b!2440966 () Bool)

(declare-fun res!1036399 () Bool)

(declare-fun e!1550892 () Bool)

(assert (=> b!2440966 (=> res!1036399 e!1550892)))

(declare-fun e!1550896 () Bool)

(assert (=> b!2440966 (= res!1036399 e!1550896)))

(declare-fun res!1036402 () Bool)

(assert (=> b!2440966 (=> (not res!1036402) (not e!1550896))))

(assert (=> b!2440966 (= res!1036402 lt!878360)))

(declare-fun b!2440967 () Bool)

(assert (=> b!2440967 (= e!1550897 (not lt!878360))))

(declare-fun b!2440968 () Bool)

(declare-fun e!1550898 () Bool)

(assert (=> b!2440968 (= e!1550892 e!1550898)))

(declare-fun res!1036404 () Bool)

(assert (=> b!2440968 (=> (not res!1036404) (not e!1550898))))

(assert (=> b!2440968 (= res!1036404 (not lt!878360))))

(declare-fun b!2440969 () Bool)

(declare-fun res!1036401 () Bool)

(assert (=> b!2440969 (=> (not res!1036401) (not e!1550896))))

(assert (=> b!2440969 (= res!1036401 (isEmpty!16534 (tail!3818 s!9460)))))

(declare-fun b!2440970 () Bool)

(declare-fun e!1550894 () Bool)

(assert (=> b!2440970 (= e!1550898 e!1550894)))

(declare-fun res!1036398 () Bool)

(assert (=> b!2440970 (=> res!1036398 e!1550894)))

(assert (=> b!2440970 (= res!1036398 call!149511)))

(declare-fun b!2440971 () Bool)

(assert (=> b!2440971 (= e!1550893 (nullable!2198 (regTwo!14866 r!13927)))))

(declare-fun b!2440972 () Bool)

(assert (=> b!2440972 (= e!1550896 (= (head!5545 s!9460) (c!389219 (regTwo!14866 r!13927))))))

(declare-fun b!2440973 () Bool)

(declare-fun res!1036403 () Bool)

(assert (=> b!2440973 (=> (not res!1036403) (not e!1550896))))

(assert (=> b!2440973 (= res!1036403 (not call!149511))))

(declare-fun bm!149506 () Bool)

(assert (=> bm!149506 (= call!149511 (isEmpty!16534 s!9460))))

(declare-fun b!2440974 () Bool)

(declare-fun res!1036397 () Bool)

(assert (=> b!2440974 (=> res!1036397 e!1550894)))

(assert (=> b!2440974 (= res!1036397 (not (isEmpty!16534 (tail!3818 s!9460))))))

(declare-fun b!2440975 () Bool)

(assert (=> b!2440975 (= e!1550893 (matchR!3292 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460)) (tail!3818 s!9460)))))

(declare-fun b!2440976 () Bool)

(declare-fun res!1036400 () Bool)

(assert (=> b!2440976 (=> res!1036400 e!1550892)))

(assert (=> b!2440976 (= res!1036400 (not ((_ is ElementMatch!7177) (regTwo!14866 r!13927))))))

(assert (=> b!2440976 (= e!1550897 e!1550892)))

(declare-fun b!2440977 () Bool)

(assert (=> b!2440977 (= e!1550894 (not (= (head!5545 s!9460) (c!389219 (regTwo!14866 r!13927)))))))

(assert (= (and d!704783 c!389496) b!2440971))

(assert (= (and d!704783 (not c!389496)) b!2440975))

(assert (= (and d!704783 c!389498) b!2440964))

(assert (= (and d!704783 (not c!389498)) b!2440965))

(assert (= (and b!2440965 c!389497) b!2440967))

(assert (= (and b!2440965 (not c!389497)) b!2440976))

(assert (= (and b!2440976 (not res!1036400)) b!2440966))

(assert (= (and b!2440966 res!1036402) b!2440973))

(assert (= (and b!2440973 res!1036403) b!2440969))

(assert (= (and b!2440969 res!1036401) b!2440972))

(assert (= (and b!2440966 (not res!1036399)) b!2440968))

(assert (= (and b!2440968 res!1036404) b!2440970))

(assert (= (and b!2440970 (not res!1036398)) b!2440974))

(assert (= (and b!2440974 (not res!1036397)) b!2440977))

(assert (= (or b!2440964 b!2440973 b!2440970) bm!149506))

(assert (=> b!2440974 m!2818197))

(assert (=> b!2440974 m!2818197))

(assert (=> b!2440974 m!2818199))

(assert (=> b!2440977 m!2818201))

(assert (=> b!2440969 m!2818197))

(assert (=> b!2440969 m!2818197))

(assert (=> b!2440969 m!2818199))

(assert (=> d!704783 m!2818203))

(declare-fun m!2819037 () Bool)

(assert (=> d!704783 m!2819037))

(assert (=> bm!149506 m!2818203))

(declare-fun m!2819039 () Bool)

(assert (=> b!2440971 m!2819039))

(assert (=> b!2440972 m!2818201))

(assert (=> b!2440975 m!2818201))

(assert (=> b!2440975 m!2818201))

(declare-fun m!2819041 () Bool)

(assert (=> b!2440975 m!2819041))

(assert (=> b!2440975 m!2818197))

(assert (=> b!2440975 m!2819041))

(assert (=> b!2440975 m!2818197))

(declare-fun m!2819043 () Bool)

(assert (=> b!2440975 m!2819043))

(assert (=> b!2440113 d!704783))

(declare-fun b!2440978 () Bool)

(declare-fun e!1550902 () Bool)

(declare-fun lt!878361 () Bool)

(declare-fun call!149512 () Bool)

(assert (=> b!2440978 (= e!1550902 (= lt!878361 call!149512))))

(declare-fun d!704785 () Bool)

(assert (=> d!704785 e!1550902))

(declare-fun c!389501 () Bool)

(assert (=> d!704785 (= c!389501 ((_ is EmptyExpr!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(declare-fun e!1550900 () Bool)

(assert (=> d!704785 (= lt!878361 e!1550900)))

(declare-fun c!389499 () Bool)

(assert (=> d!704785 (= c!389499 (isEmpty!16534 (tail!3818 s!9460)))))

(assert (=> d!704785 (validRegex!2889 (derivativeStep!1852 lt!878222 (head!5545 s!9460)))))

(assert (=> d!704785 (= (matchR!3292 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (tail!3818 s!9460)) lt!878361)))

(declare-fun b!2440979 () Bool)

(declare-fun e!1550904 () Bool)

(assert (=> b!2440979 (= e!1550902 e!1550904)))

(declare-fun c!389500 () Bool)

(assert (=> b!2440979 (= c!389500 ((_ is EmptyLang!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(declare-fun b!2440980 () Bool)

(declare-fun res!1036407 () Bool)

(declare-fun e!1550899 () Bool)

(assert (=> b!2440980 (=> res!1036407 e!1550899)))

(declare-fun e!1550903 () Bool)

(assert (=> b!2440980 (= res!1036407 e!1550903)))

(declare-fun res!1036410 () Bool)

(assert (=> b!2440980 (=> (not res!1036410) (not e!1550903))))

(assert (=> b!2440980 (= res!1036410 lt!878361)))

(declare-fun b!2440981 () Bool)

(assert (=> b!2440981 (= e!1550904 (not lt!878361))))

(declare-fun b!2440982 () Bool)

(declare-fun e!1550905 () Bool)

(assert (=> b!2440982 (= e!1550899 e!1550905)))

(declare-fun res!1036412 () Bool)

(assert (=> b!2440982 (=> (not res!1036412) (not e!1550905))))

(assert (=> b!2440982 (= res!1036412 (not lt!878361))))

(declare-fun b!2440983 () Bool)

(declare-fun res!1036409 () Bool)

(assert (=> b!2440983 (=> (not res!1036409) (not e!1550903))))

(assert (=> b!2440983 (= res!1036409 (isEmpty!16534 (tail!3818 (tail!3818 s!9460))))))

(declare-fun b!2440984 () Bool)

(declare-fun e!1550901 () Bool)

(assert (=> b!2440984 (= e!1550905 e!1550901)))

(declare-fun res!1036406 () Bool)

(assert (=> b!2440984 (=> res!1036406 e!1550901)))

(assert (=> b!2440984 (= res!1036406 call!149512)))

(declare-fun b!2440985 () Bool)

(assert (=> b!2440985 (= e!1550900 (nullable!2198 (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(declare-fun b!2440986 () Bool)

(assert (=> b!2440986 (= e!1550903 (= (head!5545 (tail!3818 s!9460)) (c!389219 (derivativeStep!1852 lt!878222 (head!5545 s!9460)))))))

(declare-fun b!2440987 () Bool)

(declare-fun res!1036411 () Bool)

(assert (=> b!2440987 (=> (not res!1036411) (not e!1550903))))

(assert (=> b!2440987 (= res!1036411 (not call!149512))))

(declare-fun bm!149507 () Bool)

(assert (=> bm!149507 (= call!149512 (isEmpty!16534 (tail!3818 s!9460)))))

(declare-fun b!2440988 () Bool)

(declare-fun res!1036405 () Bool)

(assert (=> b!2440988 (=> res!1036405 e!1550901)))

(assert (=> b!2440988 (= res!1036405 (not (isEmpty!16534 (tail!3818 (tail!3818 s!9460)))))))

(declare-fun b!2440989 () Bool)

(assert (=> b!2440989 (= e!1550900 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))) (tail!3818 (tail!3818 s!9460))))))

(declare-fun b!2440990 () Bool)

(declare-fun res!1036408 () Bool)

(assert (=> b!2440990 (=> res!1036408 e!1550899)))

(assert (=> b!2440990 (= res!1036408 (not ((_ is ElementMatch!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460)))))))

(assert (=> b!2440990 (= e!1550904 e!1550899)))

(declare-fun b!2440991 () Bool)

(assert (=> b!2440991 (= e!1550901 (not (= (head!5545 (tail!3818 s!9460)) (c!389219 (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))))

(assert (= (and d!704785 c!389499) b!2440985))

(assert (= (and d!704785 (not c!389499)) b!2440989))

(assert (= (and d!704785 c!389501) b!2440978))

(assert (= (and d!704785 (not c!389501)) b!2440979))

(assert (= (and b!2440979 c!389500) b!2440981))

(assert (= (and b!2440979 (not c!389500)) b!2440990))

(assert (= (and b!2440990 (not res!1036408)) b!2440980))

(assert (= (and b!2440980 res!1036410) b!2440987))

(assert (= (and b!2440987 res!1036411) b!2440983))

(assert (= (and b!2440983 res!1036409) b!2440986))

(assert (= (and b!2440980 (not res!1036407)) b!2440982))

(assert (= (and b!2440982 res!1036412) b!2440984))

(assert (= (and b!2440984 (not res!1036406)) b!2440988))

(assert (= (and b!2440988 (not res!1036405)) b!2440991))

(assert (= (or b!2440978 b!2440987 b!2440984) bm!149507))

(assert (=> b!2440988 m!2818197))

(declare-fun m!2819045 () Bool)

(assert (=> b!2440988 m!2819045))

(assert (=> b!2440988 m!2819045))

(declare-fun m!2819047 () Bool)

(assert (=> b!2440988 m!2819047))

(assert (=> b!2440991 m!2818197))

(declare-fun m!2819049 () Bool)

(assert (=> b!2440991 m!2819049))

(assert (=> b!2440983 m!2818197))

(assert (=> b!2440983 m!2819045))

(assert (=> b!2440983 m!2819045))

(assert (=> b!2440983 m!2819047))

(assert (=> d!704785 m!2818197))

(assert (=> d!704785 m!2818199))

(assert (=> d!704785 m!2818209))

(declare-fun m!2819051 () Bool)

(assert (=> d!704785 m!2819051))

(assert (=> bm!149507 m!2818197))

(assert (=> bm!149507 m!2818199))

(assert (=> b!2440985 m!2818209))

(declare-fun m!2819053 () Bool)

(assert (=> b!2440985 m!2819053))

(assert (=> b!2440986 m!2818197))

(assert (=> b!2440986 m!2819049))

(assert (=> b!2440989 m!2818197))

(assert (=> b!2440989 m!2819049))

(assert (=> b!2440989 m!2818209))

(assert (=> b!2440989 m!2819049))

(declare-fun m!2819055 () Bool)

(assert (=> b!2440989 m!2819055))

(assert (=> b!2440989 m!2818197))

(assert (=> b!2440989 m!2819045))

(assert (=> b!2440989 m!2819055))

(assert (=> b!2440989 m!2819045))

(declare-fun m!2819057 () Bool)

(assert (=> b!2440989 m!2819057))

(assert (=> b!2439874 d!704785))

(declare-fun b!2440992 () Bool)

(declare-fun e!1550909 () Regex!7177)

(declare-fun e!1550906 () Regex!7177)

(assert (=> b!2440992 (= e!1550909 e!1550906)))

(declare-fun c!389504 () Bool)

(assert (=> b!2440992 (= c!389504 ((_ is ElementMatch!7177) lt!878222))))

(declare-fun b!2440993 () Bool)

(assert (=> b!2440993 (= e!1550906 (ite (= (head!5545 s!9460) (c!389219 lt!878222)) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun bm!149508 () Bool)

(declare-fun call!149516 () Regex!7177)

(declare-fun c!389505 () Bool)

(declare-fun c!389503 () Bool)

(assert (=> bm!149508 (= call!149516 (derivativeStep!1852 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222))) (head!5545 s!9460)))))

(declare-fun b!2440995 () Bool)

(declare-fun c!389506 () Bool)

(assert (=> b!2440995 (= c!389506 (nullable!2198 (regOne!14866 lt!878222)))))

(declare-fun e!1550907 () Regex!7177)

(declare-fun e!1550908 () Regex!7177)

(assert (=> b!2440995 (= e!1550907 e!1550908)))

(declare-fun b!2440996 () Bool)

(declare-fun call!149513 () Regex!7177)

(assert (=> b!2440996 (= e!1550907 (Concat!11813 call!149513 lt!878222))))

(declare-fun b!2440997 () Bool)

(assert (=> b!2440997 (= c!389505 ((_ is Union!7177) lt!878222))))

(declare-fun e!1550910 () Regex!7177)

(assert (=> b!2440997 (= e!1550906 e!1550910)))

(declare-fun bm!149509 () Bool)

(assert (=> bm!149509 (= call!149513 call!149516)))

(declare-fun bm!149510 () Bool)

(declare-fun call!149514 () Regex!7177)

(declare-fun call!149515 () Regex!7177)

(assert (=> bm!149510 (= call!149514 call!149515)))

(declare-fun bm!149511 () Bool)

(assert (=> bm!149511 (= call!149515 (derivativeStep!1852 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222))) (head!5545 s!9460)))))

(declare-fun b!2440994 () Bool)

(assert (=> b!2440994 (= e!1550908 (Union!7177 (Concat!11813 call!149513 (regTwo!14866 lt!878222)) call!149514))))

(declare-fun d!704787 () Bool)

(declare-fun lt!878362 () Regex!7177)

(assert (=> d!704787 (validRegex!2889 lt!878362)))

(assert (=> d!704787 (= lt!878362 e!1550909)))

(declare-fun c!389502 () Bool)

(assert (=> d!704787 (= c!389502 (or ((_ is EmptyExpr!7177) lt!878222) ((_ is EmptyLang!7177) lt!878222)))))

(assert (=> d!704787 (validRegex!2889 lt!878222)))

(assert (=> d!704787 (= (derivativeStep!1852 lt!878222 (head!5545 s!9460)) lt!878362)))

(declare-fun b!2440998 () Bool)

(assert (=> b!2440998 (= e!1550910 e!1550907)))

(assert (=> b!2440998 (= c!389503 ((_ is Star!7177) lt!878222))))

(declare-fun b!2440999 () Bool)

(assert (=> b!2440999 (= e!1550909 EmptyLang!7177)))

(declare-fun b!2441000 () Bool)

(assert (=> b!2441000 (= e!1550910 (Union!7177 call!149516 call!149515))))

(declare-fun b!2441001 () Bool)

(assert (=> b!2441001 (= e!1550908 (Union!7177 (Concat!11813 call!149514 (regTwo!14866 lt!878222)) EmptyLang!7177))))

(assert (= (and d!704787 c!389502) b!2440999))

(assert (= (and d!704787 (not c!389502)) b!2440992))

(assert (= (and b!2440992 c!389504) b!2440993))

(assert (= (and b!2440992 (not c!389504)) b!2440997))

(assert (= (and b!2440997 c!389505) b!2441000))

(assert (= (and b!2440997 (not c!389505)) b!2440998))

(assert (= (and b!2440998 c!389503) b!2440996))

(assert (= (and b!2440998 (not c!389503)) b!2440995))

(assert (= (and b!2440995 c!389506) b!2440994))

(assert (= (and b!2440995 (not c!389506)) b!2441001))

(assert (= (or b!2440994 b!2441001) bm!149510))

(assert (= (or b!2440996 b!2440994) bm!149509))

(assert (= (or b!2441000 bm!149509) bm!149508))

(assert (= (or b!2441000 bm!149510) bm!149511))

(assert (=> bm!149508 m!2818201))

(declare-fun m!2819059 () Bool)

(assert (=> bm!149508 m!2819059))

(declare-fun m!2819061 () Bool)

(assert (=> b!2440995 m!2819061))

(assert (=> bm!149511 m!2818201))

(declare-fun m!2819063 () Bool)

(assert (=> bm!149511 m!2819063))

(declare-fun m!2819065 () Bool)

(assert (=> d!704787 m!2819065))

(assert (=> d!704787 m!2818205))

(assert (=> b!2439874 d!704787))

(assert (=> b!2439874 d!704721))

(declare-fun d!704789 () Bool)

(assert (=> d!704789 (= (tail!3818 s!9460) (t!208567 s!9460))))

(assert (=> b!2439874 d!704789))

(assert (=> b!2439914 d!704485))

(declare-fun d!704791 () Bool)

(assert (=> d!704791 (= (isEmpty!16534 (tail!3818 s!9460)) ((_ is Nil!28492) (tail!3818 s!9460)))))

(assert (=> b!2440182 d!704791))

(assert (=> b!2440182 d!704789))

(assert (=> b!2440187 d!704791))

(assert (=> b!2440187 d!704789))

(declare-fun b!2441002 () Bool)

(declare-fun e!1550917 () Bool)

(declare-fun e!1550912 () Bool)

(assert (=> b!2441002 (= e!1550917 e!1550912)))

(declare-fun c!389508 () Bool)

(assert (=> b!2441002 (= c!389508 ((_ is Star!7177) (h!33894 l!9164)))))

(declare-fun bm!149512 () Bool)

(declare-fun call!149518 () Bool)

(declare-fun c!389507 () Bool)

(assert (=> bm!149512 (= call!149518 (validRegex!2889 (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164)))))))

(declare-fun b!2441003 () Bool)

(declare-fun e!1550911 () Bool)

(assert (=> b!2441003 (= e!1550912 e!1550911)))

(declare-fun res!1036416 () Bool)

(assert (=> b!2441003 (= res!1036416 (not (nullable!2198 (reg!7506 (h!33894 l!9164)))))))

(assert (=> b!2441003 (=> (not res!1036416) (not e!1550911))))

(declare-fun d!704793 () Bool)

(declare-fun res!1036417 () Bool)

(assert (=> d!704793 (=> res!1036417 e!1550917)))

(assert (=> d!704793 (= res!1036417 ((_ is ElementMatch!7177) (h!33894 l!9164)))))

(assert (=> d!704793 (= (validRegex!2889 (h!33894 l!9164)) e!1550917)))

(declare-fun b!2441004 () Bool)

(declare-fun e!1550915 () Bool)

(assert (=> b!2441004 (= e!1550915 call!149518)))

(declare-fun b!2441005 () Bool)

(declare-fun e!1550914 () Bool)

(declare-fun call!149519 () Bool)

(assert (=> b!2441005 (= e!1550914 call!149519)))

(declare-fun b!2441006 () Bool)

(declare-fun res!1036414 () Bool)

(declare-fun e!1550913 () Bool)

(assert (=> b!2441006 (=> res!1036414 e!1550913)))

(assert (=> b!2441006 (= res!1036414 (not ((_ is Concat!11813) (h!33894 l!9164))))))

(declare-fun e!1550916 () Bool)

(assert (=> b!2441006 (= e!1550916 e!1550913)))

(declare-fun b!2441007 () Bool)

(declare-fun res!1036413 () Bool)

(assert (=> b!2441007 (=> (not res!1036413) (not e!1550914))))

(assert (=> b!2441007 (= res!1036413 call!149518)))

(assert (=> b!2441007 (= e!1550916 e!1550914)))

(declare-fun b!2441008 () Bool)

(assert (=> b!2441008 (= e!1550912 e!1550916)))

(assert (=> b!2441008 (= c!389507 ((_ is Union!7177) (h!33894 l!9164)))))

(declare-fun b!2441009 () Bool)

(assert (=> b!2441009 (= e!1550913 e!1550915)))

(declare-fun res!1036415 () Bool)

(assert (=> b!2441009 (=> (not res!1036415) (not e!1550915))))

(assert (=> b!2441009 (= res!1036415 call!149519)))

(declare-fun b!2441010 () Bool)

(declare-fun call!149517 () Bool)

(assert (=> b!2441010 (= e!1550911 call!149517)))

(declare-fun bm!149513 () Bool)

(assert (=> bm!149513 (= call!149519 call!149517)))

(declare-fun bm!149514 () Bool)

(assert (=> bm!149514 (= call!149517 (validRegex!2889 (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164))))))))

(assert (= (and d!704793 (not res!1036417)) b!2441002))

(assert (= (and b!2441002 c!389508) b!2441003))

(assert (= (and b!2441002 (not c!389508)) b!2441008))

(assert (= (and b!2441003 res!1036416) b!2441010))

(assert (= (and b!2441008 c!389507) b!2441007))

(assert (= (and b!2441008 (not c!389507)) b!2441006))

(assert (= (and b!2441007 res!1036413) b!2441005))

(assert (= (and b!2441006 (not res!1036414)) b!2441009))

(assert (= (and b!2441009 res!1036415) b!2441004))

(assert (= (or b!2441007 b!2441004) bm!149512))

(assert (= (or b!2441005 b!2441009) bm!149513))

(assert (= (or b!2441010 bm!149513) bm!149514))

(declare-fun m!2819067 () Bool)

(assert (=> bm!149512 m!2819067))

(declare-fun m!2819069 () Bool)

(assert (=> b!2441003 m!2819069))

(declare-fun m!2819071 () Bool)

(assert (=> bm!149514 m!2819071))

(assert (=> bs!464818 d!704793))

(declare-fun d!704795 () Bool)

(assert (=> d!704795 (= (isEmpty!16531 (t!208568 l!9164)) ((_ is Nil!28493) (t!208568 l!9164)))))

(assert (=> b!2439783 d!704795))

(assert (=> b!2439932 d!704761))

(declare-fun d!704797 () Bool)

(assert (=> d!704797 (= (isConcat!215 lt!878241) ((_ is Concat!11813) lt!878241))))

(assert (=> b!2439787 d!704797))

(declare-fun bs!464908 () Bool)

(declare-fun b!2441021 () Bool)

(assert (= bs!464908 (and b!2441021 b!2440176)))

(declare-fun lambda!92421 () Int)

(assert (=> bs!464908 (= (and (= (reg!7506 (regTwo!14867 r!13927)) (reg!7506 r!13927)) (= (regTwo!14867 r!13927) r!13927)) (= lambda!92421 lambda!92396))))

(declare-fun bs!464909 () Bool)

(assert (= bs!464909 (and b!2441021 b!2440171)))

(assert (=> bs!464909 (not (= lambda!92421 lambda!92397))))

(declare-fun bs!464910 () Bool)

(assert (= bs!464910 (and b!2441021 d!704523)))

(assert (=> bs!464910 (not (= lambda!92421 lambda!92390))))

(assert (=> bs!464910 (not (= lambda!92421 lambda!92391))))

(declare-fun bs!464911 () Bool)

(assert (= bs!464911 (and b!2441021 d!704777)))

(assert (=> bs!464911 (not (= lambda!92421 lambda!92418))))

(assert (=> bs!464911 (not (= lambda!92421 lambda!92419))))

(declare-fun bs!464912 () Bool)

(assert (= bs!464912 (and b!2441021 b!2439691)))

(assert (=> bs!464912 (not (= lambda!92421 lambda!92358))))

(assert (=> bs!464912 (not (= lambda!92421 lambda!92359))))

(declare-fun bs!464913 () Bool)

(assert (= bs!464913 (and b!2441021 d!704513)))

(assert (=> bs!464913 (not (= lambda!92421 lambda!92385))))

(assert (=> b!2441021 true))

(assert (=> b!2441021 true))

(declare-fun bs!464914 () Bool)

(declare-fun b!2441016 () Bool)

(assert (= bs!464914 (and b!2441016 b!2441021)))

(declare-fun lambda!92422 () Int)

(assert (=> bs!464914 (not (= lambda!92422 lambda!92421))))

(declare-fun bs!464915 () Bool)

(assert (= bs!464915 (and b!2441016 b!2440176)))

(assert (=> bs!464915 (not (= lambda!92422 lambda!92396))))

(declare-fun bs!464916 () Bool)

(assert (= bs!464916 (and b!2441016 b!2440171)))

(assert (=> bs!464916 (= (and (= (regOne!14866 (regTwo!14867 r!13927)) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 r!13927)) (regTwo!14866 r!13927))) (= lambda!92422 lambda!92397))))

(declare-fun bs!464917 () Bool)

(assert (= bs!464917 (and b!2441016 d!704523)))

(assert (=> bs!464917 (not (= lambda!92422 lambda!92390))))

(assert (=> bs!464917 (= (and (= (regOne!14866 (regTwo!14867 r!13927)) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 r!13927)) (regTwo!14866 r!13927))) (= lambda!92422 lambda!92391))))

(declare-fun bs!464918 () Bool)

(assert (= bs!464918 (and b!2441016 d!704777)))

(assert (=> bs!464918 (not (= lambda!92422 lambda!92418))))

(assert (=> bs!464918 (= (and (= (regOne!14866 (regTwo!14867 r!13927)) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 r!13927)) (regTwo!14866 r!13927))) (= lambda!92422 lambda!92419))))

(declare-fun bs!464919 () Bool)

(assert (= bs!464919 (and b!2441016 b!2439691)))

(assert (=> bs!464919 (not (= lambda!92422 lambda!92358))))

(assert (=> bs!464919 (= (and (= (regOne!14866 (regTwo!14867 r!13927)) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 r!13927)) (regTwo!14866 r!13927))) (= lambda!92422 lambda!92359))))

(declare-fun bs!464920 () Bool)

(assert (= bs!464920 (and b!2441016 d!704513)))

(assert (=> bs!464920 (not (= lambda!92422 lambda!92385))))

(assert (=> b!2441016 true))

(assert (=> b!2441016 true))

(declare-fun bm!149515 () Bool)

(declare-fun call!149520 () Bool)

(assert (=> bm!149515 (= call!149520 (isEmpty!16534 s!9460))))

(declare-fun d!704799 () Bool)

(declare-fun c!389512 () Bool)

(assert (=> d!704799 (= c!389512 ((_ is EmptyExpr!7177) (regTwo!14867 r!13927)))))

(declare-fun e!1550923 () Bool)

(assert (=> d!704799 (= (matchRSpec!1024 (regTwo!14867 r!13927) s!9460) e!1550923)))

(declare-fun b!2441011 () Bool)

(declare-fun res!1036418 () Bool)

(declare-fun e!1550921 () Bool)

(assert (=> b!2441011 (=> res!1036418 e!1550921)))

(assert (=> b!2441011 (= res!1036418 call!149520)))

(declare-fun e!1550918 () Bool)

(assert (=> b!2441011 (= e!1550918 e!1550921)))

(declare-fun b!2441012 () Bool)

(declare-fun e!1550919 () Bool)

(assert (=> b!2441012 (= e!1550919 (matchRSpec!1024 (regTwo!14867 (regTwo!14867 r!13927)) s!9460))))

(declare-fun b!2441013 () Bool)

(assert (=> b!2441013 (= e!1550923 call!149520)))

(declare-fun b!2441014 () Bool)

(declare-fun e!1550920 () Bool)

(assert (=> b!2441014 (= e!1550920 e!1550918)))

(declare-fun c!389510 () Bool)

(assert (=> b!2441014 (= c!389510 ((_ is Star!7177) (regTwo!14867 r!13927)))))

(declare-fun b!2441015 () Bool)

(declare-fun e!1550922 () Bool)

(assert (=> b!2441015 (= e!1550922 (= s!9460 (Cons!28492 (c!389219 (regTwo!14867 r!13927)) Nil!28492)))))

(declare-fun call!149521 () Bool)

(declare-fun bm!149516 () Bool)

(assert (=> bm!149516 (= call!149521 (Exists!1213 (ite c!389510 lambda!92421 lambda!92422)))))

(assert (=> b!2441016 (= e!1550918 call!149521)))

(declare-fun b!2441017 () Bool)

(assert (=> b!2441017 (= e!1550920 e!1550919)))

(declare-fun res!1036420 () Bool)

(assert (=> b!2441017 (= res!1036420 (matchRSpec!1024 (regOne!14867 (regTwo!14867 r!13927)) s!9460))))

(assert (=> b!2441017 (=> res!1036420 e!1550919)))

(declare-fun b!2441018 () Bool)

(declare-fun e!1550924 () Bool)

(assert (=> b!2441018 (= e!1550923 e!1550924)))

(declare-fun res!1036419 () Bool)

(assert (=> b!2441018 (= res!1036419 (not ((_ is EmptyLang!7177) (regTwo!14867 r!13927))))))

(assert (=> b!2441018 (=> (not res!1036419) (not e!1550924))))

(declare-fun b!2441019 () Bool)

(declare-fun c!389511 () Bool)

(assert (=> b!2441019 (= c!389511 ((_ is Union!7177) (regTwo!14867 r!13927)))))

(assert (=> b!2441019 (= e!1550922 e!1550920)))

(declare-fun b!2441020 () Bool)

(declare-fun c!389509 () Bool)

(assert (=> b!2441020 (= c!389509 ((_ is ElementMatch!7177) (regTwo!14867 r!13927)))))

(assert (=> b!2441020 (= e!1550924 e!1550922)))

(assert (=> b!2441021 (= e!1550921 call!149521)))

(assert (= (and d!704799 c!389512) b!2441013))

(assert (= (and d!704799 (not c!389512)) b!2441018))

(assert (= (and b!2441018 res!1036419) b!2441020))

(assert (= (and b!2441020 c!389509) b!2441015))

(assert (= (and b!2441020 (not c!389509)) b!2441019))

(assert (= (and b!2441019 c!389511) b!2441017))

(assert (= (and b!2441019 (not c!389511)) b!2441014))

(assert (= (and b!2441017 (not res!1036420)) b!2441012))

(assert (= (and b!2441014 c!389510) b!2441011))

(assert (= (and b!2441014 (not c!389510)) b!2441016))

(assert (= (and b!2441011 (not res!1036418)) b!2441021))

(assert (= (or b!2441021 b!2441016) bm!149516))

(assert (= (or b!2441013 b!2441011) bm!149515))

(assert (=> bm!149515 m!2818203))

(declare-fun m!2819073 () Bool)

(assert (=> b!2441012 m!2819073))

(declare-fun m!2819075 () Bool)

(assert (=> bm!149516 m!2819075))

(declare-fun m!2819077 () Bool)

(assert (=> b!2441017 m!2819077))

(assert (=> b!2440167 d!704799))

(assert (=> bm!149405 d!704741))

(assert (=> d!704529 d!704733))

(declare-fun b!2441022 () Bool)

(declare-fun e!1550928 () Bool)

(declare-fun lt!878363 () Bool)

(declare-fun call!149522 () Bool)

(assert (=> b!2441022 (= e!1550928 (= lt!878363 call!149522))))

(declare-fun d!704801 () Bool)

(assert (=> d!704801 e!1550928))

(declare-fun c!389515 () Bool)

(assert (=> d!704801 (= c!389515 ((_ is EmptyExpr!7177) (regOne!14866 r!13927)))))

(declare-fun e!1550926 () Bool)

(assert (=> d!704801 (= lt!878363 e!1550926)))

(declare-fun c!389513 () Bool)

(assert (=> d!704801 (= c!389513 (isEmpty!16534 Nil!28492))))

(assert (=> d!704801 (validRegex!2889 (regOne!14866 r!13927))))

(assert (=> d!704801 (= (matchR!3292 (regOne!14866 r!13927) Nil!28492) lt!878363)))

(declare-fun b!2441023 () Bool)

(declare-fun e!1550930 () Bool)

(assert (=> b!2441023 (= e!1550928 e!1550930)))

(declare-fun c!389514 () Bool)

(assert (=> b!2441023 (= c!389514 ((_ is EmptyLang!7177) (regOne!14866 r!13927)))))

(declare-fun b!2441024 () Bool)

(declare-fun res!1036423 () Bool)

(declare-fun e!1550925 () Bool)

(assert (=> b!2441024 (=> res!1036423 e!1550925)))

(declare-fun e!1550929 () Bool)

(assert (=> b!2441024 (= res!1036423 e!1550929)))

(declare-fun res!1036426 () Bool)

(assert (=> b!2441024 (=> (not res!1036426) (not e!1550929))))

(assert (=> b!2441024 (= res!1036426 lt!878363)))

(declare-fun b!2441025 () Bool)

(assert (=> b!2441025 (= e!1550930 (not lt!878363))))

(declare-fun b!2441026 () Bool)

(declare-fun e!1550931 () Bool)

(assert (=> b!2441026 (= e!1550925 e!1550931)))

(declare-fun res!1036428 () Bool)

(assert (=> b!2441026 (=> (not res!1036428) (not e!1550931))))

(assert (=> b!2441026 (= res!1036428 (not lt!878363))))

(declare-fun b!2441027 () Bool)

(declare-fun res!1036425 () Bool)

(assert (=> b!2441027 (=> (not res!1036425) (not e!1550929))))

(assert (=> b!2441027 (= res!1036425 (isEmpty!16534 (tail!3818 Nil!28492)))))

(declare-fun b!2441028 () Bool)

(declare-fun e!1550927 () Bool)

(assert (=> b!2441028 (= e!1550931 e!1550927)))

(declare-fun res!1036422 () Bool)

(assert (=> b!2441028 (=> res!1036422 e!1550927)))

(assert (=> b!2441028 (= res!1036422 call!149522)))

(declare-fun b!2441029 () Bool)

(assert (=> b!2441029 (= e!1550926 (nullable!2198 (regOne!14866 r!13927)))))

(declare-fun b!2441030 () Bool)

(assert (=> b!2441030 (= e!1550929 (= (head!5545 Nil!28492) (c!389219 (regOne!14866 r!13927))))))

(declare-fun b!2441031 () Bool)

(declare-fun res!1036427 () Bool)

(assert (=> b!2441031 (=> (not res!1036427) (not e!1550929))))

(assert (=> b!2441031 (= res!1036427 (not call!149522))))

(declare-fun bm!149517 () Bool)

(assert (=> bm!149517 (= call!149522 (isEmpty!16534 Nil!28492))))

(declare-fun b!2441032 () Bool)

(declare-fun res!1036421 () Bool)

(assert (=> b!2441032 (=> res!1036421 e!1550927)))

(assert (=> b!2441032 (= res!1036421 (not (isEmpty!16534 (tail!3818 Nil!28492))))))

(declare-fun b!2441033 () Bool)

(assert (=> b!2441033 (= e!1550926 (matchR!3292 (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 Nil!28492)) (tail!3818 Nil!28492)))))

(declare-fun b!2441034 () Bool)

(declare-fun res!1036424 () Bool)

(assert (=> b!2441034 (=> res!1036424 e!1550925)))

(assert (=> b!2441034 (= res!1036424 (not ((_ is ElementMatch!7177) (regOne!14866 r!13927))))))

(assert (=> b!2441034 (= e!1550930 e!1550925)))

(declare-fun b!2441035 () Bool)

(assert (=> b!2441035 (= e!1550927 (not (= (head!5545 Nil!28492) (c!389219 (regOne!14866 r!13927)))))))

(assert (= (and d!704801 c!389513) b!2441029))

(assert (= (and d!704801 (not c!389513)) b!2441033))

(assert (= (and d!704801 c!389515) b!2441022))

(assert (= (and d!704801 (not c!389515)) b!2441023))

(assert (= (and b!2441023 c!389514) b!2441025))

(assert (= (and b!2441023 (not c!389514)) b!2441034))

(assert (= (and b!2441034 (not res!1036424)) b!2441024))

(assert (= (and b!2441024 res!1036426) b!2441031))

(assert (= (and b!2441031 res!1036427) b!2441027))

(assert (= (and b!2441027 res!1036425) b!2441030))

(assert (= (and b!2441024 (not res!1036423)) b!2441026))

(assert (= (and b!2441026 res!1036428) b!2441028))

(assert (= (and b!2441028 (not res!1036422)) b!2441032))

(assert (= (and b!2441032 (not res!1036421)) b!2441035))

(assert (= (or b!2441022 b!2441031 b!2441028) bm!149517))

(declare-fun m!2819079 () Bool)

(assert (=> b!2441032 m!2819079))

(assert (=> b!2441032 m!2819079))

(declare-fun m!2819081 () Bool)

(assert (=> b!2441032 m!2819081))

(declare-fun m!2819083 () Bool)

(assert (=> b!2441035 m!2819083))

(assert (=> b!2441027 m!2819079))

(assert (=> b!2441027 m!2819079))

(assert (=> b!2441027 m!2819081))

(declare-fun m!2819085 () Bool)

(assert (=> d!704801 m!2819085))

(assert (=> d!704801 m!2818351))

(assert (=> bm!149517 m!2819085))

(declare-fun m!2819087 () Bool)

(assert (=> b!2441029 m!2819087))

(assert (=> b!2441030 m!2819083))

(assert (=> b!2441033 m!2819083))

(assert (=> b!2441033 m!2819083))

(declare-fun m!2819089 () Bool)

(assert (=> b!2441033 m!2819089))

(assert (=> b!2441033 m!2819079))

(assert (=> b!2441033 m!2819089))

(assert (=> b!2441033 m!2819079))

(declare-fun m!2819091 () Bool)

(assert (=> b!2441033 m!2819091))

(assert (=> d!704529 d!704801))

(assert (=> d!704529 d!704779))

(declare-fun d!704803 () Bool)

(assert (=> d!704803 (= (isEmpty!16531 (tail!3816 l!9164)) ((_ is Nil!28493) (tail!3816 l!9164)))))

(assert (=> b!2439785 d!704803))

(assert (=> b!2439785 d!704487))

(declare-fun b!2441036 () Bool)

(declare-fun e!1550938 () Bool)

(declare-fun e!1550933 () Bool)

(assert (=> b!2441036 (= e!1550938 e!1550933)))

(declare-fun c!389517 () Bool)

(assert (=> b!2441036 (= c!389517 ((_ is Star!7177) lt!878241))))

(declare-fun bm!149518 () Bool)

(declare-fun call!149524 () Bool)

(declare-fun c!389516 () Bool)

(assert (=> bm!149518 (= call!149524 (validRegex!2889 (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241))))))

(declare-fun b!2441037 () Bool)

(declare-fun e!1550932 () Bool)

(assert (=> b!2441037 (= e!1550933 e!1550932)))

(declare-fun res!1036432 () Bool)

(assert (=> b!2441037 (= res!1036432 (not (nullable!2198 (reg!7506 lt!878241))))))

(assert (=> b!2441037 (=> (not res!1036432) (not e!1550932))))

(declare-fun d!704805 () Bool)

(declare-fun res!1036433 () Bool)

(assert (=> d!704805 (=> res!1036433 e!1550938)))

(assert (=> d!704805 (= res!1036433 ((_ is ElementMatch!7177) lt!878241))))

(assert (=> d!704805 (= (validRegex!2889 lt!878241) e!1550938)))

(declare-fun b!2441038 () Bool)

(declare-fun e!1550936 () Bool)

(assert (=> b!2441038 (= e!1550936 call!149524)))

(declare-fun b!2441039 () Bool)

(declare-fun e!1550935 () Bool)

(declare-fun call!149525 () Bool)

(assert (=> b!2441039 (= e!1550935 call!149525)))

(declare-fun b!2441040 () Bool)

(declare-fun res!1036430 () Bool)

(declare-fun e!1550934 () Bool)

(assert (=> b!2441040 (=> res!1036430 e!1550934)))

(assert (=> b!2441040 (= res!1036430 (not ((_ is Concat!11813) lt!878241)))))

(declare-fun e!1550937 () Bool)

(assert (=> b!2441040 (= e!1550937 e!1550934)))

(declare-fun b!2441041 () Bool)

(declare-fun res!1036429 () Bool)

(assert (=> b!2441041 (=> (not res!1036429) (not e!1550935))))

(assert (=> b!2441041 (= res!1036429 call!149524)))

(assert (=> b!2441041 (= e!1550937 e!1550935)))

(declare-fun b!2441042 () Bool)

(assert (=> b!2441042 (= e!1550933 e!1550937)))

(assert (=> b!2441042 (= c!389516 ((_ is Union!7177) lt!878241))))

(declare-fun b!2441043 () Bool)

(assert (=> b!2441043 (= e!1550934 e!1550936)))

(declare-fun res!1036431 () Bool)

(assert (=> b!2441043 (=> (not res!1036431) (not e!1550936))))

(assert (=> b!2441043 (= res!1036431 call!149525)))

(declare-fun b!2441044 () Bool)

(declare-fun call!149523 () Bool)

(assert (=> b!2441044 (= e!1550932 call!149523)))

(declare-fun bm!149519 () Bool)

(assert (=> bm!149519 (= call!149525 call!149523)))

(declare-fun bm!149520 () Bool)

(assert (=> bm!149520 (= call!149523 (validRegex!2889 (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241)))))))

(assert (= (and d!704805 (not res!1036433)) b!2441036))

(assert (= (and b!2441036 c!389517) b!2441037))

(assert (= (and b!2441036 (not c!389517)) b!2441042))

(assert (= (and b!2441037 res!1036432) b!2441044))

(assert (= (and b!2441042 c!389516) b!2441041))

(assert (= (and b!2441042 (not c!389516)) b!2441040))

(assert (= (and b!2441041 res!1036429) b!2441039))

(assert (= (and b!2441040 (not res!1036430)) b!2441043))

(assert (= (and b!2441043 res!1036431) b!2441038))

(assert (= (or b!2441041 b!2441038) bm!149518))

(assert (= (or b!2441039 b!2441043) bm!149519))

(assert (= (or b!2441044 bm!149519) bm!149520))

(declare-fun m!2819093 () Bool)

(assert (=> bm!149518 m!2819093))

(declare-fun m!2819095 () Bool)

(assert (=> b!2441037 m!2819095))

(declare-fun m!2819097 () Bool)

(assert (=> bm!149520 m!2819097))

(assert (=> d!704451 d!704805))

(declare-fun d!704807 () Bool)

(declare-fun res!1036434 () Bool)

(declare-fun e!1550939 () Bool)

(assert (=> d!704807 (=> res!1036434 e!1550939)))

(assert (=> d!704807 (= res!1036434 ((_ is Nil!28493) l!9164))))

(assert (=> d!704807 (= (forall!5811 l!9164 lambda!92365) e!1550939)))

(declare-fun b!2441045 () Bool)

(declare-fun e!1550940 () Bool)

(assert (=> b!2441045 (= e!1550939 e!1550940)))

(declare-fun res!1036435 () Bool)

(assert (=> b!2441045 (=> (not res!1036435) (not e!1550940))))

(assert (=> b!2441045 (= res!1036435 (dynLambda!12256 lambda!92365 (h!33894 l!9164)))))

(declare-fun b!2441046 () Bool)

(assert (=> b!2441046 (= e!1550940 (forall!5811 (t!208568 l!9164) lambda!92365))))

(assert (= (and d!704807 (not res!1036434)) b!2441045))

(assert (= (and b!2441045 res!1036435) b!2441046))

(declare-fun b_lambda!74941 () Bool)

(assert (=> (not b_lambda!74941) (not b!2441045)))

(declare-fun m!2819099 () Bool)

(assert (=> b!2441045 m!2819099))

(declare-fun m!2819101 () Bool)

(assert (=> b!2441046 m!2819101))

(assert (=> d!704451 d!704807))

(declare-fun d!704809 () Bool)

(assert (=> d!704809 (= (isEmpty!16534 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) ((_ is Nil!28492) (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(assert (=> b!2439924 d!704809))

(assert (=> b!2439924 d!704763))

(declare-fun b!2441047 () Bool)

(declare-fun e!1550942 () List!28590)

(assert (=> b!2441047 (= e!1550942 (_2!16596 (get!8795 lt!878295)))))

(declare-fun d!704811 () Bool)

(declare-fun e!1550941 () Bool)

(assert (=> d!704811 e!1550941))

(declare-fun res!1036436 () Bool)

(assert (=> d!704811 (=> (not res!1036436) (not e!1550941))))

(declare-fun lt!878364 () List!28590)

(assert (=> d!704811 (= res!1036436 (= (content!3924 lt!878364) ((_ map or) (content!3924 (_1!16596 (get!8795 lt!878295))) (content!3924 (_2!16596 (get!8795 lt!878295))))))))

(assert (=> d!704811 (= lt!878364 e!1550942)))

(declare-fun c!389518 () Bool)

(assert (=> d!704811 (= c!389518 ((_ is Nil!28492) (_1!16596 (get!8795 lt!878295))))))

(assert (=> d!704811 (= (++!7080 (_1!16596 (get!8795 lt!878295)) (_2!16596 (get!8795 lt!878295))) lt!878364)))

(declare-fun b!2441050 () Bool)

(assert (=> b!2441050 (= e!1550941 (or (not (= (_2!16596 (get!8795 lt!878295)) Nil!28492)) (= lt!878364 (_1!16596 (get!8795 lt!878295)))))))

(declare-fun b!2441049 () Bool)

(declare-fun res!1036437 () Bool)

(assert (=> b!2441049 (=> (not res!1036437) (not e!1550941))))

(assert (=> b!2441049 (= res!1036437 (= (size!22262 lt!878364) (+ (size!22262 (_1!16596 (get!8795 lt!878295))) (size!22262 (_2!16596 (get!8795 lt!878295))))))))

(declare-fun b!2441048 () Bool)

(assert (=> b!2441048 (= e!1550942 (Cons!28492 (h!33893 (_1!16596 (get!8795 lt!878295))) (++!7080 (t!208567 (_1!16596 (get!8795 lt!878295))) (_2!16596 (get!8795 lt!878295)))))))

(assert (= (and d!704811 c!389518) b!2441047))

(assert (= (and d!704811 (not c!389518)) b!2441048))

(assert (= (and d!704811 res!1036436) b!2441049))

(assert (= (and b!2441049 res!1036437) b!2441050))

(declare-fun m!2819103 () Bool)

(assert (=> d!704811 m!2819103))

(declare-fun m!2819105 () Bool)

(assert (=> d!704811 m!2819105))

(declare-fun m!2819107 () Bool)

(assert (=> d!704811 m!2819107))

(declare-fun m!2819109 () Bool)

(assert (=> b!2441049 m!2819109))

(declare-fun m!2819111 () Bool)

(assert (=> b!2441049 m!2819111))

(declare-fun m!2819113 () Bool)

(assert (=> b!2441049 m!2819113))

(declare-fun m!2819115 () Bool)

(assert (=> b!2441048 m!2819115))

(assert (=> b!2440110 d!704811))

(declare-fun d!704813 () Bool)

(assert (=> d!704813 (= (get!8795 lt!878295) (v!31073 lt!878295))))

(assert (=> b!2440110 d!704813))

(assert (=> d!704539 d!704741))

(assert (=> d!704539 d!704771))

(declare-fun d!704815 () Bool)

(assert (=> d!704815 (= (nullable!2198 lt!878222) (nullableFct!534 lt!878222))))

(declare-fun bs!464921 () Bool)

(assert (= bs!464921 d!704815))

(declare-fun m!2819117 () Bool)

(assert (=> bs!464921 m!2819117))

(assert (=> b!2439870 d!704815))

(declare-fun d!704817 () Bool)

(assert (=> d!704817 (= (isEmpty!16531 (tail!3816 lt!878228)) ((_ is Nil!28493) (tail!3816 lt!878228)))))

(assert (=> b!2439909 d!704817))

(declare-fun d!704819 () Bool)

(assert (=> d!704819 (= (tail!3816 lt!878228) (t!208568 lt!878228))))

(assert (=> b!2439909 d!704819))

(declare-fun b!2441051 () Bool)

(declare-fun e!1550946 () Bool)

(declare-fun lt!878365 () Bool)

(declare-fun call!149526 () Bool)

(assert (=> b!2441051 (= e!1550946 (= lt!878365 call!149526))))

(declare-fun d!704821 () Bool)

(assert (=> d!704821 e!1550946))

(declare-fun c!389521 () Bool)

(assert (=> d!704821 (= c!389521 ((_ is EmptyExpr!7177) EmptyExpr!7177))))

(declare-fun e!1550944 () Bool)

(assert (=> d!704821 (= lt!878365 e!1550944)))

(declare-fun c!389519 () Bool)

(assert (=> d!704821 (= c!389519 (isEmpty!16534 s!9460))))

(assert (=> d!704821 (validRegex!2889 EmptyExpr!7177)))

(assert (=> d!704821 (= (matchR!3292 EmptyExpr!7177 s!9460) lt!878365)))

(declare-fun b!2441052 () Bool)

(declare-fun e!1550948 () Bool)

(assert (=> b!2441052 (= e!1550946 e!1550948)))

(declare-fun c!389520 () Bool)

(assert (=> b!2441052 (= c!389520 ((_ is EmptyLang!7177) EmptyExpr!7177))))

(declare-fun b!2441053 () Bool)

(declare-fun res!1036440 () Bool)

(declare-fun e!1550943 () Bool)

(assert (=> b!2441053 (=> res!1036440 e!1550943)))

(declare-fun e!1550947 () Bool)

(assert (=> b!2441053 (= res!1036440 e!1550947)))

(declare-fun res!1036443 () Bool)

(assert (=> b!2441053 (=> (not res!1036443) (not e!1550947))))

(assert (=> b!2441053 (= res!1036443 lt!878365)))

(declare-fun b!2441054 () Bool)

(assert (=> b!2441054 (= e!1550948 (not lt!878365))))

(declare-fun b!2441055 () Bool)

(declare-fun e!1550949 () Bool)

(assert (=> b!2441055 (= e!1550943 e!1550949)))

(declare-fun res!1036445 () Bool)

(assert (=> b!2441055 (=> (not res!1036445) (not e!1550949))))

(assert (=> b!2441055 (= res!1036445 (not lt!878365))))

(declare-fun b!2441056 () Bool)

(declare-fun res!1036442 () Bool)

(assert (=> b!2441056 (=> (not res!1036442) (not e!1550947))))

(assert (=> b!2441056 (= res!1036442 (isEmpty!16534 (tail!3818 s!9460)))))

(declare-fun b!2441057 () Bool)

(declare-fun e!1550945 () Bool)

(assert (=> b!2441057 (= e!1550949 e!1550945)))

(declare-fun res!1036439 () Bool)

(assert (=> b!2441057 (=> res!1036439 e!1550945)))

(assert (=> b!2441057 (= res!1036439 call!149526)))

(declare-fun b!2441058 () Bool)

(assert (=> b!2441058 (= e!1550944 (nullable!2198 EmptyExpr!7177))))

(declare-fun b!2441059 () Bool)

(assert (=> b!2441059 (= e!1550947 (= (head!5545 s!9460) (c!389219 EmptyExpr!7177)))))

(declare-fun b!2441060 () Bool)

(declare-fun res!1036444 () Bool)

(assert (=> b!2441060 (=> (not res!1036444) (not e!1550947))))

(assert (=> b!2441060 (= res!1036444 (not call!149526))))

(declare-fun bm!149521 () Bool)

(assert (=> bm!149521 (= call!149526 (isEmpty!16534 s!9460))))

(declare-fun b!2441061 () Bool)

(declare-fun res!1036438 () Bool)

(assert (=> b!2441061 (=> res!1036438 e!1550945)))

(assert (=> b!2441061 (= res!1036438 (not (isEmpty!16534 (tail!3818 s!9460))))))

(declare-fun b!2441062 () Bool)

(assert (=> b!2441062 (= e!1550944 (matchR!3292 (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460)) (tail!3818 s!9460)))))

(declare-fun b!2441063 () Bool)

(declare-fun res!1036441 () Bool)

(assert (=> b!2441063 (=> res!1036441 e!1550943)))

(assert (=> b!2441063 (= res!1036441 (not ((_ is ElementMatch!7177) EmptyExpr!7177)))))

(assert (=> b!2441063 (= e!1550948 e!1550943)))

(declare-fun b!2441064 () Bool)

(assert (=> b!2441064 (= e!1550945 (not (= (head!5545 s!9460) (c!389219 EmptyExpr!7177))))))

(assert (= (and d!704821 c!389519) b!2441058))

(assert (= (and d!704821 (not c!389519)) b!2441062))

(assert (= (and d!704821 c!389521) b!2441051))

(assert (= (and d!704821 (not c!389521)) b!2441052))

(assert (= (and b!2441052 c!389520) b!2441054))

(assert (= (and b!2441052 (not c!389520)) b!2441063))

(assert (= (and b!2441063 (not res!1036441)) b!2441053))

(assert (= (and b!2441053 res!1036443) b!2441060))

(assert (= (and b!2441060 res!1036444) b!2441056))

(assert (= (and b!2441056 res!1036442) b!2441059))

(assert (= (and b!2441053 (not res!1036440)) b!2441055))

(assert (= (and b!2441055 res!1036445) b!2441057))

(assert (= (and b!2441057 (not res!1036439)) b!2441061))

(assert (= (and b!2441061 (not res!1036438)) b!2441064))

(assert (= (or b!2441051 b!2441060 b!2441057) bm!149521))

(assert (=> b!2441061 m!2818197))

(assert (=> b!2441061 m!2818197))

(assert (=> b!2441061 m!2818199))

(assert (=> b!2441064 m!2818201))

(assert (=> b!2441056 m!2818197))

(assert (=> b!2441056 m!2818197))

(assert (=> b!2441056 m!2818199))

(assert (=> d!704821 m!2818203))

(assert (=> d!704821 m!2818861))

(assert (=> bm!149521 m!2818203))

(assert (=> b!2441058 m!2818863))

(assert (=> b!2441059 m!2818201))

(assert (=> b!2441062 m!2818201))

(assert (=> b!2441062 m!2818201))

(declare-fun m!2819119 () Bool)

(assert (=> b!2441062 m!2819119))

(assert (=> b!2441062 m!2818197))

(assert (=> b!2441062 m!2819119))

(assert (=> b!2441062 m!2818197))

(declare-fun m!2819121 () Bool)

(assert (=> b!2441062 m!2819121))

(assert (=> b!2440128 d!704821))

(assert (=> d!704513 d!704511))

(declare-fun d!704823 () Bool)

(assert (=> d!704823 (= (Exists!1213 lambda!92385) (choose!14482 lambda!92385))))

(declare-fun bs!464922 () Bool)

(assert (= bs!464922 d!704823))

(declare-fun m!2819123 () Bool)

(assert (=> bs!464922 m!2819123))

(assert (=> d!704513 d!704823))

(declare-fun bs!464923 () Bool)

(declare-fun d!704825 () Bool)

(assert (= bs!464923 (and d!704825 b!2441021)))

(declare-fun lambda!92425 () Int)

(assert (=> bs!464923 (not (= lambda!92425 lambda!92421))))

(declare-fun bs!464924 () Bool)

(assert (= bs!464924 (and d!704825 b!2440176)))

(assert (=> bs!464924 (not (= lambda!92425 lambda!92396))))

(declare-fun bs!464925 () Bool)

(assert (= bs!464925 (and d!704825 b!2440171)))

(assert (=> bs!464925 (not (= lambda!92425 lambda!92397))))

(declare-fun bs!464926 () Bool)

(assert (= bs!464926 (and d!704825 d!704523)))

(assert (=> bs!464926 (= lambda!92425 lambda!92390)))

(assert (=> bs!464926 (not (= lambda!92425 lambda!92391))))

(declare-fun bs!464927 () Bool)

(assert (= bs!464927 (and d!704825 d!704777)))

(assert (=> bs!464927 (= lambda!92425 lambda!92418)))

(declare-fun bs!464928 () Bool)

(assert (= bs!464928 (and d!704825 b!2441016)))

(assert (=> bs!464928 (not (= lambda!92425 lambda!92422))))

(assert (=> bs!464927 (not (= lambda!92425 lambda!92419))))

(declare-fun bs!464929 () Bool)

(assert (= bs!464929 (and d!704825 b!2439691)))

(assert (=> bs!464929 (= lambda!92425 lambda!92358)))

(assert (=> bs!464929 (not (= lambda!92425 lambda!92359))))

(declare-fun bs!464930 () Bool)

(assert (= bs!464930 (and d!704825 d!704513)))

(assert (=> bs!464930 (= lambda!92425 lambda!92385)))

(assert (=> d!704825 true))

(assert (=> d!704825 true))

(assert (=> d!704825 true))

(assert (=> d!704825 (= (isDefined!4492 (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) Nil!28492 s!9460 s!9460)) (Exists!1213 lambda!92425))))

(assert (=> d!704825 true))

(declare-fun _$89!1262 () Unit!41737)

(assert (=> d!704825 (= (choose!14480 (regOne!14866 r!13927) (regTwo!14866 r!13927) s!9460) _$89!1262)))

(declare-fun bs!464931 () Bool)

(assert (= bs!464931 d!704825))

(assert (=> bs!464931 m!2818077))

(assert (=> bs!464931 m!2818077))

(assert (=> bs!464931 m!2818079))

(declare-fun m!2819125 () Bool)

(assert (=> bs!464931 m!2819125))

(assert (=> d!704513 d!704825))

(assert (=> d!704513 d!704779))

(assert (=> d!704513 d!704529))

(declare-fun bs!464932 () Bool)

(declare-fun b!2441079 () Bool)

(assert (= bs!464932 (and b!2441079 b!2441021)))

(declare-fun lambda!92426 () Int)

(assert (=> bs!464932 (= (and (= (reg!7506 (regOne!14867 r!13927)) (reg!7506 (regTwo!14867 r!13927))) (= (regOne!14867 r!13927) (regTwo!14867 r!13927))) (= lambda!92426 lambda!92421))))

(declare-fun bs!464933 () Bool)

(assert (= bs!464933 (and b!2441079 b!2440176)))

(assert (=> bs!464933 (= (and (= (reg!7506 (regOne!14867 r!13927)) (reg!7506 r!13927)) (= (regOne!14867 r!13927) r!13927)) (= lambda!92426 lambda!92396))))

(declare-fun bs!464934 () Bool)

(assert (= bs!464934 (and b!2441079 b!2440171)))

(assert (=> bs!464934 (not (= lambda!92426 lambda!92397))))

(declare-fun bs!464935 () Bool)

(assert (= bs!464935 (and b!2441079 d!704523)))

(assert (=> bs!464935 (not (= lambda!92426 lambda!92391))))

(declare-fun bs!464936 () Bool)

(assert (= bs!464936 (and b!2441079 d!704777)))

(assert (=> bs!464936 (not (= lambda!92426 lambda!92418))))

(declare-fun bs!464937 () Bool)

(assert (= bs!464937 (and b!2441079 d!704825)))

(assert (=> bs!464937 (not (= lambda!92426 lambda!92425))))

(assert (=> bs!464935 (not (= lambda!92426 lambda!92390))))

(declare-fun bs!464938 () Bool)

(assert (= bs!464938 (and b!2441079 b!2441016)))

(assert (=> bs!464938 (not (= lambda!92426 lambda!92422))))

(assert (=> bs!464936 (not (= lambda!92426 lambda!92419))))

(declare-fun bs!464939 () Bool)

(assert (= bs!464939 (and b!2441079 b!2439691)))

(assert (=> bs!464939 (not (= lambda!92426 lambda!92358))))

(assert (=> bs!464939 (not (= lambda!92426 lambda!92359))))

(declare-fun bs!464940 () Bool)

(assert (= bs!464940 (and b!2441079 d!704513)))

(assert (=> bs!464940 (not (= lambda!92426 lambda!92385))))

(assert (=> b!2441079 true))

(assert (=> b!2441079 true))

(declare-fun bs!464941 () Bool)

(declare-fun b!2441074 () Bool)

(assert (= bs!464941 (and b!2441074 b!2441021)))

(declare-fun lambda!92427 () Int)

(assert (=> bs!464941 (not (= lambda!92427 lambda!92421))))

(declare-fun bs!464942 () Bool)

(assert (= bs!464942 (and b!2441074 b!2441079)))

(assert (=> bs!464942 (not (= lambda!92427 lambda!92426))))

(declare-fun bs!464943 () Bool)

(assert (= bs!464943 (and b!2441074 b!2440176)))

(assert (=> bs!464943 (not (= lambda!92427 lambda!92396))))

(declare-fun bs!464944 () Bool)

(assert (= bs!464944 (and b!2441074 b!2440171)))

(assert (=> bs!464944 (= (and (= (regOne!14866 (regOne!14867 r!13927)) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 r!13927)) (regTwo!14866 r!13927))) (= lambda!92427 lambda!92397))))

(declare-fun bs!464945 () Bool)

(assert (= bs!464945 (and b!2441074 d!704523)))

(assert (=> bs!464945 (= (and (= (regOne!14866 (regOne!14867 r!13927)) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 r!13927)) (regTwo!14866 r!13927))) (= lambda!92427 lambda!92391))))

(declare-fun bs!464946 () Bool)

(assert (= bs!464946 (and b!2441074 d!704777)))

(assert (=> bs!464946 (not (= lambda!92427 lambda!92418))))

(declare-fun bs!464947 () Bool)

(assert (= bs!464947 (and b!2441074 d!704825)))

(assert (=> bs!464947 (not (= lambda!92427 lambda!92425))))

(assert (=> bs!464945 (not (= lambda!92427 lambda!92390))))

(declare-fun bs!464948 () Bool)

(assert (= bs!464948 (and b!2441074 b!2441016)))

(assert (=> bs!464948 (= (and (= (regOne!14866 (regOne!14867 r!13927)) (regOne!14866 (regTwo!14867 r!13927))) (= (regTwo!14866 (regOne!14867 r!13927)) (regTwo!14866 (regTwo!14867 r!13927)))) (= lambda!92427 lambda!92422))))

(assert (=> bs!464946 (= (and (= (regOne!14866 (regOne!14867 r!13927)) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 r!13927)) (regTwo!14866 r!13927))) (= lambda!92427 lambda!92419))))

(declare-fun bs!464949 () Bool)

(assert (= bs!464949 (and b!2441074 b!2439691)))

(assert (=> bs!464949 (not (= lambda!92427 lambda!92358))))

(assert (=> bs!464949 (= (and (= (regOne!14866 (regOne!14867 r!13927)) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 r!13927)) (regTwo!14866 r!13927))) (= lambda!92427 lambda!92359))))

(declare-fun bs!464950 () Bool)

(assert (= bs!464950 (and b!2441074 d!704513)))

(assert (=> bs!464950 (not (= lambda!92427 lambda!92385))))

(assert (=> b!2441074 true))

(assert (=> b!2441074 true))

(declare-fun bm!149522 () Bool)

(declare-fun call!149527 () Bool)

(assert (=> bm!149522 (= call!149527 (isEmpty!16534 s!9460))))

(declare-fun d!704827 () Bool)

(declare-fun c!389525 () Bool)

(assert (=> d!704827 (= c!389525 ((_ is EmptyExpr!7177) (regOne!14867 r!13927)))))

(declare-fun e!1550957 () Bool)

(assert (=> d!704827 (= (matchRSpec!1024 (regOne!14867 r!13927) s!9460) e!1550957)))

(declare-fun b!2441069 () Bool)

(declare-fun res!1036450 () Bool)

(declare-fun e!1550955 () Bool)

(assert (=> b!2441069 (=> res!1036450 e!1550955)))

(assert (=> b!2441069 (= res!1036450 call!149527)))

(declare-fun e!1550952 () Bool)

(assert (=> b!2441069 (= e!1550952 e!1550955)))

(declare-fun b!2441070 () Bool)

(declare-fun e!1550953 () Bool)

(assert (=> b!2441070 (= e!1550953 (matchRSpec!1024 (regTwo!14867 (regOne!14867 r!13927)) s!9460))))

(declare-fun b!2441071 () Bool)

(assert (=> b!2441071 (= e!1550957 call!149527)))

(declare-fun b!2441072 () Bool)

(declare-fun e!1550954 () Bool)

(assert (=> b!2441072 (= e!1550954 e!1550952)))

(declare-fun c!389523 () Bool)

(assert (=> b!2441072 (= c!389523 ((_ is Star!7177) (regOne!14867 r!13927)))))

(declare-fun b!2441073 () Bool)

(declare-fun e!1550956 () Bool)

(assert (=> b!2441073 (= e!1550956 (= s!9460 (Cons!28492 (c!389219 (regOne!14867 r!13927)) Nil!28492)))))

(declare-fun call!149528 () Bool)

(declare-fun bm!149523 () Bool)

(assert (=> bm!149523 (= call!149528 (Exists!1213 (ite c!389523 lambda!92426 lambda!92427)))))

(assert (=> b!2441074 (= e!1550952 call!149528)))

(declare-fun b!2441075 () Bool)

(assert (=> b!2441075 (= e!1550954 e!1550953)))

(declare-fun res!1036452 () Bool)

(assert (=> b!2441075 (= res!1036452 (matchRSpec!1024 (regOne!14867 (regOne!14867 r!13927)) s!9460))))

(assert (=> b!2441075 (=> res!1036452 e!1550953)))

(declare-fun b!2441076 () Bool)

(declare-fun e!1550958 () Bool)

(assert (=> b!2441076 (= e!1550957 e!1550958)))

(declare-fun res!1036451 () Bool)

(assert (=> b!2441076 (= res!1036451 (not ((_ is EmptyLang!7177) (regOne!14867 r!13927))))))

(assert (=> b!2441076 (=> (not res!1036451) (not e!1550958))))

(declare-fun b!2441077 () Bool)

(declare-fun c!389524 () Bool)

(assert (=> b!2441077 (= c!389524 ((_ is Union!7177) (regOne!14867 r!13927)))))

(assert (=> b!2441077 (= e!1550956 e!1550954)))

(declare-fun b!2441078 () Bool)

(declare-fun c!389522 () Bool)

(assert (=> b!2441078 (= c!389522 ((_ is ElementMatch!7177) (regOne!14867 r!13927)))))

(assert (=> b!2441078 (= e!1550958 e!1550956)))

(assert (=> b!2441079 (= e!1550955 call!149528)))

(assert (= (and d!704827 c!389525) b!2441071))

(assert (= (and d!704827 (not c!389525)) b!2441076))

(assert (= (and b!2441076 res!1036451) b!2441078))

(assert (= (and b!2441078 c!389522) b!2441073))

(assert (= (and b!2441078 (not c!389522)) b!2441077))

(assert (= (and b!2441077 c!389524) b!2441075))

(assert (= (and b!2441077 (not c!389524)) b!2441072))

(assert (= (and b!2441075 (not res!1036452)) b!2441070))

(assert (= (and b!2441072 c!389523) b!2441069))

(assert (= (and b!2441072 (not c!389523)) b!2441074))

(assert (= (and b!2441069 (not res!1036450)) b!2441079))

(assert (= (or b!2441079 b!2441074) bm!149523))

(assert (= (or b!2441071 b!2441069) bm!149522))

(assert (=> bm!149522 m!2818203))

(declare-fun m!2819127 () Bool)

(assert (=> b!2441070 m!2819127))

(declare-fun m!2819129 () Bool)

(assert (=> bm!149523 m!2819129))

(declare-fun m!2819131 () Bool)

(assert (=> b!2441075 m!2819131))

(assert (=> b!2440172 d!704827))

(declare-fun d!704829 () Bool)

(assert (=> d!704829 (= (isConcat!215 lt!878260) ((_ is Concat!11813) lt!878260))))

(assert (=> b!2439911 d!704829))

(declare-fun b!2441080 () Bool)

(declare-fun e!1550962 () Bool)

(declare-fun lt!878366 () Bool)

(declare-fun call!149529 () Bool)

(assert (=> b!2441080 (= e!1550962 (= lt!878366 call!149529))))

(declare-fun d!704831 () Bool)

(assert (=> d!704831 e!1550962))

(declare-fun c!389528 () Bool)

(assert (=> d!704831 (= c!389528 ((_ is EmptyExpr!7177) (regTwo!14866 r!13927)))))

(declare-fun e!1550960 () Bool)

(assert (=> d!704831 (= lt!878366 e!1550960)))

(declare-fun c!389526 () Bool)

(assert (=> d!704831 (= c!389526 (isEmpty!16534 (_2!16596 (get!8795 lt!878295))))))

(assert (=> d!704831 (validRegex!2889 (regTwo!14866 r!13927))))

(assert (=> d!704831 (= (matchR!3292 (regTwo!14866 r!13927) (_2!16596 (get!8795 lt!878295))) lt!878366)))

(declare-fun b!2441081 () Bool)

(declare-fun e!1550964 () Bool)

(assert (=> b!2441081 (= e!1550962 e!1550964)))

(declare-fun c!389527 () Bool)

(assert (=> b!2441081 (= c!389527 ((_ is EmptyLang!7177) (regTwo!14866 r!13927)))))

(declare-fun b!2441082 () Bool)

(declare-fun res!1036455 () Bool)

(declare-fun e!1550959 () Bool)

(assert (=> b!2441082 (=> res!1036455 e!1550959)))

(declare-fun e!1550963 () Bool)

(assert (=> b!2441082 (= res!1036455 e!1550963)))

(declare-fun res!1036458 () Bool)

(assert (=> b!2441082 (=> (not res!1036458) (not e!1550963))))

(assert (=> b!2441082 (= res!1036458 lt!878366)))

(declare-fun b!2441083 () Bool)

(assert (=> b!2441083 (= e!1550964 (not lt!878366))))

(declare-fun b!2441084 () Bool)

(declare-fun e!1550965 () Bool)

(assert (=> b!2441084 (= e!1550959 e!1550965)))

(declare-fun res!1036460 () Bool)

(assert (=> b!2441084 (=> (not res!1036460) (not e!1550965))))

(assert (=> b!2441084 (= res!1036460 (not lt!878366))))

(declare-fun b!2441085 () Bool)

(declare-fun res!1036457 () Bool)

(assert (=> b!2441085 (=> (not res!1036457) (not e!1550963))))

(assert (=> b!2441085 (= res!1036457 (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878295)))))))

(declare-fun b!2441086 () Bool)

(declare-fun e!1550961 () Bool)

(assert (=> b!2441086 (= e!1550965 e!1550961)))

(declare-fun res!1036454 () Bool)

(assert (=> b!2441086 (=> res!1036454 e!1550961)))

(assert (=> b!2441086 (= res!1036454 call!149529)))

(declare-fun b!2441087 () Bool)

(assert (=> b!2441087 (= e!1550960 (nullable!2198 (regTwo!14866 r!13927)))))

(declare-fun b!2441088 () Bool)

(assert (=> b!2441088 (= e!1550963 (= (head!5545 (_2!16596 (get!8795 lt!878295))) (c!389219 (regTwo!14866 r!13927))))))

(declare-fun b!2441089 () Bool)

(declare-fun res!1036459 () Bool)

(assert (=> b!2441089 (=> (not res!1036459) (not e!1550963))))

(assert (=> b!2441089 (= res!1036459 (not call!149529))))

(declare-fun bm!149524 () Bool)

(assert (=> bm!149524 (= call!149529 (isEmpty!16534 (_2!16596 (get!8795 lt!878295))))))

(declare-fun b!2441090 () Bool)

(declare-fun res!1036453 () Bool)

(assert (=> b!2441090 (=> res!1036453 e!1550961)))

(assert (=> b!2441090 (= res!1036453 (not (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878295))))))))

(declare-fun b!2441091 () Bool)

(assert (=> b!2441091 (= e!1550960 (matchR!3292 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295)))) (tail!3818 (_2!16596 (get!8795 lt!878295)))))))

(declare-fun b!2441092 () Bool)

(declare-fun res!1036456 () Bool)

(assert (=> b!2441092 (=> res!1036456 e!1550959)))

(assert (=> b!2441092 (= res!1036456 (not ((_ is ElementMatch!7177) (regTwo!14866 r!13927))))))

(assert (=> b!2441092 (= e!1550964 e!1550959)))

(declare-fun b!2441093 () Bool)

(assert (=> b!2441093 (= e!1550961 (not (= (head!5545 (_2!16596 (get!8795 lt!878295))) (c!389219 (regTwo!14866 r!13927)))))))

(assert (= (and d!704831 c!389526) b!2441087))

(assert (= (and d!704831 (not c!389526)) b!2441091))

(assert (= (and d!704831 c!389528) b!2441080))

(assert (= (and d!704831 (not c!389528)) b!2441081))

(assert (= (and b!2441081 c!389527) b!2441083))

(assert (= (and b!2441081 (not c!389527)) b!2441092))

(assert (= (and b!2441092 (not res!1036456)) b!2441082))

(assert (= (and b!2441082 res!1036458) b!2441089))

(assert (= (and b!2441089 res!1036459) b!2441085))

(assert (= (and b!2441085 res!1036457) b!2441088))

(assert (= (and b!2441082 (not res!1036455)) b!2441084))

(assert (= (and b!2441084 res!1036460) b!2441086))

(assert (= (and b!2441086 (not res!1036454)) b!2441090))

(assert (= (and b!2441090 (not res!1036453)) b!2441093))

(assert (= (or b!2441080 b!2441089 b!2441086) bm!149524))

(declare-fun m!2819133 () Bool)

(assert (=> b!2441090 m!2819133))

(assert (=> b!2441090 m!2819133))

(declare-fun m!2819135 () Bool)

(assert (=> b!2441090 m!2819135))

(declare-fun m!2819137 () Bool)

(assert (=> b!2441093 m!2819137))

(assert (=> b!2441085 m!2819133))

(assert (=> b!2441085 m!2819133))

(assert (=> b!2441085 m!2819135))

(declare-fun m!2819139 () Bool)

(assert (=> d!704831 m!2819139))

(assert (=> d!704831 m!2819037))

(assert (=> bm!149524 m!2819139))

(assert (=> b!2441087 m!2819039))

(assert (=> b!2441088 m!2819137))

(assert (=> b!2441091 m!2819137))

(assert (=> b!2441091 m!2819137))

(declare-fun m!2819141 () Bool)

(assert (=> b!2441091 m!2819141))

(assert (=> b!2441091 m!2819133))

(assert (=> b!2441091 m!2819141))

(assert (=> b!2441091 m!2819133))

(declare-fun m!2819143 () Bool)

(assert (=> b!2441091 m!2819143))

(assert (=> b!2440112 d!704831))

(assert (=> b!2440112 d!704813))

(assert (=> b!2439868 d!704791))

(assert (=> b!2439868 d!704789))

(declare-fun d!704833 () Bool)

(assert (=> d!704833 (= (isEmpty!16531 (t!208568 lt!878228)) ((_ is Nil!28493) (t!208568 lt!878228)))))

(assert (=> b!2439907 d!704833))

(declare-fun d!704835 () Bool)

(assert (=> d!704835 (= (isEmptyExpr!215 lt!878241) ((_ is EmptyExpr!7177) lt!878241))))

(assert (=> b!2439789 d!704835))

(declare-fun d!704837 () Bool)

(assert (=> d!704837 (= (isDefined!4492 lt!878298) (not (isEmpty!16535 lt!878298)))))

(declare-fun bs!464951 () Bool)

(assert (= bs!464951 d!704837))

(declare-fun m!2819145 () Bool)

(assert (=> bs!464951 m!2819145))

(assert (=> b!2440126 d!704837))

(declare-fun d!704839 () Bool)

(assert (=> d!704839 (= (Exists!1213 (ite c!389322 lambda!92396 lambda!92397)) (choose!14482 (ite c!389322 lambda!92396 lambda!92397)))))

(declare-fun bs!464952 () Bool)

(assert (= bs!464952 d!704839))

(declare-fun m!2819147 () Bool)

(assert (=> bs!464952 m!2819147))

(assert (=> bm!149406 d!704839))

(assert (=> b!2439929 d!704809))

(assert (=> b!2439929 d!704763))

(assert (=> b!2440130 d!704747))

(assert (=> b!2440130 d!704749))

(assert (=> b!2440130 d!704751))

(declare-fun b!2441094 () Bool)

(declare-fun e!1550969 () Bool)

(declare-fun lt!878367 () Option!5666)

(assert (=> b!2441094 (= e!1550969 (= (++!7080 (_1!16596 (get!8795 lt!878367)) (_2!16596 (get!8795 lt!878367))) s!9460))))

(declare-fun b!2441095 () Bool)

(declare-fun e!1550968 () Bool)

(assert (=> b!2441095 (= e!1550968 (not (isDefined!4492 lt!878367)))))

(declare-fun d!704841 () Bool)

(assert (=> d!704841 e!1550968))

(declare-fun res!1036464 () Bool)

(assert (=> d!704841 (=> res!1036464 e!1550968)))

(assert (=> d!704841 (= res!1036464 e!1550969)))

(declare-fun res!1036465 () Bool)

(assert (=> d!704841 (=> (not res!1036465) (not e!1550969))))

(assert (=> d!704841 (= res!1036465 (isDefined!4492 lt!878367))))

(declare-fun e!1550966 () Option!5666)

(assert (=> d!704841 (= lt!878367 e!1550966)))

(declare-fun c!389529 () Bool)

(declare-fun e!1550967 () Bool)

(assert (=> d!704841 (= c!389529 e!1550967)))

(declare-fun res!1036461 () Bool)

(assert (=> d!704841 (=> (not res!1036461) (not e!1550967))))

(assert (=> d!704841 (= res!1036461 (matchR!3292 lt!878222 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(assert (=> d!704841 (validRegex!2889 lt!878222)))

(assert (=> d!704841 (= (findConcatSeparation!774 lt!878222 EmptyExpr!7177 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460) s!9460) lt!878367)))

(declare-fun b!2441096 () Bool)

(declare-fun res!1036463 () Bool)

(assert (=> b!2441096 (=> (not res!1036463) (not e!1550969))))

(assert (=> b!2441096 (= res!1036463 (matchR!3292 EmptyExpr!7177 (_2!16596 (get!8795 lt!878367))))))

(declare-fun b!2441097 () Bool)

(assert (=> b!2441097 (= e!1550967 (matchR!3292 EmptyExpr!7177 (t!208567 s!9460)))))

(declare-fun b!2441098 () Bool)

(declare-fun res!1036462 () Bool)

(assert (=> b!2441098 (=> (not res!1036462) (not e!1550969))))

(assert (=> b!2441098 (= res!1036462 (matchR!3292 lt!878222 (_1!16596 (get!8795 lt!878367))))))

(declare-fun b!2441099 () Bool)

(declare-fun lt!878368 () Unit!41737)

(declare-fun lt!878369 () Unit!41737)

(assert (=> b!2441099 (= lt!878368 lt!878369)))

(assert (=> b!2441099 (= (++!7080 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (t!208567 (t!208567 s!9460))) s!9460)))

(assert (=> b!2441099 (= lt!878369 (lemmaMoveElementToOtherListKeepsConcatEq!699 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (h!33893 (t!208567 s!9460)) (t!208567 (t!208567 s!9460)) s!9460))))

(declare-fun e!1550970 () Option!5666)

(assert (=> b!2441099 (= e!1550970 (findConcatSeparation!774 lt!878222 EmptyExpr!7177 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (t!208567 (t!208567 s!9460)) s!9460))))

(declare-fun b!2441100 () Bool)

(assert (=> b!2441100 (= e!1550966 e!1550970)))

(declare-fun c!389530 () Bool)

(assert (=> b!2441100 (= c!389530 ((_ is Nil!28492) (t!208567 s!9460)))))

(declare-fun b!2441101 () Bool)

(assert (=> b!2441101 (= e!1550970 None!5665)))

(declare-fun b!2441102 () Bool)

(assert (=> b!2441102 (= e!1550966 (Some!5665 (tuple2!28111 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460))))))

(assert (= (and d!704841 res!1036461) b!2441097))

(assert (= (and d!704841 c!389529) b!2441102))

(assert (= (and d!704841 (not c!389529)) b!2441100))

(assert (= (and b!2441100 c!389530) b!2441101))

(assert (= (and b!2441100 (not c!389530)) b!2441099))

(assert (= (and d!704841 res!1036465) b!2441098))

(assert (= (and b!2441098 res!1036462) b!2441096))

(assert (= (and b!2441096 res!1036463) b!2441094))

(assert (= (and d!704841 (not res!1036464)) b!2441095))

(declare-fun m!2819149 () Bool)

(assert (=> b!2441095 m!2819149))

(declare-fun m!2819151 () Bool)

(assert (=> b!2441098 m!2819151))

(declare-fun m!2819153 () Bool)

(assert (=> b!2441098 m!2819153))

(assert (=> d!704841 m!2819149))

(assert (=> d!704841 m!2818373))

(declare-fun m!2819155 () Bool)

(assert (=> d!704841 m!2819155))

(assert (=> d!704841 m!2818205))

(assert (=> b!2441096 m!2819151))

(declare-fun m!2819157 () Bool)

(assert (=> b!2441096 m!2819157))

(assert (=> b!2441099 m!2818373))

(assert (=> b!2441099 m!2818953))

(assert (=> b!2441099 m!2818953))

(assert (=> b!2441099 m!2818955))

(assert (=> b!2441099 m!2818373))

(assert (=> b!2441099 m!2818957))

(assert (=> b!2441099 m!2818953))

(declare-fun m!2819159 () Bool)

(assert (=> b!2441099 m!2819159))

(assert (=> b!2441094 m!2819151))

(declare-fun m!2819161 () Bool)

(assert (=> b!2441094 m!2819161))

(declare-fun m!2819163 () Bool)

(assert (=> b!2441097 m!2819163))

(assert (=> b!2440130 d!704841))

(declare-fun d!704843 () Bool)

(assert (=> d!704843 (= (nullable!2198 (Concat!11813 lt!878222 EmptyExpr!7177)) (nullableFct!534 (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun bs!464953 () Bool)

(assert (= bs!464953 d!704843))

(declare-fun m!2819165 () Bool)

(assert (=> bs!464953 m!2819165))

(assert (=> b!2439926 d!704843))

(declare-fun d!704845 () Bool)

(declare-fun lt!878372 () Int)

(assert (=> d!704845 (>= lt!878372 0)))

(declare-fun e!1550973 () Int)

(assert (=> d!704845 (= lt!878372 e!1550973)))

(declare-fun c!389533 () Bool)

(assert (=> d!704845 (= c!389533 ((_ is Nil!28492) lt!878269))))

(assert (=> d!704845 (= (size!22262 lt!878269) lt!878372)))

(declare-fun b!2441107 () Bool)

(assert (=> b!2441107 (= e!1550973 0)))

(declare-fun b!2441108 () Bool)

(assert (=> b!2441108 (= e!1550973 (+ 1 (size!22262 (t!208567 lt!878269))))))

(assert (= (and d!704845 c!389533) b!2441107))

(assert (= (and d!704845 (not c!389533)) b!2441108))

(declare-fun m!2819167 () Bool)

(assert (=> b!2441108 m!2819167))

(assert (=> b!2439982 d!704845))

(declare-fun d!704847 () Bool)

(declare-fun lt!878373 () Int)

(assert (=> d!704847 (>= lt!878373 0)))

(declare-fun e!1550974 () Int)

(assert (=> d!704847 (= lt!878373 e!1550974)))

(declare-fun c!389534 () Bool)

(assert (=> d!704847 (= c!389534 ((_ is Nil!28492) (_1!16596 lt!878224)))))

(assert (=> d!704847 (= (size!22262 (_1!16596 lt!878224)) lt!878373)))

(declare-fun b!2441109 () Bool)

(assert (=> b!2441109 (= e!1550974 0)))

(declare-fun b!2441110 () Bool)

(assert (=> b!2441110 (= e!1550974 (+ 1 (size!22262 (t!208567 (_1!16596 lt!878224)))))))

(assert (= (and d!704847 c!389534) b!2441109))

(assert (= (and d!704847 (not c!389534)) b!2441110))

(assert (=> b!2441110 m!2818881))

(assert (=> b!2439982 d!704847))

(declare-fun d!704849 () Bool)

(declare-fun lt!878374 () Int)

(assert (=> d!704849 (>= lt!878374 0)))

(declare-fun e!1550975 () Int)

(assert (=> d!704849 (= lt!878374 e!1550975)))

(declare-fun c!389535 () Bool)

(assert (=> d!704849 (= c!389535 ((_ is Nil!28492) (_2!16596 lt!878224)))))

(assert (=> d!704849 (= (size!22262 (_2!16596 lt!878224)) lt!878374)))

(declare-fun b!2441111 () Bool)

(assert (=> b!2441111 (= e!1550975 0)))

(declare-fun b!2441112 () Bool)

(assert (=> b!2441112 (= e!1550975 (+ 1 (size!22262 (t!208567 (_2!16596 lt!878224)))))))

(assert (= (and d!704849 c!389535) b!2441111))

(assert (= (and d!704849 (not c!389535)) b!2441112))

(declare-fun m!2819169 () Bool)

(assert (=> b!2441112 m!2819169))

(assert (=> b!2439982 d!704849))

(assert (=> d!704535 d!704837))

(declare-fun b!2441113 () Bool)

(declare-fun e!1550979 () Bool)

(declare-fun lt!878375 () Bool)

(declare-fun call!149530 () Bool)

(assert (=> b!2441113 (= e!1550979 (= lt!878375 call!149530))))

(declare-fun d!704851 () Bool)

(assert (=> d!704851 e!1550979))

(declare-fun c!389538 () Bool)

(assert (=> d!704851 (= c!389538 ((_ is EmptyExpr!7177) lt!878222))))

(declare-fun e!1550977 () Bool)

(assert (=> d!704851 (= lt!878375 e!1550977)))

(declare-fun c!389536 () Bool)

(assert (=> d!704851 (= c!389536 (isEmpty!16534 Nil!28492))))

(assert (=> d!704851 (validRegex!2889 lt!878222)))

(assert (=> d!704851 (= (matchR!3292 lt!878222 Nil!28492) lt!878375)))

(declare-fun b!2441114 () Bool)

(declare-fun e!1550981 () Bool)

(assert (=> b!2441114 (= e!1550979 e!1550981)))

(declare-fun c!389537 () Bool)

(assert (=> b!2441114 (= c!389537 ((_ is EmptyLang!7177) lt!878222))))

(declare-fun b!2441115 () Bool)

(declare-fun res!1036468 () Bool)

(declare-fun e!1550976 () Bool)

(assert (=> b!2441115 (=> res!1036468 e!1550976)))

(declare-fun e!1550980 () Bool)

(assert (=> b!2441115 (= res!1036468 e!1550980)))

(declare-fun res!1036471 () Bool)

(assert (=> b!2441115 (=> (not res!1036471) (not e!1550980))))

(assert (=> b!2441115 (= res!1036471 lt!878375)))

(declare-fun b!2441116 () Bool)

(assert (=> b!2441116 (= e!1550981 (not lt!878375))))

(declare-fun b!2441117 () Bool)

(declare-fun e!1550982 () Bool)

(assert (=> b!2441117 (= e!1550976 e!1550982)))

(declare-fun res!1036473 () Bool)

(assert (=> b!2441117 (=> (not res!1036473) (not e!1550982))))

(assert (=> b!2441117 (= res!1036473 (not lt!878375))))

(declare-fun b!2441118 () Bool)

(declare-fun res!1036470 () Bool)

(assert (=> b!2441118 (=> (not res!1036470) (not e!1550980))))

(assert (=> b!2441118 (= res!1036470 (isEmpty!16534 (tail!3818 Nil!28492)))))

(declare-fun b!2441119 () Bool)

(declare-fun e!1550978 () Bool)

(assert (=> b!2441119 (= e!1550982 e!1550978)))

(declare-fun res!1036467 () Bool)

(assert (=> b!2441119 (=> res!1036467 e!1550978)))

(assert (=> b!2441119 (= res!1036467 call!149530)))

(declare-fun b!2441120 () Bool)

(assert (=> b!2441120 (= e!1550977 (nullable!2198 lt!878222))))

(declare-fun b!2441121 () Bool)

(assert (=> b!2441121 (= e!1550980 (= (head!5545 Nil!28492) (c!389219 lt!878222)))))

(declare-fun b!2441122 () Bool)

(declare-fun res!1036472 () Bool)

(assert (=> b!2441122 (=> (not res!1036472) (not e!1550980))))

(assert (=> b!2441122 (= res!1036472 (not call!149530))))

(declare-fun bm!149525 () Bool)

(assert (=> bm!149525 (= call!149530 (isEmpty!16534 Nil!28492))))

(declare-fun b!2441123 () Bool)

(declare-fun res!1036466 () Bool)

(assert (=> b!2441123 (=> res!1036466 e!1550978)))

(assert (=> b!2441123 (= res!1036466 (not (isEmpty!16534 (tail!3818 Nil!28492))))))

(declare-fun b!2441124 () Bool)

(assert (=> b!2441124 (= e!1550977 (matchR!3292 (derivativeStep!1852 lt!878222 (head!5545 Nil!28492)) (tail!3818 Nil!28492)))))

(declare-fun b!2441125 () Bool)

(declare-fun res!1036469 () Bool)

(assert (=> b!2441125 (=> res!1036469 e!1550976)))

(assert (=> b!2441125 (= res!1036469 (not ((_ is ElementMatch!7177) lt!878222)))))

(assert (=> b!2441125 (= e!1550981 e!1550976)))

(declare-fun b!2441126 () Bool)

(assert (=> b!2441126 (= e!1550978 (not (= (head!5545 Nil!28492) (c!389219 lt!878222))))))

(assert (= (and d!704851 c!389536) b!2441120))

(assert (= (and d!704851 (not c!389536)) b!2441124))

(assert (= (and d!704851 c!389538) b!2441113))

(assert (= (and d!704851 (not c!389538)) b!2441114))

(assert (= (and b!2441114 c!389537) b!2441116))

(assert (= (and b!2441114 (not c!389537)) b!2441125))

(assert (= (and b!2441125 (not res!1036469)) b!2441115))

(assert (= (and b!2441115 res!1036471) b!2441122))

(assert (= (and b!2441122 res!1036472) b!2441118))

(assert (= (and b!2441118 res!1036470) b!2441121))

(assert (= (and b!2441115 (not res!1036468)) b!2441117))

(assert (= (and b!2441117 res!1036473) b!2441119))

(assert (= (and b!2441119 (not res!1036467)) b!2441123))

(assert (= (and b!2441123 (not res!1036466)) b!2441126))

(assert (= (or b!2441113 b!2441122 b!2441119) bm!149525))

(assert (=> b!2441123 m!2819079))

(assert (=> b!2441123 m!2819079))

(assert (=> b!2441123 m!2819081))

(assert (=> b!2441126 m!2819083))

(assert (=> b!2441118 m!2819079))

(assert (=> b!2441118 m!2819079))

(assert (=> b!2441118 m!2819081))

(assert (=> d!704851 m!2819085))

(assert (=> d!704851 m!2818205))

(assert (=> bm!149525 m!2819085))

(assert (=> b!2441120 m!2818207))

(assert (=> b!2441121 m!2819083))

(assert (=> b!2441124 m!2819083))

(assert (=> b!2441124 m!2819083))

(declare-fun m!2819171 () Bool)

(assert (=> b!2441124 m!2819171))

(assert (=> b!2441124 m!2819079))

(assert (=> b!2441124 m!2819171))

(assert (=> b!2441124 m!2819079))

(declare-fun m!2819173 () Bool)

(assert (=> b!2441124 m!2819173))

(assert (=> d!704535 d!704851))

(assert (=> d!704535 d!704731))

(declare-fun b!2441127 () Bool)

(declare-fun e!1550986 () Bool)

(declare-fun lt!878376 () Bool)

(declare-fun call!149531 () Bool)

(assert (=> b!2441127 (= e!1550986 (= lt!878376 call!149531))))

(declare-fun d!704853 () Bool)

(assert (=> d!704853 e!1550986))

(declare-fun c!389541 () Bool)

(assert (=> d!704853 (= c!389541 ((_ is EmptyExpr!7177) (regOne!14866 r!13927)))))

(declare-fun e!1550984 () Bool)

(assert (=> d!704853 (= lt!878376 e!1550984)))

(declare-fun c!389539 () Bool)

(assert (=> d!704853 (= c!389539 (isEmpty!16534 (_1!16596 (get!8795 lt!878295))))))

(assert (=> d!704853 (validRegex!2889 (regOne!14866 r!13927))))

(assert (=> d!704853 (= (matchR!3292 (regOne!14866 r!13927) (_1!16596 (get!8795 lt!878295))) lt!878376)))

(declare-fun b!2441128 () Bool)

(declare-fun e!1550988 () Bool)

(assert (=> b!2441128 (= e!1550986 e!1550988)))

(declare-fun c!389540 () Bool)

(assert (=> b!2441128 (= c!389540 ((_ is EmptyLang!7177) (regOne!14866 r!13927)))))

(declare-fun b!2441129 () Bool)

(declare-fun res!1036476 () Bool)

(declare-fun e!1550983 () Bool)

(assert (=> b!2441129 (=> res!1036476 e!1550983)))

(declare-fun e!1550987 () Bool)

(assert (=> b!2441129 (= res!1036476 e!1550987)))

(declare-fun res!1036479 () Bool)

(assert (=> b!2441129 (=> (not res!1036479) (not e!1550987))))

(assert (=> b!2441129 (= res!1036479 lt!878376)))

(declare-fun b!2441130 () Bool)

(assert (=> b!2441130 (= e!1550988 (not lt!878376))))

(declare-fun b!2441131 () Bool)

(declare-fun e!1550989 () Bool)

(assert (=> b!2441131 (= e!1550983 e!1550989)))

(declare-fun res!1036481 () Bool)

(assert (=> b!2441131 (=> (not res!1036481) (not e!1550989))))

(assert (=> b!2441131 (= res!1036481 (not lt!878376))))

(declare-fun b!2441132 () Bool)

(declare-fun res!1036478 () Bool)

(assert (=> b!2441132 (=> (not res!1036478) (not e!1550987))))

(assert (=> b!2441132 (= res!1036478 (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878295)))))))

(declare-fun b!2441133 () Bool)

(declare-fun e!1550985 () Bool)

(assert (=> b!2441133 (= e!1550989 e!1550985)))

(declare-fun res!1036475 () Bool)

(assert (=> b!2441133 (=> res!1036475 e!1550985)))

(assert (=> b!2441133 (= res!1036475 call!149531)))

(declare-fun b!2441134 () Bool)

(assert (=> b!2441134 (= e!1550984 (nullable!2198 (regOne!14866 r!13927)))))

(declare-fun b!2441135 () Bool)

(assert (=> b!2441135 (= e!1550987 (= (head!5545 (_1!16596 (get!8795 lt!878295))) (c!389219 (regOne!14866 r!13927))))))

(declare-fun b!2441136 () Bool)

(declare-fun res!1036480 () Bool)

(assert (=> b!2441136 (=> (not res!1036480) (not e!1550987))))

(assert (=> b!2441136 (= res!1036480 (not call!149531))))

(declare-fun bm!149526 () Bool)

(assert (=> bm!149526 (= call!149531 (isEmpty!16534 (_1!16596 (get!8795 lt!878295))))))

(declare-fun b!2441137 () Bool)

(declare-fun res!1036474 () Bool)

(assert (=> b!2441137 (=> res!1036474 e!1550985)))

(assert (=> b!2441137 (= res!1036474 (not (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878295))))))))

(declare-fun b!2441138 () Bool)

(assert (=> b!2441138 (= e!1550984 (matchR!3292 (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295)))) (tail!3818 (_1!16596 (get!8795 lt!878295)))))))

(declare-fun b!2441139 () Bool)

(declare-fun res!1036477 () Bool)

(assert (=> b!2441139 (=> res!1036477 e!1550983)))

(assert (=> b!2441139 (= res!1036477 (not ((_ is ElementMatch!7177) (regOne!14866 r!13927))))))

(assert (=> b!2441139 (= e!1550988 e!1550983)))

(declare-fun b!2441140 () Bool)

(assert (=> b!2441140 (= e!1550985 (not (= (head!5545 (_1!16596 (get!8795 lt!878295))) (c!389219 (regOne!14866 r!13927)))))))

(assert (= (and d!704853 c!389539) b!2441134))

(assert (= (and d!704853 (not c!389539)) b!2441138))

(assert (= (and d!704853 c!389541) b!2441127))

(assert (= (and d!704853 (not c!389541)) b!2441128))

(assert (= (and b!2441128 c!389540) b!2441130))

(assert (= (and b!2441128 (not c!389540)) b!2441139))

(assert (= (and b!2441139 (not res!1036477)) b!2441129))

(assert (= (and b!2441129 res!1036479) b!2441136))

(assert (= (and b!2441136 res!1036480) b!2441132))

(assert (= (and b!2441132 res!1036478) b!2441135))

(assert (= (and b!2441129 (not res!1036476)) b!2441131))

(assert (= (and b!2441131 res!1036481) b!2441133))

(assert (= (and b!2441133 (not res!1036475)) b!2441137))

(assert (= (and b!2441137 (not res!1036474)) b!2441140))

(assert (= (or b!2441127 b!2441136 b!2441133) bm!149526))

(declare-fun m!2819175 () Bool)

(assert (=> b!2441137 m!2819175))

(assert (=> b!2441137 m!2819175))

(declare-fun m!2819177 () Bool)

(assert (=> b!2441137 m!2819177))

(declare-fun m!2819179 () Bool)

(assert (=> b!2441140 m!2819179))

(assert (=> b!2441132 m!2819175))

(assert (=> b!2441132 m!2819175))

(assert (=> b!2441132 m!2819177))

(declare-fun m!2819181 () Bool)

(assert (=> d!704853 m!2819181))

(assert (=> d!704853 m!2818351))

(assert (=> bm!149526 m!2819181))

(assert (=> b!2441134 m!2819087))

(assert (=> b!2441135 m!2819179))

(assert (=> b!2441138 m!2819179))

(assert (=> b!2441138 m!2819179))

(declare-fun m!2819183 () Bool)

(assert (=> b!2441138 m!2819183))

(assert (=> b!2441138 m!2819175))

(assert (=> b!2441138 m!2819183))

(assert (=> b!2441138 m!2819175))

(declare-fun m!2819185 () Bool)

(assert (=> b!2441138 m!2819185))

(assert (=> b!2440114 d!704853))

(assert (=> b!2440114 d!704813))

(assert (=> b!2439873 d!704791))

(assert (=> b!2439873 d!704789))

(declare-fun d!704855 () Bool)

(assert (=> d!704855 (= (isEmptyExpr!215 lt!878260) ((_ is EmptyExpr!7177) lt!878260))))

(assert (=> b!2439913 d!704855))

(declare-fun d!704857 () Bool)

(declare-fun res!1036482 () Bool)

(declare-fun e!1550990 () Bool)

(assert (=> d!704857 (=> res!1036482 e!1550990)))

(assert (=> d!704857 (= res!1036482 ((_ is Nil!28493) (t!208568 l!9164)))))

(assert (=> d!704857 (= (forall!5811 (t!208568 l!9164) lambda!92357) e!1550990)))

(declare-fun b!2441141 () Bool)

(declare-fun e!1550991 () Bool)

(assert (=> b!2441141 (= e!1550990 e!1550991)))

(declare-fun res!1036483 () Bool)

(assert (=> b!2441141 (=> (not res!1036483) (not e!1550991))))

(assert (=> b!2441141 (= res!1036483 (dynLambda!12256 lambda!92357 (h!33894 (t!208568 l!9164))))))

(declare-fun b!2441142 () Bool)

(assert (=> b!2441142 (= e!1550991 (forall!5811 (t!208568 (t!208568 l!9164)) lambda!92357))))

(assert (= (and d!704857 (not res!1036482)) b!2441141))

(assert (= (and b!2441141 res!1036483) b!2441142))

(declare-fun b_lambda!74943 () Bool)

(assert (=> (not b_lambda!74943) (not b!2441141)))

(declare-fun m!2819187 () Bool)

(assert (=> b!2441141 m!2819187))

(declare-fun m!2819189 () Bool)

(assert (=> b!2441142 m!2819189))

(assert (=> b!2440124 d!704857))

(declare-fun b!2441143 () Bool)

(declare-fun e!1550995 () Bool)

(declare-fun lt!878377 () Bool)

(declare-fun call!149532 () Bool)

(assert (=> b!2441143 (= e!1550995 (= lt!878377 call!149532))))

(declare-fun d!704859 () Bool)

(assert (=> d!704859 e!1550995))

(declare-fun c!389544 () Bool)

(assert (=> d!704859 (= c!389544 ((_ is EmptyExpr!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(declare-fun e!1550993 () Bool)

(assert (=> d!704859 (= lt!878377 e!1550993)))

(declare-fun c!389542 () Bool)

(assert (=> d!704859 (= c!389542 (isEmpty!16534 (tail!3818 s!9460)))))

(assert (=> d!704859 (validRegex!2889 (derivativeStep!1852 r!13927 (head!5545 s!9460)))))

(assert (=> d!704859 (= (matchR!3292 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (tail!3818 s!9460)) lt!878377)))

(declare-fun b!2441144 () Bool)

(declare-fun e!1550997 () Bool)

(assert (=> b!2441144 (= e!1550995 e!1550997)))

(declare-fun c!389543 () Bool)

(assert (=> b!2441144 (= c!389543 ((_ is EmptyLang!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(declare-fun b!2441145 () Bool)

(declare-fun res!1036486 () Bool)

(declare-fun e!1550992 () Bool)

(assert (=> b!2441145 (=> res!1036486 e!1550992)))

(declare-fun e!1550996 () Bool)

(assert (=> b!2441145 (= res!1036486 e!1550996)))

(declare-fun res!1036489 () Bool)

(assert (=> b!2441145 (=> (not res!1036489) (not e!1550996))))

(assert (=> b!2441145 (= res!1036489 lt!878377)))

(declare-fun b!2441146 () Bool)

(assert (=> b!2441146 (= e!1550997 (not lt!878377))))

(declare-fun b!2441147 () Bool)

(declare-fun e!1550998 () Bool)

(assert (=> b!2441147 (= e!1550992 e!1550998)))

(declare-fun res!1036491 () Bool)

(assert (=> b!2441147 (=> (not res!1036491) (not e!1550998))))

(assert (=> b!2441147 (= res!1036491 (not lt!878377))))

(declare-fun b!2441148 () Bool)

(declare-fun res!1036488 () Bool)

(assert (=> b!2441148 (=> (not res!1036488) (not e!1550996))))

(assert (=> b!2441148 (= res!1036488 (isEmpty!16534 (tail!3818 (tail!3818 s!9460))))))

(declare-fun b!2441149 () Bool)

(declare-fun e!1550994 () Bool)

(assert (=> b!2441149 (= e!1550998 e!1550994)))

(declare-fun res!1036485 () Bool)

(assert (=> b!2441149 (=> res!1036485 e!1550994)))

(assert (=> b!2441149 (= res!1036485 call!149532)))

(declare-fun b!2441150 () Bool)

(assert (=> b!2441150 (= e!1550993 (nullable!2198 (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(declare-fun b!2441151 () Bool)

(assert (=> b!2441151 (= e!1550996 (= (head!5545 (tail!3818 s!9460)) (c!389219 (derivativeStep!1852 r!13927 (head!5545 s!9460)))))))

(declare-fun b!2441152 () Bool)

(declare-fun res!1036490 () Bool)

(assert (=> b!2441152 (=> (not res!1036490) (not e!1550996))))

(assert (=> b!2441152 (= res!1036490 (not call!149532))))

(declare-fun bm!149527 () Bool)

(assert (=> bm!149527 (= call!149532 (isEmpty!16534 (tail!3818 s!9460)))))

(declare-fun b!2441153 () Bool)

(declare-fun res!1036484 () Bool)

(assert (=> b!2441153 (=> res!1036484 e!1550994)))

(assert (=> b!2441153 (= res!1036484 (not (isEmpty!16534 (tail!3818 (tail!3818 s!9460)))))))

(declare-fun b!2441154 () Bool)

(assert (=> b!2441154 (= e!1550993 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))) (tail!3818 (tail!3818 s!9460))))))

(declare-fun b!2441155 () Bool)

(declare-fun res!1036487 () Bool)

(assert (=> b!2441155 (=> res!1036487 e!1550992)))

(assert (=> b!2441155 (= res!1036487 (not ((_ is ElementMatch!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460)))))))

(assert (=> b!2441155 (= e!1550997 e!1550992)))

(declare-fun b!2441156 () Bool)

(assert (=> b!2441156 (= e!1550994 (not (= (head!5545 (tail!3818 s!9460)) (c!389219 (derivativeStep!1852 r!13927 (head!5545 s!9460))))))))

(assert (= (and d!704859 c!389542) b!2441150))

(assert (= (and d!704859 (not c!389542)) b!2441154))

(assert (= (and d!704859 c!389544) b!2441143))

(assert (= (and d!704859 (not c!389544)) b!2441144))

(assert (= (and b!2441144 c!389543) b!2441146))

(assert (= (and b!2441144 (not c!389543)) b!2441155))

(assert (= (and b!2441155 (not res!1036487)) b!2441145))

(assert (= (and b!2441145 res!1036489) b!2441152))

(assert (= (and b!2441152 res!1036490) b!2441148))

(assert (= (and b!2441148 res!1036488) b!2441151))

(assert (= (and b!2441145 (not res!1036486)) b!2441147))

(assert (= (and b!2441147 res!1036491) b!2441149))

(assert (= (and b!2441149 (not res!1036485)) b!2441153))

(assert (= (and b!2441153 (not res!1036484)) b!2441156))

(assert (= (or b!2441143 b!2441152 b!2441149) bm!149527))

(assert (=> b!2441153 m!2818197))

(assert (=> b!2441153 m!2819045))

(assert (=> b!2441153 m!2819045))

(assert (=> b!2441153 m!2819047))

(assert (=> b!2441156 m!2818197))

(assert (=> b!2441156 m!2819049))

(assert (=> b!2441148 m!2818197))

(assert (=> b!2441148 m!2819045))

(assert (=> b!2441148 m!2819045))

(assert (=> b!2441148 m!2819047))

(assert (=> d!704859 m!2818197))

(assert (=> d!704859 m!2818199))

(assert (=> d!704859 m!2818417))

(declare-fun m!2819191 () Bool)

(assert (=> d!704859 m!2819191))

(assert (=> bm!149527 m!2818197))

(assert (=> bm!149527 m!2818199))

(assert (=> b!2441150 m!2818417))

(declare-fun m!2819193 () Bool)

(assert (=> b!2441150 m!2819193))

(assert (=> b!2441151 m!2818197))

(assert (=> b!2441151 m!2819049))

(assert (=> b!2441154 m!2818197))

(assert (=> b!2441154 m!2819049))

(assert (=> b!2441154 m!2818417))

(assert (=> b!2441154 m!2819049))

(declare-fun m!2819195 () Bool)

(assert (=> b!2441154 m!2819195))

(assert (=> b!2441154 m!2818197))

(assert (=> b!2441154 m!2819045))

(assert (=> b!2441154 m!2819195))

(assert (=> b!2441154 m!2819045))

(declare-fun m!2819197 () Bool)

(assert (=> b!2441154 m!2819197))

(assert (=> b!2440188 d!704859))

(declare-fun b!2441157 () Bool)

(declare-fun e!1551002 () Regex!7177)

(declare-fun e!1550999 () Regex!7177)

(assert (=> b!2441157 (= e!1551002 e!1550999)))

(declare-fun c!389547 () Bool)

(assert (=> b!2441157 (= c!389547 ((_ is ElementMatch!7177) r!13927))))

(declare-fun b!2441158 () Bool)

(assert (=> b!2441158 (= e!1550999 (ite (= (head!5545 s!9460) (c!389219 r!13927)) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389548 () Bool)

(declare-fun c!389546 () Bool)

(declare-fun call!149536 () Regex!7177)

(declare-fun bm!149528 () Bool)

(assert (=> bm!149528 (= call!149536 (derivativeStep!1852 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927))) (head!5545 s!9460)))))

(declare-fun b!2441160 () Bool)

(declare-fun c!389549 () Bool)

(assert (=> b!2441160 (= c!389549 (nullable!2198 (regOne!14866 r!13927)))))

(declare-fun e!1551000 () Regex!7177)

(declare-fun e!1551001 () Regex!7177)

(assert (=> b!2441160 (= e!1551000 e!1551001)))

(declare-fun b!2441161 () Bool)

(declare-fun call!149533 () Regex!7177)

(assert (=> b!2441161 (= e!1551000 (Concat!11813 call!149533 r!13927))))

(declare-fun b!2441162 () Bool)

(assert (=> b!2441162 (= c!389548 ((_ is Union!7177) r!13927))))

(declare-fun e!1551003 () Regex!7177)

(assert (=> b!2441162 (= e!1550999 e!1551003)))

(declare-fun bm!149529 () Bool)

(assert (=> bm!149529 (= call!149533 call!149536)))

(declare-fun bm!149530 () Bool)

(declare-fun call!149534 () Regex!7177)

(declare-fun call!149535 () Regex!7177)

(assert (=> bm!149530 (= call!149534 call!149535)))

(declare-fun bm!149531 () Bool)

(assert (=> bm!149531 (= call!149535 (derivativeStep!1852 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927))) (head!5545 s!9460)))))

(declare-fun b!2441159 () Bool)

(assert (=> b!2441159 (= e!1551001 (Union!7177 (Concat!11813 call!149533 (regTwo!14866 r!13927)) call!149534))))

(declare-fun d!704861 () Bool)

(declare-fun lt!878378 () Regex!7177)

(assert (=> d!704861 (validRegex!2889 lt!878378)))

(assert (=> d!704861 (= lt!878378 e!1551002)))

(declare-fun c!389545 () Bool)

(assert (=> d!704861 (= c!389545 (or ((_ is EmptyExpr!7177) r!13927) ((_ is EmptyLang!7177) r!13927)))))

(assert (=> d!704861 (validRegex!2889 r!13927)))

(assert (=> d!704861 (= (derivativeStep!1852 r!13927 (head!5545 s!9460)) lt!878378)))

(declare-fun b!2441163 () Bool)

(assert (=> b!2441163 (= e!1551003 e!1551000)))

(assert (=> b!2441163 (= c!389546 ((_ is Star!7177) r!13927))))

(declare-fun b!2441164 () Bool)

(assert (=> b!2441164 (= e!1551002 EmptyLang!7177)))

(declare-fun b!2441165 () Bool)

(assert (=> b!2441165 (= e!1551003 (Union!7177 call!149536 call!149535))))

(declare-fun b!2441166 () Bool)

(assert (=> b!2441166 (= e!1551001 (Union!7177 (Concat!11813 call!149534 (regTwo!14866 r!13927)) EmptyLang!7177))))

(assert (= (and d!704861 c!389545) b!2441164))

(assert (= (and d!704861 (not c!389545)) b!2441157))

(assert (= (and b!2441157 c!389547) b!2441158))

(assert (= (and b!2441157 (not c!389547)) b!2441162))

(assert (= (and b!2441162 c!389548) b!2441165))

(assert (= (and b!2441162 (not c!389548)) b!2441163))

(assert (= (and b!2441163 c!389546) b!2441161))

(assert (= (and b!2441163 (not c!389546)) b!2441160))

(assert (= (and b!2441160 c!389549) b!2441159))

(assert (= (and b!2441160 (not c!389549)) b!2441166))

(assert (= (or b!2441159 b!2441166) bm!149530))

(assert (= (or b!2441161 b!2441159) bm!149529))

(assert (= (or b!2441165 bm!149529) bm!149528))

(assert (= (or b!2441165 bm!149530) bm!149531))

(assert (=> bm!149528 m!2818201))

(declare-fun m!2819199 () Bool)

(assert (=> bm!149528 m!2819199))

(assert (=> b!2441160 m!2819087))

(assert (=> bm!149531 m!2818201))

(declare-fun m!2819201 () Bool)

(assert (=> bm!149531 m!2819201))

(declare-fun m!2819203 () Bool)

(assert (=> d!704861 m!2819203))

(assert (=> d!704861 m!2818413))

(assert (=> b!2440188 d!704861))

(assert (=> b!2440188 d!704721))

(assert (=> b!2440188 d!704789))

(assert (=> b!2440185 d!704721))

(declare-fun d!704863 () Bool)

(assert (=> d!704863 (= (isEmpty!16535 (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) Nil!28492 s!9460 s!9460)) (not ((_ is Some!5665) (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) Nil!28492 s!9460 s!9460))))))

(assert (=> d!704511 d!704863))

(declare-fun d!704865 () Bool)

(assert (=> d!704865 true))

(assert (=> d!704865 true))

(declare-fun res!1036492 () Bool)

(assert (=> d!704865 (= (choose!14482 lambda!92358) res!1036492)))

(assert (=> d!704527 d!704865))

(assert (=> bm!149407 d!704741))

(declare-fun b!2441170 () Bool)

(declare-fun e!1551004 () Bool)

(declare-fun tp!774891 () Bool)

(declare-fun tp!774890 () Bool)

(assert (=> b!2441170 (= e!1551004 (and tp!774891 tp!774890))))

(declare-fun b!2441167 () Bool)

(assert (=> b!2441167 (= e!1551004 tp_is_empty!11767)))

(declare-fun b!2441168 () Bool)

(declare-fun tp!774889 () Bool)

(declare-fun tp!774888 () Bool)

(assert (=> b!2441168 (= e!1551004 (and tp!774889 tp!774888))))

(declare-fun b!2441169 () Bool)

(declare-fun tp!774892 () Bool)

(assert (=> b!2441169 (= e!1551004 tp!774892)))

(assert (=> b!2440230 (= tp!774723 e!1551004)))

(assert (= (and b!2440230 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14867 r!13927)))) b!2441167))

(assert (= (and b!2440230 ((_ is Concat!11813) (regOne!14867 (regOne!14867 r!13927)))) b!2441168))

(assert (= (and b!2440230 ((_ is Star!7177) (regOne!14867 (regOne!14867 r!13927)))) b!2441169))

(assert (= (and b!2440230 ((_ is Union!7177) (regOne!14867 (regOne!14867 r!13927)))) b!2441170))

(declare-fun b!2441174 () Bool)

(declare-fun e!1551005 () Bool)

(declare-fun tp!774896 () Bool)

(declare-fun tp!774895 () Bool)

(assert (=> b!2441174 (= e!1551005 (and tp!774896 tp!774895))))

(declare-fun b!2441171 () Bool)

(assert (=> b!2441171 (= e!1551005 tp_is_empty!11767)))

(declare-fun b!2441172 () Bool)

(declare-fun tp!774894 () Bool)

(declare-fun tp!774893 () Bool)

(assert (=> b!2441172 (= e!1551005 (and tp!774894 tp!774893))))

(declare-fun b!2441173 () Bool)

(declare-fun tp!774897 () Bool)

(assert (=> b!2441173 (= e!1551005 tp!774897)))

(assert (=> b!2440230 (= tp!774722 e!1551005)))

(assert (= (and b!2440230 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14867 r!13927)))) b!2441171))

(assert (= (and b!2440230 ((_ is Concat!11813) (regTwo!14867 (regOne!14867 r!13927)))) b!2441172))

(assert (= (and b!2440230 ((_ is Star!7177) (regTwo!14867 (regOne!14867 r!13927)))) b!2441173))

(assert (= (and b!2440230 ((_ is Union!7177) (regTwo!14867 (regOne!14867 r!13927)))) b!2441174))

(declare-fun b!2441178 () Bool)

(declare-fun e!1551006 () Bool)

(declare-fun tp!774901 () Bool)

(declare-fun tp!774900 () Bool)

(assert (=> b!2441178 (= e!1551006 (and tp!774901 tp!774900))))

(declare-fun b!2441175 () Bool)

(assert (=> b!2441175 (= e!1551006 tp_is_empty!11767)))

(declare-fun b!2441176 () Bool)

(declare-fun tp!774899 () Bool)

(declare-fun tp!774898 () Bool)

(assert (=> b!2441176 (= e!1551006 (and tp!774899 tp!774898))))

(declare-fun b!2441177 () Bool)

(declare-fun tp!774902 () Bool)

(assert (=> b!2441177 (= e!1551006 tp!774902)))

(assert (=> b!2440207 (= tp!774700 e!1551006)))

(assert (= (and b!2440207 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14866 r!13927)))) b!2441175))

(assert (= (and b!2440207 ((_ is Concat!11813) (reg!7506 (regTwo!14866 r!13927)))) b!2441176))

(assert (= (and b!2440207 ((_ is Star!7177) (reg!7506 (regTwo!14866 r!13927)))) b!2441177))

(assert (= (and b!2440207 ((_ is Union!7177) (reg!7506 (regTwo!14866 r!13927)))) b!2441178))

(declare-fun b!2441182 () Bool)

(declare-fun e!1551007 () Bool)

(declare-fun tp!774906 () Bool)

(declare-fun tp!774905 () Bool)

(assert (=> b!2441182 (= e!1551007 (and tp!774906 tp!774905))))

(declare-fun b!2441179 () Bool)

(assert (=> b!2441179 (= e!1551007 tp_is_empty!11767)))

(declare-fun b!2441180 () Bool)

(declare-fun tp!774904 () Bool)

(declare-fun tp!774903 () Bool)

(assert (=> b!2441180 (= e!1551007 (and tp!774904 tp!774903))))

(declare-fun b!2441181 () Bool)

(declare-fun tp!774907 () Bool)

(assert (=> b!2441181 (= e!1551007 tp!774907)))

(assert (=> b!2440208 (= tp!774699 e!1551007)))

(assert (= (and b!2440208 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14866 r!13927)))) b!2441179))

(assert (= (and b!2440208 ((_ is Concat!11813) (regOne!14867 (regTwo!14866 r!13927)))) b!2441180))

(assert (= (and b!2440208 ((_ is Star!7177) (regOne!14867 (regTwo!14866 r!13927)))) b!2441181))

(assert (= (and b!2440208 ((_ is Union!7177) (regOne!14867 (regTwo!14866 r!13927)))) b!2441182))

(declare-fun b!2441186 () Bool)

(declare-fun e!1551008 () Bool)

(declare-fun tp!774911 () Bool)

(declare-fun tp!774910 () Bool)

(assert (=> b!2441186 (= e!1551008 (and tp!774911 tp!774910))))

(declare-fun b!2441183 () Bool)

(assert (=> b!2441183 (= e!1551008 tp_is_empty!11767)))

(declare-fun b!2441184 () Bool)

(declare-fun tp!774909 () Bool)

(declare-fun tp!774908 () Bool)

(assert (=> b!2441184 (= e!1551008 (and tp!774909 tp!774908))))

(declare-fun b!2441185 () Bool)

(declare-fun tp!774912 () Bool)

(assert (=> b!2441185 (= e!1551008 tp!774912)))

(assert (=> b!2440208 (= tp!774698 e!1551008)))

(assert (= (and b!2440208 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14866 r!13927)))) b!2441183))

(assert (= (and b!2440208 ((_ is Concat!11813) (regTwo!14867 (regTwo!14866 r!13927)))) b!2441184))

(assert (= (and b!2440208 ((_ is Star!7177) (regTwo!14867 (regTwo!14866 r!13927)))) b!2441185))

(assert (= (and b!2440208 ((_ is Union!7177) (regTwo!14867 (regTwo!14866 r!13927)))) b!2441186))

(declare-fun b!2441190 () Bool)

(declare-fun e!1551009 () Bool)

(declare-fun tp!774916 () Bool)

(declare-fun tp!774915 () Bool)

(assert (=> b!2441190 (= e!1551009 (and tp!774916 tp!774915))))

(declare-fun b!2441187 () Bool)

(assert (=> b!2441187 (= e!1551009 tp_is_empty!11767)))

(declare-fun b!2441188 () Bool)

(declare-fun tp!774914 () Bool)

(declare-fun tp!774913 () Bool)

(assert (=> b!2441188 (= e!1551009 (and tp!774914 tp!774913))))

(declare-fun b!2441189 () Bool)

(declare-fun tp!774917 () Bool)

(assert (=> b!2441189 (= e!1551009 tp!774917)))

(assert (=> b!2440226 (= tp!774718 e!1551009)))

(assert (= (and b!2440226 ((_ is ElementMatch!7177) (regOne!14867 (reg!7506 r!13927)))) b!2441187))

(assert (= (and b!2440226 ((_ is Concat!11813) (regOne!14867 (reg!7506 r!13927)))) b!2441188))

(assert (= (and b!2440226 ((_ is Star!7177) (regOne!14867 (reg!7506 r!13927)))) b!2441189))

(assert (= (and b!2440226 ((_ is Union!7177) (regOne!14867 (reg!7506 r!13927)))) b!2441190))

(declare-fun b!2441194 () Bool)

(declare-fun e!1551010 () Bool)

(declare-fun tp!774921 () Bool)

(declare-fun tp!774920 () Bool)

(assert (=> b!2441194 (= e!1551010 (and tp!774921 tp!774920))))

(declare-fun b!2441191 () Bool)

(assert (=> b!2441191 (= e!1551010 tp_is_empty!11767)))

(declare-fun b!2441192 () Bool)

(declare-fun tp!774919 () Bool)

(declare-fun tp!774918 () Bool)

(assert (=> b!2441192 (= e!1551010 (and tp!774919 tp!774918))))

(declare-fun b!2441193 () Bool)

(declare-fun tp!774922 () Bool)

(assert (=> b!2441193 (= e!1551010 tp!774922)))

(assert (=> b!2440226 (= tp!774717 e!1551010)))

(assert (= (and b!2440226 ((_ is ElementMatch!7177) (regTwo!14867 (reg!7506 r!13927)))) b!2441191))

(assert (= (and b!2440226 ((_ is Concat!11813) (regTwo!14867 (reg!7506 r!13927)))) b!2441192))

(assert (= (and b!2440226 ((_ is Star!7177) (regTwo!14867 (reg!7506 r!13927)))) b!2441193))

(assert (= (and b!2440226 ((_ is Union!7177) (regTwo!14867 (reg!7506 r!13927)))) b!2441194))

(declare-fun b!2441198 () Bool)

(declare-fun e!1551011 () Bool)

(declare-fun tp!774926 () Bool)

(declare-fun tp!774925 () Bool)

(assert (=> b!2441198 (= e!1551011 (and tp!774926 tp!774925))))

(declare-fun b!2441195 () Bool)

(assert (=> b!2441195 (= e!1551011 tp_is_empty!11767)))

(declare-fun b!2441196 () Bool)

(declare-fun tp!774924 () Bool)

(declare-fun tp!774923 () Bool)

(assert (=> b!2441196 (= e!1551011 (and tp!774924 tp!774923))))

(declare-fun b!2441197 () Bool)

(declare-fun tp!774927 () Bool)

(assert (=> b!2441197 (= e!1551011 tp!774927)))

(assert (=> b!2440203 (= tp!774695 e!1551011)))

(assert (= (and b!2440203 ((_ is ElementMatch!7177) (reg!7506 (regOne!14866 r!13927)))) b!2441195))

(assert (= (and b!2440203 ((_ is Concat!11813) (reg!7506 (regOne!14866 r!13927)))) b!2441196))

(assert (= (and b!2440203 ((_ is Star!7177) (reg!7506 (regOne!14866 r!13927)))) b!2441197))

(assert (= (and b!2440203 ((_ is Union!7177) (reg!7506 (regOne!14866 r!13927)))) b!2441198))

(declare-fun b!2441202 () Bool)

(declare-fun e!1551012 () Bool)

(declare-fun tp!774931 () Bool)

(declare-fun tp!774930 () Bool)

(assert (=> b!2441202 (= e!1551012 (and tp!774931 tp!774930))))

(declare-fun b!2441199 () Bool)

(assert (=> b!2441199 (= e!1551012 tp_is_empty!11767)))

(declare-fun b!2441200 () Bool)

(declare-fun tp!774929 () Bool)

(declare-fun tp!774928 () Bool)

(assert (=> b!2441200 (= e!1551012 (and tp!774929 tp!774928))))

(declare-fun b!2441201 () Bool)

(declare-fun tp!774932 () Bool)

(assert (=> b!2441201 (= e!1551012 tp!774932)))

(assert (=> b!2440204 (= tp!774694 e!1551012)))

(assert (= (and b!2440204 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14866 r!13927)))) b!2441199))

(assert (= (and b!2440204 ((_ is Concat!11813) (regOne!14867 (regOne!14866 r!13927)))) b!2441200))

(assert (= (and b!2440204 ((_ is Star!7177) (regOne!14867 (regOne!14866 r!13927)))) b!2441201))

(assert (= (and b!2440204 ((_ is Union!7177) (regOne!14867 (regOne!14866 r!13927)))) b!2441202))

(declare-fun b!2441206 () Bool)

(declare-fun e!1551013 () Bool)

(declare-fun tp!774936 () Bool)

(declare-fun tp!774935 () Bool)

(assert (=> b!2441206 (= e!1551013 (and tp!774936 tp!774935))))

(declare-fun b!2441203 () Bool)

(assert (=> b!2441203 (= e!1551013 tp_is_empty!11767)))

(declare-fun b!2441204 () Bool)

(declare-fun tp!774934 () Bool)

(declare-fun tp!774933 () Bool)

(assert (=> b!2441204 (= e!1551013 (and tp!774934 tp!774933))))

(declare-fun b!2441205 () Bool)

(declare-fun tp!774937 () Bool)

(assert (=> b!2441205 (= e!1551013 tp!774937)))

(assert (=> b!2440204 (= tp!774693 e!1551013)))

(assert (= (and b!2440204 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14866 r!13927)))) b!2441203))

(assert (= (and b!2440204 ((_ is Concat!11813) (regTwo!14867 (regOne!14866 r!13927)))) b!2441204))

(assert (= (and b!2440204 ((_ is Star!7177) (regTwo!14867 (regOne!14866 r!13927)))) b!2441205))

(assert (= (and b!2440204 ((_ is Union!7177) (regTwo!14867 (regOne!14866 r!13927)))) b!2441206))

(declare-fun b!2441210 () Bool)

(declare-fun e!1551014 () Bool)

(declare-fun tp!774941 () Bool)

(declare-fun tp!774940 () Bool)

(assert (=> b!2441210 (= e!1551014 (and tp!774941 tp!774940))))

(declare-fun b!2441207 () Bool)

(assert (=> b!2441207 (= e!1551014 tp_is_empty!11767)))

(declare-fun b!2441208 () Bool)

(declare-fun tp!774939 () Bool)

(declare-fun tp!774938 () Bool)

(assert (=> b!2441208 (= e!1551014 (and tp!774939 tp!774938))))

(declare-fun b!2441209 () Bool)

(declare-fun tp!774942 () Bool)

(assert (=> b!2441209 (= e!1551014 tp!774942)))

(assert (=> b!2440222 (= tp!774713 e!1551014)))

(assert (= (and b!2440222 ((_ is ElementMatch!7177) (h!33894 (t!208568 l!9164)))) b!2441207))

(assert (= (and b!2440222 ((_ is Concat!11813) (h!33894 (t!208568 l!9164)))) b!2441208))

(assert (= (and b!2440222 ((_ is Star!7177) (h!33894 (t!208568 l!9164)))) b!2441209))

(assert (= (and b!2440222 ((_ is Union!7177) (h!33894 (t!208568 l!9164)))) b!2441210))

(declare-fun b!2441211 () Bool)

(declare-fun e!1551015 () Bool)

(declare-fun tp!774943 () Bool)

(declare-fun tp!774944 () Bool)

(assert (=> b!2441211 (= e!1551015 (and tp!774943 tp!774944))))

(assert (=> b!2440222 (= tp!774714 e!1551015)))

(assert (= (and b!2440222 ((_ is Cons!28493) (t!208568 (t!208568 l!9164)))) b!2441211))

(declare-fun b!2441215 () Bool)

(declare-fun e!1551016 () Bool)

(declare-fun tp!774948 () Bool)

(declare-fun tp!774947 () Bool)

(assert (=> b!2441215 (= e!1551016 (and tp!774948 tp!774947))))

(declare-fun b!2441212 () Bool)

(assert (=> b!2441212 (= e!1551016 tp_is_empty!11767)))

(declare-fun b!2441213 () Bool)

(declare-fun tp!774946 () Bool)

(declare-fun tp!774945 () Bool)

(assert (=> b!2441213 (= e!1551016 (and tp!774946 tp!774945))))

(declare-fun b!2441214 () Bool)

(declare-fun tp!774949 () Bool)

(assert (=> b!2441214 (= e!1551016 tp!774949)))

(assert (=> b!2440232 (= tp!774726 e!1551016)))

(assert (= (and b!2440232 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14867 r!13927)))) b!2441212))

(assert (= (and b!2440232 ((_ is Concat!11813) (regOne!14866 (regTwo!14867 r!13927)))) b!2441213))

(assert (= (and b!2440232 ((_ is Star!7177) (regOne!14866 (regTwo!14867 r!13927)))) b!2441214))

(assert (= (and b!2440232 ((_ is Union!7177) (regOne!14866 (regTwo!14867 r!13927)))) b!2441215))

(declare-fun b!2441219 () Bool)

(declare-fun e!1551017 () Bool)

(declare-fun tp!774953 () Bool)

(declare-fun tp!774952 () Bool)

(assert (=> b!2441219 (= e!1551017 (and tp!774953 tp!774952))))

(declare-fun b!2441216 () Bool)

(assert (=> b!2441216 (= e!1551017 tp_is_empty!11767)))

(declare-fun b!2441217 () Bool)

(declare-fun tp!774951 () Bool)

(declare-fun tp!774950 () Bool)

(assert (=> b!2441217 (= e!1551017 (and tp!774951 tp!774950))))

(declare-fun b!2441218 () Bool)

(declare-fun tp!774954 () Bool)

(assert (=> b!2441218 (= e!1551017 tp!774954)))

(assert (=> b!2440232 (= tp!774725 e!1551017)))

(assert (= (and b!2440232 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14867 r!13927)))) b!2441216))

(assert (= (and b!2440232 ((_ is Concat!11813) (regTwo!14866 (regTwo!14867 r!13927)))) b!2441217))

(assert (= (and b!2440232 ((_ is Star!7177) (regTwo!14866 (regTwo!14867 r!13927)))) b!2441218))

(assert (= (and b!2440232 ((_ is Union!7177) (regTwo!14866 (regTwo!14867 r!13927)))) b!2441219))

(declare-fun b!2441223 () Bool)

(declare-fun e!1551018 () Bool)

(declare-fun tp!774958 () Bool)

(declare-fun tp!774957 () Bool)

(assert (=> b!2441223 (= e!1551018 (and tp!774958 tp!774957))))

(declare-fun b!2441220 () Bool)

(assert (=> b!2441220 (= e!1551018 tp_is_empty!11767)))

(declare-fun b!2441221 () Bool)

(declare-fun tp!774956 () Bool)

(declare-fun tp!774955 () Bool)

(assert (=> b!2441221 (= e!1551018 (and tp!774956 tp!774955))))

(declare-fun b!2441222 () Bool)

(declare-fun tp!774959 () Bool)

(assert (=> b!2441222 (= e!1551018 tp!774959)))

(assert (=> b!2440228 (= tp!774721 e!1551018)))

(assert (= (and b!2440228 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14867 r!13927)))) b!2441220))

(assert (= (and b!2440228 ((_ is Concat!11813) (regOne!14866 (regOne!14867 r!13927)))) b!2441221))

(assert (= (and b!2440228 ((_ is Star!7177) (regOne!14866 (regOne!14867 r!13927)))) b!2441222))

(assert (= (and b!2440228 ((_ is Union!7177) (regOne!14866 (regOne!14867 r!13927)))) b!2441223))

(declare-fun b!2441227 () Bool)

(declare-fun e!1551019 () Bool)

(declare-fun tp!774963 () Bool)

(declare-fun tp!774962 () Bool)

(assert (=> b!2441227 (= e!1551019 (and tp!774963 tp!774962))))

(declare-fun b!2441224 () Bool)

(assert (=> b!2441224 (= e!1551019 tp_is_empty!11767)))

(declare-fun b!2441225 () Bool)

(declare-fun tp!774961 () Bool)

(declare-fun tp!774960 () Bool)

(assert (=> b!2441225 (= e!1551019 (and tp!774961 tp!774960))))

(declare-fun b!2441226 () Bool)

(declare-fun tp!774964 () Bool)

(assert (=> b!2441226 (= e!1551019 tp!774964)))

(assert (=> b!2440228 (= tp!774720 e!1551019)))

(assert (= (and b!2440228 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14867 r!13927)))) b!2441224))

(assert (= (and b!2440228 ((_ is Concat!11813) (regTwo!14866 (regOne!14867 r!13927)))) b!2441225))

(assert (= (and b!2440228 ((_ is Star!7177) (regTwo!14866 (regOne!14867 r!13927)))) b!2441226))

(assert (= (and b!2440228 ((_ is Union!7177) (regTwo!14866 (regOne!14867 r!13927)))) b!2441227))

(declare-fun b!2441231 () Bool)

(declare-fun e!1551020 () Bool)

(declare-fun tp!774968 () Bool)

(declare-fun tp!774967 () Bool)

(assert (=> b!2441231 (= e!1551020 (and tp!774968 tp!774967))))

(declare-fun b!2441228 () Bool)

(assert (=> b!2441228 (= e!1551020 tp_is_empty!11767)))

(declare-fun b!2441229 () Bool)

(declare-fun tp!774966 () Bool)

(declare-fun tp!774965 () Bool)

(assert (=> b!2441229 (= e!1551020 (and tp!774966 tp!774965))))

(declare-fun b!2441230 () Bool)

(declare-fun tp!774969 () Bool)

(assert (=> b!2441230 (= e!1551020 tp!774969)))

(assert (=> b!2440233 (= tp!774729 e!1551020)))

(assert (= (and b!2440233 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14867 r!13927)))) b!2441228))

(assert (= (and b!2440233 ((_ is Concat!11813) (reg!7506 (regTwo!14867 r!13927)))) b!2441229))

(assert (= (and b!2440233 ((_ is Star!7177) (reg!7506 (regTwo!14867 r!13927)))) b!2441230))

(assert (= (and b!2440233 ((_ is Union!7177) (reg!7506 (regTwo!14867 r!13927)))) b!2441231))

(declare-fun b!2441235 () Bool)

(declare-fun e!1551021 () Bool)

(declare-fun tp!774973 () Bool)

(declare-fun tp!774972 () Bool)

(assert (=> b!2441235 (= e!1551021 (and tp!774973 tp!774972))))

(declare-fun b!2441232 () Bool)

(assert (=> b!2441232 (= e!1551021 tp_is_empty!11767)))

(declare-fun b!2441233 () Bool)

(declare-fun tp!774971 () Bool)

(declare-fun tp!774970 () Bool)

(assert (=> b!2441233 (= e!1551021 (and tp!774971 tp!774970))))

(declare-fun b!2441234 () Bool)

(declare-fun tp!774974 () Bool)

(assert (=> b!2441234 (= e!1551021 tp!774974)))

(assert (=> b!2440206 (= tp!774697 e!1551021)))

(assert (= (and b!2440206 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14866 r!13927)))) b!2441232))

(assert (= (and b!2440206 ((_ is Concat!11813) (regOne!14866 (regTwo!14866 r!13927)))) b!2441233))

(assert (= (and b!2440206 ((_ is Star!7177) (regOne!14866 (regTwo!14866 r!13927)))) b!2441234))

(assert (= (and b!2440206 ((_ is Union!7177) (regOne!14866 (regTwo!14866 r!13927)))) b!2441235))

(declare-fun b!2441239 () Bool)

(declare-fun e!1551022 () Bool)

(declare-fun tp!774978 () Bool)

(declare-fun tp!774977 () Bool)

(assert (=> b!2441239 (= e!1551022 (and tp!774978 tp!774977))))

(declare-fun b!2441236 () Bool)

(assert (=> b!2441236 (= e!1551022 tp_is_empty!11767)))

(declare-fun b!2441237 () Bool)

(declare-fun tp!774976 () Bool)

(declare-fun tp!774975 () Bool)

(assert (=> b!2441237 (= e!1551022 (and tp!774976 tp!774975))))

(declare-fun b!2441238 () Bool)

(declare-fun tp!774979 () Bool)

(assert (=> b!2441238 (= e!1551022 tp!774979)))

(assert (=> b!2440206 (= tp!774696 e!1551022)))

(assert (= (and b!2440206 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14866 r!13927)))) b!2441236))

(assert (= (and b!2440206 ((_ is Concat!11813) (regTwo!14866 (regTwo!14866 r!13927)))) b!2441237))

(assert (= (and b!2440206 ((_ is Star!7177) (regTwo!14866 (regTwo!14866 r!13927)))) b!2441238))

(assert (= (and b!2440206 ((_ is Union!7177) (regTwo!14866 (regTwo!14866 r!13927)))) b!2441239))

(declare-fun b!2441243 () Bool)

(declare-fun e!1551023 () Bool)

(declare-fun tp!774983 () Bool)

(declare-fun tp!774982 () Bool)

(assert (=> b!2441243 (= e!1551023 (and tp!774983 tp!774982))))

(declare-fun b!2441240 () Bool)

(assert (=> b!2441240 (= e!1551023 tp_is_empty!11767)))

(declare-fun b!2441241 () Bool)

(declare-fun tp!774981 () Bool)

(declare-fun tp!774980 () Bool)

(assert (=> b!2441241 (= e!1551023 (and tp!774981 tp!774980))))

(declare-fun b!2441242 () Bool)

(declare-fun tp!774984 () Bool)

(assert (=> b!2441242 (= e!1551023 tp!774984)))

(assert (=> b!2440224 (= tp!774716 e!1551023)))

(assert (= (and b!2440224 ((_ is ElementMatch!7177) (regOne!14866 (reg!7506 r!13927)))) b!2441240))

(assert (= (and b!2440224 ((_ is Concat!11813) (regOne!14866 (reg!7506 r!13927)))) b!2441241))

(assert (= (and b!2440224 ((_ is Star!7177) (regOne!14866 (reg!7506 r!13927)))) b!2441242))

(assert (= (and b!2440224 ((_ is Union!7177) (regOne!14866 (reg!7506 r!13927)))) b!2441243))

(declare-fun b!2441247 () Bool)

(declare-fun e!1551024 () Bool)

(declare-fun tp!774988 () Bool)

(declare-fun tp!774987 () Bool)

(assert (=> b!2441247 (= e!1551024 (and tp!774988 tp!774987))))

(declare-fun b!2441244 () Bool)

(assert (=> b!2441244 (= e!1551024 tp_is_empty!11767)))

(declare-fun b!2441245 () Bool)

(declare-fun tp!774986 () Bool)

(declare-fun tp!774985 () Bool)

(assert (=> b!2441245 (= e!1551024 (and tp!774986 tp!774985))))

(declare-fun b!2441246 () Bool)

(declare-fun tp!774989 () Bool)

(assert (=> b!2441246 (= e!1551024 tp!774989)))

(assert (=> b!2440224 (= tp!774715 e!1551024)))

(assert (= (and b!2440224 ((_ is ElementMatch!7177) (regTwo!14866 (reg!7506 r!13927)))) b!2441244))

(assert (= (and b!2440224 ((_ is Concat!11813) (regTwo!14866 (reg!7506 r!13927)))) b!2441245))

(assert (= (and b!2440224 ((_ is Star!7177) (regTwo!14866 (reg!7506 r!13927)))) b!2441246))

(assert (= (and b!2440224 ((_ is Union!7177) (regTwo!14866 (reg!7506 r!13927)))) b!2441247))

(declare-fun b!2441251 () Bool)

(declare-fun e!1551025 () Bool)

(declare-fun tp!774993 () Bool)

(declare-fun tp!774992 () Bool)

(assert (=> b!2441251 (= e!1551025 (and tp!774993 tp!774992))))

(declare-fun b!2441248 () Bool)

(assert (=> b!2441248 (= e!1551025 tp_is_empty!11767)))

(declare-fun b!2441249 () Bool)

(declare-fun tp!774991 () Bool)

(declare-fun tp!774990 () Bool)

(assert (=> b!2441249 (= e!1551025 (and tp!774991 tp!774990))))

(declare-fun b!2441250 () Bool)

(declare-fun tp!774994 () Bool)

(assert (=> b!2441250 (= e!1551025 tp!774994)))

(assert (=> b!2440229 (= tp!774724 e!1551025)))

(assert (= (and b!2440229 ((_ is ElementMatch!7177) (reg!7506 (regOne!14867 r!13927)))) b!2441248))

(assert (= (and b!2440229 ((_ is Concat!11813) (reg!7506 (regOne!14867 r!13927)))) b!2441249))

(assert (= (and b!2440229 ((_ is Star!7177) (reg!7506 (regOne!14867 r!13927)))) b!2441250))

(assert (= (and b!2440229 ((_ is Union!7177) (reg!7506 (regOne!14867 r!13927)))) b!2441251))

(declare-fun b!2441255 () Bool)

(declare-fun e!1551026 () Bool)

(declare-fun tp!774998 () Bool)

(declare-fun tp!774997 () Bool)

(assert (=> b!2441255 (= e!1551026 (and tp!774998 tp!774997))))

(declare-fun b!2441252 () Bool)

(assert (=> b!2441252 (= e!1551026 tp_is_empty!11767)))

(declare-fun b!2441253 () Bool)

(declare-fun tp!774996 () Bool)

(declare-fun tp!774995 () Bool)

(assert (=> b!2441253 (= e!1551026 (and tp!774996 tp!774995))))

(declare-fun b!2441254 () Bool)

(declare-fun tp!774999 () Bool)

(assert (=> b!2441254 (= e!1551026 tp!774999)))

(assert (=> b!2440202 (= tp!774692 e!1551026)))

(assert (= (and b!2440202 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14866 r!13927)))) b!2441252))

(assert (= (and b!2440202 ((_ is Concat!11813) (regOne!14866 (regOne!14866 r!13927)))) b!2441253))

(assert (= (and b!2440202 ((_ is Star!7177) (regOne!14866 (regOne!14866 r!13927)))) b!2441254))

(assert (= (and b!2440202 ((_ is Union!7177) (regOne!14866 (regOne!14866 r!13927)))) b!2441255))

(declare-fun b!2441259 () Bool)

(declare-fun e!1551027 () Bool)

(declare-fun tp!775003 () Bool)

(declare-fun tp!775002 () Bool)

(assert (=> b!2441259 (= e!1551027 (and tp!775003 tp!775002))))

(declare-fun b!2441256 () Bool)

(assert (=> b!2441256 (= e!1551027 tp_is_empty!11767)))

(declare-fun b!2441257 () Bool)

(declare-fun tp!775001 () Bool)

(declare-fun tp!775000 () Bool)

(assert (=> b!2441257 (= e!1551027 (and tp!775001 tp!775000))))

(declare-fun b!2441258 () Bool)

(declare-fun tp!775004 () Bool)

(assert (=> b!2441258 (= e!1551027 tp!775004)))

(assert (=> b!2440202 (= tp!774691 e!1551027)))

(assert (= (and b!2440202 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14866 r!13927)))) b!2441256))

(assert (= (and b!2440202 ((_ is Concat!11813) (regTwo!14866 (regOne!14866 r!13927)))) b!2441257))

(assert (= (and b!2440202 ((_ is Star!7177) (regTwo!14866 (regOne!14866 r!13927)))) b!2441258))

(assert (= (and b!2440202 ((_ is Union!7177) (regTwo!14866 (regOne!14866 r!13927)))) b!2441259))

(declare-fun b!2441263 () Bool)

(declare-fun e!1551028 () Bool)

(declare-fun tp!775008 () Bool)

(declare-fun tp!775007 () Bool)

(assert (=> b!2441263 (= e!1551028 (and tp!775008 tp!775007))))

(declare-fun b!2441260 () Bool)

(assert (=> b!2441260 (= e!1551028 tp_is_empty!11767)))

(declare-fun b!2441261 () Bool)

(declare-fun tp!775006 () Bool)

(declare-fun tp!775005 () Bool)

(assert (=> b!2441261 (= e!1551028 (and tp!775006 tp!775005))))

(declare-fun b!2441262 () Bool)

(declare-fun tp!775009 () Bool)

(assert (=> b!2441262 (= e!1551028 tp!775009)))

(assert (=> b!2440234 (= tp!774728 e!1551028)))

(assert (= (and b!2440234 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14867 r!13927)))) b!2441260))

(assert (= (and b!2440234 ((_ is Concat!11813) (regOne!14867 (regTwo!14867 r!13927)))) b!2441261))

(assert (= (and b!2440234 ((_ is Star!7177) (regOne!14867 (regTwo!14867 r!13927)))) b!2441262))

(assert (= (and b!2440234 ((_ is Union!7177) (regOne!14867 (regTwo!14867 r!13927)))) b!2441263))

(declare-fun b!2441267 () Bool)

(declare-fun e!1551029 () Bool)

(declare-fun tp!775013 () Bool)

(declare-fun tp!775012 () Bool)

(assert (=> b!2441267 (= e!1551029 (and tp!775013 tp!775012))))

(declare-fun b!2441264 () Bool)

(assert (=> b!2441264 (= e!1551029 tp_is_empty!11767)))

(declare-fun b!2441265 () Bool)

(declare-fun tp!775011 () Bool)

(declare-fun tp!775010 () Bool)

(assert (=> b!2441265 (= e!1551029 (and tp!775011 tp!775010))))

(declare-fun b!2441266 () Bool)

(declare-fun tp!775014 () Bool)

(assert (=> b!2441266 (= e!1551029 tp!775014)))

(assert (=> b!2440234 (= tp!774727 e!1551029)))

(assert (= (and b!2440234 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14867 r!13927)))) b!2441264))

(assert (= (and b!2440234 ((_ is Concat!11813) (regTwo!14867 (regTwo!14867 r!13927)))) b!2441265))

(assert (= (and b!2440234 ((_ is Star!7177) (regTwo!14867 (regTwo!14867 r!13927)))) b!2441266))

(assert (= (and b!2440234 ((_ is Union!7177) (regTwo!14867 (regTwo!14867 r!13927)))) b!2441267))

(declare-fun b!2441271 () Bool)

(declare-fun e!1551030 () Bool)

(declare-fun tp!775018 () Bool)

(declare-fun tp!775017 () Bool)

(assert (=> b!2441271 (= e!1551030 (and tp!775018 tp!775017))))

(declare-fun b!2441268 () Bool)

(assert (=> b!2441268 (= e!1551030 tp_is_empty!11767)))

(declare-fun b!2441269 () Bool)

(declare-fun tp!775016 () Bool)

(declare-fun tp!775015 () Bool)

(assert (=> b!2441269 (= e!1551030 (and tp!775016 tp!775015))))

(declare-fun b!2441270 () Bool)

(declare-fun tp!775019 () Bool)

(assert (=> b!2441270 (= e!1551030 tp!775019)))

(assert (=> b!2440225 (= tp!774719 e!1551030)))

(assert (= (and b!2440225 ((_ is ElementMatch!7177) (reg!7506 (reg!7506 r!13927)))) b!2441268))

(assert (= (and b!2440225 ((_ is Concat!11813) (reg!7506 (reg!7506 r!13927)))) b!2441269))

(assert (= (and b!2440225 ((_ is Star!7177) (reg!7506 (reg!7506 r!13927)))) b!2441270))

(assert (= (and b!2440225 ((_ is Union!7177) (reg!7506 (reg!7506 r!13927)))) b!2441271))

(declare-fun b!2441272 () Bool)

(declare-fun e!1551031 () Bool)

(declare-fun tp!775020 () Bool)

(assert (=> b!2441272 (= e!1551031 (and tp_is_empty!11767 tp!775020))))

(assert (=> b!2440213 (= tp!774703 e!1551031)))

(assert (= (and b!2440213 ((_ is Cons!28492) (t!208567 (t!208567 s!9460)))) b!2441272))

(declare-fun b!2441276 () Bool)

(declare-fun e!1551032 () Bool)

(declare-fun tp!775024 () Bool)

(declare-fun tp!775023 () Bool)

(assert (=> b!2441276 (= e!1551032 (and tp!775024 tp!775023))))

(declare-fun b!2441273 () Bool)

(assert (=> b!2441273 (= e!1551032 tp_is_empty!11767)))

(declare-fun b!2441274 () Bool)

(declare-fun tp!775022 () Bool)

(declare-fun tp!775021 () Bool)

(assert (=> b!2441274 (= e!1551032 (and tp!775022 tp!775021))))

(declare-fun b!2441275 () Bool)

(declare-fun tp!775025 () Bool)

(assert (=> b!2441275 (= e!1551032 tp!775025)))

(assert (=> b!2440215 (= tp!774705 e!1551032)))

(assert (= (and b!2440215 ((_ is ElementMatch!7177) (regOne!14866 (h!33894 l!9164)))) b!2441273))

(assert (= (and b!2440215 ((_ is Concat!11813) (regOne!14866 (h!33894 l!9164)))) b!2441274))

(assert (= (and b!2440215 ((_ is Star!7177) (regOne!14866 (h!33894 l!9164)))) b!2441275))

(assert (= (and b!2440215 ((_ is Union!7177) (regOne!14866 (h!33894 l!9164)))) b!2441276))

(declare-fun b!2441280 () Bool)

(declare-fun e!1551033 () Bool)

(declare-fun tp!775029 () Bool)

(declare-fun tp!775028 () Bool)

(assert (=> b!2441280 (= e!1551033 (and tp!775029 tp!775028))))

(declare-fun b!2441277 () Bool)

(assert (=> b!2441277 (= e!1551033 tp_is_empty!11767)))

(declare-fun b!2441278 () Bool)

(declare-fun tp!775027 () Bool)

(declare-fun tp!775026 () Bool)

(assert (=> b!2441278 (= e!1551033 (and tp!775027 tp!775026))))

(declare-fun b!2441279 () Bool)

(declare-fun tp!775030 () Bool)

(assert (=> b!2441279 (= e!1551033 tp!775030)))

(assert (=> b!2440215 (= tp!774704 e!1551033)))

(assert (= (and b!2440215 ((_ is ElementMatch!7177) (regTwo!14866 (h!33894 l!9164)))) b!2441277))

(assert (= (and b!2440215 ((_ is Concat!11813) (regTwo!14866 (h!33894 l!9164)))) b!2441278))

(assert (= (and b!2440215 ((_ is Star!7177) (regTwo!14866 (h!33894 l!9164)))) b!2441279))

(assert (= (and b!2440215 ((_ is Union!7177) (regTwo!14866 (h!33894 l!9164)))) b!2441280))

(declare-fun b!2441284 () Bool)

(declare-fun e!1551034 () Bool)

(declare-fun tp!775034 () Bool)

(declare-fun tp!775033 () Bool)

(assert (=> b!2441284 (= e!1551034 (and tp!775034 tp!775033))))

(declare-fun b!2441281 () Bool)

(assert (=> b!2441281 (= e!1551034 tp_is_empty!11767)))

(declare-fun b!2441282 () Bool)

(declare-fun tp!775032 () Bool)

(declare-fun tp!775031 () Bool)

(assert (=> b!2441282 (= e!1551034 (and tp!775032 tp!775031))))

(declare-fun b!2441283 () Bool)

(declare-fun tp!775035 () Bool)

(assert (=> b!2441283 (= e!1551034 tp!775035)))

(assert (=> b!2440216 (= tp!774708 e!1551034)))

(assert (= (and b!2440216 ((_ is ElementMatch!7177) (reg!7506 (h!33894 l!9164)))) b!2441281))

(assert (= (and b!2440216 ((_ is Concat!11813) (reg!7506 (h!33894 l!9164)))) b!2441282))

(assert (= (and b!2440216 ((_ is Star!7177) (reg!7506 (h!33894 l!9164)))) b!2441283))

(assert (= (and b!2440216 ((_ is Union!7177) (reg!7506 (h!33894 l!9164)))) b!2441284))

(declare-fun b!2441288 () Bool)

(declare-fun e!1551035 () Bool)

(declare-fun tp!775039 () Bool)

(declare-fun tp!775038 () Bool)

(assert (=> b!2441288 (= e!1551035 (and tp!775039 tp!775038))))

(declare-fun b!2441285 () Bool)

(assert (=> b!2441285 (= e!1551035 tp_is_empty!11767)))

(declare-fun b!2441286 () Bool)

(declare-fun tp!775037 () Bool)

(declare-fun tp!775036 () Bool)

(assert (=> b!2441286 (= e!1551035 (and tp!775037 tp!775036))))

(declare-fun b!2441287 () Bool)

(declare-fun tp!775040 () Bool)

(assert (=> b!2441287 (= e!1551035 tp!775040)))

(assert (=> b!2440217 (= tp!774707 e!1551035)))

(assert (= (and b!2440217 ((_ is ElementMatch!7177) (regOne!14867 (h!33894 l!9164)))) b!2441285))

(assert (= (and b!2440217 ((_ is Concat!11813) (regOne!14867 (h!33894 l!9164)))) b!2441286))

(assert (= (and b!2440217 ((_ is Star!7177) (regOne!14867 (h!33894 l!9164)))) b!2441287))

(assert (= (and b!2440217 ((_ is Union!7177) (regOne!14867 (h!33894 l!9164)))) b!2441288))

(declare-fun b!2441292 () Bool)

(declare-fun e!1551036 () Bool)

(declare-fun tp!775044 () Bool)

(declare-fun tp!775043 () Bool)

(assert (=> b!2441292 (= e!1551036 (and tp!775044 tp!775043))))

(declare-fun b!2441289 () Bool)

(assert (=> b!2441289 (= e!1551036 tp_is_empty!11767)))

(declare-fun b!2441290 () Bool)

(declare-fun tp!775042 () Bool)

(declare-fun tp!775041 () Bool)

(assert (=> b!2441290 (= e!1551036 (and tp!775042 tp!775041))))

(declare-fun b!2441291 () Bool)

(declare-fun tp!775045 () Bool)

(assert (=> b!2441291 (= e!1551036 tp!775045)))

(assert (=> b!2440217 (= tp!774706 e!1551036)))

(assert (= (and b!2440217 ((_ is ElementMatch!7177) (regTwo!14867 (h!33894 l!9164)))) b!2441289))

(assert (= (and b!2440217 ((_ is Concat!11813) (regTwo!14867 (h!33894 l!9164)))) b!2441290))

(assert (= (and b!2440217 ((_ is Star!7177) (regTwo!14867 (h!33894 l!9164)))) b!2441291))

(assert (= (and b!2440217 ((_ is Union!7177) (regTwo!14867 (h!33894 l!9164)))) b!2441292))

(declare-fun b_lambda!74945 () Bool)

(assert (= b_lambda!74941 (or d!704451 b_lambda!74945)))

(declare-fun bs!464954 () Bool)

(declare-fun d!704867 () Bool)

(assert (= bs!464954 (and d!704867 d!704451)))

(assert (=> bs!464954 (= (dynLambda!12256 lambda!92365 (h!33894 l!9164)) (validRegex!2889 (h!33894 l!9164)))))

(assert (=> bs!464954 m!2818423))

(assert (=> b!2441045 d!704867))

(declare-fun b_lambda!74947 () Bool)

(assert (= b_lambda!74939 (or d!704483 b_lambda!74947)))

(declare-fun bs!464955 () Bool)

(declare-fun d!704869 () Bool)

(assert (= bs!464955 (and d!704869 d!704483)))

(assert (=> bs!464955 (= (dynLambda!12256 lambda!92374 (h!33894 lt!878228)) (validRegex!2889 (h!33894 lt!878228)))))

(declare-fun m!2819205 () Bool)

(assert (=> bs!464955 m!2819205))

(assert (=> b!2440926 d!704869))

(declare-fun b_lambda!74949 () Bool)

(assert (= b_lambda!74943 (or start!238766 b_lambda!74949)))

(declare-fun bs!464956 () Bool)

(declare-fun d!704871 () Bool)

(assert (= bs!464956 (and d!704871 start!238766)))

(assert (=> bs!464956 (= (dynLambda!12256 lambda!92357 (h!33894 (t!208568 l!9164))) (validRegex!2889 (h!33894 (t!208568 l!9164))))))

(declare-fun m!2819207 () Bool)

(assert (=> bs!464956 m!2819207))

(assert (=> b!2441141 d!704871))

(check-sat (not b!2440845) (not bs!464955) (not b!2440929) (not b!2441265) (not bm!149511) (not d!704861) (not bm!149516) (not b!2441124) (not b!2440822) (not bm!149528) (not b!2441178) (not b!2441181) (not b!2441206) (not b!2441192) (not b!2441087) (not b!2441070) (not d!704851) (not b!2441254) (not b!2441098) (not b!2441290) (not b!2440910) (not b!2440960) (not b!2441276) (not b!2441123) (not b!2441184) (not bm!149502) (not d!704837) (not b!2441279) (not bm!149476) (not b!2441151) (not d!704815) (not b!2441037) (not b!2441287) (not b!2440858) (not b!2441246) (not b!2441222) (not bm!149520) (not d!704723) (not b!2441230) (not bm!149484) (not b!2441189) (not b!2441190) (not b!2440886) (not b!2441198) (not d!704733) (not b!2440781) (not b!2440861) (not b!2440769) (not b!2440854) (not b!2441215) (not bm!149496) (not b!2440773) (not b!2440848) (not b!2441249) (not b!2441003) (not b_lambda!74947) (not b!2440866) (not b!2441099) (not b!2441108) (not bm!149493) (not b!2441245) (not b!2440851) (not d!704801) (not d!704787) (not b!2441017) (not b!2440824) (not bm!149483) (not b!2441282) (not b!2441097) (not bm!149505) (not d!704759) (not b!2441231) (not bs!464956) (not d!704715) (not b!2441137) (not b!2441032) (not b!2441173) (not bm!149517) (not b!2440868) (not d!704843) (not b!2441048) (not b!2441062) (not bm!149514) (not b!2441046) (not d!704773) (not b!2441135) (not b!2441030) (not b!2441150) (not bm!149479) (not b!2441095) (not b!2441202) (not b!2441243) (not b!2440963) (not bm!149508) (not b!2441204) (not bm!149506) (not bm!149524) (not d!704747) (not b!2440883) (not b!2441110) (not b!2441168) (not d!704825) (not d!704749) (not b!2441148) (not b!2440778) (not bm!149480) (not b!2441174) (not b!2441291) (not b!2440777) (not b!2440989) (not b!2441201) (not bm!149499) (not b!2441274) (not b!2440821) (not b!2441210) (not b!2441267) (not b!2441275) (not b!2440969) (not d!704743) (not d!704757) (not b!2441197) (not b!2440880) (not b!2440957) (not b!2441214) (not d!704777) (not b!2441154) (not b!2441194) (not d!704811) (not b!2440819) (not b!2441153) (not b!2440972) (not b!2440961) (not b!2440853) (not b!2441247) (not b!2441251) (not d!704839) (not b_lambda!74925) (not b!2440884) (not b!2440975) (not b!2440946) (not b!2441266) (not b!2441225) (not b!2441094) (not b!2441134) (not b!2441288) (not b!2441233) (not b!2440780) (not bs!464954) (not b!2440927) (not b!2441027) (not b!2441096) (not d!704821) (not b!2440776) (not b!2441253) (not b!2440918) (not b!2441241) (not b!2441193) (not b!2441218) (not b!2440783) (not b!2440846) (not d!704823) (not d!704781) (not b!2440818) (not b!2440864) (not b!2441280) (not b!2440878) (not b!2441238) (not b!2441126) (not b!2441061) (not b!2441177) (not b!2441049) (not bm!149515) (not b!2441269) (not b!2441205) (not b!2441075) (not b!2441035) (not b!2440836) (not b!2441234) (not d!704775) (not b!2441278) (not b!2440782) (not bm!149482) (not b!2440816) (not b!2441160) (not b!2441270) (not b!2441140) (not d!704859) (not bm!149525) (not b!2441209) (not b!2440988) (not b!2441169) (not b!2441012) (not b!2441226) (not b!2441284) (not b!2441064) (not b!2441088) (not d!704769) (not b!2441029) (not b!2441196) (not bm!149503) (not b!2441219) (not b!2440862) (not bm!149512) (not b!2440881) (not b!2440867) (not b!2441176) (not d!704783) (not bm!149507) (not b!2440986) (not b!2441056) (not b!2441058) (not b!2440991) (not b!2441229) (not bm!149478) (not b!2440983) tp_is_empty!11767 (not b!2440803) (not b!2440971) (not b!2441292) (not b!2441121) (not b!2441255) (not bm!149521) (not b!2441272) (not bm!149523) (not b!2441250) (not b!2440857) (not b!2441242) (not b!2441142) (not b!2441093) (not bm!149522) (not b!2441138) (not bm!149518) (not b!2441186) (not bm!149531) (not b!2441283) (not d!704737) (not b!2441118) (not b!2441090) (not b!2441217) (not b!2440977) (not b_lambda!74945) (not b!2441237) (not b!2441200) (not b!2440956) (not b!2440958) (not b!2441227) (not d!704785) (not b!2440849) (not bm!149497) (not d!704755) (not b!2441059) (not d!704853) (not b!2441170) (not b!2441257) (not b!2440826) (not bm!149526) (not d!704841) (not b!2441188) (not b!2441239) (not b!2440962) (not d!704729) (not b!2441085) (not b!2441213) (not b!2441286) (not bm!149500) (not b!2441172) (not b!2441156) (not d!704753) (not b!2441112) (not b!2440995) (not b!2441235) (not b!2441261) (not b!2440843) (not d!704735) (not b!2440869) (not b!2440974) (not b!2440865) (not b!2441211) (not b!2441091) (not b!2441259) (not b!2441132) (not b!2441262) (not b!2440835) (not b!2441271) (not bm!149527) (not b!2441182) (not b!2440985) (not b!2441221) (not b!2440771) (not d!704831) (not b!2441258) (not b!2441033) (not b!2441120) (not b!2441180) (not b_lambda!74949) (not b!2441185) (not b!2441263) (not b!2441208) (not d!704751) (not b!2441223))
(check-sat)
(get-model)

(declare-fun b!2441293 () Bool)

(declare-fun e!1551043 () Bool)

(declare-fun e!1551038 () Bool)

(assert (=> b!2441293 (= e!1551043 e!1551038)))

(declare-fun c!389551 () Bool)

(assert (=> b!2441293 (= c!389551 ((_ is Star!7177) (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260))))))

(declare-fun call!149538 () Bool)

(declare-fun c!389550 () Bool)

(declare-fun bm!149532 () Bool)

(assert (=> bm!149532 (= call!149538 (validRegex!2889 (ite c!389550 (regOne!14867 (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260))) (regTwo!14866 (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260))))))))

(declare-fun b!2441294 () Bool)

(declare-fun e!1551037 () Bool)

(assert (=> b!2441294 (= e!1551038 e!1551037)))

(declare-fun res!1036496 () Bool)

(assert (=> b!2441294 (= res!1036496 (not (nullable!2198 (reg!7506 (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260))))))))

(assert (=> b!2441294 (=> (not res!1036496) (not e!1551037))))

(declare-fun d!704873 () Bool)

(declare-fun res!1036497 () Bool)

(assert (=> d!704873 (=> res!1036497 e!1551043)))

(assert (=> d!704873 (= res!1036497 ((_ is ElementMatch!7177) (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260))))))

(assert (=> d!704873 (= (validRegex!2889 (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260))) e!1551043)))

(declare-fun b!2441295 () Bool)

(declare-fun e!1551041 () Bool)

(assert (=> b!2441295 (= e!1551041 call!149538)))

(declare-fun b!2441296 () Bool)

(declare-fun e!1551040 () Bool)

(declare-fun call!149539 () Bool)

(assert (=> b!2441296 (= e!1551040 call!149539)))

(declare-fun b!2441297 () Bool)

(declare-fun res!1036494 () Bool)

(declare-fun e!1551039 () Bool)

(assert (=> b!2441297 (=> res!1036494 e!1551039)))

(assert (=> b!2441297 (= res!1036494 (not ((_ is Concat!11813) (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260)))))))

(declare-fun e!1551042 () Bool)

(assert (=> b!2441297 (= e!1551042 e!1551039)))

(declare-fun b!2441298 () Bool)

(declare-fun res!1036493 () Bool)

(assert (=> b!2441298 (=> (not res!1036493) (not e!1551040))))

(assert (=> b!2441298 (= res!1036493 call!149538)))

(assert (=> b!2441298 (= e!1551042 e!1551040)))

(declare-fun b!2441299 () Bool)

(assert (=> b!2441299 (= e!1551038 e!1551042)))

(assert (=> b!2441299 (= c!389550 ((_ is Union!7177) (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260))))))

(declare-fun b!2441300 () Bool)

(assert (=> b!2441300 (= e!1551039 e!1551041)))

(declare-fun res!1036495 () Bool)

(assert (=> b!2441300 (=> (not res!1036495) (not e!1551041))))

(assert (=> b!2441300 (= res!1036495 call!149539)))

(declare-fun b!2441301 () Bool)

(declare-fun call!149537 () Bool)

(assert (=> b!2441301 (= e!1551037 call!149537)))

(declare-fun bm!149533 () Bool)

(assert (=> bm!149533 (= call!149539 call!149537)))

(declare-fun bm!149534 () Bool)

(assert (=> bm!149534 (= call!149537 (validRegex!2889 (ite c!389551 (reg!7506 (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260))) (ite c!389550 (regTwo!14867 (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260))) (regOne!14866 (ite c!389486 (regOne!14867 lt!878260) (regTwo!14866 lt!878260)))))))))

(assert (= (and d!704873 (not res!1036497)) b!2441293))

(assert (= (and b!2441293 c!389551) b!2441294))

(assert (= (and b!2441293 (not c!389551)) b!2441299))

(assert (= (and b!2441294 res!1036496) b!2441301))

(assert (= (and b!2441299 c!389550) b!2441298))

(assert (= (and b!2441299 (not c!389550)) b!2441297))

(assert (= (and b!2441298 res!1036493) b!2441296))

(assert (= (and b!2441297 (not res!1036494)) b!2441300))

(assert (= (and b!2441300 res!1036495) b!2441295))

(assert (= (or b!2441298 b!2441295) bm!149532))

(assert (= (or b!2441296 b!2441300) bm!149533))

(assert (= (or b!2441301 bm!149533) bm!149534))

(declare-fun m!2819209 () Bool)

(assert (=> bm!149532 m!2819209))

(declare-fun m!2819211 () Bool)

(assert (=> b!2441294 m!2819211))

(declare-fun m!2819213 () Bool)

(assert (=> bm!149534 m!2819213))

(assert (=> bm!149497 d!704873))

(declare-fun b!2441302 () Bool)

(declare-fun e!1551045 () List!28590)

(assert (=> b!2441302 (= e!1551045 (t!208567 s!9460))))

(declare-fun d!704875 () Bool)

(declare-fun e!1551044 () Bool)

(assert (=> d!704875 e!1551044))

(declare-fun res!1036498 () Bool)

(assert (=> d!704875 (=> (not res!1036498) (not e!1551044))))

(declare-fun lt!878379 () List!28590)

(assert (=> d!704875 (= res!1036498 (= (content!3924 lt!878379) ((_ map or) (content!3924 (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))) (content!3924 (t!208567 s!9460)))))))

(assert (=> d!704875 (= lt!878379 e!1551045)))

(declare-fun c!389552 () Bool)

(assert (=> d!704875 (= c!389552 ((_ is Nil!28492) (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(assert (=> d!704875 (= (++!7080 (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (t!208567 s!9460)) lt!878379)))

(declare-fun b!2441305 () Bool)

(assert (=> b!2441305 (= e!1551044 (or (not (= (t!208567 s!9460) Nil!28492)) (= lt!878379 (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))))

(declare-fun b!2441304 () Bool)

(declare-fun res!1036499 () Bool)

(assert (=> b!2441304 (=> (not res!1036499) (not e!1551044))))

(assert (=> b!2441304 (= res!1036499 (= (size!22262 lt!878379) (+ (size!22262 (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))) (size!22262 (t!208567 s!9460)))))))

(declare-fun b!2441303 () Bool)

(assert (=> b!2441303 (= e!1551045 (Cons!28492 (h!33893 (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))) (++!7080 (t!208567 (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))) (t!208567 s!9460))))))

(assert (= (and d!704875 c!389552) b!2441302))

(assert (= (and d!704875 (not c!389552)) b!2441303))

(assert (= (and d!704875 res!1036498) b!2441304))

(assert (= (and b!2441304 res!1036499) b!2441305))

(declare-fun m!2819215 () Bool)

(assert (=> d!704875 m!2819215))

(declare-fun m!2819217 () Bool)

(assert (=> d!704875 m!2819217))

(assert (=> d!704875 m!2818915))

(declare-fun m!2819219 () Bool)

(assert (=> b!2441304 m!2819219))

(declare-fun m!2819221 () Bool)

(assert (=> b!2441304 m!2819221))

(assert (=> b!2441304 m!2818921))

(declare-fun m!2819223 () Bool)

(assert (=> b!2441303 m!2819223))

(assert (=> b!2440857 d!704875))

(declare-fun b!2441306 () Bool)

(declare-fun e!1551047 () List!28590)

(assert (=> b!2441306 (= e!1551047 (_2!16596 (get!8795 lt!878295)))))

(declare-fun d!704877 () Bool)

(declare-fun e!1551046 () Bool)

(assert (=> d!704877 e!1551046))

(declare-fun res!1036500 () Bool)

(assert (=> d!704877 (=> (not res!1036500) (not e!1551046))))

(declare-fun lt!878380 () List!28590)

(assert (=> d!704877 (= res!1036500 (= (content!3924 lt!878380) ((_ map or) (content!3924 (t!208567 (_1!16596 (get!8795 lt!878295)))) (content!3924 (_2!16596 (get!8795 lt!878295))))))))

(assert (=> d!704877 (= lt!878380 e!1551047)))

(declare-fun c!389553 () Bool)

(assert (=> d!704877 (= c!389553 ((_ is Nil!28492) (t!208567 (_1!16596 (get!8795 lt!878295)))))))

(assert (=> d!704877 (= (++!7080 (t!208567 (_1!16596 (get!8795 lt!878295))) (_2!16596 (get!8795 lt!878295))) lt!878380)))

(declare-fun b!2441309 () Bool)

(assert (=> b!2441309 (= e!1551046 (or (not (= (_2!16596 (get!8795 lt!878295)) Nil!28492)) (= lt!878380 (t!208567 (_1!16596 (get!8795 lt!878295))))))))

(declare-fun b!2441308 () Bool)

(declare-fun res!1036501 () Bool)

(assert (=> b!2441308 (=> (not res!1036501) (not e!1551046))))

(assert (=> b!2441308 (= res!1036501 (= (size!22262 lt!878380) (+ (size!22262 (t!208567 (_1!16596 (get!8795 lt!878295)))) (size!22262 (_2!16596 (get!8795 lt!878295))))))))

(declare-fun b!2441307 () Bool)

(assert (=> b!2441307 (= e!1551047 (Cons!28492 (h!33893 (t!208567 (_1!16596 (get!8795 lt!878295)))) (++!7080 (t!208567 (t!208567 (_1!16596 (get!8795 lt!878295)))) (_2!16596 (get!8795 lt!878295)))))))

(assert (= (and d!704877 c!389553) b!2441306))

(assert (= (and d!704877 (not c!389553)) b!2441307))

(assert (= (and d!704877 res!1036500) b!2441308))

(assert (= (and b!2441308 res!1036501) b!2441309))

(declare-fun m!2819225 () Bool)

(assert (=> d!704877 m!2819225))

(declare-fun m!2819227 () Bool)

(assert (=> d!704877 m!2819227))

(assert (=> d!704877 m!2819107))

(declare-fun m!2819229 () Bool)

(assert (=> b!2441308 m!2819229))

(declare-fun m!2819231 () Bool)

(assert (=> b!2441308 m!2819231))

(assert (=> b!2441308 m!2819113))

(declare-fun m!2819233 () Bool)

(assert (=> b!2441307 m!2819233))

(assert (=> b!2441048 d!704877))

(declare-fun b!2441310 () Bool)

(declare-fun e!1551051 () Regex!7177)

(declare-fun e!1551048 () Regex!7177)

(assert (=> b!2441310 (= e!1551051 e!1551048)))

(declare-fun c!389556 () Bool)

(assert (=> b!2441310 (= c!389556 ((_ is ElementMatch!7177) (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))))))

(declare-fun b!2441311 () Bool)

(assert (=> b!2441311 (= e!1551048 (ite (= (head!5545 s!9460) (c!389219 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222))))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun bm!149535 () Bool)

(declare-fun call!149543 () Regex!7177)

(declare-fun c!389555 () Bool)

(declare-fun c!389557 () Bool)

(assert (=> bm!149535 (= call!149543 (derivativeStep!1852 (ite c!389557 (regOne!14867 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))) (ite c!389555 (reg!7506 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))) (regOne!14866 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))))) (head!5545 s!9460)))))

(declare-fun b!2441313 () Bool)

(declare-fun c!389558 () Bool)

(assert (=> b!2441313 (= c!389558 (nullable!2198 (regOne!14866 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222))))))))

(declare-fun e!1551049 () Regex!7177)

(declare-fun e!1551050 () Regex!7177)

(assert (=> b!2441313 (= e!1551049 e!1551050)))

(declare-fun b!2441314 () Bool)

(declare-fun call!149540 () Regex!7177)

(assert (=> b!2441314 (= e!1551049 (Concat!11813 call!149540 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))))))

(declare-fun b!2441315 () Bool)

(assert (=> b!2441315 (= c!389557 ((_ is Union!7177) (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))))))

(declare-fun e!1551052 () Regex!7177)

(assert (=> b!2441315 (= e!1551048 e!1551052)))

(declare-fun bm!149536 () Bool)

(assert (=> bm!149536 (= call!149540 call!149543)))

(declare-fun bm!149537 () Bool)

(declare-fun call!149541 () Regex!7177)

(declare-fun call!149542 () Regex!7177)

(assert (=> bm!149537 (= call!149541 call!149542)))

(declare-fun bm!149538 () Bool)

(assert (=> bm!149538 (= call!149542 (derivativeStep!1852 (ite c!389557 (regTwo!14867 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))) (ite c!389558 (regTwo!14866 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))) (regOne!14866 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))))) (head!5545 s!9460)))))

(declare-fun b!2441312 () Bool)

(assert (=> b!2441312 (= e!1551050 (Union!7177 (Concat!11813 call!149540 (regTwo!14866 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222))))) call!149541))))

(declare-fun d!704879 () Bool)

(declare-fun lt!878381 () Regex!7177)

(assert (=> d!704879 (validRegex!2889 lt!878381)))

(assert (=> d!704879 (= lt!878381 e!1551051)))

(declare-fun c!389554 () Bool)

(assert (=> d!704879 (= c!389554 (or ((_ is EmptyExpr!7177) (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))) ((_ is EmptyLang!7177) (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222))))))))

(assert (=> d!704879 (validRegex!2889 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222))))))

(assert (=> d!704879 (= (derivativeStep!1852 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222))) (head!5545 s!9460)) lt!878381)))

(declare-fun b!2441316 () Bool)

(assert (=> b!2441316 (= e!1551052 e!1551049)))

(assert (=> b!2441316 (= c!389555 ((_ is Star!7177) (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222)))))))

(declare-fun b!2441317 () Bool)

(assert (=> b!2441317 (= e!1551051 EmptyLang!7177)))

(declare-fun b!2441318 () Bool)

(assert (=> b!2441318 (= e!1551052 (Union!7177 call!149543 call!149542))))

(declare-fun b!2441319 () Bool)

(assert (=> b!2441319 (= e!1551050 (Union!7177 (Concat!11813 call!149541 (regTwo!14866 (ite c!389505 (regOne!14867 lt!878222) (ite c!389503 (reg!7506 lt!878222) (regOne!14866 lt!878222))))) EmptyLang!7177))))

(assert (= (and d!704879 c!389554) b!2441317))

(assert (= (and d!704879 (not c!389554)) b!2441310))

(assert (= (and b!2441310 c!389556) b!2441311))

(assert (= (and b!2441310 (not c!389556)) b!2441315))

(assert (= (and b!2441315 c!389557) b!2441318))

(assert (= (and b!2441315 (not c!389557)) b!2441316))

(assert (= (and b!2441316 c!389555) b!2441314))

(assert (= (and b!2441316 (not c!389555)) b!2441313))

(assert (= (and b!2441313 c!389558) b!2441312))

(assert (= (and b!2441313 (not c!389558)) b!2441319))

(assert (= (or b!2441312 b!2441319) bm!149537))

(assert (= (or b!2441314 b!2441312) bm!149536))

(assert (= (or b!2441318 bm!149536) bm!149535))

(assert (= (or b!2441318 bm!149537) bm!149538))

(assert (=> bm!149535 m!2818201))

(declare-fun m!2819235 () Bool)

(assert (=> bm!149535 m!2819235))

(declare-fun m!2819237 () Bool)

(assert (=> b!2441313 m!2819237))

(assert (=> bm!149538 m!2818201))

(declare-fun m!2819239 () Bool)

(assert (=> bm!149538 m!2819239))

(declare-fun m!2819241 () Bool)

(assert (=> d!704879 m!2819241))

(declare-fun m!2819243 () Bool)

(assert (=> d!704879 m!2819243))

(assert (=> bm!149508 d!704879))

(declare-fun b!2441320 () Bool)

(declare-fun e!1551059 () Bool)

(declare-fun e!1551054 () Bool)

(assert (=> b!2441320 (= e!1551059 e!1551054)))

(declare-fun c!389560 () Bool)

(assert (=> b!2441320 (= c!389560 ((_ is Star!7177) (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241))))))

(declare-fun call!149545 () Bool)

(declare-fun c!389559 () Bool)

(declare-fun bm!149539 () Bool)

(assert (=> bm!149539 (= call!149545 (validRegex!2889 (ite c!389559 (regOne!14867 (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241))) (regTwo!14866 (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241))))))))

(declare-fun b!2441321 () Bool)

(declare-fun e!1551053 () Bool)

(assert (=> b!2441321 (= e!1551054 e!1551053)))

(declare-fun res!1036505 () Bool)

(assert (=> b!2441321 (= res!1036505 (not (nullable!2198 (reg!7506 (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241))))))))

(assert (=> b!2441321 (=> (not res!1036505) (not e!1551053))))

(declare-fun d!704881 () Bool)

(declare-fun res!1036506 () Bool)

(assert (=> d!704881 (=> res!1036506 e!1551059)))

(assert (=> d!704881 (= res!1036506 ((_ is ElementMatch!7177) (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241))))))

(assert (=> d!704881 (= (validRegex!2889 (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241))) e!1551059)))

(declare-fun b!2441322 () Bool)

(declare-fun e!1551057 () Bool)

(assert (=> b!2441322 (= e!1551057 call!149545)))

(declare-fun b!2441323 () Bool)

(declare-fun e!1551056 () Bool)

(declare-fun call!149546 () Bool)

(assert (=> b!2441323 (= e!1551056 call!149546)))

(declare-fun b!2441324 () Bool)

(declare-fun res!1036503 () Bool)

(declare-fun e!1551055 () Bool)

(assert (=> b!2441324 (=> res!1036503 e!1551055)))

(assert (=> b!2441324 (= res!1036503 (not ((_ is Concat!11813) (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241)))))))

(declare-fun e!1551058 () Bool)

(assert (=> b!2441324 (= e!1551058 e!1551055)))

(declare-fun b!2441325 () Bool)

(declare-fun res!1036502 () Bool)

(assert (=> b!2441325 (=> (not res!1036502) (not e!1551056))))

(assert (=> b!2441325 (= res!1036502 call!149545)))

(assert (=> b!2441325 (= e!1551058 e!1551056)))

(declare-fun b!2441326 () Bool)

(assert (=> b!2441326 (= e!1551054 e!1551058)))

(assert (=> b!2441326 (= c!389559 ((_ is Union!7177) (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241))))))

(declare-fun b!2441327 () Bool)

(assert (=> b!2441327 (= e!1551055 e!1551057)))

(declare-fun res!1036504 () Bool)

(assert (=> b!2441327 (=> (not res!1036504) (not e!1551057))))

(assert (=> b!2441327 (= res!1036504 call!149546)))

(declare-fun b!2441328 () Bool)

(declare-fun call!149544 () Bool)

(assert (=> b!2441328 (= e!1551053 call!149544)))

(declare-fun bm!149540 () Bool)

(assert (=> bm!149540 (= call!149546 call!149544)))

(declare-fun bm!149541 () Bool)

(assert (=> bm!149541 (= call!149544 (validRegex!2889 (ite c!389560 (reg!7506 (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241))) (ite c!389559 (regTwo!14867 (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241))) (regOne!14866 (ite c!389516 (regOne!14867 lt!878241) (regTwo!14866 lt!878241)))))))))

(assert (= (and d!704881 (not res!1036506)) b!2441320))

(assert (= (and b!2441320 c!389560) b!2441321))

(assert (= (and b!2441320 (not c!389560)) b!2441326))

(assert (= (and b!2441321 res!1036505) b!2441328))

(assert (= (and b!2441326 c!389559) b!2441325))

(assert (= (and b!2441326 (not c!389559)) b!2441324))

(assert (= (and b!2441325 res!1036502) b!2441323))

(assert (= (and b!2441324 (not res!1036503)) b!2441327))

(assert (= (and b!2441327 res!1036504) b!2441322))

(assert (= (or b!2441325 b!2441322) bm!149539))

(assert (= (or b!2441323 b!2441327) bm!149540))

(assert (= (or b!2441328 bm!149540) bm!149541))

(declare-fun m!2819245 () Bool)

(assert (=> bm!149539 m!2819245))

(declare-fun m!2819247 () Bool)

(assert (=> b!2441321 m!2819247))

(declare-fun m!2819249 () Bool)

(assert (=> bm!149541 m!2819249))

(assert (=> bm!149518 d!704881))

(declare-fun d!704883 () Bool)

(assert (=> d!704883 true))

(assert (=> d!704883 true))

(declare-fun res!1036507 () Bool)

(assert (=> d!704883 (= (choose!14482 (ite c!389322 lambda!92396 lambda!92397)) res!1036507)))

(assert (=> d!704839 d!704883))

(declare-fun b!2441329 () Bool)

(declare-fun e!1551063 () Bool)

(declare-fun lt!878382 () Bool)

(declare-fun call!149547 () Bool)

(assert (=> b!2441329 (= e!1551063 (= lt!878382 call!149547))))

(declare-fun d!704885 () Bool)

(assert (=> d!704885 e!1551063))

(declare-fun c!389563 () Bool)

(assert (=> d!704885 (= c!389563 ((_ is EmptyExpr!7177) lt!878222))))

(declare-fun e!1551061 () Bool)

(assert (=> d!704885 (= lt!878382 e!1551061)))

(declare-fun c!389561 () Bool)

(assert (=> d!704885 (= c!389561 (isEmpty!16534 (_1!16596 (get!8795 lt!878367))))))

(assert (=> d!704885 (validRegex!2889 lt!878222)))

(assert (=> d!704885 (= (matchR!3292 lt!878222 (_1!16596 (get!8795 lt!878367))) lt!878382)))

(declare-fun b!2441330 () Bool)

(declare-fun e!1551065 () Bool)

(assert (=> b!2441330 (= e!1551063 e!1551065)))

(declare-fun c!389562 () Bool)

(assert (=> b!2441330 (= c!389562 ((_ is EmptyLang!7177) lt!878222))))

(declare-fun b!2441331 () Bool)

(declare-fun res!1036510 () Bool)

(declare-fun e!1551060 () Bool)

(assert (=> b!2441331 (=> res!1036510 e!1551060)))

(declare-fun e!1551064 () Bool)

(assert (=> b!2441331 (= res!1036510 e!1551064)))

(declare-fun res!1036513 () Bool)

(assert (=> b!2441331 (=> (not res!1036513) (not e!1551064))))

(assert (=> b!2441331 (= res!1036513 lt!878382)))

(declare-fun b!2441332 () Bool)

(assert (=> b!2441332 (= e!1551065 (not lt!878382))))

(declare-fun b!2441333 () Bool)

(declare-fun e!1551066 () Bool)

(assert (=> b!2441333 (= e!1551060 e!1551066)))

(declare-fun res!1036515 () Bool)

(assert (=> b!2441333 (=> (not res!1036515) (not e!1551066))))

(assert (=> b!2441333 (= res!1036515 (not lt!878382))))

(declare-fun b!2441334 () Bool)

(declare-fun res!1036512 () Bool)

(assert (=> b!2441334 (=> (not res!1036512) (not e!1551064))))

(assert (=> b!2441334 (= res!1036512 (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878367)))))))

(declare-fun b!2441335 () Bool)

(declare-fun e!1551062 () Bool)

(assert (=> b!2441335 (= e!1551066 e!1551062)))

(declare-fun res!1036509 () Bool)

(assert (=> b!2441335 (=> res!1036509 e!1551062)))

(assert (=> b!2441335 (= res!1036509 call!149547)))

(declare-fun b!2441336 () Bool)

(assert (=> b!2441336 (= e!1551061 (nullable!2198 lt!878222))))

(declare-fun b!2441337 () Bool)

(assert (=> b!2441337 (= e!1551064 (= (head!5545 (_1!16596 (get!8795 lt!878367))) (c!389219 lt!878222)))))

(declare-fun b!2441338 () Bool)

(declare-fun res!1036514 () Bool)

(assert (=> b!2441338 (=> (not res!1036514) (not e!1551064))))

(assert (=> b!2441338 (= res!1036514 (not call!149547))))

(declare-fun bm!149542 () Bool)

(assert (=> bm!149542 (= call!149547 (isEmpty!16534 (_1!16596 (get!8795 lt!878367))))))

(declare-fun b!2441339 () Bool)

(declare-fun res!1036508 () Bool)

(assert (=> b!2441339 (=> res!1036508 e!1551062)))

(assert (=> b!2441339 (= res!1036508 (not (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878367))))))))

(declare-fun b!2441340 () Bool)

(assert (=> b!2441340 (= e!1551061 (matchR!3292 (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878367)))) (tail!3818 (_1!16596 (get!8795 lt!878367)))))))

(declare-fun b!2441341 () Bool)

(declare-fun res!1036511 () Bool)

(assert (=> b!2441341 (=> res!1036511 e!1551060)))

(assert (=> b!2441341 (= res!1036511 (not ((_ is ElementMatch!7177) lt!878222)))))

(assert (=> b!2441341 (= e!1551065 e!1551060)))

(declare-fun b!2441342 () Bool)

(assert (=> b!2441342 (= e!1551062 (not (= (head!5545 (_1!16596 (get!8795 lt!878367))) (c!389219 lt!878222))))))

(assert (= (and d!704885 c!389561) b!2441336))

(assert (= (and d!704885 (not c!389561)) b!2441340))

(assert (= (and d!704885 c!389563) b!2441329))

(assert (= (and d!704885 (not c!389563)) b!2441330))

(assert (= (and b!2441330 c!389562) b!2441332))

(assert (= (and b!2441330 (not c!389562)) b!2441341))

(assert (= (and b!2441341 (not res!1036511)) b!2441331))

(assert (= (and b!2441331 res!1036513) b!2441338))

(assert (= (and b!2441338 res!1036514) b!2441334))

(assert (= (and b!2441334 res!1036512) b!2441337))

(assert (= (and b!2441331 (not res!1036510)) b!2441333))

(assert (= (and b!2441333 res!1036515) b!2441335))

(assert (= (and b!2441335 (not res!1036509)) b!2441339))

(assert (= (and b!2441339 (not res!1036508)) b!2441342))

(assert (= (or b!2441329 b!2441338 b!2441335) bm!149542))

(declare-fun m!2819251 () Bool)

(assert (=> b!2441339 m!2819251))

(assert (=> b!2441339 m!2819251))

(declare-fun m!2819253 () Bool)

(assert (=> b!2441339 m!2819253))

(declare-fun m!2819255 () Bool)

(assert (=> b!2441342 m!2819255))

(assert (=> b!2441334 m!2819251))

(assert (=> b!2441334 m!2819251))

(assert (=> b!2441334 m!2819253))

(declare-fun m!2819257 () Bool)

(assert (=> d!704885 m!2819257))

(assert (=> d!704885 m!2818205))

(assert (=> bm!149542 m!2819257))

(assert (=> b!2441336 m!2818207))

(assert (=> b!2441337 m!2819255))

(assert (=> b!2441340 m!2819255))

(assert (=> b!2441340 m!2819255))

(declare-fun m!2819259 () Bool)

(assert (=> b!2441340 m!2819259))

(assert (=> b!2441340 m!2819251))

(assert (=> b!2441340 m!2819259))

(assert (=> b!2441340 m!2819251))

(declare-fun m!2819261 () Bool)

(assert (=> b!2441340 m!2819261))

(assert (=> b!2441098 d!704885))

(declare-fun d!704887 () Bool)

(assert (=> d!704887 (= (get!8795 lt!878367) (v!31073 lt!878367))))

(assert (=> b!2441098 d!704887))

(declare-fun d!704889 () Bool)

(assert (=> d!704889 (= (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (h!33893 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(assert (=> b!2440886 d!704889))

(declare-fun d!704891 () Bool)

(assert (=> d!704891 (= (Exists!1213 (ite c!389510 lambda!92421 lambda!92422)) (choose!14482 (ite c!389510 lambda!92421 lambda!92422)))))

(declare-fun bs!464957 () Bool)

(assert (= bs!464957 d!704891))

(declare-fun m!2819263 () Bool)

(assert (=> bs!464957 m!2819263))

(assert (=> bm!149516 d!704891))

(declare-fun b!2441343 () Bool)

(declare-fun e!1551070 () Bool)

(declare-fun lt!878383 () Bool)

(declare-fun call!149548 () Bool)

(assert (=> b!2441343 (= e!1551070 (= lt!878383 call!149548))))

(declare-fun d!704893 () Bool)

(assert (=> d!704893 e!1551070))

(declare-fun c!389566 () Bool)

(assert (=> d!704893 (= c!389566 ((_ is EmptyExpr!7177) (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298))))))))

(declare-fun e!1551068 () Bool)

(assert (=> d!704893 (= lt!878383 e!1551068)))

(declare-fun c!389564 () Bool)

(assert (=> d!704893 (= c!389564 (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878298)))))))

(assert (=> d!704893 (validRegex!2889 (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298)))))))

(assert (=> d!704893 (= (matchR!3292 (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298)))) (tail!3818 (_1!16596 (get!8795 lt!878298)))) lt!878383)))

(declare-fun b!2441344 () Bool)

(declare-fun e!1551072 () Bool)

(assert (=> b!2441344 (= e!1551070 e!1551072)))

(declare-fun c!389565 () Bool)

(assert (=> b!2441344 (= c!389565 ((_ is EmptyLang!7177) (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298))))))))

(declare-fun b!2441345 () Bool)

(declare-fun res!1036518 () Bool)

(declare-fun e!1551067 () Bool)

(assert (=> b!2441345 (=> res!1036518 e!1551067)))

(declare-fun e!1551071 () Bool)

(assert (=> b!2441345 (= res!1036518 e!1551071)))

(declare-fun res!1036521 () Bool)

(assert (=> b!2441345 (=> (not res!1036521) (not e!1551071))))

(assert (=> b!2441345 (= res!1036521 lt!878383)))

(declare-fun b!2441346 () Bool)

(assert (=> b!2441346 (= e!1551072 (not lt!878383))))

(declare-fun b!2441347 () Bool)

(declare-fun e!1551073 () Bool)

(assert (=> b!2441347 (= e!1551067 e!1551073)))

(declare-fun res!1036523 () Bool)

(assert (=> b!2441347 (=> (not res!1036523) (not e!1551073))))

(assert (=> b!2441347 (= res!1036523 (not lt!878383))))

(declare-fun b!2441348 () Bool)

(declare-fun res!1036520 () Bool)

(assert (=> b!2441348 (=> (not res!1036520) (not e!1551071))))

(assert (=> b!2441348 (= res!1036520 (isEmpty!16534 (tail!3818 (tail!3818 (_1!16596 (get!8795 lt!878298))))))))

(declare-fun b!2441349 () Bool)

(declare-fun e!1551069 () Bool)

(assert (=> b!2441349 (= e!1551073 e!1551069)))

(declare-fun res!1036517 () Bool)

(assert (=> b!2441349 (=> res!1036517 e!1551069)))

(assert (=> b!2441349 (= res!1036517 call!149548)))

(declare-fun b!2441350 () Bool)

(assert (=> b!2441350 (= e!1551068 (nullable!2198 (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298))))))))

(declare-fun b!2441351 () Bool)

(assert (=> b!2441351 (= e!1551071 (= (head!5545 (tail!3818 (_1!16596 (get!8795 lt!878298)))) (c!389219 (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298)))))))))

(declare-fun b!2441352 () Bool)

(declare-fun res!1036522 () Bool)

(assert (=> b!2441352 (=> (not res!1036522) (not e!1551071))))

(assert (=> b!2441352 (= res!1036522 (not call!149548))))

(declare-fun bm!149543 () Bool)

(assert (=> bm!149543 (= call!149548 (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878298)))))))

(declare-fun b!2441353 () Bool)

(declare-fun res!1036516 () Bool)

(assert (=> b!2441353 (=> res!1036516 e!1551069)))

(assert (=> b!2441353 (= res!1036516 (not (isEmpty!16534 (tail!3818 (tail!3818 (_1!16596 (get!8795 lt!878298)))))))))

(declare-fun b!2441354 () Bool)

(assert (=> b!2441354 (= e!1551068 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298)))) (head!5545 (tail!3818 (_1!16596 (get!8795 lt!878298))))) (tail!3818 (tail!3818 (_1!16596 (get!8795 lt!878298))))))))

(declare-fun b!2441355 () Bool)

(declare-fun res!1036519 () Bool)

(assert (=> b!2441355 (=> res!1036519 e!1551067)))

(assert (=> b!2441355 (= res!1036519 (not ((_ is ElementMatch!7177) (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298)))))))))

(assert (=> b!2441355 (= e!1551072 e!1551067)))

(declare-fun b!2441356 () Bool)

(assert (=> b!2441356 (= e!1551069 (not (= (head!5545 (tail!3818 (_1!16596 (get!8795 lt!878298)))) (c!389219 (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298))))))))))

(assert (= (and d!704893 c!389564) b!2441350))

(assert (= (and d!704893 (not c!389564)) b!2441354))

(assert (= (and d!704893 c!389566) b!2441343))

(assert (= (and d!704893 (not c!389566)) b!2441344))

(assert (= (and b!2441344 c!389565) b!2441346))

(assert (= (and b!2441344 (not c!389565)) b!2441355))

(assert (= (and b!2441355 (not res!1036519)) b!2441345))

(assert (= (and b!2441345 res!1036521) b!2441352))

(assert (= (and b!2441352 res!1036522) b!2441348))

(assert (= (and b!2441348 res!1036520) b!2441351))

(assert (= (and b!2441345 (not res!1036518)) b!2441347))

(assert (= (and b!2441347 res!1036523) b!2441349))

(assert (= (and b!2441349 (not res!1036517)) b!2441353))

(assert (= (and b!2441353 (not res!1036516)) b!2441356))

(assert (= (or b!2441343 b!2441352 b!2441349) bm!149543))

(assert (=> b!2441353 m!2818885))

(declare-fun m!2819265 () Bool)

(assert (=> b!2441353 m!2819265))

(assert (=> b!2441353 m!2819265))

(declare-fun m!2819267 () Bool)

(assert (=> b!2441353 m!2819267))

(assert (=> b!2441356 m!2818885))

(declare-fun m!2819269 () Bool)

(assert (=> b!2441356 m!2819269))

(assert (=> b!2441348 m!2818885))

(assert (=> b!2441348 m!2819265))

(assert (=> b!2441348 m!2819265))

(assert (=> b!2441348 m!2819267))

(assert (=> d!704893 m!2818885))

(assert (=> d!704893 m!2818887))

(assert (=> d!704893 m!2818893))

(declare-fun m!2819271 () Bool)

(assert (=> d!704893 m!2819271))

(assert (=> bm!149543 m!2818885))

(assert (=> bm!149543 m!2818887))

(assert (=> b!2441350 m!2818893))

(declare-fun m!2819273 () Bool)

(assert (=> b!2441350 m!2819273))

(assert (=> b!2441351 m!2818885))

(assert (=> b!2441351 m!2819269))

(assert (=> b!2441354 m!2818885))

(assert (=> b!2441354 m!2819269))

(assert (=> b!2441354 m!2818893))

(assert (=> b!2441354 m!2819269))

(declare-fun m!2819275 () Bool)

(assert (=> b!2441354 m!2819275))

(assert (=> b!2441354 m!2818885))

(assert (=> b!2441354 m!2819265))

(assert (=> b!2441354 m!2819275))

(assert (=> b!2441354 m!2819265))

(declare-fun m!2819277 () Bool)

(assert (=> b!2441354 m!2819277))

(assert (=> b!2440849 d!704893))

(declare-fun b!2441357 () Bool)

(declare-fun e!1551077 () Regex!7177)

(declare-fun e!1551074 () Regex!7177)

(assert (=> b!2441357 (= e!1551077 e!1551074)))

(declare-fun c!389569 () Bool)

(assert (=> b!2441357 (= c!389569 ((_ is ElementMatch!7177) lt!878222))))

(declare-fun b!2441358 () Bool)

(assert (=> b!2441358 (= e!1551074 (ite (= (head!5545 (_1!16596 (get!8795 lt!878298))) (c!389219 lt!878222)) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389568 () Bool)

(declare-fun bm!149544 () Bool)

(declare-fun c!389570 () Bool)

(declare-fun call!149552 () Regex!7177)

(assert (=> bm!149544 (= call!149552 (derivativeStep!1852 (ite c!389570 (regOne!14867 lt!878222) (ite c!389568 (reg!7506 lt!878222) (regOne!14866 lt!878222))) (head!5545 (_1!16596 (get!8795 lt!878298)))))))

(declare-fun b!2441360 () Bool)

(declare-fun c!389571 () Bool)

(assert (=> b!2441360 (= c!389571 (nullable!2198 (regOne!14866 lt!878222)))))

(declare-fun e!1551075 () Regex!7177)

(declare-fun e!1551076 () Regex!7177)

(assert (=> b!2441360 (= e!1551075 e!1551076)))

(declare-fun b!2441361 () Bool)

(declare-fun call!149549 () Regex!7177)

(assert (=> b!2441361 (= e!1551075 (Concat!11813 call!149549 lt!878222))))

(declare-fun b!2441362 () Bool)

(assert (=> b!2441362 (= c!389570 ((_ is Union!7177) lt!878222))))

(declare-fun e!1551078 () Regex!7177)

(assert (=> b!2441362 (= e!1551074 e!1551078)))

(declare-fun bm!149545 () Bool)

(assert (=> bm!149545 (= call!149549 call!149552)))

(declare-fun bm!149546 () Bool)

(declare-fun call!149550 () Regex!7177)

(declare-fun call!149551 () Regex!7177)

(assert (=> bm!149546 (= call!149550 call!149551)))

(declare-fun bm!149547 () Bool)

(assert (=> bm!149547 (= call!149551 (derivativeStep!1852 (ite c!389570 (regTwo!14867 lt!878222) (ite c!389571 (regTwo!14866 lt!878222) (regOne!14866 lt!878222))) (head!5545 (_1!16596 (get!8795 lt!878298)))))))

(declare-fun b!2441359 () Bool)

(assert (=> b!2441359 (= e!1551076 (Union!7177 (Concat!11813 call!149549 (regTwo!14866 lt!878222)) call!149550))))

(declare-fun d!704895 () Bool)

(declare-fun lt!878384 () Regex!7177)

(assert (=> d!704895 (validRegex!2889 lt!878384)))

(assert (=> d!704895 (= lt!878384 e!1551077)))

(declare-fun c!389567 () Bool)

(assert (=> d!704895 (= c!389567 (or ((_ is EmptyExpr!7177) lt!878222) ((_ is EmptyLang!7177) lt!878222)))))

(assert (=> d!704895 (validRegex!2889 lt!878222)))

(assert (=> d!704895 (= (derivativeStep!1852 lt!878222 (head!5545 (_1!16596 (get!8795 lt!878298)))) lt!878384)))

(declare-fun b!2441363 () Bool)

(assert (=> b!2441363 (= e!1551078 e!1551075)))

(assert (=> b!2441363 (= c!389568 ((_ is Star!7177) lt!878222))))

(declare-fun b!2441364 () Bool)

(assert (=> b!2441364 (= e!1551077 EmptyLang!7177)))

(declare-fun b!2441365 () Bool)

(assert (=> b!2441365 (= e!1551078 (Union!7177 call!149552 call!149551))))

(declare-fun b!2441366 () Bool)

(assert (=> b!2441366 (= e!1551076 (Union!7177 (Concat!11813 call!149550 (regTwo!14866 lt!878222)) EmptyLang!7177))))

(assert (= (and d!704895 c!389567) b!2441364))

(assert (= (and d!704895 (not c!389567)) b!2441357))

(assert (= (and b!2441357 c!389569) b!2441358))

(assert (= (and b!2441357 (not c!389569)) b!2441362))

(assert (= (and b!2441362 c!389570) b!2441365))

(assert (= (and b!2441362 (not c!389570)) b!2441363))

(assert (= (and b!2441363 c!389568) b!2441361))

(assert (= (and b!2441363 (not c!389568)) b!2441360))

(assert (= (and b!2441360 c!389571) b!2441359))

(assert (= (and b!2441360 (not c!389571)) b!2441366))

(assert (= (or b!2441359 b!2441366) bm!149546))

(assert (= (or b!2441361 b!2441359) bm!149545))

(assert (= (or b!2441365 bm!149545) bm!149544))

(assert (= (or b!2441365 bm!149546) bm!149547))

(assert (=> bm!149544 m!2818889))

(declare-fun m!2819279 () Bool)

(assert (=> bm!149544 m!2819279))

(assert (=> b!2441360 m!2819061))

(assert (=> bm!149547 m!2818889))

(declare-fun m!2819281 () Bool)

(assert (=> bm!149547 m!2819281))

(declare-fun m!2819283 () Bool)

(assert (=> d!704895 m!2819283))

(assert (=> d!704895 m!2818205))

(assert (=> b!2440849 d!704895))

(declare-fun d!704897 () Bool)

(assert (=> d!704897 (= (head!5545 (_1!16596 (get!8795 lt!878298))) (h!33893 (_1!16596 (get!8795 lt!878298))))))

(assert (=> b!2440849 d!704897))

(declare-fun d!704899 () Bool)

(assert (=> d!704899 (= (tail!3818 (_1!16596 (get!8795 lt!878298))) (t!208567 (_1!16596 (get!8795 lt!878298))))))

(assert (=> b!2440849 d!704899))

(declare-fun d!704901 () Bool)

(assert (=> d!704901 (= (nullable!2198 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177))) (nullableFct!534 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177))))))

(declare-fun bs!464958 () Bool)

(assert (= bs!464958 d!704901))

(declare-fun m!2819285 () Bool)

(assert (=> bs!464958 m!2819285))

(assert (=> b!2440803 d!704901))

(declare-fun d!704903 () Bool)

(assert (=> d!704903 (= (nullable!2198 (regOne!14866 r!13927)) (nullableFct!534 (regOne!14866 r!13927)))))

(declare-fun bs!464959 () Bool)

(assert (= bs!464959 d!704903))

(declare-fun m!2819287 () Bool)

(assert (=> bs!464959 m!2819287))

(assert (=> b!2441134 d!704903))

(declare-fun d!704905 () Bool)

(assert (=> d!704905 (= (head!5545 (tail!3818 s!9460)) (h!33893 (tail!3818 s!9460)))))

(assert (=> b!2440991 d!704905))

(assert (=> d!704825 d!704511))

(assert (=> d!704825 d!704529))

(declare-fun d!704907 () Bool)

(assert (=> d!704907 (= (Exists!1213 lambda!92425) (choose!14482 lambda!92425))))

(declare-fun bs!464960 () Bool)

(assert (= bs!464960 d!704907))

(declare-fun m!2819289 () Bool)

(assert (=> bs!464960 m!2819289))

(assert (=> d!704825 d!704907))

(assert (=> b!2441059 d!704721))

(declare-fun d!704909 () Bool)

(assert (=> d!704909 (= (nullable!2198 EmptyExpr!7177) true)))

(assert (=> b!2440818 d!704909))

(declare-fun d!704911 () Bool)

(assert (=> d!704911 (= (head!5545 (_2!16596 (get!8795 lt!878295))) (h!33893 (_2!16596 (get!8795 lt!878295))))))

(assert (=> b!2441093 d!704911))

(declare-fun d!704913 () Bool)

(assert (=> d!704913 (= (isEmpty!16534 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) ((_ is Nil!28492) (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(assert (=> b!2440878 d!704913))

(declare-fun d!704915 () Bool)

(assert (=> d!704915 (= (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (t!208567 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(assert (=> b!2440878 d!704915))

(declare-fun b!2441367 () Bool)

(declare-fun e!1551085 () Bool)

(declare-fun e!1551080 () Bool)

(assert (=> b!2441367 (= e!1551085 e!1551080)))

(declare-fun c!389573 () Bool)

(assert (=> b!2441367 (= c!389573 ((_ is Star!7177) (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))))))

(declare-fun call!149554 () Bool)

(declare-fun bm!149548 () Bool)

(declare-fun c!389572 () Bool)

(assert (=> bm!149548 (= call!149554 (validRegex!2889 (ite c!389572 (regOne!14867 (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))) (regTwo!14866 (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))))))))

(declare-fun b!2441368 () Bool)

(declare-fun e!1551079 () Bool)

(assert (=> b!2441368 (= e!1551080 e!1551079)))

(declare-fun res!1036527 () Bool)

(assert (=> b!2441368 (= res!1036527 (not (nullable!2198 (reg!7506 (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))))))))

(assert (=> b!2441368 (=> (not res!1036527) (not e!1551079))))

(declare-fun d!704917 () Bool)

(declare-fun res!1036528 () Bool)

(assert (=> d!704917 (=> res!1036528 e!1551085)))

(assert (=> d!704917 (= res!1036528 ((_ is ElementMatch!7177) (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))))))

(assert (=> d!704917 (= (validRegex!2889 (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))) e!1551085)))

(declare-fun b!2441369 () Bool)

(declare-fun e!1551083 () Bool)

(assert (=> b!2441369 (= e!1551083 call!149554)))

(declare-fun b!2441370 () Bool)

(declare-fun e!1551082 () Bool)

(declare-fun call!149555 () Bool)

(assert (=> b!2441370 (= e!1551082 call!149555)))

(declare-fun b!2441371 () Bool)

(declare-fun res!1036525 () Bool)

(declare-fun e!1551081 () Bool)

(assert (=> b!2441371 (=> res!1036525 e!1551081)))

(assert (=> b!2441371 (= res!1036525 (not ((_ is Concat!11813) (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222)))))))

(declare-fun e!1551084 () Bool)

(assert (=> b!2441371 (= e!1551084 e!1551081)))

(declare-fun b!2441372 () Bool)

(declare-fun res!1036524 () Bool)

(assert (=> b!2441372 (=> (not res!1036524) (not e!1551082))))

(assert (=> b!2441372 (= res!1036524 call!149554)))

(assert (=> b!2441372 (= e!1551084 e!1551082)))

(declare-fun b!2441373 () Bool)

(assert (=> b!2441373 (= e!1551080 e!1551084)))

(assert (=> b!2441373 (= c!389572 ((_ is Union!7177) (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))))))

(declare-fun b!2441374 () Bool)

(assert (=> b!2441374 (= e!1551081 e!1551083)))

(declare-fun res!1036526 () Bool)

(assert (=> b!2441374 (=> (not res!1036526) (not e!1551083))))

(assert (=> b!2441374 (= res!1036526 call!149555)))

(declare-fun b!2441375 () Bool)

(declare-fun call!149553 () Bool)

(assert (=> b!2441375 (= e!1551079 call!149553)))

(declare-fun bm!149549 () Bool)

(assert (=> bm!149549 (= call!149555 call!149553)))

(declare-fun bm!149550 () Bool)

(assert (=> bm!149550 (= call!149553 (validRegex!2889 (ite c!389573 (reg!7506 (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))) (ite c!389572 (regTwo!14867 (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))) (regOne!14866 (ite c!389457 (regOne!14867 lt!878222) (regTwo!14866 lt!878222)))))))))

(assert (= (and d!704917 (not res!1036528)) b!2441367))

(assert (= (and b!2441367 c!389573) b!2441368))

(assert (= (and b!2441367 (not c!389573)) b!2441373))

(assert (= (and b!2441368 res!1036527) b!2441375))

(assert (= (and b!2441373 c!389572) b!2441372))

(assert (= (and b!2441373 (not c!389572)) b!2441371))

(assert (= (and b!2441372 res!1036524) b!2441370))

(assert (= (and b!2441371 (not res!1036525)) b!2441374))

(assert (= (and b!2441374 res!1036526) b!2441369))

(assert (= (or b!2441372 b!2441369) bm!149548))

(assert (= (or b!2441370 b!2441374) bm!149549))

(assert (= (or b!2441375 bm!149549) bm!149550))

(declare-fun m!2819291 () Bool)

(assert (=> bm!149548 m!2819291))

(declare-fun m!2819293 () Bool)

(assert (=> b!2441368 m!2819293))

(declare-fun m!2819295 () Bool)

(assert (=> bm!149550 m!2819295))

(assert (=> bm!149480 d!704917))

(declare-fun d!704919 () Bool)

(assert (=> d!704919 (= (isEmpty!16534 (tail!3818 (tail!3818 s!9460))) ((_ is Nil!28492) (tail!3818 (tail!3818 s!9460))))))

(assert (=> b!2440983 d!704919))

(declare-fun d!704921 () Bool)

(assert (=> d!704921 (= (tail!3818 (tail!3818 s!9460)) (t!208567 (tail!3818 s!9460)))))

(assert (=> b!2440983 d!704921))

(declare-fun d!704923 () Bool)

(assert (not d!704923))

(assert (=> b!2441126 d!704923))

(declare-fun b!2441376 () Bool)

(declare-fun e!1551092 () Bool)

(declare-fun e!1551087 () Bool)

(assert (=> b!2441376 (= e!1551092 e!1551087)))

(declare-fun c!389575 () Bool)

(assert (=> b!2441376 (= c!389575 ((_ is Star!7177) lt!878358))))

(declare-fun bm!149551 () Bool)

(declare-fun call!149557 () Bool)

(declare-fun c!389574 () Bool)

(assert (=> bm!149551 (= call!149557 (validRegex!2889 (ite c!389574 (regOne!14867 lt!878358) (regTwo!14866 lt!878358))))))

(declare-fun b!2441377 () Bool)

(declare-fun e!1551086 () Bool)

(assert (=> b!2441377 (= e!1551087 e!1551086)))

(declare-fun res!1036532 () Bool)

(assert (=> b!2441377 (= res!1036532 (not (nullable!2198 (reg!7506 lt!878358))))))

(assert (=> b!2441377 (=> (not res!1036532) (not e!1551086))))

(declare-fun d!704925 () Bool)

(declare-fun res!1036533 () Bool)

(assert (=> d!704925 (=> res!1036533 e!1551092)))

(assert (=> d!704925 (= res!1036533 ((_ is ElementMatch!7177) lt!878358))))

(assert (=> d!704925 (= (validRegex!2889 lt!878358) e!1551092)))

(declare-fun b!2441378 () Bool)

(declare-fun e!1551090 () Bool)

(assert (=> b!2441378 (= e!1551090 call!149557)))

(declare-fun b!2441379 () Bool)

(declare-fun e!1551089 () Bool)

(declare-fun call!149558 () Bool)

(assert (=> b!2441379 (= e!1551089 call!149558)))

(declare-fun b!2441380 () Bool)

(declare-fun res!1036530 () Bool)

(declare-fun e!1551088 () Bool)

(assert (=> b!2441380 (=> res!1036530 e!1551088)))

(assert (=> b!2441380 (= res!1036530 (not ((_ is Concat!11813) lt!878358)))))

(declare-fun e!1551091 () Bool)

(assert (=> b!2441380 (= e!1551091 e!1551088)))

(declare-fun b!2441381 () Bool)

(declare-fun res!1036529 () Bool)

(assert (=> b!2441381 (=> (not res!1036529) (not e!1551089))))

(assert (=> b!2441381 (= res!1036529 call!149557)))

(assert (=> b!2441381 (= e!1551091 e!1551089)))

(declare-fun b!2441382 () Bool)

(assert (=> b!2441382 (= e!1551087 e!1551091)))

(assert (=> b!2441382 (= c!389574 ((_ is Union!7177) lt!878358))))

(declare-fun b!2441383 () Bool)

(assert (=> b!2441383 (= e!1551088 e!1551090)))

(declare-fun res!1036531 () Bool)

(assert (=> b!2441383 (=> (not res!1036531) (not e!1551090))))

(assert (=> b!2441383 (= res!1036531 call!149558)))

(declare-fun b!2441384 () Bool)

(declare-fun call!149556 () Bool)

(assert (=> b!2441384 (= e!1551086 call!149556)))

(declare-fun bm!149552 () Bool)

(assert (=> bm!149552 (= call!149558 call!149556)))

(declare-fun bm!149553 () Bool)

(assert (=> bm!149553 (= call!149556 (validRegex!2889 (ite c!389575 (reg!7506 lt!878358) (ite c!389574 (regTwo!14867 lt!878358) (regOne!14866 lt!878358)))))))

(assert (= (and d!704925 (not res!1036533)) b!2441376))

(assert (= (and b!2441376 c!389575) b!2441377))

(assert (= (and b!2441376 (not c!389575)) b!2441382))

(assert (= (and b!2441377 res!1036532) b!2441384))

(assert (= (and b!2441382 c!389574) b!2441381))

(assert (= (and b!2441382 (not c!389574)) b!2441380))

(assert (= (and b!2441381 res!1036529) b!2441379))

(assert (= (and b!2441380 (not res!1036530)) b!2441383))

(assert (= (and b!2441383 res!1036531) b!2441378))

(assert (= (or b!2441381 b!2441378) bm!149551))

(assert (= (or b!2441379 b!2441383) bm!149552))

(assert (= (or b!2441384 bm!149552) bm!149553))

(declare-fun m!2819297 () Bool)

(assert (=> bm!149551 m!2819297))

(declare-fun m!2819299 () Bool)

(assert (=> b!2441377 m!2819299))

(declare-fun m!2819301 () Bool)

(assert (=> bm!149553 m!2819301))

(assert (=> d!704759 d!704925))

(assert (=> d!704759 d!704719))

(assert (=> b!2440972 d!704721))

(declare-fun d!704927 () Bool)

(declare-fun res!1036534 () Bool)

(declare-fun e!1551093 () Bool)

(assert (=> d!704927 (=> res!1036534 e!1551093)))

(assert (=> d!704927 (= res!1036534 ((_ is Nil!28493) (t!208568 lt!878228)))))

(assert (=> d!704927 (= (forall!5811 (t!208568 lt!878228) lambda!92374) e!1551093)))

(declare-fun b!2441385 () Bool)

(declare-fun e!1551094 () Bool)

(assert (=> b!2441385 (= e!1551093 e!1551094)))

(declare-fun res!1036535 () Bool)

(assert (=> b!2441385 (=> (not res!1036535) (not e!1551094))))

(assert (=> b!2441385 (= res!1036535 (dynLambda!12256 lambda!92374 (h!33894 (t!208568 lt!878228))))))

(declare-fun b!2441386 () Bool)

(assert (=> b!2441386 (= e!1551094 (forall!5811 (t!208568 (t!208568 lt!878228)) lambda!92374))))

(assert (= (and d!704927 (not res!1036534)) b!2441385))

(assert (= (and b!2441385 res!1036535) b!2441386))

(declare-fun b_lambda!74951 () Bool)

(assert (=> (not b_lambda!74951) (not b!2441385)))

(declare-fun m!2819303 () Bool)

(assert (=> b!2441385 m!2819303))

(declare-fun m!2819305 () Bool)

(assert (=> b!2441386 m!2819305))

(assert (=> b!2440927 d!704927))

(assert (=> b!2441030 d!704923))

(declare-fun b!2441387 () Bool)

(declare-fun e!1551101 () Bool)

(declare-fun e!1551096 () Bool)

(assert (=> b!2441387 (= e!1551101 e!1551096)))

(declare-fun c!389577 () Bool)

(assert (=> b!2441387 (= c!389577 ((_ is Star!7177) (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(declare-fun c!389576 () Bool)

(declare-fun call!149560 () Bool)

(declare-fun bm!149554 () Bool)

(assert (=> bm!149554 (= call!149560 (validRegex!2889 (ite c!389576 (regOne!14867 (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))) (regTwo!14866 (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))))

(declare-fun b!2441388 () Bool)

(declare-fun e!1551095 () Bool)

(assert (=> b!2441388 (= e!1551096 e!1551095)))

(declare-fun res!1036539 () Bool)

(assert (=> b!2441388 (= res!1036539 (not (nullable!2198 (reg!7506 (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))))

(assert (=> b!2441388 (=> (not res!1036539) (not e!1551095))))

(declare-fun d!704929 () Bool)

(declare-fun res!1036540 () Bool)

(assert (=> d!704929 (=> res!1036540 e!1551101)))

(assert (=> d!704929 (= res!1036540 ((_ is ElementMatch!7177) (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(assert (=> d!704929 (= (validRegex!2889 (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))) e!1551101)))

(declare-fun b!2441389 () Bool)

(declare-fun e!1551099 () Bool)

(assert (=> b!2441389 (= e!1551099 call!149560)))

(declare-fun b!2441390 () Bool)

(declare-fun e!1551098 () Bool)

(declare-fun call!149561 () Bool)

(assert (=> b!2441390 (= e!1551098 call!149561)))

(declare-fun b!2441391 () Bool)

(declare-fun res!1036537 () Bool)

(declare-fun e!1551097 () Bool)

(assert (=> b!2441391 (=> res!1036537 e!1551097)))

(assert (=> b!2441391 (= res!1036537 (not ((_ is Concat!11813) (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun e!1551100 () Bool)

(assert (=> b!2441391 (= e!1551100 e!1551097)))

(declare-fun b!2441392 () Bool)

(declare-fun res!1036536 () Bool)

(assert (=> b!2441392 (=> (not res!1036536) (not e!1551098))))

(assert (=> b!2441392 (= res!1036536 call!149560)))

(assert (=> b!2441392 (= e!1551100 e!1551098)))

(declare-fun b!2441393 () Bool)

(assert (=> b!2441393 (= e!1551096 e!1551100)))

(assert (=> b!2441393 (= c!389576 ((_ is Union!7177) (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(declare-fun b!2441394 () Bool)

(assert (=> b!2441394 (= e!1551097 e!1551099)))

(declare-fun res!1036538 () Bool)

(assert (=> b!2441394 (=> (not res!1036538) (not e!1551099))))

(assert (=> b!2441394 (= res!1036538 call!149561)))

(declare-fun b!2441395 () Bool)

(declare-fun call!149559 () Bool)

(assert (=> b!2441395 (= e!1551095 call!149559)))

(declare-fun bm!149555 () Bool)

(assert (=> bm!149555 (= call!149561 call!149559)))

(declare-fun bm!149556 () Bool)

(assert (=> bm!149556 (= call!149559 (validRegex!2889 (ite c!389577 (reg!7506 (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))) (ite c!389576 (regTwo!14867 (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))) (regOne!14866 (ite c!389452 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))))

(assert (= (and d!704929 (not res!1036540)) b!2441387))

(assert (= (and b!2441387 c!389577) b!2441388))

(assert (= (and b!2441387 (not c!389577)) b!2441393))

(assert (= (and b!2441388 res!1036539) b!2441395))

(assert (= (and b!2441393 c!389576) b!2441392))

(assert (= (and b!2441393 (not c!389576)) b!2441391))

(assert (= (and b!2441392 res!1036536) b!2441390))

(assert (= (and b!2441391 (not res!1036537)) b!2441394))

(assert (= (and b!2441394 res!1036538) b!2441389))

(assert (= (or b!2441392 b!2441389) bm!149554))

(assert (= (or b!2441390 b!2441394) bm!149555))

(assert (= (or b!2441395 bm!149555) bm!149556))

(declare-fun m!2819307 () Bool)

(assert (=> bm!149554 m!2819307))

(declare-fun m!2819309 () Bool)

(assert (=> b!2441388 m!2819309))

(declare-fun m!2819311 () Bool)

(assert (=> bm!149556 m!2819311))

(assert (=> bm!149476 d!704929))

(declare-fun b!2441410 () Bool)

(declare-fun e!1551117 () Bool)

(declare-fun e!1551116 () Bool)

(assert (=> b!2441410 (= e!1551117 e!1551116)))

(declare-fun c!389580 () Bool)

(assert (=> b!2441410 (= c!389580 ((_ is Union!7177) r!13927))))

(declare-fun bm!149561 () Bool)

(declare-fun call!149567 () Bool)

(assert (=> bm!149561 (= call!149567 (nullable!2198 (ite c!389580 (regOne!14867 r!13927) (regTwo!14866 r!13927))))))

(declare-fun b!2441411 () Bool)

(declare-fun e!1551114 () Bool)

(assert (=> b!2441411 (= e!1551114 e!1551117)))

(declare-fun res!1036553 () Bool)

(assert (=> b!2441411 (=> res!1036553 e!1551117)))

(assert (=> b!2441411 (= res!1036553 ((_ is Star!7177) r!13927))))

(declare-fun d!704931 () Bool)

(declare-fun res!1036554 () Bool)

(declare-fun e!1551119 () Bool)

(assert (=> d!704931 (=> res!1036554 e!1551119)))

(assert (=> d!704931 (= res!1036554 ((_ is EmptyExpr!7177) r!13927))))

(assert (=> d!704931 (= (nullableFct!534 r!13927) e!1551119)))

(declare-fun b!2441412 () Bool)

(declare-fun e!1551118 () Bool)

(assert (=> b!2441412 (= e!1551116 e!1551118)))

(declare-fun res!1036552 () Bool)

(declare-fun call!149566 () Bool)

(assert (=> b!2441412 (= res!1036552 call!149566)))

(assert (=> b!2441412 (=> (not res!1036552) (not e!1551118))))

(declare-fun b!2441413 () Bool)

(declare-fun e!1551115 () Bool)

(assert (=> b!2441413 (= e!1551116 e!1551115)))

(declare-fun res!1036551 () Bool)

(assert (=> b!2441413 (= res!1036551 call!149567)))

(assert (=> b!2441413 (=> res!1036551 e!1551115)))

(declare-fun b!2441414 () Bool)

(assert (=> b!2441414 (= e!1551115 call!149566)))

(declare-fun b!2441415 () Bool)

(assert (=> b!2441415 (= e!1551119 e!1551114)))

(declare-fun res!1036555 () Bool)

(assert (=> b!2441415 (=> (not res!1036555) (not e!1551114))))

(assert (=> b!2441415 (= res!1036555 (and (not ((_ is EmptyLang!7177) r!13927)) (not ((_ is ElementMatch!7177) r!13927))))))

(declare-fun b!2441416 () Bool)

(assert (=> b!2441416 (= e!1551118 call!149567)))

(declare-fun bm!149562 () Bool)

(assert (=> bm!149562 (= call!149566 (nullable!2198 (ite c!389580 (regTwo!14867 r!13927) (regOne!14866 r!13927))))))

(assert (= (and d!704931 (not res!1036554)) b!2441415))

(assert (= (and b!2441415 res!1036555) b!2441411))

(assert (= (and b!2441411 (not res!1036553)) b!2441410))

(assert (= (and b!2441410 c!389580) b!2441413))

(assert (= (and b!2441410 (not c!389580)) b!2441412))

(assert (= (and b!2441413 (not res!1036551)) b!2441414))

(assert (= (and b!2441412 res!1036552) b!2441416))

(assert (= (or b!2441413 b!2441416) bm!149561))

(assert (= (or b!2441414 b!2441412) bm!149562))

(declare-fun m!2819313 () Bool)

(assert (=> bm!149561 m!2819313))

(declare-fun m!2819315 () Bool)

(assert (=> bm!149562 m!2819315))

(assert (=> d!704755 d!704931))

(assert (=> b!2440783 d!704795))

(declare-fun d!704933 () Bool)

(declare-fun res!1036556 () Bool)

(declare-fun e!1551120 () Bool)

(assert (=> d!704933 (=> res!1036556 e!1551120)))

(assert (=> d!704933 (= res!1036556 ((_ is Nil!28493) (t!208568 l!9164)))))

(assert (=> d!704933 (= (forall!5811 (t!208568 l!9164) lambda!92365) e!1551120)))

(declare-fun b!2441417 () Bool)

(declare-fun e!1551121 () Bool)

(assert (=> b!2441417 (= e!1551120 e!1551121)))

(declare-fun res!1036557 () Bool)

(assert (=> b!2441417 (=> (not res!1036557) (not e!1551121))))

(assert (=> b!2441417 (= res!1036557 (dynLambda!12256 lambda!92365 (h!33894 (t!208568 l!9164))))))

(declare-fun b!2441418 () Bool)

(assert (=> b!2441418 (= e!1551121 (forall!5811 (t!208568 (t!208568 l!9164)) lambda!92365))))

(assert (= (and d!704933 (not res!1036556)) b!2441417))

(assert (= (and b!2441417 res!1036557) b!2441418))

(declare-fun b_lambda!74953 () Bool)

(assert (=> (not b_lambda!74953) (not b!2441417)))

(declare-fun m!2819317 () Bool)

(assert (=> b!2441417 m!2819317))

(declare-fun m!2819319 () Bool)

(assert (=> b!2441418 m!2819319))

(assert (=> b!2441046 d!704933))

(declare-fun b!2441419 () Bool)

(declare-fun e!1551125 () Regex!7177)

(declare-fun e!1551122 () Regex!7177)

(assert (=> b!2441419 (= e!1551125 e!1551122)))

(declare-fun c!389583 () Bool)

(assert (=> b!2441419 (= c!389583 ((_ is ElementMatch!7177) (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))))))

(declare-fun b!2441420 () Bool)

(assert (=> b!2441420 (= e!1551122 (ite (= (head!5545 s!9460) (c!389219 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927))))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389584 () Bool)

(declare-fun c!389582 () Bool)

(declare-fun call!149571 () Regex!7177)

(declare-fun bm!149563 () Bool)

(assert (=> bm!149563 (= call!149571 (derivativeStep!1852 (ite c!389584 (regOne!14867 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))) (ite c!389582 (reg!7506 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))) (regOne!14866 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))))) (head!5545 s!9460)))))

(declare-fun b!2441422 () Bool)

(declare-fun c!389585 () Bool)

(assert (=> b!2441422 (= c!389585 (nullable!2198 (regOne!14866 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927))))))))

(declare-fun e!1551123 () Regex!7177)

(declare-fun e!1551124 () Regex!7177)

(assert (=> b!2441422 (= e!1551123 e!1551124)))

(declare-fun b!2441423 () Bool)

(declare-fun call!149568 () Regex!7177)

(assert (=> b!2441423 (= e!1551123 (Concat!11813 call!149568 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))))))

(declare-fun b!2441424 () Bool)

(assert (=> b!2441424 (= c!389584 ((_ is Union!7177) (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))))))

(declare-fun e!1551126 () Regex!7177)

(assert (=> b!2441424 (= e!1551122 e!1551126)))

(declare-fun bm!149564 () Bool)

(assert (=> bm!149564 (= call!149568 call!149571)))

(declare-fun bm!149565 () Bool)

(declare-fun call!149569 () Regex!7177)

(declare-fun call!149570 () Regex!7177)

(assert (=> bm!149565 (= call!149569 call!149570)))

(declare-fun bm!149566 () Bool)

(assert (=> bm!149566 (= call!149570 (derivativeStep!1852 (ite c!389584 (regTwo!14867 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))) (ite c!389585 (regTwo!14866 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))) (regOne!14866 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))))) (head!5545 s!9460)))))

(declare-fun b!2441421 () Bool)

(assert (=> b!2441421 (= e!1551124 (Union!7177 (Concat!11813 call!149568 (regTwo!14866 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927))))) call!149569))))

(declare-fun d!704935 () Bool)

(declare-fun lt!878385 () Regex!7177)

(assert (=> d!704935 (validRegex!2889 lt!878385)))

(assert (=> d!704935 (= lt!878385 e!1551125)))

(declare-fun c!389581 () Bool)

(assert (=> d!704935 (= c!389581 (or ((_ is EmptyExpr!7177) (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))) ((_ is EmptyLang!7177) (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927))))))))

(assert (=> d!704935 (validRegex!2889 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927))))))

(assert (=> d!704935 (= (derivativeStep!1852 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927))) (head!5545 s!9460)) lt!878385)))

(declare-fun b!2441425 () Bool)

(assert (=> b!2441425 (= e!1551126 e!1551123)))

(assert (=> b!2441425 (= c!389582 ((_ is Star!7177) (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927)))))))

(declare-fun b!2441426 () Bool)

(assert (=> b!2441426 (= e!1551125 EmptyLang!7177)))

(declare-fun b!2441427 () Bool)

(assert (=> b!2441427 (= e!1551126 (Union!7177 call!149571 call!149570))))

(declare-fun b!2441428 () Bool)

(assert (=> b!2441428 (= e!1551124 (Union!7177 (Concat!11813 call!149569 (regTwo!14866 (ite c!389548 (regOne!14867 r!13927) (ite c!389546 (reg!7506 r!13927) (regOne!14866 r!13927))))) EmptyLang!7177))))

(assert (= (and d!704935 c!389581) b!2441426))

(assert (= (and d!704935 (not c!389581)) b!2441419))

(assert (= (and b!2441419 c!389583) b!2441420))

(assert (= (and b!2441419 (not c!389583)) b!2441424))

(assert (= (and b!2441424 c!389584) b!2441427))

(assert (= (and b!2441424 (not c!389584)) b!2441425))

(assert (= (and b!2441425 c!389582) b!2441423))

(assert (= (and b!2441425 (not c!389582)) b!2441422))

(assert (= (and b!2441422 c!389585) b!2441421))

(assert (= (and b!2441422 (not c!389585)) b!2441428))

(assert (= (or b!2441421 b!2441428) bm!149565))

(assert (= (or b!2441423 b!2441421) bm!149564))

(assert (= (or b!2441427 bm!149564) bm!149563))

(assert (= (or b!2441427 bm!149565) bm!149566))

(assert (=> bm!149563 m!2818201))

(declare-fun m!2819321 () Bool)

(assert (=> bm!149563 m!2819321))

(declare-fun m!2819323 () Bool)

(assert (=> b!2441422 m!2819323))

(assert (=> bm!149566 m!2818201))

(declare-fun m!2819325 () Bool)

(assert (=> bm!149566 m!2819325))

(declare-fun m!2819327 () Bool)

(assert (=> d!704935 m!2819327))

(declare-fun m!2819329 () Bool)

(assert (=> d!704935 m!2819329))

(assert (=> bm!149528 d!704935))

(declare-fun b!2441429 () Bool)

(declare-fun e!1551133 () Bool)

(declare-fun e!1551128 () Bool)

(assert (=> b!2441429 (= e!1551133 e!1551128)))

(declare-fun c!389587 () Bool)

(assert (=> b!2441429 (= c!389587 ((_ is Star!7177) lt!878362))))

(declare-fun bm!149567 () Bool)

(declare-fun call!149573 () Bool)

(declare-fun c!389586 () Bool)

(assert (=> bm!149567 (= call!149573 (validRegex!2889 (ite c!389586 (regOne!14867 lt!878362) (regTwo!14866 lt!878362))))))

(declare-fun b!2441430 () Bool)

(declare-fun e!1551127 () Bool)

(assert (=> b!2441430 (= e!1551128 e!1551127)))

(declare-fun res!1036561 () Bool)

(assert (=> b!2441430 (= res!1036561 (not (nullable!2198 (reg!7506 lt!878362))))))

(assert (=> b!2441430 (=> (not res!1036561) (not e!1551127))))

(declare-fun d!704937 () Bool)

(declare-fun res!1036562 () Bool)

(assert (=> d!704937 (=> res!1036562 e!1551133)))

(assert (=> d!704937 (= res!1036562 ((_ is ElementMatch!7177) lt!878362))))

(assert (=> d!704937 (= (validRegex!2889 lt!878362) e!1551133)))

(declare-fun b!2441431 () Bool)

(declare-fun e!1551131 () Bool)

(assert (=> b!2441431 (= e!1551131 call!149573)))

(declare-fun b!2441432 () Bool)

(declare-fun e!1551130 () Bool)

(declare-fun call!149574 () Bool)

(assert (=> b!2441432 (= e!1551130 call!149574)))

(declare-fun b!2441433 () Bool)

(declare-fun res!1036559 () Bool)

(declare-fun e!1551129 () Bool)

(assert (=> b!2441433 (=> res!1036559 e!1551129)))

(assert (=> b!2441433 (= res!1036559 (not ((_ is Concat!11813) lt!878362)))))

(declare-fun e!1551132 () Bool)

(assert (=> b!2441433 (= e!1551132 e!1551129)))

(declare-fun b!2441434 () Bool)

(declare-fun res!1036558 () Bool)

(assert (=> b!2441434 (=> (not res!1036558) (not e!1551130))))

(assert (=> b!2441434 (= res!1036558 call!149573)))

(assert (=> b!2441434 (= e!1551132 e!1551130)))

(declare-fun b!2441435 () Bool)

(assert (=> b!2441435 (= e!1551128 e!1551132)))

(assert (=> b!2441435 (= c!389586 ((_ is Union!7177) lt!878362))))

(declare-fun b!2441436 () Bool)

(assert (=> b!2441436 (= e!1551129 e!1551131)))

(declare-fun res!1036560 () Bool)

(assert (=> b!2441436 (=> (not res!1036560) (not e!1551131))))

(assert (=> b!2441436 (= res!1036560 call!149574)))

(declare-fun b!2441437 () Bool)

(declare-fun call!149572 () Bool)

(assert (=> b!2441437 (= e!1551127 call!149572)))

(declare-fun bm!149568 () Bool)

(assert (=> bm!149568 (= call!149574 call!149572)))

(declare-fun bm!149569 () Bool)

(assert (=> bm!149569 (= call!149572 (validRegex!2889 (ite c!389587 (reg!7506 lt!878362) (ite c!389586 (regTwo!14867 lt!878362) (regOne!14866 lt!878362)))))))

(assert (= (and d!704937 (not res!1036562)) b!2441429))

(assert (= (and b!2441429 c!389587) b!2441430))

(assert (= (and b!2441429 (not c!389587)) b!2441435))

(assert (= (and b!2441430 res!1036561) b!2441437))

(assert (= (and b!2441435 c!389586) b!2441434))

(assert (= (and b!2441435 (not c!389586)) b!2441433))

(assert (= (and b!2441434 res!1036558) b!2441432))

(assert (= (and b!2441433 (not res!1036559)) b!2441436))

(assert (= (and b!2441436 res!1036560) b!2441431))

(assert (= (or b!2441434 b!2441431) bm!149567))

(assert (= (or b!2441432 b!2441436) bm!149568))

(assert (= (or b!2441437 bm!149568) bm!149569))

(declare-fun m!2819331 () Bool)

(assert (=> bm!149567 m!2819331))

(declare-fun m!2819333 () Bool)

(assert (=> b!2441430 m!2819333))

(declare-fun m!2819335 () Bool)

(assert (=> bm!149569 m!2819335))

(assert (=> d!704787 d!704937))

(assert (=> d!704787 d!704731))

(declare-fun b!2441438 () Bool)

(declare-fun e!1551137 () Bool)

(declare-fun lt!878386 () Bool)

(declare-fun call!149575 () Bool)

(assert (=> b!2441438 (= e!1551137 (= lt!878386 call!149575))))

(declare-fun d!704939 () Bool)

(assert (=> d!704939 e!1551137))

(declare-fun c!389590 () Bool)

(assert (=> d!704939 (= c!389590 ((_ is EmptyExpr!7177) EmptyExpr!7177))))

(declare-fun e!1551135 () Bool)

(assert (=> d!704939 (= lt!878386 e!1551135)))

(declare-fun c!389588 () Bool)

(assert (=> d!704939 (= c!389588 (isEmpty!16534 (t!208567 s!9460)))))

(assert (=> d!704939 (validRegex!2889 EmptyExpr!7177)))

(assert (=> d!704939 (= (matchR!3292 EmptyExpr!7177 (t!208567 s!9460)) lt!878386)))

(declare-fun b!2441439 () Bool)

(declare-fun e!1551139 () Bool)

(assert (=> b!2441439 (= e!1551137 e!1551139)))

(declare-fun c!389589 () Bool)

(assert (=> b!2441439 (= c!389589 ((_ is EmptyLang!7177) EmptyExpr!7177))))

(declare-fun b!2441440 () Bool)

(declare-fun res!1036565 () Bool)

(declare-fun e!1551134 () Bool)

(assert (=> b!2441440 (=> res!1036565 e!1551134)))

(declare-fun e!1551138 () Bool)

(assert (=> b!2441440 (= res!1036565 e!1551138)))

(declare-fun res!1036568 () Bool)

(assert (=> b!2441440 (=> (not res!1036568) (not e!1551138))))

(assert (=> b!2441440 (= res!1036568 lt!878386)))

(declare-fun b!2441441 () Bool)

(assert (=> b!2441441 (= e!1551139 (not lt!878386))))

(declare-fun b!2441442 () Bool)

(declare-fun e!1551140 () Bool)

(assert (=> b!2441442 (= e!1551134 e!1551140)))

(declare-fun res!1036570 () Bool)

(assert (=> b!2441442 (=> (not res!1036570) (not e!1551140))))

(assert (=> b!2441442 (= res!1036570 (not lt!878386))))

(declare-fun b!2441443 () Bool)

(declare-fun res!1036567 () Bool)

(assert (=> b!2441443 (=> (not res!1036567) (not e!1551138))))

(assert (=> b!2441443 (= res!1036567 (isEmpty!16534 (tail!3818 (t!208567 s!9460))))))

(declare-fun b!2441444 () Bool)

(declare-fun e!1551136 () Bool)

(assert (=> b!2441444 (= e!1551140 e!1551136)))

(declare-fun res!1036564 () Bool)

(assert (=> b!2441444 (=> res!1036564 e!1551136)))

(assert (=> b!2441444 (= res!1036564 call!149575)))

(declare-fun b!2441445 () Bool)

(assert (=> b!2441445 (= e!1551135 (nullable!2198 EmptyExpr!7177))))

(declare-fun b!2441446 () Bool)

(assert (=> b!2441446 (= e!1551138 (= (head!5545 (t!208567 s!9460)) (c!389219 EmptyExpr!7177)))))

(declare-fun b!2441447 () Bool)

(declare-fun res!1036569 () Bool)

(assert (=> b!2441447 (=> (not res!1036569) (not e!1551138))))

(assert (=> b!2441447 (= res!1036569 (not call!149575))))

(declare-fun bm!149570 () Bool)

(assert (=> bm!149570 (= call!149575 (isEmpty!16534 (t!208567 s!9460)))))

(declare-fun b!2441448 () Bool)

(declare-fun res!1036563 () Bool)

(assert (=> b!2441448 (=> res!1036563 e!1551136)))

(assert (=> b!2441448 (= res!1036563 (not (isEmpty!16534 (tail!3818 (t!208567 s!9460)))))))

(declare-fun b!2441449 () Bool)

(assert (=> b!2441449 (= e!1551135 (matchR!3292 (derivativeStep!1852 EmptyExpr!7177 (head!5545 (t!208567 s!9460))) (tail!3818 (t!208567 s!9460))))))

(declare-fun b!2441450 () Bool)

(declare-fun res!1036566 () Bool)

(assert (=> b!2441450 (=> res!1036566 e!1551134)))

(assert (=> b!2441450 (= res!1036566 (not ((_ is ElementMatch!7177) EmptyExpr!7177)))))

(assert (=> b!2441450 (= e!1551139 e!1551134)))

(declare-fun b!2441451 () Bool)

(assert (=> b!2441451 (= e!1551136 (not (= (head!5545 (t!208567 s!9460)) (c!389219 EmptyExpr!7177))))))

(assert (= (and d!704939 c!389588) b!2441445))

(assert (= (and d!704939 (not c!389588)) b!2441449))

(assert (= (and d!704939 c!389590) b!2441438))

(assert (= (and d!704939 (not c!389590)) b!2441439))

(assert (= (and b!2441439 c!389589) b!2441441))

(assert (= (and b!2441439 (not c!389589)) b!2441450))

(assert (= (and b!2441450 (not res!1036566)) b!2441440))

(assert (= (and b!2441440 res!1036568) b!2441447))

(assert (= (and b!2441447 res!1036569) b!2441443))

(assert (= (and b!2441443 res!1036567) b!2441446))

(assert (= (and b!2441440 (not res!1036565)) b!2441442))

(assert (= (and b!2441442 res!1036570) b!2441444))

(assert (= (and b!2441444 (not res!1036564)) b!2441448))

(assert (= (and b!2441448 (not res!1036563)) b!2441451))

(assert (= (or b!2441438 b!2441447 b!2441444) bm!149570))

(declare-fun m!2819337 () Bool)

(assert (=> b!2441448 m!2819337))

(assert (=> b!2441448 m!2819337))

(declare-fun m!2819339 () Bool)

(assert (=> b!2441448 m!2819339))

(declare-fun m!2819341 () Bool)

(assert (=> b!2441451 m!2819341))

(assert (=> b!2441443 m!2819337))

(assert (=> b!2441443 m!2819337))

(assert (=> b!2441443 m!2819339))

(declare-fun m!2819343 () Bool)

(assert (=> d!704939 m!2819343))

(assert (=> d!704939 m!2818861))

(assert (=> bm!149570 m!2819343))

(assert (=> b!2441445 m!2818863))

(assert (=> b!2441446 m!2819341))

(assert (=> b!2441449 m!2819341))

(assert (=> b!2441449 m!2819341))

(declare-fun m!2819345 () Bool)

(assert (=> b!2441449 m!2819345))

(assert (=> b!2441449 m!2819337))

(assert (=> b!2441449 m!2819345))

(assert (=> b!2441449 m!2819337))

(declare-fun m!2819347 () Bool)

(assert (=> b!2441449 m!2819347))

(assert (=> b!2441097 d!704939))

(declare-fun b!2441452 () Bool)

(declare-fun e!1551144 () Regex!7177)

(declare-fun e!1551141 () Regex!7177)

(assert (=> b!2441452 (= e!1551144 e!1551141)))

(declare-fun c!389593 () Bool)

(assert (=> b!2441452 (= c!389593 ((_ is ElementMatch!7177) (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))))))

(declare-fun b!2441453 () Bool)

(assert (=> b!2441453 (= e!1551141 (ite (= (head!5545 s!9460) (c!389219 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222))))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389592 () Bool)

(declare-fun c!389594 () Bool)

(declare-fun bm!149571 () Bool)

(declare-fun call!149579 () Regex!7177)

(assert (=> bm!149571 (= call!149579 (derivativeStep!1852 (ite c!389594 (regOne!14867 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))) (ite c!389592 (reg!7506 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))) (regOne!14866 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))))) (head!5545 s!9460)))))

(declare-fun c!389595 () Bool)

(declare-fun b!2441455 () Bool)

(assert (=> b!2441455 (= c!389595 (nullable!2198 (regOne!14866 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222))))))))

(declare-fun e!1551142 () Regex!7177)

(declare-fun e!1551143 () Regex!7177)

(assert (=> b!2441455 (= e!1551142 e!1551143)))

(declare-fun b!2441456 () Bool)

(declare-fun call!149576 () Regex!7177)

(assert (=> b!2441456 (= e!1551142 (Concat!11813 call!149576 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))))))

(declare-fun b!2441457 () Bool)

(assert (=> b!2441457 (= c!389594 ((_ is Union!7177) (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))))))

(declare-fun e!1551145 () Regex!7177)

(assert (=> b!2441457 (= e!1551141 e!1551145)))

(declare-fun bm!149572 () Bool)

(assert (=> bm!149572 (= call!149576 call!149579)))

(declare-fun bm!149573 () Bool)

(declare-fun call!149577 () Regex!7177)

(declare-fun call!149578 () Regex!7177)

(assert (=> bm!149573 (= call!149577 call!149578)))

(declare-fun bm!149574 () Bool)

(assert (=> bm!149574 (= call!149578 (derivativeStep!1852 (ite c!389594 (regTwo!14867 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))) (ite c!389595 (regTwo!14866 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))) (regOne!14866 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))))) (head!5545 s!9460)))))

(declare-fun b!2441454 () Bool)

(assert (=> b!2441454 (= e!1551143 (Union!7177 (Concat!11813 call!149576 (regTwo!14866 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222))))) call!149577))))

(declare-fun d!704941 () Bool)

(declare-fun lt!878387 () Regex!7177)

(assert (=> d!704941 (validRegex!2889 lt!878387)))

(assert (=> d!704941 (= lt!878387 e!1551144)))

(declare-fun c!389591 () Bool)

(assert (=> d!704941 (= c!389591 (or ((_ is EmptyExpr!7177) (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))) ((_ is EmptyLang!7177) (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222))))))))

(assert (=> d!704941 (validRegex!2889 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222))))))

(assert (=> d!704941 (= (derivativeStep!1852 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222))) (head!5545 s!9460)) lt!878387)))

(declare-fun b!2441458 () Bool)

(assert (=> b!2441458 (= e!1551145 e!1551142)))

(assert (=> b!2441458 (= c!389592 ((_ is Star!7177) (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222)))))))

(declare-fun b!2441459 () Bool)

(assert (=> b!2441459 (= e!1551144 EmptyLang!7177)))

(declare-fun b!2441460 () Bool)

(assert (=> b!2441460 (= e!1551145 (Union!7177 call!149579 call!149578))))

(declare-fun b!2441461 () Bool)

(assert (=> b!2441461 (= e!1551143 (Union!7177 (Concat!11813 call!149577 (regTwo!14866 (ite c!389505 (regTwo!14867 lt!878222) (ite c!389506 (regTwo!14866 lt!878222) (regOne!14866 lt!878222))))) EmptyLang!7177))))

(assert (= (and d!704941 c!389591) b!2441459))

(assert (= (and d!704941 (not c!389591)) b!2441452))

(assert (= (and b!2441452 c!389593) b!2441453))

(assert (= (and b!2441452 (not c!389593)) b!2441457))

(assert (= (and b!2441457 c!389594) b!2441460))

(assert (= (and b!2441457 (not c!389594)) b!2441458))

(assert (= (and b!2441458 c!389592) b!2441456))

(assert (= (and b!2441458 (not c!389592)) b!2441455))

(assert (= (and b!2441455 c!389595) b!2441454))

(assert (= (and b!2441455 (not c!389595)) b!2441461))

(assert (= (or b!2441454 b!2441461) bm!149573))

(assert (= (or b!2441456 b!2441454) bm!149572))

(assert (= (or b!2441460 bm!149572) bm!149571))

(assert (= (or b!2441460 bm!149573) bm!149574))

(assert (=> bm!149571 m!2818201))

(declare-fun m!2819349 () Bool)

(assert (=> bm!149571 m!2819349))

(declare-fun m!2819351 () Bool)

(assert (=> b!2441455 m!2819351))

(assert (=> bm!149574 m!2818201))

(declare-fun m!2819353 () Bool)

(assert (=> bm!149574 m!2819353))

(declare-fun m!2819355 () Bool)

(assert (=> d!704941 m!2819355))

(declare-fun m!2819357 () Bool)

(assert (=> d!704941 m!2819357))

(assert (=> bm!149511 d!704941))

(declare-fun d!704943 () Bool)

(assert (=> d!704943 (= (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878298)))) ((_ is Nil!28492) (tail!3818 (_1!16596 (get!8795 lt!878298)))))))

(assert (=> b!2440848 d!704943))

(assert (=> b!2440848 d!704899))

(declare-fun d!704945 () Bool)

(assert (=> d!704945 (= (isEmpty!16531 (tail!3816 (t!208568 lt!878228))) ((_ is Nil!28493) (tail!3816 (t!208568 lt!878228))))))

(assert (=> b!2440958 d!704945))

(declare-fun d!704947 () Bool)

(assert (=> d!704947 (= (tail!3816 (t!208568 lt!878228)) (t!208568 (t!208568 lt!878228)))))

(assert (=> b!2440958 d!704947))

(declare-fun bs!464961 () Bool)

(declare-fun b!2441472 () Bool)

(assert (= bs!464961 (and b!2441472 b!2441021)))

(declare-fun lambda!92428 () Int)

(assert (=> bs!464961 (= (and (= (reg!7506 (regTwo!14867 (regOne!14867 r!13927))) (reg!7506 (regTwo!14867 r!13927))) (= (regTwo!14867 (regOne!14867 r!13927)) (regTwo!14867 r!13927))) (= lambda!92428 lambda!92421))))

(declare-fun bs!464962 () Bool)

(assert (= bs!464962 (and b!2441472 b!2441079)))

(assert (=> bs!464962 (= (and (= (reg!7506 (regTwo!14867 (regOne!14867 r!13927))) (reg!7506 (regOne!14867 r!13927))) (= (regTwo!14867 (regOne!14867 r!13927)) (regOne!14867 r!13927))) (= lambda!92428 lambda!92426))))

(declare-fun bs!464963 () Bool)

(assert (= bs!464963 (and b!2441472 b!2440171)))

(assert (=> bs!464963 (not (= lambda!92428 lambda!92397))))

(declare-fun bs!464964 () Bool)

(assert (= bs!464964 (and b!2441472 d!704523)))

(assert (=> bs!464964 (not (= lambda!92428 lambda!92391))))

(declare-fun bs!464965 () Bool)

(assert (= bs!464965 (and b!2441472 d!704777)))

(assert (=> bs!464965 (not (= lambda!92428 lambda!92418))))

(declare-fun bs!464966 () Bool)

(assert (= bs!464966 (and b!2441472 b!2440176)))

(assert (=> bs!464966 (= (and (= (reg!7506 (regTwo!14867 (regOne!14867 r!13927))) (reg!7506 r!13927)) (= (regTwo!14867 (regOne!14867 r!13927)) r!13927)) (= lambda!92428 lambda!92396))))

(declare-fun bs!464967 () Bool)

(assert (= bs!464967 (and b!2441472 b!2441074)))

(assert (=> bs!464967 (not (= lambda!92428 lambda!92427))))

(declare-fun bs!464968 () Bool)

(assert (= bs!464968 (and b!2441472 d!704825)))

(assert (=> bs!464968 (not (= lambda!92428 lambda!92425))))

(assert (=> bs!464964 (not (= lambda!92428 lambda!92390))))

(declare-fun bs!464969 () Bool)

(assert (= bs!464969 (and b!2441472 b!2441016)))

(assert (=> bs!464969 (not (= lambda!92428 lambda!92422))))

(assert (=> bs!464965 (not (= lambda!92428 lambda!92419))))

(declare-fun bs!464970 () Bool)

(assert (= bs!464970 (and b!2441472 b!2439691)))

(assert (=> bs!464970 (not (= lambda!92428 lambda!92358))))

(assert (=> bs!464970 (not (= lambda!92428 lambda!92359))))

(declare-fun bs!464971 () Bool)

(assert (= bs!464971 (and b!2441472 d!704513)))

(assert (=> bs!464971 (not (= lambda!92428 lambda!92385))))

(assert (=> b!2441472 true))

(assert (=> b!2441472 true))

(declare-fun bs!464972 () Bool)

(declare-fun b!2441467 () Bool)

(assert (= bs!464972 (and b!2441467 b!2441021)))

(declare-fun lambda!92429 () Int)

(assert (=> bs!464972 (not (= lambda!92429 lambda!92421))))

(declare-fun bs!464973 () Bool)

(assert (= bs!464973 (and b!2441467 b!2441079)))

(assert (=> bs!464973 (not (= lambda!92429 lambda!92426))))

(declare-fun bs!464974 () Bool)

(assert (= bs!464974 (and b!2441467 b!2440171)))

(assert (=> bs!464974 (= (and (= (regOne!14866 (regTwo!14867 (regOne!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92429 lambda!92397))))

(declare-fun bs!464975 () Bool)

(assert (= bs!464975 (and b!2441467 d!704523)))

(assert (=> bs!464975 (= (and (= (regOne!14866 (regTwo!14867 (regOne!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92429 lambda!92391))))

(declare-fun bs!464976 () Bool)

(assert (= bs!464976 (and b!2441467 b!2441472)))

(assert (=> bs!464976 (not (= lambda!92429 lambda!92428))))

(declare-fun bs!464977 () Bool)

(assert (= bs!464977 (and b!2441467 d!704777)))

(assert (=> bs!464977 (not (= lambda!92429 lambda!92418))))

(declare-fun bs!464978 () Bool)

(assert (= bs!464978 (and b!2441467 b!2440176)))

(assert (=> bs!464978 (not (= lambda!92429 lambda!92396))))

(declare-fun bs!464979 () Bool)

(assert (= bs!464979 (and b!2441467 b!2441074)))

(assert (=> bs!464979 (= (and (= (regOne!14866 (regTwo!14867 (regOne!14867 r!13927))) (regOne!14866 (regOne!14867 r!13927))) (= (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))) (regTwo!14866 (regOne!14867 r!13927)))) (= lambda!92429 lambda!92427))))

(declare-fun bs!464980 () Bool)

(assert (= bs!464980 (and b!2441467 d!704825)))

(assert (=> bs!464980 (not (= lambda!92429 lambda!92425))))

(assert (=> bs!464975 (not (= lambda!92429 lambda!92390))))

(declare-fun bs!464981 () Bool)

(assert (= bs!464981 (and b!2441467 b!2441016)))

(assert (=> bs!464981 (= (and (= (regOne!14866 (regTwo!14867 (regOne!14867 r!13927))) (regOne!14866 (regTwo!14867 r!13927))) (= (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))) (regTwo!14866 (regTwo!14867 r!13927)))) (= lambda!92429 lambda!92422))))

(assert (=> bs!464977 (= (and (= (regOne!14866 (regTwo!14867 (regOne!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92429 lambda!92419))))

(declare-fun bs!464982 () Bool)

(assert (= bs!464982 (and b!2441467 b!2439691)))

(assert (=> bs!464982 (not (= lambda!92429 lambda!92358))))

(assert (=> bs!464982 (= (and (= (regOne!14866 (regTwo!14867 (regOne!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92429 lambda!92359))))

(declare-fun bs!464983 () Bool)

(assert (= bs!464983 (and b!2441467 d!704513)))

(assert (=> bs!464983 (not (= lambda!92429 lambda!92385))))

(assert (=> b!2441467 true))

(assert (=> b!2441467 true))

(declare-fun bm!149575 () Bool)

(declare-fun call!149580 () Bool)

(assert (=> bm!149575 (= call!149580 (isEmpty!16534 s!9460))))

(declare-fun d!704949 () Bool)

(declare-fun c!389599 () Bool)

(assert (=> d!704949 (= c!389599 ((_ is EmptyExpr!7177) (regTwo!14867 (regOne!14867 r!13927))))))

(declare-fun e!1551151 () Bool)

(assert (=> d!704949 (= (matchRSpec!1024 (regTwo!14867 (regOne!14867 r!13927)) s!9460) e!1551151)))

(declare-fun b!2441462 () Bool)

(declare-fun res!1036571 () Bool)

(declare-fun e!1551149 () Bool)

(assert (=> b!2441462 (=> res!1036571 e!1551149)))

(assert (=> b!2441462 (= res!1036571 call!149580)))

(declare-fun e!1551146 () Bool)

(assert (=> b!2441462 (= e!1551146 e!1551149)))

(declare-fun b!2441463 () Bool)

(declare-fun e!1551147 () Bool)

(assert (=> b!2441463 (= e!1551147 (matchRSpec!1024 (regTwo!14867 (regTwo!14867 (regOne!14867 r!13927))) s!9460))))

(declare-fun b!2441464 () Bool)

(assert (=> b!2441464 (= e!1551151 call!149580)))

(declare-fun b!2441465 () Bool)

(declare-fun e!1551148 () Bool)

(assert (=> b!2441465 (= e!1551148 e!1551146)))

(declare-fun c!389597 () Bool)

(assert (=> b!2441465 (= c!389597 ((_ is Star!7177) (regTwo!14867 (regOne!14867 r!13927))))))

(declare-fun b!2441466 () Bool)

(declare-fun e!1551150 () Bool)

(assert (=> b!2441466 (= e!1551150 (= s!9460 (Cons!28492 (c!389219 (regTwo!14867 (regOne!14867 r!13927))) Nil!28492)))))

(declare-fun bm!149576 () Bool)

(declare-fun call!149581 () Bool)

(assert (=> bm!149576 (= call!149581 (Exists!1213 (ite c!389597 lambda!92428 lambda!92429)))))

(assert (=> b!2441467 (= e!1551146 call!149581)))

(declare-fun b!2441468 () Bool)

(assert (=> b!2441468 (= e!1551148 e!1551147)))

(declare-fun res!1036573 () Bool)

(assert (=> b!2441468 (= res!1036573 (matchRSpec!1024 (regOne!14867 (regTwo!14867 (regOne!14867 r!13927))) s!9460))))

(assert (=> b!2441468 (=> res!1036573 e!1551147)))

(declare-fun b!2441469 () Bool)

(declare-fun e!1551152 () Bool)

(assert (=> b!2441469 (= e!1551151 e!1551152)))

(declare-fun res!1036572 () Bool)

(assert (=> b!2441469 (= res!1036572 (not ((_ is EmptyLang!7177) (regTwo!14867 (regOne!14867 r!13927)))))))

(assert (=> b!2441469 (=> (not res!1036572) (not e!1551152))))

(declare-fun b!2441470 () Bool)

(declare-fun c!389598 () Bool)

(assert (=> b!2441470 (= c!389598 ((_ is Union!7177) (regTwo!14867 (regOne!14867 r!13927))))))

(assert (=> b!2441470 (= e!1551150 e!1551148)))

(declare-fun b!2441471 () Bool)

(declare-fun c!389596 () Bool)

(assert (=> b!2441471 (= c!389596 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14867 r!13927))))))

(assert (=> b!2441471 (= e!1551152 e!1551150)))

(assert (=> b!2441472 (= e!1551149 call!149581)))

(assert (= (and d!704949 c!389599) b!2441464))

(assert (= (and d!704949 (not c!389599)) b!2441469))

(assert (= (and b!2441469 res!1036572) b!2441471))

(assert (= (and b!2441471 c!389596) b!2441466))

(assert (= (and b!2441471 (not c!389596)) b!2441470))

(assert (= (and b!2441470 c!389598) b!2441468))

(assert (= (and b!2441470 (not c!389598)) b!2441465))

(assert (= (and b!2441468 (not res!1036573)) b!2441463))

(assert (= (and b!2441465 c!389597) b!2441462))

(assert (= (and b!2441465 (not c!389597)) b!2441467))

(assert (= (and b!2441462 (not res!1036571)) b!2441472))

(assert (= (or b!2441472 b!2441467) bm!149576))

(assert (= (or b!2441464 b!2441462) bm!149575))

(assert (=> bm!149575 m!2818203))

(declare-fun m!2819359 () Bool)

(assert (=> b!2441463 m!2819359))

(declare-fun m!2819361 () Bool)

(assert (=> bm!149576 m!2819361))

(declare-fun m!2819363 () Bool)

(assert (=> b!2441468 m!2819363))

(assert (=> b!2441070 d!704949))

(declare-fun d!704951 () Bool)

(assert (not d!704951))

(assert (=> b!2441118 d!704951))

(declare-fun d!704953 () Bool)

(assert (not d!704953))

(assert (=> b!2441118 d!704953))

(declare-fun d!704955 () Bool)

(assert (=> d!704955 (= (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878295)))) ((_ is Nil!28492) (tail!3818 (_2!16596 (get!8795 lt!878295)))))))

(assert (=> b!2441085 d!704955))

(declare-fun d!704957 () Bool)

(assert (=> d!704957 (= (tail!3818 (_2!16596 (get!8795 lt!878295))) (t!208567 (_2!16596 (get!8795 lt!878295))))))

(assert (=> b!2441085 d!704957))

(assert (=> d!704769 d!704539))

(assert (=> d!704769 d!704537))

(assert (=> b!2441151 d!704905))

(assert (=> d!704757 d!704809))

(declare-fun b!2441473 () Bool)

(declare-fun e!1551159 () Bool)

(declare-fun e!1551154 () Bool)

(assert (=> b!2441473 (= e!1551159 e!1551154)))

(declare-fun c!389601 () Bool)

(assert (=> b!2441473 (= c!389601 ((_ is Star!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun c!389600 () Bool)

(declare-fun bm!149577 () Bool)

(declare-fun call!149583 () Bool)

(assert (=> bm!149577 (= call!149583 (validRegex!2889 (ite c!389600 (regOne!14867 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (regTwo!14866 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))))

(declare-fun b!2441474 () Bool)

(declare-fun e!1551153 () Bool)

(assert (=> b!2441474 (= e!1551154 e!1551153)))

(declare-fun res!1036577 () Bool)

(assert (=> b!2441474 (= res!1036577 (not (nullable!2198 (reg!7506 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))))

(assert (=> b!2441474 (=> (not res!1036577) (not e!1551153))))

(declare-fun d!704959 () Bool)

(declare-fun res!1036578 () Bool)

(assert (=> d!704959 (=> res!1036578 e!1551159)))

(assert (=> d!704959 (= res!1036578 ((_ is ElementMatch!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(assert (=> d!704959 (= (validRegex!2889 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) e!1551159)))

(declare-fun b!2441475 () Bool)

(declare-fun e!1551157 () Bool)

(assert (=> b!2441475 (= e!1551157 call!149583)))

(declare-fun b!2441476 () Bool)

(declare-fun e!1551156 () Bool)

(declare-fun call!149584 () Bool)

(assert (=> b!2441476 (= e!1551156 call!149584)))

(declare-fun b!2441477 () Bool)

(declare-fun res!1036575 () Bool)

(declare-fun e!1551155 () Bool)

(assert (=> b!2441477 (=> res!1036575 e!1551155)))

(assert (=> b!2441477 (= res!1036575 (not ((_ is Concat!11813) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(declare-fun e!1551158 () Bool)

(assert (=> b!2441477 (= e!1551158 e!1551155)))

(declare-fun b!2441478 () Bool)

(declare-fun res!1036574 () Bool)

(assert (=> b!2441478 (=> (not res!1036574) (not e!1551156))))

(assert (=> b!2441478 (= res!1036574 call!149583)))

(assert (=> b!2441478 (= e!1551158 e!1551156)))

(declare-fun b!2441479 () Bool)

(assert (=> b!2441479 (= e!1551154 e!1551158)))

(assert (=> b!2441479 (= c!389600 ((_ is Union!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2441480 () Bool)

(assert (=> b!2441480 (= e!1551155 e!1551157)))

(declare-fun res!1036576 () Bool)

(assert (=> b!2441480 (=> (not res!1036576) (not e!1551157))))

(assert (=> b!2441480 (= res!1036576 call!149584)))

(declare-fun b!2441481 () Bool)

(declare-fun call!149582 () Bool)

(assert (=> b!2441481 (= e!1551153 call!149582)))

(declare-fun bm!149578 () Bool)

(assert (=> bm!149578 (= call!149584 call!149582)))

(declare-fun bm!149579 () Bool)

(assert (=> bm!149579 (= call!149582 (validRegex!2889 (ite c!389601 (reg!7506 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (ite c!389600 (regTwo!14867 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (regOne!14866 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))))

(assert (= (and d!704959 (not res!1036578)) b!2441473))

(assert (= (and b!2441473 c!389601) b!2441474))

(assert (= (and b!2441473 (not c!389601)) b!2441479))

(assert (= (and b!2441474 res!1036577) b!2441481))

(assert (= (and b!2441479 c!389600) b!2441478))

(assert (= (and b!2441479 (not c!389600)) b!2441477))

(assert (= (and b!2441478 res!1036574) b!2441476))

(assert (= (and b!2441477 (not res!1036575)) b!2441480))

(assert (= (and b!2441480 res!1036576) b!2441475))

(assert (= (or b!2441478 b!2441475) bm!149577))

(assert (= (or b!2441476 b!2441480) bm!149578))

(assert (= (or b!2441481 bm!149578) bm!149579))

(declare-fun m!2819365 () Bool)

(assert (=> bm!149577 m!2819365))

(declare-fun m!2819367 () Bool)

(assert (=> b!2441474 m!2819367))

(declare-fun m!2819369 () Bool)

(assert (=> bm!149579 m!2819369))

(assert (=> d!704757 d!704959))

(assert (=> b!2441058 d!704909))

(declare-fun d!704961 () Bool)

(assert (=> d!704961 (= (head!5545 (_1!16596 (get!8795 lt!878295))) (h!33893 (_1!16596 (get!8795 lt!878295))))))

(assert (=> b!2441140 d!704961))

(declare-fun d!704963 () Bool)

(declare-fun lt!878388 () Int)

(assert (=> d!704963 (>= lt!878388 0)))

(declare-fun e!1551160 () Int)

(assert (=> d!704963 (= lt!878388 e!1551160)))

(declare-fun c!389602 () Bool)

(assert (=> d!704963 (= c!389602 ((_ is Nil!28492) lt!878346))))

(assert (=> d!704963 (= (size!22262 lt!878346) lt!878388)))

(declare-fun b!2441482 () Bool)

(assert (=> b!2441482 (= e!1551160 0)))

(declare-fun b!2441483 () Bool)

(assert (=> b!2441483 (= e!1551160 (+ 1 (size!22262 (t!208567 lt!878346))))))

(assert (= (and d!704963 c!389602) b!2441482))

(assert (= (and d!704963 (not c!389602)) b!2441483))

(declare-fun m!2819371 () Bool)

(assert (=> b!2441483 m!2819371))

(assert (=> b!2440854 d!704963))

(declare-fun d!704965 () Bool)

(declare-fun lt!878389 () Int)

(assert (=> d!704965 (>= lt!878389 0)))

(declare-fun e!1551161 () Int)

(assert (=> d!704965 (= lt!878389 e!1551161)))

(declare-fun c!389603 () Bool)

(assert (=> d!704965 (= c!389603 ((_ is Nil!28492) (_1!16596 (get!8795 lt!878298))))))

(assert (=> d!704965 (= (size!22262 (_1!16596 (get!8795 lt!878298))) lt!878389)))

(declare-fun b!2441484 () Bool)

(assert (=> b!2441484 (= e!1551161 0)))

(declare-fun b!2441485 () Bool)

(assert (=> b!2441485 (= e!1551161 (+ 1 (size!22262 (t!208567 (_1!16596 (get!8795 lt!878298))))))))

(assert (= (and d!704965 c!389603) b!2441484))

(assert (= (and d!704965 (not c!389603)) b!2441485))

(declare-fun m!2819373 () Bool)

(assert (=> b!2441485 m!2819373))

(assert (=> b!2440854 d!704965))

(declare-fun d!704967 () Bool)

(declare-fun lt!878390 () Int)

(assert (=> d!704967 (>= lt!878390 0)))

(declare-fun e!1551162 () Int)

(assert (=> d!704967 (= lt!878390 e!1551162)))

(declare-fun c!389604 () Bool)

(assert (=> d!704967 (= c!389604 ((_ is Nil!28492) (_2!16596 (get!8795 lt!878298))))))

(assert (=> d!704967 (= (size!22262 (_2!16596 (get!8795 lt!878298))) lt!878390)))

(declare-fun b!2441486 () Bool)

(assert (=> b!2441486 (= e!1551162 0)))

(declare-fun b!2441487 () Bool)

(assert (=> b!2441487 (= e!1551162 (+ 1 (size!22262 (t!208567 (_2!16596 (get!8795 lt!878298))))))))

(assert (= (and d!704967 c!389604) b!2441486))

(assert (= (and d!704967 (not c!389604)) b!2441487))

(declare-fun m!2819375 () Bool)

(assert (=> b!2441487 m!2819375))

(assert (=> b!2440854 d!704967))

(assert (=> d!704785 d!704791))

(declare-fun b!2441488 () Bool)

(declare-fun e!1551169 () Bool)

(declare-fun e!1551164 () Bool)

(assert (=> b!2441488 (= e!1551169 e!1551164)))

(declare-fun c!389606 () Bool)

(assert (=> b!2441488 (= c!389606 ((_ is Star!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(declare-fun bm!149580 () Bool)

(declare-fun call!149586 () Bool)

(declare-fun c!389605 () Bool)

(assert (=> bm!149580 (= call!149586 (validRegex!2889 (ite c!389605 (regOne!14867 (derivativeStep!1852 lt!878222 (head!5545 s!9460))) (regTwo!14866 (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))))

(declare-fun b!2441489 () Bool)

(declare-fun e!1551163 () Bool)

(assert (=> b!2441489 (= e!1551164 e!1551163)))

(declare-fun res!1036582 () Bool)

(assert (=> b!2441489 (= res!1036582 (not (nullable!2198 (reg!7506 (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))))

(assert (=> b!2441489 (=> (not res!1036582) (not e!1551163))))

(declare-fun d!704969 () Bool)

(declare-fun res!1036583 () Bool)

(assert (=> d!704969 (=> res!1036583 e!1551169)))

(assert (=> d!704969 (= res!1036583 ((_ is ElementMatch!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(assert (=> d!704969 (= (validRegex!2889 (derivativeStep!1852 lt!878222 (head!5545 s!9460))) e!1551169)))

(declare-fun b!2441490 () Bool)

(declare-fun e!1551167 () Bool)

(assert (=> b!2441490 (= e!1551167 call!149586)))

(declare-fun b!2441491 () Bool)

(declare-fun e!1551166 () Bool)

(declare-fun call!149587 () Bool)

(assert (=> b!2441491 (= e!1551166 call!149587)))

(declare-fun b!2441492 () Bool)

(declare-fun res!1036580 () Bool)

(declare-fun e!1551165 () Bool)

(assert (=> b!2441492 (=> res!1036580 e!1551165)))

(assert (=> b!2441492 (= res!1036580 (not ((_ is Concat!11813) (derivativeStep!1852 lt!878222 (head!5545 s!9460)))))))

(declare-fun e!1551168 () Bool)

(assert (=> b!2441492 (= e!1551168 e!1551165)))

(declare-fun b!2441493 () Bool)

(declare-fun res!1036579 () Bool)

(assert (=> b!2441493 (=> (not res!1036579) (not e!1551166))))

(assert (=> b!2441493 (= res!1036579 call!149586)))

(assert (=> b!2441493 (= e!1551168 e!1551166)))

(declare-fun b!2441494 () Bool)

(assert (=> b!2441494 (= e!1551164 e!1551168)))

(assert (=> b!2441494 (= c!389605 ((_ is Union!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(declare-fun b!2441495 () Bool)

(assert (=> b!2441495 (= e!1551165 e!1551167)))

(declare-fun res!1036581 () Bool)

(assert (=> b!2441495 (=> (not res!1036581) (not e!1551167))))

(assert (=> b!2441495 (= res!1036581 call!149587)))

(declare-fun b!2441496 () Bool)

(declare-fun call!149585 () Bool)

(assert (=> b!2441496 (= e!1551163 call!149585)))

(declare-fun bm!149581 () Bool)

(assert (=> bm!149581 (= call!149587 call!149585)))

(declare-fun bm!149582 () Bool)

(assert (=> bm!149582 (= call!149585 (validRegex!2889 (ite c!389606 (reg!7506 (derivativeStep!1852 lt!878222 (head!5545 s!9460))) (ite c!389605 (regTwo!14867 (derivativeStep!1852 lt!878222 (head!5545 s!9460))) (regOne!14866 (derivativeStep!1852 lt!878222 (head!5545 s!9460)))))))))

(assert (= (and d!704969 (not res!1036583)) b!2441488))

(assert (= (and b!2441488 c!389606) b!2441489))

(assert (= (and b!2441488 (not c!389606)) b!2441494))

(assert (= (and b!2441489 res!1036582) b!2441496))

(assert (= (and b!2441494 c!389605) b!2441493))

(assert (= (and b!2441494 (not c!389605)) b!2441492))

(assert (= (and b!2441493 res!1036579) b!2441491))

(assert (= (and b!2441492 (not res!1036580)) b!2441495))

(assert (= (and b!2441495 res!1036581) b!2441490))

(assert (= (or b!2441493 b!2441490) bm!149580))

(assert (= (or b!2441491 b!2441495) bm!149581))

(assert (= (or b!2441496 bm!149581) bm!149582))

(declare-fun m!2819377 () Bool)

(assert (=> bm!149580 m!2819377))

(declare-fun m!2819379 () Bool)

(assert (=> b!2441489 m!2819379))

(declare-fun m!2819381 () Bool)

(assert (=> bm!149582 m!2819381))

(assert (=> d!704785 d!704969))

(assert (=> b!2441061 d!704791))

(assert (=> b!2441061 d!704789))

(declare-fun d!704971 () Bool)

(assert (=> d!704971 (= (isEmpty!16531 (tail!3816 (t!208568 l!9164))) ((_ is Nil!28493) (tail!3816 (t!208568 l!9164))))))

(assert (=> b!2440778 d!704971))

(declare-fun d!704973 () Bool)

(assert (=> d!704973 (= (tail!3816 (t!208568 l!9164)) (t!208568 (t!208568 l!9164)))))

(assert (=> b!2440778 d!704973))

(assert (=> b!2440881 d!704889))

(declare-fun b!2441497 () Bool)

(declare-fun e!1551176 () Bool)

(declare-fun e!1551171 () Bool)

(assert (=> b!2441497 (= e!1551176 e!1551171)))

(declare-fun c!389608 () Bool)

(assert (=> b!2441497 (= c!389608 ((_ is Star!7177) (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164)))))))

(declare-fun c!389607 () Bool)

(declare-fun bm!149583 () Bool)

(declare-fun call!149589 () Bool)

(assert (=> bm!149583 (= call!149589 (validRegex!2889 (ite c!389607 (regOne!14867 (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164)))) (regTwo!14866 (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164)))))))))

(declare-fun b!2441498 () Bool)

(declare-fun e!1551170 () Bool)

(assert (=> b!2441498 (= e!1551171 e!1551170)))

(declare-fun res!1036587 () Bool)

(assert (=> b!2441498 (= res!1036587 (not (nullable!2198 (reg!7506 (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164)))))))))

(assert (=> b!2441498 (=> (not res!1036587) (not e!1551170))))

(declare-fun d!704975 () Bool)

(declare-fun res!1036588 () Bool)

(assert (=> d!704975 (=> res!1036588 e!1551176)))

(assert (=> d!704975 (= res!1036588 ((_ is ElementMatch!7177) (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164)))))))

(assert (=> d!704975 (= (validRegex!2889 (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164)))) e!1551176)))

(declare-fun b!2441499 () Bool)

(declare-fun e!1551174 () Bool)

(assert (=> b!2441499 (= e!1551174 call!149589)))

(declare-fun b!2441500 () Bool)

(declare-fun e!1551173 () Bool)

(declare-fun call!149590 () Bool)

(assert (=> b!2441500 (= e!1551173 call!149590)))

(declare-fun b!2441501 () Bool)

(declare-fun res!1036585 () Bool)

(declare-fun e!1551172 () Bool)

(assert (=> b!2441501 (=> res!1036585 e!1551172)))

(assert (=> b!2441501 (= res!1036585 (not ((_ is Concat!11813) (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164))))))))

(declare-fun e!1551175 () Bool)

(assert (=> b!2441501 (= e!1551175 e!1551172)))

(declare-fun b!2441502 () Bool)

(declare-fun res!1036584 () Bool)

(assert (=> b!2441502 (=> (not res!1036584) (not e!1551173))))

(assert (=> b!2441502 (= res!1036584 call!149589)))

(assert (=> b!2441502 (= e!1551175 e!1551173)))

(declare-fun b!2441503 () Bool)

(assert (=> b!2441503 (= e!1551171 e!1551175)))

(assert (=> b!2441503 (= c!389607 ((_ is Union!7177) (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164)))))))

(declare-fun b!2441504 () Bool)

(assert (=> b!2441504 (= e!1551172 e!1551174)))

(declare-fun res!1036586 () Bool)

(assert (=> b!2441504 (=> (not res!1036586) (not e!1551174))))

(assert (=> b!2441504 (= res!1036586 call!149590)))

(declare-fun b!2441505 () Bool)

(declare-fun call!149588 () Bool)

(assert (=> b!2441505 (= e!1551170 call!149588)))

(declare-fun bm!149584 () Bool)

(assert (=> bm!149584 (= call!149590 call!149588)))

(declare-fun bm!149585 () Bool)

(assert (=> bm!149585 (= call!149588 (validRegex!2889 (ite c!389608 (reg!7506 (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164)))) (ite c!389607 (regTwo!14867 (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164)))) (regOne!14866 (ite c!389507 (regOne!14867 (h!33894 l!9164)) (regTwo!14866 (h!33894 l!9164))))))))))

(assert (= (and d!704975 (not res!1036588)) b!2441497))

(assert (= (and b!2441497 c!389608) b!2441498))

(assert (= (and b!2441497 (not c!389608)) b!2441503))

(assert (= (and b!2441498 res!1036587) b!2441505))

(assert (= (and b!2441503 c!389607) b!2441502))

(assert (= (and b!2441503 (not c!389607)) b!2441501))

(assert (= (and b!2441502 res!1036584) b!2441500))

(assert (= (and b!2441501 (not res!1036585)) b!2441504))

(assert (= (and b!2441504 res!1036586) b!2441499))

(assert (= (or b!2441502 b!2441499) bm!149583))

(assert (= (or b!2441500 b!2441504) bm!149584))

(assert (= (or b!2441505 bm!149584) bm!149585))

(declare-fun m!2819383 () Bool)

(assert (=> bm!149583 m!2819383))

(declare-fun m!2819385 () Bool)

(assert (=> b!2441498 m!2819385))

(declare-fun m!2819387 () Bool)

(assert (=> bm!149585 m!2819387))

(assert (=> bm!149512 d!704975))

(declare-fun d!704977 () Bool)

(declare-fun lt!878391 () Int)

(assert (=> d!704977 (>= lt!878391 0)))

(declare-fun e!1551177 () Int)

(assert (=> d!704977 (= lt!878391 e!1551177)))

(declare-fun c!389609 () Bool)

(assert (=> d!704977 (= c!389609 ((_ is Nil!28492) (t!208567 (_2!16596 lt!878224))))))

(assert (=> d!704977 (= (size!22262 (t!208567 (_2!16596 lt!878224))) lt!878391)))

(declare-fun b!2441506 () Bool)

(assert (=> b!2441506 (= e!1551177 0)))

(declare-fun b!2441507 () Bool)

(assert (=> b!2441507 (= e!1551177 (+ 1 (size!22262 (t!208567 (t!208567 (_2!16596 lt!878224))))))))

(assert (= (and d!704977 c!389609) b!2441506))

(assert (= (and d!704977 (not c!389609)) b!2441507))

(declare-fun m!2819389 () Bool)

(assert (=> b!2441507 m!2819389))

(assert (=> b!2441112 d!704977))

(declare-fun d!704979 () Bool)

(assert (=> d!704979 (= (nullable!2198 (regOne!14866 lt!878222)) (nullableFct!534 (regOne!14866 lt!878222)))))

(declare-fun bs!464984 () Bool)

(assert (= bs!464984 d!704979))

(declare-fun m!2819391 () Bool)

(assert (=> bs!464984 m!2819391))

(assert (=> b!2440995 d!704979))

(declare-fun b!2441508 () Bool)

(declare-fun e!1551181 () Regex!7177)

(declare-fun e!1551178 () Regex!7177)

(assert (=> b!2441508 (= e!1551181 e!1551178)))

(declare-fun c!389612 () Bool)

(assert (=> b!2441508 (= c!389612 ((_ is ElementMatch!7177) (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun b!2441509 () Bool)

(assert (=> b!2441509 (= e!1551178 (ite (= (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))) (c!389219 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389611 () Bool)

(declare-fun bm!149586 () Bool)

(declare-fun call!149594 () Regex!7177)

(declare-fun c!389613 () Bool)

(assert (=> bm!149586 (= call!149594 (derivativeStep!1852 (ite c!389613 (regOne!14867 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (ite c!389611 (reg!7506 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (regOne!14866 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(declare-fun b!2441511 () Bool)

(declare-fun c!389614 () Bool)

(assert (=> b!2441511 (= c!389614 (nullable!2198 (regOne!14866 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))))

(declare-fun e!1551179 () Regex!7177)

(declare-fun e!1551180 () Regex!7177)

(assert (=> b!2441511 (= e!1551179 e!1551180)))

(declare-fun b!2441512 () Bool)

(declare-fun call!149591 () Regex!7177)

(assert (=> b!2441512 (= e!1551179 (Concat!11813 call!149591 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun b!2441513 () Bool)

(assert (=> b!2441513 (= c!389613 ((_ is Union!7177) (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun e!1551182 () Regex!7177)

(assert (=> b!2441513 (= e!1551178 e!1551182)))

(declare-fun bm!149587 () Bool)

(assert (=> bm!149587 (= call!149591 call!149594)))

(declare-fun bm!149588 () Bool)

(declare-fun call!149592 () Regex!7177)

(declare-fun call!149593 () Regex!7177)

(assert (=> bm!149588 (= call!149592 call!149593)))

(declare-fun bm!149589 () Bool)

(assert (=> bm!149589 (= call!149593 (derivativeStep!1852 (ite c!389613 (regTwo!14867 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (ite c!389614 (regTwo!14866 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (regOne!14866 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(declare-fun b!2441510 () Bool)

(assert (=> b!2441510 (= e!1551180 (Union!7177 (Concat!11813 call!149591 (regTwo!14866 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))) call!149592))))

(declare-fun d!704981 () Bool)

(declare-fun lt!878392 () Regex!7177)

(assert (=> d!704981 (validRegex!2889 lt!878392)))

(assert (=> d!704981 (= lt!878392 e!1551181)))

(declare-fun c!389610 () Bool)

(assert (=> d!704981 (= c!389610 (or ((_ is EmptyExpr!7177) (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) ((_ is EmptyLang!7177) (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))))

(assert (=> d!704981 (validRegex!2889 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(assert (=> d!704981 (= (derivativeStep!1852 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) lt!878392)))

(declare-fun b!2441514 () Bool)

(assert (=> b!2441514 (= e!1551182 e!1551179)))

(assert (=> b!2441514 (= c!389611 ((_ is Star!7177) (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun b!2441515 () Bool)

(assert (=> b!2441515 (= e!1551181 EmptyLang!7177)))

(declare-fun b!2441516 () Bool)

(assert (=> b!2441516 (= e!1551182 (Union!7177 call!149594 call!149593))))

(declare-fun b!2441517 () Bool)

(assert (=> b!2441517 (= e!1551180 (Union!7177 (Concat!11813 call!149592 (regTwo!14866 (ite c!389484 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389485 (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))) EmptyLang!7177))))

(assert (= (and d!704981 c!389610) b!2441515))

(assert (= (and d!704981 (not c!389610)) b!2441508))

(assert (= (and b!2441508 c!389612) b!2441509))

(assert (= (and b!2441508 (not c!389612)) b!2441513))

(assert (= (and b!2441513 c!389613) b!2441516))

(assert (= (and b!2441513 (not c!389613)) b!2441514))

(assert (= (and b!2441514 c!389611) b!2441512))

(assert (= (and b!2441514 (not c!389611)) b!2441511))

(assert (= (and b!2441511 c!389614) b!2441510))

(assert (= (and b!2441511 (not c!389614)) b!2441517))

(assert (= (or b!2441510 b!2441517) bm!149588))

(assert (= (or b!2441512 b!2441510) bm!149587))

(assert (= (or b!2441516 bm!149587) bm!149586))

(assert (= (or b!2441516 bm!149588) bm!149589))

(assert (=> bm!149586 m!2818235))

(declare-fun m!2819393 () Bool)

(assert (=> bm!149586 m!2819393))

(declare-fun m!2819395 () Bool)

(assert (=> b!2441511 m!2819395))

(assert (=> bm!149589 m!2818235))

(declare-fun m!2819397 () Bool)

(assert (=> bm!149589 m!2819397))

(declare-fun m!2819399 () Bool)

(assert (=> d!704981 m!2819399))

(declare-fun m!2819401 () Bool)

(assert (=> d!704981 m!2819401))

(assert (=> bm!149496 d!704981))

(assert (=> bm!149515 d!704741))

(assert (=> d!704751 d!704747))

(assert (=> d!704751 d!704749))

(declare-fun d!704983 () Bool)

(assert (=> d!704983 (= (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (t!208567 s!9460)) s!9460)))

(assert (=> d!704983 true))

(declare-fun _$68!613 () Unit!41737)

(assert (=> d!704983 (= (choose!14485 Nil!28492 (h!33893 s!9460) (t!208567 s!9460) s!9460) _$68!613)))

(declare-fun bs!464985 () Bool)

(assert (= bs!464985 d!704983))

(assert (=> bs!464985 m!2818373))

(assert (=> bs!464985 m!2818373))

(assert (=> bs!464985 m!2818375))

(assert (=> d!704751 d!704983))

(declare-fun b!2441518 () Bool)

(declare-fun e!1551184 () List!28590)

(assert (=> b!2441518 (= e!1551184 (Cons!28492 (h!33893 s!9460) (t!208567 s!9460)))))

(declare-fun d!704985 () Bool)

(declare-fun e!1551183 () Bool)

(assert (=> d!704985 e!1551183))

(declare-fun res!1036589 () Bool)

(assert (=> d!704985 (=> (not res!1036589) (not e!1551183))))

(declare-fun lt!878393 () List!28590)

(assert (=> d!704985 (= res!1036589 (= (content!3924 lt!878393) ((_ map or) (content!3924 Nil!28492) (content!3924 (Cons!28492 (h!33893 s!9460) (t!208567 s!9460))))))))

(assert (=> d!704985 (= lt!878393 e!1551184)))

(declare-fun c!389615 () Bool)

(assert (=> d!704985 (= c!389615 ((_ is Nil!28492) Nil!28492))))

(assert (=> d!704985 (= (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) (t!208567 s!9460))) lt!878393)))

(declare-fun b!2441521 () Bool)

(assert (=> b!2441521 (= e!1551183 (or (not (= (Cons!28492 (h!33893 s!9460) (t!208567 s!9460)) Nil!28492)) (= lt!878393 Nil!28492)))))

(declare-fun b!2441520 () Bool)

(declare-fun res!1036590 () Bool)

(assert (=> b!2441520 (=> (not res!1036590) (not e!1551183))))

(assert (=> b!2441520 (= res!1036590 (= (size!22262 lt!878393) (+ (size!22262 Nil!28492) (size!22262 (Cons!28492 (h!33893 s!9460) (t!208567 s!9460))))))))

(declare-fun b!2441519 () Bool)

(assert (=> b!2441519 (= e!1551184 (Cons!28492 (h!33893 Nil!28492) (++!7080 (t!208567 Nil!28492) (Cons!28492 (h!33893 s!9460) (t!208567 s!9460)))))))

(assert (= (and d!704985 c!389615) b!2441518))

(assert (= (and d!704985 (not c!389615)) b!2441519))

(assert (= (and d!704985 res!1036589) b!2441520))

(assert (= (and b!2441520 res!1036590) b!2441521))

(declare-fun m!2819403 () Bool)

(assert (=> d!704985 m!2819403))

(assert (=> d!704985 m!2818927))

(declare-fun m!2819405 () Bool)

(assert (=> d!704985 m!2819405))

(declare-fun m!2819407 () Bool)

(assert (=> b!2441520 m!2819407))

(assert (=> b!2441520 m!2818933))

(declare-fun m!2819409 () Bool)

(assert (=> b!2441520 m!2819409))

(declare-fun m!2819411 () Bool)

(assert (=> b!2441519 m!2819411))

(assert (=> d!704751 d!704985))

(assert (=> b!2440986 d!704905))

(assert (=> b!2441032 d!704951))

(assert (=> b!2441032 d!704953))

(assert (=> b!2440974 d!704791))

(assert (=> b!2440974 d!704789))

(declare-fun b!2441522 () Bool)

(declare-fun e!1551191 () Bool)

(declare-fun e!1551186 () Bool)

(assert (=> b!2441522 (= e!1551191 e!1551186)))

(declare-fun c!389617 () Bool)

(assert (=> b!2441522 (= c!389617 ((_ is Star!7177) (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260)))))))

(declare-fun bm!149590 () Bool)

(declare-fun c!389616 () Bool)

(declare-fun call!149596 () Bool)

(assert (=> bm!149590 (= call!149596 (validRegex!2889 (ite c!389616 (regOne!14867 (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260)))) (regTwo!14866 (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260)))))))))

(declare-fun b!2441523 () Bool)

(declare-fun e!1551185 () Bool)

(assert (=> b!2441523 (= e!1551186 e!1551185)))

(declare-fun res!1036594 () Bool)

(assert (=> b!2441523 (= res!1036594 (not (nullable!2198 (reg!7506 (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260)))))))))

(assert (=> b!2441523 (=> (not res!1036594) (not e!1551185))))

(declare-fun d!704987 () Bool)

(declare-fun res!1036595 () Bool)

(assert (=> d!704987 (=> res!1036595 e!1551191)))

(assert (=> d!704987 (= res!1036595 ((_ is ElementMatch!7177) (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260)))))))

(assert (=> d!704987 (= (validRegex!2889 (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260)))) e!1551191)))

(declare-fun b!2441524 () Bool)

(declare-fun e!1551189 () Bool)

(assert (=> b!2441524 (= e!1551189 call!149596)))

(declare-fun b!2441525 () Bool)

(declare-fun e!1551188 () Bool)

(declare-fun call!149597 () Bool)

(assert (=> b!2441525 (= e!1551188 call!149597)))

(declare-fun b!2441526 () Bool)

(declare-fun res!1036592 () Bool)

(declare-fun e!1551187 () Bool)

(assert (=> b!2441526 (=> res!1036592 e!1551187)))

(assert (=> b!2441526 (= res!1036592 (not ((_ is Concat!11813) (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260))))))))

(declare-fun e!1551190 () Bool)

(assert (=> b!2441526 (= e!1551190 e!1551187)))

(declare-fun b!2441527 () Bool)

(declare-fun res!1036591 () Bool)

(assert (=> b!2441527 (=> (not res!1036591) (not e!1551188))))

(assert (=> b!2441527 (= res!1036591 call!149596)))

(assert (=> b!2441527 (= e!1551190 e!1551188)))

(declare-fun b!2441528 () Bool)

(assert (=> b!2441528 (= e!1551186 e!1551190)))

(assert (=> b!2441528 (= c!389616 ((_ is Union!7177) (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260)))))))

(declare-fun b!2441529 () Bool)

(assert (=> b!2441529 (= e!1551187 e!1551189)))

(declare-fun res!1036593 () Bool)

(assert (=> b!2441529 (=> (not res!1036593) (not e!1551189))))

(assert (=> b!2441529 (= res!1036593 call!149597)))

(declare-fun b!2441530 () Bool)

(declare-fun call!149595 () Bool)

(assert (=> b!2441530 (= e!1551185 call!149595)))

(declare-fun bm!149591 () Bool)

(assert (=> bm!149591 (= call!149597 call!149595)))

(declare-fun bm!149592 () Bool)

(assert (=> bm!149592 (= call!149595 (validRegex!2889 (ite c!389617 (reg!7506 (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260)))) (ite c!389616 (regTwo!14867 (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260)))) (regOne!14866 (ite c!389487 (reg!7506 lt!878260) (ite c!389486 (regTwo!14867 lt!878260) (regOne!14866 lt!878260))))))))))

(assert (= (and d!704987 (not res!1036595)) b!2441522))

(assert (= (and b!2441522 c!389617) b!2441523))

(assert (= (and b!2441522 (not c!389617)) b!2441528))

(assert (= (and b!2441523 res!1036594) b!2441530))

(assert (= (and b!2441528 c!389616) b!2441527))

(assert (= (and b!2441528 (not c!389616)) b!2441526))

(assert (= (and b!2441527 res!1036591) b!2441525))

(assert (= (and b!2441526 (not res!1036592)) b!2441529))

(assert (= (and b!2441529 res!1036593) b!2441524))

(assert (= (or b!2441527 b!2441524) bm!149590))

(assert (= (or b!2441525 b!2441529) bm!149591))

(assert (= (or b!2441530 bm!149591) bm!149592))

(declare-fun m!2819413 () Bool)

(assert (=> bm!149590 m!2819413))

(declare-fun m!2819415 () Bool)

(assert (=> b!2441523 m!2819415))

(declare-fun m!2819417 () Bool)

(assert (=> bm!149592 m!2819417))

(assert (=> bm!149499 d!704987))

(declare-fun d!704989 () Bool)

(declare-fun lt!878394 () Int)

(assert (=> d!704989 (>= lt!878394 0)))

(declare-fun e!1551192 () Int)

(assert (=> d!704989 (= lt!878394 e!1551192)))

(declare-fun c!389618 () Bool)

(assert (=> d!704989 (= c!389618 ((_ is Nil!28492) lt!878348))))

(assert (=> d!704989 (= (size!22262 lt!878348) lt!878394)))

(declare-fun b!2441531 () Bool)

(assert (=> b!2441531 (= e!1551192 0)))

(declare-fun b!2441532 () Bool)

(assert (=> b!2441532 (= e!1551192 (+ 1 (size!22262 (t!208567 lt!878348))))))

(assert (= (and d!704989 c!389618) b!2441531))

(assert (= (and d!704989 (not c!389618)) b!2441532))

(declare-fun m!2819419 () Bool)

(assert (=> b!2441532 m!2819419))

(assert (=> b!2440862 d!704989))

(declare-fun d!704991 () Bool)

(declare-fun lt!878395 () Int)

(assert (=> d!704991 (>= lt!878395 0)))

(declare-fun e!1551193 () Int)

(assert (=> d!704991 (= lt!878395 e!1551193)))

(declare-fun c!389619 () Bool)

(assert (=> d!704991 (= c!389619 ((_ is Nil!28492) Nil!28492))))

(assert (=> d!704991 (= (size!22262 Nil!28492) lt!878395)))

(declare-fun b!2441533 () Bool)

(assert (=> b!2441533 (= e!1551193 0)))

(declare-fun b!2441534 () Bool)

(assert (=> b!2441534 (= e!1551193 (+ 1 (size!22262 (t!208567 Nil!28492))))))

(assert (= (and d!704991 c!389619) b!2441533))

(assert (= (and d!704991 (not c!389619)) b!2441534))

(declare-fun m!2819421 () Bool)

(assert (=> b!2441534 m!2819421))

(assert (=> b!2440862 d!704991))

(declare-fun d!704993 () Bool)

(declare-fun lt!878396 () Int)

(assert (=> d!704993 (>= lt!878396 0)))

(declare-fun e!1551194 () Int)

(assert (=> d!704993 (= lt!878396 e!1551194)))

(declare-fun c!389620 () Bool)

(assert (=> d!704993 (= c!389620 ((_ is Nil!28492) (Cons!28492 (h!33893 s!9460) Nil!28492)))))

(assert (=> d!704993 (= (size!22262 (Cons!28492 (h!33893 s!9460) Nil!28492)) lt!878396)))

(declare-fun b!2441535 () Bool)

(assert (=> b!2441535 (= e!1551194 0)))

(declare-fun b!2441536 () Bool)

(assert (=> b!2441536 (= e!1551194 (+ 1 (size!22262 (t!208567 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(assert (= (and d!704993 c!389620) b!2441535))

(assert (= (and d!704993 (not c!389620)) b!2441536))

(declare-fun m!2819423 () Bool)

(assert (=> b!2441536 m!2819423))

(assert (=> b!2440862 d!704993))

(declare-fun d!704995 () Bool)

(declare-fun c!389621 () Bool)

(assert (=> d!704995 (= c!389621 ((_ is Nil!28492) (t!208567 (_1!16596 lt!878224))))))

(declare-fun e!1551195 () (InoxSet C!14512))

(assert (=> d!704995 (= (content!3924 (t!208567 (_1!16596 lt!878224))) e!1551195)))

(declare-fun b!2441537 () Bool)

(assert (=> b!2441537 (= e!1551195 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441538 () Bool)

(assert (=> b!2441538 (= e!1551195 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (t!208567 (_1!16596 lt!878224))) true) (content!3924 (t!208567 (t!208567 (_1!16596 lt!878224))))))))

(assert (= (and d!704995 c!389621) b!2441537))

(assert (= (and d!704995 (not c!389621)) b!2441538))

(declare-fun m!2819425 () Bool)

(assert (=> b!2441538 m!2819425))

(declare-fun m!2819427 () Bool)

(assert (=> b!2441538 m!2819427))

(assert (=> b!2440771 d!704995))

(declare-fun bs!464986 () Bool)

(declare-fun d!704997 () Bool)

(assert (= bs!464986 (and d!704997 d!704483)))

(declare-fun lambda!92430 () Int)

(assert (=> bs!464986 (= lambda!92430 lambda!92374)))

(declare-fun bs!464987 () Bool)

(assert (= bs!464987 (and d!704997 d!704451)))

(assert (=> bs!464987 (= lambda!92430 lambda!92365)))

(declare-fun bs!464988 () Bool)

(assert (= bs!464988 (and d!704997 d!704781)))

(assert (=> bs!464988 (= lambda!92430 lambda!92420)))

(declare-fun bs!464989 () Bool)

(assert (= bs!464989 (and d!704997 start!238766)))

(assert (=> bs!464989 (= lambda!92430 lambda!92357)))

(declare-fun bs!464990 () Bool)

(assert (= bs!464990 (and d!704997 d!704715)))

(assert (=> bs!464990 (= lambda!92430 lambda!92413)))

(declare-fun b!2441539 () Bool)

(declare-fun e!1551197 () Regex!7177)

(assert (=> b!2441539 (= e!1551197 EmptyExpr!7177)))

(declare-fun b!2441540 () Bool)

(declare-fun e!1551196 () Regex!7177)

(assert (=> b!2441540 (= e!1551196 e!1551197)))

(declare-fun c!389622 () Bool)

(assert (=> b!2441540 (= c!389622 ((_ is Cons!28493) (t!208568 (t!208568 lt!878228))))))

(declare-fun b!2441541 () Bool)

(declare-fun e!1551200 () Bool)

(assert (=> b!2441541 (= e!1551200 (isEmpty!16531 (t!208568 (t!208568 (t!208568 lt!878228)))))))

(declare-fun b!2441542 () Bool)

(declare-fun e!1551198 () Bool)

(declare-fun lt!878397 () Regex!7177)

(assert (=> b!2441542 (= e!1551198 (= lt!878397 (head!5543 (t!208568 (t!208568 lt!878228)))))))

(declare-fun b!2441543 () Bool)

(declare-fun e!1551201 () Bool)

(assert (=> b!2441543 (= e!1551201 e!1551198)))

(declare-fun c!389624 () Bool)

(assert (=> b!2441543 (= c!389624 (isEmpty!16531 (tail!3816 (t!208568 (t!208568 lt!878228)))))))

(declare-fun b!2441544 () Bool)

(assert (=> b!2441544 (= e!1551196 (h!33894 (t!208568 (t!208568 lt!878228))))))

(declare-fun b!2441545 () Bool)

(assert (=> b!2441545 (= e!1551198 (isConcat!215 lt!878397))))

(declare-fun b!2441546 () Bool)

(assert (=> b!2441546 (= e!1551197 (Concat!11813 (h!33894 (t!208568 (t!208568 lt!878228))) (generalisedConcat!278 (t!208568 (t!208568 (t!208568 lt!878228))))))))

(declare-fun e!1551199 () Bool)

(assert (=> d!704997 e!1551199))

(declare-fun res!1036596 () Bool)

(assert (=> d!704997 (=> (not res!1036596) (not e!1551199))))

(assert (=> d!704997 (= res!1036596 (validRegex!2889 lt!878397))))

(assert (=> d!704997 (= lt!878397 e!1551196)))

(declare-fun c!389623 () Bool)

(assert (=> d!704997 (= c!389623 e!1551200)))

(declare-fun res!1036597 () Bool)

(assert (=> d!704997 (=> (not res!1036597) (not e!1551200))))

(assert (=> d!704997 (= res!1036597 ((_ is Cons!28493) (t!208568 (t!208568 lt!878228))))))

(assert (=> d!704997 (forall!5811 (t!208568 (t!208568 lt!878228)) lambda!92430)))

(assert (=> d!704997 (= (generalisedConcat!278 (t!208568 (t!208568 lt!878228))) lt!878397)))

(declare-fun b!2441547 () Bool)

(assert (=> b!2441547 (= e!1551201 (isEmptyExpr!215 lt!878397))))

(declare-fun b!2441548 () Bool)

(assert (=> b!2441548 (= e!1551199 e!1551201)))

(declare-fun c!389625 () Bool)

(assert (=> b!2441548 (= c!389625 (isEmpty!16531 (t!208568 (t!208568 lt!878228))))))

(assert (= (and d!704997 res!1036597) b!2441541))

(assert (= (and d!704997 c!389623) b!2441544))

(assert (= (and d!704997 (not c!389623)) b!2441540))

(assert (= (and b!2441540 c!389622) b!2441546))

(assert (= (and b!2441540 (not c!389622)) b!2441539))

(assert (= (and d!704997 res!1036596) b!2441548))

(assert (= (and b!2441548 c!389625) b!2441547))

(assert (= (and b!2441548 (not c!389625)) b!2441543))

(assert (= (and b!2441543 c!389624) b!2441542))

(assert (= (and b!2441543 (not c!389624)) b!2441545))

(declare-fun m!2819429 () Bool)

(assert (=> b!2441546 m!2819429))

(declare-fun m!2819431 () Bool)

(assert (=> b!2441543 m!2819431))

(assert (=> b!2441543 m!2819431))

(declare-fun m!2819433 () Bool)

(assert (=> b!2441543 m!2819433))

(declare-fun m!2819435 () Bool)

(assert (=> d!704997 m!2819435))

(declare-fun m!2819437 () Bool)

(assert (=> d!704997 m!2819437))

(assert (=> b!2441548 m!2819031))

(declare-fun m!2819439 () Bool)

(assert (=> b!2441545 m!2819439))

(declare-fun m!2819441 () Bool)

(assert (=> b!2441541 m!2819441))

(declare-fun m!2819443 () Bool)

(assert (=> b!2441542 m!2819443))

(declare-fun m!2819445 () Bool)

(assert (=> b!2441547 m!2819445))

(assert (=> b!2440961 d!704997))

(assert (=> b!2440851 d!704897))

(declare-fun bs!464991 () Bool)

(declare-fun b!2441559 () Bool)

(assert (= bs!464991 (and b!2441559 b!2441021)))

(declare-fun lambda!92431 () Int)

(assert (=> bs!464991 (= (and (= (reg!7506 (regOne!14867 (regTwo!14867 r!13927))) (reg!7506 (regTwo!14867 r!13927))) (= (regOne!14867 (regTwo!14867 r!13927)) (regTwo!14867 r!13927))) (= lambda!92431 lambda!92421))))

(declare-fun bs!464992 () Bool)

(assert (= bs!464992 (and b!2441559 b!2441079)))

(assert (=> bs!464992 (= (and (= (reg!7506 (regOne!14867 (regTwo!14867 r!13927))) (reg!7506 (regOne!14867 r!13927))) (= (regOne!14867 (regTwo!14867 r!13927)) (regOne!14867 r!13927))) (= lambda!92431 lambda!92426))))

(declare-fun bs!464993 () Bool)

(assert (= bs!464993 (and b!2441559 b!2440171)))

(assert (=> bs!464993 (not (= lambda!92431 lambda!92397))))

(declare-fun bs!464994 () Bool)

(assert (= bs!464994 (and b!2441559 b!2441467)))

(assert (=> bs!464994 (not (= lambda!92431 lambda!92429))))

(declare-fun bs!464995 () Bool)

(assert (= bs!464995 (and b!2441559 d!704523)))

(assert (=> bs!464995 (not (= lambda!92431 lambda!92391))))

(declare-fun bs!464996 () Bool)

(assert (= bs!464996 (and b!2441559 b!2441472)))

(assert (=> bs!464996 (= (and (= (reg!7506 (regOne!14867 (regTwo!14867 r!13927))) (reg!7506 (regTwo!14867 (regOne!14867 r!13927)))) (= (regOne!14867 (regTwo!14867 r!13927)) (regTwo!14867 (regOne!14867 r!13927)))) (= lambda!92431 lambda!92428))))

(declare-fun bs!464997 () Bool)

(assert (= bs!464997 (and b!2441559 d!704777)))

(assert (=> bs!464997 (not (= lambda!92431 lambda!92418))))

(declare-fun bs!464998 () Bool)

(assert (= bs!464998 (and b!2441559 b!2440176)))

(assert (=> bs!464998 (= (and (= (reg!7506 (regOne!14867 (regTwo!14867 r!13927))) (reg!7506 r!13927)) (= (regOne!14867 (regTwo!14867 r!13927)) r!13927)) (= lambda!92431 lambda!92396))))

(declare-fun bs!464999 () Bool)

(assert (= bs!464999 (and b!2441559 b!2441074)))

(assert (=> bs!464999 (not (= lambda!92431 lambda!92427))))

(declare-fun bs!465000 () Bool)

(assert (= bs!465000 (and b!2441559 d!704825)))

(assert (=> bs!465000 (not (= lambda!92431 lambda!92425))))

(assert (=> bs!464995 (not (= lambda!92431 lambda!92390))))

(declare-fun bs!465001 () Bool)

(assert (= bs!465001 (and b!2441559 b!2441016)))

(assert (=> bs!465001 (not (= lambda!92431 lambda!92422))))

(assert (=> bs!464997 (not (= lambda!92431 lambda!92419))))

(declare-fun bs!465002 () Bool)

(assert (= bs!465002 (and b!2441559 b!2439691)))

(assert (=> bs!465002 (not (= lambda!92431 lambda!92358))))

(assert (=> bs!465002 (not (= lambda!92431 lambda!92359))))

(declare-fun bs!465003 () Bool)

(assert (= bs!465003 (and b!2441559 d!704513)))

(assert (=> bs!465003 (not (= lambda!92431 lambda!92385))))

(assert (=> b!2441559 true))

(assert (=> b!2441559 true))

(declare-fun bs!465004 () Bool)

(declare-fun b!2441554 () Bool)

(assert (= bs!465004 (and b!2441554 b!2441559)))

(declare-fun lambda!92432 () Int)

(assert (=> bs!465004 (not (= lambda!92432 lambda!92431))))

(declare-fun bs!465005 () Bool)

(assert (= bs!465005 (and b!2441554 b!2441021)))

(assert (=> bs!465005 (not (= lambda!92432 lambda!92421))))

(declare-fun bs!465006 () Bool)

(assert (= bs!465006 (and b!2441554 b!2441079)))

(assert (=> bs!465006 (not (= lambda!92432 lambda!92426))))

(declare-fun bs!465007 () Bool)

(assert (= bs!465007 (and b!2441554 b!2440171)))

(assert (=> bs!465007 (= (and (= (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92432 lambda!92397))))

(declare-fun bs!465008 () Bool)

(assert (= bs!465008 (and b!2441554 b!2441467)))

(assert (=> bs!465008 (= (and (= (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))) (regOne!14866 (regTwo!14867 (regOne!14867 r!13927)))) (= (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))) (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))))) (= lambda!92432 lambda!92429))))

(declare-fun bs!465009 () Bool)

(assert (= bs!465009 (and b!2441554 d!704523)))

(assert (=> bs!465009 (= (and (= (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92432 lambda!92391))))

(declare-fun bs!465010 () Bool)

(assert (= bs!465010 (and b!2441554 b!2441472)))

(assert (=> bs!465010 (not (= lambda!92432 lambda!92428))))

(declare-fun bs!465011 () Bool)

(assert (= bs!465011 (and b!2441554 d!704777)))

(assert (=> bs!465011 (not (= lambda!92432 lambda!92418))))

(declare-fun bs!465012 () Bool)

(assert (= bs!465012 (and b!2441554 b!2440176)))

(assert (=> bs!465012 (not (= lambda!92432 lambda!92396))))

(declare-fun bs!465013 () Bool)

(assert (= bs!465013 (and b!2441554 b!2441074)))

(assert (=> bs!465013 (= (and (= (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))) (regOne!14866 (regOne!14867 r!13927))) (= (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))) (regTwo!14866 (regOne!14867 r!13927)))) (= lambda!92432 lambda!92427))))

(declare-fun bs!465014 () Bool)

(assert (= bs!465014 (and b!2441554 d!704825)))

(assert (=> bs!465014 (not (= lambda!92432 lambda!92425))))

(assert (=> bs!465009 (not (= lambda!92432 lambda!92390))))

(declare-fun bs!465015 () Bool)

(assert (= bs!465015 (and b!2441554 b!2441016)))

(assert (=> bs!465015 (= (and (= (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))) (regOne!14866 (regTwo!14867 r!13927))) (= (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))) (regTwo!14866 (regTwo!14867 r!13927)))) (= lambda!92432 lambda!92422))))

(assert (=> bs!465011 (= (and (= (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92432 lambda!92419))))

(declare-fun bs!465016 () Bool)

(assert (= bs!465016 (and b!2441554 b!2439691)))

(assert (=> bs!465016 (not (= lambda!92432 lambda!92358))))

(assert (=> bs!465016 (= (and (= (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92432 lambda!92359))))

(declare-fun bs!465017 () Bool)

(assert (= bs!465017 (and b!2441554 d!704513)))

(assert (=> bs!465017 (not (= lambda!92432 lambda!92385))))

(assert (=> b!2441554 true))

(assert (=> b!2441554 true))

(declare-fun bm!149593 () Bool)

(declare-fun call!149598 () Bool)

(assert (=> bm!149593 (= call!149598 (isEmpty!16534 s!9460))))

(declare-fun d!704999 () Bool)

(declare-fun c!389629 () Bool)

(assert (=> d!704999 (= c!389629 ((_ is EmptyExpr!7177) (regOne!14867 (regTwo!14867 r!13927))))))

(declare-fun e!1551207 () Bool)

(assert (=> d!704999 (= (matchRSpec!1024 (regOne!14867 (regTwo!14867 r!13927)) s!9460) e!1551207)))

(declare-fun b!2441549 () Bool)

(declare-fun res!1036598 () Bool)

(declare-fun e!1551205 () Bool)

(assert (=> b!2441549 (=> res!1036598 e!1551205)))

(assert (=> b!2441549 (= res!1036598 call!149598)))

(declare-fun e!1551202 () Bool)

(assert (=> b!2441549 (= e!1551202 e!1551205)))

(declare-fun b!2441550 () Bool)

(declare-fun e!1551203 () Bool)

(assert (=> b!2441550 (= e!1551203 (matchRSpec!1024 (regTwo!14867 (regOne!14867 (regTwo!14867 r!13927))) s!9460))))

(declare-fun b!2441551 () Bool)

(assert (=> b!2441551 (= e!1551207 call!149598)))

(declare-fun b!2441552 () Bool)

(declare-fun e!1551204 () Bool)

(assert (=> b!2441552 (= e!1551204 e!1551202)))

(declare-fun c!389627 () Bool)

(assert (=> b!2441552 (= c!389627 ((_ is Star!7177) (regOne!14867 (regTwo!14867 r!13927))))))

(declare-fun b!2441553 () Bool)

(declare-fun e!1551206 () Bool)

(assert (=> b!2441553 (= e!1551206 (= s!9460 (Cons!28492 (c!389219 (regOne!14867 (regTwo!14867 r!13927))) Nil!28492)))))

(declare-fun call!149599 () Bool)

(declare-fun bm!149594 () Bool)

(assert (=> bm!149594 (= call!149599 (Exists!1213 (ite c!389627 lambda!92431 lambda!92432)))))

(assert (=> b!2441554 (= e!1551202 call!149599)))

(declare-fun b!2441555 () Bool)

(assert (=> b!2441555 (= e!1551204 e!1551203)))

(declare-fun res!1036600 () Bool)

(assert (=> b!2441555 (= res!1036600 (matchRSpec!1024 (regOne!14867 (regOne!14867 (regTwo!14867 r!13927))) s!9460))))

(assert (=> b!2441555 (=> res!1036600 e!1551203)))

(declare-fun b!2441556 () Bool)

(declare-fun e!1551208 () Bool)

(assert (=> b!2441556 (= e!1551207 e!1551208)))

(declare-fun res!1036599 () Bool)

(assert (=> b!2441556 (= res!1036599 (not ((_ is EmptyLang!7177) (regOne!14867 (regTwo!14867 r!13927)))))))

(assert (=> b!2441556 (=> (not res!1036599) (not e!1551208))))

(declare-fun b!2441557 () Bool)

(declare-fun c!389628 () Bool)

(assert (=> b!2441557 (= c!389628 ((_ is Union!7177) (regOne!14867 (regTwo!14867 r!13927))))))

(assert (=> b!2441557 (= e!1551206 e!1551204)))

(declare-fun b!2441558 () Bool)

(declare-fun c!389626 () Bool)

(assert (=> b!2441558 (= c!389626 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14867 r!13927))))))

(assert (=> b!2441558 (= e!1551208 e!1551206)))

(assert (=> b!2441559 (= e!1551205 call!149599)))

(assert (= (and d!704999 c!389629) b!2441551))

(assert (= (and d!704999 (not c!389629)) b!2441556))

(assert (= (and b!2441556 res!1036599) b!2441558))

(assert (= (and b!2441558 c!389626) b!2441553))

(assert (= (and b!2441558 (not c!389626)) b!2441557))

(assert (= (and b!2441557 c!389628) b!2441555))

(assert (= (and b!2441557 (not c!389628)) b!2441552))

(assert (= (and b!2441555 (not res!1036600)) b!2441550))

(assert (= (and b!2441552 c!389627) b!2441549))

(assert (= (and b!2441552 (not c!389627)) b!2441554))

(assert (= (and b!2441549 (not res!1036598)) b!2441559))

(assert (= (or b!2441559 b!2441554) bm!149594))

(assert (= (or b!2441551 b!2441549) bm!149593))

(assert (=> bm!149593 m!2818203))

(declare-fun m!2819447 () Bool)

(assert (=> b!2441550 m!2819447))

(declare-fun m!2819449 () Bool)

(assert (=> bm!149594 m!2819449))

(declare-fun m!2819451 () Bool)

(assert (=> b!2441555 m!2819451))

(assert (=> b!2441017 d!704999))

(assert (=> b!2441121 d!704923))

(declare-fun b!2441560 () Bool)

(declare-fun e!1551215 () Bool)

(declare-fun e!1551210 () Bool)

(assert (=> b!2441560 (= e!1551215 e!1551210)))

(declare-fun c!389631 () Bool)

(assert (=> b!2441560 (= c!389631 ((_ is Star!7177) (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241)))))))

(declare-fun c!389630 () Bool)

(declare-fun call!149601 () Bool)

(declare-fun bm!149595 () Bool)

(assert (=> bm!149595 (= call!149601 (validRegex!2889 (ite c!389630 (regOne!14867 (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241)))) (regTwo!14866 (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241)))))))))

(declare-fun b!2441561 () Bool)

(declare-fun e!1551209 () Bool)

(assert (=> b!2441561 (= e!1551210 e!1551209)))

(declare-fun res!1036604 () Bool)

(assert (=> b!2441561 (= res!1036604 (not (nullable!2198 (reg!7506 (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241)))))))))

(assert (=> b!2441561 (=> (not res!1036604) (not e!1551209))))

(declare-fun d!705001 () Bool)

(declare-fun res!1036605 () Bool)

(assert (=> d!705001 (=> res!1036605 e!1551215)))

(assert (=> d!705001 (= res!1036605 ((_ is ElementMatch!7177) (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241)))))))

(assert (=> d!705001 (= (validRegex!2889 (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241)))) e!1551215)))

(declare-fun b!2441562 () Bool)

(declare-fun e!1551213 () Bool)

(assert (=> b!2441562 (= e!1551213 call!149601)))

(declare-fun b!2441563 () Bool)

(declare-fun e!1551212 () Bool)

(declare-fun call!149602 () Bool)

(assert (=> b!2441563 (= e!1551212 call!149602)))

(declare-fun b!2441564 () Bool)

(declare-fun res!1036602 () Bool)

(declare-fun e!1551211 () Bool)

(assert (=> b!2441564 (=> res!1036602 e!1551211)))

(assert (=> b!2441564 (= res!1036602 (not ((_ is Concat!11813) (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241))))))))

(declare-fun e!1551214 () Bool)

(assert (=> b!2441564 (= e!1551214 e!1551211)))

(declare-fun b!2441565 () Bool)

(declare-fun res!1036601 () Bool)

(assert (=> b!2441565 (=> (not res!1036601) (not e!1551212))))

(assert (=> b!2441565 (= res!1036601 call!149601)))

(assert (=> b!2441565 (= e!1551214 e!1551212)))

(declare-fun b!2441566 () Bool)

(assert (=> b!2441566 (= e!1551210 e!1551214)))

(assert (=> b!2441566 (= c!389630 ((_ is Union!7177) (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241)))))))

(declare-fun b!2441567 () Bool)

(assert (=> b!2441567 (= e!1551211 e!1551213)))

(declare-fun res!1036603 () Bool)

(assert (=> b!2441567 (=> (not res!1036603) (not e!1551213))))

(assert (=> b!2441567 (= res!1036603 call!149602)))

(declare-fun b!2441568 () Bool)

(declare-fun call!149600 () Bool)

(assert (=> b!2441568 (= e!1551209 call!149600)))

(declare-fun bm!149596 () Bool)

(assert (=> bm!149596 (= call!149602 call!149600)))

(declare-fun bm!149597 () Bool)

(assert (=> bm!149597 (= call!149600 (validRegex!2889 (ite c!389631 (reg!7506 (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241)))) (ite c!389630 (regTwo!14867 (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241)))) (regOne!14866 (ite c!389517 (reg!7506 lt!878241) (ite c!389516 (regTwo!14867 lt!878241) (regOne!14866 lt!878241))))))))))

(assert (= (and d!705001 (not res!1036605)) b!2441560))

(assert (= (and b!2441560 c!389631) b!2441561))

(assert (= (and b!2441560 (not c!389631)) b!2441566))

(assert (= (and b!2441561 res!1036604) b!2441568))

(assert (= (and b!2441566 c!389630) b!2441565))

(assert (= (and b!2441566 (not c!389630)) b!2441564))

(assert (= (and b!2441565 res!1036601) b!2441563))

(assert (= (and b!2441564 (not res!1036602)) b!2441567))

(assert (= (and b!2441567 res!1036603) b!2441562))

(assert (= (or b!2441565 b!2441562) bm!149595))

(assert (= (or b!2441563 b!2441567) bm!149596))

(assert (= (or b!2441568 bm!149596) bm!149597))

(declare-fun m!2819453 () Bool)

(assert (=> bm!149595 m!2819453))

(declare-fun m!2819455 () Bool)

(assert (=> b!2441561 m!2819455))

(declare-fun m!2819457 () Bool)

(assert (=> bm!149597 m!2819457))

(assert (=> bm!149520 d!705001))

(assert (=> b!2441088 d!704911))

(declare-fun d!705003 () Bool)

(assert (=> d!705003 (= (isDefined!4492 lt!878352) (not (isEmpty!16535 lt!878352)))))

(declare-fun bs!465018 () Bool)

(assert (= bs!465018 d!705003))

(declare-fun m!2819459 () Bool)

(assert (=> bs!465018 m!2819459))

(assert (=> b!2440865 d!705003))

(assert (=> b!2441153 d!704919))

(assert (=> b!2441153 d!704921))

(declare-fun d!705005 () Bool)

(assert (=> d!705005 (= (head!5543 (t!208568 l!9164)) (h!33894 (t!208568 l!9164)))))

(assert (=> b!2440777 d!705005))

(declare-fun d!705007 () Bool)

(assert (=> d!705007 (= (nullable!2198 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (nullableFct!534 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun bs!465019 () Bool)

(assert (= bs!465019 d!705007))

(assert (=> bs!465019 m!2818243))

(declare-fun m!2819461 () Bool)

(assert (=> bs!465019 m!2819461))

(assert (=> b!2440880 d!705007))

(assert (=> bm!149521 d!704741))

(declare-fun d!705009 () Bool)

(declare-fun c!389632 () Bool)

(assert (=> d!705009 (= c!389632 ((_ is Nil!28492) lt!878348))))

(declare-fun e!1551216 () (InoxSet C!14512))

(assert (=> d!705009 (= (content!3924 lt!878348) e!1551216)))

(declare-fun b!2441569 () Bool)

(assert (=> b!2441569 (= e!1551216 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441570 () Bool)

(assert (=> b!2441570 (= e!1551216 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 lt!878348) true) (content!3924 (t!208567 lt!878348))))))

(assert (= (and d!705009 c!389632) b!2441569))

(assert (= (and d!705009 (not c!389632)) b!2441570))

(declare-fun m!2819463 () Bool)

(assert (=> b!2441570 m!2819463))

(declare-fun m!2819465 () Bool)

(assert (=> b!2441570 m!2819465))

(assert (=> d!704749 d!705009))

(declare-fun d!705011 () Bool)

(assert (=> d!705011 (= (content!3924 Nil!28492) ((as const (Array C!14512 Bool)) false))))

(assert (=> d!704749 d!705011))

(declare-fun d!705013 () Bool)

(declare-fun c!389633 () Bool)

(assert (=> d!705013 (= c!389633 ((_ is Nil!28492) (Cons!28492 (h!33893 s!9460) Nil!28492)))))

(declare-fun e!1551217 () (InoxSet C!14512))

(assert (=> d!705013 (= (content!3924 (Cons!28492 (h!33893 s!9460) Nil!28492)) e!1551217)))

(declare-fun b!2441571 () Bool)

(assert (=> b!2441571 (= e!1551217 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441572 () Bool)

(assert (=> b!2441572 (= e!1551217 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (Cons!28492 (h!33893 s!9460) Nil!28492)) true) (content!3924 (t!208567 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(assert (= (and d!705013 c!389633) b!2441571))

(assert (= (and d!705013 (not c!389633)) b!2441572))

(declare-fun m!2819467 () Bool)

(assert (=> b!2441572 m!2819467))

(declare-fun m!2819469 () Bool)

(assert (=> b!2441572 m!2819469))

(assert (=> d!704749 d!705013))

(assert (=> d!704753 d!705003))

(declare-fun b!2441573 () Bool)

(declare-fun e!1551221 () Bool)

(declare-fun lt!878398 () Bool)

(declare-fun call!149603 () Bool)

(assert (=> b!2441573 (= e!1551221 (= lt!878398 call!149603))))

(declare-fun d!705015 () Bool)

(assert (=> d!705015 e!1551221))

(declare-fun c!389636 () Bool)

(assert (=> d!705015 (= c!389636 ((_ is EmptyExpr!7177) (regOne!14866 r!13927)))))

(declare-fun e!1551219 () Bool)

(assert (=> d!705015 (= lt!878398 e!1551219)))

(declare-fun c!389634 () Bool)

(assert (=> d!705015 (= c!389634 (isEmpty!16534 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(assert (=> d!705015 (validRegex!2889 (regOne!14866 r!13927))))

(assert (=> d!705015 (= (matchR!3292 (regOne!14866 r!13927) (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) lt!878398)))

(declare-fun b!2441574 () Bool)

(declare-fun e!1551223 () Bool)

(assert (=> b!2441574 (= e!1551221 e!1551223)))

(declare-fun c!389635 () Bool)

(assert (=> b!2441574 (= c!389635 ((_ is EmptyLang!7177) (regOne!14866 r!13927)))))

(declare-fun b!2441575 () Bool)

(declare-fun res!1036608 () Bool)

(declare-fun e!1551218 () Bool)

(assert (=> b!2441575 (=> res!1036608 e!1551218)))

(declare-fun e!1551222 () Bool)

(assert (=> b!2441575 (= res!1036608 e!1551222)))

(declare-fun res!1036611 () Bool)

(assert (=> b!2441575 (=> (not res!1036611) (not e!1551222))))

(assert (=> b!2441575 (= res!1036611 lt!878398)))

(declare-fun b!2441576 () Bool)

(assert (=> b!2441576 (= e!1551223 (not lt!878398))))

(declare-fun b!2441577 () Bool)

(declare-fun e!1551224 () Bool)

(assert (=> b!2441577 (= e!1551218 e!1551224)))

(declare-fun res!1036613 () Bool)

(assert (=> b!2441577 (=> (not res!1036613) (not e!1551224))))

(assert (=> b!2441577 (= res!1036613 (not lt!878398))))

(declare-fun b!2441578 () Bool)

(declare-fun res!1036610 () Bool)

(assert (=> b!2441578 (=> (not res!1036610) (not e!1551222))))

(assert (=> b!2441578 (= res!1036610 (isEmpty!16534 (tail!3818 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(declare-fun b!2441579 () Bool)

(declare-fun e!1551220 () Bool)

(assert (=> b!2441579 (= e!1551224 e!1551220)))

(declare-fun res!1036607 () Bool)

(assert (=> b!2441579 (=> res!1036607 e!1551220)))

(assert (=> b!2441579 (= res!1036607 call!149603)))

(declare-fun b!2441580 () Bool)

(assert (=> b!2441580 (= e!1551219 (nullable!2198 (regOne!14866 r!13927)))))

(declare-fun b!2441581 () Bool)

(assert (=> b!2441581 (= e!1551222 (= (head!5545 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (c!389219 (regOne!14866 r!13927))))))

(declare-fun b!2441582 () Bool)

(declare-fun res!1036612 () Bool)

(assert (=> b!2441582 (=> (not res!1036612) (not e!1551222))))

(assert (=> b!2441582 (= res!1036612 (not call!149603))))

(declare-fun bm!149598 () Bool)

(assert (=> bm!149598 (= call!149603 (isEmpty!16534 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(declare-fun b!2441583 () Bool)

(declare-fun res!1036606 () Bool)

(assert (=> b!2441583 (=> res!1036606 e!1551220)))

(assert (=> b!2441583 (= res!1036606 (not (isEmpty!16534 (tail!3818 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))))

(declare-fun b!2441584 () Bool)

(assert (=> b!2441584 (= e!1551219 (matchR!3292 (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))) (tail!3818 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(declare-fun b!2441585 () Bool)

(declare-fun res!1036609 () Bool)

(assert (=> b!2441585 (=> res!1036609 e!1551218)))

(assert (=> b!2441585 (= res!1036609 (not ((_ is ElementMatch!7177) (regOne!14866 r!13927))))))

(assert (=> b!2441585 (= e!1551223 e!1551218)))

(declare-fun b!2441586 () Bool)

(assert (=> b!2441586 (= e!1551220 (not (= (head!5545 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (c!389219 (regOne!14866 r!13927)))))))

(assert (= (and d!705015 c!389634) b!2441580))

(assert (= (and d!705015 (not c!389634)) b!2441584))

(assert (= (and d!705015 c!389636) b!2441573))

(assert (= (and d!705015 (not c!389636)) b!2441574))

(assert (= (and b!2441574 c!389635) b!2441576))

(assert (= (and b!2441574 (not c!389635)) b!2441585))

(assert (= (and b!2441585 (not res!1036609)) b!2441575))

(assert (= (and b!2441575 res!1036611) b!2441582))

(assert (= (and b!2441582 res!1036612) b!2441578))

(assert (= (and b!2441578 res!1036610) b!2441581))

(assert (= (and b!2441575 (not res!1036608)) b!2441577))

(assert (= (and b!2441577 res!1036613) b!2441579))

(assert (= (and b!2441579 (not res!1036607)) b!2441583))

(assert (= (and b!2441583 (not res!1036606)) b!2441586))

(assert (= (or b!2441573 b!2441582 b!2441579) bm!149598))

(assert (=> b!2441583 m!2818373))

(declare-fun m!2819471 () Bool)

(assert (=> b!2441583 m!2819471))

(assert (=> b!2441583 m!2819471))

(declare-fun m!2819473 () Bool)

(assert (=> b!2441583 m!2819473))

(assert (=> b!2441586 m!2818373))

(declare-fun m!2819475 () Bool)

(assert (=> b!2441586 m!2819475))

(assert (=> b!2441578 m!2818373))

(assert (=> b!2441578 m!2819471))

(assert (=> b!2441578 m!2819471))

(assert (=> b!2441578 m!2819473))

(assert (=> d!705015 m!2818373))

(declare-fun m!2819477 () Bool)

(assert (=> d!705015 m!2819477))

(assert (=> d!705015 m!2818351))

(assert (=> bm!149598 m!2818373))

(assert (=> bm!149598 m!2819477))

(assert (=> b!2441580 m!2819087))

(assert (=> b!2441581 m!2818373))

(assert (=> b!2441581 m!2819475))

(assert (=> b!2441584 m!2818373))

(assert (=> b!2441584 m!2819475))

(assert (=> b!2441584 m!2819475))

(declare-fun m!2819479 () Bool)

(assert (=> b!2441584 m!2819479))

(assert (=> b!2441584 m!2818373))

(assert (=> b!2441584 m!2819471))

(assert (=> b!2441584 m!2819479))

(assert (=> b!2441584 m!2819471))

(declare-fun m!2819481 () Bool)

(assert (=> b!2441584 m!2819481))

(assert (=> d!704753 d!705015))

(assert (=> d!704753 d!704779))

(declare-fun d!705017 () Bool)

(assert (=> d!705017 (= (nullable!2198 (reg!7506 lt!878260)) (nullableFct!534 (reg!7506 lt!878260)))))

(declare-fun bs!465020 () Bool)

(assert (= bs!465020 d!705017))

(declare-fun m!2819483 () Bool)

(assert (=> bs!465020 m!2819483))

(assert (=> b!2440918 d!705017))

(declare-fun d!705019 () Bool)

(assert (=> d!705019 (= (nullable!2198 (derivativeStep!1852 lt!878222 (head!5545 s!9460))) (nullableFct!534 (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(declare-fun bs!465021 () Bool)

(assert (= bs!465021 d!705019))

(assert (=> bs!465021 m!2818209))

(declare-fun m!2819485 () Bool)

(assert (=> bs!465021 m!2819485))

(assert (=> b!2440985 d!705019))

(declare-fun d!705021 () Bool)

(declare-fun lt!878399 () Int)

(assert (=> d!705021 (>= lt!878399 0)))

(declare-fun e!1551225 () Int)

(assert (=> d!705021 (= lt!878399 e!1551225)))

(declare-fun c!389637 () Bool)

(assert (=> d!705021 (= c!389637 ((_ is Nil!28492) lt!878364))))

(assert (=> d!705021 (= (size!22262 lt!878364) lt!878399)))

(declare-fun b!2441587 () Bool)

(assert (=> b!2441587 (= e!1551225 0)))

(declare-fun b!2441588 () Bool)

(assert (=> b!2441588 (= e!1551225 (+ 1 (size!22262 (t!208567 lt!878364))))))

(assert (= (and d!705021 c!389637) b!2441587))

(assert (= (and d!705021 (not c!389637)) b!2441588))

(declare-fun m!2819487 () Bool)

(assert (=> b!2441588 m!2819487))

(assert (=> b!2441049 d!705021))

(declare-fun d!705023 () Bool)

(declare-fun lt!878400 () Int)

(assert (=> d!705023 (>= lt!878400 0)))

(declare-fun e!1551226 () Int)

(assert (=> d!705023 (= lt!878400 e!1551226)))

(declare-fun c!389638 () Bool)

(assert (=> d!705023 (= c!389638 ((_ is Nil!28492) (_1!16596 (get!8795 lt!878295))))))

(assert (=> d!705023 (= (size!22262 (_1!16596 (get!8795 lt!878295))) lt!878400)))

(declare-fun b!2441589 () Bool)

(assert (=> b!2441589 (= e!1551226 0)))

(declare-fun b!2441590 () Bool)

(assert (=> b!2441590 (= e!1551226 (+ 1 (size!22262 (t!208567 (_1!16596 (get!8795 lt!878295))))))))

(assert (= (and d!705023 c!389638) b!2441589))

(assert (= (and d!705023 (not c!389638)) b!2441590))

(assert (=> b!2441590 m!2819231))

(assert (=> b!2441049 d!705023))

(declare-fun d!705025 () Bool)

(declare-fun lt!878401 () Int)

(assert (=> d!705025 (>= lt!878401 0)))

(declare-fun e!1551227 () Int)

(assert (=> d!705025 (= lt!878401 e!1551227)))

(declare-fun c!389639 () Bool)

(assert (=> d!705025 (= c!389639 ((_ is Nil!28492) (_2!16596 (get!8795 lt!878295))))))

(assert (=> d!705025 (= (size!22262 (_2!16596 (get!8795 lt!878295))) lt!878401)))

(declare-fun b!2441591 () Bool)

(assert (=> b!2441591 (= e!1551227 0)))

(declare-fun b!2441592 () Bool)

(assert (=> b!2441592 (= e!1551227 (+ 1 (size!22262 (t!208567 (_2!16596 (get!8795 lt!878295))))))))

(assert (= (and d!705025 c!389639) b!2441591))

(assert (= (and d!705025 (not c!389639)) b!2441592))

(declare-fun m!2819489 () Bool)

(assert (=> b!2441592 m!2819489))

(assert (=> b!2441049 d!705025))

(assert (=> bm!149506 d!704741))

(declare-fun d!705027 () Bool)

(assert (=> d!705027 (= (nullable!2198 (reg!7506 lt!878241)) (nullableFct!534 (reg!7506 lt!878241)))))

(declare-fun bs!465022 () Bool)

(assert (= bs!465022 d!705027))

(declare-fun m!2819491 () Bool)

(assert (=> bs!465022 m!2819491))

(assert (=> b!2441037 d!705027))

(declare-fun b!2441593 () Bool)

(declare-fun e!1551234 () Bool)

(declare-fun e!1551229 () Bool)

(assert (=> b!2441593 (= e!1551234 e!1551229)))

(declare-fun c!389641 () Bool)

(assert (=> b!2441593 (= c!389641 ((_ is Star!7177) lt!878342))))

(declare-fun bm!149599 () Bool)

(declare-fun call!149605 () Bool)

(declare-fun c!389640 () Bool)

(assert (=> bm!149599 (= call!149605 (validRegex!2889 (ite c!389640 (regOne!14867 lt!878342) (regTwo!14866 lt!878342))))))

(declare-fun b!2441594 () Bool)

(declare-fun e!1551228 () Bool)

(assert (=> b!2441594 (= e!1551229 e!1551228)))

(declare-fun res!1036617 () Bool)

(assert (=> b!2441594 (= res!1036617 (not (nullable!2198 (reg!7506 lt!878342))))))

(assert (=> b!2441594 (=> (not res!1036617) (not e!1551228))))

(declare-fun d!705029 () Bool)

(declare-fun res!1036618 () Bool)

(assert (=> d!705029 (=> res!1036618 e!1551234)))

(assert (=> d!705029 (= res!1036618 ((_ is ElementMatch!7177) lt!878342))))

(assert (=> d!705029 (= (validRegex!2889 lt!878342) e!1551234)))

(declare-fun b!2441595 () Bool)

(declare-fun e!1551232 () Bool)

(assert (=> b!2441595 (= e!1551232 call!149605)))

(declare-fun b!2441596 () Bool)

(declare-fun e!1551231 () Bool)

(declare-fun call!149606 () Bool)

(assert (=> b!2441596 (= e!1551231 call!149606)))

(declare-fun b!2441597 () Bool)

(declare-fun res!1036615 () Bool)

(declare-fun e!1551230 () Bool)

(assert (=> b!2441597 (=> res!1036615 e!1551230)))

(assert (=> b!2441597 (= res!1036615 (not ((_ is Concat!11813) lt!878342)))))

(declare-fun e!1551233 () Bool)

(assert (=> b!2441597 (= e!1551233 e!1551230)))

(declare-fun b!2441598 () Bool)

(declare-fun res!1036614 () Bool)

(assert (=> b!2441598 (=> (not res!1036614) (not e!1551231))))

(assert (=> b!2441598 (= res!1036614 call!149605)))

(assert (=> b!2441598 (= e!1551233 e!1551231)))

(declare-fun b!2441599 () Bool)

(assert (=> b!2441599 (= e!1551229 e!1551233)))

(assert (=> b!2441599 (= c!389640 ((_ is Union!7177) lt!878342))))

(declare-fun b!2441600 () Bool)

(assert (=> b!2441600 (= e!1551230 e!1551232)))

(declare-fun res!1036616 () Bool)

(assert (=> b!2441600 (=> (not res!1036616) (not e!1551232))))

(assert (=> b!2441600 (= res!1036616 call!149606)))

(declare-fun b!2441601 () Bool)

(declare-fun call!149604 () Bool)

(assert (=> b!2441601 (= e!1551228 call!149604)))

(declare-fun bm!149600 () Bool)

(assert (=> bm!149600 (= call!149606 call!149604)))

(declare-fun bm!149601 () Bool)

(assert (=> bm!149601 (= call!149604 (validRegex!2889 (ite c!389641 (reg!7506 lt!878342) (ite c!389640 (regTwo!14867 lt!878342) (regOne!14866 lt!878342)))))))

(assert (= (and d!705029 (not res!1036618)) b!2441593))

(assert (= (and b!2441593 c!389641) b!2441594))

(assert (= (and b!2441593 (not c!389641)) b!2441599))

(assert (= (and b!2441594 res!1036617) b!2441601))

(assert (= (and b!2441599 c!389640) b!2441598))

(assert (= (and b!2441599 (not c!389640)) b!2441597))

(assert (= (and b!2441598 res!1036614) b!2441596))

(assert (= (and b!2441597 (not res!1036615)) b!2441600))

(assert (= (and b!2441600 res!1036616) b!2441595))

(assert (= (or b!2441598 b!2441595) bm!149599))

(assert (= (or b!2441596 b!2441600) bm!149600))

(assert (= (or b!2441601 bm!149600) bm!149601))

(declare-fun m!2819493 () Bool)

(assert (=> bm!149599 m!2819493))

(declare-fun m!2819495 () Bool)

(assert (=> b!2441594 m!2819495))

(declare-fun m!2819497 () Bool)

(assert (=> bm!149601 m!2819497))

(assert (=> d!704715 d!705029))

(declare-fun d!705031 () Bool)

(declare-fun res!1036619 () Bool)

(declare-fun e!1551235 () Bool)

(assert (=> d!705031 (=> res!1036619 e!1551235)))

(assert (=> d!705031 (= res!1036619 ((_ is Nil!28493) (t!208568 l!9164)))))

(assert (=> d!705031 (= (forall!5811 (t!208568 l!9164) lambda!92413) e!1551235)))

(declare-fun b!2441602 () Bool)

(declare-fun e!1551236 () Bool)

(assert (=> b!2441602 (= e!1551235 e!1551236)))

(declare-fun res!1036620 () Bool)

(assert (=> b!2441602 (=> (not res!1036620) (not e!1551236))))

(assert (=> b!2441602 (= res!1036620 (dynLambda!12256 lambda!92413 (h!33894 (t!208568 l!9164))))))

(declare-fun b!2441603 () Bool)

(assert (=> b!2441603 (= e!1551236 (forall!5811 (t!208568 (t!208568 l!9164)) lambda!92413))))

(assert (= (and d!705031 (not res!1036619)) b!2441602))

(assert (= (and b!2441602 res!1036620) b!2441603))

(declare-fun b_lambda!74955 () Bool)

(assert (=> (not b_lambda!74955) (not b!2441602)))

(declare-fun m!2819499 () Bool)

(assert (=> b!2441602 m!2819499))

(declare-fun m!2819501 () Bool)

(assert (=> b!2441603 m!2819501))

(assert (=> d!704715 d!705031))

(assert (=> b!2440843 d!704943))

(assert (=> b!2440843 d!704899))

(declare-fun b!2441604 () Bool)

(declare-fun e!1551243 () Bool)

(declare-fun e!1551238 () Bool)

(assert (=> b!2441604 (= e!1551243 e!1551238)))

(declare-fun c!389643 () Bool)

(assert (=> b!2441604 (= c!389643 ((_ is Star!7177) (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222)))))))

(declare-fun c!389642 () Bool)

(declare-fun bm!149602 () Bool)

(declare-fun call!149608 () Bool)

(assert (=> bm!149602 (= call!149608 (validRegex!2889 (ite c!389642 (regOne!14867 (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222)))) (regTwo!14866 (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222)))))))))

(declare-fun b!2441605 () Bool)

(declare-fun e!1551237 () Bool)

(assert (=> b!2441605 (= e!1551238 e!1551237)))

(declare-fun res!1036624 () Bool)

(assert (=> b!2441605 (= res!1036624 (not (nullable!2198 (reg!7506 (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222)))))))))

(assert (=> b!2441605 (=> (not res!1036624) (not e!1551237))))

(declare-fun d!705033 () Bool)

(declare-fun res!1036625 () Bool)

(assert (=> d!705033 (=> res!1036625 e!1551243)))

(assert (=> d!705033 (= res!1036625 ((_ is ElementMatch!7177) (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222)))))))

(assert (=> d!705033 (= (validRegex!2889 (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222)))) e!1551243)))

(declare-fun b!2441606 () Bool)

(declare-fun e!1551241 () Bool)

(assert (=> b!2441606 (= e!1551241 call!149608)))

(declare-fun b!2441607 () Bool)

(declare-fun e!1551240 () Bool)

(declare-fun call!149609 () Bool)

(assert (=> b!2441607 (= e!1551240 call!149609)))

(declare-fun b!2441608 () Bool)

(declare-fun res!1036622 () Bool)

(declare-fun e!1551239 () Bool)

(assert (=> b!2441608 (=> res!1036622 e!1551239)))

(assert (=> b!2441608 (= res!1036622 (not ((_ is Concat!11813) (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222))))))))

(declare-fun e!1551242 () Bool)

(assert (=> b!2441608 (= e!1551242 e!1551239)))

(declare-fun b!2441609 () Bool)

(declare-fun res!1036621 () Bool)

(assert (=> b!2441609 (=> (not res!1036621) (not e!1551240))))

(assert (=> b!2441609 (= res!1036621 call!149608)))

(assert (=> b!2441609 (= e!1551242 e!1551240)))

(declare-fun b!2441610 () Bool)

(assert (=> b!2441610 (= e!1551238 e!1551242)))

(assert (=> b!2441610 (= c!389642 ((_ is Union!7177) (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222)))))))

(declare-fun b!2441611 () Bool)

(assert (=> b!2441611 (= e!1551239 e!1551241)))

(declare-fun res!1036623 () Bool)

(assert (=> b!2441611 (=> (not res!1036623) (not e!1551241))))

(assert (=> b!2441611 (= res!1036623 call!149609)))

(declare-fun b!2441612 () Bool)

(declare-fun call!149607 () Bool)

(assert (=> b!2441612 (= e!1551237 call!149607)))

(declare-fun bm!149603 () Bool)

(assert (=> bm!149603 (= call!149609 call!149607)))

(declare-fun bm!149604 () Bool)

(assert (=> bm!149604 (= call!149607 (validRegex!2889 (ite c!389643 (reg!7506 (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222)))) (ite c!389642 (regTwo!14867 (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222)))) (regOne!14866 (ite c!389458 (reg!7506 lt!878222) (ite c!389457 (regTwo!14867 lt!878222) (regOne!14866 lt!878222))))))))))

(assert (= (and d!705033 (not res!1036625)) b!2441604))

(assert (= (and b!2441604 c!389643) b!2441605))

(assert (= (and b!2441604 (not c!389643)) b!2441610))

(assert (= (and b!2441605 res!1036624) b!2441612))

(assert (= (and b!2441610 c!389642) b!2441609))

(assert (= (and b!2441610 (not c!389642)) b!2441608))

(assert (= (and b!2441609 res!1036621) b!2441607))

(assert (= (and b!2441608 (not res!1036622)) b!2441611))

(assert (= (and b!2441611 res!1036623) b!2441606))

(assert (= (or b!2441609 b!2441606) bm!149602))

(assert (= (or b!2441607 b!2441611) bm!149603))

(assert (= (or b!2441612 bm!149603) bm!149604))

(declare-fun m!2819503 () Bool)

(assert (=> bm!149602 m!2819503))

(declare-fun m!2819505 () Bool)

(assert (=> b!2441605 m!2819505))

(declare-fun m!2819507 () Bool)

(assert (=> bm!149604 m!2819507))

(assert (=> bm!149482 d!705033))

(declare-fun d!705035 () Bool)

(assert (=> d!705035 (= (isEmpty!16534 Nil!28492) true)))

(assert (=> bm!149517 d!705035))

(declare-fun d!705037 () Bool)

(declare-fun lt!878402 () Int)

(assert (=> d!705037 (>= lt!878402 0)))

(declare-fun e!1551244 () Int)

(assert (=> d!705037 (= lt!878402 e!1551244)))

(declare-fun c!389644 () Bool)

(assert (=> d!705037 (= c!389644 ((_ is Nil!28492) lt!878347))))

(assert (=> d!705037 (= (size!22262 lt!878347) lt!878402)))

(declare-fun b!2441613 () Bool)

(assert (=> b!2441613 (= e!1551244 0)))

(declare-fun b!2441614 () Bool)

(assert (=> b!2441614 (= e!1551244 (+ 1 (size!22262 (t!208567 lt!878347))))))

(assert (= (and d!705037 c!389644) b!2441613))

(assert (= (and d!705037 (not c!389644)) b!2441614))

(declare-fun m!2819509 () Bool)

(assert (=> b!2441614 m!2819509))

(assert (=> b!2440858 d!705037))

(declare-fun d!705039 () Bool)

(declare-fun lt!878403 () Int)

(assert (=> d!705039 (>= lt!878403 0)))

(declare-fun e!1551245 () Int)

(assert (=> d!705039 (= lt!878403 e!1551245)))

(declare-fun c!389645 () Bool)

(assert (=> d!705039 (= c!389645 ((_ is Nil!28492) (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(assert (=> d!705039 (= (size!22262 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) lt!878403)))

(declare-fun b!2441615 () Bool)

(assert (=> b!2441615 (= e!1551245 0)))

(declare-fun b!2441616 () Bool)

(assert (=> b!2441616 (= e!1551245 (+ 1 (size!22262 (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))))

(assert (= (and d!705039 c!389645) b!2441615))

(assert (= (and d!705039 (not c!389645)) b!2441616))

(assert (=> b!2441616 m!2819221))

(assert (=> b!2440858 d!705039))

(declare-fun d!705041 () Bool)

(declare-fun lt!878404 () Int)

(assert (=> d!705041 (>= lt!878404 0)))

(declare-fun e!1551246 () Int)

(assert (=> d!705041 (= lt!878404 e!1551246)))

(declare-fun c!389646 () Bool)

(assert (=> d!705041 (= c!389646 ((_ is Nil!28492) (t!208567 s!9460)))))

(assert (=> d!705041 (= (size!22262 (t!208567 s!9460)) lt!878404)))

(declare-fun b!2441617 () Bool)

(assert (=> b!2441617 (= e!1551246 0)))

(declare-fun b!2441618 () Bool)

(assert (=> b!2441618 (= e!1551246 (+ 1 (size!22262 (t!208567 (t!208567 s!9460)))))))

(assert (= (and d!705041 c!389646) b!2441617))

(assert (= (and d!705041 (not c!389646)) b!2441618))

(declare-fun m!2819511 () Bool)

(assert (=> b!2441618 m!2819511))

(assert (=> b!2440858 d!705041))

(declare-fun d!705043 () Bool)

(assert (not d!705043))

(assert (=> b!2440861 d!705043))

(declare-fun d!705045 () Bool)

(assert (=> d!705045 (= (isConcat!215 lt!878359) ((_ is Concat!11813) lt!878359))))

(assert (=> b!2440960 d!705045))

(assert (=> b!2441160 d!704903))

(declare-fun b!2441619 () Bool)

(declare-fun e!1551248 () List!28590)

(assert (=> b!2441619 (= e!1551248 (t!208567 (t!208567 s!9460)))))

(declare-fun d!705047 () Bool)

(declare-fun e!1551247 () Bool)

(assert (=> d!705047 e!1551247))

(declare-fun res!1036626 () Bool)

(assert (=> d!705047 (=> (not res!1036626) (not e!1551247))))

(declare-fun lt!878405 () List!28590)

(assert (=> d!705047 (= res!1036626 (= (content!3924 lt!878405) ((_ map or) (content!3924 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492))) (content!3924 (t!208567 (t!208567 s!9460))))))))

(assert (=> d!705047 (= lt!878405 e!1551248)))

(declare-fun c!389647 () Bool)

(assert (=> d!705047 (= c!389647 ((_ is Nil!28492) (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492))))))

(assert (=> d!705047 (= (++!7080 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (t!208567 (t!208567 s!9460))) lt!878405)))

(declare-fun b!2441622 () Bool)

(assert (=> b!2441622 (= e!1551247 (or (not (= (t!208567 (t!208567 s!9460)) Nil!28492)) (= lt!878405 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)))))))

(declare-fun b!2441621 () Bool)

(declare-fun res!1036627 () Bool)

(assert (=> b!2441621 (=> (not res!1036627) (not e!1551247))))

(assert (=> b!2441621 (= res!1036627 (= (size!22262 lt!878405) (+ (size!22262 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492))) (size!22262 (t!208567 (t!208567 s!9460))))))))

(declare-fun b!2441620 () Bool)

(assert (=> b!2441620 (= e!1551248 (Cons!28492 (h!33893 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492))) (++!7080 (t!208567 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492))) (t!208567 (t!208567 s!9460)))))))

(assert (= (and d!705047 c!389647) b!2441619))

(assert (= (and d!705047 (not c!389647)) b!2441620))

(assert (= (and d!705047 res!1036626) b!2441621))

(assert (= (and b!2441621 res!1036627) b!2441622))

(declare-fun m!2819513 () Bool)

(assert (=> d!705047 m!2819513))

(assert (=> d!705047 m!2818953))

(declare-fun m!2819515 () Bool)

(assert (=> d!705047 m!2819515))

(declare-fun m!2819517 () Bool)

(assert (=> d!705047 m!2819517))

(declare-fun m!2819519 () Bool)

(assert (=> b!2441621 m!2819519))

(assert (=> b!2441621 m!2818953))

(declare-fun m!2819521 () Bool)

(assert (=> b!2441621 m!2819521))

(assert (=> b!2441621 m!2819511))

(declare-fun m!2819523 () Bool)

(assert (=> b!2441620 m!2819523))

(assert (=> b!2441099 d!705047))

(declare-fun b!2441623 () Bool)

(declare-fun e!1551250 () List!28590)

(assert (=> b!2441623 (= e!1551250 (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492))))

(declare-fun d!705049 () Bool)

(declare-fun e!1551249 () Bool)

(assert (=> d!705049 e!1551249))

(declare-fun res!1036628 () Bool)

(assert (=> d!705049 (=> (not res!1036628) (not e!1551249))))

(declare-fun lt!878406 () List!28590)

(assert (=> d!705049 (= res!1036628 (= (content!3924 lt!878406) ((_ map or) (content!3924 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (content!3924 (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)))))))

(assert (=> d!705049 (= lt!878406 e!1551250)))

(declare-fun c!389648 () Bool)

(assert (=> d!705049 (= c!389648 ((_ is Nil!28492) (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(assert (=> d!705049 (= (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) lt!878406)))

(declare-fun b!2441626 () Bool)

(assert (=> b!2441626 (= e!1551249 (or (not (= (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492) Nil!28492)) (= lt!878406 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(declare-fun b!2441625 () Bool)

(declare-fun res!1036629 () Bool)

(assert (=> b!2441625 (=> (not res!1036629) (not e!1551249))))

(assert (=> b!2441625 (= res!1036629 (= (size!22262 lt!878406) (+ (size!22262 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (size!22262 (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)))))))

(declare-fun b!2441624 () Bool)

(assert (=> b!2441624 (= e!1551250 (Cons!28492 (h!33893 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (++!7080 (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492))))))

(assert (= (and d!705049 c!389648) b!2441623))

(assert (= (and d!705049 (not c!389648)) b!2441624))

(assert (= (and d!705049 res!1036628) b!2441625))

(assert (= (and b!2441625 res!1036629) b!2441626))

(declare-fun m!2819525 () Bool)

(assert (=> d!705049 m!2819525))

(assert (=> d!705049 m!2818373))

(assert (=> d!705049 m!2818913))

(declare-fun m!2819527 () Bool)

(assert (=> d!705049 m!2819527))

(declare-fun m!2819529 () Bool)

(assert (=> b!2441625 m!2819529))

(assert (=> b!2441625 m!2818373))

(assert (=> b!2441625 m!2818919))

(declare-fun m!2819531 () Bool)

(assert (=> b!2441625 m!2819531))

(declare-fun m!2819533 () Bool)

(assert (=> b!2441624 m!2819533))

(assert (=> b!2441099 d!705049))

(declare-fun d!705051 () Bool)

(assert (=> d!705051 (= (++!7080 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (t!208567 (t!208567 s!9460))) s!9460)))

(declare-fun lt!878407 () Unit!41737)

(assert (=> d!705051 (= lt!878407 (choose!14485 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (h!33893 (t!208567 s!9460)) (t!208567 (t!208567 s!9460)) s!9460))))

(assert (=> d!705051 (= (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) (t!208567 (t!208567 s!9460)))) s!9460)))

(assert (=> d!705051 (= (lemmaMoveElementToOtherListKeepsConcatEq!699 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (h!33893 (t!208567 s!9460)) (t!208567 (t!208567 s!9460)) s!9460) lt!878407)))

(declare-fun bs!465023 () Bool)

(assert (= bs!465023 d!705051))

(assert (=> bs!465023 m!2818373))

(assert (=> bs!465023 m!2818953))

(assert (=> bs!465023 m!2818953))

(assert (=> bs!465023 m!2818955))

(assert (=> bs!465023 m!2818373))

(declare-fun m!2819535 () Bool)

(assert (=> bs!465023 m!2819535))

(assert (=> bs!465023 m!2818373))

(declare-fun m!2819537 () Bool)

(assert (=> bs!465023 m!2819537))

(assert (=> b!2441099 d!705051))

(declare-fun b!2441627 () Bool)

(declare-fun e!1551254 () Bool)

(declare-fun lt!878408 () Option!5666)

(assert (=> b!2441627 (= e!1551254 (= (++!7080 (_1!16596 (get!8795 lt!878408)) (_2!16596 (get!8795 lt!878408))) s!9460))))

(declare-fun b!2441628 () Bool)

(declare-fun e!1551253 () Bool)

(assert (=> b!2441628 (= e!1551253 (not (isDefined!4492 lt!878408)))))

(declare-fun d!705053 () Bool)

(assert (=> d!705053 e!1551253))

(declare-fun res!1036633 () Bool)

(assert (=> d!705053 (=> res!1036633 e!1551253)))

(assert (=> d!705053 (= res!1036633 e!1551254)))

(declare-fun res!1036634 () Bool)

(assert (=> d!705053 (=> (not res!1036634) (not e!1551254))))

(assert (=> d!705053 (= res!1036634 (isDefined!4492 lt!878408))))

(declare-fun e!1551251 () Option!5666)

(assert (=> d!705053 (= lt!878408 e!1551251)))

(declare-fun c!389649 () Bool)

(declare-fun e!1551252 () Bool)

(assert (=> d!705053 (= c!389649 e!1551252)))

(declare-fun res!1036630 () Bool)

(assert (=> d!705053 (=> (not res!1036630) (not e!1551252))))

(assert (=> d!705053 (= res!1036630 (matchR!3292 lt!878222 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492))))))

(assert (=> d!705053 (validRegex!2889 lt!878222)))

(assert (=> d!705053 (= (findConcatSeparation!774 lt!878222 EmptyExpr!7177 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (t!208567 (t!208567 s!9460)) s!9460) lt!878408)))

(declare-fun b!2441629 () Bool)

(declare-fun res!1036632 () Bool)

(assert (=> b!2441629 (=> (not res!1036632) (not e!1551254))))

(assert (=> b!2441629 (= res!1036632 (matchR!3292 EmptyExpr!7177 (_2!16596 (get!8795 lt!878408))))))

(declare-fun b!2441630 () Bool)

(assert (=> b!2441630 (= e!1551252 (matchR!3292 EmptyExpr!7177 (t!208567 (t!208567 s!9460))))))

(declare-fun b!2441631 () Bool)

(declare-fun res!1036631 () Bool)

(assert (=> b!2441631 (=> (not res!1036631) (not e!1551254))))

(assert (=> b!2441631 (= res!1036631 (matchR!3292 lt!878222 (_1!16596 (get!8795 lt!878408))))))

(declare-fun b!2441632 () Bool)

(declare-fun lt!878409 () Unit!41737)

(declare-fun lt!878410 () Unit!41737)

(assert (=> b!2441632 (= lt!878409 lt!878410)))

(assert (=> b!2441632 (= (++!7080 (++!7080 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (Cons!28492 (h!33893 (t!208567 (t!208567 s!9460))) Nil!28492)) (t!208567 (t!208567 (t!208567 s!9460)))) s!9460)))

(assert (=> b!2441632 (= lt!878410 (lemmaMoveElementToOtherListKeepsConcatEq!699 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (h!33893 (t!208567 (t!208567 s!9460))) (t!208567 (t!208567 (t!208567 s!9460))) s!9460))))

(declare-fun e!1551255 () Option!5666)

(assert (=> b!2441632 (= e!1551255 (findConcatSeparation!774 lt!878222 EmptyExpr!7177 (++!7080 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (Cons!28492 (h!33893 (t!208567 (t!208567 s!9460))) Nil!28492)) (t!208567 (t!208567 (t!208567 s!9460))) s!9460))))

(declare-fun b!2441633 () Bool)

(assert (=> b!2441633 (= e!1551251 e!1551255)))

(declare-fun c!389650 () Bool)

(assert (=> b!2441633 (= c!389650 ((_ is Nil!28492) (t!208567 (t!208567 s!9460))))))

(declare-fun b!2441634 () Bool)

(assert (=> b!2441634 (= e!1551255 None!5665)))

(declare-fun b!2441635 () Bool)

(assert (=> b!2441635 (= e!1551251 (Some!5665 (tuple2!28111 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (t!208567 (t!208567 s!9460)))))))

(assert (= (and d!705053 res!1036630) b!2441630))

(assert (= (and d!705053 c!389649) b!2441635))

(assert (= (and d!705053 (not c!389649)) b!2441633))

(assert (= (and b!2441633 c!389650) b!2441634))

(assert (= (and b!2441633 (not c!389650)) b!2441632))

(assert (= (and d!705053 res!1036634) b!2441631))

(assert (= (and b!2441631 res!1036631) b!2441629))

(assert (= (and b!2441629 res!1036632) b!2441627))

(assert (= (and d!705053 (not res!1036633)) b!2441628))

(declare-fun m!2819539 () Bool)

(assert (=> b!2441628 m!2819539))

(declare-fun m!2819541 () Bool)

(assert (=> b!2441631 m!2819541))

(declare-fun m!2819543 () Bool)

(assert (=> b!2441631 m!2819543))

(assert (=> d!705053 m!2819539))

(assert (=> d!705053 m!2818953))

(declare-fun m!2819545 () Bool)

(assert (=> d!705053 m!2819545))

(assert (=> d!705053 m!2818205))

(assert (=> b!2441629 m!2819541))

(declare-fun m!2819547 () Bool)

(assert (=> b!2441629 m!2819547))

(assert (=> b!2441632 m!2818953))

(declare-fun m!2819549 () Bool)

(assert (=> b!2441632 m!2819549))

(assert (=> b!2441632 m!2819549))

(declare-fun m!2819551 () Bool)

(assert (=> b!2441632 m!2819551))

(assert (=> b!2441632 m!2818953))

(declare-fun m!2819553 () Bool)

(assert (=> b!2441632 m!2819553))

(assert (=> b!2441632 m!2819549))

(declare-fun m!2819555 () Bool)

(assert (=> b!2441632 m!2819555))

(assert (=> b!2441627 m!2819541))

(declare-fun m!2819557 () Bool)

(assert (=> b!2441627 m!2819557))

(declare-fun m!2819559 () Bool)

(assert (=> b!2441630 m!2819559))

(assert (=> b!2441099 d!705053))

(assert (=> d!704729 d!704489))

(assert (=> d!704729 d!704491))

(declare-fun d!705055 () Bool)

(assert (=> d!705055 (= (nullable!2198 (regTwo!14866 r!13927)) (nullableFct!534 (regTwo!14866 r!13927)))))

(declare-fun bs!465024 () Bool)

(assert (= bs!465024 d!705055))

(declare-fun m!2819561 () Bool)

(assert (=> bs!465024 m!2819561))

(assert (=> b!2441087 d!705055))

(declare-fun d!705057 () Bool)

(assert (=> d!705057 (= (isEmpty!16535 lt!878295) (not ((_ is Some!5665) lt!878295)))))

(assert (=> d!704733 d!705057))

(assert (=> b!2441120 d!704815))

(assert (=> b!2441135 d!704961))

(declare-fun d!705059 () Bool)

(declare-fun c!389651 () Bool)

(assert (=> d!705059 (= c!389651 ((_ is Nil!28492) lt!878347))))

(declare-fun e!1551256 () (InoxSet C!14512))

(assert (=> d!705059 (= (content!3924 lt!878347) e!1551256)))

(declare-fun b!2441636 () Bool)

(assert (=> b!2441636 (= e!1551256 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441637 () Bool)

(assert (=> b!2441637 (= e!1551256 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 lt!878347) true) (content!3924 (t!208567 lt!878347))))))

(assert (= (and d!705059 c!389651) b!2441636))

(assert (= (and d!705059 (not c!389651)) b!2441637))

(declare-fun m!2819563 () Bool)

(assert (=> b!2441637 m!2819563))

(declare-fun m!2819565 () Bool)

(assert (=> b!2441637 m!2819565))

(assert (=> d!704747 d!705059))

(declare-fun d!705061 () Bool)

(declare-fun c!389652 () Bool)

(assert (=> d!705061 (= c!389652 ((_ is Nil!28492) (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(declare-fun e!1551257 () (InoxSet C!14512))

(assert (=> d!705061 (= (content!3924 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) e!1551257)))

(declare-fun b!2441638 () Bool)

(assert (=> b!2441638 (= e!1551257 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441639 () Bool)

(assert (=> b!2441639 (= e!1551257 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) true) (content!3924 (t!208567 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))))

(assert (= (and d!705061 c!389652) b!2441638))

(assert (= (and d!705061 (not c!389652)) b!2441639))

(declare-fun m!2819567 () Bool)

(assert (=> b!2441639 m!2819567))

(assert (=> b!2441639 m!2819217))

(assert (=> d!704747 d!705061))

(declare-fun d!705063 () Bool)

(declare-fun c!389653 () Bool)

(assert (=> d!705063 (= c!389653 ((_ is Nil!28492) (t!208567 s!9460)))))

(declare-fun e!1551258 () (InoxSet C!14512))

(assert (=> d!705063 (= (content!3924 (t!208567 s!9460)) e!1551258)))

(declare-fun b!2441640 () Bool)

(assert (=> b!2441640 (= e!1551258 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441641 () Bool)

(assert (=> b!2441641 (= e!1551258 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (t!208567 s!9460)) true) (content!3924 (t!208567 (t!208567 s!9460)))))))

(assert (= (and d!705063 c!389653) b!2441640))

(assert (= (and d!705063 (not c!389653)) b!2441641))

(declare-fun m!2819569 () Bool)

(assert (=> b!2441641 m!2819569))

(assert (=> b!2441641 m!2819517))

(assert (=> d!704747 d!705063))

(declare-fun b!2441642 () Bool)

(declare-fun e!1551265 () Bool)

(declare-fun e!1551260 () Bool)

(assert (=> b!2441642 (= e!1551265 e!1551260)))

(declare-fun c!389655 () Bool)

(assert (=> b!2441642 (= c!389655 ((_ is Star!7177) (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun bm!149605 () Bool)

(declare-fun call!149611 () Bool)

(declare-fun c!389654 () Bool)

(assert (=> bm!149605 (= call!149611 (validRegex!2889 (ite c!389654 (regOne!14867 (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (regTwo!14866 (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))))

(declare-fun b!2441643 () Bool)

(declare-fun e!1551259 () Bool)

(assert (=> b!2441643 (= e!1551260 e!1551259)))

(declare-fun res!1036638 () Bool)

(assert (=> b!2441643 (= res!1036638 (not (nullable!2198 (reg!7506 (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))))

(assert (=> b!2441643 (=> (not res!1036638) (not e!1551259))))

(declare-fun d!705065 () Bool)

(declare-fun res!1036639 () Bool)

(assert (=> d!705065 (=> res!1036639 e!1551265)))

(assert (=> d!705065 (= res!1036639 ((_ is ElementMatch!7177) (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(assert (=> d!705065 (= (validRegex!2889 (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) e!1551265)))

(declare-fun b!2441644 () Bool)

(declare-fun e!1551263 () Bool)

(assert (=> b!2441644 (= e!1551263 call!149611)))

(declare-fun b!2441645 () Bool)

(declare-fun e!1551262 () Bool)

(declare-fun call!149612 () Bool)

(assert (=> b!2441645 (= e!1551262 call!149612)))

(declare-fun b!2441646 () Bool)

(declare-fun res!1036636 () Bool)

(declare-fun e!1551261 () Bool)

(assert (=> b!2441646 (=> res!1036636 e!1551261)))

(assert (=> b!2441646 (= res!1036636 (not ((_ is Concat!11813) (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))))

(declare-fun e!1551264 () Bool)

(assert (=> b!2441646 (= e!1551264 e!1551261)))

(declare-fun b!2441647 () Bool)

(declare-fun res!1036635 () Bool)

(assert (=> b!2441647 (=> (not res!1036635) (not e!1551262))))

(assert (=> b!2441647 (= res!1036635 call!149611)))

(assert (=> b!2441647 (= e!1551264 e!1551262)))

(declare-fun b!2441648 () Bool)

(assert (=> b!2441648 (= e!1551260 e!1551264)))

(assert (=> b!2441648 (= c!389654 ((_ is Union!7177) (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun b!2441649 () Bool)

(assert (=> b!2441649 (= e!1551261 e!1551263)))

(declare-fun res!1036637 () Bool)

(assert (=> b!2441649 (=> (not res!1036637) (not e!1551263))))

(assert (=> b!2441649 (= res!1036637 call!149612)))

(declare-fun b!2441650 () Bool)

(declare-fun call!149610 () Bool)

(assert (=> b!2441650 (= e!1551259 call!149610)))

(declare-fun bm!149606 () Bool)

(assert (=> bm!149606 (= call!149612 call!149610)))

(declare-fun bm!149607 () Bool)

(assert (=> bm!149607 (= call!149610 (validRegex!2889 (ite c!389655 (reg!7506 (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (ite c!389654 (regTwo!14867 (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (regOne!14866 (ite c!389453 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389452 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))))))

(assert (= (and d!705065 (not res!1036639)) b!2441642))

(assert (= (and b!2441642 c!389655) b!2441643))

(assert (= (and b!2441642 (not c!389655)) b!2441648))

(assert (= (and b!2441643 res!1036638) b!2441650))

(assert (= (and b!2441648 c!389654) b!2441647))

(assert (= (and b!2441648 (not c!389654)) b!2441646))

(assert (= (and b!2441647 res!1036635) b!2441645))

(assert (= (and b!2441646 (not res!1036636)) b!2441649))

(assert (= (and b!2441649 res!1036637) b!2441644))

(assert (= (or b!2441647 b!2441644) bm!149605))

(assert (= (or b!2441645 b!2441649) bm!149606))

(assert (= (or b!2441650 bm!149606) bm!149607))

(declare-fun m!2819571 () Bool)

(assert (=> bm!149605 m!2819571))

(declare-fun m!2819573 () Bool)

(assert (=> b!2441643 m!2819573))

(declare-fun m!2819575 () Bool)

(assert (=> bm!149607 m!2819575))

(assert (=> bm!149478 d!705065))

(declare-fun b!2441651 () Bool)

(declare-fun e!1551267 () List!28590)

(assert (=> b!2441651 (= e!1551267 (_2!16596 (get!8795 lt!878352)))))

(declare-fun d!705067 () Bool)

(declare-fun e!1551266 () Bool)

(assert (=> d!705067 e!1551266))

(declare-fun res!1036640 () Bool)

(assert (=> d!705067 (=> (not res!1036640) (not e!1551266))))

(declare-fun lt!878411 () List!28590)

(assert (=> d!705067 (= res!1036640 (= (content!3924 lt!878411) ((_ map or) (content!3924 (_1!16596 (get!8795 lt!878352))) (content!3924 (_2!16596 (get!8795 lt!878352))))))))

(assert (=> d!705067 (= lt!878411 e!1551267)))

(declare-fun c!389656 () Bool)

(assert (=> d!705067 (= c!389656 ((_ is Nil!28492) (_1!16596 (get!8795 lt!878352))))))

(assert (=> d!705067 (= (++!7080 (_1!16596 (get!8795 lt!878352)) (_2!16596 (get!8795 lt!878352))) lt!878411)))

(declare-fun b!2441654 () Bool)

(assert (=> b!2441654 (= e!1551266 (or (not (= (_2!16596 (get!8795 lt!878352)) Nil!28492)) (= lt!878411 (_1!16596 (get!8795 lt!878352)))))))

(declare-fun b!2441653 () Bool)

(declare-fun res!1036641 () Bool)

(assert (=> b!2441653 (=> (not res!1036641) (not e!1551266))))

(assert (=> b!2441653 (= res!1036641 (= (size!22262 lt!878411) (+ (size!22262 (_1!16596 (get!8795 lt!878352))) (size!22262 (_2!16596 (get!8795 lt!878352))))))))

(declare-fun b!2441652 () Bool)

(assert (=> b!2441652 (= e!1551267 (Cons!28492 (h!33893 (_1!16596 (get!8795 lt!878352))) (++!7080 (t!208567 (_1!16596 (get!8795 lt!878352))) (_2!16596 (get!8795 lt!878352)))))))

(assert (= (and d!705067 c!389656) b!2441651))

(assert (= (and d!705067 (not c!389656)) b!2441652))

(assert (= (and d!705067 res!1036640) b!2441653))

(assert (= (and b!2441653 res!1036641) b!2441654))

(declare-fun m!2819577 () Bool)

(assert (=> d!705067 m!2819577))

(declare-fun m!2819579 () Bool)

(assert (=> d!705067 m!2819579))

(declare-fun m!2819581 () Bool)

(assert (=> d!705067 m!2819581))

(declare-fun m!2819583 () Bool)

(assert (=> b!2441653 m!2819583))

(declare-fun m!2819585 () Bool)

(assert (=> b!2441653 m!2819585))

(declare-fun m!2819587 () Bool)

(assert (=> b!2441653 m!2819587))

(declare-fun m!2819589 () Bool)

(assert (=> b!2441652 m!2819589))

(assert (=> b!2440864 d!705067))

(declare-fun d!705069 () Bool)

(assert (=> d!705069 (= (get!8795 lt!878352) (v!31073 lt!878352))))

(assert (=> b!2440864 d!705069))

(declare-fun d!705071 () Bool)

(declare-fun c!389657 () Bool)

(assert (=> d!705071 (= c!389657 ((_ is Nil!28492) lt!878364))))

(declare-fun e!1551268 () (InoxSet C!14512))

(assert (=> d!705071 (= (content!3924 lt!878364) e!1551268)))

(declare-fun b!2441655 () Bool)

(assert (=> b!2441655 (= e!1551268 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441656 () Bool)

(assert (=> b!2441656 (= e!1551268 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 lt!878364) true) (content!3924 (t!208567 lt!878364))))))

(assert (= (and d!705071 c!389657) b!2441655))

(assert (= (and d!705071 (not c!389657)) b!2441656))

(declare-fun m!2819591 () Bool)

(assert (=> b!2441656 m!2819591))

(declare-fun m!2819593 () Bool)

(assert (=> b!2441656 m!2819593))

(assert (=> d!704811 d!705071))

(declare-fun d!705073 () Bool)

(declare-fun c!389658 () Bool)

(assert (=> d!705073 (= c!389658 ((_ is Nil!28492) (_1!16596 (get!8795 lt!878295))))))

(declare-fun e!1551269 () (InoxSet C!14512))

(assert (=> d!705073 (= (content!3924 (_1!16596 (get!8795 lt!878295))) e!1551269)))

(declare-fun b!2441657 () Bool)

(assert (=> b!2441657 (= e!1551269 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441658 () Bool)

(assert (=> b!2441658 (= e!1551269 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (_1!16596 (get!8795 lt!878295))) true) (content!3924 (t!208567 (_1!16596 (get!8795 lt!878295))))))))

(assert (= (and d!705073 c!389658) b!2441657))

(assert (= (and d!705073 (not c!389658)) b!2441658))

(declare-fun m!2819595 () Bool)

(assert (=> b!2441658 m!2819595))

(assert (=> b!2441658 m!2819227))

(assert (=> d!704811 d!705073))

(declare-fun d!705075 () Bool)

(declare-fun c!389659 () Bool)

(assert (=> d!705075 (= c!389659 ((_ is Nil!28492) (_2!16596 (get!8795 lt!878295))))))

(declare-fun e!1551270 () (InoxSet C!14512))

(assert (=> d!705075 (= (content!3924 (_2!16596 (get!8795 lt!878295))) e!1551270)))

(declare-fun b!2441659 () Bool)

(assert (=> b!2441659 (= e!1551270 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441660 () Bool)

(assert (=> b!2441660 (= e!1551270 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (_2!16596 (get!8795 lt!878295))) true) (content!3924 (t!208567 (_2!16596 (get!8795 lt!878295))))))))

(assert (= (and d!705075 c!389659) b!2441659))

(assert (= (and d!705075 (not c!389659)) b!2441660))

(declare-fun m!2819597 () Bool)

(assert (=> b!2441660 m!2819597))

(declare-fun m!2819599 () Bool)

(assert (=> b!2441660 m!2819599))

(assert (=> d!704811 d!705075))

(declare-fun d!705077 () Bool)

(assert (=> d!705077 (= (head!5545 (_2!16596 (get!8795 lt!878298))) (h!33893 (_2!16596 (get!8795 lt!878298))))))

(assert (=> b!2440819 d!705077))

(assert (=> bm!149527 d!704791))

(declare-fun d!705079 () Bool)

(assert (=> d!705079 (= (nullable!2198 (reg!7506 lt!878222)) (nullableFct!534 (reg!7506 lt!878222)))))

(declare-fun bs!465025 () Bool)

(assert (= bs!465025 d!705079))

(declare-fun m!2819601 () Bool)

(assert (=> bs!465025 m!2819601))

(assert (=> b!2440826 d!705079))

(declare-fun d!705081 () Bool)

(assert (=> d!705081 true))

(assert (=> d!705081 true))

(declare-fun res!1036642 () Bool)

(assert (=> d!705081 (= (choose!14482 lambda!92391) res!1036642)))

(assert (=> d!704775 d!705081))

(declare-fun d!705083 () Bool)

(declare-fun c!389660 () Bool)

(assert (=> d!705083 (= c!389660 ((_ is Nil!28492) (t!208567 lt!878269)))))

(declare-fun e!1551271 () (InoxSet C!14512))

(assert (=> d!705083 (= (content!3924 (t!208567 lt!878269)) e!1551271)))

(declare-fun b!2441661 () Bool)

(assert (=> b!2441661 (= e!1551271 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441662 () Bool)

(assert (=> b!2441662 (= e!1551271 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (t!208567 lt!878269)) true) (content!3924 (t!208567 (t!208567 lt!878269)))))))

(assert (= (and d!705083 c!389660) b!2441661))

(assert (= (and d!705083 (not c!389660)) b!2441662))

(declare-fun m!2819603 () Bool)

(assert (=> b!2441662 m!2819603))

(declare-fun m!2819605 () Bool)

(assert (=> b!2441662 m!2819605))

(assert (=> b!2440769 d!705083))

(declare-fun d!705085 () Bool)

(assert (=> d!705085 (= (isEmpty!16534 (_1!16596 (get!8795 lt!878298))) ((_ is Nil!28492) (_1!16596 (get!8795 lt!878298))))))

(assert (=> d!704737 d!705085))

(assert (=> d!704737 d!704731))

(declare-fun d!705087 () Bool)

(assert (=> d!705087 (= (isEmpty!16531 (t!208568 (t!208568 l!9164))) ((_ is Nil!28493) (t!208568 (t!208568 l!9164))))))

(assert (=> b!2440776 d!705087))

(declare-fun d!705089 () Bool)

(assert (=> d!705089 (= (isConcat!215 lt!878342) ((_ is Concat!11813) lt!878342))))

(assert (=> b!2440780 d!705089))

(assert (=> bm!149484 d!704809))

(assert (=> b!2441027 d!704951))

(assert (=> b!2441027 d!704953))

(assert (=> b!2440969 d!704791))

(assert (=> b!2440969 d!704789))

(declare-fun b!2441663 () Bool)

(declare-fun e!1551273 () List!28590)

(assert (=> b!2441663 (= e!1551273 (_2!16596 (get!8795 lt!878367)))))

(declare-fun d!705091 () Bool)

(declare-fun e!1551272 () Bool)

(assert (=> d!705091 e!1551272))

(declare-fun res!1036643 () Bool)

(assert (=> d!705091 (=> (not res!1036643) (not e!1551272))))

(declare-fun lt!878412 () List!28590)

(assert (=> d!705091 (= res!1036643 (= (content!3924 lt!878412) ((_ map or) (content!3924 (_1!16596 (get!8795 lt!878367))) (content!3924 (_2!16596 (get!8795 lt!878367))))))))

(assert (=> d!705091 (= lt!878412 e!1551273)))

(declare-fun c!389661 () Bool)

(assert (=> d!705091 (= c!389661 ((_ is Nil!28492) (_1!16596 (get!8795 lt!878367))))))

(assert (=> d!705091 (= (++!7080 (_1!16596 (get!8795 lt!878367)) (_2!16596 (get!8795 lt!878367))) lt!878412)))

(declare-fun b!2441666 () Bool)

(assert (=> b!2441666 (= e!1551272 (or (not (= (_2!16596 (get!8795 lt!878367)) Nil!28492)) (= lt!878412 (_1!16596 (get!8795 lt!878367)))))))

(declare-fun b!2441665 () Bool)

(declare-fun res!1036644 () Bool)

(assert (=> b!2441665 (=> (not res!1036644) (not e!1551272))))

(assert (=> b!2441665 (= res!1036644 (= (size!22262 lt!878412) (+ (size!22262 (_1!16596 (get!8795 lt!878367))) (size!22262 (_2!16596 (get!8795 lt!878367))))))))

(declare-fun b!2441664 () Bool)

(assert (=> b!2441664 (= e!1551273 (Cons!28492 (h!33893 (_1!16596 (get!8795 lt!878367))) (++!7080 (t!208567 (_1!16596 (get!8795 lt!878367))) (_2!16596 (get!8795 lt!878367)))))))

(assert (= (and d!705091 c!389661) b!2441663))

(assert (= (and d!705091 (not c!389661)) b!2441664))

(assert (= (and d!705091 res!1036643) b!2441665))

(assert (= (and b!2441665 res!1036644) b!2441666))

(declare-fun m!2819607 () Bool)

(assert (=> d!705091 m!2819607))

(declare-fun m!2819609 () Bool)

(assert (=> d!705091 m!2819609))

(declare-fun m!2819611 () Bool)

(assert (=> d!705091 m!2819611))

(declare-fun m!2819613 () Bool)

(assert (=> b!2441665 m!2819613))

(declare-fun m!2819615 () Bool)

(assert (=> b!2441665 m!2819615))

(declare-fun m!2819617 () Bool)

(assert (=> b!2441665 m!2819617))

(declare-fun m!2819619 () Bool)

(assert (=> b!2441664 m!2819619))

(assert (=> b!2441094 d!705091))

(assert (=> b!2441094 d!704887))

(declare-fun b!2441667 () Bool)

(declare-fun e!1551280 () Bool)

(declare-fun e!1551275 () Bool)

(assert (=> b!2441667 (= e!1551280 e!1551275)))

(declare-fun c!389663 () Bool)

(assert (=> b!2441667 (= c!389663 ((_ is Star!7177) (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927)))))))

(declare-fun bm!149608 () Bool)

(declare-fun c!389662 () Bool)

(declare-fun call!149614 () Bool)

(assert (=> bm!149608 (= call!149614 (validRegex!2889 (ite c!389662 (regOne!14867 (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927)))) (regTwo!14866 (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927)))))))))

(declare-fun b!2441668 () Bool)

(declare-fun e!1551274 () Bool)

(assert (=> b!2441668 (= e!1551275 e!1551274)))

(declare-fun res!1036648 () Bool)

(assert (=> b!2441668 (= res!1036648 (not (nullable!2198 (reg!7506 (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927)))))))))

(assert (=> b!2441668 (=> (not res!1036648) (not e!1551274))))

(declare-fun d!705093 () Bool)

(declare-fun res!1036649 () Bool)

(assert (=> d!705093 (=> res!1036649 e!1551280)))

(assert (=> d!705093 (= res!1036649 ((_ is ElementMatch!7177) (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927)))))))

(assert (=> d!705093 (= (validRegex!2889 (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927)))) e!1551280)))

(declare-fun b!2441669 () Bool)

(declare-fun e!1551278 () Bool)

(assert (=> b!2441669 (= e!1551278 call!149614)))

(declare-fun b!2441670 () Bool)

(declare-fun e!1551277 () Bool)

(declare-fun call!149615 () Bool)

(assert (=> b!2441670 (= e!1551277 call!149615)))

(declare-fun b!2441671 () Bool)

(declare-fun res!1036646 () Bool)

(declare-fun e!1551276 () Bool)

(assert (=> b!2441671 (=> res!1036646 e!1551276)))

(assert (=> b!2441671 (= res!1036646 (not ((_ is Concat!11813) (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927))))))))

(declare-fun e!1551279 () Bool)

(assert (=> b!2441671 (= e!1551279 e!1551276)))

(declare-fun b!2441672 () Bool)

(declare-fun res!1036645 () Bool)

(assert (=> b!2441672 (=> (not res!1036645) (not e!1551277))))

(assert (=> b!2441672 (= res!1036645 call!149614)))

(assert (=> b!2441672 (= e!1551279 e!1551277)))

(declare-fun b!2441673 () Bool)

(assert (=> b!2441673 (= e!1551275 e!1551279)))

(assert (=> b!2441673 (= c!389662 ((_ is Union!7177) (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927)))))))

(declare-fun b!2441674 () Bool)

(assert (=> b!2441674 (= e!1551276 e!1551278)))

(declare-fun res!1036647 () Bool)

(assert (=> b!2441674 (=> (not res!1036647) (not e!1551278))))

(assert (=> b!2441674 (= res!1036647 call!149615)))

(declare-fun b!2441675 () Bool)

(declare-fun call!149613 () Bool)

(assert (=> b!2441675 (= e!1551274 call!149613)))

(declare-fun bm!149609 () Bool)

(assert (=> bm!149609 (= call!149615 call!149613)))

(declare-fun bm!149610 () Bool)

(assert (=> bm!149610 (= call!149613 (validRegex!2889 (ite c!389663 (reg!7506 (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927)))) (ite c!389662 (regTwo!14867 (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927)))) (regOne!14866 (ite c!389489 (reg!7506 r!13927) (ite c!389488 (regTwo!14867 r!13927) (regOne!14866 r!13927))))))))))

(assert (= (and d!705093 (not res!1036649)) b!2441667))

(assert (= (and b!2441667 c!389663) b!2441668))

(assert (= (and b!2441667 (not c!389663)) b!2441673))

(assert (= (and b!2441668 res!1036648) b!2441675))

(assert (= (and b!2441673 c!389662) b!2441672))

(assert (= (and b!2441673 (not c!389662)) b!2441671))

(assert (= (and b!2441672 res!1036645) b!2441670))

(assert (= (and b!2441671 (not res!1036646)) b!2441674))

(assert (= (and b!2441674 res!1036647) b!2441669))

(assert (= (or b!2441672 b!2441669) bm!149608))

(assert (= (or b!2441670 b!2441674) bm!149609))

(assert (= (or b!2441675 bm!149609) bm!149610))

(declare-fun m!2819621 () Bool)

(assert (=> bm!149608 m!2819621))

(declare-fun m!2819623 () Bool)

(assert (=> b!2441668 m!2819623))

(declare-fun m!2819625 () Bool)

(assert (=> bm!149610 m!2819625))

(assert (=> bm!149502 d!705093))

(assert (=> bm!149507 d!704791))

(declare-fun bs!465026 () Bool)

(declare-fun b!2441686 () Bool)

(assert (= bs!465026 (and b!2441686 b!2441559)))

(declare-fun lambda!92433 () Int)

(assert (=> bs!465026 (= (and (= (reg!7506 (regTwo!14867 (regTwo!14867 r!13927))) (reg!7506 (regOne!14867 (regTwo!14867 r!13927)))) (= (regTwo!14867 (regTwo!14867 r!13927)) (regOne!14867 (regTwo!14867 r!13927)))) (= lambda!92433 lambda!92431))))

(declare-fun bs!465027 () Bool)

(assert (= bs!465027 (and b!2441686 b!2441021)))

(assert (=> bs!465027 (= (and (= (reg!7506 (regTwo!14867 (regTwo!14867 r!13927))) (reg!7506 (regTwo!14867 r!13927))) (= (regTwo!14867 (regTwo!14867 r!13927)) (regTwo!14867 r!13927))) (= lambda!92433 lambda!92421))))

(declare-fun bs!465028 () Bool)

(assert (= bs!465028 (and b!2441686 b!2441079)))

(assert (=> bs!465028 (= (and (= (reg!7506 (regTwo!14867 (regTwo!14867 r!13927))) (reg!7506 (regOne!14867 r!13927))) (= (regTwo!14867 (regTwo!14867 r!13927)) (regOne!14867 r!13927))) (= lambda!92433 lambda!92426))))

(declare-fun bs!465029 () Bool)

(assert (= bs!465029 (and b!2441686 b!2440171)))

(assert (=> bs!465029 (not (= lambda!92433 lambda!92397))))

(declare-fun bs!465030 () Bool)

(assert (= bs!465030 (and b!2441686 b!2441467)))

(assert (=> bs!465030 (not (= lambda!92433 lambda!92429))))

(declare-fun bs!465031 () Bool)

(assert (= bs!465031 (and b!2441686 b!2441472)))

(assert (=> bs!465031 (= (and (= (reg!7506 (regTwo!14867 (regTwo!14867 r!13927))) (reg!7506 (regTwo!14867 (regOne!14867 r!13927)))) (= (regTwo!14867 (regTwo!14867 r!13927)) (regTwo!14867 (regOne!14867 r!13927)))) (= lambda!92433 lambda!92428))))

(declare-fun bs!465032 () Bool)

(assert (= bs!465032 (and b!2441686 d!704777)))

(assert (=> bs!465032 (not (= lambda!92433 lambda!92418))))

(declare-fun bs!465033 () Bool)

(assert (= bs!465033 (and b!2441686 b!2440176)))

(assert (=> bs!465033 (= (and (= (reg!7506 (regTwo!14867 (regTwo!14867 r!13927))) (reg!7506 r!13927)) (= (regTwo!14867 (regTwo!14867 r!13927)) r!13927)) (= lambda!92433 lambda!92396))))

(declare-fun bs!465034 () Bool)

(assert (= bs!465034 (and b!2441686 b!2441074)))

(assert (=> bs!465034 (not (= lambda!92433 lambda!92427))))

(declare-fun bs!465035 () Bool)

(assert (= bs!465035 (and b!2441686 d!704825)))

(assert (=> bs!465035 (not (= lambda!92433 lambda!92425))))

(declare-fun bs!465036 () Bool)

(assert (= bs!465036 (and b!2441686 d!704523)))

(assert (=> bs!465036 (not (= lambda!92433 lambda!92390))))

(declare-fun bs!465037 () Bool)

(assert (= bs!465037 (and b!2441686 b!2441554)))

(assert (=> bs!465037 (not (= lambda!92433 lambda!92432))))

(assert (=> bs!465036 (not (= lambda!92433 lambda!92391))))

(declare-fun bs!465038 () Bool)

(assert (= bs!465038 (and b!2441686 b!2441016)))

(assert (=> bs!465038 (not (= lambda!92433 lambda!92422))))

(assert (=> bs!465032 (not (= lambda!92433 lambda!92419))))

(declare-fun bs!465039 () Bool)

(assert (= bs!465039 (and b!2441686 b!2439691)))

(assert (=> bs!465039 (not (= lambda!92433 lambda!92358))))

(assert (=> bs!465039 (not (= lambda!92433 lambda!92359))))

(declare-fun bs!465040 () Bool)

(assert (= bs!465040 (and b!2441686 d!704513)))

(assert (=> bs!465040 (not (= lambda!92433 lambda!92385))))

(assert (=> b!2441686 true))

(assert (=> b!2441686 true))

(declare-fun bs!465041 () Bool)

(declare-fun b!2441681 () Bool)

(assert (= bs!465041 (and b!2441681 b!2441559)))

(declare-fun lambda!92434 () Int)

(assert (=> bs!465041 (not (= lambda!92434 lambda!92431))))

(declare-fun bs!465042 () Bool)

(assert (= bs!465042 (and b!2441681 b!2441021)))

(assert (=> bs!465042 (not (= lambda!92434 lambda!92421))))

(declare-fun bs!465043 () Bool)

(assert (= bs!465043 (and b!2441681 b!2441079)))

(assert (=> bs!465043 (not (= lambda!92434 lambda!92426))))

(declare-fun bs!465044 () Bool)

(assert (= bs!465044 (and b!2441681 b!2440171)))

(assert (=> bs!465044 (= (and (= (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92434 lambda!92397))))

(declare-fun bs!465045 () Bool)

(assert (= bs!465045 (and b!2441681 b!2441467)))

(assert (=> bs!465045 (= (and (= (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regOne!14866 (regTwo!14867 (regOne!14867 r!13927)))) (= (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))))) (= lambda!92434 lambda!92429))))

(declare-fun bs!465046 () Bool)

(assert (= bs!465046 (and b!2441681 b!2441472)))

(assert (=> bs!465046 (not (= lambda!92434 lambda!92428))))

(declare-fun bs!465047 () Bool)

(assert (= bs!465047 (and b!2441681 d!704777)))

(assert (=> bs!465047 (not (= lambda!92434 lambda!92418))))

(declare-fun bs!465048 () Bool)

(assert (= bs!465048 (and b!2441681 b!2440176)))

(assert (=> bs!465048 (not (= lambda!92434 lambda!92396))))

(declare-fun bs!465049 () Bool)

(assert (= bs!465049 (and b!2441681 b!2441074)))

(assert (=> bs!465049 (= (and (= (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regOne!14866 (regOne!14867 r!13927))) (= (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regTwo!14866 (regOne!14867 r!13927)))) (= lambda!92434 lambda!92427))))

(declare-fun bs!465050 () Bool)

(assert (= bs!465050 (and b!2441681 d!704825)))

(assert (=> bs!465050 (not (= lambda!92434 lambda!92425))))

(declare-fun bs!465051 () Bool)

(assert (= bs!465051 (and b!2441681 d!704523)))

(assert (=> bs!465051 (not (= lambda!92434 lambda!92390))))

(declare-fun bs!465052 () Bool)

(assert (= bs!465052 (and b!2441681 b!2441554)))

(assert (=> bs!465052 (= (and (= (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regOne!14866 (regOne!14867 (regTwo!14867 r!13927)))) (= (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))))) (= lambda!92434 lambda!92432))))

(assert (=> bs!465051 (= (and (= (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92434 lambda!92391))))

(declare-fun bs!465053 () Bool)

(assert (= bs!465053 (and b!2441681 b!2441016)))

(assert (=> bs!465053 (= (and (= (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regOne!14866 (regTwo!14867 r!13927))) (= (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regTwo!14866 (regTwo!14867 r!13927)))) (= lambda!92434 lambda!92422))))

(assert (=> bs!465047 (= (and (= (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92434 lambda!92419))))

(declare-fun bs!465054 () Bool)

(assert (= bs!465054 (and b!2441681 b!2441686)))

(assert (=> bs!465054 (not (= lambda!92434 lambda!92433))))

(declare-fun bs!465055 () Bool)

(assert (= bs!465055 (and b!2441681 b!2439691)))

(assert (=> bs!465055 (not (= lambda!92434 lambda!92358))))

(assert (=> bs!465055 (= (and (= (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92434 lambda!92359))))

(declare-fun bs!465056 () Bool)

(assert (= bs!465056 (and b!2441681 d!704513)))

(assert (=> bs!465056 (not (= lambda!92434 lambda!92385))))

(assert (=> b!2441681 true))

(assert (=> b!2441681 true))

(declare-fun bm!149611 () Bool)

(declare-fun call!149616 () Bool)

(assert (=> bm!149611 (= call!149616 (isEmpty!16534 s!9460))))

(declare-fun d!705095 () Bool)

(declare-fun c!389667 () Bool)

(assert (=> d!705095 (= c!389667 ((_ is EmptyExpr!7177) (regTwo!14867 (regTwo!14867 r!13927))))))

(declare-fun e!1551286 () Bool)

(assert (=> d!705095 (= (matchRSpec!1024 (regTwo!14867 (regTwo!14867 r!13927)) s!9460) e!1551286)))

(declare-fun b!2441676 () Bool)

(declare-fun res!1036650 () Bool)

(declare-fun e!1551284 () Bool)

(assert (=> b!2441676 (=> res!1036650 e!1551284)))

(assert (=> b!2441676 (= res!1036650 call!149616)))

(declare-fun e!1551281 () Bool)

(assert (=> b!2441676 (= e!1551281 e!1551284)))

(declare-fun b!2441677 () Bool)

(declare-fun e!1551282 () Bool)

(assert (=> b!2441677 (= e!1551282 (matchRSpec!1024 (regTwo!14867 (regTwo!14867 (regTwo!14867 r!13927))) s!9460))))

(declare-fun b!2441678 () Bool)

(assert (=> b!2441678 (= e!1551286 call!149616)))

(declare-fun b!2441679 () Bool)

(declare-fun e!1551283 () Bool)

(assert (=> b!2441679 (= e!1551283 e!1551281)))

(declare-fun c!389665 () Bool)

(assert (=> b!2441679 (= c!389665 ((_ is Star!7177) (regTwo!14867 (regTwo!14867 r!13927))))))

(declare-fun b!2441680 () Bool)

(declare-fun e!1551285 () Bool)

(assert (=> b!2441680 (= e!1551285 (= s!9460 (Cons!28492 (c!389219 (regTwo!14867 (regTwo!14867 r!13927))) Nil!28492)))))

(declare-fun bm!149612 () Bool)

(declare-fun call!149617 () Bool)

(assert (=> bm!149612 (= call!149617 (Exists!1213 (ite c!389665 lambda!92433 lambda!92434)))))

(assert (=> b!2441681 (= e!1551281 call!149617)))

(declare-fun b!2441682 () Bool)

(assert (=> b!2441682 (= e!1551283 e!1551282)))

(declare-fun res!1036652 () Bool)

(assert (=> b!2441682 (= res!1036652 (matchRSpec!1024 (regOne!14867 (regTwo!14867 (regTwo!14867 r!13927))) s!9460))))

(assert (=> b!2441682 (=> res!1036652 e!1551282)))

(declare-fun b!2441683 () Bool)

(declare-fun e!1551287 () Bool)

(assert (=> b!2441683 (= e!1551286 e!1551287)))

(declare-fun res!1036651 () Bool)

(assert (=> b!2441683 (= res!1036651 (not ((_ is EmptyLang!7177) (regTwo!14867 (regTwo!14867 r!13927)))))))

(assert (=> b!2441683 (=> (not res!1036651) (not e!1551287))))

(declare-fun b!2441684 () Bool)

(declare-fun c!389666 () Bool)

(assert (=> b!2441684 (= c!389666 ((_ is Union!7177) (regTwo!14867 (regTwo!14867 r!13927))))))

(assert (=> b!2441684 (= e!1551285 e!1551283)))

(declare-fun b!2441685 () Bool)

(declare-fun c!389664 () Bool)

(assert (=> b!2441685 (= c!389664 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14867 r!13927))))))

(assert (=> b!2441685 (= e!1551287 e!1551285)))

(assert (=> b!2441686 (= e!1551284 call!149617)))

(assert (= (and d!705095 c!389667) b!2441678))

(assert (= (and d!705095 (not c!389667)) b!2441683))

(assert (= (and b!2441683 res!1036651) b!2441685))

(assert (= (and b!2441685 c!389664) b!2441680))

(assert (= (and b!2441685 (not c!389664)) b!2441684))

(assert (= (and b!2441684 c!389666) b!2441682))

(assert (= (and b!2441684 (not c!389666)) b!2441679))

(assert (= (and b!2441682 (not res!1036652)) b!2441677))

(assert (= (and b!2441679 c!389665) b!2441676))

(assert (= (and b!2441679 (not c!389665)) b!2441681))

(assert (= (and b!2441676 (not res!1036650)) b!2441686))

(assert (= (or b!2441686 b!2441681) bm!149612))

(assert (= (or b!2441678 b!2441676) bm!149611))

(assert (=> bm!149611 m!2818203))

(declare-fun m!2819627 () Bool)

(assert (=> b!2441677 m!2819627))

(declare-fun m!2819629 () Bool)

(assert (=> bm!149612 m!2819629))

(declare-fun m!2819631 () Bool)

(assert (=> b!2441682 m!2819631))

(assert (=> b!2441012 d!705095))

(assert (=> b!2440846 d!704897))

(assert (=> b!2441148 d!704919))

(assert (=> b!2441148 d!704921))

(assert (=> b!2440963 d!704833))

(assert (=> d!704821 d!704741))

(declare-fun d!705097 () Bool)

(assert (=> d!705097 (= (validRegex!2889 EmptyExpr!7177) true)))

(assert (=> d!704821 d!705097))

(declare-fun d!705099 () Bool)

(assert (=> d!705099 true))

(assert (=> d!705099 true))

(declare-fun res!1036653 () Bool)

(assert (=> d!705099 (= (choose!14482 lambda!92390) res!1036653)))

(assert (=> d!704773 d!705099))

(declare-fun b!2441687 () Bool)

(declare-fun e!1551294 () Bool)

(declare-fun e!1551289 () Bool)

(assert (=> b!2441687 (= e!1551294 e!1551289)))

(declare-fun c!389669 () Bool)

(assert (=> b!2441687 (= c!389669 ((_ is Star!7177) (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164))))))))

(declare-fun c!389668 () Bool)

(declare-fun bm!149613 () Bool)

(declare-fun call!149619 () Bool)

(assert (=> bm!149613 (= call!149619 (validRegex!2889 (ite c!389668 (regOne!14867 (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164))))) (regTwo!14866 (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164))))))))))

(declare-fun b!2441688 () Bool)

(declare-fun e!1551288 () Bool)

(assert (=> b!2441688 (= e!1551289 e!1551288)))

(declare-fun res!1036657 () Bool)

(assert (=> b!2441688 (= res!1036657 (not (nullable!2198 (reg!7506 (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164))))))))))

(assert (=> b!2441688 (=> (not res!1036657) (not e!1551288))))

(declare-fun d!705101 () Bool)

(declare-fun res!1036658 () Bool)

(assert (=> d!705101 (=> res!1036658 e!1551294)))

(assert (=> d!705101 (= res!1036658 ((_ is ElementMatch!7177) (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164))))))))

(assert (=> d!705101 (= (validRegex!2889 (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164))))) e!1551294)))

(declare-fun b!2441689 () Bool)

(declare-fun e!1551292 () Bool)

(assert (=> b!2441689 (= e!1551292 call!149619)))

(declare-fun b!2441690 () Bool)

(declare-fun e!1551291 () Bool)

(declare-fun call!149620 () Bool)

(assert (=> b!2441690 (= e!1551291 call!149620)))

(declare-fun b!2441691 () Bool)

(declare-fun res!1036655 () Bool)

(declare-fun e!1551290 () Bool)

(assert (=> b!2441691 (=> res!1036655 e!1551290)))

(assert (=> b!2441691 (= res!1036655 (not ((_ is Concat!11813) (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164)))))))))

(declare-fun e!1551293 () Bool)

(assert (=> b!2441691 (= e!1551293 e!1551290)))

(declare-fun b!2441692 () Bool)

(declare-fun res!1036654 () Bool)

(assert (=> b!2441692 (=> (not res!1036654) (not e!1551291))))

(assert (=> b!2441692 (= res!1036654 call!149619)))

(assert (=> b!2441692 (= e!1551293 e!1551291)))

(declare-fun b!2441693 () Bool)

(assert (=> b!2441693 (= e!1551289 e!1551293)))

(assert (=> b!2441693 (= c!389668 ((_ is Union!7177) (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164))))))))

(declare-fun b!2441694 () Bool)

(assert (=> b!2441694 (= e!1551290 e!1551292)))

(declare-fun res!1036656 () Bool)

(assert (=> b!2441694 (=> (not res!1036656) (not e!1551292))))

(assert (=> b!2441694 (= res!1036656 call!149620)))

(declare-fun b!2441695 () Bool)

(declare-fun call!149618 () Bool)

(assert (=> b!2441695 (= e!1551288 call!149618)))

(declare-fun bm!149614 () Bool)

(assert (=> bm!149614 (= call!149620 call!149618)))

(declare-fun bm!149615 () Bool)

(assert (=> bm!149615 (= call!149618 (validRegex!2889 (ite c!389669 (reg!7506 (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164))))) (ite c!389668 (regTwo!14867 (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164))))) (regOne!14866 (ite c!389508 (reg!7506 (h!33894 l!9164)) (ite c!389507 (regTwo!14867 (h!33894 l!9164)) (regOne!14866 (h!33894 l!9164)))))))))))

(assert (= (and d!705101 (not res!1036658)) b!2441687))

(assert (= (and b!2441687 c!389669) b!2441688))

(assert (= (and b!2441687 (not c!389669)) b!2441693))

(assert (= (and b!2441688 res!1036657) b!2441695))

(assert (= (and b!2441693 c!389668) b!2441692))

(assert (= (and b!2441693 (not c!389668)) b!2441691))

(assert (= (and b!2441692 res!1036654) b!2441690))

(assert (= (and b!2441691 (not res!1036655)) b!2441694))

(assert (= (and b!2441694 res!1036656) b!2441689))

(assert (= (or b!2441692 b!2441689) bm!149613))

(assert (= (or b!2441690 b!2441694) bm!149614))

(assert (= (or b!2441695 bm!149614) bm!149615))

(declare-fun m!2819633 () Bool)

(assert (=> bm!149613 m!2819633))

(declare-fun m!2819635 () Bool)

(assert (=> b!2441688 m!2819635))

(declare-fun m!2819637 () Bool)

(assert (=> bm!149615 m!2819637))

(assert (=> bm!149514 d!705101))

(assert (=> bm!149525 d!705035))

(declare-fun d!705103 () Bool)

(declare-fun lt!878413 () Int)

(assert (=> d!705103 (>= lt!878413 0)))

(declare-fun e!1551295 () Int)

(assert (=> d!705103 (= lt!878413 e!1551295)))

(declare-fun c!389670 () Bool)

(assert (=> d!705103 (= c!389670 ((_ is Nil!28492) (t!208567 (_1!16596 lt!878224))))))

(assert (=> d!705103 (= (size!22262 (t!208567 (_1!16596 lt!878224))) lt!878413)))

(declare-fun b!2441696 () Bool)

(assert (=> b!2441696 (= e!1551295 0)))

(declare-fun b!2441697 () Bool)

(assert (=> b!2441697 (= e!1551295 (+ 1 (size!22262 (t!208567 (t!208567 (_1!16596 lt!878224))))))))

(assert (= (and d!705103 c!389670) b!2441696))

(assert (= (and d!705103 (not c!389670)) b!2441697))

(declare-fun m!2819639 () Bool)

(assert (=> b!2441697 m!2819639))

(assert (=> b!2441110 d!705103))

(declare-fun b!2441698 () Bool)

(declare-fun e!1551299 () Regex!7177)

(declare-fun e!1551296 () Regex!7177)

(assert (=> b!2441698 (= e!1551299 e!1551296)))

(declare-fun c!389673 () Bool)

(assert (=> b!2441698 (= c!389673 ((_ is ElementMatch!7177) (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun b!2441699 () Bool)

(assert (=> b!2441699 (= e!1551296 (ite (= (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))) (c!389219 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389672 () Bool)

(declare-fun c!389674 () Bool)

(declare-fun call!149624 () Regex!7177)

(declare-fun bm!149616 () Bool)

(assert (=> bm!149616 (= call!149624 (derivativeStep!1852 (ite c!389674 (regOne!14867 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (ite c!389672 (reg!7506 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (regOne!14866 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(declare-fun b!2441701 () Bool)

(declare-fun c!389675 () Bool)

(assert (=> b!2441701 (= c!389675 (nullable!2198 (regOne!14866 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))))

(declare-fun e!1551297 () Regex!7177)

(declare-fun e!1551298 () Regex!7177)

(assert (=> b!2441701 (= e!1551297 e!1551298)))

(declare-fun b!2441702 () Bool)

(declare-fun call!149621 () Regex!7177)

(assert (=> b!2441702 (= e!1551297 (Concat!11813 call!149621 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun b!2441703 () Bool)

(assert (=> b!2441703 (= c!389674 ((_ is Union!7177) (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun e!1551300 () Regex!7177)

(assert (=> b!2441703 (= e!1551296 e!1551300)))

(declare-fun bm!149617 () Bool)

(assert (=> bm!149617 (= call!149621 call!149624)))

(declare-fun bm!149618 () Bool)

(declare-fun call!149622 () Regex!7177)

(declare-fun call!149623 () Regex!7177)

(assert (=> bm!149618 (= call!149622 call!149623)))

(declare-fun bm!149619 () Bool)

(assert (=> bm!149619 (= call!149623 (derivativeStep!1852 (ite c!389674 (regTwo!14867 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (ite c!389675 (regTwo!14866 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) (regOne!14866 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(declare-fun b!2441700 () Bool)

(assert (=> b!2441700 (= e!1551298 (Union!7177 (Concat!11813 call!149621 (regTwo!14866 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))) call!149622))))

(declare-fun d!705105 () Bool)

(declare-fun lt!878414 () Regex!7177)

(assert (=> d!705105 (validRegex!2889 lt!878414)))

(assert (=> d!705105 (= lt!878414 e!1551299)))

(declare-fun c!389671 () Bool)

(assert (=> d!705105 (= c!389671 (or ((_ is EmptyExpr!7177) (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))) ((_ is EmptyLang!7177) (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))))

(assert (=> d!705105 (validRegex!2889 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(assert (=> d!705105 (= (derivativeStep!1852 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) lt!878414)))

(declare-fun b!2441704 () Bool)

(assert (=> b!2441704 (= e!1551300 e!1551297)))

(assert (=> b!2441704 (= c!389672 ((_ is Star!7177) (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))))

(declare-fun b!2441705 () Bool)

(assert (=> b!2441705 (= e!1551299 EmptyLang!7177)))

(declare-fun b!2441706 () Bool)

(assert (=> b!2441706 (= e!1551300 (Union!7177 call!149624 call!149623))))

(declare-fun b!2441707 () Bool)

(assert (=> b!2441707 (= e!1551298 (Union!7177 (Concat!11813 call!149622 (regTwo!14866 (ite c!389484 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (ite c!389482 (reg!7506 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))) EmptyLang!7177))))

(assert (= (and d!705105 c!389671) b!2441705))

(assert (= (and d!705105 (not c!389671)) b!2441698))

(assert (= (and b!2441698 c!389673) b!2441699))

(assert (= (and b!2441698 (not c!389673)) b!2441703))

(assert (= (and b!2441703 c!389674) b!2441706))

(assert (= (and b!2441703 (not c!389674)) b!2441704))

(assert (= (and b!2441704 c!389672) b!2441702))

(assert (= (and b!2441704 (not c!389672)) b!2441701))

(assert (= (and b!2441701 c!389675) b!2441700))

(assert (= (and b!2441701 (not c!389675)) b!2441707))

(assert (= (or b!2441700 b!2441707) bm!149618))

(assert (= (or b!2441702 b!2441700) bm!149617))

(assert (= (or b!2441706 bm!149617) bm!149616))

(assert (= (or b!2441706 bm!149618) bm!149619))

(assert (=> bm!149616 m!2818235))

(declare-fun m!2819641 () Bool)

(assert (=> bm!149616 m!2819641))

(declare-fun m!2819643 () Bool)

(assert (=> b!2441701 m!2819643))

(assert (=> bm!149619 m!2818235))

(declare-fun m!2819645 () Bool)

(assert (=> bm!149619 m!2819645))

(declare-fun m!2819647 () Bool)

(assert (=> d!705105 m!2819647))

(declare-fun m!2819649 () Bool)

(assert (=> d!705105 m!2819649))

(assert (=> bm!149493 d!705105))

(declare-fun d!705107 () Bool)

(assert (=> d!705107 (= (isEmpty!16534 (_2!16596 (get!8795 lt!878295))) ((_ is Nil!28492) (_2!16596 (get!8795 lt!878295))))))

(assert (=> bm!149524 d!705107))

(assert (=> d!704801 d!705035))

(assert (=> d!704801 d!704779))

(declare-fun d!705109 () Bool)

(assert (=> d!705109 (= (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878295)))) ((_ is Nil!28492) (tail!3818 (_1!16596 (get!8795 lt!878295)))))))

(assert (=> b!2441137 d!705109))

(declare-fun d!705111 () Bool)

(assert (=> d!705111 (= (tail!3818 (_1!16596 (get!8795 lt!878295))) (t!208567 (_1!16596 (get!8795 lt!878295))))))

(assert (=> b!2441137 d!705111))

(assert (=> d!704783 d!704741))

(declare-fun b!2441708 () Bool)

(declare-fun e!1551307 () Bool)

(declare-fun e!1551302 () Bool)

(assert (=> b!2441708 (= e!1551307 e!1551302)))

(declare-fun c!389677 () Bool)

(assert (=> b!2441708 (= c!389677 ((_ is Star!7177) (regTwo!14866 r!13927)))))

(declare-fun bm!149620 () Bool)

(declare-fun call!149626 () Bool)

(declare-fun c!389676 () Bool)

(assert (=> bm!149620 (= call!149626 (validRegex!2889 (ite c!389676 (regOne!14867 (regTwo!14866 r!13927)) (regTwo!14866 (regTwo!14866 r!13927)))))))

(declare-fun b!2441709 () Bool)

(declare-fun e!1551301 () Bool)

(assert (=> b!2441709 (= e!1551302 e!1551301)))

(declare-fun res!1036662 () Bool)

(assert (=> b!2441709 (= res!1036662 (not (nullable!2198 (reg!7506 (regTwo!14866 r!13927)))))))

(assert (=> b!2441709 (=> (not res!1036662) (not e!1551301))))

(declare-fun d!705113 () Bool)

(declare-fun res!1036663 () Bool)

(assert (=> d!705113 (=> res!1036663 e!1551307)))

(assert (=> d!705113 (= res!1036663 ((_ is ElementMatch!7177) (regTwo!14866 r!13927)))))

(assert (=> d!705113 (= (validRegex!2889 (regTwo!14866 r!13927)) e!1551307)))

(declare-fun b!2441710 () Bool)

(declare-fun e!1551305 () Bool)

(assert (=> b!2441710 (= e!1551305 call!149626)))

(declare-fun b!2441711 () Bool)

(declare-fun e!1551304 () Bool)

(declare-fun call!149627 () Bool)

(assert (=> b!2441711 (= e!1551304 call!149627)))

(declare-fun b!2441712 () Bool)

(declare-fun res!1036660 () Bool)

(declare-fun e!1551303 () Bool)

(assert (=> b!2441712 (=> res!1036660 e!1551303)))

(assert (=> b!2441712 (= res!1036660 (not ((_ is Concat!11813) (regTwo!14866 r!13927))))))

(declare-fun e!1551306 () Bool)

(assert (=> b!2441712 (= e!1551306 e!1551303)))

(declare-fun b!2441713 () Bool)

(declare-fun res!1036659 () Bool)

(assert (=> b!2441713 (=> (not res!1036659) (not e!1551304))))

(assert (=> b!2441713 (= res!1036659 call!149626)))

(assert (=> b!2441713 (= e!1551306 e!1551304)))

(declare-fun b!2441714 () Bool)

(assert (=> b!2441714 (= e!1551302 e!1551306)))

(assert (=> b!2441714 (= c!389676 ((_ is Union!7177) (regTwo!14866 r!13927)))))

(declare-fun b!2441715 () Bool)

(assert (=> b!2441715 (= e!1551303 e!1551305)))

(declare-fun res!1036661 () Bool)

(assert (=> b!2441715 (=> (not res!1036661) (not e!1551305))))

(assert (=> b!2441715 (= res!1036661 call!149627)))

(declare-fun b!2441716 () Bool)

(declare-fun call!149625 () Bool)

(assert (=> b!2441716 (= e!1551301 call!149625)))

(declare-fun bm!149621 () Bool)

(assert (=> bm!149621 (= call!149627 call!149625)))

(declare-fun bm!149622 () Bool)

(assert (=> bm!149622 (= call!149625 (validRegex!2889 (ite c!389677 (reg!7506 (regTwo!14866 r!13927)) (ite c!389676 (regTwo!14867 (regTwo!14866 r!13927)) (regOne!14866 (regTwo!14866 r!13927))))))))

(assert (= (and d!705113 (not res!1036663)) b!2441708))

(assert (= (and b!2441708 c!389677) b!2441709))

(assert (= (and b!2441708 (not c!389677)) b!2441714))

(assert (= (and b!2441709 res!1036662) b!2441716))

(assert (= (and b!2441714 c!389676) b!2441713))

(assert (= (and b!2441714 (not c!389676)) b!2441712))

(assert (= (and b!2441713 res!1036659) b!2441711))

(assert (= (and b!2441712 (not res!1036660)) b!2441715))

(assert (= (and b!2441715 res!1036661) b!2441710))

(assert (= (or b!2441713 b!2441710) bm!149620))

(assert (= (or b!2441711 b!2441715) bm!149621))

(assert (= (or b!2441716 bm!149621) bm!149622))

(declare-fun m!2819651 () Bool)

(assert (=> bm!149620 m!2819651))

(declare-fun m!2819653 () Bool)

(assert (=> b!2441709 m!2819653))

(declare-fun m!2819655 () Bool)

(assert (=> bm!149622 m!2819655))

(assert (=> d!704783 d!705113))

(declare-fun d!705115 () Bool)

(assert (=> d!705115 (= (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878298)))) ((_ is Nil!28492) (tail!3818 (_2!16596 (get!8795 lt!878298)))))))

(assert (=> b!2440821 d!705115))

(declare-fun d!705117 () Bool)

(assert (=> d!705117 (= (tail!3818 (_2!16596 (get!8795 lt!878298))) (t!208567 (_2!16596 (get!8795 lt!878298))))))

(assert (=> b!2440821 d!705117))

(declare-fun d!705119 () Bool)

(declare-fun res!1036664 () Bool)

(declare-fun e!1551308 () Bool)

(assert (=> d!705119 (=> res!1036664 e!1551308)))

(assert (=> d!705119 (= res!1036664 ((_ is Nil!28493) (t!208568 (t!208568 l!9164))))))

(assert (=> d!705119 (= (forall!5811 (t!208568 (t!208568 l!9164)) lambda!92357) e!1551308)))

(declare-fun b!2441717 () Bool)

(declare-fun e!1551309 () Bool)

(assert (=> b!2441717 (= e!1551308 e!1551309)))

(declare-fun res!1036665 () Bool)

(assert (=> b!2441717 (=> (not res!1036665) (not e!1551309))))

(assert (=> b!2441717 (= res!1036665 (dynLambda!12256 lambda!92357 (h!33894 (t!208568 (t!208568 l!9164)))))))

(declare-fun b!2441718 () Bool)

(assert (=> b!2441718 (= e!1551309 (forall!5811 (t!208568 (t!208568 (t!208568 l!9164))) lambda!92357))))

(assert (= (and d!705119 (not res!1036664)) b!2441717))

(assert (= (and b!2441717 res!1036665) b!2441718))

(declare-fun b_lambda!74957 () Bool)

(assert (=> (not b_lambda!74957) (not b!2441717)))

(declare-fun m!2819657 () Bool)

(assert (=> b!2441717 m!2819657))

(declare-fun m!2819659 () Bool)

(assert (=> b!2441718 m!2819659))

(assert (=> b!2441142 d!705119))

(declare-fun d!705121 () Bool)

(assert (=> d!705121 (= (nullable!2198 (reg!7506 r!13927)) (nullableFct!534 (reg!7506 r!13927)))))

(declare-fun bs!465057 () Bool)

(assert (= bs!465057 d!705121))

(declare-fun m!2819661 () Bool)

(assert (=> bs!465057 m!2819661))

(assert (=> b!2440929 d!705121))

(declare-fun b!2441719 () Bool)

(declare-fun e!1551313 () Bool)

(declare-fun lt!878415 () Bool)

(declare-fun call!149628 () Bool)

(assert (=> b!2441719 (= e!1551313 (= lt!878415 call!149628))))

(declare-fun d!705123 () Bool)

(assert (=> d!705123 e!1551313))

(declare-fun c!389680 () Bool)

(assert (=> d!705123 (= c!389680 ((_ is EmptyExpr!7177) (regTwo!14866 r!13927)))))

(declare-fun e!1551311 () Bool)

(assert (=> d!705123 (= lt!878415 e!1551311)))

(declare-fun c!389678 () Bool)

(assert (=> d!705123 (= c!389678 (isEmpty!16534 (t!208567 s!9460)))))

(assert (=> d!705123 (validRegex!2889 (regTwo!14866 r!13927))))

(assert (=> d!705123 (= (matchR!3292 (regTwo!14866 r!13927) (t!208567 s!9460)) lt!878415)))

(declare-fun b!2441720 () Bool)

(declare-fun e!1551315 () Bool)

(assert (=> b!2441720 (= e!1551313 e!1551315)))

(declare-fun c!389679 () Bool)

(assert (=> b!2441720 (= c!389679 ((_ is EmptyLang!7177) (regTwo!14866 r!13927)))))

(declare-fun b!2441721 () Bool)

(declare-fun res!1036668 () Bool)

(declare-fun e!1551310 () Bool)

(assert (=> b!2441721 (=> res!1036668 e!1551310)))

(declare-fun e!1551314 () Bool)

(assert (=> b!2441721 (= res!1036668 e!1551314)))

(declare-fun res!1036671 () Bool)

(assert (=> b!2441721 (=> (not res!1036671) (not e!1551314))))

(assert (=> b!2441721 (= res!1036671 lt!878415)))

(declare-fun b!2441722 () Bool)

(assert (=> b!2441722 (= e!1551315 (not lt!878415))))

(declare-fun b!2441723 () Bool)

(declare-fun e!1551316 () Bool)

(assert (=> b!2441723 (= e!1551310 e!1551316)))

(declare-fun res!1036673 () Bool)

(assert (=> b!2441723 (=> (not res!1036673) (not e!1551316))))

(assert (=> b!2441723 (= res!1036673 (not lt!878415))))

(declare-fun b!2441724 () Bool)

(declare-fun res!1036670 () Bool)

(assert (=> b!2441724 (=> (not res!1036670) (not e!1551314))))

(assert (=> b!2441724 (= res!1036670 (isEmpty!16534 (tail!3818 (t!208567 s!9460))))))

(declare-fun b!2441725 () Bool)

(declare-fun e!1551312 () Bool)

(assert (=> b!2441725 (= e!1551316 e!1551312)))

(declare-fun res!1036667 () Bool)

(assert (=> b!2441725 (=> res!1036667 e!1551312)))

(assert (=> b!2441725 (= res!1036667 call!149628)))

(declare-fun b!2441726 () Bool)

(assert (=> b!2441726 (= e!1551311 (nullable!2198 (regTwo!14866 r!13927)))))

(declare-fun b!2441727 () Bool)

(assert (=> b!2441727 (= e!1551314 (= (head!5545 (t!208567 s!9460)) (c!389219 (regTwo!14866 r!13927))))))

(declare-fun b!2441728 () Bool)

(declare-fun res!1036672 () Bool)

(assert (=> b!2441728 (=> (not res!1036672) (not e!1551314))))

(assert (=> b!2441728 (= res!1036672 (not call!149628))))

(declare-fun bm!149623 () Bool)

(assert (=> bm!149623 (= call!149628 (isEmpty!16534 (t!208567 s!9460)))))

(declare-fun b!2441729 () Bool)

(declare-fun res!1036666 () Bool)

(assert (=> b!2441729 (=> res!1036666 e!1551312)))

(assert (=> b!2441729 (= res!1036666 (not (isEmpty!16534 (tail!3818 (t!208567 s!9460)))))))

(declare-fun b!2441730 () Bool)

(assert (=> b!2441730 (= e!1551311 (matchR!3292 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (t!208567 s!9460))) (tail!3818 (t!208567 s!9460))))))

(declare-fun b!2441731 () Bool)

(declare-fun res!1036669 () Bool)

(assert (=> b!2441731 (=> res!1036669 e!1551310)))

(assert (=> b!2441731 (= res!1036669 (not ((_ is ElementMatch!7177) (regTwo!14866 r!13927))))))

(assert (=> b!2441731 (= e!1551315 e!1551310)))

(declare-fun b!2441732 () Bool)

(assert (=> b!2441732 (= e!1551312 (not (= (head!5545 (t!208567 s!9460)) (c!389219 (regTwo!14866 r!13927)))))))

(assert (= (and d!705123 c!389678) b!2441726))

(assert (= (and d!705123 (not c!389678)) b!2441730))

(assert (= (and d!705123 c!389680) b!2441719))

(assert (= (and d!705123 (not c!389680)) b!2441720))

(assert (= (and b!2441720 c!389679) b!2441722))

(assert (= (and b!2441720 (not c!389679)) b!2441731))

(assert (= (and b!2441731 (not res!1036669)) b!2441721))

(assert (= (and b!2441721 res!1036671) b!2441728))

(assert (= (and b!2441728 res!1036672) b!2441724))

(assert (= (and b!2441724 res!1036670) b!2441727))

(assert (= (and b!2441721 (not res!1036668)) b!2441723))

(assert (= (and b!2441723 res!1036673) b!2441725))

(assert (= (and b!2441725 (not res!1036667)) b!2441729))

(assert (= (and b!2441729 (not res!1036666)) b!2441732))

(assert (= (or b!2441719 b!2441728 b!2441725) bm!149623))

(assert (=> b!2441729 m!2819337))

(assert (=> b!2441729 m!2819337))

(assert (=> b!2441729 m!2819339))

(assert (=> b!2441732 m!2819341))

(assert (=> b!2441724 m!2819337))

(assert (=> b!2441724 m!2819337))

(assert (=> b!2441724 m!2819339))

(assert (=> d!705123 m!2819343))

(assert (=> d!705123 m!2819037))

(assert (=> bm!149623 m!2819343))

(assert (=> b!2441726 m!2819039))

(assert (=> b!2441727 m!2819341))

(assert (=> b!2441730 m!2819341))

(assert (=> b!2441730 m!2819341))

(declare-fun m!2819663 () Bool)

(assert (=> b!2441730 m!2819663))

(assert (=> b!2441730 m!2819337))

(assert (=> b!2441730 m!2819663))

(assert (=> b!2441730 m!2819337))

(declare-fun m!2819665 () Bool)

(assert (=> b!2441730 m!2819665))

(assert (=> b!2440867 d!705123))

(declare-fun d!705125 () Bool)

(assert (=> d!705125 (= (isEmpty!16535 lt!878298) (not ((_ is Some!5665) lt!878298)))))

(assert (=> d!704837 d!705125))

(declare-fun d!705127 () Bool)

(declare-fun c!389681 () Bool)

(assert (=> d!705127 (= c!389681 ((_ is Nil!28492) (t!208567 (_2!16596 lt!878224))))))

(declare-fun e!1551317 () (InoxSet C!14512))

(assert (=> d!705127 (= (content!3924 (t!208567 (_2!16596 lt!878224))) e!1551317)))

(declare-fun b!2441733 () Bool)

(assert (=> b!2441733 (= e!1551317 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441734 () Bool)

(assert (=> b!2441734 (= e!1551317 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (t!208567 (_2!16596 lt!878224))) true) (content!3924 (t!208567 (t!208567 (_2!16596 lt!878224))))))))

(assert (= (and d!705127 c!389681) b!2441733))

(assert (= (and d!705127 (not c!389681)) b!2441734))

(declare-fun m!2819667 () Bool)

(assert (=> b!2441734 m!2819667))

(declare-fun m!2819669 () Bool)

(assert (=> b!2441734 m!2819669))

(assert (=> b!2440773 d!705127))

(declare-fun b!2441735 () Bool)

(declare-fun e!1551321 () Bool)

(declare-fun e!1551320 () Bool)

(assert (=> b!2441735 (= e!1551321 e!1551320)))

(declare-fun c!389682 () Bool)

(assert (=> b!2441735 (= c!389682 ((_ is Union!7177) lt!878222))))

(declare-fun bm!149624 () Bool)

(declare-fun call!149630 () Bool)

(assert (=> bm!149624 (= call!149630 (nullable!2198 (ite c!389682 (regOne!14867 lt!878222) (regTwo!14866 lt!878222))))))

(declare-fun b!2441736 () Bool)

(declare-fun e!1551318 () Bool)

(assert (=> b!2441736 (= e!1551318 e!1551321)))

(declare-fun res!1036676 () Bool)

(assert (=> b!2441736 (=> res!1036676 e!1551321)))

(assert (=> b!2441736 (= res!1036676 ((_ is Star!7177) lt!878222))))

(declare-fun d!705129 () Bool)

(declare-fun res!1036677 () Bool)

(declare-fun e!1551323 () Bool)

(assert (=> d!705129 (=> res!1036677 e!1551323)))

(assert (=> d!705129 (= res!1036677 ((_ is EmptyExpr!7177) lt!878222))))

(assert (=> d!705129 (= (nullableFct!534 lt!878222) e!1551323)))

(declare-fun b!2441737 () Bool)

(declare-fun e!1551322 () Bool)

(assert (=> b!2441737 (= e!1551320 e!1551322)))

(declare-fun res!1036675 () Bool)

(declare-fun call!149629 () Bool)

(assert (=> b!2441737 (= res!1036675 call!149629)))

(assert (=> b!2441737 (=> (not res!1036675) (not e!1551322))))

(declare-fun b!2441738 () Bool)

(declare-fun e!1551319 () Bool)

(assert (=> b!2441738 (= e!1551320 e!1551319)))

(declare-fun res!1036674 () Bool)

(assert (=> b!2441738 (= res!1036674 call!149630)))

(assert (=> b!2441738 (=> res!1036674 e!1551319)))

(declare-fun b!2441739 () Bool)

(assert (=> b!2441739 (= e!1551319 call!149629)))

(declare-fun b!2441740 () Bool)

(assert (=> b!2441740 (= e!1551323 e!1551318)))

(declare-fun res!1036678 () Bool)

(assert (=> b!2441740 (=> (not res!1036678) (not e!1551318))))

(assert (=> b!2441740 (= res!1036678 (and (not ((_ is EmptyLang!7177) lt!878222)) (not ((_ is ElementMatch!7177) lt!878222))))))

(declare-fun b!2441741 () Bool)

(assert (=> b!2441741 (= e!1551322 call!149630)))

(declare-fun bm!149625 () Bool)

(assert (=> bm!149625 (= call!149629 (nullable!2198 (ite c!389682 (regTwo!14867 lt!878222) (regOne!14866 lt!878222))))))

(assert (= (and d!705129 (not res!1036677)) b!2441740))

(assert (= (and b!2441740 res!1036678) b!2441736))

(assert (= (and b!2441736 (not res!1036676)) b!2441735))

(assert (= (and b!2441735 c!389682) b!2441738))

(assert (= (and b!2441735 (not c!389682)) b!2441737))

(assert (= (and b!2441738 (not res!1036674)) b!2441739))

(assert (= (and b!2441737 res!1036675) b!2441741))

(assert (= (or b!2441738 b!2441741) bm!149624))

(assert (= (or b!2441739 b!2441737) bm!149625))

(declare-fun m!2819671 () Bool)

(assert (=> bm!149624 m!2819671))

(declare-fun m!2819673 () Bool)

(assert (=> bm!149625 m!2819673))

(assert (=> d!704815 d!705129))

(declare-fun b!2441742 () Bool)

(declare-fun e!1551327 () Bool)

(declare-fun lt!878416 () Bool)

(declare-fun call!149631 () Bool)

(assert (=> b!2441742 (= e!1551327 (= lt!878416 call!149631))))

(declare-fun d!705131 () Bool)

(assert (=> d!705131 e!1551327))

(declare-fun c!389685 () Bool)

(assert (=> d!705131 (= c!389685 ((_ is EmptyExpr!7177) (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460))))))

(declare-fun e!1551325 () Bool)

(assert (=> d!705131 (= lt!878416 e!1551325)))

(declare-fun c!389683 () Bool)

(assert (=> d!705131 (= c!389683 (isEmpty!16534 (tail!3818 s!9460)))))

(assert (=> d!705131 (validRegex!2889 (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460)))))

(assert (=> d!705131 (= (matchR!3292 (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460)) (tail!3818 s!9460)) lt!878416)))

(declare-fun b!2441743 () Bool)

(declare-fun e!1551329 () Bool)

(assert (=> b!2441743 (= e!1551327 e!1551329)))

(declare-fun c!389684 () Bool)

(assert (=> b!2441743 (= c!389684 ((_ is EmptyLang!7177) (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460))))))

(declare-fun b!2441744 () Bool)

(declare-fun res!1036681 () Bool)

(declare-fun e!1551324 () Bool)

(assert (=> b!2441744 (=> res!1036681 e!1551324)))

(declare-fun e!1551328 () Bool)

(assert (=> b!2441744 (= res!1036681 e!1551328)))

(declare-fun res!1036684 () Bool)

(assert (=> b!2441744 (=> (not res!1036684) (not e!1551328))))

(assert (=> b!2441744 (= res!1036684 lt!878416)))

(declare-fun b!2441745 () Bool)

(assert (=> b!2441745 (= e!1551329 (not lt!878416))))

(declare-fun b!2441746 () Bool)

(declare-fun e!1551330 () Bool)

(assert (=> b!2441746 (= e!1551324 e!1551330)))

(declare-fun res!1036686 () Bool)

(assert (=> b!2441746 (=> (not res!1036686) (not e!1551330))))

(assert (=> b!2441746 (= res!1036686 (not lt!878416))))

(declare-fun b!2441747 () Bool)

(declare-fun res!1036683 () Bool)

(assert (=> b!2441747 (=> (not res!1036683) (not e!1551328))))

(assert (=> b!2441747 (= res!1036683 (isEmpty!16534 (tail!3818 (tail!3818 s!9460))))))

(declare-fun b!2441748 () Bool)

(declare-fun e!1551326 () Bool)

(assert (=> b!2441748 (= e!1551330 e!1551326)))

(declare-fun res!1036680 () Bool)

(assert (=> b!2441748 (=> res!1036680 e!1551326)))

(assert (=> b!2441748 (= res!1036680 call!149631)))

(declare-fun b!2441749 () Bool)

(assert (=> b!2441749 (= e!1551325 (nullable!2198 (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460))))))

(declare-fun b!2441750 () Bool)

(assert (=> b!2441750 (= e!1551328 (= (head!5545 (tail!3818 s!9460)) (c!389219 (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460)))))))

(declare-fun b!2441751 () Bool)

(declare-fun res!1036685 () Bool)

(assert (=> b!2441751 (=> (not res!1036685) (not e!1551328))))

(assert (=> b!2441751 (= res!1036685 (not call!149631))))

(declare-fun bm!149626 () Bool)

(assert (=> bm!149626 (= call!149631 (isEmpty!16534 (tail!3818 s!9460)))))

(declare-fun b!2441752 () Bool)

(declare-fun res!1036679 () Bool)

(assert (=> b!2441752 (=> res!1036679 e!1551326)))

(assert (=> b!2441752 (= res!1036679 (not (isEmpty!16534 (tail!3818 (tail!3818 s!9460)))))))

(declare-fun b!2441753 () Bool)

(assert (=> b!2441753 (= e!1551325 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))) (tail!3818 (tail!3818 s!9460))))))

(declare-fun b!2441754 () Bool)

(declare-fun res!1036682 () Bool)

(assert (=> b!2441754 (=> res!1036682 e!1551324)))

(assert (=> b!2441754 (= res!1036682 (not ((_ is ElementMatch!7177) (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460)))))))

(assert (=> b!2441754 (= e!1551329 e!1551324)))

(declare-fun b!2441755 () Bool)

(assert (=> b!2441755 (= e!1551326 (not (= (head!5545 (tail!3818 s!9460)) (c!389219 (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460))))))))

(assert (= (and d!705131 c!389683) b!2441749))

(assert (= (and d!705131 (not c!389683)) b!2441753))

(assert (= (and d!705131 c!389685) b!2441742))

(assert (= (and d!705131 (not c!389685)) b!2441743))

(assert (= (and b!2441743 c!389684) b!2441745))

(assert (= (and b!2441743 (not c!389684)) b!2441754))

(assert (= (and b!2441754 (not res!1036682)) b!2441744))

(assert (= (and b!2441744 res!1036684) b!2441751))

(assert (= (and b!2441751 res!1036685) b!2441747))

(assert (= (and b!2441747 res!1036683) b!2441750))

(assert (= (and b!2441744 (not res!1036681)) b!2441746))

(assert (= (and b!2441746 res!1036686) b!2441748))

(assert (= (and b!2441748 (not res!1036680)) b!2441752))

(assert (= (and b!2441752 (not res!1036679)) b!2441755))

(assert (= (or b!2441742 b!2441751 b!2441748) bm!149626))

(assert (=> b!2441752 m!2818197))

(assert (=> b!2441752 m!2819045))

(assert (=> b!2441752 m!2819045))

(assert (=> b!2441752 m!2819047))

(assert (=> b!2441755 m!2818197))

(assert (=> b!2441755 m!2819049))

(assert (=> b!2441747 m!2818197))

(assert (=> b!2441747 m!2819045))

(assert (=> b!2441747 m!2819045))

(assert (=> b!2441747 m!2819047))

(assert (=> d!705131 m!2818197))

(assert (=> d!705131 m!2818199))

(assert (=> d!705131 m!2819119))

(declare-fun m!2819675 () Bool)

(assert (=> d!705131 m!2819675))

(assert (=> bm!149626 m!2818197))

(assert (=> bm!149626 m!2818199))

(assert (=> b!2441749 m!2819119))

(declare-fun m!2819677 () Bool)

(assert (=> b!2441749 m!2819677))

(assert (=> b!2441750 m!2818197))

(assert (=> b!2441750 m!2819049))

(assert (=> b!2441753 m!2818197))

(assert (=> b!2441753 m!2819049))

(assert (=> b!2441753 m!2819119))

(assert (=> b!2441753 m!2819049))

(declare-fun m!2819679 () Bool)

(assert (=> b!2441753 m!2819679))

(assert (=> b!2441753 m!2818197))

(assert (=> b!2441753 m!2819045))

(assert (=> b!2441753 m!2819679))

(assert (=> b!2441753 m!2819045))

(declare-fun m!2819681 () Bool)

(assert (=> b!2441753 m!2819681))

(assert (=> b!2441062 d!705131))

(declare-fun b!2441756 () Bool)

(declare-fun e!1551334 () Regex!7177)

(declare-fun e!1551331 () Regex!7177)

(assert (=> b!2441756 (= e!1551334 e!1551331)))

(declare-fun c!389688 () Bool)

(assert (=> b!2441756 (= c!389688 ((_ is ElementMatch!7177) EmptyExpr!7177))))

(declare-fun b!2441757 () Bool)

(assert (=> b!2441757 (= e!1551331 (ite (= (head!5545 s!9460) (c!389219 EmptyExpr!7177)) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389687 () Bool)

(declare-fun bm!149627 () Bool)

(declare-fun c!389689 () Bool)

(declare-fun call!149635 () Regex!7177)

(assert (=> bm!149627 (= call!149635 (derivativeStep!1852 (ite c!389689 (regOne!14867 EmptyExpr!7177) (ite c!389687 (reg!7506 EmptyExpr!7177) (regOne!14866 EmptyExpr!7177))) (head!5545 s!9460)))))

(declare-fun b!2441759 () Bool)

(declare-fun c!389690 () Bool)

(assert (=> b!2441759 (= c!389690 (nullable!2198 (regOne!14866 EmptyExpr!7177)))))

(declare-fun e!1551332 () Regex!7177)

(declare-fun e!1551333 () Regex!7177)

(assert (=> b!2441759 (= e!1551332 e!1551333)))

(declare-fun b!2441760 () Bool)

(declare-fun call!149632 () Regex!7177)

(assert (=> b!2441760 (= e!1551332 (Concat!11813 call!149632 EmptyExpr!7177))))

(declare-fun b!2441761 () Bool)

(assert (=> b!2441761 (= c!389689 ((_ is Union!7177) EmptyExpr!7177))))

(declare-fun e!1551335 () Regex!7177)

(assert (=> b!2441761 (= e!1551331 e!1551335)))

(declare-fun bm!149628 () Bool)

(assert (=> bm!149628 (= call!149632 call!149635)))

(declare-fun bm!149629 () Bool)

(declare-fun call!149633 () Regex!7177)

(declare-fun call!149634 () Regex!7177)

(assert (=> bm!149629 (= call!149633 call!149634)))

(declare-fun bm!149630 () Bool)

(assert (=> bm!149630 (= call!149634 (derivativeStep!1852 (ite c!389689 (regTwo!14867 EmptyExpr!7177) (ite c!389690 (regTwo!14866 EmptyExpr!7177) (regOne!14866 EmptyExpr!7177))) (head!5545 s!9460)))))

(declare-fun b!2441758 () Bool)

(assert (=> b!2441758 (= e!1551333 (Union!7177 (Concat!11813 call!149632 (regTwo!14866 EmptyExpr!7177)) call!149633))))

(declare-fun d!705133 () Bool)

(declare-fun lt!878417 () Regex!7177)

(assert (=> d!705133 (validRegex!2889 lt!878417)))

(assert (=> d!705133 (= lt!878417 e!1551334)))

(declare-fun c!389686 () Bool)

(assert (=> d!705133 (= c!389686 (or ((_ is EmptyExpr!7177) EmptyExpr!7177) ((_ is EmptyLang!7177) EmptyExpr!7177)))))

(assert (=> d!705133 (validRegex!2889 EmptyExpr!7177)))

(assert (=> d!705133 (= (derivativeStep!1852 EmptyExpr!7177 (head!5545 s!9460)) lt!878417)))

(declare-fun b!2441762 () Bool)

(assert (=> b!2441762 (= e!1551335 e!1551332)))

(assert (=> b!2441762 (= c!389687 ((_ is Star!7177) EmptyExpr!7177))))

(declare-fun b!2441763 () Bool)

(assert (=> b!2441763 (= e!1551334 EmptyLang!7177)))

(declare-fun b!2441764 () Bool)

(assert (=> b!2441764 (= e!1551335 (Union!7177 call!149635 call!149634))))

(declare-fun b!2441765 () Bool)

(assert (=> b!2441765 (= e!1551333 (Union!7177 (Concat!11813 call!149633 (regTwo!14866 EmptyExpr!7177)) EmptyLang!7177))))

(assert (= (and d!705133 c!389686) b!2441763))

(assert (= (and d!705133 (not c!389686)) b!2441756))

(assert (= (and b!2441756 c!389688) b!2441757))

(assert (= (and b!2441756 (not c!389688)) b!2441761))

(assert (= (and b!2441761 c!389689) b!2441764))

(assert (= (and b!2441761 (not c!389689)) b!2441762))

(assert (= (and b!2441762 c!389687) b!2441760))

(assert (= (and b!2441762 (not c!389687)) b!2441759))

(assert (= (and b!2441759 c!389690) b!2441758))

(assert (= (and b!2441759 (not c!389690)) b!2441765))

(assert (= (or b!2441758 b!2441765) bm!149629))

(assert (= (or b!2441760 b!2441758) bm!149628))

(assert (= (or b!2441764 bm!149628) bm!149627))

(assert (= (or b!2441764 bm!149629) bm!149630))

(assert (=> bm!149627 m!2818201))

(declare-fun m!2819683 () Bool)

(assert (=> bm!149627 m!2819683))

(declare-fun m!2819685 () Bool)

(assert (=> b!2441759 m!2819685))

(assert (=> bm!149630 m!2818201))

(declare-fun m!2819687 () Bool)

(assert (=> bm!149630 m!2819687))

(declare-fun m!2819689 () Bool)

(assert (=> d!705133 m!2819689))

(assert (=> d!705133 m!2818861))

(assert (=> b!2441062 d!705133))

(assert (=> b!2441062 d!704721))

(assert (=> b!2441062 d!704789))

(assert (=> b!2440845 d!704815))

(declare-fun d!705135 () Bool)

(assert (=> d!705135 (= (nullable!2198 (reg!7506 (h!33894 l!9164))) (nullableFct!534 (reg!7506 (h!33894 l!9164))))))

(declare-fun bs!465058 () Bool)

(assert (= bs!465058 d!705135))

(declare-fun m!2819691 () Bool)

(assert (=> bs!465058 m!2819691))

(assert (=> b!2441003 d!705135))

(declare-fun b!2441766 () Bool)

(declare-fun e!1551339 () Bool)

(declare-fun lt!878418 () Bool)

(declare-fun call!149636 () Bool)

(assert (=> b!2441766 (= e!1551339 (= lt!878418 call!149636))))

(declare-fun d!705137 () Bool)

(assert (=> d!705137 e!1551339))

(declare-fun c!389693 () Bool)

(assert (=> d!705137 (= c!389693 ((_ is EmptyExpr!7177) (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460))))))

(declare-fun e!1551337 () Bool)

(assert (=> d!705137 (= lt!878418 e!1551337)))

(declare-fun c!389691 () Bool)

(assert (=> d!705137 (= c!389691 (isEmpty!16534 (tail!3818 s!9460)))))

(assert (=> d!705137 (validRegex!2889 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460)))))

(assert (=> d!705137 (= (matchR!3292 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460)) (tail!3818 s!9460)) lt!878418)))

(declare-fun b!2441767 () Bool)

(declare-fun e!1551341 () Bool)

(assert (=> b!2441767 (= e!1551339 e!1551341)))

(declare-fun c!389692 () Bool)

(assert (=> b!2441767 (= c!389692 ((_ is EmptyLang!7177) (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460))))))

(declare-fun b!2441768 () Bool)

(declare-fun res!1036689 () Bool)

(declare-fun e!1551336 () Bool)

(assert (=> b!2441768 (=> res!1036689 e!1551336)))

(declare-fun e!1551340 () Bool)

(assert (=> b!2441768 (= res!1036689 e!1551340)))

(declare-fun res!1036692 () Bool)

(assert (=> b!2441768 (=> (not res!1036692) (not e!1551340))))

(assert (=> b!2441768 (= res!1036692 lt!878418)))

(declare-fun b!2441769 () Bool)

(assert (=> b!2441769 (= e!1551341 (not lt!878418))))

(declare-fun b!2441770 () Bool)

(declare-fun e!1551342 () Bool)

(assert (=> b!2441770 (= e!1551336 e!1551342)))

(declare-fun res!1036694 () Bool)

(assert (=> b!2441770 (=> (not res!1036694) (not e!1551342))))

(assert (=> b!2441770 (= res!1036694 (not lt!878418))))

(declare-fun b!2441771 () Bool)

(declare-fun res!1036691 () Bool)

(assert (=> b!2441771 (=> (not res!1036691) (not e!1551340))))

(assert (=> b!2441771 (= res!1036691 (isEmpty!16534 (tail!3818 (tail!3818 s!9460))))))

(declare-fun b!2441772 () Bool)

(declare-fun e!1551338 () Bool)

(assert (=> b!2441772 (= e!1551342 e!1551338)))

(declare-fun res!1036688 () Bool)

(assert (=> b!2441772 (=> res!1036688 e!1551338)))

(assert (=> b!2441772 (= res!1036688 call!149636)))

(declare-fun b!2441773 () Bool)

(assert (=> b!2441773 (= e!1551337 (nullable!2198 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460))))))

(declare-fun b!2441774 () Bool)

(assert (=> b!2441774 (= e!1551340 (= (head!5545 (tail!3818 s!9460)) (c!389219 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460)))))))

(declare-fun b!2441775 () Bool)

(declare-fun res!1036693 () Bool)

(assert (=> b!2441775 (=> (not res!1036693) (not e!1551340))))

(assert (=> b!2441775 (= res!1036693 (not call!149636))))

(declare-fun bm!149631 () Bool)

(assert (=> bm!149631 (= call!149636 (isEmpty!16534 (tail!3818 s!9460)))))

(declare-fun b!2441776 () Bool)

(declare-fun res!1036687 () Bool)

(assert (=> b!2441776 (=> res!1036687 e!1551338)))

(assert (=> b!2441776 (= res!1036687 (not (isEmpty!16534 (tail!3818 (tail!3818 s!9460)))))))

(declare-fun b!2441777 () Bool)

(assert (=> b!2441777 (= e!1551337 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))) (tail!3818 (tail!3818 s!9460))))))

(declare-fun b!2441778 () Bool)

(declare-fun res!1036690 () Bool)

(assert (=> b!2441778 (=> res!1036690 e!1551336)))

(assert (=> b!2441778 (= res!1036690 (not ((_ is ElementMatch!7177) (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460)))))))

(assert (=> b!2441778 (= e!1551341 e!1551336)))

(declare-fun b!2441779 () Bool)

(assert (=> b!2441779 (= e!1551338 (not (= (head!5545 (tail!3818 s!9460)) (c!389219 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460))))))))

(assert (= (and d!705137 c!389691) b!2441773))

(assert (= (and d!705137 (not c!389691)) b!2441777))

(assert (= (and d!705137 c!389693) b!2441766))

(assert (= (and d!705137 (not c!389693)) b!2441767))

(assert (= (and b!2441767 c!389692) b!2441769))

(assert (= (and b!2441767 (not c!389692)) b!2441778))

(assert (= (and b!2441778 (not res!1036690)) b!2441768))

(assert (= (and b!2441768 res!1036692) b!2441775))

(assert (= (and b!2441775 res!1036693) b!2441771))

(assert (= (and b!2441771 res!1036691) b!2441774))

(assert (= (and b!2441768 (not res!1036689)) b!2441770))

(assert (= (and b!2441770 res!1036694) b!2441772))

(assert (= (and b!2441772 (not res!1036688)) b!2441776))

(assert (= (and b!2441776 (not res!1036687)) b!2441779))

(assert (= (or b!2441766 b!2441775 b!2441772) bm!149631))

(assert (=> b!2441776 m!2818197))

(assert (=> b!2441776 m!2819045))

(assert (=> b!2441776 m!2819045))

(assert (=> b!2441776 m!2819047))

(assert (=> b!2441779 m!2818197))

(assert (=> b!2441779 m!2819049))

(assert (=> b!2441771 m!2818197))

(assert (=> b!2441771 m!2819045))

(assert (=> b!2441771 m!2819045))

(assert (=> b!2441771 m!2819047))

(assert (=> d!705137 m!2818197))

(assert (=> d!705137 m!2818199))

(assert (=> d!705137 m!2819041))

(declare-fun m!2819693 () Bool)

(assert (=> d!705137 m!2819693))

(assert (=> bm!149631 m!2818197))

(assert (=> bm!149631 m!2818199))

(assert (=> b!2441773 m!2819041))

(declare-fun m!2819695 () Bool)

(assert (=> b!2441773 m!2819695))

(assert (=> b!2441774 m!2818197))

(assert (=> b!2441774 m!2819049))

(assert (=> b!2441777 m!2818197))

(assert (=> b!2441777 m!2819049))

(assert (=> b!2441777 m!2819041))

(assert (=> b!2441777 m!2819049))

(declare-fun m!2819697 () Bool)

(assert (=> b!2441777 m!2819697))

(assert (=> b!2441777 m!2818197))

(assert (=> b!2441777 m!2819045))

(assert (=> b!2441777 m!2819697))

(assert (=> b!2441777 m!2819045))

(declare-fun m!2819699 () Bool)

(assert (=> b!2441777 m!2819699))

(assert (=> b!2440975 d!705137))

(declare-fun b!2441780 () Bool)

(declare-fun e!1551346 () Regex!7177)

(declare-fun e!1551343 () Regex!7177)

(assert (=> b!2441780 (= e!1551346 e!1551343)))

(declare-fun c!389696 () Bool)

(assert (=> b!2441780 (= c!389696 ((_ is ElementMatch!7177) (regTwo!14866 r!13927)))))

(declare-fun b!2441781 () Bool)

(assert (=> b!2441781 (= e!1551343 (ite (= (head!5545 s!9460) (c!389219 (regTwo!14866 r!13927))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389697 () Bool)

(declare-fun c!389695 () Bool)

(declare-fun call!149640 () Regex!7177)

(declare-fun bm!149632 () Bool)

(assert (=> bm!149632 (= call!149640 (derivativeStep!1852 (ite c!389697 (regOne!14867 (regTwo!14866 r!13927)) (ite c!389695 (reg!7506 (regTwo!14866 r!13927)) (regOne!14866 (regTwo!14866 r!13927)))) (head!5545 s!9460)))))

(declare-fun b!2441783 () Bool)

(declare-fun c!389698 () Bool)

(assert (=> b!2441783 (= c!389698 (nullable!2198 (regOne!14866 (regTwo!14866 r!13927))))))

(declare-fun e!1551344 () Regex!7177)

(declare-fun e!1551345 () Regex!7177)

(assert (=> b!2441783 (= e!1551344 e!1551345)))

(declare-fun b!2441784 () Bool)

(declare-fun call!149637 () Regex!7177)

(assert (=> b!2441784 (= e!1551344 (Concat!11813 call!149637 (regTwo!14866 r!13927)))))

(declare-fun b!2441785 () Bool)

(assert (=> b!2441785 (= c!389697 ((_ is Union!7177) (regTwo!14866 r!13927)))))

(declare-fun e!1551347 () Regex!7177)

(assert (=> b!2441785 (= e!1551343 e!1551347)))

(declare-fun bm!149633 () Bool)

(assert (=> bm!149633 (= call!149637 call!149640)))

(declare-fun bm!149634 () Bool)

(declare-fun call!149638 () Regex!7177)

(declare-fun call!149639 () Regex!7177)

(assert (=> bm!149634 (= call!149638 call!149639)))

(declare-fun bm!149635 () Bool)

(assert (=> bm!149635 (= call!149639 (derivativeStep!1852 (ite c!389697 (regTwo!14867 (regTwo!14866 r!13927)) (ite c!389698 (regTwo!14866 (regTwo!14866 r!13927)) (regOne!14866 (regTwo!14866 r!13927)))) (head!5545 s!9460)))))

(declare-fun b!2441782 () Bool)

(assert (=> b!2441782 (= e!1551345 (Union!7177 (Concat!11813 call!149637 (regTwo!14866 (regTwo!14866 r!13927))) call!149638))))

(declare-fun d!705139 () Bool)

(declare-fun lt!878419 () Regex!7177)

(assert (=> d!705139 (validRegex!2889 lt!878419)))

(assert (=> d!705139 (= lt!878419 e!1551346)))

(declare-fun c!389694 () Bool)

(assert (=> d!705139 (= c!389694 (or ((_ is EmptyExpr!7177) (regTwo!14866 r!13927)) ((_ is EmptyLang!7177) (regTwo!14866 r!13927))))))

(assert (=> d!705139 (validRegex!2889 (regTwo!14866 r!13927))))

(assert (=> d!705139 (= (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 s!9460)) lt!878419)))

(declare-fun b!2441786 () Bool)

(assert (=> b!2441786 (= e!1551347 e!1551344)))

(assert (=> b!2441786 (= c!389695 ((_ is Star!7177) (regTwo!14866 r!13927)))))

(declare-fun b!2441787 () Bool)

(assert (=> b!2441787 (= e!1551346 EmptyLang!7177)))

(declare-fun b!2441788 () Bool)

(assert (=> b!2441788 (= e!1551347 (Union!7177 call!149640 call!149639))))

(declare-fun b!2441789 () Bool)

(assert (=> b!2441789 (= e!1551345 (Union!7177 (Concat!11813 call!149638 (regTwo!14866 (regTwo!14866 r!13927))) EmptyLang!7177))))

(assert (= (and d!705139 c!389694) b!2441787))

(assert (= (and d!705139 (not c!389694)) b!2441780))

(assert (= (and b!2441780 c!389696) b!2441781))

(assert (= (and b!2441780 (not c!389696)) b!2441785))

(assert (= (and b!2441785 c!389697) b!2441788))

(assert (= (and b!2441785 (not c!389697)) b!2441786))

(assert (= (and b!2441786 c!389695) b!2441784))

(assert (= (and b!2441786 (not c!389695)) b!2441783))

(assert (= (and b!2441783 c!389698) b!2441782))

(assert (= (and b!2441783 (not c!389698)) b!2441789))

(assert (= (or b!2441782 b!2441789) bm!149634))

(assert (= (or b!2441784 b!2441782) bm!149633))

(assert (= (or b!2441788 bm!149633) bm!149632))

(assert (= (or b!2441788 bm!149634) bm!149635))

(assert (=> bm!149632 m!2818201))

(declare-fun m!2819701 () Bool)

(assert (=> bm!149632 m!2819701))

(declare-fun m!2819703 () Bool)

(assert (=> b!2441783 m!2819703))

(assert (=> bm!149635 m!2818201))

(declare-fun m!2819705 () Bool)

(assert (=> bm!149635 m!2819705))

(declare-fun m!2819707 () Bool)

(assert (=> d!705139 m!2819707))

(assert (=> d!705139 m!2819037))

(assert (=> b!2440975 d!705139))

(assert (=> b!2440975 d!704721))

(assert (=> b!2440975 d!704789))

(declare-fun d!705141 () Bool)

(assert (not d!705141))

(assert (=> b!2441033 d!705141))

(declare-fun d!705143 () Bool)

(assert (not d!705143))

(assert (=> b!2441033 d!705143))

(assert (=> b!2441033 d!704923))

(assert (=> b!2441033 d!704953))

(assert (=> d!704859 d!704791))

(declare-fun b!2441790 () Bool)

(declare-fun e!1551354 () Bool)

(declare-fun e!1551349 () Bool)

(assert (=> b!2441790 (= e!1551354 e!1551349)))

(declare-fun c!389700 () Bool)

(assert (=> b!2441790 (= c!389700 ((_ is Star!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(declare-fun c!389699 () Bool)

(declare-fun call!149642 () Bool)

(declare-fun bm!149636 () Bool)

(assert (=> bm!149636 (= call!149642 (validRegex!2889 (ite c!389699 (regOne!14867 (derivativeStep!1852 r!13927 (head!5545 s!9460))) (regTwo!14866 (derivativeStep!1852 r!13927 (head!5545 s!9460))))))))

(declare-fun b!2441791 () Bool)

(declare-fun e!1551348 () Bool)

(assert (=> b!2441791 (= e!1551349 e!1551348)))

(declare-fun res!1036698 () Bool)

(assert (=> b!2441791 (= res!1036698 (not (nullable!2198 (reg!7506 (derivativeStep!1852 r!13927 (head!5545 s!9460))))))))

(assert (=> b!2441791 (=> (not res!1036698) (not e!1551348))))

(declare-fun d!705145 () Bool)

(declare-fun res!1036699 () Bool)

(assert (=> d!705145 (=> res!1036699 e!1551354)))

(assert (=> d!705145 (= res!1036699 ((_ is ElementMatch!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(assert (=> d!705145 (= (validRegex!2889 (derivativeStep!1852 r!13927 (head!5545 s!9460))) e!1551354)))

(declare-fun b!2441792 () Bool)

(declare-fun e!1551352 () Bool)

(assert (=> b!2441792 (= e!1551352 call!149642)))

(declare-fun b!2441793 () Bool)

(declare-fun e!1551351 () Bool)

(declare-fun call!149643 () Bool)

(assert (=> b!2441793 (= e!1551351 call!149643)))

(declare-fun b!2441794 () Bool)

(declare-fun res!1036696 () Bool)

(declare-fun e!1551350 () Bool)

(assert (=> b!2441794 (=> res!1036696 e!1551350)))

(assert (=> b!2441794 (= res!1036696 (not ((_ is Concat!11813) (derivativeStep!1852 r!13927 (head!5545 s!9460)))))))

(declare-fun e!1551353 () Bool)

(assert (=> b!2441794 (= e!1551353 e!1551350)))

(declare-fun b!2441795 () Bool)

(declare-fun res!1036695 () Bool)

(assert (=> b!2441795 (=> (not res!1036695) (not e!1551351))))

(assert (=> b!2441795 (= res!1036695 call!149642)))

(assert (=> b!2441795 (= e!1551353 e!1551351)))

(declare-fun b!2441796 () Bool)

(assert (=> b!2441796 (= e!1551349 e!1551353)))

(assert (=> b!2441796 (= c!389699 ((_ is Union!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(declare-fun b!2441797 () Bool)

(assert (=> b!2441797 (= e!1551350 e!1551352)))

(declare-fun res!1036697 () Bool)

(assert (=> b!2441797 (=> (not res!1036697) (not e!1551352))))

(assert (=> b!2441797 (= res!1036697 call!149643)))

(declare-fun b!2441798 () Bool)

(declare-fun call!149641 () Bool)

(assert (=> b!2441798 (= e!1551348 call!149641)))

(declare-fun bm!149637 () Bool)

(assert (=> bm!149637 (= call!149643 call!149641)))

(declare-fun bm!149638 () Bool)

(assert (=> bm!149638 (= call!149641 (validRegex!2889 (ite c!389700 (reg!7506 (derivativeStep!1852 r!13927 (head!5545 s!9460))) (ite c!389699 (regTwo!14867 (derivativeStep!1852 r!13927 (head!5545 s!9460))) (regOne!14866 (derivativeStep!1852 r!13927 (head!5545 s!9460)))))))))

(assert (= (and d!705145 (not res!1036699)) b!2441790))

(assert (= (and b!2441790 c!389700) b!2441791))

(assert (= (and b!2441790 (not c!389700)) b!2441796))

(assert (= (and b!2441791 res!1036698) b!2441798))

(assert (= (and b!2441796 c!389699) b!2441795))

(assert (= (and b!2441796 (not c!389699)) b!2441794))

(assert (= (and b!2441795 res!1036695) b!2441793))

(assert (= (and b!2441794 (not res!1036696)) b!2441797))

(assert (= (and b!2441797 res!1036697) b!2441792))

(assert (= (or b!2441795 b!2441792) bm!149636))

(assert (= (or b!2441793 b!2441797) bm!149637))

(assert (= (or b!2441798 bm!149637) bm!149638))

(declare-fun m!2819709 () Bool)

(assert (=> bm!149636 m!2819709))

(declare-fun m!2819711 () Bool)

(assert (=> b!2441791 m!2819711))

(declare-fun m!2819713 () Bool)

(assert (=> bm!149638 m!2819713))

(assert (=> d!704859 d!705145))

(declare-fun d!705147 () Bool)

(declare-fun lt!878420 () Int)

(assert (=> d!705147 (>= lt!878420 0)))

(declare-fun e!1551355 () Int)

(assert (=> d!705147 (= lt!878420 e!1551355)))

(declare-fun c!389701 () Bool)

(assert (=> d!705147 (= c!389701 ((_ is Nil!28492) (t!208567 lt!878269)))))

(assert (=> d!705147 (= (size!22262 (t!208567 lt!878269)) lt!878420)))

(declare-fun b!2441799 () Bool)

(assert (=> b!2441799 (= e!1551355 0)))

(declare-fun b!2441800 () Bool)

(assert (=> b!2441800 (= e!1551355 (+ 1 (size!22262 (t!208567 (t!208567 lt!878269)))))))

(assert (= (and d!705147 c!389701) b!2441799))

(assert (= (and d!705147 (not c!389701)) b!2441800))

(declare-fun m!2819715 () Bool)

(assert (=> b!2441800 m!2819715))

(assert (=> b!2441108 d!705147))

(declare-fun d!705149 () Bool)

(assert (=> d!705149 true))

(assert (=> d!705149 true))

(declare-fun res!1036700 () Bool)

(assert (=> d!705149 (= (choose!14482 lambda!92385) res!1036700)))

(assert (=> d!704823 d!705149))

(declare-fun d!705151 () Bool)

(assert (=> d!705151 (= (isEmptyExpr!215 lt!878359) ((_ is EmptyExpr!7177) lt!878359))))

(assert (=> b!2440962 d!705151))

(declare-fun d!705153 () Bool)

(assert (=> d!705153 (= (Exists!1213 (ite c!389523 lambda!92426 lambda!92427)) (choose!14482 (ite c!389523 lambda!92426 lambda!92427)))))

(declare-fun bs!465059 () Bool)

(assert (= bs!465059 d!705153))

(declare-fun m!2819717 () Bool)

(assert (=> bs!465059 m!2819717))

(assert (=> bm!149523 d!705153))

(assert (=> bs!464954 d!704793))

(declare-fun b!2441801 () Bool)

(declare-fun e!1551362 () Bool)

(declare-fun e!1551357 () Bool)

(assert (=> b!2441801 (= e!1551362 e!1551357)))

(declare-fun c!389703 () Bool)

(assert (=> b!2441801 (= c!389703 ((_ is Star!7177) (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927))))))

(declare-fun bm!149639 () Bool)

(declare-fun call!149645 () Bool)

(declare-fun c!389702 () Bool)

(assert (=> bm!149639 (= call!149645 (validRegex!2889 (ite c!389702 (regOne!14867 (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927))) (regTwo!14866 (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927))))))))

(declare-fun b!2441802 () Bool)

(declare-fun e!1551356 () Bool)

(assert (=> b!2441802 (= e!1551357 e!1551356)))

(declare-fun res!1036704 () Bool)

(assert (=> b!2441802 (= res!1036704 (not (nullable!2198 (reg!7506 (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927))))))))

(assert (=> b!2441802 (=> (not res!1036704) (not e!1551356))))

(declare-fun d!705155 () Bool)

(declare-fun res!1036705 () Bool)

(assert (=> d!705155 (=> res!1036705 e!1551362)))

(assert (=> d!705155 (= res!1036705 ((_ is ElementMatch!7177) (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927))))))

(assert (=> d!705155 (= (validRegex!2889 (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927))) e!1551362)))

(declare-fun b!2441803 () Bool)

(declare-fun e!1551360 () Bool)

(assert (=> b!2441803 (= e!1551360 call!149645)))

(declare-fun b!2441804 () Bool)

(declare-fun e!1551359 () Bool)

(declare-fun call!149646 () Bool)

(assert (=> b!2441804 (= e!1551359 call!149646)))

(declare-fun b!2441805 () Bool)

(declare-fun res!1036702 () Bool)

(declare-fun e!1551358 () Bool)

(assert (=> b!2441805 (=> res!1036702 e!1551358)))

(assert (=> b!2441805 (= res!1036702 (not ((_ is Concat!11813) (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927)))))))

(declare-fun e!1551361 () Bool)

(assert (=> b!2441805 (= e!1551361 e!1551358)))

(declare-fun b!2441806 () Bool)

(declare-fun res!1036701 () Bool)

(assert (=> b!2441806 (=> (not res!1036701) (not e!1551359))))

(assert (=> b!2441806 (= res!1036701 call!149645)))

(assert (=> b!2441806 (= e!1551361 e!1551359)))

(declare-fun b!2441807 () Bool)

(assert (=> b!2441807 (= e!1551357 e!1551361)))

(assert (=> b!2441807 (= c!389702 ((_ is Union!7177) (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927))))))

(declare-fun b!2441808 () Bool)

(assert (=> b!2441808 (= e!1551358 e!1551360)))

(declare-fun res!1036703 () Bool)

(assert (=> b!2441808 (=> (not res!1036703) (not e!1551360))))

(assert (=> b!2441808 (= res!1036703 call!149646)))

(declare-fun b!2441809 () Bool)

(declare-fun call!149644 () Bool)

(assert (=> b!2441809 (= e!1551356 call!149644)))

(declare-fun bm!149640 () Bool)

(assert (=> bm!149640 (= call!149646 call!149644)))

(declare-fun bm!149641 () Bool)

(assert (=> bm!149641 (= call!149644 (validRegex!2889 (ite c!389703 (reg!7506 (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927))) (ite c!389702 (regTwo!14867 (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927))) (regOne!14866 (ite c!389488 (regOne!14867 r!13927) (regTwo!14866 r!13927)))))))))

(assert (= (and d!705155 (not res!1036705)) b!2441801))

(assert (= (and b!2441801 c!389703) b!2441802))

(assert (= (and b!2441801 (not c!389703)) b!2441807))

(assert (= (and b!2441802 res!1036704) b!2441809))

(assert (= (and b!2441807 c!389702) b!2441806))

(assert (= (and b!2441807 (not c!389702)) b!2441805))

(assert (= (and b!2441806 res!1036701) b!2441804))

(assert (= (and b!2441805 (not res!1036702)) b!2441808))

(assert (= (and b!2441808 res!1036703) b!2441803))

(assert (= (or b!2441806 b!2441803) bm!149639))

(assert (= (or b!2441804 b!2441808) bm!149640))

(assert (= (or b!2441809 bm!149640) bm!149641))

(declare-fun m!2819719 () Bool)

(assert (=> bm!149639 m!2819719))

(declare-fun m!2819721 () Bool)

(assert (=> b!2441802 m!2819721))

(declare-fun m!2819723 () Bool)

(assert (=> bm!149641 m!2819723))

(assert (=> bm!149500 d!705155))

(declare-fun d!705157 () Bool)

(assert (=> d!705157 (= (isEmpty!16534 (_1!16596 (get!8795 lt!878295))) ((_ is Nil!28492) (_1!16596 (get!8795 lt!878295))))))

(assert (=> bm!149526 d!705157))

(declare-fun b!2441810 () Bool)

(declare-fun e!1551369 () Bool)

(declare-fun e!1551364 () Bool)

(assert (=> b!2441810 (= e!1551369 e!1551364)))

(declare-fun c!389705 () Bool)

(assert (=> b!2441810 (= c!389705 ((_ is Star!7177) (h!33894 (t!208568 l!9164))))))

(declare-fun bm!149642 () Bool)

(declare-fun call!149648 () Bool)

(declare-fun c!389704 () Bool)

(assert (=> bm!149642 (= call!149648 (validRegex!2889 (ite c!389704 (regOne!14867 (h!33894 (t!208568 l!9164))) (regTwo!14866 (h!33894 (t!208568 l!9164))))))))

(declare-fun b!2441811 () Bool)

(declare-fun e!1551363 () Bool)

(assert (=> b!2441811 (= e!1551364 e!1551363)))

(declare-fun res!1036709 () Bool)

(assert (=> b!2441811 (= res!1036709 (not (nullable!2198 (reg!7506 (h!33894 (t!208568 l!9164))))))))

(assert (=> b!2441811 (=> (not res!1036709) (not e!1551363))))

(declare-fun d!705159 () Bool)

(declare-fun res!1036710 () Bool)

(assert (=> d!705159 (=> res!1036710 e!1551369)))

(assert (=> d!705159 (= res!1036710 ((_ is ElementMatch!7177) (h!33894 (t!208568 l!9164))))))

(assert (=> d!705159 (= (validRegex!2889 (h!33894 (t!208568 l!9164))) e!1551369)))

(declare-fun b!2441812 () Bool)

(declare-fun e!1551367 () Bool)

(assert (=> b!2441812 (= e!1551367 call!149648)))

(declare-fun b!2441813 () Bool)

(declare-fun e!1551366 () Bool)

(declare-fun call!149649 () Bool)

(assert (=> b!2441813 (= e!1551366 call!149649)))

(declare-fun b!2441814 () Bool)

(declare-fun res!1036707 () Bool)

(declare-fun e!1551365 () Bool)

(assert (=> b!2441814 (=> res!1036707 e!1551365)))

(assert (=> b!2441814 (= res!1036707 (not ((_ is Concat!11813) (h!33894 (t!208568 l!9164)))))))

(declare-fun e!1551368 () Bool)

(assert (=> b!2441814 (= e!1551368 e!1551365)))

(declare-fun b!2441815 () Bool)

(declare-fun res!1036706 () Bool)

(assert (=> b!2441815 (=> (not res!1036706) (not e!1551366))))

(assert (=> b!2441815 (= res!1036706 call!149648)))

(assert (=> b!2441815 (= e!1551368 e!1551366)))

(declare-fun b!2441816 () Bool)

(assert (=> b!2441816 (= e!1551364 e!1551368)))

(assert (=> b!2441816 (= c!389704 ((_ is Union!7177) (h!33894 (t!208568 l!9164))))))

(declare-fun b!2441817 () Bool)

(assert (=> b!2441817 (= e!1551365 e!1551367)))

(declare-fun res!1036708 () Bool)

(assert (=> b!2441817 (=> (not res!1036708) (not e!1551367))))

(assert (=> b!2441817 (= res!1036708 call!149649)))

(declare-fun b!2441818 () Bool)

(declare-fun call!149647 () Bool)

(assert (=> b!2441818 (= e!1551363 call!149647)))

(declare-fun bm!149643 () Bool)

(assert (=> bm!149643 (= call!149649 call!149647)))

(declare-fun bm!149644 () Bool)

(assert (=> bm!149644 (= call!149647 (validRegex!2889 (ite c!389705 (reg!7506 (h!33894 (t!208568 l!9164))) (ite c!389704 (regTwo!14867 (h!33894 (t!208568 l!9164))) (regOne!14866 (h!33894 (t!208568 l!9164)))))))))

(assert (= (and d!705159 (not res!1036710)) b!2441810))

(assert (= (and b!2441810 c!389705) b!2441811))

(assert (= (and b!2441810 (not c!389705)) b!2441816))

(assert (= (and b!2441811 res!1036709) b!2441818))

(assert (= (and b!2441816 c!389704) b!2441815))

(assert (= (and b!2441816 (not c!389704)) b!2441814))

(assert (= (and b!2441815 res!1036706) b!2441813))

(assert (= (and b!2441814 (not res!1036707)) b!2441817))

(assert (= (and b!2441817 res!1036708) b!2441812))

(assert (= (or b!2441815 b!2441812) bm!149642))

(assert (= (or b!2441813 b!2441817) bm!149643))

(assert (= (or b!2441818 bm!149643) bm!149644))

(declare-fun m!2819725 () Bool)

(assert (=> bm!149642 m!2819725))

(declare-fun m!2819727 () Bool)

(assert (=> b!2441811 m!2819727))

(declare-fun m!2819729 () Bool)

(assert (=> bm!149644 m!2819729))

(assert (=> bs!464956 d!705159))

(declare-fun b!2441819 () Bool)

(declare-fun e!1551373 () Bool)

(declare-fun lt!878421 () Bool)

(declare-fun call!149650 () Bool)

(assert (=> b!2441819 (= e!1551373 (= lt!878421 call!149650))))

(declare-fun d!705161 () Bool)

(assert (=> d!705161 e!1551373))

(declare-fun c!389708 () Bool)

(assert (=> d!705161 (= c!389708 ((_ is EmptyExpr!7177) (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460)))))))

(declare-fun e!1551371 () Bool)

(assert (=> d!705161 (= lt!878421 e!1551371)))

(declare-fun c!389706 () Bool)

(assert (=> d!705161 (= c!389706 (isEmpty!16534 (tail!3818 (tail!3818 s!9460))))))

(assert (=> d!705161 (validRegex!2889 (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))))))

(assert (=> d!705161 (= (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))) (tail!3818 (tail!3818 s!9460))) lt!878421)))

(declare-fun b!2441820 () Bool)

(declare-fun e!1551375 () Bool)

(assert (=> b!2441820 (= e!1551373 e!1551375)))

(declare-fun c!389707 () Bool)

(assert (=> b!2441820 (= c!389707 ((_ is EmptyLang!7177) (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460)))))))

(declare-fun b!2441821 () Bool)

(declare-fun res!1036713 () Bool)

(declare-fun e!1551370 () Bool)

(assert (=> b!2441821 (=> res!1036713 e!1551370)))

(declare-fun e!1551374 () Bool)

(assert (=> b!2441821 (= res!1036713 e!1551374)))

(declare-fun res!1036716 () Bool)

(assert (=> b!2441821 (=> (not res!1036716) (not e!1551374))))

(assert (=> b!2441821 (= res!1036716 lt!878421)))

(declare-fun b!2441822 () Bool)

(assert (=> b!2441822 (= e!1551375 (not lt!878421))))

(declare-fun b!2441823 () Bool)

(declare-fun e!1551376 () Bool)

(assert (=> b!2441823 (= e!1551370 e!1551376)))

(declare-fun res!1036718 () Bool)

(assert (=> b!2441823 (=> (not res!1036718) (not e!1551376))))

(assert (=> b!2441823 (= res!1036718 (not lt!878421))))

(declare-fun b!2441824 () Bool)

(declare-fun res!1036715 () Bool)

(assert (=> b!2441824 (=> (not res!1036715) (not e!1551374))))

(assert (=> b!2441824 (= res!1036715 (isEmpty!16534 (tail!3818 (tail!3818 (tail!3818 s!9460)))))))

(declare-fun b!2441825 () Bool)

(declare-fun e!1551372 () Bool)

(assert (=> b!2441825 (= e!1551376 e!1551372)))

(declare-fun res!1036712 () Bool)

(assert (=> b!2441825 (=> res!1036712 e!1551372)))

(assert (=> b!2441825 (= res!1036712 call!149650)))

(declare-fun b!2441826 () Bool)

(assert (=> b!2441826 (= e!1551371 (nullable!2198 (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460)))))))

(declare-fun b!2441827 () Bool)

(assert (=> b!2441827 (= e!1551374 (= (head!5545 (tail!3818 (tail!3818 s!9460))) (c!389219 (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))))))))

(declare-fun b!2441828 () Bool)

(declare-fun res!1036717 () Bool)

(assert (=> b!2441828 (=> (not res!1036717) (not e!1551374))))

(assert (=> b!2441828 (= res!1036717 (not call!149650))))

(declare-fun bm!149645 () Bool)

(assert (=> bm!149645 (= call!149650 (isEmpty!16534 (tail!3818 (tail!3818 s!9460))))))

(declare-fun b!2441829 () Bool)

(declare-fun res!1036711 () Bool)

(assert (=> b!2441829 (=> res!1036711 e!1551372)))

(assert (=> b!2441829 (= res!1036711 (not (isEmpty!16534 (tail!3818 (tail!3818 (tail!3818 s!9460))))))))

(declare-fun b!2441830 () Bool)

(assert (=> b!2441830 (= e!1551371 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))) (head!5545 (tail!3818 (tail!3818 s!9460)))) (tail!3818 (tail!3818 (tail!3818 s!9460)))))))

(declare-fun b!2441831 () Bool)

(declare-fun res!1036714 () Bool)

(assert (=> b!2441831 (=> res!1036714 e!1551370)))

(assert (=> b!2441831 (= res!1036714 (not ((_ is ElementMatch!7177) (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))))))))

(assert (=> b!2441831 (= e!1551375 e!1551370)))

(declare-fun b!2441832 () Bool)

(assert (=> b!2441832 (= e!1551372 (not (= (head!5545 (tail!3818 (tail!3818 s!9460))) (c!389219 (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460)))))))))

(assert (= (and d!705161 c!389706) b!2441826))

(assert (= (and d!705161 (not c!389706)) b!2441830))

(assert (= (and d!705161 c!389708) b!2441819))

(assert (= (and d!705161 (not c!389708)) b!2441820))

(assert (= (and b!2441820 c!389707) b!2441822))

(assert (= (and b!2441820 (not c!389707)) b!2441831))

(assert (= (and b!2441831 (not res!1036714)) b!2441821))

(assert (= (and b!2441821 res!1036716) b!2441828))

(assert (= (and b!2441828 res!1036717) b!2441824))

(assert (= (and b!2441824 res!1036715) b!2441827))

(assert (= (and b!2441821 (not res!1036713)) b!2441823))

(assert (= (and b!2441823 res!1036718) b!2441825))

(assert (= (and b!2441825 (not res!1036712)) b!2441829))

(assert (= (and b!2441829 (not res!1036711)) b!2441832))

(assert (= (or b!2441819 b!2441828 b!2441825) bm!149645))

(assert (=> b!2441829 m!2819045))

(declare-fun m!2819731 () Bool)

(assert (=> b!2441829 m!2819731))

(assert (=> b!2441829 m!2819731))

(declare-fun m!2819733 () Bool)

(assert (=> b!2441829 m!2819733))

(assert (=> b!2441832 m!2819045))

(declare-fun m!2819735 () Bool)

(assert (=> b!2441832 m!2819735))

(assert (=> b!2441824 m!2819045))

(assert (=> b!2441824 m!2819731))

(assert (=> b!2441824 m!2819731))

(assert (=> b!2441824 m!2819733))

(assert (=> d!705161 m!2819045))

(assert (=> d!705161 m!2819047))

(assert (=> d!705161 m!2819195))

(declare-fun m!2819737 () Bool)

(assert (=> d!705161 m!2819737))

(assert (=> bm!149645 m!2819045))

(assert (=> bm!149645 m!2819047))

(assert (=> b!2441826 m!2819195))

(declare-fun m!2819739 () Bool)

(assert (=> b!2441826 m!2819739))

(assert (=> b!2441827 m!2819045))

(assert (=> b!2441827 m!2819735))

(assert (=> b!2441830 m!2819045))

(assert (=> b!2441830 m!2819735))

(assert (=> b!2441830 m!2819195))

(assert (=> b!2441830 m!2819735))

(declare-fun m!2819741 () Bool)

(assert (=> b!2441830 m!2819741))

(assert (=> b!2441830 m!2819045))

(assert (=> b!2441830 m!2819731))

(assert (=> b!2441830 m!2819741))

(assert (=> b!2441830 m!2819731))

(declare-fun m!2819743 () Bool)

(assert (=> b!2441830 m!2819743))

(assert (=> b!2441154 d!705161))

(declare-fun b!2441833 () Bool)

(declare-fun e!1551380 () Regex!7177)

(declare-fun e!1551377 () Regex!7177)

(assert (=> b!2441833 (= e!1551380 e!1551377)))

(declare-fun c!389711 () Bool)

(assert (=> b!2441833 (= c!389711 ((_ is ElementMatch!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(declare-fun b!2441834 () Bool)

(assert (=> b!2441834 (= e!1551377 (ite (= (head!5545 (tail!3818 s!9460)) (c!389219 (derivativeStep!1852 r!13927 (head!5545 s!9460)))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun call!149654 () Regex!7177)

(declare-fun bm!149646 () Bool)

(declare-fun c!389712 () Bool)

(declare-fun c!389710 () Bool)

(assert (=> bm!149646 (= call!149654 (derivativeStep!1852 (ite c!389712 (regOne!14867 (derivativeStep!1852 r!13927 (head!5545 s!9460))) (ite c!389710 (reg!7506 (derivativeStep!1852 r!13927 (head!5545 s!9460))) (regOne!14866 (derivativeStep!1852 r!13927 (head!5545 s!9460))))) (head!5545 (tail!3818 s!9460))))))

(declare-fun b!2441836 () Bool)

(declare-fun c!389713 () Bool)

(assert (=> b!2441836 (= c!389713 (nullable!2198 (regOne!14866 (derivativeStep!1852 r!13927 (head!5545 s!9460)))))))

(declare-fun e!1551378 () Regex!7177)

(declare-fun e!1551379 () Regex!7177)

(assert (=> b!2441836 (= e!1551378 e!1551379)))

(declare-fun b!2441837 () Bool)

(declare-fun call!149651 () Regex!7177)

(assert (=> b!2441837 (= e!1551378 (Concat!11813 call!149651 (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(declare-fun b!2441838 () Bool)

(assert (=> b!2441838 (= c!389712 ((_ is Union!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(declare-fun e!1551381 () Regex!7177)

(assert (=> b!2441838 (= e!1551377 e!1551381)))

(declare-fun bm!149647 () Bool)

(assert (=> bm!149647 (= call!149651 call!149654)))

(declare-fun bm!149648 () Bool)

(declare-fun call!149652 () Regex!7177)

(declare-fun call!149653 () Regex!7177)

(assert (=> bm!149648 (= call!149652 call!149653)))

(declare-fun bm!149649 () Bool)

(assert (=> bm!149649 (= call!149653 (derivativeStep!1852 (ite c!389712 (regTwo!14867 (derivativeStep!1852 r!13927 (head!5545 s!9460))) (ite c!389713 (regTwo!14866 (derivativeStep!1852 r!13927 (head!5545 s!9460))) (regOne!14866 (derivativeStep!1852 r!13927 (head!5545 s!9460))))) (head!5545 (tail!3818 s!9460))))))

(declare-fun b!2441835 () Bool)

(assert (=> b!2441835 (= e!1551379 (Union!7177 (Concat!11813 call!149651 (regTwo!14866 (derivativeStep!1852 r!13927 (head!5545 s!9460)))) call!149652))))

(declare-fun d!705163 () Bool)

(declare-fun lt!878422 () Regex!7177)

(assert (=> d!705163 (validRegex!2889 lt!878422)))

(assert (=> d!705163 (= lt!878422 e!1551380)))

(declare-fun c!389709 () Bool)

(assert (=> d!705163 (= c!389709 (or ((_ is EmptyExpr!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460))) ((_ is EmptyLang!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460)))))))

(assert (=> d!705163 (validRegex!2889 (derivativeStep!1852 r!13927 (head!5545 s!9460)))))

(assert (=> d!705163 (= (derivativeStep!1852 (derivativeStep!1852 r!13927 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))) lt!878422)))

(declare-fun b!2441839 () Bool)

(assert (=> b!2441839 (= e!1551381 e!1551378)))

(assert (=> b!2441839 (= c!389710 ((_ is Star!7177) (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(declare-fun b!2441840 () Bool)

(assert (=> b!2441840 (= e!1551380 EmptyLang!7177)))

(declare-fun b!2441841 () Bool)

(assert (=> b!2441841 (= e!1551381 (Union!7177 call!149654 call!149653))))

(declare-fun b!2441842 () Bool)

(assert (=> b!2441842 (= e!1551379 (Union!7177 (Concat!11813 call!149652 (regTwo!14866 (derivativeStep!1852 r!13927 (head!5545 s!9460)))) EmptyLang!7177))))

(assert (= (and d!705163 c!389709) b!2441840))

(assert (= (and d!705163 (not c!389709)) b!2441833))

(assert (= (and b!2441833 c!389711) b!2441834))

(assert (= (and b!2441833 (not c!389711)) b!2441838))

(assert (= (and b!2441838 c!389712) b!2441841))

(assert (= (and b!2441838 (not c!389712)) b!2441839))

(assert (= (and b!2441839 c!389710) b!2441837))

(assert (= (and b!2441839 (not c!389710)) b!2441836))

(assert (= (and b!2441836 c!389713) b!2441835))

(assert (= (and b!2441836 (not c!389713)) b!2441842))

(assert (= (or b!2441835 b!2441842) bm!149648))

(assert (= (or b!2441837 b!2441835) bm!149647))

(assert (= (or b!2441841 bm!149647) bm!149646))

(assert (= (or b!2441841 bm!149648) bm!149649))

(assert (=> bm!149646 m!2819049))

(declare-fun m!2819745 () Bool)

(assert (=> bm!149646 m!2819745))

(declare-fun m!2819747 () Bool)

(assert (=> b!2441836 m!2819747))

(assert (=> bm!149649 m!2819049))

(declare-fun m!2819749 () Bool)

(assert (=> bm!149649 m!2819749))

(declare-fun m!2819751 () Bool)

(assert (=> d!705163 m!2819751))

(assert (=> d!705163 m!2818417))

(assert (=> d!705163 m!2819191))

(assert (=> b!2441154 d!705163))

(assert (=> b!2441154 d!704905))

(assert (=> b!2441154 d!704921))

(declare-fun b!2441843 () Bool)

(declare-fun e!1551385 () Bool)

(declare-fun lt!878423 () Bool)

(declare-fun call!149655 () Bool)

(assert (=> b!2441843 (= e!1551385 (= lt!878423 call!149655))))

(declare-fun d!705165 () Bool)

(assert (=> d!705165 e!1551385))

(declare-fun c!389716 () Bool)

(assert (=> d!705165 (= c!389716 ((_ is EmptyExpr!7177) (regTwo!14866 r!13927)))))

(declare-fun e!1551383 () Bool)

(assert (=> d!705165 (= lt!878423 e!1551383)))

(declare-fun c!389714 () Bool)

(assert (=> d!705165 (= c!389714 (isEmpty!16534 (_2!16596 (get!8795 lt!878352))))))

(assert (=> d!705165 (validRegex!2889 (regTwo!14866 r!13927))))

(assert (=> d!705165 (= (matchR!3292 (regTwo!14866 r!13927) (_2!16596 (get!8795 lt!878352))) lt!878423)))

(declare-fun b!2441844 () Bool)

(declare-fun e!1551387 () Bool)

(assert (=> b!2441844 (= e!1551385 e!1551387)))

(declare-fun c!389715 () Bool)

(assert (=> b!2441844 (= c!389715 ((_ is EmptyLang!7177) (regTwo!14866 r!13927)))))

(declare-fun b!2441845 () Bool)

(declare-fun res!1036721 () Bool)

(declare-fun e!1551382 () Bool)

(assert (=> b!2441845 (=> res!1036721 e!1551382)))

(declare-fun e!1551386 () Bool)

(assert (=> b!2441845 (= res!1036721 e!1551386)))

(declare-fun res!1036724 () Bool)

(assert (=> b!2441845 (=> (not res!1036724) (not e!1551386))))

(assert (=> b!2441845 (= res!1036724 lt!878423)))

(declare-fun b!2441846 () Bool)

(assert (=> b!2441846 (= e!1551387 (not lt!878423))))

(declare-fun b!2441847 () Bool)

(declare-fun e!1551388 () Bool)

(assert (=> b!2441847 (= e!1551382 e!1551388)))

(declare-fun res!1036726 () Bool)

(assert (=> b!2441847 (=> (not res!1036726) (not e!1551388))))

(assert (=> b!2441847 (= res!1036726 (not lt!878423))))

(declare-fun b!2441848 () Bool)

(declare-fun res!1036723 () Bool)

(assert (=> b!2441848 (=> (not res!1036723) (not e!1551386))))

(assert (=> b!2441848 (= res!1036723 (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878352)))))))

(declare-fun b!2441849 () Bool)

(declare-fun e!1551384 () Bool)

(assert (=> b!2441849 (= e!1551388 e!1551384)))

(declare-fun res!1036720 () Bool)

(assert (=> b!2441849 (=> res!1036720 e!1551384)))

(assert (=> b!2441849 (= res!1036720 call!149655)))

(declare-fun b!2441850 () Bool)

(assert (=> b!2441850 (= e!1551383 (nullable!2198 (regTwo!14866 r!13927)))))

(declare-fun b!2441851 () Bool)

(assert (=> b!2441851 (= e!1551386 (= (head!5545 (_2!16596 (get!8795 lt!878352))) (c!389219 (regTwo!14866 r!13927))))))

(declare-fun b!2441852 () Bool)

(declare-fun res!1036725 () Bool)

(assert (=> b!2441852 (=> (not res!1036725) (not e!1551386))))

(assert (=> b!2441852 (= res!1036725 (not call!149655))))

(declare-fun bm!149650 () Bool)

(assert (=> bm!149650 (= call!149655 (isEmpty!16534 (_2!16596 (get!8795 lt!878352))))))

(declare-fun b!2441853 () Bool)

(declare-fun res!1036719 () Bool)

(assert (=> b!2441853 (=> res!1036719 e!1551384)))

(assert (=> b!2441853 (= res!1036719 (not (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878352))))))))

(declare-fun b!2441854 () Bool)

(assert (=> b!2441854 (= e!1551383 (matchR!3292 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878352)))) (tail!3818 (_2!16596 (get!8795 lt!878352)))))))

(declare-fun b!2441855 () Bool)

(declare-fun res!1036722 () Bool)

(assert (=> b!2441855 (=> res!1036722 e!1551382)))

(assert (=> b!2441855 (= res!1036722 (not ((_ is ElementMatch!7177) (regTwo!14866 r!13927))))))

(assert (=> b!2441855 (= e!1551387 e!1551382)))

(declare-fun b!2441856 () Bool)

(assert (=> b!2441856 (= e!1551384 (not (= (head!5545 (_2!16596 (get!8795 lt!878352))) (c!389219 (regTwo!14866 r!13927)))))))

(assert (= (and d!705165 c!389714) b!2441850))

(assert (= (and d!705165 (not c!389714)) b!2441854))

(assert (= (and d!705165 c!389716) b!2441843))

(assert (= (and d!705165 (not c!389716)) b!2441844))

(assert (= (and b!2441844 c!389715) b!2441846))

(assert (= (and b!2441844 (not c!389715)) b!2441855))

(assert (= (and b!2441855 (not res!1036722)) b!2441845))

(assert (= (and b!2441845 res!1036724) b!2441852))

(assert (= (and b!2441852 res!1036725) b!2441848))

(assert (= (and b!2441848 res!1036723) b!2441851))

(assert (= (and b!2441845 (not res!1036721)) b!2441847))

(assert (= (and b!2441847 res!1036726) b!2441849))

(assert (= (and b!2441849 (not res!1036720)) b!2441853))

(assert (= (and b!2441853 (not res!1036719)) b!2441856))

(assert (= (or b!2441843 b!2441852 b!2441849) bm!149650))

(declare-fun m!2819753 () Bool)

(assert (=> b!2441853 m!2819753))

(assert (=> b!2441853 m!2819753))

(declare-fun m!2819755 () Bool)

(assert (=> b!2441853 m!2819755))

(declare-fun m!2819757 () Bool)

(assert (=> b!2441856 m!2819757))

(assert (=> b!2441848 m!2819753))

(assert (=> b!2441848 m!2819753))

(assert (=> b!2441848 m!2819755))

(declare-fun m!2819759 () Bool)

(assert (=> d!705165 m!2819759))

(assert (=> d!705165 m!2819037))

(assert (=> bm!149650 m!2819759))

(assert (=> b!2441850 m!2819039))

(assert (=> b!2441851 m!2819757))

(assert (=> b!2441854 m!2819757))

(assert (=> b!2441854 m!2819757))

(declare-fun m!2819761 () Bool)

(assert (=> b!2441854 m!2819761))

(assert (=> b!2441854 m!2819753))

(assert (=> b!2441854 m!2819761))

(assert (=> b!2441854 m!2819753))

(declare-fun m!2819763 () Bool)

(assert (=> b!2441854 m!2819763))

(assert (=> b!2440866 d!705165))

(assert (=> b!2440866 d!705069))

(declare-fun d!705167 () Bool)

(assert (=> d!705167 (= (isEmpty!16534 (_2!16596 (get!8795 lt!878298))) ((_ is Nil!28492) (_2!16596 (get!8795 lt!878298))))))

(assert (=> bm!149479 d!705167))

(assert (=> b!2441029 d!704903))

(assert (=> b!2440824 d!705077))

(assert (=> b!2440971 d!705055))

(declare-fun b!2441857 () Bool)

(declare-fun e!1551392 () Bool)

(declare-fun lt!878424 () Bool)

(declare-fun call!149656 () Bool)

(assert (=> b!2441857 (= e!1551392 (= lt!878424 call!149656))))

(declare-fun d!705169 () Bool)

(assert (=> d!705169 e!1551392))

(declare-fun c!389719 () Bool)

(assert (=> d!705169 (= c!389719 ((_ is EmptyExpr!7177) EmptyExpr!7177))))

(declare-fun e!1551390 () Bool)

(assert (=> d!705169 (= lt!878424 e!1551390)))

(declare-fun c!389717 () Bool)

(assert (=> d!705169 (= c!389717 (isEmpty!16534 (_2!16596 (get!8795 lt!878367))))))

(assert (=> d!705169 (validRegex!2889 EmptyExpr!7177)))

(assert (=> d!705169 (= (matchR!3292 EmptyExpr!7177 (_2!16596 (get!8795 lt!878367))) lt!878424)))

(declare-fun b!2441858 () Bool)

(declare-fun e!1551394 () Bool)

(assert (=> b!2441858 (= e!1551392 e!1551394)))

(declare-fun c!389718 () Bool)

(assert (=> b!2441858 (= c!389718 ((_ is EmptyLang!7177) EmptyExpr!7177))))

(declare-fun b!2441859 () Bool)

(declare-fun res!1036729 () Bool)

(declare-fun e!1551389 () Bool)

(assert (=> b!2441859 (=> res!1036729 e!1551389)))

(declare-fun e!1551393 () Bool)

(assert (=> b!2441859 (= res!1036729 e!1551393)))

(declare-fun res!1036732 () Bool)

(assert (=> b!2441859 (=> (not res!1036732) (not e!1551393))))

(assert (=> b!2441859 (= res!1036732 lt!878424)))

(declare-fun b!2441860 () Bool)

(assert (=> b!2441860 (= e!1551394 (not lt!878424))))

(declare-fun b!2441861 () Bool)

(declare-fun e!1551395 () Bool)

(assert (=> b!2441861 (= e!1551389 e!1551395)))

(declare-fun res!1036734 () Bool)

(assert (=> b!2441861 (=> (not res!1036734) (not e!1551395))))

(assert (=> b!2441861 (= res!1036734 (not lt!878424))))

(declare-fun b!2441862 () Bool)

(declare-fun res!1036731 () Bool)

(assert (=> b!2441862 (=> (not res!1036731) (not e!1551393))))

(assert (=> b!2441862 (= res!1036731 (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878367)))))))

(declare-fun b!2441863 () Bool)

(declare-fun e!1551391 () Bool)

(assert (=> b!2441863 (= e!1551395 e!1551391)))

(declare-fun res!1036728 () Bool)

(assert (=> b!2441863 (=> res!1036728 e!1551391)))

(assert (=> b!2441863 (= res!1036728 call!149656)))

(declare-fun b!2441864 () Bool)

(assert (=> b!2441864 (= e!1551390 (nullable!2198 EmptyExpr!7177))))

(declare-fun b!2441865 () Bool)

(assert (=> b!2441865 (= e!1551393 (= (head!5545 (_2!16596 (get!8795 lt!878367))) (c!389219 EmptyExpr!7177)))))

(declare-fun b!2441866 () Bool)

(declare-fun res!1036733 () Bool)

(assert (=> b!2441866 (=> (not res!1036733) (not e!1551393))))

(assert (=> b!2441866 (= res!1036733 (not call!149656))))

(declare-fun bm!149651 () Bool)

(assert (=> bm!149651 (= call!149656 (isEmpty!16534 (_2!16596 (get!8795 lt!878367))))))

(declare-fun b!2441867 () Bool)

(declare-fun res!1036727 () Bool)

(assert (=> b!2441867 (=> res!1036727 e!1551391)))

(assert (=> b!2441867 (= res!1036727 (not (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878367))))))))

(declare-fun b!2441868 () Bool)

(assert (=> b!2441868 (= e!1551390 (matchR!3292 (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878367)))) (tail!3818 (_2!16596 (get!8795 lt!878367)))))))

(declare-fun b!2441869 () Bool)

(declare-fun res!1036730 () Bool)

(assert (=> b!2441869 (=> res!1036730 e!1551389)))

(assert (=> b!2441869 (= res!1036730 (not ((_ is ElementMatch!7177) EmptyExpr!7177)))))

(assert (=> b!2441869 (= e!1551394 e!1551389)))

(declare-fun b!2441870 () Bool)

(assert (=> b!2441870 (= e!1551391 (not (= (head!5545 (_2!16596 (get!8795 lt!878367))) (c!389219 EmptyExpr!7177))))))

(assert (= (and d!705169 c!389717) b!2441864))

(assert (= (and d!705169 (not c!389717)) b!2441868))

(assert (= (and d!705169 c!389719) b!2441857))

(assert (= (and d!705169 (not c!389719)) b!2441858))

(assert (= (and b!2441858 c!389718) b!2441860))

(assert (= (and b!2441858 (not c!389718)) b!2441869))

(assert (= (and b!2441869 (not res!1036730)) b!2441859))

(assert (= (and b!2441859 res!1036732) b!2441866))

(assert (= (and b!2441866 res!1036733) b!2441862))

(assert (= (and b!2441862 res!1036731) b!2441865))

(assert (= (and b!2441859 (not res!1036729)) b!2441861))

(assert (= (and b!2441861 res!1036734) b!2441863))

(assert (= (and b!2441863 (not res!1036728)) b!2441867))

(assert (= (and b!2441867 (not res!1036727)) b!2441870))

(assert (= (or b!2441857 b!2441866 b!2441863) bm!149651))

(declare-fun m!2819765 () Bool)

(assert (=> b!2441867 m!2819765))

(assert (=> b!2441867 m!2819765))

(declare-fun m!2819767 () Bool)

(assert (=> b!2441867 m!2819767))

(declare-fun m!2819769 () Bool)

(assert (=> b!2441870 m!2819769))

(assert (=> b!2441862 m!2819765))

(assert (=> b!2441862 m!2819765))

(assert (=> b!2441862 m!2819767))

(declare-fun m!2819771 () Bool)

(assert (=> d!705169 m!2819771))

(assert (=> d!705169 m!2818861))

(assert (=> bm!149651 m!2819771))

(assert (=> b!2441864 m!2818863))

(assert (=> b!2441865 m!2819769))

(assert (=> b!2441868 m!2819769))

(assert (=> b!2441868 m!2819769))

(declare-fun m!2819773 () Bool)

(assert (=> b!2441868 m!2819773))

(assert (=> b!2441868 m!2819765))

(assert (=> b!2441868 m!2819773))

(assert (=> b!2441868 m!2819765))

(declare-fun m!2819775 () Bool)

(assert (=> b!2441868 m!2819775))

(assert (=> b!2441096 d!705169))

(assert (=> b!2441096 d!704887))

(declare-fun d!705171 () Bool)

(assert (=> d!705171 (= (isEmptyExpr!215 lt!878342) ((_ is EmptyExpr!7177) lt!878342))))

(assert (=> b!2440782 d!705171))

(declare-fun b!2441871 () Bool)

(declare-fun e!1551399 () Bool)

(declare-fun lt!878425 () Bool)

(declare-fun call!149657 () Bool)

(assert (=> b!2441871 (= e!1551399 (= lt!878425 call!149657))))

(declare-fun d!705173 () Bool)

(assert (=> d!705173 e!1551399))

(declare-fun c!389722 () Bool)

(assert (=> d!705173 (= c!389722 ((_ is EmptyExpr!7177) (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(declare-fun e!1551397 () Bool)

(assert (=> d!705173 (= lt!878425 e!1551397)))

(declare-fun c!389720 () Bool)

(assert (=> d!705173 (= c!389720 (isEmpty!16534 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(assert (=> d!705173 (validRegex!2889 (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(assert (=> d!705173 (= (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) lt!878425)))

(declare-fun b!2441872 () Bool)

(declare-fun e!1551401 () Bool)

(assert (=> b!2441872 (= e!1551399 e!1551401)))

(declare-fun c!389721 () Bool)

(assert (=> b!2441872 (= c!389721 ((_ is EmptyLang!7177) (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(declare-fun b!2441873 () Bool)

(declare-fun res!1036737 () Bool)

(declare-fun e!1551396 () Bool)

(assert (=> b!2441873 (=> res!1036737 e!1551396)))

(declare-fun e!1551400 () Bool)

(assert (=> b!2441873 (= res!1036737 e!1551400)))

(declare-fun res!1036740 () Bool)

(assert (=> b!2441873 (=> (not res!1036740) (not e!1551400))))

(assert (=> b!2441873 (= res!1036740 lt!878425)))

(declare-fun b!2441874 () Bool)

(assert (=> b!2441874 (= e!1551401 (not lt!878425))))

(declare-fun b!2441875 () Bool)

(declare-fun e!1551402 () Bool)

(assert (=> b!2441875 (= e!1551396 e!1551402)))

(declare-fun res!1036742 () Bool)

(assert (=> b!2441875 (=> (not res!1036742) (not e!1551402))))

(assert (=> b!2441875 (= res!1036742 (not lt!878425))))

(declare-fun b!2441876 () Bool)

(declare-fun res!1036739 () Bool)

(assert (=> b!2441876 (=> (not res!1036739) (not e!1551400))))

(assert (=> b!2441876 (= res!1036739 (isEmpty!16534 (tail!3818 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(declare-fun b!2441877 () Bool)

(declare-fun e!1551398 () Bool)

(assert (=> b!2441877 (= e!1551402 e!1551398)))

(declare-fun res!1036736 () Bool)

(assert (=> b!2441877 (=> res!1036736 e!1551398)))

(assert (=> b!2441877 (= res!1036736 call!149657)))

(declare-fun b!2441878 () Bool)

(assert (=> b!2441878 (= e!1551397 (nullable!2198 (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(declare-fun b!2441879 () Bool)

(assert (=> b!2441879 (= e!1551400 (= (head!5545 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (c!389219 (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))))

(declare-fun b!2441880 () Bool)

(declare-fun res!1036741 () Bool)

(assert (=> b!2441880 (=> (not res!1036741) (not e!1551400))))

(assert (=> b!2441880 (= res!1036741 (not call!149657))))

(declare-fun bm!149652 () Bool)

(assert (=> bm!149652 (= call!149657 (isEmpty!16534 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2441881 () Bool)

(declare-fun res!1036735 () Bool)

(assert (=> b!2441881 (=> res!1036735 e!1551398)))

(assert (=> b!2441881 (= res!1036735 (not (isEmpty!16534 (tail!3818 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))))

(declare-fun b!2441882 () Bool)

(assert (=> b!2441882 (= e!1551397 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (head!5545 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))) (tail!3818 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(declare-fun b!2441883 () Bool)

(declare-fun res!1036738 () Bool)

(assert (=> b!2441883 (=> res!1036738 e!1551396)))

(assert (=> b!2441883 (= res!1036738 (not ((_ is ElementMatch!7177) (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))))

(assert (=> b!2441883 (= e!1551401 e!1551396)))

(declare-fun b!2441884 () Bool)

(assert (=> b!2441884 (= e!1551398 (not (= (head!5545 (tail!3818 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (c!389219 (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))))

(assert (= (and d!705173 c!389720) b!2441878))

(assert (= (and d!705173 (not c!389720)) b!2441882))

(assert (= (and d!705173 c!389722) b!2441871))

(assert (= (and d!705173 (not c!389722)) b!2441872))

(assert (= (and b!2441872 c!389721) b!2441874))

(assert (= (and b!2441872 (not c!389721)) b!2441883))

(assert (= (and b!2441883 (not res!1036738)) b!2441873))

(assert (= (and b!2441873 res!1036740) b!2441880))

(assert (= (and b!2441880 res!1036741) b!2441876))

(assert (= (and b!2441876 res!1036739) b!2441879))

(assert (= (and b!2441873 (not res!1036737)) b!2441875))

(assert (= (and b!2441875 res!1036742) b!2441877))

(assert (= (and b!2441877 (not res!1036736)) b!2441881))

(assert (= (and b!2441881 (not res!1036735)) b!2441884))

(assert (= (or b!2441871 b!2441880 b!2441877) bm!149652))

(assert (=> b!2441881 m!2818967))

(declare-fun m!2819777 () Bool)

(assert (=> b!2441881 m!2819777))

(assert (=> b!2441881 m!2819777))

(declare-fun m!2819779 () Bool)

(assert (=> b!2441881 m!2819779))

(assert (=> b!2441884 m!2818967))

(declare-fun m!2819781 () Bool)

(assert (=> b!2441884 m!2819781))

(assert (=> b!2441876 m!2818967))

(assert (=> b!2441876 m!2819777))

(assert (=> b!2441876 m!2819777))

(assert (=> b!2441876 m!2819779))

(assert (=> d!705173 m!2818967))

(assert (=> d!705173 m!2818969))

(assert (=> d!705173 m!2818977))

(declare-fun m!2819783 () Bool)

(assert (=> d!705173 m!2819783))

(assert (=> bm!149652 m!2818967))

(assert (=> bm!149652 m!2818969))

(assert (=> b!2441878 m!2818977))

(declare-fun m!2819785 () Bool)

(assert (=> b!2441878 m!2819785))

(assert (=> b!2441879 m!2818967))

(assert (=> b!2441879 m!2819781))

(assert (=> b!2441882 m!2818967))

(assert (=> b!2441882 m!2819781))

(assert (=> b!2441882 m!2818977))

(assert (=> b!2441882 m!2819781))

(declare-fun m!2819787 () Bool)

(assert (=> b!2441882 m!2819787))

(assert (=> b!2441882 m!2818967))

(assert (=> b!2441882 m!2819777))

(assert (=> b!2441882 m!2819787))

(assert (=> b!2441882 m!2819777))

(declare-fun m!2819789 () Bool)

(assert (=> b!2441882 m!2819789))

(assert (=> b!2440884 d!705173))

(declare-fun b!2441885 () Bool)

(declare-fun e!1551406 () Regex!7177)

(declare-fun e!1551403 () Regex!7177)

(assert (=> b!2441885 (= e!1551406 e!1551403)))

(declare-fun c!389725 () Bool)

(assert (=> b!2441885 (= c!389725 ((_ is ElementMatch!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2441886 () Bool)

(assert (=> b!2441886 (= e!1551403 (ite (= (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (c!389219 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389726 () Bool)

(declare-fun call!149661 () Regex!7177)

(declare-fun bm!149653 () Bool)

(declare-fun c!389724 () Bool)

(assert (=> bm!149653 (= call!149661 (derivativeStep!1852 (ite c!389726 (regOne!14867 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (ite c!389724 (reg!7506 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (regOne!14866 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2441888 () Bool)

(declare-fun c!389727 () Bool)

(assert (=> b!2441888 (= c!389727 (nullable!2198 (regOne!14866 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(declare-fun e!1551404 () Regex!7177)

(declare-fun e!1551405 () Regex!7177)

(assert (=> b!2441888 (= e!1551404 e!1551405)))

(declare-fun call!149658 () Regex!7177)

(declare-fun b!2441889 () Bool)

(assert (=> b!2441889 (= e!1551404 (Concat!11813 call!149658 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2441890 () Bool)

(assert (=> b!2441890 (= c!389726 ((_ is Union!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun e!1551407 () Regex!7177)

(assert (=> b!2441890 (= e!1551403 e!1551407)))

(declare-fun bm!149654 () Bool)

(assert (=> bm!149654 (= call!149658 call!149661)))

(declare-fun bm!149655 () Bool)

(declare-fun call!149659 () Regex!7177)

(declare-fun call!149660 () Regex!7177)

(assert (=> bm!149655 (= call!149659 call!149660)))

(declare-fun bm!149656 () Bool)

(assert (=> bm!149656 (= call!149660 (derivativeStep!1852 (ite c!389726 (regTwo!14867 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (ite c!389727 (regTwo!14866 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) (regOne!14866 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2441887 () Bool)

(assert (=> b!2441887 (= e!1551405 (Union!7177 (Concat!11813 call!149658 (regTwo!14866 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))) call!149659))))

(declare-fun d!705175 () Bool)

(declare-fun lt!878426 () Regex!7177)

(assert (=> d!705175 (validRegex!2889 lt!878426)))

(assert (=> d!705175 (= lt!878426 e!1551406)))

(declare-fun c!389723 () Bool)

(assert (=> d!705175 (= c!389723 (or ((_ is EmptyExpr!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) ((_ is EmptyLang!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))))

(assert (=> d!705175 (validRegex!2889 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))))

(assert (=> d!705175 (= (derivativeStep!1852 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))) (head!5545 (tail!3818 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))) lt!878426)))

(declare-fun b!2441891 () Bool)

(assert (=> b!2441891 (= e!1551407 e!1551404)))

(assert (=> b!2441891 (= c!389724 ((_ is Star!7177) (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224))))))))

(declare-fun b!2441892 () Bool)

(assert (=> b!2441892 (= e!1551406 EmptyLang!7177)))

(declare-fun b!2441893 () Bool)

(assert (=> b!2441893 (= e!1551407 (Union!7177 call!149661 call!149660))))

(declare-fun b!2441894 () Bool)

(assert (=> b!2441894 (= e!1551405 (Union!7177 (Concat!11813 call!149659 (regTwo!14866 (derivativeStep!1852 (Concat!11813 lt!878222 EmptyExpr!7177) (head!5545 (++!7080 (_1!16596 lt!878224) (_2!16596 lt!878224)))))) EmptyLang!7177))))

(assert (= (and d!705175 c!389723) b!2441892))

(assert (= (and d!705175 (not c!389723)) b!2441885))

(assert (= (and b!2441885 c!389725) b!2441886))

(assert (= (and b!2441885 (not c!389725)) b!2441890))

(assert (= (and b!2441890 c!389726) b!2441893))

(assert (= (and b!2441890 (not c!389726)) b!2441891))

(assert (= (and b!2441891 c!389724) b!2441889))

(assert (= (and b!2441891 (not c!389724)) b!2441888))

(assert (= (and b!2441888 c!389727) b!2441887))

(assert (= (and b!2441888 (not c!389727)) b!2441894))

(assert (= (or b!2441887 b!2441894) bm!149655))

(assert (= (or b!2441889 b!2441887) bm!149654))

(assert (= (or b!2441893 bm!149654) bm!149653))

(assert (= (or b!2441893 bm!149655) bm!149656))

(assert (=> bm!149653 m!2818971))

(declare-fun m!2819791 () Bool)

(assert (=> bm!149653 m!2819791))

(declare-fun m!2819793 () Bool)

(assert (=> b!2441888 m!2819793))

(assert (=> bm!149656 m!2818971))

(declare-fun m!2819795 () Bool)

(assert (=> bm!149656 m!2819795))

(declare-fun m!2819797 () Bool)

(assert (=> d!705175 m!2819797))

(assert (=> d!705175 m!2818243))

(assert (=> d!705175 m!2818973))

(assert (=> b!2440884 d!705175))

(assert (=> b!2440884 d!704889))

(assert (=> b!2440884 d!704915))

(declare-fun b!2441895 () Bool)

(declare-fun e!1551414 () Bool)

(declare-fun e!1551409 () Bool)

(assert (=> b!2441895 (= e!1551414 e!1551409)))

(declare-fun c!389729 () Bool)

(assert (=> b!2441895 (= c!389729 ((_ is Star!7177) (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927))))))))

(declare-fun c!389728 () Bool)

(declare-fun call!149663 () Bool)

(declare-fun bm!149657 () Bool)

(assert (=> bm!149657 (= call!149663 (validRegex!2889 (ite c!389728 (regOne!14867 (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927))))) (regTwo!14866 (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927))))))))))

(declare-fun b!2441896 () Bool)

(declare-fun e!1551408 () Bool)

(assert (=> b!2441896 (= e!1551409 e!1551408)))

(declare-fun res!1036746 () Bool)

(assert (=> b!2441896 (= res!1036746 (not (nullable!2198 (reg!7506 (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927))))))))))

(assert (=> b!2441896 (=> (not res!1036746) (not e!1551408))))

(declare-fun d!705177 () Bool)

(declare-fun res!1036747 () Bool)

(assert (=> d!705177 (=> res!1036747 e!1551414)))

(assert (=> d!705177 (= res!1036747 ((_ is ElementMatch!7177) (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927))))))))

(assert (=> d!705177 (= (validRegex!2889 (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927))))) e!1551414)))

(declare-fun b!2441897 () Bool)

(declare-fun e!1551412 () Bool)

(assert (=> b!2441897 (= e!1551412 call!149663)))

(declare-fun b!2441898 () Bool)

(declare-fun e!1551411 () Bool)

(declare-fun call!149664 () Bool)

(assert (=> b!2441898 (= e!1551411 call!149664)))

(declare-fun b!2441899 () Bool)

(declare-fun res!1036744 () Bool)

(declare-fun e!1551410 () Bool)

(assert (=> b!2441899 (=> res!1036744 e!1551410)))

(assert (=> b!2441899 (= res!1036744 (not ((_ is Concat!11813) (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927)))))))))

(declare-fun e!1551413 () Bool)

(assert (=> b!2441899 (= e!1551413 e!1551410)))

(declare-fun b!2441900 () Bool)

(declare-fun res!1036743 () Bool)

(assert (=> b!2441900 (=> (not res!1036743) (not e!1551411))))

(assert (=> b!2441900 (= res!1036743 call!149663)))

(assert (=> b!2441900 (= e!1551413 e!1551411)))

(declare-fun b!2441901 () Bool)

(assert (=> b!2441901 (= e!1551409 e!1551413)))

(assert (=> b!2441901 (= c!389728 ((_ is Union!7177) (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927))))))))

(declare-fun b!2441902 () Bool)

(assert (=> b!2441902 (= e!1551410 e!1551412)))

(declare-fun res!1036745 () Bool)

(assert (=> b!2441902 (=> (not res!1036745) (not e!1551412))))

(assert (=> b!2441902 (= res!1036745 call!149664)))

(declare-fun b!2441903 () Bool)

(declare-fun call!149662 () Bool)

(assert (=> b!2441903 (= e!1551408 call!149662)))

(declare-fun bm!149658 () Bool)

(assert (=> bm!149658 (= call!149664 call!149662)))

(declare-fun bm!149659 () Bool)

(assert (=> bm!149659 (= call!149662 (validRegex!2889 (ite c!389729 (reg!7506 (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927))))) (ite c!389728 (regTwo!14867 (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927))))) (regOne!14866 (ite c!389491 (reg!7506 (regOne!14866 r!13927)) (ite c!389490 (regTwo!14867 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927)))))))))))

(assert (= (and d!705177 (not res!1036747)) b!2441895))

(assert (= (and b!2441895 c!389729) b!2441896))

(assert (= (and b!2441895 (not c!389729)) b!2441901))

(assert (= (and b!2441896 res!1036746) b!2441903))

(assert (= (and b!2441901 c!389728) b!2441900))

(assert (= (and b!2441901 (not c!389728)) b!2441899))

(assert (= (and b!2441900 res!1036743) b!2441898))

(assert (= (and b!2441899 (not res!1036744)) b!2441902))

(assert (= (and b!2441902 res!1036745) b!2441897))

(assert (= (or b!2441900 b!2441897) bm!149657))

(assert (= (or b!2441898 b!2441902) bm!149658))

(assert (= (or b!2441903 bm!149658) bm!149659))

(declare-fun m!2819799 () Bool)

(assert (=> bm!149657 m!2819799))

(declare-fun m!2819801 () Bool)

(assert (=> b!2441896 m!2819801))

(declare-fun m!2819803 () Bool)

(assert (=> bm!149659 m!2819803))

(assert (=> bm!149505 d!705177))

(declare-fun d!705179 () Bool)

(assert (=> d!705179 (= (head!5543 (t!208568 lt!878228)) (h!33894 (t!208568 lt!878228)))))

(assert (=> b!2440957 d!705179))

(assert (=> bm!149483 d!705085))

(assert (=> d!704831 d!705107))

(assert (=> d!704831 d!705113))

(declare-fun b!2441904 () Bool)

(declare-fun e!1551421 () Bool)

(declare-fun e!1551416 () Bool)

(assert (=> b!2441904 (= e!1551421 e!1551416)))

(declare-fun c!389731 () Bool)

(assert (=> b!2441904 (= c!389731 ((_ is Star!7177) lt!878378))))

(declare-fun bm!149660 () Bool)

(declare-fun call!149666 () Bool)

(declare-fun c!389730 () Bool)

(assert (=> bm!149660 (= call!149666 (validRegex!2889 (ite c!389730 (regOne!14867 lt!878378) (regTwo!14866 lt!878378))))))

(declare-fun b!2441905 () Bool)

(declare-fun e!1551415 () Bool)

(assert (=> b!2441905 (= e!1551416 e!1551415)))

(declare-fun res!1036751 () Bool)

(assert (=> b!2441905 (= res!1036751 (not (nullable!2198 (reg!7506 lt!878378))))))

(assert (=> b!2441905 (=> (not res!1036751) (not e!1551415))))

(declare-fun d!705181 () Bool)

(declare-fun res!1036752 () Bool)

(assert (=> d!705181 (=> res!1036752 e!1551421)))

(assert (=> d!705181 (= res!1036752 ((_ is ElementMatch!7177) lt!878378))))

(assert (=> d!705181 (= (validRegex!2889 lt!878378) e!1551421)))

(declare-fun b!2441906 () Bool)

(declare-fun e!1551419 () Bool)

(assert (=> b!2441906 (= e!1551419 call!149666)))

(declare-fun b!2441907 () Bool)

(declare-fun e!1551418 () Bool)

(declare-fun call!149667 () Bool)

(assert (=> b!2441907 (= e!1551418 call!149667)))

(declare-fun b!2441908 () Bool)

(declare-fun res!1036749 () Bool)

(declare-fun e!1551417 () Bool)

(assert (=> b!2441908 (=> res!1036749 e!1551417)))

(assert (=> b!2441908 (= res!1036749 (not ((_ is Concat!11813) lt!878378)))))

(declare-fun e!1551420 () Bool)

(assert (=> b!2441908 (= e!1551420 e!1551417)))

(declare-fun b!2441909 () Bool)

(declare-fun res!1036748 () Bool)

(assert (=> b!2441909 (=> (not res!1036748) (not e!1551418))))

(assert (=> b!2441909 (= res!1036748 call!149666)))

(assert (=> b!2441909 (= e!1551420 e!1551418)))

(declare-fun b!2441910 () Bool)

(assert (=> b!2441910 (= e!1551416 e!1551420)))

(assert (=> b!2441910 (= c!389730 ((_ is Union!7177) lt!878378))))

(declare-fun b!2441911 () Bool)

(assert (=> b!2441911 (= e!1551417 e!1551419)))

(declare-fun res!1036750 () Bool)

(assert (=> b!2441911 (=> (not res!1036750) (not e!1551419))))

(assert (=> b!2441911 (= res!1036750 call!149667)))

(declare-fun b!2441912 () Bool)

(declare-fun call!149665 () Bool)

(assert (=> b!2441912 (= e!1551415 call!149665)))

(declare-fun bm!149661 () Bool)

(assert (=> bm!149661 (= call!149667 call!149665)))

(declare-fun bm!149662 () Bool)

(assert (=> bm!149662 (= call!149665 (validRegex!2889 (ite c!389731 (reg!7506 lt!878378) (ite c!389730 (regTwo!14867 lt!878378) (regOne!14866 lt!878378)))))))

(assert (= (and d!705181 (not res!1036752)) b!2441904))

(assert (= (and b!2441904 c!389731) b!2441905))

(assert (= (and b!2441904 (not c!389731)) b!2441910))

(assert (= (and b!2441905 res!1036751) b!2441912))

(assert (= (and b!2441910 c!389730) b!2441909))

(assert (= (and b!2441910 (not c!389730)) b!2441908))

(assert (= (and b!2441909 res!1036748) b!2441907))

(assert (= (and b!2441908 (not res!1036749)) b!2441911))

(assert (= (and b!2441911 res!1036750) b!2441906))

(assert (= (or b!2441909 b!2441906) bm!149660))

(assert (= (or b!2441907 b!2441911) bm!149661))

(assert (= (or b!2441912 bm!149661) bm!149662))

(declare-fun m!2819805 () Bool)

(assert (=> bm!149660 m!2819805))

(declare-fun m!2819807 () Bool)

(assert (=> b!2441905 m!2819807))

(declare-fun m!2819809 () Bool)

(assert (=> bm!149662 m!2819809))

(assert (=> d!704861 d!705181))

(assert (=> d!704861 d!704771))

(declare-fun b!2441913 () Bool)

(declare-fun e!1551425 () Bool)

(declare-fun lt!878427 () Bool)

(declare-fun call!149668 () Bool)

(assert (=> b!2441913 (= e!1551425 (= lt!878427 call!149668))))

(declare-fun d!705183 () Bool)

(assert (=> d!705183 e!1551425))

(declare-fun c!389734 () Bool)

(assert (=> d!705183 (= c!389734 ((_ is EmptyExpr!7177) (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460)))))))

(declare-fun e!1551423 () Bool)

(assert (=> d!705183 (= lt!878427 e!1551423)))

(declare-fun c!389732 () Bool)

(assert (=> d!705183 (= c!389732 (isEmpty!16534 (tail!3818 (tail!3818 s!9460))))))

(assert (=> d!705183 (validRegex!2889 (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))))))

(assert (=> d!705183 (= (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))) (tail!3818 (tail!3818 s!9460))) lt!878427)))

(declare-fun b!2441914 () Bool)

(declare-fun e!1551427 () Bool)

(assert (=> b!2441914 (= e!1551425 e!1551427)))

(declare-fun c!389733 () Bool)

(assert (=> b!2441914 (= c!389733 ((_ is EmptyLang!7177) (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460)))))))

(declare-fun b!2441915 () Bool)

(declare-fun res!1036755 () Bool)

(declare-fun e!1551422 () Bool)

(assert (=> b!2441915 (=> res!1036755 e!1551422)))

(declare-fun e!1551426 () Bool)

(assert (=> b!2441915 (= res!1036755 e!1551426)))

(declare-fun res!1036758 () Bool)

(assert (=> b!2441915 (=> (not res!1036758) (not e!1551426))))

(assert (=> b!2441915 (= res!1036758 lt!878427)))

(declare-fun b!2441916 () Bool)

(assert (=> b!2441916 (= e!1551427 (not lt!878427))))

(declare-fun b!2441917 () Bool)

(declare-fun e!1551428 () Bool)

(assert (=> b!2441917 (= e!1551422 e!1551428)))

(declare-fun res!1036760 () Bool)

(assert (=> b!2441917 (=> (not res!1036760) (not e!1551428))))

(assert (=> b!2441917 (= res!1036760 (not lt!878427))))

(declare-fun b!2441918 () Bool)

(declare-fun res!1036757 () Bool)

(assert (=> b!2441918 (=> (not res!1036757) (not e!1551426))))

(assert (=> b!2441918 (= res!1036757 (isEmpty!16534 (tail!3818 (tail!3818 (tail!3818 s!9460)))))))

(declare-fun b!2441919 () Bool)

(declare-fun e!1551424 () Bool)

(assert (=> b!2441919 (= e!1551428 e!1551424)))

(declare-fun res!1036754 () Bool)

(assert (=> b!2441919 (=> res!1036754 e!1551424)))

(assert (=> b!2441919 (= res!1036754 call!149668)))

(declare-fun b!2441920 () Bool)

(assert (=> b!2441920 (= e!1551423 (nullable!2198 (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460)))))))

(declare-fun b!2441921 () Bool)

(assert (=> b!2441921 (= e!1551426 (= (head!5545 (tail!3818 (tail!3818 s!9460))) (c!389219 (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))))))))

(declare-fun b!2441922 () Bool)

(declare-fun res!1036759 () Bool)

(assert (=> b!2441922 (=> (not res!1036759) (not e!1551426))))

(assert (=> b!2441922 (= res!1036759 (not call!149668))))

(declare-fun bm!149663 () Bool)

(assert (=> bm!149663 (= call!149668 (isEmpty!16534 (tail!3818 (tail!3818 s!9460))))))

(declare-fun b!2441923 () Bool)

(declare-fun res!1036753 () Bool)

(assert (=> b!2441923 (=> res!1036753 e!1551424)))

(assert (=> b!2441923 (= res!1036753 (not (isEmpty!16534 (tail!3818 (tail!3818 (tail!3818 s!9460))))))))

(declare-fun b!2441924 () Bool)

(assert (=> b!2441924 (= e!1551423 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))) (head!5545 (tail!3818 (tail!3818 s!9460)))) (tail!3818 (tail!3818 (tail!3818 s!9460)))))))

(declare-fun b!2441925 () Bool)

(declare-fun res!1036756 () Bool)

(assert (=> b!2441925 (=> res!1036756 e!1551422)))

(assert (=> b!2441925 (= res!1036756 (not ((_ is ElementMatch!7177) (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))))))))

(assert (=> b!2441925 (= e!1551427 e!1551422)))

(declare-fun b!2441926 () Bool)

(assert (=> b!2441926 (= e!1551424 (not (= (head!5545 (tail!3818 (tail!3818 s!9460))) (c!389219 (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460)))))))))

(assert (= (and d!705183 c!389732) b!2441920))

(assert (= (and d!705183 (not c!389732)) b!2441924))

(assert (= (and d!705183 c!389734) b!2441913))

(assert (= (and d!705183 (not c!389734)) b!2441914))

(assert (= (and b!2441914 c!389733) b!2441916))

(assert (= (and b!2441914 (not c!389733)) b!2441925))

(assert (= (and b!2441925 (not res!1036756)) b!2441915))

(assert (= (and b!2441915 res!1036758) b!2441922))

(assert (= (and b!2441922 res!1036759) b!2441918))

(assert (= (and b!2441918 res!1036757) b!2441921))

(assert (= (and b!2441915 (not res!1036755)) b!2441917))

(assert (= (and b!2441917 res!1036760) b!2441919))

(assert (= (and b!2441919 (not res!1036754)) b!2441923))

(assert (= (and b!2441923 (not res!1036753)) b!2441926))

(assert (= (or b!2441913 b!2441922 b!2441919) bm!149663))

(assert (=> b!2441923 m!2819045))

(assert (=> b!2441923 m!2819731))

(assert (=> b!2441923 m!2819731))

(assert (=> b!2441923 m!2819733))

(assert (=> b!2441926 m!2819045))

(assert (=> b!2441926 m!2819735))

(assert (=> b!2441918 m!2819045))

(assert (=> b!2441918 m!2819731))

(assert (=> b!2441918 m!2819731))

(assert (=> b!2441918 m!2819733))

(assert (=> d!705183 m!2819045))

(assert (=> d!705183 m!2819047))

(assert (=> d!705183 m!2819055))

(declare-fun m!2819811 () Bool)

(assert (=> d!705183 m!2819811))

(assert (=> bm!149663 m!2819045))

(assert (=> bm!149663 m!2819047))

(assert (=> b!2441920 m!2819055))

(declare-fun m!2819813 () Bool)

(assert (=> b!2441920 m!2819813))

(assert (=> b!2441921 m!2819045))

(assert (=> b!2441921 m!2819735))

(assert (=> b!2441924 m!2819045))

(assert (=> b!2441924 m!2819735))

(assert (=> b!2441924 m!2819055))

(assert (=> b!2441924 m!2819735))

(declare-fun m!2819815 () Bool)

(assert (=> b!2441924 m!2819815))

(assert (=> b!2441924 m!2819045))

(assert (=> b!2441924 m!2819731))

(assert (=> b!2441924 m!2819815))

(assert (=> b!2441924 m!2819731))

(declare-fun m!2819817 () Bool)

(assert (=> b!2441924 m!2819817))

(assert (=> b!2440989 d!705183))

(declare-fun b!2441927 () Bool)

(declare-fun e!1551432 () Regex!7177)

(declare-fun e!1551429 () Regex!7177)

(assert (=> b!2441927 (= e!1551432 e!1551429)))

(declare-fun c!389737 () Bool)

(assert (=> b!2441927 (= c!389737 ((_ is ElementMatch!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(declare-fun b!2441928 () Bool)

(assert (=> b!2441928 (= e!1551429 (ite (= (head!5545 (tail!3818 s!9460)) (c!389219 (derivativeStep!1852 lt!878222 (head!5545 s!9460)))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389736 () Bool)

(declare-fun c!389738 () Bool)

(declare-fun call!149672 () Regex!7177)

(declare-fun bm!149664 () Bool)

(assert (=> bm!149664 (= call!149672 (derivativeStep!1852 (ite c!389738 (regOne!14867 (derivativeStep!1852 lt!878222 (head!5545 s!9460))) (ite c!389736 (reg!7506 (derivativeStep!1852 lt!878222 (head!5545 s!9460))) (regOne!14866 (derivativeStep!1852 lt!878222 (head!5545 s!9460))))) (head!5545 (tail!3818 s!9460))))))

(declare-fun b!2441930 () Bool)

(declare-fun c!389739 () Bool)

(assert (=> b!2441930 (= c!389739 (nullable!2198 (regOne!14866 (derivativeStep!1852 lt!878222 (head!5545 s!9460)))))))

(declare-fun e!1551430 () Regex!7177)

(declare-fun e!1551431 () Regex!7177)

(assert (=> b!2441930 (= e!1551430 e!1551431)))

(declare-fun b!2441931 () Bool)

(declare-fun call!149669 () Regex!7177)

(assert (=> b!2441931 (= e!1551430 (Concat!11813 call!149669 (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(declare-fun b!2441932 () Bool)

(assert (=> b!2441932 (= c!389738 ((_ is Union!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(declare-fun e!1551433 () Regex!7177)

(assert (=> b!2441932 (= e!1551429 e!1551433)))

(declare-fun bm!149665 () Bool)

(assert (=> bm!149665 (= call!149669 call!149672)))

(declare-fun bm!149666 () Bool)

(declare-fun call!149670 () Regex!7177)

(declare-fun call!149671 () Regex!7177)

(assert (=> bm!149666 (= call!149670 call!149671)))

(declare-fun bm!149667 () Bool)

(assert (=> bm!149667 (= call!149671 (derivativeStep!1852 (ite c!389738 (regTwo!14867 (derivativeStep!1852 lt!878222 (head!5545 s!9460))) (ite c!389739 (regTwo!14866 (derivativeStep!1852 lt!878222 (head!5545 s!9460))) (regOne!14866 (derivativeStep!1852 lt!878222 (head!5545 s!9460))))) (head!5545 (tail!3818 s!9460))))))

(declare-fun b!2441929 () Bool)

(assert (=> b!2441929 (= e!1551431 (Union!7177 (Concat!11813 call!149669 (regTwo!14866 (derivativeStep!1852 lt!878222 (head!5545 s!9460)))) call!149670))))

(declare-fun d!705185 () Bool)

(declare-fun lt!878428 () Regex!7177)

(assert (=> d!705185 (validRegex!2889 lt!878428)))

(assert (=> d!705185 (= lt!878428 e!1551432)))

(declare-fun c!389735 () Bool)

(assert (=> d!705185 (= c!389735 (or ((_ is EmptyExpr!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460))) ((_ is EmptyLang!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460)))))))

(assert (=> d!705185 (validRegex!2889 (derivativeStep!1852 lt!878222 (head!5545 s!9460)))))

(assert (=> d!705185 (= (derivativeStep!1852 (derivativeStep!1852 lt!878222 (head!5545 s!9460)) (head!5545 (tail!3818 s!9460))) lt!878428)))

(declare-fun b!2441933 () Bool)

(assert (=> b!2441933 (= e!1551433 e!1551430)))

(assert (=> b!2441933 (= c!389736 ((_ is Star!7177) (derivativeStep!1852 lt!878222 (head!5545 s!9460))))))

(declare-fun b!2441934 () Bool)

(assert (=> b!2441934 (= e!1551432 EmptyLang!7177)))

(declare-fun b!2441935 () Bool)

(assert (=> b!2441935 (= e!1551433 (Union!7177 call!149672 call!149671))))

(declare-fun b!2441936 () Bool)

(assert (=> b!2441936 (= e!1551431 (Union!7177 (Concat!11813 call!149670 (regTwo!14866 (derivativeStep!1852 lt!878222 (head!5545 s!9460)))) EmptyLang!7177))))

(assert (= (and d!705185 c!389735) b!2441934))

(assert (= (and d!705185 (not c!389735)) b!2441927))

(assert (= (and b!2441927 c!389737) b!2441928))

(assert (= (and b!2441927 (not c!389737)) b!2441932))

(assert (= (and b!2441932 c!389738) b!2441935))

(assert (= (and b!2441932 (not c!389738)) b!2441933))

(assert (= (and b!2441933 c!389736) b!2441931))

(assert (= (and b!2441933 (not c!389736)) b!2441930))

(assert (= (and b!2441930 c!389739) b!2441929))

(assert (= (and b!2441930 (not c!389739)) b!2441936))

(assert (= (or b!2441929 b!2441936) bm!149666))

(assert (= (or b!2441931 b!2441929) bm!149665))

(assert (= (or b!2441935 bm!149665) bm!149664))

(assert (= (or b!2441935 bm!149666) bm!149667))

(assert (=> bm!149664 m!2819049))

(declare-fun m!2819819 () Bool)

(assert (=> bm!149664 m!2819819))

(declare-fun m!2819821 () Bool)

(assert (=> b!2441930 m!2819821))

(assert (=> bm!149667 m!2819049))

(declare-fun m!2819823 () Bool)

(assert (=> bm!149667 m!2819823))

(declare-fun m!2819825 () Bool)

(assert (=> d!705185 m!2819825))

(assert (=> d!705185 m!2818209))

(assert (=> d!705185 m!2819051))

(assert (=> b!2440989 d!705185))

(assert (=> b!2440989 d!704905))

(assert (=> b!2440989 d!704921))

(assert (=> d!704851 d!705035))

(assert (=> d!704851 d!704731))

(declare-fun d!705187 () Bool)

(declare-fun lt!878429 () Int)

(assert (=> d!705187 (>= lt!878429 0)))

(declare-fun e!1551434 () Int)

(assert (=> d!705187 (= lt!878429 e!1551434)))

(declare-fun c!389740 () Bool)

(assert (=> d!705187 (= c!389740 ((_ is Nil!28492) lt!878344))))

(assert (=> d!705187 (= (size!22262 lt!878344) lt!878429)))

(declare-fun b!2441937 () Bool)

(assert (=> b!2441937 (= e!1551434 0)))

(declare-fun b!2441938 () Bool)

(assert (=> b!2441938 (= e!1551434 (+ 1 (size!22262 (t!208567 lt!878344))))))

(assert (= (and d!705187 c!389740) b!2441937))

(assert (= (and d!705187 (not c!389740)) b!2441938))

(declare-fun m!2819827 () Bool)

(assert (=> b!2441938 m!2819827))

(assert (=> b!2440836 d!705187))

(assert (=> b!2440836 d!705103))

(assert (=> b!2440836 d!704849))

(declare-fun d!705189 () Bool)

(declare-fun c!389741 () Bool)

(assert (=> d!705189 (= c!389741 ((_ is Nil!28492) lt!878346))))

(declare-fun e!1551435 () (InoxSet C!14512))

(assert (=> d!705189 (= (content!3924 lt!878346) e!1551435)))

(declare-fun b!2441939 () Bool)

(assert (=> b!2441939 (= e!1551435 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441940 () Bool)

(assert (=> b!2441940 (= e!1551435 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 lt!878346) true) (content!3924 (t!208567 lt!878346))))))

(assert (= (and d!705189 c!389741) b!2441939))

(assert (= (and d!705189 (not c!389741)) b!2441940))

(declare-fun m!2819829 () Bool)

(assert (=> b!2441940 m!2819829))

(declare-fun m!2819831 () Bool)

(assert (=> b!2441940 m!2819831))

(assert (=> d!704743 d!705189))

(declare-fun d!705191 () Bool)

(declare-fun c!389742 () Bool)

(assert (=> d!705191 (= c!389742 ((_ is Nil!28492) (_1!16596 (get!8795 lt!878298))))))

(declare-fun e!1551436 () (InoxSet C!14512))

(assert (=> d!705191 (= (content!3924 (_1!16596 (get!8795 lt!878298))) e!1551436)))

(declare-fun b!2441941 () Bool)

(assert (=> b!2441941 (= e!1551436 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441942 () Bool)

(assert (=> b!2441942 (= e!1551436 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (_1!16596 (get!8795 lt!878298))) true) (content!3924 (t!208567 (_1!16596 (get!8795 lt!878298))))))))

(assert (= (and d!705191 c!389742) b!2441941))

(assert (= (and d!705191 (not c!389742)) b!2441942))

(declare-fun m!2819833 () Bool)

(assert (=> b!2441942 m!2819833))

(declare-fun m!2819835 () Bool)

(assert (=> b!2441942 m!2819835))

(assert (=> d!704743 d!705191))

(declare-fun d!705193 () Bool)

(declare-fun c!389743 () Bool)

(assert (=> d!705193 (= c!389743 ((_ is Nil!28492) (_2!16596 (get!8795 lt!878298))))))

(declare-fun e!1551437 () (InoxSet C!14512))

(assert (=> d!705193 (= (content!3924 (_2!16596 (get!8795 lt!878298))) e!1551437)))

(declare-fun b!2441943 () Bool)

(assert (=> b!2441943 (= e!1551437 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2441944 () Bool)

(assert (=> b!2441944 (= e!1551437 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 (_2!16596 (get!8795 lt!878298))) true) (content!3924 (t!208567 (_2!16596 (get!8795 lt!878298))))))))

(assert (= (and d!705193 c!389743) b!2441943))

(assert (= (and d!705193 (not c!389743)) b!2441944))

(declare-fun m!2819837 () Bool)

(assert (=> b!2441944 m!2819837))

(declare-fun m!2819839 () Bool)

(assert (=> b!2441944 m!2819839))

(assert (=> d!704743 d!705193))

(declare-fun b!2441945 () Bool)

(declare-fun e!1551444 () Bool)

(declare-fun e!1551439 () Bool)

(assert (=> b!2441945 (= e!1551444 e!1551439)))

(declare-fun c!389745 () Bool)

(assert (=> b!2441945 (= c!389745 ((_ is Star!7177) lt!878359))))

(declare-fun bm!149668 () Bool)

(declare-fun call!149674 () Bool)

(declare-fun c!389744 () Bool)

(assert (=> bm!149668 (= call!149674 (validRegex!2889 (ite c!389744 (regOne!14867 lt!878359) (regTwo!14866 lt!878359))))))

(declare-fun b!2441946 () Bool)

(declare-fun e!1551438 () Bool)

(assert (=> b!2441946 (= e!1551439 e!1551438)))

(declare-fun res!1036764 () Bool)

(assert (=> b!2441946 (= res!1036764 (not (nullable!2198 (reg!7506 lt!878359))))))

(assert (=> b!2441946 (=> (not res!1036764) (not e!1551438))))

(declare-fun d!705195 () Bool)

(declare-fun res!1036765 () Bool)

(assert (=> d!705195 (=> res!1036765 e!1551444)))

(assert (=> d!705195 (= res!1036765 ((_ is ElementMatch!7177) lt!878359))))

(assert (=> d!705195 (= (validRegex!2889 lt!878359) e!1551444)))

(declare-fun b!2441947 () Bool)

(declare-fun e!1551442 () Bool)

(assert (=> b!2441947 (= e!1551442 call!149674)))

(declare-fun b!2441948 () Bool)

(declare-fun e!1551441 () Bool)

(declare-fun call!149675 () Bool)

(assert (=> b!2441948 (= e!1551441 call!149675)))

(declare-fun b!2441949 () Bool)

(declare-fun res!1036762 () Bool)

(declare-fun e!1551440 () Bool)

(assert (=> b!2441949 (=> res!1036762 e!1551440)))

(assert (=> b!2441949 (= res!1036762 (not ((_ is Concat!11813) lt!878359)))))

(declare-fun e!1551443 () Bool)

(assert (=> b!2441949 (= e!1551443 e!1551440)))

(declare-fun b!2441950 () Bool)

(declare-fun res!1036761 () Bool)

(assert (=> b!2441950 (=> (not res!1036761) (not e!1551441))))

(assert (=> b!2441950 (= res!1036761 call!149674)))

(assert (=> b!2441950 (= e!1551443 e!1551441)))

(declare-fun b!2441951 () Bool)

(assert (=> b!2441951 (= e!1551439 e!1551443)))

(assert (=> b!2441951 (= c!389744 ((_ is Union!7177) lt!878359))))

(declare-fun b!2441952 () Bool)

(assert (=> b!2441952 (= e!1551440 e!1551442)))

(declare-fun res!1036763 () Bool)

(assert (=> b!2441952 (=> (not res!1036763) (not e!1551442))))

(assert (=> b!2441952 (= res!1036763 call!149675)))

(declare-fun b!2441953 () Bool)

(declare-fun call!149673 () Bool)

(assert (=> b!2441953 (= e!1551438 call!149673)))

(declare-fun bm!149669 () Bool)

(assert (=> bm!149669 (= call!149675 call!149673)))

(declare-fun bm!149670 () Bool)

(assert (=> bm!149670 (= call!149673 (validRegex!2889 (ite c!389745 (reg!7506 lt!878359) (ite c!389744 (regTwo!14867 lt!878359) (regOne!14866 lt!878359)))))))

(assert (= (and d!705195 (not res!1036765)) b!2441945))

(assert (= (and b!2441945 c!389745) b!2441946))

(assert (= (and b!2441945 (not c!389745)) b!2441951))

(assert (= (and b!2441946 res!1036764) b!2441953))

(assert (= (and b!2441951 c!389744) b!2441950))

(assert (= (and b!2441951 (not c!389744)) b!2441949))

(assert (= (and b!2441950 res!1036761) b!2441948))

(assert (= (and b!2441949 (not res!1036762)) b!2441952))

(assert (= (and b!2441952 res!1036763) b!2441947))

(assert (= (or b!2441950 b!2441947) bm!149668))

(assert (= (or b!2441948 b!2441952) bm!149669))

(assert (= (or b!2441953 bm!149669) bm!149670))

(declare-fun m!2819841 () Bool)

(assert (=> bm!149668 m!2819841))

(declare-fun m!2819843 () Bool)

(assert (=> b!2441946 m!2819843))

(declare-fun m!2819845 () Bool)

(assert (=> bm!149670 m!2819845))

(assert (=> d!704781 d!705195))

(declare-fun d!705197 () Bool)

(declare-fun res!1036766 () Bool)

(declare-fun e!1551445 () Bool)

(assert (=> d!705197 (=> res!1036766 e!1551445)))

(assert (=> d!705197 (= res!1036766 ((_ is Nil!28493) (t!208568 lt!878228)))))

(assert (=> d!705197 (= (forall!5811 (t!208568 lt!878228) lambda!92420) e!1551445)))

(declare-fun b!2441954 () Bool)

(declare-fun e!1551446 () Bool)

(assert (=> b!2441954 (= e!1551445 e!1551446)))

(declare-fun res!1036767 () Bool)

(assert (=> b!2441954 (=> (not res!1036767) (not e!1551446))))

(assert (=> b!2441954 (= res!1036767 (dynLambda!12256 lambda!92420 (h!33894 (t!208568 lt!878228))))))

(declare-fun b!2441955 () Bool)

(assert (=> b!2441955 (= e!1551446 (forall!5811 (t!208568 (t!208568 lt!878228)) lambda!92420))))

(assert (= (and d!705197 (not res!1036766)) b!2441954))

(assert (= (and b!2441954 res!1036767) b!2441955))

(declare-fun b_lambda!74959 () Bool)

(assert (=> (not b_lambda!74959) (not b!2441954)))

(declare-fun m!2819847 () Bool)

(assert (=> b!2441954 m!2819847))

(declare-fun m!2819849 () Bool)

(assert (=> b!2441955 m!2819849))

(assert (=> d!704781 d!705197))

(assert (=> b!2441132 d!705109))

(assert (=> b!2441132 d!705111))

(declare-fun d!705199 () Bool)

(assert (=> d!705199 (= (nullable!2198 (reg!7506 (regOne!14866 r!13927))) (nullableFct!534 (reg!7506 (regOne!14866 r!13927))))))

(declare-fun bs!465060 () Bool)

(assert (= bs!465060 d!705199))

(declare-fun m!2819851 () Bool)

(assert (=> bs!465060 m!2819851))

(assert (=> b!2440946 d!705199))

(assert (=> b!2440816 d!705115))

(assert (=> b!2440816 d!705117))

(declare-fun b!2441956 () Bool)

(declare-fun e!1551450 () Regex!7177)

(declare-fun e!1551447 () Regex!7177)

(assert (=> b!2441956 (= e!1551450 e!1551447)))

(declare-fun c!389748 () Bool)

(assert (=> b!2441956 (= c!389748 ((_ is ElementMatch!7177) (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))))))

(declare-fun b!2441957 () Bool)

(assert (=> b!2441957 (= e!1551447 (ite (= (head!5545 s!9460) (c!389219 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927))))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun bm!149671 () Bool)

(declare-fun c!389747 () Bool)

(declare-fun call!149679 () Regex!7177)

(declare-fun c!389749 () Bool)

(assert (=> bm!149671 (= call!149679 (derivativeStep!1852 (ite c!389749 (regOne!14867 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))) (ite c!389747 (reg!7506 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))) (regOne!14866 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))))) (head!5545 s!9460)))))

(declare-fun b!2441959 () Bool)

(declare-fun c!389750 () Bool)

(assert (=> b!2441959 (= c!389750 (nullable!2198 (regOne!14866 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927))))))))

(declare-fun e!1551448 () Regex!7177)

(declare-fun e!1551449 () Regex!7177)

(assert (=> b!2441959 (= e!1551448 e!1551449)))

(declare-fun b!2441960 () Bool)

(declare-fun call!149676 () Regex!7177)

(assert (=> b!2441960 (= e!1551448 (Concat!11813 call!149676 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))))))

(declare-fun b!2441961 () Bool)

(assert (=> b!2441961 (= c!389749 ((_ is Union!7177) (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))))))

(declare-fun e!1551451 () Regex!7177)

(assert (=> b!2441961 (= e!1551447 e!1551451)))

(declare-fun bm!149672 () Bool)

(assert (=> bm!149672 (= call!149676 call!149679)))

(declare-fun bm!149673 () Bool)

(declare-fun call!149677 () Regex!7177)

(declare-fun call!149678 () Regex!7177)

(assert (=> bm!149673 (= call!149677 call!149678)))

(declare-fun bm!149674 () Bool)

(assert (=> bm!149674 (= call!149678 (derivativeStep!1852 (ite c!389749 (regTwo!14867 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))) (ite c!389750 (regTwo!14866 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))) (regOne!14866 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))))) (head!5545 s!9460)))))

(declare-fun b!2441958 () Bool)

(assert (=> b!2441958 (= e!1551449 (Union!7177 (Concat!11813 call!149676 (regTwo!14866 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927))))) call!149677))))

(declare-fun d!705201 () Bool)

(declare-fun lt!878430 () Regex!7177)

(assert (=> d!705201 (validRegex!2889 lt!878430)))

(assert (=> d!705201 (= lt!878430 e!1551450)))

(declare-fun c!389746 () Bool)

(assert (=> d!705201 (= c!389746 (or ((_ is EmptyExpr!7177) (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))) ((_ is EmptyLang!7177) (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927))))))))

(assert (=> d!705201 (validRegex!2889 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927))))))

(assert (=> d!705201 (= (derivativeStep!1852 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927))) (head!5545 s!9460)) lt!878430)))

(declare-fun b!2441962 () Bool)

(assert (=> b!2441962 (= e!1551451 e!1551448)))

(assert (=> b!2441962 (= c!389747 ((_ is Star!7177) (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927)))))))

(declare-fun b!2441963 () Bool)

(assert (=> b!2441963 (= e!1551450 EmptyLang!7177)))

(declare-fun b!2441964 () Bool)

(assert (=> b!2441964 (= e!1551451 (Union!7177 call!149679 call!149678))))

(declare-fun b!2441965 () Bool)

(assert (=> b!2441965 (= e!1551449 (Union!7177 (Concat!11813 call!149677 (regTwo!14866 (ite c!389548 (regTwo!14867 r!13927) (ite c!389549 (regTwo!14866 r!13927) (regOne!14866 r!13927))))) EmptyLang!7177))))

(assert (= (and d!705201 c!389746) b!2441963))

(assert (= (and d!705201 (not c!389746)) b!2441956))

(assert (= (and b!2441956 c!389748) b!2441957))

(assert (= (and b!2441956 (not c!389748)) b!2441961))

(assert (= (and b!2441961 c!389749) b!2441964))

(assert (= (and b!2441961 (not c!389749)) b!2441962))

(assert (= (and b!2441962 c!389747) b!2441960))

(assert (= (and b!2441962 (not c!389747)) b!2441959))

(assert (= (and b!2441959 c!389750) b!2441958))

(assert (= (and b!2441959 (not c!389750)) b!2441965))

(assert (= (or b!2441958 b!2441965) bm!149673))

(assert (= (or b!2441960 b!2441958) bm!149672))

(assert (= (or b!2441964 bm!149672) bm!149671))

(assert (= (or b!2441964 bm!149673) bm!149674))

(assert (=> bm!149671 m!2818201))

(declare-fun m!2819853 () Bool)

(assert (=> bm!149671 m!2819853))

(declare-fun m!2819855 () Bool)

(assert (=> b!2441959 m!2819855))

(assert (=> bm!149674 m!2818201))

(declare-fun m!2819857 () Bool)

(assert (=> bm!149674 m!2819857))

(declare-fun m!2819859 () Bool)

(assert (=> d!705201 m!2819859))

(declare-fun m!2819861 () Bool)

(assert (=> d!705201 m!2819861))

(assert (=> bm!149531 d!705201))

(declare-fun d!705203 () Bool)

(assert (=> d!705203 (= (nullable!2198 (derivativeStep!1852 r!13927 (head!5545 s!9460))) (nullableFct!534 (derivativeStep!1852 r!13927 (head!5545 s!9460))))))

(declare-fun bs!465061 () Bool)

(assert (= bs!465061 d!705203))

(assert (=> bs!465061 m!2818417))

(declare-fun m!2819863 () Bool)

(assert (=> bs!465061 m!2819863))

(assert (=> b!2441150 d!705203))

(declare-fun b!2441966 () Bool)

(declare-fun e!1551455 () Bool)

(declare-fun lt!878431 () Bool)

(declare-fun call!149680 () Bool)

(assert (=> b!2441966 (= e!1551455 (= lt!878431 call!149680))))

(declare-fun d!705205 () Bool)

(assert (=> d!705205 e!1551455))

(declare-fun c!389753 () Bool)

(assert (=> d!705205 (= c!389753 ((_ is EmptyExpr!7177) (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295))))))))

(declare-fun e!1551453 () Bool)

(assert (=> d!705205 (= lt!878431 e!1551453)))

(declare-fun c!389751 () Bool)

(assert (=> d!705205 (= c!389751 (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878295)))))))

(assert (=> d!705205 (validRegex!2889 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295)))))))

(assert (=> d!705205 (= (matchR!3292 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295)))) (tail!3818 (_2!16596 (get!8795 lt!878295)))) lt!878431)))

(declare-fun b!2441967 () Bool)

(declare-fun e!1551457 () Bool)

(assert (=> b!2441967 (= e!1551455 e!1551457)))

(declare-fun c!389752 () Bool)

(assert (=> b!2441967 (= c!389752 ((_ is EmptyLang!7177) (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295))))))))

(declare-fun b!2441968 () Bool)

(declare-fun res!1036770 () Bool)

(declare-fun e!1551452 () Bool)

(assert (=> b!2441968 (=> res!1036770 e!1551452)))

(declare-fun e!1551456 () Bool)

(assert (=> b!2441968 (= res!1036770 e!1551456)))

(declare-fun res!1036773 () Bool)

(assert (=> b!2441968 (=> (not res!1036773) (not e!1551456))))

(assert (=> b!2441968 (= res!1036773 lt!878431)))

(declare-fun b!2441969 () Bool)

(assert (=> b!2441969 (= e!1551457 (not lt!878431))))

(declare-fun b!2441970 () Bool)

(declare-fun e!1551458 () Bool)

(assert (=> b!2441970 (= e!1551452 e!1551458)))

(declare-fun res!1036775 () Bool)

(assert (=> b!2441970 (=> (not res!1036775) (not e!1551458))))

(assert (=> b!2441970 (= res!1036775 (not lt!878431))))

(declare-fun b!2441971 () Bool)

(declare-fun res!1036772 () Bool)

(assert (=> b!2441971 (=> (not res!1036772) (not e!1551456))))

(assert (=> b!2441971 (= res!1036772 (isEmpty!16534 (tail!3818 (tail!3818 (_2!16596 (get!8795 lt!878295))))))))

(declare-fun b!2441972 () Bool)

(declare-fun e!1551454 () Bool)

(assert (=> b!2441972 (= e!1551458 e!1551454)))

(declare-fun res!1036769 () Bool)

(assert (=> b!2441972 (=> res!1036769 e!1551454)))

(assert (=> b!2441972 (= res!1036769 call!149680)))

(declare-fun b!2441973 () Bool)

(assert (=> b!2441973 (= e!1551453 (nullable!2198 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295))))))))

(declare-fun b!2441974 () Bool)

(assert (=> b!2441974 (= e!1551456 (= (head!5545 (tail!3818 (_2!16596 (get!8795 lt!878295)))) (c!389219 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295)))))))))

(declare-fun b!2441975 () Bool)

(declare-fun res!1036774 () Bool)

(assert (=> b!2441975 (=> (not res!1036774) (not e!1551456))))

(assert (=> b!2441975 (= res!1036774 (not call!149680))))

(declare-fun bm!149675 () Bool)

(assert (=> bm!149675 (= call!149680 (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878295)))))))

(declare-fun b!2441976 () Bool)

(declare-fun res!1036768 () Bool)

(assert (=> b!2441976 (=> res!1036768 e!1551454)))

(assert (=> b!2441976 (= res!1036768 (not (isEmpty!16534 (tail!3818 (tail!3818 (_2!16596 (get!8795 lt!878295)))))))))

(declare-fun b!2441977 () Bool)

(assert (=> b!2441977 (= e!1551453 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295)))) (head!5545 (tail!3818 (_2!16596 (get!8795 lt!878295))))) (tail!3818 (tail!3818 (_2!16596 (get!8795 lt!878295))))))))

(declare-fun b!2441978 () Bool)

(declare-fun res!1036771 () Bool)

(assert (=> b!2441978 (=> res!1036771 e!1551452)))

(assert (=> b!2441978 (= res!1036771 (not ((_ is ElementMatch!7177) (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295)))))))))

(assert (=> b!2441978 (= e!1551457 e!1551452)))

(declare-fun b!2441979 () Bool)

(assert (=> b!2441979 (= e!1551454 (not (= (head!5545 (tail!3818 (_2!16596 (get!8795 lt!878295)))) (c!389219 (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295))))))))))

(assert (= (and d!705205 c!389751) b!2441973))

(assert (= (and d!705205 (not c!389751)) b!2441977))

(assert (= (and d!705205 c!389753) b!2441966))

(assert (= (and d!705205 (not c!389753)) b!2441967))

(assert (= (and b!2441967 c!389752) b!2441969))

(assert (= (and b!2441967 (not c!389752)) b!2441978))

(assert (= (and b!2441978 (not res!1036771)) b!2441968))

(assert (= (and b!2441968 res!1036773) b!2441975))

(assert (= (and b!2441975 res!1036774) b!2441971))

(assert (= (and b!2441971 res!1036772) b!2441974))

(assert (= (and b!2441968 (not res!1036770)) b!2441970))

(assert (= (and b!2441970 res!1036775) b!2441972))

(assert (= (and b!2441972 (not res!1036769)) b!2441976))

(assert (= (and b!2441976 (not res!1036768)) b!2441979))

(assert (= (or b!2441966 b!2441975 b!2441972) bm!149675))

(assert (=> b!2441976 m!2819133))

(declare-fun m!2819865 () Bool)

(assert (=> b!2441976 m!2819865))

(assert (=> b!2441976 m!2819865))

(declare-fun m!2819867 () Bool)

(assert (=> b!2441976 m!2819867))

(assert (=> b!2441979 m!2819133))

(declare-fun m!2819869 () Bool)

(assert (=> b!2441979 m!2819869))

(assert (=> b!2441971 m!2819133))

(assert (=> b!2441971 m!2819865))

(assert (=> b!2441971 m!2819865))

(assert (=> b!2441971 m!2819867))

(assert (=> d!705205 m!2819133))

(assert (=> d!705205 m!2819135))

(assert (=> d!705205 m!2819141))

(declare-fun m!2819871 () Bool)

(assert (=> d!705205 m!2819871))

(assert (=> bm!149675 m!2819133))

(assert (=> bm!149675 m!2819135))

(assert (=> b!2441973 m!2819141))

(declare-fun m!2819873 () Bool)

(assert (=> b!2441973 m!2819873))

(assert (=> b!2441974 m!2819133))

(assert (=> b!2441974 m!2819869))

(assert (=> b!2441977 m!2819133))

(assert (=> b!2441977 m!2819869))

(assert (=> b!2441977 m!2819141))

(assert (=> b!2441977 m!2819869))

(declare-fun m!2819875 () Bool)

(assert (=> b!2441977 m!2819875))

(assert (=> b!2441977 m!2819133))

(assert (=> b!2441977 m!2819865))

(assert (=> b!2441977 m!2819875))

(assert (=> b!2441977 m!2819865))

(declare-fun m!2819877 () Bool)

(assert (=> b!2441977 m!2819877))

(assert (=> b!2441091 d!705205))

(declare-fun b!2441980 () Bool)

(declare-fun e!1551462 () Regex!7177)

(declare-fun e!1551459 () Regex!7177)

(assert (=> b!2441980 (= e!1551462 e!1551459)))

(declare-fun c!389756 () Bool)

(assert (=> b!2441980 (= c!389756 ((_ is ElementMatch!7177) (regTwo!14866 r!13927)))))

(declare-fun b!2441981 () Bool)

(assert (=> b!2441981 (= e!1551459 (ite (= (head!5545 (_2!16596 (get!8795 lt!878295))) (c!389219 (regTwo!14866 r!13927))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun bm!149676 () Bool)

(declare-fun c!389757 () Bool)

(declare-fun call!149684 () Regex!7177)

(declare-fun c!389755 () Bool)

(assert (=> bm!149676 (= call!149684 (derivativeStep!1852 (ite c!389757 (regOne!14867 (regTwo!14866 r!13927)) (ite c!389755 (reg!7506 (regTwo!14866 r!13927)) (regOne!14866 (regTwo!14866 r!13927)))) (head!5545 (_2!16596 (get!8795 lt!878295)))))))

(declare-fun b!2441983 () Bool)

(declare-fun c!389758 () Bool)

(assert (=> b!2441983 (= c!389758 (nullable!2198 (regOne!14866 (regTwo!14866 r!13927))))))

(declare-fun e!1551460 () Regex!7177)

(declare-fun e!1551461 () Regex!7177)

(assert (=> b!2441983 (= e!1551460 e!1551461)))

(declare-fun b!2441984 () Bool)

(declare-fun call!149681 () Regex!7177)

(assert (=> b!2441984 (= e!1551460 (Concat!11813 call!149681 (regTwo!14866 r!13927)))))

(declare-fun b!2441985 () Bool)

(assert (=> b!2441985 (= c!389757 ((_ is Union!7177) (regTwo!14866 r!13927)))))

(declare-fun e!1551463 () Regex!7177)

(assert (=> b!2441985 (= e!1551459 e!1551463)))

(declare-fun bm!149677 () Bool)

(assert (=> bm!149677 (= call!149681 call!149684)))

(declare-fun bm!149678 () Bool)

(declare-fun call!149682 () Regex!7177)

(declare-fun call!149683 () Regex!7177)

(assert (=> bm!149678 (= call!149682 call!149683)))

(declare-fun bm!149679 () Bool)

(assert (=> bm!149679 (= call!149683 (derivativeStep!1852 (ite c!389757 (regTwo!14867 (regTwo!14866 r!13927)) (ite c!389758 (regTwo!14866 (regTwo!14866 r!13927)) (regOne!14866 (regTwo!14866 r!13927)))) (head!5545 (_2!16596 (get!8795 lt!878295)))))))

(declare-fun b!2441982 () Bool)

(assert (=> b!2441982 (= e!1551461 (Union!7177 (Concat!11813 call!149681 (regTwo!14866 (regTwo!14866 r!13927))) call!149682))))

(declare-fun d!705207 () Bool)

(declare-fun lt!878432 () Regex!7177)

(assert (=> d!705207 (validRegex!2889 lt!878432)))

(assert (=> d!705207 (= lt!878432 e!1551462)))

(declare-fun c!389754 () Bool)

(assert (=> d!705207 (= c!389754 (or ((_ is EmptyExpr!7177) (regTwo!14866 r!13927)) ((_ is EmptyLang!7177) (regTwo!14866 r!13927))))))

(assert (=> d!705207 (validRegex!2889 (regTwo!14866 r!13927))))

(assert (=> d!705207 (= (derivativeStep!1852 (regTwo!14866 r!13927) (head!5545 (_2!16596 (get!8795 lt!878295)))) lt!878432)))

(declare-fun b!2441986 () Bool)

(assert (=> b!2441986 (= e!1551463 e!1551460)))

(assert (=> b!2441986 (= c!389755 ((_ is Star!7177) (regTwo!14866 r!13927)))))

(declare-fun b!2441987 () Bool)

(assert (=> b!2441987 (= e!1551462 EmptyLang!7177)))

(declare-fun b!2441988 () Bool)

(assert (=> b!2441988 (= e!1551463 (Union!7177 call!149684 call!149683))))

(declare-fun b!2441989 () Bool)

(assert (=> b!2441989 (= e!1551461 (Union!7177 (Concat!11813 call!149682 (regTwo!14866 (regTwo!14866 r!13927))) EmptyLang!7177))))

(assert (= (and d!705207 c!389754) b!2441987))

(assert (= (and d!705207 (not c!389754)) b!2441980))

(assert (= (and b!2441980 c!389756) b!2441981))

(assert (= (and b!2441980 (not c!389756)) b!2441985))

(assert (= (and b!2441985 c!389757) b!2441988))

(assert (= (and b!2441985 (not c!389757)) b!2441986))

(assert (= (and b!2441986 c!389755) b!2441984))

(assert (= (and b!2441986 (not c!389755)) b!2441983))

(assert (= (and b!2441983 c!389758) b!2441982))

(assert (= (and b!2441983 (not c!389758)) b!2441989))

(assert (= (or b!2441982 b!2441989) bm!149678))

(assert (= (or b!2441984 b!2441982) bm!149677))

(assert (= (or b!2441988 bm!149677) bm!149676))

(assert (= (or b!2441988 bm!149678) bm!149679))

(assert (=> bm!149676 m!2819137))

(declare-fun m!2819879 () Bool)

(assert (=> bm!149676 m!2819879))

(assert (=> b!2441983 m!2819703))

(assert (=> bm!149679 m!2819137))

(declare-fun m!2819881 () Bool)

(assert (=> bm!149679 m!2819881))

(declare-fun m!2819883 () Bool)

(assert (=> d!705207 m!2819883))

(assert (=> d!705207 m!2819037))

(assert (=> b!2441091 d!705207))

(assert (=> b!2441091 d!704911))

(assert (=> b!2441091 d!704957))

(declare-fun b!2441990 () Bool)

(declare-fun e!1551470 () Bool)

(declare-fun e!1551465 () Bool)

(assert (=> b!2441990 (= e!1551470 e!1551465)))

(declare-fun c!389760 () Bool)

(assert (=> b!2441990 (= c!389760 ((_ is Star!7177) (h!33894 lt!878228)))))

(declare-fun bm!149680 () Bool)

(declare-fun call!149686 () Bool)

(declare-fun c!389759 () Bool)

(assert (=> bm!149680 (= call!149686 (validRegex!2889 (ite c!389759 (regOne!14867 (h!33894 lt!878228)) (regTwo!14866 (h!33894 lt!878228)))))))

(declare-fun b!2441991 () Bool)

(declare-fun e!1551464 () Bool)

(assert (=> b!2441991 (= e!1551465 e!1551464)))

(declare-fun res!1036779 () Bool)

(assert (=> b!2441991 (= res!1036779 (not (nullable!2198 (reg!7506 (h!33894 lt!878228)))))))

(assert (=> b!2441991 (=> (not res!1036779) (not e!1551464))))

(declare-fun d!705209 () Bool)

(declare-fun res!1036780 () Bool)

(assert (=> d!705209 (=> res!1036780 e!1551470)))

(assert (=> d!705209 (= res!1036780 ((_ is ElementMatch!7177) (h!33894 lt!878228)))))

(assert (=> d!705209 (= (validRegex!2889 (h!33894 lt!878228)) e!1551470)))

(declare-fun b!2441992 () Bool)

(declare-fun e!1551468 () Bool)

(assert (=> b!2441992 (= e!1551468 call!149686)))

(declare-fun b!2441993 () Bool)

(declare-fun e!1551467 () Bool)

(declare-fun call!149687 () Bool)

(assert (=> b!2441993 (= e!1551467 call!149687)))

(declare-fun b!2441994 () Bool)

(declare-fun res!1036777 () Bool)

(declare-fun e!1551466 () Bool)

(assert (=> b!2441994 (=> res!1036777 e!1551466)))

(assert (=> b!2441994 (= res!1036777 (not ((_ is Concat!11813) (h!33894 lt!878228))))))

(declare-fun e!1551469 () Bool)

(assert (=> b!2441994 (= e!1551469 e!1551466)))

(declare-fun b!2441995 () Bool)

(declare-fun res!1036776 () Bool)

(assert (=> b!2441995 (=> (not res!1036776) (not e!1551467))))

(assert (=> b!2441995 (= res!1036776 call!149686)))

(assert (=> b!2441995 (= e!1551469 e!1551467)))

(declare-fun b!2441996 () Bool)

(assert (=> b!2441996 (= e!1551465 e!1551469)))

(assert (=> b!2441996 (= c!389759 ((_ is Union!7177) (h!33894 lt!878228)))))

(declare-fun b!2441997 () Bool)

(assert (=> b!2441997 (= e!1551466 e!1551468)))

(declare-fun res!1036778 () Bool)

(assert (=> b!2441997 (=> (not res!1036778) (not e!1551468))))

(assert (=> b!2441997 (= res!1036778 call!149687)))

(declare-fun b!2441998 () Bool)

(declare-fun call!149685 () Bool)

(assert (=> b!2441998 (= e!1551464 call!149685)))

(declare-fun bm!149681 () Bool)

(assert (=> bm!149681 (= call!149687 call!149685)))

(declare-fun bm!149682 () Bool)

(assert (=> bm!149682 (= call!149685 (validRegex!2889 (ite c!389760 (reg!7506 (h!33894 lt!878228)) (ite c!389759 (regTwo!14867 (h!33894 lt!878228)) (regOne!14866 (h!33894 lt!878228))))))))

(assert (= (and d!705209 (not res!1036780)) b!2441990))

(assert (= (and b!2441990 c!389760) b!2441991))

(assert (= (and b!2441990 (not c!389760)) b!2441996))

(assert (= (and b!2441991 res!1036779) b!2441998))

(assert (= (and b!2441996 c!389759) b!2441995))

(assert (= (and b!2441996 (not c!389759)) b!2441994))

(assert (= (and b!2441995 res!1036776) b!2441993))

(assert (= (and b!2441994 (not res!1036777)) b!2441997))

(assert (= (and b!2441997 res!1036778) b!2441992))

(assert (= (or b!2441995 b!2441992) bm!149680))

(assert (= (or b!2441993 b!2441997) bm!149681))

(assert (= (or b!2441998 bm!149681) bm!149682))

(declare-fun m!2819885 () Bool)

(assert (=> bm!149680 m!2819885))

(declare-fun m!2819887 () Bool)

(assert (=> b!2441991 m!2819887))

(declare-fun m!2819889 () Bool)

(assert (=> bm!149682 m!2819889))

(assert (=> bs!464955 d!705209))

(declare-fun d!705211 () Bool)

(declare-fun c!389761 () Bool)

(assert (=> d!705211 (= c!389761 ((_ is Nil!28492) lt!878344))))

(declare-fun e!1551471 () (InoxSet C!14512))

(assert (=> d!705211 (= (content!3924 lt!878344) e!1551471)))

(declare-fun b!2441999 () Bool)

(assert (=> b!2441999 (= e!1551471 ((as const (Array C!14512 Bool)) false))))

(declare-fun b!2442000 () Bool)

(assert (=> b!2442000 (= e!1551471 ((_ map or) (store ((as const (Array C!14512 Bool)) false) (h!33893 lt!878344) true) (content!3924 (t!208567 lt!878344))))))

(assert (= (and d!705211 c!389761) b!2441999))

(assert (= (and d!705211 (not c!389761)) b!2442000))

(declare-fun m!2819891 () Bool)

(assert (=> b!2442000 m!2819891))

(declare-fun m!2819893 () Bool)

(assert (=> b!2442000 m!2819893))

(assert (=> d!704735 d!705211))

(assert (=> d!704735 d!704995))

(assert (=> d!704735 d!704713))

(declare-fun b!2442001 () Bool)

(declare-fun e!1551473 () List!28590)

(assert (=> b!2442001 (= e!1551473 (_2!16596 (get!8795 lt!878298)))))

(declare-fun d!705213 () Bool)

(declare-fun e!1551472 () Bool)

(assert (=> d!705213 e!1551472))

(declare-fun res!1036781 () Bool)

(assert (=> d!705213 (=> (not res!1036781) (not e!1551472))))

(declare-fun lt!878433 () List!28590)

(assert (=> d!705213 (= res!1036781 (= (content!3924 lt!878433) ((_ map or) (content!3924 (t!208567 (_1!16596 (get!8795 lt!878298)))) (content!3924 (_2!16596 (get!8795 lt!878298))))))))

(assert (=> d!705213 (= lt!878433 e!1551473)))

(declare-fun c!389762 () Bool)

(assert (=> d!705213 (= c!389762 ((_ is Nil!28492) (t!208567 (_1!16596 (get!8795 lt!878298)))))))

(assert (=> d!705213 (= (++!7080 (t!208567 (_1!16596 (get!8795 lt!878298))) (_2!16596 (get!8795 lt!878298))) lt!878433)))

(declare-fun b!2442004 () Bool)

(assert (=> b!2442004 (= e!1551472 (or (not (= (_2!16596 (get!8795 lt!878298)) Nil!28492)) (= lt!878433 (t!208567 (_1!16596 (get!8795 lt!878298))))))))

(declare-fun b!2442003 () Bool)

(declare-fun res!1036782 () Bool)

(assert (=> b!2442003 (=> (not res!1036782) (not e!1551472))))

(assert (=> b!2442003 (= res!1036782 (= (size!22262 lt!878433) (+ (size!22262 (t!208567 (_1!16596 (get!8795 lt!878298)))) (size!22262 (_2!16596 (get!8795 lt!878298))))))))

(declare-fun b!2442002 () Bool)

(assert (=> b!2442002 (= e!1551473 (Cons!28492 (h!33893 (t!208567 (_1!16596 (get!8795 lt!878298)))) (++!7080 (t!208567 (t!208567 (_1!16596 (get!8795 lt!878298)))) (_2!16596 (get!8795 lt!878298)))))))

(assert (= (and d!705213 c!389762) b!2442001))

(assert (= (and d!705213 (not c!389762)) b!2442002))

(assert (= (and d!705213 res!1036781) b!2442003))

(assert (= (and b!2442003 res!1036782) b!2442004))

(declare-fun m!2819895 () Bool)

(assert (=> d!705213 m!2819895))

(assert (=> d!705213 m!2819835))

(assert (=> d!705213 m!2818901))

(declare-fun m!2819897 () Bool)

(assert (=> b!2442003 m!2819897))

(assert (=> b!2442003 m!2819373))

(assert (=> b!2442003 m!2818907))

(declare-fun m!2819899 () Bool)

(assert (=> b!2442002 m!2819899))

(assert (=> b!2440853 d!705213))

(declare-fun d!705215 () Bool)

(assert (not d!705215))

(assert (=> b!2441124 d!705215))

(declare-fun d!705217 () Bool)

(assert (not d!705217))

(assert (=> b!2441124 d!705217))

(assert (=> b!2441124 d!704923))

(assert (=> b!2441124 d!704953))

(declare-fun d!705219 () Bool)

(assert (=> d!705219 (= (nullable!2198 (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))) (nullableFct!534 (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177))))))

(declare-fun bs!465062 () Bool)

(assert (= bs!465062 d!705219))

(declare-fun m!2819901 () Bool)

(assert (=> bs!465062 m!2819901))

(assert (=> b!2440910 d!705219))

(assert (=> b!2440869 d!705047))

(assert (=> b!2440869 d!705049))

(assert (=> b!2440869 d!705051))

(declare-fun b!2442005 () Bool)

(declare-fun e!1551477 () Bool)

(declare-fun lt!878434 () Option!5666)

(assert (=> b!2442005 (= e!1551477 (= (++!7080 (_1!16596 (get!8795 lt!878434)) (_2!16596 (get!8795 lt!878434))) s!9460))))

(declare-fun b!2442006 () Bool)

(declare-fun e!1551476 () Bool)

(assert (=> b!2442006 (= e!1551476 (not (isDefined!4492 lt!878434)))))

(declare-fun d!705221 () Bool)

(assert (=> d!705221 e!1551476))

(declare-fun res!1036786 () Bool)

(assert (=> d!705221 (=> res!1036786 e!1551476)))

(assert (=> d!705221 (= res!1036786 e!1551477)))

(declare-fun res!1036787 () Bool)

(assert (=> d!705221 (=> (not res!1036787) (not e!1551477))))

(assert (=> d!705221 (= res!1036787 (isDefined!4492 lt!878434))))

(declare-fun e!1551474 () Option!5666)

(assert (=> d!705221 (= lt!878434 e!1551474)))

(declare-fun c!389763 () Bool)

(declare-fun e!1551475 () Bool)

(assert (=> d!705221 (= c!389763 e!1551475)))

(declare-fun res!1036783 () Bool)

(assert (=> d!705221 (=> (not res!1036783) (not e!1551475))))

(assert (=> d!705221 (= res!1036783 (matchR!3292 (regOne!14866 r!13927) (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492))))))

(assert (=> d!705221 (validRegex!2889 (regOne!14866 r!13927))))

(assert (=> d!705221 (= (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (t!208567 (t!208567 s!9460)) s!9460) lt!878434)))

(declare-fun b!2442007 () Bool)

(declare-fun res!1036785 () Bool)

(assert (=> b!2442007 (=> (not res!1036785) (not e!1551477))))

(assert (=> b!2442007 (= res!1036785 (matchR!3292 (regTwo!14866 r!13927) (_2!16596 (get!8795 lt!878434))))))

(declare-fun b!2442008 () Bool)

(assert (=> b!2442008 (= e!1551475 (matchR!3292 (regTwo!14866 r!13927) (t!208567 (t!208567 s!9460))))))

(declare-fun b!2442009 () Bool)

(declare-fun res!1036784 () Bool)

(assert (=> b!2442009 (=> (not res!1036784) (not e!1551477))))

(assert (=> b!2442009 (= res!1036784 (matchR!3292 (regOne!14866 r!13927) (_1!16596 (get!8795 lt!878434))))))

(declare-fun b!2442010 () Bool)

(declare-fun lt!878435 () Unit!41737)

(declare-fun lt!878436 () Unit!41737)

(assert (=> b!2442010 (= lt!878435 lt!878436)))

(assert (=> b!2442010 (= (++!7080 (++!7080 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (Cons!28492 (h!33893 (t!208567 (t!208567 s!9460))) Nil!28492)) (t!208567 (t!208567 (t!208567 s!9460)))) s!9460)))

(assert (=> b!2442010 (= lt!878436 (lemmaMoveElementToOtherListKeepsConcatEq!699 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (h!33893 (t!208567 (t!208567 s!9460))) (t!208567 (t!208567 (t!208567 s!9460))) s!9460))))

(declare-fun e!1551478 () Option!5666)

(assert (=> b!2442010 (= e!1551478 (findConcatSeparation!774 (regOne!14866 r!13927) (regTwo!14866 r!13927) (++!7080 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (Cons!28492 (h!33893 (t!208567 (t!208567 s!9460))) Nil!28492)) (t!208567 (t!208567 (t!208567 s!9460))) s!9460))))

(declare-fun b!2442011 () Bool)

(assert (=> b!2442011 (= e!1551474 e!1551478)))

(declare-fun c!389764 () Bool)

(assert (=> b!2442011 (= c!389764 ((_ is Nil!28492) (t!208567 (t!208567 s!9460))))))

(declare-fun b!2442012 () Bool)

(assert (=> b!2442012 (= e!1551478 None!5665)))

(declare-fun b!2442013 () Bool)

(assert (=> b!2442013 (= e!1551474 (Some!5665 (tuple2!28111 (++!7080 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)) (Cons!28492 (h!33893 (t!208567 s!9460)) Nil!28492)) (t!208567 (t!208567 s!9460)))))))

(assert (= (and d!705221 res!1036783) b!2442008))

(assert (= (and d!705221 c!389763) b!2442013))

(assert (= (and d!705221 (not c!389763)) b!2442011))

(assert (= (and b!2442011 c!389764) b!2442012))

(assert (= (and b!2442011 (not c!389764)) b!2442010))

(assert (= (and d!705221 res!1036787) b!2442009))

(assert (= (and b!2442009 res!1036784) b!2442007))

(assert (= (and b!2442007 res!1036785) b!2442005))

(assert (= (and d!705221 (not res!1036786)) b!2442006))

(declare-fun m!2819903 () Bool)

(assert (=> b!2442006 m!2819903))

(declare-fun m!2819905 () Bool)

(assert (=> b!2442009 m!2819905))

(declare-fun m!2819907 () Bool)

(assert (=> b!2442009 m!2819907))

(assert (=> d!705221 m!2819903))

(assert (=> d!705221 m!2818953))

(declare-fun m!2819909 () Bool)

(assert (=> d!705221 m!2819909))

(assert (=> d!705221 m!2818351))

(assert (=> b!2442007 m!2819905))

(declare-fun m!2819911 () Bool)

(assert (=> b!2442007 m!2819911))

(assert (=> b!2442010 m!2818953))

(assert (=> b!2442010 m!2819549))

(assert (=> b!2442010 m!2819549))

(assert (=> b!2442010 m!2819551))

(assert (=> b!2442010 m!2818953))

(assert (=> b!2442010 m!2819553))

(assert (=> b!2442010 m!2819549))

(declare-fun m!2819913 () Bool)

(assert (=> b!2442010 m!2819913))

(assert (=> b!2442005 m!2819905))

(declare-fun m!2819915 () Bool)

(assert (=> b!2442005 m!2819915))

(declare-fun m!2819917 () Bool)

(assert (=> b!2442008 m!2819917))

(assert (=> b!2440869 d!705221))

(declare-fun d!705223 () Bool)

(assert (=> d!705223 (= (isDefined!4492 lt!878367) (not (isEmpty!16535 lt!878367)))))

(declare-fun bs!465063 () Bool)

(assert (= bs!465063 d!705223))

(declare-fun m!2819919 () Bool)

(assert (=> bs!465063 m!2819919))

(assert (=> b!2441095 d!705223))

(declare-fun bs!465064 () Bool)

(declare-fun d!705225 () Bool)

(assert (= bs!465064 (and d!705225 d!704483)))

(declare-fun lambda!92435 () Int)

(assert (=> bs!465064 (= lambda!92435 lambda!92374)))

(declare-fun bs!465065 () Bool)

(assert (= bs!465065 (and d!705225 d!704997)))

(assert (=> bs!465065 (= lambda!92435 lambda!92430)))

(declare-fun bs!465066 () Bool)

(assert (= bs!465066 (and d!705225 d!704451)))

(assert (=> bs!465066 (= lambda!92435 lambda!92365)))

(declare-fun bs!465067 () Bool)

(assert (= bs!465067 (and d!705225 d!704781)))

(assert (=> bs!465067 (= lambda!92435 lambda!92420)))

(declare-fun bs!465068 () Bool)

(assert (= bs!465068 (and d!705225 start!238766)))

(assert (=> bs!465068 (= lambda!92435 lambda!92357)))

(declare-fun bs!465069 () Bool)

(assert (= bs!465069 (and d!705225 d!704715)))

(assert (=> bs!465069 (= lambda!92435 lambda!92413)))

(declare-fun b!2442014 () Bool)

(declare-fun e!1551480 () Regex!7177)

(assert (=> b!2442014 (= e!1551480 EmptyExpr!7177)))

(declare-fun b!2442015 () Bool)

(declare-fun e!1551479 () Regex!7177)

(assert (=> b!2442015 (= e!1551479 e!1551480)))

(declare-fun c!389765 () Bool)

(assert (=> b!2442015 (= c!389765 ((_ is Cons!28493) (t!208568 (t!208568 l!9164))))))

(declare-fun b!2442016 () Bool)

(declare-fun e!1551483 () Bool)

(assert (=> b!2442016 (= e!1551483 (isEmpty!16531 (t!208568 (t!208568 (t!208568 l!9164)))))))

(declare-fun b!2442017 () Bool)

(declare-fun e!1551481 () Bool)

(declare-fun lt!878437 () Regex!7177)

(assert (=> b!2442017 (= e!1551481 (= lt!878437 (head!5543 (t!208568 (t!208568 l!9164)))))))

(declare-fun b!2442018 () Bool)

(declare-fun e!1551484 () Bool)

(assert (=> b!2442018 (= e!1551484 e!1551481)))

(declare-fun c!389767 () Bool)

(assert (=> b!2442018 (= c!389767 (isEmpty!16531 (tail!3816 (t!208568 (t!208568 l!9164)))))))

(declare-fun b!2442019 () Bool)

(assert (=> b!2442019 (= e!1551479 (h!33894 (t!208568 (t!208568 l!9164))))))

(declare-fun b!2442020 () Bool)

(assert (=> b!2442020 (= e!1551481 (isConcat!215 lt!878437))))

(declare-fun b!2442021 () Bool)

(assert (=> b!2442021 (= e!1551480 (Concat!11813 (h!33894 (t!208568 (t!208568 l!9164))) (generalisedConcat!278 (t!208568 (t!208568 (t!208568 l!9164))))))))

(declare-fun e!1551482 () Bool)

(assert (=> d!705225 e!1551482))

(declare-fun res!1036788 () Bool)

(assert (=> d!705225 (=> (not res!1036788) (not e!1551482))))

(assert (=> d!705225 (= res!1036788 (validRegex!2889 lt!878437))))

(assert (=> d!705225 (= lt!878437 e!1551479)))

(declare-fun c!389766 () Bool)

(assert (=> d!705225 (= c!389766 e!1551483)))

(declare-fun res!1036789 () Bool)

(assert (=> d!705225 (=> (not res!1036789) (not e!1551483))))

(assert (=> d!705225 (= res!1036789 ((_ is Cons!28493) (t!208568 (t!208568 l!9164))))))

(assert (=> d!705225 (forall!5811 (t!208568 (t!208568 l!9164)) lambda!92435)))

(assert (=> d!705225 (= (generalisedConcat!278 (t!208568 (t!208568 l!9164))) lt!878437)))

(declare-fun b!2442022 () Bool)

(assert (=> b!2442022 (= e!1551484 (isEmptyExpr!215 lt!878437))))

(declare-fun b!2442023 () Bool)

(assert (=> b!2442023 (= e!1551482 e!1551484)))

(declare-fun c!389768 () Bool)

(assert (=> b!2442023 (= c!389768 (isEmpty!16531 (t!208568 (t!208568 l!9164))))))

(assert (= (and d!705225 res!1036789) b!2442016))

(assert (= (and d!705225 c!389766) b!2442019))

(assert (= (and d!705225 (not c!389766)) b!2442015))

(assert (= (and b!2442015 c!389765) b!2442021))

(assert (= (and b!2442015 (not c!389765)) b!2442014))

(assert (= (and d!705225 res!1036788) b!2442023))

(assert (= (and b!2442023 c!389768) b!2442022))

(assert (= (and b!2442023 (not c!389768)) b!2442018))

(assert (= (and b!2442018 c!389767) b!2442017))

(assert (= (and b!2442018 (not c!389767)) b!2442020))

(declare-fun m!2819921 () Bool)

(assert (=> b!2442021 m!2819921))

(declare-fun m!2819923 () Bool)

(assert (=> b!2442018 m!2819923))

(assert (=> b!2442018 m!2819923))

(declare-fun m!2819925 () Bool)

(assert (=> b!2442018 m!2819925))

(declare-fun m!2819927 () Bool)

(assert (=> d!705225 m!2819927))

(declare-fun m!2819929 () Bool)

(assert (=> d!705225 m!2819929))

(assert (=> b!2442023 m!2818841))

(declare-fun m!2819931 () Bool)

(assert (=> b!2442020 m!2819931))

(declare-fun m!2819933 () Bool)

(assert (=> b!2442016 m!2819933))

(declare-fun m!2819935 () Bool)

(assert (=> b!2442017 m!2819935))

(declare-fun m!2819937 () Bool)

(assert (=> b!2442022 m!2819937))

(assert (=> b!2440781 d!705225))

(assert (=> b!2440883 d!704913))

(assert (=> b!2440883 d!704915))

(assert (=> b!2441064 d!704721))

(declare-fun d!705227 () Bool)

(assert (=> d!705227 (= (Exists!1213 lambda!92418) (choose!14482 lambda!92418))))

(declare-fun bs!465070 () Bool)

(assert (= bs!465070 d!705227))

(declare-fun m!2819939 () Bool)

(assert (=> bs!465070 m!2819939))

(assert (=> d!704777 d!705227))

(declare-fun d!705229 () Bool)

(assert (=> d!705229 (= (Exists!1213 lambda!92419) (choose!14482 lambda!92419))))

(declare-fun bs!465071 () Bool)

(assert (= bs!465071 d!705229))

(declare-fun m!2819941 () Bool)

(assert (=> bs!465071 m!2819941))

(assert (=> d!704777 d!705229))

(declare-fun b!2442024 () Bool)

(declare-fun e!1551486 () List!28590)

(assert (=> b!2442024 (= e!1551486 (_2!16596 lt!878224))))

(declare-fun d!705231 () Bool)

(declare-fun e!1551485 () Bool)

(assert (=> d!705231 e!1551485))

(declare-fun res!1036790 () Bool)

(assert (=> d!705231 (=> (not res!1036790) (not e!1551485))))

(declare-fun lt!878438 () List!28590)

(assert (=> d!705231 (= res!1036790 (= (content!3924 lt!878438) ((_ map or) (content!3924 (t!208567 (t!208567 (_1!16596 lt!878224)))) (content!3924 (_2!16596 lt!878224)))))))

(assert (=> d!705231 (= lt!878438 e!1551486)))

(declare-fun c!389769 () Bool)

(assert (=> d!705231 (= c!389769 ((_ is Nil!28492) (t!208567 (t!208567 (_1!16596 lt!878224)))))))

(assert (=> d!705231 (= (++!7080 (t!208567 (t!208567 (_1!16596 lt!878224))) (_2!16596 lt!878224)) lt!878438)))

(declare-fun b!2442027 () Bool)

(assert (=> b!2442027 (= e!1551485 (or (not (= (_2!16596 lt!878224) Nil!28492)) (= lt!878438 (t!208567 (t!208567 (_1!16596 lt!878224))))))))

(declare-fun b!2442026 () Bool)

(declare-fun res!1036791 () Bool)

(assert (=> b!2442026 (=> (not res!1036791) (not e!1551485))))

(assert (=> b!2442026 (= res!1036791 (= (size!22262 lt!878438) (+ (size!22262 (t!208567 (t!208567 (_1!16596 lt!878224)))) (size!22262 (_2!16596 lt!878224)))))))

(declare-fun b!2442025 () Bool)

(assert (=> b!2442025 (= e!1551486 (Cons!28492 (h!33893 (t!208567 (t!208567 (_1!16596 lt!878224)))) (++!7080 (t!208567 (t!208567 (t!208567 (_1!16596 lt!878224)))) (_2!16596 lt!878224))))))

(assert (= (and d!705231 c!389769) b!2442024))

(assert (= (and d!705231 (not c!389769)) b!2442025))

(assert (= (and d!705231 res!1036790) b!2442026))

(assert (= (and b!2442026 res!1036791) b!2442027))

(declare-fun m!2819943 () Bool)

(assert (=> d!705231 m!2819943))

(assert (=> d!705231 m!2819427))

(assert (=> d!705231 m!2818283))

(declare-fun m!2819945 () Bool)

(assert (=> b!2442026 m!2819945))

(assert (=> b!2442026 m!2819639))

(assert (=> b!2442026 m!2818289))

(declare-fun m!2819947 () Bool)

(assert (=> b!2442025 m!2819947))

(assert (=> b!2440835 d!705231))

(declare-fun b!2442028 () Bool)

(declare-fun e!1551490 () Bool)

(declare-fun e!1551489 () Bool)

(assert (=> b!2442028 (= e!1551490 e!1551489)))

(declare-fun c!389770 () Bool)

(assert (=> b!2442028 (= c!389770 ((_ is Union!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun bm!149683 () Bool)

(declare-fun call!149689 () Bool)

(assert (=> bm!149683 (= call!149689 (nullable!2198 (ite c!389770 (regOne!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regTwo!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(declare-fun b!2442029 () Bool)

(declare-fun e!1551487 () Bool)

(assert (=> b!2442029 (= e!1551487 e!1551490)))

(declare-fun res!1036794 () Bool)

(assert (=> b!2442029 (=> res!1036794 e!1551490)))

(assert (=> b!2442029 (= res!1036794 ((_ is Star!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(declare-fun d!705233 () Bool)

(declare-fun res!1036795 () Bool)

(declare-fun e!1551492 () Bool)

(assert (=> d!705233 (=> res!1036795 e!1551492)))

(assert (=> d!705233 (= res!1036795 ((_ is EmptyExpr!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))

(assert (=> d!705233 (= (nullableFct!534 (Concat!11813 lt!878222 EmptyExpr!7177)) e!1551492)))

(declare-fun b!2442030 () Bool)

(declare-fun e!1551491 () Bool)

(assert (=> b!2442030 (= e!1551489 e!1551491)))

(declare-fun res!1036793 () Bool)

(declare-fun call!149688 () Bool)

(assert (=> b!2442030 (= res!1036793 call!149688)))

(assert (=> b!2442030 (=> (not res!1036793) (not e!1551491))))

(declare-fun b!2442031 () Bool)

(declare-fun e!1551488 () Bool)

(assert (=> b!2442031 (= e!1551489 e!1551488)))

(declare-fun res!1036792 () Bool)

(assert (=> b!2442031 (= res!1036792 call!149689)))

(assert (=> b!2442031 (=> res!1036792 e!1551488)))

(declare-fun b!2442032 () Bool)

(assert (=> b!2442032 (= e!1551488 call!149688)))

(declare-fun b!2442033 () Bool)

(assert (=> b!2442033 (= e!1551492 e!1551487)))

(declare-fun res!1036796 () Bool)

(assert (=> b!2442033 (=> (not res!1036796) (not e!1551487))))

(assert (=> b!2442033 (= res!1036796 (and (not ((_ is EmptyLang!7177) (Concat!11813 lt!878222 EmptyExpr!7177))) (not ((_ is ElementMatch!7177) (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(declare-fun b!2442034 () Bool)

(assert (=> b!2442034 (= e!1551491 call!149689)))

(declare-fun bm!149684 () Bool)

(assert (=> bm!149684 (= call!149688 (nullable!2198 (ite c!389770 (regTwo!14867 (Concat!11813 lt!878222 EmptyExpr!7177)) (regOne!14866 (Concat!11813 lt!878222 EmptyExpr!7177)))))))

(assert (= (and d!705233 (not res!1036795)) b!2442033))

(assert (= (and b!2442033 res!1036796) b!2442029))

(assert (= (and b!2442029 (not res!1036794)) b!2442028))

(assert (= (and b!2442028 c!389770) b!2442031))

(assert (= (and b!2442028 (not c!389770)) b!2442030))

(assert (= (and b!2442031 (not res!1036792)) b!2442032))

(assert (= (and b!2442030 res!1036793) b!2442034))

(assert (= (or b!2442031 b!2442034) bm!149683))

(assert (= (or b!2442032 b!2442030) bm!149684))

(declare-fun m!2819949 () Bool)

(assert (=> bm!149683 m!2819949))

(declare-fun m!2819951 () Bool)

(assert (=> bm!149684 m!2819951))

(assert (=> d!704843 d!705233))

(assert (=> d!704853 d!705157))

(assert (=> d!704853 d!704779))

(declare-fun d!705235 () Bool)

(assert (=> d!705235 (= (isEmpty!16531 (t!208568 (t!208568 lt!878228))) ((_ is Nil!28493) (t!208568 (t!208568 lt!878228))))))

(assert (=> b!2440956 d!705235))

(assert (=> bm!149522 d!704741))

(assert (=> b!2441035 d!704923))

(assert (=> d!704723 d!705167))

(assert (=> d!704723 d!705097))

(assert (=> b!2440988 d!704919))

(assert (=> b!2440988 d!704921))

(assert (=> d!704841 d!705223))

(declare-fun b!2442035 () Bool)

(declare-fun e!1551496 () Bool)

(declare-fun lt!878439 () Bool)

(declare-fun call!149690 () Bool)

(assert (=> b!2442035 (= e!1551496 (= lt!878439 call!149690))))

(declare-fun d!705237 () Bool)

(assert (=> d!705237 e!1551496))

(declare-fun c!389773 () Bool)

(assert (=> d!705237 (= c!389773 ((_ is EmptyExpr!7177) lt!878222))))

(declare-fun e!1551494 () Bool)

(assert (=> d!705237 (= lt!878439 e!1551494)))

(declare-fun c!389771 () Bool)

(assert (=> d!705237 (= c!389771 (isEmpty!16534 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(assert (=> d!705237 (validRegex!2889 lt!878222)))

(assert (=> d!705237 (= (matchR!3292 lt!878222 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) lt!878439)))

(declare-fun b!2442036 () Bool)

(declare-fun e!1551498 () Bool)

(assert (=> b!2442036 (= e!1551496 e!1551498)))

(declare-fun c!389772 () Bool)

(assert (=> b!2442036 (= c!389772 ((_ is EmptyLang!7177) lt!878222))))

(declare-fun b!2442037 () Bool)

(declare-fun res!1036799 () Bool)

(declare-fun e!1551493 () Bool)

(assert (=> b!2442037 (=> res!1036799 e!1551493)))

(declare-fun e!1551497 () Bool)

(assert (=> b!2442037 (= res!1036799 e!1551497)))

(declare-fun res!1036802 () Bool)

(assert (=> b!2442037 (=> (not res!1036802) (not e!1551497))))

(assert (=> b!2442037 (= res!1036802 lt!878439)))

(declare-fun b!2442038 () Bool)

(assert (=> b!2442038 (= e!1551498 (not lt!878439))))

(declare-fun b!2442039 () Bool)

(declare-fun e!1551499 () Bool)

(assert (=> b!2442039 (= e!1551493 e!1551499)))

(declare-fun res!1036804 () Bool)

(assert (=> b!2442039 (=> (not res!1036804) (not e!1551499))))

(assert (=> b!2442039 (= res!1036804 (not lt!878439))))

(declare-fun b!2442040 () Bool)

(declare-fun res!1036801 () Bool)

(assert (=> b!2442040 (=> (not res!1036801) (not e!1551497))))

(assert (=> b!2442040 (= res!1036801 (isEmpty!16534 (tail!3818 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(declare-fun b!2442041 () Bool)

(declare-fun e!1551495 () Bool)

(assert (=> b!2442041 (= e!1551499 e!1551495)))

(declare-fun res!1036798 () Bool)

(assert (=> b!2442041 (=> res!1036798 e!1551495)))

(assert (=> b!2442041 (= res!1036798 call!149690)))

(declare-fun b!2442042 () Bool)

(assert (=> b!2442042 (= e!1551494 (nullable!2198 lt!878222))))

(declare-fun b!2442043 () Bool)

(assert (=> b!2442043 (= e!1551497 (= (head!5545 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (c!389219 lt!878222)))))

(declare-fun b!2442044 () Bool)

(declare-fun res!1036803 () Bool)

(assert (=> b!2442044 (=> (not res!1036803) (not e!1551497))))

(assert (=> b!2442044 (= res!1036803 (not call!149690))))

(declare-fun bm!149685 () Bool)

(assert (=> bm!149685 (= call!149690 (isEmpty!16534 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))

(declare-fun b!2442045 () Bool)

(declare-fun res!1036797 () Bool)

(assert (=> b!2442045 (=> res!1036797 e!1551495)))

(assert (=> b!2442045 (= res!1036797 (not (isEmpty!16534 (tail!3818 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))))))))

(declare-fun b!2442046 () Bool)

(assert (=> b!2442046 (= e!1551494 (matchR!3292 (derivativeStep!1852 lt!878222 (head!5545 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))) (tail!3818 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492)))))))

(declare-fun b!2442047 () Bool)

(declare-fun res!1036800 () Bool)

(assert (=> b!2442047 (=> res!1036800 e!1551493)))

(assert (=> b!2442047 (= res!1036800 (not ((_ is ElementMatch!7177) lt!878222)))))

(assert (=> b!2442047 (= e!1551498 e!1551493)))

(declare-fun b!2442048 () Bool)

(assert (=> b!2442048 (= e!1551495 (not (= (head!5545 (++!7080 Nil!28492 (Cons!28492 (h!33893 s!9460) Nil!28492))) (c!389219 lt!878222))))))

(assert (= (and d!705237 c!389771) b!2442042))

(assert (= (and d!705237 (not c!389771)) b!2442046))

(assert (= (and d!705237 c!389773) b!2442035))

(assert (= (and d!705237 (not c!389773)) b!2442036))

(assert (= (and b!2442036 c!389772) b!2442038))

(assert (= (and b!2442036 (not c!389772)) b!2442047))

(assert (= (and b!2442047 (not res!1036800)) b!2442037))

(assert (= (and b!2442037 res!1036802) b!2442044))

(assert (= (and b!2442044 res!1036803) b!2442040))

(assert (= (and b!2442040 res!1036801) b!2442043))

(assert (= (and b!2442037 (not res!1036799)) b!2442039))

(assert (= (and b!2442039 res!1036804) b!2442041))

(assert (= (and b!2442041 (not res!1036798)) b!2442045))

(assert (= (and b!2442045 (not res!1036797)) b!2442048))

(assert (= (or b!2442035 b!2442044 b!2442041) bm!149685))

(assert (=> b!2442045 m!2818373))

(assert (=> b!2442045 m!2819471))

(assert (=> b!2442045 m!2819471))

(assert (=> b!2442045 m!2819473))

(assert (=> b!2442048 m!2818373))

(assert (=> b!2442048 m!2819475))

(assert (=> b!2442040 m!2818373))

(assert (=> b!2442040 m!2819471))

(assert (=> b!2442040 m!2819471))

(assert (=> b!2442040 m!2819473))

(assert (=> d!705237 m!2818373))

(assert (=> d!705237 m!2819477))

(assert (=> d!705237 m!2818205))

(assert (=> bm!149685 m!2818373))

(assert (=> bm!149685 m!2819477))

(assert (=> b!2442042 m!2818207))

(assert (=> b!2442043 m!2818373))

(assert (=> b!2442043 m!2819475))

(assert (=> b!2442046 m!2818373))

(assert (=> b!2442046 m!2819475))

(assert (=> b!2442046 m!2819475))

(declare-fun m!2819953 () Bool)

(assert (=> b!2442046 m!2819953))

(assert (=> b!2442046 m!2818373))

(assert (=> b!2442046 m!2819471))

(assert (=> b!2442046 m!2819953))

(assert (=> b!2442046 m!2819471))

(declare-fun m!2819955 () Bool)

(assert (=> b!2442046 m!2819955))

(assert (=> d!704841 d!705237))

(assert (=> d!704841 d!704731))

(assert (=> b!2440977 d!704721))

(declare-fun b!2442049 () Bool)

(declare-fun e!1551506 () Bool)

(declare-fun e!1551501 () Bool)

(assert (=> b!2442049 (= e!1551506 e!1551501)))

(declare-fun c!389775 () Bool)

(assert (=> b!2442049 (= c!389775 ((_ is Star!7177) (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927)))))))

(declare-fun bm!149686 () Bool)

(declare-fun call!149692 () Bool)

(declare-fun c!389774 () Bool)

(assert (=> bm!149686 (= call!149692 (validRegex!2889 (ite c!389774 (regOne!14867 (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927)))) (regTwo!14866 (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927)))))))))

(declare-fun b!2442050 () Bool)

(declare-fun e!1551500 () Bool)

(assert (=> b!2442050 (= e!1551501 e!1551500)))

(declare-fun res!1036808 () Bool)

(assert (=> b!2442050 (= res!1036808 (not (nullable!2198 (reg!7506 (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927)))))))))

(assert (=> b!2442050 (=> (not res!1036808) (not e!1551500))))

(declare-fun d!705239 () Bool)

(declare-fun res!1036809 () Bool)

(assert (=> d!705239 (=> res!1036809 e!1551506)))

(assert (=> d!705239 (= res!1036809 ((_ is ElementMatch!7177) (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927)))))))

(assert (=> d!705239 (= (validRegex!2889 (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927)))) e!1551506)))

(declare-fun b!2442051 () Bool)

(declare-fun e!1551504 () Bool)

(assert (=> b!2442051 (= e!1551504 call!149692)))

(declare-fun b!2442052 () Bool)

(declare-fun e!1551503 () Bool)

(declare-fun call!149693 () Bool)

(assert (=> b!2442052 (= e!1551503 call!149693)))

(declare-fun b!2442053 () Bool)

(declare-fun res!1036806 () Bool)

(declare-fun e!1551502 () Bool)

(assert (=> b!2442053 (=> res!1036806 e!1551502)))

(assert (=> b!2442053 (= res!1036806 (not ((_ is Concat!11813) (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927))))))))

(declare-fun e!1551505 () Bool)

(assert (=> b!2442053 (= e!1551505 e!1551502)))

(declare-fun b!2442054 () Bool)

(declare-fun res!1036805 () Bool)

(assert (=> b!2442054 (=> (not res!1036805) (not e!1551503))))

(assert (=> b!2442054 (= res!1036805 call!149692)))

(assert (=> b!2442054 (= e!1551505 e!1551503)))

(declare-fun b!2442055 () Bool)

(assert (=> b!2442055 (= e!1551501 e!1551505)))

(assert (=> b!2442055 (= c!389774 ((_ is Union!7177) (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927)))))))

(declare-fun b!2442056 () Bool)

(assert (=> b!2442056 (= e!1551502 e!1551504)))

(declare-fun res!1036807 () Bool)

(assert (=> b!2442056 (=> (not res!1036807) (not e!1551504))))

(assert (=> b!2442056 (= res!1036807 call!149693)))

(declare-fun b!2442057 () Bool)

(declare-fun call!149691 () Bool)

(assert (=> b!2442057 (= e!1551500 call!149691)))

(declare-fun bm!149687 () Bool)

(assert (=> bm!149687 (= call!149693 call!149691)))

(declare-fun bm!149688 () Bool)

(assert (=> bm!149688 (= call!149691 (validRegex!2889 (ite c!389775 (reg!7506 (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927)))) (ite c!389774 (regTwo!14867 (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927)))) (regOne!14866 (ite c!389490 (regOne!14867 (regOne!14866 r!13927)) (regTwo!14866 (regOne!14866 r!13927))))))))))

(assert (= (and d!705239 (not res!1036809)) b!2442049))

(assert (= (and b!2442049 c!389775) b!2442050))

(assert (= (and b!2442049 (not c!389775)) b!2442055))

(assert (= (and b!2442050 res!1036808) b!2442057))

(assert (= (and b!2442055 c!389774) b!2442054))

(assert (= (and b!2442055 (not c!389774)) b!2442053))

(assert (= (and b!2442054 res!1036805) b!2442052))

(assert (= (and b!2442053 (not res!1036806)) b!2442056))

(assert (= (and b!2442056 res!1036807) b!2442051))

(assert (= (or b!2442054 b!2442051) bm!149686))

(assert (= (or b!2442052 b!2442056) bm!149687))

(assert (= (or b!2442057 bm!149687) bm!149688))

(declare-fun m!2819957 () Bool)

(assert (=> bm!149686 m!2819957))

(declare-fun m!2819959 () Bool)

(assert (=> b!2442050 m!2819959))

(declare-fun m!2819961 () Bool)

(assert (=> bm!149688 m!2819961))

(assert (=> bm!149503 d!705239))

(assert (=> b!2441056 d!704791))

(assert (=> b!2441056 d!704789))

(declare-fun bs!465072 () Bool)

(declare-fun b!2442068 () Bool)

(assert (= bs!465072 (and b!2442068 b!2441559)))

(declare-fun lambda!92436 () Int)

(assert (=> bs!465072 (= (and (= (reg!7506 (regOne!14867 (regOne!14867 r!13927))) (reg!7506 (regOne!14867 (regTwo!14867 r!13927)))) (= (regOne!14867 (regOne!14867 r!13927)) (regOne!14867 (regTwo!14867 r!13927)))) (= lambda!92436 lambda!92431))))

(declare-fun bs!465073 () Bool)

(assert (= bs!465073 (and b!2442068 b!2441021)))

(assert (=> bs!465073 (= (and (= (reg!7506 (regOne!14867 (regOne!14867 r!13927))) (reg!7506 (regTwo!14867 r!13927))) (= (regOne!14867 (regOne!14867 r!13927)) (regTwo!14867 r!13927))) (= lambda!92436 lambda!92421))))

(declare-fun bs!465074 () Bool)

(assert (= bs!465074 (and b!2442068 b!2441079)))

(assert (=> bs!465074 (= (and (= (reg!7506 (regOne!14867 (regOne!14867 r!13927))) (reg!7506 (regOne!14867 r!13927))) (= (regOne!14867 (regOne!14867 r!13927)) (regOne!14867 r!13927))) (= lambda!92436 lambda!92426))))

(declare-fun bs!465075 () Bool)

(assert (= bs!465075 (and b!2442068 b!2440171)))

(assert (=> bs!465075 (not (= lambda!92436 lambda!92397))))

(declare-fun bs!465076 () Bool)

(assert (= bs!465076 (and b!2442068 b!2441681)))

(assert (=> bs!465076 (not (= lambda!92436 lambda!92434))))

(declare-fun bs!465077 () Bool)

(assert (= bs!465077 (and b!2442068 b!2441467)))

(assert (=> bs!465077 (not (= lambda!92436 lambda!92429))))

(declare-fun bs!465078 () Bool)

(assert (= bs!465078 (and b!2442068 b!2441472)))

(assert (=> bs!465078 (= (and (= (reg!7506 (regOne!14867 (regOne!14867 r!13927))) (reg!7506 (regTwo!14867 (regOne!14867 r!13927)))) (= (regOne!14867 (regOne!14867 r!13927)) (regTwo!14867 (regOne!14867 r!13927)))) (= lambda!92436 lambda!92428))))

(declare-fun bs!465079 () Bool)

(assert (= bs!465079 (and b!2442068 d!704777)))

(assert (=> bs!465079 (not (= lambda!92436 lambda!92418))))

(declare-fun bs!465080 () Bool)

(assert (= bs!465080 (and b!2442068 b!2440176)))

(assert (=> bs!465080 (= (and (= (reg!7506 (regOne!14867 (regOne!14867 r!13927))) (reg!7506 r!13927)) (= (regOne!14867 (regOne!14867 r!13927)) r!13927)) (= lambda!92436 lambda!92396))))

(declare-fun bs!465081 () Bool)

(assert (= bs!465081 (and b!2442068 b!2441074)))

(assert (=> bs!465081 (not (= lambda!92436 lambda!92427))))

(declare-fun bs!465082 () Bool)

(assert (= bs!465082 (and b!2442068 d!704825)))

(assert (=> bs!465082 (not (= lambda!92436 lambda!92425))))

(declare-fun bs!465083 () Bool)

(assert (= bs!465083 (and b!2442068 d!704523)))

(assert (=> bs!465083 (not (= lambda!92436 lambda!92390))))

(declare-fun bs!465084 () Bool)

(assert (= bs!465084 (and b!2442068 b!2441554)))

(assert (=> bs!465084 (not (= lambda!92436 lambda!92432))))

(assert (=> bs!465083 (not (= lambda!92436 lambda!92391))))

(declare-fun bs!465085 () Bool)

(assert (= bs!465085 (and b!2442068 b!2441016)))

(assert (=> bs!465085 (not (= lambda!92436 lambda!92422))))

(assert (=> bs!465079 (not (= lambda!92436 lambda!92419))))

(declare-fun bs!465086 () Bool)

(assert (= bs!465086 (and b!2442068 b!2441686)))

(assert (=> bs!465086 (= (and (= (reg!7506 (regOne!14867 (regOne!14867 r!13927))) (reg!7506 (regTwo!14867 (regTwo!14867 r!13927)))) (= (regOne!14867 (regOne!14867 r!13927)) (regTwo!14867 (regTwo!14867 r!13927)))) (= lambda!92436 lambda!92433))))

(declare-fun bs!465087 () Bool)

(assert (= bs!465087 (and b!2442068 b!2439691)))

(assert (=> bs!465087 (not (= lambda!92436 lambda!92358))))

(assert (=> bs!465087 (not (= lambda!92436 lambda!92359))))

(declare-fun bs!465088 () Bool)

(assert (= bs!465088 (and b!2442068 d!704513)))

(assert (=> bs!465088 (not (= lambda!92436 lambda!92385))))

(assert (=> b!2442068 true))

(assert (=> b!2442068 true))

(declare-fun bs!465089 () Bool)

(declare-fun b!2442063 () Bool)

(assert (= bs!465089 (and b!2442063 b!2441559)))

(declare-fun lambda!92437 () Int)

(assert (=> bs!465089 (not (= lambda!92437 lambda!92431))))

(declare-fun bs!465090 () Bool)

(assert (= bs!465090 (and b!2442063 b!2441021)))

(assert (=> bs!465090 (not (= lambda!92437 lambda!92421))))

(declare-fun bs!465091 () Bool)

(assert (= bs!465091 (and b!2442063 b!2440171)))

(assert (=> bs!465091 (= (and (= (regOne!14866 (regOne!14867 (regOne!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92437 lambda!92397))))

(declare-fun bs!465092 () Bool)

(assert (= bs!465092 (and b!2442063 b!2441681)))

(assert (=> bs!465092 (= (and (= (regOne!14866 (regOne!14867 (regOne!14867 r!13927))) (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927)))) (= (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))) (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))))) (= lambda!92437 lambda!92434))))

(declare-fun bs!465093 () Bool)

(assert (= bs!465093 (and b!2442063 b!2441467)))

(assert (=> bs!465093 (= (and (= (regOne!14866 (regOne!14867 (regOne!14867 r!13927))) (regOne!14866 (regTwo!14867 (regOne!14867 r!13927)))) (= (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))) (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))))) (= lambda!92437 lambda!92429))))

(declare-fun bs!465094 () Bool)

(assert (= bs!465094 (and b!2442063 b!2441472)))

(assert (=> bs!465094 (not (= lambda!92437 lambda!92428))))

(declare-fun bs!465095 () Bool)

(assert (= bs!465095 (and b!2442063 d!704777)))

(assert (=> bs!465095 (not (= lambda!92437 lambda!92418))))

(declare-fun bs!465096 () Bool)

(assert (= bs!465096 (and b!2442063 b!2442068)))

(assert (=> bs!465096 (not (= lambda!92437 lambda!92436))))

(declare-fun bs!465097 () Bool)

(assert (= bs!465097 (and b!2442063 b!2441079)))

(assert (=> bs!465097 (not (= lambda!92437 lambda!92426))))

(declare-fun bs!465098 () Bool)

(assert (= bs!465098 (and b!2442063 b!2440176)))

(assert (=> bs!465098 (not (= lambda!92437 lambda!92396))))

(declare-fun bs!465099 () Bool)

(assert (= bs!465099 (and b!2442063 b!2441074)))

(assert (=> bs!465099 (= (and (= (regOne!14866 (regOne!14867 (regOne!14867 r!13927))) (regOne!14866 (regOne!14867 r!13927))) (= (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))) (regTwo!14866 (regOne!14867 r!13927)))) (= lambda!92437 lambda!92427))))

(declare-fun bs!465100 () Bool)

(assert (= bs!465100 (and b!2442063 d!704825)))

(assert (=> bs!465100 (not (= lambda!92437 lambda!92425))))

(declare-fun bs!465101 () Bool)

(assert (= bs!465101 (and b!2442063 d!704523)))

(assert (=> bs!465101 (not (= lambda!92437 lambda!92390))))

(declare-fun bs!465102 () Bool)

(assert (= bs!465102 (and b!2442063 b!2441554)))

(assert (=> bs!465102 (= (and (= (regOne!14866 (regOne!14867 (regOne!14867 r!13927))) (regOne!14866 (regOne!14867 (regTwo!14867 r!13927)))) (= (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))) (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))))) (= lambda!92437 lambda!92432))))

(assert (=> bs!465101 (= (and (= (regOne!14866 (regOne!14867 (regOne!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92437 lambda!92391))))

(declare-fun bs!465103 () Bool)

(assert (= bs!465103 (and b!2442063 b!2441016)))

(assert (=> bs!465103 (= (and (= (regOne!14866 (regOne!14867 (regOne!14867 r!13927))) (regOne!14866 (regTwo!14867 r!13927))) (= (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))) (regTwo!14866 (regTwo!14867 r!13927)))) (= lambda!92437 lambda!92422))))

(assert (=> bs!465095 (= (and (= (regOne!14866 (regOne!14867 (regOne!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92437 lambda!92419))))

(declare-fun bs!465104 () Bool)

(assert (= bs!465104 (and b!2442063 b!2441686)))

(assert (=> bs!465104 (not (= lambda!92437 lambda!92433))))

(declare-fun bs!465105 () Bool)

(assert (= bs!465105 (and b!2442063 b!2439691)))

(assert (=> bs!465105 (not (= lambda!92437 lambda!92358))))

(assert (=> bs!465105 (= (and (= (regOne!14866 (regOne!14867 (regOne!14867 r!13927))) (regOne!14866 r!13927)) (= (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))) (regTwo!14866 r!13927))) (= lambda!92437 lambda!92359))))

(declare-fun bs!465106 () Bool)

(assert (= bs!465106 (and b!2442063 d!704513)))

(assert (=> bs!465106 (not (= lambda!92437 lambda!92385))))

(assert (=> b!2442063 true))

(assert (=> b!2442063 true))

(declare-fun bm!149689 () Bool)

(declare-fun call!149694 () Bool)

(assert (=> bm!149689 (= call!149694 (isEmpty!16534 s!9460))))

(declare-fun d!705241 () Bool)

(declare-fun c!389779 () Bool)

(assert (=> d!705241 (= c!389779 ((_ is EmptyExpr!7177) (regOne!14867 (regOne!14867 r!13927))))))

(declare-fun e!1551512 () Bool)

(assert (=> d!705241 (= (matchRSpec!1024 (regOne!14867 (regOne!14867 r!13927)) s!9460) e!1551512)))

(declare-fun b!2442058 () Bool)

(declare-fun res!1036810 () Bool)

(declare-fun e!1551510 () Bool)

(assert (=> b!2442058 (=> res!1036810 e!1551510)))

(assert (=> b!2442058 (= res!1036810 call!149694)))

(declare-fun e!1551507 () Bool)

(assert (=> b!2442058 (= e!1551507 e!1551510)))

(declare-fun b!2442059 () Bool)

(declare-fun e!1551508 () Bool)

(assert (=> b!2442059 (= e!1551508 (matchRSpec!1024 (regTwo!14867 (regOne!14867 (regOne!14867 r!13927))) s!9460))))

(declare-fun b!2442060 () Bool)

(assert (=> b!2442060 (= e!1551512 call!149694)))

(declare-fun b!2442061 () Bool)

(declare-fun e!1551509 () Bool)

(assert (=> b!2442061 (= e!1551509 e!1551507)))

(declare-fun c!389777 () Bool)

(assert (=> b!2442061 (= c!389777 ((_ is Star!7177) (regOne!14867 (regOne!14867 r!13927))))))

(declare-fun b!2442062 () Bool)

(declare-fun e!1551511 () Bool)

(assert (=> b!2442062 (= e!1551511 (= s!9460 (Cons!28492 (c!389219 (regOne!14867 (regOne!14867 r!13927))) Nil!28492)))))

(declare-fun call!149695 () Bool)

(declare-fun bm!149690 () Bool)

(assert (=> bm!149690 (= call!149695 (Exists!1213 (ite c!389777 lambda!92436 lambda!92437)))))

(assert (=> b!2442063 (= e!1551507 call!149695)))

(declare-fun b!2442064 () Bool)

(assert (=> b!2442064 (= e!1551509 e!1551508)))

(declare-fun res!1036812 () Bool)

(assert (=> b!2442064 (= res!1036812 (matchRSpec!1024 (regOne!14867 (regOne!14867 (regOne!14867 r!13927))) s!9460))))

(assert (=> b!2442064 (=> res!1036812 e!1551508)))

(declare-fun b!2442065 () Bool)

(declare-fun e!1551513 () Bool)

(assert (=> b!2442065 (= e!1551512 e!1551513)))

(declare-fun res!1036811 () Bool)

(assert (=> b!2442065 (= res!1036811 (not ((_ is EmptyLang!7177) (regOne!14867 (regOne!14867 r!13927)))))))

(assert (=> b!2442065 (=> (not res!1036811) (not e!1551513))))

(declare-fun b!2442066 () Bool)

(declare-fun c!389778 () Bool)

(assert (=> b!2442066 (= c!389778 ((_ is Union!7177) (regOne!14867 (regOne!14867 r!13927))))))

(assert (=> b!2442066 (= e!1551511 e!1551509)))

(declare-fun b!2442067 () Bool)

(declare-fun c!389776 () Bool)

(assert (=> b!2442067 (= c!389776 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14867 r!13927))))))

(assert (=> b!2442067 (= e!1551513 e!1551511)))

(assert (=> b!2442068 (= e!1551510 call!149695)))

(assert (= (and d!705241 c!389779) b!2442060))

(assert (= (and d!705241 (not c!389779)) b!2442065))

(assert (= (and b!2442065 res!1036811) b!2442067))

(assert (= (and b!2442067 c!389776) b!2442062))

(assert (= (and b!2442067 (not c!389776)) b!2442066))

(assert (= (and b!2442066 c!389778) b!2442064))

(assert (= (and b!2442066 (not c!389778)) b!2442061))

(assert (= (and b!2442064 (not res!1036812)) b!2442059))

(assert (= (and b!2442061 c!389777) b!2442058))

(assert (= (and b!2442061 (not c!389777)) b!2442063))

(assert (= (and b!2442058 (not res!1036810)) b!2442068))

(assert (= (or b!2442068 b!2442063) bm!149690))

(assert (= (or b!2442060 b!2442058) bm!149689))

(assert (=> bm!149689 m!2818203))

(declare-fun m!2819963 () Bool)

(assert (=> b!2442059 m!2819963))

(declare-fun m!2819965 () Bool)

(assert (=> bm!149690 m!2819965))

(declare-fun m!2819967 () Bool)

(assert (=> b!2442064 m!2819967))

(assert (=> b!2441075 d!705241))

(declare-fun b!2442069 () Bool)

(declare-fun e!1551517 () Bool)

(declare-fun lt!878440 () Bool)

(declare-fun call!149696 () Bool)

(assert (=> b!2442069 (= e!1551517 (= lt!878440 call!149696))))

(declare-fun d!705243 () Bool)

(assert (=> d!705243 e!1551517))

(declare-fun c!389782 () Bool)

(assert (=> d!705243 (= c!389782 ((_ is EmptyExpr!7177) (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295))))))))

(declare-fun e!1551515 () Bool)

(assert (=> d!705243 (= lt!878440 e!1551515)))

(declare-fun c!389780 () Bool)

(assert (=> d!705243 (= c!389780 (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878295)))))))

(assert (=> d!705243 (validRegex!2889 (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295)))))))

(assert (=> d!705243 (= (matchR!3292 (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295)))) (tail!3818 (_1!16596 (get!8795 lt!878295)))) lt!878440)))

(declare-fun b!2442070 () Bool)

(declare-fun e!1551519 () Bool)

(assert (=> b!2442070 (= e!1551517 e!1551519)))

(declare-fun c!389781 () Bool)

(assert (=> b!2442070 (= c!389781 ((_ is EmptyLang!7177) (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295))))))))

(declare-fun b!2442071 () Bool)

(declare-fun res!1036815 () Bool)

(declare-fun e!1551514 () Bool)

(assert (=> b!2442071 (=> res!1036815 e!1551514)))

(declare-fun e!1551518 () Bool)

(assert (=> b!2442071 (= res!1036815 e!1551518)))

(declare-fun res!1036818 () Bool)

(assert (=> b!2442071 (=> (not res!1036818) (not e!1551518))))

(assert (=> b!2442071 (= res!1036818 lt!878440)))

(declare-fun b!2442072 () Bool)

(assert (=> b!2442072 (= e!1551519 (not lt!878440))))

(declare-fun b!2442073 () Bool)

(declare-fun e!1551520 () Bool)

(assert (=> b!2442073 (= e!1551514 e!1551520)))

(declare-fun res!1036820 () Bool)

(assert (=> b!2442073 (=> (not res!1036820) (not e!1551520))))

(assert (=> b!2442073 (= res!1036820 (not lt!878440))))

(declare-fun b!2442074 () Bool)

(declare-fun res!1036817 () Bool)

(assert (=> b!2442074 (=> (not res!1036817) (not e!1551518))))

(assert (=> b!2442074 (= res!1036817 (isEmpty!16534 (tail!3818 (tail!3818 (_1!16596 (get!8795 lt!878295))))))))

(declare-fun b!2442075 () Bool)

(declare-fun e!1551516 () Bool)

(assert (=> b!2442075 (= e!1551520 e!1551516)))

(declare-fun res!1036814 () Bool)

(assert (=> b!2442075 (=> res!1036814 e!1551516)))

(assert (=> b!2442075 (= res!1036814 call!149696)))

(declare-fun b!2442076 () Bool)

(assert (=> b!2442076 (= e!1551515 (nullable!2198 (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295))))))))

(declare-fun b!2442077 () Bool)

(assert (=> b!2442077 (= e!1551518 (= (head!5545 (tail!3818 (_1!16596 (get!8795 lt!878295)))) (c!389219 (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295)))))))))

(declare-fun b!2442078 () Bool)

(declare-fun res!1036819 () Bool)

(assert (=> b!2442078 (=> (not res!1036819) (not e!1551518))))

(assert (=> b!2442078 (= res!1036819 (not call!149696))))

(declare-fun bm!149691 () Bool)

(assert (=> bm!149691 (= call!149696 (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878295)))))))

(declare-fun b!2442079 () Bool)

(declare-fun res!1036813 () Bool)

(assert (=> b!2442079 (=> res!1036813 e!1551516)))

(assert (=> b!2442079 (= res!1036813 (not (isEmpty!16534 (tail!3818 (tail!3818 (_1!16596 (get!8795 lt!878295)))))))))

(declare-fun b!2442080 () Bool)

(assert (=> b!2442080 (= e!1551515 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295)))) (head!5545 (tail!3818 (_1!16596 (get!8795 lt!878295))))) (tail!3818 (tail!3818 (_1!16596 (get!8795 lt!878295))))))))

(declare-fun b!2442081 () Bool)

(declare-fun res!1036816 () Bool)

(assert (=> b!2442081 (=> res!1036816 e!1551514)))

(assert (=> b!2442081 (= res!1036816 (not ((_ is ElementMatch!7177) (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295)))))))))

(assert (=> b!2442081 (= e!1551519 e!1551514)))

(declare-fun b!2442082 () Bool)

(assert (=> b!2442082 (= e!1551516 (not (= (head!5545 (tail!3818 (_1!16596 (get!8795 lt!878295)))) (c!389219 (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295))))))))))

(assert (= (and d!705243 c!389780) b!2442076))

(assert (= (and d!705243 (not c!389780)) b!2442080))

(assert (= (and d!705243 c!389782) b!2442069))

(assert (= (and d!705243 (not c!389782)) b!2442070))

(assert (= (and b!2442070 c!389781) b!2442072))

(assert (= (and b!2442070 (not c!389781)) b!2442081))

(assert (= (and b!2442081 (not res!1036816)) b!2442071))

(assert (= (and b!2442071 res!1036818) b!2442078))

(assert (= (and b!2442078 res!1036819) b!2442074))

(assert (= (and b!2442074 res!1036817) b!2442077))

(assert (= (and b!2442071 (not res!1036815)) b!2442073))

(assert (= (and b!2442073 res!1036820) b!2442075))

(assert (= (and b!2442075 (not res!1036814)) b!2442079))

(assert (= (and b!2442079 (not res!1036813)) b!2442082))

(assert (= (or b!2442069 b!2442078 b!2442075) bm!149691))

(assert (=> b!2442079 m!2819175))

(declare-fun m!2819969 () Bool)

(assert (=> b!2442079 m!2819969))

(assert (=> b!2442079 m!2819969))

(declare-fun m!2819971 () Bool)

(assert (=> b!2442079 m!2819971))

(assert (=> b!2442082 m!2819175))

(declare-fun m!2819973 () Bool)

(assert (=> b!2442082 m!2819973))

(assert (=> b!2442074 m!2819175))

(assert (=> b!2442074 m!2819969))

(assert (=> b!2442074 m!2819969))

(assert (=> b!2442074 m!2819971))

(assert (=> d!705243 m!2819175))

(assert (=> d!705243 m!2819177))

(assert (=> d!705243 m!2819183))

(declare-fun m!2819975 () Bool)

(assert (=> d!705243 m!2819975))

(assert (=> bm!149691 m!2819175))

(assert (=> bm!149691 m!2819177))

(assert (=> b!2442076 m!2819183))

(declare-fun m!2819977 () Bool)

(assert (=> b!2442076 m!2819977))

(assert (=> b!2442077 m!2819175))

(assert (=> b!2442077 m!2819973))

(assert (=> b!2442080 m!2819175))

(assert (=> b!2442080 m!2819973))

(assert (=> b!2442080 m!2819183))

(assert (=> b!2442080 m!2819973))

(declare-fun m!2819979 () Bool)

(assert (=> b!2442080 m!2819979))

(assert (=> b!2442080 m!2819175))

(assert (=> b!2442080 m!2819969))

(assert (=> b!2442080 m!2819979))

(assert (=> b!2442080 m!2819969))

(declare-fun m!2819981 () Bool)

(assert (=> b!2442080 m!2819981))

(assert (=> b!2441138 d!705243))

(declare-fun b!2442083 () Bool)

(declare-fun e!1551524 () Regex!7177)

(declare-fun e!1551521 () Regex!7177)

(assert (=> b!2442083 (= e!1551524 e!1551521)))

(declare-fun c!389785 () Bool)

(assert (=> b!2442083 (= c!389785 ((_ is ElementMatch!7177) (regOne!14866 r!13927)))))

(declare-fun b!2442084 () Bool)

(assert (=> b!2442084 (= e!1551521 (ite (= (head!5545 (_1!16596 (get!8795 lt!878295))) (c!389219 (regOne!14866 r!13927))) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun call!149700 () Regex!7177)

(declare-fun c!389786 () Bool)

(declare-fun c!389784 () Bool)

(declare-fun bm!149692 () Bool)

(assert (=> bm!149692 (= call!149700 (derivativeStep!1852 (ite c!389786 (regOne!14867 (regOne!14866 r!13927)) (ite c!389784 (reg!7506 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927)))) (head!5545 (_1!16596 (get!8795 lt!878295)))))))

(declare-fun b!2442086 () Bool)

(declare-fun c!389787 () Bool)

(assert (=> b!2442086 (= c!389787 (nullable!2198 (regOne!14866 (regOne!14866 r!13927))))))

(declare-fun e!1551522 () Regex!7177)

(declare-fun e!1551523 () Regex!7177)

(assert (=> b!2442086 (= e!1551522 e!1551523)))

(declare-fun b!2442087 () Bool)

(declare-fun call!149697 () Regex!7177)

(assert (=> b!2442087 (= e!1551522 (Concat!11813 call!149697 (regOne!14866 r!13927)))))

(declare-fun b!2442088 () Bool)

(assert (=> b!2442088 (= c!389786 ((_ is Union!7177) (regOne!14866 r!13927)))))

(declare-fun e!1551525 () Regex!7177)

(assert (=> b!2442088 (= e!1551521 e!1551525)))

(declare-fun bm!149693 () Bool)

(assert (=> bm!149693 (= call!149697 call!149700)))

(declare-fun bm!149694 () Bool)

(declare-fun call!149698 () Regex!7177)

(declare-fun call!149699 () Regex!7177)

(assert (=> bm!149694 (= call!149698 call!149699)))

(declare-fun bm!149695 () Bool)

(assert (=> bm!149695 (= call!149699 (derivativeStep!1852 (ite c!389786 (regTwo!14867 (regOne!14866 r!13927)) (ite c!389787 (regTwo!14866 (regOne!14866 r!13927)) (regOne!14866 (regOne!14866 r!13927)))) (head!5545 (_1!16596 (get!8795 lt!878295)))))))

(declare-fun b!2442085 () Bool)

(assert (=> b!2442085 (= e!1551523 (Union!7177 (Concat!11813 call!149697 (regTwo!14866 (regOne!14866 r!13927))) call!149698))))

(declare-fun d!705245 () Bool)

(declare-fun lt!878441 () Regex!7177)

(assert (=> d!705245 (validRegex!2889 lt!878441)))

(assert (=> d!705245 (= lt!878441 e!1551524)))

(declare-fun c!389783 () Bool)

(assert (=> d!705245 (= c!389783 (or ((_ is EmptyExpr!7177) (regOne!14866 r!13927)) ((_ is EmptyLang!7177) (regOne!14866 r!13927))))))

(assert (=> d!705245 (validRegex!2889 (regOne!14866 r!13927))))

(assert (=> d!705245 (= (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878295)))) lt!878441)))

(declare-fun b!2442089 () Bool)

(assert (=> b!2442089 (= e!1551525 e!1551522)))

(assert (=> b!2442089 (= c!389784 ((_ is Star!7177) (regOne!14866 r!13927)))))

(declare-fun b!2442090 () Bool)

(assert (=> b!2442090 (= e!1551524 EmptyLang!7177)))

(declare-fun b!2442091 () Bool)

(assert (=> b!2442091 (= e!1551525 (Union!7177 call!149700 call!149699))))

(declare-fun b!2442092 () Bool)

(assert (=> b!2442092 (= e!1551523 (Union!7177 (Concat!11813 call!149698 (regTwo!14866 (regOne!14866 r!13927))) EmptyLang!7177))))

(assert (= (and d!705245 c!389783) b!2442090))

(assert (= (and d!705245 (not c!389783)) b!2442083))

(assert (= (and b!2442083 c!389785) b!2442084))

(assert (= (and b!2442083 (not c!389785)) b!2442088))

(assert (= (and b!2442088 c!389786) b!2442091))

(assert (= (and b!2442088 (not c!389786)) b!2442089))

(assert (= (and b!2442089 c!389784) b!2442087))

(assert (= (and b!2442089 (not c!389784)) b!2442086))

(assert (= (and b!2442086 c!389787) b!2442085))

(assert (= (and b!2442086 (not c!389787)) b!2442092))

(assert (= (or b!2442085 b!2442092) bm!149694))

(assert (= (or b!2442087 b!2442085) bm!149693))

(assert (= (or b!2442091 bm!149693) bm!149692))

(assert (= (or b!2442091 bm!149694) bm!149695))

(assert (=> bm!149692 m!2819179))

(declare-fun m!2819983 () Bool)

(assert (=> bm!149692 m!2819983))

(declare-fun m!2819985 () Bool)

(assert (=> b!2442086 m!2819985))

(assert (=> bm!149695 m!2819179))

(declare-fun m!2819987 () Bool)

(assert (=> bm!149695 m!2819987))

(declare-fun m!2819989 () Bool)

(assert (=> d!705245 m!2819989))

(assert (=> d!705245 m!2818351))

(assert (=> b!2441138 d!705245))

(assert (=> b!2441138 d!704961))

(assert (=> b!2441138 d!705111))

(assert (=> b!2441090 d!704955))

(assert (=> b!2441090 d!704957))

(declare-fun b!2442093 () Bool)

(declare-fun e!1551529 () Bool)

(declare-fun lt!878442 () Bool)

(declare-fun call!149701 () Bool)

(assert (=> b!2442093 (= e!1551529 (= lt!878442 call!149701))))

(declare-fun d!705247 () Bool)

(assert (=> d!705247 e!1551529))

(declare-fun c!389790 () Bool)

(assert (=> d!705247 (= c!389790 ((_ is EmptyExpr!7177) (regOne!14866 r!13927)))))

(declare-fun e!1551527 () Bool)

(assert (=> d!705247 (= lt!878442 e!1551527)))

(declare-fun c!389788 () Bool)

(assert (=> d!705247 (= c!389788 (isEmpty!16534 (_1!16596 (get!8795 lt!878352))))))

(assert (=> d!705247 (validRegex!2889 (regOne!14866 r!13927))))

(assert (=> d!705247 (= (matchR!3292 (regOne!14866 r!13927) (_1!16596 (get!8795 lt!878352))) lt!878442)))

(declare-fun b!2442094 () Bool)

(declare-fun e!1551531 () Bool)

(assert (=> b!2442094 (= e!1551529 e!1551531)))

(declare-fun c!389789 () Bool)

(assert (=> b!2442094 (= c!389789 ((_ is EmptyLang!7177) (regOne!14866 r!13927)))))

(declare-fun b!2442095 () Bool)

(declare-fun res!1036823 () Bool)

(declare-fun e!1551526 () Bool)

(assert (=> b!2442095 (=> res!1036823 e!1551526)))

(declare-fun e!1551530 () Bool)

(assert (=> b!2442095 (= res!1036823 e!1551530)))

(declare-fun res!1036826 () Bool)

(assert (=> b!2442095 (=> (not res!1036826) (not e!1551530))))

(assert (=> b!2442095 (= res!1036826 lt!878442)))

(declare-fun b!2442096 () Bool)

(assert (=> b!2442096 (= e!1551531 (not lt!878442))))

(declare-fun b!2442097 () Bool)

(declare-fun e!1551532 () Bool)

(assert (=> b!2442097 (= e!1551526 e!1551532)))

(declare-fun res!1036828 () Bool)

(assert (=> b!2442097 (=> (not res!1036828) (not e!1551532))))

(assert (=> b!2442097 (= res!1036828 (not lt!878442))))

(declare-fun b!2442098 () Bool)

(declare-fun res!1036825 () Bool)

(assert (=> b!2442098 (=> (not res!1036825) (not e!1551530))))

(assert (=> b!2442098 (= res!1036825 (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878352)))))))

(declare-fun b!2442099 () Bool)

(declare-fun e!1551528 () Bool)

(assert (=> b!2442099 (= e!1551532 e!1551528)))

(declare-fun res!1036822 () Bool)

(assert (=> b!2442099 (=> res!1036822 e!1551528)))

(assert (=> b!2442099 (= res!1036822 call!149701)))

(declare-fun b!2442100 () Bool)

(assert (=> b!2442100 (= e!1551527 (nullable!2198 (regOne!14866 r!13927)))))

(declare-fun b!2442101 () Bool)

(assert (=> b!2442101 (= e!1551530 (= (head!5545 (_1!16596 (get!8795 lt!878352))) (c!389219 (regOne!14866 r!13927))))))

(declare-fun b!2442102 () Bool)

(declare-fun res!1036827 () Bool)

(assert (=> b!2442102 (=> (not res!1036827) (not e!1551530))))

(assert (=> b!2442102 (= res!1036827 (not call!149701))))

(declare-fun bm!149696 () Bool)

(assert (=> bm!149696 (= call!149701 (isEmpty!16534 (_1!16596 (get!8795 lt!878352))))))

(declare-fun b!2442103 () Bool)

(declare-fun res!1036821 () Bool)

(assert (=> b!2442103 (=> res!1036821 e!1551528)))

(assert (=> b!2442103 (= res!1036821 (not (isEmpty!16534 (tail!3818 (_1!16596 (get!8795 lt!878352))))))))

(declare-fun b!2442104 () Bool)

(assert (=> b!2442104 (= e!1551527 (matchR!3292 (derivativeStep!1852 (regOne!14866 r!13927) (head!5545 (_1!16596 (get!8795 lt!878352)))) (tail!3818 (_1!16596 (get!8795 lt!878352)))))))

(declare-fun b!2442105 () Bool)

(declare-fun res!1036824 () Bool)

(assert (=> b!2442105 (=> res!1036824 e!1551526)))

(assert (=> b!2442105 (= res!1036824 (not ((_ is ElementMatch!7177) (regOne!14866 r!13927))))))

(assert (=> b!2442105 (= e!1551531 e!1551526)))

(declare-fun b!2442106 () Bool)

(assert (=> b!2442106 (= e!1551528 (not (= (head!5545 (_1!16596 (get!8795 lt!878352))) (c!389219 (regOne!14866 r!13927)))))))

(assert (= (and d!705247 c!389788) b!2442100))

(assert (= (and d!705247 (not c!389788)) b!2442104))

(assert (= (and d!705247 c!389790) b!2442093))

(assert (= (and d!705247 (not c!389790)) b!2442094))

(assert (= (and b!2442094 c!389789) b!2442096))

(assert (= (and b!2442094 (not c!389789)) b!2442105))

(assert (= (and b!2442105 (not res!1036824)) b!2442095))

(assert (= (and b!2442095 res!1036826) b!2442102))

(assert (= (and b!2442102 res!1036827) b!2442098))

(assert (= (and b!2442098 res!1036825) b!2442101))

(assert (= (and b!2442095 (not res!1036823)) b!2442097))

(assert (= (and b!2442097 res!1036828) b!2442099))

(assert (= (and b!2442099 (not res!1036822)) b!2442103))

(assert (= (and b!2442103 (not res!1036821)) b!2442106))

(assert (= (or b!2442093 b!2442102 b!2442099) bm!149696))

(declare-fun m!2819991 () Bool)

(assert (=> b!2442103 m!2819991))

(assert (=> b!2442103 m!2819991))

(declare-fun m!2819993 () Bool)

(assert (=> b!2442103 m!2819993))

(declare-fun m!2819995 () Bool)

(assert (=> b!2442106 m!2819995))

(assert (=> b!2442098 m!2819991))

(assert (=> b!2442098 m!2819991))

(assert (=> b!2442098 m!2819993))

(declare-fun m!2819997 () Bool)

(assert (=> d!705247 m!2819997))

(assert (=> d!705247 m!2818351))

(assert (=> bm!149696 m!2819997))

(assert (=> b!2442100 m!2819087))

(assert (=> b!2442101 m!2819995))

(assert (=> b!2442104 m!2819995))

(assert (=> b!2442104 m!2819995))

(declare-fun m!2819999 () Bool)

(assert (=> b!2442104 m!2819999))

(assert (=> b!2442104 m!2819991))

(assert (=> b!2442104 m!2819999))

(assert (=> b!2442104 m!2819991))

(declare-fun m!2820001 () Bool)

(assert (=> b!2442104 m!2820001))

(assert (=> b!2440868 d!705247))

(assert (=> b!2440868 d!705069))

(declare-fun b!2442107 () Bool)

(declare-fun e!1551536 () Bool)

(declare-fun lt!878443 () Bool)

(declare-fun call!149702 () Bool)

(assert (=> b!2442107 (= e!1551536 (= lt!878443 call!149702))))

(declare-fun d!705249 () Bool)

(assert (=> d!705249 e!1551536))

(declare-fun c!389793 () Bool)

(assert (=> d!705249 (= c!389793 ((_ is EmptyExpr!7177) (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298))))))))

(declare-fun e!1551534 () Bool)

(assert (=> d!705249 (= lt!878443 e!1551534)))

(declare-fun c!389791 () Bool)

(assert (=> d!705249 (= c!389791 (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878298)))))))

(assert (=> d!705249 (validRegex!2889 (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298)))))))

(assert (=> d!705249 (= (matchR!3292 (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298)))) (tail!3818 (_2!16596 (get!8795 lt!878298)))) lt!878443)))

(declare-fun b!2442108 () Bool)

(declare-fun e!1551538 () Bool)

(assert (=> b!2442108 (= e!1551536 e!1551538)))

(declare-fun c!389792 () Bool)

(assert (=> b!2442108 (= c!389792 ((_ is EmptyLang!7177) (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298))))))))

(declare-fun b!2442109 () Bool)

(declare-fun res!1036831 () Bool)

(declare-fun e!1551533 () Bool)

(assert (=> b!2442109 (=> res!1036831 e!1551533)))

(declare-fun e!1551537 () Bool)

(assert (=> b!2442109 (= res!1036831 e!1551537)))

(declare-fun res!1036834 () Bool)

(assert (=> b!2442109 (=> (not res!1036834) (not e!1551537))))

(assert (=> b!2442109 (= res!1036834 lt!878443)))

(declare-fun b!2442110 () Bool)

(assert (=> b!2442110 (= e!1551538 (not lt!878443))))

(declare-fun b!2442111 () Bool)

(declare-fun e!1551539 () Bool)

(assert (=> b!2442111 (= e!1551533 e!1551539)))

(declare-fun res!1036836 () Bool)

(assert (=> b!2442111 (=> (not res!1036836) (not e!1551539))))

(assert (=> b!2442111 (= res!1036836 (not lt!878443))))

(declare-fun b!2442112 () Bool)

(declare-fun res!1036833 () Bool)

(assert (=> b!2442112 (=> (not res!1036833) (not e!1551537))))

(assert (=> b!2442112 (= res!1036833 (isEmpty!16534 (tail!3818 (tail!3818 (_2!16596 (get!8795 lt!878298))))))))

(declare-fun b!2442113 () Bool)

(declare-fun e!1551535 () Bool)

(assert (=> b!2442113 (= e!1551539 e!1551535)))

(declare-fun res!1036830 () Bool)

(assert (=> b!2442113 (=> res!1036830 e!1551535)))

(assert (=> b!2442113 (= res!1036830 call!149702)))

(declare-fun b!2442114 () Bool)

(assert (=> b!2442114 (= e!1551534 (nullable!2198 (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298))))))))

(declare-fun b!2442115 () Bool)

(assert (=> b!2442115 (= e!1551537 (= (head!5545 (tail!3818 (_2!16596 (get!8795 lt!878298)))) (c!389219 (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298)))))))))

(declare-fun b!2442116 () Bool)

(declare-fun res!1036835 () Bool)

(assert (=> b!2442116 (=> (not res!1036835) (not e!1551537))))

(assert (=> b!2442116 (= res!1036835 (not call!149702))))

(declare-fun bm!149697 () Bool)

(assert (=> bm!149697 (= call!149702 (isEmpty!16534 (tail!3818 (_2!16596 (get!8795 lt!878298)))))))

(declare-fun b!2442117 () Bool)

(declare-fun res!1036829 () Bool)

(assert (=> b!2442117 (=> res!1036829 e!1551535)))

(assert (=> b!2442117 (= res!1036829 (not (isEmpty!16534 (tail!3818 (tail!3818 (_2!16596 (get!8795 lt!878298)))))))))

(declare-fun b!2442118 () Bool)

(assert (=> b!2442118 (= e!1551534 (matchR!3292 (derivativeStep!1852 (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298)))) (head!5545 (tail!3818 (_2!16596 (get!8795 lt!878298))))) (tail!3818 (tail!3818 (_2!16596 (get!8795 lt!878298))))))))

(declare-fun b!2442119 () Bool)

(declare-fun res!1036832 () Bool)

(assert (=> b!2442119 (=> res!1036832 e!1551533)))

(assert (=> b!2442119 (= res!1036832 (not ((_ is ElementMatch!7177) (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298)))))))))

(assert (=> b!2442119 (= e!1551538 e!1551533)))

(declare-fun b!2442120 () Bool)

(assert (=> b!2442120 (= e!1551535 (not (= (head!5545 (tail!3818 (_2!16596 (get!8795 lt!878298)))) (c!389219 (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298))))))))))

(assert (= (and d!705249 c!389791) b!2442114))

(assert (= (and d!705249 (not c!389791)) b!2442118))

(assert (= (and d!705249 c!389793) b!2442107))

(assert (= (and d!705249 (not c!389793)) b!2442108))

(assert (= (and b!2442108 c!389792) b!2442110))

(assert (= (and b!2442108 (not c!389792)) b!2442119))

(assert (= (and b!2442119 (not res!1036832)) b!2442109))

(assert (= (and b!2442109 res!1036834) b!2442116))

(assert (= (and b!2442116 res!1036835) b!2442112))

(assert (= (and b!2442112 res!1036833) b!2442115))

(assert (= (and b!2442109 (not res!1036831)) b!2442111))

(assert (= (and b!2442111 res!1036836) b!2442113))

(assert (= (and b!2442113 (not res!1036830)) b!2442117))

(assert (= (and b!2442117 (not res!1036829)) b!2442120))

(assert (= (or b!2442107 b!2442116 b!2442113) bm!149697))

(assert (=> b!2442117 m!2818853))

(declare-fun m!2820003 () Bool)

(assert (=> b!2442117 m!2820003))

(assert (=> b!2442117 m!2820003))

(declare-fun m!2820005 () Bool)

(assert (=> b!2442117 m!2820005))

(assert (=> b!2442120 m!2818853))

(declare-fun m!2820007 () Bool)

(assert (=> b!2442120 m!2820007))

(assert (=> b!2442112 m!2818853))

(assert (=> b!2442112 m!2820003))

(assert (=> b!2442112 m!2820003))

(assert (=> b!2442112 m!2820005))

(assert (=> d!705249 m!2818853))

(assert (=> d!705249 m!2818855))

(assert (=> d!705249 m!2818865))

(declare-fun m!2820009 () Bool)

(assert (=> d!705249 m!2820009))

(assert (=> bm!149697 m!2818853))

(assert (=> bm!149697 m!2818855))

(assert (=> b!2442114 m!2818865))

(declare-fun m!2820011 () Bool)

(assert (=> b!2442114 m!2820011))

(assert (=> b!2442115 m!2818853))

(assert (=> b!2442115 m!2820007))

(assert (=> b!2442118 m!2818853))

(assert (=> b!2442118 m!2820007))

(assert (=> b!2442118 m!2818865))

(assert (=> b!2442118 m!2820007))

(declare-fun m!2820013 () Bool)

(assert (=> b!2442118 m!2820013))

(assert (=> b!2442118 m!2818853))

(assert (=> b!2442118 m!2820003))

(assert (=> b!2442118 m!2820013))

(assert (=> b!2442118 m!2820003))

(declare-fun m!2820015 () Bool)

(assert (=> b!2442118 m!2820015))

(assert (=> b!2440822 d!705249))

(declare-fun b!2442121 () Bool)

(declare-fun e!1551543 () Regex!7177)

(declare-fun e!1551540 () Regex!7177)

(assert (=> b!2442121 (= e!1551543 e!1551540)))

(declare-fun c!389796 () Bool)

(assert (=> b!2442121 (= c!389796 ((_ is ElementMatch!7177) EmptyExpr!7177))))

(declare-fun b!2442122 () Bool)

(assert (=> b!2442122 (= e!1551540 (ite (= (head!5545 (_2!16596 (get!8795 lt!878298))) (c!389219 EmptyExpr!7177)) EmptyExpr!7177 EmptyLang!7177))))

(declare-fun c!389795 () Bool)

(declare-fun call!149706 () Regex!7177)

(declare-fun c!389797 () Bool)

(declare-fun bm!149698 () Bool)

(assert (=> bm!149698 (= call!149706 (derivativeStep!1852 (ite c!389797 (regOne!14867 EmptyExpr!7177) (ite c!389795 (reg!7506 EmptyExpr!7177) (regOne!14866 EmptyExpr!7177))) (head!5545 (_2!16596 (get!8795 lt!878298)))))))

(declare-fun b!2442124 () Bool)

(declare-fun c!389798 () Bool)

(assert (=> b!2442124 (= c!389798 (nullable!2198 (regOne!14866 EmptyExpr!7177)))))

(declare-fun e!1551541 () Regex!7177)

(declare-fun e!1551542 () Regex!7177)

(assert (=> b!2442124 (= e!1551541 e!1551542)))

(declare-fun b!2442125 () Bool)

(declare-fun call!149703 () Regex!7177)

(assert (=> b!2442125 (= e!1551541 (Concat!11813 call!149703 EmptyExpr!7177))))

(declare-fun b!2442126 () Bool)

(assert (=> b!2442126 (= c!389797 ((_ is Union!7177) EmptyExpr!7177))))

(declare-fun e!1551544 () Regex!7177)

(assert (=> b!2442126 (= e!1551540 e!1551544)))

(declare-fun bm!149699 () Bool)

(assert (=> bm!149699 (= call!149703 call!149706)))

(declare-fun bm!149700 () Bool)

(declare-fun call!149704 () Regex!7177)

(declare-fun call!149705 () Regex!7177)

(assert (=> bm!149700 (= call!149704 call!149705)))

(declare-fun bm!149701 () Bool)

(assert (=> bm!149701 (= call!149705 (derivativeStep!1852 (ite c!389797 (regTwo!14867 EmptyExpr!7177) (ite c!389798 (regTwo!14866 EmptyExpr!7177) (regOne!14866 EmptyExpr!7177))) (head!5545 (_2!16596 (get!8795 lt!878298)))))))

(declare-fun b!2442123 () Bool)

(assert (=> b!2442123 (= e!1551542 (Union!7177 (Concat!11813 call!149703 (regTwo!14866 EmptyExpr!7177)) call!149704))))

(declare-fun d!705251 () Bool)

(declare-fun lt!878444 () Regex!7177)

(assert (=> d!705251 (validRegex!2889 lt!878444)))

(assert (=> d!705251 (= lt!878444 e!1551543)))

(declare-fun c!389794 () Bool)

(assert (=> d!705251 (= c!389794 (or ((_ is EmptyExpr!7177) EmptyExpr!7177) ((_ is EmptyLang!7177) EmptyExpr!7177)))))

(assert (=> d!705251 (validRegex!2889 EmptyExpr!7177)))

(assert (=> d!705251 (= (derivativeStep!1852 EmptyExpr!7177 (head!5545 (_2!16596 (get!8795 lt!878298)))) lt!878444)))

(declare-fun b!2442127 () Bool)

(assert (=> b!2442127 (= e!1551544 e!1551541)))

(assert (=> b!2442127 (= c!389795 ((_ is Star!7177) EmptyExpr!7177))))

(declare-fun b!2442128 () Bool)

(assert (=> b!2442128 (= e!1551543 EmptyLang!7177)))

(declare-fun b!2442129 () Bool)

(assert (=> b!2442129 (= e!1551544 (Union!7177 call!149706 call!149705))))

(declare-fun b!2442130 () Bool)

(assert (=> b!2442130 (= e!1551542 (Union!7177 (Concat!11813 call!149704 (regTwo!14866 EmptyExpr!7177)) EmptyLang!7177))))

(assert (= (and d!705251 c!389794) b!2442128))

(assert (= (and d!705251 (not c!389794)) b!2442121))

(assert (= (and b!2442121 c!389796) b!2442122))

(assert (= (and b!2442121 (not c!389796)) b!2442126))

(assert (= (and b!2442126 c!389797) b!2442129))

(assert (= (and b!2442126 (not c!389797)) b!2442127))

(assert (= (and b!2442127 c!389795) b!2442125))

(assert (= (and b!2442127 (not c!389795)) b!2442124))

(assert (= (and b!2442124 c!389798) b!2442123))

(assert (= (and b!2442124 (not c!389798)) b!2442130))

(assert (= (or b!2442123 b!2442130) bm!149700))

(assert (= (or b!2442125 b!2442123) bm!149699))

(assert (= (or b!2442129 bm!149699) bm!149698))

(assert (= (or b!2442129 bm!149700) bm!149701))

(assert (=> bm!149698 m!2818857))

(declare-fun m!2820017 () Bool)

(assert (=> bm!149698 m!2820017))

(assert (=> b!2442124 m!2819685))

(assert (=> bm!149701 m!2818857))

(declare-fun m!2820019 () Bool)

(assert (=> bm!149701 m!2820019))

(declare-fun m!2820021 () Bool)

(assert (=> d!705251 m!2820021))

(assert (=> d!705251 m!2818861))

(assert (=> b!2440822 d!705251))

(assert (=> b!2440822 d!705077))

(assert (=> b!2440822 d!705117))

(assert (=> b!2441156 d!704905))

(assert (=> b!2441123 d!704951))

(assert (=> b!2441123 d!704953))

(declare-fun b!2442134 () Bool)

(declare-fun e!1551545 () Bool)

(declare-fun tp!775049 () Bool)

(declare-fun tp!775048 () Bool)

(assert (=> b!2442134 (= e!1551545 (and tp!775049 tp!775048))))

(declare-fun b!2442131 () Bool)

(assert (=> b!2442131 (= e!1551545 tp_is_empty!11767)))

(declare-fun b!2442132 () Bool)

(declare-fun tp!775047 () Bool)

(declare-fun tp!775046 () Bool)

(assert (=> b!2442132 (= e!1551545 (and tp!775047 tp!775046))))

(declare-fun b!2442133 () Bool)

(declare-fun tp!775050 () Bool)

(assert (=> b!2442133 (= e!1551545 tp!775050)))

(assert (=> b!2441198 (= tp!774926 e!1551545)))

(assert (= (and b!2441198 ((_ is ElementMatch!7177) (regOne!14867 (reg!7506 (regOne!14866 r!13927))))) b!2442131))

(assert (= (and b!2441198 ((_ is Concat!11813) (regOne!14867 (reg!7506 (regOne!14866 r!13927))))) b!2442132))

(assert (= (and b!2441198 ((_ is Star!7177) (regOne!14867 (reg!7506 (regOne!14866 r!13927))))) b!2442133))

(assert (= (and b!2441198 ((_ is Union!7177) (regOne!14867 (reg!7506 (regOne!14866 r!13927))))) b!2442134))

(declare-fun b!2442138 () Bool)

(declare-fun e!1551546 () Bool)

(declare-fun tp!775054 () Bool)

(declare-fun tp!775053 () Bool)

(assert (=> b!2442138 (= e!1551546 (and tp!775054 tp!775053))))

(declare-fun b!2442135 () Bool)

(assert (=> b!2442135 (= e!1551546 tp_is_empty!11767)))

(declare-fun b!2442136 () Bool)

(declare-fun tp!775052 () Bool)

(declare-fun tp!775051 () Bool)

(assert (=> b!2442136 (= e!1551546 (and tp!775052 tp!775051))))

(declare-fun b!2442137 () Bool)

(declare-fun tp!775055 () Bool)

(assert (=> b!2442137 (= e!1551546 tp!775055)))

(assert (=> b!2441198 (= tp!774925 e!1551546)))

(assert (= (and b!2441198 ((_ is ElementMatch!7177) (regTwo!14867 (reg!7506 (regOne!14866 r!13927))))) b!2442135))

(assert (= (and b!2441198 ((_ is Concat!11813) (regTwo!14867 (reg!7506 (regOne!14866 r!13927))))) b!2442136))

(assert (= (and b!2441198 ((_ is Star!7177) (regTwo!14867 (reg!7506 (regOne!14866 r!13927))))) b!2442137))

(assert (= (and b!2441198 ((_ is Union!7177) (regTwo!14867 (reg!7506 (regOne!14866 r!13927))))) b!2442138))

(declare-fun b!2442142 () Bool)

(declare-fun e!1551547 () Bool)

(declare-fun tp!775059 () Bool)

(declare-fun tp!775058 () Bool)

(assert (=> b!2442142 (= e!1551547 (and tp!775059 tp!775058))))

(declare-fun b!2442139 () Bool)

(assert (=> b!2442139 (= e!1551547 tp_is_empty!11767)))

(declare-fun b!2442140 () Bool)

(declare-fun tp!775057 () Bool)

(declare-fun tp!775056 () Bool)

(assert (=> b!2442140 (= e!1551547 (and tp!775057 tp!775056))))

(declare-fun b!2442141 () Bool)

(declare-fun tp!775060 () Bool)

(assert (=> b!2442141 (= e!1551547 tp!775060)))

(assert (=> b!2441180 (= tp!774904 e!1551547)))

(assert (= (and b!2441180 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14867 (regTwo!14866 r!13927))))) b!2442139))

(assert (= (and b!2441180 ((_ is Concat!11813) (regOne!14866 (regOne!14867 (regTwo!14866 r!13927))))) b!2442140))

(assert (= (and b!2441180 ((_ is Star!7177) (regOne!14866 (regOne!14867 (regTwo!14866 r!13927))))) b!2442141))

(assert (= (and b!2441180 ((_ is Union!7177) (regOne!14866 (regOne!14867 (regTwo!14866 r!13927))))) b!2442142))

(declare-fun b!2442146 () Bool)

(declare-fun e!1551548 () Bool)

(declare-fun tp!775064 () Bool)

(declare-fun tp!775063 () Bool)

(assert (=> b!2442146 (= e!1551548 (and tp!775064 tp!775063))))

(declare-fun b!2442143 () Bool)

(assert (=> b!2442143 (= e!1551548 tp_is_empty!11767)))

(declare-fun b!2442144 () Bool)

(declare-fun tp!775062 () Bool)

(declare-fun tp!775061 () Bool)

(assert (=> b!2442144 (= e!1551548 (and tp!775062 tp!775061))))

(declare-fun b!2442145 () Bool)

(declare-fun tp!775065 () Bool)

(assert (=> b!2442145 (= e!1551548 tp!775065)))

(assert (=> b!2441180 (= tp!774903 e!1551548)))

(assert (= (and b!2441180 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14867 (regTwo!14866 r!13927))))) b!2442143))

(assert (= (and b!2441180 ((_ is Concat!11813) (regTwo!14866 (regOne!14867 (regTwo!14866 r!13927))))) b!2442144))

(assert (= (and b!2441180 ((_ is Star!7177) (regTwo!14866 (regOne!14867 (regTwo!14866 r!13927))))) b!2442145))

(assert (= (and b!2441180 ((_ is Union!7177) (regTwo!14866 (regOne!14867 (regTwo!14866 r!13927))))) b!2442146))

(declare-fun b!2442150 () Bool)

(declare-fun e!1551549 () Bool)

(declare-fun tp!775069 () Bool)

(declare-fun tp!775068 () Bool)

(assert (=> b!2442150 (= e!1551549 (and tp!775069 tp!775068))))

(declare-fun b!2442147 () Bool)

(assert (=> b!2442147 (= e!1551549 tp_is_empty!11767)))

(declare-fun b!2442148 () Bool)

(declare-fun tp!775067 () Bool)

(declare-fun tp!775066 () Bool)

(assert (=> b!2442148 (= e!1551549 (and tp!775067 tp!775066))))

(declare-fun b!2442149 () Bool)

(declare-fun tp!775070 () Bool)

(assert (=> b!2442149 (= e!1551549 tp!775070)))

(assert (=> b!2441290 (= tp!775042 e!1551549)))

(assert (= (and b!2441290 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14867 (h!33894 l!9164))))) b!2442147))

(assert (= (and b!2441290 ((_ is Concat!11813) (regOne!14866 (regTwo!14867 (h!33894 l!9164))))) b!2442148))

(assert (= (and b!2441290 ((_ is Star!7177) (regOne!14866 (regTwo!14867 (h!33894 l!9164))))) b!2442149))

(assert (= (and b!2441290 ((_ is Union!7177) (regOne!14866 (regTwo!14867 (h!33894 l!9164))))) b!2442150))

(declare-fun b!2442154 () Bool)

(declare-fun e!1551550 () Bool)

(declare-fun tp!775074 () Bool)

(declare-fun tp!775073 () Bool)

(assert (=> b!2442154 (= e!1551550 (and tp!775074 tp!775073))))

(declare-fun b!2442151 () Bool)

(assert (=> b!2442151 (= e!1551550 tp_is_empty!11767)))

(declare-fun b!2442152 () Bool)

(declare-fun tp!775072 () Bool)

(declare-fun tp!775071 () Bool)

(assert (=> b!2442152 (= e!1551550 (and tp!775072 tp!775071))))

(declare-fun b!2442153 () Bool)

(declare-fun tp!775075 () Bool)

(assert (=> b!2442153 (= e!1551550 tp!775075)))

(assert (=> b!2441290 (= tp!775041 e!1551550)))

(assert (= (and b!2441290 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14867 (h!33894 l!9164))))) b!2442151))

(assert (= (and b!2441290 ((_ is Concat!11813) (regTwo!14866 (regTwo!14867 (h!33894 l!9164))))) b!2442152))

(assert (= (and b!2441290 ((_ is Star!7177) (regTwo!14866 (regTwo!14867 (h!33894 l!9164))))) b!2442153))

(assert (= (and b!2441290 ((_ is Union!7177) (regTwo!14866 (regTwo!14867 (h!33894 l!9164))))) b!2442154))

(declare-fun b!2442158 () Bool)

(declare-fun e!1551551 () Bool)

(declare-fun tp!775079 () Bool)

(declare-fun tp!775078 () Bool)

(assert (=> b!2442158 (= e!1551551 (and tp!775079 tp!775078))))

(declare-fun b!2442155 () Bool)

(assert (=> b!2442155 (= e!1551551 tp_is_empty!11767)))

(declare-fun b!2442156 () Bool)

(declare-fun tp!775077 () Bool)

(declare-fun tp!775076 () Bool)

(assert (=> b!2442156 (= e!1551551 (and tp!775077 tp!775076))))

(declare-fun b!2442157 () Bool)

(declare-fun tp!775080 () Bool)

(assert (=> b!2442157 (= e!1551551 tp!775080)))

(assert (=> b!2441189 (= tp!774917 e!1551551)))

(assert (= (and b!2441189 ((_ is ElementMatch!7177) (reg!7506 (regOne!14867 (reg!7506 r!13927))))) b!2442155))

(assert (= (and b!2441189 ((_ is Concat!11813) (reg!7506 (regOne!14867 (reg!7506 r!13927))))) b!2442156))

(assert (= (and b!2441189 ((_ is Star!7177) (reg!7506 (regOne!14867 (reg!7506 r!13927))))) b!2442157))

(assert (= (and b!2441189 ((_ is Union!7177) (reg!7506 (regOne!14867 (reg!7506 r!13927))))) b!2442158))

(declare-fun b!2442162 () Bool)

(declare-fun e!1551552 () Bool)

(declare-fun tp!775084 () Bool)

(declare-fun tp!775083 () Bool)

(assert (=> b!2442162 (= e!1551552 (and tp!775084 tp!775083))))

(declare-fun b!2442159 () Bool)

(assert (=> b!2442159 (= e!1551552 tp_is_empty!11767)))

(declare-fun b!2442160 () Bool)

(declare-fun tp!775082 () Bool)

(declare-fun tp!775081 () Bool)

(assert (=> b!2442160 (= e!1551552 (and tp!775082 tp!775081))))

(declare-fun b!2442161 () Bool)

(declare-fun tp!775085 () Bool)

(assert (=> b!2442161 (= e!1551552 tp!775085)))

(assert (=> b!2441231 (= tp!774968 e!1551552)))

(assert (= (and b!2441231 ((_ is ElementMatch!7177) (regOne!14867 (reg!7506 (regTwo!14867 r!13927))))) b!2442159))

(assert (= (and b!2441231 ((_ is Concat!11813) (regOne!14867 (reg!7506 (regTwo!14867 r!13927))))) b!2442160))

(assert (= (and b!2441231 ((_ is Star!7177) (regOne!14867 (reg!7506 (regTwo!14867 r!13927))))) b!2442161))

(assert (= (and b!2441231 ((_ is Union!7177) (regOne!14867 (reg!7506 (regTwo!14867 r!13927))))) b!2442162))

(declare-fun b!2442166 () Bool)

(declare-fun e!1551553 () Bool)

(declare-fun tp!775089 () Bool)

(declare-fun tp!775088 () Bool)

(assert (=> b!2442166 (= e!1551553 (and tp!775089 tp!775088))))

(declare-fun b!2442163 () Bool)

(assert (=> b!2442163 (= e!1551553 tp_is_empty!11767)))

(declare-fun b!2442164 () Bool)

(declare-fun tp!775087 () Bool)

(declare-fun tp!775086 () Bool)

(assert (=> b!2442164 (= e!1551553 (and tp!775087 tp!775086))))

(declare-fun b!2442165 () Bool)

(declare-fun tp!775090 () Bool)

(assert (=> b!2442165 (= e!1551553 tp!775090)))

(assert (=> b!2441231 (= tp!774967 e!1551553)))

(assert (= (and b!2441231 ((_ is ElementMatch!7177) (regTwo!14867 (reg!7506 (regTwo!14867 r!13927))))) b!2442163))

(assert (= (and b!2441231 ((_ is Concat!11813) (regTwo!14867 (reg!7506 (regTwo!14867 r!13927))))) b!2442164))

(assert (= (and b!2441231 ((_ is Star!7177) (regTwo!14867 (reg!7506 (regTwo!14867 r!13927))))) b!2442165))

(assert (= (and b!2441231 ((_ is Union!7177) (regTwo!14867 (reg!7506 (regTwo!14867 r!13927))))) b!2442166))

(declare-fun b!2442170 () Bool)

(declare-fun e!1551554 () Bool)

(declare-fun tp!775094 () Bool)

(declare-fun tp!775093 () Bool)

(assert (=> b!2442170 (= e!1551554 (and tp!775094 tp!775093))))

(declare-fun b!2442167 () Bool)

(assert (=> b!2442167 (= e!1551554 tp_is_empty!11767)))

(declare-fun b!2442168 () Bool)

(declare-fun tp!775092 () Bool)

(declare-fun tp!775091 () Bool)

(assert (=> b!2442168 (= e!1551554 (and tp!775092 tp!775091))))

(declare-fun b!2442169 () Bool)

(declare-fun tp!775095 () Bool)

(assert (=> b!2442169 (= e!1551554 tp!775095)))

(assert (=> b!2441213 (= tp!774946 e!1551554)))

(assert (= (and b!2441213 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14866 (regTwo!14867 r!13927))))) b!2442167))

(assert (= (and b!2441213 ((_ is Concat!11813) (regOne!14866 (regOne!14866 (regTwo!14867 r!13927))))) b!2442168))

(assert (= (and b!2441213 ((_ is Star!7177) (regOne!14866 (regOne!14866 (regTwo!14867 r!13927))))) b!2442169))

(assert (= (and b!2441213 ((_ is Union!7177) (regOne!14866 (regOne!14866 (regTwo!14867 r!13927))))) b!2442170))

(declare-fun b!2442174 () Bool)

(declare-fun e!1551555 () Bool)

(declare-fun tp!775099 () Bool)

(declare-fun tp!775098 () Bool)

(assert (=> b!2442174 (= e!1551555 (and tp!775099 tp!775098))))

(declare-fun b!2442171 () Bool)

(assert (=> b!2442171 (= e!1551555 tp_is_empty!11767)))

(declare-fun b!2442172 () Bool)

(declare-fun tp!775097 () Bool)

(declare-fun tp!775096 () Bool)

(assert (=> b!2442172 (= e!1551555 (and tp!775097 tp!775096))))

(declare-fun b!2442173 () Bool)

(declare-fun tp!775100 () Bool)

(assert (=> b!2442173 (= e!1551555 tp!775100)))

(assert (=> b!2441213 (= tp!774945 e!1551555)))

(assert (= (and b!2441213 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14866 (regTwo!14867 r!13927))))) b!2442171))

(assert (= (and b!2441213 ((_ is Concat!11813) (regTwo!14866 (regOne!14866 (regTwo!14867 r!13927))))) b!2442172))

(assert (= (and b!2441213 ((_ is Star!7177) (regTwo!14866 (regOne!14866 (regTwo!14867 r!13927))))) b!2442173))

(assert (= (and b!2441213 ((_ is Union!7177) (regTwo!14866 (regOne!14866 (regTwo!14867 r!13927))))) b!2442174))

(declare-fun b!2442178 () Bool)

(declare-fun e!1551556 () Bool)

(declare-fun tp!775104 () Bool)

(declare-fun tp!775103 () Bool)

(assert (=> b!2442178 (= e!1551556 (and tp!775104 tp!775103))))

(declare-fun b!2442175 () Bool)

(assert (=> b!2442175 (= e!1551556 tp_is_empty!11767)))

(declare-fun b!2442176 () Bool)

(declare-fun tp!775102 () Bool)

(declare-fun tp!775101 () Bool)

(assert (=> b!2442176 (= e!1551556 (and tp!775102 tp!775101))))

(declare-fun b!2442177 () Bool)

(declare-fun tp!775105 () Bool)

(assert (=> b!2442177 (= e!1551556 tp!775105)))

(assert (=> b!2441222 (= tp!774959 e!1551556)))

(assert (= (and b!2441222 ((_ is ElementMatch!7177) (reg!7506 (regOne!14866 (regOne!14867 r!13927))))) b!2442175))

(assert (= (and b!2441222 ((_ is Concat!11813) (reg!7506 (regOne!14866 (regOne!14867 r!13927))))) b!2442176))

(assert (= (and b!2441222 ((_ is Star!7177) (reg!7506 (regOne!14866 (regOne!14867 r!13927))))) b!2442177))

(assert (= (and b!2441222 ((_ is Union!7177) (reg!7506 (regOne!14866 (regOne!14867 r!13927))))) b!2442178))

(declare-fun b!2442182 () Bool)

(declare-fun e!1551557 () Bool)

(declare-fun tp!775109 () Bool)

(declare-fun tp!775108 () Bool)

(assert (=> b!2442182 (= e!1551557 (and tp!775109 tp!775108))))

(declare-fun b!2442179 () Bool)

(assert (=> b!2442179 (= e!1551557 tp_is_empty!11767)))

(declare-fun b!2442180 () Bool)

(declare-fun tp!775107 () Bool)

(declare-fun tp!775106 () Bool)

(assert (=> b!2442180 (= e!1551557 (and tp!775107 tp!775106))))

(declare-fun b!2442181 () Bool)

(declare-fun tp!775110 () Bool)

(assert (=> b!2442181 (= e!1551557 tp!775110)))

(assert (=> b!2441265 (= tp!775011 e!1551557)))

(assert (= (and b!2441265 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442179))

(assert (= (and b!2441265 ((_ is Concat!11813) (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442180))

(assert (= (and b!2441265 ((_ is Star!7177) (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442181))

(assert (= (and b!2441265 ((_ is Union!7177) (regOne!14866 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442182))

(declare-fun b!2442186 () Bool)

(declare-fun e!1551558 () Bool)

(declare-fun tp!775114 () Bool)

(declare-fun tp!775113 () Bool)

(assert (=> b!2442186 (= e!1551558 (and tp!775114 tp!775113))))

(declare-fun b!2442183 () Bool)

(assert (=> b!2442183 (= e!1551558 tp_is_empty!11767)))

(declare-fun b!2442184 () Bool)

(declare-fun tp!775112 () Bool)

(declare-fun tp!775111 () Bool)

(assert (=> b!2442184 (= e!1551558 (and tp!775112 tp!775111))))

(declare-fun b!2442185 () Bool)

(declare-fun tp!775115 () Bool)

(assert (=> b!2442185 (= e!1551558 tp!775115)))

(assert (=> b!2441265 (= tp!775010 e!1551558)))

(assert (= (and b!2441265 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442183))

(assert (= (and b!2441265 ((_ is Concat!11813) (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442184))

(assert (= (and b!2441265 ((_ is Star!7177) (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442185))

(assert (= (and b!2441265 ((_ is Union!7177) (regTwo!14866 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442186))

(declare-fun b!2442190 () Bool)

(declare-fun e!1551559 () Bool)

(declare-fun tp!775119 () Bool)

(declare-fun tp!775118 () Bool)

(assert (=> b!2442190 (= e!1551559 (and tp!775119 tp!775118))))

(declare-fun b!2442187 () Bool)

(assert (=> b!2442187 (= e!1551559 tp_is_empty!11767)))

(declare-fun b!2442188 () Bool)

(declare-fun tp!775117 () Bool)

(declare-fun tp!775116 () Bool)

(assert (=> b!2442188 (= e!1551559 (and tp!775117 tp!775116))))

(declare-fun b!2442189 () Bool)

(declare-fun tp!775120 () Bool)

(assert (=> b!2442189 (= e!1551559 tp!775120)))

(assert (=> b!2441276 (= tp!775024 e!1551559)))

(assert (= (and b!2441276 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14866 (h!33894 l!9164))))) b!2442187))

(assert (= (and b!2441276 ((_ is Concat!11813) (regOne!14867 (regOne!14866 (h!33894 l!9164))))) b!2442188))

(assert (= (and b!2441276 ((_ is Star!7177) (regOne!14867 (regOne!14866 (h!33894 l!9164))))) b!2442189))

(assert (= (and b!2441276 ((_ is Union!7177) (regOne!14867 (regOne!14866 (h!33894 l!9164))))) b!2442190))

(declare-fun b!2442194 () Bool)

(declare-fun e!1551560 () Bool)

(declare-fun tp!775124 () Bool)

(declare-fun tp!775123 () Bool)

(assert (=> b!2442194 (= e!1551560 (and tp!775124 tp!775123))))

(declare-fun b!2442191 () Bool)

(assert (=> b!2442191 (= e!1551560 tp_is_empty!11767)))

(declare-fun b!2442192 () Bool)

(declare-fun tp!775122 () Bool)

(declare-fun tp!775121 () Bool)

(assert (=> b!2442192 (= e!1551560 (and tp!775122 tp!775121))))

(declare-fun b!2442193 () Bool)

(declare-fun tp!775125 () Bool)

(assert (=> b!2442193 (= e!1551560 tp!775125)))

(assert (=> b!2441276 (= tp!775023 e!1551560)))

(assert (= (and b!2441276 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14866 (h!33894 l!9164))))) b!2442191))

(assert (= (and b!2441276 ((_ is Concat!11813) (regTwo!14867 (regOne!14866 (h!33894 l!9164))))) b!2442192))

(assert (= (and b!2441276 ((_ is Star!7177) (regTwo!14867 (regOne!14866 (h!33894 l!9164))))) b!2442193))

(assert (= (and b!2441276 ((_ is Union!7177) (regTwo!14867 (regOne!14866 (h!33894 l!9164))))) b!2442194))

(declare-fun b!2442198 () Bool)

(declare-fun e!1551561 () Bool)

(declare-fun tp!775129 () Bool)

(declare-fun tp!775128 () Bool)

(assert (=> b!2442198 (= e!1551561 (and tp!775129 tp!775128))))

(declare-fun b!2442195 () Bool)

(assert (=> b!2442195 (= e!1551561 tp_is_empty!11767)))

(declare-fun b!2442196 () Bool)

(declare-fun tp!775127 () Bool)

(declare-fun tp!775126 () Bool)

(assert (=> b!2442196 (= e!1551561 (and tp!775127 tp!775126))))

(declare-fun b!2442197 () Bool)

(declare-fun tp!775130 () Bool)

(assert (=> b!2442197 (= e!1551561 tp!775130)))

(assert (=> b!2441251 (= tp!774993 e!1551561)))

(assert (= (and b!2441251 ((_ is ElementMatch!7177) (regOne!14867 (reg!7506 (regOne!14867 r!13927))))) b!2442195))

(assert (= (and b!2441251 ((_ is Concat!11813) (regOne!14867 (reg!7506 (regOne!14867 r!13927))))) b!2442196))

(assert (= (and b!2441251 ((_ is Star!7177) (regOne!14867 (reg!7506 (regOne!14867 r!13927))))) b!2442197))

(assert (= (and b!2441251 ((_ is Union!7177) (regOne!14867 (reg!7506 (regOne!14867 r!13927))))) b!2442198))

(declare-fun b!2442202 () Bool)

(declare-fun e!1551562 () Bool)

(declare-fun tp!775134 () Bool)

(declare-fun tp!775133 () Bool)

(assert (=> b!2442202 (= e!1551562 (and tp!775134 tp!775133))))

(declare-fun b!2442199 () Bool)

(assert (=> b!2442199 (= e!1551562 tp_is_empty!11767)))

(declare-fun b!2442200 () Bool)

(declare-fun tp!775132 () Bool)

(declare-fun tp!775131 () Bool)

(assert (=> b!2442200 (= e!1551562 (and tp!775132 tp!775131))))

(declare-fun b!2442201 () Bool)

(declare-fun tp!775135 () Bool)

(assert (=> b!2442201 (= e!1551562 tp!775135)))

(assert (=> b!2441251 (= tp!774992 e!1551562)))

(assert (= (and b!2441251 ((_ is ElementMatch!7177) (regTwo!14867 (reg!7506 (regOne!14867 r!13927))))) b!2442199))

(assert (= (and b!2441251 ((_ is Concat!11813) (regTwo!14867 (reg!7506 (regOne!14867 r!13927))))) b!2442200))

(assert (= (and b!2441251 ((_ is Star!7177) (regTwo!14867 (reg!7506 (regOne!14867 r!13927))))) b!2442201))

(assert (= (and b!2441251 ((_ is Union!7177) (regTwo!14867 (reg!7506 (regOne!14867 r!13927))))) b!2442202))

(declare-fun b!2442206 () Bool)

(declare-fun e!1551563 () Bool)

(declare-fun tp!775139 () Bool)

(declare-fun tp!775138 () Bool)

(assert (=> b!2442206 (= e!1551563 (and tp!775139 tp!775138))))

(declare-fun b!2442203 () Bool)

(assert (=> b!2442203 (= e!1551563 tp_is_empty!11767)))

(declare-fun b!2442204 () Bool)

(declare-fun tp!775137 () Bool)

(declare-fun tp!775136 () Bool)

(assert (=> b!2442204 (= e!1551563 (and tp!775137 tp!775136))))

(declare-fun b!2442205 () Bool)

(declare-fun tp!775140 () Bool)

(assert (=> b!2442205 (= e!1551563 tp!775140)))

(assert (=> b!2441200 (= tp!774929 e!1551563)))

(assert (= (and b!2441200 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14867 (regOne!14866 r!13927))))) b!2442203))

(assert (= (and b!2441200 ((_ is Concat!11813) (regOne!14866 (regOne!14867 (regOne!14866 r!13927))))) b!2442204))

(assert (= (and b!2441200 ((_ is Star!7177) (regOne!14866 (regOne!14867 (regOne!14866 r!13927))))) b!2442205))

(assert (= (and b!2441200 ((_ is Union!7177) (regOne!14866 (regOne!14867 (regOne!14866 r!13927))))) b!2442206))

(declare-fun b!2442210 () Bool)

(declare-fun e!1551564 () Bool)

(declare-fun tp!775144 () Bool)

(declare-fun tp!775143 () Bool)

(assert (=> b!2442210 (= e!1551564 (and tp!775144 tp!775143))))

(declare-fun b!2442207 () Bool)

(assert (=> b!2442207 (= e!1551564 tp_is_empty!11767)))

(declare-fun b!2442208 () Bool)

(declare-fun tp!775142 () Bool)

(declare-fun tp!775141 () Bool)

(assert (=> b!2442208 (= e!1551564 (and tp!775142 tp!775141))))

(declare-fun b!2442209 () Bool)

(declare-fun tp!775145 () Bool)

(assert (=> b!2442209 (= e!1551564 tp!775145)))

(assert (=> b!2441200 (= tp!774928 e!1551564)))

(assert (= (and b!2441200 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14867 (regOne!14866 r!13927))))) b!2442207))

(assert (= (and b!2441200 ((_ is Concat!11813) (regTwo!14866 (regOne!14867 (regOne!14866 r!13927))))) b!2442208))

(assert (= (and b!2441200 ((_ is Star!7177) (regTwo!14866 (regOne!14867 (regOne!14866 r!13927))))) b!2442209))

(assert (= (and b!2441200 ((_ is Union!7177) (regTwo!14866 (regOne!14867 (regOne!14866 r!13927))))) b!2442210))

(declare-fun b!2442214 () Bool)

(declare-fun e!1551565 () Bool)

(declare-fun tp!775149 () Bool)

(declare-fun tp!775148 () Bool)

(assert (=> b!2442214 (= e!1551565 (and tp!775149 tp!775148))))

(declare-fun b!2442211 () Bool)

(assert (=> b!2442211 (= e!1551565 tp_is_empty!11767)))

(declare-fun b!2442212 () Bool)

(declare-fun tp!775147 () Bool)

(declare-fun tp!775146 () Bool)

(assert (=> b!2442212 (= e!1551565 (and tp!775147 tp!775146))))

(declare-fun b!2442213 () Bool)

(declare-fun tp!775150 () Bool)

(assert (=> b!2442213 (= e!1551565 tp!775150)))

(assert (=> b!2441209 (= tp!774942 e!1551565)))

(assert (= (and b!2441209 ((_ is ElementMatch!7177) (reg!7506 (h!33894 (t!208568 l!9164))))) b!2442211))

(assert (= (and b!2441209 ((_ is Concat!11813) (reg!7506 (h!33894 (t!208568 l!9164))))) b!2442212))

(assert (= (and b!2441209 ((_ is Star!7177) (reg!7506 (h!33894 (t!208568 l!9164))))) b!2442213))

(assert (= (and b!2441209 ((_ is Union!7177) (reg!7506 (h!33894 (t!208568 l!9164))))) b!2442214))

(declare-fun b!2442218 () Bool)

(declare-fun e!1551566 () Bool)

(declare-fun tp!775154 () Bool)

(declare-fun tp!775153 () Bool)

(assert (=> b!2442218 (= e!1551566 (and tp!775154 tp!775153))))

(declare-fun b!2442215 () Bool)

(assert (=> b!2442215 (= e!1551566 tp_is_empty!11767)))

(declare-fun b!2442216 () Bool)

(declare-fun tp!775152 () Bool)

(declare-fun tp!775151 () Bool)

(assert (=> b!2442216 (= e!1551566 (and tp!775152 tp!775151))))

(declare-fun b!2442217 () Bool)

(declare-fun tp!775155 () Bool)

(assert (=> b!2442217 (= e!1551566 tp!775155)))

(assert (=> b!2441242 (= tp!774984 e!1551566)))

(assert (= (and b!2441242 ((_ is ElementMatch!7177) (reg!7506 (regOne!14866 (reg!7506 r!13927))))) b!2442215))

(assert (= (and b!2441242 ((_ is Concat!11813) (reg!7506 (regOne!14866 (reg!7506 r!13927))))) b!2442216))

(assert (= (and b!2441242 ((_ is Star!7177) (reg!7506 (regOne!14866 (reg!7506 r!13927))))) b!2442217))

(assert (= (and b!2441242 ((_ is Union!7177) (reg!7506 (regOne!14866 (reg!7506 r!13927))))) b!2442218))

(declare-fun b!2442222 () Bool)

(declare-fun e!1551567 () Bool)

(declare-fun tp!775159 () Bool)

(declare-fun tp!775158 () Bool)

(assert (=> b!2442222 (= e!1551567 (and tp!775159 tp!775158))))

(declare-fun b!2442219 () Bool)

(assert (=> b!2442219 (= e!1551567 tp_is_empty!11767)))

(declare-fun b!2442220 () Bool)

(declare-fun tp!775157 () Bool)

(declare-fun tp!775156 () Bool)

(assert (=> b!2442220 (= e!1551567 (and tp!775157 tp!775156))))

(declare-fun b!2442221 () Bool)

(declare-fun tp!775160 () Bool)

(assert (=> b!2442221 (= e!1551567 tp!775160)))

(assert (=> b!2441233 (= tp!774971 e!1551567)))

(assert (= (and b!2441233 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14866 (regTwo!14866 r!13927))))) b!2442219))

(assert (= (and b!2441233 ((_ is Concat!11813) (regOne!14866 (regOne!14866 (regTwo!14866 r!13927))))) b!2442220))

(assert (= (and b!2441233 ((_ is Star!7177) (regOne!14866 (regOne!14866 (regTwo!14866 r!13927))))) b!2442221))

(assert (= (and b!2441233 ((_ is Union!7177) (regOne!14866 (regOne!14866 (regTwo!14866 r!13927))))) b!2442222))

(declare-fun b!2442226 () Bool)

(declare-fun e!1551568 () Bool)

(declare-fun tp!775164 () Bool)

(declare-fun tp!775163 () Bool)

(assert (=> b!2442226 (= e!1551568 (and tp!775164 tp!775163))))

(declare-fun b!2442223 () Bool)

(assert (=> b!2442223 (= e!1551568 tp_is_empty!11767)))

(declare-fun b!2442224 () Bool)

(declare-fun tp!775162 () Bool)

(declare-fun tp!775161 () Bool)

(assert (=> b!2442224 (= e!1551568 (and tp!775162 tp!775161))))

(declare-fun b!2442225 () Bool)

(declare-fun tp!775165 () Bool)

(assert (=> b!2442225 (= e!1551568 tp!775165)))

(assert (=> b!2441233 (= tp!774970 e!1551568)))

(assert (= (and b!2441233 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14866 (regTwo!14866 r!13927))))) b!2442223))

(assert (= (and b!2441233 ((_ is Concat!11813) (regTwo!14866 (regOne!14866 (regTwo!14866 r!13927))))) b!2442224))

(assert (= (and b!2441233 ((_ is Star!7177) (regTwo!14866 (regOne!14866 (regTwo!14866 r!13927))))) b!2442225))

(assert (= (and b!2441233 ((_ is Union!7177) (regTwo!14866 (regOne!14866 (regTwo!14866 r!13927))))) b!2442226))

(declare-fun b!2442230 () Bool)

(declare-fun e!1551569 () Bool)

(declare-fun tp!775169 () Bool)

(declare-fun tp!775168 () Bool)

(assert (=> b!2442230 (= e!1551569 (and tp!775169 tp!775168))))

(declare-fun b!2442227 () Bool)

(assert (=> b!2442227 (= e!1551569 tp_is_empty!11767)))

(declare-fun b!2442228 () Bool)

(declare-fun tp!775167 () Bool)

(declare-fun tp!775166 () Bool)

(assert (=> b!2442228 (= e!1551569 (and tp!775167 tp!775166))))

(declare-fun b!2442229 () Bool)

(declare-fun tp!775170 () Bool)

(assert (=> b!2442229 (= e!1551569 tp!775170)))

(assert (=> b!2441219 (= tp!774953 e!1551569)))

(assert (= (and b!2441219 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442227))

(assert (= (and b!2441219 ((_ is Concat!11813) (regOne!14867 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442228))

(assert (= (and b!2441219 ((_ is Star!7177) (regOne!14867 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442229))

(assert (= (and b!2441219 ((_ is Union!7177) (regOne!14867 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442230))

(declare-fun b!2442234 () Bool)

(declare-fun e!1551570 () Bool)

(declare-fun tp!775174 () Bool)

(declare-fun tp!775173 () Bool)

(assert (=> b!2442234 (= e!1551570 (and tp!775174 tp!775173))))

(declare-fun b!2442231 () Bool)

(assert (=> b!2442231 (= e!1551570 tp_is_empty!11767)))

(declare-fun b!2442232 () Bool)

(declare-fun tp!775172 () Bool)

(declare-fun tp!775171 () Bool)

(assert (=> b!2442232 (= e!1551570 (and tp!775172 tp!775171))))

(declare-fun b!2442233 () Bool)

(declare-fun tp!775175 () Bool)

(assert (=> b!2442233 (= e!1551570 tp!775175)))

(assert (=> b!2441219 (= tp!774952 e!1551570)))

(assert (= (and b!2441219 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442231))

(assert (= (and b!2441219 ((_ is Concat!11813) (regTwo!14867 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442232))

(assert (= (and b!2441219 ((_ is Star!7177) (regTwo!14867 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442233))

(assert (= (and b!2441219 ((_ is Union!7177) (regTwo!14867 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442234))

(declare-fun b!2442238 () Bool)

(declare-fun e!1551571 () Bool)

(declare-fun tp!775179 () Bool)

(declare-fun tp!775178 () Bool)

(assert (=> b!2442238 (= e!1551571 (and tp!775179 tp!775178))))

(declare-fun b!2442235 () Bool)

(assert (=> b!2442235 (= e!1551571 tp_is_empty!11767)))

(declare-fun b!2442236 () Bool)

(declare-fun tp!775177 () Bool)

(declare-fun tp!775176 () Bool)

(assert (=> b!2442236 (= e!1551571 (and tp!775177 tp!775176))))

(declare-fun b!2442237 () Bool)

(declare-fun tp!775180 () Bool)

(assert (=> b!2442237 (= e!1551571 tp!775180)))

(assert (=> b!2441168 (= tp!774889 e!1551571)))

(assert (= (and b!2441168 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14867 (regOne!14867 r!13927))))) b!2442235))

(assert (= (and b!2441168 ((_ is Concat!11813) (regOne!14866 (regOne!14867 (regOne!14867 r!13927))))) b!2442236))

(assert (= (and b!2441168 ((_ is Star!7177) (regOne!14866 (regOne!14867 (regOne!14867 r!13927))))) b!2442237))

(assert (= (and b!2441168 ((_ is Union!7177) (regOne!14866 (regOne!14867 (regOne!14867 r!13927))))) b!2442238))

(declare-fun b!2442242 () Bool)

(declare-fun e!1551572 () Bool)

(declare-fun tp!775184 () Bool)

(declare-fun tp!775183 () Bool)

(assert (=> b!2442242 (= e!1551572 (and tp!775184 tp!775183))))

(declare-fun b!2442239 () Bool)

(assert (=> b!2442239 (= e!1551572 tp_is_empty!11767)))

(declare-fun b!2442240 () Bool)

(declare-fun tp!775182 () Bool)

(declare-fun tp!775181 () Bool)

(assert (=> b!2442240 (= e!1551572 (and tp!775182 tp!775181))))

(declare-fun b!2442241 () Bool)

(declare-fun tp!775185 () Bool)

(assert (=> b!2442241 (= e!1551572 tp!775185)))

(assert (=> b!2441168 (= tp!774888 e!1551572)))

(assert (= (and b!2441168 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))))) b!2442239))

(assert (= (and b!2441168 ((_ is Concat!11813) (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))))) b!2442240))

(assert (= (and b!2441168 ((_ is Star!7177) (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))))) b!2442241))

(assert (= (and b!2441168 ((_ is Union!7177) (regTwo!14866 (regOne!14867 (regOne!14867 r!13927))))) b!2442242))

(declare-fun b!2442246 () Bool)

(declare-fun e!1551573 () Bool)

(declare-fun tp!775189 () Bool)

(declare-fun tp!775188 () Bool)

(assert (=> b!2442246 (= e!1551573 (and tp!775189 tp!775188))))

(declare-fun b!2442243 () Bool)

(assert (=> b!2442243 (= e!1551573 tp_is_empty!11767)))

(declare-fun b!2442244 () Bool)

(declare-fun tp!775187 () Bool)

(declare-fun tp!775186 () Bool)

(assert (=> b!2442244 (= e!1551573 (and tp!775187 tp!775186))))

(declare-fun b!2442245 () Bool)

(declare-fun tp!775190 () Bool)

(assert (=> b!2442245 (= e!1551573 tp!775190)))

(assert (=> b!2441278 (= tp!775027 e!1551573)))

(assert (= (and b!2441278 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14866 (h!33894 l!9164))))) b!2442243))

(assert (= (and b!2441278 ((_ is Concat!11813) (regOne!14866 (regTwo!14866 (h!33894 l!9164))))) b!2442244))

(assert (= (and b!2441278 ((_ is Star!7177) (regOne!14866 (regTwo!14866 (h!33894 l!9164))))) b!2442245))

(assert (= (and b!2441278 ((_ is Union!7177) (regOne!14866 (regTwo!14866 (h!33894 l!9164))))) b!2442246))

(declare-fun b!2442250 () Bool)

(declare-fun e!1551574 () Bool)

(declare-fun tp!775194 () Bool)

(declare-fun tp!775193 () Bool)

(assert (=> b!2442250 (= e!1551574 (and tp!775194 tp!775193))))

(declare-fun b!2442247 () Bool)

(assert (=> b!2442247 (= e!1551574 tp_is_empty!11767)))

(declare-fun b!2442248 () Bool)

(declare-fun tp!775192 () Bool)

(declare-fun tp!775191 () Bool)

(assert (=> b!2442248 (= e!1551574 (and tp!775192 tp!775191))))

(declare-fun b!2442249 () Bool)

(declare-fun tp!775195 () Bool)

(assert (=> b!2442249 (= e!1551574 tp!775195)))

(assert (=> b!2441278 (= tp!775026 e!1551574)))

(assert (= (and b!2441278 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14866 (h!33894 l!9164))))) b!2442247))

(assert (= (and b!2441278 ((_ is Concat!11813) (regTwo!14866 (regTwo!14866 (h!33894 l!9164))))) b!2442248))

(assert (= (and b!2441278 ((_ is Star!7177) (regTwo!14866 (regTwo!14866 (h!33894 l!9164))))) b!2442249))

(assert (= (and b!2441278 ((_ is Union!7177) (regTwo!14866 (regTwo!14866 (h!33894 l!9164))))) b!2442250))

(declare-fun b!2442254 () Bool)

(declare-fun e!1551575 () Bool)

(declare-fun tp!775199 () Bool)

(declare-fun tp!775198 () Bool)

(assert (=> b!2442254 (= e!1551575 (and tp!775199 tp!775198))))

(declare-fun b!2442251 () Bool)

(assert (=> b!2442251 (= e!1551575 tp_is_empty!11767)))

(declare-fun b!2442252 () Bool)

(declare-fun tp!775197 () Bool)

(declare-fun tp!775196 () Bool)

(assert (=> b!2442252 (= e!1551575 (and tp!775197 tp!775196))))

(declare-fun b!2442253 () Bool)

(declare-fun tp!775200 () Bool)

(assert (=> b!2442253 (= e!1551575 tp!775200)))

(assert (=> b!2441177 (= tp!774902 e!1551575)))

(assert (= (and b!2441177 ((_ is ElementMatch!7177) (reg!7506 (reg!7506 (regTwo!14866 r!13927))))) b!2442251))

(assert (= (and b!2441177 ((_ is Concat!11813) (reg!7506 (reg!7506 (regTwo!14866 r!13927))))) b!2442252))

(assert (= (and b!2441177 ((_ is Star!7177) (reg!7506 (reg!7506 (regTwo!14866 r!13927))))) b!2442253))

(assert (= (and b!2441177 ((_ is Union!7177) (reg!7506 (reg!7506 (regTwo!14866 r!13927))))) b!2442254))

(declare-fun b!2442258 () Bool)

(declare-fun e!1551576 () Bool)

(declare-fun tp!775204 () Bool)

(declare-fun tp!775203 () Bool)

(assert (=> b!2442258 (= e!1551576 (and tp!775204 tp!775203))))

(declare-fun b!2442255 () Bool)

(assert (=> b!2442255 (= e!1551576 tp_is_empty!11767)))

(declare-fun b!2442256 () Bool)

(declare-fun tp!775202 () Bool)

(declare-fun tp!775201 () Bool)

(assert (=> b!2442256 (= e!1551576 (and tp!775202 tp!775201))))

(declare-fun b!2442257 () Bool)

(declare-fun tp!775205 () Bool)

(assert (=> b!2442257 (= e!1551576 tp!775205)))

(assert (=> b!2441271 (= tp!775018 e!1551576)))

(assert (= (and b!2441271 ((_ is ElementMatch!7177) (regOne!14867 (reg!7506 (reg!7506 r!13927))))) b!2442255))

(assert (= (and b!2441271 ((_ is Concat!11813) (regOne!14867 (reg!7506 (reg!7506 r!13927))))) b!2442256))

(assert (= (and b!2441271 ((_ is Star!7177) (regOne!14867 (reg!7506 (reg!7506 r!13927))))) b!2442257))

(assert (= (and b!2441271 ((_ is Union!7177) (regOne!14867 (reg!7506 (reg!7506 r!13927))))) b!2442258))

(declare-fun b!2442262 () Bool)

(declare-fun e!1551577 () Bool)

(declare-fun tp!775209 () Bool)

(declare-fun tp!775208 () Bool)

(assert (=> b!2442262 (= e!1551577 (and tp!775209 tp!775208))))

(declare-fun b!2442259 () Bool)

(assert (=> b!2442259 (= e!1551577 tp_is_empty!11767)))

(declare-fun b!2442260 () Bool)

(declare-fun tp!775207 () Bool)

(declare-fun tp!775206 () Bool)

(assert (=> b!2442260 (= e!1551577 (and tp!775207 tp!775206))))

(declare-fun b!2442261 () Bool)

(declare-fun tp!775210 () Bool)

(assert (=> b!2442261 (= e!1551577 tp!775210)))

(assert (=> b!2441271 (= tp!775017 e!1551577)))

(assert (= (and b!2441271 ((_ is ElementMatch!7177) (regTwo!14867 (reg!7506 (reg!7506 r!13927))))) b!2442259))

(assert (= (and b!2441271 ((_ is Concat!11813) (regTwo!14867 (reg!7506 (reg!7506 r!13927))))) b!2442260))

(assert (= (and b!2441271 ((_ is Star!7177) (regTwo!14867 (reg!7506 (reg!7506 r!13927))))) b!2442261))

(assert (= (and b!2441271 ((_ is Union!7177) (regTwo!14867 (reg!7506 (reg!7506 r!13927))))) b!2442262))

(declare-fun b!2442266 () Bool)

(declare-fun e!1551578 () Bool)

(declare-fun tp!775214 () Bool)

(declare-fun tp!775213 () Bool)

(assert (=> b!2442266 (= e!1551578 (and tp!775214 tp!775213))))

(declare-fun b!2442263 () Bool)

(assert (=> b!2442263 (= e!1551578 tp_is_empty!11767)))

(declare-fun b!2442264 () Bool)

(declare-fun tp!775212 () Bool)

(declare-fun tp!775211 () Bool)

(assert (=> b!2442264 (= e!1551578 (and tp!775212 tp!775211))))

(declare-fun b!2442265 () Bool)

(declare-fun tp!775215 () Bool)

(assert (=> b!2442265 (= e!1551578 tp!775215)))

(assert (=> b!2441262 (= tp!775009 e!1551578)))

(assert (= (and b!2441262 ((_ is ElementMatch!7177) (reg!7506 (regOne!14867 (regTwo!14867 r!13927))))) b!2442263))

(assert (= (and b!2441262 ((_ is Concat!11813) (reg!7506 (regOne!14867 (regTwo!14867 r!13927))))) b!2442264))

(assert (= (and b!2441262 ((_ is Star!7177) (reg!7506 (regOne!14867 (regTwo!14867 r!13927))))) b!2442265))

(assert (= (and b!2441262 ((_ is Union!7177) (reg!7506 (regOne!14867 (regTwo!14867 r!13927))))) b!2442266))

(declare-fun b!2442270 () Bool)

(declare-fun e!1551579 () Bool)

(declare-fun tp!775219 () Bool)

(declare-fun tp!775218 () Bool)

(assert (=> b!2442270 (= e!1551579 (and tp!775219 tp!775218))))

(declare-fun b!2442267 () Bool)

(assert (=> b!2442267 (= e!1551579 tp_is_empty!11767)))

(declare-fun b!2442268 () Bool)

(declare-fun tp!775217 () Bool)

(declare-fun tp!775216 () Bool)

(assert (=> b!2442268 (= e!1551579 (and tp!775217 tp!775216))))

(declare-fun b!2442269 () Bool)

(declare-fun tp!775220 () Bool)

(assert (=> b!2442269 (= e!1551579 tp!775220)))

(assert (=> b!2441253 (= tp!774996 e!1551579)))

(assert (= (and b!2441253 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14866 (regOne!14866 r!13927))))) b!2442267))

(assert (= (and b!2441253 ((_ is Concat!11813) (regOne!14866 (regOne!14866 (regOne!14866 r!13927))))) b!2442268))

(assert (= (and b!2441253 ((_ is Star!7177) (regOne!14866 (regOne!14866 (regOne!14866 r!13927))))) b!2442269))

(assert (= (and b!2441253 ((_ is Union!7177) (regOne!14866 (regOne!14866 (regOne!14866 r!13927))))) b!2442270))

(declare-fun b!2442274 () Bool)

(declare-fun e!1551580 () Bool)

(declare-fun tp!775224 () Bool)

(declare-fun tp!775223 () Bool)

(assert (=> b!2442274 (= e!1551580 (and tp!775224 tp!775223))))

(declare-fun b!2442271 () Bool)

(assert (=> b!2442271 (= e!1551580 tp_is_empty!11767)))

(declare-fun b!2442272 () Bool)

(declare-fun tp!775222 () Bool)

(declare-fun tp!775221 () Bool)

(assert (=> b!2442272 (= e!1551580 (and tp!775222 tp!775221))))

(declare-fun b!2442273 () Bool)

(declare-fun tp!775225 () Bool)

(assert (=> b!2442273 (= e!1551580 tp!775225)))

(assert (=> b!2441253 (= tp!774995 e!1551580)))

(assert (= (and b!2441253 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14866 (regOne!14866 r!13927))))) b!2442271))

(assert (= (and b!2441253 ((_ is Concat!11813) (regTwo!14866 (regOne!14866 (regOne!14866 r!13927))))) b!2442272))

(assert (= (and b!2441253 ((_ is Star!7177) (regTwo!14866 (regOne!14866 (regOne!14866 r!13927))))) b!2442273))

(assert (= (and b!2441253 ((_ is Union!7177) (regTwo!14866 (regOne!14866 (regOne!14866 r!13927))))) b!2442274))

(declare-fun b!2442278 () Bool)

(declare-fun e!1551581 () Bool)

(declare-fun tp!775229 () Bool)

(declare-fun tp!775228 () Bool)

(assert (=> b!2442278 (= e!1551581 (and tp!775229 tp!775228))))

(declare-fun b!2442275 () Bool)

(assert (=> b!2442275 (= e!1551581 tp_is_empty!11767)))

(declare-fun b!2442276 () Bool)

(declare-fun tp!775227 () Bool)

(declare-fun tp!775226 () Bool)

(assert (=> b!2442276 (= e!1551581 (and tp!775227 tp!775226))))

(declare-fun b!2442277 () Bool)

(declare-fun tp!775230 () Bool)

(assert (=> b!2442277 (= e!1551581 tp!775230)))

(assert (=> b!2441186 (= tp!774911 e!1551581)))

(assert (= (and b!2441186 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442275))

(assert (= (and b!2441186 ((_ is Concat!11813) (regOne!14867 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442276))

(assert (= (and b!2441186 ((_ is Star!7177) (regOne!14867 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442277))

(assert (= (and b!2441186 ((_ is Union!7177) (regOne!14867 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442278))

(declare-fun b!2442282 () Bool)

(declare-fun e!1551582 () Bool)

(declare-fun tp!775234 () Bool)

(declare-fun tp!775233 () Bool)

(assert (=> b!2442282 (= e!1551582 (and tp!775234 tp!775233))))

(declare-fun b!2442279 () Bool)

(assert (=> b!2442279 (= e!1551582 tp_is_empty!11767)))

(declare-fun b!2442280 () Bool)

(declare-fun tp!775232 () Bool)

(declare-fun tp!775231 () Bool)

(assert (=> b!2442280 (= e!1551582 (and tp!775232 tp!775231))))

(declare-fun b!2442281 () Bool)

(declare-fun tp!775235 () Bool)

(assert (=> b!2442281 (= e!1551582 tp!775235)))

(assert (=> b!2441186 (= tp!774910 e!1551582)))

(assert (= (and b!2441186 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442279))

(assert (= (and b!2441186 ((_ is Concat!11813) (regTwo!14867 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442280))

(assert (= (and b!2441186 ((_ is Star!7177) (regTwo!14867 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442281))

(assert (= (and b!2441186 ((_ is Union!7177) (regTwo!14867 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442282))

(declare-fun b!2442286 () Bool)

(declare-fun e!1551583 () Bool)

(declare-fun tp!775239 () Bool)

(declare-fun tp!775238 () Bool)

(assert (=> b!2442286 (= e!1551583 (and tp!775239 tp!775238))))

(declare-fun b!2442283 () Bool)

(assert (=> b!2442283 (= e!1551583 tp_is_empty!11767)))

(declare-fun b!2442284 () Bool)

(declare-fun tp!775237 () Bool)

(declare-fun tp!775236 () Bool)

(assert (=> b!2442284 (= e!1551583 (and tp!775237 tp!775236))))

(declare-fun b!2442285 () Bool)

(declare-fun tp!775240 () Bool)

(assert (=> b!2442285 (= e!1551583 tp!775240)))

(assert (=> b!2441287 (= tp!775040 e!1551583)))

(assert (= (and b!2441287 ((_ is ElementMatch!7177) (reg!7506 (regOne!14867 (h!33894 l!9164))))) b!2442283))

(assert (= (and b!2441287 ((_ is Concat!11813) (reg!7506 (regOne!14867 (h!33894 l!9164))))) b!2442284))

(assert (= (and b!2441287 ((_ is Star!7177) (reg!7506 (regOne!14867 (h!33894 l!9164))))) b!2442285))

(assert (= (and b!2441287 ((_ is Union!7177) (reg!7506 (regOne!14867 (h!33894 l!9164))))) b!2442286))

(declare-fun b!2442290 () Bool)

(declare-fun e!1551584 () Bool)

(declare-fun tp!775244 () Bool)

(declare-fun tp!775243 () Bool)

(assert (=> b!2442290 (= e!1551584 (and tp!775244 tp!775243))))

(declare-fun b!2442287 () Bool)

(assert (=> b!2442287 (= e!1551584 tp_is_empty!11767)))

(declare-fun b!2442288 () Bool)

(declare-fun tp!775242 () Bool)

(declare-fun tp!775241 () Bool)

(assert (=> b!2442288 (= e!1551584 (and tp!775242 tp!775241))))

(declare-fun b!2442289 () Bool)

(declare-fun tp!775245 () Bool)

(assert (=> b!2442289 (= e!1551584 tp!775245)))

(assert (=> b!2441239 (= tp!774978 e!1551584)))

(assert (= (and b!2441239 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442287))

(assert (= (and b!2441239 ((_ is Concat!11813) (regOne!14867 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442288))

(assert (= (and b!2441239 ((_ is Star!7177) (regOne!14867 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442289))

(assert (= (and b!2441239 ((_ is Union!7177) (regOne!14867 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442290))

(declare-fun b!2442294 () Bool)

(declare-fun e!1551585 () Bool)

(declare-fun tp!775249 () Bool)

(declare-fun tp!775248 () Bool)

(assert (=> b!2442294 (= e!1551585 (and tp!775249 tp!775248))))

(declare-fun b!2442291 () Bool)

(assert (=> b!2442291 (= e!1551585 tp_is_empty!11767)))

(declare-fun b!2442292 () Bool)

(declare-fun tp!775247 () Bool)

(declare-fun tp!775246 () Bool)

(assert (=> b!2442292 (= e!1551585 (and tp!775247 tp!775246))))

(declare-fun b!2442293 () Bool)

(declare-fun tp!775250 () Bool)

(assert (=> b!2442293 (= e!1551585 tp!775250)))

(assert (=> b!2441239 (= tp!774977 e!1551585)))

(assert (= (and b!2441239 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442291))

(assert (= (and b!2441239 ((_ is Concat!11813) (regTwo!14867 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442292))

(assert (= (and b!2441239 ((_ is Star!7177) (regTwo!14867 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442293))

(assert (= (and b!2441239 ((_ is Union!7177) (regTwo!14867 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442294))

(declare-fun b!2442298 () Bool)

(declare-fun e!1551586 () Bool)

(declare-fun tp!775254 () Bool)

(declare-fun tp!775253 () Bool)

(assert (=> b!2442298 (= e!1551586 (and tp!775254 tp!775253))))

(declare-fun b!2442295 () Bool)

(assert (=> b!2442295 (= e!1551586 tp_is_empty!11767)))

(declare-fun b!2442296 () Bool)

(declare-fun tp!775252 () Bool)

(declare-fun tp!775251 () Bool)

(assert (=> b!2442296 (= e!1551586 (and tp!775252 tp!775251))))

(declare-fun b!2442297 () Bool)

(declare-fun tp!775255 () Bool)

(assert (=> b!2442297 (= e!1551586 tp!775255)))

(assert (=> b!2441221 (= tp!774956 e!1551586)))

(assert (= (and b!2441221 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14866 (regOne!14867 r!13927))))) b!2442295))

(assert (= (and b!2441221 ((_ is Concat!11813) (regOne!14866 (regOne!14866 (regOne!14867 r!13927))))) b!2442296))

(assert (= (and b!2441221 ((_ is Star!7177) (regOne!14866 (regOne!14866 (regOne!14867 r!13927))))) b!2442297))

(assert (= (and b!2441221 ((_ is Union!7177) (regOne!14866 (regOne!14866 (regOne!14867 r!13927))))) b!2442298))

(declare-fun b!2442302 () Bool)

(declare-fun e!1551587 () Bool)

(declare-fun tp!775259 () Bool)

(declare-fun tp!775258 () Bool)

(assert (=> b!2442302 (= e!1551587 (and tp!775259 tp!775258))))

(declare-fun b!2442299 () Bool)

(assert (=> b!2442299 (= e!1551587 tp_is_empty!11767)))

(declare-fun b!2442300 () Bool)

(declare-fun tp!775257 () Bool)

(declare-fun tp!775256 () Bool)

(assert (=> b!2442300 (= e!1551587 (and tp!775257 tp!775256))))

(declare-fun b!2442301 () Bool)

(declare-fun tp!775260 () Bool)

(assert (=> b!2442301 (= e!1551587 tp!775260)))

(assert (=> b!2441221 (= tp!774955 e!1551587)))

(assert (= (and b!2441221 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14866 (regOne!14867 r!13927))))) b!2442299))

(assert (= (and b!2441221 ((_ is Concat!11813) (regTwo!14866 (regOne!14866 (regOne!14867 r!13927))))) b!2442300))

(assert (= (and b!2441221 ((_ is Star!7177) (regTwo!14866 (regOne!14866 (regOne!14867 r!13927))))) b!2442301))

(assert (= (and b!2441221 ((_ is Union!7177) (regTwo!14866 (regOne!14866 (regOne!14867 r!13927))))) b!2442302))

(declare-fun b!2442306 () Bool)

(declare-fun e!1551588 () Bool)

(declare-fun tp!775264 () Bool)

(declare-fun tp!775263 () Bool)

(assert (=> b!2442306 (= e!1551588 (and tp!775264 tp!775263))))

(declare-fun b!2442303 () Bool)

(assert (=> b!2442303 (= e!1551588 tp_is_empty!11767)))

(declare-fun b!2442304 () Bool)

(declare-fun tp!775262 () Bool)

(declare-fun tp!775261 () Bool)

(assert (=> b!2442304 (= e!1551588 (and tp!775262 tp!775261))))

(declare-fun b!2442305 () Bool)

(declare-fun tp!775265 () Bool)

(assert (=> b!2442305 (= e!1551588 tp!775265)))

(assert (=> b!2441230 (= tp!774969 e!1551588)))

(assert (= (and b!2441230 ((_ is ElementMatch!7177) (reg!7506 (reg!7506 (regTwo!14867 r!13927))))) b!2442303))

(assert (= (and b!2441230 ((_ is Concat!11813) (reg!7506 (reg!7506 (regTwo!14867 r!13927))))) b!2442304))

(assert (= (and b!2441230 ((_ is Star!7177) (reg!7506 (reg!7506 (regTwo!14867 r!13927))))) b!2442305))

(assert (= (and b!2441230 ((_ is Union!7177) (reg!7506 (reg!7506 (regTwo!14867 r!13927))))) b!2442306))

(declare-fun b!2442310 () Bool)

(declare-fun e!1551589 () Bool)

(declare-fun tp!775269 () Bool)

(declare-fun tp!775268 () Bool)

(assert (=> b!2442310 (= e!1551589 (and tp!775269 tp!775268))))

(declare-fun b!2442307 () Bool)

(assert (=> b!2442307 (= e!1551589 tp_is_empty!11767)))

(declare-fun b!2442308 () Bool)

(declare-fun tp!775267 () Bool)

(declare-fun tp!775266 () Bool)

(assert (=> b!2442308 (= e!1551589 (and tp!775267 tp!775266))))

(declare-fun b!2442309 () Bool)

(declare-fun tp!775270 () Bool)

(assert (=> b!2442309 (= e!1551589 tp!775270)))

(assert (=> b!2441206 (= tp!774936 e!1551589)))

(assert (= (and b!2441206 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14867 (regOne!14866 r!13927))))) b!2442307))

(assert (= (and b!2441206 ((_ is Concat!11813) (regOne!14867 (regTwo!14867 (regOne!14866 r!13927))))) b!2442308))

(assert (= (and b!2441206 ((_ is Star!7177) (regOne!14867 (regTwo!14867 (regOne!14866 r!13927))))) b!2442309))

(assert (= (and b!2441206 ((_ is Union!7177) (regOne!14867 (regTwo!14867 (regOne!14866 r!13927))))) b!2442310))

(declare-fun b!2442314 () Bool)

(declare-fun e!1551590 () Bool)

(declare-fun tp!775274 () Bool)

(declare-fun tp!775273 () Bool)

(assert (=> b!2442314 (= e!1551590 (and tp!775274 tp!775273))))

(declare-fun b!2442311 () Bool)

(assert (=> b!2442311 (= e!1551590 tp_is_empty!11767)))

(declare-fun b!2442312 () Bool)

(declare-fun tp!775272 () Bool)

(declare-fun tp!775271 () Bool)

(assert (=> b!2442312 (= e!1551590 (and tp!775272 tp!775271))))

(declare-fun b!2442313 () Bool)

(declare-fun tp!775275 () Bool)

(assert (=> b!2442313 (= e!1551590 tp!775275)))

(assert (=> b!2441206 (= tp!774935 e!1551590)))

(assert (= (and b!2441206 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14867 (regOne!14866 r!13927))))) b!2442311))

(assert (= (and b!2441206 ((_ is Concat!11813) (regTwo!14867 (regTwo!14867 (regOne!14866 r!13927))))) b!2442312))

(assert (= (and b!2441206 ((_ is Star!7177) (regTwo!14867 (regTwo!14867 (regOne!14866 r!13927))))) b!2442313))

(assert (= (and b!2441206 ((_ is Union!7177) (regTwo!14867 (regTwo!14867 (regOne!14866 r!13927))))) b!2442314))

(declare-fun b!2442318 () Bool)

(declare-fun e!1551591 () Bool)

(declare-fun tp!775279 () Bool)

(declare-fun tp!775278 () Bool)

(assert (=> b!2442318 (= e!1551591 (and tp!775279 tp!775278))))

(declare-fun b!2442315 () Bool)

(assert (=> b!2442315 (= e!1551591 tp_is_empty!11767)))

(declare-fun b!2442316 () Bool)

(declare-fun tp!775277 () Bool)

(declare-fun tp!775276 () Bool)

(assert (=> b!2442316 (= e!1551591 (and tp!775277 tp!775276))))

(declare-fun b!2442317 () Bool)

(declare-fun tp!775280 () Bool)

(assert (=> b!2442317 (= e!1551591 tp!775280)))

(assert (=> b!2441188 (= tp!774914 e!1551591)))

(assert (= (and b!2441188 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14867 (reg!7506 r!13927))))) b!2442315))

(assert (= (and b!2441188 ((_ is Concat!11813) (regOne!14866 (regOne!14867 (reg!7506 r!13927))))) b!2442316))

(assert (= (and b!2441188 ((_ is Star!7177) (regOne!14866 (regOne!14867 (reg!7506 r!13927))))) b!2442317))

(assert (= (and b!2441188 ((_ is Union!7177) (regOne!14866 (regOne!14867 (reg!7506 r!13927))))) b!2442318))

(declare-fun b!2442322 () Bool)

(declare-fun e!1551592 () Bool)

(declare-fun tp!775284 () Bool)

(declare-fun tp!775283 () Bool)

(assert (=> b!2442322 (= e!1551592 (and tp!775284 tp!775283))))

(declare-fun b!2442319 () Bool)

(assert (=> b!2442319 (= e!1551592 tp_is_empty!11767)))

(declare-fun b!2442320 () Bool)

(declare-fun tp!775282 () Bool)

(declare-fun tp!775281 () Bool)

(assert (=> b!2442320 (= e!1551592 (and tp!775282 tp!775281))))

(declare-fun b!2442321 () Bool)

(declare-fun tp!775285 () Bool)

(assert (=> b!2442321 (= e!1551592 tp!775285)))

(assert (=> b!2441188 (= tp!774913 e!1551592)))

(assert (= (and b!2441188 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14867 (reg!7506 r!13927))))) b!2442319))

(assert (= (and b!2441188 ((_ is Concat!11813) (regTwo!14866 (regOne!14867 (reg!7506 r!13927))))) b!2442320))

(assert (= (and b!2441188 ((_ is Star!7177) (regTwo!14866 (regOne!14867 (reg!7506 r!13927))))) b!2442321))

(assert (= (and b!2441188 ((_ is Union!7177) (regTwo!14866 (regOne!14867 (reg!7506 r!13927))))) b!2442322))

(declare-fun b!2442326 () Bool)

(declare-fun e!1551593 () Bool)

(declare-fun tp!775289 () Bool)

(declare-fun tp!775288 () Bool)

(assert (=> b!2442326 (= e!1551593 (and tp!775289 tp!775288))))

(declare-fun b!2442323 () Bool)

(assert (=> b!2442323 (= e!1551593 tp_is_empty!11767)))

(declare-fun b!2442324 () Bool)

(declare-fun tp!775287 () Bool)

(declare-fun tp!775286 () Bool)

(assert (=> b!2442324 (= e!1551593 (and tp!775287 tp!775286))))

(declare-fun b!2442325 () Bool)

(declare-fun tp!775290 () Bool)

(assert (=> b!2442325 (= e!1551593 tp!775290)))

(assert (=> b!2441197 (= tp!774927 e!1551593)))

(assert (= (and b!2441197 ((_ is ElementMatch!7177) (reg!7506 (reg!7506 (regOne!14866 r!13927))))) b!2442323))

(assert (= (and b!2441197 ((_ is Concat!11813) (reg!7506 (reg!7506 (regOne!14866 r!13927))))) b!2442324))

(assert (= (and b!2441197 ((_ is Star!7177) (reg!7506 (reg!7506 (regOne!14866 r!13927))))) b!2442325))

(assert (= (and b!2441197 ((_ is Union!7177) (reg!7506 (reg!7506 (regOne!14866 r!13927))))) b!2442326))

(declare-fun b!2442330 () Bool)

(declare-fun e!1551594 () Bool)

(declare-fun tp!775294 () Bool)

(declare-fun tp!775293 () Bool)

(assert (=> b!2442330 (= e!1551594 (and tp!775294 tp!775293))))

(declare-fun b!2442327 () Bool)

(assert (=> b!2442327 (= e!1551594 tp_is_empty!11767)))

(declare-fun b!2442328 () Bool)

(declare-fun tp!775292 () Bool)

(declare-fun tp!775291 () Bool)

(assert (=> b!2442328 (= e!1551594 (and tp!775292 tp!775291))))

(declare-fun b!2442329 () Bool)

(declare-fun tp!775295 () Bool)

(assert (=> b!2442329 (= e!1551594 tp!775295)))

(assert (=> b!2441250 (= tp!774994 e!1551594)))

(assert (= (and b!2441250 ((_ is ElementMatch!7177) (reg!7506 (reg!7506 (regOne!14867 r!13927))))) b!2442327))

(assert (= (and b!2441250 ((_ is Concat!11813) (reg!7506 (reg!7506 (regOne!14867 r!13927))))) b!2442328))

(assert (= (and b!2441250 ((_ is Star!7177) (reg!7506 (reg!7506 (regOne!14867 r!13927))))) b!2442329))

(assert (= (and b!2441250 ((_ is Union!7177) (reg!7506 (reg!7506 (regOne!14867 r!13927))))) b!2442330))

(declare-fun b!2442334 () Bool)

(declare-fun e!1551595 () Bool)

(declare-fun tp!775299 () Bool)

(declare-fun tp!775298 () Bool)

(assert (=> b!2442334 (= e!1551595 (and tp!775299 tp!775298))))

(declare-fun b!2442331 () Bool)

(assert (=> b!2442331 (= e!1551595 tp_is_empty!11767)))

(declare-fun b!2442332 () Bool)

(declare-fun tp!775297 () Bool)

(declare-fun tp!775296 () Bool)

(assert (=> b!2442332 (= e!1551595 (and tp!775297 tp!775296))))

(declare-fun b!2442333 () Bool)

(declare-fun tp!775300 () Bool)

(assert (=> b!2442333 (= e!1551595 tp!775300)))

(assert (=> b!2441241 (= tp!774981 e!1551595)))

(assert (= (and b!2441241 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14866 (reg!7506 r!13927))))) b!2442331))

(assert (= (and b!2441241 ((_ is Concat!11813) (regOne!14866 (regOne!14866 (reg!7506 r!13927))))) b!2442332))

(assert (= (and b!2441241 ((_ is Star!7177) (regOne!14866 (regOne!14866 (reg!7506 r!13927))))) b!2442333))

(assert (= (and b!2441241 ((_ is Union!7177) (regOne!14866 (regOne!14866 (reg!7506 r!13927))))) b!2442334))

(declare-fun b!2442338 () Bool)

(declare-fun e!1551596 () Bool)

(declare-fun tp!775304 () Bool)

(declare-fun tp!775303 () Bool)

(assert (=> b!2442338 (= e!1551596 (and tp!775304 tp!775303))))

(declare-fun b!2442335 () Bool)

(assert (=> b!2442335 (= e!1551596 tp_is_empty!11767)))

(declare-fun b!2442336 () Bool)

(declare-fun tp!775302 () Bool)

(declare-fun tp!775301 () Bool)

(assert (=> b!2442336 (= e!1551596 (and tp!775302 tp!775301))))

(declare-fun b!2442337 () Bool)

(declare-fun tp!775305 () Bool)

(assert (=> b!2442337 (= e!1551596 tp!775305)))

(assert (=> b!2441241 (= tp!774980 e!1551596)))

(assert (= (and b!2441241 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14866 (reg!7506 r!13927))))) b!2442335))

(assert (= (and b!2441241 ((_ is Concat!11813) (regTwo!14866 (regOne!14866 (reg!7506 r!13927))))) b!2442336))

(assert (= (and b!2441241 ((_ is Star!7177) (regTwo!14866 (regOne!14866 (reg!7506 r!13927))))) b!2442337))

(assert (= (and b!2441241 ((_ is Union!7177) (regTwo!14866 (regOne!14866 (reg!7506 r!13927))))) b!2442338))

(declare-fun b!2442342 () Bool)

(declare-fun e!1551597 () Bool)

(declare-fun tp!775309 () Bool)

(declare-fun tp!775308 () Bool)

(assert (=> b!2442342 (= e!1551597 (and tp!775309 tp!775308))))

(declare-fun b!2442339 () Bool)

(assert (=> b!2442339 (= e!1551597 tp_is_empty!11767)))

(declare-fun b!2442340 () Bool)

(declare-fun tp!775307 () Bool)

(declare-fun tp!775306 () Bool)

(assert (=> b!2442340 (= e!1551597 (and tp!775307 tp!775306))))

(declare-fun b!2442341 () Bool)

(declare-fun tp!775310 () Bool)

(assert (=> b!2442341 (= e!1551597 tp!775310)))

(assert (=> b!2441174 (= tp!774896 e!1551597)))

(assert (= (and b!2441174 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14867 (regOne!14867 r!13927))))) b!2442339))

(assert (= (and b!2441174 ((_ is Concat!11813) (regOne!14867 (regTwo!14867 (regOne!14867 r!13927))))) b!2442340))

(assert (= (and b!2441174 ((_ is Star!7177) (regOne!14867 (regTwo!14867 (regOne!14867 r!13927))))) b!2442341))

(assert (= (and b!2441174 ((_ is Union!7177) (regOne!14867 (regTwo!14867 (regOne!14867 r!13927))))) b!2442342))

(declare-fun b!2442346 () Bool)

(declare-fun e!1551598 () Bool)

(declare-fun tp!775314 () Bool)

(declare-fun tp!775313 () Bool)

(assert (=> b!2442346 (= e!1551598 (and tp!775314 tp!775313))))

(declare-fun b!2442343 () Bool)

(assert (=> b!2442343 (= e!1551598 tp_is_empty!11767)))

(declare-fun b!2442344 () Bool)

(declare-fun tp!775312 () Bool)

(declare-fun tp!775311 () Bool)

(assert (=> b!2442344 (= e!1551598 (and tp!775312 tp!775311))))

(declare-fun b!2442345 () Bool)

(declare-fun tp!775315 () Bool)

(assert (=> b!2442345 (= e!1551598 tp!775315)))

(assert (=> b!2441174 (= tp!774895 e!1551598)))

(assert (= (and b!2441174 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14867 (regOne!14867 r!13927))))) b!2442343))

(assert (= (and b!2441174 ((_ is Concat!11813) (regTwo!14867 (regTwo!14867 (regOne!14867 r!13927))))) b!2442344))

(assert (= (and b!2441174 ((_ is Star!7177) (regTwo!14867 (regTwo!14867 (regOne!14867 r!13927))))) b!2442345))

(assert (= (and b!2441174 ((_ is Union!7177) (regTwo!14867 (regTwo!14867 (regOne!14867 r!13927))))) b!2442346))

(declare-fun b!2442350 () Bool)

(declare-fun e!1551599 () Bool)

(declare-fun tp!775319 () Bool)

(declare-fun tp!775318 () Bool)

(assert (=> b!2442350 (= e!1551599 (and tp!775319 tp!775318))))

(declare-fun b!2442347 () Bool)

(assert (=> b!2442347 (= e!1551599 tp_is_empty!11767)))

(declare-fun b!2442348 () Bool)

(declare-fun tp!775317 () Bool)

(declare-fun tp!775316 () Bool)

(assert (=> b!2442348 (= e!1551599 (and tp!775317 tp!775316))))

(declare-fun b!2442349 () Bool)

(declare-fun tp!775320 () Bool)

(assert (=> b!2442349 (= e!1551599 tp!775320)))

(assert (=> b!2441284 (= tp!775034 e!1551599)))

(assert (= (and b!2441284 ((_ is ElementMatch!7177) (regOne!14867 (reg!7506 (h!33894 l!9164))))) b!2442347))

(assert (= (and b!2441284 ((_ is Concat!11813) (regOne!14867 (reg!7506 (h!33894 l!9164))))) b!2442348))

(assert (= (and b!2441284 ((_ is Star!7177) (regOne!14867 (reg!7506 (h!33894 l!9164))))) b!2442349))

(assert (= (and b!2441284 ((_ is Union!7177) (regOne!14867 (reg!7506 (h!33894 l!9164))))) b!2442350))

(declare-fun b!2442354 () Bool)

(declare-fun e!1551600 () Bool)

(declare-fun tp!775324 () Bool)

(declare-fun tp!775323 () Bool)

(assert (=> b!2442354 (= e!1551600 (and tp!775324 tp!775323))))

(declare-fun b!2442351 () Bool)

(assert (=> b!2442351 (= e!1551600 tp_is_empty!11767)))

(declare-fun b!2442352 () Bool)

(declare-fun tp!775322 () Bool)

(declare-fun tp!775321 () Bool)

(assert (=> b!2442352 (= e!1551600 (and tp!775322 tp!775321))))

(declare-fun b!2442353 () Bool)

(declare-fun tp!775325 () Bool)

(assert (=> b!2442353 (= e!1551600 tp!775325)))

(assert (=> b!2441284 (= tp!775033 e!1551600)))

(assert (= (and b!2441284 ((_ is ElementMatch!7177) (regTwo!14867 (reg!7506 (h!33894 l!9164))))) b!2442351))

(assert (= (and b!2441284 ((_ is Concat!11813) (regTwo!14867 (reg!7506 (h!33894 l!9164))))) b!2442352))

(assert (= (and b!2441284 ((_ is Star!7177) (regTwo!14867 (reg!7506 (h!33894 l!9164))))) b!2442353))

(assert (= (and b!2441284 ((_ is Union!7177) (regTwo!14867 (reg!7506 (h!33894 l!9164))))) b!2442354))

(declare-fun b!2442358 () Bool)

(declare-fun e!1551601 () Bool)

(declare-fun tp!775329 () Bool)

(declare-fun tp!775328 () Bool)

(assert (=> b!2442358 (= e!1551601 (and tp!775329 tp!775328))))

(declare-fun b!2442355 () Bool)

(assert (=> b!2442355 (= e!1551601 tp_is_empty!11767)))

(declare-fun b!2442356 () Bool)

(declare-fun tp!775327 () Bool)

(declare-fun tp!775326 () Bool)

(assert (=> b!2442356 (= e!1551601 (and tp!775327 tp!775326))))

(declare-fun b!2442357 () Bool)

(declare-fun tp!775330 () Bool)

(assert (=> b!2442357 (= e!1551601 tp!775330)))

(assert (=> b!2441275 (= tp!775025 e!1551601)))

(assert (= (and b!2441275 ((_ is ElementMatch!7177) (reg!7506 (regOne!14866 (h!33894 l!9164))))) b!2442355))

(assert (= (and b!2441275 ((_ is Concat!11813) (reg!7506 (regOne!14866 (h!33894 l!9164))))) b!2442356))

(assert (= (and b!2441275 ((_ is Star!7177) (reg!7506 (regOne!14866 (h!33894 l!9164))))) b!2442357))

(assert (= (and b!2441275 ((_ is Union!7177) (reg!7506 (regOne!14866 (h!33894 l!9164))))) b!2442358))

(declare-fun b!2442362 () Bool)

(declare-fun e!1551602 () Bool)

(declare-fun tp!775334 () Bool)

(declare-fun tp!775333 () Bool)

(assert (=> b!2442362 (= e!1551602 (and tp!775334 tp!775333))))

(declare-fun b!2442359 () Bool)

(assert (=> b!2442359 (= e!1551602 tp_is_empty!11767)))

(declare-fun b!2442360 () Bool)

(declare-fun tp!775332 () Bool)

(declare-fun tp!775331 () Bool)

(assert (=> b!2442360 (= e!1551602 (and tp!775332 tp!775331))))

(declare-fun b!2442361 () Bool)

(declare-fun tp!775335 () Bool)

(assert (=> b!2442361 (= e!1551602 tp!775335)))

(assert (=> b!2441259 (= tp!775003 e!1551602)))

(assert (= (and b!2441259 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14866 (regOne!14866 r!13927))))) b!2442359))

(assert (= (and b!2441259 ((_ is Concat!11813) (regOne!14867 (regTwo!14866 (regOne!14866 r!13927))))) b!2442360))

(assert (= (and b!2441259 ((_ is Star!7177) (regOne!14867 (regTwo!14866 (regOne!14866 r!13927))))) b!2442361))

(assert (= (and b!2441259 ((_ is Union!7177) (regOne!14867 (regTwo!14866 (regOne!14866 r!13927))))) b!2442362))

(declare-fun b!2442366 () Bool)

(declare-fun e!1551603 () Bool)

(declare-fun tp!775339 () Bool)

(declare-fun tp!775338 () Bool)

(assert (=> b!2442366 (= e!1551603 (and tp!775339 tp!775338))))

(declare-fun b!2442363 () Bool)

(assert (=> b!2442363 (= e!1551603 tp_is_empty!11767)))

(declare-fun b!2442364 () Bool)

(declare-fun tp!775337 () Bool)

(declare-fun tp!775336 () Bool)

(assert (=> b!2442364 (= e!1551603 (and tp!775337 tp!775336))))

(declare-fun b!2442365 () Bool)

(declare-fun tp!775340 () Bool)

(assert (=> b!2442365 (= e!1551603 tp!775340)))

(assert (=> b!2441259 (= tp!775002 e!1551603)))

(assert (= (and b!2441259 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14866 (regOne!14866 r!13927))))) b!2442363))

(assert (= (and b!2441259 ((_ is Concat!11813) (regTwo!14867 (regTwo!14866 (regOne!14866 r!13927))))) b!2442364))

(assert (= (and b!2441259 ((_ is Star!7177) (regTwo!14867 (regTwo!14866 (regOne!14866 r!13927))))) b!2442365))

(assert (= (and b!2441259 ((_ is Union!7177) (regTwo!14867 (regTwo!14866 (regOne!14866 r!13927))))) b!2442366))

(declare-fun b!2442370 () Bool)

(declare-fun e!1551604 () Bool)

(declare-fun tp!775344 () Bool)

(declare-fun tp!775343 () Bool)

(assert (=> b!2442370 (= e!1551604 (and tp!775344 tp!775343))))

(declare-fun b!2442367 () Bool)

(assert (=> b!2442367 (= e!1551604 tp_is_empty!11767)))

(declare-fun b!2442368 () Bool)

(declare-fun tp!775342 () Bool)

(declare-fun tp!775341 () Bool)

(assert (=> b!2442368 (= e!1551604 (and tp!775342 tp!775341))))

(declare-fun b!2442369 () Bool)

(declare-fun tp!775345 () Bool)

(assert (=> b!2442369 (= e!1551604 tp!775345)))

(assert (=> b!2441208 (= tp!774939 e!1551604)))

(assert (= (and b!2441208 ((_ is ElementMatch!7177) (regOne!14866 (h!33894 (t!208568 l!9164))))) b!2442367))

(assert (= (and b!2441208 ((_ is Concat!11813) (regOne!14866 (h!33894 (t!208568 l!9164))))) b!2442368))

(assert (= (and b!2441208 ((_ is Star!7177) (regOne!14866 (h!33894 (t!208568 l!9164))))) b!2442369))

(assert (= (and b!2441208 ((_ is Union!7177) (regOne!14866 (h!33894 (t!208568 l!9164))))) b!2442370))

(declare-fun b!2442374 () Bool)

(declare-fun e!1551605 () Bool)

(declare-fun tp!775349 () Bool)

(declare-fun tp!775348 () Bool)

(assert (=> b!2442374 (= e!1551605 (and tp!775349 tp!775348))))

(declare-fun b!2442371 () Bool)

(assert (=> b!2442371 (= e!1551605 tp_is_empty!11767)))

(declare-fun b!2442372 () Bool)

(declare-fun tp!775347 () Bool)

(declare-fun tp!775346 () Bool)

(assert (=> b!2442372 (= e!1551605 (and tp!775347 tp!775346))))

(declare-fun b!2442373 () Bool)

(declare-fun tp!775350 () Bool)

(assert (=> b!2442373 (= e!1551605 tp!775350)))

(assert (=> b!2441208 (= tp!774938 e!1551605)))

(assert (= (and b!2441208 ((_ is ElementMatch!7177) (regTwo!14866 (h!33894 (t!208568 l!9164))))) b!2442371))

(assert (= (and b!2441208 ((_ is Concat!11813) (regTwo!14866 (h!33894 (t!208568 l!9164))))) b!2442372))

(assert (= (and b!2441208 ((_ is Star!7177) (regTwo!14866 (h!33894 (t!208568 l!9164))))) b!2442373))

(assert (= (and b!2441208 ((_ is Union!7177) (regTwo!14866 (h!33894 (t!208568 l!9164))))) b!2442374))

(declare-fun b!2442378 () Bool)

(declare-fun e!1551606 () Bool)

(declare-fun tp!775354 () Bool)

(declare-fun tp!775353 () Bool)

(assert (=> b!2442378 (= e!1551606 (and tp!775354 tp!775353))))

(declare-fun b!2442375 () Bool)

(assert (=> b!2442375 (= e!1551606 tp_is_empty!11767)))

(declare-fun b!2442376 () Bool)

(declare-fun tp!775352 () Bool)

(declare-fun tp!775351 () Bool)

(assert (=> b!2442376 (= e!1551606 (and tp!775352 tp!775351))))

(declare-fun b!2442377 () Bool)

(declare-fun tp!775355 () Bool)

(assert (=> b!2442377 (= e!1551606 tp!775355)))

(assert (=> b!2441218 (= tp!774954 e!1551606)))

(assert (= (and b!2441218 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442375))

(assert (= (and b!2441218 ((_ is Concat!11813) (reg!7506 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442376))

(assert (= (and b!2441218 ((_ is Star!7177) (reg!7506 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442377))

(assert (= (and b!2441218 ((_ is Union!7177) (reg!7506 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442378))

(declare-fun b!2442382 () Bool)

(declare-fun e!1551607 () Bool)

(declare-fun tp!775359 () Bool)

(declare-fun tp!775358 () Bool)

(assert (=> b!2442382 (= e!1551607 (and tp!775359 tp!775358))))

(declare-fun b!2442379 () Bool)

(assert (=> b!2442379 (= e!1551607 tp_is_empty!11767)))

(declare-fun b!2442380 () Bool)

(declare-fun tp!775357 () Bool)

(declare-fun tp!775356 () Bool)

(assert (=> b!2442380 (= e!1551607 (and tp!775357 tp!775356))))

(declare-fun b!2442381 () Bool)

(declare-fun tp!775360 () Bool)

(assert (=> b!2442381 (= e!1551607 tp!775360)))

(assert (=> b!2441194 (= tp!774921 e!1551607)))

(assert (= (and b!2441194 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14867 (reg!7506 r!13927))))) b!2442379))

(assert (= (and b!2441194 ((_ is Concat!11813) (regOne!14867 (regTwo!14867 (reg!7506 r!13927))))) b!2442380))

(assert (= (and b!2441194 ((_ is Star!7177) (regOne!14867 (regTwo!14867 (reg!7506 r!13927))))) b!2442381))

(assert (= (and b!2441194 ((_ is Union!7177) (regOne!14867 (regTwo!14867 (reg!7506 r!13927))))) b!2442382))

(declare-fun b!2442386 () Bool)

(declare-fun e!1551608 () Bool)

(declare-fun tp!775364 () Bool)

(declare-fun tp!775363 () Bool)

(assert (=> b!2442386 (= e!1551608 (and tp!775364 tp!775363))))

(declare-fun b!2442383 () Bool)

(assert (=> b!2442383 (= e!1551608 tp_is_empty!11767)))

(declare-fun b!2442384 () Bool)

(declare-fun tp!775362 () Bool)

(declare-fun tp!775361 () Bool)

(assert (=> b!2442384 (= e!1551608 (and tp!775362 tp!775361))))

(declare-fun b!2442385 () Bool)

(declare-fun tp!775365 () Bool)

(assert (=> b!2442385 (= e!1551608 tp!775365)))

(assert (=> b!2441194 (= tp!774920 e!1551608)))

(assert (= (and b!2441194 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14867 (reg!7506 r!13927))))) b!2442383))

(assert (= (and b!2441194 ((_ is Concat!11813) (regTwo!14867 (regTwo!14867 (reg!7506 r!13927))))) b!2442384))

(assert (= (and b!2441194 ((_ is Star!7177) (regTwo!14867 (regTwo!14867 (reg!7506 r!13927))))) b!2442385))

(assert (= (and b!2441194 ((_ is Union!7177) (regTwo!14867 (regTwo!14867 (reg!7506 r!13927))))) b!2442386))

(declare-fun b!2442390 () Bool)

(declare-fun e!1551609 () Bool)

(declare-fun tp!775369 () Bool)

(declare-fun tp!775368 () Bool)

(assert (=> b!2442390 (= e!1551609 (and tp!775369 tp!775368))))

(declare-fun b!2442387 () Bool)

(assert (=> b!2442387 (= e!1551609 tp_is_empty!11767)))

(declare-fun b!2442388 () Bool)

(declare-fun tp!775367 () Bool)

(declare-fun tp!775366 () Bool)

(assert (=> b!2442388 (= e!1551609 (and tp!775367 tp!775366))))

(declare-fun b!2442389 () Bool)

(declare-fun tp!775370 () Bool)

(assert (=> b!2442389 (= e!1551609 tp!775370)))

(assert (=> b!2441227 (= tp!774963 e!1551609)))

(assert (= (and b!2441227 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14866 (regOne!14867 r!13927))))) b!2442387))

(assert (= (and b!2441227 ((_ is Concat!11813) (regOne!14867 (regTwo!14866 (regOne!14867 r!13927))))) b!2442388))

(assert (= (and b!2441227 ((_ is Star!7177) (regOne!14867 (regTwo!14866 (regOne!14867 r!13927))))) b!2442389))

(assert (= (and b!2441227 ((_ is Union!7177) (regOne!14867 (regTwo!14866 (regOne!14867 r!13927))))) b!2442390))

(declare-fun b!2442394 () Bool)

(declare-fun e!1551610 () Bool)

(declare-fun tp!775374 () Bool)

(declare-fun tp!775373 () Bool)

(assert (=> b!2442394 (= e!1551610 (and tp!775374 tp!775373))))

(declare-fun b!2442391 () Bool)

(assert (=> b!2442391 (= e!1551610 tp_is_empty!11767)))

(declare-fun b!2442392 () Bool)

(declare-fun tp!775372 () Bool)

(declare-fun tp!775371 () Bool)

(assert (=> b!2442392 (= e!1551610 (and tp!775372 tp!775371))))

(declare-fun b!2442393 () Bool)

(declare-fun tp!775375 () Bool)

(assert (=> b!2442393 (= e!1551610 tp!775375)))

(assert (=> b!2441227 (= tp!774962 e!1551610)))

(assert (= (and b!2441227 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14866 (regOne!14867 r!13927))))) b!2442391))

(assert (= (and b!2441227 ((_ is Concat!11813) (regTwo!14867 (regTwo!14866 (regOne!14867 r!13927))))) b!2442392))

(assert (= (and b!2441227 ((_ is Star!7177) (regTwo!14867 (regTwo!14866 (regOne!14867 r!13927))))) b!2442393))

(assert (= (and b!2441227 ((_ is Union!7177) (regTwo!14867 (regTwo!14866 (regOne!14867 r!13927))))) b!2442394))

(declare-fun b!2442398 () Bool)

(declare-fun e!1551611 () Bool)

(declare-fun tp!775379 () Bool)

(declare-fun tp!775378 () Bool)

(assert (=> b!2442398 (= e!1551611 (and tp!775379 tp!775378))))

(declare-fun b!2442395 () Bool)

(assert (=> b!2442395 (= e!1551611 tp_is_empty!11767)))

(declare-fun b!2442396 () Bool)

(declare-fun tp!775377 () Bool)

(declare-fun tp!775376 () Bool)

(assert (=> b!2442396 (= e!1551611 (and tp!775377 tp!775376))))

(declare-fun b!2442397 () Bool)

(declare-fun tp!775380 () Bool)

(assert (=> b!2442397 (= e!1551611 tp!775380)))

(assert (=> b!2441176 (= tp!774899 e!1551611)))

(assert (= (and b!2441176 ((_ is ElementMatch!7177) (regOne!14866 (reg!7506 (regTwo!14866 r!13927))))) b!2442395))

(assert (= (and b!2441176 ((_ is Concat!11813) (regOne!14866 (reg!7506 (regTwo!14866 r!13927))))) b!2442396))

(assert (= (and b!2441176 ((_ is Star!7177) (regOne!14866 (reg!7506 (regTwo!14866 r!13927))))) b!2442397))

(assert (= (and b!2441176 ((_ is Union!7177) (regOne!14866 (reg!7506 (regTwo!14866 r!13927))))) b!2442398))

(declare-fun b!2442402 () Bool)

(declare-fun e!1551612 () Bool)

(declare-fun tp!775384 () Bool)

(declare-fun tp!775383 () Bool)

(assert (=> b!2442402 (= e!1551612 (and tp!775384 tp!775383))))

(declare-fun b!2442399 () Bool)

(assert (=> b!2442399 (= e!1551612 tp_is_empty!11767)))

(declare-fun b!2442400 () Bool)

(declare-fun tp!775382 () Bool)

(declare-fun tp!775381 () Bool)

(assert (=> b!2442400 (= e!1551612 (and tp!775382 tp!775381))))

(declare-fun b!2442401 () Bool)

(declare-fun tp!775385 () Bool)

(assert (=> b!2442401 (= e!1551612 tp!775385)))

(assert (=> b!2441176 (= tp!774898 e!1551612)))

(assert (= (and b!2441176 ((_ is ElementMatch!7177) (regTwo!14866 (reg!7506 (regTwo!14866 r!13927))))) b!2442399))

(assert (= (and b!2441176 ((_ is Concat!11813) (regTwo!14866 (reg!7506 (regTwo!14866 r!13927))))) b!2442400))

(assert (= (and b!2441176 ((_ is Star!7177) (regTwo!14866 (reg!7506 (regTwo!14866 r!13927))))) b!2442401))

(assert (= (and b!2441176 ((_ is Union!7177) (regTwo!14866 (reg!7506 (regTwo!14866 r!13927))))) b!2442402))

(declare-fun b!2442406 () Bool)

(declare-fun e!1551613 () Bool)

(declare-fun tp!775389 () Bool)

(declare-fun tp!775388 () Bool)

(assert (=> b!2442406 (= e!1551613 (and tp!775389 tp!775388))))

(declare-fun b!2442403 () Bool)

(assert (=> b!2442403 (= e!1551613 tp_is_empty!11767)))

(declare-fun b!2442404 () Bool)

(declare-fun tp!775387 () Bool)

(declare-fun tp!775386 () Bool)

(assert (=> b!2442404 (= e!1551613 (and tp!775387 tp!775386))))

(declare-fun b!2442405 () Bool)

(declare-fun tp!775390 () Bool)

(assert (=> b!2442405 (= e!1551613 tp!775390)))

(assert (=> b!2441286 (= tp!775037 e!1551613)))

(assert (= (and b!2441286 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14867 (h!33894 l!9164))))) b!2442403))

(assert (= (and b!2441286 ((_ is Concat!11813) (regOne!14866 (regOne!14867 (h!33894 l!9164))))) b!2442404))

(assert (= (and b!2441286 ((_ is Star!7177) (regOne!14866 (regOne!14867 (h!33894 l!9164))))) b!2442405))

(assert (= (and b!2441286 ((_ is Union!7177) (regOne!14866 (regOne!14867 (h!33894 l!9164))))) b!2442406))

(declare-fun b!2442410 () Bool)

(declare-fun e!1551614 () Bool)

(declare-fun tp!775394 () Bool)

(declare-fun tp!775393 () Bool)

(assert (=> b!2442410 (= e!1551614 (and tp!775394 tp!775393))))

(declare-fun b!2442407 () Bool)

(assert (=> b!2442407 (= e!1551614 tp_is_empty!11767)))

(declare-fun b!2442408 () Bool)

(declare-fun tp!775392 () Bool)

(declare-fun tp!775391 () Bool)

(assert (=> b!2442408 (= e!1551614 (and tp!775392 tp!775391))))

(declare-fun b!2442409 () Bool)

(declare-fun tp!775395 () Bool)

(assert (=> b!2442409 (= e!1551614 tp!775395)))

(assert (=> b!2441286 (= tp!775036 e!1551614)))

(assert (= (and b!2441286 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14867 (h!33894 l!9164))))) b!2442407))

(assert (= (and b!2441286 ((_ is Concat!11813) (regTwo!14866 (regOne!14867 (h!33894 l!9164))))) b!2442408))

(assert (= (and b!2441286 ((_ is Star!7177) (regTwo!14866 (regOne!14867 (h!33894 l!9164))))) b!2442409))

(assert (= (and b!2441286 ((_ is Union!7177) (regTwo!14866 (regOne!14867 (h!33894 l!9164))))) b!2442410))

(declare-fun b!2442414 () Bool)

(declare-fun e!1551615 () Bool)

(declare-fun tp!775399 () Bool)

(declare-fun tp!775398 () Bool)

(assert (=> b!2442414 (= e!1551615 (and tp!775399 tp!775398))))

(declare-fun b!2442411 () Bool)

(assert (=> b!2442411 (= e!1551615 tp_is_empty!11767)))

(declare-fun b!2442412 () Bool)

(declare-fun tp!775397 () Bool)

(declare-fun tp!775396 () Bool)

(assert (=> b!2442412 (= e!1551615 (and tp!775397 tp!775396))))

(declare-fun b!2442413 () Bool)

(declare-fun tp!775400 () Bool)

(assert (=> b!2442413 (= e!1551615 tp!775400)))

(assert (=> b!2441185 (= tp!774912 e!1551615)))

(assert (= (and b!2441185 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442411))

(assert (= (and b!2441185 ((_ is Concat!11813) (reg!7506 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442412))

(assert (= (and b!2441185 ((_ is Star!7177) (reg!7506 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442413))

(assert (= (and b!2441185 ((_ is Union!7177) (reg!7506 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442414))

(declare-fun b!2442418 () Bool)

(declare-fun e!1551616 () Bool)

(declare-fun tp!775404 () Bool)

(declare-fun tp!775403 () Bool)

(assert (=> b!2442418 (= e!1551616 (and tp!775404 tp!775403))))

(declare-fun b!2442415 () Bool)

(assert (=> b!2442415 (= e!1551616 tp_is_empty!11767)))

(declare-fun b!2442416 () Bool)

(declare-fun tp!775402 () Bool)

(declare-fun tp!775401 () Bool)

(assert (=> b!2442416 (= e!1551616 (and tp!775402 tp!775401))))

(declare-fun b!2442417 () Bool)

(declare-fun tp!775405 () Bool)

(assert (=> b!2442417 (= e!1551616 tp!775405)))

(assert (=> b!2441270 (= tp!775019 e!1551616)))

(assert (= (and b!2441270 ((_ is ElementMatch!7177) (reg!7506 (reg!7506 (reg!7506 r!13927))))) b!2442415))

(assert (= (and b!2441270 ((_ is Concat!11813) (reg!7506 (reg!7506 (reg!7506 r!13927))))) b!2442416))

(assert (= (and b!2441270 ((_ is Star!7177) (reg!7506 (reg!7506 (reg!7506 r!13927))))) b!2442417))

(assert (= (and b!2441270 ((_ is Union!7177) (reg!7506 (reg!7506 (reg!7506 r!13927))))) b!2442418))

(declare-fun b!2442422 () Bool)

(declare-fun e!1551617 () Bool)

(declare-fun tp!775409 () Bool)

(declare-fun tp!775408 () Bool)

(assert (=> b!2442422 (= e!1551617 (and tp!775409 tp!775408))))

(declare-fun b!2442419 () Bool)

(assert (=> b!2442419 (= e!1551617 tp_is_empty!11767)))

(declare-fun b!2442420 () Bool)

(declare-fun tp!775407 () Bool)

(declare-fun tp!775406 () Bool)

(assert (=> b!2442420 (= e!1551617 (and tp!775407 tp!775406))))

(declare-fun b!2442421 () Bool)

(declare-fun tp!775410 () Bool)

(assert (=> b!2442421 (= e!1551617 tp!775410)))

(assert (=> b!2441261 (= tp!775006 e!1551617)))

(assert (= (and b!2441261 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))))) b!2442419))

(assert (= (and b!2441261 ((_ is Concat!11813) (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))))) b!2442420))

(assert (= (and b!2441261 ((_ is Star!7177) (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))))) b!2442421))

(assert (= (and b!2441261 ((_ is Union!7177) (regOne!14866 (regOne!14867 (regTwo!14867 r!13927))))) b!2442422))

(declare-fun b!2442426 () Bool)

(declare-fun e!1551618 () Bool)

(declare-fun tp!775414 () Bool)

(declare-fun tp!775413 () Bool)

(assert (=> b!2442426 (= e!1551618 (and tp!775414 tp!775413))))

(declare-fun b!2442423 () Bool)

(assert (=> b!2442423 (= e!1551618 tp_is_empty!11767)))

(declare-fun b!2442424 () Bool)

(declare-fun tp!775412 () Bool)

(declare-fun tp!775411 () Bool)

(assert (=> b!2442424 (= e!1551618 (and tp!775412 tp!775411))))

(declare-fun b!2442425 () Bool)

(declare-fun tp!775415 () Bool)

(assert (=> b!2442425 (= e!1551618 tp!775415)))

(assert (=> b!2441261 (= tp!775005 e!1551618)))

(assert (= (and b!2441261 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))))) b!2442423))

(assert (= (and b!2441261 ((_ is Concat!11813) (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))))) b!2442424))

(assert (= (and b!2441261 ((_ is Star!7177) (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))))) b!2442425))

(assert (= (and b!2441261 ((_ is Union!7177) (regTwo!14866 (regOne!14867 (regTwo!14867 r!13927))))) b!2442426))

(declare-fun b!2442427 () Bool)

(declare-fun e!1551619 () Bool)

(declare-fun tp!775416 () Bool)

(assert (=> b!2442427 (= e!1551619 (and tp_is_empty!11767 tp!775416))))

(assert (=> b!2441272 (= tp!775020 e!1551619)))

(assert (= (and b!2441272 ((_ is Cons!28492) (t!208567 (t!208567 (t!208567 s!9460))))) b!2442427))

(declare-fun b!2442431 () Bool)

(declare-fun e!1551620 () Bool)

(declare-fun tp!775420 () Bool)

(declare-fun tp!775419 () Bool)

(assert (=> b!2442431 (= e!1551620 (and tp!775420 tp!775419))))

(declare-fun b!2442428 () Bool)

(assert (=> b!2442428 (= e!1551620 tp_is_empty!11767)))

(declare-fun b!2442429 () Bool)

(declare-fun tp!775418 () Bool)

(declare-fun tp!775417 () Bool)

(assert (=> b!2442429 (= e!1551620 (and tp!775418 tp!775417))))

(declare-fun b!2442430 () Bool)

(declare-fun tp!775421 () Bool)

(assert (=> b!2442430 (= e!1551620 tp!775421)))

(assert (=> b!2441196 (= tp!774924 e!1551620)))

(assert (= (and b!2441196 ((_ is ElementMatch!7177) (regOne!14866 (reg!7506 (regOne!14866 r!13927))))) b!2442428))

(assert (= (and b!2441196 ((_ is Concat!11813) (regOne!14866 (reg!7506 (regOne!14866 r!13927))))) b!2442429))

(assert (= (and b!2441196 ((_ is Star!7177) (regOne!14866 (reg!7506 (regOne!14866 r!13927))))) b!2442430))

(assert (= (and b!2441196 ((_ is Union!7177) (regOne!14866 (reg!7506 (regOne!14866 r!13927))))) b!2442431))

(declare-fun b!2442435 () Bool)

(declare-fun e!1551621 () Bool)

(declare-fun tp!775425 () Bool)

(declare-fun tp!775424 () Bool)

(assert (=> b!2442435 (= e!1551621 (and tp!775425 tp!775424))))

(declare-fun b!2442432 () Bool)

(assert (=> b!2442432 (= e!1551621 tp_is_empty!11767)))

(declare-fun b!2442433 () Bool)

(declare-fun tp!775423 () Bool)

(declare-fun tp!775422 () Bool)

(assert (=> b!2442433 (= e!1551621 (and tp!775423 tp!775422))))

(declare-fun b!2442434 () Bool)

(declare-fun tp!775426 () Bool)

(assert (=> b!2442434 (= e!1551621 tp!775426)))

(assert (=> b!2441196 (= tp!774923 e!1551621)))

(assert (= (and b!2441196 ((_ is ElementMatch!7177) (regTwo!14866 (reg!7506 (regOne!14866 r!13927))))) b!2442432))

(assert (= (and b!2441196 ((_ is Concat!11813) (regTwo!14866 (reg!7506 (regOne!14866 r!13927))))) b!2442433))

(assert (= (and b!2441196 ((_ is Star!7177) (regTwo!14866 (reg!7506 (regOne!14866 r!13927))))) b!2442434))

(assert (= (and b!2441196 ((_ is Union!7177) (regTwo!14866 (reg!7506 (regOne!14866 r!13927))))) b!2442435))

(declare-fun b!2442439 () Bool)

(declare-fun e!1551622 () Bool)

(declare-fun tp!775430 () Bool)

(declare-fun tp!775429 () Bool)

(assert (=> b!2442439 (= e!1551622 (and tp!775430 tp!775429))))

(declare-fun b!2442436 () Bool)

(assert (=> b!2442436 (= e!1551622 tp_is_empty!11767)))

(declare-fun b!2442437 () Bool)

(declare-fun tp!775428 () Bool)

(declare-fun tp!775427 () Bool)

(assert (=> b!2442437 (= e!1551622 (and tp!775428 tp!775427))))

(declare-fun b!2442438 () Bool)

(declare-fun tp!775431 () Bool)

(assert (=> b!2442438 (= e!1551622 tp!775431)))

(assert (=> b!2441205 (= tp!774937 e!1551622)))

(assert (= (and b!2441205 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14867 (regOne!14866 r!13927))))) b!2442436))

(assert (= (and b!2441205 ((_ is Concat!11813) (reg!7506 (regTwo!14867 (regOne!14866 r!13927))))) b!2442437))

(assert (= (and b!2441205 ((_ is Star!7177) (reg!7506 (regTwo!14867 (regOne!14866 r!13927))))) b!2442438))

(assert (= (and b!2441205 ((_ is Union!7177) (reg!7506 (regTwo!14867 (regOne!14866 r!13927))))) b!2442439))

(declare-fun b!2442443 () Bool)

(declare-fun e!1551623 () Bool)

(declare-fun tp!775435 () Bool)

(declare-fun tp!775434 () Bool)

(assert (=> b!2442443 (= e!1551623 (and tp!775435 tp!775434))))

(declare-fun b!2442440 () Bool)

(assert (=> b!2442440 (= e!1551623 tp_is_empty!11767)))

(declare-fun b!2442441 () Bool)

(declare-fun tp!775433 () Bool)

(declare-fun tp!775432 () Bool)

(assert (=> b!2442441 (= e!1551623 (and tp!775433 tp!775432))))

(declare-fun b!2442442 () Bool)

(declare-fun tp!775436 () Bool)

(assert (=> b!2442442 (= e!1551623 tp!775436)))

(assert (=> b!2441247 (= tp!774988 e!1551623)))

(assert (= (and b!2441247 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14866 (reg!7506 r!13927))))) b!2442440))

(assert (= (and b!2441247 ((_ is Concat!11813) (regOne!14867 (regTwo!14866 (reg!7506 r!13927))))) b!2442441))

(assert (= (and b!2441247 ((_ is Star!7177) (regOne!14867 (regTwo!14866 (reg!7506 r!13927))))) b!2442442))

(assert (= (and b!2441247 ((_ is Union!7177) (regOne!14867 (regTwo!14866 (reg!7506 r!13927))))) b!2442443))

(declare-fun b!2442447 () Bool)

(declare-fun e!1551624 () Bool)

(declare-fun tp!775440 () Bool)

(declare-fun tp!775439 () Bool)

(assert (=> b!2442447 (= e!1551624 (and tp!775440 tp!775439))))

(declare-fun b!2442444 () Bool)

(assert (=> b!2442444 (= e!1551624 tp_is_empty!11767)))

(declare-fun b!2442445 () Bool)

(declare-fun tp!775438 () Bool)

(declare-fun tp!775437 () Bool)

(assert (=> b!2442445 (= e!1551624 (and tp!775438 tp!775437))))

(declare-fun b!2442446 () Bool)

(declare-fun tp!775441 () Bool)

(assert (=> b!2442446 (= e!1551624 tp!775441)))

(assert (=> b!2441247 (= tp!774987 e!1551624)))

(assert (= (and b!2441247 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14866 (reg!7506 r!13927))))) b!2442444))

(assert (= (and b!2441247 ((_ is Concat!11813) (regTwo!14867 (regTwo!14866 (reg!7506 r!13927))))) b!2442445))

(assert (= (and b!2441247 ((_ is Star!7177) (regTwo!14867 (regTwo!14866 (reg!7506 r!13927))))) b!2442446))

(assert (= (and b!2441247 ((_ is Union!7177) (regTwo!14867 (regTwo!14866 (reg!7506 r!13927))))) b!2442447))

(declare-fun b!2442451 () Bool)

(declare-fun e!1551625 () Bool)

(declare-fun tp!775445 () Bool)

(declare-fun tp!775444 () Bool)

(assert (=> b!2442451 (= e!1551625 (and tp!775445 tp!775444))))

(declare-fun b!2442448 () Bool)

(assert (=> b!2442448 (= e!1551625 tp_is_empty!11767)))

(declare-fun b!2442449 () Bool)

(declare-fun tp!775443 () Bool)

(declare-fun tp!775442 () Bool)

(assert (=> b!2442449 (= e!1551625 (and tp!775443 tp!775442))))

(declare-fun b!2442450 () Bool)

(declare-fun tp!775446 () Bool)

(assert (=> b!2442450 (= e!1551625 tp!775446)))

(assert (=> b!2441229 (= tp!774966 e!1551625)))

(assert (= (and b!2441229 ((_ is ElementMatch!7177) (regOne!14866 (reg!7506 (regTwo!14867 r!13927))))) b!2442448))

(assert (= (and b!2441229 ((_ is Concat!11813) (regOne!14866 (reg!7506 (regTwo!14867 r!13927))))) b!2442449))

(assert (= (and b!2441229 ((_ is Star!7177) (regOne!14866 (reg!7506 (regTwo!14867 r!13927))))) b!2442450))

(assert (= (and b!2441229 ((_ is Union!7177) (regOne!14866 (reg!7506 (regTwo!14867 r!13927))))) b!2442451))

(declare-fun b!2442455 () Bool)

(declare-fun e!1551626 () Bool)

(declare-fun tp!775450 () Bool)

(declare-fun tp!775449 () Bool)

(assert (=> b!2442455 (= e!1551626 (and tp!775450 tp!775449))))

(declare-fun b!2442452 () Bool)

(assert (=> b!2442452 (= e!1551626 tp_is_empty!11767)))

(declare-fun b!2442453 () Bool)

(declare-fun tp!775448 () Bool)

(declare-fun tp!775447 () Bool)

(assert (=> b!2442453 (= e!1551626 (and tp!775448 tp!775447))))

(declare-fun b!2442454 () Bool)

(declare-fun tp!775451 () Bool)

(assert (=> b!2442454 (= e!1551626 tp!775451)))

(assert (=> b!2441229 (= tp!774965 e!1551626)))

(assert (= (and b!2441229 ((_ is ElementMatch!7177) (regTwo!14866 (reg!7506 (regTwo!14867 r!13927))))) b!2442452))

(assert (= (and b!2441229 ((_ is Concat!11813) (regTwo!14866 (reg!7506 (regTwo!14867 r!13927))))) b!2442453))

(assert (= (and b!2441229 ((_ is Star!7177) (regTwo!14866 (reg!7506 (regTwo!14867 r!13927))))) b!2442454))

(assert (= (and b!2441229 ((_ is Union!7177) (regTwo!14866 (reg!7506 (regTwo!14867 r!13927))))) b!2442455))

(declare-fun b!2442459 () Bool)

(declare-fun e!1551627 () Bool)

(declare-fun tp!775455 () Bool)

(declare-fun tp!775454 () Bool)

(assert (=> b!2442459 (= e!1551627 (and tp!775455 tp!775454))))

(declare-fun b!2442456 () Bool)

(assert (=> b!2442456 (= e!1551627 tp_is_empty!11767)))

(declare-fun b!2442457 () Bool)

(declare-fun tp!775453 () Bool)

(declare-fun tp!775452 () Bool)

(assert (=> b!2442457 (= e!1551627 (and tp!775453 tp!775452))))

(declare-fun b!2442458 () Bool)

(declare-fun tp!775456 () Bool)

(assert (=> b!2442458 (= e!1551627 tp!775456)))

(assert (=> b!2441238 (= tp!774979 e!1551627)))

(assert (= (and b!2441238 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442456))

(assert (= (and b!2441238 ((_ is Concat!11813) (reg!7506 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442457))

(assert (= (and b!2441238 ((_ is Star!7177) (reg!7506 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442458))

(assert (= (and b!2441238 ((_ is Union!7177) (reg!7506 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442459))

(declare-fun b!2442463 () Bool)

(declare-fun e!1551628 () Bool)

(declare-fun tp!775460 () Bool)

(declare-fun tp!775459 () Bool)

(assert (=> b!2442463 (= e!1551628 (and tp!775460 tp!775459))))

(declare-fun b!2442460 () Bool)

(assert (=> b!2442460 (= e!1551628 tp_is_empty!11767)))

(declare-fun b!2442461 () Bool)

(declare-fun tp!775458 () Bool)

(declare-fun tp!775457 () Bool)

(assert (=> b!2442461 (= e!1551628 (and tp!775458 tp!775457))))

(declare-fun b!2442462 () Bool)

(declare-fun tp!775461 () Bool)

(assert (=> b!2442462 (= e!1551628 tp!775461)))

(assert (=> b!2441182 (= tp!774906 e!1551628)))

(assert (= (and b!2441182 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14867 (regTwo!14866 r!13927))))) b!2442460))

(assert (= (and b!2441182 ((_ is Concat!11813) (regOne!14867 (regOne!14867 (regTwo!14866 r!13927))))) b!2442461))

(assert (= (and b!2441182 ((_ is Star!7177) (regOne!14867 (regOne!14867 (regTwo!14866 r!13927))))) b!2442462))

(assert (= (and b!2441182 ((_ is Union!7177) (regOne!14867 (regOne!14867 (regTwo!14866 r!13927))))) b!2442463))

(declare-fun b!2442467 () Bool)

(declare-fun e!1551629 () Bool)

(declare-fun tp!775465 () Bool)

(declare-fun tp!775464 () Bool)

(assert (=> b!2442467 (= e!1551629 (and tp!775465 tp!775464))))

(declare-fun b!2442464 () Bool)

(assert (=> b!2442464 (= e!1551629 tp_is_empty!11767)))

(declare-fun b!2442465 () Bool)

(declare-fun tp!775463 () Bool)

(declare-fun tp!775462 () Bool)

(assert (=> b!2442465 (= e!1551629 (and tp!775463 tp!775462))))

(declare-fun b!2442466 () Bool)

(declare-fun tp!775466 () Bool)

(assert (=> b!2442466 (= e!1551629 tp!775466)))

(assert (=> b!2441182 (= tp!774905 e!1551629)))

(assert (= (and b!2441182 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14867 (regTwo!14866 r!13927))))) b!2442464))

(assert (= (and b!2441182 ((_ is Concat!11813) (regTwo!14867 (regOne!14867 (regTwo!14866 r!13927))))) b!2442465))

(assert (= (and b!2441182 ((_ is Star!7177) (regTwo!14867 (regOne!14867 (regTwo!14866 r!13927))))) b!2442466))

(assert (= (and b!2441182 ((_ is Union!7177) (regTwo!14867 (regOne!14867 (regTwo!14866 r!13927))))) b!2442467))

(declare-fun b!2442471 () Bool)

(declare-fun e!1551630 () Bool)

(declare-fun tp!775470 () Bool)

(declare-fun tp!775469 () Bool)

(assert (=> b!2442471 (= e!1551630 (and tp!775470 tp!775469))))

(declare-fun b!2442468 () Bool)

(assert (=> b!2442468 (= e!1551630 tp_is_empty!11767)))

(declare-fun b!2442469 () Bool)

(declare-fun tp!775468 () Bool)

(declare-fun tp!775467 () Bool)

(assert (=> b!2442469 (= e!1551630 (and tp!775468 tp!775467))))

(declare-fun b!2442470 () Bool)

(declare-fun tp!775471 () Bool)

(assert (=> b!2442470 (= e!1551630 tp!775471)))

(assert (=> b!2441292 (= tp!775044 e!1551630)))

(assert (= (and b!2441292 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14867 (h!33894 l!9164))))) b!2442468))

(assert (= (and b!2441292 ((_ is Concat!11813) (regOne!14867 (regTwo!14867 (h!33894 l!9164))))) b!2442469))

(assert (= (and b!2441292 ((_ is Star!7177) (regOne!14867 (regTwo!14867 (h!33894 l!9164))))) b!2442470))

(assert (= (and b!2441292 ((_ is Union!7177) (regOne!14867 (regTwo!14867 (h!33894 l!9164))))) b!2442471))

(declare-fun b!2442475 () Bool)

(declare-fun e!1551631 () Bool)

(declare-fun tp!775475 () Bool)

(declare-fun tp!775474 () Bool)

(assert (=> b!2442475 (= e!1551631 (and tp!775475 tp!775474))))

(declare-fun b!2442472 () Bool)

(assert (=> b!2442472 (= e!1551631 tp_is_empty!11767)))

(declare-fun b!2442473 () Bool)

(declare-fun tp!775473 () Bool)

(declare-fun tp!775472 () Bool)

(assert (=> b!2442473 (= e!1551631 (and tp!775473 tp!775472))))

(declare-fun b!2442474 () Bool)

(declare-fun tp!775476 () Bool)

(assert (=> b!2442474 (= e!1551631 tp!775476)))

(assert (=> b!2441292 (= tp!775043 e!1551631)))

(assert (= (and b!2441292 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14867 (h!33894 l!9164))))) b!2442472))

(assert (= (and b!2441292 ((_ is Concat!11813) (regTwo!14867 (regTwo!14867 (h!33894 l!9164))))) b!2442473))

(assert (= (and b!2441292 ((_ is Star!7177) (regTwo!14867 (regTwo!14867 (h!33894 l!9164))))) b!2442474))

(assert (= (and b!2441292 ((_ is Union!7177) (regTwo!14867 (regTwo!14867 (h!33894 l!9164))))) b!2442475))

(declare-fun b!2442479 () Bool)

(declare-fun e!1551632 () Bool)

(declare-fun tp!775480 () Bool)

(declare-fun tp!775479 () Bool)

(assert (=> b!2442479 (= e!1551632 (and tp!775480 tp!775479))))

(declare-fun b!2442476 () Bool)

(assert (=> b!2442476 (= e!1551632 tp_is_empty!11767)))

(declare-fun b!2442477 () Bool)

(declare-fun tp!775478 () Bool)

(declare-fun tp!775477 () Bool)

(assert (=> b!2442477 (= e!1551632 (and tp!775478 tp!775477))))

(declare-fun b!2442478 () Bool)

(declare-fun tp!775481 () Bool)

(assert (=> b!2442478 (= e!1551632 tp!775481)))

(assert (=> b!2441283 (= tp!775035 e!1551632)))

(assert (= (and b!2441283 ((_ is ElementMatch!7177) (reg!7506 (reg!7506 (h!33894 l!9164))))) b!2442476))

(assert (= (and b!2441283 ((_ is Concat!11813) (reg!7506 (reg!7506 (h!33894 l!9164))))) b!2442477))

(assert (= (and b!2441283 ((_ is Star!7177) (reg!7506 (reg!7506 (h!33894 l!9164))))) b!2442478))

(assert (= (and b!2441283 ((_ is Union!7177) (reg!7506 (reg!7506 (h!33894 l!9164))))) b!2442479))

(declare-fun b!2442483 () Bool)

(declare-fun e!1551633 () Bool)

(declare-fun tp!775485 () Bool)

(declare-fun tp!775484 () Bool)

(assert (=> b!2442483 (= e!1551633 (and tp!775485 tp!775484))))

(declare-fun b!2442480 () Bool)

(assert (=> b!2442480 (= e!1551633 tp_is_empty!11767)))

(declare-fun b!2442481 () Bool)

(declare-fun tp!775483 () Bool)

(declare-fun tp!775482 () Bool)

(assert (=> b!2442481 (= e!1551633 (and tp!775483 tp!775482))))

(declare-fun b!2442482 () Bool)

(declare-fun tp!775486 () Bool)

(assert (=> b!2442482 (= e!1551633 tp!775486)))

(assert (=> b!2441274 (= tp!775022 e!1551633)))

(assert (= (and b!2441274 ((_ is ElementMatch!7177) (regOne!14866 (regOne!14866 (h!33894 l!9164))))) b!2442480))

(assert (= (and b!2441274 ((_ is Concat!11813) (regOne!14866 (regOne!14866 (h!33894 l!9164))))) b!2442481))

(assert (= (and b!2441274 ((_ is Star!7177) (regOne!14866 (regOne!14866 (h!33894 l!9164))))) b!2442482))

(assert (= (and b!2441274 ((_ is Union!7177) (regOne!14866 (regOne!14866 (h!33894 l!9164))))) b!2442483))

(declare-fun b!2442487 () Bool)

(declare-fun e!1551634 () Bool)

(declare-fun tp!775490 () Bool)

(declare-fun tp!775489 () Bool)

(assert (=> b!2442487 (= e!1551634 (and tp!775490 tp!775489))))

(declare-fun b!2442484 () Bool)

(assert (=> b!2442484 (= e!1551634 tp_is_empty!11767)))

(declare-fun b!2442485 () Bool)

(declare-fun tp!775488 () Bool)

(declare-fun tp!775487 () Bool)

(assert (=> b!2442485 (= e!1551634 (and tp!775488 tp!775487))))

(declare-fun b!2442486 () Bool)

(declare-fun tp!775491 () Bool)

(assert (=> b!2442486 (= e!1551634 tp!775491)))

(assert (=> b!2441274 (= tp!775021 e!1551634)))

(assert (= (and b!2441274 ((_ is ElementMatch!7177) (regTwo!14866 (regOne!14866 (h!33894 l!9164))))) b!2442484))

(assert (= (and b!2441274 ((_ is Concat!11813) (regTwo!14866 (regOne!14866 (h!33894 l!9164))))) b!2442485))

(assert (= (and b!2441274 ((_ is Star!7177) (regTwo!14866 (regOne!14866 (h!33894 l!9164))))) b!2442486))

(assert (= (and b!2441274 ((_ is Union!7177) (regTwo!14866 (regOne!14866 (h!33894 l!9164))))) b!2442487))

(declare-fun b!2442491 () Bool)

(declare-fun e!1551635 () Bool)

(declare-fun tp!775495 () Bool)

(declare-fun tp!775494 () Bool)

(assert (=> b!2442491 (= e!1551635 (and tp!775495 tp!775494))))

(declare-fun b!2442488 () Bool)

(assert (=> b!2442488 (= e!1551635 tp_is_empty!11767)))

(declare-fun b!2442489 () Bool)

(declare-fun tp!775493 () Bool)

(declare-fun tp!775492 () Bool)

(assert (=> b!2442489 (= e!1551635 (and tp!775493 tp!775492))))

(declare-fun b!2442490 () Bool)

(declare-fun tp!775496 () Bool)

(assert (=> b!2442490 (= e!1551635 tp!775496)))

(assert (=> b!2441173 (= tp!774897 e!1551635)))

(assert (= (and b!2441173 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14867 (regOne!14867 r!13927))))) b!2442488))

(assert (= (and b!2441173 ((_ is Concat!11813) (reg!7506 (regTwo!14867 (regOne!14867 r!13927))))) b!2442489))

(assert (= (and b!2441173 ((_ is Star!7177) (reg!7506 (regTwo!14867 (regOne!14867 r!13927))))) b!2442490))

(assert (= (and b!2441173 ((_ is Union!7177) (reg!7506 (regTwo!14867 (regOne!14867 r!13927))))) b!2442491))

(declare-fun b!2442495 () Bool)

(declare-fun e!1551636 () Bool)

(declare-fun tp!775500 () Bool)

(declare-fun tp!775499 () Bool)

(assert (=> b!2442495 (= e!1551636 (and tp!775500 tp!775499))))

(declare-fun b!2442492 () Bool)

(assert (=> b!2442492 (= e!1551636 tp_is_empty!11767)))

(declare-fun b!2442493 () Bool)

(declare-fun tp!775498 () Bool)

(declare-fun tp!775497 () Bool)

(assert (=> b!2442493 (= e!1551636 (and tp!775498 tp!775497))))

(declare-fun b!2442494 () Bool)

(declare-fun tp!775501 () Bool)

(assert (=> b!2442494 (= e!1551636 tp!775501)))

(assert (=> b!2441267 (= tp!775013 e!1551636)))

(assert (= (and b!2441267 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442492))

(assert (= (and b!2441267 ((_ is Concat!11813) (regOne!14867 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442493))

(assert (= (and b!2441267 ((_ is Star!7177) (regOne!14867 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442494))

(assert (= (and b!2441267 ((_ is Union!7177) (regOne!14867 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442495))

(declare-fun b!2442499 () Bool)

(declare-fun e!1551637 () Bool)

(declare-fun tp!775505 () Bool)

(declare-fun tp!775504 () Bool)

(assert (=> b!2442499 (= e!1551637 (and tp!775505 tp!775504))))

(declare-fun b!2442496 () Bool)

(assert (=> b!2442496 (= e!1551637 tp_is_empty!11767)))

(declare-fun b!2442497 () Bool)

(declare-fun tp!775503 () Bool)

(declare-fun tp!775502 () Bool)

(assert (=> b!2442497 (= e!1551637 (and tp!775503 tp!775502))))

(declare-fun b!2442498 () Bool)

(declare-fun tp!775506 () Bool)

(assert (=> b!2442498 (= e!1551637 tp!775506)))

(assert (=> b!2441267 (= tp!775012 e!1551637)))

(assert (= (and b!2441267 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442496))

(assert (= (and b!2441267 ((_ is Concat!11813) (regTwo!14867 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442497))

(assert (= (and b!2441267 ((_ is Star!7177) (regTwo!14867 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442498))

(assert (= (and b!2441267 ((_ is Union!7177) (regTwo!14867 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442499))

(declare-fun b!2442503 () Bool)

(declare-fun e!1551638 () Bool)

(declare-fun tp!775510 () Bool)

(declare-fun tp!775509 () Bool)

(assert (=> b!2442503 (= e!1551638 (and tp!775510 tp!775509))))

(declare-fun b!2442500 () Bool)

(assert (=> b!2442500 (= e!1551638 tp_is_empty!11767)))

(declare-fun b!2442501 () Bool)

(declare-fun tp!775508 () Bool)

(declare-fun tp!775507 () Bool)

(assert (=> b!2442501 (= e!1551638 (and tp!775508 tp!775507))))

(declare-fun b!2442502 () Bool)

(declare-fun tp!775511 () Bool)

(assert (=> b!2442502 (= e!1551638 tp!775511)))

(assert (=> b!2441215 (= tp!774948 e!1551638)))

(assert (= (and b!2441215 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14866 (regTwo!14867 r!13927))))) b!2442500))

(assert (= (and b!2441215 ((_ is Concat!11813) (regOne!14867 (regOne!14866 (regTwo!14867 r!13927))))) b!2442501))

(assert (= (and b!2441215 ((_ is Star!7177) (regOne!14867 (regOne!14866 (regTwo!14867 r!13927))))) b!2442502))

(assert (= (and b!2441215 ((_ is Union!7177) (regOne!14867 (regOne!14866 (regTwo!14867 r!13927))))) b!2442503))

(declare-fun b!2442507 () Bool)

(declare-fun e!1551639 () Bool)

(declare-fun tp!775515 () Bool)

(declare-fun tp!775514 () Bool)

(assert (=> b!2442507 (= e!1551639 (and tp!775515 tp!775514))))

(declare-fun b!2442504 () Bool)

(assert (=> b!2442504 (= e!1551639 tp_is_empty!11767)))

(declare-fun b!2442505 () Bool)

(declare-fun tp!775513 () Bool)

(declare-fun tp!775512 () Bool)

(assert (=> b!2442505 (= e!1551639 (and tp!775513 tp!775512))))

(declare-fun b!2442506 () Bool)

(declare-fun tp!775516 () Bool)

(assert (=> b!2442506 (= e!1551639 tp!775516)))

(assert (=> b!2441215 (= tp!774947 e!1551639)))

(assert (= (and b!2441215 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14866 (regTwo!14867 r!13927))))) b!2442504))

(assert (= (and b!2441215 ((_ is Concat!11813) (regTwo!14867 (regOne!14866 (regTwo!14867 r!13927))))) b!2442505))

(assert (= (and b!2441215 ((_ is Star!7177) (regTwo!14867 (regOne!14866 (regTwo!14867 r!13927))))) b!2442506))

(assert (= (and b!2441215 ((_ is Union!7177) (regTwo!14867 (regOne!14866 (regTwo!14867 r!13927))))) b!2442507))

(declare-fun b!2442511 () Bool)

(declare-fun e!1551640 () Bool)

(declare-fun tp!775520 () Bool)

(declare-fun tp!775519 () Bool)

(assert (=> b!2442511 (= e!1551640 (and tp!775520 tp!775519))))

(declare-fun b!2442508 () Bool)

(assert (=> b!2442508 (= e!1551640 tp_is_empty!11767)))

(declare-fun b!2442509 () Bool)

(declare-fun tp!775518 () Bool)

(declare-fun tp!775517 () Bool)

(assert (=> b!2442509 (= e!1551640 (and tp!775518 tp!775517))))

(declare-fun b!2442510 () Bool)

(declare-fun tp!775521 () Bool)

(assert (=> b!2442510 (= e!1551640 tp!775521)))

(assert (=> b!2441258 (= tp!775004 e!1551640)))

(assert (= (and b!2441258 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14866 (regOne!14866 r!13927))))) b!2442508))

(assert (= (and b!2441258 ((_ is Concat!11813) (reg!7506 (regTwo!14866 (regOne!14866 r!13927))))) b!2442509))

(assert (= (and b!2441258 ((_ is Star!7177) (reg!7506 (regTwo!14866 (regOne!14866 r!13927))))) b!2442510))

(assert (= (and b!2441258 ((_ is Union!7177) (reg!7506 (regTwo!14866 (regOne!14866 r!13927))))) b!2442511))

(declare-fun b!2442515 () Bool)

(declare-fun e!1551641 () Bool)

(declare-fun tp!775525 () Bool)

(declare-fun tp!775524 () Bool)

(assert (=> b!2442515 (= e!1551641 (and tp!775525 tp!775524))))

(declare-fun b!2442512 () Bool)

(assert (=> b!2442512 (= e!1551641 tp_is_empty!11767)))

(declare-fun b!2442513 () Bool)

(declare-fun tp!775523 () Bool)

(declare-fun tp!775522 () Bool)

(assert (=> b!2442513 (= e!1551641 (and tp!775523 tp!775522))))

(declare-fun b!2442514 () Bool)

(declare-fun tp!775526 () Bool)

(assert (=> b!2442514 (= e!1551641 tp!775526)))

(assert (=> b!2441249 (= tp!774991 e!1551641)))

(assert (= (and b!2441249 ((_ is ElementMatch!7177) (regOne!14866 (reg!7506 (regOne!14867 r!13927))))) b!2442512))

(assert (= (and b!2441249 ((_ is Concat!11813) (regOne!14866 (reg!7506 (regOne!14867 r!13927))))) b!2442513))

(assert (= (and b!2441249 ((_ is Star!7177) (regOne!14866 (reg!7506 (regOne!14867 r!13927))))) b!2442514))

(assert (= (and b!2441249 ((_ is Union!7177) (regOne!14866 (reg!7506 (regOne!14867 r!13927))))) b!2442515))

(declare-fun b!2442519 () Bool)

(declare-fun e!1551642 () Bool)

(declare-fun tp!775530 () Bool)

(declare-fun tp!775529 () Bool)

(assert (=> b!2442519 (= e!1551642 (and tp!775530 tp!775529))))

(declare-fun b!2442516 () Bool)

(assert (=> b!2442516 (= e!1551642 tp_is_empty!11767)))

(declare-fun b!2442517 () Bool)

(declare-fun tp!775528 () Bool)

(declare-fun tp!775527 () Bool)

(assert (=> b!2442517 (= e!1551642 (and tp!775528 tp!775527))))

(declare-fun b!2442518 () Bool)

(declare-fun tp!775531 () Bool)

(assert (=> b!2442518 (= e!1551642 tp!775531)))

(assert (=> b!2441249 (= tp!774990 e!1551642)))

(assert (= (and b!2441249 ((_ is ElementMatch!7177) (regTwo!14866 (reg!7506 (regOne!14867 r!13927))))) b!2442516))

(assert (= (and b!2441249 ((_ is Concat!11813) (regTwo!14866 (reg!7506 (regOne!14867 r!13927))))) b!2442517))

(assert (= (and b!2441249 ((_ is Star!7177) (regTwo!14866 (reg!7506 (regOne!14867 r!13927))))) b!2442518))

(assert (= (and b!2441249 ((_ is Union!7177) (regTwo!14866 (reg!7506 (regOne!14867 r!13927))))) b!2442519))

(declare-fun b!2442523 () Bool)

(declare-fun e!1551643 () Bool)

(declare-fun tp!775535 () Bool)

(declare-fun tp!775534 () Bool)

(assert (=> b!2442523 (= e!1551643 (and tp!775535 tp!775534))))

(declare-fun b!2442520 () Bool)

(assert (=> b!2442520 (= e!1551643 tp_is_empty!11767)))

(declare-fun b!2442521 () Bool)

(declare-fun tp!775533 () Bool)

(declare-fun tp!775532 () Bool)

(assert (=> b!2442521 (= e!1551643 (and tp!775533 tp!775532))))

(declare-fun b!2442522 () Bool)

(declare-fun tp!775536 () Bool)

(assert (=> b!2442522 (= e!1551643 tp!775536)))

(assert (=> b!2441235 (= tp!774973 e!1551643)))

(assert (= (and b!2441235 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14866 (regTwo!14866 r!13927))))) b!2442520))

(assert (= (and b!2441235 ((_ is Concat!11813) (regOne!14867 (regOne!14866 (regTwo!14866 r!13927))))) b!2442521))

(assert (= (and b!2441235 ((_ is Star!7177) (regOne!14867 (regOne!14866 (regTwo!14866 r!13927))))) b!2442522))

(assert (= (and b!2441235 ((_ is Union!7177) (regOne!14867 (regOne!14866 (regTwo!14866 r!13927))))) b!2442523))

(declare-fun b!2442527 () Bool)

(declare-fun e!1551644 () Bool)

(declare-fun tp!775540 () Bool)

(declare-fun tp!775539 () Bool)

(assert (=> b!2442527 (= e!1551644 (and tp!775540 tp!775539))))

(declare-fun b!2442524 () Bool)

(assert (=> b!2442524 (= e!1551644 tp_is_empty!11767)))

(declare-fun b!2442525 () Bool)

(declare-fun tp!775538 () Bool)

(declare-fun tp!775537 () Bool)

(assert (=> b!2442525 (= e!1551644 (and tp!775538 tp!775537))))

(declare-fun b!2442526 () Bool)

(declare-fun tp!775541 () Bool)

(assert (=> b!2442526 (= e!1551644 tp!775541)))

(assert (=> b!2441235 (= tp!774972 e!1551644)))

(assert (= (and b!2441235 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14866 (regTwo!14866 r!13927))))) b!2442524))

(assert (= (and b!2441235 ((_ is Concat!11813) (regTwo!14867 (regOne!14866 (regTwo!14866 r!13927))))) b!2442525))

(assert (= (and b!2441235 ((_ is Star!7177) (regTwo!14867 (regOne!14866 (regTwo!14866 r!13927))))) b!2442526))

(assert (= (and b!2441235 ((_ is Union!7177) (regTwo!14867 (regOne!14866 (regTwo!14866 r!13927))))) b!2442527))

(declare-fun b!2442531 () Bool)

(declare-fun e!1551645 () Bool)

(declare-fun tp!775545 () Bool)

(declare-fun tp!775544 () Bool)

(assert (=> b!2442531 (= e!1551645 (and tp!775545 tp!775544))))

(declare-fun b!2442528 () Bool)

(assert (=> b!2442528 (= e!1551645 tp_is_empty!11767)))

(declare-fun b!2442529 () Bool)

(declare-fun tp!775543 () Bool)

(declare-fun tp!775542 () Bool)

(assert (=> b!2442529 (= e!1551645 (and tp!775543 tp!775542))))

(declare-fun b!2442530 () Bool)

(declare-fun tp!775546 () Bool)

(assert (=> b!2442530 (= e!1551645 tp!775546)))

(assert (=> b!2441184 (= tp!774909 e!1551645)))

(assert (= (and b!2441184 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442528))

(assert (= (and b!2441184 ((_ is Concat!11813) (regOne!14866 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442529))

(assert (= (and b!2441184 ((_ is Star!7177) (regOne!14866 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442530))

(assert (= (and b!2441184 ((_ is Union!7177) (regOne!14866 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442531))

(declare-fun b!2442535 () Bool)

(declare-fun e!1551646 () Bool)

(declare-fun tp!775550 () Bool)

(declare-fun tp!775549 () Bool)

(assert (=> b!2442535 (= e!1551646 (and tp!775550 tp!775549))))

(declare-fun b!2442532 () Bool)

(assert (=> b!2442532 (= e!1551646 tp_is_empty!11767)))

(declare-fun b!2442533 () Bool)

(declare-fun tp!775548 () Bool)

(declare-fun tp!775547 () Bool)

(assert (=> b!2442533 (= e!1551646 (and tp!775548 tp!775547))))

(declare-fun b!2442534 () Bool)

(declare-fun tp!775551 () Bool)

(assert (=> b!2442534 (= e!1551646 tp!775551)))

(assert (=> b!2441184 (= tp!774908 e!1551646)))

(assert (= (and b!2441184 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442532))

(assert (= (and b!2441184 ((_ is Concat!11813) (regTwo!14866 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442533))

(assert (= (and b!2441184 ((_ is Star!7177) (regTwo!14866 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442534))

(assert (= (and b!2441184 ((_ is Union!7177) (regTwo!14866 (regTwo!14867 (regTwo!14866 r!13927))))) b!2442535))

(declare-fun b!2442539 () Bool)

(declare-fun e!1551647 () Bool)

(declare-fun tp!775555 () Bool)

(declare-fun tp!775554 () Bool)

(assert (=> b!2442539 (= e!1551647 (and tp!775555 tp!775554))))

(declare-fun b!2442536 () Bool)

(assert (=> b!2442536 (= e!1551647 tp_is_empty!11767)))

(declare-fun b!2442537 () Bool)

(declare-fun tp!775553 () Bool)

(declare-fun tp!775552 () Bool)

(assert (=> b!2442537 (= e!1551647 (and tp!775553 tp!775552))))

(declare-fun b!2442538 () Bool)

(declare-fun tp!775556 () Bool)

(assert (=> b!2442538 (= e!1551647 tp!775556)))

(assert (=> b!2441193 (= tp!774922 e!1551647)))

(assert (= (and b!2441193 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14867 (reg!7506 r!13927))))) b!2442536))

(assert (= (and b!2441193 ((_ is Concat!11813) (reg!7506 (regTwo!14867 (reg!7506 r!13927))))) b!2442537))

(assert (= (and b!2441193 ((_ is Star!7177) (reg!7506 (regTwo!14867 (reg!7506 r!13927))))) b!2442538))

(assert (= (and b!2441193 ((_ is Union!7177) (reg!7506 (regTwo!14867 (reg!7506 r!13927))))) b!2442539))

(declare-fun b!2442543 () Bool)

(declare-fun e!1551648 () Bool)

(declare-fun tp!775560 () Bool)

(declare-fun tp!775559 () Bool)

(assert (=> b!2442543 (= e!1551648 (and tp!775560 tp!775559))))

(declare-fun b!2442540 () Bool)

(assert (=> b!2442540 (= e!1551648 tp_is_empty!11767)))

(declare-fun b!2442541 () Bool)

(declare-fun tp!775558 () Bool)

(declare-fun tp!775557 () Bool)

(assert (=> b!2442541 (= e!1551648 (and tp!775558 tp!775557))))

(declare-fun b!2442542 () Bool)

(declare-fun tp!775561 () Bool)

(assert (=> b!2442542 (= e!1551648 tp!775561)))

(assert (=> b!2441269 (= tp!775016 e!1551648)))

(assert (= (and b!2441269 ((_ is ElementMatch!7177) (regOne!14866 (reg!7506 (reg!7506 r!13927))))) b!2442540))

(assert (= (and b!2441269 ((_ is Concat!11813) (regOne!14866 (reg!7506 (reg!7506 r!13927))))) b!2442541))

(assert (= (and b!2441269 ((_ is Star!7177) (regOne!14866 (reg!7506 (reg!7506 r!13927))))) b!2442542))

(assert (= (and b!2441269 ((_ is Union!7177) (regOne!14866 (reg!7506 (reg!7506 r!13927))))) b!2442543))

(declare-fun b!2442547 () Bool)

(declare-fun e!1551649 () Bool)

(declare-fun tp!775565 () Bool)

(declare-fun tp!775564 () Bool)

(assert (=> b!2442547 (= e!1551649 (and tp!775565 tp!775564))))

(declare-fun b!2442544 () Bool)

(assert (=> b!2442544 (= e!1551649 tp_is_empty!11767)))

(declare-fun b!2442545 () Bool)

(declare-fun tp!775563 () Bool)

(declare-fun tp!775562 () Bool)

(assert (=> b!2442545 (= e!1551649 (and tp!775563 tp!775562))))

(declare-fun b!2442546 () Bool)

(declare-fun tp!775566 () Bool)

(assert (=> b!2442546 (= e!1551649 tp!775566)))

(assert (=> b!2441269 (= tp!775015 e!1551649)))

(assert (= (and b!2441269 ((_ is ElementMatch!7177) (regTwo!14866 (reg!7506 (reg!7506 r!13927))))) b!2442544))

(assert (= (and b!2441269 ((_ is Concat!11813) (regTwo!14866 (reg!7506 (reg!7506 r!13927))))) b!2442545))

(assert (= (and b!2441269 ((_ is Star!7177) (regTwo!14866 (reg!7506 (reg!7506 r!13927))))) b!2442546))

(assert (= (and b!2441269 ((_ is Union!7177) (regTwo!14866 (reg!7506 (reg!7506 r!13927))))) b!2442547))

(declare-fun b!2442551 () Bool)

(declare-fun e!1551650 () Bool)

(declare-fun tp!775570 () Bool)

(declare-fun tp!775569 () Bool)

(assert (=> b!2442551 (= e!1551650 (and tp!775570 tp!775569))))

(declare-fun b!2442548 () Bool)

(assert (=> b!2442548 (= e!1551650 tp_is_empty!11767)))

(declare-fun b!2442549 () Bool)

(declare-fun tp!775568 () Bool)

(declare-fun tp!775567 () Bool)

(assert (=> b!2442549 (= e!1551650 (and tp!775568 tp!775567))))

(declare-fun b!2442550 () Bool)

(declare-fun tp!775571 () Bool)

(assert (=> b!2442550 (= e!1551650 tp!775571)))

(assert (=> b!2441217 (= tp!774951 e!1551650)))

(assert (= (and b!2441217 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442548))

(assert (= (and b!2441217 ((_ is Concat!11813) (regOne!14866 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442549))

(assert (= (and b!2441217 ((_ is Star!7177) (regOne!14866 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442550))

(assert (= (and b!2441217 ((_ is Union!7177) (regOne!14866 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442551))

(declare-fun b!2442555 () Bool)

(declare-fun e!1551651 () Bool)

(declare-fun tp!775575 () Bool)

(declare-fun tp!775574 () Bool)

(assert (=> b!2442555 (= e!1551651 (and tp!775575 tp!775574))))

(declare-fun b!2442552 () Bool)

(assert (=> b!2442552 (= e!1551651 tp_is_empty!11767)))

(declare-fun b!2442553 () Bool)

(declare-fun tp!775573 () Bool)

(declare-fun tp!775572 () Bool)

(assert (=> b!2442553 (= e!1551651 (and tp!775573 tp!775572))))

(declare-fun b!2442554 () Bool)

(declare-fun tp!775576 () Bool)

(assert (=> b!2442554 (= e!1551651 tp!775576)))

(assert (=> b!2441217 (= tp!774950 e!1551651)))

(assert (= (and b!2441217 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442552))

(assert (= (and b!2441217 ((_ is Concat!11813) (regTwo!14866 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442553))

(assert (= (and b!2441217 ((_ is Star!7177) (regTwo!14866 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442554))

(assert (= (and b!2441217 ((_ is Union!7177) (regTwo!14866 (regTwo!14866 (regTwo!14867 r!13927))))) b!2442555))

(declare-fun b!2442559 () Bool)

(declare-fun e!1551652 () Bool)

(declare-fun tp!775580 () Bool)

(declare-fun tp!775579 () Bool)

(assert (=> b!2442559 (= e!1551652 (and tp!775580 tp!775579))))

(declare-fun b!2442556 () Bool)

(assert (=> b!2442556 (= e!1551652 tp_is_empty!11767)))

(declare-fun b!2442557 () Bool)

(declare-fun tp!775578 () Bool)

(declare-fun tp!775577 () Bool)

(assert (=> b!2442557 (= e!1551652 (and tp!775578 tp!775577))))

(declare-fun b!2442558 () Bool)

(declare-fun tp!775581 () Bool)

(assert (=> b!2442558 (= e!1551652 tp!775581)))

(assert (=> b!2441226 (= tp!774964 e!1551652)))

(assert (= (and b!2441226 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14866 (regOne!14867 r!13927))))) b!2442556))

(assert (= (and b!2441226 ((_ is Concat!11813) (reg!7506 (regTwo!14866 (regOne!14867 r!13927))))) b!2442557))

(assert (= (and b!2441226 ((_ is Star!7177) (reg!7506 (regTwo!14866 (regOne!14867 r!13927))))) b!2442558))

(assert (= (and b!2441226 ((_ is Union!7177) (reg!7506 (regTwo!14866 (regOne!14867 r!13927))))) b!2442559))

(declare-fun b!2442563 () Bool)

(declare-fun e!1551653 () Bool)

(declare-fun tp!775585 () Bool)

(declare-fun tp!775584 () Bool)

(assert (=> b!2442563 (= e!1551653 (and tp!775585 tp!775584))))

(declare-fun b!2442560 () Bool)

(assert (=> b!2442560 (= e!1551653 tp_is_empty!11767)))

(declare-fun b!2442561 () Bool)

(declare-fun tp!775583 () Bool)

(declare-fun tp!775582 () Bool)

(assert (=> b!2442561 (= e!1551653 (and tp!775583 tp!775582))))

(declare-fun b!2442562 () Bool)

(declare-fun tp!775586 () Bool)

(assert (=> b!2442562 (= e!1551653 tp!775586)))

(assert (=> b!2441202 (= tp!774931 e!1551653)))

(assert (= (and b!2441202 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14867 (regOne!14866 r!13927))))) b!2442560))

(assert (= (and b!2441202 ((_ is Concat!11813) (regOne!14867 (regOne!14867 (regOne!14866 r!13927))))) b!2442561))

(assert (= (and b!2441202 ((_ is Star!7177) (regOne!14867 (regOne!14867 (regOne!14866 r!13927))))) b!2442562))

(assert (= (and b!2441202 ((_ is Union!7177) (regOne!14867 (regOne!14867 (regOne!14866 r!13927))))) b!2442563))

(declare-fun b!2442567 () Bool)

(declare-fun e!1551654 () Bool)

(declare-fun tp!775590 () Bool)

(declare-fun tp!775589 () Bool)

(assert (=> b!2442567 (= e!1551654 (and tp!775590 tp!775589))))

(declare-fun b!2442564 () Bool)

(assert (=> b!2442564 (= e!1551654 tp_is_empty!11767)))

(declare-fun b!2442565 () Bool)

(declare-fun tp!775588 () Bool)

(declare-fun tp!775587 () Bool)

(assert (=> b!2442565 (= e!1551654 (and tp!775588 tp!775587))))

(declare-fun b!2442566 () Bool)

(declare-fun tp!775591 () Bool)

(assert (=> b!2442566 (= e!1551654 tp!775591)))

(assert (=> b!2441202 (= tp!774930 e!1551654)))

(assert (= (and b!2441202 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14867 (regOne!14866 r!13927))))) b!2442564))

(assert (= (and b!2441202 ((_ is Concat!11813) (regTwo!14867 (regOne!14867 (regOne!14866 r!13927))))) b!2442565))

(assert (= (and b!2441202 ((_ is Star!7177) (regTwo!14867 (regOne!14867 (regOne!14866 r!13927))))) b!2442566))

(assert (= (and b!2441202 ((_ is Union!7177) (regTwo!14867 (regOne!14867 (regOne!14866 r!13927))))) b!2442567))

(declare-fun b!2442571 () Bool)

(declare-fun e!1551655 () Bool)

(declare-fun tp!775595 () Bool)

(declare-fun tp!775594 () Bool)

(assert (=> b!2442571 (= e!1551655 (and tp!775595 tp!775594))))

(declare-fun b!2442568 () Bool)

(assert (=> b!2442568 (= e!1551655 tp_is_empty!11767)))

(declare-fun b!2442569 () Bool)

(declare-fun tp!775593 () Bool)

(declare-fun tp!775592 () Bool)

(assert (=> b!2442569 (= e!1551655 (and tp!775593 tp!775592))))

(declare-fun b!2442570 () Bool)

(declare-fun tp!775596 () Bool)

(assert (=> b!2442570 (= e!1551655 tp!775596)))

(assert (=> b!2441255 (= tp!774998 e!1551655)))

(assert (= (and b!2441255 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14866 (regOne!14866 r!13927))))) b!2442568))

(assert (= (and b!2441255 ((_ is Concat!11813) (regOne!14867 (regOne!14866 (regOne!14866 r!13927))))) b!2442569))

(assert (= (and b!2441255 ((_ is Star!7177) (regOne!14867 (regOne!14866 (regOne!14866 r!13927))))) b!2442570))

(assert (= (and b!2441255 ((_ is Union!7177) (regOne!14867 (regOne!14866 (regOne!14866 r!13927))))) b!2442571))

(declare-fun b!2442575 () Bool)

(declare-fun e!1551656 () Bool)

(declare-fun tp!775600 () Bool)

(declare-fun tp!775599 () Bool)

(assert (=> b!2442575 (= e!1551656 (and tp!775600 tp!775599))))

(declare-fun b!2442572 () Bool)

(assert (=> b!2442572 (= e!1551656 tp_is_empty!11767)))

(declare-fun b!2442573 () Bool)

(declare-fun tp!775598 () Bool)

(declare-fun tp!775597 () Bool)

(assert (=> b!2442573 (= e!1551656 (and tp!775598 tp!775597))))

(declare-fun b!2442574 () Bool)

(declare-fun tp!775601 () Bool)

(assert (=> b!2442574 (= e!1551656 tp!775601)))

(assert (=> b!2441255 (= tp!774997 e!1551656)))

(assert (= (and b!2441255 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14866 (regOne!14866 r!13927))))) b!2442572))

(assert (= (and b!2441255 ((_ is Concat!11813) (regTwo!14867 (regOne!14866 (regOne!14866 r!13927))))) b!2442573))

(assert (= (and b!2441255 ((_ is Star!7177) (regTwo!14867 (regOne!14866 (regOne!14866 r!13927))))) b!2442574))

(assert (= (and b!2441255 ((_ is Union!7177) (regTwo!14867 (regOne!14866 (regOne!14866 r!13927))))) b!2442575))

(declare-fun b!2442579 () Bool)

(declare-fun e!1551657 () Bool)

(declare-fun tp!775605 () Bool)

(declare-fun tp!775604 () Bool)

(assert (=> b!2442579 (= e!1551657 (and tp!775605 tp!775604))))

(declare-fun b!2442576 () Bool)

(assert (=> b!2442576 (= e!1551657 tp_is_empty!11767)))

(declare-fun b!2442577 () Bool)

(declare-fun tp!775603 () Bool)

(declare-fun tp!775602 () Bool)

(assert (=> b!2442577 (= e!1551657 (and tp!775603 tp!775602))))

(declare-fun b!2442578 () Bool)

(declare-fun tp!775606 () Bool)

(assert (=> b!2442578 (= e!1551657 tp!775606)))

(assert (=> b!2441246 (= tp!774989 e!1551657)))

(assert (= (and b!2441246 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14866 (reg!7506 r!13927))))) b!2442576))

(assert (= (and b!2441246 ((_ is Concat!11813) (reg!7506 (regTwo!14866 (reg!7506 r!13927))))) b!2442577))

(assert (= (and b!2441246 ((_ is Star!7177) (reg!7506 (regTwo!14866 (reg!7506 r!13927))))) b!2442578))

(assert (= (and b!2441246 ((_ is Union!7177) (reg!7506 (regTwo!14866 (reg!7506 r!13927))))) b!2442579))

(declare-fun b!2442583 () Bool)

(declare-fun e!1551658 () Bool)

(declare-fun tp!775610 () Bool)

(declare-fun tp!775609 () Bool)

(assert (=> b!2442583 (= e!1551658 (and tp!775610 tp!775609))))

(declare-fun b!2442580 () Bool)

(assert (=> b!2442580 (= e!1551658 tp_is_empty!11767)))

(declare-fun b!2442581 () Bool)

(declare-fun tp!775608 () Bool)

(declare-fun tp!775607 () Bool)

(assert (=> b!2442581 (= e!1551658 (and tp!775608 tp!775607))))

(declare-fun b!2442582 () Bool)

(declare-fun tp!775611 () Bool)

(assert (=> b!2442582 (= e!1551658 tp!775611)))

(assert (=> b!2441237 (= tp!774976 e!1551658)))

(assert (= (and b!2441237 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442580))

(assert (= (and b!2441237 ((_ is Concat!11813) (regOne!14866 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442581))

(assert (= (and b!2441237 ((_ is Star!7177) (regOne!14866 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442582))

(assert (= (and b!2441237 ((_ is Union!7177) (regOne!14866 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442583))

(declare-fun b!2442587 () Bool)

(declare-fun e!1551659 () Bool)

(declare-fun tp!775615 () Bool)

(declare-fun tp!775614 () Bool)

(assert (=> b!2442587 (= e!1551659 (and tp!775615 tp!775614))))

(declare-fun b!2442584 () Bool)

(assert (=> b!2442584 (= e!1551659 tp_is_empty!11767)))

(declare-fun b!2442585 () Bool)

(declare-fun tp!775613 () Bool)

(declare-fun tp!775612 () Bool)

(assert (=> b!2442585 (= e!1551659 (and tp!775613 tp!775612))))

(declare-fun b!2442586 () Bool)

(declare-fun tp!775616 () Bool)

(assert (=> b!2442586 (= e!1551659 tp!775616)))

(assert (=> b!2441237 (= tp!774975 e!1551659)))

(assert (= (and b!2441237 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442584))

(assert (= (and b!2441237 ((_ is Concat!11813) (regTwo!14866 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442585))

(assert (= (and b!2441237 ((_ is Star!7177) (regTwo!14866 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442586))

(assert (= (and b!2441237 ((_ is Union!7177) (regTwo!14866 (regTwo!14866 (regTwo!14866 r!13927))))) b!2442587))

(declare-fun b!2442591 () Bool)

(declare-fun e!1551660 () Bool)

(declare-fun tp!775620 () Bool)

(declare-fun tp!775619 () Bool)

(assert (=> b!2442591 (= e!1551660 (and tp!775620 tp!775619))))

(declare-fun b!2442588 () Bool)

(assert (=> b!2442588 (= e!1551660 tp_is_empty!11767)))

(declare-fun b!2442589 () Bool)

(declare-fun tp!775618 () Bool)

(declare-fun tp!775617 () Bool)

(assert (=> b!2442589 (= e!1551660 (and tp!775618 tp!775617))))

(declare-fun b!2442590 () Bool)

(declare-fun tp!775621 () Bool)

(assert (=> b!2442590 (= e!1551660 tp!775621)))

(assert (=> b!2441170 (= tp!774891 e!1551660)))

(assert (= (and b!2441170 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14867 (regOne!14867 r!13927))))) b!2442588))

(assert (= (and b!2441170 ((_ is Concat!11813) (regOne!14867 (regOne!14867 (regOne!14867 r!13927))))) b!2442589))

(assert (= (and b!2441170 ((_ is Star!7177) (regOne!14867 (regOne!14867 (regOne!14867 r!13927))))) b!2442590))

(assert (= (and b!2441170 ((_ is Union!7177) (regOne!14867 (regOne!14867 (regOne!14867 r!13927))))) b!2442591))

(declare-fun b!2442595 () Bool)

(declare-fun e!1551661 () Bool)

(declare-fun tp!775625 () Bool)

(declare-fun tp!775624 () Bool)

(assert (=> b!2442595 (= e!1551661 (and tp!775625 tp!775624))))

(declare-fun b!2442592 () Bool)

(assert (=> b!2442592 (= e!1551661 tp_is_empty!11767)))

(declare-fun b!2442593 () Bool)

(declare-fun tp!775623 () Bool)

(declare-fun tp!775622 () Bool)

(assert (=> b!2442593 (= e!1551661 (and tp!775623 tp!775622))))

(declare-fun b!2442594 () Bool)

(declare-fun tp!775626 () Bool)

(assert (=> b!2442594 (= e!1551661 tp!775626)))

(assert (=> b!2441170 (= tp!774890 e!1551661)))

(assert (= (and b!2441170 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14867 (regOne!14867 r!13927))))) b!2442592))

(assert (= (and b!2441170 ((_ is Concat!11813) (regTwo!14867 (regOne!14867 (regOne!14867 r!13927))))) b!2442593))

(assert (= (and b!2441170 ((_ is Star!7177) (regTwo!14867 (regOne!14867 (regOne!14867 r!13927))))) b!2442594))

(assert (= (and b!2441170 ((_ is Union!7177) (regTwo!14867 (regOne!14867 (regOne!14867 r!13927))))) b!2442595))

(declare-fun b!2442599 () Bool)

(declare-fun e!1551662 () Bool)

(declare-fun tp!775630 () Bool)

(declare-fun tp!775629 () Bool)

(assert (=> b!2442599 (= e!1551662 (and tp!775630 tp!775629))))

(declare-fun b!2442596 () Bool)

(assert (=> b!2442596 (= e!1551662 tp_is_empty!11767)))

(declare-fun b!2442597 () Bool)

(declare-fun tp!775628 () Bool)

(declare-fun tp!775627 () Bool)

(assert (=> b!2442597 (= e!1551662 (and tp!775628 tp!775627))))

(declare-fun b!2442598 () Bool)

(declare-fun tp!775631 () Bool)

(assert (=> b!2442598 (= e!1551662 tp!775631)))

(assert (=> b!2441280 (= tp!775029 e!1551662)))

(assert (= (and b!2441280 ((_ is ElementMatch!7177) (regOne!14867 (regTwo!14866 (h!33894 l!9164))))) b!2442596))

(assert (= (and b!2441280 ((_ is Concat!11813) (regOne!14867 (regTwo!14866 (h!33894 l!9164))))) b!2442597))

(assert (= (and b!2441280 ((_ is Star!7177) (regOne!14867 (regTwo!14866 (h!33894 l!9164))))) b!2442598))

(assert (= (and b!2441280 ((_ is Union!7177) (regOne!14867 (regTwo!14866 (h!33894 l!9164))))) b!2442599))

(declare-fun b!2442603 () Bool)

(declare-fun e!1551663 () Bool)

(declare-fun tp!775635 () Bool)

(declare-fun tp!775634 () Bool)

(assert (=> b!2442603 (= e!1551663 (and tp!775635 tp!775634))))

(declare-fun b!2442600 () Bool)

(assert (=> b!2442600 (= e!1551663 tp_is_empty!11767)))

(declare-fun b!2442601 () Bool)

(declare-fun tp!775633 () Bool)

(declare-fun tp!775632 () Bool)

(assert (=> b!2442601 (= e!1551663 (and tp!775633 tp!775632))))

(declare-fun b!2442602 () Bool)

(declare-fun tp!775636 () Bool)

(assert (=> b!2442602 (= e!1551663 tp!775636)))

(assert (=> b!2441280 (= tp!775028 e!1551663)))

(assert (= (and b!2441280 ((_ is ElementMatch!7177) (regTwo!14867 (regTwo!14866 (h!33894 l!9164))))) b!2442600))

(assert (= (and b!2441280 ((_ is Concat!11813) (regTwo!14867 (regTwo!14866 (h!33894 l!9164))))) b!2442601))

(assert (= (and b!2441280 ((_ is Star!7177) (regTwo!14867 (regTwo!14866 (h!33894 l!9164))))) b!2442602))

(assert (= (and b!2441280 ((_ is Union!7177) (regTwo!14867 (regTwo!14866 (h!33894 l!9164))))) b!2442603))

(declare-fun b!2442607 () Bool)

(declare-fun e!1551664 () Bool)

(declare-fun tp!775640 () Bool)

(declare-fun tp!775639 () Bool)

(assert (=> b!2442607 (= e!1551664 (and tp!775640 tp!775639))))

(declare-fun b!2442604 () Bool)

(assert (=> b!2442604 (= e!1551664 tp_is_empty!11767)))

(declare-fun b!2442605 () Bool)

(declare-fun tp!775638 () Bool)

(declare-fun tp!775637 () Bool)

(assert (=> b!2442605 (= e!1551664 (and tp!775638 tp!775637))))

(declare-fun b!2442606 () Bool)

(declare-fun tp!775641 () Bool)

(assert (=> b!2442606 (= e!1551664 tp!775641)))

(assert (=> b!2441204 (= tp!774934 e!1551664)))

(assert (= (and b!2441204 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14867 (regOne!14866 r!13927))))) b!2442604))

(assert (= (and b!2441204 ((_ is Concat!11813) (regOne!14866 (regTwo!14867 (regOne!14866 r!13927))))) b!2442605))

(assert (= (and b!2441204 ((_ is Star!7177) (regOne!14866 (regTwo!14867 (regOne!14866 r!13927))))) b!2442606))

(assert (= (and b!2441204 ((_ is Union!7177) (regOne!14866 (regTwo!14867 (regOne!14866 r!13927))))) b!2442607))

(declare-fun b!2442611 () Bool)

(declare-fun e!1551665 () Bool)

(declare-fun tp!775645 () Bool)

(declare-fun tp!775644 () Bool)

(assert (=> b!2442611 (= e!1551665 (and tp!775645 tp!775644))))

(declare-fun b!2442608 () Bool)

(assert (=> b!2442608 (= e!1551665 tp_is_empty!11767)))

(declare-fun b!2442609 () Bool)

(declare-fun tp!775643 () Bool)

(declare-fun tp!775642 () Bool)

(assert (=> b!2442609 (= e!1551665 (and tp!775643 tp!775642))))

(declare-fun b!2442610 () Bool)

(declare-fun tp!775646 () Bool)

(assert (=> b!2442610 (= e!1551665 tp!775646)))

(assert (=> b!2441204 (= tp!774933 e!1551665)))

(assert (= (and b!2441204 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14867 (regOne!14866 r!13927))))) b!2442608))

(assert (= (and b!2441204 ((_ is Concat!11813) (regTwo!14866 (regTwo!14867 (regOne!14866 r!13927))))) b!2442609))

(assert (= (and b!2441204 ((_ is Star!7177) (regTwo!14866 (regTwo!14867 (regOne!14866 r!13927))))) b!2442610))

(assert (= (and b!2441204 ((_ is Union!7177) (regTwo!14866 (regTwo!14867 (regOne!14866 r!13927))))) b!2442611))

(declare-fun b!2442615 () Bool)

(declare-fun e!1551666 () Bool)

(declare-fun tp!775650 () Bool)

(declare-fun tp!775649 () Bool)

(assert (=> b!2442615 (= e!1551666 (and tp!775650 tp!775649))))

(declare-fun b!2442612 () Bool)

(assert (=> b!2442612 (= e!1551666 tp_is_empty!11767)))

(declare-fun b!2442613 () Bool)

(declare-fun tp!775648 () Bool)

(declare-fun tp!775647 () Bool)

(assert (=> b!2442613 (= e!1551666 (and tp!775648 tp!775647))))

(declare-fun b!2442614 () Bool)

(declare-fun tp!775651 () Bool)

(assert (=> b!2442614 (= e!1551666 tp!775651)))

(assert (=> b!2441223 (= tp!774958 e!1551666)))

(assert (= (and b!2441223 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14866 (regOne!14867 r!13927))))) b!2442612))

(assert (= (and b!2441223 ((_ is Concat!11813) (regOne!14867 (regOne!14866 (regOne!14867 r!13927))))) b!2442613))

(assert (= (and b!2441223 ((_ is Star!7177) (regOne!14867 (regOne!14866 (regOne!14867 r!13927))))) b!2442614))

(assert (= (and b!2441223 ((_ is Union!7177) (regOne!14867 (regOne!14866 (regOne!14867 r!13927))))) b!2442615))

(declare-fun b!2442619 () Bool)

(declare-fun e!1551667 () Bool)

(declare-fun tp!775655 () Bool)

(declare-fun tp!775654 () Bool)

(assert (=> b!2442619 (= e!1551667 (and tp!775655 tp!775654))))

(declare-fun b!2442616 () Bool)

(assert (=> b!2442616 (= e!1551667 tp_is_empty!11767)))

(declare-fun b!2442617 () Bool)

(declare-fun tp!775653 () Bool)

(declare-fun tp!775652 () Bool)

(assert (=> b!2442617 (= e!1551667 (and tp!775653 tp!775652))))

(declare-fun b!2442618 () Bool)

(declare-fun tp!775656 () Bool)

(assert (=> b!2442618 (= e!1551667 tp!775656)))

(assert (=> b!2441223 (= tp!774957 e!1551667)))

(assert (= (and b!2441223 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14866 (regOne!14867 r!13927))))) b!2442616))

(assert (= (and b!2441223 ((_ is Concat!11813) (regTwo!14867 (regOne!14866 (regOne!14867 r!13927))))) b!2442617))

(assert (= (and b!2441223 ((_ is Star!7177) (regTwo!14867 (regOne!14866 (regOne!14867 r!13927))))) b!2442618))

(assert (= (and b!2441223 ((_ is Union!7177) (regTwo!14867 (regOne!14866 (regOne!14867 r!13927))))) b!2442619))

(declare-fun b!2442623 () Bool)

(declare-fun e!1551668 () Bool)

(declare-fun tp!775660 () Bool)

(declare-fun tp!775659 () Bool)

(assert (=> b!2442623 (= e!1551668 (and tp!775660 tp!775659))))

(declare-fun b!2442620 () Bool)

(assert (=> b!2442620 (= e!1551668 tp_is_empty!11767)))

(declare-fun b!2442621 () Bool)

(declare-fun tp!775658 () Bool)

(declare-fun tp!775657 () Bool)

(assert (=> b!2442621 (= e!1551668 (and tp!775658 tp!775657))))

(declare-fun b!2442622 () Bool)

(declare-fun tp!775661 () Bool)

(assert (=> b!2442622 (= e!1551668 tp!775661)))

(assert (=> b!2441214 (= tp!774949 e!1551668)))

(assert (= (and b!2441214 ((_ is ElementMatch!7177) (reg!7506 (regOne!14866 (regTwo!14867 r!13927))))) b!2442620))

(assert (= (and b!2441214 ((_ is Concat!11813) (reg!7506 (regOne!14866 (regTwo!14867 r!13927))))) b!2442621))

(assert (= (and b!2441214 ((_ is Star!7177) (reg!7506 (regOne!14866 (regTwo!14867 r!13927))))) b!2442622))

(assert (= (and b!2441214 ((_ is Union!7177) (reg!7506 (regOne!14866 (regTwo!14867 r!13927))))) b!2442623))

(declare-fun b!2442627 () Bool)

(declare-fun e!1551669 () Bool)

(declare-fun tp!775665 () Bool)

(declare-fun tp!775664 () Bool)

(assert (=> b!2442627 (= e!1551669 (and tp!775665 tp!775664))))

(declare-fun b!2442624 () Bool)

(assert (=> b!2442624 (= e!1551669 tp_is_empty!11767)))

(declare-fun b!2442625 () Bool)

(declare-fun tp!775663 () Bool)

(declare-fun tp!775662 () Bool)

(assert (=> b!2442625 (= e!1551669 (and tp!775663 tp!775662))))

(declare-fun b!2442626 () Bool)

(declare-fun tp!775666 () Bool)

(assert (=> b!2442626 (= e!1551669 tp!775666)))

(assert (=> b!2441266 (= tp!775014 e!1551669)))

(assert (= (and b!2441266 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442624))

(assert (= (and b!2441266 ((_ is Concat!11813) (reg!7506 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442625))

(assert (= (and b!2441266 ((_ is Star!7177) (reg!7506 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442626))

(assert (= (and b!2441266 ((_ is Union!7177) (reg!7506 (regTwo!14867 (regTwo!14867 r!13927))))) b!2442627))

(declare-fun b!2442631 () Bool)

(declare-fun e!1551670 () Bool)

(declare-fun tp!775670 () Bool)

(declare-fun tp!775669 () Bool)

(assert (=> b!2442631 (= e!1551670 (and tp!775670 tp!775669))))

(declare-fun b!2442628 () Bool)

(assert (=> b!2442628 (= e!1551670 tp_is_empty!11767)))

(declare-fun b!2442629 () Bool)

(declare-fun tp!775668 () Bool)

(declare-fun tp!775667 () Bool)

(assert (=> b!2442629 (= e!1551670 (and tp!775668 tp!775667))))

(declare-fun b!2442630 () Bool)

(declare-fun tp!775671 () Bool)

(assert (=> b!2442630 (= e!1551670 tp!775671)))

(assert (=> b!2441257 (= tp!775001 e!1551670)))

(assert (= (and b!2441257 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14866 (regOne!14866 r!13927))))) b!2442628))

(assert (= (and b!2441257 ((_ is Concat!11813) (regOne!14866 (regTwo!14866 (regOne!14866 r!13927))))) b!2442629))

(assert (= (and b!2441257 ((_ is Star!7177) (regOne!14866 (regTwo!14866 (regOne!14866 r!13927))))) b!2442630))

(assert (= (and b!2441257 ((_ is Union!7177) (regOne!14866 (regTwo!14866 (regOne!14866 r!13927))))) b!2442631))

(declare-fun b!2442635 () Bool)

(declare-fun e!1551671 () Bool)

(declare-fun tp!775675 () Bool)

(declare-fun tp!775674 () Bool)

(assert (=> b!2442635 (= e!1551671 (and tp!775675 tp!775674))))

(declare-fun b!2442632 () Bool)

(assert (=> b!2442632 (= e!1551671 tp_is_empty!11767)))

(declare-fun b!2442633 () Bool)

(declare-fun tp!775673 () Bool)

(declare-fun tp!775672 () Bool)

(assert (=> b!2442633 (= e!1551671 (and tp!775673 tp!775672))))

(declare-fun b!2442634 () Bool)

(declare-fun tp!775676 () Bool)

(assert (=> b!2442634 (= e!1551671 tp!775676)))

(assert (=> b!2441257 (= tp!775000 e!1551671)))

(assert (= (and b!2441257 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14866 (regOne!14866 r!13927))))) b!2442632))

(assert (= (and b!2441257 ((_ is Concat!11813) (regTwo!14866 (regTwo!14866 (regOne!14866 r!13927))))) b!2442633))

(assert (= (and b!2441257 ((_ is Star!7177) (regTwo!14866 (regTwo!14866 (regOne!14866 r!13927))))) b!2442634))

(assert (= (and b!2441257 ((_ is Union!7177) (regTwo!14866 (regTwo!14866 (regOne!14866 r!13927))))) b!2442635))

(declare-fun b!2442639 () Bool)

(declare-fun e!1551672 () Bool)

(declare-fun tp!775680 () Bool)

(declare-fun tp!775679 () Bool)

(assert (=> b!2442639 (= e!1551672 (and tp!775680 tp!775679))))

(declare-fun b!2442636 () Bool)

(assert (=> b!2442636 (= e!1551672 tp_is_empty!11767)))

(declare-fun b!2442637 () Bool)

(declare-fun tp!775678 () Bool)

(declare-fun tp!775677 () Bool)

(assert (=> b!2442637 (= e!1551672 (and tp!775678 tp!775677))))

(declare-fun b!2442638 () Bool)

(declare-fun tp!775681 () Bool)

(assert (=> b!2442638 (= e!1551672 tp!775681)))

(assert (=> b!2441190 (= tp!774916 e!1551672)))

(assert (= (and b!2441190 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14867 (reg!7506 r!13927))))) b!2442636))

(assert (= (and b!2441190 ((_ is Concat!11813) (regOne!14867 (regOne!14867 (reg!7506 r!13927))))) b!2442637))

(assert (= (and b!2441190 ((_ is Star!7177) (regOne!14867 (regOne!14867 (reg!7506 r!13927))))) b!2442638))

(assert (= (and b!2441190 ((_ is Union!7177) (regOne!14867 (regOne!14867 (reg!7506 r!13927))))) b!2442639))

(declare-fun b!2442643 () Bool)

(declare-fun e!1551673 () Bool)

(declare-fun tp!775685 () Bool)

(declare-fun tp!775684 () Bool)

(assert (=> b!2442643 (= e!1551673 (and tp!775685 tp!775684))))

(declare-fun b!2442640 () Bool)

(assert (=> b!2442640 (= e!1551673 tp_is_empty!11767)))

(declare-fun b!2442641 () Bool)

(declare-fun tp!775683 () Bool)

(declare-fun tp!775682 () Bool)

(assert (=> b!2442641 (= e!1551673 (and tp!775683 tp!775682))))

(declare-fun b!2442642 () Bool)

(declare-fun tp!775686 () Bool)

(assert (=> b!2442642 (= e!1551673 tp!775686)))

(assert (=> b!2441190 (= tp!774915 e!1551673)))

(assert (= (and b!2441190 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14867 (reg!7506 r!13927))))) b!2442640))

(assert (= (and b!2441190 ((_ is Concat!11813) (regTwo!14867 (regOne!14867 (reg!7506 r!13927))))) b!2442641))

(assert (= (and b!2441190 ((_ is Star!7177) (regTwo!14867 (regOne!14867 (reg!7506 r!13927))))) b!2442642))

(assert (= (and b!2441190 ((_ is Union!7177) (regTwo!14867 (regOne!14867 (reg!7506 r!13927))))) b!2442643))

(declare-fun b!2442647 () Bool)

(declare-fun e!1551674 () Bool)

(declare-fun tp!775690 () Bool)

(declare-fun tp!775689 () Bool)

(assert (=> b!2442647 (= e!1551674 (and tp!775690 tp!775689))))

(declare-fun b!2442644 () Bool)

(assert (=> b!2442644 (= e!1551674 tp_is_empty!11767)))

(declare-fun b!2442645 () Bool)

(declare-fun tp!775688 () Bool)

(declare-fun tp!775687 () Bool)

(assert (=> b!2442645 (= e!1551674 (and tp!775688 tp!775687))))

(declare-fun b!2442646 () Bool)

(declare-fun tp!775691 () Bool)

(assert (=> b!2442646 (= e!1551674 tp!775691)))

(assert (=> b!2441291 (= tp!775045 e!1551674)))

(assert (= (and b!2441291 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14867 (h!33894 l!9164))))) b!2442644))

(assert (= (and b!2441291 ((_ is Concat!11813) (reg!7506 (regTwo!14867 (h!33894 l!9164))))) b!2442645))

(assert (= (and b!2441291 ((_ is Star!7177) (reg!7506 (regTwo!14867 (h!33894 l!9164))))) b!2442646))

(assert (= (and b!2441291 ((_ is Union!7177) (reg!7506 (regTwo!14867 (h!33894 l!9164))))) b!2442647))

(declare-fun b!2442651 () Bool)

(declare-fun e!1551675 () Bool)

(declare-fun tp!775695 () Bool)

(declare-fun tp!775694 () Bool)

(assert (=> b!2442651 (= e!1551675 (and tp!775695 tp!775694))))

(declare-fun b!2442648 () Bool)

(assert (=> b!2442648 (= e!1551675 tp_is_empty!11767)))

(declare-fun b!2442649 () Bool)

(declare-fun tp!775693 () Bool)

(declare-fun tp!775692 () Bool)

(assert (=> b!2442649 (= e!1551675 (and tp!775693 tp!775692))))

(declare-fun b!2442650 () Bool)

(declare-fun tp!775696 () Bool)

(assert (=> b!2442650 (= e!1551675 tp!775696)))

(assert (=> b!2441172 (= tp!774894 e!1551675)))

(assert (= (and b!2441172 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14867 (regOne!14867 r!13927))))) b!2442648))

(assert (= (and b!2441172 ((_ is Concat!11813) (regOne!14866 (regTwo!14867 (regOne!14867 r!13927))))) b!2442649))

(assert (= (and b!2441172 ((_ is Star!7177) (regOne!14866 (regTwo!14867 (regOne!14867 r!13927))))) b!2442650))

(assert (= (and b!2441172 ((_ is Union!7177) (regOne!14866 (regTwo!14867 (regOne!14867 r!13927))))) b!2442651))

(declare-fun b!2442655 () Bool)

(declare-fun e!1551676 () Bool)

(declare-fun tp!775700 () Bool)

(declare-fun tp!775699 () Bool)

(assert (=> b!2442655 (= e!1551676 (and tp!775700 tp!775699))))

(declare-fun b!2442652 () Bool)

(assert (=> b!2442652 (= e!1551676 tp_is_empty!11767)))

(declare-fun b!2442653 () Bool)

(declare-fun tp!775698 () Bool)

(declare-fun tp!775697 () Bool)

(assert (=> b!2442653 (= e!1551676 (and tp!775698 tp!775697))))

(declare-fun b!2442654 () Bool)

(declare-fun tp!775701 () Bool)

(assert (=> b!2442654 (= e!1551676 tp!775701)))

(assert (=> b!2441172 (= tp!774893 e!1551676)))

(assert (= (and b!2441172 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))))) b!2442652))

(assert (= (and b!2441172 ((_ is Concat!11813) (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))))) b!2442653))

(assert (= (and b!2441172 ((_ is Star!7177) (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))))) b!2442654))

(assert (= (and b!2441172 ((_ is Union!7177) (regTwo!14866 (regTwo!14867 (regOne!14867 r!13927))))) b!2442655))

(declare-fun b!2442659 () Bool)

(declare-fun e!1551677 () Bool)

(declare-fun tp!775705 () Bool)

(declare-fun tp!775704 () Bool)

(assert (=> b!2442659 (= e!1551677 (and tp!775705 tp!775704))))

(declare-fun b!2442656 () Bool)

(assert (=> b!2442656 (= e!1551677 tp_is_empty!11767)))

(declare-fun b!2442657 () Bool)

(declare-fun tp!775703 () Bool)

(declare-fun tp!775702 () Bool)

(assert (=> b!2442657 (= e!1551677 (and tp!775703 tp!775702))))

(declare-fun b!2442658 () Bool)

(declare-fun tp!775706 () Bool)

(assert (=> b!2442658 (= e!1551677 tp!775706)))

(assert (=> b!2441282 (= tp!775032 e!1551677)))

(assert (= (and b!2441282 ((_ is ElementMatch!7177) (regOne!14866 (reg!7506 (h!33894 l!9164))))) b!2442656))

(assert (= (and b!2441282 ((_ is Concat!11813) (regOne!14866 (reg!7506 (h!33894 l!9164))))) b!2442657))

(assert (= (and b!2441282 ((_ is Star!7177) (regOne!14866 (reg!7506 (h!33894 l!9164))))) b!2442658))

(assert (= (and b!2441282 ((_ is Union!7177) (regOne!14866 (reg!7506 (h!33894 l!9164))))) b!2442659))

(declare-fun b!2442663 () Bool)

(declare-fun e!1551678 () Bool)

(declare-fun tp!775710 () Bool)

(declare-fun tp!775709 () Bool)

(assert (=> b!2442663 (= e!1551678 (and tp!775710 tp!775709))))

(declare-fun b!2442660 () Bool)

(assert (=> b!2442660 (= e!1551678 tp_is_empty!11767)))

(declare-fun b!2442661 () Bool)

(declare-fun tp!775708 () Bool)

(declare-fun tp!775707 () Bool)

(assert (=> b!2442661 (= e!1551678 (and tp!775708 tp!775707))))

(declare-fun b!2442662 () Bool)

(declare-fun tp!775711 () Bool)

(assert (=> b!2442662 (= e!1551678 tp!775711)))

(assert (=> b!2441282 (= tp!775031 e!1551678)))

(assert (= (and b!2441282 ((_ is ElementMatch!7177) (regTwo!14866 (reg!7506 (h!33894 l!9164))))) b!2442660))

(assert (= (and b!2441282 ((_ is Concat!11813) (regTwo!14866 (reg!7506 (h!33894 l!9164))))) b!2442661))

(assert (= (and b!2441282 ((_ is Star!7177) (regTwo!14866 (reg!7506 (h!33894 l!9164))))) b!2442662))

(assert (= (and b!2441282 ((_ is Union!7177) (regTwo!14866 (reg!7506 (h!33894 l!9164))))) b!2442663))

(declare-fun b!2442667 () Bool)

(declare-fun e!1551679 () Bool)

(declare-fun tp!775715 () Bool)

(declare-fun tp!775714 () Bool)

(assert (=> b!2442667 (= e!1551679 (and tp!775715 tp!775714))))

(declare-fun b!2442664 () Bool)

(assert (=> b!2442664 (= e!1551679 tp_is_empty!11767)))

(declare-fun b!2442665 () Bool)

(declare-fun tp!775713 () Bool)

(declare-fun tp!775712 () Bool)

(assert (=> b!2442665 (= e!1551679 (and tp!775713 tp!775712))))

(declare-fun b!2442666 () Bool)

(declare-fun tp!775716 () Bool)

(assert (=> b!2442666 (= e!1551679 tp!775716)))

(assert (=> b!2441181 (= tp!774907 e!1551679)))

(assert (= (and b!2441181 ((_ is ElementMatch!7177) (reg!7506 (regOne!14867 (regTwo!14866 r!13927))))) b!2442664))

(assert (= (and b!2441181 ((_ is Concat!11813) (reg!7506 (regOne!14867 (regTwo!14866 r!13927))))) b!2442665))

(assert (= (and b!2441181 ((_ is Star!7177) (reg!7506 (regOne!14867 (regTwo!14866 r!13927))))) b!2442666))

(assert (= (and b!2441181 ((_ is Union!7177) (reg!7506 (regOne!14867 (regTwo!14866 r!13927))))) b!2442667))

(declare-fun b!2442671 () Bool)

(declare-fun e!1551680 () Bool)

(declare-fun tp!775720 () Bool)

(declare-fun tp!775719 () Bool)

(assert (=> b!2442671 (= e!1551680 (and tp!775720 tp!775719))))

(declare-fun b!2442668 () Bool)

(assert (=> b!2442668 (= e!1551680 tp_is_empty!11767)))

(declare-fun b!2442669 () Bool)

(declare-fun tp!775718 () Bool)

(declare-fun tp!775717 () Bool)

(assert (=> b!2442669 (= e!1551680 (and tp!775718 tp!775717))))

(declare-fun b!2442670 () Bool)

(declare-fun tp!775721 () Bool)

(assert (=> b!2442670 (= e!1551680 tp!775721)))

(assert (=> b!2441225 (= tp!774961 e!1551680)))

(assert (= (and b!2441225 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14866 (regOne!14867 r!13927))))) b!2442668))

(assert (= (and b!2441225 ((_ is Concat!11813) (regOne!14866 (regTwo!14866 (regOne!14867 r!13927))))) b!2442669))

(assert (= (and b!2441225 ((_ is Star!7177) (regOne!14866 (regTwo!14866 (regOne!14867 r!13927))))) b!2442670))

(assert (= (and b!2441225 ((_ is Union!7177) (regOne!14866 (regTwo!14866 (regOne!14867 r!13927))))) b!2442671))

(declare-fun b!2442675 () Bool)

(declare-fun e!1551681 () Bool)

(declare-fun tp!775725 () Bool)

(declare-fun tp!775724 () Bool)

(assert (=> b!2442675 (= e!1551681 (and tp!775725 tp!775724))))

(declare-fun b!2442672 () Bool)

(assert (=> b!2442672 (= e!1551681 tp_is_empty!11767)))

(declare-fun b!2442673 () Bool)

(declare-fun tp!775723 () Bool)

(declare-fun tp!775722 () Bool)

(assert (=> b!2442673 (= e!1551681 (and tp!775723 tp!775722))))

(declare-fun b!2442674 () Bool)

(declare-fun tp!775726 () Bool)

(assert (=> b!2442674 (= e!1551681 tp!775726)))

(assert (=> b!2441225 (= tp!774960 e!1551681)))

(assert (= (and b!2441225 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14866 (regOne!14867 r!13927))))) b!2442672))

(assert (= (and b!2441225 ((_ is Concat!11813) (regTwo!14866 (regTwo!14866 (regOne!14867 r!13927))))) b!2442673))

(assert (= (and b!2441225 ((_ is Star!7177) (regTwo!14866 (regTwo!14866 (regOne!14867 r!13927))))) b!2442674))

(assert (= (and b!2441225 ((_ is Union!7177) (regTwo!14866 (regTwo!14866 (regOne!14867 r!13927))))) b!2442675))

(declare-fun b!2442679 () Bool)

(declare-fun e!1551682 () Bool)

(declare-fun tp!775730 () Bool)

(declare-fun tp!775729 () Bool)

(assert (=> b!2442679 (= e!1551682 (and tp!775730 tp!775729))))

(declare-fun b!2442676 () Bool)

(assert (=> b!2442676 (= e!1551682 tp_is_empty!11767)))

(declare-fun b!2442677 () Bool)

(declare-fun tp!775728 () Bool)

(declare-fun tp!775727 () Bool)

(assert (=> b!2442677 (= e!1551682 (and tp!775728 tp!775727))))

(declare-fun b!2442678 () Bool)

(declare-fun tp!775731 () Bool)

(assert (=> b!2442678 (= e!1551682 tp!775731)))

(assert (=> b!2441234 (= tp!774974 e!1551682)))

(assert (= (and b!2441234 ((_ is ElementMatch!7177) (reg!7506 (regOne!14866 (regTwo!14866 r!13927))))) b!2442676))

(assert (= (and b!2441234 ((_ is Concat!11813) (reg!7506 (regOne!14866 (regTwo!14866 r!13927))))) b!2442677))

(assert (= (and b!2441234 ((_ is Star!7177) (reg!7506 (regOne!14866 (regTwo!14866 r!13927))))) b!2442678))

(assert (= (and b!2441234 ((_ is Union!7177) (reg!7506 (regOne!14866 (regTwo!14866 r!13927))))) b!2442679))

(declare-fun b!2442683 () Bool)

(declare-fun e!1551683 () Bool)

(declare-fun tp!775735 () Bool)

(declare-fun tp!775734 () Bool)

(assert (=> b!2442683 (= e!1551683 (and tp!775735 tp!775734))))

(declare-fun b!2442680 () Bool)

(assert (=> b!2442680 (= e!1551683 tp_is_empty!11767)))

(declare-fun b!2442681 () Bool)

(declare-fun tp!775733 () Bool)

(declare-fun tp!775732 () Bool)

(assert (=> b!2442681 (= e!1551683 (and tp!775733 tp!775732))))

(declare-fun b!2442682 () Bool)

(declare-fun tp!775736 () Bool)

(assert (=> b!2442682 (= e!1551683 tp!775736)))

(assert (=> b!2441210 (= tp!774941 e!1551683)))

(assert (= (and b!2441210 ((_ is ElementMatch!7177) (regOne!14867 (h!33894 (t!208568 l!9164))))) b!2442680))

(assert (= (and b!2441210 ((_ is Concat!11813) (regOne!14867 (h!33894 (t!208568 l!9164))))) b!2442681))

(assert (= (and b!2441210 ((_ is Star!7177) (regOne!14867 (h!33894 (t!208568 l!9164))))) b!2442682))

(assert (= (and b!2441210 ((_ is Union!7177) (regOne!14867 (h!33894 (t!208568 l!9164))))) b!2442683))

(declare-fun b!2442687 () Bool)

(declare-fun e!1551684 () Bool)

(declare-fun tp!775740 () Bool)

(declare-fun tp!775739 () Bool)

(assert (=> b!2442687 (= e!1551684 (and tp!775740 tp!775739))))

(declare-fun b!2442684 () Bool)

(assert (=> b!2442684 (= e!1551684 tp_is_empty!11767)))

(declare-fun b!2442685 () Bool)

(declare-fun tp!775738 () Bool)

(declare-fun tp!775737 () Bool)

(assert (=> b!2442685 (= e!1551684 (and tp!775738 tp!775737))))

(declare-fun b!2442686 () Bool)

(declare-fun tp!775741 () Bool)

(assert (=> b!2442686 (= e!1551684 tp!775741)))

(assert (=> b!2441210 (= tp!774940 e!1551684)))

(assert (= (and b!2441210 ((_ is ElementMatch!7177) (regTwo!14867 (h!33894 (t!208568 l!9164))))) b!2442684))

(assert (= (and b!2441210 ((_ is Concat!11813) (regTwo!14867 (h!33894 (t!208568 l!9164))))) b!2442685))

(assert (= (and b!2441210 ((_ is Star!7177) (regTwo!14867 (h!33894 (t!208568 l!9164))))) b!2442686))

(assert (= (and b!2441210 ((_ is Union!7177) (regTwo!14867 (h!33894 (t!208568 l!9164))))) b!2442687))

(declare-fun b!2442691 () Bool)

(declare-fun e!1551685 () Bool)

(declare-fun tp!775745 () Bool)

(declare-fun tp!775744 () Bool)

(assert (=> b!2442691 (= e!1551685 (and tp!775745 tp!775744))))

(declare-fun b!2442688 () Bool)

(assert (=> b!2442688 (= e!1551685 tp_is_empty!11767)))

(declare-fun b!2442689 () Bool)

(declare-fun tp!775743 () Bool)

(declare-fun tp!775742 () Bool)

(assert (=> b!2442689 (= e!1551685 (and tp!775743 tp!775742))))

(declare-fun b!2442690 () Bool)

(declare-fun tp!775746 () Bool)

(assert (=> b!2442690 (= e!1551685 tp!775746)))

(assert (=> b!2441243 (= tp!774983 e!1551685)))

(assert (= (and b!2441243 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14866 (reg!7506 r!13927))))) b!2442688))

(assert (= (and b!2441243 ((_ is Concat!11813) (regOne!14867 (regOne!14866 (reg!7506 r!13927))))) b!2442689))

(assert (= (and b!2441243 ((_ is Star!7177) (regOne!14867 (regOne!14866 (reg!7506 r!13927))))) b!2442690))

(assert (= (and b!2441243 ((_ is Union!7177) (regOne!14867 (regOne!14866 (reg!7506 r!13927))))) b!2442691))

(declare-fun b!2442695 () Bool)

(declare-fun e!1551686 () Bool)

(declare-fun tp!775750 () Bool)

(declare-fun tp!775749 () Bool)

(assert (=> b!2442695 (= e!1551686 (and tp!775750 tp!775749))))

(declare-fun b!2442692 () Bool)

(assert (=> b!2442692 (= e!1551686 tp_is_empty!11767)))

(declare-fun b!2442693 () Bool)

(declare-fun tp!775748 () Bool)

(declare-fun tp!775747 () Bool)

(assert (=> b!2442693 (= e!1551686 (and tp!775748 tp!775747))))

(declare-fun b!2442694 () Bool)

(declare-fun tp!775751 () Bool)

(assert (=> b!2442694 (= e!1551686 tp!775751)))

(assert (=> b!2441243 (= tp!774982 e!1551686)))

(assert (= (and b!2441243 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14866 (reg!7506 r!13927))))) b!2442692))

(assert (= (and b!2441243 ((_ is Concat!11813) (regTwo!14867 (regOne!14866 (reg!7506 r!13927))))) b!2442693))

(assert (= (and b!2441243 ((_ is Star!7177) (regTwo!14867 (regOne!14866 (reg!7506 r!13927))))) b!2442694))

(assert (= (and b!2441243 ((_ is Union!7177) (regTwo!14867 (regOne!14866 (reg!7506 r!13927))))) b!2442695))

(declare-fun b!2442699 () Bool)

(declare-fun e!1551687 () Bool)

(declare-fun tp!775755 () Bool)

(declare-fun tp!775754 () Bool)

(assert (=> b!2442699 (= e!1551687 (and tp!775755 tp!775754))))

(declare-fun b!2442696 () Bool)

(assert (=> b!2442696 (= e!1551687 tp_is_empty!11767)))

(declare-fun b!2442697 () Bool)

(declare-fun tp!775753 () Bool)

(declare-fun tp!775752 () Bool)

(assert (=> b!2442697 (= e!1551687 (and tp!775753 tp!775752))))

(declare-fun b!2442698 () Bool)

(declare-fun tp!775756 () Bool)

(assert (=> b!2442698 (= e!1551687 tp!775756)))

(assert (=> b!2441192 (= tp!774919 e!1551687)))

(assert (= (and b!2441192 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14867 (reg!7506 r!13927))))) b!2442696))

(assert (= (and b!2441192 ((_ is Concat!11813) (regOne!14866 (regTwo!14867 (reg!7506 r!13927))))) b!2442697))

(assert (= (and b!2441192 ((_ is Star!7177) (regOne!14866 (regTwo!14867 (reg!7506 r!13927))))) b!2442698))

(assert (= (and b!2441192 ((_ is Union!7177) (regOne!14866 (regTwo!14867 (reg!7506 r!13927))))) b!2442699))

(declare-fun b!2442703 () Bool)

(declare-fun e!1551688 () Bool)

(declare-fun tp!775760 () Bool)

(declare-fun tp!775759 () Bool)

(assert (=> b!2442703 (= e!1551688 (and tp!775760 tp!775759))))

(declare-fun b!2442700 () Bool)

(assert (=> b!2442700 (= e!1551688 tp_is_empty!11767)))

(declare-fun b!2442701 () Bool)

(declare-fun tp!775758 () Bool)

(declare-fun tp!775757 () Bool)

(assert (=> b!2442701 (= e!1551688 (and tp!775758 tp!775757))))

(declare-fun b!2442702 () Bool)

(declare-fun tp!775761 () Bool)

(assert (=> b!2442702 (= e!1551688 tp!775761)))

(assert (=> b!2441192 (= tp!774918 e!1551688)))

(assert (= (and b!2441192 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14867 (reg!7506 r!13927))))) b!2442700))

(assert (= (and b!2441192 ((_ is Concat!11813) (regTwo!14866 (regTwo!14867 (reg!7506 r!13927))))) b!2442701))

(assert (= (and b!2441192 ((_ is Star!7177) (regTwo!14866 (regTwo!14867 (reg!7506 r!13927))))) b!2442702))

(assert (= (and b!2441192 ((_ is Union!7177) (regTwo!14866 (regTwo!14867 (reg!7506 r!13927))))) b!2442703))

(declare-fun b!2442707 () Bool)

(declare-fun e!1551689 () Bool)

(declare-fun tp!775765 () Bool)

(declare-fun tp!775764 () Bool)

(assert (=> b!2442707 (= e!1551689 (and tp!775765 tp!775764))))

(declare-fun b!2442704 () Bool)

(assert (=> b!2442704 (= e!1551689 tp_is_empty!11767)))

(declare-fun b!2442705 () Bool)

(declare-fun tp!775763 () Bool)

(declare-fun tp!775762 () Bool)

(assert (=> b!2442705 (= e!1551689 (and tp!775763 tp!775762))))

(declare-fun b!2442706 () Bool)

(declare-fun tp!775766 () Bool)

(assert (=> b!2442706 (= e!1551689 tp!775766)))

(assert (=> b!2441201 (= tp!774932 e!1551689)))

(assert (= (and b!2441201 ((_ is ElementMatch!7177) (reg!7506 (regOne!14867 (regOne!14866 r!13927))))) b!2442704))

(assert (= (and b!2441201 ((_ is Concat!11813) (reg!7506 (regOne!14867 (regOne!14866 r!13927))))) b!2442705))

(assert (= (and b!2441201 ((_ is Star!7177) (reg!7506 (regOne!14867 (regOne!14866 r!13927))))) b!2442706))

(assert (= (and b!2441201 ((_ is Union!7177) (reg!7506 (regOne!14867 (regOne!14866 r!13927))))) b!2442707))

(declare-fun b!2442711 () Bool)

(declare-fun e!1551690 () Bool)

(declare-fun tp!775770 () Bool)

(declare-fun tp!775769 () Bool)

(assert (=> b!2442711 (= e!1551690 (and tp!775770 tp!775769))))

(declare-fun b!2442708 () Bool)

(assert (=> b!2442708 (= e!1551690 tp_is_empty!11767)))

(declare-fun b!2442709 () Bool)

(declare-fun tp!775768 () Bool)

(declare-fun tp!775767 () Bool)

(assert (=> b!2442709 (= e!1551690 (and tp!775768 tp!775767))))

(declare-fun b!2442710 () Bool)

(declare-fun tp!775771 () Bool)

(assert (=> b!2442710 (= e!1551690 tp!775771)))

(assert (=> b!2441178 (= tp!774901 e!1551690)))

(assert (= (and b!2441178 ((_ is ElementMatch!7177) (regOne!14867 (reg!7506 (regTwo!14866 r!13927))))) b!2442708))

(assert (= (and b!2441178 ((_ is Concat!11813) (regOne!14867 (reg!7506 (regTwo!14866 r!13927))))) b!2442709))

(assert (= (and b!2441178 ((_ is Star!7177) (regOne!14867 (reg!7506 (regTwo!14866 r!13927))))) b!2442710))

(assert (= (and b!2441178 ((_ is Union!7177) (regOne!14867 (reg!7506 (regTwo!14866 r!13927))))) b!2442711))

(declare-fun b!2442715 () Bool)

(declare-fun e!1551691 () Bool)

(declare-fun tp!775775 () Bool)

(declare-fun tp!775774 () Bool)

(assert (=> b!2442715 (= e!1551691 (and tp!775775 tp!775774))))

(declare-fun b!2442712 () Bool)

(assert (=> b!2442712 (= e!1551691 tp_is_empty!11767)))

(declare-fun b!2442713 () Bool)

(declare-fun tp!775773 () Bool)

(declare-fun tp!775772 () Bool)

(assert (=> b!2442713 (= e!1551691 (and tp!775773 tp!775772))))

(declare-fun b!2442714 () Bool)

(declare-fun tp!775776 () Bool)

(assert (=> b!2442714 (= e!1551691 tp!775776)))

(assert (=> b!2441178 (= tp!774900 e!1551691)))

(assert (= (and b!2441178 ((_ is ElementMatch!7177) (regTwo!14867 (reg!7506 (regTwo!14866 r!13927))))) b!2442712))

(assert (= (and b!2441178 ((_ is Concat!11813) (regTwo!14867 (reg!7506 (regTwo!14866 r!13927))))) b!2442713))

(assert (= (and b!2441178 ((_ is Star!7177) (regTwo!14867 (reg!7506 (regTwo!14866 r!13927))))) b!2442714))

(assert (= (and b!2441178 ((_ is Union!7177) (regTwo!14867 (reg!7506 (regTwo!14866 r!13927))))) b!2442715))

(declare-fun b!2442719 () Bool)

(declare-fun e!1551692 () Bool)

(declare-fun tp!775780 () Bool)

(declare-fun tp!775779 () Bool)

(assert (=> b!2442719 (= e!1551692 (and tp!775780 tp!775779))))

(declare-fun b!2442716 () Bool)

(assert (=> b!2442716 (= e!1551692 tp_is_empty!11767)))

(declare-fun b!2442717 () Bool)

(declare-fun tp!775778 () Bool)

(declare-fun tp!775777 () Bool)

(assert (=> b!2442717 (= e!1551692 (and tp!775778 tp!775777))))

(declare-fun b!2442718 () Bool)

(declare-fun tp!775781 () Bool)

(assert (=> b!2442718 (= e!1551692 tp!775781)))

(assert (=> b!2441288 (= tp!775039 e!1551692)))

(assert (= (and b!2441288 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14867 (h!33894 l!9164))))) b!2442716))

(assert (= (and b!2441288 ((_ is Concat!11813) (regOne!14867 (regOne!14867 (h!33894 l!9164))))) b!2442717))

(assert (= (and b!2441288 ((_ is Star!7177) (regOne!14867 (regOne!14867 (h!33894 l!9164))))) b!2442718))

(assert (= (and b!2441288 ((_ is Union!7177) (regOne!14867 (regOne!14867 (h!33894 l!9164))))) b!2442719))

(declare-fun b!2442723 () Bool)

(declare-fun e!1551693 () Bool)

(declare-fun tp!775785 () Bool)

(declare-fun tp!775784 () Bool)

(assert (=> b!2442723 (= e!1551693 (and tp!775785 tp!775784))))

(declare-fun b!2442720 () Bool)

(assert (=> b!2442720 (= e!1551693 tp_is_empty!11767)))

(declare-fun b!2442721 () Bool)

(declare-fun tp!775783 () Bool)

(declare-fun tp!775782 () Bool)

(assert (=> b!2442721 (= e!1551693 (and tp!775783 tp!775782))))

(declare-fun b!2442722 () Bool)

(declare-fun tp!775786 () Bool)

(assert (=> b!2442722 (= e!1551693 tp!775786)))

(assert (=> b!2441288 (= tp!775038 e!1551693)))

(assert (= (and b!2441288 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14867 (h!33894 l!9164))))) b!2442720))

(assert (= (and b!2441288 ((_ is Concat!11813) (regTwo!14867 (regOne!14867 (h!33894 l!9164))))) b!2442721))

(assert (= (and b!2441288 ((_ is Star!7177) (regTwo!14867 (regOne!14867 (h!33894 l!9164))))) b!2442722))

(assert (= (and b!2441288 ((_ is Union!7177) (regTwo!14867 (regOne!14867 (h!33894 l!9164))))) b!2442723))

(declare-fun b!2442727 () Bool)

(declare-fun e!1551694 () Bool)

(declare-fun tp!775790 () Bool)

(declare-fun tp!775789 () Bool)

(assert (=> b!2442727 (= e!1551694 (and tp!775790 tp!775789))))

(declare-fun b!2442724 () Bool)

(assert (=> b!2442724 (= e!1551694 tp_is_empty!11767)))

(declare-fun b!2442725 () Bool)

(declare-fun tp!775788 () Bool)

(declare-fun tp!775787 () Bool)

(assert (=> b!2442725 (= e!1551694 (and tp!775788 tp!775787))))

(declare-fun b!2442726 () Bool)

(declare-fun tp!775791 () Bool)

(assert (=> b!2442726 (= e!1551694 tp!775791)))

(assert (=> b!2441279 (= tp!775030 e!1551694)))

(assert (= (and b!2441279 ((_ is ElementMatch!7177) (reg!7506 (regTwo!14866 (h!33894 l!9164))))) b!2442724))

(assert (= (and b!2441279 ((_ is Concat!11813) (reg!7506 (regTwo!14866 (h!33894 l!9164))))) b!2442725))

(assert (= (and b!2441279 ((_ is Star!7177) (reg!7506 (regTwo!14866 (h!33894 l!9164))))) b!2442726))

(assert (= (and b!2441279 ((_ is Union!7177) (reg!7506 (regTwo!14866 (h!33894 l!9164))))) b!2442727))

(declare-fun b!2442731 () Bool)

(declare-fun e!1551695 () Bool)

(declare-fun tp!775795 () Bool)

(declare-fun tp!775794 () Bool)

(assert (=> b!2442731 (= e!1551695 (and tp!775795 tp!775794))))

(declare-fun b!2442728 () Bool)

(assert (=> b!2442728 (= e!1551695 tp_is_empty!11767)))

(declare-fun b!2442729 () Bool)

(declare-fun tp!775793 () Bool)

(declare-fun tp!775792 () Bool)

(assert (=> b!2442729 (= e!1551695 (and tp!775793 tp!775792))))

(declare-fun b!2442730 () Bool)

(declare-fun tp!775796 () Bool)

(assert (=> b!2442730 (= e!1551695 tp!775796)))

(assert (=> b!2441211 (= tp!774943 e!1551695)))

(assert (= (and b!2441211 ((_ is ElementMatch!7177) (h!33894 (t!208568 (t!208568 l!9164))))) b!2442728))

(assert (= (and b!2441211 ((_ is Concat!11813) (h!33894 (t!208568 (t!208568 l!9164))))) b!2442729))

(assert (= (and b!2441211 ((_ is Star!7177) (h!33894 (t!208568 (t!208568 l!9164))))) b!2442730))

(assert (= (and b!2441211 ((_ is Union!7177) (h!33894 (t!208568 (t!208568 l!9164))))) b!2442731))

(declare-fun b!2442732 () Bool)

(declare-fun e!1551696 () Bool)

(declare-fun tp!775797 () Bool)

(declare-fun tp!775798 () Bool)

(assert (=> b!2442732 (= e!1551696 (and tp!775797 tp!775798))))

(assert (=> b!2441211 (= tp!774944 e!1551696)))

(assert (= (and b!2441211 ((_ is Cons!28493) (t!208568 (t!208568 (t!208568 l!9164))))) b!2442732))

(declare-fun b!2442736 () Bool)

(declare-fun e!1551697 () Bool)

(declare-fun tp!775802 () Bool)

(declare-fun tp!775801 () Bool)

(assert (=> b!2442736 (= e!1551697 (and tp!775802 tp!775801))))

(declare-fun b!2442733 () Bool)

(assert (=> b!2442733 (= e!1551697 tp_is_empty!11767)))

(declare-fun b!2442734 () Bool)

(declare-fun tp!775800 () Bool)

(declare-fun tp!775799 () Bool)

(assert (=> b!2442734 (= e!1551697 (and tp!775800 tp!775799))))

(declare-fun b!2442735 () Bool)

(declare-fun tp!775803 () Bool)

(assert (=> b!2442735 (= e!1551697 tp!775803)))

(assert (=> b!2441169 (= tp!774892 e!1551697)))

(assert (= (and b!2441169 ((_ is ElementMatch!7177) (reg!7506 (regOne!14867 (regOne!14867 r!13927))))) b!2442733))

(assert (= (and b!2441169 ((_ is Concat!11813) (reg!7506 (regOne!14867 (regOne!14867 r!13927))))) b!2442734))

(assert (= (and b!2441169 ((_ is Star!7177) (reg!7506 (regOne!14867 (regOne!14867 r!13927))))) b!2442735))

(assert (= (and b!2441169 ((_ is Union!7177) (reg!7506 (regOne!14867 (regOne!14867 r!13927))))) b!2442736))

(declare-fun b!2442740 () Bool)

(declare-fun e!1551698 () Bool)

(declare-fun tp!775807 () Bool)

(declare-fun tp!775806 () Bool)

(assert (=> b!2442740 (= e!1551698 (and tp!775807 tp!775806))))

(declare-fun b!2442737 () Bool)

(assert (=> b!2442737 (= e!1551698 tp_is_empty!11767)))

(declare-fun b!2442738 () Bool)

(declare-fun tp!775805 () Bool)

(declare-fun tp!775804 () Bool)

(assert (=> b!2442738 (= e!1551698 (and tp!775805 tp!775804))))

(declare-fun b!2442739 () Bool)

(declare-fun tp!775808 () Bool)

(assert (=> b!2442739 (= e!1551698 tp!775808)))

(assert (=> b!2441263 (= tp!775008 e!1551698)))

(assert (= (and b!2441263 ((_ is ElementMatch!7177) (regOne!14867 (regOne!14867 (regTwo!14867 r!13927))))) b!2442737))

(assert (= (and b!2441263 ((_ is Concat!11813) (regOne!14867 (regOne!14867 (regTwo!14867 r!13927))))) b!2442738))

(assert (= (and b!2441263 ((_ is Star!7177) (regOne!14867 (regOne!14867 (regTwo!14867 r!13927))))) b!2442739))

(assert (= (and b!2441263 ((_ is Union!7177) (regOne!14867 (regOne!14867 (regTwo!14867 r!13927))))) b!2442740))

(declare-fun b!2442744 () Bool)

(declare-fun e!1551699 () Bool)

(declare-fun tp!775812 () Bool)

(declare-fun tp!775811 () Bool)

(assert (=> b!2442744 (= e!1551699 (and tp!775812 tp!775811))))

(declare-fun b!2442741 () Bool)

(assert (=> b!2442741 (= e!1551699 tp_is_empty!11767)))

(declare-fun b!2442742 () Bool)

(declare-fun tp!775810 () Bool)

(declare-fun tp!775809 () Bool)

(assert (=> b!2442742 (= e!1551699 (and tp!775810 tp!775809))))

(declare-fun b!2442743 () Bool)

(declare-fun tp!775813 () Bool)

(assert (=> b!2442743 (= e!1551699 tp!775813)))

(assert (=> b!2441263 (= tp!775007 e!1551699)))

(assert (= (and b!2441263 ((_ is ElementMatch!7177) (regTwo!14867 (regOne!14867 (regTwo!14867 r!13927))))) b!2442741))

(assert (= (and b!2441263 ((_ is Concat!11813) (regTwo!14867 (regOne!14867 (regTwo!14867 r!13927))))) b!2442742))

(assert (= (and b!2441263 ((_ is Star!7177) (regTwo!14867 (regOne!14867 (regTwo!14867 r!13927))))) b!2442743))

(assert (= (and b!2441263 ((_ is Union!7177) (regTwo!14867 (regOne!14867 (regTwo!14867 r!13927))))) b!2442744))

(declare-fun b!2442748 () Bool)

(declare-fun e!1551700 () Bool)

(declare-fun tp!775817 () Bool)

(declare-fun tp!775816 () Bool)

(assert (=> b!2442748 (= e!1551700 (and tp!775817 tp!775816))))

(declare-fun b!2442745 () Bool)

(assert (=> b!2442745 (= e!1551700 tp_is_empty!11767)))

(declare-fun b!2442746 () Bool)

(declare-fun tp!775815 () Bool)

(declare-fun tp!775814 () Bool)

(assert (=> b!2442746 (= e!1551700 (and tp!775815 tp!775814))))

(declare-fun b!2442747 () Bool)

(declare-fun tp!775818 () Bool)

(assert (=> b!2442747 (= e!1551700 tp!775818)))

(assert (=> b!2441254 (= tp!774999 e!1551700)))

(assert (= (and b!2441254 ((_ is ElementMatch!7177) (reg!7506 (regOne!14866 (regOne!14866 r!13927))))) b!2442745))

(assert (= (and b!2441254 ((_ is Concat!11813) (reg!7506 (regOne!14866 (regOne!14866 r!13927))))) b!2442746))

(assert (= (and b!2441254 ((_ is Star!7177) (reg!7506 (regOne!14866 (regOne!14866 r!13927))))) b!2442747))

(assert (= (and b!2441254 ((_ is Union!7177) (reg!7506 (regOne!14866 (regOne!14866 r!13927))))) b!2442748))

(declare-fun b!2442752 () Bool)

(declare-fun e!1551701 () Bool)

(declare-fun tp!775822 () Bool)

(declare-fun tp!775821 () Bool)

(assert (=> b!2442752 (= e!1551701 (and tp!775822 tp!775821))))

(declare-fun b!2442749 () Bool)

(assert (=> b!2442749 (= e!1551701 tp_is_empty!11767)))

(declare-fun b!2442750 () Bool)

(declare-fun tp!775820 () Bool)

(declare-fun tp!775819 () Bool)

(assert (=> b!2442750 (= e!1551701 (and tp!775820 tp!775819))))

(declare-fun b!2442751 () Bool)

(declare-fun tp!775823 () Bool)

(assert (=> b!2442751 (= e!1551701 tp!775823)))

(assert (=> b!2441245 (= tp!774986 e!1551701)))

(assert (= (and b!2441245 ((_ is ElementMatch!7177) (regOne!14866 (regTwo!14866 (reg!7506 r!13927))))) b!2442749))

(assert (= (and b!2441245 ((_ is Concat!11813) (regOne!14866 (regTwo!14866 (reg!7506 r!13927))))) b!2442750))

(assert (= (and b!2441245 ((_ is Star!7177) (regOne!14866 (regTwo!14866 (reg!7506 r!13927))))) b!2442751))

(assert (= (and b!2441245 ((_ is Union!7177) (regOne!14866 (regTwo!14866 (reg!7506 r!13927))))) b!2442752))

(declare-fun b!2442756 () Bool)

(declare-fun e!1551702 () Bool)

(declare-fun tp!775827 () Bool)

(declare-fun tp!775826 () Bool)

(assert (=> b!2442756 (= e!1551702 (and tp!775827 tp!775826))))

(declare-fun b!2442753 () Bool)

(assert (=> b!2442753 (= e!1551702 tp_is_empty!11767)))

(declare-fun b!2442754 () Bool)

(declare-fun tp!775825 () Bool)

(declare-fun tp!775824 () Bool)

(assert (=> b!2442754 (= e!1551702 (and tp!775825 tp!775824))))

(declare-fun b!2442755 () Bool)

(declare-fun tp!775828 () Bool)

(assert (=> b!2442755 (= e!1551702 tp!775828)))

(assert (=> b!2441245 (= tp!774985 e!1551702)))

(assert (= (and b!2441245 ((_ is ElementMatch!7177) (regTwo!14866 (regTwo!14866 (reg!7506 r!13927))))) b!2442753))

(assert (= (and b!2441245 ((_ is Concat!11813) (regTwo!14866 (regTwo!14866 (reg!7506 r!13927))))) b!2442754))

(assert (= (and b!2441245 ((_ is Star!7177) (regTwo!14866 (regTwo!14866 (reg!7506 r!13927))))) b!2442755))

(assert (= (and b!2441245 ((_ is Union!7177) (regTwo!14866 (regTwo!14866 (reg!7506 r!13927))))) b!2442756))

(declare-fun b_lambda!74961 () Bool)

(assert (= b_lambda!74957 (or start!238766 b_lambda!74961)))

(declare-fun bs!465107 () Bool)

(declare-fun d!705253 () Bool)

(assert (= bs!465107 (and d!705253 start!238766)))

(assert (=> bs!465107 (= (dynLambda!12256 lambda!92357 (h!33894 (t!208568 (t!208568 l!9164)))) (validRegex!2889 (h!33894 (t!208568 (t!208568 l!9164)))))))

(declare-fun m!2820023 () Bool)

(assert (=> bs!465107 m!2820023))

(assert (=> b!2441717 d!705253))

(declare-fun b_lambda!74963 () Bool)

(assert (= b_lambda!74955 (or d!704715 b_lambda!74963)))

(declare-fun bs!465108 () Bool)

(declare-fun d!705255 () Bool)

(assert (= bs!465108 (and d!705255 d!704715)))

(assert (=> bs!465108 (= (dynLambda!12256 lambda!92413 (h!33894 (t!208568 l!9164))) (validRegex!2889 (h!33894 (t!208568 l!9164))))))

(assert (=> bs!465108 m!2819207))

(assert (=> b!2441602 d!705255))

(declare-fun b_lambda!74965 () Bool)

(assert (= b_lambda!74953 (or d!704451 b_lambda!74965)))

(declare-fun bs!465109 () Bool)

(declare-fun d!705257 () Bool)

(assert (= bs!465109 (and d!705257 d!704451)))

(assert (=> bs!465109 (= (dynLambda!12256 lambda!92365 (h!33894 (t!208568 l!9164))) (validRegex!2889 (h!33894 (t!208568 l!9164))))))

(assert (=> bs!465109 m!2819207))

(assert (=> b!2441417 d!705257))

(declare-fun b_lambda!74967 () Bool)

(assert (= b_lambda!74959 (or d!704781 b_lambda!74967)))

(declare-fun bs!465110 () Bool)

(declare-fun d!705259 () Bool)

(assert (= bs!465110 (and d!705259 d!704781)))

(assert (=> bs!465110 (= (dynLambda!12256 lambda!92420 (h!33894 (t!208568 lt!878228))) (validRegex!2889 (h!33894 (t!208568 lt!878228))))))

(declare-fun m!2820025 () Bool)

(assert (=> bs!465110 m!2820025))

(assert (=> b!2441954 d!705259))

(declare-fun b_lambda!74969 () Bool)

(assert (= b_lambda!74951 (or d!704483 b_lambda!74969)))

(declare-fun bs!465111 () Bool)

(declare-fun d!705261 () Bool)

(assert (= bs!465111 (and d!705261 d!704483)))

(assert (=> bs!465111 (= (dynLambda!12256 lambda!92374 (h!33894 (t!208568 lt!878228))) (validRegex!2889 (h!33894 (t!208568 lt!878228))))))

(assert (=> bs!465111 m!2820025))

(assert (=> b!2441385 d!705261))

(check-sat (not b!2442694) (not b!2442272) (not bm!149638) (not d!704985) (not b!2441641) (not b!2442577) (not bs!465110) (not b!2442397) (not d!704875) (not d!705175) (not bm!149679) (not b!2441882) (not b!2442666) (not b!2441896) (not d!705203) (not b!2441697) (not bm!149674) (not b!2442522) (not b!2442615) (not b!2442360) (not d!704907) (not bm!149539) (not b!2442266) (not b!2441729) (not b!2441881) (not b!2442690) (not bm!149630) (not bm!149583) (not b!2442555) (not b!2442361) (not b!2441546) (not b!2442613) (not d!705247) (not bm!149567) (not b!2442208) (not d!705219) (not b!2442252) (not bm!149652) (not b!2442506) (not b!2442184) (not bm!149685) (not b!2441856) (not b!2442486) (not b!2442374) (not b!2442358) (not b!2442659) (not b!2442241) (not b!2442393) (not b!2442490) (not d!705007) (not b!2442390) (not bm!149641) (not b!2442297) (not b!2442277) (not b!2442333) (not b!2441688) (not b!2442312) (not b!2441624) (not b!2442224) (not bm!149569) (not b!2441668) (not b!2442483) (not b!2442533) (not bm!149553) (not b!2441868) (not bm!149604) (not b!2442538) (not b!2441580) (not b!2441545) (not bm!149563) (not b!2442665) (not b!2441976) (not b!2441541) (not b!2441811) (not b!2442248) (not b!2441483) (not b!2442372) (not b!2441620) (not b!2442189) (not b!2442739) (not b!2442651) (not b!2442599) (not b!2442539) (not b!2442487) (not b!2442406) (not b!2442511) (not b!2441946) (not b!2442380) (not b!2442683) (not b!2441867) (not b!2442264) (not b!2441677) (not b!2441294) (not bm!149592) (not b!2442305) (not d!704983) (not b!2442670) (not b!2442650) (not b!2442571) (not b!2441570) (not b!2442296) (not b!2442475) (not b!2442164) (not bm!149639) (not b!2442320) (not d!705173) (not b!2442671) (not b!2441830) (not b!2442366) (not b!2442634) (not b!2441543) (not b!2442574) (not bm!149635) (not b!2442238) (not b!2442373) (not d!704901) (not d!705121) (not b!2442023) (not b!2442618) (not b!2442561) (not b!2442755) (not b!2442645) (not b!2441422) (not b!2442603) (not b!2441709) (not b!2442003) (not d!705229) (not b!2442007) (not d!705131) (not b!2442471) (not b!2442050) (not b!2442348) (not b!2442527) (not b!2441979) (not b!2442213) (not b!2441921) (not b!2442386) (not bm!149657) (not b!2441918) (not b!2442124) (not b!2442197) (not b!2442394) (not bm!149667) (not b!2442426) (not b!2442182) (not b!2442698) (not b!2442441) (not b!2442515) (not b!2442079) (not b!2442413) (not b!2441337) (not b!2441627) (not b!2442623) (not b!2442025) (not b_lambda!74947) (not bm!149575) (not b!2442074) (not b!2442469) (not b!2442201) (not b!2442141) (not b!2441923) (not b!2442292) (not b!2442579) (not b!2442546) (not b!2442341) (not bm!149577) (not bm!149688) (not b!2442410) (not d!705251) (not b!2442746) (not b!2442454) (not b!2442115) (not b!2442610) (not b!2441334) (not b!2442509) (not b!2442150) (not b!2442112) (not b!2441336) (not b!2442242) (not b!2442450) (not b!2441621) (not b!2441451) (not b!2441884) (not b!2441974) (not b!2442136) (not bm!149695) (not d!705213) (not b!2442485) (not b!2441536) (not b!2442718) (not bm!149625) (not b!2442667) (not b!2442573) (not b!2442626) (not b!2442352) (not bm!149612) (not b!2442274) (not b!2442751) (not b!2442591) (not b!2442489) (not b!2442158) (not b!2442346) (not d!704885) (not b!2442284) (not b!2442675) (not b!2442322) (not b!2441878) (not bm!149645) (not b!2442253) (not b!2442357) (not b!2442222) (not b!2442443) (not b!2442601) (not d!705249) (not b!2442594) (not bm!149579) (not d!704877) (not b!2441656) (not b!2441879) (not b!2442447) (not b!2442505) (not b!2441639) (not d!704893) (not b!2442498) (not b!2441542) (not b!2442302) (not b!2442258) (not b!2442282) (not b!2441603) (not d!705047) (not b!2441854) (not b!2442510) (not b!2442080) (not bm!149671) (not b!2442376) (not b!2442513) (not b!2442673) (not b!2441865) (not b!2442750) (not bm!149605) (not b!2441942) (not b!2442478) (not bm!149544) (not b!2442654) (not b!2441350) (not b!2442647) (not b!2442431) (not b!2442176) (not b!2441924) (not d!704935) (not b!2442558) (not b!2441850) (not bm!149613) (not b!2442153) (not b!2441643) (not b!2442719) (not b!2442186) (not bm!149566) (not b!2442196) (not b!2442677) (not d!705227) (not b!2442232) (not b!2442401) (not b!2442002) (not b!2442491) (not b!2441519) (not d!705169) (not b!2442691) (not d!705015) (not b!2442209) (not b!2441507) (not bs!465107) (not bm!149627) (not bm!149589) (not b!2442404) (not b!2442149) (not b!2442042) (not b!2442477) (not b!2441304) (not b!2441971) (not b!2442229) (not b!2441660) (not b!2442016) (not b!2441550) (not b!2442145) (not d!705003) (not b!2442461) (not b!2442537) (not b!2442148) (not d!705135) (not b!2442679) (not bm!149668) (not b!2442364) (not b!2442298) (not b!2441342) (not b!2442162) (not d!705091) (not b!2442294) (not b!2442587) (not b!2442250) (not b!2442729) (not b!2442547) (not b!2441632) (not b!2441771) (not b!2442154) (not b!2442104) (not b!2442589) (not bm!149631) (not b!2442170) (not b!2442754) (not b!2442040) (not b!2442429) (not bm!149615) (not b!2442682) (not b!2442349) (not b!2441977) (not b!2442549) (not b!2442693) (not bm!149636) (not d!705105) (not b!2442661) (not b!2442246) (not b!2442425) (not b!2442744) (not bm!149594) (not b!2442142) (not b!2442653) (not b!2442204) (not b!2441498) (not b!2442734) (not b!2441791) (not bm!149551) (not b!2442575) (not b_lambda!74965) (not b!2441637) (not bm!149675) (not b!2442627) (not b!2441630) (not b!2441991) (not b!2442736) (not b!2442200) (not b!2442655) (not d!704903) (not b!2442193) (not bm!149692) (not b!2442005) (not bm!149599) (not bm!149696) (not b!2442172) (not b!2442606) (not b!2442529) (not b!2442726) (not b!2442353) (not bm!149626) (not d!705221) (not b!2441862) (not b!2442717) (not bm!149663) (not b!2442420) (not b!2441340) (not b!2442362) (not b_lambda!74925) (not b!2441578) (not bm!149597) (not b!2442437) (not b!2442225) (not b!2442501) (not b!2442290) (not bm!149570) (not b!2441665) (not bm!149624) (not b!2441583) (not b!2442669) (not b!2442098) (not b!2441724) (not b!2441468) (not b!2442438) (not b!2441360) (not b!2441848) (not b!2442642) (not b!2441430) (not b!2441485) (not d!705123) (not b!2441487) (not b!2442180) (not b!2441959) (not b!2442245) (not b!2441938) (not b!2441824) (not b!2442602) (not b!2442557) (not b!2441802) (not b!2442342) (not b!2442230) (not b!2441701) (not b!2441511) (not bm!149684) (not b!2442270) (not b!2441652) (not b!2442324) (not d!705243) (not b!2442120) (not b!2442046) (not b!2441588) (not b!2442595) (not b_lambda!74963) (not b!2442566) (not b!2441827) (not b!2441418) (not b!2442421) (not bm!149548) (not b!2442337) (not d!704891) (not b!2441445) (not b!2442678) (not b!2442221) (not b!2442414) (not b!2442710) (not b!2442581) (not b!2442310) (not bm!149690) (not b!2442535) (not b!2442481) (not b!2441307) (not b!2442000) (not bm!149670) (not b!2442244) (not b!2442178) (not b!2442495) (not b!2441368) (not b!2441779) (not b!2441388) (not b!2442609) (not b!2442435) (not bm!149642) (not b!2442465) (not b!2442706) (not bm!149562) (not b!2442586) (not b!2442156) (not b!2442611) (not bm!149580) (not b!2441386) (not b!2442466) (not b!2442727) (not d!704941) (not b!2442010) (not b!2442494) (not b!2442562) (not b!2442713) (not b!2442433) (not b!2442174) (not b!2441592) (not d!705027) (not b!2441940) (not b!2442256) (not b!2441625) (not b!2441614) (not b!2442663) (not d!705245) (not b!2442381) (not b!2442721) (not b!2442545) (not b!2441308) (not bm!149610) (not b!2442385) (not b!2442518) (not b!2441752) (not b!2442356) (not bm!149632) (not b!2442723) (not b!2442301) (not b!2442262) (not b!2441534) (not b!2442048) (not b!2442194) (not bm!149576) (not b!2442531) (not b!2442534) (not b!2442190) (not b!2442022) (not b!2442453) (not b!2441920) (not b!2442707) (not b!2441749) (not d!705183) (not b!2442551) (not b!2441446) (not b!2442442) (not b!2442523) (not b!2442288) (not b!2442350) (not b!2441356) (not b!2442681) (not b!2442146) (not b!2442583) (not bm!149598) (not bm!149543) (not b!2442625) (not b!2441463) (not bm!149538) (not d!705049) (not b!2442118) (not b!2441832) (not b!2442493) (not bs!465111) (not bm!149547) (not bm!149644) (not b!2441455) (not bm!149607) (not b!2442525) (not b!2442633) (not b!2441718) (not b!2442541) (not b!2442646) (not b!2442701) (not b!2442519) (not bm!149602) (not bs!465109) (not b!2442497) (not b!2441664) (not b!2442377) (not d!705161) (not b!2442281) (not b!2441888) (not b!2441561) (not bs!465108) (not b!2441581) (not b!2442020) (not d!705017) (not bm!149534) (not b_lambda!74967) (not b!2442369) (not d!705137) (not bm!149650) (not b!2442114) (not d!705199) (not b!2442703) (not b!2442725) (not b!2442117) (not b!2441774) (not b!2442702) (not b!2441773) (not bm!149682) (not b!2442332) (not b!2442336) (not d!705055) (not b!2441629) (not b!2442473) (not b!2442212) (not b!2441594) (not b!2442316) (not b!2441926) (not b!2441354) (not b!2442345) (not bm!149593) (not b!2442699) (not b!2442240) (not b!2441662) (not bm!149620) (not b!2442354) (not bm!149649) (not b!2442318) (not b!2442228) (not d!704879) (not b!2442389) (not bm!149595) (not b!2442639) (not b!2442398) (not b!2442685) (not b!2442593) (not b!2442306) (not d!705185) (not d!704979) (not b!2442686) (not b!2442177) (not d!705139) (not b!2442709) (not b!2442418) (not b!2442286) (not b!2442748) (not b!2442638) (not b!2442285) (not bm!149659) (not bm!149701) (not b!2441876) (not b!2442260) (not b!2442210) (not b!2442554) (not b!2442424) (not b!2442254) (not b!2441631) (not b!2442630) (not b!2441870) (not d!705163) (not b!2442082) (not b!2442711) (not b!2442526) (not b!2442076) (not b!2442643) (not b_lambda!74969) (not b!2442582) (not b!2442742) (not b!2442722) (not b!2441755) (not b!2442445) (not bm!149622) (not b!2441590) (not b!2442234) (not bm!149683) tp_is_empty!11767 (not b!2442396) (not b!2442144) (not b!2441605) (not b!2441750) (not b!2442257) (not b!2442021) (not b!2442409) (not bm!149656) (not bm!149691) (not b!2442649) (not b!2441944) (not d!705225) (not b!2442756) (not bm!149689) (not b!2442168) (not b!2442326) (not b!2441658) (not b!2442384) (not b!2442314) (not bm!149554) (not b!2442446) (not b!2441586) (not b!2442408) (not b!2442133) (not b!2442521) (not b!2441339) (not b!2442405) (not d!705051) (not b!2442340) (not b!2441377) (not b!2442705) (not b!2442422) (not b!2442265) (not bm!149611) (not b!2442747) (not b!2442474) (not b!2442138) (not b!2441930) (not b!2441864) (not b!2442226) (not b!2441351) (not b!2441727) (not b!2442059) (not d!704895) (not bm!149651) (not b!2442585) (not b!2442735) (not bm!149623) (not bm!149585) (not b!2442687) (not b!2442565) (not b!2441303) (not b!2442198) (not b!2442590) (not d!705053) (not b!2442731) (not b!2441776) (not b!2442006) (not b!2441653) (not b!2442427) (not b!2442416) (not b!2442449) (not b!2442206) (not b!2441836) (not bm!149662) (not d!705223) (not b!2442017) (not b!2441826) (not b!2442598) (not bm!149697) (not b!2442467) (not b!2441759) (not d!705205) (not b!2442338) (not b!2442455) (not b!2442045) (not b!2442430) (not b!2442417) (not b!2442218) (not bm!149556) (not b!2441730) (not b!2442278) (not b!2442517) (not bm!149664) (not b!2442300) (not b!2442503) (not b!2442106) (not b!2442597) (not b!2442132) (not b!2441584) (not b!2442181) (not b!2441523) (not b!2442715) (not d!705153) (not b_lambda!74945) (not b!2441783) (not b!2441747) (not bm!149698) (not b!2441474) (not b!2442641) (not b!2441905) (not d!705079) (not b!2442629) (not b!2441538) (not b!2442412) (not b!2442368) (not b!2442202) (not b!2442273) (not d!705133) (not b!2442321) (not b!2441851) (not b!2442530) (not b!2441313) (not b!2441618) (not b!2442550) (not d!704981) (not b!2441443) (not d!704997) (not b!2442657) (not d!705165) (not bm!149574) (not b!2442635) (not b!2442137) (not b!2442738) (not b!2442134) (not b!2441983) (not b!2442165) (not b!2442697) (not b!2442009) (not bm!149680) (not b!2441734) (not d!705019) (not bm!149686) (not b!2441616) (not b!2442559) (not b!2442400) (not bm!149616) (not b!2442607) (not b!2442309) (not b!2442463) (not b!2442008) (not bm!149586) (not b!2441520) (not b!2441829) (not b!2442166) (not b!2442157) (not b!2442304) (not b!2441448) (not d!704939) (not bm!149646) (not b!2442313) (not b!2442402) (not b!2442617) (not b!2441800) (not b!2442160) (not b!2442714) (not b!2442507) (not bm!149660) (not b!2442280) (not b!2442334) (not b!2442216) (not b!2442330) (not bm!149601) (not bm!149676) (not b!2442451) (not b!2442329) (not b!2442293) (not b!2442392) (not b!2442205) (not b!2442637) (not b!2442570) (not b!2442502) (not b!2441753) (not b!2442344) (not b!2442388) (not bm!149619) (not b!2442622) (not b!2442514) (not b!2441973) (not b!2442470) (not b!2442169) (not b!2442605) (not bm!149590) (not b!2442569) (not b!2442325) (not bm!149535) (not bm!149541) (not b!2442365) (not b!2442382) (not d!705237) (not d!705067) (not b!2442434) (not b!2442217) (not d!705207) (not b!2442752) (not b!2441353) (not b!2442249) (not b!2442043) (not b!2442621) (not b!2441348) (not b!2441572) (not b!2442152) (not b!2442662) (not b!2442236) (not bm!149550) (not b_lambda!74961) (not b!2442732) (not b!2441726) (not b!2442462) (not b!2441532) (not b!2442289) (not b!2442317) (not b!2442567) (not bm!149571) (not b!2441555) (not b!2441955) (not b!2442695) (not b!2442077) (not d!705201) (not b!2442018) (not b!2442631) (not b!2442479) (not b!2442233) (not b!2442658) (not b!2441321) (not b!2442185) (not b!2442188) (not b!2442543) (not b!2442674) (not b!2442439) (not b!2441547) (not b!2442457) (not b!2442499) (not b!2442103) (not b!2442563) (not b!2442743) (not b!2442276) (not b!2442086) (not b!2441777) (not b!2442220) (not b!2442100) (not b!2442482) (not b!2441489) (not b!2442689) (not b!2441628) (not b!2442237) (not bm!149582) (not b!2441682) (not b!2442173) (not b!2441732) (not b!2442614) (not bm!149653) (not b!2442740) (not b!2442619) (not b!2442214) (not b!2442328) (not b!2442553) (not b!2441449) (not b!2442458) (not b!2442578) (not b!2441548) (not b!2442192) (not bm!149532) (not b_lambda!74949) (not b!2442268) (not b!2442269) (not b!2442459) (not b!2442378) (not b!2442161) (not b!2441853) (not b!2442308) (not b!2442026) (not b!2442730) (not b!2442101) (not d!705231) (not b!2442542) (not bm!149542) (not b!2442140) (not bm!149608) (not b!2442261) (not b!2442370) (not bm!149561) (not b!2442064))
(check-sat)
