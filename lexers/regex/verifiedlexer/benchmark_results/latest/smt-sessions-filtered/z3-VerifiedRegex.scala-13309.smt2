; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723302 () Bool)

(assert start!723302)

(declare-fun b!7449207 () Bool)

(assert (=> b!7449207 true))

(assert (=> b!7449207 true))

(assert (=> b!7449207 true))

(declare-fun b!7449194 () Bool)

(declare-fun e!4446930 () Bool)

(declare-fun tp!2158052 () Bool)

(declare-fun tp!2158055 () Bool)

(assert (=> b!7449194 (= e!4446930 (and tp!2158052 tp!2158055))))

(declare-fun b!7449195 () Bool)

(declare-fun e!4446934 () Bool)

(declare-fun tp!2158050 () Bool)

(assert (=> b!7449195 (= e!4446934 tp!2158050)))

(declare-fun b!7449196 () Bool)

(declare-fun res!2987960 () Bool)

(declare-fun e!4446929 () Bool)

(assert (=> b!7449196 (=> (not res!2987960) (not e!4446929))))

(declare-datatypes ((C!39236 0))(
  ( (C!39237 (val!30016 Int)) )
))
(declare-datatypes ((Regex!19481 0))(
  ( (ElementMatch!19481 (c!1377638 C!39236)) (Concat!28326 (regOne!39474 Regex!19481) (regTwo!39474 Regex!19481)) (EmptyExpr!19481) (Star!19481 (reg!19810 Regex!19481)) (EmptyLang!19481) (Union!19481 (regOne!39475 Regex!19481) (regTwo!39475 Regex!19481)) )
))
(declare-fun r2!5783 () Regex!19481)

(declare-fun validRegex!9995 (Regex!19481) Bool)

(assert (=> b!7449196 (= res!2987960 (validRegex!9995 r2!5783))))

(declare-fun b!7449197 () Bool)

(declare-fun e!4446932 () Bool)

(assert (=> b!7449197 (= e!4446929 (not e!4446932))))

(declare-fun res!2987962 () Bool)

(assert (=> b!7449197 (=> res!2987962 e!4446932)))

(declare-fun lt!2619821 () Bool)

(assert (=> b!7449197 (= res!2987962 (not lt!2619821))))

(declare-fun lt!2619819 () Regex!19481)

(declare-datatypes ((List!72197 0))(
  ( (Nil!72073) (Cons!72073 (h!78521 C!39236) (t!386766 List!72197)) )
))
(declare-fun s!13591 () List!72197)

(declare-fun matchR!9245 (Regex!19481 List!72197) Bool)

(declare-fun matchRSpec!4160 (Regex!19481 List!72197) Bool)

(assert (=> b!7449197 (= (matchR!9245 lt!2619819 s!13591) (matchRSpec!4160 lt!2619819 s!13591))))

(declare-datatypes ((Unit!165797 0))(
  ( (Unit!165798) )
))
(declare-fun lt!2619825 () Unit!165797)

(declare-fun mainMatchTheorem!4154 (Regex!19481 List!72197) Unit!165797)

(assert (=> b!7449197 (= lt!2619825 (mainMatchTheorem!4154 lt!2619819 s!13591))))

(declare-fun lt!2619820 () Regex!19481)

(assert (=> b!7449197 (= lt!2619821 (matchRSpec!4160 lt!2619820 s!13591))))

(assert (=> b!7449197 (= lt!2619821 (matchR!9245 lt!2619820 s!13591))))

(declare-fun lt!2619822 () Unit!165797)

(assert (=> b!7449197 (= lt!2619822 (mainMatchTheorem!4154 lt!2619820 s!13591))))

(declare-fun rTail!78 () Regex!19481)

(declare-fun r1!5845 () Regex!19481)

(assert (=> b!7449197 (= lt!2619819 (Union!19481 (Concat!28326 r1!5845 rTail!78) (Concat!28326 r2!5783 rTail!78)))))

(declare-fun lt!2619823 () Regex!19481)

(assert (=> b!7449197 (= lt!2619820 (Concat!28326 lt!2619823 rTail!78))))

(assert (=> b!7449197 (= lt!2619823 (Union!19481 r1!5845 r2!5783))))

(declare-fun b!7449198 () Bool)

(declare-fun e!4446931 () Bool)

(declare-fun tp!2158046 () Bool)

(assert (=> b!7449198 (= e!4446931 tp!2158046)))

(declare-fun b!7449199 () Bool)

(declare-fun res!2987961 () Bool)

(assert (=> b!7449199 (=> (not res!2987961) (not e!4446929))))

(assert (=> b!7449199 (= res!2987961 (validRegex!9995 rTail!78))))

(declare-fun b!7449200 () Bool)

(declare-fun tp!2158045 () Bool)

(assert (=> b!7449200 (= e!4446930 tp!2158045)))

(declare-fun b!7449201 () Bool)

(declare-fun tp_is_empty!49251 () Bool)

(assert (=> b!7449201 (= e!4446934 tp_is_empty!49251)))

(declare-fun b!7449202 () Bool)

(assert (=> b!7449202 (= e!4446931 tp_is_empty!49251)))

(declare-fun b!7449203 () Bool)

(declare-fun tp!2158048 () Bool)

(declare-fun tp!2158047 () Bool)

(assert (=> b!7449203 (= e!4446934 (and tp!2158048 tp!2158047))))

(declare-fun res!2987959 () Bool)

(assert (=> start!723302 (=> (not res!2987959) (not e!4446929))))

(assert (=> start!723302 (= res!2987959 (validRegex!9995 r1!5845))))

(assert (=> start!723302 e!4446929))

(assert (=> start!723302 e!4446931))

(assert (=> start!723302 e!4446934))

(assert (=> start!723302 e!4446930))

(declare-fun e!4446933 () Bool)

(assert (=> start!723302 e!4446933))

(declare-fun b!7449193 () Bool)

(assert (=> b!7449193 (= e!4446930 tp_is_empty!49251)))

(declare-fun b!7449204 () Bool)

(declare-fun tp!2158049 () Bool)

(declare-fun tp!2158058 () Bool)

(assert (=> b!7449204 (= e!4446931 (and tp!2158049 tp!2158058))))

(declare-fun b!7449205 () Bool)

(declare-fun tp!2158057 () Bool)

(declare-fun tp!2158053 () Bool)

(assert (=> b!7449205 (= e!4446934 (and tp!2158057 tp!2158053))))

(declare-fun b!7449206 () Bool)

(declare-fun tp!2158054 () Bool)

(assert (=> b!7449206 (= e!4446933 (and tp_is_empty!49251 tp!2158054))))

(assert (=> b!7449207 (= e!4446932 true)))

(declare-fun lambda!460723 () Int)

(declare-datatypes ((tuple2!68416 0))(
  ( (tuple2!68417 (_1!37511 List!72197) (_2!37511 List!72197)) )
))
(declare-datatypes ((Option!17040 0))(
  ( (None!17039) (Some!17039 (v!54168 tuple2!68416)) )
))
(declare-fun isDefined!13729 (Option!17040) Bool)

(declare-fun findConcatSeparation!3162 (Regex!19481 Regex!19481 List!72197 List!72197 List!72197) Option!17040)

(declare-fun Exists!4102 (Int) Bool)

(assert (=> b!7449207 (= (isDefined!13729 (findConcatSeparation!3162 lt!2619823 rTail!78 Nil!72073 s!13591 s!13591)) (Exists!4102 lambda!460723))))

(declare-fun lt!2619824 () Unit!165797)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2920 (Regex!19481 Regex!19481 List!72197) Unit!165797)

(assert (=> b!7449207 (= lt!2619824 (lemmaFindConcatSeparationEquivalentToExists!2920 lt!2619823 rTail!78 s!13591))))

(declare-fun b!7449208 () Bool)

(declare-fun tp!2158056 () Bool)

(declare-fun tp!2158059 () Bool)

(assert (=> b!7449208 (= e!4446930 (and tp!2158056 tp!2158059))))

(declare-fun b!7449209 () Bool)

(declare-fun tp!2158044 () Bool)

(declare-fun tp!2158051 () Bool)

(assert (=> b!7449209 (= e!4446931 (and tp!2158044 tp!2158051))))

(assert (= (and start!723302 res!2987959) b!7449196))

(assert (= (and b!7449196 res!2987960) b!7449199))

(assert (= (and b!7449199 res!2987961) b!7449197))

(assert (= (and b!7449197 (not res!2987962)) b!7449207))

(get-info :version)

(assert (= (and start!723302 ((_ is ElementMatch!19481) r1!5845)) b!7449202))

(assert (= (and start!723302 ((_ is Concat!28326) r1!5845)) b!7449209))

(assert (= (and start!723302 ((_ is Star!19481) r1!5845)) b!7449198))

(assert (= (and start!723302 ((_ is Union!19481) r1!5845)) b!7449204))

(assert (= (and start!723302 ((_ is ElementMatch!19481) r2!5783)) b!7449201))

(assert (= (and start!723302 ((_ is Concat!28326) r2!5783)) b!7449205))

(assert (= (and start!723302 ((_ is Star!19481) r2!5783)) b!7449195))

(assert (= (and start!723302 ((_ is Union!19481) r2!5783)) b!7449203))

(assert (= (and start!723302 ((_ is ElementMatch!19481) rTail!78)) b!7449193))

(assert (= (and start!723302 ((_ is Concat!28326) rTail!78)) b!7449208))

(assert (= (and start!723302 ((_ is Star!19481) rTail!78)) b!7449200))

(assert (= (and start!723302 ((_ is Union!19481) rTail!78)) b!7449194))

(assert (= (and start!723302 ((_ is Cons!72073) s!13591)) b!7449206))

(declare-fun m!8056238 () Bool)

(assert (=> b!7449197 m!8056238))

(declare-fun m!8056240 () Bool)

(assert (=> b!7449197 m!8056240))

(declare-fun m!8056242 () Bool)

(assert (=> b!7449197 m!8056242))

(declare-fun m!8056244 () Bool)

(assert (=> b!7449197 m!8056244))

(declare-fun m!8056246 () Bool)

(assert (=> b!7449197 m!8056246))

(declare-fun m!8056248 () Bool)

(assert (=> b!7449197 m!8056248))

(declare-fun m!8056250 () Bool)

(assert (=> b!7449207 m!8056250))

(assert (=> b!7449207 m!8056250))

(declare-fun m!8056252 () Bool)

(assert (=> b!7449207 m!8056252))

(declare-fun m!8056254 () Bool)

(assert (=> b!7449207 m!8056254))

(declare-fun m!8056256 () Bool)

(assert (=> b!7449207 m!8056256))

(declare-fun m!8056258 () Bool)

(assert (=> b!7449196 m!8056258))

(declare-fun m!8056260 () Bool)

(assert (=> start!723302 m!8056260))

(declare-fun m!8056262 () Bool)

(assert (=> b!7449199 m!8056262))

(check-sat (not b!7449207) (not b!7449200) (not b!7449194) (not b!7449196) (not b!7449206) (not start!723302) (not b!7449209) (not b!7449195) tp_is_empty!49251 (not b!7449199) (not b!7449198) (not b!7449205) (not b!7449208) (not b!7449204) (not b!7449197) (not b!7449203))
(check-sat)
