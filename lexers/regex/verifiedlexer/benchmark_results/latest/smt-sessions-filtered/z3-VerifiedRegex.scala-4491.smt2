; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238762 () Bool)

(assert start!238762)

(declare-fun b!2439581 () Bool)

(assert (=> b!2439581 true))

(assert (=> b!2439581 true))

(declare-fun lambda!92337 () Int)

(declare-fun lambda!92336 () Int)

(assert (=> b!2439581 (not (= lambda!92337 lambda!92336))))

(assert (=> b!2439581 true))

(assert (=> b!2439581 true))

(declare-fun b!2439565 () Bool)

(declare-fun e!1550165 () Bool)

(declare-fun tp!774577 () Bool)

(declare-fun tp!774578 () Bool)

(assert (=> b!2439565 (= e!1550165 (and tp!774577 tp!774578))))

(declare-fun b!2439566 () Bool)

(declare-fun e!1550158 () Bool)

(declare-fun tp_is_empty!11763 () Bool)

(assert (=> b!2439566 (= e!1550158 tp_is_empty!11763)))

(declare-fun b!2439567 () Bool)

(declare-fun tp!774581 () Bool)

(declare-fun tp!774583 () Bool)

(assert (=> b!2439567 (= e!1550158 (and tp!774581 tp!774583))))

(declare-fun res!1035821 () Bool)

(declare-fun e!1550166 () Bool)

(assert (=> start!238762 (=> (not res!1035821) (not e!1550166))))

(declare-datatypes ((C!14508 0))(
  ( (C!14509 (val!8496 Int)) )
))
(declare-datatypes ((Regex!7175 0))(
  ( (ElementMatch!7175 (c!389217 C!14508)) (Concat!11811 (regOne!14862 Regex!7175) (regTwo!14862 Regex!7175)) (EmptyExpr!7175) (Star!7175 (reg!7504 Regex!7175)) (EmptyLang!7175) (Union!7175 (regOne!14863 Regex!7175) (regTwo!14863 Regex!7175)) )
))
(declare-datatypes ((List!28586 0))(
  ( (Nil!28488) (Cons!28488 (h!33889 Regex!7175) (t!208563 List!28586)) )
))
(declare-fun l!9164 () List!28586)

(declare-fun lambda!92335 () Int)

(declare-fun forall!5809 (List!28586 Int) Bool)

(assert (=> start!238762 (= res!1035821 (forall!5809 l!9164 lambda!92335))))

(assert (=> start!238762 e!1550166))

(assert (=> start!238762 e!1550165))

(assert (=> start!238762 e!1550158))

(declare-fun e!1550163 () Bool)

(assert (=> start!238762 e!1550163))

(declare-fun b!2439568 () Bool)

(declare-fun e!1550157 () Bool)

(declare-fun e!1550161 () Bool)

(assert (=> b!2439568 (= e!1550157 e!1550161)))

(declare-fun res!1035822 () Bool)

(assert (=> b!2439568 (=> res!1035822 e!1550161)))

(declare-fun lt!878158 () Regex!7175)

(declare-fun validRegex!2887 (Regex!7175) Bool)

(assert (=> b!2439568 (= res!1035822 (not (validRegex!2887 lt!878158)))))

(declare-datatypes ((List!28587 0))(
  ( (Nil!28489) (Cons!28489 (h!33890 C!14508) (t!208564 List!28587)) )
))
(declare-datatypes ((tuple2!28106 0))(
  ( (tuple2!28107 (_1!16594 List!28587) (_2!16594 List!28587)) )
))
(declare-fun lt!878161 () tuple2!28106)

(declare-datatypes ((Option!5664 0))(
  ( (None!5663) (Some!5663 (v!31071 tuple2!28106)) )
))
(declare-fun lt!878160 () Option!5664)

(declare-fun get!8792 (Option!5664) tuple2!28106)

(assert (=> b!2439568 (= lt!878161 (get!8792 lt!878160))))

(declare-fun b!2439569 () Bool)

(declare-fun res!1035819 () Bool)

(assert (=> b!2439569 (=> res!1035819 e!1550161)))

(declare-fun s!9460 () List!28587)

(declare-fun ++!7078 (List!28587 List!28587) List!28587)

(assert (=> b!2439569 (= res!1035819 (not (= s!9460 (++!7078 (_1!16594 lt!878161) (_2!16594 lt!878161)))))))

(declare-fun b!2439570 () Bool)

(declare-fun e!1550160 () Bool)

(declare-fun e!1550162 () Bool)

(assert (=> b!2439570 (= e!1550160 e!1550162)))

(declare-fun res!1035820 () Bool)

(assert (=> b!2439570 (=> res!1035820 e!1550162)))

(declare-fun lt!878166 () List!28586)

(declare-fun isEmpty!16529 (List!28586) Bool)

(assert (=> b!2439570 (= res!1035820 (not (isEmpty!16529 lt!878166)))))

(declare-fun tail!3814 (List!28586) List!28586)

(assert (=> b!2439570 (= lt!878166 (tail!3814 l!9164))))

(declare-fun b!2439571 () Bool)

(declare-fun res!1035817 () Bool)

(assert (=> b!2439571 (=> res!1035817 e!1550161)))

(assert (=> b!2439571 (= res!1035817 false)))

(declare-fun b!2439572 () Bool)

(declare-fun tp!774580 () Bool)

(declare-fun tp!774582 () Bool)

(assert (=> b!2439572 (= e!1550158 (and tp!774580 tp!774582))))

(declare-fun b!2439573 () Bool)

(declare-fun tp!774576 () Bool)

(assert (=> b!2439573 (= e!1550163 (and tp_is_empty!11763 tp!774576))))

(declare-fun b!2439574 () Bool)

(assert (=> b!2439574 (= e!1550161 (= lt!878161 (tuple2!28107 (_1!16594 lt!878161) (_2!16594 lt!878161))))))

(declare-fun b!2439575 () Bool)

(declare-fun tp!774579 () Bool)

(assert (=> b!2439575 (= e!1550158 tp!774579)))

(declare-fun b!2439576 () Bool)

(declare-fun e!1550159 () Bool)

(assert (=> b!2439576 (= e!1550166 (not e!1550159))))

(declare-fun res!1035816 () Bool)

(assert (=> b!2439576 (=> res!1035816 e!1550159)))

(declare-fun r!13927 () Regex!7175)

(get-info :version)

(assert (=> b!2439576 (= res!1035816 (not ((_ is Concat!11811) r!13927)))))

(declare-fun lt!878157 () Bool)

(declare-fun lt!878164 () Bool)

(assert (=> b!2439576 (= lt!878157 lt!878164)))

(declare-fun matchRSpec!1022 (Regex!7175 List!28587) Bool)

(assert (=> b!2439576 (= lt!878164 (matchRSpec!1022 r!13927 s!9460))))

(declare-fun matchR!3290 (Regex!7175 List!28587) Bool)

(assert (=> b!2439576 (= lt!878157 (matchR!3290 r!13927 s!9460))))

(declare-datatypes ((Unit!41733 0))(
  ( (Unit!41734) )
))
(declare-fun lt!878162 () Unit!41733)

(declare-fun mainMatchTheorem!1022 (Regex!7175 List!28587) Unit!41733)

(assert (=> b!2439576 (= lt!878162 (mainMatchTheorem!1022 r!13927 s!9460))))

(declare-fun b!2439577 () Bool)

(declare-fun res!1035811 () Bool)

(assert (=> b!2439577 (=> (not res!1035811) (not e!1550166))))

(declare-fun generalisedConcat!276 (List!28586) Regex!7175)

(assert (=> b!2439577 (= res!1035811 (= r!13927 (generalisedConcat!276 l!9164)))))

(declare-fun b!2439578 () Bool)

(declare-fun e!1550164 () Bool)

(assert (=> b!2439578 (= e!1550162 e!1550164)))

(declare-fun res!1035818 () Bool)

(assert (=> b!2439578 (=> res!1035818 e!1550164)))

(assert (=> b!2439578 (= res!1035818 (matchR!3290 lt!878158 s!9460))))

(declare-fun head!5541 (List!28586) Regex!7175)

(assert (=> b!2439578 (= lt!878158 (head!5541 l!9164))))

(declare-fun b!2439579 () Bool)

(declare-fun res!1035815 () Bool)

(assert (=> b!2439579 (=> res!1035815 e!1550160)))

(assert (=> b!2439579 (= res!1035815 (isEmpty!16529 l!9164))))

(declare-fun b!2439580 () Bool)

(declare-fun res!1035812 () Bool)

(assert (=> b!2439580 (=> res!1035812 e!1550162)))

(assert (=> b!2439580 (= res!1035812 (not (= (generalisedConcat!276 lt!878166) EmptyExpr!7175)))))

(assert (=> b!2439581 (= e!1550159 e!1550160)))

(declare-fun res!1035813 () Bool)

(assert (=> b!2439581 (=> res!1035813 e!1550160)))

(declare-fun lt!878163 () Bool)

(assert (=> b!2439581 (= res!1035813 (not (= lt!878164 lt!878163)))))

(declare-fun Exists!1211 (Int) Bool)

(assert (=> b!2439581 (= (Exists!1211 lambda!92336) (Exists!1211 lambda!92337))))

(declare-fun lt!878159 () Unit!41733)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!456 (Regex!7175 Regex!7175 List!28587) Unit!41733)

(assert (=> b!2439581 (= lt!878159 (lemmaExistCutMatchRandMatchRSpecEquivalent!456 (regOne!14862 r!13927) (regTwo!14862 r!13927) s!9460))))

(assert (=> b!2439581 (= lt!878163 (Exists!1211 lambda!92336))))

(declare-fun isDefined!4490 (Option!5664) Bool)

(declare-fun findConcatSeparation!772 (Regex!7175 Regex!7175 List!28587 List!28587 List!28587) Option!5664)

(assert (=> b!2439581 (= lt!878163 (isDefined!4490 (findConcatSeparation!772 (regOne!14862 r!13927) (regTwo!14862 r!13927) Nil!28489 s!9460 s!9460)))))

(declare-fun lt!878165 () Unit!41733)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!710 (Regex!7175 Regex!7175 List!28587) Unit!41733)

(assert (=> b!2439581 (= lt!878165 (lemmaFindConcatSeparationEquivalentToExists!710 (regOne!14862 r!13927) (regTwo!14862 r!13927) s!9460))))

(declare-fun b!2439582 () Bool)

(assert (=> b!2439582 (= e!1550164 e!1550157)))

(declare-fun res!1035814 () Bool)

(assert (=> b!2439582 (=> res!1035814 e!1550157)))

(assert (=> b!2439582 (= res!1035814 (not (isDefined!4490 lt!878160)))))

(assert (=> b!2439582 (= lt!878160 (findConcatSeparation!772 lt!878158 EmptyExpr!7175 Nil!28489 s!9460 s!9460))))

(assert (= (and start!238762 res!1035821) b!2439577))

(assert (= (and b!2439577 res!1035811) b!2439576))

(assert (= (and b!2439576 (not res!1035816)) b!2439581))

(assert (= (and b!2439581 (not res!1035813)) b!2439579))

(assert (= (and b!2439579 (not res!1035815)) b!2439570))

(assert (= (and b!2439570 (not res!1035820)) b!2439580))

(assert (= (and b!2439580 (not res!1035812)) b!2439578))

(assert (= (and b!2439578 (not res!1035818)) b!2439582))

(assert (= (and b!2439582 (not res!1035814)) b!2439568))

(assert (= (and b!2439568 (not res!1035822)) b!2439571))

(assert (= (and b!2439571 (not res!1035817)) b!2439569))

(assert (= (and b!2439569 (not res!1035819)) b!2439574))

(assert (= (and start!238762 ((_ is Cons!28488) l!9164)) b!2439565))

(assert (= (and start!238762 ((_ is ElementMatch!7175) r!13927)) b!2439566))

(assert (= (and start!238762 ((_ is Concat!11811) r!13927)) b!2439572))

(assert (= (and start!238762 ((_ is Star!7175) r!13927)) b!2439575))

(assert (= (and start!238762 ((_ is Union!7175) r!13927)) b!2439567))

(assert (= (and start!238762 ((_ is Cons!28489) s!9460)) b!2439573))

(declare-fun m!2817969 () Bool)

(assert (=> b!2439569 m!2817969))

(declare-fun m!2817971 () Bool)

(assert (=> b!2439578 m!2817971))

(declare-fun m!2817973 () Bool)

(assert (=> b!2439578 m!2817973))

(declare-fun m!2817975 () Bool)

(assert (=> b!2439581 m!2817975))

(declare-fun m!2817977 () Bool)

(assert (=> b!2439581 m!2817977))

(declare-fun m!2817979 () Bool)

(assert (=> b!2439581 m!2817979))

(assert (=> b!2439581 m!2817975))

(declare-fun m!2817981 () Bool)

(assert (=> b!2439581 m!2817981))

(assert (=> b!2439581 m!2817981))

(declare-fun m!2817983 () Bool)

(assert (=> b!2439581 m!2817983))

(declare-fun m!2817985 () Bool)

(assert (=> b!2439581 m!2817985))

(declare-fun m!2817987 () Bool)

(assert (=> b!2439579 m!2817987))

(declare-fun m!2817989 () Bool)

(assert (=> start!238762 m!2817989))

(declare-fun m!2817991 () Bool)

(assert (=> b!2439570 m!2817991))

(declare-fun m!2817993 () Bool)

(assert (=> b!2439570 m!2817993))

(declare-fun m!2817995 () Bool)

(assert (=> b!2439580 m!2817995))

(declare-fun m!2817997 () Bool)

(assert (=> b!2439582 m!2817997))

(declare-fun m!2817999 () Bool)

(assert (=> b!2439582 m!2817999))

(declare-fun m!2818001 () Bool)

(assert (=> b!2439568 m!2818001))

(declare-fun m!2818003 () Bool)

(assert (=> b!2439568 m!2818003))

(declare-fun m!2818005 () Bool)

(assert (=> b!2439577 m!2818005))

(declare-fun m!2818007 () Bool)

(assert (=> b!2439576 m!2818007))

(declare-fun m!2818009 () Bool)

(assert (=> b!2439576 m!2818009))

(declare-fun m!2818011 () Bool)

(assert (=> b!2439576 m!2818011))

(check-sat (not b!2439565) (not b!2439578) (not b!2439567) (not b!2439569) (not b!2439568) (not start!238762) (not b!2439570) (not b!2439579) (not b!2439576) (not b!2439581) (not b!2439573) (not b!2439572) (not b!2439577) (not b!2439575) (not b!2439582) (not b!2439580) tp_is_empty!11763)
(check-sat)
