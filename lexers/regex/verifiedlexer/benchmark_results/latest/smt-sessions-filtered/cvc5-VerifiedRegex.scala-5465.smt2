; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277250 () Bool)

(assert start!277250)

(declare-fun tp!913491 () Bool)

(declare-fun setRes!24958 () Bool)

(declare-datatypes ((C!17150 0))(
  ( (C!17151 (val!10609 Int)) )
))
(declare-datatypes ((Regex!8484 0))(
  ( (ElementMatch!8484 (c!459384 C!17150)) (Concat!13787 (regOne!17480 Regex!8484) (regTwo!17480 Regex!8484)) (EmptyExpr!8484) (Star!8484 (reg!8813 Regex!8484)) (EmptyLang!8484) (Union!8484 (regOne!17481 Regex!8484) (regTwo!17481 Regex!8484)) )
))
(declare-datatypes ((List!33913 0))(
  ( (Nil!33789) (Cons!33789 (h!39209 Regex!8484) (t!232938 List!33913)) )
))
(declare-datatypes ((Context!5024 0))(
  ( (Context!5025 (exprs!3012 List!33913)) )
))
(declare-fun setElem!24958 () Context!5024)

(declare-fun e!1803976 () Bool)

(declare-fun setNonEmpty!24958 () Bool)

(declare-fun inv!45823 (Context!5024) Bool)

(assert (=> setNonEmpty!24958 (= setRes!24958 (and tp!913491 (inv!45823 setElem!24958) e!1803976))))

(declare-fun z!632 () (Set Context!5024))

(declare-fun setRest!24958 () (Set Context!5024))

(assert (=> setNonEmpty!24958 (= z!632 (set.union (set.insert setElem!24958 (as set.empty (Set Context!5024))) setRest!24958))))

(declare-fun b!2847094 () Bool)

(declare-fun e!1803977 () Bool)

(declare-datatypes ((List!33914 0))(
  ( (Nil!33790) (Cons!33790 (h!39210 C!17150) (t!232939 List!33914)) )
))
(declare-datatypes ((IArray!20961 0))(
  ( (IArray!20962 (innerList!10538 List!33914)) )
))
(declare-datatypes ((Conc!10478 0))(
  ( (Node!10478 (left!25439 Conc!10478) (right!25769 Conc!10478) (csize!21186 Int) (cheight!10689 Int)) (Leaf!15944 (xs!13596 IArray!20961) (csize!21187 Int)) (Empty!10478) )
))
(declare-datatypes ((BalanceConc!20594 0))(
  ( (BalanceConc!20595 (c!459385 Conc!10478)) )
))
(declare-fun input!3762 () BalanceConc!20594)

(declare-fun tp!913490 () Bool)

(declare-fun inv!45824 (Conc!10478) Bool)

(assert (=> b!2847094 (= e!1803977 (and (inv!45824 (c!459385 input!3762)) tp!913490))))

(declare-fun b!2847095 () Bool)

(declare-fun e!1803974 () Bool)

(declare-fun i!1868 () Int)

(declare-fun lostCauseZipper!525 ((Set Context!5024)) Bool)

(declare-fun prefixMatchZipperSequence!761 ((Set Context!5024) BalanceConc!20594 Int) Bool)

(assert (=> b!2847095 (= e!1803974 (not (= (not (lostCauseZipper!525 z!632)) (prefixMatchZipperSequence!761 z!632 input!3762 i!1868))))))

(declare-fun setIsEmpty!24958 () Bool)

(assert (=> setIsEmpty!24958 setRes!24958))

(declare-fun b!2847096 () Bool)

(declare-fun tp!913492 () Bool)

(assert (=> b!2847096 (= e!1803976 tp!913492)))

(declare-fun res!1183799 () Bool)

(declare-fun e!1803975 () Bool)

(assert (=> start!277250 (=> (not res!1183799) (not e!1803975))))

(assert (=> start!277250 (= res!1183799 (>= i!1868 0))))

(assert (=> start!277250 e!1803975))

(assert (=> start!277250 true))

(declare-fun inv!45825 (BalanceConc!20594) Bool)

(assert (=> start!277250 (and (inv!45825 input!3762) e!1803977)))

(declare-fun condSetEmpty!24958 () Bool)

(assert (=> start!277250 (= condSetEmpty!24958 (= z!632 (as set.empty (Set Context!5024))))))

(assert (=> start!277250 setRes!24958))

(declare-fun b!2847097 () Bool)

(assert (=> b!2847097 (= e!1803975 e!1803974)))

(declare-fun res!1183798 () Bool)

(assert (=> b!2847097 (=> (not res!1183798) (not e!1803974))))

(declare-fun lt!1012841 () Int)

(assert (=> b!2847097 (= res!1183798 (and (<= i!1868 lt!1012841) (= i!1868 lt!1012841)))))

(declare-fun size!26236 (BalanceConc!20594) Int)

(assert (=> b!2847097 (= lt!1012841 (size!26236 input!3762))))

(assert (= (and start!277250 res!1183799) b!2847097))

(assert (= (and b!2847097 res!1183798) b!2847095))

(assert (= start!277250 b!2847094))

(assert (= (and start!277250 condSetEmpty!24958) setIsEmpty!24958))

(assert (= (and start!277250 (not condSetEmpty!24958)) setNonEmpty!24958))

(assert (= setNonEmpty!24958 b!2847096))

(declare-fun m!3274665 () Bool)

(assert (=> b!2847095 m!3274665))

(declare-fun m!3274667 () Bool)

(assert (=> b!2847095 m!3274667))

(declare-fun m!3274669 () Bool)

(assert (=> b!2847094 m!3274669))

(declare-fun m!3274671 () Bool)

(assert (=> start!277250 m!3274671))

(declare-fun m!3274673 () Bool)

(assert (=> b!2847097 m!3274673))

(declare-fun m!3274675 () Bool)

(assert (=> setNonEmpty!24958 m!3274675))

(push 1)

(assert (not setNonEmpty!24958))

(assert (not b!2847097))

(assert (not b!2847094))

(assert (not b!2847095))

(assert (not start!277250))

(assert (not b!2847096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!825462 () Bool)

(declare-fun c!459390 () Bool)

(assert (=> d!825462 (= c!459390 (is-Node!10478 (c!459385 input!3762)))))

(declare-fun e!1803994 () Bool)

(assert (=> d!825462 (= (inv!45824 (c!459385 input!3762)) e!1803994)))

(declare-fun b!2847116 () Bool)

(declare-fun inv!45829 (Conc!10478) Bool)

(assert (=> b!2847116 (= e!1803994 (inv!45829 (c!459385 input!3762)))))

(declare-fun b!2847117 () Bool)

(declare-fun e!1803995 () Bool)

(assert (=> b!2847117 (= e!1803994 e!1803995)))

(declare-fun res!1183808 () Bool)

(assert (=> b!2847117 (= res!1183808 (not (is-Leaf!15944 (c!459385 input!3762))))))

(assert (=> b!2847117 (=> res!1183808 e!1803995)))

(declare-fun b!2847118 () Bool)

(declare-fun inv!45830 (Conc!10478) Bool)

(assert (=> b!2847118 (= e!1803995 (inv!45830 (c!459385 input!3762)))))

(assert (= (and d!825462 c!459390) b!2847116))

(assert (= (and d!825462 (not c!459390)) b!2847117))

(assert (= (and b!2847117 (not res!1183808)) b!2847118))

(declare-fun m!3274691 () Bool)

(assert (=> b!2847116 m!3274691))

(declare-fun m!3274693 () Bool)

(assert (=> b!2847118 m!3274693))

(assert (=> b!2847094 d!825462))

(declare-fun bs!519958 () Bool)

(declare-fun b!2847123 () Bool)

(declare-fun d!825466 () Bool)

(assert (= bs!519958 (and b!2847123 d!825466)))

(declare-fun lambda!104502 () Int)

(declare-fun lambda!104501 () Int)

(assert (=> bs!519958 (not (= lambda!104502 lambda!104501))))

(declare-fun bs!519959 () Bool)

(declare-fun b!2847124 () Bool)

(assert (= bs!519959 (and b!2847124 d!825466)))

(declare-fun lambda!104503 () Int)

(assert (=> bs!519959 (not (= lambda!104503 lambda!104501))))

(declare-fun bs!519960 () Bool)

(assert (= bs!519960 (and b!2847124 b!2847123)))

(assert (=> bs!519960 (= lambda!104503 lambda!104502)))

(declare-datatypes ((Unit!47553 0))(
  ( (Unit!47554) )
))
(declare-fun e!1804002 () Unit!47553)

(declare-fun Unit!47555 () Unit!47553)

(assert (=> b!2847123 (= e!1804002 Unit!47555)))

(declare-datatypes ((List!33917 0))(
  ( (Nil!33793) (Cons!33793 (h!39213 Context!5024) (t!232942 List!33917)) )
))
(declare-fun lt!1012862 () List!33917)

(declare-fun call!183582 () List!33917)

(assert (=> b!2847123 (= lt!1012862 call!183582)))

(declare-fun lt!1012866 () Unit!47553)

(declare-fun lemmaNotForallThenExists!116 (List!33917 Int) Unit!47553)

(assert (=> b!2847123 (= lt!1012866 (lemmaNotForallThenExists!116 lt!1012862 lambda!104501))))

(declare-fun call!183581 () Bool)

(assert (=> b!2847123 call!183581))

(declare-fun lt!1012865 () Unit!47553)

(assert (=> b!2847123 (= lt!1012865 lt!1012866)))

(declare-fun Unit!47556 () Unit!47553)

(assert (=> b!2847124 (= e!1804002 Unit!47556)))

(declare-fun lt!1012861 () List!33917)

(assert (=> b!2847124 (= lt!1012861 call!183582)))

(declare-fun lt!1012867 () Unit!47553)

(declare-fun lemmaForallThenNotExists!116 (List!33917 Int) Unit!47553)

(assert (=> b!2847124 (= lt!1012867 (lemmaForallThenNotExists!116 lt!1012861 lambda!104501))))

(assert (=> b!2847124 (not call!183581)))

(declare-fun lt!1012863 () Unit!47553)

(assert (=> b!2847124 (= lt!1012863 lt!1012867)))

(declare-fun bm!183577 () Bool)

(declare-fun c!459401 () Bool)

(declare-fun exists!1033 (List!33917 Int) Bool)

(assert (=> bm!183577 (= call!183581 (exists!1033 (ite c!459401 lt!1012862 lt!1012861) (ite c!459401 lambda!104502 lambda!104503)))))

(declare-fun bm!183576 () Bool)

(declare-fun toList!1917 ((Set Context!5024)) List!33917)

(assert (=> bm!183576 (= call!183582 (toList!1917 z!632))))

(declare-fun lt!1012868 () Bool)

(declare-datatypes ((Option!6299 0))(
  ( (None!6298) (Some!6298 (v!34414 List!33914)) )
))
(declare-fun isEmpty!18576 (Option!6299) Bool)

(declare-fun getLanguageWitness!230 ((Set Context!5024)) Option!6299)

(assert (=> d!825466 (= lt!1012868 (isEmpty!18576 (getLanguageWitness!230 z!632)))))

(declare-fun forall!6933 ((Set Context!5024) Int) Bool)

(assert (=> d!825466 (= lt!1012868 (forall!6933 z!632 lambda!104501))))

(declare-fun lt!1012864 () Unit!47553)

(assert (=> d!825466 (= lt!1012864 e!1804002)))

(assert (=> d!825466 (= c!459401 (not (forall!6933 z!632 lambda!104501)))))

(assert (=> d!825466 (= (lostCauseZipper!525 z!632) lt!1012868)))

(assert (= (and d!825466 c!459401) b!2847123))

(assert (= (and d!825466 (not c!459401)) b!2847124))

(assert (= (or b!2847123 b!2847124) bm!183576))

(assert (= (or b!2847123 b!2847124) bm!183577))

(declare-fun m!3274695 () Bool)

(assert (=> bm!183577 m!3274695))

(declare-fun m!3274697 () Bool)

(assert (=> b!2847124 m!3274697))

(declare-fun m!3274699 () Bool)

(assert (=> d!825466 m!3274699))

(assert (=> d!825466 m!3274699))

(declare-fun m!3274701 () Bool)

(assert (=> d!825466 m!3274701))

(declare-fun m!3274703 () Bool)

(assert (=> d!825466 m!3274703))

(assert (=> d!825466 m!3274703))

(declare-fun m!3274705 () Bool)

(assert (=> bm!183576 m!3274705))

(declare-fun m!3274707 () Bool)

(assert (=> b!2847123 m!3274707))

(assert (=> b!2847095 d!825466))

(declare-fun d!825468 () Bool)

(declare-fun c!459404 () Bool)

(assert (=> d!825468 (= c!459404 (= i!1868 (size!26236 input!3762)))))

(declare-fun e!1804005 () Bool)

(assert (=> d!825468 (= (prefixMatchZipperSequence!761 z!632 input!3762 i!1868) e!1804005)))

(declare-fun b!2847129 () Bool)

(assert (=> b!2847129 (= e!1804005 (not (lostCauseZipper!525 z!632)))))

(declare-fun b!2847130 () Bool)

(declare-fun derivationStepZipper!409 ((Set Context!5024) C!17150) (Set Context!5024))

(declare-fun apply!7869 (BalanceConc!20594 Int) C!17150)

(assert (=> b!2847130 (= e!1804005 (prefixMatchZipperSequence!761 (derivationStepZipper!409 z!632 (apply!7869 input!3762 i!1868)) input!3762 (+ i!1868 1)))))

(assert (= (and d!825468 c!459404) b!2847129))

(assert (= (and d!825468 (not c!459404)) b!2847130))

(assert (=> d!825468 m!3274673))

(assert (=> b!2847129 m!3274665))

(declare-fun m!3274709 () Bool)

(assert (=> b!2847130 m!3274709))

(assert (=> b!2847130 m!3274709))

(declare-fun m!3274711 () Bool)

(assert (=> b!2847130 m!3274711))

(assert (=> b!2847130 m!3274711))

(declare-fun m!3274713 () Bool)

(assert (=> b!2847130 m!3274713))

(assert (=> b!2847095 d!825468))

(declare-fun d!825470 () Bool)

(declare-fun isBalanced!3159 (Conc!10478) Bool)

(assert (=> d!825470 (= (inv!45825 input!3762) (isBalanced!3159 (c!459385 input!3762)))))

(declare-fun bs!519961 () Bool)

(assert (= bs!519961 d!825470))

(declare-fun m!3274715 () Bool)

(assert (=> bs!519961 m!3274715))

(assert (=> start!277250 d!825470))

(declare-fun d!825472 () Bool)

(declare-fun lt!1012871 () Int)

(declare-fun size!26238 (List!33914) Int)

(declare-fun list!12584 (BalanceConc!20594) List!33914)

(assert (=> d!825472 (= lt!1012871 (size!26238 (list!12584 input!3762)))))

(declare-fun size!26239 (Conc!10478) Int)

(assert (=> d!825472 (= lt!1012871 (size!26239 (c!459385 input!3762)))))

(assert (=> d!825472 (= (size!26236 input!3762) lt!1012871)))

(declare-fun bs!519962 () Bool)

(assert (= bs!519962 d!825472))

(declare-fun m!3274717 () Bool)

(assert (=> bs!519962 m!3274717))

(assert (=> bs!519962 m!3274717))

(declare-fun m!3274719 () Bool)

(assert (=> bs!519962 m!3274719))

(declare-fun m!3274721 () Bool)

(assert (=> bs!519962 m!3274721))

(assert (=> b!2847097 d!825472))

(declare-fun d!825474 () Bool)

(declare-fun lambda!104506 () Int)

(declare-fun forall!6934 (List!33913 Int) Bool)

(assert (=> d!825474 (= (inv!45823 setElem!24958) (forall!6934 (exprs!3012 setElem!24958) lambda!104506))))

(declare-fun bs!519963 () Bool)

(assert (= bs!519963 d!825474))

(declare-fun m!3274723 () Bool)

(assert (=> bs!519963 m!3274723))

(assert (=> setNonEmpty!24958 d!825474))

(declare-fun e!1804011 () Bool)

(declare-fun tp!913510 () Bool)

(declare-fun b!2847139 () Bool)

(declare-fun tp!913509 () Bool)

(assert (=> b!2847139 (= e!1804011 (and (inv!45824 (left!25439 (c!459385 input!3762))) tp!913510 (inv!45824 (right!25769 (c!459385 input!3762))) tp!913509))))

(declare-fun b!2847141 () Bool)

(declare-fun e!1804010 () Bool)

(declare-fun tp!913508 () Bool)

(assert (=> b!2847141 (= e!1804010 tp!913508)))

(declare-fun b!2847140 () Bool)

(declare-fun inv!45831 (IArray!20961) Bool)

(assert (=> b!2847140 (= e!1804011 (and (inv!45831 (xs!13596 (c!459385 input!3762))) e!1804010))))

(assert (=> b!2847094 (= tp!913490 (and (inv!45824 (c!459385 input!3762)) e!1804011))))

(assert (= (and b!2847094 (is-Node!10478 (c!459385 input!3762))) b!2847139))

(assert (= b!2847140 b!2847141))

(assert (= (and b!2847094 (is-Leaf!15944 (c!459385 input!3762))) b!2847140))

(declare-fun m!3274725 () Bool)

(assert (=> b!2847139 m!3274725))

(declare-fun m!3274727 () Bool)

(assert (=> b!2847139 m!3274727))

(declare-fun m!3274729 () Bool)

(assert (=> b!2847140 m!3274729))

(assert (=> b!2847094 m!3274669))

(declare-fun b!2847146 () Bool)

(declare-fun e!1804014 () Bool)

(declare-fun tp!913515 () Bool)

(declare-fun tp!913516 () Bool)

(assert (=> b!2847146 (= e!1804014 (and tp!913515 tp!913516))))

(assert (=> b!2847096 (= tp!913492 e!1804014)))

(assert (= (and b!2847096 (is-Cons!33789 (exprs!3012 setElem!24958))) b!2847146))

(declare-fun condSetEmpty!24964 () Bool)

(assert (=> setNonEmpty!24958 (= condSetEmpty!24964 (= setRest!24958 (as set.empty (Set Context!5024))))))

(declare-fun setRes!24964 () Bool)

(assert (=> setNonEmpty!24958 (= tp!913491 setRes!24964)))

(declare-fun setIsEmpty!24964 () Bool)

(assert (=> setIsEmpty!24964 setRes!24964))

(declare-fun setElem!24964 () Context!5024)

(declare-fun tp!913521 () Bool)

(declare-fun setNonEmpty!24964 () Bool)

(declare-fun e!1804017 () Bool)

(assert (=> setNonEmpty!24964 (= setRes!24964 (and tp!913521 (inv!45823 setElem!24964) e!1804017))))

(declare-fun setRest!24964 () (Set Context!5024))

(assert (=> setNonEmpty!24964 (= setRest!24958 (set.union (set.insert setElem!24964 (as set.empty (Set Context!5024))) setRest!24964))))

(declare-fun b!2847151 () Bool)

(declare-fun tp!913522 () Bool)

(assert (=> b!2847151 (= e!1804017 tp!913522)))

(assert (= (and setNonEmpty!24958 condSetEmpty!24964) setIsEmpty!24964))

(assert (= (and setNonEmpty!24958 (not condSetEmpty!24964)) setNonEmpty!24964))

(assert (= setNonEmpty!24964 b!2847151))

(declare-fun m!3274731 () Bool)

(assert (=> setNonEmpty!24964 m!3274731))

(push 1)

(assert (not setNonEmpty!24964))

(assert (not bm!183577))

(assert (not b!2847118))

(assert (not d!825468))

(assert (not b!2847146))

(assert (not b!2847141))

(assert (not d!825472))

(assert (not b!2847140))

(assert (not d!825474))

(assert (not d!825466))

(assert (not b!2847123))

(assert (not b!2847139))

(assert (not b!2847116))

(assert (not b!2847129))

(assert (not b!2847094))

(assert (not b!2847151))

(assert (not b!2847130))

(assert (not b!2847124))

(assert (not d!825470))

(assert (not bm!183576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

