; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79206 () Bool)

(assert start!79206)

(declare-fun b!876090 () Bool)

(assert (=> b!876090 true))

(assert (=> b!876090 true))

(declare-fun lambda!26488 () Int)

(declare-fun lambda!26487 () Int)

(assert (=> b!876090 (not (= lambda!26488 lambda!26487))))

(assert (=> b!876090 true))

(assert (=> b!876090 true))

(declare-fun b!876082 () Bool)

(declare-fun e!575781 () Bool)

(declare-fun tp_is_empty!4085 () Bool)

(assert (=> b!876082 (= e!575781 tp_is_empty!4085)))

(declare-fun b!876083 () Bool)

(declare-fun tp!277044 () Bool)

(declare-fun tp!277043 () Bool)

(assert (=> b!876083 (= e!575781 (and tp!277044 tp!277043))))

(declare-fun b!876084 () Bool)

(declare-fun tp!277047 () Bool)

(declare-fun tp!277048 () Bool)

(assert (=> b!876084 (= e!575781 (and tp!277047 tp!277048))))

(declare-fun b!876085 () Bool)

(declare-fun tp!277045 () Bool)

(assert (=> b!876085 (= e!575781 tp!277045)))

(declare-fun b!876086 () Bool)

(declare-fun e!575780 () Bool)

(declare-fun e!575778 () Bool)

(assert (=> b!876086 (= e!575780 (not e!575778))))

(declare-fun res!398377 () Bool)

(assert (=> b!876086 (=> res!398377 e!575778)))

(declare-fun lt!329771 () Bool)

(declare-datatypes ((C!5012 0))(
  ( (C!5013 (val!2754 Int)) )
))
(declare-datatypes ((Regex!2221 0))(
  ( (ElementMatch!2221 (c!141664 C!5012)) (Concat!4054 (regOne!4954 Regex!2221) (regTwo!4954 Regex!2221)) (EmptyExpr!2221) (Star!2221 (reg!2550 Regex!2221)) (EmptyLang!2221) (Union!2221 (regOne!4955 Regex!2221) (regTwo!4955 Regex!2221)) )
))
(declare-fun r!15766 () Regex!2221)

(get-info :version)

(assert (=> b!876086 (= res!398377 (or (not lt!329771) (not ((_ is Concat!4054) r!15766)) (not ((_ is EmptyExpr!2221) (regOne!4954 r!15766)))))))

(declare-datatypes ((List!9451 0))(
  ( (Nil!9435) (Cons!9435 (h!14836 C!5012) (t!100497 List!9451)) )
))
(declare-fun s!10566 () List!9451)

(declare-fun matchRSpec!22 (Regex!2221 List!9451) Bool)

(assert (=> b!876086 (= lt!329771 (matchRSpec!22 r!15766 s!10566))))

(declare-fun matchR!759 (Regex!2221 List!9451) Bool)

(assert (=> b!876086 (= lt!329771 (matchR!759 r!15766 s!10566))))

(declare-datatypes ((Unit!14021 0))(
  ( (Unit!14022) )
))
(declare-fun lt!329772 () Unit!14021)

(declare-fun mainMatchTheorem!22 (Regex!2221 List!9451) Unit!14021)

(assert (=> b!876086 (= lt!329772 (mainMatchTheorem!22 r!15766 s!10566))))

(declare-fun b!876087 () Bool)

(declare-fun e!575782 () Bool)

(declare-fun e!575783 () Bool)

(assert (=> b!876087 (= e!575782 e!575783)))

(declare-fun res!398374 () Bool)

(assert (=> b!876087 (=> res!398374 e!575783)))

(declare-datatypes ((tuple2!10540 0))(
  ( (tuple2!10541 (_1!6096 List!9451) (_2!6096 List!9451)) )
))
(declare-fun lt!329774 () tuple2!10540)

(declare-fun isEmpty!5624 (List!9451) Bool)

(assert (=> b!876087 (= res!398374 (not (isEmpty!5624 (_1!6096 lt!329774))))))

(declare-datatypes ((Option!1912 0))(
  ( (None!1911) (Some!1911 (v!19328 tuple2!10540)) )
))
(declare-fun lt!329775 () Option!1912)

(declare-fun get!2898 (Option!1912) tuple2!10540)

(assert (=> b!876087 (= lt!329774 (get!2898 lt!329775))))

(declare-fun b!876088 () Bool)

(declare-fun e!575779 () Bool)

(declare-fun tp!277046 () Bool)

(assert (=> b!876088 (= e!575779 (and tp_is_empty!4085 tp!277046))))

(declare-fun b!876089 () Bool)

(declare-fun res!398378 () Bool)

(assert (=> b!876089 (=> res!398378 e!575783)))

(assert (=> b!876089 (= res!398378 (not (matchR!759 (regTwo!4954 r!15766) (_2!6096 lt!329774))))))

(declare-fun res!398376 () Bool)

(assert (=> start!79206 (=> (not res!398376) (not e!575780))))

(declare-fun validRegex!690 (Regex!2221) Bool)

(assert (=> start!79206 (= res!398376 (validRegex!690 r!15766))))

(assert (=> start!79206 e!575780))

(assert (=> start!79206 e!575781))

(assert (=> start!79206 e!575779))

(assert (=> b!876090 (= e!575778 e!575782)))

(declare-fun res!398375 () Bool)

(assert (=> b!876090 (=> res!398375 e!575782)))

(assert (=> b!876090 (= res!398375 (isEmpty!5624 s!10566))))

(declare-fun Exists!20 (Int) Bool)

(assert (=> b!876090 (= (Exists!20 lambda!26487) (Exists!20 lambda!26488))))

(declare-fun lt!329773 () Unit!14021)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!16 (Regex!2221 Regex!2221 List!9451) Unit!14021)

(assert (=> b!876090 (= lt!329773 (lemmaExistCutMatchRandMatchRSpecEquivalent!16 EmptyExpr!2221 (regTwo!4954 r!15766) s!10566))))

(declare-fun isDefined!1554 (Option!1912) Bool)

(assert (=> b!876090 (= (isDefined!1554 lt!329775) (Exists!20 lambda!26487))))

(declare-fun findConcatSeparation!18 (Regex!2221 Regex!2221 List!9451 List!9451 List!9451) Option!1912)

(assert (=> b!876090 (= lt!329775 (findConcatSeparation!18 EmptyExpr!2221 (regTwo!4954 r!15766) Nil!9435 s!10566 s!10566))))

(declare-fun lt!329770 () Unit!14021)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!18 (Regex!2221 Regex!2221 List!9451) Unit!14021)

(assert (=> b!876090 (= lt!329770 (lemmaFindConcatSeparationEquivalentToExists!18 EmptyExpr!2221 (regTwo!4954 r!15766) s!10566))))

(declare-fun b!876091 () Bool)

(assert (=> b!876091 (= e!575783 true)))

(assert (= (and start!79206 res!398376) b!876086))

(assert (= (and b!876086 (not res!398377)) b!876090))

(assert (= (and b!876090 (not res!398375)) b!876087))

(assert (= (and b!876087 (not res!398374)) b!876089))

(assert (= (and b!876089 (not res!398378)) b!876091))

(assert (= (and start!79206 ((_ is ElementMatch!2221) r!15766)) b!876082))

(assert (= (and start!79206 ((_ is Concat!4054) r!15766)) b!876084))

(assert (= (and start!79206 ((_ is Star!2221) r!15766)) b!876085))

(assert (= (and start!79206 ((_ is Union!2221) r!15766)) b!876083))

(assert (= (and start!79206 ((_ is Cons!9435) s!10566)) b!876088))

(declare-fun m!1127045 () Bool)

(assert (=> start!79206 m!1127045))

(declare-fun m!1127047 () Bool)

(assert (=> b!876086 m!1127047))

(declare-fun m!1127049 () Bool)

(assert (=> b!876086 m!1127049))

(declare-fun m!1127051 () Bool)

(assert (=> b!876086 m!1127051))

(declare-fun m!1127053 () Bool)

(assert (=> b!876087 m!1127053))

(declare-fun m!1127055 () Bool)

(assert (=> b!876087 m!1127055))

(declare-fun m!1127057 () Bool)

(assert (=> b!876090 m!1127057))

(declare-fun m!1127059 () Bool)

(assert (=> b!876090 m!1127059))

(assert (=> b!876090 m!1127057))

(declare-fun m!1127061 () Bool)

(assert (=> b!876090 m!1127061))

(declare-fun m!1127063 () Bool)

(assert (=> b!876090 m!1127063))

(declare-fun m!1127065 () Bool)

(assert (=> b!876090 m!1127065))

(declare-fun m!1127067 () Bool)

(assert (=> b!876090 m!1127067))

(declare-fun m!1127069 () Bool)

(assert (=> b!876090 m!1127069))

(declare-fun m!1127071 () Bool)

(assert (=> b!876089 m!1127071))

(check-sat (not start!79206) tp_is_empty!4085 (not b!876087) (not b!876084) (not b!876088) (not b!876086) (not b!876085) (not b!876090) (not b!876089) (not b!876083))
(check-sat)
