; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740218 () Bool)

(assert start!740218)

(declare-fun b!7774505 () Bool)

(declare-fun e!4606023 () Bool)

(assert (=> b!7774505 (= e!4606023 (not true))))

(declare-fun e!4606025 () Bool)

(assert (=> b!7774505 e!4606025))

(declare-fun res!3098968 () Bool)

(assert (=> b!7774505 (=> res!3098968 e!4606025)))

(declare-datatypes ((C!41888 0))(
  ( (C!41889 (val!31384 Int)) )
))
(declare-datatypes ((Regex!20781 0))(
  ( (ElementMatch!20781 (c!1432790 C!41888)) (Concat!29626 (regOne!42074 Regex!20781) (regTwo!42074 Regex!20781)) (EmptyExpr!20781) (Star!20781 (reg!21110 Regex!20781)) (EmptyLang!20781) (Union!20781 (regOne!42075 Regex!20781) (regTwo!42075 Regex!20781)) )
))
(declare-fun lt!2671796 () Regex!20781)

(declare-datatypes ((List!73620 0))(
  ( (Nil!73496) (Cons!73496 (h!79944 C!41888) (t!388355 List!73620)) )
))
(declare-fun s!14292 () List!73620)

(declare-fun matchR!10241 (Regex!20781 List!73620) Bool)

(assert (=> b!7774505 (= res!3098968 (matchR!10241 lt!2671796 (t!388355 s!14292)))))

(declare-fun lt!2671799 () Regex!20781)

(declare-datatypes ((Unit!168464 0))(
  ( (Unit!168465) )
))
(declare-fun lt!2671800 () Unit!168464)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!356 (Regex!20781 Regex!20781 List!73620) Unit!168464)

(assert (=> b!7774505 (= lt!2671800 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!356 lt!2671796 lt!2671799 (t!388355 s!14292)))))

(declare-fun b!7774506 () Bool)

(declare-fun e!4606018 () Bool)

(declare-fun tp!2284507 () Bool)

(assert (=> b!7774506 (= e!4606018 tp!2284507)))

(declare-fun b!7774507 () Bool)

(declare-fun e!4606020 () Bool)

(declare-fun tp_is_empty!51917 () Bool)

(declare-fun tp!2284505 () Bool)

(assert (=> b!7774507 (= e!4606020 (and tp_is_empty!51917 tp!2284505))))

(declare-fun b!7774508 () Bool)

(declare-fun e!4606019 () Bool)

(declare-fun tp!2284506 () Bool)

(declare-fun tp!2284508 () Bool)

(assert (=> b!7774508 (= e!4606019 (and tp!2284506 tp!2284508))))

(declare-fun b!7774509 () Bool)

(declare-fun res!3098963 () Bool)

(declare-fun e!4606022 () Bool)

(assert (=> b!7774509 (=> (not res!3098963) (not e!4606022))))

(declare-fun r1!6279 () Regex!20781)

(declare-fun nullable!9169 (Regex!20781) Bool)

(assert (=> b!7774509 (= res!3098963 (nullable!9169 r1!6279))))

(declare-fun b!7774510 () Bool)

(declare-fun e!4606024 () Bool)

(assert (=> b!7774510 (= e!4606024 e!4606022)))

(declare-fun res!3098962 () Bool)

(assert (=> b!7774510 (=> (not res!3098962) (not e!4606022))))

(declare-fun lt!2671798 () Regex!20781)

(assert (=> b!7774510 (= res!3098962 (matchR!10241 lt!2671798 (t!388355 s!14292)))))

(declare-fun lt!2671797 () Regex!20781)

(declare-fun derivativeStep!6124 (Regex!20781 C!41888) Regex!20781)

(assert (=> b!7774510 (= lt!2671798 (derivativeStep!6124 lt!2671797 (h!79944 s!14292)))))

(declare-fun b!7774511 () Bool)

(declare-fun tp!2284503 () Bool)

(declare-fun tp!2284510 () Bool)

(assert (=> b!7774511 (= e!4606019 (and tp!2284503 tp!2284510))))

(declare-fun b!7774512 () Bool)

(declare-fun tp!2284501 () Bool)

(declare-fun tp!2284502 () Bool)

(assert (=> b!7774512 (= e!4606018 (and tp!2284501 tp!2284502))))

(declare-fun b!7774513 () Bool)

(declare-fun tp!2284504 () Bool)

(assert (=> b!7774513 (= e!4606019 tp!2284504)))

(declare-fun res!3098961 () Bool)

(declare-fun e!4606021 () Bool)

(assert (=> start!740218 (=> (not res!3098961) (not e!4606021))))

(declare-fun validRegex!11195 (Regex!20781) Bool)

(assert (=> start!740218 (= res!3098961 (validRegex!11195 r1!6279))))

(assert (=> start!740218 e!4606021))

(assert (=> start!740218 e!4606018))

(assert (=> start!740218 e!4606019))

(assert (=> start!740218 e!4606020))

(declare-fun b!7774514 () Bool)

(assert (=> b!7774514 (= e!4606018 tp_is_empty!51917)))

(declare-fun b!7774515 () Bool)

(declare-fun res!3098967 () Bool)

(assert (=> b!7774515 (=> (not res!3098967) (not e!4606021))))

(declare-fun r2!6217 () Regex!20781)

(assert (=> b!7774515 (= res!3098967 (validRegex!11195 r2!6217))))

(declare-fun b!7774516 () Bool)

(assert (=> b!7774516 (= e!4606019 tp_is_empty!51917)))

(declare-fun b!7774517 () Bool)

(declare-fun res!3098964 () Bool)

(assert (=> b!7774517 (=> (not res!3098964) (not e!4606024))))

(get-info :version)

(assert (=> b!7774517 (= res!3098964 ((_ is Cons!73496) s!14292))))

(declare-fun b!7774518 () Bool)

(assert (=> b!7774518 (= e!4606022 e!4606023)))

(declare-fun res!3098965 () Bool)

(assert (=> b!7774518 (=> (not res!3098965) (not e!4606023))))

(assert (=> b!7774518 (= res!3098965 (= lt!2671798 (Union!20781 lt!2671796 lt!2671799)))))

(assert (=> b!7774518 (= lt!2671799 (derivativeStep!6124 r2!6217 (h!79944 s!14292)))))

(assert (=> b!7774518 (= lt!2671796 (Concat!29626 (derivativeStep!6124 r1!6279 (h!79944 s!14292)) r2!6217))))

(declare-fun b!7774519 () Bool)

(assert (=> b!7774519 (= e!4606021 e!4606024)))

(declare-fun res!3098966 () Bool)

(assert (=> b!7774519 (=> (not res!3098966) (not e!4606024))))

(assert (=> b!7774519 (= res!3098966 (matchR!10241 lt!2671797 s!14292))))

(assert (=> b!7774519 (= lt!2671797 (Concat!29626 r1!6279 r2!6217))))

(declare-fun b!7774520 () Bool)

(declare-fun tp!2284509 () Bool)

(declare-fun tp!2284511 () Bool)

(assert (=> b!7774520 (= e!4606018 (and tp!2284509 tp!2284511))))

(declare-fun b!7774521 () Bool)

(assert (=> b!7774521 (= e!4606025 (matchR!10241 lt!2671799 (t!388355 s!14292)))))

(assert (= (and start!740218 res!3098961) b!7774515))

(assert (= (and b!7774515 res!3098967) b!7774519))

(assert (= (and b!7774519 res!3098966) b!7774517))

(assert (= (and b!7774517 res!3098964) b!7774510))

(assert (= (and b!7774510 res!3098962) b!7774509))

(assert (= (and b!7774509 res!3098963) b!7774518))

(assert (= (and b!7774518 res!3098965) b!7774505))

(assert (= (and b!7774505 (not res!3098968)) b!7774521))

(assert (= (and start!740218 ((_ is ElementMatch!20781) r1!6279)) b!7774514))

(assert (= (and start!740218 ((_ is Concat!29626) r1!6279)) b!7774520))

(assert (= (and start!740218 ((_ is Star!20781) r1!6279)) b!7774506))

(assert (= (and start!740218 ((_ is Union!20781) r1!6279)) b!7774512))

(assert (= (and start!740218 ((_ is ElementMatch!20781) r2!6217)) b!7774516))

(assert (= (and start!740218 ((_ is Concat!29626) r2!6217)) b!7774511))

(assert (= (and start!740218 ((_ is Star!20781) r2!6217)) b!7774513))

(assert (= (and start!740218 ((_ is Union!20781) r2!6217)) b!7774508))

(assert (= (and start!740218 ((_ is Cons!73496) s!14292)) b!7774507))

(declare-fun m!8226208 () Bool)

(assert (=> start!740218 m!8226208))

(declare-fun m!8226210 () Bool)

(assert (=> b!7774521 m!8226210))

(declare-fun m!8226212 () Bool)

(assert (=> b!7774515 m!8226212))

(declare-fun m!8226214 () Bool)

(assert (=> b!7774518 m!8226214))

(declare-fun m!8226216 () Bool)

(assert (=> b!7774518 m!8226216))

(declare-fun m!8226218 () Bool)

(assert (=> b!7774519 m!8226218))

(declare-fun m!8226220 () Bool)

(assert (=> b!7774509 m!8226220))

(declare-fun m!8226222 () Bool)

(assert (=> b!7774510 m!8226222))

(declare-fun m!8226224 () Bool)

(assert (=> b!7774510 m!8226224))

(declare-fun m!8226226 () Bool)

(assert (=> b!7774505 m!8226226))

(declare-fun m!8226228 () Bool)

(assert (=> b!7774505 m!8226228))

(check-sat (not b!7774519) tp_is_empty!51917 (not b!7774512) (not b!7774511) (not b!7774509) (not b!7774518) (not b!7774513) (not b!7774510) (not b!7774507) (not b!7774508) (not b!7774521) (not b!7774506) (not start!740218) (not b!7774505) (not b!7774515) (not b!7774520))
(check-sat)
