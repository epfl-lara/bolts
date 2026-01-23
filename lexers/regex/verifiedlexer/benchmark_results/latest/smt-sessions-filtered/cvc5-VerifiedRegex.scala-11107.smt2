; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!574016 () Bool)

(assert start!574016)

(declare-fun b!5493759 () Bool)

(declare-fun e!3398794 () Bool)

(declare-fun tp!1511635 () Bool)

(declare-fun tp!1511636 () Bool)

(assert (=> b!5493759 (= e!3398794 (and tp!1511635 tp!1511636))))

(declare-fun b!5493760 () Bool)

(declare-fun res!2342561 () Bool)

(declare-fun e!3398792 () Bool)

(assert (=> b!5493760 (=> res!2342561 e!3398792)))

(declare-datatypes ((C!31190 0))(
  ( (C!31191 (val!25297 Int)) )
))
(declare-datatypes ((Regex!15460 0))(
  ( (ElementMatch!15460 (c!959126 C!31190)) (Concat!24305 (regOne!31432 Regex!15460) (regTwo!31432 Regex!15460)) (EmptyExpr!15460) (Star!15460 (reg!15789 Regex!15460)) (EmptyLang!15460) (Union!15460 (regOne!31433 Regex!15460) (regTwo!31433 Regex!15460)) )
))
(declare-fun r!7292 () Regex!15460)

(declare-datatypes ((List!62679 0))(
  ( (Nil!62555) (Cons!62555 (h!69003 Regex!15460) (t!375910 List!62679)) )
))
(declare-datatypes ((Context!9688 0))(
  ( (Context!9689 (exprs!5344 List!62679)) )
))
(declare-datatypes ((List!62680 0))(
  ( (Nil!62556) (Cons!62556 (h!69004 Context!9688) (t!375911 List!62680)) )
))
(declare-fun zl!343 () List!62680)

(declare-fun generalisedUnion!1323 (List!62679) Regex!15460)

(declare-fun unfocusZipperList!888 (List!62680) List!62679)

(assert (=> b!5493760 (= res!2342561 (not (= r!7292 (generalisedUnion!1323 (unfocusZipperList!888 zl!343)))))))

(declare-fun b!5493761 () Bool)

(declare-fun res!2342563 () Bool)

(assert (=> b!5493761 (=> res!2342563 e!3398792)))

(declare-fun isEmpty!34356 (List!62680) Bool)

(assert (=> b!5493761 (= res!2342563 (not (isEmpty!34356 (t!375911 zl!343))))))

(declare-fun b!5493762 () Bool)

(declare-fun e!3398793 () Bool)

(declare-fun tp!1511637 () Bool)

(assert (=> b!5493762 (= e!3398793 tp!1511637)))

(declare-fun setIsEmpty!36364 () Bool)

(declare-fun setRes!36364 () Bool)

(assert (=> setIsEmpty!36364 setRes!36364))

(declare-fun b!5493763 () Bool)

(declare-fun res!2342564 () Bool)

(assert (=> b!5493763 (=> res!2342564 e!3398792)))

(assert (=> b!5493763 (= res!2342564 (or (is-EmptyExpr!15460 r!7292) (is-EmptyLang!15460 r!7292) (is-ElementMatch!15460 r!7292) (not (is-Union!15460 r!7292))))))

(declare-fun lt!2242557 () Bool)

(declare-fun b!5493764 () Bool)

(declare-fun lt!2242553 () Bool)

(declare-fun lt!2242556 () Bool)

(assert (=> b!5493764 (= e!3398792 (= lt!2242553 (or lt!2242556 lt!2242557)))))

(declare-datatypes ((List!62681 0))(
  ( (Nil!62557) (Cons!62557 (h!69005 C!31190) (t!375912 List!62681)) )
))
(declare-fun s!2326 () List!62681)

(declare-fun matchRSpec!2563 (Regex!15460 List!62681) Bool)

(assert (=> b!5493764 (= lt!2242557 (matchRSpec!2563 (regTwo!31433 r!7292) s!2326))))

(declare-fun matchR!7645 (Regex!15460 List!62681) Bool)

(assert (=> b!5493764 (= lt!2242557 (matchR!7645 (regTwo!31433 r!7292) s!2326))))

(declare-datatypes ((Unit!155380 0))(
  ( (Unit!155381) )
))
(declare-fun lt!2242552 () Unit!155380)

(declare-fun mainMatchTheorem!2563 (Regex!15460 List!62681) Unit!155380)

(assert (=> b!5493764 (= lt!2242552 (mainMatchTheorem!2563 (regTwo!31433 r!7292) s!2326))))

(assert (=> b!5493764 (= lt!2242556 (matchRSpec!2563 (regOne!31433 r!7292) s!2326))))

(assert (=> b!5493764 (= lt!2242556 (matchR!7645 (regOne!31433 r!7292) s!2326))))

(declare-fun lt!2242555 () Unit!155380)

(assert (=> b!5493764 (= lt!2242555 (mainMatchTheorem!2563 (regOne!31433 r!7292) s!2326))))

(declare-fun b!5493765 () Bool)

(declare-fun res!2342565 () Bool)

(declare-fun e!3398795 () Bool)

(assert (=> b!5493765 (=> (not res!2342565) (not e!3398795))))

(declare-fun z!1189 () (Set Context!9688))

(declare-fun toList!9244 ((Set Context!9688)) List!62680)

(assert (=> b!5493765 (= res!2342565 (= (toList!9244 z!1189) zl!343))))

(declare-fun tp!1511632 () Bool)

(declare-fun b!5493766 () Bool)

(declare-fun e!3398796 () Bool)

(declare-fun e!3398791 () Bool)

(declare-fun inv!81898 (Context!9688) Bool)

(assert (=> b!5493766 (= e!3398791 (and (inv!81898 (h!69004 zl!343)) e!3398796 tp!1511632))))

(declare-fun res!2342559 () Bool)

(assert (=> start!574016 (=> (not res!2342559) (not e!3398795))))

(declare-fun validRegex!7196 (Regex!15460) Bool)

(assert (=> start!574016 (= res!2342559 (validRegex!7196 r!7292))))

(assert (=> start!574016 e!3398795))

(assert (=> start!574016 e!3398794))

(declare-fun condSetEmpty!36364 () Bool)

(assert (=> start!574016 (= condSetEmpty!36364 (= z!1189 (as set.empty (Set Context!9688))))))

(assert (=> start!574016 setRes!36364))

(assert (=> start!574016 e!3398791))

(declare-fun e!3398797 () Bool)

(assert (=> start!574016 e!3398797))

(declare-fun b!5493767 () Bool)

(declare-fun tp_is_empty!40173 () Bool)

(declare-fun tp!1511640 () Bool)

(assert (=> b!5493767 (= e!3398797 (and tp_is_empty!40173 tp!1511640))))

(declare-fun tp!1511634 () Bool)

(declare-fun setNonEmpty!36364 () Bool)

(declare-fun setElem!36364 () Context!9688)

(assert (=> setNonEmpty!36364 (= setRes!36364 (and tp!1511634 (inv!81898 setElem!36364) e!3398793))))

(declare-fun setRest!36364 () (Set Context!9688))

(assert (=> setNonEmpty!36364 (= z!1189 (set.union (set.insert setElem!36364 (as set.empty (Set Context!9688))) setRest!36364))))

(declare-fun b!5493768 () Bool)

(declare-fun tp!1511641 () Bool)

(assert (=> b!5493768 (= e!3398794 tp!1511641)))

(declare-fun b!5493769 () Bool)

(assert (=> b!5493769 (= e!3398794 tp_is_empty!40173)))

(declare-fun b!5493770 () Bool)

(assert (=> b!5493770 (= e!3398795 (not e!3398792))))

(declare-fun res!2342560 () Bool)

(assert (=> b!5493770 (=> res!2342560 e!3398792)))

(assert (=> b!5493770 (= res!2342560 (not (is-Cons!62556 zl!343)))))

(assert (=> b!5493770 (= lt!2242553 (matchRSpec!2563 r!7292 s!2326))))

(assert (=> b!5493770 (= lt!2242553 (matchR!7645 r!7292 s!2326))))

(declare-fun lt!2242554 () Unit!155380)

(assert (=> b!5493770 (= lt!2242554 (mainMatchTheorem!2563 r!7292 s!2326))))

(declare-fun b!5493771 () Bool)

(declare-fun res!2342566 () Bool)

(assert (=> b!5493771 (=> (not res!2342566) (not e!3398795))))

(declare-fun unfocusZipper!1202 (List!62680) Regex!15460)

(assert (=> b!5493771 (= res!2342566 (= r!7292 (unfocusZipper!1202 zl!343)))))

(declare-fun b!5493772 () Bool)

(declare-fun tp!1511639 () Bool)

(assert (=> b!5493772 (= e!3398796 tp!1511639)))

(declare-fun b!5493773 () Bool)

(declare-fun res!2342567 () Bool)

(assert (=> b!5493773 (=> res!2342567 e!3398792)))

(declare-fun generalisedConcat!1075 (List!62679) Regex!15460)

(assert (=> b!5493773 (= res!2342567 (not (= r!7292 (generalisedConcat!1075 (exprs!5344 (h!69004 zl!343))))))))

(declare-fun b!5493774 () Bool)

(declare-fun tp!1511633 () Bool)

(declare-fun tp!1511638 () Bool)

(assert (=> b!5493774 (= e!3398794 (and tp!1511633 tp!1511638))))

(declare-fun b!5493775 () Bool)

(declare-fun res!2342562 () Bool)

(assert (=> b!5493775 (=> res!2342562 e!3398792)))

(assert (=> b!5493775 (= res!2342562 (not (is-Cons!62555 (exprs!5344 (h!69004 zl!343)))))))

(assert (= (and start!574016 res!2342559) b!5493765))

(assert (= (and b!5493765 res!2342565) b!5493771))

(assert (= (and b!5493771 res!2342566) b!5493770))

(assert (= (and b!5493770 (not res!2342560)) b!5493761))

(assert (= (and b!5493761 (not res!2342563)) b!5493773))

(assert (= (and b!5493773 (not res!2342567)) b!5493775))

(assert (= (and b!5493775 (not res!2342562)) b!5493760))

(assert (= (and b!5493760 (not res!2342561)) b!5493763))

(assert (= (and b!5493763 (not res!2342564)) b!5493764))

(assert (= (and start!574016 (is-ElementMatch!15460 r!7292)) b!5493769))

(assert (= (and start!574016 (is-Concat!24305 r!7292)) b!5493759))

(assert (= (and start!574016 (is-Star!15460 r!7292)) b!5493768))

(assert (= (and start!574016 (is-Union!15460 r!7292)) b!5493774))

(assert (= (and start!574016 condSetEmpty!36364) setIsEmpty!36364))

(assert (= (and start!574016 (not condSetEmpty!36364)) setNonEmpty!36364))

(assert (= setNonEmpty!36364 b!5493762))

(assert (= b!5493766 b!5493772))

(assert (= (and start!574016 (is-Cons!62556 zl!343)) b!5493766))

(assert (= (and start!574016 (is-Cons!62557 s!2326)) b!5493767))

(declare-fun m!6504864 () Bool)

(assert (=> b!5493761 m!6504864))

(declare-fun m!6504866 () Bool)

(assert (=> b!5493773 m!6504866))

(declare-fun m!6504868 () Bool)

(assert (=> b!5493765 m!6504868))

(declare-fun m!6504870 () Bool)

(assert (=> b!5493766 m!6504870))

(declare-fun m!6504872 () Bool)

(assert (=> b!5493764 m!6504872))

(declare-fun m!6504874 () Bool)

(assert (=> b!5493764 m!6504874))

(declare-fun m!6504876 () Bool)

(assert (=> b!5493764 m!6504876))

(declare-fun m!6504878 () Bool)

(assert (=> b!5493764 m!6504878))

(declare-fun m!6504880 () Bool)

(assert (=> b!5493764 m!6504880))

(declare-fun m!6504882 () Bool)

(assert (=> b!5493764 m!6504882))

(declare-fun m!6504884 () Bool)

(assert (=> b!5493771 m!6504884))

(declare-fun m!6504886 () Bool)

(assert (=> setNonEmpty!36364 m!6504886))

(declare-fun m!6504888 () Bool)

(assert (=> b!5493770 m!6504888))

(declare-fun m!6504890 () Bool)

(assert (=> b!5493770 m!6504890))

(declare-fun m!6504892 () Bool)

(assert (=> b!5493770 m!6504892))

(declare-fun m!6504894 () Bool)

(assert (=> start!574016 m!6504894))

(declare-fun m!6504896 () Bool)

(assert (=> b!5493760 m!6504896))

(assert (=> b!5493760 m!6504896))

(declare-fun m!6504898 () Bool)

(assert (=> b!5493760 m!6504898))

(push 1)

(assert (not b!5493766))

(assert (not b!5493760))

(assert (not b!5493761))

(assert (not b!5493772))

(assert (not start!574016))

(assert (not b!5493764))

(assert (not b!5493762))

(assert (not b!5493774))

(assert tp_is_empty!40173)

(assert (not b!5493770))

(assert (not b!5493767))

(assert (not setNonEmpty!36364))

(assert (not b!5493773))

(assert (not b!5493768))

(assert (not b!5493765))

(assert (not b!5493759))

(assert (not b!5493771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1742258 () Bool)

(declare-fun lt!2242578 () Regex!15460)

(assert (=> d!1742258 (validRegex!7196 lt!2242578)))

(assert (=> d!1742258 (= lt!2242578 (generalisedUnion!1323 (unfocusZipperList!888 zl!343)))))

(assert (=> d!1742258 (= (unfocusZipper!1202 zl!343) lt!2242578)))

(declare-fun bs!1267655 () Bool)

(assert (= bs!1267655 d!1742258))

(declare-fun m!6504936 () Bool)

(assert (=> bs!1267655 m!6504936))

(assert (=> bs!1267655 m!6504896))

(assert (=> bs!1267655 m!6504896))

(assert (=> bs!1267655 m!6504898))

(assert (=> b!5493771 d!1742258))

(declare-fun d!1742262 () Bool)

(declare-fun lambda!294134 () Int)

(declare-fun forall!14653 (List!62679 Int) Bool)

(assert (=> d!1742262 (= (inv!81898 (h!69004 zl!343)) (forall!14653 (exprs!5344 (h!69004 zl!343)) lambda!294134))))

(declare-fun bs!1267656 () Bool)

(assert (= bs!1267656 d!1742262))

(declare-fun m!6504938 () Bool)

(assert (=> bs!1267656 m!6504938))

(assert (=> b!5493766 d!1742262))

(declare-fun b!5493869 () Bool)

(assert (=> b!5493869 true))

(assert (=> b!5493869 true))

(declare-fun bs!1267657 () Bool)

(declare-fun b!5493863 () Bool)

(assert (= bs!1267657 (and b!5493863 b!5493869)))

(declare-fun lambda!294140 () Int)

(declare-fun lambda!294139 () Int)

(assert (=> bs!1267657 (not (= lambda!294140 lambda!294139))))

(assert (=> b!5493863 true))

(assert (=> b!5493863 true))

(declare-fun b!5493859 () Bool)

(declare-fun c!959136 () Bool)

(assert (=> b!5493859 (= c!959136 (is-ElementMatch!15460 r!7292))))

(declare-fun e!3398837 () Bool)

(declare-fun e!3398840 () Bool)

(assert (=> b!5493859 (= e!3398837 e!3398840)))

(declare-fun b!5493860 () Bool)

(declare-fun e!3398839 () Bool)

(assert (=> b!5493860 (= e!3398839 e!3398837)))

(declare-fun res!2342613 () Bool)

(assert (=> b!5493860 (= res!2342613 (not (is-EmptyLang!15460 r!7292)))))

(assert (=> b!5493860 (=> (not res!2342613) (not e!3398837))))

(declare-fun b!5493861 () Bool)

(assert (=> b!5493861 (= e!3398840 (= s!2326 (Cons!62557 (c!959126 r!7292) Nil!62557)))))

(declare-fun b!5493862 () Bool)

(declare-fun call!405059 () Bool)

(assert (=> b!5493862 (= e!3398839 call!405059)))

(declare-fun e!3398841 () Bool)

(declare-fun call!405058 () Bool)

(assert (=> b!5493863 (= e!3398841 call!405058)))

(declare-fun d!1742264 () Bool)

(declare-fun c!959137 () Bool)

(assert (=> d!1742264 (= c!959137 (is-EmptyExpr!15460 r!7292))))

(assert (=> d!1742264 (= (matchRSpec!2563 r!7292 s!2326) e!3398839)))

(declare-fun b!5493864 () Bool)

(declare-fun c!959139 () Bool)

(assert (=> b!5493864 (= c!959139 (is-Union!15460 r!7292))))

(declare-fun e!3398842 () Bool)

(assert (=> b!5493864 (= e!3398840 e!3398842)))

(declare-fun b!5493865 () Bool)

(declare-fun e!3398843 () Bool)

(assert (=> b!5493865 (= e!3398842 e!3398843)))

(declare-fun res!2342612 () Bool)

(assert (=> b!5493865 (= res!2342612 (matchRSpec!2563 (regOne!31433 r!7292) s!2326))))

(assert (=> b!5493865 (=> res!2342612 e!3398843)))

(declare-fun b!5493866 () Bool)

(assert (=> b!5493866 (= e!3398843 (matchRSpec!2563 (regTwo!31433 r!7292) s!2326))))

(declare-fun b!5493867 () Bool)

(declare-fun res!2342611 () Bool)

(declare-fun e!3398838 () Bool)

(assert (=> b!5493867 (=> res!2342611 e!3398838)))

(assert (=> b!5493867 (= res!2342611 call!405059)))

(assert (=> b!5493867 (= e!3398841 e!3398838)))

(declare-fun bm!405053 () Bool)

(declare-fun isEmpty!34358 (List!62681) Bool)

(assert (=> bm!405053 (= call!405059 (isEmpty!34358 s!2326))))

(declare-fun b!5493868 () Bool)

(assert (=> b!5493868 (= e!3398842 e!3398841)))

(declare-fun c!959138 () Bool)

(assert (=> b!5493868 (= c!959138 (is-Star!15460 r!7292))))

(assert (=> b!5493869 (= e!3398838 call!405058)))

(declare-fun bm!405054 () Bool)

(declare-fun Exists!2570 (Int) Bool)

(assert (=> bm!405054 (= call!405058 (Exists!2570 (ite c!959138 lambda!294139 lambda!294140)))))

(assert (= (and d!1742264 c!959137) b!5493862))

(assert (= (and d!1742264 (not c!959137)) b!5493860))

(assert (= (and b!5493860 res!2342613) b!5493859))

(assert (= (and b!5493859 c!959136) b!5493861))

(assert (= (and b!5493859 (not c!959136)) b!5493864))

(assert (= (and b!5493864 c!959139) b!5493865))

(assert (= (and b!5493864 (not c!959139)) b!5493868))

(assert (= (and b!5493865 (not res!2342612)) b!5493866))

(assert (= (and b!5493868 c!959138) b!5493867))

(assert (= (and b!5493868 (not c!959138)) b!5493863))

(assert (= (and b!5493867 (not res!2342611)) b!5493869))

(assert (= (or b!5493869 b!5493863) bm!405054))

(assert (= (or b!5493862 b!5493867) bm!405053))

(assert (=> b!5493865 m!6504878))

(assert (=> b!5493866 m!6504872))

(declare-fun m!6504940 () Bool)

(assert (=> bm!405053 m!6504940))

(declare-fun m!6504942 () Bool)

(assert (=> bm!405054 m!6504942))

(assert (=> b!5493770 d!1742264))

(declare-fun b!5493902 () Bool)

(declare-fun e!3398859 () Bool)

(declare-fun e!3398861 () Bool)

(assert (=> b!5493902 (= e!3398859 e!3398861)))

(declare-fun res!2342636 () Bool)

(assert (=> b!5493902 (=> res!2342636 e!3398861)))

(declare-fun call!405062 () Bool)

(assert (=> b!5493902 (= res!2342636 call!405062)))

(declare-fun bm!405057 () Bool)

(assert (=> bm!405057 (= call!405062 (isEmpty!34358 s!2326))))

(declare-fun b!5493903 () Bool)

(declare-fun e!3398863 () Bool)

(declare-fun lt!2242581 () Bool)

(assert (=> b!5493903 (= e!3398863 (= lt!2242581 call!405062))))

(declare-fun b!5493904 () Bool)

(declare-fun e!3398858 () Bool)

(declare-fun head!11761 (List!62681) C!31190)

(assert (=> b!5493904 (= e!3398858 (= (head!11761 s!2326) (c!959126 r!7292)))))

(declare-fun b!5493905 () Bool)

(declare-fun res!2342631 () Bool)

(declare-fun e!3398860 () Bool)

(assert (=> b!5493905 (=> res!2342631 e!3398860)))

(assert (=> b!5493905 (= res!2342631 e!3398858)))

(declare-fun res!2342632 () Bool)

(assert (=> b!5493905 (=> (not res!2342632) (not e!3398858))))

(assert (=> b!5493905 (= res!2342632 lt!2242581)))

(declare-fun b!5493906 () Bool)

(declare-fun res!2342633 () Bool)

(assert (=> b!5493906 (=> res!2342633 e!3398860)))

(assert (=> b!5493906 (= res!2342633 (not (is-ElementMatch!15460 r!7292)))))

(declare-fun e!3398864 () Bool)

(assert (=> b!5493906 (= e!3398864 e!3398860)))

(declare-fun d!1742266 () Bool)

(assert (=> d!1742266 e!3398863))

(declare-fun c!959146 () Bool)

(assert (=> d!1742266 (= c!959146 (is-EmptyExpr!15460 r!7292))))

(declare-fun e!3398862 () Bool)

(assert (=> d!1742266 (= lt!2242581 e!3398862)))

(declare-fun c!959148 () Bool)

(assert (=> d!1742266 (= c!959148 (isEmpty!34358 s!2326))))

(assert (=> d!1742266 (validRegex!7196 r!7292)))

(assert (=> d!1742266 (= (matchR!7645 r!7292 s!2326) lt!2242581)))

(declare-fun b!5493907 () Bool)

(assert (=> b!5493907 (= e!3398864 (not lt!2242581))))

(declare-fun b!5493908 () Bool)

(declare-fun derivativeStep!4344 (Regex!15460 C!31190) Regex!15460)

(declare-fun tail!10856 (List!62681) List!62681)

(assert (=> b!5493908 (= e!3398862 (matchR!7645 (derivativeStep!4344 r!7292 (head!11761 s!2326)) (tail!10856 s!2326)))))

(declare-fun b!5493909 () Bool)

(declare-fun nullable!5503 (Regex!15460) Bool)

(assert (=> b!5493909 (= e!3398862 (nullable!5503 r!7292))))

(declare-fun b!5493910 () Bool)

(declare-fun res!2342635 () Bool)

(assert (=> b!5493910 (=> (not res!2342635) (not e!3398858))))

(assert (=> b!5493910 (= res!2342635 (isEmpty!34358 (tail!10856 s!2326)))))

(declare-fun b!5493911 () Bool)

(declare-fun res!2342637 () Bool)

(assert (=> b!5493911 (=> (not res!2342637) (not e!3398858))))

(assert (=> b!5493911 (= res!2342637 (not call!405062))))

(declare-fun b!5493912 () Bool)

(declare-fun res!2342634 () Bool)

(assert (=> b!5493912 (=> res!2342634 e!3398861)))

(assert (=> b!5493912 (= res!2342634 (not (isEmpty!34358 (tail!10856 s!2326))))))

(declare-fun b!5493913 () Bool)

(assert (=> b!5493913 (= e!3398863 e!3398864)))

(declare-fun c!959147 () Bool)

(assert (=> b!5493913 (= c!959147 (is-EmptyLang!15460 r!7292))))

(declare-fun b!5493914 () Bool)

(assert (=> b!5493914 (= e!3398861 (not (= (head!11761 s!2326) (c!959126 r!7292))))))

(declare-fun b!5493915 () Bool)

(assert (=> b!5493915 (= e!3398860 e!3398859)))

(declare-fun res!2342630 () Bool)

(assert (=> b!5493915 (=> (not res!2342630) (not e!3398859))))

(assert (=> b!5493915 (= res!2342630 (not lt!2242581))))

(assert (= (and d!1742266 c!959148) b!5493909))

(assert (= (and d!1742266 (not c!959148)) b!5493908))

(assert (= (and d!1742266 c!959146) b!5493903))

(assert (= (and d!1742266 (not c!959146)) b!5493913))

(assert (= (and b!5493913 c!959147) b!5493907))

(assert (= (and b!5493913 (not c!959147)) b!5493906))

(assert (= (and b!5493906 (not res!2342633)) b!5493905))

(assert (= (and b!5493905 res!2342632) b!5493911))

(assert (= (and b!5493911 res!2342637) b!5493910))

(assert (= (and b!5493910 res!2342635) b!5493904))

(assert (= (and b!5493905 (not res!2342631)) b!5493915))

(assert (= (and b!5493915 res!2342630) b!5493902))

(assert (= (and b!5493902 (not res!2342636)) b!5493912))

(assert (= (and b!5493912 (not res!2342634)) b!5493914))

(assert (= (or b!5493903 b!5493902 b!5493911) bm!405057))

(declare-fun m!6504944 () Bool)

(assert (=> b!5493914 m!6504944))

(assert (=> d!1742266 m!6504940))

(assert (=> d!1742266 m!6504894))

(declare-fun m!6504946 () Bool)

(assert (=> b!5493910 m!6504946))

(assert (=> b!5493910 m!6504946))

(declare-fun m!6504948 () Bool)

(assert (=> b!5493910 m!6504948))

(assert (=> b!5493904 m!6504944))

(assert (=> bm!405057 m!6504940))

(declare-fun m!6504950 () Bool)

(assert (=> b!5493909 m!6504950))

(assert (=> b!5493912 m!6504946))

(assert (=> b!5493912 m!6504946))

(assert (=> b!5493912 m!6504948))

(assert (=> b!5493908 m!6504944))

(assert (=> b!5493908 m!6504944))

(declare-fun m!6504952 () Bool)

(assert (=> b!5493908 m!6504952))

(assert (=> b!5493908 m!6504946))

(assert (=> b!5493908 m!6504952))

(assert (=> b!5493908 m!6504946))

(declare-fun m!6504954 () Bool)

(assert (=> b!5493908 m!6504954))

(assert (=> b!5493770 d!1742266))

(declare-fun d!1742268 () Bool)

(assert (=> d!1742268 (= (matchR!7645 r!7292 s!2326) (matchRSpec!2563 r!7292 s!2326))))

(declare-fun lt!2242584 () Unit!155380)

(declare-fun choose!41766 (Regex!15460 List!62681) Unit!155380)

(assert (=> d!1742268 (= lt!2242584 (choose!41766 r!7292 s!2326))))

(assert (=> d!1742268 (validRegex!7196 r!7292)))

(assert (=> d!1742268 (= (mainMatchTheorem!2563 r!7292 s!2326) lt!2242584)))

(declare-fun bs!1267658 () Bool)

(assert (= bs!1267658 d!1742268))

(assert (=> bs!1267658 m!6504890))

(assert (=> bs!1267658 m!6504888))

(declare-fun m!6504956 () Bool)

(assert (=> bs!1267658 m!6504956))

(assert (=> bs!1267658 m!6504894))

(assert (=> b!5493770 d!1742268))

(declare-fun d!1742270 () Bool)

(assert (=> d!1742270 (= (isEmpty!34356 (t!375911 zl!343)) (is-Nil!62556 (t!375911 zl!343)))))

(assert (=> b!5493761 d!1742270))

(declare-fun d!1742272 () Bool)

(declare-fun e!3398867 () Bool)

(assert (=> d!1742272 e!3398867))

(declare-fun res!2342640 () Bool)

(assert (=> d!1742272 (=> (not res!2342640) (not e!3398867))))

(declare-fun lt!2242587 () List!62680)

(declare-fun noDuplicate!1471 (List!62680) Bool)

(assert (=> d!1742272 (= res!2342640 (noDuplicate!1471 lt!2242587))))

(declare-fun choose!41767 ((Set Context!9688)) List!62680)

(assert (=> d!1742272 (= lt!2242587 (choose!41767 z!1189))))

(assert (=> d!1742272 (= (toList!9244 z!1189) lt!2242587)))

(declare-fun b!5493918 () Bool)

(declare-fun content!11233 (List!62680) (Set Context!9688))

(assert (=> b!5493918 (= e!3398867 (= (content!11233 lt!2242587) z!1189))))

(assert (= (and d!1742272 res!2342640) b!5493918))

(declare-fun m!6504958 () Bool)

(assert (=> d!1742272 m!6504958))

(declare-fun m!6504960 () Bool)

(assert (=> d!1742272 m!6504960))

(declare-fun m!6504962 () Bool)

(assert (=> b!5493918 m!6504962))

(assert (=> b!5493765 d!1742272))

(declare-fun bs!1267659 () Bool)

(declare-fun d!1742274 () Bool)

(assert (= bs!1267659 (and d!1742274 d!1742262)))

(declare-fun lambda!294143 () Int)

(assert (=> bs!1267659 (= lambda!294143 lambda!294134)))

(declare-fun b!5493939 () Bool)

(declare-fun e!3398885 () Bool)

(declare-fun lt!2242590 () Regex!15460)

(declare-fun isEmptyLang!1062 (Regex!15460) Bool)

(assert (=> b!5493939 (= e!3398885 (isEmptyLang!1062 lt!2242590))))

(declare-fun b!5493940 () Bool)

(declare-fun e!3398883 () Bool)

(declare-fun isUnion!492 (Regex!15460) Bool)

(assert (=> b!5493940 (= e!3398883 (isUnion!492 lt!2242590))))

(declare-fun b!5493941 () Bool)

(assert (=> b!5493941 (= e!3398885 e!3398883)))

(declare-fun c!959160 () Bool)

(declare-fun isEmpty!34359 (List!62679) Bool)

(declare-fun tail!10857 (List!62679) List!62679)

(assert (=> b!5493941 (= c!959160 (isEmpty!34359 (tail!10857 (unfocusZipperList!888 zl!343))))))

(declare-fun b!5493942 () Bool)

(declare-fun head!11762 (List!62679) Regex!15460)

(assert (=> b!5493942 (= e!3398883 (= lt!2242590 (head!11762 (unfocusZipperList!888 zl!343))))))

(declare-fun b!5493943 () Bool)

(declare-fun e!3398881 () Bool)

(assert (=> b!5493943 (= e!3398881 (isEmpty!34359 (t!375910 (unfocusZipperList!888 zl!343))))))

(declare-fun e!3398882 () Bool)

(assert (=> d!1742274 e!3398882))

(declare-fun res!2342645 () Bool)

(assert (=> d!1742274 (=> (not res!2342645) (not e!3398882))))

(assert (=> d!1742274 (= res!2342645 (validRegex!7196 lt!2242590))))

(declare-fun e!3398884 () Regex!15460)

(assert (=> d!1742274 (= lt!2242590 e!3398884)))

(declare-fun c!959158 () Bool)

(assert (=> d!1742274 (= c!959158 e!3398881)))

(declare-fun res!2342646 () Bool)

(assert (=> d!1742274 (=> (not res!2342646) (not e!3398881))))

(assert (=> d!1742274 (= res!2342646 (is-Cons!62555 (unfocusZipperList!888 zl!343)))))

(assert (=> d!1742274 (forall!14653 (unfocusZipperList!888 zl!343) lambda!294143)))

(assert (=> d!1742274 (= (generalisedUnion!1323 (unfocusZipperList!888 zl!343)) lt!2242590)))

(declare-fun b!5493944 () Bool)

(declare-fun e!3398880 () Regex!15460)

(assert (=> b!5493944 (= e!3398880 (Union!15460 (h!69003 (unfocusZipperList!888 zl!343)) (generalisedUnion!1323 (t!375910 (unfocusZipperList!888 zl!343)))))))

(declare-fun b!5493945 () Bool)

(assert (=> b!5493945 (= e!3398882 e!3398885)))

(declare-fun c!959157 () Bool)

(assert (=> b!5493945 (= c!959157 (isEmpty!34359 (unfocusZipperList!888 zl!343)))))

(declare-fun b!5493946 () Bool)

(assert (=> b!5493946 (= e!3398880 EmptyLang!15460)))

(declare-fun b!5493947 () Bool)

(assert (=> b!5493947 (= e!3398884 (h!69003 (unfocusZipperList!888 zl!343)))))

(declare-fun b!5493948 () Bool)

(assert (=> b!5493948 (= e!3398884 e!3398880)))

(declare-fun c!959159 () Bool)

(assert (=> b!5493948 (= c!959159 (is-Cons!62555 (unfocusZipperList!888 zl!343)))))

(assert (= (and d!1742274 res!2342646) b!5493943))

(assert (= (and d!1742274 c!959158) b!5493947))

(assert (= (and d!1742274 (not c!959158)) b!5493948))

(assert (= (and b!5493948 c!959159) b!5493944))

(assert (= (and b!5493948 (not c!959159)) b!5493946))

(assert (= (and d!1742274 res!2342645) b!5493945))

(assert (= (and b!5493945 c!959157) b!5493939))

(assert (= (and b!5493945 (not c!959157)) b!5493941))

(assert (= (and b!5493941 c!959160) b!5493942))

(assert (= (and b!5493941 (not c!959160)) b!5493940))

(assert (=> b!5493945 m!6504896))

(declare-fun m!6504964 () Bool)

(assert (=> b!5493945 m!6504964))

(declare-fun m!6504966 () Bool)

(assert (=> d!1742274 m!6504966))

(assert (=> d!1742274 m!6504896))

(declare-fun m!6504968 () Bool)

(assert (=> d!1742274 m!6504968))

(assert (=> b!5493942 m!6504896))

(declare-fun m!6504970 () Bool)

(assert (=> b!5493942 m!6504970))

(declare-fun m!6504972 () Bool)

(assert (=> b!5493944 m!6504972))

(declare-fun m!6504974 () Bool)

(assert (=> b!5493939 m!6504974))

(assert (=> b!5493941 m!6504896))

(declare-fun m!6504976 () Bool)

(assert (=> b!5493941 m!6504976))

(assert (=> b!5493941 m!6504976))

(declare-fun m!6504978 () Bool)

(assert (=> b!5493941 m!6504978))

(declare-fun m!6504980 () Bool)

(assert (=> b!5493940 m!6504980))

(declare-fun m!6504982 () Bool)

(assert (=> b!5493943 m!6504982))

(assert (=> b!5493760 d!1742274))

(declare-fun bs!1267660 () Bool)

(declare-fun d!1742276 () Bool)

(assert (= bs!1267660 (and d!1742276 d!1742262)))

(declare-fun lambda!294146 () Int)

(assert (=> bs!1267660 (= lambda!294146 lambda!294134)))

(declare-fun bs!1267661 () Bool)

(assert (= bs!1267661 (and d!1742276 d!1742274)))

(assert (=> bs!1267661 (= lambda!294146 lambda!294143)))

(declare-fun lt!2242593 () List!62679)

(assert (=> d!1742276 (forall!14653 lt!2242593 lambda!294146)))

(declare-fun e!3398888 () List!62679)

(assert (=> d!1742276 (= lt!2242593 e!3398888)))

(declare-fun c!959163 () Bool)

(assert (=> d!1742276 (= c!959163 (is-Cons!62556 zl!343))))

(assert (=> d!1742276 (= (unfocusZipperList!888 zl!343) lt!2242593)))

(declare-fun b!5493953 () Bool)

(assert (=> b!5493953 (= e!3398888 (Cons!62555 (generalisedConcat!1075 (exprs!5344 (h!69004 zl!343))) (unfocusZipperList!888 (t!375911 zl!343))))))

(declare-fun b!5493954 () Bool)

(assert (=> b!5493954 (= e!3398888 Nil!62555)))

(assert (= (and d!1742276 c!959163) b!5493953))

(assert (= (and d!1742276 (not c!959163)) b!5493954))

(declare-fun m!6504984 () Bool)

(assert (=> d!1742276 m!6504984))

(assert (=> b!5493953 m!6504866))

(declare-fun m!6504986 () Bool)

(assert (=> b!5493953 m!6504986))

(assert (=> b!5493760 d!1742276))

(declare-fun bs!1267662 () Bool)

(declare-fun b!5493965 () Bool)

(assert (= bs!1267662 (and b!5493965 b!5493869)))

(declare-fun lambda!294147 () Int)

(assert (=> bs!1267662 (= (and (= (reg!15789 (regTwo!31433 r!7292)) (reg!15789 r!7292)) (= (regTwo!31433 r!7292) r!7292)) (= lambda!294147 lambda!294139))))

(declare-fun bs!1267663 () Bool)

(assert (= bs!1267663 (and b!5493965 b!5493863)))

(assert (=> bs!1267663 (not (= lambda!294147 lambda!294140))))

(assert (=> b!5493965 true))

(assert (=> b!5493965 true))

(declare-fun bs!1267664 () Bool)

(declare-fun b!5493959 () Bool)

(assert (= bs!1267664 (and b!5493959 b!5493869)))

(declare-fun lambda!294148 () Int)

(assert (=> bs!1267664 (not (= lambda!294148 lambda!294139))))

(declare-fun bs!1267665 () Bool)

(assert (= bs!1267665 (and b!5493959 b!5493863)))

(assert (=> bs!1267665 (= (and (= (regOne!31432 (regTwo!31433 r!7292)) (regOne!31432 r!7292)) (= (regTwo!31432 (regTwo!31433 r!7292)) (regTwo!31432 r!7292))) (= lambda!294148 lambda!294140))))

(declare-fun bs!1267666 () Bool)

(assert (= bs!1267666 (and b!5493959 b!5493965)))

(assert (=> bs!1267666 (not (= lambda!294148 lambda!294147))))

(assert (=> b!5493959 true))

(assert (=> b!5493959 true))

(declare-fun b!5493955 () Bool)

(declare-fun c!959164 () Bool)

(assert (=> b!5493955 (= c!959164 (is-ElementMatch!15460 (regTwo!31433 r!7292)))))

(declare-fun e!3398889 () Bool)

(declare-fun e!3398892 () Bool)

(assert (=> b!5493955 (= e!3398889 e!3398892)))

(declare-fun b!5493956 () Bool)

(declare-fun e!3398891 () Bool)

(assert (=> b!5493956 (= e!3398891 e!3398889)))

(declare-fun res!2342649 () Bool)

(assert (=> b!5493956 (= res!2342649 (not (is-EmptyLang!15460 (regTwo!31433 r!7292))))))

(assert (=> b!5493956 (=> (not res!2342649) (not e!3398889))))

(declare-fun b!5493957 () Bool)

(assert (=> b!5493957 (= e!3398892 (= s!2326 (Cons!62557 (c!959126 (regTwo!31433 r!7292)) Nil!62557)))))

(declare-fun b!5493958 () Bool)

(declare-fun call!405064 () Bool)

(assert (=> b!5493958 (= e!3398891 call!405064)))

(declare-fun e!3398893 () Bool)

(declare-fun call!405063 () Bool)

(assert (=> b!5493959 (= e!3398893 call!405063)))

(declare-fun d!1742278 () Bool)

(declare-fun c!959165 () Bool)

(assert (=> d!1742278 (= c!959165 (is-EmptyExpr!15460 (regTwo!31433 r!7292)))))

(assert (=> d!1742278 (= (matchRSpec!2563 (regTwo!31433 r!7292) s!2326) e!3398891)))

(declare-fun b!5493960 () Bool)

(declare-fun c!959167 () Bool)

(assert (=> b!5493960 (= c!959167 (is-Union!15460 (regTwo!31433 r!7292)))))

(declare-fun e!3398894 () Bool)

(assert (=> b!5493960 (= e!3398892 e!3398894)))

(declare-fun b!5493961 () Bool)

(declare-fun e!3398895 () Bool)

(assert (=> b!5493961 (= e!3398894 e!3398895)))

(declare-fun res!2342648 () Bool)

(assert (=> b!5493961 (= res!2342648 (matchRSpec!2563 (regOne!31433 (regTwo!31433 r!7292)) s!2326))))

(assert (=> b!5493961 (=> res!2342648 e!3398895)))

(declare-fun b!5493962 () Bool)

(assert (=> b!5493962 (= e!3398895 (matchRSpec!2563 (regTwo!31433 (regTwo!31433 r!7292)) s!2326))))

(declare-fun b!5493963 () Bool)

(declare-fun res!2342647 () Bool)

(declare-fun e!3398890 () Bool)

(assert (=> b!5493963 (=> res!2342647 e!3398890)))

(assert (=> b!5493963 (= res!2342647 call!405064)))

(assert (=> b!5493963 (= e!3398893 e!3398890)))

(declare-fun bm!405058 () Bool)

(assert (=> bm!405058 (= call!405064 (isEmpty!34358 s!2326))))

(declare-fun b!5493964 () Bool)

(assert (=> b!5493964 (= e!3398894 e!3398893)))

(declare-fun c!959166 () Bool)

(assert (=> b!5493964 (= c!959166 (is-Star!15460 (regTwo!31433 r!7292)))))

(assert (=> b!5493965 (= e!3398890 call!405063)))

(declare-fun bm!405059 () Bool)

(assert (=> bm!405059 (= call!405063 (Exists!2570 (ite c!959166 lambda!294147 lambda!294148)))))

(assert (= (and d!1742278 c!959165) b!5493958))

(assert (= (and d!1742278 (not c!959165)) b!5493956))

(assert (= (and b!5493956 res!2342649) b!5493955))

(assert (= (and b!5493955 c!959164) b!5493957))

(assert (= (and b!5493955 (not c!959164)) b!5493960))

(assert (= (and b!5493960 c!959167) b!5493961))

(assert (= (and b!5493960 (not c!959167)) b!5493964))

(assert (= (and b!5493961 (not res!2342648)) b!5493962))

(assert (= (and b!5493964 c!959166) b!5493963))

(assert (= (and b!5493964 (not c!959166)) b!5493959))

(assert (= (and b!5493963 (not res!2342647)) b!5493965))

(assert (= (or b!5493965 b!5493959) bm!405059))

(assert (= (or b!5493958 b!5493963) bm!405058))

(declare-fun m!6504988 () Bool)

(assert (=> b!5493961 m!6504988))

(declare-fun m!6504990 () Bool)

(assert (=> b!5493962 m!6504990))

(assert (=> bm!405058 m!6504940))

(declare-fun m!6504992 () Bool)

(assert (=> bm!405059 m!6504992))

(assert (=> b!5493764 d!1742278))

(declare-fun d!1742280 () Bool)

(assert (=> d!1742280 (= (matchR!7645 (regOne!31433 r!7292) s!2326) (matchRSpec!2563 (regOne!31433 r!7292) s!2326))))

(declare-fun lt!2242594 () Unit!155380)

(assert (=> d!1742280 (= lt!2242594 (choose!41766 (regOne!31433 r!7292) s!2326))))

(assert (=> d!1742280 (validRegex!7196 (regOne!31433 r!7292))))

(assert (=> d!1742280 (= (mainMatchTheorem!2563 (regOne!31433 r!7292) s!2326) lt!2242594)))

(declare-fun bs!1267667 () Bool)

(assert (= bs!1267667 d!1742280))

(assert (=> bs!1267667 m!6504882))

(assert (=> bs!1267667 m!6504878))

(declare-fun m!6504994 () Bool)

(assert (=> bs!1267667 m!6504994))

(declare-fun m!6504996 () Bool)

(assert (=> bs!1267667 m!6504996))

(assert (=> b!5493764 d!1742280))

(declare-fun b!5493966 () Bool)

(declare-fun e!3398897 () Bool)

(declare-fun e!3398899 () Bool)

(assert (=> b!5493966 (= e!3398897 e!3398899)))

(declare-fun res!2342656 () Bool)

(assert (=> b!5493966 (=> res!2342656 e!3398899)))

(declare-fun call!405065 () Bool)

(assert (=> b!5493966 (= res!2342656 call!405065)))

(declare-fun bm!405060 () Bool)

(assert (=> bm!405060 (= call!405065 (isEmpty!34358 s!2326))))

(declare-fun b!5493967 () Bool)

(declare-fun e!3398901 () Bool)

(declare-fun lt!2242595 () Bool)

(assert (=> b!5493967 (= e!3398901 (= lt!2242595 call!405065))))

(declare-fun b!5493968 () Bool)

(declare-fun e!3398896 () Bool)

(assert (=> b!5493968 (= e!3398896 (= (head!11761 s!2326) (c!959126 (regTwo!31433 r!7292))))))

(declare-fun b!5493969 () Bool)

(declare-fun res!2342651 () Bool)

(declare-fun e!3398898 () Bool)

(assert (=> b!5493969 (=> res!2342651 e!3398898)))

(assert (=> b!5493969 (= res!2342651 e!3398896)))

(declare-fun res!2342652 () Bool)

(assert (=> b!5493969 (=> (not res!2342652) (not e!3398896))))

(assert (=> b!5493969 (= res!2342652 lt!2242595)))

(declare-fun b!5493970 () Bool)

(declare-fun res!2342653 () Bool)

(assert (=> b!5493970 (=> res!2342653 e!3398898)))

(assert (=> b!5493970 (= res!2342653 (not (is-ElementMatch!15460 (regTwo!31433 r!7292))))))

(declare-fun e!3398902 () Bool)

(assert (=> b!5493970 (= e!3398902 e!3398898)))

(declare-fun d!1742282 () Bool)

(assert (=> d!1742282 e!3398901))

(declare-fun c!959168 () Bool)

(assert (=> d!1742282 (= c!959168 (is-EmptyExpr!15460 (regTwo!31433 r!7292)))))

(declare-fun e!3398900 () Bool)

(assert (=> d!1742282 (= lt!2242595 e!3398900)))

(declare-fun c!959170 () Bool)

(assert (=> d!1742282 (= c!959170 (isEmpty!34358 s!2326))))

(assert (=> d!1742282 (validRegex!7196 (regTwo!31433 r!7292))))

(assert (=> d!1742282 (= (matchR!7645 (regTwo!31433 r!7292) s!2326) lt!2242595)))

(declare-fun b!5493971 () Bool)

(assert (=> b!5493971 (= e!3398902 (not lt!2242595))))

(declare-fun b!5493972 () Bool)

(assert (=> b!5493972 (= e!3398900 (matchR!7645 (derivativeStep!4344 (regTwo!31433 r!7292) (head!11761 s!2326)) (tail!10856 s!2326)))))

(declare-fun b!5493973 () Bool)

(assert (=> b!5493973 (= e!3398900 (nullable!5503 (regTwo!31433 r!7292)))))

(declare-fun b!5493974 () Bool)

(declare-fun res!2342655 () Bool)

(assert (=> b!5493974 (=> (not res!2342655) (not e!3398896))))

(assert (=> b!5493974 (= res!2342655 (isEmpty!34358 (tail!10856 s!2326)))))

(declare-fun b!5493975 () Bool)

(declare-fun res!2342657 () Bool)

(assert (=> b!5493975 (=> (not res!2342657) (not e!3398896))))

(assert (=> b!5493975 (= res!2342657 (not call!405065))))

(declare-fun b!5493976 () Bool)

(declare-fun res!2342654 () Bool)

(assert (=> b!5493976 (=> res!2342654 e!3398899)))

(assert (=> b!5493976 (= res!2342654 (not (isEmpty!34358 (tail!10856 s!2326))))))

(declare-fun b!5493977 () Bool)

(assert (=> b!5493977 (= e!3398901 e!3398902)))

(declare-fun c!959169 () Bool)

(assert (=> b!5493977 (= c!959169 (is-EmptyLang!15460 (regTwo!31433 r!7292)))))

(declare-fun b!5493978 () Bool)

(assert (=> b!5493978 (= e!3398899 (not (= (head!11761 s!2326) (c!959126 (regTwo!31433 r!7292)))))))

(declare-fun b!5493979 () Bool)

(assert (=> b!5493979 (= e!3398898 e!3398897)))

(declare-fun res!2342650 () Bool)

(assert (=> b!5493979 (=> (not res!2342650) (not e!3398897))))

(assert (=> b!5493979 (= res!2342650 (not lt!2242595))))

(assert (= (and d!1742282 c!959170) b!5493973))

(assert (= (and d!1742282 (not c!959170)) b!5493972))

(assert (= (and d!1742282 c!959168) b!5493967))

(assert (= (and d!1742282 (not c!959168)) b!5493977))

(assert (= (and b!5493977 c!959169) b!5493971))

(assert (= (and b!5493977 (not c!959169)) b!5493970))

(assert (= (and b!5493970 (not res!2342653)) b!5493969))

(assert (= (and b!5493969 res!2342652) b!5493975))

(assert (= (and b!5493975 res!2342657) b!5493974))

(assert (= (and b!5493974 res!2342655) b!5493968))

(assert (= (and b!5493969 (not res!2342651)) b!5493979))

(assert (= (and b!5493979 res!2342650) b!5493966))

(assert (= (and b!5493966 (not res!2342656)) b!5493976))

(assert (= (and b!5493976 (not res!2342654)) b!5493978))

(assert (= (or b!5493967 b!5493966 b!5493975) bm!405060))

(assert (=> b!5493978 m!6504944))

(assert (=> d!1742282 m!6504940))

(declare-fun m!6504998 () Bool)

(assert (=> d!1742282 m!6504998))

(assert (=> b!5493974 m!6504946))

(assert (=> b!5493974 m!6504946))

(assert (=> b!5493974 m!6504948))

(assert (=> b!5493968 m!6504944))

(assert (=> bm!405060 m!6504940))

(declare-fun m!6505000 () Bool)

(assert (=> b!5493973 m!6505000))

(assert (=> b!5493976 m!6504946))

(assert (=> b!5493976 m!6504946))

(assert (=> b!5493976 m!6504948))

(assert (=> b!5493972 m!6504944))

(assert (=> b!5493972 m!6504944))

(declare-fun m!6505002 () Bool)

(assert (=> b!5493972 m!6505002))

(assert (=> b!5493972 m!6504946))

(assert (=> b!5493972 m!6505002))

(assert (=> b!5493972 m!6504946))

(declare-fun m!6505004 () Bool)

(assert (=> b!5493972 m!6505004))

(assert (=> b!5493764 d!1742282))

(declare-fun d!1742284 () Bool)

(assert (=> d!1742284 (= (matchR!7645 (regTwo!31433 r!7292) s!2326) (matchRSpec!2563 (regTwo!31433 r!7292) s!2326))))

(declare-fun lt!2242596 () Unit!155380)

(assert (=> d!1742284 (= lt!2242596 (choose!41766 (regTwo!31433 r!7292) s!2326))))

(assert (=> d!1742284 (validRegex!7196 (regTwo!31433 r!7292))))

(assert (=> d!1742284 (= (mainMatchTheorem!2563 (regTwo!31433 r!7292) s!2326) lt!2242596)))

(declare-fun bs!1267668 () Bool)

(assert (= bs!1267668 d!1742284))

(assert (=> bs!1267668 m!6504876))

(assert (=> bs!1267668 m!6504872))

(declare-fun m!6505006 () Bool)

(assert (=> bs!1267668 m!6505006))

(assert (=> bs!1267668 m!6504998))

(assert (=> b!5493764 d!1742284))

(declare-fun bs!1267669 () Bool)

(declare-fun b!5493990 () Bool)

(assert (= bs!1267669 (and b!5493990 b!5493869)))

(declare-fun lambda!294149 () Int)

(assert (=> bs!1267669 (= (and (= (reg!15789 (regOne!31433 r!7292)) (reg!15789 r!7292)) (= (regOne!31433 r!7292) r!7292)) (= lambda!294149 lambda!294139))))

(declare-fun bs!1267670 () Bool)

(assert (= bs!1267670 (and b!5493990 b!5493863)))

(assert (=> bs!1267670 (not (= lambda!294149 lambda!294140))))

(declare-fun bs!1267671 () Bool)

(assert (= bs!1267671 (and b!5493990 b!5493965)))

(assert (=> bs!1267671 (= (and (= (reg!15789 (regOne!31433 r!7292)) (reg!15789 (regTwo!31433 r!7292))) (= (regOne!31433 r!7292) (regTwo!31433 r!7292))) (= lambda!294149 lambda!294147))))

(declare-fun bs!1267672 () Bool)

(assert (= bs!1267672 (and b!5493990 b!5493959)))

(assert (=> bs!1267672 (not (= lambda!294149 lambda!294148))))

(assert (=> b!5493990 true))

(assert (=> b!5493990 true))

(declare-fun bs!1267673 () Bool)

(declare-fun b!5493984 () Bool)

(assert (= bs!1267673 (and b!5493984 b!5493965)))

(declare-fun lambda!294150 () Int)

(assert (=> bs!1267673 (not (= lambda!294150 lambda!294147))))

(declare-fun bs!1267674 () Bool)

(assert (= bs!1267674 (and b!5493984 b!5493990)))

(assert (=> bs!1267674 (not (= lambda!294150 lambda!294149))))

(declare-fun bs!1267675 () Bool)

(assert (= bs!1267675 (and b!5493984 b!5493863)))

(assert (=> bs!1267675 (= (and (= (regOne!31432 (regOne!31433 r!7292)) (regOne!31432 r!7292)) (= (regTwo!31432 (regOne!31433 r!7292)) (regTwo!31432 r!7292))) (= lambda!294150 lambda!294140))))

(declare-fun bs!1267676 () Bool)

(assert (= bs!1267676 (and b!5493984 b!5493869)))

(assert (=> bs!1267676 (not (= lambda!294150 lambda!294139))))

(declare-fun bs!1267677 () Bool)

(assert (= bs!1267677 (and b!5493984 b!5493959)))

(assert (=> bs!1267677 (= (and (= (regOne!31432 (regOne!31433 r!7292)) (regOne!31432 (regTwo!31433 r!7292))) (= (regTwo!31432 (regOne!31433 r!7292)) (regTwo!31432 (regTwo!31433 r!7292)))) (= lambda!294150 lambda!294148))))

(assert (=> b!5493984 true))

(assert (=> b!5493984 true))

(declare-fun b!5493980 () Bool)

(declare-fun c!959171 () Bool)

(assert (=> b!5493980 (= c!959171 (is-ElementMatch!15460 (regOne!31433 r!7292)))))

(declare-fun e!3398903 () Bool)

(declare-fun e!3398906 () Bool)

(assert (=> b!5493980 (= e!3398903 e!3398906)))

(declare-fun b!5493981 () Bool)

(declare-fun e!3398905 () Bool)

(assert (=> b!5493981 (= e!3398905 e!3398903)))

(declare-fun res!2342660 () Bool)

(assert (=> b!5493981 (= res!2342660 (not (is-EmptyLang!15460 (regOne!31433 r!7292))))))

(assert (=> b!5493981 (=> (not res!2342660) (not e!3398903))))

(declare-fun b!5493982 () Bool)

(assert (=> b!5493982 (= e!3398906 (= s!2326 (Cons!62557 (c!959126 (regOne!31433 r!7292)) Nil!62557)))))

(declare-fun b!5493983 () Bool)

(declare-fun call!405067 () Bool)

(assert (=> b!5493983 (= e!3398905 call!405067)))

(declare-fun e!3398907 () Bool)

(declare-fun call!405066 () Bool)

(assert (=> b!5493984 (= e!3398907 call!405066)))

(declare-fun d!1742286 () Bool)

(declare-fun c!959172 () Bool)

(assert (=> d!1742286 (= c!959172 (is-EmptyExpr!15460 (regOne!31433 r!7292)))))

(assert (=> d!1742286 (= (matchRSpec!2563 (regOne!31433 r!7292) s!2326) e!3398905)))

(declare-fun b!5493985 () Bool)

(declare-fun c!959174 () Bool)

(assert (=> b!5493985 (= c!959174 (is-Union!15460 (regOne!31433 r!7292)))))

(declare-fun e!3398908 () Bool)

(assert (=> b!5493985 (= e!3398906 e!3398908)))

(declare-fun b!5493986 () Bool)

(declare-fun e!3398909 () Bool)

(assert (=> b!5493986 (= e!3398908 e!3398909)))

(declare-fun res!2342659 () Bool)

(assert (=> b!5493986 (= res!2342659 (matchRSpec!2563 (regOne!31433 (regOne!31433 r!7292)) s!2326))))

(assert (=> b!5493986 (=> res!2342659 e!3398909)))

(declare-fun b!5493987 () Bool)

(assert (=> b!5493987 (= e!3398909 (matchRSpec!2563 (regTwo!31433 (regOne!31433 r!7292)) s!2326))))

(declare-fun b!5493988 () Bool)

(declare-fun res!2342658 () Bool)

(declare-fun e!3398904 () Bool)

(assert (=> b!5493988 (=> res!2342658 e!3398904)))

(assert (=> b!5493988 (= res!2342658 call!405067)))

(assert (=> b!5493988 (= e!3398907 e!3398904)))

(declare-fun bm!405061 () Bool)

(assert (=> bm!405061 (= call!405067 (isEmpty!34358 s!2326))))

(declare-fun b!5493989 () Bool)

(assert (=> b!5493989 (= e!3398908 e!3398907)))

(declare-fun c!959173 () Bool)

(assert (=> b!5493989 (= c!959173 (is-Star!15460 (regOne!31433 r!7292)))))

(assert (=> b!5493990 (= e!3398904 call!405066)))

(declare-fun bm!405062 () Bool)

(assert (=> bm!405062 (= call!405066 (Exists!2570 (ite c!959173 lambda!294149 lambda!294150)))))

(assert (= (and d!1742286 c!959172) b!5493983))

(assert (= (and d!1742286 (not c!959172)) b!5493981))

(assert (= (and b!5493981 res!2342660) b!5493980))

(assert (= (and b!5493980 c!959171) b!5493982))

(assert (= (and b!5493980 (not c!959171)) b!5493985))

(assert (= (and b!5493985 c!959174) b!5493986))

(assert (= (and b!5493985 (not c!959174)) b!5493989))

(assert (= (and b!5493986 (not res!2342659)) b!5493987))

(assert (= (and b!5493989 c!959173) b!5493988))

(assert (= (and b!5493989 (not c!959173)) b!5493984))

(assert (= (and b!5493988 (not res!2342658)) b!5493990))

(assert (= (or b!5493990 b!5493984) bm!405062))

(assert (= (or b!5493983 b!5493988) bm!405061))

(declare-fun m!6505008 () Bool)

(assert (=> b!5493986 m!6505008))

(declare-fun m!6505010 () Bool)

(assert (=> b!5493987 m!6505010))

(assert (=> bm!405061 m!6504940))

(declare-fun m!6505012 () Bool)

(assert (=> bm!405062 m!6505012))

(assert (=> b!5493764 d!1742286))

(declare-fun b!5493991 () Bool)

(declare-fun e!3398911 () Bool)

(declare-fun e!3398913 () Bool)

(assert (=> b!5493991 (= e!3398911 e!3398913)))

(declare-fun res!2342667 () Bool)

(assert (=> b!5493991 (=> res!2342667 e!3398913)))

(declare-fun call!405068 () Bool)

(assert (=> b!5493991 (= res!2342667 call!405068)))

(declare-fun bm!405063 () Bool)

(assert (=> bm!405063 (= call!405068 (isEmpty!34358 s!2326))))

(declare-fun b!5493992 () Bool)

(declare-fun e!3398915 () Bool)

(declare-fun lt!2242597 () Bool)

(assert (=> b!5493992 (= e!3398915 (= lt!2242597 call!405068))))

(declare-fun b!5493993 () Bool)

(declare-fun e!3398910 () Bool)

(assert (=> b!5493993 (= e!3398910 (= (head!11761 s!2326) (c!959126 (regOne!31433 r!7292))))))

(declare-fun b!5493994 () Bool)

(declare-fun res!2342662 () Bool)

(declare-fun e!3398912 () Bool)

(assert (=> b!5493994 (=> res!2342662 e!3398912)))

(assert (=> b!5493994 (= res!2342662 e!3398910)))

(declare-fun res!2342663 () Bool)

(assert (=> b!5493994 (=> (not res!2342663) (not e!3398910))))

(assert (=> b!5493994 (= res!2342663 lt!2242597)))

(declare-fun b!5493995 () Bool)

(declare-fun res!2342664 () Bool)

(assert (=> b!5493995 (=> res!2342664 e!3398912)))

(assert (=> b!5493995 (= res!2342664 (not (is-ElementMatch!15460 (regOne!31433 r!7292))))))

(declare-fun e!3398916 () Bool)

(assert (=> b!5493995 (= e!3398916 e!3398912)))

(declare-fun d!1742288 () Bool)

(assert (=> d!1742288 e!3398915))

(declare-fun c!959175 () Bool)

(assert (=> d!1742288 (= c!959175 (is-EmptyExpr!15460 (regOne!31433 r!7292)))))

(declare-fun e!3398914 () Bool)

(assert (=> d!1742288 (= lt!2242597 e!3398914)))

(declare-fun c!959177 () Bool)

(assert (=> d!1742288 (= c!959177 (isEmpty!34358 s!2326))))

(assert (=> d!1742288 (validRegex!7196 (regOne!31433 r!7292))))

(assert (=> d!1742288 (= (matchR!7645 (regOne!31433 r!7292) s!2326) lt!2242597)))

(declare-fun b!5493996 () Bool)

(assert (=> b!5493996 (= e!3398916 (not lt!2242597))))

(declare-fun b!5493997 () Bool)

(assert (=> b!5493997 (= e!3398914 (matchR!7645 (derivativeStep!4344 (regOne!31433 r!7292) (head!11761 s!2326)) (tail!10856 s!2326)))))

(declare-fun b!5493998 () Bool)

(assert (=> b!5493998 (= e!3398914 (nullable!5503 (regOne!31433 r!7292)))))

(declare-fun b!5493999 () Bool)

(declare-fun res!2342666 () Bool)

(assert (=> b!5493999 (=> (not res!2342666) (not e!3398910))))

(assert (=> b!5493999 (= res!2342666 (isEmpty!34358 (tail!10856 s!2326)))))

(declare-fun b!5494000 () Bool)

(declare-fun res!2342668 () Bool)

(assert (=> b!5494000 (=> (not res!2342668) (not e!3398910))))

(assert (=> b!5494000 (= res!2342668 (not call!405068))))

(declare-fun b!5494001 () Bool)

(declare-fun res!2342665 () Bool)

(assert (=> b!5494001 (=> res!2342665 e!3398913)))

(assert (=> b!5494001 (= res!2342665 (not (isEmpty!34358 (tail!10856 s!2326))))))

(declare-fun b!5494002 () Bool)

(assert (=> b!5494002 (= e!3398915 e!3398916)))

(declare-fun c!959176 () Bool)

(assert (=> b!5494002 (= c!959176 (is-EmptyLang!15460 (regOne!31433 r!7292)))))

(declare-fun b!5494003 () Bool)

(assert (=> b!5494003 (= e!3398913 (not (= (head!11761 s!2326) (c!959126 (regOne!31433 r!7292)))))))

(declare-fun b!5494004 () Bool)

(assert (=> b!5494004 (= e!3398912 e!3398911)))

(declare-fun res!2342661 () Bool)

(assert (=> b!5494004 (=> (not res!2342661) (not e!3398911))))

(assert (=> b!5494004 (= res!2342661 (not lt!2242597))))

(assert (= (and d!1742288 c!959177) b!5493998))

(assert (= (and d!1742288 (not c!959177)) b!5493997))

(assert (= (and d!1742288 c!959175) b!5493992))

(assert (= (and d!1742288 (not c!959175)) b!5494002))

(assert (= (and b!5494002 c!959176) b!5493996))

(assert (= (and b!5494002 (not c!959176)) b!5493995))

(assert (= (and b!5493995 (not res!2342664)) b!5493994))

(assert (= (and b!5493994 res!2342663) b!5494000))

(assert (= (and b!5494000 res!2342668) b!5493999))

(assert (= (and b!5493999 res!2342666) b!5493993))

(assert (= (and b!5493994 (not res!2342662)) b!5494004))

(assert (= (and b!5494004 res!2342661) b!5493991))

(assert (= (and b!5493991 (not res!2342667)) b!5494001))

(assert (= (and b!5494001 (not res!2342665)) b!5494003))

(assert (= (or b!5493992 b!5493991 b!5494000) bm!405063))

(assert (=> b!5494003 m!6504944))

(assert (=> d!1742288 m!6504940))

(assert (=> d!1742288 m!6504996))

(assert (=> b!5493999 m!6504946))

(assert (=> b!5493999 m!6504946))

(assert (=> b!5493999 m!6504948))

(assert (=> b!5493993 m!6504944))

(assert (=> bm!405063 m!6504940))

(declare-fun m!6505014 () Bool)

(assert (=> b!5493998 m!6505014))

(assert (=> b!5494001 m!6504946))

(assert (=> b!5494001 m!6504946))

(assert (=> b!5494001 m!6504948))

(assert (=> b!5493997 m!6504944))

(assert (=> b!5493997 m!6504944))

(declare-fun m!6505016 () Bool)

(assert (=> b!5493997 m!6505016))

(assert (=> b!5493997 m!6504946))

(assert (=> b!5493997 m!6505016))

(assert (=> b!5493997 m!6504946))

(declare-fun m!6505018 () Bool)

(assert (=> b!5493997 m!6505018))

(assert (=> b!5493764 d!1742288))

(declare-fun b!5494023 () Bool)

(declare-fun res!2342682 () Bool)

(declare-fun e!3398937 () Bool)

(assert (=> b!5494023 (=> res!2342682 e!3398937)))

(assert (=> b!5494023 (= res!2342682 (not (is-Concat!24305 r!7292)))))

(declare-fun e!3398936 () Bool)

(assert (=> b!5494023 (= e!3398936 e!3398937)))

(declare-fun b!5494024 () Bool)

(declare-fun e!3398935 () Bool)

(assert (=> b!5494024 (= e!3398937 e!3398935)))

(declare-fun res!2342681 () Bool)

(assert (=> b!5494024 (=> (not res!2342681) (not e!3398935))))

(declare-fun call!405075 () Bool)

(assert (=> b!5494024 (= res!2342681 call!405075)))

(declare-fun b!5494025 () Bool)

(declare-fun e!3398934 () Bool)

(declare-fun call!405076 () Bool)

(assert (=> b!5494025 (= e!3398934 call!405076)))

(declare-fun b!5494026 () Bool)

(declare-fun e!3398933 () Bool)

(assert (=> b!5494026 (= e!3398933 e!3398934)))

(declare-fun res!2342679 () Bool)

(assert (=> b!5494026 (= res!2342679 (not (nullable!5503 (reg!15789 r!7292))))))

(assert (=> b!5494026 (=> (not res!2342679) (not e!3398934))))

(declare-fun b!5494027 () Bool)

(declare-fun e!3398931 () Bool)

(assert (=> b!5494027 (= e!3398931 e!3398933)))

(declare-fun c!959183 () Bool)

(assert (=> b!5494027 (= c!959183 (is-Star!15460 r!7292))))

(declare-fun b!5494028 () Bool)

(declare-fun res!2342680 () Bool)

(declare-fun e!3398932 () Bool)

(assert (=> b!5494028 (=> (not res!2342680) (not e!3398932))))

(assert (=> b!5494028 (= res!2342680 call!405075)))

(assert (=> b!5494028 (= e!3398936 e!3398932)))

(declare-fun b!5494029 () Bool)

(declare-fun call!405077 () Bool)

(assert (=> b!5494029 (= e!3398932 call!405077)))

(declare-fun bm!405070 () Bool)

(declare-fun c!959182 () Bool)

(assert (=> bm!405070 (= call!405075 (validRegex!7196 (ite c!959182 (regOne!31433 r!7292) (regOne!31432 r!7292))))))

(declare-fun b!5494031 () Bool)

(assert (=> b!5494031 (= e!3398935 call!405077)))

(declare-fun bm!405071 () Bool)

(assert (=> bm!405071 (= call!405077 call!405076)))

(declare-fun bm!405072 () Bool)

(assert (=> bm!405072 (= call!405076 (validRegex!7196 (ite c!959183 (reg!15789 r!7292) (ite c!959182 (regTwo!31433 r!7292) (regTwo!31432 r!7292)))))))

(declare-fun d!1742290 () Bool)

(declare-fun res!2342683 () Bool)

(assert (=> d!1742290 (=> res!2342683 e!3398931)))

(assert (=> d!1742290 (= res!2342683 (is-ElementMatch!15460 r!7292))))

(assert (=> d!1742290 (= (validRegex!7196 r!7292) e!3398931)))

(declare-fun b!5494030 () Bool)

(assert (=> b!5494030 (= e!3398933 e!3398936)))

(assert (=> b!5494030 (= c!959182 (is-Union!15460 r!7292))))

(assert (= (and d!1742290 (not res!2342683)) b!5494027))

(assert (= (and b!5494027 c!959183) b!5494026))

(assert (= (and b!5494027 (not c!959183)) b!5494030))

(assert (= (and b!5494026 res!2342679) b!5494025))

(assert (= (and b!5494030 c!959182) b!5494028))

(assert (= (and b!5494030 (not c!959182)) b!5494023))

(assert (= (and b!5494028 res!2342680) b!5494029))

(assert (= (and b!5494023 (not res!2342682)) b!5494024))

(assert (= (and b!5494024 res!2342681) b!5494031))

(assert (= (or b!5494029 b!5494031) bm!405071))

(assert (= (or b!5494028 b!5494024) bm!405070))

(assert (= (or b!5494025 bm!405071) bm!405072))

(declare-fun m!6505024 () Bool)

(assert (=> b!5494026 m!6505024))

(declare-fun m!6505026 () Bool)

(assert (=> bm!405070 m!6505026))

(declare-fun m!6505028 () Bool)

(assert (=> bm!405072 m!6505028))

(assert (=> start!574016 d!1742290))

(declare-fun bs!1267680 () Bool)

(declare-fun d!1742296 () Bool)

(assert (= bs!1267680 (and d!1742296 d!1742262)))

(declare-fun lambda!294158 () Int)

(assert (=> bs!1267680 (= lambda!294158 lambda!294134)))

(declare-fun bs!1267681 () Bool)

(assert (= bs!1267681 (and d!1742296 d!1742274)))

(assert (=> bs!1267681 (= lambda!294158 lambda!294143)))

(declare-fun bs!1267682 () Bool)

(assert (= bs!1267682 (and d!1742296 d!1742276)))

(assert (=> bs!1267682 (= lambda!294158 lambda!294146)))

(declare-fun b!5494072 () Bool)

(declare-fun e!3398962 () Bool)

(declare-fun lt!2242605 () Regex!15460)

(declare-fun isEmptyExpr!1051 (Regex!15460) Bool)

(assert (=> b!5494072 (= e!3398962 (isEmptyExpr!1051 lt!2242605))))

(declare-fun b!5494073 () Bool)

(declare-fun e!3398967 () Regex!15460)

(assert (=> b!5494073 (= e!3398967 EmptyExpr!15460)))

(declare-fun b!5494074 () Bool)

(declare-fun e!3398964 () Regex!15460)

(assert (=> b!5494074 (= e!3398964 e!3398967)))

(declare-fun c!959202 () Bool)

(assert (=> b!5494074 (= c!959202 (is-Cons!62555 (exprs!5344 (h!69004 zl!343))))))

(declare-fun e!3398965 () Bool)

(assert (=> d!1742296 e!3398965))

(declare-fun res!2342693 () Bool)

(assert (=> d!1742296 (=> (not res!2342693) (not e!3398965))))

(assert (=> d!1742296 (= res!2342693 (validRegex!7196 lt!2242605))))

(assert (=> d!1742296 (= lt!2242605 e!3398964)))

(declare-fun c!959200 () Bool)

(declare-fun e!3398966 () Bool)

(assert (=> d!1742296 (= c!959200 e!3398966)))

(declare-fun res!2342692 () Bool)

(assert (=> d!1742296 (=> (not res!2342692) (not e!3398966))))

(assert (=> d!1742296 (= res!2342692 (is-Cons!62555 (exprs!5344 (h!69004 zl!343))))))

(assert (=> d!1742296 (forall!14653 (exprs!5344 (h!69004 zl!343)) lambda!294158)))

(assert (=> d!1742296 (= (generalisedConcat!1075 (exprs!5344 (h!69004 zl!343))) lt!2242605)))

(declare-fun b!5494075 () Bool)

(declare-fun e!3398963 () Bool)

(declare-fun isConcat!574 (Regex!15460) Bool)

(assert (=> b!5494075 (= e!3398963 (isConcat!574 lt!2242605))))

(declare-fun b!5494076 () Bool)

(assert (=> b!5494076 (= e!3398962 e!3398963)))

(declare-fun c!959201 () Bool)

(assert (=> b!5494076 (= c!959201 (isEmpty!34359 (tail!10857 (exprs!5344 (h!69004 zl!343)))))))

(declare-fun b!5494077 () Bool)

(assert (=> b!5494077 (= e!3398966 (isEmpty!34359 (t!375910 (exprs!5344 (h!69004 zl!343)))))))

(declare-fun b!5494078 () Bool)

(assert (=> b!5494078 (= e!3398963 (= lt!2242605 (head!11762 (exprs!5344 (h!69004 zl!343)))))))

(declare-fun b!5494079 () Bool)

(assert (=> b!5494079 (= e!3398965 e!3398962)))

(declare-fun c!959203 () Bool)

(assert (=> b!5494079 (= c!959203 (isEmpty!34359 (exprs!5344 (h!69004 zl!343))))))

(declare-fun b!5494080 () Bool)

(assert (=> b!5494080 (= e!3398967 (Concat!24305 (h!69003 (exprs!5344 (h!69004 zl!343))) (generalisedConcat!1075 (t!375910 (exprs!5344 (h!69004 zl!343))))))))

(declare-fun b!5494081 () Bool)

(assert (=> b!5494081 (= e!3398964 (h!69003 (exprs!5344 (h!69004 zl!343))))))

(assert (= (and d!1742296 res!2342692) b!5494077))

(assert (= (and d!1742296 c!959200) b!5494081))

(assert (= (and d!1742296 (not c!959200)) b!5494074))

(assert (= (and b!5494074 c!959202) b!5494080))

(assert (= (and b!5494074 (not c!959202)) b!5494073))

(assert (= (and d!1742296 res!2342693) b!5494079))

(assert (= (and b!5494079 c!959203) b!5494072))

(assert (= (and b!5494079 (not c!959203)) b!5494076))

(assert (= (and b!5494076 c!959201) b!5494078))

(assert (= (and b!5494076 (not c!959201)) b!5494075))

(declare-fun m!6505030 () Bool)

(assert (=> b!5494079 m!6505030))

(declare-fun m!6505032 () Bool)

(assert (=> b!5494078 m!6505032))

(declare-fun m!6505034 () Bool)

(assert (=> d!1742296 m!6505034))

(declare-fun m!6505036 () Bool)

(assert (=> d!1742296 m!6505036))

(declare-fun m!6505038 () Bool)

(assert (=> b!5494076 m!6505038))

(assert (=> b!5494076 m!6505038))

(declare-fun m!6505040 () Bool)

(assert (=> b!5494076 m!6505040))

(declare-fun m!6505042 () Bool)

(assert (=> b!5494072 m!6505042))

(declare-fun m!6505044 () Bool)

(assert (=> b!5494077 m!6505044))

(declare-fun m!6505046 () Bool)

(assert (=> b!5494080 m!6505046))

(declare-fun m!6505048 () Bool)

(assert (=> b!5494075 m!6505048))

(assert (=> b!5493773 d!1742296))

(declare-fun bs!1267684 () Bool)

(declare-fun d!1742298 () Bool)

(assert (= bs!1267684 (and d!1742298 d!1742262)))

(declare-fun lambda!294160 () Int)

(assert (=> bs!1267684 (= lambda!294160 lambda!294134)))

(declare-fun bs!1267685 () Bool)

(assert (= bs!1267685 (and d!1742298 d!1742274)))

(assert (=> bs!1267685 (= lambda!294160 lambda!294143)))

(declare-fun bs!1267686 () Bool)

(assert (= bs!1267686 (and d!1742298 d!1742276)))

(assert (=> bs!1267686 (= lambda!294160 lambda!294146)))

(declare-fun bs!1267687 () Bool)

(assert (= bs!1267687 (and d!1742298 d!1742296)))

(assert (=> bs!1267687 (= lambda!294160 lambda!294158)))

(assert (=> d!1742298 (= (inv!81898 setElem!36364) (forall!14653 (exprs!5344 setElem!36364) lambda!294160))))

(declare-fun bs!1267688 () Bool)

(assert (= bs!1267688 d!1742298))

(declare-fun m!6505070 () Bool)

(assert (=> bs!1267688 m!6505070))

(assert (=> setNonEmpty!36364 d!1742298))

(declare-fun b!5494096 () Bool)

(declare-fun e!3398976 () Bool)

(declare-fun tp!1511674 () Bool)

(assert (=> b!5494096 (= e!3398976 (and tp_is_empty!40173 tp!1511674))))

(assert (=> b!5493767 (= tp!1511640 e!3398976)))

(assert (= (and b!5493767 (is-Cons!62557 (t!375912 s!2326))) b!5494096))

(declare-fun b!5494101 () Bool)

(declare-fun e!3398979 () Bool)

(declare-fun tp!1511679 () Bool)

(declare-fun tp!1511680 () Bool)

(assert (=> b!5494101 (= e!3398979 (and tp!1511679 tp!1511680))))

(assert (=> b!5493762 (= tp!1511637 e!3398979)))

(assert (= (and b!5493762 (is-Cons!62555 (exprs!5344 setElem!36364))) b!5494101))

(declare-fun b!5494109 () Bool)

(declare-fun e!3398985 () Bool)

(declare-fun tp!1511685 () Bool)

(assert (=> b!5494109 (= e!3398985 tp!1511685)))

(declare-fun e!3398984 () Bool)

(declare-fun tp!1511686 () Bool)

(declare-fun b!5494108 () Bool)

(assert (=> b!5494108 (= e!3398984 (and (inv!81898 (h!69004 (t!375911 zl!343))) e!3398985 tp!1511686))))

(assert (=> b!5493766 (= tp!1511632 e!3398984)))

(assert (= b!5494108 b!5494109))

(assert (= (and b!5493766 (is-Cons!62556 (t!375911 zl!343))) b!5494108))

(declare-fun m!6505072 () Bool)

(assert (=> b!5494108 m!6505072))

(declare-fun b!5494127 () Bool)

(declare-fun e!3398990 () Bool)

(declare-fun tp!1511698 () Bool)

(declare-fun tp!1511701 () Bool)

(assert (=> b!5494127 (= e!3398990 (and tp!1511698 tp!1511701))))

(assert (=> b!5493774 (= tp!1511633 e!3398990)))

(declare-fun b!5494125 () Bool)

(declare-fun tp!1511699 () Bool)

(declare-fun tp!1511700 () Bool)

(assert (=> b!5494125 (= e!3398990 (and tp!1511699 tp!1511700))))

(declare-fun b!5494124 () Bool)

(assert (=> b!5494124 (= e!3398990 tp_is_empty!40173)))

(declare-fun b!5494126 () Bool)

(declare-fun tp!1511697 () Bool)

(assert (=> b!5494126 (= e!3398990 tp!1511697)))

(assert (= (and b!5493774 (is-ElementMatch!15460 (regOne!31433 r!7292))) b!5494124))

(assert (= (and b!5493774 (is-Concat!24305 (regOne!31433 r!7292))) b!5494125))

(assert (= (and b!5493774 (is-Star!15460 (regOne!31433 r!7292))) b!5494126))

(assert (= (and b!5493774 (is-Union!15460 (regOne!31433 r!7292))) b!5494127))

(declare-fun b!5494131 () Bool)

(declare-fun e!3398991 () Bool)

(declare-fun tp!1511703 () Bool)

(declare-fun tp!1511706 () Bool)

(assert (=> b!5494131 (= e!3398991 (and tp!1511703 tp!1511706))))

(assert (=> b!5493774 (= tp!1511638 e!3398991)))

(declare-fun b!5494129 () Bool)

(declare-fun tp!1511704 () Bool)

(declare-fun tp!1511705 () Bool)

(assert (=> b!5494129 (= e!3398991 (and tp!1511704 tp!1511705))))

(declare-fun b!5494128 () Bool)

(assert (=> b!5494128 (= e!3398991 tp_is_empty!40173)))

(declare-fun b!5494130 () Bool)

(declare-fun tp!1511702 () Bool)

(assert (=> b!5494130 (= e!3398991 tp!1511702)))

(assert (= (and b!5493774 (is-ElementMatch!15460 (regTwo!31433 r!7292))) b!5494128))

(assert (= (and b!5493774 (is-Concat!24305 (regTwo!31433 r!7292))) b!5494129))

(assert (= (and b!5493774 (is-Star!15460 (regTwo!31433 r!7292))) b!5494130))

(assert (= (and b!5493774 (is-Union!15460 (regTwo!31433 r!7292))) b!5494131))

(declare-fun b!5494135 () Bool)

(declare-fun e!3398992 () Bool)

(declare-fun tp!1511708 () Bool)

(declare-fun tp!1511711 () Bool)

(assert (=> b!5494135 (= e!3398992 (and tp!1511708 tp!1511711))))

(assert (=> b!5493768 (= tp!1511641 e!3398992)))

(declare-fun b!5494133 () Bool)

(declare-fun tp!1511709 () Bool)

(declare-fun tp!1511710 () Bool)

(assert (=> b!5494133 (= e!3398992 (and tp!1511709 tp!1511710))))

(declare-fun b!5494132 () Bool)

(assert (=> b!5494132 (= e!3398992 tp_is_empty!40173)))

(declare-fun b!5494134 () Bool)

(declare-fun tp!1511707 () Bool)

(assert (=> b!5494134 (= e!3398992 tp!1511707)))

(assert (= (and b!5493768 (is-ElementMatch!15460 (reg!15789 r!7292))) b!5494132))

(assert (= (and b!5493768 (is-Concat!24305 (reg!15789 r!7292))) b!5494133))

(assert (= (and b!5493768 (is-Star!15460 (reg!15789 r!7292))) b!5494134))

(assert (= (and b!5493768 (is-Union!15460 (reg!15789 r!7292))) b!5494135))

(declare-fun b!5494139 () Bool)

(declare-fun e!3398993 () Bool)

(declare-fun tp!1511713 () Bool)

(declare-fun tp!1511716 () Bool)

(assert (=> b!5494139 (= e!3398993 (and tp!1511713 tp!1511716))))

(assert (=> b!5493759 (= tp!1511635 e!3398993)))

(declare-fun b!5494137 () Bool)

(declare-fun tp!1511714 () Bool)

(declare-fun tp!1511715 () Bool)

(assert (=> b!5494137 (= e!3398993 (and tp!1511714 tp!1511715))))

(declare-fun b!5494136 () Bool)

(assert (=> b!5494136 (= e!3398993 tp_is_empty!40173)))

(declare-fun b!5494138 () Bool)

(declare-fun tp!1511712 () Bool)

(assert (=> b!5494138 (= e!3398993 tp!1511712)))

(assert (= (and b!5493759 (is-ElementMatch!15460 (regOne!31432 r!7292))) b!5494136))

(assert (= (and b!5493759 (is-Concat!24305 (regOne!31432 r!7292))) b!5494137))

(assert (= (and b!5493759 (is-Star!15460 (regOne!31432 r!7292))) b!5494138))

(assert (= (and b!5493759 (is-Union!15460 (regOne!31432 r!7292))) b!5494139))

(declare-fun b!5494143 () Bool)

(declare-fun e!3398994 () Bool)

(declare-fun tp!1511718 () Bool)

(declare-fun tp!1511721 () Bool)

(assert (=> b!5494143 (= e!3398994 (and tp!1511718 tp!1511721))))

(assert (=> b!5493759 (= tp!1511636 e!3398994)))

(declare-fun b!5494141 () Bool)

(declare-fun tp!1511719 () Bool)

(declare-fun tp!1511720 () Bool)

(assert (=> b!5494141 (= e!3398994 (and tp!1511719 tp!1511720))))

(declare-fun b!5494140 () Bool)

(assert (=> b!5494140 (= e!3398994 tp_is_empty!40173)))

(declare-fun b!5494142 () Bool)

(declare-fun tp!1511717 () Bool)

(assert (=> b!5494142 (= e!3398994 tp!1511717)))

(assert (= (and b!5493759 (is-ElementMatch!15460 (regTwo!31432 r!7292))) b!5494140))

(assert (= (and b!5493759 (is-Concat!24305 (regTwo!31432 r!7292))) b!5494141))

(assert (= (and b!5493759 (is-Star!15460 (regTwo!31432 r!7292))) b!5494142))

(assert (= (and b!5493759 (is-Union!15460 (regTwo!31432 r!7292))) b!5494143))

(declare-fun condSetEmpty!36370 () Bool)

(assert (=> setNonEmpty!36364 (= condSetEmpty!36370 (= setRest!36364 (as set.empty (Set Context!9688))))))

(declare-fun setRes!36370 () Bool)

(assert (=> setNonEmpty!36364 (= tp!1511634 setRes!36370)))

(declare-fun setIsEmpty!36370 () Bool)

(assert (=> setIsEmpty!36370 setRes!36370))

(declare-fun setNonEmpty!36370 () Bool)

(declare-fun e!3398998 () Bool)

(declare-fun tp!1511727 () Bool)

(declare-fun setElem!36370 () Context!9688)

(assert (=> setNonEmpty!36370 (= setRes!36370 (and tp!1511727 (inv!81898 setElem!36370) e!3398998))))

(declare-fun setRest!36370 () (Set Context!9688))

(assert (=> setNonEmpty!36370 (= setRest!36364 (set.union (set.insert setElem!36370 (as set.empty (Set Context!9688))) setRest!36370))))

(declare-fun b!5494150 () Bool)

(declare-fun tp!1511726 () Bool)

(assert (=> b!5494150 (= e!3398998 tp!1511726)))

(assert (= (and setNonEmpty!36364 condSetEmpty!36370) setIsEmpty!36370))

(assert (= (and setNonEmpty!36364 (not condSetEmpty!36370)) setNonEmpty!36370))

(assert (= setNonEmpty!36370 b!5494150))

(declare-fun m!6505078 () Bool)

(assert (=> setNonEmpty!36370 m!6505078))

(declare-fun b!5494151 () Bool)

(declare-fun e!3398999 () Bool)

(declare-fun tp!1511728 () Bool)

(declare-fun tp!1511729 () Bool)

(assert (=> b!5494151 (= e!3398999 (and tp!1511728 tp!1511729))))

(assert (=> b!5493772 (= tp!1511639 e!3398999)))

(assert (= (and b!5493772 (is-Cons!62555 (exprs!5344 (h!69004 zl!343)))) b!5494151))

(push 1)

(assert (not b!5494129))

(assert (not b!5493961))

(assert (not b!5493904))

(assert (not d!1742272))

(assert (not b!5494135))

(assert (not b!5494130))

(assert (not b!5494126))

(assert (not bm!405062))

(assert tp_is_empty!40173)

(assert (not bm!405060))

(assert (not b!5493865))

(assert (not b!5494125))

(assert (not b!5494078))

(assert (not b!5494001))

(assert (not b!5493999))

(assert (not b!5493976))

(assert (not d!1742258))

(assert (not b!5493993))

(assert (not b!5493941))

(assert (not b!5494003))

(assert (not b!5494139))

(assert (not b!5493939))

(assert (not d!1742266))

(assert (not b!5494142))

(assert (not d!1742298))

(assert (not b!5493953))

(assert (not b!5494150))

(assert (not b!5493940))

(assert (not b!5494138))

(assert (not b!5493968))

(assert (not b!5494151))

(assert (not bm!405058))

(assert (not d!1742288))

(assert (not bm!405070))

(assert (not d!1742296))

(assert (not b!5493942))

(assert (not setNonEmpty!36370))

(assert (not b!5493986))

(assert (not d!1742268))

(assert (not b!5493945))

(assert (not b!5494131))

(assert (not b!5494096))

(assert (not d!1742262))

(assert (not b!5494127))

(assert (not b!5494141))

(assert (not b!5493914))

(assert (not b!5494079))

(assert (not b!5493997))

(assert (not b!5494072))

(assert (not b!5493998))

(assert (not bm!405059))

(assert (not bm!405053))

(assert (not b!5494137))

(assert (not bm!405057))

(assert (not bm!405072))

(assert (not b!5494076))

(assert (not d!1742282))

(assert (not bm!405061))

(assert (not b!5494080))

(assert (not b!5494143))

(assert (not b!5494077))

(assert (not d!1742280))

(assert (not b!5493944))

(assert (not b!5493978))

(assert (not b!5493918))

(assert (not bm!405054))

(assert (not d!1742284))

(assert (not b!5493974))

(assert (not b!5493908))

(assert (not b!5494109))

(assert (not b!5493943))

(assert (not b!5493910))

(assert (not d!1742276))

(assert (not d!1742274))

(assert (not b!5493973))

(assert (not b!5493866))

(assert (not b!5493972))

(assert (not b!5494101))

(assert (not b!5493909))

(assert (not b!5493912))

(assert (not b!5493987))

(assert (not b!5494133))

(assert (not bm!405063))

(assert (not b!5494134))

(assert (not b!5494108))

(assert (not b!5494026))

(assert (not b!5494075))

(assert (not b!5493962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

