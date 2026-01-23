; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663970 () Bool)

(assert start!663970)

(declare-fun b!6883215 () Bool)

(assert (=> b!6883215 true))

(assert (=> b!6883215 true))

(assert (=> b!6883215 true))

(declare-fun lambda!389644 () Int)

(declare-fun lambda!389643 () Int)

(assert (=> b!6883215 (not (= lambda!389644 lambda!389643))))

(assert (=> b!6883215 true))

(assert (=> b!6883215 true))

(assert (=> b!6883215 true))

(declare-fun b!6883200 () Bool)

(declare-fun e!4147673 () Bool)

(declare-fun tp!1893231 () Bool)

(declare-fun tp!1893226 () Bool)

(assert (=> b!6883200 (= e!4147673 (and tp!1893231 tp!1893226))))

(declare-fun b!6883201 () Bool)

(declare-fun e!4147672 () Bool)

(declare-fun tp!1893239 () Bool)

(declare-fun tp!1893229 () Bool)

(assert (=> b!6883201 (= e!4147672 (and tp!1893239 tp!1893229))))

(declare-fun b!6883202 () Bool)

(declare-fun tp!1893237 () Bool)

(declare-fun tp!1893232 () Bool)

(assert (=> b!6883202 (= e!4147672 (and tp!1893237 tp!1893232))))

(declare-fun b!6883203 () Bool)

(declare-fun tp!1893235 () Bool)

(assert (=> b!6883203 (= e!4147673 tp!1893235)))

(declare-fun b!6883204 () Bool)

(declare-fun e!4147670 () Bool)

(declare-fun e!4147668 () Bool)

(assert (=> b!6883204 (= e!4147670 (not e!4147668))))

(declare-fun res!2805859 () Bool)

(assert (=> b!6883204 (=> res!2805859 e!4147668)))

(declare-fun lt!2460127 () Bool)

(assert (=> b!6883204 (= res!2805859 (not lt!2460127))))

(declare-datatypes ((C!33812 0))(
  ( (C!33813 (val!26608 Int)) )
))
(declare-datatypes ((Regex!16771 0))(
  ( (ElementMatch!16771 (c!1280373 C!33812)) (Concat!25616 (regOne!34054 Regex!16771) (regTwo!34054 Regex!16771)) (EmptyExpr!16771) (Star!16771 (reg!17100 Regex!16771)) (EmptyLang!16771) (Union!16771 (regOne!34055 Regex!16771) (regTwo!34055 Regex!16771)) )
))
(declare-fun lt!2460137 () Regex!16771)

(declare-datatypes ((List!66528 0))(
  ( (Nil!66404) (Cons!66404 (h!72852 C!33812) (t!380271 List!66528)) )
))
(declare-fun s!14361 () List!66528)

(declare-fun matchR!8916 (Regex!16771 List!66528) Bool)

(declare-fun matchRSpec!3834 (Regex!16771 List!66528) Bool)

(assert (=> b!6883204 (= (matchR!8916 lt!2460137 s!14361) (matchRSpec!3834 lt!2460137 s!14361))))

(declare-datatypes ((Unit!160262 0))(
  ( (Unit!160263) )
))
(declare-fun lt!2460130 () Unit!160262)

(declare-fun mainMatchTheorem!3834 (Regex!16771 List!66528) Unit!160262)

(assert (=> b!6883204 (= lt!2460130 (mainMatchTheorem!3834 lt!2460137 s!14361))))

(declare-fun lt!2460125 () Regex!16771)

(assert (=> b!6883204 (= lt!2460127 (matchRSpec!3834 lt!2460125 s!14361))))

(assert (=> b!6883204 (= lt!2460127 (matchR!8916 lt!2460125 s!14361))))

(declare-fun lt!2460135 () Unit!160262)

(assert (=> b!6883204 (= lt!2460135 (mainMatchTheorem!3834 lt!2460125 s!14361))))

(declare-fun r1!6342 () Regex!16771)

(declare-fun r3!135 () Regex!16771)

(declare-fun r2!6280 () Regex!16771)

(assert (=> b!6883204 (= lt!2460137 (Concat!25616 r1!6342 (Concat!25616 r2!6280 r3!135)))))

(declare-fun lt!2460134 () Regex!16771)

(assert (=> b!6883204 (= lt!2460125 (Concat!25616 lt!2460134 r3!135))))

(assert (=> b!6883204 (= lt!2460134 (Concat!25616 r1!6342 r2!6280))))

(declare-fun res!2805857 () Bool)

(assert (=> start!663970 (=> (not res!2805857) (not e!4147670))))

(declare-fun validRegex!8479 (Regex!16771) Bool)

(assert (=> start!663970 (= res!2805857 (validRegex!8479 r1!6342))))

(assert (=> start!663970 e!4147670))

(assert (=> start!663970 e!4147672))

(declare-fun e!4147674 () Bool)

(assert (=> start!663970 e!4147674))

(assert (=> start!663970 e!4147673))

(declare-fun e!4147669 () Bool)

(assert (=> start!663970 e!4147669))

(declare-fun b!6883205 () Bool)

(declare-fun tp!1893233 () Bool)

(assert (=> b!6883205 (= e!4147672 tp!1893233)))

(declare-fun b!6883206 () Bool)

(declare-fun res!2805856 () Bool)

(assert (=> b!6883206 (=> (not res!2805856) (not e!4147670))))

(assert (=> b!6883206 (= res!2805856 (validRegex!8479 r2!6280))))

(declare-fun b!6883207 () Bool)

(declare-fun tp!1893234 () Bool)

(declare-fun tp!1893236 () Bool)

(assert (=> b!6883207 (= e!4147673 (and tp!1893234 tp!1893236))))

(declare-fun b!6883208 () Bool)

(declare-fun tp!1893228 () Bool)

(assert (=> b!6883208 (= e!4147674 tp!1893228)))

(declare-fun b!6883209 () Bool)

(declare-fun tp_is_empty!42767 () Bool)

(declare-fun tp!1893230 () Bool)

(assert (=> b!6883209 (= e!4147669 (and tp_is_empty!42767 tp!1893230))))

(declare-fun b!6883210 () Bool)

(declare-fun tp!1893238 () Bool)

(declare-fun tp!1893225 () Bool)

(assert (=> b!6883210 (= e!4147674 (and tp!1893238 tp!1893225))))

(declare-fun b!6883211 () Bool)

(declare-fun tp!1893227 () Bool)

(declare-fun tp!1893224 () Bool)

(assert (=> b!6883211 (= e!4147674 (and tp!1893227 tp!1893224))))

(declare-fun b!6883212 () Bool)

(assert (=> b!6883212 (= e!4147672 tp_is_empty!42767)))

(declare-fun b!6883213 () Bool)

(declare-fun res!2805860 () Bool)

(assert (=> b!6883213 (=> (not res!2805860) (not e!4147670))))

(assert (=> b!6883213 (= res!2805860 (validRegex!8479 r3!135))))

(declare-fun b!6883214 () Bool)

(assert (=> b!6883214 (= e!4147674 tp_is_empty!42767)))

(declare-fun e!4147671 () Bool)

(assert (=> b!6883215 (= e!4147668 e!4147671)))

(declare-fun res!2805858 () Bool)

(assert (=> b!6883215 (=> res!2805858 e!4147671)))

(declare-fun lt!2460132 () Bool)

(assert (=> b!6883215 (= res!2805858 (not lt!2460132))))

(declare-datatypes ((tuple2!67288 0))(
  ( (tuple2!67289 (_1!36947 List!66528) (_2!36947 List!66528)) )
))
(declare-fun lt!2460133 () tuple2!67288)

(assert (=> b!6883215 (= lt!2460132 (matchRSpec!3834 lt!2460134 (_1!36947 lt!2460133)))))

(assert (=> b!6883215 (= lt!2460132 (matchR!8916 lt!2460134 (_1!36947 lt!2460133)))))

(declare-fun lt!2460126 () Unit!160262)

(assert (=> b!6883215 (= lt!2460126 (mainMatchTheorem!3834 lt!2460134 (_1!36947 lt!2460133)))))

(declare-datatypes ((Option!16556 0))(
  ( (None!16555) (Some!16555 (v!52827 tuple2!67288)) )
))
(declare-fun lt!2460136 () Option!16556)

(declare-fun get!23119 (Option!16556) tuple2!67288)

(assert (=> b!6883215 (= lt!2460133 (get!23119 lt!2460136))))

(declare-fun Exists!3783 (Int) Bool)

(assert (=> b!6883215 (= (Exists!3783 lambda!389643) (Exists!3783 lambda!389644))))

(declare-fun lt!2460131 () Unit!160262)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2262 (Regex!16771 Regex!16771 List!66528) Unit!160262)

(assert (=> b!6883215 (= lt!2460131 (lemmaExistCutMatchRandMatchRSpecEquivalent!2262 lt!2460134 r3!135 s!14361))))

(declare-fun isDefined!13259 (Option!16556) Bool)

(assert (=> b!6883215 (= (isDefined!13259 lt!2460136) (Exists!3783 lambda!389643))))

(declare-fun findConcatSeparation!2970 (Regex!16771 Regex!16771 List!66528 List!66528 List!66528) Option!16556)

(assert (=> b!6883215 (= lt!2460136 (findConcatSeparation!2970 lt!2460134 r3!135 Nil!66404 s!14361 s!14361))))

(declare-fun lt!2460129 () Unit!160262)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2734 (Regex!16771 Regex!16771 List!66528) Unit!160262)

(assert (=> b!6883215 (= lt!2460129 (lemmaFindConcatSeparationEquivalentToExists!2734 lt!2460134 r3!135 s!14361))))

(declare-fun b!6883216 () Bool)

(assert (=> b!6883216 (= e!4147671 true)))

(declare-fun lt!2460128 () Bool)

(assert (=> b!6883216 (= lt!2460128 (matchR!8916 r3!135 (_2!36947 lt!2460133)))))

(declare-fun b!6883217 () Bool)

(assert (=> b!6883217 (= e!4147673 tp_is_empty!42767)))

(assert (= (and start!663970 res!2805857) b!6883206))

(assert (= (and b!6883206 res!2805856) b!6883213))

(assert (= (and b!6883213 res!2805860) b!6883204))

(assert (= (and b!6883204 (not res!2805859)) b!6883215))

(assert (= (and b!6883215 (not res!2805858)) b!6883216))

(get-info :version)

(assert (= (and start!663970 ((_ is ElementMatch!16771) r1!6342)) b!6883212))

(assert (= (and start!663970 ((_ is Concat!25616) r1!6342)) b!6883201))

(assert (= (and start!663970 ((_ is Star!16771) r1!6342)) b!6883205))

(assert (= (and start!663970 ((_ is Union!16771) r1!6342)) b!6883202))

(assert (= (and start!663970 ((_ is ElementMatch!16771) r2!6280)) b!6883214))

(assert (= (and start!663970 ((_ is Concat!25616) r2!6280)) b!6883210))

(assert (= (and start!663970 ((_ is Star!16771) r2!6280)) b!6883208))

(assert (= (and start!663970 ((_ is Union!16771) r2!6280)) b!6883211))

(assert (= (and start!663970 ((_ is ElementMatch!16771) r3!135)) b!6883217))

(assert (= (and start!663970 ((_ is Concat!25616) r3!135)) b!6883207))

(assert (= (and start!663970 ((_ is Star!16771) r3!135)) b!6883203))

(assert (= (and start!663970 ((_ is Union!16771) r3!135)) b!6883200))

(assert (= (and start!663970 ((_ is Cons!66404) s!14361)) b!6883209))

(declare-fun m!7607264 () Bool)

(assert (=> b!6883206 m!7607264))

(declare-fun m!7607266 () Bool)

(assert (=> b!6883213 m!7607266))

(declare-fun m!7607268 () Bool)

(assert (=> b!6883204 m!7607268))

(declare-fun m!7607270 () Bool)

(assert (=> b!6883204 m!7607270))

(declare-fun m!7607272 () Bool)

(assert (=> b!6883204 m!7607272))

(declare-fun m!7607274 () Bool)

(assert (=> b!6883204 m!7607274))

(declare-fun m!7607276 () Bool)

(assert (=> b!6883204 m!7607276))

(declare-fun m!7607278 () Bool)

(assert (=> b!6883204 m!7607278))

(declare-fun m!7607280 () Bool)

(assert (=> b!6883215 m!7607280))

(declare-fun m!7607282 () Bool)

(assert (=> b!6883215 m!7607282))

(declare-fun m!7607284 () Bool)

(assert (=> b!6883215 m!7607284))

(declare-fun m!7607286 () Bool)

(assert (=> b!6883215 m!7607286))

(declare-fun m!7607288 () Bool)

(assert (=> b!6883215 m!7607288))

(declare-fun m!7607290 () Bool)

(assert (=> b!6883215 m!7607290))

(declare-fun m!7607292 () Bool)

(assert (=> b!6883215 m!7607292))

(declare-fun m!7607294 () Bool)

(assert (=> b!6883215 m!7607294))

(declare-fun m!7607296 () Bool)

(assert (=> b!6883215 m!7607296))

(declare-fun m!7607298 () Bool)

(assert (=> b!6883215 m!7607298))

(assert (=> b!6883215 m!7607292))

(declare-fun m!7607300 () Bool)

(assert (=> b!6883216 m!7607300))

(declare-fun m!7607302 () Bool)

(assert (=> start!663970 m!7607302))

(check-sat (not b!6883202) (not b!6883211) (not b!6883213) (not b!6883208) tp_is_empty!42767 (not b!6883207) (not b!6883204) (not b!6883210) (not start!663970) (not b!6883201) (not b!6883205) (not b!6883200) (not b!6883216) (not b!6883206) (not b!6883209) (not b!6883203) (not b!6883215))
(check-sat)
