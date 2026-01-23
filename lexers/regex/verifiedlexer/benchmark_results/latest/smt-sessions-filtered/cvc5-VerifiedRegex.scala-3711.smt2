; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!208832 () Bool)

(assert start!208832)

(assert (=> start!208832 true))

(declare-fun b!2152553 () Bool)

(declare-fun e!1376661 () Bool)

(declare-datatypes ((C!11922 0))(
  ( (C!11923 (val!6947 Int)) )
))
(declare-datatypes ((List!24833 0))(
  ( (Nil!24749) (Cons!24749 (h!30150 C!11922) (t!197381 List!24833)) )
))
(declare-datatypes ((IArray!16053 0))(
  ( (IArray!16054 (innerList!8084 List!24833)) )
))
(declare-datatypes ((Conc!8024 0))(
  ( (Node!8024 (left!19033 Conc!8024) (right!19363 Conc!8024) (csize!16278 Int) (cheight!8235 Int)) (Leaf!11736 (xs!10966 IArray!16053) (csize!16279 Int)) (Empty!8024) )
))
(declare-datatypes ((Regex!5888 0))(
  ( (ElementMatch!5888 (c!341359 C!11922)) (Concat!10190 (regOne!12288 Regex!5888) (regTwo!12288 Regex!5888)) (EmptyExpr!5888) (Star!5888 (reg!6217 Regex!5888)) (EmptyLang!5888) (Union!5888 (regOne!12289 Regex!5888) (regTwo!12289 Regex!5888)) )
))
(declare-datatypes ((List!24834 0))(
  ( (Nil!24750) (Cons!24750 (h!30151 Regex!5888) (t!197382 List!24834)) )
))
(declare-datatypes ((Context!2916 0))(
  ( (Context!2917 (exprs!1958 List!24834)) )
))
(declare-datatypes ((BalanceConc!15810 0))(
  ( (BalanceConc!15811 (c!341360 Conc!8024)) )
))
(declare-datatypes ((StackFrame!310 0))(
  ( (StackFrame!311 (z!5957 (Set Context!2916)) (from!2800 Int) (lastNullablePos!487 Int) (res!928176 Int) (totalInput!3289 BalanceConc!15810)) )
))
(declare-datatypes ((List!24835 0))(
  ( (Nil!24751) (Cons!24751 (h!30152 StackFrame!310) (t!197383 List!24835)) )
))
(declare-fun s!7978 () List!24835)

(declare-fun tp!669236 () Bool)

(declare-fun inv!32668 (Conc!8024) Bool)

(assert (=> b!2152553 (= e!1376661 (and (inv!32668 (c!341360 (totalInput!3289 (h!30152 s!7978)))) tp!669236))))

(declare-fun b!2152554 () Bool)

(declare-fun e!1376658 () Bool)

(declare-fun e!1376659 () Bool)

(declare-fun tp!669237 () Bool)

(declare-fun inv!32669 (StackFrame!310) Bool)

(assert (=> b!2152554 (= e!1376659 (and (inv!32669 (h!30152 s!7978)) e!1376658 tp!669237))))

(declare-fun setNonEmpty!17359 () Bool)

(declare-fun tp!669239 () Bool)

(declare-fun setRes!17359 () Bool)

(declare-fun e!1376657 () Bool)

(declare-fun setElem!17359 () Context!2916)

(declare-fun inv!32670 (Context!2916) Bool)

(assert (=> setNonEmpty!17359 (= setRes!17359 (and tp!669239 (inv!32670 setElem!17359) e!1376657))))

(declare-fun setRest!17359 () (Set Context!2916))

(assert (=> setNonEmpty!17359 (= (z!5957 (h!30152 s!7978)) (set.union (set.insert setElem!17359 (as set.empty (Set Context!2916))) setRest!17359))))

(declare-fun b!2152555 () Bool)

(declare-fun e!1376660 () Bool)

(declare-fun size!19349 (List!24835) Int)

(assert (=> b!2152555 (= e!1376660 (>= (size!19349 (t!197383 s!7978)) (size!19349 s!7978)))))

(declare-fun b!2152556 () Bool)

(declare-fun e!1376662 () Bool)

(assert (=> b!2152556 (= e!1376662 e!1376660)))

(declare-fun res!928174 () Bool)

(assert (=> b!2152556 (=> (not res!928174) (not e!1376660))))

(declare-fun lambda!81091 () Int)

(declare-fun forall!5066 (List!24835 Int) Bool)

(assert (=> b!2152556 (= res!928174 (forall!5066 (t!197383 s!7978) lambda!81091))))

(declare-datatypes ((Unit!37894 0))(
  ( (Unit!37895) )
))
(declare-fun lt!801273 () Unit!37894)

(declare-fun lemmaInv!802 (StackFrame!310) Unit!37894)

(assert (=> b!2152556 (= lt!801273 (lemmaInv!802 (h!30152 s!7978)))))

(declare-fun res!928175 () Bool)

(assert (=> start!208832 (=> (not res!928175) (not e!1376662))))

(assert (=> start!208832 (= res!928175 (forall!5066 s!7978 lambda!81091))))

(assert (=> start!208832 e!1376662))

(assert (=> start!208832 e!1376659))

(assert (=> start!208832 true))

(declare-fun b!2152557 () Bool)

(declare-fun res!928173 () Bool)

(assert (=> b!2152557 (=> (not res!928173) (not e!1376662))))

(declare-fun res1!7 () Int)

(declare-fun res2!7 () Int)

(assert (=> b!2152557 (= res!928173 (and (= res1!7 res2!7) (not (is-Nil!24751 s!7978))))))

(declare-fun b!2152558 () Bool)

(declare-fun tp!669238 () Bool)

(assert (=> b!2152558 (= e!1376657 tp!669238)))

(declare-fun b!2152559 () Bool)

(declare-fun inv!32671 (BalanceConc!15810) Bool)

(assert (=> b!2152559 (= e!1376658 (and setRes!17359 (inv!32671 (totalInput!3289 (h!30152 s!7978))) e!1376661))))

(declare-fun condSetEmpty!17359 () Bool)

(assert (=> b!2152559 (= condSetEmpty!17359 (= (z!5957 (h!30152 s!7978)) (as set.empty (Set Context!2916))))))

(declare-fun setIsEmpty!17359 () Bool)

(assert (=> setIsEmpty!17359 setRes!17359))

(assert (= (and start!208832 res!928175) b!2152557))

(assert (= (and b!2152557 res!928173) b!2152556))

(assert (= (and b!2152556 res!928174) b!2152555))

(assert (= (and b!2152559 condSetEmpty!17359) setIsEmpty!17359))

(assert (= (and b!2152559 (not condSetEmpty!17359)) setNonEmpty!17359))

(assert (= setNonEmpty!17359 b!2152558))

(assert (= b!2152559 b!2152553))

(assert (= b!2152554 b!2152559))

(assert (= (and start!208832 (is-Cons!24751 s!7978)) b!2152554))

(declare-fun m!2594690 () Bool)

(assert (=> b!2152559 m!2594690))

(declare-fun m!2594692 () Bool)

(assert (=> b!2152556 m!2594692))

(declare-fun m!2594694 () Bool)

(assert (=> b!2152556 m!2594694))

(declare-fun m!2594696 () Bool)

(assert (=> b!2152555 m!2594696))

(declare-fun m!2594698 () Bool)

(assert (=> b!2152555 m!2594698))

(declare-fun m!2594700 () Bool)

(assert (=> b!2152554 m!2594700))

(declare-fun m!2594702 () Bool)

(assert (=> b!2152553 m!2594702))

(declare-fun m!2594704 () Bool)

(assert (=> start!208832 m!2594704))

(declare-fun m!2594706 () Bool)

(assert (=> setNonEmpty!17359 m!2594706))

(push 1)

(assert (not setNonEmpty!17359))

(assert (not b!2152556))

(assert (not b!2152553))

(assert (not b!2152559))

(assert (not start!208832))

(assert (not b!2152558))

(assert (not b!2152554))

(assert (not b!2152555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!645910 () Bool)

(declare-fun c!341365 () Bool)

(assert (=> d!645910 (= c!341365 (is-Node!8024 (c!341360 (totalInput!3289 (h!30152 s!7978)))))))

(declare-fun e!1376685 () Bool)

(assert (=> d!645910 (= (inv!32668 (c!341360 (totalInput!3289 (h!30152 s!7978)))) e!1376685)))

(declare-fun b!2152591 () Bool)

(declare-fun inv!32676 (Conc!8024) Bool)

(assert (=> b!2152591 (= e!1376685 (inv!32676 (c!341360 (totalInput!3289 (h!30152 s!7978)))))))

(declare-fun b!2152592 () Bool)

(declare-fun e!1376686 () Bool)

(assert (=> b!2152592 (= e!1376685 e!1376686)))

(declare-fun res!928189 () Bool)

(assert (=> b!2152592 (= res!928189 (not (is-Leaf!11736 (c!341360 (totalInput!3289 (h!30152 s!7978))))))))

(assert (=> b!2152592 (=> res!928189 e!1376686)))

(declare-fun b!2152593 () Bool)

(declare-fun inv!32677 (Conc!8024) Bool)

(assert (=> b!2152593 (= e!1376686 (inv!32677 (c!341360 (totalInput!3289 (h!30152 s!7978)))))))

(assert (= (and d!645910 c!341365) b!2152591))

(assert (= (and d!645910 (not c!341365)) b!2152592))

(assert (= (and b!2152592 (not res!928189)) b!2152593))

(declare-fun m!2594726 () Bool)

(assert (=> b!2152591 m!2594726))

(declare-fun m!2594728 () Bool)

(assert (=> b!2152593 m!2594728))

(assert (=> b!2152553 d!645910))

(declare-fun d!645914 () Bool)

(declare-fun res!928197 () Bool)

(declare-fun e!1376697 () Bool)

(assert (=> d!645914 (=> res!928197 e!1376697)))

(assert (=> d!645914 (= res!928197 (is-Nil!24751 (t!197383 s!7978)))))

(assert (=> d!645914 (= (forall!5066 (t!197383 s!7978) lambda!81091) e!1376697)))

(declare-fun b!2152607 () Bool)

(declare-fun e!1376698 () Bool)

(assert (=> b!2152607 (= e!1376697 e!1376698)))

(declare-fun res!928198 () Bool)

(assert (=> b!2152607 (=> (not res!928198) (not e!1376698))))

(declare-fun dynLambda!11403 (Int StackFrame!310) Bool)

(assert (=> b!2152607 (= res!928198 (dynLambda!11403 lambda!81091 (h!30152 (t!197383 s!7978))))))

(declare-fun b!2152608 () Bool)

(assert (=> b!2152608 (= e!1376698 (forall!5066 (t!197383 (t!197383 s!7978)) lambda!81091))))

(assert (= (and d!645914 (not res!928197)) b!2152607))

(assert (= (and b!2152607 res!928198) b!2152608))

(declare-fun b_lambda!70873 () Bool)

(assert (=> (not b_lambda!70873) (not b!2152607)))

(declare-fun m!2594734 () Bool)

(assert (=> b!2152607 m!2594734))

(declare-fun m!2594736 () Bool)

(assert (=> b!2152608 m!2594736))

(assert (=> b!2152556 d!645914))

(declare-fun b!2152639 () Bool)

(declare-fun res!928231 () Bool)

(declare-fun e!1376714 () Bool)

(assert (=> b!2152639 (=> (not res!928231) (not e!1376714))))

(declare-fun size!19351 (BalanceConc!15810) Int)

(assert (=> b!2152639 (= res!928231 (<= (from!2800 (h!30152 s!7978)) (size!19351 (totalInput!3289 (h!30152 s!7978)))))))

(declare-fun b!2152640 () Bool)

(declare-fun res!928232 () Bool)

(assert (=> b!2152640 (=> (not res!928232) (not e!1376714))))

(declare-fun e!1376713 () Bool)

(assert (=> b!2152640 (= res!928232 e!1376713)))

(declare-fun res!928229 () Bool)

(assert (=> b!2152640 (=> res!928229 e!1376713)))

(declare-fun nullableZipper!208 ((Set Context!2916)) Bool)

(assert (=> b!2152640 (= res!928229 (not (nullableZipper!208 (z!5957 (h!30152 s!7978)))))))

(declare-fun b!2152641 () Bool)

(assert (=> b!2152641 (= e!1376713 (= (lastNullablePos!487 (h!30152 s!7978)) (- (from!2800 (h!30152 s!7978)) 1)))))

(declare-fun b!2152642 () Bool)

(declare-fun furthestNullablePosition!117 ((Set Context!2916) Int BalanceConc!15810 Int Int) Int)

(assert (=> b!2152642 (= e!1376714 (= (res!928176 (h!30152 s!7978)) (furthestNullablePosition!117 (z!5957 (h!30152 s!7978)) (from!2800 (h!30152 s!7978)) (totalInput!3289 (h!30152 s!7978)) (size!19351 (totalInput!3289 (h!30152 s!7978))) (lastNullablePos!487 (h!30152 s!7978)))))))

(declare-fun b!2152643 () Bool)

(declare-fun res!928234 () Bool)

(assert (=> b!2152643 (=> (not res!928234) (not e!1376714))))

(assert (=> b!2152643 (= res!928234 (and (>= (lastNullablePos!487 (h!30152 s!7978)) (- 1)) (< (lastNullablePos!487 (h!30152 s!7978)) (from!2800 (h!30152 s!7978)))))))

(declare-fun b!2152644 () Bool)

(declare-fun res!928233 () Bool)

(assert (=> b!2152644 (=> (not res!928233) (not e!1376714))))

(assert (=> b!2152644 (= res!928233 (= (size!19351 (totalInput!3289 (h!30152 s!7978))) (size!19351 (totalInput!3289 (h!30152 s!7978)))))))

(declare-fun d!645918 () Bool)

(assert (=> d!645918 e!1376714))

(declare-fun res!928230 () Bool)

(assert (=> d!645918 (=> (not res!928230) (not e!1376714))))

(assert (=> d!645918 (= res!928230 (>= (from!2800 (h!30152 s!7978)) 0))))

(declare-fun Unit!37898 () Unit!37894)

(assert (=> d!645918 (= (lemmaInv!802 (h!30152 s!7978)) Unit!37898)))

(assert (= (and d!645918 res!928230) b!2152639))

(assert (= (and b!2152639 res!928231) b!2152644))

(assert (= (and b!2152644 res!928233) b!2152643))

(assert (= (and b!2152643 res!928234) b!2152640))

(assert (= (and b!2152640 (not res!928229)) b!2152641))

(assert (= (and b!2152640 res!928232) b!2152642))

(declare-fun m!2594742 () Bool)

(assert (=> b!2152639 m!2594742))

(declare-fun m!2594744 () Bool)

(assert (=> b!2152640 m!2594744))

(assert (=> b!2152642 m!2594742))

(assert (=> b!2152642 m!2594742))

(declare-fun m!2594746 () Bool)

(assert (=> b!2152642 m!2594746))

(assert (=> b!2152644 m!2594742))

(assert (=> b!2152556 d!645918))

(declare-fun d!645922 () Bool)

(declare-fun res!928235 () Bool)

(declare-fun e!1376715 () Bool)

(assert (=> d!645922 (=> res!928235 e!1376715)))

(assert (=> d!645922 (= res!928235 (is-Nil!24751 s!7978))))

(assert (=> d!645922 (= (forall!5066 s!7978 lambda!81091) e!1376715)))

(declare-fun b!2152645 () Bool)

(declare-fun e!1376716 () Bool)

(assert (=> b!2152645 (= e!1376715 e!1376716)))

(declare-fun res!928236 () Bool)

(assert (=> b!2152645 (=> (not res!928236) (not e!1376716))))

(assert (=> b!2152645 (= res!928236 (dynLambda!11403 lambda!81091 (h!30152 s!7978)))))

(declare-fun b!2152646 () Bool)

(assert (=> b!2152646 (= e!1376716 (forall!5066 (t!197383 s!7978) lambda!81091))))

(assert (= (and d!645922 (not res!928235)) b!2152645))

(assert (= (and b!2152645 res!928236) b!2152646))

(declare-fun b_lambda!70877 () Bool)

(assert (=> (not b_lambda!70877) (not b!2152645)))

(declare-fun m!2594748 () Bool)

(assert (=> b!2152645 m!2594748))

(assert (=> b!2152646 m!2594692))

(assert (=> start!208832 d!645922))

(declare-fun d!645924 () Bool)

(declare-fun lt!801279 () Int)

(assert (=> d!645924 (>= lt!801279 0)))

(declare-fun e!1376721 () Int)

(assert (=> d!645924 (= lt!801279 e!1376721)))

(declare-fun c!341371 () Bool)

(assert (=> d!645924 (= c!341371 (is-Nil!24751 (t!197383 s!7978)))))

(assert (=> d!645924 (= (size!19349 (t!197383 s!7978)) lt!801279)))

(declare-fun b!2152657 () Bool)

(assert (=> b!2152657 (= e!1376721 0)))

(declare-fun b!2152658 () Bool)

(assert (=> b!2152658 (= e!1376721 (+ 1 (size!19349 (t!197383 (t!197383 s!7978)))))))

(assert (= (and d!645924 c!341371) b!2152657))

(assert (= (and d!645924 (not c!341371)) b!2152658))

(declare-fun m!2594756 () Bool)

(assert (=> b!2152658 m!2594756))

(assert (=> b!2152555 d!645924))

(declare-fun d!645928 () Bool)

(declare-fun lt!801280 () Int)

(assert (=> d!645928 (>= lt!801280 0)))

(declare-fun e!1376722 () Int)

(assert (=> d!645928 (= lt!801280 e!1376722)))

(declare-fun c!341372 () Bool)

(assert (=> d!645928 (= c!341372 (is-Nil!24751 s!7978))))

(assert (=> d!645928 (= (size!19349 s!7978) lt!801280)))

(declare-fun b!2152659 () Bool)

(assert (=> b!2152659 (= e!1376722 0)))

(declare-fun b!2152660 () Bool)

(assert (=> b!2152660 (= e!1376722 (+ 1 (size!19349 (t!197383 s!7978))))))

(assert (= (and d!645928 c!341372) b!2152659))

(assert (= (and d!645928 (not c!341372)) b!2152660))

(assert (=> b!2152660 m!2594696))

(assert (=> b!2152555 d!645928))

(declare-fun b!2152683 () Bool)

(declare-fun e!1376734 () Bool)

(assert (=> b!2152683 (= e!1376734 (= (lastNullablePos!487 (h!30152 s!7978)) (- (from!2800 (h!30152 s!7978)) 1)))))

(declare-fun b!2152684 () Bool)

(declare-fun res!928262 () Bool)

(declare-fun e!1376733 () Bool)

(assert (=> b!2152684 (=> (not res!928262) (not e!1376733))))

(assert (=> b!2152684 (= res!928262 (and (>= (lastNullablePos!487 (h!30152 s!7978)) (- 1)) (< (lastNullablePos!487 (h!30152 s!7978)) (from!2800 (h!30152 s!7978)))))))

(declare-fun d!645930 () Bool)

(declare-fun res!928260 () Bool)

(assert (=> d!645930 (=> (not res!928260) (not e!1376733))))

(assert (=> d!645930 (= res!928260 (>= (from!2800 (h!30152 s!7978)) 0))))

(assert (=> d!645930 (= (inv!32669 (h!30152 s!7978)) e!1376733)))

(declare-fun b!2152685 () Bool)

(assert (=> b!2152685 (= e!1376733 (= (res!928176 (h!30152 s!7978)) (furthestNullablePosition!117 (z!5957 (h!30152 s!7978)) (from!2800 (h!30152 s!7978)) (totalInput!3289 (h!30152 s!7978)) (size!19351 (totalInput!3289 (h!30152 s!7978))) (lastNullablePos!487 (h!30152 s!7978)))))))

(declare-fun b!2152686 () Bool)

(declare-fun res!928259 () Bool)

(assert (=> b!2152686 (=> (not res!928259) (not e!1376733))))

(assert (=> b!2152686 (= res!928259 (<= (from!2800 (h!30152 s!7978)) (size!19351 (totalInput!3289 (h!30152 s!7978)))))))

(declare-fun b!2152687 () Bool)

(declare-fun res!928257 () Bool)

(assert (=> b!2152687 (=> (not res!928257) (not e!1376733))))

(assert (=> b!2152687 (= res!928257 (= (size!19351 (totalInput!3289 (h!30152 s!7978))) (size!19351 (totalInput!3289 (h!30152 s!7978)))))))

(declare-fun b!2152688 () Bool)

(declare-fun res!928258 () Bool)

(assert (=> b!2152688 (=> (not res!928258) (not e!1376733))))

(assert (=> b!2152688 (= res!928258 e!1376734)))

(declare-fun res!928261 () Bool)

(assert (=> b!2152688 (=> res!928261 e!1376734)))

(assert (=> b!2152688 (= res!928261 (not (nullableZipper!208 (z!5957 (h!30152 s!7978)))))))

(assert (= (and d!645930 res!928260) b!2152686))

(assert (= (and b!2152686 res!928259) b!2152687))

(assert (= (and b!2152687 res!928257) b!2152684))

(assert (= (and b!2152684 res!928262) b!2152688))

(assert (= (and b!2152688 (not res!928261)) b!2152683))

(assert (= (and b!2152688 res!928258) b!2152685))

(assert (=> b!2152685 m!2594742))

(assert (=> b!2152685 m!2594742))

(assert (=> b!2152685 m!2594746))

(assert (=> b!2152686 m!2594742))

(assert (=> b!2152687 m!2594742))

(assert (=> b!2152688 m!2594744))

(assert (=> b!2152554 d!645930))

(declare-fun d!645938 () Bool)

(declare-fun lambda!81099 () Int)

(declare-fun forall!5068 (List!24834 Int) Bool)

(assert (=> d!645938 (= (inv!32670 setElem!17359) (forall!5068 (exprs!1958 setElem!17359) lambda!81099))))

(declare-fun bs!445693 () Bool)

(assert (= bs!445693 d!645938))

(declare-fun m!2594762 () Bool)

(assert (=> bs!445693 m!2594762))

(assert (=> setNonEmpty!17359 d!645938))

(declare-fun d!645942 () Bool)

(declare-fun isBalanced!2489 (Conc!8024) Bool)

(assert (=> d!645942 (= (inv!32671 (totalInput!3289 (h!30152 s!7978))) (isBalanced!2489 (c!341360 (totalInput!3289 (h!30152 s!7978)))))))

(declare-fun bs!445694 () Bool)

(assert (= bs!445694 d!645942))

(declare-fun m!2594764 () Bool)

(assert (=> bs!445694 m!2594764))

(assert (=> b!2152559 d!645942))

(declare-fun tp!669258 () Bool)

(declare-fun e!1376746 () Bool)

(declare-fun tp!669260 () Bool)

(declare-fun b!2152715 () Bool)

(assert (=> b!2152715 (= e!1376746 (and (inv!32668 (left!19033 (c!341360 (totalInput!3289 (h!30152 s!7978))))) tp!669260 (inv!32668 (right!19363 (c!341360 (totalInput!3289 (h!30152 s!7978))))) tp!669258))))

(declare-fun b!2152717 () Bool)

(declare-fun e!1376745 () Bool)

(declare-fun tp!669259 () Bool)

(assert (=> b!2152717 (= e!1376745 tp!669259)))

(declare-fun b!2152716 () Bool)

(declare-fun inv!32678 (IArray!16053) Bool)

(assert (=> b!2152716 (= e!1376746 (and (inv!32678 (xs!10966 (c!341360 (totalInput!3289 (h!30152 s!7978))))) e!1376745))))

(assert (=> b!2152553 (= tp!669236 (and (inv!32668 (c!341360 (totalInput!3289 (h!30152 s!7978)))) e!1376746))))

(assert (= (and b!2152553 (is-Node!8024 (c!341360 (totalInput!3289 (h!30152 s!7978))))) b!2152715))

(assert (= b!2152716 b!2152717))

(assert (= (and b!2152553 (is-Leaf!11736 (c!341360 (totalInput!3289 (h!30152 s!7978))))) b!2152716))

(declare-fun m!2594766 () Bool)

(assert (=> b!2152715 m!2594766))

(declare-fun m!2594768 () Bool)

(assert (=> b!2152715 m!2594768))

(declare-fun m!2594770 () Bool)

(assert (=> b!2152716 m!2594770))

(assert (=> b!2152553 m!2594702))

(declare-fun b!2152722 () Bool)

(declare-fun e!1376749 () Bool)

(declare-fun tp!669265 () Bool)

(declare-fun tp!669266 () Bool)

(assert (=> b!2152722 (= e!1376749 (and tp!669265 tp!669266))))

(assert (=> b!2152558 (= tp!669238 e!1376749)))

(assert (= (and b!2152558 (is-Cons!24750 (exprs!1958 setElem!17359))) b!2152722))

(declare-fun e!1376758 () Bool)

(assert (=> b!2152554 (= tp!669237 e!1376758)))

(declare-fun e!1376760 () Bool)

(declare-fun setNonEmpty!17365 () Bool)

(declare-fun setElem!17365 () Context!2916)

(declare-fun setRes!17365 () Bool)

(declare-fun tp!669277 () Bool)

(assert (=> setNonEmpty!17365 (= setRes!17365 (and tp!669277 (inv!32670 setElem!17365) e!1376760))))

(declare-fun setRest!17365 () (Set Context!2916))

(assert (=> setNonEmpty!17365 (= (z!5957 (h!30152 (t!197383 s!7978))) (set.union (set.insert setElem!17365 (as set.empty (Set Context!2916))) setRest!17365))))

(declare-fun setIsEmpty!17365 () Bool)

(assert (=> setIsEmpty!17365 setRes!17365))

(declare-fun b!2152733 () Bool)

(declare-fun e!1376761 () Bool)

(declare-fun tp!669276 () Bool)

(assert (=> b!2152733 (= e!1376761 (and (inv!32668 (c!341360 (totalInput!3289 (h!30152 (t!197383 s!7978))))) tp!669276))))

(declare-fun b!2152734 () Bool)

(declare-fun tp!669278 () Bool)

(assert (=> b!2152734 (= e!1376760 tp!669278)))

(declare-fun b!2152735 () Bool)

(declare-fun e!1376759 () Bool)

(declare-fun tp!669275 () Bool)

(assert (=> b!2152735 (= e!1376758 (and (inv!32669 (h!30152 (t!197383 s!7978))) e!1376759 tp!669275))))

(declare-fun b!2152736 () Bool)

(assert (=> b!2152736 (= e!1376759 (and setRes!17365 (inv!32671 (totalInput!3289 (h!30152 (t!197383 s!7978)))) e!1376761))))

(declare-fun condSetEmpty!17365 () Bool)

(assert (=> b!2152736 (= condSetEmpty!17365 (= (z!5957 (h!30152 (t!197383 s!7978))) (as set.empty (Set Context!2916))))))

(assert (= (and b!2152736 condSetEmpty!17365) setIsEmpty!17365))

(assert (= (and b!2152736 (not condSetEmpty!17365)) setNonEmpty!17365))

(assert (= setNonEmpty!17365 b!2152734))

(assert (= b!2152736 b!2152733))

(assert (= b!2152735 b!2152736))

(assert (= (and b!2152554 (is-Cons!24751 (t!197383 s!7978))) b!2152735))

(declare-fun m!2594772 () Bool)

(assert (=> setNonEmpty!17365 m!2594772))

(declare-fun m!2594774 () Bool)

(assert (=> b!2152733 m!2594774))

(declare-fun m!2594776 () Bool)

(assert (=> b!2152735 m!2594776))

(declare-fun m!2594778 () Bool)

(assert (=> b!2152736 m!2594778))

(declare-fun condSetEmpty!17368 () Bool)

(assert (=> setNonEmpty!17359 (= condSetEmpty!17368 (= setRest!17359 (as set.empty (Set Context!2916))))))

(declare-fun setRes!17368 () Bool)

(assert (=> setNonEmpty!17359 (= tp!669239 setRes!17368)))

(declare-fun setIsEmpty!17368 () Bool)

(assert (=> setIsEmpty!17368 setRes!17368))

(declare-fun tp!669284 () Bool)

(declare-fun e!1376764 () Bool)

(declare-fun setElem!17368 () Context!2916)

(declare-fun setNonEmpty!17368 () Bool)

(assert (=> setNonEmpty!17368 (= setRes!17368 (and tp!669284 (inv!32670 setElem!17368) e!1376764))))

(declare-fun setRest!17368 () (Set Context!2916))

(assert (=> setNonEmpty!17368 (= setRest!17359 (set.union (set.insert setElem!17368 (as set.empty (Set Context!2916))) setRest!17368))))

(declare-fun b!2152741 () Bool)

(declare-fun tp!669283 () Bool)

(assert (=> b!2152741 (= e!1376764 tp!669283)))

(assert (= (and setNonEmpty!17359 condSetEmpty!17368) setIsEmpty!17368))

(assert (= (and setNonEmpty!17359 (not condSetEmpty!17368)) setNonEmpty!17368))

(assert (= setNonEmpty!17368 b!2152741))

(declare-fun m!2594780 () Bool)

(assert (=> setNonEmpty!17368 m!2594780))

(declare-fun b_lambda!70881 () Bool)

(assert (= b_lambda!70877 (or start!208832 b_lambda!70881)))

(declare-fun bs!445695 () Bool)

(declare-fun d!645944 () Bool)

(assert (= bs!445695 (and d!645944 start!208832)))

(assert (=> bs!445695 (= (dynLambda!11403 lambda!81091 (h!30152 s!7978)) (= (res!928176 (h!30152 s!7978)) res1!7))))

(assert (=> b!2152645 d!645944))

(declare-fun b_lambda!70883 () Bool)

(assert (= b_lambda!70873 (or start!208832 b_lambda!70883)))

(declare-fun bs!445696 () Bool)

(declare-fun d!645946 () Bool)

(assert (= bs!445696 (and d!645946 start!208832)))

(assert (=> bs!445696 (= (dynLambda!11403 lambda!81091 (h!30152 (t!197383 s!7978))) (= (res!928176 (h!30152 (t!197383 s!7978))) res1!7))))

(assert (=> b!2152607 d!645946))

(push 1)

(assert (not b!2152687))

(assert (not setNonEmpty!17368))

(assert (not b!2152640))

(assert (not b!2152735))

(assert (not b_lambda!70883))

(assert (not b!2152722))

(assert (not b!2152688))

(assert (not d!645938))

(assert (not b!2152639))

(assert (not b!2152658))

(assert (not b!2152642))

(assert (not b!2152660))

(assert (not b!2152733))

(assert (not b!2152736))

(assert (not b!2152591))

(assert (not b!2152717))

(assert (not b!2152716))

(assert (not b!2152741))

(assert (not b!2152593))

(assert (not b!2152715))

(assert (not b!2152553))

(assert (not d!645942))

(assert (not b!2152734))

(assert (not b!2152644))

(assert (not b!2152686))

(assert (not b!2152685))

(assert (not setNonEmpty!17365))

(assert (not b_lambda!70881))

(assert (not b!2152646))

(assert (not b!2152608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

