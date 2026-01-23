; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239602 () Bool)

(assert start!239602)

(declare-fun b!2455088 () Bool)

(declare-fun e!1557843 () Bool)

(declare-fun e!1557839 () Bool)

(assert (=> b!2455088 (= e!1557843 e!1557839)))

(declare-fun res!1041078 () Bool)

(assert (=> b!2455088 (=> res!1041078 e!1557839)))

(declare-datatypes ((C!14604 0))(
  ( (C!14605 (val!8544 Int)) )
))
(declare-datatypes ((Regex!7223 0))(
  ( (ElementMatch!7223 (c!391795 C!14604)) (Concat!11859 (regOne!14958 Regex!7223) (regTwo!14958 Regex!7223)) (EmptyExpr!7223) (Star!7223 (reg!7552 Regex!7223)) (EmptyLang!7223) (Union!7223 (regOne!14959 Regex!7223) (regTwo!14959 Regex!7223)) )
))
(declare-fun lt!880210 () Regex!7223)

(declare-fun validRegex!2915 (Regex!7223) Bool)

(assert (=> b!2455088 (= res!1041078 (not (validRegex!2915 lt!880210)))))

(declare-datatypes ((List!28682 0))(
  ( (Nil!28584) (Cons!28584 (h!33985 C!14604) (t!208659 List!28682)) )
))
(declare-datatypes ((tuple2!28174 0))(
  ( (tuple2!28175 (_1!16628 List!28682) (_2!16628 List!28682)) )
))
(declare-fun lt!880211 () tuple2!28174)

(declare-datatypes ((Option!5698 0))(
  ( (None!5697) (Some!5697 (v!31105 tuple2!28174)) )
))
(declare-fun lt!880212 () Option!5698)

(declare-fun get!8841 (Option!5698) tuple2!28174)

(assert (=> b!2455088 (= lt!880211 (get!8841 lt!880212))))

(declare-fun b!2455089 () Bool)

(declare-fun e!1557840 () Bool)

(declare-fun tp_is_empty!11859 () Bool)

(declare-fun tp!780886 () Bool)

(assert (=> b!2455089 (= e!1557840 (and tp_is_empty!11859 tp!780886))))

(declare-fun b!2455090 () Bool)

(declare-fun e!1557841 () Bool)

(declare-fun tp!780891 () Bool)

(declare-fun tp!780890 () Bool)

(assert (=> b!2455090 (= e!1557841 (and tp!780891 tp!780890))))

(declare-fun b!2455091 () Bool)

(declare-fun e!1557846 () Bool)

(assert (=> b!2455091 (= e!1557846 e!1557843)))

(declare-fun res!1041079 () Bool)

(assert (=> b!2455091 (=> res!1041079 e!1557843)))

(declare-fun isDefined!4524 (Option!5698) Bool)

(assert (=> b!2455091 (= res!1041079 (not (isDefined!4524 lt!880212)))))

(declare-fun s!9460 () List!28682)

(declare-fun findConcatSeparation!806 (Regex!7223 Regex!7223 List!28682 List!28682 List!28682) Option!5698)

(assert (=> b!2455091 (= lt!880212 (findConcatSeparation!806 lt!880210 EmptyExpr!7223 Nil!28584 s!9460 s!9460))))

(declare-fun b!2455092 () Bool)

(declare-fun res!1041082 () Bool)

(assert (=> b!2455092 (=> res!1041082 e!1557839)))

(assert (=> b!2455092 (= res!1041082 false)))

(declare-fun res!1041072 () Bool)

(declare-fun e!1557842 () Bool)

(assert (=> start!239602 (=> (not res!1041072) (not e!1557842))))

(declare-datatypes ((List!28683 0))(
  ( (Nil!28585) (Cons!28585 (h!33986 Regex!7223) (t!208660 List!28683)) )
))
(declare-fun l!9164 () List!28683)

(declare-fun lambda!93009 () Int)

(declare-fun forall!5857 (List!28683 Int) Bool)

(assert (=> start!239602 (= res!1041072 (forall!5857 l!9164 lambda!93009))))

(assert (=> start!239602 e!1557842))

(assert (=> start!239602 e!1557841))

(declare-fun e!1557838 () Bool)

(assert (=> start!239602 e!1557838))

(assert (=> start!239602 e!1557840))

(declare-fun b!2455093 () Bool)

(declare-fun e!1557845 () Bool)

(declare-fun e!1557844 () Bool)

(assert (=> b!2455093 (= e!1557845 e!1557844)))

(declare-fun res!1041074 () Bool)

(assert (=> b!2455093 (=> res!1041074 e!1557844)))

(declare-fun lt!880209 () List!28683)

(declare-fun isEmpty!16613 (List!28683) Bool)

(assert (=> b!2455093 (= res!1041074 (not (isEmpty!16613 lt!880209)))))

(declare-fun tail!3876 (List!28683) List!28683)

(assert (=> b!2455093 (= lt!880209 (tail!3876 l!9164))))

(declare-fun b!2455094 () Bool)

(declare-fun res!1041080 () Bool)

(assert (=> b!2455094 (=> res!1041080 e!1557845)))

(assert (=> b!2455094 (= res!1041080 (isEmpty!16613 l!9164))))

(declare-fun b!2455095 () Bool)

(assert (=> b!2455095 (= e!1557842 (not e!1557845))))

(declare-fun res!1041073 () Bool)

(assert (=> b!2455095 (=> res!1041073 e!1557845)))

(declare-fun r!13927 () Regex!7223)

(get-info :version)

(assert (=> b!2455095 (= res!1041073 (or ((_ is Concat!11859) r!13927) ((_ is EmptyExpr!7223) r!13927)))))

(declare-fun matchR!3338 (Regex!7223 List!28682) Bool)

(declare-fun matchRSpec!1070 (Regex!7223 List!28682) Bool)

(assert (=> b!2455095 (= (matchR!3338 r!13927 s!9460) (matchRSpec!1070 r!13927 s!9460))))

(declare-datatypes ((Unit!41901 0))(
  ( (Unit!41902) )
))
(declare-fun lt!880208 () Unit!41901)

(declare-fun mainMatchTheorem!1070 (Regex!7223 List!28682) Unit!41901)

(assert (=> b!2455095 (= lt!880208 (mainMatchTheorem!1070 r!13927 s!9460))))

(declare-fun b!2455096 () Bool)

(declare-fun res!1041076 () Bool)

(assert (=> b!2455096 (=> res!1041076 e!1557839)))

(declare-fun ++!7111 (List!28682 List!28682) List!28682)

(assert (=> b!2455096 (= res!1041076 (not (= s!9460 (++!7111 (_1!16628 lt!880211) (_2!16628 lt!880211)))))))

(declare-fun b!2455097 () Bool)

(declare-fun res!1041075 () Bool)

(assert (=> b!2455097 (=> res!1041075 e!1557844)))

(declare-fun generalisedConcat!324 (List!28683) Regex!7223)

(assert (=> b!2455097 (= res!1041075 (not (= (generalisedConcat!324 lt!880209) EmptyExpr!7223)))))

(declare-fun b!2455098 () Bool)

(declare-fun tp!780887 () Bool)

(assert (=> b!2455098 (= e!1557838 tp!780887)))

(declare-fun b!2455099 () Bool)

(declare-fun tp!780893 () Bool)

(declare-fun tp!780892 () Bool)

(assert (=> b!2455099 (= e!1557838 (and tp!780893 tp!780892))))

(declare-fun b!2455100 () Bool)

(declare-fun res!1041081 () Bool)

(assert (=> b!2455100 (=> (not res!1041081) (not e!1557842))))

(assert (=> b!2455100 (= res!1041081 (= r!13927 (generalisedConcat!324 l!9164)))))

(declare-fun b!2455101 () Bool)

(declare-fun tp!780889 () Bool)

(declare-fun tp!780888 () Bool)

(assert (=> b!2455101 (= e!1557838 (and tp!780889 tp!780888))))

(declare-fun b!2455102 () Bool)

(assert (=> b!2455102 (= e!1557844 e!1557846)))

(declare-fun res!1041077 () Bool)

(assert (=> b!2455102 (=> res!1041077 e!1557846)))

(assert (=> b!2455102 (= res!1041077 (matchR!3338 lt!880210 s!9460))))

(declare-fun head!5603 (List!28683) Regex!7223)

(assert (=> b!2455102 (= lt!880210 (head!5603 l!9164))))

(declare-fun b!2455103 () Bool)

(assert (=> b!2455103 (= e!1557839 (= lt!880211 (tuple2!28175 (_1!16628 lt!880211) (_2!16628 lt!880211))))))

(declare-fun b!2455104 () Bool)

(assert (=> b!2455104 (= e!1557838 tp_is_empty!11859)))

(assert (= (and start!239602 res!1041072) b!2455100))

(assert (= (and b!2455100 res!1041081) b!2455095))

(assert (= (and b!2455095 (not res!1041073)) b!2455094))

(assert (= (and b!2455094 (not res!1041080)) b!2455093))

(assert (= (and b!2455093 (not res!1041074)) b!2455097))

(assert (= (and b!2455097 (not res!1041075)) b!2455102))

(assert (= (and b!2455102 (not res!1041077)) b!2455091))

(assert (= (and b!2455091 (not res!1041079)) b!2455088))

(assert (= (and b!2455088 (not res!1041078)) b!2455092))

(assert (= (and b!2455092 (not res!1041082)) b!2455096))

(assert (= (and b!2455096 (not res!1041076)) b!2455103))

(assert (= (and start!239602 ((_ is Cons!28585) l!9164)) b!2455090))

(assert (= (and start!239602 ((_ is ElementMatch!7223) r!13927)) b!2455104))

(assert (= (and start!239602 ((_ is Concat!11859) r!13927)) b!2455099))

(assert (= (and start!239602 ((_ is Star!7223) r!13927)) b!2455098))

(assert (= (and start!239602 ((_ is Union!7223) r!13927)) b!2455101))

(assert (= (and start!239602 ((_ is Cons!28584) s!9460)) b!2455089))

(declare-fun m!2826659 () Bool)

(assert (=> b!2455095 m!2826659))

(declare-fun m!2826661 () Bool)

(assert (=> b!2455095 m!2826661))

(declare-fun m!2826663 () Bool)

(assert (=> b!2455095 m!2826663))

(declare-fun m!2826665 () Bool)

(assert (=> b!2455091 m!2826665))

(declare-fun m!2826667 () Bool)

(assert (=> b!2455091 m!2826667))

(declare-fun m!2826669 () Bool)

(assert (=> start!239602 m!2826669))

(declare-fun m!2826671 () Bool)

(assert (=> b!2455102 m!2826671))

(declare-fun m!2826673 () Bool)

(assert (=> b!2455102 m!2826673))

(declare-fun m!2826675 () Bool)

(assert (=> b!2455093 m!2826675))

(declare-fun m!2826677 () Bool)

(assert (=> b!2455093 m!2826677))

(declare-fun m!2826679 () Bool)

(assert (=> b!2455100 m!2826679))

(declare-fun m!2826681 () Bool)

(assert (=> b!2455096 m!2826681))

(declare-fun m!2826683 () Bool)

(assert (=> b!2455088 m!2826683))

(declare-fun m!2826685 () Bool)

(assert (=> b!2455088 m!2826685))

(declare-fun m!2826687 () Bool)

(assert (=> b!2455094 m!2826687))

(declare-fun m!2826689 () Bool)

(assert (=> b!2455097 m!2826689))

(check-sat (not b!2455093) (not b!2455102) (not start!239602) tp_is_empty!11859 (not b!2455091) (not b!2455100) (not b!2455097) (not b!2455094) (not b!2455098) (not b!2455096) (not b!2455088) (not b!2455090) (not b!2455099) (not b!2455095) (not b!2455089) (not b!2455101))
(check-sat)
