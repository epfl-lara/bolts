; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79498 () Bool)

(assert start!79498)

(declare-fun b!879567 () Bool)

(assert (=> b!879567 true))

(assert (=> b!879567 true))

(declare-fun lambda!26804 () Int)

(declare-fun lambda!26803 () Int)

(assert (=> b!879567 (not (= lambda!26804 lambda!26803))))

(assert (=> b!879567 true))

(assert (=> b!879567 true))

(declare-fun b!879560 () Bool)

(declare-fun e!577605 () Bool)

(declare-fun tp!277931 () Bool)

(assert (=> b!879560 (= e!577605 tp!277931)))

(declare-fun b!879562 () Bool)

(declare-fun e!577604 () Bool)

(declare-fun e!577603 () Bool)

(assert (=> b!879562 (= e!577604 (not e!577603))))

(declare-fun res!399978 () Bool)

(assert (=> b!879562 (=> res!399978 e!577603)))

(declare-fun lt!330368 () Bool)

(declare-datatypes ((C!5060 0))(
  ( (C!5061 (val!2778 Int)) )
))
(declare-datatypes ((Regex!2245 0))(
  ( (ElementMatch!2245 (c!142192 C!5060)) (Concat!4078 (regOne!5002 Regex!2245) (regTwo!5002 Regex!2245)) (EmptyExpr!2245) (Star!2245 (reg!2574 Regex!2245)) (EmptyLang!2245) (Union!2245 (regOne!5003 Regex!2245) (regTwo!5003 Regex!2245)) )
))
(declare-fun r!15766 () Regex!2245)

(get-info :version)

(assert (=> b!879562 (= res!399978 (or (not lt!330368) (and ((_ is Concat!4078) r!15766) ((_ is EmptyExpr!2245) (regOne!5002 r!15766))) (not ((_ is Concat!4078) r!15766)) (not ((_ is EmptyExpr!2245) (regTwo!5002 r!15766)))))))

(declare-datatypes ((List!9475 0))(
  ( (Nil!9459) (Cons!9459 (h!14860 C!5060) (t!100521 List!9475)) )
))
(declare-fun s!10566 () List!9475)

(declare-fun matchRSpec!46 (Regex!2245 List!9475) Bool)

(assert (=> b!879562 (= lt!330368 (matchRSpec!46 r!15766 s!10566))))

(declare-fun matchR!783 (Regex!2245 List!9475) Bool)

(assert (=> b!879562 (= lt!330368 (matchR!783 r!15766 s!10566))))

(declare-datatypes ((Unit!14069 0))(
  ( (Unit!14070) )
))
(declare-fun lt!330366 () Unit!14069)

(declare-fun mainMatchTheorem!46 (Regex!2245 List!9475) Unit!14069)

(assert (=> b!879562 (= lt!330366 (mainMatchTheorem!46 r!15766 s!10566))))

(declare-fun b!879563 () Bool)

(declare-fun tp!277933 () Bool)

(declare-fun tp!277936 () Bool)

(assert (=> b!879563 (= e!577605 (and tp!277933 tp!277936))))

(declare-fun b!879564 () Bool)

(declare-fun tp!277935 () Bool)

(declare-fun tp!277934 () Bool)

(assert (=> b!879564 (= e!577605 (and tp!277935 tp!277934))))

(declare-fun b!879565 () Bool)

(declare-fun tp_is_empty!4133 () Bool)

(assert (=> b!879565 (= e!577605 tp_is_empty!4133)))

(declare-fun b!879566 () Bool)

(declare-fun e!577601 () Bool)

(declare-fun tp!277932 () Bool)

(assert (=> b!879566 (= e!577601 (and tp_is_empty!4133 tp!277932))))

(declare-fun e!577602 () Bool)

(assert (=> b!879567 (= e!577603 e!577602)))

(declare-fun res!399979 () Bool)

(assert (=> b!879567 (=> res!399979 e!577602)))

(declare-datatypes ((tuple2!10580 0))(
  ( (tuple2!10581 (_1!6116 List!9475) (_2!6116 List!9475)) )
))
(declare-fun lt!330370 () tuple2!10580)

(declare-fun isEmpty!5655 (List!9475) Bool)

(assert (=> b!879567 (= res!399979 (not (isEmpty!5655 (_2!6116 lt!330370))))))

(declare-datatypes ((Option!1932 0))(
  ( (None!1931) (Some!1931 (v!19348 tuple2!10580)) )
))
(declare-fun lt!330371 () Option!1932)

(declare-fun get!2925 (Option!1932) tuple2!10580)

(assert (=> b!879567 (= lt!330370 (get!2925 lt!330371))))

(declare-fun Exists!42 (Int) Bool)

(assert (=> b!879567 (= (Exists!42 lambda!26803) (Exists!42 lambda!26804))))

(declare-fun lt!330369 () Unit!14069)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!34 (Regex!2245 Regex!2245 List!9475) Unit!14069)

(assert (=> b!879567 (= lt!330369 (lemmaExistCutMatchRandMatchRSpecEquivalent!34 (regOne!5002 r!15766) EmptyExpr!2245 s!10566))))

(declare-fun isDefined!1574 (Option!1932) Bool)

(assert (=> b!879567 (= (isDefined!1574 lt!330371) (Exists!42 lambda!26803))))

(declare-fun findConcatSeparation!38 (Regex!2245 Regex!2245 List!9475 List!9475 List!9475) Option!1932)

(assert (=> b!879567 (= lt!330371 (findConcatSeparation!38 (regOne!5002 r!15766) EmptyExpr!2245 Nil!9459 s!10566 s!10566))))

(declare-fun lt!330367 () Unit!14069)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!38 (Regex!2245 Regex!2245 List!9475) Unit!14069)

(assert (=> b!879567 (= lt!330367 (lemmaFindConcatSeparationEquivalentToExists!38 (regOne!5002 r!15766) EmptyExpr!2245 s!10566))))

(declare-fun b!879568 () Bool)

(assert (=> b!879568 (= e!577602 true)))

(declare-fun b!879569 () Bool)

(declare-fun res!399976 () Bool)

(assert (=> b!879569 (=> res!399976 e!577603)))

(assert (=> b!879569 (= res!399976 (isEmpty!5655 s!10566))))

(declare-fun b!879561 () Bool)

(declare-fun res!399980 () Bool)

(assert (=> b!879561 (=> res!399980 e!577602)))

(assert (=> b!879561 (= res!399980 (not (matchR!783 (regOne!5002 r!15766) (_1!6116 lt!330370))))))

(declare-fun res!399977 () Bool)

(assert (=> start!79498 (=> (not res!399977) (not e!577604))))

(declare-fun validRegex!714 (Regex!2245) Bool)

(assert (=> start!79498 (= res!399977 (validRegex!714 r!15766))))

(assert (=> start!79498 e!577604))

(assert (=> start!79498 e!577605))

(assert (=> start!79498 e!577601))

(assert (= (and start!79498 res!399977) b!879562))

(assert (= (and b!879562 (not res!399978)) b!879569))

(assert (= (and b!879569 (not res!399976)) b!879567))

(assert (= (and b!879567 (not res!399979)) b!879561))

(assert (= (and b!879561 (not res!399980)) b!879568))

(assert (= (and start!79498 ((_ is ElementMatch!2245) r!15766)) b!879565))

(assert (= (and start!79498 ((_ is Concat!4078) r!15766)) b!879563))

(assert (= (and start!79498 ((_ is Star!2245) r!15766)) b!879560))

(assert (= (and start!79498 ((_ is Union!2245) r!15766)) b!879564))

(assert (= (and start!79498 ((_ is Cons!9459) s!10566)) b!879566))

(declare-fun m!1128579 () Bool)

(assert (=> start!79498 m!1128579))

(declare-fun m!1128581 () Bool)

(assert (=> b!879561 m!1128581))

(declare-fun m!1128583 () Bool)

(assert (=> b!879569 m!1128583))

(declare-fun m!1128585 () Bool)

(assert (=> b!879567 m!1128585))

(declare-fun m!1128587 () Bool)

(assert (=> b!879567 m!1128587))

(declare-fun m!1128589 () Bool)

(assert (=> b!879567 m!1128589))

(declare-fun m!1128591 () Bool)

(assert (=> b!879567 m!1128591))

(declare-fun m!1128593 () Bool)

(assert (=> b!879567 m!1128593))

(declare-fun m!1128595 () Bool)

(assert (=> b!879567 m!1128595))

(declare-fun m!1128597 () Bool)

(assert (=> b!879567 m!1128597))

(assert (=> b!879567 m!1128587))

(declare-fun m!1128599 () Bool)

(assert (=> b!879567 m!1128599))

(declare-fun m!1128601 () Bool)

(assert (=> b!879562 m!1128601))

(declare-fun m!1128603 () Bool)

(assert (=> b!879562 m!1128603))

(declare-fun m!1128605 () Bool)

(assert (=> b!879562 m!1128605))

(check-sat (not b!879564) (not b!879560) (not b!879569) (not b!879567) (not b!879563) (not b!879562) (not start!79498) (not b!879566) (not b!879561) tp_is_empty!4133)
(check-sat)
