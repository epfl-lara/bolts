; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229800 () Bool)

(assert start!229800)

(declare-fun b!2327796 () Bool)

(declare-fun e!1491425 () Bool)

(declare-datatypes ((C!13742 0))(
  ( (C!13743 (val!8027 Int)) )
))
(declare-datatypes ((List!27821 0))(
  ( (Nil!27723) (Cons!27723 (h!33124 C!13742) (t!207543 List!27821)) )
))
(declare-datatypes ((Regex!6792 0))(
  ( (ElementMatch!6792 (c!369848 C!13742)) (Concat!11382 (regOne!14096 Regex!6792) (regTwo!14096 Regex!6792)) (EmptyExpr!6792) (Star!6792 (reg!7121 Regex!6792)) (EmptyLang!6792) (Union!6792 (regOne!14097 Regex!6792) (regTwo!14097 Regex!6792)) )
))
(declare-datatypes ((List!27822 0))(
  ( (Nil!27724) (Cons!27724 (h!33125 Regex!6792) (t!207544 List!27822)) )
))
(declare-datatypes ((Context!4224 0))(
  ( (Context!4225 (exprs!2612 List!27822)) )
))
(declare-datatypes ((IArray!18173 0))(
  ( (IArray!18174 (innerList!9144 List!27821)) )
))
(declare-datatypes ((Conc!9084 0))(
  ( (Node!9084 (left!21041 Conc!9084) (right!21371 Conc!9084) (csize!18398 Int) (cheight!9295 Int)) (Leaf!13354 (xs!12064 IArray!18173) (csize!18399 Int)) (Empty!9084) )
))
(declare-datatypes ((BalanceConc!17780 0))(
  ( (BalanceConc!17781 (c!369849 Conc!9084)) )
))
(declare-datatypes ((StackFrame!400 0))(
  ( (StackFrame!401 (z!6510 (Set Context!4224)) (from!3082 Int) (lastNullablePos!696 Int) (res!993911 Int) (totalInput!3691 BalanceConc!17780)) )
))
(declare-fun thiss!33933 () StackFrame!400)

(declare-fun lt!861934 () Int)

(declare-fun furthestNullablePosition!436 ((Set Context!4224) Int BalanceConc!17780 Int Int) Int)

(assert (=> b!2327796 (= e!1491425 (not (= (res!993911 thiss!33933) (furthestNullablePosition!436 (z!6510 thiss!33933) (from!3082 thiss!33933) (totalInput!3691 thiss!33933) lt!861934 (lastNullablePos!696 thiss!33933)))))))

(declare-fun setIsEmpty!20899 () Bool)

(declare-fun setRes!20899 () Bool)

(assert (=> setIsEmpty!20899 setRes!20899))

(declare-fun b!2327798 () Bool)

(declare-fun e!1491427 () Bool)

(declare-fun tp!737452 () Bool)

(assert (=> b!2327798 (= e!1491427 tp!737452)))

(declare-fun b!2327799 () Bool)

(declare-fun e!1491426 () Bool)

(assert (=> b!2327799 (= e!1491426 e!1491425)))

(declare-fun res!993910 () Bool)

(assert (=> b!2327799 (=> res!993910 e!1491425)))

(assert (=> b!2327799 (= res!993910 (or (> (from!3082 thiss!33933) lt!861934) (< (lastNullablePos!696 thiss!33933) (- 1)) (>= (lastNullablePos!696 thiss!33933) (from!3082 thiss!33933))))))

(declare-fun size!21993 (BalanceConc!17780) Int)

(assert (=> b!2327799 (= lt!861934 (size!21993 (totalInput!3691 thiss!33933)))))

(declare-fun b!2327800 () Bool)

(declare-fun e!1491429 () Bool)

(declare-fun tp!737450 () Bool)

(declare-fun inv!37753 (Conc!9084) Bool)

(assert (=> b!2327800 (= e!1491429 (and (inv!37753 (c!369849 (totalInput!3691 thiss!33933))) tp!737450))))

(declare-fun tp!737451 () Bool)

(declare-fun setNonEmpty!20899 () Bool)

(declare-fun setElem!20899 () Context!4224)

(declare-fun inv!37754 (Context!4224) Bool)

(assert (=> setNonEmpty!20899 (= setRes!20899 (and tp!737451 (inv!37754 setElem!20899) e!1491427))))

(declare-fun setRest!20899 () (Set Context!4224))

(assert (=> setNonEmpty!20899 (= (z!6510 thiss!33933) (set.union (set.insert setElem!20899 (as set.empty (Set Context!4224))) setRest!20899))))

(declare-fun b!2327797 () Bool)

(declare-fun res!993908 () Bool)

(assert (=> b!2327797 (=> res!993908 e!1491425)))

(declare-fun e!1491428 () Bool)

(assert (=> b!2327797 (= res!993908 e!1491428)))

(declare-fun res!993907 () Bool)

(assert (=> b!2327797 (=> (not res!993907) (not e!1491428))))

(declare-fun nullableZipper!599 ((Set Context!4224)) Bool)

(assert (=> b!2327797 (= res!993907 (nullableZipper!599 (z!6510 thiss!33933)))))

(declare-fun res!993909 () Bool)

(assert (=> start!229800 (=> res!993909 e!1491426)))

(assert (=> start!229800 (= res!993909 (< (from!3082 thiss!33933) 0))))

(assert (=> start!229800 e!1491426))

(declare-fun e!1491424 () Bool)

(declare-fun inv!37755 (StackFrame!400) Bool)

(assert (=> start!229800 (and (inv!37755 thiss!33933) e!1491424)))

(declare-fun b!2327801 () Bool)

(declare-fun inv!37756 (BalanceConc!17780) Bool)

(assert (=> b!2327801 (= e!1491424 (and setRes!20899 (inv!37756 (totalInput!3691 thiss!33933)) e!1491429))))

(declare-fun condSetEmpty!20899 () Bool)

(assert (=> b!2327801 (= condSetEmpty!20899 (= (z!6510 thiss!33933) (as set.empty (Set Context!4224))))))

(declare-fun b!2327802 () Bool)

(assert (=> b!2327802 (= e!1491428 (not (= (lastNullablePos!696 thiss!33933) (- (from!3082 thiss!33933) 1))))))

(assert (= (and start!229800 (not res!993909)) b!2327799))

(assert (= (and b!2327799 (not res!993910)) b!2327797))

(assert (= (and b!2327797 res!993907) b!2327802))

(assert (= (and b!2327797 (not res!993908)) b!2327796))

(assert (= (and b!2327801 condSetEmpty!20899) setIsEmpty!20899))

(assert (= (and b!2327801 (not condSetEmpty!20899)) setNonEmpty!20899))

(assert (= setNonEmpty!20899 b!2327798))

(assert (= b!2327801 b!2327800))

(assert (= start!229800 b!2327801))

(declare-fun m!2758623 () Bool)

(assert (=> b!2327797 m!2758623))

(declare-fun m!2758625 () Bool)

(assert (=> start!229800 m!2758625))

(declare-fun m!2758627 () Bool)

(assert (=> b!2327796 m!2758627))

(declare-fun m!2758629 () Bool)

(assert (=> b!2327800 m!2758629))

(declare-fun m!2758631 () Bool)

(assert (=> b!2327799 m!2758631))

(declare-fun m!2758633 () Bool)

(assert (=> setNonEmpty!20899 m!2758633))

(declare-fun m!2758635 () Bool)

(assert (=> b!2327801 m!2758635))

(push 1)

(assert (not setNonEmpty!20899))

(assert (not b!2327800))

(assert (not b!2327797))

(assert (not start!229800))

(assert (not b!2327798))

(assert (not b!2327801))

(assert (not b!2327796))

(assert (not b!2327799))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!689282 () Bool)

(declare-fun lt!861940 () Int)

(declare-fun size!21995 (List!27821) Int)

(declare-fun list!11028 (BalanceConc!17780) List!27821)

(assert (=> d!689282 (= lt!861940 (size!21995 (list!11028 (totalInput!3691 thiss!33933))))))

(declare-fun size!21996 (Conc!9084) Int)

(assert (=> d!689282 (= lt!861940 (size!21996 (c!369849 (totalInput!3691 thiss!33933))))))

(assert (=> d!689282 (= (size!21993 (totalInput!3691 thiss!33933)) lt!861940)))

(declare-fun bs!459330 () Bool)

(assert (= bs!459330 d!689282))

(declare-fun m!2758651 () Bool)

(assert (=> bs!459330 m!2758651))

(assert (=> bs!459330 m!2758651))

(declare-fun m!2758653 () Bool)

(assert (=> bs!459330 m!2758653))

(declare-fun m!2758655 () Bool)

(assert (=> bs!459330 m!2758655))

(assert (=> b!2327799 d!689282))

(declare-fun b!2327854 () Bool)

(declare-fun e!1491458 () Bool)

(assert (=> b!2327854 (= e!1491458 (= (lastNullablePos!696 thiss!33933) (- (from!3082 thiss!33933) 1)))))

(declare-fun b!2327855 () Bool)

(declare-fun res!993955 () Bool)

(declare-fun e!1491459 () Bool)

(assert (=> b!2327855 (=> (not res!993955) (not e!1491459))))

(assert (=> b!2327855 (= res!993955 e!1491458)))

(declare-fun res!993956 () Bool)

(assert (=> b!2327855 (=> res!993956 e!1491458)))

(assert (=> b!2327855 (= res!993956 (not (nullableZipper!599 (z!6510 thiss!33933))))))

(declare-fun d!689286 () Bool)

(declare-fun res!993960 () Bool)

(assert (=> d!689286 (=> (not res!993960) (not e!1491459))))

(assert (=> d!689286 (= res!993960 (>= (from!3082 thiss!33933) 0))))

(assert (=> d!689286 (= (inv!37755 thiss!33933) e!1491459)))

(declare-fun b!2327856 () Bool)

(declare-fun res!993958 () Bool)

(assert (=> b!2327856 (=> (not res!993958) (not e!1491459))))

(assert (=> b!2327856 (= res!993958 (<= (from!3082 thiss!33933) (size!21993 (totalInput!3691 thiss!33933))))))

(declare-fun b!2327857 () Bool)

(declare-fun res!993959 () Bool)

(assert (=> b!2327857 (=> (not res!993959) (not e!1491459))))

(assert (=> b!2327857 (= res!993959 (and (>= (lastNullablePos!696 thiss!33933) (- 1)) (< (lastNullablePos!696 thiss!33933) (from!3082 thiss!33933))))))

(declare-fun b!2327858 () Bool)

(assert (=> b!2327858 (= e!1491459 (= (res!993911 thiss!33933) (furthestNullablePosition!436 (z!6510 thiss!33933) (from!3082 thiss!33933) (totalInput!3691 thiss!33933) (size!21993 (totalInput!3691 thiss!33933)) (lastNullablePos!696 thiss!33933))))))

(declare-fun b!2327859 () Bool)

(declare-fun res!993957 () Bool)

(assert (=> b!2327859 (=> (not res!993957) (not e!1491459))))

(assert (=> b!2327859 (= res!993957 (= (size!21993 (totalInput!3691 thiss!33933)) (size!21993 (totalInput!3691 thiss!33933))))))

(assert (= (and d!689286 res!993960) b!2327856))

(assert (= (and b!2327856 res!993958) b!2327859))

(assert (= (and b!2327859 res!993957) b!2327857))

(assert (= (and b!2327857 res!993959) b!2327855))

(assert (= (and b!2327855 (not res!993956)) b!2327854))

(assert (= (and b!2327855 res!993955) b!2327858))

(assert (=> b!2327855 m!2758623))

(assert (=> b!2327856 m!2758631))

(assert (=> b!2327858 m!2758631))

(assert (=> b!2327858 m!2758631))

(declare-fun m!2758659 () Bool)

(assert (=> b!2327858 m!2758659))

(assert (=> b!2327859 m!2758631))

(assert (=> start!229800 d!689286))

(declare-fun d!689290 () Bool)

(declare-fun isBalanced!2774 (Conc!9084) Bool)

(assert (=> d!689290 (= (inv!37756 (totalInput!3691 thiss!33933)) (isBalanced!2774 (c!369849 (totalInput!3691 thiss!33933))))))

(declare-fun bs!459331 () Bool)

(assert (= bs!459331 d!689290))

(declare-fun m!2758661 () Bool)

(assert (=> bs!459331 m!2758661))

(assert (=> b!2327801 d!689290))

(declare-fun d!689292 () Bool)

(declare-fun lambda!86366 () Int)

(declare-fun exists!884 ((Set Context!4224) Int) Bool)

(assert (=> d!689292 (= (nullableZipper!599 (z!6510 thiss!33933)) (exists!884 (z!6510 thiss!33933) lambda!86366))))

(declare-fun bs!459332 () Bool)

(assert (= bs!459332 d!689292))

(declare-fun m!2758677 () Bool)

(assert (=> bs!459332 m!2758677))

(assert (=> b!2327797 d!689292))

(declare-fun d!689298 () Bool)

(declare-fun lambda!86369 () Int)

(declare-fun forall!5518 (List!27822 Int) Bool)

(assert (=> d!689298 (= (inv!37754 setElem!20899) (forall!5518 (exprs!2612 setElem!20899) lambda!86369))))

(declare-fun bs!459333 () Bool)

(assert (= bs!459333 d!689298))

(declare-fun m!2758679 () Bool)

(assert (=> bs!459333 m!2758679))

(assert (=> setNonEmpty!20899 d!689298))

(declare-fun d!689300 () Bool)

(declare-fun c!369865 () Bool)

(assert (=> d!689300 (= c!369865 (is-Node!9084 (c!369849 (totalInput!3691 thiss!33933))))))

(declare-fun e!1491479 () Bool)

(assert (=> d!689300 (= (inv!37753 (c!369849 (totalInput!3691 thiss!33933))) e!1491479)))

(declare-fun b!2327890 () Bool)

(declare-fun inv!37761 (Conc!9084) Bool)

(assert (=> b!2327890 (= e!1491479 (inv!37761 (c!369849 (totalInput!3691 thiss!33933))))))

(declare-fun b!2327891 () Bool)

(declare-fun e!1491480 () Bool)

(assert (=> b!2327891 (= e!1491479 e!1491480)))

(declare-fun res!993969 () Bool)

(assert (=> b!2327891 (= res!993969 (not (is-Leaf!13354 (c!369849 (totalInput!3691 thiss!33933)))))))

(assert (=> b!2327891 (=> res!993969 e!1491480)))

(declare-fun b!2327892 () Bool)

(declare-fun inv!37762 (Conc!9084) Bool)

(assert (=> b!2327892 (= e!1491480 (inv!37762 (c!369849 (totalInput!3691 thiss!33933))))))

(assert (= (and d!689300 c!369865) b!2327890))

(assert (= (and d!689300 (not c!369865)) b!2327891))

(assert (= (and b!2327891 (not res!993969)) b!2327892))

(declare-fun m!2758681 () Bool)

(assert (=> b!2327890 m!2758681))

(declare-fun m!2758683 () Bool)

(assert (=> b!2327892 m!2758683))

(assert (=> b!2327800 d!689300))

(declare-fun b!2327903 () Bool)

(declare-fun e!1491489 () Int)

(assert (=> b!2327903 (= e!1491489 (lastNullablePos!696 thiss!33933))))

(declare-fun b!2327904 () Bool)

(assert (=> b!2327904 (= e!1491489 (from!3082 thiss!33933))))

(declare-fun b!2327905 () Bool)

(declare-fun e!1491488 () Int)

(assert (=> b!2327905 (= e!1491488 (lastNullablePos!696 thiss!33933))))

(declare-fun b!2327906 () Bool)

(declare-fun lt!861951 () (Set Context!4224))

(assert (=> b!2327906 (= e!1491488 (furthestNullablePosition!436 lt!861951 (+ (from!3082 thiss!33933) 1) (totalInput!3691 thiss!33933) lt!861934 e!1491489))))

(declare-fun derivationStepZipper!337 ((Set Context!4224) C!13742) (Set Context!4224))

(declare-fun apply!6688 (BalanceConc!17780 Int) C!13742)

(assert (=> b!2327906 (= lt!861951 (derivationStepZipper!337 (z!6510 thiss!33933) (apply!6688 (totalInput!3691 thiss!33933) (from!3082 thiss!33933))))))

(declare-fun c!369871 () Bool)

(assert (=> b!2327906 (= c!369871 (nullableZipper!599 lt!861951))))

(declare-fun d!689302 () Bool)

(declare-fun lt!861952 () Int)

(assert (=> d!689302 (and (>= lt!861952 (- 1)) (< lt!861952 lt!861934) (>= lt!861952 (lastNullablePos!696 thiss!33933)) (or (= lt!861952 (lastNullablePos!696 thiss!33933)) (>= lt!861952 (from!3082 thiss!33933))))))

(assert (=> d!689302 (= lt!861952 e!1491488)))

(declare-fun c!369870 () Bool)

(declare-fun e!1491487 () Bool)

(assert (=> d!689302 (= c!369870 e!1491487)))

(declare-fun res!993972 () Bool)

(assert (=> d!689302 (=> res!993972 e!1491487)))

(assert (=> d!689302 (= res!993972 (= (from!3082 thiss!33933) lt!861934))))

(assert (=> d!689302 (and (>= (from!3082 thiss!33933) 0) (<= (from!3082 thiss!33933) lt!861934))))

(assert (=> d!689302 (= (furthestNullablePosition!436 (z!6510 thiss!33933) (from!3082 thiss!33933) (totalInput!3691 thiss!33933) lt!861934 (lastNullablePos!696 thiss!33933)) lt!861952)))

(declare-fun b!2327907 () Bool)

(declare-fun lostCauseZipper!409 ((Set Context!4224)) Bool)

(assert (=> b!2327907 (= e!1491487 (lostCauseZipper!409 (z!6510 thiss!33933)))))

(assert (= (and d!689302 (not res!993972)) b!2327907))

(assert (= (and d!689302 c!369870) b!2327905))

(assert (= (and d!689302 (not c!369870)) b!2327906))

(assert (= (and b!2327906 c!369871) b!2327904))

(assert (= (and b!2327906 (not c!369871)) b!2327903))

(declare-fun m!2758685 () Bool)

(assert (=> b!2327906 m!2758685))

(declare-fun m!2758687 () Bool)

(assert (=> b!2327906 m!2758687))

(assert (=> b!2327906 m!2758687))

(declare-fun m!2758689 () Bool)

(assert (=> b!2327906 m!2758689))

(declare-fun m!2758691 () Bool)

(assert (=> b!2327906 m!2758691))

(declare-fun m!2758693 () Bool)

(assert (=> b!2327907 m!2758693))

(assert (=> b!2327796 d!689302))

(declare-fun b!2327912 () Bool)

(declare-fun e!1491492 () Bool)

(declare-fun tp!737466 () Bool)

(declare-fun tp!737467 () Bool)

(assert (=> b!2327912 (= e!1491492 (and tp!737466 tp!737467))))

(assert (=> b!2327798 (= tp!737452 e!1491492)))

(assert (= (and b!2327798 (is-Cons!27724 (exprs!2612 setElem!20899))) b!2327912))

(declare-fun condSetEmpty!20905 () Bool)

(assert (=> setNonEmpty!20899 (= condSetEmpty!20905 (= setRest!20899 (as set.empty (Set Context!4224))))))

(declare-fun setRes!20905 () Bool)

(assert (=> setNonEmpty!20899 (= tp!737451 setRes!20905)))

(declare-fun setIsEmpty!20905 () Bool)

(assert (=> setIsEmpty!20905 setRes!20905))

(declare-fun tp!737472 () Bool)

(declare-fun e!1491495 () Bool)

(declare-fun setElem!20905 () Context!4224)

(declare-fun setNonEmpty!20905 () Bool)

(assert (=> setNonEmpty!20905 (= setRes!20905 (and tp!737472 (inv!37754 setElem!20905) e!1491495))))

(declare-fun setRest!20905 () (Set Context!4224))

(assert (=> setNonEmpty!20905 (= setRest!20899 (set.union (set.insert setElem!20905 (as set.empty (Set Context!4224))) setRest!20905))))

(declare-fun b!2327917 () Bool)

(declare-fun tp!737473 () Bool)

(assert (=> b!2327917 (= e!1491495 tp!737473)))

(assert (= (and setNonEmpty!20899 condSetEmpty!20905) setIsEmpty!20905))

(assert (= (and setNonEmpty!20899 (not condSetEmpty!20905)) setNonEmpty!20905))

(assert (= setNonEmpty!20905 b!2327917))

(declare-fun m!2758695 () Bool)

(assert (=> setNonEmpty!20905 m!2758695))

(declare-fun b!2327926 () Bool)

(declare-fun tp!737481 () Bool)

(declare-fun e!1491500 () Bool)

(declare-fun tp!737482 () Bool)

(assert (=> b!2327926 (= e!1491500 (and (inv!37753 (left!21041 (c!369849 (totalInput!3691 thiss!33933)))) tp!737481 (inv!37753 (right!21371 (c!369849 (totalInput!3691 thiss!33933)))) tp!737482))))

(declare-fun b!2327928 () Bool)

(declare-fun e!1491501 () Bool)

(declare-fun tp!737480 () Bool)

(assert (=> b!2327928 (= e!1491501 tp!737480)))

(declare-fun b!2327927 () Bool)

(declare-fun inv!37763 (IArray!18173) Bool)

(assert (=> b!2327927 (= e!1491500 (and (inv!37763 (xs!12064 (c!369849 (totalInput!3691 thiss!33933)))) e!1491501))))

(assert (=> b!2327800 (= tp!737450 (and (inv!37753 (c!369849 (totalInput!3691 thiss!33933))) e!1491500))))

(assert (= (and b!2327800 (is-Node!9084 (c!369849 (totalInput!3691 thiss!33933)))) b!2327926))

(assert (= b!2327927 b!2327928))

(assert (= (and b!2327800 (is-Leaf!13354 (c!369849 (totalInput!3691 thiss!33933)))) b!2327927))

(declare-fun m!2758697 () Bool)

(assert (=> b!2327926 m!2758697))

(declare-fun m!2758699 () Bool)

(assert (=> b!2327926 m!2758699))

(declare-fun m!2758701 () Bool)

(assert (=> b!2327927 m!2758701))

(assert (=> b!2327800 m!2758629))

(push 1)

(assert (not b!2327907))

(assert (not b!2327858))

(assert (not d!689290))

(assert (not b!2327892))

(assert (not b!2327890))

(assert (not b!2327855))

(assert (not d!689292))

(assert (not b!2327927))

(assert (not b!2327800))

(assert (not setNonEmpty!20905))

(assert (not d!689298))

(assert (not d!689282))

(assert (not b!2327917))

(assert (not b!2327928))

(assert (not b!2327926))

(assert (not b!2327859))

(assert (not b!2327906))

(assert (not b!2327912))

(assert (not b!2327856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

