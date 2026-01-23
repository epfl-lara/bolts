; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665710 () Bool)

(assert start!665710)

(declare-fun b!6923205 () Bool)

(assert (=> b!6923205 true))

(assert (=> b!6923205 true))

(assert (=> b!6923205 true))

(declare-fun lambda!393684 () Int)

(declare-fun lambda!393683 () Int)

(assert (=> b!6923205 (not (= lambda!393684 lambda!393683))))

(assert (=> b!6923205 true))

(assert (=> b!6923205 true))

(assert (=> b!6923205 true))

(declare-fun bs!1847667 () Bool)

(declare-fun b!6923207 () Bool)

(assert (= bs!1847667 (and b!6923207 b!6923205)))

(declare-datatypes ((C!34116 0))(
  ( (C!34117 (val!26760 Int)) )
))
(declare-datatypes ((Regex!16923 0))(
  ( (ElementMatch!16923 (c!1285229 C!34116)) (Concat!25768 (regOne!34358 Regex!16923) (regTwo!34358 Regex!16923)) (EmptyExpr!16923) (Star!16923 (reg!17252 Regex!16923)) (EmptyLang!16923) (Union!16923 (regOne!34359 Regex!16923) (regTwo!34359 Regex!16923)) )
))
(declare-fun r3!135 () Regex!16923)

(declare-datatypes ((List!66676 0))(
  ( (Nil!66552) (Cons!66552 (h!73000 C!34116) (t!380419 List!66676)) )
))
(declare-fun s!14361 () List!66676)

(declare-fun lambda!393685 () Int)

(declare-fun r2!6280 () Regex!16923)

(declare-datatypes ((tuple2!67560 0))(
  ( (tuple2!67561 (_1!37083 List!66676) (_2!37083 List!66676)) )
))
(declare-fun lt!2471049 () tuple2!67560)

(declare-fun r1!6342 () Regex!16923)

(declare-fun lt!2471063 () Regex!16923)

(assert (=> bs!1847667 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 lt!2471063) (= r2!6280 r3!135)) (= lambda!393685 lambda!393683))))

(assert (=> bs!1847667 (not (= lambda!393685 lambda!393684))))

(assert (=> b!6923207 true))

(assert (=> b!6923207 true))

(assert (=> b!6923207 true))

(declare-fun lambda!393686 () Int)

(assert (=> bs!1847667 (not (= lambda!393686 lambda!393683))))

(assert (=> bs!1847667 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 lt!2471063) (= r2!6280 r3!135)) (= lambda!393686 lambda!393684))))

(assert (=> b!6923207 (not (= lambda!393686 lambda!393685))))

(assert (=> b!6923207 true))

(assert (=> b!6923207 true))

(assert (=> b!6923207 true))

(declare-fun bs!1847668 () Bool)

(declare-fun b!6923191 () Bool)

(assert (= bs!1847668 (and b!6923191 b!6923205)))

(declare-fun lambda!393687 () Int)

(declare-fun lt!2471067 () List!66676)

(assert (=> bs!1847668 (= (and (= lt!2471067 s!14361) (= r2!6280 lt!2471063)) (= lambda!393687 lambda!393683))))

(assert (=> bs!1847668 (not (= lambda!393687 lambda!393684))))

(declare-fun bs!1847669 () Bool)

(assert (= bs!1847669 (and b!6923191 b!6923207)))

(assert (=> bs!1847669 (= (and (= lt!2471067 (_1!37083 lt!2471049)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393687 lambda!393685))))

(assert (=> bs!1847669 (not (= lambda!393687 lambda!393686))))

(assert (=> b!6923191 true))

(assert (=> b!6923191 true))

(assert (=> b!6923191 true))

(declare-fun lambda!393688 () Int)

(assert (=> b!6923191 (not (= lambda!393688 lambda!393687))))

(assert (=> bs!1847669 (= (and (= lt!2471067 (_1!37083 lt!2471049)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393688 lambda!393686))))

(assert (=> bs!1847668 (= (and (= lt!2471067 s!14361) (= r2!6280 lt!2471063)) (= lambda!393688 lambda!393684))))

(assert (=> bs!1847668 (not (= lambda!393688 lambda!393683))))

(assert (=> bs!1847669 (not (= lambda!393688 lambda!393685))))

(assert (=> b!6923191 true))

(assert (=> b!6923191 true))

(assert (=> b!6923191 true))

(declare-fun b!6923185 () Bool)

(declare-fun e!4166595 () Bool)

(declare-fun tp_is_empty!43071 () Bool)

(assert (=> b!6923185 (= e!4166595 tp_is_empty!43071)))

(declare-fun b!6923187 () Bool)

(declare-fun res!2823146 () Bool)

(declare-fun e!4166594 () Bool)

(assert (=> b!6923187 (=> (not res!2823146) (not e!4166594))))

(declare-fun validRegex!8629 (Regex!16923) Bool)

(assert (=> b!6923187 (= res!2823146 (validRegex!8629 r3!135))))

(declare-fun b!6923188 () Bool)

(declare-fun e!4166592 () Bool)

(declare-fun tp!1908354 () Bool)

(assert (=> b!6923188 (= e!4166592 (and tp_is_empty!43071 tp!1908354))))

(declare-fun b!6923189 () Bool)

(declare-fun e!4166591 () Bool)

(declare-fun tp!1908351 () Bool)

(assert (=> b!6923189 (= e!4166591 tp!1908351)))

(declare-fun b!6923190 () Bool)

(declare-fun res!2823151 () Bool)

(declare-fun e!4166589 () Bool)

(assert (=> b!6923190 (=> res!2823151 e!4166589)))

(declare-fun lt!2471068 () Regex!16923)

(assert (=> b!6923190 (= res!2823151 (not (validRegex!8629 lt!2471068)))))

(declare-fun e!4166588 () Bool)

(declare-fun e!4166593 () Bool)

(assert (=> b!6923191 (= e!4166588 e!4166593)))

(declare-fun res!2823144 () Bool)

(assert (=> b!6923191 (=> res!2823144 e!4166593)))

(declare-fun lt!2471056 () Bool)

(assert (=> b!6923191 (= res!2823144 (not lt!2471056))))

(declare-fun lt!2471051 () Bool)

(assert (=> b!6923191 lt!2471051))

(declare-fun lt!2471065 () tuple2!67560)

(declare-datatypes ((Unit!160570 0))(
  ( (Unit!160571) )
))
(declare-fun lt!2471072 () Unit!160570)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!84 (Regex!16923 Regex!16923 List!66676 List!66676 List!66676 List!66676 List!66676) Unit!160570)

(assert (=> b!6923191 (= lt!2471072 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!84 r2!6280 r3!135 (_2!37083 lt!2471065) (_2!37083 lt!2471049) lt!2471067 Nil!66552 lt!2471067))))

(declare-fun Exists!3925 (Int) Bool)

(assert (=> b!6923191 (= (Exists!3925 lambda!393687) (Exists!3925 lambda!393688))))

(declare-fun lt!2471045 () Unit!160570)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2392 (Regex!16923 Regex!16923 List!66676) Unit!160570)

(assert (=> b!6923191 (= lt!2471045 (lemmaExistCutMatchRandMatchRSpecEquivalent!2392 r2!6280 r3!135 lt!2471067))))

(assert (=> b!6923191 (= lt!2471051 (Exists!3925 lambda!393687))))

(declare-datatypes ((Option!16692 0))(
  ( (None!16691) (Some!16691 (v!52963 tuple2!67560)) )
))
(declare-fun isDefined!13395 (Option!16692) Bool)

(declare-fun findConcatSeparation!3106 (Regex!16923 Regex!16923 List!66676 List!66676 List!66676) Option!16692)

(assert (=> b!6923191 (= lt!2471051 (isDefined!13395 (findConcatSeparation!3106 r2!6280 r3!135 Nil!66552 lt!2471067 lt!2471067)))))

(declare-fun lt!2471055 () Unit!160570)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2868 (Regex!16923 Regex!16923 List!66676) Unit!160570)

(assert (=> b!6923191 (= lt!2471055 (lemmaFindConcatSeparationEquivalentToExists!2868 r2!6280 r3!135 lt!2471067))))

(declare-fun matchRSpec!3980 (Regex!16923 List!66676) Bool)

(assert (=> b!6923191 (= lt!2471056 (matchRSpec!3980 lt!2471068 lt!2471067))))

(declare-fun matchR!9062 (Regex!16923 List!66676) Bool)

(assert (=> b!6923191 (= lt!2471056 (matchR!9062 lt!2471068 lt!2471067))))

(declare-fun lt!2471054 () Unit!160570)

(declare-fun mainMatchTheorem!3980 (Regex!16923 List!66676) Unit!160570)

(assert (=> b!6923191 (= lt!2471054 (mainMatchTheorem!3980 lt!2471068 lt!2471067))))

(declare-fun ++!14966 (List!66676 List!66676) List!66676)

(assert (=> b!6923191 (= lt!2471067 (++!14966 (_2!37083 lt!2471065) (_2!37083 lt!2471049)))))

(declare-fun b!6923192 () Bool)

(declare-fun isPrefix!5808 (List!66676 List!66676) Bool)

(assert (=> b!6923192 (= e!4166589 (isPrefix!5808 Nil!66552 (_1!37083 lt!2471065)))))

(declare-fun b!6923193 () Bool)

(declare-fun e!4166596 () Bool)

(assert (=> b!6923193 (= e!4166596 tp_is_empty!43071)))

(declare-fun b!6923194 () Bool)

(assert (=> b!6923194 (= e!4166593 e!4166589)))

(declare-fun res!2823147 () Bool)

(assert (=> b!6923194 (=> res!2823147 e!4166589)))

(declare-fun lt!2471071 () List!66676)

(assert (=> b!6923194 (= res!2823147 (not (= lt!2471071 s!14361)))))

(declare-fun lt!2471066 () List!66676)

(assert (=> b!6923194 (= lt!2471066 lt!2471071)))

(assert (=> b!6923194 (= lt!2471071 (++!14966 (_1!37083 lt!2471065) lt!2471067))))

(declare-fun lt!2471047 () Unit!160570)

(declare-fun lemmaConcatAssociativity!3014 (List!66676 List!66676 List!66676) Unit!160570)

(assert (=> b!6923194 (= lt!2471047 (lemmaConcatAssociativity!3014 (_1!37083 lt!2471065) (_2!37083 lt!2471065) (_2!37083 lt!2471049)))))

(declare-fun b!6923195 () Bool)

(declare-fun tp!1908347 () Bool)

(declare-fun tp!1908348 () Bool)

(assert (=> b!6923195 (= e!4166595 (and tp!1908347 tp!1908348))))

(declare-fun b!6923196 () Bool)

(declare-fun tp!1908340 () Bool)

(declare-fun tp!1908355 () Bool)

(assert (=> b!6923196 (= e!4166591 (and tp!1908340 tp!1908355))))

(declare-fun b!6923197 () Bool)

(declare-fun e!4166597 () Bool)

(assert (=> b!6923197 (= e!4166594 (not e!4166597))))

(declare-fun res!2823153 () Bool)

(assert (=> b!6923197 (=> res!2823153 e!4166597)))

(declare-fun lt!2471073 () Bool)

(assert (=> b!6923197 (= res!2823153 (not lt!2471073))))

(declare-fun lt!2471048 () Regex!16923)

(assert (=> b!6923197 (= (matchR!9062 lt!2471048 s!14361) (matchRSpec!3980 lt!2471048 s!14361))))

(declare-fun lt!2471069 () Unit!160570)

(assert (=> b!6923197 (= lt!2471069 (mainMatchTheorem!3980 lt!2471048 s!14361))))

(declare-fun lt!2471058 () Regex!16923)

(assert (=> b!6923197 (= lt!2471073 (matchRSpec!3980 lt!2471058 s!14361))))

(assert (=> b!6923197 (= lt!2471073 (matchR!9062 lt!2471058 s!14361))))

(declare-fun lt!2471052 () Unit!160570)

(assert (=> b!6923197 (= lt!2471052 (mainMatchTheorem!3980 lt!2471058 s!14361))))

(assert (=> b!6923197 (= lt!2471048 (Concat!25768 r1!6342 lt!2471068))))

(assert (=> b!6923197 (= lt!2471068 (Concat!25768 r2!6280 r3!135))))

(assert (=> b!6923197 (= lt!2471058 (Concat!25768 lt!2471063 r3!135))))

(assert (=> b!6923197 (= lt!2471063 (Concat!25768 r1!6342 r2!6280))))

(declare-fun res!2823148 () Bool)

(assert (=> start!665710 (=> (not res!2823148) (not e!4166594))))

(assert (=> start!665710 (= res!2823148 (validRegex!8629 r1!6342))))

(assert (=> start!665710 e!4166594))

(assert (=> start!665710 e!4166596))

(assert (=> start!665710 e!4166595))

(assert (=> start!665710 e!4166591))

(assert (=> start!665710 e!4166592))

(declare-fun b!6923186 () Bool)

(declare-fun tp!1908353 () Bool)

(declare-fun tp!1908345 () Bool)

(assert (=> b!6923186 (= e!4166591 (and tp!1908353 tp!1908345))))

(declare-fun b!6923198 () Bool)

(declare-fun res!2823143 () Bool)

(assert (=> b!6923198 (=> (not res!2823143) (not e!4166594))))

(assert (=> b!6923198 (= res!2823143 (validRegex!8629 r2!6280))))

(declare-fun b!6923199 () Bool)

(declare-fun tp!1908341 () Bool)

(declare-fun tp!1908349 () Bool)

(assert (=> b!6923199 (= e!4166596 (and tp!1908341 tp!1908349))))

(declare-fun b!6923200 () Bool)

(declare-fun e!4166590 () Bool)

(assert (=> b!6923200 (= e!4166590 e!4166588)))

(declare-fun res!2823154 () Bool)

(assert (=> b!6923200 (=> res!2823154 e!4166588)))

(assert (=> b!6923200 (= res!2823154 (not (= lt!2471066 s!14361)))))

(assert (=> b!6923200 (= lt!2471066 (++!14966 (++!14966 (_1!37083 lt!2471065) (_2!37083 lt!2471065)) (_2!37083 lt!2471049)))))

(assert (=> b!6923200 (matchRSpec!3980 r2!6280 (_2!37083 lt!2471065))))

(declare-fun lt!2471053 () Unit!160570)

(assert (=> b!6923200 (= lt!2471053 (mainMatchTheorem!3980 r2!6280 (_2!37083 lt!2471065)))))

(assert (=> b!6923200 (matchRSpec!3980 r1!6342 (_1!37083 lt!2471065))))

(declare-fun lt!2471057 () Unit!160570)

(assert (=> b!6923200 (= lt!2471057 (mainMatchTheorem!3980 r1!6342 (_1!37083 lt!2471065)))))

(declare-fun b!6923201 () Bool)

(declare-fun tp!1908344 () Bool)

(declare-fun tp!1908342 () Bool)

(assert (=> b!6923201 (= e!4166595 (and tp!1908344 tp!1908342))))

(declare-fun b!6923202 () Bool)

(declare-fun tp!1908346 () Bool)

(assert (=> b!6923202 (= e!4166596 tp!1908346)))

(declare-fun b!6923203 () Bool)

(assert (=> b!6923203 (= e!4166591 tp_is_empty!43071)))

(declare-fun b!6923204 () Bool)

(declare-fun res!2823149 () Bool)

(assert (=> b!6923204 (=> res!2823149 e!4166590)))

(assert (=> b!6923204 (= res!2823149 (not (matchR!9062 r2!6280 (_2!37083 lt!2471065))))))

(declare-fun e!4166598 () Bool)

(assert (=> b!6923205 (= e!4166597 e!4166598)))

(declare-fun res!2823150 () Bool)

(assert (=> b!6923205 (=> res!2823150 e!4166598)))

(declare-fun lt!2471062 () Bool)

(assert (=> b!6923205 (= res!2823150 (not lt!2471062))))

(assert (=> b!6923205 (= lt!2471062 (matchRSpec!3980 lt!2471063 (_1!37083 lt!2471049)))))

(assert (=> b!6923205 (= lt!2471062 (matchR!9062 lt!2471063 (_1!37083 lt!2471049)))))

(declare-fun lt!2471060 () Unit!160570)

(assert (=> b!6923205 (= lt!2471060 (mainMatchTheorem!3980 lt!2471063 (_1!37083 lt!2471049)))))

(declare-fun lt!2471046 () Option!16692)

(declare-fun get!23325 (Option!16692) tuple2!67560)

(assert (=> b!6923205 (= lt!2471049 (get!23325 lt!2471046))))

(assert (=> b!6923205 (= (Exists!3925 lambda!393683) (Exists!3925 lambda!393684))))

(declare-fun lt!2471059 () Unit!160570)

(assert (=> b!6923205 (= lt!2471059 (lemmaExistCutMatchRandMatchRSpecEquivalent!2392 lt!2471063 r3!135 s!14361))))

(assert (=> b!6923205 (= (isDefined!13395 lt!2471046) (Exists!3925 lambda!393683))))

(assert (=> b!6923205 (= lt!2471046 (findConcatSeparation!3106 lt!2471063 r3!135 Nil!66552 s!14361 s!14361))))

(declare-fun lt!2471050 () Unit!160570)

(assert (=> b!6923205 (= lt!2471050 (lemmaFindConcatSeparationEquivalentToExists!2868 lt!2471063 r3!135 s!14361))))

(declare-fun b!6923206 () Bool)

(declare-fun tp!1908350 () Bool)

(declare-fun tp!1908352 () Bool)

(assert (=> b!6923206 (= e!4166596 (and tp!1908350 tp!1908352))))

(assert (=> b!6923207 (= e!4166598 e!4166590)))

(declare-fun res!2823152 () Bool)

(assert (=> b!6923207 (=> res!2823152 e!4166590)))

(assert (=> b!6923207 (= res!2823152 (not (matchR!9062 r1!6342 (_1!37083 lt!2471065))))))

(declare-fun lt!2471070 () Option!16692)

(assert (=> b!6923207 (= lt!2471065 (get!23325 lt!2471070))))

(assert (=> b!6923207 (= (Exists!3925 lambda!393685) (Exists!3925 lambda!393686))))

(declare-fun lt!2471064 () Unit!160570)

(assert (=> b!6923207 (= lt!2471064 (lemmaExistCutMatchRandMatchRSpecEquivalent!2392 r1!6342 r2!6280 (_1!37083 lt!2471049)))))

(assert (=> b!6923207 (= (isDefined!13395 lt!2471070) (Exists!3925 lambda!393685))))

(assert (=> b!6923207 (= lt!2471070 (findConcatSeparation!3106 r1!6342 r2!6280 Nil!66552 (_1!37083 lt!2471049) (_1!37083 lt!2471049)))))

(declare-fun lt!2471061 () Unit!160570)

(assert (=> b!6923207 (= lt!2471061 (lemmaFindConcatSeparationEquivalentToExists!2868 r1!6342 r2!6280 (_1!37083 lt!2471049)))))

(declare-fun b!6923208 () Bool)

(declare-fun res!2823145 () Bool)

(assert (=> b!6923208 (=> res!2823145 e!4166598)))

(assert (=> b!6923208 (= res!2823145 (not (matchR!9062 r3!135 (_2!37083 lt!2471049))))))

(declare-fun b!6923209 () Bool)

(declare-fun tp!1908343 () Bool)

(assert (=> b!6923209 (= e!4166595 tp!1908343)))

(assert (= (and start!665710 res!2823148) b!6923198))

(assert (= (and b!6923198 res!2823143) b!6923187))

(assert (= (and b!6923187 res!2823146) b!6923197))

(assert (= (and b!6923197 (not res!2823153)) b!6923205))

(assert (= (and b!6923205 (not res!2823150)) b!6923208))

(assert (= (and b!6923208 (not res!2823145)) b!6923207))

(assert (= (and b!6923207 (not res!2823152)) b!6923204))

(assert (= (and b!6923204 (not res!2823149)) b!6923200))

(assert (= (and b!6923200 (not res!2823154)) b!6923191))

(assert (= (and b!6923191 (not res!2823144)) b!6923194))

(assert (= (and b!6923194 (not res!2823147)) b!6923190))

(assert (= (and b!6923190 (not res!2823151)) b!6923192))

(get-info :version)

(assert (= (and start!665710 ((_ is ElementMatch!16923) r1!6342)) b!6923193))

(assert (= (and start!665710 ((_ is Concat!25768) r1!6342)) b!6923206))

(assert (= (and start!665710 ((_ is Star!16923) r1!6342)) b!6923202))

(assert (= (and start!665710 ((_ is Union!16923) r1!6342)) b!6923199))

(assert (= (and start!665710 ((_ is ElementMatch!16923) r2!6280)) b!6923185))

(assert (= (and start!665710 ((_ is Concat!25768) r2!6280)) b!6923201))

(assert (= (and start!665710 ((_ is Star!16923) r2!6280)) b!6923209))

(assert (= (and start!665710 ((_ is Union!16923) r2!6280)) b!6923195))

(assert (= (and start!665710 ((_ is ElementMatch!16923) r3!135)) b!6923203))

(assert (= (and start!665710 ((_ is Concat!25768) r3!135)) b!6923186))

(assert (= (and start!665710 ((_ is Star!16923) r3!135)) b!6923189))

(assert (= (and start!665710 ((_ is Union!16923) r3!135)) b!6923196))

(assert (= (and start!665710 ((_ is Cons!66552) s!14361)) b!6923188))

(declare-fun m!7632508 () Bool)

(assert (=> b!6923192 m!7632508))

(declare-fun m!7632510 () Bool)

(assert (=> b!6923191 m!7632510))

(declare-fun m!7632512 () Bool)

(assert (=> b!6923191 m!7632512))

(declare-fun m!7632514 () Bool)

(assert (=> b!6923191 m!7632514))

(declare-fun m!7632516 () Bool)

(assert (=> b!6923191 m!7632516))

(declare-fun m!7632518 () Bool)

(assert (=> b!6923191 m!7632518))

(assert (=> b!6923191 m!7632514))

(declare-fun m!7632520 () Bool)

(assert (=> b!6923191 m!7632520))

(declare-fun m!7632522 () Bool)

(assert (=> b!6923191 m!7632522))

(declare-fun m!7632524 () Bool)

(assert (=> b!6923191 m!7632524))

(declare-fun m!7632526 () Bool)

(assert (=> b!6923191 m!7632526))

(assert (=> b!6923191 m!7632524))

(declare-fun m!7632528 () Bool)

(assert (=> b!6923191 m!7632528))

(declare-fun m!7632530 () Bool)

(assert (=> b!6923191 m!7632530))

(declare-fun m!7632532 () Bool)

(assert (=> b!6923198 m!7632532))

(declare-fun m!7632534 () Bool)

(assert (=> b!6923200 m!7632534))

(declare-fun m!7632536 () Bool)

(assert (=> b!6923200 m!7632536))

(declare-fun m!7632538 () Bool)

(assert (=> b!6923200 m!7632538))

(declare-fun m!7632540 () Bool)

(assert (=> b!6923200 m!7632540))

(declare-fun m!7632542 () Bool)

(assert (=> b!6923200 m!7632542))

(assert (=> b!6923200 m!7632534))

(declare-fun m!7632544 () Bool)

(assert (=> b!6923200 m!7632544))

(declare-fun m!7632546 () Bool)

(assert (=> b!6923208 m!7632546))

(declare-fun m!7632548 () Bool)

(assert (=> b!6923187 m!7632548))

(declare-fun m!7632550 () Bool)

(assert (=> b!6923194 m!7632550))

(declare-fun m!7632552 () Bool)

(assert (=> b!6923194 m!7632552))

(declare-fun m!7632554 () Bool)

(assert (=> b!6923205 m!7632554))

(declare-fun m!7632556 () Bool)

(assert (=> b!6923205 m!7632556))

(declare-fun m!7632558 () Bool)

(assert (=> b!6923205 m!7632558))

(declare-fun m!7632560 () Bool)

(assert (=> b!6923205 m!7632560))

(declare-fun m!7632562 () Bool)

(assert (=> b!6923205 m!7632562))

(declare-fun m!7632564 () Bool)

(assert (=> b!6923205 m!7632564))

(declare-fun m!7632566 () Bool)

(assert (=> b!6923205 m!7632566))

(declare-fun m!7632568 () Bool)

(assert (=> b!6923205 m!7632568))

(declare-fun m!7632570 () Bool)

(assert (=> b!6923205 m!7632570))

(assert (=> b!6923205 m!7632556))

(declare-fun m!7632572 () Bool)

(assert (=> b!6923205 m!7632572))

(declare-fun m!7632574 () Bool)

(assert (=> b!6923197 m!7632574))

(declare-fun m!7632576 () Bool)

(assert (=> b!6923197 m!7632576))

(declare-fun m!7632578 () Bool)

(assert (=> b!6923197 m!7632578))

(declare-fun m!7632580 () Bool)

(assert (=> b!6923197 m!7632580))

(declare-fun m!7632582 () Bool)

(assert (=> b!6923197 m!7632582))

(declare-fun m!7632584 () Bool)

(assert (=> b!6923197 m!7632584))

(declare-fun m!7632586 () Bool)

(assert (=> b!6923207 m!7632586))

(declare-fun m!7632588 () Bool)

(assert (=> b!6923207 m!7632588))

(declare-fun m!7632590 () Bool)

(assert (=> b!6923207 m!7632590))

(declare-fun m!7632592 () Bool)

(assert (=> b!6923207 m!7632592))

(declare-fun m!7632594 () Bool)

(assert (=> b!6923207 m!7632594))

(assert (=> b!6923207 m!7632588))

(declare-fun m!7632596 () Bool)

(assert (=> b!6923207 m!7632596))

(declare-fun m!7632598 () Bool)

(assert (=> b!6923207 m!7632598))

(declare-fun m!7632600 () Bool)

(assert (=> b!6923207 m!7632600))

(declare-fun m!7632602 () Bool)

(assert (=> b!6923204 m!7632602))

(declare-fun m!7632604 () Bool)

(assert (=> start!665710 m!7632604))

(declare-fun m!7632606 () Bool)

(assert (=> b!6923190 m!7632606))

(check-sat (not b!6923190) (not b!6923188) (not b!6923209) (not b!6923186) (not b!6923208) (not b!6923191) (not b!6923202) (not b!6923195) (not b!6923200) (not b!6923194) (not b!6923197) tp_is_empty!43071 (not b!6923196) (not b!6923198) (not b!6923206) (not b!6923205) (not start!665710) (not b!6923189) (not b!6923187) (not b!6923199) (not b!6923192) (not b!6923201) (not b!6923207) (not b!6923204))
(check-sat)
(get-model)

(declare-fun d!2164853 () Bool)

(assert (=> d!2164853 (= (matchR!9062 r2!6280 (_2!37083 lt!2471065)) (matchRSpec!3980 r2!6280 (_2!37083 lt!2471065)))))

(declare-fun lt!2471084 () Unit!160570)

(declare-fun choose!51551 (Regex!16923 List!66676) Unit!160570)

(assert (=> d!2164853 (= lt!2471084 (choose!51551 r2!6280 (_2!37083 lt!2471065)))))

(assert (=> d!2164853 (validRegex!8629 r2!6280)))

(assert (=> d!2164853 (= (mainMatchTheorem!3980 r2!6280 (_2!37083 lt!2471065)) lt!2471084)))

(declare-fun bs!1847685 () Bool)

(assert (= bs!1847685 d!2164853))

(assert (=> bs!1847685 m!7632602))

(assert (=> bs!1847685 m!7632538))

(declare-fun m!7632638 () Bool)

(assert (=> bs!1847685 m!7632638))

(assert (=> bs!1847685 m!7632532))

(assert (=> b!6923200 d!2164853))

(declare-fun b!6923328 () Bool)

(declare-fun e!4166658 () Bool)

(declare-fun lt!2471091 () List!66676)

(assert (=> b!6923328 (= e!4166658 (or (not (= (_2!37083 lt!2471065) Nil!66552)) (= lt!2471091 (_1!37083 lt!2471065))))))

(declare-fun b!6923325 () Bool)

(declare-fun e!4166657 () List!66676)

(assert (=> b!6923325 (= e!4166657 (_2!37083 lt!2471065))))

(declare-fun b!6923326 () Bool)

(assert (=> b!6923326 (= e!4166657 (Cons!66552 (h!73000 (_1!37083 lt!2471065)) (++!14966 (t!380419 (_1!37083 lt!2471065)) (_2!37083 lt!2471065))))))

(declare-fun d!2164855 () Bool)

(assert (=> d!2164855 e!4166658))

(declare-fun res!2823213 () Bool)

(assert (=> d!2164855 (=> (not res!2823213) (not e!4166658))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13080 (List!66676) (InoxSet C!34116))

(assert (=> d!2164855 (= res!2823213 (= (content!13080 lt!2471091) ((_ map or) (content!13080 (_1!37083 lt!2471065)) (content!13080 (_2!37083 lt!2471065)))))))

(assert (=> d!2164855 (= lt!2471091 e!4166657)))

(declare-fun c!1285256 () Bool)

(assert (=> d!2164855 (= c!1285256 ((_ is Nil!66552) (_1!37083 lt!2471065)))))

(assert (=> d!2164855 (= (++!14966 (_1!37083 lt!2471065) (_2!37083 lt!2471065)) lt!2471091)))

(declare-fun b!6923327 () Bool)

(declare-fun res!2823212 () Bool)

(assert (=> b!6923327 (=> (not res!2823212) (not e!4166658))))

(declare-fun size!40777 (List!66676) Int)

(assert (=> b!6923327 (= res!2823212 (= (size!40777 lt!2471091) (+ (size!40777 (_1!37083 lt!2471065)) (size!40777 (_2!37083 lt!2471065)))))))

(assert (= (and d!2164855 c!1285256) b!6923325))

(assert (= (and d!2164855 (not c!1285256)) b!6923326))

(assert (= (and d!2164855 res!2823213) b!6923327))

(assert (= (and b!6923327 res!2823212) b!6923328))

(declare-fun m!7632656 () Bool)

(assert (=> b!6923326 m!7632656))

(declare-fun m!7632658 () Bool)

(assert (=> d!2164855 m!7632658))

(declare-fun m!7632660 () Bool)

(assert (=> d!2164855 m!7632660))

(declare-fun m!7632662 () Bool)

(assert (=> d!2164855 m!7632662))

(declare-fun m!7632664 () Bool)

(assert (=> b!6923327 m!7632664))

(declare-fun m!7632666 () Bool)

(assert (=> b!6923327 m!7632666))

(declare-fun m!7632668 () Bool)

(assert (=> b!6923327 m!7632668))

(assert (=> b!6923200 d!2164855))

(declare-fun bs!1847714 () Bool)

(declare-fun b!6923439 () Bool)

(assert (= bs!1847714 (and b!6923439 b!6923191)))

(declare-fun lambda!393710 () Int)

(assert (=> bs!1847714 (not (= lambda!393710 lambda!393687))))

(declare-fun bs!1847717 () Bool)

(assert (= bs!1847717 (and b!6923439 b!6923207)))

(assert (=> bs!1847717 (not (= lambda!393710 lambda!393686))))

(declare-fun bs!1847720 () Bool)

(assert (= bs!1847720 (and b!6923439 b!6923205)))

(assert (=> bs!1847720 (not (= lambda!393710 lambda!393684))))

(assert (=> bs!1847717 (not (= lambda!393710 lambda!393685))))

(assert (=> bs!1847714 (not (= lambda!393710 lambda!393688))))

(assert (=> bs!1847720 (not (= lambda!393710 lambda!393683))))

(assert (=> b!6923439 true))

(assert (=> b!6923439 true))

(declare-fun bs!1847734 () Bool)

(declare-fun b!6923446 () Bool)

(assert (= bs!1847734 (and b!6923446 b!6923439)))

(declare-fun lambda!393713 () Int)

(assert (=> bs!1847734 (not (= lambda!393713 lambda!393710))))

(declare-fun bs!1847735 () Bool)

(assert (= bs!1847735 (and b!6923446 b!6923191)))

(assert (=> bs!1847735 (not (= lambda!393713 lambda!393687))))

(declare-fun bs!1847736 () Bool)

(assert (= bs!1847736 (and b!6923446 b!6923207)))

(assert (=> bs!1847736 (= (and (= (_2!37083 lt!2471065) (_1!37083 lt!2471049)) (= (regOne!34358 r2!6280) r1!6342) (= (regTwo!34358 r2!6280) r2!6280)) (= lambda!393713 lambda!393686))))

(declare-fun bs!1847737 () Bool)

(assert (= bs!1847737 (and b!6923446 b!6923205)))

(assert (=> bs!1847737 (= (and (= (_2!37083 lt!2471065) s!14361) (= (regOne!34358 r2!6280) lt!2471063) (= (regTwo!34358 r2!6280) r3!135)) (= lambda!393713 lambda!393684))))

(assert (=> bs!1847736 (not (= lambda!393713 lambda!393685))))

(assert (=> bs!1847735 (= (and (= (_2!37083 lt!2471065) lt!2471067) (= (regOne!34358 r2!6280) r2!6280) (= (regTwo!34358 r2!6280) r3!135)) (= lambda!393713 lambda!393688))))

(assert (=> bs!1847737 (not (= lambda!393713 lambda!393683))))

(assert (=> b!6923446 true))

(assert (=> b!6923446 true))

(declare-fun b!6923437 () Bool)

(declare-fun e!4166723 () Bool)

(declare-fun call!629269 () Bool)

(assert (=> b!6923437 (= e!4166723 call!629269)))

(declare-fun b!6923438 () Bool)

(declare-fun c!1285282 () Bool)

(assert (=> b!6923438 (= c!1285282 ((_ is Union!16923) r2!6280))))

(declare-fun e!4166726 () Bool)

(declare-fun e!4166725 () Bool)

(assert (=> b!6923438 (= e!4166726 e!4166725)))

(declare-fun e!4166727 () Bool)

(declare-fun call!629268 () Bool)

(assert (=> b!6923439 (= e!4166727 call!629268)))

(declare-fun b!6923440 () Bool)

(declare-fun e!4166721 () Bool)

(assert (=> b!6923440 (= e!4166725 e!4166721)))

(declare-fun res!2823280 () Bool)

(assert (=> b!6923440 (= res!2823280 (matchRSpec!3980 (regOne!34359 r2!6280) (_2!37083 lt!2471065)))))

(assert (=> b!6923440 (=> res!2823280 e!4166721)))

(declare-fun d!2164863 () Bool)

(declare-fun c!1285280 () Bool)

(assert (=> d!2164863 (= c!1285280 ((_ is EmptyExpr!16923) r2!6280))))

(assert (=> d!2164863 (= (matchRSpec!3980 r2!6280 (_2!37083 lt!2471065)) e!4166723)))

(declare-fun b!6923441 () Bool)

(declare-fun c!1285279 () Bool)

(assert (=> b!6923441 (= c!1285279 ((_ is ElementMatch!16923) r2!6280))))

(declare-fun e!4166722 () Bool)

(assert (=> b!6923441 (= e!4166722 e!4166726)))

(declare-fun b!6923442 () Bool)

(declare-fun res!2823279 () Bool)

(assert (=> b!6923442 (=> res!2823279 e!4166727)))

(assert (=> b!6923442 (= res!2823279 call!629269)))

(declare-fun e!4166724 () Bool)

(assert (=> b!6923442 (= e!4166724 e!4166727)))

(declare-fun b!6923443 () Bool)

(assert (=> b!6923443 (= e!4166725 e!4166724)))

(declare-fun c!1285281 () Bool)

(assert (=> b!6923443 (= c!1285281 ((_ is Star!16923) r2!6280))))

(declare-fun b!6923444 () Bool)

(assert (=> b!6923444 (= e!4166721 (matchRSpec!3980 (regTwo!34359 r2!6280) (_2!37083 lt!2471065)))))

(declare-fun b!6923445 () Bool)

(assert (=> b!6923445 (= e!4166726 (= (_2!37083 lt!2471065) (Cons!66552 (c!1285229 r2!6280) Nil!66552)))))

(assert (=> b!6923446 (= e!4166724 call!629268)))

(declare-fun b!6923447 () Bool)

(assert (=> b!6923447 (= e!4166723 e!4166722)))

(declare-fun res!2823278 () Bool)

(assert (=> b!6923447 (= res!2823278 (not ((_ is EmptyLang!16923) r2!6280)))))

(assert (=> b!6923447 (=> (not res!2823278) (not e!4166722))))

(declare-fun bm!629263 () Bool)

(assert (=> bm!629263 (= call!629268 (Exists!3925 (ite c!1285281 lambda!393710 lambda!393713)))))

(declare-fun bm!629264 () Bool)

(declare-fun isEmpty!38806 (List!66676) Bool)

(assert (=> bm!629264 (= call!629269 (isEmpty!38806 (_2!37083 lt!2471065)))))

(assert (= (and d!2164863 c!1285280) b!6923437))

(assert (= (and d!2164863 (not c!1285280)) b!6923447))

(assert (= (and b!6923447 res!2823278) b!6923441))

(assert (= (and b!6923441 c!1285279) b!6923445))

(assert (= (and b!6923441 (not c!1285279)) b!6923438))

(assert (= (and b!6923438 c!1285282) b!6923440))

(assert (= (and b!6923438 (not c!1285282)) b!6923443))

(assert (= (and b!6923440 (not res!2823280)) b!6923444))

(assert (= (and b!6923443 c!1285281) b!6923442))

(assert (= (and b!6923443 (not c!1285281)) b!6923446))

(assert (= (and b!6923442 (not res!2823279)) b!6923439))

(assert (= (or b!6923439 b!6923446) bm!629263))

(assert (= (or b!6923437 b!6923442) bm!629264))

(declare-fun m!7632766 () Bool)

(assert (=> b!6923440 m!7632766))

(declare-fun m!7632768 () Bool)

(assert (=> b!6923444 m!7632768))

(declare-fun m!7632770 () Bool)

(assert (=> bm!629263 m!7632770))

(declare-fun m!7632772 () Bool)

(assert (=> bm!629264 m!7632772))

(assert (=> b!6923200 d!2164863))

(declare-fun d!2164887 () Bool)

(assert (=> d!2164887 (= (matchR!9062 r1!6342 (_1!37083 lt!2471065)) (matchRSpec!3980 r1!6342 (_1!37083 lt!2471065)))))

(declare-fun lt!2471115 () Unit!160570)

(assert (=> d!2164887 (= lt!2471115 (choose!51551 r1!6342 (_1!37083 lt!2471065)))))

(assert (=> d!2164887 (validRegex!8629 r1!6342)))

(assert (=> d!2164887 (= (mainMatchTheorem!3980 r1!6342 (_1!37083 lt!2471065)) lt!2471115)))

(declare-fun bs!1847739 () Bool)

(assert (= bs!1847739 d!2164887))

(assert (=> bs!1847739 m!7632600))

(assert (=> bs!1847739 m!7632544))

(declare-fun m!7632774 () Bool)

(assert (=> bs!1847739 m!7632774))

(assert (=> bs!1847739 m!7632604))

(assert (=> b!6923200 d!2164887))

(declare-fun b!6923484 () Bool)

(declare-fun e!4166752 () Bool)

(declare-fun lt!2471116 () List!66676)

(assert (=> b!6923484 (= e!4166752 (or (not (= (_2!37083 lt!2471049) Nil!66552)) (= lt!2471116 (++!14966 (_1!37083 lt!2471065) (_2!37083 lt!2471065)))))))

(declare-fun b!6923481 () Bool)

(declare-fun e!4166751 () List!66676)

(assert (=> b!6923481 (= e!4166751 (_2!37083 lt!2471049))))

(declare-fun b!6923482 () Bool)

(assert (=> b!6923482 (= e!4166751 (Cons!66552 (h!73000 (++!14966 (_1!37083 lt!2471065) (_2!37083 lt!2471065))) (++!14966 (t!380419 (++!14966 (_1!37083 lt!2471065) (_2!37083 lt!2471065))) (_2!37083 lt!2471049))))))

(declare-fun d!2164889 () Bool)

(assert (=> d!2164889 e!4166752))

(declare-fun res!2823297 () Bool)

(assert (=> d!2164889 (=> (not res!2823297) (not e!4166752))))

(assert (=> d!2164889 (= res!2823297 (= (content!13080 lt!2471116) ((_ map or) (content!13080 (++!14966 (_1!37083 lt!2471065) (_2!37083 lt!2471065))) (content!13080 (_2!37083 lt!2471049)))))))

(assert (=> d!2164889 (= lt!2471116 e!4166751)))

(declare-fun c!1285292 () Bool)

(assert (=> d!2164889 (= c!1285292 ((_ is Nil!66552) (++!14966 (_1!37083 lt!2471065) (_2!37083 lt!2471065))))))

(assert (=> d!2164889 (= (++!14966 (++!14966 (_1!37083 lt!2471065) (_2!37083 lt!2471065)) (_2!37083 lt!2471049)) lt!2471116)))

(declare-fun b!6923483 () Bool)

(declare-fun res!2823296 () Bool)

(assert (=> b!6923483 (=> (not res!2823296) (not e!4166752))))

(assert (=> b!6923483 (= res!2823296 (= (size!40777 lt!2471116) (+ (size!40777 (++!14966 (_1!37083 lt!2471065) (_2!37083 lt!2471065))) (size!40777 (_2!37083 lt!2471049)))))))

(assert (= (and d!2164889 c!1285292) b!6923481))

(assert (= (and d!2164889 (not c!1285292)) b!6923482))

(assert (= (and d!2164889 res!2823297) b!6923483))

(assert (= (and b!6923483 res!2823296) b!6923484))

(declare-fun m!7632776 () Bool)

(assert (=> b!6923482 m!7632776))

(declare-fun m!7632778 () Bool)

(assert (=> d!2164889 m!7632778))

(assert (=> d!2164889 m!7632534))

(declare-fun m!7632780 () Bool)

(assert (=> d!2164889 m!7632780))

(declare-fun m!7632782 () Bool)

(assert (=> d!2164889 m!7632782))

(declare-fun m!7632784 () Bool)

(assert (=> b!6923483 m!7632784))

(assert (=> b!6923483 m!7632534))

(declare-fun m!7632786 () Bool)

(assert (=> b!6923483 m!7632786))

(declare-fun m!7632788 () Bool)

(assert (=> b!6923483 m!7632788))

(assert (=> b!6923200 d!2164889))

(declare-fun bs!1847740 () Bool)

(declare-fun b!6923487 () Bool)

(assert (= bs!1847740 (and b!6923487 b!6923439)))

(declare-fun lambda!393714 () Int)

(assert (=> bs!1847740 (= (and (= (_1!37083 lt!2471065) (_2!37083 lt!2471065)) (= (reg!17252 r1!6342) (reg!17252 r2!6280)) (= r1!6342 r2!6280)) (= lambda!393714 lambda!393710))))

(declare-fun bs!1847741 () Bool)

(assert (= bs!1847741 (and b!6923487 b!6923207)))

(assert (=> bs!1847741 (not (= lambda!393714 lambda!393686))))

(declare-fun bs!1847742 () Bool)

(assert (= bs!1847742 (and b!6923487 b!6923205)))

(assert (=> bs!1847742 (not (= lambda!393714 lambda!393684))))

(assert (=> bs!1847741 (not (= lambda!393714 lambda!393685))))

(declare-fun bs!1847743 () Bool)

(assert (= bs!1847743 (and b!6923487 b!6923446)))

(assert (=> bs!1847743 (not (= lambda!393714 lambda!393713))))

(declare-fun bs!1847744 () Bool)

(assert (= bs!1847744 (and b!6923487 b!6923191)))

(assert (=> bs!1847744 (not (= lambda!393714 lambda!393687))))

(assert (=> bs!1847744 (not (= lambda!393714 lambda!393688))))

(assert (=> bs!1847742 (not (= lambda!393714 lambda!393683))))

(assert (=> b!6923487 true))

(assert (=> b!6923487 true))

(declare-fun bs!1847756 () Bool)

(declare-fun b!6923494 () Bool)

(assert (= bs!1847756 (and b!6923494 b!6923439)))

(declare-fun lambda!393716 () Int)

(assert (=> bs!1847756 (not (= lambda!393716 lambda!393710))))

(declare-fun bs!1847757 () Bool)

(assert (= bs!1847757 (and b!6923494 b!6923205)))

(assert (=> bs!1847757 (= (and (= (_1!37083 lt!2471065) s!14361) (= (regOne!34358 r1!6342) lt!2471063) (= (regTwo!34358 r1!6342) r3!135)) (= lambda!393716 lambda!393684))))

(declare-fun bs!1847758 () Bool)

(assert (= bs!1847758 (and b!6923494 b!6923207)))

(assert (=> bs!1847758 (not (= lambda!393716 lambda!393685))))

(declare-fun bs!1847760 () Bool)

(assert (= bs!1847760 (and b!6923494 b!6923446)))

(assert (=> bs!1847760 (= (and (= (_1!37083 lt!2471065) (_2!37083 lt!2471065)) (= (regOne!34358 r1!6342) (regOne!34358 r2!6280)) (= (regTwo!34358 r1!6342) (regTwo!34358 r2!6280))) (= lambda!393716 lambda!393713))))

(declare-fun bs!1847761 () Bool)

(assert (= bs!1847761 (and b!6923494 b!6923191)))

(assert (=> bs!1847761 (not (= lambda!393716 lambda!393687))))

(assert (=> bs!1847758 (= (and (= (_1!37083 lt!2471065) (_1!37083 lt!2471049)) (= (regOne!34358 r1!6342) r1!6342) (= (regTwo!34358 r1!6342) r2!6280)) (= lambda!393716 lambda!393686))))

(declare-fun bs!1847762 () Bool)

(assert (= bs!1847762 (and b!6923494 b!6923487)))

(assert (=> bs!1847762 (not (= lambda!393716 lambda!393714))))

(assert (=> bs!1847761 (= (and (= (_1!37083 lt!2471065) lt!2471067) (= (regOne!34358 r1!6342) r2!6280) (= (regTwo!34358 r1!6342) r3!135)) (= lambda!393716 lambda!393688))))

(assert (=> bs!1847757 (not (= lambda!393716 lambda!393683))))

(assert (=> b!6923494 true))

(assert (=> b!6923494 true))

(declare-fun b!6923485 () Bool)

(declare-fun e!4166755 () Bool)

(declare-fun call!629279 () Bool)

(assert (=> b!6923485 (= e!4166755 call!629279)))

(declare-fun b!6923486 () Bool)

(declare-fun c!1285296 () Bool)

(assert (=> b!6923486 (= c!1285296 ((_ is Union!16923) r1!6342))))

(declare-fun e!4166758 () Bool)

(declare-fun e!4166757 () Bool)

(assert (=> b!6923486 (= e!4166758 e!4166757)))

(declare-fun e!4166759 () Bool)

(declare-fun call!629278 () Bool)

(assert (=> b!6923487 (= e!4166759 call!629278)))

(declare-fun b!6923488 () Bool)

(declare-fun e!4166753 () Bool)

(assert (=> b!6923488 (= e!4166757 e!4166753)))

(declare-fun res!2823300 () Bool)

(assert (=> b!6923488 (= res!2823300 (matchRSpec!3980 (regOne!34359 r1!6342) (_1!37083 lt!2471065)))))

(assert (=> b!6923488 (=> res!2823300 e!4166753)))

(declare-fun d!2164891 () Bool)

(declare-fun c!1285294 () Bool)

(assert (=> d!2164891 (= c!1285294 ((_ is EmptyExpr!16923) r1!6342))))

(assert (=> d!2164891 (= (matchRSpec!3980 r1!6342 (_1!37083 lt!2471065)) e!4166755)))

(declare-fun b!6923489 () Bool)

(declare-fun c!1285293 () Bool)

(assert (=> b!6923489 (= c!1285293 ((_ is ElementMatch!16923) r1!6342))))

(declare-fun e!4166754 () Bool)

(assert (=> b!6923489 (= e!4166754 e!4166758)))

(declare-fun b!6923490 () Bool)

(declare-fun res!2823299 () Bool)

(assert (=> b!6923490 (=> res!2823299 e!4166759)))

(assert (=> b!6923490 (= res!2823299 call!629279)))

(declare-fun e!4166756 () Bool)

(assert (=> b!6923490 (= e!4166756 e!4166759)))

(declare-fun b!6923491 () Bool)

(assert (=> b!6923491 (= e!4166757 e!4166756)))

(declare-fun c!1285295 () Bool)

(assert (=> b!6923491 (= c!1285295 ((_ is Star!16923) r1!6342))))

(declare-fun b!6923492 () Bool)

(assert (=> b!6923492 (= e!4166753 (matchRSpec!3980 (regTwo!34359 r1!6342) (_1!37083 lt!2471065)))))

(declare-fun b!6923493 () Bool)

(assert (=> b!6923493 (= e!4166758 (= (_1!37083 lt!2471065) (Cons!66552 (c!1285229 r1!6342) Nil!66552)))))

(assert (=> b!6923494 (= e!4166756 call!629278)))

(declare-fun b!6923495 () Bool)

(assert (=> b!6923495 (= e!4166755 e!4166754)))

(declare-fun res!2823298 () Bool)

(assert (=> b!6923495 (= res!2823298 (not ((_ is EmptyLang!16923) r1!6342)))))

(assert (=> b!6923495 (=> (not res!2823298) (not e!4166754))))

(declare-fun bm!629273 () Bool)

(assert (=> bm!629273 (= call!629278 (Exists!3925 (ite c!1285295 lambda!393714 lambda!393716)))))

(declare-fun bm!629274 () Bool)

(assert (=> bm!629274 (= call!629279 (isEmpty!38806 (_1!37083 lt!2471065)))))

(assert (= (and d!2164891 c!1285294) b!6923485))

(assert (= (and d!2164891 (not c!1285294)) b!6923495))

(assert (= (and b!6923495 res!2823298) b!6923489))

(assert (= (and b!6923489 c!1285293) b!6923493))

(assert (= (and b!6923489 (not c!1285293)) b!6923486))

(assert (= (and b!6923486 c!1285296) b!6923488))

(assert (= (and b!6923486 (not c!1285296)) b!6923491))

(assert (= (and b!6923488 (not res!2823300)) b!6923492))

(assert (= (and b!6923491 c!1285295) b!6923490))

(assert (= (and b!6923491 (not c!1285295)) b!6923494))

(assert (= (and b!6923490 (not res!2823299)) b!6923487))

(assert (= (or b!6923487 b!6923494) bm!629273))

(assert (= (or b!6923485 b!6923490) bm!629274))

(declare-fun m!7632826 () Bool)

(assert (=> b!6923488 m!7632826))

(declare-fun m!7632828 () Bool)

(assert (=> b!6923492 m!7632828))

(declare-fun m!7632830 () Bool)

(assert (=> bm!629273 m!7632830))

(declare-fun m!7632832 () Bool)

(assert (=> bm!629274 m!7632832))

(assert (=> b!6923200 d!2164891))

(declare-fun b!6923607 () Bool)

(declare-fun res!2823362 () Bool)

(declare-fun e!4166833 () Bool)

(assert (=> b!6923607 (=> (not res!2823362) (not e!4166833))))

(declare-fun tail!12932 (List!66676) List!66676)

(assert (=> b!6923607 (= res!2823362 (isEmpty!38806 (tail!12932 lt!2471067)))))

(declare-fun b!6923608 () Bool)

(declare-fun res!2823364 () Bool)

(declare-fun e!4166829 () Bool)

(assert (=> b!6923608 (=> res!2823364 e!4166829)))

(assert (=> b!6923608 (= res!2823364 (not (isEmpty!38806 (tail!12932 lt!2471067))))))

(declare-fun b!6923609 () Bool)

(declare-fun res!2823366 () Bool)

(assert (=> b!6923609 (=> (not res!2823366) (not e!4166833))))

(declare-fun call!629297 () Bool)

(assert (=> b!6923609 (= res!2823366 (not call!629297))))

(declare-fun b!6923610 () Bool)

(declare-fun e!4166828 () Bool)

(declare-fun e!4166831 () Bool)

(assert (=> b!6923610 (= e!4166828 e!4166831)))

(declare-fun res!2823365 () Bool)

(assert (=> b!6923610 (=> (not res!2823365) (not e!4166831))))

(declare-fun lt!2471134 () Bool)

(assert (=> b!6923610 (= res!2823365 (not lt!2471134))))

(declare-fun b!6923611 () Bool)

(assert (=> b!6923611 (= e!4166831 e!4166829)))

(declare-fun res!2823367 () Bool)

(assert (=> b!6923611 (=> res!2823367 e!4166829)))

(assert (=> b!6923611 (= res!2823367 call!629297)))

(declare-fun d!2164903 () Bool)

(declare-fun e!4166832 () Bool)

(assert (=> d!2164903 e!4166832))

(declare-fun c!1285324 () Bool)

(assert (=> d!2164903 (= c!1285324 ((_ is EmptyExpr!16923) lt!2471068))))

(declare-fun e!4166830 () Bool)

(assert (=> d!2164903 (= lt!2471134 e!4166830)))

(declare-fun c!1285325 () Bool)

(assert (=> d!2164903 (= c!1285325 (isEmpty!38806 lt!2471067))))

(assert (=> d!2164903 (validRegex!8629 lt!2471068)))

(assert (=> d!2164903 (= (matchR!9062 lt!2471068 lt!2471067) lt!2471134)))

(declare-fun b!6923612 () Bool)

(declare-fun derivativeStep!5427 (Regex!16923 C!34116) Regex!16923)

(declare-fun head!13880 (List!66676) C!34116)

(assert (=> b!6923612 (= e!4166830 (matchR!9062 (derivativeStep!5427 lt!2471068 (head!13880 lt!2471067)) (tail!12932 lt!2471067)))))

(declare-fun b!6923613 () Bool)

(declare-fun e!4166834 () Bool)

(assert (=> b!6923613 (= e!4166832 e!4166834)))

(declare-fun c!1285323 () Bool)

(assert (=> b!6923613 (= c!1285323 ((_ is EmptyLang!16923) lt!2471068))))

(declare-fun b!6923614 () Bool)

(declare-fun res!2823360 () Bool)

(assert (=> b!6923614 (=> res!2823360 e!4166828)))

(assert (=> b!6923614 (= res!2823360 (not ((_ is ElementMatch!16923) lt!2471068)))))

(assert (=> b!6923614 (= e!4166834 e!4166828)))

(declare-fun b!6923615 () Bool)

(assert (=> b!6923615 (= e!4166832 (= lt!2471134 call!629297))))

(declare-fun b!6923616 () Bool)

(declare-fun res!2823363 () Bool)

(assert (=> b!6923616 (=> res!2823363 e!4166828)))

(assert (=> b!6923616 (= res!2823363 e!4166833)))

(declare-fun res!2823361 () Bool)

(assert (=> b!6923616 (=> (not res!2823361) (not e!4166833))))

(assert (=> b!6923616 (= res!2823361 lt!2471134)))

(declare-fun b!6923617 () Bool)

(assert (=> b!6923617 (= e!4166833 (= (head!13880 lt!2471067) (c!1285229 lt!2471068)))))

(declare-fun b!6923618 () Bool)

(assert (=> b!6923618 (= e!4166834 (not lt!2471134))))

(declare-fun b!6923619 () Bool)

(assert (=> b!6923619 (= e!4166829 (not (= (head!13880 lt!2471067) (c!1285229 lt!2471068))))))

(declare-fun bm!629292 () Bool)

(assert (=> bm!629292 (= call!629297 (isEmpty!38806 lt!2471067))))

(declare-fun b!6923620 () Bool)

(declare-fun nullable!6752 (Regex!16923) Bool)

(assert (=> b!6923620 (= e!4166830 (nullable!6752 lt!2471068))))

(assert (= (and d!2164903 c!1285325) b!6923620))

(assert (= (and d!2164903 (not c!1285325)) b!6923612))

(assert (= (and d!2164903 c!1285324) b!6923615))

(assert (= (and d!2164903 (not c!1285324)) b!6923613))

(assert (= (and b!6923613 c!1285323) b!6923618))

(assert (= (and b!6923613 (not c!1285323)) b!6923614))

(assert (= (and b!6923614 (not res!2823360)) b!6923616))

(assert (= (and b!6923616 res!2823361) b!6923609))

(assert (= (and b!6923609 res!2823366) b!6923607))

(assert (= (and b!6923607 res!2823362) b!6923617))

(assert (= (and b!6923616 (not res!2823363)) b!6923610))

(assert (= (and b!6923610 res!2823365) b!6923611))

(assert (= (and b!6923611 (not res!2823367)) b!6923608))

(assert (= (and b!6923608 (not res!2823364)) b!6923619))

(assert (= (or b!6923615 b!6923609 b!6923611) bm!629292))

(declare-fun m!7632932 () Bool)

(assert (=> b!6923608 m!7632932))

(assert (=> b!6923608 m!7632932))

(declare-fun m!7632938 () Bool)

(assert (=> b!6923608 m!7632938))

(assert (=> b!6923607 m!7632932))

(assert (=> b!6923607 m!7632932))

(assert (=> b!6923607 m!7632938))

(declare-fun m!7632942 () Bool)

(assert (=> d!2164903 m!7632942))

(assert (=> d!2164903 m!7632606))

(declare-fun m!7632944 () Bool)

(assert (=> b!6923620 m!7632944))

(declare-fun m!7632946 () Bool)

(assert (=> b!6923619 m!7632946))

(assert (=> b!6923617 m!7632946))

(assert (=> bm!629292 m!7632942))

(assert (=> b!6923612 m!7632946))

(assert (=> b!6923612 m!7632946))

(declare-fun m!7632950 () Bool)

(assert (=> b!6923612 m!7632950))

(assert (=> b!6923612 m!7632932))

(assert (=> b!6923612 m!7632950))

(assert (=> b!6923612 m!7632932))

(declare-fun m!7632952 () Bool)

(assert (=> b!6923612 m!7632952))

(assert (=> b!6923191 d!2164903))

(declare-fun d!2164939 () Bool)

(declare-fun choose!51552 (Int) Bool)

(assert (=> d!2164939 (= (Exists!3925 lambda!393687) (choose!51552 lambda!393687))))

(declare-fun bs!1847832 () Bool)

(assert (= bs!1847832 d!2164939))

(declare-fun m!7632954 () Bool)

(assert (=> bs!1847832 m!7632954))

(assert (=> b!6923191 d!2164939))

(declare-fun b!6923717 () Bool)

(declare-fun lt!2471148 () Unit!160570)

(declare-fun lt!2471150 () Unit!160570)

(assert (=> b!6923717 (= lt!2471148 lt!2471150)))

(assert (=> b!6923717 (= (++!14966 (++!14966 Nil!66552 (Cons!66552 (h!73000 lt!2471067) Nil!66552)) (t!380419 lt!2471067)) lt!2471067)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2831 (List!66676 C!34116 List!66676 List!66676) Unit!160570)

(assert (=> b!6923717 (= lt!2471150 (lemmaMoveElementToOtherListKeepsConcatEq!2831 Nil!66552 (h!73000 lt!2471067) (t!380419 lt!2471067) lt!2471067))))

(declare-fun e!4166891 () Option!16692)

(assert (=> b!6923717 (= e!4166891 (findConcatSeparation!3106 r2!6280 r3!135 (++!14966 Nil!66552 (Cons!66552 (h!73000 lt!2471067) Nil!66552)) (t!380419 lt!2471067) lt!2471067))))

(declare-fun b!6923718 () Bool)

(declare-fun e!4166889 () Option!16692)

(assert (=> b!6923718 (= e!4166889 (Some!16691 (tuple2!67561 Nil!66552 lt!2471067)))))

(declare-fun b!6923719 () Bool)

(declare-fun res!2823420 () Bool)

(declare-fun e!4166888 () Bool)

(assert (=> b!6923719 (=> (not res!2823420) (not e!4166888))))

(declare-fun lt!2471149 () Option!16692)

(assert (=> b!6923719 (= res!2823420 (matchR!9062 r2!6280 (_1!37083 (get!23325 lt!2471149))))))

(declare-fun d!2164941 () Bool)

(declare-fun e!4166887 () Bool)

(assert (=> d!2164941 e!4166887))

(declare-fun res!2823419 () Bool)

(assert (=> d!2164941 (=> res!2823419 e!4166887)))

(assert (=> d!2164941 (= res!2823419 e!4166888)))

(declare-fun res!2823417 () Bool)

(assert (=> d!2164941 (=> (not res!2823417) (not e!4166888))))

(assert (=> d!2164941 (= res!2823417 (isDefined!13395 lt!2471149))))

(assert (=> d!2164941 (= lt!2471149 e!4166889)))

(declare-fun c!1285350 () Bool)

(declare-fun e!4166890 () Bool)

(assert (=> d!2164941 (= c!1285350 e!4166890)))

(declare-fun res!2823416 () Bool)

(assert (=> d!2164941 (=> (not res!2823416) (not e!4166890))))

(assert (=> d!2164941 (= res!2823416 (matchR!9062 r2!6280 Nil!66552))))

(assert (=> d!2164941 (validRegex!8629 r2!6280)))

(assert (=> d!2164941 (= (findConcatSeparation!3106 r2!6280 r3!135 Nil!66552 lt!2471067 lt!2471067) lt!2471149)))

(declare-fun b!6923720 () Bool)

(assert (=> b!6923720 (= e!4166888 (= (++!14966 (_1!37083 (get!23325 lt!2471149)) (_2!37083 (get!23325 lt!2471149))) lt!2471067))))

(declare-fun b!6923721 () Bool)

(assert (=> b!6923721 (= e!4166887 (not (isDefined!13395 lt!2471149)))))

(declare-fun b!6923722 () Bool)

(assert (=> b!6923722 (= e!4166889 e!4166891)))

(declare-fun c!1285351 () Bool)

(assert (=> b!6923722 (= c!1285351 ((_ is Nil!66552) lt!2471067))))

(declare-fun b!6923723 () Bool)

(declare-fun res!2823418 () Bool)

(assert (=> b!6923723 (=> (not res!2823418) (not e!4166888))))

(assert (=> b!6923723 (= res!2823418 (matchR!9062 r3!135 (_2!37083 (get!23325 lt!2471149))))))

(declare-fun b!6923724 () Bool)

(assert (=> b!6923724 (= e!4166891 None!16691)))

(declare-fun b!6923725 () Bool)

(assert (=> b!6923725 (= e!4166890 (matchR!9062 r3!135 lt!2471067))))

(assert (= (and d!2164941 res!2823416) b!6923725))

(assert (= (and d!2164941 c!1285350) b!6923718))

(assert (= (and d!2164941 (not c!1285350)) b!6923722))

(assert (= (and b!6923722 c!1285351) b!6923724))

(assert (= (and b!6923722 (not c!1285351)) b!6923717))

(assert (= (and d!2164941 res!2823417) b!6923719))

(assert (= (and b!6923719 res!2823420) b!6923723))

(assert (= (and b!6923723 res!2823418) b!6923720))

(assert (= (and d!2164941 (not res!2823419)) b!6923721))

(declare-fun m!7633016 () Bool)

(assert (=> b!6923719 m!7633016))

(declare-fun m!7633018 () Bool)

(assert (=> b!6923719 m!7633018))

(declare-fun m!7633020 () Bool)

(assert (=> b!6923725 m!7633020))

(assert (=> b!6923723 m!7633016))

(declare-fun m!7633022 () Bool)

(assert (=> b!6923723 m!7633022))

(assert (=> b!6923720 m!7633016))

(declare-fun m!7633024 () Bool)

(assert (=> b!6923720 m!7633024))

(declare-fun m!7633026 () Bool)

(assert (=> d!2164941 m!7633026))

(declare-fun m!7633028 () Bool)

(assert (=> d!2164941 m!7633028))

(assert (=> d!2164941 m!7632532))

(declare-fun m!7633030 () Bool)

(assert (=> b!6923717 m!7633030))

(assert (=> b!6923717 m!7633030))

(declare-fun m!7633032 () Bool)

(assert (=> b!6923717 m!7633032))

(declare-fun m!7633034 () Bool)

(assert (=> b!6923717 m!7633034))

(assert (=> b!6923717 m!7633030))

(declare-fun m!7633036 () Bool)

(assert (=> b!6923717 m!7633036))

(assert (=> b!6923721 m!7633026))

(assert (=> b!6923191 d!2164941))

(declare-fun e!4166900 () Bool)

(declare-fun b!6923763 () Bool)

(declare-fun lt!2471151 () List!66676)

(assert (=> b!6923763 (= e!4166900 (or (not (= (_2!37083 lt!2471049) Nil!66552)) (= lt!2471151 (_2!37083 lt!2471065))))))

(declare-fun b!6923756 () Bool)

(declare-fun e!4166899 () List!66676)

(assert (=> b!6923756 (= e!4166899 (_2!37083 lt!2471049))))

(declare-fun b!6923759 () Bool)

(assert (=> b!6923759 (= e!4166899 (Cons!66552 (h!73000 (_2!37083 lt!2471065)) (++!14966 (t!380419 (_2!37083 lt!2471065)) (_2!37083 lt!2471049))))))

(declare-fun d!2164959 () Bool)

(assert (=> d!2164959 e!4166900))

(declare-fun res!2823422 () Bool)

(assert (=> d!2164959 (=> (not res!2823422) (not e!4166900))))

(assert (=> d!2164959 (= res!2823422 (= (content!13080 lt!2471151) ((_ map or) (content!13080 (_2!37083 lt!2471065)) (content!13080 (_2!37083 lt!2471049)))))))

(assert (=> d!2164959 (= lt!2471151 e!4166899)))

(declare-fun c!1285352 () Bool)

(assert (=> d!2164959 (= c!1285352 ((_ is Nil!66552) (_2!37083 lt!2471065)))))

(assert (=> d!2164959 (= (++!14966 (_2!37083 lt!2471065) (_2!37083 lt!2471049)) lt!2471151)))

(declare-fun b!6923761 () Bool)

(declare-fun res!2823421 () Bool)

(assert (=> b!6923761 (=> (not res!2823421) (not e!4166900))))

(assert (=> b!6923761 (= res!2823421 (= (size!40777 lt!2471151) (+ (size!40777 (_2!37083 lt!2471065)) (size!40777 (_2!37083 lt!2471049)))))))

(assert (= (and d!2164959 c!1285352) b!6923756))

(assert (= (and d!2164959 (not c!1285352)) b!6923759))

(assert (= (and d!2164959 res!2823422) b!6923761))

(assert (= (and b!6923761 res!2823421) b!6923763))

(declare-fun m!7633038 () Bool)

(assert (=> b!6923759 m!7633038))

(declare-fun m!7633040 () Bool)

(assert (=> d!2164959 m!7633040))

(assert (=> d!2164959 m!7632662))

(assert (=> d!2164959 m!7632782))

(declare-fun m!7633042 () Bool)

(assert (=> b!6923761 m!7633042))

(assert (=> b!6923761 m!7632668))

(assert (=> b!6923761 m!7632788))

(assert (=> b!6923191 d!2164959))

(declare-fun bs!1847921 () Bool)

(declare-fun d!2164961 () Bool)

(assert (= bs!1847921 (and d!2164961 b!6923439)))

(declare-fun lambda!393730 () Int)

(assert (=> bs!1847921 (not (= lambda!393730 lambda!393710))))

(declare-fun bs!1847922 () Bool)

(assert (= bs!1847922 (and d!2164961 b!6923205)))

(assert (=> bs!1847922 (not (= lambda!393730 lambda!393684))))

(declare-fun bs!1847923 () Bool)

(assert (= bs!1847923 (and d!2164961 b!6923446)))

(assert (=> bs!1847923 (not (= lambda!393730 lambda!393713))))

(declare-fun bs!1847924 () Bool)

(assert (= bs!1847924 (and d!2164961 b!6923191)))

(assert (=> bs!1847924 (= lambda!393730 lambda!393687)))

(declare-fun bs!1847925 () Bool)

(assert (= bs!1847925 (and d!2164961 b!6923207)))

(assert (=> bs!1847925 (not (= lambda!393730 lambda!393686))))

(declare-fun bs!1847926 () Bool)

(assert (= bs!1847926 (and d!2164961 b!6923487)))

(assert (=> bs!1847926 (not (= lambda!393730 lambda!393714))))

(assert (=> bs!1847924 (not (= lambda!393730 lambda!393688))))

(assert (=> bs!1847922 (= (and (= lt!2471067 s!14361) (= r2!6280 lt!2471063)) (= lambda!393730 lambda!393683))))

(assert (=> bs!1847925 (= (and (= lt!2471067 (_1!37083 lt!2471049)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393730 lambda!393685))))

(declare-fun bs!1847927 () Bool)

(assert (= bs!1847927 (and d!2164961 b!6923494)))

(assert (=> bs!1847927 (not (= lambda!393730 lambda!393716))))

(assert (=> d!2164961 true))

(assert (=> d!2164961 true))

(assert (=> d!2164961 true))

(assert (=> d!2164961 (= (isDefined!13395 (findConcatSeparation!3106 r2!6280 r3!135 Nil!66552 lt!2471067 lt!2471067)) (Exists!3925 lambda!393730))))

(declare-fun lt!2471154 () Unit!160570)

(declare-fun choose!51553 (Regex!16923 Regex!16923 List!66676) Unit!160570)

(assert (=> d!2164961 (= lt!2471154 (choose!51553 r2!6280 r3!135 lt!2471067))))

(assert (=> d!2164961 (validRegex!8629 r2!6280)))

(assert (=> d!2164961 (= (lemmaFindConcatSeparationEquivalentToExists!2868 r2!6280 r3!135 lt!2471067) lt!2471154)))

(declare-fun bs!1847928 () Bool)

(assert (= bs!1847928 d!2164961))

(assert (=> bs!1847928 m!7632532))

(declare-fun m!7633044 () Bool)

(assert (=> bs!1847928 m!7633044))

(assert (=> bs!1847928 m!7632514))

(assert (=> bs!1847928 m!7632520))

(assert (=> bs!1847928 m!7632514))

(declare-fun m!7633046 () Bool)

(assert (=> bs!1847928 m!7633046))

(assert (=> b!6923191 d!2164961))

(declare-fun d!2164963 () Bool)

(declare-fun isEmpty!38807 (Option!16692) Bool)

(assert (=> d!2164963 (= (isDefined!13395 (findConcatSeparation!3106 r2!6280 r3!135 Nil!66552 lt!2471067 lt!2471067)) (not (isEmpty!38807 (findConcatSeparation!3106 r2!6280 r3!135 Nil!66552 lt!2471067 lt!2471067))))))

(declare-fun bs!1847929 () Bool)

(assert (= bs!1847929 d!2164963))

(assert (=> bs!1847929 m!7632514))

(declare-fun m!7633048 () Bool)

(assert (=> bs!1847929 m!7633048))

(assert (=> b!6923191 d!2164963))

(declare-fun bs!1847930 () Bool)

(declare-fun b!6923811 () Bool)

(assert (= bs!1847930 (and b!6923811 b!6923439)))

(declare-fun lambda!393731 () Int)

(assert (=> bs!1847930 (= (and (= lt!2471067 (_2!37083 lt!2471065)) (= (reg!17252 lt!2471068) (reg!17252 r2!6280)) (= lt!2471068 r2!6280)) (= lambda!393731 lambda!393710))))

(declare-fun bs!1847931 () Bool)

(assert (= bs!1847931 (and b!6923811 b!6923446)))

(assert (=> bs!1847931 (not (= lambda!393731 lambda!393713))))

(declare-fun bs!1847932 () Bool)

(assert (= bs!1847932 (and b!6923811 b!6923191)))

(assert (=> bs!1847932 (not (= lambda!393731 lambda!393687))))

(declare-fun bs!1847933 () Bool)

(assert (= bs!1847933 (and b!6923811 b!6923207)))

(assert (=> bs!1847933 (not (= lambda!393731 lambda!393686))))

(declare-fun bs!1847934 () Bool)

(assert (= bs!1847934 (and b!6923811 b!6923487)))

(assert (=> bs!1847934 (= (and (= lt!2471067 (_1!37083 lt!2471065)) (= (reg!17252 lt!2471068) (reg!17252 r1!6342)) (= lt!2471068 r1!6342)) (= lambda!393731 lambda!393714))))

(declare-fun bs!1847935 () Bool)

(assert (= bs!1847935 (and b!6923811 d!2164961)))

(assert (=> bs!1847935 (not (= lambda!393731 lambda!393730))))

(declare-fun bs!1847936 () Bool)

(assert (= bs!1847936 (and b!6923811 b!6923205)))

(assert (=> bs!1847936 (not (= lambda!393731 lambda!393684))))

(assert (=> bs!1847932 (not (= lambda!393731 lambda!393688))))

(assert (=> bs!1847936 (not (= lambda!393731 lambda!393683))))

(assert (=> bs!1847933 (not (= lambda!393731 lambda!393685))))

(declare-fun bs!1847937 () Bool)

(assert (= bs!1847937 (and b!6923811 b!6923494)))

(assert (=> bs!1847937 (not (= lambda!393731 lambda!393716))))

(assert (=> b!6923811 true))

(assert (=> b!6923811 true))

(declare-fun bs!1847938 () Bool)

(declare-fun b!6923818 () Bool)

(assert (= bs!1847938 (and b!6923818 b!6923439)))

(declare-fun lambda!393732 () Int)

(assert (=> bs!1847938 (not (= lambda!393732 lambda!393710))))

(declare-fun bs!1847939 () Bool)

(assert (= bs!1847939 (and b!6923818 b!6923811)))

(assert (=> bs!1847939 (not (= lambda!393732 lambda!393731))))

(declare-fun bs!1847940 () Bool)

(assert (= bs!1847940 (and b!6923818 b!6923446)))

(assert (=> bs!1847940 (= (and (= lt!2471067 (_2!37083 lt!2471065)) (= (regOne!34358 lt!2471068) (regOne!34358 r2!6280)) (= (regTwo!34358 lt!2471068) (regTwo!34358 r2!6280))) (= lambda!393732 lambda!393713))))

(declare-fun bs!1847941 () Bool)

(assert (= bs!1847941 (and b!6923818 b!6923191)))

(assert (=> bs!1847941 (not (= lambda!393732 lambda!393687))))

(declare-fun bs!1847942 () Bool)

(assert (= bs!1847942 (and b!6923818 b!6923207)))

(assert (=> bs!1847942 (= (and (= lt!2471067 (_1!37083 lt!2471049)) (= (regOne!34358 lt!2471068) r1!6342) (= (regTwo!34358 lt!2471068) r2!6280)) (= lambda!393732 lambda!393686))))

(declare-fun bs!1847943 () Bool)

(assert (= bs!1847943 (and b!6923818 b!6923487)))

(assert (=> bs!1847943 (not (= lambda!393732 lambda!393714))))

(declare-fun bs!1847944 () Bool)

(assert (= bs!1847944 (and b!6923818 d!2164961)))

(assert (=> bs!1847944 (not (= lambda!393732 lambda!393730))))

(declare-fun bs!1847945 () Bool)

(assert (= bs!1847945 (and b!6923818 b!6923205)))

(assert (=> bs!1847945 (= (and (= lt!2471067 s!14361) (= (regOne!34358 lt!2471068) lt!2471063) (= (regTwo!34358 lt!2471068) r3!135)) (= lambda!393732 lambda!393684))))

(assert (=> bs!1847941 (= (and (= (regOne!34358 lt!2471068) r2!6280) (= (regTwo!34358 lt!2471068) r3!135)) (= lambda!393732 lambda!393688))))

(assert (=> bs!1847945 (not (= lambda!393732 lambda!393683))))

(assert (=> bs!1847942 (not (= lambda!393732 lambda!393685))))

(declare-fun bs!1847946 () Bool)

(assert (= bs!1847946 (and b!6923818 b!6923494)))

(assert (=> bs!1847946 (= (and (= lt!2471067 (_1!37083 lt!2471065)) (= (regOne!34358 lt!2471068) (regOne!34358 r1!6342)) (= (regTwo!34358 lt!2471068) (regTwo!34358 r1!6342))) (= lambda!393732 lambda!393716))))

(assert (=> b!6923818 true))

(assert (=> b!6923818 true))

(declare-fun b!6923809 () Bool)

(declare-fun e!4166918 () Bool)

(declare-fun call!629307 () Bool)

(assert (=> b!6923809 (= e!4166918 call!629307)))

(declare-fun b!6923810 () Bool)

(declare-fun c!1285356 () Bool)

(assert (=> b!6923810 (= c!1285356 ((_ is Union!16923) lt!2471068))))

(declare-fun e!4166921 () Bool)

(declare-fun e!4166920 () Bool)

(assert (=> b!6923810 (= e!4166921 e!4166920)))

(declare-fun e!4166922 () Bool)

(declare-fun call!629306 () Bool)

(assert (=> b!6923811 (= e!4166922 call!629306)))

(declare-fun b!6923812 () Bool)

(declare-fun e!4166916 () Bool)

(assert (=> b!6923812 (= e!4166920 e!4166916)))

(declare-fun res!2823429 () Bool)

(assert (=> b!6923812 (= res!2823429 (matchRSpec!3980 (regOne!34359 lt!2471068) lt!2471067))))

(assert (=> b!6923812 (=> res!2823429 e!4166916)))

(declare-fun d!2164965 () Bool)

(declare-fun c!1285354 () Bool)

(assert (=> d!2164965 (= c!1285354 ((_ is EmptyExpr!16923) lt!2471068))))

(assert (=> d!2164965 (= (matchRSpec!3980 lt!2471068 lt!2471067) e!4166918)))

(declare-fun b!6923813 () Bool)

(declare-fun c!1285353 () Bool)

(assert (=> b!6923813 (= c!1285353 ((_ is ElementMatch!16923) lt!2471068))))

(declare-fun e!4166917 () Bool)

(assert (=> b!6923813 (= e!4166917 e!4166921)))

(declare-fun b!6923814 () Bool)

(declare-fun res!2823428 () Bool)

(assert (=> b!6923814 (=> res!2823428 e!4166922)))

(assert (=> b!6923814 (= res!2823428 call!629307)))

(declare-fun e!4166919 () Bool)

(assert (=> b!6923814 (= e!4166919 e!4166922)))

(declare-fun b!6923815 () Bool)

(assert (=> b!6923815 (= e!4166920 e!4166919)))

(declare-fun c!1285355 () Bool)

(assert (=> b!6923815 (= c!1285355 ((_ is Star!16923) lt!2471068))))

(declare-fun b!6923816 () Bool)

(assert (=> b!6923816 (= e!4166916 (matchRSpec!3980 (regTwo!34359 lt!2471068) lt!2471067))))

(declare-fun b!6923817 () Bool)

(assert (=> b!6923817 (= e!4166921 (= lt!2471067 (Cons!66552 (c!1285229 lt!2471068) Nil!66552)))))

(assert (=> b!6923818 (= e!4166919 call!629306)))

(declare-fun b!6923819 () Bool)

(assert (=> b!6923819 (= e!4166918 e!4166917)))

(declare-fun res!2823427 () Bool)

(assert (=> b!6923819 (= res!2823427 (not ((_ is EmptyLang!16923) lt!2471068)))))

(assert (=> b!6923819 (=> (not res!2823427) (not e!4166917))))

(declare-fun bm!629301 () Bool)

(assert (=> bm!629301 (= call!629306 (Exists!3925 (ite c!1285355 lambda!393731 lambda!393732)))))

(declare-fun bm!629302 () Bool)

(assert (=> bm!629302 (= call!629307 (isEmpty!38806 lt!2471067))))

(assert (= (and d!2164965 c!1285354) b!6923809))

(assert (= (and d!2164965 (not c!1285354)) b!6923819))

(assert (= (and b!6923819 res!2823427) b!6923813))

(assert (= (and b!6923813 c!1285353) b!6923817))

(assert (= (and b!6923813 (not c!1285353)) b!6923810))

(assert (= (and b!6923810 c!1285356) b!6923812))

(assert (= (and b!6923810 (not c!1285356)) b!6923815))

(assert (= (and b!6923812 (not res!2823429)) b!6923816))

(assert (= (and b!6923815 c!1285355) b!6923814))

(assert (= (and b!6923815 (not c!1285355)) b!6923818))

(assert (= (and b!6923814 (not res!2823428)) b!6923811))

(assert (= (or b!6923811 b!6923818) bm!629301))

(assert (= (or b!6923809 b!6923814) bm!629302))

(declare-fun m!7633050 () Bool)

(assert (=> b!6923812 m!7633050))

(declare-fun m!7633052 () Bool)

(assert (=> b!6923816 m!7633052))

(declare-fun m!7633054 () Bool)

(assert (=> bm!629301 m!7633054))

(assert (=> bm!629302 m!7632942))

(assert (=> b!6923191 d!2164965))

(declare-fun d!2164967 () Bool)

(assert (=> d!2164967 (= (Exists!3925 lambda!393688) (choose!51552 lambda!393688))))

(declare-fun bs!1847947 () Bool)

(assert (= bs!1847947 d!2164967))

(declare-fun m!7633056 () Bool)

(assert (=> bs!1847947 m!7633056))

(assert (=> b!6923191 d!2164967))

(declare-fun d!2164969 () Bool)

(assert (=> d!2164969 (= (matchR!9062 lt!2471068 lt!2471067) (matchRSpec!3980 lt!2471068 lt!2471067))))

(declare-fun lt!2471155 () Unit!160570)

(assert (=> d!2164969 (= lt!2471155 (choose!51551 lt!2471068 lt!2471067))))

(assert (=> d!2164969 (validRegex!8629 lt!2471068)))

(assert (=> d!2164969 (= (mainMatchTheorem!3980 lt!2471068 lt!2471067) lt!2471155)))

(declare-fun bs!1847948 () Bool)

(assert (= bs!1847948 d!2164969))

(assert (=> bs!1847948 m!7632512))

(assert (=> bs!1847948 m!7632528))

(declare-fun m!7633058 () Bool)

(assert (=> bs!1847948 m!7633058))

(assert (=> bs!1847948 m!7632606))

(assert (=> b!6923191 d!2164969))

(declare-fun bs!1847949 () Bool)

(declare-fun d!2164971 () Bool)

(assert (= bs!1847949 (and d!2164971 b!6923439)))

(declare-fun lambda!393737 () Int)

(assert (=> bs!1847949 (not (= lambda!393737 lambda!393710))))

(declare-fun bs!1847950 () Bool)

(assert (= bs!1847950 (and d!2164971 b!6923818)))

(assert (=> bs!1847950 (not (= lambda!393737 lambda!393732))))

(declare-fun bs!1847951 () Bool)

(assert (= bs!1847951 (and d!2164971 b!6923811)))

(assert (=> bs!1847951 (not (= lambda!393737 lambda!393731))))

(declare-fun bs!1847952 () Bool)

(assert (= bs!1847952 (and d!2164971 b!6923446)))

(assert (=> bs!1847952 (not (= lambda!393737 lambda!393713))))

(declare-fun bs!1847953 () Bool)

(assert (= bs!1847953 (and d!2164971 b!6923191)))

(assert (=> bs!1847953 (= lambda!393737 lambda!393687)))

(declare-fun bs!1847954 () Bool)

(assert (= bs!1847954 (and d!2164971 b!6923207)))

(assert (=> bs!1847954 (not (= lambda!393737 lambda!393686))))

(declare-fun bs!1847955 () Bool)

(assert (= bs!1847955 (and d!2164971 b!6923487)))

(assert (=> bs!1847955 (not (= lambda!393737 lambda!393714))))

(declare-fun bs!1847956 () Bool)

(assert (= bs!1847956 (and d!2164971 d!2164961)))

(assert (=> bs!1847956 (= lambda!393737 lambda!393730)))

(declare-fun bs!1847957 () Bool)

(assert (= bs!1847957 (and d!2164971 b!6923205)))

(assert (=> bs!1847957 (not (= lambda!393737 lambda!393684))))

(assert (=> bs!1847953 (not (= lambda!393737 lambda!393688))))

(assert (=> bs!1847957 (= (and (= lt!2471067 s!14361) (= r2!6280 lt!2471063)) (= lambda!393737 lambda!393683))))

(assert (=> bs!1847954 (= (and (= lt!2471067 (_1!37083 lt!2471049)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393737 lambda!393685))))

(declare-fun bs!1847958 () Bool)

(assert (= bs!1847958 (and d!2164971 b!6923494)))

(assert (=> bs!1847958 (not (= lambda!393737 lambda!393716))))

(assert (=> d!2164971 true))

(assert (=> d!2164971 true))

(assert (=> d!2164971 true))

(declare-fun lambda!393738 () Int)

(assert (=> bs!1847949 (not (= lambda!393738 lambda!393710))))

(assert (=> bs!1847950 (= (and (= r2!6280 (regOne!34358 lt!2471068)) (= r3!135 (regTwo!34358 lt!2471068))) (= lambda!393738 lambda!393732))))

(assert (=> bs!1847951 (not (= lambda!393738 lambda!393731))))

(declare-fun bs!1847959 () Bool)

(assert (= bs!1847959 d!2164971))

(assert (=> bs!1847959 (not (= lambda!393738 lambda!393737))))

(assert (=> bs!1847952 (= (and (= lt!2471067 (_2!37083 lt!2471065)) (= r2!6280 (regOne!34358 r2!6280)) (= r3!135 (regTwo!34358 r2!6280))) (= lambda!393738 lambda!393713))))

(assert (=> bs!1847953 (not (= lambda!393738 lambda!393687))))

(assert (=> bs!1847954 (= (and (= lt!2471067 (_1!37083 lt!2471049)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393738 lambda!393686))))

(assert (=> bs!1847955 (not (= lambda!393738 lambda!393714))))

(assert (=> bs!1847956 (not (= lambda!393738 lambda!393730))))

(assert (=> bs!1847957 (= (and (= lt!2471067 s!14361) (= r2!6280 lt!2471063)) (= lambda!393738 lambda!393684))))

(assert (=> bs!1847953 (= lambda!393738 lambda!393688)))

(assert (=> bs!1847957 (not (= lambda!393738 lambda!393683))))

(assert (=> bs!1847954 (not (= lambda!393738 lambda!393685))))

(assert (=> bs!1847958 (= (and (= lt!2471067 (_1!37083 lt!2471065)) (= r2!6280 (regOne!34358 r1!6342)) (= r3!135 (regTwo!34358 r1!6342))) (= lambda!393738 lambda!393716))))

(assert (=> d!2164971 true))

(assert (=> d!2164971 true))

(assert (=> d!2164971 true))

(assert (=> d!2164971 (= (Exists!3925 lambda!393737) (Exists!3925 lambda!393738))))

(declare-fun lt!2471158 () Unit!160570)

(declare-fun choose!51554 (Regex!16923 Regex!16923 List!66676) Unit!160570)

(assert (=> d!2164971 (= lt!2471158 (choose!51554 r2!6280 r3!135 lt!2471067))))

(assert (=> d!2164971 (validRegex!8629 r2!6280)))

(assert (=> d!2164971 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2392 r2!6280 r3!135 lt!2471067) lt!2471158)))

(declare-fun m!7633060 () Bool)

(assert (=> bs!1847959 m!7633060))

(declare-fun m!7633062 () Bool)

(assert (=> bs!1847959 m!7633062))

(declare-fun m!7633064 () Bool)

(assert (=> bs!1847959 m!7633064))

(assert (=> bs!1847959 m!7632532))

(assert (=> b!6923191 d!2164971))

(declare-fun d!2164973 () Bool)

(assert (=> d!2164973 (isDefined!13395 (findConcatSeparation!3106 r2!6280 r3!135 Nil!66552 lt!2471067 lt!2471067))))

(declare-fun lt!2471161 () Unit!160570)

(declare-fun choose!51555 (Regex!16923 Regex!16923 List!66676 List!66676 List!66676 List!66676 List!66676) Unit!160570)

(assert (=> d!2164973 (= lt!2471161 (choose!51555 r2!6280 r3!135 (_2!37083 lt!2471065) (_2!37083 lt!2471049) lt!2471067 Nil!66552 lt!2471067))))

(assert (=> d!2164973 (validRegex!8629 r2!6280)))

(assert (=> d!2164973 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!84 r2!6280 r3!135 (_2!37083 lt!2471065) (_2!37083 lt!2471049) lt!2471067 Nil!66552 lt!2471067) lt!2471161)))

(declare-fun bs!1847960 () Bool)

(assert (= bs!1847960 d!2164973))

(assert (=> bs!1847960 m!7632514))

(assert (=> bs!1847960 m!7632514))

(assert (=> bs!1847960 m!7632520))

(declare-fun m!7633066 () Bool)

(assert (=> bs!1847960 m!7633066))

(assert (=> bs!1847960 m!7632532))

(assert (=> b!6923191 d!2164973))

(declare-fun b!6923846 () Bool)

(declare-fun e!4166942 () Bool)

(declare-fun e!4166946 () Bool)

(assert (=> b!6923846 (= e!4166942 e!4166946)))

(declare-fun c!1285362 () Bool)

(assert (=> b!6923846 (= c!1285362 ((_ is Union!16923) lt!2471068))))

(declare-fun bm!629309 () Bool)

(declare-fun call!629314 () Bool)

(declare-fun call!629316 () Bool)

(assert (=> bm!629309 (= call!629314 call!629316)))

(declare-fun b!6923847 () Bool)

(declare-fun e!4166945 () Bool)

(assert (=> b!6923847 (= e!4166945 call!629316)))

(declare-fun bm!629311 () Bool)

(declare-fun c!1285361 () Bool)

(assert (=> bm!629311 (= call!629316 (validRegex!8629 (ite c!1285361 (reg!17252 lt!2471068) (ite c!1285362 (regTwo!34359 lt!2471068) (regOne!34358 lt!2471068)))))))

(declare-fun b!6923848 () Bool)

(declare-fun e!4166943 () Bool)

(declare-fun call!629315 () Bool)

(assert (=> b!6923848 (= e!4166943 call!629315)))

(declare-fun b!6923849 () Bool)

(declare-fun res!2823449 () Bool)

(declare-fun e!4166941 () Bool)

(assert (=> b!6923849 (=> res!2823449 e!4166941)))

(assert (=> b!6923849 (= res!2823449 (not ((_ is Concat!25768) lt!2471068)))))

(assert (=> b!6923849 (= e!4166946 e!4166941)))

(declare-fun b!6923850 () Bool)

(declare-fun e!4166944 () Bool)

(assert (=> b!6923850 (= e!4166944 call!629314)))

(declare-fun b!6923851 () Bool)

(declare-fun res!2823448 () Bool)

(assert (=> b!6923851 (=> (not res!2823448) (not e!4166944))))

(assert (=> b!6923851 (= res!2823448 call!629315)))

(assert (=> b!6923851 (= e!4166946 e!4166944)))

(declare-fun b!6923852 () Bool)

(assert (=> b!6923852 (= e!4166942 e!4166945)))

(declare-fun res!2823452 () Bool)

(assert (=> b!6923852 (= res!2823452 (not (nullable!6752 (reg!17252 lt!2471068))))))

(assert (=> b!6923852 (=> (not res!2823452) (not e!4166945))))

(declare-fun bm!629310 () Bool)

(assert (=> bm!629310 (= call!629315 (validRegex!8629 (ite c!1285362 (regOne!34359 lt!2471068) (regTwo!34358 lt!2471068))))))

(declare-fun d!2164975 () Bool)

(declare-fun res!2823451 () Bool)

(declare-fun e!4166947 () Bool)

(assert (=> d!2164975 (=> res!2823451 e!4166947)))

(assert (=> d!2164975 (= res!2823451 ((_ is ElementMatch!16923) lt!2471068))))

(assert (=> d!2164975 (= (validRegex!8629 lt!2471068) e!4166947)))

(declare-fun b!6923853 () Bool)

(assert (=> b!6923853 (= e!4166947 e!4166942)))

(assert (=> b!6923853 (= c!1285361 ((_ is Star!16923) lt!2471068))))

(declare-fun b!6923854 () Bool)

(assert (=> b!6923854 (= e!4166941 e!4166943)))

(declare-fun res!2823450 () Bool)

(assert (=> b!6923854 (=> (not res!2823450) (not e!4166943))))

(assert (=> b!6923854 (= res!2823450 call!629314)))

(assert (= (and d!2164975 (not res!2823451)) b!6923853))

(assert (= (and b!6923853 c!1285361) b!6923852))

(assert (= (and b!6923853 (not c!1285361)) b!6923846))

(assert (= (and b!6923852 res!2823452) b!6923847))

(assert (= (and b!6923846 c!1285362) b!6923851))

(assert (= (and b!6923846 (not c!1285362)) b!6923849))

(assert (= (and b!6923851 res!2823448) b!6923850))

(assert (= (and b!6923849 (not res!2823449)) b!6923854))

(assert (= (and b!6923854 res!2823450) b!6923848))

(assert (= (or b!6923851 b!6923848) bm!629310))

(assert (= (or b!6923850 b!6923854) bm!629309))

(assert (= (or b!6923847 bm!629309) bm!629311))

(declare-fun m!7633068 () Bool)

(assert (=> bm!629311 m!7633068))

(declare-fun m!7633070 () Bool)

(assert (=> b!6923852 m!7633070))

(declare-fun m!7633072 () Bool)

(assert (=> bm!629310 m!7633072))

(assert (=> b!6923190 d!2164975))

(declare-fun b!6923855 () Bool)

(declare-fun e!4166949 () Bool)

(declare-fun e!4166953 () Bool)

(assert (=> b!6923855 (= e!4166949 e!4166953)))

(declare-fun c!1285364 () Bool)

(assert (=> b!6923855 (= c!1285364 ((_ is Union!16923) r3!135))))

(declare-fun bm!629312 () Bool)

(declare-fun call!629317 () Bool)

(declare-fun call!629319 () Bool)

(assert (=> bm!629312 (= call!629317 call!629319)))

(declare-fun b!6923856 () Bool)

(declare-fun e!4166952 () Bool)

(assert (=> b!6923856 (= e!4166952 call!629319)))

(declare-fun c!1285363 () Bool)

(declare-fun bm!629314 () Bool)

(assert (=> bm!629314 (= call!629319 (validRegex!8629 (ite c!1285363 (reg!17252 r3!135) (ite c!1285364 (regTwo!34359 r3!135) (regOne!34358 r3!135)))))))

(declare-fun b!6923857 () Bool)

(declare-fun e!4166950 () Bool)

(declare-fun call!629318 () Bool)

(assert (=> b!6923857 (= e!4166950 call!629318)))

(declare-fun b!6923858 () Bool)

(declare-fun res!2823454 () Bool)

(declare-fun e!4166948 () Bool)

(assert (=> b!6923858 (=> res!2823454 e!4166948)))

(assert (=> b!6923858 (= res!2823454 (not ((_ is Concat!25768) r3!135)))))

(assert (=> b!6923858 (= e!4166953 e!4166948)))

(declare-fun b!6923859 () Bool)

(declare-fun e!4166951 () Bool)

(assert (=> b!6923859 (= e!4166951 call!629317)))

(declare-fun b!6923860 () Bool)

(declare-fun res!2823453 () Bool)

(assert (=> b!6923860 (=> (not res!2823453) (not e!4166951))))

(assert (=> b!6923860 (= res!2823453 call!629318)))

(assert (=> b!6923860 (= e!4166953 e!4166951)))

(declare-fun b!6923861 () Bool)

(assert (=> b!6923861 (= e!4166949 e!4166952)))

(declare-fun res!2823457 () Bool)

(assert (=> b!6923861 (= res!2823457 (not (nullable!6752 (reg!17252 r3!135))))))

(assert (=> b!6923861 (=> (not res!2823457) (not e!4166952))))

(declare-fun bm!629313 () Bool)

(assert (=> bm!629313 (= call!629318 (validRegex!8629 (ite c!1285364 (regOne!34359 r3!135) (regTwo!34358 r3!135))))))

(declare-fun d!2164977 () Bool)

(declare-fun res!2823456 () Bool)

(declare-fun e!4166954 () Bool)

(assert (=> d!2164977 (=> res!2823456 e!4166954)))

(assert (=> d!2164977 (= res!2823456 ((_ is ElementMatch!16923) r3!135))))

(assert (=> d!2164977 (= (validRegex!8629 r3!135) e!4166954)))

(declare-fun b!6923862 () Bool)

(assert (=> b!6923862 (= e!4166954 e!4166949)))

(assert (=> b!6923862 (= c!1285363 ((_ is Star!16923) r3!135))))

(declare-fun b!6923863 () Bool)

(assert (=> b!6923863 (= e!4166948 e!4166950)))

(declare-fun res!2823455 () Bool)

(assert (=> b!6923863 (=> (not res!2823455) (not e!4166950))))

(assert (=> b!6923863 (= res!2823455 call!629317)))

(assert (= (and d!2164977 (not res!2823456)) b!6923862))

(assert (= (and b!6923862 c!1285363) b!6923861))

(assert (= (and b!6923862 (not c!1285363)) b!6923855))

(assert (= (and b!6923861 res!2823457) b!6923856))

(assert (= (and b!6923855 c!1285364) b!6923860))

(assert (= (and b!6923855 (not c!1285364)) b!6923858))

(assert (= (and b!6923860 res!2823453) b!6923859))

(assert (= (and b!6923858 (not res!2823454)) b!6923863))

(assert (= (and b!6923863 res!2823455) b!6923857))

(assert (= (or b!6923860 b!6923857) bm!629313))

(assert (= (or b!6923859 b!6923863) bm!629312))

(assert (= (or b!6923856 bm!629312) bm!629314))

(declare-fun m!7633074 () Bool)

(assert (=> bm!629314 m!7633074))

(declare-fun m!7633076 () Bool)

(assert (=> b!6923861 m!7633076))

(declare-fun m!7633078 () Bool)

(assert (=> bm!629313 m!7633078))

(assert (=> b!6923187 d!2164977))

(declare-fun b!6923864 () Bool)

(declare-fun res!2823460 () Bool)

(declare-fun e!4166960 () Bool)

(assert (=> b!6923864 (=> (not res!2823460) (not e!4166960))))

(assert (=> b!6923864 (= res!2823460 (isEmpty!38806 (tail!12932 (_2!37083 lt!2471049))))))

(declare-fun b!6923865 () Bool)

(declare-fun res!2823462 () Bool)

(declare-fun e!4166956 () Bool)

(assert (=> b!6923865 (=> res!2823462 e!4166956)))

(assert (=> b!6923865 (= res!2823462 (not (isEmpty!38806 (tail!12932 (_2!37083 lt!2471049)))))))

(declare-fun b!6923866 () Bool)

(declare-fun res!2823464 () Bool)

(assert (=> b!6923866 (=> (not res!2823464) (not e!4166960))))

(declare-fun call!629320 () Bool)

(assert (=> b!6923866 (= res!2823464 (not call!629320))))

(declare-fun b!6923867 () Bool)

(declare-fun e!4166955 () Bool)

(declare-fun e!4166958 () Bool)

(assert (=> b!6923867 (= e!4166955 e!4166958)))

(declare-fun res!2823463 () Bool)

(assert (=> b!6923867 (=> (not res!2823463) (not e!4166958))))

(declare-fun lt!2471162 () Bool)

(assert (=> b!6923867 (= res!2823463 (not lt!2471162))))

(declare-fun b!6923868 () Bool)

(assert (=> b!6923868 (= e!4166958 e!4166956)))

(declare-fun res!2823465 () Bool)

(assert (=> b!6923868 (=> res!2823465 e!4166956)))

(assert (=> b!6923868 (= res!2823465 call!629320)))

(declare-fun d!2164979 () Bool)

(declare-fun e!4166959 () Bool)

(assert (=> d!2164979 e!4166959))

(declare-fun c!1285366 () Bool)

(assert (=> d!2164979 (= c!1285366 ((_ is EmptyExpr!16923) r3!135))))

(declare-fun e!4166957 () Bool)

(assert (=> d!2164979 (= lt!2471162 e!4166957)))

(declare-fun c!1285367 () Bool)

(assert (=> d!2164979 (= c!1285367 (isEmpty!38806 (_2!37083 lt!2471049)))))

(assert (=> d!2164979 (validRegex!8629 r3!135)))

(assert (=> d!2164979 (= (matchR!9062 r3!135 (_2!37083 lt!2471049)) lt!2471162)))

(declare-fun b!6923869 () Bool)

(assert (=> b!6923869 (= e!4166957 (matchR!9062 (derivativeStep!5427 r3!135 (head!13880 (_2!37083 lt!2471049))) (tail!12932 (_2!37083 lt!2471049))))))

(declare-fun b!6923870 () Bool)

(declare-fun e!4166961 () Bool)

(assert (=> b!6923870 (= e!4166959 e!4166961)))

(declare-fun c!1285365 () Bool)

(assert (=> b!6923870 (= c!1285365 ((_ is EmptyLang!16923) r3!135))))

(declare-fun b!6923871 () Bool)

(declare-fun res!2823458 () Bool)

(assert (=> b!6923871 (=> res!2823458 e!4166955)))

(assert (=> b!6923871 (= res!2823458 (not ((_ is ElementMatch!16923) r3!135)))))

(assert (=> b!6923871 (= e!4166961 e!4166955)))

(declare-fun b!6923872 () Bool)

(assert (=> b!6923872 (= e!4166959 (= lt!2471162 call!629320))))

(declare-fun b!6923873 () Bool)

(declare-fun res!2823461 () Bool)

(assert (=> b!6923873 (=> res!2823461 e!4166955)))

(assert (=> b!6923873 (= res!2823461 e!4166960)))

(declare-fun res!2823459 () Bool)

(assert (=> b!6923873 (=> (not res!2823459) (not e!4166960))))

(assert (=> b!6923873 (= res!2823459 lt!2471162)))

(declare-fun b!6923874 () Bool)

(assert (=> b!6923874 (= e!4166960 (= (head!13880 (_2!37083 lt!2471049)) (c!1285229 r3!135)))))

(declare-fun b!6923875 () Bool)

(assert (=> b!6923875 (= e!4166961 (not lt!2471162))))

(declare-fun b!6923876 () Bool)

(assert (=> b!6923876 (= e!4166956 (not (= (head!13880 (_2!37083 lt!2471049)) (c!1285229 r3!135))))))

(declare-fun bm!629315 () Bool)

(assert (=> bm!629315 (= call!629320 (isEmpty!38806 (_2!37083 lt!2471049)))))

(declare-fun b!6923877 () Bool)

(assert (=> b!6923877 (= e!4166957 (nullable!6752 r3!135))))

(assert (= (and d!2164979 c!1285367) b!6923877))

(assert (= (and d!2164979 (not c!1285367)) b!6923869))

(assert (= (and d!2164979 c!1285366) b!6923872))

(assert (= (and d!2164979 (not c!1285366)) b!6923870))

(assert (= (and b!6923870 c!1285365) b!6923875))

(assert (= (and b!6923870 (not c!1285365)) b!6923871))

(assert (= (and b!6923871 (not res!2823458)) b!6923873))

(assert (= (and b!6923873 res!2823459) b!6923866))

(assert (= (and b!6923866 res!2823464) b!6923864))

(assert (= (and b!6923864 res!2823460) b!6923874))

(assert (= (and b!6923873 (not res!2823461)) b!6923867))

(assert (= (and b!6923867 res!2823463) b!6923868))

(assert (= (and b!6923868 (not res!2823465)) b!6923865))

(assert (= (and b!6923865 (not res!2823462)) b!6923876))

(assert (= (or b!6923872 b!6923866 b!6923868) bm!629315))

(declare-fun m!7633080 () Bool)

(assert (=> b!6923865 m!7633080))

(assert (=> b!6923865 m!7633080))

(declare-fun m!7633082 () Bool)

(assert (=> b!6923865 m!7633082))

(assert (=> b!6923864 m!7633080))

(assert (=> b!6923864 m!7633080))

(assert (=> b!6923864 m!7633082))

(declare-fun m!7633084 () Bool)

(assert (=> d!2164979 m!7633084))

(assert (=> d!2164979 m!7632548))

(declare-fun m!7633086 () Bool)

(assert (=> b!6923877 m!7633086))

(declare-fun m!7633088 () Bool)

(assert (=> b!6923876 m!7633088))

(assert (=> b!6923874 m!7633088))

(assert (=> bm!629315 m!7633084))

(assert (=> b!6923869 m!7633088))

(assert (=> b!6923869 m!7633088))

(declare-fun m!7633090 () Bool)

(assert (=> b!6923869 m!7633090))

(assert (=> b!6923869 m!7633080))

(assert (=> b!6923869 m!7633090))

(assert (=> b!6923869 m!7633080))

(declare-fun m!7633092 () Bool)

(assert (=> b!6923869 m!7633092))

(assert (=> b!6923208 d!2164979))

(declare-fun bs!1847961 () Bool)

(declare-fun b!6923880 () Bool)

(assert (= bs!1847961 (and b!6923880 b!6923439)))

(declare-fun lambda!393739 () Int)

(assert (=> bs!1847961 (= (and (= s!14361 (_2!37083 lt!2471065)) (= (reg!17252 lt!2471058) (reg!17252 r2!6280)) (= lt!2471058 r2!6280)) (= lambda!393739 lambda!393710))))

(declare-fun bs!1847962 () Bool)

(assert (= bs!1847962 (and b!6923880 b!6923811)))

(assert (=> bs!1847962 (= (and (= s!14361 lt!2471067) (= (reg!17252 lt!2471058) (reg!17252 lt!2471068)) (= lt!2471058 lt!2471068)) (= lambda!393739 lambda!393731))))

(declare-fun bs!1847963 () Bool)

(assert (= bs!1847963 (and b!6923880 d!2164971)))

(assert (=> bs!1847963 (not (= lambda!393739 lambda!393737))))

(declare-fun bs!1847964 () Bool)

(assert (= bs!1847964 (and b!6923880 b!6923446)))

(assert (=> bs!1847964 (not (= lambda!393739 lambda!393713))))

(declare-fun bs!1847965 () Bool)

(assert (= bs!1847965 (and b!6923880 b!6923191)))

(assert (=> bs!1847965 (not (= lambda!393739 lambda!393687))))

(declare-fun bs!1847966 () Bool)

(assert (= bs!1847966 (and b!6923880 b!6923818)))

(assert (=> bs!1847966 (not (= lambda!393739 lambda!393732))))

(assert (=> bs!1847963 (not (= lambda!393739 lambda!393738))))

(declare-fun bs!1847967 () Bool)

(assert (= bs!1847967 (and b!6923880 b!6923207)))

(assert (=> bs!1847967 (not (= lambda!393739 lambda!393686))))

(declare-fun bs!1847968 () Bool)

(assert (= bs!1847968 (and b!6923880 b!6923487)))

(assert (=> bs!1847968 (= (and (= s!14361 (_1!37083 lt!2471065)) (= (reg!17252 lt!2471058) (reg!17252 r1!6342)) (= lt!2471058 r1!6342)) (= lambda!393739 lambda!393714))))

(declare-fun bs!1847969 () Bool)

(assert (= bs!1847969 (and b!6923880 d!2164961)))

(assert (=> bs!1847969 (not (= lambda!393739 lambda!393730))))

(declare-fun bs!1847970 () Bool)

(assert (= bs!1847970 (and b!6923880 b!6923205)))

(assert (=> bs!1847970 (not (= lambda!393739 lambda!393684))))

(assert (=> bs!1847965 (not (= lambda!393739 lambda!393688))))

(assert (=> bs!1847970 (not (= lambda!393739 lambda!393683))))

(assert (=> bs!1847967 (not (= lambda!393739 lambda!393685))))

(declare-fun bs!1847971 () Bool)

(assert (= bs!1847971 (and b!6923880 b!6923494)))

(assert (=> bs!1847971 (not (= lambda!393739 lambda!393716))))

(assert (=> b!6923880 true))

(assert (=> b!6923880 true))

(declare-fun bs!1847972 () Bool)

(declare-fun b!6923887 () Bool)

(assert (= bs!1847972 (and b!6923887 b!6923439)))

(declare-fun lambda!393740 () Int)

(assert (=> bs!1847972 (not (= lambda!393740 lambda!393710))))

(declare-fun bs!1847973 () Bool)

(assert (= bs!1847973 (and b!6923887 b!6923811)))

(assert (=> bs!1847973 (not (= lambda!393740 lambda!393731))))

(declare-fun bs!1847974 () Bool)

(assert (= bs!1847974 (and b!6923887 d!2164971)))

(assert (=> bs!1847974 (not (= lambda!393740 lambda!393737))))

(declare-fun bs!1847975 () Bool)

(assert (= bs!1847975 (and b!6923887 b!6923880)))

(assert (=> bs!1847975 (not (= lambda!393740 lambda!393739))))

(declare-fun bs!1847976 () Bool)

(assert (= bs!1847976 (and b!6923887 b!6923446)))

(assert (=> bs!1847976 (= (and (= s!14361 (_2!37083 lt!2471065)) (= (regOne!34358 lt!2471058) (regOne!34358 r2!6280)) (= (regTwo!34358 lt!2471058) (regTwo!34358 r2!6280))) (= lambda!393740 lambda!393713))))

(declare-fun bs!1847977 () Bool)

(assert (= bs!1847977 (and b!6923887 b!6923191)))

(assert (=> bs!1847977 (not (= lambda!393740 lambda!393687))))

(declare-fun bs!1847978 () Bool)

(assert (= bs!1847978 (and b!6923887 b!6923818)))

(assert (=> bs!1847978 (= (and (= s!14361 lt!2471067) (= (regOne!34358 lt!2471058) (regOne!34358 lt!2471068)) (= (regTwo!34358 lt!2471058) (regTwo!34358 lt!2471068))) (= lambda!393740 lambda!393732))))

(assert (=> bs!1847974 (= (and (= s!14361 lt!2471067) (= (regOne!34358 lt!2471058) r2!6280) (= (regTwo!34358 lt!2471058) r3!135)) (= lambda!393740 lambda!393738))))

(declare-fun bs!1847979 () Bool)

(assert (= bs!1847979 (and b!6923887 b!6923207)))

(assert (=> bs!1847979 (= (and (= s!14361 (_1!37083 lt!2471049)) (= (regOne!34358 lt!2471058) r1!6342) (= (regTwo!34358 lt!2471058) r2!6280)) (= lambda!393740 lambda!393686))))

(declare-fun bs!1847980 () Bool)

(assert (= bs!1847980 (and b!6923887 b!6923487)))

(assert (=> bs!1847980 (not (= lambda!393740 lambda!393714))))

(declare-fun bs!1847981 () Bool)

(assert (= bs!1847981 (and b!6923887 d!2164961)))

(assert (=> bs!1847981 (not (= lambda!393740 lambda!393730))))

(declare-fun bs!1847982 () Bool)

(assert (= bs!1847982 (and b!6923887 b!6923205)))

(assert (=> bs!1847982 (= (and (= (regOne!34358 lt!2471058) lt!2471063) (= (regTwo!34358 lt!2471058) r3!135)) (= lambda!393740 lambda!393684))))

(assert (=> bs!1847977 (= (and (= s!14361 lt!2471067) (= (regOne!34358 lt!2471058) r2!6280) (= (regTwo!34358 lt!2471058) r3!135)) (= lambda!393740 lambda!393688))))

(assert (=> bs!1847982 (not (= lambda!393740 lambda!393683))))

(assert (=> bs!1847979 (not (= lambda!393740 lambda!393685))))

(declare-fun bs!1847983 () Bool)

(assert (= bs!1847983 (and b!6923887 b!6923494)))

(assert (=> bs!1847983 (= (and (= s!14361 (_1!37083 lt!2471065)) (= (regOne!34358 lt!2471058) (regOne!34358 r1!6342)) (= (regTwo!34358 lt!2471058) (regTwo!34358 r1!6342))) (= lambda!393740 lambda!393716))))

(assert (=> b!6923887 true))

(assert (=> b!6923887 true))

(declare-fun b!6923878 () Bool)

(declare-fun e!4166964 () Bool)

(declare-fun call!629322 () Bool)

(assert (=> b!6923878 (= e!4166964 call!629322)))

(declare-fun b!6923879 () Bool)

(declare-fun c!1285371 () Bool)

(assert (=> b!6923879 (= c!1285371 ((_ is Union!16923) lt!2471058))))

(declare-fun e!4166967 () Bool)

(declare-fun e!4166966 () Bool)

(assert (=> b!6923879 (= e!4166967 e!4166966)))

(declare-fun e!4166968 () Bool)

(declare-fun call!629321 () Bool)

(assert (=> b!6923880 (= e!4166968 call!629321)))

(declare-fun b!6923881 () Bool)

(declare-fun e!4166962 () Bool)

(assert (=> b!6923881 (= e!4166966 e!4166962)))

(declare-fun res!2823468 () Bool)

(assert (=> b!6923881 (= res!2823468 (matchRSpec!3980 (regOne!34359 lt!2471058) s!14361))))

(assert (=> b!6923881 (=> res!2823468 e!4166962)))

(declare-fun d!2164981 () Bool)

(declare-fun c!1285369 () Bool)

(assert (=> d!2164981 (= c!1285369 ((_ is EmptyExpr!16923) lt!2471058))))

(assert (=> d!2164981 (= (matchRSpec!3980 lt!2471058 s!14361) e!4166964)))

(declare-fun b!6923882 () Bool)

(declare-fun c!1285368 () Bool)

(assert (=> b!6923882 (= c!1285368 ((_ is ElementMatch!16923) lt!2471058))))

(declare-fun e!4166963 () Bool)

(assert (=> b!6923882 (= e!4166963 e!4166967)))

(declare-fun b!6923883 () Bool)

(declare-fun res!2823467 () Bool)

(assert (=> b!6923883 (=> res!2823467 e!4166968)))

(assert (=> b!6923883 (= res!2823467 call!629322)))

(declare-fun e!4166965 () Bool)

(assert (=> b!6923883 (= e!4166965 e!4166968)))

(declare-fun b!6923884 () Bool)

(assert (=> b!6923884 (= e!4166966 e!4166965)))

(declare-fun c!1285370 () Bool)

(assert (=> b!6923884 (= c!1285370 ((_ is Star!16923) lt!2471058))))

(declare-fun b!6923885 () Bool)

(assert (=> b!6923885 (= e!4166962 (matchRSpec!3980 (regTwo!34359 lt!2471058) s!14361))))

(declare-fun b!6923886 () Bool)

(assert (=> b!6923886 (= e!4166967 (= s!14361 (Cons!66552 (c!1285229 lt!2471058) Nil!66552)))))

(assert (=> b!6923887 (= e!4166965 call!629321)))

(declare-fun b!6923888 () Bool)

(assert (=> b!6923888 (= e!4166964 e!4166963)))

(declare-fun res!2823466 () Bool)

(assert (=> b!6923888 (= res!2823466 (not ((_ is EmptyLang!16923) lt!2471058)))))

(assert (=> b!6923888 (=> (not res!2823466) (not e!4166963))))

(declare-fun bm!629316 () Bool)

(assert (=> bm!629316 (= call!629321 (Exists!3925 (ite c!1285370 lambda!393739 lambda!393740)))))

(declare-fun bm!629317 () Bool)

(assert (=> bm!629317 (= call!629322 (isEmpty!38806 s!14361))))

(assert (= (and d!2164981 c!1285369) b!6923878))

(assert (= (and d!2164981 (not c!1285369)) b!6923888))

(assert (= (and b!6923888 res!2823466) b!6923882))

(assert (= (and b!6923882 c!1285368) b!6923886))

(assert (= (and b!6923882 (not c!1285368)) b!6923879))

(assert (= (and b!6923879 c!1285371) b!6923881))

(assert (= (and b!6923879 (not c!1285371)) b!6923884))

(assert (= (and b!6923881 (not res!2823468)) b!6923885))

(assert (= (and b!6923884 c!1285370) b!6923883))

(assert (= (and b!6923884 (not c!1285370)) b!6923887))

(assert (= (and b!6923883 (not res!2823467)) b!6923880))

(assert (= (or b!6923880 b!6923887) bm!629316))

(assert (= (or b!6923878 b!6923883) bm!629317))

(declare-fun m!7633094 () Bool)

(assert (=> b!6923881 m!7633094))

(declare-fun m!7633096 () Bool)

(assert (=> b!6923885 m!7633096))

(declare-fun m!7633098 () Bool)

(assert (=> bm!629316 m!7633098))

(declare-fun m!7633100 () Bool)

(assert (=> bm!629317 m!7633100))

(assert (=> b!6923197 d!2164981))

(declare-fun d!2164983 () Bool)

(assert (=> d!2164983 (= (matchR!9062 lt!2471048 s!14361) (matchRSpec!3980 lt!2471048 s!14361))))

(declare-fun lt!2471163 () Unit!160570)

(assert (=> d!2164983 (= lt!2471163 (choose!51551 lt!2471048 s!14361))))

(assert (=> d!2164983 (validRegex!8629 lt!2471048)))

(assert (=> d!2164983 (= (mainMatchTheorem!3980 lt!2471048 s!14361) lt!2471163)))

(declare-fun bs!1847984 () Bool)

(assert (= bs!1847984 d!2164983))

(assert (=> bs!1847984 m!7632582))

(assert (=> bs!1847984 m!7632584))

(declare-fun m!7633102 () Bool)

(assert (=> bs!1847984 m!7633102))

(declare-fun m!7633104 () Bool)

(assert (=> bs!1847984 m!7633104))

(assert (=> b!6923197 d!2164983))

(declare-fun b!6923889 () Bool)

(declare-fun res!2823471 () Bool)

(declare-fun e!4166974 () Bool)

(assert (=> b!6923889 (=> (not res!2823471) (not e!4166974))))

(assert (=> b!6923889 (= res!2823471 (isEmpty!38806 (tail!12932 s!14361)))))

(declare-fun b!6923890 () Bool)

(declare-fun res!2823473 () Bool)

(declare-fun e!4166970 () Bool)

(assert (=> b!6923890 (=> res!2823473 e!4166970)))

(assert (=> b!6923890 (= res!2823473 (not (isEmpty!38806 (tail!12932 s!14361))))))

(declare-fun b!6923891 () Bool)

(declare-fun res!2823475 () Bool)

(assert (=> b!6923891 (=> (not res!2823475) (not e!4166974))))

(declare-fun call!629323 () Bool)

(assert (=> b!6923891 (= res!2823475 (not call!629323))))

(declare-fun b!6923892 () Bool)

(declare-fun e!4166969 () Bool)

(declare-fun e!4166972 () Bool)

(assert (=> b!6923892 (= e!4166969 e!4166972)))

(declare-fun res!2823474 () Bool)

(assert (=> b!6923892 (=> (not res!2823474) (not e!4166972))))

(declare-fun lt!2471164 () Bool)

(assert (=> b!6923892 (= res!2823474 (not lt!2471164))))

(declare-fun b!6923893 () Bool)

(assert (=> b!6923893 (= e!4166972 e!4166970)))

(declare-fun res!2823476 () Bool)

(assert (=> b!6923893 (=> res!2823476 e!4166970)))

(assert (=> b!6923893 (= res!2823476 call!629323)))

(declare-fun d!2164985 () Bool)

(declare-fun e!4166973 () Bool)

(assert (=> d!2164985 e!4166973))

(declare-fun c!1285373 () Bool)

(assert (=> d!2164985 (= c!1285373 ((_ is EmptyExpr!16923) lt!2471058))))

(declare-fun e!4166971 () Bool)

(assert (=> d!2164985 (= lt!2471164 e!4166971)))

(declare-fun c!1285374 () Bool)

(assert (=> d!2164985 (= c!1285374 (isEmpty!38806 s!14361))))

(assert (=> d!2164985 (validRegex!8629 lt!2471058)))

(assert (=> d!2164985 (= (matchR!9062 lt!2471058 s!14361) lt!2471164)))

(declare-fun b!6923894 () Bool)

(assert (=> b!6923894 (= e!4166971 (matchR!9062 (derivativeStep!5427 lt!2471058 (head!13880 s!14361)) (tail!12932 s!14361)))))

(declare-fun b!6923895 () Bool)

(declare-fun e!4166975 () Bool)

(assert (=> b!6923895 (= e!4166973 e!4166975)))

(declare-fun c!1285372 () Bool)

(assert (=> b!6923895 (= c!1285372 ((_ is EmptyLang!16923) lt!2471058))))

(declare-fun b!6923896 () Bool)

(declare-fun res!2823469 () Bool)

(assert (=> b!6923896 (=> res!2823469 e!4166969)))

(assert (=> b!6923896 (= res!2823469 (not ((_ is ElementMatch!16923) lt!2471058)))))

(assert (=> b!6923896 (= e!4166975 e!4166969)))

(declare-fun b!6923897 () Bool)

(assert (=> b!6923897 (= e!4166973 (= lt!2471164 call!629323))))

(declare-fun b!6923898 () Bool)

(declare-fun res!2823472 () Bool)

(assert (=> b!6923898 (=> res!2823472 e!4166969)))

(assert (=> b!6923898 (= res!2823472 e!4166974)))

(declare-fun res!2823470 () Bool)

(assert (=> b!6923898 (=> (not res!2823470) (not e!4166974))))

(assert (=> b!6923898 (= res!2823470 lt!2471164)))

(declare-fun b!6923899 () Bool)

(assert (=> b!6923899 (= e!4166974 (= (head!13880 s!14361) (c!1285229 lt!2471058)))))

(declare-fun b!6923900 () Bool)

(assert (=> b!6923900 (= e!4166975 (not lt!2471164))))

(declare-fun b!6923901 () Bool)

(assert (=> b!6923901 (= e!4166970 (not (= (head!13880 s!14361) (c!1285229 lt!2471058))))))

(declare-fun bm!629318 () Bool)

(assert (=> bm!629318 (= call!629323 (isEmpty!38806 s!14361))))

(declare-fun b!6923902 () Bool)

(assert (=> b!6923902 (= e!4166971 (nullable!6752 lt!2471058))))

(assert (= (and d!2164985 c!1285374) b!6923902))

(assert (= (and d!2164985 (not c!1285374)) b!6923894))

(assert (= (and d!2164985 c!1285373) b!6923897))

(assert (= (and d!2164985 (not c!1285373)) b!6923895))

(assert (= (and b!6923895 c!1285372) b!6923900))

(assert (= (and b!6923895 (not c!1285372)) b!6923896))

(assert (= (and b!6923896 (not res!2823469)) b!6923898))

(assert (= (and b!6923898 res!2823470) b!6923891))

(assert (= (and b!6923891 res!2823475) b!6923889))

(assert (= (and b!6923889 res!2823471) b!6923899))

(assert (= (and b!6923898 (not res!2823472)) b!6923892))

(assert (= (and b!6923892 res!2823474) b!6923893))

(assert (= (and b!6923893 (not res!2823476)) b!6923890))

(assert (= (and b!6923890 (not res!2823473)) b!6923901))

(assert (= (or b!6923897 b!6923891 b!6923893) bm!629318))

(declare-fun m!7633106 () Bool)

(assert (=> b!6923890 m!7633106))

(assert (=> b!6923890 m!7633106))

(declare-fun m!7633108 () Bool)

(assert (=> b!6923890 m!7633108))

(assert (=> b!6923889 m!7633106))

(assert (=> b!6923889 m!7633106))

(assert (=> b!6923889 m!7633108))

(assert (=> d!2164985 m!7633100))

(declare-fun m!7633110 () Bool)

(assert (=> d!2164985 m!7633110))

(declare-fun m!7633112 () Bool)

(assert (=> b!6923902 m!7633112))

(declare-fun m!7633114 () Bool)

(assert (=> b!6923901 m!7633114))

(assert (=> b!6923899 m!7633114))

(assert (=> bm!629318 m!7633100))

(assert (=> b!6923894 m!7633114))

(assert (=> b!6923894 m!7633114))

(declare-fun m!7633116 () Bool)

(assert (=> b!6923894 m!7633116))

(assert (=> b!6923894 m!7633106))

(assert (=> b!6923894 m!7633116))

(assert (=> b!6923894 m!7633106))

(declare-fun m!7633118 () Bool)

(assert (=> b!6923894 m!7633118))

(assert (=> b!6923197 d!2164985))

(declare-fun b!6923903 () Bool)

(declare-fun res!2823479 () Bool)

(declare-fun e!4166981 () Bool)

(assert (=> b!6923903 (=> (not res!2823479) (not e!4166981))))

(assert (=> b!6923903 (= res!2823479 (isEmpty!38806 (tail!12932 s!14361)))))

(declare-fun b!6923904 () Bool)

(declare-fun res!2823481 () Bool)

(declare-fun e!4166977 () Bool)

(assert (=> b!6923904 (=> res!2823481 e!4166977)))

(assert (=> b!6923904 (= res!2823481 (not (isEmpty!38806 (tail!12932 s!14361))))))

(declare-fun b!6923905 () Bool)

(declare-fun res!2823483 () Bool)

(assert (=> b!6923905 (=> (not res!2823483) (not e!4166981))))

(declare-fun call!629324 () Bool)

(assert (=> b!6923905 (= res!2823483 (not call!629324))))

(declare-fun b!6923906 () Bool)

(declare-fun e!4166976 () Bool)

(declare-fun e!4166979 () Bool)

(assert (=> b!6923906 (= e!4166976 e!4166979)))

(declare-fun res!2823482 () Bool)

(assert (=> b!6923906 (=> (not res!2823482) (not e!4166979))))

(declare-fun lt!2471165 () Bool)

(assert (=> b!6923906 (= res!2823482 (not lt!2471165))))

(declare-fun b!6923907 () Bool)

(assert (=> b!6923907 (= e!4166979 e!4166977)))

(declare-fun res!2823484 () Bool)

(assert (=> b!6923907 (=> res!2823484 e!4166977)))

(assert (=> b!6923907 (= res!2823484 call!629324)))

(declare-fun d!2164987 () Bool)

(declare-fun e!4166980 () Bool)

(assert (=> d!2164987 e!4166980))

(declare-fun c!1285376 () Bool)

(assert (=> d!2164987 (= c!1285376 ((_ is EmptyExpr!16923) lt!2471048))))

(declare-fun e!4166978 () Bool)

(assert (=> d!2164987 (= lt!2471165 e!4166978)))

(declare-fun c!1285377 () Bool)

(assert (=> d!2164987 (= c!1285377 (isEmpty!38806 s!14361))))

(assert (=> d!2164987 (validRegex!8629 lt!2471048)))

(assert (=> d!2164987 (= (matchR!9062 lt!2471048 s!14361) lt!2471165)))

(declare-fun b!6923908 () Bool)

(assert (=> b!6923908 (= e!4166978 (matchR!9062 (derivativeStep!5427 lt!2471048 (head!13880 s!14361)) (tail!12932 s!14361)))))

(declare-fun b!6923909 () Bool)

(declare-fun e!4166982 () Bool)

(assert (=> b!6923909 (= e!4166980 e!4166982)))

(declare-fun c!1285375 () Bool)

(assert (=> b!6923909 (= c!1285375 ((_ is EmptyLang!16923) lt!2471048))))

(declare-fun b!6923910 () Bool)

(declare-fun res!2823477 () Bool)

(assert (=> b!6923910 (=> res!2823477 e!4166976)))

(assert (=> b!6923910 (= res!2823477 (not ((_ is ElementMatch!16923) lt!2471048)))))

(assert (=> b!6923910 (= e!4166982 e!4166976)))

(declare-fun b!6923911 () Bool)

(assert (=> b!6923911 (= e!4166980 (= lt!2471165 call!629324))))

(declare-fun b!6923912 () Bool)

(declare-fun res!2823480 () Bool)

(assert (=> b!6923912 (=> res!2823480 e!4166976)))

(assert (=> b!6923912 (= res!2823480 e!4166981)))

(declare-fun res!2823478 () Bool)

(assert (=> b!6923912 (=> (not res!2823478) (not e!4166981))))

(assert (=> b!6923912 (= res!2823478 lt!2471165)))

(declare-fun b!6923913 () Bool)

(assert (=> b!6923913 (= e!4166981 (= (head!13880 s!14361) (c!1285229 lt!2471048)))))

(declare-fun b!6923914 () Bool)

(assert (=> b!6923914 (= e!4166982 (not lt!2471165))))

(declare-fun b!6923915 () Bool)

(assert (=> b!6923915 (= e!4166977 (not (= (head!13880 s!14361) (c!1285229 lt!2471048))))))

(declare-fun bm!629319 () Bool)

(assert (=> bm!629319 (= call!629324 (isEmpty!38806 s!14361))))

(declare-fun b!6923916 () Bool)

(assert (=> b!6923916 (= e!4166978 (nullable!6752 lt!2471048))))

(assert (= (and d!2164987 c!1285377) b!6923916))

(assert (= (and d!2164987 (not c!1285377)) b!6923908))

(assert (= (and d!2164987 c!1285376) b!6923911))

(assert (= (and d!2164987 (not c!1285376)) b!6923909))

(assert (= (and b!6923909 c!1285375) b!6923914))

(assert (= (and b!6923909 (not c!1285375)) b!6923910))

(assert (= (and b!6923910 (not res!2823477)) b!6923912))

(assert (= (and b!6923912 res!2823478) b!6923905))

(assert (= (and b!6923905 res!2823483) b!6923903))

(assert (= (and b!6923903 res!2823479) b!6923913))

(assert (= (and b!6923912 (not res!2823480)) b!6923906))

(assert (= (and b!6923906 res!2823482) b!6923907))

(assert (= (and b!6923907 (not res!2823484)) b!6923904))

(assert (= (and b!6923904 (not res!2823481)) b!6923915))

(assert (= (or b!6923911 b!6923905 b!6923907) bm!629319))

(assert (=> b!6923904 m!7633106))

(assert (=> b!6923904 m!7633106))

(assert (=> b!6923904 m!7633108))

(assert (=> b!6923903 m!7633106))

(assert (=> b!6923903 m!7633106))

(assert (=> b!6923903 m!7633108))

(assert (=> d!2164987 m!7633100))

(assert (=> d!2164987 m!7633104))

(declare-fun m!7633120 () Bool)

(assert (=> b!6923916 m!7633120))

(assert (=> b!6923915 m!7633114))

(assert (=> b!6923913 m!7633114))

(assert (=> bm!629319 m!7633100))

(assert (=> b!6923908 m!7633114))

(assert (=> b!6923908 m!7633114))

(declare-fun m!7633122 () Bool)

(assert (=> b!6923908 m!7633122))

(assert (=> b!6923908 m!7633106))

(assert (=> b!6923908 m!7633122))

(assert (=> b!6923908 m!7633106))

(declare-fun m!7633124 () Bool)

(assert (=> b!6923908 m!7633124))

(assert (=> b!6923197 d!2164987))

(declare-fun bs!1847985 () Bool)

(declare-fun b!6923919 () Bool)

(assert (= bs!1847985 (and b!6923919 b!6923439)))

(declare-fun lambda!393741 () Int)

(assert (=> bs!1847985 (= (and (= s!14361 (_2!37083 lt!2471065)) (= (reg!17252 lt!2471048) (reg!17252 r2!6280)) (= lt!2471048 r2!6280)) (= lambda!393741 lambda!393710))))

(declare-fun bs!1847986 () Bool)

(assert (= bs!1847986 (and b!6923919 b!6923811)))

(assert (=> bs!1847986 (= (and (= s!14361 lt!2471067) (= (reg!17252 lt!2471048) (reg!17252 lt!2471068)) (= lt!2471048 lt!2471068)) (= lambda!393741 lambda!393731))))

(declare-fun bs!1847987 () Bool)

(assert (= bs!1847987 (and b!6923919 d!2164971)))

(assert (=> bs!1847987 (not (= lambda!393741 lambda!393737))))

(declare-fun bs!1847988 () Bool)

(assert (= bs!1847988 (and b!6923919 b!6923880)))

(assert (=> bs!1847988 (= (and (= (reg!17252 lt!2471048) (reg!17252 lt!2471058)) (= lt!2471048 lt!2471058)) (= lambda!393741 lambda!393739))))

(declare-fun bs!1847989 () Bool)

(assert (= bs!1847989 (and b!6923919 b!6923446)))

(assert (=> bs!1847989 (not (= lambda!393741 lambda!393713))))

(declare-fun bs!1847990 () Bool)

(assert (= bs!1847990 (and b!6923919 b!6923191)))

(assert (=> bs!1847990 (not (= lambda!393741 lambda!393687))))

(declare-fun bs!1847991 () Bool)

(assert (= bs!1847991 (and b!6923919 b!6923818)))

(assert (=> bs!1847991 (not (= lambda!393741 lambda!393732))))

(assert (=> bs!1847987 (not (= lambda!393741 lambda!393738))))

(declare-fun bs!1847992 () Bool)

(assert (= bs!1847992 (and b!6923919 b!6923207)))

(assert (=> bs!1847992 (not (= lambda!393741 lambda!393686))))

(declare-fun bs!1847993 () Bool)

(assert (= bs!1847993 (and b!6923919 b!6923487)))

(assert (=> bs!1847993 (= (and (= s!14361 (_1!37083 lt!2471065)) (= (reg!17252 lt!2471048) (reg!17252 r1!6342)) (= lt!2471048 r1!6342)) (= lambda!393741 lambda!393714))))

(declare-fun bs!1847994 () Bool)

(assert (= bs!1847994 (and b!6923919 d!2164961)))

(assert (=> bs!1847994 (not (= lambda!393741 lambda!393730))))

(declare-fun bs!1847995 () Bool)

(assert (= bs!1847995 (and b!6923919 b!6923205)))

(assert (=> bs!1847995 (not (= lambda!393741 lambda!393684))))

(assert (=> bs!1847990 (not (= lambda!393741 lambda!393688))))

(assert (=> bs!1847995 (not (= lambda!393741 lambda!393683))))

(assert (=> bs!1847992 (not (= lambda!393741 lambda!393685))))

(declare-fun bs!1847996 () Bool)

(assert (= bs!1847996 (and b!6923919 b!6923494)))

(assert (=> bs!1847996 (not (= lambda!393741 lambda!393716))))

(declare-fun bs!1847997 () Bool)

(assert (= bs!1847997 (and b!6923919 b!6923887)))

(assert (=> bs!1847997 (not (= lambda!393741 lambda!393740))))

(assert (=> b!6923919 true))

(assert (=> b!6923919 true))

(declare-fun bs!1847998 () Bool)

(declare-fun b!6923926 () Bool)

(assert (= bs!1847998 (and b!6923926 b!6923919)))

(declare-fun lambda!393742 () Int)

(assert (=> bs!1847998 (not (= lambda!393742 lambda!393741))))

(declare-fun bs!1847999 () Bool)

(assert (= bs!1847999 (and b!6923926 b!6923439)))

(assert (=> bs!1847999 (not (= lambda!393742 lambda!393710))))

(declare-fun bs!1848000 () Bool)

(assert (= bs!1848000 (and b!6923926 b!6923811)))

(assert (=> bs!1848000 (not (= lambda!393742 lambda!393731))))

(declare-fun bs!1848001 () Bool)

(assert (= bs!1848001 (and b!6923926 d!2164971)))

(assert (=> bs!1848001 (not (= lambda!393742 lambda!393737))))

(declare-fun bs!1848002 () Bool)

(assert (= bs!1848002 (and b!6923926 b!6923880)))

(assert (=> bs!1848002 (not (= lambda!393742 lambda!393739))))

(declare-fun bs!1848003 () Bool)

(assert (= bs!1848003 (and b!6923926 b!6923446)))

(assert (=> bs!1848003 (= (and (= s!14361 (_2!37083 lt!2471065)) (= (regOne!34358 lt!2471048) (regOne!34358 r2!6280)) (= (regTwo!34358 lt!2471048) (regTwo!34358 r2!6280))) (= lambda!393742 lambda!393713))))

(declare-fun bs!1848004 () Bool)

(assert (= bs!1848004 (and b!6923926 b!6923191)))

(assert (=> bs!1848004 (not (= lambda!393742 lambda!393687))))

(declare-fun bs!1848005 () Bool)

(assert (= bs!1848005 (and b!6923926 b!6923818)))

(assert (=> bs!1848005 (= (and (= s!14361 lt!2471067) (= (regOne!34358 lt!2471048) (regOne!34358 lt!2471068)) (= (regTwo!34358 lt!2471048) (regTwo!34358 lt!2471068))) (= lambda!393742 lambda!393732))))

(assert (=> bs!1848001 (= (and (= s!14361 lt!2471067) (= (regOne!34358 lt!2471048) r2!6280) (= (regTwo!34358 lt!2471048) r3!135)) (= lambda!393742 lambda!393738))))

(declare-fun bs!1848006 () Bool)

(assert (= bs!1848006 (and b!6923926 b!6923207)))

(assert (=> bs!1848006 (= (and (= s!14361 (_1!37083 lt!2471049)) (= (regOne!34358 lt!2471048) r1!6342) (= (regTwo!34358 lt!2471048) r2!6280)) (= lambda!393742 lambda!393686))))

(declare-fun bs!1848007 () Bool)

(assert (= bs!1848007 (and b!6923926 b!6923487)))

(assert (=> bs!1848007 (not (= lambda!393742 lambda!393714))))

(declare-fun bs!1848008 () Bool)

(assert (= bs!1848008 (and b!6923926 d!2164961)))

(assert (=> bs!1848008 (not (= lambda!393742 lambda!393730))))

(declare-fun bs!1848009 () Bool)

(assert (= bs!1848009 (and b!6923926 b!6923205)))

(assert (=> bs!1848009 (= (and (= (regOne!34358 lt!2471048) lt!2471063) (= (regTwo!34358 lt!2471048) r3!135)) (= lambda!393742 lambda!393684))))

(assert (=> bs!1848004 (= (and (= s!14361 lt!2471067) (= (regOne!34358 lt!2471048) r2!6280) (= (regTwo!34358 lt!2471048) r3!135)) (= lambda!393742 lambda!393688))))

(assert (=> bs!1848009 (not (= lambda!393742 lambda!393683))))

(assert (=> bs!1848006 (not (= lambda!393742 lambda!393685))))

(declare-fun bs!1848010 () Bool)

(assert (= bs!1848010 (and b!6923926 b!6923494)))

(assert (=> bs!1848010 (= (and (= s!14361 (_1!37083 lt!2471065)) (= (regOne!34358 lt!2471048) (regOne!34358 r1!6342)) (= (regTwo!34358 lt!2471048) (regTwo!34358 r1!6342))) (= lambda!393742 lambda!393716))))

(declare-fun bs!1848011 () Bool)

(assert (= bs!1848011 (and b!6923926 b!6923887)))

(assert (=> bs!1848011 (= (and (= (regOne!34358 lt!2471048) (regOne!34358 lt!2471058)) (= (regTwo!34358 lt!2471048) (regTwo!34358 lt!2471058))) (= lambda!393742 lambda!393740))))

(assert (=> b!6923926 true))

(assert (=> b!6923926 true))

(declare-fun b!6923917 () Bool)

(declare-fun e!4166985 () Bool)

(declare-fun call!629326 () Bool)

(assert (=> b!6923917 (= e!4166985 call!629326)))

(declare-fun b!6923918 () Bool)

(declare-fun c!1285381 () Bool)

(assert (=> b!6923918 (= c!1285381 ((_ is Union!16923) lt!2471048))))

(declare-fun e!4166988 () Bool)

(declare-fun e!4166987 () Bool)

(assert (=> b!6923918 (= e!4166988 e!4166987)))

(declare-fun e!4166989 () Bool)

(declare-fun call!629325 () Bool)

(assert (=> b!6923919 (= e!4166989 call!629325)))

(declare-fun b!6923920 () Bool)

(declare-fun e!4166983 () Bool)

(assert (=> b!6923920 (= e!4166987 e!4166983)))

(declare-fun res!2823487 () Bool)

(assert (=> b!6923920 (= res!2823487 (matchRSpec!3980 (regOne!34359 lt!2471048) s!14361))))

(assert (=> b!6923920 (=> res!2823487 e!4166983)))

(declare-fun d!2164989 () Bool)

(declare-fun c!1285379 () Bool)

(assert (=> d!2164989 (= c!1285379 ((_ is EmptyExpr!16923) lt!2471048))))

(assert (=> d!2164989 (= (matchRSpec!3980 lt!2471048 s!14361) e!4166985)))

(declare-fun b!6923921 () Bool)

(declare-fun c!1285378 () Bool)

(assert (=> b!6923921 (= c!1285378 ((_ is ElementMatch!16923) lt!2471048))))

(declare-fun e!4166984 () Bool)

(assert (=> b!6923921 (= e!4166984 e!4166988)))

(declare-fun b!6923922 () Bool)

(declare-fun res!2823486 () Bool)

(assert (=> b!6923922 (=> res!2823486 e!4166989)))

(assert (=> b!6923922 (= res!2823486 call!629326)))

(declare-fun e!4166986 () Bool)

(assert (=> b!6923922 (= e!4166986 e!4166989)))

(declare-fun b!6923923 () Bool)

(assert (=> b!6923923 (= e!4166987 e!4166986)))

(declare-fun c!1285380 () Bool)

(assert (=> b!6923923 (= c!1285380 ((_ is Star!16923) lt!2471048))))

(declare-fun b!6923924 () Bool)

(assert (=> b!6923924 (= e!4166983 (matchRSpec!3980 (regTwo!34359 lt!2471048) s!14361))))

(declare-fun b!6923925 () Bool)

(assert (=> b!6923925 (= e!4166988 (= s!14361 (Cons!66552 (c!1285229 lt!2471048) Nil!66552)))))

(assert (=> b!6923926 (= e!4166986 call!629325)))

(declare-fun b!6923927 () Bool)

(assert (=> b!6923927 (= e!4166985 e!4166984)))

(declare-fun res!2823485 () Bool)

(assert (=> b!6923927 (= res!2823485 (not ((_ is EmptyLang!16923) lt!2471048)))))

(assert (=> b!6923927 (=> (not res!2823485) (not e!4166984))))

(declare-fun bm!629320 () Bool)

(assert (=> bm!629320 (= call!629325 (Exists!3925 (ite c!1285380 lambda!393741 lambda!393742)))))

(declare-fun bm!629321 () Bool)

(assert (=> bm!629321 (= call!629326 (isEmpty!38806 s!14361))))

(assert (= (and d!2164989 c!1285379) b!6923917))

(assert (= (and d!2164989 (not c!1285379)) b!6923927))

(assert (= (and b!6923927 res!2823485) b!6923921))

(assert (= (and b!6923921 c!1285378) b!6923925))

(assert (= (and b!6923921 (not c!1285378)) b!6923918))

(assert (= (and b!6923918 c!1285381) b!6923920))

(assert (= (and b!6923918 (not c!1285381)) b!6923923))

(assert (= (and b!6923920 (not res!2823487)) b!6923924))

(assert (= (and b!6923923 c!1285380) b!6923922))

(assert (= (and b!6923923 (not c!1285380)) b!6923926))

(assert (= (and b!6923922 (not res!2823486)) b!6923919))

(assert (= (or b!6923919 b!6923926) bm!629320))

(assert (= (or b!6923917 b!6923922) bm!629321))

(declare-fun m!7633126 () Bool)

(assert (=> b!6923920 m!7633126))

(declare-fun m!7633128 () Bool)

(assert (=> b!6923924 m!7633128))

(declare-fun m!7633130 () Bool)

(assert (=> bm!629320 m!7633130))

(assert (=> bm!629321 m!7633100))

(assert (=> b!6923197 d!2164989))

(declare-fun d!2164991 () Bool)

(assert (=> d!2164991 (= (matchR!9062 lt!2471058 s!14361) (matchRSpec!3980 lt!2471058 s!14361))))

(declare-fun lt!2471166 () Unit!160570)

(assert (=> d!2164991 (= lt!2471166 (choose!51551 lt!2471058 s!14361))))

(assert (=> d!2164991 (validRegex!8629 lt!2471058)))

(assert (=> d!2164991 (= (mainMatchTheorem!3980 lt!2471058 s!14361) lt!2471166)))

(declare-fun bs!1848012 () Bool)

(assert (= bs!1848012 d!2164991))

(assert (=> bs!1848012 m!7632576))

(assert (=> bs!1848012 m!7632580))

(declare-fun m!7633132 () Bool)

(assert (=> bs!1848012 m!7633132))

(assert (=> bs!1848012 m!7633110))

(assert (=> b!6923197 d!2164991))

(declare-fun b!6923928 () Bool)

(declare-fun e!4166991 () Bool)

(declare-fun e!4166995 () Bool)

(assert (=> b!6923928 (= e!4166991 e!4166995)))

(declare-fun c!1285383 () Bool)

(assert (=> b!6923928 (= c!1285383 ((_ is Union!16923) r1!6342))))

(declare-fun bm!629322 () Bool)

(declare-fun call!629327 () Bool)

(declare-fun call!629329 () Bool)

(assert (=> bm!629322 (= call!629327 call!629329)))

(declare-fun b!6923929 () Bool)

(declare-fun e!4166994 () Bool)

(assert (=> b!6923929 (= e!4166994 call!629329)))

(declare-fun bm!629324 () Bool)

(declare-fun c!1285382 () Bool)

(assert (=> bm!629324 (= call!629329 (validRegex!8629 (ite c!1285382 (reg!17252 r1!6342) (ite c!1285383 (regTwo!34359 r1!6342) (regOne!34358 r1!6342)))))))

(declare-fun b!6923930 () Bool)

(declare-fun e!4166992 () Bool)

(declare-fun call!629328 () Bool)

(assert (=> b!6923930 (= e!4166992 call!629328)))

(declare-fun b!6923931 () Bool)

(declare-fun res!2823489 () Bool)

(declare-fun e!4166990 () Bool)

(assert (=> b!6923931 (=> res!2823489 e!4166990)))

(assert (=> b!6923931 (= res!2823489 (not ((_ is Concat!25768) r1!6342)))))

(assert (=> b!6923931 (= e!4166995 e!4166990)))

(declare-fun b!6923932 () Bool)

(declare-fun e!4166993 () Bool)

(assert (=> b!6923932 (= e!4166993 call!629327)))

(declare-fun b!6923933 () Bool)

(declare-fun res!2823488 () Bool)

(assert (=> b!6923933 (=> (not res!2823488) (not e!4166993))))

(assert (=> b!6923933 (= res!2823488 call!629328)))

(assert (=> b!6923933 (= e!4166995 e!4166993)))

(declare-fun b!6923934 () Bool)

(assert (=> b!6923934 (= e!4166991 e!4166994)))

(declare-fun res!2823492 () Bool)

(assert (=> b!6923934 (= res!2823492 (not (nullable!6752 (reg!17252 r1!6342))))))

(assert (=> b!6923934 (=> (not res!2823492) (not e!4166994))))

(declare-fun bm!629323 () Bool)

(assert (=> bm!629323 (= call!629328 (validRegex!8629 (ite c!1285383 (regOne!34359 r1!6342) (regTwo!34358 r1!6342))))))

(declare-fun d!2164993 () Bool)

(declare-fun res!2823491 () Bool)

(declare-fun e!4166996 () Bool)

(assert (=> d!2164993 (=> res!2823491 e!4166996)))

(assert (=> d!2164993 (= res!2823491 ((_ is ElementMatch!16923) r1!6342))))

(assert (=> d!2164993 (= (validRegex!8629 r1!6342) e!4166996)))

(declare-fun b!6923935 () Bool)

(assert (=> b!6923935 (= e!4166996 e!4166991)))

(assert (=> b!6923935 (= c!1285382 ((_ is Star!16923) r1!6342))))

(declare-fun b!6923936 () Bool)

(assert (=> b!6923936 (= e!4166990 e!4166992)))

(declare-fun res!2823490 () Bool)

(assert (=> b!6923936 (=> (not res!2823490) (not e!4166992))))

(assert (=> b!6923936 (= res!2823490 call!629327)))

(assert (= (and d!2164993 (not res!2823491)) b!6923935))

(assert (= (and b!6923935 c!1285382) b!6923934))

(assert (= (and b!6923935 (not c!1285382)) b!6923928))

(assert (= (and b!6923934 res!2823492) b!6923929))

(assert (= (and b!6923928 c!1285383) b!6923933))

(assert (= (and b!6923928 (not c!1285383)) b!6923931))

(assert (= (and b!6923933 res!2823488) b!6923932))

(assert (= (and b!6923931 (not res!2823489)) b!6923936))

(assert (= (and b!6923936 res!2823490) b!6923930))

(assert (= (or b!6923933 b!6923930) bm!629323))

(assert (= (or b!6923932 b!6923936) bm!629322))

(assert (= (or b!6923929 bm!629322) bm!629324))

(declare-fun m!7633134 () Bool)

(assert (=> bm!629324 m!7633134))

(declare-fun m!7633136 () Bool)

(assert (=> b!6923934 m!7633136))

(declare-fun m!7633138 () Bool)

(assert (=> bm!629323 m!7633138))

(assert (=> start!665710 d!2164993))

(declare-fun b!6923937 () Bool)

(declare-fun e!4166998 () Bool)

(declare-fun e!4167002 () Bool)

(assert (=> b!6923937 (= e!4166998 e!4167002)))

(declare-fun c!1285385 () Bool)

(assert (=> b!6923937 (= c!1285385 ((_ is Union!16923) r2!6280))))

(declare-fun bm!629325 () Bool)

(declare-fun call!629330 () Bool)

(declare-fun call!629332 () Bool)

(assert (=> bm!629325 (= call!629330 call!629332)))

(declare-fun b!6923938 () Bool)

(declare-fun e!4167001 () Bool)

(assert (=> b!6923938 (= e!4167001 call!629332)))

(declare-fun bm!629327 () Bool)

(declare-fun c!1285384 () Bool)

(assert (=> bm!629327 (= call!629332 (validRegex!8629 (ite c!1285384 (reg!17252 r2!6280) (ite c!1285385 (regTwo!34359 r2!6280) (regOne!34358 r2!6280)))))))

(declare-fun b!6923939 () Bool)

(declare-fun e!4166999 () Bool)

(declare-fun call!629331 () Bool)

(assert (=> b!6923939 (= e!4166999 call!629331)))

(declare-fun b!6923940 () Bool)

(declare-fun res!2823494 () Bool)

(declare-fun e!4166997 () Bool)

(assert (=> b!6923940 (=> res!2823494 e!4166997)))

(assert (=> b!6923940 (= res!2823494 (not ((_ is Concat!25768) r2!6280)))))

(assert (=> b!6923940 (= e!4167002 e!4166997)))

(declare-fun b!6923941 () Bool)

(declare-fun e!4167000 () Bool)

(assert (=> b!6923941 (= e!4167000 call!629330)))

(declare-fun b!6923942 () Bool)

(declare-fun res!2823493 () Bool)

(assert (=> b!6923942 (=> (not res!2823493) (not e!4167000))))

(assert (=> b!6923942 (= res!2823493 call!629331)))

(assert (=> b!6923942 (= e!4167002 e!4167000)))

(declare-fun b!6923943 () Bool)

(assert (=> b!6923943 (= e!4166998 e!4167001)))

(declare-fun res!2823497 () Bool)

(assert (=> b!6923943 (= res!2823497 (not (nullable!6752 (reg!17252 r2!6280))))))

(assert (=> b!6923943 (=> (not res!2823497) (not e!4167001))))

(declare-fun bm!629326 () Bool)

(assert (=> bm!629326 (= call!629331 (validRegex!8629 (ite c!1285385 (regOne!34359 r2!6280) (regTwo!34358 r2!6280))))))

(declare-fun d!2164995 () Bool)

(declare-fun res!2823496 () Bool)

(declare-fun e!4167003 () Bool)

(assert (=> d!2164995 (=> res!2823496 e!4167003)))

(assert (=> d!2164995 (= res!2823496 ((_ is ElementMatch!16923) r2!6280))))

(assert (=> d!2164995 (= (validRegex!8629 r2!6280) e!4167003)))

(declare-fun b!6923944 () Bool)

(assert (=> b!6923944 (= e!4167003 e!4166998)))

(assert (=> b!6923944 (= c!1285384 ((_ is Star!16923) r2!6280))))

(declare-fun b!6923945 () Bool)

(assert (=> b!6923945 (= e!4166997 e!4166999)))

(declare-fun res!2823495 () Bool)

(assert (=> b!6923945 (=> (not res!2823495) (not e!4166999))))

(assert (=> b!6923945 (= res!2823495 call!629330)))

(assert (= (and d!2164995 (not res!2823496)) b!6923944))

(assert (= (and b!6923944 c!1285384) b!6923943))

(assert (= (and b!6923944 (not c!1285384)) b!6923937))

(assert (= (and b!6923943 res!2823497) b!6923938))

(assert (= (and b!6923937 c!1285385) b!6923942))

(assert (= (and b!6923937 (not c!1285385)) b!6923940))

(assert (= (and b!6923942 res!2823493) b!6923941))

(assert (= (and b!6923940 (not res!2823494)) b!6923945))

(assert (= (and b!6923945 res!2823495) b!6923939))

(assert (= (or b!6923942 b!6923939) bm!629326))

(assert (= (or b!6923941 b!6923945) bm!629325))

(assert (= (or b!6923938 bm!629325) bm!629327))

(declare-fun m!7633140 () Bool)

(assert (=> bm!629327 m!7633140))

(declare-fun m!7633142 () Bool)

(assert (=> b!6923943 m!7633142))

(declare-fun m!7633144 () Bool)

(assert (=> bm!629326 m!7633144))

(assert (=> b!6923198 d!2164995))

(declare-fun d!2164997 () Bool)

(assert (=> d!2164997 (= (isDefined!13395 lt!2471046) (not (isEmpty!38807 lt!2471046)))))

(declare-fun bs!1848013 () Bool)

(assert (= bs!1848013 d!2164997))

(declare-fun m!7633146 () Bool)

(assert (=> bs!1848013 m!7633146))

(assert (=> b!6923205 d!2164997))

(declare-fun d!2164999 () Bool)

(assert (=> d!2164999 (= (Exists!3925 lambda!393683) (choose!51552 lambda!393683))))

(declare-fun bs!1848014 () Bool)

(assert (= bs!1848014 d!2164999))

(declare-fun m!7633148 () Bool)

(assert (=> bs!1848014 m!7633148))

(assert (=> b!6923205 d!2164999))

(declare-fun d!2165001 () Bool)

(assert (=> d!2165001 (= (get!23325 lt!2471046) (v!52963 lt!2471046))))

(assert (=> b!6923205 d!2165001))

(declare-fun bs!1848015 () Bool)

(declare-fun d!2165003 () Bool)

(assert (= bs!1848015 (and d!2165003 b!6923919)))

(declare-fun lambda!393743 () Int)

(assert (=> bs!1848015 (not (= lambda!393743 lambda!393741))))

(declare-fun bs!1848016 () Bool)

(assert (= bs!1848016 (and d!2165003 b!6923439)))

(assert (=> bs!1848016 (not (= lambda!393743 lambda!393710))))

(declare-fun bs!1848017 () Bool)

(assert (= bs!1848017 (and d!2165003 b!6923926)))

(assert (=> bs!1848017 (not (= lambda!393743 lambda!393742))))

(declare-fun bs!1848018 () Bool)

(assert (= bs!1848018 (and d!2165003 b!6923811)))

(assert (=> bs!1848018 (not (= lambda!393743 lambda!393731))))

(declare-fun bs!1848019 () Bool)

(assert (= bs!1848019 (and d!2165003 d!2164971)))

(assert (=> bs!1848019 (= (and (= s!14361 lt!2471067) (= lt!2471063 r2!6280)) (= lambda!393743 lambda!393737))))

(declare-fun bs!1848020 () Bool)

(assert (= bs!1848020 (and d!2165003 b!6923880)))

(assert (=> bs!1848020 (not (= lambda!393743 lambda!393739))))

(declare-fun bs!1848021 () Bool)

(assert (= bs!1848021 (and d!2165003 b!6923446)))

(assert (=> bs!1848021 (not (= lambda!393743 lambda!393713))))

(declare-fun bs!1848022 () Bool)

(assert (= bs!1848022 (and d!2165003 b!6923191)))

(assert (=> bs!1848022 (= (and (= s!14361 lt!2471067) (= lt!2471063 r2!6280)) (= lambda!393743 lambda!393687))))

(declare-fun bs!1848023 () Bool)

(assert (= bs!1848023 (and d!2165003 b!6923818)))

(assert (=> bs!1848023 (not (= lambda!393743 lambda!393732))))

(assert (=> bs!1848019 (not (= lambda!393743 lambda!393738))))

(declare-fun bs!1848024 () Bool)

(assert (= bs!1848024 (and d!2165003 b!6923207)))

(assert (=> bs!1848024 (not (= lambda!393743 lambda!393686))))

(declare-fun bs!1848025 () Bool)

(assert (= bs!1848025 (and d!2165003 b!6923487)))

(assert (=> bs!1848025 (not (= lambda!393743 lambda!393714))))

(declare-fun bs!1848026 () Bool)

(assert (= bs!1848026 (and d!2165003 d!2164961)))

(assert (=> bs!1848026 (= (and (= s!14361 lt!2471067) (= lt!2471063 r2!6280)) (= lambda!393743 lambda!393730))))

(declare-fun bs!1848027 () Bool)

(assert (= bs!1848027 (and d!2165003 b!6923205)))

(assert (=> bs!1848027 (not (= lambda!393743 lambda!393684))))

(assert (=> bs!1848022 (not (= lambda!393743 lambda!393688))))

(assert (=> bs!1848027 (= lambda!393743 lambda!393683)))

(assert (=> bs!1848024 (= (and (= s!14361 (_1!37083 lt!2471049)) (= lt!2471063 r1!6342) (= r3!135 r2!6280)) (= lambda!393743 lambda!393685))))

(declare-fun bs!1848028 () Bool)

(assert (= bs!1848028 (and d!2165003 b!6923494)))

(assert (=> bs!1848028 (not (= lambda!393743 lambda!393716))))

(declare-fun bs!1848029 () Bool)

(assert (= bs!1848029 (and d!2165003 b!6923887)))

(assert (=> bs!1848029 (not (= lambda!393743 lambda!393740))))

(assert (=> d!2165003 true))

(assert (=> d!2165003 true))

(assert (=> d!2165003 true))

(declare-fun lambda!393744 () Int)

(assert (=> bs!1848015 (not (= lambda!393744 lambda!393741))))

(assert (=> bs!1848016 (not (= lambda!393744 lambda!393710))))

(assert (=> bs!1848017 (= (and (= lt!2471063 (regOne!34358 lt!2471048)) (= r3!135 (regTwo!34358 lt!2471048))) (= lambda!393744 lambda!393742))))

(assert (=> bs!1848018 (not (= lambda!393744 lambda!393731))))

(assert (=> bs!1848019 (not (= lambda!393744 lambda!393737))))

(assert (=> bs!1848020 (not (= lambda!393744 lambda!393739))))

(assert (=> bs!1848021 (= (and (= s!14361 (_2!37083 lt!2471065)) (= lt!2471063 (regOne!34358 r2!6280)) (= r3!135 (regTwo!34358 r2!6280))) (= lambda!393744 lambda!393713))))

(declare-fun bs!1848030 () Bool)

(assert (= bs!1848030 d!2165003))

(assert (=> bs!1848030 (not (= lambda!393744 lambda!393743))))

(assert (=> bs!1848022 (not (= lambda!393744 lambda!393687))))

(assert (=> bs!1848023 (= (and (= s!14361 lt!2471067) (= lt!2471063 (regOne!34358 lt!2471068)) (= r3!135 (regTwo!34358 lt!2471068))) (= lambda!393744 lambda!393732))))

(assert (=> bs!1848019 (= (and (= s!14361 lt!2471067) (= lt!2471063 r2!6280)) (= lambda!393744 lambda!393738))))

(assert (=> bs!1848024 (= (and (= s!14361 (_1!37083 lt!2471049)) (= lt!2471063 r1!6342) (= r3!135 r2!6280)) (= lambda!393744 lambda!393686))))

(assert (=> bs!1848025 (not (= lambda!393744 lambda!393714))))

(assert (=> bs!1848026 (not (= lambda!393744 lambda!393730))))

(assert (=> bs!1848027 (= lambda!393744 lambda!393684)))

(assert (=> bs!1848022 (= (and (= s!14361 lt!2471067) (= lt!2471063 r2!6280)) (= lambda!393744 lambda!393688))))

(assert (=> bs!1848027 (not (= lambda!393744 lambda!393683))))

(assert (=> bs!1848024 (not (= lambda!393744 lambda!393685))))

(assert (=> bs!1848028 (= (and (= s!14361 (_1!37083 lt!2471065)) (= lt!2471063 (regOne!34358 r1!6342)) (= r3!135 (regTwo!34358 r1!6342))) (= lambda!393744 lambda!393716))))

(assert (=> bs!1848029 (= (and (= lt!2471063 (regOne!34358 lt!2471058)) (= r3!135 (regTwo!34358 lt!2471058))) (= lambda!393744 lambda!393740))))

(assert (=> d!2165003 true))

(assert (=> d!2165003 true))

(assert (=> d!2165003 true))

(assert (=> d!2165003 (= (Exists!3925 lambda!393743) (Exists!3925 lambda!393744))))

(declare-fun lt!2471167 () Unit!160570)

(assert (=> d!2165003 (= lt!2471167 (choose!51554 lt!2471063 r3!135 s!14361))))

(assert (=> d!2165003 (validRegex!8629 lt!2471063)))

(assert (=> d!2165003 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2392 lt!2471063 r3!135 s!14361) lt!2471167)))

(declare-fun m!7633150 () Bool)

(assert (=> bs!1848030 m!7633150))

(declare-fun m!7633152 () Bool)

(assert (=> bs!1848030 m!7633152))

(declare-fun m!7633154 () Bool)

(assert (=> bs!1848030 m!7633154))

(declare-fun m!7633156 () Bool)

(assert (=> bs!1848030 m!7633156))

(assert (=> b!6923205 d!2165003))

(declare-fun d!2165005 () Bool)

(assert (=> d!2165005 (= (matchR!9062 lt!2471063 (_1!37083 lt!2471049)) (matchRSpec!3980 lt!2471063 (_1!37083 lt!2471049)))))

(declare-fun lt!2471168 () Unit!160570)

(assert (=> d!2165005 (= lt!2471168 (choose!51551 lt!2471063 (_1!37083 lt!2471049)))))

(assert (=> d!2165005 (validRegex!8629 lt!2471063)))

(assert (=> d!2165005 (= (mainMatchTheorem!3980 lt!2471063 (_1!37083 lt!2471049)) lt!2471168)))

(declare-fun bs!1848031 () Bool)

(assert (= bs!1848031 d!2165005))

(assert (=> bs!1848031 m!7632554))

(assert (=> bs!1848031 m!7632562))

(declare-fun m!7633158 () Bool)

(assert (=> bs!1848031 m!7633158))

(assert (=> bs!1848031 m!7633156))

(assert (=> b!6923205 d!2165005))

(declare-fun d!2165007 () Bool)

(assert (=> d!2165007 (= (Exists!3925 lambda!393684) (choose!51552 lambda!393684))))

(declare-fun bs!1848032 () Bool)

(assert (= bs!1848032 d!2165007))

(declare-fun m!7633160 () Bool)

(assert (=> bs!1848032 m!7633160))

(assert (=> b!6923205 d!2165007))

(declare-fun bs!1848033 () Bool)

(declare-fun d!2165009 () Bool)

(assert (= bs!1848033 (and d!2165009 b!6923919)))

(declare-fun lambda!393745 () Int)

(assert (=> bs!1848033 (not (= lambda!393745 lambda!393741))))

(declare-fun bs!1848034 () Bool)

(assert (= bs!1848034 (and d!2165009 b!6923439)))

(assert (=> bs!1848034 (not (= lambda!393745 lambda!393710))))

(declare-fun bs!1848035 () Bool)

(assert (= bs!1848035 (and d!2165009 b!6923926)))

(assert (=> bs!1848035 (not (= lambda!393745 lambda!393742))))

(declare-fun bs!1848036 () Bool)

(assert (= bs!1848036 (and d!2165009 b!6923811)))

(assert (=> bs!1848036 (not (= lambda!393745 lambda!393731))))

(declare-fun bs!1848037 () Bool)

(assert (= bs!1848037 (and d!2165009 d!2164971)))

(assert (=> bs!1848037 (= (and (= s!14361 lt!2471067) (= lt!2471063 r2!6280)) (= lambda!393745 lambda!393737))))

(declare-fun bs!1848038 () Bool)

(assert (= bs!1848038 (and d!2165009 d!2165003)))

(assert (=> bs!1848038 (not (= lambda!393745 lambda!393744))))

(declare-fun bs!1848039 () Bool)

(assert (= bs!1848039 (and d!2165009 b!6923880)))

(assert (=> bs!1848039 (not (= lambda!393745 lambda!393739))))

(declare-fun bs!1848040 () Bool)

(assert (= bs!1848040 (and d!2165009 b!6923446)))

(assert (=> bs!1848040 (not (= lambda!393745 lambda!393713))))

(assert (=> bs!1848038 (= lambda!393745 lambda!393743)))

(declare-fun bs!1848041 () Bool)

(assert (= bs!1848041 (and d!2165009 b!6923191)))

(assert (=> bs!1848041 (= (and (= s!14361 lt!2471067) (= lt!2471063 r2!6280)) (= lambda!393745 lambda!393687))))

(declare-fun bs!1848042 () Bool)

(assert (= bs!1848042 (and d!2165009 b!6923818)))

(assert (=> bs!1848042 (not (= lambda!393745 lambda!393732))))

(assert (=> bs!1848037 (not (= lambda!393745 lambda!393738))))

(declare-fun bs!1848043 () Bool)

(assert (= bs!1848043 (and d!2165009 b!6923207)))

(assert (=> bs!1848043 (not (= lambda!393745 lambda!393686))))

(declare-fun bs!1848044 () Bool)

(assert (= bs!1848044 (and d!2165009 b!6923487)))

(assert (=> bs!1848044 (not (= lambda!393745 lambda!393714))))

(declare-fun bs!1848045 () Bool)

(assert (= bs!1848045 (and d!2165009 d!2164961)))

(assert (=> bs!1848045 (= (and (= s!14361 lt!2471067) (= lt!2471063 r2!6280)) (= lambda!393745 lambda!393730))))

(declare-fun bs!1848046 () Bool)

(assert (= bs!1848046 (and d!2165009 b!6923205)))

(assert (=> bs!1848046 (not (= lambda!393745 lambda!393684))))

(assert (=> bs!1848041 (not (= lambda!393745 lambda!393688))))

(assert (=> bs!1848046 (= lambda!393745 lambda!393683)))

(assert (=> bs!1848043 (= (and (= s!14361 (_1!37083 lt!2471049)) (= lt!2471063 r1!6342) (= r3!135 r2!6280)) (= lambda!393745 lambda!393685))))

(declare-fun bs!1848047 () Bool)

(assert (= bs!1848047 (and d!2165009 b!6923494)))

(assert (=> bs!1848047 (not (= lambda!393745 lambda!393716))))

(declare-fun bs!1848048 () Bool)

(assert (= bs!1848048 (and d!2165009 b!6923887)))

(assert (=> bs!1848048 (not (= lambda!393745 lambda!393740))))

(assert (=> d!2165009 true))

(assert (=> d!2165009 true))

(assert (=> d!2165009 true))

(assert (=> d!2165009 (= (isDefined!13395 (findConcatSeparation!3106 lt!2471063 r3!135 Nil!66552 s!14361 s!14361)) (Exists!3925 lambda!393745))))

(declare-fun lt!2471169 () Unit!160570)

(assert (=> d!2165009 (= lt!2471169 (choose!51553 lt!2471063 r3!135 s!14361))))

(assert (=> d!2165009 (validRegex!8629 lt!2471063)))

(assert (=> d!2165009 (= (lemmaFindConcatSeparationEquivalentToExists!2868 lt!2471063 r3!135 s!14361) lt!2471169)))

(declare-fun bs!1848049 () Bool)

(assert (= bs!1848049 d!2165009))

(assert (=> bs!1848049 m!7633156))

(declare-fun m!7633162 () Bool)

(assert (=> bs!1848049 m!7633162))

(assert (=> bs!1848049 m!7632560))

(declare-fun m!7633164 () Bool)

(assert (=> bs!1848049 m!7633164))

(assert (=> bs!1848049 m!7632560))

(declare-fun m!7633166 () Bool)

(assert (=> bs!1848049 m!7633166))

(assert (=> b!6923205 d!2165009))

(declare-fun b!6923946 () Bool)

(declare-fun res!2823500 () Bool)

(declare-fun e!4167009 () Bool)

(assert (=> b!6923946 (=> (not res!2823500) (not e!4167009))))

(assert (=> b!6923946 (= res!2823500 (isEmpty!38806 (tail!12932 (_1!37083 lt!2471049))))))

(declare-fun b!6923947 () Bool)

(declare-fun res!2823502 () Bool)

(declare-fun e!4167005 () Bool)

(assert (=> b!6923947 (=> res!2823502 e!4167005)))

(assert (=> b!6923947 (= res!2823502 (not (isEmpty!38806 (tail!12932 (_1!37083 lt!2471049)))))))

(declare-fun b!6923948 () Bool)

(declare-fun res!2823504 () Bool)

(assert (=> b!6923948 (=> (not res!2823504) (not e!4167009))))

(declare-fun call!629333 () Bool)

(assert (=> b!6923948 (= res!2823504 (not call!629333))))

(declare-fun b!6923949 () Bool)

(declare-fun e!4167004 () Bool)

(declare-fun e!4167007 () Bool)

(assert (=> b!6923949 (= e!4167004 e!4167007)))

(declare-fun res!2823503 () Bool)

(assert (=> b!6923949 (=> (not res!2823503) (not e!4167007))))

(declare-fun lt!2471170 () Bool)

(assert (=> b!6923949 (= res!2823503 (not lt!2471170))))

(declare-fun b!6923950 () Bool)

(assert (=> b!6923950 (= e!4167007 e!4167005)))

(declare-fun res!2823505 () Bool)

(assert (=> b!6923950 (=> res!2823505 e!4167005)))

(assert (=> b!6923950 (= res!2823505 call!629333)))

(declare-fun d!2165011 () Bool)

(declare-fun e!4167008 () Bool)

(assert (=> d!2165011 e!4167008))

(declare-fun c!1285387 () Bool)

(assert (=> d!2165011 (= c!1285387 ((_ is EmptyExpr!16923) lt!2471063))))

(declare-fun e!4167006 () Bool)

(assert (=> d!2165011 (= lt!2471170 e!4167006)))

(declare-fun c!1285388 () Bool)

(assert (=> d!2165011 (= c!1285388 (isEmpty!38806 (_1!37083 lt!2471049)))))

(assert (=> d!2165011 (validRegex!8629 lt!2471063)))

(assert (=> d!2165011 (= (matchR!9062 lt!2471063 (_1!37083 lt!2471049)) lt!2471170)))

(declare-fun b!6923951 () Bool)

(assert (=> b!6923951 (= e!4167006 (matchR!9062 (derivativeStep!5427 lt!2471063 (head!13880 (_1!37083 lt!2471049))) (tail!12932 (_1!37083 lt!2471049))))))

(declare-fun b!6923952 () Bool)

(declare-fun e!4167010 () Bool)

(assert (=> b!6923952 (= e!4167008 e!4167010)))

(declare-fun c!1285386 () Bool)

(assert (=> b!6923952 (= c!1285386 ((_ is EmptyLang!16923) lt!2471063))))

(declare-fun b!6923953 () Bool)

(declare-fun res!2823498 () Bool)

(assert (=> b!6923953 (=> res!2823498 e!4167004)))

(assert (=> b!6923953 (= res!2823498 (not ((_ is ElementMatch!16923) lt!2471063)))))

(assert (=> b!6923953 (= e!4167010 e!4167004)))

(declare-fun b!6923954 () Bool)

(assert (=> b!6923954 (= e!4167008 (= lt!2471170 call!629333))))

(declare-fun b!6923955 () Bool)

(declare-fun res!2823501 () Bool)

(assert (=> b!6923955 (=> res!2823501 e!4167004)))

(assert (=> b!6923955 (= res!2823501 e!4167009)))

(declare-fun res!2823499 () Bool)

(assert (=> b!6923955 (=> (not res!2823499) (not e!4167009))))

(assert (=> b!6923955 (= res!2823499 lt!2471170)))

(declare-fun b!6923956 () Bool)

(assert (=> b!6923956 (= e!4167009 (= (head!13880 (_1!37083 lt!2471049)) (c!1285229 lt!2471063)))))

(declare-fun b!6923957 () Bool)

(assert (=> b!6923957 (= e!4167010 (not lt!2471170))))

(declare-fun b!6923958 () Bool)

(assert (=> b!6923958 (= e!4167005 (not (= (head!13880 (_1!37083 lt!2471049)) (c!1285229 lt!2471063))))))

(declare-fun bm!629328 () Bool)

(assert (=> bm!629328 (= call!629333 (isEmpty!38806 (_1!37083 lt!2471049)))))

(declare-fun b!6923959 () Bool)

(assert (=> b!6923959 (= e!4167006 (nullable!6752 lt!2471063))))

(assert (= (and d!2165011 c!1285388) b!6923959))

(assert (= (and d!2165011 (not c!1285388)) b!6923951))

(assert (= (and d!2165011 c!1285387) b!6923954))

(assert (= (and d!2165011 (not c!1285387)) b!6923952))

(assert (= (and b!6923952 c!1285386) b!6923957))

(assert (= (and b!6923952 (not c!1285386)) b!6923953))

(assert (= (and b!6923953 (not res!2823498)) b!6923955))

(assert (= (and b!6923955 res!2823499) b!6923948))

(assert (= (and b!6923948 res!2823504) b!6923946))

(assert (= (and b!6923946 res!2823500) b!6923956))

(assert (= (and b!6923955 (not res!2823501)) b!6923949))

(assert (= (and b!6923949 res!2823503) b!6923950))

(assert (= (and b!6923950 (not res!2823505)) b!6923947))

(assert (= (and b!6923947 (not res!2823502)) b!6923958))

(assert (= (or b!6923954 b!6923948 b!6923950) bm!629328))

(declare-fun m!7633168 () Bool)

(assert (=> b!6923947 m!7633168))

(assert (=> b!6923947 m!7633168))

(declare-fun m!7633170 () Bool)

(assert (=> b!6923947 m!7633170))

(assert (=> b!6923946 m!7633168))

(assert (=> b!6923946 m!7633168))

(assert (=> b!6923946 m!7633170))

(declare-fun m!7633172 () Bool)

(assert (=> d!2165011 m!7633172))

(assert (=> d!2165011 m!7633156))

(declare-fun m!7633174 () Bool)

(assert (=> b!6923959 m!7633174))

(declare-fun m!7633176 () Bool)

(assert (=> b!6923958 m!7633176))

(assert (=> b!6923956 m!7633176))

(assert (=> bm!629328 m!7633172))

(assert (=> b!6923951 m!7633176))

(assert (=> b!6923951 m!7633176))

(declare-fun m!7633178 () Bool)

(assert (=> b!6923951 m!7633178))

(assert (=> b!6923951 m!7633168))

(assert (=> b!6923951 m!7633178))

(assert (=> b!6923951 m!7633168))

(declare-fun m!7633180 () Bool)

(assert (=> b!6923951 m!7633180))

(assert (=> b!6923205 d!2165011))

(declare-fun bs!1848050 () Bool)

(declare-fun b!6923962 () Bool)

(assert (= bs!1848050 (and b!6923962 b!6923919)))

(declare-fun lambda!393746 () Int)

(assert (=> bs!1848050 (= (and (= (_1!37083 lt!2471049) s!14361) (= (reg!17252 lt!2471063) (reg!17252 lt!2471048)) (= lt!2471063 lt!2471048)) (= lambda!393746 lambda!393741))))

(declare-fun bs!1848051 () Bool)

(assert (= bs!1848051 (and b!6923962 b!6923439)))

(assert (=> bs!1848051 (= (and (= (_1!37083 lt!2471049) (_2!37083 lt!2471065)) (= (reg!17252 lt!2471063) (reg!17252 r2!6280)) (= lt!2471063 r2!6280)) (= lambda!393746 lambda!393710))))

(declare-fun bs!1848052 () Bool)

(assert (= bs!1848052 (and b!6923962 b!6923926)))

(assert (=> bs!1848052 (not (= lambda!393746 lambda!393742))))

(declare-fun bs!1848053 () Bool)

(assert (= bs!1848053 (and b!6923962 b!6923811)))

(assert (=> bs!1848053 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= (reg!17252 lt!2471063) (reg!17252 lt!2471068)) (= lt!2471063 lt!2471068)) (= lambda!393746 lambda!393731))))

(declare-fun bs!1848054 () Bool)

(assert (= bs!1848054 (and b!6923962 d!2164971)))

(assert (=> bs!1848054 (not (= lambda!393746 lambda!393737))))

(declare-fun bs!1848055 () Bool)

(assert (= bs!1848055 (and b!6923962 d!2165003)))

(assert (=> bs!1848055 (not (= lambda!393746 lambda!393744))))

(declare-fun bs!1848056 () Bool)

(assert (= bs!1848056 (and b!6923962 b!6923880)))

(assert (=> bs!1848056 (= (and (= (_1!37083 lt!2471049) s!14361) (= (reg!17252 lt!2471063) (reg!17252 lt!2471058)) (= lt!2471063 lt!2471058)) (= lambda!393746 lambda!393739))))

(declare-fun bs!1848057 () Bool)

(assert (= bs!1848057 (and b!6923962 b!6923446)))

(assert (=> bs!1848057 (not (= lambda!393746 lambda!393713))))

(assert (=> bs!1848055 (not (= lambda!393746 lambda!393743))))

(declare-fun bs!1848058 () Bool)

(assert (= bs!1848058 (and b!6923962 b!6923191)))

(assert (=> bs!1848058 (not (= lambda!393746 lambda!393687))))

(declare-fun bs!1848059 () Bool)

(assert (= bs!1848059 (and b!6923962 b!6923818)))

(assert (=> bs!1848059 (not (= lambda!393746 lambda!393732))))

(assert (=> bs!1848054 (not (= lambda!393746 lambda!393738))))

(declare-fun bs!1848060 () Bool)

(assert (= bs!1848060 (and b!6923962 b!6923207)))

(assert (=> bs!1848060 (not (= lambda!393746 lambda!393686))))

(declare-fun bs!1848061 () Bool)

(assert (= bs!1848061 (and b!6923962 b!6923487)))

(assert (=> bs!1848061 (= (and (= (_1!37083 lt!2471049) (_1!37083 lt!2471065)) (= (reg!17252 lt!2471063) (reg!17252 r1!6342)) (= lt!2471063 r1!6342)) (= lambda!393746 lambda!393714))))

(declare-fun bs!1848062 () Bool)

(assert (= bs!1848062 (and b!6923962 d!2164961)))

(assert (=> bs!1848062 (not (= lambda!393746 lambda!393730))))

(declare-fun bs!1848063 () Bool)

(assert (= bs!1848063 (and b!6923962 b!6923205)))

(assert (=> bs!1848063 (not (= lambda!393746 lambda!393684))))

(assert (=> bs!1848058 (not (= lambda!393746 lambda!393688))))

(assert (=> bs!1848063 (not (= lambda!393746 lambda!393683))))

(declare-fun bs!1848064 () Bool)

(assert (= bs!1848064 (and b!6923962 d!2165009)))

(assert (=> bs!1848064 (not (= lambda!393746 lambda!393745))))

(assert (=> bs!1848060 (not (= lambda!393746 lambda!393685))))

(declare-fun bs!1848065 () Bool)

(assert (= bs!1848065 (and b!6923962 b!6923494)))

(assert (=> bs!1848065 (not (= lambda!393746 lambda!393716))))

(declare-fun bs!1848066 () Bool)

(assert (= bs!1848066 (and b!6923962 b!6923887)))

(assert (=> bs!1848066 (not (= lambda!393746 lambda!393740))))

(assert (=> b!6923962 true))

(assert (=> b!6923962 true))

(declare-fun bs!1848067 () Bool)

(declare-fun b!6923969 () Bool)

(assert (= bs!1848067 (and b!6923969 b!6923919)))

(declare-fun lambda!393747 () Int)

(assert (=> bs!1848067 (not (= lambda!393747 lambda!393741))))

(declare-fun bs!1848068 () Bool)

(assert (= bs!1848068 (and b!6923969 b!6923439)))

(assert (=> bs!1848068 (not (= lambda!393747 lambda!393710))))

(declare-fun bs!1848069 () Bool)

(assert (= bs!1848069 (and b!6923969 b!6923926)))

(assert (=> bs!1848069 (= (and (= (_1!37083 lt!2471049) s!14361) (= (regOne!34358 lt!2471063) (regOne!34358 lt!2471048)) (= (regTwo!34358 lt!2471063) (regTwo!34358 lt!2471048))) (= lambda!393747 lambda!393742))))

(declare-fun bs!1848070 () Bool)

(assert (= bs!1848070 (and b!6923969 b!6923811)))

(assert (=> bs!1848070 (not (= lambda!393747 lambda!393731))))

(declare-fun bs!1848071 () Bool)

(assert (= bs!1848071 (and b!6923969 d!2164971)))

(assert (=> bs!1848071 (not (= lambda!393747 lambda!393737))))

(declare-fun bs!1848072 () Bool)

(assert (= bs!1848072 (and b!6923969 b!6923880)))

(assert (=> bs!1848072 (not (= lambda!393747 lambda!393739))))

(declare-fun bs!1848073 () Bool)

(assert (= bs!1848073 (and b!6923969 b!6923446)))

(assert (=> bs!1848073 (= (and (= (_1!37083 lt!2471049) (_2!37083 lt!2471065)) (= (regOne!34358 lt!2471063) (regOne!34358 r2!6280)) (= (regTwo!34358 lt!2471063) (regTwo!34358 r2!6280))) (= lambda!393747 lambda!393713))))

(declare-fun bs!1848074 () Bool)

(assert (= bs!1848074 (and b!6923969 d!2165003)))

(assert (=> bs!1848074 (not (= lambda!393747 lambda!393743))))

(declare-fun bs!1848075 () Bool)

(assert (= bs!1848075 (and b!6923969 b!6923191)))

(assert (=> bs!1848075 (not (= lambda!393747 lambda!393687))))

(declare-fun bs!1848076 () Bool)

(assert (= bs!1848076 (and b!6923969 b!6923818)))

(assert (=> bs!1848076 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= (regOne!34358 lt!2471063) (regOne!34358 lt!2471068)) (= (regTwo!34358 lt!2471063) (regTwo!34358 lt!2471068))) (= lambda!393747 lambda!393732))))

(assert (=> bs!1848071 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= (regOne!34358 lt!2471063) r2!6280) (= (regTwo!34358 lt!2471063) r3!135)) (= lambda!393747 lambda!393738))))

(declare-fun bs!1848077 () Bool)

(assert (= bs!1848077 (and b!6923969 b!6923207)))

(assert (=> bs!1848077 (= (and (= (regOne!34358 lt!2471063) r1!6342) (= (regTwo!34358 lt!2471063) r2!6280)) (= lambda!393747 lambda!393686))))

(declare-fun bs!1848078 () Bool)

(assert (= bs!1848078 (and b!6923969 b!6923487)))

(assert (=> bs!1848078 (not (= lambda!393747 lambda!393714))))

(declare-fun bs!1848079 () Bool)

(assert (= bs!1848079 (and b!6923969 d!2164961)))

(assert (=> bs!1848079 (not (= lambda!393747 lambda!393730))))

(declare-fun bs!1848080 () Bool)

(assert (= bs!1848080 (and b!6923969 b!6923205)))

(assert (=> bs!1848080 (= (and (= (_1!37083 lt!2471049) s!14361) (= (regOne!34358 lt!2471063) lt!2471063) (= (regTwo!34358 lt!2471063) r3!135)) (= lambda!393747 lambda!393684))))

(assert (=> bs!1848074 (= (and (= (_1!37083 lt!2471049) s!14361) (= (regOne!34358 lt!2471063) lt!2471063) (= (regTwo!34358 lt!2471063) r3!135)) (= lambda!393747 lambda!393744))))

(declare-fun bs!1848081 () Bool)

(assert (= bs!1848081 (and b!6923969 b!6923962)))

(assert (=> bs!1848081 (not (= lambda!393747 lambda!393746))))

(assert (=> bs!1848075 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= (regOne!34358 lt!2471063) r2!6280) (= (regTwo!34358 lt!2471063) r3!135)) (= lambda!393747 lambda!393688))))

(assert (=> bs!1848080 (not (= lambda!393747 lambda!393683))))

(declare-fun bs!1848082 () Bool)

(assert (= bs!1848082 (and b!6923969 d!2165009)))

(assert (=> bs!1848082 (not (= lambda!393747 lambda!393745))))

(assert (=> bs!1848077 (not (= lambda!393747 lambda!393685))))

(declare-fun bs!1848083 () Bool)

(assert (= bs!1848083 (and b!6923969 b!6923494)))

(assert (=> bs!1848083 (= (and (= (_1!37083 lt!2471049) (_1!37083 lt!2471065)) (= (regOne!34358 lt!2471063) (regOne!34358 r1!6342)) (= (regTwo!34358 lt!2471063) (regTwo!34358 r1!6342))) (= lambda!393747 lambda!393716))))

(declare-fun bs!1848084 () Bool)

(assert (= bs!1848084 (and b!6923969 b!6923887)))

(assert (=> bs!1848084 (= (and (= (_1!37083 lt!2471049) s!14361) (= (regOne!34358 lt!2471063) (regOne!34358 lt!2471058)) (= (regTwo!34358 lt!2471063) (regTwo!34358 lt!2471058))) (= lambda!393747 lambda!393740))))

(assert (=> b!6923969 true))

(assert (=> b!6923969 true))

(declare-fun b!6923960 () Bool)

(declare-fun e!4167013 () Bool)

(declare-fun call!629335 () Bool)

(assert (=> b!6923960 (= e!4167013 call!629335)))

(declare-fun b!6923961 () Bool)

(declare-fun c!1285392 () Bool)

(assert (=> b!6923961 (= c!1285392 ((_ is Union!16923) lt!2471063))))

(declare-fun e!4167016 () Bool)

(declare-fun e!4167015 () Bool)

(assert (=> b!6923961 (= e!4167016 e!4167015)))

(declare-fun e!4167017 () Bool)

(declare-fun call!629334 () Bool)

(assert (=> b!6923962 (= e!4167017 call!629334)))

(declare-fun b!6923963 () Bool)

(declare-fun e!4167011 () Bool)

(assert (=> b!6923963 (= e!4167015 e!4167011)))

(declare-fun res!2823508 () Bool)

(assert (=> b!6923963 (= res!2823508 (matchRSpec!3980 (regOne!34359 lt!2471063) (_1!37083 lt!2471049)))))

(assert (=> b!6923963 (=> res!2823508 e!4167011)))

(declare-fun d!2165013 () Bool)

(declare-fun c!1285390 () Bool)

(assert (=> d!2165013 (= c!1285390 ((_ is EmptyExpr!16923) lt!2471063))))

(assert (=> d!2165013 (= (matchRSpec!3980 lt!2471063 (_1!37083 lt!2471049)) e!4167013)))

(declare-fun b!6923964 () Bool)

(declare-fun c!1285389 () Bool)

(assert (=> b!6923964 (= c!1285389 ((_ is ElementMatch!16923) lt!2471063))))

(declare-fun e!4167012 () Bool)

(assert (=> b!6923964 (= e!4167012 e!4167016)))

(declare-fun b!6923965 () Bool)

(declare-fun res!2823507 () Bool)

(assert (=> b!6923965 (=> res!2823507 e!4167017)))

(assert (=> b!6923965 (= res!2823507 call!629335)))

(declare-fun e!4167014 () Bool)

(assert (=> b!6923965 (= e!4167014 e!4167017)))

(declare-fun b!6923966 () Bool)

(assert (=> b!6923966 (= e!4167015 e!4167014)))

(declare-fun c!1285391 () Bool)

(assert (=> b!6923966 (= c!1285391 ((_ is Star!16923) lt!2471063))))

(declare-fun b!6923967 () Bool)

(assert (=> b!6923967 (= e!4167011 (matchRSpec!3980 (regTwo!34359 lt!2471063) (_1!37083 lt!2471049)))))

(declare-fun b!6923968 () Bool)

(assert (=> b!6923968 (= e!4167016 (= (_1!37083 lt!2471049) (Cons!66552 (c!1285229 lt!2471063) Nil!66552)))))

(assert (=> b!6923969 (= e!4167014 call!629334)))

(declare-fun b!6923970 () Bool)

(assert (=> b!6923970 (= e!4167013 e!4167012)))

(declare-fun res!2823506 () Bool)

(assert (=> b!6923970 (= res!2823506 (not ((_ is EmptyLang!16923) lt!2471063)))))

(assert (=> b!6923970 (=> (not res!2823506) (not e!4167012))))

(declare-fun bm!629329 () Bool)

(assert (=> bm!629329 (= call!629334 (Exists!3925 (ite c!1285391 lambda!393746 lambda!393747)))))

(declare-fun bm!629330 () Bool)

(assert (=> bm!629330 (= call!629335 (isEmpty!38806 (_1!37083 lt!2471049)))))

(assert (= (and d!2165013 c!1285390) b!6923960))

(assert (= (and d!2165013 (not c!1285390)) b!6923970))

(assert (= (and b!6923970 res!2823506) b!6923964))

(assert (= (and b!6923964 c!1285389) b!6923968))

(assert (= (and b!6923964 (not c!1285389)) b!6923961))

(assert (= (and b!6923961 c!1285392) b!6923963))

(assert (= (and b!6923961 (not c!1285392)) b!6923966))

(assert (= (and b!6923963 (not res!2823508)) b!6923967))

(assert (= (and b!6923966 c!1285391) b!6923965))

(assert (= (and b!6923966 (not c!1285391)) b!6923969))

(assert (= (and b!6923965 (not res!2823507)) b!6923962))

(assert (= (or b!6923962 b!6923969) bm!629329))

(assert (= (or b!6923960 b!6923965) bm!629330))

(declare-fun m!7633182 () Bool)

(assert (=> b!6923963 m!7633182))

(declare-fun m!7633184 () Bool)

(assert (=> b!6923967 m!7633184))

(declare-fun m!7633186 () Bool)

(assert (=> bm!629329 m!7633186))

(assert (=> bm!629330 m!7633172))

(assert (=> b!6923205 d!2165013))

(declare-fun b!6923971 () Bool)

(declare-fun lt!2471171 () Unit!160570)

(declare-fun lt!2471173 () Unit!160570)

(assert (=> b!6923971 (= lt!2471171 lt!2471173)))

(assert (=> b!6923971 (= (++!14966 (++!14966 Nil!66552 (Cons!66552 (h!73000 s!14361) Nil!66552)) (t!380419 s!14361)) s!14361)))

(assert (=> b!6923971 (= lt!2471173 (lemmaMoveElementToOtherListKeepsConcatEq!2831 Nil!66552 (h!73000 s!14361) (t!380419 s!14361) s!14361))))

(declare-fun e!4167022 () Option!16692)

(assert (=> b!6923971 (= e!4167022 (findConcatSeparation!3106 lt!2471063 r3!135 (++!14966 Nil!66552 (Cons!66552 (h!73000 s!14361) Nil!66552)) (t!380419 s!14361) s!14361))))

(declare-fun b!6923972 () Bool)

(declare-fun e!4167020 () Option!16692)

(assert (=> b!6923972 (= e!4167020 (Some!16691 (tuple2!67561 Nil!66552 s!14361)))))

(declare-fun b!6923973 () Bool)

(declare-fun res!2823513 () Bool)

(declare-fun e!4167019 () Bool)

(assert (=> b!6923973 (=> (not res!2823513) (not e!4167019))))

(declare-fun lt!2471172 () Option!16692)

(assert (=> b!6923973 (= res!2823513 (matchR!9062 lt!2471063 (_1!37083 (get!23325 lt!2471172))))))

(declare-fun d!2165015 () Bool)

(declare-fun e!4167018 () Bool)

(assert (=> d!2165015 e!4167018))

(declare-fun res!2823512 () Bool)

(assert (=> d!2165015 (=> res!2823512 e!4167018)))

(assert (=> d!2165015 (= res!2823512 e!4167019)))

(declare-fun res!2823510 () Bool)

(assert (=> d!2165015 (=> (not res!2823510) (not e!4167019))))

(assert (=> d!2165015 (= res!2823510 (isDefined!13395 lt!2471172))))

(assert (=> d!2165015 (= lt!2471172 e!4167020)))

(declare-fun c!1285393 () Bool)

(declare-fun e!4167021 () Bool)

(assert (=> d!2165015 (= c!1285393 e!4167021)))

(declare-fun res!2823509 () Bool)

(assert (=> d!2165015 (=> (not res!2823509) (not e!4167021))))

(assert (=> d!2165015 (= res!2823509 (matchR!9062 lt!2471063 Nil!66552))))

(assert (=> d!2165015 (validRegex!8629 lt!2471063)))

(assert (=> d!2165015 (= (findConcatSeparation!3106 lt!2471063 r3!135 Nil!66552 s!14361 s!14361) lt!2471172)))

(declare-fun b!6923974 () Bool)

(assert (=> b!6923974 (= e!4167019 (= (++!14966 (_1!37083 (get!23325 lt!2471172)) (_2!37083 (get!23325 lt!2471172))) s!14361))))

(declare-fun b!6923975 () Bool)

(assert (=> b!6923975 (= e!4167018 (not (isDefined!13395 lt!2471172)))))

(declare-fun b!6923976 () Bool)

(assert (=> b!6923976 (= e!4167020 e!4167022)))

(declare-fun c!1285394 () Bool)

(assert (=> b!6923976 (= c!1285394 ((_ is Nil!66552) s!14361))))

(declare-fun b!6923977 () Bool)

(declare-fun res!2823511 () Bool)

(assert (=> b!6923977 (=> (not res!2823511) (not e!4167019))))

(assert (=> b!6923977 (= res!2823511 (matchR!9062 r3!135 (_2!37083 (get!23325 lt!2471172))))))

(declare-fun b!6923978 () Bool)

(assert (=> b!6923978 (= e!4167022 None!16691)))

(declare-fun b!6923979 () Bool)

(assert (=> b!6923979 (= e!4167021 (matchR!9062 r3!135 s!14361))))

(assert (= (and d!2165015 res!2823509) b!6923979))

(assert (= (and d!2165015 c!1285393) b!6923972))

(assert (= (and d!2165015 (not c!1285393)) b!6923976))

(assert (= (and b!6923976 c!1285394) b!6923978))

(assert (= (and b!6923976 (not c!1285394)) b!6923971))

(assert (= (and d!2165015 res!2823510) b!6923973))

(assert (= (and b!6923973 res!2823513) b!6923977))

(assert (= (and b!6923977 res!2823511) b!6923974))

(assert (= (and d!2165015 (not res!2823512)) b!6923975))

(declare-fun m!7633188 () Bool)

(assert (=> b!6923973 m!7633188))

(declare-fun m!7633190 () Bool)

(assert (=> b!6923973 m!7633190))

(declare-fun m!7633192 () Bool)

(assert (=> b!6923979 m!7633192))

(assert (=> b!6923977 m!7633188))

(declare-fun m!7633194 () Bool)

(assert (=> b!6923977 m!7633194))

(assert (=> b!6923974 m!7633188))

(declare-fun m!7633196 () Bool)

(assert (=> b!6923974 m!7633196))

(declare-fun m!7633198 () Bool)

(assert (=> d!2165015 m!7633198))

(declare-fun m!7633200 () Bool)

(assert (=> d!2165015 m!7633200))

(assert (=> d!2165015 m!7633156))

(declare-fun m!7633202 () Bool)

(assert (=> b!6923971 m!7633202))

(assert (=> b!6923971 m!7633202))

(declare-fun m!7633204 () Bool)

(assert (=> b!6923971 m!7633204))

(declare-fun m!7633206 () Bool)

(assert (=> b!6923971 m!7633206))

(assert (=> b!6923971 m!7633202))

(declare-fun m!7633208 () Bool)

(assert (=> b!6923971 m!7633208))

(assert (=> b!6923975 m!7633198))

(assert (=> b!6923205 d!2165015))

(declare-fun b!6923983 () Bool)

(declare-fun e!4167024 () Bool)

(declare-fun lt!2471174 () List!66676)

(assert (=> b!6923983 (= e!4167024 (or (not (= lt!2471067 Nil!66552)) (= lt!2471174 (_1!37083 lt!2471065))))))

(declare-fun b!6923980 () Bool)

(declare-fun e!4167023 () List!66676)

(assert (=> b!6923980 (= e!4167023 lt!2471067)))

(declare-fun b!6923981 () Bool)

(assert (=> b!6923981 (= e!4167023 (Cons!66552 (h!73000 (_1!37083 lt!2471065)) (++!14966 (t!380419 (_1!37083 lt!2471065)) lt!2471067)))))

(declare-fun d!2165017 () Bool)

(assert (=> d!2165017 e!4167024))

(declare-fun res!2823515 () Bool)

(assert (=> d!2165017 (=> (not res!2823515) (not e!4167024))))

(assert (=> d!2165017 (= res!2823515 (= (content!13080 lt!2471174) ((_ map or) (content!13080 (_1!37083 lt!2471065)) (content!13080 lt!2471067))))))

(assert (=> d!2165017 (= lt!2471174 e!4167023)))

(declare-fun c!1285395 () Bool)

(assert (=> d!2165017 (= c!1285395 ((_ is Nil!66552) (_1!37083 lt!2471065)))))

(assert (=> d!2165017 (= (++!14966 (_1!37083 lt!2471065) lt!2471067) lt!2471174)))

(declare-fun b!6923982 () Bool)

(declare-fun res!2823514 () Bool)

(assert (=> b!6923982 (=> (not res!2823514) (not e!4167024))))

(assert (=> b!6923982 (= res!2823514 (= (size!40777 lt!2471174) (+ (size!40777 (_1!37083 lt!2471065)) (size!40777 lt!2471067))))))

(assert (= (and d!2165017 c!1285395) b!6923980))

(assert (= (and d!2165017 (not c!1285395)) b!6923981))

(assert (= (and d!2165017 res!2823515) b!6923982))

(assert (= (and b!6923982 res!2823514) b!6923983))

(declare-fun m!7633210 () Bool)

(assert (=> b!6923981 m!7633210))

(declare-fun m!7633212 () Bool)

(assert (=> d!2165017 m!7633212))

(assert (=> d!2165017 m!7632660))

(declare-fun m!7633214 () Bool)

(assert (=> d!2165017 m!7633214))

(declare-fun m!7633216 () Bool)

(assert (=> b!6923982 m!7633216))

(assert (=> b!6923982 m!7632666))

(declare-fun m!7633218 () Bool)

(assert (=> b!6923982 m!7633218))

(assert (=> b!6923194 d!2165017))

(declare-fun d!2165019 () Bool)

(assert (=> d!2165019 (= (++!14966 (++!14966 (_1!37083 lt!2471065) (_2!37083 lt!2471065)) (_2!37083 lt!2471049)) (++!14966 (_1!37083 lt!2471065) (++!14966 (_2!37083 lt!2471065) (_2!37083 lt!2471049))))))

(declare-fun lt!2471177 () Unit!160570)

(declare-fun choose!51557 (List!66676 List!66676 List!66676) Unit!160570)

(assert (=> d!2165019 (= lt!2471177 (choose!51557 (_1!37083 lt!2471065) (_2!37083 lt!2471065) (_2!37083 lt!2471049)))))

(assert (=> d!2165019 (= (lemmaConcatAssociativity!3014 (_1!37083 lt!2471065) (_2!37083 lt!2471065) (_2!37083 lt!2471049)) lt!2471177)))

(declare-fun bs!1848085 () Bool)

(assert (= bs!1848085 d!2165019))

(assert (=> bs!1848085 m!7632510))

(declare-fun m!7633220 () Bool)

(assert (=> bs!1848085 m!7633220))

(assert (=> bs!1848085 m!7632510))

(assert (=> bs!1848085 m!7632534))

(assert (=> bs!1848085 m!7632534))

(assert (=> bs!1848085 m!7632536))

(declare-fun m!7633222 () Bool)

(assert (=> bs!1848085 m!7633222))

(assert (=> b!6923194 d!2165019))

(declare-fun d!2165021 () Bool)

(assert (=> d!2165021 (= (isDefined!13395 lt!2471070) (not (isEmpty!38807 lt!2471070)))))

(declare-fun bs!1848086 () Bool)

(assert (= bs!1848086 d!2165021))

(declare-fun m!7633224 () Bool)

(assert (=> bs!1848086 m!7633224))

(assert (=> b!6923207 d!2165021))

(declare-fun b!6923984 () Bool)

(declare-fun lt!2471178 () Unit!160570)

(declare-fun lt!2471180 () Unit!160570)

(assert (=> b!6923984 (= lt!2471178 lt!2471180)))

(assert (=> b!6923984 (= (++!14966 (++!14966 Nil!66552 (Cons!66552 (h!73000 (_1!37083 lt!2471049)) Nil!66552)) (t!380419 (_1!37083 lt!2471049))) (_1!37083 lt!2471049))))

(assert (=> b!6923984 (= lt!2471180 (lemmaMoveElementToOtherListKeepsConcatEq!2831 Nil!66552 (h!73000 (_1!37083 lt!2471049)) (t!380419 (_1!37083 lt!2471049)) (_1!37083 lt!2471049)))))

(declare-fun e!4167029 () Option!16692)

(assert (=> b!6923984 (= e!4167029 (findConcatSeparation!3106 r1!6342 r2!6280 (++!14966 Nil!66552 (Cons!66552 (h!73000 (_1!37083 lt!2471049)) Nil!66552)) (t!380419 (_1!37083 lt!2471049)) (_1!37083 lt!2471049)))))

(declare-fun b!6923985 () Bool)

(declare-fun e!4167027 () Option!16692)

(assert (=> b!6923985 (= e!4167027 (Some!16691 (tuple2!67561 Nil!66552 (_1!37083 lt!2471049))))))

(declare-fun b!6923986 () Bool)

(declare-fun res!2823520 () Bool)

(declare-fun e!4167026 () Bool)

(assert (=> b!6923986 (=> (not res!2823520) (not e!4167026))))

(declare-fun lt!2471179 () Option!16692)

(assert (=> b!6923986 (= res!2823520 (matchR!9062 r1!6342 (_1!37083 (get!23325 lt!2471179))))))

(declare-fun d!2165023 () Bool)

(declare-fun e!4167025 () Bool)

(assert (=> d!2165023 e!4167025))

(declare-fun res!2823519 () Bool)

(assert (=> d!2165023 (=> res!2823519 e!4167025)))

(assert (=> d!2165023 (= res!2823519 e!4167026)))

(declare-fun res!2823517 () Bool)

(assert (=> d!2165023 (=> (not res!2823517) (not e!4167026))))

(assert (=> d!2165023 (= res!2823517 (isDefined!13395 lt!2471179))))

(assert (=> d!2165023 (= lt!2471179 e!4167027)))

(declare-fun c!1285396 () Bool)

(declare-fun e!4167028 () Bool)

(assert (=> d!2165023 (= c!1285396 e!4167028)))

(declare-fun res!2823516 () Bool)

(assert (=> d!2165023 (=> (not res!2823516) (not e!4167028))))

(assert (=> d!2165023 (= res!2823516 (matchR!9062 r1!6342 Nil!66552))))

(assert (=> d!2165023 (validRegex!8629 r1!6342)))

(assert (=> d!2165023 (= (findConcatSeparation!3106 r1!6342 r2!6280 Nil!66552 (_1!37083 lt!2471049) (_1!37083 lt!2471049)) lt!2471179)))

(declare-fun b!6923987 () Bool)

(assert (=> b!6923987 (= e!4167026 (= (++!14966 (_1!37083 (get!23325 lt!2471179)) (_2!37083 (get!23325 lt!2471179))) (_1!37083 lt!2471049)))))

(declare-fun b!6923988 () Bool)

(assert (=> b!6923988 (= e!4167025 (not (isDefined!13395 lt!2471179)))))

(declare-fun b!6923989 () Bool)

(assert (=> b!6923989 (= e!4167027 e!4167029)))

(declare-fun c!1285397 () Bool)

(assert (=> b!6923989 (= c!1285397 ((_ is Nil!66552) (_1!37083 lt!2471049)))))

(declare-fun b!6923990 () Bool)

(declare-fun res!2823518 () Bool)

(assert (=> b!6923990 (=> (not res!2823518) (not e!4167026))))

(assert (=> b!6923990 (= res!2823518 (matchR!9062 r2!6280 (_2!37083 (get!23325 lt!2471179))))))

(declare-fun b!6923991 () Bool)

(assert (=> b!6923991 (= e!4167029 None!16691)))

(declare-fun b!6923992 () Bool)

(assert (=> b!6923992 (= e!4167028 (matchR!9062 r2!6280 (_1!37083 lt!2471049)))))

(assert (= (and d!2165023 res!2823516) b!6923992))

(assert (= (and d!2165023 c!1285396) b!6923985))

(assert (= (and d!2165023 (not c!1285396)) b!6923989))

(assert (= (and b!6923989 c!1285397) b!6923991))

(assert (= (and b!6923989 (not c!1285397)) b!6923984))

(assert (= (and d!2165023 res!2823517) b!6923986))

(assert (= (and b!6923986 res!2823520) b!6923990))

(assert (= (and b!6923990 res!2823518) b!6923987))

(assert (= (and d!2165023 (not res!2823519)) b!6923988))

(declare-fun m!7633226 () Bool)

(assert (=> b!6923986 m!7633226))

(declare-fun m!7633228 () Bool)

(assert (=> b!6923986 m!7633228))

(declare-fun m!7633230 () Bool)

(assert (=> b!6923992 m!7633230))

(assert (=> b!6923990 m!7633226))

(declare-fun m!7633232 () Bool)

(assert (=> b!6923990 m!7633232))

(assert (=> b!6923987 m!7633226))

(declare-fun m!7633234 () Bool)

(assert (=> b!6923987 m!7633234))

(declare-fun m!7633236 () Bool)

(assert (=> d!2165023 m!7633236))

(declare-fun m!7633238 () Bool)

(assert (=> d!2165023 m!7633238))

(assert (=> d!2165023 m!7632604))

(declare-fun m!7633240 () Bool)

(assert (=> b!6923984 m!7633240))

(assert (=> b!6923984 m!7633240))

(declare-fun m!7633242 () Bool)

(assert (=> b!6923984 m!7633242))

(declare-fun m!7633244 () Bool)

(assert (=> b!6923984 m!7633244))

(assert (=> b!6923984 m!7633240))

(declare-fun m!7633246 () Bool)

(assert (=> b!6923984 m!7633246))

(assert (=> b!6923988 m!7633236))

(assert (=> b!6923207 d!2165023))

(declare-fun d!2165025 () Bool)

(assert (=> d!2165025 (= (get!23325 lt!2471070) (v!52963 lt!2471070))))

(assert (=> b!6923207 d!2165025))

(declare-fun bs!1848087 () Bool)

(declare-fun d!2165027 () Bool)

(assert (= bs!1848087 (and d!2165027 b!6923919)))

(declare-fun lambda!393748 () Int)

(assert (=> bs!1848087 (not (= lambda!393748 lambda!393741))))

(declare-fun bs!1848088 () Bool)

(assert (= bs!1848088 (and d!2165027 b!6923439)))

(assert (=> bs!1848088 (not (= lambda!393748 lambda!393710))))

(declare-fun bs!1848089 () Bool)

(assert (= bs!1848089 (and d!2165027 b!6923926)))

(assert (=> bs!1848089 (not (= lambda!393748 lambda!393742))))

(declare-fun bs!1848090 () Bool)

(assert (= bs!1848090 (and d!2165027 b!6923811)))

(assert (=> bs!1848090 (not (= lambda!393748 lambda!393731))))

(declare-fun bs!1848091 () Bool)

(assert (= bs!1848091 (and d!2165027 d!2164971)))

(assert (=> bs!1848091 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393748 lambda!393737))))

(declare-fun bs!1848092 () Bool)

(assert (= bs!1848092 (and d!2165027 b!6923880)))

(assert (=> bs!1848092 (not (= lambda!393748 lambda!393739))))

(declare-fun bs!1848093 () Bool)

(assert (= bs!1848093 (and d!2165027 b!6923446)))

(assert (=> bs!1848093 (not (= lambda!393748 lambda!393713))))

(declare-fun bs!1848094 () Bool)

(assert (= bs!1848094 (and d!2165027 d!2165003)))

(assert (=> bs!1848094 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 lt!2471063) (= r2!6280 r3!135)) (= lambda!393748 lambda!393743))))

(declare-fun bs!1848095 () Bool)

(assert (= bs!1848095 (and d!2165027 b!6923191)))

(assert (=> bs!1848095 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393748 lambda!393687))))

(declare-fun bs!1848096 () Bool)

(assert (= bs!1848096 (and d!2165027 b!6923818)))

(assert (=> bs!1848096 (not (= lambda!393748 lambda!393732))))

(assert (=> bs!1848091 (not (= lambda!393748 lambda!393738))))

(declare-fun bs!1848097 () Bool)

(assert (= bs!1848097 (and d!2165027 b!6923207)))

(assert (=> bs!1848097 (not (= lambda!393748 lambda!393686))))

(declare-fun bs!1848098 () Bool)

(assert (= bs!1848098 (and d!2165027 b!6923487)))

(assert (=> bs!1848098 (not (= lambda!393748 lambda!393714))))

(declare-fun bs!1848099 () Bool)

(assert (= bs!1848099 (and d!2165027 d!2164961)))

(assert (=> bs!1848099 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393748 lambda!393730))))

(declare-fun bs!1848100 () Bool)

(assert (= bs!1848100 (and d!2165027 b!6923205)))

(assert (=> bs!1848100 (not (= lambda!393748 lambda!393684))))

(assert (=> bs!1848094 (not (= lambda!393748 lambda!393744))))

(declare-fun bs!1848101 () Bool)

(assert (= bs!1848101 (and d!2165027 b!6923962)))

(assert (=> bs!1848101 (not (= lambda!393748 lambda!393746))))

(assert (=> bs!1848095 (not (= lambda!393748 lambda!393688))))

(assert (=> bs!1848100 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 lt!2471063) (= r2!6280 r3!135)) (= lambda!393748 lambda!393683))))

(declare-fun bs!1848102 () Bool)

(assert (= bs!1848102 (and d!2165027 d!2165009)))

(assert (=> bs!1848102 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 lt!2471063) (= r2!6280 r3!135)) (= lambda!393748 lambda!393745))))

(assert (=> bs!1848097 (= lambda!393748 lambda!393685)))

(declare-fun bs!1848103 () Bool)

(assert (= bs!1848103 (and d!2165027 b!6923969)))

(assert (=> bs!1848103 (not (= lambda!393748 lambda!393747))))

(declare-fun bs!1848104 () Bool)

(assert (= bs!1848104 (and d!2165027 b!6923494)))

(assert (=> bs!1848104 (not (= lambda!393748 lambda!393716))))

(declare-fun bs!1848105 () Bool)

(assert (= bs!1848105 (and d!2165027 b!6923887)))

(assert (=> bs!1848105 (not (= lambda!393748 lambda!393740))))

(assert (=> d!2165027 true))

(assert (=> d!2165027 true))

(assert (=> d!2165027 true))

(assert (=> d!2165027 (= (isDefined!13395 (findConcatSeparation!3106 r1!6342 r2!6280 Nil!66552 (_1!37083 lt!2471049) (_1!37083 lt!2471049))) (Exists!3925 lambda!393748))))

(declare-fun lt!2471181 () Unit!160570)

(assert (=> d!2165027 (= lt!2471181 (choose!51553 r1!6342 r2!6280 (_1!37083 lt!2471049)))))

(assert (=> d!2165027 (validRegex!8629 r1!6342)))

(assert (=> d!2165027 (= (lemmaFindConcatSeparationEquivalentToExists!2868 r1!6342 r2!6280 (_1!37083 lt!2471049)) lt!2471181)))

(declare-fun bs!1848106 () Bool)

(assert (= bs!1848106 d!2165027))

(assert (=> bs!1848106 m!7632604))

(declare-fun m!7633248 () Bool)

(assert (=> bs!1848106 m!7633248))

(assert (=> bs!1848106 m!7632592))

(declare-fun m!7633250 () Bool)

(assert (=> bs!1848106 m!7633250))

(assert (=> bs!1848106 m!7632592))

(declare-fun m!7633252 () Bool)

(assert (=> bs!1848106 m!7633252))

(assert (=> b!6923207 d!2165027))

(declare-fun bs!1848107 () Bool)

(declare-fun d!2165029 () Bool)

(assert (= bs!1848107 (and d!2165029 b!6923919)))

(declare-fun lambda!393749 () Int)

(assert (=> bs!1848107 (not (= lambda!393749 lambda!393741))))

(declare-fun bs!1848108 () Bool)

(assert (= bs!1848108 (and d!2165029 d!2165027)))

(assert (=> bs!1848108 (= lambda!393749 lambda!393748)))

(declare-fun bs!1848109 () Bool)

(assert (= bs!1848109 (and d!2165029 b!6923439)))

(assert (=> bs!1848109 (not (= lambda!393749 lambda!393710))))

(declare-fun bs!1848110 () Bool)

(assert (= bs!1848110 (and d!2165029 b!6923926)))

(assert (=> bs!1848110 (not (= lambda!393749 lambda!393742))))

(declare-fun bs!1848111 () Bool)

(assert (= bs!1848111 (and d!2165029 b!6923811)))

(assert (=> bs!1848111 (not (= lambda!393749 lambda!393731))))

(declare-fun bs!1848112 () Bool)

(assert (= bs!1848112 (and d!2165029 d!2164971)))

(assert (=> bs!1848112 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393749 lambda!393737))))

(declare-fun bs!1848113 () Bool)

(assert (= bs!1848113 (and d!2165029 b!6923880)))

(assert (=> bs!1848113 (not (= lambda!393749 lambda!393739))))

(declare-fun bs!1848114 () Bool)

(assert (= bs!1848114 (and d!2165029 b!6923446)))

(assert (=> bs!1848114 (not (= lambda!393749 lambda!393713))))

(declare-fun bs!1848115 () Bool)

(assert (= bs!1848115 (and d!2165029 d!2165003)))

(assert (=> bs!1848115 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 lt!2471063) (= r2!6280 r3!135)) (= lambda!393749 lambda!393743))))

(declare-fun bs!1848116 () Bool)

(assert (= bs!1848116 (and d!2165029 b!6923191)))

(assert (=> bs!1848116 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393749 lambda!393687))))

(declare-fun bs!1848117 () Bool)

(assert (= bs!1848117 (and d!2165029 b!6923818)))

(assert (=> bs!1848117 (not (= lambda!393749 lambda!393732))))

(assert (=> bs!1848112 (not (= lambda!393749 lambda!393738))))

(declare-fun bs!1848118 () Bool)

(assert (= bs!1848118 (and d!2165029 b!6923207)))

(assert (=> bs!1848118 (not (= lambda!393749 lambda!393686))))

(declare-fun bs!1848119 () Bool)

(assert (= bs!1848119 (and d!2165029 b!6923487)))

(assert (=> bs!1848119 (not (= lambda!393749 lambda!393714))))

(declare-fun bs!1848120 () Bool)

(assert (= bs!1848120 (and d!2165029 d!2164961)))

(assert (=> bs!1848120 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393749 lambda!393730))))

(declare-fun bs!1848121 () Bool)

(assert (= bs!1848121 (and d!2165029 b!6923205)))

(assert (=> bs!1848121 (not (= lambda!393749 lambda!393684))))

(assert (=> bs!1848115 (not (= lambda!393749 lambda!393744))))

(declare-fun bs!1848122 () Bool)

(assert (= bs!1848122 (and d!2165029 b!6923962)))

(assert (=> bs!1848122 (not (= lambda!393749 lambda!393746))))

(assert (=> bs!1848116 (not (= lambda!393749 lambda!393688))))

(assert (=> bs!1848121 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 lt!2471063) (= r2!6280 r3!135)) (= lambda!393749 lambda!393683))))

(declare-fun bs!1848123 () Bool)

(assert (= bs!1848123 (and d!2165029 d!2165009)))

(assert (=> bs!1848123 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 lt!2471063) (= r2!6280 r3!135)) (= lambda!393749 lambda!393745))))

(assert (=> bs!1848118 (= lambda!393749 lambda!393685)))

(declare-fun bs!1848124 () Bool)

(assert (= bs!1848124 (and d!2165029 b!6923969)))

(assert (=> bs!1848124 (not (= lambda!393749 lambda!393747))))

(declare-fun bs!1848125 () Bool)

(assert (= bs!1848125 (and d!2165029 b!6923494)))

(assert (=> bs!1848125 (not (= lambda!393749 lambda!393716))))

(declare-fun bs!1848126 () Bool)

(assert (= bs!1848126 (and d!2165029 b!6923887)))

(assert (=> bs!1848126 (not (= lambda!393749 lambda!393740))))

(assert (=> d!2165029 true))

(assert (=> d!2165029 true))

(assert (=> d!2165029 true))

(declare-fun lambda!393750 () Int)

(assert (=> bs!1848107 (not (= lambda!393750 lambda!393741))))

(assert (=> bs!1848108 (not (= lambda!393750 lambda!393748))))

(assert (=> bs!1848109 (not (= lambda!393750 lambda!393710))))

(assert (=> bs!1848110 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 (regOne!34358 lt!2471048)) (= r2!6280 (regTwo!34358 lt!2471048))) (= lambda!393750 lambda!393742))))

(assert (=> bs!1848111 (not (= lambda!393750 lambda!393731))))

(assert (=> bs!1848112 (not (= lambda!393750 lambda!393737))))

(assert (=> bs!1848113 (not (= lambda!393750 lambda!393739))))

(assert (=> bs!1848114 (= (and (= (_1!37083 lt!2471049) (_2!37083 lt!2471065)) (= r1!6342 (regOne!34358 r2!6280)) (= r2!6280 (regTwo!34358 r2!6280))) (= lambda!393750 lambda!393713))))

(assert (=> bs!1848115 (not (= lambda!393750 lambda!393743))))

(assert (=> bs!1848116 (not (= lambda!393750 lambda!393687))))

(assert (=> bs!1848117 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= r1!6342 (regOne!34358 lt!2471068)) (= r2!6280 (regTwo!34358 lt!2471068))) (= lambda!393750 lambda!393732))))

(assert (=> bs!1848112 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393750 lambda!393738))))

(assert (=> bs!1848118 (= lambda!393750 lambda!393686)))

(assert (=> bs!1848119 (not (= lambda!393750 lambda!393714))))

(assert (=> bs!1848120 (not (= lambda!393750 lambda!393730))))

(assert (=> bs!1848121 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 lt!2471063) (= r2!6280 r3!135)) (= lambda!393750 lambda!393684))))

(assert (=> bs!1848115 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 lt!2471063) (= r2!6280 r3!135)) (= lambda!393750 lambda!393744))))

(declare-fun bs!1848127 () Bool)

(assert (= bs!1848127 d!2165029))

(assert (=> bs!1848127 (not (= lambda!393750 lambda!393749))))

(assert (=> bs!1848122 (not (= lambda!393750 lambda!393746))))

(assert (=> bs!1848116 (= (and (= (_1!37083 lt!2471049) lt!2471067) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393750 lambda!393688))))

(assert (=> bs!1848121 (not (= lambda!393750 lambda!393683))))

(assert (=> bs!1848123 (not (= lambda!393750 lambda!393745))))

(assert (=> bs!1848118 (not (= lambda!393750 lambda!393685))))

(assert (=> bs!1848124 (= (and (= r1!6342 (regOne!34358 lt!2471063)) (= r2!6280 (regTwo!34358 lt!2471063))) (= lambda!393750 lambda!393747))))

(assert (=> bs!1848125 (= (and (= (_1!37083 lt!2471049) (_1!37083 lt!2471065)) (= r1!6342 (regOne!34358 r1!6342)) (= r2!6280 (regTwo!34358 r1!6342))) (= lambda!393750 lambda!393716))))

(assert (=> bs!1848126 (= (and (= (_1!37083 lt!2471049) s!14361) (= r1!6342 (regOne!34358 lt!2471058)) (= r2!6280 (regTwo!34358 lt!2471058))) (= lambda!393750 lambda!393740))))

(assert (=> d!2165029 true))

(assert (=> d!2165029 true))

(assert (=> d!2165029 true))

(assert (=> d!2165029 (= (Exists!3925 lambda!393749) (Exists!3925 lambda!393750))))

(declare-fun lt!2471182 () Unit!160570)

(assert (=> d!2165029 (= lt!2471182 (choose!51554 r1!6342 r2!6280 (_1!37083 lt!2471049)))))

(assert (=> d!2165029 (validRegex!8629 r1!6342)))

(assert (=> d!2165029 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2392 r1!6342 r2!6280 (_1!37083 lt!2471049)) lt!2471182)))

(declare-fun m!7633254 () Bool)

(assert (=> bs!1848127 m!7633254))

(declare-fun m!7633256 () Bool)

(assert (=> bs!1848127 m!7633256))

(declare-fun m!7633258 () Bool)

(assert (=> bs!1848127 m!7633258))

(assert (=> bs!1848127 m!7632604))

(assert (=> b!6923207 d!2165029))

(declare-fun b!6923993 () Bool)

(declare-fun res!2823523 () Bool)

(declare-fun e!4167035 () Bool)

(assert (=> b!6923993 (=> (not res!2823523) (not e!4167035))))

(assert (=> b!6923993 (= res!2823523 (isEmpty!38806 (tail!12932 (_1!37083 lt!2471065))))))

(declare-fun b!6923994 () Bool)

(declare-fun res!2823525 () Bool)

(declare-fun e!4167031 () Bool)

(assert (=> b!6923994 (=> res!2823525 e!4167031)))

(assert (=> b!6923994 (= res!2823525 (not (isEmpty!38806 (tail!12932 (_1!37083 lt!2471065)))))))

(declare-fun b!6923995 () Bool)

(declare-fun res!2823527 () Bool)

(assert (=> b!6923995 (=> (not res!2823527) (not e!4167035))))

(declare-fun call!629336 () Bool)

(assert (=> b!6923995 (= res!2823527 (not call!629336))))

(declare-fun b!6923996 () Bool)

(declare-fun e!4167030 () Bool)

(declare-fun e!4167033 () Bool)

(assert (=> b!6923996 (= e!4167030 e!4167033)))

(declare-fun res!2823526 () Bool)

(assert (=> b!6923996 (=> (not res!2823526) (not e!4167033))))

(declare-fun lt!2471183 () Bool)

(assert (=> b!6923996 (= res!2823526 (not lt!2471183))))

(declare-fun b!6923997 () Bool)

(assert (=> b!6923997 (= e!4167033 e!4167031)))

(declare-fun res!2823528 () Bool)

(assert (=> b!6923997 (=> res!2823528 e!4167031)))

(assert (=> b!6923997 (= res!2823528 call!629336)))

(declare-fun d!2165031 () Bool)

(declare-fun e!4167034 () Bool)

(assert (=> d!2165031 e!4167034))

(declare-fun c!1285399 () Bool)

(assert (=> d!2165031 (= c!1285399 ((_ is EmptyExpr!16923) r1!6342))))

(declare-fun e!4167032 () Bool)

(assert (=> d!2165031 (= lt!2471183 e!4167032)))

(declare-fun c!1285400 () Bool)

(assert (=> d!2165031 (= c!1285400 (isEmpty!38806 (_1!37083 lt!2471065)))))

(assert (=> d!2165031 (validRegex!8629 r1!6342)))

(assert (=> d!2165031 (= (matchR!9062 r1!6342 (_1!37083 lt!2471065)) lt!2471183)))

(declare-fun b!6923998 () Bool)

(assert (=> b!6923998 (= e!4167032 (matchR!9062 (derivativeStep!5427 r1!6342 (head!13880 (_1!37083 lt!2471065))) (tail!12932 (_1!37083 lt!2471065))))))

(declare-fun b!6923999 () Bool)

(declare-fun e!4167036 () Bool)

(assert (=> b!6923999 (= e!4167034 e!4167036)))

(declare-fun c!1285398 () Bool)

(assert (=> b!6923999 (= c!1285398 ((_ is EmptyLang!16923) r1!6342))))

(declare-fun b!6924000 () Bool)

(declare-fun res!2823521 () Bool)

(assert (=> b!6924000 (=> res!2823521 e!4167030)))

(assert (=> b!6924000 (= res!2823521 (not ((_ is ElementMatch!16923) r1!6342)))))

(assert (=> b!6924000 (= e!4167036 e!4167030)))

(declare-fun b!6924001 () Bool)

(assert (=> b!6924001 (= e!4167034 (= lt!2471183 call!629336))))

(declare-fun b!6924002 () Bool)

(declare-fun res!2823524 () Bool)

(assert (=> b!6924002 (=> res!2823524 e!4167030)))

(assert (=> b!6924002 (= res!2823524 e!4167035)))

(declare-fun res!2823522 () Bool)

(assert (=> b!6924002 (=> (not res!2823522) (not e!4167035))))

(assert (=> b!6924002 (= res!2823522 lt!2471183)))

(declare-fun b!6924003 () Bool)

(assert (=> b!6924003 (= e!4167035 (= (head!13880 (_1!37083 lt!2471065)) (c!1285229 r1!6342)))))

(declare-fun b!6924004 () Bool)

(assert (=> b!6924004 (= e!4167036 (not lt!2471183))))

(declare-fun b!6924005 () Bool)

(assert (=> b!6924005 (= e!4167031 (not (= (head!13880 (_1!37083 lt!2471065)) (c!1285229 r1!6342))))))

(declare-fun bm!629331 () Bool)

(assert (=> bm!629331 (= call!629336 (isEmpty!38806 (_1!37083 lt!2471065)))))

(declare-fun b!6924006 () Bool)

(assert (=> b!6924006 (= e!4167032 (nullable!6752 r1!6342))))

(assert (= (and d!2165031 c!1285400) b!6924006))

(assert (= (and d!2165031 (not c!1285400)) b!6923998))

(assert (= (and d!2165031 c!1285399) b!6924001))

(assert (= (and d!2165031 (not c!1285399)) b!6923999))

(assert (= (and b!6923999 c!1285398) b!6924004))

(assert (= (and b!6923999 (not c!1285398)) b!6924000))

(assert (= (and b!6924000 (not res!2823521)) b!6924002))

(assert (= (and b!6924002 res!2823522) b!6923995))

(assert (= (and b!6923995 res!2823527) b!6923993))

(assert (= (and b!6923993 res!2823523) b!6924003))

(assert (= (and b!6924002 (not res!2823524)) b!6923996))

(assert (= (and b!6923996 res!2823526) b!6923997))

(assert (= (and b!6923997 (not res!2823528)) b!6923994))

(assert (= (and b!6923994 (not res!2823525)) b!6924005))

(assert (= (or b!6924001 b!6923995 b!6923997) bm!629331))

(declare-fun m!7633260 () Bool)

(assert (=> b!6923994 m!7633260))

(assert (=> b!6923994 m!7633260))

(declare-fun m!7633262 () Bool)

(assert (=> b!6923994 m!7633262))

(assert (=> b!6923993 m!7633260))

(assert (=> b!6923993 m!7633260))

(assert (=> b!6923993 m!7633262))

(assert (=> d!2165031 m!7632832))

(assert (=> d!2165031 m!7632604))

(declare-fun m!7633264 () Bool)

(assert (=> b!6924006 m!7633264))

(declare-fun m!7633266 () Bool)

(assert (=> b!6924005 m!7633266))

(assert (=> b!6924003 m!7633266))

(assert (=> bm!629331 m!7632832))

(assert (=> b!6923998 m!7633266))

(assert (=> b!6923998 m!7633266))

(declare-fun m!7633268 () Bool)

(assert (=> b!6923998 m!7633268))

(assert (=> b!6923998 m!7633260))

(assert (=> b!6923998 m!7633268))

(assert (=> b!6923998 m!7633260))

(declare-fun m!7633270 () Bool)

(assert (=> b!6923998 m!7633270))

(assert (=> b!6923207 d!2165031))

(declare-fun d!2165033 () Bool)

(assert (=> d!2165033 (= (Exists!3925 lambda!393685) (choose!51552 lambda!393685))))

(declare-fun bs!1848128 () Bool)

(assert (= bs!1848128 d!2165033))

(declare-fun m!7633272 () Bool)

(assert (=> bs!1848128 m!7633272))

(assert (=> b!6923207 d!2165033))

(declare-fun d!2165035 () Bool)

(assert (=> d!2165035 (= (Exists!3925 lambda!393686) (choose!51552 lambda!393686))))

(declare-fun bs!1848129 () Bool)

(assert (= bs!1848129 d!2165035))

(declare-fun m!7633274 () Bool)

(assert (=> bs!1848129 m!7633274))

(assert (=> b!6923207 d!2165035))

(declare-fun b!6924015 () Bool)

(declare-fun e!4167044 () Bool)

(declare-fun e!4167045 () Bool)

(assert (=> b!6924015 (= e!4167044 e!4167045)))

(declare-fun res!2823538 () Bool)

(assert (=> b!6924015 (=> (not res!2823538) (not e!4167045))))

(assert (=> b!6924015 (= res!2823538 (not ((_ is Nil!66552) (_1!37083 lt!2471065))))))

(declare-fun b!6924018 () Bool)

(declare-fun e!4167043 () Bool)

(assert (=> b!6924018 (= e!4167043 (>= (size!40777 (_1!37083 lt!2471065)) (size!40777 Nil!66552)))))

(declare-fun b!6924016 () Bool)

(declare-fun res!2823537 () Bool)

(assert (=> b!6924016 (=> (not res!2823537) (not e!4167045))))

(assert (=> b!6924016 (= res!2823537 (= (head!13880 Nil!66552) (head!13880 (_1!37083 lt!2471065))))))

(declare-fun b!6924017 () Bool)

(assert (=> b!6924017 (= e!4167045 (isPrefix!5808 (tail!12932 Nil!66552) (tail!12932 (_1!37083 lt!2471065))))))

(declare-fun d!2165037 () Bool)

(assert (=> d!2165037 e!4167043))

(declare-fun res!2823539 () Bool)

(assert (=> d!2165037 (=> res!2823539 e!4167043)))

(declare-fun lt!2471186 () Bool)

(assert (=> d!2165037 (= res!2823539 (not lt!2471186))))

(assert (=> d!2165037 (= lt!2471186 e!4167044)))

(declare-fun res!2823540 () Bool)

(assert (=> d!2165037 (=> res!2823540 e!4167044)))

(assert (=> d!2165037 (= res!2823540 ((_ is Nil!66552) Nil!66552))))

(assert (=> d!2165037 (= (isPrefix!5808 Nil!66552 (_1!37083 lt!2471065)) lt!2471186)))

(assert (= (and d!2165037 (not res!2823540)) b!6924015))

(assert (= (and b!6924015 res!2823538) b!6924016))

(assert (= (and b!6924016 res!2823537) b!6924017))

(assert (= (and d!2165037 (not res!2823539)) b!6924018))

(assert (=> b!6924018 m!7632666))

(declare-fun m!7633276 () Bool)

(assert (=> b!6924018 m!7633276))

(declare-fun m!7633278 () Bool)

(assert (=> b!6924016 m!7633278))

(assert (=> b!6924016 m!7633266))

(declare-fun m!7633280 () Bool)

(assert (=> b!6924017 m!7633280))

(assert (=> b!6924017 m!7633260))

(assert (=> b!6924017 m!7633280))

(assert (=> b!6924017 m!7633260))

(declare-fun m!7633282 () Bool)

(assert (=> b!6924017 m!7633282))

(assert (=> b!6923192 d!2165037))

(declare-fun b!6924019 () Bool)

(declare-fun res!2823543 () Bool)

(declare-fun e!4167051 () Bool)

(assert (=> b!6924019 (=> (not res!2823543) (not e!4167051))))

(assert (=> b!6924019 (= res!2823543 (isEmpty!38806 (tail!12932 (_2!37083 lt!2471065))))))

(declare-fun b!6924020 () Bool)

(declare-fun res!2823545 () Bool)

(declare-fun e!4167047 () Bool)

(assert (=> b!6924020 (=> res!2823545 e!4167047)))

(assert (=> b!6924020 (= res!2823545 (not (isEmpty!38806 (tail!12932 (_2!37083 lt!2471065)))))))

(declare-fun b!6924021 () Bool)

(declare-fun res!2823547 () Bool)

(assert (=> b!6924021 (=> (not res!2823547) (not e!4167051))))

(declare-fun call!629337 () Bool)

(assert (=> b!6924021 (= res!2823547 (not call!629337))))

(declare-fun b!6924022 () Bool)

(declare-fun e!4167046 () Bool)

(declare-fun e!4167049 () Bool)

(assert (=> b!6924022 (= e!4167046 e!4167049)))

(declare-fun res!2823546 () Bool)

(assert (=> b!6924022 (=> (not res!2823546) (not e!4167049))))

(declare-fun lt!2471187 () Bool)

(assert (=> b!6924022 (= res!2823546 (not lt!2471187))))

(declare-fun b!6924023 () Bool)

(assert (=> b!6924023 (= e!4167049 e!4167047)))

(declare-fun res!2823548 () Bool)

(assert (=> b!6924023 (=> res!2823548 e!4167047)))

(assert (=> b!6924023 (= res!2823548 call!629337)))

(declare-fun d!2165039 () Bool)

(declare-fun e!4167050 () Bool)

(assert (=> d!2165039 e!4167050))

(declare-fun c!1285402 () Bool)

(assert (=> d!2165039 (= c!1285402 ((_ is EmptyExpr!16923) r2!6280))))

(declare-fun e!4167048 () Bool)

(assert (=> d!2165039 (= lt!2471187 e!4167048)))

(declare-fun c!1285403 () Bool)

(assert (=> d!2165039 (= c!1285403 (isEmpty!38806 (_2!37083 lt!2471065)))))

(assert (=> d!2165039 (validRegex!8629 r2!6280)))

(assert (=> d!2165039 (= (matchR!9062 r2!6280 (_2!37083 lt!2471065)) lt!2471187)))

(declare-fun b!6924024 () Bool)

(assert (=> b!6924024 (= e!4167048 (matchR!9062 (derivativeStep!5427 r2!6280 (head!13880 (_2!37083 lt!2471065))) (tail!12932 (_2!37083 lt!2471065))))))

(declare-fun b!6924025 () Bool)

(declare-fun e!4167052 () Bool)

(assert (=> b!6924025 (= e!4167050 e!4167052)))

(declare-fun c!1285401 () Bool)

(assert (=> b!6924025 (= c!1285401 ((_ is EmptyLang!16923) r2!6280))))

(declare-fun b!6924026 () Bool)

(declare-fun res!2823541 () Bool)

(assert (=> b!6924026 (=> res!2823541 e!4167046)))

(assert (=> b!6924026 (= res!2823541 (not ((_ is ElementMatch!16923) r2!6280)))))

(assert (=> b!6924026 (= e!4167052 e!4167046)))

(declare-fun b!6924027 () Bool)

(assert (=> b!6924027 (= e!4167050 (= lt!2471187 call!629337))))

(declare-fun b!6924028 () Bool)

(declare-fun res!2823544 () Bool)

(assert (=> b!6924028 (=> res!2823544 e!4167046)))

(assert (=> b!6924028 (= res!2823544 e!4167051)))

(declare-fun res!2823542 () Bool)

(assert (=> b!6924028 (=> (not res!2823542) (not e!4167051))))

(assert (=> b!6924028 (= res!2823542 lt!2471187)))

(declare-fun b!6924029 () Bool)

(assert (=> b!6924029 (= e!4167051 (= (head!13880 (_2!37083 lt!2471065)) (c!1285229 r2!6280)))))

(declare-fun b!6924030 () Bool)

(assert (=> b!6924030 (= e!4167052 (not lt!2471187))))

(declare-fun b!6924031 () Bool)

(assert (=> b!6924031 (= e!4167047 (not (= (head!13880 (_2!37083 lt!2471065)) (c!1285229 r2!6280))))))

(declare-fun bm!629332 () Bool)

(assert (=> bm!629332 (= call!629337 (isEmpty!38806 (_2!37083 lt!2471065)))))

(declare-fun b!6924032 () Bool)

(assert (=> b!6924032 (= e!4167048 (nullable!6752 r2!6280))))

(assert (= (and d!2165039 c!1285403) b!6924032))

(assert (= (and d!2165039 (not c!1285403)) b!6924024))

(assert (= (and d!2165039 c!1285402) b!6924027))

(assert (= (and d!2165039 (not c!1285402)) b!6924025))

(assert (= (and b!6924025 c!1285401) b!6924030))

(assert (= (and b!6924025 (not c!1285401)) b!6924026))

(assert (= (and b!6924026 (not res!2823541)) b!6924028))

(assert (= (and b!6924028 res!2823542) b!6924021))

(assert (= (and b!6924021 res!2823547) b!6924019))

(assert (= (and b!6924019 res!2823543) b!6924029))

(assert (= (and b!6924028 (not res!2823544)) b!6924022))

(assert (= (and b!6924022 res!2823546) b!6924023))

(assert (= (and b!6924023 (not res!2823548)) b!6924020))

(assert (= (and b!6924020 (not res!2823545)) b!6924031))

(assert (= (or b!6924027 b!6924021 b!6924023) bm!629332))

(declare-fun m!7633284 () Bool)

(assert (=> b!6924020 m!7633284))

(assert (=> b!6924020 m!7633284))

(declare-fun m!7633286 () Bool)

(assert (=> b!6924020 m!7633286))

(assert (=> b!6924019 m!7633284))

(assert (=> b!6924019 m!7633284))

(assert (=> b!6924019 m!7633286))

(assert (=> d!2165039 m!7632772))

(assert (=> d!2165039 m!7632532))

(declare-fun m!7633288 () Bool)

(assert (=> b!6924032 m!7633288))

(declare-fun m!7633290 () Bool)

(assert (=> b!6924031 m!7633290))

(assert (=> b!6924029 m!7633290))

(assert (=> bm!629332 m!7632772))

(assert (=> b!6924024 m!7633290))

(assert (=> b!6924024 m!7633290))

(declare-fun m!7633292 () Bool)

(assert (=> b!6924024 m!7633292))

(assert (=> b!6924024 m!7633284))

(assert (=> b!6924024 m!7633292))

(assert (=> b!6924024 m!7633284))

(declare-fun m!7633294 () Bool)

(assert (=> b!6924024 m!7633294))

(assert (=> b!6923204 d!2165039))

(declare-fun e!4167055 () Bool)

(assert (=> b!6923195 (= tp!1908347 e!4167055)))

(declare-fun b!6924045 () Bool)

(declare-fun tp!1908455 () Bool)

(assert (=> b!6924045 (= e!4167055 tp!1908455)))

(declare-fun b!6924043 () Bool)

(assert (=> b!6924043 (= e!4167055 tp_is_empty!43071)))

(declare-fun b!6924046 () Bool)

(declare-fun tp!1908458 () Bool)

(declare-fun tp!1908456 () Bool)

(assert (=> b!6924046 (= e!4167055 (and tp!1908458 tp!1908456))))

(declare-fun b!6924044 () Bool)

(declare-fun tp!1908457 () Bool)

(declare-fun tp!1908454 () Bool)

(assert (=> b!6924044 (= e!4167055 (and tp!1908457 tp!1908454))))

(assert (= (and b!6923195 ((_ is ElementMatch!16923) (regOne!34359 r2!6280))) b!6924043))

(assert (= (and b!6923195 ((_ is Concat!25768) (regOne!34359 r2!6280))) b!6924044))

(assert (= (and b!6923195 ((_ is Star!16923) (regOne!34359 r2!6280))) b!6924045))

(assert (= (and b!6923195 ((_ is Union!16923) (regOne!34359 r2!6280))) b!6924046))

(declare-fun e!4167056 () Bool)

(assert (=> b!6923195 (= tp!1908348 e!4167056)))

(declare-fun b!6924049 () Bool)

(declare-fun tp!1908460 () Bool)

(assert (=> b!6924049 (= e!4167056 tp!1908460)))

(declare-fun b!6924047 () Bool)

(assert (=> b!6924047 (= e!4167056 tp_is_empty!43071)))

(declare-fun b!6924050 () Bool)

(declare-fun tp!1908463 () Bool)

(declare-fun tp!1908461 () Bool)

(assert (=> b!6924050 (= e!4167056 (and tp!1908463 tp!1908461))))

(declare-fun b!6924048 () Bool)

(declare-fun tp!1908462 () Bool)

(declare-fun tp!1908459 () Bool)

(assert (=> b!6924048 (= e!4167056 (and tp!1908462 tp!1908459))))

(assert (= (and b!6923195 ((_ is ElementMatch!16923) (regTwo!34359 r2!6280))) b!6924047))

(assert (= (and b!6923195 ((_ is Concat!25768) (regTwo!34359 r2!6280))) b!6924048))

(assert (= (and b!6923195 ((_ is Star!16923) (regTwo!34359 r2!6280))) b!6924049))

(assert (= (and b!6923195 ((_ is Union!16923) (regTwo!34359 r2!6280))) b!6924050))

(declare-fun e!4167057 () Bool)

(assert (=> b!6923189 (= tp!1908351 e!4167057)))

(declare-fun b!6924053 () Bool)

(declare-fun tp!1908465 () Bool)

(assert (=> b!6924053 (= e!4167057 tp!1908465)))

(declare-fun b!6924051 () Bool)

(assert (=> b!6924051 (= e!4167057 tp_is_empty!43071)))

(declare-fun b!6924054 () Bool)

(declare-fun tp!1908468 () Bool)

(declare-fun tp!1908466 () Bool)

(assert (=> b!6924054 (= e!4167057 (and tp!1908468 tp!1908466))))

(declare-fun b!6924052 () Bool)

(declare-fun tp!1908467 () Bool)

(declare-fun tp!1908464 () Bool)

(assert (=> b!6924052 (= e!4167057 (and tp!1908467 tp!1908464))))

(assert (= (and b!6923189 ((_ is ElementMatch!16923) (reg!17252 r3!135))) b!6924051))

(assert (= (and b!6923189 ((_ is Concat!25768) (reg!17252 r3!135))) b!6924052))

(assert (= (and b!6923189 ((_ is Star!16923) (reg!17252 r3!135))) b!6924053))

(assert (= (and b!6923189 ((_ is Union!16923) (reg!17252 r3!135))) b!6924054))

(declare-fun e!4167058 () Bool)

(assert (=> b!6923196 (= tp!1908340 e!4167058)))

(declare-fun b!6924057 () Bool)

(declare-fun tp!1908470 () Bool)

(assert (=> b!6924057 (= e!4167058 tp!1908470)))

(declare-fun b!6924055 () Bool)

(assert (=> b!6924055 (= e!4167058 tp_is_empty!43071)))

(declare-fun b!6924058 () Bool)

(declare-fun tp!1908473 () Bool)

(declare-fun tp!1908471 () Bool)

(assert (=> b!6924058 (= e!4167058 (and tp!1908473 tp!1908471))))

(declare-fun b!6924056 () Bool)

(declare-fun tp!1908472 () Bool)

(declare-fun tp!1908469 () Bool)

(assert (=> b!6924056 (= e!4167058 (and tp!1908472 tp!1908469))))

(assert (= (and b!6923196 ((_ is ElementMatch!16923) (regOne!34359 r3!135))) b!6924055))

(assert (= (and b!6923196 ((_ is Concat!25768) (regOne!34359 r3!135))) b!6924056))

(assert (= (and b!6923196 ((_ is Star!16923) (regOne!34359 r3!135))) b!6924057))

(assert (= (and b!6923196 ((_ is Union!16923) (regOne!34359 r3!135))) b!6924058))

(declare-fun e!4167059 () Bool)

(assert (=> b!6923196 (= tp!1908355 e!4167059)))

(declare-fun b!6924061 () Bool)

(declare-fun tp!1908475 () Bool)

(assert (=> b!6924061 (= e!4167059 tp!1908475)))

(declare-fun b!6924059 () Bool)

(assert (=> b!6924059 (= e!4167059 tp_is_empty!43071)))

(declare-fun b!6924062 () Bool)

(declare-fun tp!1908478 () Bool)

(declare-fun tp!1908476 () Bool)

(assert (=> b!6924062 (= e!4167059 (and tp!1908478 tp!1908476))))

(declare-fun b!6924060 () Bool)

(declare-fun tp!1908477 () Bool)

(declare-fun tp!1908474 () Bool)

(assert (=> b!6924060 (= e!4167059 (and tp!1908477 tp!1908474))))

(assert (= (and b!6923196 ((_ is ElementMatch!16923) (regTwo!34359 r3!135))) b!6924059))

(assert (= (and b!6923196 ((_ is Concat!25768) (regTwo!34359 r3!135))) b!6924060))

(assert (= (and b!6923196 ((_ is Star!16923) (regTwo!34359 r3!135))) b!6924061))

(assert (= (and b!6923196 ((_ is Union!16923) (regTwo!34359 r3!135))) b!6924062))

(declare-fun e!4167060 () Bool)

(assert (=> b!6923201 (= tp!1908344 e!4167060)))

(declare-fun b!6924065 () Bool)

(declare-fun tp!1908480 () Bool)

(assert (=> b!6924065 (= e!4167060 tp!1908480)))

(declare-fun b!6924063 () Bool)

(assert (=> b!6924063 (= e!4167060 tp_is_empty!43071)))

(declare-fun b!6924066 () Bool)

(declare-fun tp!1908483 () Bool)

(declare-fun tp!1908481 () Bool)

(assert (=> b!6924066 (= e!4167060 (and tp!1908483 tp!1908481))))

(declare-fun b!6924064 () Bool)

(declare-fun tp!1908482 () Bool)

(declare-fun tp!1908479 () Bool)

(assert (=> b!6924064 (= e!4167060 (and tp!1908482 tp!1908479))))

(assert (= (and b!6923201 ((_ is ElementMatch!16923) (regOne!34358 r2!6280))) b!6924063))

(assert (= (and b!6923201 ((_ is Concat!25768) (regOne!34358 r2!6280))) b!6924064))

(assert (= (and b!6923201 ((_ is Star!16923) (regOne!34358 r2!6280))) b!6924065))

(assert (= (and b!6923201 ((_ is Union!16923) (regOne!34358 r2!6280))) b!6924066))

(declare-fun e!4167061 () Bool)

(assert (=> b!6923201 (= tp!1908342 e!4167061)))

(declare-fun b!6924069 () Bool)

(declare-fun tp!1908485 () Bool)

(assert (=> b!6924069 (= e!4167061 tp!1908485)))

(declare-fun b!6924067 () Bool)

(assert (=> b!6924067 (= e!4167061 tp_is_empty!43071)))

(declare-fun b!6924070 () Bool)

(declare-fun tp!1908488 () Bool)

(declare-fun tp!1908486 () Bool)

(assert (=> b!6924070 (= e!4167061 (and tp!1908488 tp!1908486))))

(declare-fun b!6924068 () Bool)

(declare-fun tp!1908487 () Bool)

(declare-fun tp!1908484 () Bool)

(assert (=> b!6924068 (= e!4167061 (and tp!1908487 tp!1908484))))

(assert (= (and b!6923201 ((_ is ElementMatch!16923) (regTwo!34358 r2!6280))) b!6924067))

(assert (= (and b!6923201 ((_ is Concat!25768) (regTwo!34358 r2!6280))) b!6924068))

(assert (= (and b!6923201 ((_ is Star!16923) (regTwo!34358 r2!6280))) b!6924069))

(assert (= (and b!6923201 ((_ is Union!16923) (regTwo!34358 r2!6280))) b!6924070))

(declare-fun e!4167062 () Bool)

(assert (=> b!6923206 (= tp!1908350 e!4167062)))

(declare-fun b!6924073 () Bool)

(declare-fun tp!1908490 () Bool)

(assert (=> b!6924073 (= e!4167062 tp!1908490)))

(declare-fun b!6924071 () Bool)

(assert (=> b!6924071 (= e!4167062 tp_is_empty!43071)))

(declare-fun b!6924074 () Bool)

(declare-fun tp!1908493 () Bool)

(declare-fun tp!1908491 () Bool)

(assert (=> b!6924074 (= e!4167062 (and tp!1908493 tp!1908491))))

(declare-fun b!6924072 () Bool)

(declare-fun tp!1908492 () Bool)

(declare-fun tp!1908489 () Bool)

(assert (=> b!6924072 (= e!4167062 (and tp!1908492 tp!1908489))))

(assert (= (and b!6923206 ((_ is ElementMatch!16923) (regOne!34358 r1!6342))) b!6924071))

(assert (= (and b!6923206 ((_ is Concat!25768) (regOne!34358 r1!6342))) b!6924072))

(assert (= (and b!6923206 ((_ is Star!16923) (regOne!34358 r1!6342))) b!6924073))

(assert (= (and b!6923206 ((_ is Union!16923) (regOne!34358 r1!6342))) b!6924074))

(declare-fun e!4167063 () Bool)

(assert (=> b!6923206 (= tp!1908352 e!4167063)))

(declare-fun b!6924077 () Bool)

(declare-fun tp!1908495 () Bool)

(assert (=> b!6924077 (= e!4167063 tp!1908495)))

(declare-fun b!6924075 () Bool)

(assert (=> b!6924075 (= e!4167063 tp_is_empty!43071)))

(declare-fun b!6924078 () Bool)

(declare-fun tp!1908498 () Bool)

(declare-fun tp!1908496 () Bool)

(assert (=> b!6924078 (= e!4167063 (and tp!1908498 tp!1908496))))

(declare-fun b!6924076 () Bool)

(declare-fun tp!1908497 () Bool)

(declare-fun tp!1908494 () Bool)

(assert (=> b!6924076 (= e!4167063 (and tp!1908497 tp!1908494))))

(assert (= (and b!6923206 ((_ is ElementMatch!16923) (regTwo!34358 r1!6342))) b!6924075))

(assert (= (and b!6923206 ((_ is Concat!25768) (regTwo!34358 r1!6342))) b!6924076))

(assert (= (and b!6923206 ((_ is Star!16923) (regTwo!34358 r1!6342))) b!6924077))

(assert (= (and b!6923206 ((_ is Union!16923) (regTwo!34358 r1!6342))) b!6924078))

(declare-fun e!4167064 () Bool)

(assert (=> b!6923202 (= tp!1908346 e!4167064)))

(declare-fun b!6924081 () Bool)

(declare-fun tp!1908500 () Bool)

(assert (=> b!6924081 (= e!4167064 tp!1908500)))

(declare-fun b!6924079 () Bool)

(assert (=> b!6924079 (= e!4167064 tp_is_empty!43071)))

(declare-fun b!6924082 () Bool)

(declare-fun tp!1908503 () Bool)

(declare-fun tp!1908501 () Bool)

(assert (=> b!6924082 (= e!4167064 (and tp!1908503 tp!1908501))))

(declare-fun b!6924080 () Bool)

(declare-fun tp!1908502 () Bool)

(declare-fun tp!1908499 () Bool)

(assert (=> b!6924080 (= e!4167064 (and tp!1908502 tp!1908499))))

(assert (= (and b!6923202 ((_ is ElementMatch!16923) (reg!17252 r1!6342))) b!6924079))

(assert (= (and b!6923202 ((_ is Concat!25768) (reg!17252 r1!6342))) b!6924080))

(assert (= (and b!6923202 ((_ is Star!16923) (reg!17252 r1!6342))) b!6924081))

(assert (= (and b!6923202 ((_ is Union!16923) (reg!17252 r1!6342))) b!6924082))

(declare-fun e!4167065 () Bool)

(assert (=> b!6923186 (= tp!1908353 e!4167065)))

(declare-fun b!6924085 () Bool)

(declare-fun tp!1908505 () Bool)

(assert (=> b!6924085 (= e!4167065 tp!1908505)))

(declare-fun b!6924083 () Bool)

(assert (=> b!6924083 (= e!4167065 tp_is_empty!43071)))

(declare-fun b!6924086 () Bool)

(declare-fun tp!1908508 () Bool)

(declare-fun tp!1908506 () Bool)

(assert (=> b!6924086 (= e!4167065 (and tp!1908508 tp!1908506))))

(declare-fun b!6924084 () Bool)

(declare-fun tp!1908507 () Bool)

(declare-fun tp!1908504 () Bool)

(assert (=> b!6924084 (= e!4167065 (and tp!1908507 tp!1908504))))

(assert (= (and b!6923186 ((_ is ElementMatch!16923) (regOne!34358 r3!135))) b!6924083))

(assert (= (and b!6923186 ((_ is Concat!25768) (regOne!34358 r3!135))) b!6924084))

(assert (= (and b!6923186 ((_ is Star!16923) (regOne!34358 r3!135))) b!6924085))

(assert (= (and b!6923186 ((_ is Union!16923) (regOne!34358 r3!135))) b!6924086))

(declare-fun e!4167066 () Bool)

(assert (=> b!6923186 (= tp!1908345 e!4167066)))

(declare-fun b!6924089 () Bool)

(declare-fun tp!1908510 () Bool)

(assert (=> b!6924089 (= e!4167066 tp!1908510)))

(declare-fun b!6924087 () Bool)

(assert (=> b!6924087 (= e!4167066 tp_is_empty!43071)))

(declare-fun b!6924090 () Bool)

(declare-fun tp!1908513 () Bool)

(declare-fun tp!1908511 () Bool)

(assert (=> b!6924090 (= e!4167066 (and tp!1908513 tp!1908511))))

(declare-fun b!6924088 () Bool)

(declare-fun tp!1908512 () Bool)

(declare-fun tp!1908509 () Bool)

(assert (=> b!6924088 (= e!4167066 (and tp!1908512 tp!1908509))))

(assert (= (and b!6923186 ((_ is ElementMatch!16923) (regTwo!34358 r3!135))) b!6924087))

(assert (= (and b!6923186 ((_ is Concat!25768) (regTwo!34358 r3!135))) b!6924088))

(assert (= (and b!6923186 ((_ is Star!16923) (regTwo!34358 r3!135))) b!6924089))

(assert (= (and b!6923186 ((_ is Union!16923) (regTwo!34358 r3!135))) b!6924090))

(declare-fun e!4167067 () Bool)

(assert (=> b!6923199 (= tp!1908341 e!4167067)))

(declare-fun b!6924093 () Bool)

(declare-fun tp!1908515 () Bool)

(assert (=> b!6924093 (= e!4167067 tp!1908515)))

(declare-fun b!6924091 () Bool)

(assert (=> b!6924091 (= e!4167067 tp_is_empty!43071)))

(declare-fun b!6924094 () Bool)

(declare-fun tp!1908518 () Bool)

(declare-fun tp!1908516 () Bool)

(assert (=> b!6924094 (= e!4167067 (and tp!1908518 tp!1908516))))

(declare-fun b!6924092 () Bool)

(declare-fun tp!1908517 () Bool)

(declare-fun tp!1908514 () Bool)

(assert (=> b!6924092 (= e!4167067 (and tp!1908517 tp!1908514))))

(assert (= (and b!6923199 ((_ is ElementMatch!16923) (regOne!34359 r1!6342))) b!6924091))

(assert (= (and b!6923199 ((_ is Concat!25768) (regOne!34359 r1!6342))) b!6924092))

(assert (= (and b!6923199 ((_ is Star!16923) (regOne!34359 r1!6342))) b!6924093))

(assert (= (and b!6923199 ((_ is Union!16923) (regOne!34359 r1!6342))) b!6924094))

(declare-fun e!4167068 () Bool)

(assert (=> b!6923199 (= tp!1908349 e!4167068)))

(declare-fun b!6924097 () Bool)

(declare-fun tp!1908520 () Bool)

(assert (=> b!6924097 (= e!4167068 tp!1908520)))

(declare-fun b!6924095 () Bool)

(assert (=> b!6924095 (= e!4167068 tp_is_empty!43071)))

(declare-fun b!6924098 () Bool)

(declare-fun tp!1908523 () Bool)

(declare-fun tp!1908521 () Bool)

(assert (=> b!6924098 (= e!4167068 (and tp!1908523 tp!1908521))))

(declare-fun b!6924096 () Bool)

(declare-fun tp!1908522 () Bool)

(declare-fun tp!1908519 () Bool)

(assert (=> b!6924096 (= e!4167068 (and tp!1908522 tp!1908519))))

(assert (= (and b!6923199 ((_ is ElementMatch!16923) (regTwo!34359 r1!6342))) b!6924095))

(assert (= (and b!6923199 ((_ is Concat!25768) (regTwo!34359 r1!6342))) b!6924096))

(assert (= (and b!6923199 ((_ is Star!16923) (regTwo!34359 r1!6342))) b!6924097))

(assert (= (and b!6923199 ((_ is Union!16923) (regTwo!34359 r1!6342))) b!6924098))

(declare-fun b!6924103 () Bool)

(declare-fun e!4167071 () Bool)

(declare-fun tp!1908526 () Bool)

(assert (=> b!6924103 (= e!4167071 (and tp_is_empty!43071 tp!1908526))))

(assert (=> b!6923188 (= tp!1908354 e!4167071)))

(assert (= (and b!6923188 ((_ is Cons!66552) (t!380419 s!14361))) b!6924103))

(declare-fun e!4167072 () Bool)

(assert (=> b!6923209 (= tp!1908343 e!4167072)))

(declare-fun b!6924106 () Bool)

(declare-fun tp!1908528 () Bool)

(assert (=> b!6924106 (= e!4167072 tp!1908528)))

(declare-fun b!6924104 () Bool)

(assert (=> b!6924104 (= e!4167072 tp_is_empty!43071)))

(declare-fun b!6924107 () Bool)

(declare-fun tp!1908531 () Bool)

(declare-fun tp!1908529 () Bool)

(assert (=> b!6924107 (= e!4167072 (and tp!1908531 tp!1908529))))

(declare-fun b!6924105 () Bool)

(declare-fun tp!1908530 () Bool)

(declare-fun tp!1908527 () Bool)

(assert (=> b!6924105 (= e!4167072 (and tp!1908530 tp!1908527))))

(assert (= (and b!6923209 ((_ is ElementMatch!16923) (reg!17252 r2!6280))) b!6924104))

(assert (= (and b!6923209 ((_ is Concat!25768) (reg!17252 r2!6280))) b!6924105))

(assert (= (and b!6923209 ((_ is Star!16923) (reg!17252 r2!6280))) b!6924106))

(assert (= (and b!6923209 ((_ is Union!16923) (reg!17252 r2!6280))) b!6924107))

(check-sat (not b!6923981) (not b!6923913) (not b!6924018) (not bm!629331) (not b!6923720) (not b!6924094) (not b!6923440) (not b!6924020) (not b!6924005) (not b!6923988) (not b!6923721) (not b!6923943) (not b!6924092) (not b!6924031) (not b!6924097) (not b!6924058) (not b!6923979) (not bm!629263) (not b!6924098) (not d!2164903) (not b!6923864) (not d!2165039) (not b!6923890) (not b!6923971) (not bm!629302) (not b!6924064) (not bm!629292) (not b!6924017) (not b!6923876) (not bm!629327) (not bm!629328) (not d!2165005) (not b!6923915) (not b!6923861) (not b!6923967) (not b!6923984) (not d!2164959) (not b!6923483) (not bm!629321) (not bm!629324) (not d!2164963) (not b!6923924) (not b!6923761) (not d!2164889) (not bm!629315) (not bm!629329) (not b!6923488) (not b!6923903) (not b!6923992) (not d!2164971) (not b!6924061) (not b!6924024) (not b!6923973) (not bm!629273) (not b!6924096) (not bm!629319) (not b!6923951) (not b!6923617) (not b!6924103) (not b!6923482) (not b!6923723) (not b!6923889) (not b!6923963) (not b!6923998) (not bm!629332) (not bm!629318) (not b!6924085) (not bm!629313) (not d!2164969) (not d!2164985) (not b!6923986) (not b!6924107) (not d!2165007) (not d!2165023) (not b!6923719) (not b!6923725) (not b!6924081) (not b!6924019) (not b!6923946) (not bm!629326) (not b!6924074) (not d!2164999) (not b!6924088) (not b!6923607) (not b!6923812) (not b!6924045) (not b!6923975) (not b!6924054) (not b!6923899) (not b!6924089) (not b!6924060) (not b!6924093) (not bm!629310) (not b!6924016) (not b!6924072) (not b!6924006) (not b!6923881) (not d!2164853) (not b!6924068) (not d!2165019) (not d!2164887) (not b!6923444) (not bm!629316) (not d!2164973) (not b!6923759) (not b!6924056) (not b!6923904) (not b!6924080) (not b!6924032) (not b!6923327) (not b!6923865) (not b!6923956) (not b!6923974) (not d!2164983) (not b!6923916) (not b!6923958) (not bm!629314) (not b!6924105) (not b!6923959) (not b!6924050) (not b!6924090) (not b!6923901) (not b!6923947) (not d!2164987) (not b!6923990) (not d!2165029) (not bm!629301) (not b!6924046) (not d!2165031) (not d!2165035) (not d!2165027) (not b!6923877) (not b!6924077) (not b!6923492) (not b!6924053) (not b!6924073) (not bm!629317) (not b!6923894) (not bm!629274) (not b!6923993) (not b!6923908) (not d!2164855) (not b!6924044) (not b!6923326) (not b!6923885) (not b!6924057) (not b!6923994) (not b!6923852) (not b!6924070) (not d!2165033) (not bm!629320) (not b!6924078) (not b!6924076) (not b!6924106) (not b!6923612) (not b!6924049) (not d!2164967) (not b!6923920) (not d!2164979) (not bm!629311) (not b!6923608) (not bm!629330) (not d!2164991) (not b!6923869) (not d!2165009) (not d!2164939) (not d!2165015) (not d!2165003) (not d!2165011) (not b!6923816) (not b!6923620) (not d!2165021) (not b!6924003) (not b!6923619) (not b!6924066) (not b!6924052) (not b!6924062) (not b!6923987) (not d!2164941) (not d!2164961) (not b!6923977) (not b!6924065) (not d!2164997) (not b!6924082) (not b!6923874) (not b!6924069) (not d!2165017) (not b!6923717) (not b!6923902) (not b!6924029) (not b!6924084) (not bm!629323) (not b!6924048) (not b!6923934) tp_is_empty!43071 (not bm!629264) (not b!6924086) (not b!6923982))
(check-sat)
