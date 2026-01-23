; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85592 () Bool)

(assert start!85592)

(declare-fun b!960894 () Bool)

(assert (=> b!960894 true))

(assert (=> b!960894 true))

(declare-fun lambda!33454 () Int)

(declare-fun lambda!33453 () Int)

(assert (=> b!960894 (not (= lambda!33454 lambda!33453))))

(assert (=> b!960894 true))

(assert (=> b!960894 true))

(declare-fun b!960890 () Bool)

(declare-fun e!620670 () Bool)

(declare-fun tp!295429 () Bool)

(declare-fun tp!295430 () Bool)

(assert (=> b!960890 (= e!620670 (and tp!295429 tp!295430))))

(declare-fun b!960891 () Bool)

(declare-fun tp!295426 () Bool)

(declare-fun tp!295428 () Bool)

(assert (=> b!960891 (= e!620670 (and tp!295426 tp!295428))))

(declare-fun b!960892 () Bool)

(declare-fun e!620671 () Bool)

(declare-fun e!620673 () Bool)

(assert (=> b!960892 (= e!620671 (not e!620673))))

(declare-fun res!436697 () Bool)

(assert (=> b!960892 (=> res!436697 e!620673)))

(declare-fun lt!346606 () Bool)

(declare-datatypes ((C!5898 0))(
  ( (C!5899 (val!3197 Int)) )
))
(declare-datatypes ((Regex!2664 0))(
  ( (ElementMatch!2664 (c!156509 C!5898)) (Concat!4497 (regOne!5840 Regex!2664) (regTwo!5840 Regex!2664)) (EmptyExpr!2664) (Star!2664 (reg!2993 Regex!2664)) (EmptyLang!2664) (Union!2664 (regOne!5841 Regex!2664) (regTwo!5841 Regex!2664)) )
))
(declare-fun r!15766 () Regex!2664)

(assert (=> b!960892 (= res!436697 (or lt!346606 (and (is-Concat!4497 r!15766) (is-EmptyExpr!2664 (regOne!5840 r!15766))) (not (is-Concat!4497 r!15766)) (not (is-EmptyExpr!2664 (regTwo!5840 r!15766)))))))

(declare-datatypes ((List!9894 0))(
  ( (Nil!9878) (Cons!9878 (h!15279 C!5898) (t!100940 List!9894)) )
))
(declare-fun s!10566 () List!9894)

(declare-fun matchRSpec!465 (Regex!2664 List!9894) Bool)

(assert (=> b!960892 (= lt!346606 (matchRSpec!465 r!15766 s!10566))))

(declare-fun matchR!1202 (Regex!2664 List!9894) Bool)

(assert (=> b!960892 (= lt!346606 (matchR!1202 r!15766 s!10566))))

(declare-datatypes ((Unit!14983 0))(
  ( (Unit!14984) )
))
(declare-fun lt!346609 () Unit!14983)

(declare-fun mainMatchTheorem!465 (Regex!2664 List!9894) Unit!14983)

(assert (=> b!960892 (= lt!346609 (mainMatchTheorem!465 r!15766 s!10566))))

(declare-fun b!960893 () Bool)

(declare-fun res!436699 () Bool)

(declare-fun e!620674 () Bool)

(assert (=> b!960893 (=> res!436699 e!620674)))

(declare-datatypes ((tuple2!11214 0))(
  ( (tuple2!11215 (_1!6433 List!9894) (_2!6433 List!9894)) )
))
(declare-datatypes ((Option!2249 0))(
  ( (None!2248) (Some!2248 (v!19665 tuple2!11214)) )
))
(declare-fun lt!346612 () Option!2249)

(declare-fun isEmpty!6172 (Option!2249) Bool)

(assert (=> b!960893 (= res!436699 (not (isEmpty!6172 lt!346612)))))

(assert (=> b!960894 (= e!620673 e!620674)))

(declare-fun res!436698 () Bool)

(assert (=> b!960894 (=> res!436698 e!620674)))

(declare-fun isEmpty!6173 (List!9894) Bool)

(assert (=> b!960894 (= res!436698 (isEmpty!6173 s!10566))))

(declare-fun Exists!411 (Int) Bool)

(assert (=> b!960894 (= (Exists!411 lambda!33453) (Exists!411 lambda!33454))))

(declare-fun lt!346611 () Unit!14983)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!207 (Regex!2664 Regex!2664 List!9894) Unit!14983)

(assert (=> b!960894 (= lt!346611 (lemmaExistCutMatchRandMatchRSpecEquivalent!207 (regOne!5840 r!15766) EmptyExpr!2664 s!10566))))

(declare-fun isDefined!1891 (Option!2249) Bool)

(assert (=> b!960894 (= (isDefined!1891 lt!346612) (Exists!411 lambda!33453))))

(declare-fun findConcatSeparation!355 (Regex!2664 Regex!2664 List!9894 List!9894 List!9894) Option!2249)

(assert (=> b!960894 (= lt!346612 (findConcatSeparation!355 (regOne!5840 r!15766) EmptyExpr!2664 Nil!9878 s!10566 s!10566))))

(declare-fun lt!346610 () Unit!14983)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!355 (Regex!2664 Regex!2664 List!9894) Unit!14983)

(assert (=> b!960894 (= lt!346610 (lemmaFindConcatSeparationEquivalentToExists!355 (regOne!5840 r!15766) EmptyExpr!2664 s!10566))))

(declare-fun res!436700 () Bool)

(assert (=> start!85592 (=> (not res!436700) (not e!620671))))

(declare-fun validRegex!1133 (Regex!2664) Bool)

(assert (=> start!85592 (= res!436700 (validRegex!1133 r!15766))))

(assert (=> start!85592 e!620671))

(assert (=> start!85592 e!620670))

(declare-fun e!620672 () Bool)

(assert (=> start!85592 e!620672))

(declare-fun b!960895 () Bool)

(declare-fun tp_is_empty!4971 () Bool)

(assert (=> b!960895 (= e!620670 tp_is_empty!4971)))

(declare-fun b!960896 () Bool)

(declare-fun tp!295427 () Bool)

(assert (=> b!960896 (= e!620672 (and tp_is_empty!4971 tp!295427))))

(declare-fun b!960897 () Bool)

(declare-fun lt!346614 () Bool)

(declare-fun lt!346607 () Bool)

(assert (=> b!960897 (= e!620674 (or (not lt!346614) lt!346607))))

(assert (=> b!960897 (= lt!346607 lt!346614)))

(declare-fun lt!346608 () Regex!2664)

(assert (=> b!960897 (= lt!346614 (matchR!1202 lt!346608 s!10566))))

(assert (=> b!960897 (= lt!346607 (matchR!1202 (regOne!5840 r!15766) s!10566))))

(declare-fun removeUselessConcat!311 (Regex!2664) Regex!2664)

(assert (=> b!960897 (= lt!346608 (removeUselessConcat!311 (regOne!5840 r!15766)))))

(declare-fun lt!346613 () Unit!14983)

(declare-fun lemmaRemoveUselessConcatSound!171 (Regex!2664 List!9894) Unit!14983)

(assert (=> b!960897 (= lt!346613 (lemmaRemoveUselessConcatSound!171 (regOne!5840 r!15766) s!10566))))

(declare-fun b!960898 () Bool)

(declare-fun tp!295425 () Bool)

(assert (=> b!960898 (= e!620670 tp!295425)))

(assert (= (and start!85592 res!436700) b!960892))

(assert (= (and b!960892 (not res!436697)) b!960894))

(assert (= (and b!960894 (not res!436698)) b!960893))

(assert (= (and b!960893 (not res!436699)) b!960897))

(assert (= (and start!85592 (is-ElementMatch!2664 r!15766)) b!960895))

(assert (= (and start!85592 (is-Concat!4497 r!15766)) b!960891))

(assert (= (and start!85592 (is-Star!2664 r!15766)) b!960898))

(assert (= (and start!85592 (is-Union!2664 r!15766)) b!960890))

(assert (= (and start!85592 (is-Cons!9878 s!10566)) b!960896))

(declare-fun m!1169041 () Bool)

(assert (=> b!960893 m!1169041))

(declare-fun m!1169043 () Bool)

(assert (=> start!85592 m!1169043))

(declare-fun m!1169045 () Bool)

(assert (=> b!960897 m!1169045))

(declare-fun m!1169047 () Bool)

(assert (=> b!960897 m!1169047))

(declare-fun m!1169049 () Bool)

(assert (=> b!960897 m!1169049))

(declare-fun m!1169051 () Bool)

(assert (=> b!960897 m!1169051))

(declare-fun m!1169053 () Bool)

(assert (=> b!960894 m!1169053))

(declare-fun m!1169055 () Bool)

(assert (=> b!960894 m!1169055))

(declare-fun m!1169057 () Bool)

(assert (=> b!960894 m!1169057))

(declare-fun m!1169059 () Bool)

(assert (=> b!960894 m!1169059))

(assert (=> b!960894 m!1169059))

(declare-fun m!1169061 () Bool)

(assert (=> b!960894 m!1169061))

(declare-fun m!1169063 () Bool)

(assert (=> b!960894 m!1169063))

(declare-fun m!1169065 () Bool)

(assert (=> b!960894 m!1169065))

(declare-fun m!1169067 () Bool)

(assert (=> b!960892 m!1169067))

(declare-fun m!1169069 () Bool)

(assert (=> b!960892 m!1169069))

(declare-fun m!1169071 () Bool)

(assert (=> b!960892 m!1169071))

(push 1)

(assert (not start!85592))

(assert (not b!960893))

(assert (not b!960894))

(assert (not b!960897))

(assert (not b!960898))

(assert (not b!960896))

(assert (not b!960890))

(assert (not b!960892))

(assert (not b!960891))

(assert tp_is_empty!4971)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

