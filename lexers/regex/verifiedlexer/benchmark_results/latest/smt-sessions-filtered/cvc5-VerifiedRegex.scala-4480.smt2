; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!238258 () Bool)

(assert start!238258)

(declare-fun b!2433683 () Bool)

(assert (=> b!2433683 true))

(assert (=> b!2433683 true))

(declare-fun lambda!91790 () Int)

(declare-fun lambda!91789 () Int)

(assert (=> b!2433683 (not (= lambda!91790 lambda!91789))))

(assert (=> b!2433683 true))

(assert (=> b!2433683 true))

(declare-fun b!2433677 () Bool)

(declare-fun e!1547065 () Bool)

(declare-fun tp!773024 () Bool)

(declare-fun tp!773022 () Bool)

(assert (=> b!2433677 (= e!1547065 (and tp!773024 tp!773022))))

(declare-fun b!2433678 () Bool)

(declare-fun e!1547064 () Bool)

(declare-fun tp!773028 () Bool)

(declare-fun tp!773026 () Bool)

(assert (=> b!2433678 (= e!1547064 (and tp!773028 tp!773026))))

(declare-fun res!1033083 () Bool)

(declare-fun e!1547062 () Bool)

(assert (=> start!238258 (=> (not res!1033083) (not e!1547062))))

(declare-datatypes ((C!14462 0))(
  ( (C!14463 (val!8473 Int)) )
))
(declare-datatypes ((Regex!7152 0))(
  ( (ElementMatch!7152 (c!388298 C!14462)) (Concat!11788 (regOne!14816 Regex!7152) (regTwo!14816 Regex!7152)) (EmptyExpr!7152) (Star!7152 (reg!7481 Regex!7152)) (EmptyLang!7152) (Union!7152 (regOne!14817 Regex!7152) (regTwo!14817 Regex!7152)) )
))
(declare-datatypes ((List!28540 0))(
  ( (Nil!28442) (Cons!28442 (h!33843 Regex!7152) (t!208517 List!28540)) )
))
(declare-fun l!9164 () List!28540)

(declare-fun lambda!91788 () Int)

(declare-fun forall!5786 (List!28540 Int) Bool)

(assert (=> start!238258 (= res!1033083 (forall!5786 l!9164 lambda!91788))))

(assert (=> start!238258 e!1547062))

(assert (=> start!238258 e!1547065))

(assert (=> start!238258 e!1547064))

(declare-fun e!1547061 () Bool)

(assert (=> start!238258 e!1547061))

(declare-fun b!2433679 () Bool)

(declare-fun e!1547063 () Bool)

(declare-fun isEmpty!16481 (List!28540) Bool)

(assert (=> b!2433679 (= e!1547063 (not (isEmpty!16481 l!9164)))))

(declare-fun b!2433680 () Bool)

(declare-fun tp!773029 () Bool)

(declare-fun tp!773023 () Bool)

(assert (=> b!2433680 (= e!1547064 (and tp!773029 tp!773023))))

(declare-fun b!2433681 () Bool)

(declare-fun tp_is_empty!11717 () Bool)

(assert (=> b!2433681 (= e!1547064 tp_is_empty!11717)))

(declare-fun b!2433682 () Bool)

(declare-fun tp!773027 () Bool)

(assert (=> b!2433682 (= e!1547064 tp!773027)))

(declare-fun e!1547066 () Bool)

(assert (=> b!2433683 (= e!1547066 e!1547063)))

(declare-fun res!1033082 () Bool)

(assert (=> b!2433683 (=> res!1033082 e!1547063)))

(declare-fun lt!877080 () Bool)

(declare-fun lt!877082 () Bool)

(assert (=> b!2433683 (= res!1033082 (not (= lt!877080 lt!877082)))))

(declare-fun Exists!1188 (Int) Bool)

(assert (=> b!2433683 (= (Exists!1188 lambda!91789) (Exists!1188 lambda!91790))))

(declare-datatypes ((Unit!41687 0))(
  ( (Unit!41688) )
))
(declare-fun lt!877084 () Unit!41687)

(declare-fun r!13927 () Regex!7152)

(declare-datatypes ((List!28541 0))(
  ( (Nil!28443) (Cons!28443 (h!33844 C!14462) (t!208518 List!28541)) )
))
(declare-fun s!9460 () List!28541)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!433 (Regex!7152 Regex!7152 List!28541) Unit!41687)

(assert (=> b!2433683 (= lt!877084 (lemmaExistCutMatchRandMatchRSpecEquivalent!433 (regOne!14816 r!13927) (regTwo!14816 r!13927) s!9460))))

(assert (=> b!2433683 (= lt!877082 (Exists!1188 lambda!91789))))

(declare-datatypes ((tuple2!28060 0))(
  ( (tuple2!28061 (_1!16571 List!28541) (_2!16571 List!28541)) )
))
(declare-datatypes ((Option!5641 0))(
  ( (None!5640) (Some!5640 (v!31048 tuple2!28060)) )
))
(declare-fun isDefined!4467 (Option!5641) Bool)

(declare-fun findConcatSeparation!749 (Regex!7152 Regex!7152 List!28541 List!28541 List!28541) Option!5641)

(assert (=> b!2433683 (= lt!877082 (isDefined!4467 (findConcatSeparation!749 (regOne!14816 r!13927) (regTwo!14816 r!13927) Nil!28443 s!9460 s!9460)))))

(declare-fun lt!877081 () Unit!41687)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!687 (Regex!7152 Regex!7152 List!28541) Unit!41687)

(assert (=> b!2433683 (= lt!877081 (lemmaFindConcatSeparationEquivalentToExists!687 (regOne!14816 r!13927) (regTwo!14816 r!13927) s!9460))))

(declare-fun b!2433684 () Bool)

(declare-fun tp!773025 () Bool)

(assert (=> b!2433684 (= e!1547061 (and tp_is_empty!11717 tp!773025))))

(declare-fun b!2433685 () Bool)

(declare-fun res!1033084 () Bool)

(assert (=> b!2433685 (=> (not res!1033084) (not e!1547062))))

(declare-fun generalisedConcat!253 (List!28540) Regex!7152)

(assert (=> b!2433685 (= res!1033084 (= r!13927 (generalisedConcat!253 l!9164)))))

(declare-fun b!2433686 () Bool)

(assert (=> b!2433686 (= e!1547062 (not e!1547066))))

(declare-fun res!1033081 () Bool)

(assert (=> b!2433686 (=> res!1033081 e!1547066)))

(assert (=> b!2433686 (= res!1033081 (not (is-Concat!11788 r!13927)))))

(declare-fun lt!877079 () Bool)

(assert (=> b!2433686 (= lt!877079 lt!877080)))

(declare-fun matchRSpec!999 (Regex!7152 List!28541) Bool)

(assert (=> b!2433686 (= lt!877080 (matchRSpec!999 r!13927 s!9460))))

(declare-fun matchR!3267 (Regex!7152 List!28541) Bool)

(assert (=> b!2433686 (= lt!877079 (matchR!3267 r!13927 s!9460))))

(declare-fun lt!877083 () Unit!41687)

(declare-fun mainMatchTheorem!999 (Regex!7152 List!28541) Unit!41687)

(assert (=> b!2433686 (= lt!877083 (mainMatchTheorem!999 r!13927 s!9460))))

(assert (= (and start!238258 res!1033083) b!2433685))

(assert (= (and b!2433685 res!1033084) b!2433686))

(assert (= (and b!2433686 (not res!1033081)) b!2433683))

(assert (= (and b!2433683 (not res!1033082)) b!2433679))

(assert (= (and start!238258 (is-Cons!28442 l!9164)) b!2433677))

(assert (= (and start!238258 (is-ElementMatch!7152 r!13927)) b!2433681))

(assert (= (and start!238258 (is-Concat!11788 r!13927)) b!2433680))

(assert (= (and start!238258 (is-Star!7152 r!13927)) b!2433682))

(assert (= (and start!238258 (is-Union!7152 r!13927)) b!2433678))

(assert (= (and start!238258 (is-Cons!28443 s!9460)) b!2433684))

(declare-fun m!2814689 () Bool)

(assert (=> b!2433685 m!2814689))

(declare-fun m!2814691 () Bool)

(assert (=> b!2433683 m!2814691))

(declare-fun m!2814693 () Bool)

(assert (=> b!2433683 m!2814693))

(declare-fun m!2814695 () Bool)

(assert (=> b!2433683 m!2814695))

(declare-fun m!2814697 () Bool)

(assert (=> b!2433683 m!2814697))

(assert (=> b!2433683 m!2814691))

(declare-fun m!2814699 () Bool)

(assert (=> b!2433683 m!2814699))

(assert (=> b!2433683 m!2814695))

(declare-fun m!2814701 () Bool)

(assert (=> b!2433683 m!2814701))

(declare-fun m!2814703 () Bool)

(assert (=> start!238258 m!2814703))

(declare-fun m!2814705 () Bool)

(assert (=> b!2433679 m!2814705))

(declare-fun m!2814707 () Bool)

(assert (=> b!2433686 m!2814707))

(declare-fun m!2814709 () Bool)

(assert (=> b!2433686 m!2814709))

(declare-fun m!2814711 () Bool)

(assert (=> b!2433686 m!2814711))

(push 1)

(assert (not b!2433686))

(assert (not b!2433684))

(assert (not b!2433682))

(assert (not start!238258))

(assert (not b!2433677))

(assert (not b!2433685))

(assert (not b!2433678))

(assert tp_is_empty!11717)

(assert (not b!2433680))

(assert (not b!2433683))

(assert (not b!2433679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!703609 () Bool)

(assert (=> d!703609 (= (isEmpty!16481 l!9164) (is-Nil!28442 l!9164))))

(assert (=> b!2433679 d!703609))

(declare-fun d!703611 () Bool)

(declare-fun res!1033113 () Bool)

(declare-fun e!1547095 () Bool)

(assert (=> d!703611 (=> res!1033113 e!1547095)))

(assert (=> d!703611 (= res!1033113 (is-Nil!28442 l!9164))))

(assert (=> d!703611 (= (forall!5786 l!9164 lambda!91788) e!1547095)))

(declare-fun b!2433741 () Bool)

(declare-fun e!1547096 () Bool)

(assert (=> b!2433741 (= e!1547095 e!1547096)))

(declare-fun res!1033114 () Bool)

(assert (=> b!2433741 (=> (not res!1033114) (not e!1547096))))

(declare-fun dynLambda!12242 (Int Regex!7152) Bool)

(assert (=> b!2433741 (= res!1033114 (dynLambda!12242 lambda!91788 (h!33843 l!9164)))))

(declare-fun b!2433742 () Bool)

(assert (=> b!2433742 (= e!1547096 (forall!5786 (t!208517 l!9164) lambda!91788))))

(assert (= (and d!703611 (not res!1033113)) b!2433741))

(assert (= (and b!2433741 res!1033114) b!2433742))

(declare-fun b_lambda!74843 () Bool)

(assert (=> (not b_lambda!74843) (not b!2433741)))

(declare-fun m!2814737 () Bool)

(assert (=> b!2433741 m!2814737))

(declare-fun m!2814739 () Bool)

(assert (=> b!2433742 m!2814739))

(assert (=> start!238258 d!703611))

(declare-fun bs!464339 () Bool)

(declare-fun d!703613 () Bool)

(assert (= bs!464339 (and d!703613 start!238258)))

(declare-fun lambda!91804 () Int)

(assert (=> bs!464339 (= lambda!91804 lambda!91788)))

(declare-fun b!2433763 () Bool)

(declare-fun e!1547111 () Bool)

(declare-fun lt!877105 () Regex!7152)

(declare-fun head!5506 (List!28540) Regex!7152)

(assert (=> b!2433763 (= e!1547111 (= lt!877105 (head!5506 l!9164)))))

(declare-fun b!2433764 () Bool)

(declare-fun e!1547112 () Bool)

(assert (=> b!2433764 (= e!1547112 (isEmpty!16481 (t!208517 l!9164)))))

(declare-fun e!1547109 () Bool)

(assert (=> d!703613 e!1547109))

(declare-fun res!1033120 () Bool)

(assert (=> d!703613 (=> (not res!1033120) (not e!1547109))))

(declare-fun validRegex!2869 (Regex!7152) Bool)

(assert (=> d!703613 (= res!1033120 (validRegex!2869 lt!877105))))

(declare-fun e!1547114 () Regex!7152)

(assert (=> d!703613 (= lt!877105 e!1547114)))

(declare-fun c!388311 () Bool)

(assert (=> d!703613 (= c!388311 e!1547112)))

(declare-fun res!1033119 () Bool)

(assert (=> d!703613 (=> (not res!1033119) (not e!1547112))))

(assert (=> d!703613 (= res!1033119 (is-Cons!28442 l!9164))))

(assert (=> d!703613 (forall!5786 l!9164 lambda!91804)))

(assert (=> d!703613 (= (generalisedConcat!253 l!9164) lt!877105)))

(declare-fun b!2433765 () Bool)

(declare-fun e!1547113 () Regex!7152)

(assert (=> b!2433765 (= e!1547114 e!1547113)))

(declare-fun c!388309 () Bool)

(assert (=> b!2433765 (= c!388309 (is-Cons!28442 l!9164))))

(declare-fun b!2433766 () Bool)

(declare-fun e!1547110 () Bool)

(assert (=> b!2433766 (= e!1547109 e!1547110)))

(declare-fun c!388310 () Bool)

(assert (=> b!2433766 (= c!388310 (isEmpty!16481 l!9164))))

(declare-fun b!2433767 () Bool)

(assert (=> b!2433767 (= e!1547110 e!1547111)))

(declare-fun c!388308 () Bool)

(declare-fun tail!3779 (List!28540) List!28540)

(assert (=> b!2433767 (= c!388308 (isEmpty!16481 (tail!3779 l!9164)))))

(declare-fun b!2433768 () Bool)

(assert (=> b!2433768 (= e!1547113 EmptyExpr!7152)))

(declare-fun b!2433769 () Bool)

(declare-fun isConcat!202 (Regex!7152) Bool)

(assert (=> b!2433769 (= e!1547111 (isConcat!202 lt!877105))))

(declare-fun b!2433770 () Bool)

(declare-fun isEmptyExpr!202 (Regex!7152) Bool)

(assert (=> b!2433770 (= e!1547110 (isEmptyExpr!202 lt!877105))))

(declare-fun b!2433771 () Bool)

(assert (=> b!2433771 (= e!1547113 (Concat!11788 (h!33843 l!9164) (generalisedConcat!253 (t!208517 l!9164))))))

(declare-fun b!2433772 () Bool)

(assert (=> b!2433772 (= e!1547114 (h!33843 l!9164))))

(assert (= (and d!703613 res!1033119) b!2433764))

(assert (= (and d!703613 c!388311) b!2433772))

(assert (= (and d!703613 (not c!388311)) b!2433765))

(assert (= (and b!2433765 c!388309) b!2433771))

(assert (= (and b!2433765 (not c!388309)) b!2433768))

(assert (= (and d!703613 res!1033120) b!2433766))

(assert (= (and b!2433766 c!388310) b!2433770))

(assert (= (and b!2433766 (not c!388310)) b!2433767))

(assert (= (and b!2433767 c!388308) b!2433763))

(assert (= (and b!2433767 (not c!388308)) b!2433769))

(declare-fun m!2814741 () Bool)

(assert (=> b!2433764 m!2814741))

(declare-fun m!2814743 () Bool)

(assert (=> b!2433770 m!2814743))

(declare-fun m!2814745 () Bool)

(assert (=> d!703613 m!2814745))

(declare-fun m!2814747 () Bool)

(assert (=> d!703613 m!2814747))

(declare-fun m!2814749 () Bool)

(assert (=> b!2433771 m!2814749))

(declare-fun m!2814751 () Bool)

(assert (=> b!2433769 m!2814751))

(declare-fun m!2814753 () Bool)

(assert (=> b!2433767 m!2814753))

(assert (=> b!2433767 m!2814753))

(declare-fun m!2814755 () Bool)

(assert (=> b!2433767 m!2814755))

(declare-fun m!2814757 () Bool)

(assert (=> b!2433763 m!2814757))

(assert (=> b!2433766 m!2814705))

(assert (=> b!2433685 d!703613))

(declare-fun d!703617 () Bool)

(declare-fun isEmpty!16483 (Option!5641) Bool)

(assert (=> d!703617 (= (isDefined!4467 (findConcatSeparation!749 (regOne!14816 r!13927) (regTwo!14816 r!13927) Nil!28443 s!9460 s!9460)) (not (isEmpty!16483 (findConcatSeparation!749 (regOne!14816 r!13927) (regTwo!14816 r!13927) Nil!28443 s!9460 s!9460))))))

(declare-fun bs!464340 () Bool)

(assert (= bs!464340 d!703617))

(assert (=> bs!464340 m!2814691))

(declare-fun m!2814759 () Bool)

(assert (=> bs!464340 m!2814759))

(assert (=> b!2433683 d!703617))

(declare-fun d!703621 () Bool)

(declare-fun choose!14423 (Int) Bool)

(assert (=> d!703621 (= (Exists!1188 lambda!91790) (choose!14423 lambda!91790))))

(declare-fun bs!464341 () Bool)

(assert (= bs!464341 d!703621))

(declare-fun m!2814761 () Bool)

(assert (=> bs!464341 m!2814761))

(assert (=> b!2433683 d!703621))

(declare-fun bs!464342 () Bool)

(declare-fun d!703623 () Bool)

(assert (= bs!464342 (and d!703623 b!2433683)))

(declare-fun lambda!91811 () Int)

(assert (=> bs!464342 (= lambda!91811 lambda!91789)))

(assert (=> bs!464342 (not (= lambda!91811 lambda!91790))))

(assert (=> d!703623 true))

(assert (=> d!703623 true))

(assert (=> d!703623 true))

(declare-fun lambda!91812 () Int)

(assert (=> bs!464342 (not (= lambda!91812 lambda!91789))))

(assert (=> bs!464342 (= lambda!91812 lambda!91790)))

(declare-fun bs!464343 () Bool)

(assert (= bs!464343 d!703623))

(assert (=> bs!464343 (not (= lambda!91812 lambda!91811))))

(assert (=> d!703623 true))

(assert (=> d!703623 true))

(assert (=> d!703623 true))

(assert (=> d!703623 (= (Exists!1188 lambda!91811) (Exists!1188 lambda!91812))))

(declare-fun lt!877108 () Unit!41687)

(declare-fun choose!14424 (Regex!7152 Regex!7152 List!28541) Unit!41687)

(assert (=> d!703623 (= lt!877108 (choose!14424 (regOne!14816 r!13927) (regTwo!14816 r!13927) s!9460))))

(assert (=> d!703623 (validRegex!2869 (regOne!14816 r!13927))))

(assert (=> d!703623 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!433 (regOne!14816 r!13927) (regTwo!14816 r!13927) s!9460) lt!877108)))

(declare-fun m!2814763 () Bool)

(assert (=> bs!464343 m!2814763))

(declare-fun m!2814765 () Bool)

(assert (=> bs!464343 m!2814765))

(declare-fun m!2814767 () Bool)

(assert (=> bs!464343 m!2814767))

(declare-fun m!2814769 () Bool)

(assert (=> bs!464343 m!2814769))

(assert (=> b!2433683 d!703623))

(declare-fun b!2433829 () Bool)

(declare-fun e!1547151 () Bool)

(declare-fun lt!877119 () Option!5641)

(assert (=> b!2433829 (= e!1547151 (not (isDefined!4467 lt!877119)))))

(declare-fun b!2433830 () Bool)

(declare-fun res!1033148 () Bool)

(declare-fun e!1547147 () Bool)

(assert (=> b!2433830 (=> (not res!1033148) (not e!1547147))))

(declare-fun get!8768 (Option!5641) tuple2!28060)

(assert (=> b!2433830 (= res!1033148 (matchR!3267 (regTwo!14816 r!13927) (_2!16571 (get!8768 lt!877119))))))

(declare-fun b!2433831 () Bool)

(declare-fun e!1547149 () Option!5641)

(assert (=> b!2433831 (= e!1547149 (Some!5640 (tuple2!28061 Nil!28443 s!9460)))))

(declare-fun b!2433832 () Bool)

(declare-fun e!1547150 () Option!5641)

(assert (=> b!2433832 (= e!1547150 None!5640)))

(declare-fun b!2433833 () Bool)

(assert (=> b!2433833 (= e!1547149 e!1547150)))

(declare-fun c!388328 () Bool)

(assert (=> b!2433833 (= c!388328 (is-Nil!28443 s!9460))))

(declare-fun b!2433834 () Bool)

(declare-fun e!1547148 () Bool)

(assert (=> b!2433834 (= e!1547148 (matchR!3267 (regTwo!14816 r!13927) s!9460))))

(declare-fun b!2433835 () Bool)

(declare-fun lt!877118 () Unit!41687)

(declare-fun lt!877120 () Unit!41687)

(assert (=> b!2433835 (= lt!877118 lt!877120)))

(declare-fun ++!7060 (List!28541 List!28541) List!28541)

(assert (=> b!2433835 (= (++!7060 (++!7060 Nil!28443 (Cons!28443 (h!33844 s!9460) Nil!28443)) (t!208518 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!686 (List!28541 C!14462 List!28541 List!28541) Unit!41687)

(assert (=> b!2433835 (= lt!877120 (lemmaMoveElementToOtherListKeepsConcatEq!686 Nil!28443 (h!33844 s!9460) (t!208518 s!9460) s!9460))))

(assert (=> b!2433835 (= e!1547150 (findConcatSeparation!749 (regOne!14816 r!13927) (regTwo!14816 r!13927) (++!7060 Nil!28443 (Cons!28443 (h!33844 s!9460) Nil!28443)) (t!208518 s!9460) s!9460))))

(declare-fun d!703625 () Bool)

(assert (=> d!703625 e!1547151))

(declare-fun res!1033147 () Bool)

(assert (=> d!703625 (=> res!1033147 e!1547151)))

(assert (=> d!703625 (= res!1033147 e!1547147)))

(declare-fun res!1033145 () Bool)

(assert (=> d!703625 (=> (not res!1033145) (not e!1547147))))

(assert (=> d!703625 (= res!1033145 (isDefined!4467 lt!877119))))

(assert (=> d!703625 (= lt!877119 e!1547149)))

(declare-fun c!388329 () Bool)

(assert (=> d!703625 (= c!388329 e!1547148)))

(declare-fun res!1033146 () Bool)

(assert (=> d!703625 (=> (not res!1033146) (not e!1547148))))

(assert (=> d!703625 (= res!1033146 (matchR!3267 (regOne!14816 r!13927) Nil!28443))))

(assert (=> d!703625 (validRegex!2869 (regOne!14816 r!13927))))

(assert (=> d!703625 (= (findConcatSeparation!749 (regOne!14816 r!13927) (regTwo!14816 r!13927) Nil!28443 s!9460 s!9460) lt!877119)))

(declare-fun b!2433836 () Bool)

(declare-fun res!1033149 () Bool)

(assert (=> b!2433836 (=> (not res!1033149) (not e!1547147))))

(assert (=> b!2433836 (= res!1033149 (matchR!3267 (regOne!14816 r!13927) (_1!16571 (get!8768 lt!877119))))))

(declare-fun b!2433837 () Bool)

(assert (=> b!2433837 (= e!1547147 (= (++!7060 (_1!16571 (get!8768 lt!877119)) (_2!16571 (get!8768 lt!877119))) s!9460))))

(assert (= (and d!703625 res!1033146) b!2433834))

(assert (= (and d!703625 c!388329) b!2433831))

(assert (= (and d!703625 (not c!388329)) b!2433833))

(assert (= (and b!2433833 c!388328) b!2433832))

(assert (= (and b!2433833 (not c!388328)) b!2433835))

(assert (= (and d!703625 res!1033145) b!2433836))

(assert (= (and b!2433836 res!1033149) b!2433830))

(assert (= (and b!2433830 res!1033148) b!2433837))

(assert (= (and d!703625 (not res!1033147)) b!2433829))

(declare-fun m!2814791 () Bool)

(assert (=> b!2433834 m!2814791))

(declare-fun m!2814793 () Bool)

(assert (=> b!2433829 m!2814793))

(declare-fun m!2814795 () Bool)

(assert (=> b!2433835 m!2814795))

(assert (=> b!2433835 m!2814795))

(declare-fun m!2814797 () Bool)

(assert (=> b!2433835 m!2814797))

(declare-fun m!2814799 () Bool)

(assert (=> b!2433835 m!2814799))

(assert (=> b!2433835 m!2814795))

(declare-fun m!2814801 () Bool)

(assert (=> b!2433835 m!2814801))

(declare-fun m!2814803 () Bool)

(assert (=> b!2433837 m!2814803))

(declare-fun m!2814805 () Bool)

(assert (=> b!2433837 m!2814805))

(assert (=> d!703625 m!2814793))

(declare-fun m!2814807 () Bool)

(assert (=> d!703625 m!2814807))

(assert (=> d!703625 m!2814769))

(assert (=> b!2433830 m!2814803))

(declare-fun m!2814809 () Bool)

(assert (=> b!2433830 m!2814809))

(assert (=> b!2433836 m!2814803))

(declare-fun m!2814811 () Bool)

(assert (=> b!2433836 m!2814811))

(assert (=> b!2433683 d!703625))

(declare-fun bs!464346 () Bool)

(declare-fun d!703631 () Bool)

(assert (= bs!464346 (and d!703631 b!2433683)))

(declare-fun lambda!91816 () Int)

(assert (=> bs!464346 (= lambda!91816 lambda!91789)))

(assert (=> bs!464346 (not (= lambda!91816 lambda!91790))))

(declare-fun bs!464347 () Bool)

(assert (= bs!464347 (and d!703631 d!703623)))

(assert (=> bs!464347 (= lambda!91816 lambda!91811)))

(assert (=> bs!464347 (not (= lambda!91816 lambda!91812))))

(assert (=> d!703631 true))

(assert (=> d!703631 true))

(assert (=> d!703631 true))

(assert (=> d!703631 (= (isDefined!4467 (findConcatSeparation!749 (regOne!14816 r!13927) (regTwo!14816 r!13927) Nil!28443 s!9460 s!9460)) (Exists!1188 lambda!91816))))

(declare-fun lt!877123 () Unit!41687)

(declare-fun choose!14425 (Regex!7152 Regex!7152 List!28541) Unit!41687)

(assert (=> d!703631 (= lt!877123 (choose!14425 (regOne!14816 r!13927) (regTwo!14816 r!13927) s!9460))))

(assert (=> d!703631 (validRegex!2869 (regOne!14816 r!13927))))

(assert (=> d!703631 (= (lemmaFindConcatSeparationEquivalentToExists!687 (regOne!14816 r!13927) (regTwo!14816 r!13927) s!9460) lt!877123)))

(declare-fun bs!464348 () Bool)

(assert (= bs!464348 d!703631))

(declare-fun m!2814813 () Bool)

(assert (=> bs!464348 m!2814813))

(declare-fun m!2814815 () Bool)

(assert (=> bs!464348 m!2814815))

(assert (=> bs!464348 m!2814691))

(assert (=> bs!464348 m!2814693))

(assert (=> bs!464348 m!2814691))

(assert (=> bs!464348 m!2814769))

(assert (=> b!2433683 d!703631))

(declare-fun d!703633 () Bool)

(assert (=> d!703633 (= (Exists!1188 lambda!91789) (choose!14423 lambda!91789))))

(declare-fun bs!464349 () Bool)

(assert (= bs!464349 d!703633))

(declare-fun m!2814817 () Bool)

(assert (=> bs!464349 m!2814817))

(assert (=> b!2433683 d!703633))

(declare-fun bs!464352 () Bool)

(declare-fun b!2433885 () Bool)

(assert (= bs!464352 (and b!2433885 b!2433683)))

(declare-fun lambda!91824 () Int)

(assert (=> bs!464352 (not (= lambda!91824 lambda!91789))))

(declare-fun bs!464353 () Bool)

(assert (= bs!464353 (and b!2433885 d!703623)))

(assert (=> bs!464353 (not (= lambda!91824 lambda!91812))))

(declare-fun bs!464354 () Bool)

(assert (= bs!464354 (and b!2433885 d!703631)))

(assert (=> bs!464354 (not (= lambda!91824 lambda!91816))))

(assert (=> bs!464352 (not (= lambda!91824 lambda!91790))))

(assert (=> bs!464353 (not (= lambda!91824 lambda!91811))))

(assert (=> b!2433885 true))

(assert (=> b!2433885 true))

(declare-fun bs!464355 () Bool)

(declare-fun b!2433883 () Bool)

(assert (= bs!464355 (and b!2433883 b!2433683)))

(declare-fun lambda!91825 () Int)

(assert (=> bs!464355 (not (= lambda!91825 lambda!91789))))

(declare-fun bs!464356 () Bool)

(assert (= bs!464356 (and b!2433883 d!703623)))

(assert (=> bs!464356 (= lambda!91825 lambda!91812)))

(declare-fun bs!464357 () Bool)

(assert (= bs!464357 (and b!2433883 d!703631)))

(assert (=> bs!464357 (not (= lambda!91825 lambda!91816))))

(assert (=> bs!464355 (= lambda!91825 lambda!91790)))

(assert (=> bs!464356 (not (= lambda!91825 lambda!91811))))

(declare-fun bs!464358 () Bool)

(assert (= bs!464358 (and b!2433883 b!2433885)))

(assert (=> bs!464358 (not (= lambda!91825 lambda!91824))))

(assert (=> b!2433883 true))

(assert (=> b!2433883 true))

(declare-fun b!2433878 () Bool)

(declare-fun e!1547180 () Bool)

(declare-fun call!149064 () Bool)

(assert (=> b!2433878 (= e!1547180 call!149064)))

(declare-fun b!2433879 () Bool)

(declare-fun c!388340 () Bool)

(assert (=> b!2433879 (= c!388340 (is-Union!7152 r!13927))))

(declare-fun e!1547174 () Bool)

(declare-fun e!1547177 () Bool)

(assert (=> b!2433879 (= e!1547174 e!1547177)))

(declare-fun b!2433880 () Bool)

(declare-fun c!388339 () Bool)

(assert (=> b!2433880 (= c!388339 (is-ElementMatch!7152 r!13927))))

(declare-fun e!1547176 () Bool)

(assert (=> b!2433880 (= e!1547176 e!1547174)))

(declare-fun b!2433881 () Bool)

(assert (=> b!2433881 (= e!1547174 (= s!9460 (Cons!28443 (c!388298 r!13927) Nil!28443)))))

(declare-fun b!2433882 () Bool)

(declare-fun e!1547179 () Bool)

(assert (=> b!2433882 (= e!1547177 e!1547179)))

(declare-fun c!388341 () Bool)

(assert (=> b!2433882 (= c!388341 (is-Star!7152 r!13927))))

(declare-fun call!149063 () Bool)

(assert (=> b!2433883 (= e!1547179 call!149063)))

(declare-fun b!2433884 () Bool)

(declare-fun e!1547178 () Bool)

(assert (=> b!2433884 (= e!1547177 e!1547178)))

(declare-fun res!1033176 () Bool)

(assert (=> b!2433884 (= res!1033176 (matchRSpec!999 (regOne!14817 r!13927) s!9460))))

(assert (=> b!2433884 (=> res!1033176 e!1547178)))

(declare-fun b!2433886 () Bool)

(declare-fun res!1033175 () Bool)

(declare-fun e!1547175 () Bool)

(assert (=> b!2433886 (=> res!1033175 e!1547175)))

(assert (=> b!2433886 (= res!1033175 call!149064)))

(assert (=> b!2433886 (= e!1547179 e!1547175)))

(declare-fun b!2433887 () Bool)

(assert (=> b!2433887 (= e!1547180 e!1547176)))

(declare-fun res!1033174 () Bool)

(assert (=> b!2433887 (= res!1033174 (not (is-EmptyLang!7152 r!13927)))))

(assert (=> b!2433887 (=> (not res!1033174) (not e!1547176))))

(declare-fun bm!149058 () Bool)

(assert (=> bm!149058 (= call!149063 (Exists!1188 (ite c!388341 lambda!91824 lambda!91825)))))

(declare-fun bm!149059 () Bool)

(declare-fun isEmpty!16484 (List!28541) Bool)

(assert (=> bm!149059 (= call!149064 (isEmpty!16484 s!9460))))

(declare-fun b!2433888 () Bool)

(assert (=> b!2433888 (= e!1547178 (matchRSpec!999 (regTwo!14817 r!13927) s!9460))))

(declare-fun d!703635 () Bool)

(declare-fun c!388338 () Bool)

(assert (=> d!703635 (= c!388338 (is-EmptyExpr!7152 r!13927))))

(assert (=> d!703635 (= (matchRSpec!999 r!13927 s!9460) e!1547180)))

(assert (=> b!2433885 (= e!1547175 call!149063)))

(assert (= (and d!703635 c!388338) b!2433878))

(assert (= (and d!703635 (not c!388338)) b!2433887))

(assert (= (and b!2433887 res!1033174) b!2433880))

(assert (= (and b!2433880 c!388339) b!2433881))

(assert (= (and b!2433880 (not c!388339)) b!2433879))

(assert (= (and b!2433879 c!388340) b!2433884))

(assert (= (and b!2433879 (not c!388340)) b!2433882))

(assert (= (and b!2433884 (not res!1033176)) b!2433888))

(assert (= (and b!2433882 c!388341) b!2433886))

(assert (= (and b!2433882 (not c!388341)) b!2433883))

(assert (= (and b!2433886 (not res!1033175)) b!2433885))

(assert (= (or b!2433885 b!2433883) bm!149058))

(assert (= (or b!2433878 b!2433886) bm!149059))

(declare-fun m!2814825 () Bool)

(assert (=> b!2433884 m!2814825))

(declare-fun m!2814827 () Bool)

(assert (=> bm!149058 m!2814827))

(declare-fun m!2814829 () Bool)

(assert (=> bm!149059 m!2814829))

(declare-fun m!2814831 () Bool)

(assert (=> b!2433888 m!2814831))

(assert (=> b!2433686 d!703635))

(declare-fun d!703639 () Bool)

(declare-fun e!1547201 () Bool)

(assert (=> d!703639 e!1547201))

(declare-fun c!388348 () Bool)

(assert (=> d!703639 (= c!388348 (is-EmptyExpr!7152 r!13927))))

(declare-fun lt!877131 () Bool)

(declare-fun e!1547199 () Bool)

(assert (=> d!703639 (= lt!877131 e!1547199)))

(declare-fun c!388349 () Bool)

(assert (=> d!703639 (= c!388349 (isEmpty!16484 s!9460))))

(assert (=> d!703639 (validRegex!2869 r!13927)))

(assert (=> d!703639 (= (matchR!3267 r!13927 s!9460) lt!877131)))

(declare-fun bm!149062 () Bool)

(declare-fun call!149067 () Bool)

(assert (=> bm!149062 (= call!149067 (isEmpty!16484 s!9460))))

(declare-fun b!2433925 () Bool)

(declare-fun e!1547200 () Bool)

(declare-fun head!5507 (List!28541) C!14462)

(assert (=> b!2433925 (= e!1547200 (= (head!5507 s!9460) (c!388298 r!13927)))))

(declare-fun b!2433926 () Bool)

(declare-fun derivativeStep!1838 (Regex!7152 C!14462) Regex!7152)

(declare-fun tail!3780 (List!28541) List!28541)

(assert (=> b!2433926 (= e!1547199 (matchR!3267 (derivativeStep!1838 r!13927 (head!5507 s!9460)) (tail!3780 s!9460)))))

(declare-fun b!2433927 () Bool)

(declare-fun res!1033207 () Bool)

(declare-fun e!1547204 () Bool)

(assert (=> b!2433927 (=> res!1033207 e!1547204)))

(assert (=> b!2433927 (= res!1033207 e!1547200)))

(declare-fun res!1033204 () Bool)

(assert (=> b!2433927 (=> (not res!1033204) (not e!1547200))))

(assert (=> b!2433927 (= res!1033204 lt!877131)))

(declare-fun b!2433928 () Bool)

(declare-fun res!1033206 () Bool)

(assert (=> b!2433928 (=> (not res!1033206) (not e!1547200))))

(assert (=> b!2433928 (= res!1033206 (isEmpty!16484 (tail!3780 s!9460)))))

(declare-fun b!2433929 () Bool)

(declare-fun e!1547203 () Bool)

(assert (=> b!2433929 (= e!1547203 (not lt!877131))))

(declare-fun b!2433930 () Bool)

(declare-fun e!1547202 () Bool)

(declare-fun e!1547205 () Bool)

(assert (=> b!2433930 (= e!1547202 e!1547205)))

(declare-fun res!1033202 () Bool)

(assert (=> b!2433930 (=> res!1033202 e!1547205)))

(assert (=> b!2433930 (= res!1033202 call!149067)))

(declare-fun b!2433931 () Bool)

(declare-fun res!1033203 () Bool)

(assert (=> b!2433931 (=> res!1033203 e!1547205)))

(assert (=> b!2433931 (= res!1033203 (not (isEmpty!16484 (tail!3780 s!9460))))))

(declare-fun b!2433932 () Bool)

(declare-fun nullable!2184 (Regex!7152) Bool)

(assert (=> b!2433932 (= e!1547199 (nullable!2184 r!13927))))

(declare-fun b!2433933 () Bool)

(declare-fun res!1033201 () Bool)

(assert (=> b!2433933 (=> res!1033201 e!1547204)))

(assert (=> b!2433933 (= res!1033201 (not (is-ElementMatch!7152 r!13927)))))

(assert (=> b!2433933 (= e!1547203 e!1547204)))

(declare-fun b!2433934 () Bool)

(declare-fun res!1033208 () Bool)

(assert (=> b!2433934 (=> (not res!1033208) (not e!1547200))))

(assert (=> b!2433934 (= res!1033208 (not call!149067))))

(declare-fun b!2433935 () Bool)

(assert (=> b!2433935 (= e!1547201 (= lt!877131 call!149067))))

(declare-fun b!2433936 () Bool)

(assert (=> b!2433936 (= e!1547205 (not (= (head!5507 s!9460) (c!388298 r!13927))))))

(declare-fun b!2433937 () Bool)

(assert (=> b!2433937 (= e!1547201 e!1547203)))

(declare-fun c!388350 () Bool)

(assert (=> b!2433937 (= c!388350 (is-EmptyLang!7152 r!13927))))

(declare-fun b!2433938 () Bool)

(assert (=> b!2433938 (= e!1547204 e!1547202)))

(declare-fun res!1033205 () Bool)

(assert (=> b!2433938 (=> (not res!1033205) (not e!1547202))))

(assert (=> b!2433938 (= res!1033205 (not lt!877131))))

(assert (= (and d!703639 c!388349) b!2433932))

(assert (= (and d!703639 (not c!388349)) b!2433926))

(assert (= (and d!703639 c!388348) b!2433935))

(assert (= (and d!703639 (not c!388348)) b!2433937))

(assert (= (and b!2433937 c!388350) b!2433929))

(assert (= (and b!2433937 (not c!388350)) b!2433933))

(assert (= (and b!2433933 (not res!1033201)) b!2433927))

(assert (= (and b!2433927 res!1033204) b!2433934))

(assert (= (and b!2433934 res!1033208) b!2433928))

(assert (= (and b!2433928 res!1033206) b!2433925))

(assert (= (and b!2433927 (not res!1033207)) b!2433938))

(assert (= (and b!2433938 res!1033205) b!2433930))

(assert (= (and b!2433930 (not res!1033202)) b!2433931))

(assert (= (and b!2433931 (not res!1033203)) b!2433936))

(assert (= (or b!2433935 b!2433930 b!2433934) bm!149062))

(declare-fun m!2814833 () Bool)

(assert (=> b!2433926 m!2814833))

(assert (=> b!2433926 m!2814833))

(declare-fun m!2814835 () Bool)

(assert (=> b!2433926 m!2814835))

(declare-fun m!2814837 () Bool)

(assert (=> b!2433926 m!2814837))

(assert (=> b!2433926 m!2814835))

(assert (=> b!2433926 m!2814837))

(declare-fun m!2814839 () Bool)

(assert (=> b!2433926 m!2814839))

(declare-fun m!2814841 () Bool)

(assert (=> b!2433932 m!2814841))

(assert (=> b!2433931 m!2814837))

(assert (=> b!2433931 m!2814837))

(declare-fun m!2814843 () Bool)

(assert (=> b!2433931 m!2814843))

(assert (=> d!703639 m!2814829))

(declare-fun m!2814845 () Bool)

(assert (=> d!703639 m!2814845))

(assert (=> b!2433936 m!2814833))

(assert (=> b!2433925 m!2814833))

(assert (=> bm!149062 m!2814829))

(assert (=> b!2433928 m!2814837))

(assert (=> b!2433928 m!2814837))

(assert (=> b!2433928 m!2814843))

(assert (=> b!2433686 d!703639))

(declare-fun d!703641 () Bool)

(assert (=> d!703641 (= (matchR!3267 r!13927 s!9460) (matchRSpec!999 r!13927 s!9460))))

(declare-fun lt!877135 () Unit!41687)

(declare-fun choose!14426 (Regex!7152 List!28541) Unit!41687)

(assert (=> d!703641 (= lt!877135 (choose!14426 r!13927 s!9460))))

(assert (=> d!703641 (validRegex!2869 r!13927)))

(assert (=> d!703641 (= (mainMatchTheorem!999 r!13927 s!9460) lt!877135)))

(declare-fun bs!464359 () Bool)

(assert (= bs!464359 d!703641))

(assert (=> bs!464359 m!2814709))

(assert (=> bs!464359 m!2814707))

(declare-fun m!2814847 () Bool)

(assert (=> bs!464359 m!2814847))

(assert (=> bs!464359 m!2814845))

(assert (=> b!2433686 d!703641))

(declare-fun b!2433950 () Bool)

(declare-fun e!1547208 () Bool)

(declare-fun tp!773064 () Bool)

(declare-fun tp!773068 () Bool)

(assert (=> b!2433950 (= e!1547208 (and tp!773064 tp!773068))))

(assert (=> b!2433680 (= tp!773029 e!1547208)))

(declare-fun b!2433952 () Bool)

(declare-fun tp!773066 () Bool)

(declare-fun tp!773067 () Bool)

(assert (=> b!2433952 (= e!1547208 (and tp!773066 tp!773067))))

(declare-fun b!2433951 () Bool)

(declare-fun tp!773065 () Bool)

(assert (=> b!2433951 (= e!1547208 tp!773065)))

(declare-fun b!2433949 () Bool)

(assert (=> b!2433949 (= e!1547208 tp_is_empty!11717)))

(assert (= (and b!2433680 (is-ElementMatch!7152 (regOne!14816 r!13927))) b!2433949))

(assert (= (and b!2433680 (is-Concat!11788 (regOne!14816 r!13927))) b!2433950))

(assert (= (and b!2433680 (is-Star!7152 (regOne!14816 r!13927))) b!2433951))

(assert (= (and b!2433680 (is-Union!7152 (regOne!14816 r!13927))) b!2433952))

(declare-fun b!2433954 () Bool)

(declare-fun e!1547209 () Bool)

(declare-fun tp!773069 () Bool)

(declare-fun tp!773073 () Bool)

(assert (=> b!2433954 (= e!1547209 (and tp!773069 tp!773073))))

(assert (=> b!2433680 (= tp!773023 e!1547209)))

(declare-fun b!2433956 () Bool)

(declare-fun tp!773071 () Bool)

(declare-fun tp!773072 () Bool)

(assert (=> b!2433956 (= e!1547209 (and tp!773071 tp!773072))))

(declare-fun b!2433955 () Bool)

(declare-fun tp!773070 () Bool)

(assert (=> b!2433955 (= e!1547209 tp!773070)))

(declare-fun b!2433953 () Bool)

(assert (=> b!2433953 (= e!1547209 tp_is_empty!11717)))

(assert (= (and b!2433680 (is-ElementMatch!7152 (regTwo!14816 r!13927))) b!2433953))

(assert (= (and b!2433680 (is-Concat!11788 (regTwo!14816 r!13927))) b!2433954))

(assert (= (and b!2433680 (is-Star!7152 (regTwo!14816 r!13927))) b!2433955))

(assert (= (and b!2433680 (is-Union!7152 (regTwo!14816 r!13927))) b!2433956))

(declare-fun b!2433958 () Bool)

(declare-fun e!1547210 () Bool)

(declare-fun tp!773074 () Bool)

(declare-fun tp!773078 () Bool)

(assert (=> b!2433958 (= e!1547210 (and tp!773074 tp!773078))))

(assert (=> b!2433678 (= tp!773028 e!1547210)))

(declare-fun b!2433960 () Bool)

(declare-fun tp!773076 () Bool)

(declare-fun tp!773077 () Bool)

(assert (=> b!2433960 (= e!1547210 (and tp!773076 tp!773077))))

(declare-fun b!2433959 () Bool)

(declare-fun tp!773075 () Bool)

(assert (=> b!2433959 (= e!1547210 tp!773075)))

(declare-fun b!2433957 () Bool)

(assert (=> b!2433957 (= e!1547210 tp_is_empty!11717)))

(assert (= (and b!2433678 (is-ElementMatch!7152 (regOne!14817 r!13927))) b!2433957))

(assert (= (and b!2433678 (is-Concat!11788 (regOne!14817 r!13927))) b!2433958))

(assert (= (and b!2433678 (is-Star!7152 (regOne!14817 r!13927))) b!2433959))

(assert (= (and b!2433678 (is-Union!7152 (regOne!14817 r!13927))) b!2433960))

(declare-fun b!2433962 () Bool)

(declare-fun e!1547211 () Bool)

(declare-fun tp!773079 () Bool)

(declare-fun tp!773083 () Bool)

(assert (=> b!2433962 (= e!1547211 (and tp!773079 tp!773083))))

(assert (=> b!2433678 (= tp!773026 e!1547211)))

(declare-fun b!2433964 () Bool)

(declare-fun tp!773081 () Bool)

(declare-fun tp!773082 () Bool)

(assert (=> b!2433964 (= e!1547211 (and tp!773081 tp!773082))))

(declare-fun b!2433963 () Bool)

(declare-fun tp!773080 () Bool)

(assert (=> b!2433963 (= e!1547211 tp!773080)))

(declare-fun b!2433961 () Bool)

(assert (=> b!2433961 (= e!1547211 tp_is_empty!11717)))

(assert (= (and b!2433678 (is-ElementMatch!7152 (regTwo!14817 r!13927))) b!2433961))

(assert (= (and b!2433678 (is-Concat!11788 (regTwo!14817 r!13927))) b!2433962))

(assert (= (and b!2433678 (is-Star!7152 (regTwo!14817 r!13927))) b!2433963))

(assert (= (and b!2433678 (is-Union!7152 (regTwo!14817 r!13927))) b!2433964))

(declare-fun b!2433969 () Bool)

(declare-fun e!1547214 () Bool)

(declare-fun tp!773086 () Bool)

(assert (=> b!2433969 (= e!1547214 (and tp_is_empty!11717 tp!773086))))

(assert (=> b!2433684 (= tp!773025 e!1547214)))

(assert (= (and b!2433684 (is-Cons!28443 (t!208518 s!9460))) b!2433969))

(declare-fun b!2433971 () Bool)

(declare-fun e!1547215 () Bool)

(declare-fun tp!773087 () Bool)

(declare-fun tp!773091 () Bool)

(assert (=> b!2433971 (= e!1547215 (and tp!773087 tp!773091))))

(assert (=> b!2433682 (= tp!773027 e!1547215)))

(declare-fun b!2433973 () Bool)

(declare-fun tp!773089 () Bool)

(declare-fun tp!773090 () Bool)

(assert (=> b!2433973 (= e!1547215 (and tp!773089 tp!773090))))

(declare-fun b!2433972 () Bool)

(declare-fun tp!773088 () Bool)

(assert (=> b!2433972 (= e!1547215 tp!773088)))

(declare-fun b!2433970 () Bool)

(assert (=> b!2433970 (= e!1547215 tp_is_empty!11717)))

(assert (= (and b!2433682 (is-ElementMatch!7152 (reg!7481 r!13927))) b!2433970))

(assert (= (and b!2433682 (is-Concat!11788 (reg!7481 r!13927))) b!2433971))

(assert (= (and b!2433682 (is-Star!7152 (reg!7481 r!13927))) b!2433972))

(assert (= (and b!2433682 (is-Union!7152 (reg!7481 r!13927))) b!2433973))

(declare-fun b!2433975 () Bool)

(declare-fun e!1547216 () Bool)

(declare-fun tp!773092 () Bool)

(declare-fun tp!773096 () Bool)

(assert (=> b!2433975 (= e!1547216 (and tp!773092 tp!773096))))

(assert (=> b!2433677 (= tp!773024 e!1547216)))

(declare-fun b!2433977 () Bool)

(declare-fun tp!773094 () Bool)

(declare-fun tp!773095 () Bool)

(assert (=> b!2433977 (= e!1547216 (and tp!773094 tp!773095))))

(declare-fun b!2433976 () Bool)

(declare-fun tp!773093 () Bool)

(assert (=> b!2433976 (= e!1547216 tp!773093)))

(declare-fun b!2433974 () Bool)

(assert (=> b!2433974 (= e!1547216 tp_is_empty!11717)))

(assert (= (and b!2433677 (is-ElementMatch!7152 (h!33843 l!9164))) b!2433974))

(assert (= (and b!2433677 (is-Concat!11788 (h!33843 l!9164))) b!2433975))

(assert (= (and b!2433677 (is-Star!7152 (h!33843 l!9164))) b!2433976))

(assert (= (and b!2433677 (is-Union!7152 (h!33843 l!9164))) b!2433977))

(declare-fun b!2433982 () Bool)

(declare-fun e!1547219 () Bool)

(declare-fun tp!773101 () Bool)

(declare-fun tp!773102 () Bool)

(assert (=> b!2433982 (= e!1547219 (and tp!773101 tp!773102))))

(assert (=> b!2433677 (= tp!773022 e!1547219)))

(assert (= (and b!2433677 (is-Cons!28442 (t!208517 l!9164))) b!2433982))

(declare-fun b_lambda!74845 () Bool)

(assert (= b_lambda!74843 (or start!238258 b_lambda!74845)))

(declare-fun bs!464362 () Bool)

(declare-fun d!703643 () Bool)

(assert (= bs!464362 (and d!703643 start!238258)))

(assert (=> bs!464362 (= (dynLambda!12242 lambda!91788 (h!33843 l!9164)) (validRegex!2869 (h!33843 l!9164)))))

(declare-fun m!2814849 () Bool)

(assert (=> bs!464362 m!2814849))

(assert (=> b!2433741 d!703643))

(push 1)

(assert (not b!2433960))

(assert (not b_lambda!74845))

(assert (not b!2433834))

(assert (not b!2433969))

(assert (not d!703621))

(assert (not d!703623))

(assert (not b!2433971))

(assert (not b!2433972))

(assert (not b!2433955))

(assert (not d!703613))

(assert (not b!2433830))

(assert (not b!2433982))

(assert (not b!2433936))

(assert (not bm!149058))

(assert (not bs!464362))

(assert (not d!703639))

(assert (not b!2433769))

(assert (not b!2433959))

(assert (not b!2433837))

(assert (not b!2433950))

(assert (not b!2433973))

(assert (not b!2433829))

(assert (not b!2433964))

(assert (not b!2433976))

(assert (not b!2433771))

(assert (not b!2433958))

(assert (not b!2433767))

(assert (not b!2433975))

(assert (not b!2433766))

(assert (not b!2433956))

(assert (not b!2433963))

(assert (not bm!149059))

(assert (not d!703633))

(assert (not b!2433928))

(assert (not b!2433835))

(assert (not b!2433977))

(assert (not b!2433884))

(assert (not d!703641))

(assert (not b!2433888))

(assert (not b!2433836))

(assert (not b!2433770))

(assert (not b!2433926))

(assert (not bm!149062))

(assert tp_is_empty!11717)

(assert (not b!2433954))

(assert (not b!2433962))

(assert (not b!2433932))

(assert (not b!2433951))

(assert (not d!703631))

(assert (not d!703617))

(assert (not b!2433925))

(assert (not b!2433764))

(assert (not b!2433952))

(assert (not b!2433931))

(assert (not d!703625))

(assert (not b!2433763))

(assert (not b!2433742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

