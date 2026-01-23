; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735132 () Bool)

(assert start!735132)

(declare-fun b!7635145 () Bool)

(assert (=> b!7635145 true))

(assert (=> b!7635145 true))

(declare-fun bs!1944176 () Bool)

(declare-fun b!7635154 () Bool)

(assert (= bs!1944176 (and b!7635154 b!7635145)))

(declare-fun lambda!469321 () Int)

(declare-fun lambda!469320 () Int)

(assert (=> bs!1944176 (not (= lambda!469321 lambda!469320))))

(assert (=> b!7635154 true))

(assert (=> b!7635154 true))

(declare-fun b!7635143 () Bool)

(declare-fun e!4538878 () Bool)

(assert (=> b!7635143 (= e!4538878 false)))

(declare-fun b!7635144 () Bool)

(declare-datatypes ((Unit!167780 0))(
  ( (Unit!167781) )
))
(declare-fun e!4538883 () Unit!167780)

(declare-fun Unit!167782 () Unit!167780)

(assert (=> b!7635144 (= e!4538883 Unit!167782)))

(declare-fun e!4538882 () Bool)

(declare-fun e!4538876 () Bool)

(assert (=> b!7635145 (= e!4538882 (not e!4538876))))

(declare-fun res!3057972 () Bool)

(assert (=> b!7635145 (=> res!3057972 e!4538876)))

(declare-datatypes ((C!41140 0))(
  ( (C!41141 (val!31010 Int)) )
))
(declare-datatypes ((Regex!20407 0))(
  ( (ElementMatch!20407 (c!1406466 C!41140)) (Concat!29252 (regOne!41326 Regex!20407) (regTwo!41326 Regex!20407)) (EmptyExpr!20407) (Star!20407 (reg!20736 Regex!20407)) (EmptyLang!20407) (Union!20407 (regOne!41327 Regex!20407) (regTwo!41327 Regex!20407)) )
))
(declare-fun r!14126 () Regex!20407)

(declare-datatypes ((List!73258 0))(
  ( (Nil!73134) (Cons!73134 (h!79582 C!41140) (t!387993 List!73258)) )
))
(declare-fun s!9605 () List!73258)

(declare-fun matchR!9910 (Regex!20407 List!73258) Bool)

(assert (=> b!7635145 (= res!3057972 (matchR!9910 r!14126 s!9605))))

(declare-fun lt!2659521 () Bool)

(declare-fun Exists!4561 (Int) Bool)

(assert (=> b!7635145 (= lt!2659521 (Exists!4561 lambda!469320))))

(declare-datatypes ((tuple2!69372 0))(
  ( (tuple2!69373 (_1!37989 List!73258) (_2!37989 List!73258)) )
))
(declare-datatypes ((Option!17480 0))(
  ( (None!17479) (Some!17479 (v!54614 tuple2!69372)) )
))
(declare-fun lt!2659519 () Option!17480)

(declare-fun isDefined!14096 (Option!17480) Bool)

(assert (=> b!7635145 (= lt!2659521 (isDefined!14096 lt!2659519))))

(declare-fun findConcatSeparation!3510 (Regex!20407 Regex!20407 List!73258 List!73258 List!73258) Option!17480)

(assert (=> b!7635145 (= lt!2659519 (findConcatSeparation!3510 (regOne!41326 r!14126) (regTwo!41326 r!14126) Nil!73134 s!9605 s!9605))))

(declare-fun lt!2659522 () Unit!167780)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3268 (Regex!20407 Regex!20407 List!73258) Unit!167780)

(assert (=> b!7635145 (= lt!2659522 (lemmaFindConcatSeparationEquivalentToExists!3268 (regOne!41326 r!14126) (regTwo!41326 r!14126) s!9605))))

(declare-fun res!3057976 () Bool)

(assert (=> start!735132 (=> (not res!3057976) (not e!4538882))))

(declare-fun validRegex!10825 (Regex!20407) Bool)

(assert (=> start!735132 (= res!3057976 (validRegex!10825 r!14126))))

(assert (=> start!735132 e!4538882))

(declare-fun e!4538881 () Bool)

(assert (=> start!735132 e!4538881))

(declare-fun e!4538880 () Bool)

(assert (=> start!735132 e!4538880))

(declare-fun b!7635146 () Bool)

(declare-fun Unit!167783 () Unit!167780)

(assert (=> b!7635146 (= e!4538883 Unit!167783)))

(declare-fun lt!2659520 () tuple2!69372)

(declare-fun get!25875 (Option!17480) tuple2!69372)

(assert (=> b!7635146 (= lt!2659520 (get!25875 lt!2659519))))

(declare-fun lt!2659525 () Unit!167780)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!164 (Regex!20407 Regex!20407 List!73258 List!73258 List!73258) Unit!167780)

(assert (=> b!7635146 (= lt!2659525 (lemmaFindSeparationIsDefinedThenConcatMatches!164 (regOne!41326 r!14126) (regTwo!41326 r!14126) (_1!37989 lt!2659520) (_2!37989 lt!2659520) s!9605))))

(declare-fun res!3057967 () Bool)

(declare-fun ++!17687 (List!73258 List!73258) List!73258)

(assert (=> b!7635146 (= res!3057967 (matchR!9910 r!14126 (++!17687 (_1!37989 lt!2659520) (_2!37989 lt!2659520))))))

(assert (=> b!7635146 (=> (not res!3057967) (not e!4538878))))

(assert (=> b!7635146 e!4538878))

(declare-fun b!7635147 () Bool)

(declare-fun res!3057975 () Bool)

(assert (=> b!7635147 (=> (not res!3057975) (not e!4538882))))

(get-info :version)

(assert (=> b!7635147 (= res!3057975 (and (not ((_ is EmptyExpr!20407) r!14126)) (not ((_ is EmptyLang!20407) r!14126)) (not ((_ is ElementMatch!20407) r!14126)) (not ((_ is Union!20407) r!14126)) (not ((_ is Star!20407) r!14126))))))

(declare-fun b!7635148 () Bool)

(declare-fun res!3057971 () Bool)

(declare-fun e!4538877 () Bool)

(assert (=> b!7635148 (=> res!3057971 e!4538877)))

(declare-fun lt!2659527 () tuple2!69372)

(assert (=> b!7635148 (= res!3057971 (not (= (++!17687 (_1!37989 lt!2659527) (_2!37989 lt!2659527)) s!9605)))))

(declare-fun b!7635149 () Bool)

(declare-fun tp!2228966 () Bool)

(assert (=> b!7635149 (= e!4538881 tp!2228966)))

(declare-fun b!7635150 () Bool)

(declare-fun res!3057968 () Bool)

(assert (=> b!7635150 (=> res!3057968 e!4538877)))

(declare-fun isPrefix!6223 (List!73258 List!73258) Bool)

(assert (=> b!7635150 (= res!3057968 (not (isPrefix!6223 Nil!73134 (_1!37989 lt!2659527))))))

(declare-fun b!7635151 () Bool)

(declare-fun tp!2228968 () Bool)

(declare-fun tp!2228965 () Bool)

(assert (=> b!7635151 (= e!4538881 (and tp!2228968 tp!2228965))))

(declare-fun b!7635152 () Bool)

(declare-fun e!4538879 () Bool)

(assert (=> b!7635152 (= e!4538879 e!4538877)))

(declare-fun res!3057970 () Bool)

(assert (=> b!7635152 (=> res!3057970 e!4538877)))

(assert (=> b!7635152 (= res!3057970 (not (validRegex!10825 (regOne!41326 r!14126))))))

(declare-fun matchRSpec!4548 (Regex!20407 List!73258) Bool)

(assert (=> b!7635152 (= (matchR!9910 (regTwo!41326 r!14126) (_2!37989 lt!2659527)) (matchRSpec!4548 (regTwo!41326 r!14126) (_2!37989 lt!2659527)))))

(declare-fun lt!2659528 () Unit!167780)

(declare-fun mainMatchTheorem!4534 (Regex!20407 List!73258) Unit!167780)

(assert (=> b!7635152 (= lt!2659528 (mainMatchTheorem!4534 (regTwo!41326 r!14126) (_2!37989 lt!2659527)))))

(assert (=> b!7635152 (= (matchR!9910 (regOne!41326 r!14126) (_1!37989 lt!2659527)) (matchRSpec!4548 (regOne!41326 r!14126) (_1!37989 lt!2659527)))))

(declare-fun lt!2659526 () Unit!167780)

(assert (=> b!7635152 (= lt!2659526 (mainMatchTheorem!4534 (regOne!41326 r!14126) (_1!37989 lt!2659527)))))

(declare-fun pickWitness!478 (Int) tuple2!69372)

(assert (=> b!7635152 (= lt!2659527 (pickWitness!478 lambda!469321))))

(declare-fun b!7635153 () Bool)

(declare-fun tp_is_empty!51169 () Bool)

(assert (=> b!7635153 (= e!4538881 tp_is_empty!51169)))

(declare-fun res!3057974 () Bool)

(assert (=> b!7635154 (=> res!3057974 e!4538879)))

(assert (=> b!7635154 (= res!3057974 (not (Exists!4561 lambda!469321)))))

(declare-fun b!7635155 () Bool)

(declare-fun tp!2228969 () Bool)

(declare-fun tp!2228967 () Bool)

(assert (=> b!7635155 (= e!4538881 (and tp!2228969 tp!2228967))))

(declare-fun b!7635156 () Bool)

(assert (=> b!7635156 (= e!4538877 true)))

(declare-fun lt!2659523 () List!73258)

(assert (=> b!7635156 (= lt!2659523 (++!17687 Nil!73134 s!9605))))

(declare-fun b!7635157 () Bool)

(assert (=> b!7635157 (= e!4538876 e!4538879)))

(declare-fun res!3057973 () Bool)

(assert (=> b!7635157 (=> res!3057973 e!4538879)))

(assert (=> b!7635157 (= res!3057973 (Exists!4561 lambda!469320))))

(declare-fun lt!2659524 () Unit!167780)

(assert (=> b!7635157 (= lt!2659524 e!4538883)))

(declare-fun c!1406465 () Bool)

(assert (=> b!7635157 (= c!1406465 lt!2659521)))

(declare-fun b!7635158 () Bool)

(declare-fun res!3057969 () Bool)

(assert (=> b!7635158 (=> res!3057969 e!4538877)))

(assert (=> b!7635158 (= res!3057969 (not (validRegex!10825 (regTwo!41326 r!14126))))))

(declare-fun b!7635159 () Bool)

(declare-fun tp!2228964 () Bool)

(assert (=> b!7635159 (= e!4538880 (and tp_is_empty!51169 tp!2228964))))

(assert (= (and start!735132 res!3057976) b!7635147))

(assert (= (and b!7635147 res!3057975) b!7635145))

(assert (= (and b!7635145 (not res!3057972)) b!7635157))

(assert (= (and b!7635157 c!1406465) b!7635146))

(assert (= (and b!7635157 (not c!1406465)) b!7635144))

(assert (= (and b!7635146 res!3057967) b!7635143))

(assert (= (and b!7635157 (not res!3057973)) b!7635154))

(assert (= (and b!7635154 (not res!3057974)) b!7635152))

(assert (= (and b!7635152 (not res!3057970)) b!7635158))

(assert (= (and b!7635158 (not res!3057969)) b!7635148))

(assert (= (and b!7635148 (not res!3057971)) b!7635150))

(assert (= (and b!7635150 (not res!3057968)) b!7635156))

(assert (= (and start!735132 ((_ is ElementMatch!20407) r!14126)) b!7635153))

(assert (= (and start!735132 ((_ is Concat!29252) r!14126)) b!7635155))

(assert (= (and start!735132 ((_ is Star!20407) r!14126)) b!7635149))

(assert (= (and start!735132 ((_ is Union!20407) r!14126)) b!7635151))

(assert (= (and start!735132 ((_ is Cons!73134) s!9605)) b!7635159))

(declare-fun m!8160104 () Bool)

(assert (=> b!7635145 m!8160104))

(declare-fun m!8160106 () Bool)

(assert (=> b!7635145 m!8160106))

(declare-fun m!8160108 () Bool)

(assert (=> b!7635145 m!8160108))

(declare-fun m!8160110 () Bool)

(assert (=> b!7635145 m!8160110))

(declare-fun m!8160112 () Bool)

(assert (=> b!7635145 m!8160112))

(declare-fun m!8160114 () Bool)

(assert (=> b!7635154 m!8160114))

(declare-fun m!8160116 () Bool)

(assert (=> b!7635146 m!8160116))

(declare-fun m!8160118 () Bool)

(assert (=> b!7635146 m!8160118))

(declare-fun m!8160120 () Bool)

(assert (=> b!7635146 m!8160120))

(assert (=> b!7635146 m!8160120))

(declare-fun m!8160122 () Bool)

(assert (=> b!7635146 m!8160122))

(assert (=> b!7635157 m!8160110))

(declare-fun m!8160124 () Bool)

(assert (=> b!7635152 m!8160124))

(declare-fun m!8160126 () Bool)

(assert (=> b!7635152 m!8160126))

(declare-fun m!8160128 () Bool)

(assert (=> b!7635152 m!8160128))

(declare-fun m!8160130 () Bool)

(assert (=> b!7635152 m!8160130))

(declare-fun m!8160132 () Bool)

(assert (=> b!7635152 m!8160132))

(declare-fun m!8160134 () Bool)

(assert (=> b!7635152 m!8160134))

(declare-fun m!8160136 () Bool)

(assert (=> b!7635152 m!8160136))

(declare-fun m!8160138 () Bool)

(assert (=> b!7635152 m!8160138))

(declare-fun m!8160140 () Bool)

(assert (=> start!735132 m!8160140))

(declare-fun m!8160142 () Bool)

(assert (=> b!7635148 m!8160142))

(declare-fun m!8160144 () Bool)

(assert (=> b!7635150 m!8160144))

(declare-fun m!8160146 () Bool)

(assert (=> b!7635156 m!8160146))

(declare-fun m!8160148 () Bool)

(assert (=> b!7635158 m!8160148))

(check-sat (not b!7635148) (not b!7635152) (not b!7635159) (not b!7635150) (not b!7635157) (not b!7635151) (not b!7635156) (not b!7635146) (not b!7635149) tp_is_empty!51169 (not b!7635154) (not b!7635155) (not b!7635158) (not b!7635145) (not start!735132))
(check-sat)
