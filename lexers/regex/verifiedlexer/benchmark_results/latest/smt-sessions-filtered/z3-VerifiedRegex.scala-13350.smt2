; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724178 () Bool)

(assert start!724178)

(declare-fun b!7468233 () Bool)

(assert (=> b!7468233 true))

(assert (=> b!7468233 true))

(assert (=> b!7468233 true))

(declare-fun lambda!462335 () Int)

(declare-fun lambda!462334 () Int)

(assert (=> b!7468233 (not (= lambda!462335 lambda!462334))))

(assert (=> b!7468233 true))

(assert (=> b!7468233 true))

(assert (=> b!7468233 true))

(declare-fun bs!1930721 () Bool)

(declare-fun b!7468221 () Bool)

(assert (= bs!1930721 (and b!7468221 b!7468233)))

(declare-datatypes ((C!39400 0))(
  ( (C!39401 (val!30098 Int)) )
))
(declare-datatypes ((Regex!19563 0))(
  ( (ElementMatch!19563 (c!1380168 C!39400)) (Concat!28408 (regOne!39638 Regex!19563) (regTwo!39638 Regex!19563)) (EmptyExpr!19563) (Star!19563 (reg!19892 Regex!19563)) (EmptyLang!19563) (Union!19563 (regOne!39639 Regex!19563) (regTwo!39639 Regex!19563)) )
))
(declare-fun r1!5845 () Regex!19563)

(declare-fun lambda!462336 () Int)

(declare-fun lt!2624655 () Regex!19563)

(assert (=> bs!1930721 (= (= r1!5845 lt!2624655) (= lambda!462336 lambda!462334))))

(assert (=> bs!1930721 (not (= lambda!462336 lambda!462335))))

(assert (=> b!7468221 true))

(assert (=> b!7468221 true))

(assert (=> b!7468221 true))

(declare-fun lambda!462337 () Int)

(assert (=> bs!1930721 (not (= lambda!462337 lambda!462334))))

(assert (=> bs!1930721 (= (= r1!5845 lt!2624655) (= lambda!462337 lambda!462335))))

(assert (=> b!7468221 (not (= lambda!462337 lambda!462336))))

(assert (=> b!7468221 true))

(assert (=> b!7468221 true))

(assert (=> b!7468221 true))

(declare-fun b!7468213 () Bool)

(declare-fun e!4456088 () Bool)

(declare-fun e!4456086 () Bool)

(assert (=> b!7468213 (= e!4456088 (not e!4456086))))

(declare-fun res!2995865 () Bool)

(assert (=> b!7468213 (=> res!2995865 e!4456086)))

(declare-fun lt!2624644 () Bool)

(assert (=> b!7468213 (= res!2995865 lt!2624644)))

(declare-fun lt!2624646 () Bool)

(declare-fun lt!2624653 () Regex!19563)

(declare-datatypes ((List!72279 0))(
  ( (Nil!72155) (Cons!72155 (h!78603 C!39400) (t!386848 List!72279)) )
))
(declare-fun s!13591 () List!72279)

(declare-fun matchRSpec!4242 (Regex!19563 List!72279) Bool)

(assert (=> b!7468213 (= lt!2624646 (matchRSpec!4242 lt!2624653 s!13591))))

(declare-fun matchR!9327 (Regex!19563 List!72279) Bool)

(assert (=> b!7468213 (= lt!2624646 (matchR!9327 lt!2624653 s!13591))))

(declare-datatypes ((Unit!165961 0))(
  ( (Unit!165962) )
))
(declare-fun lt!2624652 () Unit!165961)

(declare-fun mainMatchTheorem!4236 (Regex!19563 List!72279) Unit!165961)

(assert (=> b!7468213 (= lt!2624652 (mainMatchTheorem!4236 lt!2624653 s!13591))))

(declare-fun lt!2624657 () Regex!19563)

(assert (=> b!7468213 (= lt!2624644 (matchRSpec!4242 lt!2624657 s!13591))))

(assert (=> b!7468213 (= lt!2624644 (matchR!9327 lt!2624657 s!13591))))

(declare-fun lt!2624645 () Unit!165961)

(assert (=> b!7468213 (= lt!2624645 (mainMatchTheorem!4236 lt!2624657 s!13591))))

(declare-fun lt!2624642 () Regex!19563)

(declare-fun lt!2624639 () Regex!19563)

(assert (=> b!7468213 (= lt!2624653 (Union!19563 lt!2624642 lt!2624639))))

(declare-fun r2!5783 () Regex!19563)

(declare-fun rTail!78 () Regex!19563)

(assert (=> b!7468213 (= lt!2624639 (Concat!28408 r2!5783 rTail!78))))

(assert (=> b!7468213 (= lt!2624642 (Concat!28408 r1!5845 rTail!78))))

(assert (=> b!7468213 (= lt!2624657 (Concat!28408 lt!2624655 rTail!78))))

(assert (=> b!7468213 (= lt!2624655 (Union!19563 r1!5845 r2!5783))))

(declare-fun res!2995866 () Bool)

(assert (=> start!724178 (=> (not res!2995866) (not e!4456088))))

(declare-fun validRegex!10077 (Regex!19563) Bool)

(assert (=> start!724178 (= res!2995866 (validRegex!10077 r1!5845))))

(assert (=> start!724178 e!4456088))

(declare-fun e!4456094 () Bool)

(assert (=> start!724178 e!4456094))

(declare-fun e!4456090 () Bool)

(assert (=> start!724178 e!4456090))

(declare-fun e!4456092 () Bool)

(assert (=> start!724178 e!4456092))

(declare-fun e!4456087 () Bool)

(assert (=> start!724178 e!4456087))

(declare-fun b!7468214 () Bool)

(declare-fun tp!2165161 () Bool)

(declare-fun tp!2165160 () Bool)

(assert (=> b!7468214 (= e!4456094 (and tp!2165161 tp!2165160))))

(declare-fun b!7468215 () Bool)

(declare-fun e!4456089 () Bool)

(assert (=> b!7468215 (= e!4456089 true)))

(declare-datatypes ((tuple2!68576 0))(
  ( (tuple2!68577 (_1!37591 List!72279) (_2!37591 List!72279)) )
))
(declare-fun lt!2624641 () tuple2!68576)

(assert (=> b!7468215 (= (matchR!9327 r2!5783 (_1!37591 lt!2624641)) (matchRSpec!4242 r2!5783 (_1!37591 lt!2624641)))))

(declare-fun lt!2624635 () Unit!165961)

(assert (=> b!7468215 (= lt!2624635 (mainMatchTheorem!4236 r2!5783 (_1!37591 lt!2624641)))))

(assert (=> b!7468215 (matchRSpec!4242 r1!5845 (_1!37591 lt!2624641))))

(declare-fun lt!2624654 () Unit!165961)

(assert (=> b!7468215 (= lt!2624654 (mainMatchTheorem!4236 r1!5845 (_1!37591 lt!2624641)))))

(assert (=> b!7468215 (= (matchR!9327 lt!2624655 (_1!37591 lt!2624641)) (matchRSpec!4242 lt!2624655 (_1!37591 lt!2624641)))))

(declare-fun lt!2624649 () Unit!165961)

(assert (=> b!7468215 (= lt!2624649 (mainMatchTheorem!4236 lt!2624655 (_1!37591 lt!2624641)))))

(declare-fun b!7468216 () Bool)

(declare-fun tp!2165162 () Bool)

(declare-fun tp!2165153 () Bool)

(assert (=> b!7468216 (= e!4456092 (and tp!2165162 tp!2165153))))

(declare-fun b!7468217 () Bool)

(declare-fun tp_is_empty!49415 () Bool)

(assert (=> b!7468217 (= e!4456090 tp_is_empty!49415)))

(declare-fun b!7468218 () Bool)

(declare-fun tp!2165156 () Bool)

(assert (=> b!7468218 (= e!4456092 tp!2165156)))

(declare-fun b!7468219 () Bool)

(declare-fun tp!2165150 () Bool)

(declare-fun tp!2165157 () Bool)

(assert (=> b!7468219 (= e!4456090 (and tp!2165150 tp!2165157))))

(declare-fun b!7468220 () Bool)

(declare-fun res!2995871 () Bool)

(assert (=> b!7468220 (=> (not res!2995871) (not e!4456088))))

(assert (=> b!7468220 (= res!2995871 (validRegex!10077 rTail!78))))

(declare-fun e!4456091 () Bool)

(assert (=> b!7468221 (= e!4456091 e!4456089)))

(declare-fun res!2995870 () Bool)

(assert (=> b!7468221 (=> res!2995870 e!4456089)))

(assert (=> b!7468221 (= res!2995870 (not (matchR!9327 r1!5845 (_1!37591 lt!2624641))))))

(declare-datatypes ((Option!17120 0))(
  ( (None!17119) (Some!17119 (v!54248 tuple2!68576)) )
))
(declare-fun lt!2624640 () Option!17120)

(declare-fun get!25212 (Option!17120) tuple2!68576)

(assert (=> b!7468221 (= lt!2624641 (get!25212 lt!2624640))))

(declare-fun Exists!4182 (Int) Bool)

(assert (=> b!7468221 (= (Exists!4182 lambda!462336) (Exists!4182 lambda!462337))))

(declare-fun lt!2624647 () Unit!165961)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2516 (Regex!19563 Regex!19563 List!72279) Unit!165961)

(assert (=> b!7468221 (= lt!2624647 (lemmaExistCutMatchRandMatchRSpecEquivalent!2516 r1!5845 rTail!78 s!13591))))

(declare-fun isDefined!13809 (Option!17120) Bool)

(assert (=> b!7468221 (= (isDefined!13809 lt!2624640) (Exists!4182 lambda!462336))))

(declare-fun findConcatSeparation!3242 (Regex!19563 Regex!19563 List!72279 List!72279 List!72279) Option!17120)

(assert (=> b!7468221 (= lt!2624640 (findConcatSeparation!3242 r1!5845 rTail!78 Nil!72155 s!13591 s!13591))))

(declare-fun lt!2624650 () Unit!165961)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3000 (Regex!19563 Regex!19563 List!72279) Unit!165961)

(assert (=> b!7468221 (= lt!2624650 (lemmaFindConcatSeparationEquivalentToExists!3000 r1!5845 rTail!78 s!13591))))

(declare-fun b!7468222 () Bool)

(declare-fun e!4456093 () Bool)

(assert (=> b!7468222 (= e!4456093 e!4456091)))

(declare-fun res!2995872 () Bool)

(assert (=> b!7468222 (=> res!2995872 e!4456091)))

(declare-fun lt!2624643 () Bool)

(declare-fun lt!2624656 () Bool)

(assert (=> b!7468222 (= res!2995872 (or (and (not lt!2624643) (not lt!2624656)) (not lt!2624643)))))

(assert (=> b!7468222 (= lt!2624656 (matchRSpec!4242 lt!2624639 s!13591))))

(assert (=> b!7468222 (= lt!2624656 (matchR!9327 lt!2624639 s!13591))))

(declare-fun lt!2624636 () Unit!165961)

(assert (=> b!7468222 (= lt!2624636 (mainMatchTheorem!4236 lt!2624639 s!13591))))

(assert (=> b!7468222 (= lt!2624643 (matchRSpec!4242 lt!2624642 s!13591))))

(assert (=> b!7468222 (= lt!2624643 (matchR!9327 lt!2624642 s!13591))))

(declare-fun lt!2624638 () Unit!165961)

(assert (=> b!7468222 (= lt!2624638 (mainMatchTheorem!4236 lt!2624642 s!13591))))

(declare-fun b!7468223 () Bool)

(declare-fun tp!2165149 () Bool)

(declare-fun tp!2165159 () Bool)

(assert (=> b!7468223 (= e!4456092 (and tp!2165149 tp!2165159))))

(declare-fun b!7468224 () Bool)

(declare-fun tp!2165154 () Bool)

(declare-fun tp!2165148 () Bool)

(assert (=> b!7468224 (= e!4456090 (and tp!2165154 tp!2165148))))

(declare-fun b!7468225 () Bool)

(assert (=> b!7468225 (= e!4456092 tp_is_empty!49415)))

(declare-fun b!7468226 () Bool)

(declare-fun tp!2165155 () Bool)

(assert (=> b!7468226 (= e!4456090 tp!2165155)))

(declare-fun b!7468227 () Bool)

(assert (=> b!7468227 (= e!4456094 tp_is_empty!49415)))

(declare-fun b!7468228 () Bool)

(declare-fun res!2995869 () Bool)

(assert (=> b!7468228 (=> (not res!2995869) (not e!4456088))))

(assert (=> b!7468228 (= res!2995869 (validRegex!10077 r2!5783))))

(declare-fun b!7468229 () Bool)

(declare-fun tp!2165158 () Bool)

(declare-fun tp!2165163 () Bool)

(assert (=> b!7468229 (= e!4456094 (and tp!2165158 tp!2165163))))

(declare-fun b!7468230 () Bool)

(declare-fun tp!2165151 () Bool)

(assert (=> b!7468230 (= e!4456087 (and tp_is_empty!49415 tp!2165151))))

(declare-fun b!7468231 () Bool)

(declare-fun res!2995868 () Bool)

(assert (=> b!7468231 (=> res!2995868 e!4456089)))

(assert (=> b!7468231 (= res!2995868 (not (matchR!9327 rTail!78 (_2!37591 lt!2624641))))))

(declare-fun b!7468232 () Bool)

(declare-fun tp!2165152 () Bool)

(assert (=> b!7468232 (= e!4456094 tp!2165152)))

(assert (=> b!7468233 (= e!4456086 e!4456093)))

(declare-fun res!2995867 () Bool)

(assert (=> b!7468233 (=> res!2995867 e!4456093)))

(declare-fun lt!2624648 () Bool)

(assert (=> b!7468233 (= res!2995867 (or lt!2624648 (not lt!2624646)))))

(assert (=> b!7468233 (= (Exists!4182 lambda!462334) (Exists!4182 lambda!462335))))

(declare-fun lt!2624637 () Unit!165961)

(assert (=> b!7468233 (= lt!2624637 (lemmaExistCutMatchRandMatchRSpecEquivalent!2516 lt!2624655 rTail!78 s!13591))))

(assert (=> b!7468233 (= lt!2624648 (Exists!4182 lambda!462334))))

(assert (=> b!7468233 (= lt!2624648 (isDefined!13809 (findConcatSeparation!3242 lt!2624655 rTail!78 Nil!72155 s!13591 s!13591)))))

(declare-fun lt!2624651 () Unit!165961)

(assert (=> b!7468233 (= lt!2624651 (lemmaFindConcatSeparationEquivalentToExists!3000 lt!2624655 rTail!78 s!13591))))

(assert (= (and start!724178 res!2995866) b!7468228))

(assert (= (and b!7468228 res!2995869) b!7468220))

(assert (= (and b!7468220 res!2995871) b!7468213))

(assert (= (and b!7468213 (not res!2995865)) b!7468233))

(assert (= (and b!7468233 (not res!2995867)) b!7468222))

(assert (= (and b!7468222 (not res!2995872)) b!7468221))

(assert (= (and b!7468221 (not res!2995870)) b!7468231))

(assert (= (and b!7468231 (not res!2995868)) b!7468215))

(get-info :version)

(assert (= (and start!724178 ((_ is ElementMatch!19563) r1!5845)) b!7468227))

(assert (= (and start!724178 ((_ is Concat!28408) r1!5845)) b!7468229))

(assert (= (and start!724178 ((_ is Star!19563) r1!5845)) b!7468232))

(assert (= (and start!724178 ((_ is Union!19563) r1!5845)) b!7468214))

(assert (= (and start!724178 ((_ is ElementMatch!19563) r2!5783)) b!7468217))

(assert (= (and start!724178 ((_ is Concat!28408) r2!5783)) b!7468224))

(assert (= (and start!724178 ((_ is Star!19563) r2!5783)) b!7468226))

(assert (= (and start!724178 ((_ is Union!19563) r2!5783)) b!7468219))

(assert (= (and start!724178 ((_ is ElementMatch!19563) rTail!78)) b!7468225))

(assert (= (and start!724178 ((_ is Concat!28408) rTail!78)) b!7468216))

(assert (= (and start!724178 ((_ is Star!19563) rTail!78)) b!7468218))

(assert (= (and start!724178 ((_ is Union!19563) rTail!78)) b!7468223))

(assert (= (and start!724178 ((_ is Cons!72155) s!13591)) b!7468230))

(declare-fun m!8066192 () Bool)

(assert (=> b!7468228 m!8066192))

(declare-fun m!8066194 () Bool)

(assert (=> b!7468222 m!8066194))

(declare-fun m!8066196 () Bool)

(assert (=> b!7468222 m!8066196))

(declare-fun m!8066198 () Bool)

(assert (=> b!7468222 m!8066198))

(declare-fun m!8066200 () Bool)

(assert (=> b!7468222 m!8066200))

(declare-fun m!8066202 () Bool)

(assert (=> b!7468222 m!8066202))

(declare-fun m!8066204 () Bool)

(assert (=> b!7468222 m!8066204))

(declare-fun m!8066206 () Bool)

(assert (=> b!7468221 m!8066206))

(declare-fun m!8066208 () Bool)

(assert (=> b!7468221 m!8066208))

(declare-fun m!8066210 () Bool)

(assert (=> b!7468221 m!8066210))

(declare-fun m!8066212 () Bool)

(assert (=> b!7468221 m!8066212))

(declare-fun m!8066214 () Bool)

(assert (=> b!7468221 m!8066214))

(declare-fun m!8066216 () Bool)

(assert (=> b!7468221 m!8066216))

(declare-fun m!8066218 () Bool)

(assert (=> b!7468221 m!8066218))

(declare-fun m!8066220 () Bool)

(assert (=> b!7468221 m!8066220))

(assert (=> b!7468221 m!8066214))

(declare-fun m!8066222 () Bool)

(assert (=> start!724178 m!8066222))

(declare-fun m!8066224 () Bool)

(assert (=> b!7468233 m!8066224))

(declare-fun m!8066226 () Bool)

(assert (=> b!7468233 m!8066226))

(declare-fun m!8066228 () Bool)

(assert (=> b!7468233 m!8066228))

(declare-fun m!8066230 () Bool)

(assert (=> b!7468233 m!8066230))

(assert (=> b!7468233 m!8066226))

(declare-fun m!8066232 () Bool)

(assert (=> b!7468233 m!8066232))

(assert (=> b!7468233 m!8066230))

(declare-fun m!8066234 () Bool)

(assert (=> b!7468233 m!8066234))

(declare-fun m!8066236 () Bool)

(assert (=> b!7468215 m!8066236))

(declare-fun m!8066238 () Bool)

(assert (=> b!7468215 m!8066238))

(declare-fun m!8066240 () Bool)

(assert (=> b!7468215 m!8066240))

(declare-fun m!8066242 () Bool)

(assert (=> b!7468215 m!8066242))

(declare-fun m!8066244 () Bool)

(assert (=> b!7468215 m!8066244))

(declare-fun m!8066246 () Bool)

(assert (=> b!7468215 m!8066246))

(declare-fun m!8066248 () Bool)

(assert (=> b!7468215 m!8066248))

(declare-fun m!8066250 () Bool)

(assert (=> b!7468215 m!8066250))

(declare-fun m!8066252 () Bool)

(assert (=> b!7468213 m!8066252))

(declare-fun m!8066254 () Bool)

(assert (=> b!7468213 m!8066254))

(declare-fun m!8066256 () Bool)

(assert (=> b!7468213 m!8066256))

(declare-fun m!8066258 () Bool)

(assert (=> b!7468213 m!8066258))

(declare-fun m!8066260 () Bool)

(assert (=> b!7468213 m!8066260))

(declare-fun m!8066262 () Bool)

(assert (=> b!7468213 m!8066262))

(declare-fun m!8066264 () Bool)

(assert (=> b!7468220 m!8066264))

(declare-fun m!8066266 () Bool)

(assert (=> b!7468231 m!8066266))

(check-sat (not b!7468219) (not b!7468214) (not b!7468228) (not b!7468223) (not b!7468221) (not b!7468224) (not b!7468218) (not b!7468215) (not b!7468226) (not start!724178) (not b!7468216) (not b!7468232) (not b!7468220) (not b!7468230) (not b!7468229) tp_is_empty!49415 (not b!7468213) (not b!7468222) (not b!7468231) (not b!7468233))
(check-sat)
