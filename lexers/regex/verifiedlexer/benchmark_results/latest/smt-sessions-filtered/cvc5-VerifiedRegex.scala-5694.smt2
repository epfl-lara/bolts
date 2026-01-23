; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283524 () Bool)

(assert start!283524)

(declare-fun setRes!25910 () Bool)

(declare-fun e!1837123 () Bool)

(declare-datatypes ((C!18066 0))(
  ( (C!18067 (val!11067 Int)) )
))
(declare-datatypes ((Regex!8942 0))(
  ( (ElementMatch!8942 (c!474563 C!18066)) (Concat!14263 (regOne!18396 Regex!8942) (regTwo!18396 Regex!8942)) (EmptyExpr!8942) (Star!8942 (reg!9271 Regex!8942)) (EmptyLang!8942) (Union!8942 (regOne!18397 Regex!8942) (regTwo!18397 Regex!8942)) )
))
(declare-datatypes ((List!34797 0))(
  ( (Nil!34673) (Cons!34673 (h!40093 Regex!8942) (t!233860 List!34797)) )
))
(declare-datatypes ((Context!5524 0))(
  ( (Context!5525 (exprs!3262 List!34797)) )
))
(declare-fun setElem!25910 () Context!5524)

(declare-fun tp!935098 () Bool)

(declare-fun setNonEmpty!25910 () Bool)

(declare-fun inv!46843 (Context!5524) Bool)

(assert (=> setNonEmpty!25910 (= setRes!25910 (and tp!935098 (inv!46843 setElem!25910) e!1837123))))

(declare-fun z!644 () (Set Context!5524))

(declare-fun setRest!25910 () (Set Context!5524))

(assert (=> setNonEmpty!25910 (= z!644 (set.union (set.insert setElem!25910 (as set.empty (Set Context!5524))) setRest!25910))))

(declare-fun b!2910511 () Bool)

(declare-fun e!1837122 () Bool)

(declare-datatypes ((List!34798 0))(
  ( (Nil!34674) (Cons!34674 (h!40094 C!18066) (t!233861 List!34798)) )
))
(declare-datatypes ((IArray!21039 0))(
  ( (IArray!21040 (innerList!10577 List!34798)) )
))
(declare-datatypes ((Conc!10517 0))(
  ( (Node!10517 (left!26047 Conc!10517) (right!26377 Conc!10517) (csize!21264 Int) (cheight!10728 Int)) (Leaf!16212 (xs!13635 IArray!21039) (csize!21265 Int)) (Empty!10517) )
))
(declare-datatypes ((BalanceConc!20672 0))(
  ( (BalanceConc!20673 (c!474564 Conc!10517)) )
))
(declare-fun input!3770 () BalanceConc!20672)

(declare-fun tp!935096 () Bool)

(declare-fun inv!46844 (Conc!10517) Bool)

(assert (=> b!2910511 (= e!1837122 (and (inv!46844 (c!474564 input!3770)) tp!935096))))

(declare-fun b!2910512 () Bool)

(declare-fun e!1837120 () Bool)

(declare-fun e!1837124 () Bool)

(assert (=> b!2910512 (= e!1837120 e!1837124)))

(declare-fun res!1201525 () Bool)

(assert (=> b!2910512 (=> (not res!1201525) (not e!1837124))))

(declare-fun lt!1023704 () List!34798)

(declare-fun isEmpty!18924 (List!34798) Bool)

(assert (=> b!2910512 (= res!1201525 (isEmpty!18924 lt!1023704))))

(declare-fun i!1878 () Int)

(declare-fun dropList!1043 (BalanceConc!20672 Int) List!34798)

(assert (=> b!2910512 (= lt!1023704 (dropList!1043 input!3770 i!1878))))

(declare-fun setIsEmpty!25910 () Bool)

(assert (=> setIsEmpty!25910 setRes!25910))

(declare-fun res!1201524 () Bool)

(declare-fun e!1837121 () Bool)

(assert (=> start!283524 (=> (not res!1201524) (not e!1837121))))

(assert (=> start!283524 (= res!1201524 (>= i!1878 0))))

(assert (=> start!283524 e!1837121))

(assert (=> start!283524 true))

(declare-fun inv!46845 (BalanceConc!20672) Bool)

(assert (=> start!283524 (and (inv!46845 input!3770) e!1837122)))

(declare-fun condSetEmpty!25910 () Bool)

(assert (=> start!283524 (= condSetEmpty!25910 (= z!644 (as set.empty (Set Context!5524))))))

(assert (=> start!283524 setRes!25910))

(declare-fun b!2910513 () Bool)

(declare-fun tp!935097 () Bool)

(assert (=> b!2910513 (= e!1837123 tp!935097)))

(declare-fun b!2910514 () Bool)

(declare-fun prefixMatchZipper!378 ((Set Context!5524) List!34798) Bool)

(declare-fun prefixMatchZipperSequence!782 ((Set Context!5524) BalanceConc!20672 Int) Bool)

(assert (=> b!2910514 (= e!1837124 (not (= (prefixMatchZipper!378 z!644 lt!1023704) (prefixMatchZipperSequence!782 z!644 input!3770 i!1878))))))

(declare-fun b!2910515 () Bool)

(assert (=> b!2910515 (= e!1837121 e!1837120)))

(declare-fun res!1201526 () Bool)

(assert (=> b!2910515 (=> (not res!1201526) (not e!1837120))))

(declare-fun lt!1023705 () Int)

(assert (=> b!2910515 (= res!1201526 (and (<= i!1878 lt!1023705) (= i!1878 lt!1023705)))))

(declare-fun size!26417 (BalanceConc!20672) Int)

(assert (=> b!2910515 (= lt!1023705 (size!26417 input!3770))))

(assert (= (and start!283524 res!1201524) b!2910515))

(assert (= (and b!2910515 res!1201526) b!2910512))

(assert (= (and b!2910512 res!1201525) b!2910514))

(assert (= start!283524 b!2910511))

(assert (= (and start!283524 condSetEmpty!25910) setIsEmpty!25910))

(assert (= (and start!283524 (not condSetEmpty!25910)) setNonEmpty!25910))

(assert (= setNonEmpty!25910 b!2910513))

(declare-fun m!3312063 () Bool)

(assert (=> b!2910514 m!3312063))

(declare-fun m!3312065 () Bool)

(assert (=> b!2910514 m!3312065))

(declare-fun m!3312067 () Bool)

(assert (=> b!2910515 m!3312067))

(declare-fun m!3312069 () Bool)

(assert (=> setNonEmpty!25910 m!3312069))

(declare-fun m!3312071 () Bool)

(assert (=> start!283524 m!3312071))

(declare-fun m!3312073 () Bool)

(assert (=> b!2910512 m!3312073))

(declare-fun m!3312075 () Bool)

(assert (=> b!2910512 m!3312075))

(declare-fun m!3312077 () Bool)

(assert (=> b!2910511 m!3312077))

(push 1)

(assert (not start!283524))

(assert (not b!2910512))

(assert (not setNonEmpty!25910))

(assert (not b!2910513))

(assert (not b!2910511))

(assert (not b!2910515))

(assert (not b!2910514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!837475 () Bool)

(declare-fun lambda!108040 () Int)

(declare-fun forall!7134 (List!34797 Int) Bool)

(assert (=> d!837475 (= (inv!46843 setElem!25910) (forall!7134 (exprs!3262 setElem!25910) lambda!108040))))

(declare-fun bs!524507 () Bool)

(assert (= bs!524507 d!837475))

(declare-fun m!3312127 () Bool)

(assert (=> bs!524507 m!3312127))

(assert (=> setNonEmpty!25910 d!837475))

(declare-fun d!837491 () Bool)

(declare-fun c!474578 () Bool)

(assert (=> d!837491 (= c!474578 (isEmpty!18924 lt!1023704))))

(declare-fun e!1837154 () Bool)

(assert (=> d!837491 (= (prefixMatchZipper!378 z!644 lt!1023704) e!1837154)))

(declare-fun b!2910556 () Bool)

(declare-fun lostCauseZipper!615 ((Set Context!5524)) Bool)

(assert (=> b!2910556 (= e!1837154 (not (lostCauseZipper!615 z!644)))))

(declare-fun b!2910557 () Bool)

(declare-fun derivationStepZipper!522 ((Set Context!5524) C!18066) (Set Context!5524))

(declare-fun head!6458 (List!34798) C!18066)

(declare-fun tail!4683 (List!34798) List!34798)

(assert (=> b!2910557 (= e!1837154 (prefixMatchZipper!378 (derivationStepZipper!522 z!644 (head!6458 lt!1023704)) (tail!4683 lt!1023704)))))

(assert (= (and d!837491 c!474578) b!2910556))

(assert (= (and d!837491 (not c!474578)) b!2910557))

(assert (=> d!837491 m!3312073))

(declare-fun m!3312129 () Bool)

(assert (=> b!2910556 m!3312129))

(declare-fun m!3312131 () Bool)

(assert (=> b!2910557 m!3312131))

(assert (=> b!2910557 m!3312131))

(declare-fun m!3312133 () Bool)

(assert (=> b!2910557 m!3312133))

(declare-fun m!3312135 () Bool)

(assert (=> b!2910557 m!3312135))

(assert (=> b!2910557 m!3312133))

(assert (=> b!2910557 m!3312135))

(declare-fun m!3312137 () Bool)

(assert (=> b!2910557 m!3312137))

(assert (=> b!2910514 d!837491))

(declare-fun d!837493 () Bool)

(declare-fun c!474581 () Bool)

(assert (=> d!837493 (= c!474581 (= i!1878 (size!26417 input!3770)))))

(declare-fun e!1837157 () Bool)

(assert (=> d!837493 (= (prefixMatchZipperSequence!782 z!644 input!3770 i!1878) e!1837157)))

(declare-fun b!2910562 () Bool)

(assert (=> b!2910562 (= e!1837157 (not (lostCauseZipper!615 z!644)))))

(declare-fun b!2910563 () Bool)

(declare-fun apply!7914 (BalanceConc!20672 Int) C!18066)

(assert (=> b!2910563 (= e!1837157 (prefixMatchZipperSequence!782 (derivationStepZipper!522 z!644 (apply!7914 input!3770 i!1878)) input!3770 (+ i!1878 1)))))

(assert (= (and d!837493 c!474581) b!2910562))

(assert (= (and d!837493 (not c!474581)) b!2910563))

(assert (=> d!837493 m!3312067))

(assert (=> b!2910562 m!3312129))

(declare-fun m!3312139 () Bool)

(assert (=> b!2910563 m!3312139))

(assert (=> b!2910563 m!3312139))

(declare-fun m!3312141 () Bool)

(assert (=> b!2910563 m!3312141))

(assert (=> b!2910563 m!3312141))

(declare-fun m!3312143 () Bool)

(assert (=> b!2910563 m!3312143))

(assert (=> b!2910514 d!837493))

(declare-fun d!837495 () Bool)

(declare-fun lt!1023717 () Int)

(declare-fun size!26419 (List!34798) Int)

(declare-fun list!12617 (BalanceConc!20672) List!34798)

(assert (=> d!837495 (= lt!1023717 (size!26419 (list!12617 input!3770)))))

(declare-fun size!26420 (Conc!10517) Int)

(assert (=> d!837495 (= lt!1023717 (size!26420 (c!474564 input!3770)))))

(assert (=> d!837495 (= (size!26417 input!3770) lt!1023717)))

(declare-fun bs!524508 () Bool)

(assert (= bs!524508 d!837495))

(declare-fun m!3312145 () Bool)

(assert (=> bs!524508 m!3312145))

(assert (=> bs!524508 m!3312145))

(declare-fun m!3312147 () Bool)

(assert (=> bs!524508 m!3312147))

(declare-fun m!3312149 () Bool)

(assert (=> bs!524508 m!3312149))

(assert (=> b!2910515 d!837495))

(declare-fun d!837497 () Bool)

(declare-fun c!474584 () Bool)

(assert (=> d!837497 (= c!474584 (is-Node!10517 (c!474564 input!3770)))))

(declare-fun e!1837162 () Bool)

(assert (=> d!837497 (= (inv!46844 (c!474564 input!3770)) e!1837162)))

(declare-fun b!2910570 () Bool)

(declare-fun inv!46849 (Conc!10517) Bool)

(assert (=> b!2910570 (= e!1837162 (inv!46849 (c!474564 input!3770)))))

(declare-fun b!2910571 () Bool)

(declare-fun e!1837163 () Bool)

(assert (=> b!2910571 (= e!1837162 e!1837163)))

(declare-fun res!1201541 () Bool)

(assert (=> b!2910571 (= res!1201541 (not (is-Leaf!16212 (c!474564 input!3770))))))

(assert (=> b!2910571 (=> res!1201541 e!1837163)))

(declare-fun b!2910572 () Bool)

(declare-fun inv!46850 (Conc!10517) Bool)

(assert (=> b!2910572 (= e!1837163 (inv!46850 (c!474564 input!3770)))))

(assert (= (and d!837497 c!474584) b!2910570))

(assert (= (and d!837497 (not c!474584)) b!2910571))

(assert (= (and b!2910571 (not res!1201541)) b!2910572))

(declare-fun m!3312151 () Bool)

(assert (=> b!2910570 m!3312151))

(declare-fun m!3312153 () Bool)

(assert (=> b!2910572 m!3312153))

(assert (=> b!2910511 d!837497))

(declare-fun d!837499 () Bool)

(assert (=> d!837499 (= (isEmpty!18924 lt!1023704) (is-Nil!34674 lt!1023704))))

(assert (=> b!2910512 d!837499))

(declare-fun d!837501 () Bool)

(declare-fun drop!1827 (List!34798 Int) List!34798)

(declare-fun list!12618 (Conc!10517) List!34798)

(assert (=> d!837501 (= (dropList!1043 input!3770 i!1878) (drop!1827 (list!12618 (c!474564 input!3770)) i!1878))))

(declare-fun bs!524509 () Bool)

(assert (= bs!524509 d!837501))

(declare-fun m!3312155 () Bool)

(assert (=> bs!524509 m!3312155))

(assert (=> bs!524509 m!3312155))

(declare-fun m!3312157 () Bool)

(assert (=> bs!524509 m!3312157))

(assert (=> b!2910512 d!837501))

(declare-fun d!837503 () Bool)

(declare-fun isBalanced!3168 (Conc!10517) Bool)

(assert (=> d!837503 (= (inv!46845 input!3770) (isBalanced!3168 (c!474564 input!3770)))))

(declare-fun bs!524510 () Bool)

(assert (= bs!524510 d!837503))

(declare-fun m!3312159 () Bool)

(assert (=> bs!524510 m!3312159))

(assert (=> start!283524 d!837503))

(declare-fun condSetEmpty!25916 () Bool)

(assert (=> setNonEmpty!25910 (= condSetEmpty!25916 (= setRest!25910 (as set.empty (Set Context!5524))))))

(declare-fun setRes!25916 () Bool)

(assert (=> setNonEmpty!25910 (= tp!935098 setRes!25916)))

(declare-fun setIsEmpty!25916 () Bool)

(assert (=> setIsEmpty!25916 setRes!25916))

(declare-fun e!1837166 () Bool)

(declare-fun setElem!25916 () Context!5524)

(declare-fun setNonEmpty!25916 () Bool)

(declare-fun tp!935112 () Bool)

(assert (=> setNonEmpty!25916 (= setRes!25916 (and tp!935112 (inv!46843 setElem!25916) e!1837166))))

(declare-fun setRest!25916 () (Set Context!5524))

(assert (=> setNonEmpty!25916 (= setRest!25910 (set.union (set.insert setElem!25916 (as set.empty (Set Context!5524))) setRest!25916))))

(declare-fun b!2910577 () Bool)

(declare-fun tp!935113 () Bool)

(assert (=> b!2910577 (= e!1837166 tp!935113)))

(assert (= (and setNonEmpty!25910 condSetEmpty!25916) setIsEmpty!25916))

(assert (= (and setNonEmpty!25910 (not condSetEmpty!25916)) setNonEmpty!25916))

(assert (= setNonEmpty!25916 b!2910577))

(declare-fun m!3312161 () Bool)

(assert (=> setNonEmpty!25916 m!3312161))

(declare-fun e!1837171 () Bool)

(declare-fun b!2910586 () Bool)

(declare-fun tp!935121 () Bool)

(declare-fun tp!935120 () Bool)

(assert (=> b!2910586 (= e!1837171 (and (inv!46844 (left!26047 (c!474564 input!3770))) tp!935120 (inv!46844 (right!26377 (c!474564 input!3770))) tp!935121))))

(declare-fun b!2910588 () Bool)

(declare-fun e!1837172 () Bool)

(declare-fun tp!935122 () Bool)

(assert (=> b!2910588 (= e!1837172 tp!935122)))

(declare-fun b!2910587 () Bool)

(declare-fun inv!46851 (IArray!21039) Bool)

(assert (=> b!2910587 (= e!1837171 (and (inv!46851 (xs!13635 (c!474564 input!3770))) e!1837172))))

(assert (=> b!2910511 (= tp!935096 (and (inv!46844 (c!474564 input!3770)) e!1837171))))

(assert (= (and b!2910511 (is-Node!10517 (c!474564 input!3770))) b!2910586))

(assert (= b!2910587 b!2910588))

(assert (= (and b!2910511 (is-Leaf!16212 (c!474564 input!3770))) b!2910587))

(declare-fun m!3312163 () Bool)

(assert (=> b!2910586 m!3312163))

(declare-fun m!3312165 () Bool)

(assert (=> b!2910586 m!3312165))

(declare-fun m!3312167 () Bool)

(assert (=> b!2910587 m!3312167))

(assert (=> b!2910511 m!3312077))

(declare-fun b!2910593 () Bool)

(declare-fun e!1837175 () Bool)

(declare-fun tp!935127 () Bool)

(declare-fun tp!935128 () Bool)

(assert (=> b!2910593 (= e!1837175 (and tp!935127 tp!935128))))

(assert (=> b!2910513 (= tp!935097 e!1837175)))

(assert (= (and b!2910513 (is-Cons!34673 (exprs!3262 setElem!25910))) b!2910593))

(push 1)

(assert (not b!2910586))

(assert (not b!2910588))

(assert (not b!2910563))

(assert (not d!837493))

(assert (not b!2910511))

(assert (not b!2910562))

(assert (not d!837495))

(assert (not b!2910570))

(assert (not d!837501))

(assert (not b!2910557))

(assert (not b!2910556))

(assert (not b!2910587))

(assert (not b!2910572))

(assert (not d!837491))

(assert (not d!837475))

(assert (not b!2910593))

(assert (not d!837503))

(assert (not setNonEmpty!25916))

(assert (not b!2910577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

