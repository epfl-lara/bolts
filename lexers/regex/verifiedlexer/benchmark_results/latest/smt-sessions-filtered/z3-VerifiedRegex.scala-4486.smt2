; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238622 () Bool)

(assert start!238622)

(declare-fun b!2437841 () Bool)

(assert (=> b!2437841 true))

(assert (=> b!2437841 true))

(declare-fun lambda!92151 () Int)

(declare-fun lambda!92150 () Int)

(assert (=> b!2437841 (not (= lambda!92151 lambda!92150))))

(assert (=> b!2437841 true))

(assert (=> b!2437841 true))

(declare-fun e!1549235 () Bool)

(declare-fun e!1549234 () Bool)

(assert (=> b!2437841 (= e!1549235 e!1549234)))

(declare-fun res!1034931 () Bool)

(assert (=> b!2437841 (=> res!1034931 e!1549234)))

(declare-fun lt!877747 () Bool)

(declare-fun lt!877752 () Bool)

(assert (=> b!2437841 (= res!1034931 (not (= lt!877747 lt!877752)))))

(declare-fun Exists!1201 (Int) Bool)

(assert (=> b!2437841 (= (Exists!1201 lambda!92150) (Exists!1201 lambda!92151))))

(declare-datatypes ((Unit!41713 0))(
  ( (Unit!41714) )
))
(declare-fun lt!877754 () Unit!41713)

(declare-datatypes ((C!14488 0))(
  ( (C!14489 (val!8486 Int)) )
))
(declare-datatypes ((Regex!7165 0))(
  ( (ElementMatch!7165 (c!388985 C!14488)) (Concat!11801 (regOne!14842 Regex!7165) (regTwo!14842 Regex!7165)) (EmptyExpr!7165) (Star!7165 (reg!7494 Regex!7165)) (EmptyLang!7165) (Union!7165 (regOne!14843 Regex!7165) (regTwo!14843 Regex!7165)) )
))
(declare-fun r!13927 () Regex!7165)

(declare-datatypes ((List!28566 0))(
  ( (Nil!28468) (Cons!28468 (h!33869 C!14488) (t!208543 List!28566)) )
))
(declare-fun s!9460 () List!28566)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!446 (Regex!7165 Regex!7165 List!28566) Unit!41713)

(assert (=> b!2437841 (= lt!877754 (lemmaExistCutMatchRandMatchRSpecEquivalent!446 (regOne!14842 r!13927) (regTwo!14842 r!13927) s!9460))))

(assert (=> b!2437841 (= lt!877752 (Exists!1201 lambda!92150))))

(declare-datatypes ((tuple2!28086 0))(
  ( (tuple2!28087 (_1!16584 List!28566) (_2!16584 List!28566)) )
))
(declare-datatypes ((Option!5654 0))(
  ( (None!5653) (Some!5653 (v!31061 tuple2!28086)) )
))
(declare-fun isDefined!4480 (Option!5654) Bool)

(declare-fun findConcatSeparation!762 (Regex!7165 Regex!7165 List!28566 List!28566 List!28566) Option!5654)

(assert (=> b!2437841 (= lt!877752 (isDefined!4480 (findConcatSeparation!762 (regOne!14842 r!13927) (regTwo!14842 r!13927) Nil!28468 s!9460 s!9460)))))

(declare-fun lt!877753 () Unit!41713)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!700 (Regex!7165 Regex!7165 List!28566) Unit!41713)

(assert (=> b!2437841 (= lt!877753 (lemmaFindConcatSeparationEquivalentToExists!700 (regOne!14842 r!13927) (regTwo!14842 r!13927) s!9460))))

(declare-fun res!1034929 () Bool)

(declare-fun e!1549238 () Bool)

(assert (=> start!238622 (=> (not res!1034929) (not e!1549238))))

(declare-datatypes ((List!28567 0))(
  ( (Nil!28469) (Cons!28469 (h!33870 Regex!7165) (t!208544 List!28567)) )
))
(declare-fun l!9164 () List!28567)

(declare-fun lambda!92149 () Int)

(declare-fun forall!5799 (List!28567 Int) Bool)

(assert (=> start!238622 (= res!1034929 (forall!5799 l!9164 lambda!92149))))

(assert (=> start!238622 e!1549238))

(declare-fun e!1549239 () Bool)

(assert (=> start!238622 e!1549239))

(declare-fun e!1549241 () Bool)

(assert (=> start!238622 e!1549241))

(declare-fun e!1549236 () Bool)

(assert (=> start!238622 e!1549236))

(declare-fun b!2437842 () Bool)

(declare-fun tp!774147 () Bool)

(declare-fun tp!774143 () Bool)

(assert (=> b!2437842 (= e!1549239 (and tp!774147 tp!774143))))

(declare-fun b!2437843 () Bool)

(declare-fun tp!774142 () Bool)

(assert (=> b!2437843 (= e!1549241 tp!774142)))

(declare-fun b!2437844 () Bool)

(declare-fun e!1549242 () Bool)

(assert (=> b!2437844 (= e!1549234 e!1549242)))

(declare-fun res!1034932 () Bool)

(assert (=> b!2437844 (=> res!1034932 e!1549242)))

(declare-fun lt!877750 () List!28567)

(declare-fun isEmpty!16511 (List!28567) Bool)

(assert (=> b!2437844 (= res!1034932 (not (isEmpty!16511 lt!877750)))))

(declare-fun tail!3800 (List!28567) List!28567)

(assert (=> b!2437844 (= lt!877750 (tail!3800 l!9164))))

(declare-fun b!2437845 () Bool)

(declare-fun e!1549237 () Bool)

(declare-fun lt!877751 () Regex!7165)

(declare-fun matchR!3280 (Regex!7165 List!28566) Bool)

(assert (=> b!2437845 (= e!1549237 (matchR!3280 lt!877751 s!9460))))

(declare-fun b!2437846 () Bool)

(declare-fun e!1549240 () Bool)

(assert (=> b!2437846 (= e!1549240 true)))

(declare-fun b!2437847 () Bool)

(assert (=> b!2437847 (= e!1549238 (not e!1549235))))

(declare-fun res!1034934 () Bool)

(assert (=> b!2437847 (=> res!1034934 e!1549235)))

(get-info :version)

(assert (=> b!2437847 (= res!1034934 (not ((_ is Concat!11801) r!13927)))))

(declare-fun lt!877749 () Bool)

(assert (=> b!2437847 (= lt!877749 lt!877747)))

(declare-fun matchRSpec!1012 (Regex!7165 List!28566) Bool)

(assert (=> b!2437847 (= lt!877747 (matchRSpec!1012 r!13927 s!9460))))

(assert (=> b!2437847 (= lt!877749 (matchR!3280 r!13927 s!9460))))

(declare-fun lt!877756 () Unit!41713)

(declare-fun mainMatchTheorem!1012 (Regex!7165 List!28566) Unit!41713)

(assert (=> b!2437847 (= lt!877756 (mainMatchTheorem!1012 r!13927 s!9460))))

(declare-fun b!2437848 () Bool)

(declare-fun tp_is_empty!11743 () Bool)

(assert (=> b!2437848 (= e!1549241 tp_is_empty!11743)))

(declare-fun b!2437849 () Bool)

(declare-fun tp!774144 () Bool)

(declare-fun tp!774141 () Bool)

(assert (=> b!2437849 (= e!1549241 (and tp!774144 tp!774141))))

(declare-fun b!2437850 () Bool)

(declare-fun res!1034933 () Bool)

(assert (=> b!2437850 (=> res!1034933 e!1549234)))

(assert (=> b!2437850 (= res!1034933 (isEmpty!16511 l!9164))))

(declare-fun b!2437851 () Bool)

(declare-fun res!1034928 () Bool)

(assert (=> b!2437851 (=> res!1034928 e!1549242)))

(declare-fun generalisedConcat!266 (List!28567) Regex!7165)

(assert (=> b!2437851 (= res!1034928 (not (= (generalisedConcat!266 lt!877750) EmptyExpr!7165)))))

(declare-fun b!2437852 () Bool)

(declare-fun e!1549233 () Bool)

(assert (=> b!2437852 (= e!1549233 e!1549240)))

(declare-fun res!1034935 () Bool)

(assert (=> b!2437852 (=> res!1034935 e!1549240)))

(declare-fun lt!877755 () Regex!7165)

(declare-fun validRegex!2879 (Regex!7165) Bool)

(assert (=> b!2437852 (= res!1034935 (not (validRegex!2879 lt!877755)))))

(assert (=> b!2437852 e!1549237))

(declare-fun res!1034930 () Bool)

(assert (=> b!2437852 (=> (not res!1034930) (not e!1549237))))

(declare-fun ++!7070 (List!28566 List!28566) List!28566)

(assert (=> b!2437852 (= res!1034930 (matchR!3280 lt!877751 (++!7070 s!9460 Nil!28468)))))

(assert (=> b!2437852 (= lt!877751 (Concat!11801 lt!877755 EmptyExpr!7165))))

(declare-fun lt!877748 () Unit!41713)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!112 (Regex!7165 Regex!7165 List!28566 List!28566) Unit!41713)

(assert (=> b!2437852 (= lt!877748 (lemmaTwoRegexMatchThenConcatMatchesConcatString!112 lt!877755 EmptyExpr!7165 s!9460 Nil!28468))))

(declare-fun b!2437853 () Bool)

(declare-fun res!1034936 () Bool)

(assert (=> b!2437853 (=> (not res!1034936) (not e!1549238))))

(assert (=> b!2437853 (= res!1034936 (= r!13927 (generalisedConcat!266 l!9164)))))

(declare-fun b!2437854 () Bool)

(declare-fun tp!774145 () Bool)

(assert (=> b!2437854 (= e!1549236 (and tp_is_empty!11743 tp!774145))))

(declare-fun b!2437855 () Bool)

(declare-fun tp!774146 () Bool)

(declare-fun tp!774140 () Bool)

(assert (=> b!2437855 (= e!1549241 (and tp!774146 tp!774140))))

(declare-fun b!2437856 () Bool)

(assert (=> b!2437856 (= e!1549242 e!1549233)))

(declare-fun res!1034927 () Bool)

(assert (=> b!2437856 (=> res!1034927 e!1549233)))

(assert (=> b!2437856 (= res!1034927 (not (matchR!3280 lt!877755 s!9460)))))

(declare-fun head!5527 (List!28567) Regex!7165)

(assert (=> b!2437856 (= lt!877755 (head!5527 l!9164))))

(assert (= (and start!238622 res!1034929) b!2437853))

(assert (= (and b!2437853 res!1034936) b!2437847))

(assert (= (and b!2437847 (not res!1034934)) b!2437841))

(assert (= (and b!2437841 (not res!1034931)) b!2437850))

(assert (= (and b!2437850 (not res!1034933)) b!2437844))

(assert (= (and b!2437844 (not res!1034932)) b!2437851))

(assert (= (and b!2437851 (not res!1034928)) b!2437856))

(assert (= (and b!2437856 (not res!1034927)) b!2437852))

(assert (= (and b!2437852 res!1034930) b!2437845))

(assert (= (and b!2437852 (not res!1034935)) b!2437846))

(assert (= (and start!238622 ((_ is Cons!28469) l!9164)) b!2437842))

(assert (= (and start!238622 ((_ is ElementMatch!7165) r!13927)) b!2437848))

(assert (= (and start!238622 ((_ is Concat!11801) r!13927)) b!2437849))

(assert (= (and start!238622 ((_ is Star!7165) r!13927)) b!2437843))

(assert (= (and start!238622 ((_ is Union!7165) r!13927)) b!2437855))

(assert (= (and start!238622 ((_ is Cons!28468) s!9460)) b!2437854))

(declare-fun m!2816973 () Bool)

(assert (=> b!2437847 m!2816973))

(declare-fun m!2816975 () Bool)

(assert (=> b!2437847 m!2816975))

(declare-fun m!2816977 () Bool)

(assert (=> b!2437847 m!2816977))

(declare-fun m!2816979 () Bool)

(assert (=> start!238622 m!2816979))

(declare-fun m!2816981 () Bool)

(assert (=> b!2437841 m!2816981))

(declare-fun m!2816983 () Bool)

(assert (=> b!2437841 m!2816983))

(declare-fun m!2816985 () Bool)

(assert (=> b!2437841 m!2816985))

(assert (=> b!2437841 m!2816981))

(declare-fun m!2816987 () Bool)

(assert (=> b!2437841 m!2816987))

(declare-fun m!2816989 () Bool)

(assert (=> b!2437841 m!2816989))

(declare-fun m!2816991 () Bool)

(assert (=> b!2437841 m!2816991))

(assert (=> b!2437841 m!2816987))

(declare-fun m!2816993 () Bool)

(assert (=> b!2437856 m!2816993))

(declare-fun m!2816995 () Bool)

(assert (=> b!2437856 m!2816995))

(declare-fun m!2816997 () Bool)

(assert (=> b!2437852 m!2816997))

(declare-fun m!2816999 () Bool)

(assert (=> b!2437852 m!2816999))

(assert (=> b!2437852 m!2816999))

(declare-fun m!2817001 () Bool)

(assert (=> b!2437852 m!2817001))

(declare-fun m!2817003 () Bool)

(assert (=> b!2437852 m!2817003))

(declare-fun m!2817005 () Bool)

(assert (=> b!2437845 m!2817005))

(declare-fun m!2817007 () Bool)

(assert (=> b!2437853 m!2817007))

(declare-fun m!2817009 () Bool)

(assert (=> b!2437850 m!2817009))

(declare-fun m!2817011 () Bool)

(assert (=> b!2437851 m!2817011))

(declare-fun m!2817013 () Bool)

(assert (=> b!2437844 m!2817013))

(declare-fun m!2817015 () Bool)

(assert (=> b!2437844 m!2817015))

(check-sat (not b!2437854) (not b!2437852) (not b!2437855) tp_is_empty!11743 (not b!2437842) (not start!238622) (not b!2437851) (not b!2437843) (not b!2437856) (not b!2437853) (not b!2437841) (not b!2437845) (not b!2437847) (not b!2437849) (not b!2437850) (not b!2437844))
(check-sat)
