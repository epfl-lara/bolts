; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740290 () Bool)

(assert start!740290)

(declare-fun b!7776046 () Bool)

(declare-fun e!4606803 () Bool)

(declare-fun e!4606802 () Bool)

(assert (=> b!7776046 (= e!4606803 e!4606802)))

(declare-fun res!3099567 () Bool)

(assert (=> b!7776046 (=> (not res!3099567) (not e!4606802))))

(declare-datatypes ((C!41908 0))(
  ( (C!41909 (val!31394 Int)) )
))
(declare-datatypes ((Regex!20791 0))(
  ( (ElementMatch!20791 (c!1433024 C!41908)) (Concat!29636 (regOne!42094 Regex!20791) (regTwo!42094 Regex!20791)) (EmptyExpr!20791) (Star!20791 (reg!21120 Regex!20791)) (EmptyLang!20791) (Union!20791 (regOne!42095 Regex!20791) (regTwo!42095 Regex!20791)) )
))
(declare-fun lt!2672081 () Regex!20791)

(declare-datatypes ((List!73630 0))(
  ( (Nil!73506) (Cons!73506 (h!79954 C!41908) (t!388365 List!73630)) )
))
(declare-fun s!14292 () List!73630)

(declare-fun matchR!10251 (Regex!20791 List!73630) Bool)

(assert (=> b!7776046 (= res!3099567 (matchR!10251 lt!2672081 (t!388365 s!14292)))))

(declare-fun lt!2672084 () Regex!20791)

(declare-fun derivativeStep!6134 (Regex!20791 C!41908) Regex!20791)

(assert (=> b!7776046 (= lt!2672081 (derivativeStep!6134 lt!2672084 (h!79954 s!14292)))))

(declare-fun b!7776048 () Bool)

(declare-fun e!4606804 () Bool)

(declare-fun lt!2672077 () Regex!20791)

(assert (=> b!7776048 (= e!4606804 (matchR!10251 lt!2672077 (t!388365 s!14292)))))

(declare-fun b!7776049 () Bool)

(declare-fun e!4606797 () Bool)

(assert (=> b!7776049 (= e!4606797 true)))

(declare-fun lt!2672078 () Regex!20791)

(declare-fun r2!6217 () Regex!20791)

(declare-datatypes ((tuple2!69876 0))(
  ( (tuple2!69877 (_1!38241 List!73630) (_2!38241 List!73630)) )
))
(declare-datatypes ((Option!17732 0))(
  ( (None!17731) (Some!17731 (v!54866 tuple2!69876)) )
))
(declare-fun isDefined!14344 (Option!17732) Bool)

(declare-fun findConcatSeparation!3762 (Regex!20791 Regex!20791 List!73630 List!73630 List!73630) Option!17732)

(assert (=> b!7776049 (isDefined!14344 (findConcatSeparation!3762 lt!2672078 r2!6217 Nil!73506 (t!388365 s!14292) (t!388365 s!14292)))))

(declare-datatypes ((Unit!168484 0))(
  ( (Unit!168485) )
))
(declare-fun lt!2672083 () Unit!168484)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!352 (Regex!20791 Regex!20791 List!73630) Unit!168484)

(assert (=> b!7776049 (= lt!2672083 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!352 lt!2672078 r2!6217 (t!388365 s!14292)))))

(declare-fun b!7776050 () Bool)

(declare-fun res!3099564 () Bool)

(assert (=> b!7776050 (=> (not res!3099564) (not e!4606802))))

(declare-fun r1!6279 () Regex!20791)

(declare-fun nullable!9179 (Regex!20791) Bool)

(assert (=> b!7776050 (= res!3099564 (nullable!9179 r1!6279))))

(declare-fun b!7776051 () Bool)

(declare-fun e!4606799 () Bool)

(declare-fun tp_is_empty!51937 () Bool)

(declare-fun tp!2285093 () Bool)

(assert (=> b!7776051 (= e!4606799 (and tp_is_empty!51937 tp!2285093))))

(declare-fun b!7776052 () Bool)

(declare-fun e!4606798 () Bool)

(assert (=> b!7776052 (= e!4606798 tp_is_empty!51937)))

(declare-fun b!7776053 () Bool)

(declare-fun res!3099572 () Bool)

(declare-fun e!4606801 () Bool)

(assert (=> b!7776053 (=> (not res!3099572) (not e!4606801))))

(declare-fun validRegex!11205 (Regex!20791) Bool)

(assert (=> b!7776053 (= res!3099572 (validRegex!11205 r2!6217))))

(declare-fun b!7776047 () Bool)

(declare-fun tp!2285083 () Bool)

(assert (=> b!7776047 (= e!4606798 tp!2285083)))

(declare-fun res!3099568 () Bool)

(assert (=> start!740290 (=> (not res!3099568) (not e!4606801))))

(assert (=> start!740290 (= res!3099568 (validRegex!11205 r1!6279))))

(assert (=> start!740290 e!4606801))

(assert (=> start!740290 e!4606798))

(declare-fun e!4606805 () Bool)

(assert (=> start!740290 e!4606805))

(assert (=> start!740290 e!4606799))

(declare-fun b!7776054 () Bool)

(declare-fun e!4606800 () Bool)

(assert (=> b!7776054 (= e!4606800 (not e!4606797))))

(declare-fun res!3099569 () Bool)

(assert (=> b!7776054 (=> res!3099569 e!4606797)))

(declare-fun lt!2672079 () Bool)

(assert (=> b!7776054 (= res!3099569 (not lt!2672079))))

(assert (=> b!7776054 e!4606804))

(declare-fun res!3099571 () Bool)

(assert (=> b!7776054 (=> res!3099571 e!4606804)))

(assert (=> b!7776054 (= res!3099571 lt!2672079)))

(declare-fun lt!2672082 () Regex!20791)

(assert (=> b!7776054 (= lt!2672079 (matchR!10251 lt!2672082 (t!388365 s!14292)))))

(declare-fun lt!2672080 () Unit!168484)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!366 (Regex!20791 Regex!20791 List!73630) Unit!168484)

(assert (=> b!7776054 (= lt!2672080 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!366 lt!2672082 lt!2672077 (t!388365 s!14292)))))

(declare-fun b!7776055 () Bool)

(assert (=> b!7776055 (= e!4606802 e!4606800)))

(declare-fun res!3099566 () Bool)

(assert (=> b!7776055 (=> (not res!3099566) (not e!4606800))))

(assert (=> b!7776055 (= res!3099566 (= lt!2672081 (Union!20791 lt!2672082 lt!2672077)))))

(assert (=> b!7776055 (= lt!2672077 (derivativeStep!6134 r2!6217 (h!79954 s!14292)))))

(assert (=> b!7776055 (= lt!2672082 (Concat!29636 lt!2672078 r2!6217))))

(assert (=> b!7776055 (= lt!2672078 (derivativeStep!6134 r1!6279 (h!79954 s!14292)))))

(declare-fun b!7776056 () Bool)

(declare-fun tp!2285088 () Bool)

(declare-fun tp!2285091 () Bool)

(assert (=> b!7776056 (= e!4606805 (and tp!2285088 tp!2285091))))

(declare-fun b!7776057 () Bool)

(assert (=> b!7776057 (= e!4606805 tp_is_empty!51937)))

(declare-fun b!7776058 () Bool)

(assert (=> b!7776058 (= e!4606801 e!4606803)))

(declare-fun res!3099565 () Bool)

(assert (=> b!7776058 (=> (not res!3099565) (not e!4606803))))

(assert (=> b!7776058 (= res!3099565 (matchR!10251 lt!2672084 s!14292))))

(assert (=> b!7776058 (= lt!2672084 (Concat!29636 r1!6279 r2!6217))))

(declare-fun b!7776059 () Bool)

(declare-fun tp!2285089 () Bool)

(assert (=> b!7776059 (= e!4606805 tp!2285089)))

(declare-fun b!7776060 () Bool)

(declare-fun tp!2285084 () Bool)

(declare-fun tp!2285087 () Bool)

(assert (=> b!7776060 (= e!4606798 (and tp!2285084 tp!2285087))))

(declare-fun b!7776061 () Bool)

(declare-fun tp!2285090 () Bool)

(declare-fun tp!2285086 () Bool)

(assert (=> b!7776061 (= e!4606798 (and tp!2285090 tp!2285086))))

(declare-fun b!7776062 () Bool)

(declare-fun tp!2285085 () Bool)

(declare-fun tp!2285092 () Bool)

(assert (=> b!7776062 (= e!4606805 (and tp!2285085 tp!2285092))))

(declare-fun b!7776063 () Bool)

(declare-fun res!3099570 () Bool)

(assert (=> b!7776063 (=> (not res!3099570) (not e!4606803))))

(get-info :version)

(assert (=> b!7776063 (= res!3099570 ((_ is Cons!73506) s!14292))))

(assert (= (and start!740290 res!3099568) b!7776053))

(assert (= (and b!7776053 res!3099572) b!7776058))

(assert (= (and b!7776058 res!3099565) b!7776063))

(assert (= (and b!7776063 res!3099570) b!7776046))

(assert (= (and b!7776046 res!3099567) b!7776050))

(assert (= (and b!7776050 res!3099564) b!7776055))

(assert (= (and b!7776055 res!3099566) b!7776054))

(assert (= (and b!7776054 (not res!3099571)) b!7776048))

(assert (= (and b!7776054 (not res!3099569)) b!7776049))

(assert (= (and start!740290 ((_ is ElementMatch!20791) r1!6279)) b!7776052))

(assert (= (and start!740290 ((_ is Concat!29636) r1!6279)) b!7776060))

(assert (= (and start!740290 ((_ is Star!20791) r1!6279)) b!7776047))

(assert (= (and start!740290 ((_ is Union!20791) r1!6279)) b!7776061))

(assert (= (and start!740290 ((_ is ElementMatch!20791) r2!6217)) b!7776057))

(assert (= (and start!740290 ((_ is Concat!29636) r2!6217)) b!7776062))

(assert (= (and start!740290 ((_ is Star!20791) r2!6217)) b!7776059))

(assert (= (and start!740290 ((_ is Union!20791) r2!6217)) b!7776056))

(assert (= (and start!740290 ((_ is Cons!73506) s!14292)) b!7776051))

(declare-fun m!8226890 () Bool)

(assert (=> b!7776055 m!8226890))

(declare-fun m!8226892 () Bool)

(assert (=> b!7776055 m!8226892))

(declare-fun m!8226894 () Bool)

(assert (=> b!7776053 m!8226894))

(declare-fun m!8226896 () Bool)

(assert (=> b!7776046 m!8226896))

(declare-fun m!8226898 () Bool)

(assert (=> b!7776046 m!8226898))

(declare-fun m!8226900 () Bool)

(assert (=> b!7776058 m!8226900))

(declare-fun m!8226902 () Bool)

(assert (=> b!7776050 m!8226902))

(declare-fun m!8226904 () Bool)

(assert (=> b!7776049 m!8226904))

(assert (=> b!7776049 m!8226904))

(declare-fun m!8226906 () Bool)

(assert (=> b!7776049 m!8226906))

(declare-fun m!8226908 () Bool)

(assert (=> b!7776049 m!8226908))

(declare-fun m!8226910 () Bool)

(assert (=> b!7776054 m!8226910))

(declare-fun m!8226912 () Bool)

(assert (=> b!7776054 m!8226912))

(declare-fun m!8226914 () Bool)

(assert (=> b!7776048 m!8226914))

(declare-fun m!8226916 () Bool)

(assert (=> start!740290 m!8226916))

(check-sat (not b!7776054) (not b!7776046) (not b!7776056) (not b!7776058) (not b!7776062) (not b!7776055) (not b!7776048) (not b!7776049) (not b!7776061) (not start!740290) tp_is_empty!51937 (not b!7776047) (not b!7776053) (not b!7776051) (not b!7776060) (not b!7776059) (not b!7776050))
(check-sat)
