; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741946 () Bool)

(assert start!741946)

(declare-fun b!7819237 () Bool)

(declare-fun e!4626528 () Bool)

(declare-fun tp_is_empty!52205 () Bool)

(assert (=> b!7819237 (= e!4626528 tp_is_empty!52205)))

(declare-fun b!7819238 () Bool)

(declare-fun res!3112319 () Bool)

(declare-fun e!4626524 () Bool)

(assert (=> b!7819238 (=> (not res!3112319) (not e!4626524))))

(declare-datatypes ((C!42176 0))(
  ( (C!42177 (val!31528 Int)) )
))
(declare-datatypes ((List!73762 0))(
  ( (Nil!73638) (Cons!73638 (h!80086 C!42176) (t!388497 List!73762)) )
))
(declare-fun s1Rec!453 () List!73762)

(declare-fun s1!4101 () List!73762)

(declare-fun isPrefix!6275 (List!73762 List!73762) Bool)

(assert (=> b!7819238 (= res!3112319 (isPrefix!6275 s1Rec!453 s1!4101))))

(declare-fun b!7819239 () Bool)

(declare-fun tp!2307266 () Bool)

(assert (=> b!7819239 (= e!4626528 tp!2307266)))

(declare-fun b!7819240 () Bool)

(declare-fun res!3112317 () Bool)

(assert (=> b!7819240 (=> (not res!3112317) (not e!4626524))))

(declare-fun s2!3721 () List!73762)

(declare-fun s!14274 () List!73762)

(declare-fun ++!17959 (List!73762 List!73762) List!73762)

(assert (=> b!7819240 (= res!3112317 (= (++!17959 s1!4101 s2!3721) s!14274))))

(declare-fun b!7819241 () Bool)

(declare-fun tp!2307261 () Bool)

(declare-fun tp!2307254 () Bool)

(assert (=> b!7819241 (= e!4626528 (and tp!2307261 tp!2307254))))

(declare-fun b!7819242 () Bool)

(declare-fun e!4626527 () Bool)

(declare-fun tp!2307253 () Bool)

(assert (=> b!7819242 (= e!4626527 (and tp_is_empty!52205 tp!2307253))))

(declare-fun b!7819243 () Bool)

(declare-fun e!4626523 () Bool)

(declare-fun tp!2307258 () Bool)

(assert (=> b!7819243 (= e!4626523 (and tp_is_empty!52205 tp!2307258))))

(declare-fun b!7819244 () Bool)

(declare-fun e!4626525 () Bool)

(declare-fun tp!2307260 () Bool)

(declare-fun tp!2307263 () Bool)

(assert (=> b!7819244 (= e!4626525 (and tp!2307260 tp!2307263))))

(declare-fun b!7819245 () Bool)

(declare-fun tp!2307267 () Bool)

(assert (=> b!7819245 (= e!4626525 tp!2307267)))

(declare-fun b!7819246 () Bool)

(declare-fun res!3112321 () Bool)

(assert (=> b!7819246 (=> (not res!3112321) (not e!4626524))))

(declare-datatypes ((Regex!20925 0))(
  ( (ElementMatch!20925 (c!1439274 C!42176)) (Concat!29770 (regOne!42362 Regex!20925) (regTwo!42362 Regex!20925)) (EmptyExpr!20925) (Star!20925 (reg!21254 Regex!20925)) (EmptyLang!20925) (Union!20925 (regOne!42363 Regex!20925) (regTwo!42363 Regex!20925)) )
))
(declare-fun r2!6199 () Regex!20925)

(declare-fun validRegex!11339 (Regex!20925) Bool)

(assert (=> b!7819246 (= res!3112321 (validRegex!11339 r2!6199))))

(declare-fun b!7819247 () Bool)

(declare-fun res!3112320 () Bool)

(assert (=> b!7819247 (=> (not res!3112320) (not e!4626524))))

(declare-fun s2Rec!453 () List!73762)

(assert (=> b!7819247 (= res!3112320 (= (++!17959 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7819248 () Bool)

(assert (=> b!7819248 (= e!4626525 tp_is_empty!52205)))

(declare-fun b!7819249 () Bool)

(declare-fun res!3112322 () Bool)

(assert (=> b!7819249 (=> (not res!3112322) (not e!4626524))))

(declare-fun r1!6261 () Regex!20925)

(declare-fun matchR!10381 (Regex!20925 List!73762) Bool)

(assert (=> b!7819249 (= res!3112322 (matchR!10381 r1!6261 s1!4101))))

(declare-fun b!7819250 () Bool)

(declare-fun tp!2307257 () Bool)

(declare-fun tp!2307259 () Bool)

(assert (=> b!7819250 (= e!4626525 (and tp!2307257 tp!2307259))))

(declare-fun res!3112318 () Bool)

(assert (=> start!741946 (=> (not res!3112318) (not e!4626524))))

(assert (=> start!741946 (= res!3112318 (validRegex!11339 r1!6261))))

(assert (=> start!741946 e!4626524))

(assert (=> start!741946 e!4626528))

(assert (=> start!741946 e!4626523))

(declare-fun e!4626522 () Bool)

(assert (=> start!741946 e!4626522))

(assert (=> start!741946 e!4626527))

(declare-fun e!4626526 () Bool)

(assert (=> start!741946 e!4626526))

(assert (=> start!741946 e!4626525))

(declare-fun e!4626529 () Bool)

(assert (=> start!741946 e!4626529))

(declare-fun b!7819251 () Bool)

(declare-fun tp!2307255 () Bool)

(assert (=> b!7819251 (= e!4626526 (and tp_is_empty!52205 tp!2307255))))

(declare-fun b!7819252 () Bool)

(declare-fun tp!2307256 () Bool)

(declare-fun tp!2307262 () Bool)

(assert (=> b!7819252 (= e!4626528 (and tp!2307256 tp!2307262))))

(declare-fun b!7819253 () Bool)

(declare-fun tp!2307265 () Bool)

(assert (=> b!7819253 (= e!4626522 (and tp_is_empty!52205 tp!2307265))))

(declare-fun b!7819254 () Bool)

(assert (=> b!7819254 (= e!4626524 false)))

(declare-fun lt!2676114 () Bool)

(assert (=> b!7819254 (= lt!2676114 (matchR!10381 r2!6199 s2!3721))))

(declare-fun b!7819255 () Bool)

(declare-fun tp!2307264 () Bool)

(assert (=> b!7819255 (= e!4626529 (and tp_is_empty!52205 tp!2307264))))

(assert (= (and start!741946 res!3112318) b!7819246))

(assert (= (and b!7819246 res!3112321) b!7819240))

(assert (= (and b!7819240 res!3112317) b!7819238))

(assert (= (and b!7819238 res!3112319) b!7819247))

(assert (= (and b!7819247 res!3112320) b!7819249))

(assert (= (and b!7819249 res!3112322) b!7819254))

(get-info :version)

(assert (= (and start!741946 ((_ is ElementMatch!20925) r2!6199)) b!7819237))

(assert (= (and start!741946 ((_ is Concat!29770) r2!6199)) b!7819241))

(assert (= (and start!741946 ((_ is Star!20925) r2!6199)) b!7819239))

(assert (= (and start!741946 ((_ is Union!20925) r2!6199)) b!7819252))

(assert (= (and start!741946 ((_ is Cons!73638) s1!4101)) b!7819243))

(assert (= (and start!741946 ((_ is Cons!73638) s2!3721)) b!7819253))

(assert (= (and start!741946 ((_ is Cons!73638) s2Rec!453)) b!7819242))

(assert (= (and start!741946 ((_ is Cons!73638) s!14274)) b!7819251))

(assert (= (and start!741946 ((_ is ElementMatch!20925) r1!6261)) b!7819248))

(assert (= (and start!741946 ((_ is Concat!29770) r1!6261)) b!7819244))

(assert (= (and start!741946 ((_ is Star!20925) r1!6261)) b!7819245))

(assert (= (and start!741946 ((_ is Union!20925) r1!6261)) b!7819250))

(assert (= (and start!741946 ((_ is Cons!73638) s1Rec!453)) b!7819255))

(declare-fun m!8244440 () Bool)

(assert (=> b!7819247 m!8244440))

(declare-fun m!8244442 () Bool)

(assert (=> start!741946 m!8244442))

(declare-fun m!8244444 () Bool)

(assert (=> b!7819254 m!8244444))

(declare-fun m!8244446 () Bool)

(assert (=> b!7819238 m!8244446))

(declare-fun m!8244448 () Bool)

(assert (=> b!7819249 m!8244448))

(declare-fun m!8244450 () Bool)

(assert (=> b!7819246 m!8244450))

(declare-fun m!8244452 () Bool)

(assert (=> b!7819240 m!8244452))

(check-sat (not b!7819242) (not b!7819249) (not start!741946) (not b!7819241) (not b!7819252) (not b!7819238) (not b!7819246) (not b!7819253) (not b!7819255) (not b!7819243) (not b!7819244) (not b!7819250) (not b!7819251) (not b!7819254) (not b!7819245) (not b!7819240) (not b!7819247) tp_is_empty!52205 (not b!7819239))
(check-sat)
