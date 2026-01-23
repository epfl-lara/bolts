; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!681340 () Bool)

(assert start!681340)

(declare-fun b!7041924 () Bool)

(assert (=> b!7041924 true))

(declare-fun b!7041913 () Bool)

(assert (=> b!7041913 true))

(declare-fun b!7041908 () Bool)

(assert (=> b!7041908 true))

(declare-fun b!7041902 () Bool)

(declare-fun e!4233325 () Bool)

(declare-fun tp_is_empty!44213 () Bool)

(declare-fun tp!1937503 () Bool)

(assert (=> b!7041902 (= e!4233325 (and tp_is_empty!44213 tp!1937503))))

(declare-fun b!7041904 () Bool)

(declare-fun e!4233333 () Bool)

(declare-fun tp!1937504 () Bool)

(assert (=> b!7041904 (= e!4233333 tp!1937504)))

(declare-fun b!7041905 () Bool)

(declare-fun e!4233323 () Bool)

(declare-datatypes ((C!35258 0))(
  ( (C!35259 (val!27331 Int)) )
))
(declare-datatypes ((Regex!17494 0))(
  ( (ElementMatch!17494 (c!1310798 C!35258)) (Concat!26339 (regOne!35500 Regex!17494) (regTwo!35500 Regex!17494)) (EmptyExpr!17494) (Star!17494 (reg!17823 Regex!17494)) (EmptyLang!17494) (Union!17494 (regOne!35501 Regex!17494) (regTwo!35501 Regex!17494)) )
))
(declare-datatypes ((List!68010 0))(
  ( (Nil!67886) (Cons!67886 (h!74334 Regex!17494) (t!381781 List!68010)) )
))
(declare-datatypes ((Context!12980 0))(
  ( (Context!12981 (exprs!6990 List!68010)) )
))
(declare-fun lt!2525034 () (Set Context!12980))

(declare-datatypes ((List!68011 0))(
  ( (Nil!67887) (Cons!67887 (h!74335 C!35258) (t!381782 List!68011)) )
))
(declare-fun s!7408 () List!68011)

(declare-fun matchZipper!3034 ((Set Context!12980) List!68011) Bool)

(assert (=> b!7041905 (= e!4233323 (matchZipper!3034 lt!2525034 (t!381782 s!7408)))))

(declare-fun b!7041906 () Bool)

(declare-fun res!2874859 () Bool)

(declare-fun e!4233328 () Bool)

(assert (=> b!7041906 (=> (not res!2874859) (not e!4233328))))

(assert (=> b!7041906 (= res!2874859 (is-Cons!67887 s!7408))))

(declare-fun lt!2525049 () (Set Context!12980))

(declare-fun b!7041907 () Bool)

(declare-fun lt!2525057 () (Set Context!12980))

(declare-fun lt!2525053 () Context!12980)

(declare-fun e!4233327 () Bool)

(declare-fun derivationStepZipperUp!2104 (Context!12980 C!35258) (Set Context!12980))

(assert (=> b!7041907 (= e!4233327 (= lt!2525057 (set.union lt!2525049 (derivationStepZipperUp!2104 lt!2525053 (h!74335 s!7408)))))))

(declare-fun e!4233332 () Bool)

(declare-fun e!4233324 () Bool)

(assert (=> b!7041908 (= e!4233332 e!4233324)))

(declare-fun res!2874864 () Bool)

(assert (=> b!7041908 (=> res!2874864 e!4233324)))

(declare-fun lt!2525045 () (Set Context!12980))

(declare-fun lt!2525033 () (Set Context!12980))

(declare-fun derivationStepZipper!2950 ((Set Context!12980) C!35258) (Set Context!12980))

(assert (=> b!7041908 (= res!2874864 (not (= (derivationStepZipper!2950 lt!2525033 (h!74335 s!7408)) lt!2525045)))))

(declare-fun lt!2525050 () Context!12980)

(declare-fun lambda!417052 () Int)

(declare-fun flatMap!2441 ((Set Context!12980) Int) (Set Context!12980))

(assert (=> b!7041908 (= (flatMap!2441 lt!2525033 lambda!417052) (derivationStepZipperUp!2104 lt!2525050 (h!74335 s!7408)))))

(declare-datatypes ((Unit!161668 0))(
  ( (Unit!161669) )
))
(declare-fun lt!2525068 () Unit!161668)

(declare-fun lemmaFlatMapOnSingletonSet!1955 ((Set Context!12980) Context!12980 Int) Unit!161668)

(assert (=> b!7041908 (= lt!2525068 (lemmaFlatMapOnSingletonSet!1955 lt!2525033 lt!2525050 lambda!417052))))

(assert (=> b!7041908 (= lt!2525045 (derivationStepZipperUp!2104 lt!2525050 (h!74335 s!7408)))))

(declare-fun lambda!417051 () Int)

(declare-fun lt!2525069 () Context!12980)

(declare-fun ct2!306 () Context!12980)

(declare-fun lt!2525072 () Unit!161668)

(declare-fun lemmaConcatPreservesForall!815 (List!68010 List!68010 Int) Unit!161668)

(assert (=> b!7041908 (= lt!2525072 (lemmaConcatPreservesForall!815 (exprs!6990 lt!2525069) (exprs!6990 ct2!306) lambda!417051))))

(declare-fun b!7041909 () Bool)

(declare-fun res!2874858 () Bool)

(assert (=> b!7041909 (=> res!2874858 e!4233324)))

(declare-fun isEmpty!39615 (List!68010) Bool)

(assert (=> b!7041909 (= res!2874858 (isEmpty!39615 (exprs!6990 lt!2525069)))))

(declare-fun setIsEmpty!49369 () Bool)

(declare-fun setRes!49369 () Bool)

(assert (=> setIsEmpty!49369 setRes!49369))

(declare-fun b!7041910 () Bool)

(declare-fun e!4233331 () Bool)

(declare-fun e!4233326 () Bool)

(assert (=> b!7041910 (= e!4233331 e!4233326)))

(declare-fun res!2874862 () Bool)

(assert (=> b!7041910 (=> res!2874862 e!4233326)))

(declare-fun e!4233330 () Bool)

(assert (=> b!7041910 (= res!2874862 e!4233330)))

(declare-fun res!2874870 () Bool)

(assert (=> b!7041910 (=> (not res!2874870) (not e!4233330))))

(declare-fun lt!2525062 () Bool)

(declare-fun lt!2525070 () Bool)

(assert (=> b!7041910 (= res!2874870 (not (= lt!2525062 lt!2525070)))))

(assert (=> b!7041910 (= lt!2525062 (matchZipper!3034 lt!2525045 (t!381782 s!7408)))))

(declare-fun lt!2525060 () List!68010)

(declare-fun lt!2525063 () Unit!161668)

(assert (=> b!7041910 (= lt!2525063 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(declare-fun lt!2525047 () (Set Context!12980))

(assert (=> b!7041910 (= (matchZipper!3034 lt!2525047 (t!381782 s!7408)) e!4233323)))

(declare-fun res!2874853 () Bool)

(assert (=> b!7041910 (=> res!2874853 e!4233323)))

(assert (=> b!7041910 (= res!2874853 lt!2525070)))

(declare-fun lt!2525043 () (Set Context!12980))

(assert (=> b!7041910 (= lt!2525070 (matchZipper!3034 lt!2525043 (t!381782 s!7408)))))

(declare-fun lt!2525058 () Unit!161668)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1567 ((Set Context!12980) (Set Context!12980) List!68011) Unit!161668)

(assert (=> b!7041910 (= lt!2525058 (lemmaZipperConcatMatchesSameAsBothZippers!1567 lt!2525043 lt!2525034 (t!381782 s!7408)))))

(declare-fun lt!2525064 () Unit!161668)

(assert (=> b!7041910 (= lt!2525064 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(declare-fun lt!2525071 () Unit!161668)

(assert (=> b!7041910 (= lt!2525071 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(declare-fun b!7041911 () Bool)

(declare-fun e!4233322 () Bool)

(assert (=> b!7041911 (= e!4233322 e!4233332)))

(declare-fun res!2874860 () Bool)

(assert (=> b!7041911 (=> res!2874860 e!4233332)))

(declare-fun lt!2525059 () (Set Context!12980))

(assert (=> b!7041911 (= res!2874860 (not (= lt!2525033 lt!2525059)))))

(assert (=> b!7041911 (= lt!2525033 (set.insert lt!2525050 (as set.empty (Set Context!12980))))))

(declare-fun lt!2525061 () Unit!161668)

(assert (=> b!7041911 (= lt!2525061 (lemmaConcatPreservesForall!815 (exprs!6990 lt!2525069) (exprs!6990 ct2!306) lambda!417051))))

(declare-fun b!7041912 () Bool)

(declare-fun e!4233320 () Bool)

(assert (=> b!7041912 (= e!4233326 e!4233320)))

(declare-fun res!2874866 () Bool)

(assert (=> b!7041912 (=> res!2874866 e!4233320)))

(assert (=> b!7041912 (= res!2874866 (matchZipper!3034 lt!2525034 (t!381782 s!7408)))))

(declare-fun lt!2525032 () Unit!161668)

(assert (=> b!7041912 (= lt!2525032 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(declare-fun res!2874869 () Bool)

(assert (=> start!681340 (=> (not res!2874869) (not e!4233328))))

(declare-fun lt!2525073 () (Set Context!12980))

(assert (=> start!681340 (= res!2874869 (matchZipper!3034 lt!2525073 s!7408))))

(declare-fun z1!570 () (Set Context!12980))

(declare-fun appendTo!615 ((Set Context!12980) Context!12980) (Set Context!12980))

(assert (=> start!681340 (= lt!2525073 (appendTo!615 z1!570 ct2!306))))

(assert (=> start!681340 e!4233328))

(declare-fun condSetEmpty!49369 () Bool)

(assert (=> start!681340 (= condSetEmpty!49369 (= z1!570 (as set.empty (Set Context!12980))))))

(assert (=> start!681340 setRes!49369))

(declare-fun inv!86595 (Context!12980) Bool)

(assert (=> start!681340 (and (inv!86595 ct2!306) e!4233333)))

(assert (=> start!681340 e!4233325))

(declare-fun b!7041903 () Bool)

(declare-fun e!4233329 () Bool)

(assert (=> b!7041903 (= e!4233324 e!4233329)))

(declare-fun res!2874865 () Bool)

(assert (=> b!7041903 (=> res!2874865 e!4233329)))

(declare-fun nullable!7205 (Regex!17494) Bool)

(assert (=> b!7041903 (= res!2874865 (not (nullable!7205 (h!74334 (exprs!6990 lt!2525069)))))))

(assert (=> b!7041903 (= lt!2525053 (Context!12981 lt!2525060))))

(declare-fun tail!13604 (List!68010) List!68010)

(assert (=> b!7041903 (= lt!2525060 (tail!13604 (exprs!6990 lt!2525069)))))

(declare-fun e!4233317 () Bool)

(assert (=> b!7041913 (= e!4233317 e!4233322)))

(declare-fun res!2874872 () Bool)

(assert (=> b!7041913 (=> res!2874872 e!4233322)))

(declare-fun lt!2525040 () Context!12980)

(assert (=> b!7041913 (= res!2874872 (or (not (= lt!2525050 lt!2525040)) (not (set.member lt!2525069 z1!570))))))

(declare-fun ++!15563 (List!68010 List!68010) List!68010)

(assert (=> b!7041913 (= lt!2525050 (Context!12981 (++!15563 (exprs!6990 lt!2525069) (exprs!6990 ct2!306))))))

(declare-fun lt!2525055 () Unit!161668)

(assert (=> b!7041913 (= lt!2525055 (lemmaConcatPreservesForall!815 (exprs!6990 lt!2525069) (exprs!6990 ct2!306) lambda!417051))))

(declare-fun lambda!417050 () Int)

(declare-fun mapPost2!335 ((Set Context!12980) Int Context!12980) Context!12980)

(assert (=> b!7041913 (= lt!2525069 (mapPost2!335 z1!570 lambda!417050 lt!2525040))))

(declare-fun b!7041914 () Bool)

(declare-fun res!2874857 () Bool)

(declare-fun e!4233319 () Bool)

(assert (=> b!7041914 (=> res!2874857 e!4233319)))

(declare-fun lt!2525056 () (Set Context!12980))

(declare-datatypes ((tuple2!68126 0))(
  ( (tuple2!68127 (_1!37366 List!68011) (_2!37366 List!68011)) )
))
(declare-fun lt!2525067 () tuple2!68126)

(assert (=> b!7041914 (= res!2874857 (not (matchZipper!3034 lt!2525056 (_2!37366 lt!2525067))))))

(declare-fun b!7041915 () Bool)

(declare-fun e!4233318 () Bool)

(assert (=> b!7041915 (= e!4233320 e!4233318)))

(declare-fun res!2874854 () Bool)

(assert (=> b!7041915 (=> res!2874854 e!4233318)))

(assert (=> b!7041915 (= res!2874854 (not lt!2525070))))

(declare-fun lt!2525046 () Unit!161668)

(assert (=> b!7041915 (= lt!2525046 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(declare-fun lt!2525044 () Unit!161668)

(assert (=> b!7041915 (= lt!2525044 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(declare-fun b!7041916 () Bool)

(assert (=> b!7041916 (= e!4233329 e!4233331)))

(declare-fun res!2874867 () Bool)

(assert (=> b!7041916 (=> res!2874867 e!4233331)))

(assert (=> b!7041916 (= res!2874867 (not (= lt!2525045 lt!2525047)))))

(assert (=> b!7041916 (= lt!2525047 (set.union lt!2525043 lt!2525034))))

(declare-fun lt!2525051 () Context!12980)

(assert (=> b!7041916 (= lt!2525034 (derivationStepZipperUp!2104 lt!2525051 (h!74335 s!7408)))))

(declare-fun derivationStepZipperDown!2158 (Regex!17494 Context!12980 C!35258) (Set Context!12980))

(assert (=> b!7041916 (= lt!2525043 (derivationStepZipperDown!2158 (h!74334 (exprs!6990 lt!2525069)) lt!2525051 (h!74335 s!7408)))))

(assert (=> b!7041916 (= lt!2525051 (Context!12981 (++!15563 lt!2525060 (exprs!6990 ct2!306))))))

(declare-fun lt!2525054 () Unit!161668)

(assert (=> b!7041916 (= lt!2525054 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(declare-fun lt!2525042 () Unit!161668)

(assert (=> b!7041916 (= lt!2525042 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(declare-fun b!7041917 () Bool)

(declare-fun res!2874873 () Bool)

(assert (=> b!7041917 (=> res!2874873 e!4233319)))

(declare-fun ++!15564 (List!68011 List!68011) List!68011)

(assert (=> b!7041917 (= res!2874873 (not (= (++!15564 (_1!37366 lt!2525067) (_2!37366 lt!2525067)) (t!381782 s!7408))))))

(declare-fun b!7041918 () Bool)

(assert (=> b!7041918 (= e!4233318 e!4233319)))

(declare-fun res!2874861 () Bool)

(assert (=> b!7041918 (=> res!2874861 e!4233319)))

(assert (=> b!7041918 (= res!2874861 (not (matchZipper!3034 lt!2525049 (_1!37366 lt!2525067))))))

(declare-datatypes ((Option!16895 0))(
  ( (None!16894) (Some!16894 (v!53184 tuple2!68126)) )
))
(declare-fun lt!2525036 () Option!16895)

(declare-fun get!23793 (Option!16895) tuple2!68126)

(assert (=> b!7041918 (= lt!2525067 (get!23793 lt!2525036))))

(declare-fun isDefined!13596 (Option!16895) Bool)

(assert (=> b!7041918 (isDefined!13596 lt!2525036)))

(declare-fun findConcatSeparationZippers!411 ((Set Context!12980) (Set Context!12980) List!68011 List!68011 List!68011) Option!16895)

(assert (=> b!7041918 (= lt!2525036 (findConcatSeparationZippers!411 lt!2525049 lt!2525056 Nil!67887 (t!381782 s!7408) (t!381782 s!7408)))))

(assert (=> b!7041918 (= lt!2525056 (set.insert ct2!306 (as set.empty (Set Context!12980))))))

(declare-fun lt!2525038 () Unit!161668)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!399 ((Set Context!12980) Context!12980 List!68011) Unit!161668)

(assert (=> b!7041918 (= lt!2525038 (lemmaConcatZipperMatchesStringThenFindConcatDefined!399 lt!2525049 ct2!306 (t!381782 s!7408)))))

(declare-fun lt!2525065 () Unit!161668)

(assert (=> b!7041918 (= lt!2525065 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(assert (=> b!7041918 (= lt!2525043 (appendTo!615 lt!2525049 ct2!306))))

(assert (=> b!7041918 (= lt!2525049 (derivationStepZipperDown!2158 (h!74334 (exprs!6990 lt!2525069)) lt!2525053 (h!74335 s!7408)))))

(declare-fun lt!2525035 () Unit!161668)

(assert (=> b!7041918 (= lt!2525035 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(declare-fun lt!2525039 () Unit!161668)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!73 (Context!12980 Regex!17494 C!35258 Context!12980) Unit!161668)

(assert (=> b!7041918 (= lt!2525039 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!73 lt!2525053 (h!74334 (exprs!6990 lt!2525069)) (h!74335 s!7408) ct2!306))))

(declare-fun setNonEmpty!49369 () Bool)

(declare-fun setElem!49369 () Context!12980)

(declare-fun e!4233321 () Bool)

(declare-fun tp!1937505 () Bool)

(assert (=> setNonEmpty!49369 (= setRes!49369 (and tp!1937505 (inv!86595 setElem!49369) e!4233321))))

(declare-fun setRest!49369 () (Set Context!12980))

(assert (=> setNonEmpty!49369 (= z1!570 (set.union (set.insert setElem!49369 (as set.empty (Set Context!12980))) setRest!49369))))

(declare-fun b!7041919 () Bool)

(declare-fun tp!1937502 () Bool)

(assert (=> b!7041919 (= e!4233321 tp!1937502)))

(declare-fun b!7041920 () Bool)

(declare-fun res!2874863 () Bool)

(assert (=> b!7041920 (=> res!2874863 e!4233326)))

(assert (=> b!7041920 (= res!2874863 (not lt!2525062))))

(declare-fun b!7041921 () Bool)

(assert (=> b!7041921 (= e!4233319 e!4233327)))

(declare-fun res!2874855 () Bool)

(assert (=> b!7041921 (=> res!2874855 e!4233327)))

(declare-fun lt!2525041 () (Set Context!12980))

(assert (=> b!7041921 (= res!2874855 (not (= lt!2525057 lt!2525041)))))

(declare-fun lt!2525031 () (Set Context!12980))

(assert (=> b!7041921 (= (flatMap!2441 lt!2525031 lambda!417052) (derivationStepZipperUp!2104 lt!2525069 (h!74335 s!7408)))))

(declare-fun lt!2525052 () Unit!161668)

(assert (=> b!7041921 (= lt!2525052 (lemmaFlatMapOnSingletonSet!1955 lt!2525031 lt!2525069 lambda!417052))))

(assert (=> b!7041921 (= lt!2525041 (derivationStepZipperUp!2104 lt!2525069 (h!74335 s!7408)))))

(assert (=> b!7041921 (= lt!2525057 (derivationStepZipper!2950 lt!2525031 (h!74335 s!7408)))))

(assert (=> b!7041921 (= lt!2525031 (set.insert lt!2525069 (as set.empty (Set Context!12980))))))

(declare-fun b!7041922 () Bool)

(declare-fun res!2874856 () Bool)

(assert (=> b!7041922 (=> res!2874856 e!4233324)))

(assert (=> b!7041922 (= res!2874856 (not (is-Cons!67886 (exprs!6990 lt!2525069))))))

(declare-fun b!7041923 () Bool)

(assert (=> b!7041923 (= e!4233330 (not (matchZipper!3034 lt!2525034 (t!381782 s!7408))))))

(declare-fun lt!2525037 () Unit!161668)

(assert (=> b!7041923 (= lt!2525037 (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(assert (=> b!7041924 (= e!4233328 (not e!4233317))))

(declare-fun res!2874871 () Bool)

(assert (=> b!7041924 (=> res!2874871 e!4233317)))

(assert (=> b!7041924 (= res!2874871 (not (matchZipper!3034 lt!2525059 s!7408)))))

(assert (=> b!7041924 (= lt!2525059 (set.insert lt!2525040 (as set.empty (Set Context!12980))))))

(declare-fun lambda!417049 () Int)

(declare-fun getWitness!1520 ((Set Context!12980) Int) Context!12980)

(assert (=> b!7041924 (= lt!2525040 (getWitness!1520 lt!2525073 lambda!417049))))

(declare-datatypes ((List!68012 0))(
  ( (Nil!67888) (Cons!67888 (h!74336 Context!12980) (t!381783 List!68012)) )
))
(declare-fun lt!2525066 () List!68012)

(declare-fun exists!3441 (List!68012 Int) Bool)

(assert (=> b!7041924 (exists!3441 lt!2525066 lambda!417049)))

(declare-fun lt!2525048 () Unit!161668)

(declare-fun lemmaZipperMatchesExistsMatchingContext!433 (List!68012 List!68011) Unit!161668)

(assert (=> b!7041924 (= lt!2525048 (lemmaZipperMatchesExistsMatchingContext!433 lt!2525066 s!7408))))

(declare-fun toList!10837 ((Set Context!12980)) List!68012)

(assert (=> b!7041924 (= lt!2525066 (toList!10837 lt!2525073))))

(declare-fun b!7041925 () Bool)

(declare-fun res!2874868 () Bool)

(assert (=> b!7041925 (=> res!2874868 e!4233317)))

(assert (=> b!7041925 (= res!2874868 (not (set.member lt!2525040 lt!2525073)))))

(assert (= (and start!681340 res!2874869) b!7041906))

(assert (= (and b!7041906 res!2874859) b!7041924))

(assert (= (and b!7041924 (not res!2874871)) b!7041925))

(assert (= (and b!7041925 (not res!2874868)) b!7041913))

(assert (= (and b!7041913 (not res!2874872)) b!7041911))

(assert (= (and b!7041911 (not res!2874860)) b!7041908))

(assert (= (and b!7041908 (not res!2874864)) b!7041922))

(assert (= (and b!7041922 (not res!2874856)) b!7041909))

(assert (= (and b!7041909 (not res!2874858)) b!7041903))

(assert (= (and b!7041903 (not res!2874865)) b!7041916))

(assert (= (and b!7041916 (not res!2874867)) b!7041910))

(assert (= (and b!7041910 (not res!2874853)) b!7041905))

(assert (= (and b!7041910 res!2874870) b!7041923))

(assert (= (and b!7041910 (not res!2874862)) b!7041920))

(assert (= (and b!7041920 (not res!2874863)) b!7041912))

(assert (= (and b!7041912 (not res!2874866)) b!7041915))

(assert (= (and b!7041915 (not res!2874854)) b!7041918))

(assert (= (and b!7041918 (not res!2874861)) b!7041914))

(assert (= (and b!7041914 (not res!2874857)) b!7041917))

(assert (= (and b!7041917 (not res!2874873)) b!7041921))

(assert (= (and b!7041921 (not res!2874855)) b!7041907))

(assert (= (and start!681340 condSetEmpty!49369) setIsEmpty!49369))

(assert (= (and start!681340 (not condSetEmpty!49369)) setNonEmpty!49369))

(assert (= setNonEmpty!49369 b!7041919))

(assert (= start!681340 b!7041904))

(assert (= (and start!681340 (is-Cons!67887 s!7408)) b!7041902))

(declare-fun m!7753654 () Bool)

(assert (=> b!7041924 m!7753654))

(declare-fun m!7753656 () Bool)

(assert (=> b!7041924 m!7753656))

(declare-fun m!7753658 () Bool)

(assert (=> b!7041924 m!7753658))

(declare-fun m!7753660 () Bool)

(assert (=> b!7041924 m!7753660))

(declare-fun m!7753662 () Bool)

(assert (=> b!7041924 m!7753662))

(declare-fun m!7753664 () Bool)

(assert (=> b!7041924 m!7753664))

(declare-fun m!7753666 () Bool)

(assert (=> b!7041911 m!7753666))

(declare-fun m!7753668 () Bool)

(assert (=> b!7041911 m!7753668))

(declare-fun m!7753670 () Bool)

(assert (=> b!7041903 m!7753670))

(declare-fun m!7753672 () Bool)

(assert (=> b!7041903 m!7753672))

(declare-fun m!7753674 () Bool)

(assert (=> b!7041910 m!7753674))

(declare-fun m!7753676 () Bool)

(assert (=> b!7041910 m!7753676))

(declare-fun m!7753678 () Bool)

(assert (=> b!7041910 m!7753678))

(assert (=> b!7041910 m!7753674))

(declare-fun m!7753680 () Bool)

(assert (=> b!7041910 m!7753680))

(declare-fun m!7753682 () Bool)

(assert (=> b!7041910 m!7753682))

(assert (=> b!7041910 m!7753674))

(declare-fun m!7753684 () Bool)

(assert (=> b!7041914 m!7753684))

(declare-fun m!7753686 () Bool)

(assert (=> b!7041918 m!7753686))

(declare-fun m!7753688 () Bool)

(assert (=> b!7041918 m!7753688))

(declare-fun m!7753690 () Bool)

(assert (=> b!7041918 m!7753690))

(declare-fun m!7753692 () Bool)

(assert (=> b!7041918 m!7753692))

(declare-fun m!7753694 () Bool)

(assert (=> b!7041918 m!7753694))

(declare-fun m!7753696 () Bool)

(assert (=> b!7041918 m!7753696))

(assert (=> b!7041918 m!7753674))

(declare-fun m!7753698 () Bool)

(assert (=> b!7041918 m!7753698))

(assert (=> b!7041918 m!7753674))

(declare-fun m!7753700 () Bool)

(assert (=> b!7041918 m!7753700))

(declare-fun m!7753702 () Bool)

(assert (=> b!7041918 m!7753702))

(declare-fun m!7753704 () Bool)

(assert (=> b!7041923 m!7753704))

(assert (=> b!7041923 m!7753674))

(assert (=> b!7041916 m!7753674))

(declare-fun m!7753706 () Bool)

(assert (=> b!7041916 m!7753706))

(declare-fun m!7753708 () Bool)

(assert (=> b!7041916 m!7753708))

(declare-fun m!7753710 () Bool)

(assert (=> b!7041916 m!7753710))

(assert (=> b!7041916 m!7753674))

(declare-fun m!7753712 () Bool)

(assert (=> b!7041909 m!7753712))

(declare-fun m!7753714 () Bool)

(assert (=> b!7041921 m!7753714))

(declare-fun m!7753716 () Bool)

(assert (=> b!7041921 m!7753716))

(declare-fun m!7753718 () Bool)

(assert (=> b!7041921 m!7753718))

(declare-fun m!7753720 () Bool)

(assert (=> b!7041921 m!7753720))

(declare-fun m!7753722 () Bool)

(assert (=> b!7041921 m!7753722))

(declare-fun m!7753724 () Bool)

(assert (=> setNonEmpty!49369 m!7753724))

(declare-fun m!7753726 () Bool)

(assert (=> b!7041908 m!7753726))

(declare-fun m!7753728 () Bool)

(assert (=> b!7041908 m!7753728))

(declare-fun m!7753730 () Bool)

(assert (=> b!7041908 m!7753730))

(declare-fun m!7753732 () Bool)

(assert (=> b!7041908 m!7753732))

(assert (=> b!7041908 m!7753668))

(assert (=> b!7041915 m!7753674))

(assert (=> b!7041915 m!7753674))

(declare-fun m!7753734 () Bool)

(assert (=> b!7041913 m!7753734))

(declare-fun m!7753736 () Bool)

(assert (=> b!7041913 m!7753736))

(assert (=> b!7041913 m!7753668))

(declare-fun m!7753738 () Bool)

(assert (=> b!7041913 m!7753738))

(declare-fun m!7753740 () Bool)

(assert (=> b!7041917 m!7753740))

(declare-fun m!7753742 () Bool)

(assert (=> b!7041907 m!7753742))

(assert (=> b!7041912 m!7753704))

(assert (=> b!7041912 m!7753674))

(declare-fun m!7753744 () Bool)

(assert (=> b!7041925 m!7753744))

(assert (=> b!7041905 m!7753704))

(declare-fun m!7753746 () Bool)

(assert (=> start!681340 m!7753746))

(declare-fun m!7753748 () Bool)

(assert (=> start!681340 m!7753748))

(declare-fun m!7753750 () Bool)

(assert (=> start!681340 m!7753750))

(push 1)

(assert (not b!7041903))

(assert (not b!7041917))

(assert (not b!7041909))

(assert (not b!7041904))

(assert (not b!7041902))

(assert (not b!7041915))

(assert (not b!7041914))

(assert (not setNonEmpty!49369))

(assert (not b!7041916))

(assert (not b!7041921))

(assert (not b!7041919))

(assert (not b!7041905))

(assert (not b!7041923))

(assert (not b!7041913))

(assert (not b!7041918))

(assert (not b!7041910))

(assert (not b!7041911))

(assert (not b!7041912))

(assert (not b!7041907))

(assert (not b!7041924))

(assert tp_is_empty!44213)

(assert (not b!7041908))

(assert (not start!681340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2198575 () Bool)

(declare-fun forall!16419 (List!68010 Int) Bool)

(assert (=> d!2198575 (forall!16419 (++!15563 lt!2525060 (exprs!6990 ct2!306)) lambda!417051)))

(declare-fun lt!2525207 () Unit!161668)

(declare-fun choose!53470 (List!68010 List!68010 Int) Unit!161668)

(assert (=> d!2198575 (= lt!2525207 (choose!53470 lt!2525060 (exprs!6990 ct2!306) lambda!417051))))

(assert (=> d!2198575 (forall!16419 lt!2525060 lambda!417051)))

(assert (=> d!2198575 (= (lemmaConcatPreservesForall!815 lt!2525060 (exprs!6990 ct2!306) lambda!417051) lt!2525207)))

(declare-fun bs!1873392 () Bool)

(assert (= bs!1873392 d!2198575))

(assert (=> bs!1873392 m!7753710))

(assert (=> bs!1873392 m!7753710))

(declare-fun m!7753850 () Bool)

(assert (=> bs!1873392 m!7753850))

(declare-fun m!7753852 () Bool)

(assert (=> bs!1873392 m!7753852))

(declare-fun m!7753854 () Bool)

(assert (=> bs!1873392 m!7753854))

(assert (=> b!7041915 d!2198575))

(declare-fun d!2198577 () Bool)

(declare-fun c!1310812 () Bool)

(declare-fun isEmpty!39617 (List!68011) Bool)

(assert (=> d!2198577 (= c!1310812 (isEmpty!39617 (t!381782 s!7408)))))

(declare-fun e!4233387 () Bool)

(assert (=> d!2198577 (= (matchZipper!3034 lt!2525034 (t!381782 s!7408)) e!4233387)))

(declare-fun b!7042014 () Bool)

(declare-fun nullableZipper!2600 ((Set Context!12980)) Bool)

(assert (=> b!7042014 (= e!4233387 (nullableZipper!2600 lt!2525034))))

(declare-fun b!7042015 () Bool)

(declare-fun head!14291 (List!68011) C!35258)

(declare-fun tail!13606 (List!68011) List!68011)

(assert (=> b!7042015 (= e!4233387 (matchZipper!3034 (derivationStepZipper!2950 lt!2525034 (head!14291 (t!381782 s!7408))) (tail!13606 (t!381782 s!7408))))))

(assert (= (and d!2198577 c!1310812) b!7042014))

(assert (= (and d!2198577 (not c!1310812)) b!7042015))

(declare-fun m!7753856 () Bool)

(assert (=> d!2198577 m!7753856))

(declare-fun m!7753858 () Bool)

(assert (=> b!7042014 m!7753858))

(declare-fun m!7753860 () Bool)

(assert (=> b!7042015 m!7753860))

(assert (=> b!7042015 m!7753860))

(declare-fun m!7753862 () Bool)

(assert (=> b!7042015 m!7753862))

(declare-fun m!7753864 () Bool)

(assert (=> b!7042015 m!7753864))

(assert (=> b!7042015 m!7753862))

(assert (=> b!7042015 m!7753864))

(declare-fun m!7753866 () Bool)

(assert (=> b!7042015 m!7753866))

(assert (=> b!7041905 d!2198577))

(declare-fun b!7042038 () Bool)

(declare-fun e!4233400 () (Set Context!12980))

(declare-fun e!4233401 () (Set Context!12980))

(assert (=> b!7042038 (= e!4233400 e!4233401)))

(declare-fun c!1310823 () Bool)

(assert (=> b!7042038 (= c!1310823 (is-Union!17494 (h!74334 (exprs!6990 lt!2525069))))))

(declare-fun bm!639605 () Bool)

(declare-fun call!639614 () List!68010)

(declare-fun call!639615 () List!68010)

(assert (=> bm!639605 (= call!639614 call!639615)))

(declare-fun bm!639606 () Bool)

(declare-fun call!639613 () (Set Context!12980))

(declare-fun call!639612 () (Set Context!12980))

(assert (=> bm!639606 (= call!639613 call!639612)))

(declare-fun b!7042039 () Bool)

(declare-fun call!639610 () (Set Context!12980))

(declare-fun call!639611 () (Set Context!12980))

(assert (=> b!7042039 (= e!4233401 (set.union call!639610 call!639611))))

(declare-fun b!7042040 () Bool)

(declare-fun c!1310825 () Bool)

(assert (=> b!7042040 (= c!1310825 (is-Star!17494 (h!74334 (exprs!6990 lt!2525069))))))

(declare-fun e!4233402 () (Set Context!12980))

(declare-fun e!4233405 () (Set Context!12980))

(assert (=> b!7042040 (= e!4233402 e!4233405)))

(declare-fun b!7042041 () Bool)

(assert (=> b!7042041 (= e!4233405 call!639613)))

(declare-fun b!7042042 () Bool)

(assert (=> b!7042042 (= e!4233405 (as set.empty (Set Context!12980)))))

(declare-fun b!7042043 () Bool)

(assert (=> b!7042043 (= e!4233402 call!639613)))

(declare-fun b!7042044 () Bool)

(declare-fun e!4233403 () Bool)

(assert (=> b!7042044 (= e!4233403 (nullable!7205 (regOne!35500 (h!74334 (exprs!6990 lt!2525069)))))))

(declare-fun b!7042045 () Bool)

(declare-fun e!4233404 () (Set Context!12980))

(assert (=> b!7042045 (= e!4233404 (set.union call!639610 call!639612))))

(declare-fun c!1310824 () Bool)

(declare-fun c!1310827 () Bool)

(declare-fun bm!639607 () Bool)

(declare-fun $colon$colon!2593 (List!68010 Regex!17494) List!68010)

(assert (=> bm!639607 (= call!639615 ($colon$colon!2593 (exprs!6990 lt!2525051) (ite (or c!1310827 c!1310824) (regTwo!35500 (h!74334 (exprs!6990 lt!2525069))) (h!74334 (exprs!6990 lt!2525069)))))))

(declare-fun bm!639608 () Bool)

(assert (=> bm!639608 (= call!639612 call!639611)))

(declare-fun d!2198579 () Bool)

(declare-fun c!1310826 () Bool)

(assert (=> d!2198579 (= c!1310826 (and (is-ElementMatch!17494 (h!74334 (exprs!6990 lt!2525069))) (= (c!1310798 (h!74334 (exprs!6990 lt!2525069))) (h!74335 s!7408))))))

(assert (=> d!2198579 (= (derivationStepZipperDown!2158 (h!74334 (exprs!6990 lt!2525069)) lt!2525051 (h!74335 s!7408)) e!4233400)))

(declare-fun bm!639609 () Bool)

(assert (=> bm!639609 (= call!639610 (derivationStepZipperDown!2158 (ite c!1310823 (regOne!35501 (h!74334 (exprs!6990 lt!2525069))) (regOne!35500 (h!74334 (exprs!6990 lt!2525069)))) (ite c!1310823 lt!2525051 (Context!12981 call!639615)) (h!74335 s!7408)))))

(declare-fun b!7042046 () Bool)

(assert (=> b!7042046 (= e!4233404 e!4233402)))

(assert (=> b!7042046 (= c!1310824 (is-Concat!26339 (h!74334 (exprs!6990 lt!2525069))))))

(declare-fun b!7042047 () Bool)

(assert (=> b!7042047 (= e!4233400 (set.insert lt!2525051 (as set.empty (Set Context!12980))))))

(declare-fun bm!639610 () Bool)

(assert (=> bm!639610 (= call!639611 (derivationStepZipperDown!2158 (ite c!1310823 (regTwo!35501 (h!74334 (exprs!6990 lt!2525069))) (ite c!1310827 (regTwo!35500 (h!74334 (exprs!6990 lt!2525069))) (ite c!1310824 (regOne!35500 (h!74334 (exprs!6990 lt!2525069))) (reg!17823 (h!74334 (exprs!6990 lt!2525069)))))) (ite (or c!1310823 c!1310827) lt!2525051 (Context!12981 call!639614)) (h!74335 s!7408)))))

(declare-fun b!7042048 () Bool)

(assert (=> b!7042048 (= c!1310827 e!4233403)))

(declare-fun res!2874940 () Bool)

(assert (=> b!7042048 (=> (not res!2874940) (not e!4233403))))

(assert (=> b!7042048 (= res!2874940 (is-Concat!26339 (h!74334 (exprs!6990 lt!2525069))))))

(assert (=> b!7042048 (= e!4233401 e!4233404)))

(assert (= (and d!2198579 c!1310826) b!7042047))

(assert (= (and d!2198579 (not c!1310826)) b!7042038))

(assert (= (and b!7042038 c!1310823) b!7042039))

(assert (= (and b!7042038 (not c!1310823)) b!7042048))

(assert (= (and b!7042048 res!2874940) b!7042044))

(assert (= (and b!7042048 c!1310827) b!7042045))

(assert (= (and b!7042048 (not c!1310827)) b!7042046))

(assert (= (and b!7042046 c!1310824) b!7042043))

(assert (= (and b!7042046 (not c!1310824)) b!7042040))

(assert (= (and b!7042040 c!1310825) b!7042041))

(assert (= (and b!7042040 (not c!1310825)) b!7042042))

(assert (= (or b!7042043 b!7042041) bm!639605))

(assert (= (or b!7042043 b!7042041) bm!639606))

(assert (= (or b!7042045 bm!639606) bm!639608))

(assert (= (or b!7042045 bm!639605) bm!639607))

(assert (= (or b!7042039 b!7042045) bm!639609))

(assert (= (or b!7042039 bm!639608) bm!639610))

(declare-fun m!7753868 () Bool)

(assert (=> bm!639607 m!7753868))

(declare-fun m!7753870 () Bool)

(assert (=> b!7042047 m!7753870))

(declare-fun m!7753872 () Bool)

(assert (=> b!7042044 m!7753872))

(declare-fun m!7753874 () Bool)

(assert (=> bm!639610 m!7753874))

(declare-fun m!7753876 () Bool)

(assert (=> bm!639609 m!7753876))

(assert (=> b!7041916 d!2198579))

(declare-fun b!7042059 () Bool)

(declare-fun e!4233414 () Bool)

(assert (=> b!7042059 (= e!4233414 (nullable!7205 (h!74334 (exprs!6990 lt!2525051))))))

(declare-fun bm!639613 () Bool)

(declare-fun call!639618 () (Set Context!12980))

(assert (=> bm!639613 (= call!639618 (derivationStepZipperDown!2158 (h!74334 (exprs!6990 lt!2525051)) (Context!12981 (t!381781 (exprs!6990 lt!2525051))) (h!74335 s!7408)))))

(declare-fun b!7042060 () Bool)

(declare-fun e!4233413 () (Set Context!12980))

(assert (=> b!7042060 (= e!4233413 (as set.empty (Set Context!12980)))))

(declare-fun d!2198581 () Bool)

(declare-fun c!1310832 () Bool)

(assert (=> d!2198581 (= c!1310832 e!4233414)))

(declare-fun res!2874943 () Bool)

(assert (=> d!2198581 (=> (not res!2874943) (not e!4233414))))

(assert (=> d!2198581 (= res!2874943 (is-Cons!67886 (exprs!6990 lt!2525051)))))

(declare-fun e!4233412 () (Set Context!12980))

(assert (=> d!2198581 (= (derivationStepZipperUp!2104 lt!2525051 (h!74335 s!7408)) e!4233412)))

(declare-fun b!7042061 () Bool)

(assert (=> b!7042061 (= e!4233413 call!639618)))

(declare-fun b!7042062 () Bool)

(assert (=> b!7042062 (= e!4233412 (set.union call!639618 (derivationStepZipperUp!2104 (Context!12981 (t!381781 (exprs!6990 lt!2525051))) (h!74335 s!7408))))))

(declare-fun b!7042063 () Bool)

(assert (=> b!7042063 (= e!4233412 e!4233413)))

(declare-fun c!1310833 () Bool)

(assert (=> b!7042063 (= c!1310833 (is-Cons!67886 (exprs!6990 lt!2525051)))))

(assert (= (and d!2198581 res!2874943) b!7042059))

(assert (= (and d!2198581 c!1310832) b!7042062))

(assert (= (and d!2198581 (not c!1310832)) b!7042063))

(assert (= (and b!7042063 c!1310833) b!7042061))

(assert (= (and b!7042063 (not c!1310833)) b!7042060))

(assert (= (or b!7042062 b!7042061) bm!639613))

(declare-fun m!7753878 () Bool)

(assert (=> b!7042059 m!7753878))

(declare-fun m!7753880 () Bool)

(assert (=> bm!639613 m!7753880))

(declare-fun m!7753882 () Bool)

(assert (=> b!7042062 m!7753882))

(assert (=> b!7041916 d!2198581))

(assert (=> b!7041916 d!2198575))

(declare-fun d!2198583 () Bool)

(declare-fun e!4233420 () Bool)

(assert (=> d!2198583 e!4233420))

(declare-fun res!2874948 () Bool)

(assert (=> d!2198583 (=> (not res!2874948) (not e!4233420))))

(declare-fun lt!2525210 () List!68010)

(declare-fun content!13587 (List!68010) (Set Regex!17494))

(assert (=> d!2198583 (= res!2874948 (= (content!13587 lt!2525210) (set.union (content!13587 lt!2525060) (content!13587 (exprs!6990 ct2!306)))))))

(declare-fun e!4233419 () List!68010)

(assert (=> d!2198583 (= lt!2525210 e!4233419)))

(declare-fun c!1310836 () Bool)

(assert (=> d!2198583 (= c!1310836 (is-Nil!67886 lt!2525060))))

(assert (=> d!2198583 (= (++!15563 lt!2525060 (exprs!6990 ct2!306)) lt!2525210)))

(declare-fun b!7042075 () Bool)

(assert (=> b!7042075 (= e!4233420 (or (not (= (exprs!6990 ct2!306) Nil!67886)) (= lt!2525210 lt!2525060)))))

(declare-fun b!7042074 () Bool)

(declare-fun res!2874949 () Bool)

(assert (=> b!7042074 (=> (not res!2874949) (not e!4233420))))

(declare-fun size!41097 (List!68010) Int)

(assert (=> b!7042074 (= res!2874949 (= (size!41097 lt!2525210) (+ (size!41097 lt!2525060) (size!41097 (exprs!6990 ct2!306)))))))

(declare-fun b!7042072 () Bool)

(assert (=> b!7042072 (= e!4233419 (exprs!6990 ct2!306))))

(declare-fun b!7042073 () Bool)

(assert (=> b!7042073 (= e!4233419 (Cons!67886 (h!74334 lt!2525060) (++!15563 (t!381781 lt!2525060) (exprs!6990 ct2!306))))))

(assert (= (and d!2198583 c!1310836) b!7042072))

(assert (= (and d!2198583 (not c!1310836)) b!7042073))

(assert (= (and d!2198583 res!2874948) b!7042074))

(assert (= (and b!7042074 res!2874949) b!7042075))

(declare-fun m!7753884 () Bool)

(assert (=> d!2198583 m!7753884))

(declare-fun m!7753886 () Bool)

(assert (=> d!2198583 m!7753886))

(declare-fun m!7753888 () Bool)

(assert (=> d!2198583 m!7753888))

(declare-fun m!7753890 () Bool)

(assert (=> b!7042074 m!7753890))

(declare-fun m!7753892 () Bool)

(assert (=> b!7042074 m!7753892))

(declare-fun m!7753894 () Bool)

(assert (=> b!7042074 m!7753894))

(declare-fun m!7753896 () Bool)

(assert (=> b!7042073 m!7753896))

(assert (=> b!7041916 d!2198583))

(declare-fun b!7042086 () Bool)

(declare-fun res!2874955 () Bool)

(declare-fun e!4233425 () Bool)

(assert (=> b!7042086 (=> (not res!2874955) (not e!4233425))))

(declare-fun lt!2525213 () List!68011)

(declare-fun size!41098 (List!68011) Int)

(assert (=> b!7042086 (= res!2874955 (= (size!41098 lt!2525213) (+ (size!41098 (_1!37366 lt!2525067)) (size!41098 (_2!37366 lt!2525067)))))))

(declare-fun b!7042087 () Bool)

(assert (=> b!7042087 (= e!4233425 (or (not (= (_2!37366 lt!2525067) Nil!67887)) (= lt!2525213 (_1!37366 lt!2525067))))))

(declare-fun b!7042084 () Bool)

(declare-fun e!4233426 () List!68011)

(assert (=> b!7042084 (= e!4233426 (_2!37366 lt!2525067))))

(declare-fun b!7042085 () Bool)

(assert (=> b!7042085 (= e!4233426 (Cons!67887 (h!74335 (_1!37366 lt!2525067)) (++!15564 (t!381782 (_1!37366 lt!2525067)) (_2!37366 lt!2525067))))))

(declare-fun d!2198585 () Bool)

(assert (=> d!2198585 e!4233425))

(declare-fun res!2874954 () Bool)

(assert (=> d!2198585 (=> (not res!2874954) (not e!4233425))))

(declare-fun content!13588 (List!68011) (Set C!35258))

(assert (=> d!2198585 (= res!2874954 (= (content!13588 lt!2525213) (set.union (content!13588 (_1!37366 lt!2525067)) (content!13588 (_2!37366 lt!2525067)))))))

(assert (=> d!2198585 (= lt!2525213 e!4233426)))

(declare-fun c!1310839 () Bool)

(assert (=> d!2198585 (= c!1310839 (is-Nil!67887 (_1!37366 lt!2525067)))))

(assert (=> d!2198585 (= (++!15564 (_1!37366 lt!2525067) (_2!37366 lt!2525067)) lt!2525213)))

(assert (= (and d!2198585 c!1310839) b!7042084))

(assert (= (and d!2198585 (not c!1310839)) b!7042085))

(assert (= (and d!2198585 res!2874954) b!7042086))

(assert (= (and b!7042086 res!2874955) b!7042087))

(declare-fun m!7753898 () Bool)

(assert (=> b!7042086 m!7753898))

(declare-fun m!7753900 () Bool)

(assert (=> b!7042086 m!7753900))

(declare-fun m!7753902 () Bool)

(assert (=> b!7042086 m!7753902))

(declare-fun m!7753904 () Bool)

(assert (=> b!7042085 m!7753904))

(declare-fun m!7753906 () Bool)

(assert (=> d!2198585 m!7753906))

(declare-fun m!7753908 () Bool)

(assert (=> d!2198585 m!7753908))

(declare-fun m!7753910 () Bool)

(assert (=> d!2198585 m!7753910))

(assert (=> b!7041917 d!2198585))

(declare-fun b!7042088 () Bool)

(declare-fun e!4233429 () Bool)

(assert (=> b!7042088 (= e!4233429 (nullable!7205 (h!74334 (exprs!6990 lt!2525053))))))

(declare-fun bm!639614 () Bool)

(declare-fun call!639619 () (Set Context!12980))

(assert (=> bm!639614 (= call!639619 (derivationStepZipperDown!2158 (h!74334 (exprs!6990 lt!2525053)) (Context!12981 (t!381781 (exprs!6990 lt!2525053))) (h!74335 s!7408)))))

(declare-fun b!7042089 () Bool)

(declare-fun e!4233428 () (Set Context!12980))

(assert (=> b!7042089 (= e!4233428 (as set.empty (Set Context!12980)))))

(declare-fun d!2198587 () Bool)

(declare-fun c!1310840 () Bool)

(assert (=> d!2198587 (= c!1310840 e!4233429)))

(declare-fun res!2874956 () Bool)

(assert (=> d!2198587 (=> (not res!2874956) (not e!4233429))))

(assert (=> d!2198587 (= res!2874956 (is-Cons!67886 (exprs!6990 lt!2525053)))))

(declare-fun e!4233427 () (Set Context!12980))

(assert (=> d!2198587 (= (derivationStepZipperUp!2104 lt!2525053 (h!74335 s!7408)) e!4233427)))

(declare-fun b!7042090 () Bool)

(assert (=> b!7042090 (= e!4233428 call!639619)))

(declare-fun b!7042091 () Bool)

(assert (=> b!7042091 (= e!4233427 (set.union call!639619 (derivationStepZipperUp!2104 (Context!12981 (t!381781 (exprs!6990 lt!2525053))) (h!74335 s!7408))))))

(declare-fun b!7042092 () Bool)

(assert (=> b!7042092 (= e!4233427 e!4233428)))

(declare-fun c!1310841 () Bool)

(assert (=> b!7042092 (= c!1310841 (is-Cons!67886 (exprs!6990 lt!2525053)))))

(assert (= (and d!2198587 res!2874956) b!7042088))

(assert (= (and d!2198587 c!1310840) b!7042091))

(assert (= (and d!2198587 (not c!1310840)) b!7042092))

(assert (= (and b!7042092 c!1310841) b!7042090))

(assert (= (and b!7042092 (not c!1310841)) b!7042089))

(assert (= (or b!7042091 b!7042090) bm!639614))

(declare-fun m!7753912 () Bool)

(assert (=> b!7042088 m!7753912))

(declare-fun m!7753914 () Bool)

(assert (=> bm!639614 m!7753914))

(declare-fun m!7753916 () Bool)

(assert (=> b!7042091 m!7753916))

(assert (=> b!7041907 d!2198587))

(assert (=> b!7041912 d!2198577))

(assert (=> b!7041912 d!2198575))

(declare-fun d!2198589 () Bool)

(declare-fun e!4233431 () Bool)

(assert (=> d!2198589 e!4233431))

(declare-fun res!2874957 () Bool)

(assert (=> d!2198589 (=> (not res!2874957) (not e!4233431))))

(declare-fun lt!2525214 () List!68010)

(assert (=> d!2198589 (= res!2874957 (= (content!13587 lt!2525214) (set.union (content!13587 (exprs!6990 lt!2525069)) (content!13587 (exprs!6990 ct2!306)))))))

(declare-fun e!4233430 () List!68010)

(assert (=> d!2198589 (= lt!2525214 e!4233430)))

(declare-fun c!1310842 () Bool)

(assert (=> d!2198589 (= c!1310842 (is-Nil!67886 (exprs!6990 lt!2525069)))))

(assert (=> d!2198589 (= (++!15563 (exprs!6990 lt!2525069) (exprs!6990 ct2!306)) lt!2525214)))

(declare-fun b!7042096 () Bool)

(assert (=> b!7042096 (= e!4233431 (or (not (= (exprs!6990 ct2!306) Nil!67886)) (= lt!2525214 (exprs!6990 lt!2525069))))))

(declare-fun b!7042095 () Bool)

(declare-fun res!2874958 () Bool)

(assert (=> b!7042095 (=> (not res!2874958) (not e!4233431))))

(assert (=> b!7042095 (= res!2874958 (= (size!41097 lt!2525214) (+ (size!41097 (exprs!6990 lt!2525069)) (size!41097 (exprs!6990 ct2!306)))))))

(declare-fun b!7042093 () Bool)

(assert (=> b!7042093 (= e!4233430 (exprs!6990 ct2!306))))

(declare-fun b!7042094 () Bool)

(assert (=> b!7042094 (= e!4233430 (Cons!67886 (h!74334 (exprs!6990 lt!2525069)) (++!15563 (t!381781 (exprs!6990 lt!2525069)) (exprs!6990 ct2!306))))))

(assert (= (and d!2198589 c!1310842) b!7042093))

(assert (= (and d!2198589 (not c!1310842)) b!7042094))

(assert (= (and d!2198589 res!2874957) b!7042095))

(assert (= (and b!7042095 res!2874958) b!7042096))

(declare-fun m!7753918 () Bool)

(assert (=> d!2198589 m!7753918))

(declare-fun m!7753920 () Bool)

(assert (=> d!2198589 m!7753920))

(assert (=> d!2198589 m!7753888))

(declare-fun m!7753922 () Bool)

(assert (=> b!7042095 m!7753922))

(declare-fun m!7753924 () Bool)

(assert (=> b!7042095 m!7753924))

(assert (=> b!7042095 m!7753894))

(declare-fun m!7753926 () Bool)

(assert (=> b!7042094 m!7753926))

(assert (=> b!7041913 d!2198589))

(declare-fun d!2198591 () Bool)

(assert (=> d!2198591 (forall!16419 (++!15563 (exprs!6990 lt!2525069) (exprs!6990 ct2!306)) lambda!417051)))

(declare-fun lt!2525215 () Unit!161668)

(assert (=> d!2198591 (= lt!2525215 (choose!53470 (exprs!6990 lt!2525069) (exprs!6990 ct2!306) lambda!417051))))

(assert (=> d!2198591 (forall!16419 (exprs!6990 lt!2525069) lambda!417051)))

(assert (=> d!2198591 (= (lemmaConcatPreservesForall!815 (exprs!6990 lt!2525069) (exprs!6990 ct2!306) lambda!417051) lt!2525215)))

(declare-fun bs!1873393 () Bool)

(assert (= bs!1873393 d!2198591))

(assert (=> bs!1873393 m!7753736))

(assert (=> bs!1873393 m!7753736))

(declare-fun m!7753928 () Bool)

(assert (=> bs!1873393 m!7753928))

(declare-fun m!7753930 () Bool)

(assert (=> bs!1873393 m!7753930))

(declare-fun m!7753932 () Bool)

(assert (=> bs!1873393 m!7753932))

(assert (=> b!7041913 d!2198591))

(declare-fun d!2198593 () Bool)

(declare-fun e!4233434 () Bool)

(assert (=> d!2198593 e!4233434))

(declare-fun res!2874961 () Bool)

(assert (=> d!2198593 (=> (not res!2874961) (not e!4233434))))

(declare-fun lt!2525218 () Context!12980)

(declare-fun dynLambda!27463 (Int Context!12980) Context!12980)

(assert (=> d!2198593 (= res!2874961 (= lt!2525040 (dynLambda!27463 lambda!417050 lt!2525218)))))

(declare-fun choose!53471 ((Set Context!12980) Int Context!12980) Context!12980)

(assert (=> d!2198593 (= lt!2525218 (choose!53471 z1!570 lambda!417050 lt!2525040))))

(declare-fun map!15804 ((Set Context!12980) Int) (Set Context!12980))

(assert (=> d!2198593 (set.member lt!2525040 (map!15804 z1!570 lambda!417050))))

(assert (=> d!2198593 (= (mapPost2!335 z1!570 lambda!417050 lt!2525040) lt!2525218)))

(declare-fun b!7042100 () Bool)

(assert (=> b!7042100 (= e!4233434 (set.member lt!2525218 z1!570))))

(assert (= (and d!2198593 res!2874961) b!7042100))

(declare-fun b_lambda!267343 () Bool)

(assert (=> (not b_lambda!267343) (not d!2198593)))

(declare-fun m!7753934 () Bool)

(assert (=> d!2198593 m!7753934))

(declare-fun m!7753936 () Bool)

(assert (=> d!2198593 m!7753936))

(declare-fun m!7753938 () Bool)

(assert (=> d!2198593 m!7753938))

(declare-fun m!7753940 () Bool)

(assert (=> d!2198593 m!7753940))

(declare-fun m!7753942 () Bool)

(assert (=> b!7042100 m!7753942))

(assert (=> b!7041913 d!2198593))

(declare-fun d!2198595 () Bool)

(declare-fun nullableFct!2746 (Regex!17494) Bool)

(assert (=> d!2198595 (= (nullable!7205 (h!74334 (exprs!6990 lt!2525069))) (nullableFct!2746 (h!74334 (exprs!6990 lt!2525069))))))

(declare-fun bs!1873394 () Bool)

(assert (= bs!1873394 d!2198595))

(declare-fun m!7753944 () Bool)

(assert (=> bs!1873394 m!7753944))

(assert (=> b!7041903 d!2198595))

(declare-fun d!2198597 () Bool)

(assert (=> d!2198597 (= (tail!13604 (exprs!6990 lt!2525069)) (t!381781 (exprs!6990 lt!2525069)))))

(assert (=> b!7041903 d!2198597))

(assert (=> b!7041923 d!2198577))

(assert (=> b!7041923 d!2198575))

(declare-fun d!2198599 () Bool)

(declare-fun c!1310843 () Bool)

(assert (=> d!2198599 (= c!1310843 (isEmpty!39617 s!7408))))

(declare-fun e!4233435 () Bool)

(assert (=> d!2198599 (= (matchZipper!3034 lt!2525059 s!7408) e!4233435)))

(declare-fun b!7042101 () Bool)

(assert (=> b!7042101 (= e!4233435 (nullableZipper!2600 lt!2525059))))

(declare-fun b!7042102 () Bool)

(assert (=> b!7042102 (= e!4233435 (matchZipper!3034 (derivationStepZipper!2950 lt!2525059 (head!14291 s!7408)) (tail!13606 s!7408)))))

(assert (= (and d!2198599 c!1310843) b!7042101))

(assert (= (and d!2198599 (not c!1310843)) b!7042102))

(declare-fun m!7753946 () Bool)

(assert (=> d!2198599 m!7753946))

(declare-fun m!7753948 () Bool)

(assert (=> b!7042101 m!7753948))

(declare-fun m!7753950 () Bool)

(assert (=> b!7042102 m!7753950))

(assert (=> b!7042102 m!7753950))

(declare-fun m!7753952 () Bool)

(assert (=> b!7042102 m!7753952))

(declare-fun m!7753954 () Bool)

(assert (=> b!7042102 m!7753954))

(assert (=> b!7042102 m!7753952))

(assert (=> b!7042102 m!7753954))

(declare-fun m!7753956 () Bool)

(assert (=> b!7042102 m!7753956))

(assert (=> b!7041924 d!2198599))

(declare-fun d!2198601 () Bool)

(declare-fun e!4233438 () Bool)

(assert (=> d!2198601 e!4233438))

(declare-fun res!2874964 () Bool)

(assert (=> d!2198601 (=> (not res!2874964) (not e!4233438))))

(declare-fun lt!2525221 () Context!12980)

(declare-fun dynLambda!27464 (Int Context!12980) Bool)

(assert (=> d!2198601 (= res!2874964 (dynLambda!27464 lambda!417049 lt!2525221))))

(declare-fun getWitness!1522 (List!68012 Int) Context!12980)

(assert (=> d!2198601 (= lt!2525221 (getWitness!1522 (toList!10837 lt!2525073) lambda!417049))))

(declare-fun exists!3443 ((Set Context!12980) Int) Bool)

(assert (=> d!2198601 (exists!3443 lt!2525073 lambda!417049)))

(assert (=> d!2198601 (= (getWitness!1520 lt!2525073 lambda!417049) lt!2525221)))

(declare-fun b!7042105 () Bool)

(assert (=> b!7042105 (= e!4233438 (set.member lt!2525221 lt!2525073))))

(assert (= (and d!2198601 res!2874964) b!7042105))

(declare-fun b_lambda!267345 () Bool)

(assert (=> (not b_lambda!267345) (not d!2198601)))

(declare-fun m!7753958 () Bool)

(assert (=> d!2198601 m!7753958))

(assert (=> d!2198601 m!7753660))

(assert (=> d!2198601 m!7753660))

(declare-fun m!7753960 () Bool)

(assert (=> d!2198601 m!7753960))

(declare-fun m!7753962 () Bool)

(assert (=> d!2198601 m!7753962))

(declare-fun m!7753964 () Bool)

(assert (=> b!7042105 m!7753964))

(assert (=> b!7041924 d!2198601))

(declare-fun d!2198603 () Bool)

(declare-fun e!4233441 () Bool)

(assert (=> d!2198603 e!4233441))

(declare-fun res!2874967 () Bool)

(assert (=> d!2198603 (=> (not res!2874967) (not e!4233441))))

(declare-fun lt!2525224 () List!68012)

(declare-fun noDuplicate!2647 (List!68012) Bool)

(assert (=> d!2198603 (= res!2874967 (noDuplicate!2647 lt!2525224))))

(declare-fun choose!53472 ((Set Context!12980)) List!68012)

(assert (=> d!2198603 (= lt!2525224 (choose!53472 lt!2525073))))

(assert (=> d!2198603 (= (toList!10837 lt!2525073) lt!2525224)))

(declare-fun b!7042108 () Bool)

(declare-fun content!13589 (List!68012) (Set Context!12980))

(assert (=> b!7042108 (= e!4233441 (= (content!13589 lt!2525224) lt!2525073))))

(assert (= (and d!2198603 res!2874967) b!7042108))

(declare-fun m!7753966 () Bool)

(assert (=> d!2198603 m!7753966))

(declare-fun m!7753968 () Bool)

(assert (=> d!2198603 m!7753968))

(declare-fun m!7753970 () Bool)

(assert (=> b!7042108 m!7753970))

(assert (=> b!7041924 d!2198603))

(declare-fun bs!1873395 () Bool)

(declare-fun d!2198605 () Bool)

(assert (= bs!1873395 (and d!2198605 b!7041924)))

(declare-fun lambda!417099 () Int)

(assert (=> bs!1873395 (not (= lambda!417099 lambda!417049))))

(assert (=> d!2198605 true))

(declare-fun order!28217 () Int)

(declare-fun dynLambda!27465 (Int Int) Int)

(assert (=> d!2198605 (< (dynLambda!27465 order!28217 lambda!417049) (dynLambda!27465 order!28217 lambda!417099))))

(declare-fun forall!16420 (List!68012 Int) Bool)

(assert (=> d!2198605 (= (exists!3441 lt!2525066 lambda!417049) (not (forall!16420 lt!2525066 lambda!417099)))))

(declare-fun bs!1873396 () Bool)

(assert (= bs!1873396 d!2198605))

(declare-fun m!7753972 () Bool)

(assert (=> bs!1873396 m!7753972))

(assert (=> b!7041924 d!2198605))

(declare-fun bs!1873397 () Bool)

(declare-fun d!2198607 () Bool)

(assert (= bs!1873397 (and d!2198607 b!7041924)))

(declare-fun lambda!417102 () Int)

(assert (=> bs!1873397 (= lambda!417102 lambda!417049)))

(declare-fun bs!1873398 () Bool)

(assert (= bs!1873398 (and d!2198607 d!2198605)))

(assert (=> bs!1873398 (not (= lambda!417102 lambda!417099))))

(assert (=> d!2198607 true))

(assert (=> d!2198607 (exists!3441 lt!2525066 lambda!417102)))

(declare-fun lt!2525227 () Unit!161668)

(declare-fun choose!53473 (List!68012 List!68011) Unit!161668)

(assert (=> d!2198607 (= lt!2525227 (choose!53473 lt!2525066 s!7408))))

(assert (=> d!2198607 (matchZipper!3034 (content!13589 lt!2525066) s!7408)))

(assert (=> d!2198607 (= (lemmaZipperMatchesExistsMatchingContext!433 lt!2525066 s!7408) lt!2525227)))

(declare-fun bs!1873399 () Bool)

(assert (= bs!1873399 d!2198607))

(declare-fun m!7753974 () Bool)

(assert (=> bs!1873399 m!7753974))

(declare-fun m!7753976 () Bool)

(assert (=> bs!1873399 m!7753976))

(declare-fun m!7753978 () Bool)

(assert (=> bs!1873399 m!7753978))

(assert (=> bs!1873399 m!7753978))

(declare-fun m!7753980 () Bool)

(assert (=> bs!1873399 m!7753980))

(assert (=> b!7041924 d!2198607))

(declare-fun d!2198609 () Bool)

(declare-fun c!1310846 () Bool)

(assert (=> d!2198609 (= c!1310846 (isEmpty!39617 (_2!37366 lt!2525067)))))

(declare-fun e!4233442 () Bool)

(assert (=> d!2198609 (= (matchZipper!3034 lt!2525056 (_2!37366 lt!2525067)) e!4233442)))

(declare-fun b!7042111 () Bool)

(assert (=> b!7042111 (= e!4233442 (nullableZipper!2600 lt!2525056))))

(declare-fun b!7042112 () Bool)

(assert (=> b!7042112 (= e!4233442 (matchZipper!3034 (derivationStepZipper!2950 lt!2525056 (head!14291 (_2!37366 lt!2525067))) (tail!13606 (_2!37366 lt!2525067))))))

(assert (= (and d!2198609 c!1310846) b!7042111))

(assert (= (and d!2198609 (not c!1310846)) b!7042112))

(declare-fun m!7753982 () Bool)

(assert (=> d!2198609 m!7753982))

(declare-fun m!7753984 () Bool)

(assert (=> b!7042111 m!7753984))

(declare-fun m!7753986 () Bool)

(assert (=> b!7042112 m!7753986))

(assert (=> b!7042112 m!7753986))

(declare-fun m!7753988 () Bool)

(assert (=> b!7042112 m!7753988))

(declare-fun m!7753990 () Bool)

(assert (=> b!7042112 m!7753990))

(assert (=> b!7042112 m!7753988))

(assert (=> b!7042112 m!7753990))

(declare-fun m!7753992 () Bool)

(assert (=> b!7042112 m!7753992))

(assert (=> b!7041914 d!2198609))

(declare-fun d!2198611 () Bool)

(declare-fun c!1310847 () Bool)

(assert (=> d!2198611 (= c!1310847 (isEmpty!39617 (t!381782 s!7408)))))

(declare-fun e!4233443 () Bool)

(assert (=> d!2198611 (= (matchZipper!3034 lt!2525045 (t!381782 s!7408)) e!4233443)))

(declare-fun b!7042113 () Bool)

(assert (=> b!7042113 (= e!4233443 (nullableZipper!2600 lt!2525045))))

(declare-fun b!7042114 () Bool)

(assert (=> b!7042114 (= e!4233443 (matchZipper!3034 (derivationStepZipper!2950 lt!2525045 (head!14291 (t!381782 s!7408))) (tail!13606 (t!381782 s!7408))))))

(assert (= (and d!2198611 c!1310847) b!7042113))

(assert (= (and d!2198611 (not c!1310847)) b!7042114))

(assert (=> d!2198611 m!7753856))

(declare-fun m!7753994 () Bool)

(assert (=> b!7042113 m!7753994))

(assert (=> b!7042114 m!7753860))

(assert (=> b!7042114 m!7753860))

(declare-fun m!7753996 () Bool)

(assert (=> b!7042114 m!7753996))

(assert (=> b!7042114 m!7753864))

(assert (=> b!7042114 m!7753996))

(assert (=> b!7042114 m!7753864))

(declare-fun m!7753998 () Bool)

(assert (=> b!7042114 m!7753998))

(assert (=> b!7041910 d!2198611))

(declare-fun d!2198613 () Bool)

(declare-fun c!1310848 () Bool)

(assert (=> d!2198613 (= c!1310848 (isEmpty!39617 (t!381782 s!7408)))))

(declare-fun e!4233444 () Bool)

(assert (=> d!2198613 (= (matchZipper!3034 lt!2525043 (t!381782 s!7408)) e!4233444)))

(declare-fun b!7042115 () Bool)

(assert (=> b!7042115 (= e!4233444 (nullableZipper!2600 lt!2525043))))

(declare-fun b!7042116 () Bool)

(assert (=> b!7042116 (= e!4233444 (matchZipper!3034 (derivationStepZipper!2950 lt!2525043 (head!14291 (t!381782 s!7408))) (tail!13606 (t!381782 s!7408))))))

(assert (= (and d!2198613 c!1310848) b!7042115))

(assert (= (and d!2198613 (not c!1310848)) b!7042116))

(assert (=> d!2198613 m!7753856))

(declare-fun m!7754000 () Bool)

(assert (=> b!7042115 m!7754000))

(assert (=> b!7042116 m!7753860))

(assert (=> b!7042116 m!7753860))

(declare-fun m!7754002 () Bool)

(assert (=> b!7042116 m!7754002))

(assert (=> b!7042116 m!7753864))

(assert (=> b!7042116 m!7754002))

(assert (=> b!7042116 m!7753864))

(declare-fun m!7754004 () Bool)

(assert (=> b!7042116 m!7754004))

(assert (=> b!7041910 d!2198613))

(declare-fun d!2198615 () Bool)

(declare-fun c!1310849 () Bool)

(assert (=> d!2198615 (= c!1310849 (isEmpty!39617 (t!381782 s!7408)))))

(declare-fun e!4233445 () Bool)

(assert (=> d!2198615 (= (matchZipper!3034 lt!2525047 (t!381782 s!7408)) e!4233445)))

(declare-fun b!7042117 () Bool)

(assert (=> b!7042117 (= e!4233445 (nullableZipper!2600 lt!2525047))))

(declare-fun b!7042118 () Bool)

(assert (=> b!7042118 (= e!4233445 (matchZipper!3034 (derivationStepZipper!2950 lt!2525047 (head!14291 (t!381782 s!7408))) (tail!13606 (t!381782 s!7408))))))

(assert (= (and d!2198615 c!1310849) b!7042117))

(assert (= (and d!2198615 (not c!1310849)) b!7042118))

(assert (=> d!2198615 m!7753856))

(declare-fun m!7754006 () Bool)

(assert (=> b!7042117 m!7754006))

(assert (=> b!7042118 m!7753860))

(assert (=> b!7042118 m!7753860))

(declare-fun m!7754008 () Bool)

(assert (=> b!7042118 m!7754008))

(assert (=> b!7042118 m!7753864))

(assert (=> b!7042118 m!7754008))

(assert (=> b!7042118 m!7753864))

(declare-fun m!7754010 () Bool)

(assert (=> b!7042118 m!7754010))

(assert (=> b!7041910 d!2198615))

(declare-fun d!2198617 () Bool)

(declare-fun e!4233448 () Bool)

(assert (=> d!2198617 (= (matchZipper!3034 (set.union lt!2525043 lt!2525034) (t!381782 s!7408)) e!4233448)))

(declare-fun res!2874970 () Bool)

(assert (=> d!2198617 (=> res!2874970 e!4233448)))

(assert (=> d!2198617 (= res!2874970 (matchZipper!3034 lt!2525043 (t!381782 s!7408)))))

(declare-fun lt!2525230 () Unit!161668)

(declare-fun choose!53474 ((Set Context!12980) (Set Context!12980) List!68011) Unit!161668)

(assert (=> d!2198617 (= lt!2525230 (choose!53474 lt!2525043 lt!2525034 (t!381782 s!7408)))))

(assert (=> d!2198617 (= (lemmaZipperConcatMatchesSameAsBothZippers!1567 lt!2525043 lt!2525034 (t!381782 s!7408)) lt!2525230)))

(declare-fun b!7042121 () Bool)

(assert (=> b!7042121 (= e!4233448 (matchZipper!3034 lt!2525034 (t!381782 s!7408)))))

(assert (= (and d!2198617 (not res!2874970)) b!7042121))

(declare-fun m!7754012 () Bool)

(assert (=> d!2198617 m!7754012))

(assert (=> d!2198617 m!7753682))

(declare-fun m!7754014 () Bool)

(assert (=> d!2198617 m!7754014))

(assert (=> b!7042121 m!7753704))

(assert (=> b!7041910 d!2198617))

(assert (=> b!7041910 d!2198575))

(assert (=> b!7041911 d!2198591))

(declare-fun d!2198619 () Bool)

(declare-fun choose!53475 ((Set Context!12980) Int) (Set Context!12980))

(assert (=> d!2198619 (= (flatMap!2441 lt!2525031 lambda!417052) (choose!53475 lt!2525031 lambda!417052))))

(declare-fun bs!1873400 () Bool)

(assert (= bs!1873400 d!2198619))

(declare-fun m!7754016 () Bool)

(assert (=> bs!1873400 m!7754016))

(assert (=> b!7041921 d!2198619))

(declare-fun b!7042122 () Bool)

(declare-fun e!4233451 () Bool)

(assert (=> b!7042122 (= e!4233451 (nullable!7205 (h!74334 (exprs!6990 lt!2525069))))))

(declare-fun bm!639615 () Bool)

(declare-fun call!639620 () (Set Context!12980))

(assert (=> bm!639615 (= call!639620 (derivationStepZipperDown!2158 (h!74334 (exprs!6990 lt!2525069)) (Context!12981 (t!381781 (exprs!6990 lt!2525069))) (h!74335 s!7408)))))

(declare-fun b!7042123 () Bool)

(declare-fun e!4233450 () (Set Context!12980))

(assert (=> b!7042123 (= e!4233450 (as set.empty (Set Context!12980)))))

(declare-fun d!2198621 () Bool)

(declare-fun c!1310850 () Bool)

(assert (=> d!2198621 (= c!1310850 e!4233451)))

(declare-fun res!2874971 () Bool)

(assert (=> d!2198621 (=> (not res!2874971) (not e!4233451))))

(assert (=> d!2198621 (= res!2874971 (is-Cons!67886 (exprs!6990 lt!2525069)))))

(declare-fun e!4233449 () (Set Context!12980))

(assert (=> d!2198621 (= (derivationStepZipperUp!2104 lt!2525069 (h!74335 s!7408)) e!4233449)))

(declare-fun b!7042124 () Bool)

(assert (=> b!7042124 (= e!4233450 call!639620)))

(declare-fun b!7042125 () Bool)

(assert (=> b!7042125 (= e!4233449 (set.union call!639620 (derivationStepZipperUp!2104 (Context!12981 (t!381781 (exprs!6990 lt!2525069))) (h!74335 s!7408))))))

(declare-fun b!7042126 () Bool)

(assert (=> b!7042126 (= e!4233449 e!4233450)))

(declare-fun c!1310851 () Bool)

(assert (=> b!7042126 (= c!1310851 (is-Cons!67886 (exprs!6990 lt!2525069)))))

(assert (= (and d!2198621 res!2874971) b!7042122))

(assert (= (and d!2198621 c!1310850) b!7042125))

(assert (= (and d!2198621 (not c!1310850)) b!7042126))

(assert (= (and b!7042126 c!1310851) b!7042124))

(assert (= (and b!7042126 (not c!1310851)) b!7042123))

(assert (= (or b!7042125 b!7042124) bm!639615))

(assert (=> b!7042122 m!7753670))

(declare-fun m!7754018 () Bool)

(assert (=> bm!639615 m!7754018))

(declare-fun m!7754020 () Bool)

(assert (=> b!7042125 m!7754020))

(assert (=> b!7041921 d!2198621))

(declare-fun d!2198623 () Bool)

(declare-fun dynLambda!27466 (Int Context!12980) (Set Context!12980))

(assert (=> d!2198623 (= (flatMap!2441 lt!2525031 lambda!417052) (dynLambda!27466 lambda!417052 lt!2525069))))

(declare-fun lt!2525233 () Unit!161668)

(declare-fun choose!53476 ((Set Context!12980) Context!12980 Int) Unit!161668)

(assert (=> d!2198623 (= lt!2525233 (choose!53476 lt!2525031 lt!2525069 lambda!417052))))

(assert (=> d!2198623 (= lt!2525031 (set.insert lt!2525069 (as set.empty (Set Context!12980))))))

(assert (=> d!2198623 (= (lemmaFlatMapOnSingletonSet!1955 lt!2525031 lt!2525069 lambda!417052) lt!2525233)))

(declare-fun b_lambda!267347 () Bool)

(assert (=> (not b_lambda!267347) (not d!2198623)))

(declare-fun bs!1873401 () Bool)

(assert (= bs!1873401 d!2198623))

(assert (=> bs!1873401 m!7753716))

(declare-fun m!7754022 () Bool)

(assert (=> bs!1873401 m!7754022))

(declare-fun m!7754024 () Bool)

(assert (=> bs!1873401 m!7754024))

(assert (=> bs!1873401 m!7753722))

(assert (=> b!7041921 d!2198623))

(declare-fun bs!1873402 () Bool)

(declare-fun d!2198625 () Bool)

(assert (= bs!1873402 (and d!2198625 b!7041908)))

(declare-fun lambda!417105 () Int)

(assert (=> bs!1873402 (= lambda!417105 lambda!417052)))

(assert (=> d!2198625 true))

(assert (=> d!2198625 (= (derivationStepZipper!2950 lt!2525031 (h!74335 s!7408)) (flatMap!2441 lt!2525031 lambda!417105))))

(declare-fun bs!1873403 () Bool)

(assert (= bs!1873403 d!2198625))

(declare-fun m!7754026 () Bool)

(assert (=> bs!1873403 m!7754026))

(assert (=> b!7041921 d!2198625))

(assert (=> b!7041908 d!2198591))

(declare-fun d!2198627 () Bool)

(assert (=> d!2198627 (= (flatMap!2441 lt!2525033 lambda!417052) (dynLambda!27466 lambda!417052 lt!2525050))))

(declare-fun lt!2525234 () Unit!161668)

(assert (=> d!2198627 (= lt!2525234 (choose!53476 lt!2525033 lt!2525050 lambda!417052))))

(assert (=> d!2198627 (= lt!2525033 (set.insert lt!2525050 (as set.empty (Set Context!12980))))))

(assert (=> d!2198627 (= (lemmaFlatMapOnSingletonSet!1955 lt!2525033 lt!2525050 lambda!417052) lt!2525234)))

(declare-fun b_lambda!267349 () Bool)

(assert (=> (not b_lambda!267349) (not d!2198627)))

(declare-fun bs!1873404 () Bool)

(assert (= bs!1873404 d!2198627))

(assert (=> bs!1873404 m!7753730))

(declare-fun m!7754028 () Bool)

(assert (=> bs!1873404 m!7754028))

(declare-fun m!7754030 () Bool)

(assert (=> bs!1873404 m!7754030))

(assert (=> bs!1873404 m!7753666))

(assert (=> b!7041908 d!2198627))

(declare-fun bs!1873405 () Bool)

(declare-fun d!2198629 () Bool)

(assert (= bs!1873405 (and d!2198629 b!7041908)))

(declare-fun lambda!417106 () Int)

(assert (=> bs!1873405 (= lambda!417106 lambda!417052)))

(declare-fun bs!1873406 () Bool)

(assert (= bs!1873406 (and d!2198629 d!2198625)))

(assert (=> bs!1873406 (= lambda!417106 lambda!417105)))

(assert (=> d!2198629 true))

(assert (=> d!2198629 (= (derivationStepZipper!2950 lt!2525033 (h!74335 s!7408)) (flatMap!2441 lt!2525033 lambda!417106))))

(declare-fun bs!1873407 () Bool)

(assert (= bs!1873407 d!2198629))

(declare-fun m!7754032 () Bool)

(assert (=> bs!1873407 m!7754032))

(assert (=> b!7041908 d!2198629))

(declare-fun b!7042129 () Bool)

(declare-fun e!4233454 () Bool)

(assert (=> b!7042129 (= e!4233454 (nullable!7205 (h!74334 (exprs!6990 lt!2525050))))))

(declare-fun bm!639616 () Bool)

(declare-fun call!639621 () (Set Context!12980))

(assert (=> bm!639616 (= call!639621 (derivationStepZipperDown!2158 (h!74334 (exprs!6990 lt!2525050)) (Context!12981 (t!381781 (exprs!6990 lt!2525050))) (h!74335 s!7408)))))

(declare-fun b!7042130 () Bool)

(declare-fun e!4233453 () (Set Context!12980))

(assert (=> b!7042130 (= e!4233453 (as set.empty (Set Context!12980)))))

(declare-fun d!2198631 () Bool)

(declare-fun c!1310854 () Bool)

(assert (=> d!2198631 (= c!1310854 e!4233454)))

(declare-fun res!2874972 () Bool)

(assert (=> d!2198631 (=> (not res!2874972) (not e!4233454))))

(assert (=> d!2198631 (= res!2874972 (is-Cons!67886 (exprs!6990 lt!2525050)))))

(declare-fun e!4233452 () (Set Context!12980))

(assert (=> d!2198631 (= (derivationStepZipperUp!2104 lt!2525050 (h!74335 s!7408)) e!4233452)))

(declare-fun b!7042131 () Bool)

(assert (=> b!7042131 (= e!4233453 call!639621)))

(declare-fun b!7042132 () Bool)

(assert (=> b!7042132 (= e!4233452 (set.union call!639621 (derivationStepZipperUp!2104 (Context!12981 (t!381781 (exprs!6990 lt!2525050))) (h!74335 s!7408))))))

(declare-fun b!7042133 () Bool)

(assert (=> b!7042133 (= e!4233452 e!4233453)))

(declare-fun c!1310855 () Bool)

(assert (=> b!7042133 (= c!1310855 (is-Cons!67886 (exprs!6990 lt!2525050)))))

(assert (= (and d!2198631 res!2874972) b!7042129))

(assert (= (and d!2198631 c!1310854) b!7042132))

(assert (= (and d!2198631 (not c!1310854)) b!7042133))

(assert (= (and b!7042133 c!1310855) b!7042131))

(assert (= (and b!7042133 (not c!1310855)) b!7042130))

(assert (= (or b!7042132 b!7042131) bm!639616))

(declare-fun m!7754034 () Bool)

(assert (=> b!7042129 m!7754034))

(declare-fun m!7754036 () Bool)

(assert (=> bm!639616 m!7754036))

(declare-fun m!7754038 () Bool)

(assert (=> b!7042132 m!7754038))

(assert (=> b!7041908 d!2198631))

(declare-fun d!2198633 () Bool)

(assert (=> d!2198633 (= (flatMap!2441 lt!2525033 lambda!417052) (choose!53475 lt!2525033 lambda!417052))))

(declare-fun bs!1873408 () Bool)

(assert (= bs!1873408 d!2198633))

(declare-fun m!7754040 () Bool)

(assert (=> bs!1873408 m!7754040))

(assert (=> b!7041908 d!2198633))

(declare-fun bs!1873409 () Bool)

(declare-fun d!2198635 () Bool)

(assert (= bs!1873409 (and d!2198635 b!7041913)))

(declare-fun lambda!417111 () Int)

(assert (=> bs!1873409 (= lambda!417111 lambda!417050)))

(assert (=> d!2198635 true))

(assert (=> d!2198635 (= (appendTo!615 lt!2525049 ct2!306) (map!15804 lt!2525049 lambda!417111))))

(declare-fun bs!1873410 () Bool)

(assert (= bs!1873410 d!2198635))

(declare-fun m!7754042 () Bool)

(assert (=> bs!1873410 m!7754042))

(assert (=> b!7041918 d!2198635))

(declare-fun d!2198637 () Bool)

(assert (=> d!2198637 (isDefined!13596 (findConcatSeparationZippers!411 lt!2525049 (set.insert ct2!306 (as set.empty (Set Context!12980))) Nil!67887 (t!381782 s!7408) (t!381782 s!7408)))))

(declare-fun lt!2525239 () Unit!161668)

(declare-fun choose!53477 ((Set Context!12980) Context!12980 List!68011) Unit!161668)

(assert (=> d!2198637 (= lt!2525239 (choose!53477 lt!2525049 ct2!306 (t!381782 s!7408)))))

(assert (=> d!2198637 (matchZipper!3034 (appendTo!615 lt!2525049 ct2!306) (t!381782 s!7408))))

(assert (=> d!2198637 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!399 lt!2525049 ct2!306 (t!381782 s!7408)) lt!2525239)))

(declare-fun bs!1873411 () Bool)

(assert (= bs!1873411 d!2198637))

(declare-fun m!7754044 () Bool)

(assert (=> bs!1873411 m!7754044))

(assert (=> bs!1873411 m!7753696))

(declare-fun m!7754046 () Bool)

(assert (=> bs!1873411 m!7754046))

(assert (=> bs!1873411 m!7753696))

(declare-fun m!7754048 () Bool)

(assert (=> bs!1873411 m!7754048))

(declare-fun m!7754050 () Bool)

(assert (=> bs!1873411 m!7754050))

(assert (=> bs!1873411 m!7753698))

(assert (=> bs!1873411 m!7754048))

(assert (=> bs!1873411 m!7753698))

(assert (=> b!7041918 d!2198637))

(declare-fun d!2198639 () Bool)

(declare-fun isEmpty!39618 (Option!16895) Bool)

(assert (=> d!2198639 (= (isDefined!13596 lt!2525036) (not (isEmpty!39618 lt!2525036)))))

(declare-fun bs!1873412 () Bool)

(assert (= bs!1873412 d!2198639))

(declare-fun m!7754052 () Bool)

(assert (=> bs!1873412 m!7754052))

(assert (=> b!7041918 d!2198639))

(declare-fun bs!1873413 () Bool)

(declare-fun d!2198641 () Bool)

(assert (= bs!1873413 (and d!2198641 b!7041913)))

(declare-fun lambda!417114 () Int)

(assert (=> bs!1873413 (= lambda!417114 lambda!417051)))

(assert (=> d!2198641 (= (derivationStepZipperDown!2158 (h!74334 (exprs!6990 lt!2525069)) (Context!12981 (++!15563 (exprs!6990 lt!2525053) (exprs!6990 ct2!306))) (h!74335 s!7408)) (appendTo!615 (derivationStepZipperDown!2158 (h!74334 (exprs!6990 lt!2525069)) lt!2525053 (h!74335 s!7408)) ct2!306))))

(declare-fun lt!2525245 () Unit!161668)

(assert (=> d!2198641 (= lt!2525245 (lemmaConcatPreservesForall!815 (exprs!6990 lt!2525053) (exprs!6990 ct2!306) lambda!417114))))

(declare-fun lt!2525244 () Unit!161668)

(declare-fun choose!53478 (Context!12980 Regex!17494 C!35258 Context!12980) Unit!161668)

(assert (=> d!2198641 (= lt!2525244 (choose!53478 lt!2525053 (h!74334 (exprs!6990 lt!2525069)) (h!74335 s!7408) ct2!306))))

(declare-fun validRegex!8939 (Regex!17494) Bool)

(assert (=> d!2198641 (validRegex!8939 (h!74334 (exprs!6990 lt!2525069)))))

(assert (=> d!2198641 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!73 lt!2525053 (h!74334 (exprs!6990 lt!2525069)) (h!74335 s!7408) ct2!306) lt!2525244)))

(declare-fun bs!1873414 () Bool)

(assert (= bs!1873414 d!2198641))

(declare-fun m!7754054 () Bool)

(assert (=> bs!1873414 m!7754054))

(declare-fun m!7754056 () Bool)

(assert (=> bs!1873414 m!7754056))

(declare-fun m!7754058 () Bool)

(assert (=> bs!1873414 m!7754058))

(assert (=> bs!1873414 m!7753700))

(declare-fun m!7754060 () Bool)

(assert (=> bs!1873414 m!7754060))

(declare-fun m!7754062 () Bool)

(assert (=> bs!1873414 m!7754062))

(assert (=> bs!1873414 m!7753700))

(declare-fun m!7754064 () Bool)

(assert (=> bs!1873414 m!7754064))

(assert (=> b!7041918 d!2198641))

(assert (=> b!7041918 d!2198575))

(declare-fun d!2198643 () Bool)

(assert (=> d!2198643 (= (get!23793 lt!2525036) (v!53184 lt!2525036))))

(assert (=> b!7041918 d!2198643))

(declare-fun d!2198645 () Bool)

(declare-fun c!1310858 () Bool)

(assert (=> d!2198645 (= c!1310858 (isEmpty!39617 (_1!37366 lt!2525067)))))

(declare-fun e!4233455 () Bool)

(assert (=> d!2198645 (= (matchZipper!3034 lt!2525049 (_1!37366 lt!2525067)) e!4233455)))

(declare-fun b!7042134 () Bool)

(assert (=> b!7042134 (= e!4233455 (nullableZipper!2600 lt!2525049))))

(declare-fun b!7042135 () Bool)

(assert (=> b!7042135 (= e!4233455 (matchZipper!3034 (derivationStepZipper!2950 lt!2525049 (head!14291 (_1!37366 lt!2525067))) (tail!13606 (_1!37366 lt!2525067))))))

(assert (= (and d!2198645 c!1310858) b!7042134))

(assert (= (and d!2198645 (not c!1310858)) b!7042135))

(declare-fun m!7754066 () Bool)

(assert (=> d!2198645 m!7754066))

(declare-fun m!7754068 () Bool)

(assert (=> b!7042134 m!7754068))

(declare-fun m!7754070 () Bool)

(assert (=> b!7042135 m!7754070))

(assert (=> b!7042135 m!7754070))

(declare-fun m!7754072 () Bool)

(assert (=> b!7042135 m!7754072))

(declare-fun m!7754074 () Bool)

(assert (=> b!7042135 m!7754074))

(assert (=> b!7042135 m!7754072))

(assert (=> b!7042135 m!7754074))

(declare-fun m!7754076 () Bool)

(assert (=> b!7042135 m!7754076))

(assert (=> b!7041918 d!2198645))

(declare-fun b!7042136 () Bool)

(declare-fun e!4233456 () (Set Context!12980))

(declare-fun e!4233457 () (Set Context!12980))

(assert (=> b!7042136 (= e!4233456 e!4233457)))

(declare-fun c!1310859 () Bool)

(assert (=> b!7042136 (= c!1310859 (is-Union!17494 (h!74334 (exprs!6990 lt!2525069))))))

(declare-fun bm!639617 () Bool)

(declare-fun call!639626 () List!68010)

(declare-fun call!639627 () List!68010)

(assert (=> bm!639617 (= call!639626 call!639627)))

(declare-fun bm!639618 () Bool)

(declare-fun call!639625 () (Set Context!12980))

(declare-fun call!639624 () (Set Context!12980))

(assert (=> bm!639618 (= call!639625 call!639624)))

(declare-fun b!7042137 () Bool)

(declare-fun call!639622 () (Set Context!12980))

(declare-fun call!639623 () (Set Context!12980))

(assert (=> b!7042137 (= e!4233457 (set.union call!639622 call!639623))))

(declare-fun b!7042138 () Bool)

(declare-fun c!1310861 () Bool)

(assert (=> b!7042138 (= c!1310861 (is-Star!17494 (h!74334 (exprs!6990 lt!2525069))))))

(declare-fun e!4233458 () (Set Context!12980))

(declare-fun e!4233461 () (Set Context!12980))

(assert (=> b!7042138 (= e!4233458 e!4233461)))

(declare-fun b!7042139 () Bool)

(assert (=> b!7042139 (= e!4233461 call!639625)))

(declare-fun b!7042140 () Bool)

(assert (=> b!7042140 (= e!4233461 (as set.empty (Set Context!12980)))))

(declare-fun b!7042141 () Bool)

(assert (=> b!7042141 (= e!4233458 call!639625)))

(declare-fun b!7042142 () Bool)

(declare-fun e!4233459 () Bool)

(assert (=> b!7042142 (= e!4233459 (nullable!7205 (regOne!35500 (h!74334 (exprs!6990 lt!2525069)))))))

(declare-fun b!7042143 () Bool)

(declare-fun e!4233460 () (Set Context!12980))

(assert (=> b!7042143 (= e!4233460 (set.union call!639622 call!639624))))

(declare-fun bm!639619 () Bool)

(declare-fun c!1310860 () Bool)

(declare-fun c!1310863 () Bool)

(assert (=> bm!639619 (= call!639627 ($colon$colon!2593 (exprs!6990 lt!2525053) (ite (or c!1310863 c!1310860) (regTwo!35500 (h!74334 (exprs!6990 lt!2525069))) (h!74334 (exprs!6990 lt!2525069)))))))

(declare-fun bm!639620 () Bool)

(assert (=> bm!639620 (= call!639624 call!639623)))

(declare-fun d!2198647 () Bool)

(declare-fun c!1310862 () Bool)

(assert (=> d!2198647 (= c!1310862 (and (is-ElementMatch!17494 (h!74334 (exprs!6990 lt!2525069))) (= (c!1310798 (h!74334 (exprs!6990 lt!2525069))) (h!74335 s!7408))))))

(assert (=> d!2198647 (= (derivationStepZipperDown!2158 (h!74334 (exprs!6990 lt!2525069)) lt!2525053 (h!74335 s!7408)) e!4233456)))

(declare-fun bm!639621 () Bool)

(assert (=> bm!639621 (= call!639622 (derivationStepZipperDown!2158 (ite c!1310859 (regOne!35501 (h!74334 (exprs!6990 lt!2525069))) (regOne!35500 (h!74334 (exprs!6990 lt!2525069)))) (ite c!1310859 lt!2525053 (Context!12981 call!639627)) (h!74335 s!7408)))))

(declare-fun b!7042144 () Bool)

(assert (=> b!7042144 (= e!4233460 e!4233458)))

(assert (=> b!7042144 (= c!1310860 (is-Concat!26339 (h!74334 (exprs!6990 lt!2525069))))))

(declare-fun b!7042145 () Bool)

(assert (=> b!7042145 (= e!4233456 (set.insert lt!2525053 (as set.empty (Set Context!12980))))))

(declare-fun bm!639622 () Bool)

(assert (=> bm!639622 (= call!639623 (derivationStepZipperDown!2158 (ite c!1310859 (regTwo!35501 (h!74334 (exprs!6990 lt!2525069))) (ite c!1310863 (regTwo!35500 (h!74334 (exprs!6990 lt!2525069))) (ite c!1310860 (regOne!35500 (h!74334 (exprs!6990 lt!2525069))) (reg!17823 (h!74334 (exprs!6990 lt!2525069)))))) (ite (or c!1310859 c!1310863) lt!2525053 (Context!12981 call!639626)) (h!74335 s!7408)))))

(declare-fun b!7042146 () Bool)

(assert (=> b!7042146 (= c!1310863 e!4233459)))

(declare-fun res!2874974 () Bool)

(assert (=> b!7042146 (=> (not res!2874974) (not e!4233459))))

(assert (=> b!7042146 (= res!2874974 (is-Concat!26339 (h!74334 (exprs!6990 lt!2525069))))))

(assert (=> b!7042146 (= e!4233457 e!4233460)))

(assert (= (and d!2198647 c!1310862) b!7042145))

(assert (= (and d!2198647 (not c!1310862)) b!7042136))

(assert (= (and b!7042136 c!1310859) b!7042137))

(assert (= (and b!7042136 (not c!1310859)) b!7042146))

(assert (= (and b!7042146 res!2874974) b!7042142))

(assert (= (and b!7042146 c!1310863) b!7042143))

(assert (= (and b!7042146 (not c!1310863)) b!7042144))

(assert (= (and b!7042144 c!1310860) b!7042141))

(assert (= (and b!7042144 (not c!1310860)) b!7042138))

(assert (= (and b!7042138 c!1310861) b!7042139))

(assert (= (and b!7042138 (not c!1310861)) b!7042140))

(assert (= (or b!7042141 b!7042139) bm!639617))

(assert (= (or b!7042141 b!7042139) bm!639618))

(assert (= (or b!7042143 bm!639618) bm!639620))

(assert (= (or b!7042143 bm!639617) bm!639619))

(assert (= (or b!7042137 b!7042143) bm!639621))

(assert (= (or b!7042137 bm!639620) bm!639622))

(declare-fun m!7754078 () Bool)

(assert (=> bm!639619 m!7754078))

(declare-fun m!7754080 () Bool)

(assert (=> b!7042145 m!7754080))

(assert (=> b!7042142 m!7753872))

(declare-fun m!7754082 () Bool)

(assert (=> bm!639622 m!7754082))

(declare-fun m!7754084 () Bool)

(assert (=> bm!639621 m!7754084))

(assert (=> b!7041918 d!2198647))

(declare-fun b!7042165 () Bool)

(declare-fun e!4233473 () Bool)

(assert (=> b!7042165 (= e!4233473 (matchZipper!3034 lt!2525056 (t!381782 s!7408)))))

(declare-fun b!7042166 () Bool)

(declare-fun res!2874986 () Bool)

(declare-fun e!4233475 () Bool)

(assert (=> b!7042166 (=> (not res!2874986) (not e!4233475))))

(declare-fun lt!2525254 () Option!16895)

(assert (=> b!7042166 (= res!2874986 (matchZipper!3034 lt!2525049 (_1!37366 (get!23793 lt!2525254))))))

(declare-fun b!7042167 () Bool)

(declare-fun e!4233472 () Bool)

(assert (=> b!7042167 (= e!4233472 (not (isDefined!13596 lt!2525254)))))

(declare-fun b!7042168 () Bool)

(declare-fun e!4233476 () Option!16895)

(assert (=> b!7042168 (= e!4233476 (Some!16894 (tuple2!68127 Nil!67887 (t!381782 s!7408))))))

(declare-fun d!2198649 () Bool)

(assert (=> d!2198649 e!4233472))

(declare-fun res!2874985 () Bool)

(assert (=> d!2198649 (=> res!2874985 e!4233472)))

(assert (=> d!2198649 (= res!2874985 e!4233475)))

(declare-fun res!2874988 () Bool)

(assert (=> d!2198649 (=> (not res!2874988) (not e!4233475))))

(assert (=> d!2198649 (= res!2874988 (isDefined!13596 lt!2525254))))

(assert (=> d!2198649 (= lt!2525254 e!4233476)))

(declare-fun c!1310869 () Bool)

(assert (=> d!2198649 (= c!1310869 e!4233473)))

(declare-fun res!2874989 () Bool)

(assert (=> d!2198649 (=> (not res!2874989) (not e!4233473))))

(assert (=> d!2198649 (= res!2874989 (matchZipper!3034 lt!2525049 Nil!67887))))

(assert (=> d!2198649 (= (++!15564 Nil!67887 (t!381782 s!7408)) (t!381782 s!7408))))

(assert (=> d!2198649 (= (findConcatSeparationZippers!411 lt!2525049 lt!2525056 Nil!67887 (t!381782 s!7408) (t!381782 s!7408)) lt!2525254)))

(declare-fun b!7042169 () Bool)

(declare-fun res!2874987 () Bool)

(assert (=> b!7042169 (=> (not res!2874987) (not e!4233475))))

(assert (=> b!7042169 (= res!2874987 (matchZipper!3034 lt!2525056 (_2!37366 (get!23793 lt!2525254))))))

(declare-fun b!7042170 () Bool)

(declare-fun e!4233474 () Option!16895)

(assert (=> b!7042170 (= e!4233474 None!16894)))

(declare-fun b!7042171 () Bool)

(declare-fun lt!2525253 () Unit!161668)

(declare-fun lt!2525252 () Unit!161668)

(assert (=> b!7042171 (= lt!2525253 lt!2525252)))

(assert (=> b!7042171 (= (++!15564 (++!15564 Nil!67887 (Cons!67887 (h!74335 (t!381782 s!7408)) Nil!67887)) (t!381782 (t!381782 s!7408))) (t!381782 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2941 (List!68011 C!35258 List!68011 List!68011) Unit!161668)

(assert (=> b!7042171 (= lt!2525252 (lemmaMoveElementToOtherListKeepsConcatEq!2941 Nil!67887 (h!74335 (t!381782 s!7408)) (t!381782 (t!381782 s!7408)) (t!381782 s!7408)))))

(assert (=> b!7042171 (= e!4233474 (findConcatSeparationZippers!411 lt!2525049 lt!2525056 (++!15564 Nil!67887 (Cons!67887 (h!74335 (t!381782 s!7408)) Nil!67887)) (t!381782 (t!381782 s!7408)) (t!381782 s!7408)))))

(declare-fun b!7042172 () Bool)

(assert (=> b!7042172 (= e!4233476 e!4233474)))

(declare-fun c!1310868 () Bool)

(assert (=> b!7042172 (= c!1310868 (is-Nil!67887 (t!381782 s!7408)))))

(declare-fun b!7042173 () Bool)

(assert (=> b!7042173 (= e!4233475 (= (++!15564 (_1!37366 (get!23793 lt!2525254)) (_2!37366 (get!23793 lt!2525254))) (t!381782 s!7408)))))

(assert (= (and d!2198649 res!2874989) b!7042165))

(assert (= (and d!2198649 c!1310869) b!7042168))

(assert (= (and d!2198649 (not c!1310869)) b!7042172))

(assert (= (and b!7042172 c!1310868) b!7042170))

(assert (= (and b!7042172 (not c!1310868)) b!7042171))

(assert (= (and d!2198649 res!2874988) b!7042166))

(assert (= (and b!7042166 res!2874986) b!7042169))

(assert (= (and b!7042169 res!2874987) b!7042173))

(assert (= (and d!2198649 (not res!2874985)) b!7042167))

(declare-fun m!7754086 () Bool)

(assert (=> b!7042165 m!7754086))

(declare-fun m!7754088 () Bool)

(assert (=> d!2198649 m!7754088))

(declare-fun m!7754090 () Bool)

(assert (=> d!2198649 m!7754090))

(declare-fun m!7754092 () Bool)

(assert (=> d!2198649 m!7754092))

(declare-fun m!7754094 () Bool)

(assert (=> b!7042171 m!7754094))

(assert (=> b!7042171 m!7754094))

(declare-fun m!7754096 () Bool)

(assert (=> b!7042171 m!7754096))

(declare-fun m!7754098 () Bool)

(assert (=> b!7042171 m!7754098))

(assert (=> b!7042171 m!7754094))

(declare-fun m!7754100 () Bool)

(assert (=> b!7042171 m!7754100))

(declare-fun m!7754102 () Bool)

(assert (=> b!7042166 m!7754102))

(declare-fun m!7754104 () Bool)

(assert (=> b!7042166 m!7754104))

(assert (=> b!7042167 m!7754088))

(assert (=> b!7042169 m!7754102))

(declare-fun m!7754106 () Bool)

(assert (=> b!7042169 m!7754106))

(assert (=> b!7042173 m!7754102))

(declare-fun m!7754108 () Bool)

(assert (=> b!7042173 m!7754108))

(assert (=> b!7041918 d!2198649))

(declare-fun bs!1873415 () Bool)

(declare-fun d!2198651 () Bool)

(assert (= bs!1873415 (and d!2198651 b!7041913)))

(declare-fun lambda!417117 () Int)

(assert (=> bs!1873415 (= lambda!417117 lambda!417051)))

(declare-fun bs!1873416 () Bool)

(assert (= bs!1873416 (and d!2198651 d!2198641)))

(assert (=> bs!1873416 (= lambda!417117 lambda!417114)))

(assert (=> d!2198651 (= (inv!86595 setElem!49369) (forall!16419 (exprs!6990 setElem!49369) lambda!417117))))

(declare-fun bs!1873417 () Bool)

(assert (= bs!1873417 d!2198651))

(declare-fun m!7754110 () Bool)

(assert (=> bs!1873417 m!7754110))

(assert (=> setNonEmpty!49369 d!2198651))

(declare-fun d!2198653 () Bool)

(declare-fun c!1310870 () Bool)

(assert (=> d!2198653 (= c!1310870 (isEmpty!39617 s!7408))))

(declare-fun e!4233477 () Bool)

(assert (=> d!2198653 (= (matchZipper!3034 lt!2525073 s!7408) e!4233477)))

(declare-fun b!7042174 () Bool)

(assert (=> b!7042174 (= e!4233477 (nullableZipper!2600 lt!2525073))))

(declare-fun b!7042175 () Bool)

(assert (=> b!7042175 (= e!4233477 (matchZipper!3034 (derivationStepZipper!2950 lt!2525073 (head!14291 s!7408)) (tail!13606 s!7408)))))

(assert (= (and d!2198653 c!1310870) b!7042174))

(assert (= (and d!2198653 (not c!1310870)) b!7042175))

(assert (=> d!2198653 m!7753946))

(declare-fun m!7754112 () Bool)

(assert (=> b!7042174 m!7754112))

(assert (=> b!7042175 m!7753950))

(assert (=> b!7042175 m!7753950))

(declare-fun m!7754114 () Bool)

(assert (=> b!7042175 m!7754114))

(assert (=> b!7042175 m!7753954))

(assert (=> b!7042175 m!7754114))

(assert (=> b!7042175 m!7753954))

(declare-fun m!7754116 () Bool)

(assert (=> b!7042175 m!7754116))

(assert (=> start!681340 d!2198653))

(declare-fun bs!1873418 () Bool)

(declare-fun d!2198655 () Bool)

(assert (= bs!1873418 (and d!2198655 b!7041913)))

(declare-fun lambda!417118 () Int)

(assert (=> bs!1873418 (= lambda!417118 lambda!417050)))

(declare-fun bs!1873419 () Bool)

(assert (= bs!1873419 (and d!2198655 d!2198635)))

(assert (=> bs!1873419 (= lambda!417118 lambda!417111)))

(assert (=> d!2198655 true))

(assert (=> d!2198655 (= (appendTo!615 z1!570 ct2!306) (map!15804 z1!570 lambda!417118))))

(declare-fun bs!1873420 () Bool)

(assert (= bs!1873420 d!2198655))

(declare-fun m!7754118 () Bool)

(assert (=> bs!1873420 m!7754118))

(assert (=> start!681340 d!2198655))

(declare-fun bs!1873421 () Bool)

(declare-fun d!2198657 () Bool)

(assert (= bs!1873421 (and d!2198657 b!7041913)))

(declare-fun lambda!417119 () Int)

(assert (=> bs!1873421 (= lambda!417119 lambda!417051)))

(declare-fun bs!1873422 () Bool)

(assert (= bs!1873422 (and d!2198657 d!2198641)))

(assert (=> bs!1873422 (= lambda!417119 lambda!417114)))

(declare-fun bs!1873423 () Bool)

(assert (= bs!1873423 (and d!2198657 d!2198651)))

(assert (=> bs!1873423 (= lambda!417119 lambda!417117)))

(assert (=> d!2198657 (= (inv!86595 ct2!306) (forall!16419 (exprs!6990 ct2!306) lambda!417119))))

(declare-fun bs!1873424 () Bool)

(assert (= bs!1873424 d!2198657))

(declare-fun m!7754120 () Bool)

(assert (=> bs!1873424 m!7754120))

(assert (=> start!681340 d!2198657))

(declare-fun d!2198659 () Bool)

(assert (=> d!2198659 (= (isEmpty!39615 (exprs!6990 lt!2525069)) (is-Nil!67886 (exprs!6990 lt!2525069)))))

(assert (=> b!7041909 d!2198659))

(declare-fun b!7042180 () Bool)

(declare-fun e!4233480 () Bool)

(declare-fun tp!1937522 () Bool)

(declare-fun tp!1937523 () Bool)

(assert (=> b!7042180 (= e!4233480 (and tp!1937522 tp!1937523))))

(assert (=> b!7041919 (= tp!1937502 e!4233480)))

(assert (= (and b!7041919 (is-Cons!67886 (exprs!6990 setElem!49369))) b!7042180))

(declare-fun b!7042185 () Bool)

(declare-fun e!4233483 () Bool)

(declare-fun tp!1937526 () Bool)

(assert (=> b!7042185 (= e!4233483 (and tp_is_empty!44213 tp!1937526))))

(assert (=> b!7041902 (= tp!1937503 e!4233483)))

(assert (= (and b!7041902 (is-Cons!67887 (t!381782 s!7408))) b!7042185))

(declare-fun condSetEmpty!49375 () Bool)

(assert (=> setNonEmpty!49369 (= condSetEmpty!49375 (= setRest!49369 (as set.empty (Set Context!12980))))))

(declare-fun setRes!49375 () Bool)

(assert (=> setNonEmpty!49369 (= tp!1937505 setRes!49375)))

(declare-fun setIsEmpty!49375 () Bool)

(assert (=> setIsEmpty!49375 setRes!49375))

(declare-fun e!4233486 () Bool)

(declare-fun tp!1937531 () Bool)

(declare-fun setNonEmpty!49375 () Bool)

(declare-fun setElem!49375 () Context!12980)

(assert (=> setNonEmpty!49375 (= setRes!49375 (and tp!1937531 (inv!86595 setElem!49375) e!4233486))))

(declare-fun setRest!49375 () (Set Context!12980))

(assert (=> setNonEmpty!49375 (= setRest!49369 (set.union (set.insert setElem!49375 (as set.empty (Set Context!12980))) setRest!49375))))

(declare-fun b!7042190 () Bool)

(declare-fun tp!1937532 () Bool)

(assert (=> b!7042190 (= e!4233486 tp!1937532)))

(assert (= (and setNonEmpty!49369 condSetEmpty!49375) setIsEmpty!49375))

(assert (= (and setNonEmpty!49369 (not condSetEmpty!49375)) setNonEmpty!49375))

(assert (= setNonEmpty!49375 b!7042190))

(declare-fun m!7754122 () Bool)

(assert (=> setNonEmpty!49375 m!7754122))

(declare-fun b!7042191 () Bool)

(declare-fun e!4233487 () Bool)

(declare-fun tp!1937533 () Bool)

(declare-fun tp!1937534 () Bool)

(assert (=> b!7042191 (= e!4233487 (and tp!1937533 tp!1937534))))

(assert (=> b!7041904 (= tp!1937504 e!4233487)))

(assert (= (and b!7041904 (is-Cons!67886 (exprs!6990 ct2!306))) b!7042191))

(declare-fun b_lambda!267351 () Bool)

(assert (= b_lambda!267347 (or b!7041908 b_lambda!267351)))

(declare-fun bs!1873425 () Bool)

(declare-fun d!2198661 () Bool)

(assert (= bs!1873425 (and d!2198661 b!7041908)))

(assert (=> bs!1873425 (= (dynLambda!27466 lambda!417052 lt!2525069) (derivationStepZipperUp!2104 lt!2525069 (h!74335 s!7408)))))

(assert (=> bs!1873425 m!7753720))

(assert (=> d!2198623 d!2198661))

(declare-fun b_lambda!267353 () Bool)

(assert (= b_lambda!267345 (or b!7041924 b_lambda!267353)))

(declare-fun bs!1873426 () Bool)

(declare-fun d!2198663 () Bool)

(assert (= bs!1873426 (and d!2198663 b!7041924)))

(assert (=> bs!1873426 (= (dynLambda!27464 lambda!417049 lt!2525221) (matchZipper!3034 (set.insert lt!2525221 (as set.empty (Set Context!12980))) s!7408))))

(declare-fun m!7754124 () Bool)

(assert (=> bs!1873426 m!7754124))

(assert (=> bs!1873426 m!7754124))

(declare-fun m!7754126 () Bool)

(assert (=> bs!1873426 m!7754126))

(assert (=> d!2198601 d!2198663))

(declare-fun b_lambda!267355 () Bool)

(assert (= b_lambda!267349 (or b!7041908 b_lambda!267355)))

(declare-fun bs!1873427 () Bool)

(declare-fun d!2198665 () Bool)

(assert (= bs!1873427 (and d!2198665 b!7041908)))

(assert (=> bs!1873427 (= (dynLambda!27466 lambda!417052 lt!2525050) (derivationStepZipperUp!2104 lt!2525050 (h!74335 s!7408)))))

(assert (=> bs!1873427 m!7753726))

(assert (=> d!2198627 d!2198665))

(declare-fun b_lambda!267357 () Bool)

(assert (= b_lambda!267343 (or b!7041913 b_lambda!267357)))

(declare-fun bs!1873428 () Bool)

(declare-fun d!2198667 () Bool)

(assert (= bs!1873428 (and d!2198667 b!7041913)))

(declare-fun lt!2525255 () Unit!161668)

(assert (=> bs!1873428 (= lt!2525255 (lemmaConcatPreservesForall!815 (exprs!6990 lt!2525218) (exprs!6990 ct2!306) lambda!417051))))

(assert (=> bs!1873428 (= (dynLambda!27463 lambda!417050 lt!2525218) (Context!12981 (++!15563 (exprs!6990 lt!2525218) (exprs!6990 ct2!306))))))

(declare-fun m!7754128 () Bool)

(assert (=> bs!1873428 m!7754128))

(declare-fun m!7754130 () Bool)

(assert (=> bs!1873428 m!7754130))

(assert (=> d!2198593 d!2198667))

(push 1)

(assert (not d!2198605))

(assert (not b!7042125))

(assert (not d!2198583))

(assert (not b!7042134))

(assert (not bm!639614))

(assert (not b!7042074))

(assert (not b!7042190))

(assert (not b!7042085))

(assert (not d!2198639))

(assert (not bs!1873428))

(assert (not b!7042185))

(assert (not b!7042115))

(assert (not b_lambda!267353))

(assert (not d!2198595))

(assert (not b!7042169))

(assert (not bm!639613))

(assert (not d!2198575))

(assert (not d!2198623))

(assert (not b_lambda!267357))

(assert (not b!7042174))

(assert (not b!7042132))

(assert (not b!7042117))

(assert (not b!7042044))

(assert (not d!2198615))

(assert (not b!7042088))

(assert (not d!2198585))

(assert (not d!2198577))

(assert (not b!7042091))

(assert (not d!2198651))

(assert (not bs!1873425))

(assert (not b!7042173))

(assert (not b!7042116))

(assert (not b_lambda!267355))

(assert (not b!7042122))

(assert (not d!2198601))

(assert (not b!7042166))

(assert (not bs!1873426))

(assert (not b!7042112))

(assert (not b!7042101))

(assert (not d!2198657))

(assert (not b!7042118))

(assert (not b!7042073))

(assert (not d!2198603))

(assert (not d!2198633))

(assert (not b!7042121))

(assert (not d!2198591))

(assert (not b!7042108))

(assert (not b!7042175))

(assert (not bm!639616))

(assert (not d!2198627))

(assert (not b!7042191))

(assert (not d!2198641))

(assert (not b!7042114))

(assert (not b!7042111))

(assert (not b!7042142))

(assert (not bm!639610))

(assert (not d!2198617))

(assert (not d!2198593))

(assert (not d!2198635))

(assert (not bm!639619))

(assert (not b!7042113))

(assert (not d!2198629))

(assert (not d!2198589))

(assert (not d!2198637))

(assert (not d!2198653))

(assert (not b!7042135))

(assert (not d!2198645))

(assert tp_is_empty!44213)

(assert (not b_lambda!267351))

(assert (not b!7042167))

(assert (not b!7042059))

(assert (not d!2198609))

(assert (not bs!1873427))

(assert (not b!7042102))

(assert (not d!2198599))

(assert (not setNonEmpty!49375))

(assert (not d!2198619))

(assert (not b!7042086))

(assert (not b!7042015))

(assert (not b!7042165))

(assert (not b!7042014))

(assert (not bm!639609))

(assert (not b!7042171))

(assert (not d!2198613))

(assert (not bm!639615))

(assert (not d!2198611))

(assert (not b!7042129))

(assert (not b!7042095))

(assert (not bm!639621))

(assert (not bm!639622))

(assert (not b!7042180))

(assert (not b!7042094))

(assert (not d!2198625))

(assert (not b!7042062))

(assert (not d!2198607))

(assert (not bm!639607))

(assert (not d!2198655))

(assert (not d!2198649))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

