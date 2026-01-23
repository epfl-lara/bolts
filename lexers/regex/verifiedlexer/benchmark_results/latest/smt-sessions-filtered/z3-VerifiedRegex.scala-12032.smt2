; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!674988 () Bool)

(assert start!674988)

(declare-fun b!7009248 () Bool)

(assert (=> b!7009248 true))

(declare-fun b!7009249 () Bool)

(assert (=> b!7009249 true))

(declare-fun b!7009236 () Bool)

(assert (=> b!7009236 true))

(declare-fun b!7009234 () Bool)

(declare-fun e!4213264 () Bool)

(declare-fun e!4213260 () Bool)

(assert (=> b!7009234 (= e!4213264 e!4213260)))

(declare-fun res!2859952 () Bool)

(assert (=> b!7009234 (=> res!2859952 e!4213260)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34892 0))(
  ( (C!34893 (val!27148 Int)) )
))
(declare-datatypes ((Regex!17311 0))(
  ( (ElementMatch!17311 (c!1301885 C!34892)) (Concat!26156 (regOne!35134 Regex!17311) (regTwo!35134 Regex!17311)) (EmptyExpr!17311) (Star!17311 (reg!17640 Regex!17311)) (EmptyLang!17311) (Union!17311 (regOne!35135 Regex!17311) (regTwo!35135 Regex!17311)) )
))
(declare-datatypes ((List!67478 0))(
  ( (Nil!67354) (Cons!67354 (h!73802 Regex!17311) (t!381233 List!67478)) )
))
(declare-datatypes ((Context!12614 0))(
  ( (Context!12615 (exprs!6807 List!67478)) )
))
(declare-fun lt!2503111 () (InoxSet Context!12614))

(declare-fun lt!2503102 () (InoxSet Context!12614))

(assert (=> b!7009234 (= res!2859952 (not (= lt!2503111 lt!2503102)))))

(declare-fun lt!2503079 () (InoxSet Context!12614))

(declare-fun lt!2503087 () (InoxSet Context!12614))

(assert (=> b!7009234 (= lt!2503102 ((_ map or) lt!2503079 lt!2503087))))

(declare-fun lt!2503094 () Context!12614)

(declare-datatypes ((List!67479 0))(
  ( (Nil!67355) (Cons!67355 (h!73803 C!34892) (t!381234 List!67479)) )
))
(declare-fun s!7408 () List!67479)

(declare-fun derivationStepZipperUp!1961 (Context!12614 C!34892) (InoxSet Context!12614))

(assert (=> b!7009234 (= lt!2503087 (derivationStepZipperUp!1961 lt!2503094 (h!73803 s!7408)))))

(declare-fun lt!2503095 () Context!12614)

(declare-fun derivationStepZipperDown!2029 (Regex!17311 Context!12614 C!34892) (InoxSet Context!12614))

(assert (=> b!7009234 (= lt!2503079 (derivationStepZipperDown!2029 (h!73802 (exprs!6807 lt!2503095)) lt!2503094 (h!73803 s!7408)))))

(declare-fun lt!2503108 () List!67478)

(declare-fun ct2!306 () Context!12614)

(declare-fun ++!15302 (List!67478 List!67478) List!67478)

(assert (=> b!7009234 (= lt!2503094 (Context!12615 (++!15302 lt!2503108 (exprs!6807 ct2!306))))))

(declare-fun lambda!408054 () Int)

(declare-datatypes ((Unit!161300 0))(
  ( (Unit!161301) )
))
(declare-fun lt!2503090 () Unit!161300)

(declare-fun lemmaConcatPreservesForall!647 (List!67478 List!67478 Int) Unit!161300)

(assert (=> b!7009234 (= lt!2503090 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(declare-fun lt!2503085 () Unit!161300)

(assert (=> b!7009234 (= lt!2503085 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(declare-fun b!7009235 () Bool)

(declare-fun e!4213269 () Bool)

(declare-fun matchZipper!2851 ((InoxSet Context!12614) List!67479) Bool)

(assert (=> b!7009235 (= e!4213269 (not (matchZipper!2851 lt!2503087 (t!381234 s!7408))))))

(declare-fun lt!2503093 () Unit!161300)

(assert (=> b!7009235 (= lt!2503093 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(declare-fun e!4213259 () Bool)

(declare-fun e!4213267 () Bool)

(assert (=> b!7009236 (= e!4213259 e!4213267)))

(declare-fun res!2859950 () Bool)

(assert (=> b!7009236 (=> res!2859950 e!4213267)))

(declare-fun lt!2503109 () (InoxSet Context!12614))

(declare-fun derivationStepZipper!2791 ((InoxSet Context!12614) C!34892) (InoxSet Context!12614))

(assert (=> b!7009236 (= res!2859950 (not (= (derivationStepZipper!2791 lt!2503109 (h!73803 s!7408)) lt!2503111)))))

(declare-fun lambda!408055 () Int)

(declare-fun lt!2503084 () Context!12614)

(declare-fun flatMap!2297 ((InoxSet Context!12614) Int) (InoxSet Context!12614))

(assert (=> b!7009236 (= (flatMap!2297 lt!2503109 lambda!408055) (derivationStepZipperUp!1961 lt!2503084 (h!73803 s!7408)))))

(declare-fun lt!2503083 () Unit!161300)

(declare-fun lemmaFlatMapOnSingletonSet!1812 ((InoxSet Context!12614) Context!12614 Int) Unit!161300)

(assert (=> b!7009236 (= lt!2503083 (lemmaFlatMapOnSingletonSet!1812 lt!2503109 lt!2503084 lambda!408055))))

(assert (=> b!7009236 (= lt!2503111 (derivationStepZipperUp!1961 lt!2503084 (h!73803 s!7408)))))

(declare-fun lt!2503106 () Unit!161300)

(assert (=> b!7009236 (= lt!2503106 (lemmaConcatPreservesForall!647 (exprs!6807 lt!2503095) (exprs!6807 ct2!306) lambda!408054))))

(declare-fun b!7009237 () Bool)

(declare-fun e!4213266 () Bool)

(assert (=> b!7009237 (= e!4213266 (matchZipper!2851 lt!2503087 (t!381234 s!7408)))))

(declare-fun b!7009238 () Bool)

(declare-fun res!2859955 () Bool)

(declare-fun e!4213271 () Bool)

(assert (=> b!7009238 (=> res!2859955 e!4213271)))

(declare-fun lt!2503088 () Context!12614)

(declare-fun lt!2503092 () (InoxSet Context!12614))

(assert (=> b!7009238 (= res!2859955 (not (select lt!2503092 lt!2503088)))))

(declare-fun b!7009239 () Bool)

(declare-fun e!4213263 () Bool)

(declare-fun tp_is_empty!43847 () Bool)

(declare-fun tp!1932202 () Bool)

(assert (=> b!7009239 (= e!4213263 (and tp_is_empty!43847 tp!1932202))))

(declare-fun res!2859963 () Bool)

(declare-fun e!4213270 () Bool)

(assert (=> start!674988 (=> (not res!2859963) (not e!4213270))))

(assert (=> start!674988 (= res!2859963 (matchZipper!2851 lt!2503092 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12614))

(declare-fun appendTo!432 ((InoxSet Context!12614) Context!12614) (InoxSet Context!12614))

(assert (=> start!674988 (= lt!2503092 (appendTo!432 z1!570 ct2!306))))

(assert (=> start!674988 e!4213270))

(declare-fun condSetEmpty!48323 () Bool)

(assert (=> start!674988 (= condSetEmpty!48323 (= z1!570 ((as const (Array Context!12614 Bool)) false)))))

(declare-fun setRes!48323 () Bool)

(assert (=> start!674988 setRes!48323))

(declare-fun e!4213272 () Bool)

(declare-fun inv!86136 (Context!12614) Bool)

(assert (=> start!674988 (and (inv!86136 ct2!306) e!4213272)))

(assert (=> start!674988 e!4213263))

(declare-fun b!7009240 () Bool)

(declare-fun e!4213262 () Bool)

(declare-fun tp!1932201 () Bool)

(assert (=> b!7009240 (= e!4213262 tp!1932201)))

(declare-fun b!7009241 () Bool)

(declare-fun e!4213258 () Bool)

(assert (=> b!7009241 (= e!4213258 e!4213259)))

(declare-fun res!2859951 () Bool)

(assert (=> b!7009241 (=> res!2859951 e!4213259)))

(declare-fun lt!2503086 () (InoxSet Context!12614))

(assert (=> b!7009241 (= res!2859951 (not (= lt!2503109 lt!2503086)))))

(assert (=> b!7009241 (= lt!2503109 (store ((as const (Array Context!12614 Bool)) false) lt!2503084 true))))

(declare-fun lt!2503080 () Unit!161300)

(assert (=> b!7009241 (= lt!2503080 (lemmaConcatPreservesForall!647 (exprs!6807 lt!2503095) (exprs!6807 ct2!306) lambda!408054))))

(declare-fun setIsEmpty!48323 () Bool)

(assert (=> setIsEmpty!48323 setRes!48323))

(declare-fun b!7009242 () Bool)

(declare-fun e!4213261 () Bool)

(declare-fun e!4213265 () Bool)

(assert (=> b!7009242 (= e!4213261 e!4213265)))

(declare-fun res!2859960 () Bool)

(assert (=> b!7009242 (=> res!2859960 e!4213265)))

(assert (=> b!7009242 (= res!2859960 (matchZipper!2851 lt!2503087 (t!381234 s!7408)))))

(declare-fun lt!2503098 () Unit!161300)

(assert (=> b!7009242 (= lt!2503098 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(declare-fun b!7009243 () Bool)

(declare-fun res!2859953 () Bool)

(assert (=> b!7009243 (=> (not res!2859953) (not e!4213270))))

(get-info :version)

(assert (=> b!7009243 (= res!2859953 ((_ is Cons!67355) s!7408))))

(declare-fun b!7009244 () Bool)

(assert (=> b!7009244 (= e!4213267 e!4213264)))

(declare-fun res!2859949 () Bool)

(assert (=> b!7009244 (=> res!2859949 e!4213264)))

(declare-fun nullable!7071 (Regex!17311) Bool)

(assert (=> b!7009244 (= res!2859949 (not (nullable!7071 (h!73802 (exprs!6807 lt!2503095)))))))

(declare-fun lt!2503100 () Context!12614)

(assert (=> b!7009244 (= lt!2503100 (Context!12615 lt!2503108))))

(declare-fun tail!13382 (List!67478) List!67478)

(assert (=> b!7009244 (= lt!2503108 (tail!13382 (exprs!6807 lt!2503095)))))

(declare-fun b!7009245 () Bool)

(declare-fun tp!1932204 () Bool)

(assert (=> b!7009245 (= e!4213272 tp!1932204)))

(declare-fun b!7009246 () Bool)

(declare-fun res!2859954 () Bool)

(assert (=> b!7009246 (=> res!2859954 e!4213267)))

(assert (=> b!7009246 (= res!2859954 (not ((_ is Cons!67354) (exprs!6807 lt!2503095))))))

(declare-fun b!7009247 () Bool)

(declare-fun e!4213268 () Bool)

(declare-fun validRegex!8886 (Regex!17311) Bool)

(assert (=> b!7009247 (= e!4213268 (validRegex!8886 (h!73802 (exprs!6807 lt!2503095))))))

(declare-fun lt!2503110 () (InoxSet Context!12614))

(declare-datatypes ((tuple2!67928 0))(
  ( (tuple2!67929 (_1!37267 List!67479) (_2!37267 List!67479)) )
))
(declare-datatypes ((Option!16796 0))(
  ( (None!16795) (Some!16795 (v!53073 tuple2!67928)) )
))
(declare-fun isDefined!13497 (Option!16796) Bool)

(declare-fun findConcatSeparationZippers!312 ((InoxSet Context!12614) (InoxSet Context!12614) List!67479 List!67479 List!67479) Option!16796)

(assert (=> b!7009247 (isDefined!13497 (findConcatSeparationZippers!312 lt!2503110 (store ((as const (Array Context!12614 Bool)) false) ct2!306 true) Nil!67355 (t!381234 s!7408) (t!381234 s!7408)))))

(declare-fun lt!2503112 () Unit!161300)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!312 ((InoxSet Context!12614) Context!12614 List!67479) Unit!161300)

(assert (=> b!7009247 (= lt!2503112 (lemmaConcatZipperMatchesStringThenFindConcatDefined!312 lt!2503110 ct2!306 (t!381234 s!7408)))))

(declare-fun lt!2503113 () Unit!161300)

(assert (=> b!7009247 (= lt!2503113 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(assert (=> b!7009247 (= lt!2503079 (appendTo!432 lt!2503110 ct2!306))))

(assert (=> b!7009247 (= lt!2503110 (derivationStepZipperDown!2029 (h!73802 (exprs!6807 lt!2503095)) lt!2503100 (h!73803 s!7408)))))

(declare-fun lt!2503082 () Unit!161300)

(assert (=> b!7009247 (= lt!2503082 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(declare-fun lt!2503103 () Unit!161300)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!10 (Context!12614 Regex!17311 C!34892 Context!12614) Unit!161300)

(assert (=> b!7009247 (= lt!2503103 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!10 lt!2503100 (h!73802 (exprs!6807 lt!2503095)) (h!73803 s!7408) ct2!306))))

(assert (=> b!7009248 (= e!4213270 (not e!4213271))))

(declare-fun res!2859956 () Bool)

(assert (=> b!7009248 (=> res!2859956 e!4213271)))

(assert (=> b!7009248 (= res!2859956 (not (matchZipper!2851 lt!2503086 s!7408)))))

(assert (=> b!7009248 (= lt!2503086 (store ((as const (Array Context!12614 Bool)) false) lt!2503088 true))))

(declare-fun lambda!408052 () Int)

(declare-fun getWitness!1250 ((InoxSet Context!12614) Int) Context!12614)

(assert (=> b!7009248 (= lt!2503088 (getWitness!1250 lt!2503092 lambda!408052))))

(declare-datatypes ((List!67480 0))(
  ( (Nil!67356) (Cons!67356 (h!73804 Context!12614) (t!381235 List!67480)) )
))
(declare-fun lt!2503107 () List!67480)

(declare-fun exists!3152 (List!67480 Int) Bool)

(assert (=> b!7009248 (exists!3152 lt!2503107 lambda!408052)))

(declare-fun lt!2503101 () Unit!161300)

(declare-fun lemmaZipperMatchesExistsMatchingContext!280 (List!67480 List!67479) Unit!161300)

(assert (=> b!7009248 (= lt!2503101 (lemmaZipperMatchesExistsMatchingContext!280 lt!2503107 s!7408))))

(declare-fun toList!10671 ((InoxSet Context!12614)) List!67480)

(assert (=> b!7009248 (= lt!2503107 (toList!10671 lt!2503092))))

(assert (=> b!7009249 (= e!4213271 e!4213258)))

(declare-fun res!2859965 () Bool)

(assert (=> b!7009249 (=> res!2859965 e!4213258)))

(assert (=> b!7009249 (= res!2859965 (or (not (= lt!2503084 lt!2503088)) (not (select z1!570 lt!2503095))))))

(assert (=> b!7009249 (= lt!2503084 (Context!12615 (++!15302 (exprs!6807 lt!2503095) (exprs!6807 ct2!306))))))

(declare-fun lt!2503104 () Unit!161300)

(assert (=> b!7009249 (= lt!2503104 (lemmaConcatPreservesForall!647 (exprs!6807 lt!2503095) (exprs!6807 ct2!306) lambda!408054))))

(declare-fun lambda!408053 () Int)

(declare-fun mapPost2!166 ((InoxSet Context!12614) Int Context!12614) Context!12614)

(assert (=> b!7009249 (= lt!2503095 (mapPost2!166 z1!570 lambda!408053 lt!2503088))))

(declare-fun b!7009250 () Bool)

(assert (=> b!7009250 (= e!4213265 e!4213268)))

(declare-fun res!2859958 () Bool)

(assert (=> b!7009250 (=> res!2859958 e!4213268)))

(declare-fun lt!2503105 () Bool)

(assert (=> b!7009250 (= res!2859958 (not lt!2503105))))

(declare-fun lt!2503114 () Unit!161300)

(assert (=> b!7009250 (= lt!2503114 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(declare-fun lt!2503091 () Unit!161300)

(assert (=> b!7009250 (= lt!2503091 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(declare-fun tp!1932203 () Bool)

(declare-fun setElem!48323 () Context!12614)

(declare-fun setNonEmpty!48323 () Bool)

(assert (=> setNonEmpty!48323 (= setRes!48323 (and tp!1932203 (inv!86136 setElem!48323) e!4213262))))

(declare-fun setRest!48323 () (InoxSet Context!12614))

(assert (=> setNonEmpty!48323 (= z1!570 ((_ map or) (store ((as const (Array Context!12614 Bool)) false) setElem!48323 true) setRest!48323))))

(declare-fun b!7009251 () Bool)

(declare-fun res!2859959 () Bool)

(assert (=> b!7009251 (=> res!2859959 e!4213261)))

(declare-fun lt!2503097 () Bool)

(assert (=> b!7009251 (= res!2859959 (not lt!2503097))))

(declare-fun b!7009252 () Bool)

(declare-fun res!2859961 () Bool)

(assert (=> b!7009252 (=> res!2859961 e!4213267)))

(declare-fun isEmpty!39335 (List!67478) Bool)

(assert (=> b!7009252 (= res!2859961 (isEmpty!39335 (exprs!6807 lt!2503095)))))

(declare-fun b!7009253 () Bool)

(assert (=> b!7009253 (= e!4213260 e!4213261)))

(declare-fun res!2859964 () Bool)

(assert (=> b!7009253 (=> res!2859964 e!4213261)))

(assert (=> b!7009253 (= res!2859964 e!4213269)))

(declare-fun res!2859957 () Bool)

(assert (=> b!7009253 (=> (not res!2859957) (not e!4213269))))

(assert (=> b!7009253 (= res!2859957 (not (= lt!2503097 lt!2503105)))))

(assert (=> b!7009253 (= lt!2503097 (matchZipper!2851 lt!2503111 (t!381234 s!7408)))))

(declare-fun lt!2503081 () Unit!161300)

(assert (=> b!7009253 (= lt!2503081 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(assert (=> b!7009253 (= (matchZipper!2851 lt!2503102 (t!381234 s!7408)) e!4213266)))

(declare-fun res!2859962 () Bool)

(assert (=> b!7009253 (=> res!2859962 e!4213266)))

(assert (=> b!7009253 (= res!2859962 lt!2503105)))

(assert (=> b!7009253 (= lt!2503105 (matchZipper!2851 lt!2503079 (t!381234 s!7408)))))

(declare-fun lt!2503089 () Unit!161300)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1484 ((InoxSet Context!12614) (InoxSet Context!12614) List!67479) Unit!161300)

(assert (=> b!7009253 (= lt!2503089 (lemmaZipperConcatMatchesSameAsBothZippers!1484 lt!2503079 lt!2503087 (t!381234 s!7408)))))

(declare-fun lt!2503096 () Unit!161300)

(assert (=> b!7009253 (= lt!2503096 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(declare-fun lt!2503099 () Unit!161300)

(assert (=> b!7009253 (= lt!2503099 (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(assert (= (and start!674988 res!2859963) b!7009243))

(assert (= (and b!7009243 res!2859953) b!7009248))

(assert (= (and b!7009248 (not res!2859956)) b!7009238))

(assert (= (and b!7009238 (not res!2859955)) b!7009249))

(assert (= (and b!7009249 (not res!2859965)) b!7009241))

(assert (= (and b!7009241 (not res!2859951)) b!7009236))

(assert (= (and b!7009236 (not res!2859950)) b!7009246))

(assert (= (and b!7009246 (not res!2859954)) b!7009252))

(assert (= (and b!7009252 (not res!2859961)) b!7009244))

(assert (= (and b!7009244 (not res!2859949)) b!7009234))

(assert (= (and b!7009234 (not res!2859952)) b!7009253))

(assert (= (and b!7009253 (not res!2859962)) b!7009237))

(assert (= (and b!7009253 res!2859957) b!7009235))

(assert (= (and b!7009253 (not res!2859964)) b!7009251))

(assert (= (and b!7009251 (not res!2859959)) b!7009242))

(assert (= (and b!7009242 (not res!2859960)) b!7009250))

(assert (= (and b!7009250 (not res!2859958)) b!7009247))

(assert (= (and start!674988 condSetEmpty!48323) setIsEmpty!48323))

(assert (= (and start!674988 (not condSetEmpty!48323)) setNonEmpty!48323))

(assert (= setNonEmpty!48323 b!7009240))

(assert (= start!674988 b!7009245))

(assert (= (and start!674988 ((_ is Cons!67355) s!7408)) b!7009239))

(declare-fun m!7706790 () Bool)

(assert (=> start!674988 m!7706790))

(declare-fun m!7706792 () Bool)

(assert (=> start!674988 m!7706792))

(declare-fun m!7706794 () Bool)

(assert (=> start!674988 m!7706794))

(declare-fun m!7706796 () Bool)

(assert (=> b!7009236 m!7706796))

(declare-fun m!7706798 () Bool)

(assert (=> b!7009236 m!7706798))

(declare-fun m!7706800 () Bool)

(assert (=> b!7009236 m!7706800))

(declare-fun m!7706802 () Bool)

(assert (=> b!7009236 m!7706802))

(declare-fun m!7706804 () Bool)

(assert (=> b!7009236 m!7706804))

(declare-fun m!7706806 () Bool)

(assert (=> b!7009237 m!7706806))

(declare-fun m!7706808 () Bool)

(assert (=> b!7009244 m!7706808))

(declare-fun m!7706810 () Bool)

(assert (=> b!7009244 m!7706810))

(declare-fun m!7706812 () Bool)

(assert (=> b!7009253 m!7706812))

(assert (=> b!7009253 m!7706812))

(declare-fun m!7706814 () Bool)

(assert (=> b!7009253 m!7706814))

(declare-fun m!7706816 () Bool)

(assert (=> b!7009253 m!7706816))

(declare-fun m!7706818 () Bool)

(assert (=> b!7009253 m!7706818))

(assert (=> b!7009253 m!7706812))

(declare-fun m!7706820 () Bool)

(assert (=> b!7009253 m!7706820))

(declare-fun m!7706822 () Bool)

(assert (=> b!7009248 m!7706822))

(declare-fun m!7706824 () Bool)

(assert (=> b!7009248 m!7706824))

(declare-fun m!7706826 () Bool)

(assert (=> b!7009248 m!7706826))

(declare-fun m!7706828 () Bool)

(assert (=> b!7009248 m!7706828))

(declare-fun m!7706830 () Bool)

(assert (=> b!7009248 m!7706830))

(declare-fun m!7706832 () Bool)

(assert (=> b!7009248 m!7706832))

(assert (=> b!7009235 m!7706806))

(assert (=> b!7009235 m!7706812))

(declare-fun m!7706834 () Bool)

(assert (=> b!7009252 m!7706834))

(declare-fun m!7706836 () Bool)

(assert (=> setNonEmpty!48323 m!7706836))

(declare-fun m!7706838 () Bool)

(assert (=> b!7009238 m!7706838))

(declare-fun m!7706840 () Bool)

(assert (=> b!7009234 m!7706840))

(declare-fun m!7706842 () Bool)

(assert (=> b!7009234 m!7706842))

(assert (=> b!7009234 m!7706812))

(assert (=> b!7009234 m!7706812))

(declare-fun m!7706844 () Bool)

(assert (=> b!7009234 m!7706844))

(declare-fun m!7706846 () Bool)

(assert (=> b!7009247 m!7706846))

(declare-fun m!7706848 () Bool)

(assert (=> b!7009247 m!7706848))

(declare-fun m!7706850 () Bool)

(assert (=> b!7009247 m!7706850))

(declare-fun m!7706852 () Bool)

(assert (=> b!7009247 m!7706852))

(declare-fun m!7706854 () Bool)

(assert (=> b!7009247 m!7706854))

(declare-fun m!7706856 () Bool)

(assert (=> b!7009247 m!7706856))

(declare-fun m!7706858 () Bool)

(assert (=> b!7009247 m!7706858))

(assert (=> b!7009247 m!7706846))

(assert (=> b!7009247 m!7706858))

(assert (=> b!7009247 m!7706812))

(declare-fun m!7706860 () Bool)

(assert (=> b!7009247 m!7706860))

(assert (=> b!7009247 m!7706812))

(assert (=> b!7009242 m!7706806))

(assert (=> b!7009242 m!7706812))

(declare-fun m!7706862 () Bool)

(assert (=> b!7009249 m!7706862))

(declare-fun m!7706864 () Bool)

(assert (=> b!7009249 m!7706864))

(assert (=> b!7009249 m!7706798))

(declare-fun m!7706866 () Bool)

(assert (=> b!7009249 m!7706866))

(assert (=> b!7009250 m!7706812))

(assert (=> b!7009250 m!7706812))

(declare-fun m!7706868 () Bool)

(assert (=> b!7009241 m!7706868))

(assert (=> b!7009241 m!7706798))

(check-sat (not b!7009237) (not start!674988) (not b!7009234) (not b!7009250) (not b!7009240) (not b!7009235) (not b!7009245) (not b!7009248) (not b!7009252) (not b!7009236) (not b!7009247) (not b!7009241) (not b!7009242) (not b!7009253) tp_is_empty!43847 (not b!7009239) (not setNonEmpty!48323) (not b!7009244) (not b!7009249))
(check-sat)
(get-model)

(declare-fun d!2185041 () Bool)

(declare-fun c!1301927 () Bool)

(declare-fun isEmpty!39338 (List!67479) Bool)

(assert (=> d!2185041 (= c!1301927 (isEmpty!39338 s!7408))))

(declare-fun e!4213348 () Bool)

(assert (=> d!2185041 (= (matchZipper!2851 lt!2503086 s!7408) e!4213348)))

(declare-fun b!7009384 () Bool)

(declare-fun nullableZipper!2485 ((InoxSet Context!12614)) Bool)

(assert (=> b!7009384 (= e!4213348 (nullableZipper!2485 lt!2503086))))

(declare-fun b!7009385 () Bool)

(declare-fun head!14171 (List!67479) C!34892)

(declare-fun tail!13384 (List!67479) List!67479)

(assert (=> b!7009385 (= e!4213348 (matchZipper!2851 (derivationStepZipper!2791 lt!2503086 (head!14171 s!7408)) (tail!13384 s!7408)))))

(assert (= (and d!2185041 c!1301927) b!7009384))

(assert (= (and d!2185041 (not c!1301927)) b!7009385))

(declare-fun m!7707010 () Bool)

(assert (=> d!2185041 m!7707010))

(declare-fun m!7707012 () Bool)

(assert (=> b!7009384 m!7707012))

(declare-fun m!7707014 () Bool)

(assert (=> b!7009385 m!7707014))

(assert (=> b!7009385 m!7707014))

(declare-fun m!7707016 () Bool)

(assert (=> b!7009385 m!7707016))

(declare-fun m!7707018 () Bool)

(assert (=> b!7009385 m!7707018))

(assert (=> b!7009385 m!7707016))

(assert (=> b!7009385 m!7707018))

(declare-fun m!7707020 () Bool)

(assert (=> b!7009385 m!7707020))

(assert (=> b!7009248 d!2185041))

(declare-fun d!2185045 () Bool)

(declare-fun e!4213351 () Bool)

(assert (=> d!2185045 e!4213351))

(declare-fun res!2860015 () Bool)

(assert (=> d!2185045 (=> (not res!2860015) (not e!4213351))))

(declare-fun lt!2503150 () Context!12614)

(declare-fun dynLambda!27090 (Int Context!12614) Bool)

(assert (=> d!2185045 (= res!2860015 (dynLambda!27090 lambda!408052 lt!2503150))))

(declare-fun getWitness!1251 (List!67480 Int) Context!12614)

(assert (=> d!2185045 (= lt!2503150 (getWitness!1251 (toList!10671 lt!2503092) lambda!408052))))

(declare-fun exists!3153 ((InoxSet Context!12614) Int) Bool)

(assert (=> d!2185045 (exists!3153 lt!2503092 lambda!408052)))

(assert (=> d!2185045 (= (getWitness!1250 lt!2503092 lambda!408052) lt!2503150)))

(declare-fun b!7009388 () Bool)

(assert (=> b!7009388 (= e!4213351 (select lt!2503092 lt!2503150))))

(assert (= (and d!2185045 res!2860015) b!7009388))

(declare-fun b_lambda!264309 () Bool)

(assert (=> (not b_lambda!264309) (not d!2185045)))

(declare-fun m!7707026 () Bool)

(assert (=> d!2185045 m!7707026))

(assert (=> d!2185045 m!7706830))

(assert (=> d!2185045 m!7706830))

(declare-fun m!7707028 () Bool)

(assert (=> d!2185045 m!7707028))

(declare-fun m!7707030 () Bool)

(assert (=> d!2185045 m!7707030))

(declare-fun m!7707032 () Bool)

(assert (=> b!7009388 m!7707032))

(assert (=> b!7009248 d!2185045))

(declare-fun bs!1865986 () Bool)

(declare-fun d!2185049 () Bool)

(assert (= bs!1865986 (and d!2185049 b!7009248)))

(declare-fun lambda!408073 () Int)

(assert (=> bs!1865986 (= lambda!408073 lambda!408052)))

(assert (=> d!2185049 true))

(assert (=> d!2185049 (exists!3152 lt!2503107 lambda!408073)))

(declare-fun lt!2503156 () Unit!161300)

(declare-fun choose!52675 (List!67480 List!67479) Unit!161300)

(assert (=> d!2185049 (= lt!2503156 (choose!52675 lt!2503107 s!7408))))

(declare-fun content!13365 (List!67480) (InoxSet Context!12614))

(assert (=> d!2185049 (matchZipper!2851 (content!13365 lt!2503107) s!7408)))

(assert (=> d!2185049 (= (lemmaZipperMatchesExistsMatchingContext!280 lt!2503107 s!7408) lt!2503156)))

(declare-fun bs!1865988 () Bool)

(assert (= bs!1865988 d!2185049))

(declare-fun m!7707042 () Bool)

(assert (=> bs!1865988 m!7707042))

(declare-fun m!7707044 () Bool)

(assert (=> bs!1865988 m!7707044))

(declare-fun m!7707046 () Bool)

(assert (=> bs!1865988 m!7707046))

(assert (=> bs!1865988 m!7707046))

(declare-fun m!7707048 () Bool)

(assert (=> bs!1865988 m!7707048))

(assert (=> b!7009248 d!2185049))

(declare-fun bs!1865992 () Bool)

(declare-fun d!2185053 () Bool)

(assert (= bs!1865992 (and d!2185053 b!7009248)))

(declare-fun lambda!408079 () Int)

(assert (=> bs!1865992 (not (= lambda!408079 lambda!408052))))

(declare-fun bs!1865993 () Bool)

(assert (= bs!1865993 (and d!2185053 d!2185049)))

(assert (=> bs!1865993 (not (= lambda!408079 lambda!408073))))

(assert (=> d!2185053 true))

(declare-fun order!28025 () Int)

(declare-fun dynLambda!27091 (Int Int) Int)

(assert (=> d!2185053 (< (dynLambda!27091 order!28025 lambda!408052) (dynLambda!27091 order!28025 lambda!408079))))

(declare-fun forall!16229 (List!67480 Int) Bool)

(assert (=> d!2185053 (= (exists!3152 lt!2503107 lambda!408052) (not (forall!16229 lt!2503107 lambda!408079)))))

(declare-fun bs!1865994 () Bool)

(assert (= bs!1865994 d!2185053))

(declare-fun m!7707052 () Bool)

(assert (=> bs!1865994 m!7707052))

(assert (=> b!7009248 d!2185053))

(declare-fun d!2185057 () Bool)

(declare-fun e!4213357 () Bool)

(assert (=> d!2185057 e!4213357))

(declare-fun res!2860021 () Bool)

(assert (=> d!2185057 (=> (not res!2860021) (not e!4213357))))

(declare-fun lt!2503162 () List!67480)

(declare-fun noDuplicate!2563 (List!67480) Bool)

(assert (=> d!2185057 (= res!2860021 (noDuplicate!2563 lt!2503162))))

(declare-fun choose!52677 ((InoxSet Context!12614)) List!67480)

(assert (=> d!2185057 (= lt!2503162 (choose!52677 lt!2503092))))

(assert (=> d!2185057 (= (toList!10671 lt!2503092) lt!2503162)))

(declare-fun b!7009398 () Bool)

(assert (=> b!7009398 (= e!4213357 (= (content!13365 lt!2503162) lt!2503092))))

(assert (= (and d!2185057 res!2860021) b!7009398))

(declare-fun m!7707060 () Bool)

(assert (=> d!2185057 m!7707060))

(declare-fun m!7707062 () Bool)

(assert (=> d!2185057 m!7707062))

(declare-fun m!7707064 () Bool)

(assert (=> b!7009398 m!7707064))

(assert (=> b!7009248 d!2185057))

(declare-fun d!2185061 () Bool)

(declare-fun c!1301933 () Bool)

(assert (=> d!2185061 (= c!1301933 (isEmpty!39338 (t!381234 s!7408)))))

(declare-fun e!4213359 () Bool)

(assert (=> d!2185061 (= (matchZipper!2851 lt!2503087 (t!381234 s!7408)) e!4213359)))

(declare-fun b!7009401 () Bool)

(assert (=> b!7009401 (= e!4213359 (nullableZipper!2485 lt!2503087))))

(declare-fun b!7009402 () Bool)

(assert (=> b!7009402 (= e!4213359 (matchZipper!2851 (derivationStepZipper!2791 lt!2503087 (head!14171 (t!381234 s!7408))) (tail!13384 (t!381234 s!7408))))))

(assert (= (and d!2185061 c!1301933) b!7009401))

(assert (= (and d!2185061 (not c!1301933)) b!7009402))

(declare-fun m!7707072 () Bool)

(assert (=> d!2185061 m!7707072))

(declare-fun m!7707074 () Bool)

(assert (=> b!7009401 m!7707074))

(declare-fun m!7707076 () Bool)

(assert (=> b!7009402 m!7707076))

(assert (=> b!7009402 m!7707076))

(declare-fun m!7707078 () Bool)

(assert (=> b!7009402 m!7707078))

(declare-fun m!7707080 () Bool)

(assert (=> b!7009402 m!7707080))

(assert (=> b!7009402 m!7707078))

(assert (=> b!7009402 m!7707080))

(declare-fun m!7707082 () Bool)

(assert (=> b!7009402 m!7707082))

(assert (=> b!7009237 d!2185061))

(declare-fun d!2185065 () Bool)

(declare-fun isEmpty!39339 (Option!16796) Bool)

(assert (=> d!2185065 (= (isDefined!13497 (findConcatSeparationZippers!312 lt!2503110 (store ((as const (Array Context!12614 Bool)) false) ct2!306 true) Nil!67355 (t!381234 s!7408) (t!381234 s!7408))) (not (isEmpty!39339 (findConcatSeparationZippers!312 lt!2503110 (store ((as const (Array Context!12614 Bool)) false) ct2!306 true) Nil!67355 (t!381234 s!7408) (t!381234 s!7408)))))))

(declare-fun bs!1865995 () Bool)

(assert (= bs!1865995 d!2185065))

(assert (=> bs!1865995 m!7706846))

(declare-fun m!7707084 () Bool)

(assert (=> bs!1865995 m!7707084))

(assert (=> b!7009247 d!2185065))

(declare-fun b!7009461 () Bool)

(declare-fun e!4213394 () Bool)

(assert (=> b!7009461 (= e!4213394 (matchZipper!2851 (store ((as const (Array Context!12614 Bool)) false) ct2!306 true) (t!381234 s!7408)))))

(declare-fun d!2185067 () Bool)

(declare-fun e!4213395 () Bool)

(assert (=> d!2185067 e!4213395))

(declare-fun res!2860046 () Bool)

(assert (=> d!2185067 (=> res!2860046 e!4213395)))

(declare-fun e!4213396 () Bool)

(assert (=> d!2185067 (= res!2860046 e!4213396)))

(declare-fun res!2860043 () Bool)

(assert (=> d!2185067 (=> (not res!2860043) (not e!4213396))))

(declare-fun lt!2503177 () Option!16796)

(assert (=> d!2185067 (= res!2860043 (isDefined!13497 lt!2503177))))

(declare-fun e!4213393 () Option!16796)

(assert (=> d!2185067 (= lt!2503177 e!4213393)))

(declare-fun c!1301954 () Bool)

(assert (=> d!2185067 (= c!1301954 e!4213394)))

(declare-fun res!2860045 () Bool)

(assert (=> d!2185067 (=> (not res!2860045) (not e!4213394))))

(assert (=> d!2185067 (= res!2860045 (matchZipper!2851 lt!2503110 Nil!67355))))

(declare-fun ++!15304 (List!67479 List!67479) List!67479)

(assert (=> d!2185067 (= (++!15304 Nil!67355 (t!381234 s!7408)) (t!381234 s!7408))))

(assert (=> d!2185067 (= (findConcatSeparationZippers!312 lt!2503110 (store ((as const (Array Context!12614 Bool)) false) ct2!306 true) Nil!67355 (t!381234 s!7408) (t!381234 s!7408)) lt!2503177)))

(declare-fun b!7009462 () Bool)

(assert (=> b!7009462 (= e!4213395 (not (isDefined!13497 lt!2503177)))))

(declare-fun b!7009463 () Bool)

(declare-fun get!23616 (Option!16796) tuple2!67928)

(assert (=> b!7009463 (= e!4213396 (= (++!15304 (_1!37267 (get!23616 lt!2503177)) (_2!37267 (get!23616 lt!2503177))) (t!381234 s!7408)))))

(declare-fun b!7009464 () Bool)

(assert (=> b!7009464 (= e!4213393 (Some!16795 (tuple2!67929 Nil!67355 (t!381234 s!7408))))))

(declare-fun b!7009465 () Bool)

(declare-fun lt!2503175 () Unit!161300)

(declare-fun lt!2503176 () Unit!161300)

(assert (=> b!7009465 (= lt!2503175 lt!2503176)))

(assert (=> b!7009465 (= (++!15304 (++!15304 Nil!67355 (Cons!67355 (h!73803 (t!381234 s!7408)) Nil!67355)) (t!381234 (t!381234 s!7408))) (t!381234 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2892 (List!67479 C!34892 List!67479 List!67479) Unit!161300)

(assert (=> b!7009465 (= lt!2503176 (lemmaMoveElementToOtherListKeepsConcatEq!2892 Nil!67355 (h!73803 (t!381234 s!7408)) (t!381234 (t!381234 s!7408)) (t!381234 s!7408)))))

(declare-fun e!4213397 () Option!16796)

(assert (=> b!7009465 (= e!4213397 (findConcatSeparationZippers!312 lt!2503110 (store ((as const (Array Context!12614 Bool)) false) ct2!306 true) (++!15304 Nil!67355 (Cons!67355 (h!73803 (t!381234 s!7408)) Nil!67355)) (t!381234 (t!381234 s!7408)) (t!381234 s!7408)))))

(declare-fun b!7009466 () Bool)

(declare-fun res!2860042 () Bool)

(assert (=> b!7009466 (=> (not res!2860042) (not e!4213396))))

(assert (=> b!7009466 (= res!2860042 (matchZipper!2851 (store ((as const (Array Context!12614 Bool)) false) ct2!306 true) (_2!37267 (get!23616 lt!2503177))))))

(declare-fun b!7009467 () Bool)

(declare-fun res!2860044 () Bool)

(assert (=> b!7009467 (=> (not res!2860044) (not e!4213396))))

(assert (=> b!7009467 (= res!2860044 (matchZipper!2851 lt!2503110 (_1!37267 (get!23616 lt!2503177))))))

(declare-fun b!7009468 () Bool)

(assert (=> b!7009468 (= e!4213393 e!4213397)))

(declare-fun c!1301955 () Bool)

(assert (=> b!7009468 (= c!1301955 ((_ is Nil!67355) (t!381234 s!7408)))))

(declare-fun b!7009469 () Bool)

(assert (=> b!7009469 (= e!4213397 None!16795)))

(assert (= (and d!2185067 res!2860045) b!7009461))

(assert (= (and d!2185067 c!1301954) b!7009464))

(assert (= (and d!2185067 (not c!1301954)) b!7009468))

(assert (= (and b!7009468 c!1301955) b!7009469))

(assert (= (and b!7009468 (not c!1301955)) b!7009465))

(assert (= (and d!2185067 res!2860043) b!7009467))

(assert (= (and b!7009467 res!2860044) b!7009466))

(assert (= (and b!7009466 res!2860042) b!7009463))

(assert (= (and d!2185067 (not res!2860046)) b!7009462))

(declare-fun m!7707136 () Bool)

(assert (=> b!7009467 m!7707136))

(declare-fun m!7707138 () Bool)

(assert (=> b!7009467 m!7707138))

(assert (=> b!7009461 m!7706858))

(declare-fun m!7707140 () Bool)

(assert (=> b!7009461 m!7707140))

(assert (=> b!7009463 m!7707136))

(declare-fun m!7707142 () Bool)

(assert (=> b!7009463 m!7707142))

(declare-fun m!7707144 () Bool)

(assert (=> b!7009462 m!7707144))

(declare-fun m!7707146 () Bool)

(assert (=> b!7009465 m!7707146))

(assert (=> b!7009465 m!7707146))

(declare-fun m!7707148 () Bool)

(assert (=> b!7009465 m!7707148))

(declare-fun m!7707150 () Bool)

(assert (=> b!7009465 m!7707150))

(assert (=> b!7009465 m!7706858))

(assert (=> b!7009465 m!7707146))

(declare-fun m!7707152 () Bool)

(assert (=> b!7009465 m!7707152))

(assert (=> d!2185067 m!7707144))

(declare-fun m!7707154 () Bool)

(assert (=> d!2185067 m!7707154))

(declare-fun m!7707156 () Bool)

(assert (=> d!2185067 m!7707156))

(assert (=> b!7009466 m!7707136))

(assert (=> b!7009466 m!7706858))

(declare-fun m!7707158 () Bool)

(assert (=> b!7009466 m!7707158))

(assert (=> b!7009247 d!2185067))

(declare-fun b!7009504 () Bool)

(declare-fun e!4213426 () Bool)

(declare-fun call!636633 () Bool)

(assert (=> b!7009504 (= e!4213426 call!636633)))

(declare-fun b!7009505 () Bool)

(declare-fun e!4213424 () Bool)

(declare-fun call!636635 () Bool)

(assert (=> b!7009505 (= e!4213424 call!636635)))

(declare-fun bm!636628 () Bool)

(declare-fun call!636634 () Bool)

(declare-fun c!1301960 () Bool)

(assert (=> bm!636628 (= call!636634 (validRegex!8886 (ite c!1301960 (regOne!35135 (h!73802 (exprs!6807 lt!2503095))) (regOne!35134 (h!73802 (exprs!6807 lt!2503095))))))))

(declare-fun b!7009506 () Bool)

(declare-fun res!2860057 () Bool)

(declare-fun e!4213425 () Bool)

(assert (=> b!7009506 (=> (not res!2860057) (not e!4213425))))

(assert (=> b!7009506 (= res!2860057 call!636634)))

(declare-fun e!4213423 () Bool)

(assert (=> b!7009506 (= e!4213423 e!4213425)))

(declare-fun b!7009507 () Bool)

(declare-fun res!2860061 () Bool)

(declare-fun e!4213427 () Bool)

(assert (=> b!7009507 (=> res!2860061 e!4213427)))

(assert (=> b!7009507 (= res!2860061 (not ((_ is Concat!26156) (h!73802 (exprs!6807 lt!2503095)))))))

(assert (=> b!7009507 (= e!4213423 e!4213427)))

(declare-fun d!2185091 () Bool)

(declare-fun res!2860059 () Bool)

(declare-fun e!4213422 () Bool)

(assert (=> d!2185091 (=> res!2860059 e!4213422)))

(assert (=> d!2185091 (= res!2860059 ((_ is ElementMatch!17311) (h!73802 (exprs!6807 lt!2503095))))))

(assert (=> d!2185091 (= (validRegex!8886 (h!73802 (exprs!6807 lt!2503095))) e!4213422)))

(declare-fun b!7009508 () Bool)

(declare-fun e!4213428 () Bool)

(assert (=> b!7009508 (= e!4213428 e!4213426)))

(declare-fun res!2860060 () Bool)

(assert (=> b!7009508 (= res!2860060 (not (nullable!7071 (reg!17640 (h!73802 (exprs!6807 lt!2503095))))))))

(assert (=> b!7009508 (=> (not res!2860060) (not e!4213426))))

(declare-fun b!7009509 () Bool)

(assert (=> b!7009509 (= e!4213425 call!636635)))

(declare-fun b!7009510 () Bool)

(assert (=> b!7009510 (= e!4213428 e!4213423)))

(assert (=> b!7009510 (= c!1301960 ((_ is Union!17311) (h!73802 (exprs!6807 lt!2503095))))))

(declare-fun bm!636629 () Bool)

(declare-fun c!1301961 () Bool)

(assert (=> bm!636629 (= call!636633 (validRegex!8886 (ite c!1301961 (reg!17640 (h!73802 (exprs!6807 lt!2503095))) (ite c!1301960 (regTwo!35135 (h!73802 (exprs!6807 lt!2503095))) (regTwo!35134 (h!73802 (exprs!6807 lt!2503095)))))))))

(declare-fun b!7009511 () Bool)

(assert (=> b!7009511 (= e!4213422 e!4213428)))

(assert (=> b!7009511 (= c!1301961 ((_ is Star!17311) (h!73802 (exprs!6807 lt!2503095))))))

(declare-fun b!7009512 () Bool)

(assert (=> b!7009512 (= e!4213427 e!4213424)))

(declare-fun res!2860058 () Bool)

(assert (=> b!7009512 (=> (not res!2860058) (not e!4213424))))

(assert (=> b!7009512 (= res!2860058 call!636634)))

(declare-fun bm!636630 () Bool)

(assert (=> bm!636630 (= call!636635 call!636633)))

(assert (= (and d!2185091 (not res!2860059)) b!7009511))

(assert (= (and b!7009511 c!1301961) b!7009508))

(assert (= (and b!7009511 (not c!1301961)) b!7009510))

(assert (= (and b!7009508 res!2860060) b!7009504))

(assert (= (and b!7009510 c!1301960) b!7009506))

(assert (= (and b!7009510 (not c!1301960)) b!7009507))

(assert (= (and b!7009506 res!2860057) b!7009509))

(assert (= (and b!7009507 (not res!2860061)) b!7009512))

(assert (= (and b!7009512 res!2860058) b!7009505))

(assert (= (or b!7009509 b!7009505) bm!636630))

(assert (= (or b!7009506 b!7009512) bm!636628))

(assert (= (or b!7009504 bm!636630) bm!636629))

(declare-fun m!7707170 () Bool)

(assert (=> bm!636628 m!7707170))

(declare-fun m!7707172 () Bool)

(assert (=> b!7009508 m!7707172))

(declare-fun m!7707174 () Bool)

(assert (=> bm!636629 m!7707174))

(assert (=> b!7009247 d!2185091))

(declare-fun bs!1866008 () Bool)

(declare-fun d!2185099 () Bool)

(assert (= bs!1866008 (and d!2185099 b!7009249)))

(declare-fun lambda!408086 () Int)

(assert (=> bs!1866008 (= lambda!408086 lambda!408054)))

(assert (=> d!2185099 (= (derivationStepZipperDown!2029 (h!73802 (exprs!6807 lt!2503095)) (Context!12615 (++!15302 (exprs!6807 lt!2503100) (exprs!6807 ct2!306))) (h!73803 s!7408)) (appendTo!432 (derivationStepZipperDown!2029 (h!73802 (exprs!6807 lt!2503095)) lt!2503100 (h!73803 s!7408)) ct2!306))))

(declare-fun lt!2503185 () Unit!161300)

(assert (=> d!2185099 (= lt!2503185 (lemmaConcatPreservesForall!647 (exprs!6807 lt!2503100) (exprs!6807 ct2!306) lambda!408086))))

(declare-fun lt!2503184 () Unit!161300)

(declare-fun choose!52680 (Context!12614 Regex!17311 C!34892 Context!12614) Unit!161300)

(assert (=> d!2185099 (= lt!2503184 (choose!52680 lt!2503100 (h!73802 (exprs!6807 lt!2503095)) (h!73803 s!7408) ct2!306))))

(assert (=> d!2185099 (validRegex!8886 (h!73802 (exprs!6807 lt!2503095)))))

(assert (=> d!2185099 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!10 lt!2503100 (h!73802 (exprs!6807 lt!2503095)) (h!73803 s!7408) ct2!306) lt!2503184)))

(declare-fun bs!1866009 () Bool)

(assert (= bs!1866009 d!2185099))

(assert (=> bs!1866009 m!7706854))

(declare-fun m!7707176 () Bool)

(assert (=> bs!1866009 m!7707176))

(declare-fun m!7707178 () Bool)

(assert (=> bs!1866009 m!7707178))

(declare-fun m!7707180 () Bool)

(assert (=> bs!1866009 m!7707180))

(declare-fun m!7707182 () Bool)

(assert (=> bs!1866009 m!7707182))

(assert (=> bs!1866009 m!7706852))

(assert (=> bs!1866009 m!7706852))

(declare-fun m!7707184 () Bool)

(assert (=> bs!1866009 m!7707184))

(assert (=> b!7009247 d!2185099))

(declare-fun d!2185101 () Bool)

(assert (=> d!2185101 (isDefined!13497 (findConcatSeparationZippers!312 lt!2503110 (store ((as const (Array Context!12614 Bool)) false) ct2!306 true) Nil!67355 (t!381234 s!7408) (t!381234 s!7408)))))

(declare-fun lt!2503188 () Unit!161300)

(declare-fun choose!52681 ((InoxSet Context!12614) Context!12614 List!67479) Unit!161300)

(assert (=> d!2185101 (= lt!2503188 (choose!52681 lt!2503110 ct2!306 (t!381234 s!7408)))))

(assert (=> d!2185101 (matchZipper!2851 (appendTo!432 lt!2503110 ct2!306) (t!381234 s!7408))))

(assert (=> d!2185101 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!312 lt!2503110 ct2!306 (t!381234 s!7408)) lt!2503188)))

(declare-fun bs!1866010 () Bool)

(assert (= bs!1866010 d!2185101))

(assert (=> bs!1866010 m!7706858))

(assert (=> bs!1866010 m!7706846))

(assert (=> bs!1866010 m!7706858))

(assert (=> bs!1866010 m!7706850))

(assert (=> bs!1866010 m!7706846))

(assert (=> bs!1866010 m!7706848))

(assert (=> bs!1866010 m!7706850))

(declare-fun m!7707186 () Bool)

(assert (=> bs!1866010 m!7707186))

(declare-fun m!7707188 () Bool)

(assert (=> bs!1866010 m!7707188))

(assert (=> b!7009247 d!2185101))

(declare-fun bs!1866011 () Bool)

(declare-fun d!2185103 () Bool)

(assert (= bs!1866011 (and d!2185103 b!7009249)))

(declare-fun lambda!408091 () Int)

(assert (=> bs!1866011 (= lambda!408091 lambda!408053)))

(assert (=> d!2185103 true))

(declare-fun map!15605 ((InoxSet Context!12614) Int) (InoxSet Context!12614))

(assert (=> d!2185103 (= (appendTo!432 lt!2503110 ct2!306) (map!15605 lt!2503110 lambda!408091))))

(declare-fun bs!1866012 () Bool)

(assert (= bs!1866012 d!2185103))

(declare-fun m!7707190 () Bool)

(assert (=> bs!1866012 m!7707190))

(assert (=> b!7009247 d!2185103))

(declare-fun b!7009535 () Bool)

(declare-fun e!4213445 () (InoxSet Context!12614))

(declare-fun e!4213442 () (InoxSet Context!12614))

(assert (=> b!7009535 (= e!4213445 e!4213442)))

(declare-fun c!1301977 () Bool)

(assert (=> b!7009535 (= c!1301977 ((_ is Union!17311) (h!73802 (exprs!6807 lt!2503095))))))

(declare-fun bm!636643 () Bool)

(declare-fun c!1301974 () Bool)

(declare-fun c!1301978 () Bool)

(declare-fun call!636651 () List!67478)

(declare-fun $colon$colon!2526 (List!67478 Regex!17311) List!67478)

(assert (=> bm!636643 (= call!636651 ($colon$colon!2526 (exprs!6807 lt!2503100) (ite (or c!1301974 c!1301978) (regTwo!35134 (h!73802 (exprs!6807 lt!2503095))) (h!73802 (exprs!6807 lt!2503095)))))))

(declare-fun b!7009536 () Bool)

(declare-fun e!4213443 () (InoxSet Context!12614))

(declare-fun call!636653 () (InoxSet Context!12614))

(assert (=> b!7009536 (= e!4213443 call!636653)))

(declare-fun b!7009537 () Bool)

(declare-fun e!4213441 () (InoxSet Context!12614))

(assert (=> b!7009537 (= e!4213441 call!636653)))

(declare-fun bm!636644 () Bool)

(declare-fun call!636652 () (InoxSet Context!12614))

(assert (=> bm!636644 (= call!636652 (derivationStepZipperDown!2029 (ite c!1301977 (regOne!35135 (h!73802 (exprs!6807 lt!2503095))) (regOne!35134 (h!73802 (exprs!6807 lt!2503095)))) (ite c!1301977 lt!2503100 (Context!12615 call!636651)) (h!73803 s!7408)))))

(declare-fun b!7009539 () Bool)

(declare-fun e!4213446 () (InoxSet Context!12614))

(declare-fun call!636649 () (InoxSet Context!12614))

(assert (=> b!7009539 (= e!4213446 ((_ map or) call!636652 call!636649))))

(declare-fun bm!636645 () Bool)

(declare-fun call!636648 () List!67478)

(assert (=> bm!636645 (= call!636648 call!636651)))

(declare-fun b!7009540 () Bool)

(declare-fun e!4213444 () Bool)

(assert (=> b!7009540 (= c!1301974 e!4213444)))

(declare-fun res!2860064 () Bool)

(assert (=> b!7009540 (=> (not res!2860064) (not e!4213444))))

(assert (=> b!7009540 (= res!2860064 ((_ is Concat!26156) (h!73802 (exprs!6807 lt!2503095))))))

(assert (=> b!7009540 (= e!4213442 e!4213446)))

(declare-fun bm!636646 () Bool)

(assert (=> bm!636646 (= call!636653 call!636649)))

(declare-fun bm!636647 () Bool)

(declare-fun call!636650 () (InoxSet Context!12614))

(assert (=> bm!636647 (= call!636650 (derivationStepZipperDown!2029 (ite c!1301977 (regTwo!35135 (h!73802 (exprs!6807 lt!2503095))) (ite c!1301974 (regTwo!35134 (h!73802 (exprs!6807 lt!2503095))) (ite c!1301978 (regOne!35134 (h!73802 (exprs!6807 lt!2503095))) (reg!17640 (h!73802 (exprs!6807 lt!2503095)))))) (ite (or c!1301977 c!1301974) lt!2503100 (Context!12615 call!636648)) (h!73803 s!7408)))))

(declare-fun b!7009541 () Bool)

(assert (=> b!7009541 (= e!4213446 e!4213441)))

(assert (=> b!7009541 (= c!1301978 ((_ is Concat!26156) (h!73802 (exprs!6807 lt!2503095))))))

(declare-fun bm!636648 () Bool)

(assert (=> bm!636648 (= call!636649 call!636650)))

(declare-fun b!7009542 () Bool)

(assert (=> b!7009542 (= e!4213442 ((_ map or) call!636652 call!636650))))

(declare-fun b!7009543 () Bool)

(declare-fun c!1301975 () Bool)

(assert (=> b!7009543 (= c!1301975 ((_ is Star!17311) (h!73802 (exprs!6807 lt!2503095))))))

(assert (=> b!7009543 (= e!4213441 e!4213443)))

(declare-fun b!7009544 () Bool)

(assert (=> b!7009544 (= e!4213443 ((as const (Array Context!12614 Bool)) false))))

(declare-fun b!7009545 () Bool)

(assert (=> b!7009545 (= e!4213444 (nullable!7071 (regOne!35134 (h!73802 (exprs!6807 lt!2503095)))))))

(declare-fun b!7009538 () Bool)

(assert (=> b!7009538 (= e!4213445 (store ((as const (Array Context!12614 Bool)) false) lt!2503100 true))))

(declare-fun d!2185105 () Bool)

(declare-fun c!1301976 () Bool)

(assert (=> d!2185105 (= c!1301976 (and ((_ is ElementMatch!17311) (h!73802 (exprs!6807 lt!2503095))) (= (c!1301885 (h!73802 (exprs!6807 lt!2503095))) (h!73803 s!7408))))))

(assert (=> d!2185105 (= (derivationStepZipperDown!2029 (h!73802 (exprs!6807 lt!2503095)) lt!2503100 (h!73803 s!7408)) e!4213445)))

(assert (= (and d!2185105 c!1301976) b!7009538))

(assert (= (and d!2185105 (not c!1301976)) b!7009535))

(assert (= (and b!7009535 c!1301977) b!7009542))

(assert (= (and b!7009535 (not c!1301977)) b!7009540))

(assert (= (and b!7009540 res!2860064) b!7009545))

(assert (= (and b!7009540 c!1301974) b!7009539))

(assert (= (and b!7009540 (not c!1301974)) b!7009541))

(assert (= (and b!7009541 c!1301978) b!7009537))

(assert (= (and b!7009541 (not c!1301978)) b!7009543))

(assert (= (and b!7009543 c!1301975) b!7009536))

(assert (= (and b!7009543 (not c!1301975)) b!7009544))

(assert (= (or b!7009537 b!7009536) bm!636645))

(assert (= (or b!7009537 b!7009536) bm!636646))

(assert (= (or b!7009539 bm!636646) bm!636648))

(assert (= (or b!7009539 bm!636645) bm!636643))

(assert (= (or b!7009542 b!7009539) bm!636644))

(assert (= (or b!7009542 bm!636648) bm!636647))

(declare-fun m!7707192 () Bool)

(assert (=> b!7009538 m!7707192))

(declare-fun m!7707194 () Bool)

(assert (=> bm!636644 m!7707194))

(declare-fun m!7707196 () Bool)

(assert (=> bm!636643 m!7707196))

(declare-fun m!7707198 () Bool)

(assert (=> bm!636647 m!7707198))

(declare-fun m!7707200 () Bool)

(assert (=> b!7009545 m!7707200))

(assert (=> b!7009247 d!2185105))

(declare-fun d!2185107 () Bool)

(declare-fun forall!16231 (List!67478 Int) Bool)

(assert (=> d!2185107 (forall!16231 (++!15302 lt!2503108 (exprs!6807 ct2!306)) lambda!408054)))

(declare-fun lt!2503193 () Unit!161300)

(declare-fun choose!52682 (List!67478 List!67478 Int) Unit!161300)

(assert (=> d!2185107 (= lt!2503193 (choose!52682 lt!2503108 (exprs!6807 ct2!306) lambda!408054))))

(assert (=> d!2185107 (forall!16231 lt!2503108 lambda!408054)))

(assert (=> d!2185107 (= (lemmaConcatPreservesForall!647 lt!2503108 (exprs!6807 ct2!306) lambda!408054) lt!2503193)))

(declare-fun bs!1866013 () Bool)

(assert (= bs!1866013 d!2185107))

(assert (=> bs!1866013 m!7706840))

(assert (=> bs!1866013 m!7706840))

(declare-fun m!7707202 () Bool)

(assert (=> bs!1866013 m!7707202))

(declare-fun m!7707204 () Bool)

(assert (=> bs!1866013 m!7707204))

(declare-fun m!7707206 () Bool)

(assert (=> bs!1866013 m!7707206))

(assert (=> b!7009247 d!2185107))

(declare-fun d!2185109 () Bool)

(assert (=> d!2185109 (forall!16231 (++!15302 (exprs!6807 lt!2503095) (exprs!6807 ct2!306)) lambda!408054)))

(declare-fun lt!2503194 () Unit!161300)

(assert (=> d!2185109 (= lt!2503194 (choose!52682 (exprs!6807 lt!2503095) (exprs!6807 ct2!306) lambda!408054))))

(assert (=> d!2185109 (forall!16231 (exprs!6807 lt!2503095) lambda!408054)))

(assert (=> d!2185109 (= (lemmaConcatPreservesForall!647 (exprs!6807 lt!2503095) (exprs!6807 ct2!306) lambda!408054) lt!2503194)))

(declare-fun bs!1866014 () Bool)

(assert (= bs!1866014 d!2185109))

(assert (=> bs!1866014 m!7706864))

(assert (=> bs!1866014 m!7706864))

(declare-fun m!7707208 () Bool)

(assert (=> bs!1866014 m!7707208))

(declare-fun m!7707210 () Bool)

(assert (=> bs!1866014 m!7707210))

(declare-fun m!7707212 () Bool)

(assert (=> bs!1866014 m!7707212))

(assert (=> b!7009241 d!2185109))

(declare-fun bs!1866015 () Bool)

(declare-fun d!2185111 () Bool)

(assert (= bs!1866015 (and d!2185111 b!7009249)))

(declare-fun lambda!408094 () Int)

(assert (=> bs!1866015 (= lambda!408094 lambda!408054)))

(declare-fun bs!1866016 () Bool)

(assert (= bs!1866016 (and d!2185111 d!2185099)))

(assert (=> bs!1866016 (= lambda!408094 lambda!408086)))

(assert (=> d!2185111 (= (inv!86136 setElem!48323) (forall!16231 (exprs!6807 setElem!48323) lambda!408094))))

(declare-fun bs!1866017 () Bool)

(assert (= bs!1866017 d!2185111))

(declare-fun m!7707214 () Bool)

(assert (=> bs!1866017 m!7707214))

(assert (=> setNonEmpty!48323 d!2185111))

(declare-fun b!7009557 () Bool)

(declare-fun lt!2503197 () List!67478)

(declare-fun e!4213452 () Bool)

(assert (=> b!7009557 (= e!4213452 (or (not (= (exprs!6807 ct2!306) Nil!67354)) (= lt!2503197 (exprs!6807 lt!2503095))))))

(declare-fun b!7009556 () Bool)

(declare-fun res!2860069 () Bool)

(assert (=> b!7009556 (=> (not res!2860069) (not e!4213452))))

(declare-fun size!40968 (List!67478) Int)

(assert (=> b!7009556 (= res!2860069 (= (size!40968 lt!2503197) (+ (size!40968 (exprs!6807 lt!2503095)) (size!40968 (exprs!6807 ct2!306)))))))

(declare-fun d!2185113 () Bool)

(assert (=> d!2185113 e!4213452))

(declare-fun res!2860070 () Bool)

(assert (=> d!2185113 (=> (not res!2860070) (not e!4213452))))

(declare-fun content!13367 (List!67478) (InoxSet Regex!17311))

(assert (=> d!2185113 (= res!2860070 (= (content!13367 lt!2503197) ((_ map or) (content!13367 (exprs!6807 lt!2503095)) (content!13367 (exprs!6807 ct2!306)))))))

(declare-fun e!4213451 () List!67478)

(assert (=> d!2185113 (= lt!2503197 e!4213451)))

(declare-fun c!1301981 () Bool)

(assert (=> d!2185113 (= c!1301981 ((_ is Nil!67354) (exprs!6807 lt!2503095)))))

(assert (=> d!2185113 (= (++!15302 (exprs!6807 lt!2503095) (exprs!6807 ct2!306)) lt!2503197)))

(declare-fun b!7009555 () Bool)

(assert (=> b!7009555 (= e!4213451 (Cons!67354 (h!73802 (exprs!6807 lt!2503095)) (++!15302 (t!381233 (exprs!6807 lt!2503095)) (exprs!6807 ct2!306))))))

(declare-fun b!7009554 () Bool)

(assert (=> b!7009554 (= e!4213451 (exprs!6807 ct2!306))))

(assert (= (and d!2185113 c!1301981) b!7009554))

(assert (= (and d!2185113 (not c!1301981)) b!7009555))

(assert (= (and d!2185113 res!2860070) b!7009556))

(assert (= (and b!7009556 res!2860069) b!7009557))

(declare-fun m!7707216 () Bool)

(assert (=> b!7009556 m!7707216))

(declare-fun m!7707218 () Bool)

(assert (=> b!7009556 m!7707218))

(declare-fun m!7707220 () Bool)

(assert (=> b!7009556 m!7707220))

(declare-fun m!7707222 () Bool)

(assert (=> d!2185113 m!7707222))

(declare-fun m!7707224 () Bool)

(assert (=> d!2185113 m!7707224))

(declare-fun m!7707226 () Bool)

(assert (=> d!2185113 m!7707226))

(declare-fun m!7707228 () Bool)

(assert (=> b!7009555 m!7707228))

(assert (=> b!7009249 d!2185113))

(assert (=> b!7009249 d!2185109))

(declare-fun d!2185115 () Bool)

(declare-fun e!4213455 () Bool)

(assert (=> d!2185115 e!4213455))

(declare-fun res!2860073 () Bool)

(assert (=> d!2185115 (=> (not res!2860073) (not e!4213455))))

(declare-fun lt!2503200 () Context!12614)

(declare-fun dynLambda!27095 (Int Context!12614) Context!12614)

(assert (=> d!2185115 (= res!2860073 (= lt!2503088 (dynLambda!27095 lambda!408053 lt!2503200)))))

(declare-fun choose!52685 ((InoxSet Context!12614) Int Context!12614) Context!12614)

(assert (=> d!2185115 (= lt!2503200 (choose!52685 z1!570 lambda!408053 lt!2503088))))

(assert (=> d!2185115 (select (map!15605 z1!570 lambda!408053) lt!2503088)))

(assert (=> d!2185115 (= (mapPost2!166 z1!570 lambda!408053 lt!2503088) lt!2503200)))

(declare-fun b!7009561 () Bool)

(assert (=> b!7009561 (= e!4213455 (select z1!570 lt!2503200))))

(assert (= (and d!2185115 res!2860073) b!7009561))

(declare-fun b_lambda!264321 () Bool)

(assert (=> (not b_lambda!264321) (not d!2185115)))

(declare-fun m!7707230 () Bool)

(assert (=> d!2185115 m!7707230))

(declare-fun m!7707232 () Bool)

(assert (=> d!2185115 m!7707232))

(declare-fun m!7707234 () Bool)

(assert (=> d!2185115 m!7707234))

(declare-fun m!7707236 () Bool)

(assert (=> d!2185115 m!7707236))

(declare-fun m!7707238 () Bool)

(assert (=> b!7009561 m!7707238))

(assert (=> b!7009249 d!2185115))

(declare-fun d!2185117 () Bool)

(declare-fun c!1301982 () Bool)

(assert (=> d!2185117 (= c!1301982 (isEmpty!39338 s!7408))))

(declare-fun e!4213456 () Bool)

(assert (=> d!2185117 (= (matchZipper!2851 lt!2503092 s!7408) e!4213456)))

(declare-fun b!7009562 () Bool)

(assert (=> b!7009562 (= e!4213456 (nullableZipper!2485 lt!2503092))))

(declare-fun b!7009563 () Bool)

(assert (=> b!7009563 (= e!4213456 (matchZipper!2851 (derivationStepZipper!2791 lt!2503092 (head!14171 s!7408)) (tail!13384 s!7408)))))

(assert (= (and d!2185117 c!1301982) b!7009562))

(assert (= (and d!2185117 (not c!1301982)) b!7009563))

(assert (=> d!2185117 m!7707010))

(declare-fun m!7707240 () Bool)

(assert (=> b!7009562 m!7707240))

(assert (=> b!7009563 m!7707014))

(assert (=> b!7009563 m!7707014))

(declare-fun m!7707242 () Bool)

(assert (=> b!7009563 m!7707242))

(assert (=> b!7009563 m!7707018))

(assert (=> b!7009563 m!7707242))

(assert (=> b!7009563 m!7707018))

(declare-fun m!7707244 () Bool)

(assert (=> b!7009563 m!7707244))

(assert (=> start!674988 d!2185117))

(declare-fun bs!1866018 () Bool)

(declare-fun d!2185119 () Bool)

(assert (= bs!1866018 (and d!2185119 b!7009249)))

(declare-fun lambda!408095 () Int)

(assert (=> bs!1866018 (= lambda!408095 lambda!408053)))

(declare-fun bs!1866019 () Bool)

(assert (= bs!1866019 (and d!2185119 d!2185103)))

(assert (=> bs!1866019 (= lambda!408095 lambda!408091)))

(assert (=> d!2185119 true))

(assert (=> d!2185119 (= (appendTo!432 z1!570 ct2!306) (map!15605 z1!570 lambda!408095))))

(declare-fun bs!1866020 () Bool)

(assert (= bs!1866020 d!2185119))

(declare-fun m!7707246 () Bool)

(assert (=> bs!1866020 m!7707246))

(assert (=> start!674988 d!2185119))

(declare-fun bs!1866021 () Bool)

(declare-fun d!2185121 () Bool)

(assert (= bs!1866021 (and d!2185121 b!7009249)))

(declare-fun lambda!408096 () Int)

(assert (=> bs!1866021 (= lambda!408096 lambda!408054)))

(declare-fun bs!1866022 () Bool)

(assert (= bs!1866022 (and d!2185121 d!2185099)))

(assert (=> bs!1866022 (= lambda!408096 lambda!408086)))

(declare-fun bs!1866023 () Bool)

(assert (= bs!1866023 (and d!2185121 d!2185111)))

(assert (=> bs!1866023 (= lambda!408096 lambda!408094)))

(assert (=> d!2185121 (= (inv!86136 ct2!306) (forall!16231 (exprs!6807 ct2!306) lambda!408096))))

(declare-fun bs!1866024 () Bool)

(assert (= bs!1866024 d!2185121))

(declare-fun m!7707248 () Bool)

(assert (=> bs!1866024 m!7707248))

(assert (=> start!674988 d!2185121))

(assert (=> b!7009250 d!2185107))

(declare-fun d!2185123 () Bool)

(assert (=> d!2185123 (= (isEmpty!39335 (exprs!6807 lt!2503095)) ((_ is Nil!67354) (exprs!6807 lt!2503095)))))

(assert (=> b!7009252 d!2185123))

(declare-fun e!4213459 () Bool)

(declare-fun d!2185125 () Bool)

(assert (=> d!2185125 (= (matchZipper!2851 ((_ map or) lt!2503079 lt!2503087) (t!381234 s!7408)) e!4213459)))

(declare-fun res!2860076 () Bool)

(assert (=> d!2185125 (=> res!2860076 e!4213459)))

(assert (=> d!2185125 (= res!2860076 (matchZipper!2851 lt!2503079 (t!381234 s!7408)))))

(declare-fun lt!2503203 () Unit!161300)

(declare-fun choose!52686 ((InoxSet Context!12614) (InoxSet Context!12614) List!67479) Unit!161300)

(assert (=> d!2185125 (= lt!2503203 (choose!52686 lt!2503079 lt!2503087 (t!381234 s!7408)))))

(assert (=> d!2185125 (= (lemmaZipperConcatMatchesSameAsBothZippers!1484 lt!2503079 lt!2503087 (t!381234 s!7408)) lt!2503203)))

(declare-fun b!7009566 () Bool)

(assert (=> b!7009566 (= e!4213459 (matchZipper!2851 lt!2503087 (t!381234 s!7408)))))

(assert (= (and d!2185125 (not res!2860076)) b!7009566))

(declare-fun m!7707250 () Bool)

(assert (=> d!2185125 m!7707250))

(assert (=> d!2185125 m!7706820))

(declare-fun m!7707252 () Bool)

(assert (=> d!2185125 m!7707252))

(assert (=> b!7009566 m!7706806))

(assert (=> b!7009253 d!2185125))

(assert (=> b!7009253 d!2185107))

(declare-fun d!2185127 () Bool)

(declare-fun c!1301983 () Bool)

(assert (=> d!2185127 (= c!1301983 (isEmpty!39338 (t!381234 s!7408)))))

(declare-fun e!4213460 () Bool)

(assert (=> d!2185127 (= (matchZipper!2851 lt!2503079 (t!381234 s!7408)) e!4213460)))

(declare-fun b!7009567 () Bool)

(assert (=> b!7009567 (= e!4213460 (nullableZipper!2485 lt!2503079))))

(declare-fun b!7009568 () Bool)

(assert (=> b!7009568 (= e!4213460 (matchZipper!2851 (derivationStepZipper!2791 lt!2503079 (head!14171 (t!381234 s!7408))) (tail!13384 (t!381234 s!7408))))))

(assert (= (and d!2185127 c!1301983) b!7009567))

(assert (= (and d!2185127 (not c!1301983)) b!7009568))

(assert (=> d!2185127 m!7707072))

(declare-fun m!7707254 () Bool)

(assert (=> b!7009567 m!7707254))

(assert (=> b!7009568 m!7707076))

(assert (=> b!7009568 m!7707076))

(declare-fun m!7707256 () Bool)

(assert (=> b!7009568 m!7707256))

(assert (=> b!7009568 m!7707080))

(assert (=> b!7009568 m!7707256))

(assert (=> b!7009568 m!7707080))

(declare-fun m!7707258 () Bool)

(assert (=> b!7009568 m!7707258))

(assert (=> b!7009253 d!2185127))

(declare-fun d!2185129 () Bool)

(declare-fun c!1301984 () Bool)

(assert (=> d!2185129 (= c!1301984 (isEmpty!39338 (t!381234 s!7408)))))

(declare-fun e!4213461 () Bool)

(assert (=> d!2185129 (= (matchZipper!2851 lt!2503102 (t!381234 s!7408)) e!4213461)))

(declare-fun b!7009569 () Bool)

(assert (=> b!7009569 (= e!4213461 (nullableZipper!2485 lt!2503102))))

(declare-fun b!7009570 () Bool)

(assert (=> b!7009570 (= e!4213461 (matchZipper!2851 (derivationStepZipper!2791 lt!2503102 (head!14171 (t!381234 s!7408))) (tail!13384 (t!381234 s!7408))))))

(assert (= (and d!2185129 c!1301984) b!7009569))

(assert (= (and d!2185129 (not c!1301984)) b!7009570))

(assert (=> d!2185129 m!7707072))

(declare-fun m!7707260 () Bool)

(assert (=> b!7009569 m!7707260))

(assert (=> b!7009570 m!7707076))

(assert (=> b!7009570 m!7707076))

(declare-fun m!7707262 () Bool)

(assert (=> b!7009570 m!7707262))

(assert (=> b!7009570 m!7707080))

(assert (=> b!7009570 m!7707262))

(assert (=> b!7009570 m!7707080))

(declare-fun m!7707264 () Bool)

(assert (=> b!7009570 m!7707264))

(assert (=> b!7009253 d!2185129))

(declare-fun d!2185131 () Bool)

(declare-fun c!1301985 () Bool)

(assert (=> d!2185131 (= c!1301985 (isEmpty!39338 (t!381234 s!7408)))))

(declare-fun e!4213462 () Bool)

(assert (=> d!2185131 (= (matchZipper!2851 lt!2503111 (t!381234 s!7408)) e!4213462)))

(declare-fun b!7009571 () Bool)

(assert (=> b!7009571 (= e!4213462 (nullableZipper!2485 lt!2503111))))

(declare-fun b!7009572 () Bool)

(assert (=> b!7009572 (= e!4213462 (matchZipper!2851 (derivationStepZipper!2791 lt!2503111 (head!14171 (t!381234 s!7408))) (tail!13384 (t!381234 s!7408))))))

(assert (= (and d!2185131 c!1301985) b!7009571))

(assert (= (and d!2185131 (not c!1301985)) b!7009572))

(assert (=> d!2185131 m!7707072))

(declare-fun m!7707266 () Bool)

(assert (=> b!7009571 m!7707266))

(assert (=> b!7009572 m!7707076))

(assert (=> b!7009572 m!7707076))

(declare-fun m!7707268 () Bool)

(assert (=> b!7009572 m!7707268))

(assert (=> b!7009572 m!7707080))

(assert (=> b!7009572 m!7707268))

(assert (=> b!7009572 m!7707080))

(declare-fun m!7707270 () Bool)

(assert (=> b!7009572 m!7707270))

(assert (=> b!7009253 d!2185131))

(assert (=> b!7009242 d!2185061))

(assert (=> b!7009242 d!2185107))

(assert (=> b!7009236 d!2185109))

(declare-fun bm!636651 () Bool)

(declare-fun call!636656 () (InoxSet Context!12614))

(assert (=> bm!636651 (= call!636656 (derivationStepZipperDown!2029 (h!73802 (exprs!6807 lt!2503084)) (Context!12615 (t!381233 (exprs!6807 lt!2503084))) (h!73803 s!7408)))))

(declare-fun b!7009583 () Bool)

(declare-fun e!4213470 () Bool)

(assert (=> b!7009583 (= e!4213470 (nullable!7071 (h!73802 (exprs!6807 lt!2503084))))))

(declare-fun d!2185133 () Bool)

(declare-fun c!1301990 () Bool)

(assert (=> d!2185133 (= c!1301990 e!4213470)))

(declare-fun res!2860079 () Bool)

(assert (=> d!2185133 (=> (not res!2860079) (not e!4213470))))

(assert (=> d!2185133 (= res!2860079 ((_ is Cons!67354) (exprs!6807 lt!2503084)))))

(declare-fun e!4213469 () (InoxSet Context!12614))

(assert (=> d!2185133 (= (derivationStepZipperUp!1961 lt!2503084 (h!73803 s!7408)) e!4213469)))

(declare-fun b!7009584 () Bool)

(declare-fun e!4213471 () (InoxSet Context!12614))

(assert (=> b!7009584 (= e!4213471 call!636656)))

(declare-fun b!7009585 () Bool)

(assert (=> b!7009585 (= e!4213469 ((_ map or) call!636656 (derivationStepZipperUp!1961 (Context!12615 (t!381233 (exprs!6807 lt!2503084))) (h!73803 s!7408))))))

(declare-fun b!7009586 () Bool)

(assert (=> b!7009586 (= e!4213471 ((as const (Array Context!12614 Bool)) false))))

(declare-fun b!7009587 () Bool)

(assert (=> b!7009587 (= e!4213469 e!4213471)))

(declare-fun c!1301991 () Bool)

(assert (=> b!7009587 (= c!1301991 ((_ is Cons!67354) (exprs!6807 lt!2503084)))))

(assert (= (and d!2185133 res!2860079) b!7009583))

(assert (= (and d!2185133 c!1301990) b!7009585))

(assert (= (and d!2185133 (not c!1301990)) b!7009587))

(assert (= (and b!7009587 c!1301991) b!7009584))

(assert (= (and b!7009587 (not c!1301991)) b!7009586))

(assert (= (or b!7009585 b!7009584) bm!636651))

(declare-fun m!7707272 () Bool)

(assert (=> bm!636651 m!7707272))

(declare-fun m!7707274 () Bool)

(assert (=> b!7009583 m!7707274))

(declare-fun m!7707276 () Bool)

(assert (=> b!7009585 m!7707276))

(assert (=> b!7009236 d!2185133))

(declare-fun bs!1866025 () Bool)

(declare-fun d!2185135 () Bool)

(assert (= bs!1866025 (and d!2185135 b!7009236)))

(declare-fun lambda!408099 () Int)

(assert (=> bs!1866025 (= lambda!408099 lambda!408055)))

(assert (=> d!2185135 true))

(assert (=> d!2185135 (= (derivationStepZipper!2791 lt!2503109 (h!73803 s!7408)) (flatMap!2297 lt!2503109 lambda!408099))))

(declare-fun bs!1866026 () Bool)

(assert (= bs!1866026 d!2185135))

(declare-fun m!7707278 () Bool)

(assert (=> bs!1866026 m!7707278))

(assert (=> b!7009236 d!2185135))

(declare-fun d!2185137 () Bool)

(declare-fun dynLambda!27096 (Int Context!12614) (InoxSet Context!12614))

(assert (=> d!2185137 (= (flatMap!2297 lt!2503109 lambda!408055) (dynLambda!27096 lambda!408055 lt!2503084))))

(declare-fun lt!2503206 () Unit!161300)

(declare-fun choose!52687 ((InoxSet Context!12614) Context!12614 Int) Unit!161300)

(assert (=> d!2185137 (= lt!2503206 (choose!52687 lt!2503109 lt!2503084 lambda!408055))))

(assert (=> d!2185137 (= lt!2503109 (store ((as const (Array Context!12614 Bool)) false) lt!2503084 true))))

(assert (=> d!2185137 (= (lemmaFlatMapOnSingletonSet!1812 lt!2503109 lt!2503084 lambda!408055) lt!2503206)))

(declare-fun b_lambda!264323 () Bool)

(assert (=> (not b_lambda!264323) (not d!2185137)))

(declare-fun bs!1866027 () Bool)

(assert (= bs!1866027 d!2185137))

(assert (=> bs!1866027 m!7706802))

(declare-fun m!7707280 () Bool)

(assert (=> bs!1866027 m!7707280))

(declare-fun m!7707282 () Bool)

(assert (=> bs!1866027 m!7707282))

(assert (=> bs!1866027 m!7706868))

(assert (=> b!7009236 d!2185137))

(declare-fun d!2185139 () Bool)

(declare-fun choose!52688 ((InoxSet Context!12614) Int) (InoxSet Context!12614))

(assert (=> d!2185139 (= (flatMap!2297 lt!2503109 lambda!408055) (choose!52688 lt!2503109 lambda!408055))))

(declare-fun bs!1866028 () Bool)

(assert (= bs!1866028 d!2185139))

(declare-fun m!7707284 () Bool)

(assert (=> bs!1866028 m!7707284))

(assert (=> b!7009236 d!2185139))

(assert (=> b!7009234 d!2185107))

(declare-fun bm!636652 () Bool)

(declare-fun call!636657 () (InoxSet Context!12614))

(assert (=> bm!636652 (= call!636657 (derivationStepZipperDown!2029 (h!73802 (exprs!6807 lt!2503094)) (Context!12615 (t!381233 (exprs!6807 lt!2503094))) (h!73803 s!7408)))))

(declare-fun b!7009590 () Bool)

(declare-fun e!4213473 () Bool)

(assert (=> b!7009590 (= e!4213473 (nullable!7071 (h!73802 (exprs!6807 lt!2503094))))))

(declare-fun d!2185141 () Bool)

(declare-fun c!1301994 () Bool)

(assert (=> d!2185141 (= c!1301994 e!4213473)))

(declare-fun res!2860080 () Bool)

(assert (=> d!2185141 (=> (not res!2860080) (not e!4213473))))

(assert (=> d!2185141 (= res!2860080 ((_ is Cons!67354) (exprs!6807 lt!2503094)))))

(declare-fun e!4213472 () (InoxSet Context!12614))

(assert (=> d!2185141 (= (derivationStepZipperUp!1961 lt!2503094 (h!73803 s!7408)) e!4213472)))

(declare-fun b!7009591 () Bool)

(declare-fun e!4213474 () (InoxSet Context!12614))

(assert (=> b!7009591 (= e!4213474 call!636657)))

(declare-fun b!7009592 () Bool)

(assert (=> b!7009592 (= e!4213472 ((_ map or) call!636657 (derivationStepZipperUp!1961 (Context!12615 (t!381233 (exprs!6807 lt!2503094))) (h!73803 s!7408))))))

(declare-fun b!7009593 () Bool)

(assert (=> b!7009593 (= e!4213474 ((as const (Array Context!12614 Bool)) false))))

(declare-fun b!7009594 () Bool)

(assert (=> b!7009594 (= e!4213472 e!4213474)))

(declare-fun c!1301995 () Bool)

(assert (=> b!7009594 (= c!1301995 ((_ is Cons!67354) (exprs!6807 lt!2503094)))))

(assert (= (and d!2185141 res!2860080) b!7009590))

(assert (= (and d!2185141 c!1301994) b!7009592))

(assert (= (and d!2185141 (not c!1301994)) b!7009594))

(assert (= (and b!7009594 c!1301995) b!7009591))

(assert (= (and b!7009594 (not c!1301995)) b!7009593))

(assert (= (or b!7009592 b!7009591) bm!636652))

(declare-fun m!7707286 () Bool)

(assert (=> bm!636652 m!7707286))

(declare-fun m!7707288 () Bool)

(assert (=> b!7009590 m!7707288))

(declare-fun m!7707290 () Bool)

(assert (=> b!7009592 m!7707290))

(assert (=> b!7009234 d!2185141))

(declare-fun b!7009595 () Bool)

(declare-fun e!4213479 () (InoxSet Context!12614))

(declare-fun e!4213476 () (InoxSet Context!12614))

(assert (=> b!7009595 (= e!4213479 e!4213476)))

(declare-fun c!1301999 () Bool)

(assert (=> b!7009595 (= c!1301999 ((_ is Union!17311) (h!73802 (exprs!6807 lt!2503095))))))

(declare-fun c!1301996 () Bool)

(declare-fun call!636661 () List!67478)

(declare-fun c!1302000 () Bool)

(declare-fun bm!636653 () Bool)

(assert (=> bm!636653 (= call!636661 ($colon$colon!2526 (exprs!6807 lt!2503094) (ite (or c!1301996 c!1302000) (regTwo!35134 (h!73802 (exprs!6807 lt!2503095))) (h!73802 (exprs!6807 lt!2503095)))))))

(declare-fun b!7009596 () Bool)

(declare-fun e!4213477 () (InoxSet Context!12614))

(declare-fun call!636663 () (InoxSet Context!12614))

(assert (=> b!7009596 (= e!4213477 call!636663)))

(declare-fun b!7009597 () Bool)

(declare-fun e!4213475 () (InoxSet Context!12614))

(assert (=> b!7009597 (= e!4213475 call!636663)))

(declare-fun bm!636654 () Bool)

(declare-fun call!636662 () (InoxSet Context!12614))

(assert (=> bm!636654 (= call!636662 (derivationStepZipperDown!2029 (ite c!1301999 (regOne!35135 (h!73802 (exprs!6807 lt!2503095))) (regOne!35134 (h!73802 (exprs!6807 lt!2503095)))) (ite c!1301999 lt!2503094 (Context!12615 call!636661)) (h!73803 s!7408)))))

(declare-fun b!7009599 () Bool)

(declare-fun e!4213480 () (InoxSet Context!12614))

(declare-fun call!636659 () (InoxSet Context!12614))

(assert (=> b!7009599 (= e!4213480 ((_ map or) call!636662 call!636659))))

(declare-fun bm!636655 () Bool)

(declare-fun call!636658 () List!67478)

(assert (=> bm!636655 (= call!636658 call!636661)))

(declare-fun b!7009600 () Bool)

(declare-fun e!4213478 () Bool)

(assert (=> b!7009600 (= c!1301996 e!4213478)))

(declare-fun res!2860081 () Bool)

(assert (=> b!7009600 (=> (not res!2860081) (not e!4213478))))

(assert (=> b!7009600 (= res!2860081 ((_ is Concat!26156) (h!73802 (exprs!6807 lt!2503095))))))

(assert (=> b!7009600 (= e!4213476 e!4213480)))

(declare-fun bm!636656 () Bool)

(assert (=> bm!636656 (= call!636663 call!636659)))

(declare-fun bm!636657 () Bool)

(declare-fun call!636660 () (InoxSet Context!12614))

(assert (=> bm!636657 (= call!636660 (derivationStepZipperDown!2029 (ite c!1301999 (regTwo!35135 (h!73802 (exprs!6807 lt!2503095))) (ite c!1301996 (regTwo!35134 (h!73802 (exprs!6807 lt!2503095))) (ite c!1302000 (regOne!35134 (h!73802 (exprs!6807 lt!2503095))) (reg!17640 (h!73802 (exprs!6807 lt!2503095)))))) (ite (or c!1301999 c!1301996) lt!2503094 (Context!12615 call!636658)) (h!73803 s!7408)))))

(declare-fun b!7009601 () Bool)

(assert (=> b!7009601 (= e!4213480 e!4213475)))

(assert (=> b!7009601 (= c!1302000 ((_ is Concat!26156) (h!73802 (exprs!6807 lt!2503095))))))

(declare-fun bm!636658 () Bool)

(assert (=> bm!636658 (= call!636659 call!636660)))

(declare-fun b!7009602 () Bool)

(assert (=> b!7009602 (= e!4213476 ((_ map or) call!636662 call!636660))))

(declare-fun b!7009603 () Bool)

(declare-fun c!1301997 () Bool)

(assert (=> b!7009603 (= c!1301997 ((_ is Star!17311) (h!73802 (exprs!6807 lt!2503095))))))

(assert (=> b!7009603 (= e!4213475 e!4213477)))

(declare-fun b!7009604 () Bool)

(assert (=> b!7009604 (= e!4213477 ((as const (Array Context!12614 Bool)) false))))

(declare-fun b!7009605 () Bool)

(assert (=> b!7009605 (= e!4213478 (nullable!7071 (regOne!35134 (h!73802 (exprs!6807 lt!2503095)))))))

(declare-fun b!7009598 () Bool)

(assert (=> b!7009598 (= e!4213479 (store ((as const (Array Context!12614 Bool)) false) lt!2503094 true))))

(declare-fun d!2185143 () Bool)

(declare-fun c!1301998 () Bool)

(assert (=> d!2185143 (= c!1301998 (and ((_ is ElementMatch!17311) (h!73802 (exprs!6807 lt!2503095))) (= (c!1301885 (h!73802 (exprs!6807 lt!2503095))) (h!73803 s!7408))))))

(assert (=> d!2185143 (= (derivationStepZipperDown!2029 (h!73802 (exprs!6807 lt!2503095)) lt!2503094 (h!73803 s!7408)) e!4213479)))

(assert (= (and d!2185143 c!1301998) b!7009598))

(assert (= (and d!2185143 (not c!1301998)) b!7009595))

(assert (= (and b!7009595 c!1301999) b!7009602))

(assert (= (and b!7009595 (not c!1301999)) b!7009600))

(assert (= (and b!7009600 res!2860081) b!7009605))

(assert (= (and b!7009600 c!1301996) b!7009599))

(assert (= (and b!7009600 (not c!1301996)) b!7009601))

(assert (= (and b!7009601 c!1302000) b!7009597))

(assert (= (and b!7009601 (not c!1302000)) b!7009603))

(assert (= (and b!7009603 c!1301997) b!7009596))

(assert (= (and b!7009603 (not c!1301997)) b!7009604))

(assert (= (or b!7009597 b!7009596) bm!636655))

(assert (= (or b!7009597 b!7009596) bm!636656))

(assert (= (or b!7009599 bm!636656) bm!636658))

(assert (= (or b!7009599 bm!636655) bm!636653))

(assert (= (or b!7009602 b!7009599) bm!636654))

(assert (= (or b!7009602 bm!636658) bm!636657))

(declare-fun m!7707292 () Bool)

(assert (=> b!7009598 m!7707292))

(declare-fun m!7707294 () Bool)

(assert (=> bm!636654 m!7707294))

(declare-fun m!7707296 () Bool)

(assert (=> bm!636653 m!7707296))

(declare-fun m!7707298 () Bool)

(assert (=> bm!636657 m!7707298))

(assert (=> b!7009605 m!7707200))

(assert (=> b!7009234 d!2185143))

(declare-fun lt!2503207 () List!67478)

(declare-fun e!4213482 () Bool)

(declare-fun b!7009609 () Bool)

(assert (=> b!7009609 (= e!4213482 (or (not (= (exprs!6807 ct2!306) Nil!67354)) (= lt!2503207 lt!2503108)))))

(declare-fun b!7009608 () Bool)

(declare-fun res!2860082 () Bool)

(assert (=> b!7009608 (=> (not res!2860082) (not e!4213482))))

(assert (=> b!7009608 (= res!2860082 (= (size!40968 lt!2503207) (+ (size!40968 lt!2503108) (size!40968 (exprs!6807 ct2!306)))))))

(declare-fun d!2185145 () Bool)

(assert (=> d!2185145 e!4213482))

(declare-fun res!2860083 () Bool)

(assert (=> d!2185145 (=> (not res!2860083) (not e!4213482))))

(assert (=> d!2185145 (= res!2860083 (= (content!13367 lt!2503207) ((_ map or) (content!13367 lt!2503108) (content!13367 (exprs!6807 ct2!306)))))))

(declare-fun e!4213481 () List!67478)

(assert (=> d!2185145 (= lt!2503207 e!4213481)))

(declare-fun c!1302001 () Bool)

(assert (=> d!2185145 (= c!1302001 ((_ is Nil!67354) lt!2503108))))

(assert (=> d!2185145 (= (++!15302 lt!2503108 (exprs!6807 ct2!306)) lt!2503207)))

(declare-fun b!7009607 () Bool)

(assert (=> b!7009607 (= e!4213481 (Cons!67354 (h!73802 lt!2503108) (++!15302 (t!381233 lt!2503108) (exprs!6807 ct2!306))))))

(declare-fun b!7009606 () Bool)

(assert (=> b!7009606 (= e!4213481 (exprs!6807 ct2!306))))

(assert (= (and d!2185145 c!1302001) b!7009606))

(assert (= (and d!2185145 (not c!1302001)) b!7009607))

(assert (= (and d!2185145 res!2860083) b!7009608))

(assert (= (and b!7009608 res!2860082) b!7009609))

(declare-fun m!7707300 () Bool)

(assert (=> b!7009608 m!7707300))

(declare-fun m!7707302 () Bool)

(assert (=> b!7009608 m!7707302))

(assert (=> b!7009608 m!7707220))

(declare-fun m!7707304 () Bool)

(assert (=> d!2185145 m!7707304))

(declare-fun m!7707306 () Bool)

(assert (=> d!2185145 m!7707306))

(assert (=> d!2185145 m!7707226))

(declare-fun m!7707308 () Bool)

(assert (=> b!7009607 m!7707308))

(assert (=> b!7009234 d!2185145))

(declare-fun d!2185147 () Bool)

(declare-fun nullableFct!2680 (Regex!17311) Bool)

(assert (=> d!2185147 (= (nullable!7071 (h!73802 (exprs!6807 lt!2503095))) (nullableFct!2680 (h!73802 (exprs!6807 lt!2503095))))))

(declare-fun bs!1866029 () Bool)

(assert (= bs!1866029 d!2185147))

(declare-fun m!7707310 () Bool)

(assert (=> bs!1866029 m!7707310))

(assert (=> b!7009244 d!2185147))

(declare-fun d!2185149 () Bool)

(assert (=> d!2185149 (= (tail!13382 (exprs!6807 lt!2503095)) (t!381233 (exprs!6807 lt!2503095)))))

(assert (=> b!7009244 d!2185149))

(assert (=> b!7009235 d!2185061))

(assert (=> b!7009235 d!2185107))

(declare-fun b!7009614 () Bool)

(declare-fun e!4213485 () Bool)

(declare-fun tp!1932224 () Bool)

(assert (=> b!7009614 (= e!4213485 (and tp_is_empty!43847 tp!1932224))))

(assert (=> b!7009239 (= tp!1932202 e!4213485)))

(assert (= (and b!7009239 ((_ is Cons!67355) (t!381234 s!7408))) b!7009614))

(declare-fun b!7009619 () Bool)

(declare-fun e!4213488 () Bool)

(declare-fun tp!1932229 () Bool)

(declare-fun tp!1932230 () Bool)

(assert (=> b!7009619 (= e!4213488 (and tp!1932229 tp!1932230))))

(assert (=> b!7009245 (= tp!1932204 e!4213488)))

(assert (= (and b!7009245 ((_ is Cons!67354) (exprs!6807 ct2!306))) b!7009619))

(declare-fun condSetEmpty!48329 () Bool)

(assert (=> setNonEmpty!48323 (= condSetEmpty!48329 (= setRest!48323 ((as const (Array Context!12614 Bool)) false)))))

(declare-fun setRes!48329 () Bool)

(assert (=> setNonEmpty!48323 (= tp!1932203 setRes!48329)))

(declare-fun setIsEmpty!48329 () Bool)

(assert (=> setIsEmpty!48329 setRes!48329))

(declare-fun e!4213491 () Bool)

(declare-fun tp!1932236 () Bool)

(declare-fun setNonEmpty!48329 () Bool)

(declare-fun setElem!48329 () Context!12614)

(assert (=> setNonEmpty!48329 (= setRes!48329 (and tp!1932236 (inv!86136 setElem!48329) e!4213491))))

(declare-fun setRest!48329 () (InoxSet Context!12614))

(assert (=> setNonEmpty!48329 (= setRest!48323 ((_ map or) (store ((as const (Array Context!12614 Bool)) false) setElem!48329 true) setRest!48329))))

(declare-fun b!7009624 () Bool)

(declare-fun tp!1932235 () Bool)

(assert (=> b!7009624 (= e!4213491 tp!1932235)))

(assert (= (and setNonEmpty!48323 condSetEmpty!48329) setIsEmpty!48329))

(assert (= (and setNonEmpty!48323 (not condSetEmpty!48329)) setNonEmpty!48329))

(assert (= setNonEmpty!48329 b!7009624))

(declare-fun m!7707312 () Bool)

(assert (=> setNonEmpty!48329 m!7707312))

(declare-fun b!7009625 () Bool)

(declare-fun e!4213492 () Bool)

(declare-fun tp!1932237 () Bool)

(declare-fun tp!1932238 () Bool)

(assert (=> b!7009625 (= e!4213492 (and tp!1932237 tp!1932238))))

(assert (=> b!7009240 (= tp!1932201 e!4213492)))

(assert (= (and b!7009240 ((_ is Cons!67354) (exprs!6807 setElem!48323))) b!7009625))

(declare-fun b_lambda!264325 () Bool)

(assert (= b_lambda!264323 (or b!7009236 b_lambda!264325)))

(declare-fun bs!1866030 () Bool)

(declare-fun d!2185151 () Bool)

(assert (= bs!1866030 (and d!2185151 b!7009236)))

(assert (=> bs!1866030 (= (dynLambda!27096 lambda!408055 lt!2503084) (derivationStepZipperUp!1961 lt!2503084 (h!73803 s!7408)))))

(assert (=> bs!1866030 m!7706796))

(assert (=> d!2185137 d!2185151))

(declare-fun b_lambda!264327 () Bool)

(assert (= b_lambda!264309 (or b!7009248 b_lambda!264327)))

(declare-fun bs!1866031 () Bool)

(declare-fun d!2185153 () Bool)

(assert (= bs!1866031 (and d!2185153 b!7009248)))

(assert (=> bs!1866031 (= (dynLambda!27090 lambda!408052 lt!2503150) (matchZipper!2851 (store ((as const (Array Context!12614 Bool)) false) lt!2503150 true) s!7408))))

(declare-fun m!7707314 () Bool)

(assert (=> bs!1866031 m!7707314))

(assert (=> bs!1866031 m!7707314))

(declare-fun m!7707316 () Bool)

(assert (=> bs!1866031 m!7707316))

(assert (=> d!2185045 d!2185153))

(declare-fun b_lambda!264329 () Bool)

(assert (= b_lambda!264321 (or b!7009249 b_lambda!264329)))

(declare-fun bs!1866032 () Bool)

(declare-fun d!2185155 () Bool)

(assert (= bs!1866032 (and d!2185155 b!7009249)))

(declare-fun lt!2503208 () Unit!161300)

(assert (=> bs!1866032 (= lt!2503208 (lemmaConcatPreservesForall!647 (exprs!6807 lt!2503200) (exprs!6807 ct2!306) lambda!408054))))

(assert (=> bs!1866032 (= (dynLambda!27095 lambda!408053 lt!2503200) (Context!12615 (++!15302 (exprs!6807 lt!2503200) (exprs!6807 ct2!306))))))

(declare-fun m!7707318 () Bool)

(assert (=> bs!1866032 m!7707318))

(declare-fun m!7707320 () Bool)

(assert (=> bs!1866032 m!7707320))

(assert (=> d!2185115 d!2185155))

(check-sat (not b!7009567) (not b_lambda!264325) (not d!2185049) (not d!2185107) (not bm!636657) (not setNonEmpty!48329) (not d!2185045) (not bm!636629) (not d!2185053) (not d!2185057) (not b!7009614) (not bm!636628) (not b!7009619) (not b!7009398) (not b!7009384) (not b!7009568) (not b!7009555) (not d!2185109) (not b!7009466) (not bs!1866032) (not bm!636652) (not bm!636651) (not d!2185135) (not d!2185127) (not b!7009585) (not d!2185103) (not b!7009402) (not d!2185111) (not d!2185119) (not d!2185147) (not b!7009463) (not b!7009563) (not b!7009583) tp_is_empty!43847 (not d!2185099) (not b!7009570) (not d!2185067) (not d!2185115) (not b!7009608) (not b!7009625) (not b!7009465) (not b_lambda!264329) (not bm!636644) (not b!7009571) (not d!2185131) (not d!2185137) (not b!7009569) (not d!2185129) (not d!2185117) (not bm!636654) (not bm!636643) (not d!2185139) (not b!7009607) (not b!7009462) (not b!7009385) (not b!7009566) (not b!7009562) (not bm!636647) (not b!7009401) (not d!2185061) (not bm!636653) (not d!2185041) (not b!7009624) (not b!7009590) (not bs!1866030) (not b_lambda!264327) (not b!7009508) (not d!2185113) (not d!2185121) (not d!2185101) (not d!2185065) (not bs!1866031) (not b!7009592) (not b!7009467) (not b!7009605) (not b!7009556) (not d!2185145) (not b!7009461) (not d!2185125) (not b!7009545) (not b!7009572))
(check-sat)
