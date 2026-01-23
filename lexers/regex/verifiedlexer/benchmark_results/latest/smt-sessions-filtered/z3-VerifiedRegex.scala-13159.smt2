; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718512 () Bool)

(assert start!718512)

(declare-fun b!7358229 () Bool)

(declare-fun e!4405627 () Bool)

(declare-fun tp!2090462 () Bool)

(assert (=> b!7358229 (= e!4405627 tp!2090462)))

(declare-fun b!7358231 () Bool)

(declare-fun e!4405629 () Bool)

(declare-fun tp!2090461 () Bool)

(assert (=> b!7358231 (= e!4405629 tp!2090461)))

(declare-fun b!7358232 () Bool)

(declare-fun tp_is_empty!48659 () Bool)

(assert (=> b!7358232 (= e!4405627 tp_is_empty!48659)))

(declare-fun b!7358233 () Bool)

(declare-fun e!4405626 () Bool)

(declare-fun e!4405630 () Bool)

(assert (=> b!7358233 (= e!4405626 e!4405630)))

(declare-fun res!2970952 () Bool)

(assert (=> b!7358233 (=> (not res!2970952) (not e!4405630))))

(declare-datatypes ((C!38688 0))(
  ( (C!38689 (val!29704 Int)) )
))
(declare-datatypes ((Regex!19207 0))(
  ( (ElementMatch!19207 (c!1367139 C!38688)) (Concat!28052 (regOne!38926 Regex!19207) (regTwo!38926 Regex!19207)) (EmptyExpr!19207) (Star!19207 (reg!19536 Regex!19207)) (EmptyLang!19207) (Union!19207 (regOne!38927 Regex!19207) (regTwo!38927 Regex!19207)) )
))
(declare-datatypes ((List!71703 0))(
  ( (Nil!71579) (Cons!71579 (h!78027 Regex!19207) (t!386146 List!71703)) )
))
(declare-datatypes ((Context!16294 0))(
  ( (Context!16295 (exprs!8647 List!71703)) )
))
(declare-fun cWitness!61 () Context!16294)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2613551 () (InoxSet Context!16294))

(assert (=> b!7358233 (= res!2970952 (select lt!2613551 cWitness!61))))

(declare-fun r1!2370 () Regex!19207)

(declare-fun c!10362 () C!38688)

(declare-fun ct1!282 () Context!16294)

(declare-fun derivationStepZipperDown!3033 (Regex!19207 Context!16294 C!38688) (InoxSet Context!16294))

(assert (=> b!7358233 (= lt!2613551 (derivationStepZipperDown!3033 r1!2370 ct1!282 c!10362))))

(declare-fun b!7358234 () Bool)

(declare-fun tp!2090458 () Bool)

(declare-fun tp!2090459 () Bool)

(assert (=> b!7358234 (= e!4405627 (and tp!2090458 tp!2090459))))

(declare-fun b!7358235 () Bool)

(declare-fun e!4405628 () Bool)

(declare-fun tp!2090465 () Bool)

(assert (=> b!7358235 (= e!4405628 tp!2090465)))

(declare-fun b!7358236 () Bool)

(declare-fun tp!2090460 () Bool)

(declare-fun tp!2090463 () Bool)

(assert (=> b!7358236 (= e!4405627 (and tp!2090460 tp!2090463))))

(declare-fun b!7358237 () Bool)

(get-info :version)

(assert (=> b!7358237 (= e!4405630 (and ((_ is ElementMatch!19207) r1!2370) (= c!10362 (c!1367139 r1!2370)) (let ((bdg!289692 (store ((as const (Array Context!16294 Bool)) false) ct1!282 true))) (and (= lt!2613551 bdg!289692) (not (select bdg!289692 cWitness!61))))))))

(declare-fun ct2!378 () Context!16294)

(declare-fun lt!2613552 () (InoxSet Context!16294))

(declare-fun ++!17025 (List!71703 List!71703) List!71703)

(assert (=> b!7358237 (= lt!2613552 (derivationStepZipperDown!3033 r1!2370 (Context!16295 (++!17025 (exprs!8647 ct1!282) (exprs!8647 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165367 0))(
  ( (Unit!165368) )
))
(declare-fun lt!2613553 () Unit!165367)

(declare-fun lambda!457179 () Int)

(declare-fun lemmaConcatPreservesForall!1882 (List!71703 List!71703 Int) Unit!165367)

(assert (=> b!7358237 (= lt!2613553 (lemmaConcatPreservesForall!1882 (exprs!8647 ct1!282) (exprs!8647 ct2!378) lambda!457179))))

(declare-fun b!7358230 () Bool)

(declare-fun e!4405625 () Bool)

(declare-fun tp!2090464 () Bool)

(assert (=> b!7358230 (= e!4405625 tp!2090464)))

(declare-fun res!2970951 () Bool)

(assert (=> start!718512 (=> (not res!2970951) (not e!4405626))))

(declare-fun validRegex!9803 (Regex!19207) Bool)

(assert (=> start!718512 (= res!2970951 (validRegex!9803 r1!2370))))

(assert (=> start!718512 e!4405626))

(assert (=> start!718512 tp_is_empty!48659))

(declare-fun inv!91357 (Context!16294) Bool)

(assert (=> start!718512 (and (inv!91357 cWitness!61) e!4405625)))

(assert (=> start!718512 (and (inv!91357 ct1!282) e!4405628)))

(assert (=> start!718512 e!4405627))

(assert (=> start!718512 (and (inv!91357 ct2!378) e!4405629)))

(assert (= (and start!718512 res!2970951) b!7358233))

(assert (= (and b!7358233 res!2970952) b!7358237))

(assert (= start!718512 b!7358230))

(assert (= start!718512 b!7358235))

(assert (= (and start!718512 ((_ is ElementMatch!19207) r1!2370)) b!7358232))

(assert (= (and start!718512 ((_ is Concat!28052) r1!2370)) b!7358234))

(assert (= (and start!718512 ((_ is Star!19207) r1!2370)) b!7358229))

(assert (= (and start!718512 ((_ is Union!19207) r1!2370)) b!7358236))

(assert (= start!718512 b!7358231))

(declare-fun m!8017192 () Bool)

(assert (=> b!7358233 m!8017192))

(declare-fun m!8017194 () Bool)

(assert (=> b!7358233 m!8017194))

(declare-fun m!8017196 () Bool)

(assert (=> b!7358237 m!8017196))

(declare-fun m!8017198 () Bool)

(assert (=> b!7358237 m!8017198))

(declare-fun m!8017200 () Bool)

(assert (=> b!7358237 m!8017200))

(declare-fun m!8017202 () Bool)

(assert (=> b!7358237 m!8017202))

(declare-fun m!8017204 () Bool)

(assert (=> b!7358237 m!8017204))

(declare-fun m!8017206 () Bool)

(assert (=> start!718512 m!8017206))

(declare-fun m!8017208 () Bool)

(assert (=> start!718512 m!8017208))

(declare-fun m!8017210 () Bool)

(assert (=> start!718512 m!8017210))

(declare-fun m!8017212 () Bool)

(assert (=> start!718512 m!8017212))

(check-sat (not b!7358237) (not b!7358235) (not b!7358234) (not b!7358233) tp_is_empty!48659 (not start!718512) (not b!7358230) (not b!7358231) (not b!7358229) (not b!7358236))
(check-sat)
