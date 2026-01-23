; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!672334 () Bool)

(assert start!672334)

(declare-fun b!6992976 () Bool)

(assert (=> b!6992976 true))

(declare-fun b!6992958 () Bool)

(assert (=> b!6992958 true))

(declare-fun b!6992961 () Bool)

(assert (=> b!6992961 true))

(declare-fun setIsEmpty!47919 () Bool)

(declare-fun setRes!47919 () Bool)

(assert (=> setIsEmpty!47919 setRes!47919))

(declare-fun e!4203267 () Bool)

(declare-fun e!4203266 () Bool)

(assert (=> b!6992958 (= e!4203267 e!4203266)))

(declare-fun res!2852157 () Bool)

(assert (=> b!6992958 (=> res!2852157 e!4203266)))

(declare-datatypes ((C!34752 0))(
  ( (C!34753 (val!27078 Int)) )
))
(declare-datatypes ((Regex!17241 0))(
  ( (ElementMatch!17241 (c!1297280 C!34752)) (Concat!26086 (regOne!34994 Regex!17241) (regTwo!34994 Regex!17241)) (EmptyExpr!17241) (Star!17241 (reg!17570 Regex!17241)) (EmptyLang!17241) (Union!17241 (regOne!34995 Regex!17241) (regTwo!34995 Regex!17241)) )
))
(declare-datatypes ((List!67268 0))(
  ( (Nil!67144) (Cons!67144 (h!73592 Regex!17241) (t!381015 List!67268)) )
))
(declare-datatypes ((Context!12474 0))(
  ( (Context!12475 (exprs!6737 List!67268)) )
))
(declare-fun lt!2489985 () Context!12474)

(declare-fun lt!2490020 () Context!12474)

(declare-fun lt!2489988 () Context!12474)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12474))

(assert (=> b!6992958 (= res!2852157 (or (not (= lt!2490020 lt!2489985)) (not (select z1!570 lt!2489988))))))

(declare-fun ct2!306 () Context!12474)

(declare-fun ++!15186 (List!67268 List!67268) List!67268)

(assert (=> b!6992958 (= lt!2490020 (Context!12475 (++!15186 (exprs!6737 lt!2489988) (exprs!6737 ct2!306))))))

(declare-datatypes ((Unit!161137 0))(
  ( (Unit!161138) )
))
(declare-fun lt!2489990 () Unit!161137)

(declare-fun lambda!403067 () Int)

(declare-fun lemmaConcatPreservesForall!577 (List!67268 List!67268 Int) Unit!161137)

(assert (=> b!6992958 (= lt!2489990 (lemmaConcatPreservesForall!577 (exprs!6737 lt!2489988) (exprs!6737 ct2!306) lambda!403067))))

(declare-fun lambda!403066 () Int)

(declare-fun mapPost2!96 ((InoxSet Context!12474) Int Context!12474) Context!12474)

(assert (=> b!6992958 (= lt!2489988 (mapPost2!96 z1!570 lambda!403066 lt!2489985))))

(declare-fun e!4203263 () Bool)

(declare-fun setElem!47919 () Context!12474)

(declare-fun setNonEmpty!47919 () Bool)

(declare-fun tp!1930212 () Bool)

(declare-fun inv!85961 (Context!12474) Bool)

(assert (=> setNonEmpty!47919 (= setRes!47919 (and tp!1930212 (inv!85961 setElem!47919) e!4203263))))

(declare-fun setRest!47919 () (InoxSet Context!12474))

(assert (=> setNonEmpty!47919 (= z1!570 ((_ map or) (store ((as const (Array Context!12474 Bool)) false) setElem!47919 true) setRest!47919))))

(declare-fun b!6992959 () Bool)

(declare-fun res!2852150 () Bool)

(declare-fun e!4203258 () Bool)

(assert (=> b!6992959 (=> res!2852150 e!4203258)))

(declare-fun isEmpty!39187 (List!67268) Bool)

(assert (=> b!6992959 (= res!2852150 (isEmpty!39187 (exprs!6737 lt!2489988)))))

(declare-fun b!6992960 () Bool)

(declare-fun e!4203270 () Bool)

(declare-fun e!4203259 () Bool)

(assert (=> b!6992960 (= e!4203270 e!4203259)))

(declare-fun res!2852146 () Bool)

(assert (=> b!6992960 (=> res!2852146 e!4203259)))

(declare-fun lt!2490001 () Int)

(declare-fun lt!2490012 () Context!12474)

(declare-fun contextDepthTotal!434 (Context!12474) Int)

(assert (=> b!6992960 (= res!2852146 (<= lt!2490001 (contextDepthTotal!434 lt!2490012)))))

(declare-fun lt!2489982 () Int)

(assert (=> b!6992960 (<= lt!2490001 lt!2489982)))

(declare-datatypes ((List!67269 0))(
  ( (Nil!67145) (Cons!67145 (h!73593 Context!12474) (t!381016 List!67269)) )
))
(declare-fun lt!2489996 () List!67269)

(declare-fun zipperDepthTotal!462 (List!67269) Int)

(assert (=> b!6992960 (= lt!2489982 (zipperDepthTotal!462 lt!2489996))))

(assert (=> b!6992960 (= lt!2490001 (contextDepthTotal!434 lt!2489988))))

(declare-fun lt!2490022 () Unit!161137)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!2 (List!67269 Context!12474) Unit!161137)

(assert (=> b!6992960 (= lt!2490022 (lemmaTotalDepthZipperLargerThanOfAnyContext!2 lt!2489996 lt!2489988))))

(declare-fun toList!10601 ((InoxSet Context!12474)) List!67269)

(assert (=> b!6992960 (= lt!2489996 (toList!10601 z1!570))))

(declare-fun lt!2489997 () List!67268)

(declare-fun lt!2490016 () Unit!161137)

(assert (=> b!6992960 (= lt!2490016 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun lt!2489993 () Unit!161137)

(assert (=> b!6992960 (= lt!2489993 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun lt!2490010 () Unit!161137)

(assert (=> b!6992960 (= lt!2490010 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun lt!2490013 () (InoxSet Context!12474))

(declare-datatypes ((List!67270 0))(
  ( (Nil!67146) (Cons!67146 (h!73594 C!34752) (t!381017 List!67270)) )
))
(declare-fun s!7408 () List!67270)

(declare-fun lambda!403068 () Int)

(declare-fun flatMap!2227 ((InoxSet Context!12474) Int) (InoxSet Context!12474))

(declare-fun derivationStepZipperUp!1891 (Context!12474 C!34752) (InoxSet Context!12474))

(assert (=> b!6992960 (= (flatMap!2227 lt!2490013 lambda!403068) (derivationStepZipperUp!1891 lt!2490012 (h!73594 s!7408)))))

(declare-fun lt!2490000 () Unit!161137)

(declare-fun lemmaFlatMapOnSingletonSet!1742 ((InoxSet Context!12474) Context!12474 Int) Unit!161137)

(assert (=> b!6992960 (= lt!2490000 (lemmaFlatMapOnSingletonSet!1742 lt!2490013 lt!2490012 lambda!403068))))

(declare-fun map!15508 ((InoxSet Context!12474) Int) (InoxSet Context!12474))

(assert (=> b!6992960 (= (map!15508 lt!2490013 lambda!403066) (store ((as const (Array Context!12474 Bool)) false) (Context!12475 (++!15186 lt!2489997 (exprs!6737 ct2!306))) true))))

(declare-fun lt!2490018 () Unit!161137)

(assert (=> b!6992960 (= lt!2490018 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun lt!2489983 () Unit!161137)

(declare-fun lemmaMapOnSingletonSet!306 ((InoxSet Context!12474) Context!12474 Int) Unit!161137)

(assert (=> b!6992960 (= lt!2489983 (lemmaMapOnSingletonSet!306 lt!2490013 lt!2490012 lambda!403066))))

(assert (=> b!6992960 (= lt!2490013 (store ((as const (Array Context!12474 Bool)) false) lt!2490012 true))))

(declare-fun e!4203273 () Bool)

(assert (=> b!6992961 (= e!4203273 e!4203258)))

(declare-fun res!2852158 () Bool)

(assert (=> b!6992961 (=> res!2852158 e!4203258)))

(declare-fun lt!2490004 () (InoxSet Context!12474))

(declare-fun lt!2490023 () (InoxSet Context!12474))

(declare-fun derivationStepZipper!2721 ((InoxSet Context!12474) C!34752) (InoxSet Context!12474))

(assert (=> b!6992961 (= res!2852158 (not (= (derivationStepZipper!2721 lt!2490023 (h!73594 s!7408)) lt!2490004)))))

(assert (=> b!6992961 (= (flatMap!2227 lt!2490023 lambda!403068) (derivationStepZipperUp!1891 lt!2490020 (h!73594 s!7408)))))

(declare-fun lt!2490009 () Unit!161137)

(assert (=> b!6992961 (= lt!2490009 (lemmaFlatMapOnSingletonSet!1742 lt!2490023 lt!2490020 lambda!403068))))

(assert (=> b!6992961 (= lt!2490004 (derivationStepZipperUp!1891 lt!2490020 (h!73594 s!7408)))))

(declare-fun lt!2490019 () Unit!161137)

(assert (=> b!6992961 (= lt!2490019 (lemmaConcatPreservesForall!577 (exprs!6737 lt!2489988) (exprs!6737 ct2!306) lambda!403067))))

(declare-fun b!6992963 () Bool)

(assert (=> b!6992963 (= e!4203266 e!4203273)))

(declare-fun res!2852164 () Bool)

(assert (=> b!6992963 (=> res!2852164 e!4203273)))

(declare-fun lt!2490006 () (InoxSet Context!12474))

(assert (=> b!6992963 (= res!2852164 (not (= lt!2490023 lt!2490006)))))

(assert (=> b!6992963 (= lt!2490023 (store ((as const (Array Context!12474 Bool)) false) lt!2490020 true))))

(declare-fun lt!2490003 () Unit!161137)

(assert (=> b!6992963 (= lt!2490003 (lemmaConcatPreservesForall!577 (exprs!6737 lt!2489988) (exprs!6737 ct2!306) lambda!403067))))

(declare-fun b!6992964 () Bool)

(declare-fun e!4203268 () Bool)

(declare-fun e!4203261 () Bool)

(assert (=> b!6992964 (= e!4203268 e!4203261)))

(declare-fun res!2852155 () Bool)

(assert (=> b!6992964 (=> res!2852155 e!4203261)))

(declare-fun e!4203272 () Bool)

(assert (=> b!6992964 (= res!2852155 e!4203272)))

(declare-fun res!2852152 () Bool)

(assert (=> b!6992964 (=> (not res!2852152) (not e!4203272))))

(declare-fun lt!2489977 () Bool)

(declare-fun lt!2489976 () Bool)

(assert (=> b!6992964 (= res!2852152 (not (= lt!2489977 lt!2489976)))))

(declare-fun matchZipper!2781 ((InoxSet Context!12474) List!67270) Bool)

(assert (=> b!6992964 (= lt!2489977 (matchZipper!2781 lt!2490004 (t!381017 s!7408)))))

(declare-fun lt!2490011 () Unit!161137)

(assert (=> b!6992964 (= lt!2490011 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun lt!2489998 () (InoxSet Context!12474))

(declare-fun e!4203269 () Bool)

(assert (=> b!6992964 (= (matchZipper!2781 lt!2489998 (t!381017 s!7408)) e!4203269)))

(declare-fun res!2852149 () Bool)

(assert (=> b!6992964 (=> res!2852149 e!4203269)))

(assert (=> b!6992964 (= res!2852149 lt!2489976)))

(declare-fun lt!2489979 () (InoxSet Context!12474))

(assert (=> b!6992964 (= lt!2489976 (matchZipper!2781 lt!2489979 (t!381017 s!7408)))))

(declare-fun lt!2489994 () (InoxSet Context!12474))

(declare-fun lt!2490014 () Unit!161137)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1414 ((InoxSet Context!12474) (InoxSet Context!12474) List!67270) Unit!161137)

(assert (=> b!6992964 (= lt!2490014 (lemmaZipperConcatMatchesSameAsBothZippers!1414 lt!2489979 lt!2489994 (t!381017 s!7408)))))

(declare-fun lt!2489984 () Unit!161137)

(assert (=> b!6992964 (= lt!2489984 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun lt!2489980 () Unit!161137)

(assert (=> b!6992964 (= lt!2489980 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun b!6992965 () Bool)

(declare-fun e!4203262 () Bool)

(assert (=> b!6992965 (= e!4203262 e!4203268)))

(declare-fun res!2852154 () Bool)

(assert (=> b!6992965 (=> res!2852154 e!4203268)))

(assert (=> b!6992965 (= res!2852154 (not (= lt!2490004 lt!2489998)))))

(assert (=> b!6992965 (= lt!2489998 ((_ map or) lt!2489979 lt!2489994))))

(declare-fun lt!2490002 () Context!12474)

(assert (=> b!6992965 (= lt!2489994 (derivationStepZipperUp!1891 lt!2490002 (h!73594 s!7408)))))

(declare-fun derivationStepZipperDown!1959 (Regex!17241 Context!12474 C!34752) (InoxSet Context!12474))

(assert (=> b!6992965 (= lt!2489979 (derivationStepZipperDown!1959 (h!73592 (exprs!6737 lt!2489988)) lt!2490002 (h!73594 s!7408)))))

(assert (=> b!6992965 (= lt!2490002 (Context!12475 (++!15186 lt!2489997 (exprs!6737 ct2!306))))))

(declare-fun lt!2490008 () Unit!161137)

(assert (=> b!6992965 (= lt!2490008 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun lt!2489981 () Unit!161137)

(assert (=> b!6992965 (= lt!2489981 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun b!6992966 () Bool)

(declare-fun e!4203271 () Bool)

(declare-fun tp_is_empty!43707 () Bool)

(declare-fun tp!1930214 () Bool)

(assert (=> b!6992966 (= e!4203271 (and tp_is_empty!43707 tp!1930214))))

(declare-fun b!6992967 () Bool)

(declare-fun e!4203264 () Bool)

(declare-fun tp!1930213 () Bool)

(assert (=> b!6992967 (= e!4203264 tp!1930213)))

(declare-fun b!6992968 () Bool)

(declare-fun res!2852159 () Bool)

(assert (=> b!6992968 (=> res!2852159 e!4203261)))

(assert (=> b!6992968 (= res!2852159 (not lt!2489977))))

(declare-fun b!6992969 () Bool)

(declare-fun e!4203265 () Bool)

(declare-fun e!4203260 () Bool)

(assert (=> b!6992969 (= e!4203265 e!4203260)))

(declare-fun res!2852145 () Bool)

(assert (=> b!6992969 (=> res!2852145 e!4203260)))

(declare-fun lt!2489992 () (InoxSet Context!12474))

(assert (=> b!6992969 (= res!2852145 (not (= (derivationStepZipper!2721 lt!2489992 (h!73594 s!7408)) lt!2489994)))))

(declare-fun lt!2489989 () Unit!161137)

(assert (=> b!6992969 (= lt!2489989 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun lt!2489999 () Unit!161137)

(assert (=> b!6992969 (= lt!2489999 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(assert (=> b!6992969 (= (flatMap!2227 lt!2489992 lambda!403068) (derivationStepZipperUp!1891 lt!2490002 (h!73594 s!7408)))))

(declare-fun lt!2489986 () Unit!161137)

(assert (=> b!6992969 (= lt!2489986 (lemmaFlatMapOnSingletonSet!1742 lt!2489992 lt!2490002 lambda!403068))))

(assert (=> b!6992969 (= lt!2489992 (store ((as const (Array Context!12474 Bool)) false) lt!2490002 true))))

(declare-fun lt!2490017 () Unit!161137)

(assert (=> b!6992969 (= lt!2490017 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun lt!2489991 () Unit!161137)

(assert (=> b!6992969 (= lt!2489991 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun b!6992962 () Bool)

(assert (=> b!6992962 (= e!4203261 e!4203265)))

(declare-fun res!2852151 () Bool)

(assert (=> b!6992962 (=> res!2852151 e!4203265)))

(assert (=> b!6992962 (= res!2852151 (not (matchZipper!2781 lt!2489994 (t!381017 s!7408))))))

(declare-fun lt!2490021 () Unit!161137)

(assert (=> b!6992962 (= lt!2490021 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun res!2852161 () Bool)

(declare-fun e!4203274 () Bool)

(assert (=> start!672334 (=> (not res!2852161) (not e!4203274))))

(declare-fun lt!2490007 () (InoxSet Context!12474))

(assert (=> start!672334 (= res!2852161 (matchZipper!2781 lt!2490007 s!7408))))

(declare-fun appendTo!362 ((InoxSet Context!12474) Context!12474) (InoxSet Context!12474))

(assert (=> start!672334 (= lt!2490007 (appendTo!362 z1!570 ct2!306))))

(assert (=> start!672334 e!4203274))

(declare-fun condSetEmpty!47919 () Bool)

(assert (=> start!672334 (= condSetEmpty!47919 (= z1!570 ((as const (Array Context!12474 Bool)) false)))))

(assert (=> start!672334 setRes!47919))

(assert (=> start!672334 (and (inv!85961 ct2!306) e!4203264)))

(assert (=> start!672334 e!4203271))

(declare-fun b!6992970 () Bool)

(assert (=> b!6992970 (= e!4203258 e!4203262)))

(declare-fun res!2852156 () Bool)

(assert (=> b!6992970 (=> res!2852156 e!4203262)))

(declare-fun nullable!7001 (Regex!17241) Bool)

(assert (=> b!6992970 (= res!2852156 (not (nullable!7001 (h!73592 (exprs!6737 lt!2489988)))))))

(assert (=> b!6992970 (= lt!2490012 (Context!12475 lt!2489997))))

(declare-fun tail!13263 (List!67268) List!67268)

(assert (=> b!6992970 (= lt!2489997 (tail!13263 (exprs!6737 lt!2489988)))))

(declare-fun b!6992971 () Bool)

(declare-fun res!2852162 () Bool)

(assert (=> b!6992971 (=> res!2852162 e!4203258)))

(get-info :version)

(assert (=> b!6992971 (= res!2852162 (not ((_ is Cons!67144) (exprs!6737 lt!2489988))))))

(declare-fun b!6992972 () Bool)

(declare-fun tp!1930211 () Bool)

(assert (=> b!6992972 (= e!4203263 tp!1930211)))

(declare-fun b!6992973 () Bool)

(assert (=> b!6992973 (= e!4203259 true)))

(declare-fun lt!2489995 () Bool)

(assert (=> b!6992973 (= lt!2489995 (matchZipper!2781 (appendTo!362 lt!2490013 ct2!306) s!7408))))

(declare-fun b!6992974 () Bool)

(declare-fun res!2852147 () Bool)

(assert (=> b!6992974 (=> (not res!2852147) (not e!4203274))))

(assert (=> b!6992974 (= res!2852147 ((_ is Cons!67146) s!7408))))

(declare-fun b!6992975 () Bool)

(declare-fun res!2852163 () Bool)

(assert (=> b!6992975 (=> res!2852163 e!4203259)))

(assert (=> b!6992975 (= res!2852163 (>= (zipperDepthTotal!462 (Cons!67145 lt!2490012 Nil!67145)) lt!2489982))))

(assert (=> b!6992976 (= e!4203274 (not e!4203267))))

(declare-fun res!2852148 () Bool)

(assert (=> b!6992976 (=> res!2852148 e!4203267)))

(assert (=> b!6992976 (= res!2852148 (not (matchZipper!2781 lt!2490006 s!7408)))))

(assert (=> b!6992976 (= lt!2490006 (store ((as const (Array Context!12474 Bool)) false) lt!2489985 true))))

(declare-fun lambda!403065 () Int)

(declare-fun getWitness!1149 ((InoxSet Context!12474) Int) Context!12474)

(assert (=> b!6992976 (= lt!2489985 (getWitness!1149 lt!2490007 lambda!403065))))

(declare-fun lt!2489987 () List!67269)

(declare-fun exists!3037 (List!67269 Int) Bool)

(assert (=> b!6992976 (exists!3037 lt!2489987 lambda!403065)))

(declare-fun lt!2490005 () Unit!161137)

(declare-fun lemmaZipperMatchesExistsMatchingContext!210 (List!67269 List!67270) Unit!161137)

(assert (=> b!6992976 (= lt!2490005 (lemmaZipperMatchesExistsMatchingContext!210 lt!2489987 s!7408))))

(assert (=> b!6992976 (= lt!2489987 (toList!10601 lt!2490007))))

(declare-fun b!6992977 () Bool)

(assert (=> b!6992977 (= e!4203272 (not (matchZipper!2781 lt!2489994 (t!381017 s!7408))))))

(declare-fun lt!2489978 () Unit!161137)

(assert (=> b!6992977 (= lt!2489978 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun b!6992978 () Bool)

(assert (=> b!6992978 (= e!4203260 e!4203270)))

(declare-fun res!2852153 () Bool)

(assert (=> b!6992978 (=> res!2852153 e!4203270)))

(assert (=> b!6992978 (= res!2852153 (not (matchZipper!2781 lt!2489992 s!7408)))))

(declare-fun lt!2490015 () Unit!161137)

(assert (=> b!6992978 (= lt!2490015 (lemmaConcatPreservesForall!577 lt!2489997 (exprs!6737 ct2!306) lambda!403067))))

(declare-fun b!6992979 () Bool)

(assert (=> b!6992979 (= e!4203269 (matchZipper!2781 lt!2489994 (t!381017 s!7408)))))

(declare-fun b!6992980 () Bool)

(declare-fun res!2852160 () Bool)

(assert (=> b!6992980 (=> res!2852160 e!4203267)))

(assert (=> b!6992980 (= res!2852160 (not (select lt!2490007 lt!2489985)))))

(assert (= (and start!672334 res!2852161) b!6992974))

(assert (= (and b!6992974 res!2852147) b!6992976))

(assert (= (and b!6992976 (not res!2852148)) b!6992980))

(assert (= (and b!6992980 (not res!2852160)) b!6992958))

(assert (= (and b!6992958 (not res!2852157)) b!6992963))

(assert (= (and b!6992963 (not res!2852164)) b!6992961))

(assert (= (and b!6992961 (not res!2852158)) b!6992971))

(assert (= (and b!6992971 (not res!2852162)) b!6992959))

(assert (= (and b!6992959 (not res!2852150)) b!6992970))

(assert (= (and b!6992970 (not res!2852156)) b!6992965))

(assert (= (and b!6992965 (not res!2852154)) b!6992964))

(assert (= (and b!6992964 (not res!2852149)) b!6992979))

(assert (= (and b!6992964 res!2852152) b!6992977))

(assert (= (and b!6992964 (not res!2852155)) b!6992968))

(assert (= (and b!6992968 (not res!2852159)) b!6992962))

(assert (= (and b!6992962 (not res!2852151)) b!6992969))

(assert (= (and b!6992969 (not res!2852145)) b!6992978))

(assert (= (and b!6992978 (not res!2852153)) b!6992960))

(assert (= (and b!6992960 (not res!2852146)) b!6992975))

(assert (= (and b!6992975 (not res!2852163)) b!6992973))

(assert (= (and start!672334 condSetEmpty!47919) setIsEmpty!47919))

(assert (= (and start!672334 (not condSetEmpty!47919)) setNonEmpty!47919))

(assert (= setNonEmpty!47919 b!6992972))

(assert (= start!672334 b!6992967))

(assert (= (and start!672334 ((_ is Cons!67146) s!7408)) b!6992966))

(declare-fun m!7683032 () Bool)

(assert (=> b!6992960 m!7683032))

(declare-fun m!7683034 () Bool)

(assert (=> b!6992960 m!7683034))

(declare-fun m!7683036 () Bool)

(assert (=> b!6992960 m!7683036))

(declare-fun m!7683038 () Bool)

(assert (=> b!6992960 m!7683038))

(declare-fun m!7683040 () Bool)

(assert (=> b!6992960 m!7683040))

(declare-fun m!7683042 () Bool)

(assert (=> b!6992960 m!7683042))

(assert (=> b!6992960 m!7683042))

(declare-fun m!7683044 () Bool)

(assert (=> b!6992960 m!7683044))

(declare-fun m!7683046 () Bool)

(assert (=> b!6992960 m!7683046))

(declare-fun m!7683048 () Bool)

(assert (=> b!6992960 m!7683048))

(declare-fun m!7683050 () Bool)

(assert (=> b!6992960 m!7683050))

(declare-fun m!7683052 () Bool)

(assert (=> b!6992960 m!7683052))

(assert (=> b!6992960 m!7683042))

(declare-fun m!7683054 () Bool)

(assert (=> b!6992960 m!7683054))

(declare-fun m!7683056 () Bool)

(assert (=> b!6992960 m!7683056))

(assert (=> b!6992960 m!7683042))

(declare-fun m!7683058 () Bool)

(assert (=> b!6992960 m!7683058))

(declare-fun m!7683060 () Bool)

(assert (=> b!6992959 m!7683060))

(declare-fun m!7683062 () Bool)

(assert (=> b!6992958 m!7683062))

(declare-fun m!7683064 () Bool)

(assert (=> b!6992958 m!7683064))

(declare-fun m!7683066 () Bool)

(assert (=> b!6992958 m!7683066))

(declare-fun m!7683068 () Bool)

(assert (=> b!6992958 m!7683068))

(declare-fun m!7683070 () Bool)

(assert (=> b!6992977 m!7683070))

(assert (=> b!6992977 m!7683042))

(assert (=> b!6992979 m!7683070))

(declare-fun m!7683072 () Bool)

(assert (=> b!6992970 m!7683072))

(declare-fun m!7683074 () Bool)

(assert (=> b!6992970 m!7683074))

(declare-fun m!7683076 () Bool)

(assert (=> start!672334 m!7683076))

(declare-fun m!7683078 () Bool)

(assert (=> start!672334 m!7683078))

(declare-fun m!7683080 () Bool)

(assert (=> start!672334 m!7683080))

(declare-fun m!7683082 () Bool)

(assert (=> b!6992961 m!7683082))

(assert (=> b!6992961 m!7683066))

(declare-fun m!7683084 () Bool)

(assert (=> b!6992961 m!7683084))

(declare-fun m!7683086 () Bool)

(assert (=> b!6992961 m!7683086))

(declare-fun m!7683088 () Bool)

(assert (=> b!6992961 m!7683088))

(assert (=> b!6992965 m!7683046))

(assert (=> b!6992965 m!7683042))

(assert (=> b!6992965 m!7683042))

(declare-fun m!7683090 () Bool)

(assert (=> b!6992965 m!7683090))

(declare-fun m!7683092 () Bool)

(assert (=> b!6992965 m!7683092))

(declare-fun m!7683094 () Bool)

(assert (=> b!6992976 m!7683094))

(declare-fun m!7683096 () Bool)

(assert (=> b!6992976 m!7683096))

(declare-fun m!7683098 () Bool)

(assert (=> b!6992976 m!7683098))

(declare-fun m!7683100 () Bool)

(assert (=> b!6992976 m!7683100))

(declare-fun m!7683102 () Bool)

(assert (=> b!6992976 m!7683102))

(declare-fun m!7683104 () Bool)

(assert (=> b!6992976 m!7683104))

(assert (=> b!6992962 m!7683070))

(assert (=> b!6992962 m!7683042))

(declare-fun m!7683106 () Bool)

(assert (=> b!6992980 m!7683106))

(declare-fun m!7683108 () Bool)

(assert (=> setNonEmpty!47919 m!7683108))

(declare-fun m!7683110 () Bool)

(assert (=> b!6992978 m!7683110))

(assert (=> b!6992978 m!7683042))

(assert (=> b!6992964 m!7683042))

(assert (=> b!6992964 m!7683042))

(declare-fun m!7683112 () Bool)

(assert (=> b!6992964 m!7683112))

(assert (=> b!6992964 m!7683042))

(declare-fun m!7683114 () Bool)

(assert (=> b!6992964 m!7683114))

(declare-fun m!7683116 () Bool)

(assert (=> b!6992964 m!7683116))

(declare-fun m!7683118 () Bool)

(assert (=> b!6992964 m!7683118))

(declare-fun m!7683120 () Bool)

(assert (=> b!6992975 m!7683120))

(declare-fun m!7683122 () Bool)

(assert (=> b!6992973 m!7683122))

(assert (=> b!6992973 m!7683122))

(declare-fun m!7683124 () Bool)

(assert (=> b!6992973 m!7683124))

(assert (=> b!6992969 m!7683042))

(declare-fun m!7683126 () Bool)

(assert (=> b!6992969 m!7683126))

(assert (=> b!6992969 m!7683042))

(declare-fun m!7683128 () Bool)

(assert (=> b!6992969 m!7683128))

(assert (=> b!6992969 m!7683042))

(assert (=> b!6992969 m!7683042))

(declare-fun m!7683130 () Bool)

(assert (=> b!6992969 m!7683130))

(declare-fun m!7683132 () Bool)

(assert (=> b!6992969 m!7683132))

(assert (=> b!6992969 m!7683092))

(declare-fun m!7683134 () Bool)

(assert (=> b!6992963 m!7683134))

(assert (=> b!6992963 m!7683066))

(check-sat (not b!6992973) (not b!6992975) (not b!6992979) (not b!6992967) (not b!6992960) (not b!6992972) (not b!6992958) (not b!6992978) (not b!6992976) (not b!6992970) (not b!6992964) (not b!6992966) (not b!6992963) (not b!6992977) tp_is_empty!43707 (not setNonEmpty!47919) (not start!672334) (not b!6992969) (not b!6992965) (not b!6992961) (not b!6992959) (not b!6992962))
(check-sat)
