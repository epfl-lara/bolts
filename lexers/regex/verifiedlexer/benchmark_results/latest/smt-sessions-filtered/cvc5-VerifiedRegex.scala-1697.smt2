; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85424 () Bool)

(assert start!85424)

(declare-fun b!958976 () Bool)

(assert (=> b!958976 true))

(assert (=> b!958976 true))

(assert (=> b!958976 true))

(declare-fun lambda!33268 () Int)

(declare-fun lambda!33267 () Int)

(assert (=> b!958976 (not (= lambda!33268 lambda!33267))))

(assert (=> b!958976 true))

(assert (=> b!958976 true))

(assert (=> b!958976 true))

(declare-fun res!435787 () Bool)

(declare-fun e!619686 () Bool)

(assert (=> start!85424 (=> (not res!435787) (not e!619686))))

(declare-datatypes ((C!5874 0))(
  ( (C!5875 (val!3185 Int)) )
))
(declare-datatypes ((Regex!2652 0))(
  ( (ElementMatch!2652 (c!156212 C!5874)) (Concat!4485 (regOne!5816 Regex!2652) (regTwo!5816 Regex!2652)) (EmptyExpr!2652) (Star!2652 (reg!2981 Regex!2652)) (EmptyLang!2652) (Union!2652 (regOne!5817 Regex!2652) (regTwo!5817 Regex!2652)) )
))
(declare-fun r!15766 () Regex!2652)

(declare-fun validRegex!1121 (Regex!2652) Bool)

(assert (=> start!85424 (= res!435787 (validRegex!1121 r!15766))))

(assert (=> start!85424 e!619686))

(declare-fun e!619682 () Bool)

(assert (=> start!85424 e!619682))

(declare-fun e!619683 () Bool)

(assert (=> start!85424 e!619683))

(declare-fun b!958970 () Bool)

(declare-fun e!619685 () Bool)

(assert (=> b!958970 (= e!619686 (not e!619685))))

(declare-fun res!435792 () Bool)

(assert (=> b!958970 (=> res!435792 e!619685)))

(declare-fun lt!346094 () Bool)

(assert (=> b!958970 (= res!435792 (or (not lt!346094) (and (is-Concat!4485 r!15766) (is-EmptyExpr!2652 (regOne!5816 r!15766))) (and (is-Concat!4485 r!15766) (is-EmptyExpr!2652 (regTwo!5816 r!15766))) (is-Concat!4485 r!15766) (is-Union!2652 r!15766) (not (is-Star!2652 r!15766))))))

(declare-datatypes ((List!9882 0))(
  ( (Nil!9866) (Cons!9866 (h!15267 C!5874) (t!100928 List!9882)) )
))
(declare-fun s!10566 () List!9882)

(declare-fun matchRSpec!453 (Regex!2652 List!9882) Bool)

(assert (=> b!958970 (= lt!346094 (matchRSpec!453 r!15766 s!10566))))

(declare-fun matchR!1190 (Regex!2652 List!9882) Bool)

(assert (=> b!958970 (= lt!346094 (matchR!1190 r!15766 s!10566))))

(declare-datatypes ((Unit!14947 0))(
  ( (Unit!14948) )
))
(declare-fun lt!346096 () Unit!14947)

(declare-fun mainMatchTheorem!453 (Regex!2652 List!9882) Unit!14947)

(assert (=> b!958970 (= lt!346096 (mainMatchTheorem!453 r!15766 s!10566))))

(declare-fun b!958971 () Bool)

(declare-fun tp!294985 () Bool)

(declare-fun tp!294986 () Bool)

(assert (=> b!958971 (= e!619682 (and tp!294985 tp!294986))))

(declare-fun b!958972 () Bool)

(declare-fun tp_is_empty!4947 () Bool)

(declare-fun tp!294983 () Bool)

(assert (=> b!958972 (= e!619683 (and tp_is_empty!4947 tp!294983))))

(declare-fun b!958973 () Bool)

(declare-fun tp!294984 () Bool)

(declare-fun tp!294982 () Bool)

(assert (=> b!958973 (= e!619682 (and tp!294984 tp!294982))))

(declare-fun b!958974 () Bool)

(assert (=> b!958974 (= e!619682 tp_is_empty!4947)))

(declare-fun b!958975 () Bool)

(declare-fun e!619684 () Unit!14947)

(declare-fun Unit!14949 () Unit!14947)

(assert (=> b!958975 (= e!619684 Unit!14949)))

(declare-fun lt!346100 () Unit!14947)

(declare-datatypes ((tuple2!11190 0))(
  ( (tuple2!11191 (_1!6421 List!9882) (_2!6421 List!9882)) )
))
(declare-fun lt!346099 () tuple2!11190)

(assert (=> b!958975 (= lt!346100 (mainMatchTheorem!453 (reg!2981 r!15766) (_1!6421 lt!346099)))))

(assert (=> b!958975 false))

(declare-fun e!619680 () Bool)

(assert (=> b!958976 (= e!619685 e!619680)))

(declare-fun res!435788 () Bool)

(assert (=> b!958976 (=> res!435788 e!619680)))

(declare-fun isEmpty!6152 (List!9882) Bool)

(assert (=> b!958976 (= res!435788 (isEmpty!6152 s!10566))))

(declare-fun Exists!399 (Int) Bool)

(assert (=> b!958976 (= (Exists!399 lambda!33267) (Exists!399 lambda!33268))))

(declare-fun lt!346102 () Unit!14947)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!127 (Regex!2652 List!9882) Unit!14947)

(assert (=> b!958976 (= lt!346102 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!127 (reg!2981 r!15766) s!10566))))

(declare-fun lt!346097 () Bool)

(assert (=> b!958976 (= lt!346097 (Exists!399 lambda!33267))))

(declare-datatypes ((Option!2237 0))(
  ( (None!2236) (Some!2236 (v!19653 tuple2!11190)) )
))
(declare-fun lt!346092 () Option!2237)

(declare-fun isDefined!1879 (Option!2237) Bool)

(assert (=> b!958976 (= lt!346097 (isDefined!1879 lt!346092))))

(declare-fun lt!346103 () Regex!2652)

(declare-fun findConcatSeparation!343 (Regex!2652 Regex!2652 List!9882 List!9882 List!9882) Option!2237)

(assert (=> b!958976 (= lt!346092 (findConcatSeparation!343 (reg!2981 r!15766) lt!346103 Nil!9866 s!10566 s!10566))))

(declare-fun lt!346101 () Unit!14947)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!343 (Regex!2652 Regex!2652 List!9882) Unit!14947)

(assert (=> b!958976 (= lt!346101 (lemmaFindConcatSeparationEquivalentToExists!343 (reg!2981 r!15766) lt!346103 s!10566))))

(assert (=> b!958976 (= lt!346103 (Star!2652 (reg!2981 r!15766)))))

(declare-fun b!958977 () Bool)

(declare-fun e!619681 () Bool)

(assert (=> b!958977 (= e!619681 true)))

(declare-fun removeUselessConcat!303 (Regex!2652) Regex!2652)

(assert (=> b!958977 (matchR!1190 (removeUselessConcat!303 lt!346103) (_2!6421 lt!346099))))

(declare-fun lt!346098 () Unit!14947)

(declare-fun lemmaRemoveUselessConcatSound!163 (Regex!2652 List!9882) Unit!14947)

(assert (=> b!958977 (= lt!346098 (lemmaRemoveUselessConcatSound!163 lt!346103 (_2!6421 lt!346099)))))

(declare-fun lt!346095 () Unit!14947)

(assert (=> b!958977 (= lt!346095 e!619684)))

(declare-fun c!156211 () Bool)

(declare-fun size!7924 (List!9882) Int)

(assert (=> b!958977 (= c!156211 (= (size!7924 (_2!6421 lt!346099)) (size!7924 s!10566)))))

(assert (=> b!958977 (matchR!1190 (removeUselessConcat!303 (reg!2981 r!15766)) (_1!6421 lt!346099))))

(declare-fun lt!346093 () Unit!14947)

(assert (=> b!958977 (= lt!346093 (lemmaRemoveUselessConcatSound!163 (reg!2981 r!15766) (_1!6421 lt!346099)))))

(declare-fun b!958978 () Bool)

(assert (=> b!958978 (= e!619680 e!619681)))

(declare-fun res!435789 () Bool)

(assert (=> b!958978 (=> res!435789 e!619681)))

(assert (=> b!958978 (= res!435789 (not (matchR!1190 (reg!2981 r!15766) (_1!6421 lt!346099))))))

(declare-fun get!3352 (Option!2237) tuple2!11190)

(assert (=> b!958978 (= lt!346099 (get!3352 lt!346092))))

(declare-fun b!958979 () Bool)

(declare-fun tp!294981 () Bool)

(assert (=> b!958979 (= e!619682 tp!294981)))

(declare-fun b!958980 () Bool)

(declare-fun res!435791 () Bool)

(assert (=> b!958980 (=> res!435791 e!619680)))

(assert (=> b!958980 (= res!435791 (not lt!346097))))

(declare-fun b!958981 () Bool)

(declare-fun Unit!14950 () Unit!14947)

(assert (=> b!958981 (= e!619684 Unit!14950)))

(declare-fun b!958982 () Bool)

(declare-fun res!435790 () Bool)

(assert (=> b!958982 (=> res!435790 e!619681)))

(assert (=> b!958982 (= res!435790 (not (matchR!1190 lt!346103 (_2!6421 lt!346099))))))

(assert (= (and start!85424 res!435787) b!958970))

(assert (= (and b!958970 (not res!435792)) b!958976))

(assert (= (and b!958976 (not res!435788)) b!958980))

(assert (= (and b!958980 (not res!435791)) b!958978))

(assert (= (and b!958978 (not res!435789)) b!958982))

(assert (= (and b!958982 (not res!435790)) b!958977))

(assert (= (and b!958977 c!156211) b!958975))

(assert (= (and b!958977 (not c!156211)) b!958981))

(assert (= (and start!85424 (is-ElementMatch!2652 r!15766)) b!958974))

(assert (= (and start!85424 (is-Concat!4485 r!15766)) b!958971))

(assert (= (and start!85424 (is-Star!2652 r!15766)) b!958979))

(assert (= (and start!85424 (is-Union!2652 r!15766)) b!958973))

(assert (= (and start!85424 (is-Cons!9866 s!10566)) b!958972))

(declare-fun m!1168049 () Bool)

(assert (=> b!958976 m!1168049))

(declare-fun m!1168051 () Bool)

(assert (=> b!958976 m!1168051))

(declare-fun m!1168053 () Bool)

(assert (=> b!958976 m!1168053))

(declare-fun m!1168055 () Bool)

(assert (=> b!958976 m!1168055))

(declare-fun m!1168057 () Bool)

(assert (=> b!958976 m!1168057))

(declare-fun m!1168059 () Bool)

(assert (=> b!958976 m!1168059))

(assert (=> b!958976 m!1168059))

(declare-fun m!1168061 () Bool)

(assert (=> b!958976 m!1168061))

(declare-fun m!1168063 () Bool)

(assert (=> b!958978 m!1168063))

(declare-fun m!1168065 () Bool)

(assert (=> b!958978 m!1168065))

(declare-fun m!1168067 () Bool)

(assert (=> b!958982 m!1168067))

(declare-fun m!1168069 () Bool)

(assert (=> b!958970 m!1168069))

(declare-fun m!1168071 () Bool)

(assert (=> b!958970 m!1168071))

(declare-fun m!1168073 () Bool)

(assert (=> b!958970 m!1168073))

(declare-fun m!1168075 () Bool)

(assert (=> b!958977 m!1168075))

(declare-fun m!1168077 () Bool)

(assert (=> b!958977 m!1168077))

(declare-fun m!1168079 () Bool)

(assert (=> b!958977 m!1168079))

(declare-fun m!1168081 () Bool)

(assert (=> b!958977 m!1168081))

(declare-fun m!1168083 () Bool)

(assert (=> b!958977 m!1168083))

(declare-fun m!1168085 () Bool)

(assert (=> b!958977 m!1168085))

(assert (=> b!958977 m!1168075))

(declare-fun m!1168087 () Bool)

(assert (=> b!958977 m!1168087))

(declare-fun m!1168089 () Bool)

(assert (=> b!958977 m!1168089))

(assert (=> b!958977 m!1168077))

(declare-fun m!1168091 () Bool)

(assert (=> b!958975 m!1168091))

(declare-fun m!1168093 () Bool)

(assert (=> start!85424 m!1168093))

(push 1)

(assert (not b!958970))

(assert (not b!958972))

(assert (not b!958977))

(assert (not b!958973))

(assert (not start!85424))

(assert tp_is_empty!4947)

(assert (not b!958978))

(assert (not b!958976))

(assert (not b!958971))

(assert (not b!958975))

(assert (not b!958982))

(assert (not b!958979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

