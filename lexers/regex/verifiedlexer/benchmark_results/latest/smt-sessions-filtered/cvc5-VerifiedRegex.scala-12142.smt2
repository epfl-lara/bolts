; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!682862 () Bool)

(assert start!682862)

(declare-fun b!7050101 () Bool)

(declare-fun e!4238241 () Bool)

(declare-fun tp!1938735 () Bool)

(assert (=> b!7050101 (= e!4238241 tp!1938735)))

(declare-fun res!2878138 () Bool)

(declare-fun e!4238240 () Bool)

(assert (=> start!682862 (=> (not res!2878138) (not e!4238240))))

(declare-datatypes ((C!35330 0))(
  ( (C!35331 (val!27367 Int)) )
))
(declare-datatypes ((Regex!17530 0))(
  ( (ElementMatch!17530 (c!1313129 C!35330)) (Concat!26375 (regOne!35572 Regex!17530) (regTwo!35572 Regex!17530)) (EmptyExpr!17530) (Star!17530 (reg!17859 Regex!17530)) (EmptyLang!17530) (Union!17530 (regOne!35573 Regex!17530) (regTwo!35573 Regex!17530)) )
))
(declare-datatypes ((List!68117 0))(
  ( (Nil!67993) (Cons!67993 (h!74441 Regex!17530) (t!381896 List!68117)) )
))
(declare-datatypes ((Context!13052 0))(
  ( (Context!13053 (exprs!7026 List!68117)) )
))
(declare-fun lt!2529156 () (Set Context!13052))

(declare-datatypes ((List!68118 0))(
  ( (Nil!67994) (Cons!67994 (h!74442 C!35330) (t!381897 List!68118)) )
))
(declare-fun s!7408 () List!68118)

(declare-fun matchZipper!3070 ((Set Context!13052) List!68118) Bool)

(assert (=> start!682862 (= res!2878138 (matchZipper!3070 lt!2529156 s!7408))))

(declare-fun z1!570 () (Set Context!13052))

(declare-fun ct2!306 () Context!13052)

(declare-fun appendTo!651 ((Set Context!13052) Context!13052) (Set Context!13052))

(assert (=> start!682862 (= lt!2529156 (appendTo!651 z1!570 ct2!306))))

(assert (=> start!682862 e!4238240))

(declare-fun condSetEmpty!49588 () Bool)

(assert (=> start!682862 (= condSetEmpty!49588 (= z1!570 (as set.empty (Set Context!13052))))))

(declare-fun setRes!49588 () Bool)

(assert (=> start!682862 setRes!49588))

(declare-fun e!4238239 () Bool)

(declare-fun inv!86685 (Context!13052) Bool)

(assert (=> start!682862 (and (inv!86685 ct2!306) e!4238239)))

(declare-fun e!4238242 () Bool)

(assert (=> start!682862 e!4238242))

(declare-fun b!7050102 () Bool)

(declare-fun res!2878139 () Bool)

(assert (=> b!7050102 (=> (not res!2878139) (not e!4238240))))

(declare-fun nullableZipper!2623 ((Set Context!13052)) Bool)

(assert (=> b!7050102 (= res!2878139 (nullableZipper!2623 lt!2529156))))

(declare-fun b!7050103 () Bool)

(declare-fun tp!1938738 () Bool)

(assert (=> b!7050103 (= e!4238239 tp!1938738)))

(declare-fun b!7050104 () Bool)

(declare-fun lambda!418696 () Int)

(declare-fun exists!3495 ((Set Context!13052) Int) Bool)

(assert (=> b!7050104 (= e!4238240 (not (exists!3495 lt!2529156 lambda!418696)))))

(declare-fun b!7050105 () Bool)

(declare-fun res!2878140 () Bool)

(assert (=> b!7050105 (=> (not res!2878140) (not e!4238240))))

(assert (=> b!7050105 (= res!2878140 (not (is-Cons!67994 s!7408)))))

(declare-fun b!7050106 () Bool)

(declare-fun tp_is_empty!44285 () Bool)

(declare-fun tp!1938736 () Bool)

(assert (=> b!7050106 (= e!4238242 (and tp_is_empty!44285 tp!1938736))))

(declare-fun setIsEmpty!49588 () Bool)

(assert (=> setIsEmpty!49588 setRes!49588))

(declare-fun setNonEmpty!49588 () Bool)

(declare-fun tp!1938737 () Bool)

(declare-fun setElem!49588 () Context!13052)

(assert (=> setNonEmpty!49588 (= setRes!49588 (and tp!1938737 (inv!86685 setElem!49588) e!4238241))))

(declare-fun setRest!49588 () (Set Context!13052))

(assert (=> setNonEmpty!49588 (= z1!570 (set.union (set.insert setElem!49588 (as set.empty (Set Context!13052))) setRest!49588))))

(assert (= (and start!682862 res!2878138) b!7050105))

(assert (= (and b!7050105 res!2878140) b!7050102))

(assert (= (and b!7050102 res!2878139) b!7050104))

(assert (= (and start!682862 condSetEmpty!49588) setIsEmpty!49588))

(assert (= (and start!682862 (not condSetEmpty!49588)) setNonEmpty!49588))

(assert (= setNonEmpty!49588 b!7050101))

(assert (= start!682862 b!7050103))

(assert (= (and start!682862 (is-Cons!67994 s!7408)) b!7050106))

(declare-fun m!7765730 () Bool)

(assert (=> start!682862 m!7765730))

(declare-fun m!7765732 () Bool)

(assert (=> start!682862 m!7765732))

(declare-fun m!7765734 () Bool)

(assert (=> start!682862 m!7765734))

(declare-fun m!7765736 () Bool)

(assert (=> b!7050102 m!7765736))

(declare-fun m!7765738 () Bool)

(assert (=> b!7050104 m!7765738))

(declare-fun m!7765740 () Bool)

(assert (=> setNonEmpty!49588 m!7765740))

(push 1)

(assert (not b!7050104))

(assert (not b!7050103))

(assert (not b!7050106))

(assert (not b!7050101))

(assert tp_is_empty!44285)

(assert (not start!682862))

(assert (not b!7050102))

(assert (not setNonEmpty!49588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2202375 () Bool)

(declare-fun c!1313135 () Bool)

(declare-fun isEmpty!39680 (List!68118) Bool)

(assert (=> d!2202375 (= c!1313135 (isEmpty!39680 s!7408))))

(declare-fun e!4238257 () Bool)

(assert (=> d!2202375 (= (matchZipper!3070 lt!2529156 s!7408) e!4238257)))

(declare-fun b!7050129 () Bool)

(assert (=> b!7050129 (= e!4238257 (nullableZipper!2623 lt!2529156))))

(declare-fun b!7050130 () Bool)

(declare-fun derivationStepZipper!2985 ((Set Context!13052) C!35330) (Set Context!13052))

(declare-fun head!14321 (List!68118) C!35330)

(declare-fun tail!13654 (List!68118) List!68118)

(assert (=> b!7050130 (= e!4238257 (matchZipper!3070 (derivationStepZipper!2985 lt!2529156 (head!14321 s!7408)) (tail!13654 s!7408)))))

(assert (= (and d!2202375 c!1313135) b!7050129))

(assert (= (and d!2202375 (not c!1313135)) b!7050130))

(declare-fun m!7765754 () Bool)

(assert (=> d!2202375 m!7765754))

(assert (=> b!7050129 m!7765736))

(declare-fun m!7765756 () Bool)

(assert (=> b!7050130 m!7765756))

(assert (=> b!7050130 m!7765756))

(declare-fun m!7765758 () Bool)

(assert (=> b!7050130 m!7765758))

(declare-fun m!7765760 () Bool)

(assert (=> b!7050130 m!7765760))

(assert (=> b!7050130 m!7765758))

(assert (=> b!7050130 m!7765760))

(declare-fun m!7765762 () Bool)

(assert (=> b!7050130 m!7765762))

(assert (=> start!682862 d!2202375))

(declare-fun d!2202379 () Bool)

(assert (=> d!2202379 true))

(declare-fun lambda!418707 () Int)

(declare-fun map!15842 ((Set Context!13052) Int) (Set Context!13052))

(assert (=> d!2202379 (= (appendTo!651 z1!570 ct2!306) (map!15842 z1!570 lambda!418707))))

(declare-fun bs!1875669 () Bool)

(assert (= bs!1875669 d!2202379))

(declare-fun m!7765766 () Bool)

(assert (=> bs!1875669 m!7765766))

(assert (=> start!682862 d!2202379))

(declare-fun d!2202383 () Bool)

(declare-fun lambda!418712 () Int)

(declare-fun forall!16460 (List!68117 Int) Bool)

(assert (=> d!2202383 (= (inv!86685 ct2!306) (forall!16460 (exprs!7026 ct2!306) lambda!418712))))

(declare-fun bs!1875670 () Bool)

(assert (= bs!1875670 d!2202383))

(declare-fun m!7765768 () Bool)

(assert (=> bs!1875670 m!7765768))

(assert (=> start!682862 d!2202383))

(declare-fun bs!1875672 () Bool)

(declare-fun d!2202385 () Bool)

(assert (= bs!1875672 (and d!2202385 b!7050104)))

(declare-fun lambda!418716 () Int)

(assert (=> bs!1875672 (= lambda!418716 lambda!418696)))

(assert (=> d!2202385 (= (nullableZipper!2623 lt!2529156) (exists!3495 lt!2529156 lambda!418716))))

(declare-fun bs!1875673 () Bool)

(assert (= bs!1875673 d!2202385))

(declare-fun m!7765772 () Bool)

(assert (=> bs!1875673 m!7765772))

(assert (=> b!7050102 d!2202385))

(declare-fun bs!1875674 () Bool)

(declare-fun d!2202389 () Bool)

(assert (= bs!1875674 (and d!2202389 d!2202383)))

(declare-fun lambda!418717 () Int)

(assert (=> bs!1875674 (= lambda!418717 lambda!418712)))

(assert (=> d!2202389 (= (inv!86685 setElem!49588) (forall!16460 (exprs!7026 setElem!49588) lambda!418717))))

(declare-fun bs!1875675 () Bool)

(assert (= bs!1875675 d!2202389))

(declare-fun m!7765774 () Bool)

(assert (=> bs!1875675 m!7765774))

(assert (=> setNonEmpty!49588 d!2202389))

(declare-fun d!2202391 () Bool)

(declare-fun lt!2529164 () Bool)

(declare-datatypes ((List!68121 0))(
  ( (Nil!67997) (Cons!67997 (h!74445 Context!13052) (t!381900 List!68121)) )
))
(declare-fun exists!3497 (List!68121 Int) Bool)

(declare-fun toList!10872 ((Set Context!13052)) List!68121)

(assert (=> d!2202391 (= lt!2529164 (exists!3497 (toList!10872 lt!2529156) lambda!418696))))

(declare-fun choose!53644 ((Set Context!13052) Int) Bool)

(assert (=> d!2202391 (= lt!2529164 (choose!53644 lt!2529156 lambda!418696))))

(assert (=> d!2202391 (= (exists!3495 lt!2529156 lambda!418696) lt!2529164)))

(declare-fun bs!1875676 () Bool)

(assert (= bs!1875676 d!2202391))

(declare-fun m!7765776 () Bool)

(assert (=> bs!1875676 m!7765776))

(assert (=> bs!1875676 m!7765776))

(declare-fun m!7765778 () Bool)

(assert (=> bs!1875676 m!7765778))

(declare-fun m!7765780 () Bool)

(assert (=> bs!1875676 m!7765780))

(assert (=> b!7050104 d!2202391))

(declare-fun b!7050137 () Bool)

(declare-fun e!4238260 () Bool)

(declare-fun tp!1938753 () Bool)

(assert (=> b!7050137 (= e!4238260 (and tp_is_empty!44285 tp!1938753))))

(assert (=> b!7050106 (= tp!1938736 e!4238260)))

(assert (= (and b!7050106 (is-Cons!67994 (t!381897 s!7408))) b!7050137))

(declare-fun b!7050142 () Bool)

(declare-fun e!4238263 () Bool)

(declare-fun tp!1938758 () Bool)

(declare-fun tp!1938759 () Bool)

(assert (=> b!7050142 (= e!4238263 (and tp!1938758 tp!1938759))))

(assert (=> b!7050101 (= tp!1938735 e!4238263)))

(assert (= (and b!7050101 (is-Cons!67993 (exprs!7026 setElem!49588))) b!7050142))

(declare-fun condSetEmpty!49594 () Bool)

(assert (=> setNonEmpty!49588 (= condSetEmpty!49594 (= setRest!49588 (as set.empty (Set Context!13052))))))

(declare-fun setRes!49594 () Bool)

(assert (=> setNonEmpty!49588 (= tp!1938737 setRes!49594)))

(declare-fun setIsEmpty!49594 () Bool)

(assert (=> setIsEmpty!49594 setRes!49594))

(declare-fun setNonEmpty!49594 () Bool)

(declare-fun tp!1938765 () Bool)

(declare-fun setElem!49594 () Context!13052)

(declare-fun e!4238266 () Bool)

(assert (=> setNonEmpty!49594 (= setRes!49594 (and tp!1938765 (inv!86685 setElem!49594) e!4238266))))

(declare-fun setRest!49594 () (Set Context!13052))

(assert (=> setNonEmpty!49594 (= setRest!49588 (set.union (set.insert setElem!49594 (as set.empty (Set Context!13052))) setRest!49594))))

(declare-fun b!7050147 () Bool)

(declare-fun tp!1938764 () Bool)

(assert (=> b!7050147 (= e!4238266 tp!1938764)))

(assert (= (and setNonEmpty!49588 condSetEmpty!49594) setIsEmpty!49594))

(assert (= (and setNonEmpty!49588 (not condSetEmpty!49594)) setNonEmpty!49594))

(assert (= setNonEmpty!49594 b!7050147))

(declare-fun m!7765782 () Bool)

(assert (=> setNonEmpty!49594 m!7765782))

(declare-fun b!7050148 () Bool)

(declare-fun e!4238267 () Bool)

(declare-fun tp!1938766 () Bool)

(declare-fun tp!1938767 () Bool)

(assert (=> b!7050148 (= e!4238267 (and tp!1938766 tp!1938767))))

(assert (=> b!7050103 (= tp!1938738 e!4238267)))

(assert (= (and b!7050103 (is-Cons!67993 (exprs!7026 ct2!306))) b!7050148))

(push 1)

(assert tp_is_empty!44285)

(assert (not setNonEmpty!49594))

(assert (not b!7050130))

(assert (not b!7050129))

(assert (not d!2202383))

(assert (not b!7050137))

(assert (not b!7050142))

(assert (not b!7050147))

(assert (not d!2202375))

(assert (not d!2202379))

(assert (not d!2202385))

(assert (not b!7050148))

(assert (not d!2202389))

(assert (not d!2202391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

