; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666758 () Bool)

(assert start!666758)

(declare-fun b!6944864 () Bool)

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(declare-fun lambda!395987 () Int)

(declare-fun lambda!395986 () Int)

(assert (=> b!6944864 (not (= lambda!395987 lambda!395986))))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(declare-fun lambda!395988 () Int)

(declare-datatypes ((C!34224 0))(
  ( (C!34225 (val!26814 Int)) )
))
(declare-datatypes ((Regex!16977 0))(
  ( (ElementMatch!16977 (c!1288489 C!34224)) (Concat!25822 (regOne!34466 Regex!16977) (regTwo!34466 Regex!16977)) (EmptyExpr!16977) (Star!16977 (reg!17306 Regex!16977)) (EmptyLang!16977) (Union!16977 (regOne!34467 Regex!16977) (regTwo!34467 Regex!16977)) )
))
(declare-fun r1!6342 () Regex!16977)

(declare-fun r3!135 () Regex!16977)

(declare-datatypes ((List!66730 0))(
  ( (Nil!66606) (Cons!66606 (h!73054 C!34224) (t!380473 List!66730)) )
))
(declare-datatypes ((tuple2!67668 0))(
  ( (tuple2!67669 (_1!37137 List!66730) (_2!37137 List!66730)) )
))
(declare-fun lt!2477213 () tuple2!67668)

(declare-fun s!14361 () List!66730)

(declare-fun r2!6280 () Regex!16977)

(declare-fun lt!2477208 () Regex!16977)

(assert (=> b!6944864 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!395988 lambda!395986))))

(assert (=> b!6944864 (not (= lambda!395988 lambda!395987))))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(declare-fun lambda!395989 () Int)

(assert (=> b!6944864 (not (= lambda!395989 lambda!395986))))

(assert (=> b!6944864 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!395989 lambda!395987))))

(assert (=> b!6944864 (not (= lambda!395989 lambda!395988))))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(declare-fun lambda!395990 () Int)

(declare-fun lt!2477209 () List!66730)

(assert (=> b!6944864 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!395990 lambda!395986))))

(assert (=> b!6944864 (not (= lambda!395990 lambda!395987))))

(assert (=> b!6944864 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395990 lambda!395988))))

(assert (=> b!6944864 (not (= lambda!395990 lambda!395989))))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(declare-fun lambda!395991 () Int)

(assert (=> b!6944864 (not (= lambda!395991 lambda!395990))))

(assert (=> b!6944864 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395991 lambda!395989))))

(assert (=> b!6944864 (not (= lambda!395991 lambda!395988))))

(assert (=> b!6944864 (not (= lambda!395991 lambda!395986))))

(assert (=> b!6944864 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!395991 lambda!395987))))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(declare-fun lt!2477206 () Regex!16977)

(declare-fun lambda!395992 () Int)

(assert (=> b!6944864 (= (and (= s!14361 lt!2477209) (= lt!2477206 r1!6342) (= r3!135 r2!6280)) (= lambda!395992 lambda!395990))))

(assert (=> b!6944864 (not (= lambda!395992 lambda!395991))))

(assert (=> b!6944864 (not (= lambda!395992 lambda!395989))))

(assert (=> b!6944864 (= (and (= s!14361 (_2!37137 lt!2477213)) (= lt!2477206 r2!6280)) (= lambda!395992 lambda!395988))))

(assert (=> b!6944864 (= (and (= lt!2477206 r1!6342) (= r3!135 lt!2477208)) (= lambda!395992 lambda!395986))))

(assert (=> b!6944864 (not (= lambda!395992 lambda!395987))))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(assert (=> b!6944864 true))

(declare-fun bs!1856725 () Bool)

(declare-fun b!6944855 () Bool)

(assert (= bs!1856725 (and b!6944855 b!6944864)))

(declare-fun lambda!395993 () Int)

(assert (=> bs!1856725 (= (and (= s!14361 lt!2477209) (= lt!2477208 r2!6280)) (= lambda!395993 lambda!395990))))

(assert (=> bs!1856725 (not (= lambda!395993 lambda!395991))))

(assert (=> bs!1856725 (= (and (= r1!6342 lt!2477206) (= lt!2477208 r3!135)) (= lambda!395993 lambda!395992))))

(assert (=> bs!1856725 (not (= lambda!395993 lambda!395989))))

(assert (=> bs!1856725 (= (and (= s!14361 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= lt!2477208 r3!135)) (= lambda!395993 lambda!395988))))

(assert (=> bs!1856725 (= lambda!395993 lambda!395986)))

(assert (=> bs!1856725 (not (= lambda!395993 lambda!395987))))

(assert (=> b!6944855 true))

(assert (=> b!6944855 true))

(assert (=> b!6944855 true))

(declare-fun bs!1856726 () Bool)

(declare-fun b!6944848 () Bool)

(assert (= bs!1856726 (and b!6944848 b!6944864)))

(declare-fun lambda!395994 () Int)

(assert (=> bs!1856726 (not (= lambda!395994 lambda!395990))))

(assert (=> bs!1856726 (= (and (= s!14361 lt!2477209) (= lt!2477208 r2!6280)) (= lambda!395994 lambda!395991))))

(declare-fun bs!1856727 () Bool)

(assert (= bs!1856727 (and b!6944848 b!6944855)))

(assert (=> bs!1856727 (not (= lambda!395994 lambda!395993))))

(assert (=> bs!1856726 (not (= lambda!395994 lambda!395992))))

(assert (=> bs!1856726 (= (and (= s!14361 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= lt!2477208 r3!135)) (= lambda!395994 lambda!395989))))

(assert (=> bs!1856726 (not (= lambda!395994 lambda!395988))))

(assert (=> bs!1856726 (not (= lambda!395994 lambda!395986))))

(assert (=> bs!1856726 (= lambda!395994 lambda!395987)))

(assert (=> b!6944848 true))

(assert (=> b!6944848 true))

(assert (=> b!6944848 true))

(declare-fun b!6944846 () Bool)

(declare-datatypes ((Unit!160696 0))(
  ( (Unit!160697) )
))
(declare-fun e!4177434 () Unit!160696)

(declare-fun Unit!160698 () Unit!160696)

(assert (=> b!6944846 (= e!4177434 Unit!160698)))

(declare-fun b!6944847 () Bool)

(declare-fun res!2833143 () Bool)

(declare-fun e!4177435 () Bool)

(assert (=> b!6944847 (=> (not res!2833143) (not e!4177435))))

(declare-fun validRegex!8683 (Regex!16977) Bool)

(assert (=> b!6944847 (= res!2833143 (validRegex!8683 r3!135))))

(declare-fun e!4177430 () Bool)

(declare-fun lt!2477211 () Bool)

(assert (=> b!6944848 (= e!4177430 (not lt!2477211))))

(declare-fun Exists!3977 (Int) Bool)

(assert (=> b!6944848 (= (Exists!3977 lambda!395993) (Exists!3977 lambda!395994))))

(declare-fun lt!2477184 () Unit!160696)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2438 (Regex!16977 Regex!16977 List!66730) Unit!160696)

(assert (=> b!6944848 (= lt!2477184 (lemmaExistCutMatchRandMatchRSpecEquivalent!2438 r1!6342 lt!2477208 s!14361))))

(declare-fun b!6944849 () Bool)

(declare-fun e!4177433 () Bool)

(declare-fun tp!1914277 () Bool)

(assert (=> b!6944849 (= e!4177433 tp!1914277)))

(declare-fun b!6944850 () Bool)

(declare-fun tp!1914289 () Bool)

(declare-fun tp!1914280 () Bool)

(assert (=> b!6944850 (= e!4177433 (and tp!1914289 tp!1914280))))

(declare-fun b!6944851 () Bool)

(declare-fun tp_is_empty!43179 () Bool)

(assert (=> b!6944851 (= e!4177433 tp_is_empty!43179)))

(declare-fun b!6944852 () Bool)

(declare-fun e!4177436 () Bool)

(declare-fun tp!1914291 () Bool)

(declare-fun tp!1914283 () Bool)

(assert (=> b!6944852 (= e!4177436 (and tp!1914291 tp!1914283))))

(declare-fun b!6944853 () Bool)

(declare-fun e!4177432 () Bool)

(declare-fun tp!1914284 () Bool)

(assert (=> b!6944853 (= e!4177432 (and tp_is_empty!43179 tp!1914284))))

(declare-fun b!6944854 () Bool)

(assert (=> b!6944854 (= e!4177436 tp_is_empty!43179)))

(declare-fun e!4177431 () Bool)

(assert (=> b!6944855 (= e!4177431 e!4177430)))

(declare-fun res!2833145 () Bool)

(assert (=> b!6944855 (=> res!2833145 e!4177430)))

(assert (=> b!6944855 (= res!2833145 (not (validRegex!8683 lt!2477208)))))

(declare-fun lt!2477190 () Bool)

(assert (=> b!6944855 (= lt!2477190 (Exists!3977 lambda!395993))))

(declare-fun lt!2477196 () Unit!160696)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2918 (Regex!16977 Regex!16977 List!66730) Unit!160696)

(assert (=> b!6944855 (= lt!2477196 (lemmaFindConcatSeparationEquivalentToExists!2918 r1!6342 lt!2477208 s!14361))))

(declare-fun lt!2477182 () Unit!160696)

(assert (=> b!6944855 (= lt!2477182 e!4177434)))

(declare-fun c!1288488 () Bool)

(assert (=> b!6944855 (= c!1288488 lt!2477190)))

(declare-datatypes ((Option!16746 0))(
  ( (None!16745) (Some!16745 (v!53017 tuple2!67668)) )
))
(declare-fun lt!2477185 () Option!16746)

(declare-fun isDefined!13447 (Option!16746) Bool)

(assert (=> b!6944855 (= lt!2477190 (isDefined!13447 lt!2477185))))

(declare-fun findConcatSeparation!3160 (Regex!16977 Regex!16977 List!66730 List!66730 List!66730) Option!16746)

(assert (=> b!6944855 (= lt!2477185 (findConcatSeparation!3160 r1!6342 lt!2477208 Nil!66606 s!14361 s!14361))))

(declare-fun b!6944856 () Bool)

(declare-fun e!4177429 () Bool)

(declare-fun tp!1914286 () Bool)

(declare-fun tp!1914290 () Bool)

(assert (=> b!6944856 (= e!4177429 (and tp!1914286 tp!1914290))))

(declare-fun b!6944857 () Bool)

(declare-fun tp!1914282 () Bool)

(declare-fun tp!1914287 () Bool)

(assert (=> b!6944857 (= e!4177436 (and tp!1914282 tp!1914287))))

(declare-fun b!6944858 () Bool)

(declare-fun tp!1914278 () Bool)

(assert (=> b!6944858 (= e!4177436 tp!1914278)))

(declare-fun b!6944859 () Bool)

(assert (=> b!6944859 (= e!4177429 tp_is_empty!43179)))

(declare-fun b!6944860 () Bool)

(declare-fun tp!1914276 () Bool)

(declare-fun tp!1914288 () Bool)

(assert (=> b!6944860 (= e!4177429 (and tp!1914276 tp!1914288))))

(declare-fun b!6944861 () Bool)

(assert (=> b!6944861 (= e!4177435 (not e!4177431))))

(declare-fun res!2833142 () Bool)

(assert (=> b!6944861 (=> res!2833142 e!4177431)))

(declare-fun lt!2477197 () Bool)

(assert (=> b!6944861 (= res!2833142 lt!2477197)))

(declare-fun lt!2477183 () Regex!16977)

(declare-fun matchRSpec!4034 (Regex!16977 List!66730) Bool)

(assert (=> b!6944861 (= lt!2477211 (matchRSpec!4034 lt!2477183 s!14361))))

(declare-fun matchR!9116 (Regex!16977 List!66730) Bool)

(assert (=> b!6944861 (= lt!2477211 (matchR!9116 lt!2477183 s!14361))))

(declare-fun lt!2477210 () Unit!160696)

(declare-fun mainMatchTheorem!4034 (Regex!16977 List!66730) Unit!160696)

(assert (=> b!6944861 (= lt!2477210 (mainMatchTheorem!4034 lt!2477183 s!14361))))

(declare-fun lt!2477189 () Regex!16977)

(assert (=> b!6944861 (= lt!2477197 (matchRSpec!4034 lt!2477189 s!14361))))

(assert (=> b!6944861 (= lt!2477197 (matchR!9116 lt!2477189 s!14361))))

(declare-fun lt!2477199 () Unit!160696)

(assert (=> b!6944861 (= lt!2477199 (mainMatchTheorem!4034 lt!2477189 s!14361))))

(assert (=> b!6944861 (= lt!2477183 (Concat!25822 r1!6342 lt!2477208))))

(assert (=> b!6944861 (= lt!2477208 (Concat!25822 r2!6280 r3!135))))

(assert (=> b!6944861 (= lt!2477189 (Concat!25822 lt!2477206 r3!135))))

(assert (=> b!6944861 (= lt!2477206 (Concat!25822 r1!6342 r2!6280))))

(declare-fun b!6944862 () Bool)

(declare-fun tp!1914279 () Bool)

(declare-fun tp!1914281 () Bool)

(assert (=> b!6944862 (= e!4177433 (and tp!1914279 tp!1914281))))

(declare-fun res!2833144 () Bool)

(assert (=> start!666758 (=> (not res!2833144) (not e!4177435))))

(assert (=> start!666758 (= res!2833144 (validRegex!8683 r1!6342))))

(assert (=> start!666758 e!4177435))

(assert (=> start!666758 e!4177433))

(assert (=> start!666758 e!4177429))

(assert (=> start!666758 e!4177436))

(assert (=> start!666758 e!4177432))

(declare-fun b!6944863 () Bool)

(declare-fun tp!1914285 () Bool)

(assert (=> b!6944863 (= e!4177429 tp!1914285)))

(declare-fun Unit!160699 () Unit!160696)

(assert (=> b!6944864 (= e!4177434 Unit!160699)))

(declare-fun lt!2477198 () Unit!160696)

(assert (=> b!6944864 (= lt!2477198 (lemmaFindConcatSeparationEquivalentToExists!2918 r1!6342 lt!2477208 s!14361))))

(assert (=> b!6944864 (Exists!3977 lambda!395986)))

(declare-fun lt!2477181 () Unit!160696)

(assert (=> b!6944864 (= lt!2477181 (lemmaExistCutMatchRandMatchRSpecEquivalent!2438 r1!6342 lt!2477208 s!14361))))

(assert (=> b!6944864 (= (Exists!3977 lambda!395986) (Exists!3977 lambda!395987))))

(declare-fun get!23402 (Option!16746) tuple2!67668)

(assert (=> b!6944864 (= lt!2477213 (get!23402 lt!2477185))))

(declare-fun lt!2477191 () Unit!160696)

(assert (=> b!6944864 (= lt!2477191 (mainMatchTheorem!4034 r1!6342 (_1!37137 lt!2477213)))))

(assert (=> b!6944864 (= (matchR!9116 r1!6342 (_1!37137 lt!2477213)) (matchRSpec!4034 r1!6342 (_1!37137 lt!2477213)))))

(declare-fun lt!2477195 () Unit!160696)

(assert (=> b!6944864 (= lt!2477195 (mainMatchTheorem!4034 lt!2477208 (_2!37137 lt!2477213)))))

(assert (=> b!6944864 (= (matchR!9116 lt!2477208 (_2!37137 lt!2477213)) (matchRSpec!4034 lt!2477208 (_2!37137 lt!2477213)))))

(declare-fun lt!2477193 () Unit!160696)

(assert (=> b!6944864 (= lt!2477193 (lemmaFindConcatSeparationEquivalentToExists!2918 r2!6280 r3!135 (_2!37137 lt!2477213)))))

(declare-fun lt!2477188 () Option!16746)

(assert (=> b!6944864 (= lt!2477188 (findConcatSeparation!3160 r2!6280 r3!135 Nil!66606 (_2!37137 lt!2477213) (_2!37137 lt!2477213)))))

(assert (=> b!6944864 (= (isDefined!13447 lt!2477188) (Exists!3977 lambda!395988))))

(declare-fun lt!2477186 () Unit!160696)

(assert (=> b!6944864 (= lt!2477186 (lemmaExistCutMatchRandMatchRSpecEquivalent!2438 r2!6280 r3!135 (_2!37137 lt!2477213)))))

(assert (=> b!6944864 (= (Exists!3977 lambda!395988) (Exists!3977 lambda!395989))))

(declare-fun lt!2477205 () tuple2!67668)

(assert (=> b!6944864 (= lt!2477205 (get!23402 lt!2477188))))

(declare-fun lt!2477192 () Unit!160696)

(assert (=> b!6944864 (= lt!2477192 (mainMatchTheorem!4034 r2!6280 (_1!37137 lt!2477205)))))

(assert (=> b!6944864 (= (matchR!9116 r2!6280 (_1!37137 lt!2477205)) (matchRSpec!4034 r2!6280 (_1!37137 lt!2477205)))))

(declare-fun lt!2477204 () Unit!160696)

(assert (=> b!6944864 (= lt!2477204 (mainMatchTheorem!4034 r3!135 (_2!37137 lt!2477205)))))

(assert (=> b!6944864 (= (matchR!9116 r3!135 (_2!37137 lt!2477205)) (matchRSpec!4034 r3!135 (_2!37137 lt!2477205)))))

(declare-fun lt!2477212 () Unit!160696)

(declare-fun lemmaConcatAssociativity!3058 (List!66730 List!66730 List!66730) Unit!160696)

(assert (=> b!6944864 (= lt!2477212 (lemmaConcatAssociativity!3058 (_1!37137 lt!2477213) (_1!37137 lt!2477205) (_2!37137 lt!2477205)))))

(declare-fun ++!15016 (List!66730 List!66730) List!66730)

(assert (=> b!6944864 (= lt!2477209 (++!15016 (_1!37137 lt!2477213) (_1!37137 lt!2477205)))))

(assert (=> b!6944864 (= (++!15016 lt!2477209 (_2!37137 lt!2477205)) (++!15016 (_1!37137 lt!2477213) (++!15016 (_1!37137 lt!2477205) (_2!37137 lt!2477205))))))

(declare-fun lt!2477194 () Unit!160696)

(assert (=> b!6944864 (= lt!2477194 (mainMatchTheorem!4034 lt!2477206 lt!2477209))))

(assert (=> b!6944864 (= (matchR!9116 lt!2477206 lt!2477209) (matchRSpec!4034 lt!2477206 lt!2477209))))

(declare-fun lt!2477180 () Unit!160696)

(assert (=> b!6944864 (= lt!2477180 (lemmaFindConcatSeparationEquivalentToExists!2918 r1!6342 r2!6280 lt!2477209))))

(declare-fun lt!2477200 () Bool)

(assert (=> b!6944864 (= lt!2477200 (isDefined!13447 (findConcatSeparation!3160 r1!6342 r2!6280 Nil!66606 lt!2477209 lt!2477209)))))

(assert (=> b!6944864 (= lt!2477200 (Exists!3977 lambda!395990))))

(declare-fun lt!2477202 () Unit!160696)

(assert (=> b!6944864 (= lt!2477202 (lemmaExistCutMatchRandMatchRSpecEquivalent!2438 r1!6342 r2!6280 lt!2477209))))

(assert (=> b!6944864 (= (Exists!3977 lambda!395990) (Exists!3977 lambda!395991))))

(declare-fun lt!2477201 () Unit!160696)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!120 (Regex!16977 Regex!16977 List!66730 List!66730 List!66730 List!66730 List!66730) Unit!160696)

(assert (=> b!6944864 (= lt!2477201 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!120 r1!6342 r2!6280 (_1!37137 lt!2477213) (_1!37137 lt!2477205) lt!2477209 Nil!66606 lt!2477209))))

(assert (=> b!6944864 lt!2477200))

(declare-fun lt!2477203 () Unit!160696)

(assert (=> b!6944864 (= lt!2477203 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!120 lt!2477206 r3!135 lt!2477209 (_2!37137 lt!2477205) s!14361 Nil!66606 s!14361))))

(assert (=> b!6944864 (isDefined!13447 (findConcatSeparation!3160 lt!2477206 r3!135 Nil!66606 s!14361 s!14361))))

(declare-fun lt!2477207 () Unit!160696)

(assert (=> b!6944864 (= lt!2477207 (lemmaFindConcatSeparationEquivalentToExists!2918 lt!2477206 r3!135 s!14361))))

(assert (=> b!6944864 (Exists!3977 lambda!395992)))

(declare-fun lt!2477187 () Unit!160696)

(assert (=> b!6944864 (= lt!2477187 (lemmaExistCutMatchRandMatchRSpecEquivalent!2438 lt!2477206 r3!135 s!14361))))

(assert (=> b!6944864 false))

(declare-fun b!6944865 () Bool)

(declare-fun res!2833146 () Bool)

(assert (=> b!6944865 (=> (not res!2833146) (not e!4177435))))

(assert (=> b!6944865 (= res!2833146 (validRegex!8683 r2!6280))))

(assert (= (and start!666758 res!2833144) b!6944865))

(assert (= (and b!6944865 res!2833146) b!6944847))

(assert (= (and b!6944847 res!2833143) b!6944861))

(assert (= (and b!6944861 (not res!2833142)) b!6944855))

(assert (= (and b!6944855 c!1288488) b!6944864))

(assert (= (and b!6944855 (not c!1288488)) b!6944846))

(assert (= (and b!6944855 (not res!2833145)) b!6944848))

(get-info :version)

(assert (= (and start!666758 ((_ is ElementMatch!16977) r1!6342)) b!6944851))

(assert (= (and start!666758 ((_ is Concat!25822) r1!6342)) b!6944850))

(assert (= (and start!666758 ((_ is Star!16977) r1!6342)) b!6944849))

(assert (= (and start!666758 ((_ is Union!16977) r1!6342)) b!6944862))

(assert (= (and start!666758 ((_ is ElementMatch!16977) r2!6280)) b!6944859))

(assert (= (and start!666758 ((_ is Concat!25822) r2!6280)) b!6944860))

(assert (= (and start!666758 ((_ is Star!16977) r2!6280)) b!6944863))

(assert (= (and start!666758 ((_ is Union!16977) r2!6280)) b!6944856))

(assert (= (and start!666758 ((_ is ElementMatch!16977) r3!135)) b!6944854))

(assert (= (and start!666758 ((_ is Concat!25822) r3!135)) b!6944852))

(assert (= (and start!666758 ((_ is Star!16977) r3!135)) b!6944858))

(assert (= (and start!666758 ((_ is Union!16977) r3!135)) b!6944857))

(assert (= (and start!666758 ((_ is Cons!66606) s!14361)) b!6944853))

(declare-fun m!7649414 () Bool)

(assert (=> b!6944864 m!7649414))

(declare-fun m!7649416 () Bool)

(assert (=> b!6944864 m!7649416))

(declare-fun m!7649418 () Bool)

(assert (=> b!6944864 m!7649418))

(declare-fun m!7649420 () Bool)

(assert (=> b!6944864 m!7649420))

(declare-fun m!7649422 () Bool)

(assert (=> b!6944864 m!7649422))

(declare-fun m!7649424 () Bool)

(assert (=> b!6944864 m!7649424))

(declare-fun m!7649426 () Bool)

(assert (=> b!6944864 m!7649426))

(declare-fun m!7649428 () Bool)

(assert (=> b!6944864 m!7649428))

(declare-fun m!7649430 () Bool)

(assert (=> b!6944864 m!7649430))

(declare-fun m!7649432 () Bool)

(assert (=> b!6944864 m!7649432))

(declare-fun m!7649434 () Bool)

(assert (=> b!6944864 m!7649434))

(declare-fun m!7649436 () Bool)

(assert (=> b!6944864 m!7649436))

(declare-fun m!7649438 () Bool)

(assert (=> b!6944864 m!7649438))

(declare-fun m!7649440 () Bool)

(assert (=> b!6944864 m!7649440))

(declare-fun m!7649442 () Bool)

(assert (=> b!6944864 m!7649442))

(declare-fun m!7649444 () Bool)

(assert (=> b!6944864 m!7649444))

(assert (=> b!6944864 m!7649430))

(declare-fun m!7649446 () Bool)

(assert (=> b!6944864 m!7649446))

(declare-fun m!7649448 () Bool)

(assert (=> b!6944864 m!7649448))

(declare-fun m!7649450 () Bool)

(assert (=> b!6944864 m!7649450))

(declare-fun m!7649452 () Bool)

(assert (=> b!6944864 m!7649452))

(declare-fun m!7649454 () Bool)

(assert (=> b!6944864 m!7649454))

(declare-fun m!7649456 () Bool)

(assert (=> b!6944864 m!7649456))

(declare-fun m!7649458 () Bool)

(assert (=> b!6944864 m!7649458))

(declare-fun m!7649460 () Bool)

(assert (=> b!6944864 m!7649460))

(declare-fun m!7649462 () Bool)

(assert (=> b!6944864 m!7649462))

(declare-fun m!7649464 () Bool)

(assert (=> b!6944864 m!7649464))

(declare-fun m!7649466 () Bool)

(assert (=> b!6944864 m!7649466))

(declare-fun m!7649468 () Bool)

(assert (=> b!6944864 m!7649468))

(declare-fun m!7649470 () Bool)

(assert (=> b!6944864 m!7649470))

(declare-fun m!7649472 () Bool)

(assert (=> b!6944864 m!7649472))

(assert (=> b!6944864 m!7649438))

(assert (=> b!6944864 m!7649448))

(declare-fun m!7649474 () Bool)

(assert (=> b!6944864 m!7649474))

(declare-fun m!7649476 () Bool)

(assert (=> b!6944864 m!7649476))

(declare-fun m!7649478 () Bool)

(assert (=> b!6944864 m!7649478))

(declare-fun m!7649480 () Bool)

(assert (=> b!6944864 m!7649480))

(assert (=> b!6944864 m!7649420))

(declare-fun m!7649482 () Bool)

(assert (=> b!6944864 m!7649482))

(declare-fun m!7649484 () Bool)

(assert (=> b!6944864 m!7649484))

(declare-fun m!7649486 () Bool)

(assert (=> b!6944864 m!7649486))

(declare-fun m!7649488 () Bool)

(assert (=> b!6944864 m!7649488))

(declare-fun m!7649490 () Bool)

(assert (=> b!6944864 m!7649490))

(declare-fun m!7649492 () Bool)

(assert (=> b!6944864 m!7649492))

(declare-fun m!7649494 () Bool)

(assert (=> b!6944864 m!7649494))

(declare-fun m!7649496 () Bool)

(assert (=> b!6944864 m!7649496))

(assert (=> b!6944864 m!7649488))

(declare-fun m!7649498 () Bool)

(assert (=> b!6944864 m!7649498))

(declare-fun m!7649500 () Bool)

(assert (=> b!6944864 m!7649500))

(assert (=> b!6944864 m!7649472))

(declare-fun m!7649502 () Bool)

(assert (=> b!6944864 m!7649502))

(assert (=> b!6944855 m!7649452))

(declare-fun m!7649504 () Bool)

(assert (=> b!6944855 m!7649504))

(declare-fun m!7649506 () Bool)

(assert (=> b!6944855 m!7649506))

(declare-fun m!7649508 () Bool)

(assert (=> b!6944855 m!7649508))

(declare-fun m!7649510 () Bool)

(assert (=> b!6944855 m!7649510))

(declare-fun m!7649512 () Bool)

(assert (=> b!6944847 m!7649512))

(declare-fun m!7649514 () Bool)

(assert (=> b!6944861 m!7649514))

(declare-fun m!7649516 () Bool)

(assert (=> b!6944861 m!7649516))

(declare-fun m!7649518 () Bool)

(assert (=> b!6944861 m!7649518))

(declare-fun m!7649520 () Bool)

(assert (=> b!6944861 m!7649520))

(declare-fun m!7649522 () Bool)

(assert (=> b!6944861 m!7649522))

(declare-fun m!7649524 () Bool)

(assert (=> b!6944861 m!7649524))

(declare-fun m!7649526 () Bool)

(assert (=> b!6944865 m!7649526))

(assert (=> b!6944848 m!7649508))

(declare-fun m!7649528 () Bool)

(assert (=> b!6944848 m!7649528))

(assert (=> b!6944848 m!7649502))

(declare-fun m!7649530 () Bool)

(assert (=> start!666758 m!7649530))

(check-sat (not b!6944865) tp_is_empty!43179 (not b!6944861) (not b!6944864) (not b!6944857) (not start!666758) (not b!6944858) (not b!6944862) (not b!6944848) (not b!6944855) (not b!6944856) (not b!6944849) (not b!6944850) (not b!6944863) (not b!6944853) (not b!6944860) (not b!6944847) (not b!6944852))
(check-sat)
(get-model)

(declare-fun b!6944937 () Bool)

(declare-fun e!4177485 () Bool)

(declare-fun e!4177482 () Bool)

(assert (=> b!6944937 (= e!4177485 e!4177482)))

(declare-fun c!1288503 () Bool)

(assert (=> b!6944937 (= c!1288503 ((_ is Union!16977) r3!135))))

(declare-fun call!630851 () Bool)

(declare-fun bm!630846 () Bool)

(declare-fun c!1288504 () Bool)

(assert (=> bm!630846 (= call!630851 (validRegex!8683 (ite c!1288504 (reg!17306 r3!135) (ite c!1288503 (regTwo!34467 r3!135) (regOne!34466 r3!135)))))))

(declare-fun b!6944938 () Bool)

(declare-fun e!4177483 () Bool)

(assert (=> b!6944938 (= e!4177483 call!630851)))

(declare-fun bm!630847 () Bool)

(declare-fun call!630852 () Bool)

(assert (=> bm!630847 (= call!630852 call!630851)))

(declare-fun bm!630848 () Bool)

(declare-fun call!630853 () Bool)

(assert (=> bm!630848 (= call!630853 (validRegex!8683 (ite c!1288503 (regOne!34467 r3!135) (regTwo!34466 r3!135))))))

(declare-fun b!6944939 () Bool)

(declare-fun e!4177484 () Bool)

(declare-fun e!4177486 () Bool)

(assert (=> b!6944939 (= e!4177484 e!4177486)))

(declare-fun res!2833189 () Bool)

(assert (=> b!6944939 (=> (not res!2833189) (not e!4177486))))

(assert (=> b!6944939 (= res!2833189 call!630852)))

(declare-fun b!6944941 () Bool)

(declare-fun e!4177487 () Bool)

(assert (=> b!6944941 (= e!4177487 call!630852)))

(declare-fun b!6944942 () Bool)

(assert (=> b!6944942 (= e!4177485 e!4177483)))

(declare-fun res!2833186 () Bool)

(declare-fun nullable!6790 (Regex!16977) Bool)

(assert (=> b!6944942 (= res!2833186 (not (nullable!6790 (reg!17306 r3!135))))))

(assert (=> b!6944942 (=> (not res!2833186) (not e!4177483))))

(declare-fun b!6944943 () Bool)

(assert (=> b!6944943 (= e!4177486 call!630853)))

(declare-fun d!2168434 () Bool)

(declare-fun res!2833188 () Bool)

(declare-fun e!4177488 () Bool)

(assert (=> d!2168434 (=> res!2833188 e!4177488)))

(assert (=> d!2168434 (= res!2833188 ((_ is ElementMatch!16977) r3!135))))

(assert (=> d!2168434 (= (validRegex!8683 r3!135) e!4177488)))

(declare-fun b!6944940 () Bool)

(declare-fun res!2833190 () Bool)

(assert (=> b!6944940 (=> res!2833190 e!4177484)))

(assert (=> b!6944940 (= res!2833190 (not ((_ is Concat!25822) r3!135)))))

(assert (=> b!6944940 (= e!4177482 e!4177484)))

(declare-fun b!6944944 () Bool)

(declare-fun res!2833187 () Bool)

(assert (=> b!6944944 (=> (not res!2833187) (not e!4177487))))

(assert (=> b!6944944 (= res!2833187 call!630853)))

(assert (=> b!6944944 (= e!4177482 e!4177487)))

(declare-fun b!6944945 () Bool)

(assert (=> b!6944945 (= e!4177488 e!4177485)))

(assert (=> b!6944945 (= c!1288504 ((_ is Star!16977) r3!135))))

(assert (= (and d!2168434 (not res!2833188)) b!6944945))

(assert (= (and b!6944945 c!1288504) b!6944942))

(assert (= (and b!6944945 (not c!1288504)) b!6944937))

(assert (= (and b!6944942 res!2833186) b!6944938))

(assert (= (and b!6944937 c!1288503) b!6944944))

(assert (= (and b!6944937 (not c!1288503)) b!6944940))

(assert (= (and b!6944944 res!2833187) b!6944941))

(assert (= (and b!6944940 (not res!2833190)) b!6944939))

(assert (= (and b!6944939 res!2833189) b!6944943))

(assert (= (or b!6944944 b!6944943) bm!630848))

(assert (= (or b!6944941 b!6944939) bm!630847))

(assert (= (or b!6944938 bm!630847) bm!630846))

(declare-fun m!7649564 () Bool)

(assert (=> bm!630846 m!7649564))

(declare-fun m!7649566 () Bool)

(assert (=> bm!630848 m!7649566))

(declare-fun m!7649568 () Bool)

(assert (=> b!6944942 m!7649568))

(assert (=> b!6944847 d!2168434))

(declare-fun d!2168444 () Bool)

(declare-fun choose!51751 (Int) Bool)

(assert (=> d!2168444 (= (Exists!3977 lambda!395993) (choose!51751 lambda!395993))))

(declare-fun bs!1856736 () Bool)

(assert (= bs!1856736 d!2168444))

(declare-fun m!7649572 () Bool)

(assert (=> bs!1856736 m!7649572))

(assert (=> b!6944848 d!2168444))

(declare-fun d!2168448 () Bool)

(assert (=> d!2168448 (= (Exists!3977 lambda!395994) (choose!51751 lambda!395994))))

(declare-fun bs!1856737 () Bool)

(assert (= bs!1856737 d!2168448))

(declare-fun m!7649574 () Bool)

(assert (=> bs!1856737 m!7649574))

(assert (=> b!6944848 d!2168448))

(declare-fun bs!1856740 () Bool)

(declare-fun d!2168450 () Bool)

(assert (= bs!1856740 (and d!2168450 b!6944864)))

(declare-fun lambda!396009 () Int)

(assert (=> bs!1856740 (= (and (= s!14361 lt!2477209) (= lt!2477208 r2!6280)) (= lambda!396009 lambda!395990))))

(assert (=> bs!1856740 (not (= lambda!396009 lambda!395991))))

(declare-fun bs!1856741 () Bool)

(assert (= bs!1856741 (and d!2168450 b!6944855)))

(assert (=> bs!1856741 (= lambda!396009 lambda!395993)))

(assert (=> bs!1856740 (= (and (= r1!6342 lt!2477206) (= lt!2477208 r3!135)) (= lambda!396009 lambda!395992))))

(assert (=> bs!1856740 (not (= lambda!396009 lambda!395989))))

(assert (=> bs!1856740 (= (and (= s!14361 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= lt!2477208 r3!135)) (= lambda!396009 lambda!395988))))

(assert (=> bs!1856740 (not (= lambda!396009 lambda!395987))))

(declare-fun bs!1856746 () Bool)

(assert (= bs!1856746 (and d!2168450 b!6944848)))

(assert (=> bs!1856746 (not (= lambda!396009 lambda!395994))))

(assert (=> bs!1856740 (= lambda!396009 lambda!395986)))

(assert (=> d!2168450 true))

(assert (=> d!2168450 true))

(assert (=> d!2168450 true))

(declare-fun bs!1856752 () Bool)

(assert (= bs!1856752 d!2168450))

(declare-fun lambda!396012 () Int)

(assert (=> bs!1856752 (not (= lambda!396012 lambda!396009))))

(assert (=> bs!1856740 (not (= lambda!396012 lambda!395990))))

(assert (=> bs!1856740 (= (and (= s!14361 lt!2477209) (= lt!2477208 r2!6280)) (= lambda!396012 lambda!395991))))

(assert (=> bs!1856741 (not (= lambda!396012 lambda!395993))))

(assert (=> bs!1856740 (not (= lambda!396012 lambda!395992))))

(assert (=> bs!1856740 (= (and (= s!14361 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= lt!2477208 r3!135)) (= lambda!396012 lambda!395989))))

(assert (=> bs!1856740 (not (= lambda!396012 lambda!395988))))

(assert (=> bs!1856740 (= lambda!396012 lambda!395987)))

(assert (=> bs!1856746 (= lambda!396012 lambda!395994)))

(assert (=> bs!1856740 (not (= lambda!396012 lambda!395986))))

(assert (=> d!2168450 true))

(assert (=> d!2168450 true))

(assert (=> d!2168450 true))

(assert (=> d!2168450 (= (Exists!3977 lambda!396009) (Exists!3977 lambda!396012))))

(declare-fun lt!2477229 () Unit!160696)

(declare-fun choose!51752 (Regex!16977 Regex!16977 List!66730) Unit!160696)

(assert (=> d!2168450 (= lt!2477229 (choose!51752 r1!6342 lt!2477208 s!14361))))

(assert (=> d!2168450 (validRegex!8683 r1!6342)))

(assert (=> d!2168450 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2438 r1!6342 lt!2477208 s!14361) lt!2477229)))

(declare-fun m!7649632 () Bool)

(assert (=> bs!1856752 m!7649632))

(declare-fun m!7649634 () Bool)

(assert (=> bs!1856752 m!7649634))

(declare-fun m!7649636 () Bool)

(assert (=> bs!1856752 m!7649636))

(assert (=> bs!1856752 m!7649530))

(assert (=> b!6944848 d!2168450))

(declare-fun d!2168466 () Bool)

(assert (=> d!2168466 (isDefined!13447 (findConcatSeparation!3160 lt!2477206 r3!135 Nil!66606 s!14361 s!14361))))

(declare-fun lt!2477235 () Unit!160696)

(declare-fun choose!51753 (Regex!16977 Regex!16977 List!66730 List!66730 List!66730 List!66730 List!66730) Unit!160696)

(assert (=> d!2168466 (= lt!2477235 (choose!51753 lt!2477206 r3!135 lt!2477209 (_2!37137 lt!2477205) s!14361 Nil!66606 s!14361))))

(assert (=> d!2168466 (validRegex!8683 lt!2477206)))

(assert (=> d!2168466 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!120 lt!2477206 r3!135 lt!2477209 (_2!37137 lt!2477205) s!14361 Nil!66606 s!14361) lt!2477235)))

(declare-fun bs!1856779 () Bool)

(assert (= bs!1856779 d!2168466))

(assert (=> bs!1856779 m!7649420))

(assert (=> bs!1856779 m!7649420))

(assert (=> bs!1856779 m!7649422))

(declare-fun m!7649668 () Bool)

(assert (=> bs!1856779 m!7649668))

(declare-fun m!7649670 () Bool)

(assert (=> bs!1856779 m!7649670))

(assert (=> b!6944864 d!2168466))

(declare-fun bs!1856829 () Bool)

(declare-fun d!2168478 () Bool)

(assert (= bs!1856829 (and d!2168478 d!2168450)))

(declare-fun lambda!396026 () Int)

(assert (=> bs!1856829 (not (= lambda!396026 lambda!396012))))

(assert (=> bs!1856829 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!396026 lambda!396009))))

(declare-fun bs!1856835 () Bool)

(assert (= bs!1856835 (and d!2168478 b!6944864)))

(assert (=> bs!1856835 (= (and (= (_2!37137 lt!2477213) lt!2477209) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!396026 lambda!395990))))

(assert (=> bs!1856835 (not (= lambda!396026 lambda!395991))))

(declare-fun bs!1856837 () Bool)

(assert (= bs!1856837 (and d!2168478 b!6944855)))

(assert (=> bs!1856837 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!396026 lambda!395993))))

(assert (=> bs!1856835 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 lt!2477206)) (= lambda!396026 lambda!395992))))

(assert (=> bs!1856835 (not (= lambda!396026 lambda!395989))))

(assert (=> bs!1856835 (= lambda!396026 lambda!395988)))

(assert (=> bs!1856835 (not (= lambda!396026 lambda!395987))))

(declare-fun bs!1856840 () Bool)

(assert (= bs!1856840 (and d!2168478 b!6944848)))

(assert (=> bs!1856840 (not (= lambda!396026 lambda!395994))))

(assert (=> bs!1856835 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!396026 lambda!395986))))

(assert (=> d!2168478 true))

(assert (=> d!2168478 true))

(assert (=> d!2168478 true))

(assert (=> d!2168478 (= (isDefined!13447 (findConcatSeparation!3160 r2!6280 r3!135 Nil!66606 (_2!37137 lt!2477213) (_2!37137 lt!2477213))) (Exists!3977 lambda!396026))))

(declare-fun lt!2477242 () Unit!160696)

(declare-fun choose!51754 (Regex!16977 Regex!16977 List!66730) Unit!160696)

(assert (=> d!2168478 (= lt!2477242 (choose!51754 r2!6280 r3!135 (_2!37137 lt!2477213)))))

(assert (=> d!2168478 (validRegex!8683 r2!6280)))

(assert (=> d!2168478 (= (lemmaFindConcatSeparationEquivalentToExists!2918 r2!6280 r3!135 (_2!37137 lt!2477213)) lt!2477242)))

(declare-fun bs!1856841 () Bool)

(assert (= bs!1856841 d!2168478))

(assert (=> bs!1856841 m!7649442))

(declare-fun m!7649696 () Bool)

(assert (=> bs!1856841 m!7649696))

(declare-fun m!7649698 () Bool)

(assert (=> bs!1856841 m!7649698))

(assert (=> bs!1856841 m!7649526))

(declare-fun m!7649700 () Bool)

(assert (=> bs!1856841 m!7649700))

(assert (=> bs!1856841 m!7649442))

(assert (=> b!6944864 d!2168478))

(declare-fun bs!1856877 () Bool)

(declare-fun b!6945179 () Bool)

(assert (= bs!1856877 (and b!6945179 d!2168450)))

(declare-fun lambda!396035 () Int)

(assert (=> bs!1856877 (not (= lambda!396035 lambda!396012))))

(assert (=> bs!1856877 (not (= lambda!396035 lambda!396009))))

(declare-fun bs!1856878 () Bool)

(assert (= bs!1856878 (and b!6945179 b!6944864)))

(assert (=> bs!1856878 (not (= lambda!396035 lambda!395990))))

(assert (=> bs!1856878 (not (= lambda!396035 lambda!395991))))

(declare-fun bs!1856879 () Bool)

(assert (= bs!1856879 (and b!6945179 b!6944855)))

(assert (=> bs!1856879 (not (= lambda!396035 lambda!395993))))

(assert (=> bs!1856878 (not (= lambda!396035 lambda!395992))))

(assert (=> bs!1856878 (not (= lambda!396035 lambda!395989))))

(assert (=> bs!1856878 (not (= lambda!396035 lambda!395988))))

(assert (=> bs!1856878 (not (= lambda!396035 lambda!395987))))

(declare-fun bs!1856881 () Bool)

(assert (= bs!1856881 (and b!6945179 d!2168478)))

(assert (=> bs!1856881 (not (= lambda!396035 lambda!396026))))

(declare-fun bs!1856883 () Bool)

(assert (= bs!1856883 (and b!6945179 b!6944848)))

(assert (=> bs!1856883 (not (= lambda!396035 lambda!395994))))

(assert (=> bs!1856878 (not (= lambda!396035 lambda!395986))))

(assert (=> b!6945179 true))

(assert (=> b!6945179 true))

(declare-fun bs!1856894 () Bool)

(declare-fun b!6945178 () Bool)

(assert (= bs!1856894 (and b!6945178 d!2168450)))

(declare-fun lambda!396037 () Int)

(assert (=> bs!1856894 (= (and (= (_2!37137 lt!2477213) s!14361) (= (regOne!34466 lt!2477208) r1!6342) (= (regTwo!34466 lt!2477208) lt!2477208)) (= lambda!396037 lambda!396012))))

(assert (=> bs!1856894 (not (= lambda!396037 lambda!396009))))

(declare-fun bs!1856898 () Bool)

(assert (= bs!1856898 (and b!6945178 b!6944864)))

(assert (=> bs!1856898 (not (= lambda!396037 lambda!395990))))

(assert (=> bs!1856898 (= (and (= (_2!37137 lt!2477213) lt!2477209) (= (regOne!34466 lt!2477208) r1!6342) (= (regTwo!34466 lt!2477208) r2!6280)) (= lambda!396037 lambda!395991))))

(declare-fun bs!1856899 () Bool)

(assert (= bs!1856899 (and b!6945178 b!6944855)))

(assert (=> bs!1856899 (not (= lambda!396037 lambda!395993))))

(assert (=> bs!1856898 (= (and (= (regOne!34466 lt!2477208) r2!6280) (= (regTwo!34466 lt!2477208) r3!135)) (= lambda!396037 lambda!395989))))

(assert (=> bs!1856898 (not (= lambda!396037 lambda!395988))))

(assert (=> bs!1856898 (= (and (= (_2!37137 lt!2477213) s!14361) (= (regOne!34466 lt!2477208) r1!6342) (= (regTwo!34466 lt!2477208) lt!2477208)) (= lambda!396037 lambda!395987))))

(declare-fun bs!1856901 () Bool)

(assert (= bs!1856901 (and b!6945178 d!2168478)))

(assert (=> bs!1856901 (not (= lambda!396037 lambda!396026))))

(assert (=> bs!1856898 (not (= lambda!396037 lambda!395992))))

(declare-fun bs!1856903 () Bool)

(assert (= bs!1856903 (and b!6945178 b!6945179)))

(assert (=> bs!1856903 (not (= lambda!396037 lambda!396035))))

(declare-fun bs!1856906 () Bool)

(assert (= bs!1856906 (and b!6945178 b!6944848)))

(assert (=> bs!1856906 (= (and (= (_2!37137 lt!2477213) s!14361) (= (regOne!34466 lt!2477208) r1!6342) (= (regTwo!34466 lt!2477208) lt!2477208)) (= lambda!396037 lambda!395994))))

(assert (=> bs!1856898 (not (= lambda!396037 lambda!395986))))

(assert (=> b!6945178 true))

(assert (=> b!6945178 true))

(declare-fun b!6945171 () Bool)

(declare-fun e!4177619 () Bool)

(assert (=> b!6945171 (= e!4177619 (= (_2!37137 lt!2477213) (Cons!66606 (c!1288489 lt!2477208) Nil!66606)))))

(declare-fun b!6945172 () Bool)

(declare-fun res!2833309 () Bool)

(declare-fun e!4177615 () Bool)

(assert (=> b!6945172 (=> res!2833309 e!4177615)))

(declare-fun call!630875 () Bool)

(assert (=> b!6945172 (= res!2833309 call!630875)))

(declare-fun e!4177617 () Bool)

(assert (=> b!6945172 (= e!4177617 e!4177615)))

(declare-fun b!6945173 () Bool)

(declare-fun c!1288562 () Bool)

(assert (=> b!6945173 (= c!1288562 ((_ is Union!16977) lt!2477208))))

(declare-fun e!4177613 () Bool)

(assert (=> b!6945173 (= e!4177619 e!4177613)))

(declare-fun b!6945174 () Bool)

(declare-fun e!4177618 () Bool)

(declare-fun e!4177614 () Bool)

(assert (=> b!6945174 (= e!4177618 e!4177614)))

(declare-fun res!2833310 () Bool)

(assert (=> b!6945174 (= res!2833310 (not ((_ is EmptyLang!16977) lt!2477208)))))

(assert (=> b!6945174 (=> (not res!2833310) (not e!4177614))))

(declare-fun bm!630870 () Bool)

(declare-fun isEmpty!38882 (List!66730) Bool)

(assert (=> bm!630870 (= call!630875 (isEmpty!38882 (_2!37137 lt!2477213)))))

(declare-fun b!6945175 () Bool)

(declare-fun e!4177616 () Bool)

(assert (=> b!6945175 (= e!4177616 (matchRSpec!4034 (regTwo!34467 lt!2477208) (_2!37137 lt!2477213)))))

(declare-fun b!6945176 () Bool)

(assert (=> b!6945176 (= e!4177618 call!630875)))

(declare-fun b!6945177 () Bool)

(assert (=> b!6945177 (= e!4177613 e!4177617)))

(declare-fun c!1288559 () Bool)

(assert (=> b!6945177 (= c!1288559 ((_ is Star!16977) lt!2477208))))

(declare-fun call!630876 () Bool)

(assert (=> b!6945178 (= e!4177617 call!630876)))

(declare-fun d!2168492 () Bool)

(declare-fun c!1288560 () Bool)

(assert (=> d!2168492 (= c!1288560 ((_ is EmptyExpr!16977) lt!2477208))))

(assert (=> d!2168492 (= (matchRSpec!4034 lt!2477208 (_2!37137 lt!2477213)) e!4177618)))

(assert (=> b!6945179 (= e!4177615 call!630876)))

(declare-fun b!6945180 () Bool)

(assert (=> b!6945180 (= e!4177613 e!4177616)))

(declare-fun res!2833308 () Bool)

(assert (=> b!6945180 (= res!2833308 (matchRSpec!4034 (regOne!34467 lt!2477208) (_2!37137 lt!2477213)))))

(assert (=> b!6945180 (=> res!2833308 e!4177616)))

(declare-fun b!6945181 () Bool)

(declare-fun c!1288561 () Bool)

(assert (=> b!6945181 (= c!1288561 ((_ is ElementMatch!16977) lt!2477208))))

(assert (=> b!6945181 (= e!4177614 e!4177619)))

(declare-fun bm!630871 () Bool)

(assert (=> bm!630871 (= call!630876 (Exists!3977 (ite c!1288559 lambda!396035 lambda!396037)))))

(assert (= (and d!2168492 c!1288560) b!6945176))

(assert (= (and d!2168492 (not c!1288560)) b!6945174))

(assert (= (and b!6945174 res!2833310) b!6945181))

(assert (= (and b!6945181 c!1288561) b!6945171))

(assert (= (and b!6945181 (not c!1288561)) b!6945173))

(assert (= (and b!6945173 c!1288562) b!6945180))

(assert (= (and b!6945173 (not c!1288562)) b!6945177))

(assert (= (and b!6945180 (not res!2833308)) b!6945175))

(assert (= (and b!6945177 c!1288559) b!6945172))

(assert (= (and b!6945177 (not c!1288559)) b!6945178))

(assert (= (and b!6945172 (not res!2833309)) b!6945179))

(assert (= (or b!6945179 b!6945178) bm!630871))

(assert (= (or b!6945176 b!6945172) bm!630870))

(declare-fun m!7649758 () Bool)

(assert (=> bm!630870 m!7649758))

(declare-fun m!7649760 () Bool)

(assert (=> b!6945175 m!7649760))

(declare-fun m!7649762 () Bool)

(assert (=> b!6945180 m!7649762))

(declare-fun m!7649764 () Bool)

(assert (=> bm!630871 m!7649764))

(assert (=> b!6944864 d!2168492))

(declare-fun b!6945234 () Bool)

(declare-fun e!4177647 () List!66730)

(assert (=> b!6945234 (= e!4177647 (Cons!66606 (h!73054 (_1!37137 lt!2477205)) (++!15016 (t!380473 (_1!37137 lt!2477205)) (_2!37137 lt!2477205))))))

(declare-fun b!6945235 () Bool)

(declare-fun res!2833336 () Bool)

(declare-fun e!4177648 () Bool)

(assert (=> b!6945235 (=> (not res!2833336) (not e!4177648))))

(declare-fun lt!2477268 () List!66730)

(declare-fun size!40809 (List!66730) Int)

(assert (=> b!6945235 (= res!2833336 (= (size!40809 lt!2477268) (+ (size!40809 (_1!37137 lt!2477205)) (size!40809 (_2!37137 lt!2477205)))))))

(declare-fun d!2168510 () Bool)

(assert (=> d!2168510 e!4177648))

(declare-fun res!2833337 () Bool)

(assert (=> d!2168510 (=> (not res!2833337) (not e!4177648))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13112 (List!66730) (InoxSet C!34224))

(assert (=> d!2168510 (= res!2833337 (= (content!13112 lt!2477268) ((_ map or) (content!13112 (_1!37137 lt!2477205)) (content!13112 (_2!37137 lt!2477205)))))))

(assert (=> d!2168510 (= lt!2477268 e!4177647)))

(declare-fun c!1288576 () Bool)

(assert (=> d!2168510 (= c!1288576 ((_ is Nil!66606) (_1!37137 lt!2477205)))))

(assert (=> d!2168510 (= (++!15016 (_1!37137 lt!2477205) (_2!37137 lt!2477205)) lt!2477268)))

(declare-fun b!6945236 () Bool)

(assert (=> b!6945236 (= e!4177648 (or (not (= (_2!37137 lt!2477205) Nil!66606)) (= lt!2477268 (_1!37137 lt!2477205))))))

(declare-fun b!6945233 () Bool)

(assert (=> b!6945233 (= e!4177647 (_2!37137 lt!2477205))))

(assert (= (and d!2168510 c!1288576) b!6945233))

(assert (= (and d!2168510 (not c!1288576)) b!6945234))

(assert (= (and d!2168510 res!2833337) b!6945235))

(assert (= (and b!6945235 res!2833336) b!6945236))

(declare-fun m!7649802 () Bool)

(assert (=> b!6945234 m!7649802))

(declare-fun m!7649804 () Bool)

(assert (=> b!6945235 m!7649804))

(declare-fun m!7649808 () Bool)

(assert (=> b!6945235 m!7649808))

(declare-fun m!7649810 () Bool)

(assert (=> b!6945235 m!7649810))

(declare-fun m!7649812 () Bool)

(assert (=> d!2168510 m!7649812))

(declare-fun m!7649814 () Bool)

(assert (=> d!2168510 m!7649814))

(declare-fun m!7649818 () Bool)

(assert (=> d!2168510 m!7649818))

(assert (=> b!6944864 d!2168510))

(declare-fun d!2168526 () Bool)

(assert (=> d!2168526 (= (matchR!9116 lt!2477206 lt!2477209) (matchRSpec!4034 lt!2477206 lt!2477209))))

(declare-fun lt!2477278 () Unit!160696)

(declare-fun choose!51756 (Regex!16977 List!66730) Unit!160696)

(assert (=> d!2168526 (= lt!2477278 (choose!51756 lt!2477206 lt!2477209))))

(assert (=> d!2168526 (validRegex!8683 lt!2477206)))

(assert (=> d!2168526 (= (mainMatchTheorem!4034 lt!2477206 lt!2477209) lt!2477278)))

(declare-fun bs!1856960 () Bool)

(assert (= bs!1856960 d!2168526))

(assert (=> bs!1856960 m!7649478))

(assert (=> bs!1856960 m!7649416))

(declare-fun m!7649850 () Bool)

(assert (=> bs!1856960 m!7649850))

(assert (=> bs!1856960 m!7649670))

(assert (=> b!6944864 d!2168526))

(declare-fun b!6945322 () Bool)

(declare-fun e!4177701 () Bool)

(declare-fun lt!2477293 () Option!16746)

(assert (=> b!6945322 (= e!4177701 (= (++!15016 (_1!37137 (get!23402 lt!2477293)) (_2!37137 (get!23402 lt!2477293))) s!14361))))

(declare-fun b!6945323 () Bool)

(declare-fun res!2833381 () Bool)

(assert (=> b!6945323 (=> (not res!2833381) (not e!4177701))))

(assert (=> b!6945323 (= res!2833381 (matchR!9116 r3!135 (_2!37137 (get!23402 lt!2477293))))))

(declare-fun b!6945324 () Bool)

(declare-fun e!4177699 () Option!16746)

(assert (=> b!6945324 (= e!4177699 None!16745)))

(declare-fun b!6945325 () Bool)

(declare-fun e!4177700 () Bool)

(assert (=> b!6945325 (= e!4177700 (not (isDefined!13447 lt!2477293)))))

(declare-fun d!2168534 () Bool)

(assert (=> d!2168534 e!4177700))

(declare-fun res!2833379 () Bool)

(assert (=> d!2168534 (=> res!2833379 e!4177700)))

(assert (=> d!2168534 (= res!2833379 e!4177701)))

(declare-fun res!2833383 () Bool)

(assert (=> d!2168534 (=> (not res!2833383) (not e!4177701))))

(assert (=> d!2168534 (= res!2833383 (isDefined!13447 lt!2477293))))

(declare-fun e!4177703 () Option!16746)

(assert (=> d!2168534 (= lt!2477293 e!4177703)))

(declare-fun c!1288600 () Bool)

(declare-fun e!4177702 () Bool)

(assert (=> d!2168534 (= c!1288600 e!4177702)))

(declare-fun res!2833382 () Bool)

(assert (=> d!2168534 (=> (not res!2833382) (not e!4177702))))

(assert (=> d!2168534 (= res!2833382 (matchR!9116 lt!2477206 Nil!66606))))

(assert (=> d!2168534 (validRegex!8683 lt!2477206)))

(assert (=> d!2168534 (= (findConcatSeparation!3160 lt!2477206 r3!135 Nil!66606 s!14361 s!14361) lt!2477293)))

(declare-fun b!6945326 () Bool)

(declare-fun lt!2477294 () Unit!160696)

(declare-fun lt!2477292 () Unit!160696)

(assert (=> b!6945326 (= lt!2477294 lt!2477292)))

(assert (=> b!6945326 (= (++!15016 (++!15016 Nil!66606 (Cons!66606 (h!73054 s!14361) Nil!66606)) (t!380473 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2868 (List!66730 C!34224 List!66730 List!66730) Unit!160696)

(assert (=> b!6945326 (= lt!2477292 (lemmaMoveElementToOtherListKeepsConcatEq!2868 Nil!66606 (h!73054 s!14361) (t!380473 s!14361) s!14361))))

(assert (=> b!6945326 (= e!4177699 (findConcatSeparation!3160 lt!2477206 r3!135 (++!15016 Nil!66606 (Cons!66606 (h!73054 s!14361) Nil!66606)) (t!380473 s!14361) s!14361))))

(declare-fun b!6945327 () Bool)

(assert (=> b!6945327 (= e!4177702 (matchR!9116 r3!135 s!14361))))

(declare-fun b!6945328 () Bool)

(assert (=> b!6945328 (= e!4177703 (Some!16745 (tuple2!67669 Nil!66606 s!14361)))))

(declare-fun b!6945329 () Bool)

(declare-fun res!2833380 () Bool)

(assert (=> b!6945329 (=> (not res!2833380) (not e!4177701))))

(assert (=> b!6945329 (= res!2833380 (matchR!9116 lt!2477206 (_1!37137 (get!23402 lt!2477293))))))

(declare-fun b!6945330 () Bool)

(assert (=> b!6945330 (= e!4177703 e!4177699)))

(declare-fun c!1288599 () Bool)

(assert (=> b!6945330 (= c!1288599 ((_ is Nil!66606) s!14361))))

(assert (= (and d!2168534 res!2833382) b!6945327))

(assert (= (and d!2168534 c!1288600) b!6945328))

(assert (= (and d!2168534 (not c!1288600)) b!6945330))

(assert (= (and b!6945330 c!1288599) b!6945324))

(assert (= (and b!6945330 (not c!1288599)) b!6945326))

(assert (= (and d!2168534 res!2833383) b!6945329))

(assert (= (and b!6945329 res!2833380) b!6945323))

(assert (= (and b!6945323 res!2833381) b!6945322))

(assert (= (and d!2168534 (not res!2833379)) b!6945325))

(declare-fun m!7649920 () Bool)

(assert (=> b!6945329 m!7649920))

(declare-fun m!7649922 () Bool)

(assert (=> b!6945329 m!7649922))

(declare-fun m!7649924 () Bool)

(assert (=> d!2168534 m!7649924))

(declare-fun m!7649926 () Bool)

(assert (=> d!2168534 m!7649926))

(assert (=> d!2168534 m!7649670))

(declare-fun m!7649928 () Bool)

(assert (=> b!6945326 m!7649928))

(assert (=> b!6945326 m!7649928))

(declare-fun m!7649930 () Bool)

(assert (=> b!6945326 m!7649930))

(declare-fun m!7649932 () Bool)

(assert (=> b!6945326 m!7649932))

(assert (=> b!6945326 m!7649928))

(declare-fun m!7649934 () Bool)

(assert (=> b!6945326 m!7649934))

(assert (=> b!6945323 m!7649920))

(declare-fun m!7649936 () Bool)

(assert (=> b!6945323 m!7649936))

(assert (=> b!6945322 m!7649920))

(declare-fun m!7649938 () Bool)

(assert (=> b!6945322 m!7649938))

(declare-fun m!7649940 () Bool)

(assert (=> b!6945327 m!7649940))

(assert (=> b!6945325 m!7649924))

(assert (=> b!6944864 d!2168534))

(declare-fun b!6945332 () Bool)

(declare-fun e!4177704 () List!66730)

(assert (=> b!6945332 (= e!4177704 (Cons!66606 (h!73054 (_1!37137 lt!2477213)) (++!15016 (t!380473 (_1!37137 lt!2477213)) (_1!37137 lt!2477205))))))

(declare-fun b!6945333 () Bool)

(declare-fun res!2833384 () Bool)

(declare-fun e!4177705 () Bool)

(assert (=> b!6945333 (=> (not res!2833384) (not e!4177705))))

(declare-fun lt!2477295 () List!66730)

(assert (=> b!6945333 (= res!2833384 (= (size!40809 lt!2477295) (+ (size!40809 (_1!37137 lt!2477213)) (size!40809 (_1!37137 lt!2477205)))))))

(declare-fun d!2168556 () Bool)

(assert (=> d!2168556 e!4177705))

(declare-fun res!2833385 () Bool)

(assert (=> d!2168556 (=> (not res!2833385) (not e!4177705))))

(assert (=> d!2168556 (= res!2833385 (= (content!13112 lt!2477295) ((_ map or) (content!13112 (_1!37137 lt!2477213)) (content!13112 (_1!37137 lt!2477205)))))))

(assert (=> d!2168556 (= lt!2477295 e!4177704)))

(declare-fun c!1288601 () Bool)

(assert (=> d!2168556 (= c!1288601 ((_ is Nil!66606) (_1!37137 lt!2477213)))))

(assert (=> d!2168556 (= (++!15016 (_1!37137 lt!2477213) (_1!37137 lt!2477205)) lt!2477295)))

(declare-fun b!6945334 () Bool)

(assert (=> b!6945334 (= e!4177705 (or (not (= (_1!37137 lt!2477205) Nil!66606)) (= lt!2477295 (_1!37137 lt!2477213))))))

(declare-fun b!6945331 () Bool)

(assert (=> b!6945331 (= e!4177704 (_1!37137 lt!2477205))))

(assert (= (and d!2168556 c!1288601) b!6945331))

(assert (= (and d!2168556 (not c!1288601)) b!6945332))

(assert (= (and d!2168556 res!2833385) b!6945333))

(assert (= (and b!6945333 res!2833384) b!6945334))

(declare-fun m!7649942 () Bool)

(assert (=> b!6945332 m!7649942))

(declare-fun m!7649944 () Bool)

(assert (=> b!6945333 m!7649944))

(declare-fun m!7649946 () Bool)

(assert (=> b!6945333 m!7649946))

(assert (=> b!6945333 m!7649808))

(declare-fun m!7649948 () Bool)

(assert (=> d!2168556 m!7649948))

(declare-fun m!7649950 () Bool)

(assert (=> d!2168556 m!7649950))

(assert (=> d!2168556 m!7649814))

(assert (=> b!6944864 d!2168556))

(declare-fun d!2168558 () Bool)

(assert (=> d!2168558 (= (Exists!3977 lambda!395988) (choose!51751 lambda!395988))))

(declare-fun bs!1857070 () Bool)

(assert (= bs!1857070 d!2168558))

(declare-fun m!7649952 () Bool)

(assert (=> bs!1857070 m!7649952))

(assert (=> b!6944864 d!2168558))

(declare-fun bs!1857075 () Bool)

(declare-fun d!2168560 () Bool)

(assert (= bs!1857075 (and d!2168560 d!2168450)))

(declare-fun lambda!396046 () Int)

(assert (=> bs!1857075 (not (= lambda!396046 lambda!396012))))

(assert (=> bs!1857075 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!396046 lambda!396009))))

(declare-fun bs!1857077 () Bool)

(assert (= bs!1857077 (and d!2168560 b!6944864)))

(assert (=> bs!1857077 (= (and (= (_2!37137 lt!2477213) lt!2477209) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!396046 lambda!395990))))

(declare-fun bs!1857079 () Bool)

(assert (= bs!1857079 (and d!2168560 b!6945178)))

(assert (=> bs!1857079 (not (= lambda!396046 lambda!396037))))

(assert (=> bs!1857077 (not (= lambda!396046 lambda!395991))))

(declare-fun bs!1857080 () Bool)

(assert (= bs!1857080 (and d!2168560 b!6944855)))

(assert (=> bs!1857080 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!396046 lambda!395993))))

(assert (=> bs!1857077 (not (= lambda!396046 lambda!395989))))

(assert (=> bs!1857077 (= lambda!396046 lambda!395988)))

(assert (=> bs!1857077 (not (= lambda!396046 lambda!395987))))

(declare-fun bs!1857083 () Bool)

(assert (= bs!1857083 (and d!2168560 d!2168478)))

(assert (=> bs!1857083 (= lambda!396046 lambda!396026)))

(assert (=> bs!1857077 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 lt!2477206)) (= lambda!396046 lambda!395992))))

(declare-fun bs!1857085 () Bool)

(assert (= bs!1857085 (and d!2168560 b!6945179)))

(assert (=> bs!1857085 (not (= lambda!396046 lambda!396035))))

(declare-fun bs!1857086 () Bool)

(assert (= bs!1857086 (and d!2168560 b!6944848)))

(assert (=> bs!1857086 (not (= lambda!396046 lambda!395994))))

(assert (=> bs!1857077 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!396046 lambda!395986))))

(assert (=> d!2168560 true))

(assert (=> d!2168560 true))

(assert (=> d!2168560 true))

(declare-fun lambda!396047 () Int)

(assert (=> bs!1857075 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!396047 lambda!396012))))

(assert (=> bs!1857075 (not (= lambda!396047 lambda!396009))))

(assert (=> bs!1857077 (not (= lambda!396047 lambda!395990))))

(assert (=> bs!1857079 (= (and (= r2!6280 (regOne!34466 lt!2477208)) (= r3!135 (regTwo!34466 lt!2477208))) (= lambda!396047 lambda!396037))))

(assert (=> bs!1857080 (not (= lambda!396047 lambda!395993))))

(assert (=> bs!1857077 (= lambda!396047 lambda!395989)))

(assert (=> bs!1857077 (not (= lambda!396047 lambda!395988))))

(assert (=> bs!1857077 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!396047 lambda!395987))))

(assert (=> bs!1857083 (not (= lambda!396047 lambda!396026))))

(declare-fun bs!1857087 () Bool)

(assert (= bs!1857087 d!2168560))

(assert (=> bs!1857087 (not (= lambda!396047 lambda!396046))))

(assert (=> bs!1857077 (= (and (= (_2!37137 lt!2477213) lt!2477209) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!396047 lambda!395991))))

(assert (=> bs!1857077 (not (= lambda!396047 lambda!395992))))

(assert (=> bs!1857085 (not (= lambda!396047 lambda!396035))))

(assert (=> bs!1857086 (= (and (= (_2!37137 lt!2477213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2477208)) (= lambda!396047 lambda!395994))))

(assert (=> bs!1857077 (not (= lambda!396047 lambda!395986))))

(assert (=> d!2168560 true))

(assert (=> d!2168560 true))

(assert (=> d!2168560 true))

(assert (=> d!2168560 (= (Exists!3977 lambda!396046) (Exists!3977 lambda!396047))))

(declare-fun lt!2477296 () Unit!160696)

(assert (=> d!2168560 (= lt!2477296 (choose!51752 r2!6280 r3!135 (_2!37137 lt!2477213)))))

(assert (=> d!2168560 (validRegex!8683 r2!6280)))

(assert (=> d!2168560 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2438 r2!6280 r3!135 (_2!37137 lt!2477213)) lt!2477296)))

(declare-fun m!7649974 () Bool)

(assert (=> bs!1857087 m!7649974))

(declare-fun m!7649976 () Bool)

(assert (=> bs!1857087 m!7649976))

(declare-fun m!7649978 () Bool)

(assert (=> bs!1857087 m!7649978))

(assert (=> bs!1857087 m!7649526))

(assert (=> b!6944864 d!2168560))

(declare-fun bs!1857089 () Bool)

(declare-fun d!2168570 () Bool)

(assert (= bs!1857089 (and d!2168570 d!2168450)))

(declare-fun lambda!396048 () Int)

(assert (=> bs!1857089 (not (= lambda!396048 lambda!396012))))

(assert (=> bs!1857089 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!396048 lambda!396009))))

(declare-fun bs!1857090 () Bool)

(assert (= bs!1857090 (and d!2168570 b!6944864)))

(assert (=> bs!1857090 (= lambda!396048 lambda!395990)))

(declare-fun bs!1857091 () Bool)

(assert (= bs!1857091 (and d!2168570 b!6945178)))

(assert (=> bs!1857091 (not (= lambda!396048 lambda!396037))))

(declare-fun bs!1857092 () Bool)

(assert (= bs!1857092 (and d!2168570 b!6944855)))

(assert (=> bs!1857092 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!396048 lambda!395993))))

(declare-fun bs!1857093 () Bool)

(assert (= bs!1857093 (and d!2168570 d!2168560)))

(assert (=> bs!1857093 (not (= lambda!396048 lambda!396047))))

(assert (=> bs!1857090 (not (= lambda!396048 lambda!395989))))

(assert (=> bs!1857090 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!396048 lambda!395988))))

(assert (=> bs!1857090 (not (= lambda!396048 lambda!395987))))

(declare-fun bs!1857094 () Bool)

(assert (= bs!1857094 (and d!2168570 d!2168478)))

(assert (=> bs!1857094 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!396048 lambda!396026))))

(assert (=> bs!1857093 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!396048 lambda!396046))))

(assert (=> bs!1857090 (not (= lambda!396048 lambda!395991))))

(assert (=> bs!1857090 (= (and (= lt!2477209 s!14361) (= r1!6342 lt!2477206) (= r2!6280 r3!135)) (= lambda!396048 lambda!395992))))

(declare-fun bs!1857095 () Bool)

(assert (= bs!1857095 (and d!2168570 b!6945179)))

(assert (=> bs!1857095 (not (= lambda!396048 lambda!396035))))

(declare-fun bs!1857096 () Bool)

(assert (= bs!1857096 (and d!2168570 b!6944848)))

(assert (=> bs!1857096 (not (= lambda!396048 lambda!395994))))

(assert (=> bs!1857090 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!396048 lambda!395986))))

(assert (=> d!2168570 true))

(assert (=> d!2168570 true))

(assert (=> d!2168570 true))

(assert (=> d!2168570 (= (isDefined!13447 (findConcatSeparation!3160 r1!6342 r2!6280 Nil!66606 lt!2477209 lt!2477209)) (Exists!3977 lambda!396048))))

(declare-fun lt!2477298 () Unit!160696)

(assert (=> d!2168570 (= lt!2477298 (choose!51754 r1!6342 r2!6280 lt!2477209))))

(assert (=> d!2168570 (validRegex!8683 r1!6342)))

(assert (=> d!2168570 (= (lemmaFindConcatSeparationEquivalentToExists!2918 r1!6342 r2!6280 lt!2477209) lt!2477298)))

(declare-fun bs!1857097 () Bool)

(assert (= bs!1857097 d!2168570))

(assert (=> bs!1857097 m!7649488))

(assert (=> bs!1857097 m!7649490))

(declare-fun m!7650000 () Bool)

(assert (=> bs!1857097 m!7650000))

(assert (=> bs!1857097 m!7649530))

(declare-fun m!7650002 () Bool)

(assert (=> bs!1857097 m!7650002))

(assert (=> bs!1857097 m!7649488))

(assert (=> b!6944864 d!2168570))

(declare-fun d!2168574 () Bool)

(assert (=> d!2168574 (= (matchR!9116 r2!6280 (_1!37137 lt!2477205)) (matchRSpec!4034 r2!6280 (_1!37137 lt!2477205)))))

(declare-fun lt!2477302 () Unit!160696)

(assert (=> d!2168574 (= lt!2477302 (choose!51756 r2!6280 (_1!37137 lt!2477205)))))

(assert (=> d!2168574 (validRegex!8683 r2!6280)))

(assert (=> d!2168574 (= (mainMatchTheorem!4034 r2!6280 (_1!37137 lt!2477205)) lt!2477302)))

(declare-fun bs!1857098 () Bool)

(assert (= bs!1857098 d!2168574))

(assert (=> bs!1857098 m!7649462))

(assert (=> bs!1857098 m!7649454))

(declare-fun m!7650004 () Bool)

(assert (=> bs!1857098 m!7650004))

(assert (=> bs!1857098 m!7649526))

(assert (=> b!6944864 d!2168574))

(declare-fun b!6945387 () Bool)

(declare-fun e!4177734 () List!66730)

(assert (=> b!6945387 (= e!4177734 (Cons!66606 (h!73054 lt!2477209) (++!15016 (t!380473 lt!2477209) (_2!37137 lt!2477205))))))

(declare-fun b!6945388 () Bool)

(declare-fun res!2833409 () Bool)

(declare-fun e!4177735 () Bool)

(assert (=> b!6945388 (=> (not res!2833409) (not e!4177735))))

(declare-fun lt!2477303 () List!66730)

(assert (=> b!6945388 (= res!2833409 (= (size!40809 lt!2477303) (+ (size!40809 lt!2477209) (size!40809 (_2!37137 lt!2477205)))))))

(declare-fun d!2168576 () Bool)

(assert (=> d!2168576 e!4177735))

(declare-fun res!2833410 () Bool)

(assert (=> d!2168576 (=> (not res!2833410) (not e!4177735))))

(assert (=> d!2168576 (= res!2833410 (= (content!13112 lt!2477303) ((_ map or) (content!13112 lt!2477209) (content!13112 (_2!37137 lt!2477205)))))))

(assert (=> d!2168576 (= lt!2477303 e!4177734)))

(declare-fun c!1288611 () Bool)

(assert (=> d!2168576 (= c!1288611 ((_ is Nil!66606) lt!2477209))))

(assert (=> d!2168576 (= (++!15016 lt!2477209 (_2!37137 lt!2477205)) lt!2477303)))

(declare-fun b!6945389 () Bool)

(assert (=> b!6945389 (= e!4177735 (or (not (= (_2!37137 lt!2477205) Nil!66606)) (= lt!2477303 lt!2477209)))))

(declare-fun b!6945386 () Bool)

(assert (=> b!6945386 (= e!4177734 (_2!37137 lt!2477205))))

(assert (= (and d!2168576 c!1288611) b!6945386))

(assert (= (and d!2168576 (not c!1288611)) b!6945387))

(assert (= (and d!2168576 res!2833410) b!6945388))

(assert (= (and b!6945388 res!2833409) b!6945389))

(declare-fun m!7650006 () Bool)

(assert (=> b!6945387 m!7650006))

(declare-fun m!7650008 () Bool)

(assert (=> b!6945388 m!7650008))

(declare-fun m!7650010 () Bool)

(assert (=> b!6945388 m!7650010))

(assert (=> b!6945388 m!7649810))

(declare-fun m!7650012 () Bool)

(assert (=> d!2168576 m!7650012))

(declare-fun m!7650014 () Bool)

(assert (=> d!2168576 m!7650014))

(assert (=> d!2168576 m!7649818))

(assert (=> b!6944864 d!2168576))

(assert (=> b!6944864 d!2168450))

(declare-fun bs!1857099 () Bool)

(declare-fun b!6945402 () Bool)

(assert (= bs!1857099 (and b!6945402 d!2168450)))

(declare-fun lambda!396049 () Int)

(assert (=> bs!1857099 (not (= lambda!396049 lambda!396012))))

(declare-fun bs!1857100 () Bool)

(assert (= bs!1857100 (and b!6945402 d!2168570)))

(assert (=> bs!1857100 (not (= lambda!396049 lambda!396048))))

(assert (=> bs!1857099 (not (= lambda!396049 lambda!396009))))

(declare-fun bs!1857101 () Bool)

(assert (= bs!1857101 (and b!6945402 b!6944864)))

(assert (=> bs!1857101 (not (= lambda!396049 lambda!395990))))

(declare-fun bs!1857102 () Bool)

(assert (= bs!1857102 (and b!6945402 b!6945178)))

(assert (=> bs!1857102 (not (= lambda!396049 lambda!396037))))

(declare-fun bs!1857103 () Bool)

(assert (= bs!1857103 (and b!6945402 b!6944855)))

(assert (=> bs!1857103 (not (= lambda!396049 lambda!395993))))

(declare-fun bs!1857104 () Bool)

(assert (= bs!1857104 (and b!6945402 d!2168560)))

(assert (=> bs!1857104 (not (= lambda!396049 lambda!396047))))

(assert (=> bs!1857101 (not (= lambda!396049 lambda!395989))))

(assert (=> bs!1857101 (not (= lambda!396049 lambda!395988))))

(assert (=> bs!1857101 (not (= lambda!396049 lambda!395987))))

(declare-fun bs!1857105 () Bool)

(assert (= bs!1857105 (and b!6945402 d!2168478)))

(assert (=> bs!1857105 (not (= lambda!396049 lambda!396026))))

(assert (=> bs!1857104 (not (= lambda!396049 lambda!396046))))

(assert (=> bs!1857101 (not (= lambda!396049 lambda!395991))))

(assert (=> bs!1857101 (not (= lambda!396049 lambda!395992))))

(declare-fun bs!1857106 () Bool)

(assert (= bs!1857106 (and b!6945402 b!6945179)))

(assert (=> bs!1857106 (= (and (= (_2!37137 lt!2477205) (_2!37137 lt!2477213)) (= (reg!17306 r3!135) (reg!17306 lt!2477208)) (= r3!135 lt!2477208)) (= lambda!396049 lambda!396035))))

(declare-fun bs!1857107 () Bool)

(assert (= bs!1857107 (and b!6945402 b!6944848)))

(assert (=> bs!1857107 (not (= lambda!396049 lambda!395994))))

(assert (=> bs!1857101 (not (= lambda!396049 lambda!395986))))

(assert (=> b!6945402 true))

(assert (=> b!6945402 true))

(declare-fun bs!1857108 () Bool)

(declare-fun b!6945401 () Bool)

(assert (= bs!1857108 (and b!6945401 d!2168450)))

(declare-fun lambda!396050 () Int)

(assert (=> bs!1857108 (= (and (= (_2!37137 lt!2477205) s!14361) (= (regOne!34466 r3!135) r1!6342) (= (regTwo!34466 r3!135) lt!2477208)) (= lambda!396050 lambda!396012))))

(declare-fun bs!1857109 () Bool)

(assert (= bs!1857109 (and b!6945401 d!2168570)))

(assert (=> bs!1857109 (not (= lambda!396050 lambda!396048))))

(assert (=> bs!1857108 (not (= lambda!396050 lambda!396009))))

(declare-fun bs!1857110 () Bool)

(assert (= bs!1857110 (and b!6945401 b!6944864)))

(assert (=> bs!1857110 (not (= lambda!396050 lambda!395990))))

(declare-fun bs!1857111 () Bool)

(assert (= bs!1857111 (and b!6945401 b!6945178)))

(assert (=> bs!1857111 (= (and (= (_2!37137 lt!2477205) (_2!37137 lt!2477213)) (= (regOne!34466 r3!135) (regOne!34466 lt!2477208)) (= (regTwo!34466 r3!135) (regTwo!34466 lt!2477208))) (= lambda!396050 lambda!396037))))

(declare-fun bs!1857112 () Bool)

(assert (= bs!1857112 (and b!6945401 d!2168560)))

(assert (=> bs!1857112 (= (and (= (_2!37137 lt!2477205) (_2!37137 lt!2477213)) (= (regOne!34466 r3!135) r2!6280) (= (regTwo!34466 r3!135) r3!135)) (= lambda!396050 lambda!396047))))

(assert (=> bs!1857110 (= (and (= (_2!37137 lt!2477205) (_2!37137 lt!2477213)) (= (regOne!34466 r3!135) r2!6280) (= (regTwo!34466 r3!135) r3!135)) (= lambda!396050 lambda!395989))))

(assert (=> bs!1857110 (not (= lambda!396050 lambda!395988))))

(assert (=> bs!1857110 (= (and (= (_2!37137 lt!2477205) s!14361) (= (regOne!34466 r3!135) r1!6342) (= (regTwo!34466 r3!135) lt!2477208)) (= lambda!396050 lambda!395987))))

(declare-fun bs!1857113 () Bool)

(assert (= bs!1857113 (and b!6945401 d!2168478)))

(assert (=> bs!1857113 (not (= lambda!396050 lambda!396026))))

(assert (=> bs!1857112 (not (= lambda!396050 lambda!396046))))

(assert (=> bs!1857110 (= (and (= (_2!37137 lt!2477205) lt!2477209) (= (regOne!34466 r3!135) r1!6342) (= (regTwo!34466 r3!135) r2!6280)) (= lambda!396050 lambda!395991))))

(declare-fun bs!1857114 () Bool)

(assert (= bs!1857114 (and b!6945401 b!6944855)))

(assert (=> bs!1857114 (not (= lambda!396050 lambda!395993))))

(declare-fun bs!1857115 () Bool)

(assert (= bs!1857115 (and b!6945401 b!6945402)))

(assert (=> bs!1857115 (not (= lambda!396050 lambda!396049))))

(assert (=> bs!1857110 (not (= lambda!396050 lambda!395992))))

(declare-fun bs!1857116 () Bool)

(assert (= bs!1857116 (and b!6945401 b!6945179)))

(assert (=> bs!1857116 (not (= lambda!396050 lambda!396035))))

(declare-fun bs!1857117 () Bool)

(assert (= bs!1857117 (and b!6945401 b!6944848)))

(assert (=> bs!1857117 (= (and (= (_2!37137 lt!2477205) s!14361) (= (regOne!34466 r3!135) r1!6342) (= (regTwo!34466 r3!135) lt!2477208)) (= lambda!396050 lambda!395994))))

(assert (=> bs!1857110 (not (= lambda!396050 lambda!395986))))

(assert (=> b!6945401 true))

(assert (=> b!6945401 true))

(declare-fun b!6945394 () Bool)

(declare-fun e!4177743 () Bool)

(assert (=> b!6945394 (= e!4177743 (= (_2!37137 lt!2477205) (Cons!66606 (c!1288489 r3!135) Nil!66606)))))

(declare-fun b!6945395 () Bool)

(declare-fun res!2833412 () Bool)

(declare-fun e!4177739 () Bool)

(assert (=> b!6945395 (=> res!2833412 e!4177739)))

(declare-fun call!630896 () Bool)

(assert (=> b!6945395 (= res!2833412 call!630896)))

(declare-fun e!4177741 () Bool)

(assert (=> b!6945395 (= e!4177741 e!4177739)))

(declare-fun b!6945396 () Bool)

(declare-fun c!1288615 () Bool)

(assert (=> b!6945396 (= c!1288615 ((_ is Union!16977) r3!135))))

(declare-fun e!4177737 () Bool)

(assert (=> b!6945396 (= e!4177743 e!4177737)))

(declare-fun b!6945397 () Bool)

(declare-fun e!4177742 () Bool)

(declare-fun e!4177738 () Bool)

(assert (=> b!6945397 (= e!4177742 e!4177738)))

(declare-fun res!2833413 () Bool)

(assert (=> b!6945397 (= res!2833413 (not ((_ is EmptyLang!16977) r3!135)))))

(assert (=> b!6945397 (=> (not res!2833413) (not e!4177738))))

(declare-fun bm!630891 () Bool)

(assert (=> bm!630891 (= call!630896 (isEmpty!38882 (_2!37137 lt!2477205)))))

(declare-fun b!6945398 () Bool)

(declare-fun e!4177740 () Bool)

(assert (=> b!6945398 (= e!4177740 (matchRSpec!4034 (regTwo!34467 r3!135) (_2!37137 lt!2477205)))))

(declare-fun b!6945399 () Bool)

(assert (=> b!6945399 (= e!4177742 call!630896)))

(declare-fun b!6945400 () Bool)

(assert (=> b!6945400 (= e!4177737 e!4177741)))

(declare-fun c!1288612 () Bool)

(assert (=> b!6945400 (= c!1288612 ((_ is Star!16977) r3!135))))

(declare-fun call!630897 () Bool)

(assert (=> b!6945401 (= e!4177741 call!630897)))

(declare-fun d!2168578 () Bool)

(declare-fun c!1288613 () Bool)

(assert (=> d!2168578 (= c!1288613 ((_ is EmptyExpr!16977) r3!135))))

(assert (=> d!2168578 (= (matchRSpec!4034 r3!135 (_2!37137 lt!2477205)) e!4177742)))

(assert (=> b!6945402 (= e!4177739 call!630897)))

(declare-fun b!6945403 () Bool)

(assert (=> b!6945403 (= e!4177737 e!4177740)))

(declare-fun res!2833411 () Bool)

(assert (=> b!6945403 (= res!2833411 (matchRSpec!4034 (regOne!34467 r3!135) (_2!37137 lt!2477205)))))

(assert (=> b!6945403 (=> res!2833411 e!4177740)))

(declare-fun b!6945404 () Bool)

(declare-fun c!1288614 () Bool)

(assert (=> b!6945404 (= c!1288614 ((_ is ElementMatch!16977) r3!135))))

(assert (=> b!6945404 (= e!4177738 e!4177743)))

(declare-fun bm!630892 () Bool)

(assert (=> bm!630892 (= call!630897 (Exists!3977 (ite c!1288612 lambda!396049 lambda!396050)))))

(assert (= (and d!2168578 c!1288613) b!6945399))

(assert (= (and d!2168578 (not c!1288613)) b!6945397))

(assert (= (and b!6945397 res!2833413) b!6945404))

(assert (= (and b!6945404 c!1288614) b!6945394))

(assert (= (and b!6945404 (not c!1288614)) b!6945396))

(assert (= (and b!6945396 c!1288615) b!6945403))

(assert (= (and b!6945396 (not c!1288615)) b!6945400))

(assert (= (and b!6945403 (not res!2833411)) b!6945398))

(assert (= (and b!6945400 c!1288612) b!6945395))

(assert (= (and b!6945400 (not c!1288612)) b!6945401))

(assert (= (and b!6945395 (not res!2833412)) b!6945402))

(assert (= (or b!6945402 b!6945401) bm!630892))

(assert (= (or b!6945399 b!6945395) bm!630891))

(declare-fun m!7650016 () Bool)

(assert (=> bm!630891 m!7650016))

(declare-fun m!7650018 () Bool)

(assert (=> b!6945398 m!7650018))

(declare-fun m!7650020 () Bool)

(assert (=> b!6945403 m!7650020))

(declare-fun m!7650022 () Bool)

(assert (=> bm!630892 m!7650022))

(assert (=> b!6944864 d!2168578))

(declare-fun d!2168580 () Bool)

(assert (=> d!2168580 (= (++!15016 (++!15016 (_1!37137 lt!2477213) (_1!37137 lt!2477205)) (_2!37137 lt!2477205)) (++!15016 (_1!37137 lt!2477213) (++!15016 (_1!37137 lt!2477205) (_2!37137 lt!2477205))))))

(declare-fun lt!2477306 () Unit!160696)

(declare-fun choose!51759 (List!66730 List!66730 List!66730) Unit!160696)

(assert (=> d!2168580 (= lt!2477306 (choose!51759 (_1!37137 lt!2477213) (_1!37137 lt!2477205) (_2!37137 lt!2477205)))))

(assert (=> d!2168580 (= (lemmaConcatAssociativity!3058 (_1!37137 lt!2477213) (_1!37137 lt!2477205) (_2!37137 lt!2477205)) lt!2477306)))

(declare-fun bs!1857118 () Bool)

(assert (= bs!1857118 d!2168580))

(assert (=> bs!1857118 m!7649448))

(assert (=> bs!1857118 m!7649418))

(assert (=> bs!1857118 m!7649448))

(assert (=> bs!1857118 m!7649474))

(declare-fun m!7650024 () Bool)

(assert (=> bs!1857118 m!7650024))

(assert (=> bs!1857118 m!7649418))

(declare-fun m!7650026 () Bool)

(assert (=> bs!1857118 m!7650026))

(assert (=> b!6944864 d!2168580))

(declare-fun bs!1857119 () Bool)

(declare-fun d!2168582 () Bool)

(assert (= bs!1857119 (and d!2168582 d!2168450)))

(declare-fun lambda!396051 () Int)

(assert (=> bs!1857119 (not (= lambda!396051 lambda!396012))))

(declare-fun bs!1857120 () Bool)

(assert (= bs!1857120 (and d!2168582 d!2168570)))

(assert (=> bs!1857120 (= (and (= s!14361 lt!2477209) (= lt!2477206 r1!6342) (= r3!135 r2!6280)) (= lambda!396051 lambda!396048))))

(declare-fun bs!1857121 () Bool)

(assert (= bs!1857121 (and d!2168582 b!6945401)))

(assert (=> bs!1857121 (not (= lambda!396051 lambda!396050))))

(assert (=> bs!1857119 (= (and (= lt!2477206 r1!6342) (= r3!135 lt!2477208)) (= lambda!396051 lambda!396009))))

(declare-fun bs!1857122 () Bool)

(assert (= bs!1857122 (and d!2168582 b!6944864)))

(assert (=> bs!1857122 (= (and (= s!14361 lt!2477209) (= lt!2477206 r1!6342) (= r3!135 r2!6280)) (= lambda!396051 lambda!395990))))

(declare-fun bs!1857123 () Bool)

(assert (= bs!1857123 (and d!2168582 b!6945178)))

(assert (=> bs!1857123 (not (= lambda!396051 lambda!396037))))

(declare-fun bs!1857124 () Bool)

(assert (= bs!1857124 (and d!2168582 d!2168560)))

(assert (=> bs!1857124 (not (= lambda!396051 lambda!396047))))

(assert (=> bs!1857122 (not (= lambda!396051 lambda!395989))))

(assert (=> bs!1857122 (= (and (= s!14361 (_2!37137 lt!2477213)) (= lt!2477206 r2!6280)) (= lambda!396051 lambda!395988))))

(assert (=> bs!1857122 (not (= lambda!396051 lambda!395987))))

(declare-fun bs!1857125 () Bool)

(assert (= bs!1857125 (and d!2168582 d!2168478)))

(assert (=> bs!1857125 (= (and (= s!14361 (_2!37137 lt!2477213)) (= lt!2477206 r2!6280)) (= lambda!396051 lambda!396026))))

(assert (=> bs!1857124 (= (and (= s!14361 (_2!37137 lt!2477213)) (= lt!2477206 r2!6280)) (= lambda!396051 lambda!396046))))

(assert (=> bs!1857122 (not (= lambda!396051 lambda!395991))))

(declare-fun bs!1857126 () Bool)

(assert (= bs!1857126 (and d!2168582 b!6944855)))

(assert (=> bs!1857126 (= (and (= lt!2477206 r1!6342) (= r3!135 lt!2477208)) (= lambda!396051 lambda!395993))))

(declare-fun bs!1857127 () Bool)

(assert (= bs!1857127 (and d!2168582 b!6945402)))

(assert (=> bs!1857127 (not (= lambda!396051 lambda!396049))))

(assert (=> bs!1857122 (= lambda!396051 lambda!395992)))

(declare-fun bs!1857128 () Bool)

(assert (= bs!1857128 (and d!2168582 b!6945179)))

(assert (=> bs!1857128 (not (= lambda!396051 lambda!396035))))

(declare-fun bs!1857129 () Bool)

(assert (= bs!1857129 (and d!2168582 b!6944848)))

(assert (=> bs!1857129 (not (= lambda!396051 lambda!395994))))

(assert (=> bs!1857122 (= (and (= lt!2477206 r1!6342) (= r3!135 lt!2477208)) (= lambda!396051 lambda!395986))))

(assert (=> d!2168582 true))

(assert (=> d!2168582 true))

(assert (=> d!2168582 true))

(assert (=> d!2168582 (= (isDefined!13447 (findConcatSeparation!3160 lt!2477206 r3!135 Nil!66606 s!14361 s!14361)) (Exists!3977 lambda!396051))))

(declare-fun lt!2477307 () Unit!160696)

(assert (=> d!2168582 (= lt!2477307 (choose!51754 lt!2477206 r3!135 s!14361))))

(assert (=> d!2168582 (validRegex!8683 lt!2477206)))

(assert (=> d!2168582 (= (lemmaFindConcatSeparationEquivalentToExists!2918 lt!2477206 r3!135 s!14361) lt!2477307)))

(declare-fun bs!1857130 () Bool)

(assert (= bs!1857130 d!2168582))

(assert (=> bs!1857130 m!7649420))

(assert (=> bs!1857130 m!7649422))

(declare-fun m!7650028 () Bool)

(assert (=> bs!1857130 m!7650028))

(assert (=> bs!1857130 m!7649670))

(declare-fun m!7650030 () Bool)

(assert (=> bs!1857130 m!7650030))

(assert (=> bs!1857130 m!7649420))

(assert (=> b!6944864 d!2168582))

(declare-fun d!2168584 () Bool)

(assert (=> d!2168584 (= (Exists!3977 lambda!395991) (choose!51751 lambda!395991))))

(declare-fun bs!1857131 () Bool)

(assert (= bs!1857131 d!2168584))

(declare-fun m!7650032 () Bool)

(assert (=> bs!1857131 m!7650032))

(assert (=> b!6944864 d!2168584))

(declare-fun b!6945466 () Bool)

(declare-fun e!4177763 () Bool)

(declare-fun lt!2477309 () Option!16746)

(assert (=> b!6945466 (= e!4177763 (= (++!15016 (_1!37137 (get!23402 lt!2477309)) (_2!37137 (get!23402 lt!2477309))) (_2!37137 lt!2477213)))))

(declare-fun b!6945467 () Bool)

(declare-fun res!2833416 () Bool)

(assert (=> b!6945467 (=> (not res!2833416) (not e!4177763))))

(assert (=> b!6945467 (= res!2833416 (matchR!9116 r3!135 (_2!37137 (get!23402 lt!2477309))))))

(declare-fun b!6945468 () Bool)

(declare-fun e!4177761 () Option!16746)

(assert (=> b!6945468 (= e!4177761 None!16745)))

(declare-fun b!6945469 () Bool)

(declare-fun e!4177762 () Bool)

(assert (=> b!6945469 (= e!4177762 (not (isDefined!13447 lt!2477309)))))

(declare-fun d!2168586 () Bool)

(assert (=> d!2168586 e!4177762))

(declare-fun res!2833414 () Bool)

(assert (=> d!2168586 (=> res!2833414 e!4177762)))

(assert (=> d!2168586 (= res!2833414 e!4177763)))

(declare-fun res!2833418 () Bool)

(assert (=> d!2168586 (=> (not res!2833418) (not e!4177763))))

(assert (=> d!2168586 (= res!2833418 (isDefined!13447 lt!2477309))))

(declare-fun e!4177765 () Option!16746)

(assert (=> d!2168586 (= lt!2477309 e!4177765)))

(declare-fun c!1288617 () Bool)

(declare-fun e!4177764 () Bool)

(assert (=> d!2168586 (= c!1288617 e!4177764)))

(declare-fun res!2833417 () Bool)

(assert (=> d!2168586 (=> (not res!2833417) (not e!4177764))))

(assert (=> d!2168586 (= res!2833417 (matchR!9116 r2!6280 Nil!66606))))

(assert (=> d!2168586 (validRegex!8683 r2!6280)))

(assert (=> d!2168586 (= (findConcatSeparation!3160 r2!6280 r3!135 Nil!66606 (_2!37137 lt!2477213) (_2!37137 lt!2477213)) lt!2477309)))

(declare-fun b!6945470 () Bool)

(declare-fun lt!2477310 () Unit!160696)

(declare-fun lt!2477308 () Unit!160696)

(assert (=> b!6945470 (= lt!2477310 lt!2477308)))

(assert (=> b!6945470 (= (++!15016 (++!15016 Nil!66606 (Cons!66606 (h!73054 (_2!37137 lt!2477213)) Nil!66606)) (t!380473 (_2!37137 lt!2477213))) (_2!37137 lt!2477213))))

(assert (=> b!6945470 (= lt!2477308 (lemmaMoveElementToOtherListKeepsConcatEq!2868 Nil!66606 (h!73054 (_2!37137 lt!2477213)) (t!380473 (_2!37137 lt!2477213)) (_2!37137 lt!2477213)))))

(assert (=> b!6945470 (= e!4177761 (findConcatSeparation!3160 r2!6280 r3!135 (++!15016 Nil!66606 (Cons!66606 (h!73054 (_2!37137 lt!2477213)) Nil!66606)) (t!380473 (_2!37137 lt!2477213)) (_2!37137 lt!2477213)))))

(declare-fun b!6945471 () Bool)

(assert (=> b!6945471 (= e!4177764 (matchR!9116 r3!135 (_2!37137 lt!2477213)))))

(declare-fun b!6945472 () Bool)

(assert (=> b!6945472 (= e!4177765 (Some!16745 (tuple2!67669 Nil!66606 (_2!37137 lt!2477213))))))

(declare-fun b!6945473 () Bool)

(declare-fun res!2833415 () Bool)

(assert (=> b!6945473 (=> (not res!2833415) (not e!4177763))))

(assert (=> b!6945473 (= res!2833415 (matchR!9116 r2!6280 (_1!37137 (get!23402 lt!2477309))))))

(declare-fun b!6945474 () Bool)

(assert (=> b!6945474 (= e!4177765 e!4177761)))

(declare-fun c!1288616 () Bool)

(assert (=> b!6945474 (= c!1288616 ((_ is Nil!66606) (_2!37137 lt!2477213)))))

(assert (= (and d!2168586 res!2833417) b!6945471))

(assert (= (and d!2168586 c!1288617) b!6945472))

(assert (= (and d!2168586 (not c!1288617)) b!6945474))

(assert (= (and b!6945474 c!1288616) b!6945468))

(assert (= (and b!6945474 (not c!1288616)) b!6945470))

(assert (= (and d!2168586 res!2833418) b!6945473))

(assert (= (and b!6945473 res!2833415) b!6945467))

(assert (= (and b!6945467 res!2833416) b!6945466))

(assert (= (and d!2168586 (not res!2833414)) b!6945469))

(declare-fun m!7650034 () Bool)

(assert (=> b!6945473 m!7650034))

(declare-fun m!7650036 () Bool)

(assert (=> b!6945473 m!7650036))

(declare-fun m!7650038 () Bool)

(assert (=> d!2168586 m!7650038))

(declare-fun m!7650040 () Bool)

(assert (=> d!2168586 m!7650040))

(assert (=> d!2168586 m!7649526))

(declare-fun m!7650042 () Bool)

(assert (=> b!6945470 m!7650042))

(assert (=> b!6945470 m!7650042))

(declare-fun m!7650044 () Bool)

(assert (=> b!6945470 m!7650044))

(declare-fun m!7650046 () Bool)

(assert (=> b!6945470 m!7650046))

(assert (=> b!6945470 m!7650042))

(declare-fun m!7650048 () Bool)

(assert (=> b!6945470 m!7650048))

(assert (=> b!6945467 m!7650034))

(declare-fun m!7650050 () Bool)

(assert (=> b!6945467 m!7650050))

(assert (=> b!6945466 m!7650034))

(declare-fun m!7650052 () Bool)

(assert (=> b!6945466 m!7650052))

(declare-fun m!7650054 () Bool)

(assert (=> b!6945471 m!7650054))

(assert (=> b!6945469 m!7650038))

(assert (=> b!6944864 d!2168586))

(declare-fun b!6945503 () Bool)

(declare-fun res!2833437 () Bool)

(declare-fun e!4177786 () Bool)

(assert (=> b!6945503 (=> res!2833437 e!4177786)))

(declare-fun e!4177784 () Bool)

(assert (=> b!6945503 (= res!2833437 e!4177784)))

(declare-fun res!2833435 () Bool)

(assert (=> b!6945503 (=> (not res!2833435) (not e!4177784))))

(declare-fun lt!2477313 () Bool)

(assert (=> b!6945503 (= res!2833435 lt!2477313)))

(declare-fun b!6945505 () Bool)

(declare-fun head!13918 (List!66730) C!34224)

(assert (=> b!6945505 (= e!4177784 (= (head!13918 lt!2477209) (c!1288489 lt!2477206)))))

(declare-fun b!6945506 () Bool)

(declare-fun e!4177781 () Bool)

(declare-fun derivativeStep!5465 (Regex!16977 C!34224) Regex!16977)

(declare-fun tail!12970 (List!66730) List!66730)

(assert (=> b!6945506 (= e!4177781 (matchR!9116 (derivativeStep!5465 lt!2477206 (head!13918 lt!2477209)) (tail!12970 lt!2477209)))))

(declare-fun b!6945507 () Bool)

(declare-fun res!2833438 () Bool)

(assert (=> b!6945507 (=> (not res!2833438) (not e!4177784))))

(assert (=> b!6945507 (= res!2833438 (isEmpty!38882 (tail!12970 lt!2477209)))))

(declare-fun b!6945508 () Bool)

(declare-fun res!2833436 () Bool)

(assert (=> b!6945508 (=> (not res!2833436) (not e!4177784))))

(declare-fun call!630900 () Bool)

(assert (=> b!6945508 (= res!2833436 (not call!630900))))

(declare-fun b!6945509 () Bool)

(declare-fun res!2833440 () Bool)

(assert (=> b!6945509 (=> res!2833440 e!4177786)))

(assert (=> b!6945509 (= res!2833440 (not ((_ is ElementMatch!16977) lt!2477206)))))

(declare-fun e!4177785 () Bool)

(assert (=> b!6945509 (= e!4177785 e!4177786)))

(declare-fun b!6945510 () Bool)

(declare-fun e!4177782 () Bool)

(declare-fun e!4177780 () Bool)

(assert (=> b!6945510 (= e!4177782 e!4177780)))

(declare-fun res!2833441 () Bool)

(assert (=> b!6945510 (=> res!2833441 e!4177780)))

(assert (=> b!6945510 (= res!2833441 call!630900)))

(declare-fun b!6945511 () Bool)

(declare-fun e!4177783 () Bool)

(assert (=> b!6945511 (= e!4177783 e!4177785)))

(declare-fun c!1288624 () Bool)

(assert (=> b!6945511 (= c!1288624 ((_ is EmptyLang!16977) lt!2477206))))

(declare-fun d!2168588 () Bool)

(assert (=> d!2168588 e!4177783))

(declare-fun c!1288625 () Bool)

(assert (=> d!2168588 (= c!1288625 ((_ is EmptyExpr!16977) lt!2477206))))

(assert (=> d!2168588 (= lt!2477313 e!4177781)))

(declare-fun c!1288626 () Bool)

(assert (=> d!2168588 (= c!1288626 (isEmpty!38882 lt!2477209))))

(assert (=> d!2168588 (validRegex!8683 lt!2477206)))

(assert (=> d!2168588 (= (matchR!9116 lt!2477206 lt!2477209) lt!2477313)))

(declare-fun b!6945504 () Bool)

(assert (=> b!6945504 (= e!4177781 (nullable!6790 lt!2477206))))

(declare-fun bm!630895 () Bool)

(assert (=> bm!630895 (= call!630900 (isEmpty!38882 lt!2477209))))

(declare-fun b!6945512 () Bool)

(assert (=> b!6945512 (= e!4177783 (= lt!2477313 call!630900))))

(declare-fun b!6945513 () Bool)

(assert (=> b!6945513 (= e!4177785 (not lt!2477313))))

(declare-fun b!6945514 () Bool)

(assert (=> b!6945514 (= e!4177786 e!4177782)))

(declare-fun res!2833439 () Bool)

(assert (=> b!6945514 (=> (not res!2833439) (not e!4177782))))

(assert (=> b!6945514 (= res!2833439 (not lt!2477313))))

(declare-fun b!6945515 () Bool)

(declare-fun res!2833442 () Bool)

(assert (=> b!6945515 (=> res!2833442 e!4177780)))

(assert (=> b!6945515 (= res!2833442 (not (isEmpty!38882 (tail!12970 lt!2477209))))))

(declare-fun b!6945516 () Bool)

(assert (=> b!6945516 (= e!4177780 (not (= (head!13918 lt!2477209) (c!1288489 lt!2477206))))))

(assert (= (and d!2168588 c!1288626) b!6945504))

(assert (= (and d!2168588 (not c!1288626)) b!6945506))

(assert (= (and d!2168588 c!1288625) b!6945512))

(assert (= (and d!2168588 (not c!1288625)) b!6945511))

(assert (= (and b!6945511 c!1288624) b!6945513))

(assert (= (and b!6945511 (not c!1288624)) b!6945509))

(assert (= (and b!6945509 (not res!2833440)) b!6945503))

(assert (= (and b!6945503 res!2833435) b!6945508))

(assert (= (and b!6945508 res!2833436) b!6945507))

(assert (= (and b!6945507 res!2833438) b!6945505))

(assert (= (and b!6945503 (not res!2833437)) b!6945514))

(assert (= (and b!6945514 res!2833439) b!6945510))

(assert (= (and b!6945510 (not res!2833441)) b!6945515))

(assert (= (and b!6945515 (not res!2833442)) b!6945516))

(assert (= (or b!6945512 b!6945508 b!6945510) bm!630895))

(declare-fun m!7650056 () Bool)

(assert (=> bm!630895 m!7650056))

(declare-fun m!7650058 () Bool)

(assert (=> b!6945504 m!7650058))

(declare-fun m!7650060 () Bool)

(assert (=> b!6945506 m!7650060))

(assert (=> b!6945506 m!7650060))

(declare-fun m!7650062 () Bool)

(assert (=> b!6945506 m!7650062))

(declare-fun m!7650064 () Bool)

(assert (=> b!6945506 m!7650064))

(assert (=> b!6945506 m!7650062))

(assert (=> b!6945506 m!7650064))

(declare-fun m!7650066 () Bool)

(assert (=> b!6945506 m!7650066))

(assert (=> d!2168588 m!7650056))

(assert (=> d!2168588 m!7649670))

(assert (=> b!6945515 m!7650064))

(assert (=> b!6945515 m!7650064))

(declare-fun m!7650068 () Bool)

(assert (=> b!6945515 m!7650068))

(assert (=> b!6945505 m!7650060))

(assert (=> b!6945507 m!7650064))

(assert (=> b!6945507 m!7650064))

(assert (=> b!6945507 m!7650068))

(assert (=> b!6945516 m!7650060))

(assert (=> b!6944864 d!2168588))

(declare-fun d!2168590 () Bool)

(assert (=> d!2168590 (= (matchR!9116 r1!6342 (_1!37137 lt!2477213)) (matchRSpec!4034 r1!6342 (_1!37137 lt!2477213)))))

(declare-fun lt!2477314 () Unit!160696)

(assert (=> d!2168590 (= lt!2477314 (choose!51756 r1!6342 (_1!37137 lt!2477213)))))

(assert (=> d!2168590 (validRegex!8683 r1!6342)))

(assert (=> d!2168590 (= (mainMatchTheorem!4034 r1!6342 (_1!37137 lt!2477213)) lt!2477314)))

(declare-fun bs!1857132 () Bool)

(assert (= bs!1857132 d!2168590))

(assert (=> bs!1857132 m!7649476))

(assert (=> bs!1857132 m!7649460))

(declare-fun m!7650070 () Bool)

(assert (=> bs!1857132 m!7650070))

(assert (=> bs!1857132 m!7649530))

(assert (=> b!6944864 d!2168590))

(declare-fun b!6945518 () Bool)

(declare-fun e!4177787 () List!66730)

(assert (=> b!6945518 (= e!4177787 (Cons!66606 (h!73054 (_1!37137 lt!2477213)) (++!15016 (t!380473 (_1!37137 lt!2477213)) (++!15016 (_1!37137 lt!2477205) (_2!37137 lt!2477205)))))))

(declare-fun b!6945519 () Bool)

(declare-fun res!2833443 () Bool)

(declare-fun e!4177788 () Bool)

(assert (=> b!6945519 (=> (not res!2833443) (not e!4177788))))

(declare-fun lt!2477315 () List!66730)

(assert (=> b!6945519 (= res!2833443 (= (size!40809 lt!2477315) (+ (size!40809 (_1!37137 lt!2477213)) (size!40809 (++!15016 (_1!37137 lt!2477205) (_2!37137 lt!2477205))))))))

(declare-fun d!2168592 () Bool)

(assert (=> d!2168592 e!4177788))

(declare-fun res!2833444 () Bool)

(assert (=> d!2168592 (=> (not res!2833444) (not e!4177788))))

(assert (=> d!2168592 (= res!2833444 (= (content!13112 lt!2477315) ((_ map or) (content!13112 (_1!37137 lt!2477213)) (content!13112 (++!15016 (_1!37137 lt!2477205) (_2!37137 lt!2477205))))))))

(assert (=> d!2168592 (= lt!2477315 e!4177787)))

(declare-fun c!1288627 () Bool)

(assert (=> d!2168592 (= c!1288627 ((_ is Nil!66606) (_1!37137 lt!2477213)))))

(assert (=> d!2168592 (= (++!15016 (_1!37137 lt!2477213) (++!15016 (_1!37137 lt!2477205) (_2!37137 lt!2477205))) lt!2477315)))

(declare-fun b!6945520 () Bool)

(assert (=> b!6945520 (= e!4177788 (or (not (= (++!15016 (_1!37137 lt!2477205) (_2!37137 lt!2477205)) Nil!66606)) (= lt!2477315 (_1!37137 lt!2477213))))))

(declare-fun b!6945517 () Bool)

(assert (=> b!6945517 (= e!4177787 (++!15016 (_1!37137 lt!2477205) (_2!37137 lt!2477205)))))

(assert (= (and d!2168592 c!1288627) b!6945517))

(assert (= (and d!2168592 (not c!1288627)) b!6945518))

(assert (= (and d!2168592 res!2833444) b!6945519))

(assert (= (and b!6945519 res!2833443) b!6945520))

(assert (=> b!6945518 m!7649448))

(declare-fun m!7650072 () Bool)

(assert (=> b!6945518 m!7650072))

(declare-fun m!7650074 () Bool)

(assert (=> b!6945519 m!7650074))

(assert (=> b!6945519 m!7649946))

(assert (=> b!6945519 m!7649448))

(declare-fun m!7650076 () Bool)

(assert (=> b!6945519 m!7650076))

(declare-fun m!7650078 () Bool)

(assert (=> d!2168592 m!7650078))

(assert (=> d!2168592 m!7649950))

(assert (=> d!2168592 m!7649448))

(declare-fun m!7650080 () Bool)

(assert (=> d!2168592 m!7650080))

(assert (=> b!6944864 d!2168592))

(declare-fun d!2168594 () Bool)

(assert (=> d!2168594 (= (Exists!3977 lambda!395990) (choose!51751 lambda!395990))))

(declare-fun bs!1857133 () Bool)

(assert (= bs!1857133 d!2168594))

(declare-fun m!7650082 () Bool)

(assert (=> bs!1857133 m!7650082))

(assert (=> b!6944864 d!2168594))

(declare-fun d!2168596 () Bool)

(assert (=> d!2168596 (= (Exists!3977 lambda!395992) (choose!51751 lambda!395992))))

(declare-fun bs!1857134 () Bool)

(assert (= bs!1857134 d!2168596))

(declare-fun m!7650084 () Bool)

(assert (=> bs!1857134 m!7650084))

(assert (=> b!6944864 d!2168596))

(declare-fun b!6945521 () Bool)

(declare-fun res!2833447 () Bool)

(declare-fun e!4177795 () Bool)

(assert (=> b!6945521 (=> res!2833447 e!4177795)))

(declare-fun e!4177793 () Bool)

(assert (=> b!6945521 (= res!2833447 e!4177793)))

(declare-fun res!2833445 () Bool)

(assert (=> b!6945521 (=> (not res!2833445) (not e!4177793))))

(declare-fun lt!2477316 () Bool)

(assert (=> b!6945521 (= res!2833445 lt!2477316)))

(declare-fun b!6945523 () Bool)

(assert (=> b!6945523 (= e!4177793 (= (head!13918 (_1!37137 lt!2477213)) (c!1288489 r1!6342)))))

(declare-fun b!6945524 () Bool)

(declare-fun e!4177790 () Bool)

(assert (=> b!6945524 (= e!4177790 (matchR!9116 (derivativeStep!5465 r1!6342 (head!13918 (_1!37137 lt!2477213))) (tail!12970 (_1!37137 lt!2477213))))))

(declare-fun b!6945525 () Bool)

(declare-fun res!2833448 () Bool)

(assert (=> b!6945525 (=> (not res!2833448) (not e!4177793))))

(assert (=> b!6945525 (= res!2833448 (isEmpty!38882 (tail!12970 (_1!37137 lt!2477213))))))

(declare-fun b!6945526 () Bool)

(declare-fun res!2833446 () Bool)

(assert (=> b!6945526 (=> (not res!2833446) (not e!4177793))))

(declare-fun call!630901 () Bool)

(assert (=> b!6945526 (= res!2833446 (not call!630901))))

(declare-fun b!6945527 () Bool)

(declare-fun res!2833450 () Bool)

(assert (=> b!6945527 (=> res!2833450 e!4177795)))

(assert (=> b!6945527 (= res!2833450 (not ((_ is ElementMatch!16977) r1!6342)))))

(declare-fun e!4177794 () Bool)

(assert (=> b!6945527 (= e!4177794 e!4177795)))

(declare-fun b!6945528 () Bool)

(declare-fun e!4177791 () Bool)

(declare-fun e!4177789 () Bool)

(assert (=> b!6945528 (= e!4177791 e!4177789)))

(declare-fun res!2833451 () Bool)

(assert (=> b!6945528 (=> res!2833451 e!4177789)))

(assert (=> b!6945528 (= res!2833451 call!630901)))

(declare-fun b!6945529 () Bool)

(declare-fun e!4177792 () Bool)

(assert (=> b!6945529 (= e!4177792 e!4177794)))

(declare-fun c!1288628 () Bool)

(assert (=> b!6945529 (= c!1288628 ((_ is EmptyLang!16977) r1!6342))))

(declare-fun d!2168598 () Bool)

(assert (=> d!2168598 e!4177792))

(declare-fun c!1288629 () Bool)

(assert (=> d!2168598 (= c!1288629 ((_ is EmptyExpr!16977) r1!6342))))

(assert (=> d!2168598 (= lt!2477316 e!4177790)))

(declare-fun c!1288630 () Bool)

(assert (=> d!2168598 (= c!1288630 (isEmpty!38882 (_1!37137 lt!2477213)))))

(assert (=> d!2168598 (validRegex!8683 r1!6342)))

(assert (=> d!2168598 (= (matchR!9116 r1!6342 (_1!37137 lt!2477213)) lt!2477316)))

(declare-fun b!6945522 () Bool)

(assert (=> b!6945522 (= e!4177790 (nullable!6790 r1!6342))))

(declare-fun bm!630896 () Bool)

(assert (=> bm!630896 (= call!630901 (isEmpty!38882 (_1!37137 lt!2477213)))))

(declare-fun b!6945530 () Bool)

(assert (=> b!6945530 (= e!4177792 (= lt!2477316 call!630901))))

(declare-fun b!6945531 () Bool)

(assert (=> b!6945531 (= e!4177794 (not lt!2477316))))

(declare-fun b!6945532 () Bool)

(assert (=> b!6945532 (= e!4177795 e!4177791)))

(declare-fun res!2833449 () Bool)

(assert (=> b!6945532 (=> (not res!2833449) (not e!4177791))))

(assert (=> b!6945532 (= res!2833449 (not lt!2477316))))

(declare-fun b!6945533 () Bool)

(declare-fun res!2833452 () Bool)

(assert (=> b!6945533 (=> res!2833452 e!4177789)))

(assert (=> b!6945533 (= res!2833452 (not (isEmpty!38882 (tail!12970 (_1!37137 lt!2477213)))))))

(declare-fun b!6945534 () Bool)

(assert (=> b!6945534 (= e!4177789 (not (= (head!13918 (_1!37137 lt!2477213)) (c!1288489 r1!6342))))))

(assert (= (and d!2168598 c!1288630) b!6945522))

(assert (= (and d!2168598 (not c!1288630)) b!6945524))

(assert (= (and d!2168598 c!1288629) b!6945530))

(assert (= (and d!2168598 (not c!1288629)) b!6945529))

(assert (= (and b!6945529 c!1288628) b!6945531))

(assert (= (and b!6945529 (not c!1288628)) b!6945527))

(assert (= (and b!6945527 (not res!2833450)) b!6945521))

(assert (= (and b!6945521 res!2833445) b!6945526))

(assert (= (and b!6945526 res!2833446) b!6945525))

(assert (= (and b!6945525 res!2833448) b!6945523))

(assert (= (and b!6945521 (not res!2833447)) b!6945532))

(assert (= (and b!6945532 res!2833449) b!6945528))

(assert (= (and b!6945528 (not res!2833451)) b!6945533))

(assert (= (and b!6945533 (not res!2833452)) b!6945534))

(assert (= (or b!6945530 b!6945526 b!6945528) bm!630896))

(declare-fun m!7650086 () Bool)

(assert (=> bm!630896 m!7650086))

(declare-fun m!7650088 () Bool)

(assert (=> b!6945522 m!7650088))

(declare-fun m!7650090 () Bool)

(assert (=> b!6945524 m!7650090))

(assert (=> b!6945524 m!7650090))

(declare-fun m!7650092 () Bool)

(assert (=> b!6945524 m!7650092))

(declare-fun m!7650094 () Bool)

(assert (=> b!6945524 m!7650094))

(assert (=> b!6945524 m!7650092))

(assert (=> b!6945524 m!7650094))

(declare-fun m!7650096 () Bool)

(assert (=> b!6945524 m!7650096))

(assert (=> d!2168598 m!7650086))

(assert (=> d!2168598 m!7649530))

(assert (=> b!6945533 m!7650094))

(assert (=> b!6945533 m!7650094))

(declare-fun m!7650098 () Bool)

(assert (=> b!6945533 m!7650098))

(assert (=> b!6945523 m!7650090))

(assert (=> b!6945525 m!7650094))

(assert (=> b!6945525 m!7650094))

(assert (=> b!6945525 m!7650098))

(assert (=> b!6945534 m!7650090))

(assert (=> b!6944864 d!2168598))

(declare-fun d!2168600 () Bool)

(declare-fun isEmpty!38883 (Option!16746) Bool)

(assert (=> d!2168600 (= (isDefined!13447 lt!2477188) (not (isEmpty!38883 lt!2477188)))))

(declare-fun bs!1857135 () Bool)

(assert (= bs!1857135 d!2168600))

(declare-fun m!7650100 () Bool)

(assert (=> bs!1857135 m!7650100))

(assert (=> b!6944864 d!2168600))

(declare-fun d!2168602 () Bool)

(assert (=> d!2168602 (= (isDefined!13447 (findConcatSeparation!3160 r1!6342 r2!6280 Nil!66606 lt!2477209 lt!2477209)) (not (isEmpty!38883 (findConcatSeparation!3160 r1!6342 r2!6280 Nil!66606 lt!2477209 lt!2477209))))))

(declare-fun bs!1857136 () Bool)

(assert (= bs!1857136 d!2168602))

(assert (=> bs!1857136 m!7649488))

(declare-fun m!7650102 () Bool)

(assert (=> bs!1857136 m!7650102))

(assert (=> b!6944864 d!2168602))

(declare-fun d!2168604 () Bool)

(assert (=> d!2168604 (= (matchR!9116 r3!135 (_2!37137 lt!2477205)) (matchRSpec!4034 r3!135 (_2!37137 lt!2477205)))))

(declare-fun lt!2477317 () Unit!160696)

(assert (=> d!2168604 (= lt!2477317 (choose!51756 r3!135 (_2!37137 lt!2477205)))))

(assert (=> d!2168604 (validRegex!8683 r3!135)))

(assert (=> d!2168604 (= (mainMatchTheorem!4034 r3!135 (_2!37137 lt!2477205)) lt!2477317)))

(declare-fun bs!1857137 () Bool)

(assert (= bs!1857137 d!2168604))

(assert (=> bs!1857137 m!7649492))

(assert (=> bs!1857137 m!7649464))

(declare-fun m!7650104 () Bool)

(assert (=> bs!1857137 m!7650104))

(assert (=> bs!1857137 m!7649512))

(assert (=> b!6944864 d!2168604))

(declare-fun d!2168606 () Bool)

(assert (=> d!2168606 (isDefined!13447 (findConcatSeparation!3160 r1!6342 r2!6280 Nil!66606 lt!2477209 lt!2477209))))

(declare-fun lt!2477318 () Unit!160696)

(assert (=> d!2168606 (= lt!2477318 (choose!51753 r1!6342 r2!6280 (_1!37137 lt!2477213) (_1!37137 lt!2477205) lt!2477209 Nil!66606 lt!2477209))))

(assert (=> d!2168606 (validRegex!8683 r1!6342)))

(assert (=> d!2168606 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!120 r1!6342 r2!6280 (_1!37137 lt!2477213) (_1!37137 lt!2477205) lt!2477209 Nil!66606 lt!2477209) lt!2477318)))

(declare-fun bs!1857138 () Bool)

(assert (= bs!1857138 d!2168606))

(assert (=> bs!1857138 m!7649488))

(assert (=> bs!1857138 m!7649488))

(assert (=> bs!1857138 m!7649490))

(declare-fun m!7650106 () Bool)

(assert (=> bs!1857138 m!7650106))

(assert (=> bs!1857138 m!7649530))

(assert (=> b!6944864 d!2168606))

(declare-fun d!2168608 () Bool)

(assert (=> d!2168608 (= (Exists!3977 lambda!395986) (choose!51751 lambda!395986))))

(declare-fun bs!1857139 () Bool)

(assert (= bs!1857139 d!2168608))

(declare-fun m!7650108 () Bool)

(assert (=> bs!1857139 m!7650108))

(assert (=> b!6944864 d!2168608))

(declare-fun d!2168610 () Bool)

(assert (=> d!2168610 (= (isDefined!13447 (findConcatSeparation!3160 lt!2477206 r3!135 Nil!66606 s!14361 s!14361)) (not (isEmpty!38883 (findConcatSeparation!3160 lt!2477206 r3!135 Nil!66606 s!14361 s!14361))))))

(declare-fun bs!1857140 () Bool)

(assert (= bs!1857140 d!2168610))

(assert (=> bs!1857140 m!7649420))

(declare-fun m!7650110 () Bool)

(assert (=> bs!1857140 m!7650110))

(assert (=> b!6944864 d!2168610))

(declare-fun bs!1857141 () Bool)

(declare-fun b!6945543 () Bool)

(assert (= bs!1857141 (and b!6945543 d!2168450)))

(declare-fun lambda!396052 () Int)

(assert (=> bs!1857141 (not (= lambda!396052 lambda!396012))))

(declare-fun bs!1857142 () Bool)

(assert (= bs!1857142 (and b!6945543 d!2168570)))

(assert (=> bs!1857142 (not (= lambda!396052 lambda!396048))))

(declare-fun bs!1857143 () Bool)

(assert (= bs!1857143 (and b!6945543 b!6945401)))

(assert (=> bs!1857143 (not (= lambda!396052 lambda!396050))))

(assert (=> bs!1857141 (not (= lambda!396052 lambda!396009))))

(declare-fun bs!1857144 () Bool)

(assert (= bs!1857144 (and b!6945543 b!6945178)))

(assert (=> bs!1857144 (not (= lambda!396052 lambda!396037))))

(declare-fun bs!1857145 () Bool)

(assert (= bs!1857145 (and b!6945543 d!2168560)))

(assert (=> bs!1857145 (not (= lambda!396052 lambda!396047))))

(declare-fun bs!1857146 () Bool)

(assert (= bs!1857146 (and b!6945543 b!6944864)))

(assert (=> bs!1857146 (not (= lambda!396052 lambda!395989))))

(assert (=> bs!1857146 (not (= lambda!396052 lambda!395988))))

(assert (=> bs!1857146 (not (= lambda!396052 lambda!395987))))

(declare-fun bs!1857147 () Bool)

(assert (= bs!1857147 (and b!6945543 d!2168478)))

(assert (=> bs!1857147 (not (= lambda!396052 lambda!396026))))

(declare-fun bs!1857148 () Bool)

(assert (= bs!1857148 (and b!6945543 d!2168582)))

(assert (=> bs!1857148 (not (= lambda!396052 lambda!396051))))

(assert (=> bs!1857146 (not (= lambda!396052 lambda!395990))))

(assert (=> bs!1857145 (not (= lambda!396052 lambda!396046))))

(assert (=> bs!1857146 (not (= lambda!396052 lambda!395991))))

(declare-fun bs!1857149 () Bool)

(assert (= bs!1857149 (and b!6945543 b!6944855)))

(assert (=> bs!1857149 (not (= lambda!396052 lambda!395993))))

(declare-fun bs!1857150 () Bool)

(assert (= bs!1857150 (and b!6945543 b!6945402)))

(assert (=> bs!1857150 (= (and (= lt!2477209 (_2!37137 lt!2477205)) (= (reg!17306 lt!2477206) (reg!17306 r3!135)) (= lt!2477206 r3!135)) (= lambda!396052 lambda!396049))))

(assert (=> bs!1857146 (not (= lambda!396052 lambda!395992))))

(declare-fun bs!1857151 () Bool)

(assert (= bs!1857151 (and b!6945543 b!6945179)))

(assert (=> bs!1857151 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= (reg!17306 lt!2477206) (reg!17306 lt!2477208)) (= lt!2477206 lt!2477208)) (= lambda!396052 lambda!396035))))

(declare-fun bs!1857152 () Bool)

(assert (= bs!1857152 (and b!6945543 b!6944848)))

(assert (=> bs!1857152 (not (= lambda!396052 lambda!395994))))

(assert (=> bs!1857146 (not (= lambda!396052 lambda!395986))))

(assert (=> b!6945543 true))

(assert (=> b!6945543 true))

(declare-fun bs!1857153 () Bool)

(declare-fun b!6945542 () Bool)

(assert (= bs!1857153 (and b!6945542 d!2168450)))

(declare-fun lambda!396053 () Int)

(assert (=> bs!1857153 (= (and (= lt!2477209 s!14361) (= (regOne!34466 lt!2477206) r1!6342) (= (regTwo!34466 lt!2477206) lt!2477208)) (= lambda!396053 lambda!396012))))

(declare-fun bs!1857154 () Bool)

(assert (= bs!1857154 (and b!6945542 d!2168570)))

(assert (=> bs!1857154 (not (= lambda!396053 lambda!396048))))

(declare-fun bs!1857155 () Bool)

(assert (= bs!1857155 (and b!6945542 b!6945401)))

(assert (=> bs!1857155 (= (and (= lt!2477209 (_2!37137 lt!2477205)) (= (regOne!34466 lt!2477206) (regOne!34466 r3!135)) (= (regTwo!34466 lt!2477206) (regTwo!34466 r3!135))) (= lambda!396053 lambda!396050))))

(assert (=> bs!1857153 (not (= lambda!396053 lambda!396009))))

(declare-fun bs!1857156 () Bool)

(assert (= bs!1857156 (and b!6945542 b!6945178)))

(assert (=> bs!1857156 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= (regOne!34466 lt!2477206) (regOne!34466 lt!2477208)) (= (regTwo!34466 lt!2477206) (regTwo!34466 lt!2477208))) (= lambda!396053 lambda!396037))))

(declare-fun bs!1857157 () Bool)

(assert (= bs!1857157 (and b!6945542 d!2168560)))

(assert (=> bs!1857157 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= (regOne!34466 lt!2477206) r2!6280) (= (regTwo!34466 lt!2477206) r3!135)) (= lambda!396053 lambda!396047))))

(declare-fun bs!1857158 () Bool)

(assert (= bs!1857158 (and b!6945542 b!6944864)))

(assert (=> bs!1857158 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= (regOne!34466 lt!2477206) r2!6280) (= (regTwo!34466 lt!2477206) r3!135)) (= lambda!396053 lambda!395989))))

(assert (=> bs!1857158 (not (= lambda!396053 lambda!395988))))

(assert (=> bs!1857158 (= (and (= lt!2477209 s!14361) (= (regOne!34466 lt!2477206) r1!6342) (= (regTwo!34466 lt!2477206) lt!2477208)) (= lambda!396053 lambda!395987))))

(declare-fun bs!1857159 () Bool)

(assert (= bs!1857159 (and b!6945542 d!2168478)))

(assert (=> bs!1857159 (not (= lambda!396053 lambda!396026))))

(declare-fun bs!1857160 () Bool)

(assert (= bs!1857160 (and b!6945542 d!2168582)))

(assert (=> bs!1857160 (not (= lambda!396053 lambda!396051))))

(assert (=> bs!1857158 (not (= lambda!396053 lambda!395990))))

(assert (=> bs!1857157 (not (= lambda!396053 lambda!396046))))

(assert (=> bs!1857158 (= (and (= (regOne!34466 lt!2477206) r1!6342) (= (regTwo!34466 lt!2477206) r2!6280)) (= lambda!396053 lambda!395991))))

(declare-fun bs!1857161 () Bool)

(assert (= bs!1857161 (and b!6945542 b!6944855)))

(assert (=> bs!1857161 (not (= lambda!396053 lambda!395993))))

(declare-fun bs!1857162 () Bool)

(assert (= bs!1857162 (and b!6945542 b!6945402)))

(assert (=> bs!1857162 (not (= lambda!396053 lambda!396049))))

(assert (=> bs!1857158 (not (= lambda!396053 lambda!395992))))

(declare-fun bs!1857163 () Bool)

(assert (= bs!1857163 (and b!6945542 b!6945179)))

(assert (=> bs!1857163 (not (= lambda!396053 lambda!396035))))

(declare-fun bs!1857164 () Bool)

(assert (= bs!1857164 (and b!6945542 b!6945543)))

(assert (=> bs!1857164 (not (= lambda!396053 lambda!396052))))

(declare-fun bs!1857165 () Bool)

(assert (= bs!1857165 (and b!6945542 b!6944848)))

(assert (=> bs!1857165 (= (and (= lt!2477209 s!14361) (= (regOne!34466 lt!2477206) r1!6342) (= (regTwo!34466 lt!2477206) lt!2477208)) (= lambda!396053 lambda!395994))))

(assert (=> bs!1857158 (not (= lambda!396053 lambda!395986))))

(assert (=> b!6945542 true))

(assert (=> b!6945542 true))

(declare-fun b!6945535 () Bool)

(declare-fun e!4177802 () Bool)

(assert (=> b!6945535 (= e!4177802 (= lt!2477209 (Cons!66606 (c!1288489 lt!2477206) Nil!66606)))))

(declare-fun b!6945536 () Bool)

(declare-fun res!2833454 () Bool)

(declare-fun e!4177798 () Bool)

(assert (=> b!6945536 (=> res!2833454 e!4177798)))

(declare-fun call!630902 () Bool)

(assert (=> b!6945536 (= res!2833454 call!630902)))

(declare-fun e!4177800 () Bool)

(assert (=> b!6945536 (= e!4177800 e!4177798)))

(declare-fun b!6945537 () Bool)

(declare-fun c!1288634 () Bool)

(assert (=> b!6945537 (= c!1288634 ((_ is Union!16977) lt!2477206))))

(declare-fun e!4177796 () Bool)

(assert (=> b!6945537 (= e!4177802 e!4177796)))

(declare-fun b!6945538 () Bool)

(declare-fun e!4177801 () Bool)

(declare-fun e!4177797 () Bool)

(assert (=> b!6945538 (= e!4177801 e!4177797)))

(declare-fun res!2833455 () Bool)

(assert (=> b!6945538 (= res!2833455 (not ((_ is EmptyLang!16977) lt!2477206)))))

(assert (=> b!6945538 (=> (not res!2833455) (not e!4177797))))

(declare-fun bm!630897 () Bool)

(assert (=> bm!630897 (= call!630902 (isEmpty!38882 lt!2477209))))

(declare-fun b!6945539 () Bool)

(declare-fun e!4177799 () Bool)

(assert (=> b!6945539 (= e!4177799 (matchRSpec!4034 (regTwo!34467 lt!2477206) lt!2477209))))

(declare-fun b!6945540 () Bool)

(assert (=> b!6945540 (= e!4177801 call!630902)))

(declare-fun b!6945541 () Bool)

(assert (=> b!6945541 (= e!4177796 e!4177800)))

(declare-fun c!1288631 () Bool)

(assert (=> b!6945541 (= c!1288631 ((_ is Star!16977) lt!2477206))))

(declare-fun call!630903 () Bool)

(assert (=> b!6945542 (= e!4177800 call!630903)))

(declare-fun d!2168612 () Bool)

(declare-fun c!1288632 () Bool)

(assert (=> d!2168612 (= c!1288632 ((_ is EmptyExpr!16977) lt!2477206))))

(assert (=> d!2168612 (= (matchRSpec!4034 lt!2477206 lt!2477209) e!4177801)))

(assert (=> b!6945543 (= e!4177798 call!630903)))

(declare-fun b!6945544 () Bool)

(assert (=> b!6945544 (= e!4177796 e!4177799)))

(declare-fun res!2833453 () Bool)

(assert (=> b!6945544 (= res!2833453 (matchRSpec!4034 (regOne!34467 lt!2477206) lt!2477209))))

(assert (=> b!6945544 (=> res!2833453 e!4177799)))

(declare-fun b!6945545 () Bool)

(declare-fun c!1288633 () Bool)

(assert (=> b!6945545 (= c!1288633 ((_ is ElementMatch!16977) lt!2477206))))

(assert (=> b!6945545 (= e!4177797 e!4177802)))

(declare-fun bm!630898 () Bool)

(assert (=> bm!630898 (= call!630903 (Exists!3977 (ite c!1288631 lambda!396052 lambda!396053)))))

(assert (= (and d!2168612 c!1288632) b!6945540))

(assert (= (and d!2168612 (not c!1288632)) b!6945538))

(assert (= (and b!6945538 res!2833455) b!6945545))

(assert (= (and b!6945545 c!1288633) b!6945535))

(assert (= (and b!6945545 (not c!1288633)) b!6945537))

(assert (= (and b!6945537 c!1288634) b!6945544))

(assert (= (and b!6945537 (not c!1288634)) b!6945541))

(assert (= (and b!6945544 (not res!2833453)) b!6945539))

(assert (= (and b!6945541 c!1288631) b!6945536))

(assert (= (and b!6945541 (not c!1288631)) b!6945542))

(assert (= (and b!6945536 (not res!2833454)) b!6945543))

(assert (= (or b!6945543 b!6945542) bm!630898))

(assert (= (or b!6945540 b!6945536) bm!630897))

(assert (=> bm!630897 m!7650056))

(declare-fun m!7650112 () Bool)

(assert (=> b!6945539 m!7650112))

(declare-fun m!7650114 () Bool)

(assert (=> b!6945544 m!7650114))

(declare-fun m!7650116 () Bool)

(assert (=> bm!630898 m!7650116))

(assert (=> b!6944864 d!2168612))

(declare-fun b!6945546 () Bool)

(declare-fun res!2833458 () Bool)

(declare-fun e!4177809 () Bool)

(assert (=> b!6945546 (=> res!2833458 e!4177809)))

(declare-fun e!4177807 () Bool)

(assert (=> b!6945546 (= res!2833458 e!4177807)))

(declare-fun res!2833456 () Bool)

(assert (=> b!6945546 (=> (not res!2833456) (not e!4177807))))

(declare-fun lt!2477319 () Bool)

(assert (=> b!6945546 (= res!2833456 lt!2477319)))

(declare-fun b!6945548 () Bool)

(assert (=> b!6945548 (= e!4177807 (= (head!13918 (_2!37137 lt!2477213)) (c!1288489 lt!2477208)))))

(declare-fun b!6945549 () Bool)

(declare-fun e!4177804 () Bool)

(assert (=> b!6945549 (= e!4177804 (matchR!9116 (derivativeStep!5465 lt!2477208 (head!13918 (_2!37137 lt!2477213))) (tail!12970 (_2!37137 lt!2477213))))))

(declare-fun b!6945550 () Bool)

(declare-fun res!2833459 () Bool)

(assert (=> b!6945550 (=> (not res!2833459) (not e!4177807))))

(assert (=> b!6945550 (= res!2833459 (isEmpty!38882 (tail!12970 (_2!37137 lt!2477213))))))

(declare-fun b!6945551 () Bool)

(declare-fun res!2833457 () Bool)

(assert (=> b!6945551 (=> (not res!2833457) (not e!4177807))))

(declare-fun call!630904 () Bool)

(assert (=> b!6945551 (= res!2833457 (not call!630904))))

(declare-fun b!6945552 () Bool)

(declare-fun res!2833461 () Bool)

(assert (=> b!6945552 (=> res!2833461 e!4177809)))

(assert (=> b!6945552 (= res!2833461 (not ((_ is ElementMatch!16977) lt!2477208)))))

(declare-fun e!4177808 () Bool)

(assert (=> b!6945552 (= e!4177808 e!4177809)))

(declare-fun b!6945553 () Bool)

(declare-fun e!4177805 () Bool)

(declare-fun e!4177803 () Bool)

(assert (=> b!6945553 (= e!4177805 e!4177803)))

(declare-fun res!2833462 () Bool)

(assert (=> b!6945553 (=> res!2833462 e!4177803)))

(assert (=> b!6945553 (= res!2833462 call!630904)))

(declare-fun b!6945554 () Bool)

(declare-fun e!4177806 () Bool)

(assert (=> b!6945554 (= e!4177806 e!4177808)))

(declare-fun c!1288635 () Bool)

(assert (=> b!6945554 (= c!1288635 ((_ is EmptyLang!16977) lt!2477208))))

(declare-fun d!2168614 () Bool)

(assert (=> d!2168614 e!4177806))

(declare-fun c!1288636 () Bool)

(assert (=> d!2168614 (= c!1288636 ((_ is EmptyExpr!16977) lt!2477208))))

(assert (=> d!2168614 (= lt!2477319 e!4177804)))

(declare-fun c!1288637 () Bool)

(assert (=> d!2168614 (= c!1288637 (isEmpty!38882 (_2!37137 lt!2477213)))))

(assert (=> d!2168614 (validRegex!8683 lt!2477208)))

(assert (=> d!2168614 (= (matchR!9116 lt!2477208 (_2!37137 lt!2477213)) lt!2477319)))

(declare-fun b!6945547 () Bool)

(assert (=> b!6945547 (= e!4177804 (nullable!6790 lt!2477208))))

(declare-fun bm!630899 () Bool)

(assert (=> bm!630899 (= call!630904 (isEmpty!38882 (_2!37137 lt!2477213)))))

(declare-fun b!6945555 () Bool)

(assert (=> b!6945555 (= e!4177806 (= lt!2477319 call!630904))))

(declare-fun b!6945556 () Bool)

(assert (=> b!6945556 (= e!4177808 (not lt!2477319))))

(declare-fun b!6945557 () Bool)

(assert (=> b!6945557 (= e!4177809 e!4177805)))

(declare-fun res!2833460 () Bool)

(assert (=> b!6945557 (=> (not res!2833460) (not e!4177805))))

(assert (=> b!6945557 (= res!2833460 (not lt!2477319))))

(declare-fun b!6945558 () Bool)

(declare-fun res!2833463 () Bool)

(assert (=> b!6945558 (=> res!2833463 e!4177803)))

(assert (=> b!6945558 (= res!2833463 (not (isEmpty!38882 (tail!12970 (_2!37137 lt!2477213)))))))

(declare-fun b!6945559 () Bool)

(assert (=> b!6945559 (= e!4177803 (not (= (head!13918 (_2!37137 lt!2477213)) (c!1288489 lt!2477208))))))

(assert (= (and d!2168614 c!1288637) b!6945547))

(assert (= (and d!2168614 (not c!1288637)) b!6945549))

(assert (= (and d!2168614 c!1288636) b!6945555))

(assert (= (and d!2168614 (not c!1288636)) b!6945554))

(assert (= (and b!6945554 c!1288635) b!6945556))

(assert (= (and b!6945554 (not c!1288635)) b!6945552))

(assert (= (and b!6945552 (not res!2833461)) b!6945546))

(assert (= (and b!6945546 res!2833456) b!6945551))

(assert (= (and b!6945551 res!2833457) b!6945550))

(assert (= (and b!6945550 res!2833459) b!6945548))

(assert (= (and b!6945546 (not res!2833458)) b!6945557))

(assert (= (and b!6945557 res!2833460) b!6945553))

(assert (= (and b!6945553 (not res!2833462)) b!6945558))

(assert (= (and b!6945558 (not res!2833463)) b!6945559))

(assert (= (or b!6945555 b!6945551 b!6945553) bm!630899))

(assert (=> bm!630899 m!7649758))

(declare-fun m!7650118 () Bool)

(assert (=> b!6945547 m!7650118))

(declare-fun m!7650120 () Bool)

(assert (=> b!6945549 m!7650120))

(assert (=> b!6945549 m!7650120))

(declare-fun m!7650122 () Bool)

(assert (=> b!6945549 m!7650122))

(declare-fun m!7650124 () Bool)

(assert (=> b!6945549 m!7650124))

(assert (=> b!6945549 m!7650122))

(assert (=> b!6945549 m!7650124))

(declare-fun m!7650126 () Bool)

(assert (=> b!6945549 m!7650126))

(assert (=> d!2168614 m!7649758))

(assert (=> d!2168614 m!7649510))

(assert (=> b!6945558 m!7650124))

(assert (=> b!6945558 m!7650124))

(declare-fun m!7650128 () Bool)

(assert (=> b!6945558 m!7650128))

(assert (=> b!6945548 m!7650120))

(assert (=> b!6945550 m!7650124))

(assert (=> b!6945550 m!7650124))

(assert (=> b!6945550 m!7650128))

(assert (=> b!6945559 m!7650120))

(assert (=> b!6944864 d!2168614))

(declare-fun d!2168616 () Bool)

(assert (=> d!2168616 (= (Exists!3977 lambda!395989) (choose!51751 lambda!395989))))

(declare-fun bs!1857166 () Bool)

(assert (= bs!1857166 d!2168616))

(declare-fun m!7650130 () Bool)

(assert (=> bs!1857166 m!7650130))

(assert (=> b!6944864 d!2168616))

(declare-fun d!2168618 () Bool)

(assert (=> d!2168618 (= (Exists!3977 lambda!395987) (choose!51751 lambda!395987))))

(declare-fun bs!1857167 () Bool)

(assert (= bs!1857167 d!2168618))

(declare-fun m!7650132 () Bool)

(assert (=> bs!1857167 m!7650132))

(assert (=> b!6944864 d!2168618))

(declare-fun b!6945560 () Bool)

(declare-fun res!2833466 () Bool)

(declare-fun e!4177816 () Bool)

(assert (=> b!6945560 (=> res!2833466 e!4177816)))

(declare-fun e!4177814 () Bool)

(assert (=> b!6945560 (= res!2833466 e!4177814)))

(declare-fun res!2833464 () Bool)

(assert (=> b!6945560 (=> (not res!2833464) (not e!4177814))))

(declare-fun lt!2477320 () Bool)

(assert (=> b!6945560 (= res!2833464 lt!2477320)))

(declare-fun b!6945562 () Bool)

(assert (=> b!6945562 (= e!4177814 (= (head!13918 (_2!37137 lt!2477205)) (c!1288489 r3!135)))))

(declare-fun b!6945563 () Bool)

(declare-fun e!4177811 () Bool)

(assert (=> b!6945563 (= e!4177811 (matchR!9116 (derivativeStep!5465 r3!135 (head!13918 (_2!37137 lt!2477205))) (tail!12970 (_2!37137 lt!2477205))))))

(declare-fun b!6945564 () Bool)

(declare-fun res!2833467 () Bool)

(assert (=> b!6945564 (=> (not res!2833467) (not e!4177814))))

(assert (=> b!6945564 (= res!2833467 (isEmpty!38882 (tail!12970 (_2!37137 lt!2477205))))))

(declare-fun b!6945565 () Bool)

(declare-fun res!2833465 () Bool)

(assert (=> b!6945565 (=> (not res!2833465) (not e!4177814))))

(declare-fun call!630905 () Bool)

(assert (=> b!6945565 (= res!2833465 (not call!630905))))

(declare-fun b!6945566 () Bool)

(declare-fun res!2833469 () Bool)

(assert (=> b!6945566 (=> res!2833469 e!4177816)))

(assert (=> b!6945566 (= res!2833469 (not ((_ is ElementMatch!16977) r3!135)))))

(declare-fun e!4177815 () Bool)

(assert (=> b!6945566 (= e!4177815 e!4177816)))

(declare-fun b!6945567 () Bool)

(declare-fun e!4177812 () Bool)

(declare-fun e!4177810 () Bool)

(assert (=> b!6945567 (= e!4177812 e!4177810)))

(declare-fun res!2833470 () Bool)

(assert (=> b!6945567 (=> res!2833470 e!4177810)))

(assert (=> b!6945567 (= res!2833470 call!630905)))

(declare-fun b!6945568 () Bool)

(declare-fun e!4177813 () Bool)

(assert (=> b!6945568 (= e!4177813 e!4177815)))

(declare-fun c!1288638 () Bool)

(assert (=> b!6945568 (= c!1288638 ((_ is EmptyLang!16977) r3!135))))

(declare-fun d!2168620 () Bool)

(assert (=> d!2168620 e!4177813))

(declare-fun c!1288639 () Bool)

(assert (=> d!2168620 (= c!1288639 ((_ is EmptyExpr!16977) r3!135))))

(assert (=> d!2168620 (= lt!2477320 e!4177811)))

(declare-fun c!1288640 () Bool)

(assert (=> d!2168620 (= c!1288640 (isEmpty!38882 (_2!37137 lt!2477205)))))

(assert (=> d!2168620 (validRegex!8683 r3!135)))

(assert (=> d!2168620 (= (matchR!9116 r3!135 (_2!37137 lt!2477205)) lt!2477320)))

(declare-fun b!6945561 () Bool)

(assert (=> b!6945561 (= e!4177811 (nullable!6790 r3!135))))

(declare-fun bm!630900 () Bool)

(assert (=> bm!630900 (= call!630905 (isEmpty!38882 (_2!37137 lt!2477205)))))

(declare-fun b!6945569 () Bool)

(assert (=> b!6945569 (= e!4177813 (= lt!2477320 call!630905))))

(declare-fun b!6945570 () Bool)

(assert (=> b!6945570 (= e!4177815 (not lt!2477320))))

(declare-fun b!6945571 () Bool)

(assert (=> b!6945571 (= e!4177816 e!4177812)))

(declare-fun res!2833468 () Bool)

(assert (=> b!6945571 (=> (not res!2833468) (not e!4177812))))

(assert (=> b!6945571 (= res!2833468 (not lt!2477320))))

(declare-fun b!6945572 () Bool)

(declare-fun res!2833471 () Bool)

(assert (=> b!6945572 (=> res!2833471 e!4177810)))

(assert (=> b!6945572 (= res!2833471 (not (isEmpty!38882 (tail!12970 (_2!37137 lt!2477205)))))))

(declare-fun b!6945573 () Bool)

(assert (=> b!6945573 (= e!4177810 (not (= (head!13918 (_2!37137 lt!2477205)) (c!1288489 r3!135))))))

(assert (= (and d!2168620 c!1288640) b!6945561))

(assert (= (and d!2168620 (not c!1288640)) b!6945563))

(assert (= (and d!2168620 c!1288639) b!6945569))

(assert (= (and d!2168620 (not c!1288639)) b!6945568))

(assert (= (and b!6945568 c!1288638) b!6945570))

(assert (= (and b!6945568 (not c!1288638)) b!6945566))

(assert (= (and b!6945566 (not res!2833469)) b!6945560))

(assert (= (and b!6945560 res!2833464) b!6945565))

(assert (= (and b!6945565 res!2833465) b!6945564))

(assert (= (and b!6945564 res!2833467) b!6945562))

(assert (= (and b!6945560 (not res!2833466)) b!6945571))

(assert (= (and b!6945571 res!2833468) b!6945567))

(assert (= (and b!6945567 (not res!2833470)) b!6945572))

(assert (= (and b!6945572 (not res!2833471)) b!6945573))

(assert (= (or b!6945569 b!6945565 b!6945567) bm!630900))

(assert (=> bm!630900 m!7650016))

(declare-fun m!7650134 () Bool)

(assert (=> b!6945561 m!7650134))

(declare-fun m!7650136 () Bool)

(assert (=> b!6945563 m!7650136))

(assert (=> b!6945563 m!7650136))

(declare-fun m!7650138 () Bool)

(assert (=> b!6945563 m!7650138))

(declare-fun m!7650140 () Bool)

(assert (=> b!6945563 m!7650140))

(assert (=> b!6945563 m!7650138))

(assert (=> b!6945563 m!7650140))

(declare-fun m!7650142 () Bool)

(assert (=> b!6945563 m!7650142))

(assert (=> d!2168620 m!7650016))

(assert (=> d!2168620 m!7649512))

(assert (=> b!6945572 m!7650140))

(assert (=> b!6945572 m!7650140))

(declare-fun m!7650144 () Bool)

(assert (=> b!6945572 m!7650144))

(assert (=> b!6945562 m!7650136))

(assert (=> b!6945564 m!7650140))

(assert (=> b!6945564 m!7650140))

(assert (=> b!6945564 m!7650144))

(assert (=> b!6945573 m!7650136))

(assert (=> b!6944864 d!2168620))

(declare-fun bs!1857168 () Bool)

(declare-fun d!2168622 () Bool)

(assert (= bs!1857168 (and d!2168622 b!6945542)))

(declare-fun lambda!396054 () Int)

(assert (=> bs!1857168 (not (= lambda!396054 lambda!396053))))

(declare-fun bs!1857169 () Bool)

(assert (= bs!1857169 (and d!2168622 d!2168450)))

(assert (=> bs!1857169 (not (= lambda!396054 lambda!396012))))

(declare-fun bs!1857170 () Bool)

(assert (= bs!1857170 (and d!2168622 d!2168570)))

(assert (=> bs!1857170 (= lambda!396054 lambda!396048)))

(declare-fun bs!1857171 () Bool)

(assert (= bs!1857171 (and d!2168622 b!6945401)))

(assert (=> bs!1857171 (not (= lambda!396054 lambda!396050))))

(assert (=> bs!1857169 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!396054 lambda!396009))))

(declare-fun bs!1857172 () Bool)

(assert (= bs!1857172 (and d!2168622 b!6945178)))

(assert (=> bs!1857172 (not (= lambda!396054 lambda!396037))))

(declare-fun bs!1857173 () Bool)

(assert (= bs!1857173 (and d!2168622 d!2168560)))

(assert (=> bs!1857173 (not (= lambda!396054 lambda!396047))))

(declare-fun bs!1857174 () Bool)

(assert (= bs!1857174 (and d!2168622 b!6944864)))

(assert (=> bs!1857174 (not (= lambda!396054 lambda!395989))))

(assert (=> bs!1857174 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!396054 lambda!395988))))

(assert (=> bs!1857174 (not (= lambda!396054 lambda!395987))))

(declare-fun bs!1857175 () Bool)

(assert (= bs!1857175 (and d!2168622 d!2168478)))

(assert (=> bs!1857175 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!396054 lambda!396026))))

(declare-fun bs!1857176 () Bool)

(assert (= bs!1857176 (and d!2168622 d!2168582)))

(assert (=> bs!1857176 (= (and (= lt!2477209 s!14361) (= r1!6342 lt!2477206) (= r2!6280 r3!135)) (= lambda!396054 lambda!396051))))

(assert (=> bs!1857174 (= lambda!396054 lambda!395990)))

(assert (=> bs!1857173 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!396054 lambda!396046))))

(assert (=> bs!1857174 (not (= lambda!396054 lambda!395991))))

(declare-fun bs!1857177 () Bool)

(assert (= bs!1857177 (and d!2168622 b!6944855)))

(assert (=> bs!1857177 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!396054 lambda!395993))))

(declare-fun bs!1857178 () Bool)

(assert (= bs!1857178 (and d!2168622 b!6945402)))

(assert (=> bs!1857178 (not (= lambda!396054 lambda!396049))))

(assert (=> bs!1857174 (= (and (= lt!2477209 s!14361) (= r1!6342 lt!2477206) (= r2!6280 r3!135)) (= lambda!396054 lambda!395992))))

(declare-fun bs!1857179 () Bool)

(assert (= bs!1857179 (and d!2168622 b!6945179)))

(assert (=> bs!1857179 (not (= lambda!396054 lambda!396035))))

(declare-fun bs!1857180 () Bool)

(assert (= bs!1857180 (and d!2168622 b!6945543)))

(assert (=> bs!1857180 (not (= lambda!396054 lambda!396052))))

(declare-fun bs!1857181 () Bool)

(assert (= bs!1857181 (and d!2168622 b!6944848)))

(assert (=> bs!1857181 (not (= lambda!396054 lambda!395994))))

(assert (=> bs!1857174 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!396054 lambda!395986))))

(assert (=> d!2168622 true))

(assert (=> d!2168622 true))

(assert (=> d!2168622 true))

(declare-fun lambda!396055 () Int)

(assert (=> bs!1857168 (= (and (= r1!6342 (regOne!34466 lt!2477206)) (= r2!6280 (regTwo!34466 lt!2477206))) (= lambda!396055 lambda!396053))))

(assert (=> bs!1857169 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!396055 lambda!396012))))

(assert (=> bs!1857170 (not (= lambda!396055 lambda!396048))))

(assert (=> bs!1857171 (= (and (= lt!2477209 (_2!37137 lt!2477205)) (= r1!6342 (regOne!34466 r3!135)) (= r2!6280 (regTwo!34466 r3!135))) (= lambda!396055 lambda!396050))))

(assert (=> bs!1857169 (not (= lambda!396055 lambda!396009))))

(assert (=> bs!1857172 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 (regOne!34466 lt!2477208)) (= r2!6280 (regTwo!34466 lt!2477208))) (= lambda!396055 lambda!396037))))

(assert (=> bs!1857173 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!396055 lambda!396047))))

(assert (=> bs!1857174 (= (and (= lt!2477209 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!396055 lambda!395989))))

(assert (=> bs!1857174 (not (= lambda!396055 lambda!395988))))

(assert (=> bs!1857174 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!396055 lambda!395987))))

(assert (=> bs!1857175 (not (= lambda!396055 lambda!396026))))

(assert (=> bs!1857176 (not (= lambda!396055 lambda!396051))))

(assert (=> bs!1857174 (not (= lambda!396055 lambda!395990))))

(declare-fun bs!1857182 () Bool)

(assert (= bs!1857182 d!2168622))

(assert (=> bs!1857182 (not (= lambda!396055 lambda!396054))))

(assert (=> bs!1857173 (not (= lambda!396055 lambda!396046))))

(assert (=> bs!1857174 (= lambda!396055 lambda!395991)))

(assert (=> bs!1857177 (not (= lambda!396055 lambda!395993))))

(assert (=> bs!1857178 (not (= lambda!396055 lambda!396049))))

(assert (=> bs!1857174 (not (= lambda!396055 lambda!395992))))

(assert (=> bs!1857179 (not (= lambda!396055 lambda!396035))))

(assert (=> bs!1857180 (not (= lambda!396055 lambda!396052))))

(assert (=> bs!1857181 (= (and (= lt!2477209 s!14361) (= r2!6280 lt!2477208)) (= lambda!396055 lambda!395994))))

(assert (=> bs!1857174 (not (= lambda!396055 lambda!395986))))

(assert (=> d!2168622 true))

(assert (=> d!2168622 true))

(assert (=> d!2168622 true))

(assert (=> d!2168622 (= (Exists!3977 lambda!396054) (Exists!3977 lambda!396055))))

(declare-fun lt!2477321 () Unit!160696)

(assert (=> d!2168622 (= lt!2477321 (choose!51752 r1!6342 r2!6280 lt!2477209))))

(assert (=> d!2168622 (validRegex!8683 r1!6342)))

(assert (=> d!2168622 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2438 r1!6342 r2!6280 lt!2477209) lt!2477321)))

(declare-fun m!7650146 () Bool)

(assert (=> bs!1857182 m!7650146))

(declare-fun m!7650148 () Bool)

(assert (=> bs!1857182 m!7650148))

(declare-fun m!7650150 () Bool)

(assert (=> bs!1857182 m!7650150))

(assert (=> bs!1857182 m!7649530))

(assert (=> b!6944864 d!2168622))

(declare-fun d!2168624 () Bool)

(assert (=> d!2168624 (= (get!23402 lt!2477188) (v!53017 lt!2477188))))

(assert (=> b!6944864 d!2168624))

(declare-fun d!2168626 () Bool)

(assert (=> d!2168626 (= (get!23402 lt!2477185) (v!53017 lt!2477185))))

(assert (=> b!6944864 d!2168626))

(declare-fun b!6945574 () Bool)

(declare-fun e!4177819 () Bool)

(declare-fun lt!2477323 () Option!16746)

(assert (=> b!6945574 (= e!4177819 (= (++!15016 (_1!37137 (get!23402 lt!2477323)) (_2!37137 (get!23402 lt!2477323))) lt!2477209))))

(declare-fun b!6945575 () Bool)

(declare-fun res!2833474 () Bool)

(assert (=> b!6945575 (=> (not res!2833474) (not e!4177819))))

(assert (=> b!6945575 (= res!2833474 (matchR!9116 r2!6280 (_2!37137 (get!23402 lt!2477323))))))

(declare-fun b!6945576 () Bool)

(declare-fun e!4177817 () Option!16746)

(assert (=> b!6945576 (= e!4177817 None!16745)))

(declare-fun b!6945577 () Bool)

(declare-fun e!4177818 () Bool)

(assert (=> b!6945577 (= e!4177818 (not (isDefined!13447 lt!2477323)))))

(declare-fun d!2168628 () Bool)

(assert (=> d!2168628 e!4177818))

(declare-fun res!2833472 () Bool)

(assert (=> d!2168628 (=> res!2833472 e!4177818)))

(assert (=> d!2168628 (= res!2833472 e!4177819)))

(declare-fun res!2833476 () Bool)

(assert (=> d!2168628 (=> (not res!2833476) (not e!4177819))))

(assert (=> d!2168628 (= res!2833476 (isDefined!13447 lt!2477323))))

(declare-fun e!4177821 () Option!16746)

(assert (=> d!2168628 (= lt!2477323 e!4177821)))

(declare-fun c!1288642 () Bool)

(declare-fun e!4177820 () Bool)

(assert (=> d!2168628 (= c!1288642 e!4177820)))

(declare-fun res!2833475 () Bool)

(assert (=> d!2168628 (=> (not res!2833475) (not e!4177820))))

(assert (=> d!2168628 (= res!2833475 (matchR!9116 r1!6342 Nil!66606))))

(assert (=> d!2168628 (validRegex!8683 r1!6342)))

(assert (=> d!2168628 (= (findConcatSeparation!3160 r1!6342 r2!6280 Nil!66606 lt!2477209 lt!2477209) lt!2477323)))

(declare-fun b!6945578 () Bool)

(declare-fun lt!2477324 () Unit!160696)

(declare-fun lt!2477322 () Unit!160696)

(assert (=> b!6945578 (= lt!2477324 lt!2477322)))

(assert (=> b!6945578 (= (++!15016 (++!15016 Nil!66606 (Cons!66606 (h!73054 lt!2477209) Nil!66606)) (t!380473 lt!2477209)) lt!2477209)))

(assert (=> b!6945578 (= lt!2477322 (lemmaMoveElementToOtherListKeepsConcatEq!2868 Nil!66606 (h!73054 lt!2477209) (t!380473 lt!2477209) lt!2477209))))

(assert (=> b!6945578 (= e!4177817 (findConcatSeparation!3160 r1!6342 r2!6280 (++!15016 Nil!66606 (Cons!66606 (h!73054 lt!2477209) Nil!66606)) (t!380473 lt!2477209) lt!2477209))))

(declare-fun b!6945579 () Bool)

(assert (=> b!6945579 (= e!4177820 (matchR!9116 r2!6280 lt!2477209))))

(declare-fun b!6945580 () Bool)

(assert (=> b!6945580 (= e!4177821 (Some!16745 (tuple2!67669 Nil!66606 lt!2477209)))))

(declare-fun b!6945581 () Bool)

(declare-fun res!2833473 () Bool)

(assert (=> b!6945581 (=> (not res!2833473) (not e!4177819))))

(assert (=> b!6945581 (= res!2833473 (matchR!9116 r1!6342 (_1!37137 (get!23402 lt!2477323))))))

(declare-fun b!6945582 () Bool)

(assert (=> b!6945582 (= e!4177821 e!4177817)))

(declare-fun c!1288641 () Bool)

(assert (=> b!6945582 (= c!1288641 ((_ is Nil!66606) lt!2477209))))

(assert (= (and d!2168628 res!2833475) b!6945579))

(assert (= (and d!2168628 c!1288642) b!6945580))

(assert (= (and d!2168628 (not c!1288642)) b!6945582))

(assert (= (and b!6945582 c!1288641) b!6945576))

(assert (= (and b!6945582 (not c!1288641)) b!6945578))

(assert (= (and d!2168628 res!2833476) b!6945581))

(assert (= (and b!6945581 res!2833473) b!6945575))

(assert (= (and b!6945575 res!2833474) b!6945574))

(assert (= (and d!2168628 (not res!2833472)) b!6945577))

(declare-fun m!7650152 () Bool)

(assert (=> b!6945581 m!7650152))

(declare-fun m!7650154 () Bool)

(assert (=> b!6945581 m!7650154))

(declare-fun m!7650156 () Bool)

(assert (=> d!2168628 m!7650156))

(declare-fun m!7650158 () Bool)

(assert (=> d!2168628 m!7650158))

(assert (=> d!2168628 m!7649530))

(declare-fun m!7650160 () Bool)

(assert (=> b!6945578 m!7650160))

(assert (=> b!6945578 m!7650160))

(declare-fun m!7650162 () Bool)

(assert (=> b!6945578 m!7650162))

(declare-fun m!7650164 () Bool)

(assert (=> b!6945578 m!7650164))

(assert (=> b!6945578 m!7650160))

(declare-fun m!7650166 () Bool)

(assert (=> b!6945578 m!7650166))

(assert (=> b!6945575 m!7650152))

(declare-fun m!7650168 () Bool)

(assert (=> b!6945575 m!7650168))

(assert (=> b!6945574 m!7650152))

(declare-fun m!7650170 () Bool)

(assert (=> b!6945574 m!7650170))

(declare-fun m!7650172 () Bool)

(assert (=> b!6945579 m!7650172))

(assert (=> b!6945577 m!7650156))

(assert (=> b!6944864 d!2168628))

(declare-fun d!2168630 () Bool)

(assert (=> d!2168630 (= (matchR!9116 lt!2477208 (_2!37137 lt!2477213)) (matchRSpec!4034 lt!2477208 (_2!37137 lt!2477213)))))

(declare-fun lt!2477325 () Unit!160696)

(assert (=> d!2168630 (= lt!2477325 (choose!51756 lt!2477208 (_2!37137 lt!2477213)))))

(assert (=> d!2168630 (validRegex!8683 lt!2477208)))

(assert (=> d!2168630 (= (mainMatchTheorem!4034 lt!2477208 (_2!37137 lt!2477213)) lt!2477325)))

(declare-fun bs!1857183 () Bool)

(assert (= bs!1857183 d!2168630))

(assert (=> bs!1857183 m!7649500))

(assert (=> bs!1857183 m!7649426))

(declare-fun m!7650174 () Bool)

(assert (=> bs!1857183 m!7650174))

(assert (=> bs!1857183 m!7649510))

(assert (=> b!6944864 d!2168630))

(declare-fun bs!1857184 () Bool)

(declare-fun d!2168632 () Bool)

(assert (= bs!1857184 (and d!2168632 b!6945542)))

(declare-fun lambda!396056 () Int)

(assert (=> bs!1857184 (not (= lambda!396056 lambda!396053))))

(declare-fun bs!1857185 () Bool)

(assert (= bs!1857185 (and d!2168632 d!2168450)))

(assert (=> bs!1857185 (not (= lambda!396056 lambda!396012))))

(declare-fun bs!1857186 () Bool)

(assert (= bs!1857186 (and d!2168632 d!2168570)))

(assert (=> bs!1857186 (= (and (= s!14361 lt!2477209) (= lt!2477206 r1!6342) (= r3!135 r2!6280)) (= lambda!396056 lambda!396048))))

(declare-fun bs!1857187 () Bool)

(assert (= bs!1857187 (and d!2168632 b!6945401)))

(assert (=> bs!1857187 (not (= lambda!396056 lambda!396050))))

(assert (=> bs!1857185 (= (and (= lt!2477206 r1!6342) (= r3!135 lt!2477208)) (= lambda!396056 lambda!396009))))

(declare-fun bs!1857188 () Bool)

(assert (= bs!1857188 (and d!2168632 b!6945178)))

(assert (=> bs!1857188 (not (= lambda!396056 lambda!396037))))

(declare-fun bs!1857189 () Bool)

(assert (= bs!1857189 (and d!2168632 d!2168560)))

(assert (=> bs!1857189 (not (= lambda!396056 lambda!396047))))

(declare-fun bs!1857190 () Bool)

(assert (= bs!1857190 (and d!2168632 b!6944864)))

(assert (=> bs!1857190 (not (= lambda!396056 lambda!395989))))

(assert (=> bs!1857190 (= (and (= s!14361 (_2!37137 lt!2477213)) (= lt!2477206 r2!6280)) (= lambda!396056 lambda!395988))))

(assert (=> bs!1857190 (not (= lambda!396056 lambda!395987))))

(declare-fun bs!1857191 () Bool)

(assert (= bs!1857191 (and d!2168632 d!2168478)))

(assert (=> bs!1857191 (= (and (= s!14361 (_2!37137 lt!2477213)) (= lt!2477206 r2!6280)) (= lambda!396056 lambda!396026))))

(declare-fun bs!1857192 () Bool)

(assert (= bs!1857192 (and d!2168632 d!2168622)))

(assert (=> bs!1857192 (not (= lambda!396056 lambda!396055))))

(declare-fun bs!1857193 () Bool)

(assert (= bs!1857193 (and d!2168632 d!2168582)))

(assert (=> bs!1857193 (= lambda!396056 lambda!396051)))

(assert (=> bs!1857190 (= (and (= s!14361 lt!2477209) (= lt!2477206 r1!6342) (= r3!135 r2!6280)) (= lambda!396056 lambda!395990))))

(assert (=> bs!1857192 (= (and (= s!14361 lt!2477209) (= lt!2477206 r1!6342) (= r3!135 r2!6280)) (= lambda!396056 lambda!396054))))

(assert (=> bs!1857189 (= (and (= s!14361 (_2!37137 lt!2477213)) (= lt!2477206 r2!6280)) (= lambda!396056 lambda!396046))))

(assert (=> bs!1857190 (not (= lambda!396056 lambda!395991))))

(declare-fun bs!1857194 () Bool)

(assert (= bs!1857194 (and d!2168632 b!6944855)))

(assert (=> bs!1857194 (= (and (= lt!2477206 r1!6342) (= r3!135 lt!2477208)) (= lambda!396056 lambda!395993))))

(declare-fun bs!1857195 () Bool)

(assert (= bs!1857195 (and d!2168632 b!6945402)))

(assert (=> bs!1857195 (not (= lambda!396056 lambda!396049))))

(assert (=> bs!1857190 (= lambda!396056 lambda!395992)))

(declare-fun bs!1857196 () Bool)

(assert (= bs!1857196 (and d!2168632 b!6945179)))

(assert (=> bs!1857196 (not (= lambda!396056 lambda!396035))))

(declare-fun bs!1857197 () Bool)

(assert (= bs!1857197 (and d!2168632 b!6945543)))

(assert (=> bs!1857197 (not (= lambda!396056 lambda!396052))))

(declare-fun bs!1857198 () Bool)

(assert (= bs!1857198 (and d!2168632 b!6944848)))

(assert (=> bs!1857198 (not (= lambda!396056 lambda!395994))))

(assert (=> bs!1857190 (= (and (= lt!2477206 r1!6342) (= r3!135 lt!2477208)) (= lambda!396056 lambda!395986))))

(assert (=> d!2168632 true))

(assert (=> d!2168632 true))

(assert (=> d!2168632 true))

(declare-fun lambda!396057 () Int)

(assert (=> bs!1857184 (= (and (= s!14361 lt!2477209) (= lt!2477206 (regOne!34466 lt!2477206)) (= r3!135 (regTwo!34466 lt!2477206))) (= lambda!396057 lambda!396053))))

(assert (=> bs!1857185 (= (and (= lt!2477206 r1!6342) (= r3!135 lt!2477208)) (= lambda!396057 lambda!396012))))

(assert (=> bs!1857186 (not (= lambda!396057 lambda!396048))))

(assert (=> bs!1857187 (= (and (= s!14361 (_2!37137 lt!2477205)) (= lt!2477206 (regOne!34466 r3!135)) (= r3!135 (regTwo!34466 r3!135))) (= lambda!396057 lambda!396050))))

(assert (=> bs!1857185 (not (= lambda!396057 lambda!396009))))

(assert (=> bs!1857188 (= (and (= s!14361 (_2!37137 lt!2477213)) (= lt!2477206 (regOne!34466 lt!2477208)) (= r3!135 (regTwo!34466 lt!2477208))) (= lambda!396057 lambda!396037))))

(assert (=> bs!1857189 (= (and (= s!14361 (_2!37137 lt!2477213)) (= lt!2477206 r2!6280)) (= lambda!396057 lambda!396047))))

(assert (=> bs!1857190 (= (and (= s!14361 (_2!37137 lt!2477213)) (= lt!2477206 r2!6280)) (= lambda!396057 lambda!395989))))

(assert (=> bs!1857190 (not (= lambda!396057 lambda!395988))))

(assert (=> bs!1857190 (= (and (= lt!2477206 r1!6342) (= r3!135 lt!2477208)) (= lambda!396057 lambda!395987))))

(assert (=> bs!1857191 (not (= lambda!396057 lambda!396026))))

(assert (=> bs!1857192 (= (and (= s!14361 lt!2477209) (= lt!2477206 r1!6342) (= r3!135 r2!6280)) (= lambda!396057 lambda!396055))))

(assert (=> bs!1857193 (not (= lambda!396057 lambda!396051))))

(assert (=> bs!1857190 (not (= lambda!396057 lambda!395990))))

(assert (=> bs!1857192 (not (= lambda!396057 lambda!396054))))

(assert (=> bs!1857189 (not (= lambda!396057 lambda!396046))))

(assert (=> bs!1857190 (= (and (= s!14361 lt!2477209) (= lt!2477206 r1!6342) (= r3!135 r2!6280)) (= lambda!396057 lambda!395991))))

(declare-fun bs!1857199 () Bool)

(assert (= bs!1857199 d!2168632))

(assert (=> bs!1857199 (not (= lambda!396057 lambda!396056))))

(assert (=> bs!1857194 (not (= lambda!396057 lambda!395993))))

(assert (=> bs!1857195 (not (= lambda!396057 lambda!396049))))

(assert (=> bs!1857190 (not (= lambda!396057 lambda!395992))))

(assert (=> bs!1857196 (not (= lambda!396057 lambda!396035))))

(assert (=> bs!1857197 (not (= lambda!396057 lambda!396052))))

(assert (=> bs!1857198 (= (and (= lt!2477206 r1!6342) (= r3!135 lt!2477208)) (= lambda!396057 lambda!395994))))

(assert (=> bs!1857190 (not (= lambda!396057 lambda!395986))))

(assert (=> d!2168632 true))

(assert (=> d!2168632 true))

(assert (=> d!2168632 true))

(assert (=> d!2168632 (= (Exists!3977 lambda!396056) (Exists!3977 lambda!396057))))

(declare-fun lt!2477326 () Unit!160696)

(assert (=> d!2168632 (= lt!2477326 (choose!51752 lt!2477206 r3!135 s!14361))))

(assert (=> d!2168632 (validRegex!8683 lt!2477206)))

(assert (=> d!2168632 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2438 lt!2477206 r3!135 s!14361) lt!2477326)))

(declare-fun m!7650176 () Bool)

(assert (=> bs!1857199 m!7650176))

(declare-fun m!7650178 () Bool)

(assert (=> bs!1857199 m!7650178))

(declare-fun m!7650180 () Bool)

(assert (=> bs!1857199 m!7650180))

(assert (=> bs!1857199 m!7649670))

(assert (=> b!6944864 d!2168632))

(declare-fun bs!1857200 () Bool)

(declare-fun b!6945591 () Bool)

(assert (= bs!1857200 (and b!6945591 b!6945542)))

(declare-fun lambda!396058 () Int)

(assert (=> bs!1857200 (not (= lambda!396058 lambda!396053))))

(declare-fun bs!1857201 () Bool)

(assert (= bs!1857201 (and b!6945591 d!2168450)))

(assert (=> bs!1857201 (not (= lambda!396058 lambda!396012))))

(declare-fun bs!1857202 () Bool)

(assert (= bs!1857202 (and b!6945591 d!2168570)))

(assert (=> bs!1857202 (not (= lambda!396058 lambda!396048))))

(declare-fun bs!1857203 () Bool)

(assert (= bs!1857203 (and b!6945591 b!6945401)))

(assert (=> bs!1857203 (not (= lambda!396058 lambda!396050))))

(assert (=> bs!1857201 (not (= lambda!396058 lambda!396009))))

(declare-fun bs!1857204 () Bool)

(assert (= bs!1857204 (and b!6945591 b!6945178)))

(assert (=> bs!1857204 (not (= lambda!396058 lambda!396037))))

(declare-fun bs!1857205 () Bool)

(assert (= bs!1857205 (and b!6945591 d!2168560)))

(assert (=> bs!1857205 (not (= lambda!396058 lambda!396047))))

(declare-fun bs!1857206 () Bool)

(assert (= bs!1857206 (and b!6945591 b!6944864)))

(assert (=> bs!1857206 (not (= lambda!396058 lambda!395989))))

(assert (=> bs!1857206 (not (= lambda!396058 lambda!395988))))

(assert (=> bs!1857206 (not (= lambda!396058 lambda!395987))))

(declare-fun bs!1857207 () Bool)

(assert (= bs!1857207 (and b!6945591 d!2168478)))

(assert (=> bs!1857207 (not (= lambda!396058 lambda!396026))))

(declare-fun bs!1857208 () Bool)

(assert (= bs!1857208 (and b!6945591 d!2168622)))

(assert (=> bs!1857208 (not (= lambda!396058 lambda!396055))))

(declare-fun bs!1857209 () Bool)

(assert (= bs!1857209 (and b!6945591 d!2168582)))

(assert (=> bs!1857209 (not (= lambda!396058 lambda!396051))))

(assert (=> bs!1857206 (not (= lambda!396058 lambda!395990))))

(assert (=> bs!1857208 (not (= lambda!396058 lambda!396054))))

(assert (=> bs!1857205 (not (= lambda!396058 lambda!396046))))

(assert (=> bs!1857206 (not (= lambda!396058 lambda!395991))))

(declare-fun bs!1857210 () Bool)

(assert (= bs!1857210 (and b!6945591 d!2168632)))

(assert (=> bs!1857210 (not (= lambda!396058 lambda!396056))))

(declare-fun bs!1857211 () Bool)

(assert (= bs!1857211 (and b!6945591 b!6944855)))

(assert (=> bs!1857211 (not (= lambda!396058 lambda!395993))))

(declare-fun bs!1857212 () Bool)

(assert (= bs!1857212 (and b!6945591 b!6945402)))

(assert (=> bs!1857212 (= (and (= (_1!37137 lt!2477213) (_2!37137 lt!2477205)) (= (reg!17306 r1!6342) (reg!17306 r3!135)) (= r1!6342 r3!135)) (= lambda!396058 lambda!396049))))

(assert (=> bs!1857206 (not (= lambda!396058 lambda!395992))))

(declare-fun bs!1857213 () Bool)

(assert (= bs!1857213 (and b!6945591 b!6945179)))

(assert (=> bs!1857213 (= (and (= (_1!37137 lt!2477213) (_2!37137 lt!2477213)) (= (reg!17306 r1!6342) (reg!17306 lt!2477208)) (= r1!6342 lt!2477208)) (= lambda!396058 lambda!396035))))

(declare-fun bs!1857214 () Bool)

(assert (= bs!1857214 (and b!6945591 b!6945543)))

(assert (=> bs!1857214 (= (and (= (_1!37137 lt!2477213) lt!2477209) (= (reg!17306 r1!6342) (reg!17306 lt!2477206)) (= r1!6342 lt!2477206)) (= lambda!396058 lambda!396052))))

(assert (=> bs!1857210 (not (= lambda!396058 lambda!396057))))

(declare-fun bs!1857215 () Bool)

(assert (= bs!1857215 (and b!6945591 b!6944848)))

(assert (=> bs!1857215 (not (= lambda!396058 lambda!395994))))

(assert (=> bs!1857206 (not (= lambda!396058 lambda!395986))))

(assert (=> b!6945591 true))

(assert (=> b!6945591 true))

(declare-fun bs!1857216 () Bool)

(declare-fun b!6945590 () Bool)

(assert (= bs!1857216 (and b!6945590 b!6945542)))

(declare-fun lambda!396059 () Int)

(assert (=> bs!1857216 (= (and (= (_1!37137 lt!2477213) lt!2477209) (= (regOne!34466 r1!6342) (regOne!34466 lt!2477206)) (= (regTwo!34466 r1!6342) (regTwo!34466 lt!2477206))) (= lambda!396059 lambda!396053))))

(declare-fun bs!1857217 () Bool)

(assert (= bs!1857217 (and b!6945590 d!2168450)))

(assert (=> bs!1857217 (= (and (= (_1!37137 lt!2477213) s!14361) (= (regOne!34466 r1!6342) r1!6342) (= (regTwo!34466 r1!6342) lt!2477208)) (= lambda!396059 lambda!396012))))

(declare-fun bs!1857218 () Bool)

(assert (= bs!1857218 (and b!6945590 d!2168570)))

(assert (=> bs!1857218 (not (= lambda!396059 lambda!396048))))

(declare-fun bs!1857219 () Bool)

(assert (= bs!1857219 (and b!6945590 b!6945401)))

(assert (=> bs!1857219 (= (and (= (_1!37137 lt!2477213) (_2!37137 lt!2477205)) (= (regOne!34466 r1!6342) (regOne!34466 r3!135)) (= (regTwo!34466 r1!6342) (regTwo!34466 r3!135))) (= lambda!396059 lambda!396050))))

(assert (=> bs!1857217 (not (= lambda!396059 lambda!396009))))

(declare-fun bs!1857220 () Bool)

(assert (= bs!1857220 (and b!6945590 b!6945178)))

(assert (=> bs!1857220 (= (and (= (_1!37137 lt!2477213) (_2!37137 lt!2477213)) (= (regOne!34466 r1!6342) (regOne!34466 lt!2477208)) (= (regTwo!34466 r1!6342) (regTwo!34466 lt!2477208))) (= lambda!396059 lambda!396037))))

(declare-fun bs!1857221 () Bool)

(assert (= bs!1857221 (and b!6945590 d!2168560)))

(assert (=> bs!1857221 (= (and (= (_1!37137 lt!2477213) (_2!37137 lt!2477213)) (= (regOne!34466 r1!6342) r2!6280) (= (regTwo!34466 r1!6342) r3!135)) (= lambda!396059 lambda!396047))))

(declare-fun bs!1857222 () Bool)

(assert (= bs!1857222 (and b!6945590 b!6944864)))

(assert (=> bs!1857222 (= (and (= (_1!37137 lt!2477213) (_2!37137 lt!2477213)) (= (regOne!34466 r1!6342) r2!6280) (= (regTwo!34466 r1!6342) r3!135)) (= lambda!396059 lambda!395989))))

(assert (=> bs!1857222 (not (= lambda!396059 lambda!395988))))

(assert (=> bs!1857222 (= (and (= (_1!37137 lt!2477213) s!14361) (= (regOne!34466 r1!6342) r1!6342) (= (regTwo!34466 r1!6342) lt!2477208)) (= lambda!396059 lambda!395987))))

(declare-fun bs!1857223 () Bool)

(assert (= bs!1857223 (and b!6945590 d!2168478)))

(assert (=> bs!1857223 (not (= lambda!396059 lambda!396026))))

(declare-fun bs!1857224 () Bool)

(assert (= bs!1857224 (and b!6945590 d!2168622)))

(assert (=> bs!1857224 (= (and (= (_1!37137 lt!2477213) lt!2477209) (= (regOne!34466 r1!6342) r1!6342) (= (regTwo!34466 r1!6342) r2!6280)) (= lambda!396059 lambda!396055))))

(declare-fun bs!1857225 () Bool)

(assert (= bs!1857225 (and b!6945590 d!2168582)))

(assert (=> bs!1857225 (not (= lambda!396059 lambda!396051))))

(assert (=> bs!1857222 (not (= lambda!396059 lambda!395990))))

(assert (=> bs!1857224 (not (= lambda!396059 lambda!396054))))

(assert (=> bs!1857221 (not (= lambda!396059 lambda!396046))))

(assert (=> bs!1857222 (= (and (= (_1!37137 lt!2477213) lt!2477209) (= (regOne!34466 r1!6342) r1!6342) (= (regTwo!34466 r1!6342) r2!6280)) (= lambda!396059 lambda!395991))))

(declare-fun bs!1857226 () Bool)

(assert (= bs!1857226 (and b!6945590 d!2168632)))

(assert (=> bs!1857226 (not (= lambda!396059 lambda!396056))))

(declare-fun bs!1857227 () Bool)

(assert (= bs!1857227 (and b!6945590 b!6944855)))

(assert (=> bs!1857227 (not (= lambda!396059 lambda!395993))))

(declare-fun bs!1857228 () Bool)

(assert (= bs!1857228 (and b!6945590 b!6945402)))

(assert (=> bs!1857228 (not (= lambda!396059 lambda!396049))))

(declare-fun bs!1857229 () Bool)

(assert (= bs!1857229 (and b!6945590 b!6945591)))

(assert (=> bs!1857229 (not (= lambda!396059 lambda!396058))))

(assert (=> bs!1857222 (not (= lambda!396059 lambda!395992))))

(declare-fun bs!1857230 () Bool)

(assert (= bs!1857230 (and b!6945590 b!6945179)))

(assert (=> bs!1857230 (not (= lambda!396059 lambda!396035))))

(declare-fun bs!1857231 () Bool)

(assert (= bs!1857231 (and b!6945590 b!6945543)))

(assert (=> bs!1857231 (not (= lambda!396059 lambda!396052))))

(assert (=> bs!1857226 (= (and (= (_1!37137 lt!2477213) s!14361) (= (regOne!34466 r1!6342) lt!2477206) (= (regTwo!34466 r1!6342) r3!135)) (= lambda!396059 lambda!396057))))

(declare-fun bs!1857232 () Bool)

(assert (= bs!1857232 (and b!6945590 b!6944848)))

(assert (=> bs!1857232 (= (and (= (_1!37137 lt!2477213) s!14361) (= (regOne!34466 r1!6342) r1!6342) (= (regTwo!34466 r1!6342) lt!2477208)) (= lambda!396059 lambda!395994))))

(assert (=> bs!1857222 (not (= lambda!396059 lambda!395986))))

(assert (=> b!6945590 true))

(assert (=> b!6945590 true))

(declare-fun b!6945583 () Bool)

(declare-fun e!4177828 () Bool)

(assert (=> b!6945583 (= e!4177828 (= (_1!37137 lt!2477213) (Cons!66606 (c!1288489 r1!6342) Nil!66606)))))

(declare-fun b!6945584 () Bool)

(declare-fun res!2833478 () Bool)

(declare-fun e!4177824 () Bool)

(assert (=> b!6945584 (=> res!2833478 e!4177824)))

(declare-fun call!630906 () Bool)

(assert (=> b!6945584 (= res!2833478 call!630906)))

(declare-fun e!4177826 () Bool)

(assert (=> b!6945584 (= e!4177826 e!4177824)))

(declare-fun b!6945585 () Bool)

(declare-fun c!1288646 () Bool)

(assert (=> b!6945585 (= c!1288646 ((_ is Union!16977) r1!6342))))

(declare-fun e!4177822 () Bool)

(assert (=> b!6945585 (= e!4177828 e!4177822)))

(declare-fun b!6945586 () Bool)

(declare-fun e!4177827 () Bool)

(declare-fun e!4177823 () Bool)

(assert (=> b!6945586 (= e!4177827 e!4177823)))

(declare-fun res!2833479 () Bool)

(assert (=> b!6945586 (= res!2833479 (not ((_ is EmptyLang!16977) r1!6342)))))

(assert (=> b!6945586 (=> (not res!2833479) (not e!4177823))))

(declare-fun bm!630901 () Bool)

(assert (=> bm!630901 (= call!630906 (isEmpty!38882 (_1!37137 lt!2477213)))))

(declare-fun b!6945587 () Bool)

(declare-fun e!4177825 () Bool)

(assert (=> b!6945587 (= e!4177825 (matchRSpec!4034 (regTwo!34467 r1!6342) (_1!37137 lt!2477213)))))

(declare-fun b!6945588 () Bool)

(assert (=> b!6945588 (= e!4177827 call!630906)))

(declare-fun b!6945589 () Bool)

(assert (=> b!6945589 (= e!4177822 e!4177826)))

(declare-fun c!1288643 () Bool)

(assert (=> b!6945589 (= c!1288643 ((_ is Star!16977) r1!6342))))

(declare-fun call!630907 () Bool)

(assert (=> b!6945590 (= e!4177826 call!630907)))

(declare-fun d!2168634 () Bool)

(declare-fun c!1288644 () Bool)

(assert (=> d!2168634 (= c!1288644 ((_ is EmptyExpr!16977) r1!6342))))

(assert (=> d!2168634 (= (matchRSpec!4034 r1!6342 (_1!37137 lt!2477213)) e!4177827)))

(assert (=> b!6945591 (= e!4177824 call!630907)))

(declare-fun b!6945592 () Bool)

(assert (=> b!6945592 (= e!4177822 e!4177825)))

(declare-fun res!2833477 () Bool)

(assert (=> b!6945592 (= res!2833477 (matchRSpec!4034 (regOne!34467 r1!6342) (_1!37137 lt!2477213)))))

(assert (=> b!6945592 (=> res!2833477 e!4177825)))

(declare-fun b!6945593 () Bool)

(declare-fun c!1288645 () Bool)

(assert (=> b!6945593 (= c!1288645 ((_ is ElementMatch!16977) r1!6342))))

(assert (=> b!6945593 (= e!4177823 e!4177828)))

(declare-fun bm!630902 () Bool)

(assert (=> bm!630902 (= call!630907 (Exists!3977 (ite c!1288643 lambda!396058 lambda!396059)))))

(assert (= (and d!2168634 c!1288644) b!6945588))

(assert (= (and d!2168634 (not c!1288644)) b!6945586))

(assert (= (and b!6945586 res!2833479) b!6945593))

(assert (= (and b!6945593 c!1288645) b!6945583))

(assert (= (and b!6945593 (not c!1288645)) b!6945585))

(assert (= (and b!6945585 c!1288646) b!6945592))

(assert (= (and b!6945585 (not c!1288646)) b!6945589))

(assert (= (and b!6945592 (not res!2833477)) b!6945587))

(assert (= (and b!6945589 c!1288643) b!6945584))

(assert (= (and b!6945589 (not c!1288643)) b!6945590))

(assert (= (and b!6945584 (not res!2833478)) b!6945591))

(assert (= (or b!6945591 b!6945590) bm!630902))

(assert (= (or b!6945588 b!6945584) bm!630901))

(assert (=> bm!630901 m!7650086))

(declare-fun m!7650182 () Bool)

(assert (=> b!6945587 m!7650182))

(declare-fun m!7650184 () Bool)

(assert (=> b!6945592 m!7650184))

(declare-fun m!7650186 () Bool)

(assert (=> bm!630902 m!7650186))

(assert (=> b!6944864 d!2168634))

(declare-fun bs!1857233 () Bool)

(declare-fun d!2168636 () Bool)

(assert (= bs!1857233 (and d!2168636 b!6945542)))

(declare-fun lambda!396060 () Int)

(assert (=> bs!1857233 (not (= lambda!396060 lambda!396053))))

(declare-fun bs!1857234 () Bool)

(assert (= bs!1857234 (and d!2168636 d!2168450)))

(assert (=> bs!1857234 (not (= lambda!396060 lambda!396012))))

(declare-fun bs!1857235 () Bool)

(assert (= bs!1857235 (and d!2168636 d!2168570)))

(assert (=> bs!1857235 (= (and (= s!14361 lt!2477209) (= lt!2477208 r2!6280)) (= lambda!396060 lambda!396048))))

(declare-fun bs!1857236 () Bool)

(assert (= bs!1857236 (and d!2168636 b!6945401)))

(assert (=> bs!1857236 (not (= lambda!396060 lambda!396050))))

(assert (=> bs!1857234 (= lambda!396060 lambda!396009)))

(declare-fun bs!1857237 () Bool)

(assert (= bs!1857237 (and d!2168636 b!6945178)))

(assert (=> bs!1857237 (not (= lambda!396060 lambda!396037))))

(declare-fun bs!1857238 () Bool)

(assert (= bs!1857238 (and d!2168636 d!2168560)))

(assert (=> bs!1857238 (not (= lambda!396060 lambda!396047))))

(declare-fun bs!1857239 () Bool)

(assert (= bs!1857239 (and d!2168636 b!6944864)))

(assert (=> bs!1857239 (not (= lambda!396060 lambda!395989))))

(assert (=> bs!1857239 (= (and (= s!14361 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= lt!2477208 r3!135)) (= lambda!396060 lambda!395988))))

(assert (=> bs!1857239 (not (= lambda!396060 lambda!395987))))

(declare-fun bs!1857240 () Bool)

(assert (= bs!1857240 (and d!2168636 d!2168478)))

(assert (=> bs!1857240 (= (and (= s!14361 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= lt!2477208 r3!135)) (= lambda!396060 lambda!396026))))

(declare-fun bs!1857241 () Bool)

(assert (= bs!1857241 (and d!2168636 d!2168622)))

(assert (=> bs!1857241 (not (= lambda!396060 lambda!396055))))

(declare-fun bs!1857242 () Bool)

(assert (= bs!1857242 (and d!2168636 d!2168582)))

(assert (=> bs!1857242 (= (and (= r1!6342 lt!2477206) (= lt!2477208 r3!135)) (= lambda!396060 lambda!396051))))

(assert (=> bs!1857239 (= (and (= s!14361 lt!2477209) (= lt!2477208 r2!6280)) (= lambda!396060 lambda!395990))))

(assert (=> bs!1857241 (= (and (= s!14361 lt!2477209) (= lt!2477208 r2!6280)) (= lambda!396060 lambda!396054))))

(assert (=> bs!1857238 (= (and (= s!14361 (_2!37137 lt!2477213)) (= r1!6342 r2!6280) (= lt!2477208 r3!135)) (= lambda!396060 lambda!396046))))

(assert (=> bs!1857239 (not (= lambda!396060 lambda!395991))))

(declare-fun bs!1857243 () Bool)

(assert (= bs!1857243 (and d!2168636 d!2168632)))

(assert (=> bs!1857243 (= (and (= r1!6342 lt!2477206) (= lt!2477208 r3!135)) (= lambda!396060 lambda!396056))))

(declare-fun bs!1857244 () Bool)

(assert (= bs!1857244 (and d!2168636 b!6944855)))

(assert (=> bs!1857244 (= lambda!396060 lambda!395993)))

(declare-fun bs!1857245 () Bool)

(assert (= bs!1857245 (and d!2168636 b!6945402)))

(assert (=> bs!1857245 (not (= lambda!396060 lambda!396049))))

(declare-fun bs!1857246 () Bool)

(assert (= bs!1857246 (and d!2168636 b!6945590)))

(assert (=> bs!1857246 (not (= lambda!396060 lambda!396059))))

(declare-fun bs!1857247 () Bool)

(assert (= bs!1857247 (and d!2168636 b!6945591)))

(assert (=> bs!1857247 (not (= lambda!396060 lambda!396058))))

(assert (=> bs!1857239 (= (and (= r1!6342 lt!2477206) (= lt!2477208 r3!135)) (= lambda!396060 lambda!395992))))

(declare-fun bs!1857248 () Bool)

(assert (= bs!1857248 (and d!2168636 b!6945179)))

(assert (=> bs!1857248 (not (= lambda!396060 lambda!396035))))

(declare-fun bs!1857249 () Bool)

(assert (= bs!1857249 (and d!2168636 b!6945543)))

(assert (=> bs!1857249 (not (= lambda!396060 lambda!396052))))

(assert (=> bs!1857243 (not (= lambda!396060 lambda!396057))))

(declare-fun bs!1857250 () Bool)

(assert (= bs!1857250 (and d!2168636 b!6944848)))

(assert (=> bs!1857250 (not (= lambda!396060 lambda!395994))))

(assert (=> bs!1857239 (= lambda!396060 lambda!395986)))

(assert (=> d!2168636 true))

(assert (=> d!2168636 true))

(assert (=> d!2168636 true))

(assert (=> d!2168636 (= (isDefined!13447 (findConcatSeparation!3160 r1!6342 lt!2477208 Nil!66606 s!14361 s!14361)) (Exists!3977 lambda!396060))))

(declare-fun lt!2477327 () Unit!160696)

(assert (=> d!2168636 (= lt!2477327 (choose!51754 r1!6342 lt!2477208 s!14361))))

(assert (=> d!2168636 (validRegex!8683 r1!6342)))

(assert (=> d!2168636 (= (lemmaFindConcatSeparationEquivalentToExists!2918 r1!6342 lt!2477208 s!14361) lt!2477327)))

(declare-fun bs!1857251 () Bool)

(assert (= bs!1857251 d!2168636))

(assert (=> bs!1857251 m!7649506))

(declare-fun m!7650188 () Bool)

(assert (=> bs!1857251 m!7650188))

(declare-fun m!7650190 () Bool)

(assert (=> bs!1857251 m!7650190))

(assert (=> bs!1857251 m!7649530))

(declare-fun m!7650192 () Bool)

(assert (=> bs!1857251 m!7650192))

(assert (=> bs!1857251 m!7649506))

(assert (=> b!6944864 d!2168636))

(declare-fun bs!1857252 () Bool)

(declare-fun b!6945602 () Bool)

(assert (= bs!1857252 (and b!6945602 b!6945542)))

(declare-fun lambda!396061 () Int)

(assert (=> bs!1857252 (not (= lambda!396061 lambda!396053))))

(declare-fun bs!1857253 () Bool)

(assert (= bs!1857253 (and b!6945602 d!2168450)))

(assert (=> bs!1857253 (not (= lambda!396061 lambda!396012))))

(declare-fun bs!1857254 () Bool)

(assert (= bs!1857254 (and b!6945602 d!2168570)))

(assert (=> bs!1857254 (not (= lambda!396061 lambda!396048))))

(declare-fun bs!1857255 () Bool)

(assert (= bs!1857255 (and b!6945602 b!6945401)))

(assert (=> bs!1857255 (not (= lambda!396061 lambda!396050))))

(declare-fun bs!1857256 () Bool)

(assert (= bs!1857256 (and b!6945602 b!6945178)))

(assert (=> bs!1857256 (not (= lambda!396061 lambda!396037))))

(declare-fun bs!1857257 () Bool)

(assert (= bs!1857257 (and b!6945602 d!2168560)))

(assert (=> bs!1857257 (not (= lambda!396061 lambda!396047))))

(declare-fun bs!1857258 () Bool)

(assert (= bs!1857258 (and b!6945602 b!6944864)))

(assert (=> bs!1857258 (not (= lambda!396061 lambda!395989))))

(assert (=> bs!1857258 (not (= lambda!396061 lambda!395988))))

(assert (=> bs!1857258 (not (= lambda!396061 lambda!395987))))

(declare-fun bs!1857259 () Bool)

(assert (= bs!1857259 (and b!6945602 d!2168478)))

(assert (=> bs!1857259 (not (= lambda!396061 lambda!396026))))

(declare-fun bs!1857260 () Bool)

(assert (= bs!1857260 (and b!6945602 d!2168622)))

(assert (=> bs!1857260 (not (= lambda!396061 lambda!396055))))

(declare-fun bs!1857261 () Bool)

(assert (= bs!1857261 (and b!6945602 d!2168636)))

(assert (=> bs!1857261 (not (= lambda!396061 lambda!396060))))

(assert (=> bs!1857253 (not (= lambda!396061 lambda!396009))))

(declare-fun bs!1857262 () Bool)

(assert (= bs!1857262 (and b!6945602 d!2168582)))

(assert (=> bs!1857262 (not (= lambda!396061 lambda!396051))))

(assert (=> bs!1857258 (not (= lambda!396061 lambda!395990))))

(assert (=> bs!1857260 (not (= lambda!396061 lambda!396054))))

(assert (=> bs!1857257 (not (= lambda!396061 lambda!396046))))

(assert (=> bs!1857258 (not (= lambda!396061 lambda!395991))))

(declare-fun bs!1857263 () Bool)

(assert (= bs!1857263 (and b!6945602 d!2168632)))

(assert (=> bs!1857263 (not (= lambda!396061 lambda!396056))))

(declare-fun bs!1857264 () Bool)

(assert (= bs!1857264 (and b!6945602 b!6944855)))

(assert (=> bs!1857264 (not (= lambda!396061 lambda!395993))))

(declare-fun bs!1857265 () Bool)

(assert (= bs!1857265 (and b!6945602 b!6945402)))

(assert (=> bs!1857265 (= (and (= (_1!37137 lt!2477205) (_2!37137 lt!2477205)) (= (reg!17306 r2!6280) (reg!17306 r3!135)) (= r2!6280 r3!135)) (= lambda!396061 lambda!396049))))

(declare-fun bs!1857266 () Bool)

(assert (= bs!1857266 (and b!6945602 b!6945590)))

(assert (=> bs!1857266 (not (= lambda!396061 lambda!396059))))

(declare-fun bs!1857267 () Bool)

(assert (= bs!1857267 (and b!6945602 b!6945591)))

(assert (=> bs!1857267 (= (and (= (_1!37137 lt!2477205) (_1!37137 lt!2477213)) (= (reg!17306 r2!6280) (reg!17306 r1!6342)) (= r2!6280 r1!6342)) (= lambda!396061 lambda!396058))))

(assert (=> bs!1857258 (not (= lambda!396061 lambda!395992))))

(declare-fun bs!1857268 () Bool)

(assert (= bs!1857268 (and b!6945602 b!6945179)))

(assert (=> bs!1857268 (= (and (= (_1!37137 lt!2477205) (_2!37137 lt!2477213)) (= (reg!17306 r2!6280) (reg!17306 lt!2477208)) (= r2!6280 lt!2477208)) (= lambda!396061 lambda!396035))))

(declare-fun bs!1857269 () Bool)

(assert (= bs!1857269 (and b!6945602 b!6945543)))

(assert (=> bs!1857269 (= (and (= (_1!37137 lt!2477205) lt!2477209) (= (reg!17306 r2!6280) (reg!17306 lt!2477206)) (= r2!6280 lt!2477206)) (= lambda!396061 lambda!396052))))

(assert (=> bs!1857263 (not (= lambda!396061 lambda!396057))))

(declare-fun bs!1857270 () Bool)

(assert (= bs!1857270 (and b!6945602 b!6944848)))

(assert (=> bs!1857270 (not (= lambda!396061 lambda!395994))))

(assert (=> bs!1857258 (not (= lambda!396061 lambda!395986))))

(assert (=> b!6945602 true))

(assert (=> b!6945602 true))

(declare-fun bs!1857271 () Bool)

(declare-fun b!6945601 () Bool)

(assert (= bs!1857271 (and b!6945601 b!6945542)))

(declare-fun lambda!396062 () Int)

(assert (=> bs!1857271 (= (and (= (_1!37137 lt!2477205) lt!2477209) (= (regOne!34466 r2!6280) (regOne!34466 lt!2477206)) (= (regTwo!34466 r2!6280) (regTwo!34466 lt!2477206))) (= lambda!396062 lambda!396053))))

(declare-fun bs!1857272 () Bool)

(assert (= bs!1857272 (and b!6945601 d!2168450)))

(assert (=> bs!1857272 (= (and (= (_1!37137 lt!2477205) s!14361) (= (regOne!34466 r2!6280) r1!6342) (= (regTwo!34466 r2!6280) lt!2477208)) (= lambda!396062 lambda!396012))))

(declare-fun bs!1857273 () Bool)

(assert (= bs!1857273 (and b!6945601 d!2168570)))

(assert (=> bs!1857273 (not (= lambda!396062 lambda!396048))))

(declare-fun bs!1857274 () Bool)

(assert (= bs!1857274 (and b!6945601 b!6945401)))

(assert (=> bs!1857274 (= (and (= (_1!37137 lt!2477205) (_2!37137 lt!2477205)) (= (regOne!34466 r2!6280) (regOne!34466 r3!135)) (= (regTwo!34466 r2!6280) (regTwo!34466 r3!135))) (= lambda!396062 lambda!396050))))

(declare-fun bs!1857275 () Bool)

(assert (= bs!1857275 (and b!6945601 b!6945178)))

(assert (=> bs!1857275 (= (and (= (_1!37137 lt!2477205) (_2!37137 lt!2477213)) (= (regOne!34466 r2!6280) (regOne!34466 lt!2477208)) (= (regTwo!34466 r2!6280) (regTwo!34466 lt!2477208))) (= lambda!396062 lambda!396037))))

(declare-fun bs!1857276 () Bool)

(assert (= bs!1857276 (and b!6945601 b!6945602)))

(assert (=> bs!1857276 (not (= lambda!396062 lambda!396061))))

(declare-fun bs!1857277 () Bool)

(assert (= bs!1857277 (and b!6945601 d!2168560)))

(assert (=> bs!1857277 (= (and (= (_1!37137 lt!2477205) (_2!37137 lt!2477213)) (= (regOne!34466 r2!6280) r2!6280) (= (regTwo!34466 r2!6280) r3!135)) (= lambda!396062 lambda!396047))))

(declare-fun bs!1857278 () Bool)

(assert (= bs!1857278 (and b!6945601 b!6944864)))

(assert (=> bs!1857278 (= (and (= (_1!37137 lt!2477205) (_2!37137 lt!2477213)) (= (regOne!34466 r2!6280) r2!6280) (= (regTwo!34466 r2!6280) r3!135)) (= lambda!396062 lambda!395989))))

(assert (=> bs!1857278 (not (= lambda!396062 lambda!395988))))

(assert (=> bs!1857278 (= (and (= (_1!37137 lt!2477205) s!14361) (= (regOne!34466 r2!6280) r1!6342) (= (regTwo!34466 r2!6280) lt!2477208)) (= lambda!396062 lambda!395987))))

(declare-fun bs!1857279 () Bool)

(assert (= bs!1857279 (and b!6945601 d!2168478)))

(assert (=> bs!1857279 (not (= lambda!396062 lambda!396026))))

(declare-fun bs!1857280 () Bool)

(assert (= bs!1857280 (and b!6945601 d!2168622)))

(assert (=> bs!1857280 (= (and (= (_1!37137 lt!2477205) lt!2477209) (= (regOne!34466 r2!6280) r1!6342) (= (regTwo!34466 r2!6280) r2!6280)) (= lambda!396062 lambda!396055))))

(declare-fun bs!1857281 () Bool)

(assert (= bs!1857281 (and b!6945601 d!2168636)))

(assert (=> bs!1857281 (not (= lambda!396062 lambda!396060))))

(assert (=> bs!1857272 (not (= lambda!396062 lambda!396009))))

(declare-fun bs!1857282 () Bool)

(assert (= bs!1857282 (and b!6945601 d!2168582)))

(assert (=> bs!1857282 (not (= lambda!396062 lambda!396051))))

(assert (=> bs!1857278 (not (= lambda!396062 lambda!395990))))

(assert (=> bs!1857280 (not (= lambda!396062 lambda!396054))))

(assert (=> bs!1857277 (not (= lambda!396062 lambda!396046))))

(assert (=> bs!1857278 (= (and (= (_1!37137 lt!2477205) lt!2477209) (= (regOne!34466 r2!6280) r1!6342) (= (regTwo!34466 r2!6280) r2!6280)) (= lambda!396062 lambda!395991))))

(declare-fun bs!1857283 () Bool)

(assert (= bs!1857283 (and b!6945601 d!2168632)))

(assert (=> bs!1857283 (not (= lambda!396062 lambda!396056))))

(declare-fun bs!1857284 () Bool)

(assert (= bs!1857284 (and b!6945601 b!6944855)))

(assert (=> bs!1857284 (not (= lambda!396062 lambda!395993))))

(declare-fun bs!1857285 () Bool)

(assert (= bs!1857285 (and b!6945601 b!6945402)))

(assert (=> bs!1857285 (not (= lambda!396062 lambda!396049))))

(declare-fun bs!1857286 () Bool)

(assert (= bs!1857286 (and b!6945601 b!6945590)))

(assert (=> bs!1857286 (= (and (= (_1!37137 lt!2477205) (_1!37137 lt!2477213)) (= (regOne!34466 r2!6280) (regOne!34466 r1!6342)) (= (regTwo!34466 r2!6280) (regTwo!34466 r1!6342))) (= lambda!396062 lambda!396059))))

(declare-fun bs!1857287 () Bool)

(assert (= bs!1857287 (and b!6945601 b!6945591)))

(assert (=> bs!1857287 (not (= lambda!396062 lambda!396058))))

(assert (=> bs!1857278 (not (= lambda!396062 lambda!395992))))

(declare-fun bs!1857288 () Bool)

(assert (= bs!1857288 (and b!6945601 b!6945179)))

(assert (=> bs!1857288 (not (= lambda!396062 lambda!396035))))

(declare-fun bs!1857289 () Bool)

(assert (= bs!1857289 (and b!6945601 b!6945543)))

(assert (=> bs!1857289 (not (= lambda!396062 lambda!396052))))

(assert (=> bs!1857283 (= (and (= (_1!37137 lt!2477205) s!14361) (= (regOne!34466 r2!6280) lt!2477206) (= (regTwo!34466 r2!6280) r3!135)) (= lambda!396062 lambda!396057))))

(declare-fun bs!1857290 () Bool)

(assert (= bs!1857290 (and b!6945601 b!6944848)))

(assert (=> bs!1857290 (= (and (= (_1!37137 lt!2477205) s!14361) (= (regOne!34466 r2!6280) r1!6342) (= (regTwo!34466 r2!6280) lt!2477208)) (= lambda!396062 lambda!395994))))

(assert (=> bs!1857278 (not (= lambda!396062 lambda!395986))))

(assert (=> b!6945601 true))

(assert (=> b!6945601 true))

(declare-fun b!6945594 () Bool)

(declare-fun e!4177835 () Bool)

(assert (=> b!6945594 (= e!4177835 (= (_1!37137 lt!2477205) (Cons!66606 (c!1288489 r2!6280) Nil!66606)))))

(declare-fun b!6945595 () Bool)

(declare-fun res!2833481 () Bool)

(declare-fun e!4177831 () Bool)

(assert (=> b!6945595 (=> res!2833481 e!4177831)))

(declare-fun call!630908 () Bool)

(assert (=> b!6945595 (= res!2833481 call!630908)))

(declare-fun e!4177833 () Bool)

(assert (=> b!6945595 (= e!4177833 e!4177831)))

(declare-fun b!6945596 () Bool)

(declare-fun c!1288650 () Bool)

(assert (=> b!6945596 (= c!1288650 ((_ is Union!16977) r2!6280))))

(declare-fun e!4177829 () Bool)

(assert (=> b!6945596 (= e!4177835 e!4177829)))

(declare-fun b!6945597 () Bool)

(declare-fun e!4177834 () Bool)

(declare-fun e!4177830 () Bool)

(assert (=> b!6945597 (= e!4177834 e!4177830)))

(declare-fun res!2833482 () Bool)

(assert (=> b!6945597 (= res!2833482 (not ((_ is EmptyLang!16977) r2!6280)))))

(assert (=> b!6945597 (=> (not res!2833482) (not e!4177830))))

(declare-fun bm!630903 () Bool)

(assert (=> bm!630903 (= call!630908 (isEmpty!38882 (_1!37137 lt!2477205)))))

(declare-fun b!6945598 () Bool)

(declare-fun e!4177832 () Bool)

(assert (=> b!6945598 (= e!4177832 (matchRSpec!4034 (regTwo!34467 r2!6280) (_1!37137 lt!2477205)))))

(declare-fun b!6945599 () Bool)

(assert (=> b!6945599 (= e!4177834 call!630908)))

(declare-fun b!6945600 () Bool)

(assert (=> b!6945600 (= e!4177829 e!4177833)))

(declare-fun c!1288647 () Bool)

(assert (=> b!6945600 (= c!1288647 ((_ is Star!16977) r2!6280))))

(declare-fun call!630909 () Bool)

(assert (=> b!6945601 (= e!4177833 call!630909)))

(declare-fun d!2168638 () Bool)

(declare-fun c!1288648 () Bool)

(assert (=> d!2168638 (= c!1288648 ((_ is EmptyExpr!16977) r2!6280))))

(assert (=> d!2168638 (= (matchRSpec!4034 r2!6280 (_1!37137 lt!2477205)) e!4177834)))

(assert (=> b!6945602 (= e!4177831 call!630909)))

(declare-fun b!6945603 () Bool)

(assert (=> b!6945603 (= e!4177829 e!4177832)))

(declare-fun res!2833480 () Bool)

(assert (=> b!6945603 (= res!2833480 (matchRSpec!4034 (regOne!34467 r2!6280) (_1!37137 lt!2477205)))))

(assert (=> b!6945603 (=> res!2833480 e!4177832)))

(declare-fun b!6945604 () Bool)

(declare-fun c!1288649 () Bool)

(assert (=> b!6945604 (= c!1288649 ((_ is ElementMatch!16977) r2!6280))))

(assert (=> b!6945604 (= e!4177830 e!4177835)))

(declare-fun bm!630904 () Bool)

(assert (=> bm!630904 (= call!630909 (Exists!3977 (ite c!1288647 lambda!396061 lambda!396062)))))

(assert (= (and d!2168638 c!1288648) b!6945599))

(assert (= (and d!2168638 (not c!1288648)) b!6945597))

(assert (= (and b!6945597 res!2833482) b!6945604))

(assert (= (and b!6945604 c!1288649) b!6945594))

(assert (= (and b!6945604 (not c!1288649)) b!6945596))

(assert (= (and b!6945596 c!1288650) b!6945603))

(assert (= (and b!6945596 (not c!1288650)) b!6945600))

(assert (= (and b!6945603 (not res!2833480)) b!6945598))

(assert (= (and b!6945600 c!1288647) b!6945595))

(assert (= (and b!6945600 (not c!1288647)) b!6945601))

(assert (= (and b!6945595 (not res!2833481)) b!6945602))

(assert (= (or b!6945602 b!6945601) bm!630904))

(assert (= (or b!6945599 b!6945595) bm!630903))

(declare-fun m!7650194 () Bool)

(assert (=> bm!630903 m!7650194))

(declare-fun m!7650196 () Bool)

(assert (=> b!6945598 m!7650196))

(declare-fun m!7650198 () Bool)

(assert (=> b!6945603 m!7650198))

(declare-fun m!7650200 () Bool)

(assert (=> bm!630904 m!7650200))

(assert (=> b!6944864 d!2168638))

(declare-fun b!6945605 () Bool)

(declare-fun res!2833485 () Bool)

(declare-fun e!4177842 () Bool)

(assert (=> b!6945605 (=> res!2833485 e!4177842)))

(declare-fun e!4177840 () Bool)

(assert (=> b!6945605 (= res!2833485 e!4177840)))

(declare-fun res!2833483 () Bool)

(assert (=> b!6945605 (=> (not res!2833483) (not e!4177840))))

(declare-fun lt!2477328 () Bool)

(assert (=> b!6945605 (= res!2833483 lt!2477328)))

(declare-fun b!6945607 () Bool)

(assert (=> b!6945607 (= e!4177840 (= (head!13918 (_1!37137 lt!2477205)) (c!1288489 r2!6280)))))

(declare-fun b!6945608 () Bool)

(declare-fun e!4177837 () Bool)

(assert (=> b!6945608 (= e!4177837 (matchR!9116 (derivativeStep!5465 r2!6280 (head!13918 (_1!37137 lt!2477205))) (tail!12970 (_1!37137 lt!2477205))))))

(declare-fun b!6945609 () Bool)

(declare-fun res!2833486 () Bool)

(assert (=> b!6945609 (=> (not res!2833486) (not e!4177840))))

(assert (=> b!6945609 (= res!2833486 (isEmpty!38882 (tail!12970 (_1!37137 lt!2477205))))))

(declare-fun b!6945610 () Bool)

(declare-fun res!2833484 () Bool)

(assert (=> b!6945610 (=> (not res!2833484) (not e!4177840))))

(declare-fun call!630910 () Bool)

(assert (=> b!6945610 (= res!2833484 (not call!630910))))

(declare-fun b!6945611 () Bool)

(declare-fun res!2833488 () Bool)

(assert (=> b!6945611 (=> res!2833488 e!4177842)))

(assert (=> b!6945611 (= res!2833488 (not ((_ is ElementMatch!16977) r2!6280)))))

(declare-fun e!4177841 () Bool)

(assert (=> b!6945611 (= e!4177841 e!4177842)))

(declare-fun b!6945612 () Bool)

(declare-fun e!4177838 () Bool)

(declare-fun e!4177836 () Bool)

(assert (=> b!6945612 (= e!4177838 e!4177836)))

(declare-fun res!2833489 () Bool)

(assert (=> b!6945612 (=> res!2833489 e!4177836)))

(assert (=> b!6945612 (= res!2833489 call!630910)))

(declare-fun b!6945613 () Bool)

(declare-fun e!4177839 () Bool)

(assert (=> b!6945613 (= e!4177839 e!4177841)))

(declare-fun c!1288651 () Bool)

(assert (=> b!6945613 (= c!1288651 ((_ is EmptyLang!16977) r2!6280))))

(declare-fun d!2168640 () Bool)

(assert (=> d!2168640 e!4177839))

(declare-fun c!1288652 () Bool)

(assert (=> d!2168640 (= c!1288652 ((_ is EmptyExpr!16977) r2!6280))))

(assert (=> d!2168640 (= lt!2477328 e!4177837)))

(declare-fun c!1288653 () Bool)

(assert (=> d!2168640 (= c!1288653 (isEmpty!38882 (_1!37137 lt!2477205)))))

(assert (=> d!2168640 (validRegex!8683 r2!6280)))

(assert (=> d!2168640 (= (matchR!9116 r2!6280 (_1!37137 lt!2477205)) lt!2477328)))

(declare-fun b!6945606 () Bool)

(assert (=> b!6945606 (= e!4177837 (nullable!6790 r2!6280))))

(declare-fun bm!630905 () Bool)

(assert (=> bm!630905 (= call!630910 (isEmpty!38882 (_1!37137 lt!2477205)))))

(declare-fun b!6945614 () Bool)

(assert (=> b!6945614 (= e!4177839 (= lt!2477328 call!630910))))

(declare-fun b!6945615 () Bool)

(assert (=> b!6945615 (= e!4177841 (not lt!2477328))))

(declare-fun b!6945616 () Bool)

(assert (=> b!6945616 (= e!4177842 e!4177838)))

(declare-fun res!2833487 () Bool)

(assert (=> b!6945616 (=> (not res!2833487) (not e!4177838))))

(assert (=> b!6945616 (= res!2833487 (not lt!2477328))))

(declare-fun b!6945617 () Bool)

(declare-fun res!2833490 () Bool)

(assert (=> b!6945617 (=> res!2833490 e!4177836)))

(assert (=> b!6945617 (= res!2833490 (not (isEmpty!38882 (tail!12970 (_1!37137 lt!2477205)))))))

(declare-fun b!6945618 () Bool)

(assert (=> b!6945618 (= e!4177836 (not (= (head!13918 (_1!37137 lt!2477205)) (c!1288489 r2!6280))))))

(assert (= (and d!2168640 c!1288653) b!6945606))

(assert (= (and d!2168640 (not c!1288653)) b!6945608))

(assert (= (and d!2168640 c!1288652) b!6945614))

(assert (= (and d!2168640 (not c!1288652)) b!6945613))

(assert (= (and b!6945613 c!1288651) b!6945615))

(assert (= (and b!6945613 (not c!1288651)) b!6945611))

(assert (= (and b!6945611 (not res!2833488)) b!6945605))

(assert (= (and b!6945605 res!2833483) b!6945610))

(assert (= (and b!6945610 res!2833484) b!6945609))

(assert (= (and b!6945609 res!2833486) b!6945607))

(assert (= (and b!6945605 (not res!2833485)) b!6945616))

(assert (= (and b!6945616 res!2833487) b!6945612))

(assert (= (and b!6945612 (not res!2833489)) b!6945617))

(assert (= (and b!6945617 (not res!2833490)) b!6945618))

(assert (= (or b!6945614 b!6945610 b!6945612) bm!630905))

(assert (=> bm!630905 m!7650194))

(declare-fun m!7650202 () Bool)

(assert (=> b!6945606 m!7650202))

(declare-fun m!7650204 () Bool)

(assert (=> b!6945608 m!7650204))

(assert (=> b!6945608 m!7650204))

(declare-fun m!7650206 () Bool)

(assert (=> b!6945608 m!7650206))

(declare-fun m!7650208 () Bool)

(assert (=> b!6945608 m!7650208))

(assert (=> b!6945608 m!7650206))

(assert (=> b!6945608 m!7650208))

(declare-fun m!7650210 () Bool)

(assert (=> b!6945608 m!7650210))

(assert (=> d!2168640 m!7650194))

(assert (=> d!2168640 m!7649526))

(assert (=> b!6945617 m!7650208))

(assert (=> b!6945617 m!7650208))

(declare-fun m!7650212 () Bool)

(assert (=> b!6945617 m!7650212))

(assert (=> b!6945607 m!7650204))

(assert (=> b!6945609 m!7650208))

(assert (=> b!6945609 m!7650208))

(assert (=> b!6945609 m!7650212))

(assert (=> b!6945618 m!7650204))

(assert (=> b!6944864 d!2168640))

(declare-fun b!6945619 () Bool)

(declare-fun e!4177846 () Bool)

(declare-fun e!4177843 () Bool)

(assert (=> b!6945619 (= e!4177846 e!4177843)))

(declare-fun c!1288654 () Bool)

(assert (=> b!6945619 (= c!1288654 ((_ is Union!16977) r2!6280))))

(declare-fun bm!630906 () Bool)

(declare-fun call!630911 () Bool)

(declare-fun c!1288655 () Bool)

(assert (=> bm!630906 (= call!630911 (validRegex!8683 (ite c!1288655 (reg!17306 r2!6280) (ite c!1288654 (regTwo!34467 r2!6280) (regOne!34466 r2!6280)))))))

(declare-fun b!6945620 () Bool)

(declare-fun e!4177844 () Bool)

(assert (=> b!6945620 (= e!4177844 call!630911)))

(declare-fun bm!630907 () Bool)

(declare-fun call!630912 () Bool)

(assert (=> bm!630907 (= call!630912 call!630911)))

(declare-fun bm!630908 () Bool)

(declare-fun call!630913 () Bool)

(assert (=> bm!630908 (= call!630913 (validRegex!8683 (ite c!1288654 (regOne!34467 r2!6280) (regTwo!34466 r2!6280))))))

(declare-fun b!6945621 () Bool)

(declare-fun e!4177845 () Bool)

(declare-fun e!4177847 () Bool)

(assert (=> b!6945621 (= e!4177845 e!4177847)))

(declare-fun res!2833494 () Bool)

(assert (=> b!6945621 (=> (not res!2833494) (not e!4177847))))

(assert (=> b!6945621 (= res!2833494 call!630912)))

(declare-fun b!6945623 () Bool)

(declare-fun e!4177848 () Bool)

(assert (=> b!6945623 (= e!4177848 call!630912)))

(declare-fun b!6945624 () Bool)

(assert (=> b!6945624 (= e!4177846 e!4177844)))

(declare-fun res!2833491 () Bool)

(assert (=> b!6945624 (= res!2833491 (not (nullable!6790 (reg!17306 r2!6280))))))

(assert (=> b!6945624 (=> (not res!2833491) (not e!4177844))))

(declare-fun b!6945625 () Bool)

(assert (=> b!6945625 (= e!4177847 call!630913)))

(declare-fun d!2168642 () Bool)

(declare-fun res!2833493 () Bool)

(declare-fun e!4177849 () Bool)

(assert (=> d!2168642 (=> res!2833493 e!4177849)))

(assert (=> d!2168642 (= res!2833493 ((_ is ElementMatch!16977) r2!6280))))

(assert (=> d!2168642 (= (validRegex!8683 r2!6280) e!4177849)))

(declare-fun b!6945622 () Bool)

(declare-fun res!2833495 () Bool)

(assert (=> b!6945622 (=> res!2833495 e!4177845)))

(assert (=> b!6945622 (= res!2833495 (not ((_ is Concat!25822) r2!6280)))))

(assert (=> b!6945622 (= e!4177843 e!4177845)))

(declare-fun b!6945626 () Bool)

(declare-fun res!2833492 () Bool)

(assert (=> b!6945626 (=> (not res!2833492) (not e!4177848))))

(assert (=> b!6945626 (= res!2833492 call!630913)))

(assert (=> b!6945626 (= e!4177843 e!4177848)))

(declare-fun b!6945627 () Bool)

(assert (=> b!6945627 (= e!4177849 e!4177846)))

(assert (=> b!6945627 (= c!1288655 ((_ is Star!16977) r2!6280))))

(assert (= (and d!2168642 (not res!2833493)) b!6945627))

(assert (= (and b!6945627 c!1288655) b!6945624))

(assert (= (and b!6945627 (not c!1288655)) b!6945619))

(assert (= (and b!6945624 res!2833491) b!6945620))

(assert (= (and b!6945619 c!1288654) b!6945626))

(assert (= (and b!6945619 (not c!1288654)) b!6945622))

(assert (= (and b!6945626 res!2833492) b!6945623))

(assert (= (and b!6945622 (not res!2833495)) b!6945621))

(assert (= (and b!6945621 res!2833494) b!6945625))

(assert (= (or b!6945626 b!6945625) bm!630908))

(assert (= (or b!6945623 b!6945621) bm!630907))

(assert (= (or b!6945620 bm!630907) bm!630906))

(declare-fun m!7650214 () Bool)

(assert (=> bm!630906 m!7650214))

(declare-fun m!7650216 () Bool)

(assert (=> bm!630908 m!7650216))

(declare-fun m!7650218 () Bool)

(assert (=> b!6945624 m!7650218))

(assert (=> b!6944865 d!2168642))

(assert (=> b!6944855 d!2168444))

(declare-fun b!6945628 () Bool)

(declare-fun e!4177852 () Bool)

(declare-fun lt!2477330 () Option!16746)

(assert (=> b!6945628 (= e!4177852 (= (++!15016 (_1!37137 (get!23402 lt!2477330)) (_2!37137 (get!23402 lt!2477330))) s!14361))))

(declare-fun b!6945629 () Bool)

(declare-fun res!2833498 () Bool)

(assert (=> b!6945629 (=> (not res!2833498) (not e!4177852))))

(assert (=> b!6945629 (= res!2833498 (matchR!9116 lt!2477208 (_2!37137 (get!23402 lt!2477330))))))

(declare-fun b!6945630 () Bool)

(declare-fun e!4177850 () Option!16746)

(assert (=> b!6945630 (= e!4177850 None!16745)))

(declare-fun b!6945631 () Bool)

(declare-fun e!4177851 () Bool)

(assert (=> b!6945631 (= e!4177851 (not (isDefined!13447 lt!2477330)))))

(declare-fun d!2168644 () Bool)

(assert (=> d!2168644 e!4177851))

(declare-fun res!2833496 () Bool)

(assert (=> d!2168644 (=> res!2833496 e!4177851)))

(assert (=> d!2168644 (= res!2833496 e!4177852)))

(declare-fun res!2833500 () Bool)

(assert (=> d!2168644 (=> (not res!2833500) (not e!4177852))))

(assert (=> d!2168644 (= res!2833500 (isDefined!13447 lt!2477330))))

(declare-fun e!4177854 () Option!16746)

(assert (=> d!2168644 (= lt!2477330 e!4177854)))

(declare-fun c!1288657 () Bool)

(declare-fun e!4177853 () Bool)

(assert (=> d!2168644 (= c!1288657 e!4177853)))

(declare-fun res!2833499 () Bool)

(assert (=> d!2168644 (=> (not res!2833499) (not e!4177853))))

(assert (=> d!2168644 (= res!2833499 (matchR!9116 r1!6342 Nil!66606))))

(assert (=> d!2168644 (validRegex!8683 r1!6342)))

(assert (=> d!2168644 (= (findConcatSeparation!3160 r1!6342 lt!2477208 Nil!66606 s!14361 s!14361) lt!2477330)))

(declare-fun b!6945632 () Bool)

(declare-fun lt!2477331 () Unit!160696)

(declare-fun lt!2477329 () Unit!160696)

(assert (=> b!6945632 (= lt!2477331 lt!2477329)))

(assert (=> b!6945632 (= (++!15016 (++!15016 Nil!66606 (Cons!66606 (h!73054 s!14361) Nil!66606)) (t!380473 s!14361)) s!14361)))

(assert (=> b!6945632 (= lt!2477329 (lemmaMoveElementToOtherListKeepsConcatEq!2868 Nil!66606 (h!73054 s!14361) (t!380473 s!14361) s!14361))))

(assert (=> b!6945632 (= e!4177850 (findConcatSeparation!3160 r1!6342 lt!2477208 (++!15016 Nil!66606 (Cons!66606 (h!73054 s!14361) Nil!66606)) (t!380473 s!14361) s!14361))))

(declare-fun b!6945633 () Bool)

(assert (=> b!6945633 (= e!4177853 (matchR!9116 lt!2477208 s!14361))))

(declare-fun b!6945634 () Bool)

(assert (=> b!6945634 (= e!4177854 (Some!16745 (tuple2!67669 Nil!66606 s!14361)))))

(declare-fun b!6945635 () Bool)

(declare-fun res!2833497 () Bool)

(assert (=> b!6945635 (=> (not res!2833497) (not e!4177852))))

(assert (=> b!6945635 (= res!2833497 (matchR!9116 r1!6342 (_1!37137 (get!23402 lt!2477330))))))

(declare-fun b!6945636 () Bool)

(assert (=> b!6945636 (= e!4177854 e!4177850)))

(declare-fun c!1288656 () Bool)

(assert (=> b!6945636 (= c!1288656 ((_ is Nil!66606) s!14361))))

(assert (= (and d!2168644 res!2833499) b!6945633))

(assert (= (and d!2168644 c!1288657) b!6945634))

(assert (= (and d!2168644 (not c!1288657)) b!6945636))

(assert (= (and b!6945636 c!1288656) b!6945630))

(assert (= (and b!6945636 (not c!1288656)) b!6945632))

(assert (= (and d!2168644 res!2833500) b!6945635))

(assert (= (and b!6945635 res!2833497) b!6945629))

(assert (= (and b!6945629 res!2833498) b!6945628))

(assert (= (and d!2168644 (not res!2833496)) b!6945631))

(declare-fun m!7650220 () Bool)

(assert (=> b!6945635 m!7650220))

(declare-fun m!7650222 () Bool)

(assert (=> b!6945635 m!7650222))

(declare-fun m!7650224 () Bool)

(assert (=> d!2168644 m!7650224))

(assert (=> d!2168644 m!7650158))

(assert (=> d!2168644 m!7649530))

(assert (=> b!6945632 m!7649928))

(assert (=> b!6945632 m!7649928))

(assert (=> b!6945632 m!7649930))

(assert (=> b!6945632 m!7649932))

(assert (=> b!6945632 m!7649928))

(declare-fun m!7650226 () Bool)

(assert (=> b!6945632 m!7650226))

(assert (=> b!6945629 m!7650220))

(declare-fun m!7650228 () Bool)

(assert (=> b!6945629 m!7650228))

(assert (=> b!6945628 m!7650220))

(declare-fun m!7650230 () Bool)

(assert (=> b!6945628 m!7650230))

(declare-fun m!7650232 () Bool)

(assert (=> b!6945633 m!7650232))

(assert (=> b!6945631 m!7650224))

(assert (=> b!6944855 d!2168644))

(declare-fun b!6945637 () Bool)

(declare-fun e!4177858 () Bool)

(declare-fun e!4177855 () Bool)

(assert (=> b!6945637 (= e!4177858 e!4177855)))

(declare-fun c!1288658 () Bool)

(assert (=> b!6945637 (= c!1288658 ((_ is Union!16977) lt!2477208))))

(declare-fun bm!630909 () Bool)

(declare-fun call!630914 () Bool)

(declare-fun c!1288659 () Bool)

(assert (=> bm!630909 (= call!630914 (validRegex!8683 (ite c!1288659 (reg!17306 lt!2477208) (ite c!1288658 (regTwo!34467 lt!2477208) (regOne!34466 lt!2477208)))))))

(declare-fun b!6945638 () Bool)

(declare-fun e!4177856 () Bool)

(assert (=> b!6945638 (= e!4177856 call!630914)))

(declare-fun bm!630910 () Bool)

(declare-fun call!630915 () Bool)

(assert (=> bm!630910 (= call!630915 call!630914)))

(declare-fun bm!630911 () Bool)

(declare-fun call!630916 () Bool)

(assert (=> bm!630911 (= call!630916 (validRegex!8683 (ite c!1288658 (regOne!34467 lt!2477208) (regTwo!34466 lt!2477208))))))

(declare-fun b!6945639 () Bool)

(declare-fun e!4177857 () Bool)

(declare-fun e!4177859 () Bool)

(assert (=> b!6945639 (= e!4177857 e!4177859)))

(declare-fun res!2833504 () Bool)

(assert (=> b!6945639 (=> (not res!2833504) (not e!4177859))))

(assert (=> b!6945639 (= res!2833504 call!630915)))

(declare-fun b!6945641 () Bool)

(declare-fun e!4177860 () Bool)

(assert (=> b!6945641 (= e!4177860 call!630915)))

(declare-fun b!6945642 () Bool)

(assert (=> b!6945642 (= e!4177858 e!4177856)))

(declare-fun res!2833501 () Bool)

(assert (=> b!6945642 (= res!2833501 (not (nullable!6790 (reg!17306 lt!2477208))))))

(assert (=> b!6945642 (=> (not res!2833501) (not e!4177856))))

(declare-fun b!6945643 () Bool)

(assert (=> b!6945643 (= e!4177859 call!630916)))

(declare-fun d!2168646 () Bool)

(declare-fun res!2833503 () Bool)

(declare-fun e!4177861 () Bool)

(assert (=> d!2168646 (=> res!2833503 e!4177861)))

(assert (=> d!2168646 (= res!2833503 ((_ is ElementMatch!16977) lt!2477208))))

(assert (=> d!2168646 (= (validRegex!8683 lt!2477208) e!4177861)))

(declare-fun b!6945640 () Bool)

(declare-fun res!2833505 () Bool)

(assert (=> b!6945640 (=> res!2833505 e!4177857)))

(assert (=> b!6945640 (= res!2833505 (not ((_ is Concat!25822) lt!2477208)))))

(assert (=> b!6945640 (= e!4177855 e!4177857)))

(declare-fun b!6945644 () Bool)

(declare-fun res!2833502 () Bool)

(assert (=> b!6945644 (=> (not res!2833502) (not e!4177860))))

(assert (=> b!6945644 (= res!2833502 call!630916)))

(assert (=> b!6945644 (= e!4177855 e!4177860)))

(declare-fun b!6945645 () Bool)

(assert (=> b!6945645 (= e!4177861 e!4177858)))

(assert (=> b!6945645 (= c!1288659 ((_ is Star!16977) lt!2477208))))

(assert (= (and d!2168646 (not res!2833503)) b!6945645))

(assert (= (and b!6945645 c!1288659) b!6945642))

(assert (= (and b!6945645 (not c!1288659)) b!6945637))

(assert (= (and b!6945642 res!2833501) b!6945638))

(assert (= (and b!6945637 c!1288658) b!6945644))

(assert (= (and b!6945637 (not c!1288658)) b!6945640))

(assert (= (and b!6945644 res!2833502) b!6945641))

(assert (= (and b!6945640 (not res!2833505)) b!6945639))

(assert (= (and b!6945639 res!2833504) b!6945643))

(assert (= (or b!6945644 b!6945643) bm!630911))

(assert (= (or b!6945641 b!6945639) bm!630910))

(assert (= (or b!6945638 bm!630910) bm!630909))

(declare-fun m!7650234 () Bool)

(assert (=> bm!630909 m!7650234))

(declare-fun m!7650236 () Bool)

(assert (=> bm!630911 m!7650236))

(declare-fun m!7650238 () Bool)

(assert (=> b!6945642 m!7650238))

(assert (=> b!6944855 d!2168646))

(declare-fun d!2168648 () Bool)

(assert (=> d!2168648 (= (isDefined!13447 lt!2477185) (not (isEmpty!38883 lt!2477185)))))

(declare-fun bs!1857291 () Bool)

(assert (= bs!1857291 d!2168648))

(declare-fun m!7650240 () Bool)

(assert (=> bs!1857291 m!7650240))

(assert (=> b!6944855 d!2168648))

(assert (=> b!6944855 d!2168636))

(declare-fun b!6945646 () Bool)

(declare-fun e!4177865 () Bool)

(declare-fun e!4177862 () Bool)

(assert (=> b!6945646 (= e!4177865 e!4177862)))

(declare-fun c!1288660 () Bool)

(assert (=> b!6945646 (= c!1288660 ((_ is Union!16977) r1!6342))))

(declare-fun call!630917 () Bool)

(declare-fun bm!630912 () Bool)

(declare-fun c!1288661 () Bool)

(assert (=> bm!630912 (= call!630917 (validRegex!8683 (ite c!1288661 (reg!17306 r1!6342) (ite c!1288660 (regTwo!34467 r1!6342) (regOne!34466 r1!6342)))))))

(declare-fun b!6945647 () Bool)

(declare-fun e!4177863 () Bool)

(assert (=> b!6945647 (= e!4177863 call!630917)))

(declare-fun bm!630913 () Bool)

(declare-fun call!630918 () Bool)

(assert (=> bm!630913 (= call!630918 call!630917)))

(declare-fun bm!630914 () Bool)

(declare-fun call!630919 () Bool)

(assert (=> bm!630914 (= call!630919 (validRegex!8683 (ite c!1288660 (regOne!34467 r1!6342) (regTwo!34466 r1!6342))))))

(declare-fun b!6945648 () Bool)

(declare-fun e!4177864 () Bool)

(declare-fun e!4177866 () Bool)

(assert (=> b!6945648 (= e!4177864 e!4177866)))

(declare-fun res!2833509 () Bool)

(assert (=> b!6945648 (=> (not res!2833509) (not e!4177866))))

(assert (=> b!6945648 (= res!2833509 call!630918)))

(declare-fun b!6945650 () Bool)

(declare-fun e!4177867 () Bool)

(assert (=> b!6945650 (= e!4177867 call!630918)))

(declare-fun b!6945651 () Bool)

(assert (=> b!6945651 (= e!4177865 e!4177863)))

(declare-fun res!2833506 () Bool)

(assert (=> b!6945651 (= res!2833506 (not (nullable!6790 (reg!17306 r1!6342))))))

(assert (=> b!6945651 (=> (not res!2833506) (not e!4177863))))

(declare-fun b!6945652 () Bool)

(assert (=> b!6945652 (= e!4177866 call!630919)))

(declare-fun d!2168650 () Bool)

(declare-fun res!2833508 () Bool)

(declare-fun e!4177868 () Bool)

(assert (=> d!2168650 (=> res!2833508 e!4177868)))

(assert (=> d!2168650 (= res!2833508 ((_ is ElementMatch!16977) r1!6342))))

(assert (=> d!2168650 (= (validRegex!8683 r1!6342) e!4177868)))

(declare-fun b!6945649 () Bool)

(declare-fun res!2833510 () Bool)

(assert (=> b!6945649 (=> res!2833510 e!4177864)))

(assert (=> b!6945649 (= res!2833510 (not ((_ is Concat!25822) r1!6342)))))

(assert (=> b!6945649 (= e!4177862 e!4177864)))

(declare-fun b!6945653 () Bool)

(declare-fun res!2833507 () Bool)

(assert (=> b!6945653 (=> (not res!2833507) (not e!4177867))))

(assert (=> b!6945653 (= res!2833507 call!630919)))

(assert (=> b!6945653 (= e!4177862 e!4177867)))

(declare-fun b!6945654 () Bool)

(assert (=> b!6945654 (= e!4177868 e!4177865)))

(assert (=> b!6945654 (= c!1288661 ((_ is Star!16977) r1!6342))))

(assert (= (and d!2168650 (not res!2833508)) b!6945654))

(assert (= (and b!6945654 c!1288661) b!6945651))

(assert (= (and b!6945654 (not c!1288661)) b!6945646))

(assert (= (and b!6945651 res!2833506) b!6945647))

(assert (= (and b!6945646 c!1288660) b!6945653))

(assert (= (and b!6945646 (not c!1288660)) b!6945649))

(assert (= (and b!6945653 res!2833507) b!6945650))

(assert (= (and b!6945649 (not res!2833510)) b!6945648))

(assert (= (and b!6945648 res!2833509) b!6945652))

(assert (= (or b!6945653 b!6945652) bm!630914))

(assert (= (or b!6945650 b!6945648) bm!630913))

(assert (= (or b!6945647 bm!630913) bm!630912))

(declare-fun m!7650242 () Bool)

(assert (=> bm!630912 m!7650242))

(declare-fun m!7650244 () Bool)

(assert (=> bm!630914 m!7650244))

(declare-fun m!7650246 () Bool)

(assert (=> b!6945651 m!7650246))

(assert (=> start!666758 d!2168650))

(declare-fun bs!1857292 () Bool)

(declare-fun b!6945663 () Bool)

(assert (= bs!1857292 (and b!6945663 b!6945542)))

(declare-fun lambda!396063 () Int)

(assert (=> bs!1857292 (not (= lambda!396063 lambda!396053))))

(declare-fun bs!1857293 () Bool)

(assert (= bs!1857293 (and b!6945663 d!2168450)))

(assert (=> bs!1857293 (not (= lambda!396063 lambda!396012))))

(declare-fun bs!1857294 () Bool)

(assert (= bs!1857294 (and b!6945663 d!2168570)))

(assert (=> bs!1857294 (not (= lambda!396063 lambda!396048))))

(declare-fun bs!1857295 () Bool)

(assert (= bs!1857295 (and b!6945663 b!6945401)))

(assert (=> bs!1857295 (not (= lambda!396063 lambda!396050))))

(declare-fun bs!1857296 () Bool)

(assert (= bs!1857296 (and b!6945663 b!6945178)))

(assert (=> bs!1857296 (not (= lambda!396063 lambda!396037))))

(declare-fun bs!1857297 () Bool)

(assert (= bs!1857297 (and b!6945663 b!6945602)))

(assert (=> bs!1857297 (= (and (= s!14361 (_1!37137 lt!2477205)) (= (reg!17306 lt!2477183) (reg!17306 r2!6280)) (= lt!2477183 r2!6280)) (= lambda!396063 lambda!396061))))

(declare-fun bs!1857298 () Bool)

(assert (= bs!1857298 (and b!6945663 d!2168560)))

(assert (=> bs!1857298 (not (= lambda!396063 lambda!396047))))

(declare-fun bs!1857299 () Bool)

(assert (= bs!1857299 (and b!6945663 b!6944864)))

(assert (=> bs!1857299 (not (= lambda!396063 lambda!395989))))

(assert (=> bs!1857299 (not (= lambda!396063 lambda!395988))))

(assert (=> bs!1857299 (not (= lambda!396063 lambda!395987))))

(declare-fun bs!1857300 () Bool)

(assert (= bs!1857300 (and b!6945663 d!2168478)))

(assert (=> bs!1857300 (not (= lambda!396063 lambda!396026))))

(declare-fun bs!1857301 () Bool)

(assert (= bs!1857301 (and b!6945663 b!6945601)))

(assert (=> bs!1857301 (not (= lambda!396063 lambda!396062))))

(declare-fun bs!1857302 () Bool)

(assert (= bs!1857302 (and b!6945663 d!2168622)))

(assert (=> bs!1857302 (not (= lambda!396063 lambda!396055))))

(declare-fun bs!1857303 () Bool)

(assert (= bs!1857303 (and b!6945663 d!2168636)))

(assert (=> bs!1857303 (not (= lambda!396063 lambda!396060))))

(assert (=> bs!1857293 (not (= lambda!396063 lambda!396009))))

(declare-fun bs!1857304 () Bool)

(assert (= bs!1857304 (and b!6945663 d!2168582)))

(assert (=> bs!1857304 (not (= lambda!396063 lambda!396051))))

(assert (=> bs!1857299 (not (= lambda!396063 lambda!395990))))

(assert (=> bs!1857302 (not (= lambda!396063 lambda!396054))))

(assert (=> bs!1857298 (not (= lambda!396063 lambda!396046))))

(assert (=> bs!1857299 (not (= lambda!396063 lambda!395991))))

(declare-fun bs!1857305 () Bool)

(assert (= bs!1857305 (and b!6945663 d!2168632)))

(assert (=> bs!1857305 (not (= lambda!396063 lambda!396056))))

(declare-fun bs!1857306 () Bool)

(assert (= bs!1857306 (and b!6945663 b!6944855)))

(assert (=> bs!1857306 (not (= lambda!396063 lambda!395993))))

(declare-fun bs!1857307 () Bool)

(assert (= bs!1857307 (and b!6945663 b!6945402)))

(assert (=> bs!1857307 (= (and (= s!14361 (_2!37137 lt!2477205)) (= (reg!17306 lt!2477183) (reg!17306 r3!135)) (= lt!2477183 r3!135)) (= lambda!396063 lambda!396049))))

(declare-fun bs!1857308 () Bool)

(assert (= bs!1857308 (and b!6945663 b!6945590)))

(assert (=> bs!1857308 (not (= lambda!396063 lambda!396059))))

(declare-fun bs!1857309 () Bool)

(assert (= bs!1857309 (and b!6945663 b!6945591)))

(assert (=> bs!1857309 (= (and (= s!14361 (_1!37137 lt!2477213)) (= (reg!17306 lt!2477183) (reg!17306 r1!6342)) (= lt!2477183 r1!6342)) (= lambda!396063 lambda!396058))))

(assert (=> bs!1857299 (not (= lambda!396063 lambda!395992))))

(declare-fun bs!1857310 () Bool)

(assert (= bs!1857310 (and b!6945663 b!6945179)))

(assert (=> bs!1857310 (= (and (= s!14361 (_2!37137 lt!2477213)) (= (reg!17306 lt!2477183) (reg!17306 lt!2477208)) (= lt!2477183 lt!2477208)) (= lambda!396063 lambda!396035))))

(declare-fun bs!1857311 () Bool)

(assert (= bs!1857311 (and b!6945663 b!6945543)))

(assert (=> bs!1857311 (= (and (= s!14361 lt!2477209) (= (reg!17306 lt!2477183) (reg!17306 lt!2477206)) (= lt!2477183 lt!2477206)) (= lambda!396063 lambda!396052))))

(assert (=> bs!1857305 (not (= lambda!396063 lambda!396057))))

(declare-fun bs!1857312 () Bool)

(assert (= bs!1857312 (and b!6945663 b!6944848)))

(assert (=> bs!1857312 (not (= lambda!396063 lambda!395994))))

(assert (=> bs!1857299 (not (= lambda!396063 lambda!395986))))

(assert (=> b!6945663 true))

(assert (=> b!6945663 true))

(declare-fun bs!1857313 () Bool)

(declare-fun b!6945662 () Bool)

(assert (= bs!1857313 (and b!6945662 b!6945542)))

(declare-fun lambda!396064 () Int)

(assert (=> bs!1857313 (= (and (= s!14361 lt!2477209) (= (regOne!34466 lt!2477183) (regOne!34466 lt!2477206)) (= (regTwo!34466 lt!2477183) (regTwo!34466 lt!2477206))) (= lambda!396064 lambda!396053))))

(declare-fun bs!1857314 () Bool)

(assert (= bs!1857314 (and b!6945662 d!2168450)))

(assert (=> bs!1857314 (= (and (= (regOne!34466 lt!2477183) r1!6342) (= (regTwo!34466 lt!2477183) lt!2477208)) (= lambda!396064 lambda!396012))))

(declare-fun bs!1857315 () Bool)

(assert (= bs!1857315 (and b!6945662 d!2168570)))

(assert (=> bs!1857315 (not (= lambda!396064 lambda!396048))))

(declare-fun bs!1857316 () Bool)

(assert (= bs!1857316 (and b!6945662 b!6945401)))

(assert (=> bs!1857316 (= (and (= s!14361 (_2!37137 lt!2477205)) (= (regOne!34466 lt!2477183) (regOne!34466 r3!135)) (= (regTwo!34466 lt!2477183) (regTwo!34466 r3!135))) (= lambda!396064 lambda!396050))))

(declare-fun bs!1857317 () Bool)

(assert (= bs!1857317 (and b!6945662 b!6945178)))

(assert (=> bs!1857317 (= (and (= s!14361 (_2!37137 lt!2477213)) (= (regOne!34466 lt!2477183) (regOne!34466 lt!2477208)) (= (regTwo!34466 lt!2477183) (regTwo!34466 lt!2477208))) (= lambda!396064 lambda!396037))))

(declare-fun bs!1857318 () Bool)

(assert (= bs!1857318 (and b!6945662 b!6945602)))

(assert (=> bs!1857318 (not (= lambda!396064 lambda!396061))))

(declare-fun bs!1857319 () Bool)

(assert (= bs!1857319 (and b!6945662 b!6945663)))

(assert (=> bs!1857319 (not (= lambda!396064 lambda!396063))))

(declare-fun bs!1857320 () Bool)

(assert (= bs!1857320 (and b!6945662 d!2168560)))

(assert (=> bs!1857320 (= (and (= s!14361 (_2!37137 lt!2477213)) (= (regOne!34466 lt!2477183) r2!6280) (= (regTwo!34466 lt!2477183) r3!135)) (= lambda!396064 lambda!396047))))

(declare-fun bs!1857321 () Bool)

(assert (= bs!1857321 (and b!6945662 b!6944864)))

(assert (=> bs!1857321 (= (and (= s!14361 (_2!37137 lt!2477213)) (= (regOne!34466 lt!2477183) r2!6280) (= (regTwo!34466 lt!2477183) r3!135)) (= lambda!396064 lambda!395989))))

(assert (=> bs!1857321 (not (= lambda!396064 lambda!395988))))

(assert (=> bs!1857321 (= (and (= (regOne!34466 lt!2477183) r1!6342) (= (regTwo!34466 lt!2477183) lt!2477208)) (= lambda!396064 lambda!395987))))

(declare-fun bs!1857322 () Bool)

(assert (= bs!1857322 (and b!6945662 d!2168478)))

(assert (=> bs!1857322 (not (= lambda!396064 lambda!396026))))

(declare-fun bs!1857323 () Bool)

(assert (= bs!1857323 (and b!6945662 b!6945601)))

(assert (=> bs!1857323 (= (and (= s!14361 (_1!37137 lt!2477205)) (= (regOne!34466 lt!2477183) (regOne!34466 r2!6280)) (= (regTwo!34466 lt!2477183) (regTwo!34466 r2!6280))) (= lambda!396064 lambda!396062))))

(declare-fun bs!1857324 () Bool)

(assert (= bs!1857324 (and b!6945662 d!2168622)))

(assert (=> bs!1857324 (= (and (= s!14361 lt!2477209) (= (regOne!34466 lt!2477183) r1!6342) (= (regTwo!34466 lt!2477183) r2!6280)) (= lambda!396064 lambda!396055))))

(declare-fun bs!1857325 () Bool)

(assert (= bs!1857325 (and b!6945662 d!2168636)))

(assert (=> bs!1857325 (not (= lambda!396064 lambda!396060))))

(assert (=> bs!1857314 (not (= lambda!396064 lambda!396009))))

(declare-fun bs!1857326 () Bool)

(assert (= bs!1857326 (and b!6945662 d!2168582)))

(assert (=> bs!1857326 (not (= lambda!396064 lambda!396051))))

(assert (=> bs!1857321 (not (= lambda!396064 lambda!395990))))

(assert (=> bs!1857324 (not (= lambda!396064 lambda!396054))))

(assert (=> bs!1857320 (not (= lambda!396064 lambda!396046))))

(assert (=> bs!1857321 (= (and (= s!14361 lt!2477209) (= (regOne!34466 lt!2477183) r1!6342) (= (regTwo!34466 lt!2477183) r2!6280)) (= lambda!396064 lambda!395991))))

(declare-fun bs!1857327 () Bool)

(assert (= bs!1857327 (and b!6945662 d!2168632)))

(assert (=> bs!1857327 (not (= lambda!396064 lambda!396056))))

(declare-fun bs!1857328 () Bool)

(assert (= bs!1857328 (and b!6945662 b!6944855)))

(assert (=> bs!1857328 (not (= lambda!396064 lambda!395993))))

(declare-fun bs!1857329 () Bool)

(assert (= bs!1857329 (and b!6945662 b!6945402)))

(assert (=> bs!1857329 (not (= lambda!396064 lambda!396049))))

(declare-fun bs!1857330 () Bool)

(assert (= bs!1857330 (and b!6945662 b!6945590)))

(assert (=> bs!1857330 (= (and (= s!14361 (_1!37137 lt!2477213)) (= (regOne!34466 lt!2477183) (regOne!34466 r1!6342)) (= (regTwo!34466 lt!2477183) (regTwo!34466 r1!6342))) (= lambda!396064 lambda!396059))))

(declare-fun bs!1857331 () Bool)

(assert (= bs!1857331 (and b!6945662 b!6945591)))

(assert (=> bs!1857331 (not (= lambda!396064 lambda!396058))))

(assert (=> bs!1857321 (not (= lambda!396064 lambda!395992))))

(declare-fun bs!1857332 () Bool)

(assert (= bs!1857332 (and b!6945662 b!6945179)))

(assert (=> bs!1857332 (not (= lambda!396064 lambda!396035))))

(declare-fun bs!1857333 () Bool)

(assert (= bs!1857333 (and b!6945662 b!6945543)))

(assert (=> bs!1857333 (not (= lambda!396064 lambda!396052))))

(assert (=> bs!1857327 (= (and (= (regOne!34466 lt!2477183) lt!2477206) (= (regTwo!34466 lt!2477183) r3!135)) (= lambda!396064 lambda!396057))))

(declare-fun bs!1857334 () Bool)

(assert (= bs!1857334 (and b!6945662 b!6944848)))

(assert (=> bs!1857334 (= (and (= (regOne!34466 lt!2477183) r1!6342) (= (regTwo!34466 lt!2477183) lt!2477208)) (= lambda!396064 lambda!395994))))

(assert (=> bs!1857321 (not (= lambda!396064 lambda!395986))))

(assert (=> b!6945662 true))

(assert (=> b!6945662 true))

(declare-fun b!6945655 () Bool)

(declare-fun e!4177875 () Bool)

(assert (=> b!6945655 (= e!4177875 (= s!14361 (Cons!66606 (c!1288489 lt!2477183) Nil!66606)))))

(declare-fun b!6945656 () Bool)

(declare-fun res!2833512 () Bool)

(declare-fun e!4177871 () Bool)

(assert (=> b!6945656 (=> res!2833512 e!4177871)))

(declare-fun call!630920 () Bool)

(assert (=> b!6945656 (= res!2833512 call!630920)))

(declare-fun e!4177873 () Bool)

(assert (=> b!6945656 (= e!4177873 e!4177871)))

(declare-fun b!6945657 () Bool)

(declare-fun c!1288665 () Bool)

(assert (=> b!6945657 (= c!1288665 ((_ is Union!16977) lt!2477183))))

(declare-fun e!4177869 () Bool)

(assert (=> b!6945657 (= e!4177875 e!4177869)))

(declare-fun b!6945658 () Bool)

(declare-fun e!4177874 () Bool)

(declare-fun e!4177870 () Bool)

(assert (=> b!6945658 (= e!4177874 e!4177870)))

(declare-fun res!2833513 () Bool)

(assert (=> b!6945658 (= res!2833513 (not ((_ is EmptyLang!16977) lt!2477183)))))

(assert (=> b!6945658 (=> (not res!2833513) (not e!4177870))))

(declare-fun bm!630915 () Bool)

(assert (=> bm!630915 (= call!630920 (isEmpty!38882 s!14361))))

(declare-fun b!6945659 () Bool)

(declare-fun e!4177872 () Bool)

(assert (=> b!6945659 (= e!4177872 (matchRSpec!4034 (regTwo!34467 lt!2477183) s!14361))))

(declare-fun b!6945660 () Bool)

(assert (=> b!6945660 (= e!4177874 call!630920)))

(declare-fun b!6945661 () Bool)

(assert (=> b!6945661 (= e!4177869 e!4177873)))

(declare-fun c!1288662 () Bool)

(assert (=> b!6945661 (= c!1288662 ((_ is Star!16977) lt!2477183))))

(declare-fun call!630921 () Bool)

(assert (=> b!6945662 (= e!4177873 call!630921)))

(declare-fun d!2168652 () Bool)

(declare-fun c!1288663 () Bool)

(assert (=> d!2168652 (= c!1288663 ((_ is EmptyExpr!16977) lt!2477183))))

(assert (=> d!2168652 (= (matchRSpec!4034 lt!2477183 s!14361) e!4177874)))

(assert (=> b!6945663 (= e!4177871 call!630921)))

(declare-fun b!6945664 () Bool)

(assert (=> b!6945664 (= e!4177869 e!4177872)))

(declare-fun res!2833511 () Bool)

(assert (=> b!6945664 (= res!2833511 (matchRSpec!4034 (regOne!34467 lt!2477183) s!14361))))

(assert (=> b!6945664 (=> res!2833511 e!4177872)))

(declare-fun b!6945665 () Bool)

(declare-fun c!1288664 () Bool)

(assert (=> b!6945665 (= c!1288664 ((_ is ElementMatch!16977) lt!2477183))))

(assert (=> b!6945665 (= e!4177870 e!4177875)))

(declare-fun bm!630916 () Bool)

(assert (=> bm!630916 (= call!630921 (Exists!3977 (ite c!1288662 lambda!396063 lambda!396064)))))

(assert (= (and d!2168652 c!1288663) b!6945660))

(assert (= (and d!2168652 (not c!1288663)) b!6945658))

(assert (= (and b!6945658 res!2833513) b!6945665))

(assert (= (and b!6945665 c!1288664) b!6945655))

(assert (= (and b!6945665 (not c!1288664)) b!6945657))

(assert (= (and b!6945657 c!1288665) b!6945664))

(assert (= (and b!6945657 (not c!1288665)) b!6945661))

(assert (= (and b!6945664 (not res!2833511)) b!6945659))

(assert (= (and b!6945661 c!1288662) b!6945656))

(assert (= (and b!6945661 (not c!1288662)) b!6945662))

(assert (= (and b!6945656 (not res!2833512)) b!6945663))

(assert (= (or b!6945663 b!6945662) bm!630916))

(assert (= (or b!6945660 b!6945656) bm!630915))

(declare-fun m!7650248 () Bool)

(assert (=> bm!630915 m!7650248))

(declare-fun m!7650250 () Bool)

(assert (=> b!6945659 m!7650250))

(declare-fun m!7650252 () Bool)

(assert (=> b!6945664 m!7650252))

(declare-fun m!7650254 () Bool)

(assert (=> bm!630916 m!7650254))

(assert (=> b!6944861 d!2168652))

(declare-fun b!6945666 () Bool)

(declare-fun res!2833516 () Bool)

(declare-fun e!4177882 () Bool)

(assert (=> b!6945666 (=> res!2833516 e!4177882)))

(declare-fun e!4177880 () Bool)

(assert (=> b!6945666 (= res!2833516 e!4177880)))

(declare-fun res!2833514 () Bool)

(assert (=> b!6945666 (=> (not res!2833514) (not e!4177880))))

(declare-fun lt!2477332 () Bool)

(assert (=> b!6945666 (= res!2833514 lt!2477332)))

(declare-fun b!6945668 () Bool)

(assert (=> b!6945668 (= e!4177880 (= (head!13918 s!14361) (c!1288489 lt!2477183)))))

(declare-fun b!6945669 () Bool)

(declare-fun e!4177877 () Bool)

(assert (=> b!6945669 (= e!4177877 (matchR!9116 (derivativeStep!5465 lt!2477183 (head!13918 s!14361)) (tail!12970 s!14361)))))

(declare-fun b!6945670 () Bool)

(declare-fun res!2833517 () Bool)

(assert (=> b!6945670 (=> (not res!2833517) (not e!4177880))))

(assert (=> b!6945670 (= res!2833517 (isEmpty!38882 (tail!12970 s!14361)))))

(declare-fun b!6945671 () Bool)

(declare-fun res!2833515 () Bool)

(assert (=> b!6945671 (=> (not res!2833515) (not e!4177880))))

(declare-fun call!630922 () Bool)

(assert (=> b!6945671 (= res!2833515 (not call!630922))))

(declare-fun b!6945672 () Bool)

(declare-fun res!2833519 () Bool)

(assert (=> b!6945672 (=> res!2833519 e!4177882)))

(assert (=> b!6945672 (= res!2833519 (not ((_ is ElementMatch!16977) lt!2477183)))))

(declare-fun e!4177881 () Bool)

(assert (=> b!6945672 (= e!4177881 e!4177882)))

(declare-fun b!6945673 () Bool)

(declare-fun e!4177878 () Bool)

(declare-fun e!4177876 () Bool)

(assert (=> b!6945673 (= e!4177878 e!4177876)))

(declare-fun res!2833520 () Bool)

(assert (=> b!6945673 (=> res!2833520 e!4177876)))

(assert (=> b!6945673 (= res!2833520 call!630922)))

(declare-fun b!6945674 () Bool)

(declare-fun e!4177879 () Bool)

(assert (=> b!6945674 (= e!4177879 e!4177881)))

(declare-fun c!1288666 () Bool)

(assert (=> b!6945674 (= c!1288666 ((_ is EmptyLang!16977) lt!2477183))))

(declare-fun d!2168654 () Bool)

(assert (=> d!2168654 e!4177879))

(declare-fun c!1288667 () Bool)

(assert (=> d!2168654 (= c!1288667 ((_ is EmptyExpr!16977) lt!2477183))))

(assert (=> d!2168654 (= lt!2477332 e!4177877)))

(declare-fun c!1288668 () Bool)

(assert (=> d!2168654 (= c!1288668 (isEmpty!38882 s!14361))))

(assert (=> d!2168654 (validRegex!8683 lt!2477183)))

(assert (=> d!2168654 (= (matchR!9116 lt!2477183 s!14361) lt!2477332)))

(declare-fun b!6945667 () Bool)

(assert (=> b!6945667 (= e!4177877 (nullable!6790 lt!2477183))))

(declare-fun bm!630917 () Bool)

(assert (=> bm!630917 (= call!630922 (isEmpty!38882 s!14361))))

(declare-fun b!6945675 () Bool)

(assert (=> b!6945675 (= e!4177879 (= lt!2477332 call!630922))))

(declare-fun b!6945676 () Bool)

(assert (=> b!6945676 (= e!4177881 (not lt!2477332))))

(declare-fun b!6945677 () Bool)

(assert (=> b!6945677 (= e!4177882 e!4177878)))

(declare-fun res!2833518 () Bool)

(assert (=> b!6945677 (=> (not res!2833518) (not e!4177878))))

(assert (=> b!6945677 (= res!2833518 (not lt!2477332))))

(declare-fun b!6945678 () Bool)

(declare-fun res!2833521 () Bool)

(assert (=> b!6945678 (=> res!2833521 e!4177876)))

(assert (=> b!6945678 (= res!2833521 (not (isEmpty!38882 (tail!12970 s!14361))))))

(declare-fun b!6945679 () Bool)

(assert (=> b!6945679 (= e!4177876 (not (= (head!13918 s!14361) (c!1288489 lt!2477183))))))

(assert (= (and d!2168654 c!1288668) b!6945667))

(assert (= (and d!2168654 (not c!1288668)) b!6945669))

(assert (= (and d!2168654 c!1288667) b!6945675))

(assert (= (and d!2168654 (not c!1288667)) b!6945674))

(assert (= (and b!6945674 c!1288666) b!6945676))

(assert (= (and b!6945674 (not c!1288666)) b!6945672))

(assert (= (and b!6945672 (not res!2833519)) b!6945666))

(assert (= (and b!6945666 res!2833514) b!6945671))

(assert (= (and b!6945671 res!2833515) b!6945670))

(assert (= (and b!6945670 res!2833517) b!6945668))

(assert (= (and b!6945666 (not res!2833516)) b!6945677))

(assert (= (and b!6945677 res!2833518) b!6945673))

(assert (= (and b!6945673 (not res!2833520)) b!6945678))

(assert (= (and b!6945678 (not res!2833521)) b!6945679))

(assert (= (or b!6945675 b!6945671 b!6945673) bm!630917))

(assert (=> bm!630917 m!7650248))

(declare-fun m!7650256 () Bool)

(assert (=> b!6945667 m!7650256))

(declare-fun m!7650258 () Bool)

(assert (=> b!6945669 m!7650258))

(assert (=> b!6945669 m!7650258))

(declare-fun m!7650260 () Bool)

(assert (=> b!6945669 m!7650260))

(declare-fun m!7650262 () Bool)

(assert (=> b!6945669 m!7650262))

(assert (=> b!6945669 m!7650260))

(assert (=> b!6945669 m!7650262))

(declare-fun m!7650264 () Bool)

(assert (=> b!6945669 m!7650264))

(assert (=> d!2168654 m!7650248))

(declare-fun m!7650266 () Bool)

(assert (=> d!2168654 m!7650266))

(assert (=> b!6945678 m!7650262))

(assert (=> b!6945678 m!7650262))

(declare-fun m!7650268 () Bool)

(assert (=> b!6945678 m!7650268))

(assert (=> b!6945668 m!7650258))

(assert (=> b!6945670 m!7650262))

(assert (=> b!6945670 m!7650262))

(assert (=> b!6945670 m!7650268))

(assert (=> b!6945679 m!7650258))

(assert (=> b!6944861 d!2168654))

(declare-fun bs!1857335 () Bool)

(declare-fun b!6945688 () Bool)

(assert (= bs!1857335 (and b!6945688 b!6945542)))

(declare-fun lambda!396065 () Int)

(assert (=> bs!1857335 (not (= lambda!396065 lambda!396053))))

(declare-fun bs!1857336 () Bool)

(assert (= bs!1857336 (and b!6945688 d!2168450)))

(assert (=> bs!1857336 (not (= lambda!396065 lambda!396012))))

(declare-fun bs!1857337 () Bool)

(assert (= bs!1857337 (and b!6945688 d!2168570)))

(assert (=> bs!1857337 (not (= lambda!396065 lambda!396048))))

(declare-fun bs!1857338 () Bool)

(assert (= bs!1857338 (and b!6945688 b!6945401)))

(assert (=> bs!1857338 (not (= lambda!396065 lambda!396050))))

(declare-fun bs!1857339 () Bool)

(assert (= bs!1857339 (and b!6945688 b!6945178)))

(assert (=> bs!1857339 (not (= lambda!396065 lambda!396037))))

(declare-fun bs!1857340 () Bool)

(assert (= bs!1857340 (and b!6945688 b!6945602)))

(assert (=> bs!1857340 (= (and (= s!14361 (_1!37137 lt!2477205)) (= (reg!17306 lt!2477189) (reg!17306 r2!6280)) (= lt!2477189 r2!6280)) (= lambda!396065 lambda!396061))))

(declare-fun bs!1857341 () Bool)

(assert (= bs!1857341 (and b!6945688 b!6945663)))

(assert (=> bs!1857341 (= (and (= (reg!17306 lt!2477189) (reg!17306 lt!2477183)) (= lt!2477189 lt!2477183)) (= lambda!396065 lambda!396063))))

(declare-fun bs!1857342 () Bool)

(assert (= bs!1857342 (and b!6945688 b!6945662)))

(assert (=> bs!1857342 (not (= lambda!396065 lambda!396064))))

(declare-fun bs!1857343 () Bool)

(assert (= bs!1857343 (and b!6945688 d!2168560)))

(assert (=> bs!1857343 (not (= lambda!396065 lambda!396047))))

(declare-fun bs!1857344 () Bool)

(assert (= bs!1857344 (and b!6945688 b!6944864)))

(assert (=> bs!1857344 (not (= lambda!396065 lambda!395989))))

(assert (=> bs!1857344 (not (= lambda!396065 lambda!395988))))

(assert (=> bs!1857344 (not (= lambda!396065 lambda!395987))))

(declare-fun bs!1857345 () Bool)

(assert (= bs!1857345 (and b!6945688 d!2168478)))

(assert (=> bs!1857345 (not (= lambda!396065 lambda!396026))))

(declare-fun bs!1857346 () Bool)

(assert (= bs!1857346 (and b!6945688 b!6945601)))

(assert (=> bs!1857346 (not (= lambda!396065 lambda!396062))))

(declare-fun bs!1857347 () Bool)

(assert (= bs!1857347 (and b!6945688 d!2168622)))

(assert (=> bs!1857347 (not (= lambda!396065 lambda!396055))))

(declare-fun bs!1857348 () Bool)

(assert (= bs!1857348 (and b!6945688 d!2168636)))

(assert (=> bs!1857348 (not (= lambda!396065 lambda!396060))))

(assert (=> bs!1857336 (not (= lambda!396065 lambda!396009))))

(declare-fun bs!1857349 () Bool)

(assert (= bs!1857349 (and b!6945688 d!2168582)))

(assert (=> bs!1857349 (not (= lambda!396065 lambda!396051))))

(assert (=> bs!1857344 (not (= lambda!396065 lambda!395990))))

(assert (=> bs!1857347 (not (= lambda!396065 lambda!396054))))

(assert (=> bs!1857343 (not (= lambda!396065 lambda!396046))))

(assert (=> bs!1857344 (not (= lambda!396065 lambda!395991))))

(declare-fun bs!1857350 () Bool)

(assert (= bs!1857350 (and b!6945688 d!2168632)))

(assert (=> bs!1857350 (not (= lambda!396065 lambda!396056))))

(declare-fun bs!1857351 () Bool)

(assert (= bs!1857351 (and b!6945688 b!6944855)))

(assert (=> bs!1857351 (not (= lambda!396065 lambda!395993))))

(declare-fun bs!1857352 () Bool)

(assert (= bs!1857352 (and b!6945688 b!6945402)))

(assert (=> bs!1857352 (= (and (= s!14361 (_2!37137 lt!2477205)) (= (reg!17306 lt!2477189) (reg!17306 r3!135)) (= lt!2477189 r3!135)) (= lambda!396065 lambda!396049))))

(declare-fun bs!1857353 () Bool)

(assert (= bs!1857353 (and b!6945688 b!6945590)))

(assert (=> bs!1857353 (not (= lambda!396065 lambda!396059))))

(declare-fun bs!1857354 () Bool)

(assert (= bs!1857354 (and b!6945688 b!6945591)))

(assert (=> bs!1857354 (= (and (= s!14361 (_1!37137 lt!2477213)) (= (reg!17306 lt!2477189) (reg!17306 r1!6342)) (= lt!2477189 r1!6342)) (= lambda!396065 lambda!396058))))

(assert (=> bs!1857344 (not (= lambda!396065 lambda!395992))))

(declare-fun bs!1857355 () Bool)

(assert (= bs!1857355 (and b!6945688 b!6945179)))

(assert (=> bs!1857355 (= (and (= s!14361 (_2!37137 lt!2477213)) (= (reg!17306 lt!2477189) (reg!17306 lt!2477208)) (= lt!2477189 lt!2477208)) (= lambda!396065 lambda!396035))))

(declare-fun bs!1857356 () Bool)

(assert (= bs!1857356 (and b!6945688 b!6945543)))

(assert (=> bs!1857356 (= (and (= s!14361 lt!2477209) (= (reg!17306 lt!2477189) (reg!17306 lt!2477206)) (= lt!2477189 lt!2477206)) (= lambda!396065 lambda!396052))))

(assert (=> bs!1857350 (not (= lambda!396065 lambda!396057))))

(declare-fun bs!1857357 () Bool)

(assert (= bs!1857357 (and b!6945688 b!6944848)))

(assert (=> bs!1857357 (not (= lambda!396065 lambda!395994))))

(assert (=> bs!1857344 (not (= lambda!396065 lambda!395986))))

(assert (=> b!6945688 true))

(assert (=> b!6945688 true))

(declare-fun bs!1857358 () Bool)

(declare-fun b!6945687 () Bool)

(assert (= bs!1857358 (and b!6945687 b!6945542)))

(declare-fun lambda!396066 () Int)

(assert (=> bs!1857358 (= (and (= s!14361 lt!2477209) (= (regOne!34466 lt!2477189) (regOne!34466 lt!2477206)) (= (regTwo!34466 lt!2477189) (regTwo!34466 lt!2477206))) (= lambda!396066 lambda!396053))))

(declare-fun bs!1857359 () Bool)

(assert (= bs!1857359 (and b!6945687 d!2168450)))

(assert (=> bs!1857359 (= (and (= (regOne!34466 lt!2477189) r1!6342) (= (regTwo!34466 lt!2477189) lt!2477208)) (= lambda!396066 lambda!396012))))

(declare-fun bs!1857360 () Bool)

(assert (= bs!1857360 (and b!6945687 d!2168570)))

(assert (=> bs!1857360 (not (= lambda!396066 lambda!396048))))

(declare-fun bs!1857361 () Bool)

(assert (= bs!1857361 (and b!6945687 b!6945401)))

(assert (=> bs!1857361 (= (and (= s!14361 (_2!37137 lt!2477205)) (= (regOne!34466 lt!2477189) (regOne!34466 r3!135)) (= (regTwo!34466 lt!2477189) (regTwo!34466 r3!135))) (= lambda!396066 lambda!396050))))

(declare-fun bs!1857362 () Bool)

(assert (= bs!1857362 (and b!6945687 b!6945178)))

(assert (=> bs!1857362 (= (and (= s!14361 (_2!37137 lt!2477213)) (= (regOne!34466 lt!2477189) (regOne!34466 lt!2477208)) (= (regTwo!34466 lt!2477189) (regTwo!34466 lt!2477208))) (= lambda!396066 lambda!396037))))

(declare-fun bs!1857363 () Bool)

(assert (= bs!1857363 (and b!6945687 b!6945602)))

(assert (=> bs!1857363 (not (= lambda!396066 lambda!396061))))

(declare-fun bs!1857364 () Bool)

(assert (= bs!1857364 (and b!6945687 b!6945663)))

(assert (=> bs!1857364 (not (= lambda!396066 lambda!396063))))

(declare-fun bs!1857365 () Bool)

(assert (= bs!1857365 (and b!6945687 b!6945662)))

(assert (=> bs!1857365 (= (and (= (regOne!34466 lt!2477189) (regOne!34466 lt!2477183)) (= (regTwo!34466 lt!2477189) (regTwo!34466 lt!2477183))) (= lambda!396066 lambda!396064))))

(declare-fun bs!1857366 () Bool)

(assert (= bs!1857366 (and b!6945687 b!6945688)))

(assert (=> bs!1857366 (not (= lambda!396066 lambda!396065))))

(declare-fun bs!1857367 () Bool)

(assert (= bs!1857367 (and b!6945687 d!2168560)))

(assert (=> bs!1857367 (= (and (= s!14361 (_2!37137 lt!2477213)) (= (regOne!34466 lt!2477189) r2!6280) (= (regTwo!34466 lt!2477189) r3!135)) (= lambda!396066 lambda!396047))))

(declare-fun bs!1857368 () Bool)

(assert (= bs!1857368 (and b!6945687 b!6944864)))

(assert (=> bs!1857368 (= (and (= s!14361 (_2!37137 lt!2477213)) (= (regOne!34466 lt!2477189) r2!6280) (= (regTwo!34466 lt!2477189) r3!135)) (= lambda!396066 lambda!395989))))

(assert (=> bs!1857368 (not (= lambda!396066 lambda!395988))))

(assert (=> bs!1857368 (= (and (= (regOne!34466 lt!2477189) r1!6342) (= (regTwo!34466 lt!2477189) lt!2477208)) (= lambda!396066 lambda!395987))))

(declare-fun bs!1857369 () Bool)

(assert (= bs!1857369 (and b!6945687 d!2168478)))

(assert (=> bs!1857369 (not (= lambda!396066 lambda!396026))))

(declare-fun bs!1857370 () Bool)

(assert (= bs!1857370 (and b!6945687 b!6945601)))

(assert (=> bs!1857370 (= (and (= s!14361 (_1!37137 lt!2477205)) (= (regOne!34466 lt!2477189) (regOne!34466 r2!6280)) (= (regTwo!34466 lt!2477189) (regTwo!34466 r2!6280))) (= lambda!396066 lambda!396062))))

(declare-fun bs!1857371 () Bool)

(assert (= bs!1857371 (and b!6945687 d!2168622)))

(assert (=> bs!1857371 (= (and (= s!14361 lt!2477209) (= (regOne!34466 lt!2477189) r1!6342) (= (regTwo!34466 lt!2477189) r2!6280)) (= lambda!396066 lambda!396055))))

(declare-fun bs!1857372 () Bool)

(assert (= bs!1857372 (and b!6945687 d!2168636)))

(assert (=> bs!1857372 (not (= lambda!396066 lambda!396060))))

(assert (=> bs!1857359 (not (= lambda!396066 lambda!396009))))

(declare-fun bs!1857373 () Bool)

(assert (= bs!1857373 (and b!6945687 d!2168582)))

(assert (=> bs!1857373 (not (= lambda!396066 lambda!396051))))

(assert (=> bs!1857368 (not (= lambda!396066 lambda!395990))))

(assert (=> bs!1857371 (not (= lambda!396066 lambda!396054))))

(assert (=> bs!1857367 (not (= lambda!396066 lambda!396046))))

(assert (=> bs!1857368 (= (and (= s!14361 lt!2477209) (= (regOne!34466 lt!2477189) r1!6342) (= (regTwo!34466 lt!2477189) r2!6280)) (= lambda!396066 lambda!395991))))

(declare-fun bs!1857374 () Bool)

(assert (= bs!1857374 (and b!6945687 d!2168632)))

(assert (=> bs!1857374 (not (= lambda!396066 lambda!396056))))

(declare-fun bs!1857375 () Bool)

(assert (= bs!1857375 (and b!6945687 b!6944855)))

(assert (=> bs!1857375 (not (= lambda!396066 lambda!395993))))

(declare-fun bs!1857376 () Bool)

(assert (= bs!1857376 (and b!6945687 b!6945402)))

(assert (=> bs!1857376 (not (= lambda!396066 lambda!396049))))

(declare-fun bs!1857377 () Bool)

(assert (= bs!1857377 (and b!6945687 b!6945590)))

(assert (=> bs!1857377 (= (and (= s!14361 (_1!37137 lt!2477213)) (= (regOne!34466 lt!2477189) (regOne!34466 r1!6342)) (= (regTwo!34466 lt!2477189) (regTwo!34466 r1!6342))) (= lambda!396066 lambda!396059))))

(declare-fun bs!1857378 () Bool)

(assert (= bs!1857378 (and b!6945687 b!6945591)))

(assert (=> bs!1857378 (not (= lambda!396066 lambda!396058))))

(assert (=> bs!1857368 (not (= lambda!396066 lambda!395992))))

(declare-fun bs!1857379 () Bool)

(assert (= bs!1857379 (and b!6945687 b!6945179)))

(assert (=> bs!1857379 (not (= lambda!396066 lambda!396035))))

(declare-fun bs!1857380 () Bool)

(assert (= bs!1857380 (and b!6945687 b!6945543)))

(assert (=> bs!1857380 (not (= lambda!396066 lambda!396052))))

(assert (=> bs!1857374 (= (and (= (regOne!34466 lt!2477189) lt!2477206) (= (regTwo!34466 lt!2477189) r3!135)) (= lambda!396066 lambda!396057))))

(declare-fun bs!1857381 () Bool)

(assert (= bs!1857381 (and b!6945687 b!6944848)))

(assert (=> bs!1857381 (= (and (= (regOne!34466 lt!2477189) r1!6342) (= (regTwo!34466 lt!2477189) lt!2477208)) (= lambda!396066 lambda!395994))))

(assert (=> bs!1857368 (not (= lambda!396066 lambda!395986))))

(assert (=> b!6945687 true))

(assert (=> b!6945687 true))

(declare-fun b!6945680 () Bool)

(declare-fun e!4177889 () Bool)

(assert (=> b!6945680 (= e!4177889 (= s!14361 (Cons!66606 (c!1288489 lt!2477189) Nil!66606)))))

(declare-fun b!6945681 () Bool)

(declare-fun res!2833523 () Bool)

(declare-fun e!4177885 () Bool)

(assert (=> b!6945681 (=> res!2833523 e!4177885)))

(declare-fun call!630923 () Bool)

(assert (=> b!6945681 (= res!2833523 call!630923)))

(declare-fun e!4177887 () Bool)

(assert (=> b!6945681 (= e!4177887 e!4177885)))

(declare-fun b!6945682 () Bool)

(declare-fun c!1288672 () Bool)

(assert (=> b!6945682 (= c!1288672 ((_ is Union!16977) lt!2477189))))

(declare-fun e!4177883 () Bool)

(assert (=> b!6945682 (= e!4177889 e!4177883)))

(declare-fun b!6945683 () Bool)

(declare-fun e!4177888 () Bool)

(declare-fun e!4177884 () Bool)

(assert (=> b!6945683 (= e!4177888 e!4177884)))

(declare-fun res!2833524 () Bool)

(assert (=> b!6945683 (= res!2833524 (not ((_ is EmptyLang!16977) lt!2477189)))))

(assert (=> b!6945683 (=> (not res!2833524) (not e!4177884))))

(declare-fun bm!630918 () Bool)

(assert (=> bm!630918 (= call!630923 (isEmpty!38882 s!14361))))

(declare-fun b!6945684 () Bool)

(declare-fun e!4177886 () Bool)

(assert (=> b!6945684 (= e!4177886 (matchRSpec!4034 (regTwo!34467 lt!2477189) s!14361))))

(declare-fun b!6945685 () Bool)

(assert (=> b!6945685 (= e!4177888 call!630923)))

(declare-fun b!6945686 () Bool)

(assert (=> b!6945686 (= e!4177883 e!4177887)))

(declare-fun c!1288669 () Bool)

(assert (=> b!6945686 (= c!1288669 ((_ is Star!16977) lt!2477189))))

(declare-fun call!630924 () Bool)

(assert (=> b!6945687 (= e!4177887 call!630924)))

(declare-fun d!2168656 () Bool)

(declare-fun c!1288670 () Bool)

(assert (=> d!2168656 (= c!1288670 ((_ is EmptyExpr!16977) lt!2477189))))

(assert (=> d!2168656 (= (matchRSpec!4034 lt!2477189 s!14361) e!4177888)))

(assert (=> b!6945688 (= e!4177885 call!630924)))

(declare-fun b!6945689 () Bool)

(assert (=> b!6945689 (= e!4177883 e!4177886)))

(declare-fun res!2833522 () Bool)

(assert (=> b!6945689 (= res!2833522 (matchRSpec!4034 (regOne!34467 lt!2477189) s!14361))))

(assert (=> b!6945689 (=> res!2833522 e!4177886)))

(declare-fun b!6945690 () Bool)

(declare-fun c!1288671 () Bool)

(assert (=> b!6945690 (= c!1288671 ((_ is ElementMatch!16977) lt!2477189))))

(assert (=> b!6945690 (= e!4177884 e!4177889)))

(declare-fun bm!630919 () Bool)

(assert (=> bm!630919 (= call!630924 (Exists!3977 (ite c!1288669 lambda!396065 lambda!396066)))))

(assert (= (and d!2168656 c!1288670) b!6945685))

(assert (= (and d!2168656 (not c!1288670)) b!6945683))

(assert (= (and b!6945683 res!2833524) b!6945690))

(assert (= (and b!6945690 c!1288671) b!6945680))

(assert (= (and b!6945690 (not c!1288671)) b!6945682))

(assert (= (and b!6945682 c!1288672) b!6945689))

(assert (= (and b!6945682 (not c!1288672)) b!6945686))

(assert (= (and b!6945689 (not res!2833522)) b!6945684))

(assert (= (and b!6945686 c!1288669) b!6945681))

(assert (= (and b!6945686 (not c!1288669)) b!6945687))

(assert (= (and b!6945681 (not res!2833523)) b!6945688))

(assert (= (or b!6945688 b!6945687) bm!630919))

(assert (= (or b!6945685 b!6945681) bm!630918))

(assert (=> bm!630918 m!7650248))

(declare-fun m!7650270 () Bool)

(assert (=> b!6945684 m!7650270))

(declare-fun m!7650272 () Bool)

(assert (=> b!6945689 m!7650272))

(declare-fun m!7650274 () Bool)

(assert (=> bm!630919 m!7650274))

(assert (=> b!6944861 d!2168656))

(declare-fun d!2168658 () Bool)

(assert (=> d!2168658 (= (matchR!9116 lt!2477189 s!14361) (matchRSpec!4034 lt!2477189 s!14361))))

(declare-fun lt!2477333 () Unit!160696)

(assert (=> d!2168658 (= lt!2477333 (choose!51756 lt!2477189 s!14361))))

(assert (=> d!2168658 (validRegex!8683 lt!2477189)))

(assert (=> d!2168658 (= (mainMatchTheorem!4034 lt!2477189 s!14361) lt!2477333)))

(declare-fun bs!1857382 () Bool)

(assert (= bs!1857382 d!2168658))

(assert (=> bs!1857382 m!7649518))

(assert (=> bs!1857382 m!7649524))

(declare-fun m!7650276 () Bool)

(assert (=> bs!1857382 m!7650276))

(declare-fun m!7650278 () Bool)

(assert (=> bs!1857382 m!7650278))

(assert (=> b!6944861 d!2168658))

(declare-fun d!2168660 () Bool)

(assert (=> d!2168660 (= (matchR!9116 lt!2477183 s!14361) (matchRSpec!4034 lt!2477183 s!14361))))

(declare-fun lt!2477334 () Unit!160696)

(assert (=> d!2168660 (= lt!2477334 (choose!51756 lt!2477183 s!14361))))

(assert (=> d!2168660 (validRegex!8683 lt!2477183)))

(assert (=> d!2168660 (= (mainMatchTheorem!4034 lt!2477183 s!14361) lt!2477334)))

(declare-fun bs!1857383 () Bool)

(assert (= bs!1857383 d!2168660))

(assert (=> bs!1857383 m!7649520))

(assert (=> bs!1857383 m!7649514))

(declare-fun m!7650280 () Bool)

(assert (=> bs!1857383 m!7650280))

(assert (=> bs!1857383 m!7650266))

(assert (=> b!6944861 d!2168660))

(declare-fun b!6945691 () Bool)

(declare-fun res!2833527 () Bool)

(declare-fun e!4177896 () Bool)

(assert (=> b!6945691 (=> res!2833527 e!4177896)))

(declare-fun e!4177894 () Bool)

(assert (=> b!6945691 (= res!2833527 e!4177894)))

(declare-fun res!2833525 () Bool)

(assert (=> b!6945691 (=> (not res!2833525) (not e!4177894))))

(declare-fun lt!2477335 () Bool)

(assert (=> b!6945691 (= res!2833525 lt!2477335)))

(declare-fun b!6945693 () Bool)

(assert (=> b!6945693 (= e!4177894 (= (head!13918 s!14361) (c!1288489 lt!2477189)))))

(declare-fun b!6945694 () Bool)

(declare-fun e!4177891 () Bool)

(assert (=> b!6945694 (= e!4177891 (matchR!9116 (derivativeStep!5465 lt!2477189 (head!13918 s!14361)) (tail!12970 s!14361)))))

(declare-fun b!6945695 () Bool)

(declare-fun res!2833528 () Bool)

(assert (=> b!6945695 (=> (not res!2833528) (not e!4177894))))

(assert (=> b!6945695 (= res!2833528 (isEmpty!38882 (tail!12970 s!14361)))))

(declare-fun b!6945696 () Bool)

(declare-fun res!2833526 () Bool)

(assert (=> b!6945696 (=> (not res!2833526) (not e!4177894))))

(declare-fun call!630925 () Bool)

(assert (=> b!6945696 (= res!2833526 (not call!630925))))

(declare-fun b!6945697 () Bool)

(declare-fun res!2833530 () Bool)

(assert (=> b!6945697 (=> res!2833530 e!4177896)))

(assert (=> b!6945697 (= res!2833530 (not ((_ is ElementMatch!16977) lt!2477189)))))

(declare-fun e!4177895 () Bool)

(assert (=> b!6945697 (= e!4177895 e!4177896)))

(declare-fun b!6945698 () Bool)

(declare-fun e!4177892 () Bool)

(declare-fun e!4177890 () Bool)

(assert (=> b!6945698 (= e!4177892 e!4177890)))

(declare-fun res!2833531 () Bool)

(assert (=> b!6945698 (=> res!2833531 e!4177890)))

(assert (=> b!6945698 (= res!2833531 call!630925)))

(declare-fun b!6945699 () Bool)

(declare-fun e!4177893 () Bool)

(assert (=> b!6945699 (= e!4177893 e!4177895)))

(declare-fun c!1288673 () Bool)

(assert (=> b!6945699 (= c!1288673 ((_ is EmptyLang!16977) lt!2477189))))

(declare-fun d!2168662 () Bool)

(assert (=> d!2168662 e!4177893))

(declare-fun c!1288674 () Bool)

(assert (=> d!2168662 (= c!1288674 ((_ is EmptyExpr!16977) lt!2477189))))

(assert (=> d!2168662 (= lt!2477335 e!4177891)))

(declare-fun c!1288675 () Bool)

(assert (=> d!2168662 (= c!1288675 (isEmpty!38882 s!14361))))

(assert (=> d!2168662 (validRegex!8683 lt!2477189)))

(assert (=> d!2168662 (= (matchR!9116 lt!2477189 s!14361) lt!2477335)))

(declare-fun b!6945692 () Bool)

(assert (=> b!6945692 (= e!4177891 (nullable!6790 lt!2477189))))

(declare-fun bm!630920 () Bool)

(assert (=> bm!630920 (= call!630925 (isEmpty!38882 s!14361))))

(declare-fun b!6945700 () Bool)

(assert (=> b!6945700 (= e!4177893 (= lt!2477335 call!630925))))

(declare-fun b!6945701 () Bool)

(assert (=> b!6945701 (= e!4177895 (not lt!2477335))))

(declare-fun b!6945702 () Bool)

(assert (=> b!6945702 (= e!4177896 e!4177892)))

(declare-fun res!2833529 () Bool)

(assert (=> b!6945702 (=> (not res!2833529) (not e!4177892))))

(assert (=> b!6945702 (= res!2833529 (not lt!2477335))))

(declare-fun b!6945703 () Bool)

(declare-fun res!2833532 () Bool)

(assert (=> b!6945703 (=> res!2833532 e!4177890)))

(assert (=> b!6945703 (= res!2833532 (not (isEmpty!38882 (tail!12970 s!14361))))))

(declare-fun b!6945704 () Bool)

(assert (=> b!6945704 (= e!4177890 (not (= (head!13918 s!14361) (c!1288489 lt!2477189))))))

(assert (= (and d!2168662 c!1288675) b!6945692))

(assert (= (and d!2168662 (not c!1288675)) b!6945694))

(assert (= (and d!2168662 c!1288674) b!6945700))

(assert (= (and d!2168662 (not c!1288674)) b!6945699))

(assert (= (and b!6945699 c!1288673) b!6945701))

(assert (= (and b!6945699 (not c!1288673)) b!6945697))

(assert (= (and b!6945697 (not res!2833530)) b!6945691))

(assert (= (and b!6945691 res!2833525) b!6945696))

(assert (= (and b!6945696 res!2833526) b!6945695))

(assert (= (and b!6945695 res!2833528) b!6945693))

(assert (= (and b!6945691 (not res!2833527)) b!6945702))

(assert (= (and b!6945702 res!2833529) b!6945698))

(assert (= (and b!6945698 (not res!2833531)) b!6945703))

(assert (= (and b!6945703 (not res!2833532)) b!6945704))

(assert (= (or b!6945700 b!6945696 b!6945698) bm!630920))

(assert (=> bm!630920 m!7650248))

(declare-fun m!7650282 () Bool)

(assert (=> b!6945692 m!7650282))

(assert (=> b!6945694 m!7650258))

(assert (=> b!6945694 m!7650258))

(declare-fun m!7650284 () Bool)

(assert (=> b!6945694 m!7650284))

(assert (=> b!6945694 m!7650262))

(assert (=> b!6945694 m!7650284))

(assert (=> b!6945694 m!7650262))

(declare-fun m!7650286 () Bool)

(assert (=> b!6945694 m!7650286))

(assert (=> d!2168662 m!7650248))

(assert (=> d!2168662 m!7650278))

(assert (=> b!6945703 m!7650262))

(assert (=> b!6945703 m!7650262))

(assert (=> b!6945703 m!7650268))

(assert (=> b!6945693 m!7650258))

(assert (=> b!6945695 m!7650262))

(assert (=> b!6945695 m!7650262))

(assert (=> b!6945695 m!7650268))

(assert (=> b!6945704 m!7650258))

(assert (=> b!6944861 d!2168662))

(declare-fun b!6945716 () Bool)

(declare-fun e!4177899 () Bool)

(declare-fun tp!1914392 () Bool)

(declare-fun tp!1914393 () Bool)

(assert (=> b!6945716 (= e!4177899 (and tp!1914392 tp!1914393))))

(declare-fun b!6945717 () Bool)

(declare-fun tp!1914391 () Bool)

(assert (=> b!6945717 (= e!4177899 tp!1914391)))

(assert (=> b!6944856 (= tp!1914286 e!4177899)))

(declare-fun b!6945715 () Bool)

(assert (=> b!6945715 (= e!4177899 tp_is_empty!43179)))

(declare-fun b!6945718 () Bool)

(declare-fun tp!1914394 () Bool)

(declare-fun tp!1914390 () Bool)

(assert (=> b!6945718 (= e!4177899 (and tp!1914394 tp!1914390))))

(assert (= (and b!6944856 ((_ is ElementMatch!16977) (regOne!34467 r2!6280))) b!6945715))

(assert (= (and b!6944856 ((_ is Concat!25822) (regOne!34467 r2!6280))) b!6945716))

(assert (= (and b!6944856 ((_ is Star!16977) (regOne!34467 r2!6280))) b!6945717))

(assert (= (and b!6944856 ((_ is Union!16977) (regOne!34467 r2!6280))) b!6945718))

(declare-fun b!6945720 () Bool)

(declare-fun e!4177900 () Bool)

(declare-fun tp!1914397 () Bool)

(declare-fun tp!1914398 () Bool)

(assert (=> b!6945720 (= e!4177900 (and tp!1914397 tp!1914398))))

(declare-fun b!6945721 () Bool)

(declare-fun tp!1914396 () Bool)

(assert (=> b!6945721 (= e!4177900 tp!1914396)))

(assert (=> b!6944856 (= tp!1914290 e!4177900)))

(declare-fun b!6945719 () Bool)

(assert (=> b!6945719 (= e!4177900 tp_is_empty!43179)))

(declare-fun b!6945722 () Bool)

(declare-fun tp!1914399 () Bool)

(declare-fun tp!1914395 () Bool)

(assert (=> b!6945722 (= e!4177900 (and tp!1914399 tp!1914395))))

(assert (= (and b!6944856 ((_ is ElementMatch!16977) (regTwo!34467 r2!6280))) b!6945719))

(assert (= (and b!6944856 ((_ is Concat!25822) (regTwo!34467 r2!6280))) b!6945720))

(assert (= (and b!6944856 ((_ is Star!16977) (regTwo!34467 r2!6280))) b!6945721))

(assert (= (and b!6944856 ((_ is Union!16977) (regTwo!34467 r2!6280))) b!6945722))

(declare-fun b!6945724 () Bool)

(declare-fun e!4177901 () Bool)

(declare-fun tp!1914402 () Bool)

(declare-fun tp!1914403 () Bool)

(assert (=> b!6945724 (= e!4177901 (and tp!1914402 tp!1914403))))

(declare-fun b!6945725 () Bool)

(declare-fun tp!1914401 () Bool)

(assert (=> b!6945725 (= e!4177901 tp!1914401)))

(assert (=> b!6944862 (= tp!1914279 e!4177901)))

(declare-fun b!6945723 () Bool)

(assert (=> b!6945723 (= e!4177901 tp_is_empty!43179)))

(declare-fun b!6945726 () Bool)

(declare-fun tp!1914404 () Bool)

(declare-fun tp!1914400 () Bool)

(assert (=> b!6945726 (= e!4177901 (and tp!1914404 tp!1914400))))

(assert (= (and b!6944862 ((_ is ElementMatch!16977) (regOne!34467 r1!6342))) b!6945723))

(assert (= (and b!6944862 ((_ is Concat!25822) (regOne!34467 r1!6342))) b!6945724))

(assert (= (and b!6944862 ((_ is Star!16977) (regOne!34467 r1!6342))) b!6945725))

(assert (= (and b!6944862 ((_ is Union!16977) (regOne!34467 r1!6342))) b!6945726))

(declare-fun b!6945728 () Bool)

(declare-fun e!4177902 () Bool)

(declare-fun tp!1914407 () Bool)

(declare-fun tp!1914408 () Bool)

(assert (=> b!6945728 (= e!4177902 (and tp!1914407 tp!1914408))))

(declare-fun b!6945729 () Bool)

(declare-fun tp!1914406 () Bool)

(assert (=> b!6945729 (= e!4177902 tp!1914406)))

(assert (=> b!6944862 (= tp!1914281 e!4177902)))

(declare-fun b!6945727 () Bool)

(assert (=> b!6945727 (= e!4177902 tp_is_empty!43179)))

(declare-fun b!6945730 () Bool)

(declare-fun tp!1914409 () Bool)

(declare-fun tp!1914405 () Bool)

(assert (=> b!6945730 (= e!4177902 (and tp!1914409 tp!1914405))))

(assert (= (and b!6944862 ((_ is ElementMatch!16977) (regTwo!34467 r1!6342))) b!6945727))

(assert (= (and b!6944862 ((_ is Concat!25822) (regTwo!34467 r1!6342))) b!6945728))

(assert (= (and b!6944862 ((_ is Star!16977) (regTwo!34467 r1!6342))) b!6945729))

(assert (= (and b!6944862 ((_ is Union!16977) (regTwo!34467 r1!6342))) b!6945730))

(declare-fun b!6945732 () Bool)

(declare-fun e!4177903 () Bool)

(declare-fun tp!1914412 () Bool)

(declare-fun tp!1914413 () Bool)

(assert (=> b!6945732 (= e!4177903 (and tp!1914412 tp!1914413))))

(declare-fun b!6945733 () Bool)

(declare-fun tp!1914411 () Bool)

(assert (=> b!6945733 (= e!4177903 tp!1914411)))

(assert (=> b!6944857 (= tp!1914282 e!4177903)))

(declare-fun b!6945731 () Bool)

(assert (=> b!6945731 (= e!4177903 tp_is_empty!43179)))

(declare-fun b!6945734 () Bool)

(declare-fun tp!1914414 () Bool)

(declare-fun tp!1914410 () Bool)

(assert (=> b!6945734 (= e!4177903 (and tp!1914414 tp!1914410))))

(assert (= (and b!6944857 ((_ is ElementMatch!16977) (regOne!34467 r3!135))) b!6945731))

(assert (= (and b!6944857 ((_ is Concat!25822) (regOne!34467 r3!135))) b!6945732))

(assert (= (and b!6944857 ((_ is Star!16977) (regOne!34467 r3!135))) b!6945733))

(assert (= (and b!6944857 ((_ is Union!16977) (regOne!34467 r3!135))) b!6945734))

(declare-fun b!6945736 () Bool)

(declare-fun e!4177904 () Bool)

(declare-fun tp!1914417 () Bool)

(declare-fun tp!1914418 () Bool)

(assert (=> b!6945736 (= e!4177904 (and tp!1914417 tp!1914418))))

(declare-fun b!6945737 () Bool)

(declare-fun tp!1914416 () Bool)

(assert (=> b!6945737 (= e!4177904 tp!1914416)))

(assert (=> b!6944857 (= tp!1914287 e!4177904)))

(declare-fun b!6945735 () Bool)

(assert (=> b!6945735 (= e!4177904 tp_is_empty!43179)))

(declare-fun b!6945738 () Bool)

(declare-fun tp!1914419 () Bool)

(declare-fun tp!1914415 () Bool)

(assert (=> b!6945738 (= e!4177904 (and tp!1914419 tp!1914415))))

(assert (= (and b!6944857 ((_ is ElementMatch!16977) (regTwo!34467 r3!135))) b!6945735))

(assert (= (and b!6944857 ((_ is Concat!25822) (regTwo!34467 r3!135))) b!6945736))

(assert (= (and b!6944857 ((_ is Star!16977) (regTwo!34467 r3!135))) b!6945737))

(assert (= (and b!6944857 ((_ is Union!16977) (regTwo!34467 r3!135))) b!6945738))

(declare-fun b!6945740 () Bool)

(declare-fun e!4177905 () Bool)

(declare-fun tp!1914422 () Bool)

(declare-fun tp!1914423 () Bool)

(assert (=> b!6945740 (= e!4177905 (and tp!1914422 tp!1914423))))

(declare-fun b!6945741 () Bool)

(declare-fun tp!1914421 () Bool)

(assert (=> b!6945741 (= e!4177905 tp!1914421)))

(assert (=> b!6944852 (= tp!1914291 e!4177905)))

(declare-fun b!6945739 () Bool)

(assert (=> b!6945739 (= e!4177905 tp_is_empty!43179)))

(declare-fun b!6945742 () Bool)

(declare-fun tp!1914424 () Bool)

(declare-fun tp!1914420 () Bool)

(assert (=> b!6945742 (= e!4177905 (and tp!1914424 tp!1914420))))

(assert (= (and b!6944852 ((_ is ElementMatch!16977) (regOne!34466 r3!135))) b!6945739))

(assert (= (and b!6944852 ((_ is Concat!25822) (regOne!34466 r3!135))) b!6945740))

(assert (= (and b!6944852 ((_ is Star!16977) (regOne!34466 r3!135))) b!6945741))

(assert (= (and b!6944852 ((_ is Union!16977) (regOne!34466 r3!135))) b!6945742))

(declare-fun b!6945744 () Bool)

(declare-fun e!4177906 () Bool)

(declare-fun tp!1914427 () Bool)

(declare-fun tp!1914428 () Bool)

(assert (=> b!6945744 (= e!4177906 (and tp!1914427 tp!1914428))))

(declare-fun b!6945745 () Bool)

(declare-fun tp!1914426 () Bool)

(assert (=> b!6945745 (= e!4177906 tp!1914426)))

(assert (=> b!6944852 (= tp!1914283 e!4177906)))

(declare-fun b!6945743 () Bool)

(assert (=> b!6945743 (= e!4177906 tp_is_empty!43179)))

(declare-fun b!6945746 () Bool)

(declare-fun tp!1914429 () Bool)

(declare-fun tp!1914425 () Bool)

(assert (=> b!6945746 (= e!4177906 (and tp!1914429 tp!1914425))))

(assert (= (and b!6944852 ((_ is ElementMatch!16977) (regTwo!34466 r3!135))) b!6945743))

(assert (= (and b!6944852 ((_ is Concat!25822) (regTwo!34466 r3!135))) b!6945744))

(assert (= (and b!6944852 ((_ is Star!16977) (regTwo!34466 r3!135))) b!6945745))

(assert (= (and b!6944852 ((_ is Union!16977) (regTwo!34466 r3!135))) b!6945746))

(declare-fun b!6945748 () Bool)

(declare-fun e!4177907 () Bool)

(declare-fun tp!1914432 () Bool)

(declare-fun tp!1914433 () Bool)

(assert (=> b!6945748 (= e!4177907 (and tp!1914432 tp!1914433))))

(declare-fun b!6945749 () Bool)

(declare-fun tp!1914431 () Bool)

(assert (=> b!6945749 (= e!4177907 tp!1914431)))

(assert (=> b!6944863 (= tp!1914285 e!4177907)))

(declare-fun b!6945747 () Bool)

(assert (=> b!6945747 (= e!4177907 tp_is_empty!43179)))

(declare-fun b!6945750 () Bool)

(declare-fun tp!1914434 () Bool)

(declare-fun tp!1914430 () Bool)

(assert (=> b!6945750 (= e!4177907 (and tp!1914434 tp!1914430))))

(assert (= (and b!6944863 ((_ is ElementMatch!16977) (reg!17306 r2!6280))) b!6945747))

(assert (= (and b!6944863 ((_ is Concat!25822) (reg!17306 r2!6280))) b!6945748))

(assert (= (and b!6944863 ((_ is Star!16977) (reg!17306 r2!6280))) b!6945749))

(assert (= (and b!6944863 ((_ is Union!16977) (reg!17306 r2!6280))) b!6945750))

(declare-fun b!6945752 () Bool)

(declare-fun e!4177908 () Bool)

(declare-fun tp!1914437 () Bool)

(declare-fun tp!1914438 () Bool)

(assert (=> b!6945752 (= e!4177908 (and tp!1914437 tp!1914438))))

(declare-fun b!6945753 () Bool)

(declare-fun tp!1914436 () Bool)

(assert (=> b!6945753 (= e!4177908 tp!1914436)))

(assert (=> b!6944858 (= tp!1914278 e!4177908)))

(declare-fun b!6945751 () Bool)

(assert (=> b!6945751 (= e!4177908 tp_is_empty!43179)))

(declare-fun b!6945754 () Bool)

(declare-fun tp!1914439 () Bool)

(declare-fun tp!1914435 () Bool)

(assert (=> b!6945754 (= e!4177908 (and tp!1914439 tp!1914435))))

(assert (= (and b!6944858 ((_ is ElementMatch!16977) (reg!17306 r3!135))) b!6945751))

(assert (= (and b!6944858 ((_ is Concat!25822) (reg!17306 r3!135))) b!6945752))

(assert (= (and b!6944858 ((_ is Star!16977) (reg!17306 r3!135))) b!6945753))

(assert (= (and b!6944858 ((_ is Union!16977) (reg!17306 r3!135))) b!6945754))

(declare-fun b!6945759 () Bool)

(declare-fun e!4177911 () Bool)

(declare-fun tp!1914442 () Bool)

(assert (=> b!6945759 (= e!4177911 (and tp_is_empty!43179 tp!1914442))))

(assert (=> b!6944853 (= tp!1914284 e!4177911)))

(assert (= (and b!6944853 ((_ is Cons!66606) (t!380473 s!14361))) b!6945759))

(declare-fun b!6945761 () Bool)

(declare-fun e!4177912 () Bool)

(declare-fun tp!1914445 () Bool)

(declare-fun tp!1914446 () Bool)

(assert (=> b!6945761 (= e!4177912 (and tp!1914445 tp!1914446))))

(declare-fun b!6945762 () Bool)

(declare-fun tp!1914444 () Bool)

(assert (=> b!6945762 (= e!4177912 tp!1914444)))

(assert (=> b!6944849 (= tp!1914277 e!4177912)))

(declare-fun b!6945760 () Bool)

(assert (=> b!6945760 (= e!4177912 tp_is_empty!43179)))

(declare-fun b!6945763 () Bool)

(declare-fun tp!1914447 () Bool)

(declare-fun tp!1914443 () Bool)

(assert (=> b!6945763 (= e!4177912 (and tp!1914447 tp!1914443))))

(assert (= (and b!6944849 ((_ is ElementMatch!16977) (reg!17306 r1!6342))) b!6945760))

(assert (= (and b!6944849 ((_ is Concat!25822) (reg!17306 r1!6342))) b!6945761))

(assert (= (and b!6944849 ((_ is Star!16977) (reg!17306 r1!6342))) b!6945762))

(assert (= (and b!6944849 ((_ is Union!16977) (reg!17306 r1!6342))) b!6945763))

(declare-fun b!6945765 () Bool)

(declare-fun e!4177913 () Bool)

(declare-fun tp!1914450 () Bool)

(declare-fun tp!1914451 () Bool)

(assert (=> b!6945765 (= e!4177913 (and tp!1914450 tp!1914451))))

(declare-fun b!6945766 () Bool)

(declare-fun tp!1914449 () Bool)

(assert (=> b!6945766 (= e!4177913 tp!1914449)))

(assert (=> b!6944860 (= tp!1914276 e!4177913)))

(declare-fun b!6945764 () Bool)

(assert (=> b!6945764 (= e!4177913 tp_is_empty!43179)))

(declare-fun b!6945767 () Bool)

(declare-fun tp!1914452 () Bool)

(declare-fun tp!1914448 () Bool)

(assert (=> b!6945767 (= e!4177913 (and tp!1914452 tp!1914448))))

(assert (= (and b!6944860 ((_ is ElementMatch!16977) (regOne!34466 r2!6280))) b!6945764))

(assert (= (and b!6944860 ((_ is Concat!25822) (regOne!34466 r2!6280))) b!6945765))

(assert (= (and b!6944860 ((_ is Star!16977) (regOne!34466 r2!6280))) b!6945766))

(assert (= (and b!6944860 ((_ is Union!16977) (regOne!34466 r2!6280))) b!6945767))

(declare-fun b!6945769 () Bool)

(declare-fun e!4177914 () Bool)

(declare-fun tp!1914455 () Bool)

(declare-fun tp!1914456 () Bool)

(assert (=> b!6945769 (= e!4177914 (and tp!1914455 tp!1914456))))

(declare-fun b!6945770 () Bool)

(declare-fun tp!1914454 () Bool)

(assert (=> b!6945770 (= e!4177914 tp!1914454)))

(assert (=> b!6944860 (= tp!1914288 e!4177914)))

(declare-fun b!6945768 () Bool)

(assert (=> b!6945768 (= e!4177914 tp_is_empty!43179)))

(declare-fun b!6945771 () Bool)

(declare-fun tp!1914457 () Bool)

(declare-fun tp!1914453 () Bool)

(assert (=> b!6945771 (= e!4177914 (and tp!1914457 tp!1914453))))

(assert (= (and b!6944860 ((_ is ElementMatch!16977) (regTwo!34466 r2!6280))) b!6945768))

(assert (= (and b!6944860 ((_ is Concat!25822) (regTwo!34466 r2!6280))) b!6945769))

(assert (= (and b!6944860 ((_ is Star!16977) (regTwo!34466 r2!6280))) b!6945770))

(assert (= (and b!6944860 ((_ is Union!16977) (regTwo!34466 r2!6280))) b!6945771))

(declare-fun b!6945773 () Bool)

(declare-fun e!4177915 () Bool)

(declare-fun tp!1914460 () Bool)

(declare-fun tp!1914461 () Bool)

(assert (=> b!6945773 (= e!4177915 (and tp!1914460 tp!1914461))))

(declare-fun b!6945774 () Bool)

(declare-fun tp!1914459 () Bool)

(assert (=> b!6945774 (= e!4177915 tp!1914459)))

(assert (=> b!6944850 (= tp!1914289 e!4177915)))

(declare-fun b!6945772 () Bool)

(assert (=> b!6945772 (= e!4177915 tp_is_empty!43179)))

(declare-fun b!6945775 () Bool)

(declare-fun tp!1914462 () Bool)

(declare-fun tp!1914458 () Bool)

(assert (=> b!6945775 (= e!4177915 (and tp!1914462 tp!1914458))))

(assert (= (and b!6944850 ((_ is ElementMatch!16977) (regOne!34466 r1!6342))) b!6945772))

(assert (= (and b!6944850 ((_ is Concat!25822) (regOne!34466 r1!6342))) b!6945773))

(assert (= (and b!6944850 ((_ is Star!16977) (regOne!34466 r1!6342))) b!6945774))

(assert (= (and b!6944850 ((_ is Union!16977) (regOne!34466 r1!6342))) b!6945775))

(declare-fun b!6945777 () Bool)

(declare-fun e!4177916 () Bool)

(declare-fun tp!1914465 () Bool)

(declare-fun tp!1914466 () Bool)

(assert (=> b!6945777 (= e!4177916 (and tp!1914465 tp!1914466))))

(declare-fun b!6945778 () Bool)

(declare-fun tp!1914464 () Bool)

(assert (=> b!6945778 (= e!4177916 tp!1914464)))

(assert (=> b!6944850 (= tp!1914280 e!4177916)))

(declare-fun b!6945776 () Bool)

(assert (=> b!6945776 (= e!4177916 tp_is_empty!43179)))

(declare-fun b!6945779 () Bool)

(declare-fun tp!1914467 () Bool)

(declare-fun tp!1914463 () Bool)

(assert (=> b!6945779 (= e!4177916 (and tp!1914467 tp!1914463))))

(assert (= (and b!6944850 ((_ is ElementMatch!16977) (regTwo!34466 r1!6342))) b!6945776))

(assert (= (and b!6944850 ((_ is Concat!25822) (regTwo!34466 r1!6342))) b!6945777))

(assert (= (and b!6944850 ((_ is Star!16977) (regTwo!34466 r1!6342))) b!6945778))

(assert (= (and b!6944850 ((_ is Union!16977) (regTwo!34466 r1!6342))) b!6945779))

(check-sat (not b!6945748) (not b!6944942) (not b!6945333) (not b!6945539) (not d!2168560) (not d!2168478) (not bm!630848) (not bm!630902) (not bm!630870) (not d!2168598) (not d!2168648) (not b!6945667) (not d!2168654) (not d!2168590) (not bm!630904) (not bm!630903) (not b!6945668) (not bm!630905) (not d!2168556) (not b!6945519) (not b!6945518) (not d!2168616) (not b!6945779) (not b!6945506) (not b!6945603) (not b!6945549) (not d!2168596) (not b!6945467) (not b!6945548) (not d!2168574) (not d!2168580) (not b!6945767) (not b!6945659) (not d!2168604) (not b!6945740) (not b!6945322) (not b!6945750) (not b!6945550) (not d!2168582) (not d!2168614) (not b!6945704) (not b!6945523) (not b!6945642) (not bm!630914) (not d!2168450) (not b!6945577) (not b!6945505) (not b!6945774) (not b!6945765) (not b!6945770) (not d!2168636) (not b!6945515) (not bm!630912) (not b!6945388) (not b!6945469) (not bm!630897) (not b!6945754) tp_is_empty!43179 (not b!6945387) (not b!6945736) (not b!6945573) (not b!6945632) (not b!6945762) (not d!2168640) (not b!6945737) (not b!6945617) (not d!2168606) (not d!2168632) (not b!6945670) (not bm!630915) (not b!6945732) (not b!6945693) (not b!6945624) (not b!6945628) (not d!2168628) (not b!6945323) (not b!6945722) (not b!6945534) (not b!6945726) (not b!6945561) (not b!6945235) (not b!6945631) (not b!6945598) (not b!6945692) (not bm!630901) (not b!6945749) (not b!6945470) (not b!6945473) (not b!6945717) (not d!2168620) (not bm!630900) (not d!2168534) (not b!6945618) (not b!6945524) (not b!6945175) (not bm!630846) (not d!2168644) (not b!6945729) (not d!2168594) (not b!6945609) (not d!2168448) (not b!6945522) (not d!2168570) (not b!6945721) (not b!6945716) (not b!6945180) (not d!2168586) (not b!6945547) (not b!6945734) (not b!6945669) (not b!6945325) (not b!6945587) (not b!6945728) (not b!6945733) (not b!6945725) (not b!6945694) (not d!2168618) (not b!6945746) (not d!2168526) (not b!6945703) (not b!6945635) (not b!6945575) (not d!2168444) (not b!6945769) (not bm!630917) (not b!6945504) (not b!6945332) (not d!2168658) (not d!2168466) (not b!6945398) (not b!6945608) (not b!6945562) (not b!6945777) (not b!6945564) (not b!6945651) (not b!6945718) (not b!6945684) (not bm!630920) (not b!6945559) (not b!6945720) (not b!6945678) (not b!6945679) (not b!6945724) (not bm!630906) (not b!6945752) (not b!6945471) (not b!6945533) (not bm!630895) (not b!6945745) (not bm!630898) (not b!6945558) (not b!6945581) (not b!6945771) (not d!2168510) (not b!6945525) (not d!2168588) (not bm!630891) (not b!6945695) (not b!6945327) (not d!2168622) (not b!6945775) (not bm!630916) (not b!6945689) (not b!6945592) (not d!2168662) (not d!2168610) (not b!6945563) (not b!6945761) (not b!6945606) (not b!6945730) (not b!6945574) (not b!6945629) (not b!6945738) (not b!6945572) (not d!2168600) (not b!6945744) (not b!6945578) (not b!6945329) (not d!2168602) (not b!6945516) (not bm!630919) (not b!6945507) (not bm!630899) (not b!6945742) (not d!2168630) (not b!6945234) (not b!6945763) (not b!6945773) (not b!6945753) (not bm!630896) (not b!6945664) (not bm!630911) (not d!2168660) (not d!2168558) (not b!6945326) (not b!6945544) (not b!6945766) (not bm!630871) (not b!6945466) (not bm!630908) (not b!6945607) (not d!2168592) (not b!6945633) (not b!6945741) (not b!6945759) (not b!6945778) (not bm!630918) (not b!6945579) (not d!2168584) (not b!6945403) (not bm!630892) (not d!2168576) (not bm!630909) (not d!2168608))
(check-sat)
