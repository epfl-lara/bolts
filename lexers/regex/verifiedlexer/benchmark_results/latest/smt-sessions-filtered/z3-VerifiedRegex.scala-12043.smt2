; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!675544 () Bool)

(assert start!675544)

(declare-fun b!7013039 () Bool)

(assert (=> b!7013039 true))

(declare-fun b!7013033 () Bool)

(assert (=> b!7013033 true))

(declare-fun b!7013058 () Bool)

(assert (=> b!7013058 true))

(declare-fun bs!1866349 () Bool)

(declare-fun b!7013044 () Bool)

(assert (= bs!1866349 (and b!7013044 b!7013039)))

(declare-fun lambda!409282 () Int)

(declare-fun lambda!409278 () Int)

(declare-datatypes ((C!34936 0))(
  ( (C!34937 (val!27170 Int)) )
))
(declare-datatypes ((List!67544 0))(
  ( (Nil!67420) (Cons!67420 (h!73868 C!34936) (t!381299 List!67544)) )
))
(declare-fun s!7408 () List!67544)

(declare-fun lt!2506645 () List!67544)

(assert (=> bs!1866349 (= (= lt!2506645 s!7408) (= lambda!409282 lambda!409278))))

(assert (=> b!7013044 true))

(declare-fun e!4215627 () Bool)

(declare-fun e!4215616 () Bool)

(assert (=> b!7013033 (= e!4215627 e!4215616)))

(declare-fun res!2862055 () Bool)

(assert (=> b!7013033 (=> res!2862055 e!4215616)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17333 0))(
  ( (ElementMatch!17333 (c!1302776 C!34936)) (Concat!26178 (regOne!35178 Regex!17333) (regTwo!35178 Regex!17333)) (EmptyExpr!17333) (Star!17333 (reg!17662 Regex!17333)) (EmptyLang!17333) (Union!17333 (regOne!35179 Regex!17333) (regTwo!35179 Regex!17333)) )
))
(declare-datatypes ((List!67545 0))(
  ( (Nil!67421) (Cons!67421 (h!73869 Regex!17333) (t!381300 List!67545)) )
))
(declare-datatypes ((Context!12658 0))(
  ( (Context!12659 (exprs!6829 List!67545)) )
))
(declare-fun z1!570 () (InoxSet Context!12658))

(declare-fun lt!2506596 () Context!12658)

(declare-fun lt!2506647 () Context!12658)

(declare-fun lt!2506640 () Context!12658)

(assert (=> b!7013033 (= res!2862055 (or (not (= lt!2506596 lt!2506647)) (not (select z1!570 lt!2506640))))))

(declare-fun ct2!306 () Context!12658)

(declare-fun ++!15345 (List!67545 List!67545) List!67545)

(assert (=> b!7013033 (= lt!2506596 (Context!12659 (++!15345 (exprs!6829 lt!2506640) (exprs!6829 ct2!306))))))

(declare-fun lambda!409280 () Int)

(declare-datatypes ((Unit!161344 0))(
  ( (Unit!161345) )
))
(declare-fun lt!2506623 () Unit!161344)

(declare-fun lemmaConcatPreservesForall!669 (List!67545 List!67545 Int) Unit!161344)

(assert (=> b!7013033 (= lt!2506623 (lemmaConcatPreservesForall!669 (exprs!6829 lt!2506640) (exprs!6829 ct2!306) lambda!409280))))

(declare-fun lambda!409279 () Int)

(declare-fun mapPost2!188 ((InoxSet Context!12658) Int Context!12658) Context!12658)

(assert (=> b!7013033 (= lt!2506640 (mapPost2!188 z1!570 lambda!409279 lt!2506647))))

(declare-fun b!7013034 () Bool)

(declare-fun res!2862078 () Bool)

(declare-fun e!4215624 () Bool)

(assert (=> b!7013034 (=> res!2862078 e!4215624)))

(declare-fun lt!2506603 () (InoxSet Context!12658))

(declare-datatypes ((tuple2!67972 0))(
  ( (tuple2!67973 (_1!37289 List!67544) (_2!37289 List!67544)) )
))
(declare-fun lt!2506639 () tuple2!67972)

(declare-fun matchZipper!2873 ((InoxSet Context!12658) List!67544) Bool)

(assert (=> b!7013034 (= res!2862078 (not (matchZipper!2873 lt!2506603 (_2!37289 lt!2506639))))))

(declare-fun b!7013035 () Bool)

(declare-fun res!2862069 () Bool)

(declare-fun e!4215620 () Bool)

(assert (=> b!7013035 (=> res!2862069 e!4215620)))

(declare-fun lt!2506600 () Bool)

(assert (=> b!7013035 (= res!2862069 (not lt!2506600))))

(declare-fun b!7013036 () Bool)

(declare-fun e!4215613 () Bool)

(assert (=> b!7013036 (= e!4215624 e!4215613)))

(declare-fun res!2862052 () Bool)

(assert (=> b!7013036 (=> res!2862052 e!4215613)))

(declare-fun lt!2506602 () (InoxSet Context!12658))

(declare-fun lt!2506628 () (InoxSet Context!12658))

(assert (=> b!7013036 (= res!2862052 (not (= lt!2506602 lt!2506628)))))

(declare-fun lambda!409281 () Int)

(declare-fun lt!2506625 () (InoxSet Context!12658))

(declare-fun flatMap!2319 ((InoxSet Context!12658) Int) (InoxSet Context!12658))

(declare-fun derivationStepZipperUp!1983 (Context!12658 C!34936) (InoxSet Context!12658))

(assert (=> b!7013036 (= (flatMap!2319 lt!2506625 lambda!409281) (derivationStepZipperUp!1983 lt!2506640 (h!73868 s!7408)))))

(declare-fun lt!2506626 () Unit!161344)

(declare-fun lemmaFlatMapOnSingletonSet!1834 ((InoxSet Context!12658) Context!12658 Int) Unit!161344)

(assert (=> b!7013036 (= lt!2506626 (lemmaFlatMapOnSingletonSet!1834 lt!2506625 lt!2506640 lambda!409281))))

(assert (=> b!7013036 (= lt!2506628 (derivationStepZipperUp!1983 lt!2506640 (h!73868 s!7408)))))

(declare-fun derivationStepZipper!2813 ((InoxSet Context!12658) C!34936) (InoxSet Context!12658))

(assert (=> b!7013036 (= lt!2506602 (derivationStepZipper!2813 lt!2506625 (h!73868 s!7408)))))

(assert (=> b!7013036 (= lt!2506625 (store ((as const (Array Context!12658 Bool)) false) lt!2506640 true))))

(declare-fun b!7013037 () Bool)

(declare-fun res!2862061 () Bool)

(declare-fun e!4215631 () Bool)

(assert (=> b!7013037 (=> res!2862061 e!4215631)))

(declare-fun ++!15346 (List!67544 List!67544) List!67544)

(assert (=> b!7013037 (= res!2862061 (not (= (++!15346 lt!2506645 (_2!37289 lt!2506639)) s!7408)))))

(declare-fun b!7013038 () Bool)

(declare-fun e!4215628 () Bool)

(assert (=> b!7013038 (= e!4215628 e!4215624)))

(declare-fun res!2862063 () Bool)

(assert (=> b!7013038 (=> res!2862063 e!4215624)))

(declare-fun lt!2506598 () (InoxSet Context!12658))

(assert (=> b!7013038 (= res!2862063 (not (matchZipper!2873 lt!2506598 (_1!37289 lt!2506639))))))

(declare-datatypes ((Option!16818 0))(
  ( (None!16817) (Some!16817 (v!53095 tuple2!67972)) )
))
(declare-fun lt!2506614 () Option!16818)

(declare-fun get!23646 (Option!16818) tuple2!67972)

(assert (=> b!7013038 (= lt!2506639 (get!23646 lt!2506614))))

(declare-fun isDefined!13519 (Option!16818) Bool)

(assert (=> b!7013038 (isDefined!13519 lt!2506614)))

(declare-fun findConcatSeparationZippers!334 ((InoxSet Context!12658) (InoxSet Context!12658) List!67544 List!67544 List!67544) Option!16818)

(assert (=> b!7013038 (= lt!2506614 (findConcatSeparationZippers!334 lt!2506598 lt!2506603 Nil!67420 (t!381299 s!7408) (t!381299 s!7408)))))

(assert (=> b!7013038 (= lt!2506603 (store ((as const (Array Context!12658 Bool)) false) ct2!306 true))))

(declare-fun lt!2506644 () Unit!161344)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!334 ((InoxSet Context!12658) Context!12658 List!67544) Unit!161344)

(assert (=> b!7013038 (= lt!2506644 (lemmaConcatZipperMatchesStringThenFindConcatDefined!334 lt!2506598 ct2!306 (t!381299 s!7408)))))

(declare-fun lt!2506632 () Unit!161344)

(declare-fun lt!2506648 () List!67545)

(assert (=> b!7013038 (= lt!2506632 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(declare-fun lt!2506599 () (InoxSet Context!12658))

(declare-fun appendTo!454 ((InoxSet Context!12658) Context!12658) (InoxSet Context!12658))

(assert (=> b!7013038 (= lt!2506599 (appendTo!454 lt!2506598 ct2!306))))

(declare-fun lt!2506601 () Context!12658)

(declare-fun derivationStepZipperDown!2051 (Regex!17333 Context!12658 C!34936) (InoxSet Context!12658))

(assert (=> b!7013038 (= lt!2506598 (derivationStepZipperDown!2051 (h!73869 (exprs!6829 lt!2506640)) lt!2506601 (h!73868 s!7408)))))

(declare-fun lt!2506635 () Unit!161344)

(assert (=> b!7013038 (= lt!2506635 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(declare-fun lt!2506631 () Unit!161344)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!32 (Context!12658 Regex!17333 C!34936 Context!12658) Unit!161344)

(assert (=> b!7013038 (= lt!2506631 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!32 lt!2506601 (h!73869 (exprs!6829 lt!2506640)) (h!73868 s!7408) ct2!306))))

(declare-fun res!2862062 () Bool)

(declare-fun e!4215614 () Bool)

(assert (=> start!675544 (=> (not res!2862062) (not e!4215614))))

(declare-fun lt!2506629 () (InoxSet Context!12658))

(assert (=> start!675544 (= res!2862062 (matchZipper!2873 lt!2506629 s!7408))))

(assert (=> start!675544 (= lt!2506629 (appendTo!454 z1!570 ct2!306))))

(assert (=> start!675544 e!4215614))

(declare-fun condSetEmpty!48422 () Bool)

(assert (=> start!675544 (= condSetEmpty!48422 (= z1!570 ((as const (Array Context!12658 Bool)) false)))))

(declare-fun setRes!48422 () Bool)

(assert (=> start!675544 setRes!48422))

(declare-fun e!4215622 () Bool)

(declare-fun inv!86191 (Context!12658) Bool)

(assert (=> start!675544 (and (inv!86191 ct2!306) e!4215622)))

(declare-fun e!4215632 () Bool)

(assert (=> start!675544 e!4215632))

(assert (=> b!7013039 (= e!4215614 (not e!4215627))))

(declare-fun res!2862067 () Bool)

(assert (=> b!7013039 (=> res!2862067 e!4215627)))

(declare-fun lt!2506616 () (InoxSet Context!12658))

(assert (=> b!7013039 (= res!2862067 (not (matchZipper!2873 lt!2506616 s!7408)))))

(assert (=> b!7013039 (= lt!2506616 (store ((as const (Array Context!12658 Bool)) false) lt!2506647 true))))

(declare-fun getWitness!1280 ((InoxSet Context!12658) Int) Context!12658)

(assert (=> b!7013039 (= lt!2506647 (getWitness!1280 lt!2506629 lambda!409278))))

(declare-datatypes ((List!67546 0))(
  ( (Nil!67422) (Cons!67422 (h!73870 Context!12658) (t!381301 List!67546)) )
))
(declare-fun lt!2506615 () List!67546)

(declare-fun exists!3185 (List!67546 Int) Bool)

(assert (=> b!7013039 (exists!3185 lt!2506615 lambda!409278)))

(declare-fun lt!2506611 () Unit!161344)

(declare-fun lemmaZipperMatchesExistsMatchingContext!302 (List!67546 List!67544) Unit!161344)

(assert (=> b!7013039 (= lt!2506611 (lemmaZipperMatchesExistsMatchingContext!302 lt!2506615 s!7408))))

(declare-fun toList!10693 ((InoxSet Context!12658)) List!67546)

(assert (=> b!7013039 (= lt!2506615 (toList!10693 lt!2506629))))

(declare-fun b!7013040 () Bool)

(declare-fun e!4215626 () Bool)

(declare-fun e!4215621 () Bool)

(assert (=> b!7013040 (= e!4215626 e!4215621)))

(declare-fun res!2862079 () Bool)

(assert (=> b!7013040 (=> res!2862079 e!4215621)))

(declare-fun lt!2506641 () (InoxSet Context!12658))

(declare-fun lt!2506630 () (InoxSet Context!12658))

(assert (=> b!7013040 (= res!2862079 (not (= lt!2506641 lt!2506630)))))

(declare-fun lt!2506633 () (InoxSet Context!12658))

(assert (=> b!7013040 (= lt!2506630 ((_ map or) lt!2506599 lt!2506633))))

(declare-fun lt!2506642 () Context!12658)

(assert (=> b!7013040 (= lt!2506633 (derivationStepZipperUp!1983 lt!2506642 (h!73868 s!7408)))))

(assert (=> b!7013040 (= lt!2506599 (derivationStepZipperDown!2051 (h!73869 (exprs!6829 lt!2506640)) lt!2506642 (h!73868 s!7408)))))

(assert (=> b!7013040 (= lt!2506642 (Context!12659 (++!15345 lt!2506648 (exprs!6829 ct2!306))))))

(declare-fun lt!2506620 () Unit!161344)

(assert (=> b!7013040 (= lt!2506620 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(declare-fun lt!2506607 () Unit!161344)

(assert (=> b!7013040 (= lt!2506607 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(declare-fun b!7013041 () Bool)

(declare-fun res!2862058 () Bool)

(assert (=> b!7013041 (=> res!2862058 e!4215631)))

(declare-fun isPrefix!5828 (List!67544 List!67544) Bool)

(assert (=> b!7013041 (= res!2862058 (not (isPrefix!5828 Nil!67420 lt!2506645)))))

(declare-fun b!7013042 () Bool)

(declare-fun e!4215633 () Bool)

(declare-fun e!4215617 () Bool)

(assert (=> b!7013042 (= e!4215633 e!4215617)))

(declare-fun res!2862077 () Bool)

(assert (=> b!7013042 (=> res!2862077 e!4215617)))

(declare-fun e!4215629 () Bool)

(assert (=> b!7013042 (= res!2862077 e!4215629)))

(declare-fun res!2862054 () Bool)

(assert (=> b!7013042 (=> (not res!2862054) (not e!4215629))))

(declare-fun lt!2506646 () Bool)

(assert (=> b!7013042 (= res!2862054 (not lt!2506646))))

(assert (=> b!7013042 (= lt!2506646 (matchZipper!2873 lt!2506625 lt!2506645))))

(assert (=> b!7013042 (= lt!2506645 (Cons!67420 (h!73868 s!7408) (_1!37289 lt!2506639)))))

(declare-fun lt!2506624 () (InoxSet Context!12658))

(assert (=> b!7013042 (matchZipper!2873 lt!2506624 (_1!37289 lt!2506639))))

(declare-fun lt!2506597 () Unit!161344)

(declare-fun lt!2506605 () (InoxSet Context!12658))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1506 ((InoxSet Context!12658) (InoxSet Context!12658) List!67544) Unit!161344)

(assert (=> b!7013042 (= lt!2506597 (lemmaZipperConcatMatchesSameAsBothZippers!1506 lt!2506598 lt!2506605 (_1!37289 lt!2506639)))))

(declare-fun b!7013043 () Bool)

(assert (=> b!7013043 (= e!4215629 (not (matchZipper!2873 lt!2506605 (_1!37289 lt!2506639))))))

(assert (=> b!7013044 (= e!4215617 e!4215631)))

(declare-fun res!2862057 () Bool)

(assert (=> b!7013044 (=> res!2862057 e!4215631)))

(assert (=> b!7013044 (= res!2862057 (not (matchZipper!2873 z1!570 lt!2506645)))))

(declare-fun lt!2506634 () List!67546)

(declare-fun content!13389 (List!67546) (InoxSet Context!12658))

(assert (=> b!7013044 (matchZipper!2873 (content!13389 lt!2506634) lt!2506645)))

(declare-fun lt!2506643 () Unit!161344)

(declare-fun lemmaExistsMatchingContextThenMatchingString!28 (List!67546 List!67544) Unit!161344)

(assert (=> b!7013044 (= lt!2506643 (lemmaExistsMatchingContextThenMatchingString!28 lt!2506634 lt!2506645))))

(assert (=> b!7013044 (= lt!2506634 (toList!10693 z1!570))))

(declare-fun exists!3186 ((InoxSet Context!12658) Int) Bool)

(assert (=> b!7013044 (exists!3186 z1!570 lambda!409282)))

(declare-fun lt!2506609 () Unit!161344)

(declare-fun lemmaContainsThenExists!97 ((InoxSet Context!12658) Context!12658 Int) Unit!161344)

(assert (=> b!7013044 (= lt!2506609 (lemmaContainsThenExists!97 z1!570 lt!2506640 lambda!409282))))

(assert (=> b!7013044 (isDefined!13519 (findConcatSeparationZippers!334 lt!2506625 lt!2506603 Nil!67420 s!7408 s!7408))))

(declare-fun lt!2506608 () Unit!161344)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!20 ((InoxSet Context!12658) (InoxSet Context!12658) List!67544 List!67544 List!67544 List!67544 List!67544) Unit!161344)

(assert (=> b!7013044 (= lt!2506608 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!20 lt!2506625 lt!2506603 lt!2506645 (_2!37289 lt!2506639) s!7408 Nil!67420 s!7408))))

(declare-fun b!7013045 () Bool)

(assert (=> b!7013045 (= e!4215631 true)))

(declare-fun lt!2506622 () List!67544)

(assert (=> b!7013045 (= lt!2506622 (++!15346 Nil!67420 s!7408))))

(declare-fun b!7013046 () Bool)

(declare-fun e!4215615 () Bool)

(assert (=> b!7013046 (= e!4215615 (not (matchZipper!2873 lt!2506633 (t!381299 s!7408))))))

(declare-fun lt!2506637 () Unit!161344)

(assert (=> b!7013046 (= lt!2506637 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(declare-fun b!7013047 () Bool)

(declare-fun res!2862072 () Bool)

(declare-fun e!4215618 () Bool)

(assert (=> b!7013047 (=> res!2862072 e!4215618)))

(get-info :version)

(assert (=> b!7013047 (= res!2862072 (not ((_ is Cons!67421) (exprs!6829 lt!2506640))))))

(declare-fun b!7013048 () Bool)

(declare-fun e!4215630 () Bool)

(assert (=> b!7013048 (= e!4215616 e!4215630)))

(declare-fun res!2862060 () Bool)

(assert (=> b!7013048 (=> res!2862060 e!4215630)))

(declare-fun lt!2506617 () (InoxSet Context!12658))

(assert (=> b!7013048 (= res!2862060 (not (= lt!2506617 lt!2506616)))))

(assert (=> b!7013048 (= lt!2506617 (store ((as const (Array Context!12658 Bool)) false) lt!2506596 true))))

(declare-fun lt!2506636 () Unit!161344)

(assert (=> b!7013048 (= lt!2506636 (lemmaConcatPreservesForall!669 (exprs!6829 lt!2506640) (exprs!6829 ct2!306) lambda!409280))))

(declare-fun b!7013049 () Bool)

(declare-fun tp_is_empty!43891 () Bool)

(declare-fun tp!1932655 () Bool)

(assert (=> b!7013049 (= e!4215632 (and tp_is_empty!43891 tp!1932655))))

(declare-fun b!7013050 () Bool)

(declare-fun e!4215619 () Bool)

(declare-fun tp!1932654 () Bool)

(assert (=> b!7013050 (= e!4215619 tp!1932654)))

(declare-fun b!7013051 () Bool)

(declare-fun e!4215623 () Bool)

(assert (=> b!7013051 (= e!4215623 (matchZipper!2873 lt!2506633 (t!381299 s!7408)))))

(declare-fun setNonEmpty!48422 () Bool)

(declare-fun tp!1932652 () Bool)

(declare-fun setElem!48422 () Context!12658)

(assert (=> setNonEmpty!48422 (= setRes!48422 (and tp!1932652 (inv!86191 setElem!48422) e!4215619))))

(declare-fun setRest!48422 () (InoxSet Context!12658))

(assert (=> setNonEmpty!48422 (= z1!570 ((_ map or) (store ((as const (Array Context!12658 Bool)) false) setElem!48422 true) setRest!48422))))

(declare-fun b!7013052 () Bool)

(assert (=> b!7013052 (= e!4215618 e!4215626)))

(declare-fun res!2862074 () Bool)

(assert (=> b!7013052 (=> res!2862074 e!4215626)))

(declare-fun nullable!7093 (Regex!17333) Bool)

(assert (=> b!7013052 (= res!2862074 (not (nullable!7093 (h!73869 (exprs!6829 lt!2506640)))))))

(assert (=> b!7013052 (= lt!2506601 (Context!12659 lt!2506648))))

(declare-fun tail!13413 (List!67545) List!67545)

(assert (=> b!7013052 (= lt!2506648 (tail!13413 (exprs!6829 lt!2506640)))))

(declare-fun b!7013053 () Bool)

(declare-fun res!2862073 () Bool)

(assert (=> b!7013053 (=> res!2862073 e!4215617)))

(assert (=> b!7013053 (= res!2862073 (not lt!2506646))))

(declare-fun b!7013054 () Bool)

(assert (=> b!7013054 (= e!4215613 e!4215633)))

(declare-fun res!2862071 () Bool)

(assert (=> b!7013054 (=> res!2862071 e!4215633)))

(assert (=> b!7013054 (= res!2862071 (not (= lt!2506602 lt!2506624)))))

(assert (=> b!7013054 (= lt!2506624 ((_ map or) lt!2506598 lt!2506605))))

(assert (=> b!7013054 (= lt!2506605 (derivationStepZipperUp!1983 lt!2506601 (h!73868 s!7408)))))

(declare-fun b!7013055 () Bool)

(declare-fun e!4215625 () Bool)

(assert (=> b!7013055 (= e!4215620 e!4215625)))

(declare-fun res!2862064 () Bool)

(assert (=> b!7013055 (=> res!2862064 e!4215625)))

(assert (=> b!7013055 (= res!2862064 (matchZipper!2873 lt!2506633 (t!381299 s!7408)))))

(declare-fun lt!2506619 () Unit!161344)

(assert (=> b!7013055 (= lt!2506619 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(declare-fun b!7013056 () Bool)

(declare-fun res!2862075 () Bool)

(assert (=> b!7013056 (=> res!2862075 e!4215624)))

(assert (=> b!7013056 (= res!2862075 (not (= (++!15346 (_1!37289 lt!2506639) (_2!37289 lt!2506639)) (t!381299 s!7408))))))

(declare-fun b!7013057 () Bool)

(declare-fun tp!1932653 () Bool)

(assert (=> b!7013057 (= e!4215622 tp!1932653)))

(assert (=> b!7013058 (= e!4215630 e!4215618)))

(declare-fun res!2862070 () Bool)

(assert (=> b!7013058 (=> res!2862070 e!4215618)))

(assert (=> b!7013058 (= res!2862070 (not (= (derivationStepZipper!2813 lt!2506617 (h!73868 s!7408)) lt!2506641)))))

(assert (=> b!7013058 (= (flatMap!2319 lt!2506617 lambda!409281) (derivationStepZipperUp!1983 lt!2506596 (h!73868 s!7408)))))

(declare-fun lt!2506610 () Unit!161344)

(assert (=> b!7013058 (= lt!2506610 (lemmaFlatMapOnSingletonSet!1834 lt!2506617 lt!2506596 lambda!409281))))

(assert (=> b!7013058 (= lt!2506641 (derivationStepZipperUp!1983 lt!2506596 (h!73868 s!7408)))))

(declare-fun lt!2506638 () Unit!161344)

(assert (=> b!7013058 (= lt!2506638 (lemmaConcatPreservesForall!669 (exprs!6829 lt!2506640) (exprs!6829 ct2!306) lambda!409280))))

(declare-fun b!7013059 () Bool)

(declare-fun res!2862056 () Bool)

(assert (=> b!7013059 (=> res!2862056 e!4215618)))

(declare-fun isEmpty!39375 (List!67545) Bool)

(assert (=> b!7013059 (= res!2862056 (isEmpty!39375 (exprs!6829 lt!2506640)))))

(declare-fun b!7013060 () Bool)

(declare-fun res!2862053 () Bool)

(assert (=> b!7013060 (=> res!2862053 e!4215627)))

(assert (=> b!7013060 (= res!2862053 (not (select lt!2506629 lt!2506647)))))

(declare-fun b!7013061 () Bool)

(assert (=> b!7013061 (= e!4215625 e!4215628)))

(declare-fun res!2862066 () Bool)

(assert (=> b!7013061 (=> res!2862066 e!4215628)))

(declare-fun lt!2506604 () Bool)

(assert (=> b!7013061 (= res!2862066 (not lt!2506604))))

(declare-fun lt!2506606 () Unit!161344)

(assert (=> b!7013061 (= lt!2506606 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(declare-fun lt!2506612 () Unit!161344)

(assert (=> b!7013061 (= lt!2506612 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(declare-fun b!7013062 () Bool)

(assert (=> b!7013062 (= e!4215621 e!4215620)))

(declare-fun res!2862059 () Bool)

(assert (=> b!7013062 (=> res!2862059 e!4215620)))

(assert (=> b!7013062 (= res!2862059 e!4215615)))

(declare-fun res!2862065 () Bool)

(assert (=> b!7013062 (=> (not res!2862065) (not e!4215615))))

(assert (=> b!7013062 (= res!2862065 (not (= lt!2506600 lt!2506604)))))

(assert (=> b!7013062 (= lt!2506600 (matchZipper!2873 lt!2506641 (t!381299 s!7408)))))

(declare-fun lt!2506627 () Unit!161344)

(assert (=> b!7013062 (= lt!2506627 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(assert (=> b!7013062 (= (matchZipper!2873 lt!2506630 (t!381299 s!7408)) e!4215623)))

(declare-fun res!2862076 () Bool)

(assert (=> b!7013062 (=> res!2862076 e!4215623)))

(assert (=> b!7013062 (= res!2862076 lt!2506604)))

(assert (=> b!7013062 (= lt!2506604 (matchZipper!2873 lt!2506599 (t!381299 s!7408)))))

(declare-fun lt!2506618 () Unit!161344)

(assert (=> b!7013062 (= lt!2506618 (lemmaZipperConcatMatchesSameAsBothZippers!1506 lt!2506599 lt!2506633 (t!381299 s!7408)))))

(declare-fun lt!2506621 () Unit!161344)

(assert (=> b!7013062 (= lt!2506621 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(declare-fun lt!2506613 () Unit!161344)

(assert (=> b!7013062 (= lt!2506613 (lemmaConcatPreservesForall!669 lt!2506648 (exprs!6829 ct2!306) lambda!409280))))

(declare-fun b!7013063 () Bool)

(declare-fun res!2862068 () Bool)

(assert (=> b!7013063 (=> (not res!2862068) (not e!4215614))))

(assert (=> b!7013063 (= res!2862068 ((_ is Cons!67420) s!7408))))

(declare-fun setIsEmpty!48422 () Bool)

(assert (=> setIsEmpty!48422 setRes!48422))

(assert (= (and start!675544 res!2862062) b!7013063))

(assert (= (and b!7013063 res!2862068) b!7013039))

(assert (= (and b!7013039 (not res!2862067)) b!7013060))

(assert (= (and b!7013060 (not res!2862053)) b!7013033))

(assert (= (and b!7013033 (not res!2862055)) b!7013048))

(assert (= (and b!7013048 (not res!2862060)) b!7013058))

(assert (= (and b!7013058 (not res!2862070)) b!7013047))

(assert (= (and b!7013047 (not res!2862072)) b!7013059))

(assert (= (and b!7013059 (not res!2862056)) b!7013052))

(assert (= (and b!7013052 (not res!2862074)) b!7013040))

(assert (= (and b!7013040 (not res!2862079)) b!7013062))

(assert (= (and b!7013062 (not res!2862076)) b!7013051))

(assert (= (and b!7013062 res!2862065) b!7013046))

(assert (= (and b!7013062 (not res!2862059)) b!7013035))

(assert (= (and b!7013035 (not res!2862069)) b!7013055))

(assert (= (and b!7013055 (not res!2862064)) b!7013061))

(assert (= (and b!7013061 (not res!2862066)) b!7013038))

(assert (= (and b!7013038 (not res!2862063)) b!7013034))

(assert (= (and b!7013034 (not res!2862078)) b!7013056))

(assert (= (and b!7013056 (not res!2862075)) b!7013036))

(assert (= (and b!7013036 (not res!2862052)) b!7013054))

(assert (= (and b!7013054 (not res!2862071)) b!7013042))

(assert (= (and b!7013042 res!2862054) b!7013043))

(assert (= (and b!7013042 (not res!2862077)) b!7013053))

(assert (= (and b!7013053 (not res!2862073)) b!7013044))

(assert (= (and b!7013044 (not res!2862057)) b!7013037))

(assert (= (and b!7013037 (not res!2862061)) b!7013041))

(assert (= (and b!7013041 (not res!2862058)) b!7013045))

(assert (= (and start!675544 condSetEmpty!48422) setIsEmpty!48422))

(assert (= (and start!675544 (not condSetEmpty!48422)) setNonEmpty!48422))

(assert (= setNonEmpty!48422 b!7013050))

(assert (= start!675544 b!7013057))

(assert (= (and start!675544 ((_ is Cons!67420) s!7408)) b!7013049))

(declare-fun m!7711800 () Bool)

(assert (=> b!7013046 m!7711800))

(declare-fun m!7711802 () Bool)

(assert (=> b!7013046 m!7711802))

(declare-fun m!7711804 () Bool)

(assert (=> b!7013033 m!7711804))

(declare-fun m!7711806 () Bool)

(assert (=> b!7013033 m!7711806))

(declare-fun m!7711808 () Bool)

(assert (=> b!7013033 m!7711808))

(declare-fun m!7711810 () Bool)

(assert (=> b!7013033 m!7711810))

(declare-fun m!7711812 () Bool)

(assert (=> b!7013062 m!7711812))

(assert (=> b!7013062 m!7711802))

(assert (=> b!7013062 m!7711802))

(declare-fun m!7711814 () Bool)

(assert (=> b!7013062 m!7711814))

(assert (=> b!7013062 m!7711802))

(declare-fun m!7711816 () Bool)

(assert (=> b!7013062 m!7711816))

(declare-fun m!7711818 () Bool)

(assert (=> b!7013062 m!7711818))

(declare-fun m!7711820 () Bool)

(assert (=> b!7013038 m!7711820))

(declare-fun m!7711822 () Bool)

(assert (=> b!7013038 m!7711822))

(declare-fun m!7711824 () Bool)

(assert (=> b!7013038 m!7711824))

(assert (=> b!7013038 m!7711802))

(declare-fun m!7711826 () Bool)

(assert (=> b!7013038 m!7711826))

(declare-fun m!7711828 () Bool)

(assert (=> b!7013038 m!7711828))

(declare-fun m!7711830 () Bool)

(assert (=> b!7013038 m!7711830))

(declare-fun m!7711832 () Bool)

(assert (=> b!7013038 m!7711832))

(assert (=> b!7013038 m!7711802))

(declare-fun m!7711834 () Bool)

(assert (=> b!7013038 m!7711834))

(declare-fun m!7711836 () Bool)

(assert (=> b!7013038 m!7711836))

(declare-fun m!7711838 () Bool)

(assert (=> b!7013043 m!7711838))

(declare-fun m!7711840 () Bool)

(assert (=> b!7013054 m!7711840))

(declare-fun m!7711842 () Bool)

(assert (=> b!7013037 m!7711842))

(declare-fun m!7711844 () Bool)

(assert (=> b!7013040 m!7711844))

(assert (=> b!7013040 m!7711802))

(declare-fun m!7711846 () Bool)

(assert (=> b!7013040 m!7711846))

(declare-fun m!7711848 () Bool)

(assert (=> b!7013040 m!7711848))

(assert (=> b!7013040 m!7711802))

(declare-fun m!7711850 () Bool)

(assert (=> b!7013041 m!7711850))

(declare-fun m!7711852 () Bool)

(assert (=> b!7013036 m!7711852))

(declare-fun m!7711854 () Bool)

(assert (=> b!7013036 m!7711854))

(declare-fun m!7711856 () Bool)

(assert (=> b!7013036 m!7711856))

(declare-fun m!7711858 () Bool)

(assert (=> b!7013036 m!7711858))

(declare-fun m!7711860 () Bool)

(assert (=> b!7013036 m!7711860))

(assert (=> b!7013061 m!7711802))

(assert (=> b!7013061 m!7711802))

(declare-fun m!7711862 () Bool)

(assert (=> b!7013059 m!7711862))

(declare-fun m!7711864 () Bool)

(assert (=> b!7013039 m!7711864))

(declare-fun m!7711866 () Bool)

(assert (=> b!7013039 m!7711866))

(declare-fun m!7711868 () Bool)

(assert (=> b!7013039 m!7711868))

(declare-fun m!7711870 () Bool)

(assert (=> b!7013039 m!7711870))

(declare-fun m!7711872 () Bool)

(assert (=> b!7013039 m!7711872))

(declare-fun m!7711874 () Bool)

(assert (=> b!7013039 m!7711874))

(declare-fun m!7711876 () Bool)

(assert (=> b!7013042 m!7711876))

(declare-fun m!7711878 () Bool)

(assert (=> b!7013042 m!7711878))

(declare-fun m!7711880 () Bool)

(assert (=> b!7013042 m!7711880))

(declare-fun m!7711882 () Bool)

(assert (=> b!7013048 m!7711882))

(assert (=> b!7013048 m!7711808))

(declare-fun m!7711884 () Bool)

(assert (=> b!7013045 m!7711884))

(declare-fun m!7711886 () Bool)

(assert (=> b!7013052 m!7711886))

(declare-fun m!7711888 () Bool)

(assert (=> b!7013052 m!7711888))

(declare-fun m!7711890 () Bool)

(assert (=> b!7013060 m!7711890))

(declare-fun m!7711892 () Bool)

(assert (=> b!7013058 m!7711892))

(declare-fun m!7711894 () Bool)

(assert (=> b!7013058 m!7711894))

(assert (=> b!7013058 m!7711808))

(declare-fun m!7711896 () Bool)

(assert (=> b!7013058 m!7711896))

(declare-fun m!7711898 () Bool)

(assert (=> b!7013058 m!7711898))

(assert (=> b!7013051 m!7711800))

(declare-fun m!7711900 () Bool)

(assert (=> b!7013056 m!7711900))

(declare-fun m!7711902 () Bool)

(assert (=> start!675544 m!7711902))

(declare-fun m!7711904 () Bool)

(assert (=> start!675544 m!7711904))

(declare-fun m!7711906 () Bool)

(assert (=> start!675544 m!7711906))

(declare-fun m!7711908 () Bool)

(assert (=> b!7013034 m!7711908))

(assert (=> b!7013055 m!7711800))

(assert (=> b!7013055 m!7711802))

(declare-fun m!7711910 () Bool)

(assert (=> b!7013044 m!7711910))

(declare-fun m!7711912 () Bool)

(assert (=> b!7013044 m!7711912))

(declare-fun m!7711914 () Bool)

(assert (=> b!7013044 m!7711914))

(declare-fun m!7711916 () Bool)

(assert (=> b!7013044 m!7711916))

(declare-fun m!7711918 () Bool)

(assert (=> b!7013044 m!7711918))

(assert (=> b!7013044 m!7711916))

(declare-fun m!7711920 () Bool)

(assert (=> b!7013044 m!7711920))

(declare-fun m!7711922 () Bool)

(assert (=> b!7013044 m!7711922))

(declare-fun m!7711924 () Bool)

(assert (=> b!7013044 m!7711924))

(declare-fun m!7711926 () Bool)

(assert (=> b!7013044 m!7711926))

(assert (=> b!7013044 m!7711924))

(declare-fun m!7711928 () Bool)

(assert (=> b!7013044 m!7711928))

(declare-fun m!7711930 () Bool)

(assert (=> setNonEmpty!48422 m!7711930))

(check-sat (not b!7013061) (not b!7013033) (not b!7013046) (not b!7013037) (not b!7013038) (not b!7013041) (not b!7013048) (not start!675544) (not b!7013045) (not b!7013058) (not b!7013036) (not b!7013034) (not b!7013042) (not setNonEmpty!48422) (not b!7013049) (not b!7013044) (not b!7013059) (not b!7013055) (not b!7013050) (not b!7013043) tp_is_empty!43891 (not b!7013040) (not b!7013054) (not b!7013039) (not b!7013057) (not b!7013056) (not b!7013062) (not b!7013051) (not b!7013052))
(check-sat)
