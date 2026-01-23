; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735124 () Bool)

(assert start!735124)

(declare-fun b!7634891 () Bool)

(assert (=> b!7634891 true))

(assert (=> b!7634891 true))

(declare-fun bs!1944168 () Bool)

(declare-fun b!7634897 () Bool)

(assert (= bs!1944168 (and b!7634897 b!7634891)))

(declare-fun lambda!469281 () Int)

(declare-fun lambda!469280 () Int)

(assert (=> bs!1944168 (not (= lambda!469281 lambda!469280))))

(assert (=> b!7634897 true))

(assert (=> b!7634897 true))

(declare-fun b!7634887 () Bool)

(declare-fun e!4538755 () Bool)

(declare-fun tp_is_empty!51161 () Bool)

(declare-fun tp!2228892 () Bool)

(assert (=> b!7634887 (= e!4538755 (and tp_is_empty!51161 tp!2228892))))

(declare-fun b!7634888 () Bool)

(declare-datatypes ((Unit!167764 0))(
  ( (Unit!167765) )
))
(declare-fun e!4538761 () Unit!167764)

(declare-fun Unit!167766 () Unit!167764)

(assert (=> b!7634888 (= e!4538761 Unit!167766)))

(declare-datatypes ((C!41132 0))(
  ( (C!41133 (val!31006 Int)) )
))
(declare-datatypes ((List!73254 0))(
  ( (Nil!73130) (Cons!73130 (h!79578 C!41132) (t!387989 List!73254)) )
))
(declare-datatypes ((tuple2!69364 0))(
  ( (tuple2!69365 (_1!37985 List!73254) (_2!37985 List!73254)) )
))
(declare-fun lt!2659419 () tuple2!69364)

(declare-datatypes ((Option!17476 0))(
  ( (None!17475) (Some!17475 (v!54610 tuple2!69364)) )
))
(declare-fun lt!2659418 () Option!17476)

(declare-fun get!25869 (Option!17476) tuple2!69364)

(assert (=> b!7634888 (= lt!2659419 (get!25869 lt!2659418))))

(declare-fun lt!2659416 () Unit!167764)

(declare-fun s!9605 () List!73254)

(declare-datatypes ((Regex!20403 0))(
  ( (ElementMatch!20403 (c!1406450 C!41132)) (Concat!29248 (regOne!41318 Regex!20403) (regTwo!41318 Regex!20403)) (EmptyExpr!20403) (Star!20403 (reg!20732 Regex!20403)) (EmptyLang!20403) (Union!20403 (regOne!41319 Regex!20403) (regTwo!41319 Regex!20403)) )
))
(declare-fun r!14126 () Regex!20403)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!160 (Regex!20403 Regex!20403 List!73254 List!73254 List!73254) Unit!167764)

(assert (=> b!7634888 (= lt!2659416 (lemmaFindSeparationIsDefinedThenConcatMatches!160 (regOne!41318 r!14126) (regTwo!41318 r!14126) (_1!37985 lt!2659419) (_2!37985 lt!2659419) s!9605))))

(declare-fun res!3057815 () Bool)

(declare-fun matchR!9906 (Regex!20403 List!73254) Bool)

(declare-fun ++!17683 (List!73254 List!73254) List!73254)

(assert (=> b!7634888 (= res!3057815 (matchR!9906 r!14126 (++!17683 (_1!37985 lt!2659419) (_2!37985 lt!2659419))))))

(declare-fun e!4538756 () Bool)

(assert (=> b!7634888 (=> (not res!3057815) (not e!4538756))))

(assert (=> b!7634888 e!4538756))

(declare-fun res!3057816 () Bool)

(declare-fun e!4538757 () Bool)

(assert (=> start!735124 (=> (not res!3057816) (not e!4538757))))

(declare-fun validRegex!10821 (Regex!20403) Bool)

(assert (=> start!735124 (= res!3057816 (validRegex!10821 r!14126))))

(assert (=> start!735124 e!4538757))

(declare-fun e!4538759 () Bool)

(assert (=> start!735124 e!4538759))

(assert (=> start!735124 e!4538755))

(declare-fun b!7634889 () Bool)

(declare-fun tp!2228896 () Bool)

(declare-fun tp!2228897 () Bool)

(assert (=> b!7634889 (= e!4538759 (and tp!2228896 tp!2228897))))

(declare-fun b!7634890 () Bool)

(declare-fun res!3057811 () Bool)

(assert (=> b!7634890 (=> (not res!3057811) (not e!4538757))))

(get-info :version)

(assert (=> b!7634890 (= res!3057811 (and (not ((_ is EmptyExpr!20403) r!14126)) (not ((_ is EmptyLang!20403) r!14126)) (not ((_ is ElementMatch!20403) r!14126)) (not ((_ is Union!20403) r!14126)) (not ((_ is Star!20403) r!14126))))))

(declare-fun e!4538760 () Bool)

(assert (=> b!7634891 (= e!4538757 (not e!4538760))))

(declare-fun res!3057813 () Bool)

(assert (=> b!7634891 (=> res!3057813 e!4538760)))

(assert (=> b!7634891 (= res!3057813 (matchR!9906 r!14126 s!9605))))

(declare-fun lt!2659420 () Bool)

(declare-fun Exists!4557 (Int) Bool)

(assert (=> b!7634891 (= lt!2659420 (Exists!4557 lambda!469280))))

(declare-fun isDefined!14092 (Option!17476) Bool)

(assert (=> b!7634891 (= lt!2659420 (isDefined!14092 lt!2659418))))

(declare-fun findConcatSeparation!3506 (Regex!20403 Regex!20403 List!73254 List!73254 List!73254) Option!17476)

(assert (=> b!7634891 (= lt!2659418 (findConcatSeparation!3506 (regOne!41318 r!14126) (regTwo!41318 r!14126) Nil!73130 s!9605 s!9605))))

(declare-fun lt!2659414 () Unit!167764)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3264 (Regex!20403 Regex!20403 List!73254) Unit!167764)

(assert (=> b!7634891 (= lt!2659414 (lemmaFindConcatSeparationEquivalentToExists!3264 (regOne!41318 r!14126) (regTwo!41318 r!14126) s!9605))))

(declare-fun b!7634892 () Bool)

(declare-fun e!4538758 () Bool)

(assert (=> b!7634892 (= e!4538760 e!4538758)))

(declare-fun res!3057812 () Bool)

(assert (=> b!7634892 (=> res!3057812 e!4538758)))

(assert (=> b!7634892 (= res!3057812 (Exists!4557 lambda!469280))))

(declare-fun lt!2659415 () Unit!167764)

(assert (=> b!7634892 (= lt!2659415 e!4538761)))

(declare-fun c!1406449 () Bool)

(assert (=> b!7634892 (= c!1406449 lt!2659420)))

(declare-fun b!7634893 () Bool)

(declare-fun Unit!167767 () Unit!167764)

(assert (=> b!7634893 (= e!4538761 Unit!167767)))

(declare-fun b!7634894 () Bool)

(declare-fun tp!2228894 () Bool)

(assert (=> b!7634894 (= e!4538759 tp!2228894)))

(declare-fun b!7634895 () Bool)

(assert (=> b!7634895 (= e!4538756 false)))

(declare-fun b!7634896 () Bool)

(assert (=> b!7634896 (= e!4538759 tp_is_empty!51161)))

(declare-fun res!3057814 () Bool)

(assert (=> b!7634897 (=> res!3057814 e!4538758)))

(assert (=> b!7634897 (= res!3057814 (not (Exists!4557 lambda!469281)))))

(declare-fun b!7634898 () Bool)

(assert (=> b!7634898 (= e!4538758 true)))

(declare-fun lt!2659417 () tuple2!69364)

(declare-fun pickWitness!474 (Int) tuple2!69364)

(assert (=> b!7634898 (= lt!2659417 (pickWitness!474 lambda!469281))))

(declare-fun b!7634899 () Bool)

(declare-fun tp!2228893 () Bool)

(declare-fun tp!2228895 () Bool)

(assert (=> b!7634899 (= e!4538759 (and tp!2228893 tp!2228895))))

(assert (= (and start!735124 res!3057816) b!7634890))

(assert (= (and b!7634890 res!3057811) b!7634891))

(assert (= (and b!7634891 (not res!3057813)) b!7634892))

(assert (= (and b!7634892 c!1406449) b!7634888))

(assert (= (and b!7634892 (not c!1406449)) b!7634893))

(assert (= (and b!7634888 res!3057815) b!7634895))

(assert (= (and b!7634892 (not res!3057812)) b!7634897))

(assert (= (and b!7634897 (not res!3057814)) b!7634898))

(assert (= (and start!735124 ((_ is ElementMatch!20403) r!14126)) b!7634896))

(assert (= (and start!735124 ((_ is Concat!29248) r!14126)) b!7634889))

(assert (= (and start!735124 ((_ is Star!20403) r!14126)) b!7634894))

(assert (= (and start!735124 ((_ is Union!20403) r!14126)) b!7634899))

(assert (= (and start!735124 ((_ is Cons!73130) s!9605)) b!7634887))

(declare-fun m!8159974 () Bool)

(assert (=> b!7634898 m!8159974))

(declare-fun m!8159976 () Bool)

(assert (=> b!7634897 m!8159976))

(declare-fun m!8159978 () Bool)

(assert (=> b!7634892 m!8159978))

(declare-fun m!8159980 () Bool)

(assert (=> start!735124 m!8159980))

(declare-fun m!8159982 () Bool)

(assert (=> b!7634888 m!8159982))

(declare-fun m!8159984 () Bool)

(assert (=> b!7634888 m!8159984))

(declare-fun m!8159986 () Bool)

(assert (=> b!7634888 m!8159986))

(assert (=> b!7634888 m!8159986))

(declare-fun m!8159988 () Bool)

(assert (=> b!7634888 m!8159988))

(declare-fun m!8159990 () Bool)

(assert (=> b!7634891 m!8159990))

(declare-fun m!8159992 () Bool)

(assert (=> b!7634891 m!8159992))

(assert (=> b!7634891 m!8159978))

(declare-fun m!8159994 () Bool)

(assert (=> b!7634891 m!8159994))

(declare-fun m!8159996 () Bool)

(assert (=> b!7634891 m!8159996))

(check-sat (not b!7634898) (not b!7634891) (not b!7634892) (not b!7634899) (not b!7634887) (not start!735124) tp_is_empty!51161 (not b!7634897) (not b!7634888) (not b!7634894) (not b!7634889))
(check-sat)
