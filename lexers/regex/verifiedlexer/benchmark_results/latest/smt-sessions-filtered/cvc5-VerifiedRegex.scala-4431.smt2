; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235838 () Bool)

(assert start!235838)

(declare-fun b!2405563 () Bool)

(declare-fun e!1532046 () Bool)

(declare-fun tp!765428 () Bool)

(assert (=> b!2405563 (= e!1532046 tp!765428)))

(declare-fun b!2405564 () Bool)

(declare-fun tp_is_empty!11521 () Bool)

(assert (=> b!2405564 (= e!1532046 tp_is_empty!11521)))

(declare-fun b!2405565 () Bool)

(declare-fun e!1532047 () Bool)

(declare-fun e!1532045 () Bool)

(assert (=> b!2405565 (= e!1532047 (not e!1532045))))

(declare-fun res!1021777 () Bool)

(assert (=> b!2405565 (=> res!1021777 e!1532045)))

(declare-datatypes ((C!14266 0))(
  ( (C!14267 (val!8375 Int)) )
))
(declare-datatypes ((Regex!7054 0))(
  ( (ElementMatch!7054 (c!383152 C!14266)) (Concat!11690 (regOne!14620 Regex!7054) (regTwo!14620 Regex!7054)) (EmptyExpr!7054) (Star!7054 (reg!7383 Regex!7054)) (EmptyLang!7054) (Union!7054 (regOne!14621 Regex!7054) (regTwo!14621 Regex!7054)) )
))
(declare-fun r!13927 () Regex!7054)

(assert (=> b!2405565 (= res!1021777 (or (is-Concat!11690 r!13927) (is-EmptyExpr!7054 r!13927)))))

(declare-datatypes ((List!28346 0))(
  ( (Nil!28248) (Cons!28248 (h!33649 C!14266) (t!208323 List!28346)) )
))
(declare-fun s!9460 () List!28346)

(declare-fun matchR!3171 (Regex!7054 List!28346) Bool)

(declare-fun matchRSpec!903 (Regex!7054 List!28346) Bool)

(assert (=> b!2405565 (= (matchR!3171 r!13927 s!9460) (matchRSpec!903 r!13927 s!9460))))

(declare-datatypes ((Unit!41379 0))(
  ( (Unit!41380) )
))
(declare-fun lt!872953 () Unit!41379)

(declare-fun mainMatchTheorem!903 (Regex!7054 List!28346) Unit!41379)

(assert (=> b!2405565 (= lt!872953 (mainMatchTheorem!903 r!13927 s!9460))))

(declare-fun b!2405566 () Bool)

(declare-fun res!1021778 () Bool)

(assert (=> b!2405566 (=> res!1021778 e!1532045)))

(declare-datatypes ((List!28347 0))(
  ( (Nil!28249) (Cons!28249 (h!33650 Regex!7054) (t!208324 List!28347)) )
))
(declare-fun l!9164 () List!28347)

(declare-fun isEmpty!16254 (List!28347) Bool)

(declare-fun tail!3604 (List!28347) List!28347)

(assert (=> b!2405566 (= res!1021778 (not (isEmpty!16254 (tail!3604 l!9164))))))

(declare-fun b!2405567 () Bool)

(declare-fun res!1021779 () Bool)

(assert (=> b!2405567 (=> (not res!1021779) (not e!1532047))))

(declare-fun generalisedConcat!155 (List!28347) Regex!7054)

(assert (=> b!2405567 (= res!1021779 (= r!13927 (generalisedConcat!155 l!9164)))))

(declare-fun res!1021781 () Bool)

(assert (=> start!235838 (=> (not res!1021781) (not e!1532047))))

(declare-fun lambda!90474 () Int)

(declare-fun forall!5688 (List!28347 Int) Bool)

(assert (=> start!235838 (= res!1021781 (forall!5688 l!9164 lambda!90474))))

(assert (=> start!235838 e!1532047))

(declare-fun e!1532048 () Bool)

(assert (=> start!235838 e!1532048))

(assert (=> start!235838 e!1532046))

(declare-fun e!1532049 () Bool)

(assert (=> start!235838 e!1532049))

(declare-fun b!2405568 () Bool)

(declare-fun tp!765425 () Bool)

(declare-fun tp!765424 () Bool)

(assert (=> b!2405568 (= e!1532046 (and tp!765425 tp!765424))))

(declare-fun b!2405569 () Bool)

(declare-fun tp!765422 () Bool)

(assert (=> b!2405569 (= e!1532049 (and tp_is_empty!11521 tp!765422))))

(declare-fun b!2405570 () Bool)

(assert (=> b!2405570 (= e!1532045 (not (= l!9164 Nil!28249)))))

(declare-fun b!2405571 () Bool)

(declare-fun tp!765429 () Bool)

(declare-fun tp!765423 () Bool)

(assert (=> b!2405571 (= e!1532048 (and tp!765429 tp!765423))))

(declare-fun b!2405572 () Bool)

(declare-fun tp!765426 () Bool)

(declare-fun tp!765427 () Bool)

(assert (=> b!2405572 (= e!1532046 (and tp!765426 tp!765427))))

(declare-fun b!2405573 () Bool)

(declare-fun res!1021780 () Bool)

(assert (=> b!2405573 (=> res!1021780 e!1532045)))

(assert (=> b!2405573 (= res!1021780 (isEmpty!16254 l!9164))))

(assert (= (and start!235838 res!1021781) b!2405567))

(assert (= (and b!2405567 res!1021779) b!2405565))

(assert (= (and b!2405565 (not res!1021777)) b!2405573))

(assert (= (and b!2405573 (not res!1021780)) b!2405566))

(assert (= (and b!2405566 (not res!1021778)) b!2405570))

(assert (= (and start!235838 (is-Cons!28249 l!9164)) b!2405571))

(assert (= (and start!235838 (is-ElementMatch!7054 r!13927)) b!2405564))

(assert (= (and start!235838 (is-Concat!11690 r!13927)) b!2405568))

(assert (= (and start!235838 (is-Star!7054 r!13927)) b!2405563))

(assert (= (and start!235838 (is-Union!7054 r!13927)) b!2405572))

(assert (= (and start!235838 (is-Cons!28248 s!9460)) b!2405569))

(declare-fun m!2799767 () Bool)

(assert (=> b!2405567 m!2799767))

(declare-fun m!2799769 () Bool)

(assert (=> b!2405565 m!2799769))

(declare-fun m!2799771 () Bool)

(assert (=> b!2405565 m!2799771))

(declare-fun m!2799773 () Bool)

(assert (=> b!2405565 m!2799773))

(declare-fun m!2799775 () Bool)

(assert (=> b!2405573 m!2799775))

(declare-fun m!2799777 () Bool)

(assert (=> start!235838 m!2799777))

(declare-fun m!2799779 () Bool)

(assert (=> b!2405566 m!2799779))

(assert (=> b!2405566 m!2799779))

(declare-fun m!2799781 () Bool)

(assert (=> b!2405566 m!2799781))

(push 1)

(assert (not b!2405565))

(assert (not b!2405572))

(assert (not b!2405573))

(assert (not b!2405571))

(assert tp_is_empty!11521)

(assert (not b!2405568))

(assert (not b!2405569))

(assert (not start!235838))

(assert (not b!2405566))

(assert (not b!2405563))

(assert (not b!2405567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!463283 () Bool)

(declare-fun d!700040 () Bool)

(assert (= bs!463283 (and d!700040 start!235838)))

(declare-fun lambda!90480 () Int)

(assert (=> bs!463283 (= lambda!90480 lambda!90474)))

(declare-fun b!2405627 () Bool)

(declare-fun e!1532078 () Bool)

(assert (=> b!2405627 (= e!1532078 (isEmpty!16254 (t!208324 l!9164)))))

(declare-fun b!2405628 () Bool)

(declare-fun e!1532082 () Regex!7054)

(assert (=> b!2405628 (= e!1532082 (Concat!11690 (h!33650 l!9164) (generalisedConcat!155 (t!208324 l!9164))))))

(declare-fun b!2405629 () Bool)

(declare-fun e!1532077 () Regex!7054)

(assert (=> b!2405629 (= e!1532077 (h!33650 l!9164))))

(declare-fun e!1532079 () Bool)

(assert (=> d!700040 e!1532079))

(declare-fun res!1021802 () Bool)

(assert (=> d!700040 (=> (not res!1021802) (not e!1532079))))

(declare-fun lt!872959 () Regex!7054)

(declare-fun validRegex!2779 (Regex!7054) Bool)

(assert (=> d!700040 (= res!1021802 (validRegex!2779 lt!872959))))

(assert (=> d!700040 (= lt!872959 e!1532077)))

(declare-fun c!383163 () Bool)

(assert (=> d!700040 (= c!383163 e!1532078)))

(declare-fun res!1021801 () Bool)

(assert (=> d!700040 (=> (not res!1021801) (not e!1532078))))

(assert (=> d!700040 (= res!1021801 (is-Cons!28249 l!9164))))

(assert (=> d!700040 (forall!5688 l!9164 lambda!90480)))

(assert (=> d!700040 (= (generalisedConcat!155 l!9164) lt!872959)))

(declare-fun b!2405630 () Bool)

(declare-fun e!1532081 () Bool)

(declare-fun head!5334 (List!28347) Regex!7054)

(assert (=> b!2405630 (= e!1532081 (= lt!872959 (head!5334 l!9164)))))

(declare-fun b!2405631 () Bool)

(assert (=> b!2405631 (= e!1532077 e!1532082)))

(declare-fun c!383162 () Bool)

(assert (=> b!2405631 (= c!383162 (is-Cons!28249 l!9164))))

(declare-fun b!2405632 () Bool)

(declare-fun e!1532080 () Bool)

(assert (=> b!2405632 (= e!1532080 e!1532081)))

(declare-fun c!383165 () Bool)

(assert (=> b!2405632 (= c!383165 (isEmpty!16254 (tail!3604 l!9164)))))

(declare-fun b!2405633 () Bool)

(assert (=> b!2405633 (= e!1532082 EmptyExpr!7054)))

(declare-fun b!2405634 () Bool)

(declare-fun isConcat!121 (Regex!7054) Bool)

(assert (=> b!2405634 (= e!1532081 (isConcat!121 lt!872959))))

(declare-fun b!2405635 () Bool)

(assert (=> b!2405635 (= e!1532079 e!1532080)))

(declare-fun c!383164 () Bool)

(assert (=> b!2405635 (= c!383164 (isEmpty!16254 l!9164))))

(declare-fun b!2405636 () Bool)

(declare-fun isEmptyExpr!121 (Regex!7054) Bool)

(assert (=> b!2405636 (= e!1532080 (isEmptyExpr!121 lt!872959))))

(assert (= (and d!700040 res!1021801) b!2405627))

(assert (= (and d!700040 c!383163) b!2405629))

(assert (= (and d!700040 (not c!383163)) b!2405631))

(assert (= (and b!2405631 c!383162) b!2405628))

(assert (= (and b!2405631 (not c!383162)) b!2405633))

(assert (= (and d!700040 res!1021802) b!2405635))

(assert (= (and b!2405635 c!383164) b!2405636))

(assert (= (and b!2405635 (not c!383164)) b!2405632))

(assert (= (and b!2405632 c!383165) b!2405630))

(assert (= (and b!2405632 (not c!383165)) b!2405634))

(declare-fun m!2799799 () Bool)

(assert (=> b!2405630 m!2799799))

(declare-fun m!2799801 () Bool)

(assert (=> d!700040 m!2799801))

(declare-fun m!2799803 () Bool)

(assert (=> d!700040 m!2799803))

(assert (=> b!2405635 m!2799775))

(declare-fun m!2799805 () Bool)

(assert (=> b!2405627 m!2799805))

(assert (=> b!2405632 m!2799779))

(assert (=> b!2405632 m!2799779))

(assert (=> b!2405632 m!2799781))

(declare-fun m!2799807 () Bool)

(assert (=> b!2405636 m!2799807))

(declare-fun m!2799809 () Bool)

(assert (=> b!2405634 m!2799809))

(declare-fun m!2799811 () Bool)

(assert (=> b!2405628 m!2799811))

(assert (=> b!2405567 d!700040))

(declare-fun d!700050 () Bool)

(assert (=> d!700050 (= (isEmpty!16254 (tail!3604 l!9164)) (is-Nil!28249 (tail!3604 l!9164)))))

(assert (=> b!2405566 d!700050))

(declare-fun d!700052 () Bool)

(assert (=> d!700052 (= (tail!3604 l!9164) (t!208324 l!9164))))

(assert (=> b!2405566 d!700052))

(declare-fun b!2405673 () Bool)

(declare-fun res!1021821 () Bool)

(declare-fun e!1532104 () Bool)

(assert (=> b!2405673 (=> (not res!1021821) (not e!1532104))))

(declare-fun isEmpty!16256 (List!28346) Bool)

(declare-fun tail!3606 (List!28346) List!28346)

(assert (=> b!2405673 (= res!1021821 (isEmpty!16256 (tail!3606 s!9460)))))

(declare-fun b!2405674 () Bool)

(declare-fun res!1021822 () Bool)

(declare-fun e!1532106 () Bool)

(assert (=> b!2405674 (=> res!1021822 e!1532106)))

(assert (=> b!2405674 (= res!1021822 e!1532104)))

(declare-fun res!1021820 () Bool)

(assert (=> b!2405674 (=> (not res!1021820) (not e!1532104))))

(declare-fun lt!872964 () Bool)

(assert (=> b!2405674 (= res!1021820 lt!872964)))

(declare-fun b!2405675 () Bool)

(declare-fun e!1532103 () Bool)

(declare-fun e!1532105 () Bool)

(assert (=> b!2405675 (= e!1532103 e!1532105)))

(declare-fun res!1021825 () Bool)

(assert (=> b!2405675 (=> res!1021825 e!1532105)))

(declare-fun call!146975 () Bool)

(assert (=> b!2405675 (= res!1021825 call!146975)))

(declare-fun d!700054 () Bool)

(declare-fun e!1532107 () Bool)

(assert (=> d!700054 e!1532107))

(declare-fun c!383177 () Bool)

(assert (=> d!700054 (= c!383177 (is-EmptyExpr!7054 r!13927))))

(declare-fun e!1532099 () Bool)

(assert (=> d!700054 (= lt!872964 e!1532099)))

(declare-fun c!383176 () Bool)

(assert (=> d!700054 (= c!383176 (isEmpty!16256 s!9460))))

(assert (=> d!700054 (validRegex!2779 r!13927)))

(assert (=> d!700054 (= (matchR!3171 r!13927 s!9460) lt!872964)))

(declare-fun b!2405676 () Bool)

(assert (=> b!2405676 (= e!1532106 e!1532103)))

(declare-fun res!1021824 () Bool)

(assert (=> b!2405676 (=> (not res!1021824) (not e!1532103))))

(assert (=> b!2405676 (= res!1021824 (not lt!872964))))

(declare-fun b!2405677 () Bool)

(declare-fun nullable!2101 (Regex!7054) Bool)

(assert (=> b!2405677 (= e!1532099 (nullable!2101 r!13927))))

(declare-fun b!2405678 () Bool)

(declare-fun res!1021826 () Bool)

(assert (=> b!2405678 (=> res!1021826 e!1532106)))

(assert (=> b!2405678 (= res!1021826 (not (is-ElementMatch!7054 r!13927)))))

(declare-fun e!1532101 () Bool)

(assert (=> b!2405678 (= e!1532101 e!1532106)))

(declare-fun b!2405679 () Bool)

(assert (=> b!2405679 (= e!1532107 e!1532101)))

(declare-fun c!383178 () Bool)

(assert (=> b!2405679 (= c!383178 (is-EmptyLang!7054 r!13927))))

(declare-fun bm!146970 () Bool)

(assert (=> bm!146970 (= call!146975 (isEmpty!16256 s!9460))))

(declare-fun b!2405680 () Bool)

(declare-fun res!1021819 () Bool)

(assert (=> b!2405680 (=> (not res!1021819) (not e!1532104))))

(assert (=> b!2405680 (= res!1021819 (not call!146975))))

(declare-fun b!2405681 () Bool)

(declare-fun head!5335 (List!28346) C!14266)

(assert (=> b!2405681 (= e!1532104 (= (head!5335 s!9460) (c!383152 r!13927)))))

(declare-fun b!2405682 () Bool)

(declare-fun derivativeStep!1758 (Regex!7054 C!14266) Regex!7054)

(assert (=> b!2405682 (= e!1532099 (matchR!3171 (derivativeStep!1758 r!13927 (head!5335 s!9460)) (tail!3606 s!9460)))))

(declare-fun b!2405683 () Bool)

(assert (=> b!2405683 (= e!1532107 (= lt!872964 call!146975))))

(declare-fun b!2405684 () Bool)

(declare-fun res!1021823 () Bool)

(assert (=> b!2405684 (=> res!1021823 e!1532105)))

(assert (=> b!2405684 (= res!1021823 (not (isEmpty!16256 (tail!3606 s!9460))))))

(declare-fun b!2405685 () Bool)

(assert (=> b!2405685 (= e!1532105 (not (= (head!5335 s!9460) (c!383152 r!13927))))))

(declare-fun b!2405686 () Bool)

(assert (=> b!2405686 (= e!1532101 (not lt!872964))))

(assert (= (and d!700054 c!383176) b!2405677))

(assert (= (and d!700054 (not c!383176)) b!2405682))

(assert (= (and d!700054 c!383177) b!2405683))

(assert (= (and d!700054 (not c!383177)) b!2405679))

(assert (= (and b!2405679 c!383178) b!2405686))

(assert (= (and b!2405679 (not c!383178)) b!2405678))

(assert (= (and b!2405678 (not res!1021826)) b!2405674))

(assert (= (and b!2405674 res!1021820) b!2405680))

(assert (= (and b!2405680 res!1021819) b!2405673))

(assert (= (and b!2405673 res!1021821) b!2405681))

(assert (= (and b!2405674 (not res!1021822)) b!2405676))

(assert (= (and b!2405676 res!1021824) b!2405675))

(assert (= (and b!2405675 (not res!1021825)) b!2405684))

(assert (= (and b!2405684 (not res!1021823)) b!2405685))

(assert (= (or b!2405683 b!2405675 b!2405680) bm!146970))

(declare-fun m!2799813 () Bool)

(assert (=> b!2405673 m!2799813))

(assert (=> b!2405673 m!2799813))

(declare-fun m!2799815 () Bool)

(assert (=> b!2405673 m!2799815))

(declare-fun m!2799817 () Bool)

(assert (=> b!2405682 m!2799817))

(assert (=> b!2405682 m!2799817))

(declare-fun m!2799819 () Bool)

(assert (=> b!2405682 m!2799819))

(assert (=> b!2405682 m!2799813))

(assert (=> b!2405682 m!2799819))

(assert (=> b!2405682 m!2799813))

(declare-fun m!2799821 () Bool)

(assert (=> b!2405682 m!2799821))

(assert (=> b!2405681 m!2799817))

(assert (=> b!2405684 m!2799813))

(assert (=> b!2405684 m!2799813))

(assert (=> b!2405684 m!2799815))

(declare-fun m!2799823 () Bool)

(assert (=> b!2405677 m!2799823))

(declare-fun m!2799825 () Bool)

(assert (=> d!700054 m!2799825))

(declare-fun m!2799827 () Bool)

(assert (=> d!700054 m!2799827))

(assert (=> bm!146970 m!2799825))

(assert (=> b!2405685 m!2799817))

(assert (=> b!2405565 d!700054))

(declare-fun b!2405756 () Bool)

(assert (=> b!2405756 true))

(assert (=> b!2405756 true))

(declare-fun bs!463284 () Bool)

(declare-fun b!2405757 () Bool)

(assert (= bs!463284 (and b!2405757 b!2405756)))

(declare-fun lambda!90486 () Int)

(declare-fun lambda!90485 () Int)

(assert (=> bs!463284 (not (= lambda!90486 lambda!90485))))

(assert (=> b!2405757 true))

(assert (=> b!2405757 true))

(declare-fun bm!146978 () Bool)

(declare-fun call!146984 () Bool)

(assert (=> bm!146978 (= call!146984 (isEmpty!16256 s!9460))))

(declare-fun b!2405753 () Bool)

(declare-fun e!1532143 () Bool)

(assert (=> b!2405753 (= e!1532143 (= s!9460 (Cons!28248 (c!383152 r!13927) Nil!28248)))))

(declare-fun b!2405754 () Bool)

(declare-fun e!1532145 () Bool)

(declare-fun e!1532147 () Bool)

(assert (=> b!2405754 (= e!1532145 e!1532147)))

(declare-fun res!1021868 () Bool)

(assert (=> b!2405754 (= res!1021868 (not (is-EmptyLang!7054 r!13927)))))

(assert (=> b!2405754 (=> (not res!1021868) (not e!1532147))))

(declare-fun b!2405755 () Bool)

(declare-fun c!383194 () Bool)

(assert (=> b!2405755 (= c!383194 (is-ElementMatch!7054 r!13927))))

(assert (=> b!2405755 (= e!1532147 e!1532143)))

(declare-fun e!1532144 () Bool)

(declare-fun call!146983 () Bool)

(assert (=> b!2405756 (= e!1532144 call!146983)))

(declare-fun e!1532146 () Bool)

(assert (=> b!2405757 (= e!1532146 call!146983)))

(declare-fun d!700056 () Bool)

(declare-fun c!383192 () Bool)

(assert (=> d!700056 (= c!383192 (is-EmptyExpr!7054 r!13927))))

(assert (=> d!700056 (= (matchRSpec!903 r!13927 s!9460) e!1532145)))

(declare-fun b!2405758 () Bool)

(declare-fun c!383193 () Bool)

(assert (=> b!2405758 (= c!383193 (is-Union!7054 r!13927))))

(declare-fun e!1532148 () Bool)

(assert (=> b!2405758 (= e!1532143 e!1532148)))

(declare-fun b!2405759 () Bool)

(declare-fun res!1021867 () Bool)

(assert (=> b!2405759 (=> res!1021867 e!1532144)))

(assert (=> b!2405759 (= res!1021867 call!146984)))

(assert (=> b!2405759 (= e!1532146 e!1532144)))

(declare-fun b!2405760 () Bool)

(assert (=> b!2405760 (= e!1532145 call!146984)))

(declare-fun b!2405761 () Bool)

(assert (=> b!2405761 (= e!1532148 e!1532146)))

(declare-fun c!383195 () Bool)

(assert (=> b!2405761 (= c!383195 (is-Star!7054 r!13927))))

(declare-fun bm!146979 () Bool)

(declare-fun Exists!1110 (Int) Bool)

(assert (=> bm!146979 (= call!146983 (Exists!1110 (ite c!383195 lambda!90485 lambda!90486)))))

(declare-fun b!2405762 () Bool)

(declare-fun e!1532149 () Bool)

(assert (=> b!2405762 (= e!1532148 e!1532149)))

(declare-fun res!1021869 () Bool)

(assert (=> b!2405762 (= res!1021869 (matchRSpec!903 (regOne!14621 r!13927) s!9460))))

(assert (=> b!2405762 (=> res!1021869 e!1532149)))

(declare-fun b!2405763 () Bool)

(assert (=> b!2405763 (= e!1532149 (matchRSpec!903 (regTwo!14621 r!13927) s!9460))))

(assert (= (and d!700056 c!383192) b!2405760))

(assert (= (and d!700056 (not c!383192)) b!2405754))

(assert (= (and b!2405754 res!1021868) b!2405755))

(assert (= (and b!2405755 c!383194) b!2405753))

(assert (= (and b!2405755 (not c!383194)) b!2405758))

(assert (= (and b!2405758 c!383193) b!2405762))

(assert (= (and b!2405758 (not c!383193)) b!2405761))

(assert (= (and b!2405762 (not res!1021869)) b!2405763))

(assert (= (and b!2405761 c!383195) b!2405759))

(assert (= (and b!2405761 (not c!383195)) b!2405757))

(assert (= (and b!2405759 (not res!1021867)) b!2405756))

(assert (= (or b!2405756 b!2405757) bm!146979))

(assert (= (or b!2405760 b!2405759) bm!146978))

(assert (=> bm!146978 m!2799825))

(declare-fun m!2799845 () Bool)

(assert (=> bm!146979 m!2799845))

(declare-fun m!2799847 () Bool)

(assert (=> b!2405762 m!2799847))

(declare-fun m!2799849 () Bool)

(assert (=> b!2405763 m!2799849))

(assert (=> b!2405565 d!700056))

(declare-fun d!700060 () Bool)

(assert (=> d!700060 (= (matchR!3171 r!13927 s!9460) (matchRSpec!903 r!13927 s!9460))))

(declare-fun lt!872968 () Unit!41379)

(declare-fun choose!14227 (Regex!7054 List!28346) Unit!41379)

(assert (=> d!700060 (= lt!872968 (choose!14227 r!13927 s!9460))))

(assert (=> d!700060 (validRegex!2779 r!13927)))

(assert (=> d!700060 (= (mainMatchTheorem!903 r!13927 s!9460) lt!872968)))

(declare-fun bs!463285 () Bool)

(assert (= bs!463285 d!700060))

(assert (=> bs!463285 m!2799769))

(assert (=> bs!463285 m!2799771))

(declare-fun m!2799851 () Bool)

(assert (=> bs!463285 m!2799851))

(assert (=> bs!463285 m!2799827))

(assert (=> b!2405565 d!700060))

(declare-fun d!700062 () Bool)

(declare-fun res!1021874 () Bool)

(declare-fun e!1532154 () Bool)

(assert (=> d!700062 (=> res!1021874 e!1532154)))

(assert (=> d!700062 (= res!1021874 (is-Nil!28249 l!9164))))

(assert (=> d!700062 (= (forall!5688 l!9164 lambda!90474) e!1532154)))

(declare-fun b!2405772 () Bool)

(declare-fun e!1532155 () Bool)

(assert (=> b!2405772 (= e!1532154 e!1532155)))

(declare-fun res!1021875 () Bool)

(assert (=> b!2405772 (=> (not res!1021875) (not e!1532155))))

(declare-fun dynLambda!12165 (Int Regex!7054) Bool)

(assert (=> b!2405772 (= res!1021875 (dynLambda!12165 lambda!90474 (h!33650 l!9164)))))

(declare-fun b!2405773 () Bool)

(assert (=> b!2405773 (= e!1532155 (forall!5688 (t!208324 l!9164) lambda!90474))))

(assert (= (and d!700062 (not res!1021874)) b!2405772))

(assert (= (and b!2405772 res!1021875) b!2405773))

(declare-fun b_lambda!74403 () Bool)

(assert (=> (not b_lambda!74403) (not b!2405772)))

(declare-fun m!2799853 () Bool)

(assert (=> b!2405772 m!2799853))

(declare-fun m!2799855 () Bool)

(assert (=> b!2405773 m!2799855))

(assert (=> start!235838 d!700062))

(declare-fun d!700064 () Bool)

(assert (=> d!700064 (= (isEmpty!16254 l!9164) (is-Nil!28249 l!9164))))

(assert (=> b!2405573 d!700064))

(declare-fun b!2405786 () Bool)

(declare-fun e!1532158 () Bool)

(declare-fun tp!765468 () Bool)

(assert (=> b!2405786 (= e!1532158 tp!765468)))

(declare-fun b!2405787 () Bool)

(declare-fun tp!765465 () Bool)

(declare-fun tp!765466 () Bool)

(assert (=> b!2405787 (= e!1532158 (and tp!765465 tp!765466))))

(assert (=> b!2405572 (= tp!765426 e!1532158)))

(declare-fun b!2405784 () Bool)

(assert (=> b!2405784 (= e!1532158 tp_is_empty!11521)))

(declare-fun b!2405785 () Bool)

(declare-fun tp!765467 () Bool)

(declare-fun tp!765464 () Bool)

(assert (=> b!2405785 (= e!1532158 (and tp!765467 tp!765464))))

(assert (= (and b!2405572 (is-ElementMatch!7054 (regOne!14621 r!13927))) b!2405784))

(assert (= (and b!2405572 (is-Concat!11690 (regOne!14621 r!13927))) b!2405785))

(assert (= (and b!2405572 (is-Star!7054 (regOne!14621 r!13927))) b!2405786))

(assert (= (and b!2405572 (is-Union!7054 (regOne!14621 r!13927))) b!2405787))

(declare-fun b!2405790 () Bool)

(declare-fun e!1532159 () Bool)

(declare-fun tp!765473 () Bool)

(assert (=> b!2405790 (= e!1532159 tp!765473)))

(declare-fun b!2405791 () Bool)

(declare-fun tp!765470 () Bool)

(declare-fun tp!765471 () Bool)

(assert (=> b!2405791 (= e!1532159 (and tp!765470 tp!765471))))

(assert (=> b!2405572 (= tp!765427 e!1532159)))

(declare-fun b!2405788 () Bool)

(assert (=> b!2405788 (= e!1532159 tp_is_empty!11521)))

(declare-fun b!2405789 () Bool)

(declare-fun tp!765472 () Bool)

(declare-fun tp!765469 () Bool)

(assert (=> b!2405789 (= e!1532159 (and tp!765472 tp!765469))))

(assert (= (and b!2405572 (is-ElementMatch!7054 (regTwo!14621 r!13927))) b!2405788))

(assert (= (and b!2405572 (is-Concat!11690 (regTwo!14621 r!13927))) b!2405789))

(assert (= (and b!2405572 (is-Star!7054 (regTwo!14621 r!13927))) b!2405790))

(assert (= (and b!2405572 (is-Union!7054 (regTwo!14621 r!13927))) b!2405791))

(declare-fun b!2405794 () Bool)

(declare-fun e!1532160 () Bool)

(declare-fun tp!765478 () Bool)

(assert (=> b!2405794 (= e!1532160 tp!765478)))

(declare-fun b!2405795 () Bool)

(declare-fun tp!765475 () Bool)

(declare-fun tp!765476 () Bool)

(assert (=> b!2405795 (= e!1532160 (and tp!765475 tp!765476))))

(assert (=> b!2405571 (= tp!765429 e!1532160)))

(declare-fun b!2405792 () Bool)

(assert (=> b!2405792 (= e!1532160 tp_is_empty!11521)))

(declare-fun b!2405793 () Bool)

(declare-fun tp!765477 () Bool)

(declare-fun tp!765474 () Bool)

(assert (=> b!2405793 (= e!1532160 (and tp!765477 tp!765474))))

(assert (= (and b!2405571 (is-ElementMatch!7054 (h!33650 l!9164))) b!2405792))

(assert (= (and b!2405571 (is-Concat!11690 (h!33650 l!9164))) b!2405793))

(assert (= (and b!2405571 (is-Star!7054 (h!33650 l!9164))) b!2405794))

(assert (= (and b!2405571 (is-Union!7054 (h!33650 l!9164))) b!2405795))

(declare-fun b!2405800 () Bool)

(declare-fun e!1532163 () Bool)

(declare-fun tp!765483 () Bool)

(declare-fun tp!765484 () Bool)

(assert (=> b!2405800 (= e!1532163 (and tp!765483 tp!765484))))

(assert (=> b!2405571 (= tp!765423 e!1532163)))

(assert (= (and b!2405571 (is-Cons!28249 (t!208324 l!9164))) b!2405800))

(declare-fun b!2405805 () Bool)

(declare-fun e!1532166 () Bool)

(declare-fun tp!765487 () Bool)

(assert (=> b!2405805 (= e!1532166 (and tp_is_empty!11521 tp!765487))))

(assert (=> b!2405569 (= tp!765422 e!1532166)))

(assert (= (and b!2405569 (is-Cons!28248 (t!208323 s!9460))) b!2405805))

(declare-fun b!2405808 () Bool)

(declare-fun e!1532167 () Bool)

(declare-fun tp!765492 () Bool)

(assert (=> b!2405808 (= e!1532167 tp!765492)))

(declare-fun b!2405809 () Bool)

(declare-fun tp!765489 () Bool)

(declare-fun tp!765490 () Bool)

(assert (=> b!2405809 (= e!1532167 (and tp!765489 tp!765490))))

(assert (=> b!2405563 (= tp!765428 e!1532167)))

(declare-fun b!2405806 () Bool)

(assert (=> b!2405806 (= e!1532167 tp_is_empty!11521)))

(declare-fun b!2405807 () Bool)

(declare-fun tp!765491 () Bool)

(declare-fun tp!765488 () Bool)

(assert (=> b!2405807 (= e!1532167 (and tp!765491 tp!765488))))

(assert (= (and b!2405563 (is-ElementMatch!7054 (reg!7383 r!13927))) b!2405806))

(assert (= (and b!2405563 (is-Concat!11690 (reg!7383 r!13927))) b!2405807))

(assert (= (and b!2405563 (is-Star!7054 (reg!7383 r!13927))) b!2405808))

(assert (= (and b!2405563 (is-Union!7054 (reg!7383 r!13927))) b!2405809))

(declare-fun b!2405812 () Bool)

(declare-fun e!1532168 () Bool)

(declare-fun tp!765497 () Bool)

(assert (=> b!2405812 (= e!1532168 tp!765497)))

(declare-fun b!2405813 () Bool)

(declare-fun tp!765494 () Bool)

(declare-fun tp!765495 () Bool)

(assert (=> b!2405813 (= e!1532168 (and tp!765494 tp!765495))))

(assert (=> b!2405568 (= tp!765425 e!1532168)))

(declare-fun b!2405810 () Bool)

(assert (=> b!2405810 (= e!1532168 tp_is_empty!11521)))

(declare-fun b!2405811 () Bool)

(declare-fun tp!765496 () Bool)

(declare-fun tp!765493 () Bool)

(assert (=> b!2405811 (= e!1532168 (and tp!765496 tp!765493))))

(assert (= (and b!2405568 (is-ElementMatch!7054 (regOne!14620 r!13927))) b!2405810))

(assert (= (and b!2405568 (is-Concat!11690 (regOne!14620 r!13927))) b!2405811))

(assert (= (and b!2405568 (is-Star!7054 (regOne!14620 r!13927))) b!2405812))

(assert (= (and b!2405568 (is-Union!7054 (regOne!14620 r!13927))) b!2405813))

(declare-fun b!2405816 () Bool)

(declare-fun e!1532169 () Bool)

(declare-fun tp!765502 () Bool)

(assert (=> b!2405816 (= e!1532169 tp!765502)))

(declare-fun b!2405817 () Bool)

(declare-fun tp!765499 () Bool)

(declare-fun tp!765500 () Bool)

(assert (=> b!2405817 (= e!1532169 (and tp!765499 tp!765500))))

(assert (=> b!2405568 (= tp!765424 e!1532169)))

(declare-fun b!2405814 () Bool)

(assert (=> b!2405814 (= e!1532169 tp_is_empty!11521)))

(declare-fun b!2405815 () Bool)

(declare-fun tp!765501 () Bool)

(declare-fun tp!765498 () Bool)

(assert (=> b!2405815 (= e!1532169 (and tp!765501 tp!765498))))

(assert (= (and b!2405568 (is-ElementMatch!7054 (regTwo!14620 r!13927))) b!2405814))

(assert (= (and b!2405568 (is-Concat!11690 (regTwo!14620 r!13927))) b!2405815))

(assert (= (and b!2405568 (is-Star!7054 (regTwo!14620 r!13927))) b!2405816))

(assert (= (and b!2405568 (is-Union!7054 (regTwo!14620 r!13927))) b!2405817))

(declare-fun b_lambda!74405 () Bool)

(assert (= b_lambda!74403 (or start!235838 b_lambda!74405)))

(declare-fun bs!463286 () Bool)

(declare-fun d!700066 () Bool)

(assert (= bs!463286 (and d!700066 start!235838)))

(assert (=> bs!463286 (= (dynLambda!12165 lambda!90474 (h!33650 l!9164)) (validRegex!2779 (h!33650 l!9164)))))

(declare-fun m!2799857 () Bool)

(assert (=> bs!463286 m!2799857))

(assert (=> b!2405772 d!700066))

(push 1)

(assert (not bm!146978))

(assert (not b!2405786))

(assert (not b!2405681))

(assert (not b!2405636))

(assert (not b!2405813))

(assert (not b!2405811))

(assert (not b!2405790))

(assert (not b!2405634))

(assert (not b_lambda!74405))

(assert (not b!2405812))

(assert (not b!2405635))

(assert (not b!2405763))

(assert (not b!2405789))

(assert (not bm!146979))

(assert (not b!2405805))

(assert (not d!700060))

(assert (not b!2405685))

(assert (not d!700054))

(assert (not b!2405787))

(assert (not b!2405673))

(assert (not b!2405762))

(assert (not b!2405795))

(assert (not bs!463286))

(assert (not b!2405808))

(assert (not b!2405794))

(assert (not b!2405628))

(assert (not b!2405809))

(assert (not b!2405816))

(assert (not b!2405627))

(assert (not b!2405773))

(assert tp_is_empty!11521)

(assert (not b!2405630))

(assert (not b!2405785))

(assert (not b!2405793))

(assert (not b!2405815))

(assert (not b!2405677))

(assert (not b!2405800))

(assert (not b!2405817))

(assert (not b!2405682))

(assert (not b!2405791))

(assert (not b!2405632))

(assert (not bm!146970))

(assert (not b!2405807))

(assert (not b!2405684))

(assert (not d!700040))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

