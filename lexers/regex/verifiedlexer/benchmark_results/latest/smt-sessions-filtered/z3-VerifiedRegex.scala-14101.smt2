; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742502 () Bool)

(assert start!742502)

(declare-fun b!7838517 () Bool)

(declare-fun e!4634863 () Bool)

(declare-fun tp!2319241 () Bool)

(declare-fun tp!2319240 () Bool)

(assert (=> b!7838517 (= e!4634863 (and tp!2319241 tp!2319240))))

(declare-fun b!7838518 () Bool)

(declare-fun res!3117628 () Bool)

(declare-fun e!4634864 () Bool)

(assert (=> b!7838518 (=> (not res!3117628) (not e!4634864))))

(declare-datatypes ((C!42320 0))(
  ( (C!42321 (val!31600 Int)) )
))
(declare-datatypes ((Regex!20997 0))(
  ( (ElementMatch!20997 (c!1441378 C!42320)) (Concat!29842 (regOne!42506 Regex!20997) (regTwo!42506 Regex!20997)) (EmptyExpr!20997) (Star!20997 (reg!21326 Regex!20997)) (EmptyLang!20997) (Union!20997 (regOne!42507 Regex!20997) (regTwo!42507 Regex!20997)) )
))
(declare-fun r1!3326 () Regex!20997)

(declare-datatypes ((List!73834 0))(
  ( (Nil!73710) (Cons!73710 (h!80158 C!42320) (t!388569 List!73834)) )
))
(declare-fun s1!2717 () List!73834)

(declare-fun matchR!10453 (Regex!20997 List!73834) Bool)

(assert (=> b!7838518 (= res!3117628 (matchR!10453 r1!3326 s1!2717))))

(declare-fun b!7838519 () Bool)

(declare-fun e!4634861 () Bool)

(declare-fun tp_is_empty!52349 () Bool)

(assert (=> b!7838519 (= e!4634861 tp_is_empty!52349)))

(declare-fun b!7838520 () Bool)

(assert (=> b!7838520 (= e!4634863 tp_is_empty!52349)))

(declare-fun b!7838521 () Bool)

(declare-fun res!3117627 () Bool)

(assert (=> b!7838521 (=> (not res!3117627) (not e!4634864))))

(declare-fun r2!3226 () Regex!20997)

(declare-fun s2!2463 () List!73834)

(assert (=> b!7838521 (= res!3117627 (matchR!10453 r2!3226 s2!2463))))

(declare-fun b!7838522 () Bool)

(declare-fun e!4634859 () Bool)

(declare-fun tp!2319245 () Bool)

(assert (=> b!7838522 (= e!4634859 (and tp_is_empty!52349 tp!2319245))))

(declare-fun b!7838523 () Bool)

(declare-fun res!3117629 () Bool)

(assert (=> b!7838523 (=> (not res!3117629) (not e!4634864))))

(declare-fun s!10212 () List!73834)

(declare-fun ++!18031 (List!73834 List!73834) List!73834)

(assert (=> b!7838523 (= res!3117629 (= (++!18031 s1!2717 s2!2463) s!10212))))

(declare-fun b!7838524 () Bool)

(declare-fun e!4634865 () Bool)

(assert (=> b!7838524 (= e!4634864 e!4634865)))

(declare-fun res!3117632 () Bool)

(assert (=> b!7838524 (=> (not res!3117632) (not e!4634865))))

(declare-datatypes ((tuple2!70000 0))(
  ( (tuple2!70001 (_1!38303 List!73834) (_2!38303 List!73834)) )
))
(declare-datatypes ((Option!17794 0))(
  ( (None!17793) (Some!17793 (v!54928 tuple2!70000)) )
))
(declare-fun lt!2678243 () Option!17794)

(declare-fun isDefined!14400 (Option!17794) Bool)

(assert (=> b!7838524 (= res!3117632 (isDefined!14400 lt!2678243))))

(assert (=> b!7838524 (= lt!2678243 (Some!17793 (tuple2!70001 s1!2717 s2!2463)))))

(declare-fun b!7838525 () Bool)

(declare-fun tp!2319237 () Bool)

(declare-fun tp!2319246 () Bool)

(assert (=> b!7838525 (= e!4634863 (and tp!2319237 tp!2319246))))

(declare-fun res!3117631 () Bool)

(assert (=> start!742502 (=> (not res!3117631) (not e!4634864))))

(declare-fun validRegex!11411 (Regex!20997) Bool)

(assert (=> start!742502 (= res!3117631 (validRegex!11411 r1!3326))))

(assert (=> start!742502 e!4634864))

(declare-fun e!4634860 () Bool)

(assert (=> start!742502 e!4634860))

(assert (=> start!742502 e!4634861))

(declare-fun e!4634862 () Bool)

(assert (=> start!742502 e!4634862))

(assert (=> start!742502 e!4634863))

(assert (=> start!742502 e!4634859))

(declare-fun b!7838526 () Bool)

(declare-fun tp!2319247 () Bool)

(declare-fun tp!2319236 () Bool)

(assert (=> b!7838526 (= e!4634861 (and tp!2319247 tp!2319236))))

(declare-fun b!7838527 () Bool)

(declare-fun tp!2319235 () Bool)

(assert (=> b!7838527 (= e!4634862 (and tp_is_empty!52349 tp!2319235))))

(declare-fun b!7838528 () Bool)

(declare-fun tp!2319239 () Bool)

(declare-fun tp!2319244 () Bool)

(assert (=> b!7838528 (= e!4634861 (and tp!2319239 tp!2319244))))

(declare-fun b!7838529 () Bool)

(declare-fun res!3117630 () Bool)

(assert (=> b!7838529 (=> (not res!3117630) (not e!4634864))))

(assert (=> b!7838529 (= res!3117630 (validRegex!11411 r2!3226))))

(declare-fun b!7838530 () Bool)

(declare-fun tp!2319242 () Bool)

(assert (=> b!7838530 (= e!4634861 tp!2319242)))

(declare-fun b!7838531 () Bool)

(assert (=> b!7838531 (= e!4634865 false)))

(declare-fun lt!2678244 () Bool)

(declare-fun get!26409 (Option!17794) tuple2!70000)

(assert (=> b!7838531 (= lt!2678244 (matchR!10453 r1!3326 (_1!38303 (get!26409 lt!2678243))))))

(declare-fun b!7838532 () Bool)

(declare-fun tp!2319238 () Bool)

(assert (=> b!7838532 (= e!4634863 tp!2319238)))

(declare-fun b!7838533 () Bool)

(declare-fun tp!2319243 () Bool)

(assert (=> b!7838533 (= e!4634860 (and tp_is_empty!52349 tp!2319243))))

(assert (= (and start!742502 res!3117631) b!7838529))

(assert (= (and b!7838529 res!3117630) b!7838523))

(assert (= (and b!7838523 res!3117629) b!7838518))

(assert (= (and b!7838518 res!3117628) b!7838521))

(assert (= (and b!7838521 res!3117627) b!7838524))

(assert (= (and b!7838524 res!3117632) b!7838531))

(get-info :version)

(assert (= (and start!742502 ((_ is Cons!73710) s1!2717)) b!7838533))

(assert (= (and start!742502 ((_ is ElementMatch!20997) r1!3326)) b!7838519))

(assert (= (and start!742502 ((_ is Concat!29842) r1!3326)) b!7838526))

(assert (= (and start!742502 ((_ is Star!20997) r1!3326)) b!7838530))

(assert (= (and start!742502 ((_ is Union!20997) r1!3326)) b!7838528))

(assert (= (and start!742502 ((_ is Cons!73710) s!10212)) b!7838527))

(assert (= (and start!742502 ((_ is ElementMatch!20997) r2!3226)) b!7838520))

(assert (= (and start!742502 ((_ is Concat!29842) r2!3226)) b!7838517))

(assert (= (and start!742502 ((_ is Star!20997) r2!3226)) b!7838532))

(assert (= (and start!742502 ((_ is Union!20997) r2!3226)) b!7838525))

(assert (= (and start!742502 ((_ is Cons!73710) s2!2463)) b!7838522))

(declare-fun m!8252654 () Bool)

(assert (=> b!7838523 m!8252654))

(declare-fun m!8252656 () Bool)

(assert (=> b!7838521 m!8252656))

(declare-fun m!8252658 () Bool)

(assert (=> start!742502 m!8252658))

(declare-fun m!8252660 () Bool)

(assert (=> b!7838529 m!8252660))

(declare-fun m!8252662 () Bool)

(assert (=> b!7838531 m!8252662))

(declare-fun m!8252664 () Bool)

(assert (=> b!7838531 m!8252664))

(declare-fun m!8252666 () Bool)

(assert (=> b!7838524 m!8252666))

(declare-fun m!8252668 () Bool)

(assert (=> b!7838518 m!8252668))

(check-sat (not start!742502) (not b!7838518) tp_is_empty!52349 (not b!7838530) (not b!7838524) (not b!7838528) (not b!7838533) (not b!7838532) (not b!7838525) (not b!7838523) (not b!7838529) (not b!7838522) (not b!7838527) (not b!7838531) (not b!7838517) (not b!7838521) (not b!7838526))
(check-sat)
