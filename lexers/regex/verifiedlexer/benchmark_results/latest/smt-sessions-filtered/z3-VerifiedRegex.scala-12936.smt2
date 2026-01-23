; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712856 () Bool)

(assert start!712856)

(declare-fun b!7315221 () Bool)

(declare-fun e!4379068 () Bool)

(declare-fun tp_is_empty!47559 () Bool)

(declare-fun tp!2076154 () Bool)

(assert (=> b!7315221 (= e!4379068 (and tp_is_empty!47559 tp!2076154))))

(declare-fun setNonEmpty!54308 () Bool)

(declare-fun setRes!54309 () Bool)

(declare-fun tp!2076152 () Bool)

(declare-datatypes ((C!38088 0))(
  ( (C!38089 (val!29140 Int)) )
))
(declare-datatypes ((Regex!18907 0))(
  ( (ElementMatch!18907 (c!1357915 C!38088)) (Concat!27752 (regOne!38326 Regex!18907) (regTwo!38326 Regex!18907)) (EmptyExpr!18907) (Star!18907 (reg!19236 Regex!18907)) (EmptyLang!18907) (Union!18907 (regOne!38327 Regex!18907) (regTwo!38327 Regex!18907)) )
))
(declare-datatypes ((List!71222 0))(
  ( (Nil!71098) (Cons!71098 (h!77546 Regex!18907) (t!385454 List!71222)) )
))
(declare-datatypes ((Context!15694 0))(
  ( (Context!15695 (exprs!8347 List!71222)) )
))
(declare-fun setElem!54308 () Context!15694)

(declare-fun e!4379069 () Bool)

(declare-fun inv!90388 (Context!15694) Bool)

(assert (=> setNonEmpty!54308 (= setRes!54309 (and tp!2076152 (inv!90388 setElem!54308) e!4379069))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!542 () (InoxSet Context!15694))

(declare-fun setRest!54309 () (InoxSet Context!15694))

(assert (=> setNonEmpty!54308 (= z1!542 ((_ map or) (store ((as const (Array Context!15694 Bool)) false) setElem!54308 true) setRest!54309))))

(declare-fun b!7315222 () Bool)

(declare-fun res!2956044 () Bool)

(declare-fun e!4379071 () Bool)

(assert (=> b!7315222 (=> (not res!2956044) (not e!4379071))))

(declare-fun nullableZipper!3088 ((InoxSet Context!15694)) Bool)

(assert (=> b!7315222 (= res!2956044 (nullableZipper!3088 z1!542))))

(declare-fun b!7315223 () Bool)

(declare-fun e!4379072 () Bool)

(assert (=> b!7315223 (= e!4379072 false)))

(declare-fun lt!2601816 () Bool)

(declare-fun lt!2601817 () Context!15694)

(declare-fun nullableContext!393 (Context!15694) Bool)

(assert (=> b!7315223 (= lt!2601816 (nullableContext!393 lt!2601817))))

(declare-fun setNonEmpty!54309 () Bool)

(declare-fun setRes!54308 () Bool)

(declare-fun tp!2076151 () Bool)

(declare-fun setElem!54309 () Context!15694)

(declare-fun e!4379067 () Bool)

(assert (=> setNonEmpty!54309 (= setRes!54308 (and tp!2076151 (inv!90388 setElem!54309) e!4379067))))

(declare-fun z2!461 () (InoxSet Context!15694))

(declare-fun setRest!54308 () (InoxSet Context!15694))

(assert (=> setNonEmpty!54309 (= z2!461 ((_ map or) (store ((as const (Array Context!15694 Bool)) false) setElem!54309 true) setRest!54308))))

(declare-fun setIsEmpty!54309 () Bool)

(assert (=> setIsEmpty!54309 setRes!54308))

(declare-fun b!7315224 () Bool)

(declare-fun res!2956048 () Bool)

(assert (=> b!7315224 (=> (not res!2956048) (not e!4379071))))

(declare-fun lt!2601818 () (InoxSet Context!15694))

(declare-fun lambda!452010 () Int)

(declare-fun exists!4545 ((InoxSet Context!15694) Int) Bool)

(assert (=> b!7315224 (= res!2956048 (not (exists!4545 lt!2601818 lambda!452010)))))

(declare-fun b!7315225 () Bool)

(declare-fun e!4379070 () Bool)

(assert (=> b!7315225 (= e!4379070 e!4379071)))

(declare-fun res!2956045 () Bool)

(assert (=> b!7315225 (=> (not res!2956045) (not e!4379071))))

(assert (=> b!7315225 (= res!2956045 (not (nullableZipper!3088 lt!2601818)))))

(assert (=> b!7315225 (= lt!2601818 ((_ map or) z1!542 z2!461))))

(declare-fun b!7315226 () Bool)

(declare-fun tp!2076155 () Bool)

(assert (=> b!7315226 (= e!4379067 tp!2076155)))

(declare-fun b!7315227 () Bool)

(declare-fun tp!2076153 () Bool)

(assert (=> b!7315227 (= e!4379069 tp!2076153)))

(declare-fun b!7315228 () Bool)

(assert (=> b!7315228 (= e!4379071 e!4379072)))

(declare-fun res!2956047 () Bool)

(assert (=> b!7315228 (=> (not res!2956047) (not e!4379072))))

(assert (=> b!7315228 (= res!2956047 (select lt!2601818 lt!2601817))))

(declare-fun getWitness!2294 ((InoxSet Context!15694) Int) Context!15694)

(assert (=> b!7315228 (= lt!2601817 (getWitness!2294 z1!542 lambda!452010))))

(declare-fun res!2956046 () Bool)

(assert (=> start!712856 (=> (not res!2956046) (not e!4379070))))

(declare-datatypes ((List!71223 0))(
  ( (Nil!71099) (Cons!71099 (h!77547 C!38088) (t!385455 List!71223)) )
))
(declare-fun s!7362 () List!71223)

(get-info :version)

(assert (=> start!712856 (= res!2956046 (not ((_ is Cons!71099) s!7362)))))

(assert (=> start!712856 e!4379070))

(assert (=> start!712856 e!4379068))

(declare-fun condSetEmpty!54308 () Bool)

(assert (=> start!712856 (= condSetEmpty!54308 (= z1!542 ((as const (Array Context!15694 Bool)) false)))))

(assert (=> start!712856 setRes!54309))

(declare-fun condSetEmpty!54309 () Bool)

(assert (=> start!712856 (= condSetEmpty!54309 (= z2!461 ((as const (Array Context!15694 Bool)) false)))))

(assert (=> start!712856 setRes!54308))

(declare-fun setIsEmpty!54308 () Bool)

(assert (=> setIsEmpty!54308 setRes!54309))

(assert (= (and start!712856 res!2956046) b!7315225))

(assert (= (and b!7315225 res!2956045) b!7315224))

(assert (= (and b!7315224 res!2956048) b!7315222))

(assert (= (and b!7315222 res!2956044) b!7315228))

(assert (= (and b!7315228 res!2956047) b!7315223))

(assert (= (and start!712856 ((_ is Cons!71099) s!7362)) b!7315221))

(assert (= (and start!712856 condSetEmpty!54308) setIsEmpty!54308))

(assert (= (and start!712856 (not condSetEmpty!54308)) setNonEmpty!54308))

(assert (= setNonEmpty!54308 b!7315227))

(assert (= (and start!712856 condSetEmpty!54309) setIsEmpty!54309))

(assert (= (and start!712856 (not condSetEmpty!54309)) setNonEmpty!54309))

(assert (= setNonEmpty!54309 b!7315226))

(declare-fun m!7979230 () Bool)

(assert (=> b!7315223 m!7979230))

(declare-fun m!7979232 () Bool)

(assert (=> b!7315222 m!7979232))

(declare-fun m!7979234 () Bool)

(assert (=> b!7315228 m!7979234))

(declare-fun m!7979236 () Bool)

(assert (=> b!7315228 m!7979236))

(declare-fun m!7979238 () Bool)

(assert (=> setNonEmpty!54308 m!7979238))

(declare-fun m!7979240 () Bool)

(assert (=> b!7315225 m!7979240))

(declare-fun m!7979242 () Bool)

(assert (=> setNonEmpty!54309 m!7979242))

(declare-fun m!7979244 () Bool)

(assert (=> b!7315224 m!7979244))

(check-sat (not setNonEmpty!54309) (not b!7315227) (not setNonEmpty!54308) (not b!7315225) (not b!7315221) (not b!7315228) (not b!7315224) tp_is_empty!47559 (not b!7315226) (not b!7315222) (not b!7315223))
(check-sat)
