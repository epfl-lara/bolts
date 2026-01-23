; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664606 () Bool)

(assert start!664606)

(declare-fun b!6898569 () Bool)

(assert (=> b!6898569 true))

(assert (=> b!6898569 true))

(assert (=> b!6898569 true))

(declare-fun lambda!391380 () Int)

(declare-fun lambda!391379 () Int)

(assert (=> b!6898569 (not (= lambda!391380 lambda!391379))))

(assert (=> b!6898569 true))

(assert (=> b!6898569 true))

(assert (=> b!6898569 true))

(declare-fun bs!1841179 () Bool)

(declare-fun b!6898564 () Bool)

(assert (= bs!1841179 (and b!6898564 b!6898569)))

(declare-datatypes ((C!33976 0))(
  ( (C!33977 (val!26690 Int)) )
))
(declare-datatypes ((List!66610 0))(
  ( (Nil!66486) (Cons!66486 (h!72934 C!33976) (t!380353 List!66610)) )
))
(declare-datatypes ((tuple2!67440 0))(
  ( (tuple2!67441 (_1!37023 List!66610) (_2!37023 List!66610)) )
))
(declare-fun lt!2465172 () tuple2!67440)

(declare-datatypes ((Regex!16853 0))(
  ( (ElementMatch!16853 (c!1281929 C!33976)) (Concat!25698 (regOne!34218 Regex!16853) (regTwo!34218 Regex!16853)) (EmptyExpr!16853) (Star!16853 (reg!17182 Regex!16853)) (EmptyLang!16853) (Union!16853 (regOne!34219 Regex!16853) (regTwo!34219 Regex!16853)) )
))
(declare-fun r1!6342 () Regex!16853)

(declare-fun r3!135 () Regex!16853)

(declare-fun s!14361 () List!66610)

(declare-fun r2!6280 () Regex!16853)

(declare-fun lambda!391381 () Int)

(declare-fun lt!2465171 () Regex!16853)

(assert (=> bs!1841179 (= (and (= (_2!37023 lt!2465172) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465171)) (= lambda!391381 lambda!391379))))

(assert (=> bs!1841179 (not (= lambda!391381 lambda!391380))))

(assert (=> b!6898564 true))

(assert (=> b!6898564 true))

(assert (=> b!6898564 true))

(declare-fun lambda!391382 () Int)

(assert (=> bs!1841179 (not (= lambda!391382 lambda!391379))))

(assert (=> bs!1841179 (= (and (= (_2!37023 lt!2465172) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465171)) (= lambda!391382 lambda!391380))))

(assert (=> b!6898564 (not (= lambda!391382 lambda!391381))))

(assert (=> b!6898564 true))

(assert (=> b!6898564 true))

(assert (=> b!6898564 true))

(declare-fun bs!1841180 () Bool)

(declare-fun b!6898574 () Bool)

(assert (= bs!1841180 (and b!6898574 b!6898569)))

(declare-fun lt!2465175 () List!66610)

(declare-fun lambda!391383 () Int)

(assert (=> bs!1841180 (= (and (= lt!2465175 s!14361) (= r2!6280 lt!2465171)) (= lambda!391383 lambda!391379))))

(assert (=> bs!1841180 (not (= lambda!391383 lambda!391380))))

(declare-fun bs!1841181 () Bool)

(assert (= bs!1841181 (and b!6898574 b!6898564)))

(assert (=> bs!1841181 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391383 lambda!391381))))

(assert (=> bs!1841181 (not (= lambda!391383 lambda!391382))))

(assert (=> b!6898574 true))

(assert (=> b!6898574 true))

(assert (=> b!6898574 true))

(declare-fun lambda!391384 () Int)

(assert (=> b!6898574 (not (= lambda!391384 lambda!391383))))

(assert (=> bs!1841181 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391384 lambda!391382))))

(assert (=> bs!1841180 (not (= lambda!391384 lambda!391379))))

(assert (=> bs!1841180 (= (and (= lt!2465175 s!14361) (= r2!6280 lt!2465171)) (= lambda!391384 lambda!391380))))

(assert (=> bs!1841181 (not (= lambda!391384 lambda!391381))))

(assert (=> b!6898574 true))

(assert (=> b!6898574 true))

(assert (=> b!6898574 true))

(declare-fun b!6898557 () Bool)

(declare-fun e!4154787 () Bool)

(declare-fun tp_is_empty!42931 () Bool)

(declare-fun tp!1899280 () Bool)

(assert (=> b!6898557 (= e!4154787 (and tp_is_empty!42931 tp!1899280))))

(declare-fun b!6898558 () Bool)

(declare-fun e!4154789 () Bool)

(declare-fun tp!1899273 () Bool)

(declare-fun tp!1899272 () Bool)

(assert (=> b!6898558 (= e!4154789 (and tp!1899273 tp!1899272))))

(declare-fun b!6898559 () Bool)

(declare-fun e!4154795 () Bool)

(declare-fun tp!1899276 () Bool)

(declare-fun tp!1899284 () Bool)

(assert (=> b!6898559 (= e!4154795 (and tp!1899276 tp!1899284))))

(declare-fun b!6898560 () Bool)

(declare-fun tp!1899282 () Bool)

(assert (=> b!6898560 (= e!4154789 tp!1899282)))

(declare-fun b!6898561 () Bool)

(declare-fun e!4154791 () Bool)

(declare-fun tp!1899281 () Bool)

(declare-fun tp!1899287 () Bool)

(assert (=> b!6898561 (= e!4154791 (and tp!1899281 tp!1899287))))

(declare-fun b!6898562 () Bool)

(declare-fun tp!1899286 () Bool)

(declare-fun tp!1899274 () Bool)

(assert (=> b!6898562 (= e!4154789 (and tp!1899286 tp!1899274))))

(declare-fun b!6898563 () Bool)

(assert (=> b!6898563 (= e!4154795 tp_is_empty!42931)))

(declare-fun e!4154793 () Bool)

(declare-fun e!4154790 () Bool)

(assert (=> b!6898564 (= e!4154793 e!4154790)))

(declare-fun res!2812845 () Bool)

(assert (=> b!6898564 (=> res!2812845 e!4154790)))

(declare-fun lt!2465180 () tuple2!67440)

(declare-fun matchR!8998 (Regex!16853 List!66610) Bool)

(assert (=> b!6898564 (= res!2812845 (not (matchR!8998 r2!6280 (_1!37023 lt!2465180))))))

(declare-datatypes ((Option!16632 0))(
  ( (None!16631) (Some!16631 (v!52903 tuple2!67440)) )
))
(declare-fun lt!2465184 () Option!16632)

(declare-fun get!23230 (Option!16632) tuple2!67440)

(assert (=> b!6898564 (= lt!2465180 (get!23230 lt!2465184))))

(declare-fun Exists!3861 (Int) Bool)

(assert (=> b!6898564 (= (Exists!3861 lambda!391381) (Exists!3861 lambda!391382))))

(declare-datatypes ((Unit!160426 0))(
  ( (Unit!160427) )
))
(declare-fun lt!2465167 () Unit!160426)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2334 (Regex!16853 Regex!16853 List!66610) Unit!160426)

(assert (=> b!6898564 (= lt!2465167 (lemmaExistCutMatchRandMatchRSpecEquivalent!2334 r2!6280 r3!135 (_2!37023 lt!2465172)))))

(declare-fun isDefined!13335 (Option!16632) Bool)

(assert (=> b!6898564 (= (isDefined!13335 lt!2465184) (Exists!3861 lambda!391381))))

(declare-fun findConcatSeparation!3046 (Regex!16853 Regex!16853 List!66610 List!66610 List!66610) Option!16632)

(assert (=> b!6898564 (= lt!2465184 (findConcatSeparation!3046 r2!6280 r3!135 Nil!66486 (_2!37023 lt!2465172) (_2!37023 lt!2465172)))))

(declare-fun lt!2465178 () Unit!160426)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2808 (Regex!16853 Regex!16853 List!66610) Unit!160426)

(assert (=> b!6898564 (= lt!2465178 (lemmaFindConcatSeparationEquivalentToExists!2808 r2!6280 r3!135 (_2!37023 lt!2465172)))))

(declare-fun matchRSpec!3916 (Regex!16853 List!66610) Bool)

(assert (=> b!6898564 (matchRSpec!3916 lt!2465171 (_2!37023 lt!2465172))))

(declare-fun lt!2465192 () Unit!160426)

(declare-fun mainMatchTheorem!3916 (Regex!16853 List!66610) Unit!160426)

(assert (=> b!6898564 (= lt!2465192 (mainMatchTheorem!3916 lt!2465171 (_2!37023 lt!2465172)))))

(declare-fun b!6898565 () Bool)

(declare-fun res!2812850 () Bool)

(declare-fun e!4154796 () Bool)

(assert (=> b!6898565 (=> (not res!2812850) (not e!4154796))))

(declare-fun validRegex!8561 (Regex!16853) Bool)

(assert (=> b!6898565 (= res!2812850 (validRegex!8561 r2!6280))))

(declare-fun b!6898566 () Bool)

(declare-fun e!4154788 () Bool)

(assert (=> b!6898566 (= e!4154790 e!4154788)))

(declare-fun res!2812849 () Bool)

(assert (=> b!6898566 (=> res!2812849 e!4154788)))

(declare-fun lt!2465182 () List!66610)

(assert (=> b!6898566 (= res!2812849 (not (= lt!2465182 s!14361)))))

(declare-fun ++!14906 (List!66610 List!66610) List!66610)

(assert (=> b!6898566 (= lt!2465182 (++!14906 (_1!37023 lt!2465172) (++!14906 (_1!37023 lt!2465180) (_2!37023 lt!2465180))))))

(assert (=> b!6898566 (matchRSpec!3916 r3!135 (_2!37023 lt!2465180))))

(declare-fun lt!2465185 () Unit!160426)

(assert (=> b!6898566 (= lt!2465185 (mainMatchTheorem!3916 r3!135 (_2!37023 lt!2465180)))))

(assert (=> b!6898566 (matchRSpec!3916 r2!6280 (_1!37023 lt!2465180))))

(declare-fun lt!2465176 () Unit!160426)

(assert (=> b!6898566 (= lt!2465176 (mainMatchTheorem!3916 r2!6280 (_1!37023 lt!2465180)))))

(declare-fun b!6898567 () Bool)

(declare-fun tp!1899275 () Bool)

(assert (=> b!6898567 (= e!4154795 tp!1899275)))

(declare-fun b!6898568 () Bool)

(assert (=> b!6898568 (= e!4154791 tp_is_empty!42931)))

(declare-fun e!4154792 () Bool)

(assert (=> b!6898569 (= e!4154792 e!4154793)))

(declare-fun res!2812844 () Bool)

(assert (=> b!6898569 (=> res!2812844 e!4154793)))

(declare-fun lt!2465186 () Bool)

(assert (=> b!6898569 (= res!2812844 (not lt!2465186))))

(assert (=> b!6898569 (= lt!2465186 (matchRSpec!3916 r1!6342 (_1!37023 lt!2465172)))))

(assert (=> b!6898569 (= lt!2465186 (matchR!8998 r1!6342 (_1!37023 lt!2465172)))))

(declare-fun lt!2465170 () Unit!160426)

(assert (=> b!6898569 (= lt!2465170 (mainMatchTheorem!3916 r1!6342 (_1!37023 lt!2465172)))))

(declare-fun lt!2465183 () Option!16632)

(assert (=> b!6898569 (= lt!2465172 (get!23230 lt!2465183))))

(assert (=> b!6898569 (= (Exists!3861 lambda!391379) (Exists!3861 lambda!391380))))

(declare-fun lt!2465189 () Unit!160426)

(assert (=> b!6898569 (= lt!2465189 (lemmaExistCutMatchRandMatchRSpecEquivalent!2334 r1!6342 lt!2465171 s!14361))))

(assert (=> b!6898569 (Exists!3861 lambda!391379)))

(declare-fun lt!2465190 () Unit!160426)

(assert (=> b!6898569 (= lt!2465190 (lemmaFindConcatSeparationEquivalentToExists!2808 r1!6342 lt!2465171 s!14361))))

(declare-fun b!6898570 () Bool)

(assert (=> b!6898570 (= e!4154789 tp_is_empty!42931)))

(declare-fun b!6898572 () Bool)

(declare-fun e!4154794 () Bool)

(assert (=> b!6898572 (= e!4154796 (not e!4154794))))

(declare-fun res!2812848 () Bool)

(assert (=> b!6898572 (=> res!2812848 e!4154794)))

(declare-fun lt!2465169 () Bool)

(assert (=> b!6898572 (= res!2812848 lt!2465169)))

(declare-fun lt!2465177 () Regex!16853)

(assert (=> b!6898572 (= (matchR!8998 lt!2465177 s!14361) (matchRSpec!3916 lt!2465177 s!14361))))

(declare-fun lt!2465193 () Unit!160426)

(assert (=> b!6898572 (= lt!2465193 (mainMatchTheorem!3916 lt!2465177 s!14361))))

(declare-fun lt!2465168 () Regex!16853)

(assert (=> b!6898572 (= lt!2465169 (matchRSpec!3916 lt!2465168 s!14361))))

(assert (=> b!6898572 (= lt!2465169 (matchR!8998 lt!2465168 s!14361))))

(declare-fun lt!2465187 () Unit!160426)

(assert (=> b!6898572 (= lt!2465187 (mainMatchTheorem!3916 lt!2465168 s!14361))))

(assert (=> b!6898572 (= lt!2465177 (Concat!25698 r1!6342 lt!2465171))))

(assert (=> b!6898572 (= lt!2465171 (Concat!25698 r2!6280 r3!135))))

(declare-fun lt!2465173 () Regex!16853)

(assert (=> b!6898572 (= lt!2465168 (Concat!25698 lt!2465173 r3!135))))

(assert (=> b!6898572 (= lt!2465173 (Concat!25698 r1!6342 r2!6280))))

(declare-fun b!6898573 () Bool)

(declare-fun tp!1899283 () Bool)

(assert (=> b!6898573 (= e!4154791 tp!1899283)))

(assert (=> b!6898574 (= e!4154788 (validRegex!8561 lt!2465173))))

(declare-fun lt!2465181 () Bool)

(assert (=> b!6898574 lt!2465181))

(declare-fun lt!2465179 () Unit!160426)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!54 (Regex!16853 Regex!16853 List!66610 List!66610 List!66610 List!66610 List!66610) Unit!160426)

(assert (=> b!6898574 (= lt!2465179 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!54 r1!6342 r2!6280 (_1!37023 lt!2465172) (_1!37023 lt!2465180) lt!2465175 Nil!66486 lt!2465175))))

(assert (=> b!6898574 (= (Exists!3861 lambda!391383) (Exists!3861 lambda!391384))))

(declare-fun lt!2465191 () Unit!160426)

(assert (=> b!6898574 (= lt!2465191 (lemmaExistCutMatchRandMatchRSpecEquivalent!2334 r1!6342 r2!6280 lt!2465175))))

(assert (=> b!6898574 (= lt!2465181 (Exists!3861 lambda!391383))))

(assert (=> b!6898574 (= lt!2465181 (isDefined!13335 (findConcatSeparation!3046 r1!6342 r2!6280 Nil!66486 lt!2465175 lt!2465175)))))

(declare-fun lt!2465188 () Unit!160426)

(assert (=> b!6898574 (= lt!2465188 (lemmaFindConcatSeparationEquivalentToExists!2808 r1!6342 r2!6280 lt!2465175))))

(assert (=> b!6898574 (= (matchR!8998 lt!2465173 lt!2465175) (matchRSpec!3916 lt!2465173 lt!2465175))))

(declare-fun lt!2465174 () Unit!160426)

(assert (=> b!6898574 (= lt!2465174 (mainMatchTheorem!3916 lt!2465173 lt!2465175))))

(assert (=> b!6898574 (= (++!14906 lt!2465175 (_2!37023 lt!2465180)) lt!2465182)))

(assert (=> b!6898574 (= lt!2465175 (++!14906 (_1!37023 lt!2465172) (_1!37023 lt!2465180)))))

(declare-fun lt!2465166 () Unit!160426)

(declare-fun lemmaConcatAssociativity!2986 (List!66610 List!66610 List!66610) Unit!160426)

(assert (=> b!6898574 (= lt!2465166 (lemmaConcatAssociativity!2986 (_1!37023 lt!2465172) (_1!37023 lt!2465180) (_2!37023 lt!2465180)))))

(declare-fun b!6898575 () Bool)

(declare-fun tp!1899285 () Bool)

(declare-fun tp!1899277 () Bool)

(assert (=> b!6898575 (= e!4154795 (and tp!1899285 tp!1899277))))

(declare-fun b!6898576 () Bool)

(assert (=> b!6898576 (= e!4154794 e!4154792)))

(declare-fun res!2812841 () Bool)

(assert (=> b!6898576 (=> res!2812841 e!4154792)))

(assert (=> b!6898576 (= res!2812841 (not (isDefined!13335 lt!2465183)))))

(assert (=> b!6898576 (= lt!2465183 (findConcatSeparation!3046 r1!6342 lt!2465171 Nil!66486 s!14361 s!14361))))

(declare-fun b!6898577 () Bool)

(declare-fun res!2812846 () Bool)

(assert (=> b!6898577 (=> res!2812846 e!4154790)))

(assert (=> b!6898577 (= res!2812846 (not (matchR!8998 r3!135 (_2!37023 lt!2465180))))))

(declare-fun b!6898578 () Bool)

(declare-fun tp!1899278 () Bool)

(declare-fun tp!1899279 () Bool)

(assert (=> b!6898578 (= e!4154791 (and tp!1899278 tp!1899279))))

(declare-fun b!6898579 () Bool)

(declare-fun res!2812843 () Bool)

(assert (=> b!6898579 (=> (not res!2812843) (not e!4154796))))

(assert (=> b!6898579 (= res!2812843 (validRegex!8561 r3!135))))

(declare-fun b!6898571 () Bool)

(declare-fun res!2812842 () Bool)

(assert (=> b!6898571 (=> res!2812842 e!4154793)))

(assert (=> b!6898571 (= res!2812842 (not (matchR!8998 lt!2465171 (_2!37023 lt!2465172))))))

(declare-fun res!2812847 () Bool)

(assert (=> start!664606 (=> (not res!2812847) (not e!4154796))))

(assert (=> start!664606 (= res!2812847 (validRegex!8561 r1!6342))))

(assert (=> start!664606 e!4154796))

(assert (=> start!664606 e!4154795))

(assert (=> start!664606 e!4154791))

(assert (=> start!664606 e!4154789))

(assert (=> start!664606 e!4154787))

(assert (= (and start!664606 res!2812847) b!6898565))

(assert (= (and b!6898565 res!2812850) b!6898579))

(assert (= (and b!6898579 res!2812843) b!6898572))

(assert (= (and b!6898572 (not res!2812848)) b!6898576))

(assert (= (and b!6898576 (not res!2812841)) b!6898569))

(assert (= (and b!6898569 (not res!2812844)) b!6898571))

(assert (= (and b!6898571 (not res!2812842)) b!6898564))

(assert (= (and b!6898564 (not res!2812845)) b!6898577))

(assert (= (and b!6898577 (not res!2812846)) b!6898566))

(assert (= (and b!6898566 (not res!2812849)) b!6898574))

(get-info :version)

(assert (= (and start!664606 ((_ is ElementMatch!16853) r1!6342)) b!6898563))

(assert (= (and start!664606 ((_ is Concat!25698) r1!6342)) b!6898575))

(assert (= (and start!664606 ((_ is Star!16853) r1!6342)) b!6898567))

(assert (= (and start!664606 ((_ is Union!16853) r1!6342)) b!6898559))

(assert (= (and start!664606 ((_ is ElementMatch!16853) r2!6280)) b!6898568))

(assert (= (and start!664606 ((_ is Concat!25698) r2!6280)) b!6898561))

(assert (= (and start!664606 ((_ is Star!16853) r2!6280)) b!6898573))

(assert (= (and start!664606 ((_ is Union!16853) r2!6280)) b!6898578))

(assert (= (and start!664606 ((_ is ElementMatch!16853) r3!135)) b!6898570))

(assert (= (and start!664606 ((_ is Concat!25698) r3!135)) b!6898558))

(assert (= (and start!664606 ((_ is Star!16853) r3!135)) b!6898560))

(assert (= (and start!664606 ((_ is Union!16853) r3!135)) b!6898562))

(assert (= (and start!664606 ((_ is Cons!66486) s!14361)) b!6898557))

(declare-fun m!7616954 () Bool)

(assert (=> b!6898571 m!7616954))

(declare-fun m!7616956 () Bool)

(assert (=> b!6898565 m!7616956))

(declare-fun m!7616958 () Bool)

(assert (=> b!6898577 m!7616958))

(declare-fun m!7616960 () Bool)

(assert (=> b!6898569 m!7616960))

(declare-fun m!7616962 () Bool)

(assert (=> b!6898569 m!7616962))

(declare-fun m!7616964 () Bool)

(assert (=> b!6898569 m!7616964))

(declare-fun m!7616966 () Bool)

(assert (=> b!6898569 m!7616966))

(assert (=> b!6898569 m!7616960))

(declare-fun m!7616968 () Bool)

(assert (=> b!6898569 m!7616968))

(declare-fun m!7616970 () Bool)

(assert (=> b!6898569 m!7616970))

(declare-fun m!7616972 () Bool)

(assert (=> b!6898569 m!7616972))

(declare-fun m!7616974 () Bool)

(assert (=> b!6898569 m!7616974))

(declare-fun m!7616976 () Bool)

(assert (=> b!6898564 m!7616976))

(declare-fun m!7616978 () Bool)

(assert (=> b!6898564 m!7616978))

(declare-fun m!7616980 () Bool)

(assert (=> b!6898564 m!7616980))

(declare-fun m!7616982 () Bool)

(assert (=> b!6898564 m!7616982))

(assert (=> b!6898564 m!7616978))

(declare-fun m!7616984 () Bool)

(assert (=> b!6898564 m!7616984))

(declare-fun m!7616986 () Bool)

(assert (=> b!6898564 m!7616986))

(declare-fun m!7616988 () Bool)

(assert (=> b!6898564 m!7616988))

(declare-fun m!7616990 () Bool)

(assert (=> b!6898564 m!7616990))

(declare-fun m!7616992 () Bool)

(assert (=> b!6898564 m!7616992))

(declare-fun m!7616994 () Bool)

(assert (=> b!6898564 m!7616994))

(declare-fun m!7616996 () Bool)

(assert (=> b!6898574 m!7616996))

(declare-fun m!7616998 () Bool)

(assert (=> b!6898574 m!7616998))

(declare-fun m!7617000 () Bool)

(assert (=> b!6898574 m!7617000))

(declare-fun m!7617002 () Bool)

(assert (=> b!6898574 m!7617002))

(declare-fun m!7617004 () Bool)

(assert (=> b!6898574 m!7617004))

(declare-fun m!7617006 () Bool)

(assert (=> b!6898574 m!7617006))

(declare-fun m!7617008 () Bool)

(assert (=> b!6898574 m!7617008))

(declare-fun m!7617010 () Bool)

(assert (=> b!6898574 m!7617010))

(assert (=> b!6898574 m!7617004))

(declare-fun m!7617012 () Bool)

(assert (=> b!6898574 m!7617012))

(assert (=> b!6898574 m!7617002))

(declare-fun m!7617014 () Bool)

(assert (=> b!6898574 m!7617014))

(declare-fun m!7617016 () Bool)

(assert (=> b!6898574 m!7617016))

(declare-fun m!7617018 () Bool)

(assert (=> b!6898574 m!7617018))

(declare-fun m!7617020 () Bool)

(assert (=> b!6898574 m!7617020))

(declare-fun m!7617022 () Bool)

(assert (=> b!6898574 m!7617022))

(declare-fun m!7617024 () Bool)

(assert (=> b!6898566 m!7617024))

(declare-fun m!7617026 () Bool)

(assert (=> b!6898566 m!7617026))

(declare-fun m!7617028 () Bool)

(assert (=> b!6898566 m!7617028))

(declare-fun m!7617030 () Bool)

(assert (=> b!6898566 m!7617030))

(declare-fun m!7617032 () Bool)

(assert (=> b!6898566 m!7617032))

(assert (=> b!6898566 m!7617032))

(declare-fun m!7617034 () Bool)

(assert (=> b!6898566 m!7617034))

(declare-fun m!7617036 () Bool)

(assert (=> b!6898576 m!7617036))

(declare-fun m!7617038 () Bool)

(assert (=> b!6898576 m!7617038))

(declare-fun m!7617040 () Bool)

(assert (=> b!6898579 m!7617040))

(declare-fun m!7617042 () Bool)

(assert (=> start!664606 m!7617042))

(declare-fun m!7617044 () Bool)

(assert (=> b!6898572 m!7617044))

(declare-fun m!7617046 () Bool)

(assert (=> b!6898572 m!7617046))

(declare-fun m!7617048 () Bool)

(assert (=> b!6898572 m!7617048))

(declare-fun m!7617050 () Bool)

(assert (=> b!6898572 m!7617050))

(declare-fun m!7617052 () Bool)

(assert (=> b!6898572 m!7617052))

(declare-fun m!7617054 () Bool)

(assert (=> b!6898572 m!7617054))

(check-sat (not b!6898565) tp_is_empty!42931 (not b!6898560) (not b!6898571) (not b!6898572) (not b!6898562) (not b!6898566) (not b!6898578) (not b!6898567) (not b!6898559) (not b!6898577) (not b!6898564) (not b!6898575) (not b!6898576) (not b!6898574) (not b!6898573) (not b!6898558) (not b!6898569) (not b!6898557) (not b!6898561) (not b!6898579) (not start!664606))
(check-sat)
(get-model)

(declare-fun bs!1841185 () Bool)

(declare-fun b!6898702 () Bool)

(assert (= bs!1841185 (and b!6898702 b!6898574)))

(declare-fun lambda!391394 () Int)

(assert (=> bs!1841185 (not (= lambda!391394 lambda!391383))))

(declare-fun bs!1841186 () Bool)

(assert (= bs!1841186 (and b!6898702 b!6898564)))

(assert (=> bs!1841186 (not (= lambda!391394 lambda!391382))))

(assert (=> bs!1841185 (not (= lambda!391394 lambda!391384))))

(declare-fun bs!1841191 () Bool)

(assert (= bs!1841191 (and b!6898702 b!6898569)))

(assert (=> bs!1841191 (not (= lambda!391394 lambda!391379))))

(assert (=> bs!1841191 (not (= lambda!391394 lambda!391380))))

(assert (=> bs!1841186 (not (= lambda!391394 lambda!391381))))

(assert (=> b!6898702 true))

(assert (=> b!6898702 true))

(declare-fun bs!1841192 () Bool)

(declare-fun b!6898701 () Bool)

(assert (= bs!1841192 (and b!6898701 b!6898574)))

(declare-fun lambda!391396 () Int)

(assert (=> bs!1841192 (not (= lambda!391396 lambda!391383))))

(declare-fun bs!1841193 () Bool)

(assert (= bs!1841193 (and b!6898701 b!6898564)))

(assert (=> bs!1841193 (= (and (= s!14361 (_2!37023 lt!2465172)) (= (regOne!34218 lt!2465168) r2!6280) (= (regTwo!34218 lt!2465168) r3!135)) (= lambda!391396 lambda!391382))))

(assert (=> bs!1841192 (= (and (= s!14361 lt!2465175) (= (regOne!34218 lt!2465168) r1!6342) (= (regTwo!34218 lt!2465168) r2!6280)) (= lambda!391396 lambda!391384))))

(declare-fun bs!1841194 () Bool)

(assert (= bs!1841194 (and b!6898701 b!6898569)))

(assert (=> bs!1841194 (not (= lambda!391396 lambda!391379))))

(assert (=> bs!1841193 (not (= lambda!391396 lambda!391381))))

(declare-fun bs!1841195 () Bool)

(assert (= bs!1841195 (and b!6898701 b!6898702)))

(assert (=> bs!1841195 (not (= lambda!391396 lambda!391394))))

(assert (=> bs!1841194 (= (and (= (regOne!34218 lt!2465168) r1!6342) (= (regTwo!34218 lt!2465168) lt!2465171)) (= lambda!391396 lambda!391380))))

(assert (=> b!6898701 true))

(assert (=> b!6898701 true))

(declare-fun b!6898692 () Bool)

(declare-fun e!4154855 () Bool)

(assert (=> b!6898692 (= e!4154855 (= s!14361 (Cons!66486 (c!1281929 lt!2465168) Nil!66486)))))

(declare-fun b!6898693 () Bool)

(declare-fun c!1281958 () Bool)

(assert (=> b!6898693 (= c!1281958 ((_ is Union!16853) lt!2465168))))

(declare-fun e!4154857 () Bool)

(assert (=> b!6898693 (= e!4154855 e!4154857)))

(declare-fun b!6898694 () Bool)

(declare-fun e!4154858 () Bool)

(assert (=> b!6898694 (= e!4154857 e!4154858)))

(declare-fun c!1281955 () Bool)

(assert (=> b!6898694 (= c!1281955 ((_ is Star!16853) lt!2465168))))

(declare-fun b!6898695 () Bool)

(declare-fun res!2812909 () Bool)

(declare-fun e!4154854 () Bool)

(assert (=> b!6898695 (=> res!2812909 e!4154854)))

(declare-fun call!627452 () Bool)

(assert (=> b!6898695 (= res!2812909 call!627452)))

(assert (=> b!6898695 (= e!4154858 e!4154854)))

(declare-fun b!6898696 () Bool)

(declare-fun c!1281956 () Bool)

(assert (=> b!6898696 (= c!1281956 ((_ is ElementMatch!16853) lt!2465168))))

(declare-fun e!4154856 () Bool)

(assert (=> b!6898696 (= e!4154856 e!4154855)))

(declare-fun call!627451 () Bool)

(declare-fun bm!627446 () Bool)

(assert (=> bm!627446 (= call!627451 (Exists!3861 (ite c!1281955 lambda!391394 lambda!391396)))))

(declare-fun b!6898698 () Bool)

(declare-fun e!4154859 () Bool)

(assert (=> b!6898698 (= e!4154859 (matchRSpec!3916 (regTwo!34219 lt!2465168) s!14361))))

(declare-fun b!6898699 () Bool)

(declare-fun e!4154860 () Bool)

(assert (=> b!6898699 (= e!4154860 call!627452)))

(declare-fun b!6898700 () Bool)

(assert (=> b!6898700 (= e!4154857 e!4154859)))

(declare-fun res!2812908 () Bool)

(assert (=> b!6898700 (= res!2812908 (matchRSpec!3916 (regOne!34219 lt!2465168) s!14361))))

(assert (=> b!6898700 (=> res!2812908 e!4154859)))

(assert (=> b!6898701 (= e!4154858 call!627451)))

(assert (=> b!6898702 (= e!4154854 call!627451)))

(declare-fun bm!627447 () Bool)

(declare-fun isEmpty!38721 (List!66610) Bool)

(assert (=> bm!627447 (= call!627452 (isEmpty!38721 s!14361))))

(declare-fun b!6898697 () Bool)

(assert (=> b!6898697 (= e!4154860 e!4154856)))

(declare-fun res!2812907 () Bool)

(assert (=> b!6898697 (= res!2812907 (not ((_ is EmptyLang!16853) lt!2465168)))))

(assert (=> b!6898697 (=> (not res!2812907) (not e!4154856))))

(declare-fun d!2161650 () Bool)

(declare-fun c!1281957 () Bool)

(assert (=> d!2161650 (= c!1281957 ((_ is EmptyExpr!16853) lt!2465168))))

(assert (=> d!2161650 (= (matchRSpec!3916 lt!2465168 s!14361) e!4154860)))

(assert (= (and d!2161650 c!1281957) b!6898699))

(assert (= (and d!2161650 (not c!1281957)) b!6898697))

(assert (= (and b!6898697 res!2812907) b!6898696))

(assert (= (and b!6898696 c!1281956) b!6898692))

(assert (= (and b!6898696 (not c!1281956)) b!6898693))

(assert (= (and b!6898693 c!1281958) b!6898700))

(assert (= (and b!6898693 (not c!1281958)) b!6898694))

(assert (= (and b!6898700 (not res!2812908)) b!6898698))

(assert (= (and b!6898694 c!1281955) b!6898695))

(assert (= (and b!6898694 (not c!1281955)) b!6898701))

(assert (= (and b!6898695 (not res!2812909)) b!6898702))

(assert (= (or b!6898702 b!6898701) bm!627446))

(assert (= (or b!6898699 b!6898695) bm!627447))

(declare-fun m!7617090 () Bool)

(assert (=> bm!627446 m!7617090))

(declare-fun m!7617092 () Bool)

(assert (=> b!6898698 m!7617092))

(declare-fun m!7617094 () Bool)

(assert (=> b!6898700 m!7617094))

(declare-fun m!7617096 () Bool)

(assert (=> bm!627447 m!7617096))

(assert (=> b!6898572 d!2161650))

(declare-fun d!2161664 () Bool)

(assert (=> d!2161664 (= (matchR!8998 lt!2465177 s!14361) (matchRSpec!3916 lt!2465177 s!14361))))

(declare-fun lt!2465204 () Unit!160426)

(declare-fun choose!51361 (Regex!16853 List!66610) Unit!160426)

(assert (=> d!2161664 (= lt!2465204 (choose!51361 lt!2465177 s!14361))))

(assert (=> d!2161664 (validRegex!8561 lt!2465177)))

(assert (=> d!2161664 (= (mainMatchTheorem!3916 lt!2465177 s!14361) lt!2465204)))

(declare-fun bs!1841209 () Bool)

(assert (= bs!1841209 d!2161664))

(assert (=> bs!1841209 m!7617054))

(assert (=> bs!1841209 m!7617048))

(declare-fun m!7617104 () Bool)

(assert (=> bs!1841209 m!7617104))

(declare-fun m!7617106 () Bool)

(assert (=> bs!1841209 m!7617106))

(assert (=> b!6898572 d!2161664))

(declare-fun d!2161668 () Bool)

(assert (=> d!2161668 (= (matchR!8998 lt!2465168 s!14361) (matchRSpec!3916 lt!2465168 s!14361))))

(declare-fun lt!2465205 () Unit!160426)

(assert (=> d!2161668 (= lt!2465205 (choose!51361 lt!2465168 s!14361))))

(assert (=> d!2161668 (validRegex!8561 lt!2465168)))

(assert (=> d!2161668 (= (mainMatchTheorem!3916 lt!2465168 s!14361) lt!2465205)))

(declare-fun bs!1841210 () Bool)

(assert (= bs!1841210 d!2161668))

(assert (=> bs!1841210 m!7617050))

(assert (=> bs!1841210 m!7617052))

(declare-fun m!7617108 () Bool)

(assert (=> bs!1841210 m!7617108))

(declare-fun m!7617110 () Bool)

(assert (=> bs!1841210 m!7617110))

(assert (=> b!6898572 d!2161668))

(declare-fun d!2161670 () Bool)

(declare-fun e!4154945 () Bool)

(assert (=> d!2161670 e!4154945))

(declare-fun c!1281995 () Bool)

(assert (=> d!2161670 (= c!1281995 ((_ is EmptyExpr!16853) lt!2465177))))

(declare-fun lt!2465217 () Bool)

(declare-fun e!4154944 () Bool)

(assert (=> d!2161670 (= lt!2465217 e!4154944)))

(declare-fun c!1281996 () Bool)

(assert (=> d!2161670 (= c!1281996 (isEmpty!38721 s!14361))))

(assert (=> d!2161670 (validRegex!8561 lt!2465177)))

(assert (=> d!2161670 (= (matchR!8998 lt!2465177 s!14361) lt!2465217)))

(declare-fun b!6898836 () Bool)

(declare-fun res!2812973 () Bool)

(declare-fun e!4154943 () Bool)

(assert (=> b!6898836 (=> (not res!2812973) (not e!4154943))))

(declare-fun call!627473 () Bool)

(assert (=> b!6898836 (= res!2812973 (not call!627473))))

(declare-fun b!6898837 () Bool)

(declare-fun e!4154946 () Bool)

(declare-fun e!4154947 () Bool)

(assert (=> b!6898837 (= e!4154946 e!4154947)))

(declare-fun res!2812974 () Bool)

(assert (=> b!6898837 (=> res!2812974 e!4154947)))

(assert (=> b!6898837 (= res!2812974 call!627473)))

(declare-fun b!6898838 () Bool)

(declare-fun e!4154942 () Bool)

(assert (=> b!6898838 (= e!4154942 e!4154946)))

(declare-fun res!2812977 () Bool)

(assert (=> b!6898838 (=> (not res!2812977) (not e!4154946))))

(assert (=> b!6898838 (= res!2812977 (not lt!2465217))))

(declare-fun b!6898839 () Bool)

(declare-fun derivativeStep!5383 (Regex!16853 C!33976) Regex!16853)

(declare-fun head!13836 (List!66610) C!33976)

(declare-fun tail!12888 (List!66610) List!66610)

(assert (=> b!6898839 (= e!4154944 (matchR!8998 (derivativeStep!5383 lt!2465177 (head!13836 s!14361)) (tail!12888 s!14361)))))

(declare-fun b!6898840 () Bool)

(declare-fun e!4154941 () Bool)

(assert (=> b!6898840 (= e!4154945 e!4154941)))

(declare-fun c!1281994 () Bool)

(assert (=> b!6898840 (= c!1281994 ((_ is EmptyLang!16853) lt!2465177))))

(declare-fun bm!627468 () Bool)

(assert (=> bm!627468 (= call!627473 (isEmpty!38721 s!14361))))

(declare-fun b!6898841 () Bool)

(assert (=> b!6898841 (= e!4154947 (not (= (head!13836 s!14361) (c!1281929 lt!2465177))))))

(declare-fun b!6898842 () Bool)

(declare-fun res!2812980 () Bool)

(assert (=> b!6898842 (=> res!2812980 e!4154942)))

(assert (=> b!6898842 (= res!2812980 (not ((_ is ElementMatch!16853) lt!2465177)))))

(assert (=> b!6898842 (= e!4154941 e!4154942)))

(declare-fun b!6898843 () Bool)

(assert (=> b!6898843 (= e!4154943 (= (head!13836 s!14361) (c!1281929 lt!2465177)))))

(declare-fun b!6898844 () Bool)

(declare-fun nullable!6704 (Regex!16853) Bool)

(assert (=> b!6898844 (= e!4154944 (nullable!6704 lt!2465177))))

(declare-fun b!6898845 () Bool)

(declare-fun res!2812976 () Bool)

(assert (=> b!6898845 (=> res!2812976 e!4154947)))

(assert (=> b!6898845 (= res!2812976 (not (isEmpty!38721 (tail!12888 s!14361))))))

(declare-fun b!6898846 () Bool)

(assert (=> b!6898846 (= e!4154945 (= lt!2465217 call!627473))))

(declare-fun b!6898847 () Bool)

(declare-fun res!2812979 () Bool)

(assert (=> b!6898847 (=> res!2812979 e!4154942)))

(assert (=> b!6898847 (= res!2812979 e!4154943)))

(declare-fun res!2812975 () Bool)

(assert (=> b!6898847 (=> (not res!2812975) (not e!4154943))))

(assert (=> b!6898847 (= res!2812975 lt!2465217)))

(declare-fun b!6898848 () Bool)

(assert (=> b!6898848 (= e!4154941 (not lt!2465217))))

(declare-fun b!6898849 () Bool)

(declare-fun res!2812978 () Bool)

(assert (=> b!6898849 (=> (not res!2812978) (not e!4154943))))

(assert (=> b!6898849 (= res!2812978 (isEmpty!38721 (tail!12888 s!14361)))))

(assert (= (and d!2161670 c!1281996) b!6898844))

(assert (= (and d!2161670 (not c!1281996)) b!6898839))

(assert (= (and d!2161670 c!1281995) b!6898846))

(assert (= (and d!2161670 (not c!1281995)) b!6898840))

(assert (= (and b!6898840 c!1281994) b!6898848))

(assert (= (and b!6898840 (not c!1281994)) b!6898842))

(assert (= (and b!6898842 (not res!2812980)) b!6898847))

(assert (= (and b!6898847 res!2812975) b!6898836))

(assert (= (and b!6898836 res!2812973) b!6898849))

(assert (= (and b!6898849 res!2812978) b!6898843))

(assert (= (and b!6898847 (not res!2812979)) b!6898838))

(assert (= (and b!6898838 res!2812977) b!6898837))

(assert (= (and b!6898837 (not res!2812974)) b!6898845))

(assert (= (and b!6898845 (not res!2812976)) b!6898841))

(assert (= (or b!6898846 b!6898836 b!6898837) bm!627468))

(declare-fun m!7617192 () Bool)

(assert (=> b!6898844 m!7617192))

(declare-fun m!7617194 () Bool)

(assert (=> b!6898841 m!7617194))

(assert (=> bm!627468 m!7617096))

(declare-fun m!7617196 () Bool)

(assert (=> b!6898845 m!7617196))

(assert (=> b!6898845 m!7617196))

(declare-fun m!7617198 () Bool)

(assert (=> b!6898845 m!7617198))

(assert (=> b!6898849 m!7617196))

(assert (=> b!6898849 m!7617196))

(assert (=> b!6898849 m!7617198))

(assert (=> d!2161670 m!7617096))

(assert (=> d!2161670 m!7617106))

(assert (=> b!6898839 m!7617194))

(assert (=> b!6898839 m!7617194))

(declare-fun m!7617200 () Bool)

(assert (=> b!6898839 m!7617200))

(assert (=> b!6898839 m!7617196))

(assert (=> b!6898839 m!7617200))

(assert (=> b!6898839 m!7617196))

(declare-fun m!7617202 () Bool)

(assert (=> b!6898839 m!7617202))

(assert (=> b!6898843 m!7617194))

(assert (=> b!6898572 d!2161670))

(declare-fun d!2161694 () Bool)

(declare-fun e!4154963 () Bool)

(assert (=> d!2161694 e!4154963))

(declare-fun c!1282002 () Bool)

(assert (=> d!2161694 (= c!1282002 ((_ is EmptyExpr!16853) lt!2465168))))

(declare-fun lt!2465220 () Bool)

(declare-fun e!4154962 () Bool)

(assert (=> d!2161694 (= lt!2465220 e!4154962)))

(declare-fun c!1282003 () Bool)

(assert (=> d!2161694 (= c!1282003 (isEmpty!38721 s!14361))))

(assert (=> d!2161694 (validRegex!8561 lt!2465168)))

(assert (=> d!2161694 (= (matchR!8998 lt!2465168 s!14361) lt!2465220)))

(declare-fun b!6898867 () Bool)

(declare-fun res!2812990 () Bool)

(declare-fun e!4154961 () Bool)

(assert (=> b!6898867 (=> (not res!2812990) (not e!4154961))))

(declare-fun call!627477 () Bool)

(assert (=> b!6898867 (= res!2812990 (not call!627477))))

(declare-fun b!6898868 () Bool)

(declare-fun e!4154964 () Bool)

(declare-fun e!4154965 () Bool)

(assert (=> b!6898868 (= e!4154964 e!4154965)))

(declare-fun res!2812991 () Bool)

(assert (=> b!6898868 (=> res!2812991 e!4154965)))

(assert (=> b!6898868 (= res!2812991 call!627477)))

(declare-fun b!6898869 () Bool)

(declare-fun e!4154960 () Bool)

(assert (=> b!6898869 (= e!4154960 e!4154964)))

(declare-fun res!2812994 () Bool)

(assert (=> b!6898869 (=> (not res!2812994) (not e!4154964))))

(assert (=> b!6898869 (= res!2812994 (not lt!2465220))))

(declare-fun b!6898870 () Bool)

(assert (=> b!6898870 (= e!4154962 (matchR!8998 (derivativeStep!5383 lt!2465168 (head!13836 s!14361)) (tail!12888 s!14361)))))

(declare-fun b!6898871 () Bool)

(declare-fun e!4154959 () Bool)

(assert (=> b!6898871 (= e!4154963 e!4154959)))

(declare-fun c!1282001 () Bool)

(assert (=> b!6898871 (= c!1282001 ((_ is EmptyLang!16853) lt!2465168))))

(declare-fun bm!627472 () Bool)

(assert (=> bm!627472 (= call!627477 (isEmpty!38721 s!14361))))

(declare-fun b!6898872 () Bool)

(assert (=> b!6898872 (= e!4154965 (not (= (head!13836 s!14361) (c!1281929 lt!2465168))))))

(declare-fun b!6898873 () Bool)

(declare-fun res!2812997 () Bool)

(assert (=> b!6898873 (=> res!2812997 e!4154960)))

(assert (=> b!6898873 (= res!2812997 (not ((_ is ElementMatch!16853) lt!2465168)))))

(assert (=> b!6898873 (= e!4154959 e!4154960)))

(declare-fun b!6898874 () Bool)

(assert (=> b!6898874 (= e!4154961 (= (head!13836 s!14361) (c!1281929 lt!2465168)))))

(declare-fun b!6898875 () Bool)

(assert (=> b!6898875 (= e!4154962 (nullable!6704 lt!2465168))))

(declare-fun b!6898876 () Bool)

(declare-fun res!2812993 () Bool)

(assert (=> b!6898876 (=> res!2812993 e!4154965)))

(assert (=> b!6898876 (= res!2812993 (not (isEmpty!38721 (tail!12888 s!14361))))))

(declare-fun b!6898877 () Bool)

(assert (=> b!6898877 (= e!4154963 (= lt!2465220 call!627477))))

(declare-fun b!6898878 () Bool)

(declare-fun res!2812996 () Bool)

(assert (=> b!6898878 (=> res!2812996 e!4154960)))

(assert (=> b!6898878 (= res!2812996 e!4154961)))

(declare-fun res!2812992 () Bool)

(assert (=> b!6898878 (=> (not res!2812992) (not e!4154961))))

(assert (=> b!6898878 (= res!2812992 lt!2465220)))

(declare-fun b!6898879 () Bool)

(assert (=> b!6898879 (= e!4154959 (not lt!2465220))))

(declare-fun b!6898880 () Bool)

(declare-fun res!2812995 () Bool)

(assert (=> b!6898880 (=> (not res!2812995) (not e!4154961))))

(assert (=> b!6898880 (= res!2812995 (isEmpty!38721 (tail!12888 s!14361)))))

(assert (= (and d!2161694 c!1282003) b!6898875))

(assert (= (and d!2161694 (not c!1282003)) b!6898870))

(assert (= (and d!2161694 c!1282002) b!6898877))

(assert (= (and d!2161694 (not c!1282002)) b!6898871))

(assert (= (and b!6898871 c!1282001) b!6898879))

(assert (= (and b!6898871 (not c!1282001)) b!6898873))

(assert (= (and b!6898873 (not res!2812997)) b!6898878))

(assert (= (and b!6898878 res!2812992) b!6898867))

(assert (= (and b!6898867 res!2812990) b!6898880))

(assert (= (and b!6898880 res!2812995) b!6898874))

(assert (= (and b!6898878 (not res!2812996)) b!6898869))

(assert (= (and b!6898869 res!2812994) b!6898868))

(assert (= (and b!6898868 (not res!2812991)) b!6898876))

(assert (= (and b!6898876 (not res!2812993)) b!6898872))

(assert (= (or b!6898877 b!6898867 b!6898868) bm!627472))

(declare-fun m!7617204 () Bool)

(assert (=> b!6898875 m!7617204))

(assert (=> b!6898872 m!7617194))

(assert (=> bm!627472 m!7617096))

(assert (=> b!6898876 m!7617196))

(assert (=> b!6898876 m!7617196))

(assert (=> b!6898876 m!7617198))

(assert (=> b!6898880 m!7617196))

(assert (=> b!6898880 m!7617196))

(assert (=> b!6898880 m!7617198))

(assert (=> d!2161694 m!7617096))

(assert (=> d!2161694 m!7617110))

(assert (=> b!6898870 m!7617194))

(assert (=> b!6898870 m!7617194))

(declare-fun m!7617206 () Bool)

(assert (=> b!6898870 m!7617206))

(assert (=> b!6898870 m!7617196))

(assert (=> b!6898870 m!7617206))

(assert (=> b!6898870 m!7617196))

(declare-fun m!7617208 () Bool)

(assert (=> b!6898870 m!7617208))

(assert (=> b!6898874 m!7617194))

(assert (=> b!6898572 d!2161694))

(declare-fun bs!1841259 () Bool)

(declare-fun b!6898891 () Bool)

(assert (= bs!1841259 (and b!6898891 b!6898574)))

(declare-fun lambda!391406 () Int)

(assert (=> bs!1841259 (not (= lambda!391406 lambda!391383))))

(declare-fun bs!1841260 () Bool)

(assert (= bs!1841260 (and b!6898891 b!6898564)))

(assert (=> bs!1841260 (not (= lambda!391406 lambda!391382))))

(declare-fun bs!1841261 () Bool)

(assert (= bs!1841261 (and b!6898891 b!6898569)))

(assert (=> bs!1841261 (not (= lambda!391406 lambda!391379))))

(assert (=> bs!1841260 (not (= lambda!391406 lambda!391381))))

(declare-fun bs!1841262 () Bool)

(assert (= bs!1841262 (and b!6898891 b!6898701)))

(assert (=> bs!1841262 (not (= lambda!391406 lambda!391396))))

(assert (=> bs!1841259 (not (= lambda!391406 lambda!391384))))

(declare-fun bs!1841263 () Bool)

(assert (= bs!1841263 (and b!6898891 b!6898702)))

(assert (=> bs!1841263 (= (and (= (reg!17182 lt!2465177) (reg!17182 lt!2465168)) (= lt!2465177 lt!2465168)) (= lambda!391406 lambda!391394))))

(assert (=> bs!1841261 (not (= lambda!391406 lambda!391380))))

(assert (=> b!6898891 true))

(assert (=> b!6898891 true))

(declare-fun bs!1841264 () Bool)

(declare-fun b!6898890 () Bool)

(assert (= bs!1841264 (and b!6898890 b!6898574)))

(declare-fun lambda!391407 () Int)

(assert (=> bs!1841264 (not (= lambda!391407 lambda!391383))))

(declare-fun bs!1841265 () Bool)

(assert (= bs!1841265 (and b!6898890 b!6898564)))

(assert (=> bs!1841265 (= (and (= s!14361 (_2!37023 lt!2465172)) (= (regOne!34218 lt!2465177) r2!6280) (= (regTwo!34218 lt!2465177) r3!135)) (= lambda!391407 lambda!391382))))

(declare-fun bs!1841266 () Bool)

(assert (= bs!1841266 (and b!6898890 b!6898569)))

(assert (=> bs!1841266 (not (= lambda!391407 lambda!391379))))

(declare-fun bs!1841267 () Bool)

(assert (= bs!1841267 (and b!6898890 b!6898891)))

(assert (=> bs!1841267 (not (= lambda!391407 lambda!391406))))

(assert (=> bs!1841265 (not (= lambda!391407 lambda!391381))))

(declare-fun bs!1841268 () Bool)

(assert (= bs!1841268 (and b!6898890 b!6898701)))

(assert (=> bs!1841268 (= (and (= (regOne!34218 lt!2465177) (regOne!34218 lt!2465168)) (= (regTwo!34218 lt!2465177) (regTwo!34218 lt!2465168))) (= lambda!391407 lambda!391396))))

(assert (=> bs!1841264 (= (and (= s!14361 lt!2465175) (= (regOne!34218 lt!2465177) r1!6342) (= (regTwo!34218 lt!2465177) r2!6280)) (= lambda!391407 lambda!391384))))

(declare-fun bs!1841269 () Bool)

(assert (= bs!1841269 (and b!6898890 b!6898702)))

(assert (=> bs!1841269 (not (= lambda!391407 lambda!391394))))

(assert (=> bs!1841266 (= (and (= (regOne!34218 lt!2465177) r1!6342) (= (regTwo!34218 lt!2465177) lt!2465171)) (= lambda!391407 lambda!391380))))

(assert (=> b!6898890 true))

(assert (=> b!6898890 true))

(declare-fun b!6898881 () Bool)

(declare-fun e!4154967 () Bool)

(assert (=> b!6898881 (= e!4154967 (= s!14361 (Cons!66486 (c!1281929 lt!2465177) Nil!66486)))))

(declare-fun b!6898882 () Bool)

(declare-fun c!1282007 () Bool)

(assert (=> b!6898882 (= c!1282007 ((_ is Union!16853) lt!2465177))))

(declare-fun e!4154969 () Bool)

(assert (=> b!6898882 (= e!4154967 e!4154969)))

(declare-fun b!6898883 () Bool)

(declare-fun e!4154970 () Bool)

(assert (=> b!6898883 (= e!4154969 e!4154970)))

(declare-fun c!1282004 () Bool)

(assert (=> b!6898883 (= c!1282004 ((_ is Star!16853) lt!2465177))))

(declare-fun b!6898884 () Bool)

(declare-fun res!2813000 () Bool)

(declare-fun e!4154966 () Bool)

(assert (=> b!6898884 (=> res!2813000 e!4154966)))

(declare-fun call!627479 () Bool)

(assert (=> b!6898884 (= res!2813000 call!627479)))

(assert (=> b!6898884 (= e!4154970 e!4154966)))

(declare-fun b!6898885 () Bool)

(declare-fun c!1282005 () Bool)

(assert (=> b!6898885 (= c!1282005 ((_ is ElementMatch!16853) lt!2465177))))

(declare-fun e!4154968 () Bool)

(assert (=> b!6898885 (= e!4154968 e!4154967)))

(declare-fun bm!627473 () Bool)

(declare-fun call!627478 () Bool)

(assert (=> bm!627473 (= call!627478 (Exists!3861 (ite c!1282004 lambda!391406 lambda!391407)))))

(declare-fun b!6898887 () Bool)

(declare-fun e!4154971 () Bool)

(assert (=> b!6898887 (= e!4154971 (matchRSpec!3916 (regTwo!34219 lt!2465177) s!14361))))

(declare-fun b!6898888 () Bool)

(declare-fun e!4154972 () Bool)

(assert (=> b!6898888 (= e!4154972 call!627479)))

(declare-fun b!6898889 () Bool)

(assert (=> b!6898889 (= e!4154969 e!4154971)))

(declare-fun res!2812999 () Bool)

(assert (=> b!6898889 (= res!2812999 (matchRSpec!3916 (regOne!34219 lt!2465177) s!14361))))

(assert (=> b!6898889 (=> res!2812999 e!4154971)))

(assert (=> b!6898890 (= e!4154970 call!627478)))

(assert (=> b!6898891 (= e!4154966 call!627478)))

(declare-fun bm!627474 () Bool)

(assert (=> bm!627474 (= call!627479 (isEmpty!38721 s!14361))))

(declare-fun b!6898886 () Bool)

(assert (=> b!6898886 (= e!4154972 e!4154968)))

(declare-fun res!2812998 () Bool)

(assert (=> b!6898886 (= res!2812998 (not ((_ is EmptyLang!16853) lt!2465177)))))

(assert (=> b!6898886 (=> (not res!2812998) (not e!4154968))))

(declare-fun d!2161696 () Bool)

(declare-fun c!1282006 () Bool)

(assert (=> d!2161696 (= c!1282006 ((_ is EmptyExpr!16853) lt!2465177))))

(assert (=> d!2161696 (= (matchRSpec!3916 lt!2465177 s!14361) e!4154972)))

(assert (= (and d!2161696 c!1282006) b!6898888))

(assert (= (and d!2161696 (not c!1282006)) b!6898886))

(assert (= (and b!6898886 res!2812998) b!6898885))

(assert (= (and b!6898885 c!1282005) b!6898881))

(assert (= (and b!6898885 (not c!1282005)) b!6898882))

(assert (= (and b!6898882 c!1282007) b!6898889))

(assert (= (and b!6898882 (not c!1282007)) b!6898883))

(assert (= (and b!6898889 (not res!2812999)) b!6898887))

(assert (= (and b!6898883 c!1282004) b!6898884))

(assert (= (and b!6898883 (not c!1282004)) b!6898890))

(assert (= (and b!6898884 (not res!2813000)) b!6898891))

(assert (= (or b!6898891 b!6898890) bm!627473))

(assert (= (or b!6898888 b!6898884) bm!627474))

(declare-fun m!7617210 () Bool)

(assert (=> bm!627473 m!7617210))

(declare-fun m!7617212 () Bool)

(assert (=> b!6898887 m!7617212))

(declare-fun m!7617214 () Bool)

(assert (=> b!6898889 m!7617214))

(assert (=> bm!627474 m!7617096))

(assert (=> b!6898572 d!2161696))

(declare-fun d!2161698 () Bool)

(declare-fun e!4154987 () Bool)

(assert (=> d!2161698 e!4154987))

(declare-fun c!1282013 () Bool)

(assert (=> d!2161698 (= c!1282013 ((_ is EmptyExpr!16853) r3!135))))

(declare-fun lt!2465227 () Bool)

(declare-fun e!4154986 () Bool)

(assert (=> d!2161698 (= lt!2465227 e!4154986)))

(declare-fun c!1282014 () Bool)

(assert (=> d!2161698 (= c!1282014 (isEmpty!38721 (_2!37023 lt!2465180)))))

(assert (=> d!2161698 (validRegex!8561 r3!135)))

(assert (=> d!2161698 (= (matchR!8998 r3!135 (_2!37023 lt!2465180)) lt!2465227)))

(declare-fun b!6898910 () Bool)

(declare-fun res!2813011 () Bool)

(declare-fun e!4154985 () Bool)

(assert (=> b!6898910 (=> (not res!2813011) (not e!4154985))))

(declare-fun call!627480 () Bool)

(assert (=> b!6898910 (= res!2813011 (not call!627480))))

(declare-fun b!6898911 () Bool)

(declare-fun e!4154988 () Bool)

(declare-fun e!4154989 () Bool)

(assert (=> b!6898911 (= e!4154988 e!4154989)))

(declare-fun res!2813012 () Bool)

(assert (=> b!6898911 (=> res!2813012 e!4154989)))

(assert (=> b!6898911 (= res!2813012 call!627480)))

(declare-fun b!6898912 () Bool)

(declare-fun e!4154984 () Bool)

(assert (=> b!6898912 (= e!4154984 e!4154988)))

(declare-fun res!2813015 () Bool)

(assert (=> b!6898912 (=> (not res!2813015) (not e!4154988))))

(assert (=> b!6898912 (= res!2813015 (not lt!2465227))))

(declare-fun b!6898913 () Bool)

(assert (=> b!6898913 (= e!4154986 (matchR!8998 (derivativeStep!5383 r3!135 (head!13836 (_2!37023 lt!2465180))) (tail!12888 (_2!37023 lt!2465180))))))

(declare-fun b!6898914 () Bool)

(declare-fun e!4154983 () Bool)

(assert (=> b!6898914 (= e!4154987 e!4154983)))

(declare-fun c!1282012 () Bool)

(assert (=> b!6898914 (= c!1282012 ((_ is EmptyLang!16853) r3!135))))

(declare-fun bm!627475 () Bool)

(assert (=> bm!627475 (= call!627480 (isEmpty!38721 (_2!37023 lt!2465180)))))

(declare-fun b!6898915 () Bool)

(assert (=> b!6898915 (= e!4154989 (not (= (head!13836 (_2!37023 lt!2465180)) (c!1281929 r3!135))))))

(declare-fun b!6898916 () Bool)

(declare-fun res!2813018 () Bool)

(assert (=> b!6898916 (=> res!2813018 e!4154984)))

(assert (=> b!6898916 (= res!2813018 (not ((_ is ElementMatch!16853) r3!135)))))

(assert (=> b!6898916 (= e!4154983 e!4154984)))

(declare-fun b!6898917 () Bool)

(assert (=> b!6898917 (= e!4154985 (= (head!13836 (_2!37023 lt!2465180)) (c!1281929 r3!135)))))

(declare-fun b!6898918 () Bool)

(assert (=> b!6898918 (= e!4154986 (nullable!6704 r3!135))))

(declare-fun b!6898919 () Bool)

(declare-fun res!2813014 () Bool)

(assert (=> b!6898919 (=> res!2813014 e!4154989)))

(assert (=> b!6898919 (= res!2813014 (not (isEmpty!38721 (tail!12888 (_2!37023 lt!2465180)))))))

(declare-fun b!6898920 () Bool)

(assert (=> b!6898920 (= e!4154987 (= lt!2465227 call!627480))))

(declare-fun b!6898921 () Bool)

(declare-fun res!2813017 () Bool)

(assert (=> b!6898921 (=> res!2813017 e!4154984)))

(assert (=> b!6898921 (= res!2813017 e!4154985)))

(declare-fun res!2813013 () Bool)

(assert (=> b!6898921 (=> (not res!2813013) (not e!4154985))))

(assert (=> b!6898921 (= res!2813013 lt!2465227)))

(declare-fun b!6898922 () Bool)

(assert (=> b!6898922 (= e!4154983 (not lt!2465227))))

(declare-fun b!6898923 () Bool)

(declare-fun res!2813016 () Bool)

(assert (=> b!6898923 (=> (not res!2813016) (not e!4154985))))

(assert (=> b!6898923 (= res!2813016 (isEmpty!38721 (tail!12888 (_2!37023 lt!2465180))))))

(assert (= (and d!2161698 c!1282014) b!6898918))

(assert (= (and d!2161698 (not c!1282014)) b!6898913))

(assert (= (and d!2161698 c!1282013) b!6898920))

(assert (= (and d!2161698 (not c!1282013)) b!6898914))

(assert (= (and b!6898914 c!1282012) b!6898922))

(assert (= (and b!6898914 (not c!1282012)) b!6898916))

(assert (= (and b!6898916 (not res!2813018)) b!6898921))

(assert (= (and b!6898921 res!2813013) b!6898910))

(assert (= (and b!6898910 res!2813011) b!6898923))

(assert (= (and b!6898923 res!2813016) b!6898917))

(assert (= (and b!6898921 (not res!2813017)) b!6898912))

(assert (= (and b!6898912 res!2813015) b!6898911))

(assert (= (and b!6898911 (not res!2813012)) b!6898919))

(assert (= (and b!6898919 (not res!2813014)) b!6898915))

(assert (= (or b!6898920 b!6898910 b!6898911) bm!627475))

(declare-fun m!7617238 () Bool)

(assert (=> b!6898918 m!7617238))

(declare-fun m!7617240 () Bool)

(assert (=> b!6898915 m!7617240))

(declare-fun m!7617242 () Bool)

(assert (=> bm!627475 m!7617242))

(declare-fun m!7617244 () Bool)

(assert (=> b!6898919 m!7617244))

(assert (=> b!6898919 m!7617244))

(declare-fun m!7617246 () Bool)

(assert (=> b!6898919 m!7617246))

(assert (=> b!6898923 m!7617244))

(assert (=> b!6898923 m!7617244))

(assert (=> b!6898923 m!7617246))

(assert (=> d!2161698 m!7617242))

(assert (=> d!2161698 m!7617040))

(assert (=> b!6898913 m!7617240))

(assert (=> b!6898913 m!7617240))

(declare-fun m!7617248 () Bool)

(assert (=> b!6898913 m!7617248))

(assert (=> b!6898913 m!7617244))

(assert (=> b!6898913 m!7617248))

(assert (=> b!6898913 m!7617244))

(declare-fun m!7617250 () Bool)

(assert (=> b!6898913 m!7617250))

(assert (=> b!6898917 m!7617240))

(assert (=> b!6898577 d!2161698))

(declare-fun d!2161702 () Bool)

(declare-fun e!4155014 () Bool)

(assert (=> d!2161702 e!4155014))

(declare-fun res!2813040 () Bool)

(assert (=> d!2161702 (=> (not res!2813040) (not e!4155014))))

(declare-fun lt!2465237 () List!66610)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13058 (List!66610) (InoxSet C!33976))

(assert (=> d!2161702 (= res!2813040 (= (content!13058 lt!2465237) ((_ map or) (content!13058 (_1!37023 lt!2465180)) (content!13058 (_2!37023 lt!2465180)))))))

(declare-fun e!4155013 () List!66610)

(assert (=> d!2161702 (= lt!2465237 e!4155013)))

(declare-fun c!1282026 () Bool)

(assert (=> d!2161702 (= c!1282026 ((_ is Nil!66486) (_1!37023 lt!2465180)))))

(assert (=> d!2161702 (= (++!14906 (_1!37023 lt!2465180) (_2!37023 lt!2465180)) lt!2465237)))

(declare-fun b!6898967 () Bool)

(assert (=> b!6898967 (= e!4155013 (Cons!66486 (h!72934 (_1!37023 lt!2465180)) (++!14906 (t!380353 (_1!37023 lt!2465180)) (_2!37023 lt!2465180))))))

(declare-fun b!6898968 () Bool)

(declare-fun res!2813039 () Bool)

(assert (=> b!6898968 (=> (not res!2813039) (not e!4155014))))

(declare-fun size!40755 (List!66610) Int)

(assert (=> b!6898968 (= res!2813039 (= (size!40755 lt!2465237) (+ (size!40755 (_1!37023 lt!2465180)) (size!40755 (_2!37023 lt!2465180)))))))

(declare-fun b!6898969 () Bool)

(assert (=> b!6898969 (= e!4155014 (or (not (= (_2!37023 lt!2465180) Nil!66486)) (= lt!2465237 (_1!37023 lt!2465180))))))

(declare-fun b!6898966 () Bool)

(assert (=> b!6898966 (= e!4155013 (_2!37023 lt!2465180))))

(assert (= (and d!2161702 c!1282026) b!6898966))

(assert (= (and d!2161702 (not c!1282026)) b!6898967))

(assert (= (and d!2161702 res!2813040) b!6898968))

(assert (= (and b!6898968 res!2813039) b!6898969))

(declare-fun m!7617272 () Bool)

(assert (=> d!2161702 m!7617272))

(declare-fun m!7617274 () Bool)

(assert (=> d!2161702 m!7617274))

(declare-fun m!7617276 () Bool)

(assert (=> d!2161702 m!7617276))

(declare-fun m!7617278 () Bool)

(assert (=> b!6898967 m!7617278))

(declare-fun m!7617280 () Bool)

(assert (=> b!6898968 m!7617280))

(declare-fun m!7617282 () Bool)

(assert (=> b!6898968 m!7617282))

(declare-fun m!7617284 () Bool)

(assert (=> b!6898968 m!7617284))

(assert (=> b!6898566 d!2161702))

(declare-fun d!2161712 () Bool)

(assert (=> d!2161712 (= (matchR!8998 r2!6280 (_1!37023 lt!2465180)) (matchRSpec!3916 r2!6280 (_1!37023 lt!2465180)))))

(declare-fun lt!2465238 () Unit!160426)

(assert (=> d!2161712 (= lt!2465238 (choose!51361 r2!6280 (_1!37023 lt!2465180)))))

(assert (=> d!2161712 (validRegex!8561 r2!6280)))

(assert (=> d!2161712 (= (mainMatchTheorem!3916 r2!6280 (_1!37023 lt!2465180)) lt!2465238)))

(declare-fun bs!1841298 () Bool)

(assert (= bs!1841298 d!2161712))

(assert (=> bs!1841298 m!7616984))

(assert (=> bs!1841298 m!7617030))

(declare-fun m!7617286 () Bool)

(assert (=> bs!1841298 m!7617286))

(assert (=> bs!1841298 m!7616956))

(assert (=> b!6898566 d!2161712))

(declare-fun bs!1841299 () Bool)

(declare-fun b!6898980 () Bool)

(assert (= bs!1841299 (and b!6898980 b!6898890)))

(declare-fun lambda!391410 () Int)

(assert (=> bs!1841299 (not (= lambda!391410 lambda!391407))))

(declare-fun bs!1841300 () Bool)

(assert (= bs!1841300 (and b!6898980 b!6898574)))

(assert (=> bs!1841300 (not (= lambda!391410 lambda!391383))))

(declare-fun bs!1841301 () Bool)

(assert (= bs!1841301 (and b!6898980 b!6898564)))

(assert (=> bs!1841301 (not (= lambda!391410 lambda!391382))))

(declare-fun bs!1841302 () Bool)

(assert (= bs!1841302 (and b!6898980 b!6898569)))

(assert (=> bs!1841302 (not (= lambda!391410 lambda!391379))))

(declare-fun bs!1841303 () Bool)

(assert (= bs!1841303 (and b!6898980 b!6898891)))

(assert (=> bs!1841303 (= (and (= (_2!37023 lt!2465180) s!14361) (= (reg!17182 r3!135) (reg!17182 lt!2465177)) (= r3!135 lt!2465177)) (= lambda!391410 lambda!391406))))

(assert (=> bs!1841301 (not (= lambda!391410 lambda!391381))))

(declare-fun bs!1841305 () Bool)

(assert (= bs!1841305 (and b!6898980 b!6898701)))

(assert (=> bs!1841305 (not (= lambda!391410 lambda!391396))))

(assert (=> bs!1841300 (not (= lambda!391410 lambda!391384))))

(declare-fun bs!1841306 () Bool)

(assert (= bs!1841306 (and b!6898980 b!6898702)))

(assert (=> bs!1841306 (= (and (= (_2!37023 lt!2465180) s!14361) (= (reg!17182 r3!135) (reg!17182 lt!2465168)) (= r3!135 lt!2465168)) (= lambda!391410 lambda!391394))))

(assert (=> bs!1841302 (not (= lambda!391410 lambda!391380))))

(assert (=> b!6898980 true))

(assert (=> b!6898980 true))

(declare-fun bs!1841307 () Bool)

(declare-fun b!6898979 () Bool)

(assert (= bs!1841307 (and b!6898979 b!6898890)))

(declare-fun lambda!391411 () Int)

(assert (=> bs!1841307 (= (and (= (_2!37023 lt!2465180) s!14361) (= (regOne!34218 r3!135) (regOne!34218 lt!2465177)) (= (regTwo!34218 r3!135) (regTwo!34218 lt!2465177))) (= lambda!391411 lambda!391407))))

(declare-fun bs!1841308 () Bool)

(assert (= bs!1841308 (and b!6898979 b!6898574)))

(assert (=> bs!1841308 (not (= lambda!391411 lambda!391383))))

(declare-fun bs!1841309 () Bool)

(assert (= bs!1841309 (and b!6898979 b!6898980)))

(assert (=> bs!1841309 (not (= lambda!391411 lambda!391410))))

(declare-fun bs!1841310 () Bool)

(assert (= bs!1841310 (and b!6898979 b!6898564)))

(assert (=> bs!1841310 (= (and (= (_2!37023 lt!2465180) (_2!37023 lt!2465172)) (= (regOne!34218 r3!135) r2!6280) (= (regTwo!34218 r3!135) r3!135)) (= lambda!391411 lambda!391382))))

(declare-fun bs!1841311 () Bool)

(assert (= bs!1841311 (and b!6898979 b!6898569)))

(assert (=> bs!1841311 (not (= lambda!391411 lambda!391379))))

(declare-fun bs!1841312 () Bool)

(assert (= bs!1841312 (and b!6898979 b!6898891)))

(assert (=> bs!1841312 (not (= lambda!391411 lambda!391406))))

(assert (=> bs!1841310 (not (= lambda!391411 lambda!391381))))

(declare-fun bs!1841313 () Bool)

(assert (= bs!1841313 (and b!6898979 b!6898701)))

(assert (=> bs!1841313 (= (and (= (_2!37023 lt!2465180) s!14361) (= (regOne!34218 r3!135) (regOne!34218 lt!2465168)) (= (regTwo!34218 r3!135) (regTwo!34218 lt!2465168))) (= lambda!391411 lambda!391396))))

(assert (=> bs!1841308 (= (and (= (_2!37023 lt!2465180) lt!2465175) (= (regOne!34218 r3!135) r1!6342) (= (regTwo!34218 r3!135) r2!6280)) (= lambda!391411 lambda!391384))))

(declare-fun bs!1841314 () Bool)

(assert (= bs!1841314 (and b!6898979 b!6898702)))

(assert (=> bs!1841314 (not (= lambda!391411 lambda!391394))))

(assert (=> bs!1841311 (= (and (= (_2!37023 lt!2465180) s!14361) (= (regOne!34218 r3!135) r1!6342) (= (regTwo!34218 r3!135) lt!2465171)) (= lambda!391411 lambda!391380))))

(assert (=> b!6898979 true))

(assert (=> b!6898979 true))

(declare-fun b!6898970 () Bool)

(declare-fun e!4155016 () Bool)

(assert (=> b!6898970 (= e!4155016 (= (_2!37023 lt!2465180) (Cons!66486 (c!1281929 r3!135) Nil!66486)))))

(declare-fun b!6898971 () Bool)

(declare-fun c!1282030 () Bool)

(assert (=> b!6898971 (= c!1282030 ((_ is Union!16853) r3!135))))

(declare-fun e!4155018 () Bool)

(assert (=> b!6898971 (= e!4155016 e!4155018)))

(declare-fun b!6898972 () Bool)

(declare-fun e!4155019 () Bool)

(assert (=> b!6898972 (= e!4155018 e!4155019)))

(declare-fun c!1282027 () Bool)

(assert (=> b!6898972 (= c!1282027 ((_ is Star!16853) r3!135))))

(declare-fun b!6898973 () Bool)

(declare-fun res!2813043 () Bool)

(declare-fun e!4155015 () Bool)

(assert (=> b!6898973 (=> res!2813043 e!4155015)))

(declare-fun call!627485 () Bool)

(assert (=> b!6898973 (= res!2813043 call!627485)))

(assert (=> b!6898973 (= e!4155019 e!4155015)))

(declare-fun b!6898974 () Bool)

(declare-fun c!1282028 () Bool)

(assert (=> b!6898974 (= c!1282028 ((_ is ElementMatch!16853) r3!135))))

(declare-fun e!4155017 () Bool)

(assert (=> b!6898974 (= e!4155017 e!4155016)))

(declare-fun bm!627479 () Bool)

(declare-fun call!627484 () Bool)

(assert (=> bm!627479 (= call!627484 (Exists!3861 (ite c!1282027 lambda!391410 lambda!391411)))))

(declare-fun b!6898976 () Bool)

(declare-fun e!4155020 () Bool)

(assert (=> b!6898976 (= e!4155020 (matchRSpec!3916 (regTwo!34219 r3!135) (_2!37023 lt!2465180)))))

(declare-fun b!6898977 () Bool)

(declare-fun e!4155021 () Bool)

(assert (=> b!6898977 (= e!4155021 call!627485)))

(declare-fun b!6898978 () Bool)

(assert (=> b!6898978 (= e!4155018 e!4155020)))

(declare-fun res!2813042 () Bool)

(assert (=> b!6898978 (= res!2813042 (matchRSpec!3916 (regOne!34219 r3!135) (_2!37023 lt!2465180)))))

(assert (=> b!6898978 (=> res!2813042 e!4155020)))

(assert (=> b!6898979 (= e!4155019 call!627484)))

(assert (=> b!6898980 (= e!4155015 call!627484)))

(declare-fun bm!627480 () Bool)

(assert (=> bm!627480 (= call!627485 (isEmpty!38721 (_2!37023 lt!2465180)))))

(declare-fun b!6898975 () Bool)

(assert (=> b!6898975 (= e!4155021 e!4155017)))

(declare-fun res!2813041 () Bool)

(assert (=> b!6898975 (= res!2813041 (not ((_ is EmptyLang!16853) r3!135)))))

(assert (=> b!6898975 (=> (not res!2813041) (not e!4155017))))

(declare-fun d!2161714 () Bool)

(declare-fun c!1282029 () Bool)

(assert (=> d!2161714 (= c!1282029 ((_ is EmptyExpr!16853) r3!135))))

(assert (=> d!2161714 (= (matchRSpec!3916 r3!135 (_2!37023 lt!2465180)) e!4155021)))

(assert (= (and d!2161714 c!1282029) b!6898977))

(assert (= (and d!2161714 (not c!1282029)) b!6898975))

(assert (= (and b!6898975 res!2813041) b!6898974))

(assert (= (and b!6898974 c!1282028) b!6898970))

(assert (= (and b!6898974 (not c!1282028)) b!6898971))

(assert (= (and b!6898971 c!1282030) b!6898978))

(assert (= (and b!6898971 (not c!1282030)) b!6898972))

(assert (= (and b!6898978 (not res!2813042)) b!6898976))

(assert (= (and b!6898972 c!1282027) b!6898973))

(assert (= (and b!6898972 (not c!1282027)) b!6898979))

(assert (= (and b!6898973 (not res!2813043)) b!6898980))

(assert (= (or b!6898980 b!6898979) bm!627479))

(assert (= (or b!6898977 b!6898973) bm!627480))

(declare-fun m!7617298 () Bool)

(assert (=> bm!627479 m!7617298))

(declare-fun m!7617300 () Bool)

(assert (=> b!6898976 m!7617300))

(declare-fun m!7617302 () Bool)

(assert (=> b!6898978 m!7617302))

(assert (=> bm!627480 m!7617242))

(assert (=> b!6898566 d!2161714))

(declare-fun d!2161720 () Bool)

(declare-fun e!4155023 () Bool)

(assert (=> d!2161720 e!4155023))

(declare-fun res!2813045 () Bool)

(assert (=> d!2161720 (=> (not res!2813045) (not e!4155023))))

(declare-fun lt!2465244 () List!66610)

(assert (=> d!2161720 (= res!2813045 (= (content!13058 lt!2465244) ((_ map or) (content!13058 (_1!37023 lt!2465172)) (content!13058 (++!14906 (_1!37023 lt!2465180) (_2!37023 lt!2465180))))))))

(declare-fun e!4155022 () List!66610)

(assert (=> d!2161720 (= lt!2465244 e!4155022)))

(declare-fun c!1282031 () Bool)

(assert (=> d!2161720 (= c!1282031 ((_ is Nil!66486) (_1!37023 lt!2465172)))))

(assert (=> d!2161720 (= (++!14906 (_1!37023 lt!2465172) (++!14906 (_1!37023 lt!2465180) (_2!37023 lt!2465180))) lt!2465244)))

(declare-fun b!6898982 () Bool)

(assert (=> b!6898982 (= e!4155022 (Cons!66486 (h!72934 (_1!37023 lt!2465172)) (++!14906 (t!380353 (_1!37023 lt!2465172)) (++!14906 (_1!37023 lt!2465180) (_2!37023 lt!2465180)))))))

(declare-fun b!6898983 () Bool)

(declare-fun res!2813044 () Bool)

(assert (=> b!6898983 (=> (not res!2813044) (not e!4155023))))

(assert (=> b!6898983 (= res!2813044 (= (size!40755 lt!2465244) (+ (size!40755 (_1!37023 lt!2465172)) (size!40755 (++!14906 (_1!37023 lt!2465180) (_2!37023 lt!2465180))))))))

(declare-fun b!6898984 () Bool)

(assert (=> b!6898984 (= e!4155023 (or (not (= (++!14906 (_1!37023 lt!2465180) (_2!37023 lt!2465180)) Nil!66486)) (= lt!2465244 (_1!37023 lt!2465172))))))

(declare-fun b!6898981 () Bool)

(assert (=> b!6898981 (= e!4155022 (++!14906 (_1!37023 lt!2465180) (_2!37023 lt!2465180)))))

(assert (= (and d!2161720 c!1282031) b!6898981))

(assert (= (and d!2161720 (not c!1282031)) b!6898982))

(assert (= (and d!2161720 res!2813045) b!6898983))

(assert (= (and b!6898983 res!2813044) b!6898984))

(declare-fun m!7617304 () Bool)

(assert (=> d!2161720 m!7617304))

(declare-fun m!7617306 () Bool)

(assert (=> d!2161720 m!7617306))

(assert (=> d!2161720 m!7617032))

(declare-fun m!7617308 () Bool)

(assert (=> d!2161720 m!7617308))

(assert (=> b!6898982 m!7617032))

(declare-fun m!7617310 () Bool)

(assert (=> b!6898982 m!7617310))

(declare-fun m!7617312 () Bool)

(assert (=> b!6898983 m!7617312))

(declare-fun m!7617314 () Bool)

(assert (=> b!6898983 m!7617314))

(assert (=> b!6898983 m!7617032))

(declare-fun m!7617316 () Bool)

(assert (=> b!6898983 m!7617316))

(assert (=> b!6898566 d!2161720))

(declare-fun d!2161722 () Bool)

(assert (=> d!2161722 (= (matchR!8998 r3!135 (_2!37023 lt!2465180)) (matchRSpec!3916 r3!135 (_2!37023 lt!2465180)))))

(declare-fun lt!2465245 () Unit!160426)

(assert (=> d!2161722 (= lt!2465245 (choose!51361 r3!135 (_2!37023 lt!2465180)))))

(assert (=> d!2161722 (validRegex!8561 r3!135)))

(assert (=> d!2161722 (= (mainMatchTheorem!3916 r3!135 (_2!37023 lt!2465180)) lt!2465245)))

(declare-fun bs!1841315 () Bool)

(assert (= bs!1841315 d!2161722))

(assert (=> bs!1841315 m!7616958))

(assert (=> bs!1841315 m!7617024))

(declare-fun m!7617318 () Bool)

(assert (=> bs!1841315 m!7617318))

(assert (=> bs!1841315 m!7617040))

(assert (=> b!6898566 d!2161722))

(declare-fun bs!1841316 () Bool)

(declare-fun b!6898999 () Bool)

(assert (= bs!1841316 (and b!6898999 b!6898890)))

(declare-fun lambda!391415 () Int)

(assert (=> bs!1841316 (not (= lambda!391415 lambda!391407))))

(declare-fun bs!1841317 () Bool)

(assert (= bs!1841317 (and b!6898999 b!6898574)))

(assert (=> bs!1841317 (not (= lambda!391415 lambda!391383))))

(declare-fun bs!1841318 () Bool)

(assert (= bs!1841318 (and b!6898999 b!6898980)))

(assert (=> bs!1841318 (= (and (= (_1!37023 lt!2465180) (_2!37023 lt!2465180)) (= (reg!17182 r2!6280) (reg!17182 r3!135)) (= r2!6280 r3!135)) (= lambda!391415 lambda!391410))))

(declare-fun bs!1841319 () Bool)

(assert (= bs!1841319 (and b!6898999 b!6898564)))

(assert (=> bs!1841319 (not (= lambda!391415 lambda!391382))))

(declare-fun bs!1841320 () Bool)

(assert (= bs!1841320 (and b!6898999 b!6898569)))

(assert (=> bs!1841320 (not (= lambda!391415 lambda!391379))))

(assert (=> bs!1841319 (not (= lambda!391415 lambda!391381))))

(declare-fun bs!1841321 () Bool)

(assert (= bs!1841321 (and b!6898999 b!6898701)))

(assert (=> bs!1841321 (not (= lambda!391415 lambda!391396))))

(assert (=> bs!1841317 (not (= lambda!391415 lambda!391384))))

(declare-fun bs!1841323 () Bool)

(assert (= bs!1841323 (and b!6898999 b!6898702)))

(assert (=> bs!1841323 (= (and (= (_1!37023 lt!2465180) s!14361) (= (reg!17182 r2!6280) (reg!17182 lt!2465168)) (= r2!6280 lt!2465168)) (= lambda!391415 lambda!391394))))

(assert (=> bs!1841320 (not (= lambda!391415 lambda!391380))))

(declare-fun bs!1841328 () Bool)

(assert (= bs!1841328 (and b!6898999 b!6898979)))

(assert (=> bs!1841328 (not (= lambda!391415 lambda!391411))))

(declare-fun bs!1841331 () Bool)

(assert (= bs!1841331 (and b!6898999 b!6898891)))

(assert (=> bs!1841331 (= (and (= (_1!37023 lt!2465180) s!14361) (= (reg!17182 r2!6280) (reg!17182 lt!2465177)) (= r2!6280 lt!2465177)) (= lambda!391415 lambda!391406))))

(assert (=> b!6898999 true))

(assert (=> b!6898999 true))

(declare-fun bs!1841339 () Bool)

(declare-fun b!6898998 () Bool)

(assert (= bs!1841339 (and b!6898998 b!6898890)))

(declare-fun lambda!391418 () Int)

(assert (=> bs!1841339 (= (and (= (_1!37023 lt!2465180) s!14361) (= (regOne!34218 r2!6280) (regOne!34218 lt!2465177)) (= (regTwo!34218 r2!6280) (regTwo!34218 lt!2465177))) (= lambda!391418 lambda!391407))))

(declare-fun bs!1841340 () Bool)

(assert (= bs!1841340 (and b!6898998 b!6898574)))

(assert (=> bs!1841340 (not (= lambda!391418 lambda!391383))))

(declare-fun bs!1841341 () Bool)

(assert (= bs!1841341 (and b!6898998 b!6898980)))

(assert (=> bs!1841341 (not (= lambda!391418 lambda!391410))))

(declare-fun bs!1841342 () Bool)

(assert (= bs!1841342 (and b!6898998 b!6898569)))

(assert (=> bs!1841342 (not (= lambda!391418 lambda!391379))))

(declare-fun bs!1841343 () Bool)

(assert (= bs!1841343 (and b!6898998 b!6898564)))

(assert (=> bs!1841343 (not (= lambda!391418 lambda!391381))))

(assert (=> bs!1841343 (= (and (= (_1!37023 lt!2465180) (_2!37023 lt!2465172)) (= (regOne!34218 r2!6280) r2!6280) (= (regTwo!34218 r2!6280) r3!135)) (= lambda!391418 lambda!391382))))

(declare-fun bs!1841344 () Bool)

(assert (= bs!1841344 (and b!6898998 b!6898999)))

(assert (=> bs!1841344 (not (= lambda!391418 lambda!391415))))

(declare-fun bs!1841345 () Bool)

(assert (= bs!1841345 (and b!6898998 b!6898701)))

(assert (=> bs!1841345 (= (and (= (_1!37023 lt!2465180) s!14361) (= (regOne!34218 r2!6280) (regOne!34218 lt!2465168)) (= (regTwo!34218 r2!6280) (regTwo!34218 lt!2465168))) (= lambda!391418 lambda!391396))))

(assert (=> bs!1841340 (= (and (= (_1!37023 lt!2465180) lt!2465175) (= (regOne!34218 r2!6280) r1!6342) (= (regTwo!34218 r2!6280) r2!6280)) (= lambda!391418 lambda!391384))))

(declare-fun bs!1841346 () Bool)

(assert (= bs!1841346 (and b!6898998 b!6898702)))

(assert (=> bs!1841346 (not (= lambda!391418 lambda!391394))))

(assert (=> bs!1841342 (= (and (= (_1!37023 lt!2465180) s!14361) (= (regOne!34218 r2!6280) r1!6342) (= (regTwo!34218 r2!6280) lt!2465171)) (= lambda!391418 lambda!391380))))

(declare-fun bs!1841348 () Bool)

(assert (= bs!1841348 (and b!6898998 b!6898979)))

(assert (=> bs!1841348 (= (and (= (_1!37023 lt!2465180) (_2!37023 lt!2465180)) (= (regOne!34218 r2!6280) (regOne!34218 r3!135)) (= (regTwo!34218 r2!6280) (regTwo!34218 r3!135))) (= lambda!391418 lambda!391411))))

(declare-fun bs!1841349 () Bool)

(assert (= bs!1841349 (and b!6898998 b!6898891)))

(assert (=> bs!1841349 (not (= lambda!391418 lambda!391406))))

(assert (=> b!6898998 true))

(assert (=> b!6898998 true))

(declare-fun b!6898989 () Bool)

(declare-fun e!4155027 () Bool)

(assert (=> b!6898989 (= e!4155027 (= (_1!37023 lt!2465180) (Cons!66486 (c!1281929 r2!6280) Nil!66486)))))

(declare-fun b!6898990 () Bool)

(declare-fun c!1282035 () Bool)

(assert (=> b!6898990 (= c!1282035 ((_ is Union!16853) r2!6280))))

(declare-fun e!4155029 () Bool)

(assert (=> b!6898990 (= e!4155027 e!4155029)))

(declare-fun b!6898991 () Bool)

(declare-fun e!4155030 () Bool)

(assert (=> b!6898991 (= e!4155029 e!4155030)))

(declare-fun c!1282032 () Bool)

(assert (=> b!6898991 (= c!1282032 ((_ is Star!16853) r2!6280))))

(declare-fun b!6898992 () Bool)

(declare-fun res!2813052 () Bool)

(declare-fun e!4155026 () Bool)

(assert (=> b!6898992 (=> res!2813052 e!4155026)))

(declare-fun call!627487 () Bool)

(assert (=> b!6898992 (= res!2813052 call!627487)))

(assert (=> b!6898992 (= e!4155030 e!4155026)))

(declare-fun b!6898993 () Bool)

(declare-fun c!1282033 () Bool)

(assert (=> b!6898993 (= c!1282033 ((_ is ElementMatch!16853) r2!6280))))

(declare-fun e!4155028 () Bool)

(assert (=> b!6898993 (= e!4155028 e!4155027)))

(declare-fun call!627486 () Bool)

(declare-fun bm!627481 () Bool)

(assert (=> bm!627481 (= call!627486 (Exists!3861 (ite c!1282032 lambda!391415 lambda!391418)))))

(declare-fun b!6898995 () Bool)

(declare-fun e!4155031 () Bool)

(assert (=> b!6898995 (= e!4155031 (matchRSpec!3916 (regTwo!34219 r2!6280) (_1!37023 lt!2465180)))))

(declare-fun b!6898996 () Bool)

(declare-fun e!4155032 () Bool)

(assert (=> b!6898996 (= e!4155032 call!627487)))

(declare-fun b!6898997 () Bool)

(assert (=> b!6898997 (= e!4155029 e!4155031)))

(declare-fun res!2813051 () Bool)

(assert (=> b!6898997 (= res!2813051 (matchRSpec!3916 (regOne!34219 r2!6280) (_1!37023 lt!2465180)))))

(assert (=> b!6898997 (=> res!2813051 e!4155031)))

(assert (=> b!6898998 (= e!4155030 call!627486)))

(assert (=> b!6898999 (= e!4155026 call!627486)))

(declare-fun bm!627482 () Bool)

(assert (=> bm!627482 (= call!627487 (isEmpty!38721 (_1!37023 lt!2465180)))))

(declare-fun b!6898994 () Bool)

(assert (=> b!6898994 (= e!4155032 e!4155028)))

(declare-fun res!2813050 () Bool)

(assert (=> b!6898994 (= res!2813050 (not ((_ is EmptyLang!16853) r2!6280)))))

(assert (=> b!6898994 (=> (not res!2813050) (not e!4155028))))

(declare-fun d!2161724 () Bool)

(declare-fun c!1282034 () Bool)

(assert (=> d!2161724 (= c!1282034 ((_ is EmptyExpr!16853) r2!6280))))

(assert (=> d!2161724 (= (matchRSpec!3916 r2!6280 (_1!37023 lt!2465180)) e!4155032)))

(assert (= (and d!2161724 c!1282034) b!6898996))

(assert (= (and d!2161724 (not c!1282034)) b!6898994))

(assert (= (and b!6898994 res!2813050) b!6898993))

(assert (= (and b!6898993 c!1282033) b!6898989))

(assert (= (and b!6898993 (not c!1282033)) b!6898990))

(assert (= (and b!6898990 c!1282035) b!6898997))

(assert (= (and b!6898990 (not c!1282035)) b!6898991))

(assert (= (and b!6898997 (not res!2813051)) b!6898995))

(assert (= (and b!6898991 c!1282032) b!6898992))

(assert (= (and b!6898991 (not c!1282032)) b!6898998))

(assert (= (and b!6898992 (not res!2813052)) b!6898999))

(assert (= (or b!6898999 b!6898998) bm!627481))

(assert (= (or b!6898996 b!6898992) bm!627482))

(declare-fun m!7617328 () Bool)

(assert (=> bm!627481 m!7617328))

(declare-fun m!7617330 () Bool)

(assert (=> b!6898995 m!7617330))

(declare-fun m!7617332 () Bool)

(assert (=> b!6898997 m!7617332))

(declare-fun m!7617334 () Bool)

(assert (=> bm!627482 m!7617334))

(assert (=> b!6898566 d!2161724))

(declare-fun bm!627496 () Bool)

(declare-fun call!627501 () Bool)

(declare-fun call!627503 () Bool)

(assert (=> bm!627496 (= call!627501 call!627503)))

(declare-fun b!6899070 () Bool)

(declare-fun e!4155079 () Bool)

(declare-fun e!4155082 () Bool)

(assert (=> b!6899070 (= e!4155079 e!4155082)))

(declare-fun c!1282053 () Bool)

(assert (=> b!6899070 (= c!1282053 ((_ is Star!16853) r3!135))))

(declare-fun c!1282052 () Bool)

(declare-fun bm!627497 () Bool)

(assert (=> bm!627497 (= call!627503 (validRegex!8561 (ite c!1282053 (reg!17182 r3!135) (ite c!1282052 (regOne!34219 r3!135) (regTwo!34218 r3!135)))))))

(declare-fun b!6899071 () Bool)

(declare-fun e!4155078 () Bool)

(assert (=> b!6899071 (= e!4155082 e!4155078)))

(declare-fun res!2813093 () Bool)

(assert (=> b!6899071 (= res!2813093 (not (nullable!6704 (reg!17182 r3!135))))))

(assert (=> b!6899071 (=> (not res!2813093) (not e!4155078))))

(declare-fun b!6899072 () Bool)

(declare-fun res!2813092 () Bool)

(declare-fun e!4155083 () Bool)

(assert (=> b!6899072 (=> (not res!2813092) (not e!4155083))))

(assert (=> b!6899072 (= res!2813092 call!627501)))

(declare-fun e!4155077 () Bool)

(assert (=> b!6899072 (= e!4155077 e!4155083)))

(declare-fun d!2161730 () Bool)

(declare-fun res!2813091 () Bool)

(assert (=> d!2161730 (=> res!2813091 e!4155079)))

(assert (=> d!2161730 (= res!2813091 ((_ is ElementMatch!16853) r3!135))))

(assert (=> d!2161730 (= (validRegex!8561 r3!135) e!4155079)))

(declare-fun bm!627498 () Bool)

(declare-fun call!627502 () Bool)

(assert (=> bm!627498 (= call!627502 (validRegex!8561 (ite c!1282052 (regTwo!34219 r3!135) (regOne!34218 r3!135))))))

(declare-fun b!6899073 () Bool)

(assert (=> b!6899073 (= e!4155078 call!627503)))

(declare-fun b!6899074 () Bool)

(declare-fun e!4155081 () Bool)

(assert (=> b!6899074 (= e!4155081 call!627501)))

(declare-fun b!6899075 () Bool)

(assert (=> b!6899075 (= e!4155082 e!4155077)))

(assert (=> b!6899075 (= c!1282052 ((_ is Union!16853) r3!135))))

(declare-fun b!6899076 () Bool)

(assert (=> b!6899076 (= e!4155083 call!627502)))

(declare-fun b!6899077 () Bool)

(declare-fun e!4155080 () Bool)

(assert (=> b!6899077 (= e!4155080 e!4155081)))

(declare-fun res!2813094 () Bool)

(assert (=> b!6899077 (=> (not res!2813094) (not e!4155081))))

(assert (=> b!6899077 (= res!2813094 call!627502)))

(declare-fun b!6899078 () Bool)

(declare-fun res!2813095 () Bool)

(assert (=> b!6899078 (=> res!2813095 e!4155080)))

(assert (=> b!6899078 (= res!2813095 (not ((_ is Concat!25698) r3!135)))))

(assert (=> b!6899078 (= e!4155077 e!4155080)))

(assert (= (and d!2161730 (not res!2813091)) b!6899070))

(assert (= (and b!6899070 c!1282053) b!6899071))

(assert (= (and b!6899070 (not c!1282053)) b!6899075))

(assert (= (and b!6899071 res!2813093) b!6899073))

(assert (= (and b!6899075 c!1282052) b!6899072))

(assert (= (and b!6899075 (not c!1282052)) b!6899078))

(assert (= (and b!6899072 res!2813092) b!6899076))

(assert (= (and b!6899078 (not res!2813095)) b!6899077))

(assert (= (and b!6899077 res!2813094) b!6899074))

(assert (= (or b!6899072 b!6899074) bm!627496))

(assert (= (or b!6899076 b!6899077) bm!627498))

(assert (= (or b!6899073 bm!627496) bm!627497))

(declare-fun m!7617382 () Bool)

(assert (=> bm!627497 m!7617382))

(declare-fun m!7617384 () Bool)

(assert (=> b!6899071 m!7617384))

(declare-fun m!7617386 () Bool)

(assert (=> bm!627498 m!7617386))

(assert (=> b!6898579 d!2161730))

(declare-fun bm!627499 () Bool)

(declare-fun call!627504 () Bool)

(declare-fun call!627506 () Bool)

(assert (=> bm!627499 (= call!627504 call!627506)))

(declare-fun b!6899079 () Bool)

(declare-fun e!4155086 () Bool)

(declare-fun e!4155089 () Bool)

(assert (=> b!6899079 (= e!4155086 e!4155089)))

(declare-fun c!1282055 () Bool)

(assert (=> b!6899079 (= c!1282055 ((_ is Star!16853) r1!6342))))

(declare-fun bm!627500 () Bool)

(declare-fun c!1282054 () Bool)

(assert (=> bm!627500 (= call!627506 (validRegex!8561 (ite c!1282055 (reg!17182 r1!6342) (ite c!1282054 (regOne!34219 r1!6342) (regTwo!34218 r1!6342)))))))

(declare-fun b!6899080 () Bool)

(declare-fun e!4155085 () Bool)

(assert (=> b!6899080 (= e!4155089 e!4155085)))

(declare-fun res!2813098 () Bool)

(assert (=> b!6899080 (= res!2813098 (not (nullable!6704 (reg!17182 r1!6342))))))

(assert (=> b!6899080 (=> (not res!2813098) (not e!4155085))))

(declare-fun b!6899081 () Bool)

(declare-fun res!2813097 () Bool)

(declare-fun e!4155090 () Bool)

(assert (=> b!6899081 (=> (not res!2813097) (not e!4155090))))

(assert (=> b!6899081 (= res!2813097 call!627504)))

(declare-fun e!4155084 () Bool)

(assert (=> b!6899081 (= e!4155084 e!4155090)))

(declare-fun d!2161744 () Bool)

(declare-fun res!2813096 () Bool)

(assert (=> d!2161744 (=> res!2813096 e!4155086)))

(assert (=> d!2161744 (= res!2813096 ((_ is ElementMatch!16853) r1!6342))))

(assert (=> d!2161744 (= (validRegex!8561 r1!6342) e!4155086)))

(declare-fun bm!627501 () Bool)

(declare-fun call!627505 () Bool)

(assert (=> bm!627501 (= call!627505 (validRegex!8561 (ite c!1282054 (regTwo!34219 r1!6342) (regOne!34218 r1!6342))))))

(declare-fun b!6899082 () Bool)

(assert (=> b!6899082 (= e!4155085 call!627506)))

(declare-fun b!6899083 () Bool)

(declare-fun e!4155088 () Bool)

(assert (=> b!6899083 (= e!4155088 call!627504)))

(declare-fun b!6899084 () Bool)

(assert (=> b!6899084 (= e!4155089 e!4155084)))

(assert (=> b!6899084 (= c!1282054 ((_ is Union!16853) r1!6342))))

(declare-fun b!6899085 () Bool)

(assert (=> b!6899085 (= e!4155090 call!627505)))

(declare-fun b!6899086 () Bool)

(declare-fun e!4155087 () Bool)

(assert (=> b!6899086 (= e!4155087 e!4155088)))

(declare-fun res!2813099 () Bool)

(assert (=> b!6899086 (=> (not res!2813099) (not e!4155088))))

(assert (=> b!6899086 (= res!2813099 call!627505)))

(declare-fun b!6899087 () Bool)

(declare-fun res!2813100 () Bool)

(assert (=> b!6899087 (=> res!2813100 e!4155087)))

(assert (=> b!6899087 (= res!2813100 (not ((_ is Concat!25698) r1!6342)))))

(assert (=> b!6899087 (= e!4155084 e!4155087)))

(assert (= (and d!2161744 (not res!2813096)) b!6899079))

(assert (= (and b!6899079 c!1282055) b!6899080))

(assert (= (and b!6899079 (not c!1282055)) b!6899084))

(assert (= (and b!6899080 res!2813098) b!6899082))

(assert (= (and b!6899084 c!1282054) b!6899081))

(assert (= (and b!6899084 (not c!1282054)) b!6899087))

(assert (= (and b!6899081 res!2813097) b!6899085))

(assert (= (and b!6899087 (not res!2813100)) b!6899086))

(assert (= (and b!6899086 res!2813099) b!6899083))

(assert (= (or b!6899081 b!6899083) bm!627499))

(assert (= (or b!6899085 b!6899086) bm!627501))

(assert (= (or b!6899082 bm!627499) bm!627500))

(declare-fun m!7617388 () Bool)

(assert (=> bm!627500 m!7617388))

(declare-fun m!7617390 () Bool)

(assert (=> b!6899080 m!7617390))

(declare-fun m!7617392 () Bool)

(assert (=> bm!627501 m!7617392))

(assert (=> start!664606 d!2161744))

(declare-fun d!2161746 () Bool)

(declare-fun choose!51366 (Int) Bool)

(assert (=> d!2161746 (= (Exists!3861 lambda!391381) (choose!51366 lambda!391381))))

(declare-fun bs!1841402 () Bool)

(assert (= bs!1841402 d!2161746))

(declare-fun m!7617400 () Bool)

(assert (=> bs!1841402 m!7617400))

(assert (=> b!6898564 d!2161746))

(declare-fun d!2161750 () Bool)

(assert (=> d!2161750 (= (Exists!3861 lambda!391382) (choose!51366 lambda!391382))))

(declare-fun bs!1841403 () Bool)

(assert (= bs!1841403 d!2161750))

(declare-fun m!7617402 () Bool)

(assert (=> bs!1841403 m!7617402))

(assert (=> b!6898564 d!2161750))

(declare-fun bs!1841412 () Bool)

(declare-fun b!6899098 () Bool)

(assert (= bs!1841412 (and b!6899098 b!6898890)))

(declare-fun lambda!391424 () Int)

(assert (=> bs!1841412 (not (= lambda!391424 lambda!391407))))

(declare-fun bs!1841416 () Bool)

(assert (= bs!1841416 (and b!6899098 b!6898574)))

(assert (=> bs!1841416 (not (= lambda!391424 lambda!391383))))

(declare-fun bs!1841419 () Bool)

(assert (= bs!1841419 (and b!6899098 b!6898980)))

(assert (=> bs!1841419 (= (and (= (_2!37023 lt!2465172) (_2!37023 lt!2465180)) (= (reg!17182 lt!2465171) (reg!17182 r3!135)) (= lt!2465171 r3!135)) (= lambda!391424 lambda!391410))))

(declare-fun bs!1841422 () Bool)

(assert (= bs!1841422 (and b!6899098 b!6898569)))

(assert (=> bs!1841422 (not (= lambda!391424 lambda!391379))))

(declare-fun bs!1841424 () Bool)

(assert (= bs!1841424 (and b!6899098 b!6898998)))

(assert (=> bs!1841424 (not (= lambda!391424 lambda!391418))))

(declare-fun bs!1841426 () Bool)

(assert (= bs!1841426 (and b!6899098 b!6898564)))

(assert (=> bs!1841426 (not (= lambda!391424 lambda!391381))))

(assert (=> bs!1841426 (not (= lambda!391424 lambda!391382))))

(declare-fun bs!1841428 () Bool)

(assert (= bs!1841428 (and b!6899098 b!6898999)))

(assert (=> bs!1841428 (= (and (= (_2!37023 lt!2465172) (_1!37023 lt!2465180)) (= (reg!17182 lt!2465171) (reg!17182 r2!6280)) (= lt!2465171 r2!6280)) (= lambda!391424 lambda!391415))))

(declare-fun bs!1841429 () Bool)

(assert (= bs!1841429 (and b!6899098 b!6898701)))

(assert (=> bs!1841429 (not (= lambda!391424 lambda!391396))))

(assert (=> bs!1841416 (not (= lambda!391424 lambda!391384))))

(declare-fun bs!1841430 () Bool)

(assert (= bs!1841430 (and b!6899098 b!6898702)))

(assert (=> bs!1841430 (= (and (= (_2!37023 lt!2465172) s!14361) (= (reg!17182 lt!2465171) (reg!17182 lt!2465168)) (= lt!2465171 lt!2465168)) (= lambda!391424 lambda!391394))))

(assert (=> bs!1841422 (not (= lambda!391424 lambda!391380))))

(declare-fun bs!1841431 () Bool)

(assert (= bs!1841431 (and b!6899098 b!6898979)))

(assert (=> bs!1841431 (not (= lambda!391424 lambda!391411))))

(declare-fun bs!1841432 () Bool)

(assert (= bs!1841432 (and b!6899098 b!6898891)))

(assert (=> bs!1841432 (= (and (= (_2!37023 lt!2465172) s!14361) (= (reg!17182 lt!2465171) (reg!17182 lt!2465177)) (= lt!2465171 lt!2465177)) (= lambda!391424 lambda!391406))))

(assert (=> b!6899098 true))

(assert (=> b!6899098 true))

(declare-fun bs!1841434 () Bool)

(declare-fun b!6899097 () Bool)

(assert (= bs!1841434 (and b!6899097 b!6898890)))

(declare-fun lambda!391426 () Int)

(assert (=> bs!1841434 (= (and (= (_2!37023 lt!2465172) s!14361) (= (regOne!34218 lt!2465171) (regOne!34218 lt!2465177)) (= (regTwo!34218 lt!2465171) (regTwo!34218 lt!2465177))) (= lambda!391426 lambda!391407))))

(declare-fun bs!1841435 () Bool)

(assert (= bs!1841435 (and b!6899097 b!6898574)))

(assert (=> bs!1841435 (not (= lambda!391426 lambda!391383))))

(declare-fun bs!1841436 () Bool)

(assert (= bs!1841436 (and b!6899097 b!6898980)))

(assert (=> bs!1841436 (not (= lambda!391426 lambda!391410))))

(declare-fun bs!1841437 () Bool)

(assert (= bs!1841437 (and b!6899097 b!6898569)))

(assert (=> bs!1841437 (not (= lambda!391426 lambda!391379))))

(declare-fun bs!1841439 () Bool)

(assert (= bs!1841439 (and b!6899097 b!6899098)))

(assert (=> bs!1841439 (not (= lambda!391426 lambda!391424))))

(declare-fun bs!1841441 () Bool)

(assert (= bs!1841441 (and b!6899097 b!6898998)))

(assert (=> bs!1841441 (= (and (= (_2!37023 lt!2465172) (_1!37023 lt!2465180)) (= (regOne!34218 lt!2465171) (regOne!34218 r2!6280)) (= (regTwo!34218 lt!2465171) (regTwo!34218 r2!6280))) (= lambda!391426 lambda!391418))))

(declare-fun bs!1841442 () Bool)

(assert (= bs!1841442 (and b!6899097 b!6898564)))

(assert (=> bs!1841442 (not (= lambda!391426 lambda!391381))))

(assert (=> bs!1841442 (= (and (= (regOne!34218 lt!2465171) r2!6280) (= (regTwo!34218 lt!2465171) r3!135)) (= lambda!391426 lambda!391382))))

(declare-fun bs!1841443 () Bool)

(assert (= bs!1841443 (and b!6899097 b!6898999)))

(assert (=> bs!1841443 (not (= lambda!391426 lambda!391415))))

(declare-fun bs!1841444 () Bool)

(assert (= bs!1841444 (and b!6899097 b!6898701)))

(assert (=> bs!1841444 (= (and (= (_2!37023 lt!2465172) s!14361) (= (regOne!34218 lt!2465171) (regOne!34218 lt!2465168)) (= (regTwo!34218 lt!2465171) (regTwo!34218 lt!2465168))) (= lambda!391426 lambda!391396))))

(assert (=> bs!1841435 (= (and (= (_2!37023 lt!2465172) lt!2465175) (= (regOne!34218 lt!2465171) r1!6342) (= (regTwo!34218 lt!2465171) r2!6280)) (= lambda!391426 lambda!391384))))

(declare-fun bs!1841446 () Bool)

(assert (= bs!1841446 (and b!6899097 b!6898702)))

(assert (=> bs!1841446 (not (= lambda!391426 lambda!391394))))

(assert (=> bs!1841437 (= (and (= (_2!37023 lt!2465172) s!14361) (= (regOne!34218 lt!2465171) r1!6342) (= (regTwo!34218 lt!2465171) lt!2465171)) (= lambda!391426 lambda!391380))))

(declare-fun bs!1841448 () Bool)

(assert (= bs!1841448 (and b!6899097 b!6898979)))

(assert (=> bs!1841448 (= (and (= (_2!37023 lt!2465172) (_2!37023 lt!2465180)) (= (regOne!34218 lt!2465171) (regOne!34218 r3!135)) (= (regTwo!34218 lt!2465171) (regTwo!34218 r3!135))) (= lambda!391426 lambda!391411))))

(declare-fun bs!1841449 () Bool)

(assert (= bs!1841449 (and b!6899097 b!6898891)))

(assert (=> bs!1841449 (not (= lambda!391426 lambda!391406))))

(assert (=> b!6899097 true))

(assert (=> b!6899097 true))

(declare-fun b!6899088 () Bool)

(declare-fun e!4155092 () Bool)

(assert (=> b!6899088 (= e!4155092 (= (_2!37023 lt!2465172) (Cons!66486 (c!1281929 lt!2465171) Nil!66486)))))

(declare-fun b!6899089 () Bool)

(declare-fun c!1282059 () Bool)

(assert (=> b!6899089 (= c!1282059 ((_ is Union!16853) lt!2465171))))

(declare-fun e!4155094 () Bool)

(assert (=> b!6899089 (= e!4155092 e!4155094)))

(declare-fun b!6899090 () Bool)

(declare-fun e!4155095 () Bool)

(assert (=> b!6899090 (= e!4155094 e!4155095)))

(declare-fun c!1282056 () Bool)

(assert (=> b!6899090 (= c!1282056 ((_ is Star!16853) lt!2465171))))

(declare-fun b!6899091 () Bool)

(declare-fun res!2813103 () Bool)

(declare-fun e!4155091 () Bool)

(assert (=> b!6899091 (=> res!2813103 e!4155091)))

(declare-fun call!627508 () Bool)

(assert (=> b!6899091 (= res!2813103 call!627508)))

(assert (=> b!6899091 (= e!4155095 e!4155091)))

(declare-fun b!6899092 () Bool)

(declare-fun c!1282057 () Bool)

(assert (=> b!6899092 (= c!1282057 ((_ is ElementMatch!16853) lt!2465171))))

(declare-fun e!4155093 () Bool)

(assert (=> b!6899092 (= e!4155093 e!4155092)))

(declare-fun bm!627502 () Bool)

(declare-fun call!627507 () Bool)

(assert (=> bm!627502 (= call!627507 (Exists!3861 (ite c!1282056 lambda!391424 lambda!391426)))))

(declare-fun b!6899094 () Bool)

(declare-fun e!4155096 () Bool)

(assert (=> b!6899094 (= e!4155096 (matchRSpec!3916 (regTwo!34219 lt!2465171) (_2!37023 lt!2465172)))))

(declare-fun b!6899095 () Bool)

(declare-fun e!4155097 () Bool)

(assert (=> b!6899095 (= e!4155097 call!627508)))

(declare-fun b!6899096 () Bool)

(assert (=> b!6899096 (= e!4155094 e!4155096)))

(declare-fun res!2813102 () Bool)

(assert (=> b!6899096 (= res!2813102 (matchRSpec!3916 (regOne!34219 lt!2465171) (_2!37023 lt!2465172)))))

(assert (=> b!6899096 (=> res!2813102 e!4155096)))

(assert (=> b!6899097 (= e!4155095 call!627507)))

(assert (=> b!6899098 (= e!4155091 call!627507)))

(declare-fun bm!627503 () Bool)

(assert (=> bm!627503 (= call!627508 (isEmpty!38721 (_2!37023 lt!2465172)))))

(declare-fun b!6899093 () Bool)

(assert (=> b!6899093 (= e!4155097 e!4155093)))

(declare-fun res!2813101 () Bool)

(assert (=> b!6899093 (= res!2813101 (not ((_ is EmptyLang!16853) lt!2465171)))))

(assert (=> b!6899093 (=> (not res!2813101) (not e!4155093))))

(declare-fun d!2161752 () Bool)

(declare-fun c!1282058 () Bool)

(assert (=> d!2161752 (= c!1282058 ((_ is EmptyExpr!16853) lt!2465171))))

(assert (=> d!2161752 (= (matchRSpec!3916 lt!2465171 (_2!37023 lt!2465172)) e!4155097)))

(assert (= (and d!2161752 c!1282058) b!6899095))

(assert (= (and d!2161752 (not c!1282058)) b!6899093))

(assert (= (and b!6899093 res!2813101) b!6899092))

(assert (= (and b!6899092 c!1282057) b!6899088))

(assert (= (and b!6899092 (not c!1282057)) b!6899089))

(assert (= (and b!6899089 c!1282059) b!6899096))

(assert (= (and b!6899089 (not c!1282059)) b!6899090))

(assert (= (and b!6899096 (not res!2813102)) b!6899094))

(assert (= (and b!6899090 c!1282056) b!6899091))

(assert (= (and b!6899090 (not c!1282056)) b!6899097))

(assert (= (and b!6899091 (not res!2813103)) b!6899098))

(assert (= (or b!6899098 b!6899097) bm!627502))

(assert (= (or b!6899095 b!6899091) bm!627503))

(declare-fun m!7617430 () Bool)

(assert (=> bm!627502 m!7617430))

(declare-fun m!7617432 () Bool)

(assert (=> b!6899094 m!7617432))

(declare-fun m!7617434 () Bool)

(assert (=> b!6899096 m!7617434))

(declare-fun m!7617436 () Bool)

(assert (=> bm!627503 m!7617436))

(assert (=> b!6898564 d!2161752))

(declare-fun d!2161768 () Bool)

(assert (=> d!2161768 (= (matchR!8998 lt!2465171 (_2!37023 lt!2465172)) (matchRSpec!3916 lt!2465171 (_2!37023 lt!2465172)))))

(declare-fun lt!2465256 () Unit!160426)

(assert (=> d!2161768 (= lt!2465256 (choose!51361 lt!2465171 (_2!37023 lt!2465172)))))

(assert (=> d!2161768 (validRegex!8561 lt!2465171)))

(assert (=> d!2161768 (= (mainMatchTheorem!3916 lt!2465171 (_2!37023 lt!2465172)) lt!2465256)))

(declare-fun bs!1841464 () Bool)

(assert (= bs!1841464 d!2161768))

(assert (=> bs!1841464 m!7616954))

(assert (=> bs!1841464 m!7616980))

(declare-fun m!7617438 () Bool)

(assert (=> bs!1841464 m!7617438))

(declare-fun m!7617440 () Bool)

(assert (=> bs!1841464 m!7617440))

(assert (=> b!6898564 d!2161768))

(declare-fun d!2161770 () Bool)

(assert (=> d!2161770 (= (get!23230 lt!2465184) (v!52903 lt!2465184))))

(assert (=> b!6898564 d!2161770))

(declare-fun d!2161772 () Bool)

(declare-fun e!4155124 () Bool)

(assert (=> d!2161772 e!4155124))

(declare-fun res!2813126 () Bool)

(assert (=> d!2161772 (=> res!2813126 e!4155124)))

(declare-fun e!4155125 () Bool)

(assert (=> d!2161772 (= res!2813126 e!4155125)))

(declare-fun res!2813127 () Bool)

(assert (=> d!2161772 (=> (not res!2813127) (not e!4155125))))

(declare-fun lt!2465265 () Option!16632)

(assert (=> d!2161772 (= res!2813127 (isDefined!13335 lt!2465265))))

(declare-fun e!4155126 () Option!16632)

(assert (=> d!2161772 (= lt!2465265 e!4155126)))

(declare-fun c!1282072 () Bool)

(declare-fun e!4155122 () Bool)

(assert (=> d!2161772 (= c!1282072 e!4155122)))

(declare-fun res!2813129 () Bool)

(assert (=> d!2161772 (=> (not res!2813129) (not e!4155122))))

(assert (=> d!2161772 (= res!2813129 (matchR!8998 r2!6280 Nil!66486))))

(assert (=> d!2161772 (validRegex!8561 r2!6280)))

(assert (=> d!2161772 (= (findConcatSeparation!3046 r2!6280 r3!135 Nil!66486 (_2!37023 lt!2465172) (_2!37023 lt!2465172)) lt!2465265)))

(declare-fun b!6899142 () Bool)

(declare-fun e!4155123 () Option!16632)

(assert (=> b!6899142 (= e!4155123 None!16631)))

(declare-fun b!6899143 () Bool)

(declare-fun lt!2465264 () Unit!160426)

(declare-fun lt!2465266 () Unit!160426)

(assert (=> b!6899143 (= lt!2465264 lt!2465266)))

(assert (=> b!6899143 (= (++!14906 (++!14906 Nil!66486 (Cons!66486 (h!72934 (_2!37023 lt!2465172)) Nil!66486)) (t!380353 (_2!37023 lt!2465172))) (_2!37023 lt!2465172))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2791 (List!66610 C!33976 List!66610 List!66610) Unit!160426)

(assert (=> b!6899143 (= lt!2465266 (lemmaMoveElementToOtherListKeepsConcatEq!2791 Nil!66486 (h!72934 (_2!37023 lt!2465172)) (t!380353 (_2!37023 lt!2465172)) (_2!37023 lt!2465172)))))

(assert (=> b!6899143 (= e!4155123 (findConcatSeparation!3046 r2!6280 r3!135 (++!14906 Nil!66486 (Cons!66486 (h!72934 (_2!37023 lt!2465172)) Nil!66486)) (t!380353 (_2!37023 lt!2465172)) (_2!37023 lt!2465172)))))

(declare-fun b!6899144 () Bool)

(assert (=> b!6899144 (= e!4155124 (not (isDefined!13335 lt!2465265)))))

(declare-fun b!6899145 () Bool)

(assert (=> b!6899145 (= e!4155126 e!4155123)))

(declare-fun c!1282071 () Bool)

(assert (=> b!6899145 (= c!1282071 ((_ is Nil!66486) (_2!37023 lt!2465172)))))

(declare-fun b!6899146 () Bool)

(assert (=> b!6899146 (= e!4155125 (= (++!14906 (_1!37023 (get!23230 lt!2465265)) (_2!37023 (get!23230 lt!2465265))) (_2!37023 lt!2465172)))))

(declare-fun b!6899147 () Bool)

(declare-fun res!2813128 () Bool)

(assert (=> b!6899147 (=> (not res!2813128) (not e!4155125))))

(assert (=> b!6899147 (= res!2813128 (matchR!8998 r3!135 (_2!37023 (get!23230 lt!2465265))))))

(declare-fun b!6899148 () Bool)

(assert (=> b!6899148 (= e!4155126 (Some!16631 (tuple2!67441 Nil!66486 (_2!37023 lt!2465172))))))

(declare-fun b!6899149 () Bool)

(assert (=> b!6899149 (= e!4155122 (matchR!8998 r3!135 (_2!37023 lt!2465172)))))

(declare-fun b!6899150 () Bool)

(declare-fun res!2813125 () Bool)

(assert (=> b!6899150 (=> (not res!2813125) (not e!4155125))))

(assert (=> b!6899150 (= res!2813125 (matchR!8998 r2!6280 (_1!37023 (get!23230 lt!2465265))))))

(assert (= (and d!2161772 res!2813129) b!6899149))

(assert (= (and d!2161772 c!1282072) b!6899148))

(assert (= (and d!2161772 (not c!1282072)) b!6899145))

(assert (= (and b!6899145 c!1282071) b!6899142))

(assert (= (and b!6899145 (not c!1282071)) b!6899143))

(assert (= (and d!2161772 res!2813127) b!6899150))

(assert (= (and b!6899150 res!2813125) b!6899147))

(assert (= (and b!6899147 res!2813128) b!6899146))

(assert (= (and d!2161772 (not res!2813126)) b!6899144))

(declare-fun m!7617464 () Bool)

(assert (=> b!6899147 m!7617464))

(declare-fun m!7617466 () Bool)

(assert (=> b!6899147 m!7617466))

(assert (=> b!6899150 m!7617464))

(declare-fun m!7617468 () Bool)

(assert (=> b!6899150 m!7617468))

(assert (=> b!6899146 m!7617464))

(declare-fun m!7617470 () Bool)

(assert (=> b!6899146 m!7617470))

(declare-fun m!7617472 () Bool)

(assert (=> b!6899149 m!7617472))

(declare-fun m!7617474 () Bool)

(assert (=> b!6899143 m!7617474))

(assert (=> b!6899143 m!7617474))

(declare-fun m!7617476 () Bool)

(assert (=> b!6899143 m!7617476))

(declare-fun m!7617478 () Bool)

(assert (=> b!6899143 m!7617478))

(assert (=> b!6899143 m!7617474))

(declare-fun m!7617480 () Bool)

(assert (=> b!6899143 m!7617480))

(declare-fun m!7617482 () Bool)

(assert (=> d!2161772 m!7617482))

(declare-fun m!7617484 () Bool)

(assert (=> d!2161772 m!7617484))

(assert (=> d!2161772 m!7616956))

(assert (=> b!6899144 m!7617482))

(assert (=> b!6898564 d!2161772))

(declare-fun bs!1841538 () Bool)

(declare-fun d!2161784 () Bool)

(assert (= bs!1841538 (and d!2161784 b!6898890)))

(declare-fun lambda!391434 () Int)

(assert (=> bs!1841538 (not (= lambda!391434 lambda!391407))))

(declare-fun bs!1841539 () Bool)

(assert (= bs!1841539 (and d!2161784 b!6898574)))

(assert (=> bs!1841539 (= (and (= (_2!37023 lt!2465172) lt!2465175) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391434 lambda!391383))))

(declare-fun bs!1841540 () Bool)

(assert (= bs!1841540 (and d!2161784 b!6898980)))

(assert (=> bs!1841540 (not (= lambda!391434 lambda!391410))))

(declare-fun bs!1841541 () Bool)

(assert (= bs!1841541 (and d!2161784 b!6899098)))

(assert (=> bs!1841541 (not (= lambda!391434 lambda!391424))))

(declare-fun bs!1841542 () Bool)

(assert (= bs!1841542 (and d!2161784 b!6898998)))

(assert (=> bs!1841542 (not (= lambda!391434 lambda!391418))))

(declare-fun bs!1841543 () Bool)

(assert (= bs!1841543 (and d!2161784 b!6898564)))

(assert (=> bs!1841543 (= lambda!391434 lambda!391381)))

(assert (=> bs!1841543 (not (= lambda!391434 lambda!391382))))

(declare-fun bs!1841544 () Bool)

(assert (= bs!1841544 (and d!2161784 b!6898999)))

(assert (=> bs!1841544 (not (= lambda!391434 lambda!391415))))

(declare-fun bs!1841545 () Bool)

(assert (= bs!1841545 (and d!2161784 b!6898701)))

(assert (=> bs!1841545 (not (= lambda!391434 lambda!391396))))

(assert (=> bs!1841539 (not (= lambda!391434 lambda!391384))))

(declare-fun bs!1841546 () Bool)

(assert (= bs!1841546 (and d!2161784 b!6899097)))

(assert (=> bs!1841546 (not (= lambda!391434 lambda!391426))))

(declare-fun bs!1841547 () Bool)

(assert (= bs!1841547 (and d!2161784 b!6898569)))

(assert (=> bs!1841547 (= (and (= (_2!37023 lt!2465172) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465171)) (= lambda!391434 lambda!391379))))

(declare-fun bs!1841548 () Bool)

(assert (= bs!1841548 (and d!2161784 b!6898702)))

(assert (=> bs!1841548 (not (= lambda!391434 lambda!391394))))

(assert (=> bs!1841547 (not (= lambda!391434 lambda!391380))))

(declare-fun bs!1841549 () Bool)

(assert (= bs!1841549 (and d!2161784 b!6898979)))

(assert (=> bs!1841549 (not (= lambda!391434 lambda!391411))))

(declare-fun bs!1841550 () Bool)

(assert (= bs!1841550 (and d!2161784 b!6898891)))

(assert (=> bs!1841550 (not (= lambda!391434 lambda!391406))))

(assert (=> d!2161784 true))

(assert (=> d!2161784 true))

(assert (=> d!2161784 true))

(assert (=> d!2161784 (= (isDefined!13335 (findConcatSeparation!3046 r2!6280 r3!135 Nil!66486 (_2!37023 lt!2465172) (_2!37023 lt!2465172))) (Exists!3861 lambda!391434))))

(declare-fun lt!2465276 () Unit!160426)

(declare-fun choose!51368 (Regex!16853 Regex!16853 List!66610) Unit!160426)

(assert (=> d!2161784 (= lt!2465276 (choose!51368 r2!6280 r3!135 (_2!37023 lt!2465172)))))

(assert (=> d!2161784 (validRegex!8561 r2!6280)))

(assert (=> d!2161784 (= (lemmaFindConcatSeparationEquivalentToExists!2808 r2!6280 r3!135 (_2!37023 lt!2465172)) lt!2465276)))

(declare-fun bs!1841551 () Bool)

(assert (= bs!1841551 d!2161784))

(assert (=> bs!1841551 m!7616956))

(declare-fun m!7617548 () Bool)

(assert (=> bs!1841551 m!7617548))

(assert (=> bs!1841551 m!7616988))

(declare-fun m!7617550 () Bool)

(assert (=> bs!1841551 m!7617550))

(assert (=> bs!1841551 m!7616988))

(declare-fun m!7617552 () Bool)

(assert (=> bs!1841551 m!7617552))

(assert (=> b!6898564 d!2161784))

(declare-fun d!2161796 () Bool)

(declare-fun e!4155177 () Bool)

(assert (=> d!2161796 e!4155177))

(declare-fun c!1282083 () Bool)

(assert (=> d!2161796 (= c!1282083 ((_ is EmptyExpr!16853) r2!6280))))

(declare-fun lt!2465277 () Bool)

(declare-fun e!4155176 () Bool)

(assert (=> d!2161796 (= lt!2465277 e!4155176)))

(declare-fun c!1282084 () Bool)

(assert (=> d!2161796 (= c!1282084 (isEmpty!38721 (_1!37023 lt!2465180)))))

(assert (=> d!2161796 (validRegex!8561 r2!6280)))

(assert (=> d!2161796 (= (matchR!8998 r2!6280 (_1!37023 lt!2465180)) lt!2465277)))

(declare-fun b!6899271 () Bool)

(declare-fun res!2813157 () Bool)

(declare-fun e!4155175 () Bool)

(assert (=> b!6899271 (=> (not res!2813157) (not e!4155175))))

(declare-fun call!627516 () Bool)

(assert (=> b!6899271 (= res!2813157 (not call!627516))))

(declare-fun b!6899272 () Bool)

(declare-fun e!4155178 () Bool)

(declare-fun e!4155179 () Bool)

(assert (=> b!6899272 (= e!4155178 e!4155179)))

(declare-fun res!2813158 () Bool)

(assert (=> b!6899272 (=> res!2813158 e!4155179)))

(assert (=> b!6899272 (= res!2813158 call!627516)))

(declare-fun b!6899273 () Bool)

(declare-fun e!4155174 () Bool)

(assert (=> b!6899273 (= e!4155174 e!4155178)))

(declare-fun res!2813161 () Bool)

(assert (=> b!6899273 (=> (not res!2813161) (not e!4155178))))

(assert (=> b!6899273 (= res!2813161 (not lt!2465277))))

(declare-fun b!6899274 () Bool)

(assert (=> b!6899274 (= e!4155176 (matchR!8998 (derivativeStep!5383 r2!6280 (head!13836 (_1!37023 lt!2465180))) (tail!12888 (_1!37023 lt!2465180))))))

(declare-fun b!6899275 () Bool)

(declare-fun e!4155173 () Bool)

(assert (=> b!6899275 (= e!4155177 e!4155173)))

(declare-fun c!1282082 () Bool)

(assert (=> b!6899275 (= c!1282082 ((_ is EmptyLang!16853) r2!6280))))

(declare-fun bm!627511 () Bool)

(assert (=> bm!627511 (= call!627516 (isEmpty!38721 (_1!37023 lt!2465180)))))

(declare-fun b!6899276 () Bool)

(assert (=> b!6899276 (= e!4155179 (not (= (head!13836 (_1!37023 lt!2465180)) (c!1281929 r2!6280))))))

(declare-fun b!6899277 () Bool)

(declare-fun res!2813164 () Bool)

(assert (=> b!6899277 (=> res!2813164 e!4155174)))

(assert (=> b!6899277 (= res!2813164 (not ((_ is ElementMatch!16853) r2!6280)))))

(assert (=> b!6899277 (= e!4155173 e!4155174)))

(declare-fun b!6899278 () Bool)

(assert (=> b!6899278 (= e!4155175 (= (head!13836 (_1!37023 lt!2465180)) (c!1281929 r2!6280)))))

(declare-fun b!6899279 () Bool)

(assert (=> b!6899279 (= e!4155176 (nullable!6704 r2!6280))))

(declare-fun b!6899280 () Bool)

(declare-fun res!2813160 () Bool)

(assert (=> b!6899280 (=> res!2813160 e!4155179)))

(assert (=> b!6899280 (= res!2813160 (not (isEmpty!38721 (tail!12888 (_1!37023 lt!2465180)))))))

(declare-fun b!6899281 () Bool)

(assert (=> b!6899281 (= e!4155177 (= lt!2465277 call!627516))))

(declare-fun b!6899282 () Bool)

(declare-fun res!2813163 () Bool)

(assert (=> b!6899282 (=> res!2813163 e!4155174)))

(assert (=> b!6899282 (= res!2813163 e!4155175)))

(declare-fun res!2813159 () Bool)

(assert (=> b!6899282 (=> (not res!2813159) (not e!4155175))))

(assert (=> b!6899282 (= res!2813159 lt!2465277)))

(declare-fun b!6899283 () Bool)

(assert (=> b!6899283 (= e!4155173 (not lt!2465277))))

(declare-fun b!6899284 () Bool)

(declare-fun res!2813162 () Bool)

(assert (=> b!6899284 (=> (not res!2813162) (not e!4155175))))

(assert (=> b!6899284 (= res!2813162 (isEmpty!38721 (tail!12888 (_1!37023 lt!2465180))))))

(assert (= (and d!2161796 c!1282084) b!6899279))

(assert (= (and d!2161796 (not c!1282084)) b!6899274))

(assert (= (and d!2161796 c!1282083) b!6899281))

(assert (= (and d!2161796 (not c!1282083)) b!6899275))

(assert (= (and b!6899275 c!1282082) b!6899283))

(assert (= (and b!6899275 (not c!1282082)) b!6899277))

(assert (= (and b!6899277 (not res!2813164)) b!6899282))

(assert (= (and b!6899282 res!2813159) b!6899271))

(assert (= (and b!6899271 res!2813157) b!6899284))

(assert (= (and b!6899284 res!2813162) b!6899278))

(assert (= (and b!6899282 (not res!2813163)) b!6899273))

(assert (= (and b!6899273 res!2813161) b!6899272))

(assert (= (and b!6899272 (not res!2813158)) b!6899280))

(assert (= (and b!6899280 (not res!2813160)) b!6899276))

(assert (= (or b!6899281 b!6899271 b!6899272) bm!627511))

(declare-fun m!7617554 () Bool)

(assert (=> b!6899279 m!7617554))

(declare-fun m!7617556 () Bool)

(assert (=> b!6899276 m!7617556))

(assert (=> bm!627511 m!7617334))

(declare-fun m!7617558 () Bool)

(assert (=> b!6899280 m!7617558))

(assert (=> b!6899280 m!7617558))

(declare-fun m!7617560 () Bool)

(assert (=> b!6899280 m!7617560))

(assert (=> b!6899284 m!7617558))

(assert (=> b!6899284 m!7617558))

(assert (=> b!6899284 m!7617560))

(assert (=> d!2161796 m!7617334))

(assert (=> d!2161796 m!7616956))

(assert (=> b!6899274 m!7617556))

(assert (=> b!6899274 m!7617556))

(declare-fun m!7617562 () Bool)

(assert (=> b!6899274 m!7617562))

(assert (=> b!6899274 m!7617558))

(assert (=> b!6899274 m!7617562))

(assert (=> b!6899274 m!7617558))

(declare-fun m!7617564 () Bool)

(assert (=> b!6899274 m!7617564))

(assert (=> b!6899278 m!7617556))

(assert (=> b!6898564 d!2161796))

(declare-fun bs!1841552 () Bool)

(declare-fun d!2161798 () Bool)

(assert (= bs!1841552 (and d!2161798 d!2161784)))

(declare-fun lambda!391439 () Int)

(assert (=> bs!1841552 (= lambda!391439 lambda!391434)))

(declare-fun bs!1841553 () Bool)

(assert (= bs!1841553 (and d!2161798 b!6898890)))

(assert (=> bs!1841553 (not (= lambda!391439 lambda!391407))))

(declare-fun bs!1841554 () Bool)

(assert (= bs!1841554 (and d!2161798 b!6898574)))

(assert (=> bs!1841554 (= (and (= (_2!37023 lt!2465172) lt!2465175) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391439 lambda!391383))))

(declare-fun bs!1841555 () Bool)

(assert (= bs!1841555 (and d!2161798 b!6898980)))

(assert (=> bs!1841555 (not (= lambda!391439 lambda!391410))))

(declare-fun bs!1841556 () Bool)

(assert (= bs!1841556 (and d!2161798 b!6899098)))

(assert (=> bs!1841556 (not (= lambda!391439 lambda!391424))))

(declare-fun bs!1841557 () Bool)

(assert (= bs!1841557 (and d!2161798 b!6898998)))

(assert (=> bs!1841557 (not (= lambda!391439 lambda!391418))))

(declare-fun bs!1841558 () Bool)

(assert (= bs!1841558 (and d!2161798 b!6898564)))

(assert (=> bs!1841558 (= lambda!391439 lambda!391381)))

(assert (=> bs!1841558 (not (= lambda!391439 lambda!391382))))

(declare-fun bs!1841559 () Bool)

(assert (= bs!1841559 (and d!2161798 b!6898999)))

(assert (=> bs!1841559 (not (= lambda!391439 lambda!391415))))

(declare-fun bs!1841560 () Bool)

(assert (= bs!1841560 (and d!2161798 b!6898701)))

(assert (=> bs!1841560 (not (= lambda!391439 lambda!391396))))

(assert (=> bs!1841554 (not (= lambda!391439 lambda!391384))))

(declare-fun bs!1841561 () Bool)

(assert (= bs!1841561 (and d!2161798 b!6899097)))

(assert (=> bs!1841561 (not (= lambda!391439 lambda!391426))))

(declare-fun bs!1841562 () Bool)

(assert (= bs!1841562 (and d!2161798 b!6898569)))

(assert (=> bs!1841562 (= (and (= (_2!37023 lt!2465172) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465171)) (= lambda!391439 lambda!391379))))

(declare-fun bs!1841563 () Bool)

(assert (= bs!1841563 (and d!2161798 b!6898702)))

(assert (=> bs!1841563 (not (= lambda!391439 lambda!391394))))

(assert (=> bs!1841562 (not (= lambda!391439 lambda!391380))))

(declare-fun bs!1841564 () Bool)

(assert (= bs!1841564 (and d!2161798 b!6898979)))

(assert (=> bs!1841564 (not (= lambda!391439 lambda!391411))))

(declare-fun bs!1841565 () Bool)

(assert (= bs!1841565 (and d!2161798 b!6898891)))

(assert (=> bs!1841565 (not (= lambda!391439 lambda!391406))))

(assert (=> d!2161798 true))

(assert (=> d!2161798 true))

(assert (=> d!2161798 true))

(declare-fun lambda!391440 () Int)

(assert (=> bs!1841552 (not (= lambda!391440 lambda!391434))))

(assert (=> bs!1841553 (= (and (= (_2!37023 lt!2465172) s!14361) (= r2!6280 (regOne!34218 lt!2465177)) (= r3!135 (regTwo!34218 lt!2465177))) (= lambda!391440 lambda!391407))))

(assert (=> bs!1841555 (not (= lambda!391440 lambda!391410))))

(assert (=> bs!1841556 (not (= lambda!391440 lambda!391424))))

(assert (=> bs!1841557 (= (and (= (_2!37023 lt!2465172) (_1!37023 lt!2465180)) (= r2!6280 (regOne!34218 r2!6280)) (= r3!135 (regTwo!34218 r2!6280))) (= lambda!391440 lambda!391418))))

(assert (=> bs!1841558 (not (= lambda!391440 lambda!391381))))

(assert (=> bs!1841554 (not (= lambda!391440 lambda!391383))))

(declare-fun bs!1841566 () Bool)

(assert (= bs!1841566 d!2161798))

(assert (=> bs!1841566 (not (= lambda!391440 lambda!391439))))

(assert (=> bs!1841558 (= lambda!391440 lambda!391382)))

(assert (=> bs!1841559 (not (= lambda!391440 lambda!391415))))

(assert (=> bs!1841560 (= (and (= (_2!37023 lt!2465172) s!14361) (= r2!6280 (regOne!34218 lt!2465168)) (= r3!135 (regTwo!34218 lt!2465168))) (= lambda!391440 lambda!391396))))

(assert (=> bs!1841554 (= (and (= (_2!37023 lt!2465172) lt!2465175) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391440 lambda!391384))))

(assert (=> bs!1841561 (= (and (= r2!6280 (regOne!34218 lt!2465171)) (= r3!135 (regTwo!34218 lt!2465171))) (= lambda!391440 lambda!391426))))

(assert (=> bs!1841562 (not (= lambda!391440 lambda!391379))))

(assert (=> bs!1841563 (not (= lambda!391440 lambda!391394))))

(assert (=> bs!1841562 (= (and (= (_2!37023 lt!2465172) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465171)) (= lambda!391440 lambda!391380))))

(assert (=> bs!1841564 (= (and (= (_2!37023 lt!2465172) (_2!37023 lt!2465180)) (= r2!6280 (regOne!34218 r3!135)) (= r3!135 (regTwo!34218 r3!135))) (= lambda!391440 lambda!391411))))

(assert (=> bs!1841565 (not (= lambda!391440 lambda!391406))))

(assert (=> d!2161798 true))

(assert (=> d!2161798 true))

(assert (=> d!2161798 true))

(assert (=> d!2161798 (= (Exists!3861 lambda!391439) (Exists!3861 lambda!391440))))

(declare-fun lt!2465280 () Unit!160426)

(declare-fun choose!51369 (Regex!16853 Regex!16853 List!66610) Unit!160426)

(assert (=> d!2161798 (= lt!2465280 (choose!51369 r2!6280 r3!135 (_2!37023 lt!2465172)))))

(assert (=> d!2161798 (validRegex!8561 r2!6280)))

(assert (=> d!2161798 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2334 r2!6280 r3!135 (_2!37023 lt!2465172)) lt!2465280)))

(declare-fun m!7617566 () Bool)

(assert (=> bs!1841566 m!7617566))

(declare-fun m!7617568 () Bool)

(assert (=> bs!1841566 m!7617568))

(declare-fun m!7617570 () Bool)

(assert (=> bs!1841566 m!7617570))

(assert (=> bs!1841566 m!7616956))

(assert (=> b!6898564 d!2161798))

(declare-fun d!2161800 () Bool)

(declare-fun isEmpty!38723 (Option!16632) Bool)

(assert (=> d!2161800 (= (isDefined!13335 lt!2465184) (not (isEmpty!38723 lt!2465184)))))

(declare-fun bs!1841567 () Bool)

(assert (= bs!1841567 d!2161800))

(declare-fun m!7617572 () Bool)

(assert (=> bs!1841567 m!7617572))

(assert (=> b!6898564 d!2161800))

(declare-fun d!2161802 () Bool)

(assert (=> d!2161802 (= (Exists!3861 lambda!391380) (choose!51366 lambda!391380))))

(declare-fun bs!1841568 () Bool)

(assert (= bs!1841568 d!2161802))

(declare-fun m!7617574 () Bool)

(assert (=> bs!1841568 m!7617574))

(assert (=> b!6898569 d!2161802))

(declare-fun d!2161804 () Bool)

(assert (=> d!2161804 (= (get!23230 lt!2465183) (v!52903 lt!2465183))))

(assert (=> b!6898569 d!2161804))

(declare-fun bs!1841569 () Bool)

(declare-fun d!2161806 () Bool)

(assert (= bs!1841569 (and d!2161806 b!6898890)))

(declare-fun lambda!391441 () Int)

(assert (=> bs!1841569 (not (= lambda!391441 lambda!391407))))

(declare-fun bs!1841570 () Bool)

(assert (= bs!1841570 (and d!2161806 b!6898980)))

(assert (=> bs!1841570 (not (= lambda!391441 lambda!391410))))

(declare-fun bs!1841571 () Bool)

(assert (= bs!1841571 (and d!2161806 b!6899098)))

(assert (=> bs!1841571 (not (= lambda!391441 lambda!391424))))

(declare-fun bs!1841572 () Bool)

(assert (= bs!1841572 (and d!2161806 b!6898998)))

(assert (=> bs!1841572 (not (= lambda!391441 lambda!391418))))

(declare-fun bs!1841573 () Bool)

(assert (= bs!1841573 (and d!2161806 b!6898564)))

(assert (=> bs!1841573 (= (and (= s!14361 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= lt!2465171 r3!135)) (= lambda!391441 lambda!391381))))

(declare-fun bs!1841574 () Bool)

(assert (= bs!1841574 (and d!2161806 d!2161798)))

(assert (=> bs!1841574 (not (= lambda!391441 lambda!391440))))

(declare-fun bs!1841575 () Bool)

(assert (= bs!1841575 (and d!2161806 d!2161784)))

(assert (=> bs!1841575 (= (and (= s!14361 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= lt!2465171 r3!135)) (= lambda!391441 lambda!391434))))

(declare-fun bs!1841576 () Bool)

(assert (= bs!1841576 (and d!2161806 b!6898574)))

(assert (=> bs!1841576 (= (and (= s!14361 lt!2465175) (= lt!2465171 r2!6280)) (= lambda!391441 lambda!391383))))

(assert (=> bs!1841574 (= (and (= s!14361 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= lt!2465171 r3!135)) (= lambda!391441 lambda!391439))))

(assert (=> bs!1841573 (not (= lambda!391441 lambda!391382))))

(declare-fun bs!1841577 () Bool)

(assert (= bs!1841577 (and d!2161806 b!6898999)))

(assert (=> bs!1841577 (not (= lambda!391441 lambda!391415))))

(declare-fun bs!1841578 () Bool)

(assert (= bs!1841578 (and d!2161806 b!6898701)))

(assert (=> bs!1841578 (not (= lambda!391441 lambda!391396))))

(assert (=> bs!1841576 (not (= lambda!391441 lambda!391384))))

(declare-fun bs!1841579 () Bool)

(assert (= bs!1841579 (and d!2161806 b!6899097)))

(assert (=> bs!1841579 (not (= lambda!391441 lambda!391426))))

(declare-fun bs!1841580 () Bool)

(assert (= bs!1841580 (and d!2161806 b!6898569)))

(assert (=> bs!1841580 (= lambda!391441 lambda!391379)))

(declare-fun bs!1841581 () Bool)

(assert (= bs!1841581 (and d!2161806 b!6898702)))

(assert (=> bs!1841581 (not (= lambda!391441 lambda!391394))))

(assert (=> bs!1841580 (not (= lambda!391441 lambda!391380))))

(declare-fun bs!1841582 () Bool)

(assert (= bs!1841582 (and d!2161806 b!6898979)))

(assert (=> bs!1841582 (not (= lambda!391441 lambda!391411))))

(declare-fun bs!1841583 () Bool)

(assert (= bs!1841583 (and d!2161806 b!6898891)))

(assert (=> bs!1841583 (not (= lambda!391441 lambda!391406))))

(assert (=> d!2161806 true))

(assert (=> d!2161806 true))

(assert (=> d!2161806 true))

(declare-fun lambda!391442 () Int)

(assert (=> bs!1841569 (= (and (= r1!6342 (regOne!34218 lt!2465177)) (= lt!2465171 (regTwo!34218 lt!2465177))) (= lambda!391442 lambda!391407))))

(assert (=> bs!1841570 (not (= lambda!391442 lambda!391410))))

(declare-fun bs!1841584 () Bool)

(assert (= bs!1841584 d!2161806))

(assert (=> bs!1841584 (not (= lambda!391442 lambda!391441))))

(assert (=> bs!1841571 (not (= lambda!391442 lambda!391424))))

(assert (=> bs!1841572 (= (and (= s!14361 (_1!37023 lt!2465180)) (= r1!6342 (regOne!34218 r2!6280)) (= lt!2465171 (regTwo!34218 r2!6280))) (= lambda!391442 lambda!391418))))

(assert (=> bs!1841573 (not (= lambda!391442 lambda!391381))))

(assert (=> bs!1841574 (= (and (= s!14361 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= lt!2465171 r3!135)) (= lambda!391442 lambda!391440))))

(assert (=> bs!1841575 (not (= lambda!391442 lambda!391434))))

(assert (=> bs!1841576 (not (= lambda!391442 lambda!391383))))

(assert (=> bs!1841574 (not (= lambda!391442 lambda!391439))))

(assert (=> bs!1841573 (= (and (= s!14361 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= lt!2465171 r3!135)) (= lambda!391442 lambda!391382))))

(assert (=> bs!1841577 (not (= lambda!391442 lambda!391415))))

(assert (=> bs!1841578 (= (and (= r1!6342 (regOne!34218 lt!2465168)) (= lt!2465171 (regTwo!34218 lt!2465168))) (= lambda!391442 lambda!391396))))

(assert (=> bs!1841576 (= (and (= s!14361 lt!2465175) (= lt!2465171 r2!6280)) (= lambda!391442 lambda!391384))))

(assert (=> bs!1841579 (= (and (= s!14361 (_2!37023 lt!2465172)) (= r1!6342 (regOne!34218 lt!2465171)) (= lt!2465171 (regTwo!34218 lt!2465171))) (= lambda!391442 lambda!391426))))

(assert (=> bs!1841580 (not (= lambda!391442 lambda!391379))))

(assert (=> bs!1841581 (not (= lambda!391442 lambda!391394))))

(assert (=> bs!1841580 (= lambda!391442 lambda!391380)))

(assert (=> bs!1841582 (= (and (= s!14361 (_2!37023 lt!2465180)) (= r1!6342 (regOne!34218 r3!135)) (= lt!2465171 (regTwo!34218 r3!135))) (= lambda!391442 lambda!391411))))

(assert (=> bs!1841583 (not (= lambda!391442 lambda!391406))))

(assert (=> d!2161806 true))

(assert (=> d!2161806 true))

(assert (=> d!2161806 true))

(assert (=> d!2161806 (= (Exists!3861 lambda!391441) (Exists!3861 lambda!391442))))

(declare-fun lt!2465281 () Unit!160426)

(assert (=> d!2161806 (= lt!2465281 (choose!51369 r1!6342 lt!2465171 s!14361))))

(assert (=> d!2161806 (validRegex!8561 r1!6342)))

(assert (=> d!2161806 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2334 r1!6342 lt!2465171 s!14361) lt!2465281)))

(declare-fun m!7617576 () Bool)

(assert (=> bs!1841584 m!7617576))

(declare-fun m!7617578 () Bool)

(assert (=> bs!1841584 m!7617578))

(declare-fun m!7617580 () Bool)

(assert (=> bs!1841584 m!7617580))

(assert (=> bs!1841584 m!7617042))

(assert (=> b!6898569 d!2161806))

(declare-fun d!2161808 () Bool)

(assert (=> d!2161808 (= (Exists!3861 lambda!391379) (choose!51366 lambda!391379))))

(declare-fun bs!1841585 () Bool)

(assert (= bs!1841585 d!2161808))

(declare-fun m!7617582 () Bool)

(assert (=> bs!1841585 m!7617582))

(assert (=> b!6898569 d!2161808))

(declare-fun bs!1841586 () Bool)

(declare-fun d!2161810 () Bool)

(assert (= bs!1841586 (and d!2161810 b!6898890)))

(declare-fun lambda!391443 () Int)

(assert (=> bs!1841586 (not (= lambda!391443 lambda!391407))))

(declare-fun bs!1841587 () Bool)

(assert (= bs!1841587 (and d!2161810 b!6898980)))

(assert (=> bs!1841587 (not (= lambda!391443 lambda!391410))))

(declare-fun bs!1841588 () Bool)

(assert (= bs!1841588 (and d!2161810 d!2161806)))

(assert (=> bs!1841588 (= lambda!391443 lambda!391441)))

(declare-fun bs!1841589 () Bool)

(assert (= bs!1841589 (and d!2161810 b!6899098)))

(assert (=> bs!1841589 (not (= lambda!391443 lambda!391424))))

(declare-fun bs!1841590 () Bool)

(assert (= bs!1841590 (and d!2161810 b!6898998)))

(assert (=> bs!1841590 (not (= lambda!391443 lambda!391418))))

(assert (=> bs!1841588 (not (= lambda!391443 lambda!391442))))

(declare-fun bs!1841591 () Bool)

(assert (= bs!1841591 (and d!2161810 b!6898564)))

(assert (=> bs!1841591 (= (and (= s!14361 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= lt!2465171 r3!135)) (= lambda!391443 lambda!391381))))

(declare-fun bs!1841592 () Bool)

(assert (= bs!1841592 (and d!2161810 d!2161798)))

(assert (=> bs!1841592 (not (= lambda!391443 lambda!391440))))

(declare-fun bs!1841593 () Bool)

(assert (= bs!1841593 (and d!2161810 d!2161784)))

(assert (=> bs!1841593 (= (and (= s!14361 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= lt!2465171 r3!135)) (= lambda!391443 lambda!391434))))

(declare-fun bs!1841594 () Bool)

(assert (= bs!1841594 (and d!2161810 b!6898574)))

(assert (=> bs!1841594 (= (and (= s!14361 lt!2465175) (= lt!2465171 r2!6280)) (= lambda!391443 lambda!391383))))

(assert (=> bs!1841592 (= (and (= s!14361 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= lt!2465171 r3!135)) (= lambda!391443 lambda!391439))))

(assert (=> bs!1841591 (not (= lambda!391443 lambda!391382))))

(declare-fun bs!1841595 () Bool)

(assert (= bs!1841595 (and d!2161810 b!6898999)))

(assert (=> bs!1841595 (not (= lambda!391443 lambda!391415))))

(declare-fun bs!1841596 () Bool)

(assert (= bs!1841596 (and d!2161810 b!6898701)))

(assert (=> bs!1841596 (not (= lambda!391443 lambda!391396))))

(assert (=> bs!1841594 (not (= lambda!391443 lambda!391384))))

(declare-fun bs!1841597 () Bool)

(assert (= bs!1841597 (and d!2161810 b!6899097)))

(assert (=> bs!1841597 (not (= lambda!391443 lambda!391426))))

(declare-fun bs!1841598 () Bool)

(assert (= bs!1841598 (and d!2161810 b!6898569)))

(assert (=> bs!1841598 (= lambda!391443 lambda!391379)))

(declare-fun bs!1841599 () Bool)

(assert (= bs!1841599 (and d!2161810 b!6898702)))

(assert (=> bs!1841599 (not (= lambda!391443 lambda!391394))))

(assert (=> bs!1841598 (not (= lambda!391443 lambda!391380))))

(declare-fun bs!1841600 () Bool)

(assert (= bs!1841600 (and d!2161810 b!6898979)))

(assert (=> bs!1841600 (not (= lambda!391443 lambda!391411))))

(declare-fun bs!1841601 () Bool)

(assert (= bs!1841601 (and d!2161810 b!6898891)))

(assert (=> bs!1841601 (not (= lambda!391443 lambda!391406))))

(assert (=> d!2161810 true))

(assert (=> d!2161810 true))

(assert (=> d!2161810 true))

(assert (=> d!2161810 (= (isDefined!13335 (findConcatSeparation!3046 r1!6342 lt!2465171 Nil!66486 s!14361 s!14361)) (Exists!3861 lambda!391443))))

(declare-fun lt!2465282 () Unit!160426)

(assert (=> d!2161810 (= lt!2465282 (choose!51368 r1!6342 lt!2465171 s!14361))))

(assert (=> d!2161810 (validRegex!8561 r1!6342)))

(assert (=> d!2161810 (= (lemmaFindConcatSeparationEquivalentToExists!2808 r1!6342 lt!2465171 s!14361) lt!2465282)))

(declare-fun bs!1841602 () Bool)

(assert (= bs!1841602 d!2161810))

(assert (=> bs!1841602 m!7617042))

(declare-fun m!7617584 () Bool)

(assert (=> bs!1841602 m!7617584))

(assert (=> bs!1841602 m!7617038))

(declare-fun m!7617586 () Bool)

(assert (=> bs!1841602 m!7617586))

(assert (=> bs!1841602 m!7617038))

(declare-fun m!7617588 () Bool)

(assert (=> bs!1841602 m!7617588))

(assert (=> b!6898569 d!2161810))

(declare-fun d!2161812 () Bool)

(declare-fun e!4155188 () Bool)

(assert (=> d!2161812 e!4155188))

(declare-fun c!1282086 () Bool)

(assert (=> d!2161812 (= c!1282086 ((_ is EmptyExpr!16853) r1!6342))))

(declare-fun lt!2465283 () Bool)

(declare-fun e!4155187 () Bool)

(assert (=> d!2161812 (= lt!2465283 e!4155187)))

(declare-fun c!1282087 () Bool)

(assert (=> d!2161812 (= c!1282087 (isEmpty!38721 (_1!37023 lt!2465172)))))

(assert (=> d!2161812 (validRegex!8561 r1!6342)))

(assert (=> d!2161812 (= (matchR!8998 r1!6342 (_1!37023 lt!2465172)) lt!2465283)))

(declare-fun b!6899293 () Bool)

(declare-fun res!2813173 () Bool)

(declare-fun e!4155186 () Bool)

(assert (=> b!6899293 (=> (not res!2813173) (not e!4155186))))

(declare-fun call!627517 () Bool)

(assert (=> b!6899293 (= res!2813173 (not call!627517))))

(declare-fun b!6899294 () Bool)

(declare-fun e!4155189 () Bool)

(declare-fun e!4155190 () Bool)

(assert (=> b!6899294 (= e!4155189 e!4155190)))

(declare-fun res!2813174 () Bool)

(assert (=> b!6899294 (=> res!2813174 e!4155190)))

(assert (=> b!6899294 (= res!2813174 call!627517)))

(declare-fun b!6899295 () Bool)

(declare-fun e!4155185 () Bool)

(assert (=> b!6899295 (= e!4155185 e!4155189)))

(declare-fun res!2813177 () Bool)

(assert (=> b!6899295 (=> (not res!2813177) (not e!4155189))))

(assert (=> b!6899295 (= res!2813177 (not lt!2465283))))

(declare-fun b!6899296 () Bool)

(assert (=> b!6899296 (= e!4155187 (matchR!8998 (derivativeStep!5383 r1!6342 (head!13836 (_1!37023 lt!2465172))) (tail!12888 (_1!37023 lt!2465172))))))

(declare-fun b!6899297 () Bool)

(declare-fun e!4155184 () Bool)

(assert (=> b!6899297 (= e!4155188 e!4155184)))

(declare-fun c!1282085 () Bool)

(assert (=> b!6899297 (= c!1282085 ((_ is EmptyLang!16853) r1!6342))))

(declare-fun bm!627512 () Bool)

(assert (=> bm!627512 (= call!627517 (isEmpty!38721 (_1!37023 lt!2465172)))))

(declare-fun b!6899298 () Bool)

(assert (=> b!6899298 (= e!4155190 (not (= (head!13836 (_1!37023 lt!2465172)) (c!1281929 r1!6342))))))

(declare-fun b!6899299 () Bool)

(declare-fun res!2813180 () Bool)

(assert (=> b!6899299 (=> res!2813180 e!4155185)))

(assert (=> b!6899299 (= res!2813180 (not ((_ is ElementMatch!16853) r1!6342)))))

(assert (=> b!6899299 (= e!4155184 e!4155185)))

(declare-fun b!6899300 () Bool)

(assert (=> b!6899300 (= e!4155186 (= (head!13836 (_1!37023 lt!2465172)) (c!1281929 r1!6342)))))

(declare-fun b!6899301 () Bool)

(assert (=> b!6899301 (= e!4155187 (nullable!6704 r1!6342))))

(declare-fun b!6899302 () Bool)

(declare-fun res!2813176 () Bool)

(assert (=> b!6899302 (=> res!2813176 e!4155190)))

(assert (=> b!6899302 (= res!2813176 (not (isEmpty!38721 (tail!12888 (_1!37023 lt!2465172)))))))

(declare-fun b!6899303 () Bool)

(assert (=> b!6899303 (= e!4155188 (= lt!2465283 call!627517))))

(declare-fun b!6899304 () Bool)

(declare-fun res!2813179 () Bool)

(assert (=> b!6899304 (=> res!2813179 e!4155185)))

(assert (=> b!6899304 (= res!2813179 e!4155186)))

(declare-fun res!2813175 () Bool)

(assert (=> b!6899304 (=> (not res!2813175) (not e!4155186))))

(assert (=> b!6899304 (= res!2813175 lt!2465283)))

(declare-fun b!6899305 () Bool)

(assert (=> b!6899305 (= e!4155184 (not lt!2465283))))

(declare-fun b!6899306 () Bool)

(declare-fun res!2813178 () Bool)

(assert (=> b!6899306 (=> (not res!2813178) (not e!4155186))))

(assert (=> b!6899306 (= res!2813178 (isEmpty!38721 (tail!12888 (_1!37023 lt!2465172))))))

(assert (= (and d!2161812 c!1282087) b!6899301))

(assert (= (and d!2161812 (not c!1282087)) b!6899296))

(assert (= (and d!2161812 c!1282086) b!6899303))

(assert (= (and d!2161812 (not c!1282086)) b!6899297))

(assert (= (and b!6899297 c!1282085) b!6899305))

(assert (= (and b!6899297 (not c!1282085)) b!6899299))

(assert (= (and b!6899299 (not res!2813180)) b!6899304))

(assert (= (and b!6899304 res!2813175) b!6899293))

(assert (= (and b!6899293 res!2813173) b!6899306))

(assert (= (and b!6899306 res!2813178) b!6899300))

(assert (= (and b!6899304 (not res!2813179)) b!6899295))

(assert (= (and b!6899295 res!2813177) b!6899294))

(assert (= (and b!6899294 (not res!2813174)) b!6899302))

(assert (= (and b!6899302 (not res!2813176)) b!6899298))

(assert (= (or b!6899303 b!6899293 b!6899294) bm!627512))

(declare-fun m!7617590 () Bool)

(assert (=> b!6899301 m!7617590))

(declare-fun m!7617592 () Bool)

(assert (=> b!6899298 m!7617592))

(declare-fun m!7617594 () Bool)

(assert (=> bm!627512 m!7617594))

(declare-fun m!7617596 () Bool)

(assert (=> b!6899302 m!7617596))

(assert (=> b!6899302 m!7617596))

(declare-fun m!7617598 () Bool)

(assert (=> b!6899302 m!7617598))

(assert (=> b!6899306 m!7617596))

(assert (=> b!6899306 m!7617596))

(assert (=> b!6899306 m!7617598))

(assert (=> d!2161812 m!7617594))

(assert (=> d!2161812 m!7617042))

(assert (=> b!6899296 m!7617592))

(assert (=> b!6899296 m!7617592))

(declare-fun m!7617600 () Bool)

(assert (=> b!6899296 m!7617600))

(assert (=> b!6899296 m!7617596))

(assert (=> b!6899296 m!7617600))

(assert (=> b!6899296 m!7617596))

(declare-fun m!7617602 () Bool)

(assert (=> b!6899296 m!7617602))

(assert (=> b!6899300 m!7617592))

(assert (=> b!6898569 d!2161812))

(declare-fun bs!1841603 () Bool)

(declare-fun b!6899317 () Bool)

(assert (= bs!1841603 (and b!6899317 b!6898890)))

(declare-fun lambda!391444 () Int)

(assert (=> bs!1841603 (not (= lambda!391444 lambda!391407))))

(declare-fun bs!1841604 () Bool)

(assert (= bs!1841604 (and b!6899317 b!6898980)))

(assert (=> bs!1841604 (= (and (= (_1!37023 lt!2465172) (_2!37023 lt!2465180)) (= (reg!17182 r1!6342) (reg!17182 r3!135)) (= r1!6342 r3!135)) (= lambda!391444 lambda!391410))))

(declare-fun bs!1841605 () Bool)

(assert (= bs!1841605 (and b!6899317 d!2161806)))

(assert (=> bs!1841605 (not (= lambda!391444 lambda!391441))))

(declare-fun bs!1841606 () Bool)

(assert (= bs!1841606 (and b!6899317 b!6899098)))

(assert (=> bs!1841606 (= (and (= (_1!37023 lt!2465172) (_2!37023 lt!2465172)) (= (reg!17182 r1!6342) (reg!17182 lt!2465171)) (= r1!6342 lt!2465171)) (= lambda!391444 lambda!391424))))

(declare-fun bs!1841607 () Bool)

(assert (= bs!1841607 (and b!6899317 d!2161810)))

(assert (=> bs!1841607 (not (= lambda!391444 lambda!391443))))

(declare-fun bs!1841608 () Bool)

(assert (= bs!1841608 (and b!6899317 b!6898998)))

(assert (=> bs!1841608 (not (= lambda!391444 lambda!391418))))

(assert (=> bs!1841605 (not (= lambda!391444 lambda!391442))))

(declare-fun bs!1841609 () Bool)

(assert (= bs!1841609 (and b!6899317 b!6898564)))

(assert (=> bs!1841609 (not (= lambda!391444 lambda!391381))))

(declare-fun bs!1841610 () Bool)

(assert (= bs!1841610 (and b!6899317 d!2161798)))

(assert (=> bs!1841610 (not (= lambda!391444 lambda!391440))))

(declare-fun bs!1841611 () Bool)

(assert (= bs!1841611 (and b!6899317 d!2161784)))

(assert (=> bs!1841611 (not (= lambda!391444 lambda!391434))))

(declare-fun bs!1841612 () Bool)

(assert (= bs!1841612 (and b!6899317 b!6898574)))

(assert (=> bs!1841612 (not (= lambda!391444 lambda!391383))))

(assert (=> bs!1841610 (not (= lambda!391444 lambda!391439))))

(assert (=> bs!1841609 (not (= lambda!391444 lambda!391382))))

(declare-fun bs!1841613 () Bool)

(assert (= bs!1841613 (and b!6899317 b!6898999)))

(assert (=> bs!1841613 (= (and (= (_1!37023 lt!2465172) (_1!37023 lt!2465180)) (= (reg!17182 r1!6342) (reg!17182 r2!6280)) (= r1!6342 r2!6280)) (= lambda!391444 lambda!391415))))

(declare-fun bs!1841614 () Bool)

(assert (= bs!1841614 (and b!6899317 b!6898701)))

(assert (=> bs!1841614 (not (= lambda!391444 lambda!391396))))

(assert (=> bs!1841612 (not (= lambda!391444 lambda!391384))))

(declare-fun bs!1841615 () Bool)

(assert (= bs!1841615 (and b!6899317 b!6899097)))

(assert (=> bs!1841615 (not (= lambda!391444 lambda!391426))))

(declare-fun bs!1841616 () Bool)

(assert (= bs!1841616 (and b!6899317 b!6898569)))

(assert (=> bs!1841616 (not (= lambda!391444 lambda!391379))))

(declare-fun bs!1841617 () Bool)

(assert (= bs!1841617 (and b!6899317 b!6898702)))

(assert (=> bs!1841617 (= (and (= (_1!37023 lt!2465172) s!14361) (= (reg!17182 r1!6342) (reg!17182 lt!2465168)) (= r1!6342 lt!2465168)) (= lambda!391444 lambda!391394))))

(assert (=> bs!1841616 (not (= lambda!391444 lambda!391380))))

(declare-fun bs!1841618 () Bool)

(assert (= bs!1841618 (and b!6899317 b!6898979)))

(assert (=> bs!1841618 (not (= lambda!391444 lambda!391411))))

(declare-fun bs!1841619 () Bool)

(assert (= bs!1841619 (and b!6899317 b!6898891)))

(assert (=> bs!1841619 (= (and (= (_1!37023 lt!2465172) s!14361) (= (reg!17182 r1!6342) (reg!17182 lt!2465177)) (= r1!6342 lt!2465177)) (= lambda!391444 lambda!391406))))

(assert (=> b!6899317 true))

(assert (=> b!6899317 true))

(declare-fun bs!1841620 () Bool)

(declare-fun b!6899316 () Bool)

(assert (= bs!1841620 (and b!6899316 b!6898890)))

(declare-fun lambda!391445 () Int)

(assert (=> bs!1841620 (= (and (= (_1!37023 lt!2465172) s!14361) (= (regOne!34218 r1!6342) (regOne!34218 lt!2465177)) (= (regTwo!34218 r1!6342) (regTwo!34218 lt!2465177))) (= lambda!391445 lambda!391407))))

(declare-fun bs!1841621 () Bool)

(assert (= bs!1841621 (and b!6899316 b!6898980)))

(assert (=> bs!1841621 (not (= lambda!391445 lambda!391410))))

(declare-fun bs!1841622 () Bool)

(assert (= bs!1841622 (and b!6899316 d!2161806)))

(assert (=> bs!1841622 (not (= lambda!391445 lambda!391441))))

(declare-fun bs!1841623 () Bool)

(assert (= bs!1841623 (and b!6899316 b!6899098)))

(assert (=> bs!1841623 (not (= lambda!391445 lambda!391424))))

(declare-fun bs!1841624 () Bool)

(assert (= bs!1841624 (and b!6899316 d!2161810)))

(assert (=> bs!1841624 (not (= lambda!391445 lambda!391443))))

(declare-fun bs!1841625 () Bool)

(assert (= bs!1841625 (and b!6899316 b!6898998)))

(assert (=> bs!1841625 (= (and (= (_1!37023 lt!2465172) (_1!37023 lt!2465180)) (= (regOne!34218 r1!6342) (regOne!34218 r2!6280)) (= (regTwo!34218 r1!6342) (regTwo!34218 r2!6280))) (= lambda!391445 lambda!391418))))

(declare-fun bs!1841626 () Bool)

(assert (= bs!1841626 (and b!6899316 b!6899317)))

(assert (=> bs!1841626 (not (= lambda!391445 lambda!391444))))

(assert (=> bs!1841622 (= (and (= (_1!37023 lt!2465172) s!14361) (= (regOne!34218 r1!6342) r1!6342) (= (regTwo!34218 r1!6342) lt!2465171)) (= lambda!391445 lambda!391442))))

(declare-fun bs!1841627 () Bool)

(assert (= bs!1841627 (and b!6899316 b!6898564)))

(assert (=> bs!1841627 (not (= lambda!391445 lambda!391381))))

(declare-fun bs!1841628 () Bool)

(assert (= bs!1841628 (and b!6899316 d!2161798)))

(assert (=> bs!1841628 (= (and (= (_1!37023 lt!2465172) (_2!37023 lt!2465172)) (= (regOne!34218 r1!6342) r2!6280) (= (regTwo!34218 r1!6342) r3!135)) (= lambda!391445 lambda!391440))))

(declare-fun bs!1841629 () Bool)

(assert (= bs!1841629 (and b!6899316 d!2161784)))

(assert (=> bs!1841629 (not (= lambda!391445 lambda!391434))))

(declare-fun bs!1841630 () Bool)

(assert (= bs!1841630 (and b!6899316 b!6898574)))

(assert (=> bs!1841630 (not (= lambda!391445 lambda!391383))))

(assert (=> bs!1841628 (not (= lambda!391445 lambda!391439))))

(assert (=> bs!1841627 (= (and (= (_1!37023 lt!2465172) (_2!37023 lt!2465172)) (= (regOne!34218 r1!6342) r2!6280) (= (regTwo!34218 r1!6342) r3!135)) (= lambda!391445 lambda!391382))))

(declare-fun bs!1841631 () Bool)

(assert (= bs!1841631 (and b!6899316 b!6898999)))

(assert (=> bs!1841631 (not (= lambda!391445 lambda!391415))))

(declare-fun bs!1841632 () Bool)

(assert (= bs!1841632 (and b!6899316 b!6898701)))

(assert (=> bs!1841632 (= (and (= (_1!37023 lt!2465172) s!14361) (= (regOne!34218 r1!6342) (regOne!34218 lt!2465168)) (= (regTwo!34218 r1!6342) (regTwo!34218 lt!2465168))) (= lambda!391445 lambda!391396))))

(assert (=> bs!1841630 (= (and (= (_1!37023 lt!2465172) lt!2465175) (= (regOne!34218 r1!6342) r1!6342) (= (regTwo!34218 r1!6342) r2!6280)) (= lambda!391445 lambda!391384))))

(declare-fun bs!1841633 () Bool)

(assert (= bs!1841633 (and b!6899316 b!6899097)))

(assert (=> bs!1841633 (= (and (= (_1!37023 lt!2465172) (_2!37023 lt!2465172)) (= (regOne!34218 r1!6342) (regOne!34218 lt!2465171)) (= (regTwo!34218 r1!6342) (regTwo!34218 lt!2465171))) (= lambda!391445 lambda!391426))))

(declare-fun bs!1841634 () Bool)

(assert (= bs!1841634 (and b!6899316 b!6898569)))

(assert (=> bs!1841634 (not (= lambda!391445 lambda!391379))))

(declare-fun bs!1841635 () Bool)

(assert (= bs!1841635 (and b!6899316 b!6898702)))

(assert (=> bs!1841635 (not (= lambda!391445 lambda!391394))))

(assert (=> bs!1841634 (= (and (= (_1!37023 lt!2465172) s!14361) (= (regOne!34218 r1!6342) r1!6342) (= (regTwo!34218 r1!6342) lt!2465171)) (= lambda!391445 lambda!391380))))

(declare-fun bs!1841636 () Bool)

(assert (= bs!1841636 (and b!6899316 b!6898979)))

(assert (=> bs!1841636 (= (and (= (_1!37023 lt!2465172) (_2!37023 lt!2465180)) (= (regOne!34218 r1!6342) (regOne!34218 r3!135)) (= (regTwo!34218 r1!6342) (regTwo!34218 r3!135))) (= lambda!391445 lambda!391411))))

(declare-fun bs!1841637 () Bool)

(assert (= bs!1841637 (and b!6899316 b!6898891)))

(assert (=> bs!1841637 (not (= lambda!391445 lambda!391406))))

(assert (=> b!6899316 true))

(assert (=> b!6899316 true))

(declare-fun b!6899307 () Bool)

(declare-fun e!4155192 () Bool)

(assert (=> b!6899307 (= e!4155192 (= (_1!37023 lt!2465172) (Cons!66486 (c!1281929 r1!6342) Nil!66486)))))

(declare-fun b!6899308 () Bool)

(declare-fun c!1282091 () Bool)

(assert (=> b!6899308 (= c!1282091 ((_ is Union!16853) r1!6342))))

(declare-fun e!4155194 () Bool)

(assert (=> b!6899308 (= e!4155192 e!4155194)))

(declare-fun b!6899309 () Bool)

(declare-fun e!4155195 () Bool)

(assert (=> b!6899309 (= e!4155194 e!4155195)))

(declare-fun c!1282088 () Bool)

(assert (=> b!6899309 (= c!1282088 ((_ is Star!16853) r1!6342))))

(declare-fun b!6899310 () Bool)

(declare-fun res!2813183 () Bool)

(declare-fun e!4155191 () Bool)

(assert (=> b!6899310 (=> res!2813183 e!4155191)))

(declare-fun call!627519 () Bool)

(assert (=> b!6899310 (= res!2813183 call!627519)))

(assert (=> b!6899310 (= e!4155195 e!4155191)))

(declare-fun b!6899311 () Bool)

(declare-fun c!1282089 () Bool)

(assert (=> b!6899311 (= c!1282089 ((_ is ElementMatch!16853) r1!6342))))

(declare-fun e!4155193 () Bool)

(assert (=> b!6899311 (= e!4155193 e!4155192)))

(declare-fun bm!627513 () Bool)

(declare-fun call!627518 () Bool)

(assert (=> bm!627513 (= call!627518 (Exists!3861 (ite c!1282088 lambda!391444 lambda!391445)))))

(declare-fun b!6899313 () Bool)

(declare-fun e!4155196 () Bool)

(assert (=> b!6899313 (= e!4155196 (matchRSpec!3916 (regTwo!34219 r1!6342) (_1!37023 lt!2465172)))))

(declare-fun b!6899314 () Bool)

(declare-fun e!4155197 () Bool)

(assert (=> b!6899314 (= e!4155197 call!627519)))

(declare-fun b!6899315 () Bool)

(assert (=> b!6899315 (= e!4155194 e!4155196)))

(declare-fun res!2813182 () Bool)

(assert (=> b!6899315 (= res!2813182 (matchRSpec!3916 (regOne!34219 r1!6342) (_1!37023 lt!2465172)))))

(assert (=> b!6899315 (=> res!2813182 e!4155196)))

(assert (=> b!6899316 (= e!4155195 call!627518)))

(assert (=> b!6899317 (= e!4155191 call!627518)))

(declare-fun bm!627514 () Bool)

(assert (=> bm!627514 (= call!627519 (isEmpty!38721 (_1!37023 lt!2465172)))))

(declare-fun b!6899312 () Bool)

(assert (=> b!6899312 (= e!4155197 e!4155193)))

(declare-fun res!2813181 () Bool)

(assert (=> b!6899312 (= res!2813181 (not ((_ is EmptyLang!16853) r1!6342)))))

(assert (=> b!6899312 (=> (not res!2813181) (not e!4155193))))

(declare-fun d!2161814 () Bool)

(declare-fun c!1282090 () Bool)

(assert (=> d!2161814 (= c!1282090 ((_ is EmptyExpr!16853) r1!6342))))

(assert (=> d!2161814 (= (matchRSpec!3916 r1!6342 (_1!37023 lt!2465172)) e!4155197)))

(assert (= (and d!2161814 c!1282090) b!6899314))

(assert (= (and d!2161814 (not c!1282090)) b!6899312))

(assert (= (and b!6899312 res!2813181) b!6899311))

(assert (= (and b!6899311 c!1282089) b!6899307))

(assert (= (and b!6899311 (not c!1282089)) b!6899308))

(assert (= (and b!6899308 c!1282091) b!6899315))

(assert (= (and b!6899308 (not c!1282091)) b!6899309))

(assert (= (and b!6899315 (not res!2813182)) b!6899313))

(assert (= (and b!6899309 c!1282088) b!6899310))

(assert (= (and b!6899309 (not c!1282088)) b!6899316))

(assert (= (and b!6899310 (not res!2813183)) b!6899317))

(assert (= (or b!6899317 b!6899316) bm!627513))

(assert (= (or b!6899314 b!6899310) bm!627514))

(declare-fun m!7617604 () Bool)

(assert (=> bm!627513 m!7617604))

(declare-fun m!7617606 () Bool)

(assert (=> b!6899313 m!7617606))

(declare-fun m!7617608 () Bool)

(assert (=> b!6899315 m!7617608))

(assert (=> bm!627514 m!7617594))

(assert (=> b!6898569 d!2161814))

(declare-fun d!2161816 () Bool)

(assert (=> d!2161816 (= (matchR!8998 r1!6342 (_1!37023 lt!2465172)) (matchRSpec!3916 r1!6342 (_1!37023 lt!2465172)))))

(declare-fun lt!2465284 () Unit!160426)

(assert (=> d!2161816 (= lt!2465284 (choose!51361 r1!6342 (_1!37023 lt!2465172)))))

(assert (=> d!2161816 (validRegex!8561 r1!6342)))

(assert (=> d!2161816 (= (mainMatchTheorem!3916 r1!6342 (_1!37023 lt!2465172)) lt!2465284)))

(declare-fun bs!1841638 () Bool)

(assert (= bs!1841638 d!2161816))

(assert (=> bs!1841638 m!7616972))

(assert (=> bs!1841638 m!7616962))

(declare-fun m!7617610 () Bool)

(assert (=> bs!1841638 m!7617610))

(assert (=> bs!1841638 m!7617042))

(assert (=> b!6898569 d!2161816))

(declare-fun bs!1841639 () Bool)

(declare-fun b!6899328 () Bool)

(assert (= bs!1841639 (and b!6899328 b!6898890)))

(declare-fun lambda!391446 () Int)

(assert (=> bs!1841639 (not (= lambda!391446 lambda!391407))))

(declare-fun bs!1841640 () Bool)

(assert (= bs!1841640 (and b!6899328 b!6898980)))

(assert (=> bs!1841640 (= (and (= lt!2465175 (_2!37023 lt!2465180)) (= (reg!17182 lt!2465173) (reg!17182 r3!135)) (= lt!2465173 r3!135)) (= lambda!391446 lambda!391410))))

(declare-fun bs!1841641 () Bool)

(assert (= bs!1841641 (and b!6899328 d!2161806)))

(assert (=> bs!1841641 (not (= lambda!391446 lambda!391441))))

(declare-fun bs!1841642 () Bool)

(assert (= bs!1841642 (and b!6899328 b!6899098)))

(assert (=> bs!1841642 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= (reg!17182 lt!2465173) (reg!17182 lt!2465171)) (= lt!2465173 lt!2465171)) (= lambda!391446 lambda!391424))))

(declare-fun bs!1841643 () Bool)

(assert (= bs!1841643 (and b!6899328 d!2161810)))

(assert (=> bs!1841643 (not (= lambda!391446 lambda!391443))))

(declare-fun bs!1841644 () Bool)

(assert (= bs!1841644 (and b!6899328 b!6898998)))

(assert (=> bs!1841644 (not (= lambda!391446 lambda!391418))))

(declare-fun bs!1841645 () Bool)

(assert (= bs!1841645 (and b!6899328 b!6899317)))

(assert (=> bs!1841645 (= (and (= lt!2465175 (_1!37023 lt!2465172)) (= (reg!17182 lt!2465173) (reg!17182 r1!6342)) (= lt!2465173 r1!6342)) (= lambda!391446 lambda!391444))))

(declare-fun bs!1841646 () Bool)

(assert (= bs!1841646 (and b!6899328 b!6899316)))

(assert (=> bs!1841646 (not (= lambda!391446 lambda!391445))))

(assert (=> bs!1841641 (not (= lambda!391446 lambda!391442))))

(declare-fun bs!1841647 () Bool)

(assert (= bs!1841647 (and b!6899328 b!6898564)))

(assert (=> bs!1841647 (not (= lambda!391446 lambda!391381))))

(declare-fun bs!1841648 () Bool)

(assert (= bs!1841648 (and b!6899328 d!2161798)))

(assert (=> bs!1841648 (not (= lambda!391446 lambda!391440))))

(declare-fun bs!1841649 () Bool)

(assert (= bs!1841649 (and b!6899328 d!2161784)))

(assert (=> bs!1841649 (not (= lambda!391446 lambda!391434))))

(declare-fun bs!1841650 () Bool)

(assert (= bs!1841650 (and b!6899328 b!6898574)))

(assert (=> bs!1841650 (not (= lambda!391446 lambda!391383))))

(assert (=> bs!1841648 (not (= lambda!391446 lambda!391439))))

(assert (=> bs!1841647 (not (= lambda!391446 lambda!391382))))

(declare-fun bs!1841651 () Bool)

(assert (= bs!1841651 (and b!6899328 b!6898999)))

(assert (=> bs!1841651 (= (and (= lt!2465175 (_1!37023 lt!2465180)) (= (reg!17182 lt!2465173) (reg!17182 r2!6280)) (= lt!2465173 r2!6280)) (= lambda!391446 lambda!391415))))

(declare-fun bs!1841652 () Bool)

(assert (= bs!1841652 (and b!6899328 b!6898701)))

(assert (=> bs!1841652 (not (= lambda!391446 lambda!391396))))

(assert (=> bs!1841650 (not (= lambda!391446 lambda!391384))))

(declare-fun bs!1841653 () Bool)

(assert (= bs!1841653 (and b!6899328 b!6899097)))

(assert (=> bs!1841653 (not (= lambda!391446 lambda!391426))))

(declare-fun bs!1841654 () Bool)

(assert (= bs!1841654 (and b!6899328 b!6898569)))

(assert (=> bs!1841654 (not (= lambda!391446 lambda!391379))))

(declare-fun bs!1841655 () Bool)

(assert (= bs!1841655 (and b!6899328 b!6898702)))

(assert (=> bs!1841655 (= (and (= lt!2465175 s!14361) (= (reg!17182 lt!2465173) (reg!17182 lt!2465168)) (= lt!2465173 lt!2465168)) (= lambda!391446 lambda!391394))))

(assert (=> bs!1841654 (not (= lambda!391446 lambda!391380))))

(declare-fun bs!1841656 () Bool)

(assert (= bs!1841656 (and b!6899328 b!6898979)))

(assert (=> bs!1841656 (not (= lambda!391446 lambda!391411))))

(declare-fun bs!1841657 () Bool)

(assert (= bs!1841657 (and b!6899328 b!6898891)))

(assert (=> bs!1841657 (= (and (= lt!2465175 s!14361) (= (reg!17182 lt!2465173) (reg!17182 lt!2465177)) (= lt!2465173 lt!2465177)) (= lambda!391446 lambda!391406))))

(assert (=> b!6899328 true))

(assert (=> b!6899328 true))

(declare-fun bs!1841658 () Bool)

(declare-fun b!6899327 () Bool)

(assert (= bs!1841658 (and b!6899327 b!6898890)))

(declare-fun lambda!391447 () Int)

(assert (=> bs!1841658 (= (and (= lt!2465175 s!14361) (= (regOne!34218 lt!2465173) (regOne!34218 lt!2465177)) (= (regTwo!34218 lt!2465173) (regTwo!34218 lt!2465177))) (= lambda!391447 lambda!391407))))

(declare-fun bs!1841659 () Bool)

(assert (= bs!1841659 (and b!6899327 b!6898980)))

(assert (=> bs!1841659 (not (= lambda!391447 lambda!391410))))

(declare-fun bs!1841660 () Bool)

(assert (= bs!1841660 (and b!6899327 d!2161806)))

(assert (=> bs!1841660 (not (= lambda!391447 lambda!391441))))

(declare-fun bs!1841661 () Bool)

(assert (= bs!1841661 (and b!6899327 b!6899098)))

(assert (=> bs!1841661 (not (= lambda!391447 lambda!391424))))

(declare-fun bs!1841662 () Bool)

(assert (= bs!1841662 (and b!6899327 d!2161810)))

(assert (=> bs!1841662 (not (= lambda!391447 lambda!391443))))

(declare-fun bs!1841663 () Bool)

(assert (= bs!1841663 (and b!6899327 b!6898998)))

(assert (=> bs!1841663 (= (and (= lt!2465175 (_1!37023 lt!2465180)) (= (regOne!34218 lt!2465173) (regOne!34218 r2!6280)) (= (regTwo!34218 lt!2465173) (regTwo!34218 r2!6280))) (= lambda!391447 lambda!391418))))

(declare-fun bs!1841664 () Bool)

(assert (= bs!1841664 (and b!6899327 b!6899328)))

(assert (=> bs!1841664 (not (= lambda!391447 lambda!391446))))

(declare-fun bs!1841665 () Bool)

(assert (= bs!1841665 (and b!6899327 b!6899317)))

(assert (=> bs!1841665 (not (= lambda!391447 lambda!391444))))

(declare-fun bs!1841666 () Bool)

(assert (= bs!1841666 (and b!6899327 b!6899316)))

(assert (=> bs!1841666 (= (and (= lt!2465175 (_1!37023 lt!2465172)) (= (regOne!34218 lt!2465173) (regOne!34218 r1!6342)) (= (regTwo!34218 lt!2465173) (regTwo!34218 r1!6342))) (= lambda!391447 lambda!391445))))

(assert (=> bs!1841660 (= (and (= lt!2465175 s!14361) (= (regOne!34218 lt!2465173) r1!6342) (= (regTwo!34218 lt!2465173) lt!2465171)) (= lambda!391447 lambda!391442))))

(declare-fun bs!1841667 () Bool)

(assert (= bs!1841667 (and b!6899327 b!6898564)))

(assert (=> bs!1841667 (not (= lambda!391447 lambda!391381))))

(declare-fun bs!1841668 () Bool)

(assert (= bs!1841668 (and b!6899327 d!2161798)))

(assert (=> bs!1841668 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= (regOne!34218 lt!2465173) r2!6280) (= (regTwo!34218 lt!2465173) r3!135)) (= lambda!391447 lambda!391440))))

(declare-fun bs!1841669 () Bool)

(assert (= bs!1841669 (and b!6899327 d!2161784)))

(assert (=> bs!1841669 (not (= lambda!391447 lambda!391434))))

(declare-fun bs!1841670 () Bool)

(assert (= bs!1841670 (and b!6899327 b!6898574)))

(assert (=> bs!1841670 (not (= lambda!391447 lambda!391383))))

(assert (=> bs!1841668 (not (= lambda!391447 lambda!391439))))

(assert (=> bs!1841667 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= (regOne!34218 lt!2465173) r2!6280) (= (regTwo!34218 lt!2465173) r3!135)) (= lambda!391447 lambda!391382))))

(declare-fun bs!1841671 () Bool)

(assert (= bs!1841671 (and b!6899327 b!6898999)))

(assert (=> bs!1841671 (not (= lambda!391447 lambda!391415))))

(declare-fun bs!1841672 () Bool)

(assert (= bs!1841672 (and b!6899327 b!6898701)))

(assert (=> bs!1841672 (= (and (= lt!2465175 s!14361) (= (regOne!34218 lt!2465173) (regOne!34218 lt!2465168)) (= (regTwo!34218 lt!2465173) (regTwo!34218 lt!2465168))) (= lambda!391447 lambda!391396))))

(assert (=> bs!1841670 (= (and (= (regOne!34218 lt!2465173) r1!6342) (= (regTwo!34218 lt!2465173) r2!6280)) (= lambda!391447 lambda!391384))))

(declare-fun bs!1841673 () Bool)

(assert (= bs!1841673 (and b!6899327 b!6899097)))

(assert (=> bs!1841673 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= (regOne!34218 lt!2465173) (regOne!34218 lt!2465171)) (= (regTwo!34218 lt!2465173) (regTwo!34218 lt!2465171))) (= lambda!391447 lambda!391426))))

(declare-fun bs!1841674 () Bool)

(assert (= bs!1841674 (and b!6899327 b!6898569)))

(assert (=> bs!1841674 (not (= lambda!391447 lambda!391379))))

(declare-fun bs!1841675 () Bool)

(assert (= bs!1841675 (and b!6899327 b!6898702)))

(assert (=> bs!1841675 (not (= lambda!391447 lambda!391394))))

(assert (=> bs!1841674 (= (and (= lt!2465175 s!14361) (= (regOne!34218 lt!2465173) r1!6342) (= (regTwo!34218 lt!2465173) lt!2465171)) (= lambda!391447 lambda!391380))))

(declare-fun bs!1841676 () Bool)

(assert (= bs!1841676 (and b!6899327 b!6898979)))

(assert (=> bs!1841676 (= (and (= lt!2465175 (_2!37023 lt!2465180)) (= (regOne!34218 lt!2465173) (regOne!34218 r3!135)) (= (regTwo!34218 lt!2465173) (regTwo!34218 r3!135))) (= lambda!391447 lambda!391411))))

(declare-fun bs!1841677 () Bool)

(assert (= bs!1841677 (and b!6899327 b!6898891)))

(assert (=> bs!1841677 (not (= lambda!391447 lambda!391406))))

(assert (=> b!6899327 true))

(assert (=> b!6899327 true))

(declare-fun b!6899318 () Bool)

(declare-fun e!4155199 () Bool)

(assert (=> b!6899318 (= e!4155199 (= lt!2465175 (Cons!66486 (c!1281929 lt!2465173) Nil!66486)))))

(declare-fun b!6899319 () Bool)

(declare-fun c!1282095 () Bool)

(assert (=> b!6899319 (= c!1282095 ((_ is Union!16853) lt!2465173))))

(declare-fun e!4155201 () Bool)

(assert (=> b!6899319 (= e!4155199 e!4155201)))

(declare-fun b!6899320 () Bool)

(declare-fun e!4155202 () Bool)

(assert (=> b!6899320 (= e!4155201 e!4155202)))

(declare-fun c!1282092 () Bool)

(assert (=> b!6899320 (= c!1282092 ((_ is Star!16853) lt!2465173))))

(declare-fun b!6899321 () Bool)

(declare-fun res!2813186 () Bool)

(declare-fun e!4155198 () Bool)

(assert (=> b!6899321 (=> res!2813186 e!4155198)))

(declare-fun call!627521 () Bool)

(assert (=> b!6899321 (= res!2813186 call!627521)))

(assert (=> b!6899321 (= e!4155202 e!4155198)))

(declare-fun b!6899322 () Bool)

(declare-fun c!1282093 () Bool)

(assert (=> b!6899322 (= c!1282093 ((_ is ElementMatch!16853) lt!2465173))))

(declare-fun e!4155200 () Bool)

(assert (=> b!6899322 (= e!4155200 e!4155199)))

(declare-fun bm!627515 () Bool)

(declare-fun call!627520 () Bool)

(assert (=> bm!627515 (= call!627520 (Exists!3861 (ite c!1282092 lambda!391446 lambda!391447)))))

(declare-fun b!6899324 () Bool)

(declare-fun e!4155203 () Bool)

(assert (=> b!6899324 (= e!4155203 (matchRSpec!3916 (regTwo!34219 lt!2465173) lt!2465175))))

(declare-fun b!6899325 () Bool)

(declare-fun e!4155204 () Bool)

(assert (=> b!6899325 (= e!4155204 call!627521)))

(declare-fun b!6899326 () Bool)

(assert (=> b!6899326 (= e!4155201 e!4155203)))

(declare-fun res!2813185 () Bool)

(assert (=> b!6899326 (= res!2813185 (matchRSpec!3916 (regOne!34219 lt!2465173) lt!2465175))))

(assert (=> b!6899326 (=> res!2813185 e!4155203)))

(assert (=> b!6899327 (= e!4155202 call!627520)))

(assert (=> b!6899328 (= e!4155198 call!627520)))

(declare-fun bm!627516 () Bool)

(assert (=> bm!627516 (= call!627521 (isEmpty!38721 lt!2465175))))

(declare-fun b!6899323 () Bool)

(assert (=> b!6899323 (= e!4155204 e!4155200)))

(declare-fun res!2813184 () Bool)

(assert (=> b!6899323 (= res!2813184 (not ((_ is EmptyLang!16853) lt!2465173)))))

(assert (=> b!6899323 (=> (not res!2813184) (not e!4155200))))

(declare-fun d!2161818 () Bool)

(declare-fun c!1282094 () Bool)

(assert (=> d!2161818 (= c!1282094 ((_ is EmptyExpr!16853) lt!2465173))))

(assert (=> d!2161818 (= (matchRSpec!3916 lt!2465173 lt!2465175) e!4155204)))

(assert (= (and d!2161818 c!1282094) b!6899325))

(assert (= (and d!2161818 (not c!1282094)) b!6899323))

(assert (= (and b!6899323 res!2813184) b!6899322))

(assert (= (and b!6899322 c!1282093) b!6899318))

(assert (= (and b!6899322 (not c!1282093)) b!6899319))

(assert (= (and b!6899319 c!1282095) b!6899326))

(assert (= (and b!6899319 (not c!1282095)) b!6899320))

(assert (= (and b!6899326 (not res!2813185)) b!6899324))

(assert (= (and b!6899320 c!1282092) b!6899321))

(assert (= (and b!6899320 (not c!1282092)) b!6899327))

(assert (= (and b!6899321 (not res!2813186)) b!6899328))

(assert (= (or b!6899328 b!6899327) bm!627515))

(assert (= (or b!6899325 b!6899321) bm!627516))

(declare-fun m!7617612 () Bool)

(assert (=> bm!627515 m!7617612))

(declare-fun m!7617614 () Bool)

(assert (=> b!6899324 m!7617614))

(declare-fun m!7617616 () Bool)

(assert (=> b!6899326 m!7617616))

(declare-fun m!7617618 () Bool)

(assert (=> bm!627516 m!7617618))

(assert (=> b!6898574 d!2161818))

(declare-fun bm!627517 () Bool)

(declare-fun call!627522 () Bool)

(declare-fun call!627524 () Bool)

(assert (=> bm!627517 (= call!627522 call!627524)))

(declare-fun b!6899329 () Bool)

(declare-fun e!4155207 () Bool)

(declare-fun e!4155210 () Bool)

(assert (=> b!6899329 (= e!4155207 e!4155210)))

(declare-fun c!1282097 () Bool)

(assert (=> b!6899329 (= c!1282097 ((_ is Star!16853) lt!2465173))))

(declare-fun c!1282096 () Bool)

(declare-fun bm!627518 () Bool)

(assert (=> bm!627518 (= call!627524 (validRegex!8561 (ite c!1282097 (reg!17182 lt!2465173) (ite c!1282096 (regOne!34219 lt!2465173) (regTwo!34218 lt!2465173)))))))

(declare-fun b!6899330 () Bool)

(declare-fun e!4155206 () Bool)

(assert (=> b!6899330 (= e!4155210 e!4155206)))

(declare-fun res!2813189 () Bool)

(assert (=> b!6899330 (= res!2813189 (not (nullable!6704 (reg!17182 lt!2465173))))))

(assert (=> b!6899330 (=> (not res!2813189) (not e!4155206))))

(declare-fun b!6899331 () Bool)

(declare-fun res!2813188 () Bool)

(declare-fun e!4155211 () Bool)

(assert (=> b!6899331 (=> (not res!2813188) (not e!4155211))))

(assert (=> b!6899331 (= res!2813188 call!627522)))

(declare-fun e!4155205 () Bool)

(assert (=> b!6899331 (= e!4155205 e!4155211)))

(declare-fun d!2161820 () Bool)

(declare-fun res!2813187 () Bool)

(assert (=> d!2161820 (=> res!2813187 e!4155207)))

(assert (=> d!2161820 (= res!2813187 ((_ is ElementMatch!16853) lt!2465173))))

(assert (=> d!2161820 (= (validRegex!8561 lt!2465173) e!4155207)))

(declare-fun bm!627519 () Bool)

(declare-fun call!627523 () Bool)

(assert (=> bm!627519 (= call!627523 (validRegex!8561 (ite c!1282096 (regTwo!34219 lt!2465173) (regOne!34218 lt!2465173))))))

(declare-fun b!6899332 () Bool)

(assert (=> b!6899332 (= e!4155206 call!627524)))

(declare-fun b!6899333 () Bool)

(declare-fun e!4155209 () Bool)

(assert (=> b!6899333 (= e!4155209 call!627522)))

(declare-fun b!6899334 () Bool)

(assert (=> b!6899334 (= e!4155210 e!4155205)))

(assert (=> b!6899334 (= c!1282096 ((_ is Union!16853) lt!2465173))))

(declare-fun b!6899335 () Bool)

(assert (=> b!6899335 (= e!4155211 call!627523)))

(declare-fun b!6899336 () Bool)

(declare-fun e!4155208 () Bool)

(assert (=> b!6899336 (= e!4155208 e!4155209)))

(declare-fun res!2813190 () Bool)

(assert (=> b!6899336 (=> (not res!2813190) (not e!4155209))))

(assert (=> b!6899336 (= res!2813190 call!627523)))

(declare-fun b!6899337 () Bool)

(declare-fun res!2813191 () Bool)

(assert (=> b!6899337 (=> res!2813191 e!4155208)))

(assert (=> b!6899337 (= res!2813191 (not ((_ is Concat!25698) lt!2465173)))))

(assert (=> b!6899337 (= e!4155205 e!4155208)))

(assert (= (and d!2161820 (not res!2813187)) b!6899329))

(assert (= (and b!6899329 c!1282097) b!6899330))

(assert (= (and b!6899329 (not c!1282097)) b!6899334))

(assert (= (and b!6899330 res!2813189) b!6899332))

(assert (= (and b!6899334 c!1282096) b!6899331))

(assert (= (and b!6899334 (not c!1282096)) b!6899337))

(assert (= (and b!6899331 res!2813188) b!6899335))

(assert (= (and b!6899337 (not res!2813191)) b!6899336))

(assert (= (and b!6899336 res!2813190) b!6899333))

(assert (= (or b!6899331 b!6899333) bm!627517))

(assert (= (or b!6899335 b!6899336) bm!627519))

(assert (= (or b!6899332 bm!627517) bm!627518))

(declare-fun m!7617620 () Bool)

(assert (=> bm!627518 m!7617620))

(declare-fun m!7617622 () Bool)

(assert (=> b!6899330 m!7617622))

(declare-fun m!7617624 () Bool)

(assert (=> bm!627519 m!7617624))

(assert (=> b!6898574 d!2161820))

(declare-fun bs!1841678 () Bool)

(declare-fun d!2161822 () Bool)

(assert (= bs!1841678 (and d!2161822 b!6898890)))

(declare-fun lambda!391448 () Int)

(assert (=> bs!1841678 (not (= lambda!391448 lambda!391407))))

(declare-fun bs!1841679 () Bool)

(assert (= bs!1841679 (and d!2161822 b!6898980)))

(assert (=> bs!1841679 (not (= lambda!391448 lambda!391410))))

(declare-fun bs!1841680 () Bool)

(assert (= bs!1841680 (and d!2161822 d!2161806)))

(assert (=> bs!1841680 (= (and (= lt!2465175 s!14361) (= r2!6280 lt!2465171)) (= lambda!391448 lambda!391441))))

(declare-fun bs!1841681 () Bool)

(assert (= bs!1841681 (and d!2161822 b!6899098)))

(assert (=> bs!1841681 (not (= lambda!391448 lambda!391424))))

(declare-fun bs!1841682 () Bool)

(assert (= bs!1841682 (and d!2161822 d!2161810)))

(assert (=> bs!1841682 (= (and (= lt!2465175 s!14361) (= r2!6280 lt!2465171)) (= lambda!391448 lambda!391443))))

(declare-fun bs!1841683 () Bool)

(assert (= bs!1841683 (and d!2161822 b!6898998)))

(assert (=> bs!1841683 (not (= lambda!391448 lambda!391418))))

(declare-fun bs!1841684 () Bool)

(assert (= bs!1841684 (and d!2161822 b!6899328)))

(assert (=> bs!1841684 (not (= lambda!391448 lambda!391446))))

(declare-fun bs!1841685 () Bool)

(assert (= bs!1841685 (and d!2161822 b!6899317)))

(assert (=> bs!1841685 (not (= lambda!391448 lambda!391444))))

(declare-fun bs!1841686 () Bool)

(assert (= bs!1841686 (and d!2161822 b!6899316)))

(assert (=> bs!1841686 (not (= lambda!391448 lambda!391445))))

(assert (=> bs!1841680 (not (= lambda!391448 lambda!391442))))

(declare-fun bs!1841687 () Bool)

(assert (= bs!1841687 (and d!2161822 b!6898564)))

(assert (=> bs!1841687 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391448 lambda!391381))))

(declare-fun bs!1841688 () Bool)

(assert (= bs!1841688 (and d!2161822 d!2161798)))

(assert (=> bs!1841688 (not (= lambda!391448 lambda!391440))))

(declare-fun bs!1841689 () Bool)

(assert (= bs!1841689 (and d!2161822 d!2161784)))

(assert (=> bs!1841689 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391448 lambda!391434))))

(declare-fun bs!1841690 () Bool)

(assert (= bs!1841690 (and d!2161822 b!6898574)))

(assert (=> bs!1841690 (= lambda!391448 lambda!391383)))

(assert (=> bs!1841688 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391448 lambda!391439))))

(assert (=> bs!1841687 (not (= lambda!391448 lambda!391382))))

(declare-fun bs!1841691 () Bool)

(assert (= bs!1841691 (and d!2161822 b!6898999)))

(assert (=> bs!1841691 (not (= lambda!391448 lambda!391415))))

(declare-fun bs!1841692 () Bool)

(assert (= bs!1841692 (and d!2161822 b!6898701)))

(assert (=> bs!1841692 (not (= lambda!391448 lambda!391396))))

(assert (=> bs!1841690 (not (= lambda!391448 lambda!391384))))

(declare-fun bs!1841693 () Bool)

(assert (= bs!1841693 (and d!2161822 b!6899327)))

(assert (=> bs!1841693 (not (= lambda!391448 lambda!391447))))

(declare-fun bs!1841694 () Bool)

(assert (= bs!1841694 (and d!2161822 b!6899097)))

(assert (=> bs!1841694 (not (= lambda!391448 lambda!391426))))

(declare-fun bs!1841695 () Bool)

(assert (= bs!1841695 (and d!2161822 b!6898569)))

(assert (=> bs!1841695 (= (and (= lt!2465175 s!14361) (= r2!6280 lt!2465171)) (= lambda!391448 lambda!391379))))

(declare-fun bs!1841696 () Bool)

(assert (= bs!1841696 (and d!2161822 b!6898702)))

(assert (=> bs!1841696 (not (= lambda!391448 lambda!391394))))

(assert (=> bs!1841695 (not (= lambda!391448 lambda!391380))))

(declare-fun bs!1841697 () Bool)

(assert (= bs!1841697 (and d!2161822 b!6898979)))

(assert (=> bs!1841697 (not (= lambda!391448 lambda!391411))))

(declare-fun bs!1841698 () Bool)

(assert (= bs!1841698 (and d!2161822 b!6898891)))

(assert (=> bs!1841698 (not (= lambda!391448 lambda!391406))))

(assert (=> d!2161822 true))

(assert (=> d!2161822 true))

(assert (=> d!2161822 true))

(assert (=> d!2161822 (= (isDefined!13335 (findConcatSeparation!3046 r1!6342 r2!6280 Nil!66486 lt!2465175 lt!2465175)) (Exists!3861 lambda!391448))))

(declare-fun lt!2465285 () Unit!160426)

(assert (=> d!2161822 (= lt!2465285 (choose!51368 r1!6342 r2!6280 lt!2465175))))

(assert (=> d!2161822 (validRegex!8561 r1!6342)))

(assert (=> d!2161822 (= (lemmaFindConcatSeparationEquivalentToExists!2808 r1!6342 r2!6280 lt!2465175) lt!2465285)))

(declare-fun bs!1841699 () Bool)

(assert (= bs!1841699 d!2161822))

(assert (=> bs!1841699 m!7617042))

(declare-fun m!7617626 () Bool)

(assert (=> bs!1841699 m!7617626))

(assert (=> bs!1841699 m!7617004))

(declare-fun m!7617628 () Bool)

(assert (=> bs!1841699 m!7617628))

(assert (=> bs!1841699 m!7617004))

(assert (=> bs!1841699 m!7617006))

(assert (=> b!6898574 d!2161822))

(declare-fun d!2161824 () Bool)

(declare-fun e!4155216 () Bool)

(assert (=> d!2161824 e!4155216))

(declare-fun c!1282099 () Bool)

(assert (=> d!2161824 (= c!1282099 ((_ is EmptyExpr!16853) lt!2465173))))

(declare-fun lt!2465286 () Bool)

(declare-fun e!4155215 () Bool)

(assert (=> d!2161824 (= lt!2465286 e!4155215)))

(declare-fun c!1282100 () Bool)

(assert (=> d!2161824 (= c!1282100 (isEmpty!38721 lt!2465175))))

(assert (=> d!2161824 (validRegex!8561 lt!2465173)))

(assert (=> d!2161824 (= (matchR!8998 lt!2465173 lt!2465175) lt!2465286)))

(declare-fun b!6899338 () Bool)

(declare-fun res!2813192 () Bool)

(declare-fun e!4155214 () Bool)

(assert (=> b!6899338 (=> (not res!2813192) (not e!4155214))))

(declare-fun call!627525 () Bool)

(assert (=> b!6899338 (= res!2813192 (not call!627525))))

(declare-fun b!6899339 () Bool)

(declare-fun e!4155217 () Bool)

(declare-fun e!4155218 () Bool)

(assert (=> b!6899339 (= e!4155217 e!4155218)))

(declare-fun res!2813193 () Bool)

(assert (=> b!6899339 (=> res!2813193 e!4155218)))

(assert (=> b!6899339 (= res!2813193 call!627525)))

(declare-fun b!6899340 () Bool)

(declare-fun e!4155213 () Bool)

(assert (=> b!6899340 (= e!4155213 e!4155217)))

(declare-fun res!2813196 () Bool)

(assert (=> b!6899340 (=> (not res!2813196) (not e!4155217))))

(assert (=> b!6899340 (= res!2813196 (not lt!2465286))))

(declare-fun b!6899341 () Bool)

(assert (=> b!6899341 (= e!4155215 (matchR!8998 (derivativeStep!5383 lt!2465173 (head!13836 lt!2465175)) (tail!12888 lt!2465175)))))

(declare-fun b!6899342 () Bool)

(declare-fun e!4155212 () Bool)

(assert (=> b!6899342 (= e!4155216 e!4155212)))

(declare-fun c!1282098 () Bool)

(assert (=> b!6899342 (= c!1282098 ((_ is EmptyLang!16853) lt!2465173))))

(declare-fun bm!627520 () Bool)

(assert (=> bm!627520 (= call!627525 (isEmpty!38721 lt!2465175))))

(declare-fun b!6899343 () Bool)

(assert (=> b!6899343 (= e!4155218 (not (= (head!13836 lt!2465175) (c!1281929 lt!2465173))))))

(declare-fun b!6899344 () Bool)

(declare-fun res!2813199 () Bool)

(assert (=> b!6899344 (=> res!2813199 e!4155213)))

(assert (=> b!6899344 (= res!2813199 (not ((_ is ElementMatch!16853) lt!2465173)))))

(assert (=> b!6899344 (= e!4155212 e!4155213)))

(declare-fun b!6899345 () Bool)

(assert (=> b!6899345 (= e!4155214 (= (head!13836 lt!2465175) (c!1281929 lt!2465173)))))

(declare-fun b!6899346 () Bool)

(assert (=> b!6899346 (= e!4155215 (nullable!6704 lt!2465173))))

(declare-fun b!6899347 () Bool)

(declare-fun res!2813195 () Bool)

(assert (=> b!6899347 (=> res!2813195 e!4155218)))

(assert (=> b!6899347 (= res!2813195 (not (isEmpty!38721 (tail!12888 lt!2465175))))))

(declare-fun b!6899348 () Bool)

(assert (=> b!6899348 (= e!4155216 (= lt!2465286 call!627525))))

(declare-fun b!6899349 () Bool)

(declare-fun res!2813198 () Bool)

(assert (=> b!6899349 (=> res!2813198 e!4155213)))

(assert (=> b!6899349 (= res!2813198 e!4155214)))

(declare-fun res!2813194 () Bool)

(assert (=> b!6899349 (=> (not res!2813194) (not e!4155214))))

(assert (=> b!6899349 (= res!2813194 lt!2465286)))

(declare-fun b!6899350 () Bool)

(assert (=> b!6899350 (= e!4155212 (not lt!2465286))))

(declare-fun b!6899351 () Bool)

(declare-fun res!2813197 () Bool)

(assert (=> b!6899351 (=> (not res!2813197) (not e!4155214))))

(assert (=> b!6899351 (= res!2813197 (isEmpty!38721 (tail!12888 lt!2465175)))))

(assert (= (and d!2161824 c!1282100) b!6899346))

(assert (= (and d!2161824 (not c!1282100)) b!6899341))

(assert (= (and d!2161824 c!1282099) b!6899348))

(assert (= (and d!2161824 (not c!1282099)) b!6899342))

(assert (= (and b!6899342 c!1282098) b!6899350))

(assert (= (and b!6899342 (not c!1282098)) b!6899344))

(assert (= (and b!6899344 (not res!2813199)) b!6899349))

(assert (= (and b!6899349 res!2813194) b!6899338))

(assert (= (and b!6899338 res!2813192) b!6899351))

(assert (= (and b!6899351 res!2813197) b!6899345))

(assert (= (and b!6899349 (not res!2813198)) b!6899340))

(assert (= (and b!6899340 res!2813196) b!6899339))

(assert (= (and b!6899339 (not res!2813193)) b!6899347))

(assert (= (and b!6899347 (not res!2813195)) b!6899343))

(assert (= (or b!6899348 b!6899338 b!6899339) bm!627520))

(declare-fun m!7617630 () Bool)

(assert (=> b!6899346 m!7617630))

(declare-fun m!7617632 () Bool)

(assert (=> b!6899343 m!7617632))

(assert (=> bm!627520 m!7617618))

(declare-fun m!7617634 () Bool)

(assert (=> b!6899347 m!7617634))

(assert (=> b!6899347 m!7617634))

(declare-fun m!7617636 () Bool)

(assert (=> b!6899347 m!7617636))

(assert (=> b!6899351 m!7617634))

(assert (=> b!6899351 m!7617634))

(assert (=> b!6899351 m!7617636))

(assert (=> d!2161824 m!7617618))

(assert (=> d!2161824 m!7617020))

(assert (=> b!6899341 m!7617632))

(assert (=> b!6899341 m!7617632))

(declare-fun m!7617638 () Bool)

(assert (=> b!6899341 m!7617638))

(assert (=> b!6899341 m!7617634))

(assert (=> b!6899341 m!7617638))

(assert (=> b!6899341 m!7617634))

(declare-fun m!7617640 () Bool)

(assert (=> b!6899341 m!7617640))

(assert (=> b!6899345 m!7617632))

(assert (=> b!6898574 d!2161824))

(declare-fun d!2161826 () Bool)

(assert (=> d!2161826 (= (Exists!3861 lambda!391384) (choose!51366 lambda!391384))))

(declare-fun bs!1841700 () Bool)

(assert (= bs!1841700 d!2161826))

(declare-fun m!7617642 () Bool)

(assert (=> bs!1841700 m!7617642))

(assert (=> b!6898574 d!2161826))

(declare-fun d!2161828 () Bool)

(declare-fun e!4155221 () Bool)

(assert (=> d!2161828 e!4155221))

(declare-fun res!2813201 () Bool)

(assert (=> d!2161828 (=> res!2813201 e!4155221)))

(declare-fun e!4155222 () Bool)

(assert (=> d!2161828 (= res!2813201 e!4155222)))

(declare-fun res!2813202 () Bool)

(assert (=> d!2161828 (=> (not res!2813202) (not e!4155222))))

(declare-fun lt!2465288 () Option!16632)

(assert (=> d!2161828 (= res!2813202 (isDefined!13335 lt!2465288))))

(declare-fun e!4155223 () Option!16632)

(assert (=> d!2161828 (= lt!2465288 e!4155223)))

(declare-fun c!1282102 () Bool)

(declare-fun e!4155219 () Bool)

(assert (=> d!2161828 (= c!1282102 e!4155219)))

(declare-fun res!2813204 () Bool)

(assert (=> d!2161828 (=> (not res!2813204) (not e!4155219))))

(assert (=> d!2161828 (= res!2813204 (matchR!8998 r1!6342 Nil!66486))))

(assert (=> d!2161828 (validRegex!8561 r1!6342)))

(assert (=> d!2161828 (= (findConcatSeparation!3046 r1!6342 r2!6280 Nil!66486 lt!2465175 lt!2465175) lt!2465288)))

(declare-fun b!6899352 () Bool)

(declare-fun e!4155220 () Option!16632)

(assert (=> b!6899352 (= e!4155220 None!16631)))

(declare-fun b!6899353 () Bool)

(declare-fun lt!2465287 () Unit!160426)

(declare-fun lt!2465289 () Unit!160426)

(assert (=> b!6899353 (= lt!2465287 lt!2465289)))

(assert (=> b!6899353 (= (++!14906 (++!14906 Nil!66486 (Cons!66486 (h!72934 lt!2465175) Nil!66486)) (t!380353 lt!2465175)) lt!2465175)))

(assert (=> b!6899353 (= lt!2465289 (lemmaMoveElementToOtherListKeepsConcatEq!2791 Nil!66486 (h!72934 lt!2465175) (t!380353 lt!2465175) lt!2465175))))

(assert (=> b!6899353 (= e!4155220 (findConcatSeparation!3046 r1!6342 r2!6280 (++!14906 Nil!66486 (Cons!66486 (h!72934 lt!2465175) Nil!66486)) (t!380353 lt!2465175) lt!2465175))))

(declare-fun b!6899354 () Bool)

(assert (=> b!6899354 (= e!4155221 (not (isDefined!13335 lt!2465288)))))

(declare-fun b!6899355 () Bool)

(assert (=> b!6899355 (= e!4155223 e!4155220)))

(declare-fun c!1282101 () Bool)

(assert (=> b!6899355 (= c!1282101 ((_ is Nil!66486) lt!2465175))))

(declare-fun b!6899356 () Bool)

(assert (=> b!6899356 (= e!4155222 (= (++!14906 (_1!37023 (get!23230 lt!2465288)) (_2!37023 (get!23230 lt!2465288))) lt!2465175))))

(declare-fun b!6899357 () Bool)

(declare-fun res!2813203 () Bool)

(assert (=> b!6899357 (=> (not res!2813203) (not e!4155222))))

(assert (=> b!6899357 (= res!2813203 (matchR!8998 r2!6280 (_2!37023 (get!23230 lt!2465288))))))

(declare-fun b!6899358 () Bool)

(assert (=> b!6899358 (= e!4155223 (Some!16631 (tuple2!67441 Nil!66486 lt!2465175)))))

(declare-fun b!6899359 () Bool)

(assert (=> b!6899359 (= e!4155219 (matchR!8998 r2!6280 lt!2465175))))

(declare-fun b!6899360 () Bool)

(declare-fun res!2813200 () Bool)

(assert (=> b!6899360 (=> (not res!2813200) (not e!4155222))))

(assert (=> b!6899360 (= res!2813200 (matchR!8998 r1!6342 (_1!37023 (get!23230 lt!2465288))))))

(assert (= (and d!2161828 res!2813204) b!6899359))

(assert (= (and d!2161828 c!1282102) b!6899358))

(assert (= (and d!2161828 (not c!1282102)) b!6899355))

(assert (= (and b!6899355 c!1282101) b!6899352))

(assert (= (and b!6899355 (not c!1282101)) b!6899353))

(assert (= (and d!2161828 res!2813202) b!6899360))

(assert (= (and b!6899360 res!2813200) b!6899357))

(assert (= (and b!6899357 res!2813203) b!6899356))

(assert (= (and d!2161828 (not res!2813201)) b!6899354))

(declare-fun m!7617644 () Bool)

(assert (=> b!6899357 m!7617644))

(declare-fun m!7617646 () Bool)

(assert (=> b!6899357 m!7617646))

(assert (=> b!6899360 m!7617644))

(declare-fun m!7617648 () Bool)

(assert (=> b!6899360 m!7617648))

(assert (=> b!6899356 m!7617644))

(declare-fun m!7617650 () Bool)

(assert (=> b!6899356 m!7617650))

(declare-fun m!7617652 () Bool)

(assert (=> b!6899359 m!7617652))

(declare-fun m!7617654 () Bool)

(assert (=> b!6899353 m!7617654))

(assert (=> b!6899353 m!7617654))

(declare-fun m!7617656 () Bool)

(assert (=> b!6899353 m!7617656))

(declare-fun m!7617658 () Bool)

(assert (=> b!6899353 m!7617658))

(assert (=> b!6899353 m!7617654))

(declare-fun m!7617660 () Bool)

(assert (=> b!6899353 m!7617660))

(declare-fun m!7617662 () Bool)

(assert (=> d!2161828 m!7617662))

(declare-fun m!7617664 () Bool)

(assert (=> d!2161828 m!7617664))

(assert (=> d!2161828 m!7617042))

(assert (=> b!6899354 m!7617662))

(assert (=> b!6898574 d!2161828))

(declare-fun d!2161830 () Bool)

(declare-fun e!4155225 () Bool)

(assert (=> d!2161830 e!4155225))

(declare-fun res!2813206 () Bool)

(assert (=> d!2161830 (=> (not res!2813206) (not e!4155225))))

(declare-fun lt!2465290 () List!66610)

(assert (=> d!2161830 (= res!2813206 (= (content!13058 lt!2465290) ((_ map or) (content!13058 lt!2465175) (content!13058 (_2!37023 lt!2465180)))))))

(declare-fun e!4155224 () List!66610)

(assert (=> d!2161830 (= lt!2465290 e!4155224)))

(declare-fun c!1282103 () Bool)

(assert (=> d!2161830 (= c!1282103 ((_ is Nil!66486) lt!2465175))))

(assert (=> d!2161830 (= (++!14906 lt!2465175 (_2!37023 lt!2465180)) lt!2465290)))

(declare-fun b!6899362 () Bool)

(assert (=> b!6899362 (= e!4155224 (Cons!66486 (h!72934 lt!2465175) (++!14906 (t!380353 lt!2465175) (_2!37023 lt!2465180))))))

(declare-fun b!6899363 () Bool)

(declare-fun res!2813205 () Bool)

(assert (=> b!6899363 (=> (not res!2813205) (not e!4155225))))

(assert (=> b!6899363 (= res!2813205 (= (size!40755 lt!2465290) (+ (size!40755 lt!2465175) (size!40755 (_2!37023 lt!2465180)))))))

(declare-fun b!6899364 () Bool)

(assert (=> b!6899364 (= e!4155225 (or (not (= (_2!37023 lt!2465180) Nil!66486)) (= lt!2465290 lt!2465175)))))

(declare-fun b!6899361 () Bool)

(assert (=> b!6899361 (= e!4155224 (_2!37023 lt!2465180))))

(assert (= (and d!2161830 c!1282103) b!6899361))

(assert (= (and d!2161830 (not c!1282103)) b!6899362))

(assert (= (and d!2161830 res!2813206) b!6899363))

(assert (= (and b!6899363 res!2813205) b!6899364))

(declare-fun m!7617666 () Bool)

(assert (=> d!2161830 m!7617666))

(declare-fun m!7617668 () Bool)

(assert (=> d!2161830 m!7617668))

(assert (=> d!2161830 m!7617276))

(declare-fun m!7617670 () Bool)

(assert (=> b!6899362 m!7617670))

(declare-fun m!7617672 () Bool)

(assert (=> b!6899363 m!7617672))

(declare-fun m!7617674 () Bool)

(assert (=> b!6899363 m!7617674))

(assert (=> b!6899363 m!7617284))

(assert (=> b!6898574 d!2161830))

(declare-fun d!2161832 () Bool)

(assert (=> d!2161832 (isDefined!13335 (findConcatSeparation!3046 r1!6342 r2!6280 Nil!66486 lt!2465175 lt!2465175))))

(declare-fun lt!2465293 () Unit!160426)

(declare-fun choose!51370 (Regex!16853 Regex!16853 List!66610 List!66610 List!66610 List!66610 List!66610) Unit!160426)

(assert (=> d!2161832 (= lt!2465293 (choose!51370 r1!6342 r2!6280 (_1!37023 lt!2465172) (_1!37023 lt!2465180) lt!2465175 Nil!66486 lt!2465175))))

(assert (=> d!2161832 (validRegex!8561 r1!6342)))

(assert (=> d!2161832 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!54 r1!6342 r2!6280 (_1!37023 lt!2465172) (_1!37023 lt!2465180) lt!2465175 Nil!66486 lt!2465175) lt!2465293)))

(declare-fun bs!1841701 () Bool)

(assert (= bs!1841701 d!2161832))

(assert (=> bs!1841701 m!7617004))

(assert (=> bs!1841701 m!7617004))

(assert (=> bs!1841701 m!7617006))

(declare-fun m!7617676 () Bool)

(assert (=> bs!1841701 m!7617676))

(assert (=> bs!1841701 m!7617042))

(assert (=> b!6898574 d!2161832))

(declare-fun d!2161834 () Bool)

(assert (=> d!2161834 (= (Exists!3861 lambda!391383) (choose!51366 lambda!391383))))

(declare-fun bs!1841702 () Bool)

(assert (= bs!1841702 d!2161834))

(declare-fun m!7617678 () Bool)

(assert (=> bs!1841702 m!7617678))

(assert (=> b!6898574 d!2161834))

(declare-fun bs!1841703 () Bool)

(declare-fun d!2161836 () Bool)

(assert (= bs!1841703 (and d!2161836 b!6898890)))

(declare-fun lambda!391449 () Int)

(assert (=> bs!1841703 (not (= lambda!391449 lambda!391407))))

(declare-fun bs!1841704 () Bool)

(assert (= bs!1841704 (and d!2161836 b!6898980)))

(assert (=> bs!1841704 (not (= lambda!391449 lambda!391410))))

(declare-fun bs!1841705 () Bool)

(assert (= bs!1841705 (and d!2161836 d!2161806)))

(assert (=> bs!1841705 (= (and (= lt!2465175 s!14361) (= r2!6280 lt!2465171)) (= lambda!391449 lambda!391441))))

(declare-fun bs!1841706 () Bool)

(assert (= bs!1841706 (and d!2161836 b!6899098)))

(assert (=> bs!1841706 (not (= lambda!391449 lambda!391424))))

(declare-fun bs!1841707 () Bool)

(assert (= bs!1841707 (and d!2161836 d!2161810)))

(assert (=> bs!1841707 (= (and (= lt!2465175 s!14361) (= r2!6280 lt!2465171)) (= lambda!391449 lambda!391443))))

(declare-fun bs!1841708 () Bool)

(assert (= bs!1841708 (and d!2161836 b!6898998)))

(assert (=> bs!1841708 (not (= lambda!391449 lambda!391418))))

(declare-fun bs!1841709 () Bool)

(assert (= bs!1841709 (and d!2161836 b!6899328)))

(assert (=> bs!1841709 (not (= lambda!391449 lambda!391446))))

(declare-fun bs!1841710 () Bool)

(assert (= bs!1841710 (and d!2161836 b!6899317)))

(assert (=> bs!1841710 (not (= lambda!391449 lambda!391444))))

(declare-fun bs!1841711 () Bool)

(assert (= bs!1841711 (and d!2161836 b!6899316)))

(assert (=> bs!1841711 (not (= lambda!391449 lambda!391445))))

(assert (=> bs!1841705 (not (= lambda!391449 lambda!391442))))

(declare-fun bs!1841712 () Bool)

(assert (= bs!1841712 (and d!2161836 d!2161798)))

(assert (=> bs!1841712 (not (= lambda!391449 lambda!391440))))

(declare-fun bs!1841713 () Bool)

(assert (= bs!1841713 (and d!2161836 d!2161784)))

(assert (=> bs!1841713 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391449 lambda!391434))))

(declare-fun bs!1841714 () Bool)

(assert (= bs!1841714 (and d!2161836 b!6898574)))

(assert (=> bs!1841714 (= lambda!391449 lambda!391383)))

(assert (=> bs!1841712 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391449 lambda!391439))))

(declare-fun bs!1841715 () Bool)

(assert (= bs!1841715 (and d!2161836 b!6898564)))

(assert (=> bs!1841715 (not (= lambda!391449 lambda!391382))))

(declare-fun bs!1841716 () Bool)

(assert (= bs!1841716 (and d!2161836 b!6898999)))

(assert (=> bs!1841716 (not (= lambda!391449 lambda!391415))))

(declare-fun bs!1841717 () Bool)

(assert (= bs!1841717 (and d!2161836 b!6898701)))

(assert (=> bs!1841717 (not (= lambda!391449 lambda!391396))))

(assert (=> bs!1841714 (not (= lambda!391449 lambda!391384))))

(declare-fun bs!1841718 () Bool)

(assert (= bs!1841718 (and d!2161836 b!6899327)))

(assert (=> bs!1841718 (not (= lambda!391449 lambda!391447))))

(declare-fun bs!1841719 () Bool)

(assert (= bs!1841719 (and d!2161836 b!6899097)))

(assert (=> bs!1841719 (not (= lambda!391449 lambda!391426))))

(declare-fun bs!1841720 () Bool)

(assert (= bs!1841720 (and d!2161836 b!6898569)))

(assert (=> bs!1841720 (= (and (= lt!2465175 s!14361) (= r2!6280 lt!2465171)) (= lambda!391449 lambda!391379))))

(declare-fun bs!1841721 () Bool)

(assert (= bs!1841721 (and d!2161836 b!6898702)))

(assert (=> bs!1841721 (not (= lambda!391449 lambda!391394))))

(assert (=> bs!1841720 (not (= lambda!391449 lambda!391380))))

(declare-fun bs!1841722 () Bool)

(assert (= bs!1841722 (and d!2161836 b!6898979)))

(assert (=> bs!1841722 (not (= lambda!391449 lambda!391411))))

(declare-fun bs!1841723 () Bool)

(assert (= bs!1841723 (and d!2161836 b!6898891)))

(assert (=> bs!1841723 (not (= lambda!391449 lambda!391406))))

(assert (=> bs!1841715 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391449 lambda!391381))))

(declare-fun bs!1841724 () Bool)

(assert (= bs!1841724 (and d!2161836 d!2161822)))

(assert (=> bs!1841724 (= lambda!391449 lambda!391448)))

(assert (=> d!2161836 true))

(assert (=> d!2161836 true))

(assert (=> d!2161836 true))

(declare-fun lambda!391450 () Int)

(assert (=> bs!1841703 (= (and (= lt!2465175 s!14361) (= r1!6342 (regOne!34218 lt!2465177)) (= r2!6280 (regTwo!34218 lt!2465177))) (= lambda!391450 lambda!391407))))

(assert (=> bs!1841704 (not (= lambda!391450 lambda!391410))))

(assert (=> bs!1841705 (not (= lambda!391450 lambda!391441))))

(assert (=> bs!1841706 (not (= lambda!391450 lambda!391424))))

(assert (=> bs!1841707 (not (= lambda!391450 lambda!391443))))

(assert (=> bs!1841708 (= (and (= lt!2465175 (_1!37023 lt!2465180)) (= r1!6342 (regOne!34218 r2!6280)) (= r2!6280 (regTwo!34218 r2!6280))) (= lambda!391450 lambda!391418))))

(declare-fun bs!1841725 () Bool)

(assert (= bs!1841725 d!2161836))

(assert (=> bs!1841725 (not (= lambda!391450 lambda!391449))))

(assert (=> bs!1841709 (not (= lambda!391450 lambda!391446))))

(assert (=> bs!1841710 (not (= lambda!391450 lambda!391444))))

(assert (=> bs!1841711 (= (and (= lt!2465175 (_1!37023 lt!2465172)) (= r1!6342 (regOne!34218 r1!6342)) (= r2!6280 (regTwo!34218 r1!6342))) (= lambda!391450 lambda!391445))))

(assert (=> bs!1841705 (= (and (= lt!2465175 s!14361) (= r2!6280 lt!2465171)) (= lambda!391450 lambda!391442))))

(assert (=> bs!1841712 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391450 lambda!391440))))

(assert (=> bs!1841713 (not (= lambda!391450 lambda!391434))))

(assert (=> bs!1841714 (not (= lambda!391450 lambda!391383))))

(assert (=> bs!1841712 (not (= lambda!391450 lambda!391439))))

(assert (=> bs!1841715 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391450 lambda!391382))))

(assert (=> bs!1841716 (not (= lambda!391450 lambda!391415))))

(assert (=> bs!1841717 (= (and (= lt!2465175 s!14361) (= r1!6342 (regOne!34218 lt!2465168)) (= r2!6280 (regTwo!34218 lt!2465168))) (= lambda!391450 lambda!391396))))

(assert (=> bs!1841714 (= lambda!391450 lambda!391384)))

(assert (=> bs!1841718 (= (and (= r1!6342 (regOne!34218 lt!2465173)) (= r2!6280 (regTwo!34218 lt!2465173))) (= lambda!391450 lambda!391447))))

(assert (=> bs!1841719 (= (and (= lt!2465175 (_2!37023 lt!2465172)) (= r1!6342 (regOne!34218 lt!2465171)) (= r2!6280 (regTwo!34218 lt!2465171))) (= lambda!391450 lambda!391426))))

(assert (=> bs!1841720 (not (= lambda!391450 lambda!391379))))

(assert (=> bs!1841721 (not (= lambda!391450 lambda!391394))))

(assert (=> bs!1841720 (= (and (= lt!2465175 s!14361) (= r2!6280 lt!2465171)) (= lambda!391450 lambda!391380))))

(assert (=> bs!1841722 (= (and (= lt!2465175 (_2!37023 lt!2465180)) (= r1!6342 (regOne!34218 r3!135)) (= r2!6280 (regTwo!34218 r3!135))) (= lambda!391450 lambda!391411))))

(assert (=> bs!1841723 (not (= lambda!391450 lambda!391406))))

(assert (=> bs!1841715 (not (= lambda!391450 lambda!391381))))

(assert (=> bs!1841724 (not (= lambda!391450 lambda!391448))))

(assert (=> d!2161836 true))

(assert (=> d!2161836 true))

(assert (=> d!2161836 true))

(assert (=> d!2161836 (= (Exists!3861 lambda!391449) (Exists!3861 lambda!391450))))

(declare-fun lt!2465294 () Unit!160426)

(assert (=> d!2161836 (= lt!2465294 (choose!51369 r1!6342 r2!6280 lt!2465175))))

(assert (=> d!2161836 (validRegex!8561 r1!6342)))

(assert (=> d!2161836 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2334 r1!6342 r2!6280 lt!2465175) lt!2465294)))

(declare-fun m!7617680 () Bool)

(assert (=> bs!1841725 m!7617680))

(declare-fun m!7617682 () Bool)

(assert (=> bs!1841725 m!7617682))

(declare-fun m!7617684 () Bool)

(assert (=> bs!1841725 m!7617684))

(assert (=> bs!1841725 m!7617042))

(assert (=> b!6898574 d!2161836))

(declare-fun d!2161838 () Bool)

(assert (=> d!2161838 (= (++!14906 (++!14906 (_1!37023 lt!2465172) (_1!37023 lt!2465180)) (_2!37023 lt!2465180)) (++!14906 (_1!37023 lt!2465172) (++!14906 (_1!37023 lt!2465180) (_2!37023 lt!2465180))))))

(declare-fun lt!2465297 () Unit!160426)

(declare-fun choose!51371 (List!66610 List!66610 List!66610) Unit!160426)

(assert (=> d!2161838 (= lt!2465297 (choose!51371 (_1!37023 lt!2465172) (_1!37023 lt!2465180) (_2!37023 lt!2465180)))))

(assert (=> d!2161838 (= (lemmaConcatAssociativity!2986 (_1!37023 lt!2465172) (_1!37023 lt!2465180) (_2!37023 lt!2465180)) lt!2465297)))

(declare-fun bs!1841726 () Bool)

(assert (= bs!1841726 d!2161838))

(assert (=> bs!1841726 m!7617010))

(assert (=> bs!1841726 m!7617032))

(assert (=> bs!1841726 m!7617010))

(declare-fun m!7617686 () Bool)

(assert (=> bs!1841726 m!7617686))

(declare-fun m!7617688 () Bool)

(assert (=> bs!1841726 m!7617688))

(assert (=> bs!1841726 m!7617032))

(assert (=> bs!1841726 m!7617034))

(assert (=> b!6898574 d!2161838))

(declare-fun d!2161840 () Bool)

(assert (=> d!2161840 (= (matchR!8998 lt!2465173 lt!2465175) (matchRSpec!3916 lt!2465173 lt!2465175))))

(declare-fun lt!2465298 () Unit!160426)

(assert (=> d!2161840 (= lt!2465298 (choose!51361 lt!2465173 lt!2465175))))

(assert (=> d!2161840 (validRegex!8561 lt!2465173)))

(assert (=> d!2161840 (= (mainMatchTheorem!3916 lt!2465173 lt!2465175) lt!2465298)))

(declare-fun bs!1841727 () Bool)

(assert (= bs!1841727 d!2161840))

(assert (=> bs!1841727 m!7616996))

(assert (=> bs!1841727 m!7617022))

(declare-fun m!7617690 () Bool)

(assert (=> bs!1841727 m!7617690))

(assert (=> bs!1841727 m!7617020))

(assert (=> b!6898574 d!2161840))

(declare-fun d!2161842 () Bool)

(assert (=> d!2161842 (= (isDefined!13335 (findConcatSeparation!3046 r1!6342 r2!6280 Nil!66486 lt!2465175 lt!2465175)) (not (isEmpty!38723 (findConcatSeparation!3046 r1!6342 r2!6280 Nil!66486 lt!2465175 lt!2465175))))))

(declare-fun bs!1841728 () Bool)

(assert (= bs!1841728 d!2161842))

(assert (=> bs!1841728 m!7617004))

(declare-fun m!7617692 () Bool)

(assert (=> bs!1841728 m!7617692))

(assert (=> b!6898574 d!2161842))

(declare-fun d!2161844 () Bool)

(declare-fun e!4155227 () Bool)

(assert (=> d!2161844 e!4155227))

(declare-fun res!2813208 () Bool)

(assert (=> d!2161844 (=> (not res!2813208) (not e!4155227))))

(declare-fun lt!2465299 () List!66610)

(assert (=> d!2161844 (= res!2813208 (= (content!13058 lt!2465299) ((_ map or) (content!13058 (_1!37023 lt!2465172)) (content!13058 (_1!37023 lt!2465180)))))))

(declare-fun e!4155226 () List!66610)

(assert (=> d!2161844 (= lt!2465299 e!4155226)))

(declare-fun c!1282104 () Bool)

(assert (=> d!2161844 (= c!1282104 ((_ is Nil!66486) (_1!37023 lt!2465172)))))

(assert (=> d!2161844 (= (++!14906 (_1!37023 lt!2465172) (_1!37023 lt!2465180)) lt!2465299)))

(declare-fun b!6899366 () Bool)

(assert (=> b!6899366 (= e!4155226 (Cons!66486 (h!72934 (_1!37023 lt!2465172)) (++!14906 (t!380353 (_1!37023 lt!2465172)) (_1!37023 lt!2465180))))))

(declare-fun b!6899367 () Bool)

(declare-fun res!2813207 () Bool)

(assert (=> b!6899367 (=> (not res!2813207) (not e!4155227))))

(assert (=> b!6899367 (= res!2813207 (= (size!40755 lt!2465299) (+ (size!40755 (_1!37023 lt!2465172)) (size!40755 (_1!37023 lt!2465180)))))))

(declare-fun b!6899368 () Bool)

(assert (=> b!6899368 (= e!4155227 (or (not (= (_1!37023 lt!2465180) Nil!66486)) (= lt!2465299 (_1!37023 lt!2465172))))))

(declare-fun b!6899365 () Bool)

(assert (=> b!6899365 (= e!4155226 (_1!37023 lt!2465180))))

(assert (= (and d!2161844 c!1282104) b!6899365))

(assert (= (and d!2161844 (not c!1282104)) b!6899366))

(assert (= (and d!2161844 res!2813208) b!6899367))

(assert (= (and b!6899367 res!2813207) b!6899368))

(declare-fun m!7617694 () Bool)

(assert (=> d!2161844 m!7617694))

(assert (=> d!2161844 m!7617306))

(assert (=> d!2161844 m!7617274))

(declare-fun m!7617696 () Bool)

(assert (=> b!6899366 m!7617696))

(declare-fun m!7617698 () Bool)

(assert (=> b!6899367 m!7617698))

(assert (=> b!6899367 m!7617314))

(assert (=> b!6899367 m!7617282))

(assert (=> b!6898574 d!2161844))

(declare-fun d!2161846 () Bool)

(declare-fun e!4155232 () Bool)

(assert (=> d!2161846 e!4155232))

(declare-fun c!1282106 () Bool)

(assert (=> d!2161846 (= c!1282106 ((_ is EmptyExpr!16853) lt!2465171))))

(declare-fun lt!2465300 () Bool)

(declare-fun e!4155231 () Bool)

(assert (=> d!2161846 (= lt!2465300 e!4155231)))

(declare-fun c!1282107 () Bool)

(assert (=> d!2161846 (= c!1282107 (isEmpty!38721 (_2!37023 lt!2465172)))))

(assert (=> d!2161846 (validRegex!8561 lt!2465171)))

(assert (=> d!2161846 (= (matchR!8998 lt!2465171 (_2!37023 lt!2465172)) lt!2465300)))

(declare-fun b!6899369 () Bool)

(declare-fun res!2813209 () Bool)

(declare-fun e!4155230 () Bool)

(assert (=> b!6899369 (=> (not res!2813209) (not e!4155230))))

(declare-fun call!627526 () Bool)

(assert (=> b!6899369 (= res!2813209 (not call!627526))))

(declare-fun b!6899370 () Bool)

(declare-fun e!4155233 () Bool)

(declare-fun e!4155234 () Bool)

(assert (=> b!6899370 (= e!4155233 e!4155234)))

(declare-fun res!2813210 () Bool)

(assert (=> b!6899370 (=> res!2813210 e!4155234)))

(assert (=> b!6899370 (= res!2813210 call!627526)))

(declare-fun b!6899371 () Bool)

(declare-fun e!4155229 () Bool)

(assert (=> b!6899371 (= e!4155229 e!4155233)))

(declare-fun res!2813213 () Bool)

(assert (=> b!6899371 (=> (not res!2813213) (not e!4155233))))

(assert (=> b!6899371 (= res!2813213 (not lt!2465300))))

(declare-fun b!6899372 () Bool)

(assert (=> b!6899372 (= e!4155231 (matchR!8998 (derivativeStep!5383 lt!2465171 (head!13836 (_2!37023 lt!2465172))) (tail!12888 (_2!37023 lt!2465172))))))

(declare-fun b!6899373 () Bool)

(declare-fun e!4155228 () Bool)

(assert (=> b!6899373 (= e!4155232 e!4155228)))

(declare-fun c!1282105 () Bool)

(assert (=> b!6899373 (= c!1282105 ((_ is EmptyLang!16853) lt!2465171))))

(declare-fun bm!627521 () Bool)

(assert (=> bm!627521 (= call!627526 (isEmpty!38721 (_2!37023 lt!2465172)))))

(declare-fun b!6899374 () Bool)

(assert (=> b!6899374 (= e!4155234 (not (= (head!13836 (_2!37023 lt!2465172)) (c!1281929 lt!2465171))))))

(declare-fun b!6899375 () Bool)

(declare-fun res!2813216 () Bool)

(assert (=> b!6899375 (=> res!2813216 e!4155229)))

(assert (=> b!6899375 (= res!2813216 (not ((_ is ElementMatch!16853) lt!2465171)))))

(assert (=> b!6899375 (= e!4155228 e!4155229)))

(declare-fun b!6899376 () Bool)

(assert (=> b!6899376 (= e!4155230 (= (head!13836 (_2!37023 lt!2465172)) (c!1281929 lt!2465171)))))

(declare-fun b!6899377 () Bool)

(assert (=> b!6899377 (= e!4155231 (nullable!6704 lt!2465171))))

(declare-fun b!6899378 () Bool)

(declare-fun res!2813212 () Bool)

(assert (=> b!6899378 (=> res!2813212 e!4155234)))

(assert (=> b!6899378 (= res!2813212 (not (isEmpty!38721 (tail!12888 (_2!37023 lt!2465172)))))))

(declare-fun b!6899379 () Bool)

(assert (=> b!6899379 (= e!4155232 (= lt!2465300 call!627526))))

(declare-fun b!6899380 () Bool)

(declare-fun res!2813215 () Bool)

(assert (=> b!6899380 (=> res!2813215 e!4155229)))

(assert (=> b!6899380 (= res!2813215 e!4155230)))

(declare-fun res!2813211 () Bool)

(assert (=> b!6899380 (=> (not res!2813211) (not e!4155230))))

(assert (=> b!6899380 (= res!2813211 lt!2465300)))

(declare-fun b!6899381 () Bool)

(assert (=> b!6899381 (= e!4155228 (not lt!2465300))))

(declare-fun b!6899382 () Bool)

(declare-fun res!2813214 () Bool)

(assert (=> b!6899382 (=> (not res!2813214) (not e!4155230))))

(assert (=> b!6899382 (= res!2813214 (isEmpty!38721 (tail!12888 (_2!37023 lt!2465172))))))

(assert (= (and d!2161846 c!1282107) b!6899377))

(assert (= (and d!2161846 (not c!1282107)) b!6899372))

(assert (= (and d!2161846 c!1282106) b!6899379))

(assert (= (and d!2161846 (not c!1282106)) b!6899373))

(assert (= (and b!6899373 c!1282105) b!6899381))

(assert (= (and b!6899373 (not c!1282105)) b!6899375))

(assert (= (and b!6899375 (not res!2813216)) b!6899380))

(assert (= (and b!6899380 res!2813211) b!6899369))

(assert (= (and b!6899369 res!2813209) b!6899382))

(assert (= (and b!6899382 res!2813214) b!6899376))

(assert (= (and b!6899380 (not res!2813215)) b!6899371))

(assert (= (and b!6899371 res!2813213) b!6899370))

(assert (= (and b!6899370 (not res!2813210)) b!6899378))

(assert (= (and b!6899378 (not res!2813212)) b!6899374))

(assert (= (or b!6899379 b!6899369 b!6899370) bm!627521))

(declare-fun m!7617700 () Bool)

(assert (=> b!6899377 m!7617700))

(declare-fun m!7617702 () Bool)

(assert (=> b!6899374 m!7617702))

(assert (=> bm!627521 m!7617436))

(declare-fun m!7617704 () Bool)

(assert (=> b!6899378 m!7617704))

(assert (=> b!6899378 m!7617704))

(declare-fun m!7617706 () Bool)

(assert (=> b!6899378 m!7617706))

(assert (=> b!6899382 m!7617704))

(assert (=> b!6899382 m!7617704))

(assert (=> b!6899382 m!7617706))

(assert (=> d!2161846 m!7617436))

(assert (=> d!2161846 m!7617440))

(assert (=> b!6899372 m!7617702))

(assert (=> b!6899372 m!7617702))

(declare-fun m!7617708 () Bool)

(assert (=> b!6899372 m!7617708))

(assert (=> b!6899372 m!7617704))

(assert (=> b!6899372 m!7617708))

(assert (=> b!6899372 m!7617704))

(declare-fun m!7617710 () Bool)

(assert (=> b!6899372 m!7617710))

(assert (=> b!6899376 m!7617702))

(assert (=> b!6898571 d!2161846))

(declare-fun d!2161848 () Bool)

(assert (=> d!2161848 (= (isDefined!13335 lt!2465183) (not (isEmpty!38723 lt!2465183)))))

(declare-fun bs!1841729 () Bool)

(assert (= bs!1841729 d!2161848))

(declare-fun m!7617712 () Bool)

(assert (=> bs!1841729 m!7617712))

(assert (=> b!6898576 d!2161848))

(declare-fun d!2161850 () Bool)

(declare-fun e!4155237 () Bool)

(assert (=> d!2161850 e!4155237))

(declare-fun res!2813218 () Bool)

(assert (=> d!2161850 (=> res!2813218 e!4155237)))

(declare-fun e!4155238 () Bool)

(assert (=> d!2161850 (= res!2813218 e!4155238)))

(declare-fun res!2813219 () Bool)

(assert (=> d!2161850 (=> (not res!2813219) (not e!4155238))))

(declare-fun lt!2465302 () Option!16632)

(assert (=> d!2161850 (= res!2813219 (isDefined!13335 lt!2465302))))

(declare-fun e!4155239 () Option!16632)

(assert (=> d!2161850 (= lt!2465302 e!4155239)))

(declare-fun c!1282109 () Bool)

(declare-fun e!4155235 () Bool)

(assert (=> d!2161850 (= c!1282109 e!4155235)))

(declare-fun res!2813221 () Bool)

(assert (=> d!2161850 (=> (not res!2813221) (not e!4155235))))

(assert (=> d!2161850 (= res!2813221 (matchR!8998 r1!6342 Nil!66486))))

(assert (=> d!2161850 (validRegex!8561 r1!6342)))

(assert (=> d!2161850 (= (findConcatSeparation!3046 r1!6342 lt!2465171 Nil!66486 s!14361 s!14361) lt!2465302)))

(declare-fun b!6899383 () Bool)

(declare-fun e!4155236 () Option!16632)

(assert (=> b!6899383 (= e!4155236 None!16631)))

(declare-fun b!6899384 () Bool)

(declare-fun lt!2465301 () Unit!160426)

(declare-fun lt!2465303 () Unit!160426)

(assert (=> b!6899384 (= lt!2465301 lt!2465303)))

(assert (=> b!6899384 (= (++!14906 (++!14906 Nil!66486 (Cons!66486 (h!72934 s!14361) Nil!66486)) (t!380353 s!14361)) s!14361)))

(assert (=> b!6899384 (= lt!2465303 (lemmaMoveElementToOtherListKeepsConcatEq!2791 Nil!66486 (h!72934 s!14361) (t!380353 s!14361) s!14361))))

(assert (=> b!6899384 (= e!4155236 (findConcatSeparation!3046 r1!6342 lt!2465171 (++!14906 Nil!66486 (Cons!66486 (h!72934 s!14361) Nil!66486)) (t!380353 s!14361) s!14361))))

(declare-fun b!6899385 () Bool)

(assert (=> b!6899385 (= e!4155237 (not (isDefined!13335 lt!2465302)))))

(declare-fun b!6899386 () Bool)

(assert (=> b!6899386 (= e!4155239 e!4155236)))

(declare-fun c!1282108 () Bool)

(assert (=> b!6899386 (= c!1282108 ((_ is Nil!66486) s!14361))))

(declare-fun b!6899387 () Bool)

(assert (=> b!6899387 (= e!4155238 (= (++!14906 (_1!37023 (get!23230 lt!2465302)) (_2!37023 (get!23230 lt!2465302))) s!14361))))

(declare-fun b!6899388 () Bool)

(declare-fun res!2813220 () Bool)

(assert (=> b!6899388 (=> (not res!2813220) (not e!4155238))))

(assert (=> b!6899388 (= res!2813220 (matchR!8998 lt!2465171 (_2!37023 (get!23230 lt!2465302))))))

(declare-fun b!6899389 () Bool)

(assert (=> b!6899389 (= e!4155239 (Some!16631 (tuple2!67441 Nil!66486 s!14361)))))

(declare-fun b!6899390 () Bool)

(assert (=> b!6899390 (= e!4155235 (matchR!8998 lt!2465171 s!14361))))

(declare-fun b!6899391 () Bool)

(declare-fun res!2813217 () Bool)

(assert (=> b!6899391 (=> (not res!2813217) (not e!4155238))))

(assert (=> b!6899391 (= res!2813217 (matchR!8998 r1!6342 (_1!37023 (get!23230 lt!2465302))))))

(assert (= (and d!2161850 res!2813221) b!6899390))

(assert (= (and d!2161850 c!1282109) b!6899389))

(assert (= (and d!2161850 (not c!1282109)) b!6899386))

(assert (= (and b!6899386 c!1282108) b!6899383))

(assert (= (and b!6899386 (not c!1282108)) b!6899384))

(assert (= (and d!2161850 res!2813219) b!6899391))

(assert (= (and b!6899391 res!2813217) b!6899388))

(assert (= (and b!6899388 res!2813220) b!6899387))

(assert (= (and d!2161850 (not res!2813218)) b!6899385))

(declare-fun m!7617714 () Bool)

(assert (=> b!6899388 m!7617714))

(declare-fun m!7617716 () Bool)

(assert (=> b!6899388 m!7617716))

(assert (=> b!6899391 m!7617714))

(declare-fun m!7617718 () Bool)

(assert (=> b!6899391 m!7617718))

(assert (=> b!6899387 m!7617714))

(declare-fun m!7617720 () Bool)

(assert (=> b!6899387 m!7617720))

(declare-fun m!7617722 () Bool)

(assert (=> b!6899390 m!7617722))

(declare-fun m!7617724 () Bool)

(assert (=> b!6899384 m!7617724))

(assert (=> b!6899384 m!7617724))

(declare-fun m!7617726 () Bool)

(assert (=> b!6899384 m!7617726))

(declare-fun m!7617728 () Bool)

(assert (=> b!6899384 m!7617728))

(assert (=> b!6899384 m!7617724))

(declare-fun m!7617730 () Bool)

(assert (=> b!6899384 m!7617730))

(declare-fun m!7617732 () Bool)

(assert (=> d!2161850 m!7617732))

(assert (=> d!2161850 m!7617664))

(assert (=> d!2161850 m!7617042))

(assert (=> b!6899385 m!7617732))

(assert (=> b!6898576 d!2161850))

(declare-fun bm!627522 () Bool)

(declare-fun call!627527 () Bool)

(declare-fun call!627529 () Bool)

(assert (=> bm!627522 (= call!627527 call!627529)))

(declare-fun b!6899392 () Bool)

(declare-fun e!4155242 () Bool)

(declare-fun e!4155245 () Bool)

(assert (=> b!6899392 (= e!4155242 e!4155245)))

(declare-fun c!1282111 () Bool)

(assert (=> b!6899392 (= c!1282111 ((_ is Star!16853) r2!6280))))

(declare-fun c!1282110 () Bool)

(declare-fun bm!627523 () Bool)

(assert (=> bm!627523 (= call!627529 (validRegex!8561 (ite c!1282111 (reg!17182 r2!6280) (ite c!1282110 (regOne!34219 r2!6280) (regTwo!34218 r2!6280)))))))

(declare-fun b!6899393 () Bool)

(declare-fun e!4155241 () Bool)

(assert (=> b!6899393 (= e!4155245 e!4155241)))

(declare-fun res!2813224 () Bool)

(assert (=> b!6899393 (= res!2813224 (not (nullable!6704 (reg!17182 r2!6280))))))

(assert (=> b!6899393 (=> (not res!2813224) (not e!4155241))))

(declare-fun b!6899394 () Bool)

(declare-fun res!2813223 () Bool)

(declare-fun e!4155246 () Bool)

(assert (=> b!6899394 (=> (not res!2813223) (not e!4155246))))

(assert (=> b!6899394 (= res!2813223 call!627527)))

(declare-fun e!4155240 () Bool)

(assert (=> b!6899394 (= e!4155240 e!4155246)))

(declare-fun d!2161852 () Bool)

(declare-fun res!2813222 () Bool)

(assert (=> d!2161852 (=> res!2813222 e!4155242)))

(assert (=> d!2161852 (= res!2813222 ((_ is ElementMatch!16853) r2!6280))))

(assert (=> d!2161852 (= (validRegex!8561 r2!6280) e!4155242)))

(declare-fun bm!627524 () Bool)

(declare-fun call!627528 () Bool)

(assert (=> bm!627524 (= call!627528 (validRegex!8561 (ite c!1282110 (regTwo!34219 r2!6280) (regOne!34218 r2!6280))))))

(declare-fun b!6899395 () Bool)

(assert (=> b!6899395 (= e!4155241 call!627529)))

(declare-fun b!6899396 () Bool)

(declare-fun e!4155244 () Bool)

(assert (=> b!6899396 (= e!4155244 call!627527)))

(declare-fun b!6899397 () Bool)

(assert (=> b!6899397 (= e!4155245 e!4155240)))

(assert (=> b!6899397 (= c!1282110 ((_ is Union!16853) r2!6280))))

(declare-fun b!6899398 () Bool)

(assert (=> b!6899398 (= e!4155246 call!627528)))

(declare-fun b!6899399 () Bool)

(declare-fun e!4155243 () Bool)

(assert (=> b!6899399 (= e!4155243 e!4155244)))

(declare-fun res!2813225 () Bool)

(assert (=> b!6899399 (=> (not res!2813225) (not e!4155244))))

(assert (=> b!6899399 (= res!2813225 call!627528)))

(declare-fun b!6899400 () Bool)

(declare-fun res!2813226 () Bool)

(assert (=> b!6899400 (=> res!2813226 e!4155243)))

(assert (=> b!6899400 (= res!2813226 (not ((_ is Concat!25698) r2!6280)))))

(assert (=> b!6899400 (= e!4155240 e!4155243)))

(assert (= (and d!2161852 (not res!2813222)) b!6899392))

(assert (= (and b!6899392 c!1282111) b!6899393))

(assert (= (and b!6899392 (not c!1282111)) b!6899397))

(assert (= (and b!6899393 res!2813224) b!6899395))

(assert (= (and b!6899397 c!1282110) b!6899394))

(assert (= (and b!6899397 (not c!1282110)) b!6899400))

(assert (= (and b!6899394 res!2813223) b!6899398))

(assert (= (and b!6899400 (not res!2813226)) b!6899399))

(assert (= (and b!6899399 res!2813225) b!6899396))

(assert (= (or b!6899394 b!6899396) bm!627522))

(assert (= (or b!6899398 b!6899399) bm!627524))

(assert (= (or b!6899395 bm!627522) bm!627523))

(declare-fun m!7617734 () Bool)

(assert (=> bm!627523 m!7617734))

(declare-fun m!7617736 () Bool)

(assert (=> b!6899393 m!7617736))

(declare-fun m!7617738 () Bool)

(assert (=> bm!627524 m!7617738))

(assert (=> b!6898565 d!2161852))

(declare-fun b!6899412 () Bool)

(declare-fun e!4155249 () Bool)

(declare-fun tp!1899389 () Bool)

(declare-fun tp!1899386 () Bool)

(assert (=> b!6899412 (= e!4155249 (and tp!1899389 tp!1899386))))

(declare-fun b!6899411 () Bool)

(assert (=> b!6899411 (= e!4155249 tp_is_empty!42931)))

(declare-fun b!6899413 () Bool)

(declare-fun tp!1899387 () Bool)

(assert (=> b!6899413 (= e!4155249 tp!1899387)))

(assert (=> b!6898567 (= tp!1899275 e!4155249)))

(declare-fun b!6899414 () Bool)

(declare-fun tp!1899390 () Bool)

(declare-fun tp!1899388 () Bool)

(assert (=> b!6899414 (= e!4155249 (and tp!1899390 tp!1899388))))

(assert (= (and b!6898567 ((_ is ElementMatch!16853) (reg!17182 r1!6342))) b!6899411))

(assert (= (and b!6898567 ((_ is Concat!25698) (reg!17182 r1!6342))) b!6899412))

(assert (= (and b!6898567 ((_ is Star!16853) (reg!17182 r1!6342))) b!6899413))

(assert (= (and b!6898567 ((_ is Union!16853) (reg!17182 r1!6342))) b!6899414))

(declare-fun b!6899416 () Bool)

(declare-fun e!4155250 () Bool)

(declare-fun tp!1899394 () Bool)

(declare-fun tp!1899391 () Bool)

(assert (=> b!6899416 (= e!4155250 (and tp!1899394 tp!1899391))))

(declare-fun b!6899415 () Bool)

(assert (=> b!6899415 (= e!4155250 tp_is_empty!42931)))

(declare-fun b!6899417 () Bool)

(declare-fun tp!1899392 () Bool)

(assert (=> b!6899417 (= e!4155250 tp!1899392)))

(assert (=> b!6898561 (= tp!1899281 e!4155250)))

(declare-fun b!6899418 () Bool)

(declare-fun tp!1899395 () Bool)

(declare-fun tp!1899393 () Bool)

(assert (=> b!6899418 (= e!4155250 (and tp!1899395 tp!1899393))))

(assert (= (and b!6898561 ((_ is ElementMatch!16853) (regOne!34218 r2!6280))) b!6899415))

(assert (= (and b!6898561 ((_ is Concat!25698) (regOne!34218 r2!6280))) b!6899416))

(assert (= (and b!6898561 ((_ is Star!16853) (regOne!34218 r2!6280))) b!6899417))

(assert (= (and b!6898561 ((_ is Union!16853) (regOne!34218 r2!6280))) b!6899418))

(declare-fun b!6899420 () Bool)

(declare-fun e!4155251 () Bool)

(declare-fun tp!1899399 () Bool)

(declare-fun tp!1899396 () Bool)

(assert (=> b!6899420 (= e!4155251 (and tp!1899399 tp!1899396))))

(declare-fun b!6899419 () Bool)

(assert (=> b!6899419 (= e!4155251 tp_is_empty!42931)))

(declare-fun b!6899421 () Bool)

(declare-fun tp!1899397 () Bool)

(assert (=> b!6899421 (= e!4155251 tp!1899397)))

(assert (=> b!6898561 (= tp!1899287 e!4155251)))

(declare-fun b!6899422 () Bool)

(declare-fun tp!1899400 () Bool)

(declare-fun tp!1899398 () Bool)

(assert (=> b!6899422 (= e!4155251 (and tp!1899400 tp!1899398))))

(assert (= (and b!6898561 ((_ is ElementMatch!16853) (regTwo!34218 r2!6280))) b!6899419))

(assert (= (and b!6898561 ((_ is Concat!25698) (regTwo!34218 r2!6280))) b!6899420))

(assert (= (and b!6898561 ((_ is Star!16853) (regTwo!34218 r2!6280))) b!6899421))

(assert (= (and b!6898561 ((_ is Union!16853) (regTwo!34218 r2!6280))) b!6899422))

(declare-fun b!6899424 () Bool)

(declare-fun e!4155252 () Bool)

(declare-fun tp!1899404 () Bool)

(declare-fun tp!1899401 () Bool)

(assert (=> b!6899424 (= e!4155252 (and tp!1899404 tp!1899401))))

(declare-fun b!6899423 () Bool)

(assert (=> b!6899423 (= e!4155252 tp_is_empty!42931)))

(declare-fun b!6899425 () Bool)

(declare-fun tp!1899402 () Bool)

(assert (=> b!6899425 (= e!4155252 tp!1899402)))

(assert (=> b!6898573 (= tp!1899283 e!4155252)))

(declare-fun b!6899426 () Bool)

(declare-fun tp!1899405 () Bool)

(declare-fun tp!1899403 () Bool)

(assert (=> b!6899426 (= e!4155252 (and tp!1899405 tp!1899403))))

(assert (= (and b!6898573 ((_ is ElementMatch!16853) (reg!17182 r2!6280))) b!6899423))

(assert (= (and b!6898573 ((_ is Concat!25698) (reg!17182 r2!6280))) b!6899424))

(assert (= (and b!6898573 ((_ is Star!16853) (reg!17182 r2!6280))) b!6899425))

(assert (= (and b!6898573 ((_ is Union!16853) (reg!17182 r2!6280))) b!6899426))

(declare-fun b!6899431 () Bool)

(declare-fun e!4155255 () Bool)

(declare-fun tp!1899408 () Bool)

(assert (=> b!6899431 (= e!4155255 (and tp_is_empty!42931 tp!1899408))))

(assert (=> b!6898557 (= tp!1899280 e!4155255)))

(assert (= (and b!6898557 ((_ is Cons!66486) (t!380353 s!14361))) b!6899431))

(declare-fun b!6899433 () Bool)

(declare-fun e!4155256 () Bool)

(declare-fun tp!1899412 () Bool)

(declare-fun tp!1899409 () Bool)

(assert (=> b!6899433 (= e!4155256 (and tp!1899412 tp!1899409))))

(declare-fun b!6899432 () Bool)

(assert (=> b!6899432 (= e!4155256 tp_is_empty!42931)))

(declare-fun b!6899434 () Bool)

(declare-fun tp!1899410 () Bool)

(assert (=> b!6899434 (= e!4155256 tp!1899410)))

(assert (=> b!6898578 (= tp!1899278 e!4155256)))

(declare-fun b!6899435 () Bool)

(declare-fun tp!1899413 () Bool)

(declare-fun tp!1899411 () Bool)

(assert (=> b!6899435 (= e!4155256 (and tp!1899413 tp!1899411))))

(assert (= (and b!6898578 ((_ is ElementMatch!16853) (regOne!34219 r2!6280))) b!6899432))

(assert (= (and b!6898578 ((_ is Concat!25698) (regOne!34219 r2!6280))) b!6899433))

(assert (= (and b!6898578 ((_ is Star!16853) (regOne!34219 r2!6280))) b!6899434))

(assert (= (and b!6898578 ((_ is Union!16853) (regOne!34219 r2!6280))) b!6899435))

(declare-fun b!6899437 () Bool)

(declare-fun e!4155257 () Bool)

(declare-fun tp!1899417 () Bool)

(declare-fun tp!1899414 () Bool)

(assert (=> b!6899437 (= e!4155257 (and tp!1899417 tp!1899414))))

(declare-fun b!6899436 () Bool)

(assert (=> b!6899436 (= e!4155257 tp_is_empty!42931)))

(declare-fun b!6899438 () Bool)

(declare-fun tp!1899415 () Bool)

(assert (=> b!6899438 (= e!4155257 tp!1899415)))

(assert (=> b!6898578 (= tp!1899279 e!4155257)))

(declare-fun b!6899439 () Bool)

(declare-fun tp!1899418 () Bool)

(declare-fun tp!1899416 () Bool)

(assert (=> b!6899439 (= e!4155257 (and tp!1899418 tp!1899416))))

(assert (= (and b!6898578 ((_ is ElementMatch!16853) (regTwo!34219 r2!6280))) b!6899436))

(assert (= (and b!6898578 ((_ is Concat!25698) (regTwo!34219 r2!6280))) b!6899437))

(assert (= (and b!6898578 ((_ is Star!16853) (regTwo!34219 r2!6280))) b!6899438))

(assert (= (and b!6898578 ((_ is Union!16853) (regTwo!34219 r2!6280))) b!6899439))

(declare-fun b!6899441 () Bool)

(declare-fun e!4155258 () Bool)

(declare-fun tp!1899422 () Bool)

(declare-fun tp!1899419 () Bool)

(assert (=> b!6899441 (= e!4155258 (and tp!1899422 tp!1899419))))

(declare-fun b!6899440 () Bool)

(assert (=> b!6899440 (= e!4155258 tp_is_empty!42931)))

(declare-fun b!6899442 () Bool)

(declare-fun tp!1899420 () Bool)

(assert (=> b!6899442 (= e!4155258 tp!1899420)))

(assert (=> b!6898562 (= tp!1899286 e!4155258)))

(declare-fun b!6899443 () Bool)

(declare-fun tp!1899423 () Bool)

(declare-fun tp!1899421 () Bool)

(assert (=> b!6899443 (= e!4155258 (and tp!1899423 tp!1899421))))

(assert (= (and b!6898562 ((_ is ElementMatch!16853) (regOne!34219 r3!135))) b!6899440))

(assert (= (and b!6898562 ((_ is Concat!25698) (regOne!34219 r3!135))) b!6899441))

(assert (= (and b!6898562 ((_ is Star!16853) (regOne!34219 r3!135))) b!6899442))

(assert (= (and b!6898562 ((_ is Union!16853) (regOne!34219 r3!135))) b!6899443))

(declare-fun b!6899445 () Bool)

(declare-fun e!4155259 () Bool)

(declare-fun tp!1899427 () Bool)

(declare-fun tp!1899424 () Bool)

(assert (=> b!6899445 (= e!4155259 (and tp!1899427 tp!1899424))))

(declare-fun b!6899444 () Bool)

(assert (=> b!6899444 (= e!4155259 tp_is_empty!42931)))

(declare-fun b!6899446 () Bool)

(declare-fun tp!1899425 () Bool)

(assert (=> b!6899446 (= e!4155259 tp!1899425)))

(assert (=> b!6898562 (= tp!1899274 e!4155259)))

(declare-fun b!6899447 () Bool)

(declare-fun tp!1899428 () Bool)

(declare-fun tp!1899426 () Bool)

(assert (=> b!6899447 (= e!4155259 (and tp!1899428 tp!1899426))))

(assert (= (and b!6898562 ((_ is ElementMatch!16853) (regTwo!34219 r3!135))) b!6899444))

(assert (= (and b!6898562 ((_ is Concat!25698) (regTwo!34219 r3!135))) b!6899445))

(assert (= (and b!6898562 ((_ is Star!16853) (regTwo!34219 r3!135))) b!6899446))

(assert (= (and b!6898562 ((_ is Union!16853) (regTwo!34219 r3!135))) b!6899447))

(declare-fun b!6899449 () Bool)

(declare-fun e!4155260 () Bool)

(declare-fun tp!1899432 () Bool)

(declare-fun tp!1899429 () Bool)

(assert (=> b!6899449 (= e!4155260 (and tp!1899432 tp!1899429))))

(declare-fun b!6899448 () Bool)

(assert (=> b!6899448 (= e!4155260 tp_is_empty!42931)))

(declare-fun b!6899450 () Bool)

(declare-fun tp!1899430 () Bool)

(assert (=> b!6899450 (= e!4155260 tp!1899430)))

(assert (=> b!6898575 (= tp!1899285 e!4155260)))

(declare-fun b!6899451 () Bool)

(declare-fun tp!1899433 () Bool)

(declare-fun tp!1899431 () Bool)

(assert (=> b!6899451 (= e!4155260 (and tp!1899433 tp!1899431))))

(assert (= (and b!6898575 ((_ is ElementMatch!16853) (regOne!34218 r1!6342))) b!6899448))

(assert (= (and b!6898575 ((_ is Concat!25698) (regOne!34218 r1!6342))) b!6899449))

(assert (= (and b!6898575 ((_ is Star!16853) (regOne!34218 r1!6342))) b!6899450))

(assert (= (and b!6898575 ((_ is Union!16853) (regOne!34218 r1!6342))) b!6899451))

(declare-fun b!6899453 () Bool)

(declare-fun e!4155261 () Bool)

(declare-fun tp!1899437 () Bool)

(declare-fun tp!1899434 () Bool)

(assert (=> b!6899453 (= e!4155261 (and tp!1899437 tp!1899434))))

(declare-fun b!6899452 () Bool)

(assert (=> b!6899452 (= e!4155261 tp_is_empty!42931)))

(declare-fun b!6899454 () Bool)

(declare-fun tp!1899435 () Bool)

(assert (=> b!6899454 (= e!4155261 tp!1899435)))

(assert (=> b!6898575 (= tp!1899277 e!4155261)))

(declare-fun b!6899455 () Bool)

(declare-fun tp!1899438 () Bool)

(declare-fun tp!1899436 () Bool)

(assert (=> b!6899455 (= e!4155261 (and tp!1899438 tp!1899436))))

(assert (= (and b!6898575 ((_ is ElementMatch!16853) (regTwo!34218 r1!6342))) b!6899452))

(assert (= (and b!6898575 ((_ is Concat!25698) (regTwo!34218 r1!6342))) b!6899453))

(assert (= (and b!6898575 ((_ is Star!16853) (regTwo!34218 r1!6342))) b!6899454))

(assert (= (and b!6898575 ((_ is Union!16853) (regTwo!34218 r1!6342))) b!6899455))

(declare-fun b!6899457 () Bool)

(declare-fun e!4155262 () Bool)

(declare-fun tp!1899442 () Bool)

(declare-fun tp!1899439 () Bool)

(assert (=> b!6899457 (= e!4155262 (and tp!1899442 tp!1899439))))

(declare-fun b!6899456 () Bool)

(assert (=> b!6899456 (= e!4155262 tp_is_empty!42931)))

(declare-fun b!6899458 () Bool)

(declare-fun tp!1899440 () Bool)

(assert (=> b!6899458 (= e!4155262 tp!1899440)))

(assert (=> b!6898559 (= tp!1899276 e!4155262)))

(declare-fun b!6899459 () Bool)

(declare-fun tp!1899443 () Bool)

(declare-fun tp!1899441 () Bool)

(assert (=> b!6899459 (= e!4155262 (and tp!1899443 tp!1899441))))

(assert (= (and b!6898559 ((_ is ElementMatch!16853) (regOne!34219 r1!6342))) b!6899456))

(assert (= (and b!6898559 ((_ is Concat!25698) (regOne!34219 r1!6342))) b!6899457))

(assert (= (and b!6898559 ((_ is Star!16853) (regOne!34219 r1!6342))) b!6899458))

(assert (= (and b!6898559 ((_ is Union!16853) (regOne!34219 r1!6342))) b!6899459))

(declare-fun b!6899461 () Bool)

(declare-fun e!4155263 () Bool)

(declare-fun tp!1899447 () Bool)

(declare-fun tp!1899444 () Bool)

(assert (=> b!6899461 (= e!4155263 (and tp!1899447 tp!1899444))))

(declare-fun b!6899460 () Bool)

(assert (=> b!6899460 (= e!4155263 tp_is_empty!42931)))

(declare-fun b!6899462 () Bool)

(declare-fun tp!1899445 () Bool)

(assert (=> b!6899462 (= e!4155263 tp!1899445)))

(assert (=> b!6898559 (= tp!1899284 e!4155263)))

(declare-fun b!6899463 () Bool)

(declare-fun tp!1899448 () Bool)

(declare-fun tp!1899446 () Bool)

(assert (=> b!6899463 (= e!4155263 (and tp!1899448 tp!1899446))))

(assert (= (and b!6898559 ((_ is ElementMatch!16853) (regTwo!34219 r1!6342))) b!6899460))

(assert (= (and b!6898559 ((_ is Concat!25698) (regTwo!34219 r1!6342))) b!6899461))

(assert (= (and b!6898559 ((_ is Star!16853) (regTwo!34219 r1!6342))) b!6899462))

(assert (= (and b!6898559 ((_ is Union!16853) (regTwo!34219 r1!6342))) b!6899463))

(declare-fun b!6899465 () Bool)

(declare-fun e!4155264 () Bool)

(declare-fun tp!1899452 () Bool)

(declare-fun tp!1899449 () Bool)

(assert (=> b!6899465 (= e!4155264 (and tp!1899452 tp!1899449))))

(declare-fun b!6899464 () Bool)

(assert (=> b!6899464 (= e!4155264 tp_is_empty!42931)))

(declare-fun b!6899466 () Bool)

(declare-fun tp!1899450 () Bool)

(assert (=> b!6899466 (= e!4155264 tp!1899450)))

(assert (=> b!6898558 (= tp!1899273 e!4155264)))

(declare-fun b!6899467 () Bool)

(declare-fun tp!1899453 () Bool)

(declare-fun tp!1899451 () Bool)

(assert (=> b!6899467 (= e!4155264 (and tp!1899453 tp!1899451))))

(assert (= (and b!6898558 ((_ is ElementMatch!16853) (regOne!34218 r3!135))) b!6899464))

(assert (= (and b!6898558 ((_ is Concat!25698) (regOne!34218 r3!135))) b!6899465))

(assert (= (and b!6898558 ((_ is Star!16853) (regOne!34218 r3!135))) b!6899466))

(assert (= (and b!6898558 ((_ is Union!16853) (regOne!34218 r3!135))) b!6899467))

(declare-fun b!6899469 () Bool)

(declare-fun e!4155265 () Bool)

(declare-fun tp!1899457 () Bool)

(declare-fun tp!1899454 () Bool)

(assert (=> b!6899469 (= e!4155265 (and tp!1899457 tp!1899454))))

(declare-fun b!6899468 () Bool)

(assert (=> b!6899468 (= e!4155265 tp_is_empty!42931)))

(declare-fun b!6899470 () Bool)

(declare-fun tp!1899455 () Bool)

(assert (=> b!6899470 (= e!4155265 tp!1899455)))

(assert (=> b!6898558 (= tp!1899272 e!4155265)))

(declare-fun b!6899471 () Bool)

(declare-fun tp!1899458 () Bool)

(declare-fun tp!1899456 () Bool)

(assert (=> b!6899471 (= e!4155265 (and tp!1899458 tp!1899456))))

(assert (= (and b!6898558 ((_ is ElementMatch!16853) (regTwo!34218 r3!135))) b!6899468))

(assert (= (and b!6898558 ((_ is Concat!25698) (regTwo!34218 r3!135))) b!6899469))

(assert (= (and b!6898558 ((_ is Star!16853) (regTwo!34218 r3!135))) b!6899470))

(assert (= (and b!6898558 ((_ is Union!16853) (regTwo!34218 r3!135))) b!6899471))

(declare-fun b!6899473 () Bool)

(declare-fun e!4155266 () Bool)

(declare-fun tp!1899462 () Bool)

(declare-fun tp!1899459 () Bool)

(assert (=> b!6899473 (= e!4155266 (and tp!1899462 tp!1899459))))

(declare-fun b!6899472 () Bool)

(assert (=> b!6899472 (= e!4155266 tp_is_empty!42931)))

(declare-fun b!6899474 () Bool)

(declare-fun tp!1899460 () Bool)

(assert (=> b!6899474 (= e!4155266 tp!1899460)))

(assert (=> b!6898560 (= tp!1899282 e!4155266)))

(declare-fun b!6899475 () Bool)

(declare-fun tp!1899463 () Bool)

(declare-fun tp!1899461 () Bool)

(assert (=> b!6899475 (= e!4155266 (and tp!1899463 tp!1899461))))

(assert (= (and b!6898560 ((_ is ElementMatch!16853) (reg!17182 r3!135))) b!6899472))

(assert (= (and b!6898560 ((_ is Concat!25698) (reg!17182 r3!135))) b!6899473))

(assert (= (and b!6898560 ((_ is Star!16853) (reg!17182 r3!135))) b!6899474))

(assert (= (and b!6898560 ((_ is Union!16853) (reg!17182 r3!135))) b!6899475))

(check-sat (not b!6899461) (not b!6899388) (not d!2161746) (not b!6899443) (not bm!627503) (not b!6898976) (not b!6898887) (not d!2161834) (not b!6899435) (not b!6898919) (not b!6899362) (not b!6899276) (not b!6898917) (not b!6898844) (not b!6899149) (not bm!627474) (not b!6898880) (not bm!627475) (not b!6899280) (not b!6899434) (not d!2161798) (not bm!627500) (not d!2161698) (not b!6899385) (not d!2161796) (not b!6898982) (not b!6899438) (not b!6898915) (not b!6898923) (not b!6899457) (not b!6899094) (not d!2161712) (not b!6898997) (not d!2161768) (not b!6899306) (not bm!627512) (not bm!627502) (not b!6899425) (not b!6898839) (not b!6898841) (not b!6899437) (not b!6899274) (not b!6899420) (not bm!627501) (not b!6898870) (not b!6899384) (not d!2161824) (not b!6899454) (not d!2161842) (not b!6899387) (not b!6898967) (not b!6899278) (not b!6899445) (not b!6899449) (not b!6898876) (not b!6899284) (not b!6899301) (not bm!627518) (not d!2161702) (not d!2161846) (not d!2161800) (not bm!627447) (not b!6898918) (not b!6899431) (not b!6898889) tp_is_empty!42931 (not b!6898698) (not b!6899441) (not b!6899324) (not b!6898874) (not b!6899450) (not d!2161812) (not b!6899150) (not b!6899451) (not b!6899453) (not d!2161694) (not b!6899279) (not bm!627446) (not b!6899442) (not d!2161830) (not d!2161826) (not b!6899417) (not b!6899467) (not b!6898913) (not d!2161832) (not b!6899393) (not b!6899366) (not b!6899357) (not d!2161828) (not bm!627480) (not b!6899466) (not bm!627479) (not d!2161838) (not d!2161784) (not d!2161840) (not d!2161810) (not d!2161802) (not b!6899080) (not b!6899071) (not bm!627511) (not b!6898983) (not b!6899446) (not b!6899463) (not bm!627498) (not bm!627524) (not b!6899377) (not b!6899347) (not b!6899096) (not b!6899143) (not b!6898968) (not bm!627513) (not b!6899469) (not bm!627514) (not b!6899330) (not d!2161664) (not b!6899473) (not b!6898978) (not b!6899302) (not b!6899313) (not b!6899367) (not b!6899300) (not b!6899390) (not b!6899360) (not b!6899356) (not d!2161668) (not b!6899326) (not bm!627519) (not b!6898875) (not b!6899146) (not b!6899363) (not d!2161806) (not bm!627521) (not b!6899455) (not bm!627520) (not b!6899345) (not b!6899374) (not d!2161720) (not b!6899343) (not b!6899416) (not d!2161772) (not b!6899426) (not b!6899372) (not bm!627515) (not b!6899391) (not b!6899433) (not d!2161848) (not b!6898995) (not bm!627497) (not b!6899378) (not bm!627516) (not b!6899474) (not b!6899462) (not bm!627468) (not b!6899471) (not b!6899424) (not b!6898849) (not b!6899354) (not bm!627523) (not b!6899296) (not b!6899414) (not b!6899422) (not b!6899458) (not b!6899465) (not bm!627481) (not d!2161808) (not b!6899147) (not b!6899439) (not bm!627473) (not d!2161850) (not d!2161822) (not d!2161844) (not bm!627472) (not b!6899418) (not d!2161722) (not b!6899341) (not b!6898872) (not b!6899447) (not b!6899459) (not b!6899376) (not d!2161750) (not b!6899470) (not b!6899359) (not b!6898700) (not d!2161816) (not b!6899346) (not b!6898845) (not d!2161836) (not b!6899382) (not bm!627482) (not b!6898843) (not b!6899298) (not b!6899144) (not b!6899412) (not b!6899353) (not b!6899351) (not b!6899421) (not b!6899475) (not b!6899413) (not b!6899315) (not d!2161670))
(check-sat)
