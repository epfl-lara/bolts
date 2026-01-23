; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742538 () Bool)

(assert start!742538)

(declare-fun b!7839468 () Bool)

(declare-fun e!4635270 () Bool)

(declare-fun tp!2319948 () Bool)

(declare-fun tp!2319938 () Bool)

(assert (=> b!7839468 (= e!4635270 (and tp!2319948 tp!2319938))))

(declare-fun b!7839469 () Bool)

(declare-fun e!4635271 () Bool)

(declare-fun tp_is_empty!52385 () Bool)

(declare-fun tp!2319947 () Bool)

(assert (=> b!7839469 (= e!4635271 (and tp_is_empty!52385 tp!2319947))))

(declare-fun b!7839471 () Bool)

(declare-fun tp!2319949 () Bool)

(assert (=> b!7839471 (= e!4635270 tp!2319949)))

(declare-fun b!7839472 () Bool)

(declare-fun e!4635273 () Bool)

(assert (=> b!7839472 (= e!4635273 true)))

(declare-fun b!7839473 () Bool)

(declare-fun tp!2319943 () Bool)

(declare-fun tp!2319945 () Bool)

(assert (=> b!7839473 (= e!4635270 (and tp!2319943 tp!2319945))))

(declare-fun b!7839474 () Bool)

(declare-fun e!4635269 () Bool)

(declare-fun e!4635272 () Bool)

(assert (=> b!7839474 (= e!4635269 (not e!4635272))))

(declare-fun res!3117985 () Bool)

(assert (=> b!7839474 (=> res!3117985 e!4635272)))

(declare-datatypes ((C!42356 0))(
  ( (C!42357 (val!31618 Int)) )
))
(declare-datatypes ((List!73852 0))(
  ( (Nil!73728) (Cons!73728 (h!80176 C!42356) (t!388587 List!73852)) )
))
(declare-datatypes ((tuple2!70024 0))(
  ( (tuple2!70025 (_1!38315 List!73852) (_2!38315 List!73852)) )
))
(declare-datatypes ((Option!17806 0))(
  ( (None!17805) (Some!17805 (v!54940 tuple2!70024)) )
))
(declare-fun lt!2678351 () Option!17806)

(declare-fun isDefined!14406 (Option!17806) Bool)

(assert (=> b!7839474 (= res!3117985 (not (isDefined!14406 lt!2678351)))))

(declare-datatypes ((Regex!21015 0))(
  ( (ElementMatch!21015 (c!1441396 C!42356)) (Concat!29860 (regOne!42542 Regex!21015) (regTwo!42542 Regex!21015)) (EmptyExpr!21015) (Star!21015 (reg!21344 Regex!21015)) (EmptyLang!21015) (Union!21015 (regOne!42543 Regex!21015) (regTwo!42543 Regex!21015)) )
))
(declare-fun r1!3326 () Regex!21015)

(declare-fun lt!2678352 () List!73852)

(declare-fun s!10212 () List!73852)

(declare-fun r2!3226 () Regex!21015)

(declare-fun s2!2463 () List!73852)

(declare-fun findConcatSeparation!3828 (Regex!21015 Regex!21015 List!73852 List!73852 List!73852) Option!17806)

(assert (=> b!7839474 (= lt!2678351 (findConcatSeparation!3828 r1!3326 r2!3226 lt!2678352 (t!388587 s2!2463) s!10212))))

(declare-fun ++!18049 (List!73852 List!73852) List!73852)

(assert (=> b!7839474 (= (++!18049 lt!2678352 (t!388587 s2!2463)) s!10212)))

(declare-fun s1!2717 () List!73852)

(assert (=> b!7839474 (= lt!2678352 (++!18049 s1!2717 (Cons!73728 (h!80176 s2!2463) Nil!73728)))))

(declare-datatypes ((Unit!168828 0))(
  ( (Unit!168829) )
))
(declare-fun lt!2678349 () Unit!168828)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3460 (List!73852 C!42356 List!73852 List!73852) Unit!168828)

(assert (=> b!7839474 (= lt!2678349 (lemmaMoveElementToOtherListKeepsConcatEq!3460 s1!2717 (h!80176 s2!2463) (t!388587 s2!2463) s!10212))))

(declare-fun b!7839475 () Bool)

(declare-fun res!3117984 () Bool)

(assert (=> b!7839475 (=> (not res!3117984) (not e!4635269))))

(assert (=> b!7839475 (= res!3117984 (= (++!18049 s1!2717 s2!2463) s!10212))))

(declare-fun b!7839476 () Bool)

(declare-fun res!3117991 () Bool)

(assert (=> b!7839476 (=> (not res!3117991) (not e!4635269))))

(declare-fun validRegex!11429 (Regex!21015) Bool)

(assert (=> b!7839476 (= res!3117991 (validRegex!11429 r2!3226))))

(declare-fun b!7839470 () Bool)

(declare-fun res!3117989 () Bool)

(assert (=> b!7839470 (=> res!3117989 e!4635273)))

(declare-fun lt!2678350 () tuple2!70024)

(declare-fun matchR!10471 (Regex!21015 List!73852) Bool)

(assert (=> b!7839470 (= res!3117989 (not (matchR!10471 r2!3226 (_2!38315 lt!2678350))))))

(declare-fun res!3117988 () Bool)

(assert (=> start!742538 (=> (not res!3117988) (not e!4635269))))

(assert (=> start!742538 (= res!3117988 (validRegex!11429 r1!3326))))

(assert (=> start!742538 e!4635269))

(declare-fun e!4635268 () Bool)

(assert (=> start!742538 e!4635268))

(declare-fun e!4635265 () Bool)

(assert (=> start!742538 e!4635265))

(declare-fun e!4635267 () Bool)

(assert (=> start!742538 e!4635267))

(assert (=> start!742538 e!4635270))

(assert (=> start!742538 e!4635271))

(declare-fun b!7839477 () Bool)

(declare-fun tp!2319937 () Bool)

(declare-fun tp!2319944 () Bool)

(assert (=> b!7839477 (= e!4635265 (and tp!2319937 tp!2319944))))

(declare-fun b!7839478 () Bool)

(declare-fun tp!2319940 () Bool)

(assert (=> b!7839478 (= e!4635268 (and tp_is_empty!52385 tp!2319940))))

(declare-fun b!7839479 () Bool)

(declare-fun tp!2319946 () Bool)

(assert (=> b!7839479 (= e!4635267 (and tp_is_empty!52385 tp!2319946))))

(declare-fun b!7839480 () Bool)

(declare-fun e!4635266 () Bool)

(assert (=> b!7839480 (= e!4635266 (not (matchR!10471 r2!3226 s2!2463)))))

(declare-fun b!7839481 () Bool)

(assert (=> b!7839481 (= e!4635272 e!4635273)))

(declare-fun res!3117987 () Bool)

(assert (=> b!7839481 (=> res!3117987 e!4635273)))

(assert (=> b!7839481 (= res!3117987 (not (matchR!10471 r1!3326 (_1!38315 lt!2678350))))))

(declare-fun get!26428 (Option!17806) tuple2!70024)

(assert (=> b!7839481 (= lt!2678350 (get!26428 lt!2678351))))

(declare-fun b!7839482 () Bool)

(assert (=> b!7839482 (= e!4635265 tp_is_empty!52385)))

(declare-fun b!7839483 () Bool)

(declare-fun res!3117986 () Bool)

(assert (=> b!7839483 (=> (not res!3117986) (not e!4635269))))

(assert (=> b!7839483 (= res!3117986 e!4635266)))

(declare-fun res!3117992 () Bool)

(assert (=> b!7839483 (=> res!3117992 e!4635266)))

(assert (=> b!7839483 (= res!3117992 (not (matchR!10471 r1!3326 s1!2717)))))

(declare-fun b!7839484 () Bool)

(declare-fun tp!2319939 () Bool)

(declare-fun tp!2319941 () Bool)

(assert (=> b!7839484 (= e!4635265 (and tp!2319939 tp!2319941))))

(declare-fun b!7839485 () Bool)

(assert (=> b!7839485 (= e!4635270 tp_is_empty!52385)))

(declare-fun b!7839486 () Bool)

(declare-fun tp!2319942 () Bool)

(assert (=> b!7839486 (= e!4635265 tp!2319942)))

(declare-fun b!7839487 () Bool)

(declare-fun res!3117990 () Bool)

(assert (=> b!7839487 (=> (not res!3117990) (not e!4635269))))

(get-info :version)

(assert (=> b!7839487 (= res!3117990 (not ((_ is Nil!73728) s2!2463)))))

(assert (= (and start!742538 res!3117988) b!7839476))

(assert (= (and b!7839476 res!3117991) b!7839475))

(assert (= (and b!7839475 res!3117984) b!7839483))

(assert (= (and b!7839483 (not res!3117992)) b!7839480))

(assert (= (and b!7839483 res!3117986) b!7839487))

(assert (= (and b!7839487 res!3117990) b!7839474))

(assert (= (and b!7839474 (not res!3117985)) b!7839481))

(assert (= (and b!7839481 (not res!3117987)) b!7839470))

(assert (= (and b!7839470 (not res!3117989)) b!7839472))

(assert (= (and start!742538 ((_ is Cons!73728) s1!2717)) b!7839478))

(assert (= (and start!742538 ((_ is ElementMatch!21015) r1!3326)) b!7839482))

(assert (= (and start!742538 ((_ is Concat!29860) r1!3326)) b!7839477))

(assert (= (and start!742538 ((_ is Star!21015) r1!3326)) b!7839486))

(assert (= (and start!742538 ((_ is Union!21015) r1!3326)) b!7839484))

(assert (= (and start!742538 ((_ is Cons!73728) s!10212)) b!7839479))

(assert (= (and start!742538 ((_ is ElementMatch!21015) r2!3226)) b!7839485))

(assert (= (and start!742538 ((_ is Concat!29860) r2!3226)) b!7839473))

(assert (= (and start!742538 ((_ is Star!21015) r2!3226)) b!7839471))

(assert (= (and start!742538 ((_ is Union!21015) r2!3226)) b!7839468))

(assert (= (and start!742538 ((_ is Cons!73728) s2!2463)) b!7839469))

(declare-fun m!8252948 () Bool)

(assert (=> b!7839476 m!8252948))

(declare-fun m!8252950 () Bool)

(assert (=> b!7839475 m!8252950))

(declare-fun m!8252952 () Bool)

(assert (=> b!7839474 m!8252952))

(declare-fun m!8252954 () Bool)

(assert (=> b!7839474 m!8252954))

(declare-fun m!8252956 () Bool)

(assert (=> b!7839474 m!8252956))

(declare-fun m!8252958 () Bool)

(assert (=> b!7839474 m!8252958))

(declare-fun m!8252960 () Bool)

(assert (=> b!7839474 m!8252960))

(declare-fun m!8252962 () Bool)

(assert (=> b!7839481 m!8252962))

(declare-fun m!8252964 () Bool)

(assert (=> b!7839481 m!8252964))

(declare-fun m!8252966 () Bool)

(assert (=> b!7839483 m!8252966))

(declare-fun m!8252968 () Bool)

(assert (=> start!742538 m!8252968))

(declare-fun m!8252970 () Bool)

(assert (=> b!7839480 m!8252970))

(declare-fun m!8252972 () Bool)

(assert (=> b!7839470 m!8252972))

(check-sat (not b!7839469) (not start!742538) (not b!7839484) (not b!7839480) (not b!7839481) (not b!7839483) (not b!7839473) tp_is_empty!52385 (not b!7839476) (not b!7839475) (not b!7839477) (not b!7839474) (not b!7839479) (not b!7839470) (not b!7839486) (not b!7839471) (not b!7839478) (not b!7839468))
(check-sat)
