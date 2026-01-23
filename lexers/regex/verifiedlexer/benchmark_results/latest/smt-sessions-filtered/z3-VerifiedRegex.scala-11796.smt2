; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664578 () Bool)

(assert start!664578)

(declare-fun b!6897133 () Bool)

(assert (=> b!6897133 true))

(assert (=> b!6897133 true))

(assert (=> b!6897133 true))

(declare-fun lambda!391120 () Int)

(declare-fun lambda!391119 () Int)

(assert (=> b!6897133 (not (= lambda!391120 lambda!391119))))

(assert (=> b!6897133 true))

(assert (=> b!6897133 true))

(assert (=> b!6897133 true))

(declare-fun bs!1841141 () Bool)

(declare-fun b!6897134 () Bool)

(assert (= bs!1841141 (and b!6897134 b!6897133)))

(declare-datatypes ((C!33948 0))(
  ( (C!33949 (val!26676 Int)) )
))
(declare-datatypes ((Regex!16839 0))(
  ( (ElementMatch!16839 (c!1281915 C!33948)) (Concat!25684 (regOne!34190 Regex!16839) (regTwo!34190 Regex!16839)) (EmptyExpr!16839) (Star!16839 (reg!17168 Regex!16839)) (EmptyLang!16839) (Union!16839 (regOne!34191 Regex!16839) (regTwo!34191 Regex!16839)) )
))
(declare-fun r1!6342 () Regex!16839)

(declare-fun r3!135 () Regex!16839)

(declare-fun lt!2464217 () Regex!16839)

(declare-datatypes ((List!66596 0))(
  ( (Nil!66472) (Cons!66472 (h!72920 C!33948) (t!380339 List!66596)) )
))
(declare-datatypes ((tuple2!67412 0))(
  ( (tuple2!67413 (_1!37009 List!66596) (_2!37009 List!66596)) )
))
(declare-fun lt!2464213 () tuple2!67412)

(declare-fun r2!6280 () Regex!16839)

(declare-fun lambda!391121 () Int)

(declare-fun s!14361 () List!66596)

(assert (=> bs!1841141 (= (and (= (_2!37009 lt!2464213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464217)) (= lambda!391121 lambda!391119))))

(assert (=> bs!1841141 (not (= lambda!391121 lambda!391120))))

(assert (=> b!6897134 true))

(assert (=> b!6897134 true))

(assert (=> b!6897134 true))

(declare-fun lambda!391122 () Int)

(assert (=> bs!1841141 (not (= lambda!391122 lambda!391119))))

(assert (=> bs!1841141 (= (and (= (_2!37009 lt!2464213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464217)) (= lambda!391122 lambda!391120))))

(assert (=> b!6897134 (not (= lambda!391122 lambda!391121))))

(assert (=> b!6897134 true))

(assert (=> b!6897134 true))

(assert (=> b!6897134 true))

(declare-fun b!6897130 () Bool)

(declare-fun e!4154186 () Bool)

(declare-fun tp!1898608 () Bool)

(declare-fun tp!1898611 () Bool)

(assert (=> b!6897130 (= e!4154186 (and tp!1898608 tp!1898611))))

(declare-fun b!6897131 () Bool)

(declare-fun e!4154182 () Bool)

(declare-fun tp!1898605 () Bool)

(declare-fun tp!1898612 () Bool)

(assert (=> b!6897131 (= e!4154182 (and tp!1898605 tp!1898612))))

(declare-fun b!6897132 () Bool)

(declare-fun res!2812047 () Bool)

(declare-fun e!4154179 () Bool)

(assert (=> b!6897132 (=> res!2812047 e!4154179)))

(declare-fun matchR!8984 (Regex!16839 List!66596) Bool)

(assert (=> b!6897132 (= res!2812047 (not (matchR!8984 lt!2464217 (_2!37009 lt!2464213))))))

(declare-fun e!4154180 () Bool)

(assert (=> b!6897133 (= e!4154180 e!4154179)))

(declare-fun res!2812048 () Bool)

(assert (=> b!6897133 (=> res!2812048 e!4154179)))

(declare-fun lt!2464214 () Bool)

(assert (=> b!6897133 (= res!2812048 (not lt!2464214))))

(declare-fun matchRSpec!3902 (Regex!16839 List!66596) Bool)

(assert (=> b!6897133 (= lt!2464214 (matchRSpec!3902 r1!6342 (_1!37009 lt!2464213)))))

(assert (=> b!6897133 (= lt!2464214 (matchR!8984 r1!6342 (_1!37009 lt!2464213)))))

(declare-datatypes ((Unit!160398 0))(
  ( (Unit!160399) )
))
(declare-fun lt!2464220 () Unit!160398)

(declare-fun mainMatchTheorem!3902 (Regex!16839 List!66596) Unit!160398)

(assert (=> b!6897133 (= lt!2464220 (mainMatchTheorem!3902 r1!6342 (_1!37009 lt!2464213)))))

(declare-datatypes ((Option!16618 0))(
  ( (None!16617) (Some!16617 (v!52889 tuple2!67412)) )
))
(declare-fun lt!2464212 () Option!16618)

(declare-fun get!23209 (Option!16618) tuple2!67412)

(assert (=> b!6897133 (= lt!2464213 (get!23209 lt!2464212))))

(declare-fun Exists!3847 (Int) Bool)

(assert (=> b!6897133 (= (Exists!3847 lambda!391119) (Exists!3847 lambda!391120))))

(declare-fun lt!2464225 () Unit!160398)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2320 (Regex!16839 Regex!16839 List!66596) Unit!160398)

(assert (=> b!6897133 (= lt!2464225 (lemmaExistCutMatchRandMatchRSpecEquivalent!2320 r1!6342 lt!2464217 s!14361))))

(assert (=> b!6897133 (Exists!3847 lambda!391119)))

(declare-fun lt!2464215 () Unit!160398)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2794 (Regex!16839 Regex!16839 List!66596) Unit!160398)

(assert (=> b!6897133 (= lt!2464215 (lemmaFindConcatSeparationEquivalentToExists!2794 r1!6342 lt!2464217 s!14361))))

(assert (=> b!6897134 (= e!4154179 true)))

(declare-fun lt!2464227 () Bool)

(declare-fun lt!2464216 () Option!16618)

(assert (=> b!6897134 (= lt!2464227 (matchR!8984 r2!6280 (_1!37009 (get!23209 lt!2464216))))))

(assert (=> b!6897134 (= (Exists!3847 lambda!391121) (Exists!3847 lambda!391122))))

(declare-fun lt!2464219 () Unit!160398)

(assert (=> b!6897134 (= lt!2464219 (lemmaExistCutMatchRandMatchRSpecEquivalent!2320 r2!6280 r3!135 (_2!37009 lt!2464213)))))

(declare-fun isDefined!13321 (Option!16618) Bool)

(assert (=> b!6897134 (= (isDefined!13321 lt!2464216) (Exists!3847 lambda!391121))))

(declare-fun findConcatSeparation!3032 (Regex!16839 Regex!16839 List!66596 List!66596 List!66596) Option!16618)

(assert (=> b!6897134 (= lt!2464216 (findConcatSeparation!3032 r2!6280 r3!135 Nil!66472 (_2!37009 lt!2464213) (_2!37009 lt!2464213)))))

(declare-fun lt!2464222 () Unit!160398)

(assert (=> b!6897134 (= lt!2464222 (lemmaFindConcatSeparationEquivalentToExists!2794 r2!6280 r3!135 (_2!37009 lt!2464213)))))

(assert (=> b!6897134 (matchRSpec!3902 lt!2464217 (_2!37009 lt!2464213))))

(declare-fun lt!2464218 () Unit!160398)

(assert (=> b!6897134 (= lt!2464218 (mainMatchTheorem!3902 lt!2464217 (_2!37009 lt!2464213)))))

(declare-fun b!6897135 () Bool)

(declare-fun res!2812044 () Bool)

(declare-fun e!4154183 () Bool)

(assert (=> b!6897135 (=> (not res!2812044) (not e!4154183))))

(declare-fun validRegex!8547 (Regex!16839) Bool)

(assert (=> b!6897135 (= res!2812044 (validRegex!8547 r2!6280))))

(declare-fun b!6897136 () Bool)

(declare-fun tp!1898613 () Bool)

(assert (=> b!6897136 (= e!4154186 tp!1898613)))

(declare-fun b!6897137 () Bool)

(declare-fun e!4154181 () Bool)

(declare-fun tp_is_empty!42903 () Bool)

(declare-fun tp!1898600 () Bool)

(assert (=> b!6897137 (= e!4154181 (and tp_is_empty!42903 tp!1898600))))

(declare-fun b!6897138 () Bool)

(declare-fun res!2812050 () Bool)

(assert (=> b!6897138 (=> (not res!2812050) (not e!4154183))))

(assert (=> b!6897138 (= res!2812050 (validRegex!8547 r3!135))))

(declare-fun b!6897139 () Bool)

(declare-fun tp!1898614 () Bool)

(assert (=> b!6897139 (= e!4154182 tp!1898614)))

(declare-fun b!6897140 () Bool)

(assert (=> b!6897140 (= e!4154186 tp_is_empty!42903)))

(declare-fun b!6897141 () Bool)

(declare-fun tp!1898602 () Bool)

(declare-fun tp!1898606 () Bool)

(assert (=> b!6897141 (= e!4154182 (and tp!1898602 tp!1898606))))

(declare-fun b!6897142 () Bool)

(declare-fun e!4154184 () Bool)

(declare-fun tp!1898604 () Bool)

(declare-fun tp!1898603 () Bool)

(assert (=> b!6897142 (= e!4154184 (and tp!1898604 tp!1898603))))

(declare-fun res!2812046 () Bool)

(assert (=> start!664578 (=> (not res!2812046) (not e!4154183))))

(assert (=> start!664578 (= res!2812046 (validRegex!8547 r1!6342))))

(assert (=> start!664578 e!4154183))

(assert (=> start!664578 e!4154186))

(assert (=> start!664578 e!4154184))

(assert (=> start!664578 e!4154182))

(assert (=> start!664578 e!4154181))

(declare-fun b!6897143 () Bool)

(assert (=> b!6897143 (= e!4154184 tp_is_empty!42903)))

(declare-fun b!6897144 () Bool)

(declare-fun tp!1898610 () Bool)

(declare-fun tp!1898601 () Bool)

(assert (=> b!6897144 (= e!4154186 (and tp!1898610 tp!1898601))))

(declare-fun b!6897145 () Bool)

(declare-fun e!4154185 () Bool)

(assert (=> b!6897145 (= e!4154183 (not e!4154185))))

(declare-fun res!2812049 () Bool)

(assert (=> b!6897145 (=> res!2812049 e!4154185)))

(declare-fun lt!2464211 () Bool)

(assert (=> b!6897145 (= res!2812049 lt!2464211)))

(declare-fun lt!2464223 () Regex!16839)

(assert (=> b!6897145 (= (matchR!8984 lt!2464223 s!14361) (matchRSpec!3902 lt!2464223 s!14361))))

(declare-fun lt!2464224 () Unit!160398)

(assert (=> b!6897145 (= lt!2464224 (mainMatchTheorem!3902 lt!2464223 s!14361))))

(declare-fun lt!2464226 () Regex!16839)

(assert (=> b!6897145 (= lt!2464211 (matchRSpec!3902 lt!2464226 s!14361))))

(assert (=> b!6897145 (= lt!2464211 (matchR!8984 lt!2464226 s!14361))))

(declare-fun lt!2464221 () Unit!160398)

(assert (=> b!6897145 (= lt!2464221 (mainMatchTheorem!3902 lt!2464226 s!14361))))

(assert (=> b!6897145 (= lt!2464223 (Concat!25684 r1!6342 lt!2464217))))

(assert (=> b!6897145 (= lt!2464217 (Concat!25684 r2!6280 r3!135))))

(assert (=> b!6897145 (= lt!2464226 (Concat!25684 (Concat!25684 r1!6342 r2!6280) r3!135))))

(declare-fun b!6897146 () Bool)

(assert (=> b!6897146 (= e!4154182 tp_is_empty!42903)))

(declare-fun b!6897147 () Bool)

(assert (=> b!6897147 (= e!4154185 e!4154180)))

(declare-fun res!2812045 () Bool)

(assert (=> b!6897147 (=> res!2812045 e!4154180)))

(assert (=> b!6897147 (= res!2812045 (not (isDefined!13321 lt!2464212)))))

(assert (=> b!6897147 (= lt!2464212 (findConcatSeparation!3032 r1!6342 lt!2464217 Nil!66472 s!14361 s!14361))))

(declare-fun b!6897148 () Bool)

(declare-fun tp!1898615 () Bool)

(declare-fun tp!1898607 () Bool)

(assert (=> b!6897148 (= e!4154184 (and tp!1898615 tp!1898607))))

(declare-fun b!6897149 () Bool)

(declare-fun tp!1898609 () Bool)

(assert (=> b!6897149 (= e!4154184 tp!1898609)))

(assert (= (and start!664578 res!2812046) b!6897135))

(assert (= (and b!6897135 res!2812044) b!6897138))

(assert (= (and b!6897138 res!2812050) b!6897145))

(assert (= (and b!6897145 (not res!2812049)) b!6897147))

(assert (= (and b!6897147 (not res!2812045)) b!6897133))

(assert (= (and b!6897133 (not res!2812048)) b!6897132))

(assert (= (and b!6897132 (not res!2812047)) b!6897134))

(get-info :version)

(assert (= (and start!664578 ((_ is ElementMatch!16839) r1!6342)) b!6897140))

(assert (= (and start!664578 ((_ is Concat!25684) r1!6342)) b!6897144))

(assert (= (and start!664578 ((_ is Star!16839) r1!6342)) b!6897136))

(assert (= (and start!664578 ((_ is Union!16839) r1!6342)) b!6897130))

(assert (= (and start!664578 ((_ is ElementMatch!16839) r2!6280)) b!6897143))

(assert (= (and start!664578 ((_ is Concat!25684) r2!6280)) b!6897148))

(assert (= (and start!664578 ((_ is Star!16839) r2!6280)) b!6897149))

(assert (= (and start!664578 ((_ is Union!16839) r2!6280)) b!6897142))

(assert (= (and start!664578 ((_ is ElementMatch!16839) r3!135)) b!6897146))

(assert (= (and start!664578 ((_ is Concat!25684) r3!135)) b!6897131))

(assert (= (and start!664578 ((_ is Star!16839) r3!135)) b!6897139))

(assert (= (and start!664578 ((_ is Union!16839) r3!135)) b!6897141))

(assert (= (and start!664578 ((_ is Cons!66472) s!14361)) b!6897137))

(declare-fun m!7615812 () Bool)

(assert (=> b!6897135 m!7615812))

(declare-fun m!7615814 () Bool)

(assert (=> b!6897147 m!7615814))

(declare-fun m!7615816 () Bool)

(assert (=> b!6897147 m!7615816))

(declare-fun m!7615818 () Bool)

(assert (=> b!6897145 m!7615818))

(declare-fun m!7615820 () Bool)

(assert (=> b!6897145 m!7615820))

(declare-fun m!7615822 () Bool)

(assert (=> b!6897145 m!7615822))

(declare-fun m!7615824 () Bool)

(assert (=> b!6897145 m!7615824))

(declare-fun m!7615826 () Bool)

(assert (=> b!6897145 m!7615826))

(declare-fun m!7615828 () Bool)

(assert (=> b!6897145 m!7615828))

(declare-fun m!7615830 () Bool)

(assert (=> b!6897132 m!7615830))

(declare-fun m!7615832 () Bool)

(assert (=> b!6897134 m!7615832))

(declare-fun m!7615834 () Bool)

(assert (=> b!6897134 m!7615834))

(declare-fun m!7615836 () Bool)

(assert (=> b!6897134 m!7615836))

(declare-fun m!7615838 () Bool)

(assert (=> b!6897134 m!7615838))

(declare-fun m!7615840 () Bool)

(assert (=> b!6897134 m!7615840))

(declare-fun m!7615842 () Bool)

(assert (=> b!6897134 m!7615842))

(assert (=> b!6897134 m!7615840))

(declare-fun m!7615844 () Bool)

(assert (=> b!6897134 m!7615844))

(declare-fun m!7615846 () Bool)

(assert (=> b!6897134 m!7615846))

(declare-fun m!7615848 () Bool)

(assert (=> b!6897134 m!7615848))

(declare-fun m!7615850 () Bool)

(assert (=> b!6897134 m!7615850))

(declare-fun m!7615852 () Bool)

(assert (=> start!664578 m!7615852))

(declare-fun m!7615854 () Bool)

(assert (=> b!6897138 m!7615854))

(declare-fun m!7615856 () Bool)

(assert (=> b!6897133 m!7615856))

(declare-fun m!7615858 () Bool)

(assert (=> b!6897133 m!7615858))

(declare-fun m!7615860 () Bool)

(assert (=> b!6897133 m!7615860))

(declare-fun m!7615862 () Bool)

(assert (=> b!6897133 m!7615862))

(assert (=> b!6897133 m!7615858))

(declare-fun m!7615864 () Bool)

(assert (=> b!6897133 m!7615864))

(declare-fun m!7615866 () Bool)

(assert (=> b!6897133 m!7615866))

(declare-fun m!7615868 () Bool)

(assert (=> b!6897133 m!7615868))

(declare-fun m!7615870 () Bool)

(assert (=> b!6897133 m!7615870))

(check-sat (not b!6897137) (not b!6897135) (not b!6897149) (not b!6897139) (not b!6897144) (not b!6897142) (not b!6897136) (not b!6897148) (not b!6897138) (not start!664578) (not b!6897134) (not b!6897145) (not b!6897131) (not b!6897133) (not b!6897130) (not b!6897132) tp_is_empty!42903 (not b!6897141) (not b!6897147))
(check-sat)
