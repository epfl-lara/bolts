; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542308 () Bool)

(assert start!542308)

(declare-fun bs!1195660 () Bool)

(declare-fun b!5130182 () Bool)

(declare-fun b!5130179 () Bool)

(assert (= bs!1195660 (and b!5130182 b!5130179)))

(declare-fun lambda!253513 () Int)

(declare-fun lambda!253512 () Int)

(assert (=> bs!1195660 (not (= lambda!253513 lambda!253512))))

(declare-fun bs!1195661 () Bool)

(declare-fun b!5130184 () Bool)

(assert (= bs!1195661 (and b!5130184 b!5130179)))

(declare-fun lambda!253514 () Int)

(assert (=> bs!1195661 (not (= lambda!253514 lambda!253512))))

(declare-fun bs!1195662 () Bool)

(assert (= bs!1195662 (and b!5130184 b!5130182)))

(assert (=> bs!1195662 (not (= lambda!253514 lambda!253513))))

(declare-fun b!5130176 () Bool)

(declare-fun e!3199596 () Bool)

(assert (=> b!5130176 (= e!3199596 false)))

(declare-fun b!5130177 () Bool)

(declare-fun e!3199593 () Bool)

(assert (=> b!5130177 (= e!3199593 true)))

(declare-fun lt!2116274 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28916 0))(
  ( (C!28917 (val!24110 Int)) )
))
(declare-datatypes ((Regex!14325 0))(
  ( (ElementMatch!14325 (c!882387 C!28916)) (Concat!23170 (regOne!29162 Regex!14325) (regTwo!29162 Regex!14325)) (EmptyExpr!14325) (Star!14325 (reg!14654 Regex!14325)) (EmptyLang!14325) (Union!14325 (regOne!29163 Regex!14325) (regTwo!29163 Regex!14325)) )
))
(declare-datatypes ((List!59578 0))(
  ( (Nil!59454) (Cons!59454 (h!65902 Regex!14325) (t!372605 List!59578)) )
))
(declare-datatypes ((Context!7418 0))(
  ( (Context!7419 (exprs!4209 List!59578)) )
))
(declare-fun z!1113 () (InoxSet Context!7418))

(declare-fun lostCauseZipper!1169 ((InoxSet Context!7418)) Bool)

(assert (=> b!5130177 (= lt!2116274 (lostCauseZipper!1169 z!1113))))

(declare-fun b!5130178 () Bool)

(declare-fun e!3199594 () Bool)

(declare-fun tp!1431217 () Bool)

(assert (=> b!5130178 (= e!3199594 tp!1431217)))

(declare-fun e!3199597 () Bool)

(declare-fun e!3199591 () Bool)

(assert (=> b!5130179 (= e!3199597 (not e!3199591))))

(declare-fun res!2184730 () Bool)

(assert (=> b!5130179 (=> res!2184730 e!3199591)))

(declare-fun lt!2116268 () Context!7418)

(assert (=> b!5130179 (= res!2184730 (not (select z!1113 lt!2116268)))))

(declare-fun forall!13738 (List!59578 Int) Bool)

(assert (=> b!5130179 (forall!13738 (exprs!4209 lt!2116268) lambda!253512)))

(declare-datatypes ((Unit!150700 0))(
  ( (Unit!150701) )
))
(declare-fun lt!2116266 () Unit!150700)

(declare-fun lemmaContextForallValidExprs!40 (Context!7418 List!59578) Unit!150700)

(assert (=> b!5130179 (= lt!2116266 (lemmaContextForallValidExprs!40 lt!2116268 (exprs!4209 lt!2116268)))))

(declare-fun b!5130180 () Bool)

(declare-fun e!3199592 () Unit!150700)

(declare-fun Unit!150702 () Unit!150700)

(assert (=> b!5130180 (= e!3199592 Unit!150702)))

(declare-fun res!2184734 () Bool)

(assert (=> b!5130182 (=> res!2184734 e!3199591)))

(assert (=> b!5130182 (= res!2184734 (not (forall!13738 (exprs!4209 lt!2116268) lambda!253513)))))

(declare-fun setIsEmpty!31010 () Bool)

(declare-fun setRes!31010 () Bool)

(assert (=> setIsEmpty!31010 setRes!31010))

(declare-fun b!5130183 () Bool)

(declare-fun res!2184728 () Bool)

(declare-fun e!3199595 () Bool)

(assert (=> b!5130183 (=> (not res!2184728) (not e!3199595))))

(declare-fun lambda!253511 () Int)

(declare-fun exists!1619 ((InoxSet Context!7418) Int) Bool)

(assert (=> b!5130183 (= res!2184728 (exists!1619 z!1113 lambda!253511))))

(declare-fun Unit!150703 () Unit!150700)

(assert (=> b!5130184 (= e!3199592 Unit!150703)))

(declare-fun lt!2116271 () Regex!14325)

(declare-fun getWitness!778 (List!59578 Int) Regex!14325)

(assert (=> b!5130184 (= lt!2116271 (getWitness!778 (exprs!4209 lt!2116268) lambda!253514))))

(declare-fun lt!2116273 () Unit!150700)

(declare-fun forallContained!4617 (List!59578 Int Regex!14325) Unit!150700)

(assert (=> b!5130184 (= lt!2116273 (forallContained!4617 (exprs!4209 lt!2116268) lambda!253513 lt!2116271))))

(declare-fun lt!2116269 () Unit!150700)

(assert (=> b!5130184 (= lt!2116269 (forallContained!4617 (exprs!4209 lt!2116268) lambda!253512 lt!2116271))))

(declare-fun lt!2116272 () Unit!150700)

(declare-fun lemmaNullableThenNotLostCause!32 (Regex!14325) Unit!150700)

(assert (=> b!5130184 (= lt!2116272 (lemmaNullableThenNotLostCause!32 lt!2116271))))

(declare-fun res!2184732 () Bool)

(declare-fun lostCause!1281 (Regex!14325) Bool)

(assert (=> b!5130184 (= res!2184732 (not (lostCause!1281 lt!2116271)))))

(assert (=> b!5130184 (=> (not res!2184732) (not e!3199596))))

(assert (=> b!5130184 e!3199596))

(declare-fun setNonEmpty!31010 () Bool)

(declare-fun tp!1431216 () Bool)

(declare-fun setElem!31010 () Context!7418)

(declare-fun inv!78993 (Context!7418) Bool)

(assert (=> setNonEmpty!31010 (= setRes!31010 (and tp!1431216 (inv!78993 setElem!31010) e!3199594))))

(declare-fun setRest!31010 () (InoxSet Context!7418))

(assert (=> setNonEmpty!31010 (= z!1113 ((_ map or) (store ((as const (Array Context!7418 Bool)) false) setElem!31010 true) setRest!31010))))

(declare-fun b!5130185 () Bool)

(assert (=> b!5130185 (= e!3199595 e!3199597)))

(declare-fun res!2184733 () Bool)

(assert (=> b!5130185 (=> (not res!2184733) (not e!3199597))))

(declare-fun nullableContext!44 (Context!7418) Bool)

(assert (=> b!5130185 (= res!2184733 (nullableContext!44 lt!2116268))))

(declare-fun getWitness!779 ((InoxSet Context!7418) Int) Context!7418)

(assert (=> b!5130185 (= lt!2116268 (getWitness!779 z!1113 lambda!253511))))

(declare-fun b!5130181 () Bool)

(assert (=> b!5130181 (= e!3199591 e!3199593)))

(declare-fun res!2184729 () Bool)

(assert (=> b!5130181 (=> res!2184729 e!3199593)))

(declare-fun lt!2116270 () Bool)

(assert (=> b!5130181 (= res!2184729 lt!2116270)))

(declare-fun lt!2116267 () Unit!150700)

(assert (=> b!5130181 (= lt!2116267 e!3199592)))

(declare-fun c!882386 () Bool)

(assert (=> b!5130181 (= c!882386 lt!2116270)))

(declare-fun lostCause!1282 (Context!7418) Bool)

(assert (=> b!5130181 (= lt!2116270 (lostCause!1282 lt!2116268))))

(declare-fun res!2184731 () Bool)

(assert (=> start!542308 (=> (not res!2184731) (not e!3199595))))

(declare-fun nullableZipper!1110 ((InoxSet Context!7418)) Bool)

(assert (=> start!542308 (= res!2184731 (nullableZipper!1110 z!1113))))

(assert (=> start!542308 e!3199595))

(declare-fun condSetEmpty!31010 () Bool)

(assert (=> start!542308 (= condSetEmpty!31010 (= z!1113 ((as const (Array Context!7418 Bool)) false)))))

(assert (=> start!542308 setRes!31010))

(assert (= (and start!542308 res!2184731) b!5130183))

(assert (= (and b!5130183 res!2184728) b!5130185))

(assert (= (and b!5130185 res!2184733) b!5130179))

(assert (= (and b!5130179 (not res!2184730)) b!5130182))

(assert (= (and b!5130182 (not res!2184734)) b!5130181))

(assert (= (and b!5130181 c!882386) b!5130184))

(assert (= (and b!5130181 (not c!882386)) b!5130180))

(assert (= (and b!5130184 res!2184732) b!5130176))

(assert (= (and b!5130181 (not res!2184729)) b!5130177))

(assert (= (and start!542308 condSetEmpty!31010) setIsEmpty!31010))

(assert (= (and start!542308 (not condSetEmpty!31010)) setNonEmpty!31010))

(assert (= setNonEmpty!31010 b!5130178))

(declare-fun m!6194954 () Bool)

(assert (=> b!5130181 m!6194954))

(declare-fun m!6194956 () Bool)

(assert (=> b!5130185 m!6194956))

(declare-fun m!6194958 () Bool)

(assert (=> b!5130185 m!6194958))

(declare-fun m!6194960 () Bool)

(assert (=> b!5130184 m!6194960))

(declare-fun m!6194962 () Bool)

(assert (=> b!5130184 m!6194962))

(declare-fun m!6194964 () Bool)

(assert (=> b!5130184 m!6194964))

(declare-fun m!6194966 () Bool)

(assert (=> b!5130184 m!6194966))

(declare-fun m!6194968 () Bool)

(assert (=> b!5130184 m!6194968))

(declare-fun m!6194970 () Bool)

(assert (=> setNonEmpty!31010 m!6194970))

(declare-fun m!6194972 () Bool)

(assert (=> start!542308 m!6194972))

(declare-fun m!6194974 () Bool)

(assert (=> b!5130182 m!6194974))

(declare-fun m!6194976 () Bool)

(assert (=> b!5130179 m!6194976))

(declare-fun m!6194978 () Bool)

(assert (=> b!5130179 m!6194978))

(declare-fun m!6194980 () Bool)

(assert (=> b!5130179 m!6194980))

(declare-fun m!6194982 () Bool)

(assert (=> b!5130183 m!6194982))

(declare-fun m!6194984 () Bool)

(assert (=> b!5130177 m!6194984))

(check-sat (not b!5130185) (not b!5130177) (not setNonEmpty!31010) (not b!5130182) (not b!5130181) (not b!5130184) (not b!5130179) (not start!542308) (not b!5130178) (not b!5130183))
(check-sat)
