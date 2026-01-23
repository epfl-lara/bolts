; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91866 () Bool)

(assert start!91866)

(declare-fun b!1075129 () Bool)

(assert (=> b!1075129 true))

(assert (=> b!1075129 true))

(assert (=> b!1075129 true))

(declare-fun lambda!39076 () Int)

(declare-fun lambda!39075 () Int)

(assert (=> b!1075129 (not (= lambda!39076 lambda!39075))))

(assert (=> b!1075129 true))

(assert (=> b!1075129 true))

(assert (=> b!1075129 true))

(declare-fun bs!254203 () Bool)

(declare-fun b!1075132 () Bool)

(assert (= bs!254203 (and b!1075132 b!1075129)))

(declare-datatypes ((C!6472 0))(
  ( (C!6473 (val!3484 Int)) )
))
(declare-datatypes ((Regex!2951 0))(
  ( (ElementMatch!2951 (c!180890 C!6472)) (Concat!4784 (regOne!6414 Regex!2951) (regTwo!6414 Regex!2951)) (EmptyExpr!2951) (Star!2951 (reg!3280 Regex!2951)) (EmptyLang!2951) (Union!2951 (regOne!6415 Regex!2951) (regTwo!6415 Regex!2951)) )
))
(declare-fun lt!361660 () Regex!2951)

(declare-fun lt!361674 () Regex!2951)

(declare-fun r!15766 () Regex!2951)

(declare-fun lt!361668 () Regex!2951)

(declare-fun lambda!39077 () Int)

(assert (=> bs!254203 (= (and (= lt!361668 (reg!3280 r!15766)) (= lt!361674 lt!361660)) (= lambda!39077 lambda!39075))))

(assert (=> bs!254203 (not (= lambda!39077 lambda!39076))))

(assert (=> b!1075132 true))

(assert (=> b!1075132 true))

(assert (=> b!1075132 true))

(declare-fun lambda!39078 () Int)

(assert (=> bs!254203 (not (= lambda!39078 lambda!39075))))

(assert (=> bs!254203 (= (and (= lt!361668 (reg!3280 r!15766)) (= lt!361674 lt!361660)) (= lambda!39078 lambda!39076))))

(assert (=> b!1075132 (not (= lambda!39078 lambda!39077))))

(assert (=> b!1075132 true))

(assert (=> b!1075132 true))

(assert (=> b!1075132 true))

(declare-fun b!1075123 () Bool)

(declare-fun res!479399 () Bool)

(declare-fun e!680737 () Bool)

(assert (=> b!1075123 (=> res!479399 e!680737)))

(declare-fun lt!361675 () Bool)

(assert (=> b!1075123 (= res!479399 (not lt!361675))))

(declare-fun b!1075124 () Bool)

(declare-fun e!680741 () Bool)

(declare-fun tp!321930 () Bool)

(declare-fun tp!321928 () Bool)

(assert (=> b!1075124 (= e!680741 (and tp!321930 tp!321928))))

(declare-fun b!1075125 () Bool)

(declare-fun e!680742 () Bool)

(assert (=> b!1075125 (= e!680737 e!680742)))

(declare-fun res!479403 () Bool)

(assert (=> b!1075125 (=> res!479403 e!680742)))

(declare-datatypes ((List!10181 0))(
  ( (Nil!10165) (Cons!10165 (h!15566 C!6472) (t!101227 List!10181)) )
))
(declare-datatypes ((tuple2!11616 0))(
  ( (tuple2!11617 (_1!6634 List!10181) (_2!6634 List!10181)) )
))
(declare-fun lt!361671 () tuple2!11616)

(declare-fun matchR!1487 (Regex!2951 List!10181) Bool)

(assert (=> b!1075125 (= res!479403 (not (matchR!1487 lt!361668 (_1!6634 lt!361671))))))

(declare-datatypes ((Option!2450 0))(
  ( (None!2449) (Some!2449 (v!19866 tuple2!11616)) )
))
(declare-fun lt!361661 () Option!2450)

(declare-fun get!3675 (Option!2450) tuple2!11616)

(assert (=> b!1075125 (= lt!361671 (get!3675 lt!361661))))

(declare-fun b!1075126 () Bool)

(declare-datatypes ((Unit!15579 0))(
  ( (Unit!15580) )
))
(declare-fun e!680743 () Unit!15579)

(declare-fun Unit!15581 () Unit!15579)

(assert (=> b!1075126 (= e!680743 Unit!15581)))

(declare-fun b!1075127 () Bool)

(declare-fun tp_is_empty!5545 () Bool)

(assert (=> b!1075127 (= e!680741 tp_is_empty!5545)))

(declare-fun b!1075128 () Bool)

(declare-fun tp!321927 () Bool)

(declare-fun tp!321932 () Bool)

(assert (=> b!1075128 (= e!680741 (and tp!321927 tp!321932))))

(declare-fun b!1075130 () Bool)

(declare-fun Unit!15582 () Unit!15579)

(assert (=> b!1075130 (= e!680743 Unit!15582)))

(declare-fun lt!361673 () Unit!15579)

(declare-fun mainMatchTheorem!750 (Regex!2951 List!10181) Unit!15579)

(assert (=> b!1075130 (= lt!361673 (mainMatchTheorem!750 (reg!3280 r!15766) (_1!6634 lt!361671)))))

(assert (=> b!1075130 false))

(declare-fun b!1075131 () Bool)

(declare-fun tp!321929 () Bool)

(assert (=> b!1075131 (= e!680741 tp!321929)))

(declare-fun e!680738 () Bool)

(assert (=> b!1075132 (= e!680738 e!680737)))

(declare-fun res!479397 () Bool)

(assert (=> b!1075132 (=> res!479397 e!680737)))

(declare-fun s!10566 () List!10181)

(declare-fun isEmpty!6596 (List!10181) Bool)

(assert (=> b!1075132 (= res!479397 (isEmpty!6596 s!10566))))

(declare-fun Exists!674 (Int) Bool)

(assert (=> b!1075132 (= (Exists!674 lambda!39077) (Exists!674 lambda!39078))))

(declare-fun lt!361662 () Unit!15579)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!192 (Regex!2951 List!10181) Unit!15579)

(assert (=> b!1075132 (= lt!361662 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!192 lt!361668 s!10566))))

(assert (=> b!1075132 (= lt!361675 (Exists!674 lambda!39077))))

(declare-fun isDefined!2092 (Option!2450) Bool)

(assert (=> b!1075132 (= lt!361675 (isDefined!2092 lt!361661))))

(declare-fun findConcatSeparation!556 (Regex!2951 Regex!2951 List!10181 List!10181 List!10181) Option!2450)

(assert (=> b!1075132 (= lt!361661 (findConcatSeparation!556 lt!361668 lt!361674 Nil!10165 s!10566 s!10566))))

(declare-fun lt!361672 () Unit!15579)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!556 (Regex!2951 Regex!2951 List!10181) Unit!15579)

(assert (=> b!1075132 (= lt!361672 (lemmaFindConcatSeparationEquivalentToExists!556 lt!361668 lt!361674 s!10566))))

(declare-fun matchRSpec!750 (Regex!2951 List!10181) Bool)

(assert (=> b!1075132 (matchRSpec!750 lt!361674 s!10566)))

(declare-fun lt!361665 () Unit!15579)

(assert (=> b!1075132 (= lt!361665 (mainMatchTheorem!750 lt!361674 s!10566))))

(declare-fun b!1075133 () Bool)

(declare-fun validRegex!1420 (Regex!2951) Bool)

(assert (=> b!1075133 (= e!680742 (validRegex!1420 lt!361660))))

(declare-fun lt!361663 () Unit!15579)

(assert (=> b!1075133 (= lt!361663 e!680743)))

(declare-fun c!180889 () Bool)

(declare-fun size!8010 (List!10181) Int)

(assert (=> b!1075133 (= c!180889 (= (size!8010 (_2!6634 lt!361671)) (size!8010 s!10566)))))

(assert (=> b!1075133 (matchR!1487 (reg!3280 r!15766) (_1!6634 lt!361671))))

(declare-fun lt!361664 () Unit!15579)

(declare-fun lemmaRemoveUselessConcatSound!284 (Regex!2951 List!10181) Unit!15579)

(assert (=> b!1075133 (= lt!361664 (lemmaRemoveUselessConcatSound!284 (reg!3280 r!15766) (_1!6634 lt!361671)))))

(declare-fun b!1075134 () Bool)

(declare-fun res!479400 () Bool)

(assert (=> b!1075134 (=> res!479400 e!680742)))

(assert (=> b!1075134 (= res!479400 (not (matchR!1487 lt!361674 (_2!6634 lt!361671))))))

(declare-fun b!1075135 () Bool)

(declare-fun e!680744 () Bool)

(declare-fun tp!321931 () Bool)

(assert (=> b!1075135 (= e!680744 (and tp_is_empty!5545 tp!321931))))

(declare-fun b!1075136 () Bool)

(declare-fun e!680739 () Bool)

(declare-fun e!680740 () Bool)

(assert (=> b!1075136 (= e!680739 (not e!680740))))

(declare-fun res!479398 () Bool)

(assert (=> b!1075136 (=> res!479398 e!680740)))

(declare-fun lt!361666 () Bool)

(get-info :version)

(assert (=> b!1075136 (= res!479398 (or lt!361666 (and ((_ is Concat!4784) r!15766) ((_ is EmptyExpr!2951) (regOne!6414 r!15766))) (and ((_ is Concat!4784) r!15766) ((_ is EmptyExpr!2951) (regTwo!6414 r!15766))) ((_ is Concat!4784) r!15766) ((_ is Union!2951) r!15766) (not ((_ is Star!2951) r!15766))))))

(assert (=> b!1075136 (= lt!361666 (matchRSpec!750 r!15766 s!10566))))

(assert (=> b!1075136 (= lt!361666 (matchR!1487 r!15766 s!10566))))

(declare-fun lt!361667 () Unit!15579)

(assert (=> b!1075136 (= lt!361667 (mainMatchTheorem!750 r!15766 s!10566))))

(assert (=> b!1075129 (= e!680740 e!680738)))

(declare-fun res!479401 () Bool)

(assert (=> b!1075129 (=> res!479401 e!680738)))

(assert (=> b!1075129 (= res!479401 (not (matchR!1487 lt!361674 s!10566)))))

(assert (=> b!1075129 (= lt!361674 (Star!2951 lt!361668))))

(declare-fun removeUselessConcat!492 (Regex!2951) Regex!2951)

(assert (=> b!1075129 (= lt!361668 (removeUselessConcat!492 (reg!3280 r!15766)))))

(assert (=> b!1075129 (= (Exists!674 lambda!39075) (Exists!674 lambda!39076))))

(declare-fun lt!361670 () Unit!15579)

(assert (=> b!1075129 (= lt!361670 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!192 (reg!3280 r!15766) s!10566))))

(assert (=> b!1075129 (= (isDefined!2092 (findConcatSeparation!556 (reg!3280 r!15766) lt!361660 Nil!10165 s!10566 s!10566)) (Exists!674 lambda!39075))))

(declare-fun lt!361669 () Unit!15579)

(assert (=> b!1075129 (= lt!361669 (lemmaFindConcatSeparationEquivalentToExists!556 (reg!3280 r!15766) lt!361660 s!10566))))

(assert (=> b!1075129 (= lt!361660 (Star!2951 (reg!3280 r!15766)))))

(declare-fun res!479402 () Bool)

(assert (=> start!91866 (=> (not res!479402) (not e!680739))))

(assert (=> start!91866 (= res!479402 (validRegex!1420 r!15766))))

(assert (=> start!91866 e!680739))

(assert (=> start!91866 e!680741))

(assert (=> start!91866 e!680744))

(assert (= (and start!91866 res!479402) b!1075136))

(assert (= (and b!1075136 (not res!479398)) b!1075129))

(assert (= (and b!1075129 (not res!479401)) b!1075132))

(assert (= (and b!1075132 (not res!479397)) b!1075123))

(assert (= (and b!1075123 (not res!479399)) b!1075125))

(assert (= (and b!1075125 (not res!479403)) b!1075134))

(assert (= (and b!1075134 (not res!479400)) b!1075133))

(assert (= (and b!1075133 c!180889) b!1075130))

(assert (= (and b!1075133 (not c!180889)) b!1075126))

(assert (= (and start!91866 ((_ is ElementMatch!2951) r!15766)) b!1075127))

(assert (= (and start!91866 ((_ is Concat!4784) r!15766)) b!1075128))

(assert (= (and start!91866 ((_ is Star!2951) r!15766)) b!1075131))

(assert (= (and start!91866 ((_ is Union!2951) r!15766)) b!1075124))

(assert (= (and start!91866 ((_ is Cons!10165) s!10566)) b!1075135))

(declare-fun m!1228557 () Bool)

(assert (=> b!1075133 m!1228557))

(declare-fun m!1228559 () Bool)

(assert (=> b!1075133 m!1228559))

(declare-fun m!1228561 () Bool)

(assert (=> b!1075133 m!1228561))

(declare-fun m!1228563 () Bool)

(assert (=> b!1075133 m!1228563))

(declare-fun m!1228565 () Bool)

(assert (=> b!1075133 m!1228565))

(declare-fun m!1228567 () Bool)

(assert (=> start!91866 m!1228567))

(declare-fun m!1228569 () Bool)

(assert (=> b!1075129 m!1228569))

(declare-fun m!1228571 () Bool)

(assert (=> b!1075129 m!1228571))

(assert (=> b!1075129 m!1228569))

(declare-fun m!1228573 () Bool)

(assert (=> b!1075129 m!1228573))

(declare-fun m!1228575 () Bool)

(assert (=> b!1075129 m!1228575))

(assert (=> b!1075129 m!1228575))

(declare-fun m!1228577 () Bool)

(assert (=> b!1075129 m!1228577))

(declare-fun m!1228579 () Bool)

(assert (=> b!1075129 m!1228579))

(declare-fun m!1228581 () Bool)

(assert (=> b!1075129 m!1228581))

(declare-fun m!1228583 () Bool)

(assert (=> b!1075129 m!1228583))

(declare-fun m!1228585 () Bool)

(assert (=> b!1075125 m!1228585))

(declare-fun m!1228587 () Bool)

(assert (=> b!1075125 m!1228587))

(declare-fun m!1228589 () Bool)

(assert (=> b!1075132 m!1228589))

(assert (=> b!1075132 m!1228589))

(declare-fun m!1228591 () Bool)

(assert (=> b!1075132 m!1228591))

(declare-fun m!1228593 () Bool)

(assert (=> b!1075132 m!1228593))

(declare-fun m!1228595 () Bool)

(assert (=> b!1075132 m!1228595))

(declare-fun m!1228597 () Bool)

(assert (=> b!1075132 m!1228597))

(declare-fun m!1228599 () Bool)

(assert (=> b!1075132 m!1228599))

(declare-fun m!1228601 () Bool)

(assert (=> b!1075132 m!1228601))

(declare-fun m!1228603 () Bool)

(assert (=> b!1075132 m!1228603))

(declare-fun m!1228605 () Bool)

(assert (=> b!1075132 m!1228605))

(declare-fun m!1228607 () Bool)

(assert (=> b!1075136 m!1228607))

(declare-fun m!1228609 () Bool)

(assert (=> b!1075136 m!1228609))

(declare-fun m!1228611 () Bool)

(assert (=> b!1075136 m!1228611))

(declare-fun m!1228613 () Bool)

(assert (=> b!1075134 m!1228613))

(declare-fun m!1228615 () Bool)

(assert (=> b!1075130 m!1228615))

(check-sat (not b!1075130) (not b!1075136) tp_is_empty!5545 (not b!1075128) (not b!1075129) (not start!91866) (not b!1075135) (not b!1075134) (not b!1075124) (not b!1075133) (not b!1075131) (not b!1075132) (not b!1075125))
(check-sat)
