; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!677862 () Bool)

(assert start!677862)

(declare-fun b!7023744 () Bool)

(assert (=> b!7023744 true))

(declare-fun b!7023740 () Bool)

(assert (=> b!7023740 true))

(declare-fun b!7023738 () Bool)

(declare-fun res!2867232 () Bool)

(declare-fun e!4222244 () Bool)

(assert (=> b!7023738 (=> res!2867232 e!4222244)))

(declare-datatypes ((C!35132 0))(
  ( (C!35133 (val!27268 Int)) )
))
(declare-datatypes ((Regex!17431 0))(
  ( (ElementMatch!17431 (c!1305424 C!35132)) (Concat!26276 (regOne!35374 Regex!17431) (regTwo!35374 Regex!17431)) (EmptyExpr!17431) (Star!17431 (reg!17760 Regex!17431)) (EmptyLang!17431) (Union!17431 (regOne!35375 Regex!17431) (regTwo!35375 Regex!17431)) )
))
(declare-datatypes ((List!67821 0))(
  ( (Nil!67697) (Cons!67697 (h!74145 Regex!17431) (t!381576 List!67821)) )
))
(declare-datatypes ((Context!12854 0))(
  ( (Context!12855 (exprs!6927 List!67821)) )
))
(declare-fun lt!2513324 () Context!12854)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2513325 () (InoxSet Context!12854))

(assert (=> b!7023738 (= res!2867232 (not (select lt!2513325 lt!2513324)))))

(declare-fun b!7023739 () Bool)

(declare-fun e!4222246 () Bool)

(declare-fun tp_is_empty!44087 () Bool)

(declare-fun tp!1935076 () Bool)

(assert (=> b!7023739 (= e!4222246 (and tp_is_empty!44087 tp!1935076))))

(declare-fun e!4222242 () Bool)

(assert (=> b!7023740 (= e!4222244 e!4222242)))

(declare-fun res!2867233 () Bool)

(assert (=> b!7023740 (=> res!2867233 e!4222242)))

(declare-fun lt!2513322 () Context!12854)

(declare-fun z1!570 () (InoxSet Context!12854))

(declare-fun lt!2513326 () Context!12854)

(assert (=> b!7023740 (= res!2867233 (or (not (= lt!2513322 lt!2513324)) (not (select z1!570 lt!2513326))))))

(declare-fun ct2!306 () Context!12854)

(declare-fun ++!15464 (List!67821 List!67821) List!67821)

(assert (=> b!7023740 (= lt!2513322 (Context!12855 (++!15464 (exprs!6927 lt!2513326) (exprs!6927 ct2!306))))))

(declare-fun lambda!412377 () Int)

(declare-datatypes ((Unit!161524 0))(
  ( (Unit!161525) )
))
(declare-fun lt!2513323 () Unit!161524)

(declare-fun lemmaConcatPreservesForall!752 (List!67821 List!67821 Int) Unit!161524)

(assert (=> b!7023740 (= lt!2513323 (lemmaConcatPreservesForall!752 (exprs!6927 lt!2513326) (exprs!6927 ct2!306) lambda!412377))))

(declare-fun lambda!412376 () Int)

(declare-fun mapPost2!272 ((InoxSet Context!12854) Int Context!12854) Context!12854)

(assert (=> b!7023740 (= lt!2513326 (mapPost2!272 z1!570 lambda!412376 lt!2513324))))

(declare-fun b!7023741 () Bool)

(declare-fun e!4222243 () Bool)

(declare-fun tp!1935075 () Bool)

(assert (=> b!7023741 (= e!4222243 tp!1935075)))

(declare-fun b!7023743 () Bool)

(declare-fun e!4222245 () Bool)

(declare-fun tp!1935077 () Bool)

(assert (=> b!7023743 (= e!4222245 tp!1935077)))

(declare-fun e!4222241 () Bool)

(assert (=> b!7023744 (= e!4222241 (not e!4222244))))

(declare-fun res!2867235 () Bool)

(assert (=> b!7023744 (=> res!2867235 e!4222244)))

(declare-fun lt!2513327 () (InoxSet Context!12854))

(declare-datatypes ((List!67822 0))(
  ( (Nil!67698) (Cons!67698 (h!74146 C!35132) (t!381577 List!67822)) )
))
(declare-fun s!7408 () List!67822)

(declare-fun matchZipper!2971 ((InoxSet Context!12854) List!67822) Bool)

(assert (=> b!7023744 (= res!2867235 (not (matchZipper!2971 lt!2513327 s!7408)))))

(assert (=> b!7023744 (= lt!2513327 (store ((as const (Array Context!12854 Bool)) false) lt!2513324 true))))

(declare-fun lambda!412375 () Int)

(declare-fun getWitness!1415 ((InoxSet Context!12854) Int) Context!12854)

(assert (=> b!7023744 (= lt!2513324 (getWitness!1415 lt!2513325 lambda!412375))))

(declare-datatypes ((List!67823 0))(
  ( (Nil!67699) (Cons!67699 (h!74147 Context!12854) (t!381578 List!67823)) )
))
(declare-fun lt!2513321 () List!67823)

(declare-fun exists!3334 (List!67823 Int) Bool)

(assert (=> b!7023744 (exists!3334 lt!2513321 lambda!412375)))

(declare-fun lt!2513320 () Unit!161524)

(declare-fun lemmaZipperMatchesExistsMatchingContext!370 (List!67823 List!67822) Unit!161524)

(assert (=> b!7023744 (= lt!2513320 (lemmaZipperMatchesExistsMatchingContext!370 lt!2513321 s!7408))))

(declare-fun toList!10774 ((InoxSet Context!12854)) List!67823)

(assert (=> b!7023744 (= lt!2513321 (toList!10774 lt!2513325))))

(declare-fun setNonEmpty!48908 () Bool)

(declare-fun setElem!48908 () Context!12854)

(declare-fun setRes!48908 () Bool)

(declare-fun tp!1935074 () Bool)

(declare-fun inv!86436 (Context!12854) Bool)

(assert (=> setNonEmpty!48908 (= setRes!48908 (and tp!1935074 (inv!86436 setElem!48908) e!4222245))))

(declare-fun setRest!48908 () (InoxSet Context!12854))

(assert (=> setNonEmpty!48908 (= z1!570 ((_ map or) (store ((as const (Array Context!12854 Bool)) false) setElem!48908 true) setRest!48908))))

(declare-fun setIsEmpty!48908 () Bool)

(assert (=> setIsEmpty!48908 setRes!48908))

(declare-fun b!7023745 () Bool)

(assert (=> b!7023745 (= e!4222242 (= (store ((as const (Array Context!12854 Bool)) false) lt!2513322 true) lt!2513327))))

(declare-fun lt!2513319 () Unit!161524)

(assert (=> b!7023745 (= lt!2513319 (lemmaConcatPreservesForall!752 (exprs!6927 lt!2513326) (exprs!6927 ct2!306) lambda!412377))))

(declare-fun res!2867234 () Bool)

(assert (=> start!677862 (=> (not res!2867234) (not e!4222241))))

(assert (=> start!677862 (= res!2867234 (matchZipper!2971 lt!2513325 s!7408))))

(declare-fun appendTo!552 ((InoxSet Context!12854) Context!12854) (InoxSet Context!12854))

(assert (=> start!677862 (= lt!2513325 (appendTo!552 z1!570 ct2!306))))

(assert (=> start!677862 e!4222241))

(declare-fun condSetEmpty!48908 () Bool)

(assert (=> start!677862 (= condSetEmpty!48908 (= z1!570 ((as const (Array Context!12854 Bool)) false)))))

(assert (=> start!677862 setRes!48908))

(assert (=> start!677862 (and (inv!86436 ct2!306) e!4222243)))

(assert (=> start!677862 e!4222246))

(declare-fun b!7023742 () Bool)

(declare-fun res!2867231 () Bool)

(assert (=> b!7023742 (=> (not res!2867231) (not e!4222241))))

(get-info :version)

(assert (=> b!7023742 (= res!2867231 ((_ is Cons!67698) s!7408))))

(assert (= (and start!677862 res!2867234) b!7023742))

(assert (= (and b!7023742 res!2867231) b!7023744))

(assert (= (and b!7023744 (not res!2867235)) b!7023738))

(assert (= (and b!7023738 (not res!2867232)) b!7023740))

(assert (= (and b!7023740 (not res!2867233)) b!7023745))

(assert (= (and start!677862 condSetEmpty!48908) setIsEmpty!48908))

(assert (= (and start!677862 (not condSetEmpty!48908)) setNonEmpty!48908))

(assert (= setNonEmpty!48908 b!7023743))

(assert (= start!677862 b!7023741))

(assert (= (and start!677862 ((_ is Cons!67698) s!7408)) b!7023739))

(declare-fun m!7726334 () Bool)

(assert (=> b!7023740 m!7726334))

(declare-fun m!7726336 () Bool)

(assert (=> b!7023740 m!7726336))

(declare-fun m!7726338 () Bool)

(assert (=> b!7023740 m!7726338))

(declare-fun m!7726340 () Bool)

(assert (=> b!7023740 m!7726340))

(declare-fun m!7726342 () Bool)

(assert (=> b!7023745 m!7726342))

(assert (=> b!7023745 m!7726338))

(declare-fun m!7726344 () Bool)

(assert (=> setNonEmpty!48908 m!7726344))

(declare-fun m!7726346 () Bool)

(assert (=> start!677862 m!7726346))

(declare-fun m!7726348 () Bool)

(assert (=> start!677862 m!7726348))

(declare-fun m!7726350 () Bool)

(assert (=> start!677862 m!7726350))

(declare-fun m!7726352 () Bool)

(assert (=> b!7023738 m!7726352))

(declare-fun m!7726354 () Bool)

(assert (=> b!7023744 m!7726354))

(declare-fun m!7726356 () Bool)

(assert (=> b!7023744 m!7726356))

(declare-fun m!7726358 () Bool)

(assert (=> b!7023744 m!7726358))

(declare-fun m!7726360 () Bool)

(assert (=> b!7023744 m!7726360))

(declare-fun m!7726362 () Bool)

(assert (=> b!7023744 m!7726362))

(declare-fun m!7726364 () Bool)

(assert (=> b!7023744 m!7726364))

(check-sat (not b!7023740) (not start!677862) (not setNonEmpty!48908) tp_is_empty!44087 (not b!7023741) (not b!7023739) (not b!7023743) (not b!7023744) (not b!7023745))
(check-sat)
