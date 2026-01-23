; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695516 () Bool)

(assert start!695516)

(declare-fun b!7137249 () Bool)

(assert (=> b!7137249 true))

(declare-fun b!7137239 () Bool)

(declare-fun res!2912204 () Bool)

(declare-fun e!4289410 () Bool)

(assert (=> b!7137239 (=> res!2912204 e!4289410)))

(declare-datatypes ((C!36536 0))(
  ( (C!36537 (val!28216 Int)) )
))
(declare-datatypes ((Regex!18131 0))(
  ( (ElementMatch!18131 (c!1331004 C!36536)) (Concat!26976 (regOne!36774 Regex!18131) (regTwo!36774 Regex!18131)) (EmptyExpr!18131) (Star!18131 (reg!18460 Regex!18131)) (EmptyLang!18131) (Union!18131 (regOne!36775 Regex!18131) (regTwo!36775 Regex!18131)) )
))
(declare-fun lt!2566139 () Regex!18131)

(declare-fun nullable!7651 (Regex!18131) Bool)

(assert (=> b!7137239 (= res!2912204 (not (nullable!7651 lt!2566139)))))

(declare-fun b!7137240 () Bool)

(declare-fun e!4289406 () Bool)

(declare-fun tp!1967902 () Bool)

(assert (=> b!7137240 (= e!4289406 tp!1967902)))

(declare-fun b!7137241 () Bool)

(declare-fun tp!1967899 () Bool)

(declare-fun tp!1967900 () Bool)

(assert (=> b!7137241 (= e!4289406 (and tp!1967899 tp!1967900))))

(declare-fun tp!1967898 () Bool)

(declare-fun e!4289408 () Bool)

(declare-fun setRes!52393 () Bool)

(declare-datatypes ((List!69340 0))(
  ( (Nil!69216) (Cons!69216 (h!75664 Regex!18131) (t!383357 List!69340)) )
))
(declare-datatypes ((Context!14250 0))(
  ( (Context!14251 (exprs!7625 List!69340)) )
))
(declare-fun setElem!52393 () Context!14250)

(declare-fun setNonEmpty!52393 () Bool)

(declare-fun inv!88391 (Context!14250) Bool)

(assert (=> setNonEmpty!52393 (= setRes!52393 (and tp!1967898 (inv!88391 setElem!52393) e!4289408))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14250))

(declare-fun setRest!52393 () (InoxSet Context!14250))

(assert (=> setNonEmpty!52393 (= z!3189 ((_ map or) (store ((as const (Array Context!14250 Bool)) false) setElem!52393 true) setRest!52393))))

(declare-fun setIsEmpty!52393 () Bool)

(assert (=> setIsEmpty!52393 setRes!52393))

(declare-fun b!7137242 () Bool)

(declare-fun e!4289405 () Bool)

(declare-fun e!4289402 () Bool)

(assert (=> b!7137242 (= e!4289405 e!4289402)))

(declare-fun res!2912205 () Bool)

(assert (=> b!7137242 (=> res!2912205 e!4289402)))

(declare-fun lt!2566137 () Regex!18131)

(assert (=> b!7137242 (= res!2912205 (not (nullable!7651 lt!2566137)))))

(declare-fun lt!2566135 () List!69340)

(declare-fun lambda!433853 () Int)

(declare-fun getWitness!1893 (List!69340 Int) Regex!18131)

(assert (=> b!7137242 (= lt!2566137 (getWitness!1893 lt!2566135 lambda!433853))))

(declare-fun b!7137243 () Bool)

(declare-fun res!2912208 () Bool)

(assert (=> b!7137243 (=> res!2912208 e!4289405)))

(declare-fun exists!3882 (List!69340 Int) Bool)

(assert (=> b!7137243 (= res!2912208 (not (exists!3882 lt!2566135 lambda!433853)))))

(declare-fun b!7137244 () Bool)

(declare-fun e!4289404 () Bool)

(assert (=> b!7137244 (= e!4289404 e!4289410)))

(declare-fun res!2912202 () Bool)

(assert (=> b!7137244 (=> res!2912202 e!4289410)))

(assert (=> b!7137244 (= res!2912202 (not (= lt!2566139 lt!2566137)))))

(declare-fun lt!2566134 () Context!14250)

(declare-fun generalisedConcat!2326 (List!69340) Regex!18131)

(assert (=> b!7137244 (= lt!2566139 (generalisedConcat!2326 (exprs!7625 lt!2566134)))))

(declare-fun b!7137245 () Bool)

(declare-fun e!4289401 () Bool)

(assert (=> b!7137245 (= e!4289401 e!4289404)))

(declare-fun res!2912198 () Bool)

(assert (=> b!7137245 (=> res!2912198 e!4289404)))

(assert (=> b!7137245 (= res!2912198 (not (select z!3189 lt!2566134)))))

(declare-fun lambda!433854 () Int)

(declare-fun getWitness!1894 ((InoxSet Context!14250) Int) Context!14250)

(assert (=> b!7137245 (= lt!2566134 (getWitness!1894 z!3189 lambda!433854))))

(declare-fun b!7137246 () Bool)

(declare-fun e!4289407 () Bool)

(assert (=> b!7137246 (= e!4289407 (not e!4289405))))

(declare-fun res!2912209 () Bool)

(assert (=> b!7137246 (=> res!2912209 e!4289405)))

(declare-fun lt!2566136 () Bool)

(assert (=> b!7137246 (= res!2912209 (not (= lt!2566136 (exists!3882 lt!2566135 lambda!433853))))))

(assert (=> b!7137246 (= lt!2566136 (exists!3882 lt!2566135 lambda!433853))))

(declare-fun lt!2566142 () Regex!18131)

(assert (=> b!7137246 (= lt!2566136 (nullable!7651 lt!2566142))))

(declare-datatypes ((Unit!163121 0))(
  ( (Unit!163122) )
))
(declare-fun lt!2566141 () Unit!163121)

(declare-fun nullableGenUnionSpec!20 (Regex!18131 List!69340) Unit!163121)

(assert (=> b!7137246 (= lt!2566141 (nullableGenUnionSpec!20 lt!2566142 lt!2566135))))

(declare-fun res!2912207 () Bool)

(declare-fun e!4289409 () Bool)

(assert (=> start!695516 (=> (not res!2912207) (not e!4289409))))

(declare-fun r!11483 () Regex!18131)

(declare-fun validRegex!9298 (Regex!18131) Bool)

(assert (=> start!695516 (= res!2912207 (validRegex!9298 r!11483))))

(assert (=> start!695516 e!4289409))

(assert (=> start!695516 e!4289406))

(declare-fun condSetEmpty!52393 () Bool)

(assert (=> start!695516 (= condSetEmpty!52393 (= z!3189 ((as const (Array Context!14250 Bool)) false)))))

(assert (=> start!695516 setRes!52393))

(declare-fun b!7137247 () Bool)

(declare-fun tp_is_empty!45899 () Bool)

(assert (=> b!7137247 (= e!4289406 tp_is_empty!45899)))

(declare-fun b!7137248 () Bool)

(assert (=> b!7137248 (= e!4289410 true)))

(declare-fun lt!2566132 () Bool)

(declare-fun nullableContext!132 (Context!14250) Bool)

(assert (=> b!7137248 (= lt!2566132 (nullableContext!132 lt!2566134))))

(declare-fun forall!16975 (List!69340 Int) Bool)

(assert (=> b!7137248 (forall!16975 (exprs!7625 lt!2566134) lambda!433853)))

(declare-fun lt!2566140 () Unit!163121)

(declare-fun nullableGenConcatSpec!2 (Regex!18131 List!69340) Unit!163121)

(assert (=> b!7137248 (= lt!2566140 (nullableGenConcatSpec!2 lt!2566137 (exprs!7625 lt!2566134)))))

(assert (=> b!7137249 (= e!4289402 e!4289401)))

(declare-fun res!2912199 () Bool)

(assert (=> b!7137249 (=> res!2912199 e!4289401)))

(declare-fun exists!3883 ((InoxSet Context!14250) Int) Bool)

(assert (=> b!7137249 (= res!2912199 (not (exists!3883 z!3189 lambda!433854)))))

(declare-datatypes ((List!69341 0))(
  ( (Nil!69217) (Cons!69217 (h!75665 Context!14250) (t!383358 List!69341)) )
))
(declare-fun lt!2566138 () List!69341)

(declare-fun exists!3884 (List!69341 Int) Bool)

(assert (=> b!7137249 (exists!3884 lt!2566138 lambda!433854)))

(declare-fun lt!2566133 () Unit!163121)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!16 (List!69341 Regex!18131) Unit!163121)

(assert (=> b!7137249 (= lt!2566133 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!16 lt!2566138 lt!2566137))))

(declare-fun b!7137250 () Bool)

(declare-fun res!2912206 () Bool)

(assert (=> b!7137250 (=> res!2912206 e!4289405)))

(assert (=> b!7137250 (= res!2912206 (not lt!2566136))))

(declare-fun b!7137251 () Bool)

(declare-fun e!4289403 () Bool)

(assert (=> b!7137251 (= e!4289403 e!4289407)))

(declare-fun res!2912201 () Bool)

(assert (=> b!7137251 (=> (not res!2912201) (not e!4289407))))

(assert (=> b!7137251 (= res!2912201 (= r!11483 lt!2566142))))

(declare-fun generalisedUnion!2636 (List!69340) Regex!18131)

(assert (=> b!7137251 (= lt!2566142 (generalisedUnion!2636 lt!2566135))))

(declare-fun unfocusZipperList!2172 (List!69341) List!69340)

(assert (=> b!7137251 (= lt!2566135 (unfocusZipperList!2172 lt!2566138))))

(declare-fun b!7137252 () Bool)

(declare-fun tp!1967897 () Bool)

(assert (=> b!7137252 (= e!4289408 tp!1967897)))

(declare-fun b!7137253 () Bool)

(declare-fun tp!1967901 () Bool)

(declare-fun tp!1967903 () Bool)

(assert (=> b!7137253 (= e!4289406 (and tp!1967901 tp!1967903))))

(declare-fun b!7137254 () Bool)

(declare-fun res!2912200 () Bool)

(assert (=> b!7137254 (=> res!2912200 e!4289402)))

(declare-fun contains!20573 (List!69340 Regex!18131) Bool)

(assert (=> b!7137254 (= res!2912200 (not (contains!20573 lt!2566135 lt!2566137)))))

(declare-fun b!7137255 () Bool)

(assert (=> b!7137255 (= e!4289409 e!4289403)))

(declare-fun res!2912203 () Bool)

(assert (=> b!7137255 (=> (not res!2912203) (not e!4289403))))

(declare-fun unfocusZipper!2479 (List!69341) Regex!18131)

(assert (=> b!7137255 (= res!2912203 (= r!11483 (unfocusZipper!2479 lt!2566138)))))

(declare-fun toList!11162 ((InoxSet Context!14250)) List!69341)

(assert (=> b!7137255 (= lt!2566138 (toList!11162 z!3189))))

(assert (= (and start!695516 res!2912207) b!7137255))

(assert (= (and b!7137255 res!2912203) b!7137251))

(assert (= (and b!7137251 res!2912201) b!7137246))

(assert (= (and b!7137246 (not res!2912209)) b!7137250))

(assert (= (and b!7137250 (not res!2912206)) b!7137243))

(assert (= (and b!7137243 (not res!2912208)) b!7137242))

(assert (= (and b!7137242 (not res!2912205)) b!7137254))

(assert (= (and b!7137254 (not res!2912200)) b!7137249))

(assert (= (and b!7137249 (not res!2912199)) b!7137245))

(assert (= (and b!7137245 (not res!2912198)) b!7137244))

(assert (= (and b!7137244 (not res!2912202)) b!7137239))

(assert (= (and b!7137239 (not res!2912204)) b!7137248))

(get-info :version)

(assert (= (and start!695516 ((_ is ElementMatch!18131) r!11483)) b!7137247))

(assert (= (and start!695516 ((_ is Concat!26976) r!11483)) b!7137253))

(assert (= (and start!695516 ((_ is Star!18131) r!11483)) b!7137240))

(assert (= (and start!695516 ((_ is Union!18131) r!11483)) b!7137241))

(assert (= (and start!695516 condSetEmpty!52393) setIsEmpty!52393))

(assert (= (and start!695516 (not condSetEmpty!52393)) setNonEmpty!52393))

(assert (= setNonEmpty!52393 b!7137252))

(declare-fun m!7853082 () Bool)

(assert (=> b!7137248 m!7853082))

(declare-fun m!7853084 () Bool)

(assert (=> b!7137248 m!7853084))

(declare-fun m!7853086 () Bool)

(assert (=> b!7137248 m!7853086))

(declare-fun m!7853088 () Bool)

(assert (=> b!7137245 m!7853088))

(declare-fun m!7853090 () Bool)

(assert (=> b!7137245 m!7853090))

(declare-fun m!7853092 () Bool)

(assert (=> setNonEmpty!52393 m!7853092))

(declare-fun m!7853094 () Bool)

(assert (=> b!7137255 m!7853094))

(declare-fun m!7853096 () Bool)

(assert (=> b!7137255 m!7853096))

(declare-fun m!7853098 () Bool)

(assert (=> b!7137244 m!7853098))

(declare-fun m!7853100 () Bool)

(assert (=> b!7137242 m!7853100))

(declare-fun m!7853102 () Bool)

(assert (=> b!7137242 m!7853102))

(declare-fun m!7853104 () Bool)

(assert (=> b!7137239 m!7853104))

(declare-fun m!7853106 () Bool)

(assert (=> b!7137254 m!7853106))

(declare-fun m!7853108 () Bool)

(assert (=> b!7137243 m!7853108))

(assert (=> b!7137246 m!7853108))

(assert (=> b!7137246 m!7853108))

(declare-fun m!7853110 () Bool)

(assert (=> b!7137246 m!7853110))

(declare-fun m!7853112 () Bool)

(assert (=> b!7137246 m!7853112))

(declare-fun m!7853114 () Bool)

(assert (=> b!7137249 m!7853114))

(declare-fun m!7853116 () Bool)

(assert (=> b!7137249 m!7853116))

(declare-fun m!7853118 () Bool)

(assert (=> b!7137249 m!7853118))

(declare-fun m!7853120 () Bool)

(assert (=> b!7137251 m!7853120))

(declare-fun m!7853122 () Bool)

(assert (=> b!7137251 m!7853122))

(declare-fun m!7853124 () Bool)

(assert (=> start!695516 m!7853124))

(check-sat (not b!7137255) (not b!7137242) (not start!695516) (not b!7137249) (not b!7137245) (not b!7137252) (not b!7137253) (not b!7137239) (not b!7137243) (not b!7137241) (not b!7137244) (not b!7137251) (not b!7137240) (not b!7137248) (not setNonEmpty!52393) (not b!7137254) tp_is_empty!45899 (not b!7137246))
(check-sat)
