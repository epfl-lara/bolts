; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740338 () Bool)

(assert start!740338)

(declare-fun b!7776983 () Bool)

(declare-fun e!4607265 () Bool)

(declare-fun tp!2285417 () Bool)

(declare-fun tp!2285413 () Bool)

(assert (=> b!7776983 (= e!4607265 (and tp!2285417 tp!2285413))))

(declare-fun b!7776984 () Bool)

(declare-fun e!4607268 () Bool)

(declare-fun e!4607270 () Bool)

(assert (=> b!7776984 (= e!4607268 e!4607270)))

(declare-fun res!3099994 () Bool)

(assert (=> b!7776984 (=> (not res!3099994) (not e!4607270))))

(declare-datatypes ((C!41920 0))(
  ( (C!41921 (val!31400 Int)) )
))
(declare-datatypes ((Regex!20797 0))(
  ( (ElementMatch!20797 (c!1433154 C!41920)) (Concat!29642 (regOne!42106 Regex!20797) (regTwo!42106 Regex!20797)) (EmptyExpr!20797) (Star!20797 (reg!21126 Regex!20797)) (EmptyLang!20797) (Union!20797 (regOne!42107 Regex!20797) (regTwo!42107 Regex!20797)) )
))
(declare-fun lt!2672325 () Regex!20797)

(declare-fun lt!2672334 () Regex!20797)

(declare-fun lt!2672327 () Regex!20797)

(assert (=> b!7776984 (= res!3099994 (= lt!2672325 (Union!20797 lt!2672327 lt!2672334)))))

(declare-fun r2!6217 () Regex!20797)

(declare-datatypes ((List!73636 0))(
  ( (Nil!73512) (Cons!73512 (h!79960 C!41920) (t!388371 List!73636)) )
))
(declare-fun s!14292 () List!73636)

(declare-fun derivativeStep!6140 (Regex!20797 C!41920) Regex!20797)

(assert (=> b!7776984 (= lt!2672334 (derivativeStep!6140 r2!6217 (h!79960 s!14292)))))

(declare-fun lt!2672330 () Regex!20797)

(assert (=> b!7776984 (= lt!2672327 (Concat!29642 lt!2672330 r2!6217))))

(declare-fun r1!6279 () Regex!20797)

(assert (=> b!7776984 (= lt!2672330 (derivativeStep!6140 r1!6279 (h!79960 s!14292)))))

(declare-fun b!7776985 () Bool)

(declare-fun e!4607269 () Bool)

(assert (=> b!7776985 (= e!4607269 e!4607268)))

(declare-fun res!3099983 () Bool)

(assert (=> b!7776985 (=> (not res!3099983) (not e!4607268))))

(declare-fun matchR!10257 (Regex!20797 List!73636) Bool)

(assert (=> b!7776985 (= res!3099983 (matchR!10257 lt!2672325 (t!388371 s!14292)))))

(declare-fun lt!2672326 () Regex!20797)

(assert (=> b!7776985 (= lt!2672325 (derivativeStep!6140 lt!2672326 (h!79960 s!14292)))))

(declare-fun b!7776986 () Bool)

(declare-fun tp!2285407 () Bool)

(assert (=> b!7776986 (= e!4607265 tp!2285407)))

(declare-fun b!7776987 () Bool)

(declare-fun e!4607264 () Bool)

(assert (=> b!7776987 (= e!4607264 (matchR!10257 lt!2672334 (t!388371 s!14292)))))

(declare-fun b!7776988 () Bool)

(declare-fun e!4607272 () Bool)

(assert (=> b!7776988 (= e!4607270 (not e!4607272))))

(declare-fun res!3099982 () Bool)

(assert (=> b!7776988 (=> res!3099982 e!4607272)))

(declare-fun lt!2672329 () Bool)

(assert (=> b!7776988 (= res!3099982 (not lt!2672329))))

(assert (=> b!7776988 e!4607264))

(declare-fun res!3099986 () Bool)

(assert (=> b!7776988 (=> res!3099986 e!4607264)))

(assert (=> b!7776988 (= res!3099986 lt!2672329)))

(assert (=> b!7776988 (= lt!2672329 (matchR!10257 lt!2672327 (t!388371 s!14292)))))

(declare-datatypes ((Unit!168496 0))(
  ( (Unit!168497) )
))
(declare-fun lt!2672333 () Unit!168496)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!372 (Regex!20797 Regex!20797 List!73636) Unit!168496)

(assert (=> b!7776988 (= lt!2672333 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!372 lt!2672327 lt!2672334 (t!388371 s!14292)))))

(declare-fun b!7776989 () Bool)

(declare-fun res!3099988 () Bool)

(declare-fun e!4607271 () Bool)

(assert (=> b!7776989 (=> res!3099988 e!4607271)))

(declare-datatypes ((tuple2!69888 0))(
  ( (tuple2!69889 (_1!38247 List!73636) (_2!38247 List!73636)) )
))
(declare-fun lt!2672331 () tuple2!69888)

(assert (=> b!7776989 (= res!3099988 (not (matchR!10257 r2!6217 (_2!38247 lt!2672331))))))

(declare-fun b!7776990 () Bool)

(declare-fun res!3099984 () Bool)

(assert (=> b!7776990 (=> res!3099984 e!4607271)))

(declare-fun lt!2672332 () List!73636)

(assert (=> b!7776990 (= res!3099984 (not (matchR!10257 r1!6279 lt!2672332)))))

(declare-fun b!7776991 () Bool)

(declare-fun e!4607267 () Bool)

(declare-fun tp_is_empty!51949 () Bool)

(assert (=> b!7776991 (= e!4607267 tp_is_empty!51949)))

(declare-fun b!7776992 () Bool)

(declare-fun res!3099993 () Bool)

(assert (=> b!7776992 (=> res!3099993 e!4607271)))

(declare-fun ++!17913 (List!73636 List!73636) List!73636)

(assert (=> b!7776992 (= res!3099993 (not (= (++!17913 Nil!73512 s!14292) s!14292)))))

(declare-fun b!7776993 () Bool)

(declare-fun res!3099989 () Bool)

(assert (=> b!7776993 (=> (not res!3099989) (not e!4607269))))

(get-info :version)

(assert (=> b!7776993 (= res!3099989 ((_ is Cons!73512) s!14292))))

(declare-fun b!7776994 () Bool)

(declare-fun e!4607273 () Bool)

(assert (=> b!7776994 (= e!4607273 e!4607269)))

(declare-fun res!3099987 () Bool)

(assert (=> b!7776994 (=> (not res!3099987) (not e!4607269))))

(assert (=> b!7776994 (= res!3099987 (matchR!10257 lt!2672326 s!14292))))

(assert (=> b!7776994 (= lt!2672326 (Concat!29642 r1!6279 r2!6217))))

(declare-fun b!7776995 () Bool)

(assert (=> b!7776995 (= e!4607272 e!4607271)))

(declare-fun res!3099990 () Bool)

(assert (=> b!7776995 (=> res!3099990 e!4607271)))

(assert (=> b!7776995 (= res!3099990 (not (= (++!17913 lt!2672332 (_2!38247 lt!2672331)) s!14292)))))

(assert (=> b!7776995 (= lt!2672332 (Cons!73512 (h!79960 s!14292) (_1!38247 lt!2672331)))))

(declare-datatypes ((Option!17738 0))(
  ( (None!17737) (Some!17737 (v!54872 tuple2!69888)) )
))
(declare-fun lt!2672328 () Option!17738)

(declare-fun get!26267 (Option!17738) tuple2!69888)

(assert (=> b!7776995 (= lt!2672331 (get!26267 lt!2672328))))

(declare-fun isDefined!14350 (Option!17738) Bool)

(assert (=> b!7776995 (isDefined!14350 lt!2672328)))

(declare-fun findConcatSeparation!3768 (Regex!20797 Regex!20797 List!73636 List!73636 List!73636) Option!17738)

(assert (=> b!7776995 (= lt!2672328 (findConcatSeparation!3768 lt!2672330 r2!6217 Nil!73512 (t!388371 s!14292) (t!388371 s!14292)))))

(declare-fun lt!2672324 () Unit!168496)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!358 (Regex!20797 Regex!20797 List!73636) Unit!168496)

(assert (=> b!7776995 (= lt!2672324 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!358 lt!2672330 r2!6217 (t!388371 s!14292)))))

(declare-fun b!7776996 () Bool)

(declare-fun res!3099991 () Bool)

(assert (=> b!7776996 (=> (not res!3099991) (not e!4607268))))

(declare-fun nullable!9185 (Regex!20797) Bool)

(assert (=> b!7776996 (= res!3099991 (nullable!9185 r1!6279))))

(declare-fun b!7776997 () Bool)

(assert (=> b!7776997 (= e!4607271 true)))

(assert (=> b!7776997 (isDefined!14350 (findConcatSeparation!3768 r1!6279 r2!6217 Nil!73512 s!14292 s!14292))))

(declare-fun lt!2672323 () Unit!168496)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!130 (Regex!20797 Regex!20797 List!73636 List!73636 List!73636 List!73636 List!73636) Unit!168496)

(assert (=> b!7776997 (= lt!2672323 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!130 r1!6279 r2!6217 lt!2672332 (_2!38247 lt!2672331) s!14292 Nil!73512 s!14292))))

(declare-fun b!7776998 () Bool)

(declare-fun tp!2285410 () Bool)

(assert (=> b!7776998 (= e!4607267 tp!2285410)))

(declare-fun b!7776999 () Bool)

(declare-fun tp!2285408 () Bool)

(declare-fun tp!2285416 () Bool)

(assert (=> b!7776999 (= e!4607267 (and tp!2285408 tp!2285416))))

(declare-fun b!7777000 () Bool)

(declare-fun e!4607266 () Bool)

(declare-fun tp!2285409 () Bool)

(assert (=> b!7777000 (= e!4607266 (and tp_is_empty!51949 tp!2285409))))

(declare-fun b!7777001 () Bool)

(assert (=> b!7777001 (= e!4607265 tp_is_empty!51949)))

(declare-fun b!7777002 () Bool)

(declare-fun tp!2285412 () Bool)

(declare-fun tp!2285411 () Bool)

(assert (=> b!7777002 (= e!4607267 (and tp!2285412 tp!2285411))))

(declare-fun b!7777003 () Bool)

(declare-fun res!3099985 () Bool)

(assert (=> b!7777003 (=> res!3099985 e!4607271)))

(declare-fun isPrefix!6249 (List!73636 List!73636) Bool)

(assert (=> b!7777003 (= res!3099985 (not (isPrefix!6249 Nil!73512 lt!2672332)))))

(declare-fun b!7777004 () Bool)

(declare-fun res!3099992 () Bool)

(assert (=> b!7777004 (=> (not res!3099992) (not e!4607273))))

(declare-fun validRegex!11211 (Regex!20797) Bool)

(assert (=> b!7777004 (= res!3099992 (validRegex!11211 r2!6217))))

(declare-fun b!7777005 () Bool)

(declare-fun tp!2285415 () Bool)

(declare-fun tp!2285414 () Bool)

(assert (=> b!7777005 (= e!4607265 (and tp!2285415 tp!2285414))))

(declare-fun res!3099981 () Bool)

(assert (=> start!740338 (=> (not res!3099981) (not e!4607273))))

(assert (=> start!740338 (= res!3099981 (validRegex!11211 r1!6279))))

(assert (=> start!740338 e!4607273))

(assert (=> start!740338 e!4607267))

(assert (=> start!740338 e!4607265))

(assert (=> start!740338 e!4607266))

(assert (= (and start!740338 res!3099981) b!7777004))

(assert (= (and b!7777004 res!3099992) b!7776994))

(assert (= (and b!7776994 res!3099987) b!7776993))

(assert (= (and b!7776993 res!3099989) b!7776985))

(assert (= (and b!7776985 res!3099983) b!7776996))

(assert (= (and b!7776996 res!3099991) b!7776984))

(assert (= (and b!7776984 res!3099994) b!7776988))

(assert (= (and b!7776988 (not res!3099986)) b!7776987))

(assert (= (and b!7776988 (not res!3099982)) b!7776995))

(assert (= (and b!7776995 (not res!3099990)) b!7777003))

(assert (= (and b!7777003 (not res!3099985)) b!7776992))

(assert (= (and b!7776992 (not res!3099993)) b!7776990))

(assert (= (and b!7776990 (not res!3099984)) b!7776989))

(assert (= (and b!7776989 (not res!3099988)) b!7776997))

(assert (= (and start!740338 ((_ is ElementMatch!20797) r1!6279)) b!7776991))

(assert (= (and start!740338 ((_ is Concat!29642) r1!6279)) b!7776999))

(assert (= (and start!740338 ((_ is Star!20797) r1!6279)) b!7776998))

(assert (= (and start!740338 ((_ is Union!20797) r1!6279)) b!7777002))

(assert (= (and start!740338 ((_ is ElementMatch!20797) r2!6217)) b!7777001))

(assert (= (and start!740338 ((_ is Concat!29642) r2!6217)) b!7776983))

(assert (= (and start!740338 ((_ is Star!20797) r2!6217)) b!7776986))

(assert (= (and start!740338 ((_ is Union!20797) r2!6217)) b!7777005))

(assert (= (and start!740338 ((_ is Cons!73512) s!14292)) b!7777000))

(declare-fun m!8227376 () Bool)

(assert (=> b!7776997 m!8227376))

(assert (=> b!7776997 m!8227376))

(declare-fun m!8227378 () Bool)

(assert (=> b!7776997 m!8227378))

(declare-fun m!8227380 () Bool)

(assert (=> b!7776997 m!8227380))

(declare-fun m!8227382 () Bool)

(assert (=> b!7776996 m!8227382))

(declare-fun m!8227384 () Bool)

(assert (=> b!7776995 m!8227384))

(declare-fun m!8227386 () Bool)

(assert (=> b!7776995 m!8227386))

(declare-fun m!8227388 () Bool)

(assert (=> b!7776995 m!8227388))

(declare-fun m!8227390 () Bool)

(assert (=> b!7776995 m!8227390))

(declare-fun m!8227392 () Bool)

(assert (=> b!7776995 m!8227392))

(declare-fun m!8227394 () Bool)

(assert (=> b!7776987 m!8227394))

(declare-fun m!8227396 () Bool)

(assert (=> b!7776992 m!8227396))

(declare-fun m!8227398 () Bool)

(assert (=> b!7776990 m!8227398))

(declare-fun m!8227400 () Bool)

(assert (=> start!740338 m!8227400))

(declare-fun m!8227402 () Bool)

(assert (=> b!7776985 m!8227402))

(declare-fun m!8227404 () Bool)

(assert (=> b!7776985 m!8227404))

(declare-fun m!8227406 () Bool)

(assert (=> b!7776989 m!8227406))

(declare-fun m!8227408 () Bool)

(assert (=> b!7776994 m!8227408))

(declare-fun m!8227410 () Bool)

(assert (=> b!7776988 m!8227410))

(declare-fun m!8227412 () Bool)

(assert (=> b!7776988 m!8227412))

(declare-fun m!8227414 () Bool)

(assert (=> b!7777004 m!8227414))

(declare-fun m!8227416 () Bool)

(assert (=> b!7776984 m!8227416))

(declare-fun m!8227418 () Bool)

(assert (=> b!7776984 m!8227418))

(declare-fun m!8227420 () Bool)

(assert (=> b!7777003 m!8227420))

(check-sat (not b!7776999) (not b!7776990) (not b!7776987) (not b!7776989) (not b!7776996) (not b!7776997) (not b!7776995) (not start!740338) (not b!7777000) (not b!7776988) (not b!7776986) (not b!7776994) (not b!7777003) (not b!7777002) tp_is_empty!51949 (not b!7777004) (not b!7776992) (not b!7776998) (not b!7776983) (not b!7776985) (not b!7777005) (not b!7776984))
(check-sat)
